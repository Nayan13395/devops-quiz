"""Run isolated Copilot task sessions and integrate verified results serially."""

import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
from tempfile import TemporaryDirectory
import time
import uuid

import run_pending_tasks as serial

ROOT = serial.ROOT
WORK = ROOT / "translator" / "cache" / "parallel_tasks"
MODELS = ("gpt-5.6-sol", "claude-sonnet-5.5", "gemini-4-argon")
EXCLUDED_DIRS = {".git", ".idea", ".venv", "node_modules", "build", "__pycache__", "cache", "logs", ".dart_tool"}
CONTROL_FILES = {
    "tools/active_work_state.json", "tools/pending_task_queue.json",
    "tools/completed_task_history.json", "tools/run_pending_tasks.py",
    "tools/run_parallel_tasks.py",
}
LATE_TASKS = ("full-app-regression", "refresh-docs-reports")
MISSING = object()
CACHES = {"game-ui-localization": "game_ui", "question-bank-alignment": "question_alignment"}


class ConcurrentEditError(Exception):
    pass


def allowed(path):
    name = path.name.lower()
    return (
        not any(part in EXCLUDED_DIRS for part in path.parts)
        and not name.startswith((".env", "parallel_task_"))
        and not any(token in name for token in ("credential", "service-account", "service_account"))
        and name not in {"key.properties", "local.properties"}
        and path.suffix.lower() not in {".jks", ".keystore", ".pem", ".p12", ".log"}
    )


def files(root):
    result = set()
    for directory, dirs, names in os.walk(root):
        dirs[:] = [name for name in dirs if name not in EXCLUDED_DIRS
                   and not (Path(directory) / name).is_symlink()]
        for name in names:
            path = Path(directory) / name
            relative = path.relative_to(root)
            if allowed(relative) and not path.is_symlink():
                result.add(relative)
    return result


def promote_snapshot(staging, destination):
    for attempt in range(6):
        try:
            staging.rename(destination)
            return
        except OSError as error:
            if getattr(error, "winerror", None) not in {5, 32, 33} or attempt == 5:
                raise
            print(f"Snapshot promotion failed with Windows error {error.winerror}; "
                  f"retrying: {destination}", flush=True)
            time.sleep(2)


def snapshot(destination):
    staging = destination.with_name(destination.name + ".building-" + uuid.uuid4().hex)
    staging.mkdir(parents=True)
    for relative in files(ROOT):
        target = staging / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(ROOT / relative, target)
    for name in ("package_config.json", "package_graph.json"):
        source = ROOT / ".dart_tool" / name
        if source.is_file():
            target = staging / ".dart_tool" / name
            target.parent.mkdir(exist_ok=True)
            shutil.copy2(source, target)
    for cache in CACHES.values():
        source = ROOT / "translator/cache" / cache
        if source.exists():
            shutil.copytree(source, staging / "translator/cache" / cache, dirs_exist_ok=True)
    promote_snapshot(staging, destination)


def data(path):
    return path.read_bytes() if path.exists() else None


def merge_json(base, current, proposed):
    if proposed == base or current == proposed:
        return current
    if current == base:
        return proposed
    if all(isinstance(value, dict) for value in (base, current, proposed)):
        result = {}
        for key in dict.fromkeys([*current, *proposed, *base]):
            value = merge_json(base.get(key, MISSING), current.get(key, MISSING),
                               proposed.get(key, MISSING))
            if value is not MISSING:
                result[key] = value
        return result
    raise ValueError("Conflicting JSON values; changes retained in the isolated workspace")


def merge_content(relative, base, current, proposed):
    if proposed == base or current == proposed:
        return current
    if current == base:
        return proposed
    if None in (base, current, proposed):
        raise ValueError(f"Conflicting file creation/deletion: {relative}")
    if relative.suffix in {".arb", ".json"}:
        merged = merge_json(*(json.loads(value) for value in (base, current, proposed)))
        return (json.dumps(merged, ensure_ascii=False, indent=2) + "\n").encode("utf-8")
    if any(b"\0" in value for value in (base, current, proposed)):
        raise ValueError(f"Conflicting binary file: {relative}")
    with TemporaryDirectory(prefix="app-task-merge-") as directory:
        paths = [Path(directory) / name for name in ("current", "base", "proposed")]
        for path, value in zip(paths, (current, base, proposed)):
            path.write_bytes(value)
        result = subprocess.run(["git", "merge-file", "-p", *map(str, paths)],
                                capture_output=True)
        if result.returncode:
            raise ValueError(f"Merge conflict in {relative}; isolated changes retained")
        return result.stdout


def generated(path):
    return (
        path in {Path(".flutter-plugins"), Path(".flutter-plugins-dependencies")}
        or (path.parent == Path("lib/l10n")
            and path.name.startswith("app_localizations") and path.suffix == ".dart")
    )


def refresh_workspace(entry):
    directory, workspace = Path(entry["directory"]), Path(entry["workspace"])
    old_base = Path(entry["baseline"])
    token = uuid.uuid4().hex
    base = directory / f"baseline-refresh-{token}"
    staging = directory / f"workspace-refresh-{token}"
    previous = directory / f"previous-workspace-{token}"
    snapshot(base)
    shutil.copytree(base, staging)
    conflicts = []
    if workspace.exists():
        candidates = files(old_base) | files(workspace)
        cache = CACHES.get(entry["task_id"])
        if cache:
            relative_cache = Path("translator/cache") / cache
            candidates.update(relative_cache / path for path in
                              files(old_base / relative_cache) | files(workspace / relative_cache))
        for relative in sorted(candidates):
            if relative.as_posix() in CONTROL_FILES or generated(relative):
                continue
            before, proposed = data(old_base / relative), data(workspace / relative)
            if before == proposed:
                continue
            try:
                merged = merge_content(relative, before, data(base / relative), proposed)
            except ValueError as error:
                conflicts.append({"path": str(relative), "error": str(error)})
            else:
                put(staging / relative, merged)
    serial.write(staging / "parallel_task_refresh.json", {
        "refreshed_at": serial.now(),
        "previous_workspace": str(previous) if workspace.exists() else None,
        "previous_baseline": str(old_base),
        "conflicts": conflicts,
        "instructions": "Current checkout is the new baseline. Nonconflicting candidate edits "
                        "were retained. Conflicting files keep current checkout contents; inspect "
                        "the preserved previous workspace read-only and resolve task-owned changes.",
    })
    current_report = ROOT / "build/atf/report.json"
    if current_report.exists():
        shutil.copy2(current_report, staging / "parallel_task_atf_report.json")
    subprocess.run(["git", "init", "--quiet", str(staging)], check=True)
    if workspace.exists():
        promote_snapshot(workspace, previous)
    try:
        promote_snapshot(staging, workspace)
    except OSError:
        if previous.exists() and not workspace.exists():
            promote_snapshot(previous, workspace)
        raise
    entry.update(baseline=str(base), needs_refresh=False,
                 refreshed_at=serial.now(), refresh_conflicts=len(conflicts))
    print(f"REFRESH {entry['task_id']}: current checkout, {len(conflicts)} conflicts "
          "recorded for the worker; previous workspace retained.", flush=True)


def change_plan(base, workspace, target):
    changes = {}
    for relative in files(base) | files(workspace):
        if relative.as_posix() in CONTROL_FILES or generated(relative):
            continue
        before, proposed = data(base / relative), data(workspace / relative)
        if before != proposed:
            current = data(target / relative)
            changes[relative] = (current, merge_content(relative, before, current, proposed))
    return changes


def put(path, value):
    if value is None:
        if path.exists():
            path.unlink()
    else:
        path.parent.mkdir(parents=True, exist_ok=True)
        temporary = path.with_name(path.name + ".parallel-tmp")
        temporary.write_bytes(value)
        temporary.replace(path)


def validate(receipt, workspace, directory):
    evidence = []
    for index, item in enumerate(receipt["validation"]):
        command = [part.replace(str(workspace), str(ROOT)) for part in item["command"]]
        executable = shutil.which(command[0])
        if executable is None:
            raise ValueError(f"Missing validation executable: {command[0]}")
        log = directory / f"integration-validation-{index}.log"
        code = serial.execute([executable, *command[1:]], log, 21600)
        evidence.append({"command": command, "exit_code": code, "log": str(log)})
        if code:
            raise RuntimeError(f"Integrated validation failed: {log}")
    return evidence


def integrate(entry, receipt):
    workspace, base = Path(entry["workspace"]), Path(entry["baseline"])
    changes = change_plan(base, workspace, ROOT)
    cache = CACHES.get(entry.get("task_id"))
    if cache:
        relative_cache = Path("translator/cache") / cache
        for relative in files(base / relative_cache) | files(workspace / relative_cache):
            path = relative_cache / relative
            before, proposed = data(base / path), data(workspace / path)
            if before != proposed:
                current = data(ROOT / path)
                changes[path] = (current, merge_content(path, before, current, proposed))
    backup = {path: old for path, (old, new) in changes.items()}
    generated_before = {
        path.relative_to(ROOT): data(path)
        for path in (ROOT / "lib" / "l10n").glob("app_localizations*.dart")
    }
    regenerate = any(path.suffix == ".arb" for path in changes)
    owned = {}
    try:
        for path, (old, new) in changes.items():
            if data(ROOT / path) != old:
                raise RuntimeError(f"Concurrent edit detected: {path}")
            put(ROOT / path, new)
            owned[path] = new
        if regenerate:
            flutter = shutil.which("flutter") or str(Path.home() / "f/flutter/bin/flutter.bat")
            code = serial.execute([flutter, "gen-l10n"],
                                  Path(entry["directory"]) / "generation.log", 1800)
            generated_after = {path.relative_to(ROOT)
                               for path in (ROOT / "lib" / "l10n").glob("app_localizations*.dart")}
            for relative in generated_before.keys() | generated_after:
                backup[relative] = generated_before.get(relative)
                owned[relative] = data(ROOT / relative)
            if code:
                raise RuntimeError("Integrated localization generation failed")
        receipt["independent_validation"] = validate(receipt, workspace, Path(entry["directory"]))
        receipt["verified_at"] = serial.now()
        serial.write(workspace / "parallel_task_result.json", receipt)
    except (OSError, ValueError, RuntimeError, subprocess.TimeoutExpired):
        for path, written in owned.items():
            if data(ROOT / path) != written:
                raise ConcurrentEditError(f"Concurrent modification prevents safe rollback: {path}")
        for path in owned:
            put(ROOT / path, backup[path])
        raise


def task_prompt(task, workspace):
    note = serial.NOTES.get(task["id"], "")
    if task["id"] == "game-ui-localization":
        note = (
            "Resume tool/localize_game_ui.py using the preserved game_ui caches. Main was "
            "31/31 locales applied; supplement is partially complete. Read current cached status. "
            "Do not rerun --prepare or --prepare-supplement. Finish supplement, generation, "
            "multilingual tests and relevant gameplay regressions. Preserve existing ARB "
            "messages, technical tokens, storage identities and prior work. Update obsolete "
            "UI-GAMES audit evidence only after verifying it. Use Python translation scripts. "
            "The previous session exited while waiting for its long translation command, "
            "without writing its receipt. The CLI background-wait allowance is now six hours. "
            "Monitor the actual translation shell until it completes; do not end with only "
            "a waiting message. Then finish verification and write the required receipt. "
            "The last integrated regression rejected the new catalog title '3D Scene 1' "
            "in gameSceneTitle. Fix scene localization against the current catalog, not old "
            "picture labels. Preserve the new 300-image Jigsaw, 100-scene Spot the Difference, "
            "compact game cards and app font settings."
        )
    elif task["id"] in LATE_TASKS:
        note += (
            " This workspace has been refreshed from the current integrated checkout. "
            "Previous session reports and task-detail summaries may describe obsolete failures. "
            "The main question alignment and 32 learning catalogs were completed; offline ATF "
            "fixtures and font coverage were subsequently updated. Establish current results "
            "rather than copying old failures. Treat device, online and expert checks as NOT RUN, "
            "separate from automated acceptance. Generated Flutter plugin metadata must not be "
            "a deliverable. If parallel_task_atf_report.json exists, it is supporting prior-run "
            "evidence, not proof that your changed workspace passes."
        )
    elif task["id"] == "achievement-theme-localization":
        note = (
            "The previous candidate and translated achLoc resources are retained. Integration "
            "rolled back because the receipt's global flutter analyze command failed. "
            "The original checkout now excludes generated translator/cache workspace copies "
            "from analysis. Existing unrelated project warnings still need an honest scoped "
            "or baseline-comparison analyzer check proving no new diagnostics. Do not suppress "
            "new warnings or submit a validation command known to fail. Reuse validated "
            "translations, rerun relevant behavior tests, and correct the receipt. Missing "
            "gameUiPlayerName in incomplete game resources belongs to the separate game task."
        )
    return (
        f"Complete exactly this task in your isolated workspace: {workspace}\n"
        f"{json.dumps({key: task[key] for key in ('id', 'name', 'checks')}, ensure_ascii=False)}\nContext: {note}\n"
        "Other tasks run concurrently in separate copies. Work ONLY inside this workspace. "
        "Do not access or modify the original checkout, other workspaces, services or tracker. "
        "If parallel_task_refresh.json exists, read it first. Its named previous workspace "
        "and previous baseline are the only additional read-only paths allowed, solely to "
        "recover your preserved task edits and resolve listed refresh conflicts. Never "
        "overwrite current app changes with an old copy or trust historical test summaries. "
        "The workspace is a snapshot including uncommitted user work; preserve all unrelated "
        "changes. Its Git repository has no commits; do not assume git diff shows your edits. "
        "Inspect source, implement fully, use existing Python translation tooling with one "
        "translation worker per session, and run meaningful relevant tests, analysis and "
        "generation. Reuse existing localization keys or prefix new keys for this task. "
        "Do not run another task queue, subagents, or detached commands. Do not commit, push, "
        "generate APKs/app bundles, run Android release builds, or repair the APK build environment. "
        "APK creation is explicitly excluded from this resumption; use offline tests and analysis. "
        "publish, sign, upload, access credentials, change external accounts or delete "
        "unrelated files. The excluded license-image, certificate-localization and Play "
        "release tasks must not be restored. Independent human/native-speaker, real-device "
        "and live-account certification requires genuine evidence: never replace it with "
        "mock tests or invent approval. If those prerequisites are absent, inspect available "
        "read-only evidence and report a concrete blocker, leaving source unchanged.\n"
        f"Known external prerequisite: {serial.MANUAL.get(task['id'], 'None specified')}\n"
        "Do not modify tools/active_work_state.json, pending_task_queue.json, task runners or "
        "completed_task_history.json except incidental updates made by existing translation "
        "scripts in YOUR copy. The coordinator alone owns the live tracker and integrates "
        "changes. Final regression/docs must report unresolved issues honestly.\n"
        "Write parallel_task_result.json in this workspace after finishing:\n"
        '{"task_id":"exact id","status":"done or blocked","summary":"actual outcome or blocker",'
        '"checks":["exact checklist names passed"],"validation":[{"command":'
        '["python/flutter/dart executable","test/check/analyze arguments"]}]}\n'
        "Done requires all acceptance names (including previously completed ones), meaningful "
        "validation commands and passing checks. The coordinator rejects false success and "
        "reruns validation after merging. Use absolute executable paths if not on PATH. "
        "Do not include implementation or translation commands as validation. Keep new "
        "reports/tests as ordinary source files, not only ignored build output. Exit after "
        "writing the receipt. Continue independently until this one task is done or genuinely blocked."
    )


def launch(task, entry, executable):
    workspace, base = Path(entry["workspace"]), Path(entry["baseline"])
    if not workspace.exists():
        staging = workspace.with_name("workspace.building")
        shutil.copytree(base, staging, dirs_exist_ok=True)
        promote_snapshot(staging, workspace)
        subprocess.run(["git", "init", "--quiet", str(workspace)], check=True)
    (workspace / "parallel_task_request.txt").write_text(task_prompt(task, workspace), encoding="utf-8")
    receipt = workspace / "parallel_task_result.json"
    if receipt.exists():
        shutil.move(str(receipt), str(Path(entry["directory"]) / f"previous-result-{uuid.uuid4().hex}.json"))
    command = [
        executable, "--session-id", entry["session_id"],
        "--model", entry["model"], "--autopilot", "--allow-all", "--no-ask-user",
        "--max-autopilot-continues", "100", "--output-format=text",
        "-p", "Read parallel_task_request.txt in the current directory and execute that task fully.",
    ]
    if not entry.get("started_at"):
        command.extend(["--name", task["id"]])
    log_path = Path(entry["directory"]) / "work.log"
    entry["log_offset"] = log_path.stat().st_size if log_path.exists() else 0
    environment = os.environ.copy()
    environment["COPILOT_TASK_WAIT_TIMEOUT_SECONDS"] = "21600"
    with log_path.open("a", encoding="utf-8") as log:
        process = subprocess.Popen(command, cwd=workspace, stdout=log, stderr=subprocess.STDOUT,
                                   env=environment)
    entry.update(status="running", worker_pid=process.pid, started_at=serial.now(),
                 summary="Task session started; retained workspace and translation caches are available.")
    return process


def network_failure(entry):
    path = Path(entry["directory"]) / "work.log"
    with path.open("rb") as stream:
        stream.seek(max(entry.get("log_offset", 0), path.stat().st_size - 4096))
        tail = stream.read().decode("utf-8", errors="replace")
    return (
        ("Execution failed:" in tail or "Copilot could not connect" in tail)
        and any(code in tail for code in ("ENOTFOUND", "ETIMEDOUT", "ECONNRESET", "EAI_AGAIN"))
    )


def publish(queue, tasks):
    state = serial.read(serial.TRACKER)
    running = sum(entry["status"] == "running" for entry in queue["sessions"].values())
    waiting = sum(entry["status"] == "pending" for entry in queue["sessions"].values())
    queue.update(updated_at=serial.now(), parallel_tasks=running)
    state.update(task="Remaining app work: parallel sessions", updated_at=serial.now(),
                 queue_script="tools\\run_parallel_tasks.py",
                 phase=f"Parallel sessions: {running} running, {waiting} waiting, "
                       f"{len(queue['completed'])} completed, {len(queue['blocked'])} blocked. "
                       "Isolated copies; verified integration is serialized. Final regression and docs wait for dependencies.")
    for task in state["tasks"]:
        entry = queue["sessions"].get(task["id"])
        if entry is None:
            continue
        task["status"] = {"running": "in_progress", "integrating": "in_progress"}.get(entry["status"], entry["status"])
        task["detail"] = (
            f"{entry['status']}: {entry['model']}; session {entry['session_id']}. "
            f"{entry.get('summary', 'Separate workspace; completion is not yet verified.')} "
            f"Workspace: {entry['workspace']}"
        )
        if entry["status"] == "done":
            task["validation_receipt"] = str(Path(entry["workspace"]) / "parallel_task_result.json")
            for check in task["checks"]:
                check["done"] = True
    state["status"] = "in_progress" if running or waiting else ("blocked" if queue["blocked"] else "done")
    serial.write(serial.QUEUE, queue)
    serial.write(serial.TRACKER, state)


def prepare():
    queue = serial.read(serial.QUEUE)
    tasks = {task["id"]: task for task in serial.read(serial.TRACKER)["tasks"] if task["status"] != "done"}
    if queue.get("mode") != "parallel":
        directory = WORK / uuid.uuid4().hex
        directory.mkdir(parents=True)
        base = directory / "baseline"
        queue.update(mode="parallel", sessions={}, run_directory=str(directory))
        for index, identifier in enumerate(queue["order"]):
            if identifier not in tasks:
                continue
            folder = directory / identifier
            folder.mkdir()
            queue["sessions"][identifier] = {
                "task_id": identifier,
                "session_id": str(uuid.uuid4()), "model": MODELS[index % len(MODELS)],
                "directory": str(folder), "workspace": str(folder / "workspace"),
                "baseline": str(base), "status": "pending", "worker_pid": None,
            }
        queue.update(status="preparing_parallel", runner_pid=os.getpid(), active_task=None)
        publish(queue, tasks)
        snapshot(base)
    base = Path(queue["run_directory"]) / "baseline"
    if not base.exists():
        snapshot(base)
    for identifier, entry in queue["sessions"].items():
        if identifier in tasks:
            entry.update(status="pending", worker_pid=None,
                         retry_after=0, network_retries=0,
                         needs_refresh=Path(entry["workspace"]).exists() or identifier in LATE_TASKS,
                         previous_summary=entry.get("summary", ""),
                         summary="Waiting to resume; final regression and documentation wait for dependencies.")
    queue.update(status="running", runner_pid=os.getpid(), blocked=[],
                 requested_autopilot=True, requested_allow_all=True, verified_models=list(MODELS))
    publish(queue, tasks)
    return queue, tasks


def dependencies_ready(identifier, sessions):
    if identifier not in LATE_TASKS:
        return True
    dependencies = [key for key in sessions if key not in LATE_TASKS]
    if identifier == "refresh-docs-reports":
        dependencies.append("full-app-regression")
    return all(sessions.get(key, {}).get("status") in {"done", "blocked"} for key in dependencies)


def archive_completed():
    state_before = serial.TRACKER.read_bytes()
    queue_before = serial.QUEUE.read_bytes()
    state, queue = json.loads(state_before), json.loads(queue_before)
    if queue.get("runner_pid") or any(
            entry["status"] in {"running", "integrating"} for entry in queue["sessions"].values()):
        raise RuntimeError("Archive completed entries only while the CLI coordinator is stopped")
    completed = [task for task in state["tasks"] if task["status"] == "done"]
    if not completed:
        print("No completed tracker entries to archive.", flush=True)
        return
    identifiers = {task["id"] for task in completed}
    archived_sessions = {key: value for key, value in queue["sessions"].items() if key in identifiers}
    if any(entry["status"] != "done" for entry in archived_sessions.values()):
        raise ValueError("Tracker and CLI completion states disagree")
    history = serial.read(serial.HISTORY) if serial.HISTORY.exists() else {"archives": []}
    archive_id = hashlib.sha256(json.dumps(completed, sort_keys=True).encode("utf-8")).hexdigest()
    timestamp = serial.now()
    if not any(entry.get("archive_id") == archive_id for entry in history["archives"]):
        history["archives"].append({
            "archive_id": archive_id, "archived_at": timestamp,
            "reason": "User requested removal of old completed tracker entries",
            "tasks": completed, "sessions": archived_sessions,
            "previous_notes": state.get("notes", []),
        })
    state["tasks"] = [task for task in state["tasks"] if task["id"] not in identifiers]
    state["notes"] = [note for note in state.get("notes", [])
                      if not note.startswith("Completed in this chat:")]
    state.update(updated_at=timestamp,
                 phase=f"Archived {len(completed)} completed entries; {len(state['tasks'])} unfinished tasks remain.")
    for key in ("order", "completed", "blocked"):
        queue[key] = [identifier for identifier in queue[key] if identifier not in identifiers]
    queue["sessions"] = {key: value for key, value in queue["sessions"].items() if key not in identifiers}
    queue.update(updated_at=timestamp, planned_parallel_tasks=len(queue["sessions"]))
    if serial.TRACKER.read_bytes() != state_before or serial.QUEUE.read_bytes() != queue_before:
        raise RuntimeError("Tracker changed during archiving; retry with the latest state")
    serial.write(serial.HISTORY, history)
    serial.write(serial.QUEUE, queue)
    serial.write(serial.TRACKER, state)
    print(f"Archived {len(completed)} completed entries; retained {len(state['tasks'])} unfinished tasks.", flush=True)


def remove_blocked():
    queue = serial.read(serial.QUEUE)
    state = serial.read(serial.TRACKER)
    removed = {identifier for identifier, entry in queue["sessions"].items()
               if entry["status"] == "blocked"}
    if not removed:
        return
    archive_path = Path(queue["run_directory"]) / "removed-tasks.json"
    archive = serial.read(archive_path) if archive_path.exists() else {"removals": []}
    archive["removals"].append({
        "removed_at": serial.now(), "reason": "User requested removal of blocked tasks",
        "tasks": [task for task in state["tasks"] if task["id"] in removed],
        "sessions": {key: value for key, value in queue["sessions"].items() if key in removed},
    })
    serial.write(archive_path, archive)
    queue["order"] = [identifier for identifier in queue["order"] if identifier not in removed]
    for key in ("completed", "blocked"):
        queue[key] = [identifier for identifier in queue[key] if identifier not in removed]
    queue["sessions"] = {key: value for key, value in queue["sessions"].items() if key not in removed}
    state["tasks"] = [task for task in state["tasks"] if task["id"] not in removed]
    for identifier, entry in queue["sessions"].items():
        if entry["status"] in {"running", "integrating"}:
            entry.update(status="pending", worker_pid=None)
            next(task for task in state["tasks"] if task["id"] == identifier)["status"] = "pending"
    queue.update(status="ready", runner_pid=None, parallel_tasks=0,
                 planned_parallel_tasks=len(queue["order"]), updated_at=serial.now())
    state.update(updated_at=serial.now(),
                 phase=f"Removed {len(removed)} blocked tasks. Restarting the remaining sessions; workspaces retained.")
    serial.write(serial.QUEUE, queue)
    serial.write(serial.TRACKER, state)
    print(f"REMOVED {len(removed)} blocked tasks; archived details: {archive_path}", flush=True)


def run():
    executable = shutil.which("copilot")
    if not executable:
        raise RuntimeError("GitHub Copilot CLI is unavailable")
    queue, tasks = prepare()
    processes = {}
    try:
        while True:
            for identifier, entry in queue["sessions"].items():
                if (entry["status"] == "pending"
                        and time.time() >= entry.get("retry_after", 0)
                        and dependencies_ready(identifier, queue["sessions"])):
                    try:
                        if entry.get("needs_refresh"):
                            refresh_workspace(entry)
                        processes[identifier] = launch(tasks[identifier], entry, executable)
                        print(f"START {identifier}: PID {entry['worker_pid']}, {entry['model']}", flush=True)
                    except (OSError, ValueError, RuntimeError, subprocess.SubprocessError) as error:
                        entry.update(status="blocked", summary=f"Session launch failed: {error}", worker_pid=None)
                        queue["blocked"].append(identifier)
                    publish(queue, tasks)
            for identifier, process in list(processes.items()):
                if process.poll() is None:
                    continue
                entry = queue["sessions"][identifier]
                try:
                    if process.returncode:
                        if network_failure(entry):
                            retries = entry.get("network_retries", 0) + 1
                            delay = min(60 * 2 ** min(retries - 1, 4), 600)
                            entry.update(
                                status="pending", worker_pid=None, network_retries=retries,
                                retry_after=time.time() + delay,
                                summary=f"Copilot API connection/DNS failure. Saved session retained; retrying in {delay} seconds.",
                            )
                            del processes[identifier]
                            print(f"NETWORK RETRY {identifier}: {delay}s", flush=True)
                            publish(queue, tasks)
                            continue
                        raise RuntimeError(f"Copilot exited {process.returncode}; inspect {entry['directory']}\\work.log")
                    receipt = serial.read(Path(entry["workspace"]) / "parallel_task_result.json")
                    serial.receipt_checks(tasks[identifier], receipt)
                    if identifier in serial.MANUAL and receipt["status"] == "done":
                        raise ValueError(serial.MANUAL[identifier])
                    if receipt["status"] == "done":
                        entry.update(status="integrating", worker_pid=None)
                        publish(queue, tasks)
                        integrate(entry, receipt)
                    entry.update(status=receipt["status"], summary=receipt["summary"], worker_pid=None)
                    queue["completed" if receipt["status"] == "done" else "blocked"].append(identifier)
                except (OSError, ValueError, KeyError, TypeError, RuntimeError, subprocess.SubprocessError) as error:
                    entry.update(status="blocked", summary=str(error), worker_pid=None)
                    queue["blocked"].append(identifier)
                del processes[identifier]
                publish(queue, tasks)
            if not processes and not any(entry["status"] == "pending" for entry in queue["sessions"].values()):
                break
            time.sleep(5)
        queue.update(status="finished_with_blockers" if queue["blocked"] else "done", runner_pid=None)
        publish(queue, tasks)
    except BaseException:
        for process in processes.values():
            serial.stop_tree(process)
        queue.update(status="stopped", runner_pid=None)
        for entry in queue["sessions"].values():
            if entry["status"] in {"running", "integrating"}:
                entry.update(status="pending", worker_pid=None, summary="Runner stopped; workspace and session retained.")
        publish(queue, tasks)
        raise


if __name__ == "__main__":
    sys.stdout.reconfigure(encoding="utf-8")
    parser = argparse.ArgumentParser(description=__doc__)
    action = parser.add_mutually_exclusive_group(required=True)
    action.add_argument("--run", action="store_true")
    action.add_argument("--archive-completed", action="store_true")
    parser.add_argument("--remove-blocked", action="store_true")
    args = parser.parse_args()
    if args.remove_blocked and not args.run:
        parser.error("--remove-blocked requires --run")
    with serial.queue_lock():
        if args.archive_completed:
            archive_completed()
        else:
            if args.remove_blocked:
                remove_blocked()
            run()

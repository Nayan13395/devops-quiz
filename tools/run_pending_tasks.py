"""Run the remaining live-tracker tasks serially with Copilot and verified receipts.

python tools\\run_pending_tasks.py --prepare
python tools\\run_pending_tasks.py --run
python tools\\run_pending_tasks.py --status
"""

import argparse
from contextlib import contextmanager
from datetime import datetime
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import uuid

ROOT = Path(__file__).resolve().parents[1]
TRACKER = ROOT / "tools" / "active_work_state.json"
QUEUE = ROOT / "tools" / "pending_task_queue.json"
HISTORY = ROOT / "tools" / "completed_task_history.json"
WORK = ROOT / "translator" / "cache" / "pending_tasks"

MANUAL = {
    "expert-content-review": "Requires independent technical experts and native speakers; automated checks are not certification.",
    "device-install-accessibility": "Requires real-device installation, font, accessibility and screen-reader checks.",
    "device-gameplay-audio": "Requires physical touch, audible sound and real-device lifecycle checks.",
    "device-os-notifications": "Requires real OS permission and timed notification delivery checks.",
    "device-document-actions": "Requires supported-device printing, sharing, viewing and save-permission checks.",
    "online-account-sync": "Requires an authorized live test account and backend access; no credentials or live-account actions are assumed.",
    "watermarked-image-permission": "Requires rights-holder permission or licensed originals; do not remove watermarks.",
    "play-console-release": "Requires approved signing credentials and Play Console release authorization; do not sign or upload autonomously.",
}
NOTES = {
    "game-ui-localization": (
        "Current work is partially implemented. Read tool/localize_game_ui.py and "
        "translator/cache/game_ui/{before,plan,supplement,status}.json. Main translations were "
        "stopped at 19 completed locales; validated batches survive. Resume the main queue with "
        "--translate --workers 1, then --translate-supplement --workers 1. Never rerun --prepare "
        "or --prepare-supplement against existing plans. Refresh English supplement resources "
        "with apply_locale(plan, 'en', plan['messages']) before gen-l10n: chess accessibility "
        "keys were just added. Finish all remaining translations, regenerate, run the new "
        "game_ui_localization_test.dart and existing relevant game tests, resolve localized "
        "layout issues, verify original ARB values and gameplay/storage identities preserved. "
        "72 existing game tests already passed before the last accessibility changes. "
        "Main plan has 348 new messages; supplement has 108. Current code includes localized "
        "search, status closures, gamePlayerName, rewardGameName and 96 active scene titles. "
        "Some source-audit findings still cite removed game literals in "
        "tool/audit_app_translations.py: update this directly dependent finding without "
        "claiming unrelated backlog issues fixed. Existing analyzer warnings in older game "
        "methods are unrelated. Do not claim independent native-speaker review. "
        "Old cache tracker snapshots contain completed tasks intentionally removed by the "
        "latest user request; do not restore them."
    ),
    "question-bank-alignment": (
        "Item 1 previously completed 12/52 banks; 40 bank checks remain. "
        "Read tool/repair_question_alignment.py and translator/cache/question_alignment. "
        "The old immutable plan predates subsequent answer-prose translations; do not "
        "overwrite newer edits or blindly reuse old target snapshots. Reconcile/replan "
        "remaining banks safely against current data and preserve all completed work. "
        "Resume with one worker only. Finish the full data audit, rebuild dependent cards, "
        "and preserve question-option alignment, correct-answer indexes and technical tokens."
    ),
    "full-app-regression": (
        "Run the whole applicable offline regression and localization audit only after "
        "preceding implementation tasks. The prior item-2 run found two stale saved_data_test "
        "assumptions: git-023 was expected missing and a missing Dogri card was required, "
        "although all 32 catalogs already contained 1000 cards. Replace such obsolete "
        "assumptions with meaningful fixtures if still present. Report physical-device, "
        "native-speaker, permission and release checks as blocked, never as passing."
    ),
}


def now():
    return datetime.now().astimezone().isoformat(timespec="seconds")


def read(path):
    return json.loads(path.read_text(encoding="utf-8"))


def write(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name(path.name + f".{os.getpid()}.tmp")
    temporary.write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    temporary.replace(path)


@contextmanager
def queue_lock():
    WORK.mkdir(parents=True, exist_ok=True)
    handle = (WORK / "runner.lock").open("a+b")
    if handle.tell() == 0:
        handle.write(b"0")
        handle.flush()
    handle.seek(0)
    locked = False
    try:
        if os.name == "nt":
            import msvcrt
            msvcrt.locking(handle.fileno(), msvcrt.LK_NBLCK, 1)
        else:
            import fcntl
            fcntl.flock(handle.fileno(), fcntl.LOCK_EX | fcntl.LOCK_NB)
        locked = True
        yield
    except OSError as error:
        if not locked:
            raise RuntimeError("Another sequential queue instance is already running") from error
        raise
    finally:
        handle.close()


def prepare():
    state = read(TRACKER)
    completed = [task for task in state["tasks"] if task["status"] == "done"]
    remaining = [task for task in state["tasks"] if task["status"] != "done"]
    # Finish the task already under way before starting another one.
    remaining.sort(key=lambda task: task["status"] != "in_progress")
    history = read(HISTORY) if HISTORY.exists() else {"archives": []}
    if completed:
        history["archives"].append({
            "archived_at": now(), "reason": "User requested removal of old completed tracker entries",
            "tasks": completed, "previous_evidence": state.get("current_evidence", {}),
        })
        write(HISTORY, history)
    queue = read(QUEUE) if QUEUE.exists() else {"created_at": now(), "completed": [], "blocked": []}
    queue.update({
        "order": [task["id"] for task in remaining],
        "status": "ready", "active_task": None, "runner_pid": None,
        "updated_at": now(), "parallel_tasks": 1,
    })
    cleaned = {
        "task": "Remaining app work: sequential queue",
        "updated_at": now(), "status": "in_progress",
        "phase": f"Old completed entries removed. {len(remaining)} unfinished tasks queued; one task at a time.",
        "scope": "Finish current game localization first, then the remaining tasks in listed order. Real-device, expert, permission and release checks require external evidence.",
        "queue_script": "tools\\run_pending_tasks.py",
        "queue_state": "tools\\pending_task_queue.json",
        "completed_history": "tools\\completed_task_history.json",
        "tasks": remaining,
    }
    for task in remaining:
        if task["id"] == "question-bank-alignment":
            task["detail"] = "Queued after the current game UI task. Previous repair retained: 12/52 banks complete, 40 remaining. Reconcile newer prose edits before resuming."
    write(TRACKER, cleaned)
    write(QUEUE, queue)
    return queue


def prompt_for(task, result_path):
    return (
        "Complete exactly ONE task in this repository. The user requested a Python queue "
        "for all pending app work, strictly ONE TASK AT A TIME. You are one serial queue step.\n"
        f"Task and acceptance checklist:\n{json.dumps(task, ensure_ascii=False, indent=2)}\n"
        f"Context:\n{NOTES.get(task['id'], '')}\n"
        "Work in C:\\devops_quiz. The worktree is dirty with prior user/agent changes: preserve them. "
        "Inspect enough source, implement this task fully, and run relevant tests, generation, "
        "formatting and analysis. Use existing Python translation runners and cached batches "
        "where relevant, always --workers 1. Never launch parallel workers, background work, "
        "subagents, workflows or another task queue. Wait for every command to finish. "
        "Do not edit tools/run_pending_tasks.py, tools/pending_task_queue.json or "
        "tools/completed_task_history.json. If updating the live tracker, touch ONLY this task "
        "and its current phase; never restore archived tasks or mark other tasks done. "
        "Do not commit, push, publish, sign releases, upload to Play Console, read credentials, "
        "remove watermarks, or pretend to perform real-device/native-speaker/manual reviews. "
        "Use safe local verification; if access or genuine human evidence is missing, "
        "report blocked with a specific reason. Do not guess success or silently skip failures.\n"
        "After all work and verification, write this UTF-8 JSON receipt at "
        f"{result_path} (use an absolute path):\n"
        '{"task_id":"the exact task id","status":"done or blocked","summary":"what actually '
        'changed, or the concrete blocker","checks":["exact checklist names actually passed"],'
        '"validation":[{"command":["absolute executable or python/flutter/dart","argument",'
        '"argument"]}]}\n'
        "For done, every checklist name must be listed and validation must contain meaningful "
        "noninteractive commands covering this task. The supervisor independently reruns ALL "
        "these commands and will reject missing evidence or nonzero exits. Do not include "
        "implementation/translation commands as validation, only tests/checks/build/analyze. "
        "For pre-existing analyzer findings, supply a scoped regression check that proves "
        "there are no new diagnostics, not a command that merely hides errors. "
        "Do not set your task done in the tracker: leave it in_progress for supervisor verification. "
        "Finish only this task and exit; the supervisor controls the next one."
    )


def stop_tree(process):
    if process.poll() is not None:
        return
    if os.name == "nt":
        subprocess.run(
            ["taskkill", "/PID", str(process.pid), "/T", "/F"],
            stdout=subprocess.DEVNULL, stderr=subprocess.PIPE, check=True,
        )
    else:
        import signal
        os.killpg(process.pid, signal.SIGTERM)
    process.wait()


def execute(command, log, timeout):
    with log.open("w", encoding="utf-8") as stream:
        process = subprocess.Popen(
            command, cwd=ROOT, stdout=stream, stderr=subprocess.STDOUT,
            start_new_session=os.name != "nt",
        )
        try:
            return process.wait(timeout=timeout)
        except (subprocess.TimeoutExpired, KeyboardInterrupt):
            stop_tree(process)
            raise


def receipt_checks(task, receipt):
    if receipt.get("task_id") != task["id"] or receipt.get("status") not in ("done", "blocked"):
        raise ValueError("Receipt has the wrong task identity or status")
    if not isinstance(receipt.get("summary"), str) or not receipt["summary"].strip():
        raise ValueError("Receipt is missing a concrete summary or blocker")
    if receipt["status"] == "blocked":
        return
    expected = {check["name"] for check in task["checks"]}
    if set(receipt.get("checks", [])) != expected:
        raise ValueError("Receipt does not prove every acceptance check")
    validations = receipt.get("validation")
    if not isinstance(validations, list) or not validations:
        raise ValueError("Completion requires independently executable validation")
    for validation in validations:
        command = validation.get("command")
        if (not isinstance(command, list) or len(command) < 2
                or any(not isinstance(part, str) or not part for part in command)):
            raise ValueError("Validation must be a nonempty executable-and-arguments list")
        if Path(command[0]).stem.lower() not in ("python", "python3", "flutter", "dart"):
            raise ValueError("Validation must use Python, Flutter or Dart")


def finish_task(task_id, status, detail, queue, evidence=None):
    state = read(TRACKER)
    task = next(task for task in state["tasks"] if task["id"] == task_id)
    task["status"], task["detail"] = status, detail
    task["updated_at"] = now()
    if evidence:
        task["validation_receipt"] = str(evidence.relative_to(ROOT))
    if status == "done":
        for check in task["checks"]:
            check["done"] = True
        history = read(HISTORY) if HISTORY.exists() else {"archives": []}
        history["archives"].append({"archived_at": now(), "tasks": [task]})
        write(HISTORY, history)
        state["tasks"] = [entry for entry in state["tasks"] if entry["id"] != task_id]
        if task_id not in queue["completed"]:
            queue["completed"].append(task_id)
    elif status == "blocked" and task_id not in queue["blocked"]:
        queue["blocked"].append(task_id)
    queue["active_task"] = None
    queue["updated_at"] = state["updated_at"] = now()
    state["phase"] = f"Sequential queue: {len(queue['completed'])} completed; {len(queue['blocked'])} blocked. {detail}"
    write(TRACKER, state)
    write(QUEUE, queue)


def run_queue(executable, timeout):
    queue = read(QUEUE)
    queue.update(status="running", runner_pid=os.getpid(), updated_at=now())
    write(QUEUE, queue)
    for task_id in queue["order"]:
        state = read(TRACKER)
        task = next((task for task in state["tasks"] if task["id"] == task_id), None)
        if task is None or task["status"] == "done":
            continue
        if task_id in MANUAL:
            finish_task(task_id, "blocked", MANUAL[task_id], queue)
            continue
        if task["status"] == "blocked":
            continue
        original_other_tasks = [entry for entry in state["tasks"] if entry["id"] != task_id]
        task["status"] = "in_progress"
        queue.update(active_task=task_id, updated_at=now())
        state["updated_at"] = now()
        state["phase"] = f"One task at a time: {task['name']}. No other task is running."
        write(TRACKER, state)
        write(QUEUE, queue)
        directory = WORK / task_id / uuid.uuid4().hex
        directory.mkdir(parents=True)
        result_path = directory / "result.json"
        command = [
            executable, "-p", prompt_for(task, result_path),
            "--allow-tool=read", "--allow-tool=write", "--allow-tool=shell",
            "--deny-tool=shell(git push)", "--deny-tool=shell(git commit)",
            "--deny-tool=shell(git reset)", "--deny-tool=shell(git clean)",
            "--no-ask-user", "--output-format=text",
        ]
        print(f"START {task_id}; log: {directory / 'work.log'}", flush=True)
        try:
            code = execute(command, directory / "work.log", timeout)
            if code:
                raise RuntimeError(f"Copilot exited {code}; inspect {directory / 'work.log'}")
            receipt = read(result_path)
            receipt_checks(task, receipt)
            current = read(TRACKER)
            if [entry for entry in current["tasks"] if entry["id"] != task_id] != original_other_tasks:
                raise ValueError("Worker changed another tracker task; queue stopped")
            if receipt["status"] == "done":
                evidence = []
                for index, validation in enumerate(receipt["validation"], 1):
                    argv = validation["command"]
                    resolved = shutil.which(argv[0])
                    if resolved is None:
                        raise ValueError(f"Validation executable is unavailable: {argv[0]}")
                    log = directory / f"validation-{index}.log"
                    code = execute([resolved, *argv[1:]], log, timeout)
                    evidence.append({"command": argv, "exit_code": code, "log": str(log.relative_to(ROOT))})
                    if code:
                        raise RuntimeError(f"Independent validation failed ({code}): {log}")
                receipt["independent_validation"] = evidence
                receipt["verified_at"] = now()
                write(result_path, receipt)
            finish_task(task_id, receipt["status"], receipt["summary"], queue, result_path)
            print(f"{receipt['status'].upper()} {task_id}", flush=True)
        except (OSError, ValueError, KeyError, TypeError, RuntimeError, subprocess.TimeoutExpired) as error:
            finish_task(task_id, "blocked", str(error), queue)
            queue.update(status="stopped_on_error", runner_pid=None, updated_at=now())
            write(QUEUE, queue)
            return 1
    queue.update(status="finished_with_blockers" if queue["blocked"] else "done",
                 active_task=None, runner_pid=None, updated_at=now())
    write(QUEUE, queue)
    state = read(TRACKER)
    state.update(status="blocked" if queue["blocked"] else "done", updated_at=now(),
                 phase=f"Sequential queue finished: {len(queue['completed'])} completed, {len(queue['blocked'])} blocked.")
    write(TRACKER, state)
    return 0


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    action = parser.add_mutually_exclusive_group(required=True)
    action.add_argument("--prepare", action="store_true")
    action.add_argument("--run", action="store_true")
    action.add_argument("--status", action="store_true")
    parser.add_argument("--task-timeout", type=int, default=21600)
    args = parser.parse_args()
    if args.task_timeout < 1:
        parser.error("Task timeout must be positive")
    if args.status:
        print(json.dumps(read(QUEUE), indent=2))
        return 0
    with queue_lock():
        if args.prepare:
            queue = prepare()
            print(f"Prepared {len(queue['order'])} tasks. Completed entries archived; concurrency=1.")
            return 0
        if not QUEUE.exists():
            parser.error("Run --prepare first to clean the old tracker entries")
        executable = shutil.which("copilot")
        if executable is None:
            parser.error("GitHub Copilot CLI is required")
        return run_queue(executable, args.task_timeout)


if __name__ == "__main__":
    sys.stdout.reconfigure(encoding="utf-8")
    try:
        raise SystemExit(main())
    except (OSError, ValueError, RuntimeError, KeyboardInterrupt) as error:
        print(f"Sequential queue stopped: {error}", file=sys.stderr)
        raise SystemExit(1)

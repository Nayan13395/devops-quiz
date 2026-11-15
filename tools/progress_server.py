#!/usr/bin/env python3
"""Live progress page for the question-bank translation queue (http://<ip>:8080)."""

import html
import json
import re
import sys
from datetime import datetime
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path

TOOLS = Path(__file__).resolve().parent
sys.path.insert(0, str(TOOLS))
from translate_docker_languages import LANGUAGES, QUESTIONS_DIR, validate_quiz  # noqa: E402

LOGS = [TOOLS / "docker_translate.log", TOOLS / "translate_all.log", TOOLS / "translate_extra.log"]
_cache = {}
TASK_RE = re.compile(r"\[\d+/\d+\] (?:(\S+?)/)?(.+?) -> (\S+\.json)")


def file_state(src, f):
    if not f.exists() or f.stat().st_size == 0:
        return "pending"
    stat = f.stat()
    key = (str(f), stat.st_mtime_ns, stat.st_size)
    if key not in _cache:
        try:
            validate_quiz(src, json.loads(f.read_text(encoding="utf-8")))
            _cache[key] = "done"
        except Exception:
            _cache[key] = "invalid"
    return _cache[key]


def current_task(text):
    """File name of the task started last and not yet finished in this log."""
    current = None
    for line in text.splitlines():
        m = TASK_RE.match(line)
        if m:
            current = m.groups()
        elif line.startswith("SUCCESS:"):
            current = None
    return current


def verify_section():
    p = TOOLS / "verify_state.json"
    if not p.exists():
        return ("<h2>Verification</h2><p>Not started. It begins automatically after all translations "
                "finish (phases: english fixes &rarr; AI review of every file &rarr; final check).</p>")
    try:
        st = json.loads(p.read_text(encoding="utf-8"))
    except Exception:
        return "<h2>Verification</h2><p>(state updating...)</p>"
    files = st.get("files", {})
    total = len(files)
    ok = sum(v == "ok" for v in files.values())
    running = [k for k, v in files.items() if v.startswith("running")]
    failed = {k: v for k, v in files.items() if v.startswith("failed")}
    pct = int(ok * 100 / total) if total else 0
    eng = st.get("english", {})
    eng_rows = "".join(
        f"<tr><td>{html.escape(c)}</td><td>{i.get('issues', '?')}</td><td>{html.escape(str(i.get('status', '')))}</td></tr>"
        for c, i in sorted(eng.items()) if i.get("status") != "clean" or i.get("issues"))
    eng_done = sum(i.get("status") == "clean" and i.get("reviewed") for i in eng.values())
    cats = {}
    for k, v in files.items():
        c = k.split("/")[0]
        d = cats.setdefault(c, [0, 0, 0])
        d[0] += v == "ok"
        d[1] += 1
        d[2] += v.startswith("failed")
    cat_rows = "".join(
        f"<tr><td>{html.escape(c)}</td><td>{a}/{b}</td><td style='color:#c62828'>{f or ''}</td></tr>"
        for c, (a, b, f) in sorted(cats.items()) if a != b)
    summary = st.get("summary")
    summ = (f"<p><b>Final check:</b> {html.escape(json.dumps(summary))}</p>" if summary else "")
    fails = "".join(f"<li>{html.escape(k)}: {html.escape(v[:160])}</li>" for k, v in list(failed.items())[:15])
    events = html.escape("\n".join(st.get("events", [])[-10:]))
    return f"""<h2>Verification: {html.escape(st.get('phase', ''))}</h2>
<p>English categories clean &amp; reviewed: {eng_done}/{len(eng) or '?'} &nbsp;|&nbsp;
Translation files AI-reviewed &amp; validated: <b>{ok}/{total}</b> ({pct}%)</p>
<div class=bar><div class=fill style='width:{pct}%'></div></div>
{summ}<p>Reviewing now: {html.escape(', '.join(running[:6])) or '-'}</p>
{'<h3>English issues remaining</h3><table><tr><th>Category</th><th>Issues</th><th>Status</th></tr>' + eng_rows + '</table>' if eng_rows else ''}
{'<h3>Review remaining (per category)</h3><table><tr><th>Category</th><th>Reviewed</th><th>Failed</th></tr>' + cat_rows + '</table>' if cat_rows else ''}
{'<h3>Failed files</h3><ul>' + fails + '</ul>' if fails else ''}
<pre>{events}</pre><hr>"""


def page():
    active = TOOLS / "active_work_state.json"
    if active.exists():
        return active_work_page(active)
    translation_audit = TOOLS / "translation_audit_state.json"
    if translation_audit.exists():
        return translation_audit_page(translation_audit)
    delivery = TOOLS / "app_delivery_state.json"
    if delivery.exists():
        return delivery_page(delivery)
    accuracy = TOOLS / "accuracy_review_state.json"
    if accuracy.exists():
        return accuracy_page(accuracy)
    logs = [p.read_text(encoding="utf-8", errors="replace") for p in LOGS if p.exists()]
    cur = None
    for text in logs:
        cur = current_task(text) or cur
    # Only the most recently modified log can be live.
    live = max((p for p in LOGS if p.exists()), key=lambda p: p.stat().st_mtime, default=None)
    cur = current_task(live.read_text(encoding="utf-8", errors="replace")) if live else None
    total_done = total_all = 0
    rows = ""
    for en in sorted(QUESTIONS_DIR.glob("*/*_en.json"), key=lambda p: p.parent.name.casefold()):
        cat = en.parent.name
        stem = en.stem.removesuffix("_en")
        try:
            src = json.loads(en.read_text(encoding="utf-8"))
        except Exception:
            continue
        cells, done = "", 0
        for name, code in LANGUAGES:
            f = en.with_name(f"{stem}_{code}.json")
            st = file_state(src, f)
            if cur and cur[2] == f.name and st != "done":
                st = "running"
            done += st == "done"
            if st == "done":
                continue
            color = {"running": "#e08a00", "invalid": "#c62828", "pending": "#ccc"}[st]
            fg = "#fff" if st != "pending" else "#333"
            cells += (f"<td title='{name}: {st}' style='background:{color};color:{fg};"
                      f"padding:2px 6px;font-size:12px'>{code}</td>")
        total_done += done
        total_all += len(LANGUAGES)
        if not cells:
            continue
        rows += (f"<tr><td>{html.escape(cat)}</td><td>{done}/{len(LANGUAGES)}</td>"
                 f"<td><table class=m><tr>{cells}</tr></table></td></tr>")
    pct = int(total_done * 100 / max(total_all, 1))
    tail = html.escape("\n".join(logs[-1].splitlines()[-25:])) if live is None else html.escape(
        "\n".join(live.read_text(encoding="utf-8", errors="replace").splitlines()[-25:]))
    legend = " ".join(f"<span style='color:{c}'>&#9632;</span> {t}" for c, t in
                      [("#e08a00", "running"), ("#c62828", "invalid"), ("#ccc", "pending")])
    now = (f"Now translating: {html.escape(cur[0] or '')} {html.escape(cur[1])} ({html.escape(cur[2])})"
           if cur else "Idle / between tasks")
    lang_hdr = "completed files are hidden"
    return f"""<!doctype html><meta charset=utf-8><meta http-equiv=refresh content=10>
<title>Quiz translation progress</title>
<style>body{{font-family:Segoe UI,sans-serif;margin:24px}}
table{{border-collapse:collapse}}td,th{{border:1px solid #ccc;padding:5px 10px;text-align:left}}
table.m td{{height:18px;padding:0;border:1px solid #fff}}
.bar{{background:#ddd;width:480px;height:20px;border-radius:4px}}
.fill{{background:#1a8f3c;height:20px;border-radius:4px;width:{pct}%}}
pre{{background:#111;color:#ddd;padding:12px;max-width:900px;overflow:auto}}</style>
{verify_section()}
<h2>Quiz translation: {total_done}/{total_all} files ({pct}%)</h2>
<div class=bar><div class=fill></div></div>
<p><b>{now}</b></p><p>{legend}<br><small>Remaining only ({lang_hdr})</small></p>
<table><tr><th>Category</th><th>Done</th><th>Languages</th></tr>{rows}</table>
<h3>Latest log (auto-refresh 10s)</h3><pre>{tail}</pre>"""


def accuracy_page(path):
    try:
        state = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, ValueError):
        return "<meta http-equiv=refresh content=5><h1>Review state is updating</h1>"
    english = state.get("english", {})
    translations = state.get("translations", {})
    reviewed = sum(item.get("status") in {"reviewed", "corrected"} for item in english.values())
    completed = sum(value == "done" for value in translations.values())
    rows = "".join(
        "<tr><td>{}</td><td>{}</td><td>{}</td><td>{}</td></tr>".format(
            html.escape(category), item.get("records", ""),
            html.escape(item.get("status", "pending")),
            html.escape(", ".join(map(str, item.get("changed", []))) or "-"),
        )
        for category, item in sorted(english.items())
    )
    pending = "".join(
        f"<li>{html.escape(name)}: {html.escape(status)}</li>"
        for name, status in sorted(translations.items()) if status != "done"
    )
    events = html.escape("\n".join(state.get("events", [])[-15:]))
    return f"""<!doctype html><meta charset=utf-8><meta http-equiv=refresh content=10>
<title>English accuracy and translation review</title>
<style>body{{font:16px Segoe UI,sans-serif;margin:24px;max-width:1100px}}
table{{border-collapse:collapse;width:100%}}td,th{{border:1px solid #ccc;padding:8px;text-align:left}}
pre{{white-space:pre-wrap;background:#eee;padding:12px}}</style>
<h1>English accuracy and translation review</h1>
<h2>{html.escape(state.get('phase', ''))}</h2>
<p>Status: <b>{html.escape(state.get('status', ''))}</b></p>
<p>{html.escape(state.get('scope', ''))}</p>
<p>English categories reviewed: <b>{reviewed}/{len(english)}</b>.
Changed-record translations completed: <b>{completed}/{len(translations)}</b>.</p>
<table><tr><th>Category</th><th>Records</th><th>Review status</th><th>Corrected indexes (zero-based)</th></tr>{rows}</table>
<h2>Translation work remaining</h2><ul>{pending or '<li>No translation work scheduled yet.</li>'}</ul>
<h2>Validation</h2><p>{html.escape(str(state.get('validation', 'Not started')))}</p>
<h2>Recent updates</h2><pre>{events}</pre>"""


class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        route = self.path.split("?")[0]
        content_type = "text/html; charset=utf-8"
        if route in {"/atf-report", "/translation-audit-report", "/translation-audit.json", "/active-work.json"}:
            reports = {
                "/atf-report": TOOLS.parent / "build" / "atf" / "report.html",
                "/translation-audit-report": TOOLS.parent / "build" / "translation_audit" / "report.html",
                "/translation-audit.json": TOOLS / "translation_audit_state.json",
                "/active-work.json": TOOLS / "active_work_state.json",
            }
            report = reports[route]
            if not report.exists():
                self.send_error(404, "Requested report has not been generated yet")
                return
            if route == "/active-work.json":
                try:
                    body = json.dumps(active_work_state(report), ensure_ascii=False).encode("utf-8")
                except (OSError, ValueError) as error:
                    print(f"Active tracker unavailable: {error}", file=sys.stderr)
                    self.send_error(503, "Active task state is updating")
                    return
            else:
                body = report.read_bytes()
            if route.endswith(".json"):
                content_type = "application/json; charset=utf-8"
        elif route == "/delivery":
            body = delivery_page(TOOLS / "app_delivery_state.json").encode("utf-8")
        elif route == "/translation-audit":
            body = translation_audit_page(TOOLS / "translation_audit_state.json").encode("utf-8")
        else:
            body = page().encode("utf-8")
        self.send_response(200)
        self.send_header("Content-Type", content_type)
        self.send_header("Content-Length", str(len(body)))
        self.send_header("Cache-Control", "no-store")
        self.end_headers()
        self.wfile.write(body)

    def log_message(self, *a):
        pass


def unfinished(tasks):
    return [
        task for task in tasks
        if task.get("status", "").split(":")[0].strip().lower()
        not in {"done", "complete", "completed"}
    ]


def checklist_progress(task):
    checks = task.get("checks")
    if not isinstance(checks, list) or not checks:
        raise ValueError(f"Missing progress checklist for {task.get('id', 'unknown task')}")
    if any(not isinstance(check, dict) or type(check.get("done")) is not bool
           or not isinstance(check.get("name"), str) or not check["name"].strip()
           for check in checks):
        raise ValueError(f"Invalid progress checklist for {task.get('id', 'unknown task')}")
    complete = sum(check["done"] for check in checks)
    if not unfinished([task]) and complete != len(checks):
        raise ValueError(f"Completed task has unfinished checks: {task.get('id')}")
    return complete, len(checks)


def card_translation_progress(codes, root):
    names = {
        "es": "Spanish", "fr": "French", "de": "German", "it": "Italian",
        "pt": "Portuguese", "ar": "Arabic", "id": "Indonesian", "tr": "Turkish",
        "ru": "Russian", "ja": "Japanese", "zh": "Chinese",
        "as": "Assamese", "doi": "Dogri", "gu": "Gujarati", "kn": "Kannada",
        "gom": "Konkani", "mai": "Maithili", "ml": "Malayalam", "mni": "Manipuri",
        "ne": "Nepali", "or": "Odia", "pa": "Punjabi", "sa": "Sanskrit",
        "sat": "Santali", "sd": "Sindhi", "ta": "Tamil", "te": "Telugu", "ur": "Urdu",
    }
    try:
        coverage = json.loads((root / "assets" / "learning" / "coverage.json").read_text(encoding="utf-8"))
        drafts = {code: set() for code in codes}
        for path in (root / "translator" / "learning").glob("command_translations_*.json"):
            content = json.loads(path.read_text(encoding="utf-8"))
            if not isinstance(content, dict):
                raise ValueError(f"Invalid translation draft: {path.name}")
            for code in codes:
                entries = content.get(code, {})
                if not isinstance(entries, dict):
                    raise ValueError(f"Invalid {code} draft: {path.name}")
                drafts[code].update(key for key, value in entries.items()
                                    if isinstance(value, str) and value.strip())
        rows = []
        complete = 0
        command_total = coverage["total"] - coverage["concepts"]
        for code in codes:
            title = names[code]
            asset = json.loads((root / "assets" / "learning" / f"cards_{code}.json").read_text(encoding="utf-8"))
            if not isinstance(asset, dict):
                raise ValueError(f"Invalid packaged catalog: {code}")
            applied = coverage["locales"][code]["translated"]
            if type(applied) is not int or applied < 0 or applied > coverage["total"]:
                raise ValueError(f"Invalid applied-card count: {code}")
            consistent = applied == len(asset)
            if consistent and applied == coverage["total"]:
                complete += 1
                continue
            rows.append(
                f"<tr><td>{title} ({code})</td><td>{len(drafts[code])}/{command_total}</td>"
                f"<td>{applied}/{coverage['total'] if consistent else 'updating'}</td>"
                "<td>Pending</td></tr>"
            )
        return (
            f"<h2>Live card content: {complete}/{len(codes)} languages complete</h2>"
            "<p>Completed languages are hidden; only remaining languages are listed.</p>"
            "<p>Draft counts update from authored files on every refresh. A draft count alone "
            "does not establish validation or application; applied counts reflect rebuilt catalogs. "
            "Catalog availability does not certify native-language quality.</p>"
            "<div class=table><table><tr><th>Language</th><th>Authored command drafts</th>"
            "<th>Applied cards</th><th>Content status</th></tr>"
            + ("".join(rows) or "<tr><td colspan=4>No remaining card translations.</td></tr>")
            + "</table></div>"
        )
    except (OSError, ValueError, KeyError, TypeError) as error:
        print(f"Card progress unavailable: {error}", file=sys.stderr)
        return "<h2>Card progress temporarily unavailable</h2><p>Catalog or draft data is updating; no completion is inferred.</p>"


def alignment_work_state(path):
    state = json.loads(path.read_text(encoding="utf-8"))
    task = next((task for task in state["tasks"] if task["id"] == "question-bank-alignment"), None)
    if task is None or task["status"] == "done" or not state.get("queue_state"):
        return state
    try:
        queue_path = path.parent / Path(state["queue_state"]).name
        queue = json.loads(queue_path.read_text(encoding="utf-8"))
        session = queue.get("sessions", {}).get(task["id"])
        if not session:
            return state
        directory = Path(session["workspace"]) / "translator" / "cache" / "question_alignment"
        banks = json.loads((directory / "plan.json").read_text(encoding="utf-8"))["banks"]
        status_path = directory / "status.json"
        statuses = json.loads(status_path.read_text(encoding="utf-8"))
        if not isinstance(banks, dict) or not banks or not isinstance(statuses, dict):
            raise ValueError("Invalid alignment plan or status")
        if not statuses.keys() <= banks.keys():
            raise ValueError("Alignment status contains banks outside the repair plan")
        if any(not isinstance(value, dict) or value.get("status") not in
               {"done", "pending", "in_progress", "blocked"} for value in statuses.values()):
            raise ValueError("Invalid bank repair status")
        done = sum(value["status"] == "done" for value in statuses.values())
        active = [key for key, value in statuses.items() if value["status"] == "in_progress"]
        updated = datetime.fromtimestamp(status_path.stat().st_mtime).astimezone().isoformat(timespec="seconds")
        task["workspace_progress"] = {
            "completed_banks": done, "total_banks": len(banks),
            "remaining_banks": len(banks) - done, "active_banks": active,
            "updated_at": updated, "integration_pending": True,
        }
        task["detail"] = (
            f"Isolated workspace: {done}/{len(banks)} banks repaired ({100 * done / len(banks):.1f}%); "
            f"{len(banks) - done} remaining. "
            + (f"Latest active bank: {', '.join(active)}. " if active else "")
            + f"Progress updated: {updated}. Final verification and integration are pending. "
            + task.get("detail", "")
        )
    except (OSError, ValueError, KeyError, TypeError) as error:
        print(f"Alignment progress unavailable: {error}", file=sys.stderr)
        task["workspace_progress"] = {"error": str(error)}
        task["detail"] = "Live workspace repair progress is temporarily unavailable. " + task.get("detail", "")
    return state


def numbered_image_progress(directory, first, last):
    present = []
    latest = None
    for number in range(first, last + 1):
        path = directory / f"{number}.png"
        try:
            stat = path.stat()
        except FileNotFoundError:
            continue
        if path.is_file() and stat.st_size > 0:
            present.append(number)
            latest = max(latest or stat.st_mtime, stat.st_mtime)
    return {
        "present_files": len(present), "expected_files": last - first + 1,
        "missing_numbers": [number for number in range(first, last + 1) if number not in present],
        "updated_at": datetime.fromtimestamp(latest).astimezone().isoformat(timespec="seconds") if latest else None,
        "verified": False,
    }


def jigsaw_output_directory(task, state_path):
    legacy = Path.home() / "Pictures" / "Jigsaw"
    assets = state_path.parent.parent / "assets" / "Jigsaw"
    declared = re.search(
        r"\b(?:saved as|saved directly to)\s+(.+?)[\\/]\{N\}\.png",
        task.get("detail", ""), re.IGNORECASE,
    )
    directory = Path(task.get("output_directory") or (declared.group(1) if declared else legacy)).resolve()
    if directory not in {legacy.resolve(), assets.resolve()}:
        raise ValueError("Unrecognized jigsaw output directory")
    return directory


def active_work_state(path):
    state = alignment_work_state(path)
    if not state.get("queue_state"):
        return state
    queue_path = path.parent / Path(state["queue_state"]).name
    queue = json.loads(queue_path.read_text(encoding="utf-8"))
    summaries = {
        source: {"running": 0, "waiting": 0, "completed": 0, "blocked": 0, "other": 0}
        for source in ("cli", "chat")
    }
    visible_sources = state.get("display_sources", ["cli", "chat"])
    visible_tasks = []
    for task in state["tasks"]:
        if task["id"] in queue.get("sessions", {}) or task.get("execution_source") == "cli":
            source = "cli"
        elif task.get("execution_source") == "chat" or re.search(
                r"\bsession chat [0-9a-f-]{36}\b", task.get("detail", ""), re.IGNORECASE):
            source = "chat"
        else:
            if "display_sources" not in state:
                visible_tasks.append(task)
            continue
        if source not in visible_sources:
            continue
        visible_tasks.append(task)
        task["execution_source"] = source
        status = {"in_progress": "running", "integrating": "running", "running": "running",
                  "pending": "waiting", "done": "completed", "blocked": "blocked"}.get(task["status"], "other")
        summaries[source][status] += 1
        image_range = re.fullmatch(r"jigsaw-hd-images-(\d+)-(\d+)", task["id"])
        if source == "chat" and image_range and task["status"] != "done":
            first, last = map(int, image_range.groups())
            try:
                if not 1 <= first <= last:
                    raise ValueError("Invalid numbered jigsaw image range")
                directory = jigsaw_output_directory(task, path)
                progress = numbered_image_progress(directory, first, last)
                progress["directory"] = str(directory)
                task["output_progress"] = progress
                task["detail"] = (
                    f"{progress['present_files']}/{progress['expected_files']} numbered PNG files present. "
                    "File counts do not certify uniqueness, quality or final acceptance. "
                    + (f"Latest output: {progress['updated_at']}. " if progress["updated_at"] else "")
                    + task.get("detail", "")
                )
            except (OSError, ValueError) as error:
                print(f"Chat image progress unavailable: {error}", file=sys.stderr)
                task["output_progress"] = {"error": str(error)}
                task["detail"] = "Live image output counts are unavailable. " + task.get("detail", "")
    state["tasks"] = visible_tasks
    state["session_summary"] = {source: counts for source, counts in summaries.items()
                                if source in visible_sources}
    state["refreshed_at"] = datetime.now().astimezone().isoformat(timespec="seconds")
    if visible_sources == ["cli"]:
        counts = summaries["cli"]
        state["task"] = "CLI sessions and tasks"
        state["phase"] = (
            f"CLI: {counts['running']} running, {counts['waiting']} waiting, "
            f"{counts['completed']} completed, {counts['blocked']} blocked."
        )
        state["status"] = ("in_progress" if counts["running"] or counts["waiting"]
                           else "blocked" if counts["blocked"] else "done")
    elif sum(summaries["chat"].values()):
        state["task"] = "App work: chat-managed and CLI sessions"
        phases = []
        for source, label in (("cli", "CLI queue"), ("chat", "Chat-managed")):
            counts = summaries[source]
            active_label = "reported running" if source == "chat" else "running"
            phases.append(
                f"{label}: {counts['running']} {active_label}, {counts['waiting']} waiting, "
                f"{counts['completed']} completed, {counts['blocked']} blocked"
                + (f", {counts['other']} other" if counts["other"] else "")
            )
        state["phase"] = ". ".join(phases) + ". Output progress is separate from final acceptance."
        if any(counts["running"] or counts["waiting"] for counts in summaries.values()):
            state["status"] = "in_progress"
    return state


def active_work_page(path):
    try:
        state = active_work_state(path)
    except (OSError, ValueError):
        return "<meta http-equiv=refresh content=5><h1>Active task state is updating</h1>"
    tasks = [task for task in state["tasks"]
             if task["status"] != "done" or task.get("keep_visible") is True]
    esc = lambda value: html.escape(str(value))
    try:
        counts = {task["id"]: checklist_progress(task) for task in state["tasks"]}
        order = [task["id"] for task in state["tasks"]]
        if state.get("queue_state"):
            queue_path = path.parent / Path(state["queue_state"]).name
            order = json.loads(queue_path.read_text(encoding="utf-8"))["order"]
        if (not isinstance(order, list) or any(not isinstance(identifier, str) for identifier in order)
                or len(order) != len(set(order))):
            raise ValueError("Queue order must contain unique task IDs")
        order.extend(task["id"] for task in state["tasks"]
                     if task.get("execution_source") in {"cli", "chat"} and task["id"] not in order)
        numbers = {identifier: index for index, identifier in enumerate(order, 1)}
        if any(task["id"] not in numbers for task in tasks):
            raise ValueError("Active task is missing from the numbered queue")
    except (OSError, ValueError, KeyError) as error:
        print(f"Tracker progress error: {error}", file=sys.stderr)
        return (f"<meta http-equiv=refresh content=10><h1>Progress data needs correction</h1>"
                f"<p>{esc(error)}</p>")
    complete = sum(done for done, total in counts.values())
    total = sum(total for done, total in counts.values())
    overall = f"{100 * complete / total:.1f}" if total else "100.0"
    rows = ""
    for task in sorted(tasks, key=lambda task: numbers[task["id"]]):
        done, count = counts[task["id"]]
        percent = f"{100 * done / count:.0f}"
        blocked = "<span class=blocked>Blocked</span>" if task["status"] == "blocked" else ""
        checks = "".join(
            f"<li>{esc(check['name'])}</li>"
            for check in task["checks"] if not check["done"]
        )
        progress = task.get("workspace_progress", {})
        workspace_bar = ""
        checklist_label = ""
        if "completed_banks" in progress:
            workspace_bar = (
                "<strong>Workspace repair progress</strong>"
                f"<progress value='{progress['completed_banks']}' max='{progress['total_banks']}' "
                "aria-label='Isolated workspace bank repairs'></progress>"
            )
            checklist_label = "<small>Integrated acceptance checks</small>"
        output = task.get("output_progress", {})
        if "present_files" in output:
            workspace_bar += (
                "<strong>Image files present</strong>"
                f"<progress value='{output['present_files']}' max='{output['expected_files']}' "
                "aria-label='Image output files, not final acceptance'></progress>"
            )
        source_label = {"cli": "CLI", "chat": "Chat-managed"}.get(task.get("execution_source"), "Tracked work")
        rows += (
            f"<tr data-task-number='{numbers[task['id']]}'><td>{numbers[task['id']]}</td>"
            f"<td>{source_label}</td>"
            f"<td class=progress>{checklist_label}<strong>{percent}% / 100%</strong>"
            f"<progress value='{done}' max='{count}' "
            f"aria-label='{esc(task['name'])}: {percent} percent'></progress>"
            f"<small>{done}/{count} checks complete</small>{blocked}</td>"
            f"<td>{esc(task['name'])}</td><td>{workspace_bar}{esc(task.get('detail', ''))}"
            f"<details><summary>Remaining checks</summary><ul>{checks}</ul></details></td></tr>"
        )
    notes = "".join(f"<li>{esc(note)}</li>" for note in state.get("notes", []))
    card_languages = state.get("card_languages", state.get("foreign_card_languages", []))
    card_progress = card_translation_progress(card_languages, TOOLS.parent) if card_languages else ""
    return f"""<!doctype html><html lang=en><meta charset=utf-8>
<meta name=viewport content="width=device-width, initial-scale=1">
<meta http-equiv=refresh content=10><title>Active app fixes</title>
<style>body{{font:16px Segoe UI,sans-serif;background:#f5f7fb;color:#17233b;margin:24px}}
main{{max-width:1200px;margin:auto}}table{{border-collapse:collapse;width:100%;background:#fff}}
td,th{{border:1px solid #d5dce7;padding:12px;text-align:left;vertical-align:top}}
th{{background:#e8eefb}}.table{{overflow:auto}}a{{color:#2455be}}li{{margin:8px 0}}
progress{{display:block;width:100%;height:18px;margin:6px 0;accent-color:#2455be}}
.progress{{min-width:145px}}small{{color:#52647a}}
.blocked{{display:block;color:#9b341c;font-weight:bold;margin-top:8px}}
details{{margin-top:8px}}summary{{cursor:pointer}}</style>
<main><h1>{esc(state['task'])}</h1>
<p>{esc(state['phase'])}</p>
{card_progress}
<h2>Overall checklist progress: {overall}% / 100%</h2>
<progress value="{complete if total else 1}" max="{total or 1}" aria-label="Overall checklist progress"></progress>
<p>{complete}/{total} checks complete across this work list. Percentages measure completed checks,
not time remaining or translation accuracy. Hidden completed tasks remain included in the total.</p>
<p>Tracker refreshed: {esc(state.get('refreshed_at', state['updated_at']))}. Auto-refresh: 10 seconds.</p>
<h2>{'Tracked' if any(task['status'] == 'done' for task in tasks) else 'Remaining'} tasks ({len(tasks)})</h2><div class=table><table>
<tr><th>No.</th><th>Source</th><th>Progress</th><th>Task</th><th>Details</th></tr>
{rows or '<tr><td colspan=5>No active tasks remain.</td></tr>'}</table></div>
<ul>{notes}</ul><p><a href="/translation-audit-report">Completed translation audit report</a> |
<a href="/atf-report">Previous offline ATF report</a> |
<a href="/active-work.json">Active task data</a></p></main></html>"""


def translation_audit_page(path):
    try:
        state = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, ValueError):
        return "<meta http-equiv=refresh content=5><h1>Audit state is updating</h1>"
    esc = lambda value: html.escape(str(value))
    for code, language in state["languages"].items():
        runtime = TOOLS.parent / "build" / "translation_audit" / "runtime" / f"{code}.json"
        if runtime.exists() and state["status"] == "in_progress":
            try:
                probe = json.loads(runtime.read_text(encoding="utf-8"))
                if probe["probe_status"] == "completed":
                    language["runtime_status"] = (
                        f"Probed; {len(probe['untranslated_surfaces'])} untranslated surfaces found"
                    )
                else:
                    language["runtime_status"] = "Probe failed; see report/log"
            except (OSError, ValueError, KeyError):
                language["runtime_status"] = "Probe result updating"
    tasks = state["tasks"]
    done = sum(task["status"] == "done" for task in tasks)
    tasks_html = "".join(
        f"<li><b>{esc(task['status'])}</b> - {esc(task['name'])}</li>"
        for task in unfinished(tasks)
    )
    rows = "".join(
        "<tr>" + "".join(f"<td>{esc(value)}</td>" for value in [
            f"{language['name']} ({code})",
            language.get("ui_status", "pending"),
            language.get("question_status", "pending"),
            language.get("learning_status", "pending"),
            language.get("runtime_status", "pending"),
            language.get("verdict", "not assessed"),
        ]) + "</tr>"
        for code, language in state["languages"].items()
    )
    findings = "".join(
        f"<li>{esc(finding)}</li>" for finding in state.get("findings", [])
    )
    events = esc("\n".join(state.get("events", [])[-15:]))
    report = TOOLS.parent / "build" / "translation_audit" / "report.html"
    report_link = ('<a href="/translation-audit-report">Detailed audit report</a>'
                   if report.exists() else "Detailed report is being prepared.")
    return f"""<!doctype html><html lang=en><meta charset=utf-8>
<meta name=viewport content="width=device-width, initial-scale=1">
<meta http-equiv=refresh content=10><title>32-language app translation audit</title>
<style>body{{font:15px Segoe UI,sans-serif;margin:24px;color:#17233b;background:#f5f7fb}}
main{{max-width:1450px;margin:auto}}table{{border-collapse:collapse;width:100%;background:white}}
td,th{{border:1px solid #d5dce7;padding:9px;text-align:left;vertical-align:top}}
th{{background:#e8eefb}}.table{{overflow:auto}}li{{margin:7px 0}}
.note{{background:#fff1cf;border-left:4px solid #c27b00;padding:12px}}
pre{{white-space:pre-wrap;background:white;padding:16px;border:1px solid #ddd}}
progress{{width:100%;height:20px}}a{{color:#2455be}}</style><main>
<h1>{esc(state['task'])}</h1>
<p><b>{esc(state['status'])}</b> - {esc(state['phase'])}</p>
<p>Last update: {esc(state['updated_at'])}. Auto-refresh: 10 seconds.</p>
<p>{esc(state['scope'])}</p>
<progress value="{done}" max="{len(tasks)}"></progress>
<p>{done}/{len(tasks)} audit phases finished. This measures audit work, not translation quality.</p>
<h2>Remaining audit tasks</h2><ul>{tasks_html or '<li>No unfinished audit tasks. Remediation is tracked on the active page.</li>'}</ul>
<p class=note>Structural validity is not semantic accuracy. Native-speaker review and real-device
font/RTL checks are not automatically certified. Missing translations and English-only screens
will remain visible as findings, not be counted as complete.</p>
<p>{report_link} | <a href="/translation-audit.json">Live JSON</a> |
<a href="/delivery">Previous delivery tracker</a></p>
<h2>All 32 selectable languages</h2><div class=table><table>
<tr><th>Language</th><th>UI bundles</th><th>Question data</th><th>Learning cards</th>
<th>Runtime checks</th><th>Audit verdict</th></tr>{rows}</table></div>
<h2>Confirmed findings</h2><ul>{findings or '<li>Checks in progress.</li>'}</ul>
<h2>Latest activity</h2><pre>{events}</pre></main></html>"""


def delivery_page(path):
    try:
        state = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, ValueError):
        return "<meta http-equiv=refresh content=5><h1>Tracker state is updating</h1>"
    rows = "".join(
        f"<tr><td>{html.escape(name)}</td><td>{item['original_records']}</td>"
        f"<td>{item['target_records']}</td><td>{html.escape(item['status'])}</td></tr>"
        for name, item in state["categories"].items()
    )
    tasks = "".join(
        f"<li><b>{html.escape(item['status'])}</b> — {html.escape(item['name'])}</li>"
        for item in unfinished(state["tasks"])
    )
    translated = state["translations"]
    atf = state["atf"]
    translation_work = TOOLS.parent / "build" / "translation_rebuild"
    requested_strings = supplied_strings = 0
    progress_read_errors = []
    for request in (translation_work / "requests").glob("*.json"):
        try:
            requested = json.loads(request.read_text(encoding="utf-8"))
            response = translation_work / "responses" / request.name
            supplied = json.loads(response.read_text(encoding="utf-8")) if response.exists() else {}
            requested_strings += len(requested)
            supplied_strings += sum(
                isinstance(supplied.get(key), str) and bool(supplied[key].strip())
                for key in requested
            )
        except (OSError, ValueError) as error:
            progress_read_errors.append(f"{request.name}: {type(error).__name__}")
    status_path = translation_work / "status.json"
    if status_path.exists():
        try:
            translated["completed_files"] = len(json.loads(status_path.read_text(encoding="utf-8"))["completed"])
        except (OSError, ValueError, KeyError) as error:
            progress_read_errors.append(f"status.json: {type(error).__name__}")
    progress_warning = html.escape("; ".join(progress_read_errors))
    events = html.escape("\n".join(state["events"][-12:]))
    return f"""<!doctype html><meta charset=utf-8><meta http-equiv=refresh content=10>
<title>Question rebuild and offline ATF</title>
<style>body{{font:16px Segoe UI,sans-serif;max-width:1100px;margin:24px}}
table{{border-collapse:collapse;width:100%}}td,th{{padding:8px;border:1px solid #ccc;text-align:left}}
li{{padding:5px}}pre{{white-space:pre-wrap;background:#eee;padding:12px}}</style>
<h1>{html.escape(state['task'])}</h1><h2>{html.escape(state['phase'])}</h2>
<p>Status: <b>{html.escape(state['status'])}</b></p><ul>{tasks}</ul>
<h2>English banks</h2><table><tr><th>Category</th><th>Original questions</th><th>Target questions</th><th>Status</th></tr>{rows}</table>
<h2>Translations</h2><p>{html.escape(translated['status'])}<br>
{translated['completed_files']} / {translated['total_files']} files; {translated['languages']} translation languages.</p>
<p>Draft response strings supplied: {supplied_strings} / {requested_strings}.
Draft counts do not mean translations have passed validation or been applied.</p>
<p>{'Progress files updating or invalid: ' + progress_warning if progress_warning else ''}</p>
<h2>Offline ATF</h2><p>{html.escape(atf['status'])}<br>Passed: {atf['passed']}; failed: {atf['failed']}.</p>
<p><a href="/atf-report">Latest generated ATF report (available after the run)</a></p>
<h2>Updates</h2><pre>{events}</pre>"""


if __name__ == "__main__":
    ThreadingHTTPServer(("0.0.0.0", 8080), Handler).serve_forever()

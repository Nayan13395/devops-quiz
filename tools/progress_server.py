#!/usr/bin/env python3
"""Live progress page for the question-bank translation queue (http://<ip>:8080)."""

import html
import json
import re
import sys
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


class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        body = page().encode("utf-8")
        self.send_response(200)
        self.send_header("Content-Type", "text/html; charset=utf-8")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def log_message(self, *a):
        pass


if __name__ == "__main__":
    ThreadingHTTPServer(("0.0.0.0", 8080), Handler).serve_forever()

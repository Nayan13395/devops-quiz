import contextlib
import io
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

from progress_server import active_work_page, active_work_state, checklist_progress, card_translation_progress


def task(identifier, done, total, status="in_progress"):
    return {
        "id": identifier, "name": identifier, "status": status, "detail": "Task details",
        "checks": [{"name": f"Check {number+1}", "done": number < done}
                   for number in range(total)],
    }


class ActiveTrackerTests(unittest.TestCase):
    def test_cli_only_view_hides_chat_and_includes_foreground_apk_progress(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            path, queue_path = root / "state.json", root / "queue.json"
            chat = {**task("chat-work", 0, 2), "execution_source": "chat"}
            apk = {**task("release-apk", 2, 4), "execution_source": "cli",
                   "keep_visible": True}
            state = {"task": "Combined", "phase": "Old summary", "updated_at": "now",
                     "queue_state": "queue.json", "display_sources": ["cli"],
                     "tasks": [task("cli-session", 0, 2, "blocked"), chat, apk]}
            queue = {"order": ["cli-session"], "sessions": {"cli-session": {"status": "blocked"}}}
            path.write_text(json.dumps(state))
            queue_path.write_text(json.dumps(queue))
            result = active_work_state(path)
            self.assertEqual([item["id"] for item in result["tasks"]], ["cli-session", "release-apk"])
            self.assertEqual(result["session_summary"]["cli"]["running"], 1)
            self.assertNotIn("chat", result["session_summary"])
            page = active_work_page(path)
            self.assertIn("50% / 100%", page)
            self.assertIn("data-task-number='2'", page)
            self.assertNotIn("chat-work", page)
            self.assertNotIn("Chat-managed", page)
            self.assertNotIn("Progress data needs correction", page)
            self.assertEqual(json.loads(path.read_text()), state)
            self.assertEqual(json.loads(queue_path.read_text()), queue)
            apk["status"] = "done"
            for check in apk["checks"]:
                check["done"] = True
            path.write_text(json.dumps(state))
            complete = active_work_page(path)
            self.assertIn("release-apk", complete)
            self.assertIn("100% / 100%", complete)

    def test_later_chat_image_batches_use_declared_repository_destination(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            tools = root / "tools"
            tools.mkdir()
            path = tools / "state.json"
            images = root / "assets" / "Jigsaw"
            images.mkdir(parents=True)
            (images / "101.png").write_bytes(b"output")
            legacy = root / "Pictures" / "Jigsaw"
            legacy.mkdir(parents=True)
            (legacy / "102.png").write_bytes(b"unrelated old output")
            chat = task("jigsaw-hd-images-101-150", 0, 2)
            chat["detail"] = (
                "running: session chat c682d82c-210c-48ef-b215-1274f057f7a7. "
                f"Scenes saved directly to {images / '{N}.png'}"
            )
            state = {"task": "Combined", "phase": "Running", "updated_at": "now",
                     "queue_state": "queue.json", "tasks": [chat]}
            (tools / "queue.json").write_text(json.dumps({"order": [], "sessions": {}}))
            path.write_text(json.dumps(state))
            with patch.object(Path, "home", return_value=root):
                result = active_work_state(path)["tasks"][0]
                self.assertIn("1/50 numbered PNG files present", active_work_page(path))
                self.assertEqual(result["output_progress"]["present_files"], 1)
                self.assertEqual(result["output_progress"]["directory"], str(images.resolve()))
                self.assertFalse(result["output_progress"]["verified"])
                self.assertEqual(result["checks"], chat["checks"])
                state["tasks"][0]["output_directory"] = str(root / "unrelated")
                path.write_text(json.dumps(state))
                with contextlib.redirect_stderr(io.StringIO()):
                    invalid = active_work_state(path)["tasks"][0]
                self.assertIn("error", invalid["output_progress"])

    def test_chat_and_cli_tasks_share_tracker_without_rewriting_queue(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            path, queue_path = root / "state.json", root / "queue.json"
            chat = task("jigsaw-hd-images-1-25", 0, 2)
            chat["detail"] = "running: session chat c682d82c-210c-48ef-b215-1274f057f7a7"
            state = {"task": "CLI only", "phase": "Old summary", "updated_at": "now",
                     "queue_state": "queue.json", "tasks": [task("cli-task", 1, 1, "done"), chat]}
            queue = {"order": ["cli-task"], "sessions": {"cli-task": {"status": "done"}}}
            path.write_text(json.dumps(state))
            queue_path.write_text(json.dumps(queue))
            images = root / "Pictures" / "Jigsaw"
            images.mkdir(parents=True)
            (images / "1.png").write_bytes(b"output")
            (images / "2.png").touch()
            with patch.object(Path, "home", return_value=root):
                result = active_work_state(path)
                page = active_work_page(path)
                self.assertEqual(result["session_summary"]["cli"]["completed"], 1)
                self.assertEqual(result["session_summary"]["chat"]["running"], 1)
                self.assertIn("Chat-managed: 1 reported running", result["phase"])
                self.assertIn("data-task-number='2'", page)
                self.assertIn("1/25 numbered PNG files present", page)
                self.assertNotIn("Progress data needs correction", page)
                (images / "2.png").write_bytes(b"new output")
                refreshed = active_work_state(path)["tasks"][1]
            self.assertEqual(refreshed["output_progress"]["present_files"], 2)
            self.assertFalse(refreshed["output_progress"]["verified"])
            self.assertEqual(refreshed["checks"], chat["checks"])
            self.assertEqual(refreshed["status"], "in_progress")
            self.assertEqual(json.loads(queue_path.read_text()), queue)
            self.assertEqual(json.loads(path.read_text()), state)

    def test_live_bank_repairs_refresh_without_marking_acceptance_checks_done(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            path = root / "state.json"
            entry = task("question-bank-alignment", 1, 3)
            path.write_text(json.dumps({
                "task": "Active work", "phase": "Running", "updated_at": "now",
                "tasks": [entry], "queue_state": "queue.json",
            }))
            (root / "queue.json").write_text(json.dumps({
                "order": [entry["id"]],
                "sessions": {entry["id"]: {"workspace": str(root / "workspace")}},
            }))
            cache = root / "workspace" / "translator" / "cache" / "question_alignment"
            cache.mkdir(parents=True)
            (cache / "plan.json").write_text(json.dumps({"banks": {"Git/doi": {}, "Linux/sat": {}}}))
            status = cache / "status.json"
            status.write_text(json.dumps({"Git/doi": {"status": "done"}, "Linux/sat": {"status": "in_progress"}}))
            enriched = active_work_state(path)["tasks"][0]
            self.assertIn("1/2 banks repaired", enriched["detail"])
            self.assertEqual(enriched["workspace_progress"]["active_banks"], ["Linux/sat"])
            self.assertEqual(enriched["checks"], entry["checks"])
            page = active_work_page(path)
            self.assertIn("Integrated acceptance checks", page)
            self.assertIn("Workspace repair progress", page)
            status.write_text(json.dumps({"Git/doi": {"status": "done"}, "Linux/sat": {"status": "done"}}))
            refreshed = active_work_state(path)["tasks"][0]
            self.assertEqual(refreshed["workspace_progress"]["completed_banks"], 2)
            self.assertTrue(refreshed["workspace_progress"]["integration_pending"])
            self.assertEqual(refreshed["status"], "in_progress")
            self.assertEqual(json.loads(path.read_text())["tasks"][0], entry)
            status.write_text("{invalid")
            with contextlib.redirect_stderr(io.StringIO()):
                unavailable = active_work_state(path)["tasks"][0]
            self.assertIn("error", unavailable["workspace_progress"])
            self.assertNotIn("completed_banks", unavailable["workspace_progress"])

    def test_foreign_drafts_are_live_but_not_reported_as_applied(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            assets = root / "assets" / "learning"
            drafts = root / "translator" / "learning"
            assets.mkdir(parents=True)
            drafts.mkdir(parents=True)
            (assets / "coverage.json").write_text(json.dumps({
                "total": 3, "concepts": 1, "locales": {"fr": {"translated": 1}},
            }))
            (assets / "cards_fr.json").write_text('{"concept":{}}')
            draft = drafts / "command_translations_fr.json"
            draft.write_text('{"fr":{"one":"Premier"}}')
            first = card_translation_progress(["fr"], root)
            self.assertIn("0/1 languages complete", first)
            self.assertIn("<td>1/2</td><td>1/3</td>", first)
            draft.write_text('{"fr":{"one":"Premier","two":"Deuxième"}}', encoding="utf-8")
            second = card_translation_progress(["fr"], root)
            self.assertIn("<td>2/2</td><td>1/3</td>", second)
            self.assertIn("0/1 languages complete", second)
            (assets / "coverage.json").write_text(json.dumps({
                "total": 3, "concepts": 1, "locales": {"fr": {"translated": 3}},
            }))
            (assets / "cards_fr.json").write_text('{"concept":{},"one":{},"two":{}}')
            complete_page = card_translation_progress(["fr"], root)
            self.assertIn("1/1 languages complete", complete_page)
            self.assertNotIn("<td>French (fr)</td>", complete_page)
            self.assertIn("No remaining card translations.", complete_page)

    def test_broken_draft_does_not_create_successful_progress(self):
        with tempfile.TemporaryDirectory() as folder, contextlib.redirect_stderr(io.StringIO()):
            page = card_translation_progress(["fr"], Path(folder))
            self.assertIn("temporarily unavailable", page)
            self.assertNotIn("languages complete", page)

    def render(self, tasks, queue_order=None):
        with tempfile.TemporaryDirectory() as folder:
            path = Path(folder) / "state.json"
            state = {
                "task": "Active work", "phase": "Testing", "updated_at": "now",
                "status": "in_progress", "tasks": tasks, "notes": [],
            }
            if queue_order is not None:
                state["queue_state"] = "pending_task_queue.json"
                (path.parent / "pending_task_queue.json").write_text(
                    json.dumps({"order": queue_order})
                )
            path.write_text(json.dumps(state))
            return active_work_page(path)

    def test_queue_numbers_remain_stable_when_completed_tasks_are_archived(self):
        order = ["Finished", "Second", "Third"]
        page = self.render([task("Second", 0, 1), task("Third", 0, 1)], order)
        self.assertIn("<th>No.</th>", page)
        self.assertIn("data-task-number='2'><td>2</td>", page)
        self.assertIn("data-task-number='3'><td>3</td>", page)
        after = self.render([task("Third", 0, 1)], order)
        self.assertIn("data-task-number='3'><td>3</td>", after)
        self.assertNotIn("data-task-number='1'", after)

    def test_unknown_queue_task_is_reported_instead_of_misnumbered(self):
        with contextlib.redirect_stderr(io.StringIO()):
            page = self.render([task("Unknown", 0, 1)], ["Known"])
        self.assertIn("Active task is missing from the numbered queue", page)

    def test_percentages_use_check_counts_and_keep_blocker_visible(self):
        page = self.render([
            task("Artwork", 1, 4), task("Catalog", 2, 4),
            task("Translation", 0, 3, "blocked"),
        ])
        self.assertIn("25% / 100%", page)
        self.assertIn("50% / 100%", page)
        self.assertIn("0% / 100%", page)
        self.assertIn("27.3% / 100%", page)
        self.assertIn("Blocked", page)
        self.assertNotIn("in_progress", page)

    def test_completed_rows_hidden_but_progress_not_lost(self):
        page = self.render([task("Finished", 4, 4, "done"), task("Active", 1, 4)])
        self.assertIn("62.5% / 100%", page)
        self.assertIn("Remaining tasks (1)", page)
        self.assertNotIn("Finished", page)

    def test_completed_checks_hidden_without_losing_progress(self):
        entry = task("Active", 1, 2)
        entry["checks"][0]["name"] = "Already translated language"
        entry["checks"][1]["name"] = "Unfinished translation"
        page = self.render([entry])
        self.assertNotIn("Already translated language", page)
        self.assertIn("Unfinished translation", page)
        self.assertIn("50% / 100%", page)

    def test_invalid_or_inconsistent_progress_is_explicit(self):
        with self.assertRaises(ValueError):
            checklist_progress({"id": "missing"})
        with self.assertRaises(ValueError):
            checklist_progress(task("unfinished", 0, 3, "done"))
        with contextlib.redirect_stderr(io.StringIO()) as log:
            page = self.render([{"id": "missing", "status": "pending"}])
        self.assertIn("Progress data needs correction", page)
        self.assertIn("Tracker progress error", log.getvalue())

    def test_task_text_is_escaped(self):
        page = self.render([task("<script>bad</script>", 0, 1)])
        self.assertNotIn("<script>", page)
        self.assertIn("&lt;script&gt;", page)

    def test_all_done_and_empty_lists_do_not_divide_by_zero(self):
        for tasks in [[], [task("Finished", 2, 2, "done")]]:
            page = self.render(tasks)
            self.assertIn("100.0% / 100%", page)
            self.assertIn("No active tasks remain", page)


if __name__ == "__main__":
    unittest.main()

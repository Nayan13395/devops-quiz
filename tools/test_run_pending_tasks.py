from contextlib import ExitStack
from pathlib import Path
from tempfile import TemporaryDirectory
import unittest
from unittest.mock import patch

import run_pending_tasks as queue


def task(identifier, status="pending"):
    return {"id": identifier, "name": identifier, "status": status, "detail": "",
            "checks": [{"name": "Verify behavior", "done": status == "done"}]}


class SequentialQueueTests(unittest.TestCase):
    def setUp(self):
        self.temp = TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.stack = ExitStack()
        self.addCleanup(self.stack.close)
        for name, value in {
            "ROOT": self.root,
            "TRACKER": self.root / "tracker.json",
            "QUEUE": self.root / "queue.json",
            "HISTORY": self.root / "history.json",
            "WORK": self.root / "work",
        }.items():
            self.stack.enter_context(patch.object(queue, name, value))
        queue.write(queue.TRACKER, {"tasks": [
            task("old", "done"), task("second"), task("active", "in_progress"),
            task("expert-content-review"),
        ], "card_languages": ["old"], "current_evidence": {"old": True}})

    def test_prepare_archives_old_entries_and_prioritizes_only_active_work(self):
        result = queue.prepare()
        self.assertEqual(result["order"], ["active", "second", "expert-content-review"])
        state = queue.read(queue.TRACKER)
        self.assertNotIn("card_languages", state)
        self.assertEqual([item["id"] for item in state["tasks"]], result["order"])
        self.assertEqual(queue.read(queue.HISTORY)["archives"][0]["tasks"][0]["id"], "old")
        queue.prepare()
        self.assertEqual(len(queue.read(queue.HISTORY)["archives"]), 1)

    def test_second_runner_cannot_acquire_the_same_lock(self):
        with queue.queue_lock():
            with self.assertRaisesRegex(RuntimeError, "already running"):
                with queue.queue_lock():
                    self.fail("Two runners acquired the same lock")

    def test_tasks_and_their_validation_run_in_strict_sequence(self):
        queue.prepare()
        events = []

        def execute(command, log, timeout):
            identifier = log.parent.parent.name
            events.append((identifier, log.name))
            if log.name == "work.log":
                queue.write(log.parent / "result.json", {
                    "task_id": identifier, "status": "done", "summary": "Verified",
                    "checks": ["Verify behavior"],
                    "validation": [{"command": ["python", "-m", "unittest"]}],
                })
            return 0

        with patch.object(queue, "execute", side_effect=execute):
            self.assertEqual(queue.run_queue("copilot", 10), 0)
        self.assertEqual(events, [
            ("active", "work.log"), ("active", "validation-1.log"),
            ("second", "work.log"), ("second", "validation-1.log"),
        ])
        self.assertEqual(queue.read(queue.QUEUE)["completed"], ["active", "second"])
        self.assertEqual(queue.read(queue.QUEUE)["blocked"], ["expert-content-review"])
        self.assertEqual([item["id"] for item in queue.read(queue.TRACKER)["tasks"]],
                         ["expert-content-review"])

    def test_failed_independent_validation_stops_before_the_next_task(self):
        queue.prepare()
        events = []

        def execute(command, log, timeout):
            events.append(log.name)
            if log.name == "work.log":
                queue.write(log.parent / "result.json", {
                    "task_id": "active", "status": "done", "summary": "Claimed done",
                    "checks": ["Verify behavior"],
                    "validation": [{"command": ["python", "-m", "unittest"]}],
                })
                return 0
            return 1

        with patch.object(queue, "execute", side_effect=execute):
            self.assertEqual(queue.run_queue("copilot", 10), 1)
        self.assertEqual(events, ["work.log", "validation-1.log"])
        self.assertEqual(queue.read(queue.QUEUE)["completed"], [])
        self.assertEqual(queue.read(queue.QUEUE)["status"], "stopped_on_error")

    def test_completion_without_acceptance_checks_or_validation_is_rejected(self):
        with self.assertRaisesRegex(ValueError, "acceptance"):
            queue.receipt_checks(task("test"), {
                "task_id": "test", "status": "done", "summary": "No proof", "checks": [],
            })
        with self.assertRaisesRegex(ValueError, "validation"):
            queue.receipt_checks(task("test"), {
                "task_id": "test", "status": "done", "summary": "No proof",
                "checks": ["Verify behavior"],
            })


if __name__ == "__main__":
    unittest.main()

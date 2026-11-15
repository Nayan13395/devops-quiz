from pathlib import Path
from tempfile import TemporaryDirectory
import unittest
from unittest.mock import patch

import run_parallel_tasks as runner


class ParallelTaskTests(unittest.TestCase):
    def test_generated_plugin_metadata_never_causes_integration_conflicts(self):
        with TemporaryDirectory() as directory:
            base, workspace, target = [Path(directory) / name for name in ("base", "workspace", "target")]
            for folder, value in ((base, "old"), (workspace, "worker"), (target, "current")):
                folder.mkdir()
                (folder / ".flutter-plugins-dependencies").write_text(value)
            self.assertEqual(runner.change_plan(base, workspace, target), {})

    def test_refresh_uses_current_source_and_preserves_candidates_and_conflicts(self):
        with TemporaryDirectory() as directory:
            root = Path(directory)
            base, workspace, target = [root / name for name in ("base", "workspace", "target")]
            for folder in (base, workspace, target):
                folder.mkdir()
                (folder / "unchanged.txt").write_text("old")
                (folder / "candidate.txt").write_text("old")
                (folder / "conflict.txt").write_text("old")
            (target / "unchanged.txt").write_text("latest app")
            (workspace / "candidate.txt").write_text("retained worker edit")
            (workspace / "conflict.txt").write_text("worker version")
            (target / "conflict.txt").write_text("user version")
            entry = {"task_id": "full-app-regression", "directory": str(root),
                     "baseline": str(base), "workspace": str(workspace), "needs_refresh": True}
            with patch.object(runner, "snapshot", side_effect=lambda path: runner.shutil.copytree(target, path)), \
                    patch.object(runner.subprocess, "run"):
                runner.refresh_workspace(entry)
            self.assertEqual((workspace / "unchanged.txt").read_text(), "latest app")
            self.assertEqual((workspace / "candidate.txt").read_text(), "retained worker edit")
            self.assertEqual((workspace / "conflict.txt").read_text(), "user version")
            self.assertEqual((Path(entry["baseline"]) / "candidate.txt").read_text(), "old")
            self.assertFalse(entry["needs_refresh"])
            context = runner.serial.read(workspace / "parallel_task_refresh.json")
            self.assertEqual(context["conflicts"][0]["path"], "conflict.txt")
            self.assertEqual((Path(context["previous_workspace"]) / "conflict.txt").read_text(),
                             "worker version")
            self.assertEqual((base / "unchanged.txt").read_text(), "old")

    def test_completed_entries_archive_without_removing_active_or_blocked_work(self):
        with TemporaryDirectory() as directory:
            root = Path(directory)
            queue_path, tracker_path, history_path = [root / name for name in ("queue.json", "state.json", "history.json")]
            completed = {"id": "finished", "status": "done", "checks": [{"name": "Verified", "done": True}]}
            active = {"id": "chat-work", "status": "in_progress", "execution_source": "chat"}
            blocked = {"id": "blocked", "status": "blocked"}
            runner.serial.write(tracker_path, {"tasks": [completed, active, blocked],
                                               "notes": ["Completed in this chat: finished", "Current caution"]})
            runner.serial.write(queue_path, {
                "runner_pid": None, "order": ["finished", "blocked"], "completed": ["finished"],
                "blocked": ["blocked"], "sessions": {
                    "finished": {"status": "done", "workspace": "retained-workspace"},
                    "blocked": {"status": "blocked", "session_id": "keep"},
                },
            })
            with patch.object(runner.serial, "QUEUE", queue_path), patch.object(
                    runner.serial, "TRACKER", tracker_path), patch.object(runner.serial, "HISTORY", history_path):
                runner.archive_completed()
                runner.archive_completed()
            queue = runner.serial.read(queue_path)
            self.assertEqual(queue["order"], ["blocked"])
            self.assertEqual(queue["completed"], [])
            self.assertEqual(queue["sessions"]["blocked"]["session_id"], "keep")
            state = runner.serial.read(tracker_path)
            self.assertEqual(state["tasks"], [active, blocked])
            self.assertEqual(state["notes"], ["Current caution"])
            archives = runner.serial.read(history_path)["archives"]
            self.assertEqual(len(archives), 1)
            self.assertEqual(archives[0]["tasks"], [completed])
            self.assertEqual(archives[0]["sessions"]["finished"]["workspace"], "retained-workspace")

    def test_archiving_refuses_to_race_a_running_cli_coordinator(self):
        with TemporaryDirectory() as directory:
            root = Path(directory)
            queue_path, tracker_path = root / "queue.json", root / "state.json"
            runner.serial.write(tracker_path, {"tasks": []})
            runner.serial.write(queue_path, {"runner_pid": 123})
            with patch.object(runner.serial, "QUEUE", queue_path), patch.object(
                    runner.serial, "TRACKER", tracker_path):
                with self.assertRaisesRegex(RuntimeError, "coordinator is stopped"):
                    runner.archive_completed()

    def test_remove_blocked_preserves_other_tasks_and_archives_removed_sessions(self):
        with TemporaryDirectory() as directory:
            root = Path(directory)
            queue_path, tracker_path = root / "queue.json", root / "tracker.json"
            runner.serial.write(queue_path, {
                "run_directory": directory, "order": ["active", "blocked", "done"],
                "blocked": ["blocked"], "completed": ["done"],
                "sessions": {
                    "active": {"status": "running", "worker_pid": 12, "session_id": "keep"},
                    "blocked": {"status": "blocked", "workspace": "retained-workspace"},
                    "done": {"status": "done"},
                },
            })
            runner.serial.write(tracker_path, {"tasks": [
                {"id": "active", "status": "in_progress"},
                {"id": "blocked", "status": "blocked"},
                {"id": "done", "status": "done"},
            ]})
            with patch.object(runner.serial, "QUEUE", queue_path), patch.object(
                    runner.serial, "TRACKER", tracker_path):
                runner.remove_blocked()
            queue = runner.serial.read(queue_path)
            self.assertEqual(queue["order"], ["active", "done"])
            self.assertEqual(queue["blocked"], [])
            self.assertEqual(queue["completed"], ["done"])
            self.assertEqual(queue["sessions"]["active"]["session_id"], "keep")
            self.assertEqual(queue["sessions"]["active"]["status"], "pending")
            self.assertNotIn("blocked", queue["sessions"])
            self.assertEqual([t["id"] for t in runner.serial.read(tracker_path)["tasks"]],
                             ["active", "done"])
            archived = runner.serial.read(root / "removed-tasks.json")["removals"][0]
            self.assertEqual(archived["sessions"]["blocked"]["workspace"], "retained-workspace")

    def test_network_retry_ignores_old_errors_and_application_failures(self):
        with TemporaryDirectory() as directory:
            path = Path(directory) / "work.log"
            path.write_text("Execution failed: ETIMEDOUT\n", encoding="utf-8")
            entry = {"directory": directory, "log_offset": 0}
            self.assertTrue(runner.network_failure(entry))
            entry["log_offset"] = path.stat().st_size
            with path.open("a", encoding="utf-8") as stream:
                stream.write("Execution failed: invalid task receipt\n")
            self.assertFalse(runner.network_failure(entry))
            with path.open("a", encoding="utf-8") as stream:
                stream.write("Copilot could not connect to models: ENOTFOUND\n")
            self.assertTrue(runner.network_failure(entry))

    def test_snapshot_promotion_retries_windows_directory_locks(self):
        locked = OSError("Directory temporarily locked")
        locked.winerror = 32
        with patch.object(Path, "rename", side_effect=[locked, None]) as rename, patch.object(
                runner.time, "sleep") as sleep:
            runner.promote_snapshot(Path("staging"), Path("destination"))
        self.assertEqual(rename.call_count, 2)
        sleep.assert_called_once_with(2)
        denied = PermissionError("Directory scanner still holds a handle")
        denied.winerror = 5
        with patch.object(Path, "rename", side_effect=[denied, None]) as rename, patch.object(
                runner.time, "sleep") as sleep:
            runner.promote_snapshot(Path("staging"), Path("destination"))
        self.assertEqual(rename.call_count, 2)
        sleep.assert_called_once_with(2)
        with patch.object(Path, "rename", side_effect=denied), patch.object(runner.time, "sleep"):
            with self.assertRaises(PermissionError):
                runner.promote_snapshot(Path("staging"), Path("destination"))
        with patch.object(Path, "rename", side_effect=PermissionError("Access denied")), patch.object(
                runner.time, "sleep") as sleep:
            with self.assertRaises(PermissionError):
                runner.promote_snapshot(Path("staging"), Path("destination"))
        sleep.assert_not_called()

    def test_shared_arb_changes_merge_without_overwriting_other_tasks(self):
        base = {"original": "Keep", "old": "Old"}
        current = {**base, "notificationTitle": "Notifications"}
        proposed = {**base, "gameTitle": "Games"}
        self.assertEqual(runner.merge_json(base, current, proposed),
                         {**current, "gameTitle": "Games"})
        with self.assertRaisesRegex(ValueError, "Conflicting"):
            runner.merge_json(base, {**base, "old": "First"}, {**base, "old": "Second"})

    def test_json_deletion_preserves_independent_additions(self):
        self.assertEqual(runner.merge_json({"a": 1, "b": 2}, {"a": 1, "b": 2, "c": 3},
                                           {"a": 1}), {"a": 1, "c": 3})

    def test_file_creation_and_deletion_conflicts_are_not_silently_applied(self):
        path = Path("lib/example.dart")
        self.assertEqual(runner.merge_content(path, b"old", b"old", b"new"), b"new")
        with self.assertRaisesRegex(ValueError, "creation/deletion"):
            runner.merge_content(path, b"old", b"changed", None)

    def test_snapshots_exclude_secrets_caches_and_control_receipts(self):
        for path in (".env", "android/key.properties", "secret.pem",
                     "translator/cache/data.json", "parallel_task_result.json"):
            self.assertFalse(runner.allowed(Path(path)), path)
        self.assertTrue(runner.allowed(Path("assets/questions/Git/en/questions.json")))

    def test_dependency_tasks_wait_for_implementation_and_regression(self):
        sessions = {"game-ui-localization": {"status": "running"},
                    "full-app-regression": {"status": "pending"},
                    "refresh-docs-reports": {"status": "pending"}}
        self.assertFalse(runner.dependencies_ready("full-app-regression", sessions))
        sessions["game-ui-localization"]["status"] = "done"
        self.assertTrue(runner.dependencies_ready("full-app-regression", sessions))
        self.assertFalse(runner.dependencies_ready("refresh-docs-reports", sessions))
        sessions["full-app-regression"]["status"] = "blocked"
        self.assertTrue(runner.dependencies_ready("refresh-docs-reports", sessions))

    def test_failed_integrated_validation_restores_previous_checkout(self):
        with TemporaryDirectory() as directory:
            root = Path(directory)
            base, workspace, target = [root / name for name in ("base", "workspace", "target")]
            for folder, text in ((base, "old"), (workspace, "new"), (target, "old")):
                (folder / "lib").mkdir(parents=True)
                (folder / "lib/source.dart").write_text(text)
            entry = {"workspace": str(workspace), "baseline": str(base), "directory": str(root)}
            with patch.object(runner, "ROOT", target), patch.object(
                    runner, "validate", side_effect=RuntimeError("Test failed")):
                with self.assertRaisesRegex(RuntimeError, "Test failed"):
                    runner.integrate(entry, {})
            self.assertEqual((target / "lib/source.dart").read_text(), "old")
            self.assertEqual((workspace / "lib/source.dart").read_text(), "new")

    def test_launch_uses_distinct_session_model_and_requested_permissions(self):
        with TemporaryDirectory() as directory:
            root = Path(directory)
            base = root / "base"
            base.mkdir()
            (base / "source.txt").write_text("Retained dirty content")
            entry = {"workspace": str(root / "workspace"), "baseline": str(base),
                     "directory": str(root), "session_id": "unique-session",
                     "model": "verified-model"}
            task = {"id": "small-task", "checks": [], "name": "Small task"}
            with patch.object(runner.subprocess, "run"), patch.object(
                    runner.subprocess, "Popen") as popen:
                popen.return_value.pid = 123
                runner.launch(task, entry, "copilot")
            command = popen.call_args.args[0]
            self.assertEqual(popen.call_args.kwargs["env"]["COPILOT_TASK_WAIT_TIMEOUT_SECONDS"], "21600")
            for flag in ("--autopilot", "--allow-all", "--no-ask-user", "unique-session", "verified-model"):
                self.assertIn(flag, command)
            self.assertEqual((root / "workspace/source.txt").read_text(), "Retained dirty content")
            (root / "workspace/source.txt").write_text("Independent edit")
            self.assertEqual((base / "source.txt").read_text(), "Retained dirty content")
            self.assertEqual(entry["worker_pid"], 123)
            with patch.object(runner.subprocess, "Popen") as resumed:
                runner.launch(task, entry, "copilot")
            resumed_command = resumed.call_args.args[0]
            self.assertNotIn("--name", resumed_command)
            self.assertIn("unique-session", resumed_command)
            self.assertEqual((root / "workspace/source.txt").read_text(), "Independent edit")

    def test_successful_integration_retains_resumable_translation_progress(self):
        with TemporaryDirectory() as directory:
            root = Path(directory)
            base, workspace, target = [root / name for name in ("base", "workspace", "target")]
            relative = Path("translator/cache/game_ui/supplement/status.json")
            for folder, status in ((base, "pending"), (workspace, "done"), (target, "pending")):
                runner.serial.write(folder / relative, {"mr": {"status": status}})
            entry = {"task_id": "game-ui-localization", "workspace": str(workspace),
                     "baseline": str(base), "directory": str(root)}
            with patch.object(runner, "ROOT", target), patch.object(runner, "validate", return_value=[]):
                runner.integrate(entry, {"validation": []})
            self.assertEqual(runner.serial.read(target / relative)["mr"]["status"], "done")

    def test_concurrent_user_edit_is_preserved_instead_of_rolled_back(self):
        with TemporaryDirectory() as directory:
            root = Path(directory)
            base, workspace, target = [root / name for name in ("base", "workspace", "target")]
            for folder, text in ((base, "old"), (workspace, "new"), (target, "old")):
                folder.mkdir()
                (folder / "source.txt").write_text(text)

            def concurrent_edit(*args):
                (target / "source.txt").write_text("User's new edit")
                raise RuntimeError("Validation failed")

            entry = {"workspace": str(workspace), "baseline": str(base), "directory": str(root)}
            with patch.object(runner, "ROOT", target), patch.object(
                    runner, "validate", side_effect=concurrent_edit):
                with self.assertRaises(runner.ConcurrentEditError):
                    runner.integrate(entry, {})
            self.assertEqual((target / "source.txt").read_text(), "User's new edit")


if __name__ == "__main__":
    unittest.main()

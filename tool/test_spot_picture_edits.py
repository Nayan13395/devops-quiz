import unittest

import numpy as np
from PIL import Image, ImageDraw

from spot_scene_edits import edit_picture


class SceneEditTests(unittest.TestCase):
    def scene(self):
        image = Image.new("RGB", (400, 400), "#7bc9ec")
        draw = ImageDraw.Draw(image)
        for x, y in ((70, 70), (275, 70), (180, 190), (70, 290), (285, 290)):
            draw.rectangle((x, y, x+32, y+28), fill="#ea352c")
        return image

    def recipes(self, operation):
        return [
            (operation, f"Object {index}", bounds)
            for index, bounds in enumerate((
                (150, 150, 275, 265), (660, 150, 795, 265),
                (425, 450, 555, 565), (150, 700, 275, 820),
                (685, 700, 820, 820),
            ))
        ]

    def test_recolor_changes_object_not_the_surrounding_blue_background(self):
        original = self.scene()
        edited, spots = edit_picture(original, self.recipes("red"))
        a, b = np.array(original), np.array(edited)
        background = np.all(a == (123, 201, 236), axis=2)
        self.assertTrue(np.array_equal(a[background], b[background]))
        for x, y in ((80, 80), (285, 80), (190, 200), (80, 300), (295, 300)):
            self.assertNotEqual(original.getpixel((x, y)), edited.getpixel((x, y)))
        self.assertEqual(len(spots), 5)

    def test_removal_reconstructs_background_without_tint_markers(self):
        original = self.scene()
        edited, spots = edit_picture(original, self.recipes("remove"))
        for x, y in ((80, 80), (285, 80), (190, 200), (80, 300), (295, 300)):
            self.assertLess(max(abs(v-ref) for v, ref in zip(
                edited.getpixel((x, y)), (123, 201, 236))), 20)
        self.assertEqual(original.getpixel((0, 0)), edited.getpixel((0, 0)))
        self.assertTrue(all(spot["operation"] == "remove" for spot in spots))

    def test_invalid_or_invisible_edits_fail_instead_of_making_fake_targets(self):
        with self.assertRaisesRegex(ValueError, "exactly five"):
            edit_picture(self.scene(), [])
        with self.assertRaisesRegex(ValueError, "not visibly changed"):
            edit_picture(self.scene(), self.recipes("purple"))

    def test_reviewed_background_cloning_removes_objects_without_colored_ghosts(self):
        original = self.scene()
        edits = [(*recipe, (10, 10)) for recipe in self.recipes("clone")]
        edited, spots = edit_picture(original, edits)
        for x, y in ((80, 80), (285, 80), (190, 200), (80, 300), (295, 300)):
            self.assertLess(max(abs(v-ref) for v, ref in zip(
                edited.getpixel((x, y)), (123, 201, 236))), 12)
        self.assertEqual(original.getpixel((0, 0)), edited.getpixel((0, 0)))
        self.assertTrue(all(spot["operation"] == "clone" for spot in spots))
        with self.assertRaisesRegex(ValueError, "reviewed background source"):
            edit_picture(original, self.recipes("clone"))
        edits[0] = (*self.recipes("clone")[0], (150, 150))
        with self.assertRaisesRegex(ValueError, "overlaps"):
            edit_picture(original, edits)

    def test_warm_object_recolor_keeps_blue_background_unchanged(self):
        original = self.scene()
        edited, _ = edit_picture(original, self.recipes("warm"))
        a, b = np.array(original), np.array(edited)
        background = np.all(a == (123, 201, 236), axis=2)
        self.assertTrue(np.array_equal(a[background], b[background]))
        for x, y in ((80, 80), (285, 80), (190, 200), (80, 300), (295, 300)):
            self.assertNotEqual(original.getpixel((x, y)), edited.getpixel((x, y)))

    def test_foreground_clone_does_not_replace_rectangular_background_regions(self):
        original = self.scene()
        edits = [(*recipe, (10, 10), "warm") for recipe in self.recipes("clone")]
        edited, _ = edit_picture(original, edits)
        a, b = np.array(original), np.array(edited)
        background = np.all(a == (123, 201, 236), axis=2)
        self.assertTrue(np.array_equal(a[background], b[background]))
        for x, y in ((80, 80), (285, 80), (190, 200), (80, 300), (295, 300)):
            self.assertEqual(edited.getpixel((x, y)), (123, 201, 236))


if __name__ == "__main__":
    unittest.main()

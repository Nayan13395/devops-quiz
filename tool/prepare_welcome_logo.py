"""Prepare fixed logo layers for the approved moving-stage-text animation.

Requires Pillow. The original logo is never written. Only stage-label glyphs
are removed from a derived copy; the pipe, DEV/OPS and transparency are retained.
"""

import argparse
import hashlib
from pathlib import Path

from PIL import Image, ImageChops, ImageDraw, ImageFilter

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / "assets" / "images" / "devops_logo.png"
BACKGROUND = SOURCE.with_name("devops_logo_pipe.png")
MASK = SOURCE.with_name("devops_logo_pipe_mask.png")
SOURCE_SHA256 = "d448b949c73ba20ff18f90675fd7fb17b7a3b69eac3f02472f53eb90456772d2"
STAGE_REGIONS = [
    (510, 164, 645, 213),    # CODE
    (742, 241, 857, 353),    # PLAN
    (319, 341, 379, 487),    # BUILD
    (547, 611, 668, 672),    # TEST
    (848, 302, 1008, 464),   # RELEASE
    (1127, 160, 1310, 216),  # DEPLOY
    (1394, 319, 1478, 527),  # OPERATE
    (1077, 586, 1300, 672),  # MONITOR
]
CENTER_REGIONS = [(490, 370, 686, 456), (1110, 370, 1320, 456)]


def solve(matrix, values):
    rows = [list(row) + [value] for row, value in zip(matrix, values)]
    for column in range(len(values)):
        pivot = max(range(column, len(values)), key=lambda row: abs(rows[row][column]))
        rows[column], rows[pivot] = rows[pivot], rows[column]
        divisor = rows[column][column]
        if abs(divisor) < 1e-12:
            raise ValueError("Insufficient logo background samples")
        rows[column] = [value / divisor for value in rows[column]]
        for row in range(len(values)):
            if row != column:
                factor = rows[row][column]
                rows[row] = [
                    x - factor * y for x, y in zip(rows[row], rows[column])
                ]
    return [row[-1] for row in rows]


def prepare():
    if hashlib.sha256(SOURCE.read_bytes()).hexdigest() != SOURCE_SHA256:
        raise ValueError("Logo changed: review stage regions and animation path before regenerating")
    with Image.open(SOURCE) as image:
        original = image.convert("RGBA")
    clean = original.copy()
    changed_mask = Image.new("L", original.size)
    for box in STAGE_REGIONS:
        patch = original.crop(box)
        white = Image.new("L", patch.size)
        white.putdata([
            255 if min(r, g, b) > 140 and a > 200 else 0
            for r, g, b, a in zip(*[channel.get_flattened_data() for channel in patch.split()])
        ])
        if not white.getbbox():
            raise ValueError(f"No stage glyphs in {box}")
        mask = white.filter(ImageFilter.MaxFilter(9))
        ring = ImageChops.subtract(
            mask.filter(ImageFilter.MaxFilter(25)),
            white.filter(ImageFilter.MaxFilter(17)),
        )
        samples = []
        for y in range(0, patch.height, 2):
            for x in range(0, patch.width, 2):
                r, g, b, a = patch.getpixel((x, y))
                if ring.getpixel((x, y)) and a > 240 and b > max(r, g) + 15:
                    u, v = x / patch.width, y / patch.height
                    samples.append(([1, u, v, u*u, u*v, v*v], (r, g, b)))
        if len(samples) < 25:
            raise ValueError(f"Too few blue-background samples in {box}")
        matrix = [
            [sum(s[i] * s[j] for s, _ in samples) for j in range(6)]
            for i in range(6)
        ]
        models = [
            solve(matrix, [sum(s[i] * rgb[c] for s, rgb in samples) for i in range(6)])
            for c in range(3)
        ]
        repaired = patch.copy()
        for y in range(patch.height):
            for x in range(patch.width):
                if mask.getpixel((x, y)):
                    u, v = x / patch.width, y / patch.height
                    basis = [1, u, v, u*u, u*v, v*v]
                    rgb = tuple(
                        max(0, min(255, round(sum(a*b for a, b in zip(model, basis)))))
                        for model in models
                    )
                    repaired.putpixel((x, y), (*rgb, patch.getpixel((x, y))[3]))
        clean.paste(repaired, box[:2])
        changed_mask.paste(mask, box[:2])

    assert original.getchannel("A").tobytes() == clean.getchannel("A").tobytes()
    for box in CENTER_REGIONS:
        assert original.crop(box).tobytes() == clean.crop(box).tobytes()
    outside = ImageChops.difference(original.convert("RGB"), clean.convert("RGB"))
    outside.paste((0, 0, 0), mask=changed_mask)
    assert outside.getbbox() is None, "Pixels outside the old stage glyphs changed"

    pipe_mask = original.getchannel("A").point(lambda value: 255 if value > 100 else 0)
    for box in CENTER_REGIONS:
        ImageDraw.Draw(pipe_mask).rectangle(box, fill=0)
    rgba_mask = Image.merge("RGBA", (pipe_mask, pipe_mask, pipe_mask, pipe_mask))
    return clean, rgba_mask


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--validate-only", action="store_true")
    args = parser.parse_args()
    background, mask = prepare()
    for path, expected in [(BACKGROUND, background), (MASK, mask)]:
        if not args.validate_only:
            expected.save(path, format="PNG", optimize=True)
        with Image.open(path) as saved:
            assert saved.size == expected.size
            assert saved.convert("RGBA").tobytes() == expected.tobytes(), path
    assert hashlib.sha256(SOURCE.read_bytes()).hexdigest() == SOURCE_SHA256
    print("PASS: fixed 1765x900 layers; original logo, DEV/OPS, pipe and alpha preserved.")


if __name__ == "__main__":
    main()

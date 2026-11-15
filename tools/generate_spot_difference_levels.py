#!/usr/bin/env python3
"""Generate Spot the Difference assets and metadata from numbered image pairs."""

from __future__ import annotations

import argparse
import json
import math
import shutil
from collections import deque
from dataclasses import dataclass
from pathlib import Path

import numpy as np
from PIL import Image, ImageFilter


LOGO_LEVELS = {1, 5, 10, 15, 20, 45, 50, 75, 85, 90}
LEVEL_COUNT = 100
ANALYSIS_SIZE = 512
DIFF_THRESHOLD = 45


@dataclass
class Region:
    x: float
    y: float
    rx: float
    ry: float


@dataclass
class PixelCluster:
    points: np.ndarray
    weights: np.ndarray

    @property
    def energy(self) -> float:
        return float(self.weights.sum())

    @property
    def spread(self) -> float:
        if len(self.points) < 2:
            return 0.0
        extent = np.ptp(self.points, axis=0)
        return float(extent[0] ** 2 + extent[1] ** 2)


def parse_args() -> argparse.Namespace:
    repo_root = Path(__file__).resolve().parents[1]
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--source",
        type=Path,
        default=repo_root / "assets" / "spot the difference",
    )
    parser.add_argument("--repo-root", type=Path, default=repo_root)
    return parser.parse_args()


def connected_components(mask: np.ndarray) -> list[np.ndarray]:
    height, width = mask.shape
    seen = np.zeros_like(mask, dtype=bool)
    components: list[np.ndarray] = []
    for y, x in np.argwhere(mask):
        if seen[y, x]:
            continue
        queue = deque([(int(y), int(x))])
        seen[y, x] = True
        points: list[tuple[int, int]] = []
        while queue:
            current_y, current_x = queue.popleft()
            points.append((current_y, current_x))
            for next_y in range(max(0, current_y - 1), min(height, current_y + 2)):
                for next_x in range(
                    max(0, current_x - 1), min(width, current_x + 2)
                ):
                    if mask[next_y, next_x] and not seen[next_y, next_x]:
                        seen[next_y, next_x] = True
                        queue.append((next_y, next_x))
        components.append(np.asarray(points, dtype=np.int32))
    return components


def split_cluster(cluster: PixelCluster) -> tuple[PixelCluster, PixelCluster]:
    points = cluster.points.astype(np.float64)
    weights = cluster.weights.astype(np.float64)
    centered = points - np.average(points, axis=0, weights=weights)
    covariance = (centered * weights[:, None]).T @ centered
    axis = np.linalg.eigh(covariance)[1][:, -1]
    projection = centered @ axis
    centers = np.array(
        [
            np.quantile(projection, 0.2),
            np.quantile(projection, 0.8),
        ]
    )
    assignments = np.zeros(len(points), dtype=bool)
    for _ in range(20):
        updated = np.abs(projection - centers[1]) < np.abs(projection - centers[0])
        if updated.all() or not updated.any():
            updated[np.argmax(projection)] = True
            updated[np.argmin(projection)] = False
        new_centers = np.array(
            [
                np.average(projection[~updated], weights=weights[~updated]),
                np.average(projection[updated], weights=weights[updated]),
            ]
        )
        if np.array_equal(updated, assignments) and np.allclose(new_centers, centers):
            assignments = updated
            break
        assignments = updated
        centers = new_centers
    return (
        PixelCluster(cluster.points[~assignments], cluster.weights[~assignments]),
        PixelCluster(cluster.points[assignments], cluster.weights[assignments]),
    )


def find_regions(
    left: Image.Image, right: Image.Image, expected: int
) -> tuple[list[Region], int]:
    width, height = left.size
    scale = ANALYSIS_SIZE / max(width, height)
    analysis_size = (round(width * scale), round(height * scale))
    left_small = left.resize(analysis_size, Image.Resampling.LANCZOS)
    right_small = right.resize(analysis_size, Image.Resampling.LANCZOS)
    difference = np.max(
        np.abs(
            np.asarray(left_small, dtype=np.int16)
            - np.asarray(right_small, dtype=np.int16)
        ),
        axis=2,
    ).astype(np.uint8)
    smoothed = np.asarray(
        Image.fromarray(difference).filter(ImageFilter.GaussianBlur(radius=2))
    )
    mask_image = Image.fromarray(
        np.where(smoothed > DIFF_THRESHOLD, 255, 0).astype(np.uint8)
    )
    mask_image = mask_image.filter(ImageFilter.MinFilter(3))
    mask_image = mask_image.filter(ImageFilter.MaxFilter(7))
    mask = np.asarray(mask_image) > 0

    minimum_area = max(30, round(mask.size * 0.00015))
    clusters: list[PixelCluster] = []
    for points in connected_components(mask):
        if len(points) < minimum_area:
            continue
        weights = smoothed[points[:, 0], points[:, 1]].astype(np.float64)
        clusters.append(PixelCluster(points, weights))

    if not clusters:
        raise RuntimeError("No changed regions survived noise filtering")
    raw_component_count = len(clusters)
    if len(clusters) > expected:
        clusters = sorted(clusters, key=lambda cluster: cluster.energy, reverse=True)[
            :expected
        ]
    while len(clusters) < expected:
        split_index = max(
            range(len(clusters)),
            key=lambda index: clusters[index].spread
            * math.sqrt(max(clusters[index].energy, 1.0)),
        )
        first, second = split_cluster(clusters.pop(split_index))
        clusters.extend((first, second))

    regions: list[Region] = []
    analysis_width, analysis_height = analysis_size
    for cluster in clusters:
        y_values = cluster.points[:, 0].astype(np.float64)
        x_values = cluster.points[:, 1].astype(np.float64)
        center_x = float(np.average(x_values, weights=cluster.weights))
        center_y = float(np.average(y_values, weights=cluster.weights))
        radius_x = float(np.quantile(np.abs(x_values - center_x), 0.96)) + 8
        radius_y = float(np.quantile(np.abs(y_values - center_y), 0.96)) + 8
        regions.append(
            Region(
                x=center_x / analysis_width,
                y=center_y / analysis_height,
                rx=min(0.16, max(0.035, radius_x / analysis_width)),
                ry=min(0.16, max(0.035, radius_y / analysis_height)),
            )
        )
    return sorted(regions, key=lambda region: (region.y, region.x)), raw_component_count


def difficulty_for(level: int) -> str:
    if level <= 25:
        return "easy"
    if level <= 65:
        return "medium"
    return "hard"


def dart_catalog(levels: list[dict[str, object]]) -> str:
    lines = [
        "// Generated by tools/generate_spot_difference_levels.py. Do not edit by hand.",
        "typedef PictureSpotData = ({",
        "  double x,",
        "  double y,",
        "  double rx,",
        "  double ry,",
        "  String label,",
        "});",
        "typedef PictureLevelData = ({",
        "  String title,",
        "  String difficulty,",
        "  String leftAsset,",
        "  String rightAsset,",
        "  double aspectRatio,",
        "  bool isProcedural,",
        "  bool hasJigsawLines,",
        "  List<PictureSpotData> spots,",
        "});",
        "",
        "const List<PictureLevelData> spotPictureCatalog = [",
    ]
    for level in levels:
        lines.extend(
            [
                "  (",
                f'    title: "{level["title"]}",',
                f'    difficulty: "{level["difficulty"]}",',
                f'    leftAsset: "{level["leftAsset"]}",',
                f'    rightAsset: "{level["rightAsset"]}",',
                "    isProcedural: false,",
                "    hasJigsawLines: false,",
                f'    aspectRatio: {level["aspectRatio"]:.9f},',
                "    spots: [",
            ]
        )
        for index, region in enumerate(level["differences"], start=1):
            lines.extend(
                [
                    "      (",
                    f'        x: {region["x"]:.9f},',
                    f'        y: {region["y"]:.9f},',
                    f'        rx: {region["rx"]:.9f},',
                    f'        ry: {region["ry"]:.9f},',
                    f'        label: "Missing item {index}",',
                    "      ),",
                ]
            )
        lines.extend(["    ],", "  ),"])
    lines.extend(["];", ""])
    return "\n".join(lines)


def main() -> None:
    args = parse_args()
    source = args.source.resolve()
    repo_root = args.repo_root.resolve()
    if not (repo_root / "pubspec.yaml").is_file():
        raise RuntimeError(f"Not a Flutter repository: {repo_root}")
    missing = [
        str(source / f"{number}{side}.png")
        for number in range(1, LEVEL_COUNT + 1)
        for side in ("A", "B")
        if not (source / f"{number}{side}.png").is_file()
    ]
    if missing:
        raise FileNotFoundError(f"Missing source images: {missing}")

    asset_dir = repo_root / "assets" / "spot_difference"
    if asset_dir.exists():
        shutil.rmtree(asset_dir)
    asset_dir.mkdir(parents=True)

    levels: list[dict[str, object]] = []
    for number in range(1, LEVEL_COUNT + 1):
        with Image.open(source / f"{number}A.png") as original_left:
            left = original_left.convert("RGB")
        with Image.open(source / f"{number}B.png") as original_right:
            right = original_right.convert("RGB")
        expected = 5 if number in LOGO_LEVELS else 4
        regions, raw_component_count = find_regions(left, right, expected)
        stem = f"level_{number:03d}"
        left_path = asset_dir / f"{stem}_left.png"
        right_path = asset_dir / f"{stem}_right.png"
        shutil.copy2(source / f"{number}A.png", left_path)
        shutil.copy2(source / f"{number}B.png", right_path)
        levels.append(
            {
                "id": number,
                "title": f"3D Scene {number}",
                "difficulty": difficulty_for(number),
                "leftAsset": f"assets/spot_difference/{left_path.name}",
                "rightAsset": f"assets/spot_difference/{right_path.name}",
                "aspectRatio": left.width / left.height,
                "rawComponentCount": raw_component_count,
                "differences": [
                    {
                        "x": region.x,
                        "y": region.y,
                        "rx": region.rx,
                        "ry": region.ry,
                        "label": f"Missing item {index}",
                    }
                    for index, region in enumerate(regions, start=1)
                ],
            }
        )

    (asset_dir / "manifest.json").write_text(
        json.dumps({"version": 3, "levels": levels}, indent=2) + "\n",
        encoding="utf-8",
    )
    (repo_root / "lib" / "data" / "spot_picture_catalog.dart").write_text(
        dart_catalog(levels),
        encoding="utf-8",
    )
    counts = [len(level["differences"]) for level in levels]
    unexpected_counts = [
        {
            "level": level["id"],
            "raw": level["rawComponentCount"],
            "expected": len(level["differences"]),
        }
        for level in levels
        if abs(level["rawComponentCount"] - len(level["differences"])) >= 2
    ]
    print(
        json.dumps(
            {
                "levels": len(levels),
                "averageDifferences": sum(counts) / len(counts),
                "minimumDifferences": min(counts),
                "maximumDifferences": max(counts),
                "unexpectedRawCounts": unexpected_counts,
            }
        )
    )


if __name__ == "__main__":
    main()

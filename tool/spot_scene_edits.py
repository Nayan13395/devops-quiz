"""Object-specific picture edits, in thousandths of the original image size.

Bounds are hand-selected around named scene features, never a fixed grid of
colored circles. Color edits select the object's existing pigment and retain
its shading; removals reconstruct the surrounding texture locally.
"""

import cv2
import numpy as np
from PIL import Image, ImageChops

cv2.setNumThreads(1)


def remove_object(image, mask, left, top):
    """Clone matching nearby background texture, then blend at the object edge."""
    height, width = mask.shape
    if min(width, height) < 28 or np.count_nonzero(mask) < 200:
        patch = image[top:top+height, left:left+width]
        result = image.copy()
        result[top:top+height, left:left+width] = cv2.inpaint(
            patch, mask, 4, cv2.INPAINT_NS,
        )
        return result
    scale = min(1, 480/max(image.shape[:2]))
    small = cv2.resize(image, (round(image.shape[1]*scale), round(image.shape[0]*scale)))
    tw, th = max(4, round(width*scale)), max(4, round(height*scale))
    template = cv2.resize(image[top:top+height, left:left+width], (tw, th))
    hole = cv2.resize(mask, (tw, th), interpolation=cv2.INTER_NEAREST)
    ring = cv2.subtract(cv2.dilate(hole, np.ones((7, 7), np.uint8)), hole)
    if not np.any(ring):
        raise ValueError("Object removal needs visible background around its mask")
    scores = cv2.matchTemplate(small, template, cv2.TM_SQDIFF, mask=ring)
    scores /= max(1, np.count_nonzero(ring)*3)
    yy, xx = np.indices(scores.shape)
    tx, ty = round(left*scale), round(top*scale)
    # Never sample the object being removed, including partial overlaps.
    overlap = (xx < tx+tw) & (xx+tw > tx) & (yy < ty+th) & (yy+th > ty)
    scores[overlap] = np.inf
    scores += ((xx-tx)**2+(yy-ty)**2)*.002
    if not np.isfinite(scores).any():
        raise ValueError("No independent background patch fits this object")
    sy, sx = np.unravel_index(np.argmin(scores), scores.shape)
    source_x = round(int(sx)/scale)
    source_y = round(int(sy)/scale)
    source = image[source_y:source_y+height, source_x:source_x+width]
    source = cv2.resize(source, (width, height))
    mx, my, mw, mh = cv2.boundingRect(mask)
    return cv2.seamlessClone(source, image, mask, (left+mx+mw//2, top+my+mh//2),
                             cv2.NORMAL_CLONE)


def object_mask(patch, selected, roi):
    """Separate an existing object from its surrounding colors and outlines."""
    height, width = patch.shape[:2]
    scale = min(1, 420 / max(width, height))
    small = cv2.resize(patch, (max(4, round(width*scale)), max(4, round(height*scale))))
    candidates = cv2.resize(selected.astype(np.uint8), small.shape[1::-1],
                            interpolation=cv2.INTER_NEAREST).astype(bool)
    x0, y0, x1, y1 = [round(v*scale) for v in roi]
    labels = np.full(small.shape[:2], cv2.GC_PR_BGD, np.uint8)
    labels[y0:y1, x0:x1] = cv2.GC_PR_FGD
    labels[~candidates] = cv2.GC_PR_BGD
    labels[[0, -1], :] = cv2.GC_BGD
    labels[:, [0, -1]] = cv2.GC_BGD
    possible = np.zeros_like(candidates)
    possible[max(1, y0):min(small.shape[0]-1, y1),
             max(1, x0):min(small.shape[1]-1, x1)] = True
    yy, xx = np.nonzero(possible & candidates)
    if not len(xx):
        return np.zeros((height, width), np.float32)
    distance = ((xx-(x0+x1)/2)/max(1,x1-x0))**2 + ((yy-(y0+y1)/2)/max(1,y1-y0))**2
    seed = int(np.argmin(distance))
    core = distance <= max(.035, float(distance[seed])+.015)
    labels[yy[core], xx[core]] = cv2.GC_FGD
    cv2.setRNGSeed(0)
    cv2.grabCut(small, labels, None, np.zeros((1, 65)), np.zeros((1, 65)),
                3, cv2.GC_INIT_WITH_MASK)
    mask = ((labels == cv2.GC_FGD) | (labels == cv2.GC_PR_FGD)).astype(np.uint8)
    # Keep only object components intersecting the selected feature.
    count, components = cv2.connectedComponents(mask)
    keep = np.zeros_like(mask)
    for component in range(1, count):
        region = components == component
        if np.count_nonzero(region & possible) >= max(2, np.count_nonzero(region)*.25):
            keep[region] = 1
    return cv2.resize(keep.astype(np.float32), (width, height),
                      interpolation=cv2.INTER_LINEAR) * selected


def edit_picture(original, edits):
    if len(edits) != 5:
        raise ValueError("Each picture needs exactly five reviewed edits")
    result = np.array(original.convert("RGB"))
    spots = []
    errors = []
    change_masks = []
    for edit in edits:
        mode, label, bounds, *reference = edit
        if reference and mode != "clone":
            raise ValueError(f"Only clone edits accept a background source: {label}")
        polygon = None
        if len(bounds) > 4:
            polygon = np.array([
                (round(x*original.width/1000), round(y*original.height/1000))
                for x, y in zip(bounds[::2], bounds[1::2])
            ], dtype=np.int32)
            bounds = (min(bounds[::2]), min(bounds[1::2]),
                      max(bounds[::2]), max(bounds[1::2]))
        x0, y0, x1, y1 = [
            round(value * (original.width if i % 2 == 0 else original.height) / 1000)
            for i, value in enumerate(bounds)
        ]
        if not (0 <= x0 < x1 <= original.width and 0 <= y0 < y1 <= original.height):
            raise ValueError(f"Invalid feature bounds: {label}")
        before = result.copy()
        if mode == "bird":
            width, height = x1-x0, y1-y0
            center = (x0+width//2, y0+height//2)
            ink = (38, 45, 50)
            cv2.ellipse(result, (x0+width//4, center[1]), (width//4, height//3),
                        0, 195, 345, ink, max(2, height//10), cv2.LINE_AA)
            cv2.ellipse(result, (x0+3*width//4, center[1]), (width//4, height//3),
                        0, 195, 345, ink, max(2, height//10), cv2.LINE_AA)
        elif mode == "clone":
            if len(reference) not in (1, 2) or len(reference[0]) != 2:
                raise ValueError(f"Clone needs one reviewed background source point: {label}")
            sx, sy = (round(reference[0][0]*original.width/1000),
                      round(reference[0][1]*original.height/1000))
            width, height = x1-x0, y1-y0
            if not (0 <= sx < sx+width <= original.width and
                    0 <= sy < sy+height <= original.height):
                raise ValueError(f"Background source is outside the picture: {label}")
            if sx < x1 and sx+width > x0 and sy < y1 and sy+height > y0:
                raise ValueError(f"Background source overlaps the removed object: {label}")
            source = np.array(original.convert("RGB"))[sy:sy+height, sx:sx+width].copy()
            target = result[y0:y1, x0:x1].copy()
            mask = np.zeros((height, width), np.uint8)
            if polygon is None:
                mask[1:-1, 1:-1] = 255
            else:
                cv2.fillPoly(mask, [polygon-(x0, y0)], 255)
                mask[[0, -1], :] = 0
                mask[:, [0, -1]] = 0
            if len(reference) == 2:
                hsv = cv2.cvtColor(target, cv2.COLOR_RGB2HSV)
                h, s, v = cv2.split(hsv)
                background_value = np.median(cv2.cvtColor(source, cv2.COLOR_RGB2HSV)[:, :, 2])
                selectors = {
                    "dark": v < background_value*.65,
                    "warm": ((h < 40) | (h > 160)) & (s > 35) & (v > 60),
                    "green": (h >= 35) & (h < 90) & (s > 35) & (v > 80),
                    "pale": (s < 90) & (v > 145),
                }
                if reference[1] not in selectors:
                    raise ValueError(f"Unknown clone foreground selector: {label}")
                selected = (selectors[reference[1]] & (mask > 0)).astype(np.uint8)*255
                selected = cv2.dilate(selected, np.ones((7, 7), np.uint8))
                mask = cv2.bitwise_and(mask, selected)
            distance = cv2.distanceTransform(mask, cv2.DIST_L2, 5)
            feather = 2 if len(reference) == 2 else max(2, min(width, height)*.06)
            edge = (distance > 0) & (distance <= feather)
            if not np.any(edge):
                raise ValueError(f"No clone foreground found: {label}")
            # Match the surrounding light, not the removed object's boundary
            # color; Poisson interpolation can otherwise leave a dark ghost.
            offset = np.median(target[edge], axis=0) - np.median(source[edge], axis=0)
            corrected = np.clip(source.astype(np.float32) + offset, 0, 255)
            alpha = np.minimum(distance/feather, 1)[:, :, None]
            result[y0:y1, x0:x1] = np.rint(
                target*(1-alpha) + corrected*alpha,
            ).astype(np.uint8)
        elif mode == "remove":
            # Work locally: distant objects must remain byte-for-byte unchanged.
            pad = max(12, min(x1-x0, y1-y0) // 2)
            left, top = max(0, x0-pad), max(0, y0-pad)
            right, bottom = min(original.width, x1+pad), min(original.height, y1+pad)
            patch = result[top:bottom, left:right].copy()
            mask = (object_mask(
                patch, np.ones(patch.shape[:2], bool),
                (x0-left, y0-top, x1-left, y1-top),
            ) > .2).astype(np.uint8)*255
            # Poisson blending erodes the mask internally; include background
            # beyond the outline so the old object's color is not a boundary.
            mask = cv2.dilate(mask, np.ones((13, 13), np.uint8))
            mask[[0, -1], :] = 0
            mask[:, [0, -1]] = 0
            result = remove_object(result, mask, left, top)
        elif mode == "mirror":
            pad = max(8, min(x1-x0, y1-y0)//3)
            left, top = max(0, x0-pad), max(0, y0-pad)
            right, bottom = min(original.width, x1+pad), min(original.height, y1+pad)
            patch = result[top:bottom, left:right].copy()
            mask = object_mask(patch, np.ones(patch.shape[:2], bool),
                               (x0-left, y0-top, x1-left, y1-top))
            crop = patch[y0-top:y1-top, x0-left:x1-left].copy()
            crop_mask = mask[y0-top:y1-top, x0-left:x1-left]
            removal = np.zeros(patch.shape[:2], np.uint8)
            removal[y0-top:y1-top, x0-left:x1-left] = (crop_mask > .2)*255
            removal = cv2.dilate(removal, np.ones((13, 13), np.uint8))
            removal[[0, -1], :] = 0
            removal[:, [0, -1]] = 0
            repaired_image = remove_object(result, removal, left, top)
            repaired = repaired_image[top:bottom, left:right].copy()
            alpha = crop_mask[:, ::-1, None]
            repaired[y0-top:y1-top, x0-left:x1-left] = np.rint(
                repaired[y0-top:y1-top, x0-left:x1-left]*(1-alpha) + crop[:, ::-1]*alpha,
            ).astype(np.uint8)
            result[top:bottom, left:right] = repaired
        else:
            pad = max(8, round(min(x1-x0, y1-y0)*.35))
            left, top = max(0, x0-pad), max(0, y0-pad)
            right, bottom = min(original.width, x1+pad), min(original.height, y1+pad)
            patch = result[top:bottom, left:right]
            hsv = cv2.cvtColor(patch, cv2.COLOR_RGB2HSV)
            h, s, v = cv2.split(hsv)
            ranges = {
                "red": (h < 13) | (h > 170),
                "gold": (h >= 13) & (h < 40),
                "green": (h >= 35) & (h < 90),
                "blue": (h >= 85) & (h < 135),
                "purple": (h >= 130) & (h <= 170),
                "pale": (s < 90) & (v > 145),
                "dark": (s < 120) & (v < 105),
                "gray": (s < 100) & (v > 45) & (v < 180),
                "warm": (h < 40) | (h > 140),
            }
            if mode not in ranges:
                raise ValueError(f"Unknown edit operation: {mode}")
            selected = ranges[mode] & (v > 30)
            if mode not in ("pale", "dark", "gray"):
                selected &= s > 35
            alpha = object_mask(patch, selected, (x0-left, y0-top, x1-left, y1-top))
            if polygon is not None:
                outline = np.zeros(patch.shape[:2], np.uint8)
                cv2.fillPoly(outline, [polygon-(left, top)], 1)
                alpha = outline.astype(np.float32) * selected
            changed = hsv.copy()
            if mode in ("pale", "dark", "gray"):
                changed[:, :, 0] = 22
                changed[:, :, 1] = 100
                if mode == "dark":
                    changed[:, :, 2] = np.minimum(v.astype(int) + 60, 200)
            else:
                shifts = {"red": 105, "gold": 155, "green": 145, "blue": 30, "purple": 145, "warm": 55}
                changed[:, :, 0] = (h.astype(int) + shifts[mode]) % 180
                changed[:, :, 1] = (s.astype(float)*.85).astype(np.uint8)
            rgb = cv2.cvtColor(changed, cv2.COLOR_HSV2RGB)
            alpha = alpha[:, :, None]
            result[top:bottom, left:right] = np.rint(patch * (1-alpha) + rgb * alpha).astype(np.uint8)
        changed_pixels = np.any(before != result, axis=2)
        ys, xs = np.nonzero(changed_pixels)
        if len(xs) < 40:
            errors.append(f"{label} ({len(xs)} pixels)")
            continue
        bx0, by0, bx1, by1 = xs.min(), ys.min(), xs.max()+1, ys.max()+1
        spots.append(dict(
            x=float((bx0+bx1)/2/original.width),
            y=float((by0+by1)/2/original.height),
            rx=float(((bx1-bx0)/2+3)/original.width),
            ry=float(((by1-by0)/2+3)/original.height),
            label=label, operation=mode,
        ))
        change_masks.append(changed_pixels)
    if errors:
        raise ValueError("Feature is not visibly changed: " + "; ".join(errors))
    edited = Image.fromarray(result)
    final_changes = np.any(np.array(original.convert("RGB")) != result, axis=2)
    for index, mask in enumerate(change_masks):
        independent = mask & final_changes
        for other_index, other in enumerate(change_masks):
            if other_index != index:
                independent &= ~other
        count = int(np.count_nonzero(independent))
        if count < 40:
            raise ValueError(f"No independent object edit: {spots[index]['label']}")
        spots[index]["independent_pixels"] = count
    if ImageChops.difference(original.convert("RGB"), edited).getbbox() is None:
        raise ValueError("Picture B is unchanged")
    return edited, spots


# Original catalog IDs are stable even when the playable order changes.
SCENE_EDITS = {
    1: [
        ("gold", "Lamp bulb color", (135, 130, 245, 250)),
        ("purple", "Shirt color", (345, 330, 820, 735)),
        ("remove", "Flower at the left of the pot", (45, 445, 130, 585)),
        ("green", "Rug color", (60, 780, 910, 990)),
        ("remove", "Window crossbar", (820, 292, 937, 318)),
    ],
    2: [
        ("remove", "Sun", (350, 15, 485, 235)),
        ("blue", "Blue bird feathers", (210, 550, 405, 930)),
        ("red", "Windmill roof", (805, 70, 965, 325)),
        ("remove", "Flower beside the eagle", (800, 795, 870, 955)),
        ("gold", "Fox tail", (545, 705, 640, 915)),
    ],
    3: [
        ("blue", "Upper diving suit", (635, 245, 712, 255, 764, 250, 800, 220,
                                       850, 240, 810, 300, 820, 350, 875, 390,
                                       850, 435, 765, 385, 710, 370, 630, 305)),
        ("gold", "Lower diver hair", (240, 280, 475, 400)),
        ("red", "Starfish color", (480, 520, 720, 745)),
        ("remove", "Small fish at the left", (15, 425, 175, 530)),
        ("remove", "Seashell on the sand", (845, 785, 990, 895)),
    ],
    4: [
        ("pale", "Orca eye patch", (570, 155, 750, 275)),
        ("purple", "Anemone pot", (810, 825, 995, 980)),
        ("remove", "Top bubble", (910, 0, 980, 55)),
        ("gold", "Left coral", (95, 610, 285, 805)),
        ("remove", "Mark on the left rock", (38, 655, 95, 710)),
    ],
    5: [
        ("remove", "Sun", (755, 10, 925, 120)),
        ("gold", "Butterfly wings", (210, 125, 455, 315)),
        ("pale", "Fox tail tip", (700, 380, 945, 565)),
        ("remove", "Lower left flower", (30, 855, 130, 960)),
        ("red", "Flower beside the tail", (835, 770, 970, 875)),
    ],
    6: [
        ("remove", "Fish at upper left", (95, 70, 270, 160)),
        ("red", "Propeller color", (110, 415, 195, 685)),
        ("blue", "Middle porthole glass", (560, 500, 655, 620)),
        ("remove", "Small square on the cabin", (630, 305, 695, 365)),
        ("gold", "Lower right fish", (745, 795, 900, 875)),
    ],
    7: [
        ("red", "Turkey head", (80, 90, 365, 565)),
        ("gold", "Turkey body", (260, 440, 640, 805)),
        ("remove", "One toe", (285, 855, 330, 905)),
        ("mirror", "Wing feather direction", (435, 460, 625, 635)),
        ("gold", "Beak color", (65, 195, 155, 285)),
    ],
    101: [
        ("remove", "Bird in the open sky", (815, 8, 900, 85)),
        ("gold", "Giraffe coat", (610, 120, 720, 415)),
        ("remove", "Water lily at lower right", (605, 885, 675, 945)),
        ("pale", "Zebra flank markings", (795, 305, 925, 435)),
        ("gold", "Lion mane", (150, 440, 345, 650)),
    ],
    102: [
        ("remove", "Flying bird", (535, 125, 610, 200)),
        ("remove", "Butterfly near the giraffe", (815, 365, 905, 480)),
        ("gold", "Turtle shell", (630, 660, 840, 855)),
        ("purple", "Flower at lower right", (865, 720, 995, 885)),
        ("gold", "Monkey body", (260, 75, 490, 285)),
    ],
    103: [
        ("purple", "Flowers at upper right", (750, 50, 885, 280)),
        ("remove", "Daisy to the left of the puppy", (170, 335, 225, 390)),
        ("remove", "Small stone by the right paw", (705, 830, 790, 905)),
        ("purple", "Flower at lower right", (865, 810, 995, 980)),
        ("red", "Puppy tongue", (480, 295, 560, 370)),
    ],
    104: [
        ("remove", "Fish in upper open water", (275, 45, 390, 115)),
        ("red", "Starfish color", (175, 760, 390, 935)),
        ("purple", "Coral at upper left", (15, 15, 255, 295)),
        ("remove", "Fish below right flipper", (660, 580, 765, 645)),
        ("gold", "Turtle shell markings", (250, 245, 640, 435)),
    ],
    105: [
        ("red", "Clownfish color", (780, 235, 980, 395)),
        ("red", "Octopus body", (600, 450, 820, 690)),
        ("remove", "Small fish beside the shell", (325, 795, 405, 860)),
        ("remove", "Small starfish on the sand", (450, 845, 535, 925)),
        ("blue", "Shell at lower right", (730, 865, 880, 965)),
    ],
    106: [
        ("remove", "Bird in the sky", (625, 5, 725, 115)),
        ("gold", "Lion mane", (390, 515, 585, 770)),
        ("pale", "Zebra stripes", (820, 255, 990, 400)),
        ("remove", "Small fish in the water", (355, 845, 410, 925)),
        ("green", "Crocodile body", (425, 725, 715, 920)),
    ],
    107: [
        ("gold", "Giraffe coat", (335, 55, 625, 665)),
        ("remove", "Small cloud", (470, 195, 590, 290)),
        ("green", "Turtle shell", (695, 660, 965, 940)),
        ("remove", "Stone beneath the giraffe", (360, 770, 565, 910)),
        ("gold", "Lion mane", (55, 410, 295, 705)),
    ],
    108: [
        ("red", "Puppy tongue", (515, 640, 875, 845)),
        ("remove", "Left canine tooth", (455, 590, 500, 680)),
        ("dark", "Left eye color", (340, 275, 505, 410)),
        ("dark", "Right eye color", (735, 235, 855, 365)),
        ("dark", "Nose color", (490, 400, 705, 540)),
    ],
    109: [
        ("gold", "Turtle shell plates", (435, 410, 875, 730)),
        ("remove", "Bubble at lower left", (25, 805, 120, 895)),
        ("pale", "Raised hand claws", (655, 240, 845, 330)),
        ("remove", "Fish near bottom edge", (795, 920, 855, 985)),
        ("blue", "Turtle iris", (240, 185, 345, 290)),
    ],
    110: [
        ("remove", "Fish near upper left", (135, 15, 235, 95)),
        ("green", "Diver goggles", (175, 340, 410, 515)),
        ("gold", "Diver flipper", (55, 570, 155, 770)),
        ("remove", "Fish at lower left", (20, 795, 135, 875)),
        ("gold", "Fish under the dolphin", (705, 715, 815, 815)),
    ],
    111: [
        ("gold", "Tail fin color", (130, 450, 355, 665)),
        ("blue", "Large iris", (550, 365, 660, 500)),
        ("remove", "Bubble above the tail", (40, 190, 115, 270)),
        ("remove", "Bubble at upper right", (890, 185, 975, 285)),
        ("purple", "Coral at lower right", (875, 775, 995, 995)),
    ],
    112: [
        ("red", "Octopus head", (280, 65, 610, 420)),
        ("blue", "Diver goggles", (50, 95, 190, 185)),
        ("remove", "Small fish at top right", (780, 100, 860, 180)),
        ("remove", "Small fish beside the tentacle", (795, 655, 850, 710)),
        ("red", "Right tube coral", (650, 735, 805, 995)),
    ],
    113: [
        ("gold", "Dinosaur back spikes", (400, 590, 810, 845)),
        ("remove", "Small cloud beside the dinosaur", (640, 425, 800, 555)),
        ("pale", "Distant volcano", (20, 570, 245, 800)),
        ("pale", "Dinosaur eye white", (285, 245, 375, 370)),
        ("red", "Dinosaur tongue", (345, 455, 460, 555)),
    ],
    114: [
        ("gold", "Giraffe coat", (10, 175, 350, 555)),
        ("remove", "Cloud at center", (445, 300, 915, 495)),
        ("purple", "Elephant ear", (675, 560, 850, 740)),
        ("blue", "Lion iris", (485, 755, 570, 845)),
        ("red", "Parrot beak", (15, 855, 180, 945)),
    ],
    115: [
        ("gold", "Top left flower petals", (50, 15, 455, 415)),
        ("purple", "Pink flower petals", (490, 30, 990, 485)),
        ("blue", "Bottom flower petals", (85, 450, 615, 985)),
        ("green", "Right leaf", (655, 680, 995, 980)),
        ("remove", "Small flower at upper right", (875, 0, 995, 100)),
    ],
    116: [
        ("remove", "Butterfly in the sky", (700, 70, 820, 205)),
        ("blue", "Kitten collar", (395, 490, 620, 550)),
        ("red", "Cottage roof", (765, 225, 995, 410)),
        ("remove", "Tag on the collar", (535, 535, 585, 600)),
        ("green", "Kitten right iris", (570, 285, 655, 375)),
    ],
    117: [
        ("gold", "Large fish yellow stripe", (245, 465, 385, 645)),
        ("remove", "Fish at right edge", (835, 635, 995, 715)),
        ("remove", "Small fish above the anchor", (770, 610, 885, 700)),
        ("red", "Clownfish stripes", (345, 840, 505, 985)),
        ("blue", "Anchor color", (575, 675, 860, 980)),
    ],
    118: [
        ("red", "Princess dress", (165, 425, 835, 985)),
        ("blue", "Bird above the princess", (650, 5, 880, 180)),
        ("remove", "Round detail on the left railing", (55, 690, 125, 760)),
        ("gold", "Crown", (380, 35, 560, 185)),
        ("remove", "Pendant", (530, 490, 580, 550)),
    ],
    119: [
        ("remove", "Small cloud left of the sun", (445, 80, 695, 275)),
        ("red", "Car bonnet", (195, 690, 570, 945)),
        ("gold", "Right headlight", (445, 820, 595, 995)),
        ("blue", "Car right iris", (495, 585, 570, 735)),
        ("remove", "Front badge", (255, 825, 320, 920)),
    ],
    120: [
        ("remove", "Bird on branch", (110, 80, 180, 215)),
        ("red", "Collar", (385, 745, 675, 880)),
        ("red", "Kennel roof", (750, 445, 995, 675)),
        ("gold", "Collar tag", (520, 860, 645, 965)),
        ("remove", "Cloud at upper left", (55, 220, 160, 340)),
    ],
    121: [
        ("purple", "Planet at upper left", (5, 20, 295, 420)),
        ("red", "Rocket nose", (645, 365, 820, 595)),
        ("remove", "Shooting star", (515, 5, 655, 120)),
        ("remove", "Small star beside the moon", (595, 195, 650, 260)),
        ("gold", "Rocket emblem", (615, 570, 705, 705)),
    ],
    122: [
        ("purple", "Mushroom roof", (100, 185, 455, 420)),
        ("remove", "Butterfly over the stream", (680, 400, 770, 505)),
        ("purple", "Book cover", (215, 645, 475, 825)),
        ("remove", "Orange flower at bottom center", (365, 790, 480, 885)),
        ("gold", "Owl plumage", (750, 140, 875, 300)),
    ],
    123: [
        ("green", "Upper left ribbon segment", (10, 185, 285, 600)),
        ("red", "Upper right ribbon segment", (445, 185, 820, 520)),
        ("purple", "Right ribbon segment", (740, 200, 995, 660)),
        ("remove", "Circuit endpoint at upper left", (225, 15, 270, 55)),
        ("remove", "Circuit endpoint at lower right", (790, 855, 840, 905)),
    ],
    124: [
        ("remove", "Upper attic window", (390, 230, 475, 400)),
        ("blue", "Front door glass", (590, 580, 680, 735)),
        ("red", "Porch roof", (460, 380, 835, 570)),
        ("remove", "Small right wall window", (890, 580, 965, 715)),
        ("purple", "Flowers left of the path", (250, 760, 445, 940)),
    ],
    125: [
        ("red", "Main roof tiles", (380, 5, 740, 430)),
        ("blue", "Upper left window", (325, 105, 435, 255)),
        ("remove", "Porch lantern", (680, 470, 735, 565)),
        ("remove", "Small pot beside the door", (265, 745, 325, 860)),
        ("green", "Right round topiary", (615, 615, 775, 780)),
    ],
    126: [
        ("gold", "Thatched roof", (0, 460, 60, 340, 120, 230, 200, 140,
                                   280, 50, 560, 0, 660, 20, 750, 80, 805, 130,
                                   1000, 130, 1000, 400, 920, 440, 790, 465,
                                   705, 450, 650, 390, 600, 340, 530, 360,
                                   450, 430, 350, 450)),
        ("green", "Front door", (535, 470, 640, 775)),
        ("remove", "Barrel beside the door", (650, 615, 775, 810)),
        ("remove", "Duck on the right", (255, 805, 395, 965)),
        ("blue", "Upper dormer window", (600, 155, 710, 315)),
    ],
    127: [
        ("red", "Left roof tiles", (25, 10, 305, 325)),
        ("remove", "Upper middle window", (460, 280, 510, 400)),
        ("gold", "Front door", (470, 465, 555, 645)),
        ("remove", "Small plant beside the path", (455, 745, 490, 805)),
        ("green", "Topiary beside porch", (625, 470, 710, 675)),
    ],
    128: [
        ("gold", "Treehouse left facade", (210, 125, 500, 480)),
        ("remove", "Upper left window", (285, 170, 350, 315)),
        ("red", "Chimney bricks", (655, 25, 760, 330)),
        ("blue", "Right middle window", (520, 405, 610, 545)),
        ("remove", "Hanging basket below balcony", (35, 760, 100, 870)),
    ],
    129: [
        ("purple", "Mansion roof", (250, 30, 935, 305)),
        ("remove", "Attic window at center", (535, 165, 620, 260)),
        ("red", "Front door", (590, 570, 685, 740)),
        ("gold", "Swing seat", (65, 775, 160, 845)),
        ("remove", "Flower near foreground path", (760, 890, 805, 950)),
    ],
    151: [
        ("bird", "Bird above the rooftops", (800, 70, 950, 135)),
        ("blue", "Upper musician scarf", (425, 195, 510, 285)),
        ("remove", "Small lit window on left house", (60, 500, 125, 550)),
        ("blue", "Lower musician clothing", (570, 590, 785, 760)),
        ("remove", "Small roof ornament at right", (815, 365, 875, 435)),
    ],
    152: [
        ("red", "Nearest boat gunwale", (550, 735, 995, 990)),
        ("bird", "Bird above the lake", (580, 365, 670, 435)),
        ("remove", "Boat on the far left", (195, 470, 440, 605)),
        ("red", "Mooring rope on pier", (30, 725, 300, 785)),
        ("bird", "Bird near the mountains", (790, 210, 880, 280)),
    ],
    153: [
        ("red", "Snowman scarf", (190, 750, 275, 885)),
        ("gold", "Man's jacket", (540, 480, 670, 765)),
        ("remove", "Moon above arch", (355, 10, 415, 100)),
        ("remove", "Star over the arch", (460, 55, 550, 155)),
        ("blue", "Gift at lower left", (90, 825, 190, 955)),
    ],
    154: [
        ("gold", "Left gable flower", (205, 105, 425, 275)),
        ("blue", "Right shutters", (625, 485, 910, 825)),
        ("remove", "Right small flower emblem", (745, 505, 790, 605)),
        ("remove", "Lower left red flower", (80, 855, 145, 920)),
        ("gold", "Wall beneath left window", (175, 795, 425, 885)),
    ],
    155: [
        ("purple", "Top left blossom", (0, 0, 270, 155)),
        ("purple", "Flower at right", (780, 85, 995, 405)),
        ("red", "Kitten nose", (465, 550, 650, 695)),
        ("remove", "Whisker on lower left", (105, 665, 370, 690)),
        ("gold", "Basket rim", (5, 885, 995, 955)),
    ],
    156: [
        ("blue", "Center cake pop icing", (270, 235, 815, 665)),
        ("green", "Upper left cake pop", (0, 210, 335, 565)),
        ("purple", "Upper right cake pop", (585, 0, 990, 325)),
        ("remove", "Candy on top cake pop", (295, 85, 365, 155)),
        ("remove", "Sprinkle on bottom cake pop", (585, 775, 645, 810)),
    ],
    157: [
        ("red", "Lighthouse dome", (45, 0, 270, 105)),
        ("red", "House roof", (290, 420, 990, 700)),
        ("remove", "Right chimney", (735, 320, 820, 455)),
        ("remove", "Lower right window", (725, 765, 825, 915)),
        ("blue", "Upper lantern balcony", (0, 180, 340, 345)),
    ],
    158: [
        ("bird", "Bird above the horizon", (615, 300, 750, 360)),
        ("remove", "Boat at right", (565, 610, 995, 705)),
        ("green", "Foliage at upper left", (5, 65, 460, 305)),
        ("remove", "Small branch above the water", (385, 520, 490, 555)),
        ("bird", "Bird skimming the lake", (500, 835, 635, 905)),
    ],
    159: [
        ("remove", "Sun", (520, 30, 630, 105)),
        ("red", "Clownfish at upper left", (30, 260, 205, 370)),
        ("remove", "Fish near lower right", (700, 790, 780, 835)),
        ("gold", "Striped fish near lower left", (245, 820, 410, 945)),
        ("purple", "Coral at lower right", (760, 690, 995, 995)),
    ],
    160: [
        ("blue", "Left eye light", (355, 385, 465, 520)),
        ("blue", "Right eye light", (550, 380, 665, 505)),
        ("red", "Left shoulder armor", (20, 405, 300, 810)),
        ("remove", "Damage on right shoulder", (755, 255, 880, 420)),
        ("gold", "Chin plate", (440, 745, 625, 905)),
    ],
    161: [
        ("green", "Palm light", (730, 220, 790, 335)),
        ("blue", "Chest light", (425, 575, 475, 690)),
        ("red", "Raised forearm armor", (600, 365, 745, 525)),
        ("red", "Left shoulder plate", (375, 485, 450, 585)),
        ("mirror", "Waist armor pattern", (480, 825, 605, 970)),
    ],
    162: [
        ("gold", "Upper left blossom", (85, 5, 370, 280)),
        ("red", "Upper right flower center", (605, 140, 750, 365)),
        ("gold", "Left foreground petal", (280, 340, 490, 760)),
        ("green", "Right foreground petal", (605, 425, 830, 795)),
        ("remove", "Bright petal tip at bottom left", (110, 880, 250, 995)),
    ],
    163: [
        ("gold", "Upper boardwalk", (485, 100, 535, 345)),
        ("gold", "Lower boardwalk", (455, 455, 555, 995)),
        ("remove", "Isolated shrub in water", (595, 650, 650, 745)),
        ("remove", "Isolated shrub near lower right", (765, 825, 815, 910)),
        ("green", "Tree crown at upper right", (795, 70, 905, 275)),
    ],
    164: [
        ("green", "Left palm crown", (0, 10, 145, 245)),
        ("green", "Right palm crown", (720, 20, 920, 285)),
        ("remove", "Small cloud in reflection", (440, 815, 565, 920)),
        ("remove", "Small bird near horizon", (585, 345, 620, 385)),
        ("gold", "Palm frond at center", (410, 15, 510, 200)),
    ],
    165: [
        ("dark", "Hat band", (385, 180, 625, 260)),
        ("gray", "Left cheek highlight", (430, 445, 490, 560)),
        ("gray", "Right cheek highlight", (535, 445, 595, 560)),
        ("mirror", "Chin decoration", (475, 560, 560, 680)),
        ("dark", "Left shoulder fold", (205, 635, 380, 790)),
    ],
    166: [
        ("bird", "Bird in the evening sky", (740, 190, 840, 270)),
        ("red", "Tail color", (570, 525, 657, 414, 664, 536, 590, 612,
                               613, 656, 587, 682, 587, 695, 577, 680,
                               603, 656, 569, 614, 595, 575)),
        ("remove", "Flower at lower left", (65, 795, 115, 865)),
        ("remove", "Flower at lower right", (840, 895, 890, 960)),
        ("blue", "Flower at far left", (5, 655, 85, 770)),
    ],
    167: [
        ("red", "Trainer cap", (375, 165, 555, 395)),
        ("red", "Dragon snout", (165, 175, 315, 445)),
        ("remove", "Spark at upper left", (130, 70, 205, 155)),
        ("blue", "Trainer waist clothing", (380, 780, 565, 995)),
        ("mirror", "Held ball emblem", (530, 50, 615, 190)),
    ],
    168: [
        ("red", "Mask crest", (160, 0, 800, 220)),
        ("green", "Forehead emblem", (380, 200, 725, 535)),
        ("green", "Left eye", (130, 535, 345, 615)),
        ("gold", "Right cheek border", (755, 715, 925, 935)),
        ("mirror", "Center jewel pattern", (465, 435, 570, 510)),
    ],
    169: [
        ("red", "Upper brushstroke", (460, 0, 835, 205)),
        ("gold", "Shoulder tattoo color", (610, 470, 785, 630)),
        ("dark", "Chest emblem color", (400, 570, 590, 865)),
        ("mirror", "Shoulder strap seam", (575, 465, 640, 550)),
        ("red", "Lower brushstroke", (690, 730, 835, 955)),
    ],
    170: [
        ("red", "Cap color", (260, 0, 400, 175)),
        ("red", "Shirt sleeve color", (430, 435, 475, 465, 530, 575, 560, 725,
                                      575, 905, 520, 920, 475, 820, 460, 690, 450, 570)),
        ("gold", "Name lettering color", (665, 190, 990, 715)),
        ("mirror", "Cap badge orientation", (304, 24, 370, 103)),
        ("mirror", "Shirt illustration faces the other way", (190, 555, 445, 990)),
    ],
    171: [
        ("mirror", "Wall clock face", (165, 100, 275, 240)),
        ("green", "Left hanging lamp", (265, 0, 410, 125)),
        ("blue", "Cup on the counter", (440, 475, 540, 585)),
        ("remove", "Blue matchbox on counter", (740, 575, 860, 630)),
        ("red", "Checked tablecloth", (0, 695, 235, 955)),
    ],
    172: [
        ("remove", "Birdhouse", (590, 70, 700, 245)),
        ("purple", "Left flower cluster", (100, 345, 320, 505)),
        ("red", "Pot at front left", (125, 605, 250, 745)),
        ("green", "Garden gloves", (630, 640, 800, 745)),
        ("remove", "Small tool on workbench", (300, 655, 365, 725)),
    ],
    173: [
        ("remove", "Seagull in the sky", (495, 35, 645, 155)),
        ("red", "Lighthouse dome", (760, 40, 840, 120)),
        ("gold", "Left boat fender", (120, 640, 205, 740)),
        ("blue", "Bucket on the jetty", (550, 865, 720, 995)),
        ("remove", "Small sailboat at left", (35, 320, 145, 470)),
    ],
    174: [
        ("remove", "Crescent moon", (290, 55, 350, 130)),
        ("red", "Stool cushion", (120, 770, 375, 920)),
        ("blue", "Mug on desk", (815, 615, 940, 755)),
        ("gold", "Saturn model", (590, 110, 675, 180)),
        ("remove", "Hanging model star", (675, 160, 730, 215)),
    ],
    175: [
        ("remove", "Yellow star on toy shelf", (735, 80, 785, 135)),
        ("blue", "Toy sailboat hull", (640, 425, 865, 485)),
        ("green", "Hanging lamp shade", (320, 15, 485, 130)),
        ("blue", "Blue train carriage", (440, 640, 560, 750)),
        ("remove", "Tiny block on workbench", (595, 580, 650, 625)),
    ],
    176: [
        ("blue", "Bird on branch", (70, 65, 220, 205)),
        ("gold", "Tent flap", (270, 335, 420, 605)),
        ("red", "Camping lantern", (130, 555, 225, 710)),
        ("remove", "Mug on stump", (695, 755, 770, 825)),
        ("remove", "Squirrel on tree", (805, 80, 905, 235)),
    ],
    177: [
        ("remove", "Metronome on the piano", (730, 275, 795, 400)),
        ("blue", "Flower vase", (240, 345, 325, 435)),
        ("gold", "Trumpet", (605, 570, 780, 845)),
        ("blue", "Piano stool cushion", (285, 600, 570, 720)),
        ("mirror", "Left framed musical symbol", (5, 65, 85, 300)),
    ],
    178: [
        ("remove", "Seagull", (75, 75, 170, 140)),
        ("red", "Right stool seat", (565, 770, 775, 850)),
        ("blue", "Left stool seat", (155, 820, 335, 900)),
        ("remove", "Bell on counter", (725, 510, 800, 580)),
        ("purple", "Top ice cream scoop", (845, 570, 960, 675)),
    ],
    179: [
        ("remove", "Cup on side table", (535, 545, 605, 625)),
        ("gold", "Floor lamp shade", (330, 230, 510, 365)),
        ("green", "Armchair upholstery", (90, 405, 535, 840)),
        ("red", "Blanket on chair back", (145, 400, 345, 590)),
        ("remove", "Small pot on windowsill", (625, 425, 700, 505)),
    ],
    180: [
        ("remove", "Small framed botanical print", (485, 245, 555, 355)),
        ("red", "Pincushion", (485, 390, 580, 475)),
        ("blue", "Top left thread spool", (170, 90, 215, 175)),
        ("gold", "Tape measure on dress form", (355, 245, 435, 725)),
        ("remove", "Spool on sewing table", (885, 425, 940, 500)),
    ],
    181: [
        ("green", "Awning stripes", (0, 0, 840, 210)),
        ("red", "Tomatoes on upper left", (50, 350, 295, 475)),
        ("purple", "Aubergines", (610, 520, 800, 660)),
        ("remove", "Hanging garlic bulb", (45, 205, 120, 285)),
        ("remove", "Apple on right basket rim", (910, 690, 965, 760)),
    ],
    182: [
        ("remove", "Left koi fish", (175, 750, 275, 865)),
        ("red", "Maple leaves at upper left", (20, 40, 345, 325)),
        ("gold", "Bamboo water spout", (50, 485, 225, 605)),
        ("purple", "Water lily", (650, 875, 745, 960)),
        ("remove", "Top stone on lantern", (580, 220, 650, 285)),
    ],
    183: [
        ("remove", "Small picture on wall", (595, 270, 690, 400)),
        ("blue", "Brush jar", (80, 585, 205, 755)),
        ("red", "Red paint tube", (90, 810, 250, 885)),
        ("blue", "Blue paint tube", (275, 815, 410, 890)),
        ("remove", "Small cup on shelf", (870, 440, 925, 495)),
    ],
    184: [
        ("mirror", "Station clock face", (850, 125, 990, 290)),
        ("red", "Train front grille", (100, 635, 335, 780)),
        ("green", "Station bench", (840, 645, 995, 920)),
        ("gold", "Locomotive headlamp rim", (230, 340, 305, 425)),
        ("remove", "Small case beside luggage", (720, 755, 780, 850)),
    ],
    185: [
        ("red", "Cooking pot", (765, 390, 945, 495)),
        ("blue", "Front teacup pattern", (480, 665, 655, 795)),
        ("remove", "Leftmost hanging pan", (280, 190, 360, 340)),
        ("gold", "Lemons in fruit bowl", (65, 650, 240, 740)),
        ("remove", "Drawer knob", (565, 555, 595, 575)),
    ],
    186: [
        ("remove", "Small wall picture", (660, 200, 735, 335)),
        ("red", "Orange vase on top shelf", (330, 85, 425, 215)),
        ("blue", "Large floor bucket", (610, 780, 840, 985)),
        ("red", "Pink vase on middle shelf", (60, 225, 165, 360)),
        ("remove", "Small bowl on lower shelf", (260, 440, 340, 500)),
    ],
    187: [
        ("remove", "Sailboat on the horizon", (690, 275, 750, 360)),
        ("blue", "Water bottle", (430, 525, 515, 715)),
        ("red", "Bucket", (795, 685, 930, 805)),
        ("red", "Beach ball panels", (540, 715, 695, 860)),
        ("remove", "Sunglasses on blanket", (435, 830, 590, 895)),
    ],
    188: [
        ("remove", "Small white pot on left shelf", (125, 550, 205, 665)),
        ("green", "Watering can", (340, 775, 500, 995)),
        ("gold", "Sunflower petals", (310, 260, 515, 425)),
        ("blue", "Tall flower vase at right", (740, 740, 885, 975)),
        ("remove", "Small terracotta pot at bottom left", (10, 800, 125, 935)),
    ],
    189: [
        ("remove", "Small round wall clock", (405, 140, 480, 225)),
        ("green", "Desk lamp", (120, 330, 340, 460)),
        ("blue", "Cloth on workbench", (435, 805, 675, 965)),
        ("remove", "Hourglass on bench", (410, 475, 480, 640)),
        ("gold", "Upper round clock face", (250, 25, 405, 205)),
    ],
    190: [
        ("red", "Large cafe umbrella", (330, 150, 865, 325)),
        ("blue", "Right umbrella", (815, 280, 995, 405)),
        ("gold", "Street lamp light", (80, 65, 160, 190)),
        ("remove", "Cup on cafe table", (570, 565, 610, 620)),
        ("remove", "Small flowerpot on table", (485, 540, 540, 620)),
    ],
    191: [
        ("remove", "Hanging birdhouse", (20, 250, 105, 430)),
        ("purple", "Lavender beside well", (370, 380, 555, 575)),
        ("blue", "Watering can", (720, 730, 870, 930)),
        ("red", "Terracotta herb pot", (545, 630, 660, 770)),
        ("remove", "Stone on path", (620, 825, 690, 860)),
    ],
    192: [
        ("remove", "Apple on back desk", (655, 395, 720, 475)),
        ("blue", "Crayon holder", (100, 610, 260, 745)),
        ("green", "Chair back", (475, 540, 745, 700)),
        ("red", "Crayon beside sketchbook", (300, 700, 455, 745)),
        ("remove", "Small yellow crayon", (465, 665, 575, 710)),
    ],
    193: [
        ("remove", "Toy sailboat on upper shelf", (620, 75, 760, 175)),
        ("gold", "Fish at upper left in center tank", (310, 255, 390, 305)),
        ("green", "Net beside center cabinet", (525, 475, 650, 700)),
        ("red", "Lighthouse stripes", (235, 500, 300, 710)),
        ("remove", "Seashell on front table", (165, 735, 245, 805)),
    ],
}


def category_edits(folder):
    # These are object coordinates in the original technical illustrations.
    common = [
        ("remove", "Left window control", (167, 307, 186, 330)),
        ("gold", "Middle window control", (193, 307, 212, 330)),
        ("green", "Right window control", (220, 307, 239, 330)),
        ("remove", "Bottom window border gap", (280, 647, 330, 653)),
        ("remove", "Top window border gap", (710, 291, 760, 298)),
    ]
    if folder in ("BASH", "Javascript", "Perl", "Powershell", "Python"):
        return common
    edits = {
        "Ansible": [
            ("remove", "Top server indicator", (461, 298, 478, 315)),
            ("remove", "Right server lower tray", (709, 518, 803, 554)),
            ("pale", "Center ring color", (418, 393, 581, 557)),
            ("mirror", "Left server vents", (211, 446, 286, 465)),
            ("remove", "Lower connecting cable", (494, 560, 507, 627)),
        ],
        "Docker": [
            ("remove", "Upper container rib", (348, 335, 355, 398)),
            ("remove", "Lower left container rib", (280, 530, 287, 590)),
            ("pale", "Platform color", (214, 620, 800, 630)),
            ("remove", "Middle container rib", (457, 418, 461, 476)),
            ("remove", "Right container rib", (719, 530, 726, 590)),
        ],
        "Git": [
            ("remove", "Lower left commit", (311, 623, 364, 677)),
            ("gold", "Branch line color", (370, 455, 650, 570)),
            ("purple", "Merge line color", (370, 325, 640, 380)),
            ("pale", "Upper right commit ring", (635, 298, 690, 353)),
            ("remove", "Middle left commit ring", (311, 460, 364, 515)),
        ],
        "Jenkins": [
            ("remove", "First pipeline arrow", (363, 470, 403, 501)),
            ("remove", "Second pipeline arrow", (582, 470, 622, 501)),
            ("pale", "Build label color", (230, 503, 318, 537)),
            ("pale", "Test label color", (450, 503, 533, 537)),
            ("pale", "Deploy label color", (660, 503, 760, 537)),
        ],
        "K8s": [
            ("pale", "Right cube face", (756, 451, 802, 520)),
            ("remove", "Upper left spoke", (381, 356, 430, 410)),
            ("remove", "Lower right spoke", (571, 543, 620, 594)),
            ("pale", "Central ring color", (421, 396, 578, 555)),
            ("pale", "Left cube face", (244, 451, 290, 520)),
        ],
        "Linux": [
            ("remove", "Left pupil", (431, 391, 449, 418)),
            ("gold", "Penguin beak", (462, 435, 538, 477)),
            ("gold", "Right foot", (502, 640, 618, 698)),
            ("pale", "Penguin belly", (400, 440, 600, 635)),
            ("remove", "Right pupil", (551, 391, 569, 418)),
        ],
        "Multicloud": [
            ("blue", "Right cloud", (623, 302, 800, 437)),
            ("purple", "Lower cloud", (411, 470, 590, 610)),
            ("remove", "Left connecting line", (340, 470, 378, 504)),
            ("remove", "Right connecting line", (628, 470, 665, 504)),
            ("pale", "Bottom junction color", (473, 591, 527, 625)),
        ],
        "Networking": [
            ("remove", "Right server lower tray", (709, 518, 803, 554)),
            ("pale", "Center ring", (420, 395, 580, 555)),
            ("remove", "Upper right cable segment", (550, 315, 565, 352)),
            ("mirror", "Upper left server vent", (250, 345, 300, 362)),
            ("remove", "Lower left server indicator", (249, 550, 265, 567)),
        ],
        "Oracle": [
            ("blue", "Cloud color", (398, 260, 603, 410)),
            ("remove", "Lower database stripe at left", (334, 574, 353, 600)),
            ("remove", "Middle database stripe at right", (647, 510, 666, 535)),
            ("remove", "Upper database rim segment", (460, 435, 490, 445)),
            ("remove", "Lower database rim segment", (475, 624, 525, 634)),
        ],
        "Ruby": [
            ("purple", "Gem upper left facet", (331, 375, 406, 494, 250, 494)),
            ("remove", "Left facet line segment", (370, 427, 389, 461)),
            ("remove", "Right facet line segment", (610, 427, 629, 461)),
            ("pale", "Gem horizontal ridge", (270, 490, 731, 498)),
            ("purple", "Gem lower left facet", (250, 494, 406, 494, 500, 681)),
        ],
        "Terraform": [
            ("red", "Upper cube top", (225, 320, 390, 410)),
            ("blue", "Middle cube left face", (415, 460, 500, 585)),
            ("pale", "Lower cube right face", (695, 550, 780, 680)),
            ("remove", "Cable vertical segment", (302, 548, 312, 590)),
            ("remove", "Cable horizontal end", (498, 639, 536, 649)),
        ],
    }
    if folder in ("AWS", "Azure", "GCP", "IBM"):
        # Keep category names and capability labels unchanged.
        color = {"AWS": "red", "Azure": "gold", "GCP": "green", "IBM": "green"}[folder]
        return [
            (color, "Cloud color", (340, 230, 660, 475)),
            ("remove", "Left server bottom tray", (210, 637, 352, 672)),
            ("remove", "Right server middle tray", (648, 600, 791, 633)),
            ("blue", "Middle server top vent", (461, 623, 561, 630)),
            ("remove", "Left connection end", (278, 535, 285, 564)),
        ]
    if folder == "Hybridcloud":
        return [
            ("green", "Cloud color", (548, 287, 801, 480)),
            ("remove", "Left server bottom tray", (205, 562, 322, 598)),
            ("remove", "Right server middle tray", (360, 523, 478, 558)),
            ("pale", "Connecting line", (341, 401, 549, 410)),
            ("blue", "Left server vent", (235, 499, 310, 505)),
        ]
    return edits[folder]

"""Build offline HD picture pairs and their exact five hit regions.

Requires Pillow, numpy and opencv-python-headless. Reference crops are user-supplied; the other scenes are original
vector-style drawings. Run with --import-references once, then without arguments
to reproduce the catalog using the retained crops.
"""

import argparse
import hashlib
import json
import math
from pathlib import Path
import random

import numpy as np
from PIL import Image, ImageChops, ImageDraw

from spot_scene_edits import SCENE_EDITS, category_edits, edit_picture

EXPANSION_TITLES = [
    "Morning at the bakery", "Greenhouse potting bench", "Harbor fishing boat",
    "Attic observatory", "Toy maker's workshop", "Woodland campsite",
    "Afternoon music room", "Seaside ice cream stand", "Library reading nook",
    "Sewing studio", "Fruit market", "Koi courtyard",
    "Artist's atelier", "Mountain railway", "Country kitchen",
    "Pottery workshop", "Beach picnic", "Flower shop",
    "Clockmaker's workshop", "Rainy cafe terrace", "Castle herb garden",
    "Classroom art corner", "Aquarium shop",
]

ROOT = Path(__file__).resolve().parents[1]
SOURCES = ROOT / "tool" / "spot_picture_sources"
OUTPUT = ROOT / "assets" / "spot_difference"
HD_SHORT_EDGE = 1080
GENERATED_ART = [
    ("Safari watering hole", "assets/jigsaw/safari.png"),
    ("Jungle companions", "assets/jigsaw/jungle_friends.png"),
    ("Golden puppy garden", "assets/jigsaw/puppy.png"),
    ("Sea turtle reef", "assets/jigsaw/sea_turtle.png"),
    ("Coral reef friends", "assets/jigsaw/coral_reef.png"),
]
ATTACHMENTS = Path(
    r"C:\Users\Nayan\AppData\Roaming\Code\agentSessionData"
    r"\f13ebc25-0ab4-4cff-9680-6f3dcf4d84d5\attachments"
)
# Crop only the first illustration: no headings, answer panels or borders.
REFERENCES = [
    ("Lamp and flowers", "f36e4d7b-adeb-4042-b88f-52dc16183f38", "diff 4.png",
     (2, 70, 459, 512),
     [(92, 159, "Lamp bulb"), (270, 285, "Shirt"), (98, 377, "Flower pot"),
      (238, 489, "Shoe"), (130, 451, "Rug")]),
    ("Garden friends", "377f3e50-8879-4c3d-bf85-b5d0026aeb10", "diff 5.png",
     (12, 34, 402, 272),
     [(170, 57, "Sun"), (133, 226, "Blue bird"), (306, 202, "Coat"),
      (215, 239, "Fox trousers"), (353, 98, "Windmill")]),
    ("Underwater explorers", "4e5b4558-fd2a-4f83-ad40-4c69e991a147", "diff 6.png",
     (25, 108, 359, 498),
     [(268, 236, "Diving suit"), (250, 158, "Diver hair"),
      (226, 352, "Starfish"), (138, 325, "Lower diving suit"),
      (73, 157, "Pufferfish")]),
    ("Ocean orca", "c822b0ba-f1d4-4566-b584-59157c395311", "diff 7.png",
     (5, 6, 442, 438),
     [(291, 101, "Eye patch"), (170, 179, "Side patch"),
      (390, 402, "Sea anemone pot"), (89, 383, "Small rock"),
      (81, 321, "Coral")]),
    ("Fox in the meadow", "543c6815-2843-41c7-bb52-115e43326fee", "diff 1.png",
     (5, 153, 241, 485),
     [(201, 177, "Sun"), (115, 337, "Fox chest"), (204, 314, "Tail tip"),
      (167, 462, "Flower"), (77, 220, "Butterfly")]),
    ("Yellow submarine", "9d1ae48b-3f56-4da0-98ac-0416528ede6c", "diff 2.png",
     (3, 117, 337, 449),
     [(274, 308, "Submarine panel"), (206, 310, "Middle porthole"),
      (168, 308, "Left porthole"), (236, 177, "Periscope opening"),
      (47, 279, "Propeller")]),
    ("Turkey in the clearing", "0e718860-57fe-4526-a5e9-48167a6e8ae7", "diff 3.png",
     (24, 115, 344, 406),
     [(106, 215, "Head"), (230, 251, "Outer tail feathers"),
      (162, 330, "Body"), (60, 189, "Beak"), (163, 365, "Foot")]),
]

INK = "#263c43"
HABITATS = [
    ("flower meadow", "#a9e3ed", "#82bf65"),
    ("sandy island", "#9bddf1", "#f0d58b"),
    ("snowy hills", "#b8dcee", "#e7f2ef"),
    ("autumn woods", "#f4d0a1", "#c5a167"),
    ("orchard", "#bde3bc", "#90be70"),
    ("moonlit garden", "#344d77", "#547d81"),
    ("mountain lake", "#c3e8f4", "#86bea5"),
    ("farmyard", "#c6e7ef", "#dfc781"),
    ("bamboo grove", "#b6dacc", "#7bb37b"),
    ("rainbow valley", "#d2c8e8", "#9ecba5"),
]
ANIMALS = [
    ("fox", "#dd813f"), ("rabbit", "#dfd6ce"), ("bear", "#b98757"),
    ("turtle", "#8daf60"), ("owl", "#ba9171"), ("penguin", "#475d70"),
    ("cat", "#e9ae62"), ("dog", "#cba16f"), ("elephant", "#9eafbf"),
    ("raccoon", "#879aa4"),
]


def ellipse(d, box, fill, width=3):
    d.ellipse(box, fill=fill, outline=INK, width=width)


def polygon(d, points, fill, width=3):
    d.polygon(points, fill=fill, outline=INK, width=width)


def star(d, x, y, r, color, points=5):
    vertices = []
    for i in range(points * 2):
        angle = -math.pi / 2 + i * math.pi / points
        radius = r if i % 2 == 0 else r * 0.45
        vertices.append((x + math.cos(angle) * radius, y + math.sin(angle) * radius))
    polygon(d, vertices, color, 2)


def animal(d, name, color, cx, cy, scale):
    def b(x1, y1, x2, y2):
        return (cx + x1 * scale, cy + y1 * scale, cx + x2 * scale, cy + y2 * scale)
    if name == "fox":
        polygon(d, [(cx+40*scale,cy+100*scale),(cx+120*scale,cy+20*scale),
                    (cx+105*scale,cy+120*scale)], color)
    elif name in ("cat", "dog", "raccoon"):
        d.arc(b(35, 40, 130, 130), 260, 100, fill=color, width=max(4, int(19*scale)))
    ellipse(d, b(-57, 0, 57, 125), color)
    ellipse(d, b(-65, 99, -5, 129), color)
    ellipse(d, b(5, 99, 65, 129), color)
    if name in ("rabbit", "bear", "dog", "elephant"):
        ear = (-66, -105, -25, -5) if name == "rabbit" else (-85, -55, -34, 20)
        ellipse(d, b(*ear), color)
        ellipse(d, b(-ear[2], ear[1], -ear[0], ear[3]), color)
    elif name in ("fox", "cat", "owl", "raccoon"):
        for side in (-1, 1):
            polygon(d, [(cx+side*58*scale,cy-65*scale),
                        (cx+side*65*scale,cy+6*scale),
                        (cx+side*12*scale,cy-20*scale)], color)
    ellipse(d, b(-65, -46, 65, 47), color)
    if name == "turtle":
        ellipse(d, b(-45, 28, 45, 110), "#477955")
        for y in (45, 70, 95):
            d.line(b(-28,y,28,y), fill="#a5cb73", width=4)
    elif name in ("penguin", "owl", "bear"):
        ellipse(d, b(-35, 40, 35, 103), "#f6e5bb", 2)
    for side in (-1, 1):
        x = side * 24
        if name == "raccoon":
            ellipse(d, b(x-19,-20,x+19,14), "#394858", 1)
        ellipse(d, b(x-12, -15, x+12, 10), "#fffef3", 2)
        ellipse(d, b(x-4,-9,x+5,4), INK, 1)
        d.ellipse(b(x-3,-8,x+1,-4), fill="white")
    if name == "elephant":
        d.line([(cx,cy+18*scale),(cx+8*scale,cy+65*scale),
                (cx+25*scale,cy+66*scale)], fill=INK, width=max(3,int(22*scale)))
        d.line([(cx,cy+18*scale),(cx+8*scale,cy+65*scale),
                (cx+25*scale,cy+66*scale)], fill=color, width=max(2,int(16*scale)))
    elif name in ("owl", "penguin"):
        polygon(d, [(cx-10*scale,cy+13*scale),(cx+10*scale,cy+13*scale),
                    (cx,cy+30*scale)], "#efb553")
    else:
        ellipse(d, b(-10,14,10,26), "#51423b", 1)
        d.arc(b(-16,20,16,36), 0, 180, fill=INK, width=2)


def backdrop(index):
    species, color = ANIMALS[index % 10]
    place, sky, ground = HABITATS[index // 10]
    rng = random.Random(1709 + index)
    image = Image.new("RGB", (640, 480), sky)
    d = ImageDraw.Draw(image)
    # Habitat geometry changes with both species and setting, not just color.
    for i in range(3):
        x = i * 240 - 130 + rng.randrange(-30, 30)
        d.ellipse((x, 235+rng.randrange(-40,20), x+370, 610), fill=ground)
    if index // 10 in (1, 6):
        d.ellipse((-60, 285, 710, 580), fill="#64becb", outline=INK, width=3)
        d.ellipse((-80, 340, 450, 600), fill=ground)
    if index // 10 in (2, 6):
        for x in (100, 330, 530):
            polygon(d, [(x-100,300),(x,110+rng.randrange(50)),(x+110,300)], "#87aeb2")
            polygon(d, [(x-25,170),(x,125),(x+40,185)], "#f4fcf6")
    for j in range(3):
        x = (35 + j*250 + rng.randrange(35)) % 620
        if index // 10 == 8:
            for dx in (0, 15, 30):
                d.line((x+dx,120,x+dx,360),fill="#426b4c",width=9)
                for y in (160,210,260):
                    d.line((x+dx-5,y,x+dx+5,y),fill="#b1d08c",width=3)
        else:
            d.rounded_rectangle((x,205,x+16,355),radius=4,fill="#956d4a",outline=INK,width=2)
            ellipse(d, (x-42,150,x+58,255),
                    ["#6eaa63","#dea457","#86ac8a"][index % 3])
            if index // 10 == 4:
                for dx,dy in ((-15,185),(20,203),(0,230)):
                    ellipse(d,(x+dx,dy,x+dx+12,dy+12),"#de6a59",1)
    if index // 10 == 7:
        polygon(d,[(430,320),(430,240),(495,190),(560,240),(560,320)],"#ce795d")
        d.rectangle((480,270,510,320),fill="#f3d9a1",outline=INK,width=3)
    if index // 10 == 9:
        for i,c in enumerate(["#df7e83","#e5ba6b","#8bbd87","#77a4ca"]):
            d.arc((100+i*9,45+i*9,570-i*9,410-i*9),180,350,fill=c,width=10)
    for _ in range(20):
        x,y = rng.randrange(640),rng.randrange(360,480)
        d.line((x-4,y,x,y-9,x+4,y),fill="#568b62",width=2)
    cx = 288 + rng.randrange(-25,26)
    cy = 254 + rng.randrange(-12,13)
    animal(d,species,color,cx,cy,1.05)
    # A companion, different size and location in every composition.
    companion = ANIMALS[(index % 10 + index // 10 + 3) % 10]
    animal(d,*companion,500 + rng.randrange(-20,21),355,0.44)
    return image, f"{species.title()} in the {place}", rng


def ornament(image, box, kind, variant):
    d = ImageDraw.Draw(image)
    x,y,w,h = box
    c = (x+w/2,y+h/2)
    if kind == 0:
        ellipse(d,(x+10,y+8,x+w-10,y+h-8),"#f3c55d" if not variant else "#e78c78")
        for dx in (-9,9):
            d.ellipse((c[0]+dx-2,c[1]-3,c[0]+dx+2,c[1]+1),fill=INK)
    elif kind == 1:
        d.line((x+w/2,y+5,x+w/2,y+h-5),fill=INK,width=3)
        polygon(d,[(x+w/2,y+6),(x+w-5,y+17),(x+w/2,y+30)],
                "#e78674" if not variant else "#80b5e3")
    elif kind == 2:
        d.line((c[0],y+23,c[0],y+h-4),fill="#39714c",width=4)
        count = 5 if not variant else 3
        for i in range(count):
            a = 2*math.pi*i/count
            px,py = c[0]+13*math.cos(a),y+23+13*math.sin(a)
            ellipse(d,(px-8,py-8,px+8,py+8),"#e98cab",2)
        ellipse(d,(c[0]-7,y+16,c[0]+7,y+30),"#f1ce6b",2)
    elif kind == 3:
        d.rounded_rectangle((x+8,y+13,x+w-8,y+h-9),radius=7,
                            fill="#deab67",outline=INK,width=3)
        d.arc((x+15,y+1,x+w-15,y+30),180,360,fill=INK,width=4)
        if not variant:
            star(d,*c,12,"#f8e394")
        else:
            ellipse(d,(c[0]-10,c[1]-10,c[0]+10,c[1]+10),"#e88670",2)
    else:
        for side in (-1,1):
            cx = c[0]+side*15
            ellipse(d,(cx-14,y+6,cx+14,y+33),"#cf9cd8",2)
            ellipse(d,(cx-11,y+28,cx+11,y+50),"#eab3b1",2)
            if not variant or side == -1:
                ellipse(d,(cx-5,y+14,cx+5,y+24),"#f9e3a8",1)
        d.line((c[0],y+12,c[0],y+46),fill=INK,width=4)
        d.line((c[0]-8,y+3,c[0],y+15,c[0]+8,y+3),fill=INK,width=2)


def generated_pair(index):
    base,title,rng = backdrop(index)
    a,b = base.copy(),base.copy()
    boxes = [(40+rng.randrange(55),35,76,66),
             (475+rng.randrange(50),40,70,68),
             (35+rng.randrange(25),370,66,78),
             (200+rng.randrange(40),400,70,66),
             (530+rng.randrange(15),398,76,64)]
    labels = ["Sun color","Pennant color","Flower petals","Basket emblem","Butterfly wing mark"]
    spots = []
    for kind,box in enumerate(boxes):
        ornament(a,box,kind,False)
        ornament(b,box,kind,True)
        x,y,w,h = box
        spots.append(dict(x=(x+w/2)/640,y=(y+h/2)/480,
                          rx=(w/2+5)/640,ry=(h/2+5)/480,label=labels[kind]))
    return a,b,title,spots


def reference_pair(index, import_references):
    title,folder,filename,crop,edits = REFERENCES[index]
    path = SOURCES / f"reference_{index+1:02}.png"
    if import_references:
        with Image.open(ATTACHMENTS / folder / filename) as original:
            original.convert("RGB").crop(crop).save(path)
    a = Image.open(path).convert("RGB")
    a = to_hd(a)
    b, spots = edit_picture(a, SCENE_EDITS[index+1])
    return a,b,title,spots


def to_hd(image):
    scale = max(1, HD_SHORT_EDGE / min(image.size))
    if scale == 1:
        return image.copy()
    return image.resize(
        (round(image.width * scale), round(image.height * scale)),
        Image.Resampling.LANCZOS,
    )


def shared_pair(path, title, edits):
    """Edit named objects while preserving Picture A and all other pixels."""
    with Image.open(path) as source:
        a = to_hd(source.convert("RGB"))
    b, spots = edit_picture(a, edits)
    return a, b, title, spots


def write_catalog(entries):
    target = ROOT / "lib" / "data" / "spot_picture_catalog.dart"
    header = """// Generated by tool/generate_spot_pictures.py. Do not edit by hand.
typedef PictureSpotData = ({double x, double y, double rx, double ry, String label});
typedef PictureLevelData = ({
  String title, String leftAsset, String rightAsset,
  double aspectRatio, bool isProcedural, bool hasJigsawLines, List<PictureSpotData> spots,
});

const List<PictureLevelData> spotPictureCatalog = [
"""
    lines = [header]
    for index, e in enumerate(entries):
        if index == 170:
            lines.append("];\n\nconst List<PictureLevelData> spotExpansionCatalog = [\n")
        elif index == 193:
            lines.append("];\n\nconst List<PictureLevelData> naturePictureCatalog = [\n")
        lines.append("  (\n")
        for key in ("title","leftAsset","rightAsset"):
            lines.append(f"    {key}: {json.dumps(e[key])},\n")
        procedural = e["provenance"].startswith("Original procedural illustration")
        lines.append(f"    isProcedural: {str(procedural).lower()},\n")
        lines.append(f"    hasJigsawLines: {str(e.get('hasJigsawLines', False)).lower()},\n")
        lines.append(f"    aspectRatio: {e['width']/e['height']:.9f},\n    spots: [\n")
        for s in e["spots"]:
            fields = ", ".join(f"{key}: {s[key]:.9f}" for key in ("x","y","rx","ry"))
            lines.append(f"      ({fields}, label: {json.dumps(s['label'])}),\n")
        lines.append("    ],\n  ),\n")
    lines.append("];\n")
    target.write_text("".join(lines),encoding="utf-8")


def validate(entries):
    hashes = set()
    canonical = json.loads(
        (ROOT / "assets" / "questions" / "catalog.json").read_text(encoding="utf-8")
    )["categories"]
    category_entries = [e for e in entries if "category" in e]
    assert len(category_entries) == len(canonical), "Missing or duplicate category pictures"
    assert {e["category_folder"] for e in category_entries} == set(canonical)
    active = [e for e in entries if not e["provenance"].startswith("Original procedural")]
    nature = json.loads((SOURCES / "nature_sources.json").read_text(encoding="utf-8"))
    assert len(entries) == 193 + len(nature["images"]), "Unexpected retained picture catalog size"
    assert len(active) == 100 + len(nature["images"])
    assert len({e["title"] for e in active}) == len(active)
    assert [entry["source_id"] for entry in entries[193:]] == [
        source["id"] for source in nature["images"]
    ], "New source ordering differs from the reviewed batch"
    seam_titles = {
        source["title"] for source in json.loads(
            (SOURCES / "shared_sources.json").read_text(encoding="utf-8")
        ) if source.get("hasJigsawLines", False)
    }
    assert {e["title"] for e in entries if e.get("hasJigsawLines", False)} == seam_titles
    playable = [e for e in active if not e.get("hasJigsawLines", False)]
    for e in entries:
        a = Image.open(ROOT/e["leftAsset"]).convert("RGB")
        b = Image.open(ROOT/e["rightAsset"]).convert("RGB")
        assert a.size == b.size
        assert min(a.size) >= HD_SHORT_EDGE, f"Not HD: {e['title']}"
        assert (e["width"], e["height"]) == a.size
        for image in (a,b):
            digest = hashlib.sha256(image.tobytes()).hexdigest()
            assert digest not in hashes, f"Duplicate artwork: {e['title']}"
            hashes.add(digest)
        mask = ImageChops.difference(a,b).convert("L").point(lambda p: 255 if p else 0)
        if "category" in e:
            assert e["title"] == e["category"] == canonical[e["category_folder"]]["category"]
            assert a.size == (1600,1600), f"Category is not native HD: {e['title']}"
            assert mask.crop((0,0,a.width,190)).getbbox() is None, "Category name changed"
        remaining = mask.copy()
        d = ImageDraw.Draw(remaining)
        assert len(e["spots"]) == 5
        yy, xx = np.nonzero(np.any(np.array(a) != np.array(b), axis=2))
        best = np.full(xx.shape, np.inf)
        winner = np.full(xx.shape, -1)
        for spot in e["spots"]:
            if e in active:
                assert spot.get("operation") in (
                    "remove", "clone", "mirror", "bird", "red", "gold", "green", "blue", "purple", "pale", "dark", "gray", "warm"
                ), f"Unreviewed artificial patch: {e['title']}"
            x,y = spot["x"]*a.width,spot["y"]*a.height
            rx,ry = spot["rx"]*a.width,spot["ry"]*a.height
            # An ellipse enclosing the full changed bounding rectangle.
            rx,ry = rx*math.sqrt(2),ry*math.sqrt(2)
            box = (int(x-rx),int(y-ry),math.ceil(x+rx),math.ceil(y+ry))
            assert mask.crop(box).getbbox(), f"Empty target: {e['title']}/{spot['label']}"
            d.ellipse(box,fill=0)
            distance = ((xx-x)/rx)**2 + ((yy-y)/ry)**2
            closer = (distance <= 1) & (distance < best)
            best[closer] = distance[closer]
            winner[closer] = e["spots"].index(spot)
        assert remaining.getbbox() is None, f"Unmapped differences: {e['title']}"
        # Object-sized regions can overlap. Match the game's nearest-hit rule,
        # rather than rejecting a small target inside another object's oval.
        assert np.all(winner >= 0), f"Unreachable changed pixels: {e['title']}"
        for i, spot in enumerate(e["spots"]):
            assert np.count_nonzero(winner == i) >= 8, f"Unreachable target: {e['title']}/{i}"
            if e in active:
                assert spot.get("independent_pixels", 0) >= 40, f"Overlapping edits: {e['title']}/{i}"
    print(f"PASS: {len(entries)} HD scenes, {len(hashes)} unique images, "
          f"{len(entries)*5} nonempty targets; all changed pixels covered.")
    print(f"Spot the Difference: {len(playable)} playable levels; "
          f"{len(active)-len(playable)} jigsaw-seamed pictures excluded.")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--import-references",action="store_true")
    parser.add_argument("--validate-only",action="store_true")
    parser.add_argument("--catalog-only", action="store_true",
                        help="Refresh source eligibility flags without changing any image files")
    parser.add_argument("--import-expansion-sheets", nargs=3, type=Path)
    parser.add_argument("--import-nature", action="store_true",
                        help="Import the approved unwatermarked nature attachments into retained sources")
    parser.add_argument("--levels", nargs="+", type=int,
                        help="Regenerate only these stable manifest IDs; validate the entire catalog")
    args = parser.parse_args()
    manifest = OUTPUT/"manifest.json"
    if args.catalog_only:
        entries = json.loads(manifest.read_text(encoding="utf-8"))
        flagged = {
            source["title"] for source in json.loads(
                (SOURCES / "shared_sources.json").read_text(encoding="utf-8")
            ) if source.get("hasJigsawLines", False)
        }
        for entry in entries:
            entry["hasJigsawLines"] = entry["title"] in flagged
        validate(entries)
        manifest.write_text(json.dumps(entries, indent=2), encoding="utf-8")
        write_catalog(entries)
        return
    if args.validate_only:
        validate(json.loads(manifest.read_text(encoding="utf-8")))
        return
    OUTPUT.mkdir(parents=True,exist_ok=True)
    SOURCES.mkdir(parents=True,exist_ok=True)
    nature = json.loads((SOURCES / "nature_sources.json").read_text(encoding="utf-8"))
    if args.import_nature:
        for source in nature["images"]:
            path = Path(nature["sourceRoot"]) / source["attachment"] / source["file"]
            original_hash = hashlib.sha256(path.read_bytes()).hexdigest()
            with Image.open(path) as original:
                box = tuple(round(value * (original.width if i % 2 == 0 else original.height) / 1000)
                            for i, value in enumerate(source["crop"]))
                if not (0 <= box[0] < box[2] <= original.width and
                        0 <= box[1] < box[3] <= original.height):
                    raise ValueError(f"Invalid source crop: {source['id']}")
                imported = original.convert("RGB").crop(box)
                target = SOURCES / f"nature_{source['id']}.png"
                if target.exists():
                    with Image.open(target) as retained:
                        if retained.size != imported.size or retained.convert("RGB").tobytes() != imported.tobytes():
                            raise ValueError(f"Nature source changed: {source['id']}")
                else:
                    imported.save(target, format="PNG", optimize=True)
            if hashlib.sha256(path.read_bytes()).hexdigest() != original_hash:
                raise ValueError(f"Original attachment was modified: {path}")
    if args.import_expansion_sheets:
        for sheet_index, path in enumerate(args.import_expansion_sheets):
            with Image.open(path) as sheet:
                for tile in range(9):
                    number = sheet_index*9+tile
                    if number >= len(EXPANSION_TITLES):
                        break
                    col, row = tile % 3, tile // 3
                    crop = (round(col*sheet.width/3)+4, round(row*sheet.height/3)+4,
                            round((col+1)*sheet.width/3)-4, round((row+1)*sheet.height/3)-4)
                    sheet.convert("RGB").crop(crop).save(SOURCES/f"expansion_{number+1:02}.png")
    shared = json.loads((SOURCES / "shared_sources.json").read_text(encoding="utf-8"))
    categories = json.loads((SOURCES / "category_sources.json").read_text(encoding="utf-8"))
    # Category levels were published after the first 24 shared pictures.
    # Append later imports after them to preserve level IDs and saved progress.
    additional = shared[:24] + categories + shared[24:]
    entries = []
    previous = json.loads(manifest.read_text(encoding="utf-8")) if manifest.exists() else []
    catalog_size = 170 + len(EXPANSION_TITLES) + len(nature["images"])
    if args.levels and (len(previous) < 193 or any(n < 1 or n > catalog_size for n in args.levels)):
        raise ValueError("--levels requires a complete catalog and valid manifest IDs")
    assert 105+len(additional) == 170, "Preserve the published legacy catalog order"
    for index in range(catalog_size):
        source = None
        if 7 <= index < 100 and index < len(previous):
            entries.append(previous[index])
            continue
        if args.levels and index+1 not in args.levels:
            if index >= len(previous):
                raise ValueError(f"No existing entry for unselected picture {index+1}")
            entries.append(previous[index])
            continue
        if index < 7:
            a,b,title,spots = reference_pair(index,args.import_references)
            provenance = "User-supplied reference crop, upscaled"
        elif index < 100:
            a,b,title,spots = generated_pair(index-7)
            provenance = "Original procedural illustration, upscaled"
        elif index < 105:
            title, path = GENERATED_ART[index-100]
            a,b,title,spots = shared_pair(ROOT/path,title,SCENE_EDITS[index+1])
            provenance = "Original AI-generated artwork, upscaled from 1024 pixels"
        elif index < 170:
            source = additional[index-105]
            edits = (category_edits(source["category_folder"]) if "category" in source
                     else SCENE_EDITS[index+1])
            a,b,title,spots = shared_pair(SOURCES/source["file"],source["title"],edits)
            provenance = source["provenance"]
            if "category" not in source:
                provenance += "; upscaled"
        elif index < 193:
            a,b,title,spots = shared_pair(
                SOURCES/f"expansion_{index-169:02}.png",
                EXPANSION_TITLES[index-170], SCENE_EDITS[index+1],
            )
            provenance = "Original AI-generated puzzle-book illustration; upscaled"
        else:
            source = nature["images"][index-193]
            source_path = SOURCES / f"nature_{source['id']}.png"
            a, b, title, spots = shared_pair(source_path, source["title"], source["edits"])
            frame = "full original frame" if source["crop"] == [0, 0, 1000, 1000] else "screenshot UI cropped"
            provenance = (
                f"User-supplied unwatermarked nature artwork; {frame}; "
                "upscaled if needed; publication rights not independently verified"
            )
        a,b = to_hd(a),to_hd(b)
        entry = dict(title=title,width=a.width,height=a.height,spots=spots,
                     provenance=provenance,
                     hasJigsawLines=(105 <= index < 170 and source.get("hasJigsawLines", False)))
        if 105 <= index < 170 and "category" in source:
            entry["category"] = source["category"]
            entry["category_folder"] = source["category_folder"]
        if index >= 193:
            entry["source_id"] = source["id"]
            entry["source_file"] = source["file"]
            entry["source_attachment"] = source["attachment"]
            entry["source_crop"] = source["crop"]
            entry["source_sha256"] = hashlib.sha256(source_path.read_bytes()).hexdigest()
        for side,image in (("left",a),("right",b)):
            relative = (GENERATED_ART[index-100][1]
                        if 100 <= index < 105 and side == "left"
                        else f"assets/spot_difference/level_{index+1:03}_{side}.png")
            target = ROOT/relative
            unchanged = False
            if target.exists():
                with Image.open(target) as retained:
                    unchanged = retained.size == image.size and retained.convert("RGB").tobytes() == image.tobytes()
                    if side == "left" and not unchanged:
                        raise ValueError(f"Refusing to overwrite an existing Picture A: {relative}")
            if not unchanged:
                temporary = target.with_suffix(".png.tmp")
                image.save(temporary, format="PNG", optimize=True)
                temporary.replace(target)
            entry[f"{side}Asset"] = relative
        entries.append(entry)
        print(f"Rendered picture {index+1}: {title}", flush=True)
    validate(entries)
    temporary_manifest = manifest.with_suffix(".json.tmp")
    temporary_manifest.write_text(json.dumps(entries,indent=2),encoding="utf-8")
    temporary_manifest.replace(manifest)
    write_catalog(entries)
    # Contact sheet is a local review aid, not a bundled game asset.
    sheet = Image.new("RGB",(1000,math.ceil(len(entries)/10)*80),"white")
    for i,e in enumerate(entries):
        thumb = Image.open(ROOT/e["leftAsset"])
        thumb.thumbnail((96,70))
        sheet.paste(thumb,((i%10)*100,(i//10)*80))
        ImageDraw.Draw(sheet).text(((i%10)*100,(i//10)*80+70),str(i+1),fill="black")
    sheet.save(SOURCES/"contact_sheet.png")


if __name__ == "__main__":
    main()

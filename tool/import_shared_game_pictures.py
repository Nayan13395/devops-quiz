"""Retain clean illustration crops from user snapshots without editing originals."""

import json

from PIL import Image

from generate_spot_pictures import ATTACHMENTS, SOURCES


def main():
    entries = []
    sources = [
        ("Shared safari", "d6a14a2e-ece0-4529-bb7d-4bab955d67c6",
         "Pasted Image.png", (5, 14, 491, 377)),
        ("Shared jungle friends", "2bd0f41a-519f-4e30-9201-eed473aef231",
         "Pasted Image 2.png", (10, 11, 463, 349)),
        ("Shared golden puppy", "c6a3f0d3-53ea-4eb8-8aa0-698306e92ceb",
         "Pasted Image 3.png", (45, 50, 415, 487)),
        ("Shared swimming turtle", "c79ac4e9-dfb0-4d75-8ee7-84f74880caa0",
         "Pasted Image 4.png", (24, 39, 434, 498)),
        ("Shared diver and dolphin", "74da0ac3-a37d-483a-966e-6373ece91e51",
         "Pasted Image 5.png", (10, 15, 243, 244)),
        ("Shared clownfish", "74da0ac3-a37d-483a-966e-6373ece91e51",
         "Pasted Image 5.png", (281, 31, 419, 232)),
        ("Shared pink octopus", "74da0ac3-a37d-483a-966e-6373ece91e51",
         "Pasted Image 5.png", (280, 278, 500, 503)),
    ]
    collage = "7bcf6526-a085-4ffa-87b8-1419a2f01d5c"
    titles = [
        "Little dinosaur", "Safari companions", "Swirling flowers",
        "Garden kitten", "Blue ocean", "Castle princess",
        "Red car", "Garden puppy", "Space explorer",
    ]
    # Keep illustration interiors above the numbered badges and below rounded tops.
    for index, title in enumerate(titles):
        x0, x1 = [(28, 159), (188, 315), (347, 475)][index % 3]
        y0, y1 = [(18, 129), (220, 329), (424, 538)][index // 3]
        sources.append((title, collage, "Pasted Image.png", (x0, y0, x1, y1)))
    sources.extend([
        ("Enchanted reading forest", "db739129-ad80-41c0-8530-7b3381012bc5",
         "Pasted Image.png", (34, 91, 694, 625)),
        ("DevOps infinity cycle", "99e04b1b-122c-45fb-b726-dc76c4adcdce",
         "Pasted Image 2.png", (20, 17, 666, 466)),
        ("Stone garden cottage", "b651a8f2-784a-446a-b9ab-c65f066b182d",
         "Pasted Image 4.png", (221, 100, 422, 284)),
        ("Red roof cottage", "b651a8f2-784a-446a-b9ab-c65f066b182d",
         "Pasted Image 4.png", (467, 106, 671, 283)),
        ("Golden thatched cottage", "b651a8f2-784a-446a-b9ab-c65f066b182d",
         "Pasted Image 4.png", (718, 104, 917, 284)),
        ("Blue house by the bridge", "eecb53c3-415c-44fb-a7ad-26f02c2b63cd",
         "Pasted Image 5.png", (30, 105, 229, 282)),
        ("Winter treehouse", "eecb53c3-415c-44fb-a7ad-26f02c2b63cd",
         "Pasted Image 5.png", (280, 106, 474, 282)),
        ("Purple garden mansion", "eecb53c3-415c-44fb-a7ad-26f02c2b63cd",
         "Pasted Image 5.png", (529, 106, 725, 282)),
        ("Moonlit rooftop musicians", "571ed730-c927-4ce3-816c-516e89846d01",
         "Pasted Image.png", (4, 8, 338, 490)),
        ("Alpine lake rowboats", "a4ac88ea-381c-4a5e-981c-1ebd4955f827",
         "Pasted Image 2.png", (5, 107, 527, 443)),
        ("Winter festival fair", "c19b17fd-6b63-4436-b917-ff9498806d58",
         "Pasted Image 3.png", (0, 0, 652, 519)),
        ("Blue and yellow cottage", "310394e8-ff35-4e89-844b-a240f08646ce",
         "Pasted Image 4.png", (2, 102, 166, 312)),
        ("Sleeping kitten in flowers", "310394e8-ff35-4e89-844b-a240f08646ce",
         "Pasted Image 4.png", (191, 102, 357, 312)),
        ("Rainbow cake pops", "310394e8-ff35-4e89-844b-a240f08646ce",
         "Pasted Image 4.png", (382, 102, 546, 312)),
        ("Coastal striped lighthouse", "310394e8-ff35-4e89-844b-a240f08646ce",
         "Pasted Image 4.png", (572, 102, 738, 312)),
        ("Sunset lake reflection", "310394e8-ff35-4e89-844b-a240f08646ce",
         "Pasted Image 4.png", (763, 102, 927, 312)),
        ("Tropical dolphin reef", "310394e8-ff35-4e89-844b-a240f08646ce",
         "Pasted Image 4.png", (953, 102, 1118, 312)),
        ("Armored hero close-up", "14dd7360-e45b-44d9-a185-0fa3c7fc7f71",
         "Pasted Image.png", (1, 5, 961, 541)),
        ("Armored hero in crimson", "a78deef7-04b5-4893-88d7-c642692466bc",
         "Pasted Image 2.png", (0, 3, 962, 541)),
        ("Dark plumeria blossoms", "2f82648a-1d99-429d-b170-07925f170406",
         "Pasted Image 3.png", (12, 16, 478, 234)),
        ("Mangrove boardwalk", "208f39dc-fd28-4698-8872-0bd526ac4159",
         "Pasted Image 4.png", (2, 11, 965, 551)),
        ("Tropical palm reflections", "d8d3c889-d196-4ad8-917a-e53bf4f8b816",
         "Pasted Image 5.png", (2, 12, 1217, 634)),
        ("Masked figure in shadow", "eb591522-8a68-4c2f-a14b-2b44339ed127",
         "Pasted Image 6.png", (2, 4, 468, 265)),
        ("Electric companion at sunset", "cf07238d-78d2-45f3-a5c7-fb4fab010d87",
         "Pasted Image 7.png", (9, 8, 972, 549)),
        ("Trainer and fire dragon", "b234cc3a-0734-4fcd-bd2c-785f58813d66",
         "Pasted Image 8.png", (8, 11, 970, 550)),
        ("Jewel-studded wrestling mask", "f5fceec3-12fe-4e3a-a074-c87220a58781",
         "Pasted Image.png", (12, 22, 417, 830)),
        ("Wrestler in red brushstrokes", "b386de66-3513-44ce-b103-78aec7286438",
         "Pasted Image 2.png", (48, 0, 488, 684)),
        ("Wrestling champion salute", "0d9d2231-6d3f-4354-9580-5bed7b20f9ca",
         "Pasted Image 3.png", (0, 7, 874, 492)),
    ])
    SOURCES.mkdir(parents=True, exist_ok=True)
    manifest = SOURCES / "shared_sources.json"
    eligibility = {
        entry["file"]: entry.get("hasJigsawLines", False)
        for entry in json.loads(manifest.read_text(encoding="utf-8"))
    } if manifest.exists() else {}
    for index, (title, folder, filename, crop) in enumerate(sources):
        name = f"shared_{index + 1:02}.png"
        restored = SOURCES / f"restored_{index + 1:02}.png"
        if restored.exists():
            with Image.open(restored) as image:
                image.convert("RGB").save(SOURCES / name)
        else:
            with Image.open(ATTACHMENTS / folder / filename) as original:
                original.convert("RGB").crop(crop).save(SOURCES / name)
        entries.append(dict(
            title=title, file=name, source_attachment=folder,
            source_filename=filename, crop=crop,
            hasJigsawLines=eligibility.get(name, False),
            provenance=("AI-restored user-supplied illustration"
                        if restored.exists() else "User-supplied screenshot crop")
                       + "; publication rights not verified",
        ))
    (SOURCES / "shared_sources.json").write_text(
        json.dumps(entries, indent=2), encoding="utf-8"
    )
    print(f"Retained {len(entries)} shared illustration crops; originals unchanged.")


if __name__ == "__main__":
    main()

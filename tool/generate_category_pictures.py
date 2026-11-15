"""Render original named DevOps category artwork at native 1600 x 1600."""

import argparse
import colorsys
import json
import math
import os
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parents[1]
SOURCES = ROOT / "tool" / "spot_picture_sources"
SIZE = 1600
WHITE = "#edf7ff"
PANEL = "#10243d"
INK = "#071426"

# Canonical keys are validated against the question catalog before rendering.
DESIGNS = {
    "Ansible": ("automation", ["PLAYBOOKS", "INVENTORY", "IDEMPOTENCE"]),
    "AWS": ("cloud", ["COMPUTE", "STORAGE", "NETWORKING"]),
    "Azure": ("cloud", ["IDENTITY", "COMPUTE", "STORAGE"]),
    "BASH": ("code", ["SHELL", "PIPES", "AUTOMATION"]),
    "Docker": ("containers", ["IMAGES", "CONTAINERS", "REGISTRY"]),
    "GCP": ("cloud", ["COMPUTE", "DATA", "NETWORKING"]),
    "Git": ("branches", ["COMMITS", "BRANCHES", "MERGES"]),
    "Hybridcloud": ("hybrid", ["ON-PREMISES", "CONNECTIVITY", "CLOUD"]),
    "IBM": ("cloud", ["COMPUTE", "SECURITY", "STORAGE"]),
    "Javascript": ("code", ["FUNCTIONS", "EVENTS", "PROMISES"]),
    "Jenkins": ("pipeline", ["BUILD", "TEST", "DEPLOY"]),
    "K8s": ("cluster", ["PODS", "SERVICES", "CLUSTERS"]),
    "Linux": ("penguin", ["KERNEL", "PROCESSES", "FILES"]),
    "Multicloud": ("multi", ["PROVIDERS", "PORTABILITY", "GOVERNANCE"]),
    "Networking": ("network", ["ROUTING", "DNS", "TCP/IP"]),
    "Oracle": ("database", ["DATABASES", "COMPUTE", "NETWORKING"]),
    "Perl": ("code", ["TEXT", "REGEX", "AUTOMATION"]),
    "Powershell": ("code", ["CMDLETS", "OBJECTS", "PIPELINES"]),
    "Python": ("code", ["FUNCTIONS", "MODULES", "AUTOMATION"]),
    "Ruby": ("gem", ["OBJECTS", "BLOCKS", "GEMS"]),
    "Terraform": ("infrastructure", ["CONFIGURATION", "PLAN", "STATE"]),
}
CODE = {
    "BASH": ['#!/usr/bin/env bash', 'for host in web01 web02; do', '  printf "%s\\n" "$host"', 'done'],
    "Javascript": ['const services = ["web", "api"];', 'services.forEach((service) => {', '  console.log(service);', '});'],
    "Perl": ['use strict;', 'use warnings;', 'my @hosts = ("web", "api");', 'print "$_\\n" for @hosts;'],
    "Powershell": ['$services = Get-Service', '$services |', '  Where-Object Status -eq Running |', '  Select-Object Name, Status'],
    "Python": ['services = ["web", "api"]', '', 'for service in services:', '    print(service)'],
}


def font(size, bold=False, mono=False):
    family = "consola.ttf" if mono else "arialbd.ttf" if bold else "arial.ttf"
    return ImageFont.truetype(str(FONT_DIR / family), size)


def text(d, xy, label, size=34, color=WHITE, bold=False, anchor="mm", mono=False):
    face = font(size, bold, mono)
    if d.textlength(label, font=face) > 1400:
        raise ValueError(f"Text would overflow: {label}")
    d.text(xy, label, fill=color, font=face, anchor=anchor)


def cloud(d, x, y, scale, color):
    d.rounded_rectangle((x-180*scale, y, x+180*scale, y+125*scale),
                        radius=55*scale, fill=color)
    for dx, dy, r in [(-98, 0, 68), (0, -42, 100), (95, -2, 73)]:
        d.ellipse((x+(dx-r)*scale, y+(dy-r)*scale,
                   x+(dx+r)*scale, y+(dy+r)*scale), fill=color)


def server(d, x, y, color, width=220):
    for row in range(3):
        top = y+row*62
        d.rounded_rectangle((x, top, x+width, top+48), radius=12,
                            fill=PANEL, outline=color, width=4)
        d.ellipse((x+15, top+15, x+31, top+31), fill=color)
        d.line((x+50, top+24, x+width-18, top+24), fill="#6689a3", width=5)


def cube(d, x, y, r, color):
    d.polygon([(x,y-r),(x+r,y-r/2),(x,y),(x-r,y-r/2)], fill=color)
    d.polygon([(x-r,y-r/2),(x,y),(x,y+r),(x-r,y+r/2)], fill="#4689b2")
    d.polygon([(x,y),(x+r,y-r/2),(x+r,y+r/2),(x,y+r)], fill="#c6e8f4")
    d.line([(x-r,y-r/2),(x,y),(x+r,y-r/2)], fill=INK, width=5)


def scene(folder, name, index):
    image = Image.new("RGB", (SIZE, SIZE))
    d = ImageDraw.Draw(image)
    color = tuple(round(v*255) for v in colorsys.hsv_to_rgb(index/21, .56, .96))
    for y in range(SIZE):
        t = y/(SIZE-1)
        d.line((0,y,SIZE,y), fill=(int(9+15*t), int(19+21*t), int(39+25*t)))
    # Distinct circuit routing and equipment give puzzle pieces local landmarks.
    for i in range(14):
        x = 35+i*118
        y = 260 + (i*83 + index*31) % 850
        d.line([(x,280),(x,y),(x+50,y+50),(x+50,1260)],
               fill="#294965", width=3)
        d.ellipse((x-6,y-6,x+6,y+6), fill=color)
    d.rounded_rectangle((75,70,1525,265), radius=38, fill=PANEL, outline=color, width=3)
    text(d,(800,142),name,84,color,bold=True)
    text(d,(800,220),"DEVOPS LEARNING COLLECTION",26)
    d.rounded_rectangle((130,340,1470,1190), radius=54, fill=INK, outline="#345573", width=3)
    kind, topics = DESIGNS[folder]
    if kind == "code":
        d.rounded_rectangle((235,470,1365,1040),radius=30,fill=PANEL,outline=color,width=5)
        for i,c in enumerate(["#ff7b83","#ffd36b","#63dfb2"]):
            d.ellipse((270+i*42,500,294+i*42,524),fill=c)
        for i,line in enumerate(CODE[folder]):
            text(d,(285,625+i*92),line,36,WHITE,anchor="lm",mono=True)
        text(d,(800,1100),">_   " + name,48,color,bold=True)
    elif kind in ("cloud","hybrid","multi","database"):
        if kind == "multi":
            for x,y,c in [(460,600,color),(1140,600,"#90caff"),(800,870,"#e9b9ff")]:
                cloud(d,x,y,.75,c)
            d.line([(460,700),(800,990),(1140,700)],fill=WHITE,width=8)
        elif kind == "hybrid":
            cloud(d,1080,620,1.1,color)
            for x in [330,580]:
                server(d,x,780,color,180)
            d.line([(550,750),(550,650),(880,650)],fill=WHITE,width=10)
        elif kind == "database":
            cloud(d,800,540,.85,color)
            d.rectangle((530,720,1070,960),fill=PANEL,outline=color,width=5)
            for y in [700,800,900]:
                d.ellipse((530,y,1070,y+110),fill=PANEL,outline=color,width=7)
        else:
            cloud(d,800,580,1.35,color)
            for n,x in enumerate([340,690,1040]):
                y=900+(n % 2)*80
                d.line([(800,755),(x+110,830),(x+110,y)],fill=color,width=7)
                server(d,x,y,color)
            # Provider-specific cloud capabilities differ, not just the palette.
            tags={"AWS":"EC2  /  S3  /  VPC","Azure":"VIRTUAL MACHINES  /  BLOB STORAGE",
                  "GCP":"COMPUTE ENGINE  /  CLOUD STORAGE","IBM":"VPC  /  CLOUD OBJECT STORAGE"}
            text(d,(800,420),tags[folder],30)
    elif kind == "containers":
        for row in range(3):
            for col in range(4-row):
                x,y=420+col*200+row*80,960-row*180
                d.rounded_rectangle((x,y-130,x+175,y),radius=8,fill=PANEL,outline=color,width=6)
                for dx in [32,64,96,128]:
                    d.line((x+dx,y-110,x+dx,y-20),fill=color,width=5)
        d.line((350,1000,1270,1000),fill=WHITE,width=10)
    elif kind in ("cluster","network","automation"):
        points=[]
        count={"cluster":6,"network":5,"automation":4}[kind]
        for n in range(count):
            angle=2*math.pi*n/count
            x,y=800+410*math.cos(angle),760+300*math.sin(angle)
            points.append((x,y))
            d.line((800,760,x,y),fill=color,width=9)
        for n,(x,y) in enumerate(points):
            if kind=="cluster":
                cube(d,x,y,70,color)
            else:
                server(d,x-70,y-50,color,140)
        d.ellipse((680,640,920,880),fill=PANEL,outline=WHITE,width=6)
        text(d,(800,760),{"cluster":"K8s","network":"IP","automation":"RUN"}[kind],48,color,True)
    elif kind == "branches":
        d.line([(540,1040),(540,520)],fill=color,width=16)
        d.line([(540,930),(1060,730),(1060,520)],fill="#ffcc71",width=16)
        d.line([(1060,600),(540,520)],fill="#e1a2ef",width=12)
        for x,y in [(540,1040),(540,780),(540,520),(1060,730),(1060,520)]:
            d.ellipse((x-35,y-35,x+35,y+35),fill=PANEL,outline=WHITE,width=9)
    elif kind == "pipeline":
        for n,label in enumerate(["BUILD","TEST","DEPLOY"]):
            x=300+n*350
            d.rounded_rectangle((x,660,x+280,900),radius=25,fill=PANEL,outline=color,width=6)
            text(d,(x+140,735),f"0{n+1}",60,color,True)
            text(d,(x+140,830),label,32)
            if n<2:
                d.line((x+285,780,x+340,780),fill=WHITE,width=9)
                d.polygon([(x+340,780),(x+319,762),(x+319,798)],fill=WHITE)
    elif kind == "penguin":
        d.ellipse((560,520,1040,1080),fill="#182c40",outline=color,width=7)
        d.ellipse((640,700,960,1060),fill=WHITE)
        for x in [705,895]:
            d.ellipse((x-38,605,x+38,690),fill=WHITE)
            d.ellipse((x-10,630,x+10,664),fill=INK)
            d.ellipse((x-85,1030,x+85,1110),fill="#ffca65")
        d.polygon([(745,705),(855,705),(800,755)],fill="#ffca65")
        text(d,(800,430),"OPEN SYSTEMS",34,color,True)
    elif kind == "gem":
        pts=[(530,600),(1070,600),(1200,790),(800,1090),(400,790)]
        d.polygon(pts,fill=color,outline=WHITE,width=6)
        d.line([(530,600),(650,790),(800,1090),(950,790),(1070,600)],fill=WHITE,width=8)
        d.line((400,790,1200,790),fill=WHITE,width=8)
        d.line([(650,790),(800,600),(950,790)],fill=WHITE,width=8)
    elif kind == "infrastructure":
        for x,y in [(490,650),(800,800),(1110,950)]:
            cube(d,x,y,130,color)
        d.line([(490,840),(490,1030),(850,1030)],fill=WHITE,width=8)
        text(d,(800,430),"INFRASTRUCTURE AS CODE",34,color,True)
    else:
        raise ValueError(kind)
    for n,label in enumerate(topics):
        x=95+n*475
        d.rounded_rectangle((x,1260,x+460,1380),radius=26,fill=PANEL,outline=color,width=3)
        text(d,(x+230,1320),label,28,color,True)
    text(d,(800,1480),"EXPLORE  /  PRACTICE  /  BUILD",30)
    return image


def main():
    parser=argparse.ArgumentParser()
    parser.add_argument("--font-dir",type=Path,
                        default=Path(os.environ.get("WINDIR","C:\\Windows"))/"Fonts")
    args=parser.parse_args()
    global FONT_DIR
    FONT_DIR=args.font_dir
    catalog=json.loads((ROOT/"assets"/"questions"/"catalog.json").read_text(encoding="utf-8"))
    assert set(DESIGNS)==set(catalog["categories"]), "Update designs for every category"
    SOURCES.mkdir(parents=True,exist_ok=True)
    entries=[]
    for index,(folder,entry) in enumerate(catalog["categories"].items()):
        filename=f"category_{folder.lower()}.png"
        image=scene(folder,entry["category"],index)
        image.save(SOURCES/filename,optimize=True)
        entries.append(dict(
            title=entry["category"],file=filename,category=entry["category"],
            category_folder=folder,width=SIZE,height=SIZE,
            provenance="Original native-resolution technical illustration; not an official product logo",
        ))
    (SOURCES/"category_sources.json").write_text(json.dumps(entries,indent=2),encoding="utf-8")
    sheet=Image.new("RGB",(1400,600),"white")
    for i,entry in enumerate(entries):
        with Image.open(SOURCES/entry["file"]) as image:
            image.thumbnail((200,200))
            sheet.paste(image,((i%7)*200,(i//7)*200))
    sheet.save(SOURCES/"category_contact_sheet.png")
    print(f"PASS: {len(entries)} named category illustrations at native {SIZE} x {SIZE}.")


if __name__=="__main__":
    main()

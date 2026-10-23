import csv
import html
import io
import json
import re
import urllib.request
import zipfile
from concurrent.futures import ThreadPoolExecutor
from datetime import date
from pathlib import Path


FACTBOOK = "https://codeload.github.com/factbook/factbook.json/zip/refs/heads/master"
COUNTRY_CODES = "https://raw.githubusercontent.com/datasets/country-codes/master/data/country-codes.csv"
MONTHS = {name: index for index, name in enumerate([
    "January", "February", "March", "April", "May", "June", "July",
    "August", "September", "October", "November", "December",
], 1)}
DATE_PATTERN = re.compile(r"\b(\d{1,2})\s+(" + "|".join(MONTHS) + r")\b")


def download(url):
    request = urllib.request.Request(url, headers={"User-Agent": "DevOpsQuizCalendar/1.0"})
    with urllib.request.urlopen(request, timeout=90) as response:
        return response.read()


def fixed_days(text):
    days = []
    for part in re.split(r";|<br\s*/?>", text, flags=re.IGNORECASE):
        part = html.unescape(part).strip()
        if re.match(r"note\b", part, re.IGNORECASE):
            break
        match = DATE_PATTERN.search(part)
        if not match:
            continue
        prefix = part[:match.start()]
        if re.search(r"(?:first|second|third|fourth|last)\s+(?:Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday)|lunar|varies|variable", prefix, re.IGNORECASE):
            continue
        day = int(match.group(1))
        month = MONTHS[match.group(2)]
        date(2024, month, day)
        name = prefix.strip(" ,:-") or "National Day"
        days.append({"month": month, "day": day, "name": name})
    return days


def main():
    country_rows = list(csv.DictReader(io.StringIO(download(COUNTRY_CODES).decode("utf-8-sig"))))
    by_fips = {}
    countries = {}
    for row in country_rows:
        code = row["ISO3166-1-Alpha-2"].strip()
        if not re.fullmatch(r"[A-Z]{2}", code):
            continue
        countries[code] = {
            "code": code,
            "name": row["CLDR display name"] or row["official_name_en"],
            "days": [],
        }
        for fips in row["FIPS"].split(","):
            if fips.strip():
                by_fips[fips.strip().lower()] = code

    archive = zipfile.ZipFile(io.BytesIO(download(FACTBOOK)))
    for path in archive.namelist():
        parts = path.split("/")
        if len(parts) != 3 or not re.fullmatch(r"[a-z]{2}\.json", parts[-1]):
            continue
        profile = json.loads(archive.read(path))
        code = by_fips.get(Path(path).stem)
        if code is None:
            short_name = profile.get("Government", {}).get("Country name", {}).get("conventional short form", {}).get("text", "")
            code = next((key for key, country in countries.items() if country["name"].casefold() == short_name.casefold()), None)
        if code is None:
            continue
        holiday = profile.get("Government", {}).get("National holiday", {}).get("text", "")
        countries[code]["sourceText"] = holiday
        countries[code]["source"] = "https://github.com/factbook/factbook.json/blob/master/" + "/".join(parts[1:])
        countries[code]["days"] = [] if code == "IL" else fixed_days(holiday)

    countries["IN"]["days"] = [
        {"month": 1, "day": 26, "name": "Republic Day"},
        {"month": 8, "day": 15, "name": "Independence Day"},
    ]
    countries["PK"]["days"].append(
        {"month": 8, "day": 14, "name": "Independence Day"}
    )
    countries["CH"]["days"] = [{"month": 8, "day": 1, "name": "Swiss National Day"}]
    countries["PS"]["days"] = [{"month": 11, "day": 15, "name": "Declaration of Independence Day"}]

    def israel_day(year):
        url = f"https://www.hebcal.com/hebcal?v=1&cfg=json&year={year}&maj=on&mod=on&nx=off&ss=off&mf=off&c=off&geo=none"
        items = json.loads(download(url))["items"]
        item = next(item for item in items if "/yom-haatzmaut-" in item.get("link", ""))
        observed = date.fromisoformat(item["date"])
        return {"year": year, "month": observed.month, "day": observed.day, "name": "Independence Day"}

    with ThreadPoolExecutor(max_workers=4) as executor:
        countries["IL"]["days"] = list(executor.map(israel_day, range(date.today().year - 1, date.today().year + 11)))
    countries["IL"]["source"] = "https://www.hebcal.com/home/developer-apis"
    assert len(countries) >= 249
    assert any(day["month"] == 7 and day["day"] == 4 for day in countries["US"]["days"])
    assert any(day["month"] == 8 and day["day"] == 14 for day in countries["PK"]["days"])
    output = {
        "sources": ["https://github.com/factbook/factbook.json", COUNTRY_CODES, "https://www.hebcal.com/home/developer-apis"],
        "generatedOn": date.today().isoformat(),
        "notes": "Fixed Gregorian national observances, plus year-specific Israeli Independence Day dates for the generated range. Countries without a national holiday remain selectable but have no invented date. India includes Independence Day and Republic Day. Refresh annually with tools/update_national_days.py.",
        "countries": sorted(countries.values(), key=lambda country: country["name"]),
    }
    target = Path(__file__).resolve().parents[1] / "assets" / "national_days.json"
    target.write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"Saved {len(countries)} country/region choices; {sum(bool(country['days']) for country in countries.values())} with fixed national observances.")
    print("No fixed date: " + ", ".join(country["code"] for country in countries.values() if not country["days"]))


if __name__ == "__main__":
    main()
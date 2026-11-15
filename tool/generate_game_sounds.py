"""Generate original, short PCM effects for offline game feedback."""

import math
from pathlib import Path
import struct
import wave


RATE = 22050
EFFECTS = {
    "click": [(880, 0.055)],
    "diceRoll": [(700, 0.045), (0, 0.035), (850, 0.045), (0, 0.035), (1000, 0.055)],
    "correct": [(660, 0.1), (880, 0.15)],
    "incorrect": [(300, 0.12), (220, 0.15)],
    "win": [(523.25, 0.1), (659.25, 0.1), (783.99, 0.1), (1046.5, 0.2)],
}


def main():
    output = Path(__file__).resolve().parents[1] / "assets" / "sounds"
    output.mkdir(parents=True, exist_ok=True)
    for name, notes in EFFECTS.items():
        samples = []
        for frequency, duration in notes:
            length = round(RATE * duration)
            for index in range(length):
                # Short fades prevent hard waveform boundaries from clicking.
                envelope = min(1, index / (RATE * 0.008), (length - index) / (RATE * 0.015))
                sample = 0.22 * envelope * math.sin(2 * math.pi * frequency * index / RATE)
                samples.append(round(32767 * sample))
        with wave.open(str(output / f"{name}.wav"), "wb") as audio:
            audio.setnchannels(1)
            audio.setsampwidth(2)
            audio.setframerate(RATE)
            audio.writeframes(struct.pack(f"<{len(samples)}h", *samples))
        print(f"{name}.wav: {len(samples) / RATE:.3f}s")


if __name__ == "__main__":
    main()

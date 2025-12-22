import argparse
import sys


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Convert an image to fixed-size ASCII art.")
    parser.add_argument("--input", required=True, help="Path to input image (jpg/png/webp).")
    parser.add_argument("--output", required=True, help="Path to output text file (ascii-art.txt).")
    parser.add_argument("--width", required=True, type=int, help="Output character width (e.g. 40).")
    parser.add_argument("--height", required=True, type=int, help="Output character height (e.g. 25).")
    return parser.parse_args()


def main() -> int:
    args = parse_args()

    if args.width <= 0 or args.height <= 0:
        raise RuntimeError("--width and --height must be > 0")

    try:
        from PIL import Image
    except Exception as exc:
        raise RuntimeError("Pillow is required: pip install pillow") from exc

    img = Image.open(args.input)
    img = img.convert("L")  # grayscale 0..255
    img = img.resize((args.width, args.height), resample=Image.BILINEAR)

    ramp = " .:-=+*#%@"
    ramp_len = len(ramp)

    lines: list[str] = []
    for y in range(args.height):
        row_chars: list[str] = []
        for x in range(args.width):
            px = img.getpixel((x, y))
            idx = int(px * (ramp_len - 1) / 255)
            row_chars.append(ramp[idx])
        lines.append("".join(row_chars))

    with open(args.output, "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(lines))
        f.write("\n")

    return 0


if __name__ == "__main__":
    sys.exit(main())



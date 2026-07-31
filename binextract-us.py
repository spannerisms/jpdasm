#!/usr/bin/env python3
"""
binextract-us.py -- regenerate the US ROM-derived font/menu assets for the
English translation from your own US ROM. Nothing copyrighted is committed to
this repo; the `binextract.py` stub runs this (and binextract-jp.py) to
produce the `bin/gfx/us_*` files.

    python3 binextract-us.py              # uses ./alttp-us.sfc
    python3 binextract-us.py --us-rom US.sfc

You need the US ROM (md5 '608c22b8ff930c62dc2de54bcd6eba72'), by default named `alttp-us.sfc` in
this directory. (The JP 1.0 binaries come from binextract-jp.py.)
All outputs are derived from the US ROM, written under bin/gfx/ (alongside
the base disassembly's own JP-ROM-derived files there):
  * us_font.2bpp     -- US VWF font (plain ROM-offset byte slice)
  * us_gfx_dc.2bppc  -- US menu/file-select font sheet GFX_DC (compressed slice; $18AF0D LoROM)
  * us_gfx_dd.2bppc  -- US menu/file-select font sheet GFX_DD (compressed slice; $18B520 LoROM)
  * us_gfx_39.3bppc  -- US file-select "linoleum" background GFX_39 (compressed slice; $13C817 LoROM)
  * us_palette.bin   -- four US file-select palettes (CGRAM rows 5/7/9/11, PaletteData slices, bank $1B)
Every output is a plain ROM byte slice -- NO emulator is used. Each is checked
against a known md5; if any check fails the script stops loudly.

GENERATED from alttp_jp_english_patcher/us_assets.py -- do not hand-edit;
change that table and redeploy to regenerate this file.
"""
import argparse, hashlib, os, sys

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "bin", "gfx")

US_ROM_MD5 = '608c22b8ff930c62dc2de54bcd6eba72'

# (filename, ((offset, length), ...), expected md5, comment)
ASSETS = (
    ('us_font.2bpp', ((0x70000, 0x1000),), '56d8e02353800ed7c095791a58556274', 'US VWF font (plain ROM-offset byte slice)'),
    ('us_gfx_dc.2bppc', ((0xc2f0d, 0x613),), '1dc3ce334108dc118e481a84d8368b65', 'US menu/file-select font sheet GFX_DC (compressed slice; $18AF0D LoROM)'),
    ('us_gfx_dd.2bppc', ((0xc3520, 0x433),), 'e97ca7c5551d6de2ca7ca98effd99c81', 'US menu/file-select font sheet GFX_DD (compressed slice; $18B520 LoROM)'),
    ('us_gfx_39.3bppc', ((0x9c817, 0x351),), 'c79da8a80348417038634560a9486110', 'US file-select "linoleum" background GFX_39 (compressed slice; $13C817 LoROM)'),
    ('us_palette.bin', ((0xdd9aa, 0xe), (0xde604, 0xe), (0xdd218, 0xe), (0xdd254, 0xe)), '086d4205e44e57b0427b7ea95b27c8b9', 'four US file-select palettes (CGRAM rows 5/7/9/11, PaletteData slices, bank $1B)'),
)


def md5(b):
    return hashlib.md5(b).hexdigest()


def die(msg):
    print("ERROR:", msg, file=sys.stderr)
    sys.exit(1)


def check_rom(path):
    if not path or not os.path.isfile(path):
        die(f"US ROM not found: {path!r}")
    got = md5(open(path, "rb").read())
    if got != US_ROM_MD5:
        die(
            f"US ROM md5 mismatch: got {got}, expected {US_ROM_MD5}\n"
            f"       (this must be the US release)"
        )
    print(f"  US ROM ok ({got})")


def extract(us_bytes, name, slices, want, comment):
    data = b"".join(
        us_bytes[offset : offset + length] for offset, length in slices
    )
    got = md5(data)
    out = os.path.join(OUT, name)
    open(out, "wb").write(data)
    ok = got == want
    status = "OK" if ok else "MD5 MISMATCH"
    print(f"  bin/gfx/{name:<16} {got}  [{status}]  # {comment}")
    return ok


def main():
    ap = argparse.ArgumentParser(
        description="extract the US ROM-derived font/menu assets for the"
        " English build"
    )
    ap.add_argument(
        "--us-rom",
        default=os.path.join(HERE, "alttp-us.sfc"),
        help="US ROM (default: ./alttp-us.sfc)",
    )
    a = ap.parse_args()

    a.us_rom = os.path.abspath(a.us_rom)
    print("Validating ROM:")
    check_rom(a.us_rom)
    os.makedirs(OUT, exist_ok=True)

    print("Extracting assets:")
    us = open(a.us_rom, "rb").read()
    ok = True
    for name, slices, want, comment in ASSETS:
        ok &= extract(us, name, slices, want, comment)

    if not ok:
        die(
            "one or more assets did not match the expected md5.\n"
            "       Double-check that your US ROM matches the md5 at the"
            " top of this script."
        )
    print("\nUS assets extracted and verified.")


if __name__ == "__main__":
    main()

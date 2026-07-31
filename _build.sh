#!/usr/bin/env bash
#
# _build.sh — assemble the English ROM (Linux/macOS equivalent of _build.bat;
# `make` also works and now produces the same output). This ONLY assembles;
# extract the ROM-derived binaries first:
#
#   1. place your two ROMs here:  alttp.sfc (JP 1.0)  and  alttp-us.sfc (US)
#   2. python3 binextract.py       # extracts bin/gfx/* (JP + US), bin/brr/* (JP)
#   3. ./_build.sh                 # -> alttp-english.sfc
#
set -euo pipefail
cd "$(dirname "$0")"

OUT="${1:-alttp-english.sfc}"

# asarmon (the pooling Asar fork) is shipped in the repo as asarmon.exe; run it
# natively if a Linux `asarmon` is on PATH, else through wine.
if command -v asarmon >/dev/null 2>&1; then
  ASAR=(asarmon)
elif command -v wine >/dev/null 2>&1; then
  ASAR=(wine asarmon.exe)
else
  echo "error: need 'asarmon' on PATH or 'wine' to run asarmon.exe" >&2
  exit 1
fi

# asar exits 0 only on success; retry to ride out rare wine flakiness (a failed
# run can still leave a partial file, so check -s too).
LOG="$(mktemp)"
BUILD_OK=0
for attempt in 1 2 3; do
  rm -f "$OUT"
  if "${ASAR[@]}" -wnoW1006 -wnoW1030 --fix-checksum=on main.asm "$OUT" >"$LOG" 2>&1 && [ -s "$OUT" ]; then
    BUILD_OK=1; break
  fi
  echo "  (assembler attempt $attempt failed — retrying)"
done
if [ "$BUILD_OK" != 1 ]; then
  echo "BUILD FAILED. Assembler output:"
  grep -vE 'libEGL|pci id|xrandr|winediag|nouveau|fixme:|GetCurrentPackage' "$LOG" | sed 's/^/  /'
  rm -f "$LOG"; exit 1
fi
rm -f "$LOG"

MD5=$(md5sum "$OUT" | cut -d' ' -f1)
echo
echo "SUCCESS -> $OUT  ($(stat -c%s "$OUT") bytes, md5 $MD5)"
# Reference builds — a good build matches one of these two:
#   default    US/Japanese save-slot migration on
#   no-migrate patcher deployed with --no-save-compatibility
MD5_DEFAULT="fa28c040306b075c76c1b5c1ede30553"
MD5_NOMIGRATE="abb74f0375cab138deedaf9c64f17312"
case "$MD5" in
  "$MD5_DEFAULT")   echo "  (verified: reference build — save compatibility)" ;;
  "$MD5_NOMIGRATE") echo "  (verified: reference build — no save migration)" ;;
  *) echo "  (note: matches no reference build — fine if you intended source changes; else re-run binextract.py / check your ROMs)" ;;
esac
echo "Play it in any SNES emulator."

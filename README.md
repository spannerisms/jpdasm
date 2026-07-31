# A Link to the Past — JP 1.0 English Translation

An English build of the Japanese 1.0 version of the game. This is a fork of the
[JP 1.0 disassembly](https://github.com/spannerisms/jpdasm) with the US ROM's
English text, menu, and file-select subsystems grafted in — so it assembles to a
fully playable English ROM while staying byte-for-byte the JP 1.0 base
everywhere the translation does not touch.

The base banks are hooked in place; the graft lives beside them in expanded-ROM
banks `bank_20` .. `bank_2E`; `main.asm` is wired to include them and pad the
ROM to 2 MB. It carries a boot-time save migrator, so US and vanilla-Japanese
save files are converted to this build's format automatically the first time you
load them.

### Save-file names

When a foreign save is migrated, its player name is handled by what the two
fonts can actually show:

* **US saves** — the name is kept as-is (the English font already covers it).
* **Japanese saves** — the name is kept only if it is made up **entirely of
  uppercase Latin letters** (`A`–`Z`, the sole characters both the Japanese and
  English fonts share); those are remapped to this build's encoding. Any name
  containing kana or other glyphs the English font can't render is replaced with
  **`Link`**.

---

## Building

To assemble this code you need [Asar](https://github.com/RPGHacker/asar) — a
special pooling fork is included as `asarmon.exe` (run natively where a Linux
`asarmon` exists, else through `wine`).

Extraction of the ROM-derived binaries is a separate, one-time step (see
**Binaries** below); the build itself only assembles:

```sh
# 1. put both ROMs in this directory (see Binaries)
python3 binextract.py          # extract bin/gfx/* (JP + US), bin/brr/* (JP)
./_build.sh                    # -> alttp-english.sfc   (Linux/macOS)
```

On Windows, run `binextract.py`, then `_build.bat`. `make` also works on any
platform with `asarmon` on `PATH`. All three produce `alttp-english.sfc`; a
correct default build has MD5 `fa28c040306b075c76c1b5c1ede30553`.

## Binaries

Raw binaries are not included in this repository due to copyright. You extract
them from your **own** ROMs. This build draws data from **two** ROMs, so place
both in the base directory:

* `alttp.sfc` — JP 1.0 ROM (md5 `03a63945398191337e896e5771f77173`)
* `alttp-us.sfc` — US ROM (md5 `608c22b8ff930c62dc2de54bcd6eba72`)

Then run `python3 binextract.py`, which drives both extractors:

* `binextract-jp.py` — the base disassembly's own extractor: the JP graphics and
  audio binaries under `bin/` (from `alttp.sfc`).
* `binextract-us.py` — the English font/menu assets, also under `bin/gfx/`
  (`us_*` files, alongside the JP ones there; from `alttp-us.sfc`): the US
  variable-width font and the file-select font/graphics/palette slices the
  graft repoints to.

Nothing copyrighted is committed here — everything under `bin/` is
regenerated from your ROMs.

An accurate assembly of the underlying JP 1.0 base has the following checksums:
* Internal (complement): `CDC8` (`3237`)
* CRC32: `3322EFFC`
* MD5: `03A63945398191337E896E5771F77173`
* SHA1: `E7E852F0159CE612E3911164878A9B08B3CB9060`

---

## Special Thanks
The JP 1.0 disassembly this builds on has massive shoutouts to give, in no
particular order:
* IsoFrieze, for creating [Diztinguish](https://github.com/Dotsarecool/DiztinGUIsh/releases).
* MathOnNapkins for his US disassembly, which served as an invaluable reference and sanity check. I took a lot of nomenclature from him, and when I didn't, I still checked my labels against his. The SPC engine is reformatted from his old work, which saved me the trouble of disassembling it.
* An extra, distinct thanks to MathOnNapkins for creating a fork of Asar with proper pool implementation.
* Zarby89, for his vast knowledge of the game's data, and for his direct contributions in parsing data (compressed graphics, overworld data, room objects).
* Myramong for identifying the Japanese kanji.
* Total for figuring out text compression and his direct contributions in parsing text graphics data.
* Lui for explaining Nintendo stripes. Also for being the patient victim of many ramblings about the code.
* Qwertymodo for the makefile.
* Aerinon for the Python extraction script.

---

## Using this disassembly
This disassembly was created with a number of specific guidelines

* Top-level labels use a mix of PascalCase and snake_case, where underscores will separate arbitrary hierarchies, such as `Sprite_MoveFunction`.
* Sublabels use pure snake_case. Some sublabels may redundantly include the top-level parent for explicit clarity; e.g. `Sprite_MoveFunction_continue`.
* The beginning of every line will have an address label of the form `#_AAAAAA:`, where `AAAAAA` is the 24-bit address in ROM in hexadecimal. The `#` prevents the label from creating a new hierarchy. The `_` is required as labels may not begin with numbers.
* APU labels will have `#_SSSS:` following the ROM label, where `SSSS` is the 16-bit address once transfered to the SPC in hexadecimal. To prevent name collision, song data will include an `o`, `u`, or `c` after the APU address, for the overworld, underworld, and credits banks, respectively.
* Code or data that appears unreachable is labelled `UNREACHABLE_AAAAAA`.
* Unreachable blocks of the filler byte `$FF` are labelled with `NULL_AAAAAA` and given a comment with `FREE ROM: <size>`.
* Lines contain 1 instruction each.
* For data bank and direct page changes, the full address will be written out.
* In data tables, the number of entries per line is determined by how they should logically be grouped. In all other cases, they are grouped in sets of four or eight.
* The MVN and MVP instructions are written with a macro so that writing them in the standard way assembles correctly.
* A list of standardized names for various entity classes is found in `values.asm`.
* My personal thoughts are noted in some comments with !WORD, where WORD is in all caps.
* The `.ly` files in the `resources/music/` directory can be compiled with [LilyPond](https://lilypond.org/).

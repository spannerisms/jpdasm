# A Link to the Past JP1.0 Disassembly
Full disassembly of the Japanese 1.0 version of the game.

---

## Completeness
This will always be a work in progress, as routines are analyzed further and better understood, but as of its release, this disassembly compiles exactly to the JP1.0 version. To assemble this code, use the included `_build.bat`. A special-made version of Asar with a pooling feature for sublabel management is included in the repository as `asarmon.exe`.

## Binaries
Raw binaries are not included in this repository due to voiced concerns of potential copyright issues. For reassembling, you will need to extract that data from your own JP1.0 ROM and create the `bin` directory with those files included.

Both the Makefile and `binextract.py` Python program can extract the necessary binary files from a JP1.0 ROM file located in the base directory and named `alttp.sfc`.

An accurate assembly of this repository should have the following checksums:
* Internal (complement): `CDC8` (`3237`)
* CRC32: `3322EFFC`
* MD5: `03A63945398191337E896E5771F77173`
* SHA1: `E7E852F0159CE612E3911164878A9B08B3CB9060`

---

## Special Thanks
I have massive shoutouts to give for this disassembly, in no particular order:
* IsoFrieze, for creating [Diztinguish](https://github.com/Dotsarecool/DiztinGUIsh/releases).
* MathOnNapkins for his US disassembly, which served as an invaluable reference and sanity check. I took a lot of nomenclature from him, and when I didn't, I still checked my labels against his. The SPC engine is reformatted from his old work, which saved me the trouble of disassembling it.
* An extra, distinct thanks to MathOnNapkins for creating a fork of Asar with proper pool implementation.
* Zarby89, for his vast knowledge of the game's data, and for his direct contributions in parsing data (compressed graphics, overworld data, room objects).
* Myramong for helping with Japanese characters.
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

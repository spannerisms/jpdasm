REM _build.bat -- assemble the English ROM (Windows; `make` also works and
REM produces the same output). This ONLY assembles; extract the ROM-derived
REM binaries first:
REM   1. place alttp.sfc (JP 1.0) and alttp-us.sfc (US) in this directory
REM   2. python3 binextract.py     (extracts bin/gfx/* (JP + US), bin/brr/* (JP))
REM   3. _build.bat                (-> alttp-english.sfc)

type nul >alttp-english.sfc

asarmon -wnoW1006 -wnoW1030 --fix-checksum=on main.asm alttp-english.sfc

certutil -hashfile alttp-english.sfc md5

@echo Expected (default build, save compatibility on):
@echo fa28c040306b075c76c1b5c1ede30553
@echo Expected (--no-save-compatibility build):
@echo abb74f0375cab138deedaf9c64f17312

pause

type nul >alttp_reasm.sfc

asarmon -wnoW1006 -wnoW1030 --fix-checksum=off main.asm alttp_reasm.sfc

certutil -hashfile alttp_reasm.sfc md5

@echo Expected:
@echo 03a63945398191337e896e5771f77173

pause
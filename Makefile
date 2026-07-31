# Overrides the base disassembly's Makefile: same structure, but the target
# is the English ROM (checksum fixed, since this build's contents differ
# from JP 1.0). `binfiles` (the base disassembly's own dd-based extractors,
# kept below for parity/manual use) is NOT a prerequisite here: run
# `python3 binextract.py` first instead -- it covers both the JP-ROM-derived
# binaries (via the bundled binextract-jp.py) and the US-derived
# bin/gfx/us_* files this build also needs, which the dd-based extractors
# don't know about.
TARGET:=	alttp-english.sfc
FLAGS:=		-wnoW1006 -wnoW1030 --fix-checksum=on

BINDIRS:=	bin/brr	\
			bin/gfx

.PHONY: clean binfiles $(BINDIRS)

all: $(TARGET)

clean:
	@rm -f $(TARGET)
	@for dir in $(BINDIRS); do \
		$(MAKE) -C $$dir clean; \
	done

binfiles: $(BINDIRS)

$(BINDIRS):
	@$(MAKE) -C $@

$(TARGET): *.asm
	@rm -f $(TARGET)
	@asarmon $(FLAGS) main.asm $@

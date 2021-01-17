ROMFILE:=	../alttp.sfc

GFXBINS:=	link.4bpp	\
			GFX73.3bpp	\
			GFX74.3bpp	\
			GFX75.3bpp	\
			GFX76.3bpp	\
			GFX77.3bpp	\
			GFX78.3bpp	\
			GFX79.3bpp	\
			GFX7A.3bpp	\
			GFX7B.3bpp	\
			GFX7C.3bpp	\
			GFX7D.3bpp	\
			GFX7E.3bpp

.PHONY: clean

all: $(ROMFILE) $(GFXBINS)

clean:
	@rm -f $(GFXBINS)

# 0x080000-0x086FFF
link.4bpp: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=524288 count=28672 iflag=skip_bytes,count_bytes status=none

# 0x087000-0x0875FF
GFX73.3bpp: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=552960 count=1536 iflag=skip_bytes,count_bytes status=none

# 0x087600-0x087BFF
GFX74.3bpp: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=554496 count=1536 iflag=skip_bytes,count_bytes status=none

# 0x087C00-0x0881FF
GFX75.3bpp: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=556032 count=1536 iflag=skip_bytes,count_bytes status=none

# 0x088200-0x0887FF
GFX76.3bpp: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=557568 count=1536 iflag=skip_bytes,count_bytes status=none

# 0x088800-0x088DFF
GFX77.3bpp: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=559104 count=1536 iflag=skip_bytes,count_bytes status=none

# 0x088E00-0x0893FF
GFX78.3bpp: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=560640 count=1536 iflag=skip_bytes,count_bytes status=none

# 0x089400-0x0899FF
GFX79.3bpp: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=562176 count=1536 iflag=skip_bytes,count_bytes status=none

# 0x089A00-0x089FFF
GFX7A.3bpp: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=563712 count=1536 iflag=skip_bytes,count_bytes status=none

# 0x08A000-0x08A5FF
GFX7B.3bpp: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=565248 count=1536 iflag=skip_bytes,count_bytes status=none

# 0x08A600-0x08ABFF
GFX7C.3bpp: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=566784 count=1536 iflag=skip_bytes,count_bytes status=none

# 0x08AC00-0x08B1FF
GFX7D.3bpp: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=568320 count=1536 iflag=skip_bytes,count_bytes status=none

# 0x08B200-0x08B7FF
GFX7E.3bpp: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=569856 count=1536 iflag=skip_bytes,count_bytes status=none
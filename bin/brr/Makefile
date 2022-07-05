ROMFILE:=	../alttp.sfc

BRRBINS:=	chime.brr		\
			choir.brr		\
			clink.brr		\
			compoundsaw.brr	\
			cymbal.brr		\
			flute.brr		\
			harp.brr		\
			horn.brr		\
			noise.brr		\
			ocarina.brr		\
			oof.brr			\
			piano.brr		\
			rain.brr		\
			saw.brr			\
			snare.brr		\
			splash.brr		\
			square.brr		\
			strings.brr		\
			timpani.brr		\
			trombone.brr	\
			trumpet.brr		\
			tweet.brr		\
			wobbly.brr

.PHONY: clean

all: $(ROMFILE) $(BRRBINS)

clean:
	@rm -f $(BRRBINS)

# 0x0CBC7B-0x0CBD52
chime.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=834683 count=216 iflag=skip_bytes,count_bytes status=none

# 0x0CE234-0x0CEF2C
choir.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=844340 count=3321 iflag=skip_bytes,count_bytes status=none

# 0x0C948B-0x0C94ED
clink.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=824459 count=99 iflag=skip_bytes,count_bytes status=none

# 0x0CAD4B-0x0CBADC
cymbal.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=830795 count=3474 iflag=skip_bytes,count_bytes status=none

# 0x0C94EE-0x0C9586
wobbly.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=824558 count=153 iflag=skip_bytes,count_bytes status=none

# 0x0C9587-0x0C9628
compoundsaw.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=824711 count=162 iflag=skip_bytes,count_bytes status=none

# 0x0CEF2D-0x0CF163
flute.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=847661 count=567 iflag=skip_bytes,count_bytes status=none

# 0x0CF3A4-0X0CFB17
piano.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=848804 count=1908 iflag=skip_bytes,count_bytes status=none

# 0x0CBD53-0x0CBF38
harp.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=834899 count=486 iflag=skip_bytes,count_bytes status=none

# 0x0CCDFD-0x0CD504
horn.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=839165 count=1800 iflag=skip_bytes,count_bytes status=none

# 0x0C8078-0x0C80BF
noise.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=819320 count=72 iflag=skip_bytes,count_bytes status=none

# 0x0CBADD-0x0CBC7A
ocarina.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=834269 count=414 iflag=skip_bytes,count_bytes status=none

# 0x0CF164-0x0CF3A3
oof.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=848228 count=576 iflag=skip_bytes,count_bytes status=none

# 0x0C80C0-0x0C8869
rain.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=819392 count=1962 iflag=skip_bytes,count_bytes status=none

# 0x0C944C-0x0C948A
saw.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=824396 count=63 iflag=skip_bytes,count_bytes status=none

# 0x0CD505-0x0CE233
snare.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=840965 count=3375 iflag=skip_bytes,count_bytes status=none

# 0x0CBF39-0x0CC6F4
splash.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=835385 count=1980 iflag=skip_bytes,count_bytes status=none

# 0x0C940D-0x0C944B
square.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=824333 count=63 iflag=skip_bytes,count_bytes status=none

# 0x0C9BA5-0x0CA924
strings.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=826277 count=3456 iflag=skip_bytes,count_bytes status=none

# 0x0C886A-0x0C940C
timpani.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=821354 count=2979 iflag=skip_bytes,count_bytes status=none

# 0x0CA925-0x0CAD4A
trombone.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=829733 count=1062 iflag=skip_bytes,count_bytes status=none

# 0x0CC6F5-0x0CCDFC
trumpet.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=837365 count=1800 iflag=skip_bytes,count_bytes status=none

# 0x0C9629-0x0C9BA4
tweet.brr: $(ROMFILE)
	@dd if=$< of=$@ bs=4096 skip=824873 count=1404 iflag=skip_bytes,count_bytes status=none

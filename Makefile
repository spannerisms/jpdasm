TARGET:=	alttp_reasm.sfc
FLAGS:=		-wnoW1006 --fix-checksum=off

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

$(TARGET): binfiles *.asm
	@rm -f $(TARGET)
	@asarmon $(FLAGS) main.asm $@
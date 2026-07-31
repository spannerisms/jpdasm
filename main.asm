lorom
math pri on
arch 65816
check bankcross off

incsrc "functions.asm"
incsrc "registers.asm"
incsrc "registers_spc.asm"

incsrc "bank_00.asm"
incsrc "bank_01.asm"
incsrc "bank_02.asm"
incsrc "bank_03.asm"
incsrc "bank_04.asm"
incsrc "bank_05.asm"
incsrc "bank_06.asm"
incsrc "bank_07.asm"
incsrc "bank_08.asm"
incsrc "bank_09.asm"
incsrc "bank_0A.asm"
incsrc "bank_0B.asm"
incsrc "bank_0C.asm"
incsrc "bank_0D.asm"
incsrc "bank_0E.asm"
incsrc "bank_0F.asm"
incsrc "bank_10.asm"
incsrc "bank_11.asm"
incsrc "bank_12.asm"
incsrc "bank_13.asm"
incsrc "bank_14.asm"
incsrc "bank_15.asm"
incsrc "bank_16.asm"
incsrc "bank_17.asm"
incsrc "bank_18.asm"
incsrc "bank_19.asm"
incsrc "bank_1A.asm"
incsrc "bank_1B.asm"
incsrc "bank_1C.asm"
incsrc "bank_1D.asm"
incsrc "bank_1E.asm"
incsrc "bank_1F.asm"

incsrc "bank_20.asm"
incsrc "bank_22.asm"
incsrc "bank_23.asm"
incsrc "bank_26.asm"
incsrc "bank_27.asm"
incsrc "bank_2C.asm"
incsrc "bank_2D.asm"
incsrc "bank_2E.asm"

; [ENG-FS] Pad the ROM up to a clean 2 MB (power-of-2). The English graft expands the ROM
; into banks $20-$2E, leaving it at a non-power-of-2 size (~0x150000). The SNES header
; checksum for a non-power-of-2 ROM is computed by a mirror-and-sum algorithm that asar and
; some emulators (e.g. snes9x) disagree on, which made snes9x report "invalid checksum".
; Padding to exactly 2 MB makes the checksum a plain byte-sum that everyone agrees on, so
; --fix-checksum writes a value snes9x accepts. The gaps between the graft banks ($21, $24-$25,
; $28-$2B, $2F-$3F) are unused ($00 fill) -- valid LoROM space in a 2 MB ROM, free for future use.
org $3FFFFF
db $FF

; Update the ROM-size byte in the SNES header to match the new 2 MB size ($0A=1 MB -> $0B=2 MB;
; the field is 2^n KB). Keeps the header self-consistent with the padded file.
org $00FFD7
db $0B

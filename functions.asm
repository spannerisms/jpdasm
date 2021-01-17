;===================================================================================================
; These functions take the input and divide it by 2.
; This is because when addressing VRAM, the address written to MMIO indexes words, not bytes.
; Showing the actual target VRAM address improves the clarity of the code.
;
; The BE variant is for Big Endian values. Stripes, for whatever reason, use big endian.
;===================================================================================================
function VRAMaddr(a) = a>>1

function VRAMaddrBE(a) = ((((a>>1)&$FF00)>>8)|((a>>1)&$00FF)<<8)

;===================================================================================================
; Asar assembles the move block instructions with the operands flipped from the convention.
; So, unfortunately, they will need to be macros so that properly written code assebmles correctly.
;===================================================================================================
macro MVN(src, dest)
	MVN <dest>, <src>
endmacro

macro MVP(src, dest)
	MVP <dest>, <src>
endmacro

;===================================================================================================
; Automatically create !HEXVAL_XX for 00-FF.
; There's no pretty way to set this up, but it works.
; No way to really set stuff up easily...
;===================================================================================================
!HEXDIG0 = "0"
!HEXDIG1 = "1"
!HEXDIG2 = "2"
!HEXDIG3 = "3"
!HEXDIG4 = "4"
!HEXDIG5 = "5"
!HEXDIG6 = "6"
!HEXDIG7 = "7"
!HEXDIG8 = "8"
!HEXDIG9 = "9"
!HEXDIG10 = "A"
!HEXDIG11 = "B"
!HEXDIG12 = "C"
!HEXDIG13 = "D"
!HEXDIG14 = "E"
!HEXDIG15 = "F"

!DEFINE_ID = 0
while !DEFINE_ID < 256
	!LONIB #= !DEFINE_ID%16
	!HINIB #= !DEFINE_ID/16
	!{HEXVAL_!{DEFINE_ID}} := "!{HEXDIG!{HINIB}}!{HEXDIG!{LONIB}}"
	!DEFINE_ID #= !DEFINE_ID+1
endwhile

macro define_x_ids(name, count)
	!DEFINE_ID = 0

	while !DEFINE_ID < (<count>+1)
		!{<name>_!{HEXVAL_!{DEFINE_ID}}} #= !DEFINE_ID

		!DEFINE_ID #= !DEFINE_ID+1
	endwhile
endmacro

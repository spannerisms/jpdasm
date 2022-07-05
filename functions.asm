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

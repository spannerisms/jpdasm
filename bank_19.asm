org $198000

;===================================================================================================

SPC_ENGINE          = $0800
SFX_DATA            = $17C0
SAMPLE_POINTERS     = $3C00
INSTRUMENT_DATA     = $3D00
INSTRUMENT_DATA_SFX = $3E00
SAMPLE_DATA         = $4000
SONG_POINTERS       = $D000
SONG_POINTERS_AUX   = $2B00
CREDITS_AUX_POINTER = $2900

;===================================================================================================

SamplePointers:
|198000| dw $0070, SAMPLE_POINTERS ; Transfer size, transfer address

site SAMPLE_POINTERS

|198004:3C00| dw $4000, $4012 ; 0x00 - Noise
|198008:3C04| dw $4048, $4063 ; 0x01 - Rain
|19800C:3C08| dw $47F2, $5395 ; 0x02 - Timpani
|198010:3C0C| dw $5395, $53B0 ; 0x03 - Square wave
|198014:3C10| dw $53D4, $53EF ; 0x04 - Saw wave
|198018:3C14| dw $5413, $542E ; 0x05 - Clink
|19801C:3C18| dw $5476, $54A3 ; 0x06 - Wobbly lead
|198020:3C1C| dw $550F, $5521 ; 0x07 - Compound saw
|198024:3C20| dw $55B1, $5B2D ; 0x08 - Tweet
|198028:3C24| dw $5B2D, $60BB ; 0x09 - Strings A
|19802C:3C28| dw $5B2D, $60BB ; 0x0A - Strings B
|198030:3C2C| dw $68AD, $6C9D ; 0x0B - Trombone
|198034:3C30| dw $6CD3, $7A65 ; 0x0C - Cymbal
|198038:3C34| dw $7A65, $7BFA ; 0x0D - Ocarina
|19803C:3C38| dw $7C03, $7C78 ; 0x0E - Chimes
|198040:3C3C| dw $7CDB, $7EA6 ; 0x0F - Harp
|198044:3C40| dw $7EC1, $867D ; 0x10 - Splash
|198048:3C44| dw $867D, $8D6A ; 0x11 - Trumpet
|19804C:3C48| dw $8D85, $944E ; 0x12 - Horn
|198050:3C4C| dw $948D, $A1BC ; 0x13 - Snare A
|198054:3C50| dw $948D, $A1BC ; 0x14 - Snare B
|198058:3C54| dw $A1BC, $A6E7 ; 0x15 - Choir
|19805C:3C58| dw $AEB5, $B0D1 ; 0x16 - Flute
|198060:3C5C| dw $B0EC, $B32C ; 0x17 - Oof
|198064:3C60| dw $B32C, $BA61 ; 0x18 - Piano
|198068:3C64| dw $FFFF, $FFFF ; 0x19 - null
|19806C:3C68| dw $FFFF, $FFFF ; 0x1A - null
|198070:3C6C| dw $FFFF, $FFFF ; 0x1B - null

site *

;===================================================================================================

SampleData:
|198074| dw $7AA0, SAMPLE_DATA ; Transfer size, transfer address

site SAMPLE_DATA

|198078:4000| incbin "bin/brr/noise.brr"
|1980C0:4048| incbin "bin/brr/rain.brr"
|19886A:47F2| incbin "bin/brr/timpani.brr"
|19940D:5395| incbin "bin/brr/square.brr"
|19944C:53D4| incbin "bin/brr/saw.brr"
|19948B:5413| incbin "bin/brr/clink.brr"
|1994EE:5476| incbin "bin/brr/wobbly.brr"
|199587:550F| incbin "bin/brr/compoundsaw.brr"
|199629:55B1| incbin "bin/brr/tweet.brr"
|199BA5:5B2D| incbin "bin/brr/strings.brr"
|19A925:68AD| incbin "bin/brr/trombone.brr"
|19AD4B:6CD3| incbin "bin/brr/cymbal.brr"
|19BADD:7A65| incbin "bin/brr/ocarina.brr"
|19BC7B:7C03| incbin "bin/brr/chime.brr"
|19BD53:7CDB| incbin "bin/brr/harp.brr"
|19BF39:7EC1| incbin "bin/brr/splash.brr"
|19C6F5:867D| incbin "bin/brr/trumpet.brr"
|19CDFD:8D85| incbin "bin/brr/horn.brr"
|19D505:948D| incbin "bin/brr/snare.brr"
|19E234:A1BC| incbin "bin/brr/choir.brr"
|19EF2D:AEB5| incbin "bin/brr/flute.brr"
|19F164:B0EC| incbin "bin/brr/OOF.brr"
|19F3A4:B32C| incbin "bin/brr/piano.brr"

site *

;===================================================================================================

InstrumentData:
|19FB18| dw $00AE, INSTRUMENT_DATA ; Transfer size, transfer address

site INSTRUMENT_DATA

; SRCN, ADSR1, ADSR2, GAIN, MULT (big endian)
|19FB1C:3D00| db $00, $FF, $E0, $B8, $04, $70 ; 0x00 - Noise
|19FB22:3D06| db $01, $FF, $E0, $B8, $07, $90 ; 0x01 - Rain
|19FB28:3D0C| db $02, $FF, $E0, $B8, $09, $C0 ; 0x02 - Timpani
|19FB2E:3D12| db $03, $FF, $E0, $B8, $04, $00 ; 0x03 - Square wave
|19FB34:3D18| db $04, $FF, $E0, $B8, $04, $00 ; 0x04 - Saw wave
|19FB3A:3D1E| db $05, $FF, $E0, $B8, $04, $70 ; 0x05 - Clink
|19FB40:3D24| db $06, $FF, $E0, $B8, $04, $70 ; 0x06 - Wobbly lead
|19FB46:3D2A| db $07, $FF, $E0, $B8, $04, $70 ; 0x07 - Compound saw
|19FB4C:3D30| db $08, $FF, $E0, $B8, $07, $A0 ; 0x08 - Tweet
|19FB52:3D36| db $09, $8F, $E9, $B8, $01, $E0 ; 0x09 - Strings A
|19FB58:3D3C| db $0A, $8A, $E9, $B8, $01, $E0 ; 0x0A - Strings B
|19FB5E:3D42| db $0B, $FF, $E0, $B8, $03, $00 ; 0x0B - Trombone
|19FB64:3D48| db $0C, $FF, $E0, $B8, $03, $A0 ; 0x0C - Cymbal
|19FB6A:3D4E| db $0D, $FF, $E0, $B8, $01, $00 ; 0x0D - Ocarina
|19FB70:3D54| db $0E, $FF, $EF, $B8, $0E, $A0 ; 0x0E - Chimes
|19FB76:3D5A| db $0F, $FF, $EF, $B8, $06, $00 ; 0x0F - Harp
|19FB7C:3D60| db $10, $FF, $E0, $B8, $03, $D0 ; 0x10 - Splash
|19FB82:3D66| db $11, $8F, $E0, $B8, $03, $00 ; 0x11 - Trumpet
|19FB88:3D6C| db $12, $8F, $E0, $B8, $06, $F0 ; 0x12 - Horn
|19FB8E:3D72| db $13, $FD, $E0, $B8, $07, $A0 ; 0x13 - Snare A
|19FB94:3D78| db $14, $FF, $E0, $B8, $07, $A0 ; 0x14 - Snare B
|19FB9A:3D7E| db $15, $FF, $E0, $B8, $03, $D0 ; 0x15 - Choir
|19FBA0:3D84| db $16, $8F, $E0, $B8, $03, $00 ; 0x16 - Flute
|19FBA6:3D8A| db $17, $FF, $E0, $B8, $02, $C0 ; 0x17 - Oof
|19FBAC:3D90| db $18, $FE, $8F, $B8, $06, $F0 ; 0x18 - Piano

;---------------------------------------------------------------------------------------------------

; stacc and attack table (dumb that it's here)
NoteStacc:
|19FBB2:3D96| db $32, $65, $7F, $98, $B2, $CB, $E5, $FC

NoteAttack:
|19FBBA:3D9E| db $19, $32, $4C, $65, $72, $7F, $8C, $98
|19FBC2:3DA6| db $A5, $B2, $BF, $CB, $D8, $E5, $F2, $FC

site *

;===================================================================================================

SPCEngine:
|19FBCA| dw $0F9E, SPC_ENGINE ; Transfer size, transfer address

incsrc "spc.asm"

;===================================================================================================

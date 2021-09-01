org $198000

;===================================================================================================

SamplePointers:
#_198000: dw $0070, SAMPLE_POINTERS ; Transfer size, transfer address

base SAMPLE_POINTERS

#_198004: #_3C00: dw $4000, $4012 ; 0x00 - Noise
#_198008: #_3C04: dw $4048, $4063 ; 0x01 - Rain
#_19800C: #_3C08: dw $47F2, $5395 ; 0x02 - Timpani
#_198010: #_3C0C: dw $5395, $53B0 ; 0x03 - Square wave
#_198014: #_3C10: dw $53D4, $53EF ; 0x04 - Saw wave
#_198018: #_3C14: dw $5413, $542E ; 0x05 - Clink
#_19801C: #_3C18: dw $5476, $54A3 ; 0x06 - Wobbly lead
#_198020: #_3C1C: dw $550F, $5521 ; 0x07 - Compound saw
#_198024: #_3C20: dw $55B1, $5B2D ; 0x08 - Tweet
#_198028: #_3C24: dw $5B2D, $60BB ; 0x09 - Strings A
#_19802C: #_3C28: dw $5B2D, $60BB ; 0x0A - Strings B
#_198030: #_3C2C: dw $68AD, $6C9D ; 0x0B - Trombone
#_198034: #_3C30: dw $6CD3, $7A65 ; 0x0C - Cymbal
#_198038: #_3C34: dw $7A65, $7BFA ; 0x0D - Ocarina
#_19803C: #_3C38: dw $7C03, $7C78 ; 0x0E - Chimes
#_198040: #_3C3C: dw $7CDB, $7EA6 ; 0x0F - Harp
#_198044: #_3C40: dw $7EC1, $867D ; 0x10 - Splash
#_198048: #_3C44: dw $867D, $8D6A ; 0x11 - Trumpet
#_19804C: #_3C48: dw $8D85, $944E ; 0x12 - Horn
#_198050: #_3C4C: dw $948D, $A1BC ; 0x13 - Snare A
#_198054: #_3C50: dw $948D, $A1BC ; 0x14 - Snare B
#_198058: #_3C54: dw $A1BC, $A6E7 ; 0x15 - Choir
#_19805C: #_3C58: dw $AEB5, $B0D1 ; 0x16 - Flute
#_198060: #_3C5C: dw $B0EC, $B32C ; 0x17 - Oof
#_198064: #_3C60: dw $B32C, $BA61 ; 0x18 - Piano
#_198068: #_3C64: dw $FFFF, $FFFF ; 0x19 - null
#_19806C: #_3C68: dw $FFFF, $FFFF ; 0x1A - null
#_198070: #_3C6C: dw $FFFF, $FFFF ; 0x1B - null

base off

;===================================================================================================

SampleData:
#_198074: dw $7AA0, SAMPLE_DATA ; Transfer size, transfer address

base SAMPLE_DATA

#_198078: #_4000: incbin "bin/brr/noise.brr"
#_1980C0: #_4048: incbin "bin/brr/rain.brr"
#_19886A: #_47F2: incbin "bin/brr/timpani.brr"
#_19940D: #_5395: incbin "bin/brr/square.brr"
#_19944C: #_53D4: incbin "bin/brr/saw.brr"
#_19948B: #_5413: incbin "bin/brr/clink.brr"
#_1994EE: #_5476: incbin "bin/brr/wobbly.brr"
#_199587: #_550F: incbin "bin/brr/compoundsaw.brr"
#_199629: #_55B1: incbin "bin/brr/tweet.brr"
#_199BA5: #_5B2D: incbin "bin/brr/strings.brr"
#_19A925: #_68AD: incbin "bin/brr/trombone.brr"
#_19AD4B: #_6CD3: incbin "bin/brr/cymbal.brr"
#_19BADD: #_7A65: incbin "bin/brr/ocarina.brr"
#_19BC7B: #_7C03: incbin "bin/brr/chime.brr"
#_19BD53: #_7CDB: incbin "bin/brr/harp.brr"
#_19BF39: #_7EC1: incbin "bin/brr/splash.brr"
#_19C6F5: #_867D: incbin "bin/brr/trumpet.brr"
#_19CDFD: #_8D85: incbin "bin/brr/horn.brr"
#_19D505: #_948D: incbin "bin/brr/snare.brr"
#_19E234: #_A1BC: incbin "bin/brr/choir.brr"
#_19EF2D: #_AEB5: incbin "bin/brr/flute.brr"
#_19F164: #_B0EC: incbin "bin/brr/OOF.brr"
#_19F3A4: #_B32C: incbin "bin/brr/piano.brr"

base off

;===================================================================================================

InstrumentData:
#_19FB18: dw $00AE, INSTRUMENT_DATA ; Transfer size, transfer address

base INSTRUMENT_DATA

; SRCN, ADSR1, ADSR2, GAIN, MULT (big endian)
#_19FB1C: #_3D00: db $00, $FF, $E0, $B8, $04, $70 ; 0x00 - Noise
#_19FB22: #_3D06: db $01, $FF, $E0, $B8, $07, $90 ; 0x01 - Rain
#_19FB28: #_3D0C: db $02, $FF, $E0, $B8, $09, $C0 ; 0x02 - Timpani
#_19FB2E: #_3D12: db $03, $FF, $E0, $B8, $04, $00 ; 0x03 - Square wave
#_19FB34: #_3D18: db $04, $FF, $E0, $B8, $04, $00 ; 0x04 - Saw wave
#_19FB3A: #_3D1E: db $05, $FF, $E0, $B8, $04, $70 ; 0x05 - Clink
#_19FB40: #_3D24: db $06, $FF, $E0, $B8, $04, $70 ; 0x06 - Wobbly lead
#_19FB46: #_3D2A: db $07, $FF, $E0, $B8, $04, $70 ; 0x07 - Compound saw
#_19FB4C: #_3D30: db $08, $FF, $E0, $B8, $07, $A0 ; 0x08 - Tweet
#_19FB52: #_3D36: db $09, $8F, $E9, $B8, $01, $E0 ; 0x09 - Strings A
#_19FB58: #_3D3C: db $0A, $8A, $E9, $B8, $01, $E0 ; 0x0A - Strings B
#_19FB5E: #_3D42: db $0B, $FF, $E0, $B8, $03, $00 ; 0x0B - Trombone
#_19FB64: #_3D48: db $0C, $FF, $E0, $B8, $03, $A0 ; 0x0C - Cymbal
#_19FB6A: #_3D4E: db $0D, $FF, $E0, $B8, $01, $00 ; 0x0D - Ocarina
#_19FB70: #_3D54: db $0E, $FF, $EF, $B8, $0E, $A0 ; 0x0E - Chimes
#_19FB76: #_3D5A: db $0F, $FF, $EF, $B8, $06, $00 ; 0x0F - Harp
#_19FB7C: #_3D60: db $10, $FF, $E0, $B8, $03, $D0 ; 0x10 - Splash
#_19FB82: #_3D66: db $11, $8F, $E0, $B8, $03, $00 ; 0x11 - Trumpet
#_19FB88: #_3D6C: db $12, $8F, $E0, $B8, $06, $F0 ; 0x12 - Horn
#_19FB8E: #_3D72: db $13, $FD, $E0, $B8, $07, $A0 ; 0x13 - Snare A
#_19FB94: #_3D78: db $14, $FF, $E0, $B8, $07, $A0 ; 0x14 - Snare B
#_19FB9A: #_3D7E: db $15, $FF, $E0, $B8, $03, $D0 ; 0x15 - Choir
#_19FBA0: #_3D84: db $16, $8F, $E0, $B8, $03, $00 ; 0x16 - Flute
#_19FBA6: #_3D8A: db $17, $FF, $E0, $B8, $02, $C0 ; 0x17 - Oof
#_19FBAC: #_3D90: db $18, $FE, $8F, $B8, $06, $F0 ; 0x18 - Piano

;---------------------------------------------------------------------------------------------------

; stacc and attack table (dumb that it's here)
NoteStacc:
#_19FBB2: #_3D96: db $32, $65, $7F, $98, $B2, $CB, $E5, $FC

NoteAttack:
#_19FBB8: #_3D9E: db $19, $32, $4C, $65, $72, $7F, $8C, $98
#_19FBBE: #_3DA6: db $A5, $B2, $BF, $CB, $D8, $E5, $F2, $FC

base off

;===================================================================================================

SPCEngine:
#_19FBCA: dw $0F9E, SPC_ENGINE ; Transfer size, transfer address

incsrc "spc.asm"

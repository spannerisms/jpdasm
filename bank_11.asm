org $118200

; 0x200 bytes bleed from a file in bank10

;===================================================================================================

GFX_76:
#_118200: incbin "bin/gfx/GFX76.3bpp"

GFX_77:
#_118800: incbin "bin/gfx/GFX77.3bpp"

GFX_78:
#_118E00: incbin "bin/gfx/GFX78.3bpp"

GFX_79:
#_119400: incbin "bin/gfx/GFX79.3bpp"

GFX_7A:
#_119A00: incbin "bin/gfx/GFX7A.3bpp"

GFX_7B:
#_11A000: incbin "bin/gfx/GFX7B.3bpp"

GFX_7C:
#_11A600: incbin "bin/gfx/GFX7C.3bpp"

GFX_7D:
#_11AC00: incbin "bin/gfx/GFX7D.3bpp"

GFX_7E:
#_11B200: incbin "bin/gfx/GFX7E.3bpp"

;===================================================================================================

GFX_00:
#_11B800: db $03 ; Direct Copy
#_11B801: db $FF, $00, $F8, $60
#_11B805: db $43 ; Word Fill
#_11B806: db $FF, $6F ; Word Fill
#_11B808: db $13 ; Direct Copy
#_11B809: db $5F, $A7, $6D, $87, $7D, $B7, $FD, $37
#_11B811: db $60, $0F, $00, $09, $07, $37, $07, $07
#_11B819: db $FF, $00, $07, $00
#_11B81D: db $22 ; Byte Fill
#_11B81E: db $FF
#_11B81F: db $10 ; Direct Copy
#_11B820: db $7D, $47, $3C, $3C, $18, $59, $42, $A3
#_11B828: db $A4, $00, $FE, $00, $FC, $FF, $FF, $BC
#_11B830: db $58
#_11B831: db $83 ; Repeat Fill
#_11B832: db $18, $00 ; Repeat Fill bytes
#_11B834: db $22 ; Byte Fill
#_11B835: db $FF
#_11B836: db $44 ; Word Fill
#_11B837: db $FD, $23 ; Word Fill
#_11B839: db $06 ; Direct Copy
#_11B83A: db $24, $F8, $29, $F2, $00, $FE, $00
#_11B841: db $22 ; Byte Fill
#_11B842: db $FC
#_11B843: db $E0, $29 ; EXT Direct Copy
#_11B845: db $FB, $F4, $F1, $0E, $FF, $70, $F7, $7B
#_11B84D: db $FB, $03, $FF, $30, $BF, $3F, $B8, $3F
#_11B855: db $BF, $3F, $00, $80, $84, $04, $50, $4F
#_11B85D: db $4F, $5F, $0C, $F7, $CC, $37, $FC, $87
#_11B865: db $9F, $D8, $DD, $19, $FF, $C0, $4F, $DE
#_11B86D: db $C5, $DE
#_11B86F: db $22 ; Byte Fill
#_11B870: db $00
#_11B871: db $04 ; Direct Copy
#_11B872: db $20, $22, $C0, $EE, $EC
#_11B877: db $43 ; Word Fill
#_11B878: db $B0, $3F ; Word Fill
#_11B87A: db $0B ; Direct Copy
#_11B87B: db $BF, $3F, $B0, $3F, $B1, $3E, $F2, $3C
#_11B883: db $FD, $20, $FD, $3C
#_11B887: db $23 ; Byte Fill
#_11B888: db $5F
#_11B889: db $08 ; Direct Copy
#_11B88A: db $5E, $5D, $42, $02, $4F, $DE, $47, $DE
#_11B892: db $C7
#_11B893: db $83 ; Repeat Fill
#_11B894: db $91, $00 ; Repeat Fill bytes
#_11B896: db $06 ; Direct Copy
#_11B897: db $1E, $7F, $42, $8F, $0A, $F7, $02
#_11B89E: db $23 ; Byte Fill
#_11B89F: db $EC
#_11B8A0: db $03 ; Direct Copy
#_11B8A1: db $2C, $80, $70, $08
#_11B8A5: db $45 ; Word Fill
#_11B8A6: db $FF, $00 ; Word Fill
#_11B8A8: db $00 ; Direct Copy
#_11B8A9: db $00
#_11B8AA: db $22 ; Byte Fill
#_11B8AB: db $FF
#_11B8AC: db $04 ; Direct Copy
#_11B8AD: db $00, $00, $80, $7F, $FF
#_11B8B2: db $25 ; Byte Fill
#_11B8B3: db $00
#_11B8B4: db $04 ; Direct Copy
#_11B8B5: db $FF, $00, $00, $E7, $18
#_11B8BA: db $45 ; Word Fill
#_11B8BB: db $E7, $78 ; Word Fill
#_11B8BD: db $08 ; Direct Copy
#_11B8BE: db $43, $BC, $63, $8C, $73, $BC, $F3, $3C
#_11B8C6: db $60
#_11B8C7: db $23 ; Byte Fill
#_11B8C8: db $00
#_11B8C9: db $02 ; Direct Copy
#_11B8CA: db $30, $00, $00
#_11B8CD: db $85 ; Repeat Fill
#_11B8CE: db $48, $00 ; Repeat Fill bytes
#_11B8D0: db $05 ; Direct Copy
#_11B8D1: db $83, $7B, $80, $7F, $F8, $07
#_11B8D7: db $43 ; Word Fill
#_11B8D8: db $FF, $00 ; Word Fill
#_11B8DA: db $83 ; Repeat Fill
#_11B8DB: db $58, $00 ; Repeat Fill bytes
#_11B8DD: db $23 ; Byte Fill
#_11B8DE: db $00
#_11B8DF: db $87 ; Repeat Fill
#_11B8E0: db $60, $00 ; Repeat Fill bytes
#_11B8E2: db $06 ; Direct Copy
#_11B8E3: db $1D, $D9, $00, $FF, $FF, $00, $FF
#_11B8EA: db $23 ; Byte Fill
#_11B8EB: db $00
#_11B8EC: db $01 ; Direct Copy
#_11B8ED: db $20, $22
#_11B8EF: db $22 ; Byte Fill
#_11B8F0: db $00
#_11B8F1: db $E0, $42 ; EXT Direct Copy
#_11B8F3: db $7D, $B7, $EF, $17, $24, $C0, $FC, $1B
#_11B8FB: db $3E, $DB, $FF, $03, $16, $E3, $FF, $08
#_11B903: db $07, $07, $1B, $00, $03, $03, $0A, $00
#_11B90B: db $7D, $B7, $EA, $17, $26, $C3, $FE, $1B
#_11B913: db $3E, $DB, $FC, $02, $15, $E3, $FF, $08
#_11B91B: db $00, $00, $18, $00, $00, $01, $08, $00
#_11B923: db $73, $BC, $E3, $1C, $23, $C4, $FB, $1C
#_11B92B: db $3B, $DC, $FB, $04, $13, $E4, $FB, $0C
#_11B933: db $00, $00, $18
#_11B936: db $22 ; Byte Fill
#_11B937: db $00
#_11B938: db $0A ; Direct Copy
#_11B939: db $08, $00, $7E, $B6, $ED, $11, $27, $C3
#_11B941: db $FF, $1B, $3F
#_11B944: db $87 ; Repeat Fill
#_11B945: db $11, $01 ; Repeat Fill bytes
#_11B947: db $05 ; Direct Copy
#_11B948: db $02, $19, $03, $03, $02, $0A
#_11B94E: db $93 ; Repeat Fill
#_11B94F: db $37, $01 ; Repeat Fill bytes
#_11B951: db $22 ; Byte Fill
#_11B952: db $00
#_11B953: db $11 ; Direct Copy
#_11B954: db $08, $00, $7D, $B7, $6F, $97, $24, $C0
#_11B95C: db $3C, $DB, $FE, $1B, $FF, $E3, $16, $E3
#_11B964: db $1F, $E8
#_11B966: db $87 ; Repeat Fill
#_11B967: db $18, $01 ; Repeat Fill bytes
#_11B969: db $E0, $23 ; EXT Direct Copy
#_11B96B: db $D7, $50, $E7, $A0, $33, $10, $49, $88
#_11B973: db $9D, $14, $BD, $20, $FE, $5A, $FF, $00
#_11B97B: db $28, $98, $CC, $36, $62, $42, $01, $00
#_11B983: db $2B, $F0, $FD, $F4, $05, $00, $05, $F8
#_11B98B: db $86, $FA, $FF, $F8
#_11B98F: db $22 ; Byte Fill
#_11B990: db $FF
#_11B991: db $06 ; Direct Copy
#_11B992: db $00, $F4, $F2, $FA, $02, $F9, $F8
#_11B999: db $25 ; Byte Fill
#_11B99A: db $00
#_11B99B: db $0D ; Direct Copy
#_11B99C: db $3F, $3F, $31, $31, $23, $23, $27, $27
#_11B9A4: db $2E, $2E, $3C, $3C, $00, $7F
#_11B9AA: db $25 ; Byte Fill
#_11B9AB: db $40
#_11B9AC: db $07 ; Direct Copy
#_11B9AD: db $00, $FF, $00, $80, $1E, $9E, $1F, $9F
#_11B9B5: db $45 ; Word Fill
#_11B9B6: db $3F, $BF ; Word Fill
#_11B9B8: db $05 ; Direct Copy
#_11B9B9: db $1F, $9F, $00, $7F, $61, $60
#_11B9BF: db $22 ; Byte Fill
#_11B9C0: db $40
#_11B9C1: db $00 ; Direct Copy
#_11B9C2: db $60
#_11B9C3: db $43 ; Word Fill
#_11B9C4: db $00, $FF ; Word Fill
#_11B9C6: db $00 ; Direct Copy
#_11B9C7: db $10
#_11B9C8: db $44 ; Word Fill
#_11B9C9: db $FF, $00 ; Word Fill
#_11B9CB: db $04 ; Direct Copy
#_11B9CC: db $40, $FF, $04, $FF, $00
#_11B9D1: db $28 ; Byte Fill
#_11B9D2: db $FF
#_11B9D3: db $02 ; Direct Copy
#_11B9D4: db $E0, $1F, $EF
#_11B9D7: db $83 ; Repeat Fill
#_11B9D8: db $FC, $01 ; Repeat Fill bytes
#_11B9DA: db $03 ; Direct Copy
#_11B9DB: db $7F, $C0, $7F, $FF
#_11B9DF: db $22 ; Byte Fill
#_11B9E0: db $00
#_11B9E1: db $01 ; Direct Copy
#_11B9E2: db $FF, $FF
#_11B9E4: db $25 ; Byte Fill
#_11B9E5: db $00
#_11B9E6: db $01 ; Direct Copy
#_11B9E7: db $FF, $00
#_11B9E9: db $43 ; Word Fill
#_11B9EA: db $FF, $7F ; Word Fill
#_11B9EC: db $05 ; Direct Copy
#_11B9ED: db $80, $00, $C0, $3F, $FF, $00
#_11B9F3: db $43 ; Word Fill
#_11B9F4: db $FF, $3F ; Word Fill
#_11B9F6: db $00 ; Direct Copy
#_11B9F7: db $C0
#_11B9F8: db $22 ; Byte Fill
#_11B9F9: db $00
#_11B9FA: db $00 ; Direct Copy
#_11B9FB: db $7F
#_11B9FC: db $23 ; Byte Fill
#_11B9FD: db $00
#_11B9FE: db $13 ; Direct Copy
#_11B9FF: db $3F, $73, $BC, $63, $9C, $23, $C4, $3B
#_11BA07: db $DC, $FB, $1C, $FB, $E4, $13, $E4, $1B
#_11BA0F: db $EC, $00, $00, $18
#_11BA13: db $22 ; Byte Fill
#_11BA14: db $00
#_11BA15: db $11 ; Direct Copy
#_11BA16: db $08, $00, $CF, $31, $C6, $3B, $8C, $77
#_11BA1E: db $99, $6E, $33, $DC, $6C, $B0, $F3, $43
#_11BA26: db $FF, $3F
#_11BA28: db $24 ; Byte Fill
#_11BA29: db $00
#_11BA2A: db $0C ; Direct Copy
#_11BA2B: db $03, $0C, $00, $3F, $C0, $1F, $E0, $75
#_11BA33: db $86, $CE, $0F, $3E, $3F
#_11BA38: db $25 ; Byte Fill
#_11BA39: db $FF
#_11BA3A: db $04 ; Direct Copy
#_11BA3B: db $00, $00, $08, $30, $C0
#_11BA40: db $22 ; Byte Fill
#_11BA41: db $00
#_11BA42: db $05 ; Direct Copy
#_11BA43: db $55, $AA, $D5, $2A, $FD, $82
#_11BA49: db $89 ; Repeat Fill
#_11BA4A: db $66, $00 ; Repeat Fill bytes
#_11BA4C: db $22 ; Byte Fill
#_11BA4D: db $00
#_11BA4E: db $84 ; Repeat Fill
#_11BA4F: db $73, $00 ; Repeat Fill bytes
#_11BA51: db $89 ; Repeat Fill
#_11BA52: db $88, $02 ; Repeat Fill bytes
#_11BA54: db $05 ; Direct Copy
#_11BA55: db $BF, $C0, $79, $FE, $83, $FA
#_11BA5B: db $22 ; Byte Fill
#_11BA5C: db $00
#_11BA5D: db $83 ; Repeat Fill
#_11BA5E: db $03, $01 ; Repeat Fill bytes
#_11BA60: db $00 ; Direct Copy
#_11BA61: db $04
#_11BA62: db $87 ; Repeat Fill
#_11BA63: db $88, $02 ; Repeat Fill bytes
#_11BA65: db $86 ; Repeat Fill
#_11BA66: db $F8, $00 ; Repeat Fill bytes
#_11BA68: db $23 ; Byte Fill
#_11BA69: db $00
#_11BA6A: db $01 ; Direct Copy
#_11BA6B: db $20, $22
#_11BA6D: db $22 ; Byte Fill
#_11BA6E: db $00
#_11BA6F: db $8A ; Repeat Fill
#_11BA70: db $88, $02 ; Repeat Fill bytes
#_11BA72: db $04 ; Direct Copy
#_11BA73: db $80, $BF, $BE, $7D, $7E
#_11BA78: db $22 ; Byte Fill
#_11BA79: db $00
#_11BA7A: db $04 ; Direct Copy
#_11BA7B: db $20, $22, $80, $DE, $B8
#_11BA80: db $8E ; Repeat Fill
#_11BA81: db $B8, $02 ; Repeat Fill bytes
#_11BA83: db $23 ; Byte Fill
#_11BA84: db $00
#_11BA85: db $01 ; Direct Copy
#_11BA86: db $20, $22
#_11BA88: db $22 ; Byte Fill
#_11BA89: db $00
#_11BA8A: db $13 ; Direct Copy
#_11BA8B: db $FF, $00, $FA, $6F, $F2, $6F, $F6, $6F
#_11BA93: db $5A, $A7, $6A, $87, $7A, $B7, $FB, $37
#_11BA9B: db $60, $03, $03, $07
#_11BA9F: db $85 ; Repeat Fill
#_11BAA0: db $14, $00 ; Repeat Fill bytes
#_11BAA2: db $47 ; Word Fill
#_11BAA3: db $9F, $E0 ; Word Fill
#_11BAA5: db $06 ; Direct Copy
#_11BAA6: db $DF, $E0, $9F, $A0, $5F, $60, $00
#_11BAAD: db $25 ; Byte Fill
#_11BAAE: db $C0
#_11BAAF: db $00 ; Direct Copy
#_11BAB0: db $80
#_11BAB1: db $87 ; Repeat Fill
#_11BAB2: db $48, $00 ; Repeat Fill bytes
#_11BAB4: db $07 ; Direct Copy
#_11BAB5: db $CF, $70, $90, $7F, $FF, $7F, $81, $7F
#_11BABD: db $84 ; Repeat Fill
#_11BABE: db $E8, $00 ; Repeat Fill bytes
#_11BAC0: db $02 ; Direct Copy
#_11BAC1: db $1F, $7F, $7F
#_11BAC4: db $8A ; Repeat Fill
#_11BAC5: db $60, $00 ; Repeat Fill bytes
#_11BAC7: db $84 ; Repeat Fill
#_11BAC8: db $DB, $02 ; Repeat Fill bytes
#_11BACA: db $22 ; Byte Fill
#_11BACB: db $00
#_11BACC: db $84 ; Repeat Fill
#_11BACD: db $E3, $02 ; Repeat Fill bytes
#_11BACF: db $02 ; Direct Copy
#_11BAD0: db $FF, $00, $F0
#_11BAD3: db $44 ; Word Fill
#_11BAD4: db $6F, $FB ; Word Fill
#_11BAD6: db $01 ; Direct Copy
#_11BAD7: db $55, $AF
#_11BAD9: db $86 ; Repeat Fill
#_11BADA: db $0A, $00 ; Repeat Fill bytes
#_11BADC: db $23 ; Byte Fill
#_11BADD: db $00
#_11BADE: db $00 ; Direct Copy
#_11BADF: db $30
#_11BAE0: db $84 ; Repeat Fill
#_11BAE1: db $BB, $00 ; Repeat Fill bytes
#_11BAE3: db $23 ; Byte Fill
#_11BAE4: db $FF
#_11BAE5: db $08 ; Direct Copy
#_11BAE6: db $3F, $FF, $1F, $FF, $0F, $7F, $07, $9F
#_11BAEE: db $83
#_11BAEF: db $25 ; Byte Fill
#_11BAF0: db $00
#_11BAF1: db $01 ; Direct Copy
#_11BAF2: db $80, $60
#_11BAF4: db $87 ; Repeat Fill
#_11BAF5: db $48, $00 ; Repeat Fill bytes
#_11BAF7: db $06 ; Direct Copy
#_11BAF8: db $B7, $78, $8F, $7F, $B0, $7F, $BF
#_11BAFF: db $84 ; Repeat Fill
#_11BB00: db $3F, $03 ; Repeat Fill bytes
#_11BB02: db $23 ; Byte Fill
#_11BB03: db $00
#_11BB04: db $89 ; Repeat Fill
#_11BB05: db $60, $00 ; Repeat Fill bytes
#_11BB07: db $85 ; Repeat Fill
#_11BB08: db $AA, $02 ; Repeat Fill bytes
#_11BB0A: db $22 ; Byte Fill
#_11BB0B: db $00
#_11BB0C: db $84 ; Repeat Fill
#_11BB0D: db $B3, $02 ; Repeat Fill bytes
#_11BB0F: db $83 ; Repeat Fill
#_11BB10: db $60, $03 ; Repeat Fill bytes
#_11BB12: db $0C ; Direct Copy
#_11BB13: db $FF, $6F, $FE, $6F, $5C, $A6, $69, $85
#_11BB1B: db $7F, $B6, $FF, $34, $60
#_11BB20: db $22 ; Byte Fill
#_11BB21: db $00
#_11BB22: db $01 ; Direct Copy
#_11BB23: db $01, $32
#_11BB25: db $85 ; Repeat Fill
#_11BB26: db $76, $03 ; Repeat Fill bytes
#_11BB28: db $0B ; Direct Copy
#_11BB29: db $7E, $FF, $3C, $7E, $99, $BD, $C3, $5A
#_11BB31: db $E7, $24, $FF, $18
#_11BB35: db $22 ; Byte Fill
#_11BB36: db $00
#_11BB37: db $03 ; Direct Copy
#_11BB38: db $81, $42, $24, $18
#_11BB3C: db $86 ; Repeat Fill
#_11BB3D: db $D7, $00 ; Repeat Fill bytes
#_11BB3F: db $09 ; Direct Copy
#_11BB40: db $FB, $03, $BF, $70, $BB, $7F, $B3, $7A
#_11BB48: db $A7, $74
#_11BB4A: db $85 ; Repeat Fill
#_11BB4B: db $E8, $00 ; Repeat Fill bytes
#_11BB4D: db $01 ; Direct Copy
#_11BB4E: db $04, $08
#_11BB50: db $89 ; Repeat Fill
#_11BB51: db $60, $00 ; Repeat Fill bytes
#_11BB53: db $84 ; Repeat Fill
#_11BB54: db $FA, $00 ; Repeat Fill bytes
#_11BB56: db $23 ; Byte Fill
#_11BB57: db $00
#_11BB58: db $01 ; Direct Copy
#_11BB59: db $20, $22
#_11BB5B: db $22 ; Byte Fill
#_11BB5C: db $00
#_11BB5D: db $01 ; Direct Copy
#_11BB5E: db $FF, $00
#_11BB60: db $43 ; Word Fill
#_11BB61: db $00, $FF ; Word Fill
#_11BB63: db $08 ; Direct Copy
#_11BB64: db $FF, $00, $C5, $06, $BF, $3D, $82, $7D
#_11BB6C: db $FF
#_11BB6D: db $24 ; Byte Fill
#_11BB6E: db $00
#_11BB6F: db $01 ; Direct Copy
#_11BB70: db $79, $40
#_11BB72: db $83 ; Repeat Fill
#_11BB73: db $BB, $00 ; Repeat Fill bytes
#_11BB75: db $43 ; Word Fill
#_11BB76: db $00, $FF ; Word Fill
#_11BB78: db $08 ; Direct Copy
#_11BB79: db $FF, $00, $04, $08, $FF, $F7, $08, $F7
#_11BB81: db $FF
#_11BB82: db $24 ; Byte Fill
#_11BB83: db $00
#_11BB84: db $00 ; Direct Copy
#_11BB85: db $F7
#_11BB86: db $22 ; Byte Fill
#_11BB87: db $00
#_11BB88: db $0F ; Direct Copy
#_11BB89: db $FF, $00, $FE, $01, $F8, $07, $F0, $0F
#_11BB91: db $E6, $1F, $F9, $07, $E6, $19, $C1, $3E
#_11BB99: db $27 ; Byte Fill
#_11BB9A: db $00
#_11BB9B: db $0F ; Direct Copy
#_11BB9C: db $F8, $0F, $34, $CF, $1A, $E7, $0D, $F3
#_11BBA4: db $06, $F9, $83, $FC, $61, $FE, $98, $7F
#_11BBAC: db $27 ; Byte Fill
#_11BBAD: db $00
#_11BBAE: db $08 ; Direct Copy
#_11BBAF: db $7E, $B6, $6D, $91, $27, $C3, $3F, $DB
#_11BBB7: db $FF
#_11BBB8: db $87 ; Repeat Fill
#_11BBB9: db $89, $01 ; Repeat Fill bytes
#_11BBBB: db $86 ; Repeat Fill
#_11BBBC: db $61, $01 ; Repeat Fill bytes
#_11BBBE: db $13 ; Direct Copy
#_11BBBF: db $DF, $E0, $D5, $EA, $5A, $E5, $50, $EF
#_11BBC7: db $A0, $DF, $40, $BF, $BF, $7F, $7F, $FF
#_11BBCF: db $40, $C0, $C0, $80
#_11BBD3: db $23 ; Byte Fill
#_11BBD4: db $00
#_11BBD5: db $05 ; Direct Copy
#_11BBD6: db $FE, $7E, $85, $7D, $80, $7F
#_11BBDC: db $49 ; Word Fill
#_11BBDD: db $FF, $00 ; Word Fill
#_11BBDF: db $01 ; Direct Copy
#_11BBE0: db $7F, $7E
#_11BBE2: db $25 ; Byte Fill
#_11BBE3: db $00
#_11BBE4: db $0B ; Direct Copy
#_11BBE5: db $CA, $FD, $F5, $FB, $0B, $F7, $F3, $0F
#_11BBED: db $A3, $5F, $C3, $3F
#_11BBF1: db $83 ; Repeat Fill
#_11BBF2: db $D0, $04 ; Repeat Fill bytes
#_11BBF4: db $01 ; Direct Copy
#_11BBF5: db $70, $E0
#_11BBF7: db $25 ; Byte Fill
#_11BBF8: db $00
#_11BBF9: db $0F ; Direct Copy
#_11BBFA: db $7D, $B7, $6A, $97, $26, $C3, $3E, $DB
#_11BC02: db $FE, $1B, $FC, $E2, $15, $E3, $1F, $E8
#_11BC0A: db $87 ; Repeat Fill
#_11BC0B: db $30, $01 ; Repeat Fill bytes
#_11BC0D: db $E0, $23 ; EXT Direct Copy
#_11BC0F: db $E3, $E3, $FF, $FF, $BE, $FF, $1C, $BE
#_11BC17: db $49, $5D, $E3, $AA, $F7, $14, $FF, $00
#_11BC1F: db $1C, $00, $00, $41, $A2, $14, $08, $00
#_11BC27: db $BD, $61, $BE, $60, $BE, $70, $BF, $78
#_11BC2F: db $BF, $7C, $BF, $7E
#_11BC33: db $43 ; Word Fill
#_11BC34: db $BF, $7F ; Word Fill
#_11BC36: db $02 ; Direct Copy
#_11BC37: db $02, $01, $01
#_11BC3A: db $24 ; Byte Fill
#_11BC3B: db $00
#_11BC3C: db $0B ; Direct Copy
#_11BC3D: db $E7, $F4, $CF, $E8, $E7, $F4, $73, $7A
#_11BC45: db $79, $7C, $73, $7A
#_11BC49: db $83 ; Repeat Fill
#_11BC4A: db $28, $05 ; Repeat Fill bytes
#_11BC4C: db $0B ; Direct Copy
#_11BC4D: db $08, $10, $08, $84, $82, $84, $08, $10
#_11BC55: db $7B, $B4, $6B, $94
#_11BC59: db $85 ; Repeat Fill
#_11BC5A: db $44, $02 ; Repeat Fill bytes
#_11BC5C: db $00 ; Direct Copy
#_11BC5D: db $DB
#_11BC5E: db $87 ; Repeat Fill
#_11BC5F: db $4B, $02 ; Repeat Fill bytes
#_11BC61: db $22 ; Byte Fill
#_11BC62: db $00
#_11BC63: db $07 ; Direct Copy
#_11BC64: db $08, $00, $FF, $00, $55, $AA, $AA, $55
#_11BC6C: db $44 ; Word Fill
#_11BC6D: db $00, $FF ; Word Fill
#_11BC6F: db $24 ; Byte Fill
#_11BC70: db $FF
#_11BC71: db $27 ; Byte Fill
#_11BC72: db $00
#_11BC73: db $05 ; Direct Copy
#_11BC74: db $8F, $68, $A7, $74, $B3, $7A
#_11BC7A: db $43 ; Word Fill
#_11BC7B: db $B9, $7D ; Word Fill
#_11BC7D: db $83 ; Repeat Fill
#_11BC7E: db $FC, $03 ; Repeat Fill bytes
#_11BC80: db $09 ; Direct Copy
#_11BC81: db $8F, $68, $10, $08, $04, $02, $02, $04
#_11BC89: db $08, $10
#_11BC8B: db $87 ; Repeat Fill
#_11BC8C: db $D0, $04 ; Repeat Fill bytes
#_11BC8E: db $87 ; Repeat Fill
#_11BC8F: db $D0, $04 ; Repeat Fill bytes
#_11BC91: db $27 ; Byte Fill
#_11BC92: db $00
#_11BC93: db $02 ; Direct Copy
#_11BC94: db $97, $68, $9D
#_11BC97: db $48 ; Word Fill
#_11BC98: db $66, $95 ; Word Fill
#_11BC9A: db $83 ; Repeat Fill
#_11BC9B: db $A0, $05 ; Repeat Fill bytes
#_11BC9D: db $00 ; Direct Copy
#_11BC9E: db $00
#_11BC9F: db $24 ; Byte Fill
#_11BCA0: db $08
#_11BCA1: db $01 ; Direct Copy
#_11BCA2: db $00, $08
#_11BCA4: db $47 ; Word Fill
#_11BCA5: db $95, $66 ; Word Fill
#_11BCA7: db $02 ; Direct Copy
#_11BCA8: db $97, $68, $9D
#_11BCAB: db $44 ; Word Fill
#_11BCAC: db $66, $95 ; Word Fill
#_11BCAE: db $23 ; Byte Fill
#_11BCAF: db $08
#_11BCB0: db $00 ; Direct Copy
#_11BCB1: db $00
#_11BCB2: db $22 ; Byte Fill
#_11BCB3: db $08
#_11BCB4: db $0B ; Direct Copy
#_11BCB5: db $BE, $7F, $0F, $8F, $70, $F0, $FF, $07
#_11BCBD: db $FF, $00, $E3, $FC
#_11BCC1: db $23 ; Byte Fill
#_11BCC2: db $FF
#_11BCC3: db $02 ; Direct Copy
#_11BCC4: db $00, $70, $0F
#_11BCC7: db $24 ; Byte Fill
#_11BCC8: db $00
#_11BCC9: db $0F ; Direct Copy
#_11BCCA: db $66, $9F, $9E, $E1, $E7, $F8, $19, $1E
#_11BCD2: db $F2, $13, $FF, $00, $8F, $F0, $FE, $FF
#_11BCDA: db $22 ; Byte Fill
#_11BCDB: db $00
#_11BCDC: db $01 ; Direct Copy
#_11BCDD: db $E0, $0C
#_11BCDF: db $22 ; Byte Fill
#_11BCE0: db $00
#_11BCE1: db $FF ; End of GFX 00

;===================================================================================================

GFX_01:
#_11BCE2: db $23 ; Byte Fill
#_11BCE3: db $00
#_11BCE4: db $05 ; Direct Copy
#_11BCE5: db $FC, $FC, $CC, $CC, $84, $84
#_11BCEB: db $25 ; Byte Fill
#_11BCEC: db $04
#_11BCED: db $01 ; Direct Copy
#_11BCEE: db $00, $FE
#_11BCF0: db $25 ; Byte Fill
#_11BCF1: db $02
#_11BCF2: db $0B ; Direct Copy
#_11BCF3: db $38, $38, $30, $30, $20, $20, $21, $21
#_11BCFB: db $23, $23, $3F, $3F
#_11BCFF: db $23 ; Byte Fill
#_11BD00: db $00
#_11BD01: db $25 ; Byte Fill
#_11BD02: db $40
#_11BD03: db $07 ; Direct Copy
#_11BD04: db $7F, $00, $24, $24, $44, $44, $84, $84
#_11BD0C: db $23 ; Byte Fill
#_11BD0D: db $04
#_11BD0E: db $01 ; Direct Copy
#_11BD0F: db $FC, $FC
#_11BD11: db $23 ; Byte Fill
#_11BD12: db $00
#_11BD13: db $25 ; Byte Fill
#_11BD14: db $02
#_11BD15: db $01 ; Direct Copy
#_11BD16: db $FE, $00
#_11BD18: db $47 ; Word Fill
#_11BD19: db $92, $6D ; Word Fill
#_11BD1B: db $01 ; Direct Copy
#_11BD1C: db $93, $6C
#_11BD1E: db $43 ; Word Fill
#_11BD1F: db $92, $6D ; Word Fill
#_11BD21: db $01 ; Direct Copy
#_11BD22: db $F2, $0D
#_11BD24: db $27 ; Byte Fill
#_11BD25: db $00
#_11BD26: db $45 ; Word Fill
#_11BD27: db $55, $AA ; Word Fill
#_11BD29: db $03 ; Direct Copy
#_11BD2A: db $5D, $A2, $D5, $2A
#_11BD2E: db $45 ; Word Fill
#_11BD2F: db $55, $AA ; Word Fill
#_11BD31: db $27 ; Byte Fill
#_11BD32: db $00
#_11BD33: db $04 ; Direct Copy
#_11BD34: db $66, $00, $80, $00, $8C
#_11BD39: db $22 ; Byte Fill
#_11BD3A: db $00
#_11BD3B: db $04 ; Direct Copy
#_11BD3C: db $20, $00, $A0, $00, $80
#_11BD41: db $2A ; Byte Fill
#_11BD42: db $00
#_11BD43: db $0B ; Direct Copy
#_11BD44: db $FF, $00, $C0, $3F, $A0, $5F, $9F, $60
#_11BD4C: db $98, $67, $94, $6B
#_11BD50: db $43 ; Word Fill
#_11BD51: db $93, $6C ; Word Fill
#_11BD53: db $27 ; Byte Fill
#_11BD54: db $00
#_11BD55: db $0F ; Direct Copy
#_11BD56: db $80, $7F, $7F, $80, $60, $9F, $5F, $A0
#_11BD5E: db $58, $A7, $57, $A8, $56, $A9, $55, $AA
#_11BD66: db $27 ; Byte Fill
#_11BD67: db $00
#_11BD68: db $83 ; Repeat Fill
#_11BD69: db $A8, $00 ; Repeat Fill bytes
#_11BD6B: db $0B ; Direct Copy
#_11BD6C: db $64, $9B, $5F, $A0, $5A, $A5, $77, $88
#_11BD74: db $5E, $A1, $55, $AA
#_11BD78: db $27 ; Byte Fill
#_11BD79: db $00
#_11BD7A: db $0F ; Direct Copy
#_11BD7B: db $8D, $F6, $99, $6E, $72, $9D, $64, $BB
#_11BD83: db $C9, $76, $9A, $E5, $2C, $D3, $49, $B6
#_11BD8B: db $27 ; Byte Fill
#_11BD8C: db $00
#_11BD8D: db $0F ; Direct Copy
#_11BD8E: db $93, $6C, $26, $D9, $4D, $B2, $FB, $04
#_11BD96: db $36, $C9, $6D, $92, $DF, $20, $B6, $49
#_11BD9E: db $27 ; Byte Fill
#_11BD9F: db $00
#_11BDA0: db $07 ; Direct Copy
#_11BDA1: db $ED, $12, $DB, $24, $B6, $49, $7D, $82
#_11BDA9: db $83 ; Repeat Fill
#_11BDAA: db $0A, $01 ; Repeat Fill bytes
#_11BDAC: db $03 ; Direct Copy
#_11BDAD: db $6D, $92, $DA, $25
#_11BDB1: db $27 ; Byte Fill
#_11BDB2: db $00
#_11BDB3: db $07 ; Direct Copy
#_11BDB4: db $C0, $3F, $81, $7E, $BD, $00, $C3, $42
#_11BDBC: db $47 ; Word Fill
#_11BDBD: db $BD, $7E ; Word Fill
#_11BDBF: db $03 ; Direct Copy
#_11BDC0: db $00, $00, $7E, $3C
#_11BDC4: db $23 ; Byte Fill
#_11BDC5: db $00
#_11BDC6: db $00 ; Direct Copy
#_11BDC7: db $FF
#_11BDC8: db $46 ; Word Fill
#_11BDC9: db $00, $81 ; Word Fill
#_11BDCB: db $83 ; Repeat Fill
#_11BDCC: db $24, $01 ; Repeat Fill bytes
#_11BDCE: db $43 ; Word Fill
#_11BDCF: db $BD, $7E ; Word Fill
#_11BDD1: db $00 ; Direct Copy
#_11BDD2: db $00
#_11BDD3: db $23 ; Byte Fill
#_11BDD4: db $7E
#_11BDD5: db $00 ; Direct Copy
#_11BDD6: db $3C
#_11BDD7: db $83 ; Repeat Fill
#_11BDD8: db $8E, $00 ; Repeat Fill bytes
#_11BDDA: db $15 ; Direct Copy
#_11BDDB: db $46, $E6, $42, $C2, $29, $A9, $60, $E0
#_11BDE3: db $06, $86, $12, $92, $7F, $80, $00, $19
#_11BDEB: db $3D, $56, $1F, $79, $6D, $7F
#_11BDF1: db $83 ; Repeat Fill
#_11BDF2: db $90, $00 ; Repeat Fill bytes
#_11BDF4: db $01 ; Direct Copy
#_11BDF5: db $FF, $00
#_11BDF7: db $89 ; Repeat Fill
#_11BDF8: db $56, $01 ; Repeat Fill bytes
#_11BDFA: db $22 ; Byte Fill
#_11BDFB: db $00
#_11BDFC: db $86 ; Repeat Fill
#_11BDFD: db $63, $01 ; Repeat Fill bytes
#_11BDFF: db $43 ; Word Fill
#_11BE00: db $00, $FF ; Word Fill
#_11BE02: db $01 ; Direct Copy
#_11BE03: db $FF, $00
#_11BE05: db $43 ; Word Fill
#_11BE06: db $80, $7F ; Word Fill
#_11BE08: db $83 ; Repeat Fill
#_11BE09: db $80, $01 ; Repeat Fill bytes
#_11BE0B: db $27 ; Byte Fill
#_11BE0C: db $00
#_11BE0D: db $01 ; Direct Copy
#_11BE0E: db $FF, $00
#_11BE10: db $43 ; Word Fill
#_11BE11: db $80, $7F ; Word Fill
#_11BE13: db $01 ; Direct Copy
#_11BE14: db $FF, $00
#_11BE16: db $43 ; Word Fill
#_11BE17: db $00, $FF ; Word Fill
#_11BE19: db $83 ; Repeat Fill
#_11BE1A: db $86, $01 ; Repeat Fill bytes
#_11BE1C: db $27 ; Byte Fill
#_11BE1D: db $00
#_11BE1E: db $4F ; Word Fill
#_11BE1F: db $02, $00 ; Word Fill
#_11BE21: db $27 ; Byte Fill
#_11BE22: db $01
#_11BE23: db $45 ; Word Fill
#_11BE24: db $92, $6D ; Word Fill
#_11BE26: db $01 ; Direct Copy
#_11BE27: db $93, $6C
#_11BE29: db $45 ; Word Fill
#_11BE2A: db $92, $6D ; Word Fill
#_11BE2C: db $01 ; Direct Copy
#_11BE2D: db $9E, $61
#_11BE2F: db $27 ; Byte Fill
#_11BE30: db $00
#_11BE31: db $01 ; Direct Copy
#_11BE32: db $57, $A8
#_11BE34: db $43 ; Word Fill
#_11BE35: db $55, $AA ; Word Fill
#_11BE37: db $01 ; Direct Copy
#_11BE38: db $DD, $22
#_11BE3A: db $45 ; Word Fill
#_11BE3B: db $55, $AA ; Word Fill
#_11BE3D: db $01 ; Direct Copy
#_11BE3E: db $77, $88
#_11BE40: db $27 ; Byte Fill
#_11BE41: db $00
#_11BE42: db $08 ; Direct Copy
#_11BE43: db $22, $00, $0A, $00, $88, $00, $02, $00
#_11BE4B: db $62
#_11BE4C: db $22 ; Byte Fill
#_11BE4D: db $00
#_11BE4E: db $00 ; Direct Copy
#_11BE4F: db $D8
#_11BE50: db $2A ; Byte Fill
#_11BE51: db $00
#_11BE52: db $E0, $3F ; EXT Direct Copy
#_11BE54: db $12, $6D, $12, $AD, $12, $CD, $E2, $1D
#_11BE5C: db $02, $F5, $02, $F9, $FC, $03, $00, $FE
#_11BE64: db $80, $40, $20, $00, $08, $04, $00, $01
#_11BE6C: db $57, $28, $95, $6A, $55, $CA, $E5, $1A
#_11BE74: db $05, $F2, $F9, $06, $81, $7C, $FE, $01
#_11BE7C: db $80, $00, $20, $00, $08, $00, $02, $00
#_11BE84: db $5D, $22, $97, $68, $1D, $C2, $E7, $18
#_11BE8C: db $A5, $52, $FB, $04, $55, $AA, $FF, $00
#_11BE94: db $84 ; Repeat Fill
#_11BE95: db $38, $02 ; Repeat Fill bytes
#_11BE97: db $22 ; Byte Fill
#_11BE98: db $00
#_11BE99: db $43 ; Word Fill
#_11BE9A: db $FF, $00 ; Word Fill
#_11BE9C: db $0B ; Direct Copy
#_11BE9D: db $EE, $11, $B7, $48, $E2, $1D, $BD, $4B
#_11BEA5: db $CA, $35, $9F, $7B
#_11BEA9: db $27 ; Byte Fill
#_11BEAA: db $00
#_11BEAB: db $0F ; Direct Copy
#_11BEAC: db $FE, $01, $EB, $15, $FC, $03, $D5, $2B
#_11BEB4: db $E7, $1D, $F6, $09, $FB, $05, $D7, $2D
#_11BEBC: db $27 ; Byte Fill
#_11BEBD: db $00
#_11BEBE: db $0F ; Direct Copy
#_11BEBF: db $FC, $C3, $E7, $1B, $03, $FC, $9E, $F9
#_11BEC7: db $F8, $67, $E1, $1F, $9F, $6E, $0E, $F1
#_11BECF: db $33 ; Byte Fill
#_11BED0: db $00
#_11BED1: db $00 ; Direct Copy
#_11BED2: db $FF
#_11BED3: db $29 ; Byte Fill
#_11BED4: db $00
#_11BED5: db $00 ; Direct Copy
#_11BED6: db $FF
#_11BED7: db $49 ; Word Fill
#_11BED8: db $BD, $7E ; Word Fill
#_11BEDA: db $45 ; Word Fill
#_11BEDB: db $FD, $3E ; Word Fill
#_11BEDD: db $27 ; Byte Fill
#_11BEDE: db $00
#_11BEDF: db $00 ; Direct Copy
#_11BEE0: db $3F
#_11BEE1: db $84 ; Repeat Fill
#_11BEE2: db $83, $01 ; Repeat Fill bytes
#_11BEE4: db $05 ; Direct Copy
#_11BEE5: db $4A, $CA, $08, $88, $61, $E1
#_11BEEB: db $83 ; Repeat Fill
#_11BEEC: db $89, $01 ; Repeat Fill bytes
#_11BEEE: db $22 ; Byte Fill
#_11BEEF: db $00
#_11BEF0: db $03 ; Direct Copy
#_11BEF1: db $35, $77, $1E, $7F
#_11BEF5: db $83 ; Repeat Fill
#_11BEF6: db $8E, $01 ; Repeat Fill bytes
#_11BEF8: db $0C ; Direct Copy
#_11BEF9: db $FF, $E6, $FF, $7E, $FF, $B3, $FF, $7B
#_11BF01: db $FF, $00, $00, $7F, $FF
#_11BF06: db $25 ; Byte Fill
#_11BF07: db $00
#_11BF08: db $83 ; Repeat Fill
#_11BF09: db $80, $01 ; Repeat Fill bytes
#_11BF0B: db $83 ; Repeat Fill
#_11BF0C: db $86, $01 ; Repeat Fill bytes
#_11BF0E: db $08 ; Direct Copy
#_11BF0F: db $FF, $00, $08, $F7, $FF, $00, $01, $FE
#_11BF17: db $FF
#_11BF18: db $28 ; Byte Fill
#_11BF19: db $00
#_11BF1A: db $85 ; Repeat Fill
#_11BF1B: db $8A, $01 ; Repeat Fill bytes
#_11BF1D: db $88 ; Repeat Fill
#_11BF1E: db $06, $03 ; Repeat Fill bytes
#_11BF20: db $28 ; Byte Fill
#_11BF21: db $00
#_11BF22: db $E0, $41 ; EXT Direct Copy
#_11BF24: db $3C, $FF, $18, $7E, $81, $BD, $C3, $DB
#_11BF2C: db $E3, $EF, $F1, $F7, $F8, $FB, $7C, $FD
#_11BF34: db $00, $81, $42, $24, $10, $08, $04, $02
#_11BF3C: db $7C, $7F, $F8, $FE, $F1, $FD, $E3, $FB
#_11BF44: db $C3, $FF, $81, $E7, $18, $DB, $3C, $BD
#_11BF4C: db $80, $01, $02, $04, $00, $18, $24, $42
#_11BF54: db $FF, $00, $FE, $01, $CF, $11, $DF, $11
#_11BF5C: db $D7, $19, $D6, $18, $D2, $1C, $D2, $1D
#_11BF64: db $00, $00
#_11BF66: db $22 ; Byte Fill
#_11BF67: db $20
#_11BF68: db $02 ; Direct Copy
#_11BF69: db $21, $21, $20
#_11BF6C: db $43 ; Word Fill
#_11BF6D: db $0C, $77 ; Word Fill
#_11BF6F: db $10 ; Direct Copy
#_11BF70: db $8C, $B7, $B0, $EB, $2D, $DD, $C9, $3E
#_11BF78: db $EF, $10, $FD, $03, $80, $80, $40, $04
#_11BF80: db $02
#_11BF81: db $22 ; Byte Fill
#_11BF82: db $00
#_11BF83: db $45 ; Word Fill
#_11BF84: db $D3, $1C ; Word Fill
#_11BF86: db $05 ; Direct Copy
#_11BF87: db $E3, $3C, $DB, $14, $D7, $18
#_11BF8D: db $43 ; Word Fill
#_11BF8E: db $D3, $1C ; Word Fill
#_11BF90: db $22 ; Byte Fill
#_11BF91: db $20
#_11BF92: db $00 ; Direct Copy
#_11BF93: db $00
#_11BF94: db $23 ; Byte Fill
#_11BF95: db $20
#_11BF96: db $13 ; Direct Copy
#_11BF97: db $3E, $3F, $3A, $3B, $74, $77, $E9, $EE
#_11BF9F: db $B7, $F9, $5C, $E3, $BF, $C0, $FF, $00
#_11BFA7: db $C0, $C4, $88, $10
#_11BFAB: db $23 ; Byte Fill
#_11BFAC: db $00
#_11BFAD: db $01 ; Direct Copy
#_11BFAE: db $FF, $00
#_11BFB0: db $43 ; Word Fill
#_11BFB1: db $01, $FE ; Word Fill
#_11BFB3: db $01 ; Direct Copy
#_11BFB4: db $FF, $00
#_11BFB6: db $43 ; Word Fill
#_11BFB7: db $10, $EF ; Word Fill
#_11BFB9: db $02 ; Direct Copy
#_11BFBA: db $FF, $00, $FF
#_11BFBD: db $28 ; Byte Fill
#_11BFBE: db $00
#_11BFBF: db $45 ; Word Fill
#_11BFC0: db $93, $6C ; Word Fill
#_11BFC2: db $01 ; Direct Copy
#_11BFC3: db $9F, $60
#_11BFC5: db $45 ; Word Fill
#_11BFC6: db $93, $6C ; Word Fill
#_11BFC8: db $01 ; Direct Copy
#_11BFC9: db $F3, $0C
#_11BFCB: db $27 ; Byte Fill
#_11BFCC: db $00
#_11BFCD: db $83 ; Repeat Fill
#_11BFCE: db $CA, $03 ; Repeat Fill bytes
#_11BFD0: db $05 ; Direct Copy
#_11BFD1: db $01, $FE, $3C, $00, $18, $E7
#_11BFD7: db $22 ; Byte Fill
#_11BFD8: db $00
#_11BFD9: db $00 ; Direct Copy
#_11BFDA: db $BB
#_11BFDB: db $29 ; Byte Fill
#_11BFDC: db $00
#_11BFDD: db $0F ; Direct Copy
#_11BFDE: db $30, $8A, $10, $AA, $40, $A8, $48, $A2
#_11BFE6: db $C8, $22, $40, $AA, $00, $A8, $10, $AA
#_11BFEE: db $28 ; Byte Fill
#_11BFEF: db $00
#_11BFF0: db $07 ; Direct Copy
#_11BFF1: db $20, $28, $80, $08, $80, $A2, $00, $02
#_11BFF9: db $84 ; Repeat Fill
#_11BFFA: db $21, $04 ; Repeat Fill bytes
#_11BFFC: db $00 ; Direct Copy
#_11BFFD: db $A0
#_11BFFE: db $28 ; Byte Fill
#_11BFFF: db $00
#_11C000: db $45 ; Word Fill
#_11C001: db $FD, $3E ; Word Fill
#_11C003: db $45 ; Word Fill
#_11C004: db $DD, $3E ; Word Fill
#_11C006: db $43 ; Word Fill
#_11C007: db $FD, $1E ; Word Fill
#_11C009: db $27 ; Byte Fill
#_11C00A: db $00
#_11C00B: db $04 ; Direct Copy
#_11C00C: db $FF, $00, $37, $FF, $6D
#_11C011: db $83 ; Repeat Fill
#_11C012: db $4E, $02 ; Repeat Fill bytes
#_11C014: db $06 ; Direct Copy
#_11C015: db $FF, $FF, $00, $DD, $7F, $F7, $7F
#_11C01C: db $22 ; Byte Fill
#_11C01D: db $00
#_11C01E: db $00 ; Direct Copy
#_11C01F: db $7F
#_11C020: db $23 ; Byte Fill
#_11C021: db $00
#_11C022: db $83 ; Repeat Fill
#_11C023: db $8A, $01 ; Repeat Fill bytes
#_11C025: db $06 ; Direct Copy
#_11C026: db $9E, $7F, $DB, $7F, $F2, $7F, $80
#_11C02D: db $83 ; Repeat Fill
#_11C02E: db $03, $03 ; Repeat Fill bytes
#_11C030: db $25 ; Byte Fill
#_11C031: db $00
#_11C032: db $00 ; Direct Copy
#_11C033: db $7F
#_11C034: db $22 ; Byte Fill
#_11C035: db $00
#_11C036: db $8D ; Repeat Fill
#_11C037: db $01, $03 ; Repeat Fill bytes
#_11C039: db $28 ; Byte Fill
#_11C03A: db $00
#_11C03B: db $01 ; Direct Copy
#_11C03C: db $57, $A8
#_11C03E: db $43 ; Word Fill
#_11C03F: db $55, $AA ; Word Fill
#_11C041: db $01 ; Direct Copy
#_11C042: db $DD, $22
#_11C044: db $45 ; Word Fill
#_11C045: db $55, $AA ; Word Fill
#_11C047: db $01 ; Direct Copy
#_11C048: db $77, $88
#_11C04A: db $27 ; Byte Fill
#_11C04B: db $00
#_11C04C: db $05 ; Direct Copy
#_11C04D: db $59, $E7, $2C, $73, $3C, $33
#_11C053: db $43 ; Word Fill
#_11C054: db $5E, $39 ; Word Fill
#_11C056: db $07 ; Direct Copy
#_11C057: db $BD, $73, $BB, $77, $58, $C7, $00, $80
#_11C05F: db $22 ; Byte Fill
#_11C060: db $C0
#_11C061: db $13 ; Direct Copy
#_11C062: db $80, $80, $20, $1D, $43, $F5, $EB, $92
#_11C06A: db $ED, $7A, $87, $3A, $C7, $8B, $B7, $C9
#_11C072: db $D7, $DD, $D3, $A0
#_11C076: db $23 ; Byte Fill
#_11C077: db $00
#_11C078: db $12 ; Direct Copy
#_11C079: db $40, $20, $20, $6D, $73, $7C, $73, $74
#_11C081: db $7B, $A6, $A9, $C7, $D8, $8D, $B2, $8C
#_11C089: db $F3, $1E, $E9
#_11C08C: db $22 ; Byte Fill
#_11C08D: db $80
#_11C08E: db $16 ; Direct Copy
#_11C08F: db $50, $20, $40, $00, $00, $37, $38, $07
#_11C097: db $D8, $1B, $F4, $11, $EE, $EF, $1C, $EB
#_11C09F: db $EC, $02, $F5, $0F, $F9, $C0, $20
#_11C0A6: db $22 ; Byte Fill
#_11C0A7: db $00
#_11C0A8: db $E0, $2E ; EXT Direct Copy
#_11C0AA: db $10, $08, $00, $B1, $F2, $DD, $FE, $83
#_11C0B2: db $BC, $06, $D9, $0E, $F1, $67, $F8, $63
#_11C0BA: db $EC, $11, $D6, $0C, $00, $40, $20, $00
#_11C0C2: db $00, $10, $28, $1B, $0E, $35, $3E, $FB
#_11C0CA: db $FC, $EF, $E8, $D7, $D8, $AF, $B0, $CB
#_11C0D2: db $F4, $1B, $EC, $E0, $C0, $00, $10
#_11C0D9: db $83 ; Repeat Fill
#_11C0DA: db $F4, $04 ; Repeat Fill bytes
#_11C0DC: db $05 ; Direct Copy
#_11C0DD: db $FF, $00, $55, $AA, $AA, $55
#_11C0E3: db $44 ; Word Fill
#_11C0E4: db $00, $FF ; Word Fill
#_11C0E6: db $24 ; Byte Fill
#_11C0E7: db $FF
#_11C0E8: db $27 ; Byte Fill
#_11C0E9: db $00
#_11C0EA: db $03 ; Direct Copy
#_11C0EB: db $A3, $5F, $C3, $3F
#_11C0EF: db $83 ; Repeat Fill
#_11C0F0: db $58, $05 ; Repeat Fill bytes
#_11C0F2: db $87 ; Repeat Fill
#_11C0F3: db $58, $05 ; Repeat Fill bytes
#_11C0F5: db $27 ; Byte Fill
#_11C0F6: db $00
#_11C0F7: db $04 ; Direct Copy
#_11C0F8: db $A5, $42, $00, $00, $BB
#_11C0FD: db $22 ; Byte Fill
#_11C0FE: db $00
#_11C0FF: db $00 ; Direct Copy
#_11C100: db $CE
#_11C101: db $22 ; Byte Fill
#_11C102: db $00
#_11C103: db $00 ; Direct Copy
#_11C104: db $18
#_11C105: db $2A ; Byte Fill
#_11C106: db $00
#_11C107: db $0F ; Direct Copy
#_11C108: db $40, $3F, $80, $00, $11, $8E, $20, $80
#_11C110: db $01, $A2, $00, $A0, $00, $A8, $28, $80
#_11C118: db $28 ; Byte Fill
#_11C119: db $00
#_11C11A: db $0D ; Direct Copy
#_11C11B: db $AA, $40, $2A, $12, $E8, $28, $12, $14
#_11C123: db $EA, $0A, $04, $24, $DA, $01
#_11C129: db $28 ; Byte Fill
#_11C12A: db $00
#_11C12B: db $43 ; Word Fill
#_11C12C: db $FD, $1E ; Word Fill
#_11C12E: db $49 ; Word Fill
#_11C12F: db $ED, $1E ; Word Fill
#_11C131: db $00 ; Direct Copy
#_11C132: db $FF
#_11C133: db $28 ; Byte Fill
#_11C134: db $00
#_11C135: db $85 ; Repeat Fill
#_11C136: db $72, $04 ; Repeat Fill bytes
#_11C138: db $05 ; Direct Copy
#_11C139: db $AB, $7F, $BF, $7F, $80, $40
#_11C13F: db $83 ; Repeat Fill
#_11C140: db $8A, $01 ; Repeat Fill bytes
#_11C142: db $00 ; Direct Copy
#_11C143: db $7F
#_11C144: db $23 ; Byte Fill
#_11C145: db $00
#_11C146: db $07 ; Direct Copy
#_11C147: db $3F, $00, $00, $C2, $3D, $C8, $37, $C0
#_11C14F: db $84 ; Repeat Fill
#_11C150: db $69, $01 ; Repeat Fill bytes
#_11C152: db $04 ; Direct Copy
#_11C153: db $E4, $1B, $E0, $1F, $FF
#_11C158: db $22 ; Byte Fill
#_11C159: db $00
#_11C15A: db $00 ; Direct Copy
#_11C15B: db $3F
#_11C15C: db $24 ; Byte Fill
#_11C15D: db $00
#_11C15E: db $FF ; End of GFX 01

;===================================================================================================

GFX_02:
#_11C15F: db $E0, $33 ; EXT Direct Copy
#_11C161: db $D7, $D9, $AF, $B3, $2F, $37, $BF, $A7
#_11C169: db $DF, $ED, $9F, $ED, $2F, $D5, $5D, $B7
#_11C171: db $21, $43, $C7, $47, $0D, $0D, $05, $07
#_11C179: db $FF, $00, $BF, $0E, $9F, $04, $CC, $00
#_11C181: db $E7, $A4, $FC, $98, $FB, $90, $F7, $90
#_11C189: db $00, $6E, $74, $3B, $9B, $87, $8C, $88
#_11C191: db $FF, $80, $FF, $CE
#_11C195: db $44 ; Word Fill
#_11C196: db $FF, $DE ; Word Fill
#_11C198: db $E0, $3E ; EXT Direct Copy
#_11C19A: db $9E, $FF, $98, $FC, $80, $FB, $82, $80
#_11C1A2: db $CE, $DE, $DE, $9E, $98, $83, $84, $DC
#_11C1AA: db $DF, $89, $8E, $72, $7D, $9D, $E3, $7F
#_11C1B2: db $8C, $FF, $3F, $FE, $71, $FF, $FF, $20
#_11C1BA: db $70, $80, $00, $0C, $3F, $71, $FF, $0B
#_11C1C2: db $03, $37, $07, $0E, $0F, $E0, $FF, $E3
#_11C1CA: db $1C, $FF, $A0, $DF, $B4, $DF, $B6, $FC
#_11C1D2: db $F8, $F0, $00, $00, $A0, $B4, $B6
#_11C1D9: db $22 ; Byte Fill
#_11C1DA: db $FF
#_11C1DB: db $16 ; Direct Copy
#_11C1DC: db $70, $FF, $00, $FF, $3C, $FF, $7C, $FE
#_11C1E4: db $78, $FD, $79, $FD, $00, $FF, $70, $00
#_11C1EC: db $3C, $7C, $79, $7A, $02, $DF, $B6
#_11C1F3: db $43 ; Word Fill
#_11C1F4: db $DE, $31 ; Word Fill
#_11C1F6: db $11 ; Direct Copy
#_11C1F7: db $DF, $34, $FF, $06, $3F, $20, $C2, $01
#_11C1FF: db $FA, $01, $B6, $30, $30, $34, $06, $C0
#_11C207: db $3C, $04
#_11C209: db $45 ; Word Fill
#_11C20A: db $FF, $00 ; Word Fill
#_11C20C: db $00 ; Direct Copy
#_11C20D: db $00
#_11C20E: db $22 ; Byte Fill
#_11C20F: db $FF
#_11C210: db $04 ; Direct Copy
#_11C211: db $00, $00, $80, $7F, $FF
#_11C216: db $25 ; Byte Fill
#_11C217: db $00
#_11C218: db $16 ; Direct Copy
#_11C219: db $FF, $00, $00, $D7, $D8, $AF, $B0, $2F
#_11C221: db $30, $BF, $A0, $D7, $E8, $97, $E8, $27
#_11C229: db $D8, $57, $B8, $20, $40, $C0, $40
#_11C230: db $23 ; Byte Fill
#_11C231: db $00
#_11C232: db $87 ; Repeat Fill
#_11C233: db $48, $00 ; Repeat Fill bytes
#_11C235: db $01 ; Direct Copy
#_11C236: db $70, $8F
#_11C238: db $45 ; Word Fill
#_11C239: db $FF, $00 ; Word Fill
#_11C23B: db $02 ; Direct Copy
#_11C23C: db $20, $70, $80
#_11C23F: db $24 ; Byte Fill
#_11C240: db $00
#_11C241: db $87 ; Repeat Fill
#_11C242: db $60, $00 ; Repeat Fill bytes
#_11C244: db $0A ; Direct Copy
#_11C245: db $01, $FE, $83, $7C, $FE, $01, $FC, $03
#_11C24D: db $FC, $F8, $F0
#_11C250: db $24 ; Byte Fill
#_11C251: db $00
#_11C252: db $1D ; Direct Copy
#_11C253: db $9F, $77, $BF, $70, $FC, $77, $E7, $7B
#_11C25B: db $E7, $78, $B7, $7B, $CF, $31, $EF, $10
#_11C263: db $07, $00, $07, $03, $00, $03, $01, $00
#_11C26B: db $9B, $77, $BB, $77, $F9, $77
#_11C271: db $43 ; Word Fill
#_11C272: db $E4, $7B ; Word Fill
#_11C274: db $05 ; Direct Copy
#_11C275: db $B6, $79, $C7, $38, $E8, $17
#_11C27B: db $27 ; Byte Fill
#_11C27C: db $00
#_11C27D: db $04 ; Direct Copy
#_11C27E: db $97, $78, $B7, $78, $F7
#_11C283: db $44 ; Word Fill
#_11C284: db $78, $E7 ; Word Fill
#_11C286: db $05 ; Direct Copy
#_11C287: db $B7, $78, $C4, $3B, $E8, $17
#_11C28D: db $27 ; Byte Fill
#_11C28E: db $00
#_11C28F: db $16 ; Direct Copy
#_11C290: db $9E, $75, $BC, $73, $F9, $77, $E7, $7A
#_11C298: db $E7, $79, $B7, $7B, $CF, $32, $EF, $10
#_11C2A0: db $05, $03, $07, $02, $01, $03, $02
#_11C2A7: db $85 ; Repeat Fill
#_11C2A8: db $37, $01 ; Repeat Fill bytes
#_11C2AA: db $44 ; Word Fill
#_11C2AB: db $78, $E7 ; Word Fill
#_11C2AD: db $85 ; Repeat Fill
#_11C2AE: db $42, $01 ; Repeat Fill bytes
#_11C2B0: db $27 ; Byte Fill
#_11C2B1: db $00
#_11C2B2: db $E0, $46 ; EXT Direct Copy
#_11C2B4: db $1F, $17, $1F, $10, $5C, $17, $47, $1B
#_11C2BC: db $A7, $38, $67, $7B, $EF, $F1, $CF, $F0
#_11C2C4: db $E7, $E0, $E7, $E3, $C0, $83, $01, $00
#_11C2CC: db $F7, $90, $F7, $14, $1B, $EA, $FD, $C4
#_11C2D4: db $ED, $08, $DC, $10, $FF, $68, $FC, $03
#_11C2DC: db $88, $08, $E4, $D2, $32, $63, $08, $00
#_11C2E4: db $FB, $80, $FB, $00, $0D, $F4, $FD, $F0
#_11C2EC: db $FD, $00, $FC, $98, $FF, $88, $9C, $63
#_11C2F4: db $84, $04, $F2, $F2, $02, $9B, $88
#_11C2FB: db $24 ; Byte Fill
#_11C2FC: db $00
#_11C2FD: db $0D ; Direct Copy
#_11C2FE: db $3F, $3F, $31, $31, $23, $23, $27, $27
#_11C306: db $2E, $2E, $3C, $3C, $00, $7F
#_11C30C: db $26 ; Byte Fill
#_11C30D: db $40
#_11C30E: db $06 ; Direct Copy
#_11C30F: db $BF, $00, $80, $1E, $9E, $1F, $9F
#_11C316: db $45 ; Word Fill
#_11C317: db $3F, $BF ; Word Fill
#_11C319: db $05 ; Direct Copy
#_11C31A: db $1F, $9F, $00, $7F, $61, $60
#_11C320: db $22 ; Byte Fill
#_11C321: db $40
#_11C322: db $00 ; Direct Copy
#_11C323: db $60
#_11C324: db $4E ; Word Fill
#_11C325: db $FF, $00 ; Word Fill
#_11C327: db $28 ; Byte Fill
#_11C328: db $00
#_11C329: db $0A ; Direct Copy
#_11C32A: db $E0, $1F, $EF, $10, $FF, $00, $FF, $7F
#_11C332: db $C0, $7F, $FF
#_11C335: db $22 ; Byte Fill
#_11C336: db $00
#_11C337: db $01 ; Direct Copy
#_11C338: db $FF, $FF
#_11C33A: db $25 ; Byte Fill
#_11C33B: db $00
#_11C33C: db $01 ; Direct Copy
#_11C33D: db $FF, $00
#_11C33F: db $43 ; Word Fill
#_11C340: db $FF, $7F ; Word Fill
#_11C342: db $05 ; Direct Copy
#_11C343: db $80, $00, $C0, $3F, $FF, $00
#_11C349: db $43 ; Word Fill
#_11C34A: db $FF, $3F ; Word Fill
#_11C34C: db $00 ; Direct Copy
#_11C34D: db $C0
#_11C34E: db $22 ; Byte Fill
#_11C34F: db $00
#_11C350: db $00 ; Direct Copy
#_11C351: db $7F
#_11C352: db $23 ; Byte Fill
#_11C353: db $00
#_11C354: db $10 ; Direct Copy
#_11C355: db $3F, $17, $18, $13, $1C, $53, $1C, $43
#_11C35D: db $1C, $A3, $3C, $63, $7C, $E6, $F9, $CC
#_11C365: db $F3
#_11C366: db $23 ; Byte Fill
#_11C367: db $E0
#_11C368: db $13 ; Direct Copy
#_11C369: db $C0, $80, $00, $00, $CF, $31, $C6, $3B
#_11C371: db $9C, $6F, $BB, $5C, $34, $D8, $69, $B1
#_11C379: db $F3, $43, $FF, $3F
#_11C37D: db $23 ; Byte Fill
#_11C37E: db $00
#_11C37F: db $0C ; Direct Copy
#_11C380: db $03, $06, $0C, $00, $3F, $C0, $1F, $E0
#_11C388: db $65, $86, $1E, $1F, $FE
#_11C38D: db $26 ; Byte Fill
#_11C38E: db $FF
#_11C38F: db $03 ; Direct Copy
#_11C390: db $00, $00, $18, $E0
#_11C394: db $23 ; Byte Fill
#_11C395: db $00
#_11C396: db $06 ; Direct Copy
#_11C397: db $FF, $00, $3B, $FC, $7D, $FE, $E4
#_11C39E: db $88 ; Repeat Fill
#_11C39F: db $67, $00 ; Repeat Fill bytes
#_11C3A1: db $24 ; Byte Fill
#_11C3A2: db $00
#_11C3A3: db $83 ; Repeat Fill
#_11C3A4: db $75, $00 ; Repeat Fill bytes
#_11C3A6: db $86 ; Repeat Fill
#_11C3A7: db $89, $02 ; Repeat Fill bytes
#_11C3A9: db $07 ; Direct Copy
#_11C3AA: db $E1, $1E, $1E, $E1, $C6, $F9, $E2, $FD
#_11C3B2: db $27 ; Byte Fill
#_11C3B3: db $00
#_11C3B4: db $87 ; Repeat Fill
#_11C3B5: db $88, $02 ; Repeat Fill bytes
#_11C3B7: db $03 ; Direct Copy
#_11C3B8: db $01, $FE, $FE, $01
#_11C3BC: db $43 ; Word Fill
#_11C3BD: db $FC, $03 ; Word Fill
#_11C3BF: db $27 ; Byte Fill
#_11C3C0: db $00
#_11C3C1: db $89 ; Repeat Fill
#_11C3C2: db $88, $02 ; Repeat Fill bytes
#_11C3C4: db $05 ; Direct Copy
#_11C3C5: db $DF, $A0, $9F, $76, $3F, $EC
#_11C3CB: db $24 ; Byte Fill
#_11C3CC: db $00
#_11C3CD: db $02 ; Direct Copy
#_11C3CE: db $A0, $76, $EC
#_11C3D1: db $8B ; Repeat Fill
#_11C3D2: db $B8, $02 ; Repeat Fill bytes
#_11C3D4: db $43 ; Word Fill
#_11C3D5: db $FC, $03 ; Word Fill
#_11C3D7: db $27 ; Byte Fill
#_11C3D8: db $00
#_11C3D9: db $86 ; Repeat Fill
#_11C3DA: db $00, $00 ; Repeat Fill bytes
#_11C3DC: db $10 ; Direct Copy
#_11C3DD: db $A3, $DF, $EA, $9F, $EA, $2B, $D6, $5F
#_11C3E5: db $B6, $21, $43, $C7, $43, $0A, $0A, $06
#_11C3ED: db $06
#_11C3EE: db $44 ; Word Fill
#_11C3EF: db $FF, $60 ; Word Fill
#_11C3F1: db $04 ; Direct Copy
#_11C3F2: db $40, $DF, $00, $BF, $20
#_11C3F7: db $43 ; Word Fill
#_11C3F8: db $FF, $60 ; Word Fill
#_11C3FA: db $09 ; Direct Copy
#_11C3FB: db $7F, $A0, $60, $60, $40, $20, $40, $00
#_11C403: db $00, $80
#_11C405: db $89 ; Repeat Fill
#_11C406: db $48, $00 ; Repeat Fill bytes
#_11C408: db $05 ; Direct Copy
#_11C409: db $FD, $23, $FF, $7F, $FF, $F0
#_11C40F: db $84 ; Repeat Fill
#_11C410: db $58, $00 ; Repeat Fill bytes
#_11C412: db $02 ; Direct Copy
#_11C413: db $23, $7F, $F0
#_11C416: db $89 ; Repeat Fill
#_11C417: db $60, $00 ; Repeat Fill bytes
#_11C419: db $05 ; Direct Copy
#_11C41A: db $DF, $A0, $9F, $77, $3F, $EE
#_11C420: db $85 ; Repeat Fill
#_11C421: db $70, $00 ; Repeat Fill bytes
#_11C423: db $16 ; Direct Copy
#_11C424: db $77, $EE, $D4, $DA, $A8, $B4, $2C, $34
#_11C42C: db $B4, $AC, $D6, $EE, $97, $EF, $2F, $D7
#_11C434: db $5F, $B7, $21, $43, $C3, $43, $01
#_11C43B: db $24 ; Byte Fill
#_11C43C: db $00
#_11C43D: db $0D ; Direct Copy
#_11C43E: db $10, $00, $1F, $00, $3F, $00, $E0, $00
#_11C446: db $5E, $1E, $7F, $0F, $7F, $07
#_11C44C: db $24 ; Byte Fill
#_11C44D: db $FF
#_11C44E: db $01 ; Direct Copy
#_11C44F: db $E1, $80
#_11C451: db $88 ; Repeat Fill
#_11C452: db $2F, $03 ; Repeat Fill bytes
#_11C454: db $0A ; Direct Copy
#_11C455: db $63, $9C, $BF, $7F, $0F, $8F, $07, $07
#_11C45D: db $20, $70, $80
#_11C460: db $22 ; Byte Fill
#_11C461: db $00
#_11C462: db $01 ; Direct Copy
#_11C463: db $70, $F8
#_11C465: db $87 ; Repeat Fill
#_11C466: db $60, $00 ; Repeat Fill bytes
#_11C468: db $03 ; Direct Copy
#_11C469: db $E1, $1E, $1F, $E0
#_11C46D: db $83 ; Repeat Fill
#_11C46E: db $AC, $02 ; Repeat Fill bytes
#_11C470: db $02 ; Direct Copy
#_11C471: db $FC, $F8, $F0
#_11C474: db $24 ; Byte Fill
#_11C475: db $00
#_11C476: db $83 ; Repeat Fill
#_11C477: db $C0, $00 ; Repeat Fill bytes
#_11C479: db $0B ; Direct Copy
#_11C47A: db $2E, $31, $BD, $A3, $D5, $EB, $95, $EB
#_11C482: db $24, $DB, $54, $BB
#_11C486: db $83 ; Repeat Fill
#_11C487: db $D0, $00 ; Repeat Fill bytes
#_11C489: db $23 ; Byte Fill
#_11C48A: db $00
#_11C48B: db $12 ; Direct Copy
#_11C48C: db $80, $7F, $40, $C0, $9E, $9E, $77, $3F
#_11C494: db $3B, $5F, $5D, $6F, $AD, $B7, $71, $FF
#_11C49C: db $00, $3F, $61
#_11C49F: db $22 ; Byte Fill
#_11C4A0: db $80
#_11C4A1: db $00 ; Direct Copy
#_11C4A2: db $40
#_11C4A3: db $8C ; Repeat Fill
#_11C4A4: db $D7, $00 ; Repeat Fill bytes
#_11C4A6: db $06 ; Direct Copy
#_11C4A7: db $E0, $1F, $DC, $3F, $20, $70, $80
#_11C4AE: db $24 ; Byte Fill
#_11C4AF: db $00
#_11C4B0: db $89 ; Repeat Fill
#_11C4B1: db $F0, $00 ; Repeat Fill bytes
#_11C4B3: db $08 ; Direct Copy
#_11C4B4: db $C3, $3C, $FE, $01, $7C, $83, $FC, $F8
#_11C4BC: db $F0
#_11C4BD: db $24 ; Byte Fill
#_11C4BE: db $00
#_11C4BF: db $E0, $2C ; EXT Direct Copy
#_11C4C1: db $C3, $FF, $CC, $FF, $93, $F3, $54, $70
#_11C4C9: db $5A, $78, $CC, $FC, $85, $FD, $03, $FF
#_11C4D1: db $00, $00, $0C, $8F, $87, $03, $02, $00
#_11C4D9: db $C1, $FF, $3E, $FF, $D9, $D9, $3C, $3C
#_11C4E1: db $62, $7E, $D9, $E7, $BC, $C3, $7F, $80
#_11C4E9: db $00, $00, $26, $C3, $81
#_11C4EE: db $22 ; Byte Fill
#_11C4EF: db $00
#_11C4F0: db $03 ; Direct Copy
#_11C4F1: db $3F, $C0, $7F, $80
#_11C4F5: db $83 ; Repeat Fill
#_11C4F6: db $FC, $00 ; Repeat Fill bytes
#_11C4F8: db $07 ; Direct Copy
#_11C4F9: db $F8, $07, $FB, $07, $E6, $19, $DB, $3C
#_11C501: db $27 ; Byte Fill
#_11C502: db $00
#_11C503: db $0F ; Direct Copy
#_11C504: db $FF, $00, $F3, $0C, $39, $C6, $1D, $E2
#_11C50C: db $0F, $F0, $07, $F8, $81, $FE, $F1, $7E
#_11C514: db $27 ; Byte Fill
#_11C515: db $00
#_11C516: db $E0, $2C ; EXT Direct Copy
#_11C518: db $1E, $15, $1C, $13, $59, $17, $47, $1A
#_11C520: db $A7, $39, $67, $7B, $EF, $F3, $CF, $F2
#_11C528: db $E5, $E3, $E7, $E2, $C1, $83, $03, $02
#_11C530: db $7F, $A0, $FF, $80, $FF, $20, $FE, $61
#_11C538: db $F2, $4D, $E3, $1C, $FC, $03, $99, $67
#_11C540: db $80, $80, $20, $60, $40
#_11C545: db $22 ; Byte Fill
#_11C546: db $00
#_11C547: db $05 ; Direct Copy
#_11C548: db $FE, $01, $F7, $E6, $EF, $CF
#_11C54E: db $49 ; Word Fill
#_11C54F: db $FF, $00 ; Word Fill
#_11C551: db $02 ; Direct Copy
#_11C552: db $01, $E8, $D0
#_11C555: db $24 ; Byte Fill
#_11C556: db $00
#_11C557: db $12 ; Direct Copy
#_11C558: db $7F, $C0, $FE, $19, $FE, $B1, $FB, $04
#_11C560: db $F3, $0C, $F2, $0D, $FC, $03, $E5, $1B
#_11C568: db $C0, $18, $30
#_11C56B: db $24 ; Byte Fill
#_11C56C: db $00
#_11C56D: db $43 ; Word Fill
#_11C56E: db $1B, $17 ; Word Fill
#_11C570: db $0B ; Direct Copy
#_11C571: db $59, $17, $44, $1B, $A4, $3B, $66, $79
#_11C579: db $E7, $F8, $CC, $F3
#_11C57D: db $23 ; Byte Fill
#_11C57E: db $E0
#_11C57F: db $83 ; Repeat Fill
#_11C580: db $54, $02 ; Repeat Fill bytes
#_11C582: db $E0, $21 ; EXT Direct Copy
#_11C584: db $3F, $03, $5F, $43, $6D, $61, $F3, $F3
#_11C58C: db $D7, $DF, $4A, $D6, $BD, $63, $7F, $80
#_11C594: db $C0, $A0, $92, $0C, $20, $21, $00, $00
#_11C59C: db $08, $00, $0F, $00, $1B, $00, $77, $04
#_11C5A4: db $37, $06
#_11C5A6: db $43 ; Word Fill
#_11C5A7: db $37, $07 ; Word Fill
#_11C5A9: db $04 ; Direct Copy
#_11C5AA: db $33, $03, $FF, $FC, $FC
#_11C5AF: db $23 ; Byte Fill
#_11C5B0: db $F8
#_11C5B1: db $1C ; Direct Copy
#_11C5B2: db $FC, $1A, $1D, $7D, $7E, $B3, $32, $DB
#_11C5BA: db $1C, $E7, $08, $EB, $0C, $DD, $DE, $FB
#_11C5C2: db $FA, $E0, $80, $4C, $20, $10, $10, $20
#_11C5CA: db $04, $16, $19, $17, $18
#_11C5CF: db $8B ; Repeat Fill
#_11C5D0: db $44, $02 ; Repeat Fill bytes
#_11C5D2: db $23 ; Byte Fill
#_11C5D3: db $E0
#_11C5D4: db $83 ; Repeat Fill
#_11C5D5: db $54, $02 ; Repeat Fill bytes
#_11C5D7: db $05 ; Direct Copy
#_11C5D8: db $39, $FF, $01, $FF, $8C, $73
#_11C5DE: db $43 ; Word Fill
#_11C5DF: db $FF, $00 ; Word Fill
#_11C5E1: db $05 ; Direct Copy
#_11C5E2: db $E3, $1C, $3C, $C3, $99, $E7
#_11C5E8: db $27 ; Byte Fill
#_11C5E9: db $00
#_11C5EA: db $12 ; Direct Copy
#_11C5EB: db $A2, $63, $55, $CD, $1B, $97, $3D, $BB
#_11C5F3: db $2E, $BD, $36, $BF, $38, $BF, $1F, $9F
#_11C5FB: db $1C, $22, $60
#_11C5FE: db $23 ; Byte Fill
#_11C5FF: db $40
#_11C600: db $10 ; Direct Copy
#_11C601: db $60, $3D, $C3, $1C, $E3, $9E, $E1, $9B
#_11C609: db $E4, $BB, $C4, $3A, $C5, $1C, $E3, $DD
#_11C611: db $E3
#_11C612: db $27 ; Byte Fill
#_11C613: db $00
#_11C614: db $10 ; Direct Copy
#_11C615: db $E6, $E7, $DC, $FF, $20, $FF, $78, $FF
#_11C61D: db $64, $C7, $52, $C3, $A9, $E1, $B3, $F3
#_11C625: db $18
#_11C626: db $22 ; Byte Fill
#_11C627: db $00
#_11C628: db $09 ; Direct Copy
#_11C629: db $38, $3C, $1E, $0C, $B6, $F7, $AD, $EE
#_11C631: db $5B, $DC
#_11C633: db $43 ; Word Fill
#_11C634: db $F7, $78 ; Word Fill
#_11C636: db $E0, $22 ; EXT Direct Copy
#_11C638: db $D3, $5C, $89, $CE, $C5, $E6, $08, $10
#_11C640: db $20, $00, $00, $20, $30, $18, $9C, $5F
#_11C648: db $DF, $5F, $EF, $2F, $C7, $37, $80, $78
#_11C650: db $40, $FF, $F0, $FF, $FC, $FF, $20, $20
#_11C658: db $10, $08, $07
#_11C65B: db $22 ; Byte Fill
#_11C65C: db $00
#_11C65D: db $0B ; Direct Copy
#_11C65E: db $EF, $1E, $31, $CE, $CF, $F0, $F1, $FE
#_11C666: db $7D, $7C, $01, $82
#_11C66A: db $43 ; Word Fill
#_11C66B: db $01, $FE ; Word Fill
#_11C66D: db $23 ; Byte Fill
#_11C66E: db $00
#_11C66F: db $03 ; Direct Copy
#_11C670: db $82, $7C, $00, $00
#_11C674: db $FF ; End of GFX 02

;===================================================================================================

GFX_03:
#_11C675: db $23 ; Byte Fill
#_11C676: db $00
#_11C677: db $05 ; Direct Copy
#_11C678: db $FC, $FC, $CC, $CC, $84, $84
#_11C67E: db $25 ; Byte Fill
#_11C67F: db $04
#_11C680: db $01 ; Direct Copy
#_11C681: db $00, $FE
#_11C683: db $25 ; Byte Fill
#_11C684: db $02
#_11C685: db $0B ; Direct Copy
#_11C686: db $38, $38, $30, $30, $20, $20, $21, $21
#_11C68E: db $23, $23, $3F, $3F
#_11C692: db $23 ; Byte Fill
#_11C693: db $00
#_11C694: db $25 ; Byte Fill
#_11C695: db $40
#_11C696: db $07 ; Direct Copy
#_11C697: db $7F, $00, $24, $24, $44, $44, $84, $84
#_11C69F: db $23 ; Byte Fill
#_11C6A0: db $04
#_11C6A1: db $01 ; Direct Copy
#_11C6A2: db $FC, $FC
#_11C6A4: db $23 ; Byte Fill
#_11C6A5: db $00
#_11C6A6: db $25 ; Byte Fill
#_11C6A7: db $02
#_11C6A8: db $E0, $2B ; EXT Direct Copy
#_11C6AA: db $FE, $00, $E2, $E1, $1C, $F9, $05, $C6
#_11C6B2: db $1A, $83, $19, $81, $C5, $C1, $E3, $E1
#_11C6BA: db $E7, $E1, $1E, $06, $38, $7C, $7E, $3E
#_11C6C2: db $1E, $1E, $1D, $EE, $3D, $DD, $FE, $1E
#_11C6CA: db $3E, $DE, $DE, $EE, $ED, $F4, $0D, $F6
#_11C6D2: db $09, $F6, $00, $02
#_11C6D6: db $22 ; Byte Fill
#_11C6D7: db $01
#_11C6D8: db $00 ; Direct Copy
#_11C6D9: db $02
#_11C6DA: db $23 ; Byte Fill
#_11C6DB: db $00
#_11C6DC: db $44 ; Word Fill
#_11C6DD: db $70, $00 ; Word Fill
#_11C6DF: db $30 ; Byte Fill
#_11C6E0: db $00
#_11C6E1: db $0F ; Direct Copy
#_11C6E2: db $73, $FF, $B3, $FF, $C3, $FF, $00, $E3
#_11C6EA: db $00, $E0, $C0, $E0, $E0, $F0, $E1, $F1
#_11C6F2: db $22 ; Byte Fill
#_11C6F3: db $00
#_11C6F4: db $14 ; Direct Copy
#_11C6F5: db $1C, $1F, $1F, $0F, $0E, $9F, $FF, $CF
#_11C6FD: db $FF, $E3, $FC, $EC, $F3, $D7, $EF, $DE
#_11C705: db $EE, $AC, $DC, $A8, $D9
#_11C70A: db $24 ; Byte Fill
#_11C70B: db $00
#_11C70C: db $11 ; Direct Copy
#_11C70D: db $01, $03, $06, $3D, $FE, $8D, $FE, $A3
#_11C715: db $5C, $DF, $E0, $DF, $E2, $DF, $E6, $3F
#_11C71D: db $CC, $FF
#_11C71F: db $28 ; Byte Fill
#_11C720: db $00
#_11C721: db $0C ; Direct Copy
#_11C722: db $FD, $FD, $9E, $FE, $8F, $FF, $80, $FF
#_11C72A: db $8E, $FE, $8A, $FA, $C1
#_11C72F: db $22 ; Byte Fill
#_11C730: db $F1
#_11C731: db $1F ; Direct Copy
#_11C732: db $02, $01, $00, $00, $01, $05, $0E, $0E
#_11C73A: db $C1, $E0, $82, $C0, $4D, $E1, $23, $3F
#_11C742: db $30, $0F, $5F, $00, $78, $27, $B7, $AF
#_11C74A: db $1F, $3F, $1E, $C0, $E0, $E0, $C0, $40
#_11C752: db $43 ; Word Fill
#_11C753: db $FE, $EE ; Word Fill
#_11C755: db $E0, $2F ; EXT Direct Copy
#_11C757: db $1C, $EC, $6A, $9B, $C4, $37, $78, $F7
#_11C75F: db $E7, $E8, $07, $08, $01, $01, $03, $04
#_11C767: db $08, $00, $10, $F0, $80, $7F, $3F, $FF
#_11C76F: db $79, $C0, $C1, $81, $40, $00, $44, $00
#_11C777: db $B9, $81, $C7, $C7, $00, $00, $3F, $7E
#_11C77F: db $FF, $FF, $7E, $38, $3B, $82, $45, $01
#_11C787: db $43 ; Word Fill
#_11C788: db $82, $00 ; Word Fill
#_11C78A: db $09 ; Direct Copy
#_11C78B: db $C6, $00, $7D, $01, $39, $01, $93, $83
#_11C793: db $7C, $FE
#_11C795: db $22 ; Byte Fill
#_11C796: db $FF
#_11C797: db $E0, $22 ; EXT Direct Copy
#_11C799: db $FE, $FE, $7C, $23, $C3, $40, $80, $98
#_11C7A1: db $98, $91, $91, $81, $81, $8C, $80, $BC
#_11C7A9: db $80, $FF, $F8, $3C, $7F, $67, $6E, $7E
#_11C7B1: db $7F, $7F, $07, $3F, $FF, $DF, $C0, $F8
#_11C7B9: db $18, $11, $11
#_11C7BC: db $85 ; Repeat Fill
#_11C7BD: db $58, $01 ; Repeat Fill bytes
#_11C7BF: db $0F ; Direct Copy
#_11C7C0: db $E7, $E0, $00, $3F, $E7, $EE, $7E, $7F
#_11C7C8: db $7F, $1F, $87, $FF, $87, $E7, $83, $C3
#_11C7D0: db $43 ; Word Fill
#_11C7D1: db $58, $40 ; Word Fill
#_11C7D3: db $13 ; Direct Copy
#_11C7D4: db $65, $20, $93, $30, $2F, $DF, $00, $18
#_11C7DC: db $3C, $BF, $BF, $DF, $CF, $00, $87, $FF
#_11C7E4: db $A7, $E7, $83, $83
#_11C7E8: db $44 ; Word Fill
#_11C7E9: db $30, $00 ; Word Fill
#_11C7EB: db $0B ; Direct Copy
#_11C7EC: db $30, $DB, $78, $EE, $9F, $00, $18, $7C
#_11C7F4: db $FF, $FF, $CF, $87
#_11C7F8: db $50 ; Word Fill
#_11C7F9: db $00, $02 ; Word Fill
#_11C7FB: db $27 ; Byte Fill
#_11C7FC: db $01
#_11C7FD: db $E0, $29 ; EXT Direct Copy
#_11C7FF: db $E3, $E1, $03, $C2, $5D, $C6, $1E, $87
#_11C807: db $03, $83, $C1, $C1, $E3, $E1, $E2, $E1
#_11C80F: db $1E, $3C, $38, $78, $7C, $3E, $1E, $1E
#_11C817: db $39, $CA, $F8, $19, $FC, $1D, $3C, $DD
#_11C81F: db $DC, $ED, $FA, $EB, $FC, $EF, $10, $EF
#_11C827: db $04, $06
#_11C829: db $22 ; Byte Fill
#_11C82A: db $02
#_11C82B: db $00 ; Direct Copy
#_11C82C: db $04
#_11C82D: db $39 ; Byte Fill
#_11C82E: db $00
#_11C82F: db $1B ; Direct Copy
#_11C830: db $C2, $C3, $CC, $C7, $0C, $07, $14, $07
#_11C838: db $6D, $0E, $7D, $7E, $81, $FE, $07, $F8
#_11C840: db $3C, $38, $F8, $F8, $F0, $80, $00, $00
#_11C848: db $78, $FF, $F4, $F7
#_11C84C: db $43 ; Word Fill
#_11C84D: db $F5, $F6 ; Word Fill
#_11C84F: db $08 ; Direct Copy
#_11C850: db $85, $86, $79, $FE, $83, $7C, $FF, $00
#_11C858: db $00
#_11C859: db $22 ; Byte Fill
#_11C85A: db $08
#_11C85B: db $00 ; Direct Copy
#_11C85C: db $78
#_11C85D: db $22 ; Byte Fill
#_11C85E: db $00
#_11C85F: db $0E ; Direct Copy
#_11C860: db $8B, $FC, $73, $FC, $45, $FA, $5D, $E2
#_11C868: db $99, $E6, $31, $CE, $C3, $3C, $FF
#_11C86F: db $28 ; Byte Fill
#_11C870: db $00
#_11C871: db $45 ; Word Fill
#_11C872: db $FF, $00 ; Word Fill
#_11C874: db $09 ; Direct Copy
#_11C875: db $F6, $09, $E2, $1D, $E3, $1C, $3C, $C3
#_11C87D: db $99, $E7
#_11C87F: db $27 ; Byte Fill
#_11C880: db $00
#_11C881: db $0F ; Direct Copy
#_11C882: db $FD, $03, $FC, $03, $FE, $01, $F3, $0C
#_11C88A: db $E3, $1C, $F2, $0D, $FC, $03, $E5, $1B
#_11C892: db $27 ; Byte Fill
#_11C893: db $00
#_11C894: db $0F ; Direct Copy
#_11C895: db $FC, $C3, $E7, $1B, $03, $FC, $9E, $F9
#_11C89D: db $F8, $67, $E1, $1F, $9F, $6E, $0E, $F1
#_11C8A5: db $33 ; Byte Fill
#_11C8A6: db $00
#_11C8A7: db $00 ; Direct Copy
#_11C8A8: db $FF
#_11C8A9: db $29 ; Byte Fill
#_11C8AA: db $00
#_11C8AB: db $02 ; Direct Copy
#_11C8AC: db $FF, $6F, $EF
#_11C8AF: db $43 ; Word Fill
#_11C8B0: db $7E, $FF ; Word Fill
#_11C8B2: db $0A ; Direct Copy
#_11C8B3: db $3D, $FE, $02, $FD, $6D, $F3, $3D, $BD
#_11C8BB: db $21, $81, $10
#_11C8BE: db $24 ; Byte Fill
#_11C8BF: db $00
#_11C8C0: db $18 ; Direct Copy
#_11C8C1: db $42, $7E, $00, $FF, $3C, $FF, $47, $C7
#_11C8C9: db $81, $81, $85, $85, $F0, $C0, $2F, $E0
#_11C8D1: db $1F, $FF, $00, $00, $38, $7E, $7A, $3F
#_11C8D9: db $1F
#_11C8DA: db $83 ; Repeat Fill
#_11C8DB: db $AB, $02 ; Repeat Fill bytes
#_11C8DD: db $0C ; Direct Copy
#_11C8DE: db $FF, $E6, $FF, $7E, $FF, $B3, $FF, $7B
#_11C8E6: db $FF, $C3, $C3, $BC, $BC
#_11C8EB: db $25 ; Byte Fill
#_11C8EC: db $00
#_11C8ED: db $01 ; Direct Copy
#_11C8EE: db $3C, $43
#_11C8F0: db $43 ; Word Fill
#_11C8F1: db $2C, $DF ; Word Fill
#_11C8F3: db $0B ; Direct Copy
#_11C8F4: db $74, $8F, $F8, $77, $FF, $F8, $FE, $FF
#_11C8FC: db $38, $BB, $C7, $40
#_11C900: db $25 ; Byte Fill
#_11C901: db $00
#_11C902: db $01 ; Direct Copy
#_11C903: db $44, $38
#_11C905: db $43 ; Word Fill
#_11C906: db $6E, $9F ; Word Fill
#_11C908: db $0B ; Direct Copy
#_11C909: db $F6, $0F, $FF, $70, $FE, $FF, $3A, $3B
#_11C911: db $04, $87, $80, $7F
#_11C915: db $24 ; Byte Fill
#_11C916: db $00
#_11C917: db $E0, $44 ; EXT Direct Copy
#_11C919: db $C4, $78, $00, $3C, $FF, $18, $7E, $81
#_11C921: db $BD, $C3, $DB, $E3, $EF, $F1, $F7, $F8
#_11C929: db $FB, $7C, $FD, $00, $81, $42, $24, $10
#_11C931: db $08, $04, $02, $7C, $7F, $F8, $FE, $F1
#_11C939: db $FD, $E3, $FB, $C3, $FF, $81, $E7, $18
#_11C941: db $DB, $3C, $BD, $80, $01, $02, $04, $00
#_11C949: db $18, $24, $42, $FF, $00, $FE, $01, $CF
#_11C951: db $11, $DF, $11, $D7, $19, $D6, $18, $D2
#_11C959: db $1C, $D2, $1D, $00, $00
#_11C95E: db $22 ; Byte Fill
#_11C95F: db $20
#_11C960: db $0C ; Direct Copy
#_11C961: db $21, $21, $20, $0F, $0F, $1F, $1F, $FE
#_11C969: db $FF, $00, $FF, $F8, $07
#_11C96E: db $43 ; Word Fill
#_11C96F: db $FC, $03 ; Word Fill
#_11C971: db $03 ; Direct Copy
#_11C972: db $FD, $03, $F0, $E0
#_11C976: db $25 ; Byte Fill
#_11C977: db $00
#_11C978: db $45 ; Word Fill
#_11C979: db $D3, $1C ; Word Fill
#_11C97B: db $05 ; Direct Copy
#_11C97C: db $E3, $3C, $DB, $14, $D7, $18
#_11C982: db $43 ; Word Fill
#_11C983: db $D3, $1C ; Word Fill
#_11C985: db $22 ; Byte Fill
#_11C986: db $20
#_11C987: db $00 ; Direct Copy
#_11C988: db $00
#_11C989: db $23 ; Byte Fill
#_11C98A: db $20
#_11C98B: db $07 ; Direct Copy
#_11C98C: db $FE, $FF, $FA, $FB, $F5, $F6, $02, $FD
#_11C994: db $47 ; Word Fill
#_11C995: db $FF, $00 ; Word Fill
#_11C997: db $02 ; Direct Copy
#_11C998: db $00, $04, $08
#_11C99B: db $24 ; Byte Fill
#_11C99C: db $00
#_11C99D: db $14 ; Direct Copy
#_11C99E: db $FF, $00, $C1, $C1, $B4, $B4, $2A, $3E
#_11C9A6: db $52, $6E, $BD, $C3, $42, $81, $81, $00
#_11C9AE: db $00, $3E, $4B, $C1, $81
#_11C9B3: db $22 ; Byte Fill
#_11C9B4: db $00
#_11C9B5: db $10 ; Direct Copy
#_11C9B6: db $C5, $46, $9A, $1C, $A4, $38, $94, $18
#_11C9BE: db $AC, $30, $B4, $38, $CA, $4C, $E5, $66
#_11C9C6: db $38
#_11C9C7: db $43 ; Word Fill
#_11C9C8: db $60, $40 ; Word Fill
#_11C9CA: db $11 ; Direct Copy
#_11C9CB: db $40, $30, $18, $3E, $C1, $3C, $C3, $42
#_11C9D3: db $BD, $C3, $3C, $24, $18, $5A, $81, $66
#_11C9DB: db $81, $C3
#_11C9DD: db $28 ; Byte Fill
#_11C9DE: db $00
#_11C9DF: db $05 ; Direct Copy
#_11C9E0: db $11, $E6, $37, $C0, $CA, $30
#_11C9E6: db $43 ; Word Fill
#_11C9E7: db $C4, $38 ; Word Fill
#_11C9E9: db $05 ; Direct Copy
#_11C9EA: db $CA, $30, $37, $C0, $11, $E6
#_11C9F0: db $29 ; Byte Fill
#_11C9F1: db $00
#_11C9F2: db $04 ; Direct Copy
#_11C9F3: db $40, $00, $E0, $00, $40
#_11C9F8: db $22 ; Byte Fill
#_11C9F9: db $00
#_11C9FA: db $04 ; Direct Copy
#_11C9FB: db $60, $00, $70, $00, $60
#_11CA00: db $28 ; Byte Fill
#_11CA01: db $00
#_11CA02: db $11 ; Direct Copy
#_11CA03: db $5B, $C3, $6E, $EF, $BE, $7F, $DD, $3E
#_11CA0B: db $C0, $3F, $BF, $7F, $82, $43, $A6, $67
#_11CA13: db $3C, $10
#_11CA15: db $23 ; Byte Fill
#_11CA16: db $00
#_11CA17: db $11 ; Direct Copy
#_11CA18: db $3C, $18, $70, $8F, $4F, $B0, $B9, $7F
#_11CA20: db $5F, $DF, $F0, $F0, $8F, $8F, $00, $FF
#_11CA28: db $7F, $80
#_11CA2A: db $22 ; Byte Fill
#_11CA2B: db $00
#_11CA2C: db $02 ; Direct Copy
#_11CA2D: db $20, $0F, $70
#_11CA30: db $22 ; Byte Fill
#_11CA31: db $00
#_11CA32: db $0F ; Direct Copy
#_11CA33: db $7F, $3F, $C0, $4C, $BF, $D7, $3F, $F6
#_11CA3B: db $7F, $C7, $47, $80, $38, $FF, $00, $80
#_11CA43: db $23 ; Byte Fill
#_11CA44: db $00
#_11CA45: db $11 ; Direct Copy
#_11CA46: db $38, $47, $00, $87, $78, $CF, $30, $78
#_11CA4E: db $87, $14, $EF, $5A, $E7, $BD, $C3, $FE
#_11CA56: db $01, $FF
#_11CA58: db $28 ; Byte Fill
#_11CA59: db $00
#_11CA5A: db $0B ; Direct Copy
#_11CA5B: db $C6, $39, $66, $99, $BF, $C0, $3F, $C0
#_11CA63: db $6E, $91, $D6, $39
#_11CA67: db $43 ; Word Fill
#_11CA68: db $CB, $3C ; Word Fill
#_11CA6A: db $27 ; Byte Fill
#_11CA6B: db $00
#_11CA6C: db $05 ; Direct Copy
#_11CA6D: db $59, $E7, $2C, $73, $3C, $33
#_11CA73: db $43 ; Word Fill
#_11CA74: db $5E, $39 ; Word Fill
#_11CA76: db $07 ; Direct Copy
#_11CA77: db $BD, $73, $BB, $77, $58, $C7, $00, $80
#_11CA7F: db $22 ; Byte Fill
#_11CA80: db $C0
#_11CA81: db $13 ; Direct Copy
#_11CA82: db $80, $80, $20, $1D, $43, $F5, $EB, $92
#_11CA8A: db $ED, $7A, $87, $3A, $C7, $8B, $B7, $C9
#_11CA92: db $D7, $DD, $D3, $A0
#_11CA96: db $23 ; Byte Fill
#_11CA97: db $00
#_11CA98: db $12 ; Direct Copy
#_11CA99: db $40, $20, $20, $6D, $73, $7C, $73, $74
#_11CAA1: db $7B, $A6, $A9, $C7, $D8, $8D, $B2, $8C
#_11CAA9: db $F3, $1E, $E9
#_11CAAC: db $22 ; Byte Fill
#_11CAAD: db $80
#_11CAAE: db $04 ; Direct Copy
#_11CAAF: db $50, $20, $40, $00, $00
#_11CAB4: db $45 ; Word Fill
#_11CAB5: db $2F, $30 ; Word Fill
#_11CAB7: db $09 ; Direct Copy
#_11CAB8: db $6F, $70, $EF, $F0, $E7, $F8, $E0, $FF
#_11CAC0: db $C1, $FF
#_11CAC2: db $22 ; Byte Fill
#_11CAC3: db $C0
#_11CAC4: db $00 ; Direct Copy
#_11CAC5: db $80
#_11CAC6: db $23 ; Byte Fill
#_11CAC7: db $00
#_11CAC8: db $17 ; Direct Copy
#_11CAC9: db $B1, $F2, $DD, $FE, $83, $BC, $06, $D9
#_11CAD1: db $0E, $F1, $67, $F8, $63, $EC, $11, $D6
#_11CAD9: db $0C, $00, $40, $20, $00, $00, $10, $28
#_11CAE1: db $47 ; Word Fill
#_11CAE2: db $EF, $F0 ; Word Fill
#_11CAE4: db $07 ; Direct Copy
#_11CAE5: db $CF, $D0, $AF, $B0, $DF, $E0, $2F, $D0
#_11CAED: db $23 ; Byte Fill
#_11CAEE: db $00
#_11CAEF: db $02 ; Direct Copy
#_11CAF0: db $20, $40, $00
#_11CAF3: db $44 ; Word Fill
#_11CAF4: db $00, $FF ; Word Fill
#_11CAF6: db $0B ; Direct Copy
#_11CAF7: db $EE, $11, $B7, $48, $E2, $1D, $BD, $4B
#_11CAFF: db $CA, $35, $9F, $7B
#_11CB03: db $27 ; Byte Fill
#_11CB04: db $00
#_11CB05: db $0F ; Direct Copy
#_11CB06: db $FE, $01, $EB, $15, $FC, $03, $D5, $2B
#_11CB0E: db $E7, $1D, $F6, $09, $FB, $05, $D7, $2D
#_11CB16: db $27 ; Byte Fill
#_11CB17: db $00
#_11CB18: db $06 ; Direct Copy
#_11CB19: db $04, $00, $EE, $00, $E4, $00, $40
#_11CB20: db $30 ; Byte Fill
#_11CB21: db $00
#_11CB22: db $0E ; Direct Copy
#_11CB23: db $3F, $C0, $73, $8C, $F3, $0C, $FF, $00
#_11CB2B: db $93, $60, $90, $60, $F8, $00, $F8
#_11CB32: db $28 ; Byte Fill
#_11CB33: db $00
#_11CB34: db $43 ; Word Fill
#_11CB35: db $22, $CC ; Word Fill
#_11CB37: db $00 ; Direct Copy
#_11CB38: db $CC
#_11CB39: db $22 ; Byte Fill
#_11CB3A: db $00
#_11CB3B: db $04 ; Direct Copy
#_11CB3C: db $10, $60, $90, $60, $60
#_11CB41: db $2A ; Byte Fill
#_11CB42: db $00
#_11CB43: db $0F ; Direct Copy
#_11CB44: db $DE, $3F, $E9, $1E, $DE, $21, $CF, $2F
#_11CB4C: db $D6, $37, $E1, $5E, $BF, $60, $DF, $3F
#_11CB54: db $22 ; Byte Fill
#_11CB55: db $00
#_11CB56: db $01 ; Direct Copy
#_11CB57: db $10, $08
#_11CB59: db $22 ; Byte Fill
#_11CB5A: db $00
#_11CB5B: db $12 ; Direct Copy
#_11CB5C: db $BE, $7F, $63, $E3, $9C, $9C, $1C, $E3
#_11CB64: db $E3, $1C, $7F, $FF, $92, $F2, $E0, $1F
#_11CB6C: db $00, $1C, $63
#_11CB6F: db $22 ; Byte Fill
#_11CB70: db $00
#_11CB71: db $0B ; Direct Copy
#_11CB72: db $0D, $00, $C2, $3D, $D8, $3F, $A7, $7F
#_11CB7A: db $D8, $67, $BF, $40
#_11CB7E: db $44 ; Word Fill
#_11CB7F: db $FF, $00 ; Word Fill
#_11CB81: db $28 ; Byte Fill
#_11CB82: db $00
#_11CB83: db $FF ; End of GFX 03

;===================================================================================================

GFX_04:
#_11CB84: db $0F ; Direct Copy
#_11CB85: db $A0, $37, $A7, $2F, $AF, $3F, $AE, $3E
#_11CB8D: db $9C, $1C, $81, $01, $C3, $02, $FF, $00
#_11CB95: db $25 ; Byte Fill
#_11CB96: db $7F
#_11CB97: db $02 ; Direct Copy
#_11CB98: db $3E, $00, $00
#_11CB9B: db $22 ; Byte Fill
#_11CB9C: db $FF
#_11CB9D: db $0B ; Direct Copy
#_11CB9E: db $FC, $FC, $7E, $7E, $3C, $3C, $80, $80
#_11CBA6: db $C0, $40, $FF, $00
#_11CBAA: db $25 ; Byte Fill
#_11CBAB: db $FF
#_11CBAC: db $00 ; Direct Copy
#_11CBAD: db $7F
#_11CBAE: db $44 ; Word Fill
#_11CBAF: db $00, $FF ; Word Fill
#_11CBB1: db $03 ; Direct Copy
#_11CBB2: db $31, $31, $EC, $EC
#_11CBB6: db $22 ; Byte Fill
#_11CBB7: db $FF
#_11CBB8: db $0C ; Direct Copy
#_11CBB9: db $00, $FF, $00, $3F, $3F, $FF, $FF, $CE
#_11CBC1: db $13, $00, $FF, $FF, $C0
#_11CBC6: db $43 ; Word Fill
#_11CBC7: db $FF, $00 ; Word Fill
#_11CBC9: db $03 ; Direct Copy
#_11CBCA: db $86, $86, $41, $41
#_11CBCE: db $22 ; Byte Fill
#_11CBCF: db $FF
#_11CBD0: db $02 ; Direct Copy
#_11CBD1: db $00, $FF, $00
#_11CBD4: db $23 ; Byte Fill
#_11CBD5: db $FF
#_11CBD6: db $14 ; Direct Copy
#_11CBD7: db $79, $BE, $00, $FF, $FF, $00, $C3, $7F
#_11CBDF: db $E0, $7F, $F0, $3F, $BC, $5F, $BF, $6F
#_11CBE7: db $9F, $77, $8F, $78, $C7
#_11CBEC: db $22 ; Byte Fill
#_11CBED: db $7F
#_11CBEE: db $05 ; Direct Copy
#_11CBEF: db $3F, $5F, $6F, $77, $78, $7F
#_11CBF5: db $37 ; Byte Fill
#_11CBF6: db $00
#_11CBF7: db $01 ; Direct Copy
#_11CBF8: db $FF, $7F
#_11CBFA: db $4D ; Word Fill
#_11CBFB: db $FF, $40 ; Word Fill
#_11CBFD: db $27 ; Byte Fill
#_11CBFE: db $7F
#_11CBFF: db $22 ; Byte Fill
#_11CC00: db $FF
#_11CC01: db $4C ; Word Fill
#_11CC02: db $00, $FF ; Word Fill
#_11CC04: db $27 ; Byte Fill
#_11CC05: db $FF
#_11CC06: db $09 ; Direct Copy
#_11CC07: db $0F, $F0, $38, $C0, $60, $87, $44, $8C
#_11CC0F: db $8A, $5B
#_11CC11: db $43 ; Word Fill
#_11CC12: db $84, $56 ; Word Fill
#_11CC14: db $1C ; Direct Copy
#_11CC15: db $8A, $5B, $00, $07, $18, $33, $24, $29
#_11CC1D: db $29, $24, $C4, $0C, $A0, $47, $98, $60
#_11CC25: db $8F, $78, $C9, $3F, $69, $9F, $39, $C7
#_11CC2D: db $0F, $F0, $33, $18, $07
#_11CC32: db $24 ; Byte Fill
#_11CC33: db $00
#_11CC34: db $1E ; Direct Copy
#_11CC35: db $80, $C0, $1F, $9F, $3E, $BE, $3D, $BD
#_11CC3D: db $38, $B9, $11, $B0, $19, $B8, $BD, $3C
#_11CC45: db $3F, $60, $41, $42, $46, $4E, $46, $42
#_11CC4D: db $00, $00, $BF, $FF, $00, $00, $FF
#_11CC54: db $48 ; Word Fill
#_11CC55: db $FF, $00 ; Word Fill
#_11CC57: db $02 ; Direct Copy
#_11CC58: db $FF, $00, $FF
#_11CC5B: db $E4, $34 ; EXT Byte Fill
#_11CC5D: db $00
#_11CC5E: db $01 ; Direct Copy
#_11CC5F: db $9D, $1C
#_11CC61: db $43 ; Word Fill
#_11CC62: db $BD, $3C ; Word Fill
#_11CC64: db $01 ; Direct Copy
#_11CC65: db $99, $18
#_11CC67: db $83 ; Repeat Fill
#_11CC68: db $54, $01 ; Repeat Fill bytes
#_11CC6A: db $83 ; Repeat Fill
#_11CC6B: db $54, $01 ; Repeat Fill bytes
#_11CC6D: db $01 ; Direct Copy
#_11CC6E: db $62, $42
#_11CC70: db $45 ; Word Fill
#_11CC71: db $42, $66 ; Word Fill
#_11CC73: db $45 ; Word Fill
#_11CC74: db $57, $C0 ; Word Fill
#_11CC76: db $05 ; Direct Copy
#_11CC77: db $77, $F0, $3F, $C8, $1F, $80
#_11CC7D: db $43 ; Word Fill
#_11CC7E: db $57, $C0 ; Word Fill
#_11CC80: db $22 ; Byte Fill
#_11CC81: db $38
#_11CC82: db $04 ; Direct Copy
#_11CC83: db $08, $30, $78, $38, $38
#_11CC88: db $43 ; Word Fill
#_11CC89: db $4E, $2F ; Word Fill
#_11CC8B: db $0D ; Direct Copy
#_11CC8C: db $56, $37, $46, $37, $26, $17, $16, $07
#_11CC94: db $0E, $0F, $0E, $2F, $10, $10
#_11CC9A: db $23 ; Byte Fill
#_11CC9B: db $08
#_11CC9C: db $01 ; Direct Copy
#_11CC9D: db $10, $10
#_11CC9F: db $4F ; Word Fill
#_11CCA0: db $FF, $00 ; Word Fill
#_11CCA2: db $27 ; Byte Fill
#_11CCA3: db $FF
#_11CCA4: db $0A ; Direct Copy
#_11CCA5: db $AB, $EC, $57, $B7, $28, $D8, $18, $E7
#_11CCAD: db $FF, $00, $FF
#_11CCB0: db $44 ; Word Fill
#_11CCB1: db $FF, $00 ; Word Fill
#_11CCB3: db $02 ; Direct Copy
#_11CCB4: db $10, $08, $07
#_11CCB7: db $24 ; Byte Fill
#_11CCB8: db $00
#_11CCB9: db $05 ; Direct Copy
#_11CCBA: db $FF, $A2, $5D, $FF, $A2, $A2
#_11CCC0: db $84 ; Repeat Fill
#_11CCC1: db $0D, $01 ; Repeat Fill bytes
#_11CCC3: db $44 ; Word Fill
#_11CCC4: db $7F, $80 ; Word Fill
#_11CCC6: db $02 ; Direct Copy
#_11CCC7: db $00, $00, $5D
#_11CCCA: db $24 ; Byte Fill
#_11CCCB: db $00
#_11CCCC: db $83 ; Repeat Fill
#_11CCCD: db $62, $00 ; Repeat Fill bytes
#_11CCCF: db $13 ; Direct Copy
#_11CCD0: db $B8, $1F, $9F, $07, $C7, $40, $E0, $20
#_11CCD8: db $F8, $18, $FF, $00, $7F, $3F, $5F, $67
#_11CCE0: db $78, $3F, $1F, $00
#_11CCE4: db $4F ; Word Fill
#_11CCE5: db $C3, $5E ; Word Fill
#_11CCE7: db $27 ; Byte Fill
#_11CCE8: db $7E
#_11CCE9: db $4A ; Word Fill
#_11CCEA: db $FF, $40 ; Word Fill
#_11CCEC: db $00 ; Direct Copy
#_11CCED: db $7F
#_11CCEE: db $43 ; Word Fill
#_11CCEF: db $FF, $00 ; Word Fill
#_11CCF1: db $26 ; Byte Fill
#_11CCF2: db $7F
#_11CCF3: db $4A ; Word Fill
#_11CCF4: db $00, $FF ; Word Fill
#_11CCF6: db $22 ; Byte Fill
#_11CCF7: db $FF
#_11CCF8: db $02 ; Direct Copy
#_11CCF9: db $00, $FF, $00
#_11CCFC: db $26 ; Byte Fill
#_11CCFD: db $FF
#_11CCFE: db $04 ; Direct Copy
#_11CCFF: db $00, $1D, $17, $0D, $F7
#_11CD04: db $43 ; Word Fill
#_11CD05: db $06, $FB ; Word Fill
#_11CD07: db $08 ; Direct Copy
#_11CD08: db $FE, $03, $FA, $FC, $03, $FC, $00, $FF
#_11CD10: db $E0
#_11CD11: db $23 ; Byte Fill
#_11CD12: db $00
#_11CD13: db $0C ; Direct Copy
#_11CD14: db $01, $00, $00, $C6, $48, $DC, $05, $EC
#_11CD1C: db $80, $F7, $80, $00, $7F
#_11CD21: db $22 ; Byte Fill
#_11CD22: db $FF
#_11CD23: db $07 ; Direct Copy
#_11CD24: db $00, $00, $FF, $39, $23, $13, $08, $80
#_11CD2C: db $22 ; Byte Fill
#_11CD2D: db $00
#_11CD2E: db $02 ; Direct Copy
#_11CD2F: db $9D, $1C, $B1
#_11CD32: db $84 ; Repeat Fill
#_11CD33: db $53, $01 ; Repeat Fill bytes
#_11CD35: db $01 ; Direct Copy
#_11CD36: db $E7, $00
#_11CD38: db $43 ; Word Fill
#_11CD39: db $C3, $7E ; Word Fill
#_11CD3B: db $01 ; Direct Copy
#_11CD3C: db $C1, $7E
#_11CD3E: db $83 ; Repeat Fill
#_11CD3F: db $60, $01 ; Repeat Fill bytes
#_11CD41: db $00 ; Direct Copy
#_11CD42: db $7E
#_11CD43: db $E4, $4A ; EXT Byte Fill
#_11CD45: db $00
#_11CD46: db $43 ; Word Fill
#_11CD47: db $57, $C0 ; Word Fill
#_11CD49: db $12 ; Direct Copy
#_11CD4A: db $73, $E4, $69, $E2, $74, $F1, $32, $F0
#_11CD52: db $39, $F8, $9F, $7F, $38, $38, $18, $1C
#_11CD5A: db $0E, $0F, $07
#_11CD5D: db $4A ; Word Fill
#_11CD5E: db $00, $FF ; Word Fill
#_11CD60: db $05 ; Direct Copy
#_11CD61: db $6F, $00, $C7, $00, $F7, $FC
#_11CD67: db $23 ; Byte Fill
#_11CD68: db $00
#_11CD69: db $0D ; Direct Copy
#_11CD6A: db $30, $F8, $FF, $03, $83, $00, $24, $C3
#_11CD72: db $00, $FF, $24, $3C, $C3, $C3
#_11CD78: db $23 ; Byte Fill
#_11CD79: db $FF
#_11CD7A: db $01 ; Direct Copy
#_11CD7B: db $00, $FF
#_11CD7D: db $22 ; Byte Fill
#_11CD7E: db $00
#_11CD7F: db $01 ; Direct Copy
#_11CD80: db $C3, $3C
#_11CD82: db $3A ; Byte Fill
#_11CD83: db $00
#_11CD84: db $0F ; Direct Copy
#_11CD85: db $38, $07, $3F, $0D, $3F, $18, $1F, $30
#_11CD8D: db $2F, $38, $37, $2D, $5A, $47, $0F, $D5
#_11CD95: db $25 ; Byte Fill
#_11CD96: db $C0
#_11CD97: db $11 ; Direct Copy
#_11CD98: db $A0, $20, $E3, $1C, $FF, $B6, $FF, $E3
#_11CDA0: db $FF, $41, $BE, $E3, $5D, $B6, $EB, $1C
#_11CDA8: db $FF, $14
#_11CDAA: db $27 ; Byte Fill
#_11CDAB: db $00
#_11CDAC: db $08 ; Direct Copy
#_11CDAD: db $2F, $16, $27, $1B, $73, $3C, $F8, $5F
#_11CDB5: db $BC
#_11CDB6: db $83 ; Repeat Fill
#_11CDB7: db $69, $00 ; Repeat Fill bytes
#_11CDB9: db $16 ; Direct Copy
#_11CDBA: db $7B, $C7, $7C, $D6, $DB, $BC, $5F, $6F
#_11CDC2: db $77, $7B, $7C, $C1, $5E, $C0, $5F, $C0
#_11CDCA: db $6F, $E0, $70, $70, $BF, $3F, $DF
#_11CDD1: db $43 ; Word Fill
#_11CDD2: db $3F, $C0 ; Word Fill
#_11CDD4: db $00 ; Direct Copy
#_11CDD5: db $7E
#_11CDD6: db $22 ; Byte Fill
#_11CDD7: db $7F
#_11CDD8: db $22 ; Byte Fill
#_11CDD9: db $FF
#_11CDDA: db $02 ; Direct Copy
#_11CDDB: db $C0, $FF, $00
#_11CDDE: db $44 ; Word Fill
#_11CDDF: db $00, $FF ; Word Fill
#_11CDE1: db $09 ; Direct Copy
#_11CDE2: db $00, $07, $FC, $FE, $FA, $FC, $01, $FC
#_11CDEA: db $03, $00
#_11CDEC: db $25 ; Byte Fill
#_11CDED: db $FF
#_11CDEE: db $00 ; Direct Copy
#_11CDEF: db $03
#_11CDF0: db $37 ; Byte Fill
#_11CDF1: db $00
#_11CDF2: db $00 ; Direct Copy
#_11CDF3: db $10
#_11CDF4: db $43 ; Word Fill
#_11CDF5: db $F0, $1C ; Word Fill
#_11CDF7: db $02 ; Direct Copy
#_11CDF8: db $EB, $18, $EC
#_11CDFB: db $43 ; Word Fill
#_11CDFC: db $1B, $EE ; Word Fill
#_11CDFE: db $07 ; Direct Copy
#_11CDFF: db $0D, $F7, $0D, $17, $EF, $EF, $E0, $E3
#_11CE07: db $23 ; Byte Fill
#_11CE08: db $E0
#_11CE09: db $24 ; Byte Fill
#_11CE0A: db $00
#_11CE0B: db $22 ; Byte Fill
#_11CE0C: db $FF
#_11CE0D: db $07 ; Direct Copy
#_11CE0E: db $FD, $1D, $FC, $3C, $FD, $3D, $D7, $59
#_11CE16: db $83 ; Repeat Fill
#_11CE17: db $63, $02 ; Repeat Fill bytes
#_11CE19: db $03 ; Direct Copy
#_11CE1A: db $1F, $3F, $3F, $38
#_11CE1E: db $43 ; Word Fill
#_11CE1F: db $81, $7E ; Word Fill
#_11CE21: db $02 ; Direct Copy
#_11CE22: db $FF, $00, $FF
#_11CE25: db $44 ; Word Fill
#_11CE26: db $3E, $C1 ; Word Fill
#_11CE28: db $83 ; Repeat Fill
#_11CE29: db $F4, $03 ; Repeat Fill bytes
#_11CE2B: db $27 ; Byte Fill
#_11CE2C: db $00
#_11CE2D: db $0B ; Direct Copy
#_11CE2E: db $FF, $00, $C0, $68, $C0, $57, $88, $6F
#_11CE36: db $C7, $58, $CF, $43
#_11CE3A: db $43 ; Word Fill
#_11CE3B: db $CF, $47 ; Word Fill
#_11CE3D: db $08 ; Direct Copy
#_11CE3E: db $00, $37, $3B, $10, $20, $33, $37, $37
#_11CE46: db $FF
#_11CE47: db $23 ; Byte Fill
#_11CE48: db $00
#_11CE49: db $85 ; Repeat Fill
#_11CE4A: db $15, $01 ; Repeat Fill bytes
#_11CE4C: db $00 ; Direct Copy
#_11CE4D: db $FC
#_11CE4E: db $43 ; Word Fill
#_11CE4F: db $FF, $F8 ; Word Fill
#_11CE51: db $83 ; Repeat Fill
#_11CE52: db $5C, $00 ; Repeat Fill bytes
#_11CE54: db $03 ; Direct Copy
#_11CE55: db $00, $FD, $FB, $FB
#_11CE59: db $37 ; Byte Fill
#_11CE5A: db $00
#_11CE5B: db $07 ; Direct Copy
#_11CE5C: db $8E, $7F, $C0, $3F, $E1, $1E, $F8, $07
#_11CE64: db $43 ; Word Fill
#_11CE65: db $FF, $00 ; Word Fill
#_11CE67: db $22 ; Byte Fill
#_11CE68: db $FF
#_11CE69: db $28 ; Byte Fill
#_11CE6A: db $00
#_11CE6B: db $0B ; Direct Copy
#_11CE6C: db $32, $FE, $19, $7F, $44, $BF, $80, $7F
#_11CE74: db $FC, $03, $FF, $00
#_11CE78: db $22 ; Byte Fill
#_11CE79: db $FF
#_11CE7A: db $02 ; Direct Copy
#_11CE7B: db $00, $01, $80
#_11CE7E: db $E4, $39 ; EXT Byte Fill
#_11CE80: db $00
#_11CE81: db $22 ; Byte Fill
#_11CE82: db $FF
#_11CE83: db $24 ; Byte Fill
#_11CE84: db $00
#_11CE85: db $22 ; Byte Fill
#_11CE86: db $FF
#_11CE87: db $84 ; Repeat Fill
#_11CE88: db $30, $04 ; Repeat Fill bytes
#_11CE8A: db $83 ; Repeat Fill
#_11CE8B: db $63, $02 ; Repeat Fill bytes
#_11CE8D: db $10 ; Direct Copy
#_11CE8E: db $83, $82, $7D, $7C, $5D, $5C, $75, $74
#_11CE96: db $5D, $5C, $7D, $7C, $83, $82, $FF, $00
#_11CE9E: db $7C
#_11CE9F: db $24 ; Byte Fill
#_11CEA0: db $FE
#_11CEA1: db $00 ; Direct Copy
#_11CEA2: db $7C
#_11CEA3: db $E4, $60 ; EXT Byte Fill
#_11CEA5: db $00
#_11CEA6: db $19 ; Direct Copy
#_11CEA7: db $FF, $00, $F9, $07, $E3, $1E, $CE, $3C
#_11CEAF: db $9C, $79, $38, $F3, $31, $E6, $53, $C4
#_11CEB7: db $00, $00, $01, $03, $06, $0C, $18, $38
#_11CEBF: db $FF, $00
#_11CEC1: db $22 ; Byte Fill
#_11CEC2: db $FF
#_11CEC3: db $00 ; Direct Copy
#_11CEC4: db $00
#_11CEC5: db $43 ; Word Fill
#_11CEC6: db $00, $FF ; Word Fill
#_11CEC8: db $44 ; Word Fill
#_11CEC9: db $FF, $00 ; Word Fill
#_11CECB: db $22 ; Byte Fill
#_11CECC: db $00
#_11CECD: db $00 ; Direct Copy
#_11CECE: db $FF
#_11CECF: db $24 ; Byte Fill
#_11CED0: db $00
#_11CED1: db $0B ; Direct Copy
#_11CED2: db $C1, $3E, $E1, $1E, $7F, $80, $7F, $9E
#_11CEDA: db $21, $DE, $1F, $E0
#_11CEDE: db $22 ; Byte Fill
#_11CEDF: db $FF
#_11CEE0: db $28 ; Byte Fill
#_11CEE1: db $00
#_11CEE2: db $44 ; Word Fill
#_11CEE3: db $CF, $47 ; Word Fill
#_11CEE5: db $03 ; Direct Copy
#_11CEE6: db $46, $CE, $44, $CD
#_11CEEA: db $43 ; Word Fill
#_11CEEB: db $40, $CF ; Word Fill
#_11CEED: db $E0, $22 ; EXT Direct Copy
#_11CEEF: db $47, $CF, $47, $37, $37, $36, $35, $32
#_11CEF7: db $30, $37, $37, $66, $99, $A5, $5A, $A5
#_11CEFF: db $00, $18, $24, $C3, $18, $E7, $00, $E7
#_11CF07: db $DB, $FF, $E7, $18, $18, $5A, $E7, $3C
#_11CF0F: db $18, $C3, $E7
#_11CF12: db $44 ; Word Fill
#_11CF13: db $FF, $F8 ; Word Fill
#_11CF15: db $10 ; Direct Copy
#_11CF16: db $78, $7F, $38, $3F, $98, $FF, $3C, $FF
#_11CF1E: db $FC, $FF, $FE, $FB, $FB, $7B, $BB, $5B
#_11CF26: db $3D
#_11CF27: db $62 ; Increasing Fill
#_11CF28: db $FD ; Increasing Fill Start
#_11CF29: db $0D ; Direct Copy
#_11CF2A: db $40, $E0, $3F, $BE, $41, $82, $7D, $C2
#_11CF32: db $7D, $BE, $7D, $C0, $3F, $FF
#_11CF38: db $28 ; Byte Fill
#_11CF39: db $00
#_11CF3A: db $83 ; Repeat Fill
#_11CF3B: db $0B, $01 ; Repeat Fill bytes
#_11CF3D: db $01 ; Direct Copy
#_11CF3E: db $7E, $81
#_11CF40: db $43 ; Word Fill
#_11CF41: db $42, $BD ; Word Fill
#_11CF43: db $04 ; Direct Copy
#_11CF44: db $7E, $BD, $00, $FF, $FF
#_11CF49: db $28 ; Byte Fill
#_11CF4A: db $00
#_11CF4B: db $FF ; End of GFX 04

;===================================================================================================

GFX_05:
#_11CF4C: db $43 ; Word Fill
#_11CF4D: db $FF, $00 ; Word Fill
#_11CF4F: db $0E ; Direct Copy
#_11CF50: db $70, $80, $7F, $88, $0F, $88, $03, $8C
#_11CF58: db $04, $88, $05, $49, $FF, $FF, $7F
#_11CF5F: db $23 ; Byte Fill
#_11CF60: db $77
#_11CF61: db $04 ; Direct Copy
#_11CF62: db $B6, $C0, $3E, $F0, $01
#_11CF67: db $43 ; Word Fill
#_11CF68: db $F0, $00 ; Word Fill
#_11CF6A: db $E0, $22 ; EXT Direct Copy
#_11CF6C: db $D8, $1F, $DB, $04, $DC, $00, $DD, $01
#_11CF74: db $C1, $FE, $FF, $FF, $E0, $FF, $FF, $FE
#_11CF7C: db $FF, $00, $FF, $7B, $84, $00, $FF, $71
#_11CF84: db $CA, $75, $CE, $75, $EE, $71, $B0, $7F
#_11CF8C: db $00, $00, $7B
#_11CF8F: db $24 ; Byte Fill
#_11CF90: db $00
#_11CF91: db $08 ; Direct Copy
#_11CF92: db $FF, $00, $FF, $FF, $08, $14, $FF, $EB
#_11CF9A: db $DC
#_11CF9B: db $43 ; Word Fill
#_11CF9C: db $E3, $1C ; Word Fill
#_11CF9E: db $1A ; Direct Copy
#_11CF9F: db $EB, $1C, $E3, $00, $00, $E3, $08, $08
#_11CFA7: db $00, $08, $08, $F1, $3F, $62, $BF, $70
#_11CFAF: db $BF, $50, $BF, $D8, $3F, $70, $9F, $60
#_11CFB7: db $9F, $7F, $80
#_11CFBA: db $27 ; Byte Fill
#_11CFBB: db $00
#_11CFBC: db $11 ; Direct Copy
#_11CFBD: db $1C, $E3, $7F, $80, $7F, $A2, $7F, $BE
#_11CFC5: db $41, $BE, $7F, $80, $00, $FF, $FF, $00
#_11CFCD: db $08, $08
#_11CFCF: db $25 ; Byte Fill
#_11CFD0: db $00
#_11CFD1: db $13 ; Direct Copy
#_11CFD2: db $0B, $F2, $0D, $F0, $13, $E9, $15, $E6
#_11CFDA: db $1E, $E9, $1C, $EB, $0E, $F5, $FF, $00
#_11CFE2: db $04, $02, $04, $08
#_11CFE6: db $23 ; Byte Fill
#_11CFE7: db $00
#_11CFE8: db $12 ; Direct Copy
#_11CFE9: db $3F, $C0, $40, $A0, $87, $47, $8F, $4F
#_11CFF1: db $8C, $4F, $8B, $4F, $AB, $6F, $8A, $6F
#_11CFF9: db $00, $1F, $38
#_11CFFC: db $22 ; Byte Fill
#_11CFFD: db $30
#_11CFFE: db $16 ; Direct Copy
#_11CFFF: db $10, $10, $C7, $38, $38, $44, $01, $39
#_11D007: db $83, $83, $46, $C7, $BD, $FF, $C3, $FF
#_11D00F: db $7E, $FF, $00, $83, $C6, $7C, $38
#_11D016: db $22 ; Byte Fill
#_11D017: db $00
#_11D018: db $00 ; Direct Copy
#_11D019: db $AD
#_11D01A: db $44 ; Word Fill
#_11D01B: db $6F, $8B ; Word Fill
#_11D01D: db $09 ; Direct Copy
#_11D01E: db $8C, $4F, $8F, $4F, $A6, $66, $90, $70
#_11D026: db $89, $79
#_11D028: db $22 ; Byte Fill
#_11D029: db $10
#_11D02A: db $14 ; Direct Copy
#_11D02B: db $30, $30, $19, $0F, $06, $FE, $FF, $C3
#_11D033: db $FF, $3D, $FF, $FE, $FF, $07, $07, $73
#_11D03B: db $73, $89, $F9, $04, $FC
#_11D040: db $23 ; Byte Fill
#_11D041: db $00
#_11D042: db $1B ; Direct Copy
#_11D043: db $F8, $8C, $06, $03, $CF, $41, $C3, $5A
#_11D04B: db $C7, $74, $88, $6C, $90, $18, $B0, $3F
#_11D053: db $EF, $77, $FF, $00, $31, $2C, $18, $33
#_11D05B: db $67, $47, $00, $00
#_11D05F: db $24 ; Byte Fill
#_11D060: db $FF
#_11D061: db $25 ; Byte Fill
#_11D062: db $00
#_11D063: db $23 ; Byte Fill
#_11D064: db $FF
#_11D065: db $83 ; Repeat Fill
#_11D066: db $84, $00 ; Repeat Fill bytes
#_11D068: db $22 ; Byte Fill
#_11D069: db $FF
#_11D06A: db $00 ; Direct Copy
#_11D06B: db $00
#_11D06C: db $43 ; Word Fill
#_11D06D: db $00, $FF ; Word Fill
#_11D06F: db $19 ; Direct Copy
#_11D070: db $C0, $FF, $00, $08, $1F, $24, $2F, $10
#_11D078: db $D2, $ED, $FF, $FF, $00, $3F, $CF, $00
#_11D080: db $F1, $D9, $ED, $00, $00, $C3, $00, $E3
#_11D088: db $00, $F3
#_11D08A: db $44 ; Word Fill
#_11D08B: db $00, $FB ; Word Fill
#_11D08D: db $05 ; Direct Copy
#_11D08E: db $F3, $00, $E3, $00, $C3, $00
#_11D094: db $27 ; Byte Fill
#_11D095: db $7E
#_11D096: db $02 ; Direct Copy
#_11D097: db $FF, $00, $81
#_11D09A: db $44 ; Word Fill
#_11D09B: db $00, $FF ; Word Fill
#_11D09D: db $08 ; Direct Copy
#_11D09E: db $DF, $00, $CF, $00, $C7, $00, $C3, $00
#_11D0A6: db $00
#_11D0A7: db $26 ; Byte Fill
#_11D0A8: db $7E
#_11D0A9: db $E0, $2F ; EXT Direct Copy
#_11D0AB: db $41, $B9, $28, $C4, $00, $EF, $15, $ED
#_11D0B3: db $14, $EC, $06, $FE, $0D, $FD, $00, $04
#_11D0BB: db $C6, $F3, $F0, $F2, $F3, $F1, $F2, $FB
#_11D0C3: db $00, $FE, $80, $7E, $40, $BE, $18, $86
#_11D0CB: db $42, $BE, $1E, $7F, $04, $24, $92, $B2
#_11D0D3: db $FF, $FF, $7F, $7F, $01, $80, $DB, $4D
#_11D0DB: db $84 ; Repeat Fill
#_11D0DC: db $2E, $01 ; Repeat Fill bytes
#_11D0DE: db $0D ; Direct Copy
#_11D0DF: db $00, $FF, $EF, $28, $D7, $34, $DB, $AA
#_11D0E7: db $CD, $95, $E6, $00, $00, $FF
#_11D0ED: db $22 ; Byte Fill
#_11D0EE: db $00
#_11D0EF: db $01 ; Direct Copy
#_11D0F0: db $10, $08
#_11D0F2: db $43 ; Word Fill
#_11D0F3: db $FF, $00 ; Word Fill
#_11D0F5: db $09 ; Direct Copy
#_11D0F6: db $81, $81, $7F, $71, $1A, $11, $CF, $C1
#_11D0FE: db $04, $FB
#_11D100: db $83 ; Repeat Fill
#_11D101: db $48, $00 ; Repeat Fill bytes
#_11D103: db $17 ; Direct Copy
#_11D104: db $7E, $80, $E4, $30, $00, $FB, $A7, $68
#_11D10C: db $B0, $70, $BB, $7F, $D1, $3F, $A0, $5F
#_11D114: db $DF, $60, $BF, $20, $FF, $00, $10, $0F
#_11D11C: db $23 ; Byte Fill
#_11D11D: db $00
#_11D11E: db $02 ; Direct Copy
#_11D11F: db $40, $00, $FF
#_11D122: db $22 ; Byte Fill
#_11D123: db $00
#_11D124: db $05 ; Direct Copy
#_11D125: db $E7, $FF, $C3, $FF, $00, $FF
#_11D12B: db $45 ; Word Fill
#_11D12C: db $FF, $00 ; Word Fill
#_11D12E: db $01 ; Direct Copy
#_11D12F: db $00, $FF
#_11D131: db $3D ; Byte Fill
#_11D132: db $00
#_11D133: db $03 ; Direct Copy
#_11D134: db $8A, $4F, $96, $1F
#_11D138: db $45 ; Word Fill
#_11D139: db $AD, $3F ; Word Fill
#_11D13B: db $07 ; Direct Copy
#_11D13C: db $B6, $3F, $9A, $1F, $CD, $4F, $30, $60
#_11D144: db $23 ; Byte Fill
#_11D145: db $40
#_11D146: db $07 ; Direct Copy
#_11D147: db $60, $30, $BD, $FF, $C2, $FF, $7D, $FE
#_11D14F: db $43 ; Word Fill
#_11D150: db $1B, $FC ; Word Fill
#_11D152: db $05 ; Direct Copy
#_11D153: db $7D, $FE, $C2, $FF, $3D, $FF
#_11D159: db $27 ; Byte Fill
#_11D15A: db $00
#_11D15B: db $07 ; Direct Copy
#_11D15C: db $80, $7F, $C0, $3F, $E0, $1F, $FF, $00
#_11D164: db $43 ; Word Fill
#_11D165: db $F7, $0F ; Word Fill
#_11D167: db $03 ; Direct Copy
#_11D168: db $78, $87, $3F, $C0
#_11D16C: db $27 ; Byte Fill
#_11D16D: db $00
#_11D16E: db $0E ; Direct Copy
#_11D16F: db $03, $FF, $30, $CF, $58, $A7, $9C, $63
#_11D177: db $DF, $E0, $9F, $E0, $3F, $C0, $FF
#_11D17E: db $E4, $50 ; EXT Byte Fill
#_11D180: db $00
#_11D181: db $10 ; Direct Copy
#_11D182: db $E2, $01, $F1, $00, $F8, $00, $BC, $00
#_11D18A: db $DF, $40, $FF, $7F, $FF, $3F, $FF, $00
#_11D192: db $7E
#_11D193: db $22 ; Byte Fill
#_11D194: db $7F
#_11D195: db $00 ; Direct Copy
#_11D196: db $3F
#_11D197: db $23 ; Byte Fill
#_11D198: db $00
#_11D199: db $08 ; Direct Copy
#_11D19A: db $FF, $FF, $00, $38, $00, $7C, $00, $FF
#_11D1A2: db $00
#_11D1A3: db $24 ; Byte Fill
#_11D1A4: db $FF
#_11D1A5: db $01 ; Direct Copy
#_11D1A6: db $00, $00
#_11D1A8: db $23 ; Byte Fill
#_11D1A9: db $FF
#_11D1AA: db $22 ; Byte Fill
#_11D1AB: db $00
#_11D1AC: db $07 ; Direct Copy
#_11D1AD: db $3F, $C0, $57, $B7, $A8, $6F, $A7, $68
#_11D1B5: db $43 ; Word Fill
#_11D1B6: db $AF, $67 ; Word Fill
#_11D1B8: db $43 ; Word Fill
#_11D1B9: db $AC, $67 ; Word Fill
#_11D1BB: db $03 ; Direct Copy
#_11D1BC: db $00, $08, $10, $10
#_11D1C0: db $23 ; Byte Fill
#_11D1C1: db $17
#_11D1C2: db $86 ; Repeat Fill
#_11D1C3: db $2E, $01 ; Repeat Fill bytes
#_11D1C5: db $00 ; Direct Copy
#_11D1C6: db $00
#_11D1C7: db $23 ; Byte Fill
#_11D1C8: db $FF
#_11D1C9: db $43 ; Word Fill
#_11D1CA: db $00, $FF ; Word Fill
#_11D1CC: db $23 ; Byte Fill
#_11D1CD: db $00
#_11D1CE: db $23 ; Byte Fill
#_11D1CF: db $FF
#_11D1D0: db $4F ; Word Fill
#_11D1D1: db $AC, $67 ; Word Fill
#_11D1D3: db $27 ; Byte Fill
#_11D1D4: db $17
#_11D1D5: db $4E ; Word Fill
#_11D1D6: db $00, $FF ; Word Fill
#_11D1D8: db $28 ; Byte Fill
#_11D1D9: db $FF
#_11D1DA: db $37 ; Byte Fill
#_11D1DB: db $00
#_11D1DC: db $25 ; Byte Fill
#_11D1DD: db $FF
#_11D1DE: db $00 ; Direct Copy
#_11D1DF: db $00
#_11D1E0: db $23 ; Byte Fill
#_11D1E1: db $FF
#_11D1E2: db $00 ; Direct Copy
#_11D1E3: db $00
#_11D1E4: db $28 ; Byte Fill
#_11D1E5: db $FF
#_11D1E6: db $83 ; Repeat Fill
#_11D1E7: db $84, $00 ; Repeat Fill bytes
#_11D1E9: db $09 ; Direct Copy
#_11D1EA: db $77, $55, $FF, $FF, $AA, $AA, $55, $AA
#_11D1F2: db $BB, $AA
#_11D1F4: db $43 ; Word Fill
#_11D1F5: db $55, $FF ; Word Fill
#_11D1F7: db $01 ; Direct Copy
#_11D1F8: db $AA, $88
#_11D1FA: db $22 ; Byte Fill
#_11D1FB: db $00
#_11D1FC: db $00 ; Direct Copy
#_11D1FD: db $44
#_11D1FE: db $22 ; Byte Fill
#_11D1FF: db $00
#_11D200: db $07 ; Direct Copy
#_11D201: db $FC, $97, $C6, $6B, $FC, $96, $CE, $7B
#_11D209: db $87 ; Repeat Fill
#_11D20A: db $A8, $03 ; Repeat Fill bytes
#_11D20C: db $03 ; Direct Copy
#_11D20D: db $00, $10, $01, $00
#_11D211: db $83 ; Repeat Fill
#_11D212: db $B8, $03 ; Repeat Fill bytes
#_11D214: db $14 ; Direct Copy
#_11D215: db $FC, $96, $C4, $53, $FB, $94, $D7, $69
#_11D21D: db $ED, $81, $F5, $2B, $FF, $8A, $FF, $D5
#_11D225: db $01, $28, $00, $00, $12
#_11D22A: db $22 ; Byte Fill
#_11D22B: db $00
#_11D22C: db $02 ; Direct Copy
#_11D22D: db $FF, $FF, $DF
#_11D230: db $26 ; Byte Fill
#_11D231: db $FF
#_11D232: db $00 ; Direct Copy
#_11D233: db $FB
#_11D234: db $24 ; Byte Fill
#_11D235: db $FF
#_11D236: db $27 ; Byte Fill
#_11D237: db $00
#_11D238: db $04 ; Direct Copy
#_11D239: db $FF, $00, $BF, $3F, $E0
#_11D23E: db $48 ; Word Fill
#_11D23F: db $7F, $C0 ; Word Fill
#_11D241: db $03 ; Direct Copy
#_11D242: db $C7, $7F, $00, $40
#_11D246: db $24 ; Byte Fill
#_11D247: db $00
#_11D248: db $03 ; Direct Copy
#_11D249: db $07, $FF, $00, $FF
#_11D24D: db $49 ; Word Fill
#_11D24E: db $FF, $00 ; Word Fill
#_11D250: db $22 ; Byte Fill
#_11D251: db $FF
#_11D252: db $26 ; Byte Fill
#_11D253: db $00
#_11D254: db $0A ; Direct Copy
#_11D255: db $FF, $CC, $7E, $C8, $7E, $CC, $7E, $CF
#_11D25D: db $77, $C7, $78
#_11D260: db $45 ; Word Fill
#_11D261: db $C0, $7F ; Word Fill
#_11D263: db $22 ; Byte Fill
#_11D264: db $0F
#_11D265: db $00 ; Direct Copy
#_11D266: db $07
#_11D267: db $23 ; Byte Fill
#_11D268: db $00
#_11D269: db $05 ; Direct Copy
#_11D26A: db $E0, $E6, $00, $79, $58, $FB
#_11D270: db $22 ; Byte Fill
#_11D271: db $FF
#_11D272: db $00 ; Direct Copy
#_11D273: db $00
#_11D274: db $44 ; Word Fill
#_11D275: db $00, $FF ; Word Fill
#_11D277: db $24 ; Byte Fill
#_11D278: db $FF
#_11D279: db $23 ; Byte Fill
#_11D27A: db $00
#_11D27B: db $05 ; Direct Copy
#_11D27C: db $C0, $7F, $A0, $3F, $9F, $1F
#_11D282: db $43 ; Word Fill
#_11D283: db $80, $7F ; Word Fill
#_11D285: db $08 ; Direct Copy
#_11D286: db $FF, $00, $E0, $1F, $7F, $80, $00, $40
#_11D28E: db $60
#_11D28F: db $25 ; Byte Fill
#_11D290: db $00
#_11D291: db $01 ; Direct Copy
#_11D292: db $FF, $00
#_11D294: db $22 ; Byte Fill
#_11D295: db $FF
#_11D296: db $43 ; Word Fill
#_11D297: db $00, $FF ; Word Fill
#_11D299: db $44 ; Word Fill
#_11D29A: db $FF, $00 ; Word Fill
#_11D29C: db $28 ; Byte Fill
#_11D29D: db $00
#_11D29E: db $0F ; Direct Copy
#_11D29F: db $FF, $00, $FE, $7F, $FD, $7F, $FB, $7F
#_11D2A7: db $87, $7F, $BF, $7F, $DF, $7F, $EF, $7F
#_11D2AF: db $27 ; Byte Fill
#_11D2B0: db $00
#_11D2B1: db $17 ; Direct Copy
#_11D2B2: db $FF, $00, $FF, $7E, $FF, $7D, $FE, $7B
#_11D2BA: db $FC, $07, $F8, $3F, $F0, $5C, $F2, $6C
#_11D2C2: db $00, $00, $01, $03, $07, $3F, $1F, $0D
#_11D2CA: db $E5, $4F ; EXT Byte Fill
#_11D2CC: db $00
#_11D2CD: db $FF ; End of GFX 05

;===================================================================================================

GFX_06:
#_11D2CE: db $38 ; Byte Fill
#_11D2CF: db $FF
#_11D2D0: db $4E ; Word Fill
#_11D2D1: db $00, $FF ; Word Fill
#_11D2D3: db $27 ; Byte Fill
#_11D2D4: db $FF
#_11D2D5: db $08 ; Direct Copy
#_11D2D6: db $FE, $FF, $FC, $FF, $F9, $FF, $FC, $FF
#_11D2DE: db $FE
#_11D2DF: db $2E ; Byte Fill
#_11D2E0: db $FF
#_11D2E1: db $00 ; Direct Copy
#_11D2E2: db $3C
#_11D2E3: db $46 ; Word Fill
#_11D2E4: db $FF, $F9 ; Word Fill
#_11D2E6: db $06 ; Direct Copy
#_11D2E7: db $3C, $FF, $07, $FF, $C0, $FF, $F8
#_11D2EE: db $35 ; Byte Fill
#_11D2EF: db $FF
#_11D2F0: db $02 ; Direct Copy
#_11D2F1: db $00, $FF, $00
#_11D2F4: db $25 ; Byte Fill
#_11D2F5: db $FF
#_11D2F6: db $0A ; Direct Copy
#_11D2F7: db $00, $00, $FF, $FF, $F4, $FF, $E6, $FF
#_11D2FF: db $CE, $FF, $FE
#_11D302: db $23 ; Byte Fill
#_11D303: db $FF
#_11D304: db $02 ; Direct Copy
#_11D305: db $7F, $FF, $7F
#_11D308: db $25 ; Byte Fill
#_11D309: db $FF
#_11D30A: db $01 ; Direct Copy
#_11D30B: db $7F, $7F
#_11D30D: db $4F ; Word Fill
#_11D30E: db $FF, $00 ; Word Fill
#_11D310: db $27 ; Byte Fill
#_11D311: db $FF
#_11D312: db $50 ; Word Fill
#_11D313: db $00, $FF ; Word Fill
#_11D315: db $01 ; Direct Copy
#_11D316: db $3F, $60
#_11D318: db $24 ; Byte Fill
#_11D319: db $40
#_11D31A: db $43 ; Word Fill
#_11D31B: db $00, $FF ; Word Fill
#_11D31D: db $07 ; Direct Copy
#_11D31E: db $03, $FC, $07, $F8, $0F, $F0, $1F, $E0
#_11D326: db $43 ; Word Fill
#_11D327: db $3F, $C0 ; Word Fill
#_11D329: db $07 ; Direct Copy
#_11D32A: db $00, $3E, $63, $47, $4F, $5F, $7F, $3F
#_11D332: db $38 ; Byte Fill
#_11D333: db $FF
#_11D334: db $04 ; Direct Copy
#_11D335: db $00, $C0, $3F, $9F, $60
#_11D33A: db $49 ; Word Fill
#_11D33B: db $BF, $40 ; Word Fill
#_11D33D: db $02 ; Direct Copy
#_11D33E: db $FF, $C0, $9F
#_11D341: db $24 ; Byte Fill
#_11D342: db $BF
#_11D343: db $05 ; Direct Copy
#_11D344: db $FF, $00, $03, $FC, $F9, $06
#_11D34A: db $49 ; Word Fill
#_11D34B: db $FD, $02 ; Word Fill
#_11D34D: db $02 ; Direct Copy
#_11D34E: db $FF, $03, $F9
#_11D351: db $24 ; Byte Fill
#_11D352: db $FD
#_11D353: db $0B ; Direct Copy
#_11D354: db $06, $FB, $0F, $F6, $1F, $EF, $FB, $1B
#_11D35C: db $FE, $FF, $16, $F7
#_11D360: db $43 ; Word Fill
#_11D361: db $1F, $FF ; Word Fill
#_11D363: db $1F ; Direct Copy
#_11D364: db $04, $09, $10, $E4, $00, $08, $00, $00
#_11D36C: db $30, $DF, $E0, $3F, $E0, $FF, $F1, $EE
#_11D374: db $7F, $F1, $FE, $FF, $DC, $FF, $F4, $F7
#_11D37C: db $20, $C0, $00, $11, $0E, $00, $00, $08
#_11D384: db $8B ; Repeat Fill
#_11D385: db $20, $01 ; Repeat Fill bytes
#_11D387: db $43 ; Word Fill
#_11D388: db $1F, $FF ; Word Fill
#_11D38A: db $9F ; Repeat Fill
#_11D38B: db $30, $01 ; Repeat Fill bytes
#_11D38D: db $02 ; Direct Copy
#_11D38E: db $FF, $00, $FF
#_11D391: db $48 ; Word Fill
#_11D392: db $7E, $C3 ; Word Fill
#_11D394: db $02 ; Direct Copy
#_11D395: db $FF, $7E, $FF
#_11D398: db $22 ; Byte Fill
#_11D399: db $00
#_11D39A: db $23 ; Byte Fill
#_11D39B: db $3C
#_11D39C: db $08 ; Direct Copy
#_11D39D: db $00, $00, $FE, $FF, $CE, $FF, $E6, $FF
#_11D3A5: db $F4
#_11D3A6: db $22 ; Byte Fill
#_11D3A7: db $FF
#_11D3A8: db $04 ; Direct Copy
#_11D3A9: db $F8, $FF, $C0, $FF, $07
#_11D3AE: db $28 ; Byte Fill
#_11D3AF: db $FF
#_11D3B0: db $0B ; Direct Copy
#_11D3B1: db $06, $FB, $0F, $F7, $10, $E7, $E0, $0F
#_11D3B9: db $E0, $EF, $02, $ED
#_11D3BD: db $43 ; Word Fill
#_11D3BE: db $00, $EF ; Word Fill
#_11D3C0: db $1F ; Direct Copy
#_11D3C1: db $04, $08, $18, $F0, $10, $12, $10, $10
#_11D3C9: db $30, $DF, $E0, $FF, $10, $FF, $01, $FE
#_11D3D1: db $0F, $F1, $0E, $F7, $4C, $B7, $0C, $F7
#_11D3D9: db $20, $00, $00, $01, $0E, $08, $48, $08
#_11D3E1: db $43 ; Word Fill
#_11D3E2: db $FF, $00 ; Word Fill
#_11D3E4: db $0B ; Direct Copy
#_11D3E5: db $FE, $01, $F8, $07, $E0, $1F, $C3, $3C
#_11D3ED: db $8F, $70, $1F, $E0
#_11D3F1: db $27 ; Byte Fill
#_11D3F2: db $FF
#_11D3F3: db $09 ; Direct Copy
#_11D3F4: db $F0, $0F, $80, $7F, $07, $F8, $38, $C7
#_11D3FC: db $F1, $0E
#_11D3FE: db $45 ; Word Fill
#_11D3FF: db $E1, $1E ; Word Fill
#_11D401: db $27 ; Byte Fill
#_11D402: db $FF
#_11D403: db $43 ; Word Fill
#_11D404: db $FE, $01 ; Word Fill
#_11D406: db $05 ; Direct Copy
#_11D407: db $1E, $E1, $8E, $71, $C4, $3B
#_11D40D: db $43 ; Word Fill
#_11D40E: db $E4, $1B ; Word Fill
#_11D410: db $01 ; Direct Copy
#_11D411: db $CF, $30
#_11D413: db $27 ; Byte Fill
#_11D414: db $FF
#_11D415: db $37 ; Byte Fill
#_11D416: db $00
#_11D417: db $E0, $21 ; EXT Direct Copy
#_11D419: db $D9, $3E, $BB, $7C, $77, $F8, $EF, $F0
#_11D421: db $DF, $E0, $BF, $C0, $7F, $80, $FF, $00
#_11D429: db $3E, $7C, $F9, $F3, $E7, $CF, $9F, $3F
#_11D431: db $FE, $01, $C0, $3F, $98, $67, $B0, $4F
#_11D439: db $A0, $5F
#_11D43B: db $43 ; Word Fill
#_11D43C: db $80, $7F ; Word Fill
#_11D43E: db $08 ; Direct Copy
#_11D43F: db $00, $FF, $FE, $C3, $98, $B0, $A0, $80
#_11D447: db $C0
#_11D448: db $4A ; Word Fill
#_11D449: db $40, $BF ; Word Fill
#_11D44B: db $05 ; Direct Copy
#_11D44C: db $9F, $60, $C0, $3F, $FF, $00
#_11D452: db $24 ; Byte Fill
#_11D453: db $BF
#_11D454: db $02 ; Direct Copy
#_11D455: db $9F, $C0, $FF
#_11D458: db $49 ; Word Fill
#_11D459: db $FD, $02 ; Word Fill
#_11D45B: db $05 ; Direct Copy
#_11D45C: db $F9, $06, $03, $FC, $FF, $00
#_11D462: db $24 ; Byte Fill
#_11D463: db $FD
#_11D464: db $15 ; Direct Copy
#_11D465: db $F9, $03, $FF, $1A, $FE, $3F, $DF, $FF
#_11D46D: db $3F, $FB, $FF, $0F, $FF, $07, $FF, $22
#_11D475: db $DF, $02, $FF, $01, $20, $C0
#_11D47B: db $22 ; Byte Fill
#_11D47C: db $00
#_11D47D: db $14 ; Direct Copy
#_11D47E: db $20, $00, $FC, $FF, $EC, $EF, $7F, $FC
#_11D486: db $3F, $FF, $F8, $FF, $90, $FF, $12, $FD
#_11D48E: db $10, $FF, $00, $10, $03
#_11D493: db $22 ; Byte Fill
#_11D494: db $00
#_11D495: db $01 ; Direct Copy
#_11D496: db $02, $00
#_11D498: db $92 ; Repeat Fill
#_11D499: db $A0, $02 ; Repeat Fill bytes
#_11D49B: db $22 ; Byte Fill
#_11D49C: db $00
#_11D49D: db $94 ; Repeat Fill
#_11D49E: db $B6, $02 ; Repeat Fill bytes
#_11D4A0: db $22 ; Byte Fill
#_11D4A1: db $00
#_11D4A2: db $07 ; Direct Copy
#_11D4A3: db $02, $00, $FF, $00, $E5, $4C, $CB, $18
#_11D4AB: db $43 ; Word Fill
#_11D4AC: db $D3, $30 ; Word Fill
#_11D4AE: db $08 ; Direct Copy
#_11D4AF: db $F1, $10, $F8, $18, $EC, $1C, $00, $33
#_11D4B7: db $67
#_11D4B8: db $22 ; Byte Fill
#_11D4B9: db $4F
#_11D4BA: db $04 ; Direct Copy
#_11D4BB: db $47, $43, $FB, $26, $E5
#_11D4C0: db $43 ; Word Fill
#_11D4C1: db $00, $FD ; Word Fill
#_11D4C3: db $02 ; Direct Copy
#_11D4C4: db $3C, $E1, $00
#_11D4C7: db $43 ; Word Fill
#_11D4C8: db $81, $7E ; Word Fill
#_11D4CA: db $06 ; Direct Copy
#_11D4CB: db $FF, $00, $58, $5A, $42, $42, $7E
#_11D4D2: db $22 ; Byte Fill
#_11D4D3: db $00
#_11D4D4: db $05 ; Direct Copy
#_11D4D5: db $80, $7F, $00, $80, $60, $80
#_11D4DB: db $43 ; Word Fill
#_11D4DC: db $BF, $3F ; Word Fill
#_11D4DE: db $0A ; Direct Copy
#_11D4DF: db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
#_11D4E7: db $7F, $40, $40
#_11D4EA: db $22 ; Byte Fill
#_11D4EB: db $00
#_11D4EC: db $03 ; Direct Copy
#_11D4ED: db $B5, $42, $E7, $24
#_11D4F1: db $4A ; Word Fill
#_11D4F2: db $A5, $66 ; Word Fill
#_11D4F4: db $00 ; Direct Copy
#_11D4F5: db $7E
#_11D4F6: db $26 ; Byte Fill
#_11D4F7: db $18
#_11D4F8: db $E0, $24 ; EXT Direct Copy
#_11D4FA: db $00, $A0, $60, $A3, $64, $E4, $23, $DC
#_11D502: db $7B, $A0, $3F, $C0, $40, $FF, $3F, $FF
#_11D50A: db $00, $1F, $18, $18, $00, $40, $3F, $00
#_11D512: db $00, $A5, $66, $E7, $24, $DB, $3C, $C3
#_11D51A: db $7E, $E7, $66, $BD, $7E
#_11D51F: db $43 ; Word Fill
#_11D520: db $FF, $00 ; Word Fill
#_11D522: db $04 ; Direct Copy
#_11D523: db $18, $18, $00, $00, $18
#_11D528: db $22 ; Byte Fill
#_11D529: db $00
#_11D52A: db $07 ; Direct Copy
#_11D52B: db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
#_11D533: db $43 ; Word Fill
#_11D534: db $B2, $56 ; Word Fill
#_11D536: db $07 ; Direct Copy
#_11D537: db $B4, $46, $B0, $5A, $00, $00, $13, $51
#_11D53F: db $22 ; Byte Fill
#_11D540: db $49
#_11D541: db $00 ; Direct Copy
#_11D542: db $45
#_11D543: db $44 ; Word Fill
#_11D544: db $FF, $00 ; Word Fill
#_11D546: db $12 ; Direct Copy
#_11D547: db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
#_11D54F: db $24, $F0, $30, $00, $7F, $40, $4F, $5E
#_11D557: db $53, $5B, $4F
#_11D55A: db $4E ; Word Fill
#_11D55B: db $FF, $7F ; Word Fill
#_11D55D: db $28 ; Byte Fill
#_11D55E: db $7F
#_11D55F: db $43 ; Word Fill
#_11D560: db $1F, $9F ; Word Fill
#_11D562: db $43 ; Word Fill
#_11D563: db $3E, $BE ; Word Fill
#_11D565: db $43 ; Word Fill
#_11D566: db $3F, $BF ; Word Fill
#_11D568: db $0B ; Direct Copy
#_11D569: db $3E, $BE, $1C, $9C, $60, $60, $41, $41
#_11D571: db $40, $43, $47, $6F
#_11D575: db $43 ; Word Fill
#_11D576: db $FE, $FF ; Word Fill
#_11D578: db $43 ; Word Fill
#_11D579: db $7E, $7F ; Word Fill
#_11D57B: db $03 ; Direct Copy
#_11D57C: db $E0, $E1, $86, $85
#_11D580: db $43 ; Word Fill
#_11D581: db $0C, $09 ; Word Fill
#_11D583: db $11 ; Direct Copy
#_11D584: db $70, $12, $86, $BE, $FE, $FC, $FA, $FA
#_11D58C: db $11, $F6, $38, $D3, $FC, $30, $FF, $F8
#_11D594: db $0F, $FC
#_11D596: db $85 ; Repeat Fill
#_11D597: db $AA, $02 ; Repeat Fill bytes
#_11D599: db $03 ; Direct Copy
#_11D59A: db $09, $2C, $C7, $03
#_11D59E: db $83 ; Repeat Fill
#_11D59F: db $B4, $02 ; Repeat Fill bytes
#_11D5A1: db $E0, $2F ; EXT Direct Copy
#_11D5A3: db $03, $03, $07, $07, $0E, $0E, $1D, $1D
#_11D5AB: db $3B, $3B, $77, $77, $EF, $EF, $DF, $DF
#_11D5B3: db $FC, $F8, $F1, $E2, $C4, $88, $10, $20
#_11D5BB: db $C0, $C0, $E0, $E0, $70, $70, $B8, $B8
#_11D5C3: db $DC, $DC, $EE, $EE, $F7, $F7, $FB, $FB
#_11D5CB: db $3F, $1F, $8F, $47, $23, $11, $08, $04
#_11D5D3: db $85 ; Repeat Fill
#_11D5D4: db $20, $01 ; Repeat Fill bytes
#_11D5D6: db $04 ; Direct Copy
#_11D5D7: db $F8, $1F, $F0, $FF, $10
#_11D5DC: db $84 ; Repeat Fill
#_11D5DD: db $C3, $02 ; Repeat Fill bytes
#_11D5DF: db $03 ; Direct Copy
#_11D5E0: db $04, $09, $10, $E0
#_11D5E4: db $83 ; Repeat Fill
#_11D5E5: db $CC, $02 ; Repeat Fill bytes
#_11D5E7: db $85 ; Repeat Fill
#_11D5E8: db $38, $01 ; Repeat Fill bytes
#_11D5EA: db $09 ; Direct Copy
#_11D5EB: db $31, $EE, $1F, $F1, $0E, $FF, $04, $FF
#_11D5F3: db $44, $BF
#_11D5F5: db $86 ; Repeat Fill
#_11D5F6: db $48, $01 ; Repeat Fill bytes
#_11D5F8: db $18 ; Direct Copy
#_11D5F9: db $40, $D7, $2F, $EB, $37, $F7, $18, $F7
#_11D601: db $07, $BF, $00, $C0, $40, $FF, $7F, $FF
#_11D609: db $00, $40, $40, $60, $78, $7F, $3F, $00
#_11D611: db $00
#_11D612: db $95 ; Repeat Fill
#_11D613: db $80, $04 ; Repeat Fill bytes
#_11D615: db $27 ; Byte Fill
#_11D616: db $00
#_11D617: db $00 ; Direct Copy
#_11D618: db $FF
#_11D619: db $22 ; Byte Fill
#_11D61A: db $00
#_11D61B: db $24 ; Byte Fill
#_11D61C: db $FF
#_11D61D: db $00 ; Direct Copy
#_11D61E: db $00
#_11D61F: db $24 ; Byte Fill
#_11D620: db $FF
#_11D621: db $22 ; Byte Fill
#_11D622: db $00
#_11D623: db $4F ; Word Fill
#_11D624: db $D0, $40 ; Word Fill
#_11D626: db $27 ; Byte Fill
#_11D627: db $3F
#_11D628: db $02 ; Direct Copy
#_11D629: db $FF, $00, $FF
#_11D62C: db $22 ; Byte Fill
#_11D62D: db $00
#_11D62E: db $00 ; Direct Copy
#_11D62F: db $FF
#_11D630: db $2A ; Byte Fill
#_11D631: db $00
#_11D632: db $25 ; Byte Fill
#_11D633: db $FF
#_11D634: db $E0, $47 ; EXT Direct Copy
#_11D636: db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
#_11D63E: db $0E, $F3, $1E, $E3, $3F, $C9, $77, $9C
#_11D646: db $F0, $E0, $C0, $80, $01, $01, $00, $08
#_11D64E: db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
#_11D656: db $B8, $77, $BF, $38, $80, $1F, $FF, $00
#_11D65E: db $48, $45, $40, $60, $70, $78, $7F, $00
#_11D666: db $E0, $20, $E6, $26, $F6, $36, $FF, $00
#_11D66E: db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
#_11D676: db $5F, $59, $49, $7F, $00, $00, $40, $3F
#_11D67E: db $45 ; Word Fill
#_11D67F: db $FF, $7F ; Word Fill
#_11D681: db $25 ; Byte Fill
#_11D682: db $FF
#_11D683: db $03 ; Direct Copy
#_11D684: db $E0, $E0, $80, $80
#_11D688: db $22 ; Byte Fill
#_11D689: db $7F
#_11D68A: db $08 ; Direct Copy
#_11D68B: db $F0, $C0, $80, $1F, $7F, $1C, $9C, $3E
#_11D693: db $BE
#_11D694: db $45 ; Word Fill
#_11D695: db $3F, $BF ; Word Fill
#_11D697: db $0D ; Direct Copy
#_11D698: db $3C, $BC, $1C, $9C, $1F, $9F, $6F, $47
#_11D6A0: db $43, $40, $40, $43, $63, $60
#_11D6A6: db $43 ; Word Fill
#_11D6A7: db $0C, $09 ; Word Fill
#_11D6A9: db $03 ; Direct Copy
#_11D6AA: db $86, $85, $E0, $E1
#_11D6AE: db $47 ; Word Fill
#_11D6AF: db $FE, $FF ; Word Fill
#_11D6B1: db $0F ; Direct Copy
#_11D6B2: db $FA, $FA, $FC, $FE, $3E, $06, $12, $70
#_11D6BA: db $0C, $F7, $0C, $07, $FF, $04, $FF, $0F
#_11D6C2: db $87 ; Repeat Fill
#_11D6C3: db $C0, $02 ; Repeat Fill bytes
#_11D6C5: db $02 ; Direct Copy
#_11D6C6: db $08, $F8, $F3
#_11D6C9: db $22 ; Byte Fill
#_11D6CA: db $00
#_11D6CB: db $E0, $39 ; EXT Direct Copy
#_11D6CD: db $02, $00, $DF, $DF, $EF, $EF, $77, $77
#_11D6D5: db $3B, $3B, $1D, $1D, $0E, $0E, $07, $07
#_11D6DD: db $03, $03, $20, $10, $88, $C4, $E2, $F1
#_11D6E5: db $F8, $FC, $FB, $FB, $F7, $F7, $EE, $EE
#_11D6ED: db $DC, $DC, $B8, $B8, $70, $70, $E0, $E0
#_11D6F5: db $C0, $C0, $04, $08, $11, $23, $47, $8F
#_11D6FD: db $1F, $3F, $10, $FF, $31, $DE, $F8, $37
#_11D705: db $FC, $FB
#_11D707: db $87 ; Repeat Fill
#_11D708: db $10, $04 ; Repeat Fill bytes
#_11D70A: db $07 ; Direct Copy
#_11D70B: db $00, $21, $C8, $04, $03, $00, $20, $00
#_11D713: db $43 ; Word Fill
#_11D714: db $04, $FF ; Word Fill
#_11D716: db $01 ; Direct Copy
#_11D717: db $0F, $F4
#_11D719: db $89 ; Repeat Fill
#_11D71A: db $8E, $05 ; Repeat Fill bytes
#_11D71C: db $07 ; Direct Copy
#_11D71D: db $00, $00, $0B, $F0, $00, $00, $02, $00
#_11D725: db $FF ; End of GFX 06

;===================================================================================================

GFX_07:
#_11D726: db $4F ; Word Fill
#_11D727: db $00, $FF ; Word Fill
#_11D729: db $E4, $20 ; EXT Byte Fill
#_11D72B: db $00
#_11D72C: db $4E ; Word Fill
#_11D72D: db $FF, $00 ; Word Fill
#_11D72F: db $28 ; Byte Fill
#_11D730: db $00
#_11D731: db $4E ; Word Fill
#_11D732: db $FF, $00 ; Word Fill
#_11D734: db $27 ; Byte Fill
#_11D735: db $00
#_11D736: db $02 ; Direct Copy
#_11D737: db $FE, $01, $02
#_11D73A: db $46 ; Word Fill
#_11D73B: db $FD, $FA ; Word Fill
#_11D73D: db $06 ; Direct Copy
#_11D73E: db $02, $FD, $FE, $01, $FF, $01, $00
#_11D745: db $24 ; Byte Fill
#_11D746: db $FC
#_11D747: db $22 ; Byte Fill
#_11D748: db $00
#_11D749: db $48 ; Word Fill
#_11D74A: db $FF, $00 ; Word Fill
#_11D74C: db $02 ; Direct Copy
#_11D74D: db $1F, $FF, $7F
#_11D750: db $22 ; Byte Fill
#_11D751: db $FF
#_11D752: db $27 ; Byte Fill
#_11D753: db $00
#_11D754: db $4F ; Word Fill
#_11D755: db $FF, $00 ; Word Fill
#_11D757: db $27 ; Byte Fill
#_11D758: db $FF
#_11D759: db $0F ; Direct Copy
#_11D75A: db $97, $00, $FF, $00, $A4, $00, $96, $00
#_11D762: db $7F, $00, $37, $00, $4D, $00, $C8, $00
#_11D76A: db $27 ; Byte Fill
#_11D76B: db $FF
#_11D76C: db $E0, $23 ; EXT Direct Copy
#_11D76E: db $EF, $1C, $DB, $36, $AC, $7B, $72, $CD
#_11D776: db $BA, $E5, $4B, $B4, $EB, $14, $EF, $10
#_11D77E: db $DF, $B7, $7B, $CD, $E5, $B4, $17, $DB
#_11D786: db $FD, $0A, $F6, $29, $DF, $20, $FE, $01
#_11D78E: db $FD, $02, $F7, $08
#_11D792: db $44 ; Word Fill
#_11D793: db $FF, $00 ; Word Fill
#_11D795: db $08 ; Direct Copy
#_11D796: db $A9, $A6, $9F, $FE, $E9, $F3, $FF, $00
#_11D79E: db $C3
#_11D79F: db $43 ; Word Fill
#_11D7A0: db $3C, $BD ; Word Fill
#_11D7A2: db $1B ; Direct Copy
#_11D7A3: db $00, $C2, $01, $3D, $C3, $DB, $E1, $E9
#_11D7AB: db $C0, $DE, $3C, $42, $42, $3D, $C2, $24
#_11D7B3: db $16, $21, $3E, $BE, $1C, $9D, $00, $E3
#_11D7BB: db $00, $1C, $E3, $EB
#_11D7BF: db $45 ; Word Fill
#_11D7C0: db $F3, $FB ; Word Fill
#_11D7C2: db $04 ; Direct Copy
#_11D7C3: db $41, $62, $1C, $E3, $14
#_11D7C8: db $22 ; Byte Fill
#_11D7C9: db $04
#_11D7CA: db $E4, $5F ; EXT Byte Fill
#_11D7CC: db $00
#_11D7CD: db $00 ; Direct Copy
#_11D7CE: db $FE
#_11D7CF: db $4C ; Word Fill
#_11D7D0: db $FF, $80 ; Word Fill
#_11D7D2: db $01 ; Direct Copy
#_11D7D3: db $00, $FF
#_11D7D5: db $26 ; Byte Fill
#_11D7D6: db $FE
#_11D7D7: db $00 ; Direct Copy
#_11D7D8: db $00
#_11D7D9: db $4F ; Word Fill
#_11D7DA: db $00, $FF ; Word Fill
#_11D7DC: db $E4, $97 ; EXT Byte Fill
#_11D7DE: db $00
#_11D7DF: db $E0, $23 ; EXT Direct Copy
#_11D7E1: db $DF, $3C, $F9, $76, $FD, $32, $CD, $32
#_11D7E9: db $A1, $5E, $A7, $58, $8F, $70, $AF, $50
#_11D7F1: db $BD, $76, $32, $32, $5E, $59, $73, $57
#_11D7F9: db $FF, $00, $BD, $42, $1B, $E4, $CF, $30
#_11D801: db $E7, $18, $F3, $0C
#_11D805: db $84 ; Repeat Fill
#_11D806: db $E2, $00 ; Repeat Fill bytes
#_11D808: db $0A ; Direct Copy
#_11D809: db $FE, $FD, $3B, $9F, $CF, $EB, $E7, $00
#_11D811: db $21, $1E, $DE
#_11D814: db $45 ; Word Fill
#_11D815: db $3F, $BF ; Word Fill
#_11D817: db $07 ; Direct Copy
#_11D818: db $1E, $DE, $00, $C1, $00, $FF, $DE, $21
#_11D820: db $22 ; Byte Fill
#_11D821: db $40
#_11D822: db $0C ; Direct Copy
#_11D823: db $21, $3E, $00, $60, $64, $00, $8F, $00
#_11D82B: db $73, $0C, $6D, $1E, $5E
#_11D830: db $45 ; Word Fill
#_11D831: db $1E, $DE ; Word Fill
#_11D833: db $04 ; Direct Copy
#_11D834: db $9B, $70, $8C, $92, $A1
#_11D839: db $22 ; Byte Fill
#_11D83A: db $21
#_11D83B: db $E4, $77 ; EXT Byte Fill
#_11D83D: db $00
#_11D83E: db $02 ; Direct Copy
#_11D83F: db $FB, $26, $E5
#_11D842: db $43 ; Word Fill
#_11D843: db $00, $FD ; Word Fill
#_11D845: db $02 ; Direct Copy
#_11D846: db $3C, $E1, $00
#_11D849: db $43 ; Word Fill
#_11D84A: db $81, $7E ; Word Fill
#_11D84C: db $06 ; Direct Copy
#_11D84D: db $FF, $00, $58, $5A, $42, $42, $7E
#_11D854: db $22 ; Byte Fill
#_11D855: db $00
#_11D856: db $05 ; Direct Copy
#_11D857: db $80, $7F, $00, $80, $60, $80
#_11D85D: db $43 ; Word Fill
#_11D85E: db $BF, $3F ; Word Fill
#_11D860: db $0A ; Direct Copy
#_11D861: db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
#_11D869: db $7F, $40, $40
#_11D86C: db $22 ; Byte Fill
#_11D86D: db $00
#_11D86E: db $03 ; Direct Copy
#_11D86F: db $B5, $42, $E7, $24
#_11D873: db $4A ; Word Fill
#_11D874: db $A5, $66 ; Word Fill
#_11D876: db $00 ; Direct Copy
#_11D877: db $7E
#_11D878: db $26 ; Byte Fill
#_11D879: db $18
#_11D87A: db $0B ; Direct Copy
#_11D87B: db $00, $FF, $00, $09, $07, $77, $8F, $EF
#_11D883: db $1E, $CF, $BC, $DB
#_11D887: db $44 ; Word Fill
#_11D888: db $BC, $5B ; Word Fill
#_11D88A: db $E0, $27 ; EXT Direct Copy
#_11D88C: db $00, $F0, $E0, $01, $83, $83, $81, $80
#_11D894: db $5B, $BC, $49, $BE, $64, $DF, $30, $CF
#_11D89C: db $BC, $E3, $FF, $D8, $E7, $BF, $F8, $BF
#_11D8A4: db $80, $80, $C0, $C0, $E0, $D8, $BF, $BF
#_11D8AC: db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
#_11D8B4: db $43 ; Word Fill
#_11D8B5: db $B2, $56 ; Word Fill
#_11D8B7: db $07 ; Direct Copy
#_11D8B8: db $B4, $46, $B0, $5A, $00, $00, $13, $51
#_11D8C0: db $22 ; Byte Fill
#_11D8C1: db $49
#_11D8C2: db $00 ; Direct Copy
#_11D8C3: db $45
#_11D8C4: db $44 ; Word Fill
#_11D8C5: db $FF, $00 ; Word Fill
#_11D8C7: db $12 ; Direct Copy
#_11D8C8: db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
#_11D8D0: db $24, $F0, $30, $00, $7F, $40, $4F, $5E
#_11D8D8: db $53, $5B, $4F
#_11D8DB: db $23 ; Byte Fill
#_11D8DC: db $FF
#_11D8DD: db $05 ; Direct Copy
#_11D8DE: db $F0, $F0, $C0, $C0, $80, $80
#_11D8E4: db $23 ; Byte Fill
#_11D8E5: db $00
#_11D8E6: db $00 ; Direct Copy
#_11D8E7: db $0F
#_11D8E8: db $22 ; Byte Fill
#_11D8E9: db $00
#_11D8EA: db $02 ; Direct Copy
#_11D8EB: db $0F, $3F, $7F
#_11D8EE: db $22 ; Byte Fill
#_11D8EF: db $FF
#_11D8F0: db $E4, $48 ; EXT Byte Fill
#_11D8F2: db $00
#_11D8F3: db $0C ; Direct Copy
#_11D8F4: db $FF, $00, $00, $1C, $7F, $67, $7F, $7B
#_11D8FC: db $7F, $67, $7F, $1C, $7F
#_11D901: db $43 ; Word Fill
#_11D902: db $00, $FF ; Word Fill
#_11D904: db $24 ; Byte Fill
#_11D905: db $80
#_11D906: db $83 ; Repeat Fill
#_11D907: db $2F, $00 ; Repeat Fill bytes
#_11D909: db $09 ; Direct Copy
#_11D90A: db $01, $E6, $FF, $38, $FF, $DE, $FF, $38
#_11D912: db $FF, $E6
#_11D914: db $43 ; Word Fill
#_11D915: db $FF, $00 ; Word Fill
#_11D917: db $00 ; Direct Copy
#_11D918: db $FE
#_11D919: db $25 ; Byte Fill
#_11D91A: db $00
#_11D91B: db $12 ; Direct Copy
#_11D91C: db $BE, $38, $DA, $5C, $E2, $6D, $E9, $7E
#_11D924: db $C7, $7D, $87, $7B, $DE, $26, $7C, $9D
#_11D92C: db $41, $21, $10
#_11D92F: db $22 ; Byte Fill
#_11D930: db $00
#_11D931: db $17 ; Direct Copy
#_11D932: db $01, $02, $07, $38, $9E, $E6, $3C, $DD
#_11D93A: db $78, $BB, $C4, $07, $44, $3F, $C4, $BF
#_11D942: db $61, $9E, $C0, $01, $02, $04, $38, $80
#_11D94A: db $E4, $91 ; EXT Byte Fill
#_11D94C: db $00
#_11D94D: db $E0, $32 ; EXT Direct Copy
#_11D94F: db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
#_11D957: db $B8, $77, $BF, $38, $80, $1F, $FF, $00
#_11D95F: db $48, $45, $40, $60, $70, $78, $7F, $00
#_11D967: db $E0, $20, $E6, $26, $F6, $36, $FF, $00
#_11D96F: db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
#_11D977: db $5F, $59, $49, $7F, $00, $00, $40, $3F
#_11D97F: db $3F, $00, $7F
#_11D982: db $4C ; Word Fill
#_11D983: db $00, $FF ; Word Fill
#_11D985: db $27 ; Byte Fill
#_11D986: db $FF
#_11D987: db $E4, $48 ; EXT Byte Fill
#_11D989: db $00
#_11D98A: db $8B ; Repeat Fill
#_11D98B: db $39, $04 ; Repeat Fill bytes
#_11D98D: db $43 ; Word Fill
#_11D98E: db $FF, $00 ; Word Fill
#_11D990: db $00 ; Direct Copy
#_11D991: db $FE
#_11D992: db $26 ; Byte Fill
#_11D993: db $00
#_11D994: db $8C ; Repeat Fill
#_11D995: db $21, $04 ; Repeat Fill bytes
#_11D997: db $43 ; Word Fill
#_11D998: db $00, $FF ; Word Fill
#_11D99A: db $24 ; Byte Fill
#_11D99B: db $80
#_11D99C: db $11 ; Direct Copy
#_11D99D: db $00, $C0, $83, $C0, $3F, $E1, $DE, $FF
#_11D9A5: db $E0, $3F, $3D, $1F, $DD, $07, $E9, $FF
#_11D9AD: db $01, $3C
#_11D9AF: db $22 ; Byte Fill
#_11D9B0: db $00
#_11D9B1: db $1B ; Direct Copy
#_11D9B2: db $C0, $20, $10, $00, $FF, $60, $DB, $6B
#_11D9BA: db $FD, $0D, $DE, $CE, $CC, $D5, $C8, $D3
#_11D9C2: db $A8, $B7, $49, $76, $00, $04, $02, $21
#_11D9CA: db $22, $24, $40, $80
#_11D9CE: db $FF ; End of GFX 07

;===================================================================================================

GFX_08:
#_11D9CF: db $0F ; Direct Copy
#_11D9D0: db $13, $FE, $06, $FD, $2C, $FB, $18, $F7
#_11D9D8: db $38, $E7, $6C, $DB, $C6, $BD, $83, $7E
#_11D9E0: db $28 ; Byte Fill
#_11D9E1: db $00
#_11D9E2: db $0E ; Direct Copy
#_11D9E3: db $6D, $00, $81, $00, $9D, $00, $BE, $00
#_11D9EB: db $3E, $00, $BD, $00, $81, $00, $6C
#_11D9F2: db $27 ; Byte Fill
#_11D9F3: db $00
#_11D9F4: db $E0, $42 ; EXT Direct Copy
#_11D9F6: db $01, $FC, $23, $F9, $07, $F3, $8F, $E7
#_11D9FE: db $17, $CF, $27, $9F, $43, $3F, $81, $7E
#_11DA06: db $02, $04, $08, $10, $20, $40, $80, $01
#_11DA0E: db $FD, $FC, $FB, $F9, $D7, $D3, $77, $6F
#_11DA16: db $E0, $D8, $DA, $BC, $ED, $2E, $FE, $7D
#_11DA1E: db $02, $04, $28, $90, $27, $43, $91, $02
#_11DA26: db $C1, $7C, $63, $B9, $37, $D3, $9B, $67
#_11DA2E: db $C9, $37, $C4, $3B, $FE, $01, $FF, $00
#_11DA36: db $02, $04, $08
#_11DA39: db $24 ; Byte Fill
#_11DA3A: db $00
#_11DA3B: db $17 ; Direct Copy
#_11DA3C: db $F5, $F3, $CB, $C7, $14, $0C, $24, $18
#_11DA44: db $5A, $3C, $E6, $67, $C1, $C1, $03, $01
#_11DA4C: db $0C, $38, $F3, $E7, $C3, $99, $3E, $FE
#_11DA54: db $4F ; Word Fill
#_11DA55: db $FF, $00 ; Word Fill
#_11DA57: db $27 ; Byte Fill
#_11DA58: db $FF
#_11DA59: db $37 ; Byte Fill
#_11DA5A: db $00
#_11DA5B: db $E0, $23 ; EXT Direct Copy
#_11DA5D: db $EF, $1C, $DB, $36, $AC, $7B, $72, $CD
#_11DA65: db $BA, $E5, $4B, $B4, $EB, $14, $EF, $10
#_11DA6D: db $DF, $B7, $7B, $CD, $E5, $B4, $17, $DB
#_11DA75: db $FD, $0A, $F6, $29, $DF, $20, $FE, $01
#_11DA7D: db $FD, $02, $F7, $08
#_11DA81: db $44 ; Word Fill
#_11DA82: db $FF, $00 ; Word Fill
#_11DA84: db $E0, $46 ; EXT Direct Copy
#_11DA86: db $A9, $A6, $9F, $FE, $E9, $F3, $FF, $7C
#_11DA8E: db $7D, $78, $7B, $30, $B6, $01, $C9, $06
#_11DA96: db $36, $C0, $D0, $C1, $D9, $C0, $DE, $82
#_11DA9E: db $84, $49, $36, $C9, $2F, $26, $21, $7C
#_11DAA6: db $7D, $1C, $9D, $00, $63, $00, $3E, $41
#_11DAAE: db $5D, $A3, $AB, $63, $6B, $E3, $EB, $82
#_11DAB6: db $62, $9C, $C1, $A2, $54, $94, $14, $7F
#_11DABE: db $FF, $77, $FF, $23, $FF, $B7, $7F, $5F
#_11DAC6: db $3F, $6E, $1F, $B1, $8E, $DF, $C0
#_11DACD: db $23 ; Byte Fill
#_11DACE: db $00
#_11DACF: db $13 ; Direct Copy
#_11DAD0: db $80, $80, $40, $20, $7E, $FF, $FE, $7F
#_11DAD8: db $BD, $7E, $52, $3D, $6D, $91, $B3, $43
#_11DAE0: db $2C, $CF, $EC, $0F
#_11DAE4: db $22 ; Byte Fill
#_11DAE5: db $00
#_11DAE6: db $04 ; Direct Copy
#_11DAE7: db $80, $02, $0C, $10, $10
#_11DAEC: db $8F ; Repeat Fill
#_11DAED: db $20, $01 ; Repeat Fill bytes
#_11DAEF: db $23 ; Byte Fill
#_11DAF0: db $00
#_11DAF1: db $93 ; Repeat Fill
#_11DAF2: db $34, $01 ; Repeat Fill bytes
#_11DAF4: db $22 ; Byte Fill
#_11DAF5: db $00
#_11DAF6: db $84 ; Repeat Fill
#_11DAF7: db $4B, $01 ; Repeat Fill bytes
#_11DAF9: db $10 ; Direct Copy
#_11DAFA: db $7E, $81, $C3, $7E, $A5, $7E, $A3, $7E
#_11DB02: db $89, $7E, $A1, $7E, $C3, $7E, $7E, $81
#_11DB0A: db $00
#_11DB0B: db $25 ; Byte Fill
#_11DB0C: db $7E
#_11DB0D: db $10 ; Direct Copy
#_11DB0E: db $00, $01, $FC, $42, $F9, $37, $F3, $6F
#_11DB16: db $E7, $DB, $C3, $BF, $99, $7D, $3E, $EE
#_11DB1E: db $6F
#_11DB1F: db $83 ; Repeat Fill
#_11DB20: db $40, $00 ; Repeat Fill bytes
#_11DB22: db $0B ; Direct Copy
#_11DB23: db $24, $42, $81, $10, $40, $58, $C0, $D7
#_11DB2B: db $00, $34, $03, $FB
#_11DB2F: db $44 ; Word Fill
#_11DB30: db $07, $37 ; Word Fill
#_11DB32: db $E0, $22 ; EXT Direct Copy
#_11DB34: db $F7, $06, $F6, $A7, $28, $CB, $04, $C8
#_11DB3C: db $C8, $08, $09, $03, $7B, $03, $FF, $00
#_11DB44: db $04, $F8, $FB, $B8, $BA, $F0, $F6, $F0
#_11DB4C: db $F7, $D0, $D6, $84, $00, $FB, $04, $45
#_11DB54: db $09, $08, $29
#_11DB57: db $87 ; Repeat Fill
#_11DB58: db $B0, $01 ; Repeat Fill bytes
#_11DB5A: db $44 ; Word Fill
#_11DB5B: db $07, $37 ; Word Fill
#_11DB5D: db $F0, $22 ; EXT Repeat Fill
#_11DB5F: db $BD, $01 ; Repeat Fill bytes
#_11DB61: db $E0, $23 ; EXT Direct Copy
#_11DB63: db $01, $91, $00, $98, $00, $9F, $0C, $93
#_11DB6B: db $03, $FC, $00, $31, $C0, $D1, $C0, $DF
#_11DB73: db $6E, $67, $60, $60, $00, $CE, $2E, $20
#_11DB7B: db $F0, $F6, $E0, $EF, $00, $1E, $04, $FA
#_11DB83: db $08, $F7, $F0, $08
#_11DB87: db $43 ; Word Fill
#_11DB88: db $07, $97 ; Word Fill
#_11DB8A: db $E0, $2B ; EXT Direct Copy
#_11DB8C: db $09, $10, $E1, $01, $00, $07, $68, $68
#_11DB94: db $DF, $3C, $F9, $76, $FD, $32, $CD, $32
#_11DB9C: db $A1, $5E, $A7, $58, $8F, $70, $AF, $50
#_11DBA4: db $BD, $76, $32, $32, $5E, $59, $73, $57
#_11DBAC: db $FF, $00, $BD, $42, $1B, $E4, $CF, $30
#_11DBB4: db $E7, $18, $F3, $0C
#_11DBB8: db $84 ; Repeat Fill
#_11DBB9: db $E2, $00 ; Repeat Fill bytes
#_11DBBB: db $E0, $3C ; EXT Direct Copy
#_11DBBD: db $FE, $FD, $3B, $9F, $CF, $EB, $E7, $80
#_11DBC5: db $A1, $14, $54, $2A, $AA, $37, $B7, $07
#_11DBCD: db $C7, $00, $78, $00, $87, $38, $BB, $5E
#_11DBD5: db $AB, $55, $48, $38, $87, $78, $44, $63
#_11DBDD: db $6B, $01, $9D, $00, $72, $08, $29, $18
#_11DBE5: db $58, $33, $B3, $3F, $3F, $7F, $7F, $94
#_11DBED: db $62, $8D, $D6, $A7, $4C, $C0, $80, $EA
#_11DBF5: db $E4, $2D, $F1, $13, $E3
#_11DBFA: db $43 ; Word Fill
#_11DBFB: db $D7, $E7 ; Word Fill
#_11DBFD: db $E0, $25 ; EXT Direct Copy
#_11DBFF: db $A9, $CF, $58, $9F, $3E, $BE, $11, $02
#_11DC07: db $0C, $08, $08, $10, $20, $41, $3F, $0F
#_11DC0F: db $D3, $CF, $FD, $C3, $A3, $C1, $AA, $C9
#_11DC17: db $42, $99, $8D, $3C, $FC, $7D, $C0, $20
#_11DC1F: db $00, $1C, $14, $24, $42, $02
#_11DC25: db $85 ; Repeat Fill
#_11DC26: db $A0, $02 ; Repeat Fill bytes
#_11DC28: db $43 ; Word Fill
#_11DC29: db $D7, $E7 ; Word Fill
#_11DC2B: db $F0, $25 ; EXT Repeat Fill
#_11DC2D: db $AA, $02 ; Repeat Fill bytes
#_11DC2F: db $05 ; Direct Copy
#_11DC30: db $7F, $80, $CC, $44, $99, $08
#_11DC36: db $43 ; Word Fill
#_11DC37: db $B3, $10 ; Word Fill
#_11DC39: db $08 ; Direct Copy
#_11DC3A: db $B1, $10, $B0, $10, $A8, $18, $00, $33
#_11DC42: db $67
#_11DC43: db $23 ; Byte Fill
#_11DC44: db $4F
#_11DC45: db $03 ; Direct Copy
#_11DC46: db $47, $FB, $26, $E5
#_11DC4A: db $43 ; Word Fill
#_11DC4B: db $00, $FD ; Word Fill
#_11DC4D: db $02 ; Direct Copy
#_11DC4E: db $3C, $E1, $00
#_11DC51: db $43 ; Word Fill
#_11DC52: db $81, $7E ; Word Fill
#_11DC54: db $06 ; Direct Copy
#_11DC55: db $FF, $00, $58, $5A, $42, $42, $7E
#_11DC5C: db $22 ; Byte Fill
#_11DC5D: db $00
#_11DC5E: db $05 ; Direct Copy
#_11DC5F: db $80, $7F, $00, $80, $60, $80
#_11DC65: db $43 ; Word Fill
#_11DC66: db $BF, $3F ; Word Fill
#_11DC68: db $0A ; Direct Copy
#_11DC69: db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
#_11DC71: db $7F, $40, $40
#_11DC74: db $22 ; Byte Fill
#_11DC75: db $00
#_11DC76: db $03 ; Direct Copy
#_11DC77: db $B5, $42, $E7, $24
#_11DC7B: db $4A ; Word Fill
#_11DC7C: db $A5, $66 ; Word Fill
#_11DC7E: db $00 ; Direct Copy
#_11DC7F: db $7E
#_11DC80: db $26 ; Byte Fill
#_11DC81: db $18
#_11DC82: db $00 ; Direct Copy
#_11DC83: db $00
#_11DC84: db $43 ; Word Fill
#_11DC85: db $80, $7F ; Word Fill
#_11DC87: db $04 ; Direct Copy
#_11DC88: db $C0, $3F, $FF, $40, $BF
#_11DC8D: db $83 ; Repeat Fill
#_11DC8E: db $63, $03 ; Repeat Fill bytes
#_11DC90: db $02 ; Direct Copy
#_11DC91: db $00, $7F, $80
#_11DC94: db $27 ; Byte Fill
#_11DC95: db $00
#_11DC96: db $43 ; Word Fill
#_11DC97: db $01, $FE ; Word Fill
#_11DC99: db $83 ; Repeat Fill
#_11DC9A: db $66, $02 ; Repeat Fill bytes
#_11DC9C: db $01 ; Direct Copy
#_11DC9D: db $01, $FE
#_11DC9F: db $44 ; Word Fill
#_11DCA0: db $FF, $00 ; Word Fill
#_11DCA2: db $28 ; Byte Fill
#_11DCA3: db $00
#_11DCA4: db $07 ; Direct Copy
#_11DCA5: db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
#_11DCAD: db $43 ; Word Fill
#_11DCAE: db $B2, $56 ; Word Fill
#_11DCB0: db $07 ; Direct Copy
#_11DCB1: db $B4, $46, $B0, $5A, $00, $00, $13, $51
#_11DCB9: db $22 ; Byte Fill
#_11DCBA: db $49
#_11DCBB: db $00 ; Direct Copy
#_11DCBC: db $45
#_11DCBD: db $44 ; Word Fill
#_11DCBE: db $FF, $00 ; Word Fill
#_11DCC0: db $1F ; Direct Copy
#_11DCC1: db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
#_11DCC9: db $24, $F0, $30, $00, $7F, $40, $4F, $5E
#_11DCD1: db $53, $5B, $4F, $02, $06, $05, $0C, $07
#_11DCD9: db $10, $03, $24, $19, $42, $3C, $81, $7E
#_11DCE1: db $43 ; Word Fill
#_11DCE2: db $00, $FD ; Word Fill
#_11DCE4: db $00 ; Direct Copy
#_11DCE5: db $FB
#_11DCE6: db $25 ; Byte Fill
#_11DCE7: db $FF
#_11DCE8: db $03 ; Direct Copy
#_11DCE9: db $1F, $9E, $1F, $BE
#_11DCED: db $44 ; Word Fill
#_11DCEE: db $3F, $B3 ; Word Fill
#_11DCF0: db $E0, $26 ; EXT Direct Copy
#_11DCF2: db $BE, $3E, $8F, $70, $C1, $01, $FE, $61
#_11DCFA: db $41, $4C, $4C, $41, $71, $3F, $01, $F1
#_11DD02: db $6E, $C1, $7E, $81, $FE, $71, $EE, $79
#_11DD0A: db $B6, $3D, $FA, $01, $C2, $DB, $24, $9F
#_11DD12: db $BF, $7F, $9F, $CF, $C7, $FF, $DB
#_11DD19: db $97 ; Repeat Fill
#_11DD1A: db $10, $02 ; Repeat Fill bytes
#_11DD1C: db $E0, $3B ; EXT Direct Copy
#_11DD1E: db $0F, $EF, $07, $E7, $01, $F9, $00, $3C
#_11DD26: db $C0, $DE, $E0, $EF, $F0, $F7, $90, $F7
#_11DD2E: db $10, $18, $06, $C3, $21, $10, $08, $08
#_11DD36: db $B0, $F7, $A0, $AF, $C0, $CC, $81, $99
#_11DD3E: db $03, $3B, $03, $F3, $07, $E7, $0F, $8F
#_11DD46: db $08, $50, $33, $66, $C4, $0C, $18, $70
#_11DD4E: db $40, $58, $C0, $D8, $00, $3C, $00, $E7
#_11DD56: db $00, $24, $03, $3B
#_11DD5A: db $43 ; Word Fill
#_11DD5B: db $07, $F7 ; Word Fill
#_11DD5D: db $E0, $37 ; EXT Direct Copy
#_11DD5F: db $A7, $27, $C3, $18, $DB, $C4, $08, $08
#_11DD67: db $03, $7B, $03, $4B, $00, $4C, $00, $FF
#_11DD6F: db $00, $06, $F8, $FA, $B8, $BB, $F0, $F6
#_11DD77: db $84, $B4, $B3, $00, $F9, $05, $44, $09
#_11DD7F: db $AC, $1C, $B7, $2F, $B8, $37, $9F, $18
#_11DD87: db $8F, $0F, $FF, $40, $BF, $70, $B9, $68
#_11DD8F: db $43, $40, $40, $60, $70, $3F, $00, $07
#_11DD97: db $8C ; Repeat Fill
#_11DD98: db $80, $04 ; Repeat Fill bytes
#_11DD9A: db $02 ; Direct Copy
#_11DD9B: db $7F, $80, $7F
#_11DD9E: db $86 ; Repeat Fill
#_11DD9F: db $90, $04 ; Repeat Fill bytes
#_11DDA1: db $00 ; Direct Copy
#_11DDA2: db $00
#_11DDA3: db $29 ; Byte Fill
#_11DDA4: db $01
#_11DDA5: db $45 ; Word Fill
#_11DDA6: db $FE, $FF ; Word Fill
#_11DDA8: db $24 ; Byte Fill
#_11DDA9: db $FE
#_11DDAA: db $22 ; Byte Fill
#_11DDAB: db $00
#_11DDAC: db $03 ; Direct Copy
#_11DDAD: db $B9, $58, $D9, $38
#_11DDB1: db $47 ; Word Fill
#_11DDB2: db $99, $78 ; Word Fill
#_11DDB4: db $03 ; Direct Copy
#_11DDB5: db $9E, $7E, $81, $78
#_11DDB9: db $25 ; Byte Fill
#_11DDBA: db $07
#_11DDBB: db $07 ; Direct Copy
#_11DDBC: db $01, $07, $FF, $00, $00, $FF, $FE, $FF
#_11DDC4: db $23 ; Byte Fill
#_11DDC5: db $01
#_11DDC6: db $44 ; Word Fill
#_11DDC7: db $FE, $00 ; Word Fill
#_11DDC9: db $23 ; Byte Fill
#_11DDCA: db $00
#_11DDCB: db $01 ; Direct Copy
#_11DDCC: db $FE, $FE
#_11DDCE: db $22 ; Byte Fill
#_11DDCF: db $FF
#_11DDD0: db $E0, $54 ; EXT Direct Copy
#_11DDD2: db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
#_11DDDA: db $0E, $F3, $1E, $E3, $3F, $C9, $77, $9C
#_11DDE2: db $F0, $E0, $C0, $80, $01, $01, $00, $08
#_11DDEA: db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
#_11DDF2: db $B8, $77, $BF, $38, $80, $1F, $FF, $00
#_11DDFA: db $48, $45, $40, $60, $70, $78, $7F, $00
#_11DE02: db $E0, $20, $E6, $26, $F6, $36, $FF, $00
#_11DE0A: db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
#_11DE12: db $5F, $59, $49, $7F, $00, $00, $40, $3F
#_11DE1A: db $E3, $18, $8C, $73, $18, $E7, $28, $D7
#_11DE22: db $47, $BB, $9D, $7F, $7E
#_11DE27: db $2A ; Byte Fill
#_11DE28: db $FF
#_11DE29: db $E0, $2F ; EXT Direct Copy
#_11DE2B: db $01, $CE, $71, $C1, $1F, $9F, $3E, $B3
#_11DE33: db $1E, $93, $3E, $BF, $3F, $BE, $1F, $9F
#_11DE3B: db $31, $3E, $60, $4D, $6D, $41, $41, $60
#_11DE43: db $DB, $24, $21, $C2, $9D, $6E, $C1, $BE
#_11DE4B: db $7D, $F2, $4D, $FE, $6D, $D6, $E7, $7E
#_11DE53: db $DB, $FF, $F3, $7F, $8F, $B3, $BB, $99
#_11DE5B: db $8B ; Repeat Fill
#_11DE5C: db $28, $02 ; Repeat Fill bytes
#_11DE5E: db $43 ; Word Fill
#_11DE5F: db $07, $97 ; Word Fill
#_11DE61: db $87 ; Repeat Fill
#_11DE62: db $38, $02 ; Repeat Fill bytes
#_11DE64: db $E0, $20 ; EXT Direct Copy
#_11DE66: db $98, $9B, $F8, $FB, $F0, $F3, $C0, $CF
#_11DE6E: db $80, $BE, $01, $71, $0F, $EF, $1F, $DF
#_11DE76: db $64, $04, $0C, $30, $41, $8E, $10, $20
#_11DE7E: db $7D, $7F, $5D, $7D, $5F, $5F, $7F, $7F
#_11DE86: db $FF
#_11DE87: db $43 ; Word Fill
#_11DE88: db $FF, $F7 ; Word Fill
#_11DE8A: db $14 ; Direct Copy
#_11DE8B: db $F7, $FF, $FF, $80, $82, $A0, $80, $00
#_11DE93: db $00, $08, $00, $07, $97, $06, $96, $07
#_11DE9B: db $97, $00, $98, $00, $FF
#_11DEA0: db $85 ; Repeat Fill
#_11DEA1: db $1A, $02 ; Repeat Fill bytes
#_11DEA3: db $03 ; Direct Copy
#_11DEA4: db $68, $69, $68, $67
#_11DEA8: db $84 ; Repeat Fill
#_11DEA9: db $24, $02 ; Repeat Fill bytes
#_11DEAB: db $0A ; Direct Copy
#_11DEAC: db $F4, $D0, $D7, $F0, $F4, $E0, $EC, $00
#_11DEB4: db $1F, $00, $F8
#_11DEB7: db $43 ; Word Fill
#_11DEB8: db $07, $97 ; Word Fill
#_11DEBA: db $07 ; Direct Copy
#_11DEBB: db $0B, $28, $0B, $13, $E0, $07, $68, $68
#_11DEC3: db $FF ; End of GFX 08

;===================================================================================================

GFX_09:
#_11DEC4: db $0F ; Direct Copy
#_11DEC5: db $13, $FE, $06, $FD, $2C, $FB, $18, $F7
#_11DECD: db $38, $E7, $6C, $DB, $C6, $BD, $83, $7E
#_11DED5: db $28 ; Byte Fill
#_11DED6: db $00
#_11DED7: db $02 ; Direct Copy
#_11DED8: db $BB, $00, $7D
#_11DEDB: db $46 ; Word Fill
#_11DEDC: db $00, $FE ; Word Fill
#_11DEDE: db $04 ; Direct Copy
#_11DEDF: db $7D, $00, $BB, $00, $C7
#_11DEE4: db $27 ; Byte Fill
#_11DEE5: db $00
#_11DEE6: db $E0, $42 ; EXT Direct Copy
#_11DEE8: db $01, $FC, $23, $F9, $07, $F3, $8F, $E7
#_11DEF0: db $17, $CF, $27, $9F, $43, $3F, $81, $7E
#_11DEF8: db $02, $04, $08, $10, $20, $40, $80, $01
#_11DF00: db $FD, $FC, $FB, $F9, $D7, $D3, $77, $6F
#_11DF08: db $E0, $D8, $DA, $BC, $ED, $2E, $FE, $7D
#_11DF10: db $02, $04, $28, $90, $27, $43, $91, $02
#_11DF18: db $C1, $7C, $63, $B9, $37, $D3, $9B, $67
#_11DF20: db $C9, $37, $C4, $3B, $FE, $01, $FF, $00
#_11DF28: db $02, $04, $08
#_11DF2B: db $24 ; Byte Fill
#_11DF2C: db $00
#_11DF2D: db $17 ; Direct Copy
#_11DF2E: db $F5, $F3, $CB, $C7, $14, $0C, $24, $18
#_11DF36: db $5A, $3C, $E6, $67, $C1, $C1, $03, $01
#_11DF3E: db $0C, $38, $F3, $E7, $C3, $99, $3E, $FE
#_11DF46: db $4F ; Word Fill
#_11DF47: db $FF, $00 ; Word Fill
#_11DF49: db $27 ; Byte Fill
#_11DF4A: db $FF
#_11DF4B: db $37 ; Byte Fill
#_11DF4C: db $00
#_11DF4D: db $E0, $23 ; EXT Direct Copy
#_11DF4F: db $EF, $1C, $DB, $36, $AC, $7B, $72, $CD
#_11DF57: db $BA, $E5, $4B, $B4, $EB, $14, $EF, $10
#_11DF5F: db $DF, $B7, $7B, $CD, $E5, $B4, $17, $DB
#_11DF67: db $FD, $0A, $F6, $29, $DF, $20, $FE, $01
#_11DF6F: db $FD, $02, $F7, $08
#_11DF73: db $44 ; Word Fill
#_11DF74: db $FF, $00 ; Word Fill
#_11DF76: db $0E ; Direct Copy
#_11DF77: db $A9, $A6, $9F, $FE, $E9, $F3, $FF, $00
#_11DF7F: db $00, $03, $03, $0F, $0F, $1F, $1F
#_11DF86: db $23 ; Byte Fill
#_11DF87: db $3F
#_11DF88: db $15 ; Direct Copy
#_11DF89: db $7E, $7E, $7C, $7C, $FF, $FC, $F0, $E0
#_11DF91: db $C0, $C0, $81, $83, $7F, $7F, $FE, $FE
#_11DF99: db $F8, $F8, $E0, $E0, $80, $80
#_11DF9F: db $25 ; Byte Fill
#_11DFA0: db $00
#_11DFA1: db $04 ; Direct Copy
#_11DFA2: db $80, $01, $07, $1F, $7F
#_11DFA7: db $22 ; Byte Fill
#_11DFA8: db $FF
#_11DFA9: db $E0, $2F ; EXT Direct Copy
#_11DFAB: db $FA, $FC, $F1, $F8, $F6, $E6, $EF, $CF
#_11DFB3: db $DF, $9F, $DC, $3F, $ED, $1E, $92, $6C
#_11DFBB: db $01, $06, $09, $10, $20, $00, $00, $01
#_11DFC3: db $0E, $1F, $6E, $E5, $B7, $73, $7B, $39
#_11DFCB: db $4D, $30, $F2, $03, $8E, $0F, $F6, $7F
#_11DFD3: db $E0, $10, $08, $84, $82, $0C, $70, $00
#_11DFDB: db $F0, $2F ; EXT Repeat Fill
#_11DFDD: db $20, $01 ; Repeat Fill bytes
#_11DFDF: db $10 ; Direct Copy
#_11DFE0: db $7E, $81, $C3, $7E, $A5, $7E, $A3, $7E
#_11DFE8: db $89, $7E, $A1, $7E, $C3, $7E, $7E, $81
#_11DFF0: db $00
#_11DFF1: db $25 ; Byte Fill
#_11DFF2: db $7E
#_11DFF3: db $10 ; Direct Copy
#_11DFF4: db $00, $01, $FC, $42, $F9, $37, $F3, $6F
#_11DFFC: db $E7, $DB, $C3, $BF, $99, $7D, $3E, $EE
#_11E004: db $6F
#_11E005: db $83 ; Repeat Fill
#_11E006: db $40, $00 ; Repeat Fill bytes
#_11E008: db $0D ; Direct Copy
#_11E009: db $24, $42, $81, $10, $38, $38, $F3, $F3
#_11E011: db $EF, $EF, $D9, $D9, $BD, $BD
#_11E017: db $43 ; Word Fill
#_11E018: db $3F, $BF ; Word Fill
#_11E01A: db $E0, $21 ; EXT Direct Copy
#_11E01C: db $3E, $BE, $C7, $0C, $10, $26, $42, $40
#_11E024: db $40, $41, $1D, $1D, $CF, $CF, $C7, $C7
#_11E02C: db $FB, $FB, $F9, $F9, $EC, $ED, $FC, $FD
#_11E034: db $7C, $7D, $E2, $30, $38, $04, $06, $12
#_11E03C: db $02, $82
#_11E03E: db $89 ; Repeat Fill
#_11E03F: db $B0, $01 ; Repeat Fill bytes
#_11E041: db $43 ; Word Fill
#_11E042: db $3F, $BF ; Word Fill
#_11E044: db $F0, $21 ; EXT Repeat Fill
#_11E046: db $BE, $01 ; Repeat Fill bytes
#_11E048: db $E0, $53 ; EXT Direct Copy
#_11E04A: db $3E, $BE, $0F, $CF, $0F, $EF, $C7, $B7
#_11E052: db $A1, $99, $90, $8F, $E8, $E7, $67, $60
#_11E05A: db $41, $30, $10, $08, $46, $60, $10, $98
#_11E062: db $7C, $7D, $F0, $F3, $F0, $F7, $E3, $ED
#_11E06A: db $05, $19, $09, $F1, $17, $E7, $EF, $0F
#_11E072: db $82, $0C, $08, $10, $E2, $06, $08, $10
#_11E07A: db $DF, $3C, $F9, $76, $FD, $32, $CD, $32
#_11E082: db $A1, $5E, $A7, $58, $8F, $70, $AF, $50
#_11E08A: db $BD, $76, $32, $32, $5E, $59, $73, $57
#_11E092: db $FF, $00, $BD, $42, $1B, $E4, $CF, $30
#_11E09A: db $E7, $18, $F3, $0C
#_11E09E: db $84 ; Repeat Fill
#_11E09F: db $E2, $00 ; Repeat Fill bytes
#_11E0A1: db $08 ; Direct Copy
#_11E0A2: db $FE, $FD, $3B, $9F, $CF, $EB, $E7, $78
#_11E0AA: db $78
#_11E0AB: db $23 ; Byte Fill
#_11E0AC: db $F0
#_11E0AD: db $23 ; Byte Fill
#_11E0AE: db $E0
#_11E0AF: db $23 ; Byte Fill
#_11E0B0: db $C0
#_11E0B1: db $02 ; Direct Copy
#_11E0B2: db $80, $80, $87
#_11E0B5: db $85 ; Repeat Fill
#_11E0B6: db $F4, $00 ; Repeat Fill bytes
#_11E0B8: db $00 ; Direct Copy
#_11E0B9: db $7F
#_11E0BA: db $23 ; Byte Fill
#_11E0BB: db $00
#_11E0BC: db $23 ; Byte Fill
#_11E0BD: db $01
#_11E0BE: db $E0, $3B ; EXT Direct Copy
#_11E0C0: db $03, $03, $07, $07, $0F, $0F, $3F, $3F
#_11E0C8: db $FF, $FF, $FE, $FE, $FC, $F8, $F0, $C0
#_11E0D0: db $8D, $71, $8B, $73, $57, $27, $B7, $87
#_11E0D8: db $D7, $C7, $EB, $C7, $D4, $93, $3B, $B8
#_11E0E0: db $02, $04, $88, $48, $28, $10, $28, $44
#_11E0E8: db $7E, $3F, $BF, $9E, $BF, $80, $A2, $DC
#_11E0F0: db $C5, $B9, $CB, $B3, $57, $A7, $EF, $0F
#_11E0F8: db $80, $40, $40, $01
#_11E0FC: db $83 ; Repeat Fill
#_11E0FD: db $40, $00 ; Repeat Fill bytes
#_11E0FF: db $F0, $2F ; EXT Repeat Fill
#_11E101: db $A0, $02 ; Repeat Fill bytes
#_11E103: db $05 ; Direct Copy
#_11E104: db $7F, $80, $CC, $44, $99, $08
#_11E10A: db $43 ; Word Fill
#_11E10B: db $B3, $10 ; Word Fill
#_11E10D: db $08 ; Direct Copy
#_11E10E: db $B1, $10, $B0, $10, $A8, $18, $00, $33
#_11E116: db $67
#_11E117: db $23 ; Byte Fill
#_11E118: db $4F
#_11E119: db $03 ; Direct Copy
#_11E11A: db $47, $FB, $26, $E5
#_11E11E: db $43 ; Word Fill
#_11E11F: db $00, $FD ; Word Fill
#_11E121: db $02 ; Direct Copy
#_11E122: db $3C, $E1, $00
#_11E125: db $43 ; Word Fill
#_11E126: db $81, $7E ; Word Fill
#_11E128: db $06 ; Direct Copy
#_11E129: db $FF, $00, $58, $5A, $42, $42, $7E
#_11E130: db $22 ; Byte Fill
#_11E131: db $00
#_11E132: db $05 ; Direct Copy
#_11E133: db $80, $7F, $00, $80, $60, $80
#_11E139: db $43 ; Word Fill
#_11E13A: db $BF, $3F ; Word Fill
#_11E13C: db $0A ; Direct Copy
#_11E13D: db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
#_11E145: db $7F, $40, $40
#_11E148: db $22 ; Byte Fill
#_11E149: db $00
#_11E14A: db $03 ; Direct Copy
#_11E14B: db $B5, $42, $E7, $24
#_11E14F: db $4A ; Word Fill
#_11E150: db $A5, $66 ; Word Fill
#_11E152: db $00 ; Direct Copy
#_11E153: db $7E
#_11E154: db $26 ; Byte Fill
#_11E155: db $18
#_11E156: db $00 ; Direct Copy
#_11E157: db $00
#_11E158: db $43 ; Word Fill
#_11E159: db $80, $7F ; Word Fill
#_11E15B: db $04 ; Direct Copy
#_11E15C: db $C0, $3F, $FF, $40, $BF
#_11E161: db $83 ; Repeat Fill
#_11E162: db $63, $03 ; Repeat Fill bytes
#_11E164: db $02 ; Direct Copy
#_11E165: db $00, $7F, $80
#_11E168: db $27 ; Byte Fill
#_11E169: db $00
#_11E16A: db $43 ; Word Fill
#_11E16B: db $01, $FE ; Word Fill
#_11E16D: db $83 ; Repeat Fill
#_11E16E: db $66, $02 ; Repeat Fill bytes
#_11E170: db $01 ; Direct Copy
#_11E171: db $01, $FE
#_11E173: db $44 ; Word Fill
#_11E174: db $FF, $00 ; Word Fill
#_11E176: db $28 ; Byte Fill
#_11E177: db $00
#_11E178: db $07 ; Direct Copy
#_11E179: db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
#_11E181: db $43 ; Word Fill
#_11E182: db $B2, $56 ; Word Fill
#_11E184: db $07 ; Direct Copy
#_11E185: db $B4, $46, $B0, $5A, $00, $00, $13, $51
#_11E18D: db $22 ; Byte Fill
#_11E18E: db $49
#_11E18F: db $00 ; Direct Copy
#_11E190: db $45
#_11E191: db $44 ; Word Fill
#_11E192: db $FF, $00 ; Word Fill
#_11E194: db $1F ; Direct Copy
#_11E195: db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
#_11E19D: db $24, $F0, $30, $00, $7F, $40, $4F, $5E
#_11E1A5: db $53, $5B, $4F, $02, $06, $05, $0C, $07
#_11E1AD: db $10, $03, $24, $19, $42, $3C, $81, $7E
#_11E1B5: db $43 ; Word Fill
#_11E1B6: db $00, $FD ; Word Fill
#_11E1B8: db $00 ; Direct Copy
#_11E1B9: db $FB
#_11E1BA: db $25 ; Byte Fill
#_11E1BB: db $FF
#_11E1BC: db $E0, $2F ; EXT Direct Copy
#_11E1BE: db $70, $F7, $40, $DF, $00, $BF, $00, $F6
#_11E1C6: db $80, $7A, $87, $5F, $8F, $6F, $F0, $0F
#_11E1CE: db $0F, $3F, $7F, $7F, $FF, $F8, $F0, $F0
#_11E1D6: db $3E, $BF, $1E, $FF, $08, $7F, $09, $FE
#_11E1DE: db $11, $FE, $21, $FA, $C1, $F2, $33, $CC
#_11E1E6: db $C0, $E0, $F6, $F7, $EF, $DF, $3F, $33
#_11E1EE: db $97 ; Repeat Fill
#_11E1EF: db $10, $02 ; Repeat Fill bytes
#_11E1F1: db $05 ; Direct Copy
#_11E1F2: db $00, $FF, $00, $80, $18, $98
#_11E1F8: db $43 ; Word Fill
#_11E1F9: db $39, $B9 ; Word Fill
#_11E1FB: db $43 ; Word Fill
#_11E1FC: db $03, $83 ; Word Fill
#_11E1FE: db $E0, $2D ; EXT Direct Copy
#_11E200: db $11, $91, $00, $7F, $67, $46, $46, $7C
#_11E208: db $7C, $6E, $00, $FF, $00, $01, $1C, $1D
#_11E210: db $C8, $C9, $E0, $E1, $38, $39, $10, $11
#_11E218: db $90, $91, $00, $FE, $E2, $36, $1E, $C6
#_11E220: db $EE, $6E, $F0, $F8, $E1, $F1, $CB, $EB
#_11E228: db $9F, $DF, $19, $99, $3D, $BD
#_11E22E: db $43 ; Word Fill
#_11E22F: db $3F, $BF ; Word Fill
#_11E231: db $0F ; Direct Copy
#_11E232: db $07, $0E, $14, $20, $66, $42, $40, $40
#_11E23A: db $0D, $1D, $E7, $EF, $F3, $F7, $F1, $F3
#_11E242: db $43 ; Word Fill
#_11E243: db $FC, $FD ; Word Fill
#_11E245: db $43 ; Word Fill
#_11E246: db $EC, $ED ; Word Fill
#_11E248: db $1F ; Direct Copy
#_11E249: db $E2, $10, $08, $0C, $02, $02, $12, $12
#_11E251: db $AC, $1C, $B7, $2F, $B8, $37, $9F, $18
#_11E259: db $8F, $0F, $FF, $40, $BF, $70, $B9, $68
#_11E261: db $43, $40, $40, $60, $70, $3F, $00, $07
#_11E269: db $8C ; Repeat Fill
#_11E26A: db $80, $04 ; Repeat Fill bytes
#_11E26C: db $02 ; Direct Copy
#_11E26D: db $7F, $80, $7F
#_11E270: db $86 ; Repeat Fill
#_11E271: db $90, $04 ; Repeat Fill bytes
#_11E273: db $00 ; Direct Copy
#_11E274: db $00
#_11E275: db $29 ; Byte Fill
#_11E276: db $01
#_11E277: db $45 ; Word Fill
#_11E278: db $FE, $FF ; Word Fill
#_11E27A: db $24 ; Byte Fill
#_11E27B: db $FE
#_11E27C: db $22 ; Byte Fill
#_11E27D: db $00
#_11E27E: db $03 ; Direct Copy
#_11E27F: db $B9, $58, $D9, $38
#_11E283: db $47 ; Word Fill
#_11E284: db $99, $78 ; Word Fill
#_11E286: db $03 ; Direct Copy
#_11E287: db $9E, $7E, $81, $78
#_11E28B: db $25 ; Byte Fill
#_11E28C: db $07
#_11E28D: db $07 ; Direct Copy
#_11E28E: db $01, $07, $FF, $00, $00, $FF, $FE, $FF
#_11E296: db $23 ; Byte Fill
#_11E297: db $01
#_11E298: db $44 ; Word Fill
#_11E299: db $FE, $00 ; Word Fill
#_11E29B: db $23 ; Byte Fill
#_11E29C: db $00
#_11E29D: db $01 ; Direct Copy
#_11E29E: db $FE, $FE
#_11E2A0: db $22 ; Byte Fill
#_11E2A1: db $FF
#_11E2A2: db $E0, $54 ; EXT Direct Copy
#_11E2A4: db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
#_11E2AC: db $0E, $F3, $1E, $E3, $3F, $C9, $77, $9C
#_11E2B4: db $F0, $E0, $C0, $80, $01, $01, $00, $08
#_11E2BC: db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
#_11E2C4: db $B8, $77, $BF, $38, $80, $1F, $FF, $00
#_11E2CC: db $48, $45, $40, $60, $70, $78, $7F, $00
#_11E2D4: db $E0, $20, $E6, $26, $F6, $36, $FF, $00
#_11E2DC: db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
#_11E2E4: db $5F, $59, $49, $7F, $00, $00, $40, $3F
#_11E2EC: db $E3, $18, $8C, $73, $18, $E7, $28, $D7
#_11E2F4: db $47, $BB, $9D, $7F, $7E
#_11E2F9: db $2A ; Byte Fill
#_11E2FA: db $FF
#_11E2FB: db $E0, $2F ; EXT Direct Copy
#_11E2FD: db $C0, $3F, $8F, $7F, $0F, $EF, $47, $FF
#_11E305: db $63, $FF, $7F, $FF, $6D, $ED, $7F, $FF
#_11E30D: db $C0, $F0, $70, $38, $1C, $00, $12, $00
#_11E315: db $36, $C9, $E0, $FF, $F8, $FF, $F9, $FE
#_11E31D: db $99, $9E, $9C, $9F, $FC, $FF, $FE, $FF
#_11E325: db $36, $1E, $06, $07, $67, $62, $02, $00
#_11E32D: db $97 ; Repeat Fill
#_11E32E: db $28, $02 ; Repeat Fill bytes
#_11E330: db $E0, $31 ; EXT Direct Copy
#_11E332: db $38, $B8, $3C, $BC, $26, $A6, $23, $A3
#_11E33A: db $26, $A6, $0E, $8E, $00, $80, $00, $FF
#_11E342: db $47, $43, $59, $5C, $59, $71, $7F, $00
#_11E34A: db $FC, $FD, $1C, $1D, $00, $01, $C0, $C1
#_11E352: db $6C, $6D, $EC, $ED, $00, $01, $00, $FF
#_11E35A: db $02, $E2, $FE, $3E, $92, $12, $FE, $00
#_11E362: db $3F, $BF
#_11E364: db $43 ; Word Fill
#_11E365: db $3E, $BE ; Word Fill
#_11E367: db $13 ; Direct Copy
#_11E368: db $0F, $4F, $8F, $AF, $83, $93, $E4, $EC
#_11E370: db $60, $67, $40, $41, $41, $B0, $50, $6C
#_11E378: db $13, $98, $FC, $FD
#_11E37C: db $43 ; Word Fill
#_11E37D: db $7C, $7D ; Word Fill
#_11E37F: db $11 ; Direct Copy
#_11E380: db $F0, $F2, $F1, $F5, $E1, $E9, $47, $57
#_11E388: db $0F, $EF, $02, $82, $82, $0D, $0A, $16
#_11E390: db $A8, $10
#_11E392: db $FF ; End of GFX 09

;===================================================================================================

GFX_0A:
#_11E393: db $0F ; Direct Copy
#_11E394: db $13, $FE, $06, $FD, $2C, $FB, $18, $F7
#_11E39C: db $38, $E7, $6C, $DB, $C6, $BD, $83, $7E
#_11E3A4: db $27 ; Byte Fill
#_11E3A5: db $00
#_11E3A6: db $E0, $5A ; EXT Direct Copy
#_11E3A8: db $E6, $00, $D9, $00, $9D, $00, $6E, $00
#_11E3B0: db $76, $00, $B9, $00, $9B, $00, $67, $00
#_11E3B8: db $E6, $D9, $9D, $6E, $76, $B9, $9B, $67
#_11E3C0: db $01, $FC, $23, $F9, $07, $F3, $8F, $E7
#_11E3C8: db $17, $CF, $27, $9F, $43, $3F, $81, $7E
#_11E3D0: db $02, $04, $08, $10, $20, $40, $80, $01
#_11E3D8: db $FD, $FC, $FB, $F9, $D7, $D3, $77, $6F
#_11E3E0: db $E0, $D8, $DA, $BC, $ED, $2E, $FE, $7D
#_11E3E8: db $02, $04, $28, $90, $27, $43, $91, $02
#_11E3F0: db $C1, $7C, $63, $B9, $37, $D3, $9B, $67
#_11E3F8: db $C9, $37, $C4, $3B, $FE, $01, $FF, $00
#_11E400: db $02, $04, $08
#_11E403: db $24 ; Byte Fill
#_11E404: db $00
#_11E405: db $E0, $2F ; EXT Direct Copy
#_11E407: db $F5, $F3, $CB, $C7, $14, $0C, $24, $18
#_11E40F: db $5A, $3C, $E6, $67, $C1, $C1, $03, $01
#_11E417: db $0C, $38, $F3, $E7, $C3, $99, $3E, $FE
#_11E41F: db $81, $00, $C3, $81, $66, $42, $3C, $24
#_11E427: db $18, $00, $3C, $18, $66, $24, $C3, $42
#_11E42F: db $81, $C3, $66, $3C, $18, $3C, $66, $C3
#_11E437: db $37 ; Byte Fill
#_11E438: db $00
#_11E439: db $E0, $23 ; EXT Direct Copy
#_11E43B: db $EF, $1C, $DB, $36, $AC, $7B, $72, $CD
#_11E443: db $BA, $E5, $4B, $B4, $EB, $14, $EF, $10
#_11E44B: db $DF, $B7, $7B, $CD, $E5, $B4, $17, $DB
#_11E453: db $FD, $0A, $F6, $29, $DF, $20, $FE, $01
#_11E45B: db $FD, $02, $F7, $08
#_11E45F: db $44 ; Word Fill
#_11E460: db $FF, $00 ; Word Fill
#_11E462: db $16 ; Direct Copy
#_11E463: db $A9, $A6, $9F, $FE, $E9, $F3, $FF, $00
#_11E46B: db $00, $C3, $3F, $FC, $EF, $F8, $57, $E8
#_11E473: db $00, $28, $00, $38, $D7, $FB, $EF
#_11E47A: db $23 ; Byte Fill
#_11E47B: db $00
#_11E47C: db $0D ; Direct Copy
#_11E47D: db $10, $10, $00, $00, $14, $00, $9C, $EB
#_11E485: db $FE, $EB, $1E, $F7, $28, $07
#_11E48B: db $83 ; Repeat Fill
#_11E48C: db $FA, $00 ; Repeat Fill bytes
#_11E48E: db $02 ; Direct Copy
#_11E48F: db $BF, $EF, $08
#_11E492: db $22 ; Byte Fill
#_11E493: db $00
#_11E494: db $83 ; Repeat Fill
#_11E495: db $04, $01 ; Repeat Fill bytes
#_11E497: db $E0, $2E ; EXT Direct Copy
#_11E499: db $38, $B9, $0B, $C8, $64, $02, $99, $A7
#_11E4A1: db $FB, $E7, $DF, $E3, $35, $4B, $63, $1C
#_11E4A9: db $46, $34, $99, $40, $00, $00, $80, $80
#_11E4B1: db $18, $D9, $B0, $33, $40, $86, $21, $5D
#_11E4B9: db $99, $A5, $9C, $A0, $B2, $CC, $E9, $1E
#_11E4C1: db $26, $4C, $39, $82, $42, $43, $01
#_11E4C8: db $F0, $2F ; EXT Repeat Fill
#_11E4CA: db $1F, $01 ; Repeat Fill bytes
#_11E4CC: db $11 ; Direct Copy
#_11E4CD: db $00, $7E, $81, $C3, $7E, $A5, $7E, $A3
#_11E4D5: db $7E, $89, $7E, $A1, $7E, $C3, $7E, $7E
#_11E4DD: db $81, $00
#_11E4DF: db $25 ; Byte Fill
#_11E4E0: db $7E
#_11E4E1: db $10 ; Direct Copy
#_11E4E2: db $00, $01, $FC, $42, $F9, $37, $F3, $6F
#_11E4EA: db $E7, $DB, $C3, $BF, $99, $7D, $3E, $EE
#_11E4F2: db $6F
#_11E4F3: db $83 ; Repeat Fill
#_11E4F4: db $40, $00 ; Repeat Fill bytes
#_11E4F6: db $E0, $33 ; EXT Direct Copy
#_11E4F8: db $24, $42, $81, $10, $38, $BA, $09, $CD
#_11E500: db $83, $EB, $C3, $F3, $C3, $EF, $92, $D2
#_11E508: db $1E, $9F, $08, $CB, $45, $32, $14, $0C
#_11E510: db $10, $2D, $60, $34, $3E, $7F, $9F, $BF
#_11E518: db $C3, $D3, $83, $BB, $01, $65, $18, $DA
#_11E520: db $08, $B9, $48, $4B, $80, $40, $2C, $44
#_11E528: db $9A, $25, $46, $B4
#_11E52C: db $F0, $2F ; EXT Repeat Fill
#_11E52E: db $B0, $01 ; Repeat Fill bytes
#_11E530: db $E0, $53 ; EXT Direct Copy
#_11E532: db $81, $67, $41, $BD, $23, $5B, $91, $AD
#_11E53A: db $E8, $F6, $E4, $EB, $F2, $F5, $F9, $FA
#_11E542: db $18, $02, $84, $42, $01, $10, $08, $04
#_11E54A: db $F1, $F6, $E2, $ED, $84, $9A, $89, $B5
#_11E552: db $13, $6B, $21, $DD, $58, $BE, $BC, $7F
#_11E55A: db $08, $10, $61, $42, $84, $02, $01, $00
#_11E562: db $DF, $3C, $F9, $76, $FD, $32, $CD, $32
#_11E56A: db $A1, $5E, $A7, $58, $8F, $70, $AF, $50
#_11E572: db $BD, $76, $32, $32, $5E, $59, $73, $57
#_11E57A: db $FF, $00, $BD, $42, $1B, $E4, $CF, $30
#_11E582: db $E7, $18, $F3, $0C
#_11E586: db $84 ; Repeat Fill
#_11E587: db $E2, $00 ; Repeat Fill bytes
#_11E589: db $14 ; Direct Copy
#_11E58A: db $FE, $FD, $3B, $9F, $CF, $EB, $E7, $FC
#_11E592: db $EF, $38, $D7, $28, $00, $A9, $46, $FF
#_11E59A: db $57, $F8, $6F, $80, $7F
#_11E59F: db $23 ; Byte Fill
#_11E5A0: db $00
#_11E5A1: db $01 ; Direct Copy
#_11E5A2: db $10, $10
#_11E5A4: db $23 ; Byte Fill
#_11E5A5: db $00
#_11E5A6: db $0A ; Direct Copy
#_11E5A7: db $F9, $F7, $1C, $EB, $14, $00, $96, $61
#_11E5AF: db $3F, $EB, $FF
#_11E5B2: db $83 ; Repeat Fill
#_11E5B3: db $89, $02 ; Repeat Fill bytes
#_11E5B5: db $22 ; Byte Fill
#_11E5B6: db $00
#_11E5B7: db $01 ; Direct Copy
#_11E5B8: db $08, $08
#_11E5BA: db $22 ; Byte Fill
#_11E5BB: db $00
#_11E5BC: db $13 ; Direct Copy
#_11E5BD: db $08, $C3, $3C, $4A, $BC, $22, $5C, $9A
#_11E5C5: db $AC, $92, $AC, $9E, $A0, $22, $41, $1D
#_11E5CD: db $DC, $00, $01, $81
#_11E5D1: db $22 ; Byte Fill
#_11E5D2: db $41
#_11E5D3: db $19 ; Direct Copy
#_11E5D4: db $9C, $22, $25, $1E, $D1, $CE, $EE, $E0
#_11E5DC: db $E9, $E5, $E1, $E9, $C1, $DD, $00, $36
#_11E5E4: db $C8, $2B, $C0, $20, $11, $12, $16, $22
#_11E5EC: db $C9, $14
#_11E5EE: db $92 ; Repeat Fill
#_11E5EF: db $A0, $02 ; Repeat Fill bytes
#_11E5F1: db $22 ; Byte Fill
#_11E5F2: db $41
#_11E5F3: db $99 ; Repeat Fill
#_11E5F4: db $B6, $02 ; Repeat Fill bytes
#_11E5F6: db $06 ; Direct Copy
#_11E5F7: db $7F, $80, $E0, $60, $CF, $40, $9B
#_11E5FE: db $48 ; Word Fill
#_11E5FF: db $08, $9C ; Word Fill
#_11E601: db $02 ; Direct Copy
#_11E602: db $00, $1F, $30
#_11E605: db $24 ; Byte Fill
#_11E606: db $67
#_11E607: db $02 ; Direct Copy
#_11E608: db $FB, $26, $E5
#_11E60B: db $43 ; Word Fill
#_11E60C: db $00, $FD ; Word Fill
#_11E60E: db $02 ; Direct Copy
#_11E60F: db $3C, $E1, $00
#_11E612: db $43 ; Word Fill
#_11E613: db $81, $7E ; Word Fill
#_11E615: db $06 ; Direct Copy
#_11E616: db $FF, $00, $58, $5A, $42, $42, $7E
#_11E61D: db $22 ; Byte Fill
#_11E61E: db $00
#_11E61F: db $05 ; Direct Copy
#_11E620: db $80, $7F, $00, $80, $60, $80
#_11E626: db $43 ; Word Fill
#_11E627: db $BF, $3F ; Word Fill
#_11E629: db $0A ; Direct Copy
#_11E62A: db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
#_11E632: db $7F, $40, $40
#_11E635: db $22 ; Byte Fill
#_11E636: db $00
#_11E637: db $03 ; Direct Copy
#_11E638: db $B5, $42, $E7, $24
#_11E63C: db $4A ; Word Fill
#_11E63D: db $A5, $66 ; Word Fill
#_11E63F: db $00 ; Direct Copy
#_11E640: db $7E
#_11E641: db $26 ; Byte Fill
#_11E642: db $18
#_11E643: db $09 ; Direct Copy
#_11E644: db $00, $9C, $7F, $80, $7F, $C0, $3F, $FF
#_11E64C: db $40, $B3
#_11E64E: db $83 ; Repeat Fill
#_11E64F: db $63, $03 ; Repeat Fill bytes
#_11E651: db $02 ; Direct Copy
#_11E652: db $00, $7F, $80
#_11E655: db $27 ; Byte Fill
#_11E656: db $00
#_11E657: db $09 ; Direct Copy
#_11E658: db $01, $FE, $03, $FC, $FF, $00, $9F, $FE
#_11E660: db $01, $FE
#_11E662: db $44 ; Word Fill
#_11E663: db $FF, $00 ; Word Fill
#_11E665: db $28 ; Byte Fill
#_11E666: db $00
#_11E667: db $07 ; Direct Copy
#_11E668: db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
#_11E670: db $43 ; Word Fill
#_11E671: db $B2, $56 ; Word Fill
#_11E673: db $07 ; Direct Copy
#_11E674: db $B4, $46, $B0, $5A, $00, $00, $13, $51
#_11E67C: db $22 ; Byte Fill
#_11E67D: db $49
#_11E67E: db $00 ; Direct Copy
#_11E67F: db $45
#_11E680: db $44 ; Word Fill
#_11E681: db $FF, $00 ; Word Fill
#_11E683: db $1F ; Direct Copy
#_11E684: db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
#_11E68C: db $24, $F0, $30, $00, $7F, $40, $4F, $5E
#_11E694: db $53, $5B, $4F, $02, $06, $05, $0C, $07
#_11E69C: db $10, $03, $24, $19, $42, $3C, $81, $7E
#_11E6A4: db $43 ; Word Fill
#_11E6A5: db $00, $FD ; Word Fill
#_11E6A7: db $00 ; Direct Copy
#_11E6A8: db $FB
#_11E6A9: db $25 ; Byte Fill
#_11E6AA: db $FF
#_11E6AB: db $E0, $2F ; EXT Direct Copy
#_11E6AD: db $31, $BF, $23, $BF, $07, $BF, $27, $BF
#_11E6B5: db $3F, $DE, $0E, $FF, $40, $F9, $3D, $E2
#_11E6BD: db $4E, $5C, $78, $58, $61, $71, $3F, $1D
#_11E6C5: db $F9, $F6, $E1, $DE, $81, $FE, $09, $FE
#_11E6CD: db $0D, $FE, $0F, $FE, $40, $F1, $90, $6F
#_11E6D5: db $0F, $3F, $7F, $F7, $F3, $F1, $BE, $90
#_11E6DD: db $97 ; Repeat Fill
#_11E6DE: db $10, $02 ; Repeat Fill bytes
#_11E6E0: db $14 ; Direct Copy
#_11E6E1: db $FF, $FF, $BF, $BF, $5F, $7F, $39, $F9
#_11E6E9: db $E0, $F1, $EE, $FF, $F0, $FE, $FD, $FD
#_11E6F1: db $00, $40, $80, $06, $0E
#_11E6F6: db $62 ; Increasing Fill
#_11E6F7: db $00 ; Increasing Fill Start
#_11E6F8: db $15 ; Direct Copy
#_11E6F9: db $E0, $E3, $D1, $DF, $AF, $BF, $47, $67
#_11E701: db $27, $7F, $3E, $7E, $BE, $FF, $7F, $FF
#_11E709: db $1C, $20, $40, $98, $80, $81
#_11E70F: db $83 ; Repeat Fill
#_11E710: db $1E, $01 ; Repeat Fill bytes
#_11E712: db $E0, $3E ; EXT Direct Copy
#_11E714: db $08, $CB, $00, $66, $81, $BD, $C3, $DB
#_11E71C: db $C1, $DD, $83, $B3, $0E, $6E, $46, $34
#_11E724: db $99, $42, $24, $22, $4C, $91, $3E, $FF
#_11E72C: db $1F, $9F, $1B, $DB, $03, $63, $81, $B9
#_11E734: db $80, $BC, $00, $66, $08, $CB, $00, $60
#_11E73C: db $24, $9C, $46, $43, $99, $34, $9B, $08
#_11E744: db $9F, $0F, $99, $0F, $8F, $10, $C0, $40
#_11E74C: db $FF, $60, $BF, $70, $9C, $6C, $67
#_11E753: db $22 ; Byte Fill
#_11E754: db $60
#_11E755: db $03 ; Direct Copy
#_11E756: db $3F, $1F, $00, $03
#_11E75A: db $8C ; Repeat Fill
#_11E75B: db $80, $04 ; Repeat Fill bytes
#_11E75D: db $03 ; Direct Copy
#_11E75E: db $7F, $9C, $7F, $67
#_11E762: db $22 ; Byte Fill
#_11E763: db $60
#_11E764: db $04 ; Direct Copy
#_11E765: db $3F, $1F, $00, $00, $9F
#_11E76A: db $26 ; Byte Fill
#_11E76B: db $01
#_11E76C: db $01 ; Direct Copy
#_11E76D: db $33, $33
#_11E76F: db $43 ; Word Fill
#_11E770: db $FE, $FF ; Word Fill
#_11E772: db $01 ; Direct Copy
#_11E773: db $CE, $FF
#_11E775: db $23 ; Byte Fill
#_11E776: db $FE
#_11E777: db $00 ; Direct Copy
#_11E778: db $CC
#_11E779: db $22 ; Byte Fill
#_11E77A: db $00
#_11E77B: db $05 ; Direct Copy
#_11E77C: db $B1, $50, $D9, $38, $9B, $78
#_11E782: db $43 ; Word Fill
#_11E783: db $93, $70 ; Word Fill
#_11E785: db $13 ; Direct Copy
#_11E786: db $99, $78, $9E, $7E, $81, $78, $0F, $07
#_11E78E: db $07, $0F, $0F, $07, $01, $07, $FF, $00
#_11E796: db $00, $FF, $FE, $FF
#_11E79A: db $23 ; Byte Fill
#_11E79B: db $01
#_11E79C: db $00 ; Direct Copy
#_11E79D: db $F3
#_11E79E: db $44 ; Word Fill
#_11E79F: db $01, $FF ; Word Fill
#_11E7A1: db $22 ; Byte Fill
#_11E7A2: db $00
#_11E7A3: db $24 ; Byte Fill
#_11E7A4: db $FE
#_11E7A5: db $E0, $54 ; EXT Direct Copy
#_11E7A7: db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
#_11E7AF: db $0E, $F3, $1E, $E3, $3F, $C9, $77, $9C
#_11E7B7: db $F0, $E0, $C0, $80, $01, $01, $00, $08
#_11E7BF: db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
#_11E7C7: db $B8, $77, $BF, $38, $80, $1F, $FF, $00
#_11E7CF: db $48, $45, $40, $60, $70, $78, $7F, $00
#_11E7D7: db $E0, $20, $E6, $26, $F6, $36, $FF, $00
#_11E7DF: db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
#_11E7E7: db $5F, $59, $49, $7F, $00, $00, $40, $3F
#_11E7EF: db $E3, $18, $8C, $73, $18, $E7, $28, $D7
#_11E7F7: db $47, $BB, $9D, $7F, $7E
#_11E7FC: db $2A ; Byte Fill
#_11E7FD: db $FF
#_11E7FE: db $E0, $2F ; EXT Direct Copy
#_11E800: db $39, $C6, $00, $F1, $3E, $DF, $27, $BE
#_11E808: db $03, $BF, $23, $BF, $38, $B7, $3F, $BF
#_11E810: db $39, $7F, $61, $59, $78, $5C, $4F, $40
#_11E818: db $80, $7F, $01, $82, $79, $FE, $38, $FF
#_11E820: db $18, $FF, $8D, $FE, $E2, $DF, $F8, $F7
#_11E828: db $80, $FF, $87, $C6, $E6, $73, $3C, $0F
#_11E830: db $97 ; Repeat Fill
#_11E831: db $28, $02 ; Repeat Fill bytes
#_11E833: db $00 ; Direct Copy
#_11E834: db $E2
#_11E835: db $84 ; Repeat Fill
#_11E836: db $39, $04 ; Repeat Fill bytes
#_11E838: db $06 ; Direct Copy
#_11E839: db $5F, $7F, $30, $79, $31, $7F, $3F
#_11E840: db $85 ; Repeat Fill
#_11E841: db $45, $04 ; Repeat Fill bytes
#_11E843: db $E0, $29 ; EXT Direct Copy
#_11E845: db $80, $86, $80, $00, $00, $E7, $E7, $8B
#_11E84D: db $CF, $9B, $DF, $C7, $FF, $FC, $FD, $FD
#_11E855: db $FF, $9E, $DE, $CC, $FD, $18, $30, $20
#_11E85D: db $00, $02, $00, $21, $02, $1C, $DD, $18
#_11E865: db $DB, $00, $66, $83, $BF, $C1, $DD, $E0
#_11E86D: db $E6, $F8
#_11E86F: db $62 ; Increasing Fill
#_11E870: db $FB ; Increasing Fill Start
#_11E871: db $11 ; Direct Copy
#_11E872: db $22, $24, $99, $40, $22, $19, $04, $02
#_11E87A: db $3C, $BD, $78, $7B, $F0, $F6, $21, $ED
#_11E882: db $21, $29
#_11E884: db $83 ; Repeat Fill
#_11E885: db $C2, $02 ; Repeat Fill bytes
#_11E887: db $09 ; Direct Copy
#_11E888: db $08, $EB, $42, $84, $09, $12, $D6, $22
#_11E890: db $C9, $14
#_11E892: db $FF ; End of GFX 0A

;===================================================================================================

GFX_0B:
#_11E893: db $0F ; Direct Copy
#_11E894: db $13, $FE, $06, $FD, $2C, $FB, $18, $F7
#_11E89C: db $38, $E7, $6C, $DB, $C6, $BD, $83, $7E
#_11E8A4: db $28 ; Byte Fill
#_11E8A5: db $00
#_11E8A6: db $04 ; Direct Copy
#_11E8A7: db $DF, $00, $63, $00, $DD
#_11E8AC: db $44 ; Word Fill
#_11E8AD: db $00, $BE ; Word Fill
#_11E8AF: db $04 ; Direct Copy
#_11E8B0: db $BD, $00, $C3, $00, $7D
#_11E8B5: db $27 ; Byte Fill
#_11E8B6: db $00
#_11E8B7: db $E0, $42 ; EXT Direct Copy
#_11E8B9: db $01, $FC, $23, $F9, $07, $F3, $8F, $E7
#_11E8C1: db $17, $CF, $27, $9F, $43, $3F, $81, $7E
#_11E8C9: db $02, $04, $08, $10, $20, $40, $80, $01
#_11E8D1: db $FD, $FC, $FB, $F9, $D7, $D3, $77, $6F
#_11E8D9: db $E0, $D8, $DA, $BC, $ED, $2E, $FE, $7D
#_11E8E1: db $02, $04, $28, $90, $27, $43, $91, $02
#_11E8E9: db $C1, $7C, $63, $B9, $37, $D3, $9B, $67
#_11E8F1: db $C9, $37, $C4, $3B, $FE, $01, $FF, $00
#_11E8F9: db $02, $04, $08
#_11E8FC: db $24 ; Byte Fill
#_11E8FD: db $00
#_11E8FE: db $17 ; Direct Copy
#_11E8FF: db $F5, $F3, $CB, $C7, $14, $0C, $24, $18
#_11E907: db $5A, $3C, $E6, $67, $C1, $C1, $03, $01
#_11E90F: db $0C, $38, $F3, $E7, $C3, $99, $3E, $FE
#_11E917: db $4F ; Word Fill
#_11E918: db $FF, $00 ; Word Fill
#_11E91A: db $27 ; Byte Fill
#_11E91B: db $FF
#_11E91C: db $37 ; Byte Fill
#_11E91D: db $00
#_11E91E: db $E0, $29 ; EXT Direct Copy
#_11E920: db $FD, $7D, $F3, $33, $FF, $DF, $7F, $6F
#_11E928: db $3E, $26, $3E, $22, $3F, $2D, $F1, $D0
#_11E930: db $02, $0C, $00, $80, $C1, $C1, $C0, $0E
#_11E938: db $6F, $60, $AB, $84, $74, $03, $F7, $08
#_11E940: db $EC, $10, $1B, $E0, $FB, $04, $88, $07
#_11E948: db $9F, $7F
#_11E94A: db $25 ; Byte Fill
#_11E94B: db $FF
#_11E94C: db $E0, $3F ; EXT Direct Copy
#_11E94E: db $41, $7F, $A2, $BE, $DC, $DC, $E0, $E0
#_11E956: db $7E, $FF, $BD, $FF, $5A, $7E, $A4, $BC
#_11E95E: db $80, $41, $23, $1F, $00, $00, $81, $43
#_11E966: db $3F, $3F, $F7, $F7, $FD, $FF, $71, $7F
#_11E96E: db $3F, $3F, $01, $01, $7C, $7C, $FA, $FE
#_11E976: db $C0, $08, $00, $80, $C0, $FE, $83, $01
#_11E97E: db $7F, $FF, $77, $FF, $23, $FF, $B7, $7F
#_11E986: db $5F, $3F, $6E, $1F, $B1, $8E, $DF, $C0
#_11E98E: db $23 ; Byte Fill
#_11E98F: db $00
#_11E990: db $13 ; Direct Copy
#_11E991: db $80, $80, $40, $20, $7E, $FF, $FE, $7F
#_11E999: db $BD, $7E, $52, $3D, $6D, $91, $B3, $43
#_11E9A1: db $2C, $CF, $EC, $0F
#_11E9A5: db $22 ; Byte Fill
#_11E9A6: db $00
#_11E9A7: db $04 ; Direct Copy
#_11E9A8: db $80, $02, $0C, $10, $10
#_11E9AD: db $8F ; Repeat Fill
#_11E9AE: db $20, $01 ; Repeat Fill bytes
#_11E9B0: db $23 ; Byte Fill
#_11E9B1: db $00
#_11E9B2: db $93 ; Repeat Fill
#_11E9B3: db $34, $01 ; Repeat Fill bytes
#_11E9B5: db $22 ; Byte Fill
#_11E9B6: db $00
#_11E9B7: db $84 ; Repeat Fill
#_11E9B8: db $4B, $01 ; Repeat Fill bytes
#_11E9BA: db $14 ; Direct Copy
#_11E9BB: db $05, $C7, $7A, $FB, $6C, $ED, $7C, $FD
#_11E9C3: db $74, $F5, $6E, $FF, $3C, $FF, $00, $FF
#_11E9CB: db $38, $04, $12, $02, $0A
#_11E9D0: db $22 ; Byte Fill
#_11E9D1: db $00
#_11E9D2: db $0F ; Direct Copy
#_11E9D3: db $01, $FC, $42, $F9, $37, $F3, $6F, $E7
#_11E9DB: db $DB, $C3, $BF, $99, $7D, $3E, $EE, $6F
#_11E9E3: db $83 ; Repeat Fill
#_11E9E4: db $40, $00 ; Repeat Fill bytes
#_11E9E6: db $E0, $2B ; EXT Direct Copy
#_11E9E8: db $24, $42, $81, $10, $EF, $EF, $D7, $F7
#_11E9F0: db $C7, $FF, $F8, $F8, $F3, $F3, $E7, $F7
#_11E9F8: db $66, $77, $A6, $B7, $10, $08, $00, $07
#_11EA00: db $0C, $08, $88, $48, $BD, $FF, $D1, $FF
#_11EA08: db $E7, $FF, $1F, $1F, $EF, $EF, $E6, $EE
#_11EA10: db $ED, $E5, $ED, $E7
#_11EA14: db $22 ; Byte Fill
#_11EA15: db $00
#_11EA16: db $00 ; Direct Copy
#_11EA17: db $E0
#_11EA18: db $62 ; Increasing Fill
#_11EA19: db $10 ; Increasing Fill Start
#_11EA1A: db $F0, $28 ; EXT Repeat Fill
#_11EA1C: db $AF, $01 ; Repeat Fill bytes
#_11EA1E: db $22 ; Byte Fill
#_11EA1F: db $00
#_11EA20: db $00 ; Direct Copy
#_11EA21: db $E0
#_11EA22: db $62 ; Increasing Fill
#_11EA23: db $10 ; Increasing Fill Start
#_11EA24: db $0D ; Direct Copy
#_11EA25: db $10, $A3, $BB, $B0, $AC, $38, $77, $7F
#_11EA2D: db $F8, $F1, $F1, $F5, $FD, $B1
#_11EA33: db $22 ; Byte Fill
#_11EA34: db $FF
#_11EA35: db $E0, $32 ; EXT Direct Copy
#_11EA37: db $44, $43, $80, $00, $0E, $02, $00, $00
#_11EA3F: db $CD, $C7, $0D, $17, $1D, $EF, $FE, $1F
#_11EA47: db $F3, $F3, $CD, $ED, $9E, $DE, $9E, $DF
#_11EA4F: db $30, $E0, $00, $00, $0C, $12, $21, $20
#_11EA57: db $FC, $FC, $F8, $F8, $14, $10, $04, $00
#_11EA5F: db $13, $00, $30, $00, $E7, $07, $0B, $08
#_11EA67: db $03, $07, $EF
#_11EA6A: db $22 ; Byte Fill
#_11EA6B: db $FF
#_11EA6C: db $11 ; Direct Copy
#_11EA6D: db $F8, $F7, $44, $33, $83, $7C, $04, $FF
#_11EA75: db $8E, $FF, $FD, $FF, $C3, $FF, $FF, $7F
#_11EA7D: db $FF, $1F
#_11EA7F: db $27 ; Byte Fill
#_11EA80: db $FF
#_11EA81: db $10 ; Direct Copy
#_11EA82: db $C1, $C1, $D7, $DF, $57, $DF, $51, $DF
#_11EA8A: db $5E, $DF, $41, $C1, $BC, $BC, $43, $7F
#_11EA92: db $3E
#_11EA93: db $23 ; Byte Fill
#_11EA94: db $20
#_11EA95: db $06 ; Direct Copy
#_11EA96: db $3E, $43, $80, $F9, $FD, $F5, $FD
#_11EA9D: db $43 ; Word Fill
#_11EA9E: db $EA, $FB ; Word Fill
#_11EAA0: db $09 ; Direct Copy
#_11EAA1: db $DA, $FB, $22, $E3, $D9, $D9, $3C, $3C
#_11EAA9: db $02, $02
#_11EAAB: db $22 ; Byte Fill
#_11EAAC: db $04
#_11EAAD: db $08 ; Direct Copy
#_11EAAE: db $1C, $26, $C3, $EA, $E4, $2D, $F1, $13
#_11EAB6: db $E3
#_11EAB7: db $43 ; Word Fill
#_11EAB8: db $D7, $E7 ; Word Fill
#_11EABA: db $E0, $25 ; EXT Direct Copy
#_11EABC: db $A9, $CF, $58, $9F, $3E, $BE, $11, $02
#_11EAC4: db $0C, $08, $08, $10, $20, $41, $3F, $0F
#_11EACC: db $D3, $CF, $FD, $C3, $A3, $C1, $AA, $C9
#_11EAD4: db $42, $99, $8D, $3C, $FC, $7D, $C0, $20
#_11EADC: db $00, $1C, $14, $24, $42, $02
#_11EAE2: db $85 ; Repeat Fill
#_11EAE3: db $A0, $02 ; Repeat Fill bytes
#_11EAE5: db $43 ; Word Fill
#_11EAE6: db $D7, $E7 ; Word Fill
#_11EAE8: db $F0, $25 ; EXT Repeat Fill
#_11EAEA: db $AA, $02 ; Repeat Fill bytes
#_11EAEC: db $06 ; Direct Copy
#_11EAED: db $7F, $80, $E0, $60, $CF, $40, $9B
#_11EAF4: db $48 ; Word Fill
#_11EAF5: db $08, $9C ; Word Fill
#_11EAF7: db $02 ; Direct Copy
#_11EAF8: db $00, $1F, $30
#_11EAFB: db $24 ; Byte Fill
#_11EAFC: db $67
#_11EAFD: db $02 ; Direct Copy
#_11EAFE: db $FB, $26, $E5
#_11EB01: db $43 ; Word Fill
#_11EB02: db $00, $FD ; Word Fill
#_11EB04: db $02 ; Direct Copy
#_11EB05: db $3C, $E1, $00
#_11EB08: db $43 ; Word Fill
#_11EB09: db $81, $7E ; Word Fill
#_11EB0B: db $06 ; Direct Copy
#_11EB0C: db $FF, $00, $58, $5A, $42, $42, $7E
#_11EB13: db $22 ; Byte Fill
#_11EB14: db $00
#_11EB15: db $05 ; Direct Copy
#_11EB16: db $80, $7F, $00, $80, $60, $80
#_11EB1C: db $43 ; Word Fill
#_11EB1D: db $BF, $3F ; Word Fill
#_11EB1F: db $0A ; Direct Copy
#_11EB20: db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
#_11EB28: db $7F, $40, $40
#_11EB2B: db $22 ; Byte Fill
#_11EB2C: db $00
#_11EB2D: db $03 ; Direct Copy
#_11EB2E: db $B5, $42, $E7, $24
#_11EB32: db $4A ; Word Fill
#_11EB33: db $A5, $66 ; Word Fill
#_11EB35: db $00 ; Direct Copy
#_11EB36: db $7E
#_11EB37: db $26 ; Byte Fill
#_11EB38: db $18
#_11EB39: db $09 ; Direct Copy
#_11EB3A: db $00, $9C, $7F, $80, $7F, $C0, $3F, $FF
#_11EB42: db $40, $B3
#_11EB44: db $83 ; Repeat Fill
#_11EB45: db $63, $03 ; Repeat Fill bytes
#_11EB47: db $02 ; Direct Copy
#_11EB48: db $00, $7F, $80
#_11EB4B: db $27 ; Byte Fill
#_11EB4C: db $00
#_11EB4D: db $09 ; Direct Copy
#_11EB4E: db $01, $FE, $03, $FC, $FF, $00, $9F, $FE
#_11EB56: db $01, $FE
#_11EB58: db $44 ; Word Fill
#_11EB59: db $FF, $00 ; Word Fill
#_11EB5B: db $28 ; Byte Fill
#_11EB5C: db $00
#_11EB5D: db $07 ; Direct Copy
#_11EB5E: db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
#_11EB66: db $43 ; Word Fill
#_11EB67: db $B2, $56 ; Word Fill
#_11EB69: db $07 ; Direct Copy
#_11EB6A: db $B4, $46, $B0, $5A, $00, $00, $13, $51
#_11EB72: db $22 ; Byte Fill
#_11EB73: db $49
#_11EB74: db $00 ; Direct Copy
#_11EB75: db $45
#_11EB76: db $44 ; Word Fill
#_11EB77: db $FF, $00 ; Word Fill
#_11EB79: db $1F ; Direct Copy
#_11EB7A: db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
#_11EB82: db $24, $F0, $30, $00, $7F, $40, $4F, $5E
#_11EB8A: db $53, $5B, $4F, $02, $06, $05, $0C, $07
#_11EB92: db $10, $03, $24, $19, $42, $3C, $81, $7E
#_11EB9A: db $43 ; Word Fill
#_11EB9B: db $00, $FD ; Word Fill
#_11EB9D: db $00 ; Direct Copy
#_11EB9E: db $FB
#_11EB9F: db $25 ; Byte Fill
#_11EBA0: db $FF
#_11EBA1: db $04 ; Direct Copy
#_11EBA2: db $2D, $BF, $00, $BF, $12
#_11EBA7: db $44 ; Word Fill
#_11EBA8: db $FF, $00 ; Word Fill
#_11EBAA: db $E0, $25 ; EXT Direct Copy
#_11EBAC: db $0C, $FF, $0C, $BF, $12, $ED, $52, $7F
#_11EBB4: db $6D, $4C, $5E, $73, $73, $12, $FC, $FD
#_11EBBC: db $E0, $FD, $4C, $FD, $51, $FE, $61, $FE
#_11EBC4: db $41, $F2, $01, $22, $23, $DC, $02, $1E
#_11EBCC: db $B2, $AF, $9F, $BF, $FF, $23
#_11EBD2: db $8C ; Repeat Fill
#_11EBD3: db $10, $02 ; Repeat Fill bytes
#_11EBD5: db $22 ; Byte Fill
#_11EBD6: db $FF
#_11EBD7: db $87 ; Repeat Fill
#_11EBD8: db $20, $02 ; Repeat Fill bytes
#_11EBDA: db $00 ; Direct Copy
#_11EBDB: db $E9
#_11EBDC: db $62 ; Increasing Fill
#_11EBDD: db $E9 ; Increasing Fill Start
#_11EBDE: db $E0, $43 ; EXT Direct Copy
#_11EBE0: db $E4, $E6, $E9, $ED, $D1, $D9, $A5, $B5
#_11EBE8: db $45, $65, $15, $D5, $16, $14, $19, $12
#_11EBF0: db $26, $4A, $9A, $2A, $25, $A5, $47, $C7
#_11EBF8: db $27, $67, $95, $B5, $89, $B9, $C5, $DD
#_11EC00: db $EA, $EE, $D8, $DF, $5A, $38, $98, $4A
#_11EC08: db $46, $22, $11, $20, $EF, $EF, $D4, $F4
#_11EC10: db $D4, $F7, $EF, $FF, $FC, $FC, $F3, $F3
#_11EC18: db $6F, $7F, $AD, $BF, $10, $0B, $08, $00
#_11EC20: db $03, $0C, $80, $40
#_11EC24: db $84 ; Repeat Fill
#_11EC25: db $C8, $01 ; Repeat Fill bytes
#_11EC27: db $22 ; Byte Fill
#_11EC28: db $FF
#_11EC29: db $07 ; Direct Copy
#_11EC2A: db $1F, $1F, $EE, $EE, $BD, $FD, $F5, $FF
#_11EC32: db $23 ; Byte Fill
#_11EC33: db $00
#_11EC34: db $14 ; Direct Copy
#_11EC35: db $E0, $11, $02, $00, $9B, $08, $9F, $0F
#_11EC3D: db $99, $0F, $8F, $10, $C0, $40, $FF, $60
#_11EC45: db $BF, $70, $9C, $6C, $67
#_11EC4A: db $22 ; Byte Fill
#_11EC4B: db $60
#_11EC4C: db $03 ; Direct Copy
#_11EC4D: db $3F, $1F, $00, $03
#_11EC51: db $8C ; Repeat Fill
#_11EC52: db $80, $04 ; Repeat Fill bytes
#_11EC54: db $03 ; Direct Copy
#_11EC55: db $7F, $9C, $7F, $67
#_11EC59: db $22 ; Byte Fill
#_11EC5A: db $60
#_11EC5B: db $04 ; Direct Copy
#_11EC5C: db $3F, $1F, $00, $00, $9F
#_11EC61: db $26 ; Byte Fill
#_11EC62: db $01
#_11EC63: db $01 ; Direct Copy
#_11EC64: db $33, $33
#_11EC66: db $43 ; Word Fill
#_11EC67: db $FE, $FF ; Word Fill
#_11EC69: db $01 ; Direct Copy
#_11EC6A: db $CE, $FF
#_11EC6C: db $23 ; Byte Fill
#_11EC6D: db $FE
#_11EC6E: db $00 ; Direct Copy
#_11EC6F: db $CC
#_11EC70: db $22 ; Byte Fill
#_11EC71: db $00
#_11EC72: db $05 ; Direct Copy
#_11EC73: db $B1, $50, $D9, $38, $9B, $78
#_11EC79: db $43 ; Word Fill
#_11EC7A: db $93, $70 ; Word Fill
#_11EC7C: db $13 ; Direct Copy
#_11EC7D: db $99, $78, $9E, $7E, $81, $78, $0F, $07
#_11EC85: db $07, $0F, $0F, $07, $01, $07, $FF, $00
#_11EC8D: db $00, $FF, $FE, $FF
#_11EC91: db $23 ; Byte Fill
#_11EC92: db $01
#_11EC93: db $00 ; Direct Copy
#_11EC94: db $F3
#_11EC95: db $44 ; Word Fill
#_11EC96: db $01, $FF ; Word Fill
#_11EC98: db $22 ; Byte Fill
#_11EC99: db $00
#_11EC9A: db $24 ; Byte Fill
#_11EC9B: db $FE
#_11EC9C: db $E0, $54 ; EXT Direct Copy
#_11EC9E: db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
#_11ECA6: db $0E, $F3, $1E, $E3, $3F, $C9, $77, $9C
#_11ECAE: db $F0, $E0, $C0, $80, $01, $01, $00, $08
#_11ECB6: db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
#_11ECBE: db $B8, $77, $BF, $38, $80, $1F, $FF, $00
#_11ECC6: db $48, $45, $40, $60, $70, $78, $7F, $00
#_11ECCE: db $E0, $20, $E6, $26, $F6, $36, $FF, $00
#_11ECD6: db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
#_11ECDE: db $5F, $59, $49, $7F, $00, $00, $40, $3F
#_11ECE6: db $E3, $18, $8C, $73, $18, $E7, $28, $D7
#_11ECEE: db $47, $BB, $9D, $7F, $7E
#_11ECF3: db $2A ; Byte Fill
#_11ECF4: db $FF
#_11ECF5: db $04 ; Direct Copy
#_11ECF6: db $1E, $E1, $00, $9E, $2D
#_11ECFB: db $44 ; Word Fill
#_11ECFC: db $BF, $3F ; Word Fill
#_11ECFE: db $19 ; Direct Copy
#_11ECFF: db $37, $B7, $33, $B3, $3F, $BF, $1E, $7F
#_11ED07: db $52, $40, $40, $48, $4C, $40, $27, $D8
#_11ED0F: db $01, $26, $C1, $FE, $E9, $D6, $B9, $BE
#_11ED17: db $39, $3E
#_11ED19: db $43 ; Word Fill
#_11ED1A: db $F9, $FE ; Word Fill
#_11ED1C: db $07 ; Direct Copy
#_11ED1D: db $27, $FF, $3F, $3F, $45, $C5, $03, $01
#_11ED25: db $97 ; Repeat Fill
#_11ED26: db $28, $02 ; Repeat Fill bytes
#_11ED28: db $0C ; Direct Copy
#_11ED29: db $15, $D5, $27, $67, $17, $37, $CA, $DA
#_11ED31: db $C5, $CD, $E2, $E7, $E8
#_11ED36: db $62 ; Increasing Fill
#_11ED37: db $EB ; Increasing Fill Start
#_11ED38: db $11 ; Direct Copy
#_11ED39: db $2A, $98, $C8, $25, $32, $18, $14, $12
#_11ED41: db $D0, $D8, $A0, $B0, $45, $65, $85, $C5
#_11ED49: db $25, $A5
#_11ED4B: db $23 ; Byte Fill
#_11ED4C: db $65
#_11ED4D: db $09 ; Direct Copy
#_11ED4E: db $25, $A5, $27, $4F, $9A, $3A, $5A, $9A
#_11ED56: db $9A, $5A
#_11ED58: db $43 ; Word Fill
#_11ED59: db $D7, $FF ; Word Fill
#_11ED5B: db $03 ; Direct Copy
#_11ED5C: db $B7, $FF, $78, $FF
#_11ED60: db $84 ; Repeat Fill
#_11ED61: db $18, $02 ; Repeat Fill bytes
#_11ED63: db $22 ; Byte Fill
#_11ED64: db $FF
#_11ED65: db $23 ; Byte Fill
#_11ED66: db $00
#_11ED67: db $83 ; Repeat Fill
#_11ED68: db $24, $02 ; Repeat Fill bytes
#_11ED6A: db $43 ; Word Fill
#_11ED6B: db $F5, $FF ; Word Fill
#_11ED6D: db $03 ; Direct Copy
#_11ED6E: db $ED, $FF, $1E, $FF
#_11ED72: db $87 ; Repeat Fill
#_11ED73: db $30, $02 ; Repeat Fill bytes
#_11ED75: db $23 ; Byte Fill
#_11ED76: db $00
#_11ED77: db $03 ; Direct Copy
#_11ED78: db $0C, $12, $21, $20
#_11ED7C: db $FF ; End of GFX 0B

;===================================================================================================

GFX_0C:
#_11ED7D: db $0F ; Direct Copy
#_11ED7E: db $13, $FE, $06, $FD, $2C, $FB, $18, $F7
#_11ED86: db $38, $E7, $6C, $DB, $C6, $BD, $83, $7E
#_11ED8E: db $28 ; Byte Fill
#_11ED8F: db $00
#_11ED90: db $0E ; Direct Copy
#_11ED91: db $F7, $00, $C7, $00, $B7, $00, $78, $00
#_11ED99: db $FE, $00, $3E, $00, $DD, $00, $EB
#_11EDA0: db $27 ; Byte Fill
#_11EDA1: db $00
#_11EDA2: db $E0, $42 ; EXT Direct Copy
#_11EDA4: db $01, $FC, $23, $F9, $07, $F3, $8F, $E7
#_11EDAC: db $17, $CF, $27, $9F, $43, $3F, $81, $7E
#_11EDB4: db $02, $04, $08, $10, $20, $40, $80, $01
#_11EDBC: db $FD, $FC, $FB, $F9, $D7, $D3, $77, $6F
#_11EDC4: db $E0, $D8, $DA, $BC, $ED, $2E, $FE, $7D
#_11EDCC: db $02, $04, $28, $90, $27, $43, $91, $02
#_11EDD4: db $C1, $7C, $63, $B9, $37, $D3, $9B, $67
#_11EDDC: db $C9, $37, $C4, $3B, $FE, $01, $FF, $00
#_11EDE4: db $02, $04, $08
#_11EDE7: db $24 ; Byte Fill
#_11EDE8: db $00
#_11EDE9: db $17 ; Direct Copy
#_11EDEA: db $F5, $F3, $CB, $C7, $14, $0C, $24, $18
#_11EDF2: db $5A, $3C, $E6, $67, $C1, $C1, $03, $01
#_11EDFA: db $0C, $38, $F3, $E7, $C3, $99, $3E, $FE
#_11EE02: db $4F ; Word Fill
#_11EE03: db $FF, $00 ; Word Fill
#_11EE05: db $28 ; Byte Fill
#_11EE06: db $FF
#_11EE07: db $E0, $3A ; EXT Direct Copy
#_11EE09: db $00, $CF, $30, $8F, $70, $87, $78, $E3
#_11EE11: db $1C, $F1, $0E, $B9, $46, $FF, $00, $CF
#_11EE19: db $B7, $77, $7B, $9D, $0E, $56, $19, $EF
#_11EE21: db $1C, $DB, $36, $AC, $7B, $72, $CD, $BA
#_11EE29: db $E5, $4B, $B4, $EB, $14, $EF, $10, $DF
#_11EE31: db $B7, $7B, $CD, $E5, $B4, $17, $DB, $FD
#_11EE39: db $0A, $F6, $29, $DF, $20, $FE, $01, $FD
#_11EE41: db $02, $F7, $08
#_11EE44: db $44 ; Word Fill
#_11EE45: db $FF, $00 ; Word Fill
#_11EE47: db $E0, $66 ; EXT Direct Copy
#_11EE49: db $A9, $A6, $9F, $FE, $E9, $F3, $FF, $B9
#_11EE51: db $B9, $F6, $F7, $C4, $C6, $E9, $ED, $D3
#_11EE59: db $DB, $A7, $B7, $4F, $6F, $9F, $DF, $46
#_11EE61: db $08, $39, $12, $24, $48, $90, $20, $7F
#_11EE69: db $FF, $5F, $DF, $2B, $6B, $93, $B3, $A9
#_11EE71: db $B9, $D5, $DD, $EA, $EE, $D9, $DF, $00
#_11EE79: db $20, $94, $4C, $46, $22, $11, $20, $60
#_11EE81: db $EE, $30, $F0, $80, $FF, $BF, $80, $23
#_11EE89: db $40, $41, $8E, $CF, $1E, $9E, $3E, $11
#_11EE91: db $0F, $00, $40, $9C, $30, $20, $41, $40
#_11EE99: db $1D, $40, $83, $C5, $3B, $FB, $07, $8B
#_11EEA1: db $13, $80, $04, $80, $2B, $A0, $31, $A2
#_11EEA9: db $3C, $00, $00, $64, $7B, $54, $4E
#_11EEB0: db $F0, $2F ; EXT Repeat Fill
#_11EEB2: db $20, $01 ; Repeat Fill bytes
#_11EEB4: db $10 ; Direct Copy
#_11EEB5: db $7E, $81, $C3, $7E, $A5, $7E, $A3, $7E
#_11EEBD: db $89, $7E, $A1, $7E, $C3, $7E, $7E, $81
#_11EEC5: db $00
#_11EEC6: db $25 ; Byte Fill
#_11EEC7: db $7E
#_11EEC8: db $10 ; Direct Copy
#_11EEC9: db $00, $01, $FC, $42, $F9, $37, $F3, $6F
#_11EED1: db $E7, $DB, $C3, $BF, $99, $7D, $3E, $EE
#_11EED9: db $6F
#_11EEDA: db $83 ; Repeat Fill
#_11EEDB: db $40, $00 ; Repeat Fill bytes
#_11EEDD: db $0E ; Direct Copy
#_11EEDE: db $24, $42, $81, $10, $60, $71, $00, $9F
#_11EEE6: db $80, $E0, $80, $CE, $0E, $9E, $1E
#_11EEED: db $22 ; Byte Fill
#_11EEEE: db $3E
#_11EEEF: db $E0, $21 ; EXT Direct Copy
#_11EEF1: db $08, $08, $8E, $60, $1F, $31, $61, $C1
#_11EEF9: db $C1, $F7, $FC, $FC, $1C, $FD, $01, $13
#_11EF01: db $03, $DF, $C0, $EF, $E1, $F0, $F1, $FC
#_11EF09: db $79, $78, $03, $02, $EC, $20, $10, $0E
#_11EF11: db $02, $86
#_11EF13: db $8A ; Repeat Fill
#_11EF14: db $B0, $01 ; Repeat Fill bytes
#_11EF16: db $22 ; Byte Fill
#_11EF17: db $3E
#_11EF18: db $F0, $21 ; EXT Repeat Fill
#_11EF1A: db $BE, $01 ; Repeat Fill bytes
#_11EF1C: db $E0, $53 ; EXT Direct Copy
#_11EF1E: db $00, $E3, $03, $F3, $C3, $3B, $23, $1B
#_11EF26: db $10, $8C, $88, $C7, $C8, $E7, $E7, $E0
#_11EF2E: db $1C, $0C, $04, $C4, $63, $30, $10, $18
#_11EF36: db $11, $12, $01, $C6, $C3, $CC, $04, $18
#_11EF3E: db $08, $31, $11, $E1, $21, $C5, $C4, $24
#_11EF46: db $EC, $38, $30, $E3, $C6, $0E, $1A, $1B
#_11EF4E: db $DF, $3C, $F9, $76, $FD, $32, $CD, $32
#_11EF56: db $A1, $5E, $A7, $58, $8F, $70, $AF, $50
#_11EF5E: db $BD, $76, $32, $32, $5E, $59, $73, $57
#_11EF66: db $FF, $00, $BD, $42, $1B, $E4, $CF, $30
#_11EF6E: db $E7, $18, $F3, $0C
#_11EF72: db $84 ; Repeat Fill
#_11EF73: db $E2, $00 ; Repeat Fill bytes
#_11EF75: db $E0, $28 ; EXT Direct Copy
#_11EF77: db $FE, $FD, $3B, $9F, $CF, $EB, $E7, $07
#_11EF7F: db $C7, $27, $67, $97, $B7, $C8, $D8, $C5
#_11EF87: db $CD, $F2, $F7, $B8, $BB, $FC, $FD, $38
#_11EF8F: db $98, $48, $27, $32, $08, $44, $02, $90
#_11EF97: db $99, $A2, $B2, $4F, $6F, $8F, $CF, $0F
#_11EF9F: db $8F
#_11EFA0: db $23 ; Byte Fill
#_11EFA1: db $79
#_11EFA2: db $E0, $39 ; EXT Direct Copy
#_11EFA4: db $3F, $BF, $66, $4D, $90, $30, $70, $86
#_11EFAC: db $86, $40, $BE, $3E, $88, $48, $C0, $33
#_11EFB4: db $22, $1A, $13, $8B, $80, $C8, $C0, $EF
#_11EFBC: db $E7, $E0, $41, $37, $0C, $C5, $64, $37
#_11EFC4: db $10, $18, $D0, $9D, $58, $1B, $50, $16
#_11EFCC: db $60, $8C, $38, $46, $34, $43, $60, $83
#_11EFD4: db $C4, $25, $22, $A4, $A9, $13, $81, $88
#_11EFDC: db $1C, $1A
#_11EFDE: db $F0, $2F ; EXT Repeat Fill
#_11EFE0: db $A0, $02 ; Repeat Fill bytes
#_11EFE2: db $06 ; Direct Copy
#_11EFE3: db $7F, $80, $E0, $60, $CF, $40, $9B
#_11EFEA: db $48 ; Word Fill
#_11EFEB: db $08, $9C ; Word Fill
#_11EFED: db $02 ; Direct Copy
#_11EFEE: db $00, $1F, $30
#_11EFF1: db $24 ; Byte Fill
#_11EFF2: db $67
#_11EFF3: db $02 ; Direct Copy
#_11EFF4: db $FB, $26, $E5
#_11EFF7: db $43 ; Word Fill
#_11EFF8: db $00, $FD ; Word Fill
#_11EFFA: db $02 ; Direct Copy
#_11EFFB: db $3C, $E1, $00
#_11EFFE: db $43 ; Word Fill
#_11EFFF: db $81, $7E ; Word Fill
#_11F001: db $06 ; Direct Copy
#_11F002: db $FF, $00, $58, $5A, $42, $42, $7E
#_11F009: db $22 ; Byte Fill
#_11F00A: db $00
#_11F00B: db $05 ; Direct Copy
#_11F00C: db $80, $7F, $00, $80, $60, $80
#_11F012: db $43 ; Word Fill
#_11F013: db $BF, $3F ; Word Fill
#_11F015: db $0A ; Direct Copy
#_11F016: db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
#_11F01E: db $7F, $40, $40
#_11F021: db $22 ; Byte Fill
#_11F022: db $00
#_11F023: db $03 ; Direct Copy
#_11F024: db $B5, $42, $E7, $24
#_11F028: db $4A ; Word Fill
#_11F029: db $A5, $66 ; Word Fill
#_11F02B: db $00 ; Direct Copy
#_11F02C: db $7E
#_11F02D: db $26 ; Byte Fill
#_11F02E: db $18
#_11F02F: db $09 ; Direct Copy
#_11F030: db $00, $9C, $7F, $80, $7F, $C0, $3F, $FF
#_11F038: db $40, $B3
#_11F03A: db $83 ; Repeat Fill
#_11F03B: db $63, $03 ; Repeat Fill bytes
#_11F03D: db $02 ; Direct Copy
#_11F03E: db $00, $7F, $80
#_11F041: db $27 ; Byte Fill
#_11F042: db $00
#_11F043: db $09 ; Direct Copy
#_11F044: db $01, $FE, $03, $FC, $FF, $00, $9F, $FE
#_11F04C: db $01, $FE
#_11F04E: db $44 ; Word Fill
#_11F04F: db $FF, $00 ; Word Fill
#_11F051: db $28 ; Byte Fill
#_11F052: db $00
#_11F053: db $07 ; Direct Copy
#_11F054: db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
#_11F05C: db $43 ; Word Fill
#_11F05D: db $B2, $56 ; Word Fill
#_11F05F: db $07 ; Direct Copy
#_11F060: db $B4, $46, $B0, $5A, $00, $00, $13, $51
#_11F068: db $22 ; Byte Fill
#_11F069: db $49
#_11F06A: db $00 ; Direct Copy
#_11F06B: db $45
#_11F06C: db $44 ; Word Fill
#_11F06D: db $FF, $00 ; Word Fill
#_11F06F: db $1F ; Direct Copy
#_11F070: db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
#_11F078: db $24, $F0, $30, $00, $7F, $40, $4F, $5E
#_11F080: db $53, $5B, $4F, $02, $06, $05, $0C, $07
#_11F088: db $10, $03, $24, $19, $42, $3C, $81, $7E
#_11F090: db $43 ; Word Fill
#_11F091: db $00, $FD ; Word Fill
#_11F093: db $00 ; Direct Copy
#_11F094: db $FB
#_11F095: db $25 ; Byte Fill
#_11F096: db $FF
#_11F097: db $E0, $2F ; EXT Direct Copy
#_11F099: db $20, $AF, $3C, $BF, $1E, $FF, $07, $BF
#_11F0A1: db $22, $BF, $24, $BF, $00, $87, $07, $F8
#_11F0A9: db $5F, $43, $61, $78, $5D, $5B, $7F, $07
#_11F0B1: db $C4, $DD, $70, $FD, $F8, $FF, $18, $FF
#_11F0B9: db $0C, $FD, $C0, $FF, $01, $0E, $07, $F8
#_11F0C1: db $3A, $8E, $06, $E6, $F2, $3E, $FF, $07
#_11F0C9: db $97 ; Repeat Fill
#_11F0CA: db $10, $02 ; Repeat Fill bytes
#_11F0CC: db $E0, $3B ; EXT Direct Copy
#_11F0CE: db $FC, $FE, $78, $FC, $31, $79, $07, $37
#_11F0D6: db $CD, $CF, $C7, $EF, $C1, $E7, $C0, $E1
#_11F0DE: db $01, $03, $86, $C8, $30, $10, $18, $1E
#_11F0E6: db $F4, $F6, $7C, $7E, $98, $BC, $C1, $D9
#_11F0EE: db $E3, $E3, $F7, $F7, $B6, $B7, $E7, $F7
#_11F0F6: db $09, $81, $43, $26, $1C, $08, $48, $08
#_11F0FE: db $60, $71, $10, $99, $80, $C1, $80, $9F
#_11F106: db $00, $20, $00, $4E
#_11F10A: db $83 ; Repeat Fill
#_11F10B: db $B8, $01 ; Repeat Fill bytes
#_11F10D: db $E0, $30 ; EXT Direct Copy
#_11F10F: db $8E, $66, $3E, $60, $DF, $B1, $61, $C1
#_11F117: db $04, $0C, $4C, $7D, $01, $03, $03, $E7
#_11F11F: db $03, $13, $00, $D8, $C0, $EF, $E0, $F1
#_11F127: db $F3, $82, $FC, $18, $EC, $27, $10, $0E
#_11F12F: db $9B, $08, $9F, $0F, $99, $0F, $8F, $10
#_11F137: db $C0, $40, $FF, $60, $BF, $70, $9C, $6C
#_11F13F: db $67
#_11F140: db $22 ; Byte Fill
#_11F141: db $60
#_11F142: db $03 ; Direct Copy
#_11F143: db $3F, $1F, $00, $03
#_11F147: db $8C ; Repeat Fill
#_11F148: db $80, $04 ; Repeat Fill bytes
#_11F14A: db $03 ; Direct Copy
#_11F14B: db $7F, $9C, $7F, $67
#_11F14F: db $22 ; Byte Fill
#_11F150: db $60
#_11F151: db $04 ; Direct Copy
#_11F152: db $3F, $1F, $00, $00, $9F
#_11F157: db $26 ; Byte Fill
#_11F158: db $01
#_11F159: db $01 ; Direct Copy
#_11F15A: db $33, $33
#_11F15C: db $43 ; Word Fill
#_11F15D: db $FE, $FF ; Word Fill
#_11F15F: db $01 ; Direct Copy
#_11F160: db $CE, $FF
#_11F162: db $23 ; Byte Fill
#_11F163: db $FE
#_11F164: db $00 ; Direct Copy
#_11F165: db $CC
#_11F166: db $22 ; Byte Fill
#_11F167: db $00
#_11F168: db $05 ; Direct Copy
#_11F169: db $B1, $50, $D9, $38, $9B, $78
#_11F16F: db $43 ; Word Fill
#_11F170: db $93, $70 ; Word Fill
#_11F172: db $13 ; Direct Copy
#_11F173: db $99, $78, $9E, $7E, $81, $78, $0F, $07
#_11F17B: db $07, $0F, $0F, $07, $01, $07, $FF, $00
#_11F183: db $00, $FF, $FE, $FF
#_11F187: db $23 ; Byte Fill
#_11F188: db $01
#_11F189: db $00 ; Direct Copy
#_11F18A: db $F3
#_11F18B: db $44 ; Word Fill
#_11F18C: db $01, $FF ; Word Fill
#_11F18E: db $22 ; Byte Fill
#_11F18F: db $00
#_11F190: db $24 ; Byte Fill
#_11F191: db $FE
#_11F192: db $E0, $54 ; EXT Direct Copy
#_11F194: db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
#_11F19C: db $0E, $F3, $1E, $E3, $3F, $C9, $77, $9C
#_11F1A4: db $F0, $E0, $C0, $80, $01, $01, $00, $08
#_11F1AC: db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
#_11F1B4: db $B8, $77, $BF, $38, $80, $1F, $FF, $00
#_11F1BC: db $48, $45, $40, $60, $70, $78, $7F, $00
#_11F1C4: db $E0, $20, $E6, $26, $F6, $36, $FF, $00
#_11F1CC: db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
#_11F1D4: db $5F, $59, $49, $7F, $00, $00, $40, $3F
#_11F1DC: db $E3, $18, $8C, $73, $18, $E7, $28, $D7
#_11F1E4: db $47, $BB, $9D, $7F, $7E
#_11F1E9: db $2A ; Byte Fill
#_11F1EA: db $FF
#_11F1EB: db $0B ; Direct Copy
#_11F1EC: db $03, $FC, $00, $83, $25, $A7, $3E, $BF
#_11F1F4: db $3C, $BF, $3D, $BF
#_11F1F8: db $43 ; Word Fill
#_11F1F9: db $1F, $9F ; Word Fill
#_11F1FB: db $1F ; Direct Copy
#_11F1FC: db $03, $7F, $5A, $41, $43, $42, $60, $60
#_11F204: db $07, $F8, $01, $C2, $0D, $7E, $01, $FE
#_11F20C: db $FD, $FE, $9D, $FC, $2C, $FD, $44, $FD
#_11F214: db $07, $FF, $F3, $FF, $03, $63, $D2, $BA
#_11F21C: db $97 ; Repeat Fill
#_11F21D: db $28, $02 ; Repeat Fill bytes
#_11F21F: db $E0, $2F ; EXT Direct Copy
#_11F221: db $9E, $DE, $3F, $BF, $75, $7D, $3F, $7F
#_11F229: db $07, $3F, $00, $07, $78, $78, $7C, $7C
#_11F231: db $21, $40, $82, $80, $C0, $F8, $87, $83
#_11F239: db $63, $F7, $01, $63, $8C, $8D, $9E, $DE
#_11F241: db $3B, $BF, $7E, $7F, $EE, $EF, $FE, $FF
#_11F249: db $08, $9C, $72, $21, $40, $80, $10, $00
#_11F251: db $83 ; Repeat Fill
#_11F252: db $BC, $01 ; Repeat Fill bytes
#_11F254: db $E0, $2B ; EXT Direct Copy
#_11F256: db $00, $E3, $03, $33, $03, $9B, $83, $CB
#_11F25E: db $C0, $EC, $E0, $E7, $C1, $F7, $1C, $CC
#_11F266: db $64, $34, $13, $18, $F0, $FD, $78, $79
#_11F26E: db $10, $13, $00, $C4, $C0, $C9, $01, $11
#_11F276: db $01, $25, $04, $E4, $02, $86, $EC, $3B
#_11F27E: db $36, $EE, $DA, $1B
#_11F282: db $FF ; End of GFX 0C

;===================================================================================================

GFX_0D:
#_11F283: db $0F ; Direct Copy
#_11F284: db $13, $FE, $06, $FD, $2C, $FB, $18, $F7
#_11F28C: db $38, $E7, $6C, $DB, $C6, $BD, $83, $7E
#_11F294: db $28 ; Byte Fill
#_11F295: db $00
#_11F296: db $0E ; Direct Copy
#_11F297: db $E3, $00, $ED, $00, $DE, $00, $3E, $00
#_11F29F: db $7C, $00, $7B, $00, $B7, $00, $C7
#_11F2A6: db $27 ; Byte Fill
#_11F2A7: db $00
#_11F2A8: db $E0, $42 ; EXT Direct Copy
#_11F2AA: db $01, $FC, $23, $F9, $07, $F3, $8F, $E7
#_11F2B2: db $17, $CF, $27, $9F, $43, $3F, $81, $7E
#_11F2BA: db $02, $04, $08, $10, $20, $40, $80, $01
#_11F2C2: db $FD, $FC, $FB, $F9, $D7, $D3, $77, $6F
#_11F2CA: db $E0, $D8, $DA, $BC, $ED, $2E, $FE, $7D
#_11F2D2: db $02, $04, $28, $90, $27, $43, $91, $02
#_11F2DA: db $C1, $7C, $63, $B9, $37, $D3, $9B, $67
#_11F2E2: db $C9, $37, $C4, $3B, $FE, $01, $FF, $00
#_11F2EA: db $02, $04, $08
#_11F2ED: db $24 ; Byte Fill
#_11F2EE: db $00
#_11F2EF: db $17 ; Direct Copy
#_11F2F0: db $F5, $F3, $CB, $C7, $14, $0C, $24, $18
#_11F2F8: db $5A, $3C, $E6, $67, $C1, $C1, $03, $01
#_11F300: db $0C, $38, $F3, $E7, $C3, $99, $3E, $FE
#_11F308: db $4F ; Word Fill
#_11F309: db $FF, $00 ; Word Fill
#_11F30B: db $28 ; Byte Fill
#_11F30C: db $FF
#_11F30D: db $04 ; Direct Copy
#_11F30E: db $00, $C0, $3F, $9F, $60
#_11F313: db $49 ; Word Fill
#_11F314: db $BF, $40 ; Word Fill
#_11F316: db $28 ; Byte Fill
#_11F317: db $FF
#_11F318: db $0A ; Direct Copy
#_11F319: db $00, $C0, $3F, $9C, $63, $B8, $47, $B0
#_11F321: db $4F, $A0, $5F
#_11F324: db $43 ; Word Fill
#_11F325: db $80, $7F ; Word Fill
#_11F327: db $07 ; Direct Copy
#_11F328: db $FF, $FF, $FC, $F8, $F0, $E0, $C0, $C0
#_11F330: db $37 ; Byte Fill
#_11F331: db $FF
#_11F332: db $04 ; Direct Copy
#_11F333: db $00, $FF, $3F, $FF, $60
#_11F338: db $4A ; Word Fill
#_11F339: db $FF, $40 ; Word Fill
#_11F33B: db $28 ; Byte Fill
#_11F33C: db $00
#_11F33D: db $03 ; Direct Copy
#_11F33E: db $FF, $FC, $FF, $06
#_11F342: db $4A ; Word Fill
#_11F343: db $FF, $02 ; Word Fill
#_11F345: db $27 ; Byte Fill
#_11F346: db $00
#_11F347: db $0F ; Direct Copy
#_11F348: db $8F, $F0, $98, $E7, $B7, $CE, $D5, $EE
#_11F350: db $E9, $F6, $0E, $11, $DE, $E1, $23, $DC
#_11F358: db $24 ; Byte Fill
#_11F359: db $00
#_11F35A: db $0C ; Direct Copy
#_11F35B: db $E0, $00, $00, $F5, $0D, $CB, $37, $95
#_11F363: db $5B, $6B, $ED, $46, $75
#_11F368: db $43 ; Word Fill
#_11F369: db $C2, $F9 ; Word Fill
#_11F36B: db $09 ; Direct Copy
#_11F36C: db $62, $E1, $02, $00, $20, $10, $88, $04
#_11F374: db $04, $1C
#_11F376: db $8F ; Repeat Fill
#_11F377: db $20, $01 ; Repeat Fill bytes
#_11F379: db $24 ; Byte Fill
#_11F37A: db $00
#_11F37B: db $8C ; Repeat Fill
#_11F37C: db $35, $01 ; Repeat Fill bytes
#_11F37E: db $43 ; Word Fill
#_11F37F: db $C2, $F9 ; Word Fill
#_11F381: db $89 ; Repeat Fill
#_11F382: db $46, $01 ; Repeat Fill bytes
#_11F384: db $10 ; Direct Copy
#_11F385: db $7E, $81, $C3, $7E, $A5, $7E, $A3, $7E
#_11F38D: db $89, $7E, $A1, $7E, $C3, $7E, $7E, $81
#_11F395: db $00
#_11F396: db $25 ; Byte Fill
#_11F397: db $7E
#_11F398: db $10 ; Direct Copy
#_11F399: db $00, $01, $FC, $42, $F9, $37, $F3, $6F
#_11F3A1: db $E7, $DB, $C3, $BF, $99, $7D, $3E, $EE
#_11F3A9: db $6F
#_11F3AA: db $83 ; Repeat Fill
#_11F3AB: db $40, $00 ; Repeat Fill bytes
#_11F3AD: db $0E ; Direct Copy
#_11F3AE: db $24, $42, $81, $10, $FC, $FF, $7D, $7F
#_11F3B6: db $5A, $5E, $04, $3C, $20, $E1, $5D
#_11F3BD: db $44 ; Word Fill
#_11F3BE: db $DF, $57 ; Word Fill
#_11F3C0: db $04 ; Direct Copy
#_11F3C1: db $00, $80, $A1, $C3, $1E
#_11F3C6: db $22 ; Byte Fill
#_11F3C7: db $20
#_11F3C8: db $17 ; Direct Copy
#_11F3C9: db $03, $0F, $63, $67, $91, $F3, $60, $F3
#_11F3D1: db $E0, $E3, $81, $86, $21, $3E, $83, $FC
#_11F3D9: db $F0, $98, $0C, $0C, $1C, $78, $C0, $00
#_11F3E1: db $8A ; Repeat Fill
#_11F3E2: db $B0, $01 ; Repeat Fill bytes
#_11F3E4: db $44 ; Word Fill
#_11F3E5: db $DF, $57 ; Word Fill
#_11F3E7: db $84 ; Repeat Fill
#_11F3E8: db $C0, $01 ; Repeat Fill bytes
#_11F3EA: db $22 ; Byte Fill
#_11F3EB: db $20
#_11F3EC: db $97 ; Repeat Fill
#_11F3ED: db $C8, $01 ; Repeat Fill bytes
#_11F3EF: db $E0, $3B ; EXT Direct Copy
#_11F3F1: db $0B, $CF, $21, $E1, $92, $73, $CC, $BF
#_11F3F9: db $20, $5F, $11, $2E, $8F, $90, $A8, $EF
#_11F401: db $30, $1E, $0C, $00, $80, $C0, $60, $10
#_11F409: db $0E, $F1, $18, $E8, $37, $D7, $68, $AF
#_11F411: db $D3, $5F, $DB, $5F, $4F, $CF, $63, $E3
#_11F419: db $00, $07, $08, $10, $20, $20, $30, $1C
#_11F421: db $FF, $00, $FB, $7C, $F7, $78, $EF, $70
#_11F429: db $DF, $60, $BF, $40
#_11F42D: db $43 ; Word Fill
#_11F42E: db $FF, $00 ; Word Fill
#_11F430: db $1E ; Direct Copy
#_11F431: db $00, $7C, $79, $73, $67, $4F, $1F, $3F
#_11F439: db $01, $FE, $3C, $FF, $67, $F8, $4F, $F0
#_11F441: db $5F, $E0, $7F, $C0, $3F, $C0, $BF, $40
#_11F449: db $01, $03, $07, $0F, $1F, $3F, $7F
#_11F450: db $4A ; Word Fill
#_11F451: db $FF, $40 ; Word Fill
#_11F453: db $05 ; Direct Copy
#_11F454: db $60, $FF, $3F, $FF, $00, $FF
#_11F45A: db $27 ; Byte Fill
#_11F45B: db $00
#_11F45C: db $49 ; Word Fill
#_11F45D: db $02, $FF ; Word Fill
#_11F45F: db $05 ; Direct Copy
#_11F460: db $06, $FF, $FC, $FF, $00, $FF
#_11F466: db $27 ; Byte Fill
#_11F467: db $00
#_11F468: db $E0, $2F ; EXT Direct Copy
#_11F46A: db $D9, $3A, $84, $5D, $92, $5E, $CE, $AE
#_11F472: db $31, $51, $26, $1F, $93, $8C, $AC, $E3
#_11F47A: db $04, $22, $21, $11, $8E, $C0, $60, $10
#_11F482: db $AF, $70, $F1, $0E, $D2, $33, $AD, $6D
#_11F48A: db $92, $5E, $9B, $5F, $07, $C7, $13, $F3
#_11F492: db $00, $00, $0C, $12, $21, $20, $38, $0C
#_11F49A: db $F0, $2F ; EXT Repeat Fill
#_11F49C: db $A0, $02 ; Repeat Fill bytes
#_11F49E: db $19 ; Direct Copy
#_11F49F: db $FF, $00, $C3, $40, $B8, $00, $DF, $00
#_11F4A7: db $EF, $21, $F7, $32, $F6, $32, $FF, $31
#_11F4AF: db $00, $3F, $7F, $7F, $5E, $4D, $4D, $4E
#_11F4B7: db $FF, $18
#_11F4B9: db $44 ; Word Fill
#_11F4BA: db $BD, $24 ; Word Fill
#_11F4BC: db $0D ; Direct Copy
#_11F4BD: db $18, $C3, $00, $FF, $7E, $81, $7E, $FF
#_11F4C5: db $00, $66, $5A, $5A, $66, $7E
#_11F4CB: db $22 ; Byte Fill
#_11F4CC: db $00
#_11F4CD: db $02 ; Direct Copy
#_11F4CE: db $FF, $00, $AA
#_11F4D1: db $44 ; Word Fill
#_11F4D2: db $88, $FF ; Word Fill
#_11F4D4: db $08 ; Direct Copy
#_11F4D5: db $AA, $88, $55, $DD, $00, $FF, $FF, $00
#_11F4DD: db $00
#_11F4DE: db $23 ; Byte Fill
#_11F4DF: db $77
#_11F4E0: db $0A ; Direct Copy
#_11F4E1: db $22, $00, $00, $BD, $42, $BD, $00, $DB
#_11F4E9: db $42, $C3, $7E
#_11F4EC: db $86 ; Repeat Fill
#_11F4ED: db $48, $03 ; Repeat Fill bytes
#_11F4EF: db $43 ; Word Fill
#_11F4F0: db $7E, $3C ; Word Fill
#_11F4F2: db $00 ; Direct Copy
#_11F4F3: db $00
#_11F4F4: db $83 ; Repeat Fill
#_11F4F5: db $58, $03 ; Repeat Fill bytes
#_11F4F7: db $0A ; Direct Copy
#_11F4F8: db $86, $7E, $FB, $47, $BD, $7B, $CE, $7D
#_11F500: db $F7, $7E, $BB
#_11F503: db $83 ; Repeat Fill
#_11F504: db $CD, $00 ; Repeat Fill bytes
#_11F506: db $01 ; Direct Copy
#_11F507: db $00, $01
#_11F509: db $26 ; Byte Fill
#_11F50A: db $00
#_11F50B: db $0E ; Direct Copy
#_11F50C: db $DD, $BE, $E3, $DD, $7F, $E3, $BE, $FF
#_11F514: db $41, $FF, $3E, $FF, $81, $7E, $FF
#_11F51B: db $28 ; Byte Fill
#_11F51C: db $00
#_11F51D: db $07 ; Direct Copy
#_11F51E: db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
#_11F526: db $43 ; Word Fill
#_11F527: db $B2, $56 ; Word Fill
#_11F529: db $07 ; Direct Copy
#_11F52A: db $B4, $46, $B0, $5A, $00, $00, $13, $51
#_11F532: db $22 ; Byte Fill
#_11F533: db $49
#_11F534: db $00 ; Direct Copy
#_11F535: db $45
#_11F536: db $44 ; Word Fill
#_11F537: db $FF, $00 ; Word Fill
#_11F539: db $1F ; Direct Copy
#_11F53A: db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
#_11F542: db $24, $F0, $30, $00, $7F, $40, $4F, $5E
#_11F54A: db $53, $5B, $4F, $02, $06, $05, $0C, $07
#_11F552: db $10, $03, $24, $19, $42, $3C, $81, $7E
#_11F55A: db $43 ; Word Fill
#_11F55B: db $00, $FD ; Word Fill
#_11F55D: db $00 ; Direct Copy
#_11F55E: db $FB
#_11F55F: db $25 ; Byte Fill
#_11F560: db $FF
#_11F561: db $06 ; Direct Copy
#_11F562: db $1F, $9F, $01, $FE, $00, $BF, $2F
#_11F569: db $44 ; Word Fill
#_11F56A: db $BF, $27 ; Word Fill
#_11F56C: db $0B ; Direct Copy
#_11F56D: db $46, $DF, $19, $E6, $60, $7F, $7F, $50
#_11F575: db $58, $58, $39, $19
#_11F579: db $43 ; Word Fill
#_11F57A: db $F4, $FD ; Word Fill
#_11F57C: db $13 ; Direct Copy
#_11F57D: db $74, $FD, $30, $FF, $95, $FE, $C7, $FE
#_11F585: db $23, $FE, $2F, $D0, $0A, $0A, $8A, $CE
#_11F58D: db $6B, $39, $DD, $2F
#_11F591: db $97 ; Repeat Fill
#_11F592: db $10, $02 ; Repeat Fill bytes
#_11F594: db $E0, $23 ; EXT Direct Copy
#_11F596: db $90, $9F, $91, $9F, $E2, $FE, $C4, $FC
#_11F59E: db $89, $F9, $33, $F3, $67, $E7, $4F, $CF
#_11F5A6: db $60, $60, $01, $03, $06, $0C, $18, $30
#_11F5AE: db $0F, $FF, $E7, $FF, $13, $1F, $09, $0F
#_11F5B6: db $C4, $C7, $E2, $E3
#_11F5BA: db $43 ; Word Fill
#_11F5BB: db $F2, $F3 ; Word Fill
#_11F5BD: db $E0, $4E ; EXT Direct Copy
#_11F5BF: db $00, $00, $E0, $F0, $38, $1C, $0C, $0C
#_11F5C7: db $92, $F3, $E4, $FD, $F4, $FD, $E8, $FB
#_11F5CF: db $E5, $E7, $1A, $1E, $E1, $FD, $07, $FF
#_11F5D7: db $0C, $02, $02, $04, $18, $E1, $02, $00
#_11F5DF: db $05, $FD, $7B, $FF, $8D, $8F, $75, $77
#_11F5E7: db $49, $7B, $B0, $FB, $70, $FB, $FC, $FF
#_11F5EF: db $02, $00, $70, $88, $84, $04, $04, $00
#_11F5F7: db $EF, $20, $FC, $20, $DB, $03, $F7, $07
#_11F5FF: db $E8, $08, $F0, $30, $FF, $00, $9F, $7F
#_11F607: db $5F, $5F, $7C, $78, $77, $4F, $7F
#_11F60E: db $8C ; Repeat Fill
#_11F60F: db $7F, $04 ; Repeat Fill bytes
#_11F611: db $03 ; Direct Copy
#_11F612: db $FE, $40, $B9, $78
#_11F616: db $85 ; Repeat Fill
#_11F617: db $90, $04 ; Repeat Fill bytes
#_11F619: db $08 ; Direct Copy
#_11F61A: db $3F, $07, $7F, $00, $FF, $80, $BE, $80
#_11F622: db $9C
#_11F623: db $22 ; Byte Fill
#_11F624: db $80
#_11F625: db $06 ; Direct Copy
#_11F626: db $C1, $C1, $62, $E3, $BE, $7F, $FF
#_11F62D: db $23 ; Byte Fill
#_11F62E: db $7F
#_11F62F: db $06 ; Direct Copy
#_11F630: db $3E, $1C, $00, $F7, $70, $EF, $60
#_11F637: db $47 ; Word Fill
#_11F638: db $DF, $40 ; Word Fill
#_11F63A: db $05 ; Direct Copy
#_11F63B: db $CF, $40, $F8, $78, $0F, $1F
#_11F641: db $24 ; Byte Fill
#_11F642: db $3F
#_11F643: db $08 ; Direct Copy
#_11F644: db $07, $FF, $00, $7F, $FF, $C1, $C1, $BE
#_11F64C: db $80
#_11F64D: db $46 ; Word Fill
#_11F64E: db $7F, $00 ; Word Fill
#_11F650: db $22 ; Byte Fill
#_11F651: db $00
#_11F652: db $01 ; Direct Copy
#_11F653: db $3E, $7F
#_11F655: db $23 ; Byte Fill
#_11F656: db $FF
#_11F657: db $E0, $54 ; EXT Direct Copy
#_11F659: db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
#_11F661: db $0D, $F3, $19, $E7, $31, $CF, $7F, $9F
#_11F669: db $F0, $E0, $C0, $80, $02, $06, $0E, $00
#_11F671: db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
#_11F679: db $B8, $77, $BF, $38, $80, $1F, $FF, $00
#_11F681: db $48, $45, $40, $60, $70, $78, $7F, $00
#_11F689: db $E0, $20, $E6, $26, $F6, $36, $FF, $00
#_11F691: db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
#_11F699: db $5F, $59, $49, $7F, $00, $00, $40, $3F
#_11F6A1: db $E3, $18, $8C, $73, $18, $E7, $28, $D7
#_11F6A9: db $47, $BB, $9D, $7F, $7E
#_11F6AE: db $2A ; Byte Fill
#_11F6AF: db $FF
#_11F6B0: db $E0, $2F ; EXT Direct Copy
#_11F6B2: db $19, $E6, $02, $BF, $31, $BF, $38, $BF
#_11F6BA: db $18, $9F, $3B, $BF, $3F, $BF, $1F, $9F
#_11F6C2: db $19, $7D, $4E, $47, $67, $44, $40, $60
#_11F6CA: db $27, $D8, $DD, $FE, $3D, $FE, $F9, $FE
#_11F6D2: db $01, $FE, $8D, $FE, $DD, $FC, $FC, $FD
#_11F6DA: db $27, $23, $C3, $07, $FF, $73, $23, $02
#_11F6E2: db $97 ; Repeat Fill
#_11F6E3: db $28, $02 ; Repeat Fill bytes
#_11F6E5: db $E0, $41 ; EXT Direct Copy
#_11F6E7: db $4F, $CF, $67, $E7, $33, $F3, $1B, $FB
#_11F6EF: db $8F, $FF, $C7, $FF, $60, $7F, $A0, $BF
#_11F6F7: db $30, $18, $0C, $04, $00, $00, $80, $40
#_11F6FF: db $F6, $F7, $EC, $EF, $D8, $DF, $F3, $FF
#_11F707: db $E7, $FF, $C8, $F8, $13, $F3, $37, $F7
#_11F70F: db $08, $10, $20, $00, $00, $07, $0C, $08
#_11F717: db $4F, $CF, $4F, $DF, $52, $DE, $AE, $EE
#_11F71F: db $31, $71, $1F, $3F, $80, $9F, $A8, $EF
#_11F727: db $30, $20
#_11F729: db $85 ; Repeat Fill
#_11F72A: db $B2, $02 ; Repeat Fill bytes
#_11F72C: db $17 ; Direct Copy
#_11F72D: db $B0, $BF, $40, $78, $A7, $E7, $88, $CF
#_11F735: db $53, $DF, $1B, $9F, $47, $C7, $13, $F3
#_11F73D: db $40, $87, $18, $30, $20, $60, $38, $0C
#_11F745: db $FF ; End of GFX 0D

;===================================================================================================

GFX_0E:
#_11F746: db $E0, $21 ; EXT Direct Copy
#_11F748: db $93, $0C, $8E, $42, $E6, $4E, $D6, $66
#_11F750: db $E2, $3A, $65, $99, $3E, $C8, $77, $AC
#_11F758: db $60, $31, $11, $09, $05, $02, $01, $00
#_11F760: db $FF, $00, $DF, $7B, $BC, $77, $FC, $62
#_11F768: db $E0, $46
#_11F76A: db $43 ; Word Fill
#_11F76B: db $EE, $51 ; Word Fill
#_11F76D: db $19 ; Direct Copy
#_11F76E: db $FC, $52, $00, $03, $07, $03, $1F, $11
#_11F776: db $11, $13, $44, $C7, $7C, $FF, $83, $FE
#_11F77E: db $7D, $FE, $83, $7C, $FF, $39, $E4, $1B
#_11F786: db $F1, $0E
#_11F788: db $22 ; Byte Fill
#_11F789: db $FE
#_11F78A: db $24 ; Byte Fill
#_11F78B: db $00
#_11F78C: db $0F ; Direct Copy
#_11F78D: db $4F, $F0, $97, $F8, $97, $FC, $95, $FE
#_11F795: db $94, $FF, $96, $F9, $4C, $F3, $7D, $86
#_11F79D: db $26 ; Byte Fill
#_11F79E: db $C0
#_11F79F: db $10 ; Direct Copy
#_11F7A0: db $00, $00, $FF, $FF, $00, $FE, $6D, $DB
#_11F7A8: db $6A, $B5, $6D, $AA, $76, $B6, $6A, $DE
#_11F7B0: db $6A
#_11F7B1: db $22 ; Byte Fill
#_11F7B2: db $00
#_11F7B3: db $01 ; Direct Copy
#_11F7B4: db $04, $02
#_11F7B6: db $22 ; Byte Fill
#_11F7B7: db $01
#_11F7B8: db $1C ; Direct Copy
#_11F7B9: db $0F, $F0, $F3, $0F, $D0, $30, $4F, $CF
#_11F7C1: db $B0, $BF, $40, $7F, $80, $FF, $07, $F8
#_11F7C9: db $00, $00, $0F, $30, $40, $80, $00, $00
#_11F7D1: db $FF, $00, $80, $7F, $80
#_11F7D6: db $4A ; Word Fill
#_11F7D7: db $40, $9F ; Word Fill
#_11F7D9: db $02 ; Direct Copy
#_11F7DA: db $00, $7F, $7F
#_11F7DD: db $24 ; Byte Fill
#_11F7DE: db $60
#_11F7DF: db $00 ; Direct Copy
#_11F7E0: db $FF
#_11F7E1: db $83 ; Repeat Fill
#_11F7E2: db $8E, $00 ; Repeat Fill bytes
#_11F7E4: db $4A ; Word Fill
#_11F7E5: db $00, $FF ; Word Fill
#_11F7E7: db $02 ; Direct Copy
#_11F7E8: db $00, $FF, $FF
#_11F7EB: db $24 ; Byte Fill
#_11F7EC: db $00
#_11F7ED: db $12 ; Direct Copy
#_11F7EE: db $C2, $3F, $82, $7F, $F8, $79, $FB, $05
#_11F7F6: db $C7, $3D, $8F, $7D, $87, $75, $87, $85
#_11F7FE: db $00, $00, $06
#_11F801: db $22 ; Byte Fill
#_11F802: db $02
#_11F803: db $0C ; Direct Copy
#_11F804: db $0A, $7A, $3F, $C0, $5F, $BF, $BF, $73
#_11F80C: db $FF, $79, $8F, $0F, $9C
#_11F811: db $43 ; Word Fill
#_11F812: db $6C, $DF ; Word Fill
#_11F814: db $00 ; Direct Copy
#_11F815: db $64
#_11F816: db $23 ; Byte Fill
#_11F817: db $00
#_11F818: db $0F ; Direct Copy
#_11F819: db $70, $03, $00, $00, $1F, $E0, $18, $EC
#_11F821: db $3F, $C7, $F8, $0F, $F3, $5F, $A7, $7F
#_11F829: db $43 ; Word Fill
#_11F82A: db $A7, $3F ; Word Fill
#_11F82C: db $03 ; Direct Copy
#_11F82D: db $00, $0F, $0F, $1F
#_11F831: db $23 ; Byte Fill
#_11F832: db $7F
#_11F833: db $09 ; Direct Copy
#_11F834: db $FF, $00, $DF, $7F, $BF, $78, $FC, $73
#_11F83C: db $FB, $67
#_11F83E: db $45 ; Word Fill
#_11F83F: db $F7, $6F ; Word Fill
#_11F841: db $22 ; Byte Fill
#_11F842: db $00
#_11F843: db $00 ; Direct Copy
#_11F844: db $07
#_11F845: db $23 ; Byte Fill
#_11F846: db $0F
#_11F847: db $02 ; Direct Copy
#_11F848: db $FF, $FF, $80
#_11F84B: db $44 ; Word Fill
#_11F84C: db $FF, $BF ; Word Fill
#_11F84E: db $02 ; Direct Copy
#_11F84F: db $BB, $FF, $B7
#_11F852: db $43 ; Word Fill
#_11F853: db $FF, $BF ; Word Fill
#_11F855: db $2B ; Byte Fill
#_11F856: db $FF
#_11F857: db $09 ; Direct Copy
#_11F858: db $80, $C0, $BF, $FB, $BB, $FF, $BF, $EF
#_11F860: db $BF, $FD
#_11F862: db $43 ; Word Fill
#_11F863: db $BF, $FF ; Word Fill
#_11F865: db $02 ; Direct Copy
#_11F866: db $80, $80, $84
#_11F869: db $23 ; Byte Fill
#_11F86A: db $80
#_11F86B: db $84 ; Repeat Fill
#_11F86C: db $08, $01 ; Repeat Fill bytes
#_11F86E: db $06 ; Direct Copy
#_11F86F: db $7F, $FC, $7C, $FB, $7B, $F7, $77
#_11F876: db $43 ; Word Fill
#_11F877: db $FF, $7F ; Word Fill
#_11F879: db $22 ; Byte Fill
#_11F87A: db $00
#_11F87B: db $03 ; Direct Copy
#_11F87C: db $03, $04, $08, $00
#_11F880: db $43 ; Word Fill
#_11F881: db $00, $FF ; Word Fill
#_11F883: db $00 ; Direct Copy
#_11F884: db $20
#_11F885: db $48 ; Word Fill
#_11F886: db $FF, $00 ; Word Fill
#_11F888: db $12 ; Direct Copy
#_11F889: db $04, $FF, $00, $FF, $FF, $FB, $BF, $FF
#_11F891: db $FF, $DF, $FF, $D7, $4D, $9F, $21, $A2
#_11F899: db $41, $D5, $14
#_11F89C: db $43 ; Word Fill
#_11F89D: db $B6, $36 ; Word Fill
#_11F89F: db $E0, $34 ; EXT Direct Copy
#_11F8A1: db $D5, $55, $E3, $41, $20, $40, $1C, $2A
#_11F8A9: db $49, $49, $2A, $1C, $EB, $B2, $F5, $AC
#_11F8B1: db $6B, $96, $97, $78, $17, $9A, $69, $F6
#_11F8B9: db $CB, $32, $FD, $56, $04, $02, $00, $00
#_11F8C1: db $60, $00, $04, $00, $F7, $41, $FF, $49
#_11F8C9: db $FE, $2B, $FD, $5E, $DC, $63, $BF, $3F
#_11F8D1: db $C0, $40, $FF, $00, $08
#_11F8D6: db $23 ; Byte Fill
#_11F8D7: db $00
#_11F8D8: db $11 ; Direct Copy
#_11F8D9: db $40, $3F, $00, $F7, $58, $5F, $E2, $EF
#_11F8E1: db $1A, $F7, $12, $3F, $C2, $FD, $FC, $03
#_11F8E9: db $02, $FF
#_11F8EB: db $23 ; Byte Fill
#_11F8EC: db $00
#_11F8ED: db $05 ; Direct Copy
#_11F8EE: db $08, $00, $02, $FC, $00, $ED
#_11F8F4: db $48 ; Word Fill
#_11F8F5: db $59, $FD ; Word Fill
#_11F8F7: db $43 ; Word Fill
#_11F8F8: db $FE, $5A ; Word Fill
#_11F8FA: db $01 ; Direct Copy
#_11F8FB: db $F8, $54
#_11F8FD: db $24 ; Byte Fill
#_11F8FE: db $02
#_11F8FF: db $0A ; Direct Copy
#_11F900: db $01, $01, $03, $0F, $F0, $18, $E7, $33
#_11F908: db $CC, $27, $D8
#_11F90B: db $45 ; Word Fill
#_11F90C: db $2F, $D0 ; Word Fill
#_11F90E: db $01 ; Direct Copy
#_11F90F: db $AF, $D0
#_11F911: db $27 ; Byte Fill
#_11F912: db $00
#_11F913: db $4B ; Word Fill
#_11F914: db $9F, $40 ; Word Fill
#_11F916: db $04 ; Direct Copy
#_11F917: db $80, $5F, $80, $40, $60
#_11F91C: db $24 ; Byte Fill
#_11F91D: db $6F
#_11F91E: db $01 ; Direct Copy
#_11F91F: db $7F, $7F
#_11F921: db $4B ; Word Fill
#_11F922: db $FF, $00 ; Word Fill
#_11F924: db $01 ; Direct Copy
#_11F925: db $00, $FF
#_11F927: db $22 ; Byte Fill
#_11F928: db $00
#_11F929: db $26 ; Byte Fill
#_11F92A: db $FF
#_11F92B: db $01 ; Direct Copy
#_11F92C: db $1F, $F5
#_11F92E: db $43 ; Word Fill
#_11F92F: db $EE, $E4 ; Word Fill
#_11F931: db $01 ; Direct Copy
#_11F932: db $CE, $C4
#_11F934: db $43 ; Word Fill
#_11F935: db $EB, $C0 ; Word Fill
#_11F937: db $43 ; Word Fill
#_11F938: db $EF, $C0 ; Word Fill
#_11F93A: db $03 ; Direct Copy
#_11F93B: db $0A, $1B, $1B, $3B
#_11F93F: db $23 ; Byte Fill
#_11F940: db $3F
#_11F941: db $44 ; Word Fill
#_11F942: db $DF, $60 ; Word Fill
#_11F944: db $0A ; Direct Copy
#_11F945: db $66, $DF, $66, $DB, $46, $AD, $63, $C7
#_11F94D: db $38, $7F, $80
#_11F950: db $83 ; Repeat Fill
#_11F951: db $1A, $01 ; Repeat Fill bytes
#_11F953: db $13 ; Direct Copy
#_11F954: db $2F, $17, $03, $00, $A7, $5F, $F3, $5F
#_11F95C: db $F8, $4F, $FF, $03, $F8, $04, $3F, $C8
#_11F964: db $1F, $E8, $1F, $E0
#_11F968: db $22 ; Byte Fill
#_11F969: db $7F
#_11F96A: db $17 ; Direct Copy
#_11F96B: db $6F, $0F, $0C, $08, $00, $FB, $63, $FC
#_11F973: db $60, $FF, $70, $FF, $78, $BF, $7F, $DF
#_11F97B: db $7F, $E0, $7F, $FF, $00, $0F, $0F, $07
#_11F983: db $24 ; Byte Fill
#_11F984: db $00
#_11F985: db $13 ; Direct Copy
#_11F986: db $F1, $5E, $FD, $46, $C8, $77, $EE, $75
#_11F98E: db $F5, $7A, $BF, $7F, $C0, $7F, $FF, $00
#_11F996: db $1E, $06, $07, $05
#_11F99A: db $23 ; Byte Fill
#_11F99B: db $00
#_11F99C: db $08 ; Direct Copy
#_11F99D: db $FD, $BD, $F7, $BF, $FF, $BF, $FD, $BF
#_11F9A5: db $F7
#_11F9A6: db $83 ; Repeat Fill
#_11F9A7: db $2A, $01 ; Repeat Fill bytes
#_11F9A9: db $03 ; Direct Copy
#_11F9AA: db $80, $FF, $FF, $82
#_11F9AE: db $22 ; Byte Fill
#_11F9AF: db $80
#_11F9B0: db $0B ; Direct Copy
#_11F9B1: db $88, $80, $80, $FF, $FF, $7F, $F7, $7F
#_11F9B9: db $FB, $7F, $FC, $7F
#_11F9BD: db $86 ; Repeat Fill
#_11F9BE: db $90, $02 ; Repeat Fill bytes
#_11F9C0: db $28 ; Byte Fill
#_11F9C1: db $00
#_11F9C2: db $0F ; Direct Copy
#_11F9C3: db $FF, $00, $B1, $7F, $DA, $67, $F5, $4E
#_11F9CB: db $AA, $5D, $95, $7B, $AA, $77, $D5, $6E
#_11F9D3: db $27 ; Byte Fill
#_11F9D4: db $00
#_11F9D5: db $04 ; Direct Copy
#_11F9D6: db $FF, $00, $90, $6F, $90
#_11F9DB: db $43 ; Word Fill
#_11F9DC: db $69, $96 ; Word Fill
#_11F9DE: db $46 ; Word Fill
#_11F9DF: db $0F, $96 ; Word Fill
#_11F9E1: db $02 ; Direct Copy
#_11F9E2: db $00, $60, $66
#_11F9E5: db $24 ; Byte Fill
#_11F9E6: db $60
#_11F9E7: db $84 ; Repeat Fill
#_11F9E8: db $00, $03 ; Repeat Fill bytes
#_11F9EA: db $02 ; Direct Copy
#_11F9EB: db $6E, $91, $6E
#_11F9EE: db $47 ; Word Fill
#_11F9EF: db $97, $0F ; Word Fill
#_11F9F1: db $02 ; Direct Copy
#_11F9F2: db $00, $60, $61
#_11F9F5: db $24 ; Byte Fill
#_11F9F6: db $60
#_11F9F7: db $04 ; Direct Copy
#_11F9F8: db $FF, $00, $E0, $00, $90
#_11F9FD: db $4A ; Word Fill
#_11F9FE: db $00, $8F ; Word Fill
#_11FA00: db $00 ; Direct Copy
#_11FA01: db $00
#_11FA02: db $26 ; Byte Fill
#_11FA03: db $7F
#_11FA04: db $07 ; Direct Copy
#_11FA05: db $FF, $00, $07, $00, $0B, $02, $F7, $06
#_11FA0D: db $47 ; Word Fill
#_11FA0E: db $FF, $0E ; Word Fill
#_11FA10: db $03 ; Direct Copy
#_11FA11: db $00, $FE, $FC, $F8
#_11FA15: db $23 ; Byte Fill
#_11FA16: db $F0
#_11FA17: db $E0, $36 ; EXT Direct Copy
#_11FA19: db $FB, $4B, $F4, $57, $FB, $5C, $FF, $42
#_11FA21: db $EE, $5B, $EF, $5D, $FB, $4A, $D4, $6C
#_11FA29: db $04, $08, $00, $03, $03, $01, $04, $03
#_11FA31: db $57, $68, $BF, $B0, $4F, $CF, $90, $70
#_11FA39: db $E7, $1F, $FF, $80, $FF, $70, $0E, $0B
#_11FA41: db $80, $40, $30, $0F, $80, $80, $03, $F3
#_11FA49: db $80, $7F, $FF, $00, $C8, $37, $CF
#_11FA50: db $43 ; Word Fill
#_11FA51: db $30, $C1 ; Word Fill
#_11FA53: db $0B ; Direct Copy
#_11FA54: db $3E, $C0, $3F, $FF, $00, $7F, $00, $30
#_11FA5C: db $30, $3E, $3E, $3F
#_11FA60: db $84 ; Repeat Fill
#_11FA61: db $5F, $00 ; Repeat Fill bytes
#_11FA63: db $43 ; Word Fill
#_11FA64: db $09, $F6 ; Word Fill
#_11FA66: db $01 ; Direct Copy
#_11FA67: db $08, $F7
#_11FA69: db $83 ; Repeat Fill
#_11FA6A: db $A8, $00 ; Repeat Fill bytes
#_11FA6C: db $43 ; Word Fill
#_11FA6D: db $FF, $00 ; Word Fill
#_11FA6F: db $02 ; Direct Copy
#_11FA70: db $06, $06, $07
#_11FA73: db $44 ; Word Fill
#_11FA74: db $00, $FF ; Word Fill
#_11FA76: db $19 ; Direct Copy
#_11FA77: db $DC, $7B, $BB, $74, $FB, $64, $FB, $44
#_11FA7F: db $FC, $53, $FF, $50, $FF, $58, $00, $03
#_11FA87: db $06, $04, $16, $17, $1B, $1C, $FF, $00
#_11FA8F: db $C0, $40
#_11FA91: db $45 ; Word Fill
#_11FA92: db $DF, $5F ; Word Fill
#_11FA94: db $07 ; Direct Copy
#_11FA95: db $C0, $40, $FF, $7F, $FF, $40, $00, $3F
#_11FA9D: db $22 ; Byte Fill
#_11FA9E: db $20
#_11FA9F: db $01 ; Direct Copy
#_11FAA0: db $3F, $00
#_11FAA2: db $44 ; Word Fill
#_11FAA3: db $00, $01 ; Word Fill
#_11FAA5: db $43 ; Word Fill
#_11FAA6: db $03, $00 ; Word Fill
#_11FAA8: db $43 ; Word Fill
#_11FAA9: db $07, $00 ; Word Fill
#_11FAAB: db $02 ; Direct Copy
#_11FAAC: db $0F, $00, $0F
#_11FAAF: db $28 ; Byte Fill
#_11FAB0: db $00
#_11FAB1: db $44 ; Word Fill
#_11FAB2: db $FF, $01 ; Word Fill
#_11FAB4: db $43 ; Word Fill
#_11FAB5: db $03, $FF ; Word Fill
#_11FAB7: db $43 ; Word Fill
#_11FAB8: db $07, $FF ; Word Fill
#_11FABA: db $02 ; Direct Copy
#_11FABB: db $0F, $FF, $0F
#_11FABE: db $27 ; Byte Fill
#_11FABF: db $00
#_11FAC0: db $17 ; Direct Copy
#_11FAC1: db $A0, $6F, $50, $B0, $20, $DF, $F0, $0F
#_11FAC9: db $88, $57, $B5, $6B, $BD, $6B, $B5, $63
#_11FAD1: db $1F, $0F, $00, $00, $20, $00, $00, $08
#_11FAD9: db $2F ; Byte Fill
#_11FADA: db $FF
#_11FADB: db $27 ; Byte Fill
#_11FADC: db $00
#_11FADD: db $22 ; Byte Fill
#_11FADE: db $FF
#_11FADF: db $04 ; Direct Copy
#_11FAE0: db $3F, $FF, $0F, $FF, $03
#_11FAE5: db $46 ; Word Fill
#_11FAE6: db $FF, $00 ; Word Fill
#_11FAE8: db $28 ; Byte Fill
#_11FAE9: db $00
#_11FAEA: db $2A ; Byte Fill
#_11FAEB: db $FF
#_11FAEC: db $84 ; Repeat Fill
#_11FAED: db $53, $04 ; Repeat Fill bytes
#_11FAEF: db $27 ; Byte Fill
#_11FAF0: db $00
#_11FAF1: db $11 ; Direct Copy
#_11FAF2: db $90, $0F, $90, $09, $96, $6F, $96, $69
#_11FAFA: db $90, $6F, $89, $76, $86, $49, $B0, $4F
#_11FB02: db $60, $66
#_11FB04: db $22 ; Byte Fill
#_11FB05: db $60
#_11FB06: db $14 ; Direct Copy
#_11FB07: db $70, $79, $4F, $90, $0F, $90, $0E, $91
#_11FB0F: db $6F, $91, $6E, $90, $6F, $08, $F7, $07
#_11FB17: db $98, $60, $9F, $60, $61
#_11FB1C: db $22 ; Byte Fill
#_11FB1D: db $60
#_11FB1E: db $02 ; Direct Copy
#_11FB1F: db $F0, $F8, $9F
#_11FB22: db $45 ; Word Fill
#_11FB23: db $8F, $00 ; Word Fill
#_11FB25: db $05 ; Direct Copy
#_11FB26: db $97, $07, $AF, $0F, $DF, $1F
#_11FB2C: db $83 ; Repeat Fill
#_11FB2D: db $90, $03 ; Repeat Fill bytes
#_11FB2F: db $22 ; Byte Fill
#_11FB30: db $7F
#_11FB31: db $04 ; Direct Copy
#_11FB32: db $78, $70, $60, $00, $00
#_11FB37: db $45 ; Word Fill
#_11FB38: db $FF, $0E ; Word Fill
#_11FB3A: db $09 ; Direct Copy
#_11FB3B: db $F7, $F6, $FB, $FA, $FD, $FC, $01, $FE
#_11FB43: db $FF, $00
#_11FB45: db $22 ; Byte Fill
#_11FB46: db $F0
#_11FB47: db $00 ; Direct Copy
#_11FB48: db $08
#_11FB49: db $83 ; Repeat Fill
#_11FB4A: db $A8, $01 ; Repeat Fill bytes
#_11FB4C: db $0E ; Direct Copy
#_11FB4D: db $DB, $67, $CC, $73, $A6, $79, $A3, $7C
#_11FB55: db $E1, $7E, $B6, $37, $81, $0F, $FF
#_11FB5C: db $25 ; Byte Fill
#_11FB5D: db $00
#_11FB5E: db $0E ; Direct Copy
#_11FB5F: db $48, $70, $00, $EB, $ED, $35, $F6, $18
#_11FB67: db $F8, $87, $7F, $E0, $1F, $7F, $80
#_11FB6E: db $22 ; Byte Fill
#_11FB6F: db $FF
#_11FB70: db $03 ; Direct Copy
#_11FB71: db $00, $11, $08, $07
#_11FB75: db $24 ; Byte Fill
#_11FB76: db $00
#_11FB77: db $E0, $28 ; EXT Direct Copy
#_11FB79: db $C5, $3B, $AA, $61, $DD, $40, $91, $1F
#_11FB81: db $A0, $31, $C6, $60, $D3, $30, $E9, $18
#_11FB89: db $00, $1C, $3E, $60, $4E, $1F, $0F, $07
#_11FB91: db $05, $06, $FB, $FC, $07, $F8, $FD, $02
#_11FB99: db $FF, $06, $F3, $F2, $F1, $02, $E5, $06
#_11FBA1: db $F8
#_11FBA2: db $23 ; Byte Fill
#_11FBA3: db $00
#_11FBA4: db $0C ; Direct Copy
#_11FBA5: db $0C, $FC, $F8, $FE, $56, $FF, $43, $DF
#_11FBAD: db $62, $EF, $70, $F7, $78
#_11FBB2: db $85 ; Repeat Fill
#_11FBB3: db $AA, $02 ; Repeat Fill bytes
#_11FBB5: db $03 ; Direct Copy
#_11FBB6: db $1F, $1F, $0F, $07
#_11FBBA: db $23 ; Byte Fill
#_11FBBB: db $00
#_11FBBC: db $0A ; Direct Copy
#_11FBBD: db $E1, $5E, $E2, $5C, $E5, $59, $EB, $53
#_11FBC5: db $F7, $47, $FF
#_11FBC8: db $83 ; Repeat Fill
#_11FBC9: db $E3, $03 ; Repeat Fill bytes
#_11FBCB: db $00 ; Direct Copy
#_11FBCC: db $00
#_11FBCD: db $62 ; Increasing Fill
#_11FBCE: db $00 ; Increasing Fill Start
#_11FBCF: db $01 ; Direct Copy
#_11FBD0: db $04, $08
#_11FBD2: db $22 ; Byte Fill
#_11FBD3: db $00
#_11FBD4: db $43 ; Word Fill
#_11FBD5: db $1F, $00 ; Word Fill
#_11FBD7: db $43 ; Word Fill
#_11FBD8: db $3F, $00 ; Word Fill
#_11FBDA: db $43 ; Word Fill
#_11FBDB: db $7F, $00 ; Word Fill
#_11FBDD: db $02 ; Direct Copy
#_11FBDE: db $FF, $00, $FF
#_11FBE1: db $28 ; Byte Fill
#_11FBE2: db $00
#_11FBE3: db $44 ; Word Fill
#_11FBE4: db $FF, $1F ; Word Fill
#_11FBE6: db $43 ; Word Fill
#_11FBE7: db $3F, $FF ; Word Fill
#_11FBE9: db $02 ; Direct Copy
#_11FBEA: db $7F, $FF, $7F
#_11FBED: db $23 ; Byte Fill
#_11FBEE: db $FF
#_11FBEF: db $27 ; Byte Fill
#_11FBF0: db $00
#_11FBF1: db $0B ; Direct Copy
#_11FBF2: db $B5, $67, $BA, $6B, $B4, $6C, $AB, $77
#_11FBFA: db $A7, $68, $9F, $5F
#_11FBFE: db $83 ; Repeat Fill
#_11FBFF: db $90, $03 ; Repeat Fill bytes
#_11FC01: db $06 ; Direct Copy
#_11FC02: db $08, $04, $03, $00, $10, $20, $00
#_11FC09: db $4F ; Word Fill
#_11FC0A: db $00, $FF ; Word Fill
#_11FC0C: db $28 ; Byte Fill
#_11FC0D: db $00
#_11FC0E: db $06 ; Direct Copy
#_11FC0F: db $FF, $00, $3F, $00, $0F, $00, $03
#_11FC16: db $30 ; Byte Fill
#_11FC17: db $00
#_11FC18: db $49 ; Word Fill
#_11FC19: db $FF, $00 ; Word Fill
#_11FC1B: db $84 ; Repeat Fill
#_11FC1C: db $D2, $05 ; Repeat Fill bytes
#_11FC1E: db $28 ; Byte Fill
#_11FC1F: db $00
#_11FC20: db $FF ; End of GFX 0E

;===================================================================================================

GFX_0F:
#_11FC21: db $01 ; Direct Copy
#_11FC22: db $FF, $00
#_11FC24: db $4D ; Word Fill
#_11FC25: db $F7, $67 ; Word Fill
#_11FC27: db $00 ; Direct Copy
#_11FC28: db $E0
#_11FC29: db $26 ; Byte Fill
#_11FC2A: db $EF
#_11FC2B: db $01 ; Direct Copy
#_11FC2C: db $FF, $00
#_11FC2E: db $46 ; Word Fill
#_11FC2F: db $FF, $F6 ; Word Fill
#_11FC31: db $46 ; Word Fill
#_11FC32: db $F2, $FF ; Word Fill
#_11FC34: db $00 ; Direct Copy
#_11FC35: db $07
#_11FC36: db $26 ; Byte Fill
#_11FC37: db $F7
#_11FC38: db $00 ; Direct Copy
#_11FC39: db $F0
#_11FC3A: db $49 ; Word Fill
#_11FC3B: db $60, $FF ; Word Fill
#_11FC3D: db $04 ; Direct Copy
#_11FC3E: db $70, $FF, $7F, $FF, $00
#_11FC43: db $23 ; Byte Fill
#_11FC44: db $EF
#_11FC45: db $00 ; Direct Copy
#_11FC46: db $E0
#_11FC47: db $22 ; Byte Fill
#_11FC48: db $FF
#_11FC49: db $00 ; Direct Copy
#_11FC4A: db $0F
#_11FC4B: db $4B ; Word Fill
#_11FC4C: db $02, $FF ; Word Fill
#_11FC4E: db $02 ; Direct Copy
#_11FC4F: db $FE, $FF, $00
#_11FC52: db $23 ; Byte Fill
#_11FC53: db $F7
#_11FC54: db $00 ; Direct Copy
#_11FC55: db $07
#_11FC56: db $23 ; Byte Fill
#_11FC57: db $FF
#_11FC58: db $02 ; Direct Copy
#_11FC59: db $00, $FF, $60
#_11FC5C: db $4B ; Word Fill
#_11FC5D: db $F7, $67 ; Word Fill
#_11FC5F: db $01 ; Direct Copy
#_11FC60: db $FF, $E0
#_11FC62: db $25 ; Byte Fill
#_11FC63: db $EF
#_11FC64: db $03 ; Direct Copy
#_11FC65: db $FF, $00, $FF, $06
#_11FC69: db $4C ; Word Fill
#_11FC6A: db $FF, $F6 ; Word Fill
#_11FC6C: db $00 ; Direct Copy
#_11FC6D: db $07
#_11FC6E: db $26 ; Byte Fill
#_11FC6F: db $F7
#_11FC70: db $01 ; Direct Copy
#_11FC71: db $67, $F0
#_11FC73: db $47 ; Word Fill
#_11FC74: db $60, $FF ; Word Fill
#_11FC76: db $43 ; Word Fill
#_11FC77: db $7F, $FF ; Word Fill
#_11FC79: db $00 ; Direct Copy
#_11FC7A: db $00
#_11FC7B: db $23 ; Byte Fill
#_11FC7C: db $EF
#_11FC7D: db $00 ; Direct Copy
#_11FC7E: db $E0
#_11FC7F: db $23 ; Byte Fill
#_11FC80: db $FF
#_11FC81: db $01 ; Direct Copy
#_11FC82: db $F6, $0F
#_11FC84: db $47 ; Word Fill
#_11FC85: db $06, $FF ; Word Fill
#_11FC87: db $43 ; Word Fill
#_11FC88: db $FE, $FF ; Word Fill
#_11FC8A: db $00 ; Direct Copy
#_11FC8B: db $00
#_11FC8C: db $23 ; Byte Fill
#_11FC8D: db $F7
#_11FC8E: db $00 ; Direct Copy
#_11FC8F: db $07
#_11FC90: db $23 ; Byte Fill
#_11FC91: db $FF
#_11FC92: db $04 ; Direct Copy
#_11FC93: db $00, $FF, $7F, $FF, $60
#_11FC98: db $49 ; Word Fill
#_11FC99: db $F7, $67 ; Word Fill
#_11FC9B: db $02 ; Direct Copy
#_11FC9C: db $FF, $FF, $E0
#_11FC9F: db $24 ; Byte Fill
#_11FCA0: db $EF
#_11FCA1: db $05 ; Direct Copy
#_11FCA2: db $FF, $00, $FF, $FE, $FF, $06
#_11FCA8: db $4A ; Word Fill
#_11FCA9: db $FF, $F6 ; Word Fill
#_11FCAB: db $01 ; Direct Copy
#_11FCAC: db $FF, $07
#_11FCAE: db $25 ; Byte Fill
#_11FCAF: db $F7
#_11FCB0: db $03 ; Direct Copy
#_11FCB1: db $67, $F7, $67, $F0
#_11FCB5: db $45 ; Word Fill
#_11FCB6: db $60, $FF ; Word Fill
#_11FCB8: db $43 ; Word Fill
#_11FCB9: db $7F, $FF ; Word Fill
#_11FCBB: db $00 ; Direct Copy
#_11FCBC: db $00
#_11FCBD: db $23 ; Byte Fill
#_11FCBE: db $EF
#_11FCBF: db $00 ; Direct Copy
#_11FCC0: db $E0
#_11FCC1: db $23 ; Byte Fill
#_11FCC2: db $FF
#_11FCC3: db $03 ; Direct Copy
#_11FCC4: db $F6, $FF, $F6, $0F
#_11FCC8: db $45 ; Word Fill
#_11FCC9: db $06, $FF ; Word Fill
#_11FCCB: db $43 ; Word Fill
#_11FCCC: db $FE, $FF ; Word Fill
#_11FCCE: db $00 ; Direct Copy
#_11FCCF: db $00
#_11FCD0: db $23 ; Byte Fill
#_11FCD1: db $F7
#_11FCD2: db $00 ; Direct Copy
#_11FCD3: db $07
#_11FCD4: db $23 ; Byte Fill
#_11FCD5: db $FF
#_11FCD6: db $00 ; Direct Copy
#_11FCD7: db $00
#_11FCD8: db $44 ; Word Fill
#_11FCD9: db $FF, $7F ; Word Fill
#_11FCDB: db $00 ; Direct Copy
#_11FCDC: db $60
#_11FCDD: db $47 ; Word Fill
#_11FCDE: db $FF, $6F ; Word Fill
#_11FCE0: db $28 ; Byte Fill
#_11FCE1: db $FF
#_11FCE2: db $00 ; Direct Copy
#_11FCE3: db $00
#_11FCE4: db $44 ; Word Fill
#_11FCE5: db $FF, $FE ; Word Fill
#_11FCE7: db $00 ; Direct Copy
#_11FCE8: db $06
#_11FCE9: db $47 ; Word Fill
#_11FCEA: db $FF, $F6 ; Word Fill
#_11FCEC: db $28 ; Byte Fill
#_11FCED: db $FF
#_11FCEE: db $47 ; Word Fill
#_11FCEF: db $6F, $FF ; Word Fill
#_11FCF1: db $00 ; Direct Copy
#_11FCF2: db $60
#_11FCF3: db $44 ; Word Fill
#_11FCF4: db $FF, $7F ; Word Fill
#_11FCF6: db $00 ; Direct Copy
#_11FCF7: db $00
#_11FCF8: db $28 ; Byte Fill
#_11FCF9: db $FF
#_11FCFA: db $47 ; Word Fill
#_11FCFB: db $F6, $FF ; Word Fill
#_11FCFD: db $00 ; Direct Copy
#_11FCFE: db $06
#_11FCFF: db $44 ; Word Fill
#_11FD00: db $FF, $FE ; Word Fill
#_11FD02: db $00 ; Direct Copy
#_11FD03: db $00
#_11FD04: db $28 ; Byte Fill
#_11FD05: db $FF
#_11FD06: db $00 ; Direct Copy
#_11FD07: db $00
#_11FD08: db $4D ; Word Fill
#_11FD09: db $F7, $67 ; Word Fill
#_11FD0B: db $00 ; Direct Copy
#_11FD0C: db $E0
#_11FD0D: db $26 ; Byte Fill
#_11FD0E: db $EF
#_11FD0F: db $01 ; Direct Copy
#_11FD10: db $FF, $00
#_11FD12: db $46 ; Word Fill
#_11FD13: db $FF, $F6 ; Word Fill
#_11FD15: db $46 ; Word Fill
#_11FD16: db $F2, $FF ; Word Fill
#_11FD18: db $00 ; Direct Copy
#_11FD19: db $07
#_11FD1A: db $26 ; Byte Fill
#_11FD1B: db $F7
#_11FD1C: db $00 ; Direct Copy
#_11FD1D: db $F0
#_11FD1E: db $49 ; Word Fill
#_11FD1F: db $60, $FF ; Word Fill
#_11FD21: db $84 ; Repeat Fill
#_11FD22: db $3B, $00 ; Repeat Fill bytes
#_11FD24: db $23 ; Byte Fill
#_11FD25: db $EF
#_11FD26: db $00 ; Direct Copy
#_11FD27: db $E0
#_11FD28: db $22 ; Byte Fill
#_11FD29: db $FF
#_11FD2A: db $00 ; Direct Copy
#_11FD2B: db $0F
#_11FD2C: db $4B ; Word Fill
#_11FD2D: db $02, $FF ; Word Fill
#_11FD2F: db $02 ; Direct Copy
#_11FD30: db $FE, $FF, $00
#_11FD33: db $23 ; Byte Fill
#_11FD34: db $F7
#_11FD35: db $00 ; Direct Copy
#_11FD36: db $07
#_11FD37: db $23 ; Byte Fill
#_11FD38: db $FF
#_11FD39: db $00 ; Direct Copy
#_11FD3A: db $00
#_11FD3B: db $44 ; Word Fill
#_11FD3C: db $FF, $7F ; Word Fill
#_11FD3E: db $00 ; Direct Copy
#_11FD3F: db $60
#_11FD40: db $47 ; Word Fill
#_11FD41: db $FF, $6F ; Word Fill
#_11FD43: db $28 ; Byte Fill
#_11FD44: db $FF
#_11FD45: db $00 ; Direct Copy
#_11FD46: db $00
#_11FD47: db $44 ; Word Fill
#_11FD48: db $FF, $FE ; Word Fill
#_11FD4A: db $00 ; Direct Copy
#_11FD4B: db $06
#_11FD4C: db $47 ; Word Fill
#_11FD4D: db $FF, $F6 ; Word Fill
#_11FD4F: db $28 ; Byte Fill
#_11FD50: db $FF
#_11FD51: db $47 ; Word Fill
#_11FD52: db $6F, $FF ; Word Fill
#_11FD54: db $00 ; Direct Copy
#_11FD55: db $60
#_11FD56: db $44 ; Word Fill
#_11FD57: db $FF, $7F ; Word Fill
#_11FD59: db $00 ; Direct Copy
#_11FD5A: db $00
#_11FD5B: db $28 ; Byte Fill
#_11FD5C: db $FF
#_11FD5D: db $47 ; Word Fill
#_11FD5E: db $F6, $FF ; Word Fill
#_11FD60: db $00 ; Direct Copy
#_11FD61: db $06
#_11FD62: db $44 ; Word Fill
#_11FD63: db $FF, $FE ; Word Fill
#_11FD65: db $00 ; Direct Copy
#_11FD66: db $00
#_11FD67: db $28 ; Byte Fill
#_11FD68: db $FF
#_11FD69: db $04 ; Direct Copy
#_11FD6A: db $00, $FF, $1F, $FF, $20
#_11FD6F: db $43 ; Word Fill
#_11FD70: db $FF, $40 ; Word Fill
#_11FD72: db $0A ; Direct Copy
#_11FD73: db $FB, $47, $F4, $4F, $E8, $5F, $C0, $BF
#_11FD7B: db $7F, $70, $60
#_11FD7E: db $22 ; Byte Fill
#_11FD7F: db $40
#_11FD80: db $0F ; Direct Copy
#_11FD81: db $E8, $5F, $EC, $5B, $EA, $5D, $E8, $5F
#_11FD89: db $F4, $4F, $FF, $20, $FF, $1F, $FF, $00
#_11FD91: db $23 ; Byte Fill
#_11FD92: db $40
#_11FD93: db $E0, $2F ; EXT Direct Copy
#_11FD95: db $60, $70, $BF, $C0, $00, $FF, $57, $C7
#_11FD9D: db $13, $AB, $30, $CC, $38, $C7, $18, $A7
#_11FDA5: db $4C, $D3, $6F, $E0, $00, $28, $44, $03
#_11FDAD: db $00, $40, $20, $10, $00, $FF, $D3, $CB
#_11FDB5: db $11, $2D, $10, $EE, $10, $EF, $28, $C7
#_11FDBD: db $C4, $03, $03, $00, $00, $24, $C2, $01
#_11FDC5: db $23 ; Byte Fill
#_11FDC6: db $00
#_11FDC7: db $16 ; Direct Copy
#_11FDC8: db $6C, $E0, $54, $D8, $24, $B8, $4F, $F0
#_11FDD0: db $18, $E4, $73, $CB, $67, $F7, $00, $FF
#_11FDD8: db $10, $20, $40, $00, $03, $04, $08
#_11FDDF: db $26 ; Byte Fill
#_11FDE0: db $00
#_11FDE1: db $09 ; Direct Copy
#_11FDE2: db $C3, $00, $24, $43, $98, $A4, $C3, $DB
#_11FDEA: db $00, $FF
#_11FDEC: db $23 ; Byte Fill
#_11FDED: db $00
#_11FDEE: db $15 ; Direct Copy
#_11FDEF: db $80, $43, $24, $00, $48, $D0, $08, $B0
#_11FDF7: db $08, $F0, $10, $E0, $20, $C0, $40, $80
#_11FDFF: db $20, $80, $50, $C0, $20, $40
#_11FE05: db $23 ; Byte Fill
#_11FE06: db $00
#_11FE07: db $01 ; Direct Copy
#_11FE08: db $40, $20
#_11FE0A: db $25 ; Byte Fill
#_11FE0B: db $00
#_11FE0C: db $05 ; Direct Copy
#_11FE0D: db $07, $00, $08, $07, $10, $0C
#_11FE13: db $43 ; Word Fill
#_11FE14: db $13, $0B ; Word Fill
#_11FE16: db $24 ; Byte Fill
#_11FE17: db $00
#_11FE18: db $0C ; Direct Copy
#_11FE19: db $03, $04, $04, $C0, $C0, $90, $9F, $20
#_11FE21: db $BF, $27, $B8, $2F, $B3
#_11FE26: db $45 ; Word Fill
#_11FE27: db $2F, $B4 ; Word Fill
#_11FE29: db $01 ; Direct Copy
#_11FE2A: db $3F, $60
#_11FE2C: db $25 ; Byte Fill
#_11FE2D: db $40
#_11FE2E: db $05 ; Direct Copy
#_11FE2F: db $FF, $00, $A2, $55, $AA, $55
#_11FE35: db $43 ; Word Fill
#_11FE36: db $BE, $1C ; Word Fill
#_11FE38: db $01 ; Direct Copy
#_11FE39: db $A2, $1C
#_11FE3B: db $83 ; Repeat Fill
#_11FE3C: db $1A, $03 ; Repeat Fill bytes
#_11FE3E: db $01 ; Direct Copy
#_11FE3F: db $00, $49
#_11FE41: db $23 ; Byte Fill
#_11FE42: db $41
#_11FE43: db $04 ; Direct Copy
#_11FE44: db $49, $41, $FF, $00, $80
#_11FE49: db $4C ; Word Fill
#_11FE4A: db $00, $BF ; Word Fill
#_11FE4C: db $01 ; Direct Copy
#_11FE4D: db $00, $7F
#_11FE4F: db $23 ; Byte Fill
#_11FE50: db $40
#_11FE51: db $11 ; Direct Copy
#_11FE52: db $5F, $5F, $7F, $80, $80, $7F, $B0, $7F
#_11FE5A: db $B8, $7F, $9C, $7F, $8E, $7F, $87, $7F
#_11FE62: db $82, $7E
#_11FE64: db $26 ; Byte Fill
#_11FE65: db $00
#_11FE66: db $02 ; Direct Copy
#_11FE67: db $01, $FF, $00
#_11FE6A: db $4A ; Word Fill
#_11FE6B: db $00, $FF ; Word Fill
#_11FE6D: db $22 ; Byte Fill
#_11FE6E: db $FF
#_11FE6F: db $27 ; Byte Fill
#_11FE70: db $00
#_11FE71: db $01 ; Direct Copy
#_11FE72: db $FF, $3F
#_11FE74: db $45 ; Word Fill
#_11FE75: db $E0, $20 ; Word Fill
#_11FE77: db $08 ; Direct Copy
#_11FE78: db $FF, $00, $7F, $00, $80, $80, $C0, $7F
#_11FE80: db $C0
#_11FE81: db $22 ; Byte Fill
#_11FE82: db $DF
#_11FE83: db $1B ; Direct Copy
#_11FE84: db $FF, $FF, $7F, $00, $E7, $9A, $BD, $00
#_11FE8C: db $40, $9D, $40, $AD, $C0, $3F, $80, $88
#_11FE94: db $E3, $1B, $C3, $3B, $00, $42, $22, $12
#_11FE9C: db $00, $77, $04, $04
#_11FEA0: db $4E ; Word Fill
#_11FEA1: db $7F, $00 ; Word Fill
#_11FEA3: db $28 ; Byte Fill
#_11FEA4: db $00
#_11FEA5: db $43 ; Word Fill
#_11FEA6: db $1F, $00 ; Word Fill
#_11FEA8: db $43 ; Word Fill
#_11FEA9: db $3F, $00 ; Word Fill
#_11FEAB: db $46 ; Word Fill
#_11FEAC: db $7F, $00 ; Word Fill
#_11FEAE: db $E4, $68 ; EXT Byte Fill
#_11FEB0: db $00
#_11FEB1: db $0F ; Direct Copy
#_11FEB2: db $FF, $00, $FE, $7F, $FD, $7F, $FB, $7F
#_11FEBA: db $87, $7F, $BF, $7F, $DF, $7F, $EF, $7F
#_11FEC2: db $27 ; Byte Fill
#_11FEC3: db $00
#_11FEC4: db $17 ; Direct Copy
#_11FEC5: db $FF, $00, $FF, $7E, $FF, $7D, $FE, $7B
#_11FECD: db $FC, $07, $F8, $3F, $F0, $5C, $F2, $6C
#_11FED5: db $00, $00, $01, $03, $07, $3F, $1F, $0D
#_11FEDD: db $4E ; Word Fill
#_11FEDE: db $FF, $00 ; Word Fill
#_11FEE0: db $28 ; Byte Fill
#_11FEE1: db $00
#_11FEE2: db $E0, $2E ; EXT Direct Copy
#_11FEE4: db $2F, $B3, $10, $9F, $40, $C0, $3F, $FF
#_11FEEC: db $06, $FF, $4F, $D9, $39, $A6, $FF, $C0
#_11FEF4: db $40, $60, $3F, $00, $00, $20, $40, $00
#_11FEFC: db $A2, $5D, $BE, $41, $80, $7C, $FD, $02
#_11FF04: db $A4, $5B, $BF, $40, $80, $7F, $FF, $00
#_11FF0C: db $41, $41, $7F, $02, $43, $40, $7F
#_11FF13: db $44 ; Word Fill
#_11FF14: db $00, $BF ; Word Fill
#_11FF16: db $05 ; Direct Copy
#_11FF17: db $80, $00, $BD, $42, $A0, $5F
#_11FF1D: db $85 ; Repeat Fill
#_11FF1E: db $A2, $04 ; Repeat Fill bytes
#_11FF20: db $03 ; Direct Copy
#_11FF21: db $5F, $5F, $7F, $42
#_11FF25: db $83 ; Repeat Fill
#_11FF26: db $AC, $04 ; Repeat Fill bytes
#_11FF28: db $4F ; Word Fill
#_11FF29: db $81, $7F ; Word Fill
#_11FF2B: db $2B ; Byte Fill
#_11FF2C: db $00
#_11FF2D: db $2B ; Byte Fill
#_11FF2E: db $3F
#_11FF2F: db $01 ; Direct Copy
#_11FF30: db $FF, $FF
#_11FF32: db $25 ; Byte Fill
#_11FF33: db $C0
#_11FF34: db $E0, $39 ; EXT Direct Copy
#_11FF36: db $80, $40, $FF, $00, $93, $6F, $E4, $5C
#_11FF3E: db $A8, $19, $A9, $18, $D4, $4D, $AA, $66
#_11FF46: db $3F, $00, $00, $03, $46, $46, $22, $11
#_11FF4E: db $83, $8B, $E0, $18, $40, $BF, $40, $AF
#_11FF56: db $C0, $1D, $A0, $1D, $FD, $80, $C7, $3A
#_11FF5E: db $74, $07, $00, $10, $22, $42, $02, $00
#_11FF66: db $05, $06, $FB, $02, $F5, $F8, $6B, $0C
#_11FF6E: db $65, $96
#_11FF70: db $43 ; Word Fill
#_11FF71: db $F3, $0A ; Word Fill
#_11FF73: db $09 ; Direct Copy
#_11FF74: db $63, $92, $F8, $04, $02, $F0, $68, $64
#_11FF7C: db $04, $0C
#_11FF7E: db $43 ; Word Fill
#_11FF7F: db $D3, $1C ; Word Fill
#_11FF81: db $06 ; Direct Copy
#_11FF82: db $D7, $18, $DF, $10, $C0, $1F, $C0
#_11FF89: db $44 ; Word Fill
#_11FF8A: db $00, $FF ; Word Fill
#_11FF8C: db $24 ; Byte Fill
#_11FF8D: db $20
#_11FF8E: db $01 ; Direct Copy
#_11FF8F: db $3F, $00
#_11FF91: db $48 ; Word Fill
#_11FF92: db $00, $FF ; Word Fill
#_11FF94: db $02 ; Direct Copy
#_11FF95: db $00, $FF, $00
#_11FF98: db $43 ; Word Fill
#_11FF99: db $00, $FF ; Word Fill
#_11FF9B: db $25 ; Byte Fill
#_11FF9C: db $00
#_11FF9D: db $E0, $31 ; EXT Direct Copy
#_11FF9F: db $FF, $00, $00, $BC, $64, $F7, $43, $86
#_11FFA7: db $1D, $C3, $62, $C7, $20, $70, $90, $37
#_11FFAF: db $CF, $FF, $00, $13, $38, $60, $1C, $1F
#_11FFB7: db $0F, $00, $00, $0B, $0C, $E5, $F8, $19
#_11FFBF: db $E0, $F3, $12, $E5, $06, $0A, $0D, $E4
#_11FFC7: db $FB, $FF, $00, $F0, $02, $06, $0C, $F8
#_11FFCF: db $F0, $00
#_11FFD1: db $4F ; Word Fill
#_11FFD2: db $00, $FF ; Word Fill
#_11FFD4: db $23 ; Byte Fill
#_11FFD5: db $00
#_11FFD6: db $24 ; Byte Fill
#_11FFD7: db $FF
#_11FFD8: db $43 ; Word Fill
#_11FFD9: db $FE, $01 ; Word Fill
#_11FFDB: db $43 ; Word Fill
#_11FFDC: db $FF, $00 ; Word Fill
#_11FFDE: db $47 ; Word Fill
#_11FFDF: db $FE, $01 ; Word Fill
#_11FFE1: db $27 ; Byte Fill
#_11FFE2: db $1F
#_11FFE3: db $4E ; Word Fill
#_11FFE4: db $FF, $00 ; Word Fill
#_11FFE6: db $23 ; Byte Fill
#_11FFE7: db $00
#_11FFE8: db $24 ; Byte Fill
#_11FFE9: db $1F
#_11FFEA: db $4F ; Word Fill
#_11FFEB: db $FF, $00 ; Word Fill
#_11FFED: db $22 ; Byte Fill
#_11FFEE: db $1F
#_11FFEF: db $24 ; Byte Fill
#_11FFF0: db $FF
#_11FFF1: db $FF ; End of GFX 0F

;===================================================================================================

GFX_10:
#_11FFF2: db $0F ; Direct Copy
#_11FFF3: db $01, $00, $03, $00, $06, $00, $0D, $00
#_11FFFB: db $1A, $01, $35, $03, $6B

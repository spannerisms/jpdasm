org $158000

;===================================================================================================

#_158000: db $C5, $3A, $B9, $46, $4E
#_158005: db $83 ; Repeat Fill
#_158006: db $D3, $04 ; Repeat Fill bytes
#_158008: db $06 ; Direct Copy
#_158009: db $80, $CE, $79, $3D, $79, $CE, $80
#_158010: db $37 ; Byte Fill
#_158011: db $00
#_158012: db $50 ; Word Fill
#_158013: db $38, $00 ; Word Fill
#_158015: db $26 ; Byte Fill
#_158016: db $28
#_158017: db $25 ; Byte Fill
#_158018: db $00
#_158019: db $44 ; Word Fill
#_15801A: db $FF, $00 ; Word Fill
#_15801C: db $27 ; Byte Fill
#_15801D: db $00
#_15801E: db $04 ; Direct Copy
#_15801F: db $FF, $80, $FF, $00, $00
#_158024: db $FF ; End of GFX 80

;===================================================================================================

GFX_81:
#_158025: db $E0, $50 ; EXT Direct Copy
#_158027: db $07, $00, $18, $07, $23, $1F, $4F, $3F
#_15802F: db $5F, $3B, $BF, $74, $BF, $6B, $BE, $68
#_158037: db $07, $1F, $3F, $7F, $7F, $FB, $F4, $F3
#_15803F: db $C0, $00, $30, $C0, $C8, $F0, $F4, $F8
#_158047: db $FC, $98, $FC, $60, $BC, $90, $7A, $10
#_15804F: db $C0, $F0, $F8, $FC, $FC, $9C, $6C, $CE
#_158057: db $07, $00, $08, $07, $1E, $0F, $3F, $17
#_15805F: db $3F, $0B, $27, $00, $1F, $03, $3F, $13
#_158067: db $07, $0F, $1F, $3F, $37, $3F, $18, $20
#_15806F: db $E0, $00, $18, $E0, $04, $F8, $02, $FC
#_158077: db $B2
#_158078: db $43 ; Word Fill
#_158079: db $FC, $FA ; Word Fill
#_15807B: db $05 ; Direct Copy
#_15807C: db $5C, $D4, $08, $E0, $F8, $FC
#_158082: db $23 ; Byte Fill
#_158083: db $FE
#_158084: db $00 ; Direct Copy
#_158085: db $FC
#_158086: db $83 ; Repeat Fill
#_158087: db $00, $00 ; Repeat Fill bytes
#_158089: db $0F ; Direct Copy
#_15808A: db $20, $1F, $21, $1F, $4F, $3F, $4E, $3F
#_158092: db $40, $3F, $63, $3F, $07, $1F, $3F, $3F
#_15809A: db $23 ; Byte Fill
#_15809B: db $7F
#_15809C: db $83 ; Repeat Fill
#_15809D: db $18, $00 ; Repeat Fill bytes
#_15809F: db $03 ; Direct Copy
#_1580A0: db $08, $F0, $E8, $F0
#_1580A4: db $43 ; Word Fill
#_1580A5: db $FC, $F8 ; Word Fill
#_1580A7: db $43 ; Word Fill
#_1580A8: db $FA, $F0 ; Word Fill
#_1580AA: db $0A ; Direct Copy
#_1580AB: db $C0, $F0, $F8, $F8, $FC, $FC, $FE, $FE
#_1580B3: db $1F, $00, $27
#_1580B6: db $83 ; Repeat Fill
#_1580B7: db $05, $00 ; Repeat Fill bytes
#_1580B9: db $08 ; Direct Copy
#_1580BA: db $39, $99, $76, $B8, $77, $FC, $73, $FE
#_1580C2: db $01
#_1580C3: db $83 ; Repeat Fill
#_1580C4: db $11, $00 ; Repeat Fill bytes
#_1580C6: db $15 ; Direct Copy
#_1580C7: db $FF, $FF, $FB, $F9, $FC, $00, $E2, $FC
#_1580CF: db $F1, $FE, $F9, $8E, $9F, $60, $1D, $E4
#_1580D7: db $0E, $F0, $6C, $90, $FC, $FE
#_1580DD: db $22 ; Byte Fill
#_1580DE: db $FF
#_1580DF: db $02 ; Direct Copy
#_1580E0: db $FB, $FE, $9C
#_1580E3: db $23 ; Byte Fill
#_1580E4: db $00
#_1580E5: db $05 ; Direct Copy
#_1580E6: db $03, $00, $07, $03, $0C, $07
#_1580EC: db $45 ; Word Fill
#_1580ED: db $18, $0F ; Word Fill
#_1580EF: db $04 ; Direct Copy
#_1580F0: db $00, $00, $03, $07, $0F
#_1580F5: db $23 ; Byte Fill
#_1580F6: db $1F
#_1580F7: db $0F ; Direct Copy
#_1580F8: db $00, $FF, $1F, $E1, $FF, $02, $FF, $01
#_158100: db $FF, $C0, $7F, $80, $FF, $1F, $E0, $1F
#_158108: db $23 ; Byte Fill
#_158109: db $FF
#_15810A: db $02 ; Direct Copy
#_15810B: db $7F, $FF, $E0
#_15810E: db $25 ; Byte Fill
#_15810F: db $00
#_158110: db $05 ; Direct Copy
#_158111: db $07, $00, $0E, $01, $1E, $01
#_158117: db $43 ; Word Fill
#_158118: db $1A, $05 ; Word Fill
#_15811A: db $22 ; Byte Fill
#_15811B: db $00
#_15811C: db $04 ; Direct Copy
#_15811D: db $07, $0B, $13, $17, $17
#_158122: db $25 ; Byte Fill
#_158123: db $00
#_158124: db $03 ; Direct Copy
#_158125: db $F0, $00, $F8, $D0
#_158129: db $43 ; Word Fill
#_15812A: db $7C, $D8 ; Word Fill
#_15812C: db $01 ; Direct Copy
#_15812D: db $7E, $DC
#_15812F: db $22 ; Byte Fill
#_158130: db $00
#_158131: db $83 ; Repeat Fill
#_158132: db $29, $00 ; Repeat Fill bytes
#_158134: db $00 ; Direct Copy
#_158135: db $FE
#_158136: db $E4, $35 ; EXT Byte Fill
#_158138: db $00
#_158139: db $09 ; Direct Copy
#_15813A: db $07, $00, $0F, $00, $1E, $01, $1C, $03
#_158142: db $25, $03
#_158144: db $22 ; Byte Fill
#_158145: db $00
#_158146: db $04 ; Direct Copy
#_158147: db $07, $09, $13, $1F, $3F
#_15814C: db $25 ; Byte Fill
#_15814D: db $00
#_15814E: db $09 ; Direct Copy
#_15814F: db $F0, $00, $18, $F0, $38, $F0, $7C, $F0
#_158157: db $BC, $E8
#_158159: db $22 ; Byte Fill
#_15815A: db $00
#_15815B: db $84 ; Repeat Fill
#_15815C: db $89, $00 ; Repeat Fill bytes
#_15815E: db $0A ; Direct Copy
#_15815F: db $5F, $28, $5C, $2C, $B9, $68, $BE, $74
#_158167: db $5F, $23, $23
#_15816A: db $24 ; Byte Fill
#_15816B: db $00
#_15816C: db $12 ; Direct Copy
#_15816D: db $71, $73, $F7, $FB, $7C, $23, $00, $00
#_158175: db $FA, $10, $3C, $30, $98, $10, $70, $20
#_15817D: db $E0, $C0, $C0
#_158180: db $24 ; Byte Fill
#_158181: db $00
#_158182: db $12 ; Direct Copy
#_158183: db $8E, $CC, $E8, $D0, $20, $C0, $00, $00
#_15818B: db $5C, $1C, $40, $00, $39, $01, $35, $11
#_158193: db $1F, $0E, $0E
#_158196: db $24 ; Byte Fill
#_158197: db $00
#_158198: db $14 ; Direct Copy
#_158199: db $63, $7F, $3E, $2E, $11, $0E, $00, $00
#_1581A1: db $94, $08, $FA, $EC, $F1, $9E, $F9, $1E
#_1581A9: db $FD, $1E, $1E, $0C, $0C
#_1581AE: db $22 ; Byte Fill
#_1581AF: db $00
#_1581B0: db $14 ; Direct Copy
#_1581B1: db $FC, $1E, $7F, $FF, $FF, $1E, $0C, $00
#_1581B9: db $3F, $1D, $3F, $03, $6D, $3F, $63, $3F
#_1581C1: db $77, $3F, $3F, $1C, $3C
#_1581C6: db $22 ; Byte Fill
#_1581C7: db $00
#_1581C8: db $01 ; Direct Copy
#_1581C9: db $3F, $3F
#_1581CB: db $22 ; Byte Fill
#_1581CC: db $7F
#_1581CD: db $0D ; Direct Copy
#_1581CE: db $3F, $3C, $00, $FE, $EC, $FC, $C8, $FC
#_1581D6: db $88, $F8, $80, $F0, $00, $C0
#_1581DC: db $24 ; Byte Fill
#_1581DD: db $00
#_1581DE: db $10 ; Direct Copy
#_1581DF: db $F2, $F4, $F4, $F8, $F0, $C0, $00, $00
#_1581E7: db $CF, $40, $FB, $74, $7C, $03, $27, $18
#_1581EF: db $1C
#_1581F0: db $26 ; Byte Fill
#_1581F1: db $00
#_1581F2: db $04 ; Direct Copy
#_1581F3: db $BC, $8B, $7C, $27, $1C
#_1581F8: db $22 ; Byte Fill
#_1581F9: db $00
#_1581FA: db $0C ; Direct Copy
#_1581FB: db $F4, $08, $CC, $30, $3C, $C8, $FE, $38
#_158203: db $7A, $24, $62, $1C, $3C
#_158208: db $22 ; Byte Fill
#_158209: db $00
#_15820A: db $0B ; Direct Copy
#_15820B: db $34, $CC, $3C, $FE, $7A, $62, $3C, $00
#_158213: db $18, $0F, $19, $0E
#_158217: db $43 ; Word Fill
#_158218: db $1B, $0C ; Word Fill
#_15821A: db $03 ; Direct Copy
#_15821B: db $1E, $09, $1D, $0B
#_15821F: db $43 ; Word Fill
#_158220: db $1B, $0F ; Word Fill
#_158222: db $0E ; Direct Copy
#_158223: db $1F, $1E, $1C, $1C, $19, $1B, $1F, $1F
#_15822B: db $7F, $80, $E0, $1F, $9F, $7F, $7F
#_158232: db $25 ; Byte Fill
#_158233: db $FF
#_158234: db $05 ; Direct Copy
#_158235: db $F0, $FF, $C0, $80, $1F, $7F
#_15823B: db $24 ; Byte Fill
#_15823C: db $FF
#_15823D: db $E0, $2F ; EXT Direct Copy
#_15823F: db $3B, $04, $32, $0C, $2E, $10, $11, $0E
#_158247: db $0F, $00, $07, $01, $08, $07, $0F, $00
#_15824F: db $27, $3F, $2F, $11, $0F, $07, $08, $0F
#_158257: db $FE, $1C, $7E, $50, $72, $4C, $C4, $38
#_15825F: db $F8, $00, $E0, $C0, $20, $C0, $E0, $00
#_158267: db $FE, $BE, $B2, $C4, $F8, $E0, $20, $E0
#_15826F: db $E4, $2F ; EXT Byte Fill
#_158271: db $00
#_158272: db $0A ; Direct Copy
#_158273: db $2F, $0B, $3F, $1B, $3B, $04, $4C, $33
#_15827B: db $47, $38, $3C
#_15827E: db $24 ; Byte Fill
#_15827F: db $00
#_158280: db $14 ; Direct Copy
#_158281: db $37, $27, $3B, $4C, $47, $3C, $00, $00
#_158289: db $FE, $90, $F2, $6C, $E7, $18, $0D, $F2
#_158291: db $F9, $06, $22, $1C, $3C
#_158296: db $22 ; Byte Fill
#_158297: db $00
#_158298: db $18 ; Direct Copy
#_158299: db $FE, $F2, $E7, $0D, $F9, $22, $3C, $00
#_1582A1: db $0F, $00, $37, $0F, $7F, $2F, $7F, $21
#_1582A9: db $D1, $6E, $D0, $6F, $D4, $6B, $FF, $70
#_1582B1: db $0F
#_1582B2: db $85 ; Repeat Fill
#_1582B3: db $A1, $00 ; Repeat Fill bytes
#_1582B5: db $1D ; Direct Copy
#_1582B6: db $F8, $F0, $00, $EC, $F0, $FE, $F4, $FE
#_1582BE: db $84, $8B, $76, $0B, $F6, $2B, $D6, $FF
#_1582C6: db $0E, $F0, $FC, $FE, $FE, $FF, $FF, $DF
#_1582CE: db $1F, $0F, $00, $1F, $0F, $2F
#_1582D4: db $83 ; Repeat Fill
#_1582D5: db $05, $00 ; Repeat Fill bytes
#_1582D7: db $05 ; Direct Copy
#_1582D8: db $37, $9B, $77, $FC, $17, $9E
#_1582DE: db $83 ; Repeat Fill
#_1582DF: db $40, $00 ; Repeat Fill bytes
#_1582E1: db $01 ; Direct Copy
#_1582E2: db $7F, $7F
#_1582E4: db $22 ; Byte Fill
#_1582E5: db $FF
#_1582E6: db $05 ; Direct Copy
#_1582E7: db $F0, $00, $FC, $F0, $FA, $F4
#_1582ED: db $43 ; Word Fill
#_1582EE: db $FD, $F6 ; Word Fill
#_1582F0: db $08 ; Direct Copy
#_1582F1: db $DF, $F0, $3B, $F2, $7F, $F0, $F0, $FC
#_1582F9: db $FE
#_1582FA: db $22 ; Byte Fill
#_1582FB: db $FF
#_1582FC: db $0A ; Direct Copy
#_1582FD: db $FD, $FF, $0F, $00, $3F, $0F, $7F, $3F
#_158305: db $7F, $37, $B9
#_158308: db $43 ; Word Fill
#_158309: db $77, $BC ; Word Fill
#_15830B: db $02 ; Direct Copy
#_15830C: db $6F, $FE, $27
#_15830F: db $83 ; Repeat Fill
#_158310: db $10, $03 ; Repeat Fill bytes
#_158312: db $23 ; Byte Fill
#_158313: db $FF
#_158314: db $83 ; Repeat Fill
#_158315: db $48, $03 ; Repeat Fill bytes
#_158317: db $04 ; Direct Copy
#_158318: db $FE, $FC, $FE, $EC, $9D
#_15831D: db $43 ; Word Fill
#_15831E: db $EE, $3D ; Word Fill
#_158320: db $02 ; Direct Copy
#_158321: db $F6, $7F, $E4
#_158324: db $83 ; Repeat Fill
#_158325: db $28, $03 ; Repeat Fill bytes
#_158327: db $23 ; Byte Fill
#_158328: db $FF
#_158329: db $12 ; Direct Copy
#_15832A: db $03, $00, $07, $00, $0A, $00, $0F, $00
#_158332: db $17, $08, $35, $0A, $5D, $02, $5F, $10
#_15833A: db $03, $04, $0F
#_15833D: db $84 ; Repeat Fill
#_15833E: db $40, $03 ; Repeat Fill bytes
#_158340: db $17 ; Direct Copy
#_158341: db $E4, $00, $DE, $00, $EC, $00, $44, $00
#_158349: db $88, $00, $8C, $00, $F4, $00, $DA, $00
#_158351: db $E4, $3A, $14, $BC, $F8, $FC, $FC, $E6
#_158359: db $4B ; Word Fill
#_15835A: db $1B, $0F ; Word Fill
#_15835C: db $03 ; Direct Copy
#_15835D: db $0B, $07, $07, $00
#_158361: db $25 ; Byte Fill
#_158362: db $1F
#_158363: db $11 ; Direct Copy
#_158364: db $0F, $07, $FE, $83, $CE, $BB, $F6, $5D
#_15836C: db $FB, $6F, $FD, $77, $FE, $7B, $FF, $01
#_158374: db $C1, $00
#_158376: db $26 ; Byte Fill
#_158377: db $FF
#_158378: db $E0, $44 ; EXT Direct Copy
#_15837A: db $C1, $FE, $7F, $FD, $BF, $FB, $DF, $F7
#_158382: db $EF, $EF, $F7, $DF, $FB, $BF, $FD, $7F
#_15838A: db $FE, $FE, $FD, $FB, $F7, $EF, $DF, $BF
#_158392: db $7F, $00, $00, $3C, $3C, $7A, $46, $F1
#_15839A: db $8F, $E1, $9F, $A1, $DF, $41, $7F, $F1
#_1583A2: db $BF, $00, $3C, $46, $8F, $9F, $DF, $7F
#_1583AA: db $BF, $0F, $00, $1B, $07, $3F, $17, $3F
#_1583B2: db $13, $67, $38, $66, $38, $69, $36, $73
#_1583BA: db $3F, $0F, $1F, $3F, $3F
#_1583BF: db $23 ; Byte Fill
#_1583C0: db $7F
#_1583C1: db $03 ; Direct Copy
#_1583C2: db $F0, $00, $F8, $E0
#_1583C6: db $43 ; Word Fill
#_1583C7: db $FC, $E8 ; Word Fill
#_1583C9: db $07 ; Direct Copy
#_1583CA: db $F6, $6C, $76, $0C, $C6, $BC, $8E, $7C
#_1583D2: db $84 ; Repeat Fill
#_1583D3: db $1B, $01 ; Repeat Fill bytes
#_1583D5: db $02 ; Direct Copy
#_1583D6: db $FE, $7E, $FE
#_1583D9: db $99 ; Repeat Fill
#_1583DA: db $F0, $03 ; Repeat Fill bytes
#_1583DC: db $0A ; Direct Copy
#_1583DD: db $08, $00, $3C, $00, $3E, $00, $1C, $00
#_1583E5: db $3C, $00, $08
#_1583E8: db $2A ; Byte Fill
#_1583E9: db $00
#_1583EA: db $0C ; Direct Copy
#_1583EB: db $FF, $00, $B3, $0C, $BC, $13, $7F, $1C
#_1583F3: db $5E, $24, $46, $38, $3C
#_1583F8: db $22 ; Byte Fill
#_1583F9: db $00
#_1583FA: db $0C ; Direct Copy
#_1583FB: db $FC, $F3, $FC, $7F, $5E, $46, $3C, $00
#_158403: db $FF, $00, $CD, $30, $3D
#_158408: db $87 ; Repeat Fill
#_158409: db $2D, $02 ; Repeat Fill bytes
#_15840B: db $22 ; Byte Fill
#_15840C: db $00
#_15840D: db $02 ; Direct Copy
#_15840E: db $3F, $CF, $3F
#_158411: db $84 ; Repeat Fill
#_158412: db $3B, $02 ; Repeat Fill bytes
#_158414: db $01 ; Direct Copy
#_158415: db $CF, $43
#_158417: db $86 ; Repeat Fill
#_158418: db $12, $02 ; Repeat Fill bytes
#_15841A: db $26 ; Byte Fill
#_15841B: db $00
#_15841C: db $00 ; Direct Copy
#_15841D: db $BF
#_15841E: db $83 ; Repeat Fill
#_15841F: db $21, $02 ; Repeat Fill bytes
#_158421: db $22 ; Byte Fill
#_158422: db $00
#_158423: db $0C ; Direct Copy
#_158424: db $F4, $C8, $C8, $30, $3C, $C8, $FC, $38
#_15842C: db $FA, $04, $46, $38, $3C
#_158431: db $22 ; Byte Fill
#_158432: db $00
#_158433: db $04 ; Direct Copy
#_158434: db $F4, $C8, $3C, $FC, $FA
#_158439: db $83 ; Repeat Fill
#_15843A: db $95, $04 ; Repeat Fill bytes
#_15843C: db $03 ; Direct Copy
#_15843D: db $43, $B3, $0C, $7C
#_158441: db $83 ; Repeat Fill
#_158442: db $85, $04 ; Repeat Fill bytes
#_158444: db $03 ; Direct Copy
#_158445: db $20, $22, $1C, $1C
#_158449: db $22 ; Byte Fill
#_15844A: db $00
#_15844B: db $0C ; Direct Copy
#_15844C: db $BF, $F3, $7C, $7F, $5E, $22, $1C, $00
#_158454: db $FF, $C2, $CD, $30, $3E
#_158459: db $83 ; Repeat Fill
#_15845A: db $2D, $02 ; Repeat Fill bytes
#_15845C: db $03 ; Direct Copy
#_15845D: db $04, $44, $38, $38
#_158461: db $22 ; Byte Fill
#_158462: db $00
#_158463: db $E0, $37 ; EXT Direct Copy
#_158465: db $FD, $CF, $3E, $FE, $7A, $44, $38, $00
#_15846D: db $74, $00, $5F, $2C, $5F, $20, $8C, $70
#_158475: db $72, $00, $FA, $00, $89, $70, $70, $00
#_15847D: db $7F, $5E, $5E, $8F, $73, $8B, $89, $70
#_158485: db $3A, $00, $C1, $00, $3A, $00, $62, $20
#_15848D: db $E4, $60, $F2, $30, $3D, $0C, $0E, $00
#_158495: db $C6, $3F, $F6, $DE, $9C, $CE, $33, $0E
#_15849D: db $23 ; Byte Fill
#_15849E: db $00
#_15849F: db $10 ; Direct Copy
#_1584A0: db $38, $38, $7C, $44, $6C, $54, $54, $7C
#_1584A8: db $6C, $7C, $54, $7C, $00, $00, $38, $44
#_1584B0: db $54
#_1584B1: db $22 ; Byte Fill
#_1584B2: db $7C
#_1584B3: db $43 ; Word Fill
#_1584B4: db $48, $78 ; Word Fill
#_1584B6: db $43 ; Word Fill
#_1584B7: db $28, $38 ; Word Fill
#_1584B9: db $03 ; Direct Copy
#_1584BA: db $14, $1C, $08, $08
#_1584BE: db $23 ; Byte Fill
#_1584BF: db $00
#_1584C0: db $0B ; Direct Copy
#_1584C1: db $78, $78, $38, $38, $1C, $08, $00, $00
#_1584C9: db $F2, $8E, $A4, $DC
#_1584CD: db $43 ; Word Fill
#_1584CE: db $48, $78 ; Word Fill
#_1584D0: db $02 ; Direct Copy
#_1584D1: db $2C, $3C, $12
#_1584D4: db $84 ; Repeat Fill
#_1584D5: db $D2, $01 ; Repeat Fill bytes
#_1584D7: db $06 ; Direct Copy
#_1584D8: db $8E, $DC, $78, $78, $3C, $1E, $0C
#_1584DF: db $22 ; Byte Fill
#_1584E0: db $00
#_1584E1: db $09 ; Direct Copy
#_1584E2: db $01, $01, $06, $07, $01, $7E, $06, $07
#_1584EA: db $01, $01
#_1584EC: db $24 ; Byte Fill
#_1584ED: db $00
#_1584EE: db $0C ; Direct Copy
#_1584EF: db $01, $07, $7E, $07, $01, $00, $00, $3F
#_1584F7: db $1C, $7F, $20, $7C, $33
#_1584FC: db $86 ; Repeat Fill
#_1584FD: db $86, $04 ; Repeat Fill bytes
#_1584FF: db $22 ; Byte Fill
#_158500: db $00
#_158501: db $02 ; Direct Copy
#_158502: db $3F, $7F, $7C
#_158505: db $84 ; Repeat Fill
#_158506: db $93, $04 ; Repeat Fill bytes
#_158508: db $05 ; Direct Copy
#_158509: db $FC, $F8, $FE, $04, $3E, $CC
#_15850F: db $86 ; Repeat Fill
#_158510: db $2E, $02 ; Repeat Fill bytes
#_158512: db $22 ; Byte Fill
#_158513: db $00
#_158514: db $02 ; Direct Copy
#_158515: db $FC, $FE, $3E
#_158518: db $84 ; Repeat Fill
#_158519: db $3B, $02 ; Repeat Fill bytes
#_15851B: db $97 ; Repeat Fill
#_15851C: db $F0, $03 ; Repeat Fill bytes
#_15851E: db $23 ; Byte Fill
#_15851F: db $00
#_158520: db $08 ; Direct Copy
#_158521: db $10, $00, $04, $00, $40, $00, $02, $00
#_158529: db $10
#_15852A: db $2A ; Byte Fill
#_15852B: db $00
#_15852C: db $FF ; End of GFX 81

;===================================================================================================

GFX_82:
#_15852D: db $E4, $21 ; EXT Byte Fill
#_15852F: db $00
#_158530: db $05 ; Direct Copy
#_158531: db $0F, $00, $18, $07, $30, $0F
#_158537: db $24 ; Byte Fill
#_158538: db $00
#_158539: db $03 ; Direct Copy
#_15853A: db $0F, $18, $30, $01
#_15853E: db $86 ; Repeat Fill
#_15853F: db $21, $00 ; Repeat Fill bytes
#_158541: db $11 ; Direct Copy
#_158542: db $61, $1F, $C3, $3F, $07, $FF, $0F, $FF
#_15854A: db $01, $0F, $18, $30, $61, $C3, $07, $0F
#_158552: db $FF, $00
#_158554: db $43 ; Word Fill
#_158555: db $00, $FF ; Word Fill
#_158557: db $00 ; Direct Copy
#_158558: db $7F
#_158559: db $22 ; Byte Fill
#_15855A: db $FF
#_15855B: db $0E ; Direct Copy
#_15855C: db $F0, $FF, $C0, $FF, $80, $FF, $FF, $00
#_158564: db $00, $7F, $FF, $F0, $C0, $80, $41
#_15856B: db $44 ; Word Fill
#_15856C: db $3F, $40 ; Word Fill
#_15856E: db $00 ; Direct Copy
#_15856F: db $60
#_158570: db $44 ; Word Fill
#_158571: db $1F, $20 ; Word Fill
#_158573: db $12 ; Direct Copy
#_158574: db $30, $0F, $10, $0F, $41, $40, $40, $60
#_15857C: db $20, $20, $30, $10, $FC, $FF, $FE, $FF
#_158584: db $7F, $FF, $3F
#_158587: db $44 ; Word Fill
#_158588: db $FF, $1F ; Word Fill
#_15858A: db $43 ; Word Fill
#_15858B: db $0F, $FF ; Word Fill
#_15858D: db $07 ; Direct Copy
#_15858E: db $FC, $FE, $7F, $3F, $1F, $1F, $0F, $0F
#_158596: db $43 ; Word Fill
#_158597: db $00, $FF ; Word Fill
#_158599: db $08 ; Direct Copy
#_15859A: db $80, $FF, $E0, $FF, $F8, $FF, $FC, $FF
#_1585A2: db $FE
#_1585A3: db $22 ; Byte Fill
#_1585A4: db $FF
#_1585A5: db $06 ; Direct Copy
#_1585A6: db $00, $00, $80, $E0, $F8, $FC, $FE
#_1585AD: db $84 ; Repeat Fill
#_1585AE: db $81, $00 ; Repeat Fill bytes
#_1585B0: db $00 ; Direct Copy
#_1585B1: db $07
#_1585B2: db $4A ; Word Fill
#_1585B3: db $FF, $00 ; Word Fill
#_1585B5: db $02 ; Direct Copy
#_1585B6: db $1F, $0F, $07
#_1585B9: db $2A ; Byte Fill
#_1585BA: db $00
#_1585BB: db $09 ; Direct Copy
#_1585BC: db $09, $00, $96, $09, $F3, $0C, $B8, $6F
#_1585C4: db $DC, $77
#_1585C6: db $22 ; Byte Fill
#_1585C7: db $00
#_1585C8: db $1C ; Direct Copy
#_1585C9: db $09, $97, $F7, $BB, $DC, $10, $00, $28
#_1585D1: db $10, $68, $30, $98, $70, $3B, $F0, $F7
#_1585D9: db $62, $FD, $A6, $FD, $CE, $10, $28, $68
#_1585E1: db $D8, $BB, $F7, $FD, $FD
#_1585E6: db $25 ; Byte Fill
#_1585E7: db $00
#_1585E8: db $09 ; Direct Copy
#_1585E9: db $03, $00, $0F, $00, $3C, $00, $7B, $03
#_1585F1: db $5F, $14
#_1585F3: db $22 ; Byte Fill
#_1585F4: db $00
#_1585F5: db $04 ; Direct Copy
#_1585F6: db $03, $0F, $3F, $7C, $6B
#_1585FB: db $25 ; Byte Fill
#_1585FC: db $00
#_1585FD: db $09 ; Direct Copy
#_1585FE: db $C0, $00, $F0, $00, $3C, $00, $DA, $C0
#_158606: db $FD, $0C
#_158608: db $22 ; Byte Fill
#_158609: db $00
#_15860A: db $04 ; Direct Copy
#_15860B: db $C0, $F0, $FC, $3E, $F3
#_158610: db $27 ; Byte Fill
#_158611: db $00
#_158612: db $83 ; Repeat Fill
#_158613: db $F6, $00 ; Repeat Fill bytes
#_158615: db $03 ; Direct Copy
#_158616: db $1F, $03, $3C, $04
#_15861A: db $23 ; Byte Fill
#_15861B: db $00
#_15861C: db $03 ; Direct Copy
#_15861D: db $03, $0F, $1C, $3B
#_158621: db $27 ; Byte Fill
#_158622: db $00
#_158623: db $83 ; Repeat Fill
#_158624: db $0E, $01 ; Repeat Fill bytes
#_158626: db $03 ; Direct Copy
#_158627: db $F8, $C0, $3C, $30
#_15862B: db $23 ; Byte Fill
#_15862C: db $00
#_15862D: db $E0, $33 ; EXT Direct Copy
#_15862F: db $C0, $F0, $38, $CC, $03, $00, $06, $03
#_158637: db $0C, $07, $2F, $04, $5F, $08, $5F, $00
#_15863F: db $9F, $01, $DF, $49, $03, $07, $0F, $2C
#_158647: db $7B, $77, $F8, $B2, $C0, $00, $60, $C0
#_15864F: db $30, $E0, $F4, $20, $FA, $10, $FA, $00
#_158657: db $F9, $80, $FB, $92, $C0, $E0, $F0, $34
#_15865F: db $DE, $EE, $1F, $4D
#_158663: db $27 ; Byte Fill
#_158664: db $00
#_158665: db $07 ; Direct Copy
#_158666: db $01, $00, $03, $00, $04, $03, $08, $07
#_15866E: db $23 ; Byte Fill
#_15866F: db $00
#_158670: db $0D ; Direct Copy
#_158671: db $01, $03, $04, $08, $60, $1F, $43, $3F
#_158679: db $47, $3F, $CF, $3F, $8F, $7F
#_15867F: db $43 ; Word Fill
#_158680: db $0F, $FF ; Word Fill
#_158682: db $E0, $46 ; EXT Direct Copy
#_158684: db $0E, $FF, $60, $43, $47, $CF, $8F, $0F
#_15868C: db $0F, $0E, $3F, $FF, $FE, $FF, $FC, $FF
#_158694: db $F8, $FF, $F0, $FF, $E0, $FF, $80, $FF
#_15869C: db $01, $FF, $3F, $FE, $FC, $F8, $F0, $E0
#_1586A4: db $80, $01, $00, $FF, $03, $FF, $0F, $FF
#_1586AC: db $1F, $FF, $3F, $FF, $7F, $FF, $F8, $FF
#_1586B4: db $E0, $FF, $00, $03, $0F, $1F, $3F, $7F
#_1586BC: db $F8, $E0, $10, $0F, $18, $07, $08, $07
#_1586C4: db $0C, $03, $06, $01, $03, $00, $01
#_1586CB: db $22 ; Byte Fill
#_1586CC: db $00
#_1586CD: db $08 ; Direct Copy
#_1586CE: db $10, $18, $08, $0C, $06, $03, $01, $00
#_1586D6: db $0F
#_1586D7: db $46 ; Word Fill
#_1586D8: db $FF, $07 ; Word Fill
#_1586DA: db $08 ; Direct Copy
#_1586DB: db $03, $FF, $01, $FF, $80, $7F, $C0, $3F
#_1586E3: db $0F
#_1586E4: db $22 ; Byte Fill
#_1586E5: db $07
#_1586E6: db $03 ; Direct Copy
#_1586E7: db $03, $01, $80, $C0
#_1586EB: db $2D ; Byte Fill
#_1586EC: db $FF
#_1586ED: db $00 ; Direct Copy
#_1586EE: db $3F
#_1586EF: db $27 ; Byte Fill
#_1586F0: db $FF
#_1586F1: db $00 ; Direct Copy
#_1586F2: db $3F
#_1586F3: db $83 ; Repeat Fill
#_1586F4: db $92, $00 ; Repeat Fill bytes
#_1586F6: db $02 ; Direct Copy
#_1586F7: db $C0, $FF, $F0
#_1586FA: db $28 ; Byte Fill
#_1586FB: db $FF
#_1586FC: db $03 ; Direct Copy
#_1586FD: db $00, $80, $C0, $F0
#_158701: db $23 ; Byte Fill
#_158702: db $FF
#_158703: db $E0, $6C ; EXT Direct Copy
#_158705: db $6F, $39, $3D, $02, $17, $0E, $23, $1D
#_15870D: db $4F, $3C, $5C, $38, $98, $60, $60, $00
#_158715: db $6F, $3D, $1F, $33, $6F, $5C, $98, $60
#_15871D: db $1A, $F4, $F4, $08, $F8, $E0, $90, $E0
#_158725: db $C8, $F0, $E8, $70, $64, $18, $18, $00
#_15872D: db $1A, $F4, $F8, $B0, $D8, $E8, $64, $18
#_158735: db $BC, $30, $FE, $0E, $9B, $0B, $BD, $15
#_15873D: db $FF, $27, $67, $03, $03, $01, $01, $00
#_158745: db $CF, $F1, $F4, $EA, $98, $64, $02, $01
#_15874D: db $3D, $28, $7F, $72, $DA, $D0, $BE, $A8
#_158755: db $FD, $C4, $FD, $80, $E7, $C0, $C2, $00
#_15875D: db $D7, $8D, $2E, $56, $3B, $7F, $25, $C2
#_158765: db $7E, $0E, $7B, $1B, $BD, $15, $BF, $27
#_15876D: db $EF, $03, $47, $01, $01
#_158772: db $22 ; Byte Fill
#_158773: db $00
#_158774: db $19 ; Direct Copy
#_158775: db $71, $64, $EA, $D8, $AC, $46, $01, $00
#_15877D: db $7C, $70, $D6, $C0, $AE, $88, $FA, $D0
#_158785: db $FA, $88, $EA, $C0, $CE, $00, $04, $00
#_15878D: db $8C, $3E
#_15878F: db $43 ; Word Fill
#_158790: db $76, $2E ; Word Fill
#_158792: db $E0, $31 ; EXT Direct Copy
#_158794: db $CA, $04, $FE, $78, $64, $24, $2F, $07
#_15879C: db $2F, $00, $17, $00, $1B, $08, $0F, $03
#_1587A4: db $03, $00, $83, $5B, $38, $3C, $1F, $17
#_1587AC: db $0C, $03, $7F, $1E, $26, $24, $F4, $E0
#_1587B4: db $F4, $00, $E8, $00, $D8, $10, $F0, $C0
#_1587BC: db $C0, $00, $C1, $DA, $1C, $3C, $F8, $E8
#_1587C4: db $30, $C0
#_1587C6: db $83 ; Repeat Fill
#_1587C7: db $24, $00 ; Repeat Fill bytes
#_1587C9: db $04 ; Direct Copy
#_1587CA: db $20, $1F, $60, $1F, $40
#_1587CF: db $44 ; Word Fill
#_1587D0: db $3F, $41 ; Word Fill
#_1587D2: db $0E ; Direct Copy
#_1587D3: db $43, $3F, $18, $30, $20, $60, $40, $41
#_1587DB: db $41, $43, $1C, $FF, $38, $FF, $78
#_1587E2: db $44 ; Word Fill
#_1587E3: db $FF, $F0 ; Word Fill
#_1587E5: db $45 ; Word Fill
#_1587E6: db $E0, $FF ; Word Fill
#_1587E8: db $04 ; Direct Copy
#_1587E9: db $1C, $38, $78, $F0, $F0
#_1587EE: db $22 ; Byte Fill
#_1587EF: db $E0
#_1587F0: db $00 ; Direct Copy
#_1587F1: db $07
#_1587F2: db $44 ; Word Fill
#_1587F3: db $FF, $0F ; Word Fill
#_1587F5: db $49 ; Word Fill
#_1587F6: db $1F, $FF ; Word Fill
#_1587F8: db $02 ; Direct Copy
#_1587F9: db $07, $0F, $0F
#_1587FC: db $24 ; Byte Fill
#_1587FD: db $1F
#_1587FE: db $43 ; Word Fill
#_1587FF: db $C0, $FF ; Word Fill
#_158801: db $00 ; Direct Copy
#_158802: db $83
#_158803: db $46 ; Word Fill
#_158804: db $FF, $87 ; Word Fill
#_158806: db $00 ; Direct Copy
#_158807: db $83
#_158808: db $43 ; Word Fill
#_158809: db $FF, $C0 ; Word Fill
#_15880B: db $01 ; Direct Copy
#_15880C: db $C0, $83
#_15880E: db $22 ; Byte Fill
#_15880F: db $87
#_158810: db $01 ; Direct Copy
#_158811: db $83, $C0
#_158813: db $37 ; Byte Fill
#_158814: db $00
#_158815: db $00 ; Direct Copy
#_158816: db $60
#_158817: db $44 ; Word Fill
#_158818: db $1F, $20 ; Word Fill
#_15881A: db $06 ; Direct Copy
#_15881B: db $30, $0F, $18, $07, $0E, $01, $03
#_158822: db $22 ; Byte Fill
#_158823: db $00
#_158824: db $83 ; Repeat Fill
#_158825: db $73, $00 ; Repeat Fill bytes
#_158827: db $03 ; Direct Copy
#_158828: db $18, $0E, $03, $00
#_15882C: db $4B ; Word Fill
#_15882D: db $00, $FF ; Word Fill
#_15882F: db $02 ; Direct Copy
#_158830: db $FF, $00, $01
#_158833: db $26 ; Byte Fill
#_158834: db $00
#_158835: db $01 ; Direct Copy
#_158836: db $FF, $01
#_158838: db $83 ; Repeat Fill
#_158839: db $7E, $00 ; Repeat Fill bytes
#_15883B: db $00 ; Direct Copy
#_15883C: db $07
#_15883D: db $48 ; Word Fill
#_15883E: db $FF, $00 ; Word Fill
#_158840: db $04 ; Direct Copy
#_158841: db $C0, $3F, $3F, $1F, $07
#_158846: db $23 ; Byte Fill
#_158847: db $00
#_158848: db $00 ; Direct Copy
#_158849: db $C0
#_15884A: db $25 ; Byte Fill
#_15884B: db $00
#_15884C: db $09 ; Direct Copy
#_15884D: db $10, $00, $2C, $10, $12, $0C, $19, $0E
#_158855: db $0F, $03
#_158857: db $22 ; Byte Fill
#_158858: db $00
#_158859: db $04 ; Direct Copy
#_15885A: db $10, $2C, $16, $1B, $0F
#_15885F: db $23 ; Byte Fill
#_158860: db $00
#_158861: db $0A ; Direct Copy
#_158862: db $04, $00, $1A, $04, $26, $1C, $5C, $38
#_15886A: db $78, $00, $80
#_15886D: db $22 ; Byte Fill
#_15886E: db $00
#_15886F: db $05 ; Direct Copy
#_158870: db $04, $1A, $36, $7C, $78, $80
#_158876: db $84 ; Repeat Fill
#_158877: db $86, $01 ; Repeat Fill bytes
#_158879: db $09 ; Direct Copy
#_15887A: db $01, $01, $00, $20, $00, $70, $20, $58
#_158882: db $30, $30
#_158884: db $83 ; Repeat Fill
#_158885: db $92, $01 ; Repeat Fill bytes
#_158887: db $04 ; Direct Copy
#_158888: db $01, $20, $70, $58, $30
#_15888D: db $23 ; Byte Fill
#_15888E: db $00
#_15888F: db $00 ; Direct Copy
#_158890: db $80
#_158891: db $22 ; Byte Fill
#_158892: db $00
#_158893: db $06 ; Direct Copy
#_158894: db $08, $00, $1C, $08, $28, $10, $10
#_15889B: db $22 ; Byte Fill
#_15889C: db $00
#_15889D: db $1D ; Direct Copy
#_15889E: db $80, $00, $08, $1C, $38, $10, $FE, $7F
#_1588A6: db $FD, $BF, $FB, $DF, $F7, $EF, $EF, $F7
#_1588AE: db $DF, $FB, $BF, $FD, $7F, $FE, $FE, $FD
#_1588B6: db $FB, $F7, $EF, $DF, $BF, $7F
#_1588BC: db $97 ; Repeat Fill
#_1588BD: db $20, $04 ; Repeat Fill bytes
#_1588BF: db $F0, $2F ; EXT Repeat Fill
#_1588C1: db $20, $04 ; Repeat Fill bytes
#_1588C3: db $4D ; Word Fill
#_1588C4: db $43, $3F ; Word Fill
#_1588C6: db $01 ; Direct Copy
#_1588C7: db $41, $3F
#_1588C9: db $26 ; Byte Fill
#_1588CA: db $43
#_1588CB: db $00 ; Direct Copy
#_1588CC: db $41
#_1588CD: db $47 ; Word Fill
#_1588CE: db $E0, $FF ; Word Fill
#_1588D0: db $00 ; Direct Copy
#_1588D1: db $F0
#_1588D2: db $44 ; Word Fill
#_1588D3: db $FF, $F8 ; Word Fill
#_1588D5: db $01 ; Direct Copy
#_1588D6: db $FC, $FF
#_1588D8: db $23 ; Byte Fill
#_1588D9: db $E0
#_1588DA: db $03 ; Direct Copy
#_1588DB: db $F0, $F8, $F8, $FC
#_1588DF: db $43 ; Word Fill
#_1588E0: db $0F, $FF ; Word Fill
#_1588E2: db $02 ; Direct Copy
#_1588E3: db $07, $FF, $03
#_1588E6: db $48 ; Word Fill
#_1588E7: db $FF, $00 ; Word Fill
#_1588E9: db $03 ; Direct Copy
#_1588EA: db $0F, $0F, $07, $03
#_1588EE: db $23 ; Byte Fill
#_1588EF: db $00
#_1588F0: db $00 ; Direct Copy
#_1588F1: db $C0
#_1588F2: db $84 ; Repeat Fill
#_1588F3: db $9D, $04 ; Repeat Fill bytes
#_1588F5: db $00 ; Direct Copy
#_1588F6: db $FC
#_1588F7: db $22 ; Byte Fill
#_1588F8: db $FF
#_1588F9: db $85 ; Repeat Fill
#_1588FA: db $7C, $00 ; Repeat Fill bytes
#_1588FC: db $07 ; Direct Copy
#_1588FD: db $C0, $E0, $F0, $FC, $FF, $7F, $3F, $1F
#_158905: db $E4, $47 ; EXT Byte Fill
#_158907: db $00
#_158908: db $00 ; Direct Copy
#_158909: db $7F
#_15890A: db $2E ; Byte Fill
#_15890B: db $00
#_15890C: db $00 ; Direct Copy
#_15890D: db $7F
#_15890E: db $26 ; Byte Fill
#_15890F: db $00
#_158910: db $08 ; Direct Copy
#_158911: db $03, $00, $04, $00, $0F, $04, $0C, $07
#_158919: db $06
#_15891A: db $83 ; Repeat Fill
#_15891B: db $7B, $02 ; Repeat Fill bytes
#_15891D: db $22 ; Byte Fill
#_15891E: db $00
#_15891F: db $06 ; Direct Copy
#_158920: db $03, $04, $0F, $0D, $06, $03, $01
#_158927: db $22 ; Byte Fill
#_158928: db $00
#_158929: db $83 ; Repeat Fill
#_15892A: db $10, $04 ; Repeat Fill bytes
#_15892C: db $06 ; Direct Copy
#_15892D: db $88, $00, $40, $80, $60, $C0, $C0
#_158934: db $23 ; Byte Fill
#_158935: db $00
#_158936: db $05 ; Direct Copy
#_158937: db $08, $1C, $88, $C0, $60, $C0
#_15893D: db $24 ; Byte Fill
#_15893E: db $00
#_15893F: db $83 ; Repeat Fill
#_158940: db $10, $04 ; Repeat Fill bytes
#_158942: db $02 ; Direct Copy
#_158943: db $34, $18, $18
#_158946: db $26 ; Byte Fill
#_158947: db $00
#_158948: db $03 ; Direct Copy
#_158949: db $08, $1C, $34, $18
#_15894D: db $23 ; Byte Fill
#_15894E: db $00
#_15894F: db $06 ; Direct Copy
#_158950: db $20, $00, $58, $20, $7C, $38, $38
#_158957: db $27 ; Byte Fill
#_158958: db $00
#_158959: db $03 ; Direct Copy
#_15895A: db $20, $78, $7C, $38
#_15895E: db $22 ; Byte Fill
#_15895F: db $00
#_158960: db $F0, $5E ; EXT Repeat Fill
#_158962: db $20, $04 ; Repeat Fill bytes
#_158964: db $00 ; Direct Copy
#_158965: db $7F
#_158966: db $FF ; End of GFX 82

;===================================================================================================

GFX_83:
#_158967: db $03 ; Direct Copy
#_158968: db $00, $00, $20, $00
#_15896C: db $43 ; Word Fill
#_15896D: db $50, $20 ; Word Fill
#_15896F: db $12 ; Direct Copy
#_158970: db $93, $60, $EF, $53, $D7, $6B, $66, $3B
#_158978: db $00, $20, $70, $70, $F3, $DF, $EF, $7F
#_158980: db $00, $00, $04
#_158983: db $44 ; Word Fill
#_158984: db $00, $0E ; Word Fill
#_158986: db $E0, $41 ; EXT Direct Copy
#_158988: db $CD, $02, $F3, $CE, $F3, $DE, $7E, $DC
#_158990: db $00, $04, $0A, $0A, $CB, $FF, $FF, $FE
#_158998: db $03, $00, $0F, $03, $1C, $0C, $34, $10
#_1589A0: db $6C, $20, $5E, $02, $9E, $02, $FD, $7D
#_1589A8: db $03, $0C, $13, $2F, $5B, $79, $F1, $82
#_1589B0: db $80, $00, $CC, $80, $7A, $44, $3E, $20
#_1589B8: db $7F, $60, $FE, $E0, $FA, $C4, $EE, $90
#_1589C0: db $80, $4C, $B2, $D6, $99, $12, $22, $66
#_1589C8: db $00, $00
#_1589CA: db $8D ; Repeat Fill
#_1589CB: db $30, $00 ; Repeat Fill bytes
#_1589CD: db $00 ; Direct Copy
#_1589CE: db $00
#_1589CF: db $86 ; Repeat Fill
#_1589D0: db $40, $00 ; Repeat Fill bytes
#_1589D2: db $17 ; Direct Copy
#_1589D3: db $00, $00, $80, $00, $F0, $80, $78, $40
#_1589DB: db $38, $20, $78, $40, $F8, $C0, $F4, $C8
#_1589E3: db $00, $80, $70, $A8, $D8, $A8, $28, $24
#_1589EB: db $83 ; Repeat Fill
#_1589EC: db $60, $00 ; Repeat Fill bytes
#_1589EE: db $13 ; Direct Copy
#_1589EF: db $07, $03, $0E, $07, $1D, $0E, $7A, $0F
#_1589F7: db $99, $7F, $7F, $37, $00, $03, $07, $0F
#_1589FF: db $1E, $7F, $FF, $7F
#_158A03: db $83 ; Repeat Fill
#_158A04: db $78, $00 ; Repeat Fill bytes
#_158A06: db $14 ; Direct Copy
#_158A07: db $E0, $80, $70, $E0, $B8, $70, $5E, $F0
#_158A0F: db $B9, $DE, $FE, $EC, $00, $80, $E0, $F0
#_158A17: db $78, $FE, $DF, $FE, $00
#_158A1C: db $44 ; Word Fill
#_158A1D: db $00, $01 ; Word Fill
#_158A1F: db $01 ; Direct Copy
#_158A20: db $02, $00
#_158A22: db $43 ; Word Fill
#_158A23: db $03, $01 ; Word Fill
#_158A25: db $E0, $23 ; EXT Direct Copy
#_158A27: db $07, $00, $0F, $06, $00, $01, $01, $03
#_158A2F: db $02, $02, $07, $09, $C0, $00, $E0, $C0
#_158A37: db $33, $20, $DF, $D1, $FE, $67, $FD, $1E
#_158A3F: db $FA, $7F, $E5, $FE, $C0, $20, $D3, $2F
#_158A47: db $9F, $FE, $FF, $FE
#_158A4B: db $23 ; Byte Fill
#_158A4C: db $00
#_158A4D: db $83 ; Repeat Fill
#_158A4E: db $C4, $00 ; Repeat Fill bytes
#_158A50: db $17 ; Direct Copy
#_158A51: db $05, $01, $07, $02, $07, $00, $05, $01
#_158A59: db $00, $00, $01, $03, $06, $05, $07, $06
#_158A61: db $03, $00, $0F, $01, $DE, $07, $FD, $9E
#_158A69: db $83 ; Repeat Fill
#_158A6A: db $E4, $00 ; Repeat Fill bytes
#_158A6C: db $0B ; Direct Copy
#_158A6D: db $F7, $5F, $FF, $64, $03, $0F, $DF, $7E
#_158A75: db $FF, $FE, $FF, $FF
#_158A79: db $25 ; Byte Fill
#_158A7A: db $00
#_158A7B: db $09 ; Direct Copy
#_158A7C: db $01, $00, $02, $01, $04, $03, $08, $07
#_158A84: db $09, $07
#_158A86: db $22 ; Byte Fill
#_158A87: db $00
#_158A88: db $19 ; Direct Copy
#_158A89: db $01, $02, $04, $08, $09, $03, $00, $1C
#_158A91: db $03, $F2, $0F, $1D, $EF, $6A, $FF, $F5
#_158A99: db $FF, $BA, $FF, $1D, $FF, $03, $1C, $F3
#_158AA1: db $1F, $6F
#_158AA3: db $22 ; Byte Fill
#_158AA4: db $FF
#_158AA5: db $13 ; Direct Copy
#_158AA6: db $F0, $00, $0C, $F0, $94, $F8, $0A, $FC
#_158AAE: db $85, $FE, $02, $FF, $87, $FF, $56, $FF
#_158AB6: db $F0, $0C, $F4, $FA
#_158ABA: db $62 ; Increasing Fill
#_158ABB: db $FD ; Increasing Fill Start
#_158ABC: db $00 ; Direct Copy
#_158ABD: db $FE
#_158ABE: db $27 ; Byte Fill
#_158ABF: db $00
#_158AC0: db $07 ; Direct Copy
#_158AC1: db $C0, $00, $60, $80, $B0, $C0, $50, $E0
#_158AC9: db $23 ; Byte Fill
#_158ACA: db $00
#_158ACB: db $18 ; Direct Copy
#_158ACC: db $C0, $60, $B0, $50, $7C, $37, $3E, $0F
#_158AD4: db $3F, $13, $7F, $19, $F7, $1D, $9A, $6F
#_158ADC: db $FE, $63, $FF, $1D, $7F, $3F, $3F, $7B
#_158AE4: db $BD
#_158AE5: db $22 ; Byte Fill
#_158AE6: db $FF
#_158AE7: db $14 ; Direct Copy
#_158AE8: db $3E, $E8, $7E, $F0, $FE, $C0, $FE, $90
#_158AF0: db $EF, $B0, $57, $E0, $77, $E0, $F7, $80
#_158AF8: db $FE, $FA, $FA, $DA, $BB
#_158AFD: db $22 ; Byte Fill
#_158AFE: db $F9
#_158AFF: db $E0, $3C ; EXT Direct Copy
#_158B01: db $7F, $1F, $1E, $00, $12, $0C, $0B, $05
#_158B09: db $09, $06, $04, $00, $0B, $03, $07, $00
#_158B11: db $60, $1F, $1F, $0E, $0F, $07, $0C, $07
#_158B19: db $72, $4C, $64, $58, $7C, $40, $EC, $C8
#_158B21: db $EC, $08, $F8, $D0, $F0, $C0, $E0, $00
#_158B29: db $A2, $A4, $BC, $34, $F4, $28, $30, $E0
#_158B31: db $FF, $7D, $7C, $10, $19, $09, $1F, $0E
#_158B39: db $3F, $11, $3D, $03, $07
#_158B3E: db $22 ; Byte Fill
#_158B3F: db $00
#_158B40: db $E0, $31 ; EXT Direct Copy
#_158B42: db $82, $6F, $16, $11, $2E, $3E, $07, $00
#_158B4A: db $F4, $88, $C4, $B8, $EC, $50, $EC, $D0
#_158B52: db $DE, $88, $DE, $1C, $9C, $18, $78, $00
#_158B5A: db $54, $44, $AC, $2C, $76, $E2, $E4, $78
#_158B62: db $7E, $29, $3C, $07, $7F, $23, $7F, $10
#_158B6A: db $7E, $2B, $3F, $17, $1F, $03, $07, $00
#_158B72: db $7F, $3F
#_158B74: db $22 ; Byte Fill
#_158B75: db $7F
#_158B76: db $14 ; Direct Copy
#_158B77: db $3F, $1F, $07, $7E, $94, $3C, $C8, $F6
#_158B7F: db $D8, $E2, $3C, $76, $BC, $FC, $B8, $F8
#_158B87: db $A0, $E0, $00, $FE, $FC
#_158B8C: db $22 ; Byte Fill
#_158B8D: db $FE
#_158B8E: db $04 ; Direct Copy
#_158B8F: db $FC, $F8, $E0, $0B, $03
#_158B94: db $43 ; Word Fill
#_158B95: db $09, $01 ; Word Fill
#_158B97: db $11 ; Direct Copy
#_158B98: db $05, $00, $05, $01, $1B, $03, $37, $06
#_158BA0: db $1E, $00, $0C, $0E, $0E, $07, $06, $1C
#_158BA8: db $29, $1E
#_158BAA: db $83 ; Repeat Fill
#_158BAB: db $14, $01 ; Repeat Fill bytes
#_158BAD: db $17 ; Direct Copy
#_158BAE: db $FF, $B0, $FF, $A2, $FE, $05, $FF, $04
#_158BB6: db $3F, $02, $07, $00, $FF, $FF, $7C, $73
#_158BBE: db $E7, $F7, $3B, $07, $05, $01, $09, $00
#_158BC6: db $44 ; Word Fill
#_158BC7: db $0B, $02 ; Word Fill
#_158BC9: db $00 ; Direct Copy
#_158BCA: db $03
#_158BCB: db $85 ; Repeat Fill
#_158BCC: db $4A, $02 ; Repeat Fill bytes
#_158BCE: db $12 ; Direct Copy
#_158BCF: db $06, $0F, $0D, $0D, $0C, $1C, $29, $1E
#_158BD7: db $FF, $30, $7F, $22, $7E, $05, $3F, $04
#_158BDF: db $9F, $02, $87
#_158BE2: db $24 ; Byte Fill
#_158BE3: db $00
#_158BE4: db $E0, $4C ; EXT Direct Copy
#_158BE6: db $FC, $73, $67, $37, $9B, $87, $00, $00
#_158BEE: db $11, $0F, $14, $0F, $2E, $1D, $2B, $1E
#_158BF6: db $41, $3F, $51, $3F, $AA, $7F, $95, $7F
#_158BFE: db $11, $14, $2E, $2F, $5F, $5F, $BF, $BF
#_158C06: db $AA, $FF, $5D, $FF, $BE, $FF, $1F, $FF
#_158C0E: db $9F, $7F, $8F, $7F, $C3, $3F, $F0, $0F
#_158C16: db $FF, $FF, $BF, $1F, $9F, $8F, $C3, $F0
#_158C1E: db $AC, $FF, $7B, $FC, $B3, $FD, $C7, $F8
#_158C26: db $9F, $E1, $FF, $FD, $FA, $FF, $D5, $FF
#_158C2E: db $FC, $FB, $F3, $C7, $9F
#_158C33: db $22 ; Byte Fill
#_158C34: db $FF
#_158C35: db $07 ; Direct Copy
#_158C36: db $E8, $70, $F4, $F8, $84, $F8, $04, $F8
#_158C3E: db $43 ; Word Fill
#_158C3F: db $02, $FC ; Word Fill
#_158C41: db $07 ; Direct Copy
#_158C42: db $8A, $FC, $52, $FC, $E8, $F4, $F4, $FC
#_158C4A: db $23 ; Byte Fill
#_158C4B: db $FA
#_158C4C: db $05 ; Direct Copy
#_158C4D: db $7F, $22, $E3, $5D, $DD, $7F
#_158C53: db $44 ; Word Fill
#_158C54: db $FF, $77 ; Word Fill
#_158C56: db $00 ; Direct Copy
#_158C57: db $63
#_158C58: db $43 ; Word Fill
#_158C59: db $FF, $77 ; Word Fill
#_158C5B: db $02 ; Direct Copy
#_158C5C: db $63, $DD, $E3
#_158C5F: db $24 ; Byte Fill
#_158C60: db $C1
#_158C61: db $E0, $5F ; EXT Direct Copy
#_158C63: db $F3, $20, $B3, $60, $DB, $70, $FB, $30
#_158C6B: db $FF, $0A, $F9, $48, $FF, $20, $FD, $6E
#_158C73: db $FD, $FD, $FF, $FF, $F5, $B7, $FF, $FF
#_158C7B: db $7D, $00, $BF, $41, $5E, $26, $3C, $08
#_158C83: db $3E, $08, $7E, $38, $77, $31, $7A, $28
#_158C8B: db $7D, $86, $49, $37, $33, $41, $4E, $57
#_158C93: db $80, $00, $FE, $80, $7D, $62, $3A, $14
#_158C9B: db $7C, $10, $7E, $1C, $EF, $8C, $5D, $14
#_158CA3: db $80, $7E, $91, $EA, $CC, $82, $73, $EB
#_158CAB: db $01, $00, $07, $01, $0E, $06, $3C, $0C
#_158CB3: db $7C, $04, $5E, $22, $2F, $11, $2D, $13
#_158CBB: db $01, $06, $09, $33, $5B, $45, $22, $20
#_158CC3: db $84 ; Repeat Fill
#_158CC4: db $AA, $00 ; Repeat Fill bytes
#_158CC6: db $12 ; Direct Copy
#_158CC7: db $60, $38, $30, $3E, $30, $7F, $40, $FE
#_158CCF: db $80, $FD, $80, $80, $60, $90, $C8, $CE
#_158CD7: db $B9, $42, $07
#_158CDA: db $27 ; Byte Fill
#_158CDB: db $00
#_158CDC: db $07 ; Direct Copy
#_158CDD: db $01, $00, $17, $01, $2F, $04, $5C, $10
#_158CE5: db $23 ; Byte Fill
#_158CE6: db $00
#_158CE7: db $03 ; Direct Copy
#_158CE8: db $01, $16, $3B, $6F
#_158CEC: db $27 ; Byte Fill
#_158CED: db $00
#_158CEE: db $07 ; Direct Copy
#_158CEF: db $98, $00, $F4, $90, $FA, $28, $3E, $04
#_158CF7: db $23 ; Byte Fill
#_158CF8: db $00
#_158CF9: db $03 ; Direct Copy
#_158CFA: db $98, $6C, $D6, $FA
#_158CFE: db $23 ; Byte Fill
#_158CFF: db $00
#_158D00: db $05 ; Direct Copy
#_158D01: db $01, $00, $03, $01, $16, $02
#_158D07: db $83 ; Repeat Fill
#_158D08: db $9C, $03 ; Repeat Fill bytes
#_158D0A: db $02 ; Direct Copy
#_158D0B: db $7E, $2E, $00
#_158D0E: db $62 ; Increasing Fill
#_158D0F: db $00 ; Increasing Fill Start
#_158D10: db $03 ; Direct Copy
#_158D11: db $15, $3B, $6F, $51
#_158D15: db $23 ; Byte Fill
#_158D16: db $00
#_158D17: db $13 ; Direct Copy
#_158D18: db $80, $00, $C0, $80, $68, $40, $F4, $20
#_158D20: db $3A, $08, $7E, $74, $00, $00, $80, $40
#_158D28: db $A8, $DC, $F6, $8A
#_158D2C: db $23 ; Byte Fill
#_158D2D: db $00
#_158D2E: db $88 ; Repeat Fill
#_158D2F: db $F4, $00 ; Repeat Fill bytes
#_158D31: db $00 ; Direct Copy
#_158D32: db $01
#_158D33: db $87 ; Repeat Fill
#_158D34: db $FE, $00 ; Repeat Fill bytes
#_158D36: db $00 ; Direct Copy
#_158D37: db $06
#_158D38: db $84 ; Repeat Fill
#_158D39: db $07, $01 ; Repeat Fill bytes
#_158D3B: db $00 ; Direct Copy
#_158D3C: db $FE
#_158D3D: db $8C ; Repeat Fill
#_158D3E: db $0D, $01 ; Repeat Fill bytes
#_158D40: db $00 ; Direct Copy
#_158D41: db $FF
#_158D42: db $84 ; Repeat Fill
#_158D43: db $1B, $01 ; Repeat Fill bytes
#_158D45: db $E0, $3F ; EXT Direct Copy
#_158D47: db $AA, $7F, $B5, $7F, $5B, $3F, $57, $3F
#_158D4F: db $2F, $1E, $21, $1E, $27, $18, $1C, $03
#_158D57: db $BF, $BF, $5F, $5F, $2F, $21, $27, $1C
#_158D5F: db $FC, $83, $FF, $80, $DC, $A3, $84, $7B
#_158D67: db $EC, $7B, $CE, $F9, $8E, $F9, $57, $FC
#_158D6F: db $FC, $FF, $DC, $84, $FC, $FE, $FE, $FF
#_158D77: db $6A, $FF, $B5, $7F, $7E, $FF, $BF, $FF
#_158D7F: db $5F, $FF, $2F, $FF, $1A, $FF, $05, $FF
#_158D87: db $43 ; Word Fill
#_158D88: db $7F, $BF ; Word Fill
#_158D8A: db $E0, $2E ; EXT Direct Copy
#_158D8C: db $5F, $2F, $1A, $05, $AA, $FC, $52, $FC
#_158D94: db $EA, $FC, $D4, $F8, $C4, $B8, $C8, $B0
#_158D9C: db $D0, $A0, $60, $80, $FA, $FA, $EA, $D4
#_158DA4: db $C4, $C8, $D0, $60, $FF, $3E, $FF, $5C
#_158DAC: db $FF, $40, $7F, $38, $77, $3F, $38, $1F
#_158DB4: db $1F, $07, $07, $00, $E3, $FF, $FF
#_158DBB: db $84 ; Repeat Fill
#_158DBC: db $23, $02 ; Repeat Fill bytes
#_158DBE: db $E0, $3A ; EXT Direct Copy
#_158DC0: db $FF, $70, $DF, $34, $FF, $02, $FE, $1C
#_158DC8: db $CE, $FC, $6C, $98, $F8, $C0, $E0, $00
#_158DD0: db $FF, $FB, $FF, $FE, $FE, $9C, $D8, $E0
#_158DD8: db $3F, $07, $1F, $0B, $1F, $00, $26, $05
#_158DE0: db $2F, $0F, $47, $06, $7F, $0E, $3E, $00
#_158DE8: db $38, $14, $1F, $3B, $30, $79, $71, $3E
#_158DF0: db $F9, $E8, $FA, $C8, $FC, $20, $3C, $F8
#_158DF8: db $78, $F0, $F0
#_158DFB: db $24 ; Byte Fill
#_158DFC: db $00
#_158DFD: db $E0, $2A ; EXT Direct Copy
#_158DFF: db $17, $36, $DC, $C4, $88, $F0, $00, $00
#_158E07: db $21, $1F, $13, $0D, $1E, $02, $3F, $1F
#_158E0F: db $2F, $0F, $27, $06, $3F, $06, $1E, $00
#_158E17: db $20, $12, $1D, $20, $30, $39, $39, $1E
#_158E1F: db $BD, $C4, $8D, $F4, $4F, $36, $7E, $40
#_158E27: db $FC, $F0, $F8
#_158E2A: db $24 ; Byte Fill
#_158E2B: db $00
#_158E2C: db $14 ; Direct Copy
#_158E2D: db $0B, $0B, $C9, $BE, $0C, $F8, $00, $00
#_158E35: db $FE, $4E, $FB, $1B, $BD, $15, $BF, $21
#_158E3D: db $EE, $00, $47, $01, $01
#_158E42: db $22 ; Byte Fill
#_158E43: db $00
#_158E44: db $E0, $2C ; EXT Direct Copy
#_158E46: db $B1, $E4, $EA, $D8, $AB, $46, $01, $00
#_158E4E: db $7E, $74, $D4, $C0, $AE, $88, $FA, $90
#_158E56: db $7A, $08, $EA, $80, $8E, $00, $04, $00
#_158E5E: db $8A, $3C, $76, $2E, $F6, $6E, $8A, $04
#_158E66: db $7B, $0B, $5D, $15, $7F, $11, $BE, $20
#_158E6E: db $A7, $01, $E1, $00, $40
#_158E73: db $22 ; Byte Fill
#_158E74: db $00
#_158E75: db $14 ; Direct Copy
#_158E76: db $74, $6A, $68, $DB, $E6, $A1, $40, $00
#_158E7E: db $DE, $D0, $BA, $A8, $FE, $88, $7D, $04
#_158E86: db $E5, $80, $87, $00, $02
#_158E8B: db $22 ; Byte Fill
#_158E8C: db $00
#_158E8D: db $06 ; Direct Copy
#_158E8E: db $2E, $56, $16, $DB, $67, $85, $02
#_158E95: db $83 ; Repeat Fill
#_158E96: db $19, $00 ; Repeat Fill bytes
#_158E98: db $07 ; Direct Copy
#_158E99: db $02, $0E, $04, $0A, $00, $06, $00, $01
#_158EA1: db $24 ; Byte Fill
#_158EA2: db $00
#_158EA3: db $07 ; Direct Copy
#_158EA4: db $07, $0D, $0B, $0F, $07, $01, $00, $00
#_158EAC: db $84 ; Repeat Fill
#_158EAD: db $5C, $02 ; Repeat Fill bytes
#_158EAF: db $14 ; Direct Copy
#_158EB0: db $85, $FF, $84, $FF, $C2, $67, $40, $E0
#_158EB8: db $00, $40, $00, $7C, $73, $67, $77, $3B
#_158EC0: db $A7, $A0, $40, $1E, $01
#_158EC5: db $43 ; Word Fill
#_158EC6: db $07, $00 ; Word Fill
#_158EC8: db $00 ; Direct Copy
#_158EC9: db $03
#_158ECA: db $28 ; Byte Fill
#_158ECB: db $00
#_158ECC: db $03 ; Direct Copy
#_158ECD: db $1E, $07, $07, $03
#_158ED1: db $23 ; Byte Fill
#_158ED2: db $00
#_158ED3: db $03 ; Direct Copy
#_158ED4: db $AF, $FC, $57, $FF
#_158ED8: db $43 ; Word Fill
#_158ED9: db $CF, $3F ; Word Fill
#_158EDB: db $04 ; Direct Copy
#_158EDC: db $E7, $1F, $38, $07, $07
#_158EE1: db $22 ; Byte Fill
#_158EE2: db $00
#_158EE3: db $14 ; Direct Copy
#_158EE4: db $FF, $7F, $DF, $CF, $E7, $38, $07, $00
#_158EEC: db $E2, $1F, $F0, $0F, $3F, $C0, $80, $FF
#_158EF4: db $07, $F8, $38, $C0, $C0
#_158EF9: db $22 ; Byte Fill
#_158EFA: db $00
#_158EFB: db $05 ; Direct Copy
#_158EFC: db $E2, $F0, $3F, $80, $07, $38
#_158F02: db $43 ; Word Fill
#_158F03: db $C0, $00 ; Word Fill
#_158F05: db $04 ; Direct Copy
#_158F06: db $40, $80, $C0, $00, $80
#_158F0B: db $28 ; Byte Fill
#_158F0C: db $00
#_158F0D: db $03 ; Direct Copy
#_158F0E: db $C0, $40, $C0, $80
#_158F12: db $23 ; Byte Fill
#_158F13: db $00
#_158F14: db $FF ; End of GFX 83

;===================================================================================================

GFX_84:
#_158F15: db $E0, $65 ; EXT Direct Copy
#_158F17: db $1C, $00, $3E, $1C, $13, $0E, $09, $03
#_158F1F: db $06, $03, $6E, $03, $D7, $4B, $FB, $2D
#_158F27: db $1C, $3E, $13, $0D, $07, $6F, $BB, $9D
#_158F2F: db $38, $00, $7C, $38, $C8, $60, $90, $C0
#_158F37: db $60, $C0, $36, $C0, $6D, $D4, $CF, $B4
#_158F3F: db $38, $7C, $D8, $B0, $E0, $F6, $DB, $B9
#_158F47: db $38, $00, $64, $38, $77, $3C, $37, $18
#_158F4F: db $3F, $18, $3A, $0D, $79, $1E, $6F, $28
#_158F57: db $38, $7C, $7F, $3C, $3C, $1D, $5F, $5E
#_158F5F: db $00, $00, $30, $00, $F8, $00, $FC, $20
#_158F67: db $B4, $58, $1C, $E0, $9C, $78, $FE, $18
#_158F6F: db $00, $30, $F8, $7C, $7C, $FC, $FC, $7C
#_158F77: db $6D, $00, $73, $04, $FB, $04
#_158F7D: db $43 ; Word Fill
#_158F7E: db $FF, $00 ; Word Fill
#_158F80: db $43 ; Word Fill
#_158F81: db $7F, $00 ; Word Fill
#_158F83: db $09 ; Direct Copy
#_158F84: db $3F, $00, $60, $50, $E9, $F7, $F6, $76
#_158F8C: db $7B, $3F
#_158F8E: db $43 ; Word Fill
#_158F8F: db $80, $00 ; Word Fill
#_158F91: db $00 ; Direct Copy
#_158F92: db $F0
#_158F93: db $44 ; Word Fill
#_158F94: db $00, $F8 ; Word Fill
#_158F96: db $1C ; Direct Copy
#_158F97: db $E4, $18, $CA, $34, $86, $78, $80, $80
#_158F9F: db $F0, $F8, $F8, $7C, $76, $FA, $10, $00
#_158FA7: db $08, $00, $47, $08, $1B, $24, $07, $18
#_158FAF: db $23, $04, $0F, $00, $0F
#_158FB4: db $23 ; Byte Fill
#_158FB5: db $00
#_158FB6: db $04 ; Direct Copy
#_158FB7: db $01, $03, $02, $0E, $0F
#_158FBC: db $25 ; Byte Fill
#_158FBD: db $00
#_158FBE: db $00 ; Direct Copy
#_158FBF: db $F0
#_158FC0: db $44 ; Word Fill
#_158FC1: db $00, $F8 ; Word Fill
#_158FC3: db $83 ; Repeat Fill
#_158FC4: db $82, $00 ; Repeat Fill bytes
#_158FC6: db $22 ; Byte Fill
#_158FC7: db $00
#_158FC8: db $84 ; Repeat Fill
#_158FC9: db $8A, $00 ; Repeat Fill bytes
#_158FCB: db $03 ; Direct Copy
#_158FCC: db $0D, $02, $19, $66
#_158FD0: db $83 ; Repeat Fill
#_158FD1: db $98, $00 ; Repeat Fill bytes
#_158FD3: db $06 ; Direct Copy
#_158FD4: db $07, $00, $47, $00, $DF, $00, $FF
#_158FDB: db $84 ; Repeat Fill
#_158FDC: db $A1, $00 ; Repeat Fill bytes
#_158FDE: db $06 ; Direct Copy
#_158FDF: db $06, $47, $DF, $FF, $00, $00, $E0
#_158FE6: db $84 ; Repeat Fill
#_158FE7: db $7B, $00 ; Repeat Fill bytes
#_158FE9: db $83 ; Repeat Fill
#_158FEA: db $82, $00 ; Repeat Fill bytes
#_158FEC: db $0B ; Direct Copy
#_158FED: db $85, $7A, $F3, $0C, $00, $E0, $F0, $F8
#_158FF5: db $7C, $76, $FB, $FD
#_158FF9: db $43 ; Word Fill
#_158FFA: db $5C, $0F ; Word Fill
#_158FFC: db $43 ; Word Fill
#_158FFD: db $1E, $0D ; Word Fill
#_158FFF: db $0B ; Direct Copy
#_159000: db $5E, $0D, $1E, $0D, $1F, $0F, $2F, $07
#_159008: db $1F, $1F, $1D, $1D
#_15900C: db $22 ; Byte Fill
#_15900D: db $1F
#_15900E: db $04 ; Direct Copy
#_15900F: db $0F, $3A, $F0, $1A, $F0
#_159014: db $43 ; Word Fill
#_159015: db $58, $B0 ; Word Fill
#_159017: db $0B ; Direct Copy
#_159018: db $5A, $B0, $58, $B0, $78, $F0, $B4, $E0
#_159020: db $F8, $F8, $B8, $B8
#_159024: db $22 ; Byte Fill
#_159025: db $F8
#_159026: db $15 ; Direct Copy
#_159027: db $F0, $70, $3F, $72, $3D, $7A, $35, $B9
#_15902F: db $16, $7D, $1A, $5C, $0B, $1E, $0F, $1F
#_159037: db $0F, $7F, $7D, $75, $37, $3F
#_15903D: db $22 ; Byte Fill
#_15903E: db $1F
#_15903F: db $03 ; Direct Copy
#_159040: db $D0, $80, $C8, $80
#_159044: db $43 ; Word Fill
#_159045: db $68, $C0 ; Word Fill
#_159047: db $06 ; Direct Copy
#_159048: db $60, $C0, $64, $C0, $E4, $C0, $68
#_15904F: db $22 ; Byte Fill
#_159050: db $C0
#_159051: db $25 ; Byte Fill
#_159052: db $E0
#_159053: db $0B ; Direct Copy
#_159054: db $0F, $00, $1F, $0F, $38, $1F, $32, $1D
#_15905C: db $38, $1F, $1D, $0E
#_159060: db $43 ; Word Fill
#_159061: db $0E, $07 ; Word Fill
#_159063: db $1C ; Direct Copy
#_159064: db $0F, $1F, $3F, $3D, $3F, $1E, $0F, $0F
#_15906C: db $00, $00, $C0, $00, $E0, $C0, $30, $E0
#_159074: db $70, $A0, $38, $D0, $B8, $50, $98, $70
#_15907C: db $00, $C0, $E0, $F0, $B0
#_159081: db $22 ; Byte Fill
#_159082: db $F8
#_159083: db $E0, $3C ; EXT Direct Copy
#_159085: db $7F, $17, $7F, $18, $1D, $0E, $3E, $1D
#_15908D: db $2F, $18, $1F, $0C, $2C, $18, $18, $00
#_159095: db $3F, $3E, $1F, $3D, $3E, $1F, $3C, $18
#_15909D: db $9E, $E8, $FE, $18, $A8, $70, $74, $B8
#_1590A5: db $F4, $18, $F8, $30, $34, $18, $18, $00
#_1590AD: db $FC, $7C, $F8, $BC, $7C, $F8, $3C, $18
#_1590B5: db $7B, $27, $76, $0D, $7F, $2F, $BF, $43
#_1590BD: db $C7, $26, $27, $1E, $1E
#_1590C2: db $22 ; Byte Fill
#_1590C3: db $00
#_1590C4: db $1E ; Direct Copy
#_1590C5: db $5F, $7F, $7F, $FD, $79, $3F, $1E, $00
#_1590CD: db $DF, $E4, $6D, $B4, $FE, $F0, $FD, $C2
#_1590D5: db $E2, $64, $E4, $78, $78, $00, $40, $00
#_1590DD: db $F9, $BB, $FE, $BF, $9E, $FC, $70
#_1590E4: db $44 ; Word Fill
#_1590E5: db $00, $3F ; Word Fill
#_1590E7: db $08 ; Direct Copy
#_1590E8: db $1B, $00, $1C, $00, $17, $00, $12, $00
#_1590F0: db $0C
#_1590F1: db $22 ; Byte Fill
#_1590F2: db $00
#_1590F3: db $12 ; Direct Copy
#_1590F4: db $3F, $3C, $1C, $1F, $1F, $1E, $0C, $00
#_1590FC: db $B5, $4A, $C9, $36, $65, $1A, $FD, $02
#_159104: db $A2, $00, $C0
#_159107: db $24 ; Byte Fill
#_159108: db $00
#_159109: db $00 ; Direct Copy
#_15910A: db $FB
#_15910B: db $22 ; Byte Fill
#_15910C: db $FF
#_15910D: db $06 ; Direct Copy
#_15910E: db $E2, $C0, $00, $00, $1F, $00, $7F
#_159115: db $44 ; Word Fill
#_159116: db $00, $FF ; Word Fill
#_159118: db $00 ; Direct Copy
#_159119: db $7C
#_15911A: db $86 ; Repeat Fill
#_15911B: db $E7, $01 ; Repeat Fill bytes
#_15911D: db $09 ; Direct Copy
#_15911E: db $1F, $7F, $FD, $E2, $7F, $1F, $1E, $0C
#_159126: db $86, $78
#_159128: db $8A ; Repeat Fill
#_159129: db $F8, $01 ; Repeat Fill bytes
#_15912B: db $22 ; Byte Fill
#_15912C: db $00
#_15912D: db $01 ; Direct Copy
#_15912E: db $FA, $FB
#_159130: db $22 ; Byte Fill
#_159131: db $FF
#_159132: db $E0, $25 ; EXT Direct Copy
#_159134: db $E2, $C0, $00, $7F, $00, $7E, $00, $FF
#_15913C: db $00, $7D, $00, $3C, $00, $1B, $00, $11
#_159144: db $00, $0E, $00, $7F, $5B, $E6, $7E, $3F
#_15914C: db $1F, $1F, $0E, $9D, $62, $CA, $30, $70
#_159154: db $00, $E0, $00, $D0, $00, $E0
#_15915A: db $24 ; Byte Fill
#_15915B: db $00
#_15915C: db $19 ; Direct Copy
#_15915D: db $FF, $FA, $F0, $60, $70, $E0, $00, $00
#_159165: db $2F, $07, $4F, $07, $27, $03, $0F, $03
#_15916D: db $1D, $07, $3D, $1F, $3B, $1C, $1C, $00
#_159175: db $0F, $0F
#_159177: db $83 ; Repeat Fill
#_159178: db $5F, $01 ; Repeat Fill bytes
#_15917A: db $1A ; Direct Copy
#_15917B: db $3F, $1C, $34, $E0, $B2, $E0, $E4, $C0
#_159183: db $F0, $C0, $98, $E0, $E4, $F8, $F4, $38
#_15918B: db $38, $00, $F0, $F0, $E0, $F0, $F8, $FC
#_159193: db $FC, $38, $0E
#_159196: db $44 ; Word Fill
#_159197: db $07, $2F ; Word Fill
#_159199: db $09 ; Direct Copy
#_15919A: db $0F, $03, $19, $07, $35, $1F, $3F, $1E
#_1591A2: db $1E, $00
#_1591A4: db $23 ; Byte Fill
#_1591A5: db $0F
#_1591A6: db $16 ; Direct Copy
#_1591A7: db $1F, $3F, $3F, $1E, $60, $C0, $E8, $C0
#_1591AF: db $F0, $C0, $EC, $D0, $8A, $F0, $E8, $F0
#_1591B7: db $F8, $20, $30, $00, $E0, $E0, $F0
#_1591BE: db $23 ; Byte Fill
#_1591BF: db $F8
#_1591C0: db $00 ; Direct Copy
#_1591C1: db $30
#_1591C2: db $43 ; Word Fill
#_1591C3: db $07, $03 ; Word Fill
#_1591C5: db $1F ; Direct Copy
#_1591C6: db $1F, $01, $27, $19, $73, $0F, $7F, $0F
#_1591CE: db $3F, $00, $38, $00, $07, $07, $1F, $3F
#_1591D6: db $7F, $7F, $3F, $38, $18, $F0, $D8, $F0
#_1591DE: db $F8, $F0, $F0, $E0, $30, $C0, $C8, $F0
#_1591E6: db $83 ; Repeat Fill
#_1591E7: db $D2, $01 ; Repeat Fill bytes
#_1591E9: db $22 ; Byte Fill
#_1591EA: db $F8
#_1591EB: db $11 ; Direct Copy
#_1591EC: db $F0, $F0, $F8, $FC, $78, $00, $00, $3C
#_1591F4: db $00, $42, $3C, $BD, $42, $E7, $7E, $7E
#_1591FC: db $3C, $3C
#_1591FE: db $23 ; Byte Fill
#_1591FF: db $00
#_159200: db $06 ; Direct Copy
#_159201: db $3C, $7E, $FF, $FF, $7E, $3C, $00
#_159208: db $43 ; Word Fill
#_159209: db $1C, $0F ; Word Fill
#_15920B: db $47 ; Word Fill
#_15920C: db $1E, $0D ; Word Fill
#_15920E: db $02 ; Direct Copy
#_15920F: db $1F, $0F, $0F
#_159212: db $84 ; Repeat Fill
#_159213: db $FF, $00 ; Repeat Fill bytes
#_159215: db $22 ; Byte Fill
#_159216: db $1F
#_159217: db $04 ; Direct Copy
#_159218: db $0F, $38, $F0, $98, $70
#_15921D: db $47 ; Word Fill
#_15921E: db $58, $B0 ; Word Fill
#_159220: db $07 ; Direct Copy
#_159221: db $78, $F0, $B0, $E0, $F8, $78, $B8, $B8
#_159229: db $22 ; Byte Fill
#_15922A: db $F8
#_15922B: db $00 ; Direct Copy
#_15922C: db $F0
#_15922D: db $23 ; Byte Fill
#_15922E: db $00
#_15922F: db $0B ; Direct Copy
#_159230: db $01, $00, $04, $00, $01, $00, $07, $01
#_159238: db $2F, $07, $8E, $07
#_15923C: db $23 ; Byte Fill
#_15923D: db $00
#_15923E: db $01 ; Direct Copy
#_15923F: db $01, $07
#_159241: db $83 ; Repeat Fill
#_159242: db $66, $01 ; Repeat Fill bytes
#_159244: db $0D ; Direct Copy
#_159245: db $02, $00, $0C, $00, $21, $00, $5C, $00
#_15924D: db $BF, $1C, $BF, $1F, $79, $3F
#_159253: db $23 ; Byte Fill
#_159254: db $00
#_159255: db $03 ; Direct Copy
#_159256: db $1C, $3F, $3F, $7F
#_15925A: db $25 ; Byte Fill
#_15925B: db $00
#_15925C: db $02 ; Direct Copy
#_15925D: db $08, $00, $30
#_159260: db $22 ; Byte Fill
#_159261: db $00
#_159262: db $02 ; Direct Copy
#_159263: db $80, $00, $80
#_159266: db $26 ; Byte Fill
#_159267: db $00
#_159268: db $01 ; Direct Copy
#_159269: db $80, $80
#_15926B: db $27 ; Byte Fill
#_15926C: db $00
#_15926D: db $07 ; Direct Copy
#_15926E: db $01, $00, $17, $01, $2F, $04, $5C, $10
#_159276: db $23 ; Byte Fill
#_159277: db $00
#_159278: db $03 ; Direct Copy
#_159279: db $01, $16, $3B, $6F
#_15927D: db $27 ; Byte Fill
#_15927E: db $00
#_15927F: db $07 ; Direct Copy
#_159280: db $98, $00, $F4, $90, $FA, $28, $3E, $04
#_159288: db $23 ; Byte Fill
#_159289: db $00
#_15928A: db $03 ; Direct Copy
#_15928B: db $98, $6C, $D6, $FA
#_15928F: db $23 ; Byte Fill
#_159290: db $00
#_159291: db $05 ; Direct Copy
#_159292: db $01, $00, $03, $01, $16, $02
#_159298: db $83 ; Repeat Fill
#_159299: db $9C, $03 ; Repeat Fill bytes
#_15929B: db $02 ; Direct Copy
#_15929C: db $7E, $2E, $00
#_15929F: db $62 ; Increasing Fill
#_1592A0: db $00 ; Increasing Fill Start
#_1592A1: db $03 ; Direct Copy
#_1592A2: db $15, $3B, $6F, $51
#_1592A6: db $23 ; Byte Fill
#_1592A7: db $00
#_1592A8: db $18 ; Direct Copy
#_1592A9: db $80, $00, $C0, $80, $68, $40, $F4, $20
#_1592B1: db $3A, $08, $7E, $74, $00, $00, $80, $40
#_1592B9: db $A8, $DC, $F6, $8A, $00, $00, $0E, $00
#_1592C1: db $1F
#_1592C2: db $46 ; Word Fill
#_1592C3: db $00, $3F ; Word Fill
#_1592C5: db $10 ; Direct Copy
#_1592C6: db $7F, $00, $BF, $00, $00, $0E, $1B, $3C
#_1592CE: db $3F, $3F, $7F, $FF, $00, $00, $70, $00
#_1592D6: db $F8
#_1592D7: db $46 ; Word Fill
#_1592D8: db $00, $FC ; Word Fill
#_1592DA: db $0B ; Direct Copy
#_1592DB: db $FE, $40, $BD, $A0, $00, $70, $D8, $BC
#_1592E3: db $FC, $FC, $BE, $5F
#_1592E7: db $23 ; Byte Fill
#_1592E8: db $00
#_1592E9: db $13 ; Direct Copy
#_1592EA: db $07, $00, $0F, $00, $3F, $00, $6F, $10
#_1592F2: db $CF, $30, $97, $6C, $00, $00, $07, $0F
#_1592FA: db $3F, $4F, $8F, $9F
#_1592FE: db $23 ; Byte Fill
#_1592FF: db $00
#_159300: db $83 ; Repeat Fill
#_159301: db $DA, $00 ; Repeat Fill bytes
#_159303: db $E0, $24 ; EXT Direct Copy
#_159305: db $FC, $00, $F6, $08, $F3, $0C, $E9, $36
#_15930D: db $00, $00, $E0, $F0, $FC, $F2, $F1, $F9
#_159315: db $03, $00, $07, $03, $0E, $07, $3E, $07
#_15931D: db $7C, $37, $FC, $6F, $C4, $7F, $BA, $47
#_159325: db $03, $07, $0F, $3F, $7F
#_15932A: db $22 ; Byte Fill
#_15932B: db $FF
#_15932C: db $83 ; Repeat Fill
#_15932D: db $6A, $01 ; Repeat Fill bytes
#_15932F: db $13 ; Direct Copy
#_159330: db $70, $E0, $30, $E0, $3C, $F0, $1E, $F4
#_159338: db $1F, $FE, $3F, $FE, $C0, $E0, $F0, $F0
#_159340: db $FC, $FE, $FF, $FF
#_159344: db $27 ; Byte Fill
#_159345: db $00
#_159346: db $83 ; Repeat Fill
#_159347: db $50, $03 ; Repeat Fill bytes
#_159349: db $03 ; Direct Copy
#_15934A: db $0F, $07, $0E, $07
#_15934E: db $23 ; Byte Fill
#_15934F: db $00
#_159350: db $01 ; Direct Copy
#_159351: db $01, $07
#_159353: db $22 ; Byte Fill
#_159354: db $0F
#_159355: db $03 ; Direct Copy
#_159356: db $07, $0F, $07, $07
#_15935A: db $92 ; Repeat Fill
#_15935B: db $75, $02 ; Repeat Fill bytes
#_15935D: db $04 ; Direct Copy
#_15935E: db $30, $E0, $B0, $E0, $E0
#_159363: db $92 ; Repeat Fill
#_159364: db $8D, $02 ; Repeat Fill bytes
#_159366: db $04 ; Direct Copy
#_159367: db $1C, $00, $02, $00, $3E
#_15936C: db $44 ; Word Fill
#_15936D: db $00, $7F ; Word Fill
#_15936F: db $02 ; Direct Copy
#_159370: db $3E, $00, $1C
#_159373: db $22 ; Byte Fill
#_159374: db $00
#_159375: db $08 ; Direct Copy
#_159376: db $1C, $02, $3E, $41, $47, $22, $1C, $00
#_15937E: db $18
#_15937F: db $43 ; Word Fill
#_159380: db $00, $24 ; Word Fill
#_159382: db $12 ; Direct Copy
#_159383: db $18, $66, $18, $BD, $00, $99, $42, $BD
#_15938B: db $42, $7E, $18, $18, $3C, $24, $66, $E7
#_159393: db $BD, $BD, $7E
#_159396: db $43 ; Word Fill
#_159397: db $24, $18 ; Word Fill
#_159399: db $43 ; Word Fill
#_15939A: db $2C, $10 ; Word Fill
#_15939C: db $01 ; Direct Copy
#_15939D: db $24, $18
#_15939F: db $43 ; Word Fill
#_1593A0: db $2C, $10 ; Word Fill
#_1593A2: db $16 ; Direct Copy
#_1593A3: db $18, $00, $3C, $3C, $34, $34, $3C, $34
#_1593AB: db $34, $18, $FE, $4E, $FB, $1B, $BD, $15
#_1593B3: db $BF, $21, $EE, $00, $47, $01, $01
#_1593BA: db $22 ; Byte Fill
#_1593BB: db $00
#_1593BC: db $E0, $2C ; EXT Direct Copy
#_1593BE: db $B1, $E4, $EA, $D8, $AB, $46, $01, $00
#_1593C6: db $7E, $74, $D4, $C0, $AE, $88, $FA, $90
#_1593CE: db $7A, $08, $EA, $80, $8E, $00, $04, $00
#_1593D6: db $8A, $3C, $76, $2E, $F6, $6E, $8A, $04
#_1593DE: db $7B, $0B, $5D, $15, $7F, $11, $BE, $20
#_1593E6: db $A7, $01, $E1, $00, $40
#_1593EB: db $22 ; Byte Fill
#_1593EC: db $00
#_1593ED: db $14 ; Direct Copy
#_1593EE: db $74, $6A, $68, $DB, $E6, $A1, $40, $00
#_1593F6: db $DE, $D0, $BA, $A8, $FE, $88, $7D, $04
#_1593FE: db $E5, $80, $87, $00, $02
#_159403: db $22 ; Byte Fill
#_159404: db $00
#_159405: db $E0, $44 ; EXT Direct Copy
#_159407: db $2E, $56, $16, $DB, $67, $85, $02, $00
#_15940F: db $BF, $10, $FF, $57, $FB, $59, $6A, $08
#_159417: db $3F, $10, $3F, $00, $1F, $01, $07, $00
#_15941F: db $EF, $A8, $A6, $77, $2F, $3F, $1E, $07
#_159427: db $BD, $90, $3F, $2A, $DF, $9A, $56, $10
#_15942F: db $FC, $08, $FC, $00, $F8, $80, $E0, $00
#_159437: db $6F, $D5, $65, $EE, $F4, $FC, $78, $E0
#_15943F: db $DA, $2D, $7F, $58, $D9, $A1, $CB, $72
#_159447: db $FF, $76, $7F, $1A, $1E
#_15944C: db $22 ; Byte Fill
#_15944D: db $00
#_15944E: db $14 ; Direct Copy
#_15944F: db $DE, $BF, $7E, $FD, $F9, $7D, $1E, $00
#_159457: db $5B, $B4, $7E, $AA, $BB, $05, $73, $5E
#_15945F: db $FF, $DE, $FE, $58, $78
#_159464: db $22 ; Byte Fill
#_159465: db $00
#_159466: db $E0, $37 ; EXT Direct Copy
#_159468: db $7B, $7D, $FE, $BF, $3F, $BE, $78, $00
#_159470: db $7D, $2B, $3E, $19, $1F, $02, $3F, $1F
#_159478: db $3C, $1C, $1E, $0E, $0F, $03, $03, $00
#_159480: db $77, $3F, $1D, $20, $23, $11, $0C, $03
#_159488: db $FB, $FC, $06, $F8, $98, $60, $F0, $80
#_159490: db $58, $50, $38, $30, $F0, $E0, $E0, $00
#_159498: db $FF, $FE, $F8, $70, $A8, $C8, $10, $E0
#_1594A0: db $FF ; End of GFX 84

;===================================================================================================

GFX_85:
#_1594A1: db $E0, $2F ; EXT Direct Copy
#_1594A3: db $00, $00, $07, $00, $19, $06, $27, $18
#_1594AB: db $5F, $20, $BF, $40, $FF, $00, $3F, $00
#_1594B3: db $00, $07, $19, $27, $5F, $BF, $FF, $3F
#_1594BB: db $00, $00, $03, $00, $C5, $02, $FE, $00
#_1594C3: db $FC, $00, $FE, $02, $FD, $03, $F7, $09
#_1594CB: db $00, $03, $C5, $FB, $F7, $F5, $F6, $F4
#_1594D3: db $23 ; Byte Fill
#_1594D4: db $00
#_1594D5: db $0C ; Direct Copy
#_1594D6: db $01, $00, $02, $01, $03, $00, $05, $02
#_1594DE: db $07, $00, $0B, $04, $00
#_1594E3: db $63 ; Increasing Fill
#_1594E4: db $00 ; Increasing Fill Start
#_1594E5: db $0A ; Direct Copy
#_1594E6: db $05, $07, $0B, $00, $00, $63, $00, $F5
#_1594EE: db $02, $FF, $00
#_1594F1: db $85 ; Repeat Fill
#_1594F2: db $1E, $00 ; Repeat Fill bytes
#_1594F4: db $09 ; Direct Copy
#_1594F5: db $F5, $0B, $00, $63, $F5, $FB, $F7, $F7
#_1594FD: db $F5, $F6
#_1594FF: db $29 ; Byte Fill
#_159500: db $00
#_159501: db $44 ; Word Fill
#_159502: db $01, $00 ; Word Fill
#_159504: db $25 ; Byte Fill
#_159505: db $00
#_159506: db $22 ; Byte Fill
#_159507: db $01
#_159508: db $17 ; Direct Copy
#_159509: db $00, $00, $33, $00, $7D, $02, $FE, $00
#_159511: db $BD, $40, $FE, $00, $7C, $80, $76, $8A
#_159519: db $00, $33, $7D, $FB, $B7, $F7, $77, $75
#_159521: db $37 ; Byte Fill
#_159522: db $00
#_159523: db $02 ; Direct Copy
#_159524: db $1C, $00, $3F
#_159527: db $8C ; Repeat Fill
#_159528: db $7B, $00 ; Repeat Fill bytes
#_15952A: db $01 ; Direct Copy
#_15952B: db $1C, $3F
#_15952D: db $85 ; Repeat Fill
#_15952E: db $8A, $00 ; Repeat Fill bytes
#_159530: db $E4, $33 ; EXT Byte Fill
#_159532: db $00
#_159533: db $07 ; Direct Copy
#_159534: db $07, $00, $0F, $07, $18, $0F, $19, $0F
#_15953C: db $43 ; Word Fill
#_15953D: db $1B, $0E ; Word Fill
#_15953F: db $03 ; Direct Copy
#_159540: db $00, $00, $07, $0F
#_159544: db $23 ; Byte Fill
#_159545: db $1F
#_159546: db $23 ; Byte Fill
#_159547: db $00
#_159548: db $13 ; Direct Copy
#_159549: db $80, $00, $E0, $80, $78, $E0, $3E, $E8
#_159551: db $BF, $EE, $DD, $76, $00, $00, $80, $E0
#_159559: db $F8, $FE, $FF, $FF
#_15955D: db $23 ; Byte Fill
#_15955E: db $00
#_15955F: db $04 ; Direct Copy
#_159560: db $03, $00, $07, $03, $0E
#_159565: db $46 ; Word Fill
#_159566: db $07, $0C ; Word Fill
#_159568: db $03 ; Direct Copy
#_159569: db $00, $00, $03, $07
#_15956D: db $23 ; Byte Fill
#_15956E: db $0F
#_15956F: db $23 ; Byte Fill
#_159570: db $00
#_159571: db $02 ; Direct Copy
#_159572: db $FF, $00, $FF
#_159575: db $49 ; Word Fill
#_159576: db $FF, $00 ; Word Fill
#_159578: db $00 ; Direct Copy
#_159579: db $00
#_15957A: db $25 ; Byte Fill
#_15957B: db $FF
#_15957C: db $00 ; Direct Copy
#_15957D: db $03
#_15957E: db $83 ; Repeat Fill
#_15957F: db $F3, $00 ; Repeat Fill bytes
#_159581: db $E0, $2D ; EXT Direct Copy
#_159583: db $00, $1C, $03, $38, $07, $70, $0F, $61
#_15958B: db $1F, $C7, $38, $03, $07, $0F, $1C, $38
#_159593: db $70, $61, $C7, $FF, $00, $E0, $1F, $1F
#_15959B: db $EF, $3F, $E0, $70, $CF, $C3, $BF, $C7
#_1595A3: db $3F, $EF, $5F, $FF, $E0, $1F, $3F, $70
#_1595AB: db $C3, $C7, $EF, $0F, $00, $01
#_1595B1: db $2C ; Byte Fill
#_1595B2: db $00
#_1595B3: db $01 ; Direct Copy
#_1595B4: db $0F, $01
#_1595B6: db $25 ; Byte Fill
#_1595B7: db $00
#_1595B8: db $07 ; Direct Copy
#_1595B9: db $FF, $01, $FE, $01, $0F, $01, $17, $08
#_1595C1: db $43 ; Word Fill
#_1595C2: db $2A, $14 ; Word Fill
#_1595C4: db $00 ; Direct Copy
#_1595C5: db $14
#_1595C6: db $22 ; Byte Fill
#_1595C7: db $00
#_1595C8: db $09 ; Direct Copy
#_1595C9: db $FE, $FF, $0F, $1F, $3E, $3E, $14, $00
#_1595D1: db $0B, $04
#_1595D3: db $43 ; Word Fill
#_1595D4: db $0F, $00 ; Word Fill
#_1595D6: db $02 ; Direct Copy
#_1595D7: db $0E, $00, $04
#_1595DA: db $26 ; Byte Fill
#_1595DB: db $00
#_1595DC: db $04 ; Direct Copy
#_1595DD: db $0B, $0F, $0F, $0E, $04
#_1595E2: db $22 ; Byte Fill
#_1595E3: db $00
#_1595E4: db $0A ; Direct Copy
#_1595E5: db $FF, $01, $BF, $01, $1E, $09, $3F, $15
#_1595ED: db $2B, $14, $12
#_1595F0: db $24 ; Byte Fill
#_1595F1: db $00
#_1595F2: db $06 ; Direct Copy
#_1595F3: db $FC, $BE, $1F, $3F, $3F, $12, $00
#_1595FA: db $47 ; Word Fill
#_1595FB: db $00, $01 ; Word Fill
#_1595FD: db $28 ; Byte Fill
#_1595FE: db $00
#_1595FF: db $23 ; Byte Fill
#_159600: db $01
#_159601: db $23 ; Byte Fill
#_159602: db $00
#_159603: db $17 ; Direct Copy
#_159604: db $FD, $03, $FF, $09, $FF, $15, $FE, $15
#_15960C: db $F7, $01, $E1, $00, $60, $00, $20, $00
#_159614: db $FE, $FC, $FE, $FF, $F7, $E1, $60, $20
#_15961C: db $37 ; Byte Fill
#_15961D: db $00
#_15961E: db $01 ; Direct Copy
#_15961F: db $FD, $03
#_159621: db $43 ; Word Fill
#_159622: db $7F, $01 ; Word Fill
#_159624: db $11 ; Direct Copy
#_159625: db $3E, $01, $3F, $01, $1F, $00, $0A, $04
#_15962D: db $15, $0A, $FE, $7C, $7E, $3F, $3F, $1F
#_159635: db $0E, $1F
#_159637: db $E4, $2F ; EXT Byte Fill
#_159639: db $00
#_15963A: db $0C ; Direct Copy
#_15963B: db $1F, $05, $17, $09, $11, $0E, $15, $0F
#_159643: db $0B, $04, $09, $06, $07
#_159648: db $22 ; Byte Fill
#_159649: db $00
#_15964A: db $17 ; Direct Copy
#_15964B: db $1F, $17, $11, $15, $0B, $09, $07, $00
#_159653: db $9D, $F6, $8A, $FD, $E7, $79, $7F, $9E
#_15965B: db $9F, $E6, $EF, $F0, $F5, $7B, $7B, $00
#_159663: db $22 ; Byte Fill
#_159664: db $FF
#_159665: db $04 ; Direct Copy
#_159666: db $7F, $9F, $EF, $F5, $7B
#_15966B: db $43 ; Word Fill
#_15966C: db $0C, $07 ; Word Fill
#_15966E: db $05 ; Direct Copy
#_15966F: db $0E, $03, $0B, $05, $0B, $04
#_159675: db $45 ; Word Fill
#_159676: db $0A, $05 ; Word Fill
#_159678: db $22 ; Byte Fill
#_159679: db $0F
#_15967A: db $01 ; Direct Copy
#_15967B: db $0B, $0B
#_15967D: db $22 ; Byte Fill
#_15967E: db $0A
#_15967F: db $43 ; Word Fill
#_159680: db $00, $FF ; Word Fill
#_159682: db $0B ; Direct Copy
#_159683: db $0F, $FF, $FF, $F0, $F9, $06, $01, $FE
#_15968B: db $E2, $FD, $DD, $E3
#_15968F: db $23 ; Byte Fill
#_159690: db $FF
#_159691: db $1C ; Direct Copy
#_159692: db $F9, $01, $E3, $DF, $CC, $33, $96, $6B
#_15969A: db $B3, $4C, $F9, $27, $B7, $68, $B3, $6F
#_1596A2: db $B7, $68, $BB, $67, $CF, $97, $B3, $F9
#_1596AA: db $B7, $B3, $B7, $BB, $EE
#_1596AF: db $43 ; Word Fill
#_1596B0: db $5F, $EC ; Word Fill
#_1596B2: db $0A ; Direct Copy
#_1596B3: db $DF, $D8, $BF, $B3, $7F, $F4, $FF, $B9
#_1596BB: db $7E, $DB, $BD
#_1596BE: db $22 ; Byte Fill
#_1596BF: db $EF
#_1596C0: db $04 ; Direct Copy
#_1596C1: db $DF, $BF, $FF, $BF, $DE
#_1596C6: db $29 ; Byte Fill
#_1596C7: db $00
#_1596C8: db $44 ; Word Fill
#_1596C9: db $01, $00 ; Word Fill
#_1596CB: db $25 ; Byte Fill
#_1596CC: db $00
#_1596CD: db $22 ; Byte Fill
#_1596CE: db $01
#_1596CF: db $27 ; Byte Fill
#_1596D0: db $00
#_1596D1: db $07 ; Direct Copy
#_1596D2: db $80, $00, $41, $80, $43, $81, $EF, $C3
#_1596DA: db $23 ; Byte Fill
#_1596DB: db $00
#_1596DC: db $E0, $33 ; EXT Direct Copy
#_1596DE: db $80, $C1, $C3, $EF, $03, $00, $04, $03
#_1596E6: db $0A, $07, $16, $0F, $F5, $0B, $EE, $D9
#_1596EE: db $6F, $D8, $2F, $FD, $03, $04, $0B, $17
#_1596F6: db $F5, $EA, $E9, $ED, $C0, $00, $20, $C0
#_1596FE: db $5E, $E0, $6B, $F6, $AD, $D3, $76, $9B
#_159706: db $F7, $1B, $F5, $BF, $C0, $20, $DE, $EB
#_15970E: db $AD, $57, $97, $B5
#_159712: db $23 ; Byte Fill
#_159713: db $00
#_159714: db $13 ; Direct Copy
#_159715: db $02, $00, $85, $02, $C5, $82, $EF, $C6
#_15971D: db $7D, $C6, $3C, $CB, $00, $00, $02, $87
#_159725: db $C7, $EF, $FD, $BC
#_159729: db $2B ; Byte Fill
#_15972A: db $00
#_15972B: db $03 ; Direct Copy
#_15972C: db $E0, $00, $90, $E0
#_159730: db $25 ; Byte Fill
#_159731: db $00
#_159732: db $E0, $31 ; EXT Direct Copy
#_159734: db $E0, $F0, $00, $0C, $04, $06, $82, $82
#_15973C: db $01, $40, $02, $01, $81, $88, $00, $1C
#_159744: db $19, $64, $0C, $06, $82, $41, $03, $81
#_15974C: db $08, $39, $40, $44, $00, $0E, $1D, $4E
#_159754: db $0C, $E7, $9E, $C1, $B4, $DB, $9F, $75
#_15975C: db $CF, $FA, $40, $04, $1F, $0C, $9F, $B5
#_159764: db $FF, $EB
#_159766: db $E4, $31 ; EXT Byte Fill
#_159768: db $00
#_159769: db $15 ; Direct Copy
#_15976A: db $18, $00, $24, $18, $4F, $34, $5F, $2D
#_159772: db $67, $1E, $47, $3E, $39, $06, $00, $18
#_15977A: db $3C, $7F, $7F, $67, $47, $39
#_159780: db $83 ; Repeat Fill
#_159781: db $F2, $03 ; Repeat Fill bytes
#_159783: db $0E ; Direct Copy
#_159784: db $66, $3C, $FE, $0C, $0E, $F4, $86, $F8
#_15978C: db $8F, $F4, $CC, $F3, $18, $3C, $7E
#_159793: db $22 ; Byte Fill
#_159794: db $FE
#_159795: db $01 ; Direct Copy
#_159796: db $FF, $CF
#_159798: db $4F ; Word Fill
#_159799: db $0A, $05 ; Word Fill
#_15979B: db $27 ; Byte Fill
#_15979C: db $0A
#_15979D: db $08 ; Direct Copy
#_15979E: db $E5, $FB, $FE, $FD, $FD, $FE, $FD, $AE
#_1597A6: db $AE
#_1597A7: db $23 ; Byte Fill
#_1597A8: db $FF
#_1597A9: db $03 ; Direct Copy
#_1597AA: db $D5, $D5, $FF, $E5
#_1597AE: db $83 ; Repeat Fill
#_1597AF: db $3A, $04 ; Repeat Fill bytes
#_1597B1: db $22 ; Byte Fill
#_1597B2: db $FF
#_1597B3: db $0F ; Direct Copy
#_1597B4: db $B3, $6C, $B7, $6B, $B6, $6A, $97, $6B
#_1597BC: db $FB, $35, $AB, $74, $A4, $7B, $93, $7C
#_1597C4: db $62 ; Increasing Fill
#_1597C5: db $B3 ; Increasing Fill Start
#_1597C6: db $E0, $89 ; EXT Direct Copy
#_1597C8: db $94, $FA, $BB, $BC, $9F, $6A, $DC, $B5
#_1597D0: db $6E, $DA, $B7, $78, $57, $FB, $D7, $EC
#_1597D8: db $33, $D7, $EF, $E0, $1F, $6F, $B7, $5B
#_1597E0: db $B8, $3B, $EC, $D7, $EF, $0F, $00, $12
#_1597E8: db $0F, $08, $07, $06, $01, $06, $03, $0F
#_1597F0: db $06, $0B, $04, $06, $00, $0F, $1E, $08
#_1597F8: db $06, $06, $0F, $0F, $06, $72, $CF, $79
#_159800: db $A7, $F5, $7B, $EF, $7B, $DA, $E7, $26
#_159808: db $DF, $F1, $0E, $0E, $01, $73, $79, $FD
#_159810: db $EF, $DA, $26, $F1, $0E, $F2, $FF, $AD
#_159818: db $FE, $12, $FF, $48, $BF, $E9, $1F, $CE
#_159820: db $3F, $6A, $97, $BE, $69, $F2, $BD, $1E
#_159828: db $4F, $EF, $CE, $6A, $BE, $4D, $FF, $B0
#_159830: db $7F, $4A, $FD, $16, $F9, $93, $FC, $73
#_159838: db $FC, $55, $EB, $7F, $84, $4D, $B8, $7A
#_159840: db $F6, $F3, $73, $55, $7F, $DE, $BD, $EE
#_159848: db $BD, $F6, $8F, $39, $F6, $6F, $F0, $88
#_159850: db $70, $F0
#_159852: db $22 ; Byte Fill
#_159853: db $00
#_159854: db $12 ; Direct Copy
#_159855: db $FE, $EE, $F6, $79, $6F, $88, $F0, $00
#_15985D: db $20, $C0, $C0, $00, $C0, $80, $E0, $C0
#_159865: db $A0, $40, $C0
#_159868: db $24 ; Byte Fill
#_159869: db $00
#_15986A: db $E0, $43 ; EXT Direct Copy
#_15986C: db $20, $C0, $C0, $E0, $E0, $C0, $00, $00
#_159874: db $48, $3E, $24, $1E, $47, $EA, $03, $7C
#_15987C: db $01, $10, $07, $03, $09, $07, $00, $04
#_159884: db $4C, $24, $67, $13, $01, $07, $09, $00
#_15988C: db $87, $79, $82, $7D, $17, $FE, $E4, $DB
#_159894: db $5F, $EA, $A1, $7E, $59, $37, $30, $03
#_15989C: db $B1, $92, $17, $EE, $7F, $B1, $59, $30
#_1598A4: db $00, $00, $18, $18, $24, $3C, $66, $18
#_1598AC: db $FF, $00, $FF, $18
#_1598B0: db $24 ; Byte Fill
#_1598B1: db $00
#_1598B2: db $04 ; Direct Copy
#_1598B3: db $18, $3C, $7E, $18, $5C
#_1598B8: db $39 ; Byte Fill
#_1598B9: db $00
#_1598BA: db $0C ; Direct Copy
#_1598BB: db $1F, $00, $20, $1F, $70, $2F, $78, $37
#_1598C3: db $7F, $30, $31, $0E, $1E
#_1598C8: db $22 ; Byte Fill
#_1598C9: db $00
#_1598CA: db $01 ; Direct Copy
#_1598CB: db $1F, $3F
#_1598CD: db $22 ; Byte Fill
#_1598CE: db $7F
#_1598CF: db $1A ; Direct Copy
#_1598D0: db $31, $1E, $00, $90, $EF, $98, $6F, $5F
#_1598D8: db $A4, $BC, $5B, $FC, $1B, $FE, $35, $3D
#_1598E0: db $02, $07, $00, $9F, $9F, $DF, $BC, $FC
#_1598E8: db $FE, $3D, $07
#_1598EB: db $43 ; Word Fill
#_1598EC: db $0A, $05 ; Word Fill
#_1598EE: db $03 ; Direct Copy
#_1598EF: db $1A, $05, $0A, $05
#_1598F3: db $43 ; Word Fill
#_1598F4: db $1E, $01 ; Word Fill
#_1598F6: db $83 ; Repeat Fill
#_1598F7: db $80, $01 ; Repeat Fill bytes
#_1598F9: db $07 ; Direct Copy
#_1598FA: db $0A, $0A, $1A, $0A, $1E, $1E, $0F, $01
#_159902: db $22 ; Byte Fill
#_159903: db $FF
#_159904: db $01 ; Direct Copy
#_159905: db $EA, $EA
#_159907: db $24 ; Byte Fill
#_159908: db $FF
#_159909: db $01 ; Direct Copy
#_15990A: db $00, $FF
#_15990C: db $43 ; Word Fill
#_15990D: db $FF, $00 ; Word Fill
#_15990F: db $24 ; Byte Fill
#_159910: db $FF
#_159911: db $0F ; Direct Copy
#_159912: db $00, $FF, $FF, $C9, $3F, $64, $1F, $33
#_15991A: db $0F, $18, $07, $0F, $00, $03, $00, $01
#_159922: db $22 ; Byte Fill
#_159923: db $00
#_159924: db $1F ; Direct Copy
#_159925: db $CF, $67, $33, $18, $0F, $03, $01, $00
#_15992D: db $A0, $FF, $44, $FF, $57, $F8, $7F, $F0
#_159935: db $77, $F8, $B8, $7F, $CF, $3F, $FF, $00
#_15993D: db $BF, $7C, $77, $7F, $77, $B8, $CF, $FF
#_159945: db $FF ; End of GFX 85

;===================================================================================================

GFX_86:
#_159946: db $E0, $BC ; EXT Direct Copy
#_159948: db $21, $00, $76, $01, $5F, $26, $5F, $20
#_159950: db $2E, $15, $3F, $0E, $7F, $3C, $7E, $2D
#_159958: db $21, $57, $6F, $66, $3F, $3F, $7E, $7F
#_159960: db $84, $00, $6E, $80, $DE, $60, $EA, $14
#_159968: db $F4, $28, $9C, $70, $CE, $3C, $5E, $B4
#_159970: db $84, $EA, $F2, $76, $7C, $FC, $7E, $FE
#_159978: db $01, $00, $07, $00, $0D, $02, $1F, $01
#_159980: db $3E, $07, $68, $17, $79, $2E, $3D, $16
#_159988: db $01, $07, $0B, $1F, $2F, $7F, $7F, $2F
#_159990: db $C0, $00, $A0, $40, $78, $C0, $F4, $08
#_159998: db $FC, $80, $FC, $08, $96, $6C, $26, $DC
#_1599A0: db $C0, $60, $F8, $DC, $DC, $9C, $7E, $FE
#_1599A8: db $20, $00, $71, $00, $6E, $11, $5E, $2D
#_1599B0: db $77, $1C, $6F, $3C, $6E, $3D, $77, $1C
#_1599B8: db $20, $51, $5F, $7F, $7F, $7E, $7F, $7F
#_1599C0: db $04, $00, $8E, $00, $F6, $08, $7A, $B4
#_1599C8: db $CE, $38, $C6, $3C, $46, $BC, $CE, $38
#_1599D0: db $04, $8A, $7A, $FE, $FE, $7E, $FE, $FE
#_1599D8: db $40, $00, $A0, $40, $90, $60, $48, $30
#_1599E0: db $E7, $58, $FF, $00, $8F, $01, $FB, $08
#_1599E8: db $40, $A0, $90, $48, $E7, $FF, $F3, $F7
#_1599F0: db $02, $00, $05, $00, $09, $02, $12, $0C
#_1599F8: db $E7, $18, $FD, $6E, $31, $EE, $FF, $C0
#_159A00: db $02, $07, $0D, $12, $E7
#_159A05: db $22 ; Byte Fill
#_159A06: db $FF
#_159A07: db $8B ; Repeat Fill
#_159A08: db $90, $00 ; Repeat Fill bytes
#_159A0A: db $03 ; Direct Copy
#_159A0B: db $8E, $01, $FB, $09
#_159A0F: db $91 ; Repeat Fill
#_159A10: db $A0, $00 ; Repeat Fill bytes
#_159A12: db $05 ; Direct Copy
#_159A13: db $BD, $6E, $91, $EE, $FF, $40
#_159A19: db $84 ; Repeat Fill
#_159A1A: db $B8, $00 ; Repeat Fill bytes
#_159A1C: db $22 ; Byte Fill
#_159A1D: db $FF
#_159A1E: db $43 ; Word Fill
#_159A1F: db $20, $00 ; Word Fill
#_159A21: db $04 ; Direct Copy
#_159A22: db $28, $00, $2E, $10, $2F
#_159A27: db $43 ; Word Fill
#_159A28: db $14, $2E ; Word Fill
#_159A2A: db $0A ; Direct Copy
#_159A2B: db $11, $2F, $12, $20, $20, $38, $2E, $2B
#_159A33: db $2B, $2E, $2F
#_159A36: db $23 ; Byte Fill
#_159A37: db $00
#_159A38: db $13 ; Direct Copy
#_159A39: db $30, $00, $CC, $00, $02, $30, $73, $8C
#_159A41: db $F9, $26, $9D, $72, $00, $00, $30, $FC
#_159A49: db $CE, $73, $F9, $FD
#_159A4D: db $43 ; Word Fill
#_159A4E: db $20, $00 ; Word Fill
#_159A50: db $84 ; Repeat Fill
#_159A51: db $F4, $00 ; Repeat Fill bytes
#_159A53: db $43 ; Word Fill
#_159A54: db $14, $2E ; Word Fill
#_159A56: db $8A ; Repeat Fill
#_159A57: db $FD, $00 ; Repeat Fill bytes
#_159A59: db $23 ; Byte Fill
#_159A5A: db $00
#_159A5B: db $85 ; Repeat Fill
#_159A5C: db $0C, $01 ; Repeat Fill bytes
#_159A5E: db $00 ; Direct Copy
#_159A5F: db $72
#_159A60: db $89 ; Repeat Fill
#_159A61: db $13, $01 ; Repeat Fill bytes
#_159A63: db $1C ; Direct Copy
#_159A64: db $72, $F9, $FD, $E0, $00, $90, $60, $90
#_159A6C: db $40, $8C, $60, $E7, $18, $F7, $6B, $BF
#_159A74: db $77, $FC, $67, $60, $10, $30, $9C, $E7
#_159A7C: db $F7, $FF, $FF, $06, $00
#_159A81: db $43 ; Word Fill
#_159A82: db $09, $04 ; Word Fill
#_159A84: db $E0, $69 ; EXT Direct Copy
#_159A86: db $31, $08, $E7, $10, $EF, $D6, $FD, $EE
#_159A8E: db $39, $E6, $06, $0B, $0B, $37, $EF, $EF
#_159A96: db $FF, $FF, $7E, $15, $7F, $28, $7F, $29
#_159A9E: db $6F, $30, $36, $19, $1F, $0B, $0F, $03
#_159AA6: db $07, $00, $6F, $77, $72, $79, $3F, $1F
#_159AAE: db $0F, $07, $7E, $A8, $FE, $14, $6A, $04
#_159AB6: db $F6, $0C, $64, $98, $38, $D0, $30, $C0
#_159ABE: db $E0, $00, $F6, $EE, $DE, $9E, $FC, $F8
#_159AC6: db $F0, $E0, $3F, $03, $3F, $04, $5B, $23
#_159ACE: db $4D, $31, $6B, $34, $2C, $17, $1D, $07
#_159AD6: db $07, $00, $3F, $23, $7C, $7E, $7F, $3F
#_159ADE: db $1F, $07, $F6, $0C, $FE, $84, $CE, $30
#_159AE6: db $B4, $48, $7C, $B8, $78, $F0, $F0, $C0
#_159AEE: db $C0, $00
#_159AF0: db $22 ; Byte Fill
#_159AF1: db $FE
#_159AF2: db $14 ; Direct Copy
#_159AF3: db $FC, $FC, $F8, $F0, $C0, $7F, $1E, $7F
#_159AFB: db $2F, $6F, $33, $3B, $14, $3E, $07, $3F
#_159B03: db $17, $1F, $03, $03, $00
#_159B08: db $22 ; Byte Fill
#_159B09: db $7F
#_159B0A: db $22 ; Byte Fill
#_159B0B: db $3F
#_159B0C: db $11 ; Direct Copy
#_159B0D: db $1F, $03, $DE, $78, $BA, $F4, $F2, $CC
#_159B15: db $DE, $2C, $1C, $E0, $1C, $E8, $F8, $C0
#_159B1D: db $C0, $00
#_159B1F: db $23 ; Byte Fill
#_159B20: db $FE
#_159B21: db $E0, $33 ; EXT Direct Copy
#_159B23: db $FC, $FC, $F8, $C0, $9B, $78, $9A, $79
#_159B2B: db $9F, $7D, $8B, $7D, $47, $38, $3F, $00
#_159B33: db $3F, $1E, $1E, $00, $87, $87, $83, $83
#_159B3B: db $47, $3F, $21, $1E, $E1, $1E, $2D, $D2
#_159B43: db $BF, $C0, $FC, $B0, $CC, $30, $3C, $00
#_159B4B: db $0C, $00, $04, $00, $E1, $ED, $F3, $F0
#_159B53: db $F0, $30, $00, $00
#_159B57: db $89 ; Repeat Fill
#_159B58: db $10, $02 ; Repeat Fill bytes
#_159B5A: db $00 ; Direct Copy
#_159B5B: db $3C
#_159B5C: db $24 ; Byte Fill
#_159B5D: db $00
#_159B5E: db $84 ; Repeat Fill
#_159B5F: db $20, $02 ; Repeat Fill bytes
#_159B61: db $02 ; Direct Copy
#_159B62: db $3C, $00, $00
#_159B65: db $87 ; Repeat Fill
#_159B66: db $28, $02 ; Repeat Fill bytes
#_159B68: db $06 ; Direct Copy
#_159B69: db $EC, $70, $FC, $00, $FC, $70, $7C
#_159B70: db $83 ; Repeat Fill
#_159B71: db $37, $02 ; Repeat Fill bytes
#_159B73: db $22 ; Byte Fill
#_159B74: db $F0
#_159B75: db $0E ; Direct Copy
#_159B76: db $80, $78, $3B, $04, $3D, $02, $FE, $01
#_159B7E: db $7E, $01, $05, $02, $03, $00, $01
#_159B85: db $22 ; Byte Fill
#_159B86: db $00
#_159B87: db $1F ; Direct Copy
#_159B88: db $3F, $3D, $02, $02, $05, $03, $01, $00
#_159B90: db $BF, $70, $FB, $34, $FD, $06, $BF, $5A
#_159B98: db $FE, $30, $FC, $00, $FC, $F8, $F8, $00
#_159BA0: db $FF, $FF, $BF, $FF, $FE, $FC, $04, $F8
#_159BA8: db $87 ; Repeat Fill
#_159BA9: db $70, $02 ; Repeat Fill bytes
#_159BAB: db $02 ; Direct Copy
#_159BAC: db $0D, $02, $07
#_159BAF: db $24 ; Byte Fill
#_159BB0: db $00
#_159BB1: db $83 ; Repeat Fill
#_159BB2: db $80, $02 ; Repeat Fill bytes
#_159BB4: db $02 ; Direct Copy
#_159BB5: db $0D, $07, $00
#_159BB8: db $88 ; Repeat Fill
#_159BB9: db $87, $02 ; Repeat Fill bytes
#_159BBB: db $06 ; Direct Copy
#_159BBC: db $FF, $30, $FF, $06, $3E, $1C, $1C
#_159BC3: db $84 ; Repeat Fill
#_159BC4: db $97, $02 ; Repeat Fill bytes
#_159BC6: db $0F ; Direct Copy
#_159BC7: db $FF, $F9, $22, $1C, $7E, $17, $6F, $39
#_159BCF: db $79, $26, $36, $1B, $37, $1D, $3F, $00
#_159BD7: db $83 ; Repeat Fill
#_159BD8: db $C4, $02 ; Repeat Fill bytes
#_159BDA: db $22 ; Byte Fill
#_159BDB: db $7F
#_159BDC: db $22 ; Byte Fill
#_159BDD: db $3F
#_159BDE: db $0C ; Direct Copy
#_159BDF: db $22, $1C, $7E, $E8, $FA, $9C, $9A, $64
#_159BE7: db $7C, $D8, $FC, $A0, $F8
#_159BEC: db $24 ; Byte Fill
#_159BED: db $00
#_159BEE: db $22 ; Byte Fill
#_159BEF: db $FE
#_159BF0: db $04 ; Direct Copy
#_159BF1: db $FC, $DC, $F8, $00, $00
#_159BF6: db $99 ; Repeat Fill
#_159BF7: db $50, $01 ; Repeat Fill bytes
#_159BF9: db $43 ; Word Fill
#_159BFA: db $09, $04 ; Word Fill
#_159BFC: db $91 ; Repeat Fill
#_159BFD: db $6E, $01 ; Repeat Fill bytes
#_159BFF: db $10 ; Direct Copy
#_159C00: db $7F, $00, $80, $7F, $C0, $7F, $FF, $7F
#_159C08: db $7F, $00, $03, $01, $07, $01, $0F, $06
#_159C10: db $7F
#_159C11: db $22 ; Byte Fill
#_159C12: db $FF
#_159C13: db $1B ; Direct Copy
#_159C14: db $7F, $03, $07, $0F, $FE, $00, $01, $FE
#_159C1C: db $F7, $0A, $FF, $FE, $FE, $00, $C0, $80
#_159C24: db $E0, $80, $90, $60, $FE, $FF, $0B, $FF
#_159C2C: db $FE, $C0, $E0, $F0
#_159C30: db $27 ; Byte Fill
#_159C31: db $00
#_159C32: db $02 ; Direct Copy
#_159C33: db $78, $00, $F8
#_159C36: db $44 ; Word Fill
#_159C37: db $70, $F0 ; Word Fill
#_159C39: db $23 ; Byte Fill
#_159C3A: db $00
#_159C3B: db $03 ; Direct Copy
#_159C3C: db $78, $F8, $F0, $F0
#_159C40: db $27 ; Byte Fill
#_159C41: db $00
#_159C42: db $02 ; Direct Copy
#_159C43: db $1E, $00, $1D
#_159C46: db $44 ; Word Fill
#_159C47: db $0E, $0D ; Word Fill
#_159C49: db $23 ; Byte Fill
#_159C4A: db $00
#_159C4B: db $15 ; Direct Copy
#_159C4C: db $1E, $1F, $0F, $0F, $6F, $30, $3F, $10
#_159C54: db $3F, $18, $1B, $0C, $0E, $03, $07, $00
#_159C5C: db $05, $02, $06, $01, $7F, $3C
#_159C62: db $83 ; Repeat Fill
#_159C63: db $94, $01 ; Repeat Fill bytes
#_159C65: db $E0, $31 ; EXT Direct Copy
#_159C67: db $06, $07, $EE, $19, $DD, $02, $9E, $11
#_159C6F: db $7E, $AB, $FA, $9D, $F3, $0D, $BD, $52
#_159C77: db $46, $BD, $FD, $FB, $EF, $DF, $FF, $BF
#_159C7F: db $7F, $FF, $00, $00, $80, $00, $E0, $80
#_159C87: db $70, $E0, $F8, $30, $EF, $10, $FD, $0A
#_159C8F: db $F6, $09, $00, $80, $E0, $F0, $F8, $FF
#_159C97: db $BF, $BD
#_159C99: db $25 ; Byte Fill
#_159C9A: db $00
#_159C9B: db $09 ; Direct Copy
#_159C9C: db $60, $00, $F0, $00, $50, $20, $60, $40
#_159CA4: db $E0, $40
#_159CA6: db $22 ; Byte Fill
#_159CA7: db $00
#_159CA8: db $E0, $34 ; EXT Direct Copy
#_159CAA: db $60, $90, $F0, $A0, $A0, $36, $00, $7F
#_159CB2: db $06, $BB, $45, $8F, $70, $67, $18, $FF
#_159CBA: db $60, $FF, $41, $7F, $23, $36, $4F, $CF
#_159CC2: db $F7, $7D, $FF, $F6, $7C, $00, $00, $8C
#_159CCA: db $00, $DE, $80, $62, $84, $5C, $A8, $E8
#_159CD2: db $10, $FE, $00, $DB, $34, $00, $8C, $D2
#_159CDA: db $FE, $F4, $D8, $BE, $FB
#_159CDF: db $23 ; Byte Fill
#_159CE0: db $00
#_159CE1: db $13 ; Direct Copy
#_159CE2: db $1B, $00, $3F, $03, $27, $18, $17, $08
#_159CEA: db $3F, $10, $3F, $11, $00, $00, $1B, $27
#_159CF2: db $3B, $1F, $3F, $3E
#_159CF6: db $25 ; Byte Fill
#_159CF7: db $00
#_159CF8: db $09 ; Direct Copy
#_159CF9: db $90, $00, $F8, $80, $78, $90, $F8, $00
#_159D01: db $D4, $38
#_159D03: db $22 ; Byte Fill
#_159D04: db $00
#_159D05: db $E0, $21 ; EXT Direct Copy
#_159D07: db $90, $E8, $A8, $B8, $F4, $00, $00, $03
#_159D0F: db $00, $1E, $03, $3F, $00, $2E, $11, $23
#_159D17: db $1C, $78, $27, $4D, $3A, $00, $03, $1F
#_159D1F: db $22, $33, $3D, $7F, $7F, $60, $C0, $E0
#_159D27: db $C0, $C0
#_159D29: db $2A ; Byte Fill
#_159D2A: db $00
#_159D2B: db $02 ; Direct Copy
#_159D2C: db $E0, $E0, $C0
#_159D2F: db $24 ; Byte Fill
#_159D30: db $00
#_159D31: db $85 ; Repeat Fill
#_159D32: db $D0, $02 ; Repeat Fill bytes
#_159D34: db $04 ; Direct Copy
#_159D35: db $3E, $1B, $3F, $05, $1F
#_159D3A: db $24 ; Byte Fill
#_159D3B: db $00
#_159D3C: db $22 ; Byte Fill
#_159D3D: db $7F
#_159D3E: db $04 ; Direct Copy
#_159D3F: db $3F, $3B, $1F, $00, $00
#_159D44: db $85 ; Repeat Fill
#_159D45: db $E8, $02 ; Repeat Fill bytes
#_159D47: db $09 ; Direct Copy
#_159D48: db $74, $D8, $F4, $B8, $FC, $00, $7C, $38
#_159D50: db $38, $00
#_159D52: db $22 ; Byte Fill
#_159D53: db $FE
#_159D54: db $22 ; Byte Fill
#_159D55: db $FC
#_159D56: db $05 ; Direct Copy
#_159D57: db $44, $38, $0F, $03, $0F, $07
#_159D5D: db $83 ; Repeat Fill
#_159D5E: db $B0, $04 ; Repeat Fill bytes
#_159D60: db $87 ; Repeat Fill
#_159D61: db $B0, $04 ; Repeat Fill bytes
#_159D63: db $27 ; Byte Fill
#_159D64: db $0F
#_159D65: db $01 ; Direct Copy
#_159D66: db $10, $E0
#_159D68: db $43 ; Word Fill
#_159D69: db $D0, $A0 ; Word Fill
#_159D6B: db $49 ; Word Fill
#_159D6C: db $90, $E0 ; Word Fill
#_159D6E: db $02 ; Direct Copy
#_159D6F: db $F0, $B0, $B0
#_159D72: db $24 ; Byte Fill
#_159D73: db $F0
#_159D74: db $08 ; Direct Copy
#_159D75: db $F8, $70, $FC, $70, $FF, $78, $FF, $7C
#_159D7D: db $FF
#_159D7E: db $44 ; Word Fill
#_159D7F: db $7F, $80 ; Word Fill
#_159D81: db $03 ; Direct Copy
#_159D82: db $FF, $00, $F8, $FC
#_159D86: db $25 ; Byte Fill
#_159D87: db $FF
#_159D88: db $11 ; Direct Copy
#_159D89: db $1D, $0E, $3D, $0E, $FD, $1E, $FD, $3E
#_159D91: db $FD, $FE, $0D, $F2, $01, $FE, $FF, $00
#_159D99: db $1F, $3F
#_159D9B: db $22 ; Byte Fill
#_159D9C: db $FF
#_159D9D: db $09 ; Direct Copy
#_159D9E: db $F3, $FF, $FF, $09, $00, $1F, $03, $1B
#_159DA6: db $04, $0C
#_159DA8: db $28 ; Byte Fill
#_159DA9: db $00
#_159DAA: db $03 ; Direct Copy
#_159DAB: db $0F, $14, $17, $0C
#_159DAF: db $23 ; Byte Fill
#_159DB0: db $00
#_159DB1: db $0C ; Direct Copy
#_159DB2: db $EC, $3B, $BF, $05, $4F, $32, $87, $7A
#_159DBA: db $BA, $44, $7E, $00, $1C
#_159DBF: db $22 ; Byte Fill
#_159DC0: db $00
#_159DC1: db $07 ; Direct Copy
#_159DC2: db $FF, $BF, $4F, $87, $BA, $7E, $1C, $00
#_159DCA: db $97 ; Repeat Fill
#_159DCB: db $A8, $03 ; Repeat Fill bytes
#_159DCD: db $E0, $52 ; EXT Direct Copy
#_159DCF: db $D8, $00, $A4, $18, $CC, $B0, $4E, $B0
#_159DD7: db $EE, $90, $F6, $48, $7C, $B0, $70, $C0
#_159DDF: db $D8, $A4, $CC, $CE, $EE, $F6, $FC, $F0
#_159DE7: db $67, $38, $3F, $00, $16, $09, $2B, $05
#_159DEF: db $6F, $08, $6E, $11, $33, $00, $01, $00
#_159DF7: db $7F, $3D, $1B, $3F, $57, $5E, $33, $01
#_159DFF: db $FB, $54, $F9, $E6, $DE, $68, $F4, $98
#_159E07: db $E4, $38, $38, $C0, $A0, $40, $C0, $00
#_159E0F: db $FB, $F9, $FE, $FC, $FC, $38, $A0, $C0
#_159E17: db $1B, $0C, $0F, $00, $0E, $01, $1F, $05
#_159E1F: db $0E, $01, $01
#_159E22: db $24 ; Byte Fill
#_159E23: db $00
#_159E24: db $14 ; Direct Copy
#_159E25: db $1F, $09, $0F, $13, $0E, $01, $00, $00
#_159E2D: db $F2, $5C, $BC, $C0, $F8, $10, $F8, $B0
#_159E35: db $70, $80, $40, $80, $80
#_159E3A: db $22 ; Byte Fill
#_159E3B: db $00
#_159E3C: db $1F ; Direct Copy
#_159E3D: db $F2, $FC, $F8, $F8, $70, $40, $80, $00
#_159E45: db $74, $00, $FE, $30, $FE, $68, $FE, $44
#_159E4D: db $79, $2E, $F6, $1C, $74, $08, $08, $00
#_159E55: db $74, $BA, $FE, $FE, $7D, $BE, $74, $08
#_159E5D: db $37 ; Byte Fill
#_159E5E: db $00
#_159E5F: db $FF ; End of GFX 86

;===================================================================================================

GFX_87:
#_159E60: db $1F ; Direct Copy
#_159E61: db $00, $00, $07, $00, $08, $07, $19, $07
#_159E69: db $33, $0F, $73, $0F, $41, $3F, $80, $7F
#_159E71: db $00, $07, $08, $11, $23, $43, $41, $80
#_159E79: db $00, $00, $E0, $00, $F0, $E0, $98, $F0
#_159E81: db $43 ; Word Fill
#_159E82: db $6C, $98 ; Word Fill
#_159E84: db $13 ; Direct Copy
#_159E85: db $9A, $FC, $F2, $FC, $00, $E0, $F0, $F8
#_159E8D: db $9C, $9C, $FA, $F2, $00, $00, $0F, $00
#_159E95: db $10, $0F, $29, $17
#_159E99: db $43 ; Word Fill
#_159E9A: db $73, $0F ; Word Fill
#_159E9C: db $13 ; Direct Copy
#_159E9D: db $81, $7F, $80, $7F, $00, $0F, $10, $21
#_159EA5: db $43, $43, $81, $80, $00, $00, $C0, $00
#_159EAD: db $E0, $C0, $90, $E0
#_159EB1: db $43 ; Word Fill
#_159EB2: db $68, $90 ; Word Fill
#_159EB4: db $0B ; Direct Copy
#_159EB5: db $94, $F8, $F4, $F8, $00, $C0, $E0, $F0
#_159EBD: db $98, $98, $F4, $F4
#_159EC1: db $29 ; Byte Fill
#_159EC2: db $00
#_159EC3: db $05 ; Direct Copy
#_159EC4: db $10, $00, $3F, $00, $7F, $30
#_159ECA: db $24 ; Byte Fill
#_159ECB: db $00
#_159ECC: db $02 ; Direct Copy
#_159ECD: db $10, $3F, $7F
#_159ED0: db $27 ; Byte Fill
#_159ED1: db $00
#_159ED2: db $07 ; Direct Copy
#_159ED3: db $08, $00, $3C, $00, $E2, $1C, $FD, $DE
#_159EDB: db $23 ; Byte Fill
#_159EDC: db $00
#_159EDD: db $E0, $4E ; EXT Direct Copy
#_159EDF: db $08, $3C, $FE, $3F, $03, $00, $0C, $00
#_159EE7: db $13, $00, $2D, $00, $5D, $00, $5E, $00
#_159EEF: db $EF, $00, $55, $00, $03, $0F, $1E, $33
#_159EF7: db $63, $61, $B0, $6A, $C0, $00, $30, $00
#_159EFF: db $C8, $00, $B4, $00, $BA, $00, $7A, $00
#_159F07: db $F7, $00, $AA, $00, $C0, $F0, $78, $CC
#_159F0F: db $C6, $86, $0D, $56, $00, $00, $03, $00
#_159F17: db $0F, $00, $1F, $00, $35, $00, $3B, $00
#_159F1F: db $7C, $00, $3E, $1C, $00, $03, $0C, $10
#_159F27: db $2A, $26, $5F, $3F, $00, $00, $80
#_159F2E: db $83 ; Repeat Fill
#_159F2F: db $19, $00 ; Repeat Fill bytes
#_159F31: db $44 ; Word Fill
#_159F32: db $00, $F8 ; Word Fill
#_159F34: db $01 ; Direct Copy
#_159F35: db $DE, $00
#_159F37: db $83 ; Repeat Fill
#_159F38: db $D7, $00 ; Repeat Fill bytes
#_159F3A: db $E0, $35 ; EXT Direct Copy
#_159F3C: db $60, $10, $08, $08, $26, $C1, $03, $00
#_159F44: db $05, $03, $1B, $04, $3F, $00, $7D, $00
#_159F4C: db $6E, $00, $7F, $00, $EB, $00, $03, $05
#_159F54: db $1B, $3D, $42, $71, $40, $DC, $E0, $00
#_159F5C: db $90, $E0, $E8, $10, $FC, $00, $BE, $00
#_159F64: db $77, $02, $FF, $00, $D7, $00, $E0, $90
#_159F6C: db $E8, $9C, $42, $8F, $03, $3B
#_159F72: db $83 ; Repeat Fill
#_159F73: db $00, $00 ; Repeat Fill bytes
#_159F75: db $13 ; Direct Copy
#_159F76: db $1F, $00, $3F, $00, $6B, $00, $77, $00
#_159F7E: db $F9, $10, $6D, $18, $00, $07, $18, $20
#_159F86: db $54, $5C, $BE, $7F
#_159F8A: db $87 ; Repeat Fill
#_159F8B: db $D8, $00 ; Repeat Fill bytes
#_159F8D: db $06 ; Direct Copy
#_159F8E: db $FC, $00, $FE, $00, $BC, $00, $68
#_159F95: db $84 ; Repeat Fill
#_159F96: db $E7, $00 ; Repeat Fill bytes
#_159F98: db $E0, $63 ; EXT Direct Copy
#_159F9A: db $0C, $0A, $44, $98, $07, $00, $09, $07
#_159FA2: db $33, $0C, $7F, $00, $7B, $00, $ED, $40
#_159FAA: db $FE, $00, $FF, $00, $07, $09, $33, $5C
#_159FB2: db $64, $F3, $C1, $C0, $C0, $00, $A0, $C0
#_159FBA: db $DC, $20, $FE, $00, $DE, $00, $B7, $00
#_159FC2: db $7F, $00, $FF, $00, $C0, $A0, $DC, $3A
#_159FCA: db $26, $CF, $83, $03, $91, $6E, $AA, $55
#_159FD2: db $80, $7F, $40, $3F, $30, $0F, $0F, $00
#_159FDA: db $0E, $00, $07, $00, $91, $AA, $80, $40
#_159FE2: db $30, $0F, $09, $07, $62, $FC, $82, $7C
#_159FEA: db $02, $FC, $04, $F8, $08, $F0, $F0, $00
#_159FF2: db $40, $00, $80, $00, $62, $82, $02, $04
#_159FFA: db $08, $F0, $C0, $80
#_159FFE: db $89 ; Repeat Fill
#_159FFF: db $80, $01 ; Repeat Fill bytes
#_15A001: db $04 ; Direct Copy
#_15A002: db $1F, $00, $39, $00, $1F
#_15A007: db $85 ; Repeat Fill
#_15A008: db $8F, $01 ; Repeat Fill bytes
#_15A00A: db $06 ; Direct Copy
#_15A00B: db $1F, $27, $1F, $64, $F8, $84, $78
#_15A012: db $83 ; Repeat Fill
#_15A013: db $9E, $01 ; Repeat Fill bytes
#_15A015: db $E0, $F4 ; EXT Direct Copy
#_15A017: db $10, $E0, $E0, $00, $70, $00, $E0, $00
#_15A01F: db $64, $84, $04, $08, $10, $E0, $90, $E0
#_15A027: db $7E, $30, $3D, $01, $1F, $01, $13, $02
#_15A02F: db $33, $03, $49, $31, $2F, $18, $12, $0C
#_15A037: db $7F, $3E, $18, $1C, $3C, $5E, $2F, $12
#_15A03F: db $FD, $E6, $FD, $F6, $FF, $EE, $FE, $10
#_15A047: db $FC, $F8, $FE, $F4, $FA, $0C, $24, $18
#_15A04F: db $1F, $0F, $1F, $0E, $04, $0E, $FA, $34
#_15A057: db $65, $00, $7B, $00, $9E, $00, $4D, $00
#_15A05F: db $71, $00, $FF, $11, $13, $E3, $98, $E8
#_15A067: db $7A, $54, $E1, $7B, $7F, $EE, $1C, $97
#_15A06F: db $A6, $00, $DE, $00, $79, $00, $B2, $00
#_15A077: db $8C, $00, $FE, $88, $CD, $CA, $19, $17
#_15A07F: db $5E, $2A, $87, $DE, $FC, $76, $35, $E9
#_15A087: db $3F, $12, $5F, $22, $7D, $3E, $7F, $06
#_15A08F: db $7F, $00, $3F, $03, $10, $0F, $0F, $00
#_15A097: db $3F, $73, $7F, $77, $77, $3F, $10, $0F
#_15A09F: db $F6, $00, $E2, $00, $3C, $00, $FE, $00
#_15A0A7: db $3F, $00, $9A, $00, $CC, $00, $30, $00
#_15A0AF: db $8E, $1E, $C4, $82, $C1, $EE, $FC, $30
#_15A0B7: db $9C, $08, $DF, $08, $F7, $0D, $B6, $0B
#_15A0BF: db $5F, $08, $3F, $04, $07, $03, $03, $00
#_15A0C7: db $FF, $BB, $BD, $DB, $7B, $3F, $07, $03
#_15A0CF: db $39, $10, $FB, $10, $EF, $B0, $6D, $D0
#_15A0D7: db $FA, $10, $FC, $20, $E0, $C0, $C0, $00
#_15A0DF: db $FF, $DD, $BD, $DB, $DE, $FC, $E0, $C0
#_15A0E7: db $2E, $14, $7E, $24, $9E, $6C, $FF, $7E
#_15A0EF: db $FF, $02, $7E, $2F, $39, $06, $16, $00
#_15A0F7: db $3F, $77, $EF, $FF, $FF, $6E, $29, $16
#_15A0FF: db $C4, $00, $FE, $00, $BF, $00, $7D, $00
#_15A107: db $62, $00, $8C, $00, $F0
#_15A10C: db $22 ; Byte Fill
#_15A10D: db $00
#_15A10E: db $E0, $67 ; EXT Direct Copy
#_15A110: db $3C, $1E, $C5, $83, $9E, $FC, $F0, $00
#_15A118: db $AF, $00, $DF, $00, $FF, $0A, $FF, $09
#_15A120: db $BF, $0C, $5E, $0B, $2F, $03, $0F, $00
#_15A128: db $D4, $FE, $BF, $DB, $DD, $7F, $2B, $0B
#_15A130: db $F5, $00, $FB, $00, $FF, $50, $FF, $90
#_15A138: db $FD, $30, $7A, $D0, $F4, $C0, $F0, $00
#_15A140: db $2B, $7F, $FD, $DB, $BB, $FE, $D4, $D0
#_15A148: db $00, $00, $21, $00, $76, $01, $59, $07
#_15A150: db $2F, $03, $5F, $27, $EE, $7F, $DD, $3E
#_15A158: db $00, $21, $57, $6F, $37, $7F, $FE, $9C
#_15A160: db $00, $00, $F0, $00, $1C, $F0, $FA, $F4
#_15A168: db $F3, $EC, $73, $EC, $2B, $FC, $A3, $7C
#_15A170: db $00, $F0, $FC, $FE, $FF, $7F, $3F, $37
#_15A178: db $29 ; Byte Fill
#_15A179: db $00
#_15A17A: db $43 ; Word Fill
#_15A17B: db $07, $00 ; Word Fill
#_15A17D: db $00 ; Direct Copy
#_15A17E: db $0E
#_15A17F: db $25 ; Byte Fill
#_15A180: db $00
#_15A181: db $02 ; Direct Copy
#_15A182: db $07, $07, $0F
#_15A185: db $25 ; Byte Fill
#_15A186: db $00
#_15A187: db $09 ; Direct Copy
#_15A188: db $08, $00, $78, $00, $EC, $18, $EC, $98
#_15A190: db $EC, $58
#_15A192: db $22 ; Byte Fill
#_15A193: db $00
#_15A194: db $1C ; Direct Copy
#_15A195: db $08, $78, $FC, $7C, $FC, $07, $00, $0F
#_15A19D: db $06, $17, $0E, $25, $1E, $2B, $1D, $2D
#_15A1A5: db $18, $1B, $02, $1E, $01, $07, $0F, $1F
#_15A1AD: db $3D, $3A, $2F, $1D, $1F
#_15A1B2: db $83 ; Repeat Fill
#_15A1B3: db $1A, $00 ; Repeat Fill bytes
#_15A1B5: db $07 ; Direct Copy
#_15A1B6: db $1F, $10, $EC, $0B, $DF, $6B, $F5, $A3
#_15A1BE: db $43 ; Word Fill
#_15A1BF: db $2E, $F5 ; Word Fill
#_15A1C1: db $1F ; Direct Copy
#_15A1C2: db $E0, $10, $EF, $F4, $D7, $FD, $EA, $EA
#_15A1CA: db $08, $00, $14, $08, $1A, $04, $D2, $0C
#_15A1D2: db $36, $CC, $D6, $EC, $AA, $F4, $96, $F8
#_15A1DA: db $08, $1C, $1E, $DE, $3E, $D6, $EA, $F6
#_15A1E2: db $83 ; Repeat Fill
#_15A1E3: db $00, $00 ; Repeat Fill bytes
#_15A1E5: db $86 ; Repeat Fill
#_15A1E6: db $62, $03 ; Repeat Fill bytes
#_15A1E8: db $05 ; Direct Copy
#_15A1E9: db $1C, $2D, $1B, $78, $07, $00
#_15A1EF: db $83 ; Repeat Fill
#_15A1F0: db $70, $03 ; Repeat Fill bytes
#_15A1F2: db $02 ; Direct Copy
#_15A1F3: db $3B, $2F, $7F
#_15A1F6: db $85 ; Repeat Fill
#_15A1F7: db $18, $00 ; Repeat Fill bytes
#_15A1F9: db $83 ; Repeat Fill
#_15A1FA: db $7C, $03 ; Repeat Fill bytes
#_15A1FC: db $06 ; Direct Copy
#_15A1FD: db $BF, $DB, $D5, $63, $D6, $E5, $00
#_15A204: db $83 ; Repeat Fill
#_15A205: db $88, $03 ; Repeat Fill bytes
#_15A207: db $02 ; Direct Copy
#_15A208: db $A7, $DD, $DA
#_15A20B: db $23 ; Byte Fill
#_15A20C: db $00
#_15A20D: db $E0, $37 ; EXT Direct Copy
#_15A20F: db $18, $00, $24, $18, $DA, $0C, $36, $CC
#_15A217: db $DE, $E4, $AA, $F4, $00, $00, $18, $3C
#_15A21F: db $DE, $36, $DE, $EA, $00, $00, $01, $00
#_15A227: db $0F, $01, $17, $0B, $3B, $1D, $33, $1D
#_15A22F: db $79, $3E, $7D, $1E, $00, $01, $0E, $14
#_15A237: db $3A, $32, $79, $7D, $3C, $00, $FF, $3C
#_15A23F: db $FF, $66, $FF, $42, $DB, $66, $E7, $7E
#_15A247: db $43 ; Word Fill
#_15A248: db $FF, $BD ; Word Fill
#_15A24A: db $00 ; Direct Copy
#_15A24B: db $3C
#_15A24C: db $22 ; Byte Fill
#_15A24D: db $FF
#_15A24E: db $03 ; Direct Copy
#_15A24F: db $DB, $E7, $7E, $7E
#_15A253: db $83 ; Repeat Fill
#_15A254: db $18, $03 ; Repeat Fill bytes
#_15A256: db $E0, $68 ; EXT Direct Copy
#_15A258: db $C8, $B0, $F4, $D8, $DC, $B8, $CE, $B8
#_15A260: db $DE, $B0, $F6, $9C, $00, $F0, $48, $34
#_15A268: db $5C, $4E, $5E, $7E, $29, $1E, $55, $3E
#_15A270: db $67, $3D, $6D, $3E, $7B, $3C, $36, $19
#_15A278: db $1D, $03, $0A, $07, $29, $5D, $7E, $7D
#_15A280: db $7B, $36, $1D, $0B, $81, $81, $C3, $C3
#_15A288: db $81, $FF, $FF, $00, $01, $FE, $CE, $FF
#_15A290: db $31, $FF, $54, $EF, $7E, $3C, $00, $FF
#_15A298: db $01, $FE, $FF, $D7, $98, $70, $9C, $78
#_15A2A0: db $CC, $B8, $C6, $BC, $D6, $3C, $CE, $3C
#_15A2A8: db $64, $98, $F8, $A0, $98, $9C, $5C, $5E
#_15A2B0: db $DE, $CE, $64, $F8, $EB, $1C, $A7, $58
#_15A2B8: db $88, $7F, $5F, $3E, $3E, $01, $10, $0F
#_15A2C0: db $0F
#_15A2C1: db $22 ; Byte Fill
#_15A2C2: db $00
#_15A2C3: db $14 ; Direct Copy
#_15A2C4: db $AA, $80, $98, $5E, $2A, $10, $0F, $00
#_15A2CC: db $87, $78, $0E, $F0, $44, $B8, $88, $70
#_15A2D4: db $18, $E0, $70, $80, $80
#_15A2D9: db $22 ; Byte Fill
#_15A2DA: db $00
#_15A2DB: db $08 ; Direct Copy
#_15A2DC: db $0F, $0E, $04, $88, $18, $70, $80, $00
#_15A2E4: db $0D
#_15A2E5: db $84 ; Repeat Fill
#_15A2E6: db $E3, $01 ; Repeat Fill bytes
#_15A2E8: db $12 ; Direct Copy
#_15A2E9: db $13, $03, $09, $01, $07, $00, $02, $01
#_15A2F1: db $01, $00, $0E, $18, $1C, $1C, $0E, $07
#_15A2F9: db $03, $01, $CC
#_15A2FC: db $43 ; Word Fill
#_15A2FD: db $78, $FC ; Word Fill
#_15A2FF: db $E0, $49 ; EXT Direct Copy
#_15A301: db $00, $FC, $F8, $F8, $F0, $F0, $00, $F0
#_15A309: db $E0, $E0, $00, $FC, $FC, $7C, $04, $08
#_15A311: db $F0, $F0, $E0, $12, $0D, $33, $1F, $3E
#_15A319: db $1F, $13, $0C, $1E, $03, $1A, $0F, $3C
#_15A321: db $07, $1F, $00, $1F, $3F, $3E, $13, $1E
#_15A329: db $1E, $24, $1F, $CD, $F3, $13, $EF, $67
#_15A331: db $9D, $9F, $7D, $C3, $3C, $BF, $00, $83
#_15A339: db $00, $01, $00, $CD, $13, $67, $9F, $C3
#_15A341: db $BF, $82, $01, $14, $F8, $B4, $F8, $54
#_15A349: db $E8, $68
#_15A34B: db $43 ; Word Fill
#_15A34C: db $F0, $E8 ; Word Fill
#_15A34E: db $E0, $3E ; EXT Direct Copy
#_15A350: db $70, $C8, $70, $F0, $00, $F4, $F4, $D4
#_15A358: db $E8, $E8, $68, $48, $F0, $C8, $37, $87
#_15A360: db $7F, $D8, $7F, $67, $38, $3F, $07, $0D
#_15A368: db $03, $0F, $01, $07, $00, $FF, $FF, $F8
#_15A370: db $67, $3F, $0F, $09, $07, $BE, $DD, $6D
#_15A378: db $A3, $D3, $4D, $E7, $9B, $5E, $BB, $AD
#_15A380: db $D7, $1E, $E3, $EF, $00, $A2, $5D, $B3
#_15A388: db $E7, $5F, $AF, $12, $EF, $96, $F8
#_15A38F: db $83 ; Repeat Fill
#_15A390: db $10, $05 ; Repeat Fill bytes
#_15A392: db $05 ; Direct Copy
#_15A393: db $D4, $E8, $94, $E8, $28, $D0
#_15A399: db $83 ; Repeat Fill
#_15A39A: db $A2, $04 ; Repeat Fill bytes
#_15A39C: db $14 ; Direct Copy
#_15A39D: db $F6, $F4, $F4, $D4, $94, $28, $70, $80
#_15A3A5: db $6D, $3A, $43, $3C, $6B, $3D, $37, $18
#_15A3AD: db $1D, $07, $0D, $03, $07
#_15A3B2: db $22 ; Byte Fill
#_15A3B3: db $00
#_15A3B4: db $E0, $28 ; EXT Direct Copy
#_15A3B6: db $7D, $7B, $7B, $37, $1F, $09, $07, $00
#_15A3BE: db $FF, $DB, $DB, $C3, $E7, $24, $FF, $C3
#_15A3C6: db $DB, $3C, $FD, $83, $85, $02, $03, $00
#_15A3CE: db $3C, $3C, $DB, $FF, $DB, $FD, $84, $03
#_15A3D6: db $C2, $BC, $D6, $3C, $EC, $D8, $78, $C0
#_15A3DE: db $F0
#_15A3DF: db $43 ; Word Fill
#_15A3E0: db $E0, $30 ; Word Fill
#_15A3E2: db $15 ; Direct Copy
#_15A3E3: db $C0, $E0, $00, $5E, $DE, $EC, $78, $F0
#_15A3EB: db $F0, $10, $E0, $0A, $07, $09, $07, $07
#_15A3F3: db $02, $0B, $05, $0E, $07, $0F
#_15A3F9: db $24 ; Byte Fill
#_15A3FA: db $00
#_15A3FB: db $E0, $20 ; EXT Direct Copy
#_15A3FD: db $0B, $09, $07, $0F, $0E, $0F, $00, $00
#_15A405: db $AA, $D7, $E5, $BB, $FB, $B7, $6D, $9B
#_15A40D: db $55, $8B, $CC, $03, $07, $00, $03, $00
#_15A415: db $AB, $E5, $FB, $7D, $5D, $CC, $07, $03
#_15A41D: db $B0
#_15A41E: db $44 ; Word Fill
#_15A41F: db $C0, $A0 ; Word Fill
#_15A421: db $11 ; Direct Copy
#_15A422: db $60, $80, $E0, $C0, $D0, $A0, $F0, $20
#_15A42A: db $E0, $00, $B0, $A0, $A0, $60, $E0, $F0
#_15A432: db $F0, $E0
#_15A434: db $FF ; End of GFX 87

;===================================================================================================

GFX_88:
#_15A435: db $E0, $2F ; EXT Direct Copy
#_15A437: db $00, $00, $78, $00, $E4, $78, $F3, $1C
#_15A43F: db $DF, $6D, $4E, $17, $5C, $17, $7E, $2F
#_15A447: db $00, $78, $FC, $FF, $9F, $6F, $6F, $5F
#_15A44F: db $00, $00, $1E, $00, $27, $1E, $CF, $38
#_15A457: db $FB, $B6, $72, $E8, $3A, $E8, $7E, $F4
#_15A45F: db $00, $1E, $3F, $FF, $F9, $F6, $F6, $FA
#_15A467: db $25 ; Byte Fill
#_15A468: db $00
#_15A469: db $09 ; Direct Copy
#_15A46A: db $03, $00, $07, $03, $0B, $07, $09, $07
#_15A472: db $37, $09
#_15A474: db $22 ; Byte Fill
#_15A475: db $00
#_15A476: db $1C ; Direct Copy
#_15A477: db $03, $07, $0F, $0F, $3F, $38, $00, $64
#_15A47F: db $38, $FC, $40, $E6, $3C, $DE, $70, $B2
#_15A487: db $6C, $EC, $D8, $F4, $D0, $38, $7C, $FC
#_15A48F: db $FE, $FE, $F2, $E4, $EC
#_15A494: db $83 ; Repeat Fill
#_15A495: db $00, $00 ; Repeat Fill bytes
#_15A497: db $0D ; Direct Copy
#_15A498: db $CF, $78, $E7, $7D, $FF, $3D, $7F, $1B
#_15A4A0: db $7D, $27, $3E, $0F, $00, $78
#_15A4A6: db $22 ; Byte Fill
#_15A4A7: db $FF
#_15A4A8: db $02 ; Direct Copy
#_15A4A9: db $7F, $5F, $3F
#_15A4AC: db $83 ; Repeat Fill
#_15A4AD: db $18, $00 ; Repeat Fill bytes
#_15A4AF: db $0D ; Direct Copy
#_15A4B0: db $F3, $1E, $E7, $BE, $FF, $BC, $FE, $D8
#_15A4B8: db $BE, $E4, $7C, $F0, $00, $1E
#_15A4BE: db $22 ; Byte Fill
#_15A4BF: db $FF
#_15A4C0: db $02 ; Direct Copy
#_15A4C1: db $FE, $FA, $FC
#_15A4C4: db $27 ; Byte Fill
#_15A4C5: db $00
#_15A4C6: db $07 ; Direct Copy
#_15A4C7: db $30, $00, $5C, $10, $BE, $3C, $FB, $08
#_15A4CF: db $23 ; Byte Fill
#_15A4D0: db $00
#_15A4D1: db $03 ; Direct Copy
#_15A4D2: db $30, $6C, $C2, $F7
#_15A4D6: db $25 ; Byte Fill
#_15A4D7: db $00
#_15A4D8: db $09 ; Direct Copy
#_15A4D9: db $04, $00, $0E, $04, $32, $00, $7E, $2C
#_15A4E1: db $DC, $10
#_15A4E3: db $22 ; Byte Fill
#_15A4E4: db $00
#_15A4E5: db $05 ; Direct Copy
#_15A4E6: db $04, $0A, $3E, $52, $EC, $0E
#_15A4EC: db $45 ; Word Fill
#_15A4ED: db $00, $1F ; Word Fill
#_15A4EF: db $11 ; Direct Copy
#_15A4F0: db $01, $2F, $13, $2F, $1C, $3F, $10, $17
#_15A4F8: db $08, $0E, $11, $15, $12, $2C, $23, $2C
#_15A500: db $10, $70
#_15A502: db $45 ; Word Fill
#_15A503: db $00, $F8 ; Word Fill
#_15A505: db $10 ; Direct Copy
#_15A506: db $80, $F4, $C8, $F4, $38, $FC, $08, $E8
#_15A50E: db $10, $70, $88, $A8, $48, $34, $C4, $34
#_15A516: db $08
#_15A517: db $27 ; Byte Fill
#_15A518: db $00
#_15A519: db $06 ; Direct Copy
#_15A51A: db $04, $00, $0F, $04, $1F, $09, $1E
#_15A521: db $24 ; Byte Fill
#_15A522: db $00
#_15A523: db $03 ; Direct Copy
#_15A524: db $04, $0B, $16, $1B
#_15A528: db $27 ; Byte Fill
#_15A529: db $00
#_15A52A: db $07 ; Direct Copy
#_15A52B: db $30, $00, $F8, $30, $F8, $D0, $FC, $D8
#_15A533: db $23 ; Byte Fill
#_15A534: db $00
#_15A535: db $03 ; Direct Copy
#_15A536: db $30, $C8, $28, $24
#_15A53A: db $23 ; Byte Fill
#_15A53B: db $00
#_15A53C: db $05 ; Direct Copy
#_15A53D: db $04, $00, $0A, $04, $0E, $04
#_15A543: db $43 ; Word Fill
#_15A544: db $1A, $0C ; Word Fill
#_15A546: db $09 ; Direct Copy
#_15A547: db $34, $18, $00, $00, $04, $0E, $0E, $1E
#_15A54F: db $1E, $3C
#_15A551: db $85 ; Repeat Fill
#_15A552: db $18, $00 ; Repeat Fill bytes
#_15A554: db $04 ; Direct Copy
#_15A555: db $19, $07, $06, $01, $01
#_15A55A: db $25 ; Byte Fill
#_15A55B: db $00
#_15A55C: db $04 ; Direct Copy
#_15A55D: db $1E, $27, $1F, $07, $01
#_15A562: db $2B ; Byte Fill
#_15A563: db $00
#_15A564: db $83 ; Repeat Fill
#_15A565: db $F8, $00 ; Repeat Fill bytes
#_15A567: db $01 ; Direct Copy
#_15A568: db $1C, $08
#_15A56A: db $24 ; Byte Fill
#_15A56B: db $00
#_15A56C: db $02 ; Direct Copy
#_15A56D: db $04, $0B, $17
#_15A570: db $29 ; Byte Fill
#_15A571: db $00
#_15A572: db $05 ; Direct Copy
#_15A573: db $20, $00, $F0, $20, $F8, $B0
#_15A579: db $24 ; Byte Fill
#_15A57A: db $00
#_15A57B: db $0F ; Direct Copy
#_15A57C: db $20, $D0, $48, $3F, $1B, $3F, $19, $3F
#_15A584: db $1D, $1C, $07, $06, $03, $03, $01, $01
#_15A58C: db $22 ; Byte Fill
#_15A58D: db $00
#_15A58E: db $14 ; Direct Copy
#_15A58F: db $3F, $3B, $3D, $1F, $07, $03, $01, $00
#_15A597: db $FC, $D8, $FC, $98, $FC, $B8, $38, $E0
#_15A59F: db $60, $C0, $C0, $80, $80
#_15A5A4: db $22 ; Byte Fill
#_15A5A5: db $00
#_15A5A6: db $12 ; Direct Copy
#_15A5A7: db $FC, $DC, $BC, $F8, $E0, $C0, $80, $00
#_15A5AF: db $5F, $33, $7E, $37, $3C, $1F, $1E, $0F
#_15A5B7: db $0F, $03, $03
#_15A5BA: db $24 ; Byte Fill
#_15A5BB: db $00
#_15A5BC: db $12 ; Direct Copy
#_15A5BD: db $7B, $77, $3F, $1F, $0F, $03, $00, $00
#_15A5C5: db $6C, $C0, $38, $E0, $38, $F0, $F8, $F0
#_15A5CD: db $F0, $C0, $C0
#_15A5D0: db $24 ; Byte Fill
#_15A5D1: db $00
#_15A5D2: db $00 ; Direct Copy
#_15A5D3: db $FC
#_15A5D4: db $22 ; Byte Fill
#_15A5D5: db $F8
#_15A5D6: db $0A ; Direct Copy
#_15A5D7: db $F0, $C0, $00, $00, $3B, $1F, $38, $1F
#_15A5DF: db $3C, $1F, $1F
#_15A5E2: db $83 ; Repeat Fill
#_15A5E3: db $B7, $01 ; Repeat Fill bytes
#_15A5E5: db $24 ; Byte Fill
#_15A5E6: db $00
#_15A5E7: db $22 ; Byte Fill
#_15A5E8: db $3F
#_15A5E9: db $84 ; Repeat Fill
#_15A5EA: db $C3, $01 ; Repeat Fill bytes
#_15A5EC: db $05 ; Direct Copy
#_15A5ED: db $DC, $F8, $1C, $F8, $3C, $F8
#_15A5F3: db $84 ; Repeat Fill
#_15A5F4: db $CE, $01 ; Repeat Fill bytes
#_15A5F6: db $24 ; Byte Fill
#_15A5F7: db $00
#_15A5F8: db $22 ; Byte Fill
#_15A5F9: db $FC
#_15A5FA: db $84 ; Repeat Fill
#_15A5FB: db $DB, $01 ; Repeat Fill bytes
#_15A5FD: db $0A ; Direct Copy
#_15A5FE: db $FF, $08, $9B, $68, $7F, $08, $3E, $14
#_15A606: db $1F, $01, $01
#_15A609: db $24 ; Byte Fill
#_15A60A: db $00
#_15A60B: db $14 ; Direct Copy
#_15A60C: db $95, $F6, $75, $3B, $1E, $01, $00, $00
#_15A614: db $F8, $10, $D8, $10, $FC, $10, $7C, $28
#_15A61C: db $FA, $DC, $E6, $38, $3C
#_15A621: db $22 ; Byte Fill
#_15A622: db $00
#_15A623: db $E0, $38 ; EXT Direct Copy
#_15A625: db $A8, $68, $AC, $DC, $3E, $FA, $3C, $00
#_15A62D: db $29, $00, $5E, $18, $5F, $16, $7D, $37
#_15A635: db $3E, $03, $17, $05, $2F, $0C, $1E, $00
#_15A63D: db $3E, $67, $6F, $4F, $3F, $1B, $33, $1E
#_15A645: db $94, $00, $7A, $18, $FA, $68, $BE, $EC
#_15A64D: db $7C, $C0, $E8, $A0, $F4, $30, $78, $00
#_15A655: db $7C, $E6, $F6, $F2, $FC, $D8, $CC, $78
#_15A65D: db $1E
#_15A65E: db $43 ; Word Fill
#_15A65F: db $00, $1F ; Word Fill
#_15A661: db $07 ; Direct Copy
#_15A662: db $08, $0D, $00, $0B, $05, $0D, $03, $07
#_15A66A: db $22 ; Byte Fill
#_15A66B: db $00
#_15A66C: db $14 ; Direct Copy
#_15A66D: db $17, $19, $16, $0F, $0F, $0B, $07, $00
#_15A675: db $34, $10, $FA, $08, $BC, $40, $F0, $00
#_15A67D: db $E0, $80, $E0, $C0, $C0
#_15A682: db $22 ; Byte Fill
#_15A683: db $00
#_15A684: db $09 ; Direct Copy
#_15A685: db $EC, $F6, $7C, $F0, $E0, $E0, $C0, $00
#_15A68D: db $34, $18
#_15A68F: db $43 ; Word Fill
#_15A690: db $68, $30 ; Word Fill
#_15A692: db $43 ; Word Fill
#_15A693: db $50, $20 ; Word Fill
#_15A695: db $00 ; Direct Copy
#_15A696: db $20
#_15A697: db $24 ; Byte Fill
#_15A698: db $00
#_15A699: db $05 ; Direct Copy
#_15A69A: db $3C, $78, $78, $50, $50, $20
#_15A6A0: db $25 ; Byte Fill
#_15A6A1: db $00
#_15A6A2: db $08 ; Direct Copy
#_15A6A3: db $80, $00, $E0, $80, $78, $E0, $94, $78
#_15A6AB: db $78
#_15A6AC: db $24 ; Byte Fill
#_15A6AD: db $00
#_15A6AE: db $10 ; Direct Copy
#_15A6AF: db $80, $E0, $F8, $FC, $78, $00, $19, $01
#_15A6B7: db $3F, $03, $27, $18, $1F, $05, $3D, $18
#_15A6BF: db $1F
#_15A6C0: db $24 ; Byte Fill
#_15A6C1: db $00
#_15A6C2: db $1F ; Direct Copy
#_15A6C3: db $1E, $24, $3F, $1A, $3F, $1F, $00, $00
#_15A6CB: db $DE, $58, $95, $10, $3E, $28, $3C, $20
#_15A6D3: db $FE, $4C, $EE, $1C, $6C, $18, $38, $00
#_15A6DB: db $A6, $EF, $D6, $DC, $BE, $FE, $5C, $38
#_15A6E3: db $25 ; Byte Fill
#_15A6E4: db $00
#_15A6E5: db $83 ; Repeat Fill
#_15A6E6: db $98, $00 ; Repeat Fill bytes
#_15A6E8: db $05 ; Direct Copy
#_15A6E9: db $9E, $1C, $BB, $28, $FF, $68
#_15A6EF: db $22 ; Byte Fill
#_15A6F0: db $00
#_15A6F1: db $04 ; Direct Copy
#_15A6F2: db $30, $6C, $E2, $D7, $95
#_15A6F7: db $25 ; Byte Fill
#_15A6F8: db $00
#_15A6F9: db $09 ; Direct Copy
#_15A6FA: db $0C, $00, $32, $00, $79, $38, $DD, $14
#_15A702: db $FF, $16
#_15A704: db $22 ; Byte Fill
#_15A705: db $00
#_15A706: db $04 ; Direct Copy
#_15A707: db $0C, $3E, $47, $EB, $A9
#_15A70C: db $25 ; Byte Fill
#_15A70D: db $00
#_15A70E: db $09 ; Direct Copy
#_15A70F: db $20, $00, $50, $00, $BC, $20, $FF, $6C
#_15A717: db $7F, $1F
#_15A719: db $22 ; Byte Fill
#_15A71A: db $00
#_15A71B: db $04 ; Direct Copy
#_15A71C: db $20, $70, $DC, $93, $60
#_15A721: db $27 ; Byte Fill
#_15A722: db $00
#_15A723: db $07 ; Direct Copy
#_15A724: db $0C, $00, $3A, $08, $FD, $34, $FF, $F0
#_15A72C: db $23 ; Byte Fill
#_15A72D: db $00
#_15A72E: db $03 ; Direct Copy
#_15A72F: db $0C, $36, $CB, $0F
#_15A733: db $25 ; Byte Fill
#_15A734: db $00
#_15A735: db $83 ; Repeat Fill
#_15A736: db $98, $00 ; Repeat Fill bytes
#_15A738: db $05 ; Direct Copy
#_15A739: db $9F, $1C, $BB, $2B, $F8, $28
#_15A73F: db $22 ; Byte Fill
#_15A740: db $00
#_15A741: db $04 ; Direct Copy
#_15A742: db $30, $6C, $E3, $D4, $D7
#_15A747: db $25 ; Byte Fill
#_15A748: db $00
#_15A749: db $83 ; Repeat Fill
#_15A74A: db $50, $03 ; Repeat Fill bytes
#_15A74C: db $05 ; Direct Copy
#_15A74D: db $F9, $38, $DD, $D4, $1F, $14
#_15A753: db $22 ; Byte Fill
#_15A754: db $00
#_15A755: db $E0, $4C ; EXT Direct Copy
#_15A757: db $0C, $36, $C7, $2B, $EB, $07, $00, $1E
#_15A75F: db $01, $2F, $10, $5C, $23, $5E, $21, $FE
#_15A767: db $01, $FC, $03, $99, $66, $07, $19, $30
#_15A76F: db $63, $61, $A9, $AB, $EF, $E0, $00, $70
#_15A777: db $80, $58, $A0, $30, $C0, $B8, $F0, $58
#_15A77F: db $F0, $3C, $F8, $FC, $18, $E0, $90, $E8
#_15A787: db $F0, $F8, $F8, $FC, $FC, $4F, $38, $9C
#_15A78F: db $73, $9B, $67, $B6, $4F, $AC, $5F, $A8
#_15A797: db $5F, $DF, $3F, $BF, $78, $4F, $9C, $9B
#_15A79F: db $B7, $AF, $AF, $DF, $BF
#_15A7A4: db $25 ; Byte Fill
#_15A7A5: db $00
#_15A7A6: db $23 ; Byte Fill
#_15A7A7: db $30
#_15A7A8: db $28 ; Byte Fill
#_15A7A9: db $00
#_15A7AA: db $01 ; Direct Copy
#_15A7AB: db $30, $30
#_15A7AD: db $26 ; Byte Fill
#_15A7AE: db $00
#_15A7AF: db $13 ; Direct Copy
#_15A7B0: db $0E, $00, $19, $06, $35, $0E, $6F, $12
#_15A7B8: db $4C, $13, $5D, $12, $00, $00, $0E, $17
#_15A7C0: db $2E, $5E, $7F, $63
#_15A7C4: db $27 ; Byte Fill
#_15A7C5: db $00
#_15A7C6: db $45 ; Word Fill
#_15A7C7: db $80, $00 ; Word Fill
#_15A7C9: db $00 ; Direct Copy
#_15A7CA: db $C0
#_15A7CB: db $24 ; Byte Fill
#_15A7CC: db $00
#_15A7CD: db $22 ; Byte Fill
#_15A7CE: db $80
#_15A7CF: db $01 ; Direct Copy
#_15A7D0: db $40, $04
#_15A7D2: db $44 ; Word Fill
#_15A7D3: db $00, $0E ; Word Fill
#_15A7D5: db $89 ; Repeat Fill
#_15A7D6: db $F6, $03 ; Repeat Fill bytes
#_15A7D8: db $01 ; Direct Copy
#_15A7D9: db $04, $0A
#_15A7DB: db $85 ; Repeat Fill
#_15A7DC: db $02, $04 ; Repeat Fill bytes
#_15A7DE: db $23 ; Byte Fill
#_15A7DF: db $00
#_15A7E0: db $18 ; Direct Copy
#_15A7E1: db $1E, $00, $3F, $00, $EE, $10, $D8, $30
#_15A7E9: db $F4, $08, $AA, $44, $00, $00, $1E, $21
#_15A7F1: db $DE, $B8, $BC, $6E, $00, $00, $7F, $00
#_15A7F9: db $77
#_15A7FA: db $44 ; Word Fill
#_15A7FB: db $2B, $54 ; Word Fill
#_15A7FD: db $07 ; Direct Copy
#_15A7FE: db $7F, $00, $5C, $23, $55, $2B, $00, $7F
#_15A806: db $22 ; Byte Fill
#_15A807: db $77
#_15A808: db $07 ; Direct Copy
#_15A809: db $54, $77, $77, $00, $00, $FE, $00, $EE
#_15A811: db $44 ; Word Fill
#_15A812: db $D4, $2A ; Word Fill
#_15A814: db $07 ; Direct Copy
#_15A815: db $FE, $00, $3A, $C4, $6A, $D4, $00, $FE
#_15A81D: db $22 ; Byte Fill
#_15A81E: db $EE
#_15A81F: db $0D ; Direct Copy
#_15A820: db $2A, $EE, $EE, $FB, $08, $DF, $28, $BE
#_15A828: db $54, $6F, $1B, $37, $0C, $1C
#_15A82E: db $24 ; Byte Fill
#_15A82F: db $00
#_15A830: db $12 ; Direct Copy
#_15A831: db $F6, $B5, $FB, $7C, $2F, $1C, $00, $00
#_15A839: db $DF, $10, $FB, $14, $7D, $2A, $F6, $D8
#_15A841: db $EC, $30, $78
#_15A844: db $24 ; Byte Fill
#_15A845: db $00
#_15A846: db $12 ; Direct Copy
#_15A847: db $6F, $AD, $DF, $3E, $F4, $78, $00, $00
#_15A84F: db $3B, $1B, $38, $18, $3C, $0C, $3F, $16
#_15A857: db $1F, $00, $01
#_15A85A: db $24 ; Byte Fill
#_15A85B: db $00
#_15A85C: db $14 ; Direct Copy
#_15A85D: db $24, $27, $33, $39, $1F, $01, $00, $00
#_15A865: db $DF, $D0, $19, $16, $3E, $38, $7C, $40
#_15A86D: db $E4, $B8, $FC, $40, $78
#_15A872: db $22 ; Byte Fill
#_15A873: db $00
#_15A874: db $12 ; Direct Copy
#_15A875: db $29, $EF, $C6, $BC, $7C, $FC, $78, $00
#_15A87D: db $BC, $4C, $DE, $2E, $7F, $07, $3F, $12
#_15A885: db $27, $1C, $1E
#_15A888: db $24 ; Byte Fill
#_15A889: db $00
#_15A88A: db $12 ; Direct Copy
#_15A88B: db $F3, $B1, $78, $3D, $3F, $1E, $00, $00
#_15A893: db $3D, $32, $7B, $74, $FE, $E0, $FC, $48
#_15A89B: db $E4, $38, $78
#_15A89E: db $24 ; Byte Fill
#_15A89F: db $00
#_15A8A0: db $E0, $44 ; EXT Direct Copy
#_15A8A2: db $CF, $8D, $1E, $BC, $FC, $78, $00, $00
#_15A8AA: db $E3, $1C, $FF, $00, $53, $22, $8F, $70
#_15A8B2: db $7F, $00, $FE, $01, $8F, $70, $77, $00
#_15A8BA: db $BE, $AF, $5D, $8E, $7A, $8B, $89, $77
#_15A8C2: db $FC, $08, $BC, $48, $88, $70, $A6, $58
#_15A8CA: db $71, $AE, $5E, $BC, $BC, $70, $F0, $00
#_15A8D2: db $1C, $4C, $78, $7E, $FF, $FE, $FC, $F0
#_15A8DA: db $BF, $70, $7F, $20, $6F, $30, $77, $38
#_15A8E2: db $38, $1F, $1F, $07, $07
#_15A8E7: db $22 ; Byte Fill
#_15A8E8: db $00
#_15A8E9: db $06 ; Direct Copy
#_15A8EA: db $BF, $7F, $6F, $77, $38, $1F, $07
#_15A8F1: db $38 ; Byte Fill
#_15A8F2: db $00
#_15A8F3: db $E0, $3C ; EXT Direct Copy
#_15A8F5: db $5F, $01, $3F, $08, $2F, $12, $73, $01
#_15A8FD: db $71, $00, $21, $00, $02, $01, $01, $00
#_15A905: db $7F, $3F, $3F, $53, $51, $21, $03, $01
#_15A90D: db $60, $80, $F0, $00, $F8, $00, $FE, $80
#_15A915: db $F7, $08, $BE, $40, $DC, $A0, $F8, $00
#_15A91D: db $A0, $B0, $A8, $D6, $DD, $AE, $F4, $F8
#_15A925: db $5F, $00, $21, $00, $01, $00, $02, $01
#_15A92D: db $0F, $00, $13, $06, $0F
#_15A932: db $22 ; Byte Fill
#_15A933: db $00
#_15A934: db $E0, $4F ; EXT Direct Copy
#_15A936: db $7E, $21, $01, $03, $0D, $1F, $0F, $00
#_15A93E: db $6A, $84, $F4, $00, $F8, $80, $FE, $20
#_15A946: db $37, $08, $EE, $10, $70, $00, $C0, $00
#_15A94E: db $EE, $D4, $A8, $F6, $3D, $DE, $B0, $C0
#_15A956: db $77, $2B, $77, $2A, $41, $3E, $7F, $00
#_15A95E: db $77, $2A, $77, $2B, $40, $3F, $7F, $00
#_15A966: db $77, $77, $40, $7E, $77, $77, $40, $7F
#_15A96E: db $EE, $D4, $EE, $54, $82, $7C, $FE, $00
#_15A976: db $EE, $54, $EE, $D4, $02, $FC, $FE, $00
#_15A97E: db $EE, $EE, $02, $7E, $EE, $EE, $02, $FE
#_15A986: db $FF ; End of GFX 88

;===================================================================================================

GFX_89:
#_15A987: db $E0, $8F ; EXT Direct Copy
#_15A989: db $01, $00, $03, $00, $0F, $00, $1E, $0D
#_15A991: db $3A, $19, $79, $18, $BE, $1E, $DF, $5E
#_15A999: db $01, $02, $0F, $12, $26, $67, $E1, $A1
#_15A9A1: db $80, $00, $C0, $00, $F0, $00, $78, $B0
#_15A9A9: db $7C, $98, $FE, $08, $2D, $08, $8B, $0A
#_15A9B1: db $80, $40, $F0, $48, $44, $86, $D7, $F5
#_15A9B9: db $00, $00, $07, $00, $1F, $07, $3B, $1A
#_15A9C1: db $6B, $22, $7F, $23, $E9, $61, $F0, $30
#_15A9C9: db $00, $07, $18, $25, $55, $40, $96, $CF
#_15A9D1: db $00, $00, $80, $00, $FD, $00, $3F, $C0
#_15A9D9: db $1F, $E0, $BF, $40, $FF, $A0, $7F, $70
#_15A9E1: db $00, $80, $FD, $22, $11, $BB, $5A, $8D
#_15A9E9: db $03, $00, $06, $01, $0D, $02, $1F, $08
#_15A9F1: db $3F, $1C, $7F, $18, $BF, $10, $DF, $58
#_15A9F9: db $03, $06, $0D, $16, $22, $65, $E8, $A4
#_15AA01: db $C0, $00, $60, $80, $B0, $40, $F8, $10
#_15AA09: db $EC, $28, $EE, $08, $F5, $00, $F3, $02
#_15AA11: db $C0, $60, $B0, $68, $54, $36, $1F, $5D
#_15AA19: db $27 ; Byte Fill
#_15AA1A: db $00
#_15AA1B: db $07 ; Direct Copy
#_15AA1C: db $30, $00, $6F, $10, $F8, $47, $FF, $68
#_15AA24: db $23 ; Byte Fill
#_15AA25: db $00
#_15AA26: db $03 ; Direct Copy
#_15AA27: db $30, $6F, $B8, $9F
#_15AA2B: db $27 ; Byte Fill
#_15AA2C: db $00
#_15AA2D: db $07 ; Direct Copy
#_15AA2E: db $0C, $00, $F4, $08, $1E, $E0, $FF, $14
#_15AA36: db $23 ; Byte Fill
#_15AA37: db $00
#_15AA38: db $E0, $63 ; EXT Direct Copy
#_15AA3A: db $0C, $F4, $1E, $FB, $0F, $06, $1F, $03
#_15AA42: db $23, $1C, $4E, $37, $5F, $28, $7C, $27
#_15AA4A: db $79, $2E, $7B, $2D, $0F, $1F, $3F, $7E
#_15AA52: db $77, $7F, $7F, $7E, $D2, $3C, $BE, $6C
#_15AA5A: db $FC, $48, $58, $A0, $4E, $F0, $E9, $36
#_15AA62: db $F7, $BE, $FE, $D8, $FE, $FE, $FC, $78
#_15AA6A: db $7E, $FF, $7F, $3E, $3F, $06, $47, $3B
#_15AA72: db $B4, $7F, $FE, $61, $FE, $6B, $FD, $56
#_15AA7A: db $FD, $46, $7D, $16, $3F, $7F, $FC, $FE
#_15AA82: db $F7, $EF, $FF, $6F, $BF, $76, $F6, $40
#_15AA8A: db $68, $B0, $64, $F8, $F2, $9C, $FA, $6C
#_15AA92: db $FE, $EC, $BE, $AC, $FF, $F6, $78, $7C
#_15AA9A: db $FE, $9E, $1E, $5E
#_15AA9E: db $2D ; Byte Fill
#_15AA9F: db $00
#_15AAA0: db $00 ; Direct Copy
#_15AAA1: db $07
#_15AAA2: db $27 ; Byte Fill
#_15AAA3: db $00
#_15AAA4: db $00 ; Direct Copy
#_15AAA5: db $07
#_15AAA6: db $27 ; Byte Fill
#_15AAA7: db $00
#_15AAA8: db $07 ; Direct Copy
#_15AAA9: db $70, $00, $58, $30, $EC, $38, $E6, $B8
#_15AAB1: db $23 ; Byte Fill
#_15AAB2: db $00
#_15AAB3: db $03 ; Direct Copy
#_15AAB4: db $70, $78, $FC, $FE
#_15AAB8: db $E4, $21 ; EXT Byte Fill
#_15AABA: db $00
#_15AABB: db $85 ; Repeat Fill
#_15AABC: db $40, $01 ; Repeat Fill bytes
#_15AABE: db $24 ; Byte Fill
#_15AABF: db $00
#_15AAC0: db $E0, $3F ; EXT Direct Copy
#_15AAC2: db $70, $78, $FC, $FF, $7C, $6F, $2C, $27
#_15AACA: db $04, $3B, $12, $1F, $03, $0F, $03, $07
#_15AAD2: db $00, $03, $00, $82, $50, $39, $25, $10
#_15AADA: db $0C, $07, $03, $FF, $3E, $EE, $2C, $C4
#_15AAE2: db $00, $9C, $08, $38, $00, $F0, $C0, $E0
#_15AAEA: db $00, $C0, $00, $41, $12, $BC, $E4, $C8
#_15AAF2: db $30, $E0, $C0, $F9, $18, $FA, $1A, $FF
#_15AAFA: db $1F, $FF, $7E, $7F, $16, $3F, $07, $1F
#_15AB02: db $22 ; Byte Fill
#_15AB03: db $00
#_15AB04: db $14 ; Direct Copy
#_15AB05: db $A7, $85, $C0, $81, $61, $20, $1F, $00
#_15AB0D: db $FA, $70, $78, $30, $F8, $B0, $F8, $70
#_15AB15: db $F0, $E0, $E0, $80, $80
#_15AB1A: db $22 ; Byte Fill
#_15AB1B: db $00
#_15AB1C: db $14 ; Direct Copy
#_15AB1D: db $8A, $C8, $48, $88, $10, $60, $80, $00
#_15AB25: db $F7, $74, $67, $24, $37, $14, $3B, $1A
#_15AB2D: db $1F, $0F, $0F, $03, $03
#_15AB32: db $22 ; Byte Fill
#_15AB33: db $00
#_15AB34: db $14 ; Direct Copy
#_15AB35: db $8A, $5A, $2A, $25, $10, $0C, $03, $00
#_15AB3D: db $E7, $06, $E6, $04, $EC, $28, $DC, $D8
#_15AB45: db $F8, $F0, $F0, $C0, $C0
#_15AB4A: db $22 ; Byte Fill
#_15AB4B: db $00
#_15AB4C: db $10 ; Direct Copy
#_15AB4D: db $39, $BA, $D4, $24, $08, $30, $C0, $00
#_15AB55: db $FE, $6D, $FC, $27, $FF, $13, $DF, $58
#_15AB5D: db $FC
#_15AB5E: db $26 ; Byte Fill
#_15AB5F: db $00
#_15AB60: db $04 ; Direct Copy
#_15AB61: db $9F, $DF, $EF, $A7, $FC
#_15AB66: db $22 ; Byte Fill
#_15AB67: db $00
#_15AB68: db $E0, $49 ; EXT Direct Copy
#_15AB6A: db $7F, $A6, $3F, $EE, $FF, $DE, $EF, $0C
#_15AB72: db $7F, $2E, $79, $38, $7F, $30, $3E, $00
#_15AB7A: db $F9, $F1, $E1, $F3, $51, $47, $4F, $3E
#_15AB82: db $FF, $4D, $FF, $4E, $FF, $66, $FF, $59
#_15AB8A: db $FF, $5F, $7F, $0E, $1F, $04, $07, $00
#_15AB92: db $FE, $FF, $9F, $A6, $A0, $71, $1B, $07
#_15AB9A: db $BC, $A0, $9E, $9C, $99, $90, $0D, $08
#_15ABA2: db $CF, $CA, $FE, $70, $F8, $20, $E0, $00
#_15ABAA: db $5C, $62, $6F, $F7, $35, $8E, $D8, $E0
#_15ABB2: db $3D, $16
#_15ABB4: db $44 ; Word Fill
#_15ABB5: db $7F, $36 ; Word Fill
#_15ABB7: db $E0, $5A ; EXT Direct Copy
#_15ABB9: db $29, $7F, $2E, $3F, $04, $1F, $00, $07
#_15ABC1: db $00, $2F, $4F, $4F, $56, $51, $3B, $1F
#_15ABC9: db $07, $9C, $90, $8E, $8C, $86, $84, $DA
#_15ABD1: db $D0, $DE, $54, $FC, $20, $F8, $00, $E0
#_15ABD9: db $00, $6C, $72, $7A, $2E, $AA, $DC, $F8
#_15ABE1: db $E0, $19, $07, $3F, $10, $3B, $0B, $33
#_15ABE9: db $13, $3B, $0B, $6D, $2D, $47, $05, $4F
#_15ABF1: db $0C, $1F, $3F, $34, $2C, $34, $52, $7A
#_15ABF9: db $73, $EE, $F8, $5E, $F4, $FF, $7E, $F7
#_15AC01: db $BA, $EF, $BC, $FD, $32, $F3, $2C, $EF
#_15AC09: db $12, $FE, $FE, $FF, $7F, $7F, $FD, $F3
#_15AC11: db $EF, $07, $00
#_15AC14: db $8D ; Repeat Fill
#_15AC15: db $A0, $02 ; Repeat Fill bytes
#_15AC17: db $00 ; Direct Copy
#_15AC18: db $07
#_15AC19: db $86 ; Repeat Fill
#_15AC1A: db $B0, $02 ; Repeat Fill bytes
#_15AC1C: db $01 ; Direct Copy
#_15AC1D: db $E6, $B8
#_15AC1F: db $8D ; Repeat Fill
#_15AC20: db $B8, $02 ; Repeat Fill bytes
#_15AC22: db $22 ; Byte Fill
#_15AC23: db $FE
#_15AC24: db $84 ; Repeat Fill
#_15AC25: db $CA, $02 ; Repeat Fill bytes
#_15AC27: db $E0, $2A ; EXT Direct Copy
#_15AC29: db $00, $00, $13, $00, $3F, $13, $6E, $26
#_15AC31: db $CD, $45, $FF, $77, $7D, $2D, $39, $19
#_15AC39: db $00, $13, $2C, $59, $BA, $88, $52, $26
#_15AC41: db $47, $00, $FF, $47, $FE, $6F, $DB, $BF
#_15AC49: db $C7, $BC, $EF, $BB, $EC, $BF, $F8, $3F
#_15AC51: db $47, $FF, $FF
#_15AC54: db $23 ; Byte Fill
#_15AC55: db $7F
#_15AC56: db $1C ; Direct Copy
#_15AC57: db $FF, $38, $00, $4F, $08, $8F, $05, $DF
#_15AC5F: db $5D, $F6, $32, $67, $05, $73, $33, $7F
#_15AC67: db $1E, $38, $77, $FA, $A2, $CD, $7A, $4C
#_15AC6F: db $61, $2E, $38, $5E, $74
#_15AC74: db $86 ; Repeat Fill
#_15AC75: db $BC, $02 ; Repeat Fill bytes
#_15AC77: db $0C ; Direct Copy
#_15AC78: db $B2, $F3, $6C, $EF, $12, $3E, $7E, $FF
#_15AC80: db $7F, $7F, $7D, $F3, $EF
#_15AC85: db $23 ; Byte Fill
#_15AC86: db $00
#_15AC87: db $13 ; Direct Copy
#_15AC88: db $03, $00, $07, $03, $0C, $04, $19, $09
#_15AC90: db $1B, $0B, $1F, $0F, $00, $00, $03, $04
#_15AC98: db $0B, $16, $14, $10
#_15AC9C: db $84 ; Repeat Fill
#_15AC9D: db $18, $03 ; Repeat Fill bytes
#_15AC9F: db $02 ; Direct Copy
#_15ACA0: db $2F, $DB, $7F
#_15ACA3: db $84 ; Repeat Fill
#_15ACA4: db $20, $03 ; Repeat Fill bytes
#_15ACA6: db $03 ; Direct Copy
#_15ACA7: db $DF, $78, $5F, $47
#_15ACAB: db $22 ; Byte Fill
#_15ACAC: db $FF
#_15ACAD: db $03 ; Direct Copy
#_15ACAE: db $7F, $7F, $3F, $BF
#_15ACB2: db $23 ; Byte Fill
#_15ACB3: db $00
#_15ACB4: db $13 ; Direct Copy
#_15ACB5: db $18, $00, $34, $18, $32, $1C, $1A, $0C
#_15ACBD: db $19, $0E, $0D, $06, $00, $00, $18, $3C
#_15ACC5: db $3E, $1E, $1F, $0F
#_15ACC9: db $2B ; Byte Fill
#_15ACCA: db $00
#_15ACCB: db $03 ; Direct Copy
#_15ACCC: db $18, $00, $24, $18
#_15ACD0: db $25 ; Byte Fill
#_15ACD1: db $00
#_15ACD2: db $0B ; Direct Copy
#_15ACD3: db $18, $3C, $18, $00, $23, $00, $5F, $00
#_15ACDB: db $5C, $00, $3F, $00
#_15ACDF: db $83 ; Repeat Fill
#_15ACE0: db $7C, $02 ; Repeat Fill bytes
#_15ACE2: db $12 ; Direct Copy
#_15ACE3: db $0F, $00, $1F, $3C, $60, $7F, $2F, $1F
#_15ACEB: db $05, $0D, $1F, $01, $E7, $02, $EB, $00
#_15ACF3: db $15, $00, $C9
#_15ACF6: db $44 ; Word Fill
#_15ACF7: db $00, $FF ; Word Fill
#_15ACF9: db $E0, $21 ; EXT Direct Copy
#_15ACFB: db $BF, $40, $FF, $1F, $17, $EB, $77, $6D
#_15AD03: db $ED, $AE, $F8, $C0, $C4, $38, $1E, $FC
#_15AD0B: db $FC, $C0, $C4, $38, $FA, $64, $E4, $18
#_15AD13: db $FA, $1C, $F8, $FC, $FE, $FC, $FC, $FE
#_15AD1B: db $FC, $7E
#_15AD1D: db $27 ; Byte Fill
#_15AD1E: db $00
#_15AD1F: db $07 ; Direct Copy
#_15AD20: db $1C, $00, $63, $1C, $BE, $59, $FC, $13
#_15AD28: db $23 ; Byte Fill
#_15AD29: db $00
#_15AD2A: db $E0, $68 ; EXT Direct Copy
#_15AD2C: db $1C, $7F, $FF, $FF, $6F, $2C, $FF, $39
#_15AD34: db $DF, $51, $BF, $20, $FF, $6B, $7C, $30
#_15AD3C: db $32, $00, $01, $00, $53, $C6, $AE, $DF
#_15AD44: db $94, $4F, $33, $01, $FE, $EC, $3E, $34
#_15AD4C: db $3C, $28, $DC, $D0, $DC, $10, $BC, $B8
#_15AD54: db $FC, $F0, $F8, $00, $1E, $CE, $D4, $2C
#_15AD5C: db $EC, $44, $0C, $F8, $4F, $0C, $EF, $6D
#_15AD64: db $FE, $38, $DF, $50, $BF, $23, $FE, $6A
#_15AD6C: db $7D, $35, $37, $00, $73, $92, $C7, $AF
#_15AD74: db $DC, $95, $4A, $37, $EF, $D2, $3E, $2C
#_15AD7C: db $7F, $6C, $7F, $62, $FD, $CC, $EE, $80
#_15AD84: db $C0, $80, $80, $00, $2F, $DE, $9F, $9D
#_15AD8C: db $33, $6E, $40, $80, $3B, $1B, $1F, $0E
#_15AD94: db $0E
#_15AD95: db $2A ; Byte Fill
#_15AD96: db $00
#_15AD97: db $02 ; Direct Copy
#_15AD98: db $24, $11, $0E
#_15AD9B: db $24 ; Byte Fill
#_15AD9C: db $00
#_15AD9D: db $06 ; Direct Copy
#_15AD9E: db $6D, $3F, $7F, $1F, $1F, $07, $07
#_15ADA5: db $28 ; Byte Fill
#_15ADA6: db $00
#_15ADA7: db $03 ; Direct Copy
#_15ADA8: db $7F, $7F, $1F, $07
#_15ADAC: db $23 ; Byte Fill
#_15ADAD: db $00
#_15ADAE: db $16 ; Direct Copy
#_15ADAF: db $3F, $0C, $1F, $01, $0F, $05, $07, $00
#_15ADB7: db $07, $03, $04, $00, $02, $00, $01, $00
#_15ADBF: db $33, $1E, $0E, $07, $04, $07, $03
#_15ADC6: db $98 ; Repeat Fill
#_15ADC7: db $37, $04 ; Repeat Fill bytes
#_15ADC9: db $1E ; Direct Copy
#_15ADCA: db $39, $11, $33, $12, $35, $15, $37, $16
#_15ADD2: db $1F, $0D, $17, $06, $0B, $03, $07, $00
#_15ADDA: db $2E, $2D, $2A, $29, $12, $19, $0C, $07
#_15ADE2: db $ED, $BF, $FF, $1F, $9F, $07, $07
#_15ADE9: db $45 ; Word Fill
#_15ADEA: db $00, $80 ; Word Fill
#_15ADEC: db $22 ; Byte Fill
#_15ADED: db $00
#_15ADEE: db $03 ; Direct Copy
#_15ADEF: db $7F, $FF, $9F, $07
#_15ADF3: db $22 ; Byte Fill
#_15ADF4: db $80
#_15ADF5: db $26 ; Byte Fill
#_15ADF6: db $00
#_15ADF7: db $09 ; Direct Copy
#_15ADF8: db $38, $00, $64, $38, $F2, $7C, $FA, $6C
#_15AE00: db $7D, $26
#_15AE02: db $22 ; Byte Fill
#_15AE03: db $00
#_15AE04: db $04 ; Direct Copy
#_15AE05: db $38, $7C, $FE, $FE, $7F
#_15AE0A: db $29 ; Byte Fill
#_15AE0B: db $00
#_15AE0C: db $05 ; Direct Copy
#_15AE0D: db $1C, $00, $22, $1C, $4D, $3E
#_15AE13: db $24 ; Byte Fill
#_15AE14: db $00
#_15AE15: db $0F ; Direct Copy
#_15AE16: db $1C, $3E, $7F, $1F, $00, $1E, $01, $1D
#_15AE1E: db $02, $3B, $04, $3F, $00, $1E, $00, $0F
#_15AE26: db $22 ; Byte Fill
#_15AE27: db $00
#_15AE28: db $14 ; Direct Copy
#_15AE29: db $17, $16, $15, $2A, $2E, $11, $0F, $00
#_15AE31: db $17, $E8, $3D, $C0, $3B, $C0, $F4, $00
#_15AE39: db $C8, $00, $30, $00, $C0
#_15AE3E: db $22 ; Byte Fill
#_15AE3F: db $00
#_15AE40: db $14 ; Direct Copy
#_15AE41: db $16, $2B, $27, $CC, $38, $F0, $C0, $00
#_15AE49: db $FD, $02, $FA, $10, $FC, $08, $78, $00
#_15AE51: db $7C, $30, $FE, $7C, $FC
#_15AE56: db $22 ; Byte Fill
#_15AE57: db $00
#_15AE58: db $06 ; Direct Copy
#_15AE59: db $3F, $BA, $DC, $78, $4C, $82, $FC
#_15AE60: db $2A ; Byte Fill
#_15AE61: db $00
#_15AE62: db $05 ; Direct Copy
#_15AE63: db $E0, $00, $10, $E0, $68, $F0
#_15AE69: db $24 ; Byte Fill
#_15AE6A: db $00
#_15AE6B: db $02 ; Direct Copy
#_15AE6C: db $E0, $F0, $F8
#_15AE6F: db $27 ; Byte Fill
#_15AE70: db $00
#_15AE71: db $83 ; Repeat Fill
#_15AE72: db $02, $00 ; Repeat Fill bytes
#_15AE74: db $02 ; Direct Copy
#_15AE75: db $15, $00, $2B
#_15AE78: db $24 ; Byte Fill
#_15AE79: db $00
#_15AE7A: db $03 ; Direct Copy
#_15AE7B: db $03, $0C, $1A, $34
#_15AE7F: db $27 ; Byte Fill
#_15AE80: db $00
#_15AE81: db $06 ; Direct Copy
#_15AE82: db $F0, $00, $CC, $00, $F2, $00, $FD
#_15AE89: db $24 ; Byte Fill
#_15AE8A: db $00
#_15AE8B: db $03 ; Direct Copy
#_15AE8C: db $F0, $3C, $0E, $03
#_15AE90: db $27 ; Byte Fill
#_15AE91: db $00
#_15AE92: db $06 ; Direct Copy
#_15AE93: db $03, $00, $01, $00, $02, $00, $06
#_15AE9A: db $24 ; Byte Fill
#_15AE9B: db $00
#_15AE9C: db $03 ; Direct Copy
#_15AE9D: db $01, $01, $03, $03
#_15AEA1: db $25 ; Byte Fill
#_15AEA2: db $00
#_15AEA3: db $08 ; Direct Copy
#_15AEA4: db $E0, $00, $18, $00, $A4, $00, $7A, $00
#_15AEAC: db $BD
#_15AEAD: db $23 ; Byte Fill
#_15AEAE: db $00
#_15AEAF: db $04 ; Direct Copy
#_15AEB0: db $E0, $F8, $5C, $86, $43
#_15AEB5: db $FF ; End of GFX 89

;===================================================================================================

GFX_8A:
#_15AEB6: db $23 ; Byte Fill
#_15AEB7: db $00
#_15AEB8: db $08 ; Direct Copy
#_15AEB9: db $1C, $00, $45, $00, $FF, $00, $45, $00
#_15AEC1: db $1C
#_15AEC2: db $25 ; Byte Fill
#_15AEC3: db $00
#_15AEC4: db $02 ; Direct Copy
#_15AEC5: db $01, $00, $01
#_15AEC8: db $27 ; Byte Fill
#_15AEC9: db $00
#_15AECA: db $04 ; Direct Copy
#_15AECB: db $F0, $00, $08, $F0, $F0
#_15AED0: db $27 ; Byte Fill
#_15AED1: db $00
#_15AED2: db $02 ; Direct Copy
#_15AED3: db $F0, $08, $F0
#_15AED6: db $27 ; Byte Fill
#_15AED7: db $00
#_15AED8: db $09 ; Direct Copy
#_15AED9: db $20, $00, $50, $20, $FF, $30, $B7, $1F
#_15AEE1: db $B8, $2F
#_15AEE3: db $22 ; Byte Fill
#_15AEE4: db $00
#_15AEE5: db $05 ; Direct Copy
#_15AEE6: db $20, $70, $FF, $FF, $DF, $06
#_15AEEC: db $44 ; Word Fill
#_15AEED: db $00, $09 ; Word Fill
#_15AEEF: db $E0, $A1 ; EXT Direct Copy
#_15AEF1: db $0F, $02, $1F, $04, $FD, $12, $EE, $F4
#_15AEF9: db $1C, $F8, $06, $0F, $0F, $0D, $1B, $FF
#_15AF01: db $FE, $FC, $00, $00, $10, $00, $2B, $00
#_15AF09: db $47, $03, $FA, $7A, $FF, $77, $7E, $16
#_15AF11: db $1E, $0E, $00, $10, $3B, $7C, $85, $88
#_15AF19: db $69, $11, $00, $00, $08, $00, $D4, $00
#_15AF21: db $E2, $C0, $39, $38, $3D, $2C, $5E, $08
#_15AF29: db $18, $10, $00, $08, $DC, $3E, $C7, $D3
#_15AF31: db $B6, $E8, $00, $00, $30, $00, $4B, $00
#_15AF39: db $77, $33, $FA, $6A, $7C, $04, $1E, $0E
#_15AF41: db $3F, $13, $00, $30, $7B, $4C, $95, $7B
#_15AF49: db $11, $2C, $00, $00, $0C, $00, $D2, $00
#_15AF51: db $FA, $D8, $3D, $34, $5E, $00, $38, $30
#_15AF59: db $7C, $48, $00, $0C, $DE, $26, $CB, $BE
#_15AF61: db $C8, $B4, $00, $00, $03, $00, $07, $03
#_15AF69: db $0C, $04, $0A, $00, $18, $08, $1F, $0F
#_15AF71: db $3F, $0C, $00, $03, $04, $0B, $0D, $17
#_15AF79: db $10, $33, $00, $00, $C0, $00, $E0, $C0
#_15AF81: db $F8, $E0, $64, $40, $E4, $C0, $CE, $CC
#_15AF89: db $FE, $CC, $00, $C0, $20, $18, $BC, $3C
#_15AF91: db $32, $32
#_15AF93: db $25 ; Byte Fill
#_15AF94: db $00
#_15AF95: db $09 ; Direct Copy
#_15AF96: db $20, $00, $58, $28, $EF, $58, $B4, $18
#_15AF9E: db $72, $0C
#_15AFA0: db $22 ; Byte Fill
#_15AFA1: db $00
#_15AFA2: db $04 ; Direct Copy
#_15AFA3: db $20, $78, $BF, $FF, $7F
#_15AFA8: db $25 ; Byte Fill
#_15AFA9: db $00
#_15AFAA: db $09 ; Direct Copy
#_15AFAB: db $06, $00, $1D, $16, $FF, $1A, $2F, $14
#_15AFB3: db $5F, $36
#_15AFB5: db $22 ; Byte Fill
#_15AFB6: db $00
#_15AFB7: db $E0, $4C ; EXT Direct Copy
#_15AFB9: db $06, $1F, $FF, $FB, $F9, $08, $00, $0F
#_15AFC1: db $00, $1C, $00, $3B, $10, $77, $20, $EF
#_15AFC9: db $40, $6F, $00, $5F, $00, $00, $03, $17
#_15AFD1: db $2C, $58, $B0, $70, $60, $FF, $0F, $0F
#_15AFD9: db $00, $F7, $05, $EB, $01, $F3, $02, $EB
#_15AFE1: db $02, $D3, $02, $A7, $04, $FF, $FF, $0B
#_15AFE9: db $17, $0D, $15, $2D, $5B, $FC, $00, $86
#_15AFF1: db $7C, $1C, $F0, $7C, $E8, $FE, $98, $FD
#_15AFF9: db $02, $E2, $1C, $FC, $10, $FC, $FE, $FC
#_15B001: db $FC, $FE, $BF, $BE, $3C
#_15B006: db $25 ; Byte Fill
#_15B007: db $00
#_15B008: db $09 ; Direct Copy
#_15B009: db $0C, $00, $12, $0C, $6D, $18, $AE, $59
#_15B011: db $B8, $57
#_15B013: db $22 ; Byte Fill
#_15B014: db $00
#_15B015: db $09 ; Direct Copy
#_15B016: db $0C, $1E, $7D, $FF, $FF, $08, $00, $1C
#_15B01E: db $00, $08
#_15B020: db $44 ; Word Fill
#_15B021: db $00, $2A ; Word Fill
#_15B023: db $04 ; Direct Copy
#_15B024: db $3E, $00, $08, $00, $1C
#_15B029: db $27 ; Byte Fill
#_15B02A: db $00
#_15B02B: db $00 ; Direct Copy
#_15B02C: db $14
#_15B02D: db $47 ; Word Fill
#_15B02E: db $14, $08 ; Word Fill
#_15B030: db $00 ; Direct Copy
#_15B031: db $08
#_15B032: db $26 ; Byte Fill
#_15B033: db $00
#_15B034: db $23 ; Byte Fill
#_15B035: db $14
#_15B036: db $00 ; Direct Copy
#_15B037: db $08
#_15B038: db $22 ; Byte Fill
#_15B039: db $00
#_15B03A: db $0C ; Direct Copy
#_15B03B: db $BC, $2F, $EF, $14, $34, $18, $3D, $08
#_15B043: db $3F, $13, $2F, $08, $1E
#_15B048: db $22 ; Byte Fill
#_15B049: db $00
#_15B04A: db $14 ; Direct Copy
#_15B04B: db $DF, $EF, $37, $3F, $2C, $37, $1E, $00
#_15B053: db $3C, $F0, $F4, $E8, $EC, $18, $1C, $F0
#_15B05B: db $FC, $A8, $F4, $10, $78
#_15B060: db $22 ; Byte Fill
#_15B061: db $00
#_15B062: db $14 ; Direct Copy
#_15B063: db $FC, $F4, $EC, $1C, $74, $EC, $78, $00
#_15B06B: db $3F, $13, $7F, $3F, $7C, $3C, $3C, $1C
#_15B073: db $3E, $1E, $1F, $07, $07
#_15B078: db $22 ; Byte Fill
#_15B079: db $00
#_15B07A: db $14 ; Direct Copy
#_15B07B: db $2C, $40, $43, $23, $21, $18, $07, $00
#_15B083: db $3C, $38, $EE, $EC, $0E, $0C, $0C, $08
#_15B08B: db $1C, $18, $F8, $E0, $E0
#_15B090: db $22 ; Byte Fill
#_15B091: db $00
#_15B092: db $07 ; Direct Copy
#_15B093: db $C4, $12, $F2, $F4, $E4, $18, $E0, $00
#_15B09B: db $43 ; Word Fill
#_15B09C: db $7F, $31 ; Word Fill
#_15B09E: db $13 ; Direct Copy
#_15B09F: db $6F, $29, $77, $34, $3E, $12, $1F, $05
#_15B0A7: db $1F, $03, $0B, $00, $46, $42, $50, $4B
#_15B0AF: db $2D, $12, $14, $0B
#_15B0B3: db $43 ; Word Fill
#_15B0B4: db $FE, $8C ; Word Fill
#_15B0B6: db $E0, $2F ; EXT Direct Copy
#_15B0B8: db $F2, $90, $E6, $24, $3C, $08, $58, $00
#_15B0C0: db $F8, $C0, $D0, $00, $62, $42, $0E, $DA
#_15B0C8: db $F4, $E8, $28, $D0, $7F, $21, $4F, $01
#_15B0D0: db $5F, $11, $7E, $3E, $7E, $0E, $3F, $03
#_15B0D8: db $3F, $00, $10, $00, $5E, $78, $60, $41
#_15B0E0: db $71, $2C, $2F, $10, $FC, $E8, $BC, $B0
#_15B0E8: db $43 ; Word Fill
#_15B0E9: db $1C, $18 ; Word Fill
#_15B0EB: db $04 ; Direct Copy
#_15B0EC: db $3C, $38, $F8, $E0, $E0
#_15B0F1: db $22 ; Byte Fill
#_15B0F2: db $00
#_15B0F3: db $E0, $2A ; EXT Direct Copy
#_15B0F5: db $14, $4C, $E4, $E4, $C4, $18, $E0, $00
#_15B0FD: db $19, $0E, $2F, $1F, $37, $18, $39, $0E
#_15B105: db $3F, $13, $2F, $0C, $36, $04, $1C, $00
#_15B10D: db $1F, $2F, $36, $38, $2F, $33, $2A, $1C
#_15B115: db $9D, $6C, $F9, $E8, $EA, $10, $9E, $70
#_15B11D: db $FC, $C8, $F8
#_15B120: db $24 ; Byte Fill
#_15B121: db $00
#_15B122: db $0E ; Direct Copy
#_15B123: db $F3, $F7, $6E, $1E, $F4, $F8, $00, $00
#_15B12B: db $5D, $00, $BA, $00, $B0, $00, $41
#_15B132: db $46 ; Word Fill
#_15B133: db $00, $3F ; Word Fill
#_15B135: db $E0, $2E ; EXT Direct Copy
#_15B137: db $17, $00, $62, $C5, $CF, $7F, $3E, $2E
#_15B13F: db $29, $17, $0F, $08, $3F, $30, $FD, $C0
#_15B147: db $FB, $00, $F4, $00, $C9, $00, $31, $00
#_15B14F: db $C0, $00, $F6, $CE, $2B, $EF, $DC, $B9
#_15B157: db $F1, $C0, $F0, $00, $F8, $00, $FC, $18
#_15B15F: db $F8, $00, $F8, $60, $FC, $F8, $F8
#_15B166: db $22 ; Byte Fill
#_15B167: db $00
#_15B168: db $06 ; Direct Copy
#_15B169: db $30, $B8, $BC, $F8, $98, $04, $F8
#_15B170: db $2A ; Byte Fill
#_15B171: db $00
#_15B172: db $05 ; Direct Copy
#_15B173: db $E0, $00, $30, $E0, $E0, $80
#_15B179: db $24 ; Byte Fill
#_15B17A: db $00
#_15B17B: db $02 ; Direct Copy
#_15B17C: db $E0, $F0, $E0
#_15B17F: db $25 ; Byte Fill
#_15B180: db $00
#_15B181: db $09 ; Direct Copy
#_15B182: db $70, $00, $B8, $60, $FF, $28, $F7, $4F
#_15B18A: db $F8, $5F
#_15B18C: db $22 ; Byte Fill
#_15B18D: db $00
#_15B18E: db $04 ; Direct Copy
#_15B18F: db $70, $F8, $FF, $BF, $BF
#_15B194: db $25 ; Byte Fill
#_15B195: db $00
#_15B196: db $09 ; Direct Copy
#_15B197: db $0C, $00, $1A, $04, $FF, $1A, $EF, $F6
#_15B19F: db $1D, $E4
#_15B1A1: db $22 ; Byte Fill
#_15B1A2: db $00
#_15B1A3: db $04 ; Direct Copy
#_15B1A4: db $0C, $1E, $FD, $F9, $FB
#_15B1A9: db $27 ; Byte Fill
#_15B1AA: db $00
#_15B1AB: db $07 ; Direct Copy
#_15B1AC: db $0C, $00, $0F, $04, $13, $02, $17, $05
#_15B1B4: db $23 ; Byte Fill
#_15B1B5: db $00
#_15B1B6: db $1B ; Direct Copy
#_15B1B7: db $0C, $0B, $1D, $1B, $70, $00, $98, $10
#_15B1BF: db $B8, $30, $F0, $40, $F8, $70, $F8, $10
#_15B1C7: db $B8, $60, $FC, $68, $70, $E8, $C8, $B0
#_15B1CF: db $88, $E8, $F8, $FC
#_15B1D3: db $29 ; Byte Fill
#_15B1D4: db $00
#_15B1D5: db $05 ; Direct Copy
#_15B1D6: db $0C, $00, $1F, $0C, $16, $05
#_15B1DC: db $24 ; Byte Fill
#_15B1DD: db $00
#_15B1DE: db $02 ; Direct Copy
#_15B1DF: db $0C, $13, $1B
#_15B1E2: db $29 ; Byte Fill
#_15B1E3: db $00
#_15B1E4: db $05 ; Direct Copy
#_15B1E5: db $30, $00, $F8, $30, $E8, $B0
#_15B1EB: db $24 ; Byte Fill
#_15B1EC: db $00
#_15B1ED: db $02 ; Direct Copy
#_15B1EE: db $30, $F8, $F8
#_15B1F1: db $27 ; Byte Fill
#_15B1F2: db $00
#_15B1F3: db $83 ; Repeat Fill
#_15B1F4: db $6A, $03 ; Repeat Fill bytes
#_15B1F6: db $03 ; Direct Copy
#_15B1F7: db $13, $02, $17, $04
#_15B1FB: db $23 ; Byte Fill
#_15B1FC: db $00
#_15B1FD: db $03 ; Direct Copy
#_15B1FE: db $0C, $13, $1D, $1B
#_15B202: db $27 ; Byte Fill
#_15B203: db $00
#_15B204: db $84 ; Repeat Fill
#_15B205: db $82, $03 ; Repeat Fill bytes
#_15B207: db $02 ; Direct Copy
#_15B208: db $D0, $6C, $D8
#_15B20B: db $23 ; Byte Fill
#_15B20C: db $00
#_15B20D: db $1B ; Direct Copy
#_15B20E: db $30, $F8, $F8, $FC, $70, $00, $88, $00
#_15B216: db $98, $10, $D0, $40, $70, $20, $77, $00
#_15B21E: db $54, $38, $3A, $14, $70, $F8, $E8, $B0
#_15B226: db $50, $77, $7F, $3F
#_15B22A: db $25 ; Byte Fill
#_15B22B: db $00
#_15B22C: db $09 ; Direct Copy
#_15B22D: db $04, $00, $0A, $04, $E7, $0A, $2D, $14
#_15B235: db $49, $30
#_15B237: db $22 ; Byte Fill
#_15B238: db $00
#_15B239: db $1C ; Direct Copy
#_15B23A: db $04, $0E, $ED, $FB, $FF, $47, $00, $4B
#_15B242: db $00, $45, $00, $60, $00, $51, $00, $2B
#_15B24A: db $00, $2F, $00, $17, $00, $78, $74, $7A
#_15B252: db $7F, $7F, $3E, $36, $1A
#_15B257: db $43 ; Word Fill
#_15B258: db $FE, $00 ; Word Fill
#_15B25A: db $13 ; Direct Copy
#_15B25B: db $FF, $00, $FD, $00, $54, $00, $AB, $00
#_15B263: db $D7, $43, $E6, $21, $01, $01, $00, $02
#_15B26B: db $AB, $D7, $AF, $5F
#_15B26F: db $43 ; Word Fill
#_15B270: db $80, $00 ; Word Fill
#_15B272: db $0E ; Direct Copy
#_15B273: db $4C, $00, $72, $0C, $8C, $70, $F2, $7C
#_15B27B: db $FC, $88, $1E, $E0, $80, $80, $CC
#_15B282: db $44 ; Word Fill
#_15B283: db $FE, $FC ; Word Fill
#_15B285: db $0B ; Direct Copy
#_15B286: db $02, $00, $0E, $00, $1E, $00, $3F, $00
#_15B28E: db $59, $06, $5D, $02
#_15B292: db $43 ; Word Fill
#_15B293: db $2C, $03 ; Word Fill
#_15B295: db $1F ; Direct Copy
#_15B296: db $03, $0F, $13, $2F, $69, $69, $30, $34
#_15B29E: db $7E, $00, $5E, $00, $2F, $00, $5F, $00
#_15B2A6: db $2B, $00, $16, $00, $A9, $00, $93, $01
#_15B2AE: db $81, $A1, $D0, $A0, $D4, $E9, $D7, $EF
#_15B2B6: db $43 ; Word Fill
#_15B2B7: db $80, $00 ; Word Fill
#_15B2B9: db $45 ; Word Fill
#_15B2BA: db $40, $00 ; Word Fill
#_15B2BC: db $07 ; Direct Copy
#_15B2BD: db $78, $00, $D4, $28, $EA, $74, $80, $80
#_15B2C5: db $22 ; Byte Fill
#_15B2C6: db $C0
#_15B2C7: db $E0, $25 ; EXT Direct Copy
#_15B2C9: db $F8, $FC, $FE, $7C, $0F, $2F, $17, $77
#_15B2D1: db $38, $79, $0E, $6F, $21, $73, $30, $7E
#_15B2D9: db $04, $3C, $00, $7F, $2F, $77, $79, $5E
#_15B2E1: db $4F, $7A, $3C, $39, $F0, $EB, $32, $3E
#_15B2E9: db $18, $3C, $10, $78, $00, $E0
#_15B2EF: db $24 ; Byte Fill
#_15B2F0: db $00
#_15B2F1: db $E0, $27 ; EXT Direct Copy
#_15B2F3: db $FF, $ED, $FE, $FC, $F8, $E0, $00, $00
#_15B2FB: db $1C, $0B, $28, $17, $31, $1F, $1C, $0F
#_15B303: db $0F, $03, $07, $00, $05, $01, $03, $00
#_15B30B: db $17, $2F, $33, $1C, $0F, $07, $06, $03
#_15B313: db $FC, $98, $7A, $F4, $E6, $FC, $1C, $F8
#_15B31B: db $83 ; Repeat Fill
#_15B31C: db $02, $02 ; Repeat Fill bytes
#_15B31E: db $16 ; Direct Copy
#_15B31F: db $E0, $C0, $C0, $00, $FC, $FA, $E6, $1C
#_15B327: db $F8, $E0, $20, $C0, $1D, $00, $27, $03
#_15B32F: db $27, $05, $7F, $0C, $7F, $33, $3F
#_15B336: db $24 ; Byte Fill
#_15B337: db $00
#_15B338: db $E0, $29 ; EXT Direct Copy
#_15B33A: db $1F, $3C, $3A, $73, $4F, $3F, $00, $00
#_15B342: db $EC, $B8, $FC, $30, $E2, $FC, $1E, $F8
#_15B34A: db $FE, $E4, $FE, $1C, $4C, $08, $38, $00
#_15B352: db $FC, $FC, $E2, $1E, $FA, $E2, $74, $38
#_15B35A: db $1F, $0A, $2B, $16, $33, $1E, $1D, $0E
#_15B362: db $0F, $02
#_15B364: db $88 ; Repeat Fill
#_15B365: db $BA, $04 ; Repeat Fill bytes
#_15B367: db $00 ; Direct Copy
#_15B368: db $1D
#_15B369: db $83 ; Repeat Fill
#_15B36A: db $C4, $04 ; Repeat Fill bytes
#_15B36C: db $09 ; Direct Copy
#_15B36D: db $FA, $14, $76, $5C, $EC, $18, $38, $10
#_15B375: db $70, $40
#_15B377: db $85 ; Repeat Fill
#_15B378: db $D2, $04 ; Repeat Fill bytes
#_15B37A: db $0B ; Direct Copy
#_15B37B: db $FA, $B6, $EC, $F8, $B0, $E0, $20, $C0
#_15B383: db $19, $0E, $2F, $17
#_15B387: db $85 ; Repeat Fill
#_15B388: db $74, $02 ; Repeat Fill bytes
#_15B38A: db $02 ; Direct Copy
#_15B38B: db $37, $04, $1E
#_15B38E: db $22 ; Byte Fill
#_15B38F: db $00
#_15B390: db $84 ; Repeat Fill
#_15B391: db $80, $02 ; Repeat Fill bytes
#_15B393: db $0F ; Direct Copy
#_15B394: db $2B, $1E, $00, $9B, $72, $F6, $E8, $EC
#_15B39C: db $18, $9C, $70, $FC, $C8, $EC, $20, $78
#_15B3A4: db $22 ; Byte Fill
#_15B3A5: db $00
#_15B3A6: db $0A ; Direct Copy
#_15B3A7: db $FD, $F6, $6C, $1C, $F4, $D4, $78, $00
#_15B3AF: db $0B, $00, $07
#_15B3B2: db $44 ; Word Fill
#_15B3B3: db $00, $03 ; Word Fill
#_15B3B5: db $04 ; Direct Copy
#_15B3B6: db $0F, $03, $1F, $0F, $0F
#_15B3BB: db $22 ; Byte Fill
#_15B3BC: db $00
#_15B3BD: db $14 ; Direct Copy
#_15B3BE: db $0E, $06, $02, $03, $0C, $10, $0F, $00
#_15B3C6: db $EB, $06, $F9, $17, $FD, $33, $F6, $0D
#_15B3CE: db $97, $0C, $C9, $86, $C6
#_15B3D3: db $22 ; Byte Fill
#_15B3D4: db $00
#_15B3D5: db $14 ; Direct Copy
#_15B3D6: db $3F, $AF, $CF, $FF, $9F, $4F, $C6, $00
#_15B3DE: db $8F, $76, $FE, $00, $FC, $18, $7C, $B8
#_15B3E6: db $F8, $40, $E0, $C0, $C0
#_15B3EB: db $22 ; Byte Fill
#_15B3EC: db $00
#_15B3ED: db $08 ; Direct Copy
#_15B3EE: db $FF, $FE, $FC, $FC, $F8, $E0, $C0, $00
#_15B3F6: db $17
#_15B3F7: db $84 ; Repeat Fill
#_15B3F8: db $6F, $05 ; Repeat Fill bytes
#_15B3FA: db $06 ; Direct Copy
#_15B3FB: db $0F, $00, $3E, $0C, $7F, $3E, $3F
#_15B402: db $22 ; Byte Fill
#_15B403: db $00
#_15B404: db $E0, $37 ; EXT Direct Copy
#_15B406: db $1B, $0E, $05, $0F, $32, $41, $3F, $00
#_15B40E: db $C6, $03, $EB, $05, $F9, $16, $FD, $36
#_15B416: db $7D, $0A, $15, $0A, $17, $08, $0D, $00
#_15B41E: db $7F, $3F, $AF, $CF, $7F, $1F, $1F, $0D
#_15B426: db $74, $98, $3C, $C0, $BE, $DC, $BC, $C0
#_15B42E: db $F8, $10, $F8, $B0, $F0, $80, $80, $00
#_15B436: db $FC, $FC, $FE, $FC, $F8, $F8, $F0, $80
#_15B43E: db $FF ; End of GFX 8A

;===================================================================================================

GFX_8B:
#_15B43F: db $E0, $47 ; EXT Direct Copy
#_15B441: db $38, $00, $44, $38, $6F, $38, $7B, $3D
#_15B449: db $37, $0D, $0F, $07, $3E, $06, $5C, $2C
#_15B451: db $38, $7C, $7F, $5A, $32, $08, $3D, $5F
#_15B459: db $1C, $00, $22, $1C, $F6, $1C, $DE, $BC
#_15B461: db $EC, $B0, $F0, $E0, $7C, $60, $3A, $34
#_15B469: db $1C, $3E, $FE, $5A, $4C, $10, $BC, $FA
#_15B471: db $00, $00, $70, $00, $8B, $70, $DF, $73
#_15B479: db $FF, $77, $67, $13, $3E, $06, $3E, $0E
#_15B481: db $00, $70, $FB, $FC, $B8, $6C, $3D, $39
#_15B489: db $83 ; Repeat Fill
#_15B48A: db $00, $00 ; Repeat Fill bytes
#_15B48C: db $13 ; Direct Copy
#_15B48D: db $EC, $38, $DC, $B8, $A8, $30, $30, $20
#_15B495: db $3E, $20, $7F, $76, $38, $7C, $FC, $54
#_15B49D: db $C8, $D0, $FE, $FF
#_15B4A1: db $23 ; Byte Fill
#_15B4A2: db $00
#_15B4A3: db $10 ; Direct Copy
#_15B4A4: db $03, $00, $04, $03, $0B, $04, $08, $07
#_15B4AC: db $0C, $07, $0F, $04, $00, $00, $03, $07
#_15B4B4: db $0D
#_15B4B5: db $22 ; Byte Fill
#_15B4B6: db $0F
#_15B4B7: db $23 ; Byte Fill
#_15B4B8: db $00
#_15B4B9: db $0F ; Direct Copy
#_15B4BA: db $C0, $00, $E0, $C0, $70, $E0, $70, $C0
#_15B4C2: db $F0, $60, $F0, $C0, $00, $00, $C0, $E0
#_15B4CA: db $23 ; Byte Fill
#_15B4CB: db $F0
#_15B4CC: db $04 ; Direct Copy
#_15B4CD: db $38, $00, $7C, $00, $3E
#_15B4D2: db $46 ; Word Fill
#_15B4D3: db $00, $07 ; Word Fill
#_15B4D5: db $43 ; Word Fill
#_15B4D6: db $0F, $00 ; Word Fill
#_15B4D8: db $02 ; Direct Copy
#_15B4D9: db $38, $44, $3A
#_15B4DC: db $22 ; Byte Fill
#_15B4DD: db $05
#_15B4DE: db $E0, $C1 ; EXT Direct Copy
#_15B4E0: db $0B, $0B, $07, $00, $18, $07, $27, $1F
#_15B4E8: db $5E, $33, $5E, $23, $BF, $60, $3F, $E3
#_15B4F0: db $78, $98, $07, $18, $27, $53, $47, $A7
#_15B4F8: db $3C, $67, $10, $17, $67, $7B, $99, $FE
#_15B500: db $26, $FB, $4F, $FF, $35, $DE, $2C, $5B
#_15B508: db $49, $B6, $10, $63, $DA, $B3, $7F, $56
#_15B510: db $4B, $A7, $00, $C2, $30, $F9, $C8, $3D
#_15B518: db $34, $CE, $84, $FF, $F0, $7F, $14, $EF
#_15B520: db $8C, $7F, $C2, $31, $19, $CC, $8D, $75
#_15B528: db $E7, $FF, $21, $00, $78, $80, $98, $E1
#_15B530: db $4E, $73, $62, $7D, $1B, $3D, $0D, $0E
#_15B538: db $04, $0F, $00, $80, $E1, $73, $7D, $3D
#_15B540: db $0E, $0F, $00, $00, $18, $00, $7C, $40
#_15B548: db $70, $4C, $C3, $B0, $42, $A1, $04, $E3
#_15B550: db $04, $C2, $00, $00, $40, $4C, $B0, $A1
#_15B558: db $E3, $C2, $03, $00, $07, $03, $0B, $03
#_15B560: db $1D, $01, $1D, $00, $39, $10, $32, $11
#_15B568: db $3D, $1A, $03, $04, $0C, $1E, $1F, $2F
#_15B570: db $2E, $25, $FF, $00, $8E, $70, $81, $7E
#_15B578: db $B8, $4F, $7E, $8F, $73, $FD, $E7, $F8
#_15B580: db $E2, $3D, $F0, $8E, $81, $88, $6E, $7D
#_15B588: db $F8, $BD, $C0, $00, $F8, $00, $9C, $00
#_15B590: db $CA, $00, $A2, $40, $54, $E0, $D8, $E0
#_15B598: db $68, $F0, $40, $B8, $E4, $F6, $BE, $5C
#_15B5A0: db $D8, $E8
#_15B5A2: db $37 ; Byte Fill
#_15B5A3: db $00
#_15B5A4: db $E0, $62 ; EXT Direct Copy
#_15B5A6: db $9C, $6C, $7F, $1F, $3F, $0F, $7F, $37
#_15B5AE: db $CF, $76, $BE, $4D, $4F, $01, $01, $00
#_15B5B6: db $93, $61, $33, $79, $C9, $B2, $4F, $01
#_15B5BE: db $39, $36, $FE, $F8, $FC, $F0, $FE, $EC
#_15B5C6: db $F3, $6E, $7D, $B2, $F2, $80, $80, $00
#_15B5CE: db $C9, $86, $CC, $9E, $93, $4D, $F2, $80
#_15B5D6: db $5F, $2F, $BF, $5F, $7F, $0F, $3F, $17
#_15B5DE: db $67, $3A, $6E, $35, $2F, $10, $11, $00
#_15B5E6: db $52, $A7, $72, $38, $65, $6A, $2F, $11
#_15B5EE: db $3A, $34, $FC, $F8, $FE, $F0, $FF, $EE
#_15B5F6: db $F2, $6C, $FC, $B0, $70, $C0, $E0, $00
#_15B5FE: db $EA, $04, $0E, $1F, $92, $CC, $70, $E0
#_15B606: db $07, $03, $03
#_15B609: db $22 ; Byte Fill
#_15B60A: db $00
#_15B60B: db $00 ; Direct Copy
#_15B60C: db $03
#_15B60D: db $44 ; Word Fill
#_15B60E: db $00, $0F ; Word Fill
#_15B610: db $00 ; Direct Copy
#_15B611: db $03
#_15B612: db $22 ; Byte Fill
#_15B613: db $00
#_15B614: db $0A ; Direct Copy
#_15B615: db $07, $03, $00, $03, $0F, $0F, $03, $00
#_15B61D: db $E0, $00, $C0
#_15B620: db $22 ; Byte Fill
#_15B621: db $00
#_15B622: db $00 ; Direct Copy
#_15B623: db $C0
#_15B624: db $44 ; Word Fill
#_15B625: db $00, $F0 ; Word Fill
#_15B627: db $00 ; Direct Copy
#_15B628: db $C0
#_15B629: db $22 ; Byte Fill
#_15B62A: db $00
#_15B62B: db $0E ; Direct Copy
#_15B62C: db $E0, $C0, $00, $C0, $F0, $F0, $C0, $00
#_15B634: db $0F, $00, $07, $00, $03, $00, $09
#_15B63B: db $44 ; Word Fill
#_15B63C: db $00, $13 ; Word Fill
#_15B63E: db $08 ; Direct Copy
#_15B63F: db $08, $00, $07, $00, $08, $05, $03, $01
#_15B647: db $01
#_15B648: db $22 ; Byte Fill
#_15B649: db $00
#_15B64A: db $E0, $77 ; EXT Direct Copy
#_15B64C: db $E0, $60, $DF, $D7, $BF, $A0, $FF, $E0
#_15B654: db $FF, $C0, $FF, $20, $FF, $28, $3F, $00
#_15B65C: db $9F, $28, $5F, $1C, $37, $CF, $47, $33
#_15B664: db $0B, $F4, $A9, $DE, $A5, $DF, $92, $EF
#_15B66C: db $8F, $77, $C6, $7F, $30, $3F, $0E, $09
#_15B674: db $E7, $DF, $DF, $AF, $27, $47, $31, $08
#_15B67C: db $EA, $1C, $E8, $3E, $B4, $ED, $62, $DD
#_15B684: db $82, $FF, $E4, $1E, $B2, $7C, $0C, $F0
#_15B68C: db $DC, $BC, $EC, $C8, $D6, $1C, $70, $00
#_15B694: db $18, $06, $16, $18, $0A, $0C, $06, $04
#_15B69C: db $20, $02, $00, $20, $04, $78, $03, $00
#_15B6A4: db $06, $18, $0C, $04, $02, $20, $78, $00
#_15B6AC: db $13, $C1, $12, $80, $10, $80, $20, $10
#_15B6B4: db $22, $10, $40, $38, $14, $60, $E0, $00
#_15B6BC: db $C1, $80, $80, $10, $10, $38, $60, $00
#_15B6C4: db $43 ; Word Fill
#_15B6C5: db $19, $06 ; Word Fill
#_15B6C7: db $13 ; Direct Copy
#_15B6C8: db $3C, $03, $38, $07, $74, $03, $73, $00
#_15B6D0: db $72, $00, $75, $00, $19, $18, $24, $28
#_15B6D8: db $54, $53, $53, $56
#_15B6DC: db $43 ; Word Fill
#_15B6DD: db $E0, $3F ; Word Fill
#_15B6DF: db $13 ; Direct Copy
#_15B6E0: db $F0, $FF, $3E, $FF, $8D, $7F, $42, $3F
#_15B6E8: db $F2, $0F, $F3, $0F, $BF, $3F, $FF, $3F
#_15B6F0: db $8D, $C3, $33, $33
#_15B6F4: db $47 ; Word Fill
#_15B6F5: db $28, $F0 ; Word Fill
#_15B6F7: db $01 ; Direct Copy
#_15B6F8: db $68, $F0
#_15B6FA: db $43 ; Word Fill
#_15B6FB: db $50, $E0 ; Word Fill
#_15B6FD: db $01 ; Direct Copy
#_15B6FE: db $A0, $C0
#_15B700: db $24 ; Byte Fill
#_15B701: db $E8
#_15B702: db $02 ; Direct Copy
#_15B703: db $D0, $D0, $A0
#_15B706: db $37 ; Byte Fill
#_15B707: db $00
#_15B708: db $17 ; Direct Copy
#_15B709: db $1C, $00, $26, $1C, $3F, $00, $23, $1D
#_15B711: db $35, $1E, $3A, $1E, $1F, $01, $1F, $0D
#_15B719: db $1C, $3E, $3F, $3E, $3D, $39, $1E, $12
#_15B721: db $23 ; Byte Fill
#_15B722: db $00
#_15B723: db $E0, $2B ; EXT Direct Copy
#_15B725: db $80, $00, $C0, $80, $E0, $C0, $E0, $40
#_15B72D: db $F0, $E0, $B0, $A0, $00, $00, $80, $40
#_15B735: db $20, $A0, $10, $70, $0E, $00, $17, $0E
#_15B73D: db $1F, $0C, $1F, $01, $23, $1C, $34, $1E
#_15B745: db $3B, $1F, $1F, $01, $0E, $1F, $1F, $1E
#_15B74D: db $3F, $3D, $38, $1E
#_15B751: db $23 ; Byte Fill
#_15B752: db $00
#_15B753: db $93 ; Repeat Fill
#_15B754: db $1C, $03 ; Repeat Fill bytes
#_15B756: db $E0, $2F ; EXT Direct Copy
#_15B758: db $01, $00, $07, $01, $0E, $06, $18, $08
#_15B760: db $5B, $0B, $BF, $1C, $DF, $48, $FF, $50
#_15B768: db $01, $06, $09, $17, $54, $E3, $B7, $AC
#_15B770: db $80, $00, $E0, $80, $70, $60, $18, $10
#_15B778: db $DA, $D0, $FD, $38, $FB, $12, $FF, $0A
#_15B780: db $80, $60, $90, $E8, $2A, $C7, $ED, $35
#_15B788: db $83 ; Repeat Fill
#_15B789: db $62, $00 ; Repeat Fill bytes
#_15B78B: db $13 ; Direct Copy
#_15B78C: db $0E, $02, $1F, $0C, $3F, $18, $7F, $10
#_15B794: db $BF, $10, $FF, $40, $00, $03, $0D, $13
#_15B79C: db $24, $69, $E9, $B8
#_15B7A0: db $83 ; Repeat Fill
#_15B7A1: db $7A, $00 ; Repeat Fill bytes
#_15B7A3: db $E0, $38 ; EXT Direct Copy
#_15B7A5: db $70, $40, $F8, $30, $FC, $18, $FE, $08
#_15B7AD: db $FD, $08, $FF, $02, $00, $C0, $B0, $C8
#_15B7B5: db $24, $96, $97, $1D, $06, $20, $3C, $57
#_15B7BD: db $68, $3E, $66, $BB, $23, $DD, $19, $76
#_15B7C5: db $75, $6E, $6C, $1E, $00, $17, $38, $B2
#_15B7CD: db $5D, $12, $66, $0C, $00, $00, $40, $00
#_15B7D5: db $B0, $00, $88, $00, $B8, $30, $F0, $40
#_15B7DD: db $40
#_15B7DE: db $23 ; Byte Fill
#_15B7DF: db $00
#_15B7E0: db $11 ; Direct Copy
#_15B7E1: db $40, $F0, $F8, $C8, $B0, $40, $00, $3C
#_15B7E9: db $00, $42, $00, $99, $00, $FF, $66, $7E
#_15B7F1: db $3C, $3C
#_15B7F3: db $24 ; Byte Fill
#_15B7F4: db $00
#_15B7F5: db $0A ; Direct Copy
#_15B7F6: db $3C, $7E, $FF, $99, $42, $3C, $00, $00
#_15B7FE: db $60, $00, $50
#_15B801: db $44 ; Word Fill
#_15B802: db $00, $48 ; Word Fill
#_15B804: db $18 ; Direct Copy
#_15B805: db $58, $10, $78, $30, $70, $20, $60, $00
#_15B80D: db $60, $70, $78, $78, $68, $48, $50, $60
#_15B815: db $3C, $00, $3A, $00, $39, $00, $70, $00
#_15B81D: db $20
#_15B81E: db $26 ; Byte Fill
#_15B81F: db $00
#_15B820: db $04 ; Direct Copy
#_15B821: db $2F, $2B, $29, $50, $20
#_15B826: db $22 ; Byte Fill
#_15B827: db $00
#_15B828: db $17 ; Direct Copy
#_15B829: db $EB, $07, $49, $07, $95, $03, $3A, $01
#_15B831: db $3D, $00, $3E, $00, $18, $00, $07, $00
#_15B839: db $2B, $C9, $9D, $26, $23, $21, $1F, $07
#_15B841: db $43 ; Word Fill
#_15B842: db $40, $80 ; Word Fill
#_15B844: db $13 ; Direct Copy
#_15B845: db $A0, $00, $90, $00, $10, $00, $90, $00
#_15B84D: db $20, $00, $C0, $00, $40, $40, $E0, $F0
#_15B855: db $F0, $70, $E0, $C0
#_15B859: db $37 ; Byte Fill
#_15B85A: db $00
#_15B85B: db $E0, $2F ; EXT Direct Copy
#_15B85D: db $1F, $0F, $3E, $1E, $3C, $1C, $3F, $17
#_15B865: db $3F, $0A, $37, $1A, $6F, $31, $39, $00
#_15B86D: db $10, $21, $23, $28, $3D, $35, $6F, $39
#_15B875: db $B8, $B0, $78, $70, $34, $28, $F2, $2C
#_15B87D: db $BA, $D4, $B4, $C0, $20, $C0, $C0, $00
#_15B885: db $78, $F8, $F4, $D2, $AA, $B4, $20, $C0
#_15B88D: db $84 ; Repeat Fill
#_15B88E: db $80, $04 ; Repeat Fill bytes
#_15B890: db $07 ; Direct Copy
#_15B891: db $0C, $7F, $37, $C7, $7A, $6F, $10, $10
#_15B899: db $22 ; Byte Fill
#_15B89A: db $00
#_15B89B: db $14 ; Direct Copy
#_15B89C: db $10, $21, $33, $78, $C5, $6F, $10, $00
#_15B8A4: db $B8, $B0, $7E, $68, $67, $1E, $F6, $48
#_15B8AC: db $38, $E0, $98, $70, $F0
#_15B8B1: db $22 ; Byte Fill
#_15B8B2: db $00
#_15B8B3: db $E0, $63 ; EXT Direct Copy
#_15B8B5: db $78, $FE, $E7, $F6, $38, $98, $F0, $00
#_15B8BD: db $DF, $20, $5F, $38, $28, $1F, $13, $0C
#_15B8C5: db $3F, $00, $3F, $0C, $2F, $0B, $03, $00
#_15B8CD: db $D9, $5F, $28, $13, $1C, $23, $00, $00
#_15B8D5: db $FB, $04, $FA, $1C, $34, $F8, $C8, $30
#_15B8DD: db $F8, $00, $DC, $10, $32, $00, $C4, $00
#_15B8E5: db $9B, $FA, $34, $C8, $38, $E4, $C0, $00
#_15B8ED: db $FF, $58, $4B, $3F, $23, $1C, $17, $08
#_15B8F5: db $7C, $13, $3F, $0C, $4F, $0B, $27, $00
#_15B8FD: db $BF, $4B, $23, $14, $0C, $23, $00, $04
#_15B905: db $FF, $1A, $F2, $FC, $C4, $38, $E8, $10
#_15B90D: db $3C, $C0, $DC, $10, $31, $10, $C2, $00
#_15B915: db $FD, $F2, $C4, $28
#_15B919: db $83 ; Repeat Fill
#_15B91A: db $0C, $05 ; Repeat Fill bytes
#_15B91C: db $17 ; Direct Copy
#_15B91D: db $30, $00, $6C, $20, $C6, $44, $EE, $6C
#_15B925: db $7D, $38, $7D, $34, $3F, $0E, $0E, $00
#_15B92D: db $30, $5C, $BA, $92, $47, $4B, $31, $0E
#_15B935: db $83 ; Repeat Fill
#_15B936: db $08, $01 ; Repeat Fill bytes
#_15B938: db $00 ; Direct Copy
#_15B939: db $24
#_15B93A: db $8B ; Repeat Fill
#_15B93B: db $F1, $03 ; Repeat Fill bytes
#_15B93D: db $00 ; Direct Copy
#_15B93E: db $18
#_15B93F: db $85 ; Repeat Fill
#_15B940: db $00, $04 ; Repeat Fill bytes
#_15B942: db $85 ; Repeat Fill
#_15B943: db $5A, $05 ; Repeat Fill bytes
#_15B945: db $06 ; Direct Copy
#_15B946: db $BD, $00, $FF, $42, $FF, $3C, $7E
#_15B94D: db $22 ; Byte Fill
#_15B94E: db $00
#_15B94F: db $83 ; Repeat Fill
#_15B950: db $69, $05 ; Repeat Fill bytes
#_15B952: db $02 ; Direct Copy
#_15B953: db $BD, $C3, $7E
#_15B956: db $22 ; Byte Fill
#_15B957: db $00
#_15B958: db $01 ; Direct Copy
#_15B959: db $40, $00
#_15B95B: db $83 ; Repeat Fill
#_15B95C: db $54, $04 ; Repeat Fill bytes
#_15B95E: db $04 ; Direct Copy
#_15B95F: db $B0, $20, $E0, $40, $40
#_15B964: db $23 ; Byte Fill
#_15B965: db $00
#_15B966: db $13 ; Direct Copy
#_15B967: db $40, $E0, $F0, $D0, $A0, $40, $00, $30
#_15B96F: db $00, $58, $30, $78, $30, $30, $00, $04
#_15B977: db $00, $0A, $04, $44
#_15B97B: db $22 ; Byte Fill
#_15B97C: db $00
#_15B97D: db $07 ; Direct Copy
#_15B97E: db $30, $78, $78, $30, $04, $0E, $44, $00
#_15B986: db $85 ; Repeat Fill
#_15B987: db $A8, $00 ; Repeat Fill bytes
#_15B989: db $E0, $29 ; EXT Direct Copy
#_15B98B: db $4F, $3F, $9E, $7F, $CE, $3B, $FF, $08
#_15B993: db $7F, $00, $07, $18, $27, $0F, $1F, $4B
#_15B99B: db $BC, $4E, $E0, $00, $18, $E0, $E4, $F8
#_15B9A3: db $F2, $FC, $79, $FE, $73, $DC, $FF, $10
#_15B9AB: db $FE, $00, $E0, $18, $E4, $F0, $F8, $D2
#_15B9B3: db $3D, $72
#_15B9B5: db $37 ; Byte Fill
#_15B9B6: db $00
#_15B9B7: db $FF ; End of GFX 8B

;===================================================================================================

GFX_8C:
#_15B9B8: db $27 ; Byte Fill
#_15B9B9: db $00
#_15B9BA: db $07 ; Direct Copy
#_15B9BB: db $03, $00, $05, $03, $0A, $07, $0C, $06
#_15B9C3: db $23 ; Byte Fill
#_15B9C4: db $00
#_15B9C5: db $03 ; Direct Copy
#_15B9C6: db $03, $05, $0B, $0F
#_15B9CA: db $27 ; Byte Fill
#_15B9CB: db $00
#_15B9CC: db $07 ; Direct Copy
#_15B9CD: db $C0, $00, $A0, $C0, $50, $E0, $30, $60
#_15B9D5: db $23 ; Byte Fill
#_15B9D6: db $00
#_15B9D7: db $03 ; Direct Copy
#_15B9D8: db $C0, $A0, $D0, $F0
#_15B9DC: db $29 ; Byte Fill
#_15B9DD: db $00
#_15B9DE: db $05 ; Direct Copy
#_15B9DF: db $01, $00, $02, $01, $05, $03
#_15B9E5: db $24 ; Byte Fill
#_15B9E6: db $00
#_15B9E7: db $02 ; Direct Copy
#_15B9E8: db $01, $02, $05
#_15B9EB: db $29 ; Byte Fill
#_15B9EC: db $00
#_15B9ED: db $05 ; Direct Copy
#_15B9EE: db $80, $00, $40, $80, $A0, $C0
#_15B9F4: db $24 ; Byte Fill
#_15B9F5: db $00
#_15B9F6: db $E0, $22 ; EXT Direct Copy
#_15B9F8: db $80, $40, $A0, $07, $00, $78, $07, $88
#_15BA00: db $04, $84, $62, $44, $33, $42, $31, $42
#_15BA08: db $39, $21, $1C, $07, $78, $FB, $9D, $4C
#_15BA10: db $4E, $46, $23, $84, $00, $6E, $80, $1E
#_15BA18: db $60, $BA, $04
#_15BA1B: db $43 ; Word Fill
#_15BA1C: db $E4, $18 ; Word Fill
#_15BA1E: db $E0, $25 ; EXT Direct Copy
#_15BA20: db $62, $94, $02, $E0, $84, $6A, $92, $E6
#_15BA28: db $7C, $24, $2A, $1E, $00, $00, $0F, $00
#_15BA30: db $10, $0F, $08, $04, $04, $02, $0C, $03
#_15BA38: db $12, $0D, $62, $1D, $00, $0F, $10, $0B
#_15BA40: db $05, $0C, $12, $62, $00, $00
#_15BA46: db $87 ; Repeat Fill
#_15BA47: db $78, $00 ; Repeat Fill bytes
#_15BA49: db $43 ; Word Fill
#_15BA4A: db $E4, $18 ; Word Fill
#_15BA4C: db $02 ; Direct Copy
#_15BA4D: db $62, $94, $00
#_15BA50: db $86 ; Repeat Fill
#_15BA51: db $88, $00 ; Repeat Fill bytes
#_15BA53: db $E0, $2F ; EXT Direct Copy
#_15BA55: db $1F, $00, $20, $1F, $41, $30, $21, $18
#_15BA5D: db $19, $04, $18, $07, $7C, $02, $B4, $4B
#_15BA65: db $1F, $20, $4F, $26, $1A, $18, $7D, $B4
#_15BA6D: db $88, $00, $7C, $80, $34, $48, $C8, $30
#_15BA75: db $F4, $08, $C2, $34, $02, $C0, $71, $88
#_15BA7D: db $88, $74, $AC, $F8, $74, $4A, $3E, $77
#_15BA85: db $27 ; Byte Fill
#_15BA86: db $00
#_15BA87: db $07 ; Direct Copy
#_15BA88: db $03, $00, $0F, $03, $1E, $0F, $1C, $0F
#_15BA90: db $23 ; Byte Fill
#_15BA91: db $00
#_15BA92: db $10 ; Direct Copy
#_15BA93: db $03, $0F, $1F, $1F, $FF, $18, $9F, $08
#_15BA9B: db $FB, $60, $7C, $18, $2F, $0C, $23, $01
#_15BAA3: db $1D
#_15BAA4: db $22 ; Byte Fill
#_15BAA5: db $00
#_15BAA6: db $1F ; Direct Copy
#_15BAA7: db $FB, $F8, $9C, $7F, $33, $3F, $1D, $00
#_15BAAF: db $7A, $08, $DD, $45, $FC, $64, $DF, $3B
#_15BAB7: db $EB, $78, $7C, $18, $3F, $08, $6B, $18
#_15BABF: db $77, $BA, $9B, $FC, $FF, $7B, $38, $7C
#_15BAC7: db $39 ; Byte Fill
#_15BAC8: db $00
#_15BAC9: db $87 ; Repeat Fill
#_15BACA: db $F8, $00 ; Repeat Fill bytes
#_15BACC: db $05 ; Direct Copy
#_15BACD: db $3C, $1F, $3E, $1F, $37, $1F
#_15BAD3: db $84 ; Repeat Fill
#_15BAD4: db $03, $01 ; Repeat Fill bytes
#_15BAD6: db $22 ; Byte Fill
#_15BAD7: db $3F
#_15BAD8: db $83 ; Repeat Fill
#_15BAD9: db $1E, $00 ; Repeat Fill bytes
#_15BADB: db $1A ; Direct Copy
#_15BADC: db $E0, $C0, $30, $E0, $18, $F0, $18, $E0
#_15BAE4: db $24, $E0, $EE, $E8, $00, $C0, $E0, $F0
#_15BAEC: db $F8, $F8, $FC, $F6, $0C, $06, $0A, $07
#_15BAF4: db $05, $03, $03
#_15BAF7: db $28 ; Byte Fill
#_15BAF8: db $00
#_15BAF9: db $03 ; Direct Copy
#_15BAFA: db $0F, $0B, $05, $03
#_15BAFE: db $23 ; Byte Fill
#_15BAFF: db $00
#_15BB00: db $06 ; Direct Copy
#_15BB01: db $30, $60, $50, $E0, $A0, $C0, $C0
#_15BB08: db $28 ; Byte Fill
#_15BB09: db $00
#_15BB0A: db $03 ; Direct Copy
#_15BB0B: db $F0, $D0, $A0, $C0
#_15BB0F: db $23 ; Byte Fill
#_15BB10: db $00
#_15BB11: db $04 ; Direct Copy
#_15BB12: db $05, $03, $02, $01, $01
#_15BB17: db $2A ; Byte Fill
#_15BB18: db $00
#_15BB19: db $02 ; Direct Copy
#_15BB1A: db $05, $02, $01
#_15BB1D: db $24 ; Byte Fill
#_15BB1E: db $00
#_15BB1F: db $04 ; Direct Copy
#_15BB20: db $A0, $C0, $40, $80, $80
#_15BB25: db $2A ; Byte Fill
#_15BB26: db $00
#_15BB27: db $02 ; Direct Copy
#_15BB28: db $A0, $40, $80
#_15BB2B: db $24 ; Byte Fill
#_15BB2C: db $00
#_15BB2D: db $0C ; Direct Copy
#_15BB2E: db $39, $06, $21, $1D, $12, $08, $3F, $10
#_15BB36: db $1F, $08, $1F, $0A, $0A
#_15BB3B: db $22 ; Byte Fill
#_15BB3C: db $00
#_15BB3D: db $12 ; Direct Copy
#_15BB3E: db $39, $22, $15, $2C, $17, $15, $0A, $00
#_15BB46: db $61, $90, $F1, $08, $C9, $A4, $FD, $02
#_15BB4E: db $E2, $40, $40
#_15BB51: db $24 ; Byte Fill
#_15BB52: db $00
#_15BB53: db $0F ; Direct Copy
#_15BB54: db $6F, $B7, $5B, $FD, $A2, $40, $00, $00
#_15BB5C: db $81, $7C, $81, $50, $63, $01, $3C, $00
#_15BB64: db $87 ; Repeat Fill
#_15BB65: db $E6, $01 ; Repeat Fill bytes
#_15BB67: db $03 ; Direct Copy
#_15BB68: db $83, $AF, $7E, $3F
#_15BB6C: db $83 ; Repeat Fill
#_15BB6D: db $F3, $01 ; Repeat Fill bytes
#_15BB6F: db $01 ; Direct Copy
#_15BB70: db $02, $E0
#_15BB72: db $8A ; Repeat Fill
#_15BB73: db $F8, $01 ; Repeat Fill bytes
#_15BB75: db $22 ; Byte Fill
#_15BB76: db $00
#_15BB77: db $00 ; Direct Copy
#_15BB78: db $1E
#_15BB79: db $86 ; Repeat Fill
#_15BB7A: db $08, $02 ; Repeat Fill bytes
#_15BB7C: db $E0, $24 ; EXT Direct Copy
#_15BB7E: db $C3, $3C, $83, $79, $83, $20, $47, $02
#_15BB86: db $3C, $00, $1F, $04, $1F, $0F, $0F, $00
#_15BB8E: db $C3, $86, $DE, $7C, $3F, $1B, $10, $0F
#_15BB96: db $7D, $80, $F6, $00, $F8, $80, $B0, $00
#_15BB9E: db $78, $30, $F0, $00, $80
#_15BBA3: db $22 ; Byte Fill
#_15BBA4: db $00
#_15BBA5: db $1F ; Direct Copy
#_15BBA6: db $5F, $DE, $78, $70, $C8, $F0, $80, $00
#_15BBAE: db $3E, $0B, $5F, $05, $5F, $0E, $6C, $28
#_15BBB6: db $7A, $08, $4D, $35, $9C, $74, $BF, $7B
#_15BBBE: db $3F, $7B, $71, $57, $77, $7A, $FB, $FC
#_15BBC6: db $87 ; Repeat Fill
#_15BBC7: db $F8, $00 ; Repeat Fill bytes
#_15BBC9: db $87 ; Repeat Fill
#_15BBCA: db $70, $02 ; Repeat Fill bytes
#_15BBCC: db $84 ; Repeat Fill
#_15BBCD: db $61, $01 ; Repeat Fill bytes
#_15BBCF: db $0B ; Direct Copy
#_15BBD0: db $7B, $71, $57, $9C, $08, $FF, $30, $73
#_15BBD8: db $01, $03, $01, $01
#_15BBDC: db $26 ; Byte Fill
#_15BBDD: db $00
#_15BBDE: db $04 ; Direct Copy
#_15BBDF: db $FF, $CF, $73, $03, $01
#_15BBE4: db $22 ; Byte Fill
#_15BBE5: db $00
#_15BBE6: db $0A ; Direct Copy
#_15BBE7: db $39, $10, $FF, $0C, $9E, $00, $E8, $90
#_15BBEF: db $90, $E0, $E0
#_15BBF2: db $24 ; Byte Fill
#_15BBF3: db $00
#_15BBF4: db $10 ; Direct Copy
#_15BBF5: db $FF, $F3, $9E, $F8, $F0, $E0, $00, $00
#_15BBFD: db $39, $1F, $3F, $1F, $1F, $0F, $1F, $07
#_15BC05: db $07
#_15BC06: db $26 ; Byte Fill
#_15BC07: db $00
#_15BC08: db $04 ; Direct Copy
#_15BC09: db $3F, $3F, $1F, $1F, $07
#_15BC0E: db $22 ; Byte Fill
#_15BC0F: db $00
#_15BC10: db $08 ; Direct Copy
#_15BC11: db $FE, $D8, $FE, $E4, $F4, $D0, $F8, $B0
#_15BC19: db $F0
#_15BC1A: db $26 ; Byte Fill
#_15BC1B: db $00
#_15BC1C: db $04 ; Direct Copy
#_15BC1D: db $E6, $FA, $EC, $C8, $F0
#_15BC22: db $22 ; Byte Fill
#_15BC23: db $00
#_15BC24: db $E0, $2F ; EXT Direct Copy
#_15BC26: db $04, $00, $0E, $00, $1F, $00, $3D, $03
#_15BC2E: db $3F, $03, $2F, $00, $32, $01, $5D, $13
#_15BC36: db $04, $0A, $17, $25, $26, $33, $3E, $6D
#_15BC3E: db $20, $00, $70, $00, $F8, $00, $BC, $C0
#_15BC46: db $FC, $C0, $F4, $00, $4C, $80, $BA, $C8
#_15BC4E: db $20, $50, $E8, $A4, $64, $CC, $7C, $B6
#_15BC56: db $83 ; Repeat Fill
#_15BC57: db $02, $03 ; Repeat Fill bytes
#_15BC59: db $13 ; Direct Copy
#_15BC5A: db $0F, $00, $47, $00, $EB, $04, $F6, $0C
#_15BC62: db $FF, $02, $7A, $01, $0E, $11, $0C, $46
#_15BC6A: db $AA, $B3, $9F, $46
#_15BC6E: db $23 ; Byte Fill
#_15BC6F: db $00
#_15BC70: db $13 ; Direct Copy
#_15BC71: db $B0, $00, $68, $20, $78, $30, $B8, $40
#_15BC79: db $48, $F0, $F4, $F8, $00, $00, $B0, $D8
#_15BC81: db $C8, $B8, $48, $F4
#_15BC85: db $83 ; Repeat Fill
#_15BC86: db $38, $00 ; Repeat Fill bytes
#_15BC88: db $13 ; Direct Copy
#_15BC89: db $1E, $00, $3B, $01, $7D, $00, $FD, $00
#_15BC91: db $6E, $19, $3D, $1B, $00, $01, $1F, $26
#_15BC99: db $43, $BB, $6E, $35
#_15BC9D: db $83 ; Repeat Fill
#_15BC9E: db $50, $00 ; Repeat Fill bytes
#_15BCA0: db $13 ; Direct Copy
#_15BCA1: db $C0, $80, $F0, $80, $88, $70, $68, $F0
#_15BCA9: db $B4, $F8, $94, $F8, $00, $80, $40, $70
#_15BCB1: db $88, $68, $F4, $F4
#_15BCB5: db $23 ; Byte Fill
#_15BCB6: db $00
#_15BCB7: db $13 ; Direct Copy
#_15BCB8: db $1E, $00, $3D, $00, $1E, $00, $0E, $00
#_15BCC0: db $93, $0C, $D6, $0C, $00, $00, $1E, $23
#_15BCC8: db $19, $0D, $93, $57
#_15BCCC: db $23 ; Byte Fill
#_15BCCD: db $00
#_15BCCE: db $E0, $2E ; EXT Direct Copy
#_15BCD0: db $C0, $00, $B0, $00, $F8, $20, $A8, $50
#_15BCD8: db $F4, $78, $54, $F8, $00, $00, $C0, $F0
#_15BCE0: db $D8, $A8, $F4, $74, $03, $00, $01, $00
#_15BCE8: db $10, $00, $3B, $00, $3C, $03, $3D, $03
#_15BCF0: db $2F, $00, $12, $00, $02, $01, $10, $2B
#_15BCF8: db $2C, $25, $33, $1F, $C0, $00, $E0
#_15BCFF: db $44 ; Word Fill
#_15BD00: db $00, $F0 ; Word Fill
#_15BD02: db $0F ; Direct Copy
#_15BD03: db $98, $00, $FC, $08, $0C, $30, $34, $78
#_15BD0B: db $C0, $20, $90, $90, $F8, $F4, $CC, $B4
#_15BD13: db $25 ; Byte Fill
#_15BD14: db $00
#_15BD15: db $09 ; Direct Copy
#_15BD16: db $03, $00, $04, $03, $0F, $07, $14, $0F
#_15BD1E: db $14, $0E
#_15BD20: db $22 ; Byte Fill
#_15BD21: db $00
#_15BD22: db $04 ; Direct Copy
#_15BD23: db $03, $04, $09, $11, $17
#_15BD28: db $25 ; Byte Fill
#_15BD29: db $00
#_15BD2A: db $09 ; Direct Copy
#_15BD2B: db $C0, $00, $20, $C0, $F0, $E0, $28, $F0
#_15BD33: db $28, $70
#_15BD35: db $22 ; Byte Fill
#_15BD36: db $00
#_15BD37: db $04 ; Direct Copy
#_15BD38: db $C0, $20, $90, $88, $E8
#_15BD3D: db $25 ; Byte Fill
#_15BD3E: db $00
#_15BD3F: db $09 ; Direct Copy
#_15BD40: db $10, $00, $3F, $10, $77, $3F, $70, $3F
#_15BD48: db $FD, $7F
#_15BD4A: db $22 ; Byte Fill
#_15BD4B: db $00
#_15BD4C: db $18 ; Direct Copy
#_15BD4D: db $10, $3F, $7F, $7F, $FF, $00, $00, $06
#_15BD55: db $00, $0A, $00, $1E, $08, $F4, $18, $EC
#_15BD5D: db $78, $FC, $B0, $F6, $C0, $00, $06, $0E
#_15BD65: db $1E
#_15BD66: db $22 ; Byte Fill
#_15BD67: db $FC
#_15BD68: db $00 ; Direct Copy
#_15BD69: db $FE
#_15BD6A: db $25 ; Byte Fill
#_15BD6B: db $00
#_15BD6C: db $09 ; Direct Copy
#_15BD6D: db $08, $00, $5F, $08, $BB, $47, $BC, $5F
#_15BD75: db $DB, $67
#_15BD77: db $22 ; Byte Fill
#_15BD78: db $00
#_15BD79: db $04 ; Direct Copy
#_15BD7A: db $08, $5F, $FF, $FF, $FB
#_15BD7F: db $84 ; Repeat Fill
#_15BD80: db $06, $00 ; Repeat Fill bytes
#_15BD82: db $1D ; Direct Copy
#_15BD83: db $00, $0F, $04, $FA, $0C, $F6, $FC, $FC
#_15BD8B: db $D8, $F8, $E0, $00, $03, $07, $0F, $FE
#_15BD93: db $FE, $FC, $F8, $7B, $37, $34, $0F, $16
#_15BD9B: db $0F, $13, $0F, $0C, $03, $03
#_15BDA1: db $24 ; Byte Fill
#_15BDA2: db $00
#_15BDA3: db $12 ; Direct Copy
#_15BDA4: db $4B, $37, $17, $13, $0C, $03, $00, $00
#_15BDAC: db $DE, $EC, $2C, $F0, $68, $F0, $C8, $F0
#_15BDB4: db $30, $C0, $C0
#_15BDB7: db $24 ; Byte Fill
#_15BDB8: db $00
#_15BDB9: db $12 ; Direct Copy
#_15BDBA: db $D2, $EC, $E8, $C8, $30, $C0, $00, $00
#_15BDC2: db $25, $03, $1B, $07, $2D, $0B, $3D, $1B
#_15BDCA: db $1E, $01, $01
#_15BDCD: db $24 ; Byte Fill
#_15BDCE: db $00
#_15BDCF: db $12 ; Direct Copy
#_15BDD0: db $3D, $1B, $35, $25, $1E, $01, $00, $00
#_15BDD8: db $D4, $F8, $94, $F8, $34, $F8, $E8, $F0
#_15BDE0: db $18, $E0, $E0
#_15BDE3: db $24 ; Byte Fill
#_15BDE4: db $00
#_15BDE5: db $22 ; Byte Fill
#_15BDE6: db $F4
#_15BDE7: db $02 ; Direct Copy
#_15BDE8: db $E8, $18, $E0
#_15BDEB: db $83 ; Repeat Fill
#_15BDEC: db $BE, $04 ; Repeat Fill bytes
#_15BDEE: db $0A ; Direct Copy
#_15BDEF: db $6E, $19, $FD, $00, $7D, $00, $3B, $01
#_15BDF7: db $1E, $00, $01
#_15BDFA: db $22 ; Byte Fill
#_15BDFB: db $00
#_15BDFC: db $14 ; Direct Copy
#_15BDFD: db $35, $6E, $BB, $43, $26, $1F, $01, $00
#_15BE05: db $94, $F8, $B4, $F8, $68, $F0, $88, $70
#_15BE0D: db $F0, $80, $C0, $80, $80
#_15BE12: db $22 ; Byte Fill
#_15BE13: db $00
#_15BE14: db $12 ; Direct Copy
#_15BE15: db $F4, $F4, $68, $88, $70, $40, $80, $00
#_15BE1D: db $FC, $00, $F4, $01, $75, $03, $3D, $03
#_15BE25: db $0E, $05, $07
#_15BE28: db $24 ; Byte Fill
#_15BE29: db $00
#_15BE2A: db $0C ; Direct Copy
#_15BE2B: db $BF, $8E, $4D, $3D, $0A, $07, $00, $00
#_15BE33: db $14, $F8, $94, $F8, $28
#_15BE38: db $85 ; Repeat Fill
#_15BE39: db $9D, $04 ; Repeat Fill bytes
#_15BE3B: db $24 ; Byte Fill
#_15BE3C: db $00
#_15BE3D: db $01 ; Direct Copy
#_15BE3E: db $74, $F4
#_15BE40: db $85 ; Repeat Fill
#_15BE41: db $AA, $04 ; Repeat Fill bytes
#_15BE43: db $0A ; Direct Copy
#_15BE44: db $3E, $01, $2B, $07, $1E, $0B, $0D, $03
#_15BE4C: db $04, $03, $03
#_15BE4F: db $24 ; Byte Fill
#_15BE50: db $00
#_15BE51: db $0A ; Direct Copy
#_15BE52: db $3E, $3B, $17, $0D, $04, $03, $00, $00
#_15BE5A: db $54, $F8, $14
#_15BE5D: db $87 ; Repeat Fill
#_15BE5E: db $2B, $05 ; Repeat Fill bytes
#_15BE60: db $24 ; Byte Fill
#_15BE61: db $00
#_15BE62: db $87 ; Repeat Fill
#_15BE63: db $38, $05 ; Repeat Fill bytes
#_15BE65: db $08 ; Direct Copy
#_15BE66: db $14, $0E, $14, $0F, $0F, $07, $04, $03
#_15BE6E: db $03
#_15BE6F: db $26 ; Byte Fill
#_15BE70: db $00
#_15BE71: db $04 ; Direct Copy
#_15BE72: db $17, $11, $09, $04, $03
#_15BE77: db $22 ; Byte Fill
#_15BE78: db $00
#_15BE79: db $08 ; Direct Copy
#_15BE7A: db $28, $70, $28, $F0, $F0, $E0, $20, $C0
#_15BE82: db $C0
#_15BE83: db $26 ; Byte Fill
#_15BE84: db $00
#_15BE85: db $04 ; Direct Copy
#_15BE86: db $E8, $88, $90, $20, $C0
#_15BE8B: db $22 ; Byte Fill
#_15BE8C: db $00
#_15BE8D: db $0C ; Direct Copy
#_15BE8E: db $CB, $77, $DC, $6B, $7C, $1B, $39, $16
#_15BE96: db $2E, $10, $28, $10, $10
#_15BE9B: db $22 ; Byte Fill
#_15BE9C: db $00
#_15BE9D: db $0E ; Direct Copy
#_15BE9E: db $CB, $DC, $7C, $39, $3E, $38, $10, $00
#_15BEA6: db $CA, $F8, $FC, $F8, $F8, $C0, $C0
#_15BEAD: db $28 ; Byte Fill
#_15BEAE: db $00
#_15BEAF: db $03 ; Direct Copy
#_15BEB0: db $F6, $F4, $F8, $C0
#_15BEB4: db $23 ; Byte Fill
#_15BEB5: db $00
#_15BEB6: db $0A ; Direct Copy
#_15BEB7: db $79, $37, $77, $09, $FF, $22, $DD, $45
#_15BEBF: db $BB, $09, $7F
#_15BEC2: db $24 ; Byte Fill
#_15BEC3: db $00
#_15BEC4: db $12 ; Direct Copy
#_15BEC5: db $79, $77, $DD, $BA, $F7, $7F, $00, $00
#_15BECD: db $B8, $F0, $B8, $70, $F0, $60, $F0, $E0
#_15BED5: db $E0, $80, $80
#_15BED8: db $24 ; Byte Fill
#_15BED9: db $00
#_15BEDA: db $07 ; Direct Copy
#_15BEDB: db $F8, $F8, $F0, $F0, $E0, $80, $00, $00
#_15BEE3: db $FF ; End of GFX 8C

;===================================================================================================

GFX_8D:
#_15BEE4: db $23 ; Byte Fill
#_15BEE5: db $00
#_15BEE6: db $03 ; Direct Copy
#_15BEE7: db $01, $00, $02, $01
#_15BEEB: db $45 ; Word Fill
#_15BEEC: db $05, $02 ; Word Fill
#_15BEEE: db $0F ; Direct Copy
#_15BEEF: db $0D, $02, $00, $00, $01, $03, $06, $06
#_15BEF7: db $07, $0F, $03, $00, $FC, $03, $77, $88
#_15BEFF: db $43 ; Word Fill
#_15BF00: db $F9, $06 ; Word Fill
#_15BF02: db $E0, $22 ; EXT Direct Copy
#_15BF04: db $D1, $2E, $69, $94, $0B, $F2, $03, $FF
#_15BF0C: db $8F, $07, $07, $3F, $9F, $FD, $F8, $00
#_15BF14: db $7F, $80, $FB, $04, $FF, $00, $87, $78
#_15BF1C: db $F8, $07, $86, $79, $82, $7D, $F8, $87
#_15BF24: db $FC, $04, $F8
#_15BF27: db $22 ; Byte Fill
#_15BF28: db $FF
#_15BF29: db $02 ; Direct Copy
#_15BF2A: db $00, $00, $C0
#_15BF2D: db $44 ; Word Fill
#_15BF2E: db $00, $F0 ; Word Fill
#_15BF30: db $0F ; Direct Copy
#_15BF31: db $D8, $20, $DC, $28, $5C, $A8, $76, $CC
#_15BF39: db $00, $C0, $B0, $90, $78, $7C, $FC, $FE
#_15BF41: db $2B ; Byte Fill
#_15BF42: db $00
#_15BF43: db $02 ; Direct Copy
#_15BF44: db $01, $00, $01
#_15BF47: db $26 ; Byte Fill
#_15BF48: db $00
#_15BF49: db $19 ; Direct Copy
#_15BF4A: db $01, $01, $04, $00, $0A, $04, $1B, $06
#_15BF52: db $34, $19, $7F, $2B, $EE, $55, $FD, $AE
#_15BF5A: db $EC, $B7, $04, $0E, $1B, $36, $7E, $EF
#_15BF62: db $FF, $EF
#_15BF64: db $2D ; Byte Fill
#_15BF65: db $00
#_15BF66: db $00 ; Direct Copy
#_15BF67: db $03
#_15BF68: db $27 ; Byte Fill
#_15BF69: db $00
#_15BF6A: db $E0, $3D ; EXT Direct Copy
#_15BF6C: db $03, $01, $00, $03, $00, $07, $00, $C7
#_15BF74: db $01, $BF, $41, $9E, $63, $8E, $77, $87
#_15BF7C: db $78, $01, $02, $04, $C5, $F9, $EA, $FE
#_15BF84: db $FF, $E3, $00, $F4, $23, $BB, $F7, $9B
#_15BF8C: db $FE, $5F, $B6, $F7, $5B, $BB, $07, $F4
#_15BF94: db $23, $E3, $34, $BB, $9A, $56, $B3, $F3
#_15BF9C: db $F8, $00, $00, $0C, $00, $0B, $04, $05
#_15BFA4: db $02, $05, $03, $0D, $02, $03
#_15BFAA: db $83 ; Repeat Fill
#_15BFAB: db $6D, $00 ; Repeat Fill bytes
#_15BFAD: db $06 ; Direct Copy
#_15BFAE: db $0C, $0B, $05, $05, $0D, $03, $01
#_15BFB5: db $27 ; Byte Fill
#_15BFB6: db $00
#_15BFB7: db $43 ; Word Fill
#_15BFB8: db $C0, $00 ; Word Fill
#_15BFBA: db $03 ; Direct Copy
#_15BFBB: db $B0, $C0, $70, $C0
#_15BFBF: db $23 ; Byte Fill
#_15BFC0: db $00
#_15BFC1: db $0A ; Direct Copy
#_15BFC2: db $C0, $C0, $B0, $70, $00, $00, $7C, $00
#_15BFCA: db $0E, $00, $06
#_15BFCD: db $45 ; Word Fill
#_15BFCE: db $00, $02 ; Word Fill
#_15BFD0: db $23 ; Byte Fill
#_15BFD1: db $00
#_15BFD2: db $02 ; Direct Copy
#_15BFD3: db $7C, $0E, $06
#_15BFD6: db $22 ; Byte Fill
#_15BFD7: db $02
#_15BFD8: db $22 ; Byte Fill
#_15BFD9: db $00
#_15BFDA: db $15 ; Direct Copy
#_15BFDB: db $07, $00, $09, $07, $07, $00, $02, $01
#_15BFE3: db $01, $00, $03, $01, $07, $02, $00, $07
#_15BFEB: db $0F, $07, $02, $01, $03, $07
#_15BFF1: db $23 ; Byte Fill
#_15BFF2: db $00
#_15BFF3: db $E0, $2B ; EXT Direct Copy
#_15BFF5: db $C4, $00, $BB, $C4, $FC, $79, $FF, $83
#_15BFFD: db $1F, $F5, $9D, $76, $00, $00, $C4, $FF
#_15C005: db $FE, $FE, $1E, $9F, $E0, $00, $58, $20
#_15C00D: db $2C, $18, $16, $0C, $1B, $06, $1D, $03
#_15C015: db $1E, $01, $13, $0C, $E0, $58, $2C, $16
#_15C01D: db $1B, $1D, $1E, $13
#_15C021: db $29 ; Byte Fill
#_15C022: db $00
#_15C023: db $05 ; Direct Copy
#_15C024: db $80, $00, $C0, $80, $20, $C0
#_15C02A: db $24 ; Byte Fill
#_15C02B: db $00
#_15C02C: db $E0, $2D ; EXT Direct Copy
#_15C02E: db $80, $C0, $60, $17, $0C, $2E, $18, $5F
#_15C036: db $38, $7F, $38, $F8, $00, $B7, $27, $7F
#_15C03E: db $13, $3F, $00, $1F, $3F, $7F, $7F, $FF
#_15C046: db $D8, $6C, $3F, $D6, $24, $2D, $08, $3A
#_15C04E: db $E1, $FD, $03, $F3, $0F, $7F, $0F, $FF
#_15C056: db $1E, $FF, $00, $FB, $F7, $1F
#_15C05C: db $24 ; Byte Fill
#_15C05D: db $FF
#_15C05E: db $0F ; Direct Copy
#_15C05F: db $9F, $7E, $2F, $FE, $37, $FE, $DF, $F4
#_15C067: db $DF, $74, $FE, $79, $FF, $00, $F8, $00
#_15C06F: db $24 ; Byte Fill
#_15C070: db $FF
#_15C071: db $0F ; Direct Copy
#_15C072: db $FE, $FF, $F8, $F6, $1C, $FE, $3C, $FA
#_15C07A: db $7C, $FC, $18, $18, $E0, $10, $E0, $E0
#_15C082: db $22 ; Byte Fill
#_15C083: db $00
#_15C084: db $22 ; Byte Fill
#_15C085: db $FE
#_15C086: db $04 ; Direct Copy
#_15C087: db $FC, $18, $10, $E0, $00
#_15C08C: db $43 ; Word Fill
#_15C08D: db $03, $01 ; Word Fill
#_15C08F: db $43 ; Word Fill
#_15C090: db $07, $02 ; Word Fill
#_15C092: db $03 ; Direct Copy
#_15C093: db $0E, $05, $0F, $04
#_15C097: db $43 ; Word Fill
#_15C098: db $04, $00 ; Word Fill
#_15C09A: db $10 ; Direct Copy
#_15C09B: db $03, $03, $07, $07, $0E, $0F, $04, $04
#_15C0A3: db $9F, $73, $B5, $53, $56, $81, $49, $84
#_15C0AB: db $89
#_15C0AC: db $26 ; Byte Fill
#_15C0AD: db $00
#_15C0AE: db $04 ; Direct Copy
#_15C0AF: db $9F, $B5, $56, $49, $89
#_15C0B4: db $22 ; Byte Fill
#_15C0B5: db $00
#_15C0B6: db $06 ; Direct Copy
#_15C0B7: db $0C, $03, $14, $0B, $16, $0D, $23
#_15C0BE: db $43 ; Word Fill
#_15C0BF: db $1F, $2F ; Word Fill
#_15C0C1: db $00 ; Direct Copy
#_15C0C2: db $1E
#_15C0C3: db $43 ; Word Fill
#_15C0C4: db $2F, $1B ; Word Fill
#_15C0C6: db $E0, $38 ; EXT Direct Copy
#_15C0C8: db $0C, $14, $16, $23, $2F, $2F, $2B, $2B
#_15C0D0: db $43, $BC, $22, $DC, $F3, $EE, $EF, $72
#_15C0D8: db $E7, $9A, $6F, $F6, $FF, $0E, $7B, $9A
#_15C0E0: db $7E, $3F, $FD, $6D, $85, $69, $F1, $65
#_15C0E8: db $BA, $71, $BD, $7E, $CB, $3D, $B3, $0F
#_15C0F0: db $3F, $05, $FF, $03, $6F, $80, $79, $80
#_15C0F8: db $BC, $BC, $C9, $63, $EF, $DF, $DF, $FE
#_15C100: db $01
#_15C101: db $2E ; Byte Fill
#_15C102: db $00
#_15C103: db $00 ; Direct Copy
#_15C104: db $01
#_15C105: db $26 ; Byte Fill
#_15C106: db $00
#_15C107: db $06 ; Direct Copy
#_15C108: db $FC, $10, $44, $38, $3A, $04, $26
#_15C10F: db $28 ; Byte Fill
#_15C110: db $00
#_15C111: db $03 ; Direct Copy
#_15C112: db $FC, $44, $3A, $26
#_15C116: db $25 ; Byte Fill
#_15C117: db $00
#_15C118: db $43 ; Word Fill
#_15C119: db $C0, $00 ; Word Fill
#_15C11B: db $08 ; Direct Copy
#_15C11C: db $40, $00, $E0, $00, $70, $00, $7E, $00
#_15C124: db $16
#_15C125: db $83 ; Repeat Fill
#_15C126: db $02, $01 ; Repeat Fill bytes
#_15C128: db $05 ; Direct Copy
#_15C129: db $40, $E0, $70, $7E, $16, $02
#_15C12F: db $2E ; Byte Fill
#_15C130: db $00
#_15C131: db $00 ; Direct Copy
#_15C132: db $02
#_15C133: db $26 ; Byte Fill
#_15C134: db $00
#_15C135: db $06 ; Direct Copy
#_15C136: db $57, $3A, $3D, $13, $12, $01, $01
#_15C13D: db $28 ; Byte Fill
#_15C13E: db $00
#_15C13F: db $03 ; Direct Copy
#_15C140: db $56, $3D, $12, $01
#_15C144: db $23 ; Byte Fill
#_15C145: db $00
#_15C146: db $10 ; Direct Copy
#_15C147: db $19, $0E, $14, $0F, $13, $0F, $10, $0F
#_15C14F: db $20, $1F, $3C, $03, $7F, $3C, $FE, $02
#_15C157: db $11
#_15C158: db $22 ; Byte Fill
#_15C159: db $10
#_15C15A: db $E0, $23 ; EXT Direct Copy
#_15C15C: db $20, $3C, $7F, $FD, $E0, $40, $90, $60
#_15C164: db $B0, $60, $48, $B0, $58, $B0, $54, $A8
#_15C16C: db $DF, $24, $DA, $A7, $E0, $B0, $B0, $58
#_15C174: db $58, $5C, $DF, $5B, $7C, $00, $FF, $7C
#_15C17C: db $7F, $03, $13, $0C
#_15C180: db $43 ; Word Fill
#_15C181: db $08, $07 ; Word Fill
#_15C183: db $0B ; Direct Copy
#_15C184: db $05, $03, $0A, $07, $7C, $FF, $7F, $13
#_15C18C: db $08, $08, $05, $0A
#_15C190: db $23 ; Byte Fill
#_15C191: db $00
#_15C192: db $13 ; Direct Copy
#_15C193: db $84, $00, $EA, $84, $FB, $66, $F4, $B9
#_15C19B: db $3F, $CB, $0E, $F5, $00, $00, $84, $EE
#_15C1A3: db $FB, $F6, $3E, $0F
#_15C1A7: db $27 ; Byte Fill
#_15C1A8: db $00
#_15C1A9: db $07 ; Direct Copy
#_15C1AA: db $07, $00, $1F, $07, $7F, $18, $F9, $67
#_15C1B2: db $23 ; Byte Fill
#_15C1B3: db $00
#_15C1B4: db $05 ; Direct Copy
#_15C1B5: db $07, $1F, $7F, $F9, $00, $00
#_15C1BB: db $83 ; Repeat Fill
#_15C1BC: db $78, $00 ; Repeat Fill bytes
#_15C1BE: db $11 ; Direct Copy
#_15C1BF: db $FB, $06, $E4, $F9, $FF, $0B, $0E, $F5
#_15C1C7: db $1D, $EE, $00, $04, $0E, $FB, $E6, $FE
#_15C1CF: db $0F, $1F
#_15C1D1: db $29 ; Byte Fill
#_15C1D2: db $00
#_15C1D3: db $04 ; Direct Copy
#_15C1D4: db $0F, $00, $13, $0E, $3F
#_15C1D9: db $25 ; Byte Fill
#_15C1DA: db $00
#_15C1DB: db $02 ; Direct Copy
#_15C1DC: db $0F, $13, $3F
#_15C1DF: db $27 ; Byte Fill
#_15C1E0: db $00
#_15C1E1: db $00 ; Direct Copy
#_15C1E2: db $40
#_15C1E3: db $84 ; Repeat Fill
#_15C1E4: db $F9, $00 ; Repeat Fill bytes
#_15C1E6: db $01 ; Direct Copy
#_15C1E7: db $60, $C0
#_15C1E9: db $23 ; Byte Fill
#_15C1EA: db $00
#_15C1EB: db $E0, $2E ; EXT Direct Copy
#_15C1ED: db $40, $C0, $B0, $60, $3C, $1F, $38, $1F
#_15C1F5: db $39, $1F, $3B, $1C, $1B, $0C, $1C, $0F
#_15C1FD: db $1E, $03, $1F, $04, $3C, $38, $39, $3B
#_15C205: db $1B, $1C, $1A, $14, $FE, $0C, $FC, $B1
#_15C20D: db $FC, $D1, $B0, $C3, $A1, $DE, $FF, $00
#_15C215: db $7F, $9E, $F1, $51, $F3, $CF, $EF
#_15C21C: db $22 ; Byte Fill
#_15C21D: db $FF
#_15C21E: db $03 ; Direct Copy
#_15C21F: db $61, $EE, $73, $80
#_15C223: db $43 ; Word Fill
#_15C224: db $F7, $00 ; Word Fill
#_15C226: db $0E ; Direct Copy
#_15C227: db $F8, $40, $7F, $20, $7F, $30, $BF, $18
#_15C22F: db $DF, $02, $FC, $FC, $FE, $FF, $F9
#_15C236: db $22 ; Byte Fill
#_15C237: db $FF
#_15C238: db $00 ; Direct Copy
#_15C239: db $2C
#_15C23A: db $84 ; Repeat Fill
#_15C23B: db $91, $03 ; Repeat Fill bytes
#_15C23D: db $43 ; Word Fill
#_15C23E: db $3B, $1C ; Word Fill
#_15C240: db $E0, $26 ; EXT Direct Copy
#_15C242: db $1C, $0F, $1E, $0B, $0F, $04, $2C, $38
#_15C24A: db $39, $3B, $3B, $1C, $1A, $0C, $DF, $2C
#_15C252: db $CF, $B1, $EF, $D4, $F6, $84, $E3, $82
#_15C25A: db $ED, $01, $76, $90, $F9, $49, $F3, $FE
#_15C262: db $FE, $BB, $BD, $F2, $69, $F6, $F3
#_15C269: db $83 ; Repeat Fill
#_15C26A: db $C1, $03 ; Repeat Fill bytes
#_15C26C: db $0B ; Direct Copy
#_15C26D: db $40, $F0, $60, $FF, $30, $BF, $00, $C2
#_15C275: db $80, $7F, $80, $7C
#_15C279: db $84 ; Repeat Fill
#_15C27A: db $D1, $03 ; Repeat Fill bytes
#_15C27C: db $01 ; Direct Copy
#_15C27D: db $7D, $7F
#_15C27F: db $3B ; Byte Fill
#_15C280: db $00
#_15C281: db $1B ; Direct Copy
#_15C282: db $04, $00, $0B, $04, $1C, $09, $3F, $13
#_15C28A: db $7F, $25, $FD, $56, $00, $00, $04, $0F
#_15C292: db $1E, $3E, $7E, $FF, $0B, $04, $08, $07
#_15C29A: db $05, $02, $07, $01
#_15C29E: db $83 ; Repeat Fill
#_15C29F: db $E6, $01 ; Repeat Fill bytes
#_15C2A1: db $05 ; Direct Copy
#_15C2A2: db $1C, $0B, $1F, $00, $0B, $08
#_15C2A8: db $62 ; Increasing Fill
#_15C2A9: db $05 ; Increasing Fill Start
#_15C2AA: db $1F ; Direct Copy
#_15C2AB: db $0E, $1C, $1F, $D9, $27, $EE, $15, $6A
#_15C2B3: db $57, $ED, $1B, $EB, $1D, $69, $9C, $34
#_15C2BB: db $CE, $92, $6F, $D9, $EC, $AA, $EC, $EE
#_15C2C3: db $6F, $37, $93, $0C, $07, $1F, $08, $18
#_15C2CB: db $2A ; Byte Fill
#_15C2CC: db $00
#_15C2CD: db $02 ; Direct Copy
#_15C2CE: db $0C, $1F, $18
#_15C2D1: db $24 ; Byte Fill
#_15C2D2: db $00
#_15C2D3: db $0C ; Direct Copy
#_15C2D4: db $1D, $EE, $0C, $F7, $EF, $33, $75, $23
#_15C2DC: db $26, $01, $09, $04, $09
#_15C2E1: db $22 ; Byte Fill
#_15C2E2: db $00
#_15C2E3: db $0E ; Direct Copy
#_15C2E4: db $1F, $0F, $EF, $75, $26, $09, $09, $00
#_15C2EC: db $61, $1F, $1A, $07, $07, $02, $02
#_15C2F3: db $28 ; Byte Fill
#_15C2F4: db $00
#_15C2F5: db $03 ; Direct Copy
#_15C2F6: db $61, $1A, $07, $02
#_15C2FA: db $23 ; Byte Fill
#_15C2FB: db $00
#_15C2FC: db $8A ; Repeat Fill
#_15C2FD: db $9A, $04 ; Repeat Fill bytes
#_15C2FF: db $24 ; Byte Fill
#_15C300: db $00
#_15C301: db $86 ; Repeat Fill
#_15C302: db $A9, $04 ; Repeat Fill bytes
#_15C304: db $01 ; Direct Copy
#_15C305: db $00, $05
#_15C307: db $22 ; Byte Fill
#_15C308: db $00
#_15C309: db $00 ; Direct Copy
#_15C30A: db $01
#_15C30B: db $2A ; Byte Fill
#_15C30C: db $00
#_15C30D: db $02 ; Direct Copy
#_15C30E: db $05, $00, $01
#_15C311: db $24 ; Byte Fill
#_15C312: db $00
#_15C313: db $02 ; Direct Copy
#_15C314: db $E0, $00, $E0
#_15C317: db $44 ; Word Fill
#_15C318: db $40, $A0 ; Word Fill
#_15C31A: db $02 ; Direct Copy
#_15C31B: db $C0, $00, $80
#_15C31E: db $24 ; Byte Fill
#_15C31F: db $00
#_15C320: db $0B ; Direct Copy
#_15C321: db $E0, $E0, $A0, $A0, $C0, $80, $00, $00
#_15C329: db $1F, $00, $1B, $04
#_15C32D: db $47 ; Word Fill
#_15C32E: db $30, $0F ; Word Fill
#_15C330: db $05 ; Direct Copy
#_15C331: db $18, $07, $07, $00, $17, $17
#_15C337: db $23 ; Byte Fill
#_15C338: db $2F
#_15C339: db $E0, $38 ; EXT Direct Copy
#_15C33B: db $1F, $07, $F6, $B0, $B7, $50, $3B, $C8
#_15C343: db $BF, $7B, $BF, $78, $BF, $63, $FE, $67
#_15C34B: db $80, $7F, $C9, $E8, $F4, $BC, $BB, $A3
#_15C353: db $E6, $80, $E7, $80, $78, $40, $3F, $20
#_15C35B: db $FE, $0C, $3D, $C4, $16, $EA, $6B, $95
#_15C363: db $FF, $00, $7F, $BF, $DF, $F1, $3A, $1D
#_15C36B: db $7E, $FF, $0F, $00, $07, $00, $03, $00
#_15C373: db $01
#_15C374: db $28 ; Byte Fill
#_15C375: db $00
#_15C376: db $03 ; Direct Copy
#_15C377: db $0F, $07, $03, $01
#_15C37B: db $23 ; Byte Fill
#_15C37C: db $00
#_15C37D: db $E0, $23 ; EXT Direct Copy
#_15C37F: db $FF, $B6, $BF, $68, $9E, $77, $EC, $9F
#_15C387: db $F0, $4F, $7B, $64, $3F, $39, $0C, $0C
#_15C38F: db $F9, $AF, $96, $EC, $F0, $7B, $3F, $0C
#_15C397: db $F9, $08, $CC, $34, $87, $7B, $BF, $41
#_15C39F: db $E1, $20, $C0, $C0
#_15C3A3: db $23 ; Byte Fill
#_15C3A4: db $00
#_15C3A5: db $05 ; Direct Copy
#_15C3A6: db $F6, $FB, $FC, $FE, $E1, $C0
#_15C3AC: db $23 ; Byte Fill
#_15C3AD: db $00
#_15C3AE: db $43 ; Word Fill
#_15C3AF: db $01, $00 ; Word Fill
#_15C3B1: db $43 ; Word Fill
#_15C3B2: db $02, $01 ; Word Fill
#_15C3B4: db $00 ; Direct Copy
#_15C3B5: db $01
#_15C3B6: db $25 ; Byte Fill
#_15C3B7: db $00
#_15C3B8: db $02 ; Direct Copy
#_15C3B9: db $01, $01, $03
#_15C3BC: db $83 ; Repeat Fill
#_15C3BD: db $EE, $00 ; Repeat Fill bytes
#_15C3BF: db $08 ; Direct Copy
#_15C3C0: db $EF, $5A, $DD, $AB, $6A, $81, $C1, $00
#_15C3C8: db $80
#_15C3C9: db $26 ; Byte Fill
#_15C3CA: db $00
#_15C3CB: db $04 ; Direct Copy
#_15C3CC: db $EE, $DD, $EA, $C1, $80
#_15C3D1: db $3A ; Byte Fill
#_15C3D2: db $00
#_15C3D3: db $0A ; Direct Copy
#_15C3D4: db $79, $07, $0D, $03, $04, $03, $02, $01
#_15C3DC: db $03, $00, $01
#_15C3DF: db $24 ; Byte Fill
#_15C3E0: db $00
#_15C3E1: db $07 ; Direct Copy
#_15C3E2: db $79, $0D, $04, $02, $03, $01, $00, $00
#_15C3EA: db $FF ; End of GFX 8D

;===================================================================================================

GFX_8E:
#_15C3EB: db $09 ; Direct Copy
#_15C3EC: db $01, $00, $03, $00, $07, $00, $0E, $01
#_15C3F4: db $0D, $02
#_15C3F6: db $43 ; Word Fill
#_15C3F7: db $1B, $04 ; Word Fill
#_15C3F9: db $E0, $21 ; EXT Direct Copy
#_15C3FB: db $0B, $04, $01, $02, $04, $09, $0B, $16
#_15C403: db $16, $0E, $E0, $00, $F3, $00, $7F, $83
#_15C40B: db $1C, $E7, $B8, $4F, $78, $BF, $EC, $7F
#_15C413: db $C7, $7F, $E0, $13, $8F, $EF, $7E, $FC
#_15C41B: db $EE, $C7
#_15C41D: db $27 ; Byte Fill
#_15C41E: db $00
#_15C41F: db $00 ; Direct Copy
#_15C420: db $01
#_15C421: db $2A ; Byte Fill
#_15C422: db $00
#_15C423: db $00 ; Direct Copy
#_15C424: db $01
#_15C425: db $22 ; Byte Fill
#_15C426: db $00
#_15C427: db $1D ; Direct Copy
#_15C428: db $18, $00, $3C, $00, $73, $0C, $F7, $0B
#_15C430: db $CC, $37, $B8, $4F, $78, $3F, $EC, $7F
#_15C438: db $18, $24, $4F, $AF, $7F, $FE, $7C, $EE
#_15C440: db $00, $00, $07, $00, $0F, $07
#_15C446: db $43 ; Word Fill
#_15C447: db $10, $0F ; Word Fill
#_15C449: db $15 ; Direct Copy
#_15C44A: db $70, $1F, $B8, $7F, $90, $7F, $00, $07
#_15C452: db $0F, $17, $17, $7F, $F9, $B0, $00, $00
#_15C45A: db $80, $00, $D8, $80, $EC, $90
#_15C460: db $43 ; Word Fill
#_15C461: db $7E, $C0 ; Word Fill
#_15C463: db $0B ; Direct Copy
#_15C464: db $FE, $80, $F7, $88, $00, $80, $D8, $F4
#_15C46C: db $FA, $E6, $C2, $C9
#_15C470: db $83 ; Repeat Fill
#_15C471: db $62, $00 ; Repeat Fill bytes
#_15C473: db $43 ; Word Fill
#_15C474: db $10, $0F ; Word Fill
#_15C476: db $85 ; Repeat Fill
#_15C477: db $6A, $00 ; Repeat Fill bytes
#_15C479: db $01 ; Direct Copy
#_15C47A: db $D9, $3F
#_15C47C: db $86 ; Repeat Fill
#_15C47D: db $71, $00 ; Repeat Fill bytes
#_15C47F: db $02 ; Direct Copy
#_15C480: db $D9, $80, $00
#_15C483: db $43 ; Word Fill
#_15C484: db $C0, $80 ; Word Fill
#_15C486: db $E0, $41 ; EXT Direct Copy
#_15C488: db $60, $C0, $58, $E0, $E4, $D8, $FC, $88
#_15C490: db $FC, $00, $80, $C0, $C0, $E0, $D8, $E4
#_15C498: db $DC, $DC, $07, $00, $0C, $07, $1B, $0E
#_15C4A0: db $2E, $1D, $2E, $1B, $5E, $3B, $5F, $37
#_15C4A8: db $DB, $37, $07, $0E, $1F, $2F, $2F, $5F
#_15C4B0: db $5F, $DB, $E0, $00, $10, $E0, $E8, $70
#_15C4B8: db $54, $B8, $34, $D8, $AA, $5C, $1A, $EC
#_15C4C0: db $1B, $EC, $E0, $70, $F8, $DC, $FC, $6E
#_15C4C8: db $FE, $FF
#_15C4CA: db $83 ; Repeat Fill
#_15C4CB: db $36, $00 ; Repeat Fill bytes
#_15C4CD: db $13 ; Direct Copy
#_15C4CE: db $06, $01, $1B, $04, $37, $1C, $6E, $3B
#_15C4D6: db $6C, $3B, $BA, $77, $00, $01, $06, $1F
#_15C4DE: db $3F, $7F, $7F, $BB
#_15C4E2: db $83 ; Repeat Fill
#_15C4E3: db $78, $00 ; Repeat Fill bytes
#_15C4E5: db $13 ; Direct Copy
#_15C4E6: db $60, $80, $D8, $20, $E4, $38, $32, $DC
#_15C4EE: db $FA, $1C, $19, $EE, $00, $80, $60, $F8
#_15C4F6: db $FC, $FE, $3E, $FF
#_15C4FA: db $39 ; Byte Fill
#_15C4FB: db $00
#_15C4FC: db $15 ; Direct Copy
#_15C4FD: db $1C, $00, $2A, $1C, $54, $38, $6A, $34
#_15C505: db $AB, $76, $AC, $73, $BE, $71, $00, $1C
#_15C50D: db $2E, $5C, $7A, $BB, $BC, $BE
#_15C513: db $23 ; Byte Fill
#_15C514: db $00
#_15C515: db $43 ; Word Fill
#_15C516: db $01, $00 ; Word Fill
#_15C518: db $03 ; Direct Copy
#_15C519: db $03, $01, $02, $01
#_15C51D: db $83 ; Repeat Fill
#_15C51E: db $58, $01 ; Repeat Fill bytes
#_15C520: db $03 ; Direct Copy
#_15C521: db $00, $00, $01, $01
#_15C525: db $22 ; Byte Fill
#_15C526: db $03
#_15C527: db $1D ; Direct Copy
#_15C528: db $02, $00, $00, $C0, $00, $70, $C0, $78
#_15C530: db $B0, $6C, $98, $77, $8C, $78, $87, $BE
#_15C538: db $C1, $00, $C0, $F0, $F8, $EC, $F7, $F8
#_15C540: db $FE, $07, $00, $03, $00, $01
#_15C546: db $22 ; Byte Fill
#_15C547: db $00
#_15C548: db $02 ; Direct Copy
#_15C549: db $01, $00, $01
#_15C54C: db $24 ; Byte Fill
#_15C54D: db $00
#_15C54E: db $14 ; Direct Copy
#_15C54F: db $06, $02, $01, $00, $01, $01, $00, $00
#_15C557: db $EF, $3F, $BC, $1F, $7E, $01, $FF, $68
#_15C55F: db $3B, $2B, $DC, $14, $77
#_15C564: db $22 ; Byte Fill
#_15C565: db $00
#_15C566: db $06 ; Direct Copy
#_15C567: db $EF, $BC, $7E, $95, $D4, $EB, $77
#_15C56E: db $2A ; Byte Fill
#_15C56F: db $00
#_15C570: db $02 ; Direct Copy
#_15C571: db $01, $00, $01
#_15C574: db $27 ; Byte Fill
#_15C575: db $00
#_15C576: db $07 ; Direct Copy
#_15C577: db $01, $01, $00, $C7, $7F, $6F, $3F, $3C
#_15C57F: db $88 ; Repeat Fill
#_15C580: db $9B, $01 ; Repeat Fill bytes
#_15C582: db $04 ; Direct Copy
#_15C583: db $7F, $00, $C7, $6F, $3C
#_15C588: db $83 ; Repeat Fill
#_15C589: db $AA, $01 ; Repeat Fill bytes
#_15C58B: db $E0, $25 ; EXT Direct Copy
#_15C58D: db $7F, $D9, $3F, $7F, $1F, $7F, $07, $7F
#_15C595: db $30, $7B, $39, $27, $06, $3F, $06, $0E
#_15C59D: db $00, $D9, $7F, $5F, $4F, $46, $39, $39
#_15C5A5: db $0E, $FB, $04, $DB, $24, $AD, $52, $A6
#_15C5AD: db $58, $F4, $88, $F4, $C8, $C8
#_15C5B3: db $22 ; Byte Fill
#_15C5B4: db $00
#_15C5B5: db $07 ; Direct Copy
#_15C5B6: db $8D, $AD, $F7, $FE, $7C, $3C, $C8, $00
#_15C5BE: db $8B ; Repeat Fill
#_15C5BF: db $E2, $01 ; Repeat Fill bytes
#_15C5C1: db $00 ; Direct Copy
#_15C5C2: db $0F
#_15C5C3: db $22 ; Byte Fill
#_15C5C4: db $00
#_15C5C5: db $85 ; Repeat Fill
#_15C5C6: db $F1, $01 ; Repeat Fill bytes
#_15C5C8: db $E0, $79 ; EXT Direct Copy
#_15C5CA: db $0F, $00, $F8, $00, $D8, $20, $C8, $30
#_15C5D2: db $B4, $48, $D8, $A0, $F0, $80, $F0, $00
#_15C5DA: db $60, $00, $88, $A8, $B8, $DC, $78, $50
#_15C5E2: db $D0, $60, $DB, $B7, $C9, $37, $A4, $1B
#_15C5EA: db $DC, $43, $6F, $28, $3F, $1B, $1E, $00
#_15C5F2: db $01, $00, $5B, $C9, $E4, $BC, $57, $24
#_15C5FA: db $1F, $01, $BB, $ED, $F3, $EC, $E5, $D8
#_15C602: db $3B, $C2, $F6, $14, $F4, $C0, $78, $00
#_15C60A: db $80, $00, $FA, $F3, $E7, $3D, $EA, $3C
#_15C612: db $F8, $80, $B9, $77, $88, $77, $C8, $B7
#_15C61A: db $A7, $18, $5A, $04, $6F, $2B, $FF, $72
#_15C622: db $72, $00, $B9, $88, $48, $A7, $7B, $54
#_15C62A: db $8D, $72, $BB, $EE, $D5, $EE, $13, $ED
#_15C632: db $E5, $18, $5A, $20, $FA, $D8, $FF, $4E
#_15C63A: db $4E, $00, $FF, $D5, $12, $E5, $DE, $26
#_15C642: db $B1, $4E
#_15C644: db $29 ; Byte Fill
#_15C645: db $00
#_15C646: db $00 ; Direct Copy
#_15C647: db $01
#_15C648: db $29 ; Byte Fill
#_15C649: db $00
#_15C64A: db $1B ; Direct Copy
#_15C64B: db $01, $00, $00, $9F, $70, $5E, $39, $3C
#_15C653: db $07, $66, $1F, $F3, $4F, $B8, $87, $FF
#_15C65B: db $60, $77, $00, $9F, $5F, $3F, $67, $B3
#_15C663: db $78, $9F, $77, $01
#_15C667: db $28 ; Byte Fill
#_15C668: db $00
#_15C669: db $00 ; Direct Copy
#_15C66A: db $01
#_15C66B: db $24 ; Byte Fill
#_15C66C: db $00
#_15C66D: db $00 ; Direct Copy
#_15C66E: db $01
#_15C66F: db $23 ; Byte Fill
#_15C670: db $00
#_15C671: db $1A ; Direct Copy
#_15C672: db $01, $00, $00, $3F, $F0, $DD, $36, $3B
#_15C67A: db $0C, $77, $18, $FE, $59, $AD, $9F, $FA
#_15C682: db $67, $77, $00, $3F, $DD, $3B, $77, $BF
#_15C68A: db $6F, $9A, $77
#_15C68D: db $23 ; Byte Fill
#_15C68E: db $00
#_15C68F: db $02 ; Direct Copy
#_15C690: db $01, $00, $03
#_15C693: db $44 ; Word Fill
#_15C694: db $00, $07 ; Word Fill
#_15C696: db $43 ; Word Fill
#_15C697: db $0E, $01 ; Word Fill
#_15C699: db $00 ; Direct Copy
#_15C69A: db $00
#_15C69B: db $62 ; Increasing Fill
#_15C69C: db $00 ; Increasing Fill Start
#_15C69D: db $09 ; Direct Copy
#_15C69E: db $04, $04, $09, $09, $00, $00, $E3, $00
#_15C6A6: db $F7, $03
#_15C6A8: db $43 ; Word Fill
#_15C6A9: db $FC, $07 ; Word Fill
#_15C6AB: db $0D ; Direct Copy
#_15C6AC: db $34, $CB, $54, $AB, $E2, $1D, $00, $E3
#_15C6B4: db $17, $0F, $0E, $CC, $EE, $9F
#_15C6BA: db $27 ; Byte Fill
#_15C6BB: db $00
#_15C6BC: db $02 ; Direct Copy
#_15C6BD: db $01, $00, $01
#_15C6C0: db $28 ; Byte Fill
#_15C6C1: db $00
#_15C6C2: db $83 ; Repeat Fill
#_15C6C3: db $94, $01 ; Repeat Fill bytes
#_15C6C5: db $17 ; Direct Copy
#_15C6C6: db $30, $00, $78, $00, $FF, $00, $DF, $23
#_15C6CE: db $BE, $41, $76, $89, $D6, $29, $B4, $4B
#_15C6D6: db $30, $48, $87, $A7, $63, $CA, $BA, $FE
#_15C6DE: db $27 ; Byte Fill
#_15C6DF: db $00
#_15C6E0: db $00 ; Direct Copy
#_15C6E1: db $01
#_15C6E2: db $2A ; Byte Fill
#_15C6E3: db $00
#_15C6E4: db $00 ; Direct Copy
#_15C6E5: db $01
#_15C6E6: db $22 ; Byte Fill
#_15C6E7: db $00
#_15C6E8: db $0B ; Direct Copy
#_15C6E9: db $18, $00, $3F, $00, $77, $0B, $FC, $07
#_15C6F1: db $F8, $0F, $F8, $3F
#_15C6F5: db $83 ; Repeat Fill
#_15C6F6: db $24, $00 ; Repeat Fill bytes
#_15C6F8: db $03 ; Direct Copy
#_15C6F9: db $18, $27, $4F, $AF
#_15C6FD: db $85 ; Repeat Fill
#_15C6FE: db $2C, $00 ; Repeat Fill bytes
#_15C700: db $83 ; Repeat Fill
#_15C701: db $56, $01 ; Repeat Fill bytes
#_15C703: db $03 ; Direct Copy
#_15C704: db $0C, $03, $38, $0F
#_15C708: db $43 ; Word Fill
#_15C709: db $58, $3F ; Word Fill
#_15C70B: db $09 ; Direct Copy
#_15C70C: db $7C, $3F, $00, $01, $03, $0D, $3B, $7F
#_15C714: db $7C, $7C
#_15C716: db $83 ; Repeat Fill
#_15C717: db $68, $01 ; Repeat Fill bytes
#_15C719: db $03 ; Direct Copy
#_15C71A: db $F8, $C0, $EC, $D0
#_15C71E: db $43 ; Word Fill
#_15C71F: db $7E, $C0 ; Word Fill
#_15C721: db $06 ; Direct Copy
#_15C722: db $FE, $80, $77, $88, $00, $C0, $F8
#_15C729: db $83 ; Repeat Fill
#_15C72A: db $8B, $00 ; Repeat Fill bytes
#_15C72C: db $18 ; Direct Copy
#_15C72D: db $49, $4F, $38, $9C, $73, $9B, $67, $B6
#_15C735: db $4F, $AC, $5F, $A8, $5F, $DF, $3F, $BF
#_15C73D: db $78, $4F, $9C, $9B, $B7, $AF, $AF, $DF
#_15C745: db $BF
#_15C746: db $25 ; Byte Fill
#_15C747: db $00
#_15C748: db $23 ; Byte Fill
#_15C749: db $30
#_15C74A: db $28 ; Byte Fill
#_15C74B: db $00
#_15C74C: db $01 ; Direct Copy
#_15C74D: db $30, $30
#_15C74F: db $28 ; Byte Fill
#_15C750: db $00
#_15C751: db $05 ; Direct Copy
#_15C752: db $07, $00, $0C, $03, $0B, $07
#_15C758: db $43 ; Word Fill
#_15C759: db $17, $0F ; Word Fill
#_15C75B: db $22 ; Byte Fill
#_15C75C: db $00
#_15C75D: db $04 ; Direct Copy
#_15C75E: db $07, $0C, $0B, $17, $17
#_15C763: db $25 ; Byte Fill
#_15C764: db $00
#_15C765: db $05 ; Direct Copy
#_15C766: db $F0, $00, $18, $E0, $E8, $F0
#_15C76C: db $43 ; Word Fill
#_15C76D: db $F4, $F8 ; Word Fill
#_15C76F: db $22 ; Byte Fill
#_15C770: db $00
#_15C771: db $04 ; Direct Copy
#_15C772: db $F0, $38, $F8, $FC, $FC
#_15C777: db $29 ; Byte Fill
#_15C778: db $00
#_15C779: db $00 ; Direct Copy
#_15C77A: db $42
#_15C77B: db $43 ; Word Fill
#_15C77C: db $00, $FF ; Word Fill
#_15C77E: db $25 ; Byte Fill
#_15C77F: db $00
#_15C780: db $02 ; Direct Copy
#_15C781: db $42, $BD, $81
#_15C784: db $43 ; Word Fill
#_15C785: db $34, $10 ; Word Fill
#_15C787: db $43 ; Word Fill
#_15C788: db $32, $10 ; Word Fill
#_15C78A: db $01 ; Direct Copy
#_15C78B: db $34, $10
#_15C78D: db $43 ; Word Fill
#_15C78E: db $74, $30 ; Word Fill
#_15C790: db $09 ; Direct Copy
#_15C791: db $34, $10, $2C, $2C, $2E, $2E, $2C, $4C
#_15C799: db $4C, $2C
#_15C79B: db $83 ; Repeat Fill
#_15C79C: db $46, $03 ; Repeat Fill bytes
#_15C79E: db $00 ; Direct Copy
#_15C79F: db $CF
#_15C7A0: db $22 ; Byte Fill
#_15C7A1: db $00
#_15C7A2: db $22 ; Byte Fill
#_15C7A3: db $FF
#_15C7A4: db $01 ; Direct Copy
#_15C7A5: db $06, $06
#_15C7A7: db $23 ; Byte Fill
#_15C7A8: db $00
#_15C7A9: db $E0, $23 ; EXT Direct Copy
#_15C7AB: db $30, $FF, $FF, $00, $F9, $06, $00, $FE
#_15C7B3: db $7F, $FD, $BF, $FB, $DF, $F7, $EF, $EF
#_15C7BB: db $F7, $DF, $FB, $BF, $FD, $7F, $FE, $FE
#_15C7C3: db $FD, $FB, $F7, $EF, $DF, $BF, $7F, $0C
#_15C7CB: db $03, $05, $02, $03
#_15C7CF: db $43 ; Word Fill
#_15C7D0: db $00, $01 ; Word Fill
#_15C7D2: db $26 ; Byte Fill
#_15C7D3: db $00
#_15C7D4: db $04 ; Direct Copy
#_15C7D5: db $0B, $07, $03, $01, $01
#_15C7DA: db $22 ; Byte Fill
#_15C7DB: db $00
#_15C7DC: db $0C ; Direct Copy
#_15C7DD: db $C3, $3D, $A2, $5D, $FB, $05, $FF, $28
#_15C7E5: db $7B, $6B, $FC, $34, $37
#_15C7EA: db $22 ; Byte Fill
#_15C7EB: db $00
#_15C7EC: db $06 ; Direct Copy
#_15C7ED: db $BF, $7F, $7F, $D7, $94, $CB, $37
#_15C7F4: db $2A ; Byte Fill
#_15C7F5: db $00
#_15C7F6: db $00 ; Direct Copy
#_15C7F7: db $01
#_15C7F8: db $29 ; Byte Fill
#_15C7F9: db $00
#_15C7FA: db $0A ; Direct Copy
#_15C7FB: db $01, $00, $00, $CA, $35, $6B, $35, $3E
#_15C803: db $1B, $3F, $07
#_15C806: db $87 ; Repeat Fill
#_15C807: db $9E, $04 ; Repeat Fill bytes
#_15C809: db $03 ; Direct Copy
#_15C80A: db $CF, $6F, $3F, $3F
#_15C80E: db $83 ; Repeat Fill
#_15C80F: db $AB, $04 ; Repeat Fill bytes
#_15C811: db $2B ; Byte Fill
#_15C812: db $00
#_15C813: db $02 ; Direct Copy
#_15C814: db $01, $00, $01
#_15C817: db $26 ; Byte Fill
#_15C818: db $00
#_15C819: db $E0, $31 ; EXT Direct Copy
#_15C81B: db $01, $01, $6F, $3F, $3F, $18, $3F, $00
#_15C823: db $7F, $0E, $FF, $6C, $FB, $30, $1D, $14
#_15C82B: db $FF, $00, $6F, $3F, $3D, $71, $93, $CF
#_15C833: db $EB, $FF, $7E, $0F, $7F, $07, $7F, $11
#_15C83B: db $7F, $0C, $77, $03, $2B, $03, $37, $07
#_15C843: db $0F, $00, $7E, $5F, $6F, $73, $7C, $3C
#_15C84B: db $38, $0F
#_15C84D: db $88 ; Repeat Fill
#_15C84E: db $F8, $01 ; Repeat Fill bytes
#_15C850: db $05 ; Direct Copy
#_15C851: db $08, $F4, $48, $C8, $00, $80
#_15C857: db $84 ; Repeat Fill
#_15C858: db $07, $02 ; Repeat Fill bytes
#_15C85A: db $10 ; Direct Copy
#_15C85B: db $FC, $BC, $C8, $80, $BF, $70, $7F, $20
#_15C863: db $6F, $30, $77, $38, $38, $1F, $1F, $07
#_15C86B: db $07
#_15C86C: db $22 ; Byte Fill
#_15C86D: db $00
#_15C86E: db $06 ; Direct Copy
#_15C86F: db $BF, $7F, $6F, $77, $38, $1F, $07
#_15C876: db $38 ; Byte Fill
#_15C877: db $00
#_15C878: db $00 ; Direct Copy
#_15C879: db $15
#_15C87A: db $44 ; Word Fill
#_15C87B: db $0F, $16 ; Word Fill
#_15C87D: db $43 ; Word Fill
#_15C87E: db $0B, $07 ; Word Fill
#_15C880: db $02 ; Direct Copy
#_15C881: db $04, $03, $03
#_15C884: db $22 ; Byte Fill
#_15C885: db $00
#_15C886: db $14 ; Direct Copy
#_15C887: db $1D, $16, $17, $0B, $0B, $04, $03, $00
#_15C88F: db $D4, $F8, $B4, $F8, $34, $F8, $68, $F0
#_15C897: db $E8, $F0, $10, $E0, $E0
#_15C89C: db $22 ; Byte Fill
#_15C89D: db $00
#_15C89E: db $08 ; Direct Copy
#_15C89F: db $D4, $B4, $74, $E8, $E8, $10, $E0, $00
#_15C8A7: db $FF
#_15C8A8: db $46 ; Word Fill
#_15C8A9: db $3C, $E7 ; Word Fill
#_15C8AB: db $04 ; Direct Copy
#_15C8AC: db $7E, $18, $3C, $00, $18
#_15C8B1: db $22 ; Byte Fill
#_15C8B2: db $00
#_15C8B3: db $23 ; Byte Fill
#_15C8B4: db $BD
#_15C8B5: db $E0, $21 ; EXT Direct Copy
#_15C8B7: db $5A, $24, $18, $00, $A0, $80, $D8, $C0
#_15C8BF: db $E4, $60, $74, $30, $3A, $18, $1D, $0C
#_15C8C7: db $1E, $0E, $0F, $03, $60, $38, $9C, $4C
#_15C8CF: db $26, $13, $11, $0C, $04, $00, $7A, $00
#_15C8D7: db $9A, $18
#_15C8D9: db $43 ; Word Fill
#_15C8DA: db $66, $24 ; Word Fill
#_15C8DC: db $0D ; Direct Copy
#_15C8DD: db $59, $18, $5E, $00, $20, $00, $04, $7E
#_15C8E5: db $E6, $5A, $5A, $67, $7E, $20
#_15C8EB: db $83 ; Repeat Fill
#_15C8EC: db $46, $00 ; Repeat Fill bytes
#_15C8EE: db $08 ; Direct Copy
#_15C8EF: db $34, $18, $62, $3C, $76, $3C, $3C, $18
#_15C8F7: db $18
#_15C8F8: db $23 ; Byte Fill
#_15C8F9: db $00
#_15C8FA: db $06 ; Direct Copy
#_15C8FB: db $18, $3C, $7E, $7E, $3C, $18, $00
#_15C902: db $FF ; End of GFX 8E

;===================================================================================================

GFX_8F:
#_15C903: db $23 ; Byte Fill
#_15C904: db $00
#_15C905: db $13 ; Direct Copy
#_15C906: db $08, $00, $14, $08, $2F, $0C, $3F, $0B
#_15C90E: db $5E, $23, $5F, $31, $00, $00, $08, $1C
#_15C916: db $37, $37, $7F, $7B
#_15C91A: db $23 ; Byte Fill
#_15C91B: db $00
#_15C91C: db $13 ; Direct Copy
#_15C91D: db $10, $00, $28, $10, $F4, $30, $FC, $D0
#_15C925: db $7A, $C4, $FA, $8C, $00, $00, $10, $38
#_15C92D: db $EC, $EC, $FE, $DE
#_15C931: db $25 ; Byte Fill
#_15C932: db $00
#_15C933: db $85 ; Repeat Fill
#_15C934: db $04, $00 ; Repeat Fill bytes
#_15C936: db $03 ; Direct Copy
#_15C937: db $1F, $0B, $1E, $03
#_15C93B: db $22 ; Byte Fill
#_15C93C: db $00
#_15C93D: db $04 ; Direct Copy
#_15C93E: db $08, $1C, $37, $17, $1F
#_15C943: db $25 ; Byte Fill
#_15C944: db $00
#_15C945: db $85 ; Repeat Fill
#_15C946: db $1C, $00 ; Repeat Fill bytes
#_15C948: db $03 ; Direct Copy
#_15C949: db $F8, $D0, $78, $C0
#_15C94D: db $22 ; Byte Fill
#_15C94E: db $00
#_15C94F: db $04 ; Direct Copy
#_15C950: db $10, $38, $EC, $E8, $F8
#_15C955: db $89 ; Repeat Fill
#_15C956: db $34, $00 ; Repeat Fill bytes
#_15C958: db $05 ; Direct Copy
#_15C959: db $0E, $03, $0F, $01, $1F, $05
#_15C95F: db $84 ; Repeat Fill
#_15C960: db $42, $00 ; Repeat Fill bytes
#_15C962: db $02 ; Direct Copy
#_15C963: db $0F, $0B, $1D
#_15C966: db $89 ; Repeat Fill
#_15C967: db $4C, $00 ; Repeat Fill bytes
#_15C969: db $05 ; Direct Copy
#_15C96A: db $70, $C0, $F0, $80, $F8, $A0
#_15C970: db $84 ; Repeat Fill
#_15C971: db $5A, $00 ; Repeat Fill bytes
#_15C973: db $1A ; Direct Copy
#_15C974: db $F0, $D0, $B8, $10, $00, $2F, $00, $17
#_15C97C: db $06, $0F, $01, $0F, $07, $1D, $0F, $1E
#_15C984: db $07, $37, $0B, $10, $3F, $19, $0F, $0F
#_15C98C: db $1F, $1F, $3F
#_15C98F: db $23 ; Byte Fill
#_15C990: db $00
#_15C991: db $13 ; Direct Copy
#_15C992: db $80, $00, $E0, $80, $B0, $E0, $B8, $F0
#_15C99A: db $F8, $E0, $EC, $D0, $00, $00, $80, $E0
#_15C9A2: db $F0, $F8, $F8, $FC
#_15C9A6: db $23 ; Byte Fill
#_15C9A7: db $00
#_15C9A8: db $13 ; Direct Copy
#_15C9A9: db $03, $00, $05, $03, $0B, $06, $1E, $01
#_15C9B1: db $3D, $1B, $7F, $36, $00, $00, $03, $07
#_15C9B9: db $0F, $1F, $3F, $7F
#_15C9BD: db $23 ; Byte Fill
#_15C9BE: db $00
#_15C9BF: db $02 ; Direct Copy
#_15C9C0: db $82, $00, $C5
#_15C9C3: db $43 ; Word Fill
#_15C9C4: db $00, $FA ; Word Fill
#_15C9C6: db $0C ; Direct Copy
#_15C9C7: db $B0, $FD, $B8, $6D, $38, $00, $00, $82
#_15C9CF: db $C7, $FE, $FE, $7F, $FF
#_15C9D4: db $23 ; Byte Fill
#_15C9D5: db $00
#_15C9D6: db $93 ; Repeat Fill
#_15C9D7: db $C4, $00 ; Repeat Fill bytes
#_15C9D9: db $23 ; Byte Fill
#_15C9DA: db $00
#_15C9DB: db $05 ; Direct Copy
#_15C9DC: db $E2, $00, $FD, $60, $FA, $30
#_15C9E2: db $83 ; Repeat Fill
#_15C9E3: db $E2, $00 ; Repeat Fill bytes
#_15C9E5: db $05 ; Direct Copy
#_15C9E6: db $7D, $38, $00, $00, $E2, $FF
#_15C9EC: db $85 ; Repeat Fill
#_15C9ED: db $EC, $00 ; Repeat Fill bytes
#_15C9EF: db $15 ; Direct Copy
#_15C9F0: db $0E, $00, $17, $06, $2F, $01, $1F, $06
#_15C9F8: db $1C, $0F, $2F, $14, $37, $1B, $00, $0E
#_15CA00: db $19, $3E, $1F, $1F, $3F, $2F
#_15CA06: db $25 ; Byte Fill
#_15CA07: db $00
#_15CA08: db $09 ; Direct Copy
#_15CA09: db $E0, $00, $70, $E0, $38, $F0, $F4, $28
#_15CA11: db $EC, $D8
#_15CA13: db $22 ; Byte Fill
#_15CA14: db $00
#_15CA15: db $15 ; Direct Copy
#_15CA16: db $E0, $F0, $F8, $FC, $F4, $01, $00, $02
#_15CA1E: db $01, $05, $03, $0F, $00, $1E, $0D, $3F
#_15CA26: db $1B, $3F, $13, $7E, $37, $01
#_15CA2C: db $84 ; Repeat Fill
#_15CA2D: db $D2, $00 ; Repeat Fill bytes
#_15CA2F: db $12 ; Direct Copy
#_15CA30: db $3B, $77, $C0, $00, $E0, $80, $E0, $00
#_15CA38: db $60, $C0, $E0, $C0, $B0, $00, $F8, $90
#_15CA40: db $EC, $B0, $C0
#_15CA43: db $22 ; Byte Fill
#_15CA44: db $E0
#_15CA45: db $10 ; Direct Copy
#_15CA46: db $A0, $F0, $F8, $FC, $AF, $6D, $D7, $43
#_15CA4E: db $AF, $05, $AE, $02, $4B, $00, $0E, $00
#_15CA56: db $04
#_15CA57: db $22 ; Byte Fill
#_15CA58: db $00
#_15CA59: db $14 ; Direct Copy
#_15CA5A: db $FD, $FF, $E9, $ED, $4F, $0A, $04, $00
#_15CA62: db $F5, $B6, $EB, $C2, $F5, $A0, $75, $40
#_15CA6A: db $D2, $00, $70, $00, $20
#_15CA6F: db $22 ; Byte Fill
#_15CA70: db $00
#_15CA71: db $19 ; Direct Copy
#_15CA72: db $BF, $FF, $97, $B7, $F2, $50, $20, $00
#_15CA7A: db $3F, $11, $27, $19, $27, $1B, $33, $1D
#_15CA82: db $36, $1C, $1F, $0C, $1E, $08, $0C, $00
#_15CA8A: db $3B, $3D
#_15CA8C: db $22 ; Byte Fill
#_15CA8D: db $3F
#_15CA8E: db $14 ; Direct Copy
#_15CA8F: db $1F, $1E, $0C, $FC, $88, $E4, $98, $E4
#_15CA97: db $D8, $CC, $B8, $6C, $38, $F8, $30, $78
#_15CA9F: db $10, $30, $00, $DC, $BC
#_15CAA4: db $22 ; Byte Fill
#_15CAA5: db $FC
#_15CAA6: db $0F ; Direct Copy
#_15CAA7: db $F8, $78, $30, $37, $1B, $33, $1D, $19
#_15CAAF: db $0E, $1D, $0E, $1F, $0C, $0E, $04, $04
#_15CAB7: db $22 ; Byte Fill
#_15CAB8: db $00
#_15CAB9: db $01 ; Direct Copy
#_15CABA: db $3F, $3F
#_15CABC: db $22 ; Byte Fill
#_15CABD: db $1F
#_15CABE: db $0F ; Direct Copy
#_15CABF: db $0E, $04, $00, $EC, $D8, $CC, $B8, $98
#_15CAC7: db $70, $B8, $70, $F8, $30, $70, $20, $20
#_15CACF: db $22 ; Byte Fill
#_15CAD0: db $00
#_15CAD1: db $01 ; Direct Copy
#_15CAD2: db $FC, $FC
#_15CAD4: db $22 ; Byte Fill
#_15CAD5: db $F8
#_15CAD6: db $E0, $3D ; EXT Direct Copy
#_15CAD8: db $70, $20, $00, $3B, $0C, $37, $07, $1F
#_15CAE0: db $03, $1F, $09, $0F, $05, $07, $03, $03
#_15CAE8: db $01, $01, $00, $37, $3F, $1F, $1B, $0D
#_15CAF0: db $07, $03, $01, $DC, $30, $EC, $E0, $78
#_15CAF8: db $C0, $F8, $90, $F0, $A0, $E0, $C0, $C0
#_15CB00: db $80, $80, $00, $EC, $FC, $F8, $D8, $B0
#_15CB08: db $E0, $C0, $80, $7F, $27, $FD, $6F, $F9
#_15CB10: db $7E, $7F, $0F, $0F, $01, $01
#_15CB16: db $24 ; Byte Fill
#_15CB17: db $00
#_15CB18: db $12 ; Direct Copy
#_15CB19: db $77, $EF, $FF, $7F, $0F, $01, $00, $00
#_15CB21: db $F6, $3C, $DE, $7C, $9E, $FC, $CC, $F8
#_15CB29: db $F8, $F0, $F0
#_15CB2C: db $24 ; Byte Fill
#_15CB2D: db $00
#_15CB2E: db $22 ; Byte Fill
#_15CB2F: db $FE
#_15CB30: db $04 ; Direct Copy
#_15CB31: db $FC, $F8, $F0, $00, $00
#_15CB36: db $86 ; Repeat Fill
#_15CB37: db $40, $02 ; Repeat Fill bytes
#_15CB39: db $01 ; Direct Copy
#_15CB3A: db $0E, $0E
#_15CB3C: db $26 ; Byte Fill
#_15CB3D: db $00
#_15CB3E: db $83 ; Repeat Fill
#_15CB3F: db $50, $02 ; Repeat Fill bytes
#_15CB41: db $00 ; Direct Copy
#_15CB42: db $0E
#_15CB43: db $22 ; Byte Fill
#_15CB44: db $00
#_15CB45: db $08 ; Direct Copy
#_15CB46: db $FF, $3C, $DF, $7E, $9E, $FC, $FC, $38
#_15CB4E: db $38
#_15CB4F: db $26 ; Byte Fill
#_15CB50: db $00
#_15CB51: db $04 ; Direct Copy
#_15CB52: db $FF, $FF, $FE, $FC, $38
#_15CB57: db $22 ; Byte Fill
#_15CB58: db $00
#_15CB59: db $01 ; Direct Copy
#_15CB5A: db $2E, $0B
#_15CB5C: db $44 ; Word Fill
#_15CB5D: db $3F, $09 ; Word Fill
#_15CB5F: db $05 ; Direct Copy
#_15CB60: db $15, $1F, $0B, $0B, $01, $01
#_15CB66: db $22 ; Byte Fill
#_15CB67: db $00
#_15CB68: db $0A ; Direct Copy
#_15CB69: db $3F, $3B, $39, $2D, $17, $0B, $01, $00
#_15CB71: db $74, $D0, $F8
#_15CB74: db $43 ; Word Fill
#_15CB75: db $90, $FC ; Word Fill
#_15CB77: db $1D ; Direct Copy
#_15CB78: db $A8, $F8, $D0, $F8, $B0, $D0, $00, $20
#_15CB80: db $00, $FC, $D8, $9C, $BC, $E8, $C8, $F0
#_15CB88: db $20, $7C, $3F, $3F, $07, $0F, $00, $0B
#_15CB90: db $03, $07, $03, $03, $00, $01
#_15CB96: db $22 ; Byte Fill
#_15CB97: db $00
#_15CB98: db $02 ; Direct Copy
#_15CB99: db $7F, $3F, $0F
#_15CB9C: db $83 ; Repeat Fill
#_15CB9D: db $24, $02 ; Repeat Fill bytes
#_15CB9F: db $18 ; Direct Copy
#_15CBA0: db $00, $C4, $78, $E6, $FC, $FF, $DA, $EF
#_15CBA8: db $DA, $DD, $B8, $FA, $10, $74, $60, $FC
#_15CBB0: db $00, $FC, $FE, $FD, $FD, $FF, $FE, $FC
#_15CBB8: db $FC
#_15CBB9: db $E4, $2F ; EXT Byte Fill
#_15CBBB: db $00
#_15CBBC: db $F0, $28 ; EXT Repeat Fill
#_15CBBE: db $50, $01 ; Repeat Fill bytes
#_15CBC0: db $22 ; Byte Fill
#_15CBC1: db $E0
#_15CBC2: db $83 ; Repeat Fill
#_15CBC3: db $7C, $01 ; Repeat Fill bytes
#_15CBC5: db $17 ; Direct Copy
#_15CBC6: db $0F, $00, $13, $0F, $0F, $00, $07, $03
#_15CBCE: db $0C, $07, $1E, $0B, $37, $19, $27, $19
#_15CBD6: db $0F, $1F, $0F, $07, $0F, $1F, $3B, $39
#_15CBDE: db $83 ; Repeat Fill
#_15CBDF: db $AA, $00 ; Repeat Fill bytes
#_15CBE1: db $14 ; Direct Copy
#_15CBE2: db $F8, $00, $F4, $D8, $3A, $EC, $7E, $D4
#_15CBEA: db $EE, $98, $E4, $98, $00, $80, $F8, $FC
#_15CBF2: db $FE, $FE, $DE, $9C, $03
#_15CBF7: db $85 ; Repeat Fill
#_15CBF8: db $65, $03 ; Repeat Fill bytes
#_15CBFA: db $08 ; Direct Copy
#_15CBFB: db $07, $2E, $1F, $27, $1F, $2F, $1E, $1E
#_15CC03: db $0F
#_15CC04: db $83 ; Repeat Fill
#_15CC05: db $D2, $00 ; Repeat Fill bytes
#_15CC07: db $22 ; Byte Fill
#_15CC08: db $3F
#_15CC09: db $14 ; Direct Copy
#_15CC0A: db $1F, $C0, $00, $E0, $C0, $70, $E0, $38
#_15CC12: db $E0, $74, $F8, $E4, $F8, $F4, $78, $78
#_15CC1A: db $B0, $C0, $E0, $F0, $F8
#_15CC1F: db $22 ; Byte Fill
#_15CC20: db $FC
#_15CC21: db $18 ; Direct Copy
#_15CC22: db $F8, $0E, $00, $1F, $0E, $3F, $1F, $7F
#_15CC2A: db $32, $FE, $63, $FE, $67, $7C, $3F, $7E
#_15CC32: db $0F, $0E, $1F, $3F, $7F, $F3, $E7, $7F
#_15CC3A: db $7F
#_15CC3B: db $23 ; Byte Fill
#_15CC3C: db $00
#_15CC3D: db $43 ; Word Fill
#_15CC3E: db $80, $00 ; Word Fill
#_15CC40: db $45 ; Word Fill
#_15CC41: db $40, $80 ; Word Fill
#_15CC43: db $00 ; Direct Copy
#_15CC44: db $C0
#_15CC45: db $22 ; Byte Fill
#_15CC46: db $00
#_15CC47: db $01 ; Direct Copy
#_15CC48: db $80, $80
#_15CC4A: db $23 ; Byte Fill
#_15CC4B: db $C0
#_15CC4C: db $0F ; Direct Copy
#_15CC4D: db $07, $00, $0F, $07, $1F, $0F, $3F, $19
#_15CC55: db $7F, $31, $7F, $33, $3E, $1F, $3F, $07
#_15CC5D: db $83 ; Repeat Fill
#_15CC5E: db $D3, $00 ; Repeat Fill bytes
#_15CC60: db $03 ; Direct Copy
#_15CC61: db $79, $73, $3F, $3F
#_15CC65: db $83 ; Repeat Fill
#_15CC66: db $AA, $00 ; Repeat Fill bytes
#_15CC68: db $03 ; Direct Copy
#_15CC69: db $C0, $80, $C0, $00
#_15CC6D: db $45 ; Word Fill
#_15CC6E: db $20, $C0 ; Word Fill
#_15CC70: db $05 ; Direct Copy
#_15CC71: db $40, $80, $00, $80, $C0, $C0
#_15CC77: db $22 ; Byte Fill
#_15CC78: db $E0
#_15CC79: db $00 ; Direct Copy
#_15CC7A: db $C0
#_15CC7B: db $83 ; Repeat Fill
#_15CC7C: db $C2, $00 ; Repeat Fill bytes
#_15CC7E: db $E0, $2B ; EXT Direct Copy
#_15CC80: db $0F, $03, $3C, $0C, $78, $08, $F8, $18
#_15CC88: db $F8, $08, $FC, $0C, $00, $03, $0C, $33
#_15CC90: db $57, $A7, $97, $93, $00, $00, $C0, $00
#_15CC98: db $F0, $C0, $7C, $30, $FE, $10, $4F, $08
#_15CCA0: db $1F, $00, $0F, $00, $00, $C0, $30, $8C
#_15CCA8: db $0A, $B5, $E9, $F9
#_15CCAC: db $25 ; Byte Fill
#_15CCAD: db $00
#_15CCAE: db $01 ; Direct Copy
#_15CCAF: db $60, $00
#_15CCB1: db $43 ; Word Fill
#_15CCB2: db $B0, $60 ; Word Fill
#_15CCB4: db $03 ; Direct Copy
#_15CCB5: db $F7, $40, $7F, $15
#_15CCB9: db $22 ; Byte Fill
#_15CCBA: db $00
#_15CCBB: db $04 ; Direct Copy
#_15CCBC: db $60, $F0, $F0, $F7, $7F
#_15CCC1: db $25 ; Byte Fill
#_15CCC2: db $00
#_15CCC3: db $01 ; Direct Copy
#_15CCC4: db $06, $00
#_15CCC6: db $43 ; Word Fill
#_15CCC7: db $0D, $06 ; Word Fill
#_15CCC9: db $03 ; Direct Copy
#_15CCCA: db $EF, $02, $FE, $A8
#_15CCCE: db $22 ; Byte Fill
#_15CCCF: db $00
#_15CCD0: db $04 ; Direct Copy
#_15CCD1: db $06, $0F, $0F, $EF, $FE
#_15CCD6: db $E4, $2F ; EXT Byte Fill
#_15CCD8: db $00
#_15CCD9: db $07 ; Direct Copy
#_15CCDA: db $7C, $3F, $3F, $00, $05, $01, $03, $00
#_15CCE2: db $43 ; Word Fill
#_15CCE3: db $03, $01 ; Word Fill
#_15CCE5: db $00 ; Direct Copy
#_15CCE6: db $01
#_15CCE7: db $22 ; Byte Fill
#_15CCE8: db $00
#_15CCE9: db $02 ; Direct Copy
#_15CCEA: db $7F, $3F, $06
#_15CCED: db $22 ; Byte Fill
#_15CCEE: db $03
#_15CCEF: db $84 ; Repeat Fill
#_15CCF0: db $E6, $02 ; Repeat Fill bytes
#_15CCF2: db $06 ; Direct Copy
#_15CCF3: db $7C, $FF, $AA, $EF, $DA, $DD, $38
#_15CCFA: db $8D ; Repeat Fill
#_15CCFB: db $F2, $02 ; Repeat Fill bytes
#_15CCFD: db $E0, $53 ; EXT Direct Copy
#_15CCFF: db $2F, $15, $2E, $1B, $1F, $01, $0F, $00
#_15CD07: db $0E, $02, $0D, $04, $05, $00, $03, $00
#_15CD0F: db $3D, $3F, $1B, $0B, $0D, $0B, $06, $03
#_15CD17: db $F4, $A8, $74, $D8, $F8, $80, $F0, $00
#_15CD1F: db $70, $40, $B0, $20, $A0, $00, $C0, $00
#_15CD27: db $BC, $FC, $D8, $D0, $B0, $D0, $60, $C0
#_15CD2F: db $1C, $07, $1F, $0F, $0F, $06, $0F, $01
#_15CD37: db $1C, $0F, $37, $1C, $19, $0F, $0F, $00
#_15CD3F: db $1F, $1F, $0F, $0F, $1F, $3F, $1F, $0F
#_15CD47: db $78, $D0, $70, $80, $B8, $F0, $38, $F0
#_15CD4F: db $70, $E0, $E0, $00
#_15CD53: db $83 ; Repeat Fill
#_15CD54: db $34, $02 ; Repeat Fill bytes
#_15CD56: db $04 ; Direct Copy
#_15CD57: db $F8, $F0, $F8, $F8, $F0
#_15CD5C: db $83 ; Repeat Fill
#_15CD5D: db $3D, $02 ; Repeat Fill bytes
#_15CD5F: db $E0, $23 ; EXT Direct Copy
#_15CD61: db $0E, $7F, $1C, $7F, $1E, $4F, $07, $7E
#_15CD69: db $0F, $3F, $03, $1B, $02, $0E, $00, $5F
#_15CD71: db $7F, $4F, $7F, $77, $27, $1D, $0E, $F0
#_15CD79: db $00, $F0, $E0, $8A, $F0, $6D, $F2, $F5
#_15CD81: db $9A, $9F, $0E, $0E
#_15CD85: db $22 ; Byte Fill
#_15CD86: db $00
#_15CD87: db $E0, $72 ; EXT Direct Copy
#_15CD89: db $F0, $F0, $FA, $FF, $FF, $9F, $0E, $00
#_15CD91: db $3F, $07, $1F, $0E, $3F, $0E, $27, $03
#_15CD99: db $3E, $07, $1F, $01, $0D, $01, $07, $00
#_15CDA1: db $2F, $1F, $27, $3F, $3B, $13, $0E, $07
#_15CDA9: db $B8, $00, $7C, $38, $6E, $3C, $DE, $74
#_15CDB1: db $9F, $F2, $35, $E2, $E2, $C0, $C0, $00
#_15CDB9: db $B8, $7C, $7E, $FE, $FF, $F7, $E2, $C0
#_15CDC1: db $FF, $1F, $77, $35, $3A, $10, $3B, $1A
#_15CDC9: db $1F, $08, $1F, $01, $1F, $00, $08, $00
#_15CDD1: db $A0, $4A, $2F, $24, $10, $10, $17, $08
#_15CDD9: db $1F, $18, $E6, $A4, $54, $00, $9C, $18
#_15CDE1: db $F8, $10, $F8, $80, $F8, $00, $10, $00
#_15CDE9: db $E5, $5A, $FC, $64, $08, $08, $E8, $10
#_15CDF1: db $6E, $3D, $6E, $3B, $3E, $17, $38, $0F
#_15CDF9: db $0F, $07, $07
#_15CDFC: db $24 ; Byte Fill
#_15CDFD: db $00
#_15CDFE: db $10 ; Direct Copy
#_15CDFF: db $7F, $7F, $3F, $38, $0F, $07, $00, $00
#_15CE07: db $76, $BC, $76, $DC, $3C, $E8, $F8, $E0
#_15CE0F: db $E0
#_15CE10: db $26 ; Byte Fill
#_15CE11: db $00
#_15CE12: db $04 ; Direct Copy
#_15CE13: db $FE, $FE, $3C, $F8, $E0
#_15CE18: db $22 ; Byte Fill
#_15CE19: db $00
#_15CE1A: db $FF ; End of GFX 8F

;===================================================================================================

GFX_90:
#_15CE1B: db $01 ; Direct Copy
#_15CE1C: db $02, $00
#_15CE1E: db $43 ; Word Fill
#_15CE1F: db $05, $02 ; Word Fill
#_15CE21: db $0C ; Direct Copy
#_15CE22: db $0D, $06, $0C, $07, $0E, $03, $12, $01
#_15CE2A: db $1F, $01, $02, $07, $07
#_15CE2F: db $22 ; Byte Fill
#_15CE30: db $0F
#_15CE31: db $01 ; Direct Copy
#_15CE32: db $1F, $13
#_15CE34: db $23 ; Byte Fill
#_15CE35: db $00
#_15CE36: db $13 ; Direct Copy
#_15CE37: db $07, $00, $0F, $07, $9C, $0F, $F9, $0E
#_15CE3F: db $3B, $EC, $7B, $EC, $00, $00, $07, $0F
#_15CE47: db $9F, $FE, $FC, $FC
#_15CE4B: db $23 ; Byte Fill
#_15CE4C: db $00
#_15CE4D: db $15 ; Direct Copy
#_15CE4E: db $E0, $00, $F0, $E0, $39, $F0, $9F, $70
#_15CE56: db $DC, $37, $DE, $37, $00, $00, $E0, $F0
#_15CE5E: db $F9, $7F, $3F, $3F, $40, $00
#_15CE64: db $43 ; Word Fill
#_15CE65: db $A0, $40 ; Word Fill
#_15CE67: db $02 ; Direct Copy
#_15CE68: db $B0, $60, $30
#_15CE6B: db $44 ; Word Fill
#_15CE6C: db $E0, $70 ; Word Fill
#_15CE6E: db $04 ; Direct Copy
#_15CE6F: db $F0, $C0, $40, $E0, $E0
#_15CE74: db $24 ; Byte Fill
#_15CE75: db $F0
#_15CE76: db $02 ; Direct Copy
#_15CE77: db $00, $00, $20
#_15CE7A: db $22 ; Byte Fill
#_15CE7B: db $60
#_15CE7C: db $0E ; Direct Copy
#_15CE7D: db $00, $11, $90, $B3, $D8, $FF, $A1, $FF
#_15CE85: db $81, $FF, $00, $60, $60, $11, $B3
#_15CE8C: db $22 ; Byte Fill
#_15CE8D: db $FF
#_15CE8E: db $83 ; Repeat Fill
#_15CE8F: db $60, $00 ; Repeat Fill bytes
#_15CE91: db $E0, $37 ; EXT Direct Copy
#_15CE93: db $20, $E0, $40, $C0, $C4, $CC, $8C, $8C
#_15CE9B: db $00, $01, $01, $37, $00, $60, $E0, $C0
#_15CEA3: db $CC, $8C, $01, $37, $00, $00, $60, $64
#_15CEAB: db $44, $6D, $20, $3F, $29, $3F, $00, $30
#_15CEB3: db $01, $63, $01, $07, $00, $64, $6D, $3F
#_15CEBB: db $3F, $30, $63, $07, $10, $30, $10, $F0
#_15CEC3: db $60, $E0, $80, $80, $0C, $0C, $08, $0C
#_15CECB: db $83 ; Repeat Fill
#_15CECC: db $84, $00 ; Repeat Fill bytes
#_15CECE: db $08 ; Direct Copy
#_15CECF: db $30, $F0, $E0, $80, $0C, $0C, $01, $37
#_15CED7: db $08
#_15CED8: db $43 ; Word Fill
#_15CED9: db $0C, $00 ; Word Fill
#_15CEDB: db $02 ; Direct Copy
#_15CEDC: db $1A, $00, $01
#_15CEDF: db $24 ; Byte Fill
#_15CEE0: db $00
#_15CEE1: db $E0, $26 ; EXT Direct Copy
#_15CEE3: db $03, $00, $05, $0C, $0C, $1A, $01, $00
#_15CEEB: db $00, $03, $05, $00, $60, $02, $82, $40
#_15CEF3: db $40, $88, $88, $0C, $0C, $40, $C0, $80
#_15CEFB: db $9B, $49, $DB, $60, $82, $40, $88, $0C
#_15CF03: db $C0, $9B, $DB, $1C, $00, $22, $1C
#_15CF0A: db $43 ; Word Fill
#_15CF0B: db $4D, $32 ; Word Fill
#_15CF0D: db $0C ; Direct Copy
#_15CF0E: db $41, $3E, $22, $1C, $3E, $00, $22, $00
#_15CF16: db $1C, $3E, $73, $73, $7F
#_15CF1B: db $22 ; Byte Fill
#_15CF1C: db $3E
#_15CF1D: db $03 ; Direct Copy
#_15CF1E: db $1C, $00, $2E, $1C
#_15CF22: db $43 ; Word Fill
#_15CF23: db $53, $3E ; Word Fill
#_15CF25: db $00 ; Direct Copy
#_15CF26: db $4D
#_15CF27: db $84 ; Repeat Fill
#_15CF28: db $F9, $00 ; Repeat Fill bytes
#_15CF2A: db $11 ; Direct Copy
#_15CF2B: db $3E, $1C, $1C, $2E, $5F, $5F, $4D, $22
#_15CF33: db $3E, $22, $00, $00, $01, $00, $03, $00
#_15CF3B: db $02, $01
#_15CF3D: db $45 ; Word Fill
#_15CF3E: db $14, $03 ; Word Fill
#_15CF40: db $01 ; Direct Copy
#_15CF41: db $2E, $11
#_15CF43: db $22 ; Byte Fill
#_15CF44: db $00
#_15CF45: db $04 ; Direct Copy
#_15CF46: db $01, $03, $03, $07, $17
#_15CF4B: db $23 ; Byte Fill
#_15CF4C: db $00
#_15CF4D: db $43 ; Word Fill
#_15CF4E: db $80, $00 ; Word Fill
#_15CF50: db $45 ; Word Fill
#_15CF51: db $50, $80 ; Word Fill
#_15CF53: db $01 ; Direct Copy
#_15CF54: db $E8, $10
#_15CF56: db $23 ; Byte Fill
#_15CF57: db $00
#_15CF58: db $03 ; Direct Copy
#_15CF59: db $80, $80, $C0, $D0
#_15CF5D: db $E4, $2F ; EXT Byte Fill
#_15CF5F: db $00
#_15CF60: db $E0, $5F ; EXT Direct Copy
#_15CF62: db $1F, $01, $3F, $00, $5F, $00, $BF, $20
#_15CF6A: db $AD, $00, $ED, $40, $ED, $00, $6D, $00
#_15CF72: db $13, $33, $73, $D3, $F3, $B3, $F3, $73
#_15CF7A: db $F9, $EE, $FC, $DF, $FF, $3E, $DF, $7E
#_15CF82: db $DE, $F6, $D7, $F3, $8B, $7B, $CE, $3F
#_15CF8A: db $FE, $FF, $FE, $FE, $F7, $FB, $FF, $FF
#_15CF92: db $9F, $77, $3F, $FB, $FF, $7C, $FB, $7E
#_15CF9A: db $7B, $6F, $EB, $CF, $DF, $C0, $70, $C0
#_15CFA2: db $7F, $FF, $7F, $7F, $EF, $DF, $FF, $FF
#_15CFAA: db $F0, $C0, $FC, $00, $F2, $30, $AD, $60
#_15CFB2: db $A5, $60, $CF, $3E, $FB, $04, $06, $00
#_15CFBA: db $F0, $FC, $CE, $93, $9B, $C1, $FB, $FE
#_15CFC2: db $43 ; Word Fill
#_15CFC3: db $43, $CF ; Word Fill
#_15CFC5: db $E0, $4F ; EXT Direct Copy
#_15CFC7: db $20, $2F, $48, $FF, $3E, $FF, $0D, $3F
#_15CFCF: db $0B, $7F, $05, $9D, $CF, $CF, $2F, $FF
#_15CFD7: db $FF, $3F, $7F, $9D, $92, $FE, $24, $FC
#_15CFDF: db $74, $FE, $42, $FE, $8C, $FC, $98, $F8
#_15CFE7: db $80, $AC, $3C, $7F, $FE, $FC, $FE, $FE
#_15CFEF: db $FC, $F8, $AC, $7F, $08, $0B, $10, $3F
#_15CFF7: db $03, $3F, $01, $0F, $03, $1F, $00, $27
#_15CFFF: db $01, $01, $00, $00, $0B, $3F, $3F, $0F
#_15D007: db $1F, $27, $01, $00, $92, $FE, $34, $FC
#_15D00F: db $34, $FE, $A2, $FE, $C2, $CE, $84, $9C
#_15D017: db $23 ; Byte Fill
#_15D018: db $00
#_15D019: db $83 ; Repeat Fill
#_15D01A: db $08, $02 ; Repeat Fill bytes
#_15D01C: db $0D ; Direct Copy
#_15D01D: db $CE, $9C, $00, $00, $08, $1A, $01, $19
#_15D025: db $00, $01, $00, $0C, $00, $11
#_15D02B: db $25 ; Byte Fill
#_15D02C: db $00
#_15D02D: db $04 ; Direct Copy
#_15D02E: db $1A, $19, $01, $0C, $11
#_15D033: db $22 ; Byte Fill
#_15D034: db $00
#_15D035: db $0B ; Direct Copy
#_15D036: db $92, $92, $0A, $0B, $01, $07, $61, $E7
#_15D03E: db $42, $CE, $80, $80
#_15D042: db $23 ; Byte Fill
#_15D043: db $00
#_15D044: db $06 ; Direct Copy
#_15D045: db $92, $0B, $07, $E7, $CE, $80, $00
#_15D04C: db $44 ; Word Fill
#_15D04D: db $00, $14 ; Word Fill
#_15D04F: db $13 ; Direct Copy
#_15D050: db $3E, $08, $5D, $08, $7F, $00, $49, $00
#_15D058: db $7F, $1C, $3E, $00, $1C, $1C, $36, $77
#_15D060: db $5D, $7F, $63, $3E
#_15D064: db $43 ; Word Fill
#_15D065: db $1C, $08 ; Word Fill
#_15D067: db $8B ; Repeat Fill
#_15D068: db $74, $02 ; Repeat Fill bytes
#_15D06A: db $01 ; Direct Copy
#_15D06B: db $14, $14
#_15D06D: db $85 ; Repeat Fill
#_15D06E: db $82, $02 ; Repeat Fill bytes
#_15D070: db $05 ; Direct Copy
#_15D071: db $42, $3D, $48, $37, $54, $23
#_15D077: db $43 ; Word Fill
#_15D078: db $22, $01 ; Word Fill
#_15D07A: db $02 ; Direct Copy
#_15D07B: db $01, $00, $01
#_15D07E: db $22 ; Byte Fill
#_15D07F: db $00
#_15D080: db $04 ; Direct Copy
#_15D081: db $3F, $37, $23, $01, $01
#_15D086: db $22 ; Byte Fill
#_15D087: db $00
#_15D088: db $08 ; Direct Copy
#_15D089: db $84, $78, $24, $D8, $54, $88, $88, $00
#_15D091: db $88
#_15D092: db $26 ; Byte Fill
#_15D093: db $00
#_15D094: db $02 ; Direct Copy
#_15D095: db $F8, $D8, $88
#_15D098: db $E4, $34 ; EXT Byte Fill
#_15D09A: db $00
#_15D09B: db $43 ; Word Fill
#_15D09C: db $6D, $00 ; Word Fill
#_15D09E: db $00 ; Direct Copy
#_15D09F: db $ED
#_15D0A0: db $43 ; Word Fill
#_15D0A1: db $40, $FF ; Word Fill
#_15D0A3: db $05 ; Direct Copy
#_15D0A4: db $73, $FF, $1E, $BF, $61, $DE
#_15D0AA: db $22 ; Byte Fill
#_15D0AB: db $73
#_15D0AC: db $1A ; Direct Copy
#_15D0AD: db $B3, $B3, $8C, $E1, $FF, $FF, $F9, $1E
#_15D0B5: db $FB, $0C, $FF, $94, $FF, $98, $F7, $9F
#_15D0BD: db $F3, $5F, $38, $CF, $FD, $C6, $FF, $FF
#_15D0C5: db $7D, $7F, $7F
#_15D0C8: db $22 ; Byte Fill
#_15D0C9: db $FF
#_15D0CA: db $E0, $2F ; EXT Direct Copy
#_15D0CC: db $B7, $47, $EF, $08, $DF, $90, $FF, $B4
#_15D0D4: db $FB, $B0, $FB, $B3, $FF, $34, $FE, $30
#_15D0DC: db $E8, $D7, $EF, $CB, $CF, $CC, $CB, $CF
#_15D0E4: db $FA, $F8, $FD, $8C, $FF, $86, $FF, $96
#_15D0EC: db $EF, $86, $6F, $66, $FF, $96, $3F, $06
#_15D0F4: db $06, $73, $79, $69, $79, $99, $69, $F9
#_15D0FC: db $23 ; Byte Fill
#_15D0FD: db $00
#_15D0FE: db $02 ; Direct Copy
#_15D0FF: db $01, $00, $07
#_15D102: db $44 ; Word Fill
#_15D103: db $00, $0F ; Word Fill
#_15D105: db $02 ; Direct Copy
#_15D106: db $1F, $00, $1F
#_15D109: db $22 ; Byte Fill
#_15D10A: db $00
#_15D10B: db $08 ; Direct Copy
#_15D10C: db $01, $07, $0F, $0F, $1F, $1F, $00, $00
#_15D114: db $3F
#_15D115: db $4C ; Word Fill
#_15D116: db $00, $FF ; Word Fill
#_15D118: db $01 ; Direct Copy
#_15D119: db $00, $3F
#_15D11B: db $25 ; Byte Fill
#_15D11C: db $FF
#_15D11D: db $24 ; Byte Fill
#_15D11E: db $00
#_15D11F: db $12 ; Direct Copy
#_15D120: db $10, $00, $28, $00, $00, $04, $10, $18
#_15D128: db $64, $F4, $0B, $00, $00, $10, $28, $00
#_15D130: db $10, $64, $0B
#_15D133: db $24 ; Byte Fill
#_15D134: db $00
#_15D135: db $13 ; Direct Copy
#_15D136: db $40, $00, $20, $00, $0C, $0C, $50, $50
#_15D13E: db $A3, $A3, $4C, $00, $00, $40, $20, $0C
#_15D146: db $50, $A3, $4C, $01
#_15D14A: db $83 ; Repeat Fill
#_15D14B: db $20, $01 ; Repeat Fill bytes
#_15D14D: db $12 ; Direct Copy
#_15D14E: db $83, $01, $83, $03, $C7, $42, $F7, $64
#_15D156: db $FB, $7E, $F9, $00, $01, $83, $83, $C7
#_15D15E: db $F6, $F8, $F8
#_15D161: db $24 ; Byte Fill
#_15D162: db $00
#_15D163: db $E0, $44 ; EXT Direct Copy
#_15D165: db $82, $00, $82, $80, $C6, $84, $DE, $5C
#_15D16D: db $BE, $FC, $3E, $00, $00, $82, $82, $C6
#_15D175: db $DE, $3E, $3E, $38, $00, $44, $00, $7A
#_15D17D: db $00, $A5, $00, $96, $02, $9F, $01, $DF
#_15D185: db $4C, $EE, $6E, $38, $7C, $7E, $E7, $F5
#_15D18D: db $FA, $B1, $91, $1C, $00, $22, $00, $5E
#_15D195: db $00, $A5, $00, $69, $40, $F9, $80, $FB
#_15D19D: db $32, $77, $76, $1C, $3E, $7E, $E7, $AF
#_15D1A5: db $5F, $8D, $89, $00, $00
#_15D1AA: db $83 ; Repeat Fill
#_15D1AB: db $F0, $03 ; Repeat Fill bytes
#_15D1AD: db $13 ; Direct Copy
#_15D1AE: db $3A, $00, $05, $00, $17, $01, $3F, $11
#_15D1B6: db $6F, $28, $00, $38, $7C, $3E, $07, $16
#_15D1BE: db $2A, $55, $00, $00
#_15D1C2: db $83 ; Repeat Fill
#_15D1C3: db $08, $04 ; Repeat Fill bytes
#_15D1C5: db $11 ; Direct Copy
#_15D1C6: db $5C, $00, $A0, $00, $E8, $80, $FC, $88
#_15D1CE: db $F6, $14, $00, $1C, $3E, $7C, $E0, $68
#_15D1D6: db $54, $AA
#_15D1D8: db $E4, $2F ; EXT Byte Fill
#_15D1DA: db $00
#_15D1DB: db $0F ; Direct Copy
#_15D1DC: db $ED, $33, $FF, $12, $FF, $40, $CF, $78
#_15D1E4: db $FF, $03, $38, $07, $07, $03, $03, $00
#_15D1EC: db $24 ; Byte Fill
#_15D1ED: db $FF
#_15D1EE: db $12 ; Direct Copy
#_15D1EF: db $3F, $07, $03, $FF, $00, $FF, $27, $DC
#_15D1F7: db $37, $FC, $37, $CE, $FB, $0F, $F9, $FF
#_15D1FF: db $F0, $F9, $00
#_15D202: db $26 ; Byte Fill
#_15D203: db $FF
#_15D204: db $E0, $30 ; EXT Direct Copy
#_15D206: db $F9, $FF, $31, $FB, $B0, $7F, $B6, $7F
#_15D20E: db $9A, $7F, $CC, $7F, $E7, $FF, $E6, $FF
#_15D216: db $00, $CE, $CF, $C9, $E5, $F3, $F8, $F9
#_15D21E: db $FF, $7F, $46, $EF, $86, $FF, $B6, $FF
#_15D226: db $AC, $FE, $98, $FC, $F0, $D8, $10, $F8
#_15D22E: db $00, $B9, $79, $49, $53, $66, $0C, $E8
#_15D236: db $F8
#_15D237: db $43 ; Word Fill
#_15D238: db $1F, $00 ; Word Fill
#_15D23A: db $43 ; Word Fill
#_15D23B: db $0F, $00 ; Word Fill
#_15D23D: db $02 ; Direct Copy
#_15D23E: db $07, $00, $01
#_15D241: db $24 ; Byte Fill
#_15D242: db $00
#_15D243: db $06 ; Direct Copy
#_15D244: db $1F, $1F, $0F, $0F, $07, $01, $00
#_15D24B: db $4C ; Word Fill
#_15D24C: db $00, $FF ; Word Fill
#_15D24E: db $00 ; Direct Copy
#_15D24F: db $3F
#_15D250: db $22 ; Byte Fill
#_15D251: db $00
#_15D252: db $25 ; Byte Fill
#_15D253: db $FF
#_15D254: db $07 ; Direct Copy
#_15D255: db $3F, $00, $13, $E4, $27, $10, $00, $27
#_15D25D: db $22 ; Byte Fill
#_15D25E: db $00
#_15D25F: db $02 ; Direct Copy
#_15D260: db $04, $00, $02
#_15D263: db $23 ; Byte Fill
#_15D264: db $00
#_15D265: db $13 ; Direct Copy
#_15D266: db $E4, $10, $27, $00, $04, $02, $00, $00
#_15D26E: db $AE, $11, $32, $8C, $80, $32, $00, $80
#_15D276: db $00, $30, $00, $02
#_15D27A: db $23 ; Byte Fill
#_15D27B: db $00
#_15D27C: db $0F ; Direct Copy
#_15D27D: db $11, $8C, $32, $80, $30, $02, $00, $00
#_15D285: db $3A, $FD, $14, $BF, $02, $97, $02, $17
#_15D28D: db $43 ; Word Fill
#_15D28E: db $01, $03 ; Word Fill
#_15D290: db $13 ; Direct Copy
#_15D291: db $00, $01, $01, $00, $F8, $BC, $96, $16
#_15D299: db $03, $03, $01, $00, $B8, $7E, $50, $FA
#_15D2A1: db $80, $D2, $80, $D0
#_15D2A5: db $43 ; Word Fill
#_15D2A6: db $00, $80 ; Word Fill
#_15D2A8: db $23 ; Byte Fill
#_15D2A9: db $00
#_15D2AA: db $03 ; Direct Copy
#_15D2AB: db $3E, $7A, $D2, $D0
#_15D2AF: db $83 ; Repeat Fill
#_15D2B0: db $62, $02 ; Repeat Fill bytes
#_15D2B2: db $E0, $5F ; EXT Direct Copy
#_15D2B4: db $FF, $78, $FF, $6D, $FB, $4B, $7C, $00
#_15D2BC: db $3F, $18, $3E, $0C, $7C, $00, $20, $00
#_15D2C4: db $85, $91, $B4, $7F, $27, $22, $5C, $20
#_15D2CC: db $FF, $1E, $FF, $B6, $DF, $D2, $3E, $00
#_15D2D4: db $FC, $18, $7C, $30, $3E, $00, $04, $00
#_15D2DC: db $A1, $89, $2D, $FE, $E4, $44, $3A, $04
#_15D2E4: db $46, $02, $67, $20, $77, $31, $3F, $1B
#_15D2EC: db $3C, $08, $1F, $08, $3E, $08, $7C, $00
#_15D2F4: db $7D, $5D, $4D, $24, $37, $17, $36, $5C
#_15D2FC: db $62, $40, $E6, $04, $EE, $8C, $FC, $D8
#_15D304: db $3C, $10, $F8, $10, $7C, $10, $3E, $00
#_15D30C: db $BE, $BA, $B2, $24, $EC, $E8, $6C, $3A
#_15D314: db $38 ; Byte Fill
#_15D315: db $00
#_15D316: db $16 ; Direct Copy
#_15D317: db $04, $00, $18, $00, $30, $00, $78, $00
#_15D31F: db $1E, $00, $0C, $00, $18, $00, $20, $04
#_15D327: db $18, $30, $78, $1E, $0C, $18, $20
#_15D32E: db $FF ; End of GFX 90

;===================================================================================================

GFX_91:
#_15D32F: db $09 ; Direct Copy
#_15D330: db $01, $00, $07, $01, $0F, $07, $1E, $0F
#_15D338: db $1C, $0F
#_15D33A: db $43 ; Word Fill
#_15D33B: db $3C, $1F ; Word Fill
#_15D33D: db $E0, $21 ; EXT Direct Copy
#_15D33F: db $7E, $0F, $01, $07, $0F, $1F, $1F, $3F
#_15D347: db $3F, $5F, $80, $00, $E0, $80, $F0, $E0
#_15D34F: db $18, $F0, $48, $B0, $EC, $18, $4C, $B8
#_15D357: db $1E, $F0, $80, $E0, $F0, $F8, $B8, $1C
#_15D35F: db $BC, $FA
#_15D361: db $27 ; Byte Fill
#_15D362: db $00
#_15D363: db $06 ; Direct Copy
#_15D364: db $E0, $00, $F8, $00, $9C, $00, $BE
#_15D36B: db $24 ; Byte Fill
#_15D36C: db $00
#_15D36D: db $03 ; Direct Copy
#_15D36E: db $E0, $D8, $7C, $E6
#_15D372: db $27 ; Byte Fill
#_15D373: db $00
#_15D374: db $06 ; Direct Copy
#_15D375: db $07, $00, $1F, $00, $39, $00, $7D
#_15D37C: db $24 ; Byte Fill
#_15D37D: db $00
#_15D37E: db $03 ; Direct Copy
#_15D37F: db $07, $1B, $3E, $67
#_15D383: db $25 ; Byte Fill
#_15D384: db $00
#_15D385: db $08 ; Direct Copy
#_15D386: db $20, $00, $58, $00, $D8, $00, $F6, $00
#_15D38E: db $B3
#_15D38F: db $23 ; Byte Fill
#_15D390: db $00
#_15D391: db $04 ; Direct Copy
#_15D392: db $20, $78, $B8, $BE, $EF
#_15D397: db $25 ; Byte Fill
#_15D398: db $00
#_15D399: db $08 ; Direct Copy
#_15D39A: db $04, $00, $1A, $00, $1B, $00, $6F, $00
#_15D3A2: db $CD
#_15D3A3: db $23 ; Byte Fill
#_15D3A4: db $00
#_15D3A5: db $08 ; Direct Copy
#_15D3A6: db $04, $1E, $1D, $7D, $F7, $03, $00, $0F
#_15D3AE: db $03
#_15D3AF: db $45 ; Word Fill
#_15D3B0: db $1E, $0F ; Word Fill
#_15D3B2: db $07 ; Direct Copy
#_15D3B3: db $DF, $0F, $FF, $07, $FF, $00, $03, $0F
#_15D3BB: db $22 ; Byte Fill
#_15D3BC: db $1F
#_15D3BD: db $1A ; Direct Copy
#_15D3BE: db $DF, $3F, $A7, $C0, $00, $30, $C0, $78
#_15D3C6: db $90, $38, $D0, $18, $F0, $3B, $F0, $FF
#_15D3CE: db $E0, $FF, $00, $C0, $F0, $98, $D8, $F8
#_15D3D6: db $FB, $FC, $E5
#_15D3D9: db $23 ; Byte Fill
#_15D3DA: db $00
#_15D3DB: db $03 ; Direct Copy
#_15D3DC: db $03, $00, $07, $03
#_15D3E0: db $43 ; Word Fill
#_15D3E1: db $0E, $07 ; Word Fill
#_15D3E3: db $02 ; Direct Copy
#_15D3E4: db $3F, $07, $7F
#_15D3E7: db $22 ; Byte Fill
#_15D3E8: db $00
#_15D3E9: db $05 ; Direct Copy
#_15D3EA: db $03, $07, $0F, $0F, $3F, $4F
#_15D3F0: db $23 ; Byte Fill
#_15D3F1: db $00
#_15D3F2: db $0A ; Direct Copy
#_15D3F3: db $C0, $00, $20, $C0, $50, $A0, $10, $E0
#_15D3FB: db $3C, $E0, $FE
#_15D3FE: db $22 ; Byte Fill
#_15D3FF: db $00
#_15D400: db $05 ; Direct Copy
#_15D401: db $C0, $E0, $B0, $F0, $FC, $F2
#_15D407: db $25 ; Byte Fill
#_15D408: db $00
#_15D409: db $08 ; Direct Copy
#_15D40A: db $01, $00, $03, $01, $06, $03, $0F, $03
#_15D412: db $1F
#_15D413: db $23 ; Byte Fill
#_15D414: db $00
#_15D415: db $04 ; Direct Copy
#_15D416: db $01, $03, $07, $0F, $17
#_15D41B: db $25 ; Byte Fill
#_15D41C: db $00
#_15D41D: db $08 ; Direct Copy
#_15D41E: db $80, $00, $40, $80, $20, $C0, $70, $C0
#_15D426: db $F8
#_15D427: db $23 ; Byte Fill
#_15D428: db $00
#_15D429: db $11 ; Direct Copy
#_15D42A: db $80, $C0, $E0, $F0, $E8, $00, $00, $18
#_15D432: db $00, $34, $18, $76, $18, $BD, $00, $5A
#_15D43A: db $00, $3C
#_15D43C: db $23 ; Byte Fill
#_15D43D: db $00
#_15D43E: db $05 ; Direct Copy
#_15D43F: db $18, $3C, $7E, $E7, $7E, $3C
#_15D445: db $22 ; Byte Fill
#_15D446: db $00
#_15D447: db $02 ; Direct Copy
#_15D448: db $18, $00, $3C
#_15D44B: db $44 ; Word Fill
#_15D44C: db $00, $7E ; Word Fill
#_15D44E: db $02 ; Direct Copy
#_15D44F: db $3C, $00, $18
#_15D452: db $23 ; Byte Fill
#_15D453: db $00
#_15D454: db $05 ; Direct Copy
#_15D455: db $18, $24, $5A, $5A, $24, $18
#_15D45B: db $26 ; Byte Fill
#_15D45C: db $00
#_15D45D: db $09 ; Direct Copy
#_15D45E: db $01, $00, $0F, $01, $17, $03, $17, $00
#_15D466: db $1F, $07
#_15D468: db $22 ; Byte Fill
#_15D469: db $00
#_15D46A: db $04 ; Direct Copy
#_15D46B: db $01, $0F, $1F, $1F, $18
#_15D470: db $27 ; Byte Fill
#_15D471: db $00
#_15D472: db $07 ; Direct Copy
#_15D473: db $C0, $00, $E0, $C0, $B0, $E0, $F0, $60
#_15D47B: db $23 ; Byte Fill
#_15D47C: db $00
#_15D47D: db $E0, $3A ; EXT Direct Copy
#_15D47F: db $C0, $E0, $F0, $F0, $FF, $0F, $FF, $07
#_15D487: db $7F, $03, $3F, $00, $1F, $00, $13, $08
#_15D48F: db $09, $04, $06, $00, $BF, $BF, $47, $2B
#_15D497: db $1C, $17, $0B, $06, $3F, $F0, $7F, $E0
#_15D49F: db $FE, $C0, $FC, $00, $F8, $00, $C8, $10
#_15D4A7: db $90, $20, $60, $00, $FD, $FD, $E2, $D4
#_15D4AF: db $38, $E8, $D0, $60, $FB, $00, $F3, $00
#_15D4B7: db $C6, $00, $49
#_15D4BA: db $84 ; Repeat Fill
#_15D4BB: db $3F, $01 ; Repeat Fill bytes
#_15D4BD: db $00 ; Direct Copy
#_15D4BE: db $0F
#_15D4BF: db $22 ; Byte Fill
#_15D4C0: db $00
#_15D4C1: db $14 ; Direct Copy
#_15D4C2: db $E7, $4F, $BF, $7F, $7F, $3F, $0F, $00
#_15D4CA: db $DF, $00, $CF, $00, $E3, $00, $D2, $00
#_15D4D2: db $FE, $00, $7C, $00, $F0
#_15D4D7: db $22 ; Byte Fill
#_15D4D8: db $00
#_15D4D9: db $14 ; Direct Copy
#_15D4DA: db $E7, $F2, $7D, $BE, $7E, $BC, $F0, $00
#_15D4E2: db $F7, $00, $E6, $00, $ED, $00, $9C, $00
#_15D4EA: db $7E, $00, $3E, $00, $0F
#_15D4EF: db $22 ; Byte Fill
#_15D4F0: db $00
#_15D4F1: db $03 ; Direct Copy
#_15D4F2: db $CF, $DF, $DE, $FF
#_15D4F6: db $83 ; Repeat Fill
#_15D4F7: db $C4, $01 ; Repeat Fill bytes
#_15D4F9: db $06 ; Direct Copy
#_15D4FA: db $EF, $00, $E7, $00, $F7, $00, $B9
#_15D501: db $85 ; Repeat Fill
#_15D502: db $CF, $01 ; Repeat Fill bytes
#_15D504: db $22 ; Byte Fill
#_15D505: db $00
#_15D506: db $E0, $44 ; EXT Direct Copy
#_15D508: db $F3, $7B, $3B, $7F, $7E, $FC, $F0, $00
#_15D510: db $BF, $00, $9F, $00, $D9, $04, $F9, $06
#_15D518: db $F6, $00, $65, $00, $23, $00, $1C, $00
#_15D520: db $D0, $EF, $FB, $39, $EF, $5E, $3F, $1C
#_15D528: db $FD, $00, $F9, $00, $9B, $20, $9F, $60
#_15D530: db $EF, $00, $E6, $00, $C4, $00, $B8, $00
#_15D538: db $0B, $F7, $DF, $9C, $77, $3A, $7C, $B8
#_15D540: db $2F, $00, $27, $00, $35, $02, $6F, $00
#_15D548: db $3A, $00, $13, $00, $0D
#_15D54D: db $22 ; Byte Fill
#_15D54E: db $00
#_15D54F: db $14 ; Direct Copy
#_15D550: db $38, $3F, $3D, $5F, $37, $1E, $0D, $00
#_15D558: db $F4, $00, $E4, $00, $AC, $40, $F6, $00
#_15D560: db $5C, $00, $C8, $00, $B0
#_15D565: db $22 ; Byte Fill
#_15D566: db $00
#_15D567: db $12 ; Direct Copy
#_15D568: db $1C, $FC, $BC, $FA, $EC, $78, $B0, $00
#_15D570: db $17, $00, $0B, $00, $16, $01, $0A, $00
#_15D578: db $0B, $00, $04
#_15D57B: db $24 ; Byte Fill
#_15D57C: db $00
#_15D57D: db $12 ; Direct Copy
#_15D57E: db $1C, $0F, $1E, $0F, $0F, $04, $00, $00
#_15D586: db $E8, $00, $D0, $00, $68, $80, $50, $00
#_15D58E: db $D0, $00, $20
#_15D591: db $24 ; Byte Fill
#_15D592: db $00
#_15D593: db $1F ; Direct Copy
#_15D594: db $38, $F0, $78, $F0, $F0, $20, $00, $00
#_15D59C: db $2C, $00, $7E, $2C, $7F, $06, $BF, $1A
#_15D5A4: db $7E, $18, $1F, $02, $16, $00, $08, $00
#_15D5AC: db $2C, $5E, $7F, $E7, $66, $1D, $1E, $08
#_15D5B4: db $84 ; Repeat Fill
#_15D5B5: db $38, $01 ; Repeat Fill bytes
#_15D5B7: db $00 ; Direct Copy
#_15D5B8: db $18
#_15D5B9: db $43 ; Word Fill
#_15D5BA: db $66, $24 ; Word Fill
#_15D5BC: db $02 ; Direct Copy
#_15D5BD: db $3C, $18, $18
#_15D5C0: db $23 ; Byte Fill
#_15D5C1: db $00
#_15D5C2: db $86 ; Repeat Fill
#_15D5C3: db $49, $01 ; Repeat Fill bytes
#_15D5C5: db $43 ; Word Fill
#_15D5C6: db $2C, $04 ; Word Fill
#_15D5C8: db $06 ; Direct Copy
#_15D5C9: db $1F, $07, $07, $00, $04, $00, $03
#_15D5D0: db $24 ; Byte Fill
#_15D5D1: db $00
#_15D5D2: db $10 ; Direct Copy
#_15D5D3: db $3B, $3B, $18, $07, $07, $03, $00, $00
#_15D5DB: db $F8, $B0, $F0, $A0, $F0, $80, $90, $00
#_15D5E3: db $E0
#_15D5E4: db $26 ; Byte Fill
#_15D5E5: db $00
#_15D5E6: db $04 ; Direct Copy
#_15D5E7: db $78, $70, $70, $F0, $E0
#_15D5EC: db $22 ; Byte Fill
#_15D5ED: db $00
#_15D5EE: db $01 ; Direct Copy
#_15D5EF: db $02, $00
#_15D5F1: db $83 ; Repeat Fill
#_15D5F2: db $90, $00 ; Repeat Fill bytes
#_15D5F4: db $E0, $29 ; EXT Direct Copy
#_15D5F6: db $1F, $07, $3C, $04, $3C, $1C, $F1, $30
#_15D5FE: db $73, $30, $00, $03, $0C, $18, $3B, $23
#_15D606: db $4E, $4C, $40, $00, $C0, $00, $F0, $C0
#_15D60E: db $F8, $E0, $3C, $20, $3C, $38, $8F, $0C
#_15D616: db $CE, $0C, $00, $C0, $30, $18, $DC, $C4
#_15D61E: db $72, $32
#_15D620: db $23 ; Byte Fill
#_15D621: db $00
#_15D622: db $83 ; Repeat Fill
#_15D623: db $00, $03 ; Repeat Fill bytes
#_15D625: db $07 ; Direct Copy
#_15D626: db $07, $03, $0E, $06, $3D, $0C, $1B, $09
#_15D62E: db $22 ; Byte Fill
#_15D62F: db $00
#_15D630: db $04 ; Direct Copy
#_15D631: db $03, $04, $09, $12, $15
#_15D636: db $23 ; Byte Fill
#_15D637: db $00
#_15D638: db $83 ; Repeat Fill
#_15D639: db $18, $03 ; Repeat Fill bytes
#_15D63B: db $07 ; Direct Copy
#_15D63C: db $E0, $C0, $70, $60, $BC, $30, $D8, $90
#_15D644: db $22 ; Byte Fill
#_15D645: db $00
#_15D646: db $04 ; Direct Copy
#_15D647: db $C0, $20, $90, $48, $A8
#_15D64C: db $83 ; Repeat Fill
#_15D64D: db $00, $00 ; Repeat Fill bytes
#_15D64F: db $E0, $2B ; EXT Direct Copy
#_15D651: db $3C, $04, $7B, $2B, $BF, $1C, $FC, $53
#_15D659: db $59, $26, $E3, $3C, $01, $06, $3B, $54
#_15D661: db $E3, $AF, $7E, $FC, $80, $00, $EC, $80
#_15D669: db $3A, $28, $DD, $CC, $FF, $36, $3F, $CA
#_15D671: db $9B, $64, $C7, $3C, $80, $6C, $D6, $33
#_15D679: db $C9, $F5, $7F, $3F
#_15D67D: db $23 ; Byte Fill
#_15D67E: db $00
#_15D67F: db $0C ; Direct Copy
#_15D680: db $03, $00, $0E, $03, $11, $0F, $29, $17
#_15D688: db $5D, $23, $4B, $37, $00
#_15D68D: db $83 ; Repeat Fill
#_15D68E: db $9F, $00 ; Repeat Fill bytes
#_15D690: db $02 ; Direct Copy
#_15D691: db $37, $63, $77
#_15D694: db $25 ; Byte Fill
#_15D695: db $00
#_15D696: db $09 ; Direct Copy
#_15D697: db $80, $00, $F0, $80, $FC, $B0, $CE, $4C
#_15D69F: db $C6, $44
#_15D6A1: db $22 ; Byte Fill
#_15D6A2: db $00
#_15D6A3: db $04 ; Direct Copy
#_15D6A4: db $80, $F0, $CC, $B2, $BA
#_15D6A9: db $25 ; Byte Fill
#_15D6AA: db $00
#_15D6AB: db $89 ; Repeat Fill
#_15D6AC: db $94, $03 ; Repeat Fill bytes
#_15D6AE: db $22 ; Byte Fill
#_15D6AF: db $00
#_15D6B0: db $84 ; Repeat Fill
#_15D6B1: db $A2, $03 ; Repeat Fill bytes
#_15D6B3: db $27 ; Byte Fill
#_15D6B4: db $00
#_15D6B5: db $87 ; Repeat Fill
#_15D6B6: db $AE, $03 ; Repeat Fill bytes
#_15D6B8: db $23 ; Byte Fill
#_15D6B9: db $00
#_15D6BA: db $83 ; Repeat Fill
#_15D6BB: db $BB, $03 ; Repeat Fill bytes
#_15D6BD: db $83 ; Repeat Fill
#_15D6BE: db $C2, $00 ; Repeat Fill bytes
#_15D6C0: db $13 ; Direct Copy
#_15D6C1: db $0F, $03, $3C, $0F, $59, $0E, $5C, $07
#_15D6C9: db $53, $0C, $DF, $03, $00, $03, $0F, $3F
#_15D6D1: db $7E, $7F, $7F, $BC
#_15D6D5: db $83 ; Repeat Fill
#_15D6D6: db $DA, $00 ; Repeat Fill bytes
#_15D6D8: db $E0, $25 ; EXT Direct Copy
#_15D6DA: db $F0, $C0, $38, $F0, $9C, $78, $3C, $E8
#_15D6E2: db $CA, $30, $F6, $C0, $00, $C0, $F0, $F8
#_15D6EA: db $7C, $FC, $FE, $3E, $00, $00, $1F, $00
#_15D6F2: db $27, $03, $2F, $07, $27, $00, $67, $03
#_15D6FA: db $9C, $04, $9A, $08, $00, $1F
#_15D700: db $22 ; Byte Fill
#_15D701: db $3F
#_15D702: db $1A ; Direct Copy
#_15D703: db $7C, $FB, $F5, $E0, $00, $F8, $C0, $3C
#_15D70B: db $E8, $C6, $FC, $E6, $38, $F7, $1C, $FB
#_15D713: db $8E, $7B, $4E, $E0, $F8, $FC, $FE, $FE
#_15D71B: db $FF, $7F, $BF
#_15D71E: db $23 ; Byte Fill
#_15D71F: db $00
#_15D720: db $87 ; Repeat Fill
#_15D721: db $56, $01 ; Repeat Fill bytes
#_15D723: db $03 ; Direct Copy
#_15D724: db $37, $03, $4E, $04
#_15D728: db $85 ; Repeat Fill
#_15D729: db $61, $01 ; Repeat Fill bytes
#_15D72B: db $01 ; Direct Copy
#_15D72C: db $3C, $79
#_15D72E: db $23 ; Byte Fill
#_15D72F: db $00
#_15D730: db $83 ; Repeat Fill
#_15D731: db $1A, $03 ; Repeat Fill bytes
#_15D733: db $08 ; Direct Copy
#_15D734: db $B8, $F0, $D8, $70, $EC, $38, $FC, $98
#_15D73C: db $00
#_15D73D: db $83 ; Repeat Fill
#_15D73E: db $18, $04 ; Repeat Fill bytes
#_15D740: db $E0, $39 ; EXT Direct Copy
#_15D742: db $F8, $FC, $7C, $73, $30, $F1, $30, $3C
#_15D74A: db $1C, $3C, $04, $1F, $07, $0F, $03, $03
#_15D752: db $00, $02, $00, $4C, $4E, $23, $3B, $18
#_15D75A: db $0C, $03, $00, $CE, $0C, $8F, $0C, $3C
#_15D762: db $38, $3C, $20, $F8, $E0, $F0, $C0, $C0
#_15D76A: db $00, $40, $00, $32, $72, $C4, $DC, $18
#_15D772: db $30, $C0, $00, $1B, $09, $3D, $0C, $0E
#_15D77A: db $06, $07
#_15D77C: db $83 ; Repeat Fill
#_15D77D: db $8B, $04 ; Repeat Fill bytes
#_15D77F: db $24 ; Byte Fill
#_15D780: db $00
#_15D781: db $04 ; Direct Copy
#_15D782: db $15, $12, $09, $04, $03
#_15D787: db $22 ; Byte Fill
#_15D788: db $00
#_15D789: db $06 ; Direct Copy
#_15D78A: db $D8, $90, $BC, $30, $70, $60, $E0
#_15D791: db $83 ; Repeat Fill
#_15D792: db $A3, $04 ; Repeat Fill bytes
#_15D794: db $24 ; Byte Fill
#_15D795: db $00
#_15D796: db $04 ; Direct Copy
#_15D797: db $A8, $48, $90, $20, $C0
#_15D79C: db $22 ; Byte Fill
#_15D79D: db $00
#_15D79E: db $0C ; Direct Copy
#_15D79F: db $E1, $3E, $78, $3F, $7E, $1F, $F7, $19
#_15D7A7: db $7B, $0D, $0C, $03, $03
#_15D7AC: db $22 ; Byte Fill
#_15D7AD: db $00
#_15D7AE: db $14 ; Direct Copy
#_15D7AF: db $FE, $7F, $7F, $BF, $7F, $0F, $03, $00
#_15D7B7: db $86, $7C, $1F, $FC, $7D, $F8, $EF, $9A
#_15D7BF: db $DE, $B4, $3B, $C8, $DE
#_15D7C4: db $22 ; Byte Fill
#_15D7C5: db $00
#_15D7C6: db $14 ; Direct Copy
#_15D7C7: db $7E, $FF, $FF, $FD, $FA, $F5, $DE, $00
#_15D7CF: db $C3, $7E, $F3, $7C, $FD, $48, $FC, $08
#_15D7D7: db $4D, $30, $3B, $01, $0F
#_15D7DC: db $22 ; Byte Fill
#_15D7DD: db $00
#_15D7DE: db $23 ; Byte Fill
#_15D7DF: db $FF
#_15D7E0: db $10 ; Direct Copy
#_15D7E1: db $7B, $37, $0F, $00, $8F, $8E, $DF, $D2
#_15D7E9: db $FB, $60, $72, $20, $7A, $20, $F9, $00
#_15D7F1: db $8E
#_15D7F2: db $22 ; Byte Fill
#_15D7F3: db $00
#_15D7F4: db $18 ; Direct Copy
#_15D7F5: db $71, $2D, $97, $DE, $DE, $F7, $8E, $00
#_15D7FD: db $4B, $37, $C3, $7E, $F3, $7E, $FF, $4E
#_15D805: db $FE, $0C, $4F, $3E, $33, $0E, $0F, $00
#_15D80D: db $77
#_15D80E: db $23 ; Byte Fill
#_15D80F: db $FF
#_15D810: db $E0, $27 ; EXT Direct Copy
#_15D812: db $7F, $3F, $0F, $C6, $44, $8F, $8E, $FF
#_15D81A: db $26, $37, $02, $26, $00, $AC, $00, $A8
#_15D822: db $00, $F0, $00, $BA, $71, $D9, $ED, $FE
#_15D82A: db $FC, $78, $F0, $7C, $0C, $38, $08, $4C
#_15D832: db $04, $4E, $06, $5F, $07, $D7, $01, $61
#_15D83A: db $22 ; Byte Fill
#_15D83B: db $00
#_15D83C: db $14 ; Direct Copy
#_15D83D: db $73, $37, $7B, $79, $78, $B6, $61, $00
#_15D845: db $3B, $20, $32, $20, $3A, $20, $7B, $70
#_15D84D: db $FE, $E0, $E0, $80, $80
#_15D852: db $22 ; Byte Fill
#_15D853: db $00
#_15D854: db $0F ; Direct Copy
#_15D855: db $DF, $DE, $DE, $8D, $1E, $60, $80, $00
#_15D85D: db $B9, $18, $BC, $18, $5A, $08, $1F, $0F
#_15D865: db $83 ; Repeat Fill
#_15D866: db $8A, $04 ; Repeat Fill bytes
#_15D868: db $83 ; Repeat Fill
#_15D869: db $D8, $02 ; Repeat Fill bytes
#_15D86B: db $E0, $26 ; EXT Direct Copy
#_15D86D: db $E6, $E3, $55, $10, $0C, $03, $07, $03
#_15D875: db $3E, $2C, $BE, $2C, $7E, $48, $CA, $80
#_15D87D: db $C2, $00, $3C, $00, $20, $00, $C0, $00
#_15D885: db $DE, $5E, $BE, $7E, $FE, $FC, $E0, $C0
#_15D88D: db $59, $08, $5C, $08, $3A, $08, $0F
#_15D894: db $85 ; Repeat Fill
#_15D895: db $D5, $02 ; Repeat Fill bytes
#_15D897: db $22 ; Byte Fill
#_15D898: db $00
#_15D899: db $03 ; Direct Copy
#_15D89A: db $76, $73, $35, $08
#_15D89E: db $83 ; Repeat Fill
#_15D89F: db $E3, $02 ; Repeat Fill bytes
#_15D8A1: db $0C ; Direct Copy
#_15D8A2: db $7C, $58, $F8, $50, $F8, $80, $88, $00
#_15D8AA: db $70, $00, $40, $00, $80
#_15D8AF: db $22 ; Byte Fill
#_15D8B0: db $00
#_15D8B1: db $07 ; Direct Copy
#_15D8B2: db $BC, $38, $78, $F8, $F0, $C0, $80, $00
#_15D8BA: db $FF ; End of GFX 91

;===================================================================================================

GFX_92:
#_15D8BB: db $E0, $4F ; EXT Direct Copy
#_15D8BD: db $00, $00, $03, $00, $0C, $03, $13, $0C
#_15D8C5: db $17, $08, $26, $19, $2E, $11, $2F, $10
#_15D8CD: db $00, $03, $0F, $1C, $18, $39, $31, $30
#_15D8D5: db $00, $00, $C0, $00, $30, $C0, $A8, $50
#_15D8DD: db $68, $90, $F4, $08, $94, $68, $74, $88
#_15D8E5: db $00, $C0, $F0, $78, $D8, $EC, $FC, $8C
#_15D8ED: db $00, $00, $01, $00, $06, $01, $09, $06
#_15D8F5: db $13, $0C, $16, $09, $25, $1A, $2F, $10
#_15D8FD: db $00, $01, $07, $0F, $1D, $1B, $3A, $30
#_15D905: db $00, $00, $80, $00, $60, $80, $10, $E0
#_15D90D: db $83 ; Repeat Fill
#_15D90E: db $1E, $00 ; Repeat Fill bytes
#_15D910: db $0B ; Direct Copy
#_15D911: db $A4, $58, $E4, $18, $00, $80, $E0, $F0
#_15D919: db $D8, $D8, $5C, $1C
#_15D91D: db $85 ; Repeat Fill
#_15D91E: db $00, $00 ; Repeat Fill bytes
#_15D920: db $11 ; Direct Copy
#_15D921: db $15, $0A, $16, $09, $2D, $12, $2F, $10
#_15D929: db $2B, $14, $00, $03, $0F, $1E, $1B, $32
#_15D931: db $30, $34
#_15D933: db $85 ; Repeat Fill
#_15D934: db $18, $00 ; Repeat Fill bytes
#_15D936: db $03 ; Direct Copy
#_15D937: db $C8, $30, $E8, $10
#_15D93B: db $43 ; Word Fill
#_15D93C: db $F4, $08 ; Word Fill
#_15D93E: db $09 ; Direct Copy
#_15D93F: db $D4, $28, $00, $C0, $F0, $38, $18, $0C
#_15D947: db $0C, $2C
#_15D949: db $83 ; Repeat Fill
#_15D94A: db $30, $00 ; Repeat Fill bytes
#_15D94C: db $07 ; Direct Copy
#_15D94D: db $2B, $00, $7F, $00, $BF, $40, $4F, $30
#_15D955: db $43 ; Word Fill
#_15D956: db $7F, $00 ; Word Fill
#_15D958: db $07 ; Direct Copy
#_15D959: db $00, $01, $2A, $56, $D8, $7E, $78, $56
#_15D961: db $23 ; Byte Fill
#_15D962: db $00
#_15D963: db $0A ; Direct Copy
#_15D964: db $94, $00, $FE, $00, $FD, $02, $FB, $04
#_15D96C: db $FF, $00, $FF
#_15D96F: db $22 ; Byte Fill
#_15D970: db $00
#_15D971: db $08 ; Direct Copy
#_15D972: db $94, $EA, $1B, $EF, $1D, $FD, $00, $00
#_15D97A: db $07
#_15D97B: db $44 ; Word Fill
#_15D97C: db $00, $0F ; Word Fill
#_15D97E: db $45 ; Word Fill
#_15D97F: db $1F, $00 ; Word Fill
#_15D981: db $13 ; Direct Copy
#_15D982: db $6F, $00, $00, $07, $09, $0E, $16, $18
#_15D98A: db $16, $68, $80, $00, $E0, $00, $D0, $20
#_15D992: db $7C, $80, $CE, $30
#_15D996: db $45 ; Word Fill
#_15D997: db $FE, $00 ; Word Fill
#_15D999: db $E0, $37 ; EXT Direct Copy
#_15D99B: db $80, $60, $70, $CC, $F2, $3A, $F2, $32
#_15D9A3: db $00, $00, $21, $00, $73, $00, $EF, $10
#_15D9AB: db $D7, $08, $CF, $00, $FF, $00, $7F, $80
#_15D9B3: db $00, $21, $52, $BC, $5E, $48, $36, $B8
#_15D9BB: db $00, $00, $04, $00, $8E, $00, $D7, $08
#_15D9C3: db $EB, $10, $F3, $00, $FF, $00, $FE, $01
#_15D9CB: db $00, $04, $8A, $5D, $FA, $12, $EC, $1D
#_15D9D3: db $89 ; Repeat Fill
#_15D9D4: db $90, $00 ; Repeat Fill bytes
#_15D9D6: db $01 ; Direct Copy
#_15D9D7: db $DF, $20
#_15D9D9: db $43 ; Word Fill
#_15D9DA: db $FF, $00 ; Word Fill
#_15D9DC: db $84 ; Repeat Fill
#_15D9DD: db $A0, $00 ; Repeat Fill bytes
#_15D9DF: db $02 ; Direct Copy
#_15D9E0: db $F6, $B8, $BE
#_15D9E3: db $23 ; Byte Fill
#_15D9E4: db $00
#_15D9E5: db $8A ; Repeat Fill
#_15D9E6: db $AC, $00 ; Repeat Fill bytes
#_15D9E8: db $22 ; Byte Fill
#_15D9E9: db $00
#_15D9EA: db $85 ; Repeat Fill
#_15D9EB: db $BA, $00 ; Repeat Fill bytes
#_15D9ED: db $25 ; Byte Fill
#_15D9EE: db $00
#_15D9EF: db $00 ; Direct Copy
#_15D9F0: db $07
#_15D9F1: db $44 ; Word Fill
#_15D9F2: db $00, $0F ; Word Fill
#_15D9F4: db $02 ; Direct Copy
#_15D9F5: db $07, $00, $1F
#_15D9F8: db $23 ; Byte Fill
#_15D9F9: db $00
#_15D9FA: db $04 ; Direct Copy
#_15D9FB: db $07, $09, $0E, $07, $1C
#_15DA00: db $23 ; Byte Fill
#_15DA01: db $00
#_15DA02: db $02 ; Direct Copy
#_15DA03: db $80, $00, $E0
#_15DA06: db $44 ; Word Fill
#_15DA07: db $00, $F0 ; Word Fill
#_15DA09: db $02 ; Direct Copy
#_15DA0A: db $F8, $00, $F8
#_15DA0D: db $22 ; Byte Fill
#_15DA0E: db $00
#_15DA0F: db $05 ; Direct Copy
#_15DA10: db $80, $60, $50, $30, $68, $98
#_15DA16: db $45 ; Word Fill
#_15DA17: db $2F, $10 ; Word Fill
#_15DA19: db $06 ; Direct Copy
#_15DA1A: db $37, $08, $18, $07, $0F, $00, $07
#_15DA21: db $22 ; Byte Fill
#_15DA22: db $00
#_15DA23: db $07 ; Direct Copy
#_15DA24: db $30, $3C, $3E, $3E, $17, $09, $07, $00
#_15DA2C: db $45 ; Word Fill
#_15DA2D: db $F4, $08 ; Word Fill
#_15DA2F: db $06 ; Direct Copy
#_15DA30: db $EC, $10, $18, $E0, $F0, $00, $E0
#_15DA37: db $22 ; Byte Fill
#_15DA38: db $00
#_15DA39: db $09 ; Direct Copy
#_15DA3A: db $0C, $3C, $7C, $7C, $E8, $90, $E0, $00
#_15DA42: db $2F, $10
#_15DA44: db $43 ; Word Fill
#_15DA45: db $2E, $11 ; Word Fill
#_15DA47: db $06 ; Direct Copy
#_15DA48: db $3F, $00, $37, $08, $24, $1B, $1F
#_15DA4F: db $22 ; Byte Fill
#_15DA50: db $00
#_15DA51: db $14 ; Direct Copy
#_15DA52: db $30, $37, $3F, $2E, $28, $3F, $1F, $00
#_15DA5A: db $E4, $18, $C4, $38, $B8, $70, $70, $C0
#_15DA62: db $60, $80, $40, $80, $80
#_15DA67: db $22 ; Byte Fill
#_15DA68: db $00
#_15DA69: db $14 ; Direct Copy
#_15DA6A: db $1C, $3C, $78, $F0, $E0, $C0, $80, $00
#_15DA72: db $2C, $13, $2F, $10, $27, $18, $33, $0C
#_15DA7A: db $11, $0F, $0F, $03, $03
#_15DA7F: db $22 ; Byte Fill
#_15DA80: db $00
#_15DA81: db $14 ; Direct Copy
#_15DA82: db $33, $30, $38, $3C, $1F, $0F, $03, $00
#_15DA8A: db $34, $C8, $F4, $08, $E4, $18, $CC, $30
#_15DA92: db $88, $F0, $F0, $C0, $C0
#_15DA97: db $22 ; Byte Fill
#_15DA98: db $00
#_15DA99: db $06 ; Direct Copy
#_15DA9A: db $CC, $0C, $1C, $3C, $F8, $F0, $C0
#_15DAA1: db $46 ; Word Fill
#_15DAA2: db $00, $7F ; Word Fill
#_15DAA4: db $43 ; Word Fill
#_15DAA5: db $3F, $00 ; Word Fill
#_15DAA7: db $00 ; Direct Copy
#_15DAA8: db $1E
#_15DAA9: db $24 ; Byte Fill
#_15DAAA: db $00
#_15DAAB: db $0A ; Direct Copy
#_15DAAC: db $58, $4E, $49, $3A, $2D, $1E, $00, $00
#_15DAB4: db $FE, $00, $FC
#_15DAB7: db $44 ; Word Fill
#_15DAB8: db $00, $F8 ; Word Fill
#_15DABA: db $00 ; Direct Copy
#_15DABB: db $FC
#_15DABC: db $44 ; Word Fill
#_15DABD: db $00, $7C ; Word Fill
#_15DABF: db $E0, $23 ; EXT Direct Copy
#_15DAC1: db $38, $00, $1E, $F4, $88, $68, $DC, $44
#_15DAC9: db $44, $38, $FF, $00, $9E, $61, $7F, $00
#_15DAD1: db $7D, $02, $FE, $01, $9D, $60, $7C, $00
#_15DAD9: db $08, $00, $9E, $E9, $7F, $73, $97, $ED
#_15DAE1: db $74, $08, $DC, $20
#_15DAE5: db $43 ; Word Fill
#_15DAE6: db $F8, $00 ; Word Fill
#_15DAE8: db $04 ; Direct Copy
#_15DAE9: db $E8, $10, $30, $C0, $C0
#_15DAEE: db $24 ; Byte Fill
#_15DAEF: db $00
#_15DAF0: db $06 ; Direct Copy
#_15DAF1: db $FC, $E8, $88, $D8, $F0, $C0, $00
#_15DAF8: db $83 ; Repeat Fill
#_15DAF9: db $FB, $00 ; Repeat Fill bytes
#_15DAFB: db $09 ; Direct Copy
#_15DAFC: db $00, $FF, $00, $EB, $14, $F6, $09, $FF
#_15DB04: db $00, $70
#_15DB06: db $22 ; Byte Fill
#_15DB07: db $00
#_15DB08: db $06 ; Direct Copy
#_15DB09: db $F6, $48, $9E, $DF, $AF, $8F, $70
#_15DB10: db $83 ; Repeat Fill
#_15DB11: db $13, $01 ; Repeat Fill bytes
#_15DB13: db $09 ; Direct Copy
#_15DB14: db $00, $FF, $00, $D7, $28, $6F, $90, $FF
#_15DB1C: db $00, $0E
#_15DB1E: db $22 ; Byte Fill
#_15DB1F: db $00
#_15DB20: db $06 ; Direct Copy
#_15DB21: db $EF, $12, $F9, $FB, $F5, $F1, $0E
#_15DB28: db $44 ; Word Fill
#_15DB29: db $00, $FF ; Word Fill
#_15DB2B: db $02 ; Direct Copy
#_15DB2C: db $7A, $05, $1F
#_15DB2F: db $44 ; Word Fill
#_15DB30: db $00, $3E ; Word Fill
#_15DB32: db $00 ; Direct Copy
#_15DB33: db $1C
#_15DB34: db $22 ; Byte Fill
#_15DB35: db $00
#_15DB36: db $06 ; Direct Copy
#_15DB37: db $98, $9E, $77, $17, $2A, $22, $1C
#_15DB3E: db $44 ; Word Fill
#_15DB3F: db $00, $FF ; Word Fill
#_15DB41: db $02 ; Direct Copy
#_15DB42: db $5E, $A0, $F8
#_15DB45: db $44 ; Word Fill
#_15DB46: db $00, $7C ; Word Fill
#_15DB48: db $00 ; Direct Copy
#_15DB49: db $38
#_15DB4A: db $22 ; Byte Fill
#_15DB4B: db $00
#_15DB4C: db $06 ; Direct Copy
#_15DB4D: db $19, $F9, $EE, $E8, $54, $44, $38
#_15DB54: db $46 ; Word Fill
#_15DB55: db $00, $3F ; Word Fill
#_15DB57: db $43 ; Word Fill
#_15DB58: db $7F, $00 ; Word Fill
#_15DB5A: db $00 ; Direct Copy
#_15DB5B: db $38
#_15DB5C: db $24 ; Byte Fill
#_15DB5D: db $00
#_15DB5E: db $08 ; Direct Copy
#_15DB5F: db $23, $27, $3B, $5E, $4F, $38, $00, $00
#_15DB67: db $F8
#_15DB68: db $44 ; Word Fill
#_15DB69: db $00, $F0 ; Word Fill
#_15DB6B: db $83 ; Repeat Fill
#_15DB6C: db $2E, $02 ; Repeat Fill bytes
#_15DB6E: db $01 ; Direct Copy
#_15DB6F: db $7A, $04
#_15DB71: db $83 ; Repeat Fill
#_15DB72: db $34, $02 ; Repeat Fill bytes
#_15DB74: db $E0, $2E ; EXT Direct Copy
#_15DB76: db $68, $10, $70, $28, $EC, $56, $44, $38
#_15DB7E: db $00, $00, $3C, $00, $5A, $3C, $42, $3C
#_15DB86: db $66, $18, $7E, $00, $5A, $00, $24, $00
#_15DB8E: db $00, $3C, $5A, $42, $42, $66, $7E, $24
#_15DB96: db $88, $00, $79, $00, $3E, $10, $6E, $30
#_15DB9E: db $42, $3C, $26, $18, $FA, $00, $21
#_15DBA5: db $22 ; Byte Fill
#_15DBA6: db $00
#_15DBA7: db $03 ; Direct Copy
#_15DBA8: db $10, $30, $3C, $18
#_15DBAC: db $23 ; Byte Fill
#_15DBAD: db $00
#_15DBAE: db $83 ; Repeat Fill
#_15DBAF: db $02, $00 ; Repeat Fill bytes
#_15DBB1: db $E0, $29 ; EXT Direct Copy
#_15DBB3: db $11, $0F, $22, $1F, $25, $1B, $66, $39
#_15DBBB: db $56, $39, $00, $03, $0C, $11, $23, $25
#_15DBC3: db $62, $70, $07, $00, $18, $07, $21, $1F
#_15DBCB: db $46, $3F, $47, $3B, $87, $79, $C6, $79
#_15DBD3: db $A2, $7D, $07, $18, $21, $47, $47, $83
#_15DBDB: db $C0, $E0
#_15DBDD: db $23 ; Byte Fill
#_15DBDE: db $00
#_15DBDF: db $00 ; Direct Copy
#_15DBE0: db $07
#_15DBE1: db $44 ; Word Fill
#_15DBE2: db $00, $0F ; Word Fill
#_15DBE4: db $00 ; Direct Copy
#_15DBE5: db $07
#_15DBE6: db $43 ; Word Fill
#_15DBE7: db $00, $0F ; Word Fill
#_15DBE9: db $22 ; Byte Fill
#_15DBEA: db $00
#_15DBEB: db $83 ; Repeat Fill
#_15DBEC: db $63, $01 ; Repeat Fill bytes
#_15DBEE: db $01 ; Direct Copy
#_15DBEF: db $08, $0F
#_15DBF1: db $84 ; Repeat Fill
#_15DBF2: db $6A, $01 ; Repeat Fill bytes
#_15DBF4: db $44 ; Word Fill
#_15DBF5: db $00, $F0 ; Word Fill
#_15DBF7: db $83 ; Repeat Fill
#_15DBF8: db $E8, $02 ; Repeat Fill bytes
#_15DBFA: db $00 ; Direct Copy
#_15DBFB: db $F8
#_15DBFC: db $86 ; Repeat Fill
#_15DBFD: db $78, $01 ; Repeat Fill bytes
#_15DBFF: db $0B ; Direct Copy
#_15DC00: db $10, $68, $0F, $00, $9F, $03, $7A, $1D
#_15DC08: db $61, $1E, $73, $2C
#_15DC0C: db $45 ; Word Fill
#_15DC0D: db $C7, $78 ; Word Fill
#_15DC0F: db $E0, $4F ; EXT Direct Copy
#_15DC11: db $07, $1B, $3D, $5E, $6C, $FC, $FE, $FA
#_15DC19: db $E0, $00, $F9, $E0, $1E, $F8, $86, $78
#_15DC21: db $CE, $34, $E3, $1E, $E3, $1C, $E7, $1A
#_15DC29: db $E0, $F8, $FC, $7A, $36, $3E, $7D, $5B
#_15DC31: db $01, $01, $00, $03, $43, $4F, $0C, $1F
#_15DC39: db $0C, $3F, $15, $3A, $1F, $78, $1F, $7C
#_15DC41: db $01, $00, $43, $0D, $0F, $12, $58, $1C
#_15DC49: db $00, $02, $00, $80, $E0, $E0, $50, $F0
#_15DC51: db $E8, $F8, $48, $F8, $C8, $3C, $E8, $1C
#_15DC59: db $02, $00, $E0, $F0, $F8, $F8, $3C, $1C
#_15DC61: db $27 ; Byte Fill
#_15DC62: db $00
#_15DC63: db $03 ; Direct Copy
#_15DC64: db $0F, $00, $51, $0E
#_15DC68: db $43 ; Word Fill
#_15DC69: db $EF, $10 ; Word Fill
#_15DC6B: db $23 ; Byte Fill
#_15DC6C: db $00
#_15DC6D: db $03 ; Direct Copy
#_15DC6E: db $0F, $5F, $B1, $B2
#_15DC72: db $25 ; Byte Fill
#_15DC73: db $00
#_15DC74: db $09 ; Direct Copy
#_15DC75: db $E0, $00, $30, $E0, $9E, $70, $9F, $70
#_15DC7D: db $9D, $72
#_15DC7F: db $22 ; Byte Fill
#_15DC80: db $00
#_15DC81: db $09 ; Direct Copy
#_15DC82: db $E0, $F0, $7E, $7D, $7B, $60, $00, $F1
#_15DC8A: db $00, $FB
#_15DC8C: db $44 ; Word Fill
#_15DC8D: db $00, $FF ; Word Fill
#_15DC8F: db $12 ; Direct Copy
#_15DC90: db $BF, $40, $5F, $20, $2F, $00, $60, $91
#_15DC98: db $9A, $B6, $B8, $D6, $78, $2E, $06, $00
#_15DCA0: db $0F, $00, $9F
#_15DCA3: db $44 ; Word Fill
#_15DCA4: db $00, $FF ; Word Fill
#_15DCA6: db $0E ; Direct Copy
#_15DCA7: db $FD, $02, $FA, $04, $FC, $00, $06, $09
#_15DCAF: db $99, $ED, $1D, $EB, $1E, $FC, $10
#_15DCB6: db $44 ; Word Fill
#_15DCB7: db $00, $38 ; Word Fill
#_15DCB9: db $45 ; Word Fill
#_15DCBA: db $78, $00 ; Word Fill
#_15DCBC: db $00 ; Direct Copy
#_15DCBD: db $38
#_15DCBE: db $22 ; Byte Fill
#_15DCBF: db $00
#_15DCC0: db $06 ; Direct Copy
#_15DCC1: db $10, $28, $28, $68, $48, $48, $38
#_15DCC8: db $84 ; Repeat Fill
#_15DCC9: db $31, $00 ; Repeat Fill bytes
#_15DCCB: db $05 ; Direct Copy
#_15DCCC: db $3F, $00, $7C, $03, $5B, $24
#_15DCD2: db $43 ; Word Fill
#_15DCD3: db $3C, $00 ; Word Fill
#_15DCD5: db $E0, $25 ; EXT Direct Copy
#_15DCD7: db $18, $00, $01, $07, $38, $43, $67, $34
#_15DCDF: db $24, $18, $3C, $00, $42, $3C, $99, $7E
#_15DCE7: db $C3, $7E, $FF, $3C, $FF, $00, $BD, $00
#_15DCEF: db $66, $00, $3C, $42, $99, $C3, $BD, $C3
#_15DCF7: db $FF, $7E, $3C, $00, $4A, $3C
#_15DCFD: db $43 ; Word Fill
#_15DCFE: db $B5, $4E ; Word Fill
#_15DD00: db $E0, $3F ; EXT Direct Copy
#_15DD02: db $C9, $7E, $B1, $7E, $42, $3C, $3C, $00
#_15DD0A: db $3C, $7A, $CD, $CD, $F9, $B1, $42, $3C
#_15DD12: db $6E, $1D, $7F, $03, $3F, $00, $3F, $10
#_15DD1A: db $2F, $00, $19, $00, $05, $00, $02, $00
#_15DD22: db $5C, $43, $30, $28, $3F, $1F, $07, $02
#_15DD2A: db $50, $3F, $7C, $0F, $3F, $03, $7F, $20
#_15DD32: db $AF, $08, $53, $00, $16, $00, $09, $00
#_15DD3A: db $70, $4C, $23, $58, $F4, $5F, $1F, $09
#_15DD42: db $45 ; Word Fill
#_15DD43: db $0F, $00 ; Word Fill
#_15DD45: db $02 ; Direct Copy
#_15DD46: db $07, $00, $03
#_15DD49: db $44 ; Word Fill
#_15DD4A: db $00, $07 ; Word Fill
#_15DD4C: db $0A ; Direct Copy
#_15DD4D: db $03, $00, $08, $0F, $08, $07, $03, $05
#_15DD55: db $04, $03, $F8
#_15DD58: db $44 ; Word Fill
#_15DD59: db $00, $F0 ; Word Fill
#_15DD5B: db $05 ; Direct Copy
#_15DD5C: db $E0, $00, $A0, $40, $D0, $20
#_15DD62: db $83 ; Repeat Fill
#_15DD63: db $A2, $01 ; Repeat Fill bytes
#_15DD65: db $E0, $43 ; EXT Direct Copy
#_15DD67: db $18, $70, $10, $60, $60, $30, $90, $E0
#_15DD6F: db $63, $3C, $F0, $0F, $78, $1F, $BC, $47
#_15DD77: db $4F, $33, $37, $08, $2D, $12, $12, $00
#_15DD7F: db $7C, $0F, $7F, $FF, $7F, $3F, $3F, $12
#_15DD87: db $C6, $3C, $26, $DC, $1E, $E8, $3D, $E2
#_15DD8F: db $FE, $C0, $EC, $10, $B4, $48, $48, $00
#_15DD97: db $3E, $DE, $EE, $F7, $FA, $FC, $FC, $48
#_15DD9F: db $1D, $7E, $8F, $FC, $0F, $7F, $07, $3F
#_15DDA7: db $01, $1F, $00, $3F
#_15DDAB: db $83 ; Repeat Fill
#_15DDAC: db $8B, $01 ; Repeat Fill bytes
#_15DDAE: db $E0, $37 ; EXT Direct Copy
#_15DDB0: db $1C, $8C, $0F, $07, $01, $20, $00, $00
#_15DDB8: db $A8, $5C, $30, $F8, $F0, $F8, $E0, $F0
#_15DDC0: db $C0, $F0, $02, $E2, $00, $80, $00, $08
#_15DDC8: db $1C, $F8, $F8, $F0, $C0, $02, $00, $00
#_15DDD0: db $57, $28, $EA, $15, $FF, $00, $F6, $09
#_15DDD8: db $57, $2B, $6F, $10, $3B, $04, $0F, $00
#_15DDE0: db $7A, $FF, $BC, $8D, $6F, $7F, $3C, $0F
#_15DDE8: db $43 ; Word Fill
#_15DDE9: db $9E, $70 ; Word Fill
#_15DDEB: db $13 ; Direct Copy
#_15DDEC: db $3F, $E0, $E3, $DC, $F9, $06, $76, $88
#_15DDF4: db $24, $D8, $F8, $00, $7A, $7E, $F9, $FF
#_15DDFC: db $DF, $EE, $FC, $F8
#_15DE00: db $43 ; Word Fill
#_15DE01: db $0F, $00 ; Word Fill
#_15DE03: db $02 ; Direct Copy
#_15DE04: db $1A, $05, $1F
#_15DE07: db $44 ; Word Fill
#_15DE08: db $00, $3E ; Word Fill
#_15DE0A: db $00 ; Direct Copy
#_15DE0B: db $1C
#_15DE0C: db $22 ; Byte Fill
#_15DE0D: db $00
#_15DE0E: db $02 ; Direct Copy
#_15DE0F: db $08, $0E, $17
#_15DE12: db $83 ; Repeat Fill
#_15DE13: db $B3, $02 ; Repeat Fill bytes
#_15DE15: db $44 ; Word Fill
#_15DE16: db $00, $F0 ; Word Fill
#_15DE18: db $02 ; Direct Copy
#_15DE19: db $58, $A0, $F8
#_15DE1C: db $44 ; Word Fill
#_15DE1D: db $00, $7C ; Word Fill
#_15DE1F: db $00 ; Direct Copy
#_15DE20: db $38
#_15DE21: db $22 ; Byte Fill
#_15DE22: db $00
#_15DE23: db $02 ; Direct Copy
#_15DE24: db $10, $F0, $E8
#_15DE27: db $83 ; Repeat Fill
#_15DE28: db $CB, $02 ; Repeat Fill bytes
#_15DE2A: db $22 ; Byte Fill
#_15DE2B: db $00
#_15DE2C: db $00 ; Direct Copy
#_15DE2D: db $18
#_15DE2E: db $48 ; Word Fill
#_15DE2F: db $00, $3C ; Word Fill
#_15DE31: db $09 ; Direct Copy
#_15DE32: db $24, $18, $18, $00, $00, $18, $24, $24
#_15DE3A: db $34, $34
#_15DE3C: db $83 ; Repeat Fill
#_15DE3D: db $2C, $03 ; Repeat Fill bytes
#_15DE3F: db $03 ; Direct Copy
#_15DE40: db $18, $00, $6C, $10
#_15DE44: db $43 ; Word Fill
#_15DE45: db $FC, $00 ; Word Fill
#_15DE47: db $0D ; Direct Copy
#_15DE48: db $6E, $10, $16, $08, $15, $0A, $00, $18
#_15DE50: db $74, $A4, $84, $72, $1A, $1B
#_15DE56: db $FF ; End of GFX 92

;===================================================================================================

GFX_93:
#_15DE57: db $2B ; Byte Fill
#_15DE58: db $00
#_15DE59: db $03 ; Direct Copy
#_15DE5A: db $03, $00, $07, $01
#_15DE5E: db $25 ; Byte Fill
#_15DE5F: db $00
#_15DE60: db $01 ; Direct Copy
#_15DE61: db $03, $07
#_15DE63: db $2B ; Byte Fill
#_15DE64: db $00
#_15DE65: db $03 ; Direct Copy
#_15DE66: db $C0, $00, $E0, $80
#_15DE6A: db $25 ; Byte Fill
#_15DE6B: db $00
#_15DE6C: db $01 ; Direct Copy
#_15DE6D: db $C0, $E0
#_15DE6F: db $23 ; Byte Fill
#_15DE70: db $00
#_15DE71: db $0B ; Direct Copy
#_15DE72: db $03, $00, $07, $03, $0E, $07, $0D, $06
#_15DE7A: db $0E, $05, $18, $0F
#_15DE7E: db $83 ; Repeat Fill
#_15DE7F: db $14, $00 ; Repeat Fill bytes
#_15DE81: db $03 ; Direct Copy
#_15DE82: db $0F, $0E, $0D, $1F
#_15DE86: db $23 ; Byte Fill
#_15DE87: db $00
#_15DE88: db $03 ; Direct Copy
#_15DE89: db $C0, $00, $E0, $C0
#_15DE8D: db $43 ; Word Fill
#_15DE8E: db $70, $E0 ; Word Fill
#_15DE90: db $03 ; Direct Copy
#_15DE91: db $78, $F0, $38, $F0
#_15DE95: db $83 ; Repeat Fill
#_15DE96: db $2C, $00 ; Repeat Fill bytes
#_15DE98: db $03 ; Direct Copy
#_15DE99: db $F0, $F0, $F8, $F8
#_15DE9D: db $29 ; Byte Fill
#_15DE9E: db $00
#_15DE9F: db $05 ; Direct Copy
#_15DEA0: db $07, $00, $0F, $07, $1A, $0D
#_15DEA6: db $24 ; Byte Fill
#_15DEA7: db $00
#_15DEA8: db $02 ; Direct Copy
#_15DEA9: db $07, $0F, $1D
#_15DEAC: db $29 ; Byte Fill
#_15DEAD: db $00
#_15DEAE: db $05 ; Direct Copy
#_15DEAF: db $C0, $00, $F0, $C0, $38, $F0
#_15DEB5: db $24 ; Byte Fill
#_15DEB6: db $00
#_15DEB7: db $05 ; Direct Copy
#_15DEB8: db $C0, $F0, $F8, $07, $00, $1B
#_15DEBE: db $44 ; Word Fill
#_15DEBF: db $00, $27 ; Word Fill
#_15DEC1: db $12 ; Direct Copy
#_15DEC2: db $47, $00, $43, $00, $41, $00, $4E, $00
#_15DECA: db $07, $1C, $38, $38, $78, $7C, $7E, $7F
#_15DED2: db $E0, $00, $F8
#_15DED5: db $44 ; Word Fill
#_15DED6: db $00, $FC ; Word Fill
#_15DED8: db $19 ; Direct Copy
#_15DED9: db $FE, $00, $EE, $00, $CE, $00, $FE, $00
#_15DEE1: db $E0, $18, $04, $04, $02, $12, $32, $72
#_15DEE9: db $00, $00, $79, $00, $86, $78, $82, $7C
#_15DEF1: db $84, $78
#_15DEF3: db $45 ; Word Fill
#_15DEF4: db $44, $38 ; Word Fill
#_15DEF6: db $04 ; Direct Copy
#_15DEF7: db $00, $79, $87, $83, $87
#_15DEFC: db $22 ; Byte Fill
#_15DEFD: db $47
#_15DEFE: db $02 ; Direct Copy
#_15DEFF: db $7E, $00, $BF
#_15DF02: db $46 ; Word Fill
#_15DF03: db $00, $7F ; Word Fill
#_15DF05: db $07 ; Direct Copy
#_15DF06: db $3E, $00, $1C, $00, $EF, $00, $7E, $C1
#_15DF0E: db $22 ; Byte Fill
#_15DF0F: db $80
#_15DF10: db $05 ; Direct Copy
#_15DF11: db $C1, $E3, $F7, $00, $00, $80
#_15DF17: db $44 ; Word Fill
#_15DF18: db $00, $C0 ; Word Fill
#_15DF1A: db $47 ; Word Fill
#_15DF1B: db $E0, $00 ; Word Fill
#_15DF1D: db $03 ; Direct Copy
#_15DF1E: db $00, $80, $40, $40
#_15DF22: db $23 ; Byte Fill
#_15DF23: db $20
#_15DF24: db $E0, $4A ; EXT Direct Copy
#_15DF26: db $17, $08, $0B, $04, $7B, $04, $FD, $02
#_15DF2E: db $5D, $12, $36, $05, $0E, $05, $1D, $02
#_15DF36: db $1B, $0D, $7D, $86, $6E, $3B, $0B, $1F
#_15DF3E: db $FD, $00, $FF, $00, $BF, $00, $DE, $00
#_15DF46: db $FF, $1E, $DE, $00, $E1, $00, $61, $80
#_15DF4E: db $3F, $CE, $F1, $BF, $E1, $5E, $61, $A1
#_15DF56: db $FC, $00, $F8, $00, $7E, $00, $FF, $00
#_15DF5E: db $EA, $00, $CC, $00, $50, $80, $30, $C0
#_15DF66: db $7C, $98, $FE, $81, $F6, $FC, $F0, $F0
#_15DF6E: db $04, $00, $02
#_15DF71: db $4C ; Word Fill
#_15DF72: db $00, $03 ; Word Fill
#_15DF74: db $01 ; Direct Copy
#_15DF75: db $04, $02
#_15DF77: db $25 ; Byte Fill
#_15DF78: db $03
#_15DF79: db $27 ; Byte Fill
#_15DF7A: db $00
#_15DF7B: db $43 ; Word Fill
#_15DF7C: db $80, $00 ; Word Fill
#_15DF7E: db $02 ; Direct Copy
#_15DF7F: db $C0, $00, $C0
#_15DF82: db $24 ; Byte Fill
#_15DF83: db $00
#_15DF84: db $08 ; Direct Copy
#_15DF85: db $80, $80, $C0, $C0, $0E, $03, $0F, $00
#_15DF8D: db $1F
#_15DF8E: db $44 ; Word Fill
#_15DF8F: db $00, $3F ; Word Fill
#_15DF91: db $02 ; Direct Copy
#_15DF92: db $1F, $00, $07
#_15DF95: db $22 ; Byte Fill
#_15DF96: db $00
#_15DF97: db $0D ; Direct Copy
#_15DF98: db $0F, $0C, $1C, $3F, $3F, $1F, $07, $00
#_15DFA0: db $70, $C0, $F0, $80, $F8, $80
#_15DFA6: db $43 ; Word Fill
#_15DFA7: db $FC, $00 ; Word Fill
#_15DFA9: db $02 ; Direct Copy
#_15DFAA: db $F8, $00, $E0
#_15DFAD: db $22 ; Byte Fill
#_15DFAE: db $00
#_15DFAF: db $0C ; Direct Copy
#_15DFB0: db $F0, $B0, $B8, $FC, $FC, $F8, $E0, $00
#_15DFB8: db $19, $0E, $31, $1E, $39
#_15DFBD: db $44 ; Word Fill
#_15DFBE: db $1F, $3F ; Word Fill
#_15DFC0: db $07 ; Direct Copy
#_15DFC1: db $1F, $0F, $0F, $03, $03, $00, $1E, $3E
#_15DFC9: db $22 ; Byte Fill
#_15DFCA: db $3F
#_15DFCB: db $04 ; Direct Copy
#_15DFCC: db $1F, $0F, $03, $F8, $50
#_15DFD1: db $44 ; Word Fill
#_15DFD2: db $FC, $58 ; Word Fill
#_15DFD4: db $00 ; Direct Copy
#_15DFD5: db $F8
#_15DFD6: db $43 ; Word Fill
#_15DFD7: db $F8, $F0 ; Word Fill
#_15DFD9: db $06 ; Direct Copy
#_15DFDA: db $F0, $C0, $C0, $00, $58, $5C, $5C
#_15DFE1: db $83 ; Repeat Fill
#_15DFE2: db $CE, $01 ; Repeat Fill bytes
#_15DFE4: db $1C ; Direct Copy
#_15DFE5: db $C0, $18, $0F, $31, $1E, $61, $3E, $73
#_15DFED: db $3F, $7F, $3F, $3F, $1F, $1F, $03, $03
#_15DFF5: db $00, $1F, $3E, $7E, $7F, $7F, $3F, $1F
#_15DFFD: db $03, $1C, $F8, $FC, $58
#_15E002: db $44 ; Word Fill
#_15E003: db $FE, $5C ; Word Fill
#_15E005: db $E0, $3E ; EXT Direct Copy
#_15E007: db $FC, $FC, $F8, $F8, $C0, $C0, $00, $FC
#_15E00F: db $5C, $5E, $5E, $FE, $FC, $F8, $C0, $2A
#_15E017: db $04, $2D, $00, $31, $00, $1F, $00, $0F
#_15E01F: db $00, $07, $00, $04, $00, $03, $00, $3B
#_15E027: db $3E, $2F, $18, $0A, $05, $07, $03, $DC
#_15E02F: db $20, $B4, $00, $CC, $00, $F8, $00, $F0
#_15E037: db $00, $D0, $00, $20, $00, $C0, $00, $54
#_15E03F: db $7C, $B4, $18, $50, $70, $E0, $C0
#_15E046: db $43 ; Word Fill
#_15E047: db $3E, $00 ; Word Fill
#_15E049: db $18 ; Direct Copy
#_15E04A: db $7F, $00, $5D, $00, $5C, $00, $3E, $00
#_15E052: db $3F, $00, $36, $08, $3F, $2F, $5E, $7F
#_15E05A: db $77, $23, $2D, $3B, $AD, $42, $DB, $00
#_15E062: db $1C
#_15E063: db $46 ; Word Fill
#_15E064: db $00, $FF ; Word Fill
#_15E066: db $13 ; Direct Copy
#_15E067: db $7D, $00, $C3, $00, $B5, $E7, $FB, $81
#_15E06F: db $E5, $AF, $D7, $FF, $F0, $00, $48, $30
#_15E077: db $C4, $38, $82, $7C
#_15E07B: db $45 ; Word Fill
#_15E07C: db $01, $FE ; Word Fill
#_15E07E: db $05 ; Direct Copy
#_15E07F: db $82, $7C, $70, $C8, $44, $82
#_15E085: db $22 ; Byte Fill
#_15E086: db $01
#_15E087: db $05 ; Direct Copy
#_15E088: db $82, $39, $06, $42, $3C, $7C
#_15E08E: db $2A ; Byte Fill
#_15E08F: db $00
#_15E090: db $02 ; Direct Copy
#_15E091: db $27, $7E, $7C
#_15E094: db $24 ; Byte Fill
#_15E095: db $00
#_15E096: db $09 ; Direct Copy
#_15E097: db $71, $80, $B1, $40, $B9, $40, $58, $20
#_15E09F: db $5C, $20
#_15E0A1: db $43 ; Word Fill
#_15E0A2: db $2C, $10 ; Word Fill
#_15E0A4: db $12 ; Direct Copy
#_15E0A5: db $18, $00, $B1, $D1, $D9, $68, $6C, $34
#_15E0AD: db $34, $18, $10, $E0, $30, $C0, $70, $80
#_15E0B5: db $90, $60, $60
#_15E0B8: db $26 ; Byte Fill
#_15E0B9: db $00
#_15E0BA: db $04 ; Direct Copy
#_15E0BB: db $F0, $D0, $90, $F0, $60
#_15E0C0: db $22 ; Byte Fill
#_15E0C1: db $00
#_15E0C2: db $43 ; Word Fill
#_15E0C3: db $07, $00 ; Word Fill
#_15E0C5: db $43 ; Word Fill
#_15E0C6: db $0F, $00 ; Word Fill
#_15E0C8: db $10 ; Direct Copy
#_15E0C9: db $4F, $00, $6F, $00, $7F, $00, $5F, $00
#_15E0D1: db $07, $07, $0F, $0F, $4F, $6F, $7F, $5F
#_15E0D9: db $C0
#_15E0DA: db $48 ; Word Fill
#_15E0DB: db $00, $E0 ; Word Fill
#_15E0DD: db $45 ; Word Fill
#_15E0DE: db $F0, $00 ; Word Fill
#_15E0E0: db $00 ; Direct Copy
#_15E0E1: db $C0
#_15E0E2: db $23 ; Byte Fill
#_15E0E3: db $E0
#_15E0E4: db $22 ; Byte Fill
#_15E0E5: db $F0
#_15E0E6: db $83 ; Repeat Fill
#_15E0E7: db $0C, $00 ; Repeat Fill bytes
#_15E0E9: db $00 ; Direct Copy
#_15E0EA: db $1F
#_15E0EB: db $44 ; Word Fill
#_15E0EC: db $00, $3F ; Word Fill
#_15E0EE: db $02 ; Direct Copy
#_15E0EF: db $1F, $00, $07
#_15E0F2: db $22 ; Byte Fill
#_15E0F3: db $00
#_15E0F4: db $03 ; Direct Copy
#_15E0F5: db $03, $07, $1C, $3C
#_15E0F9: db $83 ; Repeat Fill
#_15E0FA: db $94, $01 ; Repeat Fill bytes
#_15E0FC: db $03 ; Direct Copy
#_15E0FD: db $2F, $10, $6C, $13
#_15E101: db $43 ; Word Fill
#_15E102: db $96, $69 ; Word Fill
#_15E104: db $0F ; Direct Copy
#_15E105: db $56, $29, $76, $09, $7B, $24, $5B, $04
#_15E10D: db $37, $74, $9A, $9A, $5A, $7A, $5D, $7D
#_15E115: db $43 ; Word Fill
#_15E116: db $FF, $00 ; Word Fill
#_15E118: db $43 ; Word Fill
#_15E119: db $BD, $00 ; Word Fill
#_15E11B: db $07 ; Direct Copy
#_15E11C: db $E7, $24, $BD, $18, $66, $00, $BD, $00
#_15E124: db $23 ; Byte Fill
#_15E125: db $FF
#_15E126: db $43 ; Word Fill
#_15E127: db $DB, $E7 ; Word Fill
#_15E129: db $03 ; Direct Copy
#_15E12A: db $F8, $00, $06, $F8
#_15E12E: db $43 ; Word Fill
#_15E12F: db $01, $FE ; Word Fill
#_15E131: db $13 ; Direct Copy
#_15E132: db $02, $FC, $04, $F8, $FC, $00, $34, $00
#_15E13A: db $F8, $06, $01, $01, $02, $04, $FC, $FC
#_15E142: db $00, $00, $30, $00
#_15E146: db $47 ; Word Fill
#_15E147: db $58, $20 ; Word Fill
#_15E149: db $43 ; Word Fill
#_15E14A: db $2C, $10 ; Word Fill
#_15E14C: db $01 ; Direct Copy
#_15E14D: db $00, $30
#_15E14F: db $23 ; Byte Fill
#_15E150: db $68
#_15E151: db $1C ; Direct Copy
#_15E152: db $34, $34, $31, $00, $7E, $00, $36, $00
#_15E15A: db $19, $00, $25, $18, $61, $1E, $41, $3E
#_15E162: db $3E, $00, $2F, $5E, $2E, $1F, $3F, $5F
#_15E16A: db $7F, $3E, $01, $00, $07
#_15E16F: db $44 ; Word Fill
#_15E170: db $00, $0F ; Word Fill
#_15E172: db $43 ; Word Fill
#_15E173: db $1F, $00 ; Word Fill
#_15E175: db $12 ; Direct Copy
#_15E176: db $13, $00, $1F, $00, $01, $06, $08, $08
#_15E17E: db $10, $10, $1C, $1E, $F0, $00, $CC, $00
#_15E186: db $E2, $00, $F1
#_15E189: db $44 ; Word Fill
#_15E18A: db $00, $F9 ; Word Fill
#_15E18C: db $E0, $74 ; EXT Direct Copy
#_15E18E: db $39, $00, $F1, $00, $F0, $3C, $1E, $0F
#_15E196: db $07, $07, $C7, $4F, $C2, $00, $E7, $00
#_15E19E: db $B7, $40, $5D, $20, $2D, $10, $77, $08
#_15E1A6: db $5B, $04, $3D, $02, $C2, $A5, $D5, $6F
#_15E1AE: db $37, $5B, $6D, $3E, $40, $00, $EE, $00
#_15E1B6: db $77, $00, $EB, $00, $F7, $00, $7B, $00
#_15E1BE: db $7F, $00, $FF, $00, $40, $AE, $59, $BF
#_15E1C6: db $9E, $CF, $B7, $FC, $40, $00, $EC, $00
#_15E1CE: db $52, $0C, $E2, $1C, $C1, $3E, $43, $3C
#_15E1D6: db $FD, $00, $DF, $00, $40, $AC, $72, $E2
#_15E1DE: db $41, $C3, $BF, $75, $02, $00, $07, $00
#_15E1E6: db $02, $00, $01, $00, $1F, $00, $37, $08
#_15E1EE: db $6F, $10, $7F, $00, $02, $07, $02, $01
#_15E1F6: db $1F, $37, $6F, $7F, $00, $00, $F0, $00
#_15E1FE: db $60, $00, $C0, $00, $FC
#_15E203: db $46 ; Word Fill
#_15E204: db $00, $FF ; Word Fill
#_15E206: db $04 ; Direct Copy
#_15E207: db $00, $F0, $60, $C0, $FC
#_15E20C: db $22 ; Byte Fill
#_15E20D: db $FF
#_15E20E: db $29 ; Byte Fill
#_15E20F: db $00
#_15E210: db $04 ; Direct Copy
#_15E211: db $01, $00, $FE, $00, $FC
#_15E216: db $25 ; Byte Fill
#_15E217: db $00
#_15E218: db $0F ; Direct Copy
#_15E219: db $01, $FE, $FC, $5F, $00, $EF, $00, $4F
#_15E221: db $00, $0B, $04, $0D, $02, $07, $00, $03
#_15E229: db $22 ; Byte Fill
#_15E22A: db $00
#_15E22B: db $06 ; Direct Copy
#_15E22C: db $5F, $EF, $4F, $0B, $0D, $07, $03
#_15E233: db $84 ; Repeat Fill
#_15E234: db $A9, $00 ; Repeat Fill bytes
#_15E236: db $13 ; Direct Copy
#_15E237: db $F6, $00, $D6, $20, $B2, $40, $EA, $00
#_15E23F: db $C4, $00, $0C, $00, $F8, $FC, $F6, $D6
#_15E247: db $B2, $EA, $C4, $0C
#_15E24B: db $83 ; Repeat Fill
#_15E24C: db $24, $00 ; Repeat Fill bytes
#_15E24E: db $00 ; Direct Copy
#_15E24F: db $F8
#_15E250: db $44 ; Word Fill
#_15E251: db $00, $FC ; Word Fill
#_15E253: db $02 ; Direct Copy
#_15E254: db $F8, $00, $E0
#_15E257: db $22 ; Byte Fill
#_15E258: db $00
#_15E259: db $03 ; Direct Copy
#_15E25A: db $C0, $E0, $98, $9C
#_15E25E: db $83 ; Repeat Fill
#_15E25F: db $AC, $01 ; Repeat Fill bytes
#_15E261: db $0A ; Direct Copy
#_15E262: db $5B, $04, $7B, $04, $7F, $00, $3F, $00
#_15E26A: db $1D, $00, $0F
#_15E26D: db $44 ; Word Fill
#_15E26E: db $00, $07 ; Word Fill
#_15E270: db $E0, $26 ; EXT Direct Copy
#_15E272: db $7D, $5D, $56, $28, $1E, $08, $07, $05
#_15E27A: db $C3, $00, $FF, $00, $7F, $00, $3C, $00
#_15E282: db $7E, $00, $C3, $00, $7E, $00, $99, $00
#_15E28A: db $3C, $A5, $FF, $C3, $FF, $FF, $E7, $FF
#_15E292: db $64, $00, $E8, $00, $D0, $00, $E0
#_15E299: db $46 ; Word Fill
#_15E29A: db $00, $C0 ; Word Fill
#_15E29C: db $09 ; Direct Copy
#_15E29D: db $E0, $00, $FC, $D8, $B0, $20, $C0, $C0
#_15E2A5: db $40, $A0
#_15E2A7: db $43 ; Word Fill
#_15E2A8: db $0E, $00 ; Word Fill
#_15E2AA: db $13 ; Direct Copy
#_15E2AB: db $0A, $00, $7A, $00, $D2, $20, $C2, $3C
#_15E2B3: db $82, $7C, $7C, $00, $0A, $0A, $0E, $7E
#_15E2BB: db $FE, $BE, $FE, $7C
#_15E2BF: db $27 ; Byte Fill
#_15E2C0: db $00
#_15E2C1: db $00 ; Direct Copy
#_15E2C2: db $08
#_15E2C3: db $2A ; Byte Fill
#_15E2C4: db $00
#_15E2C5: db $00 ; Direct Copy
#_15E2C6: db $08
#_15E2C7: db $22 ; Byte Fill
#_15E2C8: db $00
#_15E2C9: db $E0, $24 ; EXT Direct Copy
#_15E2CB: db $1A, $04, $37, $00, $33, $00, $2F, $00
#_15E2D3: db $3F, $00, $1C, $00, $3B, $00, $3E, $00
#_15E2DB: db $1B, $2E, $2C, $31, $35, $0B, $27, $3E
#_15E2E3: db $E1, $00, $2A, $00, $5A, $00, $94, $00
#_15E2EB: db $38, $00, $70, $00, $C0
#_15E2F0: db $22 ; Byte Fill
#_15E2F1: db $00
#_15E2F2: db $E0, $38 ; EXT Direct Copy
#_15E2F4: db $5F, $F6, $B6, $6C, $F8, $F0, $C0, $00
#_15E2FC: db $26, $19, $43, $3C, $83, $7C, $87, $78
#_15E304: db $7C, $00, $6F, $10, $46, $38, $3F, $00
#_15E30C: db $27, $43, $83, $84, $7B, $5F, $7D, $3F
#_15E314: db $DF, $00, $6F, $80, $BF, $40, $5F, $20
#_15E31C: db $E7, $18, $E3, $1C, $53, $0C, $8C, $00
#_15E324: db $63, $BD, $D3, $FC, $A7, $62, $D3, $8C
#_15E32C: db $FF
#_15E32D: db $84 ; Repeat Fill
#_15E32E: db $B3, $00 ; Repeat Fill bytes
#_15E330: db $1E ; Direct Copy
#_15E331: db $EC, $00, $D4, $08, $A6, $18, $C2, $3C
#_15E339: db $FE, $00, $FD, $FA, $7A, $DC, $BC, $7A
#_15E341: db $FE, $FE, $7F, $00, $6F, $10, $37, $08
#_15E349: db $1F, $00, $A3, $00, $CE, $00, $3C
#_15E350: db $22 ; Byte Fill
#_15E351: db $00
#_15E352: db $06 ; Direct Copy
#_15E353: db $7F, $6F, $37, $1F, $A3, $CE, $3C
#_15E35A: db $44 ; Word Fill
#_15E35B: db $00, $FF ; Word Fill
#_15E35D: db $02 ; Direct Copy
#_15E35E: db $FE, $00, $E0
#_15E361: db $28 ; Byte Fill
#_15E362: db $00
#_15E363: db $03 ; Direct Copy
#_15E364: db $FF, $FF, $FE, $E0
#_15E368: db $23 ; Byte Fill
#_15E369: db $00
#_15E36A: db $02 ; Direct Copy
#_15E36B: db $F0, $00, $C0
#_15E36E: db $2C ; Byte Fill
#_15E36F: db $00
#_15E370: db $01 ; Direct Copy
#_15E371: db $F0, $C0
#_15E373: db $25 ; Byte Fill
#_15E374: db $00
#_15E375: db $00 ; Direct Copy
#_15E376: db $18
#_15E377: db $44 ; Word Fill
#_15E378: db $00, $7E ; Word Fill
#_15E37A: db $43 ; Word Fill
#_15E37B: db $FF, $00 ; Word Fill
#_15E37D: db $43 ; Word Fill
#_15E37E: db $7E, $00 ; Word Fill
#_15E380: db $09 ; Direct Copy
#_15E381: db $18, $00, $18, $7E, $7E, $FF, $FF, $56
#_15E389: db $7E, $18
#_15E38B: db $23 ; Byte Fill
#_15E38C: db $00
#_15E38D: db $83 ; Repeat Fill
#_15E38E: db $B6, $04 ; Repeat Fill bytes
#_15E390: db $00 ; Direct Copy
#_15E391: db $3C
#_15E392: db $44 ; Word Fill
#_15E393: db $00, $7E ; Word Fill
#_15E395: db $00 ; Direct Copy
#_15E396: db $3C
#_15E397: db $22 ; Byte Fill
#_15E398: db $00
#_15E399: db $43 ; Word Fill
#_15E39A: db $3C, $7E ; Word Fill
#_15E39C: db $01 ; Direct Copy
#_15E39D: db $56, $3C
#_15E39F: db $FF ; End of GFX 93

;===================================================================================================

GFX_94:
#_15E3A0: db $05 ; Direct Copy
#_15E3A1: db $00, $00, $01, $00, $02, $01
#_15E3A7: db $43 ; Word Fill
#_15E3A8: db $04, $03 ; Word Fill
#_15E3AA: db $E0, $3D ; EXT Direct Copy
#_15E3AC: db $09, $07, $08, $07, $0E, $07, $00, $01
#_15E3B4: db $03, $07, $07, $0F, $0E, $0E, $00, $00
#_15E3BC: db $E3, $00, $34, $E3, $1B, $F7, $98, $FF
#_15E3C4: db $54, $BF, $F2, $5F, $BB, $07, $00, $E3
#_15E3CC: db $F4, $BB, $9B, $5F, $B7, $F3, $00, $00
#_15E3D4: db $60, $00, $9F, $00, $81, $01, $D8, $40
#_15E3DC: db $C0, $40, $E3, $62, $7F, $3C, $00, $60
#_15E3E4: db $FF, $FE, $A7, $BF, $9D, $43
#_15E3EA: db $23 ; Byte Fill
#_15E3EB: db $00
#_15E3EC: db $13 ; Direct Copy
#_15E3ED: db $E0, $00, $FF, $80, $9F, $60, $97, $68
#_15E3F5: db $F8, $07, $BC, $53, $00, $00, $E0, $7F
#_15E3FD: db $9F, $9F, $FF, $2F
#_15E401: db $25 ; Byte Fill
#_15E402: db $00
#_15E403: db $09 ; Direct Copy
#_15E404: db $03, $00, $07, $03, $0F, $04, $1C, $00
#_15E40C: db $39, $09
#_15E40E: db $22 ; Byte Fill
#_15E40F: db $00
#_15E410: db $04 ; Direct Copy
#_15E411: db $03, $07, $0F, $1F, $36
#_15E416: db $23 ; Byte Fill
#_15E417: db $00
#_15E418: db $03 ; Direct Copy
#_15E419: db $78, $00, $FF, $78
#_15E41D: db $22 ; Byte Fill
#_15E41E: db $FF
#_15E41F: db $07 ; Direct Copy
#_15E420: db $F0, $FF, $40, $9F, $60, $00, $00, $78
#_15E428: db $23 ; Byte Fill
#_15E429: db $FF
#_15E42A: db $E0, $2C ; EXT Direct Copy
#_15E42C: db $9F, $00, $00, $07, $00, $0F, $06, $1C
#_15E434: db $07, $36, $1B, $3B, $1D, $71, $3E, $6D
#_15E43C: db $36, $00, $07, $0F, $1F, $3F, $3F, $77
#_15E444: db $6F, $00, $00, $C0, $00, $A0, $C0, $A0
#_15E44C: db $40, $70, $A0, $90, $60, $30, $E0, $50
#_15E454: db $E0, $00, $C0, $E0, $A0
#_15E459: db $22 ; Byte Fill
#_15E45A: db $F0
#_15E45B: db $00 ; Direct Copy
#_15E45C: db $D0
#_15E45D: db $27 ; Byte Fill
#_15E45E: db $00
#_15E45F: db $07 ; Direct Copy
#_15E460: db $01, $00, $03, $01, $02, $01, $07, $03
#_15E468: db $23 ; Byte Fill
#_15E469: db $00
#_15E46A: db $18 ; Direct Copy
#_15E46B: db $01, $03, $03, $07, $1C, $00, $3E, $1C
#_15E473: db $73, $32, $BF, $4E, $8F, $F6, $17, $FA
#_15E47B: db $37, $FA, $B7, $FA, $1C, $22, $4D, $B1
#_15E483: db $C9
#_15E484: db $22 ; Byte Fill
#_15E485: db $F5
#_15E486: db $83 ; Repeat Fill
#_15E487: db $90, $00 ; Repeat Fill bytes
#_15E489: db $1D ; Direct Copy
#_15E48A: db $0B, $05, $09, $06, $12, $0F, $16, $0F
#_15E492: db $17, $0F, $2D, $1F, $00, $07, $0A, $09
#_15E49A: db $12, $16, $17, $2D, $C0, $00, $E0, $C0
#_15E4A2: db $30, $20, $F0, $E0, $F0, $60
#_15E4A8: db $43 ; Word Fill
#_15E4A9: db $70, $A0 ; Word Fill
#_15E4AB: db $13 ; Direct Copy
#_15E4AC: db $60, $80, $C0, $20, $D0, $10, $90, $50
#_15E4B4: db $50, $60, $03, $00, $07, $00, $0C, $07
#_15E4BC: db $1A, $0F, $1C, $0F
#_15E4C0: db $43 ; Word Fill
#_15E4C1: db $3B, $1C ; Word Fill
#_15E4C3: db $13 ; Direct Copy
#_15E4C4: db $39, $1F, $03, $07, $0F, $1E, $1C, $3B
#_15E4CC: db $3B, $39, $80, $00, $C0, $80, $E0, $40
#_15E4D4: db $60, $80, $E0, $00
#_15E4D8: db $43 ; Word Fill
#_15E4D9: db $A0, $C0 ; Word Fill
#_15E4DB: db $05 ; Direct Copy
#_15E4DC: db $E0, $C0, $80, $C0, $E0, $60
#_15E4E2: db $23 ; Byte Fill
#_15E4E3: db $E0
#_15E4E4: db $17 ; Direct Copy
#_15E4E5: db $00, $00, $40, $00, $BF, $00, $9F, $07
#_15E4ED: db $C7, $47, $E1, $20, $FF, $3C, $7E, $1D
#_15E4F5: db $00, $40, $FF, $E0, $B8, $DF, $C2, $62
#_15E4FD: db $23 ; Byte Fill
#_15E4FE: db $00
#_15E4FF: db $01 ; Direct Copy
#_15E500: db $E0, $00
#_15E502: db $43 ; Word Fill
#_15E503: db $9F, $60 ; Word Fill
#_15E505: db $0E ; Direct Copy
#_15E506: db $F7, $08, $78, $87, $7C, $93, $00, $00
#_15E50E: db $E0, $9F, $9F, $FF, $7F, $6F, $07
#_15E515: db $2E ; Byte Fill
#_15E516: db $00
#_15E517: db $00 ; Direct Copy
#_15E518: db $07
#_15E519: db $26 ; Byte Fill
#_15E51A: db $00
#_15E51B: db $E0, $29 ; EXT Direct Copy
#_15E51D: db $F4, $23, $AA, $71, $B0, $7F, $48, $3F
#_15E525: db $31, $0F, $3F, $05, $1F, $03, $03, $00
#_15E52D: db $F8, $BC, $BD, $4B, $23, $2F, $1F, $03
#_15E535: db $3F, $1C, $1F, $0E, $1F, $00, $1F, $0E
#_15E53D: db $1F, $0F, $3B, $1F, $7D, $3B, $78, $37
#_15E545: db $23, $11
#_15E547: db $22 ; Byte Fill
#_15E548: db $1F
#_15E549: db $0C ; Direct Copy
#_15E54A: db $3F, $7F, $7F, $3F, $D8, $EE, $09, $D7
#_15E552: db $24, $97, $64, $F7, $04
#_15E557: db $83 ; Repeat Fill
#_15E558: db $CC, $01 ; Repeat Fill bytes
#_15E55A: db $E0, $7A ; EXT Direct Copy
#_15E55C: db $FF, $80, $27, $F6, $9B, $9B, $FB, $9B
#_15E564: db $9B, $FF, $59, $19, $8D, $0C, $B3, $02
#_15E56C: db $83, $02, $43, $02, $3F, $1E, $3F, $0F
#_15E574: db $7F, $10, $66, $F3, $CD, $FD, $7D, $21
#_15E57C: db $30, $7F, $FF, $00, $37, $C8, $38, $C7
#_15E584: db $FC, $03, $BF, $48, $37, $C4, $F7, $04
#_15E58C: db $DF, $2C, $FF, $3F, $3F, $FF, $37, $3B
#_15E594: db $FB, $93, $5F, $22, $6E, $31, $38, $1F
#_15E59C: db $37, $1F, $2A, $1F, $28, $1F, $14, $0F
#_15E5A4: db $15, $0F, $5F, $6E, $38, $3F, $2F, $2F
#_15E5AC: db $17, $17, $AC, $C0, $DE, $0C, $7B, $9A
#_15E5B4: db $BF, $CE, $CF, $B6, $C7, $BA, $B7, $FA
#_15E5BC: db $DF, $FA, $AC, $D2, $65, $B1, $C9, $C5
#_15E5C4: db $B5, $FD, $06, $03, $0E, $07, $0D, $07
#_15E5CC: db $0F, $07, $0C, $07, $0B, $04, $07, $03
#_15E5D4: db $0D, $03, $07
#_15E5D7: db $22 ; Byte Fill
#_15E5D8: db $0F
#_15E5D9: db $1C ; Direct Copy
#_15E5DA: db $0C, $0B, $07, $0D, $AE, $F0, $48, $B0
#_15E5E2: db $B8, $C0, $18, $E0, $D0, $20, $30, $C0
#_15E5EA: db $58, $B0, $74, $98, $AE, $48, $B8, $18
#_15E5F2: db $D0, $30, $58, $FC, $2D
#_15E5F7: db $43 ; Word Fill
#_15E5F8: db $1F, $2B ; Word Fill
#_15E5FA: db $02 ; Direct Copy
#_15E5FB: db $1C, $2E, $1F
#_15E5FE: db $83 ; Repeat Fill
#_15E5FF: db $FA, $00 ; Repeat Fill bytes
#_15E601: db $03 ; Direct Copy
#_15E602: db $0B, $07, $05, $03
#_15E606: db $22 ; Byte Fill
#_15E607: db $2F
#_15E608: db $04 ; Direct Copy
#_15E609: db $2E, $17, $17, $0B, $05
#_15E60E: db $83 ; Repeat Fill
#_15E60F: db $3E, $01 ; Repeat Fill bytes
#_15E611: db $16 ; Direct Copy
#_15E612: db $60, $80, $30, $C0, $BC, $C0, $D2, $EC
#_15E61A: db $AF, $DC, $9F, $FA, $60, $E0, $60, $B0
#_15E622: db $BC, $DE, $FF, $FF, $38, $1F, $2C
#_15E629: db $44 ; Word Fill
#_15E62A: db $1F, $2B ; Word Fill
#_15E62C: db $09 ; Direct Copy
#_15E62D: db $2F, $1E, $27, $1F, $13, $0F, $16, $0D
#_15E635: db $38, $2C
#_15E637: db $22 ; Byte Fill
#_15E638: db $2F
#_15E639: db $04 ; Direct Copy
#_15E63A: db $27, $13, $16, $CC, $80
#_15E63F: db $83 ; Repeat Fill
#_15E640: db $2A, $02 ; Repeat Fill bytes
#_15E642: db $E0, $5F ; EXT Direct Copy
#_15E644: db $FF, $0E, $6F, $F6, $87, $FA, $67, $FA
#_15E64C: db $F7, $FA, $CC, $D2, $65, $F1, $69, $E5
#_15E654: db $E5, $F5, $3F, $0C, $1F, $00, $1F, $08
#_15E65C: db $3F, $1D, $76, $3C, $F6, $7C, $EE, $5C
#_15E664: db $FD, $39, $33, $1F, $1F, $3E, $7F, $FF
#_15E66C: db $FF, $FE, $FF, $38, $AE, $49, $3F, $C4
#_15E674: db $FF, $00, $EF, $90, $EC, $93, $F9, $86
#_15E67C: db $F3, $0C, $C7, $36, $3B, $FF, $4F, $4C
#_15E684: db $78, $F0, $03, $00, $05, $03, $0B, $07
#_15E68C: db $17, $0F, $14, $0F, $18, $0F, $0D, $03
#_15E694: db $0B, $04, $03, $05, $0B, $17, $17, $1F
#_15E69C: db $0F, $0F, $F0, $00, $C8, $F0, $E4, $F8
#_15E6A4: db $43 ; Word Fill
#_15E6A5: db $62, $FC ; Word Fill
#_15E6A7: db $E0, $21 ; EXT Direct Copy
#_15E6A9: db $CC, $F0, $38, $C0, $D8, $E0, $F0, $C8
#_15E6B1: db $E4, $E2, $E2, $CC, $38, $D8, $7D, $17
#_15E6B9: db $5F, $07, $E7, $03, $FB, $08, $FE, $02
#_15E6C1: db $FF, $01, $FF, $18, $FF, $1E, $7F, $7F
#_15E6C9: db $FF, $F7
#_15E6CB: db $62 ; Increasing Fill
#_15E6CC: db $FD ; Increasing Fill Start
#_15E6CD: db $1B ; Direct Copy
#_15E6CE: db $FF, $F7, $88, $A4, $1B, $B9, $26, $73
#_15E6D6: db $6C, $F7, $C8, $F7, $88, $F8, $27, $CF
#_15E6DE: db $70, $E7, $E4, $D8, $90, $34, $76, $F8
#_15E6E6: db $F9, $7F, $1A, $7F
#_15E6EA: db $43 ; Word Fill
#_15E6EB: db $2F, $FF ; Word Fill
#_15E6ED: db $E0, $2D ; EXT Direct Copy
#_15E6EF: db $17, $FF, $1B, $FF, $0C, $FF, $17, $FF
#_15E6F7: db $31, $7F, $5F, $DF, $EF, $E7, $F3, $F8
#_15E6FF: db $FE, $9F, $68, $FF, $80, $F7, $88, $E7
#_15E707: db $38, $FC, $63, $F8, $67, $E8, $C7, $FE
#_15E70F: db $81, $97, $FF, $E7, $C7, $9C, $98, $38
#_15E717: db $7C, $08, $07, $04, $03, $03
#_15E71D: db $2A ; Byte Fill
#_15E71E: db $00
#_15E71F: db $02 ; Direct Copy
#_15E720: db $08, $04, $03
#_15E723: db $24 ; Byte Fill
#_15E724: db $00
#_15E725: db $06 ; Direct Copy
#_15E726: db $8A, $FC, $74, $F8, $08, $F0, $F0
#_15E72D: db $28 ; Byte Fill
#_15E72E: db $00
#_15E72F: db $03 ; Direct Copy
#_15E730: db $FA, $74, $08, $F0
#_15E734: db $23 ; Byte Fill
#_15E735: db $00
#_15E736: db $0A ; Direct Copy
#_15E737: db $0E, $05, $0D, $06, $06, $03, $0F, $04
#_15E73F: db $05, $03, $03
#_15E742: db $24 ; Byte Fill
#_15E743: db $00
#_15E744: db $12 ; Direct Copy
#_15E745: db $0E, $0F, $07, $0F, $05, $03, $00, $00
#_15E74D: db $B4, $D8, $38, $C0, $C8, $30, $90, $60
#_15E755: db $E0, $80, $C0
#_15E758: db $24 ; Byte Fill
#_15E759: db $00
#_15E75A: db $0A ; Direct Copy
#_15E75B: db $FC, $38, $C8, $90, $E0, $C0, $00, $00
#_15E763: db $02, $01, $01
#_15E766: db $2C ; Byte Fill
#_15E767: db $00
#_15E768: db $01 ; Direct Copy
#_15E769: db $02, $01
#_15E76B: db $25 ; Byte Fill
#_15E76C: db $00
#_15E76D: db $06 ; Direct Copy
#_15E76E: db $DD, $FE, $32, $FC, $C4, $38, $38
#_15E775: db $28 ; Byte Fill
#_15E776: db $00
#_15E777: db $03 ; Direct Copy
#_15E778: db $FD, $32, $C4, $38
#_15E77C: db $23 ; Byte Fill
#_15E77D: db $00
#_15E77E: db $04 ; Direct Copy
#_15E77F: db $0C, $03, $04, $03, $03
#_15E784: db $2A ; Byte Fill
#_15E785: db $00
#_15E786: db $02 ; Direct Copy
#_15E787: db $0C, $04, $03
#_15E78A: db $24 ; Byte Fill
#_15E78B: db $00
#_15E78C: db $02 ; Direct Copy
#_15E78D: db $22, $FC, $04
#_15E790: db $83 ; Repeat Fill
#_15E791: db $AB, $03 ; Repeat Fill bytes
#_15E793: db $28 ; Byte Fill
#_15E794: db $00
#_15E795: db $03 ; Direct Copy
#_15E796: db $22, $04, $08, $F0
#_15E79A: db $23 ; Byte Fill
#_15E79B: db $00
#_15E79C: db $13 ; Direct Copy
#_15E79D: db $FD, $51, $71, $21, $7F, $1E, $7F, $00
#_15E7A5: db $FF, $1E, $F5, $3F, $F0, $3F, $F8, $1F
#_15E7AD: db $BE, $5E, $61, $7F
#_15E7B1: db $23 ; Byte Fill
#_15E7B2: db $FF
#_15E7B3: db $13 ; Direct Copy
#_15E7B4: db $F7, $08, $F7, $48, $78, $27, $7F, $30
#_15E7BC: db $BF, $10, $DF, $02, $E7, $80, $78, $C0
#_15E7C4: db $F4, $F6, $F8, $F9
#_15E7C8: db $23 ; Byte Fill
#_15E7C9: db $FF
#_15E7CA: db $0A ; Direct Copy
#_15E7CB: db $15, $0F, $1D, $0B, $2B, $14, $3D, $02
#_15E7D3: db $1F, $00, $05
#_15E7D6: db $24 ; Byte Fill
#_15E7D7: db $00
#_15E7D8: db $14 ; Direct Copy
#_15E7D9: db $1F, $1F, $3F, $2B, $1B, $05, $00, $00
#_15E7E1: db $A8, $F0, $28, $F0, $48, $B0, $B0, $40
#_15E7E9: db $A0, $40, $C0, $00, $80
#_15E7EE: db $22 ; Byte Fill
#_15E7EF: db $00
#_15E7F0: db $10 ; Direct Copy
#_15E7F1: db $E8, $E8, $C8, $F0, $60, $40, $80, $00
#_15E7F9: db $FF, $0F, $FE, $07, $FF, $03, $F3, $00
#_15E801: db $C0
#_15E802: db $26 ; Byte Fill
#_15E803: db $00
#_15E804: db $22 ; Byte Fill
#_15E805: db $FF
#_15E806: db $01 ; Direct Copy
#_15E807: db $F3, $C0
#_15E809: db $22 ; Byte Fill
#_15E80A: db $00
#_15E80B: db $0C ; Direct Copy
#_15E80C: db $BF, $E0, $FD, $CF, $FC, $07, $1E, $07
#_15E814: db $1F, $03, $0F, $01, $07
#_15E819: db $22 ; Byte Fill
#_15E81A: db $00
#_15E81B: db $22 ; Byte Fill
#_15E81C: db $FF
#_15E81D: db $0F ; Direct Copy
#_15E81E: db $1F, $1F, $0F, $07, $00, $FF, $18, $FF
#_15E826: db $0E, $FE, $03, $E5, $03, $E7, $02, $82
#_15E82E: db $24 ; Byte Fill
#_15E82F: db $00
#_15E830: db $22 ; Byte Fill
#_15E831: db $FF
#_15E832: db $0F ; Direct Copy
#_15E833: db $E7, $E7, $82, $00, $00, $FF, $40, $F8
#_15E83B: db $47, $FD, $CA, $FF, $04, $3F, $03, $1F
#_15E843: db $24 ; Byte Fill
#_15E844: db $00
#_15E845: db $05 ; Direct Copy
#_15E846: db $FE, $F8, $FD, $FF, $3F, $1F
#_15E84C: db $23 ; Byte Fill
#_15E84D: db $00
#_15E84E: db $0F ; Direct Copy
#_15E84F: db $0E, $00, $1D, $0E, $3E, $11, $79, $3E
#_15E857: db $7E, $23, $F3, $7C, $C9, $7E, $00, $0E
#_15E85F: db $83 ; Repeat Fill
#_15E860: db $C4, $01 ; Repeat Fill bytes
#_15E862: db $01 ; Direct Copy
#_15E863: db $FF, $CF
#_15E865: db $25 ; Byte Fill
#_15E866: db $00
#_15E867: db $09 ; Direct Copy
#_15E868: db $80, $00, $40, $80, $E0, $40, $20, $C0
#_15E870: db $60, $C0
#_15E872: db $22 ; Byte Fill
#_15E873: db $00
#_15E874: db $01 ; Direct Copy
#_15E875: db $80, $40
#_15E877: db $22 ; Byte Fill
#_15E878: db $E0
#_15E879: db $25 ; Byte Fill
#_15E87A: db $00
#_15E87B: db $03 ; Direct Copy
#_15E87C: db $03, $00, $04, $03
#_15E880: db $43 ; Word Fill
#_15E881: db $0B, $07 ; Word Fill
#_15E883: db $01 ; Direct Copy
#_15E884: db $16, $0F
#_15E886: db $22 ; Byte Fill
#_15E887: db $00
#_15E888: db $19 ; Direct Copy
#_15E889: db $03, $04, $0B, $0B, $17, $0C, $00, $3E
#_15E891: db $0C, $F3, $12, $1F, $EE, $EF, $F6, $B7
#_15E899: db $FA, $17, $FA, $F7, $FA, $0C, $32, $ED
#_15E8A1: db $11, $E9
#_15E8A3: db $22 ; Byte Fill
#_15E8A4: db $F5
#_15E8A5: db $12 ; Direct Copy
#_15E8A6: db $07, $00, $0F, $01, $1D, $0E, $3E, $03
#_15E8AE: db $37, $1C, $3B, $1D, $77, $3D, $6F, $33
#_15E8B6: db $07, $0F, $1F
#_15E8B9: db $22 ; Byte Fill
#_15E8BA: db $3F
#_15E8BB: db $83 ; Repeat Fill
#_15E8BC: db $A6, $00 ; Repeat Fill bytes
#_15E8BE: db $83 ; Repeat Fill
#_15E8BF: db $38, $01 ; Repeat Fill bytes
#_15E8C1: db $44 ; Word Fill
#_15E8C2: db $C0, $00 ; Word Fill
#_15E8C4: db $00 ; Direct Copy
#_15E8C5: db $80
#_15E8C6: db $43 ; Word Fill
#_15E8C7: db $60, $C0 ; Word Fill
#_15E8C9: db $01 ; Direct Copy
#_15E8CA: db $00, $80
#_15E8CC: db $23 ; Byte Fill
#_15E8CD: db $C0
#_15E8CE: db $01 ; Direct Copy
#_15E8CF: db $E0, $E0
#_15E8D1: db $29 ; Byte Fill
#_15E8D2: db $00
#_15E8D3: db $44 ; Word Fill
#_15E8D4: db $01, $00 ; Word Fill
#_15E8D6: db $25 ; Byte Fill
#_15E8D7: db $00
#_15E8D8: db $22 ; Byte Fill
#_15E8D9: db $01
#_15E8DA: db $E0, $20 ; EXT Direct Copy
#_15E8DC: db $0E, $00, $1F, $0E, $79, $19, $FF, $27
#_15E8E4: db $E7, $7B, $CB, $FD, $9B, $FD, $7B, $FD
#_15E8EC: db $0E, $11, $66, $F8, $E4, $FA, $FA, $7A
#_15E8F4: db $FC, $0F, $FF, $07, $FF, $03, $E3, $00
#_15E8FC: db $80
#_15E8FD: db $26 ; Byte Fill
#_15E8FE: db $00
#_15E8FF: db $22 ; Byte Fill
#_15E900: db $FF
#_15E901: db $01 ; Direct Copy
#_15E902: db $E3, $80
#_15E904: db $22 ; Byte Fill
#_15E905: db $00
#_15E906: db $00 ; Direct Copy
#_15E907: db $FF
#_15E908: db $8B ; Repeat Fill
#_15E909: db $C9, $04 ; Repeat Fill bytes
#_15E90B: db $22 ; Byte Fill
#_15E90C: db $00
#_15E90D: db $22 ; Byte Fill
#_15E90E: db $FF
#_15E90F: db $83 ; Repeat Fill
#_15E910: db $DB, $04 ; Repeat Fill bytes
#_15E912: db $00 ; Direct Copy
#_15E913: db $00
#_15E914: db $FF ; End of GFX 94

;===================================================================================================

GFX_95:
#_15E915: db $E0, $34 ; EXT Direct Copy
#_15E917: db $00, $00, $08, $00, $1C, $00, $7F, $00
#_15E91F: db $99, $69, $FF, $0F, $9F, $67, $9F, $62
#_15E927: db $00, $08, $14, $7F, $F6, $F0, $F8, $F5
#_15E92F: db $00, $00, $40, $00, $E6, $00, $EF, $06
#_15E937: db $FD, $0E, $D9, $3E, $E2, $1C, $F4, $08
#_15E93F: db $00, $40, $A6, $2F, $FD, $D9, $A2, $54
#_15E947: db $00, $00, $04, $00, $0F
#_15E94C: db $87 ; Repeat Fill
#_15E94D: db $05, $00 ; Repeat Fill bytes
#_15E94F: db $E0, $25 ; EXT Direct Copy
#_15E951: db $68, $9F, $60, $00, $04, $0B, $7F, $F6
#_15E959: db $F0, $F7, $F9, $00, $00, $80, $00, $C6
#_15E961: db $00, $DF, $06, $FD, $0E, $99, $7E, $C2
#_15E969: db $3C, $E4, $18, $00, $80, $46, $5F, $FD
#_15E971: db $99, $42, $24, $18, $00, $3C
#_15E977: db $8A ; Repeat Fill
#_15E978: db $05, $00 ; Repeat Fill bytes
#_15E97A: db $04 ; Direct Copy
#_15E97B: db $7F, $00, $18, $24, $6F
#_15E980: db $83 ; Repeat Fill
#_15E981: db $14, $00 ; Repeat Fill bytes
#_15E983: db $00 ; Direct Copy
#_15E984: db $6A
#_15E985: db $83 ; Repeat Fill
#_15E986: db $1A, $00 ; Repeat Fill bytes
#_15E988: db $00 ; Direct Copy
#_15E989: db $FF
#_15E98A: db $88 ; Repeat Fill
#_15E98B: db $1F, $00 ; Repeat Fill bytes
#_15E98D: db $04 ; Direct Copy
#_15E98E: db $F8, $00, $40, $A6, $5F
#_15E993: db $83 ; Repeat Fill
#_15E994: db $2C, $00 ; Repeat Fill bytes
#_15E996: db $00 ; Direct Copy
#_15E997: db $D8
#_15E998: db $24 ; Byte Fill
#_15E999: db $00
#_15E99A: db $11 ; Direct Copy
#_15E99B: db $40, $76, $FF, $34, $7E, $3C, $7E, $18
#_15E9A3: db $3C, $00, $18, $00, $00, $40, $7E, $3C
#_15E9AB: db $3C, $18
#_15E9AD: db $24 ; Byte Fill
#_15E9AE: db $00
#_15E9AF: db $06 ; Direct Copy
#_15E9B0: db $41, $00, $63, $00, $77, $00, $36
#_15E9B7: db $2F ; Byte Fill
#_15E9B8: db $00
#_15E9B9: db $14 ; Direct Copy
#_15E9BA: db $03, $03, $0F, $07, $1F, $0C, $1F, $19
#_15E9C2: db $3E, $18, $3F, $1C, $7F, $00, $00, $03
#_15E9CA: db $07, $0F, $1E, $1F, $1F
#_15E9CF: db $22 ; Byte Fill
#_15E9D0: db $00
#_15E9D1: db $14 ; Direct Copy
#_15E9D2: db $C0, $C0, $F0, $E0, $F8, $30, $F8, $98
#_15E9DA: db $7C, $18, $FC, $38, $FE, $00, $00, $C0
#_15E9E2: db $E0, $F0, $78, $F8, $F8
#_15E9E7: db $22 ; Byte Fill
#_15E9E8: db $00
#_15E9E9: db $14 ; Direct Copy
#_15E9EA: db $03, $01, $07, $02, $1D, $08, $7F, $2D
#_15E9F2: db $FF, $67, $FF, $2B, $FF, $00, $00, $03
#_15E9FA: db $05, $0F, $6F, $6F, $2F
#_15E9FF: db $22 ; Byte Fill
#_15EA00: db $00
#_15EA01: db $0C ; Direct Copy
#_15EA02: db $C0, $C0, $E0, $E0, $F8, $F0, $FE, $F4
#_15EA0A: db $FF, $F0, $FF, $F4, $FF
#_15EA0F: db $84 ; Repeat Fill
#_15EA10: db $E8, $00 ; Repeat Fill bytes
#_15EA12: db $03 ; Direct Copy
#_15EA13: db $F6, $F6, $F4, $01
#_15EA17: db $83 ; Repeat Fill
#_15EA18: db $F2, $00 ; Repeat Fill bytes
#_15EA1A: db $00 ; Direct Copy
#_15EA1B: db $03
#_15EA1C: db $43 ; Word Fill
#_15EA1D: db $0E, $06 ; Word Fill
#_15EA1F: db $45 ; Word Fill
#_15EA20: db $1C, $0C ; Word Fill
#_15EA22: db $04 ; Direct Copy
#_15EA23: db $01, $02, $04, $09, $09
#_15EA28: db $22 ; Byte Fill
#_15EA29: db $13
#_15EA2A: db $05 ; Direct Copy
#_15EA2B: db $C0, $00, $E0, $C0, $40, $00
#_15EA31: db $43 ; Word Fill
#_15EA32: db $C0, $80 ; Word Fill
#_15EA34: db $E0, $4A ; EXT Direct Copy
#_15EA36: db $E0, $C0, $60, $40, $70, $60, $C0, $20
#_15EA3E: db $C0, $40, $40, $20, $A0, $90, $01, $00
#_15EA46: db $22, $05, $0D, $2E, $13, $7D, $37, $18
#_15EA4E: db $77, $28, $7F, $25, $4E, $35, $00, $05
#_15EA56: db $2E, $7D, $38, $29, $23, $3B, $00, $00
#_15EA5E: db $C0, $6C, $E8, $24, $F4, $D2, $FC, $3A
#_15EA66: db $F8, $08, $FC, $0C, $FC, $44, $00, $6C
#_15EA6E: db $24, $D2, $3A, $08, $CC, $A4, $7F, $00
#_15EA76: db $77, $00, $70, $00, $74, $00, $A3, $00
#_15EA7E: db $84, $00, $78
#_15EA81: db $22 ; Byte Fill
#_15EA82: db $00
#_15EA83: db $04 ; Direct Copy
#_15EA84: db $6A, $57, $50, $50, $20
#_15EA89: db $22 ; Byte Fill
#_15EA8A: db $00
#_15EA8B: db $00 ; Direct Copy
#_15EA8C: db $F8
#_15EA8D: db $44 ; Word Fill
#_15EA8E: db $00, $38 ; Word Fill
#_15EA90: db $02 ; Direct Copy
#_15EA91: db $BC, $00, $12
#_15EA94: db $83 ; Repeat Fill
#_15EA95: db $89, $01 ; Repeat Fill bytes
#_15EA97: db $22 ; Byte Fill
#_15EA98: db $00
#_15EA99: db $00 ; Direct Copy
#_15EA9A: db $D8
#_15EA9B: db $22 ; Byte Fill
#_15EA9C: db $28
#_15EA9D: db $00 ; Direct Copy
#_15EA9E: db $10
#_15EA9F: db $22 ; Byte Fill
#_15EAA0: db $00
#_15EAA1: db $00 ; Direct Copy
#_15EAA2: db $7F
#_15EAA3: db $44 ; Word Fill
#_15EAA4: db $00, $1C ; Word Fill
#_15EAA6: db $06 ; Direct Copy
#_15EAA7: db $1E, $00, $48, $00, $43, $00, $3C
#_15EAAE: db $22 ; Byte Fill
#_15EAAF: db $00
#_15EAB0: db $00 ; Direct Copy
#_15EAB1: db $7B
#_15EAB2: db $22 ; Byte Fill
#_15EAB3: db $14
#_15EAB4: db $00 ; Direct Copy
#_15EAB5: db $08
#_15EAB6: db $22 ; Byte Fill
#_15EAB7: db $00
#_15EAB8: db $00 ; Direct Copy
#_15EAB9: db $F8
#_15EABA: db $46 ; Word Fill
#_15EABB: db $00, $E0 ; Word Fill
#_15EABD: db $04 ; Direct Copy
#_15EABE: db $68, $00, $08, $00, $F0
#_15EAC3: db $22 ; Byte Fill
#_15EAC4: db $00
#_15EAC5: db $00 ; Direct Copy
#_15EAC6: db $B8
#_15EAC7: db $22 ; Byte Fill
#_15EAC8: db $A0
#_15EAC9: db $00 ; Direct Copy
#_15EACA: db $40
#_15EACB: db $22 ; Byte Fill
#_15EACC: db $00
#_15EACD: db $00 ; Direct Copy
#_15EACE: db $3F
#_15EACF: db $44 ; Word Fill
#_15EAD0: db $00, $70 ; Word Fill
#_15EAD2: db $04 ; Direct Copy
#_15EAD3: db $74, $00, $64, $00, $38
#_15EAD8: db $24 ; Byte Fill
#_15EAD9: db $00
#_15EADA: db $00 ; Direct Copy
#_15EADB: db $2F
#_15EADC: db $22 ; Byte Fill
#_15EADD: db $50
#_15EADE: db $00 ; Direct Copy
#_15EADF: db $20
#_15EAE0: db $22 ; Byte Fill
#_15EAE1: db $00
#_15EAE2: db $00 ; Direct Copy
#_15EAE3: db $70
#_15EAE4: db $44 ; Word Fill
#_15EAE5: db $00, $38 ; Word Fill
#_15EAE7: db $04 ; Direct Copy
#_15EAE8: db $7C, $00, $54, $00, $38
#_15EAED: db $24 ; Byte Fill
#_15EAEE: db $00
#_15EAEF: db $00 ; Direct Copy
#_15EAF0: db $50
#_15EAF1: db $22 ; Byte Fill
#_15EAF2: db $28
#_15EAF3: db $00 ; Direct Copy
#_15EAF4: db $10
#_15EAF5: db $22 ; Byte Fill
#_15EAF6: db $00
#_15EAF7: db $1E ; Direct Copy
#_15EAF8: db $10, $10, $38, $28, $28, $38, $10, $10
#_15EB00: db $00, $00, $08, $48, $14, $1C, $08, $08
#_15EB08: db $10, $28, $38, $10, $00, $48, $1C, $08
#_15EB10: db $00, $00, $1C, $00, $38, $00, $30
#_15EB17: db $22 ; Byte Fill
#_15EB18: db $00
#_15EB19: db $04 ; Direct Copy
#_15EB1A: db $30, $00, $38, $00, $1C
#_15EB1F: db $28 ; Byte Fill
#_15EB20: db $00
#_15EB21: db $0B ; Direct Copy
#_15EB22: db $1F, $7F, $0B, $7F, $20, $7F, $1B, $7F
#_15EB2A: db $0E, $3F, $00, $1E
#_15EB2E: db $23 ; Byte Fill
#_15EB2F: db $00
#_15EB30: db $04 ; Direct Copy
#_15EB31: db $1F, $0F, $23, $1B, $0E
#_15EB36: db $22 ; Byte Fill
#_15EB37: db $00
#_15EB38: db $0B ; Direct Copy
#_15EB39: db $F8, $FE, $D0, $FE, $04, $FE, $D8, $FE
#_15EB41: db $70, $FC, $00, $78
#_15EB45: db $23 ; Byte Fill
#_15EB46: db $00
#_15EB47: db $04 ; Direct Copy
#_15EB48: db $F8, $F0, $C4, $D8, $70
#_15EB4D: db $22 ; Byte Fill
#_15EB4E: db $00
#_15EB4F: db $0B ; Direct Copy
#_15EB50: db $1C, $7F, $0B, $7F, $14, $6F, $26, $7F
#_15EB58: db $1C, $3E, $00, $1C
#_15EB5C: db $23 ; Byte Fill
#_15EB5D: db $00
#_15EB5E: db $04 ; Direct Copy
#_15EB5F: db $1F, $3B, $2C, $3E, $1C
#_15EB64: db $22 ; Byte Fill
#_15EB65: db $00
#_15EB66: db $0B ; Direct Copy
#_15EB67: db $F8, $FE, $C4, $FE, $14, $EE, $4C, $FE
#_15EB6F: db $38, $7C, $00, $38
#_15EB73: db $23 ; Byte Fill
#_15EB74: db $00
#_15EB75: db $04 ; Direct Copy
#_15EB76: db $F8, $DC, $2C, $7C, $38
#_15EB7B: db $22 ; Byte Fill
#_15EB7C: db $00
#_15EB7D: db $03 ; Direct Copy
#_15EB7E: db $1B, $0B, $3F, $1A
#_15EB82: db $43 ; Word Fill
#_15EB83: db $3F, $1D ; Word Fill
#_15EB85: db $09 ; Direct Copy
#_15EB86: db $3E, $1D, $1C, $0B, $0E, $03, $03, $00
#_15EB8E: db $14, $25
#_15EB90: db $22 ; Byte Fill
#_15EB91: db $23
#_15EB92: db $E0, $4A ; EXT Direct Copy
#_15EB94: db $17, $0F, $03, $B0, $A0, $F8, $B0, $F8
#_15EB9C: db $70, $B8, $30, $F8, $70, $70, $A0, $E0
#_15EBA4: db $80, $80, $00, $50, $48, $88, $C8, $88
#_15EBAC: db $D0, $E0, $80, $1A, $69, $3B, $59, $BD
#_15EBB4: db $90, $9E, $80, $1F, $2B, $2C, $04, $17
#_15EBBC: db $03, $03, $00, $77, $67, $A7, $93, $30
#_15EBC4: db $0B, $04, $03, $B8, $24, $BC, $34, $70
#_15EBCC: db $18, $F0, $08, $F2, $A2, $62, $42, $C8
#_15EBD4: db $84, $90, $08, $D4, $C4, $C8, $98, $12
#_15EBDC: db $A2, $44, $88
#_15EBDF: db $2C ; Byte Fill
#_15EBE0: db $00
#_15EBE1: db $02 ; Direct Copy
#_15EBE2: db $01, $01, $03
#_15EBE5: db $26 ; Byte Fill
#_15EBE6: db $00
#_15EBE7: db $00 ; Direct Copy
#_15EBE8: db $01
#_15EBE9: db $2C ; Byte Fill
#_15EBEA: db $00
#_15EBEB: db $02 ; Direct Copy
#_15EBEC: db $80, $80, $C0
#_15EBEF: db $26 ; Byte Fill
#_15EBF0: db $00
#_15EBF1: db $00 ; Direct Copy
#_15EBF2: db $80
#_15EBF3: db $24 ; Byte Fill
#_15EBF4: db $00
#_15EBF5: db $84 ; Repeat Fill
#_15EBF6: db $C3, $00 ; Repeat Fill bytes
#_15EBF8: db $01 ; Direct Copy
#_15EBF9: db $0E, $1F
#_15EBFB: db $43 ; Word Fill
#_15EBFC: db $0C, $3F ; Word Fill
#_15EBFE: db $22 ; Byte Fill
#_15EBFF: db $00
#_15EC00: db $01 ; Direct Copy
#_15EC01: db $03, $07
#_15EC03: db $22 ; Byte Fill
#_15EC04: db $0F
#_15EC05: db $24 ; Byte Fill
#_15EC06: db $00
#_15EC07: db $06 ; Direct Copy
#_15EC08: db $C0, $C0, $F0, $F0, $F8, $10, $F8
#_15EC0F: db $43 ; Word Fill
#_15EC10: db $68, $9C ; Word Fill
#_15EC12: db $22 ; Byte Fill
#_15EC13: db $00
#_15EC14: db $04 ; Direct Copy
#_15EC15: db $C0, $F0, $F0, $98, $98
#_15EC1A: db $22 ; Byte Fill
#_15EC1B: db $00
#_15EC1C: db $0A ; Direct Copy
#_15EC1D: db $03, $03, $07, $06, $0F, $04, $0F, $06
#_15EC25: db $0F, $03, $07
#_15EC28: db $83 ; Repeat Fill
#_15EC29: db $0E, $03 ; Repeat Fill bytes
#_15EC2B: db $00 ; Direct Copy
#_15EC2C: db $03
#_15EC2D: db $22 ; Byte Fill
#_15EC2E: db $07
#_15EC2F: db $01 ; Direct Copy
#_15EC30: db $03, $01
#_15EC32: db $22 ; Byte Fill
#_15EC33: db $00
#_15EC34: db $E0, $2C ; EXT Direct Copy
#_15EC36: db $C0, $40, $E0, $A0, $70, $00, $F0, $20
#_15EC3E: db $F0, $40, $E0, $00, $C0, $00, $00, $C0
#_15EC46: db $60, $E0, $E0, $C0, $80, $00, $00, $02
#_15EC4E: db $01, $05, $0A, $0A, $15, $15, $2A, $2A
#_15EC56: db $55, $55, $2A, $2A, $15, $00, $02, $05
#_15EC5E: db $0A, $15, $2A, $55, $2A
#_15EC63: db $23 ; Byte Fill
#_15EC64: db $00
#_15EC65: db $13 ; Direct Copy
#_15EC66: db $40, $80, $A0, $40, $50, $A8, $A8, $54
#_15EC6E: db $54, $A8, $AA, $54, $00, $00, $40, $A0
#_15EC76: db $50, $A8, $54, $AA
#_15EC7A: db $22 ; Byte Fill
#_15EC7B: db $00
#_15EC7C: db $83 ; Repeat Fill
#_15EC7D: db $63, $03 ; Repeat Fill bytes
#_15EC7F: db $07 ; Direct Copy
#_15EC80: db $3F, $0D, $7E, $2C, $7F, $0E, $7F, $2B
#_15EC88: db $84 ; Repeat Fill
#_15EC89: db $CF, $00 ; Repeat Fill bytes
#_15EC8B: db $03 ; Direct Copy
#_15EC8C: db $2E, $2F, $0F, $2F
#_15EC90: db $22 ; Byte Fill
#_15EC91: db $00
#_15EC92: db $0B ; Direct Copy
#_15EC93: db $C0, $C0, $E0, $60, $FC, $B0, $7E, $34
#_15EC9B: db $FE, $70, $FE, $D4
#_15EC9F: db $84 ; Repeat Fill
#_15ECA0: db $E7, $00 ; Repeat Fill bytes
#_15ECA2: db $03 ; Direct Copy
#_15ECA3: db $74, $F4, $F0, $F4
#_15ECA7: db $23 ; Byte Fill
#_15ECA8: db $00
#_15ECA9: db $13 ; Direct Copy
#_15ECAA: db $1E, $00, $3F, $1E, $7F, $3F, $7E, $1C
#_15ECB2: db $DF, $63, $8F, $7D, $00, $00, $1E, $21
#_15ECBA: db $40, $63, $FC, $FE
#_15ECBE: db $25 ; Byte Fill
#_15ECBF: db $00
#_15ECC0: db $09 ; Direct Copy
#_15ECC1: db $E0, $00, $F8, $E0, $FC, $F8, $1E, $1C
#_15ECC9: db $07, $06
#_15ECCB: db $22 ; Byte Fill
#_15ECCC: db $00
#_15ECCD: db $E0, $34 ; EXT Direct Copy
#_15ECCF: db $E0, $18, $04, $E2, $F9, $0C, $0C, $00
#_15ECD7: db $03, $26, $11, $5F, $06, $3F, $13, $7C
#_15ECDF: db $20, $DB, $50, $D6, $53, $0C, $03, $17
#_15ECE7: db $19, $20, $47, $AF, $AF, $00, $00, $E0
#_15ECEF: db $08, $72, $EC, $58, $B8, $A4, $5C, $D4
#_15ECF7: db $EE, $DA, $24, $7D, $CA, $00, $08, $FC
#_15ECFF: db $B8, $DC, $2E, $E4, $EA
#_15ED04: db $83 ; Repeat Fill
#_15ED05: db $15, $03 ; Repeat Fill bytes
#_15ED07: db $13 ; Direct Copy
#_15ED08: db $07, $01, $0F, $07, $1E, $0E, $5E, $0A
#_15ED10: db $BF, $18, $5E, $00, $00, $01, $06, $08
#_15ED18: db $11, $55, $E3, $73
#_15ED1C: db $83 ; Repeat Fill
#_15ED1D: db $0C, $04 ; Repeat Fill bytes
#_15ED1F: db $E0, $4F ; EXT Direct Copy
#_15ED21: db $38, $20, $24, $18, $74, $38, $DE, $74
#_15ED29: db $BE, $EC, $E6, $44, $00, $E0, $D8, $E4
#_15ED31: db $F4, $FA, $F2, $FA, $02, $07, $07, $1F
#_15ED39: db $1B, $3F, $3B, $7F, $37, $7F, $19, $3F
#_15ED41: db $07, $1F, $00, $07, $03, $07, $1F, $3F
#_15ED49: db $3F, $1F, $07, $00, $40, $E0, $60, $B8
#_15ED51: db $78, $BC, $3C, $DE, $0C, $FE, $98, $FC
#_15ED59: db $E0, $F8, $00, $E0, $C0, $A0, $B8, $DC
#_15ED61: db $FC, $F8, $E0, $00, $0C, $3F, $0A, $3F
#_15ED69: db $07, $1F, $03, $1F, $00, $0F, $00, $03
#_15ED71: db $23 ; Byte Fill
#_15ED72: db $00
#_15ED73: db $03 ; Direct Copy
#_15ED74: db $0F, $0F, $07, $03
#_15ED78: db $23 ; Byte Fill
#_15ED79: db $00
#_15ED7A: db $0B ; Direct Copy
#_15ED7B: db $08, $FC, $18, $FC, $F0, $F8, $E0, $F8
#_15ED83: db $00, $F0, $00, $C0
#_15ED87: db $23 ; Byte Fill
#_15ED88: db $00
#_15ED89: db $03 ; Direct Copy
#_15ED8A: db $F8, $F8, $F0, $E0
#_15ED8E: db $24 ; Byte Fill
#_15ED8F: db $00
#_15ED90: db $00 ; Direct Copy
#_15ED91: db $03
#_15ED92: db $44 ; Word Fill
#_15ED93: db $03, $07 ; Word Fill
#_15ED95: db $02 ; Direct Copy
#_15ED96: db $1F, $17, $3F
#_15ED99: db $85 ; Repeat Fill
#_15ED9A: db $8A, $04 ; Repeat Fill bytes
#_15ED9C: db $09 ; Direct Copy
#_15ED9D: db $01, $03, $03, $07, $1F, $1F, $07, $00
#_15EDA5: db $00, $C0
#_15EDA7: db $43 ; Word Fill
#_15EDA8: db $40, $A0 ; Word Fill
#_15EDAA: db $03 ; Direct Copy
#_15EDAB: db $20, $D8, $08, $FC
#_15EDAF: db $85 ; Repeat Fill
#_15EDB0: db $A2, $04 ; Repeat Fill bytes
#_15EDB2: db $22 ; Byte Fill
#_15EDB3: db $80
#_15EDB4: db $05 ; Direct Copy
#_15EDB5: db $C0, $F8, $F8, $E0, $00, $15
#_15EDBB: db $85 ; Repeat Fill
#_15EDBC: db $95, $03 ; Repeat Fill bytes
#_15EDBE: db $04 ; Direct Copy
#_15EDBF: db $15, $15, $2A, $0A, $15
#_15EDC4: db $23 ; Byte Fill
#_15EDC5: db $00
#_15EDC6: db $11 ; Direct Copy
#_15EDC7: db $15, $0A, $15, $2A, $15, $0A, $00, $00
#_15EDCF: db $54, $AA, $AA, $54, $54, $A8, $A8, $54
#_15EDD7: db $10, $28
#_15EDD9: db $25 ; Byte Fill
#_15EDDA: db $00
#_15EDDB: db $04 ; Direct Copy
#_15EDDC: db $54, $AA, $54, $A8, $10
#_15EDE1: db $22 ; Byte Fill
#_15EDE2: db $00
#_15EDE3: db $0B ; Direct Copy
#_15EDE4: db $5C, $FF, $2B, $DF, $5C, $FF, $36, $7F
#_15EDEC: db $02, $37, $01, $03
#_15EDF0: db $83 ; Repeat Fill
#_15EDF1: db $16, $03 ; Repeat Fill bytes
#_15EDF3: db $03 ; Direct Copy
#_15EDF4: db $7F, $5B, $7C, $37
#_15EDF8: db $83 ; Repeat Fill
#_15EDF9: db $76, $03 ; Repeat Fill bytes
#_15EDFB: db $0B ; Direct Copy
#_15EDFC: db $3A, $FF, $D4, $FB, $3A, $FF, $6C, $FE
#_15EE04: db $C0, $6C, $80, $C0
#_15EE08: db $83 ; Repeat Fill
#_15EE09: db $2E, $03 ; Repeat Fill bytes
#_15EE0B: db $10 ; Direct Copy
#_15EE0C: db $FE, $DA, $3E, $EC, $40, $80, $00, $00
#_15EE14: db $DF, $63, $76, $14, $7F, $3F, $3F, $1E
#_15EE1C: db $1E
#_15EE1D: db $26 ; Byte Fill
#_15EE1E: db $00
#_15EE1F: db $04 ; Direct Copy
#_15EE20: db $FC, $6B, $40, $21, $1E
#_15EE25: db $22 ; Byte Fill
#_15EE26: db $00
#_15EE27: db $06 ; Direct Copy
#_15EE28: db $3B, $3A, $FF, $E2, $E2, $80, $80
#_15EE2F: db $28 ; Byte Fill
#_15EE30: db $00
#_15EE31: db $03 ; Direct Copy
#_15EE32: db $C5, $1D, $62, $80
#_15EE36: db $23 ; Byte Fill
#_15EE37: db $00
#_15EE38: db $E0, $23 ; EXT Direct Copy
#_15EE3A: db $DB, $50, $7C, $20, $3F, $13, $9F, $06
#_15EE42: db $43, $8C, $02, $43, $30, $30, $00, $00
#_15EE4A: db $AF, $47, $20, $19, $8C, $43, $30, $00
#_15EE52: db $DE, $28, $DE, $AA, $BC, $56, $78, $98
#_15EE5A: db $F4, $72, $D8, $C6
#_15EE5E: db $83 ; Repeat Fill
#_15EE5F: db $9E, $00 ; Repeat Fill bytes
#_15EE61: db $E0, $37 ; EXT Direct Copy
#_15EE63: db $E8, $6A, $D6, $98, $72, $C6, $18, $00
#_15EE6B: db $5F, $01, $5F, $06, $73, $12, $93, $00
#_15EE73: db $7F, $14, $14, $00, $17, $00, $08, $00
#_15EE7B: db $72, $79, $6C, $FE, $6B, $1F, $1F, $08
#_15EE83: db $4E, $0C, $FC, $38, $FC, $18, $F8, $70
#_15EE8B: db $F0, $40, $40, $00, $A0, $00, $40, $00
#_15EE93: db $F2, $C4, $24, $08, $B0, $C0, $E0, $40
#_15EE9B: db $FF ; End of GFX 95

;===================================================================================================

GFX_96:
#_15EE9C: db $E0, $38 ; EXT Direct Copy
#_15EE9E: db $03, $00, $0C, $00, $15, $00, $17, $00
#_15EEA6: db $2F, $00, $37, $00, $3B, $10, $34, $18
#_15EEAE: db $03, $0F, $1E, $1C, $33, $38, $3C, $3F
#_15EEB6: db $C0, $00, $E2, $00, $B7, $60, $DE, $30
#_15EEBE: db $69, $90, $EA, $10, $FE, $00, $FA, $00
#_15EEC6: db $C0, $62, $F5, $BA, $9F, $FE, $1E, $16
#_15EECE: db $03, $00, $05, $02, $0E, $05, $1F, $08
#_15EED6: db $28
#_15EED7: db $43 ; Word Fill
#_15EED8: db $07, $2F ; Word Fill
#_15EEDA: db $E0, $41 ; EXT Direct Copy
#_15EEDC: db $00, $37, $00, $03, $07, $0D, $18, $3F
#_15EEE4: db $3F, $37, $38, $C0, $00, $30, $00, $D8
#_15EEEC: db $00, $78, $C0, $6C, $C0, $CC, $80, $EC
#_15EEF4: db $00, $BC, $08, $C0, $F0, $F8, $F8, $F4
#_15EEFC: db $F4, $BC, $F4, $03, $00, $0F, $00, $1B
#_15EF04: db $0E, $1F, $09, $35, $1B, $37, $1C, $7F
#_15EF0C: db $18, $F8, $00, $03, $0E, $1F, $19, $3B
#_15EF14: db $3F, $7C, $9F, $C0, $00, $F0, $00, $58
#_15EF1C: db $00, $A8
#_15EF1E: db $44 ; Word Fill
#_15EF1F: db $00, $F4 ; Word Fill
#_15EF21: db $E0, $23 ; EXT Direct Copy
#_15EF23: db $EC, $00, $3C, $00, $C0, $30, $B8, $F8
#_15EF2B: db $EC, $8C, $1C, $F4, $03, $00, $05, $00
#_15EF33: db $0B, $00, $1E, $01, $2D, $06, $2E, $01
#_15EF3B: db $37, $00, $33, $00, $03, $06, $0D, $1F
#_15EF43: db $3E, $37, $39, $3C
#_15EF47: db $83 ; Repeat Fill
#_15EF48: db $78, $00 ; Repeat Fill bytes
#_15EF4A: db $E0, $2B ; EXT Direct Copy
#_15EF4C: db $D8, $20, $38, $D0, $FC, $20, $7C, $E0
#_15EF54: db $EA, $00, $36, $00, $C0, $30, $F8, $D8
#_15EF5C: db $34, $F4, $FE, $FE, $03, $00, $0F, $02
#_15EF64: db $19, $0F, $1A, $0D, $26, $19, $31, $0F
#_15EF6C: db $6B, $06, $76, $00, $03, $0F, $1F, $1D
#_15EF74: db $39, $3F, $7F, $5F
#_15EF78: db $83 ; Repeat Fill
#_15EF79: db $78, $00 ; Repeat Fill bytes
#_15EF7B: db $E0, $2E ; EXT Direct Copy
#_15EF7D: db $B8, $00, $C8, $80, $D4, $80, $E4, $80
#_15EF85: db $94, $00, $6C, $00, $C0, $30, $D8, $F8
#_15EF8D: db $FC, $FC, $EC, $9C, $20, $00, $40, $00
#_15EF95: db $F0, $00, $D0, $00, $F8, $00, $CF, $00
#_15EF9D: db $C9, $00, $FC, $00, $20, $60, $B0, $F0
#_15EFA5: db $B8, $FF, $BF, $FF, $04, $00, $02
#_15EFAC: db $44 ; Word Fill
#_15EFAD: db $00, $0F ; Word Fill
#_15EFAF: db $0F ; Direct Copy
#_15EFB0: db $1F, $00, $F7, $00, $93, $00, $3F, $00
#_15EFB8: db $04, $06, $0D, $0B, $1D, $FB, $FD, $FF
#_15EFC0: db $23 ; Byte Fill
#_15EFC1: db $00
#_15EFC2: db $0A ; Direct Copy
#_15EFC3: db $3C, $00, $7C, $00, $D0, $00, $BF, $00
#_15EFCB: db $FF, $00, $EF
#_15EFCE: db $22 ; Byte Fill
#_15EFCF: db $00
#_15EFD0: db $05 ; Direct Copy
#_15EFD1: db $3C, $50, $BC, $FF, $C5, $95
#_15EFD7: db $27 ; Byte Fill
#_15EFD8: db $00
#_15EFD9: db $06 ; Direct Copy
#_15EFDA: db $04, $00, $EC, $00, $FC, $00, $74
#_15EFE1: db $24 ; Byte Fill
#_15EFE2: db $00
#_15EFE3: db $03 ; Direct Copy
#_15EFE4: db $0C, $9C, $54, $EC
#_15EFE8: db $25 ; Byte Fill
#_15EFE9: db $00
#_15EFEA: db $88 ; Repeat Fill
#_15EFEB: db $24, $01 ; Repeat Fill bytes
#_15EFED: db $23 ; Byte Fill
#_15EFEE: db $00
#_15EFEF: db $84 ; Repeat Fill
#_15EFF0: db $32, $01 ; Repeat Fill bytes
#_15EFF2: db $29 ; Byte Fill
#_15EFF3: db $00
#_15EFF4: db $84 ; Repeat Fill
#_15EFF5: db $40, $01 ; Repeat Fill bytes
#_15EFF7: db $25 ; Byte Fill
#_15EFF8: db $00
#_15EFF9: db $0F ; Direct Copy
#_15EFFA: db $0C, $9C, $54, $3B, $04, $3C, $13, $3E
#_15F002: db $01, $3F, $00, $13, $00, $0C, $00, $03
#_15F00A: db $22 ; Byte Fill
#_15F00B: db $00
#_15F00C: db $09 ; Direct Copy
#_15F00D: db $37, $2F, $3F, $2F, $1C, $0F, $03, $00
#_15F015: db $16, $04
#_15F017: db $43 ; Word Fill
#_15F018: db $EC, $00 ; Word Fill
#_15F01A: db $06 ; Direct Copy
#_15F01B: db $DC, $08, $68, $00, $B0, $00, $C0
#_15F022: db $22 ; Byte Fill
#_15F023: db $00
#_15F024: db $14 ; Direct Copy
#_15F025: db $FA, $FC, $DC, $34, $F8, $F0, $C0, $00
#_15F02D: db $29, $10, $3F, $10, $7E, $00, $7F, $00
#_15F035: db $3F, $00, $12, $00, $0F
#_15F03A: db $22 ; Byte Fill
#_15F03B: db $00
#_15F03C: db $06 ; Direct Copy
#_15F03D: db $3F, $3E, $7F, $5D, $21, $1F, $0F
#_15F044: db $43 ; Word Fill
#_15F045: db $00, $5C ; Word Fill
#_15F047: db $09 ; Direct Copy
#_15F048: db $08, $FC, $88, $F8, $10, $D8, $10, $30
#_15F050: db $00, $C0
#_15F052: db $22 ; Byte Fill
#_15F053: db $00
#_15F054: db $0E ; Direct Copy
#_15F055: db $FC, $F4, $64, $C8, $28, $F0, $C0, $00
#_15F05D: db $5F, $00, $2F, $00, $2C, $00, $37
#_15F064: db $85 ; Repeat Fill
#_15F065: db $87, $01 ; Repeat Fill bytes
#_15F067: db $22 ; Byte Fill
#_15F068: db $00
#_15F069: db $03 ; Direct Copy
#_15F06A: db $7F, $34, $3F, $3B
#_15F06E: db $83 ; Repeat Fill
#_15F06F: db $94, $01 ; Repeat Fill bytes
#_15F071: db $0C ; Direct Copy
#_15F072: db $F4, $00, $BC, $00, $5C, $00, $A4, $00
#_15F07A: db $A8, $00, $30, $00, $C0
#_15F07F: db $22 ; Byte Fill
#_15F080: db $00
#_15F081: db $0D ; Direct Copy
#_15F082: db $FC, $CC, $E4, $FC, $78, $F0, $C0, $00
#_15F08A: db $3D, $10, $3F, $08, $36, $09
#_15F090: db $83 ; Repeat Fill
#_15F091: db $08, $00 ; Repeat Fill bytes
#_15F093: db $02 ; Direct Copy
#_15F094: db $18, $00, $07
#_15F097: db $22 ; Byte Fill
#_15F098: db $00
#_15F099: db $00 ; Direct Copy
#_15F09A: db $3E
#_15F09B: db $22 ; Byte Fill
#_15F09C: db $3F
#_15F09D: db $10 ; Direct Copy
#_15F09E: db $38, $1F, $07, $00, $6A, $00, $5C, $10
#_15F0A6: db $FC, $08, $AC, $08, $58, $10, $B0, $00
#_15F0AE: db $C0
#_15F0AF: db $22 ; Byte Fill
#_15F0B0: db $00
#_15F0B1: db $0E ; Direct Copy
#_15F0B2: db $DE, $EC, $F4, $74, $E8, $F0, $C0, $00
#_15F0BA: db $2D, $00, $3A, $00, $37, $04, $2E
#_15F0C1: db $85 ; Repeat Fill
#_15F0C2: db $87, $01 ; Repeat Fill bytes
#_15F0C4: db $22 ; Byte Fill
#_15F0C5: db $00
#_15F0C6: db $03 ; Direct Copy
#_15F0C7: db $3E, $37, $3B, $3D
#_15F0CB: db $83 ; Repeat Fill
#_15F0CC: db $94, $01 ; Repeat Fill bytes
#_15F0CE: db $08 ; Direct Copy
#_15F0CF: db $FC, $00, $EC, $00, $14, $00, $F4, $00
#_15F0D7: db $18
#_15F0D8: db $83 ; Repeat Fill
#_15F0D9: db $01, $02 ; Repeat Fill bytes
#_15F0DB: db $22 ; Byte Fill
#_15F0DC: db $00
#_15F0DD: db $03 ; Direct Copy
#_15F0DE: db $74, $B4, $FC, $FC
#_15F0E2: db $83 ; Repeat Fill
#_15F0E3: db $AC, $01 ; Repeat Fill bytes
#_15F0E5: db $0A ; Direct Copy
#_15F0E6: db $EB, $00, $CC, $00, $6B, $00, $3F, $00
#_15F0EE: db $2C, $08, $18
#_15F0F1: db $24 ; Byte Fill
#_15F0F2: db $00
#_15F0F3: db $E0, $24 ; EXT Direct Copy
#_15F0F5: db $9F, $BF, $7F, $3F, $34, $18, $00, $00
#_15F0FD: db $D7, $00, $33, $00, $D6, $00, $EE, $00
#_15F105: db $7A, $00, $72, $00, $5A, $00, $3C, $00
#_15F10D: db $F9, $FD, $FE, $DE, $7E, $4E, $66, $3C
#_15F115: db $D5, $00, $BF, $00, $48
#_15F11A: db $46 ; Word Fill
#_15F11B: db $00, $07 ; Word Fill
#_15F11D: db $E0, $48 ; EXT Direct Copy
#_15F11F: db $03, $00, $01, $00, $BF, $FF, $4F, $07
#_15F127: db $05, $04, $02, $01, $8C, $00, $7C, $08
#_15F12F: db $A8, $00, $98, $00, $D8, $00, $E8, $00
#_15F137: db $90, $00, $E0, $00, $FC, $F4, $F8, $78
#_15F13F: db $38, $F8, $70, $E0, $EF, $00, $D5, $00
#_15F147: db $BE, $00, $4F, $00, $1F, $00, $3E, $00
#_15F14F: db $19, $00, $0F, $00, $95, $BF, $FF, $4C
#_15F157: db $14, $23, $17, $0F, $74, $00, $9C, $00
#_15F15F: db $76, $00, $AE, $04, $56, $00, $FC, $00
#_15F167: db $80
#_15F168: db $22 ; Byte Fill
#_15F169: db $00
#_15F16A: db $0A ; Direct Copy
#_15F16B: db $EC, $FC, $EE, $7A, $FE, $FC, $80, $00
#_15F173: db $40, $00, $E0
#_15F176: db $44 ; Word Fill
#_15F177: db $00, $F0 ; Word Fill
#_15F179: db $12 ; Direct Copy
#_15F17A: db $CC, $00, $EB, $00, $5C, $00, $27, $00
#_15F182: db $40, $A0, $90, $D0, $BC, $BF, $7B, $3C
#_15F18A: db $02, $00, $07
#_15F18D: db $44 ; Word Fill
#_15F18E: db $00, $0F ; Word Fill
#_15F190: db $E0, $3F ; EXT Direct Copy
#_15F192: db $33, $00, $D7, $00, $3A, $00, $E4, $00
#_15F19A: db $02, $05, $09, $0B, $3D, $FD, $DE, $3C
#_15F1A2: db $07, $00, $09, $00, $17, $00, $3D, $00
#_15F1AA: db $6A, $00, $F4, $00, $CD, $00, $9F, $00
#_15F1B2: db $07, $0F, $1B, $23, $77, $9F, $BF, $FE
#_15F1BA: db $80, $00, $FC, $00, $F2, $00, $EF, $00
#_15F1C2: db $6D, $00, $F1, $00, $EA, $00, $CE, $00
#_15F1CA: db $80, $FC, $FE, $F9, $F7, $BF, $1E, $FE
#_15F1D2: db $23 ; Byte Fill
#_15F1D3: db $00
#_15F1D4: db $02 ; Direct Copy
#_15F1D5: db $3B, $00, $77
#_15F1D8: db $84 ; Repeat Fill
#_15F1D9: db $2B, $01 ; Repeat Fill bytes
#_15F1DB: db $02 ; Direct Copy
#_15F1DC: db $AE, $00, $66
#_15F1DF: db $22 ; Byte Fill
#_15F1E0: db $00
#_15F1E1: db $08 ; Direct Copy
#_15F1E2: db $3B, $4F, $9F, $B3, $F5, $7D, $3C, $00
#_15F1EA: db $FE
#_15F1EB: db $46 ; Word Fill
#_15F1EC: db $00, $FD ; Word Fill
#_15F1EE: db $0D ; Direct Copy
#_15F1EF: db $FE, $00, $94, $00, $FC, $00, $3C, $FA
#_15F1F7: db $FB, $F7, $E7, $0E, $FC, $EC
#_15F1FD: db $23 ; Byte Fill
#_15F1FE: db $00
#_15F1FF: db $13 ; Direct Copy
#_15F200: db $03, $00, $05, $03, $0E, $05, $1F, $00
#_15F208: db $30, $0F, $47, $3F, $00, $00, $03, $05
#_15F210: db $0E, $1F, $37, $77
#_15F214: db $23 ; Byte Fill
#_15F215: db $00
#_15F216: db $E0, $43 ; EXT Direct Copy
#_15F218: db $C0, $00, $F8, $C0, $1F, $F8, $EF, $1F
#_15F220: db $10, $FF, $E8, $FF, $00, $00, $C0, $F8
#_15F228: db $1F, $EF, $FF, $EF, $02, $FF, $F3, $0F
#_15F230: db $09, $FF, $F5, $FF, $07, $FF, $FB, $07
#_15F238: db $46, $3F, $8D, $7E, $0F, $FF, $FF, $F7
#_15F240: db $07, $FF, $7E, $FD, $24, $F8, $16, $F8
#_15F248: db $12, $FC, $22, $FC, $0A, $F4, $06, $F8
#_15F250: db $62, $BC, $A2, $7C, $E4, $F6, $F2, $62
#_15F258: db $0A, $06, $62, $A2
#_15F25C: db $25 ; Byte Fill
#_15F25D: db $00
#_15F25E: db $09 ; Direct Copy
#_15F25F: db $E0, $00, $10, $E0, $C8, $F0, $68, $F0
#_15F267: db $2C, $F0
#_15F269: db $22 ; Byte Fill
#_15F26A: db $00
#_15F26B: db $04 ; Direct Copy
#_15F26C: db $E0, $10, $C8, $E8, $EC
#_15F271: db $29 ; Byte Fill
#_15F272: db $00
#_15F273: db $05 ; Direct Copy
#_15F274: db $01, $00, $03, $01, $07, $02
#_15F27A: db $24 ; Byte Fill
#_15F27B: db $00
#_15F27C: db $02 ; Direct Copy
#_15F27D: db $01, $03, $07
#_15F280: db $23 ; Byte Fill
#_15F281: db $00
#_15F282: db $E0, $22 ; EXT Direct Copy
#_15F284: db $30, $00, $7C, $30, $FA, $04, $7D, $FA
#_15F28C: db $0E, $FF, $F1, $0F, $00, $00, $30, $7C
#_15F294: db $FA, $7D, $0E, $F7, $38, $F7, $8C, $FF
#_15F29C: db $32, $FF, $CC, $33, $FA, $0F, $E0, $7F
#_15F2A4: db $47, $FF, $4C
#_15F2A7: db $22 ; Byte Fill
#_15F2A8: db $FF
#_15F2A9: db $1D ; Direct Copy
#_15F2AA: db $33, $CD, $FF, $FF, $DF, $CC, $12, $FC
#_15F2B2: db $8A, $FC, $C1, $FE, $41, $FE, $49, $FE
#_15F2BA: db $D9, $FE, $13, $FC, $C2, $3C, $F2, $FA
#_15F2C2: db $F9, $F9, $D9, $D9, $13, $C2
#_15F2C8: db $27 ; Byte Fill
#_15F2C9: db $00
#_15F2CA: db $07 ; Direct Copy
#_15F2CB: db $70, $00, $88, $70, $64, $F8, $94, $F8
#_15F2D3: db $23 ; Byte Fill
#_15F2D4: db $00
#_15F2D5: db $04 ; Direct Copy
#_15F2D6: db $70, $88, $64, $F4, $33
#_15F2DB: db $84 ; Repeat Fill
#_15F2DC: db $07, $00 ; Repeat Fill bytes
#_15F2DE: db $04 ; Direct Copy
#_15F2DF: db $2A, $00, $37, $00, $1E
#_15F2E4: db $24 ; Byte Fill
#_15F2E5: db $00
#_15F2E6: db $06 ; Direct Copy
#_15F2E7: db $3F, $3C, $3B, $3D, $2F, $1E, $00
#_15F2EE: db $84 ; Repeat Fill
#_15F2EF: db $41, $01 ; Repeat Fill bytes
#_15F2F1: db $1E ; Direct Copy
#_15F2F2: db $D4, $00, $2E, $00, $EE, $00, $56, $00
#_15F2FA: db $42, $00, $3C, $00, $DC, $3C, $FC, $F6
#_15F302: db $F6, $7A, $7E, $3C, $67, $00, $07, $00
#_15F30A: db $0A, $00, $19, $00, $1D, $00, $0F
#_15F311: db $24 ; Byte Fill
#_15F312: db $00
#_15F313: db $17 ; Direct Copy
#_15F314: db $64, $04, $0F, $17, $13, $0F, $00, $00
#_15F31C: db $32, $00, $46, $00, $7A, $00, $C4, $00
#_15F324: db $E2, $00, $F2, $00, $E4, $00, $78, $00
#_15F32C: db $22 ; Byte Fill
#_15F32D: db $FE
#_15F32E: db $04 ; Direct Copy
#_15F32F: db $FC, $DE, $BE, $9C, $78
#_15F334: db $83 ; Repeat Fill
#_15F335: db $DC, $02 ; Repeat Fill bytes
#_15F337: db $0C ; Direct Copy
#_15F338: db $0A, $00, $0D, $00, $1E, $00, $1F, $00
#_15F340: db $08, $00, $07, $00, $1F
#_15F345: db $22 ; Byte Fill
#_15F346: db $0F
#_15F347: db $10 ; Direct Copy
#_15F348: db $15, $13, $0F, $07, $74, $00, $EC, $00
#_15F350: db $1C, $00, $F4, $00, $64, $00, $78, $00
#_15F358: db $80
#_15F359: db $22 ; Byte Fill
#_15F35A: db $00
#_15F35B: db $00 ; Direct Copy
#_15F35C: db $9C
#_15F35D: db $23 ; Byte Fill
#_15F35E: db $FC
#_15F35F: db $0E ; Direct Copy
#_15F360: db $F8, $80, $00, $57, $38, $A9, $70, $DF
#_15F368: db $60, $F4, $4F, $53, $0F, $28, $1F
#_15F36F: db $83 ; Repeat Fill
#_15F370: db $10, $05 ; Repeat Fill bytes
#_15F372: db $07 ; Direct Copy
#_15F373: db $77, $E9, $DF, $F7, $5B, $38, $77, $E9
#_15F37B: db $97 ; Repeat Fill
#_15F37C: db $C0, $03 ; Repeat Fill bytes
#_15F37E: db $06 ; Direct Copy
#_15F37F: db $BB, $FC, $C4, $F8, $38, $C0, $C0
#_15F386: db $22 ; Byte Fill
#_15F387: db $00
#_15F388: db $83 ; Repeat Fill
#_15F389: db $12, $04 ; Repeat Fill bytes
#_15F38B: db $E0, $49 ; EXT Direct Copy
#_15F38D: db $01, $00, $FB, $C4, $38, $C0, $00, $01
#_15F395: db $03, $01, $B2, $7C, $51, $3E, $69, $1E
#_15F39D: db $49, $3E, $92, $7C, $34, $F8, $C8, $F0
#_15F3A5: db $F0, $00, $B2, $71, $79, $79, $F2, $F4
#_15F3AD: db $C8, $F0, $B3, $60, $D4, $63, $59, $27
#_15F3B5: db $32, $0F, $15, $0E, $1E, $0C, $0A, $04
#_15F3BD: db $04, $00, $F3, $D7, $5F, $3E, $1D, $1E
#_15F3C5: db $0A, $04, $07, $01, $06, $01, $05, $03
#_15F3CD: db $04, $03, $0A, $07, $0B, $06, $0D, $06
#_15F3D5: db $0A, $05
#_15F3D7: db $22 ; Byte Fill
#_15F3D8: db $07
#_15F3D9: db $04 ; Direct Copy
#_15F3DA: db $06, $0E, $0F, $0D, $0B
#_15F3DF: db $8E ; Repeat Fill
#_15F3E0: db $38, $04 ; Repeat Fill bytes
#_15F3E2: db $22 ; Byte Fill
#_15F3E3: db $FF
#_15F3E4: db $85 ; Repeat Fill
#_15F3E5: db $4A, $04 ; Repeat Fill bytes
#_15F3E7: db $0C ; Direct Copy
#_15F3E8: db $B3, $CC, $7F, $80, $4B, $84, $6B, $87
#_15F3F0: db $A8, $C7, $EC, $03, $07
#_15F3F5: db $22 ; Byte Fill
#_15F3F6: db $00
#_15F3F7: db $12 ; Direct Copy
#_15F3F8: db $B3, $7F, $4B, $6F, $AB, $EC, $07, $00
#_15F400: db $E6, $38, $F4, $78, $94, $F8, $24, $F8
#_15F408: db $08, $F0, $F0
#_15F40B: db $24 ; Byte Fill
#_15F40C: db $00
#_15F40D: db $0A ; Direct Copy
#_15F40E: db $E6, $F4, $F4, $E4, $08, $F0, $00, $00
#_15F416: db $0A, $05, $06
#_15F419: db $44 ; Word Fill
#_15F41A: db $01, $03 ; Word Fill
#_15F41C: db $00 ; Direct Copy
#_15F41D: db $01
#_15F41E: db $26 ; Byte Fill
#_15F41F: db $00
#_15F420: db $04 ; Direct Copy
#_15F421: db $0B, $07, $03, $03, $01
#_15F426: db $22 ; Byte Fill
#_15F427: db $00
#_15F428: db $FF ; End of GFX 96

;===================================================================================================

GFX_97:
#_15F429: db $27 ; Byte Fill
#_15F42A: db $00
#_15F42B: db $07 ; Direct Copy
#_15F42C: db $18, $00, $34, $18, $4E, $0C, $B7, $06
#_15F434: db $23 ; Byte Fill
#_15F435: db $00
#_15F436: db $03 ; Direct Copy
#_15F437: db $18, $3C, $76, $FB
#_15F43B: db $27 ; Byte Fill
#_15F43C: db $00
#_15F43D: db $07 ; Direct Copy
#_15F43E: db $18, $00, $2C, $18, $72, $30, $ED, $60
#_15F446: db $23 ; Byte Fill
#_15F447: db $00
#_15F448: db $06 ; Direct Copy
#_15F449: db $18, $3C, $6E, $DF, $0C, $00, $14
#_15F450: db $44 ; Word Fill
#_15F451: db $08, $2C ; Word Fill
#_15F453: db $12 ; Direct Copy
#_15F454: db $26, $04, $16, $04, $1E, $0C, $0D, $06
#_15F45C: db $0C, $1C, $3C, $3C, $3E, $1E, $16, $0F
#_15F464: db $30, $00, $28
#_15F467: db $44 ; Word Fill
#_15F468: db $10, $34 ; Word Fill
#_15F46A: db $0F ; Direct Copy
#_15F46B: db $64, $20, $68, $20, $78, $30, $B0, $60
#_15F473: db $30, $38, $3C, $3C, $7C, $78, $68, $F0
#_15F47B: db $27 ; Byte Fill
#_15F47C: db $00
#_15F47D: db $07 ; Direct Copy
#_15F47E: db $0C, $00, $16, $0C, $2F, $1C, $3F, $1C
#_15F486: db $23 ; Byte Fill
#_15F487: db $00
#_15F488: db $03 ; Direct Copy
#_15F489: db $0C, $1E, $3B, $3B
#_15F48D: db $27 ; Byte Fill
#_15F48E: db $00
#_15F48F: db $07 ; Direct Copy
#_15F490: db $30, $00, $68, $30, $F4, $38, $FC, $38
#_15F498: db $23 ; Byte Fill
#_15F499: db $00
#_15F49A: db $E0, $2B ; EXT Direct Copy
#_15F49C: db $30, $78, $DC, $DC, $00, $00, $21, $00
#_15F4A4: db $73, $21, $3E, $13, $3F, $12, $2F, $16
#_15F4AC: db $1C, $07, $0C, $07, $00, $21, $73, $3F
#_15F4B4: db $3E, $3E, $1F, $0F, $E0, $00, $A0, $C0
#_15F4BC: db $60, $C0, $E4, $40, $EE, $44, $7C, $E8
#_15F4C4: db $3C, $E8, $B4, $E8
#_15F4C8: db $22 ; Byte Fill
#_15F4C9: db $E0
#_15F4CA: db $01 ; Direct Copy
#_15F4CB: db $64, $6E
#_15F4CD: db $22 ; Byte Fill
#_15F4CE: db $FC
#_15F4CF: db $E0, $38 ; EXT Direct Copy
#_15F4D1: db $00, $00, $40, $00, $B8, $40, $74, $38
#_15F4D9: db $3F, $00, $3E, $17, $5F, $0B, $F9, $77
#_15F4E1: db $00, $40, $F8, $7C, $3F, $27, $6F, $FF
#_15F4E9: db $00, $00, $04, $00, $3E, $04, $5C, $38
#_15F4F1: db $F8, $00, $F8, $E0, $3C, $F8, $36, $CC
#_15F4F9: db $00, $04, $3E, $7C, $F8, $F8, $FC, $CE
#_15F501: db $00, $00, $10, $00, $2E, $10, $1D, $0E
#_15F509: db $1F
#_15F50A: db $87 ; Repeat Fill
#_15F50B: db $C9, $00 ; Repeat Fill bytes
#_15F50D: db $03 ; Direct Copy
#_15F50E: db $10, $3E, $1F, $1F
#_15F512: db $84 ; Repeat Fill
#_15F513: db $D5, $00 ; Repeat Fill bytes
#_15F515: db $19 ; Direct Copy
#_15F516: db $10, $00, $F8, $10, $70, $E0, $E0, $00
#_15F51E: db $FF, $E0, $3D, $FE, $9B, $E6, $00, $10
#_15F526: db $F8, $F0, $E0, $FF, $FF, $E7, $01, $00
#_15F52E: db $23, $01
#_15F530: db $8B ; Repeat Fill
#_15F531: db $94, $00 ; Repeat Fill bytes
#_15F533: db $01 ; Direct Copy
#_15F534: db $01, $23
#_15F536: db $85 ; Repeat Fill
#_15F537: db $A2, $00 ; Repeat Fill bytes
#_15F539: db $1F ; Direct Copy
#_15F53A: db $80, $00, $C4, $80, $CE, $84, $7C, $C8
#_15F542: db $FC, $48, $F4, $68, $38, $E0, $30, $E0
#_15F54A: db $80, $C4, $CE, $FC, $7C, $7C, $F8, $F0
#_15F552: db $20, $00, $50, $20, $BC, $40, $72, $3C
#_15F55A: db $87 ; Repeat Fill
#_15F55B: db $C8, $00 ; Repeat Fill bytes
#_15F55D: db $03 ; Direct Copy
#_15F55E: db $20, $70, $FC, $7E
#_15F562: db $8F ; Repeat Fill
#_15F563: db $D4, $00 ; Repeat Fill bytes
#_15F565: db $03 ; Direct Copy
#_15F566: db $3E, $F8, $37, $CE
#_15F56A: db $85 ; Repeat Fill
#_15F56B: db $E8, $00 ; Repeat Fill bytes
#_15F56D: db $07 ; Direct Copy
#_15F56E: db $FE, $CF, $CF, $04, $8C, $03, $13, $0C
#_15F576: db $43 ; Word Fill
#_15F577: db $2F, $10 ; Word Fill
#_15F579: db $13 ; Direct Copy
#_15F57A: db $13, $0C, $0D, $02, $03, $00, $CB, $8F
#_15F582: db $1C, $31, $32, $1F, $0F, $03, $F3, $20
#_15F58A: db $31, $C0, $C8, $30
#_15F58E: db $43 ; Word Fill
#_15F58F: db $F4, $08 ; Word Fill
#_15F591: db $13 ; Direct Copy
#_15F592: db $C8, $30, $B0, $40, $C0, $00, $D3, $F1
#_15F59A: db $38, $8C, $CC, $F8, $F0, $C0, $0F, $04
#_15F5A2: db $0C, $03, $13, $0C
#_15F5A6: db $43 ; Word Fill
#_15F5A7: db $2F, $10 ; Word Fill
#_15F5A9: db $85 ; Repeat Fill
#_15F5AA: db $8A, $01 ; Repeat Fill bytes
#_15F5AC: db $01 ; Direct Copy
#_15F5AD: db $0F, $0F
#_15F5AF: db $85 ; Repeat Fill
#_15F5B0: db $92, $01 ; Repeat Fill bytes
#_15F5B2: db $05 ; Direct Copy
#_15F5B3: db $F0, $20, $30, $C0, $C8, $30
#_15F5B9: db $43 ; Word Fill
#_15F5BA: db $F4, $08 ; Word Fill
#_15F5BC: db $85 ; Repeat Fill
#_15F5BD: db $A2, $01 ; Repeat Fill bytes
#_15F5BF: db $01 ; Direct Copy
#_15F5C0: db $F0, $F0
#_15F5C2: db $85 ; Repeat Fill
#_15F5C3: db $AA, $01 ; Repeat Fill bytes
#_15F5C5: db $01 ; Direct Copy
#_15F5C6: db $5C, $3B
#_15F5C8: db $44 ; Word Fill
#_15F5C9: db $7F, $38 ; Word Fill
#_15F5CB: db $12 ; Direct Copy
#_15F5CC: db $30, $3B, $14, $3D, $12, $1B, $00, $10
#_15F5D4: db $00, $77, $74, $75, $7A, $3F, $3F, $1B
#_15F5DC: db $10, $3A, $DC
#_15F5DF: db $44 ; Word Fill
#_15F5E0: db $FE, $1C ; Word Fill
#_15F5E2: db $E0, $4D ; EXT Direct Copy
#_15F5E4: db $0C, $DC, $28, $BC, $48, $D8, $00, $08
#_15F5EC: db $00, $EE, $2E, $AE, $DE, $FC, $FC, $D8
#_15F5F4: db $08, $0B, $07, $0E, $07, $1E, $05, $2F
#_15F5FC: db $12, $7F, $15, $BD, $51, $53, $21, $21
#_15F604: db $00, $0F, $0F, $1F, $3B, $79, $FF, $73
#_15F60C: db $21, $D8, $E0, $74, $E8, $7C, $A8, $FC
#_15F614: db $48, $FA, $A4, $B4, $88, $C8, $80, $80
#_15F61C: db $00, $F8, $FC, $FC, $DC, $9E, $FC, $C8
#_15F624: db $80, $F9, $77, $5F, $0B, $3E, $17, $1F
#_15F62C: db $00, $1D, $0E, $2E, $10, $10
#_15F632: db $22 ; Byte Fill
#_15F633: db $00
#_15F634: db $14 ; Direct Copy
#_15F635: db $FF, $6F, $27, $1F, $1F, $3E, $10, $00
#_15F63D: db $9B, $E6, $3D, $FE, $FF, $E0, $E0, $00
#_15F645: db $70, $E0, $F8, $10, $10
#_15F64A: db $22 ; Byte Fill
#_15F64B: db $00
#_15F64C: db $07 ; Direct Copy
#_15F64D: db $E7, $FF, $FF, $E0, $F0, $F8, $10, $00
#_15F655: db $85 ; Repeat Fill
#_15F656: db $40, $02 ; Repeat Fill bytes
#_15F658: db $06 ; Direct Copy
#_15F659: db $3F, $00, $74, $38, $B8, $40, $40
#_15F660: db $22 ; Byte Fill
#_15F661: db $00
#_15F662: db $14 ; Direct Copy
#_15F663: db $FF, $6F, $27, $3F, $7C, $F8, $40, $00
#_15F66B: db $36, $CC, $3C, $F8, $F8, $E0, $F8, $00
#_15F673: db $5C, $38, $3E, $04, $04
#_15F678: db $22 ; Byte Fill
#_15F679: db $00
#_15F67A: db $0D ; Direct Copy
#_15F67B: db $CE, $FC, $F8, $F8, $7C, $3E, $04, $00
#_15F683: db $0B, $07, $1E, $07, $2E, $15
#_15F689: db $8A ; Repeat Fill
#_15F68A: db $16, $02 ; Repeat Fill bytes
#_15F68C: db $01 ; Direct Copy
#_15F68D: db $1F, $3F
#_15F68F: db $84 ; Repeat Fill
#_15F690: db $23, $02 ; Repeat Fill bytes
#_15F692: db $17 ; Direct Copy
#_15F693: db $D0, $E0, $78, $E0, $74, $A8, $F4, $48
#_15F69B: db $FE, $A8, $BD, $8A, $CA, $84, $84, $00
#_15F6A3: db $F0, $F8, $FC, $DC, $9E, $FF, $CE, $84
#_15F6AB: db $87 ; Repeat Fill
#_15F6AC: db $70, $02 ; Repeat Fill bytes
#_15F6AE: db $06 ; Direct Copy
#_15F6AF: db $72, $3C, $BC, $40, $50, $20, $20
#_15F6B6: db $84 ; Repeat Fill
#_15F6B7: db $7F, $02 ; Repeat Fill bytes
#_15F6B9: db $06 ; Direct Copy
#_15F6BA: db $7E, $FC, $70, $20, $37, $CE, $3E
#_15F6C1: db $89 ; Repeat Fill
#_15F6C2: db $8B, $02 ; Repeat Fill bytes
#_15F6C4: db $22 ; Byte Fill
#_15F6C5: db $00
#_15F6C6: db $01 ; Direct Copy
#_15F6C7: db $CF, $FE
#_15F6C9: db $85 ; Repeat Fill
#_15F6CA: db $9A, $02 ; Repeat Fill bytes
#_15F6CC: db $F0, $2F ; EXT Repeat Fill
#_15F6CE: db $50, $01 ; Repeat Fill bytes
#_15F6D0: db $F0, $2F ; EXT Repeat Fill
#_15F6D2: db $50, $01 ; Repeat Fill bytes
#_15F6D4: db $0A ; Direct Copy
#_15F6D5: db $3C, $00, $6F, $38, $38, $00, $13, $00
#_15F6DD: db $17, $00, $27
#_15F6E0: db $44 ; Word Fill
#_15F6E1: db $00, $2F ; Word Fill
#_15F6E3: db $12 ; Direct Copy
#_15F6E4: db $3C, $7F, $3F, $1C, $18, $38, $3C, $3E
#_15F6EC: db $00, $00, $E0, $00, $10, $00, $CC, $00
#_15F6F4: db $EE, $04, $E7
#_15F6F7: db $44 ; Word Fill
#_15F6F8: db $02, $F7 ; Word Fill
#_15F6FA: db $0C ; Direct Copy
#_15F6FB: db $00, $E0, $F0, $3C, $1E, $1F, $3F, $7F
#_15F703: db $07, $00, $08, $00, $17
#_15F708: db $43 ; Word Fill
#_15F709: db $00, $2F ; Word Fill
#_15F70B: db $0E ; Direct Copy
#_15F70C: db $01, $27, $02, $27, $04, $17, $03, $07
#_15F714: db $0F, $18, $30, $30, $39, $3B, $1F
#_15F71B: db $83 ; Repeat Fill
#_15F71C: db $7A, $03 ; Repeat Fill bytes
#_15F71E: db $00 ; Direct Copy
#_15F71F: db $E8
#_15F720: db $43 ; Word Fill
#_15F721: db $00, $F4 ; Word Fill
#_15F723: db $18 ; Direct Copy
#_15F724: db $80, $E4, $40, $E4, $20, $68, $80, $E0
#_15F72C: db $F0, $18, $0C, $0C, $9C, $DC, $F8, $1F
#_15F734: db $00, $20, $00, $5E, $00, $BC, $00, $B8
#_15F73C: db $00
#_15F73D: db $43 ; Word Fill
#_15F73E: db $F9, $01 ; Word Fill
#_15F740: db $0D ; Direct Copy
#_15F741: db $F7, $07, $1F, $3F, $61, $C3, $C7, $9E
#_15F749: db $BE, $B8, $00, $00, $80, $00
#_15F74F: db $43 ; Word Fill
#_15F750: db $C0, $80 ; Word Fill
#_15F752: db $01 ; Direct Copy
#_15F753: db $F0, $80
#_15F755: db $43 ; Word Fill
#_15F756: db $F8, $B0 ; Word Fill
#_15F758: db $12 ; Direct Copy
#_15F759: db $F4, $38, $00, $80, $40, $40, $70, $78
#_15F761: db $78, $FC, $0F, $00, $10, $00, $2F, $00
#_15F769: db $5E, $00, $5C
#_15F76C: db $44 ; Word Fill
#_15F76D: db $00, $7C ; Word Fill
#_15F76F: db $E0, $21 ; EXT Direct Copy
#_15F771: db $7B, $03, $0F, $1F, $30, $61, $63, $4F
#_15F779: db $5F, $5C, $80, $00, $40, $00, $60, $40
#_15F781: db $6C, $40, $7E, $4C, $FE, $CC, $FC, $D8
#_15F789: db $FC, $98, $80, $C0, $A0, $AC, $BE, $3E
#_15F791: db $3C, $7C
#_15F793: db $E4, $5F ; EXT Byte Fill
#_15F795: db $00
#_15F796: db $F0, $24 ; EXT Repeat Fill
#_15F798: db $D0, $02 ; Repeat Fill bytes
#_15F79A: db $22 ; Byte Fill
#_15F79B: db $00
#_15F79C: db $87 ; Repeat Fill
#_15F79D: db $F8, $02 ; Repeat Fill bytes
#_15F79F: db $F0, $24 ; EXT Repeat Fill
#_15F7A1: db $D0, $02 ; Repeat Fill bytes
#_15F7A3: db $22 ; Byte Fill
#_15F7A4: db $00
#_15F7A5: db $87 ; Repeat Fill
#_15F7A6: db $F8, $02 ; Repeat Fill bytes
#_15F7A8: db $12 ; Direct Copy
#_15F7A9: db $37, $10, $19, $08, $0D, $00, $0C, $00
#_15F7B1: db $0F, $04, $0D, $07, $04, $03, $03, $00
#_15F7B9: db $2E, $16, $0E
#_15F7BC: db $22 ; Byte Fill
#_15F7BD: db $0F
#_15F7BE: db $E0, $3F ; EXT Direct Copy
#_15F7C0: db $07, $03, $EF, $0A, $9D, $16, $BA, $0C
#_15F7C8: db $3A, $0C, $F4, $28, $A8, $F0, $30, $C0
#_15F7D0: db $C0, $00, $77, $6F, $7E, $FE, $FC, $F8
#_15F7D8: db $F0, $C0, $1D, $07, $18, $0F, $0E, $07
#_15F7E0: db $0F, $00, $10, $0F, $37, $1C, $19, $0F
#_15F7E8: db $0F, $00, $1F, $1F, $0F, $0F, $1F, $3F
#_15F7F0: db $1F, $0F, $E8, $C0, $F0, $00, $38, $F0
#_15F7F8: db $B8, $70, $70, $E0, $F0, $00, $F8, $F0
#_15F800: db $83 ; Repeat Fill
#_15F801: db $32, $05 ; Repeat Fill bytes
#_15F803: db $0A ; Direct Copy
#_15F804: db $F8, $F8, $F0, $F0, $F8, $F0, $CF, $00
#_15F80C: db $DF, $0E, $6E
#_15F80F: db $43 ; Word Fill
#_15F810: db $1C, $27 ; Word Fill
#_15F812: db $0F ; Direct Copy
#_15F813: db $1F, $13, $0F, $08, $07, $07, $00, $BF
#_15F81B: db $BF, $7E, $3F, $3F, $1F, $0F, $07, $B4
#_15F823: db $44 ; Word Fill
#_15F824: db $18, $34 ; Word Fill
#_15F826: db $E0, $23 ; EXT Direct Copy
#_15F828: db $F4, $38, $F4, $F8, $E8, $F0, $10, $E0
#_15F830: db $E0, $00, $BC, $3C, $3C, $FC, $FC, $F8
#_15F838: db $F0, $E0, $67, $00, $6E, $04, $7F, $08
#_15F840: db $5F, $3B, $4F, $3F, $24, $1F, $13, $0C
#_15F848: db $0C, $00, $5F, $5E
#_15F84C: db $22 ; Byte Fill
#_15F84D: db $7F
#_15F84E: db $05 ; Direct Copy
#_15F84F: db $3F, $1F, $0C, $F8, $30, $78
#_15F855: db $43 ; Word Fill
#_15F856: db $30, $E8 ; Word Fill
#_15F858: db $0A ; Direct Copy
#_15F859: db $B0, $F8, $F0, $D0, $E0, $20, $C0, $C0
#_15F861: db $00, $F8, $78
#_15F864: db $22 ; Byte Fill
#_15F865: db $F8
#_15F866: db $02 ; Direct Copy
#_15F867: db $F0, $E0, $C0
#_15F86A: db $E4, $5F ; EXT Byte Fill
#_15F86C: db $00
#_15F86D: db $FF ; End of GFX 97

;===================================================================================================

GFX_98:
#_15F86E: db $E0, $BF ; EXT Direct Copy
#_15F870: db $18, $00, $2F, $10, $35, $1B, $1F, $0B
#_15F878: db $1C, $07, $1E, $0F, $14, $07, $3F, $1E
#_15F880: db $18, $37, $3D, $1F, $1F, $17, $1B, $37
#_15F888: db $18, $00, $F4, $08, $AC, $D8, $78, $D0
#_15F890: db $58, $C0, $78, $F0, $38, $F0, $8C, $78
#_15F898: db $18, $EC, $BC, $F8, $B8, $D8, $F8, $FC
#_15F8A0: db $06, $00, $0D, $02, $0B, $04, $05, $03
#_15F8A8: db $0A, $07, $15, $0E, $1C, $0B, $1F, $0F
#_15F8B0: db $06, $0B, $0F, $05, $0B, $16, $1F, $1F
#_15F8B8: db $0C, $00, $1A, $04, $F6, $0C, $2C, $D8
#_15F8C0: db $58, $B0, $34, $CC, $04, $F8, $1C, $F8
#_15F8C8: db $0C, $16, $FE, $3C, $F8, $B0, $C4, $F4
#_15F8D0: db $18, $00, $35, $08, $2E, $19, $1F, $0D
#_15F8D8: db $0E, $03, $15, $0E, $19, $0E, $1C, $0B
#_15F8E0: db $18, $2D, $3E, $1F, $0F, $17, $1F, $1F
#_15F8E8: db $18, $00, $AC, $10, $74, $98, $F8, $B0
#_15F8F0: db $78, $C0, $A8, $70, $98, $70, $38, $D0
#_15F8F8: db $18, $B4, $7C, $F8, $F8, $E8, $F8, $F8
#_15F900: db $FF, $7F, $7E, $1F, $9F, $67, $AF, $40
#_15F908: db $CF, $00, $4F, $08, $6F, $24, $67, $20
#_15F910: db $FF, $7F, $FF, $FD, $FD, $77, $53, $58
#_15F918: db $87, $FE, $0E, $F8, $F9, $E6, $F5, $02
#_15F920: db $FB, $00, $FA, $00, $D6, $04, $F6, $04
#_15F928: db $FF, $FE, $FF, $BF, $B7, $E6, $EA, $0A
#_15F930: db $83 ; Repeat Fill
#_15F931: db $90, $00 ; Repeat Fill bytes
#_15F933: db $01 ; Direct Copy
#_15F934: db $1F, $07
#_15F936: db $43 ; Word Fill
#_15F937: db $3F, $10 ; Word Fill
#_15F939: db $0D ; Direct Copy
#_15F93A: db $77, $20, $DB, $40, $FF, $00, $FF, $7F
#_15F942: db $1F, $2D, $2D, $4F, $A7, $E8
#_15F948: db $83 ; Repeat Fill
#_15F949: db $A8, $00 ; Repeat Fill bytes
#_15F94B: db $01 ; Direct Copy
#_15F94C: db $F8, $E0
#_15F94E: db $43 ; Word Fill
#_15F94F: db $F4, $00 ; Word Fill
#_15F951: db $0E ; Direct Copy
#_15F952: db $EA, $00, $DD, $00, $B7, $00, $FF, $FE
#_15F95A: db $F8, $BC, $BC, $F6, $E3, $5F, $FC
#_15F961: db $84 ; Repeat Fill
#_15F962: db $C1, $00 ; Repeat Fill bytes
#_15F964: db $45 ; Word Fill
#_15F965: db $1F, $00 ; Word Fill
#_15F967: db $1D ; Direct Copy
#_15F968: db $26, $00, $2E, $10, $FF, $7F, $1F, $17
#_15F970: db $17, $1F, $3F, $21, $0F, $FE, $3E, $F8
#_15F978: db $F8, $C0, $C8, $30, $48, $30, $78, $00
#_15F980: db $F0, $00, $B8, $20, $FF, $FE
#_15F986: db $23 ; Byte Fill
#_15F987: db $F8
#_15F988: db $01 ; Direct Copy
#_15F989: db $30, $58
#_15F98B: db $85 ; Repeat Fill
#_15F98C: db $F0, $00 ; Repeat Fill bytes
#_15F98E: db $01 ; Direct Copy
#_15F98F: db $7F, $00
#_15F991: db $43 ; Word Fill
#_15F992: db $BF, $40 ; Word Fill
#_15F994: db $0B ; Direct Copy
#_15F995: db $5F, $11, $7F, $16, $FF, $7F, $1F, $77
#_15F99D: db $F7, $FF, $6E, $68
#_15F9A1: db $84 ; Repeat Fill
#_15F9A2: db $08, $01 ; Repeat Fill bytes
#_15F9A4: db $09 ; Direct Copy
#_15F9A5: db $E0, $F0, $00, $D8, $10, $98, $10, $58
#_15F9AD: db $10, $D8
#_15F9AF: db $83 ; Repeat Fill
#_15F9B0: db $E7, $00 ; Repeat Fill bytes
#_15F9B2: db $E0, $2C ; EXT Direct Copy
#_15F9B4: db $F0, $E8, $E8, $A8, $38, $F9, $7F, $FC
#_15F9BC: db $1F, $FF, $67, $DF, $50, $CF, $4C, $63
#_15F9C4: db $23, $64, $20, $37, $10, $FF, $FF, $9F
#_15F9CC: db $AF, $B3, $5C, $5B, $28, $8F, $FE, $3F
#_15F9D4: db $F8, $F9, $E0, $FB, $0A, $F7, $32, $DE
#_15F9DC: db $C4, $36, $04, $CC, $08
#_15F9E1: db $22 ; Byte Fill
#_15F9E2: db $FF
#_15F9E3: db $E0, $6F ; EXT Direct Copy
#_15F9E5: db $F5, $C9, $22, $CA, $34, $3E, $1F, $75
#_15F9ED: db $3C, $47, $3D, $5E, $3B, $2F, $1F, $27
#_15F9F5: db $1F, $18, $07, $07, $00, $3C, $53, $43
#_15F9FD: db $5F, $2F, $27, $18, $07, $1C, $F8, $DA
#_15FA05: db $3C, $3E, $DC, $0E, $FC, $34, $F8, $E4
#_15FA0D: db $F8, $18, $E0, $E0, $00, $3C, $D2, $F2
#_15FA15: db $FA, $F4, $E4, $18, $E0, $0E, $01, $19
#_15FA1D: db $07, $24, $1F, $2A, $1D, $28, $1F, $26
#_15FA25: db $1F, $19, $07, $07, $00, $0E, $19, $27
#_15FA2D: db $2D, $2F, $27, $19, $07, $D6, $F4, $0A
#_15FA35: db $FC, $12, $FC, $6E, $F0, $CD, $FE, $19
#_15FA3D: db $FE, $E6, $F8, $F8, $00, $EA, $F2, $F2
#_15FA45: db $EE, $D1, $F9, $E6, $F8, $2B, $0C, $30
#_15FA4D: db $1F, $55, $3F, $7A, $3F, $3D, $1F, $22
#_15FA55: db $84 ; Repeat Fill
#_15FA56: db $8B, $01 ; Repeat Fill bytes
#_15FA58: db $02 ; Direct Copy
#_15FA59: db $33, $24, $5F
#_15FA5C: db $84 ; Repeat Fill
#_15FA5D: db $93, $01 ; Repeat Fill bytes
#_15FA5F: db $0A ; Direct Copy
#_15FA60: db $D4, $30, $1C, $F8, $8A, $FC, $0E, $FC
#_15FA68: db $1C, $F8, $64
#_15FA6B: db $84 ; Repeat Fill
#_15FA6C: db $A3, $01 ; Repeat Fill bytes
#_15FA6E: db $02 ; Direct Copy
#_15FA6F: db $CC, $34, $FA
#_15FA72: db $84 ; Repeat Fill
#_15FA73: db $AB, $01 ; Repeat Fill bytes
#_15FA75: db $E0, $3B ; EXT Direct Copy
#_15FA77: db $32, $15, $78, $1F, $78, $2B, $70, $31
#_15FA7F: db $79, $38, $3C, $14, $1F, $07, $07, $00
#_15FA87: db $28, $60, $54, $4E, $46, $2B, $18, $07
#_15FA8F: db $4C, $A8, $0E, $E8, $1A, $D0, $2A, $88
#_15FA97: db $E2, $20, $34, $10, $F8, $E0, $E0, $00
#_15FA9F: db $14, $16, $2E, $56, $1E, $EC, $18, $E0
#_15FAA7: db $9B, $60, $90, $65, $F8, $0F, $74, $37
#_15FAAF: db $78, $39, $7C, $18
#_15FAB3: db $83 ; Repeat Fill
#_15FAB4: db $1C, $02 ; Repeat Fill bytes
#_15FAB6: db $13 ; Direct Copy
#_15FAB7: db $FC, $FA, $F0, $48, $46, $67, $18, $07
#_15FABF: db $F9, $06, $59, $B6, $1F, $F0, $3E, $CC
#_15FAC7: db $6E, $8C, $1E, $18
#_15FACB: db $83 ; Repeat Fill
#_15FACC: db $34, $02 ; Repeat Fill bytes
#_15FACE: db $13 ; Direct Copy
#_15FACF: db $1F, $0F, $0F, $02, $12, $E6, $18, $E0
#_15FAD7: db $4B, $34, $43, $3C, $5E, $20, $7C, $00
#_15FADF: db $4F, $00, $20, $00
#_15FAE3: db $83 ; Repeat Fill
#_15FAE4: db $1C, $02 ; Repeat Fill bytes
#_15FAE6: db $E0, $29 ; EXT Direct Copy
#_15FAE8: db $40, $40, $41, $43, $70, $3F, $18, $07
#_15FAF0: db $BC, $28, $7C, $68, $F6, $D4, $6E, $64
#_15FAF8: db $3E, $0C, $3C, $30, $F0, $C0, $C0, $00
#_15FB00: db $54, $94, $2A, $92, $C2, $CC, $30, $C0
#_15FB08: db $97, $60, $57, $20, $7C, $0C, $5F, $07
#_15FB10: db $4D, $04
#_15FB12: db $85 ; Repeat Fill
#_15FB13: db $7A, $02 ; Repeat Fill bytes
#_15FB15: db $04 ; Direct Copy
#_15FB16: db $F8, $78, $73, $78, $7A
#_15FB1B: db $84 ; Repeat Fill
#_15FB1C: db $85, $02 ; Repeat Fill bytes
#_15FB1E: db $06 ; Direct Copy
#_15FB1F: db $5C, $48, $F6, $D4, $EE, $A4, $FE
#_15FB26: db $87 ; Repeat Fill
#_15FB27: db $91, $02 ; Repeat Fill bytes
#_15FB29: db $E0, $38 ; EXT Direct Copy
#_15FB2B: db $B4, $2A, $12, $02, $CC, $30, $C0, $31
#_15FB33: db $00, $7C, $24, $7F, $2F, $7B, $3B, $3C
#_15FB3B: db $18, $3F, $1C, $1F, $03, $03, $00, $3E
#_15FB43: db $5B, $50, $44, $23, $20, $1C, $03, $8C
#_15FB4B: db $00, $CE, $04, $0E, $0C, $D6, $C4, $0C
#_15FB53: db $08, $FC, $38, $F8, $C0, $C0, $00, $7C
#_15FB5B: db $3A, $F2, $2A, $F4, $04, $38, $C0, $00
#_15FB63: db $00
#_15FB64: db $83 ; Repeat Fill
#_15FB65: db $00, $00 ; Repeat Fill bytes
#_15FB67: db $11 ; Direct Copy
#_15FB68: db $3D, $13, $3E, $07, $16, $07, $1F, $0E
#_15FB70: db $3F, $1F, $00, $18, $37, $3D, $3F, $1B
#_15FB78: db $17, $3D
#_15FB7A: db $83 ; Repeat Fill
#_15FB7B: db $00, $03 ; Repeat Fill bytes
#_15FB7D: db $E0, $38 ; EXT Direct Copy
#_15FB7F: db $F4, $08, $BC, $C8, $7C, $E0, $58, $D0
#_15FB87: db $B8, $70, $FC, $F8, $00, $18, $EC, $BC
#_15FB8F: db $DC, $A8, $D8, $FC, $00, $18, $B0, $31
#_15FB97: db $0A, $48, $04, $68, $41, $48, $10, $10
#_15FB9F: db $20, $24, $20, $20, $18, $31, $48, $68
#_15FBA7: db $48, $10, $24, $20, $08, $42, $04, $80
#_15FBAF: db $60, $14, $00, $08, $08, $0A, $20, $74
#_15FBB7: db $90
#_15FBB8: db $22 ; Byte Fill
#_15FBB9: db $10
#_15FBBA: db $0A ; Direct Copy
#_15FBBB: db $42, $80, $14, $08, $0A, $74, $10, $10
#_15FBC3: db $F9, $7F, $7C
#_15FBC6: db $84 ; Repeat Fill
#_15FBC7: db $C3, $00 ; Repeat Fill bytes
#_15FBC9: db $05 ; Direct Copy
#_15FBCA: db $67, $24, $C3, $43, $CE, $40
#_15FBD0: db $83 ; Repeat Fill
#_15FBD1: db $9E, $00 ; Repeat Fill bytes
#_15FBD3: db $06 ; Direct Copy
#_15FBD4: db $1F, $2F, $5B, $BC, $B1, $58, $8F
#_15FBDB: db $84 ; Repeat Fill
#_15FBDC: db $39, $01 ; Repeat Fill bytes
#_15FBDE: db $08 ; Direct Copy
#_15FBDF: db $FC, $08, $F2, $30, $CB, $C2, $3B, $02
#_15FBE7: db $DA
#_15FBE8: db $83 ; Repeat Fill
#_15FBE9: db $E7, $00 ; Repeat Fill bytes
#_15FBEB: db $E0, $25 ; EXT Direct Copy
#_15FBED: db $F4, $CE, $35, $C5, $26, $00, $03, $46
#_15FBF5: db $08, $00, $37, $03, $DF, $08, $7F, $86
#_15FBFD: db $39, $56, $39, $D0, $3F, $03, $08, $34
#_15FC05: db $D3, $6F, $29, $19, $1F, $40, $41, $50
#_15FC0D: db $02, $08, $F7, $84, $FD, $C2
#_15FC13: db $43 ; Word Fill
#_15FC14: db $FC, $60 ; Word Fill
#_15FC16: db $E0, $22 ; EXT Direct Copy
#_15FC18: db $FE, $60, $FF, $41, $02, $37, $8D, $C4
#_15FC20: db $E4, $E2, $E3, $00, $00, $01, $00, $00
#_15FC28: db $21, $03, $11, $04, $0B, $0B, $07, $16
#_15FC30: db $0D, $34, $1F, $00, $00, $21, $11, $08
#_15FC38: db $03, $05, $17
#_15FC3B: db $23 ; Byte Fill
#_15FC3C: db $00
#_15FC3D: db $00 ; Direct Copy
#_15FC3E: db $04
#_15FC3F: db $22 ; Byte Fill
#_15FC40: db $00
#_15FC41: db $07 ; Direct Copy
#_15FC42: db $28, $C0, $80, $F0, $C0, $F0, $40, $F8
#_15FC4A: db $24 ; Byte Fill
#_15FC4B: db $00
#_15FC4C: db $E0, $32 ; EXT Direct Copy
#_15FC4E: db $90, $C0, $C8, $18, $00, $2D, $18, $3F
#_15FC56: db $00, $42, $3D, $72, $2D, $45, $3A, $78
#_15FC5E: db $3F, $38, $1F, $18, $3D, $3F, $43, $7F
#_15FC66: db $59, $7E, $3F, $C0, $00, $60, $80, $A0
#_15FC6E: db $C0, $C0, $80, $E0, $80, $A0, $60, $10
#_15FC76: db $D0, $D0, $E0, $C0, $A0, $E0, $C0, $E0
#_15FC7E: db $80, $20, $50
#_15FC81: db $23 ; Byte Fill
#_15FC82: db $00
#_15FC83: db $02 ; Direct Copy
#_15FC84: db $18, $00, $37
#_15FC87: db $84 ; Repeat Fill
#_15FC88: db $63, $00 ; Repeat Fill bytes
#_15FC8A: db $0B ; Direct Copy
#_15FC8B: db $2F, $15, $26, $1B, $00, $00, $18, $2F
#_15FC93: db $3E, $1F, $2F, $27
#_15FC97: db $23 ; Byte Fill
#_15FC98: db $00
#_15FC99: db $02 ; Direct Copy
#_15FC9A: db $18, $00, $EC
#_15FC9D: db $84 ; Repeat Fill
#_15FC9E: db $7B, $00 ; Repeat Fill bytes
#_15FCA0: db $E0, $6D ; EXT Direct Copy
#_15FCA2: db $F4, $A8, $64, $D8, $00, $00, $18, $F4
#_15FCAA: db $7C, $F8, $F4, $E4, $38, $00, $64, $18
#_15FCB2: db $4F, $38, $5C, $3B, $2F, $1D, $35, $0E
#_15FCBA: db $4B, $35, $77, $3B, $38, $5C, $7F, $7C
#_15FCC2: db $2F, $35, $4B, $57, $1C, $00, $26, $18
#_15FCCA: db $F2, $1C, $3A, $DC, $F4, $B8, $AC, $70
#_15FCD2: db $D2, $AC, $EE, $DC, $1C, $3A, $FE, $3E
#_15FCDA: db $F4, $AC, $D2, $EA, $3D, $1D, $5F, $1F
#_15FCE2: db $67, $3F, $4F, $3C, $2E, $1B, $11, $0F
#_15FCEA: db $0C, $03, $03, $00, $3A, $6D, $47, $4F
#_15FCF2: db $2F, $11, $0C, $03, $3C, $D8, $2A, $EC
#_15FCFA: db $DA, $3C, $3A, $CC, $14, $F8, $A8, $F0
#_15FD02: db $30, $C0, $C0, $00, $EC, $12, $CA, $FA
#_15FD0A: db $F4, $E8, $30, $C0, $01, $00
#_15FD10: db $45 ; Word Fill
#_15FD11: db $03, $01 ; Word Fill
#_15FD13: db $08 ; Direct Copy
#_15FD14: db $06, $03, $0E, $07, $3E, $07, $7C, $3B
#_15FD1C: db $01
#_15FD1D: db $22 ; Byte Fill
#_15FD1E: db $03
#_15FD1F: db $06 ; Direct Copy
#_15FD20: db $07, $0F, $3F, $7F, $80, $00, $C0
#_15FD27: db $44 ; Word Fill
#_15FD28: db $80, $40 ; Word Fill
#_15FD2A: db $08 ; Direct Copy
#_15FD2B: db $20, $C0, $B0, $60, $3C, $E0, $6E, $DC
#_15FD33: db $80
#_15FD34: db $22 ; Byte Fill
#_15FD35: db $C0
#_15FD36: db $0E ; Direct Copy
#_15FD37: db $E0, $70, $FC, $FE, $7B, $38, $78, $10
#_15FD3F: db $7E, $12, $7B, $3B, $74, $30, $3B
#_15FD46: db $84 ; Repeat Fill
#_15FD47: db $4B, $02 ; Repeat Fill bytes
#_15FD49: db $12 ; Direct Copy
#_15FD4A: db $44, $6F, $6D, $44, $4B, $24, $18, $07
#_15FD52: db $C6, $04, $EE, $08, $46, $00, $DA, $00
#_15FD5A: db $92, $80, $DC
#_15FD5D: db $84 ; Repeat Fill
#_15FD5E: db $63, $02 ; Repeat Fill bytes
#_15FD60: db $E0, $41 ; EXT Direct Copy
#_15FD62: db $3A, $16, $BE, $E6, $6E, $24, $18, $E0
#_15FD6A: db $58, $7F, $0F, $BF, $07, $7F, $60, $BF
#_15FD72: db $00, $7F, $20, $1F, $4B, $19, $80, $05
#_15FD7A: db $5F, $8F, $67, $A0, $70, $1C, $19, $05
#_15FD82: db $E2, $FD, $C2, $FC, $80, $FC, $04, $FE
#_15FD8A: db $00, $FD, $0C, $F2, $90, $22, $08, $00
#_15FD92: db $E1, $C0, $84, $06, $0D, $32, $22, $00
#_15FD9A: db $16, $8F, $03, $1F, $08, $0F, $04, $0B
#_15FDA2: db $02, $09
#_15FDA4: db $25 ; Byte Fill
#_15FDA5: db $00
#_15FDA6: db $04 ; Direct Copy
#_15FDA7: db $87, $13, $08, $08, $09
#_15FDAC: db $22 ; Byte Fill
#_15FDAD: db $00
#_15FDAE: db $0A ; Direct Copy
#_15FDAF: db $CB, $FC, $80, $F0, $00, $E0, $20, $C0
#_15FDB7: db $48, $00, $80
#_15FDBA: db $24 ; Byte Fill
#_15FDBB: db $00
#_15FDBC: db $01 ; Direct Copy
#_15FDBD: db $CC, $80
#_15FDBF: db $25 ; Byte Fill
#_15FDC0: db $00
#_15FDC1: db $E0, $3A ; EXT Direct Copy
#_15FDC3: db $35, $0F, $40, $3F, $A8, $77, $A1, $7F
#_15FDCB: db $B1, $7F, $44, $3F, $39, $07, $07, $00
#_15FDD3: db $36, $4F, $B7, $BF, $BF, $47, $39, $07
#_15FDDB: db $50, $60, $DC, $E0, $BA, $C8, $73, $F6
#_15FDE3: db $1D, $9E, $22, $FC, $DC, $E0, $E0, $00
#_15FDEB: db $90, $5C, $B6, $1F, $FD, $E2, $DC, $E0
#_15FDF3: db $59, $1E, $7D, $3E, $56, $3B, $73, $3C
#_15FDFB: db $78, $3F, $25
#_15FDFE: db $84 ; Repeat Fill
#_15FDFF: db $8B, $01 ; Repeat Fill bytes
#_15FE01: db $11 ; Direct Copy
#_15FE02: db $6F, $5F, $5F, $5B, $4C, $27, $18, $07
#_15FE0A: db $9A, $78, $BE, $7C, $6A, $DC, $CE, $3C
#_15FE12: db $1E, $FC
#_15FE14: db $85 ; Repeat Fill
#_15FE15: db $02, $02 ; Repeat Fill bytes
#_15FE17: db $12 ; Direct Copy
#_15FE18: db $F6, $FA, $FA, $DA, $32, $E4, $18, $E0
#_15FE20: db $DB, $5F, $B9, $7F, $88, $7F, $5C, $3F
#_15FE28: db $6F, $2F, $3B
#_15FE2B: db $84 ; Repeat Fill
#_15FE2C: db $8B, $01 ; Repeat Fill bytes
#_15FE2E: db $12 ; Direct Copy
#_15FE2F: db $AF, $8F, $8F, $4F, $57, $23, $18, $07
#_15FE37: db $DB, $FA, $9D, $FE, $11, $FE, $3A, $FC
#_15FE3F: db $F6, $F4, $DC
#_15FE42: db $84 ; Repeat Fill
#_15FE43: db $A3, $01 ; Repeat Fill bytes
#_15FE45: db $07 ; Direct Copy
#_15FE46: db $F5, $F1, $F1, $F2, $EA, $C4, $18, $E0
#_15FE4E: db $FF ; End of GFX 98

;===================================================================================================

GFX_99:
#_15FE4F: db $E0, $2F ; EXT Direct Copy
#_15FE51: db $13, $00, $7F, $03, $FE, $0F, $7C, $0F
#_15FE59: db $3C, $1B, $36, $1B, $3F, $19, $3F, $08
#_15FE61: db $13, $6F, $BF, $5F, $3F, $3F, $3B, $39
#_15FE69: db $DC, $00, $FC, $C0, $7E, $F0, $3F, $F0
#_15FE71: db $3E, $D8, $6C, $D8, $FC, $98, $FC, $10
#_15FE79: db $D4, $FC, $FE, $F9, $FE, $FC, $DC, $9C
#_15FE81: db $23 ; Byte Fill
#_15FE82: db $00
#_15FE83: db $0A ; Direct Copy
#_15FE84: db $01, $00, $03, $01, $06, $03, $05, $02
#_15FE8C: db $07, $00, $0F
#_15FE8F: db $22 ; Byte Fill
#_15FE90: db $00
#_15FE91: db $E0, $7A ; EXT Direct Copy
#_15FE93: db $01, $03, $07, $07, $06, $0C, $00, $00
#_15FE9B: db $E0, $00, $F8, $E0, $1C, $F0, $7C, $A0
#_15FEA3: db $FE, $60, $FE, $40, $FF, $E0, $00, $E0
#_15FEAB: db $F8, $FC, $F4, $F6, $6E, $F3, $00, $00
#_15FEB3: db $03, $00, $0F, $03, $7C, $0F, $F8, $0F
#_15FEBB: db $78, $07, $78, $0F, $FC, $1F, $00, $03
#_15FEC3: db $0F, $7F, $9F, $6F, $5F, $BF, $00, $00
#_15FECB: db $C0, $00, $F0, $C0, $3C, $F0, $1E, $F0
#_15FED3: db $1F, $E0, $1E, $F0, $3E, $F0, $00, $C0
#_15FEDB: db $F0, $FC, $FA, $F5, $FA, $FA, $07, $00
#_15FEE3: db $3F, $07, $7F, $3F, $DB, $7F, $F4, $7B
#_15FEEB: db $67, $38, $5F, $28, $3F, $10, $07, $3F
#_15FEF3: db $7F, $FF, $FB, $78, $78, $30, $E0, $00
#_15FEFB: db $FC, $E0, $FE, $FC, $DE, $FC, $2B, $DE
#_15FF03: db $EB, $1E, $EF, $1E, $F7, $0C, $E0, $FC
#_15FF0B: db $FE, $FE, $DF
#_15FF0E: db $22 ; Byte Fill
#_15FF0F: db $1F
#_15FF10: db $23 ; Byte Fill
#_15FF11: db $00
#_15FF12: db $83 ; Repeat Fill
#_15FF13: db $34, $00 ; Repeat Fill bytes
#_15FF15: db $01 ; Direct Copy
#_15FF16: db $04, $03
#_15FF18: db $43 ; Word Fill
#_15FF19: db $07, $00 ; Word Fill
#_15FF1B: db $00 ; Direct Copy
#_15FF1C: db $0F
#_15FF1D: db $22 ; Byte Fill
#_15FF1E: db $00
#_15FF1F: db $05 ; Direct Copy
#_15FF20: db $01, $03, $07, $04, $04, $08
#_15FF26: db $23 ; Byte Fill
#_15FF27: db $00
#_15FF28: db $83 ; Repeat Fill
#_15FF29: db $7A, $00 ; Repeat Fill bytes
#_15FF2B: db $0F ; Direct Copy
#_15FF2C: db $F8, $A0, $F8, $30, $7C, $E8, $BE, $74
#_15FF34: db $00, $00, $C0, $F0, $F8, $F8, $FC, $FE
#_15FF3C: db $25 ; Byte Fill
#_15FF3D: db $00
#_15FF3E: db $88 ; Repeat Fill
#_15FF3F: db $C4, $00 ; Repeat Fill bytes
#_15FF41: db $23 ; Byte Fill
#_15FF42: db $00
#_15FF43: db $84 ; Repeat Fill
#_15FF44: db $D2, $00 ; Repeat Fill bytes
#_15FF46: db $25 ; Byte Fill
#_15FF47: db $00
#_15FF48: db $83 ; Repeat Fill
#_15FF49: db $7A, $00 ; Repeat Fill bytes
#_15FF4B: db $05 ; Direct Copy
#_15FF4C: db $FC, $A0, $FA, $7C, $E4, $F8
#_15FF52: db $22 ; Byte Fill
#_15FF53: db $00
#_15FF54: db $17 ; Direct Copy
#_15FF55: db $C0, $F0, $FC, $FE, $FC, $18, $00, $3F
#_15FF5D: db $18, $5F, $3B, $9F, $7F, $BF, $7F, $FF
#_15FF65: db $7F, $7B, $0F, $38, $1F, $18, $3F, $7F
#_15FF6D: db $22 ; Byte Fill
#_15FF6E: db $FF
#_15FF6F: db $01 ; Direct Copy
#_15FF70: db $7F, $3F
#_15FF72: db $83 ; Repeat Fill
#_15FF73: db $48, $00 ; Repeat Fill bytes
#_15FF75: db $0C ; Direct Copy
#_15FF76: db $FC, $E0, $FA, $EC, $F2, $DC, $FB, $FE
#_15FF7E: db $CF, $FE, $16, $EC, $00
#_15FF83: db $83 ; Repeat Fill
#_15FF84: db $B8, $00 ; Repeat Fill bytes
#_15FF86: db $02 ; Direct Copy
#_15FF87: db $FF, $FF, $FE
#_15FF8A: db $39 ; Byte Fill
#_15FF8B: db $00
#_15FF8C: db $E0, $50 ; EXT Direct Copy
#_15FF8E: db $78, $00, $9C, $78, $BF, $70, $FE, $4F
#_15FF96: db $78, $2F, $3F, $04, $7F, $02, $00, $78
#_15FF9E: db $FC, $FF, $FF, $7F, $2F, $6F, $3F, $11
#_15FFA6: db $1F, $0C, $1D, $0D, $0C, $04, $06, $02
#_15FFAE: db $02, $00, $03, $01, $01, $00, $2D, $13
#_15FFB6: db $12, $0B, $05, $03, $02, $01, $FC, $88
#_15FFBE: db $F8, $30, $B8, $B0, $30, $20, $60, $40
#_15FFC6: db $40, $00, $C0, $80, $80, $00, $B4, $C8
#_15FFCE: db $48, $D0, $A0, $C0, $40, $80, $33, $00
#_15FFD6: db $40, $00, $FC, $7C, $7F, $01, $07, $03
#_15FFDE: db $03
#_15FFDF: db $24 ; Byte Fill
#_15FFE0: db $00
#_15FFE1: db $12 ; Direct Copy
#_15FFE2: db $3F, $7F, $83, $7E, $04, $03, $00, $00
#_15FFEA: db $FF, $32, $73, $5E, $F6, $EC, $FE, $EC
#_15FFF2: db $FC, $D0, $E0
#_15FFF5: db $24 ; Byte Fill
#_15FFF6: db $00
#_15FFF7: db $11 ; Direct Copy
#_15FFF8: db $FF, $BF, $1E, $1E, $3C, $E0, $00, $00

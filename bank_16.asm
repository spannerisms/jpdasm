org $168000

;===================================================================================================

#_168000: db $5F, $0F, $1D, $0F, $1E, $0F, $0F, $07
#_168008: db $07, $03
#_16800A: db $25 ; Byte Fill
#_16800B: db $00
#_16800C: db $04 ; Direct Copy
#_16800D: db $5F, $1F, $1F, $0F, $07
#_168012: db $22 ; Byte Fill
#_168013: db $00
#_168014: db $09 ; Direct Copy
#_168015: db $FC, $F0, $B8, $F0, $78, $F0, $F0, $E0
#_16801D: db $E0, $C0
#_16801F: db $25 ; Byte Fill
#_168020: db $00
#_168021: db $04 ; Direct Copy
#_168022: db $FC, $F8, $F8, $F0, $E0
#_168027: db $22 ; Byte Fill
#_168028: db $00
#_168029: db $43 ; Word Fill
#_16802A: db $7F, $30 ; Word Fill
#_16802C: db $1E ; Direct Copy
#_16802D: db $77, $38, $7B, $1C, $7C, $17, $5F, $38
#_168035: db $4E, $3C, $3C, $00, $70, $70, $78, $7C
#_16803D: db $7F, $7F, $7E, $3C, $FA, $04, $FE, $08
#_168045: db $EE, $1C, $DE, $38, $3E, $E4, $FC
#_16804C: db $24 ; Byte Fill
#_16804D: db $00
#_16804E: db $06 ; Direct Copy
#_16804F: db $0E, $0E, $1E, $3E, $FE, $FC, $00
#_168056: db $44 ; Word Fill
#_168057: db $00, $0F ; Word Fill
#_168059: db $08 ; Direct Copy
#_16805A: db $0B, $04, $05, $02, $03, $00, $04, $03
#_168062: db $03
#_168063: db $22 ; Byte Fill
#_168064: db $00
#_168065: db $02 ; Direct Copy
#_168066: db $08, $08, $0D
#_168069: db $43 ; Word Fill
#_16806A: db $07, $03 ; Word Fill
#_16806C: db $0D ; Direct Copy
#_16806D: db $00, $9E, $74, $DE, $34, $AE, $D4, $7C
#_168075: db $E8, $78, $F0, $F8, $F0, $F0
#_16807B: db $22 ; Byte Fill
#_16807C: db $00
#_16807D: db $22 ; Byte Fill
#_16807E: db $FE
#_16807F: db $83 ; Repeat Fill
#_168080: db $08, $02 ; Repeat Fill bytes
#_168082: db $0C ; Direct Copy
#_168083: db $00, $0F, $00, $0E, $01, $0F, $01, $0C
#_16808B: db $03, $11, $0F, $0B, $07
#_168090: db $83 ; Repeat Fill
#_168091: db $B8, $01 ; Repeat Fill bytes
#_168093: db $14 ; Direct Copy
#_168094: db $08, $09, $0B, $0F, $1F, $0F, $07, $03
#_16809C: db $DC, $60, $FE, $98, $FF, $FA, $7F, $D6
#_1680A4: db $FA, $8C, $FC, $80, $80
#_1680A9: db $22 ; Byte Fill
#_1680AA: db $00
#_1680AB: db $00 ; Direct Copy
#_1680AC: db $FC
#_1680AD: db $83 ; Repeat Fill
#_1680AE: db $4C, $01 ; Repeat Fill bytes
#_1680B0: db $12 ; Direct Copy
#_1680B1: db $FC, $80, $00, $78, $3F, $7C, $3F, $7E
#_1680B9: db $3F, $3F, $1F, $6F, $3F, $4F, $38, $2E
#_1680C1: db $1C, $1C, $00
#_1680C4: db $22 ; Byte Fill
#_1680C5: db $7F
#_1680C6: db $0F ; Direct Copy
#_1680C7: db $3F, $7F, $7F, $3E, $1C, $16, $E8, $3E
#_1680CF: db $F4, $7E, $FC, $FE, $F8, $FE, $E4, $FC
#_1680D7: db $24 ; Byte Fill
#_1680D8: db $00
#_1680D9: db $24 ; Byte Fill
#_1680DA: db $FE
#_1680DB: db $00 ; Direct Copy
#_1680DC: db $FC
#_1680DD: db $23 ; Byte Fill
#_1680DE: db $00
#_1680DF: db $01 ; Direct Copy
#_1680E0: db $03, $00
#_1680E2: db $43 ; Word Fill
#_1680E3: db $04, $03 ; Word Fill
#_1680E5: db $03 ; Direct Copy
#_1680E6: db $06, $03, $07, $03
#_1680EA: db $83 ; Repeat Fill
#_1680EB: db $8C, $01 ; Repeat Fill bytes
#_1680ED: db $01 ; Direct Copy
#_1680EE: db $00, $03
#_1680F0: db $23 ; Byte Fill
#_1680F1: db $07
#_1680F2: db $19 ; Direct Copy
#_1680F3: db $03, $01, $7A, $2C, $74, $28, $F8, $40
#_1680FB: db $63, $82, $57, $94, $7F, $A8, $FF, $A0
#_168103: db $FF, $50, $7F, $7F, $FF, $FD, $E9, $D5
#_16810B: db $DF, $EF
#_16810D: db $23 ; Byte Fill
#_16810E: db $00
#_16810F: db $03 ; Direct Copy
#_168110: db $01, $00, $02, $01
#_168114: db $86 ; Repeat Fill
#_168115: db $D6, $02 ; Repeat Fill bytes
#_168117: db $22 ; Byte Fill
#_168118: db $00
#_168119: db $01 ; Direct Copy
#_16811A: db $01, $03
#_16811C: db $22 ; Byte Fill
#_16811D: db $07
#_16811E: db $1E ; Direct Copy
#_16811F: db $03, $38, $0F, $FB, $07, $7F, $C0, $7F
#_168127: db $C3, $FC, $C7, $F8, $8F, $F8, $3F, $7C
#_16812F: db $1F, $3F, $EF, $F7, $EF, $EF, $FF, $FF
#_168137: db $7F, $18, $00, $24, $00, $27, $00
#_16813E: db $43 ; Word Fill
#_16813F: db $31, $10 ; Word Fill
#_168141: db $E0, $25 ; EXT Direct Copy
#_168143: db $39, $08, $1D, $0C, $0E, $06, $18, $3C
#_16814B: db $3F, $2F, $2F, $17, $13, $09, $06, $00
#_168153: db $7F, $00, $FE, $70, $CF, $F8, $C7, $3D
#_16815B: db $E7, $1C, $F7, $0C, $FF, $38, $06, $79
#_168163: db $FE, $FF, $FF, $3F, $9E, $FD
#_168169: db $83 ; Repeat Fill
#_16816A: db $68, $01 ; Repeat Fill bytes
#_16816C: db $0E ; Direct Copy
#_16816D: db $EC, $50, $EE, $B0, $FE, $98, $FE, $40
#_168175: db $EC, $10, $EE, $58, $00, $78, $FC
#_16817C: db $22 ; Byte Fill
#_16817D: db $FE
#_16817E: db $01 ; Direct Copy
#_16817F: db $7C, $FE
#_168181: db $23 ; Byte Fill
#_168182: db $00
#_168183: db $0B ; Direct Copy
#_168184: db $01, $00, $02, $00, $06, $02, $0F, $06
#_16818C: db $0F, $01, $1C, $0F
#_168190: db $83 ; Repeat Fill
#_168191: db $40, $00 ; Repeat Fill bytes
#_168193: db $05 ; Direct Copy
#_168194: db $05, $09, $0F, $1F, $00, $0F
#_16819A: db $43 ; Word Fill
#_16819B: db $00, $1F ; Word Fill
#_16819D: db $E0, $29 ; EXT Direct Copy
#_16819F: db $01, $1E, $0D, $1F, $02, $1F, $03, $1F
#_1681A7: db $01, $0F, $00, $0A, $0A, $00, $0D, $02
#_1681AF: db $0B, $09, $00, $83, $83, $4F, $04, $DF
#_1681B7: db $4B, $FC, $89, $FE, $46, $DF, $03, $CF
#_1681BF: db $A4, $7D, $00, $03, $07, $CC, $8E, $47
#_1681C7: db $83, $62
#_1681C9: db $2E ; Byte Fill
#_1681CA: db $00
#_1681CB: db $00 ; Direct Copy
#_1681CC: db $01
#_1681CD: db $2A ; Byte Fill
#_1681CE: db $00
#_1681CF: db $0C ; Direct Copy
#_1681D0: db $03, $03, $0F, $04, $1F, $0B, $3C, $09
#_1681D8: db $3E, $06, $7F, $03, $FF
#_1681DD: db $83 ; Repeat Fill
#_1681DE: db $DF, $02 ; Repeat Fill bytes
#_1681E0: db $03 ; Direct Copy
#_1681E1: db $0C, $0E, $07, $03
#_1681E5: db $22 ; Byte Fill
#_1681E6: db $00
#_1681E7: db $E0, $2B ; EXT Direct Copy
#_1681E9: db $05, $0B, $0A, $05, $0D, $10, $11, $04
#_1681F1: db $04, $00, $09, $02, $02, $00, $01, $0A
#_1681F9: db $0D, $11, $04, $08, $02, $09, $0E, $04
#_168201: db $0F, $1B, $3F, $06, $7F, $00, $7F, $08
#_168209: db $FF, $1C, $FE, $00, $7C, $09, $0C, $1F
#_168211: db $27, $30, $58, $7C
#_168215: db $25 ; Byte Fill
#_168216: db $00
#_168217: db $0A ; Direct Copy
#_168218: db $16, $00, $3F, $0A, $3F, $01, $1E, $00
#_168220: db $3F, $00, $1F
#_168223: db $22 ; Byte Fill
#_168224: db $00
#_168225: db $03 ; Direct Copy
#_168226: db $16, $0A, $00, $11
#_16822A: db $23 ; Byte Fill
#_16822B: db $00
#_16822C: db $83 ; Repeat Fill
#_16822D: db $DB, $03 ; Repeat Fill bytes
#_16822F: db $08 ; Direct Copy
#_168230: db $9F, $8B, $FC, $49, $FE, $86, $FF, $03
#_168238: db $DF
#_168239: db $83 ; Repeat Fill
#_16823A: db $DF, $02 ; Repeat Fill bytes
#_16823C: db $03 ; Direct Copy
#_16823D: db $8C, $CE, $87, $03
#_168241: db $24 ; Byte Fill
#_168242: db $00
#_168243: db $0A ; Direct Copy
#_168244: db $07, $07, $1F, $0C, $3F, $09, $1E, $03
#_16824C: db $3C, $11, $7E
#_16824F: db $22 ; Byte Fill
#_168250: db $00
#_168251: db $04 ; Direct Copy
#_168252: db $07, $0F, $0E, $04, $1E
#_168257: db $26 ; Byte Fill
#_168258: db $00
#_168259: db $08 ; Direct Copy
#_16825A: db $07, $07, $0F, $05, $0E, $09, $1E, $08
#_168262: db $3F
#_168263: db $23 ; Byte Fill
#_168264: db $00
#_168265: db $03 ; Direct Copy
#_168266: db $07, $06, $0E, $0F
#_16826A: db $37 ; Byte Fill
#_16826B: db $00
#_16826C: db $0C ; Direct Copy
#_16826D: db $7F, $3F, $FF, $47, $CF, $3F, $BF, $7D
#_168275: db $FF, $44, $FC, $00, $78
#_16827A: db $22 ; Byte Fill
#_16827B: db $00
#_16827C: db $00 ; Direct Copy
#_16827D: db $7F
#_16827E: db $23 ; Byte Fill
#_16827F: db $FF
#_168280: db $0D ; Direct Copy
#_168281: db $FC, $78, $00, $1E, $02, $3F, $01, $7F
#_168289: db $00, $4F, $00, $37, $07, $0F
#_16828F: db $24 ; Byte Fill
#_168290: db $00
#_168291: db $E0, $2F ; EXT Direct Copy
#_168293: db $15, $2E, $7F, $7F, $38, $0F, $00, $00
#_16829B: db $3F, $19, $BF, $A0, $FF, $E9, $FE, $E7
#_1682A3: db $FD, $8F, $FC, $0F, $0E, $07, $07, $00
#_1682AB: db $FF, $59, $1F, $1F, $7F, $FF, $0F, $07
#_1682B3: db $FF, $D8, $FF, $EC, $3F, $F0, $CE, $38
#_1682BB: db $E8, $10, $F0, $80, $40, $80, $C0, $00
#_1682C3: db $22 ; Byte Fill
#_1682C4: db $FF
#_1682C5: db $0F ; Direct Copy
#_1682C6: db $BE, $98, $F0, $C0, $C0, $7F, $08, $1F
#_1682CE: db $04, $0B, $00, $05, $00, $02, $00, $01
#_1682D6: db $24 ; Byte Fill
#_1682D7: db $00
#_1682D8: db $05 ; Direct Copy
#_1682D9: db $73, $1B, $0E, $07, $03, $01
#_1682DF: db $22 ; Byte Fill
#_1682E0: db $00
#_1682E1: db $43 ; Word Fill
#_1682E2: db $0F, $00 ; Word Fill
#_1682E4: db $00 ; Direct Copy
#_1682E5: db $07
#_1682E6: db $43 ; Word Fill
#_1682E7: db $00, $03 ; Word Fill
#_1682E9: db $25 ; Byte Fill
#_1682EA: db $00
#_1682EB: db $01 ; Direct Copy
#_1682EC: db $08, $0A
#_1682EE: db $22 ; Byte Fill
#_1682EF: db $02
#_1682F0: db $22 ; Byte Fill
#_1682F1: db $00
#_1682F2: db $15 ; Direct Copy
#_1682F3: db $B7, $FF, $12, $FF, $1B, $FE, $19, $EE
#_1682FB: db $2C, $F7, $0E, $3F, $01, $1F, $00, $07
#_168303: db $F1, $13, $1B, $A9, $B4, $0F
#_168309: db $83 ; Repeat Fill
#_16830A: db $DE, $02 ; Repeat Fill bytes
#_16830C: db $E0, $2D ; EXT Direct Copy
#_16830E: db $00, $1F, $00, $3F, $10, $3F, $08, $1F
#_168316: db $1C, $3F, $06, $1F, $00, $07, $00, $02
#_16831E: db $12, $18, $0F, $1E, $07, $00, $C4, $BD
#_168326: db $37, $FF, $12, $FF, $93, $EE, $09, $F6
#_16832E: db $0C, $FF, $01, $FF, $00, $87, $A2, $31
#_168336: db $D3, $A3, $11, $EC, $81, $00
#_16833C: db $85 ; Repeat Fill
#_16833D: db $08, $04 ; Repeat Fill bytes
#_16833F: db $09 ; Direct Copy
#_168340: db $26, $7F, $10, $7F, $0C, $FF, $78, $8C
#_168348: db $38, $44
#_16834A: db $84 ; Repeat Fill
#_16834B: db $18, $04 ; Repeat Fill bytes
#_16834D: db $0E ; Direct Copy
#_16834E: db $7C, $78, $38, $90, $70, $20, $F0, $D8
#_168356: db $FE, $64, $FE, $08, $FE, $00, $FC
#_16835D: db $23 ; Byte Fill
#_16835E: db $00
#_16835F: db $04 ; Direct Copy
#_168360: db $90, $30, $F8, $E4, $0C
#_168365: db $22 ; Byte Fill
#_168366: db $00
#_168367: db $02 ; Direct Copy
#_168368: db $03, $0F, $01
#_16836B: db $43 ; Word Fill
#_16836C: db $07, $00 ; Word Fill
#_16836E: db $00 ; Direct Copy
#_16836F: db $03
#_168370: db $27 ; Byte Fill
#_168371: db $00
#_168372: db $01 ; Direct Copy
#_168373: db $03, $01
#_168375: db $25 ; Byte Fill
#_168376: db $00
#_168377: db $06 ; Direct Copy
#_168378: db $C4, $ED, $17, $FF, $92, $FF, $13
#_16837F: db $83 ; Repeat Fill
#_168380: db $5F, $05 ; Repeat Fill bytes
#_168382: db $84 ; Repeat Fill
#_168383: db $33, $05 ; Repeat Fill bytes
#_168385: db $11 ; Direct Copy
#_168386: db $C2, $F1, $F3, $03, $11, $0C, $01, $00
#_16838E: db $30, $7F, $38, $7F, $0F, $3F, $03, $1F
#_168396: db $00, $07
#_168398: db $25 ; Byte Fill
#_168399: db $00
#_16839A: db $03 ; Direct Copy
#_16839B: db $3F, $3F, $0F, $03
#_16839F: db $23 ; Byte Fill
#_1683A0: db $00
#_1683A1: db $05 ; Direct Copy
#_1683A2: db $0C, $1F, $07, $1F, $00, $07
#_1683A8: db $29 ; Byte Fill
#_1683A9: db $00
#_1683AA: db $01 ; Direct Copy
#_1683AB: db $0F, $07
#_1683AD: db $25 ; Byte Fill
#_1683AE: db $00
#_1683AF: db $FF ; End of GFX 99

;===================================================================================================

GFX_9A:
#_1683B0: db $25 ; Byte Fill
#_1683B1: db $00
#_1683B2: db $09 ; Direct Copy
#_1683B3: db $07, $00, $1F, $07, $38, $1F, $60, $3F
#_1683BB: db $C1, $7E
#_1683BD: db $22 ; Byte Fill
#_1683BE: db $00
#_1683BF: db $04 ; Direct Copy
#_1683C0: db $07, $1F, $3F, $7F, $FE
#_1683C5: db $25 ; Byte Fill
#_1683C6: db $00
#_1683C7: db $09 ; Direct Copy
#_1683C8: db $E0, $00, $F8, $E0, $1C, $F8, $06, $FC
#_1683D0: db $83, $7E
#_1683D2: db $22 ; Byte Fill
#_1683D3: db $00
#_1683D4: db $04 ; Direct Copy
#_1683D5: db $E0, $F8, $FC, $FE, $7F
#_1683DA: db $25 ; Byte Fill
#_1683DB: db $00
#_1683DC: db $09 ; Direct Copy
#_1683DD: db $38, $00, $74, $38, $BB, $0C, $BD, $33
#_1683E5: db $77, $0F
#_1683E7: db $22 ; Byte Fill
#_1683E8: db $00
#_1683E9: db $04 ; Direct Copy
#_1683EA: db $38, $7C, $FF, $CD, $77
#_1683EF: db $25 ; Byte Fill
#_1683F0: db $00
#_1683F1: db $09 ; Direct Copy
#_1683F2: db $1C, $00, $2E, $1C, $DD, $30, $BD, $CC
#_1683FA: db $4E, $B0
#_1683FC: db $22 ; Byte Fill
#_1683FD: db $00
#_1683FE: db $1C ; Direct Copy
#_1683FF: db $1C, $3E, $FF, $F3, $AE, $FE, $7F, $FD
#_168407: db $BF, $FB, $DF, $F7, $EF, $EF, $F7, $DF
#_16840F: db $FB, $BF, $FD, $7F, $FE, $FE, $FD, $FB
#_168417: db $F7, $EF, $DF, $BF, $7F
#_16841C: db $97 ; Repeat Fill
#_16841D: db $60, $00 ; Repeat Fill bytes
#_16841F: db $E0, $23 ; EXT Direct Copy
#_168421: db $03, $00, $0F, $03, $1F, $0C, $3F, $10
#_168429: db $7F, $20, $7F, $00, $E7, $58, $F5, $0A
#_168431: db $03, $0F, $1F, $3F, $67, $67, $E6, $F4
#_168439: db $C0, $00, $F0, $C0, $F8, $30, $CC, $38
#_168441: db $A6, $5C, $CE, $34
#_168445: db $43 ; Word Fill
#_168446: db $FF, $00 ; Word Fill
#_168448: db $07 ; Direct Copy
#_168449: db $C0, $F0, $F8, $FC, $DE, $7E, $3F, $3F
#_168451: db $23 ; Byte Fill
#_168452: db $00
#_168453: db $00 ; Direct Copy
#_168454: db $78
#_168455: db $43 ; Word Fill
#_168456: db $00, $FD ; Word Fill
#_168458: db $05 ; Direct Copy
#_168459: db $30, $CD, $78, $FF, $00, $FD
#_16845F: db $22 ; Byte Fill
#_168460: db $00
#_168461: db $00 ; Direct Copy
#_168462: db $78
#_168463: db $22 ; Byte Fill
#_168464: db $FD
#_168465: db $01 ; Direct Copy
#_168466: db $87, $87
#_168468: db $43 ; Word Fill
#_168469: db $10, $00 ; Word Fill
#_16846B: db $06 ; Direct Copy
#_16846C: db $FF, $00, $10, $C7, $C7, $EF, $A5
#_168473: db $45 ; Word Fill
#_168474: db $FF, $00 ; Word Fill
#_168476: db $06 ; Direct Copy
#_168477: db $00, $EF, $28, $D7, $EF, $FF, $EF
#_16847E: db $43 ; Word Fill
#_16847F: db $10, $00 ; Word Fill
#_168481: db $85 ; Repeat Fill
#_168482: db $DC, $00 ; Repeat Fill bytes
#_168484: db $00 ; Direct Copy
#_168485: db $45
#_168486: db $45 ; Word Fill
#_168487: db $FF, $00 ; Word Fill
#_168489: db $86 ; Repeat Fill
#_16848A: db $E9, $00 ; Repeat Fill bytes
#_16848C: db $06 ; Direct Copy
#_16848D: db $14, $00, $7E, $00, $FE, $00, $7F
#_168494: db $83 ; Repeat Fill
#_168495: db $0B, $01 ; Repeat Fill bytes
#_168497: db $0C ; Direct Copy
#_168498: db $00, $7E, $00, $28, $00, $14, $6A, $AE
#_1684A0: db $79, $9E, $75, $56, $28
#_1684A5: db $88 ; Repeat Fill
#_1684A6: db $90, $00 ; Repeat Fill bytes
#_1684A8: db $06 ; Direct Copy
#_1684A9: db $00, $4F, $30, $EF, $10, $FF, $00
#_1684B0: db $83 ; Repeat Fill
#_1684B1: db $A0, $00 ; Repeat Fill bytes
#_1684B3: db $03 ; Direct Copy
#_1684B4: db $73, $43, $E7, $BF
#_1684B8: db $85 ; Repeat Fill
#_1684B9: db $A8, $00 ; Repeat Fill bytes
#_1684BB: db $09 ; Direct Copy
#_1684BC: db $FC, $08, $FE, $60, $9E, $F0, $2F, $D2
#_1684C4: db $0F, $F2
#_1684C6: db $83 ; Repeat Fill
#_1684C7: db $B8, $00 ; Repeat Fill bytes
#_1684C9: db $05 ; Direct Copy
#_1684CA: db $FE, $FE, $DF, $FF, $1F, $00
#_1684D0: db $47 ; Word Fill
#_1684D1: db $3E, $03 ; Word Fill
#_1684D3: db $02 ; Direct Copy
#_1684D4: db $1F, $00, $02
#_1684D7: db $43 ; Word Fill
#_1684D8: db $00, $1F ; Word Fill
#_1684DA: db $23 ; Byte Fill
#_1684DB: db $3F
#_1684DC: db $06 ; Direct Copy
#_1684DD: db $1F, $03, $1F, $F8, $00, $FC, $20
#_1684E4: db $43 ; Word Fill
#_1684E5: db $DC, $30 ; Word Fill
#_1684E7: db $04 ; Direct Copy
#_1684E8: db $FC, $20, $F8, $00, $40
#_1684ED: db $43 ; Word Fill
#_1684EE: db $00, $F8 ; Word Fill
#_1684F0: db $23 ; Byte Fill
#_1684F1: db $3C
#_1684F2: db $43 ; Word Fill
#_1684F3: db $F8, $C0 ; Word Fill
#_1684F5: db $0B ; Direct Copy
#_1684F6: db $7F, $D0, $7F, $A0, $7F, $5A, $3F, $25
#_1684FE: db $1F, $18, $07, $07
#_168502: db $22 ; Byte Fill
#_168503: db $00
#_168504: db $14 ; Direct Copy
#_168505: db $FF, $FF, $AF, $5F, $25, $18, $07, $00
#_16850D: db $03, $FE, $0B, $FE, $05, $FE, $5A, $FC
#_168515: db $A4, $F8, $18, $E0, $E0
#_16851A: db $22 ; Byte Fill
#_16851B: db $00
#_16851C: db $0B ; Direct Copy
#_16851D: db $FF, $FF, $F5, $FA, $A4, $18, $E0, $00
#_168525: db $4D, $3F, $54, $3B
#_168529: db $43 ; Word Fill
#_16852A: db $96, $79 ; Word Fill
#_16852C: db $02 ; Direct Copy
#_16852D: db $4A, $3D, $27
#_168530: db $84 ; Repeat Fill
#_168531: db $89, $01 ; Repeat Fill bytes
#_168533: db $0B ; Direct Copy
#_168534: db $4F, $5F, $9B, $99, $4D, $27, $18, $07
#_16853C: db $B2, $FC, $2A, $DC
#_168540: db $43 ; Word Fill
#_168541: db $69, $9E ; Word Fill
#_168543: db $02 ; Direct Copy
#_168544: db $52, $BC, $E4
#_168547: db $84 ; Repeat Fill
#_168548: db $A1, $01 ; Repeat Fill bytes
#_16854A: db $07 ; Direct Copy
#_16854B: db $F2, $FA, $D9, $99, $B2, $E4, $18, $E0
#_168553: db $F0, $2F ; EXT Repeat Fill
#_168555: db $60, $00 ; Repeat Fill bytes
#_168557: db $0A ; Direct Copy
#_168558: db $BC, $43, $BF, $40, $A7, $58, $46, $39
#_168560: db $40, $3F, $20
#_168563: db $84 ; Repeat Fill
#_168564: db $89, $01 ; Repeat Fill bytes
#_168566: db $07 ; Direct Copy
#_168567: db $9C, $8F, $80, $40, $40, $20, $18, $07
#_16856F: db $44 ; Word Fill
#_168570: db $FF, $02 ; Word Fill
#_168572: db $16 ; Direct Copy
#_168573: db $06, $3E, $C4, $3E, $CC, $3C, $C8, $F8
#_16857B: db $00, $E0, $00, $FF, $DF, $8F, $1E, $1E
#_168583: db $3C, $F8, $E0, $85, $78, $FF, $78
#_16858A: db $45 ; Word Fill
#_16858B: db $FD, $00 ; Word Fill
#_16858D: db $00 ; Direct Copy
#_16858E: db $78
#_16858F: db $24 ; Byte Fill
#_168590: db $00
#_168591: db $01 ; Direct Copy
#_168592: db $FF, $FF
#_168594: db $22 ; Byte Fill
#_168595: db $FD
#_168596: db $00 ; Direct Copy
#_168597: db $78
#_168598: db $22 ; Byte Fill
#_168599: db $00
#_16859A: db $0B ; Direct Copy
#_16859B: db $EF, $52, $C7, $FF, $EF, $FF, $FF, $00
#_1685A3: db $FF, $FF, $00, $10
#_1685A7: db $22 ; Byte Fill
#_1685A8: db $00
#_1685A9: db $05 ; Direct Copy
#_1685AA: db $D7, $EF, $EF, $FF, $00, $FF
#_1685B0: db $22 ; Byte Fill
#_1685B1: db $00
#_1685B2: db $01 ; Direct Copy
#_1685B3: db $EF, $92
#_1685B5: db $89 ; Repeat Fill
#_1685B6: db $5B, $02 ; Repeat Fill bytes
#_1685B8: db $22 ; Byte Fill
#_1685B9: db $00
#_1685BA: db $02 ; Direct Copy
#_1685BB: db $D7, $EF, $EF
#_1685BE: db $43 ; Word Fill
#_1685BF: db $FF, $00 ; Word Fill
#_1685C1: db $00 ; Direct Copy
#_1685C2: db $00
#_1685C3: db $97 ; Repeat Fill
#_1685C4: db $60, $00 ; Repeat Fill bytes
#_1685C6: db $E0, $39 ; EXT Direct Copy
#_1685C8: db $FF, $00, $9B, $64, $97, $68, $4F, $30
#_1685D0: db $7F, $00, $3F, $00, $1F, $03, $07, $00
#_1685D8: db $AF, $83, $87, $4F, $7F, $3F, $1F, $07
#_1685E0: db $9F, $62, $FB, $06, $FA, $04, $F6, $0C
#_1685E8: db $EC, $18, $F8, $30, $F0, $C0, $C0, $00
#_1685F0: db $FF, $FF, $FE, $FE, $FC, $F8, $F0, $C0
#_1685F8: db $2C, $1F, $2E, $1F, $2C, $1D, $6E, $18
#_168600: db $2C, $1D
#_168602: db $84 ; Repeat Fill
#_168603: db $D0, $02 ; Repeat Fill bytes
#_168605: db $05 ; Direct Copy
#_168606: db $1F, $2F, $2F, $2E, $29, $2E
#_16860C: db $22 ; Byte Fill
#_16860D: db $2F
#_16860E: db $09 ; Direct Copy
#_16860F: db $34, $F8, $14, $F8, $24, $F0, $0F, $E0
#_168617: db $04, $F0
#_168619: db $83 ; Repeat Fill
#_16861A: db $E8, $02 ; Repeat Fill bytes
#_16861C: db $06 ; Direct Copy
#_16861D: db $34, $F8, $F4, $F4, $EC, $50, $EC
#_168624: db $22 ; Byte Fill
#_168625: db $F4
#_168626: db $01 ; Direct Copy
#_168627: db $00, $00
#_168629: db $83 ; Repeat Fill
#_16862A: db $90, $00 ; Repeat Fill bytes
#_16862C: db $09 ; Direct Copy
#_16862D: db $1C, $0F, $31, $1E, $30, $1F, $64, $3F
#_168635: db $68, $3F
#_168637: db $83 ; Repeat Fill
#_168638: db $2F, $01 ; Repeat Fill bytes
#_16863A: db $05 ; Direct Copy
#_16863B: db $3E, $3F, $7F, $7F, $00, $00
#_168641: db $83 ; Repeat Fill
#_168642: db $A8, $00 ; Repeat Fill bytes
#_168644: db $09 ; Direct Copy
#_168645: db $38, $F0, $8C, $78, $0C, $F8, $26, $FC
#_16864D: db $16, $FC
#_16864F: db $83 ; Repeat Fill
#_168650: db $B7, $00 ; Repeat Fill bytes
#_168652: db $E0, $33 ; EXT Direct Copy
#_168654: db $7C, $FC, $FE, $FE, $18, $00, $34, $18
#_16865C: db $7A, $2C, $5F, $14, $2D, $03, $1B, $07
#_168664: db $15, $0F, $28, $1F, $18, $3C, $5E, $6F
#_16866C: db $3D, $1B, $17, $2F, $18, $00, $2C, $18
#_168674: db $5E, $34, $FA, $28, $B4, $C0, $58, $A0
#_16867C: db $A8, $F0, $14, $F8, $18, $3C, $7A, $F6
#_168684: db $FC, $B8, $E8, $F4
#_168688: db $F0, $36 ; EXT Repeat Fill
#_16868A: db $60, $00 ; Repeat Fill bytes
#_16868C: db $08 ; Direct Copy
#_16868D: db $13, $7C, $07, $79, $06, $F8, $07, $FC
#_168695: db $47
#_168696: db $83 ; Repeat Fill
#_168697: db $A0, $00 ; Repeat Fill bytes
#_168699: db $03 ; Direct Copy
#_16869A: db $7F, $7E, $FF, $FF
#_16869E: db $86 ; Repeat Fill
#_16869F: db $38, $01 ; Repeat Fill bytes
#_1686A1: db $08 ; Direct Copy
#_1686A2: db $C8, $3E, $E0, $9E, $60, $1F, $E2, $3F
#_1686AA: db $E2
#_1686AB: db $84 ; Repeat Fill
#_1686AC: db $48, $01 ; Repeat Fill bytes
#_1686AE: db $02 ; Direct Copy
#_1686AF: db $7E, $FF, $FF
#_1686B2: db $83 ; Repeat Fill
#_1686B3: db $90, $00 ; Repeat Fill bytes
#_1686B5: db $0B ; Direct Copy
#_1686B6: db $1E, $0D, $3C, $13, $7C, $03, $7E, $01
#_1686BE: db $FF, $40, $F9, $46
#_1686C2: db $84 ; Repeat Fill
#_1686C3: db $A0, $03 ; Repeat Fill bytes
#_1686C5: db $02 ; Direct Copy
#_1686C6: db $73, $E3, $F1
#_1686C9: db $83 ; Repeat Fill
#_1686CA: db $A8, $00 ; Repeat Fill bytes
#_1686CC: db $0B ; Direct Copy
#_1686CD: db $78, $B0, $BC, $48, $3E, $C0, $7E, $80
#_1686D5: db $FF, $02, $9F, $62
#_1686D9: db $83 ; Repeat Fill
#_1686DA: db $29, $03 ; Repeat Fill bytes
#_1686DC: db $03 ; Direct Copy
#_1686DD: db $FE, $CE, $C7, $8F
#_1686E1: db $8B ; Repeat Fill
#_1686E2: db $90, $00 ; Repeat Fill bytes
#_1686E4: db $03 ; Direct Copy
#_1686E5: db $CF, $30, $E7, $18
#_1686E9: db $84 ; Repeat Fill
#_1686EA: db $A0, $03 ; Repeat Fill bytes
#_1686EC: db $02 ; Direct Copy
#_1686ED: db $71, $C1, $E3
#_1686F0: db $84 ; Repeat Fill
#_1686F1: db $A8, $00 ; Repeat Fill bytes
#_1686F3: db $0A ; Direct Copy
#_1686F4: db $20, $FC, $00, $FE, $30, $CE, $78, $97
#_1686FC: db $6A, $CF, $32
#_1686FF: db $85 ; Repeat Fill
#_168700: db $48, $01 ; Repeat Fill bytes
#_168702: db $18 ; Direct Copy
#_168703: db $EF, $FF, $01, $00, $07, $01, $1E, $06
#_16870B: db $38, $18, $33, $10, $67, $23, $6C, $24
#_168713: db $CC, $44, $01, $07, $1F, $3F, $3F, $7F
#_16871B: db $7F
#_16871C: db $85 ; Repeat Fill
#_16871D: db $5E, $02 ; Repeat Fill bytes
#_16871F: db $43 ; Word Fill
#_168720: db $00, $FF ; Word Fill
#_168722: db $06 ; Direct Copy
#_168723: db $FF, $00, $00, $55, $00, $AA, $00
#_16872A: db $25 ; Byte Fill
#_16872B: db $FF
#_16872C: db $02 ; Direct Copy
#_16872D: db $AA, $55, $2E
#_168730: db $43 ; Word Fill
#_168731: db $1F, $2C ; Word Fill
#_168733: db $8F ; Repeat Fill
#_168734: db $D5, $02 ; Repeat Fill bytes
#_168736: db $22 ; Byte Fill
#_168737: db $2F
#_168738: db $83 ; Repeat Fill
#_168739: db $F4, $02 ; Repeat Fill bytes
#_16873B: db $00 ; Direct Copy
#_16873C: db $04
#_16873D: db $8F ; Repeat Fill
#_16873E: db $ED, $02 ; Repeat Fill bytes
#_168740: db $22 ; Byte Fill
#_168741: db $F4
#_168742: db $0C ; Direct Copy
#_168743: db $78, $3F, $4A, $3F, $2D, $1F, $23, $1F
#_16874B: db $10, $0F, $0C, $03, $03
#_168750: db $22 ; Byte Fill
#_168751: db $00
#_168752: db $14 ; Direct Copy
#_168753: db $7F, $4F, $2D, $23, $10, $0C, $03, $00
#_16875B: db $1A, $FC, $5A, $FC, $B4, $F8, $C4, $F8
#_168763: db $08, $F0, $30, $C0, $C0
#_168768: db $22 ; Byte Fill
#_168769: db $00
#_16876A: db $09 ; Direct Copy
#_16876B: db $FA, $FA, $B4, $C4, $08, $30, $C0, $00
#_168773: db $2C, $1B
#_168775: db $43 ; Word Fill
#_168776: db $56, $39 ; Word Fill
#_168778: db $04 ; Direct Copy
#_168779: db $5A, $3D, $2C, $1F, $13
#_16877E: db $84 ; Repeat Fill
#_16877F: db $89, $04 ; Repeat Fill bytes
#_168781: db $09 ; Direct Copy
#_168782: db $2F, $5B, $59, $5D, $2F, $13, $0C, $03
#_16878A: db $34, $D8
#_16878C: db $43 ; Word Fill
#_16878D: db $6A, $9C ; Word Fill
#_16878F: db $04 ; Direct Copy
#_168790: db $5A, $BC, $34, $F8, $C8
#_168795: db $84 ; Repeat Fill
#_168796: db $A1, $04 ; Repeat Fill bytes
#_168798: db $07 ; Direct Copy
#_168799: db $F4, $DA, $9A, $BA, $F4, $C8, $30, $C0
#_1687A1: db $F0, $2F ; EXT Repeat Fill
#_1687A3: db $60, $00 ; Repeat Fill bytes
#_1687A5: db $1B ; Direct Copy
#_1687A6: db $FF, $43, $FF, $40, $5F, $20, $6F, $30
#_1687AE: db $33, $1C, $1C, $0F, $0F, $03, $03, $00
#_1687B6: db $FF, $FF, $7F, $7F, $3F, $1F, $0F, $03
#_1687BE: db $FF, $C2, $FF, $02
#_1687C2: db $83 ; Repeat Fill
#_1687C3: db $BC, $02 ; Repeat Fill bytes
#_1687C5: db $03 ; Direct Copy
#_1687C6: db $CC, $38, $38, $F0
#_1687CA: db $8B ; Repeat Fill
#_1687CB: db $C4, $02 ; Repeat Fill bytes
#_1687CD: db $0B ; Direct Copy
#_1687CE: db $FD, $42, $FF, $00, $7F, $00, $76, $09
#_1687D6: db $32, $0D, $18, $07
#_1687DA: db $83 ; Repeat Fill
#_1687DB: db $8A, $04 ; Repeat Fill bytes
#_1687DD: db $13 ; Direct Copy
#_1687DE: db $FD, $DF, $49, $50, $30, $18, $0C, $03
#_1687E6: db $BF, $42, $FF, $00, $FE, $00, $6E, $90
#_1687EE: db $4C, $B0, $18, $E0
#_1687F2: db $83 ; Repeat Fill
#_1687F3: db $A2, $04 ; Repeat Fill bytes
#_1687F5: db $E0, $21 ; EXT Direct Copy
#_1687F7: db $BF, $FB, $92, $0A, $0C, $18, $30, $C0
#_1687FF: db $FF, $00, $CF, $30, $8F, $70, $49, $36
#_168807: db $40, $3F, $31, $0E, $1F, $00, $07, $00
#_16880F: db $BF, $8F, $83, $40, $40, $31, $1F, $07
#_168817: db $FF, $02
#_168819: db $8A ; Repeat Fill
#_16881A: db $BA, $02 ; Repeat Fill bytes
#_16881C: db $00 ; Direct Copy
#_16881D: db $40
#_16881E: db $84 ; Repeat Fill
#_16881F: db $C6, $02 ; Repeat Fill bytes
#_168821: db $08 ; Direct Copy
#_168822: db $3E, $3C, $78, $F0, $C0, $D9, $48, $DA
#_16882A: db $48
#_16882B: db $83 ; Repeat Fill
#_16882C: db $A0, $05 ; Repeat Fill bytes
#_16882E: db $87 ; Repeat Fill
#_16882F: db $A0, $05 ; Repeat Fill bytes
#_168831: db $47 ; Word Fill
#_168832: db $FE, $FD ; Word Fill
#_168834: db $0F ; Direct Copy
#_168835: db $FC, $03, $F2, $0D, $CF, $30, $D3, $2C
#_16883D: db $A7, $58, $AE, $51, $7E, $81, $39, $C6
#_168845: db $27 ; Byte Fill
#_168846: db $00
#_168847: db $F0, $2E ; EXT Repeat Fill
#_168849: db $60, $00 ; Repeat Fill bytes
#_16884B: db $00 ; Direct Copy
#_16884C: db $7F
#_16884D: db $FF ; End of GFX 9A

;===================================================================================================

GFX_9B:
#_16884E: db $13 ; Direct Copy
#_16884F: db $02, $00, $05, $00, $04, $02, $08, $02
#_168857: db $1C, $0C, $14, $0D, $1A, $06, $1C, $02
#_16885F: db $04, $02, $07, $0F
#_168863: db $22 ; Byte Fill
#_168864: db $1F
#_168865: db $0F ; Direct Copy
#_168866: db $17, $40, $00, $20, $00, $C0, $20, $90
#_16886E: db $00, $38, $B0, $A8, $30, $58, $60, $B8
#_168876: db $43 ; Word Fill
#_168877: db $40, $20 ; Word Fill
#_168879: db $19 ; Direct Copy
#_16887A: db $70, $F8, $78, $F8, $68, $0B, $00, $06
#_168882: db $00, $12, $00, $08, $05, $01, $00, $17
#_16888A: db $07, $18, $0F, $13, $0C, $00, $09, $05
#_168892: db $17, $0F
#_168894: db $22 ; Byte Fill
#_168895: db $1F
#_168896: db $14 ; Direct Copy
#_168897: db $00, $00, $C0, $00, $40, $80, $30, $00
#_16889F: db $90, $00, $E8, $80, $E8, $E0, $FC, $F0
#_1688A7: db $80, $00, $E0, $C0, $E0
#_1688AC: db $22 ; Byte Fill
#_1688AD: db $F0
#_1688AE: db $E0, $5F ; EXT Direct Copy
#_1688B0: db $05, $00, $03, $00, $05, $02, $0D, $00
#_1688B8: db $1C, $0D, $1E, $0D, $3E, $1C, $3A, $0E
#_1688C0: db $00, $0C, $06, $0A, $1F, $1D, $3D, $3F
#_1688C8: db $20, $00, $00, $40, $20, $80, $B0, $20
#_1688D0: db $B8, $10, $B8, $70, $7C, $B8, $4C, $70
#_1688D8: db $90, $E0, $E0, $70, $58, $78, $BC, $FC
#_1688E0: db $01, $00, $05, $02, $0F, $04, $0E, $02
#_1688E8: db $1F, $00, $1C, $03, $3E, $15, $3F, $1F
#_1688F0: db $04, $06, $0C, $0F, $13, $17, $3F, $3F
#_1688F8: db $00, $00, $60, $00, $30, $A0, $70, $40
#_168900: db $F8, $00, $38, $C0, $5C, $A8, $94, $F8
#_168908: db $60, $A0, $F0, $F0, $C8, $E8, $FC, $FC
#_168910: db $43 ; Word Fill
#_168911: db $01, $00 ; Word Fill
#_168913: db $E0, $2B ; EXT Direct Copy
#_168915: db $02, $00, $3A, $01, $67, $38, $7F, $3C
#_16891D: db $3F, $1C, $7C, $0F, $04, $06, $01, $3B
#_168925: db $7F, $7C, $3C, $5F, $40, $00, $28, $C0
#_16892D: db $30, $88, $44, $10, $A8, $40, $E4, $00
#_168935: db $F8, $E0, $38, $E0, $20, $C0, $D8, $B8
#_16893D: db $F0, $78, $F0, $F0
#_168941: db $26 ; Byte Fill
#_168942: db $00
#_168943: db $08 ; Direct Copy
#_168944: db $1C, $18, $3E, $34, $7F, $3C, $7F, $19
#_16894C: db $7F
#_16894D: db $23 ; Byte Fill
#_16894E: db $00
#_16894F: db $1B ; Direct Copy
#_168950: db $18, $3C, $3C, $19, $00, $0E, $0C, $3F
#_168958: db $3E, $7F, $6F, $FF, $C7, $FF, $EE, $FF
#_168960: db $FE, $FF, $FC, $FF, $00, $0C, $3E, $7F
#_168968: db $FF, $FE, $FE, $FC
#_16896C: db $43 ; Word Fill
#_16896D: db $3C, $FF ; Word Fill
#_16896F: db $00 ; Direct Copy
#_168970: db $3E
#_168971: db $44 ; Word Fill
#_168972: db $FF, $7F ; Word Fill
#_168974: db $45 ; Word Fill
#_168975: db $FE, $FF ; Word Fill
#_168977: db $04 ; Direct Copy
#_168978: db $FC, $FC, $FE, $FF, $FF
#_16897D: db $22 ; Byte Fill
#_16897E: db $FE
#_16897F: db $E0, $23 ; EXT Direct Copy
#_168981: db $70, $FC, $7C, $FE, $C2, $FF, $CE, $FF
#_168989: db $FC, $FF, $F0, $FE, $40, $FC, $00, $F8
#_168991: db $70, $7C, $FE, $FE, $FC, $F0, $40, $00
#_168999: db $2D, $7F, $26, $7F, $36, $7F, $1C, $3F
#_1689A1: db $00, $3E, $00, $1C
#_1689A5: db $23 ; Byte Fill
#_1689A6: db $00
#_1689A7: db $03 ; Direct Copy
#_1689A8: db $3D, $3E, $3E, $1C
#_1689AC: db $28 ; Byte Fill
#_1689AD: db $00
#_1689AE: db $43 ; Word Fill
#_1689AF: db $80, $00 ; Word Fill
#_1689B1: db $45 ; Word Fill
#_1689B2: db $C0, $00 ; Word Fill
#_1689B4: db $00 ; Direct Copy
#_1689B5: db $F0
#_1689B6: db $27 ; Byte Fill
#_1689B7: db $00
#_1689B8: db $E0, $54 ; EXT Direct Copy
#_1689BA: db $3F, $11, $3E, $19, $3C, $1F, $1E, $0D
#_1689C2: db $0E, $07, $0F, $03, $0F, $00, $04, $00
#_1689CA: db $33, $3B, $3F, $1F, $0F, $0B, $0B, $04
#_1689D2: db $FC, $88, $7C, $98, $0C, $F8, $58, $B0
#_1689DA: db $70, $E0, $F0, $C0, $F0, $00, $20, $00
#_1689E2: db $CC, $DC, $FC, $F8, $F0, $D0, $D0, $20
#_1689EA: db $2F, $10, $4F, $30, $EF, $79, $FF, $7F
#_1689F2: db $7F, $01, $3F, $0F, $1F, $00, $10, $00
#_1689FA: db $3C, $74, $FD, $FF, $7F, $2F, $0F, $10
#_168A02: db $F8, $F0, $BC, $F0, $18, $F0, $38, $F0
#_168A0A: db $70, $E0, $E0, $80, $80
#_168A0F: db $22 ; Byte Fill
#_168A10: db $00
#_168A11: db $00 ; Direct Copy
#_168A12: db $F0
#_168A13: db $22 ; Byte Fill
#_168A14: db $F8
#_168A15: db $10 ; Direct Copy
#_168A16: db $F0, $E0, $80, $00, $3D, $1E, $3F, $1C
#_168A1E: db $3F, $1A, $1F, $0D, $1F, $0A, $0F, $01
#_168A26: db $03
#_168A27: db $22 ; Byte Fill
#_168A28: db $00
#_168A29: db $14 ; Direct Copy
#_168A2A: db $3E, $3E, $3F, $1F, $1F, $0F, $03, $00
#_168A32: db $04, $78, $C4, $38, $AC, $58, $48, $B0
#_168A3A: db $F8, $50, $F0, $80, $C0
#_168A3F: db $22 ; Byte Fill
#_168A40: db $00
#_168A41: db $14 ; Direct Copy
#_168A42: db $FC, $7C, $FC, $F8, $F8, $F0, $C0, $00
#_168A4A: db $2F, $18, $3F, $10, $3F, $11, $1E, $03
#_168A52: db $0F, $00, $07, $03, $03
#_168A57: db $22 ; Byte Fill
#_168A58: db $00
#_168A59: db $14 ; Direct Copy
#_168A5A: db $3F, $3B, $3B, $1F, $0F, $07, $03, $00
#_168A62: db $E4, $18, $FC, $08, $FC, $88, $78, $C0
#_168A6A: db $F0, $00, $E0, $C0, $C0
#_168A6F: db $22 ; Byte Fill
#_168A70: db $00
#_168A71: db $14 ; Direct Copy
#_168A72: db $FC, $DC, $DC, $F8, $F0, $E0, $C0, $00
#_168A7A: db $7F, $07, $3F, $01, $3F, $00, $3F, $04
#_168A82: db $3F, $18, $1F, $07, $07
#_168A87: db $22 ; Byte Fill
#_168A88: db $00
#_168A89: db $10 ; Direct Copy
#_168A8A: db $7F, $37, $2F, $3F, $3F, $1F, $07, $00
#_168A92: db $18, $E0, $94, $F0, $B6, $F0, $F8, $F0
#_168A9A: db $F0
#_168A9B: db $83 ; Repeat Fill
#_168A9C: db $D1, $01 ; Repeat Fill bytes
#_168A9E: db $22 ; Byte Fill
#_168A9F: db $00
#_168AA0: db $03 ; Direct Copy
#_168AA1: db $F0, $F8, $F8, $FC
#_168AA5: db $83 ; Repeat Fill
#_168AA6: db $DC, $01 ; Repeat Fill bytes
#_168AA8: db $0B ; Direct Copy
#_168AA9: db $09, $3F, $02, $3F, $06, $3F, $04, $1F
#_168AB1: db $0C, $1F, $0E, $1F
#_168AB5: db $43 ; Word Fill
#_168AB6: db $1F, $3F ; Word Fill
#_168AB8: db $07 ; Direct Copy
#_168AB9: db $09, $03, $07, $07, $0F, $0F, $1F, $1F
#_168AC1: db $43 ; Word Fill
#_168AC2: db $3C, $FF ; Word Fill
#_168AC4: db $00 ; Direct Copy
#_168AC5: db $3E
#_168AC6: db $44 ; Word Fill
#_168AC7: db $FF, $7F ; Word Fill
#_168AC9: db $45 ; Word Fill
#_168ACA: db $FE, $FF ; Word Fill
#_168ACC: db $84 ; Repeat Fill
#_168ACD: db $30, $01 ; Repeat Fill bytes
#_168ACF: db $22 ; Byte Fill
#_168AD0: db $FE
#_168AD1: db $02 ; Direct Copy
#_168AD2: db $F3, $FF, $E7
#_168AD5: db $43 ; Word Fill
#_168AD6: db $FF, $06 ; Word Fill
#_168AD8: db $0A ; Direct Copy
#_168AD9: db $3F, $07, $1F, $03, $1F, $01, $0F, $00
#_168AE1: db $03, $F3, $E7
#_168AE4: db $22 ; Byte Fill
#_168AE5: db $07
#_168AE6: db $02 ; Direct Copy
#_168AE7: db $03, $01, $00
#_168AEA: db $83 ; Repeat Fill
#_168AEB: db $59, $00 ; Repeat Fill bytes
#_168AED: db $01 ; Direct Copy
#_168AEE: db $40, $E0
#_168AF0: db $43 ; Word Fill
#_168AF1: db $20, $F0 ; Word Fill
#_168AF3: db $03 ; Direct Copy
#_168AF4: db $C0, $F0, $80, $E0
#_168AF8: db $83 ; Repeat Fill
#_168AF9: db $6E, $01 ; Repeat Fill bytes
#_168AFB: db $0E ; Direct Copy
#_168AFC: db $C0, $E0, $E0, $C0, $80, $00, $3D, $7F
#_168B04: db $36, $7F, $32, $7F, $16, $7F, $0C
#_168B0B: db $86 ; Repeat Fill
#_168B0C: db $57, $01 ; Repeat Fill bytes
#_168B0E: db $04 ; Direct Copy
#_168B0F: db $3D, $3E, $3E, $1E, $0C
#_168B14: db $23 ; Byte Fill
#_168B15: db $00
#_168B16: db $03 ; Direct Copy
#_168B17: db $80, $80, $C0, $C0
#_168B1B: db $43 ; Word Fill
#_168B1C: db $E0, $00 ; Word Fill
#_168B1E: db $45 ; Word Fill
#_168B1F: db $C0, $00 ; Word Fill
#_168B21: db $03 ; Direct Copy
#_168B22: db $FC, $00, $80, $C0
#_168B26: db $26 ; Byte Fill
#_168B27: db $00
#_168B28: db $02 ; Direct Copy
#_168B29: db $03, $00, $0F
#_168B2C: db $43 ; Word Fill
#_168B2D: db $01, $1F ; Word Fill
#_168B2F: db $12 ; Direct Copy
#_168B30: db $00, $37, $18, $2F, $1C, $3E, $18, $00
#_168B38: db $03, $0F, $13, $19, $3D, $3F, $3F, $7E
#_168B40: db $00, $FF, $42
#_168B43: db $44 ; Word Fill
#_168B44: db $FF, $81 ; Word Fill
#_168B46: db $04 ; Direct Copy
#_168B47: db $C3, $FF, $7E, $FF, $81
#_168B4C: db $22 ; Byte Fill
#_168B4D: db $7E
#_168B4E: db $24 ; Byte Fill
#_168B4F: db $FF
#_168B50: db $01 ; Direct Copy
#_168B51: db $7E, $81
#_168B53: db $83 ; Repeat Fill
#_168B54: db $48, $00 ; Repeat Fill bytes
#_168B56: db $16 ; Direct Copy
#_168B57: db $E0, $80, $F8, $80, $FC, $00, $FC, $08
#_168B5F: db $F2, $DC, $7A, $1C, $00, $C0, $E0, $D8
#_168B67: db $8C, $DC, $3E, $FE, $00, $00, $01
#_168B6E: db $84 ; Repeat Fill
#_168B6F: db $03, $03 ; Repeat Fill bytes
#_168B71: db $43 ; Word Fill
#_168B72: db $3F, $00 ; Word Fill
#_168B74: db $0B ; Direct Copy
#_168B75: db $2F, $1C, $4C, $3B, $00, $01, $0F, $13
#_168B7D: db $21, $3C, $3F, $7C
#_168B81: db $83 ; Repeat Fill
#_168B82: db $18, $03 ; Repeat Fill bytes
#_168B84: db $44 ; Word Fill
#_168B85: db $FF, $81 ; Word Fill
#_168B87: db $07 ; Direct Copy
#_168B88: db $C3, $FF, $7E, $7E, $81, $10, $EF, $7E
#_168B90: db $24 ; Byte Fill
#_168B91: db $FF
#_168B92: db $01 ; Direct Copy
#_168B93: db $7E, $10
#_168B95: db $83 ; Repeat Fill
#_168B96: db $6B, $01 ; Repeat Fill bytes
#_168B98: db $00 ; Direct Copy
#_168B99: db $F0
#_168B9A: db $43 ; Word Fill
#_168B9B: db $80, $F8 ; Word Fill
#_168B9D: db $0E ; Direct Copy
#_168B9E: db $00, $FC, $08, $FC, $38, $7C, $B8, $00
#_168BA6: db $80, $F0, $E8, $88, $3C, $FC, $7C
#_168BAD: db $84 ; Repeat Fill
#_168BAE: db $00, $03 ; Repeat Fill bytes
#_168BB0: db $12 ; Direct Copy
#_168BB1: db $03, $1F, $0C, $3F, $07, $3F, $10, $5F
#_168BB9: db $18, $4F, $08, $00, $03, $0F, $1F, $3F
#_168BC1: db $2F, $64, $77
#_168BC4: db $84 ; Repeat Fill
#_168BC5: db $30, $03 ; Repeat Fill bytes
#_168BC7: db $0B ; Direct Copy
#_168BC8: db $C0, $F0, $20, $F0, $A0, $E8, $10, $C8
#_168BD0: db $30, $C4, $38, $00
#_168BD4: db $83 ; Repeat Fill
#_168BD5: db $5B, $00 ; Repeat Fill bytes
#_168BD7: db $02 ; Direct Copy
#_168BD8: db $A8, $48, $C4
#_168BDB: db $23 ; Byte Fill
#_168BDC: db $00
#_168BDD: db $8B ; Repeat Fill
#_168BDE: db $92, $03 ; Repeat Fill bytes
#_168BE0: db $00 ; Direct Copy
#_168BE1: db $00
#_168BE2: db $86 ; Repeat Fill
#_168BE3: db $A0, $03 ; Repeat Fill bytes
#_168BE5: db $23 ; Byte Fill
#_168BE6: db $00
#_168BE7: db $06 ; Direct Copy
#_168BE8: db $C0, $00, $F0, $C0, $F8, $30, $F8
#_168BEF: db $84 ; Repeat Fill
#_168BF0: db $B1, $03 ; Repeat Fill bytes
#_168BF2: db $07 ; Direct Copy
#_168BF3: db $00, $00, $C0, $F0, $F8, $F8, $A8, $48
#_168BFB: db $22 ; Byte Fill
#_168BFC: db $00
#_168BFD: db $E0, $35 ; EXT Direct Copy
#_168BFF: db $0C, $0C, $1E, $12, $3F, $14, $3F, $19
#_168C07: db $3F, $0B, $3F, $03, $3F, $00, $00, $0C
#_168C0F: db $1E, $1C, $19, $0B, $03, $00, $0F, $0F
#_168C17: db $3F, $3F, $7F, $67, $FF, $C6, $FF, $EC
#_168C1F: db $FF, $FC, $FF, $78, $FF, $00, $0F, $3F
#_168C27: db $7F, $FE, $FC, $FC, $F8, $38, $FF, $3C
#_168C2F: db $FF, $3F, $FF, $7F, $FF, $7D
#_168C35: db $44 ; Word Fill
#_168C36: db $FF, $FC ; Word Fill
#_168C38: db $15 ; Direct Copy
#_168C39: db $FE, $FF, $F8, $FC, $FF, $FF, $FD, $FC
#_168C41: db $FC, $FE, $78, $FE, $CC, $FE, $18, $FE
#_168C49: db $30, $FC, $C0, $F8, $40, $F0
#_168C4F: db $83 ; Repeat Fill
#_168C50: db $EE, $02 ; Repeat Fill bytes
#_168C52: db $05 ; Direct Copy
#_168C53: db $78, $FC, $F8, $F0, $C0, $40
#_168C59: db $25 ; Byte Fill
#_168C5A: db $00
#_168C5B: db $07 ; Direct Copy
#_168C5C: db $1B, $1B, $3F, $3F, $3C, $3F, $18, $1F
#_168C64: db $43 ; Word Fill
#_168C65: db $0C, $0F ; Word Fill
#_168C67: db $07 ; Direct Copy
#_168C68: db $00, $00, $1B, $3F, $3F, $1F, $0F, $0F
#_168C70: db $25 ; Byte Fill
#_168C71: db $00
#_168C72: db $09 ; Direct Copy
#_168C73: db $F0, $F0, $F8, $F8, $3C, $FC, $1C, $FC
#_168C7B: db $98, $78
#_168C7D: db $22 ; Byte Fill
#_168C7E: db $00
#_168C7F: db $E0, $3F ; EXT Direct Copy
#_168C81: db $F0, $F8, $FC, $FC, $78, $1F, $01, $0F
#_168C89: db $04, $1D, $08, $13, $03, $0F, $04, $07
#_168C91: db $03, $04, $03, $03, $00, $1E, $0B, $13
#_168C99: db $1C, $0B, $07, $07, $03, $18, $00, $FF
#_168CA1: db $E7, $E7, $00, $DB, $81, $E7, $A4, $FF
#_168CA9: db $18, $FC, $C0, $C0, $00, $E7, $18, $FF
#_168CB1: db $66, $5B, $E7, $FC, $C0, $FE, $84, $F4
#_168CB9: db $08, $C4, $B8, $F8, $80, $E0, $40, $C0
#_168CC1: db $24 ; Byte Fill
#_168CC2: db $00
#_168CC3: db $14 ; Direct Copy
#_168CC4: db $7E, $CC, $7C, $78, $E0, $C0, $00, $00
#_168CCC: db $7C, $03, $68, $17, $2C, $13, $1A, $05
#_168CD4: db $08, $07, $04, $03, $03
#_168CD9: db $22 ; Byte Fill
#_168CDA: db $00
#_168CDB: db $E0, $27 ; EXT Direct Copy
#_168CDD: db $7C, $58, $3C, $1A, $08, $04, $03, $00
#_168CE5: db $80, $7F, $40, $BF, $02, $FD, $0D, $F2
#_168CED: db $01, $FE, $03, $FC, $8F, $73, $7F, $00
#_168CF5: db $80, $40, $02, $0D, $01, $03, $8F, $7F
#_168CFD: db $38, $D0, $F0, $00, $F0, $60, $F0, $E0
#_168D05: db $83 ; Repeat Fill
#_168D06: db $32, $02 ; Repeat Fill bytes
#_168D08: db $E0, $2E ; EXT Direct Copy
#_168D0A: db $40, $80, $80, $00, $38, $F0, $90, $10
#_168D12: db $20, $C0, $C0, $80, $3D, $0B, $7C, $33
#_168D1A: db $4F, $08, $5F, $10, $7E, $21, $37, $0C
#_168D22: db $09, $07, $07, $00, $37, $4F, $77, $6C
#_168D2A: db $5D, $3F, $0F, $07, $D4, $A8, $E4, $98
#_168D32: db $E2, $1C, $62, $9C, $74, $A8, $F8
#_168D39: db $84 ; Repeat Fill
#_168D3A: db $31, $02 ; Repeat Fill bytes
#_168D3C: db $E0, $3C ; EXT Direct Copy
#_168D3E: db $D4, $E4, $E2, $E2, $D4, $F8, $E0, $C0
#_168D46: db $4F, $04, $3B, $0E, $73, $0F, $7F, $04
#_168D4E: db $77, $09, $7F, $20, $33, $00, $01, $00
#_168D56: db $7E, $3F, $7F, $4F, $6E, $7F, $33, $01
#_168D5E: db $C4, $38, $94, $68, $E4, $18, $C2, $BC
#_168D66: db $E4, $98, $F8, $60, $30, $E0, $E0, $00
#_168D6E: db $44, $94, $E4, $42, $64, $F8, $F0, $E0
#_168D76: db $02, $1F, $06, $1F, $04
#_168D7B: db $44 ; Word Fill
#_168D7C: db $1F, $0C ; Word Fill
#_168D7E: db $01 ; Direct Copy
#_168D7F: db $0E, $1F
#_168D81: db $43 ; Word Fill
#_168D82: db $1F, $3F ; Word Fill
#_168D84: db $02 ; Direct Copy
#_168D85: db $03, $07, $07
#_168D88: db $22 ; Byte Fill
#_168D89: db $0F
#_168D8A: db $01 ; Direct Copy
#_168D8B: db $1F, $1F
#_168D8D: db $88 ; Repeat Fill
#_168D8E: db $20, $04 ; Repeat Fill bytes
#_168D90: db $44 ; Word Fill
#_168D91: db $FF, $FC ; Word Fill
#_168D93: db $89 ; Repeat Fill
#_168D94: db $2E, $04 ; Repeat Fill bytes
#_168D96: db $08 ; Direct Copy
#_168D97: db $C6, $FF, $0F, $FF, $0E, $FF, $0C, $FF
#_168D9F: db $0E
#_168DA0: db $83 ; Repeat Fill
#_168DA1: db $40, $02 ; Repeat Fill bytes
#_168DA3: db $03 ; Direct Copy
#_168DA4: db $1F, $00, $0F, $C6
#_168DA8: db $23 ; Byte Fill
#_168DA9: db $0F
#_168DAA: db $07 ; Direct Copy
#_168DAB: db $07, $01, $00, $00, $C0, $80, $C0, $C0
#_168DB3: db $46 ; Word Fill
#_168DB4: db $E0, $40 ; Word Fill
#_168DB6: db $00 ; Direct Copy
#_168DB7: db $80
#_168DB8: db $83 ; Repeat Fill
#_168DB9: db $EF, $02 ; Repeat Fill bytes
#_168DBB: db $00 ; Direct Copy
#_168DBC: db $80
#_168DBD: db $23 ; Byte Fill
#_168DBE: db $C0
#_168DBF: db $03 ; Direct Copy
#_168DC0: db $80, $00, $1D, $1E
#_168DC4: db $43 ; Word Fill
#_168DC5: db $18, $1F ; Word Fill
#_168DC7: db $00 ; Direct Copy
#_168DC8: db $3C
#_168DC9: db $22 ; Byte Fill
#_168DCA: db $3F
#_168DCB: db $19 ; Direct Copy
#_168DCC: db $1F, $1F, $0E, $0E, $00, $00, $1E, $1F
#_168DD4: db $1F, $3F, $3F, $1F, $0E, $00, $D8, $38
#_168DDC: db $8C, $7C, $0C, $FC, $DC, $FC, $F8, $F8
#_168DE4: db $30, $30
#_168DE6: db $23 ; Byte Fill
#_168DE7: db $00
#_168DE8: db $07 ; Direct Copy
#_168DE9: db $38, $7C, $FC, $FC, $F8, $30, $00, $00
#_168DF1: db $FF ; End of GFX 9B

;===================================================================================================

GFX_9C:
#_168DF2: db $E4, $8F ; EXT Byte Fill
#_168DF4: db $00
#_168DF5: db $0B ; Direct Copy
#_168DF6: db $78, $07, $F7, $08, $9E, $61, $F7, $08
#_168DFE: db $F7, $48, $FD, $42
#_168E02: db $43 ; Word Fill
#_168E03: db $6F, $28 ; Word Fill
#_168E05: db $E0, $51 ; EXT Direct Copy
#_168E07: db $7F, $97, $96, $F6, $B0, $BC, $54, $55
#_168E0F: db $1E, $E0, $EF, $10, $79, $86, $EF, $10
#_168E17: db $EF, $12, $BF, $42, $FE, $1C, $F6, $14
#_168E1F: db $FE, $E9, $69, $6F, $0D, $3D, $22, $AA
#_168E27: db $38, $07, $27, $18, $2E, $11, $27, $18
#_168E2F: db $37, $08, $5D, $12, $9F, $18, $FF, $18
#_168E37: db $3F, $27, $26, $26, $30, $6C, $E4, $E5
#_168E3F: db $1C, $E0, $E4, $18, $74, $88, $E4, $18
#_168E47: db $EC, $10, $BA, $48, $F9, $18, $FF, $18
#_168E4F: db $FC, $E4, $64, $64, $0C, $36, $27, $A7
#_168E57: db $38, $07
#_168E59: db $45 ; Word Fill
#_168E5A: db $1F, $00 ; Word Fill
#_168E5C: db $E0, $29 ; EXT Direct Copy
#_168E5E: db $3E, $01, $30, $0F, $37, $08, $3F, $03
#_168E66: db $3F, $17, $16, $16, $20, $20, $27, $3C
#_168E6E: db $1C, $E0, $F8, $00, $98, $60, $3C, $C0
#_168E76: db $64, $98, $FC, $40, $BC, $80, $1C, $00
#_168E7E: db $FC, $F8, $18, $24, $64, $BC, $7C, $FC
#_168E86: db $38, $07
#_168E88: db $43 ; Word Fill
#_168E89: db $1F, $00 ; Word Fill
#_168E8B: db $11 ; Direct Copy
#_168E8C: db $7F, $00, $FE, $01, $B0, $4F, $77, $08
#_168E94: db $7F, $07, $3F, $17, $16, $76, $A0, $A0
#_168E9C: db $67, $78
#_168E9E: db $85 ; Repeat Fill
#_168E9F: db $08, $01 ; Repeat Fill bytes
#_168EA1: db $E0, $43 ; EXT Direct Copy
#_168EA3: db $38, $C0, $78, $90, $FC, $38, $DC, $D8
#_168EAB: db $9C, $98, $FC, $F8, $18, $38, $68, $C4
#_168EB3: db $24, $64, $78, $07, $F7, $48, $F8, $67
#_168EBB: db $DE, $59, $CF, $44, $63, $23, $60, $20
#_168EC3: db $38, $18, $7F, $B7, $98, $A6, $BB, $5C
#_168ECB: db $5F, $27, $1E, $E0, $EF, $12, $19, $E0
#_168ED3: db $7B, $9A, $F3, $22, $D6, $C4, $66, $04
#_168EDB: db $0C, $08, $FE, $ED, $1F, $65, $DD, $2A
#_168EE3: db $9A, $F4, $01, $00
#_168EE7: db $43 ; Word Fill
#_168EE8: db $02, $01 ; Word Fill
#_168EEA: db $0E ; Direct Copy
#_168EEB: db $0C, $03, $3E, $0B, $6F, $3B, $7F, $3D
#_168EF3: db $7F, $1F, $01, $03, $03, $0F, $3F
#_168EFA: db $22 ; Byte Fill
#_168EFB: db $7F
#_168EFC: db $14 ; Direct Copy
#_168EFD: db $80, $00, $40, $80, $C0, $00, $30, $C0
#_168F05: db $7C, $D0, $F6, $DC, $E6, $FC, $0E, $F8
#_168F0D: db $80, $C0, $40, $F0, $FC
#_168F12: db $22 ; Byte Fill
#_168F13: db $FE
#_168F14: db $E4, $5F ; EXT Byte Fill
#_168F16: db $00
#_168F17: db $E0, $3B ; EXT Direct Copy
#_168F19: db $37, $14, $7B, $1B, $78, $28, $7C, $3C
#_168F21: db $3E, $1E, $3F, $17, $1F, $07, $07, $00
#_168F29: db $2B, $64, $57, $43, $21, $28, $18, $07
#_168F31: db $EC, $28, $CE, $C8, $1A, $10, $0A, $28
#_168F39: db $24, $E0, $34, $10, $F8, $E0, $E0, $00
#_168F41: db $D4, $36, $EE, $D6, $1C, $EC, $18, $E0
#_168F49: db $FF, $04, $9B, $6B, $F8, $08, $F8, $18
#_168F51: db $7E, $1E, $7F, $13
#_168F55: db $83 ; Repeat Fill
#_168F56: db $1C, $02 ; Repeat Fill bytes
#_168F58: db $13 ; Direct Copy
#_168F59: db $9B, $94, $F7, $E7, $61, $6C, $18, $07
#_168F61: db $FF, $20, $D9, $D6, $1F, $10, $0F, $18
#_168F69: db $0E, $28, $1E, $08
#_168F6D: db $83 ; Repeat Fill
#_168F6E: db $34, $02 ; Repeat Fill bytes
#_168F70: db $E0, $2B ; EXT Direct Copy
#_168F72: db $D9, $29, $EF, $E7, $D6, $F6, $18, $E0
#_168F7A: db $09, $01, $09, $00, $08, $00, $11, $01
#_168F82: db $10, $00, $0F, $07, $0F, $03, $03, $00
#_168F8A: db $0E, $0F, $0F, $1E, $1F, $08, $0C, $03
#_168F92: db $BC, $A0, $FC, $F0, $FE, $6C, $FB, $6A
#_168F9A: db $F6, $A4, $FC, $D8
#_168F9E: db $83 ; Repeat Fill
#_168F9F: db $34, $02 ; Repeat Fill bytes
#_168FA1: db $0D ; Direct Copy
#_168FA2: db $5C, $0C, $92, $95, $5A, $24, $18, $E0
#_168FAA: db $FC, $04, $9C, $64, $7E, $02
#_168FB0: db $43 ; Word Fill
#_168FB1: db $1F, $03 ; Word Fill
#_168FB3: db $E0, $31 ; EXT Direct Copy
#_168FB5: db $0F, $04, $0F, $02, $03, $00, $9B, $9B
#_168FBD: db $7D, $1C, $1C, $0B, $0D, $03, $1C, $10
#_168FC5: db $3C, $30, $7E, $7C, $FB, $EA, $F6, $D4
#_168FCD: db $FC, $B8, $F8, $60, $E0, $00, $EC, $CC
#_168FD5: db $82, $15, $2A, $44, $98, $E0, $3E, $0E
#_168FDD: db $7F, $27, $7F, $2B, $7B, $39, $38, $18
#_168FE5: db $1C, $0C
#_168FE7: db $83 ; Repeat Fill
#_168FE8: db $7C, $02 ; Repeat Fill bytes
#_168FEA: db $E0, $74 ; EXT Direct Copy
#_168FEC: db $31, $58, $54, $46, $27, $13, $0C, $03
#_168FF4: db $1C, $10, $1E, $14, $FE, $FC, $CE, $CC
#_168FFC: db $0C, $08, $38, $30, $F0, $C0, $C0, $00
#_169004: db $EC, $EA, $02, $32, $F4, $C8, $30, $C0
#_16900C: db $3F, $07, $FF, $00, $9F, $08, $BF, $24
#_169014: db $EC, $14, $66, $3A, $73, $1D, $3B, $0E
#_16901C: db $3F, $FF, $F5, $D9, $FB, $7D, $7E, $3F
#_169024: db $FC, $E0, $FF, $00, $F9, $10, $FD, $24
#_16902C: db $37, $28, $66, $5C, $CE, $B8, $DC, $70
#_169034: db $FC, $FF, $AF, $9B, $DF, $BE, $7E, $FC
#_16903C: db $00, $18, $B0, $31, $0A, $48, $04, $68
#_169044: db $41, $48, $10, $10, $20, $24, $20, $20
#_16904C: db $18, $31, $48, $68, $48, $10, $24, $20
#_169054: db $08, $42, $04, $80, $60, $14, $00, $08
#_16905C: db $08, $0A, $20, $74, $90
#_169061: db $22 ; Byte Fill
#_169062: db $10
#_169063: db $E0, $68 ; EXT Direct Copy
#_169065: db $42, $80, $14, $08, $0A, $74, $10, $10
#_16906D: db $38, $07, $17, $08, $18, $07, $7E, $19
#_169075: db $EF, $64, $C3, $43, $E0, $60, $79, $38
#_16907D: db $3F, $17, $18, $66, $9B, $BC, $9F, $46
#_169085: db $1C, $E0, $E8, $10, $18, $E0, $7E, $98
#_16908D: db $F3, $22, $C3, $C2, $37, $06, $EE, $0C
#_169095: db $FC, $E8, $18, $66, $DD, $3D, $C9, $12
#_16909D: db $FF, $08, $7F, $00, $0F, $07, $0C, $04
#_1690A5: db $07, $00, $03, $01, $02, $00, $04, $00
#_1690AD: db $1C, $0C, $08, $0B, $07, $02, $03, $07
#_1690B5: db $EF, $6B, $9F, $8A, $9F, $91, $7E, $35
#_1690BD: db $FE, $CD, $FC, $1B, $F9, $C7, $E2, $BF
#_1690C5: db $94, $75, $6F, $CB, $33, $E7, $3F, $7F
#_1690CD: db $80
#_1690CE: db $46 ; Word Fill
#_1690CF: db $00, $C0 ; Word Fill
#_1690D1: db $07 ; Direct Copy
#_1690D2: db $F0, $80, $F9, $30, $EE, $20, $EC, $24
#_1690DA: db $22 ; Byte Fill
#_1690DB: db $00
#_1690DC: db $04 ; Direct Copy
#_1690DD: db $80, $F0, $C9, $1F, $1B
#_1690E2: db $25 ; Byte Fill
#_1690E3: db $00
#_1690E4: db $09 ; Direct Copy
#_1690E5: db $60, $00, $F0, $00, $90, $60, $50, $20
#_1690ED: db $E0, $C0
#_1690EF: db $22 ; Byte Fill
#_1690F0: db $00
#_1690F1: db $E0, $34 ; EXT Direct Copy
#_1690F3: db $60, $90, $F0, $F0, $20, $3E, $00, $7E
#_1690FB: db $28, $CF, $78, $DF, $31, $FE, $62, $FD
#_169103: db $05, $FB, $09, $37, $17, $28, $6C, $FF
#_16910B: db $3A, $F9, $62, $36, $28, $00, $00, $0C
#_169113: db $00, $1E, $00, $EA, $04, $CC, $88, $F8
#_16911B: db $30, $FE, $40, $FB, $50, $00, $0C, $12
#_169123: db $FE, $74, $C8, $BE, $BF
#_169128: db $23 ; Byte Fill
#_169129: db $00
#_16912A: db $13 ; Direct Copy
#_16912B: db $0F, $00, $1F, $07, $3F, $0C, $3F, $18
#_169133: db $3E, $10, $3D, $11, $00, $00, $0E, $17
#_16913B: db $2F, $3D, $3B, $1E
#_16913F: db $25 ; Byte Fill
#_169140: db $00
#_169141: db $09 ; Direct Copy
#_169142: db $90, $00, $B8, $00, $D8, $90, $F8, $90
#_16914A: db $DC, $A8
#_16914C: db $22 ; Byte Fill
#_16914D: db $00
#_16914E: db $05 ; Direct Copy
#_16914F: db $90, $A8, $68, $68, $74, $01
#_169155: db $22 ; Byte Fill
#_169156: db $00
#_169157: db $18 ; Direct Copy
#_169158: db $07, $00, $0D, $03, $1A, $0D, $32, $0D
#_169160: db $39, $1E, $BF, $1C, $00, $00, $03, $0B
#_169168: db $1D, $0D, $3F, $3F, $E0, $C0, $C0, $80
#_169170: db $80
#_169171: db $2A ; Byte Fill
#_169172: db $00
#_169173: db $02 ; Direct Copy
#_169174: db $E0, $C0, $80
#_169177: db $24 ; Byte Fill
#_169178: db $00
#_169179: db $E0, $31 ; EXT Direct Copy
#_16917B: db $3B, $1E, $66, $3D, $7F, $24, $6E, $09
#_169183: db $5F, $04, $7F, $00, $3E, $00, $1C, $00
#_16918B: db $3F, $7E, $7F, $76, $7B, $7F, $3E, $1C
#_169193: db $DC, $78, $66, $BC, $FE, $24, $76, $90
#_16919B: db $FA, $20, $FE, $00, $7C, $00, $38, $00
#_1691A3: db $FC, $7E, $FE, $6E, $DE, $FE, $7C, $38
#_1691AB: db $01, $00
#_1691AD: db $43 ; Word Fill
#_1691AE: db $02, $01 ; Word Fill
#_1691B0: db $09 ; Direct Copy
#_1691B1: db $0C, $03, $7E, $0B, $EF, $7B, $FF, $7C
#_1691B9: db $7F, $3E
#_1691BB: db $83 ; Repeat Fill
#_1691BC: db $90, $01 ; Repeat Fill bytes
#_1691BE: db $02 ; Direct Copy
#_1691BF: db $7F, $FF, $FF
#_1691C2: db $88 ; Repeat Fill
#_1691C3: db $97, $01 ; Repeat Fill bytes
#_1691C5: db $07 ; Direct Copy
#_1691C6: db $7E, $D0, $F7, $DE, $E7, $FE, $0E, $FC
#_1691CE: db $83 ; Repeat Fill
#_1691CF: db $A8, $01 ; Repeat Fill bytes
#_1691D1: db $0F ; Direct Copy
#_1691D2: db $FE, $FF, $FF, $FE, $7C, $2C, $7F, $17
#_1691DA: db $3F, $13, $7F, $3F, $73, $33, $38, $18
#_1691E2: db $83 ; Repeat Fill
#_1691E3: db $1C, $02 ; Repeat Fill bytes
#_1691E5: db $13 ; Direct Copy
#_1691E6: db $53, $68, $2C, $40, $4C, $27, $18, $07
#_1691EE: db $1E, $14, $9E, $98, $DC, $D8, $F6, $34
#_1691F6: db $C6, $C4, $1C, $18
#_1691FA: db $83 ; Repeat Fill
#_1691FB: db $34, $02 ; Repeat Fill bytes
#_1691FD: db $0E ; Direct Copy
#_1691FE: db $EA, $66, $24, $CA, $3A, $E4, $18, $E0
#_169206: db $0D, $01, $1B, $05, $19, $06, $0E
#_16920D: db $28 ; Byte Fill
#_16920E: db $00
#_16920F: db $03 ; Direct Copy
#_169210: db $0E, $16, $17, $0E
#_169214: db $23 ; Byte Fill
#_169215: db $00
#_169216: db $0C ; Direct Copy
#_169217: db $FE, $B9, $BF, $06, $7F, $37, $9F, $1A
#_16921F: db $FE, $44, $7E, $00, $1C
#_169224: db $22 ; Byte Fill
#_169225: db $00
#_169226: db $07 ; Direct Copy
#_169227: db $7F, $B9, $48, $E5, $BA, $7E, $1C, $00
#_16922F: db $97 ; Repeat Fill
#_169230: db $A8, $03 ; Repeat Fill bytes
#_169232: db $E0, $47 ; EXT Direct Copy
#_169234: db $D8, $80, $AC, $08, $EC, $A0, $FE, $B0
#_16923C: db $FE, $90, $FE, $68, $FC, $70, $70, $A0
#_169244: db $58, $B4, $DC, $CE, $EE, $96, $8C, $D0
#_16924C: db $1F, $08, $1F, $03, $17, $04, $27, $05
#_169254: db $7F, $08, $6E, $10, $33, $00, $01, $00
#_16925C: db $17, $1C, $1B, $3B, $57, $5F, $33, $01
#_169264: db $DB, $B0, $9F, $76, $2E, $F8, $CC, $F8
#_16926C: db $F8, $30, $70, $40, $E0, $40, $C0, $00
#_169274: db $7F, $F9, $FE, $FC, $F8, $B0, $A0, $C0
#_16927C: db $83 ; Repeat Fill
#_16927D: db $1C, $02 ; Repeat Fill bytes
#_16927F: db $06 ; Direct Copy
#_169280: db $0A, $01, $1F, $06, $0F, $01, $01
#_169287: db $24 ; Byte Fill
#_169288: db $00
#_169289: db $14 ; Direct Copy
#_16928A: db $18, $07, $0F, $11, $0E, $01, $00, $00
#_169292: db $DE, $6C, $9C, $F0, $38, $F0, $F0, $60
#_16929A: db $E0, $80, $C0, $80, $80
#_16929F: db $22 ; Byte Fill
#_1692A0: db $00
#_1692A1: db $1F ; Direct Copy
#_1692A2: db $F2, $FC, $F8, $F0, $60, $40, $80, $00
#_1692AA: db $32, $00, $7F, $30, $FE, $68, $FF, $5A
#_1692B2: db $7F, $36, $7E, $0C, $FC, $18, $58, $00
#_1692BA: db $32, $7D, $F6, $E5, $4D, $7E, $A4, $58
#_1692C2: db $37 ; Byte Fill
#_1692C3: db $00
#_1692C4: db $FF ; End of GFX 9C

;===================================================================================================

GFX_9D:
#_1692C5: db $E0, $2F ; EXT Direct Copy
#_1692C7: db $28, $00, $7C, $00, $7F, $00, $FE, $01
#_1692CF: db $79, $07, $FA, $07, $74, $0F, $32, $0F
#_1692D7: db $28, $54, $63, $96, $69, $8B, $77, $33
#_1692DF: db $14, $00, $3E, $00, $FE, $00, $7F, $80
#_1692E7: db $9E, $E0, $5F, $E0, $AE, $70, $4C, $F0
#_1692EF: db $14, $2A, $C6, $69, $96, $D1, $6E, $CC
#_1692F7: db $27 ; Byte Fill
#_1692F8: db $00
#_1692F9: db $07 ; Direct Copy
#_1692FA: db $30, $00, $4C, $30, $EE, $14, $CF, $32
#_169302: db $23 ; Byte Fill
#_169303: db $00
#_169304: db $03 ; Direct Copy
#_169305: db $30, $7C, $9A, $BD
#_169309: db $27 ; Byte Fill
#_16930A: db $00
#_16930B: db $07 ; Direct Copy
#_16930C: db $0C, $00, $32, $0C, $77, $28, $F3, $4C
#_169314: db $23 ; Byte Fill
#_169315: db $00
#_169316: db $03 ; Direct Copy
#_169317: db $0C, $3E, $59, $BD
#_16931B: db $29 ; Byte Fill
#_16931C: db $00
#_16931D: db $85 ; Repeat Fill
#_16931E: db $38, $00 ; Repeat Fill bytes
#_169320: db $24 ; Byte Fill
#_169321: db $00
#_169322: db $02 ; Direct Copy
#_169323: db $30, $7C, $9A
#_169326: db $29 ; Byte Fill
#_169327: db $00
#_169328: db $85 ; Repeat Fill
#_169329: db $50, $00 ; Repeat Fill bytes
#_16932B: db $24 ; Byte Fill
#_16932C: db $00
#_16932D: db $02 ; Direct Copy
#_16932E: db $0C, $3E, $59
#_169331: db $23 ; Byte Fill
#_169332: db $00
#_169333: db $03 ; Direct Copy
#_169334: db $7E, $00, $42, $3C
#_169338: db $47 ; Word Fill
#_169339: db $24, $18 ; Word Fill
#_16933B: db $03 ; Direct Copy
#_16933C: db $00, $00, $7E, $42
#_169340: db $23 ; Byte Fill
#_169341: db $24
#_169342: db $06 ; Direct Copy
#_169343: db $03, $00, $0F, $00, $1D, $00, $1E
#_16934A: db $45 ; Word Fill
#_16934B: db $00, $3F ; Word Fill
#_16934D: db $11 ; Direct Copy
#_16934E: db $08, $5F, $08, $03, $0F, $1F, $1F, $3F
#_169356: db $3F, $37, $77, $C0, $00, $F0, $00, $B8
#_16935E: db $00, $78
#_169360: db $45 ; Word Fill
#_169361: db $00, $FC ; Word Fill
#_169363: db $E0, $2E ; EXT Direct Copy
#_169365: db $10, $FA, $90, $C0, $F0, $F8, $F8, $FC
#_16936D: db $FC, $EC, $6E, $FE, $7F, $FD, $BF, $FB
#_169375: db $DF, $F7, $EF, $EF, $F7, $DF, $FB, $BF
#_16937D: db $FD, $7F, $FE, $FE, $FD, $FB, $F7, $EF
#_169385: db $DF, $BF, $7F, $73, $00, $8F, $03, $F7
#_16938D: db $70, $7F, $33, $3C, $0C, $38, $08
#_169394: db $43 ; Word Fill
#_169395: db $58, $28 ; Word Fill
#_169397: db $1F ; Direct Copy
#_169398: db $73, $FC, $8F, $4C, $33, $37, $77, $77
#_1693A0: db $80, $00, $F8, $80, $E4, $00, $F4, $D0
#_1693A8: db $1C, $08, $0E, $04, $0D, $02, $17, $02
#_1693B0: db $80, $78, $FC, $2C, $F4, $FE, $FF, $FF
#_1693B8: db $24 ; Byte Fill
#_1693B9: db $00
#_1693BA: db $0A ; Direct Copy
#_1693BB: db $03, $01, $0F, $0E, $1F, $01, $1E, $13
#_1693C3: db $3C, $07, $38
#_1693C6: db $22 ; Byte Fill
#_1693C7: db $00
#_1693C8: db $04 ; Direct Copy
#_1693C9: db $01, $0F, $0E, $14, $08
#_1693CE: db $23 ; Byte Fill
#_1693CF: db $00
#_1693D0: db $07 ; Direct Copy
#_1693D1: db $40, $48, $00, $E0, $E8, $FC, $20, $F0
#_1693D9: db $43 ; Word Fill
#_1693DA: db $10, $F8 ; Word Fill
#_1693DC: db $E0, $C7 ; EXT Direct Copy
#_1693DE: db $00, $00, $48, $00, $EC, $E0, $F0, $F0
#_1693E6: db $03, $00, $0E, $01, $17, $08, $23, $1C
#_1693EE: db $27, $18, $7E, $01, $BC, $42, $AC, $53
#_1693F6: db $03, $0E, $17, $23, $27, $7E, $FD, $EC
#_1693FE: db $C0, $00, $70, $80, $E8, $10, $C4, $38
#_169406: db $E4, $18, $7E, $00, $BD, $02, $35, $4A
#_16940E: db $C0, $70, $E8, $C4, $E4, $FE, $7F, $B7
#_169416: db $5D, $3B, $46, $39, $44, $3F, $22, $1F
#_16941E: db $1C, $03, $03, $01, $02, $01, $01, $00
#_169426: db $5D, $5E, $4D, $23, $1D, $03, $02, $01
#_16942E: db $BE, $DC, $66, $9C, $2A, $FC, $44, $F8
#_169436: db $38, $C0, $C0, $80, $40, $80, $80, $00
#_16943E: db $BE, $7E, $BA, $C4, $B8, $C0, $40, $80
#_169446: db $9B, $6D, $5E, $2C, $3F, $02, $3F, $14
#_16944E: db $1F, $06, $1F, $08, $31, $1E, $1E, $00
#_169456: db $FE, $7F, $3D, $2A, $19, $1F, $31, $1E
#_16945E: db $D9, $B6, $7A, $34, $FC, $40, $FC, $28
#_169466: db $F8, $60, $F8, $10, $8C, $78, $78, $00
#_16946E: db $7F, $FE, $BC, $54, $98, $F8, $8C, $78
#_169476: db $CF, $36, $FD, $0D, $DE, $66, $FF, $62
#_16947E: db $7F, $04, $7F, $26, $C7, $78, $FC, $00
#_169486: db $B9, $F2, $F9, $F5, $7A, $79, $C7, $FC
#_16948E: db $F3, $6C, $BF, $B0, $7B, $66, $FF, $46
#_169496: db $FE, $20, $FE, $64, $E3, $1E, $3F, $00
#_16949E: db $9D, $4F, $9F, $AF, $5E, $9E, $E3, $3F
#_1694A6: db $43 ; Word Fill
#_1694A7: db $24, $18 ; Word Fill
#_1694A9: db $0E ; Direct Copy
#_1694AA: db $E7, $18, $FD, $66, $F9, $7E, $F3, $7E
#_1694B2: db $C3, $3C, $7E, $00, $24, $24, $E7
#_1694B9: db $23 ; Byte Fill
#_1694BA: db $FF
#_1694BB: db $E0, $30 ; EXT Direct Copy
#_1694BD: db $7E, $5F, $09, $7F, $39, $3F, $19, $1F
#_1694C5: db $0D, $1E, $0E, $0F, $06, $07, $03, $03
#_1694CD: db $00, $72, $40, $22, $12, $11, $09, $04
#_1694D5: db $03, $7A, $10, $76, $14, $6C, $08, $48
#_1694DD: db $00, $18, $10, $B0, $20, $E0, $C0, $C0
#_1694E5: db $00, $CE, $8A, $D4, $F8, $E8, $D0, $20
#_1694ED: db $C0
#_1694EE: db $97 ; Repeat Fill
#_1694EF: db $D8, $00 ; Repeat Fill bytes
#_1694F1: db $E0, $3B ; EXT Direct Copy
#_1694F3: db $7C, $24, $67, $01, $4F, $08, $5C, $1B
#_1694FB: db $7F, $30, $3F, $00, $0E, $01, $03, $00
#_169503: db $7B, $7E, $77, $67, $4F, $3F, $0E, $03
#_16950B: db $3B, $18, $F9, $D8, $FF, $0E, $1E, $E0
#_169513: db $FC, $00, $F4, $08, $38, $C0, $E0, $00
#_16951B: db $E7, $27, $F1, $FE, $FC, $F4, $38, $E0
#_169523: db $19, $3E, $18, $3F, $08, $1F, $0C, $1F
#_16952B: db $03, $0F, $00, $03
#_16952F: db $23 ; Byte Fill
#_169530: db $00
#_169531: db $04 ; Direct Copy
#_169532: db $1E, $1F, $0D, $0D, $03
#_169537: db $22 ; Byte Fill
#_169538: db $00
#_169539: db $04 ; Direct Copy
#_16953A: db $94, $78, $60, $F8, $80
#_16953F: db $43 ; Word Fill
#_169540: db $F0, $40 ; Word Fill
#_169542: db $02 ; Direct Copy
#_169543: db $C0, $00, $40
#_169546: db $23 ; Byte Fill
#_169547: db $00
#_169548: db $02 ; Direct Copy
#_169549: db $78, $E0, $80
#_16954C: db $22 ; Byte Fill
#_16954D: db $40
#_16954E: db $E0, $C1 ; EXT Direct Copy
#_169550: db $00, $00, $AC, $53, $DE, $21, $5F, $20
#_169558: db $66, $19, $78, $27, $5F, $18, $2F, $0D
#_169560: db $1D, $00, $EC, $FE, $7F, $7F, $5F, $67
#_169568: db $32, $1D, $35, $CA, $7B, $84, $FA, $04
#_169570: db $66, $98, $1E, $EC, $FA, $18, $F4, $B0
#_169578: db $B8, $00, $37, $7F, $FE, $FE, $F2, $E6
#_169580: db $4C, $B8, $01, $00, $02, $01, $0C, $03
#_169588: db $1C, $03, $3E, $17, $4E, $37, $6E, $37
#_169590: db $79, $0E, $01, $03, $0F, $1F, $3F, $6F
#_169598: db $6E, $78, $80, $00, $70, $80, $3C, $D0
#_1695A0: db $3A, $CC, $7E, $EC, $7F, $E4, $73, $EE
#_1695A8: db $9E, $70, $80, $F0, $FC, $FE, $FE, $FF
#_1695B0: db $73, $1E, $03, $00, $0F, $02, $16, $0F
#_1695B8: db $17, $0F, $2B, $17, $38, $0F, $28, $17
#_1695C0: db $7B, $34, $02, $0F, $17, $17, $2B, $38
#_1695C8: db $2B, $7F, $C0, $00, $F0, $40, $68, $F0
#_1695D0: db $E8, $F0, $D6, $E8, $1F, $F2, $15, $EE
#_1695D8: db $DA, $24, $40, $F0, $E8, $E8, $D6, $1F
#_1695E0: db $D5, $FA, $00, $00, $03, $00, $07, $03
#_1695E8: db $0C, $07, $58, $07, $FD, $1F, $B7, $0F
#_1695F0: db $92, $0F, $00, $03, $07, $0F, $5F, $BF
#_1695F8: db $DF, $FE, $F8, $00, $84, $F8, $1C, $F8
#_169600: db $74, $F8, $E8, $F0, $CC, $F0, $12, $EC
#_169608: db $2D, $DE, $F8, $FC, $FC, $F4, $E8, $CC
#_169610: db $12, $2D
#_169612: db $23 ; Byte Fill
#_169613: db $00
#_169614: db $8B ; Repeat Fill
#_169615: db $62, $03 ; Repeat Fill bytes
#_169617: db $00 ; Direct Copy
#_169618: db $00
#_169619: db $86 ; Repeat Fill
#_16961A: db $70, $03 ; Repeat Fill bytes
#_16961C: db $01 ; Direct Copy
#_16961D: db $00, $00
#_16961F: db $8D ; Repeat Fill
#_169620: db $78, $03 ; Repeat Fill bytes
#_169622: db $00 ; Direct Copy
#_169623: db $00
#_169624: db $86 ; Repeat Fill
#_169625: db $88, $03 ; Repeat Fill bytes
#_169627: db $E0, $8F ; EXT Direct Copy
#_169629: db $01, $00, $05, $00, $0E, $04, $17, $0E
#_169631: db $2D, $1F, $34, $0F, $6A, $37, $EB, $57
#_169639: db $00, $06, $0F, $17, $2F, $37, $6B, $EB
#_169641: db $80, $00, $A0, $00, $70, $20, $E8, $70
#_169649: db $B4, $F8, $2C, $F0, $56, $EC, $D7, $EA
#_169651: db $00, $60, $F0, $E8, $F4, $EC, $D6, $D7
#_169659: db $03, $00, $05, $03, $1D, $02, $26, $19
#_169661: db $5D, $33, $6F, $36, $E9, $34, $D4, $6A
#_169669: db $03, $05, $1D, $37, $7F, $6E, $EA, $D1
#_169671: db $C0, $00, $A0, $C0, $B8, $40, $64, $98
#_169679: db $BA, $CC, $F6, $6C, $97, $2C, $2B, $56
#_169681: db $C0, $A0, $B8, $EC, $FE, $76, $57, $8B
#_169689: db $00, $00, $09, $00, $1F, $01, $3E, $03
#_169691: db $26, $03, $7B, $27, $E7, $7B, $BD, $73
#_169699: db $00, $09, $17, $27, $3F, $7B, $E3, $B3
#_1696A1: db $00, $00, $E0, $00, $F8, $E0, $1C, $F8
#_1696A9: db $06, $FC, $BD, $FE, $61, $FE, $8E, $70
#_1696B1: db $00, $E0, $F8, $FC, $FE, $FD, $61, $8E
#_1696B9: db $83 ; Repeat Fill
#_1696BA: db $60, $03 ; Repeat Fill bytes
#_1696BC: db $83 ; Repeat Fill
#_1696BD: db $52, $01 ; Repeat Fill bytes
#_1696BF: db $11 ; Direct Copy
#_1696C0: db $63, $1C, $E7, $58, $FE, $01, $BC, $42
#_1696C8: db $00, $03, $0E, $17, $63, $A7, $FE, $FD
#_1696D0: db $00, $00
#_1696D2: db $85 ; Repeat Fill
#_1696D3: db $68, $01 ; Repeat Fill bytes
#_1696D5: db $1C ; Direct Copy
#_1696D6: db $C6, $38, $E7, $1A, $7F, $00, $BD, $02
#_1696DE: db $00, $C0, $70, $E8, $C6, $E5, $FF, $7F
#_1696E6: db $71, $1E, $71, $1C, $54, $2A, $76, $29
#_1696EE: db $6A, $17, $3D, $03, $07
#_1696F3: db $22 ; Byte Fill
#_1696F4: db $00
#_1696F5: db $E0, $81 ; EXT Direct Copy
#_1696F7: db $78, $72, $51, $70, $6B, $3D, $05, $00
#_1696FF: db $8C, $78, $8E, $38, $2A, $54, $6E, $94
#_169707: db $5B, $E6, $B3, $CE, $FD, $0E, $0E, $00
#_16970F: db $1C, $4E, $8A, $0E, $DB, $B3, $BF, $0E
#_169717: db $77, $08, $69, $1E, $32, $1F, $6B, $37
#_16971F: db $49, $37, $3B, $07, $07, $01, $01, $00
#_169727: db $77, $79, $32, $6B, $49, $3B, $07, $01
#_16972F: db $FC, $00, $86, $78, $6A, $FC, $EE, $DC
#_169737: db $95, $EA, $F7, $CE, $F9, $86, $8E, $00
#_16973F: db $FC, $8E, $6E, $EE, $97, $F7, $F9, $8E
#_169747: db $63, $1F, $DD, $6E, $F8, $4F, $E1, $7E
#_16974F: db $C6, $79, $79, $06, $37, $0E, $0F, $00
#_169757: db $6F, $CD, $CC, $E9, $C6, $59, $3F, $0F
#_16975F: db $D7, $3E, $A3, $7E, $F5, $5E, $79, $DE
#_169767: db $B9, $0E, $3A, $1C, $E2, $1C, $1C, $00
#_16976F: db $DF, $BF, $FD, $79, $F9, $FA, $FA, $1C
#_169777: db $92, $0F
#_169779: db $87 ; Repeat Fill
#_16977A: db $E0, $04 ; Repeat Fill bytes
#_16977C: db $06 ; Direct Copy
#_16977D: db $C7, $79, $7D, $03, $23, $00, $FE
#_169784: db $83 ; Repeat Fill
#_169785: db $F0, $04 ; Repeat Fill bytes
#_169787: db $E0, $9C ; EXT Direct Copy
#_169789: db $C7, $5F, $23, $29, $DE, $DD, $3E, $85
#_169791: db $7E, $A5, $5E, $6A, $BC, $92, $7C, $F4
#_169799: db $98, $B8, $00, $29, $DD, $BD, $BD, $7A
#_1697A1: db $F2, $F4, $B8, $B9, $47, $6E, $19, $71
#_1697A9: db $3E, $E2, $3F, $E9, $57, $EF, $73, $77
#_1697B1: db $01, $01, $00, $B9, $7E, $71, $E2, $E9
#_1697B9: db $EF, $77, $01, $9D, $E2, $76, $98, $8E
#_1697C1: db $7C, $47, $FC, $97, $EA, $F7, $CE, $EE
#_1697C9: db $80, $80, $00, $9D, $7E, $8E, $47, $97
#_1697D1: db $F7, $EE, $80, $6E, $19, $6B, $17, $5F
#_1697D9: db $28, $5F, $2B, $8E, $76, $FE, $72, $7F
#_1697E1: db $01, $01, $00, $68, $6B, $57, $50, $C9
#_1697E9: db $FD, $7E, $01, $76, $98, $D4, $E8, $FA
#_1697F1: db $14, $FA, $D4, $79, $66, $7F, $4E, $FE
#_1697F9: db $80, $80, $00, $16, $D4, $EA, $0A, $9B
#_169801: db $BF, $7E, $80, $7B, $1F, $38, $07, $3F
#_169809: db $08, $6E, $2D, $5D, $1A, $E9, $76, $77
#_169811: db $0E, $0F, $00, $7F, $38, $27, $52, $65
#_169819: db $E9, $7F, $0F, $7A, $84, $FA, $3C, $F5
#_169821: db $7E, $55, $FE, $AD, $9E
#_169826: db $85 ; Repeat Fill
#_169827: db $02, $05 ; Repeat Fill bytes
#_169829: db $07 ; Direct Copy
#_16982A: db $7A, $FA, $FD, $5D, $ED, $FA, $FA, $1C
#_169832: db $43 ; Word Fill
#_169833: db $AC, $53 ; Word Fill
#_169835: db $15 ; Direct Copy
#_169836: db $DE, $21, $DF, $20, $E6, $59, $B8, $27
#_16983E: db $9F, $10, $73, $01, $EC, $EC, $FE, $FF
#_169846: db $BF, $DF, $EF, $72, $35, $4A
#_16984C: db $83 ; Repeat Fill
#_16984D: db $E8, $02 ; Repeat Fill bytes
#_16984F: db $11 ; Direct Copy
#_169850: db $FB, $04, $67, $9A, $1D, $E4, $F9, $08
#_169858: db $CE, $80, $B7, $37, $7F, $FF, $FD, $FB
#_169860: db $F7, $4E
#_169862: db $FF ; End of GFX 9D

;===================================================================================================

GFX_9E:
#_169863: db $E0, $4F ; EXT Direct Copy
#_169865: db $23, $00, $57, $03, $DB, $47, $CC, $47
#_16986D: db $E8, $48, $7C, $38, $7E, $38, $3C, $0C
#_169875: db $23, $74, $BC, $BB, $B7, $47, $47, $33
#_16987D: db $C4, $00, $EA, $C0, $DB, $E2, $33, $E2
#_169885: db $17, $12, $3E, $1C, $7E, $1C, $3C, $30
#_16988D: db $C4, $2E, $3D, $DD, $ED, $E2, $E2, $CC
#_169895: db $00, $00, $07, $00, $08, $07, $19, $07
#_16989D: db $33, $0F, $73, $0F, $41, $3F, $80, $7F
#_1698A5: db $00, $07, $08, $11, $23, $43, $41, $80
#_1698AD: db $00, $00, $E0, $00, $F0, $E0, $98, $F0
#_1698B5: db $43 ; Word Fill
#_1698B6: db $6C, $98 ; Word Fill
#_1698B8: db $13 ; Direct Copy
#_1698B9: db $9A, $FC, $F2, $FC, $00, $E0, $F0, $F8
#_1698C1: db $9C, $9C, $FA, $F2, $00, $00, $0F, $00
#_1698C9: db $10, $0F, $29, $17
#_1698CD: db $43 ; Word Fill
#_1698CE: db $73, $0F ; Word Fill
#_1698D0: db $13 ; Direct Copy
#_1698D1: db $81, $7F, $80, $7F, $00, $0F, $10, $21
#_1698D9: db $43, $43, $81, $80, $00, $00, $C0, $00
#_1698E1: db $E0, $C0, $90, $E0
#_1698E5: db $43 ; Word Fill
#_1698E6: db $68, $90 ; Word Fill
#_1698E8: db $0B ; Direct Copy
#_1698E9: db $94, $F8, $F4, $F8, $00, $C0, $E0, $F0
#_1698F1: db $98, $98, $F4, $F4
#_1698F5: db $29 ; Byte Fill
#_1698F6: db $00
#_1698F7: db $05 ; Direct Copy
#_1698F8: db $10, $00, $3F, $00, $7F, $30
#_1698FE: db $24 ; Byte Fill
#_1698FF: db $00
#_169900: db $02 ; Direct Copy
#_169901: db $10, $3F, $7F
#_169904: db $27 ; Byte Fill
#_169905: db $00
#_169906: db $07 ; Direct Copy
#_169907: db $08, $00, $3C, $00, $E2, $1C, $FD, $DE
#_16990F: db $23 ; Byte Fill
#_169910: db $00
#_169911: db $E0, $33 ; EXT Direct Copy
#_169913: db $08, $3C, $FE, $3F, $03, $00, $07, $02
#_16991B: db $0D, $04, $0D, $05, $19, $09, $11, $01
#_169923: db $13, $03, $1B, $0A, $03, $05, $0B, $0A
#_16992B: db $16, $1E, $1C, $15, $80, $00, $F0, $00
#_169933: db $EB, $30, $F7, $1B, $DF, $37, $EE, $17
#_16993B: db $FC, $2F, $BC, $AF, $80, $70, $FB, $BF
#_169943: db $DF, $AF, $DF, $5F
#_169947: db $25 ; Byte Fill
#_169948: db $00
#_169949: db $00 ; Direct Copy
#_16994A: db $01
#_16994B: db $44 ; Word Fill
#_16994C: db $00, $02 ; Word Fill
#_16994E: db $02 ; Direct Copy
#_16994F: db $04, $00, $04
#_169952: db $23 ; Byte Fill
#_169953: db $00
#_169954: db $1F ; Direct Copy
#_169955: db $01, $03, $03, $07, $07, $70, $00, $CB
#_16995D: db $70, $77, $3B, $5F, $37, $AE, $17, $BC
#_169965: db $0F, $DC, $0F, $BC, $2F, $70, $FB, $7F
#_16996D: db $5F, $AF, $BF, $FF, $DF, $01, $00, $07
#_169975: db $43 ; Word Fill
#_169976: db $00, $0F ; Word Fill
#_169978: db $11 ; Direct Copy
#_169979: db $03, $0F, $06, $0F, $00, $1F, $00, $1C
#_169981: db $08, $01, $06, $0B, $0F, $0F, $0E, $1B
#_169989: db $1F, $20
#_16998B: db $44 ; Word Fill
#_16998C: db $00, $F0 ; Word Fill
#_16998E: db $11 ; Direct Copy
#_16998F: db $F8, $C0, $6C, $D8, $F2, $0C, $64, $58
#_169997: db $38, $20, $20, $D0, $F0, $F8, $FC, $D2
#_16999F: db $A4, $D8
#_1699A1: db $23 ; Byte Fill
#_1699A2: db $00
#_1699A3: db $0B ; Direct Copy
#_1699A4: db $01, $00, $03, $01, $07, $03, $7E, $03
#_1699AC: db $FC, $17, $7E, $37
#_1699B0: db $83 ; Repeat Fill
#_1699B1: db $01, $01 ; Repeat Fill bytes
#_1699B3: db $03 ; Direct Copy
#_1699B4: db $07, $7F, $AF, $4F
#_1699B8: db $23 ; Byte Fill
#_1699B9: db $00
#_1699BA: db $E0, $5C ; EXT Direct Copy
#_1699BC: db $E0, $00, $FC, $E0, $36, $EC, $69, $DE
#_1699C4: db $72, $DC, $7C, $F0, $00, $00, $E0, $FC
#_1699CC: db $FE, $F9, $F2, $FC, $5E, $24, $BE, $6A
#_1699D4: db $FE, $1A, $D6, $0C, $BC, $08, $4D, $30
#_1699DC: db $67, $39, $3D, $00, $7B, $FD, $FD, $BF
#_1699E4: db $FF, $4F, $66, $3D, $7A, $24, $7D, $56
#_1699EC: db $7F, $58, $6B, $30, $3D, $10, $B2, $0C
#_1699F4: db $E6, $9C, $BC, $00, $DE, $BF, $BF, $FD
#_1699FC: db $FF, $F2, $66, $BC, $B6, $49, $E3, $1C
#_169A04: db $C1, $3E, $41, $3E, $30, $0F, $0F, $00
#_169A0C: db $0E, $00, $07, $00, $B6, $E3, $80, $40
#_169A14: db $30, $0F, $09, $07, $62
#_169A19: db $44 ; Word Fill
#_169A1A: db $FC, $02 ; Word Fill
#_169A1C: db $E0, $2B ; EXT Direct Copy
#_169A1E: db $04, $F8, $08, $F0, $F0, $00, $40, $00
#_169A26: db $80, $00, $62, $02, $02, $04, $08, $F0
#_169A2E: db $C0, $80, $9B, $64, $B1, $4E, $A0, $5F
#_169A36: db $60, $1F, $30, $0F, $1F, $00, $39, $00
#_169A3E: db $1F, $00, $9B, $B1, $80, $40, $30, $1F
#_169A46: db $27, $1F, $64, $F8
#_169A4A: db $43 ; Word Fill
#_169A4B: db $84, $78 ; Word Fill
#_169A4D: db $E0, $48 ; EXT Direct Copy
#_169A4F: db $88, $70, $10, $E0, $E0, $00, $70, $00
#_169A57: db $E0, $00, $64, $84, $04, $08, $10, $E0
#_169A5F: db $90, $E0, $7E, $30, $3D, $01, $1F, $01
#_169A67: db $13, $02, $33, $03, $49, $31, $2F, $18
#_169A6F: db $12, $0C, $7F, $3E, $18, $1C, $3C, $5E
#_169A77: db $2F, $12, $FD, $E6, $FD, $F6, $FF, $EE
#_169A7F: db $FE, $10, $FC, $F8, $FE, $F4, $FA, $0C
#_169A87: db $24, $18, $1F, $0F, $1F, $0E, $04, $0E
#_169A8F: db $FA, $34, $1F, $0C, $0F, $04, $07, $02
#_169A97: db $02
#_169A98: db $28 ; Byte Fill
#_169A99: db $00
#_169A9A: db $03 ; Direct Copy
#_169A9B: db $13, $0B, $05, $02
#_169A9F: db $23 ; Byte Fill
#_169AA0: db $00
#_169AA1: db $0C ; Direct Copy
#_169AA2: db $FC, $DF, $FE, $1D, $7F, $2D, $77, $35
#_169AAA: db $38, $10, $1F, $00, $07
#_169AAF: db $22 ; Byte Fill
#_169AB0: db $00
#_169AB1: db $06 ; Direct Copy
#_169AB2: db $3F, $FF, $7F, $7F, $37, $18, $07
#_169AB9: db $44 ; Word Fill
#_169ABA: db $00, $08 ; Word Fill
#_169ABC: db $E0, $20 ; EXT Direct Copy
#_169ABE: db $0C, $04, $0F, $07, $07, $03, $07, $02
#_169AC6: db $03, $00, $01, $00, $0F, $0F, $0B, $08
#_169ACE: db $04, $05, $02, $01, $FE, $9D, $7F, $4D
#_169AD6: db $F7, $D5, $F8, $80, $FF, $80, $E7, $00
#_169ADE: db $C0
#_169ADF: db $22 ; Byte Fill
#_169AE0: db $00
#_169AE1: db $07 ; Direct Copy
#_169AE2: db $7F, $BF, $3F, $57, $78, $A7, $C0, $00
#_169AEA: db $43 ; Word Fill
#_169AEB: db $3C, $18 ; Word Fill
#_169AED: db $03 ; Direct Copy
#_169AEE: db $2E, $0A, $36, $02
#_169AF2: db $43 ; Word Fill
#_169AF3: db $1F, $01 ; Word Fill
#_169AF5: db $E0, $48 ; EXT Direct Copy
#_169AF7: db $07, $00, $01, $00, $3F, $3F, $3D, $2D
#_169AFF: db $16, $1A, $07, $01, $7C, $68, $7A, $64
#_169B07: db $F6, $DC, $FE, $DC, $FC, $B8, $F8, $A0
#_169B0F: db $E0, $80, $80, $00, $9C, $9E, $3E, $3E
#_169B17: db $7C, $78, $60, $80, $FF, $05, $FF, $19
#_169B1F: db $E7, $24, $E3, $23, $F0, $30, $FD, $1D
#_169B27: db $5F, $0F, $0F, $00, $FF, $A7, $DB, $5C
#_169B2F: db $CF, $A2, $50, $0F, $FE, $98, $BD, $2A
#_169B37: db $7B, $6E, $FF, $16, $7E, $6C, $FC, $D0
#_169B3F: db $F0
#_169B40: db $22 ; Byte Fill
#_169B41: db $00
#_169B42: db $06 ; Direct Copy
#_169B43: db $FE, $DF, $9F, $EF, $9E, $3C, $F0
#_169B4A: db $22 ; Byte Fill
#_169B4B: db $00
#_169B4C: db $E0, $5D ; EXT Direct Copy
#_169B4E: db $03, $00, $0F, $00, $14, $0A, $22, $1D
#_169B56: db $21, $1E, $40, $3B, $40, $31, $00, $02
#_169B5E: db $0E, $15, $22, $21, $44, $4E, $E0, $00
#_169B66: db $52, $00, $7C, $00, $28, $50, $44, $B8
#_169B6E: db $84, $68, $22, $84, $72, $0C, $00, $C0
#_169B76: db $F0, $A8, $44, $94, $5A, $82, $00, $00
#_169B7E: db $21, $00, $76, $01, $59, $07, $2F, $03
#_169B86: db $5F, $27, $EE, $7F, $DD, $3E, $00, $21
#_169B8E: db $57, $6F, $37, $7F, $FE, $9C, $00, $00
#_169B96: db $F0, $00, $1C, $F0, $FA, $F4, $F3, $EC
#_169B9E: db $73, $EC, $2B, $FC, $A3, $7C, $00, $F0
#_169BA6: db $FC, $FE, $FF, $7F, $3F, $37
#_169BAC: db $29 ; Byte Fill
#_169BAD: db $00
#_169BAE: db $43 ; Word Fill
#_169BAF: db $07, $00 ; Word Fill
#_169BB1: db $00 ; Direct Copy
#_169BB2: db $0E
#_169BB3: db $25 ; Byte Fill
#_169BB4: db $00
#_169BB5: db $02 ; Direct Copy
#_169BB6: db $07, $07, $0F
#_169BB9: db $25 ; Byte Fill
#_169BBA: db $00
#_169BBB: db $09 ; Direct Copy
#_169BBC: db $08, $00, $78, $00, $EC, $18, $EC, $98
#_169BC4: db $EC, $58
#_169BC6: db $22 ; Byte Fill
#_169BC7: db $00
#_169BC8: db $E0, $34 ; EXT Direct Copy
#_169BCA: db $08, $78, $FC, $7C, $FC, $03, $00, $05
#_169BD2: db $00, $09, $01, $09, $00, $13, $03, $1B
#_169BDA: db $0B, $1B, $0A, $1F, $0D, $03, $07, $0E
#_169BE2: db $0F, $1C, $14, $15, $12, $80, $00, $C0
#_169BEA: db $00, $F3, $00, $CF, $33, $E6, $7B, $F6
#_169BF2: db $3B, $FE, $DB, $BC, $07, $80, $40, $F3
#_169BFA: db $7F, $FF, $FF, $3F, $FF
#_169BFF: db $25 ; Byte Fill
#_169C00: db $00
#_169C01: db $05 ; Direct Copy
#_169C02: db $03, $00, $07, $03, $0D, $05
#_169C08: db $43 ; Word Fill
#_169C09: db $09, $01 ; Word Fill
#_169C0B: db $22 ; Byte Fill
#_169C0C: db $00
#_169C0D: db $07 ; Direct Copy
#_169C0E: db $03, $04, $0A, $0E, $0E, $00, $00, $33
#_169C16: db $87 ; Repeat Fill
#_169C17: db $AD, $03 ; Repeat Fill bytes
#_169C19: db $06 ; Direct Copy
#_169C1A: db $1B, $FC, $47, $F8, $9F, $00, $33
#_169C21: db $23 ; Byte Fill
#_169C22: db $FF
#_169C23: db $01 ; Direct Copy
#_169C24: db $BF, $7F
#_169C26: db $83 ; Repeat Fill
#_169C27: db $53, $01 ; Repeat Fill bytes
#_169C29: db $22 ; Byte Fill
#_169C2A: db $00
#_169C2B: db $10 ; Direct Copy
#_169C2C: db $03, $03, $0F, $0C, $3F, $31, $7E, $4F
#_169C34: db $F0, $01, $03, $00, $00, $03, $0F, $3E
#_169C3C: db $70
#_169C3D: db $22 ; Byte Fill
#_169C3E: db $00
#_169C3F: db $18 ; Direct Copy
#_169C40: db $C0, $70, $72, $0C, $FD, $F2, $FE, $0C
#_169C48: db $FE, $E4, $1E, $C2, $3F, $00, $C0, $72
#_169C50: db $0D, $F2, $FC, $1C, $3E, $00, $01, $01
#_169C58: db $03
#_169C59: db $43 ; Word Fill
#_169C5A: db $02, $27 ; Word Fill
#_169C5C: db $43 ; Word Fill
#_169C5D: db $05, $0E ; Word Fill
#_169C5F: db $0F ; Direct Copy
#_169C60: db $0B, $5C, $0B, $DC, $00, $01, $23, $23
#_169C68: db $06, $06, $4C, $CC, $00, $80, $80, $C0
#_169C70: db $43 ; Word Fill
#_169C71: db $40, $E0 ; Word Fill
#_169C73: db $43 ; Word Fill
#_169C74: db $A0, $70 ; Word Fill
#_169C76: db $E0, $23 ; EXT Direct Copy
#_169C78: db $10, $FA, $D0, $3B, $00, $80, $C0, $C0
#_169C80: db $60, $60, $F2, $33, $FE, $7F, $FD, $BF
#_169C88: db $FB, $DF, $F7, $EF, $EF, $F7, $DF, $FB
#_169C90: db $BF, $FD, $7F, $FE, $FE, $FD, $FB, $F7
#_169C98: db $EF, $DF, $BF, $7F
#_169C9C: db $97 ; Repeat Fill
#_169C9D: db $50, $04 ; Repeat Fill bytes
#_169C9F: db $E0, $3C ; EXT Direct Copy
#_169CA1: db $40, $38, $40, $37, $40, $33, $20, $18
#_169CA9: db $20, $1C, $10, $0F, $0C, $03, $03, $00
#_169CB1: db $47, $48, $4C, $27, $23, $10, $0C, $03
#_169CB9: db $22, $1C, $02, $EC, $02, $CC, $04, $18
#_169CC1: db $04, $38, $08, $F0, $30, $C0, $C0, $00
#_169CC9: db $C2, $12, $32, $E4, $C4, $08, $30, $C0
#_169CD1: db $EB, $1C, $A7, $58, $88, $7F, $5F, $3E
#_169CD9: db $3E, $01, $10, $0F, $0F
#_169CDE: db $22 ; Byte Fill
#_169CDF: db $00
#_169CE0: db $14 ; Direct Copy
#_169CE1: db $AA, $80, $98, $5E, $2A, $10, $0F, $00
#_169CE9: db $87, $78, $0E, $F0, $44, $B8, $88, $70
#_169CF1: db $18, $E0, $70, $80, $80
#_169CF6: db $22 ; Byte Fill
#_169CF7: db $00
#_169CF8: db $08 ; Direct Copy
#_169CF9: db $0F, $0E, $04, $88, $18, $70, $80, $00
#_169D01: db $0D
#_169D02: db $84 ; Repeat Fill
#_169D03: db $13, $02 ; Repeat Fill bytes
#_169D05: db $12 ; Direct Copy
#_169D06: db $13, $03, $09, $01, $07, $00, $02, $01
#_169D0E: db $01, $00, $0E, $18, $1C, $1C, $0E, $07
#_169D16: db $03, $01, $CC
#_169D19: db $43 ; Word Fill
#_169D1A: db $78, $FC ; Word Fill
#_169D1C: db $17 ; Direct Copy
#_169D1D: db $00, $FC, $F8, $F8, $F0, $F0, $00, $F0
#_169D25: db $E0, $E0, $00, $FC, $FC, $7C, $04, $08
#_169D2D: db $F0, $F0, $E0, $0F, $06, $07, $02, $03
#_169D35: db $2A ; Byte Fill
#_169D36: db $00
#_169D37: db $02 ; Direct Copy
#_169D38: db $09, $05, $03
#_169D3B: db $24 ; Byte Fill
#_169D3C: db $00
#_169D3D: db $0C ; Direct Copy
#_169D3E: db $F8, $BF, $FB, $3F, $FF, $7E, $7E, $3D
#_169D46: db $3D, $1F, $1F, $07, $07
#_169D4B: db $22 ; Byte Fill
#_169D4C: db $00
#_169D4D: db $0E ; Direct Copy
#_169D4E: db $7F, $FF, $FF, $7F, $27, $1B, $07, $00
#_169D56: db $0A, $00, $0D, $00, $07, $02, $02
#_169D5D: db $28 ; Byte Fill
#_169D5E: db $00
#_169D5F: db $03 ; Direct Copy
#_169D60: db $0F, $0F, $05, $02
#_169D64: db $23 ; Byte Fill
#_169D65: db $00
#_169D66: db $04 ; Direct Copy
#_169D67: db $FB, $9F, $FF, $7E, $FE
#_169D6C: db $85 ; Repeat Fill
#_169D6D: db $2F, $05 ; Repeat Fill bytes
#_169D6F: db $24 ; Byte Fill
#_169D70: db $00
#_169D71: db $02 ; Direct Copy
#_169D72: db $7F, $FF, $FF
#_169D75: db $83 ; Repeat Fill
#_169D76: db $3C, $05 ; Repeat Fill bytes
#_169D78: db $E0, $60 ; EXT Direct Copy
#_169D7A: db $00, $4F, $F0, $33, $7C, $0C, $3F, $03
#_169D82: db $0F, $00, $03, $00, $30, $00, $03, $00
#_169D8A: db $01, $70, $3C, $0F, $03, $00, $30, $03
#_169D92: db $01, $E2, $1F, $C4, $3E, $0C, $FE, $F2
#_169D9A: db $FE, $0C, $FC, $70, $72, $00, $C4, $00
#_169DA2: db $00, $1E, $3C, $FC, $F2, $0C, $72, $C4
#_169DAA: db $00, $0B, $5C, $2B, $7C, $29, $3E, $28
#_169DB2: db $3F, $14, $1F, $16, $5F, $09, $2F, $00
#_169DBA: db $01, $4C, $6C, $2E, $2F, $17, $57, $29
#_169DC2: db $00, $D0, $3A, $D4, $3E, $54, $BC, $14
#_169DCA: db $FC, $28, $F8, $68, $F8, $90, $F4, $00
#_169DD2: db $88, $32, $36, $B4, $F4, $E8, $E8, $94
#_169DDA: db $08
#_169DDB: db $F0, $2E ; EXT Repeat Fill
#_169DDD: db $50, $04 ; Repeat Fill bytes
#_169DDF: db $00 ; Direct Copy
#_169DE0: db $7F
#_169DE1: db $FF ; End of GFX 9E

;===================================================================================================

GFX_9F:
#_169DE2: db $E0, $6B ; EXT Direct Copy
#_169DE4: db $00, $00, $01, $00, $3B, $01, $4F, $08
#_169DEC: db $FF, $2C, $7E, $0D, $0F, $04, $1F, $01
#_169DF4: db $00, $01, $3A, $77, $92, $73, $0B, $1E
#_169DFC: db $E0, $00, $7E, $20, $3B, $28, $F9, $68
#_169E04: db $7E, $8C, $BC, $C8, $FC, $C0, $FC, $40
#_169E0C: db $E0, $9E, $D5, $97, $F2, $F4, $FC, $FC
#_169E14: db $00, $00, $60, $00, $D1, $00, $EB, $61
#_169E1C: db $77, $10, $1E, $09, $1F, $05, $2F, $12
#_169E24: db $00, $60, $B1, $9A, $6F, $17, $1A, $34
#_169E2C: db $0C, $00, $1E, $08, $DA, $08, $BA, $08
#_169E34: db $FE, $0C, $3C, $C8, $FC, $40, $FE, $00
#_169E3C: db $0C, $12, $D6, $F6, $72, $F4, $FC, $FE
#_169E44: db $1F, $00, $19, $0F, $1C, $07, $17, $03
#_169E4C: db $13, $01, $0B, $01
#_169E50: db $43 ; Word Fill
#_169E51: db $07, $03 ; Word Fill
#_169E53: db $24 ; Byte Fill
#_169E54: db $1F
#_169E55: db $13 ; Direct Copy
#_169E56: db $0F, $07, $07, $3C, $00, $FF, $3C, $FF
#_169E5E: db $7E, $C3, $FF, $81, $FF, $DB, $E7, $E7
#_169E66: db $7E, $E7, $3C, $3C
#_169E6A: db $23 ; Byte Fill
#_169E6B: db $FF
#_169E6C: db $0E ; Direct Copy
#_169E6D: db $E7, $FF, $FF, $00, $00, $1E, $00, $33
#_169E75: db $1E, $19, $0F, $1D, $07, $17, $03
#_169E7C: db $83 ; Repeat Fill
#_169E7D: db $6A, $00 ; Repeat Fill bytes
#_169E7F: db $02 ; Direct Copy
#_169E80: db $00, $1E, $3F
#_169E83: db $22 ; Byte Fill
#_169E84: db $1F
#_169E85: db $00 ; Direct Copy
#_169E86: db $0F
#_169E87: db $84 ; Repeat Fill
#_169E88: db $77, $00 ; Repeat Fill bytes
#_169E8A: db $05 ; Direct Copy
#_169E8B: db $E7, $FF, $DB, $E7, $99, $E7
#_169E91: db $43 ; Word Fill
#_169E92: db $81, $FF ; Word Fill
#_169E94: db $06 ; Direct Copy
#_169E95: db $C3, $FF, $3C, $FF, $FF, $E7, $E7
#_169E9C: db $22 ; Byte Fill
#_169E9D: db $FF
#_169E9E: db $E0, $33 ; EXT Direct Copy
#_169EA0: db $03, $00, $0C, $03, $13, $0F, $17, $0F
#_169EA8: db $26, $1F, $67, $1F, $A3, $5F, $E1, $7F
#_169EB0: db $03, $0C, $13, $17, $27, $67, $E3, $E1
#_169EB8: db $C0, $00, $30, $C0, $C8, $F0, $28, $F0
#_169EC0: db $14, $F8, $36, $F8, $F5, $FA, $E1, $FE
#_169EC8: db $C0, $30, $C8, $E8, $F4, $F6, $F7, $E3
#_169ED0: db $3C, $00, $5E, $20
#_169ED4: db $43 ; Word Fill
#_169ED5: db $BF, $40 ; Word Fill
#_169ED7: db $43 ; Word Fill
#_169ED8: db $A5, $5A ; Word Fill
#_169EDA: db $0B ; Direct Copy
#_169EDB: db $5A, $24, $3C, $00, $3C, $62, $C1, $D9
#_169EE3: db $E7, $E7, $7E, $3C
#_169EE7: db $83 ; Repeat Fill
#_169EE8: db $F0, $00 ; Repeat Fill bytes
#_169EEA: db $43 ; Word Fill
#_169EEB: db $BF, $40 ; Word Fill
#_169EED: db $05 ; Direct Copy
#_169EEE: db $CD, $32, $C9, $36, $72, $0C
#_169EF4: db $84 ; Repeat Fill
#_169EF5: db $FE, $00 ; Repeat Fill bytes
#_169EF7: db $02 ; Direct Copy
#_169EF8: db $F1, $CB, $CF
#_169EFB: db $85 ; Repeat Fill
#_169EFC: db $06, $01 ; Repeat Fill bytes
#_169EFE: db $43 ; Word Fill
#_169EFF: db $BF, $40 ; Word Fill
#_169F01: db $05 ; Direct Copy
#_169F02: db $9D, $62, $81, $7E, $42, $3C
#_169F08: db $84 ; Repeat Fill
#_169F09: db $FE, $00 ; Repeat Fill bytes
#_169F0B: db $1C ; Direct Copy
#_169F0C: db $C1, $E3, $FF, $7E, $3C, $FE, $7F, $FD
#_169F14: db $BF, $FB, $DF, $F7, $EF, $EF, $F7, $DF
#_169F1C: db $FB, $BF, $FD, $7F, $FE, $FE, $FD, $FB
#_169F24: db $F7, $EF, $DF, $BF, $7F
#_169F29: db $23 ; Byte Fill
#_169F2A: db $00
#_169F2B: db $E0, $24 ; EXT Direct Copy
#_169F2D: db $03, $00, $04, $03, $0A, $05, $08, $07
#_169F35: db $0D, $07, $1F, $0D, $00, $00, $03, $07
#_169F3D: db $0D, $0F, $0F, $1F, $78, $00, $9C, $78
#_169F45: db $FC, $08, $FC, $F0, $76, $CC, $CE, $B0
#_169F4D: db $96, $60, $B7, $62, $78
#_169F52: db $22 ; Byte Fill
#_169F53: db $FC
#_169F54: db $22 ; Byte Fill
#_169F55: db $FE
#_169F56: db $04 ; Direct Copy
#_169F57: db $FF, $3F, $0A, $5C, $34
#_169F5C: db $43 ; Word Fill
#_169F5D: db $BD, $65 ; Word Fill
#_169F5F: db $09 ; Direct Copy
#_169F60: db $FD, $35, $7F, $1B, $3F, $01, $01, $00
#_169F68: db $2C, $7B
#_169F6A: db $22 ; Byte Fill
#_169F6B: db $FA
#_169F6C: db $08 ; Direct Copy
#_169F6D: db $7C, $3E, $01, $7E, $04, $E6, $9C, $EE
#_169F75: db $1C
#_169F76: db $43 ; Word Fill
#_169F77: db $FC, $18 ; Word Fill
#_169F79: db $0F ; Direct Copy
#_169F7A: db $F8, $B0, $F8, $80, $80, $00, $F6, $7E
#_169F82: db $FE, $FC, $FC, $78, $78, $80, $2E, $1A
#_169F8A: db $43 ; Word Fill
#_169F8B: db $5E, $32 ; Word Fill
#_169F8D: db $0A ; Direct Copy
#_169F8E: db $7E, $32, $7E, $12, $3F, $0B, $1F, $01
#_169F96: db $01, $00, $3D
#_169F99: db $23 ; Byte Fill
#_169F9A: db $7D
#_169F9B: db $08 ; Direct Copy
#_169F9C: db $3C, $1E, $01, $FB, $84, $F7, $8E, $EE
#_169FA4: db $9C
#_169FA5: db $43 ; Word Fill
#_169FA6: db $FC, $B8 ; Word Fill
#_169FA8: db $E0, $35 ; EXT Direct Copy
#_169FAA: db $F8, $B0, $F0, $80, $80, $00, $7D, $7F
#_169FB2: db $7E, $7C, $7C, $78, $70, $80, $0F, $03
#_169FBA: db $17, $03, $2F, $0D, $3F, $06, $7F, $39
#_169FC2: db $4F, $3B, $5F, $33, $7F, $23, $0F, $1F
#_169FCA: db $33, $39, $7E, $7C, $7C, $74, $E7, $18
#_169FD2: db $66, $99, $99, $FF, $FF, $BD, $E7, $7E
#_169FDA: db $C3, $BD, $66, $5A, $3C, $24
#_169FE0: db $24 ; Byte Fill
#_169FE1: db $FF
#_169FE2: db $E0, $22 ; EXT Direct Copy
#_169FE4: db $7E, $BD, $DB, $07, $03, $1F, $05, $33
#_169FEC: db $12, $3F, $0F, $7F, $23, $4E, $3A, $4F
#_169FF4: db $3B, $2D, $17, $07, $1B, $2D, $30, $7C
#_169FFC: db $7D, $7C, $38, $FF, $FF, $BD, $FF, $C3
#_16A004: db $FF, $FF, $3C
#_16A007: db $84 ; Repeat Fill
#_16A008: db $2B, $02 ; Repeat Fill bytes
#_16A00A: db $02 ; Direct Copy
#_16A00B: db $3C, $81, $81
#_16A00E: db $23 ; Byte Fill
#_16A00F: db $FF
#_16A010: db $E0, $33 ; EXT Direct Copy
#_16A012: db $3C, $00, $C3, $7E, $B0, $5F, $F8, $27
#_16A01A: db $DF, $78, $A7, $7F, $5C, $3F, $67, $18
#_16A022: db $5C, $23, $F5, $1B, $B0, $F8, $FF, $BF
#_16A02A: db $5C, $67, $5C, $F5, $07, $FA, $1B, $E4
#_16A032: db $E3, $1E, $C5, $FE, $1A, $FC, $E6, $18
#_16A03A: db $3E, $C4, $2F, $D8, $07, $1F, $FF, $FD
#_16A042: db $1A, $E6, $3E, $AF
#_16A046: db $83 ; Repeat Fill
#_16A047: db $F0, $00 ; Repeat Fill bytes
#_16A049: db $01 ; Direct Copy
#_16A04A: db $FF, $00
#_16A04C: db $83 ; Repeat Fill
#_16A04D: db $26, $01 ; Repeat Fill bytes
#_16A04F: db $03 ; Direct Copy
#_16A050: db $91, $6E, $62, $1C
#_16A054: db $84 ; Repeat Fill
#_16A055: db $FE, $00 ; Repeat Fill bytes
#_16A057: db $02 ; Direct Copy
#_16A058: db $A1, $93, $9F
#_16A05B: db $85 ; Repeat Fill
#_16A05C: db $06, $01 ; Repeat Fill bytes
#_16A05E: db $07 ; Direct Copy
#_16A05F: db $DF, $20, $BF, $40, $BD, $42, $C1, $3E
#_16A067: db $85 ; Repeat Fill
#_16A068: db $2C, $01 ; Repeat Fill bytes
#_16A06A: db $05 ; Direct Copy
#_16A06B: db $E1, $A1, $A3, $FF, $7E, $3C
#_16A071: db $24 ; Byte Fill
#_16A072: db $00
#_16A073: db $44 ; Word Fill
#_16A074: db $3C, $18 ; Word Fill
#_16A076: db $01 ; Direct Copy
#_16A077: db $00, $3C
#_16A079: db $26 ; Byte Fill
#_16A07A: db $00
#_16A07B: db $01 ; Direct Copy
#_16A07C: db $18, $18
#_16A07E: db $22 ; Byte Fill
#_16A07F: db $00
#_16A080: db $97 ; Repeat Fill
#_16A081: db $38, $01 ; Repeat Fill bytes
#_16A083: db $0C ; Direct Copy
#_16A084: db $1F, $08, $27, $18, $46, $39, $99, $7F
#_16A08C: db $FF, $7F, $7F, $06, $06
#_16A091: db $22 ; Byte Fill
#_16A092: db $00
#_16A093: db $14 ; Direct Copy
#_16A094: db $1F, $3F, $7F, $FF, $FF, $7F, $06, $00
#_16A09C: db $EF, $C6, $FF, $CE, $FB, $9E, $E6, $FC
#_16A0A4: db $FE, $7C, $FC, $F0, $F0
#_16A0A9: db $22 ; Byte Fill
#_16A0AA: db $00
#_16A0AB: db $22 ; Byte Fill
#_16A0AC: db $FF
#_16A0AD: db $04 ; Direct Copy
#_16A0AE: db $FE, $FE, $FC, $F0, $00
#_16A0B3: db $37 ; Byte Fill
#_16A0B4: db $18
#_16A0B5: db $25 ; Byte Fill
#_16A0B6: db $00
#_16A0B7: db $23 ; Byte Fill
#_16A0B8: db $FF
#_16A0B9: db $28 ; Byte Fill
#_16A0BA: db $00
#_16A0BB: db $01 ; Direct Copy
#_16A0BC: db $FF, $FF
#_16A0BE: db $22 ; Byte Fill
#_16A0BF: db $00
#_16A0C0: db $9E ; Repeat Fill
#_16A0C1: db $E0, $01 ; Repeat Fill bytes
#_16A0C3: db $02 ; Direct Copy
#_16A0C4: db $7E, $E7, $BD
#_16A0C7: db $85 ; Repeat Fill
#_16A0C8: db $02, $02 ; Repeat Fill bytes
#_16A0CA: db $23 ; Byte Fill
#_16A0CB: db $FF
#_16A0CC: db $10 ; Direct Copy
#_16A0CD: db $7E, $7E, $BD, $DB, $7F, $03, $3E, $01
#_16A0D5: db $2F, $11, $13, $0C, $0F, $03, $04, $03
#_16A0DD: db $03
#_16A0DE: db $22 ; Byte Fill
#_16A0DF: db $00
#_16A0E0: db $0C ; Direct Copy
#_16A0E1: db $6C, $22, $32, $1F, $0F, $07, $03, $00
#_16A0E9: db $99, $99, $7E, $FF, $42
#_16A0EE: db $83 ; Repeat Fill
#_16A0EF: db $8C, $00 ; Repeat Fill bytes
#_16A0F1: db $03 ; Direct Copy
#_16A0F2: db $3C, $FF, $C3, $C3
#_16A0F6: db $22 ; Byte Fill
#_16A0F7: db $00
#_16A0F8: db $00 ; Direct Copy
#_16A0F9: db $66
#_16A0FA: db $22 ; Byte Fill
#_16A0FB: db $00
#_16A0FC: db $10 ; Direct Copy
#_16A0FD: db $C3, $FF, $C3, $00, $1B, $0F, $1E, $0F
#_16A105: db $0F, $07, $0F, $03, $07, $00, $05, $03
#_16A10D: db $03
#_16A10E: db $22 ; Byte Fill
#_16A10F: db $00
#_16A110: db $09 ; Direct Copy
#_16A111: db $10, $10, $08, $0C, $07, $07, $03, $00
#_16A119: db $C3, $C3
#_16A11B: db $8A ; Repeat Fill
#_16A11C: db $7A, $03 ; Repeat Fill bytes
#_16A11E: db $22 ; Byte Fill
#_16A11F: db $00
#_16A120: db $00 ; Direct Copy
#_16A121: db $3C
#_16A122: db $22 ; Byte Fill
#_16A123: db $00
#_16A124: db $83 ; Repeat Fill
#_16A125: db $8C, $03 ; Repeat Fill bytes
#_16A127: db $0F ; Direct Copy
#_16A128: db $BE, $63, $EF, $5B, $DF, $3B, $DB, $35
#_16A130: db $59, $36, $B7, $6E, $DB, $66, $7F, $10
#_16A138: db $22 ; Byte Fill
#_16A139: db $FF
#_16A13A: db $14 ; Direct Copy
#_16A13B: db $FB, $79, $F7, $DF, $7F, $3D, $C6, $37
#_16A143: db $DA, $7B, $DC, $DB, $AC, $9A, $6C, $ED
#_16A14B: db $76, $DF, $66, $FE, $08
#_16A150: db $22 ; Byte Fill
#_16A151: db $FF
#_16A152: db $04 ; Direct Copy
#_16A153: db $DF, $9E, $EF, $FF, $FE
#_16A158: db $F0, $27 ; EXT Repeat Fill
#_16A15A: db $10, $02 ; Repeat Fill bytes
#_16A15C: db $23 ; Byte Fill
#_16A15D: db $FF
#_16A15E: db $83 ; Repeat Fill
#_16A15F: db $3C, $02 ; Repeat Fill bytes
#_16A161: db $29 ; Byte Fill
#_16A162: db $00
#_16A163: db $05 ; Direct Copy
#_16A164: db $06, $00, $1F, $06, $36, $15
#_16A16A: db $24 ; Byte Fill
#_16A16B: db $00
#_16A16C: db $02 ; Direct Copy
#_16A16D: db $06, $19, $2B
#_16A170: db $27 ; Byte Fill
#_16A171: db $00
#_16A172: db $07 ; Direct Copy
#_16A173: db $08, $00, $14, $00, $F4, $10, $74, $D0
#_16A17B: db $23 ; Byte Fill
#_16A17C: db $00
#_16A17D: db $03 ; Direct Copy
#_16A17E: db $08, $1C, $EC, $EC
#_16A182: db $2B ; Byte Fill
#_16A183: db $00
#_16A184: db $83 ; Repeat Fill
#_16A185: db $2A, $04 ; Repeat Fill bytes
#_16A187: db $25 ; Byte Fill
#_16A188: db $00
#_16A189: db $01 ; Direct Copy
#_16A18A: db $06, $19
#_16A18C: db $29 ; Byte Fill
#_16A18D: db $00
#_16A18E: db $05 ; Direct Copy
#_16A18F: db $04, $00, $1A, $00, $F2, $10
#_16A195: db $24 ; Byte Fill
#_16A196: db $00
#_16A197: db $02 ; Direct Copy
#_16A198: db $04, $1E, $EE
#_16A19B: db $23 ; Byte Fill
#_16A19C: db $0C
#_16A19D: db $23 ; Byte Fill
#_16A19E: db $18
#_16A19F: db $23 ; Byte Fill
#_16A1A0: db $30
#_16A1A1: db $23 ; Byte Fill
#_16A1A2: db $60
#_16A1A3: db $83 ; Repeat Fill
#_16A1A4: db $82, $04 ; Repeat Fill bytes
#_16A1A6: db $83 ; Repeat Fill
#_16A1A7: db $8A, $04 ; Repeat Fill bytes
#_16A1A9: db $23 ; Byte Fill
#_16A1AA: db $00
#_16A1AB: db $09 ; Direct Copy
#_16A1AC: db $03, $03, $0F, $0F, $3C, $3C, $F0, $F0
#_16A1B4: db $C0, $C0
#_16A1B6: db $23 ; Byte Fill
#_16A1B7: db $00
#_16A1B8: db $05 ; Direct Copy
#_16A1B9: db $03, $0F, $3C, $F0, $C0, $00
#_16A1BF: db $84 ; Repeat Fill
#_16A1C0: db $60, $03 ; Repeat Fill bytes
#_16A1C2: db $03 ; Direct Copy
#_16A1C3: db $10, $13, $0D, $0F
#_16A1C7: db $26 ; Byte Fill
#_16A1C8: db $00
#_16A1C9: db $04 ; Direct Copy
#_16A1CA: db $6C, $22, $33, $1F, $0F
#_16A1CF: db $22 ; Byte Fill
#_16A1D0: db $00
#_16A1D1: db $86 ; Repeat Fill
#_16A1D2: db $78, $03 ; Repeat Fill bytes
#_16A1D4: db $07 ; Direct Copy
#_16A1D5: db $7F, $FF, $1C, $1F, $03, $07, $03, $03
#_16A1DD: db $83 ; Repeat Fill
#_16A1DE: db $87, $03 ; Repeat Fill bytes
#_16A1E0: db $18 ; Direct Copy
#_16A1E1: db $80, $E3, $1F, $07, $03, $FE, $C0, $7C
#_16A1E9: db $80, $F4, $88, $C8, $30, $F0, $80, $90
#_16A1F1: db $E0, $F0, $00, $E0, $00, $36, $44, $4C
#_16A1F9: db $F8
#_16A1FA: db $22 ; Byte Fill
#_16A1FB: db $F0
#_16A1FC: db $07 ; Direct Copy
#_16A1FD: db $E0, $F8, $F0, $F0, $E0, $F0, $A0, $E0
#_16A205: db $28 ; Byte Fill
#_16A206: db $00
#_16A207: db $03 ; Direct Copy
#_16A208: db $08, $10, $70, $E0
#_16A20C: db $23 ; Byte Fill
#_16A20D: db $00
#_16A20E: db $0C ; Direct Copy
#_16A20F: db $E7, $7E, $C3, $3C, $E7, $5A, $BD, $42
#_16A217: db $5A, $24, $24, $18, $18
#_16A21C: db $22 ; Byte Fill
#_16A21D: db $00
#_16A21E: db $23 ; Byte Fill
#_16A21F: db $FF
#_16A220: db $03 ; Direct Copy
#_16A221: db $7E, $3C, $18, $00
#_16A225: db $83 ; Repeat Fill
#_16A226: db $D8, $02 ; Repeat Fill bytes
#_16A228: db $06 ; Direct Copy
#_16A229: db $3F, $01, $3B, $06, $2E, $1C, $1C
#_16A230: db $24 ; Byte Fill
#_16A231: db $00
#_16A232: db $17 ; Direct Copy
#_16A233: db $FF, $7F, $3F, $3F, $3E, $1C, $00, $00
#_16A23B: db $7F, $3F, $40, $3F, $5F, $3F, $60, $3F
#_16A243: db $E0, $7F, $C0, $7F, $80, $7F, $FF, $00
#_16A24B: db $22 ; Byte Fill
#_16A24C: db $7F
#_16A24D: db $14 ; Direct Copy
#_16A24E: db $60, $E0, $C0, $80, $FF, $FE, $FC, $02
#_16A256: db $FC, $FA, $FC, $06, $FC, $07, $FE, $03
#_16A25E: db $FE, $01, $FE, $FF, $00
#_16A263: db $22 ; Byte Fill
#_16A264: db $FE
#_16A265: db $04 ; Direct Copy
#_16A266: db $06, $07, $03, $01, $FF
#_16A26B: db $84 ; Repeat Fill
#_16A26C: db $90, $03 ; Repeat Fill bytes
#_16A26E: db $07 ; Direct Copy
#_16A26F: db $01, $0F, $06, $09, $07, $0F, $00, $03
#_16A277: db $22 ; Byte Fill
#_16A278: db $00
#_16A279: db $02 ; Direct Copy
#_16A27A: db $10, $10, $0E
#_16A27D: db $22 ; Byte Fill
#_16A27E: db $0F
#_16A27F: db $88 ; Repeat Fill
#_16A280: db $A6, $03 ; Repeat Fill bytes
#_16A282: db $05 ; Direct Copy
#_16A283: db $7F, $FF, $F8, $F8, $80, $C0
#_16A289: db $22 ; Byte Fill
#_16A28A: db $00
#_16A28B: db $E0, $39 ; EXT Direct Copy
#_16A28D: db $3C, $00, $00, $80, $87, $F8, $C0, $00
#_16A295: db $2C, $0B, $3F, $10, $7E, $21, $7C, $33
#_16A29D: db $3F, $18, $1F, $04, $09, $07, $07, $00
#_16A2A5: db $37, $2B, $59, $4B, $27, $1F, $0F, $07
#_16A2AD: db $E4, $C0, $EE, $A8, $EA, $60, $DA, $7C
#_16A2B5: db $8C, $F8, $F8, $00, $E0, $C0, $C0, $00
#_16A2BD: db $FC, $D6, $9E, $82, $04, $F8, $E0, $C0
#_16A2C5: db $36, $15
#_16A2C7: db $85 ; Repeat Fill
#_16A2C8: db $A0, $05 ; Repeat Fill bytes
#_16A2CA: db $1C ; Direct Copy
#_16A2CB: db $6C, $13, $9F, $78, $7F, $0C, $0F, $00
#_16A2D3: db $2B, $37, $2B, $59, $7B, $FF, $7F, $0F
#_16A2DB: db $72, $D0, $F7, $D2, $FD, $BE, $F9, $7E
#_16A2E3: db $DE, $78, $8E, $F0, $F0
#_16A2E8: db $22 ; Byte Fill
#_16A2E9: db $00
#_16A2EA: db $07 ; Direct Copy
#_16A2EB: db $EE, $ED, $C1, $81, $86, $0E, $F0, $00
#_16A2F3: db $FF ; End of GFX 9F

;===================================================================================================

GFX_A0:
#_16A2F4: db $08 ; Direct Copy
#_16A2F5: db $60, $00, $9F, $00, $60, $20, $3B, $18
#_16A2FD: db $1C
#_16A2FE: db $22 ; Byte Fill
#_16A2FF: db $00
#_16A300: db $43 ; Word Fill
#_16A301: db $01, $00 ; Word Fill
#_16A303: db $19 ; Direct Copy
#_16A304: db $60, $FF, $5F, $27, $1C, $00, $01, $01
#_16A30C: db $0C, $00, $F2, $00, $01, $00, $C5, $00
#_16A314: db $9F, $00, $A3, $01, $23, $01, $43, $01
#_16A31C: db $0C, $FE
#_16A31E: db $22 ; Byte Fill
#_16A31F: db $FF
#_16A320: db $08 ; Direct Copy
#_16A321: db $E2, $E2, $C2, $38, $00, $44, $00, $B2
#_16A329: db $10
#_16A32A: db $43 ; Word Fill
#_16A32B: db $5A, $08 ; Word Fill
#_16A32D: db $0D ; Direct Copy
#_16A32E: db $5C, $08, $68, $00, $50, $00, $38, $7C
#_16A336: db $EE, $D6, $D6, $D4, $F8, $F0
#_16A33C: db $2B ; Byte Fill
#_16A33D: db $00
#_16A33E: db $02 ; Direct Copy
#_16A33F: db $38, $00, $44
#_16A342: db $26 ; Byte Fill
#_16A343: db $00
#_16A344: db $E0, $22 ; EXT Direct Copy
#_16A346: db $38, $7C, $07, $00, $18, $00, $27, $01
#_16A34E: db $49, $00, $50, $00, $D0, $40, $D3, $40
#_16A356: db $6C, $20, $07, $1F, $3E, $79, $70, $B0
#_16A35E: db $B3, $5F, $80, $00, $40, $00, $20, $00
#_16A366: db $A0, $80, $C0
#_16A369: db $22 ; Byte Fill
#_16A36A: db $00
#_16A36B: db $0B ; Direct Copy
#_16A36C: db $0C, $00, $97, $00, $80, $C0, $E0, $60
#_16A374: db $C0, $00, $0C, $9F
#_16A378: db $2B ; Byte Fill
#_16A379: db $00
#_16A37A: db $02 ; Direct Copy
#_16A37B: db $E1, $00, $12
#_16A37E: db $26 ; Byte Fill
#_16A37F: db $00
#_16A380: db $08 ; Direct Copy
#_16A381: db $E1, $F3, $0E, $00, $11, $00, $2D, $04
#_16A389: db $2A
#_16A38A: db $44 ; Word Fill
#_16A38B: db $00, $14 ; Word Fill
#_16A38D: db $0D ; Direct Copy
#_16A38E: db $94, $00, $68, $00, $0E, $1F, $3B, $3E
#_16A396: db $1C, $1C, $9C, $F8, $01, $00
#_16A39C: db $43 ; Word Fill
#_16A39D: db $02, $01 ; Word Fill
#_16A39F: db $E0, $2B ; EXT Direct Copy
#_16A3A1: db $0C, $03, $3E, $0B, $6F, $3B, $7F, $3D
#_16A3A9: db $3F, $1F, $01, $03, $03, $0F, $3F, $7F
#_16A3B1: db $7F, $3F, $80, $00, $40, $80, $C0, $00
#_16A3B9: db $30, $C0, $7C, $D0, $F6, $DC, $E6, $FC
#_16A3C1: db $0C, $F8, $80, $C0, $40, $F0, $FC, $FE
#_16A3C9: db $FE, $FC, $01, $00
#_16A3CD: db $43 ; Word Fill
#_16A3CE: db $02, $01 ; Word Fill
#_16A3D0: db $87 ; Repeat Fill
#_16A3D1: db $C6, $00 ; Repeat Fill bytes
#_16A3D3: db $00 ; Direct Copy
#_16A3D4: db $7F
#_16A3D5: db $85 ; Repeat Fill
#_16A3D6: db $CF, $00 ; Repeat Fill bytes
#_16A3D8: db $22 ; Byte Fill
#_16A3D9: db $7F
#_16A3DA: db $8D ; Repeat Fill
#_16A3DB: db $D8, $00 ; Repeat Fill bytes
#_16A3DD: db $00 ; Direct Copy
#_16A3DE: db $0E
#_16A3DF: db $85 ; Repeat Fill
#_16A3E0: db $E7, $00 ; Repeat Fill bytes
#_16A3E2: db $23 ; Byte Fill
#_16A3E3: db $FE
#_16A3E4: db $16 ; Direct Copy
#_16A3E5: db $7F, $FD, $BF, $FB, $DF, $F7, $EF, $EF
#_16A3ED: db $F7, $DF, $FB, $BF, $FD, $7F, $FE, $FE
#_16A3F5: db $FD, $FB, $F7, $EF, $DF, $BF, $7F
#_16A3FC: db $97 ; Repeat Fill
#_16A3FD: db $20, $01 ; Repeat Fill bytes
#_16A3FF: db $F0, $2F ; EXT Repeat Fill
#_16A401: db $20, $01 ; Repeat Fill bytes
#_16A403: db $43 ; Word Fill
#_16A404: db $01, $00 ; Word Fill
#_16A406: db $E0, $61 ; EXT Direct Copy
#_16A408: db $1A, $00, $26, $00, $6C, $20, $70, $30
#_16A410: db $3D, $1C, $1E, $00, $01, $01, $1B, $3F
#_16A418: db $5F, $4F, $23, $1E, $43, $01, $47, $03
#_16A420: db $8E, $06, $9E, $0A, $AE, $02, $D9, $00
#_16A428: db $22, $00, $1C, $00, $C2, $C4, $89, $95
#_16A430: db $AD, $FF, $3E, $1C, $08, $00, $64, $00
#_16A438: db $A5, $00, $EB, $20, $EF, $23, $77, $30
#_16A440: db $31, $10, $1E, $00, $F8, $FC, $BD, $DB
#_16A448: db $DC, $4F, $2F, $1E, $92, $00, $BA, $00
#_16A450: db $B4, $80, $A8, $80, $92, $80, $DD, $C0
#_16A458: db $E2, $60, $7C, $00, $FE, $FE, $7C, $78
#_16A460: db $72, $3F, $9E, $7C, $33, $03, $37, $10
#_16A468: db $68, $20
#_16A46A: db $43 ; Word Fill
#_16A46B: db $E8, $60 ; Word Fill
#_16A46D: db $E0, $2B ; EXT Direct Copy
#_16A46F: db $77, $30, $38, $18, $1F, $00, $3C, $2F
#_16A477: db $58, $98, $98, $4F, $27, $1F, $A2, $00
#_16A47F: db $79, $38, $79, $20, $7B, $20, $AB, $00
#_16A487: db $73, $40, $DE, $8C, $8C, $00, $BF, $47
#_16A48F: db $5F, $5F, $EF, $BF, $52, $8C, $CC, $40
#_16A497: db $C8, $40, $DD, $44
#_16A49B: db $43 ; Word Fill
#_16A49C: db $9D, $84 ; Word Fill
#_16A49E: db $E0, $85 ; EXT Direct Copy
#_16A4A0: db $DC, $C4, $EF, $63, $73, $00, $BF, $BF
#_16A4A8: db $BB, $7B, $7B, $3B, $9C, $73, $28, $00
#_16A4B0: db $A8, $00, $50, $00, $54, $00, $4A, $00
#_16A4B8: db $E2, $60, $7C, $18, $98, $00, $F8, $F8
#_16A4C0: db $70, $74, $7E, $9E, $E4, $98, $3F, $07
#_16A4C8: db $2F, $00, $3F, $18, $1F, $04, $3C, $14
#_16A4D0: db $2E, $1A, $4F, $39, $7F, $3A, $3F, $3F
#_16A4D8: db $25, $19, $3B, $3D, $7E, $7F, $FC, $E0
#_16A4E0: db $F4, $00, $FC, $18, $F8, $20, $3C, $28
#_16A4E8: db $74, $58, $F2, $9C, $FE, $5C, $FC, $FC
#_16A4F0: db $A4, $98, $DC, $BC, $7E, $FE, $3F, $07
#_16A4F8: db $FF, $00, $9F, $08, $BF, $24, $EC, $14
#_16A500: db $66, $3A, $73, $1D, $3B, $0E, $3F, $FF
#_16A508: db $F5, $D9, $FB, $7D, $7E, $3F, $FC, $E0
#_16A510: db $FF, $00, $F9, $10, $FD, $24, $37, $28
#_16A518: db $66, $5C, $CE, $B8, $DC, $70, $FC, $FF
#_16A520: db $AF, $9B, $DF, $BE, $7E, $FC
#_16A526: db $F0, $5F ; EXT Repeat Fill
#_16A528: db $20, $01 ; Repeat Fill bytes
#_16A52A: db $F0, $5F ; EXT Repeat Fill
#_16A52C: db $20, $01 ; Repeat Fill bytes
#_16A52E: db $F0, $5F ; EXT Repeat Fill
#_16A530: db $20, $01 ; Repeat Fill bytes
#_16A532: db $0C ; Direct Copy
#_16A533: db $7F, $02, $67, $22, $79, $36, $3E, $05
#_16A53B: db $3F, $10, $26, $04, $1C
#_16A540: db $22 ; Byte Fill
#_16A541: db $00
#_16A542: db $14 ; Direct Copy
#_16A543: db $7F, $5F, $4F, $3E, $2F, $3A, $1C, $00
#_16A54B: db $FE, $40, $E6, $44, $9E, $6C, $7C, $A0
#_16A553: db $FC, $08, $64, $20, $38
#_16A558: db $22 ; Byte Fill
#_16A559: db $00
#_16A55A: db $E0, $37 ; EXT Direct Copy
#_16A55C: db $FE, $FA, $F2, $7C, $F4, $5C, $38, $00
#_16A564: db $3B, $1E, $66, $3D, $7F, $24, $6E, $09
#_16A56C: db $5F, $04, $7F, $00, $3E, $00, $1C, $00
#_16A574: db $3F, $7E, $7F, $76, $7B, $7F, $3E, $1C
#_16A57C: db $DC, $78, $66, $BC, $FE, $24, $76, $90
#_16A584: db $FA, $20, $FE, $00, $7C, $00, $38, $00
#_16A58C: db $FC, $7E, $FE, $6E, $DE, $FE, $7C, $38
#_16A594: db $F1, $1F ; EXT Repeat Fill
#_16A596: db $A0, $02 ; Repeat Fill bytes
#_16A598: db $F0, $BE ; EXT Repeat Fill
#_16A59A: db $A0, $02 ; Repeat Fill bytes
#_16A59C: db $00 ; Direct Copy
#_16A59D: db $7F
#_16A59E: db $FF ; End of GFX A0

;===================================================================================================

GFX_A1:
#_16A59F: db $E0, $2F ; EXT Direct Copy
#_16A5A1: db $03, $00, $0F, $03, $1C, $0F, $3B, $1C
#_16A5A9: db $77, $38, $6B, $34, $D8, $67, $E4, $7F
#_16A5B1: db $03, $0F, $1F, $3C, $78, $74, $E7, $FF
#_16A5B9: db $C0, $00, $F0, $C0, $F8, $F0, $7C, $D8
#_16A5C1: db $BE, $6C, $7E, $E4, $7F, $C2, $FF, $C2
#_16A5C9: db $C0, $F0, $F8, $FC, $7E, $FE, $FF, $FF
#_16A5D1: db $83 ; Repeat Fill
#_16A5D2: db $00, $00 ; Repeat Fill bytes
#_16A5D4: db $13 ; Direct Copy
#_16A5D5: db $1E, $09, $3F, $10, $66, $39, $44, $3B
#_16A5DD: db $CE, $71, $E4, $7B, $03, $0F, $19, $30
#_16A5E5: db $79, $7B, $F1, $FB
#_16A5E9: db $86 ; Repeat Fill
#_16A5EA: db $18, $00 ; Repeat Fill bytes
#_16A5EC: db $08 ; Direct Copy
#_16A5ED: db $F8, $3E, $F4, $3E, $F0, $7F, $E0, $FF
#_16A5F5: db $E0
#_16A5F6: db $83 ; Repeat Fill
#_16A5F7: db $28, $00 ; Repeat Fill bytes
#_16A5F9: db $03 ; Direct Copy
#_16A5FA: db $FE, $FE, $FF, $FF
#_16A5FE: db $25 ; Byte Fill
#_16A5FF: db $00
#_16A600: db $09 ; Direct Copy
#_16A601: db $03, $00, $06, $03, $0C, $07, $18, $0F
#_16A609: db $11, $0E
#_16A60B: db $22 ; Byte Fill
#_16A60C: db $00
#_16A60D: db $16 ; Direct Copy
#_16A60E: db $03, $07, $0F, $1F, $1E, $0F, $00, $3C
#_16A616: db $07, $E3, $3F, $9F, $FE, $3F, $F8, $4F
#_16A61E: db $BC, $E7, $1E, $F7, $0E, $0F, $3F
#_16A625: db $22 ; Byte Fill
#_16A626: db $FF
#_16A627: db $02 ; Direct Copy
#_16A628: db $BF, $1F, $0F
#_16A62B: db $25 ; Byte Fill
#_16A62C: db $00
#_16A62D: db $85 ; Repeat Fill
#_16A62E: db $66, $00 ; Repeat Fill bytes
#_16A630: db $03 ; Direct Copy
#_16A631: db $19, $0E, $11, $0E
#_16A635: db $22 ; Byte Fill
#_16A636: db $00
#_16A637: db $03 ; Direct Copy
#_16A638: db $03, $07, $0F, $1E
#_16A63C: db $89 ; Repeat Fill
#_16A63D: db $77, $00 ; Repeat Fill bytes
#_16A63F: db $08 ; Direct Copy
#_16A640: db $F0, $9F, $78, $CF, $3C, $DF, $38, $0F
#_16A648: db $3F
#_16A649: db $22 ; Byte Fill
#_16A64A: db $FF
#_16A64B: db $0E ; Direct Copy
#_16A64C: db $7F, $3F, $3F, $F0, $00, $3C, $E0, $C7
#_16A654: db $FC, $F9, $7F, $FE, $0F, $FF, $03
#_16A65B: db $43 ; Word Fill
#_16A65C: db $FF, $00 ; Word Fill
#_16A65E: db $01 ; Direct Copy
#_16A65F: db $F0, $FC
#_16A661: db $25 ; Byte Fill
#_16A662: db $FF
#_16A663: db $25 ; Byte Fill
#_16A664: db $00
#_16A665: db $09 ; Direct Copy
#_16A666: db $80, $00, $40, $80, $20, $C0, $90, $E0
#_16A66E: db $C8, $70
#_16A670: db $22 ; Byte Fill
#_16A671: db $00
#_16A672: db $04 ; Direct Copy
#_16A673: db $80, $C0, $E0, $F0, $F8
#_16A678: db $43 ; Word Fill
#_16A679: db $17, $0A ; Word Fill
#_16A67B: db $E0, $21 ; EXT Direct Copy
#_16A67D: db $3F, $0A, $5D, $16, $7F, $32, $77, $2C
#_16A685: db $F3, $5E, $FF, $5E, $1F, $1F, $3B, $6F
#_16A68D: db $4F, $5F, $BF, $BF, $81, $FF, $7E, $81
#_16A695: db $FF, $00, $7E, $81, $BD, $42, $C3, $3C
#_16A69D: db $FF, $81
#_16A69F: db $22 ; Byte Fill
#_16A6A0: db $FF
#_16A6A1: db $03 ; Direct Copy
#_16A6A2: db $81, $00, $99, $DB
#_16A6A6: db $22 ; Byte Fill
#_16A6A7: db $FF
#_16A6A8: db $12 ; Direct Copy
#_16A6A9: db $00, $00, $0F, $00, $13, $0F, $23, $1F
#_16A6B1: db $2F, $1E, $3F, $11, $1F, $03, $0F, $03
#_16A6B9: db $00, $0F, $1F
#_16A6BC: db $22 ; Byte Fill
#_16A6BD: db $3F
#_16A6BE: db $07 ; Direct Copy
#_16A6BF: db $1F, $0F, $3C, $00, $FF, $3C, $C3, $7E
#_16A6C7: db $43 ; Word Fill
#_16A6C8: db $99, $E7 ; Word Fill
#_16A6CA: db $0A ; Direct Copy
#_16A6CB: db $FF, $C3, $FF, $81, $FF, $7E, $3C, $FF
#_16A6D3: db $FF, $E7, $E7
#_16A6D6: db $22 ; Byte Fill
#_16A6D7: db $FF
#_16A6D8: db $23 ; Byte Fill
#_16A6D9: db $00
#_16A6DA: db $09 ; Direct Copy
#_16A6DB: db $0F, $00, $17, $0E, $2B, $17, $23, $1F
#_16A6E3: db $37, $1F
#_16A6E5: db $83 ; Repeat Fill
#_16A6E6: db $8E, $00 ; Repeat Fill bytes
#_16A6E8: db $05 ; Direct Copy
#_16A6E9: db $0F, $1F, $37, $3F, $3F, $1F
#_16A6EF: db $84 ; Repeat Fill
#_16A6F0: db $38, $01 ; Repeat Fill bytes
#_16A6F2: db $05 ; Direct Copy
#_16A6F3: db $FF, $99, $E7, $18, $E7, $00
#_16A6F9: db $44 ; Word Fill
#_16A6FA: db $FF, $81 ; Word Fill
#_16A6FC: db $84 ; Repeat Fill
#_16A6FD: db $48, $01 ; Repeat Fill bytes
#_16A6FF: db $23 ; Byte Fill
#_16A700: db $FF
#_16A701: db $02 ; Direct Copy
#_16A702: db $7F, $FF, $4E
#_16A705: db $43 ; Word Fill
#_16A706: db $7F, $20 ; Word Fill
#_16A708: db $13 ; Direct Copy
#_16A709: db $3F, $10, $1F, $0C, $0F, $03, $03, $00
#_16A711: db $FF, $FF, $7F, $7F, $3F, $1F, $0F, $03
#_16A719: db $FF, $82, $FF, $02
#_16A71D: db $43 ; Word Fill
#_16A71E: db $FE, $04 ; Word Fill
#_16A720: db $1D ; Direct Copy
#_16A721: db $FC, $08, $F8, $30, $F0, $C0, $C0, $00
#_16A729: db $FF, $FF, $FE, $FE, $FC, $F8, $F0, $C0
#_16A731: db $F1, $7F, $FF, $5F, $7F, $0E, $7F, $00
#_16A739: db $3F, $00, $1F, $00, $0F, $00
#_16A73F: db $8A ; Repeat Fill
#_16A740: db $8E, $01 ; Repeat Fill bytes
#_16A742: db $02 ; Direct Copy
#_16A743: db $C0, $FF, $80
#_16A746: db $43 ; Word Fill
#_16A747: db $FE, $00 ; Word Fill
#_16A749: db $05 ; Direct Copy
#_16A74A: db $FC, $00, $F8, $00, $F0, $00
#_16A750: db $89 ; Repeat Fill
#_16A751: db $A6, $01 ; Repeat Fill bytes
#_16A753: db $0B ; Direct Copy
#_16A754: db $31, $1E, $24, $1F, $2E, $1F, $6D, $3E
#_16A75C: db $7E, $3B, $7F, $31
#_16A760: db $43 ; Word Fill
#_16A761: db $5F, $30 ; Word Fill
#_16A763: db $03 ; Direct Copy
#_16A764: db $3E, $3F, $3F, $7E
#_16A768: db $23 ; Byte Fill
#_16A769: db $7F
#_16A76A: db $09 ; Direct Copy
#_16A76B: db $E7, $1E, $CF, $3C, $1F, $F8, $7F, $F0
#_16A773: db $FF, $80
#_16A775: db $45 ; Word Fill
#_16A776: db $FF, $00 ; Word Fill
#_16A778: db $01 ; Direct Copy
#_16A779: db $1F, $3F
#_16A77B: db $25 ; Byte Fill
#_16A77C: db $FF
#_16A77D: db $14 ; Direct Copy
#_16A77E: db $33, $1C, $27, $1C, $6B, $3C, $4A, $3D
#_16A786: db $5A, $35, $5D, $37, $5F, $32, $5F, $30
#_16A78E: db $3C, $3C, $7C, $7D, $7D
#_16A793: db $22 ; Byte Fill
#_16A794: db $7F
#_16A795: db $01 ; Direct Copy
#_16A796: db $BF, $70
#_16A798: db $43 ; Word Fill
#_16A799: db $7F, $E0 ; Word Fill
#_16A79B: db $83 ; Repeat Fill
#_16A79C: db $C8, $01 ; Repeat Fill bytes
#_16A79E: db $45 ; Word Fill
#_16A79F: db $FF, $00 ; Word Fill
#_16A7A1: db $00 ; Direct Copy
#_16A7A2: db $7F
#_16A7A3: db $27 ; Byte Fill
#_16A7A4: db $FF
#_16A7A5: db $4E ; Word Fill
#_16A7A6: db $00, $FF ; Word Fill
#_16A7A8: db $27 ; Byte Fill
#_16A7A9: db $FF
#_16A7AA: db $07 ; Direct Copy
#_16A7AB: db $E8, $30, $F4, $38, $F4, $18, $F6, $18
#_16A7B3: db $43 ; Word Fill
#_16A7B4: db $FE, $0C ; Word Fill
#_16A7B6: db $43 ; Word Fill
#_16A7B7: db $FA, $0C ; Word Fill
#_16A7B9: db $02 ; Direct Copy
#_16A7BA: db $F8, $FC, $FC
#_16A7BD: db $24 ; Byte Fill
#_16A7BE: db $FE
#_16A7BF: db $08 ; Direct Copy
#_16A7C0: db $FF, $50, $79, $2E, $3D, $0E, $0F, $00
#_16A7C8: db $03
#_16A7C9: db $26 ; Byte Fill
#_16A7CA: db $00
#_16A7CB: db $04 ; Direct Copy
#_16A7CC: db $BF, $5F, $3F, $0F, $03
#_16A7D1: db $22 ; Byte Fill
#_16A7D2: db $00
#_16A7D3: db $0C ; Direct Copy
#_16A7D4: db $C3, $7E, $E7, $3C, $FF, $42, $EF, $2D
#_16A7DC: db $FD, $03, $04, $03, $03
#_16A7E1: db $22 ; Byte Fill
#_16A7E2: db $00
#_16A7E3: db $07 ; Direct Copy
#_16A7E4: db $FF, $FF, $BD, $D3, $FF, $07, $03, $00
#_16A7EC: db $43 ; Word Fill
#_16A7ED: db $17, $0A ; Word Fill
#_16A7EF: db $F0, $21 ; EXT Repeat Fill
#_16A7F1: db $F4, $00 ; Repeat Fill bytes
#_16A7F3: db $22 ; Byte Fill
#_16A7F4: db $FF
#_16A7F5: db $83 ; Repeat Fill
#_16A7F6: db $19, $01 ; Repeat Fill bytes
#_16A7F8: db $22 ; Byte Fill
#_16A7F9: db $FF
#_16A7FA: db $E0, $27 ; EXT Direct Copy
#_16A7FC: db $1F, $06, $1F, $0B, $2D, $17, $27, $1A
#_16A804: db $1F, $05, $37, $16, $27, $07, $6F, $2F
#_16A80C: db $1F, $1F, $2F, $26, $1B, $29, $38, $50
#_16A814: db $E7, $FF, $FF, $7E, $FF, $E7, $7E, $FF
#_16A81C: db $99, $E7, $FF, $7E, $FF, $81, $7E, $7E
#_16A824: db $23 ; Byte Fill
#_16A825: db $FF
#_16A826: db $03 ; Direct Copy
#_16A827: db $E7, $FF, $7E, $81
#_16A82B: db $88 ; Repeat Fill
#_16A82C: db $D0, $02 ; Repeat Fill bytes
#_16A82E: db $06 ; Direct Copy
#_16A82F: db $01, $17, $06, $37, $07, $2F, $13
#_16A836: db $83 ; Repeat Fill
#_16A837: db $E0, $02 ; Repeat Fill bytes
#_16A839: db $03 ; Direct Copy
#_16A83A: db $1F, $19, $38, $2C
#_16A83E: db $8F ; Repeat Fill
#_16A83F: db $E8, $02 ; Repeat Fill bytes
#_16A841: db $23 ; Byte Fill
#_16A842: db $FF
#_16A843: db $83 ; Repeat Fill
#_16A844: db $FC, $02 ; Repeat Fill bytes
#_16A846: db $92 ; Repeat Fill
#_16A847: db $20, $01 ; Repeat Fill bytes
#_16A849: db $22 ; Byte Fill
#_16A84A: db $3F
#_16A84B: db $87 ; Repeat Fill
#_16A84C: db $36, $01 ; Repeat Fill bytes
#_16A84E: db $43 ; Word Fill
#_16A84F: db $99, $E7 ; Word Fill
#_16A851: db $8A ; Repeat Fill
#_16A852: db $42, $01 ; Repeat Fill bytes
#_16A854: db $22 ; Byte Fill
#_16A855: db $FF
#_16A856: db $92 ; Repeat Fill
#_16A857: db $20, $01 ; Repeat Fill bytes
#_16A859: db $22 ; Byte Fill
#_16A85A: db $3F
#_16A85B: db $87 ; Repeat Fill
#_16A85C: db $36, $01 ; Repeat Fill bytes
#_16A85E: db $43 ; Word Fill
#_16A85F: db $99, $E7 ; Word Fill
#_16A861: db $8A ; Repeat Fill
#_16A862: db $42, $01 ; Repeat Fill bytes
#_16A864: db $22 ; Byte Fill
#_16A865: db $FF
#_16A866: db $2B ; Byte Fill
#_16A867: db $00
#_16A868: db $03 ; Direct Copy
#_16A869: db $1F, $04, $2F, $1D
#_16A86D: db $25 ; Byte Fill
#_16A86E: db $00
#_16A86F: db $01 ; Direct Copy
#_16A870: db $1F, $3F
#_16A872: db $27 ; Byte Fill
#_16A873: db $00
#_16A874: db $07 ; Direct Copy
#_16A875: db $02, $00, $1E, $04, $EC, $08, $4C, $88
#_16A87D: db $23 ; Byte Fill
#_16A87E: db $00
#_16A87F: db $03 ; Direct Copy
#_16A880: db $02, $1A, $F4, $F4
#_16A884: db $2D ; Byte Fill
#_16A885: db $00
#_16A886: db $01 ; Direct Copy
#_16A887: db $1F, $04
#_16A889: db $26 ; Byte Fill
#_16A88A: db $00
#_16A88B: db $00 ; Direct Copy
#_16A88C: db $1F
#_16A88D: db $29 ; Byte Fill
#_16A88E: db $00
#_16A88F: db $05 ; Direct Copy
#_16A890: db $06, $00, $1E, $04, $EE, $0C
#_16A896: db $24 ; Byte Fill
#_16A897: db $00
#_16A898: db $1F ; Direct Copy
#_16A899: db $06, $1A, $F2, $01, $00, $02, $01, $07
#_16A8A1: db $00, $1B, $07, $34, $1B, $23, $1E, $72
#_16A8A9: db $1D, $F7, $4C, $01, $03, $07, $1F, $3B
#_16A8B1: db $3F, $7F, $FF, $C0, $00, $E0, $C0, $E0
#_16A8B9: db $84 ; Repeat Fill
#_16A8BA: db $19, $00 ; Repeat Fill bytes
#_16A8BC: db $1A ; Direct Copy
#_16A8BD: db $F8, $30, $3C, $D8, $3C, $E8, $C0, $E0
#_16A8C5: db $E0, $F0, $F8, $F8, $FC, $FC, $FF, $50
#_16A8CD: db $F9, $6E, $7D, $2E, $3F, $10, $1F, $01
#_16A8D5: db $07, $03, $03
#_16A8D8: db $22 ; Byte Fill
#_16A8D9: db $00
#_16A8DA: db $06 ; Direct Copy
#_16A8DB: db $BF, $9F, $5F, $2F, $1F, $07, $03
#_16A8E2: db $88 ; Repeat Fill
#_16A8E3: db $87, $02 ; Repeat Fill bytes
#_16A8E5: db $04 ; Direct Copy
#_16A8E6: db $FF, $C3, $24, $C3, $C3
#_16A8EB: db $22 ; Byte Fill
#_16A8EC: db $00
#_16A8ED: db $84 ; Repeat Fill
#_16A8EE: db $98, $02 ; Repeat Fill bytes
#_16A8F0: db $0D ; Direct Copy
#_16A8F1: db $E7, $C3, $00, $5F, $1B, $7D, $31, $3B
#_16A8F9: db $03, $0B, $03, $07, $03, $03
#_16A8FF: db $24 ; Byte Fill
#_16A900: db $00
#_16A901: db $14 ; Direct Copy
#_16A902: db $64, $4E, $3C, $0C, $04, $03, $00, $00
#_16A90A: db $18, $18, $81, $81, $C3, $C3, $F1, $B0
#_16A912: db $F5, $B4, $FB, $38, $7E
#_16A917: db $22 ; Byte Fill
#_16A918: db $00
#_16A919: db $09 ; Direct Copy
#_16A91A: db $E7, $7E, $3C, $4F, $4B, $C7, $7E, $00
#_16A922: db $27, $1B
#_16A924: db $43 ; Word Fill
#_16A925: db $13, $0D ; Word Fill
#_16A927: db $06 ; Direct Copy
#_16A928: db $09, $06, $07, $00, $07, $03, $03
#_16A92F: db $22 ; Byte Fill
#_16A930: db $00
#_16A931: db $09 ; Direct Copy
#_16A932: db $24, $12, $12, $09, $07, $07, $03, $00
#_16A93A: db $98, $98
#_16A93C: db $23 ; Byte Fill
#_16A93D: db $C1
#_16A93E: db $06 ; Direct Copy
#_16A93F: db $E1, $61, $F3, $72, $FF, $9E, $FF
#_16A946: db $22 ; Byte Fill
#_16A947: db $00
#_16A948: db $07 ; Direct Copy
#_16A949: db $67, $3E, $3E, $9E, $8D, $E1, $FF, $00
#_16A951: db $43 ; Word Fill
#_16A952: db $17, $0A ; Word Fill
#_16A954: db $93 ; Repeat Fill
#_16A955: db $F4, $00 ; Repeat Fill bytes
#_16A957: db $00 ; Direct Copy
#_16A958: db $C3
#_16A959: db $44 ; Word Fill
#_16A95A: db $FF, $81 ; Word Fill
#_16A95C: db $00 ; Direct Copy
#_16A95D: db $C3
#_16A95E: db $83 ; Repeat Fill
#_16A95F: db $E9, $02 ; Repeat Fill bytes
#_16A961: db $02 ; Direct Copy
#_16A962: db $3C, $FF, $81
#_16A965: db $29 ; Byte Fill
#_16A966: db $FF
#_16A967: db $43 ; Word Fill
#_16A968: db $17, $0A ; Word Fill
#_16A96A: db $95 ; Repeat Fill
#_16A96B: db $B4, $04 ; Repeat Fill bytes
#_16A96D: db $84 ; Repeat Fill
#_16A96E: db $F2, $02 ; Repeat Fill bytes
#_16A970: db $86 ; Repeat Fill
#_16A971: db $0F, $01 ; Repeat Fill bytes
#_16A973: db $24 ; Byte Fill
#_16A974: db $FF
#_16A975: db $01 ; Direct Copy
#_16A976: db $99, $DB
#_16A978: db $22 ; Byte Fill
#_16A979: db $FF
#_16A97A: db $E0, $31 ; EXT Direct Copy
#_16A97C: db $2E, $1B, $3F, $18, $19, $07, $2B, $07
#_16A984: db $3F, $10, $1F, $04, $09, $07, $07, $00
#_16A98C: db $3F, $3F, $1F, $3F, $2F, $1F, $0F, $07
#_16A994: db $7A, $B8, $F2, $D0, $FA, $18, $FE, $1C
#_16A99C: db $FE, $CC, $FE, $04, $E4, $C0, $C0, $00
#_16A9A4: db $C6, $EE, $E6, $E2, $32, $FA, $E4, $C0
#_16A9AC: db $2F, $1D
#_16A9AE: db $86 ; Repeat Fill
#_16A9AF: db $10, $05 ; Repeat Fill bytes
#_16A9B1: db $06 ; Direct Copy
#_16A9B2: db $17, $5F, $38, $3F, $0C, $0F, $00
#_16A9B9: db $22 ; Byte Fill
#_16A9BA: db $3F
#_16A9BB: db $11 ; Direct Copy
#_16A9BC: db $1F, $3F, $7F, $3F, $0F, $4A, $88, $7B
#_16A9C4: db $DA, $FD, $BC, $FB, $3A, $FE, $1C, $FC
#_16A9CC: db $C0, $F8
#_16A9CE: db $22 ; Byte Fill
#_16A9CF: db $00
#_16A9D0: db $14 ; Direct Copy
#_16A9D1: db $F6, $E5, $C3, $C5, $E2, $3C, $F8, $00
#_16A9D9: db $BF, $64, $DF, $34, $EF, $1A, $EF, $18
#_16A9E1: db $EF, $1A, $6F, $13, $1B
#_16A9E6: db $22 ; Byte Fill
#_16A9E7: db $00
#_16A9E8: db $14 ; Direct Copy
#_16A9E9: db $FF, $BF, $9F, $DF, $DE, $7F, $1B, $00
#_16A9F1: db $7C, $E8, $FE, $D8, $FE, $34, $F6, $CC
#_16A9F9: db $3C, $F8, $F8, $E0, $E0
#_16A9FE: db $22 ; Byte Fill
#_16A9FF: db $00
#_16AA00: db $00 ; Direct Copy
#_16AA01: db $FC
#_16AA02: db $22 ; Byte Fill
#_16AA03: db $FE
#_16AA04: db $03 ; Direct Copy
#_16AA05: db $FC, $F8, $E0, $00
#_16AA09: db $86 ; Repeat Fill
#_16AA0A: db $20, $04 ; Repeat Fill bytes
#_16AA0C: db $05 ; Direct Copy
#_16AA0D: db $11, $1F, $04, $0E, $07, $07
#_16AA13: db $22 ; Byte Fill
#_16AA14: db $00
#_16AA15: db $84 ; Repeat Fill
#_16AA16: db $30, $04 ; Repeat Fill bytes
#_16AA18: db $01 ; Direct Copy
#_16AA19: db $0F, $07
#_16AA1B: db $84 ; Repeat Fill
#_16AA1C: db $4F, $04 ; Repeat Fill bytes
#_16AA1E: db $08 ; Direct Copy
#_16AA1F: db $7B, $33, $3B, $12, $1F, $0F, $0F, $03
#_16AA27: db $03
#_16AA28: db $22 ; Byte Fill
#_16AA29: db $00
#_16AA2A: db $06 ; Direct Copy
#_16AA2B: db $64, $4E, $4C, $2D, $10, $0C, $03
#_16AA32: db $E4, $30 ; EXT Byte Fill
#_16AA34: db $00
#_16AA35: db $FF ; End of GFX A1

;===================================================================================================

GFX_A2:
#_16AA36: db $E0, $2F ; EXT Direct Copy
#_16AA38: db $00, $00, $02, $00, $0F, $00, $1E, $00
#_16AA40: db $3C, $00, $34, $00, $57, $00, $5B, $01
#_16AA48: db $00, $02, $0D, $12, $24, $2C, $6D, $67
#_16AA50: db $00, $00, $40, $00, $F0, $00, $78, $00
#_16AA58: db $3C, $00, $2C, $00, $EA, $00, $DA, $80
#_16AA60: db $00, $40, $B0, $48, $24, $34, $B6, $E6
#_16AA68: db $22 ; Byte Fill
#_16AA69: db $00
#_16AA6A: db $0C ; Direct Copy
#_16AA6B: db $01, $00, $03, $00, $07, $00, $0F, $00
#_16AA73: db $1F, $00, $3F, $0F, $7F
#_16AA78: db $62 ; Increasing Fill
#_16AA79: db $00 ; Increasing Fill Start
#_16AA7A: db $0D ; Direct Copy
#_16AA7B: db $04, $08, $10, $20, $4F, $00, $7F, $05
#_16AA83: db $FF, $13, $FF, $7E, $FF, $CC
#_16AA89: db $44 ; Word Fill
#_16AA8A: db $FF, $40 ; Word Fill
#_16AA8C: db $0C ; Direct Copy
#_16AA8D: db $CE, $FF, $70, $85, $13, $7F, $FF, $7F
#_16AA95: db $7F, $FF, $00, $00, $01
#_16AA9A: db $62 ; Increasing Fill
#_16AA9B: db $01 ; Increasing Fill Start
#_16AA9C: db $09 ; Direct Copy
#_16AA9D: db $06, $07, $0E, $0F, $15, $1F, $29, $3F
#_16AAA5: db $51, $7F
#_16AAA7: db $62 ; Increasing Fill
#_16AAA8: db $00 ; Increasing Fill Start
#_16AAA9: db $E0, $30 ; EXT Direct Copy
#_16AAAB: db $07, $0F, $17, $2F, $5F, $71, $7F, $80
#_16AAB3: db $FF, $8C, $FF, $70, $FF, $41, $FF, $87
#_16AABB: db $FF, $1E, $FF, $10, $FF, $71, $8C, $FC
#_16AAC3: db $F0, $C1, $87, $1F, $1F, $03, $00, $3F
#_16AACB: db $01, $4F, $30, $4F, $38, $9F, $78, $BF
#_16AAD3: db $74, $BD, $67, $BC, $63, $03, $3B, $79
#_16AADB: db $7D
#_16AADC: db $23 ; Byte Fill
#_16AADD: db $FF
#_16AADE: db $13 ; Direct Copy
#_16AADF: db $C0, $00, $FC, $80, $F2, $0C, $F2, $1C
#_16AAE7: db $F9, $1E, $FD, $2E, $BD, $E6, $3D, $C6
#_16AAEF: db $C0, $DC, $9E, $BE
#_16AAF3: db $23 ; Byte Fill
#_16AAF4: db $FF
#_16AAF5: db $23 ; Byte Fill
#_16AAF6: db $00
#_16AAF7: db $05 ; Direct Copy
#_16AAF8: db $38, $00, $4F, $30, $8F, $78
#_16AAFE: db $83 ; Repeat Fill
#_16AAFF: db $98, $00 ; Repeat Fill bytes
#_16AB01: db $09 ; Direct Copy
#_16AB02: db $BF, $60, $00, $00, $38, $7F, $FD, $FD
#_16AB0A: db $FF, $FF
#_16AB0C: db $23 ; Byte Fill
#_16AB0D: db $00
#_16AB0E: db $05 ; Direct Copy
#_16AB0F: db $1C, $00, $F2, $1C, $F1, $1E
#_16AB15: db $83 ; Repeat Fill
#_16AB16: db $B0, $00 ; Repeat Fill bytes
#_16AB18: db $0B ; Direct Copy
#_16AB19: db $FD, $06, $00, $00, $1C, $FE, $BF, $BF
#_16AB21: db $FF, $FF, $07, $00
#_16AB25: db $44 ; Word Fill
#_16AB26: db $3F, $03 ; Word Fill
#_16AB28: db $12 ; Direct Copy
#_16AB29: db $17, $7F, $3B, $77, $3C, $FE, $5F, $DF
#_16AB31: db $67, $07, $3F, $3C, $38, $7C, $7F, $FF
#_16AB39: db $FF, $E0, $00
#_16AB3C: db $43 ; Word Fill
#_16AB3D: db $FC, $C0 ; Word Fill
#_16AB3F: db $E0, $28 ; EXT Direct Copy
#_16AB41: db $DC, $C8, $AE, $9C, $D6, $2C, $3F, $C6
#_16AB49: db $13, $EE, $E0, $FC, $3C, $3C, $7E, $EE
#_16AB51: db $C7, $EF, $07, $00, $3F, $01, $3F, $03
#_16AB59: db $0F, $00, $1F, $03, $3F, $1D, $77, $3E
#_16AB61: db $BE, $5F, $07, $3F, $3F, $0F, $1C, $3E
#_16AB69: db $7F
#_16AB6A: db $83 ; Repeat Fill
#_16AB6B: db $07, $01 ; Repeat Fill bytes
#_16AB6D: db $1E ; Direct Copy
#_16AB6E: db $80, $7C, $C0, $F0, $00, $B8, $80, $4C
#_16AB76: db $38, $96, $6C, $3F, $C6, $E0, $FC, $FC
#_16AB7E: db $F0, $78, $FC, $EE, $C7, $1F, $00, $3D
#_16AB86: db $1E, $7A, $3D, $75, $3A, $7F, $27
#_16AB8D: db $45 ; Word Fill
#_16AB8E: db $FE, $43 ; Word Fill
#_16AB90: db $01 ; Direct Copy
#_16AB91: db $1F, $3F
#_16AB93: db $22 ; Byte Fill
#_16AB94: db $7F
#_16AB95: db $22 ; Byte Fill
#_16AB96: db $FF
#_16AB97: db $08 ; Direct Copy
#_16AB98: db $80, $00, $40, $80, $E6, $40, $F6, $E0
#_16ABA0: db $BE
#_16ABA1: db $43 ; Word Fill
#_16ABA2: db $E0, $FF ; Word Fill
#_16ABA4: db $E0, $89 ; EXT Direct Copy
#_16ABA6: db $D4, $7F, $B6, $80, $C0, $E6, $F6, $FE
#_16ABAE: db $FF, $EF, $CF, $21, $00, $33, $00, $2F
#_16ABB6: db $12, $26, $1B, $1F, $01, $0F, $06, $07
#_16ABBE: db $03, $03, $00, $3F, $3F, $2F, $27, $1F
#_16ABC6: db $0F, $07, $03, $84, $00, $CC, $00, $F4
#_16ABCE: db $48, $64, $D8, $78, $80, $B0, $60, $20
#_16ABD6: db $C0, $C0, $00, $FC, $FC, $F4, $E4, $F8
#_16ABDE: db $F0, $E0, $C0, $08, $7F, $18, $FF, $08
#_16ABE6: db $FF, $28, $FF, $08, $FF, $58, $FF, $31
#_16ABEE: db $FF, $23, $FF, $4F, $9F, $8F, $AF, $0F
#_16ABF6: db $5F, $3F, $3F, $0F, $FF, $09, $FF, $F8
#_16ABFE: db $FF, $C0, $FF, $46, $FF, $E7, $FF, $C6
#_16AC06: db $FF, $1C, $FF, $FF, $F9, $F8, $C0, $C6
#_16AC0E: db $E7, $C7, $1F, $51, $7F, $9E, $FF, $B1
#_16AC16: db $FF, $D1, $FF, $A1, $FF, $43, $FF, $CB
#_16AC1E: db $FF, $C1, $FF, $5F, $BE, $B1, $F1, $E1
#_16AC26: db $43, $EB, $F1, $90, $FF, $11, $FF, $F3
#_16AC2E: db $FF, $03
#_16AC30: db $44 ; Word Fill
#_16AC31: db $FF, $3E ; Word Fill
#_16AC33: db $E0, $29 ; EXT Direct Copy
#_16AC35: db $30, $FF, $98, $FF, $9F, $1F, $FF, $FF
#_16AC3D: db $FE, $FE, $F0, $F8, $FE, $43, $FE, $4B
#_16AC45: db $7F, $1D, $67, $25, $77, $35, $3F, $1E
#_16AC4D: db $1F, $07, $07, $00, $FF, $F7, $63, $5B
#_16AC55: db $4B, $21, $18, $07, $7F, $C2, $7F, $D2
#_16AC5D: db $EE, $A8
#_16AC5F: db $43 ; Word Fill
#_16AC60: db $CC, $88 ; Word Fill
#_16AC62: db $12 ; Direct Copy
#_16AC63: db $B8, $30, $F0, $C0, $C0, $00, $FF, $EF
#_16AC6B: db $D6, $F4, $F4, $C8, $30, $C0, $BF, $43
#_16AC73: db $FD, $47, $FC
#_16AC76: db $43 ; Word Fill
#_16AC77: db $17, $FE ; Word Fill
#_16AC79: db $E0, $31 ; EXT Direct Copy
#_16AC7B: db $3B, $77, $35, $3F, $0D, $0F, $00, $FF
#_16AC83: db $FF, $EF, $EF, $C7, $4B, $33, $0F, $FD
#_16AC8B: db $C6, $BF, $E2, $3F, $EA, $7F, $E8, $7F
#_16AC93: db $DC, $EE, $AC, $FC, $B0, $F0, $00, $FF
#_16AC9B: db $FF, $F7, $F7, $E3, $D2, $CC, $F0, $E7
#_16ACA3: db $5F, $DF, $64, $E7, $78, $FF, $7C, $7F
#_16ACAB: db $3B, $3B
#_16ACAD: db $24 ; Byte Fill
#_16ACAE: db $00
#_16ACAF: db $23 ; Byte Fill
#_16ACB0: db $FF
#_16ACB1: db $0E ; Direct Copy
#_16ACB2: db $7F, $3B, $00, $00, $F3, $FE, $F3, $3E
#_16ACBA: db $F3, $1E, $E7, $3E, $FE, $DC, $DC
#_16ACC1: db $24 ; Byte Fill
#_16ACC2: db $00
#_16ACC3: db $23 ; Byte Fill
#_16ACC4: db $FF
#_16ACC5: db $13 ; Direct Copy
#_16ACC6: db $FE, $DC, $00, $00, $D8, $2F, $AF, $5F
#_16ACCE: db $DF, $68, $EF, $70, $FF, $70, $7F, $38
#_16ACD6: db $3F, $07, $07, $00
#_16ACDA: db $24 ; Byte Fill
#_16ACDB: db $FF
#_16ACDC: db $13 ; Direct Copy
#_16ACDD: db $7F, $3F, $07, $13, $EE, $E3, $FE, $FB
#_16ACE5: db $1E, $FB, $0E, $FF, $0E, $FE, $1C, $FC
#_16ACED: db $E0, $E0, $00, $EF
#_16ACF1: db $23 ; Byte Fill
#_16ACF2: db $FF
#_16ACF3: db $02 ; Direct Copy
#_16ACF4: db $FE, $FC, $E0
#_16ACF7: db $45 ; Word Fill
#_16ACF8: db $FE, $43 ; Word Fill
#_16ACFA: db $09 ; Direct Copy
#_16ACFB: db $7D, $26, $7C, $3F, $70, $3F, $3F, $1F
#_16AD03: db $1F, $00
#_16AD05: db $22 ; Byte Fill
#_16AD06: db $FF
#_16AD07: db $1F ; Direct Copy
#_16AD08: db $7E, $7F, $7F, $3F, $1F, $5B, $96, $2F
#_16AD10: db $C4, $9F, $60, $DE, $20, $B6, $60, $E6
#_16AD18: db $C0, $C0, $80, $80, $00, $EF, $FF, $7F
#_16AD20: db $3E, $76, $E6, $C0, $80, $00, $00, $20
#_16AD28: db $44 ; Word Fill
#_16AD29: db $00, $70 ; Word Fill
#_16AD2B: db $43 ; Word Fill
#_16AD2C: db $F0, $00 ; Word Fill
#_16AD2E: db $0E ; Direct Copy
#_16AD2F: db $B8, $00, $B7, $00, $00, $20, $50, $50
#_16AD37: db $90, $90, $C8, $CD, $00, $00, $04
#_16AD3E: db $44 ; Word Fill
#_16AD3F: db $00, $0E ; Word Fill
#_16AD41: db $43 ; Word Fill
#_16AD42: db $0F, $00 ; Word Fill
#_16AD44: db $0B ; Direct Copy
#_16AD45: db $1D, $00, $ED, $00, $00, $04, $0A, $0A
#_16AD4D: db $09, $09, $13, $B3
#_16AD51: db $83 ; Repeat Fill
#_16AD52: db $60, $00 ; Repeat Fill bytes
#_16AD54: db $E0, $26 ; EXT Direct Copy
#_16AD56: db $03, $03, $05, $07, $09, $0F, $1E, $1F
#_16AD5E: db $2E, $3F, $7E, $7F, $00, $01, $03, $05
#_16AD66: db $09, $1F, $2F, $7F, $70, $7F, $8F, $FF
#_16AD6E: db $7D, $FF, $F0, $FF, $C0, $FF, $07, $FF
#_16AD76: db $38, $FF, $20, $FF, $70, $8F, $7F
#_16AD7D: db $22 ; Byte Fill
#_16AD7E: db $FF
#_16AD7F: db $01 ; Direct Copy
#_16AD80: db $F8, $E0
#_16AD82: db $23 ; Byte Fill
#_16AD83: db $00
#_16AD84: db $00 ; Direct Copy
#_16AD85: db $03
#_16AD86: db $83 ; Repeat Fill
#_16AD87: db $38, $00 ; Repeat Fill bytes
#_16AD89: db $02 ; Direct Copy
#_16AD8A: db $01, $1F, $03
#_16AD8D: db $43 ; Word Fill
#_16AD8E: db $3F, $07 ; Word Fill
#_16AD90: db $07 ; Direct Copy
#_16AD91: db $00, $00, $03, $0F, $1F, $1F, $3F, $3F
#_16AD99: db $23 ; Byte Fill
#_16AD9A: db $00
#_16AD9B: db $1D ; Direct Copy
#_16AD9C: db $C0, $00, $F0, $00, $F8, $E0, $98, $F0
#_16ADA4: db $2C, $D8, $0C, $F8, $00, $00, $C0, $F0
#_16ADAC: db $F8, $F8, $DC, $FC, $0F, $00, $17, $08
#_16ADB4: db $2F, $1C, $3F, $00, $77, $2C
#_16ADBA: db $43 ; Word Fill
#_16ADBB: db $67, $1E ; Word Fill
#_16ADBD: db $05 ; Direct Copy
#_16ADBE: db $2F, $1C, $0F, $1F, $3F, $3E
#_16ADC4: db $83 ; Repeat Fill
#_16ADC5: db $E3, $02 ; Repeat Fill bytes
#_16ADC7: db $09 ; Direct Copy
#_16ADC8: db $F0, $00, $E8, $10, $F4, $38, $FC, $00
#_16ADD0: db $EE, $34
#_16ADD2: db $43 ; Word Fill
#_16ADD3: db $E6, $78 ; Word Fill
#_16ADD5: db $05 ; Direct Copy
#_16ADD6: db $F4, $38, $70, $78, $FC, $FC
#_16ADDC: db $22 ; Byte Fill
#_16ADDD: db $FE
#_16ADDE: db $0E ; Direct Copy
#_16ADDF: db $FC, $00, $00, $0E, $00, $11, $0E, $25
#_16ADE7: db $1E, $2A, $1D, $55, $2B, $26, $1B
#_16ADEE: db $22 ; Byte Fill
#_16ADEF: db $00
#_16ADF0: db $05 ; Direct Copy
#_16ADF1: db $0E, $1D, $3D, $3B, $77, $26
#_16ADF7: db $27 ; Byte Fill
#_16ADF8: db $00
#_16ADF9: db $08 ; Direct Copy
#_16ADFA: db $06, $02, $0E, $08, $19, $01, $1F, $02
#_16AE02: db $0B
#_16AE03: db $22 ; Byte Fill
#_16AE04: db $00
#_16AE05: db $04 ; Direct Copy
#_16AE06: db $06, $0E, $19, $1F, $0A
#_16AE0B: db $2B ; Byte Fill
#_16AE0C: db $00
#_16AE0D: db $00 ; Direct Copy
#_16AE0E: db $01
#_16AE0F: db $62 ; Increasing Fill
#_16AE10: db $01 ; Increasing Fill Start
#_16AE11: db $25 ; Byte Fill
#_16AE12: db $00
#_16AE13: db $01 ; Direct Copy
#_16AE14: db $01, $03
#_16AE16: db $23 ; Byte Fill
#_16AE17: db $00
#_16AE18: db $06 ; Direct Copy
#_16AE19: db $03, $03, $1C, $1F, $60, $7F, $C7
#_16AE20: db $84 ; Repeat Fill
#_16AE21: db $53, $03 ; Repeat Fill bytes
#_16AE23: db $07 ; Direct Copy
#_16AE24: db $00, $00, $03, $1F, $7F, $FF, $F8, $E0
#_16AE2C: db $E4, $2F ; EXT Byte Fill
#_16AE2E: db $00
#_16AE2F: db $05 ; Direct Copy
#_16AE30: db $0F, $00, $1F, $0F, $3D, $1E
#_16AE36: db $43 ; Word Fill
#_16AE37: db $3A, $1D ; Word Fill
#_16AE39: db $01 ; Direct Copy
#_16AE3A: db $1F, $0B
#_16AE3C: db $43 ; Word Fill
#_16AE3D: db $3F, $11 ; Word Fill
#_16AE3F: db $01 ; Direct Copy
#_16AE40: db $0F, $1F
#_16AE42: db $22 ; Byte Fill
#_16AE43: db $3F
#_16AE44: db $14 ; Direct Copy
#_16AE45: db $1F, $3F, $3F, $C0, $00, $F0, $C0, $7E
#_16AE4D: db $B0, $FE, $78, $DE, $70, $FF, $E8, $FF
#_16AE55: db $DE, $BF, $DE, $C0, $F0
#_16AE5A: db $22 ; Byte Fill
#_16AE5B: db $FE
#_16AE5C: db $0E ; Direct Copy
#_16AE5D: db $F7, $E3, $E3, $5F, $01, $43, $00, $37
#_16AE65: db $00, $2F, $12, $27, $1B, $1F, $04
#_16AE6C: db $83 ; Repeat Fill
#_16AE6D: db $8C, $01 ; Repeat Fill bytes
#_16AE6F: db $01 ; Direct Copy
#_16AE70: db $65, $7F
#_16AE72: db $83 ; Repeat Fill
#_16AE73: db $91, $01 ; Repeat Fill bytes
#_16AE75: db $13 ; Direct Copy
#_16AE76: db $07, $03, $FA, $80, $C2, $00, $EC, $00
#_16AE7E: db $F4, $48, $24, $D8, $F8, $20, $A0, $C0
#_16AE86: db $C0, $00, $A6, $FE
#_16AE8A: db $83 ; Repeat Fill
#_16AE8B: db $A9, $01 ; Repeat Fill bytes
#_16AE8D: db $E0, $3C ; EXT Direct Copy
#_16AE8F: db $E0, $C0, $50, $7F, $B0, $FF, $B1, $FF
#_16AE97: db $B2, $FF, $64, $FF, $65, $FF, $44, $FF
#_16AE9F: db $42, $FF, $5F, $BF, $BF, $BE, $7C, $7D
#_16AEA7: db $7C, $7E, $43, $FF, $4D, $FF, $C8, $FF
#_16AEAF: db $08, $FF, $71, $FF, $81, $FF, $41, $FF
#_16AEB7: db $27, $FF, $C3, $CF, $CF, $0F, $7F, $FF
#_16AEBF: db $7F, $3F, $3F, $07, $3F, $03, $1F, $01
#_16AEC7: db $1F, $00, $0F, $00, $03
#_16AECC: db $24 ; Byte Fill
#_16AECD: db $00
#_16AECE: db $83 ; Repeat Fill
#_16AECF: db $DB, $02 ; Repeat Fill bytes
#_16AED1: db $0E ; Direct Copy
#_16AED2: db $0F, $03, $00, $00, $9C, $F8, $FC, $F0
#_16AEDA: db $F8, $E0, $F8, $00, $F0, $00, $C0
#_16AEE1: db $24 ; Byte Fill
#_16AEE2: db $00
#_16AEE3: db $0B ; Direct Copy
#_16AEE4: db $FC, $FC, $F8, $F8, $F0, $C0, $00, $00
#_16AEEC: db $2F, $19, $7E, $2A
#_16AEF0: db $43 ; Word Fill
#_16AEF1: db $7C, $28 ; Word Fill
#_16AEF3: db $03 ; Direct Copy
#_16AEF4: db $38, $10, $3C, $1C
#_16AEF8: db $83 ; Repeat Fill
#_16AEF9: db $1C, $02 ; Repeat Fill bytes
#_16AEFB: db $0B ; Direct Copy
#_16AEFC: db $3E, $5D, $5F, $5F, $2F, $23, $18, $07
#_16AF04: db $F4, $98, $FC, $D0
#_16AF08: db $43 ; Word Fill
#_16AF09: db $7C, $50 ; Word Fill
#_16AF0B: db $03 ; Direct Copy
#_16AF0C: db $F8, $E0, $F8, $F0
#_16AF10: db $83 ; Repeat Fill
#_16AF11: db $34, $02 ; Repeat Fill bytes
#_16AF13: db $E0, $31 ; EXT Direct Copy
#_16AF15: db $7C, $3C, $BC, $BC, $18, $08, $30, $C0
#_16AF1D: db $01, $00, $07, $01, $0E, $07, $39, $0E
#_16AF25: db $53, $2C, $8C, $73, $B9, $77, $66, $31
#_16AF2D: db $01, $07, $0F, $3F, $7F, $FF, $FF, $66
#_16AF35: db $00, $03, $0C, $0F, $11, $1F, $25, $3F
#_16AF3D: db $07, $7F, $5A, $7F, $69, $FF, $9A, $FF
#_16AF45: db $03, $0F
#_16AF47: db $83 ; Repeat Fill
#_16AF48: db $60, $01 ; Repeat Fill bytes
#_16AF4A: db $01 ; Direct Copy
#_16AF4B: db $FF, $FE
#_16AF4D: db $43 ; Word Fill
#_16AF4E: db $04, $07 ; Word Fill
#_16AF50: db $03 ; Direct Copy
#_16AF51: db $08, $0F, $09, $0F
#_16AF55: db $45 ; Word Fill
#_16AF56: db $12, $1F ; Word Fill
#_16AF58: db $05 ; Direct Copy
#_16AF59: db $11, $1F, $07, $07, $0F, $0F
#_16AF5F: db $22 ; Byte Fill
#_16AF60: db $1E
#_16AF61: db $00 ; Direct Copy
#_16AF62: db $1F
#_16AF63: db $97 ; Repeat Fill
#_16AF64: db $C8, $04 ; Repeat Fill bytes
#_16AF66: db $E4, $2F ; EXT Byte Fill
#_16AF68: db $00
#_16AF69: db $43 ; Word Fill
#_16AF6A: db $3F, $11 ; Word Fill
#_16AF6C: db $0A ; Direct Copy
#_16AF6D: db $1F, $0B, $37, $1F, $30, $1F, $38, $1F
#_16AF75: db $1F, $0F, $0F
#_16AF78: db $83 ; Repeat Fill
#_16AF79: db $EF, $04 ; Repeat Fill bytes
#_16AF7B: db $22 ; Byte Fill
#_16AF7C: db $3F
#_16AF7D: db $0C ; Direct Copy
#_16AF7E: db $1F, $0F, $3F, $DE, $2F, $CE, $57, $A0
#_16AF86: db $EE, $10, $5E, $B8, $7E
#_16AF8B: db $84 ; Repeat Fill
#_16AF8C: db $33, $05 ; Repeat Fill bytes
#_16AF8E: db $07 ; Direct Copy
#_16AF8F: db $E3, $F3, $BF, $1E, $BE, $FE, $F0, $C0
#_16AF97: db $FF ; End of GFX A2

;===================================================================================================

GFX_A3:
#_16AF98: db $23 ; Byte Fill
#_16AF99: db $00
#_16AF9A: db $0A ; Direct Copy
#_16AF9B: db $04, $00, $0A, $00, $0B, $04, $0A, $04
#_16AFA3: db $05, $02, $0B
#_16AFA6: db $22 ; Byte Fill
#_16AFA7: db $00
#_16AFA8: db $1D ; Direct Copy
#_16AFA9: db $04, $0E, $0F, $0E, $07, $0B, $00, $00
#_16AFB1: db $10, $00, $29, $00, $D6, $09, $3B, $C7
#_16AFB9: db $CF, $3F, $BC, $7E, $71, $FC, $00, $10
#_16AFC1: db $39, $DE, $FB, $CF, $BF, $7E
#_16AFC7: db $83 ; Repeat Fill
#_16AFC8: db $18, $00 ; Repeat Fill bytes
#_16AFCA: db $13 ; Direct Copy
#_16AFCB: db $AA, $00, $6D, $92, $DD, $E2, $F2, $FC
#_16AFD3: db $3D, $7E, $8E, $3F, $00, $10, $BA, $7F
#_16AFDB: db $DF, $F2, $FD, $7E
#_16AFDF: db $27 ; Byte Fill
#_16AFE0: db $00
#_16AFE1: db $06 ; Direct Copy
#_16AFE2: db $38, $00, $44, $30, $BA, $40, $E5
#_16AFE9: db $24 ; Byte Fill
#_16AFEA: db $00
#_16AFEB: db $03 ; Direct Copy
#_16AFEC: db $38, $7C, $FA, $E7
#_16AFF0: db $2D ; Byte Fill
#_16AFF1: db $00
#_16AFF2: db $00 ; Direct Copy
#_16AFF3: db $02
#_16AFF4: db $27 ; Byte Fill
#_16AFF5: db $00
#_16AFF6: db $00 ; Direct Copy
#_16AFF7: db $02
#_16AFF8: db $25 ; Byte Fill
#_16AFF9: db $00
#_16AFFA: db $09 ; Direct Copy
#_16AFFB: db $08, $00, $14, $00, $0A, $04, $47, $00
#_16B003: db $B8, $47
#_16B005: db $22 ; Byte Fill
#_16B006: db $00
#_16B007: db $04 ; Direct Copy
#_16B008: db $08, $1C, $0E, $47, $F8
#_16B00D: db $25 ; Byte Fill
#_16B00E: db $00
#_16B00F: db $00 ; Direct Copy
#_16B010: db $20
#_16B011: db $43 ; Word Fill
#_16B012: db $00, $50 ; Word Fill
#_16B014: db $04 ; Direct Copy
#_16B015: db $20, $E4, $00, $1A, $E4
#_16B01A: db $22 ; Byte Fill
#_16B01B: db $00
#_16B01C: db $04 ; Direct Copy
#_16B01D: db $20, $70, $70, $E4, $1E
#_16B022: db $37 ; Byte Fill
#_16B023: db $00
#_16B024: db $E0, $2F ; EXT Direct Copy
#_16B026: db $22, $00, $55, $22, $2E, $11, $59, $07
#_16B02E: db $B6, $4F, $69, $1F, $2A, $1E, $55, $3C
#_16B036: db $22, $77, $3E, $59, $F7, $6E, $2D, $5A
#_16B03E: db $20, $00, $DC, $20, $72, $8C, $9C, $E0
#_16B046: db $68, $F0, $94, $FA, $54, $78, $AA, $3C
#_16B04E: db $20, $FC, $7E, $9C, $E8, $76, $B4, $5A
#_16B056: db $26 ; Byte Fill
#_16B057: db $00
#_16B058: db $08 ; Direct Copy
#_16B059: db $03, $01, $07, $03, $0E, $03, $1E, $01
#_16B061: db $1B
#_16B062: db $23 ; Byte Fill
#_16B063: db $00
#_16B064: db $03 ; Direct Copy
#_16B065: db $03, $07, $0F, $0F
#_16B069: db $26 ; Byte Fill
#_16B06A: db $00
#_16B06B: db $08 ; Direct Copy
#_16B06C: db $C0, $80, $E0, $C0, $70, $C0, $78, $80
#_16B074: db $D8
#_16B075: db $23 ; Byte Fill
#_16B076: db $00
#_16B077: db $1B ; Direct Copy
#_16B078: db $C0, $E0, $F0, $F0, $03, $00, $0C, $03
#_16B080: db $13, $0F, $14, $0F, $29, $1E, $2B, $1C
#_16B088: db $3F, $00, $FE, $01, $03, $0C, $13, $17
#_16B090: db $2E, $2C, $3F, $FF
#_16B094: db $43 ; Word Fill
#_16B095: db $80, $00 ; Word Fill
#_16B097: db $13 ; Direct Copy
#_16B098: db $F0, $00, $CC, $30, $F2, $3C, $CA, $3C
#_16B0A0: db $E5, $1E, $F5, $8E, $80, $80, $F0, $CC
#_16B0A8: db $F2, $FA, $DD, $CD
#_16B0AC: db $E4, $2F ; EXT Byte Fill
#_16B0AE: db $00
#_16B0AF: db $E0, $23 ; EXT Direct Copy
#_16B0B1: db $16, $09, $1D, $03, $2F, $13, $5B, $27
#_16B0B9: db $B6, $4F, $B6, $0F, $5C, $0F, $2C, $1F
#_16B0C1: db $1E, $1D, $3F, $7B, $F7, $F7, $5F, $2F
#_16B0C9: db $C3, $F8, $8B, $F8, $1D, $FC, $3E, $FE
#_16B0D1: db $7C, $FC, $7B, $F8
#_16B0D5: db $43 ; Word Fill
#_16B0D6: db $F7, $F0 ; Word Fill
#_16B0D8: db $13 ; Direct Copy
#_16B0D9: db $FC, $F4, $E2, $C1, $83, $84, $08, $08
#_16B0E1: db $C3, $1F, $D1, $1F, $B8, $3F, $7C, $7F
#_16B0E9: db $3E, $3F, $DE, $1F
#_16B0ED: db $43 ; Word Fill
#_16B0EE: db $EF, $0F ; Word Fill
#_16B0F0: db $0F ; Direct Copy
#_16B0F1: db $3F, $2F, $47, $83, $C1, $21, $10, $10
#_16B0F9: db $55, $A2, $AA, $C4, $F4, $C8, $D8, $E0
#_16B101: db $43 ; Word Fill
#_16B102: db $68, $F0 ; Word Fill
#_16B104: db $E0, $63 ; EXT Direct Copy
#_16B106: db $3A, $F0, $35, $F8, $77, $AE, $FC, $D8
#_16B10E: db $E8, $E8, $FA, $F7, $05, $00, $05, $02
#_16B116: db $02, $01, $05, $00, $0B, $04, $06, $01
#_16B11E: db $02, $01, $06, $01, $07, $07, $03, $05
#_16B126: db $0F, $06, $02, $06, $63, $1F, $5E, $3E
#_16B12E: db $B1, $7C, $61, $FC, $46, $FE, $4E, $FE
#_16B136: db $9D, $FC, $9B, $F8, $63, $5F, $BE, $7E
#_16B13E: db $79, $71, $E2, $E4, $C4, $F8, $7A, $7C
#_16B146: db $8D, $3E, $86, $3F, $62, $7F, $72, $7F
#_16B14E: db $B9, $3F, $D9, $1F, $C4, $FA, $7D, $7E
#_16B156: db $9E, $8E, $47, $27, $00, $00, $C0, $00
#_16B15E: db $20, $C0, $D0, $00, $A0, $00, $50, $A0
#_16B166: db $70, $80, $68, $80
#_16B16A: db $83 ; Repeat Fill
#_16B16B: db $1B, $01 ; Repeat Fill bytes
#_16B16D: db $E0, $3D ; EXT Direct Copy
#_16B16F: db $A0, $70, $70, $78, $55, $3C, $2A, $1E
#_16B177: db $29, $1F, $56, $2F, $B9, $47, $B6, $09
#_16B17F: db $69, $10, $10, $00, $5A, $2D, $2E, $77
#_16B187: db $F9, $FE, $79, $10, $AA, $3C, $55, $78
#_16B18F: db $95, $FA, $6A, $F4, $9C, $E0, $64, $98
#_16B197: db $B8, $40, $40, $00, $5A, $B7, $77, $EE
#_16B19F: db $9C, $7C, $F8, $40, $02, $19, $01, $18
#_16B1A7: db $00, $0C, $00, $07, $00, $03
#_16B1AD: db $25 ; Byte Fill
#_16B1AE: db $00
#_16B1AF: db $03 ; Direct Copy
#_16B1B0: db $0D, $0E, $07, $03
#_16B1B4: db $23 ; Byte Fill
#_16B1B5: db $00
#_16B1B6: db $09 ; Direct Copy
#_16B1B7: db $40, $98, $80, $18, $00, $30, $00, $E0
#_16B1BF: db $00, $C0
#_16B1C1: db $25 ; Byte Fill
#_16B1C2: db $00
#_16B1C3: db $03 ; Direct Copy
#_16B1C4: db $B0, $70, $E0, $C0
#_16B1C8: db $23 ; Byte Fill
#_16B1C9: db $00
#_16B1CA: db $0A ; Direct Copy
#_16B1CB: db $AF, $71, $A7, $78, $53, $3C, $4F, $3C
#_16B1D3: db $33, $0C, $0F
#_16B1D6: db $44 ; Word Fill
#_16B1D7: db $00, $01 ; Word Fill
#_16B1D9: db $1F ; Direct Copy
#_16B1DA: db $B3, $BB, $5F, $4F, $33, $0F, $01, $01
#_16B1E2: db $7F, $80, $FC, $00, $D4, $38, $94, $78
#_16B1EA: db $28, $F0, $C8, $F0, $30, $C0, $C0, $00
#_16B1F2: db $FF, $FC, $34, $74, $E8, $C8, $30, $C0
#_16B1FA: db $E4, $2F ; EXT Byte Fill
#_16B1FC: db $00
#_16B1FD: db $03 ; Direct Copy
#_16B1FE: db $2C, $1F, $5C, $2F
#_16B202: db $83 ; Repeat Fill
#_16B203: db $88, $01 ; Repeat Fill bytes
#_16B205: db $0F ; Direct Copy
#_16B206: db $5B, $07, $2F, $13, $55, $0B, $36, $09
#_16B20E: db $2F, $7F, $F7, $F7, $5B, $3F, $7D, $3E
#_16B216: db $43 ; Word Fill
#_16B217: db $F7, $F0 ; Word Fill
#_16B219: db $13 ; Direct Copy
#_16B21A: db $7B, $F8, $7C, $FC, $3F, $FF, $1F, $FF
#_16B222: db $8F, $FF, $C3, $FF, $08, $08, $84, $83
#_16B22A: db $C0, $E0, $F0, $FC
#_16B22E: db $43 ; Word Fill
#_16B22F: db $EF, $0F ; Word Fill
#_16B231: db $E0, $32 ; EXT Direct Copy
#_16B233: db $DE, $1F, $3E, $3F, $FC, $FF, $F8, $FF
#_16B23B: db $F1, $FF, $C3, $FF, $10, $10, $21, $C1
#_16B243: db $03, $07, $0F, $3F, $35, $FA, $3A, $F4
#_16B24B: db $6C, $F0, $68, $F0, $DC, $E0, $F2, $C8
#_16B253: db $AC, $D0, $70, $80, $F7, $FE, $EC, $E8
#_16B25B: db $DC, $FE, $BC, $70, $0A, $05, $16, $01
#_16B263: db $0A, $01, $03
#_16B266: db $83 ; Repeat Fill
#_16B267: db $E1, $01 ; Repeat Fill bytes
#_16B269: db $E0, $3E ; EXT Direct Copy
#_16B26B: db $00, $01, $00, $02, $01, $0E, $1E, $0A
#_16B273: db $03, $07, $02, $01, $03, $9B, $F8, $9D
#_16B27B: db $FC, $4E, $FE, $47, $FF, $63, $FF, $B0
#_16B283: db $7F, $5C, $BF, $A3, $1F, $E4, $E2, $71
#_16B28B: db $78, $7C, $BF, $DF, $A3, $D9, $1F, $B9
#_16B293: db $3F, $72, $7F, $E2, $FF, $C6, $FF, $0D
#_16B29B: db $FE, $3A, $FD, $C5, $F8, $27, $47, $8E
#_16B2A3: db $1E, $3E, $FD, $FB, $C5, $50, $A0
#_16B2AA: db $43 ; Word Fill
#_16B2AB: db $60, $80 ; Word Fill
#_16B2AD: db $02 ; Direct Copy
#_16B2AE: db $D0, $20, $A0
#_16B2B1: db $83 ; Repeat Fill
#_16B2B2: db $29, $02 ; Repeat Fill bytes
#_16B2B4: db $0A ; Direct Copy
#_16B2B5: db $80, $C0, $00, $70, $60, $60, $F0, $A0
#_16B2BD: db $C0, $E0, $C0
#_16B2C0: db $26 ; Byte Fill
#_16B2C1: db $00
#_16B2C2: db $08 ; Direct Copy
#_16B2C3: db $03, $00, $07, $00, $0C, $01, $18, $03
#_16B2CB: db $18
#_16B2CC: db $23 ; Byte Fill
#_16B2CD: db $00
#_16B2CE: db $03 ; Direct Copy
#_16B2CF: db $03, $07, $0E, $0C
#_16B2D3: db $26 ; Byte Fill
#_16B2D4: db $00
#_16B2D5: db $08 ; Direct Copy
#_16B2D6: db $C0, $00, $E0, $00, $30, $80, $18, $80
#_16B2DE: db $78
#_16B2DF: db $23 ; Byte Fill
#_16B2E0: db $00
#_16B2E1: db $03 ; Direct Copy
#_16B2E2: db $C0, $E0, $70, $70
#_16B2E6: db $26 ; Byte Fill
#_16B2E7: db $00
#_16B2E8: db $86 ; Repeat Fill
#_16B2E9: db $C7, $03 ; Repeat Fill bytes
#_16B2EB: db $01 ; Direct Copy
#_16B2EC: db $02, $19
#_16B2EE: db $23 ; Byte Fill
#_16B2EF: db $00
#_16B2F0: db $03 ; Direct Copy
#_16B2F1: db $03, $07, $0E, $0D
#_16B2F5: db $26 ; Byte Fill
#_16B2F6: db $00
#_16B2F7: db $83 ; Repeat Fill
#_16B2F8: db $DF, $03 ; Repeat Fill bytes
#_16B2FA: db $04 ; Direct Copy
#_16B2FB: db $70, $60, $F8, $F0, $98
#_16B300: db $23 ; Byte Fill
#_16B301: db $00
#_16B302: db $83 ; Repeat Fill
#_16B303: db $1C, $01 ; Repeat Fill bytes
#_16B305: db $26 ; Byte Fill
#_16B306: db $00
#_16B307: db $88 ; Repeat Fill
#_16B308: db $F7, $03 ; Repeat Fill bytes
#_16B30A: db $23 ; Byte Fill
#_16B30B: db $00
#_16B30C: db $83 ; Repeat Fill
#_16B30D: db $04, $04 ; Repeat Fill bytes
#_16B30F: db $26 ; Byte Fill
#_16B310: db $00
#_16B311: db $86 ; Repeat Fill
#_16B312: db $DF, $03 ; Repeat Fill bytes
#_16B314: db $01 ; Direct Copy
#_16B315: db $40, $98
#_16B317: db $23 ; Byte Fill
#_16B318: db $00
#_16B319: db $03 ; Direct Copy
#_16B31A: db $C0, $E0, $70, $B0
#_16B31E: db $E4, $2F ; EXT Byte Fill
#_16B320: db $00
#_16B321: db $08 ; Direct Copy
#_16B322: db $0B, $00, $1D, $02, $22, $0C, $1D, $00
#_16B32A: db $01
#_16B32B: db $26 ; Byte Fill
#_16B32C: db $00
#_16B32D: db $04 ; Direct Copy
#_16B32E: db $0B, $1F, $3E, $1D, $01
#_16B333: db $22 ; Byte Fill
#_16B334: db $00
#_16B335: db $0C ; Direct Copy
#_16B336: db $70, $FF, $BC, $7F, $CF, $3F, $73, $8F
#_16B33E: db $6E, $91, $D1, $00, $20
#_16B343: db $22 ; Byte Fill
#_16B344: db $00
#_16B345: db $14 ; Direct Copy
#_16B346: db $7F, $BF, $CF, $F3, $FE, $F1, $20, $00
#_16B34E: db $0E, $FF, $3D, $FE, $F3, $FC, $CE, $F1
#_16B356: db $75, $88, $94, $00, $08
#_16B35B: db $22 ; Byte Fill
#_16B35C: db $00
#_16B35D: db $12 ; Direct Copy
#_16B35E: db $FE, $FD, $F3, $CF, $7D, $9C, $08, $00
#_16B366: db $C0, $00, $A0, $40, $D0, $20, $50, $A0
#_16B36E: db $D0, $00, $20
#_16B371: db $24 ; Byte Fill
#_16B372: db $00
#_16B373: db $01 ; Direct Copy
#_16B374: db $C0, $E0
#_16B376: db $22 ; Byte Fill
#_16B377: db $F0
#_16B378: db $00 ; Direct Copy
#_16B379: db $20
#_16B37A: db $83 ; Repeat Fill
#_16B37B: db $6C, $00 ; Repeat Fill bytes
#_16B37D: db $00 ; Direct Copy
#_16B37E: db $01
#_16B37F: db $2C ; Byte Fill
#_16B380: db $00
#_16B381: db $01 ; Direct Copy
#_16B382: db $03, $01
#_16B384: db $25 ; Byte Fill
#_16B385: db $00
#_16B386: db $08 ; Direct Copy
#_16B387: db $B8, $07, $57, $20, $2A, $04, $0A, $00
#_16B38F: db $04
#_16B390: db $26 ; Byte Fill
#_16B391: db $00
#_16B392: db $04 ; Direct Copy
#_16B393: db $B8, $77, $2E, $0E, $04
#_16B398: db $22 ; Byte Fill
#_16B399: db $00
#_16B39A: db $08 ; Direct Copy
#_16B39B: db $1A, $E4, $F4, $00, $50, $20, $28, $00
#_16B3A3: db $10
#_16B3A4: db $26 ; Byte Fill
#_16B3A5: db $00
#_16B3A6: db $04 ; Direct Copy
#_16B3A7: db $1E, $F4, $70, $38, $10
#_16B3AC: db $3A ; Byte Fill
#_16B3AD: db $00
#_16B3AE: db $05 ; Direct Copy
#_16B3AF: db $03, $18, $00, $19, $00, $0D
#_16B3B5: db $83 ; Repeat Fill
#_16B3B6: db $76, $02 ; Repeat Fill bytes
#_16B3B8: db $25 ; Byte Fill
#_16B3B9: db $00
#_16B3BA: db $03 ; Direct Copy
#_16B3BB: db $0C, $0F, $07, $03
#_16B3BF: db $23 ; Byte Fill
#_16B3C0: db $00
#_16B3C1: db $83 ; Repeat Fill
#_16B3C2: db $14, $04 ; Repeat Fill bytes
#_16B3C4: db $05 ; Direct Copy
#_16B3C5: db $E0, $90, $40, $E0, $00, $C0
#_16B3CB: db $25 ; Byte Fill
#_16B3CC: db $00
#_16B3CD: db $03 ; Direct Copy
#_16B3CE: db $F0, $F0, $E0, $C0
#_16B3D2: db $23 ; Byte Fill
#_16B3D3: db $00
#_16B3D4: db $89 ; Repeat Fill
#_16B3D5: db $70, $02 ; Repeat Fill bytes
#_16B3D7: db $25 ; Byte Fill
#_16B3D8: db $00
#_16B3D9: db $83 ; Repeat Fill
#_16B3DA: db $80, $02 ; Repeat Fill bytes
#_16B3DC: db $23 ; Byte Fill
#_16B3DD: db $00
#_16B3DE: db $05 ; Direct Copy
#_16B3DF: db $F0, $98, $60, $F8, $00, $70
#_16B3E5: db $83 ; Repeat Fill
#_16B3E6: db $8E, $02 ; Repeat Fill bytes
#_16B3E8: db $25 ; Byte Fill
#_16B3E9: db $00
#_16B3EA: db $83 ; Repeat Fill
#_16B3EB: db $68, $05 ; Repeat Fill bytes
#_16B3ED: db $23 ; Byte Fill
#_16B3EE: db $00
#_16B3EF: db $09 ; Direct Copy
#_16B3F0: db $01, $1B, $03, $1E, $03, $0E, $01, $07
#_16B3F8: db $00, $03
#_16B3FA: db $25 ; Byte Fill
#_16B3FB: db $00
#_16B3FC: db $03 ; Direct Copy
#_16B3FD: db $0F, $0F, $07, $03
#_16B401: db $23 ; Byte Fill
#_16B402: db $00
#_16B403: db $09 ; Direct Copy
#_16B404: db $80, $D8, $C0, $78, $C0, $70, $80, $E0
#_16B40C: db $00, $C0
#_16B40E: db $25 ; Byte Fill
#_16B40F: db $00
#_16B410: db $83 ; Repeat Fill
#_16B411: db $68, $05 ; Repeat Fill bytes
#_16B413: db $E4, $33 ; EXT Byte Fill
#_16B415: db $00
#_16B416: db $FF ; End of GFX A3

;===================================================================================================

GFX_A4:
#_16B417: db $E0, $EF ; EXT Direct Copy
#_16B419: db $03, $00, $0E, $01, $1C, $03, $37, $03
#_16B421: db $6F, $2B, $7E, $3B, $7D, $16, $D2, $2D
#_16B429: db $03, $0E, $15, $2F, $57, $46, $6D, $F3
#_16B431: db $C0, $00, $70, $80, $38, $C0, $AC, $C0
#_16B439: db $F6, $D4, $3E, $DC, $BE, $68, $5A, $B4
#_16B441: db $C0, $70, $A8, $F4, $EA, $22, $B6, $DE
#_16B449: db $07, $00, $1E, $00, $25, $19, $43, $3C
#_16B451: db $4E, $3F, $FD, $1E, $DA, $0D, $B6, $2B
#_16B459: db $07, $19, $26, $4F, $5E, $BD, $BB, $D7
#_16B461: db $80, $00, $C0, $80, $F8, $C0, $F4, $28
#_16B469: db $1A, $EC, $FD, $16, $55, $BA, $0F, $FC
#_16B471: db $80, $40, $38, $FC, $1E, $FD, $DD, $CF
#_16B479: db $00, $00, $0F, $00, $1E, $0D, $37, $06
#_16B481: db $6F, $0D, $7E, $03, $C9, $3E, $9A, $7D
#_16B489: db $00, $0F, $13, $29, $53, $7E, $D9, $BB
#_16B491: db $F0, $00, $68, $F0, $F4, $88, $32, $FC
#_16B499: db $E1, $7E, $BE, $40, $44, $88, $42, $E4
#_16B4A1: db $F0, $E8, $F4, $72, $E1, $BE, $F4, $DA
#_16B4A9: db $07, $00, $18, $06, $28, $15, $54, $2B
#_16B4B1: db $6A, $1D, $99, $6E, $98, $57, $9C, $3B
#_16B4B9: db $07, $19, $2B, $57, $6F, $9F, $BF, $DF
#_16B4C1: db $E0, $00, $18, $60, $14, $A8, $3A, $D4
#_16B4C9: db $4E, $B8, $89, $76, $19, $EA, $3D, $DC
#_16B4D1: db $E0, $98, $D4, $FA, $FE, $F9, $FD, $FF
#_16B4D9: db $00, $00, $03, $00, $0C, $03, $11, $0F
#_16B4E1: db $33, $0F, $37, $0F, $5E, $37, $7F, $37
#_16B4E9: db $00, $03, $0C, $11, $33, $37, $5F, $7F
#_16B4F1: db $00, $00, $C0, $00, $30, $C0, $C8, $F0
#_16B4F9: db $EC, $F0, $3C, $F0, $1E, $EC, $3E, $EC
#_16B501: db $00, $C0, $30, $C8, $EC, $FC, $FE, $FE
#_16B509: db $85 ; Repeat Fill
#_16B50A: db $C0, $00 ; Repeat Fill bytes
#_16B50C: db $11 ; Direct Copy
#_16B50D: db $17, $0F, $29, $1F, $30, $1F, $59, $3F
#_16B515: db $5F, $3F, $00, $03, $0C, $17, $2F, $3F
#_16B51D: db $5F, $5F
#_16B51F: db $83 ; Repeat Fill
#_16B520: db $D8, $00 ; Repeat Fill bytes
#_16B522: db $13 ; Direct Copy
#_16B523: db $F0, $00, $E8, $30, $CC, $B0, $F2, $C0
#_16B52B: db $E9, $D0, $ED, $D0, $00, $C0, $F0, $E8
#_16B533: db $CC, $FE, $EF, $EB
#_16B537: db $83 ; Repeat Fill
#_16B538: db $C0, $00 ; Repeat Fill bytes
#_16B53A: db $E0, $35 ; EXT Direct Copy
#_16B53C: db $0D, $03, $1F, $03, $23, $1C, $27, $1F
#_16B544: db $4F, $3F, $5D, $3F, $00, $03, $0D, $1F
#_16B54C: db $23, $27, $4F, $5F, $38, $00, $CC, $00
#_16B554: db $26, $C0, $1B, $E0, $D6, $28, $34, $D8
#_16B55C: db $9A, $EC, $DA, $EC, $38, $F4, $3A, $1D
#_16B564: db $D6, $34, $9A, $DA, $0F, $00, $1F, $0E
#_16B56C: db $2E, $19, $2B, $14, $57, $2C
#_16B572: db $43 ; Word Fill
#_16B573: db $AF, $5E ; Word Fill
#_16B575: db $E1, $33 ; EXT Direct Copy
#_16B577: db $4F, $3E, $0F, $1F, $2E, $2B, $57, $AF
#_16B57F: db $AF, $4F, $B8, $00, $DC, $38, $FC, $C0
#_16B587: db $7C, $F8, $3E, $FC, $1B, $FC, $8F, $70
#_16B58F: db $FF, $06, $B8, $DC, $FC, $7C, $3E, $1B
#_16B597: db $8F, $FF, $AF, $73, $EB, $5D, $FC, $59
#_16B59F: db $B4, $58, $44, $3A, $26, $19, $15, $08
#_16B5A7: db $08, $00, $EF, $FB, $FE, $B7, $45, $26
#_16B5AF: db $15, $08, $35, $CE, $D7, $BA, $3F, $9A
#_16B5B7: db $2D, $1A, $22, $5C, $64, $98, $A8, $10
#_16B5BF: db $10, $00, $F7, $DF, $7F, $ED, $A2, $64
#_16B5C7: db $A8, $10, $F7, $6B, $77, $29, $34, $1B
#_16B5CF: db $3E, $07, $2D, $1B, $17, $0D, $09, $06
#_16B5D7: db $07, $00, $97, $57, $34, $3E, $3F, $1F
#_16B5DF: db $09, $07, $91, $CE, $09, $C6, $05, $0A
#_16B5E7: db $8A, $10, $50, $A0, $20, $C0, $10, $E0
#_16B5EF: db $E0, $00, $B1, $39, $F5, $EA, $50, $20
#_16B5F7: db $10, $E0, $9A, $7D, $DD, $3E, $7E, $03
#_16B5FF: db $6E, $0D, $37, $06, $1E, $0D, $0F, $00
#_16B607: db $01, $00, $BB, $DD, $7E, $52, $29, $13
#_16B60F: db $0F, $01, $C2, $E4, $C4, $88, $BE, $40
#_16B617: db $E1, $7E, $32, $FC, $F4, $88, $68, $F0
#_16B61F: db $F0, $00, $DA, $F4, $BE, $E1, $72, $F4
#_16B627: db $E8, $F0, $8E, $3B, $8F, $57, $9B, $6E
#_16B62F: db $72, $1D, $54, $2B, $28, $15, $18, $06
#_16B637: db $07, $00, $CF, $AF, $9B, $72, $54, $2A
#_16B63F: db $19, $07, $39, $DC, $F1, $EA, $F9, $76
#_16B647: db $4E, $B8, $2A, $D4, $14, $A8, $18, $60
#_16B64F: db $E0, $00, $FB, $F5, $F9, $4E, $2A, $54
#_16B657: db $98, $E0, $4B, $37, $49, $37, $A4, $1B
#_16B65F: db $9F, $04, $D3, $0F, $6C, $03, $3B, $00
#_16B667: db $10, $00, $4B, $49, $E4, $FF, $B3, $5C
#_16B66F: db $2B, $10, $FA, $EC, $DA, $EC, $25, $D8
#_16B677: db $F9, $20, $CB, $F0, $36, $C0, $DC, $00
#_16B67F: db $08, $00, $FA, $DA, $27, $FF, $CD, $3A
#_16B687: db $D4, $08, $77, $0F, $78, $07, $27, $18
#_16B68F: db $24, $1B, $1B, $00, $09, $00, $04, $00
#_16B697: db $03, $00, $77, $78, $27, $24, $1F, $0E
#_16B69F: db $07, $03, $B7, $D8, $77, $98, $E6, $38
#_16B6A7: db $C8, $F0, $10, $E0
#_16B6AB: db $43 ; Word Fill
#_16B6AC: db $E0, $00 ; Word Fill
#_16B6AE: db $09 ; Direct Copy
#_16B6AF: db $C0, $00, $B5, $75, $E6, $C8, $10, $E0
#_16B6B7: db $20, $C0
#_16B6B9: db $43 ; Word Fill
#_16B6BA: db $58, $3F ; Word Fill
#_16B6BC: db $08 ; Direct Copy
#_16B6BD: db $2D, $1F, $27, $1C, $1F, $03, $0F, $03
#_16B6C5: db $03
#_16B6C6: db $22 ; Byte Fill
#_16B6C7: db $00
#_16B6C8: db $07 ; Direct Copy
#_16B6C9: db $5F, $5F, $2F, $27, $1F, $0F, $03, $00
#_16B6D1: db $43 ; Word Fill
#_16B6D2: db $DA, $EC ; Word Fill
#_16B6D4: db $E0, $A3 ; EXT Direct Copy
#_16B6D6: db $B4, $D8, $D6, $28, $DB, $E0, $26, $C0
#_16B6DE: db $CC, $00, $38, $00, $DA, $DA, $B4, $D6
#_16B6E6: db $DD, $3A, $F4, $38, $C5, $3E, $A3, $5C
#_16B6EE: db $7D, $22, $BB, $77, $99, $77, $4C, $33
#_16B6F6: db $37, $08, $18, $00, $C5, $A3, $7D, $BB
#_16B6FE: db $99, $4C, $37, $18, $FB, $16, $CD, $32
#_16B706: db $FD, $02, $E6, $18, $CF, $BC, $CE, $BC
#_16B70E: db $E4, $18, $F8, $00, $FB, $CD, $FD, $E6
#_16B716: db $CF, $CE, $E4, $F8, $03, $00, $0D, $02
#_16B71E: db $30, $0F, $20, $1F, $74, $0F, $B9, $0E
#_16B726: db $DE, $49, $FC, $6B, $03, $0D, $32, $27
#_16B72E: db $5C, $D9, $BF, $9F, $C0, $00, $A0, $00
#_16B736: db $B0, $20, $FC, $30, $72, $8C, $7E, $EC
#_16B73E: db $DB, $26, $75, $CA, $C0, $60, $D0, $CC
#_16B746: db $7E, $7E, $DB, $FD, $07, $00, $0B, $03
#_16B74E: db $3D, $01, $2F, $10, $47, $3F, $4B, $3C
#_16B756: db $82, $7D, $C4, $3B, $07, $0C, $32, $2F
#_16B75E: db $4F, $5B, $B3, $D7, $80, $00, $F0, $80
#_16B766: db $DC, $30, $BA, $7C, $72, $8C, $BE, $70
#_16B76E: db $FA, $DC, $D1, $EE, $80, $70, $FC, $FA
#_16B776: db $72, $BE, $FA, $D1
#_16B77A: db $83 ; Repeat Fill
#_16B77B: db $C0, $00 ; Repeat Fill bytes
#_16B77D: db $11 ; Direct Copy
#_16B77E: db $0F, $00, $11, $0E, $26, $1F, $2F, $1F
#_16B786: db $5B, $3F, $51, $3F, $00, $03, $0F, $11
#_16B78E: db $26, $2F
#_16B790: db $83 ; Repeat Fill
#_16B791: db $06, $01 ; Repeat Fill bytes
#_16B793: db $15 ; Direct Copy
#_16B794: db $E0, $00, $9C, $60, $A2, $40, $56, $A0
#_16B79C: db $2F, $D0, $B7, $D8, $9A, $EC, $00, $E0
#_16B7A4: db $9C, $BE, $5A, $29, $B5, $9A
#_16B7AA: db $85 ; Repeat Fill
#_16B7AB: db $C0, $00 ; Repeat Fill bytes
#_16B7AD: db $11 ; Direct Copy
#_16B7AE: db $13, $0F, $26, $1F, $2C, $1F, $6E, $1F
#_16B7B6: db $77, $0F, $00, $03, $0C, $13, $27, $2F
#_16B7BE: db $6F, $77
#_16B7C0: db $83 ; Repeat Fill
#_16B7C1: db $D8, $00 ; Repeat Fill bytes
#_16B7C3: db $E0, $7D ; EXT Direct Copy
#_16B7C5: db $70, $80, $E8, $90, $64, $D8, $34, $D8
#_16B7CD: db $7A, $E0, $F9, $E0, $00, $C0, $70, $E8
#_16B7D5: db $E4, $F4, $FE, $FF, $04, $04, $32, $16
#_16B7DD: db $52, $3E, $4C, $3E, $29, $1F, $2C, $17
#_16B7E5: db $10, $0F, $32, $2F, $04, $32, $52, $4C
#_16B7ED: db $2D, $2C, $10, $32, $00, $00, $40, $40
#_16B7F5: db $48, $D8, $2C, $5C, $96, $8E, $92, $CE
#_16B7FD: db $4E, $F2, $21, $EB, $00, $40, $48, $2C
#_16B805: db $96, $D2, $6E, $21, $00, $00, $08, $18
#_16B80D: db $04, $0C, $64, $6C, $30, $F4, $10, $70
#_16B815: db $08, $19, $08, $08, $00, $08, $04, $64
#_16B81D: db $30, $10, $08, $08, $00, $00, $0C, $1C
#_16B825: db $06, $1E, $02, $0E, $02, $06, $41, $C3
#_16B82D: db $60, $E2, $30, $F0, $00, $0C, $06, $02
#_16B835: db $02, $41, $60, $30, $00, $00, $01, $00
#_16B83D: db $02, $01, $0F, $00, $15, $0A
#_16B843: db $43 ; Word Fill
#_16B844: db $2F, $1C ; Word Fill
#_16B846: db $01 ; Direct Copy
#_16B847: db $4F, $3E
#_16B849: db $62 ; Increasing Fill
#_16B84A: db $00 ; Increasing Fill Start
#_16B84B: db $04 ; Direct Copy
#_16B84C: db $0F, $15, $2F, $2F, $4F
#_16B851: db $83 ; Repeat Fill
#_16B852: db $D8, $00 ; Repeat Fill bytes
#_16B854: db $13 ; Direct Copy
#_16B855: db $E0, $C0, $70, $E0, $38, $F0, $18, $F0
#_16B85D: db $8C, $70, $FE, $04, $00, $C0, $E0, $70
#_16B865: db $38, $18, $8C, $FE
#_16B869: db $25 ; Byte Fill
#_16B86A: db $00
#_16B86B: db $09 ; Direct Copy
#_16B86C: db $01, $00, $0F, $00, $13, $0E, $17, $08
#_16B874: db $0F, $04
#_16B876: db $22 ; Byte Fill
#_16B877: db $00
#_16B878: db $04 ; Direct Copy
#_16B879: db $01, $0F, $13, $17, $0F
#_16B87E: db $25 ; Byte Fill
#_16B87F: db $00
#_16B880: db $85 ; Repeat Fill
#_16B881: db $3A, $04 ; Repeat Fill bytes
#_16B883: db $02 ; Direct Copy
#_16B884: db $90, $60, $F8
#_16B887: db $23 ; Byte Fill
#_16B888: db $00
#_16B889: db $E0, $20 ; EXT Direct Copy
#_16B88B: db $C0, $E0, $70, $90, $F8, $F7, $4B, $6B
#_16B893: db $17, $5E, $35, $7F, $36, $36, $1B, $24
#_16B89B: db $1B, $1E, $01, $01, $00, $B7, $7B, $7E
#_16B8A3: db $7F, $36, $24, $1E, $01, $BD, $DA, $0E
#_16B8AB: db $DC
#_16B8AC: db $43 ; Word Fill
#_16B8AD: db $12, $0C ; Word Fill
#_16B8AF: db $E0, $34 ; EXT Direct Copy
#_16B8B1: db $94, $28, $A8, $40, $40, $80, $80, $00
#_16B8B9: db $BD, $2E, $F2, $F2, $D4, $A8, $40, $80
#_16B8C1: db $F2, $0D, $9F, $05, $7D, $36, $3F, $10
#_16B8C9: db $16, $0D, $15, $0E, $0E, $03, $03, $00
#_16B8D1: db $B3, $FF, $4D, $2F, $1F, $1D, $0E, $03
#_16B8D9: db $8D, $C2, $02, $E4, $84, $08, $B8, $C0
#_16B8E1: db $C4, $F8, $C8, $70, $70
#_16B8E6: db $83 ; Repeat Fill
#_16B8E7: db $A5, $04 ; Repeat Fill bytes
#_16B8E9: db $E0, $5B ; EXT Direct Copy
#_16B8EB: db $1A, $F4, $B8, $C4, $C8, $70, $80, $51
#_16B8F3: db $3F, $7B, $0F, $3F, $03, $27, $1C, $13
#_16B8FB: db $0C, $0C, $00, $02, $00, $01, $00, $5F
#_16B903: db $7F, $3F, $27, $13, $0F, $03, $01, $9A
#_16B90B: db $EC, $B2, $DC, $34, $D8, $E4, $38, $C8
#_16B913: db $30, $F0, $00, $78, $00, $F0, $00, $9A
#_16B91B: db $B2, $34, $E4, $C8, $30, $88, $F0, $73
#_16B923: db $0F, $48, $37, $56, $29, $2B, $06, $25
#_16B92B: db $03, $2E, $01, $1F, $00, $06, $00, $73
#_16B933: db $48, $56, $3B, $3D, $32, $19, $06, $DD
#_16B93B: db $E0, $1F, $E0, $77, $98, $E7, $78, $8A
#_16B943: db $F0, $30, $C0, $C0
#_16B947: db $22 ; Byte Fill
#_16B948: db $00
#_16B949: db $E0, $41 ; EXT Direct Copy
#_16B94B: db $DB, $19, $75, $E5, $8A, $30, $C0, $00
#_16B953: db $BD, $73, $8A, $71, $40, $2C, $28, $3E
#_16B95B: db $49, $3E, $35, $0C, $06, $02, $00, $00
#_16B963: db $BD, $8A, $40, $28, $4D, $35, $06, $00
#_16B96B: db $DA, $0C, $7C, $0C, $3E, $76, $B8, $78
#_16B973: db $DC, $BC, $64, $DC, $DA, $06, $06, $00
#_16B97B: db $DA, $7C, $3E, $B8, $DC, $64, $DA, $06
#_16B983: db $00, $00, $10, $30, $38, $79, $0C, $3D
#_16B98B: db $00, $18
#_16B98D: db $26 ; Byte Fill
#_16B98E: db $00
#_16B98F: db $02 ; Direct Copy
#_16B990: db $10, $38, $0C
#_16B993: db $24 ; Byte Fill
#_16B994: db $00
#_16B995: db $0A ; Direct Copy
#_16B996: db $20, $00, $00, $40, $C0, $60, $E0, $30
#_16B99E: db $F0, $00, $30
#_16B9A1: db $25 ; Byte Fill
#_16B9A2: db $00
#_16B9A3: db $02 ; Direct Copy
#_16B9A4: db $40, $60, $30
#_16B9A7: db $22 ; Byte Fill
#_16B9A8: db $00
#_16B9A9: db $0C ; Direct Copy
#_16B9AA: db $45, $3E, $22, $1D, $1C, $03, $17, $0F
#_16B9B2: db $13, $0F, $0C, $03, $07
#_16B9B7: db $22 ; Byte Fill
#_16B9B8: db $00
#_16B9B9: db $14 ; Direct Copy
#_16B9BA: db $45, $22, $1C, $17, $13, $0C, $07, $00
#_16B9C2: db $FA, $1C, $C2, $3C, $7A, $84, $D4, $B8
#_16B9CA: db $C8, $B0, $F0, $80, $C0
#_16B9CF: db $22 ; Byte Fill
#_16B9D0: db $00
#_16B9D1: db $10 ; Direct Copy
#_16B9D2: db $FA, $C2, $7A, $D4, $C8, $F0, $C0, $00
#_16B9DA: db $17, $0E, $17, $0F, $12, $0F, $09, $06
#_16B9E2: db $07
#_16B9E3: db $26 ; Byte Fill
#_16B9E4: db $00
#_16B9E5: db $04 ; Direct Copy
#_16B9E6: db $17, $17, $12, $09, $07
#_16B9EB: db $22 ; Byte Fill
#_16B9EC: db $00
#_16B9ED: db $06 ; Direct Copy
#_16B9EE: db $F8, $70, $FC, $78, $B4, $78, $08
#_16B9F5: db $83 ; Repeat Fill
#_16B9F6: db $8F, $02 ; Repeat Fill bytes
#_16B9F8: db $24 ; Byte Fill
#_16B9F9: db $00
#_16B9FA: db $07 ; Direct Copy
#_16B9FB: db $F8, $FC, $B4, $08, $10, $E0, $00, $00
#_16BA03: db $FF ; End of GFX A4

;===================================================================================================

GFX_A5:
#_16BA04: db $17 ; Direct Copy
#_16BA05: db $FE, $7F, $FD, $BF, $FB, $DF, $F7, $EF
#_16BA0D: db $EF, $F7, $DF, $FB, $BF, $FD, $7F, $FE
#_16BA15: db $FE, $FD, $FB, $F7, $EF, $DF, $BF, $7F
#_16BA1D: db $97 ; Repeat Fill
#_16BA1E: db $00, $00 ; Repeat Fill bytes
#_16BA20: db $F0, $2F ; EXT Repeat Fill
#_16BA22: db $00, $00 ; Repeat Fill bytes
#_16BA24: db $F0, $5F ; EXT Repeat Fill
#_16BA26: db $00, $00 ; Repeat Fill bytes
#_16BA28: db $F0, $BF ; EXT Repeat Fill
#_16BA2A: db $00, $00 ; Repeat Fill bytes
#_16BA2C: db $F1, $7F ; EXT Repeat Fill
#_16BA2E: db $00, $00 ; Repeat Fill bytes
#_16BA30: db $F2, $FE ; EXT Repeat Fill
#_16BA32: db $00, $00 ; Repeat Fill bytes
#_16BA34: db $00 ; Direct Copy
#_16BA35: db $7F
#_16BA36: db $FF ; End of GFX A5

;===================================================================================================

GFX_A6:
#_16BA37: db $37 ; Byte Fill
#_16BA38: db $00
#_16BA39: db $E0, $2F ; EXT Direct Copy
#_16BA3B: db $1E, $00, $2B, $1C, $54, $3B, $6A, $37
#_16BA43: db $E8, $77, $D4, $6F, $7D, $07, $5A, $27
#_16BA4B: db $1E, $3B, $74, $6B, $EB, $D7, $77, $52
#_16BA53: db $00, $00, $E0, $00, $1F, $E0, $E8, $F7
#_16BA5B: db $1C, $EF, $6C, $FF, $F2, $FF, $3A, $E7
#_16BA63: db $00, $E0, $1F, $EF, $DF, $EF, $F3, $3B
#_16BA6B: db $25 ; Byte Fill
#_16BA6C: db $00
#_16BA6D: db $01 ; Direct Copy
#_16BA6E: db $80, $00
#_16BA70: db $47 ; Word Fill
#_16BA71: db $40, $80 ; Word Fill
#_16BA73: db $22 ; Byte Fill
#_16BA74: db $00
#_16BA75: db $00 ; Direct Copy
#_16BA76: db $80
#_16BA77: db $23 ; Byte Fill
#_16BA78: db $C0
#_16BA79: db $23 ; Byte Fill
#_16BA7A: db $00
#_16BA7B: db $13 ; Direct Copy
#_16BA7C: db $01, $00, $03, $01, $05, $02, $07, $01
#_16BA84: db $07, $03, $08, $07, $00, $00, $01, $03
#_16BA8C: db $05, $07, $07, $08
#_16BA90: db $23 ; Byte Fill
#_16BA91: db $00
#_16BA92: db $E0, $2B ; EXT Direct Copy
#_16BA94: db $E0, $00, $D0, $E0, $C8, $30, $F4, $C8
#_16BA9C: db $8A, $F4, $0A, $F4, $00, $00, $E0, $D0
#_16BAA4: db $C8, $F4, $8A, $0A, $3C, $00, $7E, $3C
#_16BAAC: db $6F, $26, $6D, $21, $60, $20, $30, $10
#_16BAB4: db $3B, $0B, $1F, $06, $3C, $42, $51, $52
#_16BABC: db $5F, $2F, $34, $19
#_16BAC0: db $23 ; Byte Fill
#_16BAC1: db $00
#_16BAC2: db $03 ; Direct Copy
#_16BAC3: db $80, $00, $C0, $80
#_16BAC7: db $45 ; Word Fill
#_16BAC8: db $80, $00 ; Word Fill
#_16BACA: db $83 ; Repeat Fill
#_16BACB: db $56, $00 ; Repeat Fill bytes
#_16BACD: db $01 ; Direct Copy
#_16BACE: db $80, $40
#_16BAD0: db $22 ; Byte Fill
#_16BAD1: db $80
#_16BAD2: db $00 ; Direct Copy
#_16BAD3: db $40
#_16BAD4: db $25 ; Byte Fill
#_16BAD5: db $00
#_16BAD6: db $09 ; Direct Copy
#_16BAD7: db $03, $00, $07, $03, $03, $01, $07, $03
#_16BADF: db $1F, $07
#_16BAE1: db $22 ; Byte Fill
#_16BAE2: db $00
#_16BAE3: db $04 ; Direct Copy
#_16BAE4: db $03, $04, $02, $04, $18
#_16BAE9: db $27 ; Byte Fill
#_16BAEA: db $00
#_16BAEB: db $03 ; Direct Copy
#_16BAEC: db $E0, $00, $F0, $E0
#_16BAF0: db $43 ; Word Fill
#_16BAF1: db $B8, $B0 ; Word Fill
#_16BAF3: db $23 ; Byte Fill
#_16BAF4: db $00
#_16BAF5: db $0C ; Direct Copy
#_16BAF6: db $E0, $10, $48, $48, $00, $00, $08, $38
#_16BAFE: db $0F, $3F, $09, $3F, $0B
#_16BB03: db $46 ; Word Fill
#_16BB04: db $3F, $0F ; Word Fill
#_16BB06: db $01 ; Direct Copy
#_16BB07: db $00, $38
#_16BB09: db $25 ; Byte Fill
#_16BB0A: db $3F
#_16BB0B: db $25 ; Byte Fill
#_16BB0C: db $00
#_16BB0D: db $06 ; Direct Copy
#_16BB0E: db $E0, $E0, $FC, $FC, $E4, $FC, $F4
#_16BB15: db $22 ; Byte Fill
#_16BB16: db $FC
#_16BB17: db $22 ; Byte Fill
#_16BB18: db $00
#_16BB19: db $00 ; Direct Copy
#_16BB1A: db $E0
#_16BB1B: db $23 ; Byte Fill
#_16BB1C: db $FC
#_16BB1D: db $29 ; Byte Fill
#_16BB1E: db $00
#_16BB1F: db $45 ; Word Fill
#_16BB20: db $01, $03 ; Word Fill
#_16BB22: db $24 ; Byte Fill
#_16BB23: db $00
#_16BB24: db $22 ; Byte Fill
#_16BB25: db $03
#_16BB26: db $2B ; Byte Fill
#_16BB27: db $00
#_16BB28: db $23 ; Byte Fill
#_16BB29: db $80
#_16BB2A: db $25 ; Byte Fill
#_16BB2B: db $00
#_16BB2C: db $E0, $21 ; EXT Direct Copy
#_16BB2E: db $80, $80, $07, $00, $59, $01, $FB, $5B
#_16BB36: db $FF, $3C, $FF, $1B, $FF, $14, $7C, $00
#_16BB3E: db $79, $08, $07, $5E, $A4, $C3, $E7, $EF
#_16BB46: db $7F, $77, $E0, $00, $FF, $E0, $FF, $83
#_16BB4E: db $FF, $7F
#_16BB50: db $22 ; Byte Fill
#_16BB51: db $FF
#_16BB52: db $07 ; Direct Copy
#_16BB53: db $F0, $FF, $40, $9F, $60, $E0, $1F, $7F
#_16BB5B: db $23 ; Byte Fill
#_16BB5C: db $FF
#_16BB5D: db $00 ; Direct Copy
#_16BB5E: db $9F
#_16BB5F: db $37 ; Byte Fill
#_16BB60: db $00
#_16BB61: db $E0, $24 ; EXT Direct Copy
#_16BB63: db $71, $2E, $73, $3C, $41, $3E, $60, $1F
#_16BB6B: db $38, $0F, $3F, $1A, $1F, $06, $06, $00
#_16BB73: db $70, $70, $40, $78, $3E, $3F, $1F, $06
#_16BB7B: db $F9, $77, $E8, $17, $EF, $18, $72, $FC
#_16BB83: db $84, $78, $B8, $40, $C0
#_16BB88: db $22 ; Byte Fill
#_16BB89: db $00
#_16BB8A: db $06 ; Direct Copy
#_16BB8B: db $79, $38, $3F, $72, $04, $38, $C0
#_16BB92: db $83 ; Repeat Fill
#_16BB93: db $AD, $00 ; Repeat Fill bytes
#_16BB95: db $2C ; Byte Fill
#_16BB96: db $00
#_16BB97: db $01 ; Direct Copy
#_16BB98: db $C0, $80
#_16BB9A: db $25 ; Byte Fill
#_16BB9B: db $00
#_16BB9C: db $47 ; Word Fill
#_16BB9D: db $0F, $00 ; Word Fill
#_16BB9F: db $43 ; Word Fill
#_16BBA0: db $07, $00 ; Word Fill
#_16BBA2: db $00 ; Direct Copy
#_16BBA3: db $03
#_16BBA4: db $22 ; Byte Fill
#_16BBA5: db $00
#_16BBA6: db $0C ; Direct Copy
#_16BBA7: db $0A, $0A, $0F, $0F, $07, $07, $03, $00
#_16BBAF: db $EA, $14, $FA, $04, $FC
#_16BBB4: db $44 ; Word Fill
#_16BBB5: db $00, $F8 ; Word Fill
#_16BBB7: db $02 ; Direct Copy
#_16BBB8: db $F0, $00, $E0
#_16BBBB: db $22 ; Byte Fill
#_16BBBC: db $00
#_16BBBD: db $09 ; Direct Copy
#_16BBBE: db $CA, $CA, $FC, $F8, $F8, $F0, $E0, $00
#_16BBC6: db $1F, $06
#_16BBC8: db $44 ; Word Fill
#_16BBC9: db $1F, $00 ; Word Fill
#_16BBCB: db $02 ; Direct Copy
#_16BBCC: db $0C, $1F, $0A
#_16BBCF: db $44 ; Word Fill
#_16BBD0: db $1F, $08 ; Word Fill
#_16BBD2: db $01 ; Direct Copy
#_16BBD3: db $0A, $19
#_16BBD5: db $22 ; Byte Fill
#_16BBD6: db $1F
#_16BBD7: db $E0, $35 ; EXT Direct Copy
#_16BBD9: db $1D, $1F, $1F, $1D, $7F, $80, $FF, $0F
#_16BBE1: db $BF, $4F, $3F, $C7, $FF, $03, $DF, $21
#_16BBE9: db $9F, $61, $FD, $02, $7F, $F0, $30, $38
#_16BBF1: db $FC, $9E, $9E, $FD, $FF, $1F, $FF, $FF
#_16BBF9: db $FC, $FC, $80, $80, $E0, $E0, $F8, $F8
#_16BC01: db $FC, $FC, $FE, $FE, $E0, $00, $03, $7F
#_16BC09: db $1F, $07, $03, $01, $BC, $B8
#_16BC0F: db $43 ; Word Fill
#_16BC10: db $1C, $18 ; Word Fill
#_16BC12: db $47 ; Word Fill
#_16BC13: db $18, $10 ; Word Fill
#_16BC15: db $04 ; Direct Copy
#_16BC16: db $38, $30, $44, $E4, $E4
#_16BC1B: db $23 ; Byte Fill
#_16BC1C: db $E8
#_16BC1D: db $0C ; Direct Copy
#_16BC1E: db $C8, $0F, $3F, $0B, $3F, $09, $3F, $0F
#_16BC26: db $3F, $01, $3F, $00, $07
#_16BC2B: db $23 ; Byte Fill
#_16BC2C: db $00
#_16BC2D: db $23 ; Byte Fill
#_16BC2E: db $3F
#_16BC2F: db $00 ; Direct Copy
#_16BC30: db $31
#_16BC31: db $22 ; Byte Fill
#_16BC32: db $00
#_16BC33: db $25 ; Byte Fill
#_16BC34: db $FC
#_16BC35: db $09 ; Direct Copy
#_16BC36: db $F4, $FC, $E4, $FC, $3C, $FC, $04, $FC
#_16BC3E: db $00, $1C
#_16BC40: db $24 ; Byte Fill
#_16BC41: db $FC
#_16BC42: db $02 ; Direct Copy
#_16BC43: db $3C, $04, $00
#_16BC46: db $47 ; Word Fill
#_16BC47: db $01, $03 ; Word Fill
#_16BC49: db $01 ; Direct Copy
#_16BC4A: db $00, $01
#_16BC4C: db $25 ; Byte Fill
#_16BC4D: db $00
#_16BC4E: db $23 ; Byte Fill
#_16BC4F: db $03
#_16BC50: db $23 ; Byte Fill
#_16BC51: db $00
#_16BC52: db $29 ; Byte Fill
#_16BC53: db $80
#_16BC54: db $01 ; Direct Copy
#_16BC55: db $00, $80
#_16BC57: db $23 ; Byte Fill
#_16BC58: db $00
#_16BC59: db $24 ; Byte Fill
#_16BC5A: db $80
#_16BC5B: db $22 ; Byte Fill
#_16BC5C: db $00
#_16BC5D: db $E0, $41 ; EXT Direct Copy
#_16BC5F: db $59, $18, $8F, $0C, $B2, $01, $82, $01
#_16BC67: db $43, $02, $3F, $1E, $3F, $0E, $3F, $10
#_16BC6F: db $67, $F3, $CE, $FE, $7D, $21, $31, $3F
#_16BC77: db $3F, $C0, $F7, $08, $78, $87, $7C, $83
#_16BC7F: db $FF, $08, $37, $C6, $3F, $C2, $FF, $00
#_16BC87: db $3F, $FF, $7F, $7F, $F7, $39, $3D, $FF
#_16BC8F: db $07, $00, $0E, $03, $15, $0F, $13, $0F
#_16BC97: db $17, $0F, $1B, $07, $12, $0F, $17, $0F
#_16BC9F: db $07, $0F
#_16BCA1: db $22 ; Byte Fill
#_16BCA2: db $17
#_16BCA3: db $E0, $27 ; EXT Direct Copy
#_16BCA5: db $1B, $13, $17, $C0, $00, $60, $80, $F0
#_16BCAD: db $C0, $F0, $80, $8C, $70, $06, $FC, $1E
#_16BCB5: db $FC, $32, $FC, $C0, $E0, $F0, $F0, $FC
#_16BCBD: db $FE, $FE, $F2, $00, $00, $18, $00, $24
#_16BCC5: db $18, $4E, $34, $5E, $28, $3C, $18, $18
#_16BCCD: db $24 ; Byte Fill
#_16BCCE: db $00
#_16BCCF: db $1D ; Direct Copy
#_16BCD0: db $18, $34, $28, $18, $00, $00, $FE, $7F
#_16BCD8: db $FD, $BF, $FB, $DF, $F7, $EF, $EF, $F7
#_16BCE0: db $DF, $FB, $BF, $FD, $7F, $FE, $FE, $FD
#_16BCE8: db $FB, $F7, $EF, $DF, $BF, $7F
#_16BCEE: db $83 ; Repeat Fill
#_16BCEF: db $62, $00 ; Repeat Fill bytes
#_16BCF1: db $01 ; Direct Copy
#_16BCF2: db $02, $01
#_16BCF4: db $43 ; Word Fill
#_16BCF5: db $04, $03 ; Word Fill
#_16BCF7: db $E0, $57 ; EXT Direct Copy
#_16BCF9: db $09, $07, $08, $07, $0E, $07, $00, $01
#_16BD01: db $03, $07, $07, $0F, $0E, $0E, $00, $00
#_16BD09: db $E3, $00, $34, $E3, $1B, $F7, $98, $FF
#_16BD11: db $54, $BF, $F2, $5F, $BD, $03, $00, $E3
#_16BD19: db $F4, $BB, $9B, $5F, $B3, $F1, $1F, $0A
#_16BD21: db $1F, $02, $1F, $0A, $1F, $0E, $1F, $06
#_16BD29: db $1F, $0A, $1F, $0C, $0F, $06, $1D, $1D
#_16BD31: db $15, $11, $19, $1D, $1F, $0F, $9D, $62
#_16BD39: db $63, $9C, $7B, $84, $3B, $C4, $C3, $3C
#_16BD41: db $FF, $00, $F8, $00, $DF, $60, $9D, $43
#_16BD49: db $4B, $1B, $43, $CF, $FF, $FF, $FE, $FE
#_16BD51: db $26 ; Byte Fill
#_16BD52: db $FF
#_16BD53: db $45 ; Word Fill
#_16BD54: db $7F, $FF ; Word Fill
#_16BD56: db $01 ; Direct Copy
#_16BD57: db $3C, $01
#_16BD59: db $22 ; Byte Fill
#_16BD5A: db $00
#_16BD5B: db $22 ; Byte Fill
#_16BD5C: db $80
#_16BD5D: db $00 ; Direct Copy
#_16BD5E: db $C3
#_16BD5F: db $43 ; Word Fill
#_16BD60: db $30, $20 ; Word Fill
#_16BD62: db $13 ; Direct Copy
#_16BD63: db $34, $20, $3E, $24, $3E, $2C, $77, $54
#_16BD6B: db $EF, $AC, $DE, $58, $D0, $D0, $D4, $DA
#_16BD73: db $D2, $AB, $53, $A6
#_16BD77: db $26 ; Byte Fill
#_16BD78: db $00
#_16BD79: db $03 ; Direct Copy
#_16BD7A: db $0C, $03, $0F, $02
#_16BD7E: db $44 ; Word Fill
#_16BD7F: db $0F, $03 ; Word Fill
#_16BD81: db $22 ; Byte Fill
#_16BD82: db $00
#_16BD83: db $00 ; Direct Copy
#_16BD84: db $0C
#_16BD85: db $23 ; Byte Fill
#_16BD86: db $0F
#_16BD87: db $29 ; Byte Fill
#_16BD88: db $00
#_16BD89: db $05 ; Direct Copy
#_16BD8A: db $C0, $C0, $E0, $E0, $D0, $F0
#_16BD90: db $24 ; Byte Fill
#_16BD91: db $00
#_16BD92: db $1E ; Direct Copy
#_16BD93: db $C0, $E0, $F0, $01, $00, $06, $01, $09
#_16BD9B: db $07, $14, $0F, $22, $1D, $39, $06, $5C
#_16BDA3: db $3F, $6E, $3F, $01, $06, $09, $14, $22
#_16BDAB: db $39, $5C, $7E, $F8, $00, $0C, $F4
#_16BDB2: db $43 ; Word Fill
#_16BDB3: db $E6, $FA ; Word Fill
#_16BDB5: db $11 ; Direct Copy
#_16BDB6: db $46, $FA, $06, $FA, $8C, $74, $F8, $00
#_16BDBE: db $F8, $08, $E4, $E4, $44, $04, $88, $F8
#_16BDC6: db $3F, $1A
#_16BDC8: db $43 ; Word Fill
#_16BDC9: db $7F, $2F ; Word Fill
#_16BDCB: db $44 ; Word Fill
#_16BDCC: db $3F, $17 ; Word Fill
#_16BDCE: db $0C ; Direct Copy
#_16BDCF: db $08, $7F, $17, $7F, $38, $3F, $5F, $5F
#_16BDD7: db $2F, $2F, $37, $78, $7F
#_16BDDC: db $43 ; Word Fill
#_16BDDD: db $9F, $60 ; Word Fill
#_16BDDF: db $1C ; Direct Copy
#_16BDE0: db $E7, $98, $E4, $9B, $F8, $27, $F8, $67
#_16BDE8: db $FE, $81, $FF, $00, $9F, $9F, $E7, $E4
#_16BDF0: db $D8, $98, $7C, $FE, $0B, $07, $09, $07
#_16BDF8: db $04, $03, $02, $01, $01
#_16BDFD: db $26 ; Byte Fill
#_16BDFE: db $00
#_16BDFF: db $04 ; Direct Copy
#_16BE00: db $0B, $09, $04, $02, $01
#_16BE05: db $22 ; Byte Fill
#_16BE06: db $00
#_16BE07: db $08 ; Direct Copy
#_16BE08: db $22, $FC, $E2, $FC, $04, $F8, $18, $E0
#_16BE10: db $E0
#_16BE11: db $26 ; Byte Fill
#_16BE12: db $00
#_16BE13: db $04 ; Direct Copy
#_16BE14: db $E2, $E2, $04, $18, $E0
#_16BE19: db $22 ; Byte Fill
#_16BE1A: db $00
#_16BE1B: db $16 ; Direct Copy
#_16BE1C: db $38, $00, $44, $38, $82, $7C, $E6, $18
#_16BE24: db $FF, $66, $7E, $2C, $3C, $08, $18, $00
#_16BE2C: db $00, $38, $7C, $18, $66, $2C, $08
#_16BE33: db $98 ; Repeat Fill
#_16BE34: db $47, $03 ; Repeat Fill bytes
#_16BE36: db $00 ; Direct Copy
#_16BE37: db $07
#_16BE38: db $2E ; Byte Fill
#_16BE39: db $00
#_16BE3A: db $00 ; Direct Copy
#_16BE3B: db $07
#_16BE3C: db $26 ; Byte Fill
#_16BE3D: db $00
#_16BE3E: db $1C ; Direct Copy
#_16BE3F: db $FE, $21, $AE, $71, $B0, $7F, $48, $3F
#_16BE47: db $31, $0F, $3F, $05, $1F, $03, $03, $00
#_16BE4F: db $F0, $B8, $BD, $4B, $23, $2F, $1F, $03
#_16BE57: db $0F, $06, $07, $02, $02
#_16BE5C: db $2A ; Byte Fill
#_16BE5D: db $00
#_16BE5E: db $02 ; Direct Copy
#_16BE5F: db $0F, $07, $02
#_16BE62: db $24 ; Byte Fill
#_16BE63: db $00
#_16BE64: db $0C ; Direct Copy
#_16BE65: db $FF, $7C, $CF, $7F, $CD, $7F, $63, $3F
#_16BE6D: db $67, $3E, $3F, $1C, $1E
#_16BE72: db $22 ; Byte Fill
#_16BE73: db $00
#_16BE74: db $22 ; Byte Fill
#_16BE75: db $FF
#_16BE76: db $0F ; Direct Copy
#_16BE77: db $7F, $7F, $3F, $1E, $00, $FF, $3F, $FF
#_16BE7F: db $9F, $FF, $6F, $FF, $2F, $BF, $07, $07
#_16BE87: db $24 ; Byte Fill
#_16BE88: db $00
#_16BE89: db $83 ; Repeat Fill
#_16BE8A: db $28, $03 ; Repeat Fill bytes
#_16BE8C: db $05 ; Direct Copy
#_16BE8D: db $B8, $07, $00, $00, $FE, $E0
#_16BE93: db $43 ; Word Fill
#_16BE94: db $FC, $C0 ; Word Fill
#_16BE96: db $04 ; Direct Copy
#_16BE97: db $F8, $80, $F0, $00, $C0
#_16BE9C: db $24 ; Byte Fill
#_16BE9D: db $00
#_16BE9E: db $07 ; Direct Copy
#_16BE9F: db $1E, $3C, $3C, $78, $F0, $C0, $00, $00
#_16BEA7: db $43 ; Word Fill
#_16BEA8: db $03, $0F ; Word Fill
#_16BEAA: db $83 ; Repeat Fill
#_16BEAB: db $FA, $03 ; Repeat Fill bytes
#_16BEAD: db $03 ; Direct Copy
#_16BEAE: db $00, $03, $00, $01
#_16BEB2: db $23 ; Byte Fill
#_16BEB3: db $00
#_16BEB4: db $23 ; Byte Fill
#_16BEB5: db $0F
#_16BEB6: db $23 ; Byte Fill
#_16BEB7: db $00
#_16BEB8: db $27 ; Byte Fill
#_16BEB9: db $F0
#_16BEBA: db $07 ; Direct Copy
#_16BEBB: db $D0, $F0, $30, $F0, $00, $70, $00, $00
#_16BEC3: db $24 ; Byte Fill
#_16BEC4: db $F0
#_16BEC5: db $1B ; Direct Copy
#_16BEC6: db $30, $00, $00, $97, $7E, $99, $76, $D9
#_16BECE: db $36, $AB, $56, $D6, $60, $D0, $20, $E0
#_16BED6: db $40, $60, $00, $B7, $BB, $FB, $BF, $D6
#_16BEDE: db $F0, $E0, $60, $80
#_16BEE2: db $2E ; Byte Fill
#_16BEE3: db $00
#_16BEE4: db $00 ; Direct Copy
#_16BEE5: db $80
#_16BEE6: db $26 ; Byte Fill
#_16BEE7: db $00
#_16BEE8: db $06 ; Direct Copy
#_16BEE9: db $7F, $3F, $7F, $38, $38, $10, $30
#_16BEF0: db $28 ; Byte Fill
#_16BEF1: db $00
#_16BEF2: db $03 ; Direct Copy
#_16BEF3: db $7F, $7F, $38, $30
#_16BEF7: db $23 ; Byte Fill
#_16BEF8: db $00
#_16BEF9: db $0C ; Direct Copy
#_16BEFA: db $F8, $C7, $E5, $1A, $3B, $05, $1C, $0B
#_16BF02: db $0F, $04, $07, $03, $03
#_16BF07: db $22 ; Byte Fill
#_16BF08: db $00
#_16BF09: db $07 ; Direct Copy
#_16BF0A: db $F8, $FD, $3F, $1F, $0F, $07, $03, $00
#_16BF12: db $FF ; End of GFX A6

;===================================================================================================

GFX_A7:
#_16BF13: db $08 ; Direct Copy
#_16BF14: db $00, $00, $03, $00, $07, $03, $04, $00
#_16BF1C: db $2C
#_16BF1D: db $43 ; Word Fill
#_16BF1E: db $04, $5C ; Word Fill
#_16BF20: db $E0, $57 ; EXT Direct Copy
#_16BF22: db $0C, $5E, $0E, $00, $03, $04, $07, $2B
#_16BF2A: db $7B, $73, $71, $00, $00, $C0, $00, $E0
#_16BF32: db $C0, $20, $00, $D4, $00, $DA, $00, $1A
#_16BF3A: db $10, $3A, $30, $00, $C0, $20, $E0, $34
#_16BF42: db $3E, $EE, $CE, $00, $00, $60, $00, $90
#_16BF4A: db $60, $D0, $60, $68, $30, $74, $58, $3C
#_16BF52: db $20, $3B, $34, $00, $60, $F0, $F0, $78
#_16BF5A: db $7C, $3C, $3E, $00, $00, $06, $00, $09
#_16BF62: db $06, $0B, $06, $16, $0C, $2F, $1A, $3D
#_16BF6A: db $06, $DE, $24, $00, $06, $0F, $0F, $1E
#_16BF72: db $3F, $3F, $7F, $00, $00, $07, $00, $0F
#_16BF7A: db $44 ; Word Fill
#_16BF7B: db $00, $1F ; Word Fill
#_16BF7D: db $43 ; Word Fill
#_16BF7E: db $3F, $00 ; Word Fill
#_16BF80: db $06 ; Direct Copy
#_16BF81: db $5F, $00, $00, $07, $0F, $1F, $1F
#_16BF88: db $84 ; Repeat Fill
#_16BF89: db $5D, $00 ; Repeat Fill bytes
#_16BF8B: db $02 ; Direct Copy
#_16BF8C: db $60, $00, $F0
#_16BF8F: db $44 ; Word Fill
#_16BF90: db $00, $F8 ; Word Fill
#_16BF92: db $43 ; Word Fill
#_16BF93: db $FC, $00 ; Word Fill
#_16BF95: db $E0, $3F ; EXT Direct Copy
#_16BF97: db $FA, $80, $00, $60, $D0, $E8, $F8, $FC
#_16BF9F: db $FC, $7E, $00, $00, $40, $00, $A0, $00
#_16BFA7: db $F0, $40, $FC, $00, $5B, $24, $3C, $03
#_16BFAF: db $57, $08, $00, $40, $E0, $B0, $CC, $67
#_16BFB7: db $3B, $58, $00, $00, $02, $00, $05, $00
#_16BFBF: db $0F, $02, $3F, $00, $DA, $24, $3C, $C0
#_16BFC7: db $EA, $10, $00, $02, $07, $0D, $33, $E6
#_16BFCF: db $DC, $1A, $00, $1E, $0E, $31, $1B, $24
#_16BFD7: db $44 ; Word Fill
#_16BFD8: db $3D, $42 ; Word Fill
#_16BFDA: db $07 ; Direct Copy
#_16BFDB: db $52, $3C, $5B, $1D, $27, $1E, $31, $3C
#_16BFE3: db $22 ; Byte Fill
#_16BFE4: db $7E
#_16BFE5: db $01 ; Direct Copy
#_16BFE6: db $7F, $3F
#_16BFE8: db $22 ; Byte Fill
#_16BFE9: db $00
#_16BFEA: db $14 ; Direct Copy
#_16BFEB: db $C0, $C0, $20, $A0, $50, $D0, $28, $E0
#_16BFF3: db $98, $D4, $AC, $2C, $D4, $00, $C0, $20
#_16BFFB: db $50, $28, $98, $AC, $D4
#_16C000: db $87 ; Repeat Fill
#_16C001: db $60, $00 ; Repeat Fill bytes
#_16C003: db $02 ; Direct Copy
#_16C004: db $27, $00, $20
#_16C007: db $44 ; Word Fill
#_16C008: db $00, $40 ; Word Fill
#_16C00A: db $83 ; Repeat Fill
#_16C00B: db $70, $00 ; Repeat Fill bytes
#_16C00D: db $06 ; Direct Copy
#_16C00E: db $3F, $3F, $7F, $7F, $00, $00, $E0
#_16C015: db $83 ; Repeat Fill
#_16C016: db $7B, $00 ; Repeat Fill bytes
#_16C018: db $E0, $29 ; EXT Direct Copy
#_16C01A: db $10, $9C, $18, $6C, $08, $2E, $0C, $0E
#_16C022: db $0C, $00, $E0, $B0, $E8, $E4, $94, $D2
#_16C02A: db $F2, $03, $00, $1F, $03, $37, $1C, $7F
#_16C032: db $20, $63, $00, $80, $00, $C1, $00, $E3
#_16C03A: db $00, $03, $1F, $3F, $7F, $7F, $FF, $FF
#_16C042: db $BE, $80
#_16C044: db $84 ; Repeat Fill
#_16C045: db $09, $01 ; Repeat Fill bytes
#_16C047: db $11 ; Direct Copy
#_16C048: db $98, $60, $9C, $60, $FC, $00, $EC, $80
#_16C050: db $F4, $90, $80, $E0, $F0, $F8, $FC, $FC
#_16C058: db $7C, $6C
#_16C05A: db $29 ; Byte Fill
#_16C05B: db $00
#_16C05C: db $05 ; Direct Copy
#_16C05D: db $38, $00, $77, $08, $EF, $10
#_16C063: db $24 ; Byte Fill
#_16C064: db $00
#_16C065: db $02 ; Direct Copy
#_16C066: db $38, $4F, $98
#_16C069: db $29 ; Byte Fill
#_16C06A: db $00
#_16C06B: db $05 ; Direct Copy
#_16C06C: db $1C, $00, $EE, $10, $F7, $08
#_16C072: db $24 ; Byte Fill
#_16C073: db $00
#_16C074: db $0E ; Direct Copy
#_16C075: db $1C, $F2, $19, $6F, $27, $3F, $19, $1F
#_16C07D: db $0D, $1E, $04, $1E, $02, $0F, $01
#_16C084: db $43 ; Word Fill
#_16C085: db $07, $00 ; Word Fill
#_16C087: db $13 ; Direct Copy
#_16C088: db $58, $20, $12, $13, $11, $08, $04, $04
#_16C090: db $F6, $E4, $FC, $98, $F8, $B0, $78, $20
#_16C098: db $78, $40, $F0, $80
#_16C09C: db $43 ; Word Fill
#_16C09D: db $E0, $00 ; Word Fill
#_16C09F: db $14 ; Direct Copy
#_16C0A0: db $1A, $04, $48, $C8, $88, $10, $20, $20
#_16C0A8: db $7D, $3A, $7E, $39, $7E, $21, $7F, $12
#_16C0B0: db $7E, $33, $37, $09, $0D
#_16C0B5: db $22 ; Byte Fill
#_16C0B6: db $00
#_16C0B7: db $14 ; Direct Copy
#_16C0B8: db $7F, $7A, $76, $77, $77, $3F, $0D, $00
#_16C0C0: db $BF, $59, $7F, $9C, $7E, $8C, $BE, $4C
#_16C0C8: db $3E, $C4, $EC, $D0, $F0
#_16C0CD: db $22 ; Byte Fill
#_16C0CE: db $00
#_16C0CF: db $12 ; Direct Copy
#_16C0D0: db $FE, $5F, $6E, $EE, $EE, $FC, $F0, $00
#_16C0D8: db $7F, $21, $7E, $30, $3A, $10, $1C, $0C
#_16C0E0: db $0F, $03, $03
#_16C0E3: db $24 ; Byte Fill
#_16C0E4: db $00
#_16C0E5: db $12 ; Direct Copy
#_16C0E6: db $58, $4B, $2F, $13, $0C, $03, $00, $00
#_16C0EE: db $FE, $84, $7E, $0C, $5C, $08, $38, $30
#_16C0F6: db $F0, $C0, $C0
#_16C0F9: db $24 ; Byte Fill
#_16C0FA: db $00
#_16C0FB: db $0E ; Direct Copy
#_16C0FC: db $1A, $D2, $F4, $C8, $30, $C0, $00, $00
#_16C104: db $FF, $40, $E7, $5C, $FF, $5F, $7F
#_16C10B: db $22 ; Byte Fill
#_16C10C: db $00
#_16C10D: db $02 ; Direct Copy
#_16C10E: db $02, $00, $02
#_16C111: db $22 ; Byte Fill
#_16C112: db $00
#_16C113: db $03 ; Direct Copy
#_16C114: db $BC, $BF, $BF, $7F
#_16C118: db $23 ; Byte Fill
#_16C119: db $00
#_16C11A: db $06 ; Direct Copy
#_16C11B: db $FF, $02, $E7, $3A, $FF, $FA, $FE
#_16C122: db $22 ; Byte Fill
#_16C123: db $00
#_16C124: db $02 ; Direct Copy
#_16C125: db $40, $00, $40
#_16C128: db $22 ; Byte Fill
#_16C129: db $00
#_16C12A: db $03 ; Direct Copy
#_16C12B: db $3D, $FD, $FD, $FE
#_16C12F: db $23 ; Byte Fill
#_16C130: db $00
#_16C131: db $05 ; Direct Copy
#_16C132: db $07, $1F, $3B, $13, $39, $11
#_16C138: db $43 ; Word Fill
#_16C139: db $70, $20 ; Word Fill
#_16C13B: db $43 ; Word Fill
#_16C13C: db $E0, $40 ; Word Fill
#_16C13E: db $11 ; Direct Copy
#_16C13F: db $40, $00, $1F, $2B, $29, $50, $50, $A0
#_16C147: db $A0, $40, $54, $AC, $04, $FC, $98, $F8
#_16C14F: db $60, $60
#_16C151: db $27 ; Byte Fill
#_16C152: db $00
#_16C153: db $03 ; Direct Copy
#_16C154: db $AC, $FC, $F8, $60
#_16C158: db $23 ; Byte Fill
#_16C159: db $00
#_16C15A: db $0A ; Direct Copy
#_16C15B: db $48, $00, $55, $00, $40, $00, $20, $00
#_16C163: db $18, $00, $07
#_16C166: db $24 ; Byte Fill
#_16C167: db $00
#_16C168: db $22 ; Byte Fill
#_16C169: db $7F
#_16C16A: db $0F ; Direct Copy
#_16C16B: db $3F, $1F, $07, $00, $00, $8E, $0C, $5E
#_16C173: db $1C, $1E, $1C, $3C, $38, $F8, $E0, $E0
#_16C17B: db $24 ; Byte Fill
#_16C17C: db $00
#_16C17D: db $14 ; Direct Copy
#_16C17E: db $F2, $E2, $E2, $C4, $18, $E0, $00, $00
#_16C186: db $F7, $00, $B7, $00, $81, $01, $7F, $00
#_16C18E: db $41, $01, $3F, $1F, $1F
#_16C193: db $22 ; Byte Fill
#_16C194: db $00
#_16C195: db $0A ; Direct Copy
#_16C196: db $BE, $C8, $FE, $65, $7E, $20, $1F, $00
#_16C19E: db $F4, $B0, $E8
#_16C1A1: db $44 ; Word Fill
#_16C1A2: db $E0, $F0 ; Word Fill
#_16C1A4: db $02 ; Direct Copy
#_16C1A5: db $E0, $C0, $C0
#_16C1A8: db $24 ; Byte Fill
#_16C1A9: db $00
#_16C1AA: db $E0, $67 ; EXT Direct Copy
#_16C1AC: db $4C, $18, $10, $10, $20, $C0, $00, $00
#_16C1B4: db $DF, $20, $BB, $04, $54, $0B, $17, $0C
#_16C1BC: db $1F, $0E, $1E, $00, $1E, $0C, $1C, $00
#_16C1C4: db $F8, $FC, $5F, $1F, $1F, $1E, $12, $1C
#_16C1CC: db $FB, $04, $DD, $20, $2A, $D0, $E8, $30
#_16C1D4: db $F8, $70, $78, $00, $78, $30, $38, $00
#_16C1DC: db $1F, $3F, $FA, $F8, $F8, $78, $48, $38
#_16C1E4: db $30, $00, $58, $30, $EC, $58, $BF, $2C
#_16C1EC: db $B7, $29, $B7, $08, $FB, $64, $CB, $44
#_16C1F4: db $30, $78, $BC, $DF, $DA, $FD, $9E, $BD
#_16C1FC: db $0C, $00, $14, $08, $34, $18, $EC, $34
#_16C204: db $EC, $98, $EC, $18, $CC, $38, $DC, $30
#_16C20C: db $0C, $1C, $3C, $F8, $5C, $BC, $7C, $BC
#_16C214: db $83 ; Repeat Fill
#_16C215: db $00, $00 ; Repeat Fill bytes
#_16C217: db $07 ; Direct Copy
#_16C218: db $0F, $03, $3F, $0F, $7E, $0E, $FC, $1C
#_16C220: db $43 ; Word Fill
#_16C221: db $F8, $18 ; Word Fill
#_16C223: db $07 ; Direct Copy
#_16C224: db $00, $03, $0C, $30, $51, $A3, $A7, $A7
#_16C22C: db $83 ; Repeat Fill
#_16C22D: db $18, $00 ; Repeat Fill bytes
#_16C22F: db $14 ; Direct Copy
#_16C230: db $F0, $C0, $FC, $F0, $3E, $30, $5F, $18
#_16C238: db $EF, $08, $4F, $08, $00, $C0, $30, $0C
#_16C240: db $CA, $A5, $15, $B5, $07
#_16C245: db $83 ; Repeat Fill
#_16C246: db $67, $00 ; Repeat Fill bytes
#_16C248: db $0E ; Direct Copy
#_16C249: db $10, $7F, $30, $9F, $60, $CF, $70, $FF
#_16C251: db $78, $7D, $08, $07, $1F, $3F, $7F
#_16C258: db $22 ; Byte Fill
#_16C259: db $FF
#_16C25A: db $01 ; Direct Copy
#_16C25B: db $7F, $E0
#_16C25D: db $83 ; Repeat Fill
#_16C25E: db $7F, $00 ; Repeat Fill bytes
#_16C260: db $0E ; Direct Copy
#_16C261: db $08, $FE, $0C, $F9, $06, $F3, $0E, $FF
#_16C269: db $1E, $BE, $10, $E0, $F8, $FC, $FE
#_16C270: db $22 ; Byte Fill
#_16C271: db $FF
#_16C272: db $08 ; Direct Copy
#_16C273: db $FE, $0C, $00, $12, $00, $1D, $0C, $1E
#_16C27B: db $00
#_16C27C: db $43 ; Word Fill
#_16C27D: db $16, $08 ; Word Fill
#_16C27F: db $E0, $43 ; EXT Direct Copy
#_16C281: db $12, $0C, $08, $04, $0C, $1E, $13, $1E
#_16C289: db $1A, $1A, $1C, $0C, $06, $00, $09, $00
#_16C291: db $11, $00, $0F, $06, $16, $04, $2E, $0C
#_16C299: db $7C, $38, $38, $00, $06, $0F, $1F, $09
#_16C2A1: db $1A, $32, $44, $38, $60, $00, $90, $00
#_16C2A9: db $88, $00, $F0, $40, $48, $30, $74, $38
#_16C2B1: db $3C, $1C, $18, $00, $60, $F0, $F8, $B0
#_16C2B9: db $78, $7C, $3C, $18, $30, $00, $48, $00
#_16C2C1: db $98, $10, $78, $30
#_16C2C5: db $43 ; Word Fill
#_16C2C6: db $58, $10 ; Word Fill
#_16C2C8: db $0B ; Direct Copy
#_16C2C9: db $F8, $70, $70, $20, $30, $78, $E8, $48
#_16C2D1: db $68, $68, $88, $50
#_16C2D5: db $29 ; Byte Fill
#_16C2D6: db $00
#_16C2D7: db $05 ; Direct Copy
#_16C2D8: db $07, $00, $09, $06, $13, $0C
#_16C2DE: db $24 ; Byte Fill
#_16C2DF: db $00
#_16C2E0: db $02 ; Direct Copy
#_16C2E1: db $07, $0D, $1A
#_16C2E4: db $29 ; Byte Fill
#_16C2E5: db $00
#_16C2E6: db $04 ; Direct Copy
#_16C2E7: db $C0, $00, $A0, $40, $E0
#_16C2EC: db $25 ; Byte Fill
#_16C2ED: db $00
#_16C2EE: db $02 ; Direct Copy
#_16C2EF: db $C0, $A0, $60
#_16C2F2: db $83 ; Repeat Fill
#_16C2F3: db $00, $00 ; Repeat Fill bytes
#_16C2F5: db $03 ; Direct Copy
#_16C2F6: db $05, $02, $29, $06
#_16C2FA: db $43 ; Word Fill
#_16C2FB: db $58, $07 ; Word Fill
#_16C2FD: db $0B ; Direct Copy
#_16C2FE: db $38, $07, $3C, $03, $00, $03, $05, $2D
#_16C306: db $74, $74, $24, $3C
#_16C30A: db $83 ; Repeat Fill
#_16C30B: db $18, $00 ; Repeat Fill bytes
#_16C30D: db $13 ; Direct Copy
#_16C30E: db $60, $00, $30, $00, $98, $00, $C8, $00
#_16C316: db $68, $80, $48, $80, $00, $C0, $A0, $D0
#_16C31E: db $E8, $F8, $78, $78
#_16C322: db $23 ; Byte Fill
#_16C323: db $00
#_16C324: db $0F ; Direct Copy
#_16C325: db $18, $00, $3E, $18, $6F, $3E, $47, $3E
#_16C32D: db $C7, $7E, $EF, $3E, $00, $00, $18, $3E
#_16C335: db $83 ; Repeat Fill
#_16C336: db $33, $01 ; Repeat Fill bytes
#_16C338: db $23 ; Byte Fill
#_16C339: db $00
#_16C33A: db $E0, $B1 ; EXT Direct Copy
#_16C33C: db $18, $00, $74, $18, $EE, $70, $FE, $60
#_16C344: db $F9, $60, $FB, $32, $00, $00, $18, $7C
#_16C34C: db $FE, $FE, $FF, $FD, $5F, $16, $3F, $09
#_16C354: db $3F, $0E, $2F, $06, $36, $00, $2E, $10
#_16C35C: db $22, $1C, $1C, $00, $6F, $36, $31, $39
#_16C364: db $3E, $2E, $22, $1C, $FC, $68, $FC, $98
#_16C36C: db $FC, $70, $F4, $60, $6C, $00, $74, $08
#_16C374: db $44, $38, $38, $00, $F4, $64, $8C, $9C
#_16C37C: db $7C, $74, $44, $38, $F8, $08, $F4, $04
#_16C384: db $70, $00, $3B, $11, $3F, $0C, $1F, $08
#_16C38C: db $1F, $00, $0E, $00, $97, $9B, $5F, $2E
#_16C394: db $32, $10, $11, $0E, $1F, $00, $1F, $10
#_16C39C: db $0E, $00, $DC, $88, $FC, $30, $F8, $10
#_16C3A4: db $F8, $00, $70, $00, $E9, $E9, $FA, $74
#_16C3AC: db $4C, $08, $88, $70, $4D, $34, $5E, $21
#_16C3B4: db $5F, $21, $2B, $14, $23, $1C, $5E, $20
#_16C3BC: db $42, $34, $3C, $00, $7B, $67, $63, $37
#_16C3C4: db $3F, $5E, $4A, $3C, $B2, $2C, $7A, $84
#_16C3CC: db $FA, $84, $D4, $28, $C4, $38, $7A, $04
#_16C3D4: db $42, $2C, $3C, $00, $DE, $E6, $C6, $EC
#_16C3DC: db $FC, $7A, $52, $3C, $00, $44, $44, $EE
#_16C3E4: db $28, $7C, $10, $38, $28, $7C, $44, $EE
#_16C3EC: db $00, $44
#_16C3EE: db $29 ; Byte Fill
#_16C3EF: db $00
#_16C3F0: db $87 ; Repeat Fill
#_16C3F1: db $C0, $03 ; Repeat Fill bytes
#_16C3F3: db $05 ; Direct Copy
#_16C3F4: db $58, $20, $5C, $20, $2C, $10
#_16C3FA: db $85 ; Repeat Fill
#_16C3FB: db $CE, $03 ; Repeat Fill bytes
#_16C3FD: db $03 ; Direct Copy
#_16C3FE: db $68, $64, $30, $18
#_16C402: db $87 ; Repeat Fill
#_16C403: db $90, $03 ; Repeat Fill bytes
#_16C405: db $06 ; Direct Copy
#_16C406: db $12, $0C, $1A, $0C, $1E, $0E, $0C
#_16C40D: db $83 ; Repeat Fill
#_16C40E: db $9F, $03 ; Repeat Fill bytes
#_16C410: db $23 ; Byte Fill
#_16C411: db $1E
#_16C412: db $E0, $25 ; EXT Direct Copy
#_16C414: db $0C, $E6, $5C, $FA, $04, $E5, $02, $6F
#_16C41C: db $8A, $BF, $46, $BF, $42, $5F, $A2, $FF
#_16C424: db $12, $FE, $FE, $FF, $F7, $7F, $7F, $DF
#_16C42C: db $EF, $13, $0C, $20, $1F, $3F, $00, $27
#_16C434: db $07, $1B, $03, $04, $03, $07
#_16C43A: db $22 ; Byte Fill
#_16C43B: db $00
#_16C43C: db $08 ; Direct Copy
#_16C43D: db $1B, $30, $3F, $38, $1C, $07, $07, $00
#_16C445: db $20
#_16C446: db $44 ; Word Fill
#_16C447: db $00, $90 ; Word Fill
#_16C449: db $02 ; Direct Copy
#_16C44A: db $E0, $80, $C0
#_16C44D: db $43 ; Word Fill
#_16C44E: db $00, $80 ; Word Fill
#_16C450: db $22 ; Byte Fill
#_16C451: db $00
#_16C452: db $12 ; Direct Copy
#_16C453: db $E0, $F0, $F0, $60, $C0, $80, $80, $00
#_16C45B: db $1E, $0D, $1F, $08, $08, $00, $0F, $00
#_16C463: db $18, $07, $1F
#_16C466: db $24 ; Byte Fill
#_16C467: db $00
#_16C468: db $0C ; Direct Copy
#_16C469: db $12, $17, $0F, $0F, $17, $1F, $00, $00
#_16C471: db $48, $80, $F0, $00, $40
#_16C476: db $45 ; Word Fill
#_16C477: db $00, $80 ; Word Fill
#_16C479: db $24 ; Byte Fill
#_16C47A: db $00
#_16C47B: db $02 ; Direct Copy
#_16C47C: db $78, $F0, $C0
#_16C47F: db $22 ; Byte Fill
#_16C480: db $80
#_16C481: db $0E ; Direct Copy
#_16C482: db $00, $00, $3E, $0D, $FF, $CC, $E5, $1A
#_16C48A: db $FA, $65, $7F, $28, $37, $06, $0F
#_16C491: db $22 ; Byte Fill
#_16C492: db $00
#_16C493: db $14 ; Direct Copy
#_16C494: db $FF, $3E, $E6, $FB, $77, $39, $0F, $00
#_16C49C: db $7E, $B0, $BE, $58, $BE, $5C, $5E, $A4
#_16C4A4: db $FE, $14, $EC, $60, $F0
#_16C4A9: db $22 ; Byte Fill
#_16C4AA: db $00
#_16C4AB: db $07 ; Direct Copy
#_16C4AC: db $FE, $7E, $7E, $DE, $EE, $9C, $F0, $00
#_16C4B4: db $FF ; End of GFX A7

;===================================================================================================

GFX_A8:
#_16C4B5: db $25 ; Byte Fill
#_16C4B6: db $00
#_16C4B7: db $09 ; Direct Copy
#_16C4B8: db $06, $00, $0F, $06, $1B, $0B, $3C, $18
#_16C4C0: db $3F, $1C
#_16C4C2: db $22 ; Byte Fill
#_16C4C3: db $00
#_16C4C4: db $04 ; Direct Copy
#_16C4C5: db $06, $09, $14, $23, $20
#_16C4CA: db $25 ; Byte Fill
#_16C4CB: db $00
#_16C4CC: db $09 ; Direct Copy
#_16C4CD: db $60, $00, $F0, $60, $D8, $D0, $3C, $18
#_16C4D5: db $FC, $38
#_16C4D7: db $22 ; Byte Fill
#_16C4D8: db $00
#_16C4D9: db $04 ; Direct Copy
#_16C4DA: db $60, $90, $28, $C4, $04
#_16C4DF: db $23 ; Byte Fill
#_16C4E0: db $00
#_16C4E1: db $13 ; Direct Copy
#_16C4E2: db $18, $00, $3C, $00, $7F, $00, $7E, $01
#_16C4EA: db $7B, $14, $64, $23, $00, $00, $18, $2C
#_16C4F2: db $53, $5A, $6D, $5F
#_16C4F6: db $23 ; Byte Fill
#_16C4F7: db $00
#_16C4F8: db $83 ; Repeat Fill
#_16C4F9: db $34, $00 ; Repeat Fill bytes
#_16C4FB: db $0F ; Direct Copy
#_16C4FC: db $FE, $00, $7E, $80, $DE, $28, $26, $C4
#_16C504: db $00, $00, $18, $34, $CA, $5A, $B6, $FA
#_16C50C: db $23 ; Byte Fill
#_16C50D: db $00
#_16C50E: db $13 ; Direct Copy
#_16C50F: db $07, $00, $0D, $05, $17, $0A, $1A, $05
#_16C517: db $3D, $0B, $5E, $0D, $00, $00, $07, $0A
#_16C51F: db $11, $18, $35, $72
#_16C523: db $23 ; Byte Fill
#_16C524: db $00
#_16C525: db $13 ; Direct Copy
#_16C526: db $60, $00, $B0, $20, $E8, $50, $58, $A0
#_16C52E: db $BC, $D0, $7A, $B0, $00, $00, $60, $D0
#_16C536: db $88, $18, $AC, $4E
#_16C53A: db $2B ; Byte Fill
#_16C53B: db $00
#_16C53C: db $02 ; Direct Copy
#_16C53D: db $01, $00, $01
#_16C540: db $26 ; Byte Fill
#_16C541: db $00
#_16C542: db $19 ; Direct Copy
#_16C543: db $01, $01, $60, $00, $FC, $00, $F2, $0C
#_16C54B: db $5D, $02, $DA, $15, $BD, $22, $E8, $57
#_16C553: db $DC, $23, $60, $9C, $AE, $77, $ED, $DE
#_16C55B: db $BB, $64
#_16C55D: db $25 ; Byte Fill
#_16C55E: db $00
#_16C55F: db $01 ; Direct Copy
#_16C560: db $60, $00
#_16C562: db $43 ; Word Fill
#_16C563: db $B0, $60 ; Word Fill
#_16C565: db $03 ; Direct Copy
#_16C566: db $F7, $40, $7F, $15
#_16C56A: db $22 ; Byte Fill
#_16C56B: db $00
#_16C56C: db $04 ; Direct Copy
#_16C56D: db $60, $F0, $F0, $F7, $7F
#_16C572: db $25 ; Byte Fill
#_16C573: db $00
#_16C574: db $01 ; Direct Copy
#_16C575: db $06, $00
#_16C577: db $43 ; Word Fill
#_16C578: db $0D, $06 ; Word Fill
#_16C57A: db $03 ; Direct Copy
#_16C57B: db $EF, $02, $FE, $A8
#_16C57F: db $22 ; Byte Fill
#_16C580: db $00
#_16C581: db $1C ; Direct Copy
#_16C582: db $06, $0F, $0F, $EF, $FE, $00, $00, $02
#_16C58A: db $00, $0D, $02, $19, $06, $7D, $0A, $9D
#_16C592: db $17, $F7, $28, $F1, $5E, $00, $02, $0F
#_16C59A: db $1F, $7D, $ED, $DF, $FF
#_16C59F: db $29 ; Byte Fill
#_16C5A0: db $00
#_16C5A1: db $05 ; Direct Copy
#_16C5A2: db $80, $00, $B8, $00, $EC, $B8
#_16C5A8: db $24 ; Byte Fill
#_16C5A9: db $00
#_16C5AA: db $1A ; Direct Copy
#_16C5AB: db $80, $B8, $FC, $04, $00, $0B, $04, $0E
#_16C5B3: db $05, $1D, $03, $3C, $1B, $7E, $27, $7B
#_16C5BB: db $26, $73, $1E, $04, $0F, $0F, $1F, $3E
#_16C5C3: db $66, $77, $7F
#_16C5C6: db $23 ; Byte Fill
#_16C5C7: db $00
#_16C5C8: db $47 ; Word Fill
#_16C5C9: db $80, $00 ; Word Fill
#_16C5CB: db $05 ; Direct Copy
#_16C5CC: db $DC, $80, $F2, $DC, $00, $00
#_16C5D2: db $23 ; Byte Fill
#_16C5D3: db $80
#_16C5D4: db $01 ; Direct Copy
#_16C5D5: db $DC, $FE
#_16C5D7: db $2D ; Byte Fill
#_16C5D8: db $00
#_16C5D9: db $00 ; Direct Copy
#_16C5DA: db $01
#_16C5DB: db $27 ; Byte Fill
#_16C5DC: db $00
#_16C5DD: db $1E ; Direct Copy
#_16C5DE: db $01, $01, $00, $0F, $00, $18, $07, $13
#_16C5E6: db $0C, $6F, $10, $A4, $1B, $B0, $0F, $D8
#_16C5EE: db $47, $01, $0E, $10, $13, $6E, $E4, $F0
#_16C5F6: db $B8, $37, $17, $6F, $29, $7F, $36
#_16C5FD: db $43 ; Word Fill
#_16C5FE: db $7A, $30 ; Word Fill
#_16C600: db $13 ; Direct Copy
#_16C601: db $3C, $14, $17, $03, $03, $00, $28, $56
#_16C609: db $49, $4F, $4F, $2B, $14, $03, $EC, $E8
#_16C611: db $F6, $94, $FE, $6C
#_16C615: db $43 ; Word Fill
#_16C616: db $5E, $0C ; Word Fill
#_16C618: db $E0, $4A ; EXT Direct Copy
#_16C61A: db $3C, $28, $E8, $C0, $C0, $00, $14, $6A
#_16C622: db $92, $F2, $F2, $D4, $28, $C0, $37, $10
#_16C62A: db $7B, $27, $77, $3B, $3E, $17, $3F, $03
#_16C632: db $1F, $00, $0F, $00, $03, $00, $2F, $7F
#_16C63A: db $7F, $3F, $3F, $1F, $0F, $03, $EE, $08
#_16C642: db $FA, $E4, $7E, $EC, $1C, $F0, $3C, $E0
#_16C64A: db $F8, $00, $F0, $00, $C0, $00, $F6, $FE
#_16C652: db $FE, $FC, $FC, $F8, $F0, $C0, $5F, $08
#_16C65A: db $6F, $21, $7E, $10, $7A, $20, $7C, $34
#_16C662: db $37, $01, $01
#_16C665: db $22 ; Byte Fill
#_16C666: db $00
#_16C667: db $14 ; Direct Copy
#_16C668: db $77, $58, $6B, $5F, $4B, $36, $01, $00
#_16C670: db $FA, $10, $F6, $84, $7E, $08, $5E, $04
#_16C678: db $3E, $2C, $EC, $80, $80
#_16C67D: db $22 ; Byte Fill
#_16C67E: db $00
#_16C67F: db $0C ; Direct Copy
#_16C680: db $EE, $1A, $D6, $FA, $D2, $6C, $80, $00
#_16C688: db $01, $00, $03, $00, $01
#_16C68D: db $2A ; Byte Fill
#_16C68E: db $00
#_16C68F: db $02 ; Direct Copy
#_16C690: db $01, $02, $01
#_16C693: db $24 ; Byte Fill
#_16C694: db $00
#_16C695: db $08 ; Direct Copy
#_16C696: db $FC, $03, $DE, $21, $FF, $00, $F3, $0C
#_16C69E: db $3C
#_16C69F: db $86 ; Repeat Fill
#_16C6A0: db $B9, $01 ; Repeat Fill bytes
#_16C6A2: db $03 ; Direct Copy
#_16C6A3: db $47, $73, $31, $FC
#_16C6A7: db $83 ; Repeat Fill
#_16C6A8: db $C4, $01 ; Repeat Fill bytes
#_16C6AA: db $0A ; Direct Copy
#_16C6AB: db $6E, $3D, $6E, $3B, $3B, $17, $3C, $0F
#_16C6B3: db $0F, $07, $07
#_16C6B6: db $24 ; Byte Fill
#_16C6B7: db $00
#_16C6B8: db $12 ; Direct Copy
#_16C6B9: db $7F, $7F, $3B, $3C, $0F, $07, $00, $00
#_16C6C1: db $76, $BC, $76, $DC, $DC, $E8, $38, $E0
#_16C6C9: db $F0, $E0, $E0
#_16C6CC: db $24 ; Byte Fill
#_16C6CD: db $00
#_16C6CE: db $E0, $3F ; EXT Direct Copy
#_16C6D0: db $FE, $FE, $DC, $38, $F0, $E0, $00, $00
#_16C6D8: db $F8, $5F, $7D, $0F, $1F, $07, $0E, $01
#_16C6E0: db $05, $03, $0F, $07, $17, $07, $0F, $00
#_16C6E8: db $FF, $7F, $1F, $0F, $07, $0B, $19, $0F
#_16C6F0: db $C6, $BC, $6E, $FC, $BF, $EE, $FF, $F2
#_16C6F8: db $DA, $F0, $F0, $60, $E0, $80, $C0, $00
#_16C700: db $FE, $FE, $FF, $FF, $FA, $F0, $E0, $C0
#_16C708: db $7E, $23, $5F, $1F, $3F, $1C, $1E, $03
#_16C710: db $87 ; Repeat Fill
#_16C711: db $78, $02 ; Repeat Fill bytes
#_16C713: db $03 ; Direct Copy
#_16C714: db $5F, $6F, $3F, $1F
#_16C718: db $83 ; Repeat Fill
#_16C719: db $84, $02 ; Repeat Fill bytes
#_16C71B: db $0A ; Direct Copy
#_16C71C: db $43, $BE, $6F, $FE, $BF, $F6, $FF, $F2
#_16C724: db $DF, $F2, $F6
#_16C727: db $84 ; Repeat Fill
#_16C728: db $93, $02 ; Repeat Fill bytes
#_16C72A: db $24 ; Byte Fill
#_16C72B: db $FF
#_16C72C: db $E0, $56 ; EXT Direct Copy
#_16C72E: db $F6, $E0, $C0, $07, $01, $0F, $07, $1B
#_16C736: db $0F, $33, $1F, $31, $1F, $78, $3F, $65
#_16C73E: db $3F, $FB, $47, $07, $0F, $1F, $3F, $3F
#_16C746: db $7F, $67, $FB, $FF, $68, $FF, $8F, $F2
#_16C74E: db $10, $FA, $88, $FC, $84, $FF, $C3, $FF
#_16C756: db $E0, $FF, $A0, $87, $C0, $CF, $C7, $C3
#_16C75E: db $E0, $F0, $F0, $00, $00, $03, $00, $0F
#_16C766: db $03, $3C, $0C, $78, $08, $F8, $18, $F8
#_16C76E: db $08, $FC, $0C, $00, $03, $0C, $33, $57
#_16C776: db $A7, $97, $93, $00, $00, $C0, $00, $F0
#_16C77E: db $C0, $7C, $30, $FE, $10, $4F, $08
#_16C785: db $83 ; Repeat Fill
#_16C786: db $BA, $01 ; Repeat Fill bytes
#_16C788: db $07 ; Direct Copy
#_16C789: db $00, $C0, $30, $8C, $0A, $B5, $E9, $F9
#_16C791: db $25 ; Byte Fill
#_16C792: db $00
#_16C793: db $03 ; Direct Copy
#_16C794: db $01, $00, $06, $01
#_16C798: db $43 ; Word Fill
#_16C799: db $0C, $07 ; Word Fill
#_16C79B: db $01 ; Direct Copy
#_16C79C: db $1B, $0F
#_16C79E: db $22 ; Byte Fill
#_16C79F: db $00
#_16C7A0: db $04 ; Direct Copy
#_16C7A1: db $01, $07, $0F, $0F, $1F
#_16C7A6: db $25 ; Byte Fill
#_16C7A7: db $00
#_16C7A8: db $03 ; Direct Copy
#_16C7A9: db $80, $00, $60, $80
#_16C7AD: db $43 ; Word Fill
#_16C7AE: db $30, $E0 ; Word Fill
#_16C7B0: db $01 ; Direct Copy
#_16C7B1: db $98, $F0
#_16C7B3: db $22 ; Byte Fill
#_16C7B4: db $00
#_16C7B5: db $04 ; Direct Copy
#_16C7B6: db $80, $E0, $F0, $F0, $F8
#_16C7BB: db $83 ; Repeat Fill
#_16C7BC: db $9A, $00 ; Repeat Fill bytes
#_16C7BE: db $17 ; Direct Copy
#_16C7BF: db $0F, $01, $1F, $01, $2F, $10, $33, $0C
#_16C7C7: db $7D, $32, $5E, $19, $00, $01, $0F, $13
#_16C7CF: db $31, $3D, $4F, $67, $7E, $00, $FF, $42
#_16C7D7: db $44 ; Word Fill
#_16C7D8: db $FF, $81 ; Word Fill
#_16C7DA: db $07 ; Direct Copy
#_16C7DB: db $C3, $FF, $7E, $FF, $81, $7E, $DB, $7E
#_16C7E3: db $26 ; Byte Fill
#_16C7E4: db $FF
#_16C7E5: db $13 ; Direct Copy
#_16C7E6: db $01, $00, $03, $01, $0F, $00, $1F, $0C
#_16C7EE: db $3C, $1B, $36, $1D, $3E, $1D, $7D, $22
#_16C7F6: db $01, $03, $0F, $1E
#_16C7FA: db $22 ; Byte Fill
#_16C7FB: db $3F
#_16C7FC: db $18 ; Direct Copy
#_16C7FD: db $7E, $80, $00, $C0, $80, $F0, $00, $F8
#_16C805: db $30, $EC, $18, $DC, $28, $EC, $38, $FE
#_16C80D: db $04, $80, $C0, $F0, $78, $3C, $6C, $7C
#_16C815: db $3E
#_16C816: db $2D ; Byte Fill
#_16C817: db $00
#_16C818: db $00 ; Direct Copy
#_16C819: db $01
#_16C81A: db $27 ; Byte Fill
#_16C81B: db $00
#_16C81C: db $00 ; Direct Copy
#_16C81D: db $01
#_16C81E: db $23 ; Byte Fill
#_16C81F: db $00
#_16C820: db $85 ; Repeat Fill
#_16C821: db $A8, $00 ; Repeat Fill bytes
#_16C823: db $00 ; Direct Copy
#_16C824: db $DD
#_16C825: db $84 ; Repeat Fill
#_16C826: db $AF, $00 ; Repeat Fill bytes
#_16C828: db $0A ; Direct Copy
#_16C829: db $00, $00, $60, $9C, $AE, $F7, $ED, $DE
#_16C831: db $10, $00, $38
#_16C834: db $46 ; Word Fill
#_16C835: db $00, $7C ; Word Fill
#_16C837: db $43 ; Word Fill
#_16C838: db $38, $00 ; Word Fill
#_16C83A: db $0B ; Direct Copy
#_16C83B: db $28, $10, $10, $28, $44, $54, $54, $28
#_16C843: db $38, $28, $78, $00
#_16C847: db $45 ; Word Fill
#_16C848: db $90, $60 ; Word Fill
#_16C84A: db $01 ; Direct Copy
#_16C84B: db $76, $00
#_16C84D: db $45 ; Word Fill
#_16C84E: db $09, $06 ; Word Fill
#_16C850: db $07 ; Direct Copy
#_16C851: db $78, $90, $B0, $F0, $76, $0F, $0B, $09
#_16C859: db $83 ; Repeat Fill
#_16C85A: db $04, $00 ; Repeat Fill bytes
#_16C85C: db $0A ; Direct Copy
#_16C85D: db $09, $00, $0B, $02, $16, $08, $2E, $1C
#_16C865: db $3C, $18, $18
#_16C868: db $83 ; Repeat Fill
#_16C869: db $E9, $00 ; Repeat Fill bytes
#_16C86B: db $04 ; Direct Copy
#_16C86C: db $0D, $1E, $3E, $3C, $18
#_16C871: db $83 ; Repeat Fill
#_16C872: db $32, $00 ; Repeat Fill bytes
#_16C874: db $08 ; Direct Copy
#_16C875: db $24, $00, $2C, $08, $3C, $00, $24, $18
#_16C87D: db $2C
#_16C87E: db $83 ; Repeat Fill
#_16C87F: db $2D, $04 ; Repeat Fill bytes
#_16C881: db $02 ; Direct Copy
#_16C882: db $18, $3C, $34
#_16C885: db $22 ; Byte Fill
#_16C886: db $3C
#_16C887: db $E0, $B8 ; EXT Direct Copy
#_16C889: db $18, $CD, $03, $8D, $0B, $DD, $5B, $7D
#_16C891: db $32, $7D, $02, $3B, $05, $3A, $05, $15
#_16C899: db $0A, $FD, $F5, $A5, $4D, $7D, $3B, $3A
#_16C8A1: db $15, $FF, $B0, $EF, $78, $E7, $3C, $F3
#_16C8A9: db $4F, $CF, $40, $F0, $B0, $7F, $CF, $BF
#_16C8B1: db $70, $F8, $FC, $FF, $BF, $BF, $CF, $70
#_16C8B9: db $BF, $FF, $1F, $77, $35, $3A, $10, $3B
#_16C8C1: db $1A, $1F, $08, $1F, $01, $1F, $00, $08
#_16C8C9: db $00, $A0, $4A, $2F, $24, $10, $10, $17
#_16C8D1: db $08, $1F, $18, $E6, $A4, $54, $00, $9C
#_16C8D9: db $18, $F8, $10, $F8, $80, $F8, $00, $10
#_16C8E1: db $00, $E5, $5A, $FC, $64, $08, $08, $E8
#_16C8E9: db $10, $3C, $0F, $2E, $17, $4F, $33, $7F
#_16C8F1: db $08, $5F, $0C, $3F, $12, $1F, $0D, $0D
#_16C8F9: db $00, $3F, $2F, $4F, $7B, $7C, $2E, $13
#_16C901: db $0D, $3C, $F0, $74, $E8, $F2, $CC, $FE
#_16C909: db $10, $FA, $30, $FC, $48, $F8, $B0, $B0
#_16C911: db $00, $FC, $F4, $F2, $DE, $3E, $74, $C8
#_16C919: db $B0, $6F, $29, $7F, $20, $3F, $01, $23
#_16C921: db $1C, $1F, $01, $09, $06, $08, $07, $07
#_16C929: db $00, $57, $5B, $23, $3F, $1E, $09, $08
#_16C931: db $07, $24, $DB, $FF, $E7, $E7, $18, $C3
#_16C939: db $BD, $E7, $BD, $BD, $5A, $3C, $C3, $C3
#_16C941: db $00
#_16C942: db $23 ; Byte Fill
#_16C943: db $FF
#_16C944: db $E0, $34 ; EXT Direct Copy
#_16C946: db $7E, $BD, $3C, $C3, $5E, $2B, $7F, $2D
#_16C94E: db $77, $16, $33, $11, $3A, $18, $1C, $0C
#_16C956: db $0F, $03, $07, $00, $77, $73, $69, $2E
#_16C95E: db $27, $13, $0C, $07, $7A, $D4, $FE, $B4
#_16C966: db $EE, $68, $CC, $88, $5C, $18, $38, $30
#_16C96E: db $F0, $C0, $E0, $00, $EE, $CE, $96, $74
#_16C976: db $E4, $C8, $30, $E0, $01
#_16C97B: db $44 ; Word Fill
#_16C97C: db $00, $03 ; Word Fill
#_16C97E: db $00 ; Direct Copy
#_16C97F: db $01
#_16C980: db $28 ; Byte Fill
#_16C981: db $00
#_16C982: db $03 ; Direct Copy
#_16C983: db $01, $02, $02, $01
#_16C987: db $23 ; Byte Fill
#_16C988: db $00
#_16C989: db $17 ; Direct Copy
#_16C98A: db $E8, $57, $5C, $A3, $DC, $23, $DE, $21
#_16C992: db $DF, $20, $77, $08, $18, $07, $07, $00
#_16C99A: db $BB, $E4, $67, $63, $F1, $78, $1F, $07
#_16C9A2: db $4D ; Word Fill
#_16C9A3: db $28, $10 ; Word Fill
#_16C9A5: db $01 ; Direct Copy
#_16C9A6: db $10, $00
#_16C9A8: db $26 ; Byte Fill
#_16C9A9: db $28
#_16C9AA: db $00 ; Direct Copy
#_16C9AB: db $10
#_16C9AC: db $45 ; Word Fill
#_16C9AD: db $09, $06 ; Word Fill
#_16C9AF: db $47 ; Word Fill
#_16C9B0: db $05, $02 ; Word Fill
#_16C9B2: db $01 ; Direct Copy
#_16C9B3: db $02, $00
#_16C9B5: db $22 ; Byte Fill
#_16C9B6: db $09
#_16C9B7: db $23 ; Byte Fill
#_16C9B8: db $05
#_16C9B9: db $00 ; Direct Copy
#_16C9BA: db $02
#_16C9BB: db $E4, $2F ; EXT Byte Fill
#_16C9BD: db $00
#_16C9BE: db $43 ; Word Fill
#_16C9BF: db $17, $08 ; Word Fill
#_16C9C1: db $06 ; Direct Copy
#_16C9C2: db $0E, $00, $03, $01, $03, $00, $01
#_16C9C9: db $24 ; Byte Fill
#_16C9CA: db $00
#_16C9CB: db $0F ; Direct Copy
#_16C9CC: db $17, $17, $0F, $02, $03, $01, $00, $00
#_16C9D4: db $BF, $7F, $DF, $BF, $60, $5F, $FF, $E0
#_16C9DC: db $45 ; Word Fill
#_16C9DD: db $FF, $00 ; Word Fill
#_16C9DF: db $05 ; Direct Copy
#_16C9E0: db $3F, $00, $BF, $5F, $A0, $1F
#_16C9E6: db $22 ; Byte Fill
#_16C9E7: db $FF
#_16C9E8: db $00 ; Direct Copy
#_16C9E9: db $3F
#_16C9EA: db $FF ; End of GFX A8

;===================================================================================================

GFX_A9:
#_16C9EB: db $E0, $2F ; EXT Direct Copy
#_16C9ED: db $06, $00, $1F, $04, $3F, $1D, $6E, $22
#_16C9F5: db $DF, $5D, $FE, $3A, $FF, $7B, $F7, $75
#_16C9FD: db $06, $1B, $22, $5D, $A2, $C5, $84, $8A
#_16CA05: db $60, $00, $F8, $60, $E7, $18, $95, $0A
#_16CA0D: db $0A, $05, $8A, $05, $92, $0D, $F0, $EF
#_16CA15: db $60, $98, $E7, $F1, $F8, $F8, $F0, $10
#_16CA1D: db $23 ; Byte Fill
#_16CA1E: db $00
#_16CA1F: db $13 ; Direct Copy
#_16CA20: db $C0, $00, $F0, $C0, $F8, $70, $CC, $78
#_16CA28: db $CC, $70, $C6, $7C, $00, $00, $C0, $F0
#_16CA30: db $F8, $FC, $FC, $FE
#_16CA34: db $3B ; Byte Fill
#_16CA35: db $00
#_16CA36: db $07 ; Direct Copy
#_16CA37: db $60, $00, $F0, $00, $90, $60, $B0, $40
#_16CA3F: db $43 ; Word Fill
#_16CA40: db $D0, $60 ; Word Fill
#_16CA42: db $07 ; Direct Copy
#_16CA43: db $00, $00, $60, $F0, $F0, $D0, $F0, $F0
#_16CA4B: db $25 ; Byte Fill
#_16CA4C: db $00
#_16CA4D: db $09 ; Direct Copy
#_16CA4E: db $0E, $00, $1F, $08, $39, $07, $75, $2E
#_16CA56: db $7B, $3C
#_16CA58: db $22 ; Byte Fill
#_16CA59: db $00
#_16CA5A: db $04 ; Direct Copy
#_16CA5B: db $0E, $1F, $3F, $7D, $7B
#_16CA60: db $27 ; Byte Fill
#_16CA61: db $00
#_16CA62: db $07 ; Direct Copy
#_16CA63: db $0C, $00, $96, $0C, $E7, $1E, $E7, $DE
#_16CA6B: db $23 ; Byte Fill
#_16CA6C: db $00
#_16CA6D: db $03 ; Direct Copy
#_16CA6E: db $0C, $9E, $FF, $FF
#_16CA72: db $25 ; Byte Fill
#_16CA73: db $00
#_16CA74: db $03 ; Direct Copy
#_16CA75: db $03, $00, $06, $01
#_16CA79: db $44 ; Word Fill
#_16CA7A: db $0F, $00 ; Word Fill
#_16CA7C: db $23 ; Byte Fill
#_16CA7D: db $00
#_16CA7E: db $01 ; Direct Copy
#_16CA7F: db $03, $05
#_16CA81: db $22 ; Byte Fill
#_16CA82: db $08
#_16CA83: db $17 ; Direct Copy
#_16CA84: db $0B, $00, $1F, $03, $2F, $07, $FD, $01
#_16CA8C: db $7E, $86, $7F, $83, $3F, $D1, $3C, $D8
#_16CA94: db $0B, $14, $28, $D6, $E9, $D4, $EE, $E7
#_16CA9C: db $48 ; Word Fill
#_16CA9D: db $03, $01 ; Word Fill
#_16CA9F: db $06 ; Direct Copy
#_16CAA0: db $00, $07, $00, $0F, $04, $0D, $06
#_16CAA7: db $23 ; Byte Fill
#_16CAA8: db $02
#_16CAA9: db $15 ; Direct Copy
#_16CAAA: db $03, $07, $0F, $0F, $DC, $50, $DD, $49
#_16CAB2: db $B7, $0C, $B3, $1F, $B0, $1F, $B8, $2F
#_16CABA: db $BD, $A7, $3F, $06, $AF, $BE
#_16CAC0: db $22 ; Byte Fill
#_16CAC1: db $FF
#_16CAC2: db $02 ; Direct Copy
#_16CAC3: db $DF, $5F, $FF
#_16CAC6: db $23 ; Byte Fill
#_16CAC7: db $00
#_16CAC8: db $43 ; Word Fill
#_16CAC9: db $01, $00 ; Word Fill
#_16CACB: db $43 ; Word Fill
#_16CACC: db $03, $01 ; Word Fill
#_16CACE: db $1A ; Direct Copy
#_16CACF: db $06, $03, $07, $03, $00, $00, $01, $01
#_16CAD7: db $03, $03, $07, $07, $F8, $6F, $F8, $77
#_16CADF: db $FC, $FF, $AE, $FF, $AB, $FF, $69, $FF
#_16CAE7: db $D9, $FF, $D1
#_16CAEA: db $28 ; Byte Fill
#_16CAEB: db $FF
#_16CAEC: db $27 ; Byte Fill
#_16CAED: db $00
#_16CAEE: db $01 ; Direct Copy
#_16CAEF: db $01, $00
#_16CAF1: db $45 ; Word Fill
#_16CAF2: db $02, $01 ; Word Fill
#_16CAF4: db $23 ; Byte Fill
#_16CAF5: db $00
#_16CAF6: db $00 ; Direct Copy
#_16CAF7: db $01
#_16CAF8: db $22 ; Byte Fill
#_16CAF9: db $03
#_16CAFA: db $97 ; Repeat Fill
#_16CAFB: db $C0, $00 ; Repeat Fill bytes
#_16CAFD: db $E0, $57 ; EXT Direct Copy
#_16CAFF: db $1B, $05, $27, $19, $2B, $15, $23, $1D
#_16CB07: db $56, $2C, $7B, $0C, $A3, $5C, $97, $6C
#_16CB0F: db $16, $3A, $36, $3E, $6F, $4F, $DF, $EF
#_16CB17: db $7B, $32, $7F, $3A, $3F, $1B, $1F, $0B
#_16CB1F: db $1F, $0A, $1F, $0C, $0F, $04, $04, $00
#_16CB27: db $4D, $45, $24, $14, $15, $13, $0B, $04
#_16CB2F: db $E9, $96, $E7, $59, $D7, $AB, $E7, $98
#_16CB37: db $EF, $93, $FF, $81, $DF, $90, $B8, $00
#_16CB3F: db $61, $A7, $47, $47, $4F, $7F, $6F, $B8
#_16CB47: db $E6, $FC, $DE, $3C, $1E, $FC, $CE, $F4
#_16CB4F: db $FE, $78, $FA, $D0, $F2, $80, $BC, $00
#_16CB57: db $26 ; Byte Fill
#_16CB58: db $FE
#_16CB59: db $06 ; Direct Copy
#_16CB5A: db $BC, $03, $00, $05, $02, $05, $03
#_16CB61: db $43 ; Word Fill
#_16CB62: db $07, $02 ; Word Fill
#_16CB64: db $02 ; Direct Copy
#_16CB65: db $06, $02, $02
#_16CB68: db $22 ; Byte Fill
#_16CB69: db $00
#_16CB6A: db $00 ; Direct Copy
#_16CB6B: db $03
#_16CB6C: db $23 ; Byte Fill
#_16CB6D: db $07
#_16CB6E: db $E0, $27 ; EXT Direct Copy
#_16CB70: db $06, $02, $00, $DC, $60, $FA, $F4, $FA
#_16CB78: db $6C, $6E, $94, $2E, $94, $96, $64, $F4
#_16CB80: db $00, $90, $40, $FC, $FE, $FE, $6E, $4E
#_16CB88: db $96, $F4, $F0, $F7, $4D, $F6, $4D, $BE
#_16CB90: db $73, $FF, $2E, $7E, $0C, $0D, $04, $06
#_16CB98: db $22 ; Byte Fill
#_16CB99: db $00
#_16CB9A: db $14 ; Direct Copy
#_16CB9B: db $CF, $EF, $FF, $BF, $73, $0B, $06, $00
#_16CBA3: db $2F, $F6, $7F, $9A, $9F, $6C, $8E, $7C
#_16CBAB: db $5C, $78, $F8, $60, $70
#_16CBB0: db $22 ; Byte Fill
#_16CBB1: db $00
#_16CBB2: db $22 ; Byte Fill
#_16CBB3: db $FF
#_16CBB4: db $E0, $68 ; EXT Direct Copy
#_16CBB6: db $FE, $BC, $B8, $70, $00, $13, $0C, $1B
#_16CBBE: db $04, $1E, $03, $1F, $03, $1E, $05, $1D
#_16CBC6: db $0A, $1B, $06, $17, $0D, $1C, $14, $13
#_16CBCE: db $13, $15, $1B, $17, $1E, $3C, $D0, $7E
#_16CBD6: db $B4, $5A, $90, $D8, $40, $BC, $21, $FE
#_16CBDE: db $C0, $FF, $C2, $E3, $A3, $EF, $CF, $EF
#_16CBE6: db $BF, $DE, $3F, $3D, $5C, $05, $02, $0D
#_16CBEE: db $06, $07, $02, $03, $00, $06, $00, $04
#_16CBF6: db $00, $0A, $00, $05, $00, $07, $0F, $07
#_16CBFE: db $03, $07, $07, $0F, $05, $3F, $04, $3B
#_16CC06: db $0E, $79, $5F, $6D, $3E, $C6, $BF, $D3
#_16CC0E: db $3E, $ED, $3F, $F0, $5F, $FE, $FF, $BF
#_16CC16: db $FE, $7F, $FE, $FF, $FF, $07, $03, $07
#_16CC1E: db $00
#_16CC1F: db $43 ; Word Fill
#_16CC20: db $03, $01 ; Word Fill
#_16CC22: db $00 ; Direct Copy
#_16CC23: db $01
#_16CC24: db $26 ; Byte Fill
#_16CC25: db $00
#_16CC26: db $04 ; Direct Copy
#_16CC27: db $07, $07, $03, $03, $01
#_16CC2C: db $22 ; Byte Fill
#_16CC2D: db $00
#_16CC2E: db $43 ; Word Fill
#_16CC2F: db $95, $FF ; Word Fill
#_16CC31: db $0B ; Direct Copy
#_16CC32: db $35, $FF, $65, $FF, $E5, $3F, $6D, $3F
#_16CC3A: db $7F, $36, $36, $00
#_16CC3E: db $24 ; Byte Fill
#_16CC3F: db $FF
#_16CC40: db $02 ; Direct Copy
#_16CC41: db $7F, $7F, $36
#_16CC44: db $43 ; Word Fill
#_16CC45: db $04, $03 ; Word Fill
#_16CC47: db $00 ; Direct Copy
#_16CC48: db $06
#_16CC49: db $45 ; Word Fill
#_16CC4A: db $03, $05 ; Word Fill
#_16CC4C: db $43 ; Word Fill
#_16CC4D: db $02, $07 ; Word Fill
#_16CC4F: db $00 ; Direct Copy
#_16CC50: db $01
#_16CC51: db $26 ; Byte Fill
#_16CC52: db $07
#_16CC53: db $00 ; Direct Copy
#_16CC54: db $06
#_16CC55: db $97 ; Repeat Fill
#_16CC56: db $40, $02 ; Repeat Fill bytes
#_16CC58: db $08 ; Direct Copy
#_16CC59: db $5B, $2C, $AB, $54, $DB, $24, $37, $08
#_16CC61: db $16
#_16CC62: db $86 ; Repeat Fill
#_16CC63: db $61, $02 ; Repeat Fill bytes
#_16CC65: db $07 ; Direct Copy
#_16CC66: db $6F, $D7, $E5, $2B, $17, $07, $0F, $05
#_16CC6E: db $23 ; Byte Fill
#_16CC6F: db $00
#_16CC70: db $08 ; Direct Copy
#_16CC71: db $F0, $00, $7E, $00, $1F, $00, $07, $00
#_16CC79: db $01
#_16CC7A: db $24 ; Byte Fill
#_16CC7B: db $00
#_16CC7C: db $04 ; Direct Copy
#_16CC7D: db $F0, $7E, $1F, $07, $01
#_16CC82: db $22 ; Byte Fill
#_16CC83: db $00
#_16CC84: db $15 ; Direct Copy
#_16CC85: db $08, $00, $16, $08, $1D, $0A, $3B, $06
#_16CC8D: db $79, $36, $FD, $4E, $F7, $4D, $00, $08
#_16CC95: db $1E, $1F, $3F, $7D, $CD, $EF
#_16CC9B: db $25 ; Byte Fill
#_16CC9C: db $00
#_16CC9D: db $09 ; Direct Copy
#_16CC9E: db $0C, $00, $12, $0C, $A3, $1E, $E7, $9E
#_16CCA6: db $EF, $D6
#_16CCA8: db $22 ; Byte Fill
#_16CCA9: db $00
#_16CCAA: db $04 ; Direct Copy
#_16CCAB: db $0C, $1E, $BF, $FF, $FF
#_16CCB0: db $25 ; Byte Fill
#_16CCB1: db $00
#_16CCB2: db $09 ; Direct Copy
#_16CCB3: db $08, $00, $17, $08, $10, $0F, $23, $1E
#_16CCBB: db $3D, $06
#_16CCBD: db $22 ; Byte Fill
#_16CCBE: db $00
#_16CCBF: db $04 ; Direct Copy
#_16CCC0: db $08, $1F, $1F, $3F, $27
#_16CCC5: db $29 ; Byte Fill
#_16CCC6: db $00
#_16CCC7: db $05 ; Direct Copy
#_16CCC8: db $C0, $00, $FA, $C0, $B5, $EA
#_16CCCE: db $24 ; Byte Fill
#_16CCCF: db $00
#_16CCD0: db $02 ; Direct Copy
#_16CCD1: db $C0, $FA, $F5
#_16CCD4: db $83 ; Repeat Fill
#_16CCD5: db $0A, $01 ; Repeat Fill bytes
#_16CCD7: db $0B ; Direct Copy
#_16CCD8: db $03, $01, $02, $01, $0D, $02, $17, $08
#_16CCE0: db $13, $0E, $27, $1D
#_16CCE4: db $83 ; Repeat Fill
#_16CCE5: db $4B, $01 ; Repeat Fill bytes
#_16CCE7: db $E0, $4B ; EXT Direct Copy
#_16CCE9: db $0F, $1F, $1F, $3F, $F8, $00, $BE, $E0
#_16CCF1: db $7D, $9E, $F6, $78, $EC, $70, $E4, $F8
#_16CCF9: db $CC, $F0, $9E, $E0, $F8, $FE, $FF, $FE
#_16CD01: db $FC, $FC, $F4, $EE, $00, $00, $1C, $00
#_16CD09: db $32, $00, $7F, $00, $AE, $00, $B2, $00
#_16CD11: db $6E, $00, $31, $00, $00, $1C, $2E, $5D
#_16CD19: db $EF, $FF, $5F, $31, $00, $00, $70, $00
#_16CD21: db $98, $00, $7C, $00, $EA, $00, $95, $00
#_16CD29: db $ED, $00, $EF, $00, $00, $70, $E8, $F4
#_16CD31: db $EE, $F7, $FF, $7D
#_16CD35: db $27 ; Byte Fill
#_16CD36: db $00
#_16CD37: db $07 ; Direct Copy
#_16CD38: db $08, $00, $1D, $00, $3B, $05, $37, $0D
#_16CD40: db $23 ; Byte Fill
#_16CD41: db $00
#_16CD42: db $1B ; Direct Copy
#_16CD43: db $08, $15, $26, $2E, $26, $00, $7F, $06
#_16CD4B: db $FF, $0F, $7D, $2D, $FD, $05, $FE, $8E
#_16CD53: db $FF, $03, $F2, $A0, $26, $59, $B0, $52
#_16CD5B: db $AA, $51, $AC, $5F
#_16CD5F: db $43 ; Word Fill
#_16CD60: db $F0, $50 ; Word Fill
#_16CD62: db $E0, $2B ; EXT Direct Copy
#_16CD64: db $FB, $0B, $71, $11, $61, $21, $63, $22
#_16CD6C: db $66, $25, $24, $03, $AF, $AF, $F4, $6E
#_16CD74: db $5E, $5D, $5B, $3F, $7B, $48, $3C, $35
#_16CD7C: db $0F, $08, $E7, $27, $B8, $48, $6F, $92
#_16CD84: db $FB, $04, $FF, $00, $B7, $CA, $F7, $D8
#_16CD8C: db $F7, $9D, $07, $00
#_16CD90: db $43 ; Word Fill
#_16CD91: db $1F, $0F ; Word Fill
#_16CD93: db $13 ; Direct Copy
#_16CD94: db $3F, $1F, $7F, $3B, $FF, $1B, $FF, $07
#_16CD9C: db $5F, $0F, $7F, $07, $1F, $1F, $3F, $7F
#_16CDA4: db $FF, $BF, $7F, $5F
#_16CDA8: db $45 ; Word Fill
#_16CDA9: db $80, $FF ; Word Fill
#_16CDAB: db $43 ; Word Fill
#_16CDAC: db $C0, $FF ; Word Fill
#_16CDAE: db $05 ; Direct Copy
#_16CDAF: db $D0, $FF, $D1, $7F, $D9, $7F
#_16CDB5: db $27 ; Byte Fill
#_16CDB6: db $FF
#_16CDB7: db $27 ; Byte Fill
#_16CDB8: db $00
#_16CDB9: db $07 ; Direct Copy
#_16CDBA: db $38, $00, $5D, $20, $BB, $45, $B7, $6D
#_16CDC2: db $23 ; Byte Fill
#_16CDC3: db $00
#_16CDC4: db $09 ; Direct Copy
#_16CDC5: db $38, $65, $C6, $EE, $B0, $00, $F0, $00
#_16CDCD: db $D0, $20
#_16CDCF: db $83 ; Repeat Fill
#_16CDD0: db $68, $00 ; Repeat Fill bytes
#_16CDD2: db $16 ; Direct Copy
#_16CDD3: db $B0, $00, $90, $60, $70, $00, $D0, $90
#_16CDDB: db $B0, $F0, $D0, $D0, $F0, $70, $A7, $7D
#_16CDE3: db $7E, $03, $9F, $1F, $7F, $1C, $1C
#_16CDEA: db $26 ; Byte Fill
#_16CDEB: db $00
#_16CDEC: db $04 ; Direct Copy
#_16CDED: db $FF, $7F, $EF, $6F, $1C
#_16CDF2: db $22 ; Byte Fill
#_16CDF3: db $00
#_16CDF4: db $0C ; Direct Copy
#_16CDF5: db $3F, $F2, $1F, $FA, $CE, $F8, $F4, $B8
#_16CDFD: db $FE, $38, $3E, $1C, $1C
#_16CE02: db $22 ; Byte Fill
#_16CE03: db $00
#_16CE04: db $12 ; Direct Copy
#_16CE05: db $FF, $FF, $FE, $FC, $F6, $22, $1C, $00
#_16CE0D: db $5F, $23, $9B, $76, $7F, $1D, $1F, $01
#_16CE15: db $07, $01, $03
#_16CE18: db $24 ; Byte Fill
#_16CE19: db $00
#_16CE1A: db $03 ; Direct Copy
#_16CE1B: db $53, $97, $7F, $1F
#_16CE1F: db $83 ; Repeat Fill
#_16CE20: db $16, $01 ; Repeat Fill bytes
#_16CE22: db $05 ; Direct Copy
#_16CE23: db $9A, $E4, $24, $D8, $7A, $94
#_16CE29: db $43 ; Word Fill
#_16CE2A: db $7D, $82 ; Word Fill
#_16CE2C: db $18 ; Direct Copy
#_16CE2D: db $BE, $C0, $DC, $20, $30, $00, $E2, $E4
#_16CE35: db $B2, $91, $B9, $CA, $EC, $30, $3E, $05
#_16CE3D: db $5D, $23, $9B, $76, $7E, $1D, $1D, $02
#_16CE45: db $03
#_16CE46: db $24 ; Byte Fill
#_16CE47: db $00
#_16CE48: db $1F ; Direct Copy
#_16CE49: db $27, $53, $97, $7F, $1E, $03, $00, $00
#_16CE51: db $7D, $8A, $EA, $D4, $54, $A8, $7A, $84
#_16CE59: db $ED, $02, $CD, $02, $0E, $00, $04, $00
#_16CE61: db $9D, $F2, $E4, $92, $29, $C9, $0A, $04
#_16CE69: db $84 ; Repeat Fill
#_16CE6A: db $E0, $00 ; Repeat Fill bytes
#_16CE6C: db $05 ; Direct Copy
#_16CE6D: db $00, $0A, $05, $09, $07, $0C
#_16CE73: db $83 ; Repeat Fill
#_16CE74: db $98, $02 ; Repeat Fill bytes
#_16CE76: db $83 ; Repeat Fill
#_16CE77: db $BA, $00 ; Repeat Fill bytes
#_16CE79: db $E0, $58 ; EXT Direct Copy
#_16CE7B: db $0D, $0F, $0F, $07, $03, $D6, $00, $AC
#_16CE83: db $40, $70, $E0, $F0, $C0, $50, $A0, $30
#_16CE8B: db $E0, $E0, $C0, $C0, $00, $5A, $EC, $F0
#_16CE93: db $D0, $B0, $F0, $E0, $C0, $26, $1A, $3E
#_16CE9B: db $0A, $2F, $17, $3F, $06, $3F, $0C, $3F
#_16CEA3: db $18, $7D, $35, $F8, $68, $3D, $2D, $38
#_16CEAB: db $39, $33, $27, $4A, $97, $FC, $C4, $7F
#_16CEB3: db $03, $FE, $20, $C8, $40, $8E, $08, $8B
#_16CEBB: db $0A, $D0, $50, $F4, $B1, $3F, $EE, $DF
#_16CEC3: db $BF, $F7, $F5, $AF, $4E, $2C, $0B, $4E
#_16CECB: db $0B, $BF, $21, $F3, $00, $07, $02, $0F
#_16CED3: db $07
#_16CED4: db $43 ; Word Fill
#_16CED5: db $1F, $0F ; Word Fill
#_16CED7: db $19 ; Direct Copy
#_16CED8: db $37, $77, $DF, $F3, $07, $0F, $1F, $1F
#_16CEE0: db $FF, $00, $78, $87, $00, $FF, $C7, $FF
#_16CEE8: db $FF, $3F, $F0, $FF, $C0, $FF, $80, $FF
#_16CEF0: db $00, $87
#_16CEF2: db $25 ; Byte Fill
#_16CEF3: db $FF
#_16CEF4: db $0A ; Direct Copy
#_16CEF5: db $2F, $06, $3F, $01, $1B, $01, $0F, $00
#_16CEFD: db $07, $00, $03
#_16CF00: db $24 ; Byte Fill
#_16CF01: db $00
#_16CF02: db $17 ; Direct Copy
#_16CF03: db $3F, $2F, $1F, $0B, $06, $03, $00, $00
#_16CF0B: db $99, $FF, $39, $EF, $F3, $EE, $FF, $1C
#_16CF13: db $BF, $01, $EA, $00, $FF, $00, $15, $00
#_16CF1B: db $23 ; Byte Fill
#_16CF1C: db $FF
#_16CF1D: db $0F ; Direct Copy
#_16CF1E: db $FE, $BF, $EA, $15, $9E, $7A, $BE, $4A
#_16CF26: db $BF, $47, $BF, $46, $BF, $4C, $BF, $58
#_16CF2E: db $83 ; Repeat Fill
#_16CF2F: db $64, $05 ; Repeat Fill bytes
#_16CF31: db $07 ; Direct Copy
#_16CF32: db $FD, $CD, $C8, $C9, $F3, $E7, $4A, $97
#_16CF3A: db $FF ; End of GFX A9

;===================================================================================================

GFX_AA:
#_16CF3B: db $0F ; Direct Copy
#_16CF3C: db $80, $00, $40, $00, $20, $00, $13, $03
#_16CF44: db $0C, $04, $0D, $08, $12, $10, $15, $10
#_16CF4C: db $23 ; Byte Fill
#_16CF4D: db $00
#_16CF4E: db $03 ; Direct Copy
#_16CF4F: db $03, $02, $0D, $0A
#_16CF53: db $23 ; Byte Fill
#_16CF54: db $00
#_16CF55: db $0A ; Direct Copy
#_16CF56: db $18, $00, $C4, $C0, $30, $30, $D2, $10
#_16CF5E: db $EC, $08, $E8
#_16CF61: db $24 ; Byte Fill
#_16CF62: db $00
#_16CF63: db $03 ; Direct Copy
#_16CF64: db $C0, $20, $10, $10
#_16CF68: db $27 ; Byte Fill
#_16CF69: db $00
#_16CF6A: db $07 ; Direct Copy
#_16CF6B: db $08, $00, $05, $01, $02, $00, $05, $04
#_16CF73: db $25 ; Byte Fill
#_16CF74: db $00
#_16CF75: db $01 ; Direct Copy
#_16CF76: db $01, $02
#_16CF78: db $29 ; Byte Fill
#_16CF79: db $00
#_16CF7A: db $05 ; Direct Copy
#_16CF7B: db $80, $80, $40, $00, $B0, $20
#_16CF81: db $25 ; Byte Fill
#_16CF82: db $00
#_16CF83: db $01 ; Direct Copy
#_16CF84: db $80, $40
#_16CF86: db $E4, $27 ; EXT Byte Fill
#_16CF88: db $00
#_16CF89: db $07 ; Direct Copy
#_16CF8A: db $01, $02, $04, $08, $10, $20, $40, $80
#_16CF92: db $2F ; Byte Fill
#_16CF93: db $00
#_16CF94: db $07 ; Direct Copy
#_16CF95: db $10, $08, $0D, $E7, $3F, $0F, $56, $3E
#_16CF9D: db $2F ; Byte Fill
#_16CF9E: db $00
#_16CF9F: db $E0, $3A ; EXT Direct Copy
#_16CFA1: db $01, $01, $05, $05, $0B, $06, $03, $0E
#_16CFA9: db $00, $00, $03, $00, $C7, $00, $6E, $41
#_16CFB1: db $F4, $AB, $F9, $A6, $F7, $28, $EE, $51
#_16CFB9: db $00, $03, $C5, $A9, $5B, $5F, $DF, $B1
#_16CFC1: db $C0, $00, $20, $00, $A0, $80, $F8, $00
#_16CFC9: db $54, $A8, $B2, $6C, $FE, $70, $FA, $5C
#_16CFD1: db $C0, $E0, $60, $F8, $F4, $F2, $FE, $FE
#_16CFD9: db $03, $00, $07
#_16CFDC: db $44 ; Word Fill
#_16CFDD: db $00, $0F ; Word Fill
#_16CFDF: db $83 ; Repeat Fill
#_16CFE0: db $F2, $00 ; Repeat Fill bytes
#_16CFE2: db $0E ; Direct Copy
#_16CFE3: db $1C, $00, $1F, $00, $03, $04, $0B, $08
#_16CFEB: db $04, $0B, $14, $13, $E0, $00, $F0
#_16CFF2: db $44 ; Word Fill
#_16CFF3: db $00, $F8 ; Word Fill
#_16CFF5: db $83 ; Repeat Fill
#_16CFF6: db $0A, $01 ; Repeat Fill bytes
#_16CFF8: db $E0, $23 ; EXT Direct Copy
#_16CFFA: db $7C, $00, $FC, $00, $E0, $10, $E8, $08
#_16D002: db $50, $E8, $34, $14, $FE, $7F, $FD, $BF
#_16D00A: db $FB, $DF, $F7, $EF, $EF, $F7, $DF, $FB
#_16D012: db $BF, $FD, $7F, $FE, $FE, $FD, $FB, $F7
#_16D01A: db $EF, $DF, $BF, $7F
#_16D01E: db $97 ; Repeat Fill
#_16D01F: db $20, $01 ; Repeat Fill bytes
#_16D021: db $F0, $2F ; EXT Repeat Fill
#_16D023: db $20, $01 ; Repeat Fill bytes
#_16D025: db $0C ; Direct Copy
#_16D026: db $37, $10, $13, $10, $0F, $08, $0D, $04
#_16D02E: db $13, $02, $01, $00, $01
#_16D033: db $22 ; Byte Fill
#_16D034: db $00
#_16D035: db $03 ; Direct Copy
#_16D036: db $08, $0C, $00, $02
#_16D03A: db $23 ; Byte Fill
#_16D03B: db $00
#_16D03C: db $09 ; Direct Copy
#_16D03D: db $D8, $08, $A8, $08, $D0, $10, $30, $10
#_16D045: db $D0, $C0
#_16D047: db $25 ; Byte Fill
#_16D048: db $00
#_16D049: db $03 ; Direct Copy
#_16D04A: db $20, $50, $20, $C0
#_16D04E: db $23 ; Byte Fill
#_16D04F: db $00
#_16D050: db $06 ; Direct Copy
#_16D051: db $05, $04, $03, $00, $05, $00, $01
#_16D058: db $22 ; Byte Fill
#_16D059: db $00
#_16D05A: db $00 ; Direct Copy
#_16D05B: db $04
#_16D05C: db $24 ; Byte Fill
#_16D05D: db $00
#_16D05E: db $00 ; Direct Copy
#_16D05F: db $02
#_16D060: db $26 ; Byte Fill
#_16D061: db $00
#_16D062: db $06 ; Direct Copy
#_16D063: db $A0, $00, $40, $00, $80, $80, $10
#_16D06A: db $28 ; Byte Fill
#_16D06B: db $00
#_16D06C: db $01 ; Direct Copy
#_16D06D: db $40, $80
#_16D06F: db $35 ; Byte Fill
#_16D070: db $00
#_16D071: db $87 ; Repeat Fill
#_16D072: db $88, $00 ; Repeat Fill bytes
#_16D074: db $E4, $27 ; EXT Byte Fill
#_16D076: db $00
#_16D077: db $06 ; Direct Copy
#_16D078: db $0C, $1C, $37, $DE, $0A, $14, $04
#_16D07F: db $30 ; Byte Fill
#_16D080: db $00
#_16D081: db $04 ; Direct Copy
#_16D082: db $02, $1E, $03, $07, $0A
#_16D087: db $22 ; Byte Fill
#_16D088: db $00
#_16D089: db $12 ; Direct Copy
#_16D08A: db $DD, $A2, $9B, $65, $13, $ED, $47, $BB
#_16D092: db $E7, $1B, $FF, $03, $FF, $00, $3F, $00
#_16D09A: db $63, $E7, $EF
#_16D09D: db $23 ; Byte Fill
#_16D09E: db $FF
#_16D09F: db $0D ; Direct Copy
#_16D0A0: db $3F, $FA, $3C, $FD, $B2, $F3, $80, $EB
#_16D0A8: db $D0, $E5, $9A, $F1, $0E, $EE
#_16D0AE: db $22 ; Byte Fill
#_16D0AF: db $00
#_16D0B0: db $06 ; Direct Copy
#_16D0B1: db $FE, $FD, $FF, $EF, $E5, $F1, $EE
#_16D0B8: db $44 ; Word Fill
#_16D0B9: db $00, $1F ; Word Fill
#_16D0BB: db $43 ; Word Fill
#_16D0BC: db $1C, $00 ; Word Fill
#_16D0BE: db $83 ; Repeat Fill
#_16D0BF: db $F6, $00 ; Repeat Fill bytes
#_16D0C1: db $00 ; Direct Copy
#_16D0C2: db $03
#_16D0C3: db $22 ; Byte Fill
#_16D0C4: db $00
#_16D0C5: db $0A ; Direct Copy
#_16D0C6: db $14, $17, $14, $14, $0B, $04, $03, $00
#_16D0CE: db $FC, $00, $7C
#_16D0D1: db $44 ; Word Fill
#_16D0D2: db $00, $3C ; Word Fill
#_16D0D4: db $83 ; Repeat Fill
#_16D0D5: db $0E, $01 ; Repeat Fill bytes
#_16D0D7: db $00 ; Direct Copy
#_16D0D8: db $E0
#_16D0D9: db $22 ; Byte Fill
#_16D0DA: db $00
#_16D0DB: db $07 ; Direct Copy
#_16D0DC: db $B4, $74, $14, $14, $E8, $10, $E0, $00
#_16D0E4: db $F0, $5F ; EXT Repeat Fill
#_16D0E6: db $20, $01 ; Repeat Fill bytes
#_16D0E8: db $23 ; Byte Fill
#_16D0E9: db $00
#_16D0EA: db $0B ; Direct Copy
#_16D0EB: db $20, $00, $10, $00, $0B, $03, $04, $00
#_16D0F3: db $0A, $08, $09, $08
#_16D0F7: db $24 ; Byte Fill
#_16D0F8: db $00
#_16D0F9: db $02 ; Direct Copy
#_16D0FA: db $03, $05, $06
#_16D0FD: db $25 ; Byte Fill
#_16D0FE: db $00
#_16D0FF: db $09 ; Direct Copy
#_16D100: db $08, $00, $C0, $C0, $20, $20, $D0, $10
#_16D108: db $D8, $10
#_16D10A: db $24 ; Byte Fill
#_16D10B: db $00
#_16D10C: db $02 ; Direct Copy
#_16D10D: db $C0, $20, $20
#_16D110: db $2F ; Byte Fill
#_16D111: db $00
#_16D112: db $27 ; Byte Fill
#_16D113: db $01
#_16D114: db $E4, $47 ; EXT Byte Fill
#_16D116: db $00
#_16D117: db $17 ; Direct Copy
#_16D118: db $3C, $00, $7F, $34, $F3, $43, $C0, $40
#_16D120: db $C2, $40, $FC, $70, $F9, $39, $7F, $0F
#_16D128: db $3C, $4B, $BC, $BF, $BF, $8F, $C6, $70
#_16D130: db $23 ; Byte Fill
#_16D131: db $00
#_16D132: db $13 ; Direct Copy
#_16D133: db $C0, $00, $6E, $40, $F5, $AA, $F6, $A9
#_16D13B: db $FE, $21, $FC, $43, $00, $00, $C0, $AE
#_16D143: db $5B, $5D, $D9, $B3
#_16D147: db $25 ; Byte Fill
#_16D148: db $00
#_16D149: db $03 ; Direct Copy
#_16D14A: db $38, $00, $D4, $28
#_16D14E: db $85 ; Repeat Fill
#_16D14F: db $E2, $00 ; Repeat Fill bytes
#_16D151: db $22 ; Byte Fill
#_16D152: db $00
#_16D153: db $00 ; Direct Copy
#_16D154: db $38
#_16D155: db $83 ; Repeat Fill
#_16D156: db $EC, $00 ; Repeat Fill bytes
#_16D158: db $25 ; Byte Fill
#_16D159: db $00
#_16D15A: db $04 ; Direct Copy
#_16D15B: db $10, $00, $38, $00, $10
#_16D160: db $2E ; Byte Fill
#_16D161: db $00
#_16D162: db $0A ; Direct Copy
#_16D163: db $18, $00, $24, $00, $4A, $00, $42, $00
#_16D16B: db $44, $00, $38
#_16D16E: db $2A ; Byte Fill
#_16D16F: db $00
#_16D170: db $85 ; Repeat Fill
#_16D171: db $90, $03 ; Repeat Fill bytes
#_16D173: db $05 ; Direct Copy
#_16D174: db $C4, $40, $CE, $40, $FE, $60
#_16D17A: db $87 ; Repeat Fill
#_16D17B: db $9C, $03 ; Repeat Fill bytes
#_16D17D: db $03 ; Direct Copy
#_16D17E: db $BB, $91, $C6, $70
#_16D182: db $23 ; Byte Fill
#_16D183: db $00
#_16D184: db $12 ; Direct Copy
#_16D185: db $10, $40, $10, $04, $00, $28, $10, $39
#_16D18D: db $18, $BC, $00, $18, $00, $00, $40, $04
#_16D195: db $28, $19, $98
#_16D198: db $F0, $48 ; EXT Repeat Fill
#_16D19A: db $9F, $02 ; Repeat Fill bytes
#_16D19C: db $43 ; Word Fill
#_16D19D: db $0B, $08 ; Word Fill
#_16D19F: db $06 ; Direct Copy
#_16D1A0: db $05, $00, $03, $02, $01, $00, $04
#_16D1A7: db $24 ; Byte Fill
#_16D1A8: db $00
#_16D1A9: db $02 ; Direct Copy
#_16D1AA: db $04, $04, $02
#_16D1AD: db $24 ; Byte Fill
#_16D1AE: db $00
#_16D1AF: db $0A ; Direct Copy
#_16D1B0: db $D0, $00, $B0, $10, $60, $20, $C0, $C0
#_16D1B8: db $00, $00, $04
#_16D1BB: db $24 ; Byte Fill
#_16D1BC: db $00
#_16D1BD: db $02 ; Direct Copy
#_16D1BE: db $20, $40, $80
#_16D1C1: db $34 ; Byte Fill
#_16D1C2: db $00
#_16D1C3: db $27 ; Byte Fill
#_16D1C4: db $01
#_16D1C5: db $E4, $27 ; EXT Byte Fill
#_16D1C7: db $00
#_16D1C8: db $00 ; Direct Copy
#_16D1C9: db $FF
#_16D1CA: db $36 ; Byte Fill
#_16D1CB: db $00
#_16D1CC: db $00 ; Direct Copy
#_16D1CD: db $FF
#_16D1CE: db $26 ; Byte Fill
#_16D1CF: db $00
#_16D1D0: db $0C ; Direct Copy
#_16D1D1: db $6F, $23, $7F, $38, $3B, $04, $16, $09
#_16D1D9: db $18, $07, $0F, $00, $01
#_16D1DE: db $22 ; Byte Fill
#_16D1DF: db $00
#_16D1E0: db $11 ; Direct Copy
#_16D1E1: db $5C, $47, $3E, $19, $1F, $0F, $01, $00
#_16D1E9: db $F9, $86, $A5, $42, $27, $C4, $5F, $AD
#_16D1F1: db $EF, $13
#_16D1F3: db $85 ; Repeat Fill
#_16D1F4: db $4A, $02 ; Repeat Fill bytes
#_16D1F6: db $03 ; Direct Copy
#_16D1F7: db $7F, $FF, $FB, $F3
#_16D1FB: db $22 ; Byte Fill
#_16D1FC: db $FF
#_16D1FD: db $8D ; Repeat Fill
#_16D1FE: db $57, $02 ; Repeat Fill bytes
#_16D200: db $22 ; Byte Fill
#_16D201: db $00
#_16D202: db $86 ; Repeat Fill
#_16D203: db $68, $02 ; Repeat Fill bytes
#_16D205: db $24 ; Byte Fill
#_16D206: db $00
#_16D207: db $00 ; Direct Copy
#_16D208: db $18
#_16D209: db $44 ; Word Fill
#_16D20A: db $00, $24 ; Word Fill
#_16D20C: db $00 ; Direct Copy
#_16D20D: db $18
#_16D20E: db $2C ; Byte Fill
#_16D20F: db $00
#_16D210: db $04 ; Direct Copy
#_16D211: db $08, $00, $48, $00, $22
#_16D216: db $22 ; Byte Fill
#_16D217: db $00
#_16D218: db $00 ; Direct Copy
#_16D219: db $C3
#_16D21A: db $22 ; Byte Fill
#_16D21B: db $00
#_16D21C: db $02 ; Direct Copy
#_16D21D: db $2A, $00, $48
#_16D220: db $29 ; Byte Fill
#_16D221: db $00
#_16D222: db $17 ; Direct Copy
#_16D223: db $08, $44, $E8, $30, $2C, $10, $28, $24
#_16D22B: db $7E, $1C, $7E, $18, $7C, $00, $38, $08
#_16D233: db $68, $2C, $08, $3C, $1C, $18, $00, $10
#_16D23B: db $22 ; Byte Fill
#_16D23C: db $00
#_16D23D: db $08 ; Direct Copy
#_16D23E: db $04, $00, $10, $00, $18, $20, $00, $10
#_16D246: db $08
#_16D247: db $26 ; Byte Fill
#_16D248: db $00
#_16D249: db $02 ; Direct Copy
#_16D24A: db $20, $10, $00
#_16D24D: db $F0, $47 ; EXT Repeat Fill
#_16D24F: db $9F, $02 ; Repeat Fill bytes
#_16D251: db $00 ; Direct Copy
#_16D252: db $7F
#_16D253: db $FF ; End of GFX AA

;===================================================================================================

GFX_AB:
#_16D254: db $0A ; Direct Copy
#_16D255: db $03, $00, $1F, $00, $3F, $00, $7C, $00
#_16D25D: db $7B, $00, $F7
#_16D260: db $44 ; Word Fill
#_16D261: db $00, $EF ; Word Fill
#_16D263: db $1F ; Direct Copy
#_16D264: db $03, $1F, $3F, $7F, $7F, $FC, $F9, $FA
#_16D26C: db $E0, $00, $FC, $00, $FF, $00, $3F, $07
#_16D274: db $D1, $01, $EE, $0E, $F7, $07, $F7, $06
#_16D27C: db $E0, $FC, $FF, $F8, $FE, $31, $98, $D9
#_16D284: db $23 ; Byte Fill
#_16D285: db $00
#_16D286: db $18 ; Direct Copy
#_16D287: db $80, $00, $E0, $80, $F8, $E0, $7C, $00
#_16D28F: db $FE, $60, $FF, $10, $00, $00, $80, $60
#_16D297: db $18, $FC, $9E, $E1, $00, $00, $50, $00
#_16D29F: db $28
#_16D2A0: db $83 ; Repeat Fill
#_16D2A1: db $49, $00 ; Repeat Fill bytes
#_16D2A3: db $44 ; Word Fill
#_16D2A4: db $00, $04 ; Word Fill
#_16D2A6: db $00 ; Direct Copy
#_16D2A7: db $03
#_16D2A8: db $27 ; Byte Fill
#_16D2A9: db $00
#_16D2AA: db $00 ; Direct Copy
#_16D2AB: db $01
#_16D2AC: db $27 ; Byte Fill
#_16D2AD: db $00
#_16D2AE: db $01 ; Direct Copy
#_16D2AF: db $08, $08
#_16D2B1: db $26 ; Byte Fill
#_16D2B2: db $00
#_16D2B3: db $00 ; Direct Copy
#_16D2B4: db $01
#_16D2B5: db $23 ; Byte Fill
#_16D2B6: db $00
#_16D2B7: db $00 ; Direct Copy
#_16D2B8: db $02
#_16D2B9: db $2E ; Byte Fill
#_16D2BA: db $00
#_16D2BB: db $00 ; Direct Copy
#_16D2BC: db $01
#_16D2BD: db $23 ; Byte Fill
#_16D2BE: db $00
#_16D2BF: db $00 ; Direct Copy
#_16D2C0: db $02
#_16D2C1: db $22 ; Byte Fill
#_16D2C2: db $00
#_16D2C3: db $00 ; Direct Copy
#_16D2C4: db $01
#_16D2C5: db $23 ; Byte Fill
#_16D2C6: db $00
#_16D2C7: db $00 ; Direct Copy
#_16D2C8: db $07
#_16D2C9: db $84 ; Repeat Fill
#_16D2CA: db $01, $00 ; Repeat Fill bytes
#_16D2CC: db $11 ; Direct Copy
#_16D2CD: db $7F, $00, $DF, $01, $9F, $11, $00, $00
#_16D2D5: db $07, $1F, $3F, $5F, $BE, $6E, $08, $00
#_16D2DD: db $14, $00
#_16D2DF: db $83 ; Repeat Fill
#_16D2E0: db $A8, $00 ; Repeat Fill bytes
#_16D2E2: db $07 ; Direct Copy
#_16D2E3: db $0C, $00, $04, $00, $84, $00, $C3, $80
#_16D2EB: db $25 ; Byte Fill
#_16D2EC: db $00
#_16D2ED: db $02 ; Direct Copy
#_16D2EE: db $80, $41, $01
#_16D2F1: db $46 ; Word Fill
#_16D2F2: db $00, $03 ; Word Fill
#_16D2F4: db $02 ; Direct Copy
#_16D2F5: db $43, $40, $07
#_16D2F8: db $44 ; Word Fill
#_16D2F9: db $00, $06 ; Word Fill
#_16D2FB: db $00 ; Direct Copy
#_16D2FC: db $01
#_16D2FD: db $23 ; Byte Fill
#_16D2FE: db $03
#_16D2FF: db $22 ; Byte Fill
#_16D300: db $05
#_16D301: db $06 ; Direct Copy
#_16D302: db $82, $00, $C5, $00, $C2, $00, $E5
#_16D309: db $46 ; Word Fill
#_16D30A: db $00, $E2 ; Word Fill
#_16D30C: db $04 ; Direct Copy
#_16D30D: db $E3, $80, $80, $C0, $C0
#_16D312: db $23 ; Byte Fill
#_16D313: db $E0
#_16D314: db $00 ; Direct Copy
#_16D315: db $61
#_16D316: db $23 ; Byte Fill
#_16D317: db $00
#_16D318: db $07 ; Direct Copy
#_16D319: db $10, $18, $20, $24, $04, $24, $08, $18
#_16D321: db $25 ; Byte Fill
#_16D322: db $00
#_16D323: db $1D ; Direct Copy
#_16D324: db $18, $24, $24, $18, $00, $00, $3F, $E9
#_16D32C: db $FF, $83, $BF, $80, $9F, $83, $6C, $C4
#_16D334: db $55, $C3, $5F, $C0, $4F, $C0, $3B, $EF
#_16D33C: db $E3, $F4, $5B, $6D, $63, $70
#_16D342: db $27 ; Byte Fill
#_16D343: db $00
#_16D344: db $01 ; Direct Copy
#_16D345: db $02, $02
#_16D347: db $29 ; Byte Fill
#_16D348: db $00
#_16D349: db $00 ; Direct Copy
#_16D34A: db $10
#_16D34B: db $2E ; Byte Fill
#_16D34C: db $00
#_16D34D: db $06 ; Direct Copy
#_16D34E: db $08, $08, $40, $40, $00, $00, $20
#_16D355: db $24 ; Byte Fill
#_16D356: db $00
#_16D357: db $17 ; Direct Copy
#_16D358: db $FE, $7F, $FD, $BF, $FB, $DF, $F7, $EF
#_16D360: db $EF, $F7, $DF, $FB, $BF, $FD, $7F, $FE
#_16D368: db $FE, $FD, $FB, $F7, $EF, $DF, $BF, $7F
#_16D370: db $97 ; Repeat Fill
#_16D371: db $50, $01 ; Repeat Fill bytes
#_16D373: db $43 ; Word Fill
#_16D374: db $EF, $00 ; Word Fill
#_16D376: db $0E ; Direct Copy
#_16D377: db $F7, $00, $7B, $00, $78, $0C, $7C, $0F
#_16D37F: db $6C, $1E, $29, $1C, $FB, $F9, $FC
#_16D386: db $22 ; Byte Fill
#_16D387: db $7F
#_16D388: db $E0, $49 ; EXT Direct Copy
#_16D38A: db $6F, $2F, $F7, $04, $F3, $00, $EF, $0B
#_16D392: db $DF, $18, $3F, $3C, $3F, $3E, $DF, $1F
#_16D39A: db $EF, $0F, $DB, $9F, $34, $E7, $C3, $C1
#_16D3A2: db $E0, $30, $F7, $07, $FB, $3B, $FD, $7D
#_16D3AA: db $9E, $1E, $EF, $22, $F3, $0C, $FF, $00
#_16D3B2: db $FF, $10, $C8, $84, $02, $61, $9D, $DF
#_16D3BA: db $EC, $CF, $8F, $01, $DF, $8D, $FD, $93
#_16D3C2: db $BA, $49, $75, $C0, $EB, $92, $F7, $08
#_16D3CA: db $FB, $15, $8D, $5D, $7D, $B6, $7B, $ED
#_16D3D2: db $B7, $3B
#_16D3D4: db $2B ; Byte Fill
#_16D3D5: db $00
#_16D3D6: db $01 ; Direct Copy
#_16D3D7: db $02, $02
#_16D3D9: db $25 ; Byte Fill
#_16D3DA: db $00
#_16D3DB: db $00 ; Direct Copy
#_16D3DC: db $20
#_16D3DD: db $22 ; Byte Fill
#_16D3DE: db $00
#_16D3DF: db $43 ; Word Fill
#_16D3E0: db $03, $00 ; Word Fill
#_16D3E2: db $04 ; Direct Copy
#_16D3E3: db $86, $80, $06, $00, $0D
#_16D3E8: db $44 ; Word Fill
#_16D3E9: db $00, $0C ; Word Fill
#_16D3EB: db $12 ; Direct Copy
#_16D3EC: db $1A, $00, $02, $02, $05, $05, $0A, $0B
#_16D3F4: db $0B, $15, $1E, $10, $1F, $11, $1F, $19
#_16D3FC: db $DF, $19, $3F
#_16D3FF: db $46 ; Word Fill
#_16D400: db $18, $1F ; Word Fill
#_16D402: db $0B ; Direct Copy
#_16D403: db $EF, $EE, $E6, $26, $C7, $E7, $E6, $E7
#_16D40B: db $FF, $C1, $3F, $0D
#_16D40F: db $8B ; Repeat Fill
#_16D410: db $CC, $01 ; Repeat Fill bytes
#_16D412: db $01 ; Direct Copy
#_16D413: db $3D, $FD
#_16D415: db $85 ; Repeat Fill
#_16D416: db $DA, $01 ; Repeat Fill bytes
#_16D418: db $45 ; Word Fill
#_16D419: db $06, $00 ; Word Fill
#_16D41B: db $02 ; Direct Copy
#_16D41C: db $07, $00, $06
#_16D41F: db $46 ; Word Fill
#_16D420: db $00, $03 ; Word Fill
#_16D422: db $22 ; Byte Fill
#_16D423: db $05
#_16D424: db $01 ; Direct Copy
#_16D425: db $04, $05
#_16D427: db $22 ; Byte Fill
#_16D428: db $02
#_16D429: db $E0, $2F ; EXT Direct Copy
#_16D42B: db $EF, $81, $FF, $CD, $FD, $53, $7A, $49
#_16D433: db $75, $40, $6B, $52, $77, $48, $7B, $45
#_16D43B: db $6D, $3D, $3D, $B6, $BB, $AD, $B7, $BB
#_16D443: db $10, $18, $18, $7E, $00, $66, $C2, $C3
#_16D44B: db $43, $C3, $00, $66, $18, $7E, $08, $18
#_16D453: db $18, $1E, $06, $C3, $C3, $60, $78, $18
#_16D45B: db $97 ; Repeat Fill
#_16D45C: db $50, $01 ; Repeat Fill bytes
#_16D45E: db $01 ; Direct Copy
#_16D45F: db $04, $04
#_16D461: db $23 ; Byte Fill
#_16D462: db $00
#_16D463: db $01 ; Direct Copy
#_16D464: db $04, $04
#_16D466: db $35 ; Byte Fill
#_16D467: db $00
#_16D468: db $01 ; Direct Copy
#_16D469: db $40, $40
#_16D46B: db $27 ; Byte Fill
#_16D46C: db $00
#_16D46D: db $00 ; Direct Copy
#_16D46E: db $80
#_16D46F: db $26 ; Byte Fill
#_16D470: db $00
#_16D471: db $F0, $2F ; EXT Repeat Fill
#_16D473: db $50, $01 ; Repeat Fill bytes
#_16D475: db $43 ; Word Fill
#_16D476: db $23, $18 ; Word Fill
#_16D478: db $03 ; Direct Copy
#_16D479: db $29, $1C, $14, $0E
#_16D47D: db $43 ; Word Fill
#_16D47E: db $16, $0F ; Word Fill
#_16D480: db $43 ; Word Fill
#_16D481: db $08, $06 ; Word Fill
#_16D483: db $02 ; Direct Copy
#_16D484: db $2E, $2E, $2F
#_16D487: db $22 ; Byte Fill
#_16D488: db $17
#_16D489: db $0D ; Direct Copy
#_16D48A: db $0B, $0B, $F1, $00, $F7, $07, $EF, $0E
#_16D492: db $CF, $0F, $37, $07, $7A, $02
#_16D498: db $43 ; Word Fill
#_16D499: db $FD, $01 ; Word Fill
#_16D49B: db $E0, $37 ; EXT Direct Copy
#_16D49D: db $DF, $D8, $31, $F0, $F8, $CD, $B6, $B6
#_16D4A5: db $F3, $2C, $FF, $B0, $FB, $18, $F7, $06
#_16D4AD: db $FF, $E6, $7E, $41, $FB, $C2, $F7, $84
#_16D4B5: db $9F, $0C, $C7, $E9, $11, $BB, $35, $6B
#_16D4BD: db $DE, $39, $E7, $1C, $FA, $1D, $FF, $0D
#_16D4C5: db $F2, $0D, $7F, $80, $F1, $0E, $D6, $4F
#_16D4CD: db $FF, $BE, $3F, $DF, $92, $FF, $F1, $B6
#_16D4D5: db $32 ; Byte Fill
#_16D4D6: db $00
#_16D4D7: db $00 ; Direct Copy
#_16D4D8: db $08
#_16D4D9: db $23 ; Byte Fill
#_16D4DA: db $00
#_16D4DB: db $43 ; Word Fill
#_16D4DC: db $19, $00 ; Word Fill
#_16D4DE: db $13 ; Direct Copy
#_16D4DF: db $18, $00, $B0, $80, $30, $00, $38, $00
#_16D4E7: db $34, $00, $33, $00, $16, $16, $17, $2F
#_16D4EF: db $2F, $27, $2B, $2C
#_16D4F3: db $43 ; Word Fill
#_16D4F4: db $3E, $35 ; Word Fill
#_16D4F6: db $13 ; Direct Copy
#_16D4F7: db $BF, $30, $7F, $60, $7F, $68, $7F, $60
#_16D4FF: db $FF, $D8, $FE, $D0, $CA, $CA, $4B, $9D
#_16D507: db $96, $9F, $26, $2D
#_16D50B: db $89 ; Repeat Fill
#_16D50C: db $48, $03 ; Repeat Fill bytes
#_16D50E: db $05 ; Direct Copy
#_16D50F: db $BF, $00, $71, $6E, $F6, $0F
#_16D515: db $83 ; Repeat Fill
#_16D516: db $58, $03 ; Repeat Fill bytes
#_16D518: db $05 ; Direct Copy
#_16D519: db $D2, $7F, $91, $F6, $0B, $08
#_16D51F: db $43 ; Word Fill
#_16D520: db $03, $00 ; Word Fill
#_16D522: db $49 ; Word Fill
#_16D523: db $01, $00 ; Word Fill
#_16D525: db $22 ; Byte Fill
#_16D526: db $02
#_16D527: db $24 ; Byte Fill
#_16D528: db $01
#_16D529: db $17 ; Direct Copy
#_16D52A: db $FE, $59, $67, $5C, $7A, $6D, $BF, $2D
#_16D532: db $B2, $2D, $FF, $20, $B1, $2E, $B6, $2F
#_16D53A: db $3F, $BE, $9F, $5F, $52, $1F, $51, $56
#_16D542: db $23 ; Byte Fill
#_16D543: db $00
#_16D544: db $08 ; Direct Copy
#_16D545: db $03, $03, $01, $0F, $00, $1C, $00, $18
#_16D54D: db $20
#_16D54E: db $22 ; Byte Fill
#_16D54F: db $30
#_16D550: db $07 ; Direct Copy
#_16D551: db $00, $00, $03, $01, $00, $00, $20, $30
#_16D559: db $23 ; Byte Fill
#_16D55A: db $00
#_16D55B: db $08 ; Direct Copy
#_16D55C: db $80, $C0, $C0, $F0, $00, $38, $00, $18
#_16D564: db $08
#_16D565: db $22 ; Byte Fill
#_16D566: db $0C
#_16D567: db $07 ; Direct Copy
#_16D568: db $00, $00, $C0, $F0, $38, $18, $0C, $0C
#_16D570: db $2B ; Byte Fill
#_16D571: db $00
#_16D572: db $01 ; Direct Copy
#_16D573: db $10, $10
#_16D575: db $23 ; Byte Fill
#_16D576: db $00
#_16D577: db $00 ; Direct Copy
#_16D578: db $10
#_16D579: db $22 ; Byte Fill
#_16D57A: db $00
#_16D57B: db $00 ; Direct Copy
#_16D57C: db $02
#_16D57D: db $2E ; Byte Fill
#_16D57E: db $00
#_16D57F: db $83 ; Repeat Fill
#_16D580: db $A0, $02 ; Repeat Fill bytes
#_16D582: db $00 ; Direct Copy
#_16D583: db $48
#_16D584: db $22 ; Byte Fill
#_16D585: db $00
#_16D586: db $00 ; Direct Copy
#_16D587: db $20
#_16D588: db $F0, $30 ; EXT Repeat Fill
#_16D58A: db $4F, $01 ; Repeat Fill bytes
#_16D58C: db $06 ; Direct Copy
#_16D58D: db $04, $03, $05, $03, $02, $01, $01
#_16D594: db $28 ; Byte Fill
#_16D595: db $00
#_16D596: db $04 ; Direct Copy
#_16D597: db $05, $05, $02, $01, $20
#_16D59C: db $22 ; Byte Fill
#_16D59D: db $00
#_16D59E: db $0C ; Direct Copy
#_16D59F: db $7B, $03, $37, $87, $87, $CE, $0B, $FE
#_16D5A7: db $CD, $3E, $31, $0E, $0E
#_16D5AC: db $22 ; Byte Fill
#_16D5AD: db $00
#_16D5AE: db $10 ; Direct Copy
#_16D5AF: db $CC, $F8, $F9, $3D, $CF, $31, $0E, $00
#_16D5B7: db $FF, $03, $FC, $3C, $A3, $03, $1F, $0F
#_16D5BF: db $0F
#_16D5C0: db $26 ; Byte Fill
#_16D5C1: db $00
#_16D5C2: db $04 ; Direct Copy
#_16D5C3: db $FC, $C3, $BC, $10, $2F
#_16D5C8: db $22 ; Byte Fill
#_16D5C9: db $00
#_16D5CA: db $13 ; Direct Copy
#_16D5CB: db $BD, $A7, $73, $6E, $6E, $03, $89, $06
#_16D5D3: db $05, $03, $85, $83, $82, $81, $01, $00
#_16D5DB: db $5F, $92, $EF, $88
#_16D5DF: db $83 ; Repeat Fill
#_16D5E0: db $90, $04 ; Repeat Fill bytes
#_16D5E2: db $27 ; Byte Fill
#_16D5E3: db $00
#_16D5E4: db $01 ; Direct Copy
#_16D5E5: db $08, $08
#_16D5E7: db $2D ; Byte Fill
#_16D5E8: db $00
#_16D5E9: db $0C ; Direct Copy
#_16D5EA: db $31, $01, $33, $03, $37, $06, $3F, $0C
#_16D5F2: db $3C, $08, $1C, $00, $08
#_16D5F7: db $22 ; Byte Fill
#_16D5F8: db $00
#_16D5F9: db $10 ; Direct Copy
#_16D5FA: db $2E, $2C, $29, $23, $24, $14, $08, $00
#_16D602: db $FF, $A0, $FF, $47, $CC, $04, $07, $03
#_16D60A: db $03
#_16D60B: db $26 ; Byte Fill
#_16D60C: db $00
#_16D60D: db $04 ; Direct Copy
#_16D60E: db $5F, $B8, $CB, $04, $03
#_16D613: db $22 ; Byte Fill
#_16D614: db $00
#_16D615: db $0A ; Direct Copy
#_16D616: db $DD, $C7, $35, $2E, $BE, $B3, $DB, $C6
#_16D61E: db $E5, $C3, $C5
#_16D621: db $84 ; Repeat Fill
#_16D622: db $83, $04 ; Repeat Fill bytes
#_16D624: db $07 ; Direct Copy
#_16D625: db $3F, $D6, $4F, $3A, $25, $C5, $02, $01
#_16D62D: db $25 ; Byte Fill
#_16D62E: db $00
#_16D62F: db $01 ; Direct Copy
#_16D630: db $10, $10
#_16D632: db $2F ; Byte Fill
#_16D633: db $00
#_16D634: db $07 ; Direct Copy
#_16D635: db $FD, $37, $DD, $16, $DE, $13, $7B, $16
#_16D63D: db $43 ; Word Fill
#_16D63E: db $7D, $13 ; Word Fill
#_16D640: db $17 ; Direct Copy
#_16D641: db $32, $01, $01, $00, $8F, $AE, $AF, $4A
#_16D649: db $4D, $4D, $32, $01, $30, $30, $10, $30
#_16D651: db $00, $18, $00, $1C, $03, $0F, $01, $03
#_16D659: db $23 ; Byte Fill
#_16D65A: db $00
#_16D65B: db $13 ; Direct Copy
#_16D65C: db $30, $30, $18, $1C, $0F, $03, $00, $00
#_16D664: db $0C, $0C, $04, $0C, $00, $18, $00, $38
#_16D66C: db $80, $F0, $C0, $C0
#_16D670: db $23 ; Byte Fill
#_16D671: db $00
#_16D672: db $01 ; Direct Copy
#_16D673: db $0C, $04
#_16D675: db $83 ; Repeat Fill
#_16D676: db $0A, $04 ; Repeat Fill bytes
#_16D678: db $27 ; Byte Fill
#_16D679: db $00
#_16D67A: db $01 ; Direct Copy
#_16D67B: db $01, $01
#_16D67D: db $2A ; Byte Fill
#_16D67E: db $00
#_16D67F: db $00 ; Direct Copy
#_16D680: db $08
#_16D681: db $2D ; Byte Fill
#_16D682: db $00
#_16D683: db $01 ; Direct Copy
#_16D684: db $04, $04
#_16D686: db $25 ; Byte Fill
#_16D687: db $00
#_16D688: db $00 ; Direct Copy
#_16D689: db $10
#_16D68A: db $24 ; Byte Fill
#_16D68B: db $00
#_16D68C: db $F0, $2E ; EXT Repeat Fill
#_16D68E: db $50, $01 ; Repeat Fill bytes
#_16D690: db $00 ; Direct Copy
#_16D691: db $7F
#_16D692: db $FF ; End of GFX AB

;===================================================================================================

GFX_AC:
#_16D693: db $27 ; Byte Fill
#_16D694: db $00
#_16D695: db $07 ; Direct Copy
#_16D696: db $01, $00, $02, $01, $04, $03, $05, $03
#_16D69E: db $23 ; Byte Fill
#_16D69F: db $00
#_16D6A0: db $03 ; Direct Copy
#_16D6A1: db $01, $02, $04, $05
#_16D6A5: db $23 ; Byte Fill
#_16D6A6: db $00
#_16D6A7: db $13 ; Direct Copy
#_16D6A8: db $0F, $00, $70, $0F, $87, $7F, $3C, $FF
#_16D6B0: db $F0, $FF, $E3, $FC, $00, $00, $0F, $70
#_16D6B8: db $87, $3F, $FF, $FC
#_16D6BC: db $25 ; Byte Fill
#_16D6BD: db $00
#_16D6BE: db $85 ; Repeat Fill
#_16D6BF: db $08, $00 ; Repeat Fill bytes
#_16D6C1: db $03 ; Direct Copy
#_16D6C2: db $09, $07, $0B, $07
#_16D6C6: db $22 ; Byte Fill
#_16D6C7: db $00
#_16D6C8: db $04 ; Direct Copy
#_16D6C9: db $01, $02, $04, $09, $0B
#_16D6CE: db $87 ; Repeat Fill
#_16D6CF: db $1A, $00 ; Repeat Fill bytes
#_16D6D1: db $07 ; Direct Copy
#_16D6D2: db $3F, $FF, $F8, $FF, $E0, $FF, $C3, $FC
#_16D6DA: db $85 ; Repeat Fill
#_16D6DB: db $29, $00 ; Repeat Fill bytes
#_16D6DD: db $01 ; Direct Copy
#_16D6DE: db $FF, $FC
#_16D6E0: db $23 ; Byte Fill
#_16D6E1: db $00
#_16D6E2: db $87 ; Repeat Fill
#_16D6E3: db $36, $00 ; Repeat Fill bytes
#_16D6E5: db $04 ; Direct Copy
#_16D6E6: db $13, $0F, $17, $0F, $00
#_16D6EB: db $62 ; Increasing Fill
#_16D6EC: db $00 ; Increasing Fill Start
#_16D6ED: db $03 ; Direct Copy
#_16D6EE: db $04, $09, $13, $17
#_16D6F2: db $8D ; Repeat Fill
#_16D6F3: db $4A, $00 ; Repeat Fill bytes
#_16D6F5: db $01 ; Direct Copy
#_16D6F6: db $87, $F8
#_16D6F8: db $86 ; Repeat Fill
#_16D6F9: db $59, $00 ; Repeat Fill bytes
#_16D6FB: db $E0, $32 ; EXT Direct Copy
#_16D6FD: db $F8, $03, $00, $0F, $03, $1C, $0C, $1F
#_16D705: db $0E, $3B, $0B, $73, $31, $E3, $60, $E9
#_16D70D: db $60, $03, $0C, $13, $10, $34, $4C, $9C
#_16D715: db $9E, $80, $00, $F8, $80, $7C, $58, $E6
#_16D71D: db $24, $F6, $04, $F3, $02, $FF, $0E, $F7
#_16D725: db $04, $80, $78, $A4, $1A, $0A, $0D, $01
#_16D72D: db $8B, $00, $00
#_16D730: db $85 ; Repeat Fill
#_16D731: db $90, $00 ; Repeat Fill bytes
#_16D733: db $E0, $2A ; EXT Direct Copy
#_16D735: db $33, $10, $33, $02, $77, $32, $6B, $20
#_16D73D: db $00, $03, $0C, $13, $2C, $3C, $48, $5C
#_16D745: db $00, $00, $C0, $00, $F0, $C0, $18, $10
#_16D74D: db $EC, $08, $F4, $00, $F6, $04, $FE, $1C
#_16D755: db $00, $C0, $30, $E8, $14, $0C, $0A, $82
#_16D75D: db $01, $00, $03
#_16D760: db $44 ; Word Fill
#_16D761: db $00, $07 ; Word Fill
#_16D763: db $E0, $27 ; EXT Direct Copy
#_16D765: db $0F, $00, $09, $06, $15, $0A, $1A, $05
#_16D76D: db $01, $02, $05, $06, $09, $0F, $1F, $16
#_16D775: db $C1, $00, $FF, $00, $E7, $18, $FF, $00
#_16D77D: db $24, $DB, $00, $FF, $42, $BD, $FF, $42
#_16D785: db $C1, $7E, $A5, $DB, $24, $00, $42, $BD
#_16D78D: db $83 ; Repeat Fill
#_16D78E: db $06, $00 ; Repeat Fill bytes
#_16D790: db $16 ; Direct Copy
#_16D791: db $1B, $00, $3F, $00, $5E, $20, $5F, $20
#_16D799: db $4F, $30, $4D, $32, $00, $01, $1A, $25
#_16D7A1: db $62, $61, $71, $73, $00, $00, $81
#_16D7A8: db $8C ; Repeat Fill
#_16D7A9: db $09, $01 ; Repeat Fill bytes
#_16D7AB: db $01 ; Direct Copy
#_16D7AC: db $00, $81
#_16D7AE: db $85 ; Repeat Fill
#_16D7AF: db $19, $01 ; Repeat Fill bytes
#_16D7B1: db $23 ; Byte Fill
#_16D7B2: db $00
#_16D7B3: db $85 ; Repeat Fill
#_16D7B4: db $F0, $00 ; Repeat Fill bytes
#_16D7B6: db $04 ; Direct Copy
#_16D7B7: db $02, $00, $01, $00, $07
#_16D7BC: db $22 ; Byte Fill
#_16D7BD: db $00
#_16D7BE: db $05 ; Direct Copy
#_16D7BF: db $01, $02, $05, $02, $01, $07
#_16D7C5: db $23 ; Byte Fill
#_16D7C6: db $00
#_16D7C7: db $8B ; Repeat Fill
#_16D7C8: db $3A, $01 ; Repeat Fill bytes
#_16D7CA: db $00 ; Direct Copy
#_16D7CB: db $00
#_16D7CC: db $86 ; Repeat Fill
#_16D7CD: db $48, $01 ; Repeat Fill bytes
#_16D7CF: db $83 ; Repeat Fill
#_16D7D0: db $3C, $00 ; Repeat Fill bytes
#_16D7D2: db $00 ; Direct Copy
#_16D7D3: db $13
#_16D7D4: db $46 ; Word Fill
#_16D7D5: db $0F, $17 ; Word Fill
#_16D7D7: db $43 ; Word Fill
#_16D7D8: db $27, $1F ; Word Fill
#_16D7DA: db $02 ; Direct Copy
#_16D7DB: db $09, $0B, $13
#_16D7DE: db $22 ; Byte Fill
#_16D7DF: db $17
#_16D7E0: db $03 ; Direct Copy
#_16D7E1: db $27, $27, $C4, $FB
#_16D7E5: db $43 ; Word Fill
#_16D7E6: db $C0, $FF ; Word Fill
#_16D7E8: db $00 ; Direct Copy
#_16D7E9: db $E7
#_16D7EA: db $24 ; Byte Fill
#_16D7EB: db $FF
#_16D7EC: db $04 ; Direct Copy
#_16D7ED: db $F7, $F8, $D8, $E7, $FB
#_16D7F2: db $25 ; Byte Fill
#_16D7F3: db $FF
#_16D7F4: db $00 ; Direct Copy
#_16D7F5: db $D8
#_16D7F6: db $83 ; Repeat Fill
#_16D7F7: db $6C, $00 ; Repeat Fill bytes
#_16D7F9: db $00 ; Direct Copy
#_16D7FA: db $27
#_16D7FB: db $46 ; Word Fill
#_16D7FC: db $1F, $2F ; Word Fill
#_16D7FE: db $43 ; Word Fill
#_16D7FF: db $4F, $3F ; Word Fill
#_16D801: db $02 ; Direct Copy
#_16D802: db $13, $17, $27
#_16D805: db $22 ; Byte Fill
#_16D806: db $2F
#_16D807: db $05 ; Direct Copy
#_16D808: db $4F, $4F, $87, $F8, $84, $FB
#_16D80E: db $43 ; Word Fill
#_16D80F: db $80, $FF ; Word Fill
#_16D811: db $00 ; Direct Copy
#_16D812: db $C7
#_16D813: db $22 ; Byte Fill
#_16D814: db $FF
#_16D815: db $05 ; Direct Copy
#_16D816: db $E7, $F8, $18, $E7, $F8, $FB
#_16D81C: db $24 ; Byte Fill
#_16D81D: db $FF
#_16D81E: db $00 ; Direct Copy
#_16D81F: db $98
#_16D820: db $43 ; Word Fill
#_16D821: db $2F, $1F ; Word Fill
#_16D823: db $47 ; Word Fill
#_16D824: db $5F, $3F ; Word Fill
#_16D826: db $05 ; Direct Copy
#_16D827: db $9E, $7F, $B8, $7F, $2F, $2F
#_16D82D: db $23 ; Byte Fill
#_16D82E: db $5F
#_16D82F: db $03 ; Direct Copy
#_16D830: db $9F, $BC, $04, $FB
#_16D834: db $45 ; Word Fill
#_16D835: db $00, $FF ; Word Fill
#_16D837: db $08 ; Direct Copy
#_16D838: db $83, $FF, $CF, $FF, $87, $F8, $18, $E7
#_16D840: db $FB
#_16D841: db $24 ; Byte Fill
#_16D842: db $FF
#_16D843: db $E0, $39 ; EXT Direct Copy
#_16D845: db $9F, $18, $E5, $60, $74, $30, $77, $32
#_16D84D: db $3B, $09, $3C, $1C, $1F, $0F, $0F, $03
#_16D855: db $03, $00, $9F, $4B, $48, $34, $23, $10
#_16D85D: db $0C, $03, $67, $06, $0F, $0E, $EF, $0E
#_16D865: db $9E, $9C, $7C, $70, $F8, $F0, $F0, $C0
#_16D86D: db $C0, $00, $99, $F1, $11, $62, $8C, $08
#_16D875: db $30, $C0, $65, $20, $77, $30, $3B, $0B
#_16D87D: db $3D, $1D
#_16D87F: db $84 ; Repeat Fill
#_16D880: db $1A, $02 ; Repeat Fill bytes
#_16D882: db $22 ; Byte Fill
#_16D883: db $00
#_16D884: db $0F ; Direct Copy
#_16D885: db $5F, $48, $34, $22, $10, $0C, $03, $00
#_16D88D: db $6E, $0C, $8E, $0C, $9C, $18, $7C, $78
#_16D895: db $84 ; Repeat Fill
#_16D896: db $32, $02 ; Repeat Fill bytes
#_16D898: db $22 ; Byte Fill
#_16D899: db $00
#_16D89A: db $E0, $31 ; EXT Direct Copy
#_16D89C: db $92, $72, $64, $84, $08, $30, $C0, $00
#_16D8A4: db $0A, $05, $0D, $02, $0A, $04, $0C, $00
#_16D8AC: db $0D, $01, $2B, $02, $56, $04, $2C, $08
#_16D8B4: db $0E, $0D, $0B, $0F, $0E, $2D, $7A, $34
#_16D8BC: db $BD, $18, $C3, $81, $E7, $00, $BD, $66
#_16D8C4: db $C3, $7E, $7E, $18, $DB, $24, $A5, $5A
#_16D8CC: db $E7, $7E
#_16D8CE: db $22 ; Byte Fill
#_16D8CF: db $FF
#_16D8D0: db $E0, $22 ; EXT Direct Copy
#_16D8D2: db $7E, $DB, $E7, $22, $1D, $32, $0D, $7C
#_16D8DA: db $03, $79, $06, $4A, $34, $34, $08, $15
#_16D8E2: db $09, $0B, $02, $3E, $3E, $5C, $49, $7B
#_16D8EA: db $37, $16, $0D, $FF, $42, $BD, $18, $42
#_16D8F2: db $81, $E7, $42
#_16D8F5: db $83 ; Repeat Fill
#_16D8F6: db $8E, $02 ; Repeat Fill bytes
#_16D8F8: db $06 ; Direct Copy
#_16D8F9: db $FF, $18, $DB, $25, $BD, $E7, $7E
#_16D900: db $23 ; Byte Fill
#_16D901: db $FF
#_16D902: db $18 ; Direct Copy
#_16D903: db $DB, $3D, $02, $7A, $05, $F2, $0D, $84
#_16D90B: db $7B, $69, $16, $3A, $04, $74, $08, $F5
#_16D913: db $09, $3B, $46, $8E, $FC, $79, $3B, $57
#_16D91B: db $96
#_16D91C: db $83 ; Repeat Fill
#_16D91D: db $14, $01 ; Repeat Fill bytes
#_16D91F: db $8B ; Repeat Fill
#_16D920: db $BA, $02 ; Repeat Fill bytes
#_16D922: db $03 ; Direct Copy
#_16D923: db $42, $BD, $E7, $7E
#_16D927: db $23 ; Byte Fill
#_16D928: db $FF
#_16D929: db $07 ; Direct Copy
#_16D92A: db $26, $1F, $24, $1F, $11, $0F, $33, $0F
#_16D932: db $43 ; Word Fill
#_16D933: db $73, $2F ; Word Fill
#_16D935: db $E0, $3B ; EXT Direct Copy
#_16D937: db $49, $37, $34, $0B, $26, $24, $11, $33
#_16D93F: db $73, $73, $49, $34, $27, $DF, $5C, $BF
#_16D947: db $D0, $BF, $A2, $7D, $8B, $74, $D7, $2B
#_16D94F: db $DE, $26, $4D, $B4, $27, $5F, $DF, $BD
#_16D957: db $B7, $EC, $E9, $7B, $48, $3F, $42, $3F
#_16D95F: db $27, $1F, $67, $1F, $E7, $5F, $E3, $5F
#_16D967: db $91, $6F, $78, $17, $4C, $4A, $27, $67
#_16D96F: db $E7, $E3, $91, $78
#_16D973: db $97 ; Repeat Fill
#_16D974: db $18, $03 ; Repeat Fill bytes
#_16D976: db $04 ; Direct Copy
#_16D977: db $B0, $7F, $A0, $7F, $43
#_16D97C: db $44 ; Word Fill
#_16D97D: db $3F, $C7 ; Word Fill
#_16D97F: db $10 ; Direct Copy
#_16D980: db $A7, $5F, $E3, $5F, $B1, $6F, $B8, $A0
#_16D988: db $43, $C7, $C7, $E7, $E3, $B1, $27, $DF
#_16D990: db $DC
#_16D991: db $8A ; Repeat Fill
#_16D992: db $1B, $03 ; Repeat Fill bytes
#_16D994: db $03 ; Direct Copy
#_16D995: db $CD, $B4, $27, $DF
#_16D999: db $84 ; Repeat Fill
#_16D99A: db $2A, $03 ; Repeat Fill bytes
#_16D99C: db $00 ; Direct Copy
#_16D99D: db $FB
#_16D99E: db $23 ; Byte Fill
#_16D99F: db $00
#_16D9A0: db $13 ; Direct Copy
#_16D9A1: db $07, $00, $0F, $07, $1C, $0C, $3D, $1C
#_16D9A9: db $3B, $1A, $7D, $34, $00, $00, $07, $08
#_16D9B1: db $13, $22, $24, $4A
#_16D9B5: db $23 ; Byte Fill
#_16D9B6: db $00
#_16D9B7: db $0A ; Direct Copy
#_16D9B8: db $C0, $00, $F8, $C0, $38, $30, $DC, $18
#_16D9C0: db $EC, $08, $EC
#_16D9C3: db $22 ; Byte Fill
#_16D9C4: db $00
#_16D9C5: db $05 ; Direct Copy
#_16D9C6: db $C0, $38, $C8, $24, $14, $9C
#_16D9CC: db $43 ; Word Fill
#_16D9CD: db $7F, $36 ; Word Fill
#_16D9CF: db $07 ; Direct Copy
#_16D9D0: db $3F, $12, $3D, $10, $2E, $00, $6E, $04
#_16D9D8: db $43 ; Word Fill
#_16D9D9: db $56, $00 ; Word Fill
#_16D9DB: db $07 ; Direct Copy
#_16D9DC: db $49, $49, $2D, $2F, $3F, $7B, $7F, $7F
#_16D9E4: db $43 ; Word Fill
#_16D9E5: db $F7, $22 ; Word Fill
#_16D9E7: db $06 ; Direct Copy
#_16D9E8: db $FF, $22, $DF, $02, $D5, $00, $95
#_16D9EF: db $44 ; Word Fill
#_16D9F0: db $00, $AA ; Word Fill
#_16D9F2: db $08 ; Direct Copy
#_16D9F3: db $D5, $D5, $DD, $FD, $FF, $FF, $FE, $FE
#_16D9FB: db $18
#_16D9FC: db $2E ; Byte Fill
#_16D9FD: db $00
#_16D9FE: db $00 ; Direct Copy
#_16D9FF: db $18
#_16DA00: db $26 ; Byte Fill
#_16DA01: db $00
#_16DA02: db $05 ; Direct Copy
#_16DA03: db $5A, $24, $BD, $18, $99, $00
#_16DA09: db $43 ; Word Fill
#_16DA0A: db $5A, $18 ; Word Fill
#_16DA0C: db $45 ; Word Fill
#_16DA0D: db $3C, $18 ; Word Fill
#_16DA0F: db $0E ; Direct Copy
#_16DA10: db $7E, $FF, $FF, $66, $66, $24, $24, $3C
#_16DA18: db $0B, $02, $36, $04, $4C, $08, $38
#_16DA1F: db $28 ; Byte Fill
#_16DA20: db $00
#_16DA21: db $03 ; Direct Copy
#_16DA22: db $0D, $3A, $74, $38
#_16DA26: db $23 ; Byte Fill
#_16DA27: db $00
#_16DA28: db $01 ; Direct Copy
#_16DA29: db $A5, $5A
#_16DA2B: db $85 ; Repeat Fill
#_16DA2C: db $08, $04 ; Repeat Fill bytes
#_16DA2E: db $02 ; Direct Copy
#_16DA2F: db $5B, $18, $5A
#_16DA32: db $44 ; Word Fill
#_16DA33: db $18, $3C ; Word Fill
#_16DA35: db $83 ; Repeat Fill
#_16DA36: db $98, $02 ; Repeat Fill bytes
#_16DA38: db $0C ; Direct Copy
#_16DA39: db $67, $66, $24, $24, $ED, $11, $4D, $31
#_16DA41: db $3B, $02, $12, $00, $0C
#_16DA46: db $26 ; Byte Fill
#_16DA47: db $00
#_16DA48: db $04 ; Direct Copy
#_16DA49: db $9E, $7E, $3D, $1E, $0C
#_16DA4E: db $22 ; Byte Fill
#_16DA4F: db $00
#_16DA50: db $83 ; Repeat Fill
#_16DA51: db $94, $02 ; Repeat Fill bytes
#_16DA53: db $85 ; Repeat Fill
#_16DA54: db $08, $04 ; Repeat Fill bytes
#_16DA56: db $43 ; Word Fill
#_16DA57: db $5A, $18 ; Word Fill
#_16DA59: db $02 ; Direct Copy
#_16DA5A: db $3C, $18, $DB
#_16DA5D: db $83 ; Repeat Fill
#_16DA5E: db $98, $02 ; Repeat Fill bytes
#_16DA60: db $0B ; Direct Copy
#_16DA61: db $66, $66, $24, $1B, $0C, $14, $0F, $09
#_16DA69: db $07, $09, $06, $07
#_16DA6D: db $26 ; Byte Fill
#_16DA6E: db $00
#_16DA6F: db $04 ; Direct Copy
#_16DA70: db $1B, $14, $0B, $09, $07
#_16DA75: db $22 ; Byte Fill
#_16DA76: db $00
#_16DA77: db $0C ; Direct Copy
#_16DA78: db $2D, $D4, $1E, $E2, $87, $F8, $77, $EF
#_16DA80: db $14, $EF, $E8, $07, $07
#_16DA85: db $22 ; Byte Fill
#_16DA86: db $00
#_16DA87: db $12 ; Direct Copy
#_16DA88: db $3B, $1D, $C7, $7F, $17, $E8, $07, $00
#_16DA90: db $3E, $19, $24, $1F, $14, $0F, $13, $0D
#_16DA98: db $0E, $01, $01
#_16DA9B: db $24 ; Byte Fill
#_16DA9C: db $00
#_16DA9D: db $05 ; Direct Copy
#_16DA9E: db $3E, $2C, $15, $13, $0E, $01
#_16DAA4: db $87 ; Repeat Fill
#_16DAA5: db $96, $04 ; Repeat Fill bytes
#_16DAA7: db $04 ; Direct Copy
#_16DAA8: db $67, $BF, $F9, $EE, $16
#_16DAAD: db $84 ; Repeat Fill
#_16DAAE: db $A1, $04 ; Repeat Fill bytes
#_16DAB0: db $14 ; Direct Copy
#_16DAB1: db $3B, $1D, $87, $AF, $FE, $17, $E8, $07
#_16DAB9: db $78, $17, $46, $39, $59, $37, $2D, $1F
#_16DAC1: db $11, $0E, $0F, $00, $01
#_16DAC6: db $22 ; Byte Fill
#_16DAC7: db $00
#_16DAC8: db $08 ; Direct Copy
#_16DAC9: db $78, $5E, $55, $2D, $11, $0F, $01, $00
#_16DAD1: db $AD
#_16DAD2: db $84 ; Repeat Fill
#_16DAD3: db $99, $04 ; Repeat Fill bytes
#_16DAD5: db $1C ; Direct Copy
#_16DAD6: db $30, $FF, $D3, $3C, $C9, $FE, $37, $CF
#_16DADE: db $CF, $00, $BB, $1D, $87, $F8, $3C, $CE
#_16DAE6: db $37, $CF, $7F, $3A, $7B, $39, $3D, $1C
#_16DAEE: db $1E, $0E, $1F, $0E, $0E
#_16DAF3: db $24 ; Byte Fill
#_16DAF4: db $00
#_16DAF5: db $12 ; Direct Copy
#_16DAF6: db $45, $44, $22, $11, $11, $0E, $00, $00
#_16DAFE: db $EC, $28, $1C, $18, $F8, $70, $78, $70
#_16DB06: db $F0, $E0, $E0
#_16DB09: db $24 ; Byte Fill
#_16DB0A: db $00
#_16DB0B: db $12 ; Direct Copy
#_16DB0C: db $14, $E4, $08, $88, $10, $E0, $00, $00
#_16DB14: db $5D, $00, $7D, $00, $7F, $00, $27, $00
#_16DB1C: db $03, $00, $01
#_16DB1F: db $24 ; Byte Fill
#_16DB20: db $00
#_16DB21: db $14 ; Direct Copy
#_16DB22: db $77, $57, $5D, $25, $03, $01, $00, $00
#_16DB2A: db $5A, $00, $7A, $00, $7C, $00, $5C, $00
#_16DB32: db $C8, $00, $C0, $00, $80
#_16DB37: db $22 ; Byte Fill
#_16DB38: db $00
#_16DB39: db $06 ; Direct Copy
#_16DB3A: db $FE, $DE, $F4, $D4, $48, $40, $80
#_16DB41: db $38 ; Byte Fill
#_16DB42: db $00
#_16DB43: db $43 ; Word Fill
#_16DB44: db $24, $18 ; Word Fill
#_16DB46: db $00 ; Direct Copy
#_16DB47: db $18
#_16DB48: db $2A ; Byte Fill
#_16DB49: db $00
#_16DB4A: db $02 ; Direct Copy
#_16DB4B: db $3C, $3C, $18
#_16DB4E: db $3C ; Byte Fill
#_16DB4F: db $00
#_16DB50: db $00 ; Direct Copy
#_16DB51: db $3C
#_16DB52: db $44 ; Word Fill
#_16DB53: db $18, $24 ; Word Fill
#_16DB55: db $00 ; Direct Copy
#_16DB56: db $18
#_16DB57: db $28 ; Byte Fill
#_16DB58: db $00
#_16DB59: db $22 ; Byte Fill
#_16DB5A: db $3C
#_16DB5B: db $00 ; Direct Copy
#_16DB5C: db $18
#_16DB5D: db $3B ; Byte Fill
#_16DB5E: db $00
#_16DB5F: db $43 ; Word Fill
#_16DB60: db $3C, $18 ; Word Fill
#_16DB62: db $43 ; Word Fill
#_16DB63: db $24, $18 ; Word Fill
#_16DB65: db $00 ; Direct Copy
#_16DB66: db $18
#_16DB67: db $26 ; Byte Fill
#_16DB68: db $00
#_16DB69: db $00 ; Direct Copy
#_16DB6A: db $24
#_16DB6B: db $22 ; Byte Fill
#_16DB6C: db $3C
#_16DB6D: db $00 ; Direct Copy
#_16DB6E: db $18
#_16DB6F: db $22 ; Byte Fill
#_16DB70: db $00
#_16DB71: db $FF ; End of GFX AC

;===================================================================================================

GFX_AD:
#_16DB72: db $37 ; Byte Fill
#_16DB73: db $00
#_16DB74: db $44 ; Word Fill
#_16DB75: db $01, $00 ; Word Fill
#_16DB77: db $22 ; Byte Fill
#_16DB78: db $00
#_16DB79: db $07 ; Direct Copy
#_16DB7A: db $78, $00, $CF, $00, $E4, $78, $70, $3F
#_16DB82: db $22 ; Byte Fill
#_16DB83: db $01
#_16DB84: db $0C ; Direct Copy
#_16DB85: db $00, $78, $F7, $FB, $7F, $E0, $00, $93
#_16DB8D: db $E0, $CF, $F0, $FF, $40
#_16DB92: db $43 ; Word Fill
#_16DB93: db $FF, $00 ; Word Fill
#_16DB95: db $05 ; Direct Copy
#_16DB96: db $BE, $41, $98, $67, $E0, $F3
#_16DB9C: db $23 ; Byte Fill
#_16DB9D: db $FF
#_16DB9E: db $E0, $35 ; EXT Direct Copy
#_16DBA0: db $BE, $98, $7F, $00, $F8, $07, $C3, $3F
#_16DBA8: db $8F, $7F, $3C, $FF, $70, $FE, $60, $FF
#_16DBB0: db $C0, $FC, $7F, $F8, $C3, $8F, $3F, $7F
#_16DBB8: db $7F, $FF, $08, $07, $04, $03, $03, $00
#_16DBC0: db $3F, $00, $4B, $00, $80, $7C, $B8, $7F
#_16DBC8: db $8D, $7F, $08, $04, $03, $3F, $74, $FF
#_16DBD0: db $BF, $8F, $FE, $E1, $2D, $D3
#_16DBD6: db $43 ; Word Fill
#_16DBD7: db $C2, $3F ; Word Fill
#_16DBD9: db $E0, $9F ; EXT Direct Copy
#_16DBDB: db $30, $0F, $09, $C6, $04, $FB, $FC, $FB
#_16DBE3: db $FE, $2D, $C2, $C2, $F0, $F9, $FC, $FC
#_16DBEB: db $5F, $FF, $4C, $BF, $C1, $3F, $E1, $1F
#_16DBF3: db $F7, $0F, $CF, $3B, $8E, $5F, $36, $8F
#_16DBFB: db $5F, $4C, $C1, $E1, $F7, $CB, $BF, $4F
#_16DC03: db $F1, $FC, $C0, $F8, $81, $D8, $03, $B0
#_16DC0B: db $03, $E0, $06, $E0, $00, $C0, $01, $F8
#_16DC13: db $FE, $FF, $FE, $FC, $FC, $F9, $FF, $FE
#_16DC1B: db $20, $1F, $19, $06, $06, $00, $04, $00
#_16DC23: db $08, $03, $11, $07, $2B, $07, $4C, $1F
#_16DC2B: db $20, $19, $07, $07, $0F, $1F, $37, $7C
#_16DC33: db $84, $0B, $0E, $3D, $3A, $7D, $B4, $7B
#_16DC3B: db $C5, $FB, $85, $FB, $19, $E7, $70, $8F
#_16DC43: db $FC, $FE, $FA, $74, $C5, $85, $19, $70
#_16DC4B: db $E0, $1F, $F0, $0F, $FE, $01, $F1, $0E
#_16DC53: db $6B, $9D, $93, $F5, $6F, $8B, $DF, $4B
#_16DC5B: db $E0, $F0, $FE, $F1, $6B, $9B, $7F, $FF
#_16DC63: db $6C, $FF, $F9, $DE, $33, $FC, $87, $78
#_16DC6B: db $4F, $30, $2C, $93, $13, $EF, $CD, $FE
#_16DC73: db $7C, $D9, $73, $87, $CF, $EC, $D3, $CD
#_16DC7B: db $37 ; Byte Fill
#_16DC7C: db $00
#_16DC7D: db $1D ; Direct Copy
#_16DC7E: db $E3, $13, $EF, $1F, $4C, $3F, $43, $3C
#_16DC86: db $23, $1C, $11, $0E, $08, $07, $07, $00
#_16DC8E: db $EC, $E9, $4C, $43, $23, $11, $08, $07
#_16DC96: db $9B, $FF, $15, $FB, $34, $FB
#_16DC9C: db $43 ; Word Fill
#_16DC9D: db $36, $F9 ; Word Fill
#_16DC9F: db $E0, $25 ; EXT Direct Copy
#_16DCA1: db $57, $F8, $27, $D8, $07, $D8, $9B, $15
#_16DCA9: db $35, $36, $36, $77, $57, $77, $AF, $CF
#_16DCB1: db $3F, $DF, $97, $E7, $5F, $E7, $2B, $73
#_16DCB9: db $17, $F9, $DA, $3C, $ED, $1E, $B0, $20
#_16DCC1: db $98, $D0, $EC, $34, $DB, $EF
#_16DCC7: db $27 ; Byte Fill
#_16DCC8: db $00
#_16DCC9: db $07 ; Direct Copy
#_16DCCA: db $07, $00, $18, $01, $2E, $1F, $17, $0F
#_16DCD2: db $23 ; Byte Fill
#_16DCD3: db $00
#_16DCD4: db $1B ; Direct Copy
#_16DCD5: db $07, $1F, $2F, $17, $7B, $3F, $3E, $1F
#_16DCDD: db $2D, $1E, $72, $0D, $EE, $12, $26, $DE
#_16DCE5: db $10, $EF, $F6, $E9, $7F, $3E, $2D, $72
#_16DCED: db $EF, $F7, $F1, $F6
#_16DCF1: db $43 ; Word Fill
#_16DCF2: db $81, $7F ; Word Fill
#_16DCF4: db $E0, $22 ; EXT Direct Copy
#_16DCF6: db $22, $FF, $36, $7F, $1C, $FB, $38, $BF
#_16DCFE: db $4A, $1D, $AB, $BF, $81, $81, $63, $F7
#_16DD06: db $FB, $FF, $AD, $EF, $81, $F0, $03, $C0
#_16DD0E: db $01, $80, $00, $98, $04, $30, $08, $E6
#_16DD16: db $70, $F6, $C0
#_16DD19: db $43 ; Word Fill
#_16DD1A: db $FC, $FE ; Word Fill
#_16DD1C: db $0A ; Direct Copy
#_16DD1D: db $FF, $FB, $F7, $FF, $DF, $43, $3F, $20
#_16DD25: db $1F, $10, $0F
#_16DD28: db $83 ; Repeat Fill
#_16DD29: db $44, $01 ; Repeat Fill bytes
#_16DD2B: db $E0, $2A ; EXT Direct Copy
#_16DD2D: db $38, $03, $4F, $17, $5F, $3F, $43, $20
#_16DD35: db $10, $08, $07, $3F, $77, $5F, $E5, $7B
#_16DD3D: db $8A, $F7, $12, $EF, $61, $9F, $86, $79
#_16DD45: db $8E, $71, $6E, $91, $D8, $87, $65, $8B
#_16DD4D: db $13, $61, $86, $8E, $EE, $F8, $88, $DF
#_16DD55: db $49, $FF, $5B
#_16DD58: db $22 ; Byte Fill
#_16DD59: db $FF
#_16DD5A: db $E0, $2A ; EXT Direct Copy
#_16DD5C: db $F2, $FF, $64, $FF, $47, $BF, $43, $BF
#_16DD64: db $FF, $EF, $DF, $FF, $F3, $67, $47, $43
#_16DD6C: db $01, $F0, $C4, $F0, $80, $EE, $80, $7E
#_16DD74: db $30, $FF, $F8, $F7, $B3, $EF, $37, $EF
#_16DD7C: db $FE, $FB, $FF, $7F, $FF, $F7, $AF, $2F
#_16DD84: db $41, $3E, $3E
#_16DD87: db $2C ; Byte Fill
#_16DD88: db $00
#_16DD89: db $01 ; Direct Copy
#_16DD8A: db $61, $3E
#_16DD8C: db $25 ; Byte Fill
#_16DD8D: db $00
#_16DD8E: db $E0, $47 ; EXT Direct Copy
#_16DD90: db $F1, $0E, $73, $0C, $2B, $1C, $63, $1C
#_16DD98: db $FF, $00, $BF, $7F, $A0, $7F, $D4, $33
#_16DDA0: db $F1, $73, $2B, $63, $FF, $BF, $BF, $DB
#_16DDA8: db $C7, $69, $A0, $7F, $BC, $7F, $9D, $7F
#_16DDB0: db $AB, $5F, $85, $FF, $49, $FD, $C9, $FF
#_16DDB8: db $F7, $B8, $BC, $9D, $AB, $87, $CF, $CB
#_16DDC0: db $AB, $FD, $57, $DB, $AE, $B6, $5D, $EC
#_16DDC8: db $DD, $EC, $BE, $DE, $AF, $CF, $3F, $CF
#_16DDD0: db $BB, $74, $E9, $D2, $D2, $A1, $B0, $A0
#_16DDD8: db $E4, $2F ; EXT Byte Fill
#_16DDDA: db $00
#_16DDDB: db $0A ; Direct Copy
#_16DDDC: db $D7, $78, $BB, $7C, $5B, $3C, $29, $1E
#_16DDE4: db $16, $0F, $0B
#_16DDE7: db $84 ; Repeat Fill
#_16DDE8: db $61, $00 ; Repeat Fill bytes
#_16DDEA: db $0C ; Direct Copy
#_16DDEB: db $F7, $BB, $5B, $2D, $16, $0B, $04, $03
#_16DDF3: db $F6, $0E, $F2, $0E, $FA
#_16DDF8: db $44 ; Word Fill
#_16DDF9: db $07, $FB ; Word Fill
#_16DDFB: db $07 ; Direct Copy
#_16DDFC: db $36, $CF, $C8, $FE, $3B, $FC, $F7, $F3
#_16DE04: db $22 ; Byte Fill
#_16DE05: db $FB
#_16DE06: db $02 ; Direct Copy
#_16DE07: db $37, $CB, $3A
#_16DE0A: db $37 ; Byte Fill
#_16DE0B: db $00
#_16DE0C: db $04 ; Direct Copy
#_16DE0D: db $CC, $3E, $30, $0F, $1F
#_16DE12: db $2A ; Byte Fill
#_16DE13: db $00
#_16DE14: db $02 ; Direct Copy
#_16DE15: db $CF, $31, $0F
#_16DE18: db $E4, $34 ; EXT Byte Fill
#_16DE1A: db $00
#_16DE1B: db $E0, $48 ; EXT Direct Copy
#_16DE1D: db $3D, $07, $3F, $0F, $1F, $0D, $0F, $00
#_16DE25: db $07, $01, $03, $01, $06, $03, $0C, $07
#_16DE2D: db $3F, $3F, $1F, $0F, $07, $03, $07, $0F
#_16DE35: db $E4, $FB, $F2, $BD, $F3, $9C, $79, $DE
#_16DE3D: db $B9, $FE, $35, $FE, $2D, $FE, $6D, $FE
#_16DE45: db $E4, $B2, $93, $D9, $F9, $B5, $2D, $6D
#_16DE4D: db $08, $00, $14, $08, $23, $1C, $47, $26
#_16DE55: db $5F, $2F, $CF, $2F, $FF, $1E, $FF, $07
#_16DE5D: db $08, $1C, $3F, $7F, $6F, $FF, $FE, $FF
#_16DE65: db $1F
#_16DE66: db $43 ; Word Fill
#_16DE67: db $00, $FF ; Word Fill
#_16DE69: db $0D ; Direct Copy
#_16DE6A: db $38, $FF, $FC, $FF, $FE, $FF, $FF, $E0
#_16DE72: db $FF, $D8, $E7, $1F, $EF, $3F
#_16DE78: db $22 ; Byte Fill
#_16DE79: db $FF
#_16DE7A: db $E0, $31 ; EXT Direct Copy
#_16DE7C: db $E0, $D8, $09, $07, $04, $03, $0F, $00
#_16DE84: db $19, $07, $3C, $1B, $7D, $0A, $7F, $09
#_16DE8C: db $7F, $10, $0F, $07, $0F, $1F, $24, $45
#_16DE94: db $46, $4C, $B3, $FC, $FB, $FC, $F5, $FE
#_16DE9C: db $A5, $FE, $27, $FE, $BF, $64, $FF, $98
#_16DEA4: db $FF, $A0, $B3, $FB, $FD, $BD, $FF, $FF
#_16DEAC: db $67, $43
#_16DEAE: db $44 ; Word Fill
#_16DEAF: db $FF, $00 ; Word Fill
#_16DEB1: db $04 ; Direct Copy
#_16DEB2: db $40, $FF, $47, $FF, $5F
#_16DEB7: db $43 ; Word Fill
#_16DEB8: db $BF, $4F ; Word Fill
#_16DEBA: db $01 ; Direct Copy
#_16DEBB: db $7E, $2F
#_16DEBD: db $24 ; Byte Fill
#_16DEBE: db $FF
#_16DEBF: db $02 ; Direct Copy
#_16DEC0: db $EF, $EF, $7F
#_16DEC3: db $44 ; Word Fill
#_16DEC4: db $FF, $00 ; Word Fill
#_16DEC6: db $04 ; Direct Copy
#_16DEC7: db $02, $FF, $E2, $FF, $FA
#_16DECC: db $43 ; Word Fill
#_16DECD: db $FD, $F2 ; Word Fill
#_16DECF: db $01 ; Direct Copy
#_16DED0: db $7E, $F4
#_16DED2: db $24 ; Byte Fill
#_16DED3: db $FF
#_16DED4: db $E0, $32 ; EXT Direct Copy
#_16DED6: db $F7, $F7, $FE, $00, $00, $03, $00, $0F
#_16DEDE: db $00, $19, $06, $3A, $07, $26, $1B, $5C
#_16DEE6: db $3C, $A3, $78, $00, $03, $0F, $19, $3A
#_16DEEE: db $27, $5F, $BC, $00, $00, $C0, $00, $F0
#_16DEF6: db $00, $98, $60, $5C, $E0, $64, $D8, $3A
#_16DEFE: db $3C, $C5, $1E, $00, $C0, $F0, $98, $5C
#_16DF06: db $E4, $FA, $3D
#_16DF09: db $23 ; Byte Fill
#_16DF0A: db $00
#_16DF0B: db $07 ; Direct Copy
#_16DF0C: db $1C, $00, $3C, $00, $7C, $18, $58, $30
#_16DF14: db $43 ; Word Fill
#_16DF15: db $B8, $70 ; Word Fill
#_16DF17: db $07 ; Direct Copy
#_16DF18: db $00, $00, $1C, $24, $5C, $78, $F8, $F8
#_16DF20: db $E4, $47 ; EXT Byte Fill
#_16DF22: db $00
#_16DF23: db $07 ; Direct Copy
#_16DF24: db $07, $00, $08, $04, $18, $0F, $3F, $07
#_16DF2C: db $45 ; Word Fill
#_16DF2D: db $3F, $01 ; Word Fill
#_16DF2F: db $04 ; Direct Copy
#_16DF30: db $3E, $03, $07, $0F, $1F
#_16DF35: db $24 ; Byte Fill
#_16DF36: db $3F
#_16DF37: db $E0, $47 ; EXT Direct Copy
#_16DF39: db $C0, $00, $B8, $40, $27, $D8, $33, $CF
#_16DF41: db $0F, $FF, $4F, $FF, $7B, $FF, $E1, $FF
#_16DF49: db $C0, $78, $DF, $CF, $FF, $FF, $FB, $E1
#_16DF51: db $0F, $00, $1F, $00, $3F, $06, $7F, $08
#_16DF59: db $7F, $10, $7F, $21, $3F, $02, $06, $00
#_16DF61: db $0F, $11, $21, $46, $4C, $5C, $3D, $06
#_16DF69: db $CD, $F2, $DF, $20, $FF, $02, $FF, $42
#_16DF71: db $FF, $82, $FE, $02, $9E, $08, $0C, $00
#_16DF79: db $CD, $D3, $21, $21, $71, $F0, $92, $0C
#_16DF81: db $46 ; Word Fill
#_16DF82: db $FF, $03 ; Word Fill
#_16DF84: db $08 ; Direct Copy
#_16DF85: db $07, $7F, $0F, $77, $0F, $27, $1B, $12
#_16DF8D: db $0D
#_16DF8E: db $23 ; Byte Fill
#_16DF8F: db $FF
#_16DF90: db $03 ; Direct Copy
#_16DF91: db $7F, $7F, $3B, $1D
#_16DF95: db $43 ; Word Fill
#_16DF96: db $BC, $43 ; Word Fill
#_16DF98: db $1E ; Direct Copy
#_16DF99: db $BF, $C0, $9F, $E0, $CF, $F0, $C7, $F8
#_16DFA1: db $E7, $78, $E3, $FC, $3C, $3C, $BF, $9F
#_16DFA9: db $CF, $C7, $E7, $E3, $FF, $21, $FF, $22
#_16DFB1: db $FF, $00, $EF, $00, $4F, $00, $04
#_16DFB8: db $24 ; Byte Fill
#_16DFB9: db $00
#_16DFBA: db $07 ; Direct Copy
#_16DFBB: db $9C, $99, $BB, $AB, $4B, $04, $00, $00
#_16DFC3: db $43 ; Word Fill
#_16DFC4: db $FF, $10 ; Word Fill
#_16DFC6: db $02 ; Direct Copy
#_16DFC7: db $DE, $00, $9C
#_16DFCA: db $44 ; Word Fill
#_16DFCB: db $00, $1C ; Word Fill
#_16DFCD: db $00 ; Direct Copy
#_16DFCE: db $08
#_16DFCF: db $22 ; Byte Fill
#_16DFD0: db $00
#_16DFD1: db $10 ; Direct Copy
#_16DFD2: db $E3, $E3, $D2, $94, $14, $14, $08, $00
#_16DFDA: db $5D, $2E, $2E, $13, $17, $08, $08, $07
#_16DFE2: db $07
#_16DFE3: db $26 ; Byte Fill
#_16DFE4: db $00
#_16DFE5: db $04 ; Direct Copy
#_16DFE6: db $7E, $3B, $1F, $0F, $07
#_16DFEB: db $22 ; Byte Fill
#_16DFEC: db $00
#_16DFED: db $08 ; Direct Copy
#_16DFEE: db $BA, $74, $74, $C8, $E8, $10, $10, $E0
#_16DFF6: db $E0
#_16DFF7: db $26 ; Byte Fill
#_16DFF8: db $00
#_16DFF9: db $04 ; Direct Copy
#_16DFFA: db $7E, $DC, $F8, $F0, $E0
#_16DFFF: db $22 ; Byte Fill
#_16E000: db $00
#_16E001: db $0C ; Direct Copy
#_16E002: db $A3, $78, $5C, $3C, $26, $1B, $3A, $07
#_16E00A: db $19, $06, $0F, $00, $03
#_16E00F: db $22 ; Byte Fill
#_16E010: db $00
#_16E011: db $14 ; Direct Copy
#_16E012: db $BC, $5F, $27, $3A, $19, $0F, $03, $00
#_16E01A: db $C5, $1E, $3A, $3C, $64, $D8, $5C, $E0
#_16E022: db $98, $60, $F0, $00, $C0
#_16E027: db $22 ; Byte Fill
#_16E028: db $00
#_16E029: db $0B ; Direct Copy
#_16E02A: db $3D, $FA, $E4, $5C, $98, $F0, $C0, $00
#_16E032: db $B8, $70, $D8, $70
#_16E036: db $43 ; Word Fill
#_16E037: db $D4, $78 ; Word Fill
#_16E039: db $0F ; Direct Copy
#_16E03A: db $CB, $7C, $C4, $7F, $C3, $7F, $D8, $7F
#_16E042: db $F8, $D8, $DC, $DC, $CF, $C7, $C3, $D8
#_16E04A: db $29 ; Byte Fill
#_16E04B: db $00
#_16E04C: db $05 ; Direct Copy
#_16E04D: db $C0, $00, $38, $C0, $C7, $F8
#_16E053: db $24 ; Byte Fill
#_16E054: db $00
#_16E055: db $02 ; Direct Copy
#_16E056: db $C0, $F8, $FF
#_16E059: db $FF ; End of GFX AD

;===================================================================================================

GFX_AE:
#_16E05A: db $E1, $1F ; EXT Direct Copy
#_16E05C: db $70, $00, $C9, $70, $D6, $39, $EB, $5D
#_16E064: db $BE, $2D, $5E, $0F, $FC, $4B, $BE, $51
#_16E06C: db $70, $F9, $DE, $AF, $DF, $7E, $FC, $F2
#_16E074: db $0E, $00, $93, $0E, $6B, $9C, $D7, $BA
#_16E07C: db $7D, $B4, $7A, $F0, $3F, $D2, $7D, $8A
#_16E084: db $0E, $9F, $7B, $F5, $FB, $7E, $3F, $4F
#_16E08C: db $38, $00, $67, $38, $3C, $13, $3D, $17
#_16E094: db $39, $0F, $38, $0F, $7D, $27, $7F, $26
#_16E09C: db $38, $7F, $3C, $3F, $3D, $38, $6D, $67
#_16E0A4: db $0C, $00, $F6, $0C, $46, $B8, $AE, $74
#_16E0AC: db $FE, $6C, $FA, $E8, $F5, $62, $FA, $34
#_16E0B4: db $0C, $FE, $76, $EA, $F2, $F6, $FF, $3E
#_16E0BC: db $07, $00, $0B, $04, $0C, $03, $1A, $0F
#_16E0C4: db $35, $1E, $33, $1F, $77, $19, $7F, $11
#_16E0CC: db $07, $0F, $0C, $1E, $3D, $33, $57, $59
#_16E0D4: db $80, $00, $F8, $00, $54, $B8, $BC, $60
#_16E0DC: db $74, $D0, $F4, $D0, $EA, $A4, $F6, $CC
#_16E0E4: db $80, $F8, $74, $FC, $EC, $EC, $DE, $FE
#_16E0EC: db $00, $00, $03, $00, $0F, $03, $12, $0F
#_16E0F4: db $35, $1E, $3E, $15, $3D, $07, $7E, $23
#_16E0FC: db $00, $03, $0F, $1E, $3D, $3F, $35, $62
#_16E104: db $70, $00, $E8, $70, $78, $80, $9C, $60
#_16E10C: db $3C, $D8, $E8, $A0, $EC, $60, $DE, $40
#_16E114: db $70, $E8, $78, $DC, $A4, $D8, $9C, $BE
#_16E11C: db $00, $00, $01, $00, $0E, $01, $1F, $06
#_16E124: db $3F, $0D, $3E, $0A, $7E, $2A, $7B, $1C
#_16E12C: db $00, $01, $0F, $1F, $3E, $3D, $7D, $5B
#_16E134: db $38, $00, $F4, $18, $BC, $C8, $FC, $00
#_16E13C: db $CC, $B0, $84, $78, $A4, $78, $42, $FC
#_16E144: db $38, $F4, $BC, $FC, $4C, $84, $B4, $7A
#_16E14C: db $1C, $00, $33, $1C, $4D, $3F, $37, $0F
#_16E154: db $3B, $17, $6D, $0B, $54, $23, $8B, $77
#_16E15C: db $1C, $3F, $4F, $37, $2B, $75, $5C, $8B
#_16E164: db $1C, $00, $F2, $1C, $9D, $6E, $EA, $B4
#_16E16C: db $F4, $B8, $7C, $F8, $C6, $FC, $8A, $FC
#_16E174: db $1C, $FE, $9D, $EA, $F4, $7C, $FE, $FE
#_16E17C: db $83 ; Repeat Fill
#_16E17D: db $00, $00 ; Repeat Fill bytes
#_16E17F: db $13 ; Direct Copy
#_16E180: db $B6, $79, $5B, $3D, $6F, $1D, $76, $2F
#_16E188: db $34, $0F, $4C, $3F, $70, $F9, $BE, $5F
#_16E190: db $6F, $57, $37, $6F
#_16E194: db $83 ; Repeat Fill
#_16E195: db $18, $00 ; Repeat Fill bytes
#_16E197: db $1F ; Direct Copy
#_16E198: db $6D, $9E, $DA, $BC, $F6, $B8, $6E, $F4
#_16E1A0: db $2C, $F0, $32, $FC, $0E, $9F, $7D, $FA
#_16E1A8: db $F6, $EA, $EC, $F6, $70, $00, $8E, $70
#_16E1B0: db $B1, $4E, $BC, $43, $BE, $41, $9F, $60
#_16E1B8: db $43 ; Word Fill
#_16E1B9: db $5F, $20 ; Word Fill
#_16E1BB: db $07 ; Direct Copy
#_16E1BC: db $70, $FE, $CF, $C3, $C1, $E0, $60, $60
#_16E1C4: db $23 ; Byte Fill
#_16E1C5: db $00
#_16E1C6: db $E0, $4A ; EXT Direct Copy
#_16E1C8: db $87, $00, $58, $87, $20, $DF, $0F, $F0
#_16E1D0: db $9F, $60, $CF, $30, $00, $00, $87, $DF
#_16E1D8: db $FF, $F0, $60, $30, $DF, $71, $6F, $39
#_16E1E0: db $BE, $4F, $5F, $20, $7F, $20, $37, $08
#_16E1E8: db $0C, $03, $03, $00, $F1, $79, $FE, $7D
#_16E1F0: db $7D, $37, $0C, $03, $FB, $8E, $F6, $9C
#_16E1F8: db $7D, $F2, $FA, $04, $FE, $04, $EC, $10
#_16E200: db $30, $C0, $C0, $00, $8F, $9E, $7F, $BE
#_16E208: db $BE, $EC, $30, $C0, $FF, $66, $7B, $3E
#_16E210: db $61, $1F, $7F
#_16E213: db $43 ; Word Fill
#_16E214: db $00, $3F ; Word Fill
#_16E216: db $E0, $2B ; EXT Direct Copy
#_16E218: db $10, $1F, $07, $07, $00, $E6, $7A, $61
#_16E220: db $76, $36, $3F, $1F, $07, $EF, $3C, $C5
#_16E228: db $7A, $F3, $EE, $FE, $0C, $FA, $14, $CC
#_16E230: db $30, $B0, $C0, $C0, $00, $3F, $7F, $FF
#_16E238: db $FE, $FA, $CC, $B0, $C0, $FF, $71, $DF
#_16E240: db $33, $61, $1F, $7F
#_16E244: db $43 ; Word Fill
#_16E245: db $00, $3F ; Word Fill
#_16E247: db $18 ; Direct Copy
#_16E248: db $18, $1E, $07, $07, $00, $F1, $D3, $41
#_16E250: db $5B, $3B, $3F, $1E, $07, $3E, $F8, $1C
#_16E258: db $F0, $D2, $FC, $FA, $3C, $F4, $38, $C8
#_16E260: db $70
#_16E261: db $83 ; Repeat Fill
#_16E262: db $A4, $01 ; Repeat Fill bytes
#_16E264: db $0D ; Direct Copy
#_16E265: db $FE, $FC, $FE, $FA, $F4, $C8, $30, $C0
#_16E26D: db $DF, $67, $DE, $3F, $64, $1F
#_16E273: db $43 ; Word Fill
#_16E274: db $7F, $00 ; Word Fill
#_16E276: db $19 ; Direct Copy
#_16E277: db $3F, $01, $1C, $07, $07, $00, $C7, $DF
#_16E27F: db $67, $6F, $6F, $3F, $1C, $07, $6A, $94
#_16E287: db $9C, $78, $3A, $E4, $B2, $7C, $E4, $F8
#_16E28F: db $C8, $F0
#_16E291: db $87 ; Repeat Fill
#_16E292: db $04, $02 ; Repeat Fill bytes
#_16E294: db $0F ; Direct Copy
#_16E295: db $E4, $C8, $30, $C0, $F0, $5F, $D1, $3E
#_16E29D: db $6F, $1F, $7F, $02, $3F, $07, $31, $0E
#_16E2A5: db $83 ; Repeat Fill
#_16E2A6: db $8C, $01 ; Repeat Fill bytes
#_16E2A8: db $12 ; Direct Copy
#_16E2A9: db $DC, $DF, $6F, $7F, $3F, $31, $0C, $03
#_16E2B1: db $CA, $BC, $A2, $5C, $42, $BC, $A2, $5C
#_16E2B9: db $44, $B8, $88
#_16E2BC: db $84 ; Repeat Fill
#_16E2BD: db $03, $02 ; Repeat Fill bytes
#_16E2BF: db $13 ; Direct Copy
#_16E2C0: db $FA, $E2, $C2, $E2, $C4, $88, $30, $C0
#_16E2C8: db $8F, $7F, $9B, $77, $4F, $39, $5B, $37
#_16E2D0: db $2D, $1B, $10, $0F
#_16E2D4: db $83 ; Repeat Fill
#_16E2D5: db $8C, $01 ; Repeat Fill bytes
#_16E2D7: db $12 ; Direct Copy
#_16E2D8: db $8F, $9F, $4F, $5F, $2D, $10, $0C, $03
#_16E2E0: db $CC, $F8, $FA, $FC, $DA, $FC, $36, $F8
#_16E2E8: db $E4, $F8, $08
#_16E2EB: db $84 ; Repeat Fill
#_16E2EC: db $33, $02 ; Repeat Fill bytes
#_16E2EE: db $11 ; Direct Copy
#_16E2EF: db $FC, $FE, $DA, $36, $E4, $08, $30, $C0
#_16E2F7: db $BE, $7F, $7F, $1F, $D7, $7F, $A6, $5F
#_16E2FF: db $63, $1F
#_16E301: db $85 ; Repeat Fill
#_16E302: db $7A, $02 ; Repeat Fill bytes
#_16E304: db $10 ; Direct Copy
#_16E305: db $FF, $7F, $F7, $E6, $63, $10, $0C, $03
#_16E30D: db $7D, $FE, $FE, $F8, $EB, $FE, $65, $FA
#_16E315: db $C6
#_16E316: db $86 ; Repeat Fill
#_16E317: db $91, $02 ; Repeat Fill bytes
#_16E319: db $13 ; Direct Copy
#_16E31A: db $FF, $FE, $EF, $67, $C6, $08, $30, $C0
#_16E322: db $4F, $30, $67, $38, $33, $1C, $39, $1E
#_16E32A: db $1C, $0F, $0C, $03
#_16E32E: db $43 ; Word Fill
#_16E32F: db $09, $06 ; Word Fill
#_16E331: db $0B ; Direct Copy
#_16E332: db $70, $78, $3C, $3E, $1F, $0F, $0E, $0E
#_16E33A: db $D7, $28, $F8, $07
#_16E33E: db $43 ; Word Fill
#_16E33F: db $FF, $00 ; Word Fill
#_16E341: db $01 ; Direct Copy
#_16E342: db $77, $88
#_16E344: db $83 ; Repeat Fill
#_16E345: db $EA, $02 ; Repeat Fill bytes
#_16E347: db $09 ; Direct Copy
#_16E348: db $FE, $01, $28, $07, $00, $00, $88, $07
#_16E350: db $00, $01
#_16E352: db $43 ; Word Fill
#_16E353: db $04, $03 ; Word Fill
#_16E355: db $03 ; Direct Copy
#_16E356: db $0E, $07, $0A, $07
#_16E35A: db $43 ; Word Fill
#_16E35B: db $18, $0F ; Word Fill
#_16E35D: db $43 ; Word Fill
#_16E35E: db $34, $1B ; Word Fill
#_16E360: db $07 ; Direct Copy
#_16E361: db $07, $07, $0F, $0F, $1F, $1F, $3B, $3B
#_16E369: db $49 ; Word Fill
#_16E36A: db $FF, $00 ; Word Fill
#_16E36C: db $43 ; Word Fill
#_16E36D: db $6E, $91 ; Word Fill
#_16E36F: db $01 ; Direct Copy
#_16E370: db $04, $FB
#_16E372: db $24 ; Byte Fill
#_16E373: db $00
#_16E374: db $08 ; Direct Copy
#_16E375: db $91, $91, $FB, $06, $03, $0E, $03, $0C
#_16E37D: db $07
#_16E37E: db $43 ; Word Fill
#_16E37F: db $18, $0F ; Word Fill
#_16E381: db $43 ; Word Fill
#_16E382: db $30, $1F ; Word Fill
#_16E384: db $01 ; Direct Copy
#_16E385: db $34, $1B
#_16E387: db $84 ; Repeat Fill
#_16E388: db $11, $03 ; Repeat Fill bytes
#_16E38A: db $02 ; Direct Copy
#_16E38B: db $3F, $3F, $3B
#_16E38E: db $47 ; Word Fill
#_16E38F: db $FF, $00 ; Word Fill
#_16E391: db $07 ; Direct Copy
#_16E392: db $6F, $90, $4E, $B1, $0E, $F1, $0C, $F3
#_16E39A: db $23 ; Byte Fill
#_16E39B: db $00
#_16E39C: db $03 ; Direct Copy
#_16E39D: db $90, $B1, $F1, $F3
#_16E3A1: db $83 ; Repeat Fill
#_16E3A2: db $30, $03 ; Repeat Fill bytes
#_16E3A4: db $83 ; Repeat Fill
#_16E3A5: db $38, $03 ; Repeat Fill bytes
#_16E3A7: db $0A ; Direct Copy
#_16E3A8: db $34, $1F, $3C, $1F, $1C, $0F, $1A, $0F
#_16E3B0: db $07, $0F, $1F
#_16E3B3: db $22 ; Byte Fill
#_16E3B4: db $3F
#_16E3B5: db $03 ; Direct Copy
#_16E3B6: db $1F, $1F, $FF, $00
#_16E3BA: db $47 ; Word Fill
#_16E3BB: db $7F, $80 ; Word Fill
#_16E3BD: db $06 ; Direct Copy
#_16E3BE: db $3F, $C0, $2E, $D1, $1E, $E1, $00
#_16E3C5: db $23 ; Byte Fill
#_16E3C6: db $80
#_16E3C7: db $E0, $3C ; EXT Direct Copy
#_16E3C9: db $C0, $D1, $E1, $22, $20, $05, $22, $8A
#_16E3D1: db $F9, $02, $21, $23, $21, $03, $01, $05
#_16E3D9: db $03, $04, $03, $22, $27, $FB, $23, $23
#_16E3E1: db $03, $05, $04, $20, $20, $54, $70, $AA
#_16E3E9: db $24, $94, $08, $D4, $88, $D2, $8C, $A2
#_16E3F1: db $DC, $C2, $FC, $20, $74, $AE, $9C, $DC
#_16E3F9: db $DE, $FE, $FE, $00, $00, $20, $20, $50
#_16E401: db $70, $21, $20, $05, $00
#_16E406: db $43 ; Word Fill
#_16E407: db $0A, $05 ; Word Fill
#_16E409: db $0B ; Direct Copy
#_16E40A: db $09, $06, $00, $20, $70, $21, $05, $0E
#_16E412: db $0E, $0B, $50, $20
#_16E416: db $44 ; Word Fill
#_16E417: db $A0, $40 ; Word Fill
#_16E419: db $09 ; Direct Copy
#_16E41A: db $C0, $90, $E0, $D0, $E0, $C8, $F0, $64
#_16E422: db $F8, $70
#_16E424: db $22 ; Byte Fill
#_16E425: db $E0
#_16E426: db $03 ; Direct Copy
#_16E427: db $F0, $F0, $F8, $7C
#_16E42B: db $25 ; Byte Fill
#_16E42C: db $00
#_16E42D: db $09 ; Direct Copy
#_16E42E: db $01, $00, $02, $01, $0E, $03, $17, $09
#_16E436: db $09, $06
#_16E438: db $22 ; Byte Fill
#_16E439: db $00
#_16E43A: db $1C ; Direct Copy
#_16E43B: db $01, $03, $0F, $1F, $0D, $00, $00, $10
#_16E443: db $20, $28, $10, $68, $30, $B8, $10, $94
#_16E44B: db $08, $A8, $10, $78, $B0, $00, $30, $38
#_16E453: db $78, $B8, $9C, $B8, $F8
#_16E458: db $2B ; Byte Fill
#_16E459: db $00
#_16E45A: db $03 ; Direct Copy
#_16E45B: db $0F, $00, $3B, $06
#_16E45F: db $25 ; Byte Fill
#_16E460: db $00
#_16E461: db $01 ; Direct Copy
#_16E462: db $0F, $37
#_16E464: db $27 ; Byte Fill
#_16E465: db $00
#_16E466: db $07 ; Direct Copy
#_16E467: db $0F, $00, $30, $0F, $CF, $30, $3F, $C0
#_16E46F: db $23 ; Byte Fill
#_16E470: db $00
#_16E471: db $E0, $27 ; EXT Direct Copy
#_16E473: db $0F, $3F, $F0, $C0, $20, $00, $5C, $20
#_16E47B: db $43, $3C, $5D, $23, $2E, $11, $33, $1C
#_16E483: db $1D, $0E, $0E, $07, $20, $7C, $7F, $63
#_16E48B: db $31, $3C, $1E, $0F, $0F, $00, $70, $0F
#_16E493: db $8F, $70, $1F, $E0, $8F, $F0, $47, $B8
#_16E49B: db $43 ; Word Fill
#_16E49C: db $FF, $00 ; Word Fill
#_16E49E: db $12 ; Direct Copy
#_16E49F: db $0F, $7F, $F0, $E0, $F0, $B8, $00, $00
#_16E4A7: db $32, $1D, $18, $0F, $19, $0F, $0F, $06
#_16E4AF: db $07, $00, $01
#_16E4B2: db $24 ; Byte Fill
#_16E4B3: db $00
#_16E4B4: db $E0, $23 ; EXT Direct Copy
#_16E4B6: db $3D, $1F, $1F, $0F, $07, $01, $00, $00
#_16E4BE: db $04, $FB, $00, $FF, $E0, $FF, $F4, $1B
#_16E4C6: db $FA, $0D, $FC, $07, $FF, $03, $1F, $00
#_16E4CE: db $FB, $FF, $FF, $FB, $FD, $FF, $FF, $1F
#_16E4D6: db $3C, $0B, $3E, $05
#_16E4DA: db $43 ; Word Fill
#_16E4DB: db $1E, $03 ; Word Fill
#_16E4DD: db $02 ; Direct Copy
#_16E4DE: db $0F, $01, $07
#_16E4E1: db $24 ; Byte Fill
#_16E4E2: db $00
#_16E4E3: db $00 ; Direct Copy
#_16E4E4: db $3B
#_16E4E5: db $84 ; Repeat Fill
#_16E4E6: db $90, $04 ; Repeat Fill bytes
#_16E4E8: db $83 ; Repeat Fill
#_16E4E9: db $96, $04 ; Repeat Fill bytes
#_16E4EB: db $43 ; Word Fill
#_16E4EC: db $00, $FF ; Word Fill
#_16E4EE: db $07 ; Direct Copy
#_16E4EF: db $30, $CF, $1C, $FF, $FE, $E3, $FF, $01
#_16E4F7: db $84 ; Repeat Fill
#_16E4F8: db $A6, $04 ; Repeat Fill bytes
#_16E4FA: db $00 ; Direct Copy
#_16E4FB: db $CF
#_16E4FC: db $22 ; Byte Fill
#_16E4FD: db $FF
#_16E4FE: db $0D ; Direct Copy
#_16E4FF: db $1F, $1C, $0B, $1C, $03, $1E, $05, $0F
#_16E507: db $02, $0F, $03, $07, $01, $03
#_16E50D: db $22 ; Byte Fill
#_16E50E: db $00
#_16E50F: db $06 ; Direct Copy
#_16E510: db $1B, $1B, $1D, $0E, $0F, $07, $03
#_16E517: db $84 ; Repeat Fill
#_16E518: db $97, $04 ; Repeat Fill bytes
#_16E51A: db $16 ; Direct Copy
#_16E51B: db $80, $7F, $C6, $3B, $F7, $0D, $0F, $F8
#_16E523: db $FF, $F0, $F0, $00, $FB, $FF, $7F, $3B
#_16E52B: db $0F, $FF, $FF, $F0, $02, $01, $01
#_16E532: db $24 ; Byte Fill
#_16E533: db $00
#_16E534: db $E0, $33 ; EXT Direct Copy
#_16E536: db $09, $08, $16, $1D, $09, $08, $00, $00
#_16E53E: db $02, $01, $00, $00, $09, $1E, $09, $00
#_16E546: db $F7, $FE, $7F, $FE, $BF, $7E, $9D, $7E
#_16E54E: db $01, $FE, $02, $FC, $04, $F8, $F8, $00
#_16E556: db $FF, $7F, $BF, $9D, $01, $02, $04, $F8
#_16E55E: db $05, $03, $24, $23, $52, $71, $25, $20
#_16E566: db $0F, $05, $04, $03
#_16E56A: db $83 ; Repeat Fill
#_16E56B: db $10, $05 ; Repeat Fill bytes
#_16E56D: db $E0, $25 ; EXT Direct Copy
#_16E56F: db $05, $24, $72, $25, $0F, $04, $02, $01
#_16E577: db $32, $FC, $36, $FC, $1F, $FE, $3F, $FE
#_16E57F: db $F9, $FE, $62, $FC, $0C, $F0, $F0, $00
#_16E587: db $3E, $3E, $1F, $3F, $F9, $62, $0C, $F0
#_16E58F: db $0A, $05, $0E, $07, $04, $23
#_16E595: db $43 ; Word Fill
#_16E596: db $02, $01 ; Word Fill
#_16E598: db $01 ; Direct Copy
#_16E599: db $01, $08
#_16E59B: db $23 ; Byte Fill
#_16E59C: db $00
#_16E59D: db $0F ; Direct Copy
#_16E59E: db $0E, $0E, $24, $02, $02, $09, $00, $00
#_16E5A6: db $BC, $F8, $FE, $FC, $7F, $FE, $1D, $FE
#_16E5AE: db $83 ; Repeat Fill
#_16E5AF: db $30, $05 ; Repeat Fill bytes
#_16E5B1: db $18 ; Direct Copy
#_16E5B2: db $C4, $38, $38, $00, $FC, $FE, $7F, $1D
#_16E5BA: db $01, $02, $C4, $38, $76, $09, $9C, $67
#_16E5C2: db $67, $3B, $38, $1F, $1F, $00, $07, $00
#_16E5CA: db $01
#_16E5CB: db $22 ; Byte Fill
#_16E5CC: db $00
#_16E5CD: db $07 ; Direct Copy
#_16E5CE: db $4F, $E7, $7B, $3F, $1F, $07, $01, $00
#_16E5D6: db $43 ; Word Fill
#_16E5D7: db $7F, $80 ; Word Fill
#_16E5D9: db $0F ; Direct Copy
#_16E5DA: db $3F, $C0, $C7, $F8, $00, $FF, $D0, $3F
#_16E5E2: db $F8, $07, $3F, $00, $80, $80, $C0, $F8
#_16E5EA: db $22 ; Byte Fill
#_16E5EB: db $FF
#_16E5EC: db $0D ; Direct Copy
#_16E5ED: db $3F, $4B, $07, $B0, $4F, $43, $3C, $20
#_16E5F5: db $1F, $1F, $00, $0F, $00, $01
#_16E5FB: db $22 ; Byte Fill
#_16E5FC: db $00
#_16E5FD: db $05 ; Direct Copy
#_16E5FE: db $4F, $FF, $7C, $3F, $1F, $0F
#_16E604: db $83 ; Repeat Fill
#_16E605: db $B6, $05 ; Repeat Fill bytes
#_16E607: db $01 ; Direct Copy
#_16E608: db $1F, $E0
#_16E60A: db $43 ; Word Fill
#_16E60B: db $FF, $00 ; Word Fill
#_16E60D: db $0F ; Direct Copy
#_16E60E: db $1E, $E1, $80, $7F, $C3, $3C, $3F, $00
#_16E616: db $80, $E0, $00, $00, $E1, $FF, $FF, $3F
#_16E61E: db $FF ; End of GFX AE

;===================================================================================================

GFX_AF:
#_16E61F: db $24 ; Byte Fill
#_16E620: db $00
#_16E621: db $02 ; Direct Copy
#_16E622: db $01, $01, $03
#_16E625: db $43 ; Word Fill
#_16E626: db $02, $07 ; Word Fill
#_16E628: db $03 ; Direct Copy
#_16E629: db $01, $0F, $0E, $1F
#_16E62D: db $22 ; Byte Fill
#_16E62E: db $00
#_16E62F: db $1C ; Direct Copy
#_16E630: db $01, $03, $03, $01, $0F, $00, $1E, $1C
#_16E638: db $3F, $2B, $F7, $CF, $FC, $7F, $B8, $FF
#_16E640: db $18, $6F, $98, $8F, $7C, $00, $1C, $33
#_16E648: db $DC, $B8, $18, $98, $7C
#_16E64D: db $22 ; Byte Fill
#_16E64E: db $00
#_16E64F: db $14 ; Direct Copy
#_16E650: db $E6, $E6, $FF, $9F, $79, $CF, $3C, $CE
#_16E658: db $3D, $C4, $3F, $00, $FF, $00, $00, $E6
#_16E660: db $79, $3C, $3D, $3F, $FF
#_16E665: db $24 ; Byte Fill
#_16E666: db $00
#_16E667: db $0A ; Direct Copy
#_16E668: db $80, $80, $C0, $C0, $60, $40, $E0, $00
#_16E670: db $F0, $70, $F8
#_16E673: db $22 ; Byte Fill
#_16E674: db $00
#_16E675: db $04 ; Direct Copy
#_16E676: db $80, $40, $C0, $80, $F0
#_16E67B: db $28 ; Byte Fill
#_16E67C: db $00
#_16E67D: db $83 ; Repeat Fill
#_16E67E: db $05, $00 ; Repeat Fill bytes
#_16E680: db $02 ; Direct Copy
#_16E681: db $03, $01, $07
#_16E684: db $24 ; Byte Fill
#_16E685: db $00
#_16E686: db $02 ; Direct Copy
#_16E687: db $01, $03, $01
#_16E68A: db $24 ; Byte Fill
#_16E68B: db $00
#_16E68C: db $88 ; Repeat Fill
#_16E68D: db $19, $00 ; Repeat Fill bytes
#_16E68F: db $01 ; Direct Copy
#_16E690: db $6F, $98
#_16E692: db $22 ; Byte Fill
#_16E693: db $00
#_16E694: db $83 ; Repeat Fill
#_16E695: db $29, $00 ; Repeat Fill bytes
#_16E697: db $00 ; Direct Copy
#_16E698: db $98
#_16E699: db $26 ; Byte Fill
#_16E69A: db $00
#_16E69B: db $08 ; Direct Copy
#_16E69C: db $E6, $E6, $FF, $1F, $F9, $CF, $3C, $CC
#_16E6A4: db $3F
#_16E6A5: db $23 ; Byte Fill
#_16E6A6: db $00
#_16E6A7: db $03 ; Direct Copy
#_16E6A8: db $E6, $F9, $3C, $3F
#_16E6AC: db $28 ; Byte Fill
#_16E6AD: db $00
#_16E6AE: db $23 ; Byte Fill
#_16E6AF: db $80
#_16E6B0: db $02 ; Direct Copy
#_16E6B1: db $40, $00, $E0
#_16E6B4: db $24 ; Byte Fill
#_16E6B5: db $00
#_16E6B6: db $02 ; Direct Copy
#_16E6B7: db $80, $00, $80
#_16E6BA: db $25 ; Byte Fill
#_16E6BB: db $00
#_16E6BC: db $08 ; Direct Copy
#_16E6BD: db $0F, $00, $1F, $08, $3E, $10, $3C, $00
#_16E6C5: db $37
#_16E6C6: db $25 ; Byte Fill
#_16E6C7: db $00
#_16E6C8: db $02 ; Direct Copy
#_16E6C9: db $01, $03, $08
#_16E6CC: db $25 ; Byte Fill
#_16E6CD: db $00
#_16E6CE: db $09 ; Direct Copy
#_16E6CF: db $E0, $00, $30, $20, $38, $00, $78, $20
#_16E6D7: db $F8, $50
#_16E6D9: db $23 ; Byte Fill
#_16E6DA: db $00
#_16E6DB: db $01 ; Direct Copy
#_16E6DC: db $80, $40
#_16E6DE: db $23 ; Byte Fill
#_16E6DF: db $00
#_16E6E0: db $83 ; Repeat Fill
#_16E6E1: db $C6, $00 ; Repeat Fill bytes
#_16E6E3: db $08 ; Direct Copy
#_16E6E4: db $3F, $10, $7E, $20, $7C, $00, $76, $00
#_16E6EC: db $7F
#_16E6ED: db $24 ; Byte Fill
#_16E6EE: db $00
#_16E6EF: db $02 ; Direct Copy
#_16E6F0: db $01, $03, $09
#_16E6F3: db $22 ; Byte Fill
#_16E6F4: db $00
#_16E6F5: db $15 ; Direct Copy
#_16E6F6: db $F0, $00, $88, $00, $1C, $10, $1E, $08
#_16E6FE: db $3E, $10, $7E, $24, $7E, $48, $00, $00
#_16E706: db $40, $C0, $A0, $00, $00, $80
#_16E70C: db $25 ; Byte Fill
#_16E70D: db $00
#_16E70E: db $09 ; Direct Copy
#_16E70F: db $03, $03, $0C, $0F, $13, $1C, $27, $38
#_16E717: db $2F, $30
#_16E719: db $23 ; Byte Fill
#_16E71A: db $00
#_16E71B: db $03 ; Direct Copy
#_16E71C: db $03, $0C, $18, $13
#_16E720: db $25 ; Byte Fill
#_16E721: db $00
#_16E722: db $09 ; Direct Copy
#_16E723: db $C0, $C0, $30, $F0, $C8, $38, $E4, $1C
#_16E72B: db $F4, $0C
#_16E72D: db $23 ; Byte Fill
#_16E72E: db $00
#_16E72F: db $03 ; Direct Copy
#_16E730: db $C0, $30, $18, $C8
#_16E734: db $27 ; Byte Fill
#_16E735: db $00
#_16E736: db $06 ; Direct Copy
#_16E737: db $03, $00, $07, $02, $0E, $04, $0F
#_16E73E: db $26 ; Byte Fill
#_16E73F: db $00
#_16E740: db $00 ; Direct Copy
#_16E741: db $01
#_16E742: db $28 ; Byte Fill
#_16E743: db $00
#_16E744: db $07 ; Direct Copy
#_16E745: db $C0, $00, $60, $40, $F0, $80, $F0, $40
#_16E74D: db $27 ; Byte Fill
#_16E74E: db $00
#_16E74F: db $01 ; Direct Copy
#_16E750: db $1E, $31
#_16E752: db $43 ; Word Fill
#_16E753: db $2C, $73 ; Word Fill
#_16E755: db $45 ; Word Fill
#_16E756: db $20, $7F ; Word Fill
#_16E758: db $06 ; Direct Copy
#_16E759: db $18, $37, $3D, $62, $11, $33, $33
#_16E760: db $22 ; Byte Fill
#_16E761: db $3F
#_16E762: db $1F ; Direct Copy
#_16E763: db $17, $22, $07, $FF, $71, $8E, $FB, $04
#_16E76B: db $FF, $00, $7F, $80, $1F, $E0, $3F, $C0
#_16E773: db $FF, $00, $FF, $8E, $04, $00, $80, $E0
#_16E77B: db $C0, $00, $80, $7F, $CE, $31, $DF, $20
#_16E783: db $43 ; Word Fill
#_16E784: db $FF, $00 ; Word Fill
#_16E786: db $E0, $29 ; EXT Direct Copy
#_16E788: db $EE, $11, $E0, $1F, $F0, $0F, $7F, $31
#_16E790: db $20, $00, $00, $11, $1F, $0F, $78, $8C
#_16E798: db $3C, $C6, $14, $EE, $04, $FE, $0C, $FE
#_16E7A0: db $10, $FC, $38, $CC, $3C, $C6, $88, $C4
#_16E7A8: db $EC, $FC, $FC, $F0, $C8, $C4, $06, $0F
#_16E7B0: db $0F, $18
#_16E7B2: db $43 ; Word Fill
#_16E7B3: db $16, $39 ; Word Fill
#_16E7B5: db $45 ; Word Fill
#_16E7B6: db $10, $3F ; Word Fill
#_16E7B8: db $05 ; Direct Copy
#_16E7B9: db $0C, $1B, $07, $08, $19, $19
#_16E7BF: db $22 ; Byte Fill
#_16E7C0: db $1F
#_16E7C1: db $04 ; Direct Copy
#_16E7C2: db $0B, $86, $7D, $01, $FE
#_16E7C7: db $89 ; Repeat Fill
#_16E7C8: db $9A, $01 ; Repeat Fill bytes
#_16E7CA: db $03 ; Direct Copy
#_16E7CB: db $7F, $80, $7D, $FE
#_16E7CF: db $84 ; Repeat Fill
#_16E7D0: db $A9, $01 ; Repeat Fill bytes
#_16E7D2: db $06 ; Direct Copy
#_16E7D3: db $80, $04, $FF, $00, $FF, $EE, $11
#_16E7DA: db $45 ; Word Fill
#_16E7DB: db $FF, $00 ; Word Fill
#_16E7DD: db $06 ; Direct Copy
#_16E7DE: db $F6, $09, $F0, $0F, $FF, $FF, $11
#_16E7E5: db $22 ; Byte Fill
#_16E7E6: db $00
#_16E7E7: db $E0, $24 ; EXT Direct Copy
#_16E7E9: db $09, $0F, $60, $F0, $70, $98, $78, $8C
#_16E7F1: db $28, $DC, $08, $FC, $18, $FC, $20, $F8
#_16E7F9: db $70, $98, $E0, $90, $88, $D8, $F8, $F8
#_16E801: db $E0, $90, $3F, $00, $33, $10, $35, $10
#_16E809: db $2E, $0A, $1D, $0C, $0F
#_16E80E: db $25 ; Byte Fill
#_16E80F: db $00
#_16E810: db $00 ; Direct Copy
#_16E811: db $08
#_16E812: db $62 ; Increasing Fill
#_16E813: db $00 ; Increasing Fill Start
#_16E814: db $22 ; Byte Fill
#_16E815: db $00
#_16E816: db $03 ; Direct Copy
#_16E817: db $F8, $00, $B8, $80
#_16E81B: db $43 ; Word Fill
#_16E81C: db $B8, $10 ; Word Fill
#_16E81E: db $02 ; Direct Copy
#_16E81F: db $B0, $00, $E0
#_16E822: db $25 ; Byte Fill
#_16E823: db $00
#_16E824: db $23 ; Byte Fill
#_16E825: db $40
#_16E826: db $22 ; Byte Fill
#_16E827: db $00
#_16E828: db $0C ; Direct Copy
#_16E829: db $7F, $00, $63, $20, $77, $30, $6D, $29
#_16E831: db $3E, $12, $1D, $0C, $0F
#_16E836: db $23 ; Byte Fill
#_16E837: db $00
#_16E838: db $01 ; Direct Copy
#_16E839: db $10, $00
#_16E83B: db $62 ; Increasing Fill
#_16E83C: db $00 ; Increasing Fill Start
#_16E83D: db $00 ; Direct Copy
#_16E83E: db $00
#_16E83F: db $43 ; Word Fill
#_16E840: db $00, $EE ; Word Fill
#_16E842: db $09 ; Direct Copy
#_16E843: db $24, $EE, $04, $6E, $04, $EC, $00, $E8
#_16E84B: db $20, $F0
#_16E84D: db $22 ; Byte Fill
#_16E84E: db $00
#_16E84F: db $22 ; Byte Fill
#_16E850: db $10
#_16E851: db $0E ; Direct Copy
#_16E852: db $90, $10, $10, $00, $00, $2F, $30, $1F
#_16E85A: db $32, $07, $19, $07, $08, $00, $07
#_16E861: db $25 ; Byte Fill
#_16E862: db $00
#_16E863: db $03 ; Direct Copy
#_16E864: db $37, $14, $0E, $03
#_16E868: db $23 ; Byte Fill
#_16E869: db $00
#_16E86A: db $09 ; Direct Copy
#_16E86B: db $F4, $0C, $F8, $4C, $E0, $98, $E0, $10
#_16E873: db $00, $E0
#_16E875: db $25 ; Byte Fill
#_16E876: db $00
#_16E877: db $03 ; Direct Copy
#_16E878: db $EC, $28, $70, $C0
#_16E87C: db $23 ; Byte Fill
#_16E87D: db $00
#_16E87E: db $06 ; Direct Copy
#_16E87F: db $09, $00, $0A, $00, $07, $03, $03
#_16E886: db $28 ; Byte Fill
#_16E887: db $00
#_16E888: db $00 ; Direct Copy
#_16E889: db $04
#_16E88A: db $26 ; Byte Fill
#_16E88B: db $00
#_16E88C: db $43 ; Word Fill
#_16E88D: db $B0, $00 ; Word Fill
#_16E88F: db $02 ; Direct Copy
#_16E890: db $E0, $00, $C0
#_16E893: db $28 ; Byte Fill
#_16E894: db $00
#_16E895: db $01 ; Direct Copy
#_16E896: db $40, $40
#_16E898: db $25 ; Byte Fill
#_16E899: db $00
#_16E89A: db $1B ; Direct Copy
#_16E89B: db $2D, $72, $5F, $E0, $5B, $E4, $53, $EC
#_16E8A3: db $41, $FE, $21, $7E, $20, $7F, $10, $3F
#_16E8AB: db $32, $60, $64, $6C, $7E, $3E, $3F, $1F
#_16E8B3: db $F7, $08, $EF, $10
#_16E8B7: db $43 ; Word Fill
#_16E8B8: db $CF, $30 ; Word Fill
#_16E8BA: db $11 ; Direct Copy
#_16E8BB: db $EF, $10, $F7, $08, $FF, $00, $3F, $C0
#_16E8C3: db $08, $10, $30, $30, $10, $08, $00, $C0
#_16E8CB: db $FC, $03
#_16E8CD: db $43 ; Word Fill
#_16E8CE: db $FF, $00 ; Word Fill
#_16E8D0: db $01 ; Direct Copy
#_16E8D1: db $F6, $09
#_16E8D3: db $43 ; Word Fill
#_16E8D4: db $F8, $07 ; Word Fill
#_16E8D6: db $0F ; Direct Copy
#_16E8D7: db $E0, $1F, $F7, $0C, $03, $00, $00, $09
#_16E8DF: db $07, $07, $1F, $0C, $78, $8E, $7C, $86
#_16E8E7: db $43 ; Word Fill
#_16E8E8: db $3A, $C7 ; Word Fill
#_16E8EA: db $E0, $31 ; EXT Direct Copy
#_16E8EC: db $12, $EF, $4C, $BE, $D0, $3C, $C8, $3C
#_16E8F4: db $88, $84, $C6, $C6, $EE, $BC, $30, $38
#_16E8FC: db $15, $3A, $2C, $73, $2A, $75, $23, $7C
#_16E904: db $21, $7E, $19, $3E, $18, $3F, $0C, $1F
#_16E90C: db $1A, $33, $35, $3C, $3E, $1E, $1F, $0F
#_16E914: db $FF, $00, $F7, $08, $E7, $18, $EF, $10
#_16E91C: db $E7, $18
#_16E91E: db $83 ; Repeat Fill
#_16E91F: db $22, $03 ; Repeat Fill bytes
#_16E921: db $0B ; Direct Copy
#_16E922: db $1F, $E0, $00, $08, $18, $10, $18, $08
#_16E92A: db $00, $E0, $FC, $03
#_16E92E: db $45 ; Word Fill
#_16E92F: db $FF, $00 ; Word Fill
#_16E931: db $08 ; Direct Copy
#_16E932: db $FD, $02, $FE, $01, $F8, $07, $F7, $0C
#_16E93A: db $03
#_16E93B: db $22 ; Byte Fill
#_16E93C: db $00
#_16E93D: db $10 ; Direct Copy
#_16E93E: db $02, $01, $07, $0C, $70, $9C, $F8, $0C
#_16E946: db $74, $8E, $34, $CE, $24, $DE, $18, $FC
#_16E94E: db $A0
#_16E94F: db $43 ; Word Fill
#_16E950: db $78, $90 ; Word Fill
#_16E952: db $06 ; Direct Copy
#_16E953: db $08, $8C, $CC, $DC, $F8, $60, $70
#_16E95A: db $26 ; Byte Fill
#_16E95B: db $00
#_16E95C: db $08 ; Direct Copy
#_16E95D: db $08, $08, $14, $00, $08, $00, $02, $02
#_16E965: db $05
#_16E966: db $22 ; Byte Fill
#_16E967: db $00
#_16E968: db $04 ; Direct Copy
#_16E969: db $08, $14, $08, $02, $05
#_16E96E: db $24 ; Byte Fill
#_16E96F: db $00
#_16E970: db $04 ; Direct Copy
#_16E971: db $04, $04, $0A, $00, $04
#_16E976: db $27 ; Byte Fill
#_16E977: db $00
#_16E978: db $02 ; Direct Copy
#_16E979: db $04, $0A, $04
#_16E97C: db $28 ; Byte Fill
#_16E97D: db $00
#_16E97E: db $09 ; Direct Copy
#_16E97F: db $03, $07, $00, $0F, $0F, $10, $3F, $30
#_16E987: db $1F, $20
#_16E989: db $23 ; Byte Fill
#_16E98A: db $00
#_16E98B: db $03 ; Direct Copy
#_16E98C: db $0F, $10, $30, $08
#_16E990: db $27 ; Byte Fill
#_16E991: db $00
#_16E992: db $03 ; Direct Copy
#_16E993: db $C0, $C0, $20, $E0
#_16E997: db $43 ; Word Fill
#_16E998: db $D0, $30 ; Word Fill
#_16E99A: db $24 ; Byte Fill
#_16E99B: db $00
#_16E99C: db $02 ; Direct Copy
#_16E99D: db $C0, $20, $20
#_16E9A0: db $23 ; Byte Fill
#_16E9A1: db $00
#_16E9A2: db $83 ; Repeat Fill
#_16E9A3: db $06, $00 ; Repeat Fill bytes
#_16E9A5: db $07 ; Direct Copy
#_16E9A6: db $03, $0C, $0F, $10, $0F, $12, $0F, $14
#_16E9AE: db $83 ; Repeat Fill
#_16E9AF: db $11, $00 ; Repeat Fill bytes
#_16E9B1: db $03 ; Direct Copy
#_16E9B2: db $04, $07, $0D, $09
#_16E9B6: db $23 ; Byte Fill
#_16E9B7: db $00
#_16E9B8: db $83 ; Repeat Fill
#_16E9B9: db $10, $04 ; Repeat Fill bytes
#_16E9BB: db $03 ; Direct Copy
#_16E9BC: db $90, $70, $D0, $30
#_16E9C0: db $43 ; Word Fill
#_16E9C1: db $E8, $18 ; Word Fill
#_16E9C3: db $22 ; Byte Fill
#_16E9C4: db $00
#_16E9C5: db $1C ; Direct Copy
#_16E9C6: db $C0, $60, $20, $90, $90, $FE, $7F, $FD
#_16E9CE: db $BF, $FB, $DF, $F7, $EF, $EF, $F7, $DF
#_16E9D6: db $FB, $BF, $FD, $7F, $FE, $FE, $FD, $FB
#_16E9DE: db $F7, $EF, $DF, $BF, $7F
#_16E9E3: db $97 ; Repeat Fill
#_16E9E4: db $50, $04 ; Repeat Fill bytes
#_16E9E6: db $09 ; Direct Copy
#_16E9E7: db $00, $3F, $0A, $1D, $06, $0F, $00, $07
#_16E9EF: db $00, $01
#_16E9F1: db $25 ; Byte Fill
#_16E9F2: db $00
#_16E9F3: db $02 ; Direct Copy
#_16E9F4: db $07, $0D, $06
#_16E9F7: db $24 ; Byte Fill
#_16E9F8: db $00
#_16E9F9: db $E0, $35 ; EXT Direct Copy
#_16E9FB: db $0F, $F0, $03, $FC, $08, $FF, $B3, $CF
#_16EA03: db $9C, $E3, $4D, $F3, $3C, $7F, $00, $3C
#_16EA0B: db $F0, $FC, $EF, $C3, $E0, $71, $3C, $00
#_16EA13: db $ED, $1F, $D6, $3B, $2D, $F3, $DC, $E3
#_16EA1B: db $3C, $C3, $E3, $9F, $7C, $FF, $00, $7C
#_16EA23: db $1F, $32, $E3, $C3, $03, $9F, $7C, $00
#_16EA2B: db $10, $F8, $F0, $F8, $00, $F0
#_16EA31: db $43 ; Word Fill
#_16EA32: db $80, $C0 ; Word Fill
#_16EA34: db $01 ; Direct Copy
#_16EA35: db $00, $80
#_16EA37: db $23 ; Byte Fill
#_16EA38: db $00
#_16EA39: db $04 ; Direct Copy
#_16EA3A: db $F0, $F0, $00, $80, $80
#_16EA3F: db $22 ; Byte Fill
#_16EA40: db $00
#_16EA41: db $07 ; Direct Copy
#_16EA42: db $02, $1F, $02, $07, $00, $03, $00, $01
#_16EA4A: db $27 ; Byte Fill
#_16EA4B: db $00
#_16EA4C: db $01 ; Direct Copy
#_16EA4D: db $03, $02
#_16EA4F: db $25 ; Byte Fill
#_16EA50: db $00
#_16EA51: db $0B ; Direct Copy
#_16EA52: db $13, $FC, $2C, $DF, $B3, $CF, $D8, $E7
#_16EA5A: db $3C, $FF, $00, $3C
#_16EA5E: db $23 ; Byte Fill
#_16EA5F: db $00
#_16EA60: db $04 ; Direct Copy
#_16EA61: db $FC, $CF, $C3, $E4, $3C
#_16EA66: db $22 ; Byte Fill
#_16EA67: db $00
#_16EA68: db $0B ; Direct Copy
#_16EA69: db $ED, $1F, $15, $FF, $ED, $F3, $1B, $E7
#_16EA71: db $74, $8F, $00, $7C
#_16EA75: db $23 ; Byte Fill
#_16EA76: db $00
#_16EA77: db $04 ; Direct Copy
#_16EA78: db $1F, $F5, $E3, $07, $0C
#_16EA7D: db $22 ; Byte Fill
#_16EA7E: db $00
#_16EA7F: db $03 ; Direct Copy
#_16EA80: db $20, $F0, $00, $E0
#_16EA84: db $43 ; Word Fill
#_16EA85: db $00, $80 ; Word Fill
#_16EA87: db $27 ; Byte Fill
#_16EA88: db $00
#_16EA89: db $00 ; Direct Copy
#_16EA8A: db $E0
#_16EA8B: db $27 ; Byte Fill
#_16EA8C: db $00
#_16EA8D: db $00 ; Direct Copy
#_16EA8E: db $02
#_16EA8F: db $24 ; Byte Fill
#_16EA90: db $00
#_16EA91: db $84 ; Repeat Fill
#_16EA92: db $C7, $03 ; Repeat Fill bytes
#_16EA94: db $23 ; Byte Fill
#_16EA95: db $00
#_16EA96: db $00 ; Direct Copy
#_16EA97: db $02
#_16EA98: db $84 ; Repeat Fill
#_16EA99: db $D1, $03 ; Repeat Fill bytes
#_16EA9B: db $24 ; Byte Fill
#_16EA9C: db $00
#_16EA9D: db $86 ; Repeat Fill
#_16EA9E: db $DD, $03 ; Repeat Fill bytes
#_16EAA0: db $00 ; Direct Copy
#_16EAA1: db $10
#_16EAA2: db $25 ; Byte Fill
#_16EAA3: db $00
#_16EAA4: db $02 ; Direct Copy
#_16EAA5: db $04, $0A, $04
#_16EAA8: db $23 ; Byte Fill
#_16EAA9: db $00
#_16EAAA: db $07 ; Direct Copy
#_16EAAB: db $1F, $20, $1F, $24, $1F, $2A, $0F, $14
#_16EAB3: db $83 ; Repeat Fill
#_16EAB4: db $A6, $02 ; Repeat Fill bytes
#_16EAB6: db $23 ; Byte Fill
#_16EAB7: db $00
#_16EAB8: db $04 ; Direct Copy
#_16EAB9: db $1E, $1B, $11, $0B, $07
#_16EABE: db $22 ; Byte Fill
#_16EABF: db $00
#_16EAC0: db $43 ; Word Fill
#_16EAC1: db $E8, $18 ; Word Fill
#_16EAC3: db $07 ; Direct Copy
#_16EAC4: db $E0, $18, $E0, $10, $C0, $60, $40, $C0
#_16EACC: db $23 ; Byte Fill
#_16EACD: db $00
#_16EACE: db $22 ; Byte Fill
#_16EACF: db $10
#_16EAD0: db $10 ; Direct Copy
#_16EAD1: db $90, $60, $40, $00, $00, $0F, $14, $0F
#_16EAD9: db $12, $0F, $10, $03, $0C, $02, $07, $01
#_16EAE1: db $03
#_16EAE2: db $23 ; Byte Fill
#_16EAE3: db $00
#_16EAE4: db $03 ; Direct Copy
#_16EAE5: db $09, $0D, $07, $04
#_16EAE9: db $83 ; Repeat Fill
#_16EAEA: db $76, $00 ; Repeat Fill bytes
#_16EAEC: db $43 ; Word Fill
#_16EAED: db $E8, $18 ; Word Fill
#_16EAEF: db $07 ; Direct Copy
#_16EAF0: db $D0, $30, $90, $70, $20, $E0, $C0, $C0
#_16EAF8: db $23 ; Byte Fill
#_16EAF9: db $00
#_16EAFA: db $04 ; Direct Copy
#_16EAFB: db $90, $90, $20, $60, $C0
#_16EB00: db $22 ; Byte Fill
#_16EB01: db $00
#_16EB02: db $F0, $2E ; EXT Repeat Fill
#_16EB04: db $50, $04 ; Repeat Fill bytes
#_16EB06: db $00 ; Direct Copy
#_16EB07: db $7F
#_16EB08: db $FF ; End of GFX AF

;===================================================================================================

GFX_B0:
#_16EB09: db $25 ; Byte Fill
#_16EB0A: db $00
#_16EB0B: db $09 ; Direct Copy
#_16EB0C: db $01, $00, $03, $01, $07, $02, $0F, $04
#_16EB14: db $1F, $08
#_16EB16: db $22 ; Byte Fill
#_16EB17: db $00
#_16EB18: db $0C ; Direct Copy
#_16EB19: db $01, $03, $06, $0C, $18, $07, $00, $3F
#_16EB21: db $07, $FF, $38, $F7, $C0
#_16EB26: db $45 ; Word Fill
#_16EB27: db $FB, $00 ; Word Fill
#_16EB29: db $05 ; Direct Copy
#_16EB2A: db $FD, $00, $07, $3F, $F8, $C8
#_16EB30: db $22 ; Byte Fill
#_16EB31: db $04
#_16EB32: db $00 ; Direct Copy
#_16EB33: db $02
#_16EB34: db $26 ; Byte Fill
#_16EB35: db $00
#_16EB36: db $83 ; Repeat Fill
#_16EB37: db $06, $00 ; Repeat Fill bytes
#_16EB39: db $04 ; Direct Copy
#_16EB3A: db $06, $03, $0C, $07, $18
#_16EB3F: db $23 ; Byte Fill
#_16EB40: db $00
#_16EB41: db $04 ; Direct Copy
#_16EB42: db $01, $02, $04, $08, $00
#_16EB47: db $83 ; Repeat Fill
#_16EB48: db $18, $00 ; Repeat Fill bytes
#_16EB4A: db $02 ; Direct Copy
#_16EB4B: db $F8, $37, $C0
#_16EB4E: db $45 ; Word Fill
#_16EB4F: db $FB, $00 ; Word Fill
#_16EB51: db $05 ; Direct Copy
#_16EB52: db $FD, $00, $00, $07, $38, $C8
#_16EB58: db $22 ; Byte Fill
#_16EB59: db $04
#_16EB5A: db $00 ; Direct Copy
#_16EB5B: db $02
#_16EB5C: db $26 ; Byte Fill
#_16EB5D: db $00
#_16EB5E: db $08 ; Direct Copy
#_16EB5F: db $01, $00, $03, $00, $07, $00, $0F, $00
#_16EB67: db $1F
#_16EB68: db $23 ; Byte Fill
#_16EB69: db $00
#_16EB6A: db $03 ; Direct Copy
#_16EB6B: db $01, $03, $07, $0F
#_16EB6F: db $83 ; Repeat Fill
#_16EB70: db $48, $00 ; Repeat Fill bytes
#_16EB72: db $02 ; Direct Copy
#_16EB73: db $00, $FF, $08
#_16EB76: db $46 ; Word Fill
#_16EB77: db $FF, $04 ; Word Fill
#_16EB79: db $05 ; Direct Copy
#_16EB7A: db $02, $FF, $00, $07, $3F, $F7
#_16EB80: db $22 ; Byte Fill
#_16EB81: db $FB
#_16EB82: db $E0, $30 ; EXT Direct Copy
#_16EB84: db $FD, $00, $03, $03, $0F, $0C, $1F, $10
#_16EB8C: db $3B, $21, $7A, $20, $7F, $40, $CF, $40
#_16EB94: db $FF, $00, $03, $0F, $1F, $3E, $3F, $7C
#_16EB9C: db $78, $00, $C0, $C0, $F0, $30, $F8, $08
#_16EBA4: db $DC, $84, $5E, $04, $FE, $02, $F3, $02
#_16EBAC: db $FF, $00, $C0, $F0, $F8, $7C, $FC, $3E
#_16EBB4: db $1E
#_16EBB5: db $25 ; Byte Fill
#_16EBB6: db $00
#_16EBB7: db $89 ; Repeat Fill
#_16EBB8: db $06, $00 ; Repeat Fill bytes
#_16EBBA: db $22 ; Byte Fill
#_16EBBB: db $00
#_16EBBC: db $8C ; Repeat Fill
#_16EBBD: db $13, $00 ; Repeat Fill bytes
#_16EBBF: db $45 ; Word Fill
#_16EBC0: db $F7, $00 ; Word Fill
#_16EBC2: db $00 ; Direct Copy
#_16EBC3: db $F6
#_16EBC4: db $84 ; Repeat Fill
#_16EBC5: db $27, $00 ; Repeat Fill bytes
#_16EBC7: db $22 ; Byte Fill
#_16EBC8: db $08
#_16EBC9: db $17 ; Direct Copy
#_16EBCA: db $09, $E0, $00, $FC, $E0, $FF, $1C, $E3
#_16EBD2: db $03, $DF, $00, $BF, $00, $7F, $00, $FF
#_16EBDA: db $00, $E0, $FC, $1F, $1F, $20, $40, $80
#_16EBE2: db $26 ; Byte Fill
#_16EBE3: db $00
#_16EBE4: db $09 ; Direct Copy
#_16EBE5: db $80, $00, $C0, $80, $E0, $40, $F0, $20
#_16EBED: db $F8, $10
#_16EBEF: db $22 ; Byte Fill
#_16EBF0: db $00
#_16EBF1: db $04 ; Direct Copy
#_16EBF2: db $80, $C0, $60, $30, $18
#_16EBF7: db $2B ; Byte Fill
#_16EBF8: db $00
#_16EBF9: db $02 ; Direct Copy
#_16EBFA: db $01, $00, $02
#_16EBFD: db $25 ; Byte Fill
#_16EBFE: db $00
#_16EBFF: db $02 ; Direct Copy
#_16EC00: db $01, $02, $05
#_16EC03: db $85 ; Repeat Fill
#_16EC04: db $2A, $01 ; Repeat Fill bytes
#_16EC06: db $06 ; Direct Copy
#_16EC07: db $04, $00, $08, $00, $10, $00, $E0
#_16EC0E: db $22 ; Byte Fill
#_16EC0F: db $00
#_16EC10: db $10 ; Direct Copy
#_16EC11: db $01, $02, $05, $0A, $14, $E8, $10, $E0
#_16EC19: db $80, $00, $40, $00, $20, $00, $3E, $00
#_16EC21: db $01
#_16EC22: db $26 ; Byte Fill
#_16EC23: db $00
#_16EC24: db $05 ; Direct Copy
#_16EC25: db $40, $A0, $5E, $41, $3E, $01
#_16EC2B: db $29 ; Byte Fill
#_16EC2C: db $00
#_16EC2D: db $06 ; Direct Copy
#_16EC2E: db $C0, $00, $20, $00, $10, $00, $30
#_16EC35: db $23 ; Byte Fill
#_16EC36: db $00
#_16EC37: db $04 ; Direct Copy
#_16EC38: db $C0, $20, $D0, $28, $48
#_16EC3D: db $43 ; Word Fill
#_16EC3E: db $3F, $10 ; Word Fill
#_16EC40: db $06 ; Direct Copy
#_16EC41: db $77, $20, $7B, $20, $7D, $20, $FE
#_16EC48: db $43 ; Word Fill
#_16EC49: db $40, $FF ; Word Fill
#_16EC4B: db $E0, $20 ; EXT Direct Copy
#_16EC4D: db $41, $30, $30, $68, $64, $62, $C1, $C0
#_16EC55: db $C1, $FD, $00, $FF, $07, $F9, $1E, $E1
#_16EC5D: db $3E, $DC, $7F, $BE, $FF, $BC, $FF, $7B
#_16EC65: db $FC, $02, $07, $1E, $3E, $7F, $FF, $FC
#_16EC6D: db $FB
#_16EC6E: db $43 ; Word Fill
#_16EC6F: db $0F, $30 ; Word Fill
#_16EC71: db $07 ; Direct Copy
#_16EC72: db $17, $60, $0B, $70, $05, $78, $02, $FC
#_16EC7A: db $43 ; Word Fill
#_16EC7B: db $00, $FF ; Word Fill
#_16EC7D: db $07 ; Direct Copy
#_16EC7E: db $10, $10, $28, $34, $3A, $7D, $7F, $7F
#_16EC86: db $8D ; Repeat Fill
#_16EC87: db $98, $01 ; Repeat Fill bytes
#_16EC89: db $00 ; Direct Copy
#_16EC8A: db $FB
#_16EC8B: db $88 ; Repeat Fill
#_16EC8C: db $A7, $01 ; Repeat Fill bytes
#_16EC8E: db $43 ; Word Fill
#_16EC8F: db $00, $3F ; Word Fill
#_16EC91: db $06 ; Direct Copy
#_16EC92: db $08, $7F, $04, $7F, $02, $7F, $01
#_16EC99: db $44 ; Word Fill
#_16EC9A: db $FF, $00 ; Word Fill
#_16EC9C: db $10 ; Direct Copy
#_16EC9D: db $1F, $1F, $37, $3B, $3D, $7E, $7F, $7F
#_16ECA5: db $02, $FF, $00, $FF, $07, $FF, $18, $FF
#_16ECAD: db $20
#_16ECAE: db $44 ; Word Fill
#_16ECAF: db $FF, $40 ; Word Fill
#_16ECB1: db $09 ; Direct Copy
#_16ECB2: db $83, $FC, $FD, $FF, $FF, $F8, $E0, $C0
#_16ECBA: db $C0, $83
#_16ECBC: db $43 ; Word Fill
#_16ECBD: db $41, $FE ; Word Fill
#_16ECBF: db $13 ; Direct Copy
#_16ECC0: db $20, $6F, $20, $7F, $10, $3B, $0C, $1F
#_16ECC8: db $03, $0F, $00, $03, $79, $79, $38, $3C
#_16ECD0: db $1F, $0F, $03, $00
#_16ECD4: db $43 ; Word Fill
#_16ECD5: db $82, $7F ; Word Fill
#_16ECD7: db $13 ; Direct Copy
#_16ECD8: db $04, $F6, $04, $FE, $08, $DC, $30, $F8
#_16ECE0: db $C0, $F0, $00, $C0, $9E, $9E, $1C, $3C
#_16ECE8: db $F8, $F0, $C0, $00
#_16ECEC: db $43 ; Word Fill
#_16ECED: db $3F, $10 ; Word Fill
#_16ECEF: db $43 ; Word Fill
#_16ECF0: db $6F, $20 ; Word Fill
#_16ECF2: db $E0, $3C ; EXT Direct Copy
#_16ECF4: db $77, $21, $FA, $43, $FE, $43, $FD, $47
#_16ECFC: db $30, $30, $70, $70, $69, $C7, $C3, $C7
#_16ED04: db $F6, $00, $FF, $1F, $E1, $7E, $99, $FE
#_16ED0C: db $7C, $FF, $FE, $FF, $E1, $FF, $DE, $E1
#_16ED14: db $09, $1F, $7E, $FE, $FF, $FF, $E1, $DE
#_16ED1C: db $FF, $00, $FF, $80, $FF, $60, $9F, $70
#_16ED24: db $2E, $F8, $75, $FC, $F7, $FC, $FB, $FE
#_16ED2C: db $00, $80, $60, $70, $F9
#_16ED31: db $43 ; Word Fill
#_16ED32: db $FE, $FC ; Word Fill
#_16ED34: db $08 ; Direct Copy
#_16ED35: db $08, $FC, $08, $EE, $04, $1E, $04, $FE
#_16ED3D: db $04
#_16ED3E: db $45 ; Word Fill
#_16ED3F: db $FF, $02 ; Word Fill
#_16ED41: db $04 ; Direct Copy
#_16ED42: db $0C, $0C, $16, $E6, $06
#_16ED47: db $22 ; Byte Fill
#_16ED48: db $03
#_16ED49: db $47 ; Word Fill
#_16ED4A: db $02, $00 ; Word Fill
#_16ED4C: db $07 ; Direct Copy
#_16ED4D: db $04, $00, $38, $00, $40, $00, $80, $00
#_16ED55: db $23 ; Byte Fill
#_16ED56: db $05
#_16ED57: db $03 ; Direct Copy
#_16ED58: db $3A, $44, $B8, $40
#_16ED5C: db $3B ; Byte Fill
#_16ED5D: db $00
#_16ED5E: db $02 ; Direct Copy
#_16ED5F: db $01, $00, $03
#_16ED62: db $29 ; Byte Fill
#_16ED63: db $00
#_16ED64: db $03 ; Direct Copy
#_16ED65: db $01, $02, $04, $03
#_16ED69: db $22 ; Byte Fill
#_16ED6A: db $00
#_16ED6B: db $02 ; Direct Copy
#_16ED6C: db $40, $00, $80
#_16ED6F: db $22 ; Byte Fill
#_16ED70: db $00
#_16ED71: db $1D ; Direct Copy
#_16ED72: db $E0, $00, $10, $00, $08, $00, $0F, $00
#_16ED7A: db $01, $00, $B8, $40, $E0, $10, $E8, $17
#_16ED82: db $10, $0E, $FF, $41, $0D, $C1, $13, $E1
#_16ED8A: db $2F, $71, $27, $79, $20, $7F
#_16ED90: db $43 ; Word Fill
#_16ED91: db $18, $3F ; Word Fill
#_16ED93: db $07 ; Direct Copy
#_16ED94: db $C1, $73, $6D, $31, $39, $3F, $1F, $1F
#_16ED9C: db $47 ; Word Fill
#_16ED9D: db $77, $F8 ; Word Fill
#_16ED9F: db $07 ; Direct Copy
#_16EDA0: db $7B, $FC, $CC, $FF, $40, $FF, $20, $FF
#_16EDA8: db $23 ; Byte Fill
#_16EDA9: db $F7
#_16EDAA: db $09 ; Direct Copy
#_16EDAB: db $FB, $CC, $C0, $E0, $00, $FF, $32, $FF
#_16EDB3: db $0C, $FF
#_16EDB5: db $45 ; Word Fill
#_16EDB6: db $20, $7F ; Word Fill
#_16EDB8: db $43 ; Word Fill
#_16EDB9: db $18, $3F ; Word Fill
#_16EDBB: db $02 ; Direct Copy
#_16EDBC: db $7F, $4D, $73
#_16EDBF: db $22 ; Byte Fill
#_16EDC0: db $3F
#_16EDC1: db $02 ; Direct Copy
#_16EDC2: db $1F, $1F, $97
#_16EDC5: db $46 ; Word Fill
#_16EDC6: db $F8, $87 ; Word Fill
#_16EDC8: db $02 ; Direct Copy
#_16EDC9: db $83, $FC, $80
#_16EDCC: db $84 ; Repeat Fill
#_16EDCD: db $23, $03 ; Repeat Fill bytes
#_16EDCF: db $00 ; Direct Copy
#_16EDD0: db $97
#_16EDD1: db $22 ; Byte Fill
#_16EDD2: db $87
#_16EDD3: db $01 ; Direct Copy
#_16EDD4: db $83, $80
#_16EDD6: db $87 ; Repeat Fill
#_16EDD7: db $2E, $03 ; Repeat Fill bytes
#_16EDD9: db $45 ; Word Fill
#_16EDDA: db $20, $7F ; Word Fill
#_16EDDC: db $43 ; Word Fill
#_16EDDD: db $18, $3F ; Word Fill
#_16EDDF: db $02 ; Direct Copy
#_16EDE0: db $7F, $4D, $73
#_16EDE3: db $22 ; Byte Fill
#_16EDE4: db $3F
#_16EDE5: db $01 ; Direct Copy
#_16EDE6: db $1F, $1F
#_16EDE8: db $47 ; Word Fill
#_16EDE9: db $87, $F8 ; Word Fill
#_16EDEB: db $87 ; Repeat Fill
#_16EDEC: db $50, $03 ; Repeat Fill bytes
#_16EDEE: db $23 ; Byte Fill
#_16EDEF: db $87
#_16EDF0: db $84 ; Repeat Fill
#_16EDF1: db $5C, $03 ; Repeat Fill bytes
#_16EDF3: db $E0, $42 ; EXT Direct Copy
#_16EDF5: db $03, $00, $0F, $03, $1C, $0B, $30, $1B
#_16EDFD: db $60, $1C, $63, $0B, $C6, $34, $CF, $00
#_16EE05: db $03, $0C, $14, $24, $23, $76, $4C, $00
#_16EE0D: db $C0, $00, $F0, $C0, $38, $D0, $0C, $D8
#_16EE15: db $06, $38, $C6, $D0, $63, $2C, $F3, $00
#_16EE1D: db $C0, $30, $28, $24, $C4, $6E, $32, $FD
#_16EE25: db $47, $0D, $C7, $15, $E7, $2D, $77, $25
#_16EE2D: db $7F, $23, $7F, $19, $3F, $18, $3F, $C7
#_16EE35: db $77, $6F, $37
#_16EE38: db $83 ; Repeat Fill
#_16EE39: db $44, $03 ; Repeat Fill bytes
#_16EE3B: db $47 ; Word Fill
#_16EE3C: db $BF, $C0 ; Word Fill
#_16EE3E: db $02 ; Direct Copy
#_16EE3F: db $DE, $E1, $C3
#_16EE42: db $84 ; Repeat Fill
#_16EE43: db $70, $02 ; Repeat Fill bytes
#_16EE45: db $23 ; Byte Fill
#_16EE46: db $BF
#_16EE47: db $06 ; Direct Copy
#_16EE48: db $DE, $C3, $00, $80, $7B, $FE, $7A
#_16EE4F: db $44 ; Word Fill
#_16EE50: db $FE, $7B ; Word Fill
#_16EE52: db $1B ; Direct Copy
#_16EE53: db $FB, $FE, $8C, $FF, $08, $FF, $10, $FF
#_16EE5B: db $7E, $7F, $7E, $7E, $FE, $8F, $0F, $1F
#_16EE63: db $FF, $02, $60, $03, $98, $07, $F4, $0E
#_16EE6B: db $E4, $1E, $04, $FE
#_16EE6F: db $43 ; Word Fill
#_16EE70: db $18, $FC ; Word Fill
#_16EE72: db $07 ; Direct Copy
#_16EE73: db $03, $9E, $66, $0C, $1C, $FC, $F8, $F8
#_16EE7B: db $85 ; Repeat Fill
#_16EE7C: db $50, $01 ; Repeat Fill bytes
#_16EE7E: db $06 ; Direct Copy
#_16EE7F: db $30, $00, $0C, $00, $02, $00, $01
#_16EE86: db $22 ; Byte Fill
#_16EE87: db $00
#_16EE88: db $07 ; Direct Copy
#_16EE89: db $40, $A0, $50, $4C, $32, $0D, $02, $01
#_16EE91: db $2D ; Byte Fill
#_16EE92: db $00
#_16EE93: db $00 ; Direct Copy
#_16EE94: db $80
#_16EE95: db $26 ; Byte Fill
#_16EE96: db $00
#_16EE97: db $01 ; Direct Copy
#_16EE98: db $80, $40
#_16EE9A: db $27 ; Byte Fill
#_16EE9B: db $00
#_16EE9C: db $04 ; Direct Copy
#_16EE9D: db $01, $00, $06, $00, $01
#_16EEA2: db $25 ; Byte Fill
#_16EEA3: db $00
#_16EEA4: db $04 ; Direct Copy
#_16EEA5: db $01, $06, $09, $06, $01
#_16EEAA: db $85 ; Repeat Fill
#_16EEAB: db $3C, $01 ; Repeat Fill bytes
#_16EEAD: db $02 ; Direct Copy
#_16EEAE: db $70, $00, $80
#_16EEB1: db $22 ; Byte Fill
#_16EEB2: db $00
#_16EEB3: db $15 ; Direct Copy
#_16EEB4: db $80, $00, $60, $00, $05, $0A, $74, $88
#_16EEBC: db $70, $80, $60, $90, $0C, $1F, $06, $0F
#_16EEC4: db $03, $07, $01, $03, $00, $01
#_16EECA: db $25 ; Byte Fill
#_16EECB: db $00
#_16EECC: db $03 ; Direct Copy
#_16EECD: db $0F, $07, $03, $01
#_16EED1: db $23 ; Byte Fill
#_16EED2: db $00
#_16EED3: db $17 ; Direct Copy
#_16EED4: db $18, $FF, $27, $FF, $40, $FF, $C0, $FF
#_16EEDC: db $F8, $FF, $3F, $FF, $07, $3F, $00, $07
#_16EEE4: db $F8, $DF, $BF, $7F, $FF, $3F, $07, $00
#_16EEEC: db $89 ; Repeat Fill
#_16EEED: db $80, $04 ; Repeat Fill bytes
#_16EEEF: db $25 ; Byte Fill
#_16EEF0: db $00
#_16EEF1: db $83 ; Repeat Fill
#_16EEF2: db $90, $04 ; Repeat Fill bytes
#_16EEF4: db $23 ; Byte Fill
#_16EEF5: db $00
#_16EEF6: db $F0, $21 ; EXT Repeat Fill
#_16EEF8: db $98, $04 ; Repeat Fill bytes
#_16EEFA: db $25 ; Byte Fill
#_16EEFB: db $00
#_16EEFC: db $83 ; Repeat Fill
#_16EEFD: db $90, $04 ; Repeat Fill bytes
#_16EEFF: db $23 ; Byte Fill
#_16EF00: db $00
#_16EF01: db $97 ; Repeat Fill
#_16EF02: db $98, $04 ; Repeat Fill bytes
#_16EF04: db $06 ; Direct Copy
#_16EF05: db $35, $CE, $55, $EE, $24, $6F, $23
#_16EF0C: db $88 ; Repeat Fill
#_16EF0D: db $17, $02 ; Repeat Fill bytes
#_16EF0F: db $03 ; Direct Copy
#_16EF10: db $4D, $6D, $3C, $3F
#_16EF14: db $83 ; Repeat Fill
#_16EF15: db $24, $02 ; Repeat Fill bytes
#_16EF17: db $06 ; Direct Copy
#_16EF18: db $AC, $73, $AA, $77, $24, $F6, $C4
#_16EF1F: db $88 ; Repeat Fill
#_16EF20: db $2F, $02 ; Repeat Fill bytes
#_16EF22: db $03 ; Direct Copy
#_16EF23: db $B2, $B6, $3C, $FC
#_16EF27: db $83 ; Repeat Fill
#_16EF28: db $3C, $02 ; Repeat Fill bytes
#_16EF2A: db $89 ; Repeat Fill
#_16EF2B: db $80, $04 ; Repeat Fill bytes
#_16EF2D: db $25 ; Byte Fill
#_16EF2E: db $00
#_16EF2F: db $83 ; Repeat Fill
#_16EF30: db $90, $04 ; Repeat Fill bytes
#_16EF32: db $23 ; Byte Fill
#_16EF33: db $00
#_16EF34: db $02 ; Direct Copy
#_16EF35: db $60, $FF, $5F
#_16EF38: db $8C ; Repeat Fill
#_16EF39: db $9B, $04 ; Repeat Fill bytes
#_16EF3B: db $01 ; Direct Copy
#_16EF3C: db $E0, $BF
#_16EF3E: db $85 ; Repeat Fill
#_16EF3F: db $AA, $04 ; Repeat Fill bytes
#_16EF41: db $11 ; Direct Copy
#_16EF42: db $60, $FF, $9C, $FF, $02, $FF, $03, $FF
#_16EF4A: db $1F, $FF, $FC, $FF, $E0, $FC, $00, $E0
#_16EF52: db $7F, $E3
#_16EF54: db $62 ; Increasing Fill
#_16EF55: db $FD ; Increasing Fill Start
#_16EF56: db $0C ; Direct Copy
#_16EF57: db $FC, $E0, $00, $30, $F8, $60, $F0, $C0
#_16EF5F: db $E0, $80, $C0, $00, $80
#_16EF64: db $25 ; Byte Fill
#_16EF65: db $00
#_16EF66: db $03 ; Direct Copy
#_16EF67: db $F0, $E0, $C0, $80
#_16EF6B: db $25 ; Byte Fill
#_16EF6C: db $00
#_16EF6D: db $02 ; Direct Copy
#_16EF6E: db $03, $00, $04
#_16EF71: db $44 ; Word Fill
#_16EF72: db $00, $08 ; Word Fill
#_16EF74: db $0E ; Direct Copy
#_16EF75: db $18, $00, $60, $00, $80, $00, $03, $04
#_16EF7D: db $0B, $14, $14, $64, $98, $60, $80
#_16EF84: db $2E ; Byte Fill
#_16EF85: db $00
#_16EF86: db $01 ; Direct Copy
#_16EF87: db $40, $80
#_16EF89: db $27 ; Byte Fill
#_16EF8A: db $00
#_16EF8B: db $85 ; Repeat Fill
#_16EF8C: db $3A, $01 ; Repeat Fill bytes
#_16EF8E: db $00 ; Direct Copy
#_16EF8F: db $03
#_16EF90: db $26 ; Byte Fill
#_16EF91: db $00
#_16EF92: db $03 ; Direct Copy
#_16EF93: db $01, $02, $05, $0B
#_16EF97: db $83 ; Repeat Fill
#_16EF98: db $E3, $02 ; Repeat Fill bytes
#_16EF9A: db $02 ; Direct Copy
#_16EF9B: db $10, $00, $F0
#_16EF9E: db $24 ; Byte Fill
#_16EF9F: db $00
#_16EFA0: db $02 ; Direct Copy
#_16EFA1: db $C0, $00, $38
#_16EFA4: db $84 ; Repeat Fill
#_16EFA5: db $59, $04 ; Repeat Fill bytes
#_16EFA7: db $07 ; Direct Copy
#_16EFA8: db $E8, $08, $F0, $C0, $38, $C6, $39, $06
#_16EFB0: db $FF ; End of GFX B0

;===================================================================================================

GFX_B1:
#_16EFB1: db $27 ; Byte Fill
#_16EFB2: db $00
#_16EFB3: db $00 ; Direct Copy
#_16EFB4: db $01
#_16EFB5: db $44 ; Word Fill
#_16EFB6: db $00, $03 ; Word Fill
#_16EFB8: db $01 ; Direct Copy
#_16EFB9: db $05, $02
#_16EFBB: db $23 ; Byte Fill
#_16EFBC: db $00
#_16EFBD: db $03 ; Direct Copy
#_16EFBE: db $01, $02, $02, $06
#_16EFC2: db $27 ; Byte Fill
#_16EFC3: db $00
#_16EFC4: db $00 ; Direct Copy
#_16EFC5: db $80
#_16EFC6: db $44 ; Word Fill
#_16EFC7: db $00, $C0 ; Word Fill
#_16EFC9: db $01 ; Direct Copy
#_16EFCA: db $A0, $40
#_16EFCC: db $23 ; Byte Fill
#_16EFCD: db $00
#_16EFCE: db $E0, $6C ; EXT Direct Copy
#_16EFD0: db $80, $40, $40, $60, $DF, $7F, $D1, $7F
#_16EFD8: db $D4, $7B, $CA, $7D, $CB, $7C, $C5, $7E
#_16EFE0: db $42, $3F, $43, $3F, $DF, $DF, $DB, $CD
#_16EFE8: db $CC, $C6, $43, $43, $38, $FF, $87, $FF
#_16EFF0: db $C0, $FF, $70, $FF, $38, $FF, $8C, $7F
#_16EFF8: db $DE, $3F, $58, $BF, $3F, $87, $C0, $F0
#_16F000: db $F8, $7C, $3E, $B8, $FB, $FC, $F9, $FE
#_16F008: db $79, $FE, $39, $FE, $19, $FE, $0C, $FF
#_16F010: db $0D, $FE, $0C, $FF, $FC, $FE, $7E, $3E
#_16F018: db $1E, $0F, $0E, $0F, $DF, $3F, $9F, $7F
#_16F020: db $9E, $7F, $9C, $7F, $98, $7F, $30, $FF
#_16F028: db $B0, $7F, $30, $FF, $3F, $7F, $7E, $7C
#_16F030: db $78, $F0, $70, $F0, $80, $7F, $60, $1F
#_16F038: db $18, $07, $06, $01, $03
#_16F03D: db $26 ; Byte Fill
#_16F03E: db $00
#_16F03F: db $04 ; Direct Copy
#_16F040: db $81, $60, $18, $06, $03
#_16F045: db $23 ; Byte Fill
#_16F046: db $00
#_16F047: db $0B ; Direct Copy
#_16F048: db $07, $01, $CF, $C0, $FF, $01, $FF, $C3
#_16F050: db $3F, $3F, $07, $0F
#_16F054: db $22 ; Byte Fill
#_16F055: db $00
#_16F056: db $07 ; Direct Copy
#_16F057: db $01, $C9, $F1, $01, $C3, $3F, $0F, $00
#_16F05F: db $85 ; Repeat Fill
#_16F060: db $30, $00 ; Repeat Fill bytes
#_16F062: db $E0, $3D ; EXT Direct Copy
#_16F064: db $DA, $6D, $CB, $74, $CA, $77, $49, $36
#_16F06C: db $46, $38, $DF, $DF, $DB, $FD, $DC, $DF
#_16F074: db $4F, $46, $28, $FF, $97, $EF, $ED, $DE
#_16F07C: db $45, $FE, $2A, $D5, $D4, $03, $04, $03
#_16F084: db $08, $07, $2F, $9F, $FF, $FF, $FE, $D4
#_16F08C: db $06, $0C, $00, $03, $00, $0F, $03, $0F
#_16F094: db $07, $5F, $0D, $9F, $09, $DF, $09, $FF
#_16F09C: db $24, $FF, $00, $00, $03, $07
#_16F0A2: db $22 ; Byte Fill
#_16F0A3: db $0F
#_16F0A4: db $10 ; Direct Copy
#_16F0A5: db $27, $00, $F0, $00, $E8, $80, $C0, $00
#_16F0AD: db $F8, $70, $FE, $98, $FE, $0C, $FF, $7C
#_16F0B5: db $FF
#_16F0B6: db $83 ; Repeat Fill
#_16F0B7: db $1E, $00 ; Repeat Fill bytes
#_16F0B9: db $03 ; Direct Copy
#_16F0BA: db $70, $F8, $FC, $FC
#_16F0BE: db $24 ; Byte Fill
#_16F0BF: db $00
#_16F0C0: db $0A ; Direct Copy
#_16F0C1: db $03, $00, $07, $01, $2F, $03, $2F, $0A
#_16F0C9: db $3F, $0E, $3F
#_16F0CC: db $23 ; Byte Fill
#_16F0CD: db $00
#_16F0CE: db $03 ; Direct Copy
#_16F0CF: db $01, $03, $0B, $0F
#_16F0D3: db $24 ; Byte Fill
#_16F0D4: db $00
#_16F0D5: db $0A ; Direct Copy
#_16F0D6: db $F0, $00, $C0, $C0, $F0, $80, $F8, $E0
#_16F0DE: db $FC, $30, $FC
#_16F0E1: db $23 ; Byte Fill
#_16F0E2: db $00
#_16F0E3: db $E0, $35 ; EXT Direct Copy
#_16F0E5: db $C0, $80, $E0, $F0, $60, $00, $F8, $00
#_16F0ED: db $CC, $30, $C6, $38, $42, $3C, $63, $1C
#_16F0F5: db $33, $0C, $1F, $00, $60, $F8, $CC, $C6
#_16F0FD: db $42, $63, $33, $1F, $60, $00, $98, $60
#_16F105: db $A4, $78, $BA, $7C, $76, $3C, $59, $3E
#_16F10D: db $25, $1E, $19, $06, $60, $98, $A4, $BA
#_16F115: db $7E, $5D, $25, $19, $05, $02
#_16F11B: db $43 ; Word Fill
#_16F11C: db $09, $06 ; Word Fill
#_16F11E: db $43 ; Word Fill
#_16F11F: db $13, $0C ; Word Fill
#_16F121: db $0F ; Direct Copy
#_16F122: db $27, $18, $C3, $3C, $33, $FC, $06, $0E
#_16F12A: db $0E, $1C, $1C, $38, $FC, $FC, $A0, $40
#_16F132: db $43 ; Word Fill
#_16F133: db $90, $60 ; Word Fill
#_16F135: db $43 ; Word Fill
#_16F136: db $C8, $30 ; Word Fill
#_16F138: db $13 ; Direct Copy
#_16F139: db $E4, $18, $C3, $3C, $CC, $3F, $60, $70
#_16F141: db $70, $38, $38, $1C, $3F, $3F, $43, $3F
#_16F149: db $21, $1F, $20, $1F
#_16F14D: db $43 ; Word Fill
#_16F14E: db $10, $0F ; Word Fill
#_16F150: db $E0, $2F ; EXT Direct Copy
#_16F152: db $08, $07, $04, $03, $02, $01, $43, $21
#_16F15A: db $20, $10, $10, $08, $04, $02, $58, $BF
#_16F162: db $30, $FF, $B0, $FC, $E0, $F8, $60, $F8
#_16F16A: db $20, $F8, $30, $FC, $10, $FC, $B8, $F0
#_16F172: db $F0, $E0, $60, $20, $34, $10, $0C, $FF
#_16F17A: db $05, $FE, $04, $FF, $06, $3F, $02, $1F
#_16F182: db $44 ; Word Fill
#_16F183: db $02, $0F ; Word Fill
#_16F185: db $04 ; Direct Copy
#_16F186: db $07, $0F, $06, $07, $07
#_16F18B: db $23 ; Byte Fill
#_16F18C: db $03
#_16F18D: db $09 ; Direct Copy
#_16F18E: db $30, $FF, $A0, $7F, $20, $FF, $60, $FC
#_16F196: db $40, $F8
#_16F198: db $44 ; Word Fill
#_16F199: db $40, $F0 ; Word Fill
#_16F19B: db $04 ; Direct Copy
#_16F19C: db $E0, $F0, $60, $E0, $E0
#_16F1A1: db $23 ; Byte Fill
#_16F1A2: db $C0
#_16F1A3: db $E4, $2F ; EXT Byte Fill
#_16F1A5: db $00
#_16F1A6: db $02 ; Direct Copy
#_16F1A7: db $44, $38, $38
#_16F1AA: db $26 ; Byte Fill
#_16F1AB: db $00
#_16F1AC: db $01 ; Direct Copy
#_16F1AD: db $01, $00
#_16F1AF: db $43 ; Word Fill
#_16F1B0: db $02, $01 ; Word Fill
#_16F1B2: db $01 ; Direct Copy
#_16F1B3: db $4C, $38
#_16F1B5: db $22 ; Byte Fill
#_16F1B6: db $00
#_16F1B7: db $83 ; Repeat Fill
#_16F1B8: db $14, $00 ; Repeat Fill bytes
#_16F1BA: db $00 ; Direct Copy
#_16F1BB: db $03
#_16F1BC: db $83 ; Repeat Fill
#_16F1BD: db $BC, $01 ; Repeat Fill bytes
#_16F1BF: db $E0, $2A ; EXT Direct Copy
#_16F1C1: db $00, $00, $40, $00, $B8, $40, $70, $BC
#_16F1C9: db $90, $7C, $06, $06, $03, $00, $40, $B8
#_16F1D1: db $74, $90, $3E, $FF, $30, $FF, $19, $7F
#_16F1D9: db $0E, $7F, $00, $1F, $01, $03, $00, $17
#_16F1E1: db $00, $0F, $3F, $3F, $1F, $0E, $00, $01
#_16F1E9: db $00, $00, $24
#_16F1EC: db $43 ; Word Fill
#_16F1ED: db $FF, $90 ; Word Fill
#_16F1EF: db $05 ; Direct Copy
#_16F1F0: db $FB, $B0, $F9, $E0, $FA, $C0
#_16F1F6: db $43 ; Word Fill
#_16F1F7: db $F0, $00 ; Word Fill
#_16F1F9: db $01 ; Direct Copy
#_16F1FA: db $C0, $E4
#_16F1FC: db $22 ; Byte Fill
#_16F1FD: db $F0
#_16F1FE: db $0B ; Direct Copy
#_16F1FF: db $E0, $C0, $00, $00, $0C, $3F, $07, $3F
#_16F207: db $01, $1F, $03, $0F
#_16F20B: db $83 ; Repeat Fill
#_16F20C: db $F0, $00 ; Repeat Fill bytes
#_16F20E: db $23 ; Byte Fill
#_16F20F: db $00
#_16F210: db $03 ; Direct Copy
#_16F211: db $0F, $07, $01, $03
#_16F215: db $23 ; Byte Fill
#_16F216: db $00
#_16F217: db $0B ; Direct Copy
#_16F218: db $70, $FC, $50, $FC, $C0, $F4, $80, $F4
#_16F220: db $00, $E0, $00, $C0
#_16F224: db $23 ; Byte Fill
#_16F225: db $00
#_16F226: db $03 ; Direct Copy
#_16F227: db $F0, $D0, $C0, $80
#_16F22B: db $23 ; Byte Fill
#_16F22C: db $00
#_16F22D: db $E0, $2E ; EXT Direct Copy
#_16F22F: db $60, $00, $B8, $60, $DC, $78, $C6, $7C
#_16F237: db $4A, $34, $67, $3A, $3B, $1E, $1D, $06
#_16F23F: db $60, $B8, $FC, $FE, $76, $7B, $3F, $1D
#_16F247: db $00, $1C, $10, $38, $10, $BE, $06, $FF
#_16F24F: db $60, $FF, $08, $7D, $08, $1C, $00, $38
#_16F257: db $00, $10, $10, $1E, $78, $08, $08
#_16F25E: db $24 ; Byte Fill
#_16F25F: db $00
#_16F260: db $06 ; Direct Copy
#_16F261: db $10, $00, $38, $10, $28, $10, $10
#_16F268: db $43 ; Word Fill
#_16F269: db $00, $01 ; Word Fill
#_16F26B: db $22 ; Byte Fill
#_16F26C: db $00
#_16F26D: db $05 ; Direct Copy
#_16F26E: db $10, $38, $38, $10, $01, $01
#_16F274: db $27 ; Byte Fill
#_16F275: db $00
#_16F276: db $07 ; Direct Copy
#_16F277: db $20, $00, $D0, $20, $50, $E0, $28, $F0
#_16F27F: db $23 ; Byte Fill
#_16F280: db $00
#_16F281: db $03 ; Direct Copy
#_16F282: db $20, $D0, $D0, $A8
#_16F286: db $23 ; Byte Fill
#_16F287: db $00
#_16F288: db $13 ; Direct Copy
#_16F289: db $02, $00, $05, $02, $04, $03, $0B, $07
#_16F291: db $11, $0F, $13, $0F, $00, $00, $02, $05
#_16F299: db $04, $0B, $19, $1B
#_16F29D: db $25 ; Byte Fill
#_16F29E: db $00
#_16F29F: db $09 ; Direct Copy
#_16F2A0: db $80, $00, $40, $80, $20, $C0, $B0, $E0
#_16F2A8: db $C8, $F0
#_16F2AA: db $22 ; Byte Fill
#_16F2AB: db $00
#_16F2AC: db $E0, $34 ; EXT Direct Copy
#_16F2AE: db $80, $40, $20, $B0, $C8, $E0, $00, $DB
#_16F2B6: db $60, $94, $7B, $63, $2F, $42, $37, $20
#_16F2BE: db $1F, $58, $3E, $A1, $7C, $E0, $DB, $B4
#_16F2C6: db $7B, $5F, $2F, $5F, $BE, $07, $00, $DB
#_16F2CE: db $06, $29, $DE, $C6, $F4, $42, $EC, $04
#_16F2D6: db $F8, $1A, $7C, $85, $3E, $07, $DB, $2D
#_16F2DE: db $DE, $FA, $F4, $FA, $7D
#_16F2E3: db $E4, $F3 ; EXT Byte Fill
#_16F2E5: db $00
#_16F2E6: db $06 ; Direct Copy
#_16F2E7: db $08, $00, $1C, $08, $24, $18, $18
#_16F2EE: db $26 ; Byte Fill
#_16F2EF: db $00
#_16F2F0: db $08 ; Direct Copy
#_16F2F1: db $08, $1C, $3C, $18, $00, $00, $A8, $70
#_16F2F9: db $70
#_16F2FA: db $2C ; Byte Fill
#_16F2FB: db $00
#_16F2FC: db $01 ; Direct Copy
#_16F2FD: db $E8, $70
#_16F2FF: db $25 ; Byte Fill
#_16F300: db $00
#_16F301: db $06 ; Direct Copy
#_16F302: db $21, $1F, $10, $0F, $09, $06, $06
#_16F309: db $28 ; Byte Fill
#_16F30A: db $00
#_16F30B: db $03 ; Direct Copy
#_16F30C: db $31, $19, $0F, $06
#_16F310: db $23 ; Byte Fill
#_16F311: db $00
#_16F312: db $06 ; Direct Copy
#_16F313: db $A4, $F8, $04, $F8, $08, $F0, $F0
#_16F31A: db $28 ; Byte Fill
#_16F31B: db $00
#_16F31C: db $03 ; Direct Copy
#_16F31D: db $A4, $04, $D8, $F0
#_16F321: db $23 ; Byte Fill
#_16F322: db $00
#_16F323: db $E0, $2F ; EXT Direct Copy
#_16F325: db $A1, $7C, $58, $3E, $20, $1F, $42, $37
#_16F32D: db $63, $2F, $94, $7B, $DB, $60, $E0, $00
#_16F335: db $BE, $5F, $2F, $5F, $7B, $B4, $DB, $E0
#_16F33D: db $85, $3E, $1A, $7C, $04, $F8, $42, $EC
#_16F345: db $C6, $F4, $29, $DE, $DB, $06, $07, $00
#_16F34D: db $7D, $FA, $F4, $FA, $DE, $2D, $DB, $07
#_16F355: db $E4, $EF ; EXT Byte Fill
#_16F357: db $00
#_16F358: db $FF ; End of GFX B1

;===================================================================================================

GFX_B2:
#_16F359: db $17 ; Direct Copy
#_16F35A: db $E0, $00, $D8, $40, $DE, $58, $E7, $AE
#_16F362: db $E1, $AF, $74, $DF, $FA, $2F, $7D, $D7
#_16F36A: db $E0, $B8, $BE, $D7, $D1, $68, $F4, $BA
#_16F372: db $25 ; Byte Fill
#_16F373: db $00
#_16F374: db $03 ; Direct Copy
#_16F375: db $80, $00, $C0, $80
#_16F379: db $43 ; Word Fill
#_16F37A: db $60, $C0 ; Word Fill
#_16F37C: db $01 ; Direct Copy
#_16F37D: db $30, $E0
#_16F37F: db $22 ; Byte Fill
#_16F380: db $00
#_16F381: db $04 ; Direct Copy
#_16F382: db $80, $C0, $60, $60, $30
#_16F387: db $2B ; Byte Fill
#_16F388: db $00
#_16F389: db $03 ; Direct Copy
#_16F38A: db $01, $00, $03, $01
#_16F38E: db $25 ; Byte Fill
#_16F38F: db $00
#_16F390: db $01 ; Direct Copy
#_16F391: db $01, $03
#_16F393: db $23 ; Byte Fill
#_16F394: db $00
#_16F395: db $13 ; Direct Copy
#_16F396: db $01, $00, $1F, $00, $7F, $1C, $FF, $78
#_16F39E: db $FF, $E0, $7F, $C0, $00, $00, $01, $1F
#_16F3A6: db $7F, $DF, $BF, $7F
#_16F3AA: db $23 ; Byte Fill
#_16F3AB: db $00
#_16F3AC: db $11 ; Direct Copy
#_16F3AD: db $F0, $00, $FE, $30, $FF, $CE, $8B, $F7
#_16F3B5: db $78, $FF, $7D, $FF, $00, $00, $F0, $FE
#_16F3BD: db $FF, $8B
#_16F3BF: db $29 ; Byte Fill
#_16F3C0: db $00
#_16F3C1: db $07 ; Direct Copy
#_16F3C2: db $80, $00, $E0, $80, $70, $E0, $18, $F0
#_16F3CA: db $23 ; Byte Fill
#_16F3CB: db $00
#_16F3CC: db $1B ; Direct Copy
#_16F3CD: db $80, $E0, $70, $18, $FE, $7F, $FD, $BF
#_16F3D5: db $FB, $DF, $F7, $EF, $EF, $F7, $DF, $FB
#_16F3DD: db $BF, $FD, $7F, $FE, $FE, $FD, $FB, $F7
#_16F3E5: db $EF, $DF, $BF, $7F
#_16F3E9: db $97 ; Repeat Fill
#_16F3EA: db $90, $00 ; Repeat Fill bytes
#_16F3EC: db $F0, $2F ; EXT Repeat Fill
#_16F3EE: db $90, $00 ; Repeat Fill bytes
#_16F3F0: db $F0, $5F ; EXT Repeat Fill
#_16F3F2: db $90, $00 ; Repeat Fill bytes
#_16F3F4: db $F0, $2F ; EXT Repeat Fill
#_16F3F6: db $90, $00 ; Repeat Fill bytes
#_16F3F8: db $1F ; Direct Copy
#_16F3F9: db $2C, $B4, $2E, $FB, $7C, $4B, $4E, $73
#_16F401: db $4E, $FB, $3C, $52, $BC, $EA, $7D, $D0
#_16F409: db $CB, $0C, $BD, $8D, $0D, $BF, $31, $63
#_16F411: db $B0, $E0, $38, $F0, $98, $F0, $F8, $D0
#_16F419: db $44 ; Word Fill
#_16F41A: db $DC, $E8 ; Word Fill
#_16F41C: db $06 ; Direct Copy
#_16F41D: db $F0, $3C, $F0, $30, $38, $18, $38
#_16F424: db $22 ; Byte Fill
#_16F425: db $1C
#_16F426: db $E0, $60 ; EXT Direct Copy
#_16F428: db $3C, $06, $03, $0E, $07, $1C, $0E, $35
#_16F430: db $1C, $25, $1E, $53, $3C, $47, $3B, $5D
#_16F438: db $27, $06, $0C, $1B, $33, $29, $43, $47
#_16F440: db $5C, $FF, $80, $CD, $33, $BA, $67, $B4
#_16F448: db $4D, $F9, $1B, $C7, $06, $7F, $C1, $83
#_16F450: db $B3, $FF, $CC, $99, $B3, $E6, $F9, $7F
#_16F458: db $7C, $80, $1E, $1A, $7E, $FF, $01, $FF
#_16F460: db $56, $E4, $BB, $E7, $5B, $9C, $FE, $40
#_16F468: db $D3, $FD, $A1, $3E, $3F, $64, $E4, $81
#_16F470: db $2D, $98, $F0, $4C, $F8, $AC, $F8, $C6
#_16F478: db $7C, $E6, $A4, $F9, $58, $FF, $A6, $5F
#_16F480: db $B8, $18, $8C, $4C, $A6, $DE, $E7, $79
#_16F488: db $DF
#_16F489: db $F0, $EF ; EXT Repeat Fill
#_16F48B: db $90, $00 ; Repeat Fill bytes
#_16F48D: db $18 ; Direct Copy
#_16F48E: db $F3, $DE, $E5, $B6, $6B, $2C, $57, $18
#_16F496: db $5D, $92, $5D, $86, $73, $4C, $BF, $C1
#_16F49E: db $6D, $59, $D3, $E7, $ED, $F9, $F3, $3F
#_16F4A6: db $FC
#_16F4A7: db $43 ; Word Fill
#_16F4A8: db $00, $F8 ; Word Fill
#_16F4AA: db $00 ; Direct Copy
#_16F4AB: db $10
#_16F4AC: db $43 ; Word Fill
#_16F4AD: db $F8, $30 ; Word Fill
#_16F4AF: db $06 ; Direct Copy
#_16F4B0: db $F0, $60, $F0, $E0, $60, $C0, $FC
#_16F4B7: db $23 ; Byte Fill
#_16F4B8: db $F8
#_16F4B9: db $02 ; Direct Copy
#_16F4BA: db $D0, $B0, $60
#_16F4BD: db $25 ; Byte Fill
#_16F4BE: db $00
#_16F4BF: db $09 ; Direct Copy
#_16F4C0: db $03, $00, $07, $03, $0D, $07, $1B, $0F
#_16F4C8: db $1F, $0E
#_16F4CA: db $22 ; Byte Fill
#_16F4CB: db $00
#_16F4CC: db $0A ; Direct Copy
#_16F4CD: db $03, $04, $09, $13, $1F, $0F, $00, $3C
#_16F4D5: db $07, $F8, $2D
#_16F4D8: db $43 ; Word Fill
#_16F4D9: db $F1, $DA ; Word Fill
#_16F4DB: db $0D ; Direct Copy
#_16F4DC: db $E8, $BB, $D0, $77, $92, $F2, $0F, $3C
#_16F4E4: db $FB, $76, $F6, $E7, $CF, $8D
#_16F4EA: db $22 ; Byte Fill
#_16F4EB: db $00
#_16F4EC: db $07 ; Direct Copy
#_16F4ED: db $01, $01, $02, $10, $01, $00, $00, $04
#_16F4F5: db $25 ; Byte Fill
#_16F4F6: db $00
#_16F4F7: db $02 ; Direct Copy
#_16F4F8: db $01, $02, $01
#_16F4FB: db $28 ; Byte Fill
#_16F4FC: db $00
#_16F4FD: db $07 ; Direct Copy
#_16F4FE: db $90, $10, $28, $00, $10, $00, $00, $10
#_16F506: db $43 ; Word Fill
#_16F507: db $10, $00 ; Word Fill
#_16F509: db $06 ; Direct Copy
#_16F50A: db $00, $90, $28, $10, $00, $10, $10
#_16F511: db $28 ; Byte Fill
#_16F512: db $00
#_16F513: db $04 ; Direct Copy
#_16F514: db $02, $02, $05, $00, $02
#_16F519: db $25 ; Byte Fill
#_16F51A: db $00
#_16F51B: db $02 ; Direct Copy
#_16F51C: db $02, $05, $02
#_16F51F: db $2C ; Byte Fill
#_16F520: db $00
#_16F521: db $83 ; Repeat Fill
#_16F522: db $84, $03 ; Repeat Fill bytes
#_16F524: db $25 ; Byte Fill
#_16F525: db $00
#_16F526: db $01 ; Direct Copy
#_16F527: db $10, $10
#_16F529: db $E4, $26 ; EXT Byte Fill
#_16F52B: db $00
#_16F52C: db $00 ; Direct Copy
#_16F52D: db $10
#_16F52E: db $26 ; Byte Fill
#_16F52F: db $00
#_16F530: db $00 ; Direct Copy
#_16F531: db $10
#_16F532: db $F0, $5F ; EXT Repeat Fill
#_16F534: db $90, $00 ; Repeat Fill bytes
#_16F536: db $25 ; Byte Fill
#_16F537: db $00
#_16F538: db $09 ; Direct Copy
#_16F539: db $03, $03, $0C, $0F, $13, $1C, $27, $38
#_16F541: db $2F, $30
#_16F543: db $23 ; Byte Fill
#_16F544: db $00
#_16F545: db $03 ; Direct Copy
#_16F546: db $03, $0C, $18, $1E
#_16F54A: db $25 ; Byte Fill
#_16F54B: db $00
#_16F54C: db $09 ; Direct Copy
#_16F54D: db $C0, $C0, $30, $F0, $C8, $38, $E4, $1C
#_16F555: db $F4, $0C
#_16F557: db $23 ; Byte Fill
#_16F558: db $00
#_16F559: db $10 ; Direct Copy
#_16F55A: db $C0, $30, $18, $08, $F8, $C3, $63, $D7
#_16F562: db $DF, $BE, $86, $7C, $AC, $78, $18, $E0
#_16F56A: db $E0
#_16F56B: db $22 ; Byte Fill
#_16F56C: db $00
#_16F56D: db $0A ; Direct Copy
#_16F56E: db $7C, $6D, $C3, $96, $8C, $18, $E0, $00
#_16F576: db $C0, $80, $80
#_16F579: db $2C ; Byte Fill
#_16F57A: db $00
#_16F57B: db $01 ; Direct Copy
#_16F57C: db $C0, $80
#_16F57E: db $25 ; Byte Fill
#_16F57F: db $00
#_16F580: db $08 ; Direct Copy
#_16F581: db $3F, $18, $3F, $16, $7B, $2F, $71, $1F
#_16F589: db $F1
#_16F58A: db $44 ; Word Fill
#_16F58B: db $7F, $E3 ; Word Fill
#_16F58D: db $06 ; Direct Copy
#_16F58E: db $E7, $7F, $3F, $3D, $7A, $71, $F0
#_16F595: db $22 ; Byte Fill
#_16F596: db $E0
#_16F597: db $0B ; Direct Copy
#_16F598: db $9F, $FF, $89, $FF, $E3, $7F, $F7, $9C
#_16F5A0: db $7C, $6B, $9B, $B7
#_16F5A4: db $43 ; Word Fill
#_16F5A5: db $DA, $D6 ; Word Fill
#_16F5A7: db $10 ; Direct Copy
#_16F5A8: db $80, $80, $E3, $77, $9C, $48, $29, $29
#_16F5B0: db $00, $01, $11, $12, $00, $11, $54, $6C
#_16F5B8: db $00
#_16F5B9: db $22 ; Byte Fill
#_16F5BA: db $10
#_16F5BB: db $23 ; Byte Fill
#_16F5BC: db $00
#_16F5BD: db $03 ; Direct Copy
#_16F5BE: db $01, $12, $11, $6C
#_16F5C2: db $83 ; Repeat Fill
#_16F5C3: db $8E, $03 ; Repeat Fill bytes
#_16F5C5: db $06 ; Direct Copy
#_16F5C6: db $54, $6C, $00, $90, $10, $10, $40
#_16F5CD: db $28 ; Byte Fill
#_16F5CE: db $00
#_16F5CF: db $02 ; Direct Copy
#_16F5D0: db $6C, $90, $10
#_16F5D3: db $28 ; Byte Fill
#_16F5D4: db $00
#_16F5D5: db $00 ; Direct Copy
#_16F5D6: db $01
#_16F5D7: db $32 ; Byte Fill
#_16F5D8: db $00
#_16F5D9: db $02 ; Direct Copy
#_16F5DA: db $54, $6C, $00
#_16F5DD: db $22 ; Byte Fill
#_16F5DE: db $10
#_16F5DF: db $29 ; Byte Fill
#_16F5E0: db $00
#_16F5E1: db $02 ; Direct Copy
#_16F5E2: db $6C, $10, $10
#_16F5E5: db $2A ; Byte Fill
#_16F5E6: db $00
#_16F5E7: db $00 ; Direct Copy
#_16F5E8: db $04
#_16F5E9: db $30 ; Byte Fill
#_16F5EA: db $00
#_16F5EB: db $85 ; Repeat Fill
#_16F5EC: db $7E, $03 ; Repeat Fill bytes
#_16F5EE: db $00 ; Direct Copy
#_16F5EF: db $40
#_16F5F0: db $28 ; Byte Fill
#_16F5F1: db $00
#_16F5F2: db $01 ; Direct Copy
#_16F5F3: db $28, $10
#_16F5F5: db $25 ; Byte Fill
#_16F5F6: db $00
#_16F5F7: db $F0, $5F ; EXT Repeat Fill
#_16F5F9: db $90, $00 ; Repeat Fill bytes
#_16F5FB: db $09 ; Direct Copy
#_16F5FC: db $3F, $20, $1F, $3A, $0F, $14, $07, $08
#_16F604: db $00, $07
#_16F606: db $25 ; Byte Fill
#_16F607: db $00
#_16F608: db $03 ; Direct Copy
#_16F609: db $3F, $11, $0B, $07
#_16F60D: db $23 ; Byte Fill
#_16F60E: db $00
#_16F60F: db $09 ; Direct Copy
#_16F610: db $F4, $0C, $F8, $0C, $E0, $18, $E0, $10
#_16F618: db $00, $E0
#_16F61A: db $25 ; Byte Fill
#_16F61B: db $00
#_16F61C: db $02 ; Direct Copy
#_16F61D: db $0C, $88, $90
#_16F620: db $24 ; Byte Fill
#_16F621: db $00
#_16F622: db $FF ; End of GFX B2

;===================================================================================================

GFX_B3:
#_16F623: db $29 ; Byte Fill
#_16F624: db $00
#_16F625: db $05 ; Direct Copy
#_16F626: db $01, $00, $03, $01, $07, $01
#_16F62C: db $24 ; Byte Fill
#_16F62D: db $00
#_16F62E: db $E0, $32 ; EXT Direct Copy
#_16F630: db $01, $03, $07, $00, $00, $07, $00, $1F
#_16F638: db $07, $78, $1F, $F9, $67, $C5, $FB, $86
#_16F640: db $FF, $8D, $FD, $00, $07, $1F, $78, $F8
#_16F648: db $C4, $80, $82, $FC, $00, $FF, $FC, $00
#_16F650: db $FF, $3F, $FF, $C0, $C0, $3F, $3C, $FF
#_16F658: db $C3, $7E, $AF, $FC, $FF, $00, $00, $3F
#_16F660: db $C3, $3F, $7E
#_16F663: db $23 ; Byte Fill
#_16F664: db $00
#_16F665: db $E0, $2B ; EXT Direct Copy
#_16F667: db $80, $00, $E0, $80, $F0, $00, $F8, $80
#_16F66F: db $F8, $C0, $6C, $F8, $00, $00, $80, $60
#_16F677: db $F0, $F8, $F8, $64, $F0, $00, $2E, $F0
#_16F67F: db $99, $76, $9C, $77, $8E, $7F, $CE, $3F
#_16F687: db $CE, $FF, $8C, $7F, $F0, $EE, $79, $7C
#_16F68F: db $6E, $1E, $DE, $6C
#_16F693: db $23 ; Byte Fill
#_16F694: db $00
#_16F695: db $03 ; Direct Copy
#_16F696: db $80, $00, $40, $80
#_16F69A: db $47 ; Word Fill
#_16F69B: db $20, $C0 ; Word Fill
#_16F69D: db $03 ; Direct Copy
#_16F69E: db $00, $00, $80, $40
#_16F6A2: db $23 ; Byte Fill
#_16F6A3: db $20
#_16F6A4: db $E0, $2F ; EXT Direct Copy
#_16F6A6: db $03, $00, $0C, $03, $1D, $06, $2D, $16
#_16F6AE: db $78, $2D, $4E, $36, $85, $6B, $86, $6B
#_16F6B6: db $03, $0D, $1C, $2E, $5B, $4D, $9C, $96
#_16F6BE: db $C0, $00, $30, $C0, $B8, $60, $B4, $68
#_16F6C6: db $1E, $B4, $72, $6C, $A1, $D6, $61, $D6
#_16F6CE: db $C0, $B0, $38, $74, $DA, $B2, $39, $69
#_16F6D6: db $23 ; Byte Fill
#_16F6D7: db $00
#_16F6D8: db $13 ; Direct Copy
#_16F6D9: db $03, $00, $0E, $01, $1A, $07, $15, $0E
#_16F6E1: db $2A, $1D, $17, $09, $00, $00, $03, $0D
#_16F6E9: db $16, $1D, $2B, $17
#_16F6ED: db $23 ; Byte Fill
#_16F6EE: db $00
#_16F6EF: db $1B ; Direct Copy
#_16F6F0: db $C0, $00, $70, $80, $58, $E0, $A8, $70
#_16F6F8: db $54, $B8, $E8, $90, $00, $00, $C0, $B0
#_16F700: db $68, $B8, $D4, $E8, $3F, $00, $3C, $00
#_16F708: db $38, $00, $30, $00
#_16F70C: db $43 ; Word Fill
#_16F70D: db $20, $10 ; Word Fill
#_16F70F: db $03 ; Direct Copy
#_16F710: db $10, $08, $18, $08
#_16F714: db $23 ; Byte Fill
#_16F715: db $3F
#_16F716: db $0B ; Direct Copy
#_16F717: db $2F, $2F, $17, $1F, $FC, $00, $3C, $00
#_16F71F: db $1C, $00, $0C, $00
#_16F723: db $43 ; Word Fill
#_16F724: db $04, $08 ; Word Fill
#_16F726: db $03 ; Direct Copy
#_16F727: db $08, $10, $18, $10
#_16F72B: db $23 ; Byte Fill
#_16F72C: db $FC
#_16F72D: db $03 ; Direct Copy
#_16F72E: db $F4, $F4, $E8, $F8
#_16F732: db $25 ; Byte Fill
#_16F733: db $00
#_16F734: db $01 ; Direct Copy
#_16F735: db $01, $00
#_16F737: db $43 ; Word Fill
#_16F738: db $02, $01 ; Word Fill
#_16F73A: db $43 ; Word Fill
#_16F73B: db $06, $01 ; Word Fill
#_16F73D: db $22 ; Byte Fill
#_16F73E: db $00
#_16F73F: db $0C ; Direct Copy
#_16F740: db $01, $02, $02, $06, $06, $00, $00, $70
#_16F748: db $00, $8C, $70, $02, $FC
#_16F74D: db $47 ; Word Fill
#_16F74E: db $01, $FE ; Word Fill
#_16F750: db $03 ; Direct Copy
#_16F751: db $00, $70, $8C, $02
#_16F755: db $23 ; Byte Fill
#_16F756: db $01
#_16F757: db $E4, $2F ; EXT Byte Fill
#_16F759: db $00
#_16F75A: db $43 ; Word Fill
#_16F75B: db $07, $00 ; Word Fill
#_16F75D: db $45 ; Word Fill
#_16F75E: db $0F, $04 ; Word Fill
#_16F760: db $43 ; Word Fill
#_16F761: db $1F, $08 ; Word Fill
#_16F763: db $03 ; Direct Copy
#_16F764: db $1E, $09, $07, $07
#_16F768: db $22 ; Byte Fill
#_16F769: db $0F
#_16F76A: db $E0, $36 ; EXT Direct Copy
#_16F76C: db $1F, $1F, $1E, $8B, $FB, $1B, $FE, $A3
#_16F774: db $5E, $DB, $3E, $DF, $38, $D7, $3D, $57
#_16F77C: db $BD, $57, $B5, $84, $05, $A5, $C1, $C3
#_16F784: db $CB, $4B, $4A, $CB, $77, $D1, $37, $A0
#_16F78C: db $D7, $A1, $E8, $C2, $C7, $8C, $4B, $D3
#_16F794: db $FD, $FF, $DC, $C8, $CC, $AE, $97, $B8
#_16F79C: db $B4, $03, $3F, $6A, $CC, $EA, $CC
#_16F7A3: db $44 ; Word Fill
#_16F7A4: db $EB, $AE ; Word Fill
#_16F7A6: db $08 ; Direct Copy
#_16F7A7: db $2E, $EB, $AE, $D3, $5E, $53, $DE, $72
#_16F7AF: db $F2
#_16F7B0: db $23 ; Byte Fill
#_16F7B1: db $D3
#_16F7B2: db $09 ; Direct Copy
#_16F7B3: db $A3, $23, $98, $77, $39, $F6, $3F, $F0
#_16F7BB: db $2E, $F1
#_16F7BD: db $43 ; Word Fill
#_16F7BE: db $5E, $E1 ; Word Fill
#_16F7C0: db $43 ; Word Fill
#_16F7C1: db $BE, $C1 ; Word Fill
#_16F7C3: db $09 ; Direct Copy
#_16F7C4: db $78, $F9, $FF, $EE, $DE, $DE, $BE, $BE
#_16F7CC: db $40, $80
#_16F7CE: db $49 ; Word Fill
#_16F7CF: db $80, $00 ; Word Fill
#_16F7D1: db $04 ; Direct Copy
#_16F7D2: db $40, $80, $C0, $80, $40
#_16F7D7: db $24 ; Byte Fill
#_16F7D8: db $80
#_16F7D9: db $E0, $3C ; EXT Direct Copy
#_16F7DB: db $C0, $C0, $96, $7B, $D6, $7B, $67, $3B
#_16F7E3: db $7F, $33, $3F, $17, $1F, $0F, $0F, $03
#_16F7EB: db $03, $00, $86, $C6, $47, $76, $3E, $1F
#_16F7F3: db $0F, $03, $69, $DE, $6B, $DE, $E6, $DC
#_16F7FB: db $FE, $CC, $FC, $E8, $F8, $F0, $F0, $C0
#_16F803: db $C0, $00, $61, $63, $E2, $6E, $7C, $F8
#_16F80B: db $F0, $C0, $16, $09, $2A, $15, $15, $0A
#_16F813: db $19, $06, $0D, $02, $03
#_16F818: db $24 ; Byte Fill
#_16F819: db $00
#_16F81A: db $12 ; Direct Copy
#_16F81B: db $16, $2A, $15, $19, $0D, $03, $00, $00
#_16F823: db $68, $90, $54, $A8, $A8, $50, $98, $60
#_16F82B: db $B0, $40, $C0
#_16F82E: db $24 ; Byte Fill
#_16F82F: db $00
#_16F830: db $0E ; Direct Copy
#_16F831: db $68, $54, $A8, $98, $B0, $C0, $00, $00
#_16F839: db $0C, $04, $06, $02, $02, $01, $01
#_16F840: db $28 ; Byte Fill
#_16F841: db $00
#_16F842: db $03 ; Direct Copy
#_16F843: db $0F, $07, $02, $01
#_16F847: db $23 ; Byte Fill
#_16F848: db $00
#_16F849: db $06 ; Direct Copy
#_16F84A: db $30, $20, $60, $40, $40, $80, $80
#_16F851: db $28 ; Byte Fill
#_16F852: db $00
#_16F853: db $03 ; Direct Copy
#_16F854: db $F0, $E0, $40, $80
#_16F858: db $23 ; Byte Fill
#_16F859: db $00
#_16F85A: db $01 ; Direct Copy
#_16F85B: db $09, $07
#_16F85D: db $43 ; Word Fill
#_16F85E: db $0A, $06 ; Word Fill
#_16F860: db $04 ; Direct Copy
#_16F861: db $0B, $07, $1C, $0B, $17
#_16F866: db $43 ; Word Fill
#_16F867: db $0C, $14 ; Word Fill
#_16F869: db $0A ; Direct Copy
#_16F86A: db $0F, $08, $09, $09, $08, $14, $13, $13
#_16F872: db $10, $CE, $F0
#_16F875: db $43 ; Word Fill
#_16F876: db $92, $EC ; Word Fill
#_16F878: db $05 ; Direct Copy
#_16F879: db $72, $CC, $F2, $2C, $EA, $D4
#_16F87F: db $43 ; Word Fill
#_16F880: db $D4, $B8 ; Word Fill
#_16F882: db $07 ; Direct Copy
#_16F883: db $0E, $12, $12, $32, $D2, $2A, $44, $44
#_16F88B: db $E4, $2F ; EXT Byte Fill
#_16F88D: db $00
#_16F88E: db $01 ; Direct Copy
#_16F88F: db $1E, $09
#_16F891: db $43 ; Word Fill
#_16F892: db $1F, $0C ; Word Fill
#_16F894: db $E0, $72 ; EXT Direct Copy
#_16F896: db $11, $0A, $1B, $0A, $1F, $0E, $1F, $0D
#_16F89E: db $1B, $09, $1E, $1F, $17, $15, $1D, $19
#_16F8A6: db $1B, $1F, $DC, $B8, $58, $B0, $F1, $2C
#_16F8AE: db $E3, $8D, $C4, $43, $48, $C7, $6B, $F4
#_16F8B6: db $1D, $EB, $47, $4F, $FF, $FF, $FC, $38
#_16F8BE: db $0B, $1C, $FF, $E1, $FF, $0F, $F0, $EE
#_16F8C6: db $1B, $7F, $FA, $FF, $04, $FB, $F8, $07
#_16F8CE: db $3D, $C3, $7E, $F0, $07, $E0, $00, $04
#_16F8D6: db $F8, $3D, $B6, $FC, $46, $7C, $E6, $DC
#_16F8DE: db $9C, $E8, $1C, $E8, $18, $F0, $38, $F0
#_16F8E6: db $F0, $E0, $06, $86, $26, $1C, $1C, $18
#_16F8EE: db $38, $F0, $7D, $83, $7B, $86, $76, $8C
#_16F8F6: db $82, $7C, $7C, $D8, $3C, $F8, $38, $E0
#_16F8FE: db $E0, $00, $7D, $7B, $76, $86, $7C, $BC
#_16F906: db $F8, $E0, $80
#_16F909: db $2E ; Byte Fill
#_16F90A: db $00
#_16F90B: db $00 ; Direct Copy
#_16F90C: db $80
#_16F90D: db $2C ; Byte Fill
#_16F90E: db $00
#_16F90F: db $09 ; Direct Copy
#_16F910: db $03, $00, $07, $03, $0D, $07, $1B, $0F
#_16F918: db $1F, $0E
#_16F91A: db $22 ; Byte Fill
#_16F91B: db $00
#_16F91C: db $0A ; Direct Copy
#_16F91D: db $03, $04, $09, $13, $1F, $0F, $00, $3C
#_16F925: db $07, $F8, $2D
#_16F928: db $43 ; Word Fill
#_16F929: db $F1, $DA ; Word Fill
#_16F92B: db $0D ; Direct Copy
#_16F92C: db $E8, $BB, $D0, $77, $92, $F2, $0F, $3C
#_16F934: db $FB, $76, $F6, $E7, $CF, $8D
#_16F93A: db $83 ; Repeat Fill
#_16F93B: db $08, $00 ; Repeat Fill bytes
#_16F93D: db $13 ; Direct Copy
#_16F93E: db $06, $00, $0D, $00, $1C, $09, $36, $12
#_16F946: db $35, $1B, $62, $35, $00, $01, $07, $0E
#_16F94E: db $1F, $3D, $34, $6A
#_16F952: db $83 ; Repeat Fill
#_16F953: db $4A, $00 ; Repeat Fill bytes
#_16F955: db $E0, $43 ; EXT Direct Copy
#_16F957: db $60, $00, $B0, $00, $38, $90, $6C, $48
#_16F95F: db $AC, $D8, $46, $AC, $00, $80, $E0, $70
#_16F967: db $F8, $BC, $2C, $56, $17, $0F, $2F, $18
#_16F96F: db $3F, $17, $39, $09, $28, $18, $49, $39
#_16F977: db $71, $31, $BF, $03, $17, $2F, $38, $36
#_16F97F: db $27, $46, $6E, $FC, $5C, $B8, $DC, $B0
#_16F987: db $F4, $48, $E4, $98, $DC, $E0, $82, $FC
#_16F98F: db $22, $DC, $72, $8C, $4C, $DC, $F4, $64
#_16F997: db $1C, $02, $22, $52
#_16F99B: db $25 ; Byte Fill
#_16F99C: db $00
#_16F99D: db $09 ; Direct Copy
#_16F99E: db $03, $00, $07, $02, $0E, $02, $14, $02
#_16F9A6: db $13, $0C
#_16F9A8: db $22 ; Byte Fill
#_16F9A9: db $00
#_16F9AA: db $04 ; Direct Copy
#_16F9AB: db $03, $04, $0D, $1D, $13
#_16F9B0: db $25 ; Byte Fill
#_16F9B1: db $00
#_16F9B2: db $09 ; Direct Copy
#_16F9B3: db $C0, $00, $E0, $40, $70, $40, $28, $40
#_16F9BB: db $C8, $30
#_16F9BD: db $22 ; Byte Fill
#_16F9BE: db $00
#_16F9BF: db $04 ; Direct Copy
#_16F9C0: db $C0, $20, $B0, $B8, $C8
#_16F9C5: db $E4, $2F ; EXT Byte Fill
#_16F9C7: db $00
#_16F9C8: db $06 ; Direct Copy
#_16F9C9: db $0B, $05, $09, $06, $04, $03, $03
#_16F9D0: db $28 ; Byte Fill
#_16F9D1: db $00
#_16F9D2: db $03 ; Direct Copy
#_16F9D3: db $0B, $09, $04, $03
#_16F9D7: db $23 ; Byte Fill
#_16F9D8: db $00
#_16F9D9: db $08 ; Direct Copy
#_16F9DA: db $FE, $C1, $F7, $38, $67, $66, $F7, $FF
#_16F9E2: db $FF
#_16F9E3: db $26 ; Byte Fill
#_16F9E4: db $00
#_16F9E5: db $04 ; Direct Copy
#_16F9E6: db $FE, $C7, $9F, $F3, $FF
#_16F9EB: db $22 ; Byte Fill
#_16F9EC: db $00
#_16F9ED: db $08 ; Direct Copy
#_16F9EE: db $7F, $80, $FF, $00, $FF, $1C, $FC, $E0
#_16F9F6: db $E0
#_16F9F7: db $26 ; Byte Fill
#_16F9F8: db $00
#_16F9F9: db $04 ; Direct Copy
#_16F9FA: db $7F, $FF, $FF, $FC, $E0
#_16F9FF: db $22 ; Byte Fill
#_16FA00: db $00
#_16FA01: db $04 ; Direct Copy
#_16FA02: db $E0, $00, $C0, $00, $80
#_16FA07: db $2A ; Byte Fill
#_16FA08: db $00
#_16FA09: db $02 ; Direct Copy
#_16FA0A: db $E0, $C0, $80
#_16FA0D: db $E4, $34 ; EXT Byte Fill
#_16FA0F: db $00
#_16FA10: db $08 ; Direct Copy
#_16FA11: db $3F, $18, $3F, $16, $7B, $2F, $71, $1F
#_16FA19: db $F1
#_16FA1A: db $44 ; Word Fill
#_16FA1B: db $7F, $E3 ; Word Fill
#_16FA1D: db $06 ; Direct Copy
#_16FA1E: db $E7, $7F, $3F, $3D, $7A, $71, $F0
#_16FA25: db $22 ; Byte Fill
#_16FA26: db $E0
#_16FA27: db $0B ; Direct Copy
#_16FA28: db $9F, $FF, $89, $FF, $E3, $7F, $F7, $9C
#_16FA30: db $7C, $6B, $9B, $B7
#_16FA34: db $43 ; Word Fill
#_16FA35: db $DA, $D6 ; Word Fill
#_16FA37: db $14 ; Direct Copy
#_16FA38: db $80, $80, $E3, $77, $9C, $48, $29, $29
#_16FA40: db $62, $35, $35, $1A, $38, $14, $19, $07
#_16FA48: db $0E, $07, $07, $01, $01
#_16FA4D: db $22 ; Byte Fill
#_16FA4E: db $00
#_16FA4F: db $14 ; Direct Copy
#_16FA50: db $6A, $35, $3B, $18, $0E, $07, $01, $00
#_16FA58: db $46, $AC, $AC, $58, $1C, $28, $98, $E0
#_16FA60: db $70, $E0, $E0, $80, $80
#_16FA65: db $22 ; Byte Fill
#_16FA66: db $00
#_16FA67: db $14 ; Direct Copy
#_16FA68: db $56, $AC, $DC, $18, $70, $E0, $80, $00
#_16FA70: db $FE, $21, $F9, $40, $B5, $07, $AA, $0F
#_16FA78: db $7F, $1C, $7C, $10, $30
#_16FA7D: db $22 ; Byte Fill
#_16FA7E: db $00
#_16FA7F: db $12 ; Direct Copy
#_16FA80: db $CA, $97, $E8, $F2, $6F, $7C, $30, $00
#_16FA88: db $9A, $04, $EE, $60, $F4, $10, $DE, $08
#_16FA90: db $0E, $04, $04
#_16FA93: db $24 ; Byte Fill
#_16FA94: db $00
#_16FA95: db $10 ; Direct Copy
#_16FA96: db $EA, $96, $EC, $D2, $0A, $04, $00, $00
#_16FA9E: db $1C, $09, $1C, $0A, $0C, $07, $07, $03
#_16FAA6: db $03
#_16FAA7: db $26 ; Byte Fill
#_16FAA8: db $00
#_16FAA9: db $04 ; Direct Copy
#_16FAAA: db $1E, $1D, $0C, $07, $03
#_16FAAF: db $22 ; Byte Fill
#_16FAB0: db $00
#_16FAB1: db $08 ; Direct Copy
#_16FAB2: db $38, $90, $38, $50, $30, $E0, $E0, $C0
#_16FABA: db $C0
#_16FABB: db $26 ; Byte Fill
#_16FABC: db $00
#_16FABD: db $04 ; Direct Copy
#_16FABE: db $78, $B8, $30, $E0, $C0
#_16FAC3: db $E4, $32 ; EXT Byte Fill
#_16FAC5: db $00
#_16FAC6: db $FF ; End of GFX B3

;===================================================================================================

GFX_B4:
#_16FAC7: db $37 ; Byte Fill
#_16FAC8: db $00
#_16FAC9: db $E0, $2F ; EXT Direct Copy
#_16FACB: db $1E, $00, $2B, $1C, $54, $3B, $6A, $37
#_16FAD3: db $E8, $77, $D4, $6F, $7C, $07, $5B, $27
#_16FADB: db $1E, $3B, $74, $6B, $EB, $D7, $77, $53
#_16FAE3: db $00, $00, $E0, $00, $1F, $E0, $E8, $F7
#_16FAEB: db $1C, $EF, $6C, $FF, $B2, $FF, $7C, $93
#_16FAF3: db $00, $E0, $1F, $EF, $DF, $EF, $B3, $3D
#_16FAFB: db $25 ; Byte Fill
#_16FAFC: db $00
#_16FAFD: db $01 ; Direct Copy
#_16FAFE: db $80, $00
#_16FB00: db $47 ; Word Fill
#_16FB01: db $40, $80 ; Word Fill
#_16FB03: db $22 ; Byte Fill
#_16FB04: db $00
#_16FB05: db $00 ; Direct Copy
#_16FB06: db $80
#_16FB07: db $23 ; Byte Fill
#_16FB08: db $C0
#_16FB09: db $23 ; Byte Fill
#_16FB0A: db $00
#_16FB0B: db $13 ; Direct Copy
#_16FB0C: db $10, $00, $38, $00, $1E, $00, $0D, $02
#_16FB14: db $0A, $05, $04, $03, $00, $00, $10, $28
#_16FB1C: db $16, $0B, $0D, $07
#_16FB20: db $23 ; Byte Fill
#_16FB21: db $00
#_16FB22: db $E0, $63 ; EXT Direct Copy
#_16FB24: db $20, $00, $78, $00, $34, $08, $1A, $04
#_16FB2C: db $BA, $04, $EA, $14, $00, $00, $20, $58
#_16FB34: db $2C, $16, $B6, $DE, $9D, $66, $9F, $62
#_16FB3C: db $CE, $71, $E1, $7F, $6F, $3F, $53, $3F
#_16FB44: db $5A, $3F, $29, $1F, $9F, $9F, $CE, $E1
#_16FB4C: db $7F, $5F, $5F, $2F, $AC, $C0, $5E, $8C
#_16FB54: db $FB, $1A, $3F, $CE, $4F, $B6, $47, $BA
#_16FB5C: db $57, $FA, $B7, $FA, $AC, $52, $E5, $31
#_16FB64: db $49, $45, $55, $F5, $17, $0F, $2E, $1F
#_16FB6C: db $23, $1F, $3D, $07, $5C, $3F, $6E, $3F
#_16FB74: db $97, $7E, $99, $76, $17, $2E, $23, $3D
#_16FB7C: db $5C, $7E, $B7, $BB, $AE, $F0, $C8, $30
#_16FB84: db $70, $80, $40, $80
#_16FB88: db $44 ; Word Fill
#_16FB89: db $80, $00 ; Word Fill
#_16FB8B: db $22 ; Byte Fill
#_16FB8C: db $00
#_16FB8D: db $03 ; Direct Copy
#_16FB8E: db $AE, $C8, $70, $40
#_16FB92: db $22 ; Byte Fill
#_16FB93: db $80
#_16FB94: db $18 ; Direct Copy
#_16FB95: db $00, $6D, $33, $54, $3B, $59, $3E, $2A
#_16FB9D: db $1F, $2D, $1F, $17, $0F, $13, $0F, $16
#_16FBA5: db $0D, $6D, $54, $59, $2E, $2F, $17, $13
#_16FBAD: db $16
#_16FBAE: db $87 ; Repeat Fill
#_16FBAF: db $A8, $00 ; Repeat Fill bytes
#_16FBB1: db $06 ; Direct Copy
#_16FBB2: db $AF, $D6, $67, $BA, $C7, $FA, $F7
#_16FBB9: db $84 ; Repeat Fill
#_16FBBA: db $B7, $00 ; Repeat Fill bytes
#_16FBBC: db $03 ; Direct Copy
#_16FBBD: db $A9, $65, $E5, $F5
#_16FBC1: db $46 ; Word Fill
#_16FBC2: db $01, $00 ; Word Fill
#_16FBC4: db $28 ; Byte Fill
#_16FBC5: db $00
#_16FBC6: db $23 ; Byte Fill
#_16FBC7: db $01
#_16FBC8: db $23 ; Byte Fill
#_16FBC9: db $00
#_16FBCA: db $0C ; Direct Copy
#_16FBCB: db $33, $FC, $72, $FC, $F2, $FC, $62, $FC
#_16FBD3: db $84, $78, $44, $38, $38
#_16FBD8: db $22 ; Byte Fill
#_16FBD9: db $00
#_16FBDA: db $06 ; Direct Copy
#_16FBDB: db $B3, $F2, $F2, $62, $84, $44, $38
#_16FBE2: db $24 ; Byte Fill
#_16FBE3: db $00
#_16FBE4: db $13 ; Direct Copy
#_16FBE5: db $40, $00, $A0, $00, $9F, $00, $B3, $03
#_16FBED: db $D1, $41, $E1, $60, $00, $00, $40, $E0
#_16FBF5: db $FF, $CC, $AE, $9F
#_16FBF9: db $27 ; Byte Fill
#_16FBFA: db $00
#_16FBFB: db $07 ; Direct Copy
#_16FBFC: db $F0, $00, $EF, $90, $B3, $6F, $7F, $F0
#_16FC04: db $23 ; Byte Fill
#_16FC05: db $00
#_16FC06: db $03 ; Direct Copy
#_16FC07: db $F0, $7F, $FF, $FF
#_16FC0B: db $37 ; Byte Fill
#_16FC0C: db $00
#_16FC0D: db $E0, $24 ; EXT Direct Copy
#_16FC0F: db $72, $2F, $71, $3E, $40, $3F, $60, $1F
#_16FC17: db $3C, $0F, $3F, $1A, $1F, $06, $06, $00
#_16FC1F: db $72, $70, $4C, $7E, $3E, $3F, $1F, $06
#_16FC27: db $BC, $1B, $6F, $38, $CA, $FC, $72, $FC
#_16FC2F: db $84, $78, $B8, $40, $C0
#_16FC34: db $22 ; Byte Fill
#_16FC35: db $00
#_16FC36: db $0A ; Direct Copy
#_16FC37: db $7C, $FF, $FA, $72, $04, $38, $C0, $00
#_16FC3F: db $C0, $80, $80
#_16FC42: db $2C ; Byte Fill
#_16FC43: db $00
#_16FC44: db $01 ; Direct Copy
#_16FC45: db $C0, $80
#_16FC47: db $25 ; Byte Fill
#_16FC48: db $00
#_16FC49: db $0C ; Direct Copy
#_16FC4A: db $03, $00, $11, $00, $3B, $00, $1E, $01
#_16FC52: db $17, $08, $08, $07, $07
#_16FC57: db $22 ; Byte Fill
#_16FC58: db $00
#_16FC59: db $E0, $26 ; EXT Direct Copy
#_16FC5B: db $03, $11, $2A, $17, $19, $0F, $07, $00
#_16FC63: db $F6, $08, $F4, $08, $CC, $30, $D4, $28
#_16FC6B: db $2A, $D4, $F5, $0A, $8A, $04, $04, $00
#_16FC73: db $3E, $3C, $F4, $EC, $DE, $FB, $8E, $04
#_16FC7B: db $25, $1F, $13, $0F, $08, $07, $07
#_16FC82: db $28 ; Byte Fill
#_16FC83: db $00
#_16FC84: db $03 ; Direct Copy
#_16FC85: db $27, $13, $08, $07
#_16FC89: db $23 ; Byte Fill
#_16FC8A: db $00
#_16FC8B: db $06 ; Direct Copy
#_16FC8C: db $12, $FC, $E4, $F8, $08, $F0, $F0
#_16FC93: db $28 ; Byte Fill
#_16FC94: db $00
#_16FC95: db $03 ; Direct Copy
#_16FC96: db $F2, $E4, $08, $F0
#_16FC9A: db $23 ; Byte Fill
#_16FC9B: db $00
#_16FC9C: db $0A ; Direct Copy
#_16FC9D: db $D9, $36, $AB, $56, $D6, $60, $D0, $20
#_16FCA5: db $E0, $40, $60
#_16FCA8: db $24 ; Byte Fill
#_16FCA9: db $00
#_16FCAA: db $05 ; Direct Copy
#_16FCAB: db $FB, $BF, $D6, $F0, $E0, $60
#_16FCB1: db $39 ; Byte Fill
#_16FCB2: db $00
#_16FCB3: db $04 ; Direct Copy
#_16FCB4: db $0C, $03, $04, $03, $03
#_16FCB9: db $2A ; Byte Fill
#_16FCBA: db $00
#_16FCBB: db $02 ; Direct Copy
#_16FCBC: db $0C, $04, $03
#_16FCBF: db $24 ; Byte Fill
#_16FCC0: db $00
#_16FCC1: db $02 ; Direct Copy
#_16FCC2: db $72, $FC, $04
#_16FCC5: db $83 ; Repeat Fill
#_16FCC6: db $2B, $02 ; Repeat Fill bytes
#_16FCC8: db $28 ; Byte Fill
#_16FCC9: db $00
#_16FCCA: db $03 ; Direct Copy
#_16FCCB: db $72, $04, $08, $F0
#_16FCCF: db $E4, $33 ; EXT Byte Fill
#_16FCD1: db $00
#_16FCD2: db $0B ; Direct Copy
#_16FCD3: db $FF, $3E, $FE, $59, $FF, $65, $7F, $26
#_16FCDB: db $7F, $27, $7F, $2F
#_16FCDF: db $43 ; Word Fill
#_16FCE0: db $3F, $0F ; Word Fill
#_16FCE2: db $17 ; Direct Copy
#_16FCE3: db $C1, $E7, $FB, $79, $78, $70, $30, $30
#_16FCEB: db $7F, $EF, $74, $FF, $13, $FF, $CF, $FF
#_16FCF3: db $E7, $3F, $F3, $DF, $F9, $EF, $7C, $77
#_16FCFB: db $24 ; Byte Fill
#_16FCFC: db $FF
#_16FCFD: db $1A ; Direct Copy
#_16FCFE: db $3F, $1F, $8F, $00, $00, $07, $00, $0F
#_16FD06: db $00, $07, $00, $01, $00, $0F, $00, $7F
#_16FD0E: db $00, $83, $7C, $00, $07, $08, $07, $01
#_16FD16: db $0E, $72, $FE
#_16FD19: db $83 ; Repeat Fill
#_16FD1A: db $30, $00 ; Repeat Fill bytes
#_16FD1C: db $01 ; Direct Copy
#_16FD1D: db $D0, $20
#_16FD1F: db $43 ; Word Fill
#_16FD20: db $E8, $10 ; Word Fill
#_16FD22: db $0E ; Direct Copy
#_16FD23: db $F8, $00, $FE, $00, $EF, $10, $00, $E0
#_16FD2B: db $30, $D8, $38, $D8, $0E, $D9, $01
#_16FD32: db $46 ; Word Fill
#_16FD33: db $00, $03 ; Word Fill
#_16FD35: db $08 ; Direct Copy
#_16FD36: db $23, $00, $74, $03, $77, $00, $7B, $04
#_16FD3E: db $01
#_16FD3F: db $22 ; Byte Fill
#_16FD40: db $02
#_16FD41: db $04 ; Direct Copy
#_16FD42: db $22, $57, $57, $5C, $00
#_16FD47: db $46 ; Word Fill
#_16FD48: db $00, $80 ; Word Fill
#_16FD4A: db $08 ; Direct Copy
#_16FD4B: db $88, $00, $5C, $80, $DC, $00, $BC, $40
#_16FD53: db $00
#_16FD54: db $22 ; Byte Fill
#_16FD55: db $80
#_16FD56: db $1B ; Direct Copy
#_16FD57: db $88, $D4, $D4, $74, $A0, $40, $50, $A0
#_16FD5F: db $A8, $50, $54, $28, $2A, $14, $15, $0A
#_16FD67: db $0A, $04, $04, $00, $60, $B0, $D8, $6C
#_16FD6F: db $36, $1B, $0E, $04
#_16FD73: db $4D ; Word Fill
#_16FD74: db $38, $00 ; Word Fill
#_16FD76: db $01 ; Direct Copy
#_16FD77: db $10, $00
#_16FD79: db $26 ; Byte Fill
#_16FD7A: db $28
#_16FD7B: db $00 ; Direct Copy
#_16FD7C: db $10
#_16FD7D: db $28 ; Byte Fill
#_16FD7E: db $00
#_16FD7F: db $01 ; Direct Copy
#_16FD80: db $02, $10
#_16FD82: db $43 ; Word Fill
#_16FD83: db $17, $00 ; Word Fill
#_16FD85: db $00 ; Direct Copy
#_16FD86: db $07
#_16FD87: db $24 ; Byte Fill
#_16FD88: db $00
#_16FD89: db $02 ; Direct Copy
#_16FD8A: db $12, $12, $03
#_16FD8D: db $26 ; Byte Fill
#_16FD8E: db $00
#_16FD8F: db $01 ; Direct Copy
#_16FD90: db $40, $04
#_16FD92: db $85 ; Repeat Fill
#_16FD93: db $62, $00 ; Repeat Fill bytes
#_16FD95: db $00 ; Direct Copy
#_16FD96: db $B0
#_16FD97: db $22 ; Byte Fill
#_16FD98: db $00
#_16FD99: db $00 ; Direct Copy
#_16FD9A: db $40
#_16FD9B: db $83 ; Repeat Fill
#_16FD9C: db $62, $00 ; Repeat Fill bytes
#_16FD9E: db $07 ; Direct Copy
#_16FD9F: db $1E, $1E, $21, $3F, $00, $1F, $00, $0F
#_16FDA7: db $44 ; Word Fill
#_16FDA8: db $00, $07 ; Word Fill
#_16FDAA: db $04 ; Direct Copy
#_16FDAB: db $03, $00, $07, $1E, $21
#_16FDB0: db $23 ; Byte Fill
#_16FDB1: db $00
#_16FDB2: db $01 ; Direct Copy
#_16FDB3: db $01, $02
#_16FDB5: db $23 ; Byte Fill
#_16FDB6: db $00
#_16FDB7: db $1B ; Direct Copy
#_16FDB8: db $80, $80, $44, $DC, $42, $EE, $B9, $FB
#_16FDC0: db $0A, $FF, $05, $FF, $00, $00, $80, $DC
#_16FDC8: db $62, $B9, $0E, $07, $01, $00, $02, $01
#_16FDD0: db $04, $03, $05, $03
#_16FDD4: db $43 ; Word Fill
#_16FDD5: db $09, $07 ; Word Fill
#_16FDD7: db $E0, $25 ; EXT Direct Copy
#_16FDD9: db $07, $03, $03, $00, $01, $03, $07, $07
#_16FDE1: db $0F, $0F, $07, $03, $C3, $00, $65, $C3
#_16FDE9: db $BA, $E7, $98, $FF, $5A, $B7, $7D, $93
#_16FDF1: db $7E, $81, $BE, $61, $C3, $E5, $BB, $9B
#_16FDF9: db $53, $71, $70, $B8, $00, $00
#_16FDFF: db $83 ; Repeat Fill
#_16FE00: db $F0, $03 ; Repeat Fill bytes
#_16FE02: db $43 ; Word Fill
#_16FE03: db $04, $03 ; Word Fill
#_16FE05: db $05 ; Direct Copy
#_16FE06: db $08, $07, $09, $07, $0E, $07
#_16FE0C: db $86 ; Repeat Fill
#_16FE0D: db $FF, $03 ; Repeat Fill bytes
#_16FE0F: db $18 ; Direct Copy
#_16FE10: db $0E, $00, $00, $E3, $00, $34, $E3, $5B
#_16FE18: db $F7, $78, $FF, $DC, $FF, $36, $DF, $58
#_16FE20: db $BF, $00, $E3, $F4, $FB, $FB, $DF, $3F
#_16FE28: db $5F
#_16FE29: db $45 ; Word Fill
#_16FE2A: db $1F, $0F ; Word Fill
#_16FE2C: db $01 ; Direct Copy
#_16FE2D: db $3F, $1F
#_16FE2F: db $45 ; Word Fill
#_16FE30: db $3E, $1E ; Word Fill
#_16FE32: db $01 ; Direct Copy
#_16FE33: db $7E, $3E
#_16FE35: db $22 ; Byte Fill
#_16FE36: db $10
#_16FE37: db $00 ; Direct Copy
#_16FE38: db $20
#_16FE39: db $22 ; Byte Fill
#_16FE3A: db $21
#_16FE3B: db $08 ; Direct Copy
#_16FE3C: db $41, $3E, $3B, $1E, $1B, $1F, $1D, $1F
#_16FE44: db $1E
#_16FE45: db $27 ; Byte Fill
#_16FE46: db $1D
#_16FE47: db $03 ; Direct Copy
#_16FE48: db $C7, $E7, $E3, $E1
#_16FE4C: db $23 ; Byte Fill
#_16FE4D: db $E2
#_16FE4E: db $04 ; Direct Copy
#_16FE4F: db $72, $0D, $0E, $01, $01
#_16FE54: db $85 ; Repeat Fill
#_16FE55: db $01, $03 ; Repeat Fill bytes
#_16FE57: db $24 ; Byte Fill
#_16FE58: db $00
#_16FE59: db $03 ; Direct Copy
#_16FE5A: db $7F, $0F, $01, $07
#_16FE5E: db $83 ; Repeat Fill
#_16FE5F: db $22, $02 ; Repeat Fill bytes
#_16FE61: db $0A ; Direct Copy
#_16FE62: db $EE, $10, $18, $E0, $28, $D0, $C8, $30
#_16FE6A: db $10, $E0, $E0
#_16FE6D: db $24 ; Byte Fill
#_16FE6E: db $00
#_16FE6F: db $00 ; Direct Copy
#_16FE70: db $DE
#_16FE71: db $22 ; Byte Fill
#_16FE72: db $F8
#_16FE73: db $03 ; Direct Copy
#_16FE74: db $F0, $E0, $00, $00
#_16FE78: db $43 ; Word Fill
#_16FE79: db $77, $08 ; Word Fill
#_16FE7B: db $04 ; Direct Copy
#_16FE7C: db $5B, $24, $24, $1B, $1F
#_16FE81: db $44 ; Word Fill
#_16FE82: db $00, $03 ; Word Fill
#_16FE84: db $09 ; Direct Copy
#_16FE85: db $01, $00, $5E, $5E, $6C, $3F, $1F, $02
#_16FE8D: db $02, $01
#_16FE8F: db $43 ; Word Fill
#_16FE90: db $DC, $20 ; Word Fill
#_16FE92: db $04 ; Direct Copy
#_16FE93: db $B4, $48, $48, $B0, $F0
#_16FE98: db $43 ; Word Fill
#_16FE99: db $00, $80 ; Word Fill
#_16FE9B: db $22 ; Byte Fill
#_16FE9C: db $00
#_16FE9D: db $06 ; Direct Copy
#_16FE9E: db $F4, $F4, $6C, $F8, $F0, $80, $80
#_16FEA5: db $26 ; Byte Fill
#_16FEA6: db $00
#_16FEA7: db $04 ; Direct Copy
#_16FEA8: db $FE, $00, $FF, $00, $FE
#_16FEAD: db $27 ; Byte Fill
#_16FEAE: db $00
#_16FEAF: db $E0, $50 ; EXT Direct Copy
#_16FEB1: db $FE, $01, $FE, $00, $00, $FE, $7F, $FD
#_16FEB9: db $BF, $FB, $DF, $F7, $EF, $EF, $F7, $DF
#_16FEC1: db $FB, $BF, $FD, $7F, $FE, $FE, $FD, $FB
#_16FEC9: db $F7, $EF, $DF, $BF, $7F, $04, $0F, $07
#_16FED1: db $0D, $0F, $1D, $08, $1F, $0F, $18, $07
#_16FED9: db $0C, $01, $0E, $00, $07, $06, $05, $0D
#_16FEE1: db $0F, $08, $04, $02, $00, $20, $70, $40
#_16FEE9: db $E0, $A0, $F0, $B0, $D8, $10, $F8, $E0
#_16FEF1: db $30, $C0, $70, $00, $C0, $20, $40, $E0
#_16FEF9: db $D0, $F0, $20, $40, $00, $04, $07, $08
#_16FF01: db $08
#_16FF02: db $2B ; Byte Fill
#_16FF03: db $00
#_16FF04: db $01 ; Direct Copy
#_16FF05: db $04, $08
#_16FF07: db $25 ; Byte Fill
#_16FF08: db $00
#_16FF09: db $09 ; Direct Copy
#_16FF0A: db $0B, $FC, $05, $FE, $22, $37, $20, $23
#_16FF12: db $00, $01
#_16FF14: db $25 ; Byte Fill
#_16FF15: db $00
#_16FF16: db $03 ; Direct Copy
#_16FF17: db $0C, $06, $23, $20
#_16FF1B: db $23 ; Byte Fill
#_16FF1C: db $00
#_16FF1D: db $44 ; Word Fill
#_16FF1E: db $01, $00 ; Word Fill
#_16FF20: db $2A ; Byte Fill
#_16FF21: db $00
#_16FF22: db $22 ; Byte Fill
#_16FF23: db $01
#_16FF24: db $24 ; Byte Fill
#_16FF25: db $00
#_16FF26: db $0C ; Direct Copy
#_16FF27: db $46, $FF, $70, $FF, $3B, $FD, $97, $6D
#_16FF2F: db $7F, $05, $1F, $03, $03
#_16FF34: db $22 ; Byte Fill
#_16FF35: db $00
#_16FF36: db $0A ; Direct Copy
#_16FF37: db $7F, $7C, $3B, $87, $6F, $1F, $03, $00
#_16FF3F: db $08, $07, $07
#_16FF42: db $2C ; Byte Fill
#_16FF43: db $00
#_16FF44: db $01 ; Direct Copy
#_16FF45: db $08, $07
#_16FF47: db $25 ; Byte Fill
#_16FF48: db $00
#_16FF49: db $00 ; Direct Copy
#_16FF4A: db $BC
#_16FF4B: db $44 ; Word Fill
#_16FF4C: db $7F, $BF ; Word Fill
#_16FF4E: db $43 ; Word Fill
#_16FF4F: db $5F, $3F ; Word Fill
#_16FF51: db $05 ; Direct Copy
#_16FF52: db $23, $1F, $1C, $03, $03, $00
#_16FF58: db $22 ; Byte Fill
#_16FF59: db $BF
#_16FF5A: db $06 ; Direct Copy
#_16FF5B: db $5F, $5F, $23, $1C, $03, $7E, $3E
#_16FF62: db $43 ; Word Fill
#_16FF63: db $FC, $7C ; Word Fill
#_16FF65: db $04 ; Direct Copy
#_16FF66: db $FE, $60, $FF, $40, $61
#_16FF6B: db $24 ; Byte Fill
#_16FF6C: db $00
#_16FF6D: db $07 ; Direct Copy
#_16FF6E: db $41, $83, $83, $9F, $BF, $61, $00, $00
#_16FF76: db $27 ; Byte Fill
#_16FF77: db $1D
#_16FF78: db $07 ; Direct Copy
#_16FF79: db $9D, $1D, $DD, $1D, $3D, $0D, $0F, $00
#_16FF81: db $25 ; Byte Fill
#_16FF82: db $E2
#_16FF83: db $01 ; Direct Copy
#_16FF84: db $32, $0F
#_16FF86: db $FF ; End of GFX B4

;===================================================================================================

GFX_B5:
#_16FF87: db $23 ; Byte Fill
#_16FF88: db $00
#_16FF89: db $E0, $2B ; EXT Direct Copy
#_16FF8B: db $08, $00, $14, $00, $76, $04, $B7, $04
#_16FF93: db $DC, $48, $FD, $29, $00, $00, $08, $1C
#_16FF9B: db $7A, $FB, $B7, $D6, $00, $00, $03, $00
#_16FFA3: db $0C, $03, $33, $0C, $57, $28, $E7, $18
#_16FFAB: db $6C, $13, $D1, $8E, $00, $03, $0F, $3C
#_16FFB3: db $78, $F8, $FB, $7F
#_16FFB7: db $2B ; Byte Fill
#_16FFB8: db $00
#_16FFB9: db $02 ; Direct Copy
#_16FFBA: db $01, $00, $03
#_16FFBD: db $26 ; Byte Fill
#_16FFBE: db $00
#_16FFBF: db $01 ; Direct Copy
#_16FFC0: db $01, $02
#_16FFC2: db $85 ; Repeat Fill
#_16FFC3: db $18, $00 ; Repeat Fill bytes
#_16FFC5: db $11 ; Direct Copy
#_16FFC6: db $13, $0C, $17, $08, $27, $18, $EC, $13
#_16FFCE: db $D1, $0E, $00, $03, $0F, $1C, $18, $38
#_16FFD6: db $FB, $7F
#_16FFD8: db $2B ; Byte Fill
#_16FFD9: db $00
#_16FFDA: db $03 ; Direct Copy
#_16FFDB: db $03, $00, $05, $01
#_16FFDF: db $25 ; Byte Fill
#_16FFE0: db $00
#_16FFE1: db $01 ; Direct Copy
#_16FFE2: db $03, $06
#_16FFE4: db $87 ; Repeat Fill
#_16FFE5: db $48, $00 ; Repeat Fill bytes
#_16FFE7: db $01 ; Direct Copy
#_16FFE8: db $27, $18
#_16FFEA: db $43 ; Word Fill
#_16FFEB: db $4F, $30 ; Word Fill
#_16FFED: db $01 ; Direct Copy
#_16FFEE: db $C7, $38
#_16FFF0: db $83 ; Repeat Fill
#_16FFF1: db $58, $00 ; Repeat Fill bytes
#_16FFF3: db $03 ; Direct Copy
#_16FFF4: db $38, $70, $70, $F8
#_16FFF8: db $83 ; Repeat Fill
#_16FFF9: db $6C, $00 ; Repeat Fill bytes
#_16FFFB: db $1D ; Direct Copy
#_16FFFC: db $0D, $04, $17, $03

;===================================================================================================

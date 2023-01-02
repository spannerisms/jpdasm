org $128000

;===================================================================================================

#_128000: db $07, $D7, $0F, $22 ; Byte Fill
#_128004: db $FF
#_128005: db $1F ; Direct Copy
#_128006: db $FE, $FC, $F8, $F0, $E0, $AE, $1E, $5D
#_12800E: db $3C, $B9, $79, $73, $F3, $E7, $E7, $CF
#_128016: db $CF, $9F, $9F, $3F, $3F, $C1, $83, $06
#_12801E: db $0C, $18, $30, $60, $C0, $FF, $00, $FF
#_128026: db $22 ; Byte Fill
#_128027: db $00
#_128028: db $09 ; Direct Copy
#_128029: db $FF, $00, $73, $90, $E7, $20, $CD, $42
#_128031: db $9C, $0C
#_128033: db $22 ; Byte Fill
#_128034: db $FF
#_128035: db $07 ; Direct Copy
#_128036: db $00, $0C, $18, $30, $63, $FF, $00, $FF
#_12803E: db $22 ; Byte Fill
#_12803F: db $00
#_128040: db $09 ; Direct Copy
#_128041: db $FF, $00, $76, $89, $BF, $C9, $DB, $6D
#_128049: db $92, $92
#_12804B: db $22 ; Byte Fill
#_12804C: db $FF
#_12804D: db $23 ; Byte Fill
#_12804E: db $00
#_12804F: db $E0, $22 ; EXT Direct Copy
#_128051: db $6D, $D7, $08, $DE, $02, $DC, $04, $D9
#_128059: db $08, $D3, $01, $D7, $01, $DC, $02, $DE
#_128061: db $00, $E0, $E1, $E3, $E6, $EC, $E8, $E1
#_128069: db $E1, $D7, $0D, $DA, $06, $DC, $02, $DF
#_128071: db $01, $D6, $0E
#_128074: db $85 ; Repeat Fill
#_128075: db $7C, $00 ; Repeat Fill bytes
#_128077: db $0A ; Direct Copy
#_128078: db $E0, $E1, $E1, $E0, $E1, $E1, $E0, $E1
#_128080: db $FF, $00, $FF
#_128083: db $22 ; Byte Fill
#_128084: db $00
#_128085: db $09 ; Direct Copy
#_128086: db $FF, $00, $00, $FF, $DC, $FF, $EF, $FE
#_12808E: db $E7, $FE
#_128090: db $22 ; Byte Fill
#_128091: db $FF
#_128092: db $24 ; Byte Fill
#_128093: db $00
#_128094: db $02 ; Direct Copy
#_128095: db $FF, $00, $FF
#_128098: db $22 ; Byte Fill
#_128099: db $00
#_12809A: db $83 ; Repeat Fill
#_12809B: db $96, $00 ; Repeat Fill bytes
#_12809D: db $05 ; Direct Copy
#_12809E: db $EF, $FF, $EB, $F7, $DC, $63
#_1280A4: db $22 ; Byte Fill
#_1280A5: db $FF
#_1280A6: db $24 ; Byte Fill
#_1280A7: db $00
#_1280A8: db $02 ; Direct Copy
#_1280A9: db $FF, $00, $FF
#_1280AC: db $22 ; Byte Fill
#_1280AD: db $00
#_1280AE: db $09 ; Direct Copy
#_1280AF: db $FF, $00, $82, $7D, $85, $02, $80, $02
#_1280B7: db $FF, $00
#_1280B9: db $22 ; Byte Fill
#_1280BA: db $FF
#_1280BB: db $03 ; Direct Copy
#_1280BC: db $00, $00, $7D, $7D
#_1280C0: db $43 ; Word Fill
#_1280C1: db $00, $FF ; Word Fill
#_1280C3: db $22 ; Byte Fill
#_1280C4: db $00
#_1280C5: db $09 ; Direct Copy
#_1280C6: db $FF, $00, $08, $F7, $14, $08, $00, $08
#_1280CE: db $FF, $00
#_1280D0: db $22 ; Byte Fill
#_1280D1: db $FF
#_1280D2: db $06 ; Direct Copy
#_1280D3: db $00, $00, $F7, $F7, $00, $DF, $00
#_1280DA: db $47 ; Word Fill
#_1280DB: db $D1, $08 ; Word Fill
#_1280DD: db $06 ; Direct Copy
#_1280DE: db $D5, $08, $D9, $06, $D5, $08, $E0
#_1280E5: db $24 ; Byte Fill
#_1280E6: db $E6
#_1280E7: db $01 ; Direct Copy
#_1280E8: db $E0, $E6
#_1280EA: db $45 ; Word Fill
#_1280EB: db $D1, $08 ; Word Fill
#_1280ED: db $84 ; Repeat Fill
#_1280EE: db $FA, $00 ; Repeat Fill bytes
#_1280F0: db $44 ; Word Fill
#_1280F1: db $08, $D1 ; Word Fill
#_1280F3: db $23 ; Byte Fill
#_1280F4: db $E6
#_1280F5: db $00 ; Direct Copy
#_1280F6: db $E0
#_1280F7: db $22 ; Byte Fill
#_1280F8: db $E6
#_1280F9: db $03 ; Direct Copy
#_1280FA: db $00, $00, $41, $01
#_1280FE: db $45 ; Word Fill
#_1280FF: db $7E, $FE ; Word Fill
#_128101: db $43 ; Word Fill
#_128102: db $7F, $FF ; Word Fill
#_128104: db $03 ; Direct Copy
#_128105: db $01, $FE, $FF, $FE
#_128109: db $22 ; Byte Fill
#_12810A: db $01
#_12810B: db $22 ; Byte Fill
#_12810C: db $00
#_12810D: db $05 ; Direct Copy
#_12810E: db $80, $80, $40, $C0, $BF, $7F
#_128114: db $45 ; Word Fill
#_128115: db $DF, $BF ; Word Fill
#_128117: db $05 ; Direct Copy
#_128118: db $6F, $9F, $F0, $0F, $7F, $3F
#_12811E: db $25 ; Byte Fill
#_12811F: db $00
#_128120: db $E0, $29 ; EXT Direct Copy
#_128122: db $03, $04, $03, $FD, $06, $F8, $0E, $F1
#_12812A: db $F9, $06, $F3, $83, $30, $CF, $10, $EF
#_128132: db $F8, $00, $01, $00, $00, $0C, $00, $00
#_12813A: db $B8, $A0, $7C, $73, $9E, $F9, $0E, $F9
#_128142: db $FF, $00, $FB, $CB, $30, $D7, $30, $DF
#_12814A: db $47, $80
#_12814C: db $22 ; Byte Fill
#_12814D: db $00
#_12814E: db $01 ; Direct Copy
#_12814F: db $04, $08
#_128151: db $43 ; Word Fill
#_128152: db $00, $FF ; Word Fill
#_128154: db $22 ; Byte Fill
#_128155: db $00
#_128156: db $02 ; Direct Copy
#_128157: db $FF, $00, $00
#_12815A: db $29 ; Byte Fill
#_12815B: db $FF
#_12815C: db $24 ; Byte Fill
#_12815D: db $00
#_12815E: db $02 ; Direct Copy
#_12815F: db $FF, $00, $FF
#_128162: db $22 ; Byte Fill
#_128163: db $00
#_128164: db $02 ; Direct Copy
#_128165: db $FF, $00, $00
#_128168: db $29 ; Byte Fill
#_128169: db $FF
#_12816A: db $24 ; Byte Fill
#_12816B: db $00
#_12816C: db $4F ; Word Fill
#_12816D: db $D7, $0F ; Word Fill
#_12816F: db $27 ; Byte Fill
#_128170: db $E0
#_128171: db $4F ; Word Fill
#_128172: db $D7, $0F ; Word Fill
#_128174: db $27 ; Byte Fill
#_128175: db $E0
#_128176: db $43 ; Word Fill
#_128177: db $FF, $00 ; Word Fill
#_128179: db $0E ; Direct Copy
#_12817A: db $C0, $20, $DF, $00, $D8, $07, $D5, $0B
#_128182: db $D2, $0D, $D5, $0E, $FF, $FF, $DF
#_128189: db $24 ; Byte Fill
#_12818A: db $E0
#_12818B: db $43 ; Word Fill
#_12818C: db $D7, $0F ; Word Fill
#_12818E: db $08 ; Direct Copy
#_12818F: db $17, $0F, $F7, $0F, $07, $F7, $FB, $FB
#_128197: db $FD
#_128198: db $62 ; Increasing Fill
#_128199: db $FD ; Increasing Fill Start
#_12819A: db $22 ; Byte Fill
#_12819B: db $E0
#_12819C: db $03 ; Direct Copy
#_12819D: db $00, $08, $04, $02
#_1281A1: db $22 ; Byte Fill
#_1281A2: db $00
#_1281A3: db $01 ; Direct Copy
#_1281A4: db $40, $00
#_1281A6: db $47 ; Word Fill
#_1281A7: db $3F, $BF ; Word Fill
#_1281A9: db $02 ; Direct Copy
#_1281AA: db $7F, $FF, $00
#_1281AD: db $22 ; Byte Fill
#_1281AE: db $FF
#_1281AF: db $23 ; Byte Fill
#_1281B0: db $40
#_1281B1: db $25 ; Byte Fill
#_1281B2: db $00
#_1281B3: db $29 ; Byte Fill
#_1281B4: db $FF
#_1281B5: db $00 ; Direct Copy
#_1281B6: db $00
#_1281B7: db $22 ; Byte Fill
#_1281B8: db $FF
#_1281B9: db $25 ; Byte Fill
#_1281BA: db $00
#_1281BB: db $4F ; Word Fill
#_1281BC: db $3E, $3F ; Word Fill
#_1281BE: db $27 ; Byte Fill
#_1281BF: db $C0
#_1281C0: db $4B ; Word Fill
#_1281C1: db $3E, $3F ; Word Fill
#_1281C3: db $03 ; Direct Copy
#_1281C4: db $42, $03, $00, $3F
#_1281C8: db $25 ; Byte Fill
#_1281C9: db $C0
#_1281CA: db $E0, $29 ; EXT Direct Copy
#_1281CC: db $FC, $C0, $7E, $FF, $BC, $7E, $98, $BD
#_1281D4: db $C0, $DB, $E0, $F7, $C1, $EE, $83, $DD
#_1281DC: db $04, $BB, $00, $81, $42, $24, $08, $10
#_1281E4: db $20, $40, $8C, $F3, $9B, $6C, $73, $9C
#_1281EC: db $67, $B9, $CE, $73, $9E, $E3, $3F, $C9
#_1281F4: db $77, $9C
#_1281F6: db $23 ; Byte Fill
#_1281F7: db $00
#_1281F8: db $13 ; Direct Copy
#_1281F9: db $01, $01, $00, $08, $BF, $40, $EA, $14
#_128201: db $D5, $28, $BA, $41, $D5, $23, $AD, $43
#_128209: db $D6, $09, $AB, $1C
#_12820D: db $23 ; Byte Fill
#_12820E: db $00
#_12820F: db $83 ; Repeat Fill
#_128210: db $9C, $02 ; Repeat Fill bytes
#_128212: db $17 ; Direct Copy
#_128213: db $FF, $04, $0F, $08, $FE, $00, $FC, $C0
#_12821B: db $F8, $80, $FC, $00, $0C, $00, $FC, $00
#_128223: db $F9, $F3, $07, $CF, $9F, $03, $F3, $03
#_12822B: db $23 ; Byte Fill
#_12822C: db $00
#_12822D: db $0D ; Direct Copy
#_12822E: db $2F, $1F, $17, $2F, $2B, $37, $35, $3B
#_128236: db $3A, $3D, $3C, $3F, $FF, $FF
#_12823C: db $25 ; Byte Fill
#_12823D: db $C0
#_12823E: db $43 ; Word Fill
#_12823F: db $3E, $3F ; Word Fill
#_128241: db $05 ; Direct Copy
#_128242: db $DE, $DF, $EE, $EF, $F6, $F7
#_128248: db $63 ; Increasing Fill
#_128249: db $FA ; Increasing Fill Start
#_12824A: db $05 ; Direct Copy
#_12824B: db $01, $FE, $C0, $C0, $20, $10
#_128251: db $83 ; Repeat Fill
#_128252: db $0C, $02 ; Repeat Fill bytes
#_128254: db $43 ; Word Fill
#_128255: db $D7, $0F ; Word Fill
#_128257: db $06 ; Direct Copy
#_128258: db $D3, $0F, $D4, $0F, $D6, $0F, $D7
#_12825F: db $43 ; Word Fill
#_128260: db $0F, $D3 ; Word Fill
#_128262: db $00 ; Direct Copy
#_128263: db $0C
#_128264: db $27 ; Byte Fill
#_128265: db $E0
#_128266: db $0B ; Direct Copy
#_128267: db $D7, $0E, $D7, $0F, $D6, $0F, $D1, $0E
#_12826F: db $D7, $0C, $D5, $0E
#_128273: db $43 ; Word Fill
#_128274: db $D6, $0F ; Word Fill
#_128276: db $27 ; Byte Fill
#_128277: db $E0
#_128278: db $22 ; Byte Fill
#_128279: db $00
#_12827A: db $44 ; Word Fill
#_12827B: db $FF, $00 ; Word Fill
#_12827D: db $08 ; Direct Copy
#_12827E: db $FF, $00, $FF, $7F, $C0, $7F, $80, $7F
#_128286: db $FF
#_128287: db $26 ; Byte Fill
#_128288: db $00
#_128289: db $06 ; Direct Copy
#_12828A: db $C0, $80, $00, $BF, $80, $3F, $C0
#_128291: db $83 ; Repeat Fill
#_128292: db $1C, $02 ; Repeat Fill bytes
#_128294: db $44 ; Word Fill
#_128295: db $FF, $00 ; Word Fill
#_128297: db $02 ; Direct Copy
#_128298: db $7F, $40, $40
#_12829B: db $24 ; Byte Fill
#_12829C: db $00
#_12829D: db $4B ; Word Fill
#_12829E: db $0C, $77 ; Word Fill
#_1282A0: db $03 ; Direct Copy
#_1282A1: db $9C, $17, $FC, $87
#_1282A5: db $25 ; Byte Fill
#_1282A6: db $80
#_1282A7: db $01 ; Direct Copy
#_1282A8: db $E0, $00
#_1282AA: db $4B ; Word Fill
#_1282AB: db $0C, $77 ; Word Fill
#_1282AD: db $03 ; Direct Copy
#_1282AE: db $0A, $73, $0B, $74
#_1282B2: db $25 ; Byte Fill
#_1282B3: db $80
#_1282B4: db $12 ; Direct Copy
#_1282B5: db $84, $80, $00, $00, $40, $3F, $20, $5F
#_1282BD: db $10, $6F, $0F, $70, $0F, $77, $0E, $75
#_1282C5: db $0D, $76, $FF
#_1282C8: db $26 ; Byte Fill
#_1282C9: db $80
#_1282CA: db $10 ; Direct Copy
#_1282CB: db $8C, $77, $4C, $F7, $2C, $F7, $1C, $F7
#_1282D3: db $FC, $0F, $F8, $FB, $02, $FF, $01, $FF
#_1282DB: db $80
#_1282DC: db $23 ; Byte Fill
#_1282DD: db $00
#_1282DE: db $04 ; Direct Copy
#_1282DF: db $04, $00, $00, $D7, $0E
#_1282E4: db $43 ; Word Fill
#_1282E5: db $D6, $0D ; Word Fill
#_1282E7: db $47 ; Word Fill
#_1282E8: db $D5, $0B ; Word Fill
#_1282EA: db $01 ; Direct Copy
#_1282EB: db $D4, $0B
#_1282ED: db $27 ; Byte Fill
#_1282EE: db $E0
#_1282EF: db $0A ; Direct Copy
#_1282F0: db $0E, $12, $1C, $F3, $0E, $F1, $0F, $F0
#_1282F8: db $FF, $04, $FF
#_1282FB: db $43 ; Word Fill
#_1282FC: db $FC, $07 ; Word Fill
#_1282FE: db $01 ; Direct Copy
#_1282FF: db $F8, $E1
#_128301: db $26 ; Byte Fill
#_128302: db $00
#_128303: db $45 ; Word Fill
#_128304: db $0C, $77 ; Word Fill
#_128306: db $09 ; Direct Copy
#_128307: db $4C, $F7, $FC, $07, $FF, $0E, $BF, $C0
#_12830F: db $1F, $60
#_128311: db $22 ; Byte Fill
#_128312: db $80
#_128313: db $23 ; Byte Fill
#_128314: db $00
#_128315: db $18 ; Direct Copy
#_128316: db $80, $DD, $3E, $BB, $7C, $76, $F8, $ED
#_12831E: db $F1, $DB, $E3, $B7, $C7, $6F, $8F, $DF
#_128326: db $1F, $3E, $7C, $F9, $F2, $E4, $C8, $90
#_12832E: db $20
#_12832F: db $43 ; Word Fill
#_128330: db $FF, $00 ; Word Fill
#_128332: db $00 ; Direct Copy
#_128333: db $08
#_128334: db $46 ; Word Fill
#_128335: db $F7, $EB ; Word Fill
#_128337: db $02 ; Direct Copy
#_128338: db $08, $F7, $FF
#_12833B: db $22 ; Byte Fill
#_12833C: db $00
#_12833D: db $24 ; Byte Fill
#_12833E: db $F7
#_12833F: db $00 ; Direct Copy
#_128340: db $00
#_128341: db $45 ; Word Fill
#_128342: db $DD, $3E ; Word Fill
#_128344: db $04 ; Direct Copy
#_128345: db $C1, $3E, $FF, $00, $C1
#_12834A: db $43 ; Word Fill
#_12834B: db $3E, $DD ; Word Fill
#_12834D: db $24 ; Byte Fill
#_12834E: db $3E
#_12834F: db $00 ; Direct Copy
#_128350: db $00
#_128351: db $22 ; Byte Fill
#_128352: db $3E
#_128353: db $43 ; Word Fill
#_128354: db $FF, $00 ; Word Fill
#_128356: db $00 ; Direct Copy
#_128357: db $C0
#_128358: db $46 ; Word Fill
#_128359: db $3F, $DF ; Word Fill
#_12835B: db $05 ; Direct Copy
#_12835C: db $DC, $3F, $DD, $3E, $00, $00
#_128362: db $24 ; Byte Fill
#_128363: db $3F
#_128364: db $44 ; Word Fill
#_128365: db $3E, $DD ; Word Fill
#_128367: db $00 ; Direct Copy
#_128368: db $1D
#_128369: db $46 ; Word Fill
#_12836A: db $FE, $FD ; Word Fill
#_12836C: db $05 ; Direct Copy
#_12836D: db $01, $FE, $FF, $00, $3E, $3E
#_128373: db $24 ; Byte Fill
#_128374: db $FE
#_128375: db $0C ; Direct Copy
#_128376: db $00, $FF, $00, $06, $FA, $0C, $F4, $F9
#_12837E: db $09, $33, $D0, $67, $A0
#_128383: db $83 ; Repeat Fill
#_128384: db $3C, $00 ; Repeat Fill bytes
#_128386: db $02 ; Direct Copy
#_128387: db $00, $01, $03
#_12838A: db $83 ; Repeat Fill
#_12838B: db $2A, $00 ; Repeat Fill bytes
#_12838D: db $83 ; Repeat Fill
#_12838E: db $47, $00 ; Repeat Fill bytes
#_128390: db $22 ; Byte Fill
#_128391: db $00
#_128392: db $89 ; Repeat Fill
#_128393: db $4E, $00 ; Repeat Fill bytes
#_128395: db $02 ; Direct Copy
#_128396: db $00, $FF, $FF
#_128399: db $23 ; Byte Fill
#_12839A: db $00
#_12839B: db $10 ; Direct Copy
#_12839C: db $6D, $93, $6C, $96, $6A, $9C, $64, $99
#_1283A4: db $68, $B3, $51, $E7, $21, $CC, $42, $9E
#_1283AC: db $10
#_1283AD: db $85 ; Repeat Fill
#_1283AE: db $90, $04 ; Repeat Fill bytes
#_1283B0: db $01 ; Direct Copy
#_1283B1: db $31, $61
#_1283B3: db $8F ; Repeat Fill
#_1283B4: db $78, $00 ; Repeat Fill bytes
#_1283B6: db $0A ; Direct Copy
#_1283B7: db $60, $61, $61, $60, $61, $61, $60, $61
#_1283BF: db $FF, $00, $FF
#_1283C2: db $22 ; Byte Fill
#_1283C3: db $00
#_1283C4: db $84 ; Repeat Fill
#_1283C5: db $86, $01 ; Repeat Fill bytes
#_1283C7: db $04 ; Direct Copy
#_1283C8: db $E0, $E0, $9F, $9E, $7F
#_1283CD: db $22 ; Byte Fill
#_1283CE: db $FF
#_1283CF: db $24 ; Byte Fill
#_1283D0: db $00
#_1283D1: db $1A ; Direct Copy
#_1283D2: db $FF, $00, $20, $C0, $4F, $88, $9F, $13
#_1283DA: db $BF, $27, $BF, $20, $80, $00, $FF, $00
#_1283E2: db $0F, $1F, $30, $63, $47, $40, $7F, $00
#_1283EA: db $FF, $00, $04
#_1283ED: db $43 ; Word Fill
#_1283EE: db $00, $FC ; Word Fill
#_1283F0: db $10 ; Direct Copy
#_1283F1: db $C0, $F0, $C0, $F8, $00, $0C, $00, $FE
#_1283F9: db $00, $FB, $FB, $03, $DF, $CF, $07, $F3
#_128401: db $01
#_128402: db $97 ; Repeat Fill
#_128403: db $B8, $02 ; Repeat Fill bytes
#_128405: db $09 ; Direct Copy
#_128406: db $EF, $10, $C0, $20, $8F, $C8, $9F, $17
#_12840E: db $BF, $2F
#_128410: db $85 ; Repeat Fill
#_128411: db $02, $05 ; Repeat Fill bytes
#_128413: db $04 ; Direct Copy
#_128414: db $EF, $DF, $30, $67, $4F
#_128419: db $85 ; Repeat Fill
#_12841A: db $0D, $05 ; Repeat Fill bytes
#_12841C: db $43 ; Word Fill
#_12841D: db $00, $FC ; Word Fill
#_12841F: db $90 ; Repeat Fill
#_128420: db $17, $05 ; Repeat Fill bytes
#_128422: db $43 ; Word Fill
#_128423: db $00, $03 ; Word Fill
#_128425: db $03 ; Direct Copy
#_128426: db $FA, $FC, $F6, $F8
#_12842A: db $43 ; Word Fill
#_12842B: db $FD, $F1 ; Word Fill
#_12842D: db $0B ; Direct Copy
#_12842E: db $FF, $F3, $0C, $F3, $FC, $FC, $01, $01
#_128436: db $02, $02, $00, $00
#_12843A: db $47 ; Word Fill
#_12843B: db $3E, $3F ; Word Fill
#_12843D: db $07 ; Direct Copy
#_12843E: db $2F, $30, $1F, $20, $32, $C3, $0E, $CF
#_128446: db $25 ; Byte Fill
#_128447: db $C0
#_128448: db $04 ; Direct Copy
#_128449: db $0C, $30, $00, $3F, $7E
#_12844E: db $4A ; Word Fill
#_12844F: db $3F, $3E ; Word Fill
#_128451: db $01 ; Direct Copy
#_128452: db $47, $46
#_128454: db $26 ; Byte Fill
#_128455: db $C0
#_128456: db $05 ; Direct Copy
#_128457: db $B8, $BD, $DE, $5F, $60, $23
#_12845D: db $62 ; Increasing Fill
#_12845E: db $3C ; Increasing Fill Start
#_12845F: db $47 ; Word Fill
#_128460: db $3E, $3F ; Word Fill
#_128462: db $01 ; Direct Copy
#_128463: db $00, $80
#_128465: db $25 ; Byte Fill
#_128466: db $C0
#_128467: db $0F ; Direct Copy
#_128468: db $0C, $77, $0C, $73, $0E, $71, $0F, $70
#_128470: db $18, $63, $30, $CB, $F4, $0F, $CC, $57
#_128478: db $23 ; Byte Fill
#_128479: db $80
#_12847A: db $1B ; Direct Copy
#_12847B: db $84, $04, $00, $20, $AC, $B7, $4C, $77
#_128483: db $CF, $F0, $EF, $73, $FC, $35, $78, $03
#_12848B: db $3C, $47, $0C, $77, $40, $80, $00, $00
#_128493: db $02, $84, $80, $80
#_128497: db $FF ; End of GFX 10

;===================================================================================================

GFX_11:
#_128498: db $E0, $2B ; EXT Direct Copy
#_12849A: db $03, $00, $07, $00, $0F, $00, $1F, $01
#_1284A2: db $3C, $03, $78, $00, $F2, $08, $F1, $18
#_1284AA: db $FF, $FF, $FE, $FC, $F8, $F7, $E5, $C6
#_1284B2: db $79, $0F, $DB, $46, $87, $2C, $DE, $09
#_1284BA: db $FD, $93, $BB, $67, $F3, $4F, $6F, $DF
#_1284C2: db $C0, $A0, $50, $20
#_1284C6: db $23 ; Byte Fill
#_1284C7: db $00
#_1284C8: db $13 ; Direct Copy
#_1284C9: db $BE, $82, $7B, $38, $FF, $42, $66, $18
#_1284D1: db $43, $3D, $42, $3D, $66, $19, $BE, $80
#_1284D9: db $7D, $C6, $81, $81
#_1284DD: db $22 ; Byte Fill
#_1284DE: db $80
#_1284DF: db $1E ; Direct Copy
#_1284E0: db $41, $FF, $00, $64, $1B, $3E, $C0, $E5
#_1284E8: db $01, $83, $43, $26, $33, $35, $42, $4B
#_1284F0: db $B0, $FF, $E4, $21, $9A, $BC, $CC, $8C
#_1284F8: db $04, $A1, $81, $7E, $20, $F3, $4C
#_1284FF: db $43 ; Word Fill
#_128500: db $E1, $5E ; Word Fill
#_128502: db $07 ; Direct Copy
#_128503: db $B3, $0C, $FF, $A0, $68, $0E, $7E, $C1
#_12850B: db $22 ; Byte Fill
#_12850C: db $80
#_12850D: db $E0, $2C ; EXT Direct Copy
#_12850F: db $C0, $40, $B1, $98, $21, $D1, $2A, $F6
#_128517: db $05, $A2, $45, $A1, $40, $F6, $00, $AD
#_12851F: db $4E, $9B, $5C, $DE, $C4, $E8, $98, $9E
#_128527: db $CF, $90, $A0, $FF, $80, $59, $00, $BF
#_12852F: db $80, $1A, $A6, $18, $BD, $11, $BF, $0B
#_128537: db $BE, $07, $DC, $7F, $FF
#_12853C: db $62 ; Increasing Fill
#_12853D: db $40 ; Increasing Fill Start
#_12853E: db $16 ; Direct Copy
#_12853F: db $40, $40, $20, $FF, $01, $9A, $00, $FD
#_128547: db $01, $59, $64, $BB, $FE, $F3, $9E, $FF
#_12854F: db $0C, $FF, $00, $FE, $FF, $02, $82
#_128556: db $23 ; Byte Fill
#_128557: db $00
#_128558: db $85 ; Repeat Fill
#_128559: db $90, $00 ; Repeat Fill bytes
#_12855B: db $0B ; Direct Copy
#_12855C: db $82, $BE, $98, $BD, $C0, $C0, $00, $FF
#_128564: db $FF, $00, $7F, $FF
#_128568: db $62 ; Increasing Fill
#_128569: db $40 ; Increasing Fill Start
#_12856A: db $02 ; Direct Copy
#_12856B: db $3F, $00, $00
#_12856E: db $85 ; Repeat Fill
#_12856F: db $A8, $00 ; Repeat Fill bytes
#_128571: db $05 ; Direct Copy
#_128572: db $41, $7D, $19, $BD, $03, $03
#_128578: db $83 ; Repeat Fill
#_128579: db $CC, $00 ; Repeat Fill bytes
#_12857B: db $83 ; Repeat Fill
#_12857C: db $B8, $00 ; Repeat Fill bytes
#_12857E: db $08 ; Direct Copy
#_12857F: db $42, $FC, $00, $00, $BD, $BE, $C5, $06
#_128587: db $A1
#_128588: db $44 ; Word Fill
#_128589: db $1A, $E9 ; Word Fill
#_12858B: db $07 ; Direct Copy
#_12858C: db $A1, $1A, $B1, $12, $E1, $0A, $40, $F8
#_128594: db $23 ; Byte Fill
#_128595: db $C4
#_128596: db $06 ; Direct Copy
#_128597: db $CC, $D4, $E1, $0A, $B1, $12, $A1
#_12859E: db $44 ; Word Fill
#_12859F: db $1A, $E9 ; Word Fill
#_1285A1: db $07 ; Direct Copy
#_1285A2: db $A1, $1A, $C5, $06, $BD, $BE, $D4, $CC
#_1285AA: db $23 ; Byte Fill
#_1285AB: db $C4
#_1285AC: db $07 ; Direct Copy
#_1285AD: db $F8, $40, $FF, $F8, $FF, $00, $18, $F8
#_1285B5: db $43 ; Word Fill
#_1285B6: db $7E, $FE ; Word Fill
#_1285B8: db $43 ; Word Fill
#_1285B9: db $7F, $FF ; Word Fill
#_1285BB: db $06 ; Direct Copy
#_1285BC: db $01, $FE, $00, $00, $07, $01, $01
#_1285C3: db $22 ; Byte Fill
#_1285C4: db $00
#_1285C5: db $06 ; Direct Copy
#_1285C6: db $FF, $1F, $FF, $00, $E0, $1F, $D9
#_1285CD: db $44 ; Word Fill
#_1285CE: db $BF, $DF ; Word Fill
#_1285D0: db $03 ; Direct Copy
#_1285D1: db $6F, $9F, $F0, $0F
#_1285D5: db $27 ; Byte Fill
#_1285D6: db $00
#_1285D7: db $E0, $29 ; EXT Direct Copy
#_1285D9: db $03, $04, $03, $FD, $86, $F8, $8E, $F1
#_1285E1: db $F9, $06, $F3, $83, $30, $CF, $10, $EF
#_1285E9: db $F8, $00, $01, $00, $00, $0C, $00, $00
#_1285F1: db $B8, $A0, $7C, $73, $9E, $F9, $0E, $F9
#_1285F9: db $FF, $00, $FB, $CB, $30, $D7, $30, $DF
#_128601: db $47, $80
#_128603: db $22 ; Byte Fill
#_128604: db $00
#_128605: db $01 ; Direct Copy
#_128606: db $04, $08
#_128608: db $86 ; Repeat Fill
#_128609: db $BF, $00 ; Repeat Fill bytes
#_12860B: db $01 ; Direct Copy
#_12860C: db $1A, $A6
#_12860E: db $43 ; Word Fill
#_12860F: db $18, $BD ; Word Fill
#_128611: db $05 ; Direct Copy
#_128612: db $02, $BE, $98, $5F, $7F, $FF
#_128618: db $62 ; Increasing Fill
#_128619: db $40 ; Increasing Fill Start
#_12861A: db $01 ; Direct Copy
#_12861B: db $42, $41
#_12861D: db $87 ; Repeat Fill
#_12861E: db $A7, $00 ; Repeat Fill bytes
#_128620: db $08 ; Direct Copy
#_128621: db $65, $19, $BD, $18, $BD, $40, $7D, $19
#_128629: db $FA
#_12862A: db $84 ; Repeat Fill
#_12862B: db $E8, $00 ; Repeat Fill bytes
#_12862D: db $08 ; Direct Copy
#_12862E: db $42, $82, $04, $A1, $BE, $C0, $01, $A0
#_128636: db $1E
#_128637: db $43 ; Word Fill
#_128638: db $FD, $0F ; Word Fill
#_12863A: db $08 ; Direct Copy
#_12863B: db $A0, $1F, $B2, $13, $E0, $0D, $40, $FE
#_128643: db $C1
#_128644: db $22 ; Byte Fill
#_128645: db $C0
#_128646: db $07 ; Direct Copy
#_128647: db $CC, $D2, $E0, $0D, $B2, $13, $A0, $1F
#_12864F: db $43 ; Word Fill
#_128650: db $FD, $0F ; Word Fill
#_128652: db $07 ; Direct Copy
#_128653: db $A0, $1E, $C0, $01, $B9, $BE, $D2, $CC
#_12865B: db $22 ; Byte Fill
#_12865C: db $C0
#_12865D: db $E0, $37 ; EXT Direct Copy
#_12865F: db $C1, $FE, $40, $FF, $00, $BD, $66, $C0
#_128667: db $7F, $DC, $22, $DF, $20, $DE, $61, $97
#_12866F: db $78, $CB, $24, $FF, $99, $80, $C1, $C0
#_128677: db $80, $80, $D0, $E0, $01, $FE, $01, $E7
#_12867F: db $01, $4F, $0D, $57, $15, $7B, $19, $7F
#_128687: db $01, $3E, $FE, $FE, $E0, $F8, $B0, $A8
#_12868F: db $84, $80, $01, $FF, $0F, $FF, $00, $80
#_128697: db $44 ; Word Fill
#_128698: db $7F, $CF ; Word Fill
#_12869A: db $05 ; Direct Copy
#_12869B: db $FE, $7F, $FC, $7F, $00, $FF
#_1286A1: db $27 ; Byte Fill
#_1286A2: db $00
#_1286A3: db $0F ; Direct Copy
#_1286A4: db $FF, $F0, $FF, $00, $00, $FF, $8C, $FE
#_1286AC: db $DE, $FE, $7E, $FE, $3B, $FF, $80, $7F
#_1286B4: db $22 ; Byte Fill
#_1286B5: db $00
#_1286B6: db $22 ; Byte Fill
#_1286B7: db $01
#_1286B8: db $12 ; Direct Copy
#_1286B9: db $00, $00, $C2, $23, $CE, $3F, $DC, $3F
#_1286C1: db $DE, $3F, $CE, $3F, $C6, $BF, $CC, $BF
#_1286C9: db $D9, $BE, $1C
#_1286CC: db $26 ; Byte Fill
#_1286CD: db $00
#_1286CE: db $02 ; Direct Copy
#_1286CF: db $D8, $BF, $DC
#_1286D2: db $43 ; Word Fill
#_1286D3: db $BF, $DE ; Word Fill
#_1286D5: db $44 ; Word Fill
#_1286D6: db $3F, $C6 ; Word Fill
#_1286D8: db $03 ; Direct Copy
#_1286D9: db $DE, $3F, $FE, $01
#_1286DD: db $27 ; Byte Fill
#_1286DE: db $00
#_1286DF: db $E0, $27 ; EXT Direct Copy
#_1286E1: db $EE, $9F, $D0, $3E, $B8, $1D, $50, $CB
#_1286E9: db $E0, $F7, $C3, $EC, $87, $D9, $04, $BB
#_1286F1: db $00, $01, $42, $24, $08, $10, $20, $40
#_1286F9: db $8C, $F3, $9B, $6C, $73, $9C, $66, $B9
#_128701: db $CC, $73, $98, $E7, $30, $CF, $61, $9F
#_128709: db $22 ; Byte Fill
#_12870A: db $00
#_12870B: db $14 ; Direct Copy
#_12870C: db $01, $03, $07, $0F, $1E, $BF, $40, $EA
#_128714: db $14, $DD, $20, $AB, $51, $F7, $03, $AF
#_12871C: db $47, $DF, $0F, $BE, $1F
#_128721: db $22 ; Byte Fill
#_128722: db $00
#_128723: db $84 ; Repeat Fill
#_128724: db $9B, $02 ; Repeat Fill bytes
#_128726: db $E0, $27 ; EXT Direct Copy
#_128728: db $FF, $04, $0F, $08, $FE, $00, $FC, $C0
#_128730: db $F8, $80, $FC, $00, $0C, $00, $FC, $00
#_128738: db $F9, $F3, $07, $CF, $9F, $03, $F3, $03
#_128740: db $FF, $00, $C7, $38, $A0, $5F, $97, $6F
#_128748: db $8F, $77, $DD, $3B, $DA, $3D, $DC, $3F
#_128750: db $27 ; Byte Fill
#_128751: db $00
#_128752: db $19 ; Direct Copy
#_128753: db $DC, $3F, $9C, $5F, $0E, $8F, $CC, $CF
#_12875B: db $F6, $F7, $FA, $FB, $34, $FD, $01, $FE
#_128763: db $00, $20, $70, $30, $08, $04, $02, $00
#_12876B: db $A0, $BF
#_12876D: db $83 ; Repeat Fill
#_12876E: db $B2, $01 ; Repeat Fill bytes
#_128770: db $0C ; Direct Copy
#_128771: db $FC, $0F, $FA, $0F, $A1, $1F, $B3, $16
#_128779: db $E7, $0C, $40, $FE, $C1
#_12877E: db $22 ; Byte Fill
#_12877F: db $C0
#_128780: db $07 ; Direct Copy
#_128781: db $C8, $D0, $EF, $00, $BF, $18, $A7, $1C
#_128789: db $43 ; Word Fill
#_12878A: db $F3, $0E ; Word Fill
#_12878C: db $06 ; Direct Copy
#_12878D: db $A3, $1E, $CF, $0C, $A7, $B8, $D0
#_128794: db $24 ; Byte Fill
#_128795: db $C0
#_128796: db $03 ; Direct Copy
#_128797: db $F0, $40, $BF, $BF
#_12879B: db $43 ; Word Fill
#_12879C: db $00, $FF ; Word Fill
#_12879E: db $0A ; Direct Copy
#_12879F: db $10, $EF, $FF, $00, $EF, $7F, $C0, $7F
#_1287A7: db $86, $79, $40
#_1287AA: db $26 ; Byte Fill
#_1287AB: db $00
#_1287AC: db $10 ; Direct Copy
#_1287AD: db $3D, $BD, $D8, $67, $D0, $6F, $C0, $7F
#_1287B5: db $FF, $00, $FF, $FF, $08, $F7, $0C, $F3
#_1287BD: db $42
#_1287BE: db $26 ; Byte Fill
#_1287BF: db $00
#_1287C0: db $43 ; Word Fill
#_1287C1: db $0C, $77 ; Word Fill
#_1287C3: db $0F ; Direct Copy
#_1287C4: db $8C, $F7, $8D, $F6, $0D, $76, $0C, $77
#_1287CC: db $EC, $F7, $7C, $87, $80, $80, $00, $00
#_1287D4: db $83 ; Repeat Fill
#_1287D5: db $70, $03 ; Repeat Fill bytes
#_1287D7: db $07 ; Direct Copy
#_1287D8: db $9C, $E7, $0C, $77, $0D, $76, $8D, $F6
#_1287E0: db $43 ; Word Fill
#_1287E1: db $9C, $E7 ; Word Fill
#_1287E3: db $06 ; Direct Copy
#_1287E4: db $8E, $F7, $8B, $F4, $00, $80, $80
#_1287EB: db $24 ; Byte Fill
#_1287EC: db $00
#_1287ED: db $10 ; Direct Copy
#_1287EE: db $D9, $D9, $C8, $B7, $24, $5B, $90, $EF
#_1287F6: db $0F, $70, $0F, $77, $CE, $B5, $8D, $F6
#_1287FE: db $26
#_1287FF: db $43 ; Word Fill
#_128800: db $00, $80 ; Word Fill
#_128802: db $00 ; Direct Copy
#_128803: db $80
#_128804: db $83 ; Repeat Fill
#_128805: db $5E, $03 ; Repeat Fill bytes
#_128807: db $0E ; Direct Copy
#_128808: db $4C, $F7, $2C, $F7, $1C, $F7, $FC, $0F
#_128810: db $F8, $FB, $02, $FF, $01, $FF, $80
#_128817: db $23 ; Byte Fill
#_128818: db $00
#_128819: db $08 ; Direct Copy
#_12881A: db $04, $00, $00, $E0, $0F, $B1, $12, $A3
#_128822: db $1C
#_128823: db $43 ; Word Fill
#_128824: db $FB, $0D ; Word Fill
#_128826: db $07 ; Direct Copy
#_128827: db $A3, $1D, $CA, $0D, $BB, $BC, $D0, $CC
#_12882F: db $23 ; Byte Fill
#_128830: db $C0
#_128831: db $0C ; Direct Copy
#_128832: db $F0, $40, $0E, $12, $1C, $F3, $0E, $F1
#_12883A: db $0F, $F0, $FF, $04, $FF
#_12883F: db $43 ; Word Fill
#_128840: db $FC, $07 ; Word Fill
#_128842: db $01 ; Direct Copy
#_128843: db $F8, $E1
#_128845: db $26 ; Byte Fill
#_128846: db $00
#_128847: db $45 ; Word Fill
#_128848: db $0C, $77 ; Word Fill
#_12884A: db $09 ; Direct Copy
#_12884B: db $4C, $F7, $FC, $07, $FF, $0E, $BF, $C0
#_128853: db $1F, $60
#_128855: db $22 ; Byte Fill
#_128856: db $80
#_128857: db $23 ; Byte Fill
#_128858: db $00
#_128859: db $17 ; Direct Copy
#_12885A: db $80, $FD, $0E, $8B, $75, $A7, $5B, $9F
#_128862: db $67, $DF, $AF, $BF, $DF, $7F, $BF, $FF
#_12886A: db $7F, $0E, $74, $58, $60, $A0, $C0, $80
#_128872: db $45 ; Word Fill
#_128873: db $00, $FF ; Word Fill
#_128875: db $02 ; Direct Copy
#_128876: db $E3, $E3, $DD
#_128879: db $43 ; Word Fill
#_12887A: db $EB, $D5 ; Word Fill
#_12887C: db $02 ; Direct Copy
#_12887D: db $08, $E3, $FF
#_128880: db $22 ; Byte Fill
#_128881: db $00
#_128882: db $11 ; Direct Copy
#_128883: db $E3, $DD, $D5, $D5, $F7, $00, $FD, $3E
#_12888B: db $FD, $22, $E1, $1C, $EF, $10, $E1, $1C
#_128893: db $FD, $22
#_128895: db $43 ; Word Fill
#_128896: db $FD, $3E ; Word Fill
#_128898: db $07 ; Direct Copy
#_128899: db $3E, $22, $1E, $10, $1E, $22, $3E, $3E
#_1288A1: db $44 ; Word Fill
#_1288A2: db $FF, $00 ; Word Fill
#_1288A4: db $00 ; Direct Copy
#_1288A5: db $1F
#_1288A6: db $45 ; Word Fill
#_1288A7: db $FF, $3F ; Word Fill
#_1288A9: db $06 ; Direct Copy
#_1288AA: db $FC, $3D, $FD, $3E, $00, $00, $1F
#_1288B1: db $23 ; Byte Fill
#_1288B2: db $3F
#_1288B3: db $45 ; Word Fill
#_1288B4: db $3E, $FD ; Word Fill
#_1288B6: db $03 ; Direct Copy
#_1288B7: db $FE, $E5, $FE, $E9
#_1288BB: db $62 ; Increasing Fill
#_1288BC: db $F6 ; Increasing Fill Start
#_1288BD: db $1E ; Direct Copy
#_1288BE: db $07, $F8, $FF, $00, $3E, $3E, $FE, $FE
#_1288C6: db $F6, $F8, $F8, $00, $00, $FF, $0C, $C1
#_1288CE: db $1C, $9C, $3F, $A1, $33, $8C, $21, $9E
#_1288D6: db $33, $8C, $1F, $80, $00, $3E, $63
#_1288DD: db $23 ; Byte Fill
#_1288DE: db $40
#_1288DF: db $E0, $20 ; EXT Direct Copy
#_1288E1: db $60, $00, $FF, $20, $C0, $00, $1B, $1E
#_1288E9: db $C0, $65, $01, $22, $33, $31, $42, $4B
#_1288F1: db $B0, $00, $3F, $E4, $21, $9A, $CC, $8C
#_1288F9: db $04, $00, $FF, $00, $C0, $1E, $90, $3B
#_128901: db $A4
#_128902: db $43 ; Word Fill
#_128903: db $71, $AE ; Word Fill
#_128905: db $06 ; Direct Copy
#_128906: db $1B, $84, $1F, $D0, $00, $3F, $61
#_12890D: db $22 ; Byte Fill
#_12890E: db $40
#_12890F: db $19 ; Direct Copy
#_128910: db $60, $20, $00, $D1, $09, $D2, $4E, $85
#_128918: db $12, $A5, $11, $A0, $18, $80, $15, $A6
#_128920: db $0B, $AC, $2E, $24, $70, $48, $4E, $67
#_128928: db $48, $50
#_12892A: db $87 ; Repeat Fill
#_12892B: db $98, $01 ; Repeat Fill bytes
#_12892D: db $07 ; Direct Copy
#_12892E: db $1B, $BF, $00, $BF, $3F, $C0, $7D, $9E
#_128936: db $83 ; Repeat Fill
#_128937: db $B8, $00 ; Repeat Fill bytes
#_128939: db $0F ; Direct Copy
#_12893A: db $40, $40, $00, $00, $FF, $00, $20, $C0
#_128942: db $4F, $88, $9F, $13, $BF, $27, $BF, $20
#_12894A: db $83 ; Repeat Fill
#_12894B: db $1E, $04 ; Repeat Fill bytes
#_12894D: db $05 ; Direct Copy
#_12894E: db $0F, $1F, $30, $63, $47, $40
#_128954: db $83 ; Repeat Fill
#_128955: db $1D, $02 ; Repeat Fill bytes
#_128957: db $00 ; Direct Copy
#_128958: db $04
#_128959: db $43 ; Word Fill
#_12895A: db $00, $FC ; Word Fill
#_12895C: db $10 ; Direct Copy
#_12895D: db $C0, $F0, $C0, $F8, $00, $0C, $00, $FE
#_128965: db $00, $FB, $FB, $03, $DF, $CF, $07, $F3
#_12896D: db $01
#_12896E: db $97 ; Repeat Fill
#_12896F: db $B8, $02 ; Repeat Fill bytes
#_128971: db $09 ; Direct Copy
#_128972: db $EF, $10, $C0, $20, $8F, $C8, $9F, $17
#_12897A: db $BF, $2F
#_12897C: db $85 ; Repeat Fill
#_12897D: db $02, $05 ; Repeat Fill bytes
#_12897F: db $04 ; Direct Copy
#_128980: db $EF, $DF, $30, $67, $4F
#_128985: db $85 ; Repeat Fill
#_128986: db $0D, $05 ; Repeat Fill bytes
#_128988: db $43 ; Word Fill
#_128989: db $00, $FC ; Word Fill
#_12898B: db $91 ; Repeat Fill
#_12898C: db $17, $05 ; Repeat Fill bytes
#_12898E: db $06 ; Direct Copy
#_12898F: db $1F, $FF, $00, $03, $FC, $F6, $F8
#_128996: db $43 ; Word Fill
#_128997: db $FD, $F1 ; Word Fill
#_128999: db $03 ; Direct Copy
#_12899A: db $EF, $F3, $0C, $F3
#_12899E: db $22 ; Byte Fill
#_12899F: db $00
#_1289A0: db $04 ; Direct Copy
#_1289A1: db $01, $02, $02, $00, $00
#_1289A6: db $45 ; Word Fill
#_1289A7: db $DE, $3F ; Word Fill
#_1289A9: db $09 ; Direct Copy
#_1289AA: db $DC, $BF, $CF, $B0, $DF, $A0, $F2, $83
#_1289B2: db $EE, $8F
#_1289B4: db $25 ; Byte Fill
#_1289B5: db $00
#_1289B6: db $02 ; Direct Copy
#_1289B7: db $0C, $10, $C0
#_1289BA: db $44 ; Word Fill
#_1289BB: db $BF, $DE ; Word Fill
#_1289BD: db $43 ; Word Fill
#_1289BE: db $FE, $BF ; Word Fill
#_1289C0: db $43 ; Word Fill
#_1289C1: db $DE, $1F ; Word Fill
#_1289C3: db $01 ; Direct Copy
#_1289C4: db $C7, $06
#_1289C6: db $24 ; Byte Fill
#_1289C7: db $00
#_1289C8: db $0B ; Direct Copy
#_1289C9: db $20, $20, $38, $FD, $1E, $FF, $00, $E3
#_1289D1: db $1C, $DD, $BE, $DE
#_1289D5: db $44 ; Word Fill
#_1289D6: db $BF, $CE ; Word Fill
#_1289D8: db $01 ; Direct Copy
#_1289D9: db $DE, $BF
#_1289DB: db $27 ; Byte Fill
#_1289DC: db $00
#_1289DD: db $0F ; Direct Copy
#_1289DE: db $0C, $77, $0C, $73, $0E, $71, $0F, $70
#_1289E6: db $18, $63, $30, $CB, $F4, $0F, $CC, $57
#_1289EE: db $23 ; Byte Fill
#_1289EF: db $80
#_1289F0: db $1B ; Direct Copy
#_1289F1: db $84, $04, $00, $20, $AC, $B7, $4C, $77
#_1289F9: db $CF, $F0, $EF, $73, $FC, $35, $78, $03
#_128A01: db $3C, $47, $0C, $77, $40, $80, $00, $00
#_128A09: db $02, $84, $80, $80
#_128A0D: db $FF ; End of GFX 11

;===================================================================================================

GFX_12:
#_128A0E: db $11 ; Direct Copy
#_128A0F: db $DE, $00, $A3, $00, $41, $00, $03, $00
#_128A17: db $1C, $00, $13, $03, $1B, $0F, $31, $1F
#_128A1F: db $3F, $7F
#_128A21: db $22 ; Byte Fill
#_128A22: db $FF
#_128A23: db $0D ; Direct Copy
#_128A24: db $FC, $F0, $E0, $30, $1F, $73, $1D, $D2
#_128A2C: db $1F, $10, $1F, $E8, $EF, $F8
#_128A32: db $44 ; Word Fill
#_128A33: db $FF, $FC ; Word Fill
#_128A35: db $23 ; Byte Fill
#_128A36: db $E0
#_128A37: db $00 ; Direct Copy
#_128A38: db $10
#_128A39: db $22 ; Byte Fill
#_128A3A: db $00
#_128A3B: db $E0, $2C ; EXT Direct Copy
#_128A3D: db $FF, $04, $87, $03, $83, $01, $D3, $01
#_128A45: db $77, $03, $BA, $83, $D5, $C6, $CB, $CC
#_128A4D: db $F8, $FC, $FE, $FE, $FC, $7C, $38, $30
#_128A55: db $C1, $80, $A2, $00, $AD, $01, $72, $03
#_128A5D: db $8C, $8F, $71, $FE, $83, $7C, $FF, $00
#_128A65: db $7F, $FF, $FE, $FC, $70
#_128A6A: db $22 ; Byte Fill
#_128A6B: db $00
#_128A6C: db $1F ; Direct Copy
#_128A6D: db $F7, $07, $9B, $03, $8C, $00, $9E, $00
#_128A75: db $85, $01, $CA, $83, $FD, $4E, $FB, $7C
#_128A7D: db $F8, $FC, $FF, $FF, $FE, $7C, $30, $00
#_128A85: db $EB, $8C, $95, $06, $75, $06, $15, $06
#_128A8D: db $43 ; Word Fill
#_128A8E: db $29, $0E ; Word Fill
#_128A90: db $04 ; Direct Copy
#_128A91: db $53, $1C, $A7, $38, $70
#_128A96: db $22 ; Byte Fill
#_128A97: db $F8
#_128A98: db $03 ; Direct Copy
#_128A99: db $F0, $F0, $E0, $C0
#_128A9D: db $F0, $2C ; EXT Repeat Fill
#_128A9F: db $30, $00 ; Repeat Fill bytes
#_128AA1: db $22 ; Byte Fill
#_128AA2: db $00
#_128AA3: db $F0, $2C ; EXT Repeat Fill
#_128AA5: db $30, $00 ; Repeat Fill bytes
#_128AA7: db $22 ; Byte Fill
#_128AA8: db $00
#_128AA9: db $83 ; Repeat Fill
#_128AAA: db $60, $00 ; Repeat Fill bytes
#_128AAC: db $04 ; Direct Copy
#_128AAD: db $BC, $00, $86, $00, $8D
#_128AB2: db $8E ; Repeat Fill
#_128AB3: db $69, $00 ; Repeat Fill bytes
#_128AB5: db $09 ; Direct Copy
#_128AB6: db $E9, $8E, $94, $07, $74, $07, $14, $07
#_128ABE: db $28, $0F
#_128AC0: db $86 ; Repeat Fill
#_128AC1: db $82, $00 ; Repeat Fill bytes
#_128AC3: db $22 ; Byte Fill
#_128AC4: db $F8
#_128AC5: db $83 ; Repeat Fill
#_128AC6: db $8C, $00 ; Repeat Fill bytes
#_128AC8: db $13 ; Direct Copy
#_128AC9: db $34, $CB, $7A, $9D, $D5, $36, $C4, $37
#_128AD1: db $CC, $3F, $C9, $3E, $EB, $1C, $FC, $C3
#_128AD9: db $00, $00, $08, $08
#_128ADD: db $23 ; Byte Fill
#_128ADE: db $00
#_128ADF: db $09 ; Direct Copy
#_128AE0: db $14, $EB, $2E, $C9, $EF, $2C, $AD, $6E
#_128AE8: db $99, $7E
#_128AEA: db $43 ; Word Fill
#_128AEB: db $D1, $3E ; Word Fill
#_128AED: db $02 ; Direct Copy
#_128AEE: db $53, $BF, $00
#_128AF1: db $22 ; Byte Fill
#_128AF2: db $10
#_128AF3: db $23 ; Byte Fill
#_128AF4: db $00
#_128AF5: db $E0, $2C ; EXT Direct Copy
#_128AF7: db $58, $64, $28, $30, $2D, $34, $6B, $37
#_128AFF: db $A9, $37, $68, $77, $CC, $F3, $9F, $E0
#_128B07: db $83, $C7, $C3, $C0, $C0, $80, $00, $00
#_128B0F: db $24, $5C, $50, $60, $7C, $68, $DB, $E8
#_128B17: db $94, $EC, $13, $EF, $39, $C7, $FC, $03
#_128B1F: db $83, $8F, $87, $07, $03
#_128B24: db $22 ; Byte Fill
#_128B25: db $00
#_128B26: db $0F ; Direct Copy
#_128B27: db $FE, $00, $80, $00, $A1, $00, $E2, $00
#_128B2F: db $6F, $03, $BA, $83, $D4, $C7, $C8, $CF
#_128B37: db $23 ; Byte Fill
#_128B38: db $FF
#_128B39: db $83 ; Repeat Fill
#_128B3A: db $44, $00 ; Repeat Fill bytes
#_128B3C: db $13 ; Direct Copy
#_128B3D: db $BF, $C2, $5D, $64, $7A, $6A, $96, $F6
#_128B45: db $0F, $FF, $4F, $BF, $4D, $FF, $0E, $FF
#_128B4D: db $01, $83, $85, $09
#_128B51: db $23 ; Byte Fill
#_128B52: db $00
#_128B53: db $89 ; Repeat Fill
#_128B54: db $F0, $00 ; Repeat Fill bytes
#_128B56: db $05 ; Direct Copy
#_128B57: db $8A, $03, $9C, $0F, $28, $0F
#_128B5D: db $84 ; Repeat Fill
#_128B5E: db $70, $00 ; Repeat Fill bytes
#_128B60: db $13 ; Direct Copy
#_128B61: db $FC, $F0, $F0, $90, $9F, $E6, $7B, $E0
#_128B69: db $3F, $F0, $1F, $EF, $2F, $DF, $5F, $BD
#_128B71: db $BF, $CE, $0F, $60
#_128B75: db $22 ; Byte Fill
#_128B76: db $00
#_128B77: db $E0, $27 ; EXT Direct Copy
#_128B79: db $10, $20, $40, $F0, $FF, $1F, $E0, $20
#_128B81: db $C2, $40, $82, $80, $86, $80, $FD, $81
#_128B89: db $FB, $83, $87, $87, $00, $1F, $3F, $7F
#_128B91: db $7F, $7E, $7C, $78, $37, $07, $1B, $03
#_128B99: db $98, $00, $F7, $07, $6C, $0F, $98, $9F
#_128BA1: db $43 ; Word Fill
#_128BA2: db $D0, $DF ; Word Fill
#_128BA4: db $07 ; Direct Copy
#_128BA5: db $F8, $FC, $FF, $F8, $F0, $60, $20, $20
#_128BAD: db $45 ; Word Fill
#_128BAE: db $E0, $EF ; Word Fill
#_128BB0: db $09 ; Direct Copy
#_128BB1: db $E2, $EF, $F0, $FF, $E0, $FF, $C3, $FC
#_128BB9: db $07, $FB
#_128BBB: db $23 ; Byte Fill
#_128BBC: db $10
#_128BBD: db $23 ; Byte Fill
#_128BBE: db $00
#_128BBF: db $11 ; Direct Copy
#_128BC0: db $0D, $FD, $6E, $9E, $6F, $BF, $4F, $FF
#_128BC8: db $07, $FF, $03, $FB, $E1, $11, $F8, $F0
#_128BD0: db $02, $01
#_128BD2: db $22 ; Byte Fill
#_128BD3: db $00
#_128BD4: db $02 ; Direct Copy
#_128BD5: db $04, $0E, $0F
#_128BD8: db $45 ; Word Fill
#_128BD9: db $FE, $FF ; Word Fill
#_128BDB: db $09 ; Direct Copy
#_128BDC: db $3C, $3F, $40, $CF, $01, $FE, $13, $FD
#_128BE4: db $03, $FD
#_128BE6: db $22 ; Byte Fill
#_128BE7: db $00
#_128BE8: db $01 ; Direct Copy
#_128BE9: db $C0, $30
#_128BEB: db $22 ; Byte Fill
#_128BEC: db $00
#_128BED: db $0F ; Direct Copy
#_128BEE: db $03, $FD, $73, $9D, $63, $BD, $01, $FF
#_128BF6: db $F1, $FC, $F8, $F8, $7C, $7C, $BE, $BE
#_128BFE: db $23 ; Byte Fill
#_128BFF: db $00
#_128C00: db $E0, $2D ; EXT Direct Copy
#_128C02: db $03, $07, $83, $41, $FC, $FE, $3C, $FC
#_128C0A: db $40, $C0, $88, $88, $04, $00, $4D, $00
#_128C12: db $C1, $01, $FD, $81, $01, $03, $3F, $77
#_128C1A: db $FF, $FF, $FE, $7E, $FD, $FD, $9E, $FE
#_128C22: db $8F, $FF, $80, $FF, $8F, $F0, $8E, $F1
#_128C2A: db $CC, $F3, $E8, $F7, $02, $01
#_128C30: db $25 ; Byte Fill
#_128C31: db $00
#_128C32: db $09 ; Direct Copy
#_128C33: db $87, $78, $4F, $B5, $7A, $8D, $7B, $BC
#_128C3B: db $47, $B8
#_128C3D: db $43 ; Word Fill
#_128C3E: db $FF, $00 ; Word Fill
#_128C40: db $01 ; Direct Copy
#_128C41: db $DF, $60
#_128C43: db $27 ; Byte Fill
#_128C44: db $00
#_128C45: db $0B ; Direct Copy
#_128C46: db $FF, $80, $E7, $00, $3F, $00, $1E, $01
#_128C4E: db $BC, $83, $78, $87
#_128C52: db $43 ; Word Fill
#_128C53: db $FC, $03 ; Word Fill
#_128C55: db $13 ; Direct Copy
#_128C56: db $7C, $F9, $F3, $E7, $4F, $1F, $03, $03
#_128C5E: db $0F, $FF, $1F, $FF, $37, $FF, $67, $FF
#_128C66: db $C3, $FF, $F1, $FF
#_128C6A: db $83 ; Repeat Fill
#_128C6B: db $22, $00 ; Repeat Fill bytes
#_128C6D: db $27 ; Byte Fill
#_128C6E: db $00
#_128C6F: db $17 ; Direct Copy
#_128C70: db $01, $0F, $10, $06, $1A, $03, $7B, $03
#_128C78: db $33, $83, $43, $C3, $3E, $FF, $9C, $BF
#_128C80: db $F0, $F9, $FC, $FC, $7C, $3C, $00, $40
#_128C88: db $9F ; Repeat Fill
#_128C89: db $60, $00 ; Repeat Fill bytes
#_128C8B: db $43 ; Word Fill
#_128C8C: db $29, $0E ; Word Fill
#_128C8E: db $84 ; Repeat Fill
#_128C8F: db $84, $00 ; Repeat Fill bytes
#_128C91: db $22 ; Byte Fill
#_128C92: db $F8
#_128C93: db $83 ; Repeat Fill
#_128C94: db $8C, $00 ; Repeat Fill bytes
#_128C96: db $E0, $23 ; EXT Direct Copy
#_128C98: db $0C, $74, $00, $10, $01, $11, $08, $10
#_128CA0: db $2C, $38, $4F, $7C, $CE, $FE, $C6, $FE
#_128CA8: db $83, $EF, $EE, $EF, $C7, $83, $01, $01
#_128CB0: db $0C, $10, $1C, $10, $5D, $10, $DF, $10
#_128CB8: db $2E, $38, $4F, $7C
#_128CBC: db $43 ; Word Fill
#_128CBD: db $CE, $FE ; Word Fill
#_128CBF: db $23 ; Byte Fill
#_128CC0: db $EF
#_128CC1: db $83 ; Repeat Fill
#_128CC2: db $44, $03 ; Repeat Fill bytes
#_128CC4: db $09 ; Direct Copy
#_128CC5: db $03, $03, $07, $87, $08, $8F, $00, $FF
#_128CCD: db $9E, $0F
#_128CCF: db $83 ; Repeat Fill
#_128CD0: db $79, $01 ; Repeat Fill bytes
#_128CD2: db $E0, $21 ; EXT Direct Copy
#_128CD4: db $24, $20, $FC, $78, $70, $00, $70, $78
#_128CDC: db $FC, $DF, $13, $03, $37, $07, $08, $0F
#_128CE4: db $70, $FF, $FF, $0F, $FF, $07, $1F, $03
#_128CEC: db $34, $00, $FC, $F8, $F0, $00, $F0, $F8
#_128CF4: db $FC, $FF
#_128CF6: db $43 ; Word Fill
#_128CF7: db $20, $E0 ; Word Fill
#_128CF9: db $E0, $2B ; EXT Direct Copy
#_128CFB: db $F0, $F0, $38, $38, $1E, $1E, $0F, $0F
#_128D03: db $0C, $0F, $04, $07, $1F, $1F, $0F, $C7
#_128D0B: db $E1, $F0, $F0, $F8, $47, $C7, $BF, $FF
#_128D13: db $58, $7F, $60, $7F, $61, $71, $42, $72
#_128D1B: db $C7, $F7, $CB, $FB, $38, $00, $80, $80
#_128D23: db $8E, $8D, $08, $04
#_128D27: db $87 ; Repeat Fill
#_128D28: db $78, $00 ; Repeat Fill bytes
#_128D2A: db $43 ; Word Fill
#_128D2B: db $29, $0E ; Word Fill
#_128D2D: db $84 ; Repeat Fill
#_128D2E: db $84, $00 ; Repeat Fill bytes
#_128D30: db $22 ; Byte Fill
#_128D31: db $F8
#_128D32: db $83 ; Repeat Fill
#_128D33: db $8C, $00 ; Repeat Fill bytes
#_128D35: db $E0, $29 ; EXT Direct Copy
#_128D37: db $E4, $D8, $78, $64, $39, $21, $2C, $30
#_128D3F: db $6B, $70, $6C, $74, $CA, $F6, $9A, $E6
#_128D47: db $03, $83, $C6, $C7, $87, $83, $01, $01
#_128D4F: db $83, $83, $CE, $CF, $FC, $7F, $61, $9E
#_128D57: db $7F, $80, $94, $47, $0B, $03, $28, $20
#_128D5F: db $7C, $30
#_128D61: db $22 ; Byte Fill
#_128D62: db $00
#_128D63: db $0E ; Direct Copy
#_128D64: db $38, $FC, $DF, $FF, $33, $FF, $73, $FF
#_128D6C: db $E3, $FF, $C3, $FF, $07, $FF, $0F
#_128D73: db $23 ; Byte Fill
#_128D74: db $FF
#_128D75: db $22 ; Byte Fill
#_128D76: db $F8
#_128D77: db $01 ; Direct Copy
#_128D78: db $F0, $E0
#_128D7A: db $22 ; Byte Fill
#_128D7B: db $00
#_128D7C: db $1D ; Direct Copy
#_128D7D: db $FF, $83, $FF, $C7, $7D, $C7, $FE, $C7
#_128D85: db $FF, $C3, $FF, $81, $FF, $18, $FF, $3C
#_128D8D: db $FF, $FF, $EF, $EF, $C7, $C3, $81, $00
#_128D95: db $EF, $FC, $DF, $F8, $FF, $71
#_128D9B: db $44 ; Word Fill
#_128D9C: db $FF, $03 ; Word Fill
#_128D9E: db $0E ; Direct Copy
#_128D9F: db $01, $FF, $78, $DF, $FC, $FE, $FC, $F8
#_128DA7: db $F0, $C0, $F0, $FC, $FE, $FF, $07
#_128DAE: db $43 ; Word Fill
#_128DAF: db $FB, $0F ; Word Fill
#_128DB1: db $05 ; Direct Copy
#_128DB2: db $FC, $0F, $FF, $77, $DF, $FB
#_128DB8: db $43 ; Word Fill
#_128DB9: db $EF, $FC ; Word Fill
#_128DBB: db $25 ; Byte Fill
#_128DBC: db $FF
#_128DBD: db $11 ; Direct Copy
#_128DBE: db $FC, $FD, $FF, $79, $EF, $F9, $EF, $F8
#_128DC6: db $9F, $F8, $FF, $F1, $FF, $01, $FF, $03
#_128DCE: db $FF, $CF
#_128DD0: db $24 ; Byte Fill
#_128DD1: db $FC
#_128DD2: db $E0, $25 ; EXT Direct Copy
#_128DD4: db $F8, $00, $00, $FE, $E6, $C7, $C3, $85
#_128DDC: db $81, $05, $01, $0D, $01, $7A, $03, $B5
#_128DE4: db $86, $CB, $CC, $19, $3C, $7E, $FE, $FE
#_128DEC: db $FC, $78, $30, $C6, $C6, $A3, $83, $A3
#_128DF4: db $01, $7D, $01, $82, $83, $7D
#_128DFA: db $84 ; Repeat Fill
#_128DFB: db $53, $00 ; Repeat Fill bytes
#_128DFD: db $04 ; Direct Copy
#_128DFE: db $39, $7C, $FE, $FE, $7C
#_128E03: db $22 ; Byte Fill
#_128E04: db $00
#_128E05: db $05 ; Direct Copy
#_128E06: db $E3, $E3, $C5, $C1, $86, $80
#_128E0C: db $83 ; Repeat Fill
#_128E0D: db $F6, $00 ; Repeat Fill bytes
#_128E0F: db $12 ; Direct Copy
#_128E10: db $FA, $83, $C5, $C6, $7B, $7C, $1C, $3E
#_128E18: db $7F, $FF, $FE, $7C, $38, $80, $EB, $CC
#_128E20: db $95, $86, $75
#_128E23: db $44 ; Word Fill
#_128E24: db $06, $15 ; Word Fill
#_128E26: db $07 ; Direct Copy
#_128E27: db $95, $86, $EB, $CC, $77, $78, $30, $78
#_128E2F: db $22 ; Byte Fill
#_128E30: db $F8
#_128E31: db $02 ; Direct Copy
#_128E32: db $78, $30, $80
#_128E35: db $94 ; Repeat Fill
#_128E36: db $48, $00 ; Repeat Fill bytes
#_128E38: db $22 ; Byte Fill
#_128E39: db $00
#_128E3A: db $0F ; Direct Copy
#_128E3B: db $E7, $FF, $E0, $FF, $CF, $FF, $10, $F0
#_128E43: db $28, $E0, $25, $E0, $23, $E0, $3F, $FF
#_128E4B: db $22 ; Byte Fill
#_128E4C: db $00
#_128E4D: db $00 ; Direct Copy
#_128E4E: db $0F
#_128E4F: db $22 ; Byte Fill
#_128E50: db $1F
#_128E51: db $E0, $22 ; EXT Direct Copy
#_128E53: db $00, $FF, $E8, $DF, $E0, $3C, $C3, $BC
#_128E5B: db $C3, $70, $4F, $38, $07, $7C, $03, $FE
#_128E63: db $01, $00, $03, $03, $1F, $8F, $C7, $83
#_128E6B: db $01, $FF, $EC, $FF, $08, $FF, $C0, $7E
#_128E73: db $61, $3C, $23
#_128E76: db $83 ; Repeat Fill
#_128E77: db $1A, $05 ; Repeat Fill bytes
#_128E79: db $09 ; Direct Copy
#_128E7A: db $FC, $03, $00, $01, $03, $87, $CF, $DF
#_128E82: db $83, $03
#_128E84: db $97 ; Repeat Fill
#_128E85: db $30, $00 ; Repeat Fill bytes
#_128E87: db $E0, $35 ; EXT Direct Copy
#_128E89: db $F7, $80, $F7, $00, $7C, $43, $BC, $C3
#_128E91: db $B0, $CF, $58, $E7, $9C, $63, $FE, $01
#_128E99: db $7B, $FB, $83, $1F, $0F, $07, $03, $01
#_128EA1: db $C1, $FE, $9E, $FF, $22, $E1, $44, $C1
#_128EA9: db $5A, $C3, $45, $C6, $39, $FE, $47, $B9
#_128EB1: db $00, $00, $1E, $3E, $3C, $38, $00, $00
#_128EB9: db $C0, $FF, $9D, $FE, $22, $E3
#_128EBF: db $43 ; Word Fill
#_128EC0: db $4A, $C3 ; Word Fill
#_128EC2: db $1D ; Direct Copy
#_128EC3: db $55, $C6, $69, $CE, $87, $79, $00, $00
#_128ECB: db $1C, $3C, $3C, $38, $30, $00, $3F, $C1
#_128ED3: db $7F, $81, $C3, $3C, $E1, $7E, $4F, $CE
#_128EDB: db $B9, $7E, $42, $BD, $26, $D9
#_128EE1: db $23 ; Byte Fill
#_128EE2: db $00
#_128EE3: db $00 ; Direct Copy
#_128EE4: db $30
#_128EE5: db $22 ; Byte Fill
#_128EE6: db $00
#_128EE7: db $0F ; Direct Copy
#_128EE8: db $3E, $C1, $27, $D8, $70, $BF, $8F, $0F
#_128EF0: db $78, $FF, $F0, $3F, $61, $9F, $3F, $C1
#_128EF8: db $22 ; Byte Fill
#_128EF9: db $00
#_128EFA: db $00 ; Direct Copy
#_128EFB: db $70
#_128EFC: db $23 ; Byte Fill
#_128EFD: db $00
#_128EFE: db $11 ; Direct Copy
#_128EFF: db $0B, $03, $96, $87, $7C, $FF, $81, $7E
#_128F07: db $FF, $00, $23, $BC, $11, $1E, $39, $1E
#_128F0F: db $FC, $78
#_128F11: db $22 ; Byte Fill
#_128F12: db $00
#_128F13: db $13 ; Direct Copy
#_128F14: db $40, $E0, $E0, $19, $1E, $71, $FE, $A3
#_128F1C: db $7C, $7F, $80, $33, $BC, $A9, $8E, $14
#_128F24: db $07, $16, $07, $E0
#_128F28: db $22 ; Byte Fill
#_128F29: db $00
#_128F2A: db $03 ; Direct Copy
#_128F2B: db $40, $70, $F8, $F8
#_128F2F: db $FF ; End of GFX 12

;===================================================================================================

GFX_13:
#_128F30: db $43 ; Word Fill
#_128F31: db $FF, $00 ; Word Fill
#_128F33: db $E0, $41 ; EXT Direct Copy
#_128F35: db $FE, $00, $FC, $00, $F9, $01, $F9, $09
#_128F3D: db $E9, $09, $CA, $0B, $01, $03, $07, $0F
#_128F45: db $1E, $36, $76, $F4, $95, $16, $93, $94
#_128F4D: db $96, $99, $AE, $B1, $10, $2F, $30, $4F
#_128F55: db $70, $8F, $80, $7F, $E9, $6B, $67, $4F
#_128F5D: db $DF, $BF, $7F, $FF, $E0, $00, $DF, $20
#_128F65: db $B4, $C4, $62, $82, $41, $81, $C0, $BF
#_128F6D: db $7F, $80, $FF, $00, $FF, $DF, $3B, $7D
#_128F75: db $7E, $40
#_128F77: db $23 ; Byte Fill
#_128F78: db $00
#_128F79: db $E0, $35 ; EXT Direct Copy
#_128F7B: db $FF, $00, $47, $40, $2C, $28, $91, $99
#_128F83: db $04, $FC, $FC, $03, $FF, $00, $FF, $FF
#_128F8B: db $BF, $D7, $66, $03, $00, $00, $D1, $12
#_128F93: db $E5, $26, $ED, $2E, $C9, $0A, $D9, $1A
#_128F9B: db $D1, $12, $D5, $16, $E5, $26, $EC, $D8
#_128FA3: db $D0, $F4, $E4, $EC, $E8, $D8, $E9, $2A
#_128FAB: db $C9, $0A, $D1, $12, $E1, $22
#_128FB1: db $85 ; Repeat Fill
#_128FB2: db $62, $00 ; Repeat Fill bytes
#_128FB4: db $09 ; Direct Copy
#_128FB5: db $D1, $12, $D4, $F4, $EC, $DC, $D8, $D0
#_128FBD: db $F4, $EC
#_128FBF: db $43 ; Word Fill
#_128FC0: db $FF, $00 ; Word Fill
#_128FC2: db $09 ; Direct Copy
#_128FC3: db $86, $86, $71, $71, $1C, $1C, $D8, $F7
#_128FCB: db $FF, $E3
#_128FCD: db $83 ; Repeat Fill
#_128FCE: db $56, $00 ; Repeat Fill bytes
#_128FD0: db $04 ; Direct Copy
#_128FD1: db $79, $8E, $E3, $10, $E3
#_128FD6: db $44 ; Word Fill
#_128FD7: db $00, $FF ; Word Fill
#_128FD9: db $93 ; Repeat Fill
#_128FDA: db $94, $00 ; Repeat Fill bytes
#_128FDC: db $95 ; Repeat Fill
#_128FDD: db $30, $00 ; Repeat Fill bytes
#_128FDF: db $23 ; Byte Fill
#_128FE0: db $00
#_128FE1: db $95 ; Repeat Fill
#_128FE2: db $4A, $00 ; Repeat Fill bytes
#_128FE4: db $97 ; Repeat Fill
#_128FE5: db $78, $00 ; Repeat Fill bytes
#_128FE7: db $97 ; Repeat Fill
#_128FE8: db $78, $00 ; Repeat Fill bytes
#_128FEA: db $44 ; Word Fill
#_128FEB: db $00, $7B ; Word Fill
#_128FED: db $05 ; Direct Copy
#_128FEE: db $3F, $01, $DF, $13, $FF, $04
#_128FF4: db $43 ; Word Fill
#_128FF5: db $FF, $00 ; Word Fill
#_128FF7: db $08 ; Direct Copy
#_128FF8: db $00, $FF, $FF, $FC, $F8, $E0, $E0, $C0
#_129000: db $FF
#_129001: db $44 ; Word Fill
#_129002: db $00, $FB ; Word Fill
#_129004: db $05 ; Direct Copy
#_129005: db $F7, $80, $FF, $C8, $FF, $F8
#_12900B: db $43 ; Word Fill
#_12900C: db $FF, $00 ; Word Fill
#_12900E: db $08 ; Direct Copy
#_12900F: db $80, $FF, $FF, $7F, $07, $03, $03, $01
#_129017: db $7F
#_129018: db $22 ; Byte Fill
#_129019: db $00
#_12901A: db $07 ; Direct Copy
#_12901B: db $FF, $01, $FE, $03, $FC, $FF, $00, $FF
#_129023: db $44 ; Word Fill
#_129024: db $7F, $80 ; Word Fill
#_129026: db $00 ; Direct Copy
#_129027: db $FF
#_129028: db $27 ; Byte Fill
#_129029: db $00
#_12902A: db $00 ; Direct Copy
#_12902B: db $80
#_12902C: db $43 ; Word Fill
#_12902D: db $80, $3F ; Word Fill
#_12902F: db $0C ; Direct Copy
#_129030: db $C0, $3F, $FF, $00, $FF, $3F, $C0, $BF
#_129038: db $60, $DF, $7F, $40, $40
#_12903D: db $24 ; Byte Fill
#_12903E: db $00
#_12903F: db $43 ; Word Fill
#_129040: db $FF, $00 ; Word Fill
#_129042: db $85 ; Repeat Fill
#_129043: db $94, $00 ; Repeat Fill bytes
#_129045: db $03 ; Direct Copy
#_129046: db $C6, $C6, $00, $FF
#_12904A: db $86 ; Repeat Fill
#_12904B: db $9E, $00 ; Repeat Fill bytes
#_12904D: db $02 ; Direct Copy
#_12904E: db $39, $00, $FF
#_129051: db $43 ; Word Fill
#_129052: db $FF, $00 ; Word Fill
#_129054: db $07 ; Direct Copy
#_129055: db $39, $39, $84, $84, $63, $63, $30, $30
#_12905D: db $85 ; Repeat Fill
#_12905E: db $8C, $01 ; Repeat Fill bytes
#_129060: db $05 ; Direct Copy
#_129061: db $C6, $7B, $9C, $CF, $00, $FF
#_129067: db $8F ; Repeat Fill
#_129068: db $60, $00 ; Repeat Fill bytes
#_12906A: db $07 ; Direct Copy
#_12906B: db $ED, $D9, $D1, $F5, $E5, $ED, $E9, $D9
#_129073: db $97 ; Repeat Fill
#_129074: db $B0, $01 ; Repeat Fill bytes
#_129076: db $43 ; Word Fill
#_129077: db $FF, $00 ; Word Fill
#_129079: db $13 ; Direct Copy
#_12907A: db $D0, $30, $EB, $3B, $D4, $1C, $CA, $0E
#_129082: db $CC, $0F, $D0, $13, $FF, $FF, $CF, $C4
#_12908A: db $E3, $F1, $F0, $EC
#_12908E: db $43 ; Word Fill
#_12908F: db $C1, $02 ; Word Fill
#_129091: db $0B ; Direct Copy
#_129092: db $21, $02, $11, $02, $09, $02, $05, $02
#_12909A: db $01, $FE, $FF, $00
#_12909E: db $25 ; Byte Fill
#_12909F: db $FD
#_1290A0: db $05 ; Direct Copy
#_1290A1: db $01, $FF, $1C, $E3, $08, $F7
#_1290A7: db $83 ; Repeat Fill
#_1290A8: db $54, $01 ; Repeat Fill bytes
#_1290AA: db $43 ; Word Fill
#_1290AB: db $00, $FF ; Word Fill
#_1290AD: db $03 ; Direct Copy
#_1290AE: db $18, $E7, $00, $00
#_1290B2: db $27 ; Byte Fill
#_1290B3: db $FF
#_1290B4: db $01 ; Direct Copy
#_1290B5: db $10, $EF
#_1290B7: db $4C ; Word Fill
#_1290B8: db $00, $FF ; Word Fill
#_1290BA: db $00 ; Direct Copy
#_1290BB: db $00
#_1290BC: db $27 ; Byte Fill
#_1290BD: db $FF
#_1290BE: db $0F ; Direct Copy
#_1290BF: db $00, $FE, $80, $7E, $C0, $3E, $82, $7C
#_1290C7: db $02, $FC, $00, $FE, $18, $E6, $00, $FE
#_1290CF: db $27 ; Byte Fill
#_1290D0: db $FF
#_1290D1: db $47 ; Word Fill
#_1290D2: db $00, $FE ; Word Fill
#_1290D4: db $01 ; Direct Copy
#_1290D5: db $80, $7E
#_1290D7: db $45 ; Word Fill
#_1290D8: db $00, $FE ; Word Fill
#_1290DA: db $27 ; Byte Fill
#_1290DB: db $FF
#_1290DC: db $84 ; Repeat Fill
#_1290DD: db $01, $00 ; Repeat Fill bytes
#_1290DF: db $00 ; Direct Copy
#_1290E0: db $FD
#_1290E1: db $83 ; Repeat Fill
#_1290E2: db $3A, $01 ; Repeat Fill bytes
#_1290E4: db $1D ; Direct Copy
#_1290E5: db $01, $EE, $03, $DD, $04, $BB, $FE, $FD
#_1290ED: db $FA, $F4, $E8, $D0, $A0, $40, $8C, $F3
#_1290F5: db $9B, $6C, $73, $9C, $67, $B9, $CF, $73
#_1290FD: db $9F, $E7, $3F, $CF, $7F, $9F
#_129103: db $22 ; Byte Fill
#_129104: db $00
#_129105: db $14 ; Direct Copy
#_129106: db $01, $03, $07, $0E, $1C, $BF, $40, $EB
#_12910E: db $14, $DF, $20, $AF, $50, $FF, $00, $BF
#_129116: db $40, $FE, $01, $FC, $03
#_12911B: db $27 ; Byte Fill
#_12911C: db $00
#_12911D: db $0B ; Direct Copy
#_12911E: db $06, $05, $FC, $0B, $08, $06, $10, $0C
#_129126: db $20, $18, $3C, $C0
#_12912A: db $43 ; Word Fill
#_12912B: db $FC, $00 ; Word Fill
#_12912D: db $04 ; Direct Copy
#_12912E: db $F9, $F3, $F7, $EF, $DF
#_129133: db $22 ; Byte Fill
#_129134: db $03
#_129135: db $E0, $27 ; EXT Direct Copy
#_129137: db $30, $8F, $23, $DC, $12, $2D, $C0, $3F
#_12913F: db $34, $CB, $18, $E5, $0D, $F2, $02, $FD
#_129147: db $7F, $3F, $DF, $CF, $F7, $FB, $FD, $FE
#_12914F: db $80, $7E, $40, $BE, $20, $DE, $10, $EE
#_129157: db $08, $F6, $04, $FA, $02, $FC, $00, $00
#_12915F: db $27 ; Byte Fill
#_129160: db $FF
#_129161: db $17 ; Direct Copy
#_129162: db $E5, $26, $D5, $16, $D1, $16, $DB, $1C
#_12916A: db $CF, $08, $EB, $2C, $E1, $26, $D1, $16
#_129172: db $D8, $E8, $E8, $E0, $F0, $D0, $D8, $E8
#_12917A: db $97 ; Repeat Fill
#_12917B: db $00, $03 ; Repeat Fill bytes
#_12917D: db $22 ; Byte Fill
#_12917E: db $00
#_12917F: db $44 ; Word Fill
#_129180: db $FF, $00 ; Word Fill
#_129182: db $83 ; Repeat Fill
#_129183: db $58, $01 ; Repeat Fill bytes
#_129185: db $00 ; Direct Copy
#_129186: db $C0
#_129187: db $83 ; Repeat Fill
#_129188: db $5D, $01 ; Repeat Fill bytes
#_12918A: db $26 ; Byte Fill
#_12918B: db $00
#_12918C: db $0A ; Direct Copy
#_12918D: db $C0, $80, $00, $BF, $80, $3F, $C0, $7F
#_129195: db $FF, $00, $FF
#_129198: db $44 ; Word Fill
#_129199: db $FF, $00 ; Word Fill
#_12919B: db $02 ; Direct Copy
#_12919C: db $7F, $40, $40
#_12919F: db $24 ; Byte Fill
#_1291A0: db $00
#_1291A1: db $4B ; Word Fill
#_1291A2: db $0C, $77 ; Word Fill
#_1291A4: db $03 ; Direct Copy
#_1291A5: db $9C, $17, $FC, $87
#_1291A9: db $25 ; Byte Fill
#_1291AA: db $80
#_1291AB: db $01 ; Direct Copy
#_1291AC: db $E0, $00
#_1291AE: db $4B ; Word Fill
#_1291AF: db $0C, $77 ; Word Fill
#_1291B1: db $03 ; Direct Copy
#_1291B2: db $0A, $73, $0B, $74
#_1291B6: db $25 ; Byte Fill
#_1291B7: db $80
#_1291B8: db $12 ; Direct Copy
#_1291B9: db $84, $80, $00, $00, $40, $3F, $20, $5F
#_1291C1: db $10, $6F, $0F, $70, $0F, $77, $0E, $75
#_1291C9: db $0D, $76, $FF
#_1291CC: db $26 ; Byte Fill
#_1291CD: db $80
#_1291CE: db $10 ; Direct Copy
#_1291CF: db $8C, $77, $4C, $F7, $2C, $F7, $1C, $F7
#_1291D7: db $FC, $0F, $F8, $FB, $02, $FF, $01, $FF
#_1291DF: db $80
#_1291E0: db $23 ; Byte Fill
#_1291E1: db $00
#_1291E2: db $14 ; Direct Copy
#_1291E3: db $04, $00, $00, $E4, $27, $D4, $17, $D8
#_1291EB: db $1F, $D2, $1D, $D6, $19, $F6, $39, $EA
#_1291F3: db $2D, $D0, $17, $D8, $E9
#_1291F8: db $22 ; Byte Fill
#_1291F9: db $E1
#_1291FA: db $13 ; Direct Copy
#_1291FB: db $C1, $D1, $E9, $3C, $00, $18, $E7, $0C
#_129203: db $F3, $06, $F9, $FF, $00, $FF, $C7, $38
#_12920B: db $CF, $30, $DF, $E7
#_12920F: db $26 ; Byte Fill
#_129210: db $00
#_129211: db $43 ; Word Fill
#_129212: db $0C, $77 ; Word Fill
#_129214: db $0B ; Direct Copy
#_129215: db $8F, $70, $CF, $31, $EE, $13, $BC, $47
#_12921D: db $1C, $67, $0C, $77
#_129221: db $22 ; Byte Fill
#_129222: db $80
#_129223: db $01 ; Direct Copy
#_129224: db $00, $00
#_129226: db $22 ; Byte Fill
#_129227: db $80
#_129228: db $16 ; Direct Copy
#_129229: db $F9, $3E, $F3, $7C, $E6, $F9, $CE, $F3
#_129231: db $9E, $E7, $3E, $CF, $7E, $9F, $C0, $3F
#_129239: db $3E, $7C, $F8, $F0, $E0, $C0, $80
#_129240: db $44 ; Word Fill
#_129241: db $00, $FF ; Word Fill
#_129243: db $27 ; Byte Fill
#_129244: db $FF
#_129245: db $02 ; Direct Copy
#_129246: db $00, $FF, $FF
#_129249: db $22 ; Byte Fill
#_12924A: db $00
#_12924B: db $24 ; Byte Fill
#_12924C: db $FF
#_12924D: db $00 ; Direct Copy
#_12924E: db $00
#_12924F: db $4E ; Word Fill
#_129250: db $FD, $3E ; Word Fill
#_129252: db $28 ; Byte Fill
#_129253: db $3E
#_129254: db $44 ; Word Fill
#_129255: db $FF, $00 ; Word Fill
#_129257: db $46 ; Word Fill
#_129258: db $3F, $FF ; Word Fill
#_12925A: db $05 ; Direct Copy
#_12925B: db $FC, $3F, $FD, $3E, $00, $00
#_129261: db $24 ; Byte Fill
#_129262: db $3F
#_129263: db $45 ; Word Fill
#_129264: db $3E, $FD ; Word Fill
#_129266: db $46 ; Word Fill
#_129267: db $FE, $FD ; Word Fill
#_129269: db $83 ; Repeat Fill
#_12926A: db $04, $02 ; Repeat Fill bytes
#_12926C: db $01 ; Direct Copy
#_12926D: db $3E, $3E
#_12926F: db $24 ; Byte Fill
#_129270: db $FE
#_129271: db $E4, $60 ; EXT Byte Fill
#_129273: db $00
#_129274: db $43 ; Word Fill
#_129275: db $FF, $00 ; Word Fill
#_129277: db $0A ; Direct Copy
#_129278: db $86, $86, $7D, $7D, $22, $3E, $CC, $F3
#_129280: db $1E, $E1, $00
#_129283: db $22 ; Byte Fill
#_129284: db $FF
#_129285: db $05 ; Direct Copy
#_129286: db $79, $82, $C1, $00, $00, $7F
#_12928C: db $E4, $47 ; EXT Byte Fill
#_12928E: db $00
#_12928F: db $97 ; Repeat Fill
#_129290: db $30, $00 ; Repeat Fill bytes
#_129292: db $0B ; Direct Copy
#_129293: db $08, $07, $FF, $00, $3F, $40, $27, $58
#_12929B: db $5F, $60, $0F, $F0
#_12929F: db $43 ; Word Fill
#_1292A0: db $FF, $00 ; Word Fill
#_1292A2: db $1F ; Direct Copy
#_1292A3: db $F7, $F7, $87, $9F, $8F, $07, $03, $01
#_1292AB: db $58, $A7, $16, $EF, $2C, $DF, $0C, $FF
#_1292B3: db $2C, $FF, $36, $FF, $08, $FF, $24, $18
#_1292BB: db $F8, $F0, $E1, $C1, $81, $80, $C0, $E7
#_1292C3: db $83 ; Repeat Fill
#_1292C4: db $40, $02 ; Repeat Fill bytes
#_1292C6: db $08 ; Direct Copy
#_1292C7: db $2D, $DE, $C4, $3F, $BA, $7F, $7D, $FE
#_1292CF: db $44
#_1292D0: db $83 ; Repeat Fill
#_1292D1: db $65, $02 ; Repeat Fill bytes
#_1292D3: db $E0, $21 ; EXT Direct Copy
#_1292D5: db $F3, $E1, $C0, $80, $01, $01, $39, $00
#_1292DD: db $1E, $00, $DE, $00, $EE, $08, $FE, $00
#_1292E5: db $FE, $04, $3E, $08, $FE, $18, $FE, $FF
#_1292ED: db $FF, $FD, $F1, $F1, $E1, $C1, $C1, $1C
#_1292F5: db $FF, $0C
#_1292F7: db $44 ; Word Fill
#_1292F8: db $FE, $04 ; Word Fill
#_1292FA: db $03 ; Direct Copy
#_1292FB: db $0C, $DE, $00, $3E
#_1292FF: db $43 ; Word Fill
#_129300: db $00, $FE ; Word Fill
#_129302: db $00 ; Direct Copy
#_129303: db $C0
#_129304: db $23 ; Byte Fill
#_129305: db $E1
#_129306: db $04 ; Direct Copy
#_129307: db $F1, $FD, $FF, $0F, $70
#_12930C: db $49 ; Word Fill
#_12930D: db $0C, $77 ; Word Fill
#_12930F: db $03 ; Direct Copy
#_129310: db $1C, $67, $3C, $47
#_129314: db $27 ; Byte Fill
#_129315: db $80
#_129316: db $05 ; Direct Copy
#_129317: db $7E, $83, $1F, $01, $0D, $76
#_12931D: db $49 ; Word Fill
#_12931E: db $0C, $77 ; Word Fill
#_129320: db $01 ; Direct Copy
#_129321: db $00, $E0
#_129323: db $25 ; Byte Fill
#_129324: db $80
#_129325: db $FF ; End of GFX 13

;===================================================================================================

GFX_14:
#_129326: db $02 ; Direct Copy
#_129327: db $03, $00, $07
#_12932A: db $44 ; Word Fill
#_12932B: db $00, $06 ; Word Fill
#_12932D: db $07 ; Direct Copy
#_12932E: db $7E, $00, $FC, $00, $E1, $00, $CE, $0E
#_129336: db $26 ; Byte Fill
#_129337: db $FF
#_129338: db $E0, $28 ; EXT Direct Copy
#_12933A: db $F1, $88, $0F, $A8, $0F, $02, $07, $0D
#_129342: db $07, $C1, $C3, $96, $F3, $45, $7D, $3A
#_12934A: db $3E, $F0, $F0, $F8, $F8, $3C, $0C, $82
#_129352: db $C1, $99, $00, $FF, $00, $77, $00, $AA
#_12935A: db $88, $85, $8D, $50, $DD, $52, $D2, $10
#_129362: db $DF
#_129363: db $22 ; Byte Fill
#_129364: db $FF
#_129365: db $0C ; Direct Copy
#_129366: db $77, $72, $22, $2D, $20, $CC, $00, $DE
#_12936E: db $00, $73, $00, $AD, $8C
#_129373: db $43 ; Word Fill
#_129374: db $52, $DE ; Word Fill
#_129376: db $03 ; Direct Copy
#_129377: db $12, $12, $01, $DF
#_12937B: db $22 ; Byte Fill
#_12937C: db $FF
#_12937D: db $E0, $24 ; EXT Direct Copy
#_12937F: db $73, $21, $21, $ED, $20, $D8, $1F, $66
#_129387: db $07, $70, $00, $E7, $07, $D0, $1D, $68
#_12938F: db $0D, $72, $03, $E8, $0D, $E0, $F8, $FF
#_129397: db $F8, $E2, $F2, $FC, $F2, $D0, $1D, $EC
#_12939F: db $0D, $30, $00, $6E, $0F
#_1293A4: db $43 ; Word Fill
#_1293A5: db $D0, $1D ; Word Fill
#_1293A7: db $1F ; Direct Copy
#_1293A8: db $6E, $0F, $31, $01, $E2, $F2, $FF, $F0
#_1293B0: db $E2, $E2, $F0, $FE, $FF, $00, $C8, $00
#_1293B8: db $75, $75, $F6, $01, $FF, $00, $F3, $4E
#_1293C0: db $B9, $67, $FF, $F0, $FF, $FF, $8A, $08
#_1293C8: db $23 ; Byte Fill
#_1293C9: db $00
#_1293CA: db $83 ; Repeat Fill
#_1293CB: db $90, $00 ; Repeat Fill bytes
#_1293CD: db $0B ; Direct Copy
#_1293CE: db $50, $75, $A1, $D6, $77, $80, $74, $AB
#_1293D6: db $9E, $71, $DF, $20
#_1293DA: db $83 ; Repeat Fill
#_1293DB: db $A0, $00 ; Repeat Fill bytes
#_1293DD: db $00 ; Direct Copy
#_1293DE: db $08
#_1293DF: db $22 ; Byte Fill
#_1293E0: db $00
#_1293E1: db $8F ; Repeat Fill
#_1293E2: db $30, $00 ; Repeat Fill bytes
#_1293E4: db $22 ; Byte Fill
#_1293E5: db $FF
#_1293E6: db $8C ; Repeat Fill
#_1293E7: db $43, $00 ; Repeat Fill bytes
#_1293E9: db $43 ; Word Fill
#_1293EA: db $52, $DE ; Word Fill
#_1293EC: db $83 ; Repeat Fill
#_1293ED: db $54, $00 ; Repeat Fill bytes
#_1293EF: db $22 ; Byte Fill
#_1293F0: db $FF
#_1293F1: db $F0, $24 ; EXT Repeat Fill
#_1293F3: db $5B, $00 ; Repeat Fill bytes
#_1293F5: db $43 ; Word Fill
#_1293F6: db $D0, $1D ; Word Fill
#_1293F8: db $8B ; Repeat Fill
#_1293F9: db $84, $00 ; Repeat Fill bytes
#_1293FB: db $E0, $59 ; EXT Direct Copy
#_1293FD: db $D1, $5E, $00, $D3, $28, $F1, $5E, $FC
#_129405: db $7E, $FE, $4E, $CE, $7F, $FF, $01, $FE
#_12940D: db $20, $2C, $0E, $03, $01, $31, $00, $00
#_129415: db $E6, $1E, $C8, $30, $4F, $AF, $5F, $BF
#_12941D: db $DD, $BD, $D9, $B9, $6F, $9F, $F0, $0F
#_129425: db $01, $0F, $10, $00, $02, $06, $00, $00
#_12942D: db $03, $04, $B3, $FD, $26, $F8, $0E, $F1
#_129435: db $F9, $06, $F3, $83, $30, $CF, $10, $EF
#_12943D: db $F8, $00, $01, $00, $00, $0C, $00, $00
#_129445: db $B8, $A0, $6D, $63, $9E, $F9, $0E, $F9
#_12944D: db $FF, $00, $FB, $CB, $30, $D7, $30, $DF
#_129455: db $47, $90
#_129457: db $22 ; Byte Fill
#_129458: db $00
#_129459: db $12 ; Direct Copy
#_12945A: db $04, $08, $00, $C7, $00, $EF, $00, $7C
#_129462: db $00, $BA, $82, $43, $C3, $55, $C7, $00
#_12946A: db $C7, $10, $C7
#_12946D: db $22 ; Byte Fill
#_12946E: db $FF
#_12946F: db $01 ; Direct Copy
#_129470: db $7D, $3C
#_129472: db $22 ; Byte Fill
#_129473: db $38
#_129474: db $0F ; Direct Copy
#_129475: db $87, $00, $CF, $00, $FE, $00, $70, $00
#_12947D: db $02, $00, $65, $05, $0D, $0D, $A8, $8D
#_129485: db $24 ; Byte Fill
#_129486: db $FF
#_129487: db $14 ; Direct Copy
#_129488: db $FA, $F2, $72, $D0, $1F, $EC, $0F, $70
#_129490: db $00, $35, $00, $70, $00, $E4, $07, $D8
#_129498: db $1F, $CC, $0F, $E0, $F0
#_12949D: db $22 ; Byte Fill
#_12949E: db $FF
#_12949F: db $13 ; Direct Copy
#_1294A0: db $F8, $E0, $F0, $E1, $01, $74, $00, $35
#_1294A8: db $00, $30, $00, $63, $03, $E6, $07, $E8
#_1294B0: db $00, $C6, $07, $FE
#_1294B4: db $22 ; Byte Fill
#_1294B5: db $FF
#_1294B6: db $1D ; Direct Copy
#_1294B7: db $FC, $F8, $FF, $F8, $3F, $00, $7F, $00
#_1294BF: db $EB, $18, $D5, $2C, $EA, $36, $D5, $1B
#_1294C7: db $CA, $0D, $E5, $06, $FF, $FF, $E7, $C3
#_1294CF: db $C1, $E0, $F0, $F8, $F8, $0F
#_1294D5: db $43 ; Word Fill
#_1294D6: db $E4, $07 ; Word Fill
#_1294D8: db $E0, $2C ; EXT Direct Copy
#_1294DA: db $92, $03, $C8, $C1, $25, $E1, $12, $F0
#_1294E2: db $04, $FC, $F0, $F8, $F8, $FC, $3E, $1E
#_1294EA: db $0F, $03, $28, $EF, $00, $EF, $D0, $F9
#_1294F2: db $EB, $FB, $FF, $FF, $BF, $BF, $9F, $9F
#_1294FA: db $00, $FF, $10, $10, $06, $04, $00, $40
#_129502: db $60, $00, $82, $8F, $F0
#_129507: db $44 ; Word Fill
#_129508: db $DF, $57 ; Word Fill
#_12950A: db $08 ; Direct Copy
#_12950B: db $07, $DF, $AD, $FD, $DF, $FF, $00, $FF
#_129513: db $70
#_129514: db $23 ; Byte Fill
#_129515: db $20
#_129516: db $02 ; Direct Copy
#_129517: db $02, $00, $00
#_12951A: db $43 ; Word Fill
#_12951B: db $3E, $FF ; Word Fill
#_12951D: db $0B ; Direct Copy
#_12951E: db $9E, $FF, $2E, $3F, $9E, $FF, $0E, $CF
#_129526: db $1E, $DF, $1E, $FF
#_12952A: db $22 ; Byte Fill
#_12952B: db $00
#_12952C: db $E0, $44 ; EXT Direct Copy
#_12952E: db $C0, $00, $30, $20, $00, $8E, $FF, $72
#_129536: db $7F, $44, $07, $72, $7F, $0E, $FF, $3E
#_12953E: db $FF, $B6, $F7, $32, $F3, $00, $80, $F8
#_129546: db $80, $00, $00, $08, $0C, $9E, $BF, $2C
#_12954E: db $FE, $C8, $FD, $F0, $FB, $62, $77, $C3
#_129556: db $EE, $83, $DD, $04, $BB, $40, $01, $02
#_12955E: db $04, $88, $10, $20, $40, $8C, $F3, $9B
#_129566: db $6C, $73, $9C, $67, $B9, $CF, $73, $9F
#_12956E: db $E7, $3E, $CF, $7D, $9F
#_129573: db $22 ; Byte Fill
#_129574: db $00
#_129575: db $14 ; Direct Copy
#_129576: db $01, $03, $07, $0F, $1F, $BD, $42, $EB
#_12957E: db $14, $DF, $20, $AF, $51, $DF, $23, $BF
#_129586: db $47, $FE, $0F, $FD, $1F
#_12958B: db $22 ; Byte Fill
#_12958C: db $00
#_12958D: db $84 ; Repeat Fill
#_12958E: db $9B, $02 ; Repeat Fill bytes
#_129590: db $E0, $28 ; EXT Direct Copy
#_129592: db $FF, $04, $0F, $08, $FE, $00, $FC, $C0
#_12959A: db $F8, $80, $FC, $00, $0C, $00, $FC, $00
#_1295A2: db $F9, $F3, $07, $CF, $9F, $03, $F3, $03
#_1295AA: db $B4, $77, $59, $BF, $A3, $DF, $D3, $EF
#_1295B2: db $49, $77, $84, $FB, $32, $FD, $79, $FE
#_1295BA: db $08
#_1295BB: db $22 ; Byte Fill
#_1295BC: db $00
#_1295BD: db $00 ; Direct Copy
#_1295BE: db $80
#_1295BF: db $22 ; Byte Fill
#_1295C0: db $00
#_1295C1: db $E0, $28 ; EXT Direct Copy
#_1295C3: db $AA, $2B, $76, $37, $5E, $5F, $AE, $AF
#_1295CB: db $76, $77, $BA, $BB, $FC, $FD, $01, $FE
#_1295D3: db $D4, $C8, $A0, $50, $88, $44, $02, $00
#_1295DB: db $DF, $01, $FD, $27, $BF, $23, $BF, $21
#_1295E3: db $CB, $04, $B9, $26, $9D, $06, $AF, $32
#_1295EB: db $E0
#_1295EC: db $22 ; Byte Fill
#_1295ED: db $C0
#_1295EE: db $14 ; Direct Copy
#_1295EF: db $F0, $C0, $E0, $C0, $D3, $1C, $ED, $32
#_1295F7: db $9C, $27, $AF, $32, $C3, $04, $8F, $30
#_1295FF: db $8B, $14, $99, $26, $E0
#_129604: db $22 ; Byte Fill
#_129605: db $C0
#_129606: db $14 ; Direct Copy
#_129607: db $F8, $C0, $E0, $C0, $00, $00, $5C, $FF
#_12960F: db $08, $FF, $00, $FF, $FF, $00, $FF, $7F
#_129617: db $C6, $7F, $80, $7F, $FF
#_12961C: db $26 ; Byte Fill
#_12961D: db $00
#_12961E: db $03 ; Direct Copy
#_12961F: db $80, $80, $7C, $FF
#_129623: db $43 ; Word Fill
#_129624: db $C0, $7F ; Word Fill
#_129626: db $83 ; Repeat Fill
#_129627: db $35, $03 ; Repeat Fill bytes
#_129629: db $00 ; Direct Copy
#_12962A: db $14
#_12962B: db $83 ; Repeat Fill
#_12962C: db $38, $03 ; Repeat Fill bytes
#_12962E: db $26 ; Byte Fill
#_12962F: db $00
#_129630: db $0B ; Direct Copy
#_129631: db $0F, $70, $4E, $77, $0C, $77, $4C, $77
#_129639: db $6C, $77, $6E, $77
#_12963D: db $83 ; Repeat Fill
#_12963E: db $62, $03 ; Repeat Fill bytes
#_129640: db $27 ; Byte Fill
#_129641: db $80
#_129642: db $06 ; Direct Copy
#_129643: db $BC, $C7, $4C, $77, $0C, $77, $0E
#_12964A: db $84 ; Repeat Fill
#_12964B: db $65, $03 ; Repeat Fill bytes
#_12964D: db $83 ; Repeat Fill
#_12964E: db $7A, $03 ; Repeat Fill bytes
#_129650: db $00 ; Direct Copy
#_129651: db $00
#_129652: db $26 ; Byte Fill
#_129653: db $80
#_129654: db $10 ; Direct Copy
#_129655: db $00, $00, $46, $3F, $60, $5F, $50, $6F
#_12965D: db $0F, $70, $0F, $77, $0E, $75, $0D, $76
#_129665: db $FF
#_129666: db $26 ; Byte Fill
#_129667: db $80
#_129668: db $10 ; Direct Copy
#_129669: db $8C, $77, $4E, $F7, $2E, $F7, $1C, $F7
#_129671: db $FC, $0F, $F8, $FB, $42, $FF, $01, $FF
#_129679: db $80
#_12967A: db $23 ; Byte Fill
#_12967B: db $00
#_12967C: db $E0, $25 ; EXT Direct Copy
#_12967E: db $04, $00, $00, $D9, $1E, $E3, $03, $70
#_129686: db $00, $33, $03, $76, $07, $E5, $06, $C9
#_12968E: db $0E, $F3, $03, $E0, $FC, $FF, $FC, $F8
#_129696: db $F8, $F0, $FC, $1E, $12, $1C, $FB, $0E
#_12969E: db $F9, $0F, $F0, $FF, $04, $FF
#_1296A4: db $43 ; Word Fill
#_1296A5: db $FC, $07 ; Word Fill
#_1296A7: db $01 ; Direct Copy
#_1296A8: db $F8, $E1
#_1296AA: db $26 ; Byte Fill
#_1296AB: db $00
#_1296AC: db $45 ; Word Fill
#_1296AD: db $0C, $77 ; Word Fill
#_1296AF: db $09 ; Direct Copy
#_1296B0: db $CC, $F7, $FC, $67, $FF, $0E, $BF, $C0
#_1296B8: db $1F, $60
#_1296BA: db $22 ; Byte Fill
#_1296BB: db $80
#_1296BC: db $23 ; Byte Fill
#_1296BD: db $00
#_1296BE: db $17 ; Direct Copy
#_1296BF: db $80, $FB, $3E, $FA, $7D, $FB, $FD, $F3
#_1296C7: db $FD, $E5, $FB, $0B, $F7, $F7, $8F, $BF
#_1296CF: db $7F, $3E, $7C, $FC, $FC, $F8, $F0, $80
#_1296D7: db $45 ; Word Fill
#_1296D8: db $00, $FF ; Word Fill
#_1296DA: db $0C ; Direct Copy
#_1296DB: db $FF, $F7, $FF, $F0, $FF, $E7, $FF, $0F
#_1296E3: db $F8, $F8, $07, $00, $00
#_1296E8: db $23 ; Byte Fill
#_1296E9: db $FF
#_1296EA: db $01 ; Direct Copy
#_1296EB: db $F8, $00
#_1296ED: db $45 ; Word Fill
#_1296EE: db $FD, $3E ; Word Fill
#_1296F0: db $03 ; Direct Copy
#_1296F1: db $F9, $3E, $E3, $3E
#_1296F5: db $45 ; Word Fill
#_1296F6: db $F6, $3D ; Word Fill
#_1296F8: db $24 ; Byte Fill
#_1296F9: db $3E
#_1296FA: db $22 ; Byte Fill
#_1296FB: db $3C
#_1296FC: db $44 ; Word Fill
#_1296FD: db $FF, $00 ; Word Fill
#_1296FF: db $00 ; Direct Copy
#_129700: db $1F
#_129701: db $45 ; Word Fill
#_129702: db $FF, $3F ; Word Fill
#_129704: db $06 ; Direct Copy
#_129705: db $FC, $3F, $FD, $3E, $00, $00, $1F
#_12970C: db $23 ; Byte Fill
#_12970D: db $3F
#_12970E: db $04 ; Direct Copy
#_12970F: db $3E, $F4, $3B, $FA, $3D
#_129714: db $43 ; Word Fill
#_129715: db $FD, $FE ; Word Fill
#_129717: db $09 ; Direct Copy
#_129718: db $7D, $FE, $B9, $7E, $41, $BE, $3F, $C0
#_129720: db $38, $3C
#_129722: db $22 ; Byte Fill
#_129723: db $FE
#_129724: db $01 ; Direct Copy
#_129725: db $7E, $3E
#_129727: db $E4, $60 ; EXT Byte Fill
#_129729: db $00
#_12972A: db $83 ; Repeat Fill
#_12972B: db $80, $01 ; Repeat Fill bytes
#_12972D: db $0B ; Direct Copy
#_12972E: db $7D, $00, $B9, $80, $82, $82, $0C, $8E
#_129736: db $59, $DF, $D7, $59
#_12973A: db $22 ; Byte Fill
#_12973B: db $FF
#_12973C: db $04 ; Direct Copy
#_12973D: db $7F, $7D, $71, $20, $20
#_129742: db $E4, $47 ; EXT Byte Fill
#_129744: db $00
#_129745: db $0B ; Direct Copy
#_129746: db $EF, $10, $C0, $20, $8F, $C8, $9F, $17
#_12974E: db $BF, $2F, $BF, $20
#_129752: db $83 ; Repeat Fill
#_129753: db $1E, $04 ; Repeat Fill bytes
#_129755: db $0A ; Direct Copy
#_129756: db $EF, $DF, $30, $67, $4F, $40, $7F, $00
#_12975E: db $FF, $00, $04
#_129761: db $43 ; Word Fill
#_129762: db $00, $FC ; Word Fill
#_129764: db $1A ; Direct Copy
#_129765: db $C0, $F0, $C0, $F8, $00, $0C, $00, $FE
#_12976D: db $00, $FB, $FB, $03, $DF, $CF, $07, $F3
#_129775: db $01, $07, $F0, $E7, $F1, $EE, $F2, $CC
#_12977D: db $F0, $DD, $E1
#_129780: db $43 ; Word Fill
#_129781: db $DF, $E3 ; Word Fill
#_129783: db $06 ; Direct Copy
#_129784: db $1C, $E3, $08, $08, $01, $03, $02
#_12978B: db $22 ; Byte Fill
#_12978C: db $00
#_12978D: db $43 ; Word Fill
#_12978E: db $7E, $FF ; Word Fill
#_129790: db $0B ; Direct Copy
#_129791: db $60, $FF, $0F, $F0, $3F, $00, $FF, $00
#_129799: db $E6, $27, $CE, $4F
#_12979D: db $23 ; Byte Fill
#_12979E: db $00
#_12979F: db $0C ; Direct Copy
#_1297A0: db $C0, $00, $18, $30, $80, $7F, $9E, $FF
#_1297A8: db $2A, $3B, $9A, $FB, $3E
#_1297AD: db $43 ; Word Fill
#_1297AE: db $9F, $1E ; Word Fill
#_1297B0: db $1A ; Direct Copy
#_1297B1: db $CF, $83, $62, $00, $00, $C4, $04, $60
#_1297B9: db $60, $30, $1C, $CD, $3E, $FF, $00, $83
#_1297C1: db $7C, $1D, $DE, $7E, $BF, $BA, $BB, $B2
#_1297C9: db $B3, $3E, $3F
#_1297CC: db $22 ; Byte Fill
#_1297CD: db $00
#_1297CE: db $14 ; Direct Copy
#_1297CF: db $20, $40, $44, $4C, $C0, $4C, $77, $0C
#_1297D7: db $73, $6E, $71, $4F, $70, $18, $63, $30
#_1297DF: db $CB, $F4, $0F, $CC, $57
#_1297E4: db $23 ; Byte Fill
#_1297E5: db $80
#_1297E6: db $1B ; Direct Copy
#_1297E7: db $84, $04, $00, $20, $AC, $B7, $4C, $77
#_1297EF: db $CF, $F0, $AF, $33, $FC, $35, $78, $03
#_1297F7: db $3C, $47, $4C, $77, $40, $80, $00, $40
#_1297FF: db $02, $84, $80, $80
#_129803: db $FF ; End of GFX 14

;===================================================================================================

GFX_15:
#_129804: db $0F ; Direct Copy
#_129805: db $00, $00, $03, $00, $07, $00, $0E, $00
#_12980D: db $1D, $01, $3A, $03, $75, $06, $6A, $0C
#_129815: db $23 ; Byte Fill
#_129816: db $FF
#_129817: db $1A ; Direct Copy
#_129818: db $FE, $FC, $F8, $F1, $65, $09, $E5, $09
#_129820: db $D5, $19, $25, $39, $0B, $F3, $F7, $07
#_129828: db $0F, $0F, $FE, $FF, $F2, $F2, $E2, $C2
#_129830: db $04, $08, $F0
#_129833: db $44 ; Word Fill
#_129834: db $00, $FF ; Word Fill
#_129836: db $E0, $2D ; EXT Direct Copy
#_129838: db $FD, $01, $03, $82, $07, $85, $0B, $8D
#_129840: db $16, $99, $67, $F8, $FF, $FF, $FE, $7C
#_129848: db $78, $70, $60, $00, $FF, $00, $1A, $01
#_129850: db $FC, $22, $EE, $A3, $FB, $51, $E5, $50
#_129858: db $F3, $88, $7A, $E6, $FF, $FD, $1B, $1B
#_129860: db $8D, $8E, $47, $01, $E0, $1F
#_129866: db $43 ; Word Fill
#_129867: db $E1, $01 ; Word Fill
#_129869: db $E0, $39 ; EXT Direct Copy
#_12986B: db $E2, $03, $E4, $07, $EB, $0C, $DF, $10
#_129873: db $FD, $2E, $E0, $FE, $FE, $FC, $F8, $F0
#_12987B: db $E0, $C0, $BE, $13, $BF, $0D, $BF, $31
#_129883: db $EB, $0C, $F9, $02, $B4, $01, $DB, $31
#_12988B: db $AE, $58, $CC, $C2, $C0, $F0, $FC, $CE
#_129893: db $B6, $FB, $C3, $00, $E7, $00, $7E, $00
#_12989B: db $FF, $C3, $66, $E7, $BD, $7E, $43, $3C
#_1298A3: db $3F, $00
#_1298A5: db $22 ; Byte Fill
#_1298A6: db $FF
#_1298A7: db $04 ; Direct Copy
#_1298A8: db $3C, $18, $00, $80, $C0
#_1298AD: db $83 ; Repeat Fill
#_1298AE: db $90, $00 ; Repeat Fill bytes
#_1298B0: db $10 ; Direct Copy
#_1298B1: db $7F, $01, $FE, $C3, $64, $E7, $B9, $7E
#_1298B9: db $C3, $3C, $FF, $00, $FF, $FF, $FE, $3C
#_1298C1: db $18
#_1298C2: db $22 ; Byte Fill
#_1298C3: db $00
#_1298C4: db $43 ; Word Fill
#_1298C5: db $FF, $00 ; Word Fill
#_1298C7: db $09 ; Direct Copy
#_1298C8: db $38, $20, $77, $47, $EF, $08, $DF, $10
#_1298D0: db $A0, $20
#_1298D2: db $83 ; Repeat Fill
#_1298D3: db $B6, $00 ; Repeat Fill bytes
#_1298D5: db $04 ; Direct Copy
#_1298D6: db $DF, $B8, $70, $60, $5F
#_1298DB: db $44 ; Word Fill
#_1298DC: db $00, $FF ; Word Fill
#_1298DE: db $0B ; Direct Copy
#_1298DF: db $30, $00, $CF, $C0, $C9, $06, $CC, $07
#_1298E7: db $27, $20, $F0, $10
#_1298EB: db $22 ; Byte Fill
#_1298EC: db $FF
#_1298ED: db $19 ; Direct Copy
#_1298EE: db $30, $37, $37, $D8, $0F, $CF, $00, $DD
#_1298F6: db $10, $FB, $22, $F7, $06, $ED, $08, $ED
#_1298FE: db $04, $E9, $04, $ED, $04, $F0, $EE, $DC
#_129906: db $F8, $F2
#_129908: db $22 ; Byte Fill
#_129909: db $F6
#_12990A: db $09 ; Direct Copy
#_12990B: db $EF, $02, $CF, $0C, $D9, $19, $DC, $04
#_129913: db $DE, $02
#_129915: db $43 ; Word Fill
#_129916: db $D2, $0C ; Word Fill
#_129918: db $06 ; Direct Copy
#_129919: db $DA, $04, $F0, $F0, $E6, $E3, $E1
#_129920: db $22 ; Byte Fill
#_129921: db $ED
#_129922: db $05 ; Direct Copy
#_129923: db $8F, $89, $C7, $C4, $F9, $F8
#_129929: db $23 ; Byte Fill
#_12992A: db $FE
#_12992B: db $0A ; Direct Copy
#_12992C: db $F8, $FF, $77, $FF, $89, $FE, $70, $38
#_129934: db $06, $01, $01
#_129937: db $22 ; Byte Fill
#_129938: db $00
#_129939: db $14 ; Direct Copy
#_12993A: db $0D, $09, $FD, $E1, $F3, $43, $EF, $0F
#_129942: db $DF, $1F, $C7, $3F, $50, $BF, $FF, $0F
#_12994A: db $F2, $02, $0C, $10, $20
#_12994F: db $22 ; Byte Fill
#_129950: db $00
#_129951: db $E0, $29 ; EXT Direct Copy
#_129953: db $73, $FC, $87, $79, $7E, $80, $0E, $F1
#_12995B: db $F9, $06, $F3, $83, $30, $CF, $10, $EF
#_129963: db $00, $00, $01, $00, $00, $0C, $00, $00
#_12996B: db $B8, $A7, $7F, $70, $9C, $FB, $0E, $F9
#_129973: db $FF, $00, $FB, $CB, $30, $D7, $30, $DF
#_12997B: db $40, $80
#_12997D: db $22 ; Byte Fill
#_12997E: db $00
#_12997F: db $02 ; Direct Copy
#_129980: db $04, $08, $00
#_129983: db $8B ; Repeat Fill
#_129984: db $90, $00 ; Repeat Fill bytes
#_129986: db $03 ; Direct Copy
#_129987: db $42, $3C, $3C, $00
#_12998B: db $22 ; Byte Fill
#_12998C: db $FF
#_12998D: db $04 ; Direct Copy
#_12998E: db $3C, $18, $00, $81, $C3
#_129993: db $8D ; Repeat Fill
#_129994: db $80, $01 ; Repeat Fill bytes
#_129996: db $01 ; Direct Copy
#_129997: db $3D, $01
#_129999: db $22 ; Byte Fill
#_12999A: db $FF
#_12999B: db $83 ; Repeat Fill
#_12999C: db $93, $01 ; Repeat Fill bytes
#_12999E: db $06 ; Direct Copy
#_12999F: db $C2, $D4, $18, $FA, $1C, $7D, $0E
#_1299A6: db $43 ; Word Fill
#_1299A7: db $35, $06 ; Word Fill
#_1299A9: db $0D ; Direct Copy
#_1299AA: db $7D, $0E, $FA, $1C, $D4, $18, $E3, $E1
#_1299B2: db $F0, $F8, $F8, $F0, $E1, $E3
#_1299B8: db $85 ; Repeat Fill
#_1299B9: db $B0, $01 ; Repeat Fill bytes
#_1299BB: db $43 ; Word Fill
#_1299BC: db $35, $06 ; Word Fill
#_1299BE: db $8D ; Repeat Fill
#_1299BF: db $BA, $01 ; Repeat Fill bytes
#_1299C1: db $43 ; Word Fill
#_1299C2: db $FF, $00 ; Word Fill
#_1299C4: db $0B ; Direct Copy
#_1299C5: db $FC, $00, $E3, $03, $E0, $0F, $E7, $08
#_1299CD: db $D7, $19, $D7, $1A
#_1299D1: db $22 ; Byte Fill
#_1299D2: db $FF
#_1299D3: db $17 ; Direct Copy
#_1299D4: db $FC, $F0, $F0, $E0, $E0, $D5, $19, $D2
#_1299DC: db $1C, $11, $1E, $F1, $FE, $09, $FE, $85
#_1299E4: db $7E, $43, $3C, $BF, $80, $E2, $E1, $E0
#_1299EC: db $22 ; Byte Fill
#_1299ED: db $00
#_1299EE: db $05 ; Direct Copy
#_1299EF: db $80, $41, $81, $81, $C3, $C3
#_1299F5: db $27 ; Byte Fill
#_1299F6: db $FF
#_1299F7: db $05 ; Direct Copy
#_1299F8: db $78, $FF, $B7, $FF, $7E, $3C
#_1299FE: db $25 ; Byte Fill
#_1299FF: db $00
#_129A00: db $01 ; Direct Copy
#_129A01: db $80, $80
#_129A03: db $83 ; Repeat Fill
#_129A04: db $12, $02 ; Repeat Fill bytes
#_129A06: db $0B ; Direct Copy
#_129A07: db $E7, $FF, $DB, $FF, $A5, $FF, $5A, $E7
#_129A0F: db $A5, $DB, $7F, $3C
#_129A13: db $25 ; Byte Fill
#_129A14: db $00
#_129A15: db $03 ; Direct Copy
#_129A16: db $FD, $FF, $7E, $7F
#_129A1A: db $23 ; Byte Fill
#_129A1B: db $3F
#_129A1C: db $09 ; Direct Copy
#_129A1D: db $3E, $3F, $3D, $3F, $7D, $7F, $FD, $FF
#_129A25: db $00, $80
#_129A27: db $23 ; Byte Fill
#_129A28: db $C0
#_129A29: db $07 ; Direct Copy
#_129A2A: db $80, $00, $FD, $FF, $7A, $7F, $35, $3E
#_129A32: db $43 ; Word Fill
#_129A33: db $2A, $3D ; Word Fill
#_129A35: db $02 ; Direct Copy
#_129A36: db $35, $3E, $7A
#_129A39: db $84 ; Repeat Fill
#_129A3A: db $4D, $02 ; Repeat Fill bytes
#_129A3C: db $23 ; Byte Fill
#_129A3D: db $C0
#_129A3E: db $07 ; Direct Copy
#_129A3F: db $80, $00, $C1, $FF, $DF, $FE, $DE, $F1
#_129A47: db $43 ; Word Fill
#_129A48: db $D8, $F7 ; Word Fill
#_129A4A: db $05 ; Direct Copy
#_129A4B: db $D9, $F6, $1B, $F5, $FE, $F3
#_129A51: db $27 ; Byte Fill
#_129A52: db $00
#_129A53: db $0F ; Direct Copy
#_129A54: db $FC, $07, $19, $EE, $33, $DC, $66, $B9
#_129A5C: db $CC, $73, $98, $E7, $30, $CF, $61, $9F
#_129A64: db $22 ; Byte Fill
#_129A65: db $00
#_129A66: db $14 ; Direct Copy
#_129A67: db $01, $03, $07, $0F, $1E, $BD, $42, $EA
#_129A6F: db $14, $DD, $20, $AB, $51, $D7, $23, $AF
#_129A77: db $47, $DF, $0F, $BE, $1F
#_129A7C: db $22 ; Byte Fill
#_129A7D: db $00
#_129A7E: db $84 ; Repeat Fill
#_129A7F: db $9B, $02 ; Repeat Fill bytes
#_129A81: db $E0, $29 ; EXT Direct Copy
#_129A83: db $FF, $04, $0F, $08, $FE, $00, $FC, $C0
#_129A8B: db $F8, $80, $FC, $00, $0C, $00, $FC, $00
#_129A93: db $F9, $F3, $07, $CF, $9F, $03, $F3, $03
#_129A9B: db $83, $43, $5F, $BF, $2F, $5F, $57, $6F
#_129AA3: db $6B, $77, $75, $7B, $FA, $FD, $FD, $FE
#_129AAB: db $3C, $00
#_129AAD: db $23 ; Byte Fill
#_129AAE: db $80
#_129AAF: db $19 ; Direct Copy
#_129AB0: db $00, $00, $7D, $7F, $BD, $BF, $DD, $DF
#_129AB8: db $ED, $EF, $F6, $F7, $FB, $FB, $1C, $FD
#_129AC0: db $EC, $FE, $80, $40, $20, $10, $08, $04
#_129AC8: db $02, $01
#_129ACA: db $85 ; Repeat Fill
#_129ACB: db $B0, $01 ; Repeat Fill bytes
#_129ACD: db $43 ; Word Fill
#_129ACE: db $35, $06 ; Word Fill
#_129AD0: db $04 ; Direct Copy
#_129AD1: db $7D, $0E, $FB, $1C, $D7
#_129AD6: db $86 ; Repeat Fill
#_129AD7: db $BF, $01 ; Repeat Fill bytes
#_129AD9: db $07 ; Direct Copy
#_129ADA: db $E0, $E0, $D7, $18, $FB, $1C, $7D, $0E
#_129AE2: db $43 ; Word Fill
#_129AE3: db $35, $06 ; Word Fill
#_129AE5: db $07 ; Direct Copy
#_129AE6: db $79, $0E, $F3, $1C, $E7, $38, $E0, $E0
#_129AEE: db $84 ; Repeat Fill
#_129AEF: db $12, $03 ; Repeat Fill bytes
#_129AF1: db $0B ; Direct Copy
#_129AF2: db $C0, $48, $FF, $B7, $78, $49, $B7, $31
#_129AFA: db $CF, $FF, $00, $FF
#_129AFE: db $44 ; Word Fill
#_129AFF: db $FF, $00 ; Word Fill
#_129B01: db $27 ; Byte Fill
#_129B02: db $00
#_129B03: db $03 ; Direct Copy
#_129B04: db $42, $BD, $C1, $7E
#_129B08: db $43 ; Word Fill
#_129B09: db $C0, $7F ; Word Fill
#_129B0B: db $07 ; Direct Copy
#_129B0C: db $FF, $00, $FF, $FE, $03, $FE, $01, $FE
#_129B14: db $27 ; Byte Fill
#_129B15: db $00
#_129B16: db $03 ; Direct Copy
#_129B17: db $4C, $B7, $AC, $D7
#_129B1B: db $43 ; Word Fill
#_129B1C: db $5C, $E7 ; Word Fill
#_129B1E: db $01 ; Direct Copy
#_129B1F: db $AC, $D7
#_129B21: db $43 ; Word Fill
#_129B22: db $4C, $B7 ; Word Fill
#_129B24: db $01 ; Direct Copy
#_129B25: db $7C, $B7
#_129B27: db $27 ; Byte Fill
#_129B28: db $00
#_129B29: db $03 ; Direct Copy
#_129B2A: db $7C, $87, $FC, $77
#_129B2E: db $47 ; Word Fill
#_129B2F: db $0C, $F7 ; Word Fill
#_129B31: db $03 ; Direct Copy
#_129B32: db $8E, $77, $4F, $B0
#_129B36: db $27 ; Byte Fill
#_129B37: db $00
#_129B38: db $0F ; Direct Copy
#_129B39: db $80, $7F, $7F, $80, $60, $9F, $50, $AF
#_129B41: db $4F, $B0, $4F, $B3, $4E, $B5, $4D, $B6
#_129B49: db $27 ; Byte Fill
#_129B4A: db $00
#_129B4B: db $0F ; Direct Copy
#_129B4C: db $CC, $37, $CC, $77, $2C, $F7, $1C, $F7
#_129B54: db $FC, $0F, $F8, $FB, $02, $FF, $01, $FF
#_129B5C: db $24 ; Byte Fill
#_129B5D: db $00
#_129B5E: db $04 ; Direct Copy
#_129B5F: db $04, $00, $00, $D7, $1A
#_129B64: db $83 ; Repeat Fill
#_129B65: db $1A, $03 ; Repeat Fill bytes
#_129B67: db $43 ; Word Fill
#_129B68: db $35, $06 ; Word Fill
#_129B6A: db $85 ; Repeat Fill
#_129B6B: db $BA, $01 ; Repeat Fill bytes
#_129B6D: db $85 ; Repeat Fill
#_129B6E: db $28, $03 ; Repeat Fill bytes
#_129B70: db $11 ; Direct Copy
#_129B71: db $E1, $E3, $78, $F7, $8F, $70, $7C, $83
#_129B79: db $06, $F9, $FF, $00, $FF, $F8, $07, $FC
#_129B81: db $01, $FE
#_129B83: db $27 ; Byte Fill
#_129B84: db $00
#_129B85: db $01 ; Direct Copy
#_129B86: db $4C, $B7
#_129B88: db $45 ; Word Fill
#_129B89: db $AC, $D7 ; Word Fill
#_129B8B: db $07 ; Direct Copy
#_129B8C: db $EC, $17, $7E, $83, $5E, $A1, $4F, $B0
#_129B94: db $27 ; Byte Fill
#_129B95: db $00
#_129B96: db $16 ; Direct Copy
#_129B97: db $C1, $3E, $BF, $40, $77, $B9, $6F, $B3
#_129B9F: db $5F, $A7, $7F, $8F, $7F, $9F, $FF, $3F
#_129BA7: db $3E, $40, $B8, $B0, $A0, $80, $80
#_129BAE: db $43 ; Word Fill
#_129BAF: db $00, $FF ; Word Fill
#_129BB1: db $0C ; Direct Copy
#_129BB2: db $FF, $7E, $FF, $BD, $7E, $DB, $BD, $E7
#_129BBA: db $DB, $1C, $E7, $FF, $00
#_129BBF: db $83 ; Repeat Fill
#_129BC0: db $21, $04 ; Repeat Fill bytes
#_129BC2: db $09 ; Direct Copy
#_129BC3: db $BD, $DB, $E7, $00, $ED, $76, $F5, $7A
#_129BCB: db $FB, $7C
#_129BCD: db $43 ; Word Fill
#_129BCE: db $FD, $7E ; Word Fill
#_129BD0: db $E0, $27 ; EXT Direct Copy
#_129BD2: db $FB, $7C, $F5, $7A, $ED, $76, $76, $7A
#_129BDA: db $7C, $7E, $7E, $7C, $7A, $76, $FF, $00
#_129BE2: db $FF, $7F, $FE, $7F, $FD, $7E, $FB, $7D
#_129BEA: db $F7, $7B, $EC, $77, $DD, $6E, $00, $7F
#_129BF2: db $7F, $7E, $7D, $7B, $77, $6E, $ED, $76
#_129BFA: db $43 ; Word Fill
#_129BFB: db $ED, $F6 ; Word Fill
#_129BFD: db $0A ; Direct Copy
#_129BFE: db $0D, $F6, $FD, $06, $FD, $FE, $01, $FE
#_129C06: db $FF, $00, $76
#_129C09: db $22 ; Byte Fill
#_129C0A: db $F6
#_129C0B: db $18 ; Direct Copy
#_129C0C: db $06, $FE, $FE, $00, $FF, $00, $18, $E0
#_129C14: db $31, $C1, $62, $83, $C5, $07, $8B, $0D
#_129C1C: db $97, $18, $F7, $78, $03, $07, $0E, $1C
#_129C24: db $38
#_129C25: db $84 ; Repeat Fill
#_129C26: db $45, $00 ; Repeat Fill bytes
#_129C28: db $0D ; Direct Copy
#_129C29: db $12, $01, $25, $E2, $E6, $A3, $F7, $51
#_129C31: db $B3, $10, $B9, $88, $DC, $64
#_129C37: db $83 ; Repeat Fill
#_129C38: db $58, $00 ; Repeat Fill bytes
#_129C3A: db $15 ; Direct Copy
#_129C3B: db $89, $CC, $46, $03, $8F, $70, $99, $61
#_129C43: db $B1, $41, $E3, $03, $C4, $07, $8B, $0C
#_129C4B: db $97, $18, $AF, $3C, $00, $06
#_129C51: db $83 ; Repeat Fill
#_129C52: db $92, $04 ; Repeat Fill bytes
#_129C54: db $19 ; Direct Copy
#_129C55: db $E0, $C0, $9F, $32, $99, $29, $BE, $31
#_129C5D: db $CF, $0C, $83, $02, $B9, $01, $DC, $30
#_129C65: db $AE, $58, $CC, $C6, $C0, $F0, $FC, $C6
#_129C6D: db $B3, $F9
#_129C6F: db $8B ; Repeat Fill
#_129C70: db $90, $00 ; Repeat Fill bytes
#_129C72: db $03 ; Direct Copy
#_129C73: db $C2, $BC, $FC, $00
#_129C77: db $22 ; Byte Fill
#_129C78: db $FF
#_129C79: db $10 ; Direct Copy
#_129C7A: db $3C, $18, $00, $01, $03, $FF, $00, $20
#_129C82: db $C0, $4F, $88, $9F, $13, $BF, $27, $BF
#_129C8A: db $20
#_129C8B: db $83 ; Repeat Fill
#_129C8C: db $1E, $04 ; Repeat Fill bytes
#_129C8E: db $0A ; Direct Copy
#_129C8F: db $0F, $1F, $30, $63, $47, $40, $7F, $00
#_129C97: db $FF, $00, $04
#_129C9A: db $43 ; Word Fill
#_129C9B: db $00, $FC ; Word Fill
#_129C9D: db $10 ; Direct Copy
#_129C9E: db $C0, $F0, $C0, $F8, $00, $0C, $00, $FE
#_129CA6: db $00, $FB, $FB, $03, $DF, $CF, $07, $F3
#_129CAE: db $01
#_129CAF: db $97 ; Repeat Fill
#_129CB0: db $B8, $02 ; Repeat Fill bytes
#_129CB2: db $09 ; Direct Copy
#_129CB3: db $EF, $10, $C0, $20, $8F, $C8, $9F, $17
#_129CBB: db $BF, $2F
#_129CBD: db $85 ; Repeat Fill
#_129CBE: db $02, $05 ; Repeat Fill bytes
#_129CC0: db $04 ; Direct Copy
#_129CC1: db $EF, $DF, $30, $67, $4F
#_129CC6: db $85 ; Repeat Fill
#_129CC7: db $0D, $05 ; Repeat Fill bytes
#_129CC9: db $43 ; Word Fill
#_129CCA: db $00, $FC ; Word Fill
#_129CCC: db $90 ; Repeat Fill
#_129CCD: db $17, $05 ; Repeat Fill bytes
#_129CCF: db $11 ; Direct Copy
#_129CD0: db $81, $80, $FF, $FE, $FD, $FE, $FA, $FC
#_129CD8: db $F5, $F9, $FB, $F3, $78, $F7, $8F, $F7
#_129CE0: db $7E, $00
#_129CE2: db $62 ; Increasing Fill
#_129CE3: db $00 ; Increasing Fill Start
#_129CE4: db $00 ; Direct Copy
#_129CE5: db $04
#_129CE6: db $83 ; Repeat Fill
#_129CE7: db $3E, $02 ; Repeat Fill bytes
#_129CE9: db $45 ; Word Fill
#_129CEA: db $7E, $7F ; Word Fill
#_129CEC: db $08 ; Direct Copy
#_129CED: db $77, $78, $69, $73, $55, $67, $ED, $0F
#_129CF5: db $00
#_129CF6: db $23 ; Byte Fill
#_129CF7: db $80
#_129CF8: db $02 ; Direct Copy
#_129CF9: db $84, $88, $10
#_129CFC: db $83 ; Repeat Fill
#_129CFD: db $40, $02 ; Repeat Fill bytes
#_129CFF: db $43 ; Word Fill
#_129D00: db $3E, $3F ; Word Fill
#_129D02: db $07 ; Direct Copy
#_129D03: db $BD, $BF, $DA, $5F, $DA, $1F, $E3, $86
#_129D0B: db $83 ; Repeat Fill
#_129D0C: db $50, $02 ; Repeat Fill bytes
#_129D0E: db $1A ; Direct Copy
#_129D0F: db $40, $20, $20, $18, $7D, $42, $7F, $60
#_129D17: db $71, $46, $6B, $0E, $D9, $9F, $DD, $1F
#_129D1F: db $3D, $3F, $FD, $FF, $80, $80, $88, $90
#_129D27: db $20, $20, $C0
#_129D2A: db $83 ; Repeat Fill
#_129D2B: db $5F, $03 ; Repeat Fill bytes
#_129D2D: db $0C ; Direct Copy
#_129D2E: db $D3, $AE, $D1, $AF, $D0, $38, $C3, $70
#_129D36: db $8B, $F4, $0F, $CC, $57
#_129D3B: db $23 ; Byte Fill
#_129D3C: db $00
#_129D3D: db $13 ; Direct Copy
#_129D3E: db $04, $04, $00, $20, $AC, $B7, $4C, $77
#_129D46: db $CF, $F0, $EF, $73, $FC, $35, $78, $83
#_129D4E: db $5C, $A7, $4C, $B7
#_129D52: db $83 ; Repeat Fill
#_129D53: db $78, $01 ; Repeat Fill bytes
#_129D55: db $03 ; Direct Copy
#_129D56: db $02, $04, $00, $00
#_129D5A: db $FF ; End of GFX 15

;===================================================================================================

GFX_16:
#_129D5B: db $43 ; Word Fill
#_129D5C: db $FF, $00 ; Word Fill
#_129D5E: db $00 ; Direct Copy
#_129D5F: db $00
#_129D60: db $22 ; Byte Fill
#_129D61: db $FF
#_129D62: db $06 ; Direct Copy
#_129D63: db $08, $08, $00, $00, $F7, $00, $FF
#_129D6A: db $24 ; Byte Fill
#_129D6B: db $00
#_129D6C: db $00 ; Direct Copy
#_129D6D: db $F7
#_129D6E: db $23 ; Byte Fill
#_129D6F: db $FF
#_129D70: db $0E ; Direct Copy
#_129D71: db $00, $FF, $00, $E0, $1F, $D7, $2F, $C4
#_129D79: db $3C, $DC, $3C, $D1, $30, $D2, $30
#_129D80: db $23 ; Byte Fill
#_129D81: db $00
#_129D82: db $03 ; Direct Copy
#_129D83: db $03, $03, $0F, $0F
#_129D87: db $43 ; Word Fill
#_129D88: db $CB, $0C ; Word Fill
#_129D8A: db $03 ; Direct Copy
#_129D8B: db $C8, $0F, $CF, $0F
#_129D8F: db $43 ; Word Fill
#_129D90: db $C0, $00 ; Word Fill
#_129D92: db $03 ; Direct Copy
#_129D93: db $BF, $00, $7F, $00
#_129D97: db $23 ; Byte Fill
#_129D98: db $F0
#_129D99: db $24 ; Byte Fill
#_129D9A: db $FF
#_129D9B: db $0E ; Direct Copy
#_129D9C: db $00, $FF, $00, $07, $F8, $EB, $F4, $23
#_129DA4: db $3C, $3B, $3C, $8B, $0C, $4B, $0C
#_129DAB: db $23 ; Byte Fill
#_129DAC: db $00
#_129DAD: db $03 ; Direct Copy
#_129DAE: db $C0, $C0, $F0, $F0
#_129DB2: db $43 ; Word Fill
#_129DB3: db $D3, $30 ; Word Fill
#_129DB5: db $03 ; Direct Copy
#_129DB6: db $13, $F0, $F3, $F0
#_129DBA: db $43 ; Word Fill
#_129DBB: db $03, $00 ; Word Fill
#_129DBD: db $03 ; Direct Copy
#_129DBE: db $FD, $00, $FE, $00
#_129DC2: db $23 ; Byte Fill
#_129DC3: db $0F
#_129DC4: db $23 ; Byte Fill
#_129DC5: db $FF
#_129DC6: db $0E ; Direct Copy
#_129DC7: db $E2, $1F, $8D, $7F, $7B, $FF, $D4, $DC
#_129DCF: db $08, $08, $0B, $08, $E7, $00, $F7
#_129DD6: db $23 ; Byte Fill
#_129DD7: db $00
#_129DD8: db $1F ; Direct Copy
#_129DD9: db $23, $F7, $F7, $FF, $FF, $D3, $30, $B3
#_129DE1: db $70, $A3, $60, $31, $F0, $6C, $FC, $53
#_129DE9: db $F0, $A7, $E0, $67, $E0, $0F, $0F, $1F
#_129DF1: db $0F, $03, $0F, $1F, $1F, $DC, $3C, $94
#_129DF9: db $44 ; Word Fill
#_129DFA: db $7C, $8C ; Word Fill
#_129DFC: db $02 ; Direct Copy
#_129DFD: db $9C, $7C, $8C
#_129E00: db $44 ; Word Fill
#_129E01: db $7C, $9C ; Word Fill
#_129E03: db $27 ; Byte Fill
#_129E04: db $03
#_129E05: db $43 ; Word Fill
#_129E06: db $9D, $00 ; Word Fill
#_129E08: db $0B ; Direct Copy
#_129E09: db $FD, $00, $E2, $00, $DD, $01, $EA, $00
#_129E11: db $F5, $00, $FE, $00
#_129E15: db $23 ; Byte Fill
#_129E16: db $FF
#_129E17: db $00 ; Direct Copy
#_129E18: db $FE
#_129E19: db $25 ; Byte Fill
#_129E1A: db $FF
#_129E1B: db $10 ; Direct Copy
#_129E1C: db $FC, $FE, $F1, $F8, $C7, $E3, $1F, $8F
#_129E24: db $7F, $3F, $FF, $7C, $FC, $FF, $FC, $F0
#_129E2C: db $C0
#_129E2D: db $22 ; Byte Fill
#_129E2E: db $00
#_129E2F: db $09 ; Direct Copy
#_129E30: db $03, $FF, $00, $80, $7F, $00, $FF, $CB
#_129E38: db $FF, $BF
#_129E3A: db $22 ; Byte Fill
#_129E3B: db $FF
#_129E3C: db $29 ; Byte Fill
#_129E3D: db $00
#_129E3E: db $22 ; Byte Fill
#_129E3F: db $FF
#_129E40: db $0E ; Direct Copy
#_129E41: db $00, $00, $FF, $01, $FF, $9E, $FE, $3C
#_129E49: db $FC, $F8, $F8, $09, $01, $0C, $01
#_129E50: db $22 ; Byte Fill
#_129E51: db $00
#_129E52: db $19 ; Direct Copy
#_129E53: db $01, $03, $07, $FE, $FE, $FF, $00, $BF
#_129E5B: db $BF, $10, $1F, $2F, $30, $5F, $60, $BF
#_129E63: db $C0, $7F, $80, $FF, $00, $00, $40, $E0
#_129E6B: db $C0, $80
#_129E6D: db $22 ; Byte Fill
#_129E6E: db $00
#_129E6F: db $07 ; Direct Copy
#_129E70: db $C5, $46, $8B, $0C, $D7, $58, $EF, $70
#_129E78: db $47 ; Word Fill
#_129E79: db $DF, $60 ; Word Fill
#_129E7B: db $02 ; Direct Copy
#_129E7C: db $38, $70, $20
#_129E7F: db $28 ; Byte Fill
#_129E80: db $00
#_129E81: db $00 ; Direct Copy
#_129E82: db $FF
#_129E83: db $24 ; Byte Fill
#_129E84: db $00
#_129E85: db $05 ; Direct Copy
#_129E86: db $81, $81, $C3, $42, $66, $24
#_129E8C: db $22 ; Byte Fill
#_129E8D: db $00
#_129E8E: db $0A ; Direct Copy
#_129E8F: db $FF, $FF, $7E, $3C, $18, $66, $24, $C3
#_129E97: db $42, $81, $81
#_129E9A: db $23 ; Byte Fill
#_129E9B: db $00
#_129E9C: db $00 ; Direct Copy
#_129E9D: db $FF
#_129E9E: db $24 ; Byte Fill
#_129E9F: db $00
#_129EA0: db $04 ; Direct Copy
#_129EA1: db $18, $3C, $7E, $FF, $FF
#_129EA6: db $22 ; Byte Fill
#_129EA7: db $00
#_129EA8: db $47 ; Word Fill
#_129EA9: db $D3, $30 ; Word Fill
#_129EAB: db $01 ; Direct Copy
#_129EAC: db $D9, $38
#_129EAE: db $45 ; Word Fill
#_129EAF: db $D3, $30 ; Word Fill
#_129EB1: db $23 ; Byte Fill
#_129EB2: db $0F
#_129EB3: db $00 ; Direct Copy
#_129EB4: db $07
#_129EB5: db $22 ; Byte Fill
#_129EB6: db $0F
#_129EB7: db $02 ; Direct Copy
#_129EB8: db $7F, $00, $BF
#_129EBB: db $44 ; Word Fill
#_129EBC: db $00, $C0 ; Word Fill
#_129EBE: db $03 ; Direct Copy
#_129EBF: db $CF, $0F, $C8, $0F
#_129EC3: db $43 ; Word Fill
#_129EC4: db $CB, $0C ; Word Fill
#_129EC6: db $23 ; Byte Fill
#_129EC7: db $FF
#_129EC8: db $23 ; Byte Fill
#_129EC9: db $F0
#_129ECA: db $0B ; Direct Copy
#_129ECB: db $D2, $30, $D1, $30, $DC, $3C, $C4, $3C
#_129ED3: db $D7, $2F, $E0, $1F
#_129ED7: db $43 ; Word Fill
#_129ED8: db $FF, $00 ; Word Fill
#_129EDA: db $03 ; Direct Copy
#_129EDB: db $0F, $0F, $03, $03
#_129EDF: db $23 ; Byte Fill
#_129EE0: db $00
#_129EE1: db $02 ; Direct Copy
#_129EE2: db $FE, $00, $FD
#_129EE5: db $44 ; Word Fill
#_129EE6: db $00, $03 ; Word Fill
#_129EE8: db $03 ; Direct Copy
#_129EE9: db $F3, $F0, $13, $F0
#_129EED: db $43 ; Word Fill
#_129EEE: db $D3, $30 ; Word Fill
#_129EF0: db $23 ; Byte Fill
#_129EF1: db $FF
#_129EF2: db $23 ; Byte Fill
#_129EF3: db $0F
#_129EF4: db $0B ; Direct Copy
#_129EF5: db $4B, $0C, $8B, $0C, $3B, $3C, $23, $3C
#_129EFD: db $EB, $F4, $07, $F8
#_129F01: db $43 ; Word Fill
#_129F02: db $FF, $00 ; Word Fill
#_129F04: db $03 ; Direct Copy
#_129F05: db $F0, $F0, $C0, $C0
#_129F09: db $23 ; Byte Fill
#_129F0A: db $00
#_129F0B: db $1F ; Direct Copy
#_129F0C: db $FC, $F3, $F9, $F7, $FB, $E7, $F3, $EF
#_129F14: db $F7, $CF, $E7, $DF, $EE, $9E, $CE, $BE
#_129F1C: db $F0, $F0, $E0, $E0, $C0, $C0, $81, $81
#_129F24: db $CF, $C0, $CE, $C0, $9D, $80, $9E, $80
#_129F2C: db $43 ; Word Fill
#_129F2D: db $3D, $00 ; Word Fill
#_129F2F: db $43 ; Word Fill
#_129F30: db $7D, $00 ; Word Fill
#_129F32: db $03 ; Direct Copy
#_129F33: db $3F, $3F, $7F, $7F
#_129F37: db $23 ; Byte Fill
#_129F38: db $FF
#_129F39: db $02 ; Direct Copy
#_129F3A: db $94, $7C, $84
#_129F3D: db $84 ; Repeat Fill
#_129F3E: db $AD, $00 ; Repeat Fill bytes
#_129F40: db $07 ; Direct Copy
#_129F41: db $9F, $7C, $99, $78, $90, $70, $A2, $63
#_129F49: db $24 ; Byte Fill
#_129F4A: db $03
#_129F4B: db $07 ; Direct Copy
#_129F4C: db $07, $0F, $1C, $FF, $00, $DD, $00, $88
#_129F54: db $22 ; Byte Fill
#_129F55: db $00
#_129F56: db $02 ; Direct Copy
#_129F57: db $FF, $00, $FF
#_129F5A: db $22 ; Byte Fill
#_129F5B: db $00
#_129F5C: db $01 ; Direct Copy
#_129F5D: db $3F, $C0
#_129F5F: db $26 ; Byte Fill
#_129F60: db $FF
#_129F61: db $07 ; Direct Copy
#_129F62: db $00, $F0, $F0, $C3, $C0, $0F, $00, $3F
#_129F6A: db $44 ; Word Fill
#_129F6B: db $00, $FF ; Word Fill
#_129F6D: db $05 ; Direct Copy
#_129F6E: db $D0, $00, $AF, $00, $0F, $3F
#_129F74: db $26 ; Byte Fill
#_129F75: db $FF
#_129F76: db $0E ; Direct Copy
#_129F77: db $00, $3F, $00, $37, $00, $EB, $00, $ED
#_129F7F: db $00, $EB, $00, $15, $00, $EA, $08
#_129F86: db $26 ; Byte Fill
#_129F87: db $FF
#_129F88: db $0C ; Direct Copy
#_129F89: db $F7, $EC, $01, $CC, $01, $8D, $00, $CD
#_129F91: db $00, $ED, $00, $CD, $00
#_129F96: db $83 ; Repeat Fill
#_129F97: db $8C, $02 ; Repeat Fill bytes
#_129F99: db $27 ; Byte Fill
#_129F9A: db $FE
#_129F9B: db $4E ; Word Fill
#_129F9C: db $FF, $00 ; Word Fill
#_129F9E: db $28 ; Byte Fill
#_129F9F: db $00
#_129FA0: db $47 ; Word Fill
#_129FA1: db $D3, $30 ; Word Fill
#_129FA3: db $01 ; Direct Copy
#_129FA4: db $D9, $38
#_129FA6: db $45 ; Word Fill
#_129FA7: db $D3, $30 ; Word Fill
#_129FA9: db $23 ; Byte Fill
#_129FAA: db $0F
#_129FAB: db $00 ; Direct Copy
#_129FAC: db $07
#_129FAD: db $22 ; Byte Fill
#_129FAE: db $0F
#_129FAF: db $05 ; Direct Copy
#_129FB0: db $26, $04, $23, $02, $21, $01
#_129FB6: db $43 ; Word Fill
#_129FB7: db $20, $00 ; Word Fill
#_129FB9: db $13 ; Direct Copy
#_129FBA: db $21, $01, $23, $02, $26, $04, $18, $1C
#_129FC2: db $1E, $1F, $1F, $1E, $1C, $18, $64, $20
#_129FCA: db $C4, $40, $84, $80
#_129FCE: db $43 ; Word Fill
#_129FCF: db $04, $00 ; Word Fill
#_129FD1: db $0D ; Direct Copy
#_129FD2: db $84, $80, $C4, $40, $64, $20, $18, $38
#_129FDA: db $78, $F8, $F8, $78, $38, $18
#_129FE0: db $24 ; Byte Fill
#_129FE1: db $FF
#_129FE2: db $43 ; Word Fill
#_129FE3: db $FE, $FF ; Word Fill
#_129FE5: db $0E ; Direct Copy
#_129FE6: db $FC, $FE, $FD, $FE, $F9, $FC, $FB, $FF
#_129FEE: db $FF, $FE, $FE, $FC, $FC, $F8, $F8
#_129FF5: db $2A ; Byte Fill
#_129FF6: db $FF
#_129FF7: db $84 ; Repeat Fill
#_129FF8: db $DB, $00 ; Repeat Fill bytes
#_129FFA: db $24 ; Byte Fill
#_129FFB: db $FF
#_129FFC: db $E0, $24 ; EXT Direct Copy
#_129FFE: db $FC, $F0, $C0, $AF, $60, $A7, $60, $D0
#_12A006: db $30, $D8, $38, $EF, $1F, $F0, $0F, $CF
#_12A00E: db $30, $C7, $38, $1F, $1F, $0F, $07, $00
#_12A016: db $00, $30, $38, $FF, $00, $FC, $03, $33
#_12A01E: db $CF, $2C, $DC, $59, $B8
#_12A023: db $45 ; Word Fill
#_12A024: db $D3, $30 ; Word Fill
#_12A026: db $04 ; Direct Copy
#_12A027: db $00, $00, $C0, $C3, $87
#_12A02C: db $22 ; Byte Fill
#_12A02D: db $0F
#_12A02E: db $14 ; Direct Copy
#_12A02F: db $FF, $1F, $FF, $8F, $FF, $E7, $DF, $33
#_12A037: db $E7, $19, $F3, $0C, $0B, $F4, $87, $78
#_12A03F: db $1F, $0F, $07, $03, $01
#_12A044: db $22 ; Byte Fill
#_12A045: db $00
#_12A046: db $03 ; Direct Copy
#_12A047: db $9B, $7E, $DB, $3E
#_12A04B: db $83 ; Repeat Fill
#_12A04C: db $78, $03 ; Repeat Fill bytes
#_12A04E: db $85 ; Repeat Fill
#_12A04F: db $78, $03 ; Repeat Fill bytes
#_12A051: db $01 ; Direct Copy
#_12A052: db $C3, $3E
#_12A054: db $27 ; Byte Fill
#_12A055: db $00
#_12A056: db $0F ; Direct Copy
#_12A057: db $FD, $62, $FC, $23, $EC, $33, $F4, $9B
#_12A05F: db $F2, $CD, $F9, $E6, $FF, $F0, $FF, $F8
#_12A067: db $22 ; Byte Fill
#_12A068: db $00
#_12A069: db $09 ; Direct Copy
#_12A06A: db $80, $C0, $E0, $F0, $F8, $FF, $00, $AA
#_12A072: db $55, $00
#_12A074: db $44 ; Word Fill
#_12A075: db $FF, $7F ; Word Fill
#_12A077: db $00 ; Direct Copy
#_12A078: db $00
#_12A079: db $23 ; Byte Fill
#_12A07A: db $FF
#_12A07B: db $28 ; Byte Fill
#_12A07C: db $00
#_12A07D: db $02 ; Direct Copy
#_12A07E: db $3C, $00, $24
#_12A081: db $48 ; Word Fill
#_12A082: db $00, $A5 ; Word Fill
#_12A084: db $04 ; Direct Copy
#_12A085: db $24, $00, $3C, $00, $00
#_12A08A: db $25 ; Byte Fill
#_12A08B: db $18
#_12A08C: db $10 ; Direct Copy
#_12A08D: db $00, $C3, $04, $81, $3A, $99, $22, $F1
#_12A095: db $06, $E3, $0C, $E7, $08, $FF, $00, $E7
#_12A09D: db $08
#_12A09E: db $27 ; Byte Fill
#_12A09F: db $FF
#_12A0A0: db $37 ; Byte Fill
#_12A0A1: db $00
#_12A0A2: db $06 ; Direct Copy
#_12A0A3: db $BC, $43, $74, $0B, $3A, $05, $07
#_12A0AA: db $28 ; Byte Fill
#_12A0AB: db $00
#_12A0AC: db $03 ; Direct Copy
#_12A0AD: db $FF, $7F, $3F, $07
#_12A0B1: db $24 ; Byte Fill
#_12A0B2: db $00
#_12A0B3: db $0B ; Direct Copy
#_12A0B4: db $FF, $18, $FF, $09, $FE, $02, $FD, $E7
#_12A0BC: db $19, $1E, $01, $01
#_12A0C0: db $22 ; Byte Fill
#_12A0C1: db $00
#_12A0C2: db $22 ; Byte Fill
#_12A0C3: db $FF
#_12A0C4: db $11 ; Direct Copy
#_12A0C5: db $FE, $FF, $1F, $01, $00, $50, $BF, $E0
#_12A0CD: db $5F, $F1, $EE, $7E, $F0, $C2, $FC, $02
#_12A0D5: db $FC, $FC
#_12A0D7: db $22 ; Byte Fill
#_12A0D8: db $00
#_12A0D9: db $0A ; Direct Copy
#_12A0DA: db $FF, $BF, $7F, $7E, $FE, $FE, $FC, $00
#_12A0E2: db $40, $80, $80
#_12A0E5: db $2C ; Byte Fill
#_12A0E6: db $00
#_12A0E7: db $01 ; Direct Copy
#_12A0E8: db $C0, $80
#_12A0EA: db $25 ; Byte Fill
#_12A0EB: db $00
#_12A0EC: db $0F ; Direct Copy
#_12A0ED: db $39, $C6, $7F, $81, $F9, $07, $39, $F7
#_12A0F5: db $E4, $FB, $24, $FB, $06, $F9, $F9, $00
#_12A0FD: db $22 ; Byte Fill
#_12A0FE: db $FF
#_12A0FF: db $00 ; Direct Copy
#_12A100: db $3F
#_12A101: db $22 ; Byte Fill
#_12A102: db $FF
#_12A103: db $00 ; Direct Copy
#_12A104: db $F9
#_12A105: db $E5, $7F ; EXT Byte Fill
#_12A107: db $00
#_12A108: db $FF ; End of GFX 16

;===================================================================================================

GFX_17:
#_12A109: db $0F ; Direct Copy
#_12A10A: db $C3, $00, $E7, $00, $EC, $00, $FB, $83
#_12A112: db $F7, $04, $EC, $0A, $98, $14, $F1, $68
#_12A11A: db $22 ; Byte Fill
#_12A11B: db $FF
#_12A11C: db $14 ; Direct Copy
#_12A11D: db $7C, $78, $71, $63, $07, $E1, $00, $F3
#_12A125: db $00, $1E, $00, $ED, $E1, $F3, $12, $3F
#_12A12D: db $2D, $DE, $12, $8A, $0E
#_12A132: db $22 ; Byte Fill
#_12A133: db $FF
#_12A134: db $04 ; Direct Copy
#_12A135: db $1E, $0C, $C0, $E1, $F1
#_12A13A: db $43 ; Word Fill
#_12A13B: db $FF, $00 ; Word Fill
#_12A13D: db $0B ; Direct Copy
#_12A13E: db $01, $00, $FE, $02, $87, $85, $7F, $02
#_12A146: db $C1, $01, $80, $3F
#_12A14A: db $22 ; Byte Fill
#_12A14B: db $FF
#_12A14C: db $14 ; Direct Copy
#_12A14D: db $01, $78, $FC, $FE, $C0, $00, $00, $80
#_12A155: db $00, $C0, $00, $FF, $00, $7F, $00, $83
#_12A15D: db $83, $FD, $7C, $EA, $18
#_12A162: db $24 ; Byte Fill
#_12A163: db $FF
#_12A164: db $12 ; Direct Copy
#_12A165: db $7C, $03, $07, $E0, $00, $F0, $00, $F8
#_12A16D: db $00, $3C, $00, $9F, $80, $8F, $80, $87
#_12A175: db $80, $E3, $E0
#_12A178: db $23 ; Byte Fill
#_12A179: db $FF
#_12A17A: db $22 ; Byte Fill
#_12A17B: db $7F
#_12A17C: db $10 ; Direct Copy
#_12A17D: db $1F, $1F, $00, $2F, $00, $77, $00, $F0
#_12A185: db $00, $E4, $04, $C7, $07, $8F, $0F, $1F
#_12A18D: db $10
#_12A18E: db $23 ; Byte Fill
#_12A18F: db $FF
#_12A190: db $03 ; Direct Copy
#_12A191: db $FB, $F8, $F0, $E0
#_12A195: db $44 ; Word Fill
#_12A196: db $FF, $00 ; Word Fill
#_12A198: db $24 ; Byte Fill
#_12A199: db $00
#_12A19A: db $24 ; Byte Fill
#_12A19B: db $FF
#_12A19C: db $00 ; Direct Copy
#_12A19D: db $00
#_12A19E: db $24 ; Byte Fill
#_12A19F: db $FF
#_12A1A0: db $22 ; Byte Fill
#_12A1A1: db $00
#_12A1A2: db $0F ; Direct Copy
#_12A1A3: db $FC, $00, $FE, $00, $E7, $00, $73, $00
#_12A1AB: db $39, $00, $99, $80, $C0, $C0, $FF, $7F
#_12A1B3: db $24 ; Byte Fill
#_12A1B4: db $FF
#_12A1B5: db $01 ; Direct Copy
#_12A1B6: db $7F, $3F
#_12A1B8: db $4D ; Word Fill
#_12A1B9: db $00, $FF ; Word Fill
#_12A1BB: db $22 ; Byte Fill
#_12A1BC: db $00
#_12A1BD: db $28 ; Byte Fill
#_12A1BE: db $FF
#_12A1BF: db $00 ; Direct Copy
#_12A1C0: db $00
#_12A1C1: db $23 ; Byte Fill
#_12A1C2: db $FF
#_12A1C3: db $83 ; Repeat Fill
#_12A1C4: db $93, $00 ; Repeat Fill bytes
#_12A1C6: db $24 ; Byte Fill
#_12A1C7: db $FF
#_12A1C8: db $01 ; Direct Copy
#_12A1C9: db $00, $FF
#_12A1CB: db $22 ; Byte Fill
#_12A1CC: db $00
#_12A1CD: db $00 ; Direct Copy
#_12A1CE: db $FF
#_12A1CF: db $22 ; Byte Fill
#_12A1D0: db $00
#_12A1D1: db $0F ; Direct Copy
#_12A1D2: db $FF, $FF, $80, $FF, $BF, $FC, $BF, $F8
#_12A1DA: db $B7, $F8, $BF, $F0, $BF, $E0, $9F, $E0
#_12A1E2: db $27 ; Byte Fill
#_12A1E3: db $FF
#_12A1E4: db $01 ; Direct Copy
#_12A1E5: db $BD, $FE
#_12A1E7: db $8B ; Repeat Fill
#_12A1E8: db $F4, $00 ; Repeat Fill bytes
#_12A1EA: db $01 ; Direct Copy
#_12A1EB: db $C0, $C0
#_12A1ED: db $27 ; Byte Fill
#_12A1EE: db $FF
#_12A1EF: db $00 ; Direct Copy
#_12A1F0: db $3F
#_12A1F1: db $44 ; Word Fill
#_12A1F2: db $1F, $30 ; Word Fill
#_12A1F4: db $02 ; Direct Copy
#_12A1F5: db $3F, $00, $3F
#_12A1F8: db $44 ; Word Fill
#_12A1F9: db $1F, $30 ; Word Fill
#_12A1FB: db $00 ; Direct Copy
#_12A1FC: db $3F
#_12A1FD: db $28 ; Byte Fill
#_12A1FE: db $00
#_12A1FF: db $05 ; Direct Copy
#_12A200: db $DF, $E0, $BF, $C0, $7F, $80
#_12A206: db $46 ; Word Fill
#_12A207: db $FF, $00 ; Word Fill
#_12A209: db $22 ; Byte Fill
#_12A20A: db $00
#_12A20B: db $03 ; Direct Copy
#_12A20C: db $EF, $DF, $BF, $7F
#_12A210: db $23 ; Byte Fill
#_12A211: db $FF
#_12A212: db $09 ; Direct Copy
#_12A213: db $C5, $44, $D5, $54, $D1, $50, $D9, $58
#_12A21B: db $CD, $4C
#_12A21D: db $85 ; Repeat Fill
#_12A21E: db $50, $01 ; Repeat Fill bytes
#_12A220: db $0B ; Direct Copy
#_12A221: db $3A, $2A, $2E, $26, $32, $3A, $2A, $2E
#_12A229: db $FF, $00, $FF, $7E
#_12A22D: db $8B ; Repeat Fill
#_12A22E: db $54, $01 ; Repeat Fill bytes
#_12A230: db $01 ; Direct Copy
#_12A231: db $00, $00
#_12A233: db $85 ; Repeat Fill
#_12A234: db $62, $01 ; Repeat Fill bytes
#_12A236: db $05 ; Direct Copy
#_12A237: db $F3, $00, $3A, $28, $FC, $EC
#_12A23D: db $43 ; Word Fill
#_12A23E: db $FD, $ED ; Word Fill
#_12A240: db $08 ; Direct Copy
#_12A241: db $ED, $DD, $D5, $BD, $AB, $6F, $0F, $C7
#_12A249: db $03
#_12A24A: db $23 ; Byte Fill
#_12A24B: db $02
#_12A24C: db $E0, $29 ; EXT Direct Copy
#_12A24E: db $10, $3A, $3E, $42, $7E, $89, $FF, $25
#_12A256: db $DF, $22, $DF, $51, $EF, $6F, $F0, $3F
#_12A25E: db $FF, $C1, $81, $38, $7C, $7E, $7F, $7F
#_12A266: db $3F, $03, $7E, $23, $DE, $53, $EE, $6B
#_12A26E: db $F6, $77, $FA, $FB, $3E, $BF, $4E, $8F
#_12A276: db $70, $BE
#_12A278: db $23 ; Byte Fill
#_12A279: db $7E
#_12A27A: db $E0, $2F ; EXT Direct Copy
#_12A27C: db $3E, $0E, $00, $D5, $30, $AB, $60, $57
#_12A284: db $C3, $AF, $87, $5F, $0F, $BF, $1F, $40
#_12A28C: db $3F, $FF, $00, $0E, $1D, $3B, $77, $EF
#_12A294: db $DF, $BF, $60, $BB, $7A, $9B, $3A, $CB
#_12A29C: db $5A, $E1, $6E, $B1, $70, $9F, $7E, $8F
#_12A2A4: db $7E, $81, $7E, $04, $44, $24, $10, $0E
#_12A2AC: db $22 ; Byte Fill
#_12A2AD: db $00
#_12A2AE: db $14 ; Direct Copy
#_12A2AF: db $DD, $41, $CE, $40, $C7, $40, $E0, $60
#_12A2B7: db $F0, $70, $BF, $7F, $9F, $7F, $FF, $00
#_12A2BF: db $3E, $3F, $3F, $1F, $0F
#_12A2C4: db $22 ; Byte Fill
#_12A2C5: db $00
#_12A2C6: db $E0, $2E ; EXT Direct Copy
#_12A2C8: db $28, $D8, $A5, $DD, $13, $6F, $09, $77
#_12A2D0: db $E4, $BB, $F2, $BD, $B9, $DF, $FF, $00
#_12A2D8: db $27, $32, $B8, $BC, $3E, $3F, $1F, $00
#_12A2E0: db $EF, $8F, $D9, $1F, $91, $1F, $00, $1E
#_12A2E8: db $A0, $8E, $5E, $C0, $20, $E0, $FF, $00
#_12A2F0: db $70, $E0, $E0, $E1, $71, $3F, $1F
#_12A2F7: db $46 ; Word Fill
#_12A2F8: db $00, $FF ; Word Fill
#_12A2FA: db $22 ; Byte Fill
#_12A2FB: db $FF
#_12A2FC: db $25 ; Byte Fill
#_12A2FD: db $00
#_12A2FE: db $23 ; Byte Fill
#_12A2FF: db $FF
#_12A300: db $00 ; Direct Copy
#_12A301: db $00
#_12A302: db $22 ; Byte Fill
#_12A303: db $FF
#_12A304: db $23 ; Byte Fill
#_12A305: db $00
#_12A306: db $83 ; Repeat Fill
#_12A307: db $9E, $00 ; Repeat Fill bytes
#_12A309: db $23 ; Byte Fill
#_12A30A: db $00
#_12A30B: db $84 ; Repeat Fill
#_12A30C: db $5B, $02 ; Repeat Fill bytes
#_12A30E: db $00 ; Direct Copy
#_12A30F: db $FF
#_12A310: db $22 ; Byte Fill
#_12A311: db $00
#_12A312: db $00 ; Direct Copy
#_12A313: db $FF
#_12A314: db $22 ; Byte Fill
#_12A315: db $00
#_12A316: db $0F ; Direct Copy
#_12A317: db $FF, $FF, $01, $FF, $FD, $FF, $FC, $FE
#_12A31F: db $DE, $FC, $EA, $FC, $FE, $F8, $FE, $F0
#_12A327: db $27 ; Byte Fill
#_12A328: db $FF
#_12A329: db $01 ; Direct Copy
#_12A32A: db $80, $80
#_12A32C: db $4D ; Word Fill
#_12A32D: db $7F, $00 ; Word Fill
#_12A32F: db $29 ; Byte Fill
#_12A330: db $FF
#_12A331: db $43 ; Word Fill
#_12A332: db $00, $FF ; Word Fill
#_12A334: db $02 ; Direct Copy
#_12A335: db $FF, $00, $FF
#_12A338: db $44 ; Word Fill
#_12A339: db $FF, $00 ; Word Fill
#_12A33B: db $00 ; Direct Copy
#_12A33C: db $FF
#_12A33D: db $E4, $20 ; EXT Byte Fill
#_12A33F: db $00
#_12A340: db $09 ; Direct Copy
#_12A341: db $D4, $54, $D6, $56, $C0, $40, $C6, $46
#_12A349: db $F0, $40
#_12A34B: db $44 ; Word Fill
#_12A34C: db $FF, $7F ; Word Fill
#_12A34E: db $05 ; Direct Copy
#_12A34F: db $00, $2B, $29, $3F, $39, $3F
#_12A355: db $24 ; Byte Fill
#_12A356: db $00
#_12A357: db $07 ; Direct Copy
#_12A358: db $73, $73, $18, $18, $CE, $CE, $00, $00
#_12A360: db $24 ; Byte Fill
#_12A361: db $FF
#_12A362: db $05 ; Direct Copy
#_12A363: db $00, $FF, $8C, $E7, $31, $FF
#_12A369: db $22 ; Byte Fill
#_12A36A: db $00
#_12A36B: db $E0, $38 ; EXT Direct Copy
#_12A36D: db $C3, $43, $C6, $43, $EC, $67, $F4, $77
#_12A375: db $F5, $77, $BD, $7F, $40, $BF, $FF, $00
#_12A37D: db $3C, $3C, $19, $09, $09, $01, $00, $00
#_12A385: db $0F, $F0, $2F, $F0, $1F, $F0, $8F, $78
#_12A38D: db $47, $BC, $BB, $C6, $FF, $FE, $FF, $00
#_12A395: db $00, $E0, $F0, $F8, $FC, $FE, $FE, $00
#_12A39D: db $35, $D0, $6B, $A1, $D7, $43, $A8, $07
#_12A3A5: db $80
#_12A3A6: db $85 ; Repeat Fill
#_12A3A7: db $DE, $00 ; Repeat Fill bytes
#_12A3A9: db $84 ; Repeat Fill
#_12A3AA: db $D7, $01 ; Repeat Fill bytes
#_12A3AC: db $00 ; Direct Copy
#_12A3AD: db $7F
#_12A3AE: db $22 ; Byte Fill
#_12A3AF: db $00
#_12A3B0: db $07 ; Direct Copy
#_12A3B1: db $FF, $F0, $FF, $F8, $FF, $FC, $01, $FE
#_12A3B9: db $84 ; Repeat Fill
#_12A3BA: db $EA, $00 ; Repeat Fill bytes
#_12A3BC: db $02 ; Direct Copy
#_12A3BD: db $FF, $FF, $00
#_12A3C0: db $83 ; Repeat Fill
#_12A3C1: db $2A, $03 ; Repeat Fill bytes
#_12A3C3: db $00 ; Direct Copy
#_12A3C4: db $FF
#_12A3C5: db $22 ; Byte Fill
#_12A3C6: db $00
#_12A3C7: db $E0, $37 ; EXT Direct Copy
#_12A3C9: db $38, $E7, $7E, $CF, $FF, $8F, $EF, $07
#_12A3D1: db $97, $00, $8F, $80, $C3, $E0, $80, $D0
#_12A3D9: db $E7, $CF, $8F, $37, $78, $7F, $1F, $2F
#_12A3E1: db $3F, $E4, $7B, $C8, $E8, $98, $EF, $1F
#_12A3E9: db $EB, $18, $DF, $10, $B8, $20, $77, $47
#_12A3F1: db $E3, $C7, $87, $00, $07, $EF, $DF, $B8
#_12A3F9: db $F8, $F8, $0E, $F0, $FE, $E0, $DE, $E0
#_12A401: db $43 ; Word Fill
#_12A402: db $FE, $C0 ; Word Fill
#_12A404: db $02 ; Direct Copy
#_12A405: db $DE, $E0, $FD
#_12A408: db $28 ; Byte Fill
#_12A409: db $FF
#_12A40A: db $00 ; Direct Copy
#_12A40B: db $00
#_12A40C: db $4C ; Word Fill
#_12A40D: db $00, $7F ; Word Fill
#_12A40F: db $00 ; Direct Copy
#_12A410: db $BF
#_12A411: db $28 ; Byte Fill
#_12A412: db $FF
#_12A413: db $43 ; Word Fill
#_12A414: db $FD, $FF ; Word Fill
#_12A416: db $03 ; Direct Copy
#_12A417: db $ED, $FF, $DD, $FF
#_12A41B: db $43 ; Word Fill
#_12A41C: db $FC, $FE ; Word Fill
#_12A41E: db $03 ; Direct Copy
#_12A41F: db $02, $FC, $F8, $F8
#_12A423: db $27 ; Byte Fill
#_12A424: db $FF
#_12A425: db $02 ; Direct Copy
#_12A426: db $BF, $C0, $FF
#_12A429: db $43 ; Word Fill
#_12A42A: db $80, $7F ; Word Fill
#_12A42C: db $45 ; Word Fill
#_12A42D: db $00, $7F ; Word Fill
#_12A42F: db $22 ; Byte Fill
#_12A430: db $00
#_12A431: db $27 ; Byte Fill
#_12A432: db $FF
#_12A433: db $03 ; Direct Copy
#_12A434: db $EE, $F0, $DE, $E0
#_12A438: db $43 ; Word Fill
#_12A439: db $FE, $C0 ; Word Fill
#_12A43B: db $83 ; Repeat Fill
#_12A43C: db $9C, $03 ; Repeat Fill bytes
#_12A43E: db $00 ; Direct Copy
#_12A43F: db $01
#_12A440: db $2A ; Byte Fill
#_12A441: db $FF
#_12A442: db $49 ; Word Fill
#_12A443: db $7F, $00 ; Word Fill
#_12A445: db $02 ; Direct Copy
#_12A446: db $BF, $FF, $80
#_12A449: db $2A ; Byte Fill
#_12A44A: db $FF
#_12A44B: db $0B ; Direct Copy
#_12A44C: db $D0, $30, $88, $98, $44, $CC, $60, $E7
#_12A454: db $71, $F0, $79, $F8
#_12A458: db $43 ; Word Fill
#_12A459: db $7B, $FA ; Word Fill
#_12A45B: db $E0, $3F ; EXT Direct Copy
#_12A45D: db $0F, $67, $33, $18, $0E, $06, $04, $04
#_12A465: db $33, $EF, $62, $DE, $CA, $BE, $9A, $7E
#_12A46D: db $B3, $77, $E3, $67, $CD, $47, $DA, $43
#_12A475: db $E0, $C1, $81, $01, $08, $18, $38, $3C
#_12A47D: db $60, $3F, $BE, $1F, $5F, $0F, $2F, $07
#_12A485: db $17, $00, $8F, $80, $C7, $E0, $80, $F0
#_12A48D: db $BF, $DF, $EF, $F7, $F8, $7F, $1F, $2F
#_12A495: db $D7, $B0, $6B, $D8, $28, $F8, $8F, $FF
#_12A49D: db $87 ; Repeat Fill
#_12A49E: db $80, $03 ; Repeat Fill bytes
#_12A4A0: db $03 ; Direct Copy
#_12A4A1: db $8F, $C7, $E7, $E0
#_12A4A5: db $83 ; Repeat Fill
#_12A4A6: db $8C, $03 ; Repeat Fill bytes
#_12A4A8: db $E5, $7F ; EXT Byte Fill
#_12A4AA: db $00
#_12A4AB: db $FF ; End of GFX 17

;===================================================================================================

GFX_18:
#_12A4AC: db $19 ; Direct Copy
#_12A4AD: db $FF, $00, $7F, $80, $60, $90, $60, $98
#_12A4B5: db $E0, $0C, $F0, $07, $FC, $00, $8F, $70
#_12A4BD: db $00, $60, $6F, $67, $73, $78, $7F, $0F
#_12A4C5: db $8F, $70
#_12A4C7: db $43 ; Word Fill
#_12A4C8: db $FE, $01 ; Word Fill
#_12A4CA: db $04 ; Direct Copy
#_12A4CB: db $C6, $31, $C3, $08, $C3
#_12A4D0: db $44 ; Word Fill
#_12A4D1: db $04, $C1 ; Word Fill
#_12A4D3: db $04 ; Direct Copy
#_12A4D4: db $00, $7E, $7E, $0E, $37
#_12A4D9: db $22 ; Byte Fill
#_12A4DA: db $3B
#_12A4DB: db $E0, $2F ; EXT Direct Copy
#_12A4DD: db $4F, $48, $9F, $F8, $5F, $B8, $0F, $C8
#_12A4E5: db $0C, $08, $09, $0F, $05, $06, $3E, $3F
#_12A4ED: db $B0, $00, $00, $30, $F3, $F0, $F8, $C0
#_12A4F5: db $FF, $00, $FF, $38, $CF, $67, $7F, $8F
#_12A4FD: db $FC, $FF, $EB, $EC, $88, $EC, $6B, $AF
#_12A505: db $00, $38, $70, $00, $00, $10, $13, $10
#_12A50D: db $4F ; Word Fill
#_12A50E: db $F0, $0F ; Word Fill
#_12A510: db $27 ; Byte Fill
#_12A511: db $70
#_12A512: db $09 ; Direct Copy
#_12A513: db $7C, $83, $E0, $F1, $F0, $F8, $F8, $FC
#_12A51B: db $00, $02
#_12A51D: db $45 ; Word Fill
#_12A51E: db $FC, $FE ; Word Fill
#_12A520: db $04 ; Direct Copy
#_12A521: db $7C, $0E, $07, $03, $FD
#_12A526: db $22 ; Byte Fill
#_12A527: db $01
#_12A528: db $01 ; Direct Copy
#_12A529: db $77, $F7
#_12A52B: db $43 ; Word Fill
#_12A52C: db $F7, $77 ; Word Fill
#_12A52E: db $0A ; Direct Copy
#_12A52F: db $B7, $77, $97, $37, $87, $17, $00, $8F
#_12A537: db $00, $C0, $08
#_12A53A: db $22 ; Byte Fill
#_12A53B: db $88
#_12A53C: db $03 ; Direct Copy
#_12A53D: db $C8, $E8, $70, $3F
#_12A541: db $48 ; Word Fill
#_12A542: db $FF, $00 ; Word Fill
#_12A544: db $02 ; Direct Copy
#_12A545: db $80, $FF, $C0
#_12A548: db $43 ; Word Fill
#_12A549: db $FF, $00 ; Word Fill
#_12A54B: db $23 ; Byte Fill
#_12A54C: db $7F
#_12A54D: db $03 ; Direct Copy
#_12A54E: db $3F, $1F, $1F, $3F
#_12A552: db $4F ; Word Fill
#_12A553: db $FF, $00 ; Word Fill
#_12A555: db $02 ; Direct Copy
#_12A556: db $C0, $F0, $FC
#_12A559: db $22 ; Byte Fill
#_12A55A: db $FE
#_12A55B: db $0D ; Direct Copy
#_12A55C: db $0E, $F2, $FF, $00, $F9, $07, $42, $BE
#_12A564: db $F8, $C7, $58, $F8, $DF, $3F
#_12A56A: db $83 ; Repeat Fill
#_12A56B: db $B0, $00 ; Repeat Fill bytes
#_12A56D: db $04 ; Direct Copy
#_12A56E: db $00, $00, $01, $00, $07
#_12A573: db $22 ; Byte Fill
#_12A574: db $00
#_12A575: db $19 ; Direct Copy
#_12A576: db $FF, $00, $DF, $50, $AF, $69, $DB, $3E
#_12A57E: db $E2, $1B, $D5, $2F, $8B, $77, $BE, $76
#_12A586: db $00, $20, $10, $00, $04, $00, $00, $01
#_12A58E: db $BB, $77
#_12A590: db $45 ; Word Fill
#_12A591: db $BA, $76 ; Word Fill
#_12A593: db $43 ; Word Fill
#_12A594: db $BB, $77 ; Word Fill
#_12A596: db $04 ; Direct Copy
#_12A597: db $BA, $76, $AE, $76, $00
#_12A59C: db $22 ; Byte Fill
#_12A59D: db $01
#_12A59E: db $1A ; Direct Copy
#_12A59F: db $00, $00, $01, $01, $BF, $C0, $DF, $E0
#_12A5A7: db $EF, $F0, $6F, $F0, $60, $F0, $A0, $B0
#_12A5AF: db $40, $7F, $91, $EF, $1F, $0F, $00, $00
#_12A5B7: db $0F, $4F, $80
#_12A5BA: db $47 ; Word Fill
#_12A5BB: db $00, $FF ; Word Fill
#_12A5BD: db $23 ; Byte Fill
#_12A5BE: db $00
#_12A5BF: db $16 ; Direct Copy
#_12A5C0: db $C0, $C0, $FF, $20, $3F, $F8, $E0, $00
#_12A5C8: db $00, $FF, $3F, $00, $C0, $C4, $45, $D4
#_12A5D0: db $55, $D0, $51, $D8, $59, $CC, $4D
#_12A5D7: db $85 ; Repeat Fill
#_12A5D8: db $50, $01 ; Repeat Fill bytes
#_12A5DA: db $0B ; Direct Copy
#_12A5DB: db $3A, $2A, $2E, $26, $32, $3A, $2A, $2E
#_12A5E3: db $FF, $00, $FE, $7F
#_12A5E7: db $8B ; Repeat Fill
#_12A5E8: db $54, $01 ; Repeat Fill bytes
#_12A5EA: db $01 ; Direct Copy
#_12A5EB: db $00, $00
#_12A5ED: db $85 ; Repeat Fill
#_12A5EE: db $62, $01 ; Repeat Fill bytes
#_12A5F0: db $0B ; Direct Copy
#_12A5F1: db $6D, $FE, $ED, $3F, $BD, $4F, $D1, $6F
#_12A5F9: db $EE, $71, $F1, $7E
#_12A5FD: db $43 ; Word Fill
#_12A5FE: db $F7, $77 ; Word Fill
#_12A600: db $00 ; Direct Copy
#_12A601: db $01
#_12A602: db $24 ; Byte Fill
#_12A603: db $00
#_12A604: db $11 ; Direct Copy
#_12A605: db $08, $08, $FF, $00, $DF, $BF, $EF, $DF
#_12A60D: db $37, $CF, $D0, $E8, $EB, $F7, $0B, $F7
#_12A615: db $F7, $7B
#_12A617: db $23 ; Byte Fill
#_12A618: db $00
#_12A619: db $E0, $33 ; EXT Direct Copy
#_12A61B: db $07, $00, $00, $80, $7F, $7F, $C1, $FF
#_12A623: db $80, $E7, $83, $DE, $87, $FE, $BE, $FD
#_12A62B: db $FD, $C3, $FF, $FF, $80, $00, $1C, $3E
#_12A633: db $3E, $3C, $00, $00, $C9, $CE, $8B, $8C
#_12A63B: db $4F, $48, $8F, $E8, $48, $AC, $0B, $CF
#_12A643: db $09, $0E, $8B, $8C, $30, $70, $B0, $10
#_12A64B: db $13, $30, $F0, $70
#_12A64F: db $47 ; Word Fill
#_12A650: db $FF, $00 ; Word Fill
#_12A652: db $48 ; Word Fill
#_12A653: db $00, $FF ; Word Fill
#_12A655: db $22 ; Byte Fill
#_12A656: db $FF
#_12A657: db $23 ; Byte Fill
#_12A658: db $00
#_12A659: db $44 ; Word Fill
#_12A65A: db $FF, $00 ; Word Fill
#_12A65C: db $23 ; Byte Fill
#_12A65D: db $00
#_12A65E: db $44 ; Word Fill
#_12A65F: db $FF, $00 ; Word Fill
#_12A661: db $02 ; Direct Copy
#_12A662: db $FF, $00, $00
#_12A665: db $22 ; Byte Fill
#_12A666: db $FF
#_12A667: db $23 ; Byte Fill
#_12A668: db $00
#_12A669: db $4F ; Word Fill
#_12A66A: db $E1, $0E ; Word Fill
#_12A66C: db $27 ; Byte Fill
#_12A66D: db $70
#_12A66E: db $48 ; Word Fill
#_12A66F: db $FF, $00 ; Word Fill
#_12A671: db $02 ; Direct Copy
#_12A672: db $80, $DF, $E0
#_12A675: db $83 ; Repeat Fill
#_12A676: db $00, $00 ; Repeat Fill bytes
#_12A678: db $23 ; Byte Fill
#_12A679: db $7F
#_12A67A: db $03 ; Direct Copy
#_12A67B: db $1F, $0F, $0F, $3F
#_12A67F: db $4F ; Word Fill
#_12A680: db $FF, $00 ; Word Fill
#_12A682: db $00 ; Direct Copy
#_12A683: db $FC
#_12A684: db $25 ; Byte Fill
#_12A685: db $FE
#_12A686: db $00 ; Direct Copy
#_12A687: db $FC
#_12A688: db $37 ; Byte Fill
#_12A689: db $FF
#_12A68A: db $45 ; Word Fill
#_12A68B: db $BB, $77 ; Word Fill
#_12A68D: db $43 ; Word Fill
#_12A68E: db $BA, $76 ; Word Fill
#_12A690: db $01 ; Direct Copy
#_12A691: db $BE, $76
#_12A693: db $43 ; Word Fill
#_12A694: db $B7, $6F ; Word Fill
#_12A696: db $22 ; Byte Fill
#_12A697: db $00
#_12A698: db $22 ; Byte Fill
#_12A699: db $01
#_12A69A: db $17 ; Direct Copy
#_12A69B: db $00, $00, $B7, $6F, $B3, $6F, $B9, $6B
#_12A6A3: db $94, $6D, $B2, $57, $E2, $27, $FA, $7F
#_12A6AB: db $F1, $0E, $00, $00, $04, $02, $08, $18
#_12A6B3: db $84 ; Repeat Fill
#_12A6B4: db $EE, $00 ; Repeat Fill bytes
#_12A6B6: db $06 ; Direct Copy
#_12A6B7: db $E0, $68, $77, $08, $F7, $00, $00
#_12A6BE: db $22 ; Byte Fill
#_12A6BF: db $FF
#_12A6C0: db $01 ; Direct Copy
#_12A6C1: db $00, $FF
#_12A6C3: db $22 ; Byte Fill
#_12A6C4: db $00
#_12A6C5: db $02 ; Direct Copy
#_12A6C6: db $80, $00, $FF
#_12A6C9: db $22 ; Byte Fill
#_12A6CA: db $00
#_12A6CB: db $E0, $21 ; EXT Direct Copy
#_12A6CD: db $F8, $C0, $CF, $CF, $D0, $50, $D6, $56
#_12A6D5: db $C4, $44, $C5, $45, $D0, $51, $D4, $55
#_12A6DD: db $3F, $30, $2F, $29, $3B, $3A, $2E, $2A
#_12A6E5: db $D4, $54, $D6, $56, $C0, $40, $C6, $46
#_12A6ED: db $F0, $40
#_12A6EF: db $44 ; Word Fill
#_12A6F0: db $FF, $7F ; Word Fill
#_12A6F2: db $05 ; Direct Copy
#_12A6F3: db $00, $2B, $29, $3F, $39, $3F
#_12A6F9: db $24 ; Byte Fill
#_12A6FA: db $00
#_12A6FB: db $07 ; Direct Copy
#_12A6FC: db $73, $73, $18, $18, $CE, $CE, $00, $00
#_12A704: db $24 ; Byte Fill
#_12A705: db $FF
#_12A706: db $05 ; Direct Copy
#_12A707: db $00, $FF, $8C, $E7, $31, $FF
#_12A70D: db $22 ; Byte Fill
#_12A70E: db $00
#_12A70F: db $0E ; Direct Copy
#_12A710: db $DE, $21, $AC, $73, $B6, $79, $BB, $7C
#_12A718: db $9C, $7C, $CF, $3F, $E0, $1F, $FF
#_12A71F: db $24 ; Byte Fill
#_12A720: db $00
#_12A721: db $00 ; Direct Copy
#_12A722: db $03
#_12A723: db $22 ; Byte Fill
#_12A724: db $00
#_12A725: db $01 ; Direct Copy
#_12A726: db $63, $E3
#_12A728: db $43 ; Word Fill
#_12A729: db $00, $FF ; Word Fill
#_12A72B: db $00 ; Direct Copy
#_12A72C: db $FF
#_12A72D: db $22 ; Byte Fill
#_12A72E: db $00
#_12A72F: db $83 ; Repeat Fill
#_12A730: db $AB, $02 ; Repeat Fill bytes
#_12A732: db $02 ; Direct Copy
#_12A733: db $FF, $00, $1C
#_12A736: db $22 ; Byte Fill
#_12A737: db $00
#_12A738: db $00 ; Direct Copy
#_12A739: db $FF
#_12A73A: db $22 ; Byte Fill
#_12A73B: db $00
#_12A73C: db $14 ; Direct Copy
#_12A73D: db $1D, $E1, $32, $CB, $D7, $36, $4D, $CE
#_12A745: db $1B, $1C, $F7, $F8, $0F, $F0, $FF, $00
#_12A74D: db $02, $04, $08, $30, $E0
#_12A752: db $22 ; Byte Fill
#_12A753: db $00
#_12A754: db $10 ; Direct Copy
#_12A755: db $1F, $10, $EC, $FB, $76, $FD, $BA, $7D
#_12A75D: db $EA, $1D, $6E, $19, $FF, $F0, $FF, $00
#_12A765: db $E0
#_12A766: db $23 ; Byte Fill
#_12A767: db $00
#_12A768: db $E0, $21 ; EXT Direct Copy
#_12A76A: db $80, $00, $00, $FF, $FE, $FF, $FC, $FF
#_12A772: db $F8, $FF, $F0, $FF, $E0, $FE, $C1, $FC
#_12A77A: db $83, $F8, $07, $FE, $FD, $FB, $F7, $EF
#_12A782: db $DF, $BF, $7F, $63, $9E, $33, $CE, $1B
#_12A78A: db $E6, $7B
#_12A78C: db $48 ; Word Fill
#_12A78D: db $76, $0B ; Word Fill
#_12A78F: db $02 ; Direct Copy
#_12A790: db $1C, $0C, $04
#_12A793: db $24 ; Byte Fill
#_12A794: db $84
#_12A795: db $0A ; Direct Copy
#_12A796: db $00, $E0, $90, $7F, $D0, $3F, $70, $9F
#_12A79E: db $3F, $C0, $00
#_12A7A1: db $23 ; Byte Fill
#_12A7A2: db $FF
#_12A7A3: db $05 ; Direct Copy
#_12A7A4: db $00, $1F, $00, $00, $80, $C0
#_12A7AA: db $83 ; Repeat Fill
#_12A7AB: db $E6, $01 ; Repeat Fill bytes
#_12A7AD: db $88 ; Repeat Fill
#_12A7AE: db $61, $03 ; Repeat Fill bytes
#_12A7B0: db $05 ; Direct Copy
#_12A7B1: db $FF, $C0, $FE, $81, $FC, $03
#_12A7B7: db $87 ; Repeat Fill
#_12A7B8: db $70, $03 ; Repeat Fill bytes
#_12A7BA: db $0F ; Direct Copy
#_12A7BB: db $F9, $06, $F3, $0D, $E7, $1B, $CF, $37
#_12A7C3: db $9F, $6F, $3F, $DF, $7F, $BF, $FF, $7F
#_12A7CB: db $87 ; Repeat Fill
#_12A7CC: db $70, $03 ; Repeat Fill bytes
#_12A7CE: db $37 ; Byte Fill
#_12A7CF: db $FF
#_12A7D0: db $E4, $2F ; EXT Byte Fill
#_12A7D2: db $00
#_12A7D3: db $13 ; Direct Copy
#_12A7D4: db $FF, $78, $FF, $8F, $FF, $70, $FF, $1F
#_12A7DC: db $FF, $00, $BF, $40, $81, $7E, $FF, $00
#_12A7E4: db $78, $8F, $70, $1F
#_12A7E8: db $23 ; Byte Fill
#_12A7E9: db $00
#_12A7EA: db $4F ; Word Fill
#_12A7EB: db $81, $7E ; Word Fill
#_12A7ED: db $27 ; Byte Fill
#_12A7EE: db $00
#_12A7EF: db $E0, $2F ; EXT Direct Copy
#_12A7F1: db $9F, $18, $B9, $CF, $DE, $73, $E7, $BC
#_12A7F9: db $B3, $DF, $B9, $6F, $DC, $77, $DE, $77
#_12A801: db $68, $CF, $73, $BC, $DF, $6F, $77, $77
#_12A809: db $BE, $B3, $F7, $3C, $7B, $CF, $BD, $F7
#_12A811: db $DE, $7B, $EF, $BD, $F7, $DE, $73, $EE
#_12A819: db $D0, $3C, $CF, $F7, $7B, $BD, $DE, $EE
#_12A821: db $E5, $7F ; EXT Byte Fill
#_12A823: db $00
#_12A824: db $FF ; End of GFX 18

;===================================================================================================

GFX_19:
#_12A825: db $18 ; Direct Copy
#_12A826: db $FF, $01, $FE, $02, $04, $04, $F0, $08
#_12A82E: db $20, $D0, $41, $A0, $82, $40, $E5, $61
#_12A836: db $FE, $FD, $FB, $07, $0F, $1F, $3F, $1E
#_12A83E: db $FF
#_12A83F: db $26 ; Byte Fill
#_12A840: db $80
#_12A841: db $00 ; Direct Copy
#_12A842: db $FF
#_12A843: db $22 ; Byte Fill
#_12A844: db $80
#_12A845: db $03 ; Direct Copy
#_12A846: db $FF, $FF, $00, $FF
#_12A84A: db $25 ; Byte Fill
#_12A84B: db $7F
#_12A84C: db $E0, $21 ; EXT Direct Copy
#_12A84E: db $00, $00, $D3, $0C, $D5, $0B, $D9, $05
#_12A856: db $D0, $08, $C0, $10, $E1, $20, $C2, $40
#_12A85E: db $85, $81, $E0, $E0, $E2, $E7, $EF, $DF
#_12A866: db $BF, $7E, $FF, $00, $60, $FF, $B8, $FF
#_12A86E: db $DC, $FF
#_12A870: db $43 ; Word Fill
#_12A871: db $6B, $7B ; Word Fill
#_12A873: db $03 ; Direct Copy
#_12A874: db $BF, $C0, $7F, $80
#_12A878: db $23 ; Byte Fill
#_12A879: db $00
#_12A87A: db $15 ; Direct Copy
#_12A87B: db $84, $84, $00, $00, $FF, $00, $04, $F8
#_12A883: db $08, $F0, $F0, $00, $20, $C0, $41, $80
#_12A88B: db $C2, $40, $A5, $61, $00, $03
#_12A891: db $83 ; Repeat Fill
#_12A892: db $13, $00 ; Repeat Fill bytes
#_12A894: db $01 ; Direct Copy
#_12A895: db $3F, $1E
#_12A897: db $E4, $2F ; EXT Byte Fill
#_12A899: db $00
#_12A89A: db $07 ; Direct Copy
#_12A89B: db $FF, $00, $98, $70, $B0, $60, $B1, $61
#_12A8A3: db $47 ; Word Fill
#_12A8A4: db $B2, $62 ; Word Fill
#_12A8A6: db $03 ; Direct Copy
#_12A8A7: db $00, $07, $0F, $0E
#_12A8AB: db $23 ; Byte Fill
#_12A8AC: db $0D
#_12A8AD: db $00 ; Direct Copy
#_12A8AE: db $FF
#_12A8AF: db $24 ; Byte Fill
#_12A8B0: db $00
#_12A8B1: db $03 ; Direct Copy
#_12A8B2: db $E0, $E0, $3F, $3F
#_12A8B6: db $26 ; Byte Fill
#_12A8B7: db $00
#_12A8B8: db $03 ; Direct Copy
#_12A8B9: db $FF, $FF, $1F, $C0
#_12A8BD: db $22 ; Byte Fill
#_12A8BE: db $FF
#_12A8BF: db $47 ; Word Fill
#_12A8C0: db $B2, $62 ; Word Fill
#_12A8C2: db $07 ; Direct Copy
#_12A8C3: db $B1, $61, $B8, $68, $BC, $6C, $B7, $6F
#_12A8CB: db $23 ; Byte Fill
#_12A8CC: db $0D
#_12A8CD: db $02 ; Direct Copy
#_12A8CE: db $0E, $07, $03
#_12A8D1: db $22 ; Byte Fill
#_12A8D2: db $00
#_12A8D3: db $07 ; Direct Copy
#_12A8D4: db $40, $40, $00, $00, $1F, $1F, $E0, $E0
#_12A8DC: db $23 ; Byte Fill
#_12A8DD: db $00
#_12A8DE: db $22 ; Byte Fill
#_12A8DF: db $FF
#_12A8E0: db $04 ; Direct Copy
#_12A8E1: db $BF, $FF, $E0, $1F, $FF
#_12A8E6: db $43 ; Word Fill
#_12A8E7: db $FF, $00 ; Word Fill
#_12A8E9: db $44 ; Word Fill
#_12A8EA: db $00, $FF ; Word Fill
#_12A8EC: db $23 ; Byte Fill
#_12A8ED: db $FF
#_12A8EE: db $05 ; Direct Copy
#_12A8EF: db $51, $FF, $5D, $FF, $55, $00
#_12A8F5: db $27 ; Byte Fill
#_12A8F6: db $FF
#_12A8F7: db $02 ; Direct Copy
#_12A8F8: db $10, $FF, $F0
#_12A8FB: db $83 ; Repeat Fill
#_12A8FC: db $20, $01 ; Repeat Fill bytes
#_12A8FE: db $03 ; Direct Copy
#_12A8FF: db $FF, $90, $FF, $D0
#_12A903: db $83 ; Repeat Fill
#_12A904: db $20, $01 ; Repeat Fill bytes
#_12A906: db $27 ; Byte Fill
#_12A907: db $FF
#_12A908: db $0B ; Direct Copy
#_12A909: db $83, $7C, $FF, $00, $83, $7C, $BF, $40
#_12A911: db $A3, $5C, $FB, $04
#_12A915: db $83 ; Repeat Fill
#_12A916: db $38, $01 ; Repeat Fill bytes
#_12A918: db $11 ; Direct Copy
#_12A919: db $7E, $02, $7E, $42, $5E, $06, $7E, $00
#_12A921: db $C5, $44, $D5, $54, $D1, $50, $D9, $58
#_12A929: db $CD, $4C
#_12A92B: db $85 ; Repeat Fill
#_12A92C: db $50, $01 ; Repeat Fill bytes
#_12A92E: db $0B ; Direct Copy
#_12A92F: db $3A, $2A, $2E, $26, $32, $3A, $2A, $2E
#_12A937: db $FF, $00, $FF, $7E
#_12A93B: db $8B ; Repeat Fill
#_12A93C: db $54, $01 ; Repeat Fill bytes
#_12A93E: db $01 ; Direct Copy
#_12A93F: db $00, $00
#_12A941: db $85 ; Repeat Fill
#_12A942: db $62, $01 ; Repeat Fill bytes
#_12A944: db $0B ; Direct Copy
#_12A945: db $B2, $73, $DD, $7E, $EF, $7C, $B3, $7C
#_12A94D: db $BF, $7C, $93, $70
#_12A951: db $43 ; Word Fill
#_12A952: db $8F, $7C ; Word Fill
#_12A954: db $00 ; Direct Copy
#_12A955: db $0C
#_12A956: db $23 ; Byte Fill
#_12A957: db $00
#_12A958: db $01 ; Direct Copy
#_12A959: db $0C, $00
#_12A95B: db $4F ; Word Fill
#_12A95C: db $00, $FF ; Word Fill
#_12A95E: db $28 ; Byte Fill
#_12A95F: db $00
#_12A960: db $01 ; Direct Copy
#_12A961: db $FE, $FF
#_12A963: db $4D ; Word Fill
#_12A964: db $8A, $03 ; Word Fill
#_12A966: db $00 ; Direct Copy
#_12A967: db $00
#_12A968: db $26 ; Byte Fill
#_12A969: db $FC
#_12A96A: db $4E ; Word Fill
#_12A96B: db $FF, $00 ; Word Fill
#_12A96D: db $28 ; Byte Fill
#_12A96E: db $00
#_12A96F: db $01 ; Direct Copy
#_12A970: db $FF, $00
#_12A972: db $25 ; Byte Fill
#_12A973: db $80
#_12A974: db $00 ; Direct Copy
#_12A975: db $FF
#_12A976: db $22 ; Byte Fill
#_12A977: db $80
#_12A978: db $00 ; Direct Copy
#_12A979: db $FF
#_12A97A: db $43 ; Word Fill
#_12A97B: db $FF, $00 ; Word Fill
#_12A97D: db $24 ; Byte Fill
#_12A97E: db $7F
#_12A97F: db $E4, $31 ; EXT Byte Fill
#_12A981: db $00
#_12A982: db $43 ; Word Fill
#_12A983: db $B2, $62 ; Word Fill
#_12A985: db $47 ; Word Fill
#_12A986: db $B1, $61 ; Word Fill
#_12A988: db $43 ; Word Fill
#_12A989: db $B2, $62 ; Word Fill
#_12A98B: db $01 ; Direct Copy
#_12A98C: db $0D, $0D
#_12A98E: db $23 ; Byte Fill
#_12A98F: db $0E
#_12A990: db $05 ; Direct Copy
#_12A991: db $0D, $0D, $42, $42, $00, $00
#_12A997: db $23 ; Byte Fill
#_12A998: db $18
#_12A999: db $1F ; Direct Copy
#_12A99A: db $00, $00, $06, $06, $46, $46, $00, $00
#_12A9A2: db $BD, $FF, $E7, $E7, $FF, $F9, $B9, $FF
#_12A9AA: db $BB, $77, $AF, $78, $A7, $7F, $80, $5F
#_12A9B2: db $A0, $6F, $90, $70, $C0, $3F, $7F, $80
#_12A9BA: db $22 ; Byte Fill
#_12A9BB: db $00
#_12A9BC: db $1B ; Direct Copy
#_12A9BD: db $20, $10, $0F, $00, $00, $EF, $F0, $F0
#_12A9C5: db $08, $EB, $DC, $36, $DA, $76, $BB, $24
#_12A9CD: db $3B, $02, $FD, $FF, $00, $00, $07, $00
#_12A9D5: db $01, $00, $C0, $00
#_12A9D9: db $50 ; Word Fill
#_12A9DA: db $00, $FF ; Word Fill
#_12A9DC: db $26 ; Byte Fill
#_12A9DD: db $FF
#_12A9DE: db $12 ; Direct Copy
#_12A9DF: db $00, $FE, $11, $FC, $F3, $FF, $1F, $FF
#_12A9E7: db $F5, $FF, $95, $FF, $BD, $FF, $21, $FF
#_12A9EF: db $FF, $FD, $FB
#_12A9F2: db $25 ; Byte Fill
#_12A9F3: db $FF
#_12A9F4: db $05 ; Direct Copy
#_12A9F5: db $03, $FE, $05, $FE, $FF, $FC
#_12A9FB: db $44 ; Word Fill
#_12A9FC: db $FF, $AC ; Word Fill
#_12A9FE: db $04 ; Direct Copy
#_12A9FF: db $BC, $FF, $84, $FF, $FC
#_12AA04: db $27 ; Byte Fill
#_12AA05: db $FE
#_12AA06: db $09 ; Direct Copy
#_12AA07: db $D4, $54, $D6, $56, $C0, $40, $C6, $46
#_12AA0F: db $F0, $40
#_12AA11: db $44 ; Word Fill
#_12AA12: db $FF, $7F ; Word Fill
#_12AA14: db $05 ; Direct Copy
#_12AA15: db $00, $2B, $29, $3F, $39, $3F
#_12AA1B: db $24 ; Byte Fill
#_12AA1C: db $00
#_12AA1D: db $07 ; Direct Copy
#_12AA1E: db $73, $73, $18, $18, $CE, $CE, $00, $00
#_12AA26: db $24 ; Byte Fill
#_12AA27: db $FF
#_12AA28: db $05 ; Direct Copy
#_12AA29: db $00, $FF, $8C, $E7, $31, $FF
#_12AA2F: db $22 ; Byte Fill
#_12AA30: db $00
#_12AA31: db $0F ; Direct Copy
#_12AA32: db $CF, $3C, $EE, $1D, $FE, $2D, $FF, $31
#_12AA3A: db $DF, $3D, $CE, $3C, $C3, $3D, $E2, $1D
#_12AA42: db $24 ; Byte Fill
#_12AA43: db $00
#_12AA44: db $07 ; Direct Copy
#_12AA45: db $01, $00, $00, $5D, $A2, $A2, $5D, $00
#_12AA4D: db $44 ; Word Fill
#_12AA4E: db $FF, $F7 ; Word Fill
#_12AA50: db $05 ; Direct Copy
#_12AA51: db $08, $00, $FF, $F7, $08, $F7
#_12AA57: db $24 ; Byte Fill
#_12AA58: db $00
#_12AA59: db $01 ; Direct Copy
#_12AA5A: db $F7, $00
#_12AA5C: db $44 ; Word Fill
#_12AA5D: db $00, $FF ; Word Fill
#_12AA5F: db $03 ; Direct Copy
#_12AA60: db $71, $BE, $38, $DF
#_12AA64: db $43 ; Word Fill
#_12AA65: db $FC, $EF ; Word Fill
#_12AA67: db $03 ; Direct Copy
#_12AA68: db $FF, $00, $9A, $7B
#_12AA6C: db $26 ; Byte Fill
#_12AA6D: db $00
#_12AA6E: db $04 ; Direct Copy
#_12AA6F: db $04, $5A, $BB, $9A, $7B
#_12AA74: db $83 ; Repeat Fill
#_12AA75: db $48, $03 ; Repeat Fill bytes
#_12AA77: db $01 ; Direct Copy
#_12AA78: db $87, $78
#_12AA7A: db $85 ; Repeat Fill
#_12AA7B: db $4A, $03 ; Repeat Fill bytes
#_12AA7D: db $23 ; Byte Fill
#_12AA7E: db $04
#_12AA7F: db $00 ; Direct Copy
#_12AA80: db $00
#_12AA81: db $22 ; Byte Fill
#_12AA82: db $04
#_12AA83: db $37 ; Byte Fill
#_12AA84: db $00
#_12AA85: db $83 ; Repeat Fill
#_12AA86: db $25, $00 ; Repeat Fill bytes
#_12AA88: db $06 ; Direct Copy
#_12AA89: db $C8, $7F, $CF, $7F, $F8, $7F, $D7
#_12AA90: db $44 ; Word Fill
#_12AA91: db $7F, $D4 ; Word Fill
#_12AA93: db $27 ; Byte Fill
#_12AA94: db $00
#_12AA95: db $83 ; Repeat Fill
#_12AA96: db $0D, $01 ; Repeat Fill bytes
#_12AA98: db $04 ; Direct Copy
#_12AA99: db $48, $FF, $CB, $FF, $2A
#_12AA9E: db $22 ; Byte Fill
#_12AA9F: db $FF
#_12AAA0: db $43 ; Word Fill
#_12AAA1: db $00, $FF ; Word Fill
#_12AAA3: db $27 ; Byte Fill
#_12AAA4: db $00
#_12AAA5: db $0F ; Direct Copy
#_12AAA6: db $D4, $7F, $DC, $7F, $C4, $7F, $FC, $7F
#_12AAAE: db $C4, $7F, $CC, $7F, $F4, $7F, $D4, $7F
#_12AAB6: db $27 ; Byte Fill
#_12AAB7: db $00
#_12AAB8: db $16 ; Direct Copy
#_12AAB9: db $07, $FF, $0D, $FF, $11, $FF, $22, $FF
#_12AAC1: db $7F, $FF, $C4, $FF, $A8, $FF, $90, $FF
#_12AAC9: db $03, $0F, $1F, $3F, $7F, $7F, $FF
#_12AAD0: db $50 ; Word Fill
#_12AAD1: db $FF, $00 ; Word Fill
#_12AAD3: db $27 ; Byte Fill
#_12AAD4: db $00
#_12AAD5: db $09 ; Direct Copy
#_12AAD6: db $FF, $00, $A0, $7F, $98, $7F, $8C, $7F
#_12AADE: db $87, $7F
#_12AAE0: db $44 ; Word Fill
#_12AAE1: db $83, $7E ; Word Fill
#_12AAE3: db $01 ; Direct Copy
#_12AAE4: db $7F, $00
#_12AAE6: db $26 ; Byte Fill
#_12AAE7: db $7F
#_12AAE8: db $0B ; Direct Copy
#_12AAE9: db $85, $7E, $8B, $7C, $97, $78, $AF, $70
#_12AAF1: db $9F, $60, $BF, $40
#_12AAF5: db $43 ; Word Fill
#_12AAF6: db $FF, $00 ; Word Fill
#_12AAF8: db $26 ; Byte Fill
#_12AAF9: db $7F
#_12AAFA: db $00 ; Direct Copy
#_12AAFB: db $00
#_12AAFC: db $83 ; Repeat Fill
#_12AAFD: db $FC, $03 ; Repeat Fill bytes
#_12AAFF: db $46 ; Word Fill
#_12AB00: db $83, $7E ; Word Fill
#_12AB02: db $83 ; Repeat Fill
#_12AB03: db $F9, $03 ; Repeat Fill bytes
#_12AB05: db $28 ; Byte Fill
#_12AB06: db $7F
#_12AB07: db $01 ; Direct Copy
#_12AB08: db $FF, $51
#_12AB0A: db $22 ; Byte Fill
#_12AB0B: db $FF
#_12AB0C: db $8C ; Repeat Fill
#_12AB0D: db $25, $01 ; Repeat Fill bytes
#_12AB0F: db $04 ; Direct Copy
#_12AB10: db $F7, $F7, $FB, $FD, $FE
#_12AB15: db $43 ; Word Fill
#_12AB16: db $FF, $00 ; Word Fill
#_12AB18: db $23 ; Byte Fill
#_12AB19: db $FF
#_12AB1A: db $06 ; Direct Copy
#_12AB1B: db $45, $FF, $55, $FF, $5D, $FF, $51
#_12AB22: db $2A ; Byte Fill
#_12AB23: db $FF
#_12AB24: db $00 ; Direct Copy
#_12AB25: db $45
#_12AB26: db $22 ; Byte Fill
#_12AB27: db $FF
#_12AB28: db $4A ; Word Fill
#_12AB29: db $00, $FF ; Word Fill
#_12AB2B: db $26 ; Byte Fill
#_12AB2C: db $FF
#_12AB2D: db $E5, $80 ; EXT Byte Fill
#_12AB2F: db $00
#_12AB30: db $FF ; End of GFX 19

;===================================================================================================

GFX_1A:
#_12AB31: db $05 ; Direct Copy
#_12AB32: db $FF, $F0, $FF, $EF, $EF, $DF
#_12AB38: db $43 ; Word Fill
#_12AB39: db $CE, $BE ; Word Fill
#_12AB3B: db $45 ; Word Fill
#_12AB3C: db $8E, $7E ; Word Fill
#_12AB3E: db $04 ; Direct Copy
#_12AB3F: db $F0, $E0, $C0, $81, $81
#_12AB44: db $22 ; Byte Fill
#_12AB45: db $01
#_12AB46: db $01 ; Direct Copy
#_12AB47: db $FF, $00
#_12AB49: db $43 ; Word Fill
#_12AB4A: db $FE, $FF ; Word Fill
#_12AB4C: db $43 ; Word Fill
#_12AB4D: db $00, $01 ; Word Fill
#_12AB4F: db $05 ; Direct Copy
#_12AB50: db $7E, $7F, $7F, $7E, $61, $7E
#_12AB56: db $22 ; Byte Fill
#_12AB57: db $00
#_12AB58: db $01 ; Direct Copy
#_12AB59: db $FE, $FE
#_12AB5B: db $22 ; Byte Fill
#_12AB5C: db $80
#_12AB5D: db $E0, $23 ; EXT Direct Copy
#_12AB5F: db $FF, $00, $F7, $E3, $EF, $CB, $5F, $10
#_12AB67: db $B0, $20, $EF, $48, $D8, $10, $B4, $27
#_12AB6F: db $00, $08, $10, $A0, $4F, $10, $27, $48
#_12AB77: db $FF, $00, $F8, $E8, $E0, $C7, $CF, $90
#_12AB7F: db $98, $27, $B3, $0C
#_12AB83: db $43 ; Word Fill
#_12AB84: db $A0, $1F ; Word Fill
#_12AB86: db $17 ; Direct Copy
#_12AB87: db $00, $07, $18, $20, $47, $4F, $5F, $5F
#_12AB8F: db $EE, $22, $EE, $68, $CE, $6C, $8A, $6C
#_12AB97: db $92, $7C, $96, $7A, $97, $7B, $93, $7D
#_12AB9F: db $23 ; Byte Fill
#_12ABA0: db $11
#_12ABA1: db $09 ; Direct Copy
#_12ABA2: db $01, $01, $00, $00, $FF, $C0, $7F, $6F
#_12ABAA: db $70, $6F
#_12ABAC: db $43 ; Word Fill
#_12ABAD: db $3F, $30 ; Word Fill
#_12ABAF: db $E0, $68 ; EXT Direct Copy
#_12ABB1: db $7F, $70, $FF, $F0, $FF, $E0, $00, $80
#_12ABB9: db $80, $C0, $C0, $80, $00, $00, $E1, $47
#_12ABC1: db $A1, $43, $F2, $11, $DB, $49, $EE, $62
#_12ABC9: db $BC, $74, $9F, $69, $B3, $52, $18, $1C
#_12ABD1: db $0C, $24, $11, $03, $00, $0C, $FF, $FE
#_12ABD9: db $FF, $FC, $FF, $F0, $F0, $EF, $E7, $DF
#_12ABE1: db $C1, $BF, $83, $7F, $82, $7E, $FE, $FC
#_12ABE9: db $F0, $E8, $D0, $A0, $40, $41, $FF, $03
#_12ABF1: db $03, $FC, $10, $FF, $24, $EF, $C4, $CC
#_12ABF9: db $A5, $AD, $72, $76, $B1, $F3, $03, $FC
#_12AC01: db $80, $10, $33, $52, $89, $0C, $85, $7D
#_12AC09: db $84, $7C, $86, $7E, $8F, $7F, $88, $7F
#_12AC11: db $90, $7F, $A0, $7F, $80, $7F, $42, $43
#_12AC19: db $41
#_12AC1A: db $23 ; Byte Fill
#_12AC1B: db $40
#_12AC1C: db $1A ; Direct Copy
#_12AC1D: db $41, $E8, $EC, $D3, $DB, $27, $37, $CF
#_12AC25: db $EF, $2D, $EF, $23, $E3, $6C, $EC, $53
#_12AC2D: db $DF, $13, $24, $C8, $10, $10, $1C, $93
#_12AC35: db $A0, $FF, $00
#_12AC38: db $44 ; Word Fill
#_12AC39: db $00, $FF ; Word Fill
#_12AC3B: db $23 ; Byte Fill
#_12AC3C: db $FF
#_12AC3D: db $05 ; Direct Copy
#_12AC3E: db $51, $FF, $5D, $FF, $55, $00
#_12AC44: db $27 ; Byte Fill
#_12AC45: db $FF
#_12AC46: db $02 ; Direct Copy
#_12AC47: db $10, $FF, $F0
#_12AC4A: db $83 ; Repeat Fill
#_12AC4B: db $20, $01 ; Repeat Fill bytes
#_12AC4D: db $03 ; Direct Copy
#_12AC4E: db $FF, $90, $FF, $D0
#_12AC52: db $83 ; Repeat Fill
#_12AC53: db $20, $01 ; Repeat Fill bytes
#_12AC55: db $27 ; Byte Fill
#_12AC56: db $FF
#_12AC57: db $0B ; Direct Copy
#_12AC58: db $83, $7C, $FF, $00, $83, $7C, $BF, $40
#_12AC60: db $A3, $5C, $FB, $04
#_12AC64: db $83 ; Repeat Fill
#_12AC65: db $38, $01 ; Repeat Fill bytes
#_12AC67: db $11 ; Direct Copy
#_12AC68: db $7E, $02, $7E, $42, $5E, $06, $7E, $00
#_12AC70: db $C5, $44, $D5, $54, $D1, $50, $D9, $58
#_12AC78: db $CD, $4C
#_12AC7A: db $85 ; Repeat Fill
#_12AC7B: db $50, $01 ; Repeat Fill bytes
#_12AC7D: db $0B ; Direct Copy
#_12AC7E: db $3A, $2A, $2E, $26, $32, $3A, $2A, $2E
#_12AC86: db $FF, $00, $FF, $7E
#_12AC8A: db $8B ; Repeat Fill
#_12AC8B: db $54, $01 ; Repeat Fill bytes
#_12AC8D: db $01 ; Direct Copy
#_12AC8E: db $00, $00
#_12AC90: db $85 ; Repeat Fill
#_12AC91: db $62, $01 ; Repeat Fill bytes
#_12AC93: db $13 ; Direct Copy
#_12AC94: db $C4, $3F, $AA, $6E, $44, $C6, $6C, $EE
#_12AC9C: db $7C, $FE, $BA, $7E, $C6, $3A, $FE, $06
#_12ACA4: db $00, $11, $39, $11
#_12ACA8: db $23 ; Byte Fill
#_12ACA9: db $01
#_12ACAA: db $12 ; Direct Copy
#_12ACAB: db $8C, $1F, $C2, $4E, $EA, $6E, $B4, $7C
#_12ACB3: db $CC, $3C, $BC, $7C, $CE, $7E, $E3, $5F
#_12ACBB: db $60, $31, $11
#_12ACBE: db $22 ; Byte Fill
#_12ACBF: db $03
#_12ACC0: db $E0, $47 ; EXT Direct Copy
#_12ACC2: db $01, $00, $AF, $08, $D8, $50, $D4, $07
#_12ACCA: db $EF, $28, $EF, $0C, $F6, $17, $FB, $0B
#_12ACD2: db $FD, $05, $50, $27, $28, $10, $10, $08
#_12ACDA: db $04, $02, $B0, $2F, $98, $57, $07, $60
#_12ACE2: db $A8, $78, $90, $7F, $CE, $3E, $67, $9F
#_12ACEA: db $B8, $C7, $4F, $27, $98, $07, $00, $01
#_12ACF2: db $00, $00, $99, $7E, $8C, $6F, $8F, $6F
#_12ACFA: db $80, $60, $90, $5F, $A0, $3F, $C0, $7F
#_12AD02: db $FF, $00, $00, $10, $10, $1F, $20, $40
#_12AD0A: db $83 ; Repeat Fill
#_12AD0B: db $09, $01 ; Repeat Fill bytes
#_12AD0D: db $00 ; Direct Copy
#_12AD0E: db $00
#_12AD0F: db $22 ; Byte Fill
#_12AD10: db $FF
#_12AD11: db $22 ; Byte Fill
#_12AD12: db $00
#_12AD13: db $44 ; Word Fill
#_12AD14: db $FF, $00 ; Word Fill
#_12AD16: db $00 ; Direct Copy
#_12AD17: db $FF
#_12AD18: db $23 ; Byte Fill
#_12AD19: db $00
#_12AD1A: db $00 ; Direct Copy
#_12AD1B: db $FF
#_12AD1C: db $23 ; Byte Fill
#_12AD1D: db $00
#_12AD1E: db $E0, $47 ; EXT Direct Copy
#_12AD20: db $F8, $50, $FF, $68, $B7, $63, $D4, $23
#_12AD28: db $BB, $4F, $DF, $60, $9F, $1F, $FF, $00
#_12AD30: db $07, $00, $08, $08, $00, $00, $60, $00
#_12AD38: db $86, $7E, $8B, $7F, $92, $7F, $81, $7F
#_12AD40: db $82, $7E, $C5, $BD, $ED, $9D, $FD, $BD
#_12AD48: db $41, $40, $42, $4C, $79, $BA, $92, $A2
#_12AD50: db $E8, $EF, $10, $1C, $03, $FB, $03, $1B
#_12AD58: db $E3, $EB, $E5, $ED, $F2, $F6, $B0, $F7
#_12AD60: db $10, $E3, $04, $E4, $14, $12, $09, $08
#_12AD68: db $43 ; Word Fill
#_12AD69: db $80, $7F ; Word Fill
#_12AD6B: db $07 ; Direct Copy
#_12AD6C: db $C1, $3E, $E1, $9E, $FF, $C0, $FF, $F8
#_12AD74: db $23 ; Byte Fill
#_12AD75: db $FF
#_12AD76: db $07 ; Direct Copy
#_12AD77: db $63, $77, $3E, $9E, $C0, $F8, $FF, $FF
#_12AD7F: db $43 ; Word Fill
#_12AD80: db $20, $BF ; Word Fill
#_12AD82: db $13 ; Direct Copy
#_12AD83: db $41, $FF, $01, $FF, $00, $FF, $80, $7F
#_12AD8B: db $C0, $3F, $FF, $80, $C0, $C0, $91, $B1
#_12AD93: db $B8, $7F, $3F, $80
#_12AD97: db $4F ; Word Fill
#_12AD98: db $FF, $00 ; Word Fill
#_12AD9A: db $26 ; Byte Fill
#_12AD9B: db $FF
#_12AD9C: db $12 ; Direct Copy
#_12AD9D: db $00, $FE, $11, $FC, $F3, $FF, $1F, $FF
#_12ADA5: db $F5, $FF, $95, $FF, $BD, $FF, $21, $FF
#_12ADAD: db $FF, $FD, $FB
#_12ADB0: db $25 ; Byte Fill
#_12ADB1: db $FF
#_12ADB2: db $05 ; Direct Copy
#_12ADB3: db $03, $FE, $05, $FE, $FF, $FC
#_12ADB9: db $44 ; Word Fill
#_12ADBA: db $FF, $AC ; Word Fill
#_12ADBC: db $04 ; Direct Copy
#_12ADBD: db $BC, $FF, $84, $FF, $FC
#_12ADC2: db $27 ; Byte Fill
#_12ADC3: db $FE
#_12ADC4: db $09 ; Direct Copy
#_12ADC5: db $D4, $54, $D6, $56, $C0, $40, $C6, $46
#_12ADCD: db $F0, $40
#_12ADCF: db $44 ; Word Fill
#_12ADD0: db $FF, $7F ; Word Fill
#_12ADD2: db $05 ; Direct Copy
#_12ADD3: db $00, $2B, $29, $3F, $39, $3F
#_12ADD9: db $24 ; Byte Fill
#_12ADDA: db $00
#_12ADDB: db $07 ; Direct Copy
#_12ADDC: db $73, $73, $18, $18, $CE, $CE, $00, $00
#_12ADE4: db $24 ; Byte Fill
#_12ADE5: db $FF
#_12ADE6: db $05 ; Direct Copy
#_12ADE7: db $00, $FF, $8C, $E7, $31, $FF
#_12ADED: db $22 ; Byte Fill
#_12ADEE: db $00
#_12ADEF: db $1D ; Direct Copy
#_12ADF0: db $BC, $FD, $7C, $7D, $78, $79, $F8, $79
#_12ADF8: db $60, $61, $3B, $01, $BF, $E1, $8E, $E2
#_12AE00: db $02, $82, $86, $86, $9E, $FE, $1E, $1D
#_12AE08: db $6E, $FA, $67, $6A, $77, $76
#_12AE0E: db $43 ; Word Fill
#_12AE0F: db $77, $72 ; Word Fill
#_12AE11: db $E0, $20 ; EXT Direct Copy
#_12AE13: db $3B, $39, $1D, $1C, $0E, $0E, $05, $95
#_12AE1B: db $89, $8D, $8D, $C6, $E3, $F1, $D3, $C3
#_12AE23: db $D9, $C1, $B5, $81, $63, $00, $C3, $00
#_12AE2B: db $83, $01, $87, $03, $FF, $04, $3C, $3E
#_12AE33: db $7E
#_12AE34: db $22 ; Byte Fill
#_12AE35: db $FE
#_12AE36: db $E0, $21 ; EXT Direct Copy
#_12AE38: db $FC, $F8, $C3, $80, $80, $78, $F8, $7E
#_12AE40: db $85, $87, $62, $03, $F8, $01, $8D, $01
#_12AE48: db $87, $00, $3F, $07, $01, $78, $FC, $FE
#_12AE50: db $FE, $FF, $FF, $7E, $FF, $F6, $FF, $FC
#_12AE58: db $FF, $BC
#_12AE5A: db $44 ; Word Fill
#_12AE5B: db $FF, $FE ; Word Fill
#_12AE5D: db $09 ; Direct Copy
#_12AE5E: db $76, $FF, $00, $7E, $F6, $FC, $BC, $FE
#_12AE66: db $FE, $76
#_12AE68: db $43 ; Word Fill
#_12AE69: db $00, $FF ; Word Fill
#_12AE6B: db $07 ; Direct Copy
#_12AE6C: db $7F, $C8, $7F, $CF, $7F, $F8, $7F, $D7
#_12AE74: db $44 ; Word Fill
#_12AE75: db $7F, $D4 ; Word Fill
#_12AE77: db $27 ; Byte Fill
#_12AE78: db $00
#_12AE79: db $83 ; Repeat Fill
#_12AE7A: db $0D, $01 ; Repeat Fill bytes
#_12AE7C: db $04 ; Direct Copy
#_12AE7D: db $48, $FF, $CB, $FF, $2A
#_12AE82: db $22 ; Byte Fill
#_12AE83: db $FF
#_12AE84: db $43 ; Word Fill
#_12AE85: db $00, $FF ; Word Fill
#_12AE87: db $27 ; Byte Fill
#_12AE88: db $00
#_12AE89: db $0F ; Direct Copy
#_12AE8A: db $D4, $7F, $DC, $7F, $C4, $7F, $FC, $7F
#_12AE92: db $C4, $7F, $CC, $7F, $F4, $7F, $D4, $7F
#_12AE9A: db $27 ; Byte Fill
#_12AE9B: db $00
#_12AE9C: db $16 ; Direct Copy
#_12AE9D: db $07, $FF, $0D, $FF, $11, $FF, $22, $FF
#_12AEA5: db $7F, $FF, $C4, $FF, $A8, $FF, $90, $FF
#_12AEAD: db $03, $0F, $1F, $3F, $7F, $7F, $FF
#_12AEB4: db $50 ; Word Fill
#_12AEB5: db $FF, $00 ; Word Fill
#_12AEB7: db $27 ; Byte Fill
#_12AEB8: db $00
#_12AEB9: db $09 ; Direct Copy
#_12AEBA: db $FF, $00, $A0, $7F, $98, $7F, $8C, $7F
#_12AEC2: db $87, $7F
#_12AEC4: db $44 ; Word Fill
#_12AEC5: db $83, $7E ; Word Fill
#_12AEC7: db $01 ; Direct Copy
#_12AEC8: db $7F, $00
#_12AECA: db $26 ; Byte Fill
#_12AECB: db $7F
#_12AECC: db $0B ; Direct Copy
#_12AECD: db $85, $7E, $8B, $7C, $97, $78, $AF, $70
#_12AED5: db $9F, $60, $BF, $40
#_12AED9: db $43 ; Word Fill
#_12AEDA: db $FF, $00 ; Word Fill
#_12AEDC: db $26 ; Byte Fill
#_12AEDD: db $7F
#_12AEDE: db $00 ; Direct Copy
#_12AEDF: db $00
#_12AEE0: db $83 ; Repeat Fill
#_12AEE1: db $FC, $03 ; Repeat Fill bytes
#_12AEE3: db $46 ; Word Fill
#_12AEE4: db $83, $7E ; Word Fill
#_12AEE6: db $83 ; Repeat Fill
#_12AEE7: db $F9, $03 ; Repeat Fill bytes
#_12AEE9: db $28 ; Byte Fill
#_12AEEA: db $7F
#_12AEEB: db $01 ; Direct Copy
#_12AEEC: db $FF, $51
#_12AEEE: db $22 ; Byte Fill
#_12AEEF: db $FF
#_12AEF0: db $8C ; Repeat Fill
#_12AEF1: db $25, $01 ; Repeat Fill bytes
#_12AEF3: db $04 ; Direct Copy
#_12AEF4: db $F7, $F7, $FB, $FD, $FE
#_12AEF9: db $43 ; Word Fill
#_12AEFA: db $FF, $00 ; Word Fill
#_12AEFC: db $23 ; Byte Fill
#_12AEFD: db $FF
#_12AEFE: db $06 ; Direct Copy
#_12AEFF: db $45, $FF, $55, $FF, $5D, $FF, $51
#_12AF06: db $2A ; Byte Fill
#_12AF07: db $FF
#_12AF08: db $00 ; Direct Copy
#_12AF09: db $45
#_12AF0A: db $22 ; Byte Fill
#_12AF0B: db $FF
#_12AF0C: db $4A ; Word Fill
#_12AF0D: db $00, $FF ; Word Fill
#_12AF0F: db $26 ; Byte Fill
#_12AF10: db $FF
#_12AF11: db $E5, $80 ; EXT Byte Fill
#_12AF13: db $00
#_12AF14: db $FF ; End of GFX 1A

;===================================================================================================

GFX_1B:
#_12AF15: db $02 ; Direct Copy
#_12AF16: db $FF, $04, $F8
#_12AF19: db $22 ; Byte Fill
#_12AF1A: db $08
#_12AF1B: db $E0, $2B ; EXT Direct Copy
#_12AF1D: db $FA, $06, $77, $99, $69, $A6, $CA, $45
#_12AF25: db $4B, $C4, $FB, $F7, $F7, $01, $00, $16
#_12AF2D: db $37, $35, $DB, $18, $ED, $0C, $75, $04
#_12AF35: db $31, $00, $19, $00, $99, $80, $C9, $40
#_12AF3D: db $49, $80, $E7, $F3, $FB, $FF, $FF, $7F
#_12AF45: db $3F, $BF, $FB, $00
#_12AF49: db $43 ; Word Fill
#_12AF4A: db $3B, $C0 ; Word Fill
#_12AF4C: db $09 ; Direct Copy
#_12AF4D: db $FB, $00, $2B, $C0, $23, $C1, $F3, $10
#_12AF55: db $33, $D0
#_12AF57: db $23 ; Byte Fill
#_12AF58: db $1C
#_12AF59: db $07 ; Direct Copy
#_12AF5A: db $1D, $1C, $0C, $0C, $FF, $00, $00, $FF
#_12AF62: db $45 ; Word Fill
#_12AF63: db $FF, $00 ; Word Fill
#_12AF65: db $22 ; Byte Fill
#_12AF66: db $FF
#_12AF67: db $01 ; Direct Copy
#_12AF68: db $00, $FF
#_12AF6A: db $24 ; Byte Fill
#_12AF6B: db $00
#_12AF6C: db $00 ; Direct Copy
#_12AF6D: db $FF
#_12AF6E: db $23 ; Byte Fill
#_12AF6F: db $00
#_12AF70: db $83 ; Repeat Fill
#_12AF71: db $4B, $00 ; Repeat Fill bytes
#_12AF73: db $00 ; Direct Copy
#_12AF74: db $FF
#_12AF75: db $25 ; Byte Fill
#_12AF76: db $80
#_12AF77: db $22 ; Byte Fill
#_12AF78: db $FF
#_12AF79: db $83 ; Repeat Fill
#_12AF7A: db $5A, $00 ; Repeat Fill bytes
#_12AF7C: db $22 ; Byte Fill
#_12AF7D: db $7F
#_12AF7E: db $43 ; Word Fill
#_12AF7F: db $00, $FF ; Word Fill
#_12AF81: db $15 ; Direct Copy
#_12AF82: db $FF, $00, $FF, $F9, $0D, $09, $15, $11
#_12AF8A: db $25, $21, $E5, $E1, $E5, $21, $00, $FF
#_12AF92: db $06, $F6, $EE, $DE, $1E, $DE
#_12AF98: db $84 ; Repeat Fill
#_12AF99: db $4A, $00 ; Repeat Fill bytes
#_12AF9B: db $E0, $22 ; EXT Direct Copy
#_12AF9D: db $FE, $03, $82, $83, $C2, $C3, $E2, $EF
#_12AFA5: db $FE, $EF, $F0, $00, $FF, $01, $7D, $3D
#_12AFAD: db $1D, $01, $0F, $40, $BF, $B9, $7F, $F7
#_12AFB5: db $7F, $EF, $7F, $DE, $7F, $85, $27, $80
#_12AFBD: db $7F, $9B, $7F
#_12AFC0: db $24 ; Byte Fill
#_12AFC1: db $00
#_12AFC2: db $00 ; Direct Copy
#_12AFC3: db $58
#_12AFC4: db $22 ; Byte Fill
#_12AFC5: db $00
#_12AFC6: db $0E ; Direct Copy
#_12AFC7: db $FF, $E7, $FF, $9F, $FF, $7E, $FF, $FC
#_12AFCF: db $FF, $08, $0C, $00, $FF, $3B, $FF
#_12AFD6: db $24 ; Byte Fill
#_12AFD7: db $00
#_12AFD8: db $02 ; Direct Copy
#_12AFD9: db $F3, $00, $00
#_12AFDC: db $43 ; Word Fill
#_12AFDD: db $AD, $3F ; Word Fill
#_12AFDF: db $0B ; Direct Copy
#_12AFE0: db $9B, $3F, $A0, $68, $80, $7F, $B6, $7F
#_12AFE8: db $F6, $7F, $B7, $3F
#_12AFEC: db $22 ; Byte Fill
#_12AFED: db $40
#_12AFEE: db $00 ; Direct Copy
#_12AFEF: db $17
#_12AFF0: db $22 ; Byte Fill
#_12AFF1: db $00
#_12AFF2: db $10 ; Direct Copy
#_12AFF3: db $40, $DD, $FF, $EE, $FF, $ED, $FF, $1A
#_12AFFB: db $7E, $00, $FF, $F7, $FF, $EF, $FF, $1E
#_12B003: db $FF
#_12B004: db $22 ; Byte Fill
#_12B005: db $00
#_12B006: db $00 ; Direct Copy
#_12B007: db $81
#_12B008: db $23 ; Byte Fill
#_12B009: db $00
#_12B00A: db $17 ; Direct Copy
#_12B00B: db $75, $0A, $B5, $8A, $5D, $C2, $AD, $62
#_12B013: db $D7, $30, $A3, $60, $F5, $0C, $FA, $06
#_12B01B: db $80, $40, $20, $10, $08, $1C, $02, $01
#_12B023: db $37 ; Byte Fill
#_12B024: db $00
#_12B025: db $00 ; Direct Copy
#_12B026: db $DF
#_12B027: db $4A ; Word Fill
#_12B028: db $00, $FF ; Word Fill
#_12B02A: db $05 ; Direct Copy
#_12B02B: db $DF, $1F, $DF, $00, $E0, $FF
#_12B031: db $22 ; Byte Fill
#_12B032: db $00
#_12B033: db $02 ; Direct Copy
#_12B034: db $FF, $E0, $E0
#_12B037: db $4B ; Word Fill
#_12B038: db $FF, $00 ; Word Fill
#_12B03A: db $22 ; Byte Fill
#_12B03B: db $FF
#_12B03C: db $02 ; Direct Copy
#_12B03D: db $00, $00, $FF
#_12B040: db $22 ; Byte Fill
#_12B041: db $00
#_12B042: db $84 ; Repeat Fill
#_12B043: db $6E, $00 ; Repeat Fill bytes
#_12B045: db $06 ; Direct Copy
#_12B046: db $40, $00, $3F, $1F, $1F, $0F, $0F
#_12B04D: db $26 ; Byte Fill
#_12B04E: db $00
#_12B04F: db $01 ; Direct Copy
#_12B050: db $7F, $3F
#_12B052: db $25 ; Byte Fill
#_12B053: db $00
#_12B054: db $E0, $39 ; EXT Direct Copy
#_12B056: db $49, $C6, $44, $C3, $23, $E0, $B8, $78
#_12B05E: db $FC, $1C, $F7, $6F, $99, $07, $9F, $10
#_12B066: db $36, $3B, $1C, $07, $03, $00, $60, $60
#_12B06E: db $63, $A0, $67, $A0, $EB, $20, $E1, $A0
#_12B076: db $65, $6C, $09, $0C, $C4, $C4, $0E, $FE
#_12B07E: db $9F, $9F, $1F, $1F, $93, $F3, $3B, $01
#_12B086: db $3B, $D8, $EB, $19, $2B, $D8, $EB, $18
#_12B08E: db $3B, $C8
#_12B090: db $85 ; Repeat Fill
#_12B091: db $48, $00 ; Repeat Fill bytes
#_12B093: db $24 ; Byte Fill
#_12B094: db $04
#_12B095: db $22 ; Byte Fill
#_12B096: db $00
#_12B097: db $00 ; Direct Copy
#_12B098: db $FF
#_12B099: db $22 ; Byte Fill
#_12B09A: db $00
#_12B09B: db $43 ; Word Fill
#_12B09C: db $FF, $00 ; Word Fill
#_12B09E: db $05 ; Direct Copy
#_12B09F: db $04, $FB, $FF, $00, $20, $DF
#_12B0A5: db $83 ; Repeat Fill
#_12B0A6: db $48, $00 ; Repeat Fill bytes
#_12B0A8: db $25 ; Byte Fill
#_12B0A9: db $00
#_12B0AA: db $E0, $47 ; EXT Direct Copy
#_12B0AC: db $7F, $80, $E0, $FF, $71, $7F, $38, $3E
#_12B0B4: db $9C, $9E, $4D, $CE, $65, $A7, $32, $D3
#_12B0BC: db $00, $00, $80, $C1, $61, $31, $18, $0C
#_12B0C4: db $CE, $40, $9F, $8E, $3F, $11, $7F, $2E
#_12B0CC: db $F9, $59, $F6, $B0, $FC, $70, $FE, $70
#_12B0D4: db $3F, $71, $E0, $CE, $9F, $3F, $73, $71
#_12B0DC: db $FF, $E0, $78, $77, $BC, $3B, $DE, $9D
#_12B0E4: db $EF, $4E, $F7, $A7, $7B, $53, $35, $21
#_12B0EC: db $00, $80, $C0, $60, $30, $98, $CC, $EE
#_12B0F4: db $43 ; Word Fill
#_12B0F5: db $AD, $3F ; Word Fill
#_12B0F7: db $8B ; Repeat Fill
#_12B0F8: db $DC, $00 ; Repeat Fill bytes
#_12B0FA: db $22 ; Byte Fill
#_12B0FB: db $40
#_12B0FC: db $00 ; Direct Copy
#_12B0FD: db $17
#_12B0FE: db $22 ; Byte Fill
#_12B0FF: db $00
#_12B100: db $90 ; Repeat Fill
#_12B101: db $EF, $00 ; Repeat Fill bytes
#_12B103: db $22 ; Byte Fill
#_12B104: db $00
#_12B105: db $00 ; Direct Copy
#_12B106: db $81
#_12B107: db $23 ; Byte Fill
#_12B108: db $00
#_12B109: db $11 ; Direct Copy
#_12B10A: db $BB, $3F, $80, $42, $80, $7F, $C0, $3F
#_12B112: db $ED, $12, $EC, $1F, $F0, $0F, $F9, $06
#_12B11A: db $40, $3D
#_12B11C: db $25 ; Byte Fill
#_12B11D: db $00
#_12B11E: db $03 ; Direct Copy
#_12B11F: db $F9, $FF, $00, $18
#_12B123: db $43 ; Word Fill
#_12B124: db $00, $FF ; Word Fill
#_12B126: db $47 ; Word Fill
#_12B127: db $FF, $00 ; Word Fill
#_12B129: db $01 ; Direct Copy
#_12B12A: db $00, $E7
#_12B12C: db $25 ; Byte Fill
#_12B12D: db $00
#_12B12E: db $0F ; Direct Copy
#_12B12F: db $7D, $03, $BE, $01, $DF, $00, $6F, $80
#_12B137: db $77, $80, $7B, $80, $5D, $A0, $56, $A8
#_12B13F: db $84 ; Repeat Fill
#_12B140: db $18, $01 ; Repeat Fill bytes
#_12B142: db $0E ; Direct Copy
#_12B143: db $04, $02, $01, $16, $23, $D6, $C3, $D6
#_12B14B: db $C5, $D3, $CA, $59, $C4, $9D, $42
#_12B152: db $22 ; Byte Fill
#_12B153: db $FF
#_12B154: db $07 ; Direct Copy
#_12B155: db $00, $C8, $28, $28, $24, $22, $20, $00
#_12B15D: db $43 ; Word Fill
#_12B15E: db $00, $FF ; Word Fill
#_12B160: db $07 ; Direct Copy
#_12B161: db $F8, $07, $00, $04, $07, $FF, $00, $FF
#_12B169: db $43 ; Word Fill
#_12B16A: db $FF, $00 ; Word Fill
#_12B16C: db $05 ; Direct Copy
#_12B16D: db $00, $02, $02, $FA, $F8, $FF
#_12B173: db $22 ; Byte Fill
#_12B174: db $00
#_12B175: db $00 ; Direct Copy
#_12B176: db $05
#_12B177: db $43 ; Word Fill
#_12B178: db $02, $07 ; Word Fill
#_12B17A: db $48 ; Word Fill
#_12B17B: db $00, $07 ; Word Fill
#_12B17D: db $00 ; Direct Copy
#_12B17E: db $FD
#_12B17F: db $22 ; Byte Fill
#_12B180: db $00
#_12B181: db $25 ; Byte Fill
#_12B182: db $02
#_12B183: db $00 ; Direct Copy
#_12B184: db $FF
#_12B185: db $22 ; Byte Fill
#_12B186: db $00
#_12B187: db $24 ; Byte Fill
#_12B188: db $FF
#_12B189: db $46 ; Word Fill
#_12B18A: db $00, $07 ; Word Fill
#_12B18C: db $01 ; Direct Copy
#_12B18D: db $FF, $FF
#_12B18F: db $22 ; Byte Fill
#_12B190: db $00
#_12B191: db $22 ; Byte Fill
#_12B192: db $02
#_12B193: db $43 ; Word Fill
#_12B194: db $9F, $18 ; Word Fill
#_12B196: db $0D ; Direct Copy
#_12B197: db $DF, $58, $AF, $68, $D7, $34, $6B, $9A
#_12B19F: db $35, $CD, $2F, $D0, $60, $60
#_12B1A5: db $84 ; Repeat Fill
#_12B1A6: db $9A, $02 ; Repeat Fill bytes
#_12B1A8: db $0F ; Direct Copy
#_12B1A9: db $00, $2F, $D0, $B7, $C8, $B8, $C7, $DF
#_12B1B1: db $E0, $60, $FF, $BF, $7F, $C0, $3F, $FF
#_12B1B9: db $28 ; Byte Fill
#_12B1BA: db $00
#_12B1BB: db $00 ; Direct Copy
#_12B1BC: db $FF
#_12B1BD: db $46 ; Word Fill
#_12B1BE: db $00, $BF ; Word Fill
#_12B1C0: db $03 ; Direct Copy
#_12B1C1: db $9F, $3F, $9F, $3E
#_12B1C5: db $43 ; Word Fill
#_12B1C6: db $9F, $3C ; Word Fill
#_12B1C8: db $02 ; Direct Copy
#_12B1C9: db $00, $7F, $7F
#_12B1CC: db $24 ; Byte Fill
#_12B1CD: db $40
#_12B1CE: db $01 ; Direct Copy
#_12B1CF: db $9D, $3C
#_12B1D1: db $44 ; Word Fill
#_12B1D2: db $9F, $3E ; Word Fill
#_12B1D4: db $43 ; Word Fill
#_12B1D5: db $37, $9F ; Word Fill
#_12B1D7: db $E0, $64 ; EXT Direct Copy
#_12B1D9: db $20, $FF, $7F, $FF, $00, $42, $40, $41
#_12B1E1: db $40, $48, $5F, $00, $00, $19, $E9, $54
#_12B1E9: db $FC, $F2, $FE, $F9, $FF, $A8, $AB, $FE
#_12B1F1: db $AB, $FF, $7F, $40, $3F, $06, $03, $01
#_12B1F9: db $00, $54, $00, $00, $80, $FF, $78, $EF
#_12B201: db $AC, $77, $57, $39, $29, $9F, $90, $4F
#_12B209: db $CF, $30, $F0, $00, $FF, $78, $3C, $9F
#_12B211: db $CF, $60, $30, $0F, $00, $FB, $68, $F9
#_12B219: db $68, $F8, $E8, $E5, $D6, $E2, $14, $E5
#_12B221: db $F0, $15, $11, $04, $F1, $67, $67, $E7
#_12B229: db $C8, $09, $0B, $EA, $0A, $80, $BF, $CE
#_12B231: db $5F, $E6, $2F, $73, $97, $79, $8B, $3C
#_12B239: db $C5, $1E, $E2, $17, $E9
#_12B23E: db $86 ; Repeat Fill
#_12B23F: db $99, $02 ; Repeat Fill bytes
#_12B241: db $00 ; Direct Copy
#_12B242: db $00
#_12B243: db $89 ; Repeat Fill
#_12B244: db $A8, $03 ; Repeat Fill bytes
#_12B246: db $05 ; Direct Copy
#_12B247: db $7C, $85, $5E, $A2, $57, $A9
#_12B24D: db $87 ; Repeat Fill
#_12B24E: db $B8, $03 ; Repeat Fill bytes
#_12B250: db $0B ; Direct Copy
#_12B251: db $23, $E5, $FB, $B9, $DA, $B9, $FB, $D8
#_12B259: db $EB, $D8, $33, $C8
#_12B25D: db $22 ; Byte Fill
#_12B25E: db $FF
#_12B25F: db $01 ; Direct Copy
#_12B260: db $00, $18
#_12B262: db $24 ; Byte Fill
#_12B263: db $04
#_12B264: db $E4, $31 ; EXT Byte Fill
#_12B266: db $00
#_12B267: db $E0, $22 ; EXT Direct Copy
#_12B269: db $7E, $81, $C1, $36, $03, $6C, $06, $E9
#_12B271: db $C1, $36, $F1, $0A, $EF, $30, $7F, $BE
#_12B279: db $00, $1C, $F8, $F0, $1C, $0C, $00, $80
#_12B281: db $D9, $3E, $CC, $3F, $46, $BF, $4E, $BF
#_12B289: db $DE, $3F, $CE
#_12B28C: db $44 ; Word Fill
#_12B28D: db $3F, $C6 ; Word Fill
#_12B28F: db $22 ; Byte Fill
#_12B290: db $00
#_12B291: db $00 ; Direct Copy
#_12B292: db $80
#_12B293: db $23 ; Byte Fill
#_12B294: db $00
#_12B295: db $E0, $2F ; EXT Direct Copy
#_12B297: db $7F, $80, $E0, $1F, $00, $7F, $03, $EC
#_12B29F: db $C1, $36, $F0, $0B, $08, $F7, $00, $CE
#_12B2A7: db $00, $0F, $FF, $F8, $1C, $0E, $07, $FB
#_12B2AF: db $E4, $1F, $15, $EE, $0E, $31, $80, $5E
#_12B2B7: db $C0, $1D, $88, $76, $57, $AC, $37, $CC
#_12B2BF: db $00, $C0, $E1, $7F, $3F, $63, $00, $80
#_12B2C7: db $E5, $7F ; EXT Byte Fill
#_12B2C9: db $00
#_12B2CA: db $FF ; End of GFX 1B

;===================================================================================================

GFX_1C:
#_12B2CB: db $43 ; Word Fill
#_12B2CC: db $FF, $00 ; Word Fill
#_12B2CE: db $0E ; Direct Copy
#_12B2CF: db $70, $80, $7F, $88, $0F, $88, $03, $8C
#_12B2D7: db $04, $88, $05, $49, $FF, $FF, $7F
#_12B2DE: db $23 ; Byte Fill
#_12B2DF: db $77
#_12B2E0: db $04 ; Direct Copy
#_12B2E1: db $B6, $C0, $3E, $F0, $01
#_12B2E6: db $43 ; Word Fill
#_12B2E7: db $F0, $00 ; Word Fill
#_12B2E9: db $0F ; Direct Copy
#_12B2EA: db $D8, $1F, $DB, $04, $DC, $00, $DD, $01
#_12B2F2: db $C1, $FE, $FF, $FF, $E0, $FF, $FF, $FE
#_12B2FA: db $E4, $2F ; EXT Byte Fill
#_12B2FC: db $00
#_12B2FD: db $47 ; Word Fill
#_12B2FE: db $BF, $7F ; Word Fill
#_12B300: db $06 ; Direct Copy
#_12B301: db $B7, $7F, $BF, $7F, $80, $40, $FF
#_12B308: db $26 ; Byte Fill
#_12B309: db $00
#_12B30A: db $01 ; Direct Copy
#_12B30B: db $3F, $00
#_12B30D: db $27 ; Byte Fill
#_12B30E: db $FF
#_12B30F: db $00 ; Direct Copy
#_12B310: db $F7
#_12B311: db $22 ; Byte Fill
#_12B312: db $FF
#_12B313: db $02 ; Direct Copy
#_12B314: db $00, $00, $FF
#_12B317: db $26 ; Byte Fill
#_12B318: db $00
#_12B319: db $02 ; Direct Copy
#_12B31A: db $FF, $00, $FF
#_12B31D: db $22 ; Byte Fill
#_12B31E: db $00
#_12B31F: db $07 ; Direct Copy
#_12B320: db $F7, $78, $EF, $30, $BC, $43, $FB, $44
#_12B328: db $43 ; Word Fill
#_12B329: db $F7, $48 ; Word Fill
#_12B32B: db $01 ; Direct Copy
#_12B32C: db $00, $FF
#_12B32E: db $25 ; Byte Fill
#_12B32F: db $00
#_12B330: db $0F ; Direct Copy
#_12B331: db $40, $BF, $B9, $7F, $F7, $7F, $EF, $7F
#_12B339: db $DE, $7F, $85, $27, $80, $7F, $9B, $7F
#_12B341: db $24 ; Byte Fill
#_12B342: db $00
#_12B343: db $00 ; Direct Copy
#_12B344: db $58
#_12B345: db $22 ; Byte Fill
#_12B346: db $00
#_12B347: db $0E ; Direct Copy
#_12B348: db $FF, $E7, $FF, $9F, $FF, $7E, $FF, $FC
#_12B350: db $FF, $08, $0C, $00, $FF, $3B, $FF
#_12B357: db $24 ; Byte Fill
#_12B358: db $00
#_12B359: db $02 ; Direct Copy
#_12B35A: db $F3, $00, $00
#_12B35D: db $43 ; Word Fill
#_12B35E: db $AD, $3F ; Word Fill
#_12B360: db $0B ; Direct Copy
#_12B361: db $9B, $3F, $A0, $68, $80, $7F, $B6, $7F
#_12B369: db $F6, $7F, $B7, $3F
#_12B36D: db $22 ; Byte Fill
#_12B36E: db $40
#_12B36F: db $00 ; Direct Copy
#_12B370: db $17
#_12B371: db $22 ; Byte Fill
#_12B372: db $00
#_12B373: db $10 ; Direct Copy
#_12B374: db $40, $DD, $FF, $EE, $FF, $ED, $FF, $1A
#_12B37C: db $7E, $00, $FF, $F7, $FF, $EF, $FF, $1E
#_12B384: db $FF
#_12B385: db $22 ; Byte Fill
#_12B386: db $00
#_12B387: db $00 ; Direct Copy
#_12B388: db $81
#_12B389: db $23 ; Byte Fill
#_12B38A: db $00
#_12B38B: db $43 ; Word Fill
#_12B38C: db $80, $7F ; Word Fill
#_12B38E: db $10 ; Direct Copy
#_12B38F: db $BF, $7F, $C0, $40, $80, $3F, $80, $7F
#_12B397: db $83, $7C, $FF, $00, $7F, $40, $00, $3F
#_12B39F: db $40
#_12B3A0: db $22 ; Byte Fill
#_12B3A1: db $00
#_12B3A2: db $01 ; Direct Copy
#_12B3A3: db $FF, $00
#_12B3A5: db $87 ; Repeat Fill
#_12B3A6: db $0C, $01 ; Repeat Fill bytes
#_12B3A8: db $06 ; Direct Copy
#_12B3A9: db $8E, $71, $9F, $7F, $BF, $7F, $00
#_12B3B0: db $84 ; Repeat Fill
#_12B3B1: db $1A, $01 ; Repeat Fill bytes
#_12B3B3: db $05 ; Direct Copy
#_12B3B4: db $1F, $3F, $FF, $00, $FF, $FF
#_12B3BA: db $22 ; Byte Fill
#_12B3BB: db $00
#_12B3BC: db $07 ; Direct Copy
#_12B3BD: db $FF, $73, $8C, $70, $BF, $47, $FF, $DF
#_12B3C5: db $85 ; Repeat Fill
#_12B3C6: db $83, $00 ; Repeat Fill bytes
#_12B3C8: db $0C ; Direct Copy
#_12B3C9: db $3F, $7F, $FF, $C5, $44, $D5, $54, $D1
#_12B3D1: db $50, $D9, $58, $CD, $4C
#_12B3D6: db $85 ; Repeat Fill
#_12B3D7: db $50, $01 ; Repeat Fill bytes
#_12B3D9: db $0B ; Direct Copy
#_12B3DA: db $3A, $2A, $2E, $26, $32, $3A, $2A, $2E
#_12B3E2: db $FF, $00, $FF, $7E
#_12B3E6: db $8B ; Repeat Fill
#_12B3E7: db $54, $01 ; Repeat Fill bytes
#_12B3E9: db $01 ; Direct Copy
#_12B3EA: db $00, $00
#_12B3EC: db $85 ; Repeat Fill
#_12B3ED: db $62, $01 ; Repeat Fill bytes
#_12B3EF: db $E0, $36 ; EXT Direct Copy
#_12B3F1: db $41, $B9, $28, $C4, $00, $EF, $15, $ED
#_12B3F9: db $14, $EC, $06, $FE, $0D, $FD, $00, $04
#_12B401: db $C6, $F3, $F0, $F2, $F3, $F1, $F2, $FB
#_12B409: db $00, $FE, $80, $7E, $40, $BE, $18, $86
#_12B411: db $42, $BE, $1E, $7F, $04, $24, $92, $B2
#_12B419: db $FF, $FF, $7F, $7F, $01, $80, $DB, $4D
#_12B421: db $FF, $E7, $FF, $18, $EF, $08, $E7
#_12B428: db $44 ; Word Fill
#_12B429: db $18, $EF ; Word Fill
#_12B42B: db $00 ; Direct Copy
#_12B42C: db $FF
#_12B42D: db $43 ; Word Fill
#_12B42E: db $24, $E7 ; Word Fill
#_12B430: db $03 ; Direct Copy
#_12B431: db $C3, $D3, $C3, $DB
#_12B435: db $22 ; Byte Fill
#_12B436: db $BD
#_12B437: db $37 ; Byte Fill
#_12B438: db $00
#_12B439: db $11 ; Direct Copy
#_12B43A: db $A7, $68, $B0, $70, $BB, $7F, $D1, $3F
#_12B442: db $A0, $5F, $DF, $60, $BF, $20, $FF, $00
#_12B44A: db $10, $0F
#_12B44C: db $23 ; Byte Fill
#_12B44D: db $00
#_12B44E: db $02 ; Direct Copy
#_12B44F: db $40, $00, $FF
#_12B452: db $22 ; Byte Fill
#_12B453: db $00
#_12B454: db $05 ; Direct Copy
#_12B455: db $E7, $FF, $C3, $FF, $00, $FF
#_12B45B: db $45 ; Word Fill
#_12B45C: db $FF, $00 ; Word Fill
#_12B45E: db $01 ; Direct Copy
#_12B45F: db $00, $FF
#_12B461: db $25 ; Byte Fill
#_12B462: db $00
#_12B463: db $0E ; Direct Copy
#_12B464: db $B7, $48, $F7, $88, $D7, $E8, $DB, $E4
#_12B46C: db $84, $9B, $4B, $AC, $E0, $40, $FF
#_12B473: db $24 ; Byte Fill
#_12B474: db $00
#_12B475: db $03 ; Direct Copy
#_12B476: db $60, $10, $1F, $00
#_12B47A: db $43 ; Word Fill
#_12B47B: db $AD, $3F ; Word Fill
#_12B47D: db $8B ; Repeat Fill
#_12B47E: db $DC, $00 ; Repeat Fill bytes
#_12B480: db $22 ; Byte Fill
#_12B481: db $40
#_12B482: db $00 ; Direct Copy
#_12B483: db $17
#_12B484: db $22 ; Byte Fill
#_12B485: db $00
#_12B486: db $90 ; Repeat Fill
#_12B487: db $EF, $00 ; Repeat Fill bytes
#_12B489: db $22 ; Byte Fill
#_12B48A: db $00
#_12B48B: db $00 ; Direct Copy
#_12B48C: db $81
#_12B48D: db $23 ; Byte Fill
#_12B48E: db $00
#_12B48F: db $11 ; Direct Copy
#_12B490: db $BB, $3F, $80, $42, $80, $7F, $C0, $3F
#_12B498: db $ED, $12, $EC, $1F, $F0, $0F, $F9, $06
#_12B4A0: db $40, $3D
#_12B4A2: db $25 ; Byte Fill
#_12B4A3: db $00
#_12B4A4: db $03 ; Direct Copy
#_12B4A5: db $F9, $FF, $00, $18
#_12B4A9: db $43 ; Word Fill
#_12B4AA: db $00, $FF ; Word Fill
#_12B4AC: db $47 ; Word Fill
#_12B4AD: db $FF, $00 ; Word Fill
#_12B4AF: db $01 ; Direct Copy
#_12B4B0: db $00, $E7
#_12B4B2: db $26 ; Byte Fill
#_12B4B3: db $00
#_12B4B4: db $01 ; Direct Copy
#_12B4B5: db $FF, $00
#_12B4B7: db $22 ; Byte Fill
#_12B4B8: db $FF
#_12B4B9: db $22 ; Byte Fill
#_12B4BA: db $00
#_12B4BB: db $02 ; Direct Copy
#_12B4BC: db $FF, $00, $FF
#_12B4BF: db $45 ; Word Fill
#_12B4C0: db $FF, $00 ; Word Fill
#_12B4C2: db $01 ; Direct Copy
#_12B4C3: db $00, $FF
#_12B4C5: db $23 ; Byte Fill
#_12B4C6: db $00
#_12B4C7: db $00 ; Direct Copy
#_12B4C8: db $F8
#_12B4C9: db $44 ; Word Fill
#_12B4CA: db $7F, $F0 ; Word Fill
#_12B4CC: db $04 ; Direct Copy
#_12B4CD: db $FC, $7F, $FF, $7F, $FC
#_12B4D2: db $43 ; Word Fill
#_12B4D3: db $7F, $F8 ; Word Fill
#_12B4D5: db $28 ; Byte Fill
#_12B4D6: db $7F
#_12B4D7: db $43 ; Word Fill
#_12B4D8: db $00, $FF ; Word Fill
#_12B4DA: db $04 ; Direct Copy
#_12B4DB: db $1F, $FF, $F8, $FF, $80
#_12B4E0: db $45 ; Word Fill
#_12B4E1: db $FF, $00 ; Word Fill
#_12B4E3: db $28 ; Byte Fill
#_12B4E4: db $FF
#_12B4E5: db $09 ; Direct Copy
#_12B4E6: db $D4, $54, $D6, $56, $C0, $40, $C6, $46
#_12B4EE: db $F0, $40
#_12B4F0: db $44 ; Word Fill
#_12B4F1: db $FF, $7F ; Word Fill
#_12B4F3: db $05 ; Direct Copy
#_12B4F4: db $00, $2B, $29, $3F, $39, $3F
#_12B4FA: db $24 ; Byte Fill
#_12B4FB: db $00
#_12B4FC: db $07 ; Direct Copy
#_12B4FD: db $73, $73, $18, $18, $CE, $CE, $00, $00
#_12B505: db $24 ; Byte Fill
#_12B506: db $FF
#_12B507: db $05 ; Direct Copy
#_12B508: db $00, $FF, $8C, $E7, $31, $FF
#_12B50E: db $22 ; Byte Fill
#_12B50F: db $00
#_12B510: db $07 ; Direct Copy
#_12B511: db $3F, $C0, $57, $B7, $A8, $6F, $A7, $68
#_12B519: db $43 ; Word Fill
#_12B51A: db $AF, $60 ; Word Fill
#_12B51C: db $43 ; Word Fill
#_12B51D: db $AC, $63 ; Word Fill
#_12B51F: db $03 ; Direct Copy
#_12B520: db $00, $08, $10, $10
#_12B524: db $23 ; Byte Fill
#_12B525: db $17
#_12B526: db $85 ; Repeat Fill
#_12B527: db $FF, $01 ; Repeat Fill bytes
#_12B529: db $45 ; Word Fill
#_12B52A: db $FF, $00 ; Word Fill
#_12B52C: db $43 ; Word Fill
#_12B52D: db $00, $FF ; Word Fill
#_12B52F: db $23 ; Byte Fill
#_12B530: db $00
#_12B531: db $23 ; Byte Fill
#_12B532: db $FF
#_12B533: db $4F ; Word Fill
#_12B534: db $AC, $63 ; Word Fill
#_12B536: db $27 ; Byte Fill
#_12B537: db $17
#_12B538: db $4E ; Word Fill
#_12B539: db $00, $FF ; Word Fill
#_12B53B: db $28 ; Byte Fill
#_12B53C: db $FF
#_12B53D: db $E4, $30 ; EXT Byte Fill
#_12B53F: db $00
#_12B540: db $09 ; Direct Copy
#_12B541: db $77, $55, $FF, $FF, $AA, $AA, $55, $AA
#_12B549: db $BB, $AA
#_12B54B: db $43 ; Word Fill
#_12B54C: db $55, $FF ; Word Fill
#_12B54E: db $01 ; Direct Copy
#_12B54F: db $AA, $88
#_12B551: db $22 ; Byte Fill
#_12B552: db $00
#_12B553: db $00 ; Direct Copy
#_12B554: db $44
#_12B555: db $22 ; Byte Fill
#_12B556: db $00
#_12B557: db $07 ; Direct Copy
#_12B558: db $FC, $97, $C6, $6B, $FC, $96, $CE, $7B
#_12B560: db $87 ; Repeat Fill
#_12B561: db $A8, $03 ; Repeat Fill bytes
#_12B563: db $03 ; Direct Copy
#_12B564: db $00, $10, $01, $00
#_12B568: db $83 ; Repeat Fill
#_12B569: db $B8, $03 ; Repeat Fill bytes
#_12B56B: db $14 ; Direct Copy
#_12B56C: db $FC, $96, $C4, $53, $FB, $94, $D7, $69
#_12B574: db $ED, $81, $F5, $2B, $FF, $8A, $FF, $D5
#_12B57C: db $01, $28, $00, $00, $12
#_12B581: db $22 ; Byte Fill
#_12B582: db $00
#_12B583: db $02 ; Direct Copy
#_12B584: db $FF, $FF, $DF
#_12B587: db $26 ; Byte Fill
#_12B588: db $FF
#_12B589: db $00 ; Direct Copy
#_12B58A: db $FB
#_12B58B: db $24 ; Byte Fill
#_12B58C: db $FF
#_12B58D: db $27 ; Byte Fill
#_12B58E: db $00
#_12B58F: db $43 ; Word Fill
#_12B590: db $EF, $3C ; Word Fill
#_12B592: db $01 ; Direct Copy
#_12B593: db $FF, $18
#_12B595: db $43 ; Word Fill
#_12B596: db $FF, $00 ; Word Fill
#_12B598: db $22 ; Byte Fill
#_12B599: db $FF
#_12B59A: db $02 ; Direct Copy
#_12B59B: db $00, $FF, $00
#_12B59E: db $22 ; Byte Fill
#_12B59F: db $BD
#_12B5A0: db $00 ; Direct Copy
#_12B5A1: db $C3
#_12B5A2: db $22 ; Byte Fill
#_12B5A3: db $FF
#_12B5A4: db $00 ; Direct Copy
#_12B5A5: db $00
#_12B5A6: db $4F ; Word Fill
#_12B5A7: db $FF, $40 ; Word Fill
#_12B5A9: db $27 ; Byte Fill
#_12B5AA: db $7F
#_12B5AB: db $01 ; Direct Copy
#_12B5AC: db $FF, $C0
#_12B5AE: db $4D ; Word Fill
#_12B5AF: db $FF, $00 ; Word Fill
#_12B5B1: db $28 ; Byte Fill
#_12B5B2: db $FF
#_12B5B3: db $49 ; Word Fill
#_12B5B4: db $00, $FF ; Word Fill
#_12B5B6: db $00 ; Direct Copy
#_12B5B7: db $C0
#_12B5B8: db $43 ; Word Fill
#_12B5B9: db $FF, $40 ; Word Fill
#_12B5BB: db $26 ; Byte Fill
#_12B5BC: db $FF
#_12B5BD: db $11 ; Direct Copy
#_12B5BE: db $7F, $C0, $20, $C7, $2A, $C5, $2A, $E5
#_12B5C6: db $0A, $E7, $08, $FF, $1F, $FF, $0F, $FF
#_12B5CE: db $00, $1F
#_12B5D0: db $22 ; Byte Fill
#_12B5D1: db $12
#_12B5D2: db $02 ; Direct Copy
#_12B5D3: db $10, $00, $0F
#_12B5D6: db $22 ; Byte Fill
#_12B5D7: db $00
#_12B5D8: db $00 ; Direct Copy
#_12B5D9: db $49
#_12B5DA: db $45 ; Word Fill
#_12B5DB: db $B6, $FF ; Word Fill
#_12B5DD: db $00 ; Direct Copy
#_12B5DE: db $00
#_12B5DF: db $24 ; Byte Fill
#_12B5E0: db $FF
#_12B5E1: db $07 ; Direct Copy
#_12B5E2: db $00, $FF, $00, $30, $30, $00, $00, $FF
#_12B5EA: db $E5, $80 ; EXT Byte Fill
#_12B5EC: db $00
#_12B5ED: db $FF ; End of GFX 1C

;===================================================================================================

GFX_1D:
#_12B5EE: db $E0, $28 ; EXT Direct Copy
#_12B5F0: db $50, $DF, $04, $DF, $AF, $FF, $C0, $FF
#_12B5F8: db $85, $E5, $00, $C0, $02, $82, $00, $00
#_12B600: db $20, $20, $00, $00, $02, $02, $00, $00
#_12B608: db $28, $EF, $12, $FF, $93, $FF, $07, $FF
#_12B610: db $53, $DF, $21, $27, $00, $03, $00, $00
#_12B618: db $10
#_12B619: db $22 ; Byte Fill
#_12B61A: db $00
#_12B61B: db $00 ; Direct Copy
#_12B61C: db $20
#_12B61D: db $22 ; Byte Fill
#_12B61E: db $00
#_12B61F: db $E0, $27 ; EXT Direct Copy
#_12B621: db $F8, $67, $F0, $6F, $F3, $68, $F3, $64
#_12B629: db $93, $64, $B3, $24, $F3, $64, $F9, $6E
#_12B631: db $00, $00, $04, $08, $08, $48, $08, $00
#_12B639: db $78, $87, $87, $FF, $4C, $FF, $BB, $7C
#_12B641: db $87, $48, $97, $58, $DF, $10, $E7, $38
#_12B649: db $23 ; Byte Fill
#_12B64A: db $00
#_12B64B: db $02 ; Direct Copy
#_12B64C: db $30, $20, $20
#_12B64F: db $E4, $25 ; EXT Byte Fill
#_12B651: db $00
#_12B652: db $02 ; Direct Copy
#_12B653: db $01, $00, $03
#_12B656: db $23 ; Byte Fill
#_12B657: db $00
#_12B658: db $03 ; Direct Copy
#_12B659: db $01, $01, $03, $07
#_12B65D: db $23 ; Byte Fill
#_12B65E: db $00
#_12B65F: db $E0, $30 ; EXT Direct Copy
#_12B661: db $1F, $1F, $62, $63, $44, $C6, $38, $FD
#_12B669: db $00, $F1, $00, $8D, $00, $1F, $60, $80
#_12B671: db $01, $83, $CF, $F3, $00, $00, $7B, $3B
#_12B679: db $FD, $DD, $FE, $2E, $DF, $F7, $EF, $FB
#_12B681: db $77, $7D, $3B, $3E, $7F, $C4, $22, $D1
#_12B689: db $08, $04, $02, $01, $00, $00, $FF, $FD
#_12B691: db $01
#_12B692: db $24 ; Byte Fill
#_12B693: db $00
#_12B694: db $1F ; Direct Copy
#_12B695: db $80, $80, $C0, $C0, $E0, $E0, $FF, $02
#_12B69D: db $01, $00, $80, $40, $20, $10, $00, $00
#_12B6A5: db $F4, $FE, $FA, $FF, $FD, $7F, $7E, $3F
#_12B6AD: db $3F, $1F, $1F, $0F, $0F, $07, $FF, $00
#_12B6B5: db $84 ; Repeat Fill
#_12B6B6: db $D3, $00 ; Repeat Fill bytes
#_12B6B8: db $00 ; Direct Copy
#_12B6B9: db $08
#_12B6BA: db $48 ; Word Fill
#_12B6BB: db $00, $03 ; Word Fill
#_12B6BD: db $E0, $4E ; EXT Direct Copy
#_12B6BF: db $06, $01, $01, $06, $06, $08, $08, $06
#_12B6C7: db $06, $07, $07, $0F, $0E, $08, $10, $06
#_12B6CF: db $F6, $08, $E8, $10, $90, $60, $61, $80
#_12B6D7: db $82, $00, $05, $00, $0A, $00, $14, $08
#_12B6DF: db $70, $E8, $88, $05, $02, $04, $08, $00
#_12B6E7: db $2D, $00, $58, $01, $B9, $00, $60, $00
#_12B6EF: db $D0, $00, $A0, $00, $40, $00, $C0, $16
#_12B6F7: db $2F, $5C, $AC, $48, $98, $28, $30, $20
#_12B6FF: db $E0, $10, $F0, $08, $F8, $04, $7C, $0F
#_12B707: db $1F, $00, $60, $00, $6F, $60, $68
#_12B70E: db $83 ; Repeat Fill
#_12B70F: db $C8, $00 ; Repeat Fill bytes
#_12B711: db $0D ; Direct Copy
#_12B712: db $60, $1F, $10, $10, $1D, $1A, $1A, $1D
#_12B71A: db $1D, $1E, $38, $3F, $E0, $FF
#_12B720: db $22 ; Byte Fill
#_12B721: db $00
#_12B722: db $03 ; Direct Copy
#_12B723: db $FF, $B8, $88, $05
#_12B727: db $84 ; Repeat Fill
#_12B728: db $BE, $00 ; Repeat Fill bytes
#_12B72A: db $0B ; Direct Copy
#_12B72B: db $00, $30, $F0, $70, $F8, $38, $7C, $9C
#_12B733: db $BE, $4E, $5F, $A7
#_12B737: db $22 ; Byte Fill
#_12B738: db $00
#_12B739: db $08 ; Direct Copy
#_12B73A: db $FF, $00, $00, $88, $C4, $62, $B1, $58
#_12B742: db $FF
#_12B743: db $22 ; Byte Fill
#_12B744: db $00
#_12B745: db $44 ; Word Fill
#_12B746: db $80, $00 ; Word Fill
#_12B748: db $09 ; Direct Copy
#_12B749: db $C0, $40, $C0, $E0, $60, $72, $30, $B7
#_12B751: db $17, $D7
#_12B753: db $24 ; Byte Fill
#_12B754: db $00
#_12B755: db $03 ; Direct Copy
#_12B756: db $80, $40, $20, $01
#_12B75A: db $44 ; Word Fill
#_12B75B: db $01, $00 ; Word Fill
#_12B75D: db $09 ; Direct Copy
#_12B75E: db $03, $02, $03, $07, $06, $4E, $0C, $ED
#_12B766: db $E8, $EB
#_12B768: db $24 ; Byte Fill
#_12B769: db $00
#_12B76A: db $16 ; Direct Copy
#_12B76B: db $01, $02, $04, $F0, $69, $F3, $6F, $99
#_12B773: db $67, $AC, $63, $DF, $38, $EE, $1D, $77
#_12B77B: db $8E, $33, $CE, $06, $00, $00, $10
#_12B782: db $23 ; Byte Fill
#_12B783: db $00
#_12B784: db $0F ; Direct Copy
#_12B785: db $FF, $18, $EF, $18, $FF, $80, $FF, $C0
#_12B78D: db $FF, $00, $70, $EF, $30, $EF, $0F, $FF
#_12B795: db $32 ; Byte Fill
#_12B796: db $00
#_12B797: db $03 ; Direct Copy
#_12B798: db $01, $00, $01, $01
#_12B79C: db $23 ; Byte Fill
#_12B79D: db $00
#_12B79E: db $03 ; Direct Copy
#_12B79F: db $01, $01, $02, $02
#_12B7A3: db $84 ; Repeat Fill
#_12B7A4: db $F7, $00 ; Repeat Fill bytes
#_12B7A6: db $E0, $33 ; EXT Direct Copy
#_12B7A8: db $0E, $0E, $10, $30, $20, $E0, $46, $C7
#_12B7B0: db $78, $FE, $21, $F9, $0F, $1E, $30, $C0
#_12B7B8: db $00, $00, $01, $06, $70, $7D, $90, $99
#_12B7C0: db $04, $15, $0C, $6D, $1C, $9D, $68, $6D
#_12B7C8: db $80, $89, $00, $15, $82, $06, $0A, $12
#_12B7D0: db $62, $82, $06, $0A, $1D, $1F, $0E, $0F
#_12B7D8: db $07, $07, $03, $03
#_12B7DC: db $83 ; Repeat Fill
#_12B7DD: db $ED, $01 ; Repeat Fill bytes
#_12B7DF: db $03 ; Direct Copy
#_12B7E0: db $80, $80, $40, $C0
#_12B7E4: db $27 ; Byte Fill
#_12B7E5: db $00
#_12B7E6: db $86 ; Repeat Fill
#_12B7E7: db $68, $01 ; Repeat Fill bytes
#_12B7E9: db $10 ; Direct Copy
#_12B7EA: db $CE, $DF, $E7, $EF, $F3, $77, $79, $3B
#_12B7F2: db $3C, $88, $C4, $62, $31, $18, $0C, $06
#_12B7FA: db $03
#_12B7FB: db $84 ; Repeat Fill
#_12B7FC: db $2D, $02 ; Repeat Fill bytes
#_12B7FE: db $24 ; Byte Fill
#_12B7FF: db $00
#_12B800: db $85 ; Repeat Fill
#_12B801: db $CA, $00 ; Repeat Fill bytes
#_12B803: db $83 ; Repeat Fill
#_12B804: db $BD, $00 ; Repeat Fill bytes
#_12B806: db $02 ; Direct Copy
#_12B807: db $80, $40, $20
#_12B80A: db $22 ; Byte Fill
#_12B80B: db $10
#_12B80C: db $43 ; Word Fill
#_12B80D: db $20, $60 ; Word Fill
#_12B80F: db $0A ; Direct Copy
#_12B810: db $13, $73, $0C, $7F, $00, $7E, $00, $7D
#_12B818: db $00, $7A, $60
#_12B81B: db $23 ; Byte Fill
#_12B81C: db $80
#_12B81D: db $1C ; Direct Copy
#_12B81E: db $81, $C2, $CC, $00, $29, $00, $53, $80
#_12B826: db $A3, $04, $A6, $39, $7D, $00, $F9, $01
#_12B82E: db $C9, $11, $11, $10, $20, $40, $41, $82
#_12B836: db $06, $04, $08, $00, $80
#_12B83B: db $23 ; Byte Fill
#_12B83C: db $00
#_12B83D: db $0D ; Direct Copy
#_12B83E: db $01, $01, $81, $81, $02, $03, $3C, $BF
#_12B846: db $00, $7F, $50, $90, $A0, $A0
#_12B84C: db $22 ; Byte Fill
#_12B84D: db $40
#_12B84E: db $00 ; Direct Copy
#_12B84F: db $80
#_12B850: db $43 ; Word Fill
#_12B851: db $80, $E8 ; Word Fill
#_12B853: db $01 ; Direct Copy
#_12B854: db $84, $EC
#_12B856: db $45 ; Word Fill
#_12B857: db $02, $EE ; Word Fill
#_12B859: db $43 ; Word Fill
#_12B85A: db $01, $EF ; Word Fill
#_12B85C: db $25 ; Byte Fill
#_12B85D: db $10
#_12B85E: db $11 ; Direct Copy
#_12B85F: db $30, $70, $DC, $C4, $AE, $A2, $17, $11
#_12B867: db $0B, $08, $05, $04, $32, $12, $39, $29
#_12B86F: db $1C, $14
#_12B871: db $83 ; Repeat Fill
#_12B872: db $54, $02 ; Repeat Fill bytes
#_12B874: db $03 ; Direct Copy
#_12B875: db $01, $20, $10, $08
#_12B879: db $25 ; Byte Fill
#_12B87A: db $00
#_12B87B: db $09 ; Direct Copy
#_12B87C: db $80, $80, $C0, $40, $E0, $20, $70, $10
#_12B884: db $B8, $88
#_12B886: db $23 ; Byte Fill
#_12B887: db $00
#_12B888: db $05 ; Direct Copy
#_12B889: db $80, $C0, $60, $30, $01, $01
#_12B88F: db $25 ; Byte Fill
#_12B890: db $00
#_12B891: db $83 ; Repeat Fill
#_12B892: db $FA, $00 ; Repeat Fill bytes
#_12B894: db $1F ; Direct Copy
#_12B895: db $18, $18, $08, $08, $02, $04, $04, $09
#_12B89D: db $0E, $18, $20, $10, $98, $98, $00, $00
#_12B8A5: db $18, $18, $78, $78, $B0, $B0, $30, $30
#_12B8AD: db $70, $70, $64, $6C, $06, $1C, $64, $84
#_12B8B5: db $22 ; Byte Fill
#_12B8B6: db $08
#_12B8B7: db $E0, $44 ; EXT Direct Copy
#_12B8B9: db $10, $00, $13, $00, $12, $00, $18, $01
#_12B8C1: db $19, $03, $1A, $03, $19, $26, $32, $44
#_12B8C9: db $74, $0F, $0F, $07, $06, $05, $06, $0C
#_12B8D1: db $08, $58, $49, $B0, $91, $E0, $A1, $C0
#_12B8D9: db $41, $80, $83, $04, $04, $0A, $08, $14
#_12B8E1: db $12, $90, $20, $42, $84, $08, $13, $07
#_12B8E9: db $0D, $00, $C0, $00, $B0, $04, $A0, $08
#_12B8F1: db $40, $20, $60, $20, $E0, $18, $F8, $07
#_12B8F9: db $FF, $3F, $40, $44, $88
#_12B8FE: db $83 ; Repeat Fill
#_12B8FF: db $83, $01 ; Repeat Fill bytes
#_12B901: db $13 ; Direct Copy
#_12B902: db $00, $03, $00, $0D, $20, $05, $10, $02
#_12B90A: db $04, $06, $04, $07, $18, $1F, $E0, $FF
#_12B912: db $FC, $02, $22, $11
#_12B916: db $83 ; Repeat Fill
#_12B917: db $9B, $01 ; Repeat Fill bytes
#_12B919: db $05 ; Direct Copy
#_12B91A: db $00, $FF, $40, $C0, $1F, $9F
#_12B920: db $49 ; Word Fill
#_12B921: db $3F, $BF ; Word Fill
#_12B923: db $02 ; Direct Copy
#_12B924: db $00, $3F, $60
#_12B927: db $24 ; Byte Fill
#_12B928: db $40
#_12B929: db $01 ; Direct Copy
#_12B92A: db $0C, $0C
#_12B92C: db $23 ; Byte Fill
#_12B92D: db $07
#_12B92E: db $01 ; Direct Copy
#_12B92F: db $03, $03
#_12B931: db $23 ; Byte Fill
#_12B932: db $01
#_12B933: db $23 ; Byte Fill
#_12B934: db $00
#_12B935: db $0B ; Direct Copy
#_12B936: db $10, $08, $08, $04, $02, $02, $01, $01
#_12B93E: db $63, $6F, $E0, $EF
#_12B942: db $47 ; Word Fill
#_12B943: db $C0, $DF ; Word Fill
#_12B945: db $43 ; Word Fill
#_12B946: db $80, $BE ; Word Fill
#_12B948: db $01 ; Direct Copy
#_12B949: db $10, $10
#_12B94B: db $22 ; Byte Fill
#_12B94C: db $20
#_12B94D: db $04 ; Direct Copy
#_12B94E: db $21, $43, $4F, $00, $30
#_12B953: db $2D ; Byte Fill
#_12B954: db $00
#_12B955: db $01 ; Direct Copy
#_12B956: db $DE, $F0
#_12B958: db $26 ; Byte Fill
#_12B959: db $00
#_12B95A: db $05 ; Direct Copy
#_12B95B: db $74, $00, $68, $03, $53, $0C
#_12B961: db $43 ; Word Fill
#_12B962: db $0F, $00 ; Word Fill
#_12B964: db $00 ; Direct Copy
#_12B965: db $03
#_12B966: db $23 ; Byte Fill
#_12B967: db $00
#_12B968: db $E0, $2B ; EXT Direct Copy
#_12B96A: db $F8, $F0, $E0, $60, $10, $0F, $03, $03
#_12B972: db $21, $21, $C3, $E3, $02, $C2, $06, $86
#_12B97A: db $18, $98, $64, $64, $9C, $9C, $6C, $6C
#_12B982: db $10, $10, $21, $41, $C7, $9A, $62, $82
#_12B98A: db $00, $03, $1C, $3C, $03, $23, $00, $80
#_12B992: db $00, $91, $00, $4F
#_12B996: db $43 ; Word Fill
#_12B997: db $00, $27 ; Word Fill
#_12B999: db $E0, $2F ; EXT Direct Copy
#_12B99B: db $FC, $C3, $C0, $60, $60, $30, $1F, $1F
#_12B9A3: db $00, $EF, $00, $0F, $80, $EF, $10, $D3
#_12B9AB: db $10, $D1, $22, $A0, $26, $A3, $4C, $45
#_12B9B3: db $F8, $F8, $3C, $6E, $63, $C3, $C4, $88
#_12B9BB: db $8E, $8A, $87, $85, $43, $C2, $41, $C1
#_12B9C3: db $30, $F0, $0C, $FC, $03, $7F, $00, $9F
#_12B9CB: db $84 ; Repeat Fill
#_12B9CC: db $BD, $00 ; Repeat Fill bytes
#_12B9CE: db $1A ; Direct Copy
#_12B9CF: db $80, $E0, $78, $5D, $45, $29, $21, $92
#_12B9D7: db $93, $CE, $4F, $EC, $AF, $70, $5F, $C0
#_12B9DF: db $FE, $00, $F9, $18, $08, $00, $80, $40
#_12B9E7: db $21, $07, $1E
#_12B9EA: db $E5, $7F ; EXT Byte Fill
#_12B9EC: db $00
#_12B9ED: db $FF ; End of GFX 1D

;===================================================================================================

GFX_1E:
#_12B9EE: db $2F ; Byte Fill
#_12B9EF: db $00
#_12B9F0: db $37 ; Byte Fill
#_12B9F1: db $FF
#_12B9F2: db $27 ; Byte Fill
#_12B9F3: db $00
#_12B9F4: db $07 ; Direct Copy
#_12B9F5: db $07, $07, $68, $0F, $57, $18, $28, $30
#_12B9FD: db $43 ; Word Fill
#_12B9FE: db $50, $60 ; Word Fill
#_12BA00: db $43 ; Word Fill
#_12BA01: db $A0, $C0 ; Word Fill
#_12BA03: db $0D ; Direct Copy
#_12BA04: db $F8, $F0, $E0, $C0, $80, $80, $00, $00
#_12BA0C: db $E4, $E0, $16, $F0, $EA, $18
#_12BA12: db $43 ; Word Fill
#_12BA13: db $14, $0C ; Word Fill
#_12BA15: db $01 ; Direct Copy
#_12BA16: db $0A, $06
#_12BA18: db $43 ; Word Fill
#_12BA19: db $05, $03 ; Word Fill
#_12BA1B: db $0F ; Direct Copy
#_12BA1C: db $1F, $0F, $07, $03, $03, $01, $00, $00
#_12BA24: db $38, $00, $C4, $38, $3A, $FC, $C5, $C6
#_12BA2C: db $45 ; Word Fill
#_12BA2D: db $05, $06 ; Word Fill
#_12BA2F: db $01 ; Direct Copy
#_12BA30: db $0A, $0C
#_12BA32: db $22 ; Byte Fill
#_12BA33: db $00
#_12BA34: db $00 ; Direct Copy
#_12BA35: db $38
#_12BA36: db $22 ; Byte Fill
#_12BA37: db $F8
#_12BA38: db $00 ; Direct Copy
#_12BA39: db $F0
#_12BA3A: db $25 ; Byte Fill
#_12BA3B: db $FF
#_12BA3C: db $09 ; Direct Copy
#_12BA3D: db $FE, $FE, $F0, $F1, $C0, $CF, $00, $3F
#_12BA45: db $00, $FF
#_12BA47: db $22 ; Byte Fill
#_12BA48: db $00
#_12BA49: db $04 ; Direct Copy
#_12BA4A: db $01, $0E, $30, $C0, $00
#_12BA4F: db $25 ; Byte Fill
#_12BA50: db $FF
#_12BA51: db $22 ; Byte Fill
#_12BA52: db $00
#_12BA53: db $46 ; Word Fill
#_12BA54: db $FF, $00 ; Word Fill
#_12BA56: db $22 ; Byte Fill
#_12BA57: db $00
#_12BA58: db $00 ; Direct Copy
#_12BA59: db $FF
#_12BA5A: db $23 ; Byte Fill
#_12BA5B: db $00
#_12BA5C: db $0F ; Direct Copy
#_12BA5D: db $E3, $3E, $E7, $3C, $FF, $99, $7C, $C3
#_12BA65: db $3E, $E3, $1F, $F9, $07, $FC, $03, $FE
#_12BA6D: db $27 ; Byte Fill
#_12BA6E: db $FF
#_12BA6F: db $0F ; Direct Copy
#_12BA70: db $C3, $7E, $87, $FC, $0F, $F9, $DE, $33
#_12BA78: db $DE, $F7, $3E, $E3, $FF, $C9, $F7, $1C
#_12BA80: db $27 ; Byte Fill
#_12BA81: db $FF
#_12BA82: db $E4, $A7 ; EXT Byte Fill
#_12BA84: db $00
#_12BA85: db $0A ; Direct Copy
#_12BA86: db $20, $E0, $CC, $3C, $32, $0E, $0D, $03
#_12BA8E: db $02, $01, $01
#_12BA91: db $24 ; Byte Fill
#_12BA92: db $00
#_12BA93: db $02 ; Direct Copy
#_12BA94: db $1F, $03, $01
#_12BA97: db $28 ; Byte Fill
#_12BA98: db $00
#_12BA99: db $0B ; Direct Copy
#_12BA9A: db $C0, $00, $60, $00, $EA, $E2, $1D, $FF
#_12BAA2: db $E2, $1D, $1D, $00
#_12BAA6: db $23 ; Byte Fill
#_12BAA7: db $FF
#_12BAA8: db $00 ; Direct Copy
#_12BAA9: db $1D
#_12BAAA: db $22 ; Byte Fill
#_12BAAB: db $00
#_12BAAC: db $43 ; Word Fill
#_12BAAD: db $A0, $C0 ; Word Fill
#_12BAAF: db $13 ; Direct Copy
#_12BAB0: db $50, $60, $28, $30, $68, $30, $77, $18
#_12BAB8: db $38, $0F, $07, $07, $00, $00, $80, $C0
#_12BAC0: db $C0, $E0, $F0, $F8
#_12BAC4: db $43 ; Word Fill
#_12BAC5: db $05, $03 ; Word Fill
#_12BAC7: db $09 ; Direct Copy
#_12BAC8: db $1A, $06, $25, $1C, $DE, $38, $2C, $E0
#_12BAD0: db $D8, $C0
#_12BAD2: db $23 ; Byte Fill
#_12BAD3: db $00
#_12BAD4: db $05 ; Direct Copy
#_12BAD5: db $01, $03, $07, $1F, $3F, $FF
#_12BADB: db $43 ; Word Fill
#_12BADC: db $0A, $0C ; Word Fill
#_12BADE: db $0B ; Direct Copy
#_12BADF: db $1A, $0C, $6A, $0C, $1C, $18, $E4, $F8
#_12BAE7: db $18, $E0, $E0, $00
#_12BAEB: db $23 ; Byte Fill
#_12BAEC: db $F0
#_12BAED: db $00 ; Direct Copy
#_12BAEE: db $E0
#_12BAEF: db $22 ; Byte Fill
#_12BAF0: db $00
#_12BAF1: db $07 ; Direct Copy
#_12BAF2: db $FC, $FC, $F8, $FB, $E0, $E7, $C0, $DF
#_12BAFA: db $43 ; Word Fill
#_12BAFB: db $80, $BF ; Word Fill
#_12BAFD: db $43 ; Word Fill
#_12BAFE: db $00, $7F ; Word Fill
#_12BB00: db $07 ; Direct Copy
#_12BB01: db $03, $04, $18, $20, $40, $40, $80, $80
#_12BB09: db $37 ; Byte Fill
#_12BB0A: db $00
#_12BB0B: db $0F ; Direct Copy
#_12BB0C: db $C7, $7E, $F7, $3C, $FF, $99, $7E, $C3
#_12BB14: db $3C, $E7, $3E, $E3, $7C, $CF, $F1, $9F
#_12BB1C: db $27 ; Byte Fill
#_12BB1D: db $FF
#_12BB1E: db $0F ; Direct Copy
#_12BB1F: db $C1, $3E, $E0, $7F, $E4, $3F, $FC, $9F
#_12BB27: db $7E, $C7, $7F, $C3, $FF, $99, $F7, $3C
#_12BB2F: db $27 ; Byte Fill
#_12BB30: db $FF
#_12BB31: db $E4, $A9 ; EXT Byte Fill
#_12BB33: db $00
#_12BB34: db $12 ; Direct Copy
#_12BB35: db $03, $03, $64, $07, $CB, $0C, $34, $38
#_12BB3D: db $C8, $F0, $30, $C0, $C0, $00, $FF, $FC
#_12BB45: db $F8, $F0, $C0
#_12BB48: db $22 ; Byte Fill
#_12BB49: db $00
#_12BB4A: db $04 ; Direct Copy
#_12BB4B: db $FC, $FF, $03, $FC, $FC
#_12BB50: db $32 ; Byte Fill
#_12BB51: db $00
#_12BB52: db $E0, $26 ; EXT Direct Copy
#_12BB54: db $18, $18, $24, $3C, $5A, $66, $A5, $C3
#_12BB5C: db $AA, $C6, $B4, $CC, $48, $78, $30, $30
#_12BB64: db $E7, $C3, $81, $00, $01, $03, $87, $CF
#_12BB6C: db $3C, $00, $42, $3C, $BD, $7E, $AD, $66
#_12BB74: db $A5, $66, $5D, $3E, $42, $3C, $3E
#_12BB7B: db $23 ; Byte Fill
#_12BB7C: db $00
#_12BB7D: db $01 ; Direct Copy
#_12BB7E: db $18, $18
#_12BB80: db $23 ; Byte Fill
#_12BB81: db $00
#_12BB82: db $4E ; Word Fill
#_12BB83: db $FF, $00 ; Word Fill
#_12BB85: db $28 ; Byte Fill
#_12BB86: db $00
#_12BB87: db $02 ; Direct Copy
#_12BB88: db $7F, $80, $BF
#_12BB8B: db $43 ; Word Fill
#_12BB8C: db $C0, $DF ; Word Fill
#_12BB8E: db $43 ; Word Fill
#_12BB8F: db $E0, $EF ; Word Fill
#_12BB91: db $43 ; Word Fill
#_12BB92: db $C0, $DF ; Word Fill
#_12BB94: db $07 ; Direct Copy
#_12BB95: db $80, $40, $20, $20, $10, $10, $20, $20
#_12BB9D: db $E6, $6F ; EXT Byte Fill
#_12BB9F: db $00
#_12BBA0: db $FF ; End of GFX 1E

;===================================================================================================

GFX_1F:
#_12BBA1: db $09 ; Direct Copy
#_12BBA2: db $68, $B7, $7D, $B2, $37, $DA, $32, $DF
#_12BBAA: db $F2, $1F
#_12BBAC: db $45 ; Word Fill
#_12BBAD: db $2A, $DF ; Word Fill
#_12BBAF: db $27 ; Byte Fill
#_12BBB0: db $00
#_12BBB1: db $0F ; Direct Copy
#_12BBB2: db $08, $F7, $FF, $00, $BF, $C0, $78, $FF
#_12BBBA: db $C7, $3F, $60, $9F, $3F, $FF, $60, $9F
#_12BBC2: db $27 ; Byte Fill
#_12BBC3: db $00
#_12BBC4: db $0F ; Direct Copy
#_12BBC5: db $FC, $00, $FE, $00, $07, $00, $03, $F8
#_12BBCD: db $74, $FC, $48, $8F, $47, $87, $7F, $80
#_12BBD5: db $22 ; Byte Fill
#_12BBD6: db $FF
#_12BBD7: db $14 ; Direct Copy
#_12BBD8: db $07, $03, $70, $78, $7F, $1F, $00, $3F
#_12BBE0: db $00, $F0, $00, $E0, $0F, $17, $1F, $08
#_12BBE8: db $F8, $F0, $F0, $FF, $00
#_12BBED: db $22 ; Byte Fill
#_12BBEE: db $FF
#_12BBEF: db $1C ; Direct Copy
#_12BBF0: db $F0, $E0, $07, $0F, $FF, $D4, $0F, $D2
#_12BBF8: db $0E, $D4, $0C, $D9, $08, $D3, $11, $C7
#_12BC00: db $03, $BF, $07, $BF, $0E, $E0, $E1, $E3
#_12BC08: db $E7, $EE, $FC, $F8, $F0
#_12BC0D: db $44 ; Word Fill
#_12BC0E: db $8C, $F7 ; Word Fill
#_12BC10: db $0A ; Direct Copy
#_12BC11: db $77, $4C, $B7, $AC, $D7, $5C, $67, $A8
#_12BC19: db $37, $54, $DB
#_12BC1C: db $24 ; Byte Fill
#_12BC1D: db $00
#_12BC1E: db $E0, $98 ; EXT Direct Copy
#_12BC20: db $80, $40, $E0, $DE, $77, $DC, $77, $B9
#_12BC28: db $6F, $B3, $DF, $E7, $BC, $DE, $73, $B9
#_12BC30: db $CF, $9F, $18, $77, $77, $6F, $DF, $BC
#_12BC38: db $73, $CF, $68, $7B, $EE, $3B, $EE, $9D
#_12BC40: db $F6, $CD, $FB, $E7, $3D, $7B, $CE, $9D
#_12BC48: db $F3, $F9, $18, $EE, $EE, $F6, $FB, $3D
#_12BC50: db $CE, $F3, $16, $FF, $58, $33, $6F, $5C
#_12BC58: db $37, $EF, $BB, $E7, $DC, $B3, $5F, $B9
#_12BC60: db $6F, $DC, $6F, $58, $EF, $B7, $3B, $DC
#_12BC68: db $5F, $6F, $6F, $FF, $1A, $CC, $F6, $3A
#_12BC70: db $EC, $F7, $DD, $E7, $3B, $CD, $FA, $9D
#_12BC78: db $F6, $3B, $F6, $1A, $F7, $ED, $DC, $3B
#_12BC80: db $FA, $F6, $F6, $BE, $00, $9C, $00, $C9
#_12BC88: db $41, $E3, $22, $CE, $2D, $DD, $1B, $BF
#_12BC90: db $3A, $9E, $78, $5D, $6B, $36, $9D, $93
#_12BC98: db $A7, $47, $87, $3C, $00, $19, $01, $C3
#_12BCA0: db $C2, $FE, $7D, $C7, $80, $9F, $18, $1F
#_12BCA8: db $20, $30, $5F, $DB, $E6, $3D, $83, $FF
#_12BCB0: db $E7, $D8, $BF, $B4, $03, $E8, $07, $F0
#_12BCB8: db $0F
#_12BCB9: db $47 ; Word Fill
#_12BCBA: db $F1, $0E ; Word Fill
#_12BCBC: db $04 ; Direct Copy
#_12BCBD: db $FF, $00, $7B, $77, $6F
#_12BCC2: db $23 ; Byte Fill
#_12BCC3: db $6E
#_12BCC4: db $0A ; Direct Copy
#_12BCC5: db $60, $00, $FF, $7E, $81, $81, $7E, $7E
#_12BCCD: db $FF, $E7, $E7
#_12BCD0: db $43 ; Word Fill
#_12BCD1: db $DB, $C3 ; Word Fill
#_12BCD3: db $0B ; Direct Copy
#_12BCD4: db $FF, $00, $FF, $81, $00, $00, $18, $3C
#_12BCDC: db $3C, $00, $FF, $00
#_12BCE0: db $4B ; Word Fill
#_12BCE1: db $00, $FF ; Word Fill
#_12BCE3: db $00 ; Direct Copy
#_12BCE4: db $FF
#_12BCE5: db $28 ; Byte Fill
#_12BCE6: db $00
#_12BCE7: db $05 ; Direct Copy
#_12BCE8: db $2D, $C0, $17, $E0, $0F, $F0
#_12BCEE: db $43 ; Word Fill
#_12BCEF: db $8F, $70 ; Word Fill
#_12BCF1: db $11 ; Direct Copy
#_12BCF2: db $8E, $70, $8F, $70, $FF, $00, $DE, $EE
#_12BCFA: db $F6, $76, $76, $77, $77, $07, $FF, $00
#_12BD02: db $FF, $7F
#_12BD04: db $45 ; Word Fill
#_12BD05: db $E0, $60 ; Word Fill
#_12BD07: db $07 ; Direct Copy
#_12BD08: db $B0, $30, $DF, $9F, $70, $C0, $FF, $80
#_12BD10: db $22 ; Byte Fill
#_12BD11: db $9F
#_12BD12: db $0A ; Direct Copy
#_12BD13: db $CF, $60, $3F, $FC, $01, $FB, $79, $FE
#_12BD1B: db $7C, $C5, $44
#_12BD1E: db $47 ; Word Fill
#_12BD1F: db $C3, $42 ; Word Fill
#_12BD21: db $03 ; Direct Copy
#_12BD22: db $FE, $86, $83, $BB
#_12BD26: db $23 ; Byte Fill
#_12BD27: db $BD
#_12BD28: db $E0, $33 ; EXT Direct Copy
#_12BD2A: db $CF, $70, $CE, $78, $47, $B9, $63, $BC
#_12BD32: db $F1, $1E, $38, $CF, $1C, $E7, $0E, $F3
#_12BD3A: db $77, $7B, $3A, $3D, $1E, $0F, $07, $03
#_12BD42: db $FF, $78, $7E, $00, $F7, $89, $E3, $1C
#_12BD4A: db $C9, $3E, $9C, $77, $36, $EB, $63, $DD
#_12BD52: db $02, $87, $6A, $DD, $BE, $77, $E3, $C1
#_12BD5A: db $BF, $0C, $BE, $0D
#_12BD5E: db $83 ; Repeat Fill
#_12BD5F: db $E0, $01 ; Repeat Fill bytes
#_12BD61: db $46 ; Word Fill
#_12BD62: db $BF, $0C ; Word Fill
#_12BD64: db $00 ; Direct Copy
#_12BD65: db $0D
#_12BD66: db $27 ; Byte Fill
#_12BD67: db $F0
#_12BD68: db $01 ; Direct Copy
#_12BD69: db $2A, $ED
#_12BD6B: db $49 ; Word Fill
#_12BD6C: db $22, $E5 ; Word Fill
#_12BD6E: db $04 ; Direct Copy
#_12BD6F: db $FA, $FD, $F2, $FD, $F0
#_12BD74: db $24 ; Byte Fill
#_12BD75: db $F8
#_12BD76: db $0C ; Direct Copy
#_12BD77: db $E0, $00, $7F, $80, $9F, $60, $CF, $30
#_12BD7F: db $EF, $90, $E7, $D8, $77
#_12BD84: db $44 ; Word Fill
#_12BD85: db $E8, $BF ; Word Fill
#_12BD87: db $04 ; Direct Copy
#_12BD88: db $03, $03, $01, $81, $C1
#_12BD8D: db $22 ; Byte Fill
#_12BD8E: db $E1
#_12BD8F: db $E0, $23 ; EXT Direct Copy
#_12BD91: db $3F, $C0, $CF, $30, $F7, $C8, $FB, $64
#_12BD99: db $FF, $F4, $DB, $30, $DB, $F0, $3B, $E0
#_12BDA1: db $03, $03, $C1, $61, $F1, $35, $F5, $E5
#_12BDA9: db $7E, $AB, $7E, $BB, $B9, $5F, $BF, $4E
#_12BDB1: db $DF, $20, $E8, $18
#_12BDB5: db $43 ; Word Fill
#_12BDB6: db $FF, $00 ; Word Fill
#_12BDB8: db $11 ; Direct Copy
#_12BDB9: db $2B, $3B, $1F, $0E, $00, $07, $C0, $FF
#_12BDC1: db $7B, $9F, $BC, $4F, $9F, $67, $C7, $38
#_12BDC9: db $F3, $0F
#_12BDCB: db $45 ; Word Fill
#_12BDCC: db $FF, $00 ; Word Fill
#_12BDCE: db $02 ; Direct Copy
#_12BDCF: db $1F, $0F, $07
#_12BDD2: db $22 ; Byte Fill
#_12BDD3: db $00
#_12BDD4: db $E0, $2A ; EXT Direct Copy
#_12BDD6: db $C0, $FF, $EC, $1E, $ED, $0F, $DD, $1B
#_12BDDE: db $EB, $35, $DF, $36, $EF, $1B, $F3, $0D
#_12BDE6: db $FF, $00, $C1, $D0, $A4, $8E, $8F, $C7
#_12BDEE: db $C3, $C3, $60, $BF, $CF, $7F, $DF, $77
#_12BDF6: db $FF, $3A, $FF, $9C, $FF, $4F, $DF, $20
#_12BDFE: db $97, $58, $7F
#_12BE01: db $22 ; Byte Fill
#_12BE02: db $FF
#_12BE03: db $13 ; Direct Copy
#_12BE04: db $7F, $BF, $DF, $A0, $C1, $3E, $4F, $B0
#_12BE0C: db $D0, $2F, $EF, $1F, $D8, $38, $B7, $70
#_12BE14: db $EF, $60, $DB, $40
#_12BE18: db $23 ; Byte Fill
#_12BE19: db $00
#_12BE1A: db $E0, $25 ; EXT Direct Copy
#_12BE1C: db $07, $0F, $1F, $3C, $BD, $7E, $7E, $FF
#_12BE24: db $C3, $C3, $BD, $81, $7E, $00, $C3, $00
#_12BE2C: db $BD, $00, $C3, $3C, $00, $00, $3C, $7E
#_12BE34: db $FF, $FF, $C3, $3C, $FF, $40, $F9, $A6
#_12BE3C: db $FD, $A2, $FD, $B2, $FD, $D2
#_12BE42: db $43 ; Word Fill
#_12BE43: db $FD, $52 ; Word Fill
#_12BE45: db $06 ; Direct Copy
#_12BE46: db $FF, $50, $40, $A0, $A0, $B0, $D0
#_12BE4D: db $22 ; Byte Fill
#_12BE4E: db $50
#_12BE4F: db $0F ; Direct Copy
#_12BE50: db $83, $7C, $F3, $0C, $0B, $F4, $F7, $F8
#_12BE58: db $1B, $1C, $ED, $0E, $F7, $06, $DB, $02
#_12BE60: db $23 ; Byte Fill
#_12BE61: db $00
#_12BE62: db $14 ; Direct Copy
#_12BE63: db $E0, $F0, $F8, $3C, $CF, $20, $A7, $5F
#_12BE6B: db $E9, $56, $ED, $72, $95, $5A, $AF, $6F
#_12BE73: db $50, $B0, $67, $BF, $1F
#_12BE78: db $22 ; Byte Fill
#_12BE79: db $00
#_12BE7A: db $18 ; Direct Copy
#_12BE7B: db $20, $10, $0F, $00, $FC, $03, $B3, $7C
#_12BE83: db $74, $97, $8A, $FB, $32, $4B, $5D, $65
#_12BE8B: db $4D, $7D, $7F, $45, $00, $00, $08, $04
#_12BE93: db $84
#_12BE94: db $22 ; Byte Fill
#_12BE95: db $82
#_12BE96: db $02 ; Direct Copy
#_12BE97: db $FF, $00, $FF
#_12BE9A: db $83 ; Repeat Fill
#_12BE9B: db $6F, $01 ; Repeat Fill bytes
#_12BE9D: db $00 ; Direct Copy
#_12BE9E: db $72
#_12BE9F: db $46 ; Word Fill
#_12BEA0: db $8F, $71 ; Word Fill
#_12BEA2: db $04 ; Direct Copy
#_12BEA3: db $70, $00, $70, $74, $71
#_12BEA8: db $22 ; Byte Fill
#_12BEA9: db $74
#_12BEAA: db $00 ; Direct Copy
#_12BEAB: db $76
#_12BEAC: db $45 ; Word Fill
#_12BEAD: db $FF, $00 ; Word Fill
#_12BEAF: db $17 ; Direct Copy
#_12BEB0: db $7F, $40, $7C, $00, $7B, $03, $B7, $87
#_12BEB8: db $CF, $CC, $00, $00, $3F, $9C, $BB, $B4
#_12BEC0: db $48, $30, $00, $FF, $BD, $BE, $7E, $7F
#_12BEC8: db $22 ; Byte Fill
#_12BEC9: db $FF
#_12BECA: db $1A ; Direct Copy
#_12BECB: db $C1, $FF, $80, $FF, $12, $FF, $24, $00
#_12BED3: db $40, $80, $00, $00, $3E, $6D, $DA, $FF
#_12BEDB: db $49, $FD, $91, $F9, $25, $F1, $CD, $E1
#_12BEE3: db $1D, $01, $FD
#_12BEE6: db $23 ; Byte Fill
#_12BEE7: db $FF
#_12BEE8: db $E0, $6A ; EXT Direct Copy
#_12BEEA: db $B5, $6B, $D7, $2F, $1F, $FF, $FD, $00
#_12BEF2: db $73, $EE, $F7, $DE, $EF, $BD, $DE, $7B
#_12BEFA: db $BD, $F7, $7B, $CF, $F7, $3C, $BE, $B3
#_12BF02: db $EE, $DE, $BD, $7B, $F7, $CF, $3C, $D0
#_12BF0A: db $CE, $77, $EF, $7B, $F7, $BD, $7B, $DE
#_12BF12: db $BD, $EF, $DE, $F3, $EF, $3C, $7D, $CD
#_12BF1A: db $77, $7B, $BD, $DE, $EF, $F3, $3C, $0B
#_12BF22: db $DE, $B7, $6F, $3B, $F7, $DD, $FB, $DE
#_12BF2A: db $BC, $6F, $DE, $77, $EF, $BB, $77, $BC
#_12BF32: db $B7, $BB, $5D, $DE, $6F, $77, $3B, $3C
#_12BF3A: db $7B, $ED, $F6, $DC, $EF, $BB, $DF, $7B
#_12BF42: db $3D, $F6, $7B, $EE, $F7, $DD, $EE, $3D
#_12BF4A: db $ED, $DD, $BA, $7B, $F6, $EE, $DC, $3C
#_12BF52: db $C1, $22, $DD
#_12BF55: db $46 ; Word Fill
#_12BF56: db $1C, $D5 ; Word Fill
#_12BF58: db $06 ; Direct Copy
#_12BF59: db $DD, $1C, $E3, $22, $DD, $3E, $9C
#_12BF60: db $24 ; Byte Fill
#_12BF61: db $BE
#_12BF62: db $0C ; Direct Copy
#_12BF63: db $9C, $80, $AF, $3F, $18, $3F, $10, $3F
#_12BF6B: db $15, $3F, $16, $3F, $13
#_12BF70: db $44 ; Word Fill
#_12BF71: db $3F, $11 ; Word Fill
#_12BF73: db $00 ; Direct Copy
#_12BF74: db $4F
#_12BF75: db $26 ; Byte Fill
#_12BF76: db $DF
#_12BF77: db $13 ; Direct Copy
#_12BF78: db $CF, $08, $DE, $17, $76, $AF, $E1, $19
#_12BF80: db $4F, $B8, $DE, $37, $76, $AF, $66, $9F
#_12BF88: db $30, $20, $00, $06
#_12BF8C: db $23 ; Byte Fill
#_12BF8D: db $00
#_12BF8E: db $07 ; Direct Copy
#_12BF8F: db $3E, $FF, $41, $C1, $FF, $80, $BE, $7F
#_12BF97: db $43 ; Word Fill
#_12BF98: db $3E, $FF ; Word Fill
#_12BF9A: db $84 ; Repeat Fill
#_12BF9B: db $5C, $01 ; Repeat Fill bytes
#_12BF9D: db $00 ; Direct Copy
#_12BF9E: db $3E
#_12BF9F: db $25 ; Byte Fill
#_12BFA0: db $00
#_12BFA1: db $12 ; Direct Copy
#_12BFA2: db $18, $18, $08, $08, $42, $42, $00, $00
#_12BFAA: db $C3, $00, $3C, $00, $C3, $C3, $DB, $3C
#_12BFB2: db $E7, $F7, $BD
#_12BFB5: db $22 ; Byte Fill
#_12BFB6: db $FF
#_12BFB7: db $16 ; Direct Copy
#_12BFB8: db $3C, $00, $39, $C0, $35, $F8, $B3, $FC
#_12BFC0: db $F1, $7E, $41, $8E, $39, $CE, $3D, $F6
#_12BFC8: db $35, $FA, $06, $02, $00, $00, $30
#_12BFCF: db $22 ; Byte Fill
#_12BFD0: db $00
#_12BFD1: db $0E ; Direct Copy
#_12BFD2: db $FA, $2F, $FA, $37, $9F, $78, $AE, $5E
#_12BFDA: db $B3, $6F, $BF, $70, $80, $3F, $FF
#_12BFE1: db $22 ; Byte Fill
#_12BFE2: db $00
#_12BFE3: db $19 ; Direct Copy
#_12BFE4: db $40, $41, $60, $70, $7F, $00, $FF, $00
#_12BFEC: db $C1, $3C, $DD, $EE, $ED, $76, $F5, $BA
#_12BFF4: db $35, $DA, $FD, $DA, $2D, $CA, $00, $3E
#_12BFFC: db $0E, $06
#_12BFFE: db $22 ; Byte Fill
#_12BFFF: db $02
#_12C000: db $01 ; Direct Copy
#_12C001: db $12, $00
#_12C003: db $26 ; Byte Fill
#_12C004: db $FF
#_12C005: db $00 ; Direct Copy
#_12C006: db $00
#_12C007: db $27 ; Byte Fill
#_12C008: db $FF
#_12C009: db $00 ; Direct Copy
#_12C00A: db $00
#_12C00B: db $22 ; Byte Fill
#_12C00C: db $FF
#_12C00D: db $00 ; Direct Copy
#_12C00E: db $00
#_12C00F: db $23 ; Byte Fill
#_12C010: db $FF
#_12C011: db $02 ; Direct Copy
#_12C012: db $99, $FF, $A5
#_12C015: db $44 ; Word Fill
#_12C016: db $FF, $DB ; Word Fill
#_12C018: db $02 ; Direct Copy
#_12C019: db $A5, $FF, $99
#_12C01C: db $2B ; Byte Fill
#_12C01D: db $FF
#_12C01E: db $07 ; Direct Copy
#_12C01F: db $00, $7F, $80, $FF, $40, $BF, $00, $7F
#_12C027: db $45 ; Word Fill
#_12C028: db $00, $FF ; Word Fill
#_12C02A: db $22 ; Byte Fill
#_12C02B: db $00
#_12C02C: db $09 ; Direct Copy
#_12C02D: db $1F, $5F, $9F, $3F, $7F, $FF, $B7, $40
#_12C035: db $EF, $20
#_12C037: db $4B ; Word Fill
#_12C038: db $FF, $00 ; Word Fill
#_12C03A: db $02 ; Direct Copy
#_12C03B: db $09, $13, $07
#_12C03E: db $24 ; Byte Fill
#_12C03F: db $3F
#_12C040: db $03 ; Direct Copy
#_12C041: db $8F, $F0, $8D, $F6
#_12C045: db $43 ; Word Fill
#_12C046: db $8C, $F7 ; Word Fill
#_12C048: db $01 ; Direct Copy
#_12C049: db $8F, $F0
#_12C04B: db $43 ; Word Fill
#_12C04C: db $8C, $F7 ; Word Fill
#_12C04E: db $01 ; Direct Copy
#_12C04F: db $FC, $07
#_12C051: db $27 ; Byte Fill
#_12C052: db $00
#_12C053: db $00 ; Direct Copy
#_12C054: db $FF
#_12C055: db $46 ; Word Fill
#_12C056: db $FE, $01 ; Word Fill
#_12C058: db $07 ; Direct Copy
#_12C059: db $FF, $00, $FF, $77, $88, $77, $C8, $37
#_12C061: db $27 ; Byte Fill
#_12C062: db $00
#_12C063: db $01 ; Direct Copy
#_12C064: db $FC, $53
#_12C066: db $45 ; Word Fill
#_12C067: db $FE, $51 ; Word Fill
#_12C069: db $43 ; Word Fill
#_12C06A: db $FF, $50 ; Word Fill
#_12C06C: db $03 ; Direct Copy
#_12C06D: db $7F, $A8, $7F, $AA
#_12C071: db $25 ; Byte Fill
#_12C072: db $50
#_12C073: db $06 ; Direct Copy
#_12C074: db $28, $2A, $FC, $03, $FF, $FC, $FF
#_12C07B: db $83 ; Repeat Fill
#_12C07C: db $59, $05 ; Repeat Fill bytes
#_12C07E: db $07 ; Direct Copy
#_12C07F: db $03, $FF, $00, $7F, $81, $0F, $F0, $00
#_12C087: db $43 ; Word Fill
#_12C088: db $FC, $03 ; Word Fill
#_12C08A: db $0C ; Direct Copy
#_12C08B: db $00, $01, $00, $E3, $1C, $FE, $01, $F6
#_12C093: db $0D, $FB, $06, $FD, $02
#_12C098: db $45 ; Word Fill
#_12C099: db $FF, $00 ; Word Fill
#_12C09B: db $00 ; Direct Copy
#_12C09C: db $80
#_12C09D: db $24 ; Byte Fill
#_12C09E: db $C0
#_12C09F: db $14 ; Direct Copy
#_12C0A0: db $E0, $FC, $88, $9F, $C7, $4F, $60, $A0
#_12C0A8: db $3F, $DF, $9F, $E0, $98, $E7, $BF, $C0
#_12C0B0: db $FF, $00, $6F, $37, $1F
#_12C0B5: db $23 ; Byte Fill
#_12C0B6: db $00
#_12C0B7: db $1B ; Direct Copy
#_12C0B8: db $1F, $FF, $00, $FF, $FC, $1E, $E1, $30
#_12C0C0: db $CF, $6C, $9F, $DC, $3E, $F0, $30, $E1
#_12C0C8: db $21, $00, $00, $E0, $C0, $80, $01, $0F
#_12C0D0: db $1E, $FF, $00, $00
#_12C0D4: db $24 ; Byte Fill
#_12C0D5: db $FF
#_12C0D6: db $00 ; Direct Copy
#_12C0D7: db $80
#_12C0D8: db $22 ; Byte Fill
#_12C0D9: db $00
#_12C0DA: db $83 ; Repeat Fill
#_12C0DB: db $3C, $04 ; Repeat Fill bytes
#_12C0DD: db $23 ; Byte Fill
#_12C0DE: db $00
#_12C0DF: db $83 ; Repeat Fill
#_12C0E0: db $5D, $01 ; Repeat Fill bytes
#_12C0E2: db $E0, $2F ; EXT Direct Copy
#_12C0E4: db $0B, $02, $2B, $22, $04, $01, $C5, $C1
#_12C0EC: db $85, $81, $04, $01, $2B, $22, $0B, $02
#_12C0F4: db $FC, $DC, $FE, $3E, $7E, $FE, $DC, $FC
#_12C0FC: db $E0, $1F, $30, $CF, $DC, $E3, $8F, $B0
#_12C104: db $43, $3C, $0D, $1E, $C7, $46, $63, $A2
#_12C10C: db $1F, $0F, $03, $40, $C0, $E0, $38, $1C
#_12C114: db $FF ; End of GFX 1F

;===================================================================================================

GFX_20:
#_12C115: db $0F ; Direct Copy
#_12C116: db $CF, $3F, $EF, $5F, $B0, $6F, $9F, $70
#_12C11E: db $88, $78, $47, $BF, $67, $9F, $77, $AF
#_12C126: db $23 ; Byte Fill
#_12C127: db $00
#_12C128: db $00 ; Direct Copy
#_12C129: db $07
#_12C12A: db $22 ; Byte Fill
#_12C12B: db $00
#_12C12C: db $09 ; Direct Copy
#_12C12D: db $FC, $03, $C7, $78, $63, $BD, $31, $DE
#_12C135: db $98, $EF
#_12C137: db $45 ; Word Fill
#_12C138: db $D6, $E7 ; Word Fill
#_12C13A: db $24 ; Byte Fill
#_12C13B: db $00
#_12C13C: db $22 ; Byte Fill
#_12C13D: db $08
#_12C13E: db $43 ; Word Fill
#_12C13F: db $FF, $00 ; Word Fill
#_12C141: db $0B ; Direct Copy
#_12C142: db $7F, $00, $7E, $00, $7D, $01, $7B, $02
#_12C14A: db $77, $05, $6E, $0A
#_12C14E: db $23 ; Byte Fill
#_12C14F: db $FF
#_12C150: db $03 ; Direct Copy
#_12C151: db $FE, $FC, $F8, $F1
#_12C155: db $43 ; Word Fill
#_12C156: db $FF, $00 ; Word Fill
#_12C158: db $14 ; Direct Copy
#_12C159: db $7F, $7F, $FF, $80, $E7, $20, $8F, $80
#_12C161: db $3B, $38, $7D, $64, $FF, $FF, $80, $00
#_12C169: db $1F, $7F, $C7, $83, $C0
#_12C16E: db $44 ; Word Fill
#_12C16F: db $00, $FF ; Word Fill
#_12C171: db $09 ; Direct Copy
#_12C172: db $FE, $00, $FD, $01, $FB, $02, $F7, $05
#_12C17A: db $EE, $0A
#_12C17C: db $23 ; Byte Fill
#_12C17D: db $FF
#_12C17E: db $83 ; Repeat Fill
#_12C17F: db $44, $00 ; Repeat Fill bytes
#_12C181: db $1A ; Direct Copy
#_12C182: db $F0, $0F, $FF, $C0, $CB, $EC, $CF, $EF
#_12C18A: db $9F, $5F, $70, $8F, $8F, $D0, $4B, $6C
#_12C192: db $00, $00, $10, $10, $20, $00, $20, $90
#_12C19A: db $FF, $00, $FF
#_12C19D: db $22 ; Byte Fill
#_12C19E: db $00
#_12C19F: db $08 ; Direct Copy
#_12C1A0: db $FF, $00, $00, $FF, $E0, $FF, $B0, $FF
#_12C1A8: db $19
#_12C1A9: db $23 ; Byte Fill
#_12C1AA: db $FF
#_12C1AB: db $24 ; Byte Fill
#_12C1AC: db $00
#_12C1AD: db $02 ; Direct Copy
#_12C1AE: db $FF, $00, $FF
#_12C1B1: db $22 ; Byte Fill
#_12C1B2: db $00
#_12C1B3: db $83 ; Repeat Fill
#_12C1B4: db $96, $00 ; Repeat Fill bytes
#_12C1B6: db $02 ; Direct Copy
#_12C1B7: db $71, $FF, $FB
#_12C1BA: db $25 ; Byte Fill
#_12C1BB: db $FF
#_12C1BC: db $24 ; Byte Fill
#_12C1BD: db $00
#_12C1BE: db $08 ; Direct Copy
#_12C1BF: db $D6, $0F, $D4, $0F, $D6, $0F, $D3, $0F
#_12C1C7: db $D1
#_12C1C8: db $44 ; Word Fill
#_12C1C9: db $0F, $D0 ; Word Fill
#_12C1CB: db $01 ; Direct Copy
#_12C1CC: db $D1, $0F
#_12C1CE: db $27 ; Byte Fill
#_12C1CF: db $E0
#_12C1D0: db $00 ; Direct Copy
#_12C1D1: db $D3
#_12C1D2: db $46 ; Word Fill
#_12C1D3: db $0F, $D7 ; Word Fill
#_12C1D5: db $83 ; Repeat Fill
#_12C1D6: db $C6, $00 ; Repeat Fill bytes
#_12C1D8: db $83 ; Repeat Fill
#_12C1D9: db $D8, $00 ; Repeat Fill bytes
#_12C1DB: db $27 ; Byte Fill
#_12C1DC: db $E0
#_12C1DD: db $12 ; Direct Copy
#_12C1DE: db $FF, $00, $FF, $03, $FE, $77, $FC, $6A
#_12C1E6: db $D4, $6A, $DA, $6D, $DF, $66, $CF, $72
#_12C1EE: db $00, $03, $07
#_12C1F1: db $23 ; Byte Fill
#_12C1F2: db $0F
#_12C1F3: db $12 ; Direct Copy
#_12C1F4: db $07, $FF, $00, $FF, $83, $3C, $6F, $38
#_12C1FC: db $2E, $70, $EC, $F0, $DC, $E7, $B8, $EC
#_12C204: db $76, $00, $C7
#_12C207: db $22 ; Byte Fill
#_12C208: db $EF
#_12C209: db $03 ; Direct Copy
#_12C20A: db $DF, $BB, $77, $63
#_12C20E: db $43 ; Word Fill
#_12C20F: db $00, $FF ; Word Fill
#_12C211: db $00 ; Direct Copy
#_12C212: db $1F
#_12C213: db $43 ; Word Fill
#_12C214: db $E0, $20 ; Word Fill
#_12C216: db $01 ; Direct Copy
#_12C217: db $E1, $21
#_12C219: db $43 ; Word Fill
#_12C21A: db $E0, $20 ; Word Fill
#_12C21C: db $08 ; Direct Copy
#_12C21D: db $FF, $FF, $E0, $DF, $DF, $DE, $DF, $DF
#_12C225: db $8E
#_12C226: db $43 ; Word Fill
#_12C227: db $00, $FF ; Word Fill
#_12C229: db $00 ; Direct Copy
#_12C22A: db $FF
#_12C22B: db $23 ; Byte Fill
#_12C22C: db $00
#_12C22D: db $01 ; Direct Copy
#_12C22E: db $10, $10
#_12C230: db $23 ; Byte Fill
#_12C231: db $00
#_12C232: db $00 ; Direct Copy
#_12C233: db $FF
#_12C234: db $83 ; Repeat Fill
#_12C235: db $3A, $01 ; Repeat Fill bytes
#_12C237: db $03 ; Direct Copy
#_12C238: db $EF, $FF, $FF, $80
#_12C23C: db $44 ; Word Fill
#_12C23D: db $00, $C0 ; Word Fill
#_12C23F: db $0B ; Direct Copy
#_12C240: db $D0, $00, $D0, $08, $D4, $0C, $D6, $0E
#_12C248: db $D7, $0F, $80, $C0
#_12C24C: db $25 ; Byte Fill
#_12C24D: db $E0
#_12C24E: db $17 ; Direct Copy
#_12C24F: db $59, $1C, $EC, $0E, $F6, $C7, $3B, $23
#_12C257: db $1D, $11, $0E, $08, $87, $84, $03, $02
#_12C25F: db $E3, $F1, $38, $DC, $EE, $F7, $7B, $FD
#_12C267: db $83 ; Repeat Fill
#_12C268: db $2A, $01 ; Repeat Fill bytes
#_12C26A: db $01 ; Direct Copy
#_12C26B: db $E4, $24
#_12C26D: db $83 ; Repeat Fill
#_12C26E: db $28, $01 ; Repeat Fill bytes
#_12C270: db $E0, $31 ; EXT Direct Copy
#_12C272: db $50, $10, $AF, $8F, $DF, $40, $DE, $DF
#_12C27A: db $DB, $DF, $DE, $EF, $70, $3F, $F9, $02
#_12C282: db $F4, $F1, $0A, $08, $05, $04, $03, $02
#_12C28A: db $23, $22, $03, $02, $8B, $8A, $FC, $0E
#_12C292: db $F7, $FB, $FD, $DD, $FD, $75, $FA, $76
#_12C29A: db $F5, $7B, $C5, $32, $CC, $0A, $7B, $BD
#_12C2A2: db $5A, $BD
#_12C2A4: db $43 ; Word Fill
#_12C2A5: db $7B, $9C ; Word Fill
#_12C2A7: db $03 ; Direct Copy
#_12C2A8: db $01, $00, $08, $31
#_12C2AC: db $23 ; Byte Fill
#_12C2AD: db $00
#_12C2AE: db $14 ; Direct Copy
#_12C2AF: db $0A, $36, $F5, $FB, $F2, $FD, $07, $F4
#_12C2B7: db $0C, $0E, $FD, $FF, $79, $FF, $86, $79
#_12C2BF: db $C1, $00, $00, $08, $F1
#_12C2C4: db $22 ; Byte Fill
#_12C2C5: db $00
#_12C2C6: db $1B ; Direct Copy
#_12C2C7: db $DC, $14, $F9, $21, $FB, $2B, $F3, $22
#_12C2CF: db $F7, $22, $FD, $21, $FE, $20, $FF, $20
#_12C2D7: db $E3, $C6, $C4, $CC, $CC, $CE, $CF, $CF
#_12C2DF: db $65, $76, $66, $77
#_12C2E3: db $43 ; Word Fill
#_12C2E4: db $66, $F7 ; Word Fill
#_12C2E6: db $16 ; Direct Copy
#_12C2E7: db $8E, $6F, $5D, $BE, $A1, $DE, $56, $67
#_12C2EF: db $88, $88, $08, $08, $10, $00, $00, $88
#_12C2F7: db $00, $01, $06, $FF, $02, $FF, $40
#_12C2FE: db $83 ; Repeat Fill
#_12C2FF: db $48, $01 ; Repeat Fill bytes
#_12C301: db $05 ; Direct Copy
#_12C302: db $7F, $C0, $7F, $80, $7F, $FE
#_12C308: db $27 ; Byte Fill
#_12C309: db $00
#_12C30A: db $09 ; Direct Copy
#_12C30B: db $80, $8E, $3F, $C4, $7F, $C0, $7F, $FF
#_12C313: db $00, $FF
#_12C315: db $44 ; Word Fill
#_12C316: db $FF, $00 ; Word Fill
#_12C318: db $01 ; Direct Copy
#_12C319: db $7F, $40
#_12C31B: db $25 ; Byte Fill
#_12C31C: db $00
#_12C31D: db $02 ; Direct Copy
#_12C31E: db $0F, $70, $1E
#_12C321: db $46 ; Word Fill
#_12C322: db $77, $0C ; Word Fill
#_12C324: db $05 ; Direct Copy
#_12C325: db $4C, $77, $6C, $77, $0C, $F7
#_12C32B: db $26 ; Byte Fill
#_12C32C: db $80
#_12C32D: db $04 ; Direct Copy
#_12C32E: db $00, $7C, $87, $3C, $37
#_12C333: db $43 ; Word Fill
#_12C334: db $0C, $77 ; Word Fill
#_12C336: db $83 ; Repeat Fill
#_12C337: db $4A, $02 ; Repeat Fill bytes
#_12C339: db $05 ; Direct Copy
#_12C33A: db $4C, $77, $0C, $77, $00, $C0
#_12C340: db $25 ; Byte Fill
#_12C341: db $80
#_12C342: db $E0, $5F ; EXT Direct Copy
#_12C344: db $CF, $70, $DF, $60, $BF, $4A, $F7, $1A
#_12C34C: db $E7, $3B, $EE, $3B, $FF, $61, $FF, $60
#_12C354: db $02, $09, $1B, $3B, $7B, $7B, $73, $63
#_12C35C: db $D0, $EC, $E7, $D8, $EF, $B0, $FC, $A4
#_12C364: db $F8, $28, $E3, $93, $64, $96, $EF, $9C
#_12C36C: db $EF, $DF, $B8, $B3, $A7, $CC, $C9, $C0
#_12C374: db $AC, $1D, $9A, $39, $B6, $73, $EF, $66
#_12C37C: db $BF, $0C, $9D, $18, $BF, $00, $9C, $9C
#_12C384: db $62, $46, $0C, $18, $72, $66, $40, $63
#_12C38C: db $B1, $9F, $E1, $BE, $C5, $B2, $5A, $25
#_12C394: db $C5, $3B, $7E, $3A, $FF, $00, $71, $71
#_12C39C: db $5F, $3E, $3E, $BC, $B8, $B9, $00, $8E
#_12C3A4: db $23 ; Byte Fill
#_12C3A5: db $00
#_12C3A6: db $0C ; Direct Copy
#_12C3A7: db $20, $20, $30, $30, $38, $38, $3C, $3C
#_12C3AF: db $3E, $3E, $3F, $3F, $80
#_12C3B4: db $26 ; Byte Fill
#_12C3B5: db $C0
#_12C3B6: db $E0, $23 ; EXT Direct Copy
#_12C3B8: db $8C, $0F, $84, $77, $50, $DB, $98, $9F
#_12C3C0: db $FC, $0F, $0C, $07, $84, $73, $92, $99
#_12C3C8: db $70, $08, $24, $60, $F0, $F8, $0C, $66
#_12C3D0: db $E0, $A0, $7F, $5F, $B0, $AF, $DF, $50
#_12C3D8: db $AF, $6F, $90, $70
#_12C3DC: db $43 ; Word Fill
#_12C3DD: db $8F, $7F ; Word Fill
#_12C3DF: db $0F ; Direct Copy
#_12C3E0: db $1F, $80, $40, $20, $10, $0F, $00, $00
#_12C3E8: db $BF, $A0, $D0, $5F, $68, $AF, $34, $57
#_12C3F0: db $47 ; Word Fill
#_12C3F1: db $5B, $6B ; Word Fill
#_12C3F3: db $03 ; Direct Copy
#_12C3F4: db $40, $20, $10, $88
#_12C3F8: db $23 ; Byte Fill
#_12C3F9: db $84
#_12C3FA: db $E0, $31 ; EXT Direct Copy
#_12C3FC: db $14, $98, $7C, $F4, $7E, $F6, $6B, $F7
#_12C404: db $8D, $63, $9A, $11, $FB, $72, $FD, $75
#_12C40C: db $63, $03, $01, $00, $10, $64, $04, $02
#_12C414: db $67, $5A, $72, $5C, $3A, $1C, $1E, $0C
#_12C41C: db $8E, $80, $63, $E2, $D9, $38, $34, $CC
#_12C424: db $99, $9D, $DD, $ED, $71, $1D, $07, $03
#_12C42C: db $0F, $F0
#_12C42E: db $43 ; Word Fill
#_12C42F: db $73, $7B ; Word Fill
#_12C431: db $E0, $2D ; EXT Direct Copy
#_12C433: db $E7, $F7, $7F, $80, $E9, $71, $36, $3A
#_12C43B: db $1B, $1D, $00, $84, $84, $08, $00, $06
#_12C443: db $C1, $E0, $0A, $0D, $C6, $C5, $E5, $06
#_12C44B: db $73, $E2, $3A, $F3, $99, $71, $FC, $84
#_12C453: db $86, $00, $F0, $38, $18, $EC, $F4, $76
#_12C45B: db $03, $FF, $00, $00, $40, $00
#_12C461: db $45 ; Word Fill
#_12C462: db $3F, $BF ; Word Fill
#_12C464: db $04 ; Direct Copy
#_12C465: db $6F, $FF, $46, $FF, $00
#_12C46A: db $22 ; Byte Fill
#_12C46B: db $FF
#_12C46C: db $22 ; Byte Fill
#_12C46D: db $40
#_12C46E: db $26 ; Byte Fill
#_12C46F: db $00
#_12C470: db $02 ; Direct Copy
#_12C471: db $F8, $FF, $FD
#_12C474: db $44 ; Word Fill
#_12C475: db $FF, $1F ; Word Fill
#_12C477: db $02 ; Direct Copy
#_12C478: db $0F, $FF, $00
#_12C47B: db $22 ; Byte Fill
#_12C47C: db $FF
#_12C47D: db $26 ; Byte Fill
#_12C47E: db $00
#_12C47F: db $07 ; Direct Copy
#_12C480: db $3F, $46, $07, $3C, $3F, $38, $3F, $3C
#_12C488: db $44 ; Word Fill
#_12C489: db $3F, $3E ; Word Fill
#_12C48B: db $03 ; Direct Copy
#_12C48C: db $3C, $3F, $C0, $F8
#_12C490: db $25 ; Byte Fill
#_12C491: db $C0
#_12C492: db $45 ; Word Fill
#_12C493: db $30, $3F ; Word Fill
#_12C495: db $83 ; Repeat Fill
#_12C496: db $C8, $03 ; Repeat Fill bytes
#_12C498: db $05 ; Direct Copy
#_12C499: db $1E, $3F, $0E, $3F, $1E, $3F
#_12C49F: db $27 ; Byte Fill
#_12C4A0: db $C0
#_12C4A1: db $01 ; Direct Copy
#_12C4A2: db $F7, $4C
#_12C4A4: db $43 ; Word Fill
#_12C4A5: db $FD, $4E ; Word Fill
#_12C4A7: db $1B ; Direct Copy
#_12C4A8: db $F8, $47, $F1, $0F, $FE, $0D, $FF, $4C
#_12C4B0: db $DF, $66, $61, $60, $60, $61, $2F, $0F
#_12C4B8: db $0D, $0E, $F5, $0E, $FB, $07, $EF, $38
#_12C4C0: db $F7, $3C, $F8, $1C
#_12C4C4: db $84 ; Repeat Fill
#_12C4C5: db $B3, $03 ; Repeat Fill bytes
#_12C4C7: db $E0, $38 ; EXT Direct Copy
#_12C4C9: db $07, $C0, $30, $78, $7F, $7F, $3F, $0F
#_12C4D1: db $70, $C3, $3F, $9A, $7E, $B8, $7A, $F4
#_12C4D9: db $73, $C9, $47, $83, $3F, $A6, $6E, $D4
#_12C4E1: db $4D, $00, $01, $05, $0C, $38, $40, $11
#_12C4E9: db $32, $03, $4F, $06, $7F, $3E, $FF, $CD
#_12C4F1: db $CF, $83, $BF, $2E, $60, $5E, $C0, $BF
#_12C4F9: db $8E, $B0, $80, $00, $30, $40, $9F, $31
#_12C501: db $6E
#_12C502: db $22 ; Byte Fill
#_12C503: db $00
#_12C504: db $0C ; Direct Copy
#_12C505: db $40, $00, $60, $00, $70, $08, $70, $0C
#_12C50D: db $74, $0C, $76, $0C, $77
#_12C512: db $27 ; Byte Fill
#_12C513: db $80
#_12C514: db $E0, $26 ; EXT Direct Copy
#_12C516: db $4E, $DB, $8B, $9D, $89, $9E, $84, $97
#_12C51E: db $06, $1F, $4B, $3F, $9D, $7F, $AC, $6F
#_12C526: db $20, $60, $60, $68, $E0, $C0, $80, $10
#_12C52E: db $DF, $30, $C8, $38, $E7, $1F, $F0, $6F
#_12C536: db $FF, $70, $FF, $7F, $BF, $3F, $FF
#_12C53D: db $83 ; Repeat Fill
#_12C53E: db $12, $00 ; Repeat Fill bytes
#_12C540: db $0E ; Direct Copy
#_12C541: db $20, $30, $3F, $40, $00, $7F, $80, $FD
#_12C549: db $3C, $3F, $DE, $9F, $EE, $CF, $76
#_12C550: db $45 ; Word Fill
#_12C551: db $AF, $36 ; Word Fill
#_12C553: db $04 ; Direct Copy
#_12C554: db $00, $02, $1C, $0C, $04
#_12C559: db $22 ; Byte Fill
#_12C55A: db $44
#_12C55B: db $01 ; Direct Copy
#_12C55C: db $FF, $FF
#_12C55E: db $22 ; Byte Fill
#_12C55F: db $00
#_12C560: db $84 ; Repeat Fill
#_12C561: db $48, $01 ; Repeat Fill bytes
#_12C563: db $22 ; Byte Fill
#_12C564: db $00
#_12C565: db $83 ; Repeat Fill
#_12C566: db $A1, $00 ; Repeat Fill bytes
#_12C568: db $00 ; Direct Copy
#_12C569: db $FF
#_12C56A: db $22 ; Byte Fill
#_12C56B: db $00
#_12C56C: db $13 ; Direct Copy
#_12C56D: db $FF, $00, $00, $7E, $81, $E7, $7E, $91
#_12C575: db $7E, $B1, $7E, $85, $7E, $83, $3E, $C3
#_12C57D: db $5A, $7E, $81, $00
#_12C581: db $25 ; Byte Fill
#_12C582: db $7E
#_12C583: db $E4, $30 ; EXT Byte Fill
#_12C585: db $00
#_12C586: db $0E ; Direct Copy
#_12C587: db $28, $10, $EF, $10, $FF, $EF, $07, $FF
#_12C58F: db $10, $EF, $FF, $D7, $EF, $10, $28
#_12C596: db $22 ; Byte Fill
#_12C597: db $10
#_12C598: db $14 ; Direct Copy
#_12C599: db $EF, $FF, $EF, $D7, $10, $10, $14, $08
#_12C5A1: db $F7, $08, $FF, $EB, $1C, $F7, $68, $FF
#_12C5A9: db $FF, $F7, $F7, $08, $14
#_12C5AE: db $22 ; Byte Fill
#_12C5AF: db $08
#_12C5B0: db $05 ; Direct Copy
#_12C5B1: db $EB, $F7, $FF, $F7, $08, $08
#_12C5B7: db $84 ; Repeat Fill
#_12C5B8: db $10, $05 ; Repeat Fill bytes
#_12C5BA: db $03 ; Direct Copy
#_12C5BB: db $D7, $10, $EF, $07
#_12C5BF: db $83 ; Repeat Fill
#_12C5C0: db $4B, $01 ; Repeat Fill bytes
#_12C5C2: db $01 ; Direct Copy
#_12C5C3: db $10, $28
#_12C5C5: db $22 ; Byte Fill
#_12C5C6: db $10
#_12C5C7: db $06 ; Direct Copy
#_12C5C8: db $D7, $EF, $FF, $EF, $10, $10, $14
#_12C5CF: db $43 ; Word Fill
#_12C5D0: db $08, $FF ; Word Fill
#_12C5D2: db $09 ; Direct Copy
#_12C5D3: db $F6, $23, $FE, $81, $FE, $FF, $EA, $F7
#_12C5DB: db $08, $14
#_12C5DD: db $22 ; Byte Fill
#_12C5DE: db $08
#_12C5DF: db $05 ; Direct Copy
#_12C5E0: db $F6, $FE, $FE, $EA, $08, $08
#_12C5E6: db $43 ; Word Fill
#_12C5E7: db $DF, $60 ; Word Fill
#_12C5E9: db $06 ; Direct Copy
#_12C5EA: db $CF, $70, $C3, $7C, $E1, $7E, $F0
#_12C5F1: db $84 ; Repeat Fill
#_12C5F2: db $8B, $04 ; Repeat Fill bytes
#_12C5F4: db $00 ; Direct Copy
#_12C5F5: db $06
#_12C5F6: db $22 ; Byte Fill
#_12C5F7: db $01
#_12C5F8: db $83 ; Repeat Fill
#_12C5F9: db $90, $03 ; Repeat Fill bytes
#_12C5FB: db $0A ; Direct Copy
#_12C5FC: db $BC, $73, $3F, $F0, $3F, $E0, $F8, $C7
#_12C604: db $F0, $0F, $00
#_12C607: db $23 ; Byte Fill
#_12C608: db $FF
#_12C609: db $04 ; Direct Copy
#_12C60A: db $00, $F8, $F8, $F0, $E0
#_12C60F: db $23 ; Byte Fill
#_12C610: db $00
#_12C611: db $11 ; Direct Copy
#_12C612: db $FF, $00, $80, $00, $C0, $7F, $CF, $70
#_12C61A: db $D7, $6F, $AC, $5C, $D2, $33, $C9, $2F
#_12C622: db $00, $7F
#_12C624: db $22 ; Byte Fill
#_12C625: db $00
#_12C626: db $03 ; Direct Copy
#_12C627: db $03, $0C, $10, $FF
#_12C62B: db $22 ; Byte Fill
#_12C62C: db $00
#_12C62D: db $13 ; Direct Copy
#_12C62E: db $07, $F8, $FA, $06, $C4, $FC, $00, $71
#_12C636: db $30, $FB, $81, $CF, $00, $FF, $00, $01
#_12C63E: db $03, $8E, $04, $30
#_12C642: db $37 ; Byte Fill
#_12C643: db $00
#_12C644: db $17 ; Direct Copy
#_12C645: db $FF, $00, $03, $00, $F9, $00, $04, $78
#_12C64D: db $3A, $FC, $56, $F4, $AB, $EC, $55, $DE
#_12C655: db $00, $FC, $06, $83, $01, $09, $10, $20
#_12C65D: db $FF ; End of GFX 20

;===================================================================================================

GFX_21:
#_12C65E: db $0F ; Direct Copy
#_12C65F: db $7F, $80, $B7, $7F, $EC, $7F, $DB, $7F
#_12C667: db $B7, $7F, $EE, $7F, $ED, $7F, $DB, $7F
#_12C66F: db $27 ; Byte Fill
#_12C670: db $00
#_12C671: db $0F ; Direct Copy
#_12C672: db $FE, $01, $ED, $FE, $36, $FF, $DA, $FF
#_12C67A: db $EC, $FF, $76, $FF, $B6, $FF, $DA, $FF
#_12C682: db $27 ; Byte Fill
#_12C683: db $00
#_12C684: db $09 ; Direct Copy
#_12C685: db $E3, $1F, $D3, $2F, $FB, $17, $EF, $1B
#_12C68D: db $E7, $1C
#_12C68F: db $45 ; Word Fill
#_12C690: db $E3, $1F ; Word Fill
#_12C692: db $23 ; Byte Fill
#_12C693: db $01
#_12C694: db $00 ; Direct Copy
#_12C695: db $00
#_12C696: db $22 ; Byte Fill
#_12C697: db $01
#_12C698: db $43 ; Word Fill
#_12C699: db $FF, $00 ; Word Fill
#_12C69B: db $0A ; Direct Copy
#_12C69C: db $F0, $0F, $90, $0F, $18, $07, $08, $07
#_12C6A4: db $0F, $00, $08
#_12C6A7: db $22 ; Byte Fill
#_12C6A8: db $00
#_12C6A9: db $09 ; Direct Copy
#_12C6AA: db $0F, $6F, $E7, $F7, $F0, $F7, $FF, $0C
#_12C6B2: db $FF, $06
#_12C6B4: db $4B ; Word Fill
#_12C6B5: db $FF, $03 ; Word Fill
#_12C6B7: db $01 ; Direct Copy
#_12C6B8: db $F0, $F8
#_12C6BA: db $25 ; Byte Fill
#_12C6BB: db $FC
#_12C6BC: db $0F ; Direct Copy
#_12C6BD: db $38, $C7, $1C, $E3, $CE, $F1, $E7, $78
#_12C6C5: db $F3, $3C, $F9, $1F, $FC, $0F, $9E, $07
#_12C6CD: db $26 ; Byte Fill
#_12C6CE: db $00
#_12C6CF: db $02 ; Direct Copy
#_12C6D0: db $60, $93, $6C
#_12C6D3: db $43 ; Word Fill
#_12C6D4: db $FF, $00 ; Word Fill
#_12C6D6: db $09 ; Direct Copy
#_12C6D7: db $F8, $77, $E8, $F7, $CF, $F0, $8F, $F0
#_12C6DF: db $1F, $E0
#_12C6E1: db $26 ; Byte Fill
#_12C6E2: db $00
#_12C6E3: db $00 ; Direct Copy
#_12C6E4: db $0F
#_12C6E5: db $46 ; Word Fill
#_12C6E6: db $7F, $80 ; Word Fill
#_12C6E8: db $00 ; Direct Copy
#_12C6E9: db $8C
#_12C6EA: db $47 ; Word Fill
#_12C6EB: db $7F, $9E ; Word Fill
#_12C6ED: db $03 ; Direct Copy
#_12C6EE: db $1F, $1F, $01, $0C
#_12C6F2: db $23 ; Byte Fill
#_12C6F3: db $1E
#_12C6F4: db $01 ; Direct Copy
#_12C6F5: db $00, $00
#_12C6F7: db $29 ; Byte Fill
#_12C6F8: db $7F
#_12C6F9: db $04 ; Direct Copy
#_12C6FA: db $3F, $3F, $1F, $1F, $FF
#_12C6FF: db $24 ; Byte Fill
#_12C700: db $80
#_12C701: db $05 ; Direct Copy
#_12C702: db $C0, $E0, $7F, $00, $00, $40
#_12C708: db $45 ; Word Fill
#_12C709: db $3F, $7F ; Word Fill
#_12C70B: db $83 ; Repeat Fill
#_12C70C: db $C0, $00 ; Repeat Fill bytes
#_12C70E: db $03 ; Direct Copy
#_12C70F: db $FF, $80, $80, $BF
#_12C713: db $22 ; Byte Fill
#_12C714: db $80
#_12C715: db $E0, $89 ; EXT Direct Copy
#_12C717: db $FF, $80, $00, $FF, $87, $C7, $43, $FB
#_12C71F: db $79, $FD, $7C, $BE, $7E, $DF, $BF, $EF
#_12C727: db $DF, $F7, $EF, $87, $3B, $05, $02, $01
#_12C72F: db $80, $C0, $E0, $FF, $FC, $FE, $FA, $FD
#_12C737: db $F5, $F0, $E8, $F9, $49, $69, $1A, $EB
#_12C73F: db $9D, $CD, $BB, $FC, $F9, $F2, $E7, $46
#_12C747: db $84, $00, $00, $EF, $28, $D8, $57, $90
#_12C74F: db $0C, $B7, $08, $A0, $00, $DF, $40, $60
#_12C757: db $A0, $3E, $C1, $10, $27, $6F, $60, $7F
#_12C75F: db $3F, $1F, $00, $EA, $23, $55, $06, $BA
#_12C767: db $0D, $74, $1B, $EF, $30, $50, $6F, $A0
#_12C76F: db $DF, $FF, $00, $1C, $B8, $70, $E0, $C0
#_12C777: db $80, $00, $00, $C3, $80, $80, $78, $F8
#_12C77F: db $7E, $85, $87, $62, $03, $F8, $01, $8D
#_12C787: db $01, $87, $00, $3F, $07, $01, $78, $FC
#_12C78F: db $FE, $FE, $FF, $BF, $40, $FF, $1F, $20
#_12C797: db $C0, $20, $DF, $FF, $00, $20, $C0, $2F
#_12C79F: db $C0, $EF
#_12C7A1: db $22 ; Byte Fill
#_12C7A2: db $00
#_12C7A3: db $02 ; Direct Copy
#_12C7A4: db $1F, $00, $00
#_12C7A7: db $22 ; Byte Fill
#_12C7A8: db $1F
#_12C7A9: db $09 ; Direct Copy
#_12C7AA: db $D6, $7F, $D5, $7F, $80, $7F, $FF, $00
#_12C7B2: db $FF, $7F
#_12C7B4: db $44 ; Word Fill
#_12C7B5: db $80, $00 ; Word Fill
#_12C7B7: db $00 ; Direct Copy
#_12C7B8: db $7F
#_12C7B9: db $24 ; Byte Fill
#_12C7BA: db $00
#_12C7BB: db $0C ; Direct Copy
#_12C7BC: db $7F, $7F, $00, $6A, $FF, $AA, $FF, $00
#_12C7C4: db $FF, $FF, $00, $FF, $FF
#_12C7C9: db $23 ; Byte Fill
#_12C7CA: db $01
#_12C7CB: db $01 ; Direct Copy
#_12C7CC: db $00, $FF
#_12C7CE: db $24 ; Byte Fill
#_12C7CF: db $00
#_12C7D0: db $02 ; Direct Copy
#_12C7D1: db $FE, $FE, $00
#_12C7D4: db $47 ; Word Fill
#_12C7D5: db $F3, $0F ; Word Fill
#_12C7D7: db $07 ; Direct Copy
#_12C7D8: db $D3, $6F, $E8, $77, $B7, $38, $BF, $3F
#_12C7E0: db $24 ; Byte Fill
#_12C7E1: db $01
#_12C7E2: db $08 ; Direct Copy
#_12C7E3: db $00, $40, $40, $FF, $70, $FC, $7B, $FC
#_12C7EB: db $3B
#_12C7EC: db $43 ; Word Fill
#_12C7ED: db $FF, $00 ; Word Fill
#_12C7EF: db $45 ; Word Fill
#_12C7F0: db $00, $FF ; Word Fill
#_12C7F2: db $02 ; Direct Copy
#_12C7F3: db $70, $7B, $3B
#_12C7F6: db $24 ; Byte Fill
#_12C7F7: db $00
#_12C7F8: db $4F ; Word Fill
#_12C7F9: db $FF, $03 ; Word Fill
#_12C7FB: db $27 ; Byte Fill
#_12C7FC: db $FC
#_12C7FD: db $02 ; Direct Copy
#_12C7FE: db $8F, $01, $C7
#_12C801: db $43 ; Word Fill
#_12C802: db $01, $E7 ; Word Fill
#_12C804: db $00 ; Direct Copy
#_12C805: db $81
#_12C806: db $44 ; Word Fill
#_12C807: db $FF, $C1 ; Word Fill
#_12C809: db $0C ; Direct Copy
#_12C80A: db $01, $FF, $01, $72, $3A, $1A, $9A, $C2
#_12C812: db $C2, $1A, $3A, $5F, $A0
#_12C817: db $43 ; Word Fill
#_12C818: db $55, $AA ; Word Fill
#_12C81A: db $09 ; Direct Copy
#_12C81B: db $D5, $2A, $F7, $08, $1D, $E2, $0D, $F2
#_12C823: db $C7, $38
#_12C825: db $27 ; Byte Fill
#_12C826: db $00
#_12C827: db $0A ; Direct Copy
#_12C828: db $C5, $3A, $F5, $1A, $75, $9A, $37, $D8
#_12C830: db $F7, $18, $F5
#_12C833: db $44 ; Word Fill
#_12C834: db $1A, $35 ; Word Fill
#_12C836: db $19 ; Direct Copy
#_12C837: db $00, $00, $80, $C0, $00, $00, $C0, $C0
#_12C83F: db $80, $80, $C0, $40, $7F, $BF, $3F, $C0
#_12C847: db $A0, $FF, $60, $FF, $9F, $5F, $C0, $3F
#_12C84F: db $7F, $3F
#_12C851: db $23 ; Byte Fill
#_12C852: db $00
#_12C853: db $00 ; Direct Copy
#_12C854: db $20
#_12C855: db $83 ; Repeat Fill
#_12C856: db $8D, $01 ; Repeat Fill bytes
#_12C858: db $0C ; Direct Copy
#_12C859: db $FF, $7F, $FF, $80, $FF, $7F, $80, $FE
#_12C861: db $01, $BF, $40, $1F, $E0
#_12C866: db $24 ; Byte Fill
#_12C867: db $00
#_12C868: db $0E ; Direct Copy
#_12C869: db $1D, $4E, $E7, $FB, $E7, $ED, $DB, $D6
#_12C871: db $B5, $C5, $A6, $C3, $A4, $DB, $BC
#_12C878: db $43 ; Word Fill
#_12C879: db $C3, $A4 ; Word Fill
#_12C87B: db $19 ; Direct Copy
#_12C87C: db $E0, $C0, $88, $98, $98, $81, $99, $99
#_12C884: db $87, $5B, $A5, $6B, $D6, $B9, $65, $DA
#_12C88C: db $BE, $47, $FD, $15, $FA, $16, $EC, $33
#_12C894: db $20, $10
#_12C896: db $22 ; Byte Fill
#_12C897: db $00
#_12C898: db $E0, $45 ; EXT Direct Copy
#_12C89A: db $02, $81, $80, $FB, $0A, $36, $C1, $F7
#_12C8A2: db $00, $3B, $C8, $FC, $04, $1F, $E0, $FF
#_12C8AA: db $0F, $70, $90, $04, $0D, $0C, $07, $03
#_12C8B2: db $00, $00, $0F, $F9, $13, $32, $86, $E5
#_12C8BA: db $0D, $CB, $1B, $16, $36, $ED, $2C, $DA
#_12C8C2: db $D8, $35, $31, $0C, $D9, $32, $E4, $C9
#_12C8CA: db $13, $27, $CE, $D3, $C3, $D9, $C1, $B5
#_12C8D2: db $81, $63, $00, $C3, $00, $83, $01, $87
#_12C8DA: db $03, $FF, $04, $3C, $3E, $7E
#_12C8E0: db $22 ; Byte Fill
#_12C8E1: db $FE
#_12C8E2: db $13 ; Direct Copy
#_12C8E3: db $FC, $F8, $2A, $15, $DE, $81, $75, $2B
#_12C8EB: db $BF, $03, $EB, $57, $77, $0F, $DF, $AF
#_12C8F3: db $F0, $00, $E0, $60
#_12C8F7: db $83 ; Repeat Fill
#_12C8F8: db $3E, $02 ; Repeat Fill bytes
#_12C8FA: db $16 ; Direct Copy
#_12C8FB: db $00, $0F, $00, $80, $0F, $8F, $10, $9F
#_12C903: db $2F, $B0, $5B, $E8, $33, $CE, $7D, $83
#_12C90B: db $FF, $01, $7F, $70, $60, $40, $04
#_12C912: db $24 ; Byte Fill
#_12C913: db $00
#_12C914: db $84 ; Repeat Fill
#_12C915: db $9D, $01 ; Repeat Fill bytes
#_12C917: db $09 ; Direct Copy
#_12C918: db $00, $32, $A0, $BF, $6D, $F2, $2D, $DF
#_12C920: db $20, $FF
#_12C922: db $22 ; Byte Fill
#_12C923: db $00
#_12C924: db $00 ; Direct Copy
#_12C925: db $4D
#_12C926: db $22 ; Byte Fill
#_12C927: db $00
#_12C928: db $43 ; Word Fill
#_12C929: db $E3, $1F ; Word Fill
#_12C92B: db $07 ; Direct Copy
#_12C92C: db $F3, $0F, $FB, $07, $FD, $0B, $F7, $0C
#_12C934: db $43 ; Word Fill
#_12C935: db $F3, $0F ; Word Fill
#_12C937: db $24 ; Byte Fill
#_12C938: db $01
#_12C939: db $05 ; Direct Copy
#_12C93A: db $00, $01, $01, $08, $00, $18
#_12C940: db $45 ; Word Fill
#_12C941: db $00, $FE ; Word Fill
#_12C943: db $45 ; Word Fill
#_12C944: db $E0, $FE ; Word Fill
#_12C946: db $04 ; Direct Copy
#_12C947: db $60, $F7, $E7, $01, $0D
#_12C94C: db $22 ; Byte Fill
#_12C94D: db $ED
#_12C94E: db $06 ; Direct Copy
#_12C94F: db $65, $00, $FF, $C0, $FF, $FF, $7F
#_12C956: db $43 ; Word Fill
#_12C957: db $FF, $00 ; Word Fill
#_12C959: db $45 ; Word Fill
#_12C95A: db $F8, $07 ; Word Fill
#_12C95C: db $24 ; Byte Fill
#_12C95D: db $00
#_12C95E: db $02 ; Direct Copy
#_12C95F: db $17, $37, $37
#_12C962: db $43 ; Word Fill
#_12C963: db $FF, $00 ; Word Fill
#_12C965: db $07 ; Direct Copy
#_12C966: db $E3, $1D, $C3, $3D, $C7, $39, $CF, $30
#_12C96E: db $43 ; Word Fill
#_12C96F: db $DF, $20 ; Word Fill
#_12C971: db $07 ; Direct Copy
#_12C972: db $20, $00, $1D, $3D, $39, $30, $26, $2F
#_12C97A: db $83 ; Repeat Fill
#_12C97B: db $14, $02 ; Repeat Fill bytes
#_12C97D: db $0B ; Direct Copy
#_12C97E: db $F5, $0A, $3F, $C0, $0F, $F0, $83, $7C
#_12C986: db $E0, $1F, $F8, $07
#_12C98A: db $26 ; Byte Fill
#_12C98B: db $00
#_12C98C: db $02 ; Direct Copy
#_12C98D: db $80, $EF, $10
#_12C990: db $43 ; Word Fill
#_12C991: db $E0, $1F ; Word Fill
#_12C993: db $01 ; Direct Copy
#_12C994: db $FF, $00
#_12C996: db $44 ; Word Fill
#_12C997: db $FF, $0E ; Word Fill
#_12C999: db $0C ; Direct Copy
#_12C99A: db $00, $FF, $00, $D0, $DF, $DF, $00, $0E
#_12C9A2: db $6E, $60, $7E, $FF, $00
#_12C9A7: db $4D ; Word Fill
#_12C9A8: db $C3, $3F ; Word Fill
#_12C9AA: db $00 ; Direct Copy
#_12C9AB: db $00
#_12C9AC: db $26 ; Byte Fill
#_12C9AD: db $01
#_12C9AE: db $17 ; Direct Copy
#_12C9AF: db $3F, $C0, $F3, $00, $E3, $01, $E7, $01
#_12C9B7: db $FF, $01, $E7, $19, $E3, $1D, $FF, $00
#_12C9BF: db $C0, $0C, $9D, $D9, $C1, $59, $1D, $00
#_12C9C7: db $47 ; Word Fill
#_12C9C8: db $C3, $A4 ; Word Fill
#_12C9CA: db $01 ; Direct Copy
#_12C9CB: db $DB, $BC
#_12C9CD: db $43 ; Word Fill
#_12C9CE: db $C3, $A4 ; Word Fill
#_12C9D0: db $1F ; Direct Copy
#_12C9D1: db $D1, $B2, $99, $98, $98, $99, $81, $99
#_12C9D9: db $99, $8C, $DB, $64, $B4, $CA, $F7, $0C
#_12C9E1: db $FB, $07, $7C, $03, $EF, $00, $F7, $00
#_12C9E9: db $B8, $00, $00, $01, $20, $E0, $F0, $F8
#_12C9F1: db $22 ; Byte Fill
#_12C9F2: db $FF
#_12C9F3: db $84 ; Repeat Fill
#_12C9F4: db $18, $03 ; Repeat Fill bytes
#_12C9F6: db $83 ; Repeat Fill
#_12C9F7: db $9C, $01 ; Repeat Fill bytes
#_12C9F9: db $05 ; Direct Copy
#_12C9FA: db $03, $FC, $FE, $01, $1C, $E4
#_12CA00: db $26 ; Byte Fill
#_12CA01: db $00
#_12CA02: db $1E ; Direct Copy
#_12CA03: db $03, $FB, $01, $0F, $F1, $FD, $03, $3A
#_12CA0B: db $C6, $F4, $0C, $E8, $18, $37, $F5, $0C
#_12CA13: db $09, $04, $00, $00, $01, $03, $07, $0A
#_12CA1B: db $F6, $6E, $FA, $67, $6A, $77, $76
#_12CA22: db $43 ; Word Fill
#_12CA23: db $77, $72 ; Word Fill
#_12CA25: db $0F ; Direct Copy
#_12CA26: db $3B, $39, $1D, $1C, $0E, $0E, $05, $95
#_12CA2E: db $89, $8D, $8D, $C6, $E3, $F1, $FD, $B8
#_12CA36: db $43 ; Word Fill
#_12CA37: db $2F, $68 ; Word Fill
#_12CA39: db $1B ; Direct Copy
#_12CA3A: db $0F, $48, $8F, $C8, $47, $C8, $0F, $80
#_12CA42: db $BF, $90, $02, $90, $90, $B0, $30, $30
#_12CA4A: db $70, $60, $FF, $00, $FF, $01, $C2, $03
#_12CA52: db $E1, $7E, $FF, $41
#_12CA56: db $85 ; Repeat Fill
#_12CA57: db $84, $04 ; Repeat Fill bytes
#_12CA59: db $E0, $22 ; EXT Direct Copy
#_12CA5B: db $00, $00, $3C, $00, $00, $3C, $00, $00
#_12CA63: db $F8, $07, $E7, $1F, $CC, $3C, $9A, $7B
#_12CA6B: db $BC, $7E, $B9, $7D, $93, $7B, $87, $77
#_12CA73: db $00, $00, $03, $04, $01, $02, $04, $08
#_12CA7B: db $FF, $00, $00
#_12CA7E: db $25 ; Byte Fill
#_12CA7F: db $FF
#_12CA80: db $01 ; Direct Copy
#_12CA81: db $00, $00
#_12CA83: db $24 ; Byte Fill
#_12CA84: db $FF
#_12CA85: db $86 ; Repeat Fill
#_12CA86: db $21, $04 ; Repeat Fill bytes
#_12CA88: db $4F ; Word Fill
#_12CA89: db $FF, $81 ; Word Fill
#_12CA8B: db $28 ; Byte Fill
#_12CA8C: db $FF
#_12CA8D: db $E4, $2F ; EXT Byte Fill
#_12CA8F: db $00
#_12CA90: db $07 ; Direct Copy
#_12CA91: db $84, $03, $84, $4B, $87, $78, $84, $7B
#_12CA99: db $43 ; Word Fill
#_12CA9A: db $87, $78 ; Word Fill
#_12CA9C: db $05 ; Direct Copy
#_12CA9D: db $CF, $30, $FF, $00, $78, $30
#_12CAA3: db $25 ; Byte Fill
#_12CAA4: db $00
#_12CAA5: db $07 ; Direct Copy
#_12CAA6: db $04, $F8, $04, $FA, $FC, $03, $04, $FB
#_12CAAE: db $43 ; Word Fill
#_12CAAF: db $FC, $03 ; Word Fill
#_12CAB1: db $05 ; Direct Copy
#_12CAB2: db $FE, $01, $FF, $00, $03, $01
#_12CAB8: db $25 ; Byte Fill
#_12CAB9: db $00
#_12CABA: db $84 ; Repeat Fill
#_12CABB: db $84, $04 ; Repeat Fill bytes
#_12CABD: db $06 ; Direct Copy
#_12CABE: db $40, $FD, $06, $FB, $0D, $E4, $09
#_12CAC5: db $43 ; Word Fill
#_12CAC6: db $F6, $1B ; Word Fill
#_12CAC8: db $00 ; Direct Copy
#_12CAC9: db $3C
#_12CACA: db $23 ; Byte Fill
#_12CACB: db $00
#_12CACC: db $13 ; Direct Copy
#_12CACD: db $12, $00, $00, $8F, $6F, $DF, $20, $E0
#_12CAD5: db $1F, $F8, $87, $7F, $A0, $9F, $20, $D2
#_12CADD: db $6D, $DF, $6D, $10
#_12CAE1: db $23 ; Byte Fill
#_12CAE2: db $00
#_12CAE3: db $E0, $2E ; EXT Direct Copy
#_12CAE5: db $40, $00, $00, $C8, $B9, $C4, $BC, $E2
#_12CAED: db $9E, $F1, $CF, $F8, $E7, $FC, $F3, $FE
#_12CAF5: db $F9, $FF, $FC, $86, $83, $81, $C0, $E0
#_12CAFD: db $F0, $F8, $FC, $DF, $00, $60, $80, $3F
#_12CB05: db $40, $08, $08, $F7, $FF, $88, $F7, $08
#_12CB0D: db $F7, $FF, $00, $7F, $3F, $80, $F7
#_12CB14: db $23 ; Byte Fill
#_12CB15: db $00
#_12CB16: db $01 ; Direct Copy
#_12CB17: db $FF, $00
#_12CB19: db $49 ; Word Fill
#_12CB1A: db $10, $EF ; Word Fill
#_12CB1C: db $43 ; Word Fill
#_12CB1D: db $FF, $00 ; Word Fill
#_12CB1F: db $01 ; Direct Copy
#_12CB20: db $00, $EF
#_12CB22: db $22 ; Byte Fill
#_12CB23: db $28
#_12CB24: db $00 ; Direct Copy
#_12CB25: db $EF
#_12CB26: db $83 ; Repeat Fill
#_12CB27: db $D1, $01 ; Repeat Fill bytes
#_12CB29: db $43 ; Word Fill
#_12CB2A: db $08, $F7 ; Word Fill
#_12CB2C: db $01 ; Direct Copy
#_12CB2D: db $0F, $F0
#_12CB2F: db $43 ; Word Fill
#_12CB30: db $0F, $F7 ; Word Fill
#_12CB32: db $E0, $25 ; EXT Direct Copy
#_12CB34: db $F8, $00, $FB, $00, $00, $F7, $14, $10
#_12CB3C: db $10, $F0, $07, $04, $BC, $FD, $7C, $7D
#_12CB44: db $78, $79, $F8, $79, $60, $61, $3B, $01
#_12CB4C: db $BF, $E1, $8E, $E2, $02, $82, $86, $86
#_12CB54: db $9E, $FE, $1E, $1D, $FF, $00
#_12CB5A: db $43 ; Word Fill
#_12CB5B: db $08, $F7 ; Word Fill
#_12CB5D: db $01 ; Direct Copy
#_12CB5E: db $FF, $00
#_12CB60: db $43 ; Word Fill
#_12CB61: db $FF, $FE ; Word Fill
#_12CB63: db $02 ; Direct Copy
#_12CB64: db $01, $00, $FD
#_12CB67: db $83 ; Repeat Fill
#_12CB68: db $C7, $05 ; Repeat Fill bytes
#_12CB6A: db $22 ; Byte Fill
#_12CB6B: db $00
#_12CB6C: db $01 ; Direct Copy
#_12CB6D: db $FE, $02
#_12CB6F: db $FF ; End of GFX 21

;===================================================================================================

GFX_22:
#_12CB70: db $09 ; Direct Copy
#_12CB71: db $68, $B7, $7D, $B2, $37, $DA, $32, $DF
#_12CB79: db $F2, $1F
#_12CB7B: db $45 ; Word Fill
#_12CB7C: db $2A, $DF ; Word Fill
#_12CB7E: db $27 ; Byte Fill
#_12CB7F: db $00
#_12CB80: db $0F ; Direct Copy
#_12CB81: db $08, $F7, $FF, $00, $BF, $C0, $78, $FF
#_12CB89: db $C7, $3F, $60, $9F, $3F, $FF, $60, $9F
#_12CB91: db $27 ; Byte Fill
#_12CB92: db $00
#_12CB93: db $13 ; Direct Copy
#_12CB94: db $FE, $80, $58, $01, $BD, $83, $1E, $A2
#_12CB9C: db $1C, $B8, $1D, $B8, $06, $B8, $9D, $59
#_12CBA4: db $7F, $FE, $40, $41
#_12CBA8: db $22 ; Byte Fill
#_12CBA9: db $43
#_12CBAA: db $E0, $42 ; EXT Direct Copy
#_12CBAC: db $22, $50, $D0, $90, $90, $2F, $00, $50
#_12CBB4: db $10, $AF, $3F, $7F, $60, $FF, $C0, $FF
#_12CBBC: db $80, $2F, $6F, $FF, $EF, $C0, $80, $00
#_12CBC4: db $00, $A1, $BE, $C0, $01, $A0, $1E, $FD
#_12CBCC: db $0F, $BF, $00, $92, $30, $25, $61, $4B
#_12CBD4: db $C3, $40, $FE, $C1, $C0, $C0, $CF, $9E
#_12CBDC: db $3C, $8F, $F0, $0E, $77, $8C, $F7, $98
#_12CBE4: db $E7, $8C, $F7, $8D, $F6, $8D, $76, $CC
#_12CBEC: db $B7, $00, $80
#_12CBEF: db $E4, $35 ; EXT Byte Fill
#_12CBF1: db $00
#_12CBF2: db $45 ; Word Fill
#_12CBF3: db $FF, $00 ; Word Fill
#_12CBF5: db $45 ; Word Fill
#_12CBF6: db $FE, $01 ; Word Fill
#_12CBF8: db $06 ; Direct Copy
#_12CBF9: db $FC, $03, $F8, $07, $0C, $01, $03
#_12CC00: db $25 ; Byte Fill
#_12CC01: db $FF
#_12CC02: db $48 ; Word Fill
#_12CC03: db $00, $FF ; Word Fill
#_12CC05: db $83 ; Repeat Fill
#_12CC06: db $CA, $00 ; Repeat Fill bytes
#_12CC08: db $00 ; Direct Copy
#_12CC09: db $E0
#_12CC0A: db $24 ; Byte Fill
#_12CC0B: db $1F
#_12CC0C: db $E0, $34 ; EXT Direct Copy
#_12CC0E: db $9F, $9F, $3F, $7F, $FF, $00, $FF, $7F
#_12CC16: db $FF, $6F, $EF, $56, $FE, $59, $EF, $4D
#_12CC1E: db $E5, $47, $F7, $57, $00, $7F, $6F, $46
#_12CC26: db $40, $50, $58, $48, $FF, $00, $E0, $DF
#_12CC2E: db $DC, $3C, $70, $F0, $E0, $E0, $C0, $C0
#_12CC36: db $C2, $C3, $D5, $D7, $00, $C0, $03, $0F
#_12CC3E: db $1F, $3F, $3C, $28, $63
#_12CC43: db $43 ; Word Fill
#_12CC44: db $00, $FF ; Word Fill
#_12CC46: db $00 ; Direct Copy
#_12CC47: db $1F
#_12CC48: db $43 ; Word Fill
#_12CC49: db $E0, $20 ; Word Fill
#_12CC4B: db $01 ; Direct Copy
#_12CC4C: db $E1, $21
#_12CC4E: db $43 ; Word Fill
#_12CC4F: db $E0, $20 ; Word Fill
#_12CC51: db $08 ; Direct Copy
#_12CC52: db $FF, $FF, $E0, $DF, $DF, $DE, $DF, $DF
#_12CC5A: db $8E
#_12CC5B: db $43 ; Word Fill
#_12CC5C: db $00, $FF ; Word Fill
#_12CC5E: db $00 ; Direct Copy
#_12CC5F: db $FF
#_12CC60: db $23 ; Byte Fill
#_12CC61: db $00
#_12CC62: db $01 ; Direct Copy
#_12CC63: db $10, $10
#_12CC65: db $23 ; Byte Fill
#_12CC66: db $00
#_12CC67: db $83 ; Repeat Fill
#_12CC68: db $D7, $00 ; Repeat Fill bytes
#_12CC6A: db $03 ; Direct Copy
#_12CC6B: db $FF, $EF, $FF, $FF
#_12CC6F: db $37 ; Byte Fill
#_12CC70: db $00
#_12CC71: db $17 ; Direct Copy
#_12CC72: db $59, $1C, $EC, $0E, $F6, $C7, $3B, $23
#_12CC7A: db $1D, $11, $0E, $08, $87, $84, $03, $02
#_12CC82: db $E3, $F1, $38, $DC, $EE, $F7, $7B, $FD
#_12CC8A: db $83 ; Repeat Fill
#_12CC8B: db $F0, $00 ; Repeat Fill bytes
#_12CC8D: db $45 ; Word Fill
#_12CC8E: db $E0, $60 ; Word Fill
#_12CC90: db $07 ; Direct Copy
#_12CC91: db $B0, $30, $DF, $9F, $70, $C0, $FF, $80
#_12CC99: db $22 ; Byte Fill
#_12CC9A: db $9F
#_12CC9B: db $0A ; Direct Copy
#_12CC9C: db $CF, $60, $3F, $FC, $01, $FB, $79, $FE
#_12CCA4: db $7C, $C5, $44
#_12CCA7: db $47 ; Word Fill
#_12CCA8: db $C3, $42 ; Word Fill
#_12CCAA: db $03 ; Direct Copy
#_12CCAB: db $FE, $86, $83, $BB
#_12CCAF: db $23 ; Byte Fill
#_12CCB0: db $BD
#_12CCB1: db $01 ; Direct Copy
#_12CCB2: db $BF, $BE
#_12CCB4: db $43 ; Word Fill
#_12CCB5: db $00, $FF ; Word Fill
#_12CCB7: db $0A ; Direct Copy
#_12CCB8: db $10, $EF, $FF, $00, $EF, $7F, $C0, $7F
#_12CCC0: db $86, $79, $40
#_12CCC3: db $26 ; Byte Fill
#_12CCC4: db $00
#_12CCC5: db $07 ; Direct Copy
#_12CCC6: db $CF, $DF, $E0, $70, $6F, $9F, $3F, $C0
#_12CCCE: db $83 ; Repeat Fill
#_12CCCF: db $3A, $01 ; Repeat Fill bytes
#_12CCD1: db $05 ; Direct Copy
#_12CCD2: db $08, $F7, $0C, $F3, $20, $0F
#_12CCD8: db $25 ; Byte Fill
#_12CCD9: db $00
#_12CCDA: db $05 ; Direct Copy
#_12CCDB: db $97, $86, $2F, $0C, $D7, $D8
#_12CCE1: db $49 ; Word Fill
#_12CCE2: db $2F, $08 ; Word Fill
#_12CCE4: db $02 ; Direct Copy
#_12CCE5: db $78, $F0, $20
#_12CCE8: db $24 ; Byte Fill
#_12CCE9: db $F0
#_12CCEA: db $0B ; Direct Copy
#_12CCEB: db $EC, $D7, $7C, $47, $1C, $E7, $BC, $A7
#_12CCF3: db $BF, $A4, $BD, $A6
#_12CCF7: db $43 ; Word Fill
#_12CCF8: db $BC, $A7 ; Word Fill
#_12CCFA: db $02 ; Direct Copy
#_12CCFB: db $00, $80, $00
#_12CCFE: db $24 ; Byte Fill
#_12CCFF: db $40
#_12CD00: db $03 ; Direct Copy
#_12CD01: db $8F, $70, $88, $77
#_12CD05: db $43 ; Word Fill
#_12CD06: db $8F, $70 ; Word Fill
#_12CD08: db $03 ; Direct Copy
#_12CD09: db $CF, $78, $E6, $3B
#_12CD0D: db $43 ; Word Fill
#_12CD0E: db $F3, $1C ; Word Fill
#_12CD10: db $0B ; Direct Copy
#_12CD11: db $70, $77, $70, $70, $78, $3B, $1C, $1C
#_12CD19: db $E7, $18, $24, $E7
#_12CD1D: db $43 ; Word Fill
#_12CD1E: db $FF, $18 ; Word Fill
#_12CD20: db $85 ; Repeat Fill
#_12CD21: db $28, $02 ; Repeat Fill bytes
#_12CD23: db $03 ; Direct Copy
#_12CD24: db $E7, $18, $18, $FF
#_12CD28: db $22 ; Byte Fill
#_12CD29: db $18
#_12CD2A: db $19 ; Direct Copy
#_12CD2B: db $FF, $18, $18, $FF, $00, $0F, $F8, $07
#_12CD33: db $FC, $03, $FF, $F8, $0F, $BC, $43, $BF
#_12CD3B: db $44, $BB, $44, $00, $F8, $FC, $FF, $0F
#_12CD43: db $43, $44
#_12CD45: db $44 ; Word Fill
#_12CD46: db $44, $BB ; Word Fill
#_12CD48: db $01 ; Direct Copy
#_12CD49: db $FF, $44
#_12CD4B: db $43 ; Word Fill
#_12CD4C: db $32, $BB ; Word Fill
#_12CD4E: db $00 ; Direct Copy
#_12CD4F: db $FF
#_12CD50: db $43 ; Word Fill
#_12CD51: db $44, $BB ; Word Fill
#_12CD53: db $23 ; Byte Fill
#_12CD54: db $44
#_12CD55: db $01 ; Direct Copy
#_12CD56: db $FF, $FF
#_12CD58: db $22 ; Byte Fill
#_12CD59: db $44
#_12CD5A: db $03 ; Direct Copy
#_12CD5B: db $E7, $57, $E5, $57
#_12CD5F: db $43 ; Word Fill
#_12CD60: db $ED, $5F ; Word Fill
#_12CD62: db $0B ; Direct Copy
#_12CD63: db $FD, $4F, $F5, $4F, $F8, $47, $E4, $5B
#_12CD6B: db $48, $48, $40, $40
#_12CD6F: db $22 ; Byte Fill
#_12CD70: db $60
#_12CD71: db $E0, $48 ; EXT Direct Copy
#_12CD73: db $40, $D2, $D6, $F3, $F7, $E5, $F7, $EA
#_12CD7B: db $FB, $80, $FC, $45, $C7, $BA, $83, $ED
#_12CD83: db $A9, $29, $08, $08, $04, $03, $38, $44
#_12CD8B: db $12, $AC, $1D, $9A, $39, $B6, $73, $EF
#_12CD93: db $66, $BF, $0C, $9D, $18, $BF, $00, $9C
#_12CD9B: db $9C, $62, $46, $0C, $18, $72, $66, $40
#_12CDA3: db $63, $B1, $9F, $E1, $BE, $C5, $B2, $5A
#_12CDAB: db $25, $C5, $3B, $7E, $3A, $FF, $00, $71
#_12CDB3: db $71, $5F, $3E, $3E, $BC, $B8, $B9, $00
#_12CDBB: db $8E
#_12CDBC: db $37 ; Byte Fill
#_12CDBD: db $00
#_12CDBE: db $E0, $28 ; EXT Direct Copy
#_12CDC0: db $8C, $0F, $84, $77, $50, $DB, $98, $9F
#_12CDC8: db $FC, $0F, $0C, $07, $84, $73, $92, $99
#_12CDD0: db $70, $08, $24, $60, $F0, $F8, $0C, $66
#_12CDD8: db $CF, $20, $A7, $5F, $E9, $56, $ED, $72
#_12CDE0: db $95, $5A, $AF, $6F, $50, $B0, $67, $BF
#_12CDE8: db $1F
#_12CDE9: db $22 ; Byte Fill
#_12CDEA: db $00
#_12CDEB: db $18 ; Direct Copy
#_12CDEC: db $20, $10, $0F, $00, $FC, $03, $B3, $7C
#_12CDF4: db $74, $97, $8A, $FB, $32, $4B, $5D, $65
#_12CDFC: db $4D, $7D, $7F, $45, $00, $00, $08, $04
#_12CE04: db $84
#_12CE05: db $22 ; Byte Fill
#_12CE06: db $82
#_12CE07: db $04 ; Direct Copy
#_12CE08: db $FF, $00, $FC, $00, $87
#_12CE0D: db $44 ; Word Fill
#_12CE0E: db $7B, $C7 ; Word Fill
#_12CE10: db $07 ; Direct Copy
#_12CE11: db $FC, $7B, $FE, $7A, $03, $FD, $00, $03
#_12CE19: db $23 ; Byte Fill
#_12CE1A: db $00
#_12CE1B: db $05 ; Direct Copy
#_12CE1C: db $01, $00, $FF, $00, $7F, $00
#_12CE22: db $45 ; Word Fill
#_12CE23: db $FF, $80 ; Word Fill
#_12CE25: db $07 ; Direct Copy
#_12CE26: db $3F, $C0, $5F, $60, $B0, $AF, $00, $80
#_12CE2E: db $23 ; Byte Fill
#_12CE2F: db $00
#_12CE30: db $04 ; Direct Copy
#_12CE31: db $80, $40, $FE, $01, $DE
#_12CE36: db $44 ; Word Fill
#_12CE37: db $3F, $C6 ; Word Fill
#_12CE39: db $03 ; Direct Copy
#_12CE3A: db $FE, $01, $BB, $3E
#_12CE3E: db $43 ; Word Fill
#_12CE3F: db $B9, $3D ; Word Fill
#_12CE41: db $24 ; Byte Fill
#_12CE42: db $00
#_12CE43: db $08 ; Direct Copy
#_12CE44: db $40, $42, $42, $FA, $06, $FD, $03, $FF
#_12CE4C: db $00
#_12CE4D: db $49 ; Word Fill
#_12CE4E: db $FE, $01 ; Word Fill
#_12CE50: db $00 ; Direct Copy
#_12CE51: db $01
#_12CE52: db $26 ; Byte Fill
#_12CE53: db $00
#_12CE54: db $09 ; Direct Copy
#_12CE55: db $FF, $00, $C0, $3F, $80, $73, $80, $7F
#_12CE5D: db $8F, $7F
#_12CE5F: db $45 ; Word Fill
#_12CE60: db $9F, $70 ; Word Fill
#_12CE62: db $01 ; Direct Copy
#_12CE63: db $00, $3F
#_12CE65: db $22 ; Byte Fill
#_12CE66: db $7F
#_12CE67: db $22 ; Byte Fill
#_12CE68: db $70
#_12CE69: db $06 ; Direct Copy
#_12CE6A: db $FF, $00, $00, $F7, $20, $7B, $20
#_12CE71: db $23 ; Byte Fill
#_12CE72: db $FF
#_12CE73: db $00 ; Direct Copy
#_12CE74: db $00
#_12CE75: db $43 ; Word Fill
#_12CE76: db $E7, $18 ; Word Fill
#_12CE78: db $00 ; Direct Copy
#_12CE79: db $00
#_12CE7A: db $23 ; Byte Fill
#_12CE7B: db $FF
#_12CE7C: db $00 ; Direct Copy
#_12CE7D: db $00
#_12CE7E: db $83 ; Repeat Fill
#_12CE7F: db $3E, $02 ; Repeat Fill bytes
#_12CE81: db $05 ; Direct Copy
#_12CE82: db $C0, $3F, $80, $7F, $87, $7F
#_12CE88: db $44 ; Word Fill
#_12CE89: db $8F, $58 ; Word Fill
#_12CE8B: db $02 ; Direct Copy
#_12CE8C: db $78, $8F, $78
#_12CE8F: db $83 ; Repeat Fill
#_12CE90: db $A0, $03 ; Repeat Fill bytes
#_12CE92: db $23 ; Byte Fill
#_12CE93: db $78
#_12CE94: db $83 ; Repeat Fill
#_12CE95: db $CA, $03 ; Repeat Fill bytes
#_12CE97: db $05 ; Direct Copy
#_12CE98: db $BF, $78, $8C, $7B, $8C, $3B
#_12CE9E: db $84 ; Repeat Fill
#_12CE9F: db $CA, $03 ; Repeat Fill bytes
#_12CEA1: db $23 ; Byte Fill
#_12CEA2: db $78
#_12CEA3: db $01 ; Direct Copy
#_12CEA4: db $7B, $7B
#_12CEA6: db $22 ; Byte Fill
#_12CEA7: db $78
#_12CEA8: db $01 ; Direct Copy
#_12CEA9: db $EF, $58
#_12CEAB: db $43 ; Word Fill
#_12CEAC: db $EC, $5A ; Word Fill
#_12CEAE: db $E0, $26 ; EXT Direct Copy
#_12CEB0: db $EB, $5D, $EF, $5D, $F7, $4E, $FB, $57
#_12CEB8: db $FD, $5A, $40, $41, $41, $40, $40, $60
#_12CEC0: db $40, $40, $FE, $3C, $5F, $3D, $BE, $82
#_12CEC8: db $CF, $4C, $50, $B0, $BF, $C0, $FB, $67
#_12CED0: db $59, $B7, $01, $80, $41, $30, $0F
#_12CED7: db $22 ; Byte Fill
#_12CED8: db $00
#_12CED9: db $E0, $2F ; EXT Direct Copy
#_12CEDB: db $C3, $3F, $9A, $7E, $B8, $7A, $F4, $73
#_12CEE3: db $C9, $47, $83, $3F, $A6, $6E, $D4, $4D
#_12CEEB: db $00, $01, $05, $0C, $38, $40, $11, $32
#_12CEF3: db $03, $4F, $06, $7F, $3E, $FF, $CD, $CF
#_12CEFB: db $83, $BF, $2E, $60, $5E, $C0, $BF, $8E
#_12CF03: db $B0, $80, $00, $30, $40, $9F, $31, $6E
#_12CF0B: db $37 ; Byte Fill
#_12CF0C: db $00
#_12CF0D: db $E0, $26 ; EXT Direct Copy
#_12CF0F: db $4E, $DB, $8B, $9D, $89, $9E, $84, $97
#_12CF17: db $06, $1F, $4B, $3F, $9D, $7F, $AC, $6F
#_12CF1F: db $20, $60, $60, $68, $E0, $C0, $80, $10
#_12CF27: db $FA, $2F, $FA, $37, $9F, $78, $AE, $5E
#_12CF2F: db $B3, $6F, $BF, $70, $80, $3F, $FF
#_12CF36: db $22 ; Byte Fill
#_12CF37: db $00
#_12CF38: db $19 ; Direct Copy
#_12CF39: db $40, $41, $60, $70, $7F, $00, $FF, $00
#_12CF41: db $C1, $3C, $DD, $EE, $ED, $76, $F5, $BA
#_12CF49: db $35, $DA, $FD, $DA, $2D, $CA, $00, $3E
#_12CF51: db $0E, $06
#_12CF53: db $22 ; Byte Fill
#_12CF54: db $02
#_12CF55: db $02 ; Direct Copy
#_12CF56: db $12, $FF, $FF
#_12CF59: db $22 ; Byte Fill
#_12CF5A: db $00
#_12CF5B: db $84 ; Repeat Fill
#_12CF5C: db $48, $01 ; Repeat Fill bytes
#_12CF5E: db $22 ; Byte Fill
#_12CF5F: db $00
#_12CF60: db $83 ; Repeat Fill
#_12CF61: db $3C, $01 ; Repeat Fill bytes
#_12CF63: db $00 ; Direct Copy
#_12CF64: db $FF
#_12CF65: db $22 ; Byte Fill
#_12CF66: db $00
#_12CF67: db $13 ; Direct Copy
#_12CF68: db $FF, $00, $00, $7E, $81, $E7, $7E, $91
#_12CF70: db $7E, $B1, $7E, $85, $7E, $83, $3E, $C3
#_12CF78: db $5A, $7E, $81, $00
#_12CF7C: db $25 ; Byte Fill
#_12CF7D: db $7E
#_12CF7E: db $83 ; Repeat Fill
#_12CF7F: db $8F, $03 ; Repeat Fill bytes
#_12CF81: db $02 ; Direct Copy
#_12CF82: db $7F, $9F, $7F
#_12CF85: db $43 ; Word Fill
#_12CF86: db $BF, $60 ; Word Fill
#_12CF88: db $01 ; Direct Copy
#_12CF89: db $B0, $7F
#_12CF8B: db $43 ; Word Fill
#_12CF8C: db $BF, $60 ; Word Fill
#_12CF8E: db $06 ; Direct Copy
#_12CF8F: db $00, $7F, $7F, $60, $60, $7F, $60
#_12CF96: db $44 ; Word Fill
#_12CF97: db $60, $BF ; Word Fill
#_12CF99: db $01 ; Direct Copy
#_12CF9A: db $B0, $7F
#_12CF9C: db $43 ; Word Fill
#_12CF9D: db $BF, $60 ; Word Fill
#_12CF9F: db $05 ; Direct Copy
#_12CFA0: db $9F, $7F, $C0, $7F, $FF, $00
#_12CFA6: db $84 ; Repeat Fill
#_12CFA7: db $F3, $04 ; Repeat Fill bytes
#_12CFA9: db $09 ; Direct Copy
#_12CFAA: db $7F, $7F, $00, $28, $10, $EF, $10, $FF
#_12CFB2: db $EF, $07
#_12CFB4: db $83 ; Repeat Fill
#_12CFB5: db $B5, $01 ; Repeat Fill bytes
#_12CFB7: db $03 ; Direct Copy
#_12CFB8: db $D7, $EF, $10, $28
#_12CFBC: db $22 ; Byte Fill
#_12CFBD: db $10
#_12CFBE: db $14 ; Direct Copy
#_12CFBF: db $EF, $FF, $EF, $D7, $10, $10, $14, $08
#_12CFC7: db $F7, $08, $FF, $EB, $1C, $F7, $68, $FF
#_12CFCF: db $FF, $F7, $F7, $08, $14
#_12CFD4: db $22 ; Byte Fill
#_12CFD5: db $08
#_12CFD6: db $05 ; Direct Copy
#_12CFD7: db $EB, $F7, $FF, $F7, $08, $08
#_12CFDD: db $84 ; Repeat Fill
#_12CFDE: db $10, $05 ; Repeat Fill bytes
#_12CFE0: db $03 ; Direct Copy
#_12CFE1: db $D7, $10, $EF, $07
#_12CFE5: db $83 ; Repeat Fill
#_12CFE6: db $4B, $01 ; Repeat Fill bytes
#_12CFE8: db $01 ; Direct Copy
#_12CFE9: db $10, $28
#_12CFEB: db $22 ; Byte Fill
#_12CFEC: db $10
#_12CFED: db $06 ; Direct Copy
#_12CFEE: db $D7, $EF, $FF, $EF, $10, $10, $14
#_12CFF5: db $43 ; Word Fill
#_12CFF6: db $08, $FF ; Word Fill
#_12CFF8: db $09 ; Direct Copy
#_12CFF9: db $F6, $23, $FE, $81, $FE, $FF, $EA, $F7
#_12D001: db $08, $14
#_12D003: db $22 ; Byte Fill
#_12D004: db $08
#_12D005: db $19 ; Direct Copy
#_12D006: db $F6, $FE, $FE, $EA, $08, $08, $EF, $5D
#_12D00E: db $F7, $4D, $FA, $65, $FF, $70, $FF, $7C
#_12D016: db $FF, $7F, $80, $7F, $FF, $00, $40, $60
#_12D01E: db $70, $78
#_12D020: db $22 ; Byte Fill
#_12D021: db $7F
#_12D022: db $E0, $2A ; EXT Direct Copy
#_12D024: db $00, $EA, $D7, $3B, $27, $D9, $D7, $7A
#_12D02C: db $F7, $FB, $07, $F8, $F6, $04, $FB, $FF
#_12D034: db $00, $00, $C0, $20, $00, $00, $F1, $F8
#_12D03C: db $00, $FF, $00, $80, $00, $C0, $7F, $CF
#_12D044: db $70, $D7, $6F, $AC, $5C, $D2, $33, $C9
#_12D04C: db $2F, $00, $7F
#_12D04F: db $22 ; Byte Fill
#_12D050: db $00
#_12D051: db $03 ; Direct Copy
#_12D052: db $03, $0C, $10, $FF
#_12D056: db $22 ; Byte Fill
#_12D057: db $00
#_12D058: db $13 ; Direct Copy
#_12D059: db $07, $F8, $FA, $06, $C4, $FC, $00, $71
#_12D061: db $30, $FB, $81, $CF, $00, $FF, $00, $01
#_12D069: db $03, $8E, $04, $30
#_12D06D: db $37 ; Byte Fill
#_12D06E: db $00
#_12D06F: db $17 ; Direct Copy
#_12D070: db $FF, $00, $03, $00, $F9, $00, $04, $78
#_12D078: db $3A, $FC, $56, $F4, $AB, $EC, $55, $DE
#_12D080: db $00, $FC, $06, $83, $01, $09, $10, $20
#_12D088: db $FF ; End of GFX 22

;===================================================================================================

GFX_23:
#_12D089: db $43 ; Word Fill
#_12D08A: db $FF, $00 ; Word Fill
#_12D08C: db $12 ; Direct Copy
#_12D08D: db $81, $81, $7F, $71, $1A, $11, $CF, $C1
#_12D095: db $04, $FB, $FF, $00, $FF, $FF, $7E, $80
#_12D09D: db $E4, $30, $00
#_12D0A0: db $83 ; Repeat Fill
#_12D0A1: db $0D, $00 ; Repeat Fill bytes
#_12D0A3: db $22 ; Byte Fill
#_12D0A4: db $00
#_12D0A5: db $09 ; Direct Copy
#_12D0A6: db $38, $00, $6C, $28, $54, $00, $6C, $BB
#_12D0AE: db $7F, $10
#_12D0B0: db $22 ; Byte Fill
#_12D0B1: db $FF
#_12D0B2: db $04 ; Direct Copy
#_12D0B3: db $C7, $93, $AB, $10, $83
#_12D0B8: db $43 ; Word Fill
#_12D0B9: db $FF, $00 ; Word Fill
#_12D0BB: db $03 ; Direct Copy
#_12D0BC: db $31, $31, $EC, $EC
#_12D0C0: db $22 ; Byte Fill
#_12D0C1: db $FF
#_12D0C2: db $0C ; Direct Copy
#_12D0C3: db $00, $FF, $00, $3F, $3F, $FF, $FF, $CE
#_12D0CB: db $13, $00, $FF, $FF, $C0
#_12D0D0: db $43 ; Word Fill
#_12D0D1: db $FF, $00 ; Word Fill
#_12D0D3: db $03 ; Direct Copy
#_12D0D4: db $86, $86, $41, $41
#_12D0D8: db $22 ; Byte Fill
#_12D0D9: db $FF
#_12D0DA: db $02 ; Direct Copy
#_12D0DB: db $00, $FF, $00
#_12D0DE: db $23 ; Byte Fill
#_12D0DF: db $FF
#_12D0E0: db $05 ; Direct Copy
#_12D0E1: db $79, $BE, $00, $FF, $FF, $00
#_12D0E7: db $43 ; Word Fill
#_12D0E8: db $DF, $18 ; Word Fill
#_12D0EA: db $03 ; Direct Copy
#_12D0EB: db $FF, $38, $EF, $28
#_12D0EF: db $43 ; Word Fill
#_12D0F0: db $DF, $18 ; Word Fill
#_12D0F2: db $15 ; Direct Copy
#_12D0F3: db $CF, $08, $EF, $28, $E7, $E7, $C7, $D7
#_12D0FB: db $E7, $E7, $F7, $D7, $8C, $F7, $4C, $B7
#_12D103: db $AC, $D7, $5C, $67, $BC, $A7
#_12D109: db $45 ; Word Fill
#_12D10A: db $CC, $57 ; Word Fill
#_12D10C: db $22 ; Byte Fill
#_12D10D: db $00
#_12D10E: db $01 ; Direct Copy
#_12D10F: db $80, $40
#_12D111: db $22 ; Byte Fill
#_12D112: db $20
#_12D113: db $01 ; Direct Copy
#_12D114: db $FF, $7F
#_12D116: db $4D ; Word Fill
#_12D117: db $FF, $40 ; Word Fill
#_12D119: db $27 ; Byte Fill
#_12D11A: db $7F
#_12D11B: db $22 ; Byte Fill
#_12D11C: db $FF
#_12D11D: db $4C ; Word Fill
#_12D11E: db $00, $FF ; Word Fill
#_12D120: db $27 ; Byte Fill
#_12D121: db $FF
#_12D122: db $E0, $2A ; EXT Direct Copy
#_12D124: db $7F, $80, $D0, $37, $A0, $7F, $95, $7D
#_12D12C: db $82, $73, $C1, $3B, $C0, $3A, $8A, $7B
#_12D134: db $00, $0F, $18, $22, $2C, $14, $15, $24
#_12D13C: db $94, $7C, $D8, $3F, $A0, $5B, $9F, $64
#_12D144: db $84, $7B, $CD, $3B, $E4, $1B, $7F, $80
#_12D14C: db $23, $20, $1F
#_12D14F: db $24 ; Byte Fill
#_12D150: db $00
#_12D151: db $1D ; Direct Copy
#_12D152: db $C0, $C0, $9F, $9F, $BE, $BE, $BD, $BD
#_12D15A: db $F9, $F9, $F1, $F0, $F9, $F8, $BD, $3C
#_12D162: db $7F, $E0, $C1, $C2, $87, $AE, $A6, $42
#_12D16A: db $40, $40, $FF, $FF, $00, $00
#_12D170: db $29 ; Byte Fill
#_12D171: db $FF
#_12D172: db $03 ; Direct Copy
#_12D173: db $BF, $40, $FF, $00
#_12D177: db $24 ; Byte Fill
#_12D178: db $FF
#_12D179: db $1C ; Direct Copy
#_12D17A: db $F0, $FD, $C0, $FA, $91, $F1, $26, $F5
#_12D182: db $4A, $F5, $3A, $F5, $4A, $F5, $4E, $F0
#_12D18A: db $C3, $8C, $19, $35, $05, $35, $31, $9F
#_12D192: db $50, $FD, $40, $FA, $11
#_12D197: db $89 ; Repeat Fill
#_12D198: db $26, $01 ; Repeat Fill bytes
#_12D19A: db $02 ; Direct Copy
#_12D19B: db $20, $03, $0C
#_12D19E: db $84 ; Repeat Fill
#_12D19F: db $33, $01 ; Repeat Fill bytes
#_12D1A1: db $02 ; Direct Copy
#_12D1A2: db $FF, $00, $DF
#_12D1A5: db $4A ; Word Fill
#_12D1A6: db $1F, $C0 ; Word Fill
#_12D1A8: db $01 ; Direct Copy
#_12D1A9: db $FF, $00
#_12D1AB: db $27 ; Byte Fill
#_12D1AC: db $7F
#_12D1AD: db $02 ; Direct Copy
#_12D1AE: db $FF, $00, $FF
#_12D1B1: db $4A ; Word Fill
#_12D1B2: db $FF, $00 ; Word Fill
#_12D1B4: db $01 ; Direct Copy
#_12D1B5: db $FF, $00
#_12D1B7: db $28 ; Byte Fill
#_12D1B8: db $FF
#_12D1B9: db $0A ; Direct Copy
#_12D1BA: db $7F, $FF, $00, $7F, $80, $5F, $A0, $E0
#_12D1C2: db $3F, $7F, $BF
#_12D1C5: db $43 ; Word Fill
#_12D1C6: db $7F, $80 ; Word Fill
#_12D1C8: db $25 ; Byte Fill
#_12D1C9: db $00
#_12D1CA: db $01 ; Direct Copy
#_12D1CB: db $3F, $00
#_12D1CD: db $22 ; Byte Fill
#_12D1CE: db $FF
#_12D1CF: db $0B ; Direct Copy
#_12D1D0: db $00, $9C, $63, $A2, $7F, $D5, $B6, $FF
#_12D1D8: db $C1, $FF, $00, $FF
#_12D1DC: db $24 ; Byte Fill
#_12D1DD: db $00
#_12D1DE: db $0E ; Direct Copy
#_12D1DF: db $88, $00, $FF, $00, $AB, $EC, $57, $B7
#_12D1E7: db $28, $D8, $18, $E7, $FF, $00, $FF
#_12D1EE: db $44 ; Word Fill
#_12D1EF: db $FF, $00 ; Word Fill
#_12D1F1: db $02 ; Direct Copy
#_12D1F2: db $10, $08, $07
#_12D1F5: db $24 ; Byte Fill
#_12D1F6: db $00
#_12D1F7: db $05 ; Direct Copy
#_12D1F8: db $FF, $A2, $5D, $FF, $A2, $A2
#_12D1FE: db $84 ; Repeat Fill
#_12D1FF: db $69, $01 ; Repeat Fill bytes
#_12D201: db $44 ; Word Fill
#_12D202: db $7F, $80 ; Word Fill
#_12D204: db $02 ; Direct Copy
#_12D205: db $00, $00, $5D
#_12D208: db $24 ; Byte Fill
#_12D209: db $00
#_12D20A: db $83 ; Repeat Fill
#_12D20B: db $66, $00 ; Repeat Fill bytes
#_12D20D: db $45 ; Word Fill
#_12D20E: db $CF, $08 ; Word Fill
#_12D210: db $43 ; Word Fill
#_12D211: db $EF, $28 ; Word Fill
#_12D213: db $03 ; Direct Copy
#_12D214: db $DF, $18, $D7, $E7
#_12D218: db $22 ; Byte Fill
#_12D219: db $F7
#_12D21A: db $08 ; Direct Copy
#_12D21B: db $D7, $D7, $E7, $AF, $F0, $CC, $57, $AC
#_12D223: db $F7
#_12D224: db $45 ; Word Fill
#_12D225: db $CC, $57 ; Word Fill
#_12D227: db $83 ; Repeat Fill
#_12D228: db $FC, $01 ; Repeat Fill bytes
#_12D22A: db $02 ; Direct Copy
#_12D22B: db $00, $20, $00
#_12D22E: db $22 ; Byte Fill
#_12D22F: db $20
#_12D230: db $01 ; Direct Copy
#_12D231: db $00, $20
#_12D233: db $4A ; Word Fill
#_12D234: db $FF, $40 ; Word Fill
#_12D236: db $00 ; Direct Copy
#_12D237: db $7F
#_12D238: db $43 ; Word Fill
#_12D239: db $FF, $00 ; Word Fill
#_12D23B: db $26 ; Byte Fill
#_12D23C: db $7F
#_12D23D: db $4A ; Word Fill
#_12D23E: db $00, $FF ; Word Fill
#_12D240: db $22 ; Byte Fill
#_12D241: db $FF
#_12D242: db $02 ; Direct Copy
#_12D243: db $00, $FF, $00
#_12D246: db $26 ; Byte Fill
#_12D247: db $FF
#_12D248: db $04 ; Direct Copy
#_12D249: db $00, $1D, $17, $0D, $F7
#_12D24E: db $43 ; Word Fill
#_12D24F: db $06, $FB ; Word Fill
#_12D251: db $08 ; Direct Copy
#_12D252: db $FE, $03, $FA, $FC, $03, $FC, $00, $FF
#_12D25A: db $E0
#_12D25B: db $23 ; Byte Fill
#_12D25C: db $00
#_12D25D: db $0C ; Direct Copy
#_12D25E: db $01, $00, $00, $C6, $48, $DC, $05, $EC
#_12D266: db $80, $F7, $80, $00, $7F
#_12D26B: db $22 ; Byte Fill
#_12D26C: db $FF
#_12D26D: db $07 ; Direct Copy
#_12D26E: db $00, $00, $FF, $39, $23, $13, $08, $80
#_12D276: db $22 ; Byte Fill
#_12D277: db $00
#_12D278: db $01 ; Direct Copy
#_12D279: db $9D, $1C
#_12D27B: db $43 ; Word Fill
#_12D27C: db $BD, $3C ; Word Fill
#_12D27E: db $03 ; Direct Copy
#_12D27F: db $99, $18, $E7, $00
#_12D283: db $45 ; Word Fill
#_12D284: db $FF, $7E ; Word Fill
#_12D286: db $1F ; Direct Copy
#_12D287: db $62, $4E, $42, $66, $7E, $3C, $3C, $3E
#_12D28F: db $FF, $55, $FF, $00, $FF, $F0, $FF, $60
#_12D297: db $FD, $42, $FB, $FF, $04, $FB, $FF, $40
#_12D29F: db $55, $00, $F0, $60, $43, $04, $04, $44
#_12D2A7: db $37 ; Byte Fill
#_12D2A8: db $00
#_12D2A9: db $E0, $21 ; EXT Direct Copy
#_12D2AB: db $F9, $67, $FF, $78, $BF, $3C, $BF, $3F
#_12D2B3: db $9F, $5F, $C7, $67, $E0, $78, $F0, $7F
#_12D2BB: db $18, $07, $47, $48, $28, $18, $07, $00
#_12D2C3: db $80, $00, $FF, $7F, $BF, $70, $9F, $56
#_12D2CB: db $99, $56
#_12D2CD: db $45 ; Word Fill
#_12D2CE: db $D9, $16 ; Word Fill
#_12D2D0: db $02 ; Direct Copy
#_12D2D1: db $7F, $00, $00
#_12D2D4: db $24 ; Byte Fill
#_12D2D5: db $26
#_12D2D6: db $83 ; Repeat Fill
#_12D2D7: db $0C, $01 ; Repeat Fill bytes
#_12D2D9: db $05 ; Direct Copy
#_12D2DA: db $7F, $80, $5F, $36, $F9, $B2
#_12D2E0: db $45 ; Word Fill
#_12D2E1: db $F9, $B6 ; Word Fill
#_12D2E3: db $03 ; Direct Copy
#_12D2E4: db $FF, $00, $00, $B6
#_12D2E8: db $23 ; Byte Fill
#_12D2E9: db $36
#_12D2EA: db $01 ; Direct Copy
#_12D2EB: db $84, $7B
#_12D2ED: db $43 ; Word Fill
#_12D2EE: db $C4, $00 ; Word Fill
#_12D2F0: db $E0, $39 ; EXT Direct Copy
#_12D2F2: db $CE, $00, $DF, $00, $DB, $00, $C3, $03
#_12D2FA: db $FF, $00, $00, $7B, $7B, $75, $60, $64
#_12D302: db $7C, $7F, $EE, $7D, $D6, $54, $82, $54
#_12D30A: db $BA, $7C, $C6, $BA, $7C, $44, $00, $00
#_12D312: db $FF, $00, $44, $29, $39, $01, $01, $83
#_12D31A: db $FF, $FF, $38, $07, $3F, $0D, $3F, $18
#_12D322: db $1F, $30, $2F, $38, $37, $2D, $5A, $47
#_12D32A: db $0F, $D5
#_12D32C: db $25 ; Byte Fill
#_12D32D: db $C0
#_12D32E: db $11 ; Direct Copy
#_12D32F: db $A0, $20, $E3, $1C, $FF, $B6, $FF, $E3
#_12D337: db $FF, $41, $BE, $E3, $5D, $B6, $EB, $1C
#_12D33F: db $FF, $14
#_12D341: db $27 ; Byte Fill
#_12D342: db $00
#_12D343: db $12 ; Direct Copy
#_12D344: db $02, $02, $01, $01, $EC, $9C, $F4, $BB
#_12D34C: db $BB, $EC, $BD, $C7, $FF, $82, $BD, $C7
#_12D354: db $FD, $FE, $03
#_12D357: db $24 ; Byte Fill
#_12D358: db $00
#_12D359: db $03 ; Direct Copy
#_12D35A: db $BB, $EC, $F7, $B8
#_12D35E: db $87 ; Repeat Fill
#_12D35F: db $68, $03 ; Repeat Fill bytes
#_12D361: db $83 ; Repeat Fill
#_12D362: db $78, $03 ; Repeat Fill bytes
#_12D364: db $E4, $37 ; EXT Byte Fill
#_12D366: db $00
#_12D367: db $00 ; Direct Copy
#_12D368: db $10
#_12D369: db $43 ; Word Fill
#_12D36A: db $F0, $1C ; Word Fill
#_12D36C: db $02 ; Direct Copy
#_12D36D: db $EB, $18, $EC
#_12D370: db $43 ; Word Fill
#_12D371: db $1B, $EE ; Word Fill
#_12D373: db $07 ; Direct Copy
#_12D374: db $0D, $F7, $0D, $17, $EF, $EF, $E0, $E3
#_12D37C: db $23 ; Byte Fill
#_12D37D: db $E0
#_12D37E: db $24 ; Byte Fill
#_12D37F: db $00
#_12D380: db $22 ; Byte Fill
#_12D381: db $FF
#_12D382: db $07 ; Direct Copy
#_12D383: db $FD, $1D, $FC, $3C, $FD, $3D, $D7, $59
#_12D38B: db $83 ; Repeat Fill
#_12D38C: db $0A, $01 ; Repeat Fill bytes
#_12D38E: db $03 ; Direct Copy
#_12D38F: db $1F, $3F, $3F, $38
#_12D393: db $44 ; Word Fill
#_12D394: db $FF, $7E ; Word Fill
#_12D396: db $00 ; Direct Copy
#_12D397: db $00
#_12D398: db $46 ; Word Fill
#_12D399: db $FF, $3E ; Word Fill
#_12D39B: db $1A ; Direct Copy
#_12D39C: db $00, $FF, $3E, $7E, $7E, $00, $00, $3E
#_12D3A4: db $3E, $00, $00, $F8, $0B, $F0, $1B, $E3
#_12D3AC: db $38, $EB, $30, $DB, $00, $CB, $10, $E3
#_12D3B4: db $29, $FD, $3B
#_12D3B7: db $23 ; Byte Fill
#_12D3B8: db $04
#_12D3B9: db $E0, $3D ; EXT Direct Copy
#_12D3BB: db $24, $24, $35, $34, $00, $FF, $E7, $F8
#_12D3C3: db $98, $E0, $70, $D3, $E7, $A8, $4D, $12
#_12D3CB: db $9F, $20, $9D, $22, $00, $00, $07, $0C
#_12D3D3: db $10, $A0, $41, $49, $97, $5F, $C7, $67
#_12D3DB: db $B0, $68, $DC, $33, $EB, $37, $78, $97
#_12D3E3: db $3F, $CB, $1F, $E0, $20, $18, $07, $00
#_12D3EB: db $20, $10, $0B, $00, $DF, $10, $C0, $00
#_12D3F3: db $E0, $2F, $ED, $22, $ED, $20
#_12D3F9: db $44 ; Word Fill
#_12D3FA: db $EF, $22 ; Word Fill
#_12D3FC: db $05 ; Direct Copy
#_12D3FD: db $20, $20, $3F, $10, $10, $12
#_12D403: db $22 ; Byte Fill
#_12D404: db $10
#_12D405: db $00 ; Direct Copy
#_12D406: db $FF
#_12D407: db $23 ; Byte Fill
#_12D408: db $00
#_12D409: db $04 ; Direct Copy
#_12D40A: db $FF, $4F, $B6, $59, $12
#_12D40F: db $43 ; Word Fill
#_12D410: db $79, $36 ; Word Fill
#_12D412: db $83 ; Repeat Fill
#_12D413: db $0B, $01 ; Repeat Fill bytes
#_12D415: db $0C ; Direct Copy
#_12D416: db $00, $06, $A6, $86, $86, $00, $FF, $00
#_12D41E: db $EF, $10, $F0, $DF, $E0
#_12D423: db $44 ; Word Fill
#_12D424: db $C0, $FF ; Word Fill
#_12D426: db $22 ; Byte Fill
#_12D427: db $FF
#_12D428: db $22 ; Byte Fill
#_12D429: db $00
#_12D42A: db $0C ; Direct Copy
#_12D42B: db $C0, $DF, $C0, $C0, $00, $00, $BB, $44
#_12D433: db $BB, $7D, $FF, $83, $00
#_12D438: db $44 ; Word Fill
#_12D439: db $00, $FF ; Word Fill
#_12D43B: db $22 ; Byte Fill
#_12D43C: db $FF
#_12D43D: db $04 ; Direct Copy
#_12D43E: db $00, $00, $01, $83, $FF
#_12D443: db $23 ; Byte Fill
#_12D444: db $00
#_12D445: db $01 ; Direct Copy
#_12D446: db $FF, $FF
#_12D448: db $22 ; Byte Fill
#_12D449: db $00
#_12D44A: db $84 ; Repeat Fill
#_12D44B: db $75, $01 ; Repeat Fill bytes
#_12D44D: db $22 ; Byte Fill
#_12D44E: db $00
#_12D44F: db $84 ; Repeat Fill
#_12D450: db $0A, $01 ; Repeat Fill bytes
#_12D452: db $22 ; Byte Fill
#_12D453: db $00
#_12D454: db $00 ; Direct Copy
#_12D455: db $FF
#_12D456: db $22 ; Byte Fill
#_12D457: db $00
#_12D458: db $01 ; Direct Copy
#_12D459: db $FF, $7E
#_12D45B: db $48 ; Word Fill
#_12D45C: db $FF, $42 ; Word Fill
#_12D45E: db $83 ; Repeat Fill
#_12D45F: db $F3, $03 ; Repeat Fill bytes
#_12D461: db $E4, $37 ; EXT Byte Fill
#_12D463: db $00
#_12D464: db $00 ; Direct Copy
#_12D465: db $C1
#_12D466: db $43 ; Word Fill
#_12D467: db $7E, $FF ; Word Fill
#_12D469: db $01 ; Direct Copy
#_12D46A: db $00, $C0
#_12D46C: db $43 ; Word Fill
#_12D46D: db $7F, $FF ; Word Fill
#_12D46F: db $83 ; Repeat Fill
#_12D470: db $79, $02 ; Repeat Fill bytes
#_12D472: db $09 ; Direct Copy
#_12D473: db $00, $7E, $7E, $00, $7F, $7F, $00, $7E
#_12D47B: db $00, $01
#_12D47D: db $43 ; Word Fill
#_12D47E: db $FE, $FF ; Word Fill
#_12D480: db $01 ; Direct Copy
#_12D481: db $00, $10
#_12D483: db $43 ; Word Fill
#_12D484: db $EF, $FF ; Word Fill
#_12D486: db $00 ; Direct Copy
#_12D487: db $00
#_12D488: db $83 ; Repeat Fill
#_12D489: db $2A, $05 ; Repeat Fill bytes
#_12D48B: db $0D ; Direct Copy
#_12D48C: db $FE, $FE, $00, $EF, $EF, $00, $FE, $00
#_12D494: db $7F, $80, $BF, $00, $FC, $03
#_12D49A: db $43 ; Word Fill
#_12D49B: db $FD, $02 ; Word Fill
#_12D49D: db $0A ; Direct Copy
#_12D49E: db $FF, $00, $D4, $2B, $FF, $00, $00, $7C
#_12D4A6: db $53, $52, $52
#_12D4A9: db $22 ; Byte Fill
#_12D4AA: db $54
#_12D4AB: db $01 ; Direct Copy
#_12D4AC: db $FF, $00
#_12D4AE: db $44 ; Word Fill
#_12D4AF: db $FF, $54 ; Word Fill
#_12D4B1: db $00 ; Direct Copy
#_12D4B2: db $57
#_12D4B3: db $44 ; Word Fill
#_12D4B4: db $FF, $54 ; Word Fill
#_12D4B6: db $03 ; Direct Copy
#_12D4B7: db $7F, $7F, $80, $7F
#_12D4BB: db $26 ; Byte Fill
#_12D4BC: db $00
#_12D4BD: db $0B ; Direct Copy
#_12D4BE: db $FF, $3E, $FF, $1E, $FF, $80, $FF, $9E
#_12D4C6: db $FF, $DE, $FF, $E0
#_12D4CA: db $22 ; Byte Fill
#_12D4CB: db $FF
#_12D4CC: db $14 ; Direct Copy
#_12D4CD: db $00, $3E, $1E, $80, $80, $DE, $E0, $00
#_12D4D5: db $00, $FD, $5F, $FF, $4F, $FF, $63, $FF
#_12D4DD: db $74, $BF, $36, $FF, $00
#_12D4E2: db $22 ; Byte Fill
#_12D4E3: db $FF
#_12D4E4: db $05 ; Direct Copy
#_12D4E5: db $00, $58, $4F, $63, $34, $40
#_12D4EB: db $22 ; Byte Fill
#_12D4EC: db $00
#_12D4ED: db $E0, $2C ; EXT Direct Copy
#_12D4EF: db $9D, $22, $96, $49, $8F, $50, $C3, $A4
#_12D4F7: db $48, $B8, $E6, $DE, $F8, $E7, $17, $F8
#_12D4FF: db $41, $20, $22, $18, $0F, $07, $00, $00
#_12D507: db $FD, $C3, $DA, $BD, $BD, $66, $99, $66
#_12D50F: db $A5, $7E, $42, $BD, $BD, $C3, $02, $FF
#_12D517: db $00, $18, $24, $24, $3C
#_12D51C: db $22 ; Byte Fill
#_12D51D: db $00
#_12D51E: db $0E ; Direct Copy
#_12D51F: db $FF, $40, $E0, $3F, $BE, $41, $82, $7D
#_12D527: db $C2, $7D, $BE, $7D, $C0, $3F, $FF
#_12D52E: db $28 ; Byte Fill
#_12D52F: db $00
#_12D530: db $83 ; Repeat Fill
#_12D531: db $0B, $01 ; Repeat Fill bytes
#_12D533: db $01 ; Direct Copy
#_12D534: db $7E, $81
#_12D536: db $43 ; Word Fill
#_12D537: db $42, $BD ; Word Fill
#_12D539: db $04 ; Direct Copy
#_12D53A: db $7E, $BD, $00, $FF, $FF
#_12D53F: db $28 ; Byte Fill
#_12D540: db $00
#_12D541: db $FF ; End of GFX 23

;===================================================================================================

GFX_24:
#_12D542: db $0F ; Direct Copy
#_12D543: db $CF, $3F, $E6, $5F, $B0, $6F, $9F, $70
#_12D54B: db $88, $78, $47, $BF, $66, $9F, $73, $AF
#_12D553: db $23 ; Byte Fill
#_12D554: db $00
#_12D555: db $00 ; Direct Copy
#_12D556: db $07
#_12D557: db $22 ; Byte Fill
#_12D558: db $00
#_12D559: db $0F ; Direct Copy
#_12D55A: db $F8, $07, $C7, $78, $63, $BD, $31, $DE
#_12D562: db $98, $EF, $D6, $E7, $D7, $E7, $95, $E7
#_12D56A: db $24 ; Byte Fill
#_12D56B: db $00
#_12D56C: db $22 ; Byte Fill
#_12D56D: db $08
#_12D56E: db $09 ; Direct Copy
#_12D56F: db $4F, $80, $5F, $80, $7F, $87, $75, $88
#_12D577: db $6B, $90
#_12D579: db $43 ; Word Fill
#_12D57A: db $70, $E0 ; Word Fill
#_12D57C: db $E0, $39 ; EXT Direct Copy
#_12D57E: db $73, $E3, $7F, $7F, $78, $73, $67, $0F
#_12D586: db $0F, $0C, $FC, $00, $FE, $00, $FB, $F8
#_12D58E: db $F5, $1C, $FA, $0E, $3D, $07, $1E, $03
#_12D596: db $ED, $E1, $FF, $FF, $07, $E3, $F1, $F8
#_12D59E: db $FC, $1E, $00, $FF, $FF, $07, $3F, $07
#_12D5A6: db $77, $08, $E8, $10, $F0, $20, $E9, $21
#_12D5AE: db $F9, $21, $00, $F8, $F8, $F0, $E7, $CF
#_12D5B6: db $DE, $DE
#_12D5B8: db $45 ; Word Fill
#_12D5B9: db $8C, $F7 ; Word Fill
#_12D5BB: db $09 ; Direct Copy
#_12D5BC: db $CC, $37, $7F, $80, $63, $9E, $C7, $BC
#_12D5C4: db $CE, $B9
#_12D5C6: db $24 ; Byte Fill
#_12D5C7: db $00
#_12D5C8: db $0A ; Direct Copy
#_12D5C9: db $1E, $3C, $38, $FF, $80, $59, $00, $BF
#_12D5D1: db $80, $1A, $A6
#_12D5D4: db $43 ; Word Fill
#_12D5D5: db $18, $BD ; Word Fill
#_12D5D7: db $05 ; Direct Copy
#_12D5D8: db $02, $BE, $98, $5F, $7F, $FF
#_12D5DE: db $62 ; Increasing Fill
#_12D5DF: db $40 ; Increasing Fill Start
#_12D5E0: db $E0, $20 ; EXT Direct Copy
#_12D5E2: db $42, $41, $20, $FF, $01, $9A, $00, $FD
#_12D5EA: db $01, $59, $65, $19, $BD, $18, $BD, $40
#_12D5F2: db $7D, $19, $FA, $FE, $FF, $02, $82, $42
#_12D5FA: db $42, $82, $04, $A1, $BE, $C0, $01, $A0
#_12D602: db $1E
#_12D603: db $43 ; Word Fill
#_12D604: db $FD, $0F ; Word Fill
#_12D606: db $08 ; Direct Copy
#_12D607: db $A0, $1F, $B2, $13, $E0, $0D, $40, $FE
#_12D60F: db $C1
#_12D610: db $22 ; Byte Fill
#_12D611: db $C0
#_12D612: db $07 ; Direct Copy
#_12D613: db $CC, $D2, $E0, $0D, $B2, $13, $A0, $1F
#_12D61B: db $43 ; Word Fill
#_12D61C: db $FD, $0F ; Word Fill
#_12D61E: db $07 ; Direct Copy
#_12D61F: db $A0, $1E, $C0, $01, $B9, $BE, $D2, $CC
#_12D627: db $22 ; Byte Fill
#_12D628: db $C0
#_12D629: db $15 ; Direct Copy
#_12D62A: db $C1, $FE, $40, $FF, $00, $FF, $03, $FE
#_12D632: db $77, $FC, $6A, $D4, $6A, $DA, $6D, $DF
#_12D63A: db $66, $CF, $72, $00, $03, $07
#_12D640: db $23 ; Byte Fill
#_12D641: db $0F
#_12D642: db $12 ; Direct Copy
#_12D643: db $07, $FF, $00, $FF, $83, $3C, $6F, $38
#_12D64B: db $2E, $70, $EC, $F0, $DC, $E7, $B8, $EC
#_12D653: db $76, $00, $C7
#_12D656: db $22 ; Byte Fill
#_12D657: db $EF
#_12D658: db $15 ; Direct Copy
#_12D659: db $DF, $BB, $77, $7E, $FF, $7B, $83, $7D
#_12D661: db $81, $6E, $80, $67, $80, $63, $80, $61
#_12D669: db $80, $60, $80, $00, $7C, $7E
#_12D66F: db $24 ; Byte Fill
#_12D670: db $7F
#_12D671: db $0B ; Direct Copy
#_12D672: db $40, $7F, $BF, $3F, $40, $00, $BF, $80
#_12D67A: db $40, $40, $BF, $3F
#_12D67E: db $43 ; Word Fill
#_12D67F: db $FF, $00 ; Word Fill
#_12D681: db $17 ; Direct Copy
#_12D682: db $80, $C0, $FF, $7F, $BF, $C0, $FF, $FF
#_12D68A: db $80, $00, $80, $40, $C0, $60, $D0, $20
#_12D692: db $D8, $20, $DC, $60, $96, $78, $CB, $24
#_12D69A: db $22 ; Byte Fill
#_12D69B: db $80
#_12D69C: db $10 ; Direct Copy
#_12D69D: db $C0, $C0, $80, $80, $D0, $DC, $C1, $BA
#_12D6A5: db $83, $75, $07, $EB, $0F, $1C, $1C, $FB
#_12D6AD: db $F8
#_12D6AE: db $43 ; Word Fill
#_12D6AF: db $FF, $00 ; Word Fill
#_12D6B1: db $E0, $67 ; EXT Direct Copy
#_12D6B3: db $3E, $7C, $F8, $F0, $E3, $07, $FF, $FF
#_12D6BB: db $E1, $21, $E0, $20, $E4, $24, $F0, $30
#_12D6C3: db $D9, $19, $6F, $0F, $B0, $80, $DF, $40
#_12D6CB: db $DE, $DF, $DB, $CF, $E6, $F0, $7F, $3F
#_12D6D3: db $FB, $02, $FD, $01, $F6, $F0, $1B, $18
#_12D6DB: db $0D, $0C, $25, $24, $05, $04, $8D, $8C
#_12D6E3: db $FC, $FE, $0F, $E7, $F3, $DB, $FB, $73
#_12D6EB: db $F3, $EF, $1F, $E0, $0C, $F3, $08, $F7
#_12D6F3: db $F9, $07, $FB, $F6, $0F, $F4, $0E, $F1
#_12D6FB: db $00, $00, $03, $07, $07, $06, $04, $00
#_12D703: db $92, $98, $C8, $4C, $C5, $45, $E1, $21
#_12D70B: db $BF, $1F, $DF, $40, $A0, $60, $C0, $3F
#_12D713: db $65, $33, $3A, $1E, $40, $20, $1F, $00
#_12D71B: db $43 ; Word Fill
#_12D71C: db $F9, $21 ; Word Fill
#_12D71E: db $0B ; Direct Copy
#_12D71F: db $FD, $21, $FE, $30, $EF, $38, $D7, $1C
#_12D727: db $6A, $0E, $35, $07
#_12D72B: db $22 ; Byte Fill
#_12D72C: db $DE
#_12D72D: db $E0, $46 ; EXT Direct Copy
#_12D72F: db $CF, $C7, $E3, $F1, $F8, $FF, $80, $75
#_12D737: db $66, $1A, $13, $8C, $89, $4C, $C9, $2C
#_12D73F: db $69, $8C, $09, $3C, $39, $00, $88, $E4
#_12D747: db $72, $32, $92, $72, $C2, $03, $04, $03
#_12D74F: db $FD, $86, $F8, $8E, $F1, $F9, $06, $F3
#_12D757: db $83, $30, $CF, $10, $EF, $F8, $00, $01
#_12D75F: db $00, $00, $0C, $00, $00, $B8, $A0, $7C
#_12D767: db $73, $9E, $F9, $0E, $F9, $FF, $00, $FB
#_12D76F: db $CB, $30, $D7, $30, $DF, $47, $80
#_12D776: db $22 ; Byte Fill
#_12D777: db $00
#_12D778: db $12 ; Direct Copy
#_12D779: db $04, $08, $00, $3C, $77, $0C, $73, $0E
#_12D781: db $71, $0F, $70, $18, $63, $30, $CB, $F4
#_12D789: db $0F, $CC, $57
#_12D78C: db $23 ; Byte Fill
#_12D78D: db $80
#_12D78E: db $E0, $4E ; EXT Direct Copy
#_12D790: db $84, $04, $00, $20, $AC, $B7, $4C, $77
#_12D798: db $CF, $F0, $EF, $73, $FC, $35, $78, $03
#_12D7A0: db $3C, $47, $0C, $77, $40, $80, $00, $00
#_12D7A8: db $02, $84, $80, $80, $CF, $70, $DF, $60
#_12D7B0: db $BF, $4A, $F7, $1A, $E7, $3B, $EE, $3B
#_12D7B8: db $FF, $61, $FF, $60, $02, $09, $1B, $3B
#_12D7C0: db $7B, $7B, $73, $63, $D0, $EC, $E7, $D8
#_12D7C8: db $EF, $B0, $FC, $A4, $F8, $28, $E3, $93
#_12D7D0: db $64, $96, $EF, $9C, $EF, $DF, $B8, $B3
#_12D7D8: db $A7, $CC, $C9, $C0, $D7, $5E, $D2
#_12D7DF: db $46 ; Word Fill
#_12D7E0: db $5E, $DA ; Word Fill
#_12D7E2: db $05 ; Direct Copy
#_12D7E3: db $D2, $5E, $80, $7E, $7C, $FF
#_12D7E9: db $25 ; Byte Fill
#_12D7EA: db $21
#_12D7EB: db $E0, $29 ; EXT Direct Copy
#_12D7ED: db $01, $00, $5E, $7F, $B0, $E7, $67, $CF
#_12D7F5: db $0C, $9F, $18, $BF, $11, $BE, $56, $F9
#_12D7FD: db $00, $FF, $80, $18, $37, $6F, $5F, $5F
#_12D805: db $1F, $00, $80, $00, $C0, $00, $A0, $40
#_12D80D: db $90, $60, $88, $70, $DC, $38, $DA, $3C
#_12D815: db $DC, $3F
#_12D817: db $27 ; Byte Fill
#_12D818: db $00
#_12D819: db $E0, $79 ; EXT Direct Copy
#_12D81B: db $46, $01, $3C, $83, $80, $FF, $06, $FF
#_12D823: db $88, $79, $48, $F9, $96, $F1, $2E, $E1
#_12D82B: db $FE, $7C, $80, $C0, $C6, $C6, $8E, $1E
#_12D833: db $E0, $A0, $7B, $5B, $B2, $AB, $DF, $56
#_12D83B: db $AF, $6F, $90, $70, $8F, $7F, $89, $7F
#_12D843: db $1F, $84, $44, $20, $10, $0F, $00, $00
#_12D84B: db $BF, $A0, $D0, $5F, $E8, $AF, $74, $57
#_12D853: db $5B, $6B, $1A, $1B, $7A, $7B, $5B, $6B
#_12D85B: db $40, $20, $10, $88, $84, $E4, $84, $84
#_12D863: db $F5, $66, $FF, $0D, $1B, $ED, $F5, $EC
#_12D86B: db $F4, $E4, $F2, $E2, $F9, $E9, $14, $EC
#_12D873: db $08, $01, $01, $02, $0B, $0D, $06, $03
#_12D87B: db $F6, $00, $1A, $F0, $EE, $F8, $F6, $FA
#_12D883: db $FF, $71, $7D, $01, $83, $94, $07, $10
#_12D88B: db $0F, $F7, $FB, $F9, $70, $8E, $6B, $E9
#_12D893: db $DE, $3F
#_12D895: db $43 ; Word Fill
#_12D896: db $DE, $BF ; Word Fill
#_12D898: db $09 ; Direct Copy
#_12D899: db $FF, $00, $62, $73, $D9, $F9, $64, $84
#_12D8A1: db $F2, $62
#_12D8A3: db $23 ; Byte Fill
#_12D8A4: db $00
#_12D8A5: db $05 ; Direct Copy
#_12D8A6: db $8C, $06, $1B, $6D, $BA, $72
#_12D8AC: db $43 ; Word Fill
#_12D8AD: db $BC, $78 ; Word Fill
#_12D8AF: db $17 ; Direct Copy
#_12D8B0: db $DC, $7B, $6C, $30, $BD, $02, $FB, $10
#_12D8B8: db $0F, $0C, $75, $7B, $7B, $78, $B7, $C4
#_12D8C0: db $E6, $F3, $FF, $F8, $FF, $00, $18, $F8
#_12D8C8: db $43 ; Word Fill
#_12D8C9: db $7E, $FE ; Word Fill
#_12D8CB: db $43 ; Word Fill
#_12D8CC: db $7F, $FF ; Word Fill
#_12D8CE: db $06 ; Direct Copy
#_12D8CF: db $01, $FE, $00, $00, $07, $01, $01
#_12D8D6: db $22 ; Byte Fill
#_12D8D7: db $00
#_12D8D8: db $06 ; Direct Copy
#_12D8D9: db $FF, $1F, $FF, $00, $E0, $1F, $D9
#_12D8E0: db $44 ; Word Fill
#_12D8E1: db $BF, $DF ; Word Fill
#_12D8E3: db $03 ; Direct Copy
#_12D8E4: db $6F, $9F, $F0, $0F
#_12D8E8: db $27 ; Byte Fill
#_12D8E9: db $00
#_12D8EA: db $00 ; Direct Copy
#_12D8EB: db $C0
#_12D8EC: db $44 ; Word Fill
#_12D8ED: db $BF, $DE ; Word Fill
#_12D8EF: db $43 ; Word Fill
#_12D8F0: db $FE, $BF ; Word Fill
#_12D8F2: db $43 ; Word Fill
#_12D8F3: db $DE, $1F ; Word Fill
#_12D8F5: db $01 ; Direct Copy
#_12D8F6: db $C7, $06
#_12D8F8: db $24 ; Byte Fill
#_12D8F9: db $00
#_12D8FA: db $0B ; Direct Copy
#_12D8FB: db $20, $20, $38, $FD, $1E, $FF, $00, $E3
#_12D903: db $1C, $DD, $BE, $DE
#_12D907: db $44 ; Word Fill
#_12D908: db $BF, $CE ; Word Fill
#_12D90A: db $01 ; Direct Copy
#_12D90B: db $DE, $BF
#_12D90D: db $27 ; Byte Fill
#_12D90E: db $00
#_12D90F: db $01 ; Direct Copy
#_12D910: db $F7, $4C
#_12D912: db $43 ; Word Fill
#_12D913: db $FD, $4E ; Word Fill
#_12D915: db $E0, $6A ; EXT Direct Copy
#_12D917: db $F8, $47, $F1, $0F, $FE, $0D, $FF, $4C
#_12D91F: db $DF, $66, $61, $60, $60, $61, $2F, $0F
#_12D927: db $0D, $0E, $F5, $0E, $FB, $07, $EF, $38
#_12D92F: db $F7, $3C, $F8, $1C, $FF, $0F, $FF, $00
#_12D937: db $FF, $07, $C0, $30, $78, $7F, $7F, $3F
#_12D93F: db $0F, $70, $99, $1E, $82, $6F, $E5, $7D
#_12D947: db $F4, $7C, $F5, $7C, $96, $1C, $87, $6D
#_12D94F: db $E5, $7D, $60, $10, $02, $03, $03, $63
#_12D957: db $12, $02, $B4, $AC, $E8, $18, $19, $F8
#_12D95F: db $93, $F0, $56, $70, $94, $B1, $44, $31
#_12D967: db $A0, $39, $43, $07, $07, $0F, $8F, $4E
#_12D96F: db $CE, $C6, $80, $80, $C0, $80, $20, $40
#_12D977: db $90, $E0, $08, $70, $0C, $74, $CE, $B4
#_12D97F: db $8D, $F6, $00
#_12D982: db $43 ; Word Fill
#_12D983: db $00, $80 ; Word Fill
#_12D985: db $12 ; Direct Copy
#_12D986: db $80, $00, $00, $7C, $01, $FC, $01, $80
#_12D98E: db $01, $2C, $6D, $52, $DD, $AA, $B5, $76
#_12D996: db $0D, $4A, $39
#_12D999: db $22 ; Byte Fill
#_12D99A: db $FE
#_12D99B: db $13 ; Direct Copy
#_12D99C: db $92, $22, $42, $C2, $C6, $DF, $30, $CF
#_12D9A4: db $3F, $E7, $1F, $D0, $6F, $CF, $70, $E0
#_12D9AC: db $7F, $BF, $3F, $FF
#_12D9B0: db $26 ; Byte Fill
#_12D9B1: db $00
#_12D9B2: db $0A ; Direct Copy
#_12D9B3: db $40, $00, $FF, $00, $FD, $1C, $27, $DE
#_12D9BB: db $93, $EE, $CB
#_12D9BE: db $46 ; Word Fill
#_12D9BF: db $76, $EB ; Word Fill
#_12D9C1: db $01 ; Direct Copy
#_12D9C2: db $00, $02
#_12D9C4: db $25 ; Byte Fill
#_12D9C5: db $00
#_12D9C6: db $01 ; Direct Copy
#_12D9C7: db $FF, $FF
#_12D9C9: db $22 ; Byte Fill
#_12D9CA: db $00
#_12D9CB: db $04 ; Direct Copy
#_12D9CC: db $FF, $FF, $00, $FF, $FF
#_12D9D1: db $22 ; Byte Fill
#_12D9D2: db $00
#_12D9D3: db $83 ; Repeat Fill
#_12D9D4: db $B0, $04 ; Repeat Fill bytes
#_12D9D6: db $00 ; Direct Copy
#_12D9D7: db $FF
#_12D9D8: db $22 ; Byte Fill
#_12D9D9: db $00
#_12D9DA: db $13 ; Direct Copy
#_12D9DB: db $FF, $00, $00, $7E, $81, $E7, $7E, $91
#_12D9E3: db $7E, $B1, $7E, $85, $7E, $83, $3E, $C3
#_12D9EB: db $5A, $7E, $81, $00
#_12D9EF: db $25 ; Byte Fill
#_12D9F0: db $7E
#_12D9F1: db $E4, $31 ; EXT Byte Fill
#_12D9F3: db $00
#_12D9F4: db $01 ; Direct Copy
#_12D9F5: db $FF, $7F
#_12D9F7: db $43 ; Word Fill
#_12D9F8: db $FF, $44 ; Word Fill
#_12D9FA: db $08 ; Direct Copy
#_12D9FB: db $FE, $48, $FC, $50, $F8, $60, $F0, $40
#_12DA03: db $E6
#_12DA04: db $22 ; Byte Fill
#_12DA05: db $00
#_12DA06: db $0B ; Direct Copy
#_12DA07: db $01, $03, $07, $0F, $19, $40, $CE, $40
#_12DA0F: db $FE, $70, $FE, $48
#_12DA13: db $43 ; Word Fill
#_12DA14: db $FE, $44 ; Word Fill
#_12DA16: db $05 ; Direct Copy
#_12DA17: db $FF, $7F, $FF, $00, $FF, $31
#_12DA1D: db $23 ; Byte Fill
#_12DA1E: db $01
#_12DA1F: db $23 ; Byte Fill
#_12DA20: db $00
#_12DA21: db $03 ; Direct Copy
#_12DA22: db $FF, $7F, $FF, $42
#_12DA26: db $84 ; Repeat Fill
#_12DA27: db $15, $05 ; Repeat Fill bytes
#_12DA29: db $05 ; Direct Copy
#_12DA2A: db $70, $F9, $40, $F1, $40, $E0
#_12DA30: db $22 ; Byte Fill
#_12DA31: db $00
#_12DA32: db $08 ; Direct Copy
#_12DA33: db $01, $03, $06, $0E, $1F, $00, $FF, $FE
#_12DA3B: db $FF
#_12DA3C: db $43 ; Word Fill
#_12DA3D: db $22, $7F ; Word Fill
#_12DA3F: db $02 ; Direct Copy
#_12DA40: db $12, $FF, $0E
#_12DA43: db $43 ; Word Fill
#_12DA44: db $FF, $02 ; Word Fill
#_12DA46: db $04 ; Direct Copy
#_12DA47: db $07, $00, $00, $80, $80
#_12DA4C: db $22 ; Byte Fill
#_12DA4D: db $00
#_12DA4E: db $00 ; Direct Copy
#_12DA4F: db $F8
#_12DA50: db $43 ; Word Fill
#_12DA51: db $DF, $60 ; Word Fill
#_12DA53: db $0C ; Direct Copy
#_12DA54: db $CF, $70, $C3, $7C, $E1, $7E, $F0, $7F
#_12DA5C: db $9F, $1F, $FF, $00, $06
#_12DA61: db $22 ; Byte Fill
#_12DA62: db $01
#_12DA63: db $0E ; Direct Copy
#_12DA64: db $00, $00, $60, $00, $BC, $73, $3F, $F0
#_12DA6C: db $3F, $E0, $F8, $C7, $F0, $0F, $00
#_12DA73: db $23 ; Byte Fill
#_12DA74: db $FF
#_12DA75: db $83 ; Repeat Fill
#_12DA76: db $70, $00 ; Repeat Fill bytes
#_12DA78: db $00 ; Direct Copy
#_12DA79: db $E0
#_12DA7A: db $23 ; Byte Fill
#_12DA7B: db $00
#_12DA7C: db $0F ; Direct Copy
#_12DA7D: db $FF, $00, $BF, $7F, $E3, $7C, $C3, $7D
#_12DA85: db $FF, $01, $8F, $71, $F7, $79, $FB, $7D
#_12DA8D: db $27 ; Byte Fill
#_12DA8E: db $00
#_12DA8F: db $83 ; Repeat Fill
#_12DA90: db $B6, $04 ; Repeat Fill bytes
#_12DA92: db $0B ; Direct Copy
#_12DA93: db $87, $78, $CB, $37, $F4, $8C, $78, $4B
#_12DA9B: db $B9, $2F, $5A, $16
#_12DA9F: db $23 ; Byte Fill
#_12DAA0: db $00
#_12DAA1: db $03 ; Direct Copy
#_12DAA2: db $03, $84, $C0, $E1
#_12DAA6: db $37 ; Byte Fill
#_12DAA7: db $00
#_12DAA8: db $00 ; Direct Copy
#_12DAA9: db $FF
#_12DAAA: db $83 ; Repeat Fill
#_12DAAB: db $58, $05 ; Repeat Fill bytes
#_12DAAD: db $04 ; Direct Copy
#_12DAAE: db $03, $FE, $FC, $02, $00
#_12DAB3: db $83 ; Repeat Fill
#_12DAB4: db $58, $05 ; Repeat Fill bytes
#_12DAB6: db $01 ; Direct Copy
#_12DAB7: db $00, $01
#_12DAB9: db $22 ; Byte Fill
#_12DABA: db $00
#_12DABB: db $04 ; Direct Copy
#_12DABC: db $01, $FD, $00, $00, $FE
#_12DAC1: db $FF ; End of GFX 24

;===================================================================================================

GFX_25:
#_12DAC2: db $09 ; Direct Copy
#_12DAC3: db $68, $B7, $7D, $B2, $37, $DA, $32, $DF
#_12DACB: db $F2, $1F
#_12DACD: db $45 ; Word Fill
#_12DACE: db $2A, $DF ; Word Fill
#_12DAD0: db $27 ; Byte Fill
#_12DAD1: db $00
#_12DAD2: db $0F ; Direct Copy
#_12DAD3: db $08, $F7, $FF, $00, $BF, $C0, $78, $FF
#_12DADB: db $C7, $3F, $60, $9F, $3F, $FF, $60, $9F
#_12DAE3: db $27 ; Byte Fill
#_12DAE4: db $00
#_12DAE5: db $E0, $83 ; EXT Direct Copy
#_12DAE7: db $C7, $00, $9B, $00, $27, $18, $E7, $18
#_12DAEF: db $49, $B4, $DC, $A2, $BF, $44, $BE, $49
#_12DAF7: db $FF, $E7, $D8, $1A, $33, $25, $48, $51
#_12DAFF: db $83, $00, $7D, $00, $E6, $3C, $C7, $2C
#_12DB07: db $C4, $10, $9D, $24, $37, $C0, $7F, $80
#_12DB0F: db $FF, $83, $3D, $3C, $3B, $63, $CF, $8F
#_12DB17: db $D7, $0C, $9C, $03, $33, $0C, $47, $38
#_12DB1F: db $4F, $31, $B7, $0A, $F3, $04, $FA, $01
#_12DB27: db $E0, $E3, $CC, $B9, $B2, $C4, $D8, $CD
#_12DB2F: db $DF, $20, $E7, $5E, $FF, $21, $F3, $0C
#_12DB37: db $F7, $AB, $FF, $06, $EE, $1D, $DC, $33
#_12DB3F: db $20, $9E, $41, $20, $03, $86, $9C, $30
#_12DB47: db $00, $F7, $00, $FB, $F8, $07, $FC, $02
#_12DB4F: db $18, $E5, $00, $7F, $81, $66, $FF, $00
#_12DB57: db $FD, $0E, $05, $03, $C7, $FE, $7C, $00
#_12DB5F: db $00, $EF, $00, $DF, $1F, $E0, $3F, $40
#_12DB67: db $18, $A7, $00, $FE
#_12DB6B: db $83 ; Repeat Fill
#_12DB6C: db $9C, $00 ; Repeat Fill bytes
#_12DB6E: db $17 ; Direct Copy
#_12DB6F: db $BF, $70, $A0, $C0, $E3, $7F, $3E, $00
#_12DB77: db $4C, $93, $CC, $33, $C4, $3A, $84, $6A
#_12DB7F: db $82, $75, $80, $7B, $90, $6F, $98, $66
#_12DB87: db $22 ; Byte Fill
#_12DB88: db $31
#_12DB89: db $06 ; Direct Copy
#_12DB8A: db $39, $7D, $6E, $67, $63, $33, $C8
#_12DB91: db $43 ; Word Fill
#_12DB92: db $31, $CE ; Word Fill
#_12DB94: db $E0, $21 ; EXT Direct Copy
#_12DB96: db $39, $C4, $39, $44, $11, $AE, $01, $F6
#_12DB9E: db $03, $EC, $8C, $8E, $86, $86, $C6, $EE
#_12DBA6: db $5C, $B8, $00, $FF, $FF, $00, $CC, $73
#_12DBAE: db $9B, $67, $B6, $4E, $ED, $1D, $DA, $3B
#_12DBB6: db $C2, $3F
#_12DBB8: db $23 ; Byte Fill
#_12DBB9: db $00
#_12DBBA: db $13 ; Direct Copy
#_12DBBB: db $01, $02, $04, $00, $FF, $00, $78, $F7
#_12DBC3: db $F3, $EF, $67, $5F, $AC, $DC, $44, $BC
#_12DBCB: db $E2, $62, $C0, $40
#_12DBCF: db $22 ; Byte Fill
#_12DBD0: db $00
#_12DBD1: db $E0, $45 ; EXT Direct Copy
#_12DBD3: db $80, $03, $03, $1D, $3F, $9D, $30, $81
#_12DBDB: db $1E, $BC, $01, $BA, $03, $FA, $43, $FE
#_12DBE3: db $01, $F6, $06, $FF, $00, $4E, $60, $7E
#_12DBEB: db $7C, $3C, $00, $F9, $FF, $FF, $31, $EE
#_12DBF3: db $71, $6F, $31, $BF, $12, $5F, $01, $BF
#_12DBFB: db $80, $E0, $E0, $FF, $00, $31, $71, $BD
#_12DC03: db $DE, $E0, $7F, $1F, $FF, $F3, $0C, $FF
#_12DC0B: db $00, $00, $FF, $11, $FF, $3B, $FF, $FE
#_12DC13: db $FF, $FC, $FF, $01, $FE, $08
#_12DC19: db $26 ; Byte Fill
#_12DC1A: db $00
#_12DC1B: db $1B ; Direct Copy
#_12DC1C: db $EE, $81, $EF, $81, $DC, $42, $BE, $82
#_12DC24: db $54, $00, $AC, $38, $DB, $D8, $FF, $00
#_12DC2C: db $98, $98, $29, $69, $EB, $C3, $27, $FF
#_12DC34: db $FF, $00, $FF, $7F
#_12DC38: db $45 ; Word Fill
#_12DC39: db $E0, $60 ; Word Fill
#_12DC3B: db $07 ; Direct Copy
#_12DC3C: db $B0, $30, $DF, $9F, $70, $C0, $FF, $80
#_12DC44: db $22 ; Byte Fill
#_12DC45: db $9F
#_12DC46: db $0A ; Direct Copy
#_12DC47: db $CF, $60, $3F, $FC, $01, $FB, $79, $FE
#_12DC4F: db $7C, $C5, $44
#_12DC52: db $47 ; Word Fill
#_12DC53: db $C3, $42 ; Word Fill
#_12DC55: db $03 ; Direct Copy
#_12DC56: db $FE, $86, $83, $BB
#_12DC5A: db $23 ; Byte Fill
#_12DC5B: db $BD
#_12DC5C: db $E0, $83 ; EXT Direct Copy
#_12DC5E: db $FF, $08, $FF, $40, $7E, $A9, $3D, $C3
#_12DC66: db $A3, $DE, $EB, $56, $F6, $4D, $FC, $2B
#_12DC6E: db $46, $20, $91, $C3, $C6, $46, $4C, $28
#_12DC76: db $5B, $80, $4F, $80, $51, $80, $4C, $A1
#_12DC7E: db $62, $91, $BF, $C0, $D2, $6D, $6F, $B1
#_12DC86: db $B7, $B9, $AF, $92, $8C, $C0, $61, $31
#_12DC8E: db $BC, $03, $79, $02, $63, $34, $47, $28
#_12DC96: db $45, $30, $7F, $34, $B3, $00, $D7, $00
#_12DC9E: db $C3, $86, $BC, $B8, $BB, $B3, $CF, $EF
#_12DCA6: db $06, $FD, $FB, $06, $0D, $13, $A6, $09
#_12DCAE: db $D5, $02, $55, $02, $CF, $00, $E5, $1B
#_12DCB6: db $FC, $06, $E3, $D1, $68, $A8, $B0, $E3
#_12DCBE: db $FF, $06, $0F, $F6, $07, $7A, $27, $DA
#_12DCC6: db $77, $88, $1F, $E6, $0F, $F6, $CF, $36
#_12DCCE: db $04, $E4, $F0, $88, $00, $C4, $E4, $24
#_12DCD6: db $FD, $02, $C3, $3C, $01, $FE, $01, $FA
#_12DCDE: db $01, $F6, $01, $CE
#_12DCE2: db $43 ; Word Fill
#_12DCE3: db $01, $FE ; Word Fill
#_12DCE5: db $07 ; Direct Copy
#_12DCE6: db $00, $1C, $A6, $CE, $FC, $78, $80, $EC
#_12DCEE: db $43 ; Word Fill
#_12DCEF: db $C0, $3F ; Word Fill
#_12DCF1: db $44 ; Word Fill
#_12DCF2: db $80, $7B ; Word Fill
#_12DCF4: db $E0, $39 ; EXT Direct Copy
#_12DCF6: db $77, $80, $6E, $40, $BF, $FF, $00, $3B
#_12DCFE: db $1D, $2D, $4E, $5F, $7B, $31, $00, $81
#_12DD06: db $5E, $89, $76, $98, $67, $8C, $73, $C7
#_12DD0E: db $38, $FF, $C7, $FF, $F7, $FF, $00, $76
#_12DD16: db $66, $63, $20, $10, $C7, $00, $00, $8B
#_12DD1E: db $6E, $CB, $6C, $C2, $7D, $D5, $73, $95
#_12DD26: db $73, $D5, $73, $DC, $7B, $D6, $79, $10
#_12DD2E: db $10, $00
#_12DD30: db $22 ; Byte Fill
#_12DD31: db $08
#_12DD32: db $E0, $29 ; EXT Direct Copy
#_12DD34: db $00, $00, $82, $0E, $1E, $90, $BE, $A0
#_12DD3C: db $1E, $20, $1E, $22, $3C, $24, $98, $98
#_12DD44: db $C0, $C0, $71, $61, $41, $C1, $C1, $C3
#_12DD4C: db $67, $3F, $FD, $2B, $FB, $07, $DF, $37
#_12DD54: db $BC, $74, $E5, $6C, $CA, $4C, $CD, $47
#_12DD5C: db $BF, $62
#_12DD5E: db $22 ; Byte Fill
#_12DD5F: db $00
#_12DD60: db $E0, $31 ; EXT Direct Copy
#_12DD62: db $03, $13, $33, $38, $1C, $FF, $DC, $23
#_12DD6A: db $01, $2A, $00, $B7, $24, $3F, $28, $7F
#_12DD72: db $40, $FF, $80, $FF, $1F, $00, $DC, $DD
#_12DD7A: db $C9, $C1, $80, $00, $1F, $CE, $31, $87
#_12DD82: db $78, $87, $4B, $83, $35, $83, $79, $93
#_12DD8A: db $6D, $6E, $91, $00, $FF, $31, $30, $78
#_12DD92: db $7C, $6C
#_12DD94: db $22 ; Byte Fill
#_12DD95: db $00
#_12DD96: db $E0, $28 ; EXT Direct Copy
#_12DD98: db $F7, $24, $FB, $10, $FD, $88, $FF, $C4
#_12DDA0: db $BF, $A4, $DD, $90, $AD, $08, $D7, $02
#_12DDA8: db $18, $0C, $06, $02, $42, $62, $72, $38
#_12DDB0: db $CF, $20, $A7, $5F, $E9, $56, $ED, $72
#_12DDB8: db $95, $5A, $AF, $6F, $50, $B0, $67, $BF
#_12DDC0: db $1F
#_12DDC1: db $22 ; Byte Fill
#_12DDC2: db $00
#_12DDC3: db $18 ; Direct Copy
#_12DDC4: db $20, $10, $0F, $00, $FC, $03, $B3, $7C
#_12DDCC: db $74, $97, $8A, $FB, $32, $4B, $5D, $65
#_12DDD4: db $4D, $7D, $7F, $45, $00, $00, $08, $04
#_12DDDC: db $84
#_12DDDD: db $22 ; Byte Fill
#_12DDDE: db $82
#_12DDDF: db $43 ; Word Fill
#_12DDE0: db $EC, $03 ; Word Fill
#_12DDE2: db $E0, $33 ; EXT Direct Copy
#_12DDE4: db $FE, $01, $DE, $11, $BE, $21, $DE, $41
#_12DDEC: db $BF, $20, $BF, $10, $33, $13, $21, $69
#_12DDF4: db $45, $21, $50, $48, $FB, $00, $96, $00
#_12DDFC: db $D6, $40, $FA, $29, $7C, $81, $7C, $80
#_12DE04: db $7D, $80, $57, $80, $4D, $69, $29, $06
#_12DE0C: db $82, $93, $BA, $AC, $FF, $00, $F4, $04
#_12DE14: db $EB, $0A, $3F, $11
#_12DE18: db $43 ; Word Fill
#_12DE19: db $FF, $00 ; Word Fill
#_12DE1B: db $E0, $29 ; EXT Direct Copy
#_12DE1D: db $3F, $C0, $03, $FC, $00, $1B, $B4, $C2
#_12DE25: db $11, $08, $C0, $FC, $F0, $0F, $BF, $20
#_12DE2D: db $9E, $10, $FF, $00, $9E, $10, $6F, $00
#_12DE35: db $F1, $00, $83, $18, $0F, $C0, $63, $06
#_12DE3D: db $E3, $91, $1E, $E4, $0C, $73, $00, $3F
#_12DE45: db $00, $7F
#_12DE47: db $43 ; Word Fill
#_12DE48: db $30, $CF ; Word Fill
#_12DE4A: db $13 ; Direct Copy
#_12DE4B: db $00, $BE, $86, $59, $FF, $00, $C1, $FB
#_12DE53: db $FC, $8E, $47, $FB, $71, $00, $30, $CE
#_12DE5B: db $00, $FC, $00, $FE
#_12DE5F: db $43 ; Word Fill
#_12DE60: db $0C, $F3 ; Word Fill
#_12DE62: db $E0, $20 ; EXT Direct Copy
#_12DE64: db $00, $7D, $61, $9A, $FF, $00, $83, $DF
#_12DE6C: db $3F, $71, $E2, $DF, $8E, $00, $9C, $43
#_12DE74: db $8A, $55, $81, $66, $43, $BC, $24, $DB
#_12DE7C: db $E3, $DF, $23, $D4, $43, $A8, $61, $74
#_12DE84: db $3C
#_12DE85: db $22 ; Byte Fill
#_12DE86: db $18
#_12DE87: db $E0, $2E ; EXT Direct Copy
#_12DE89: db $1C, $3C, $03, $1C, $01, $BA, $19, $E4
#_12DE91: db $19, $E6, $81, $7E, $83, $7C, $03, $FC
#_12DE99: db $01, $FA, $F4, $EE, $66, $66, $74, $38
#_12DEA1: db $5C, $CE, $C2, $75, $D3, $70, $99, $7E
#_12DEA9: db $E2, $7B, $F5, $7D, $E3, $3F, $A9, $5E
#_12DEB1: db $97, $6E, $08, $0C, $00, $04, $02
#_12DEB8: db $22 ; Byte Fill
#_12DEB9: db $00
#_12DEBA: db $10 ; Direct Copy
#_12DEBB: db $63, $E3, $36, $F5, $97, $75, $D7, $35
#_12DEC3: db $41, $A3, $A2, $63, $61, $E1, $B4, $B4
#_12DECB: db $1C
#_12DECC: db $22 ; Byte Fill
#_12DECD: db $08
#_12DECE: db $14 ; Direct Copy
#_12DECF: db $1C, $1C, $1E, $4B, $18, $EE, $1C, $EF
#_12DED7: db $FF, $C0, $F5, $0B, $4A, $BE, $D2, $B6
#_12DEDF: db $E2, $A6, $E7, $A4, $01
#_12DEE4: db $22 ; Byte Fill
#_12DEE5: db $00
#_12DEE6: db $13 ; Direct Copy
#_12DEE7: db $01, $09, $19, $18, $86, $FF, $7F, $80
#_12DEEF: db $FD, $1F, $E1, $C3, $84, $A6, $02, $24
#_12DEF7: db $FF, $00, $E3, $1C
#_12DEFB: db $22 ; Byte Fill
#_12DEFC: db $00
#_12DEFD: db $02 ; Direct Copy
#_12DEFE: db $1C, $59, $D9
#_12DF01: db $85 ; Repeat Fill
#_12DF02: db $2E, $00 ; Repeat Fill bytes
#_12DF04: db $E0, $3A ; EXT Direct Copy
#_12DF06: db $24, $18, $E7, $08, $26, $C9, $C6, $A9
#_12DF0E: db $C4, $9A, $C4, $9B, $FF, $E7, $DB, $18
#_12DF16: db $19, $39, $39, $31, $37, $B8, $EB, $2C
#_12DF1E: db $F5, $16, $FB, $8A, $FD, $C4, $BF, $A2
#_12DF26: db $DF, $92, $EF, $48, $40, $10, $08, $04
#_12DF2E: db $02, $40, $60, $30, $FA, $2F, $FA, $37
#_12DF36: db $9F, $78, $AE, $5E, $B3, $6F, $BF, $70
#_12DF3E: db $80, $3F, $FF
#_12DF41: db $22 ; Byte Fill
#_12DF42: db $00
#_12DF43: db $19 ; Direct Copy
#_12DF44: db $40, $41, $60, $70, $7F, $00, $FF, $00
#_12DF4C: db $C1, $3C, $DD, $EE, $ED, $76, $F5, $BA
#_12DF54: db $35, $DA, $FD, $DA, $2D, $CA, $00, $3E
#_12DF5C: db $0E, $06
#_12DF5E: db $22 ; Byte Fill
#_12DF5F: db $02
#_12DF60: db $02 ; Direct Copy
#_12DF61: db $12, $FF, $FF
#_12DF64: db $22 ; Byte Fill
#_12DF65: db $00
#_12DF66: db $83 ; Repeat Fill
#_12DF67: db $7F, $01 ; Repeat Fill bytes
#_12DF69: db $00 ; Direct Copy
#_12DF6A: db $FF
#_12DF6B: db $22 ; Byte Fill
#_12DF6C: db $00
#_12DF6D: db $83 ; Repeat Fill
#_12DF6E: db $B0, $04 ; Repeat Fill bytes
#_12DF70: db $00 ; Direct Copy
#_12DF71: db $FF
#_12DF72: db $22 ; Byte Fill
#_12DF73: db $00
#_12DF74: db $13 ; Direct Copy
#_12DF75: db $FF, $00, $00, $7E, $81, $E7, $7E, $91
#_12DF7D: db $7E, $B1, $7E, $85, $7E, $83, $3E, $C3
#_12DF85: db $5A, $7E, $81, $00
#_12DF89: db $25 ; Byte Fill
#_12DF8A: db $7E
#_12DF8B: db $1E ; Direct Copy
#_12DF8C: db $00, $7F, $80, $01, $E6, $00, $7B, $00
#_12DF94: db $BD, $00, $FB, $00, $07, $00, $9B, $FF
#_12DF9C: db $00, $00, $BC, $CE, $E6, $0E, $FC, $FE
#_12DFA4: db $00, $01, $DA, $81, $68, $81, $78
#_12DFAB: db $44 ; Word Fill
#_12DFAC: db $81, $3A ; Word Fill
#_12DFAE: db $16 ; Direct Copy
#_12DFAF: db $54, $81, $6E, $C1, $3E, $76, $36, $56
#_12DFB7: db $46, $6E, $7E, $3A, $00, $FC, $07, $CC
#_12DFBF: db $F7, $8C, $F7, $EC, $97, $CC, $B7
#_12DFC6: db $43 ; Word Fill
#_12DFC7: db $8C, $F7 ; Word Fill
#_12DFC9: db $01 ; Direct Copy
#_12DFCA: db $8F, $F0
#_12DFCC: db $27 ; Byte Fill
#_12DFCD: db $00
#_12DFCE: db $0A ; Direct Copy
#_12DFCF: db $FF, $FE, $1B, $E6, $09, $F6, $01, $FE
#_12DFD7: db $FF, $00, $FF
#_12DFDA: db $44 ; Word Fill
#_12DFDB: db $7F, $80 ; Word Fill
#_12DFDD: db $27 ; Byte Fill
#_12DFDE: db $00
#_12DFDF: db $0F ; Direct Copy
#_12DFE0: db $FF, $FF, $3B, $C7, $01, $FF, $8C, $73
#_12DFE8: db $FF, $00, $87, $DF, $05, $AB, $84, $4B
#_12DFF0: db $24 ; Byte Fill
#_12DFF1: db $00
#_12DFF2: db $16 ; Direct Copy
#_12DFF3: db $70, $50, $70, $9D, $E6, $88, $F5, $C8
#_12DFFB: db $B2, $C8, $B4, $D8, $A7, $9F, $E4, $CC
#_12E003: db $F7, $EE, $F7, $00, $07, $05, $07
#_12E00A: db $23 ; Byte Fill
#_12E00B: db $00
#_12E00C: db $0E ; Direct Copy
#_12E00D: db $A9, $76, $D7, $38, $E7, $1E, $B1, $4E
#_12E015: db $9F, $60, $CF, $70, $E1, $7E, $FF
#_12E01C: db $28 ; Byte Fill
#_12E01D: db $00
#_12E01E: db $13 ; Direct Copy
#_12E01F: db $D1, $D9, $32, $FE, $50, $7B, $6A, $58
#_12E027: db $BF, $C1, $A1, $DE, $C0, $BF, $FF, $00
#_12E02F: db $26, $01, $84, $85
#_12E033: db $23 ; Byte Fill
#_12E034: db $00
#_12E035: db $11 ; Direct Copy
#_12E036: db $FF, $00, $E0, $20, $E0, $BF, $E7, $B8
#_12E03E: db $EC, $B3, $F9, $E7, $FA, $06, $F0, $0C
#_12E046: db $00, $1F
#_12E048: db $23 ; Byte Fill
#_12E049: db $00
#_12E04A: db $02 ; Direct Copy
#_12E04B: db $01, $03, $FF
#_12E04E: db $23 ; Byte Fill
#_12E04F: db $00
#_12E050: db $0C ; Direct Copy
#_12E051: db $FF, $FF, $00, $88, $77, $7F, $F7, $20
#_12E059: db $A8, $01, $89, $00, $FF
#_12E05E: db $23 ; Byte Fill
#_12E05F: db $00
#_12E060: db $E0, $31 ; EXT Direct Copy
#_12E062: db $57, $76, $D7, $0F, $97, $08, $38, $04
#_12E06A: db $40, $23, $40, $3F, $BF, $00, $DC, $03
#_12E072: db $D0, $0C, $E0, $E0, $C7, $BF, $BE, $C0
#_12E07A: db $E0, $EF, $FF, $00, $08, $07, $14, $F3
#_12E082: db $CA, $39, $E5, $1C, $B2, $4E, $59, $E7
#_12E08A: db $2C, $B3, $00, $F0, $08, $04, $02, $01
#_12E092: db $00, $40
#_12E094: db $FF ; End of GFX 25

;===================================================================================================

GFX_26:
#_12E095: db $09 ; Direct Copy
#_12E096: db $68, $B7, $7D, $B2, $37, $DA, $32, $DF
#_12E09E: db $F2, $1F
#_12E0A0: db $45 ; Word Fill
#_12E0A1: db $2A, $DF ; Word Fill
#_12E0A3: db $27 ; Byte Fill
#_12E0A4: db $00
#_12E0A5: db $0F ; Direct Copy
#_12E0A6: db $08, $F7, $FF, $00, $BF, $C0, $78, $FF
#_12E0AE: db $C7, $3F, $60, $9F, $3F, $FF, $60, $9F
#_12E0B6: db $27 ; Byte Fill
#_12E0B7: db $00
#_12E0B8: db $0A ; Direct Copy
#_12E0B9: db $FF, $00, $C7, $18, $D8, $00, $C0, $1B
#_12E0C1: db $C0, $00, $FF
#_12E0C4: db $43 ; Word Fill
#_12E0C5: db $00, $80 ; Word Fill
#_12E0C7: db $04 ; Direct Copy
#_12E0C8: db $1F, $7F, $60, $67, $64
#_12E0CD: db $22 ; Byte Fill
#_12E0CE: db $7F
#_12E0CF: db $0B ; Direct Copy
#_12E0D0: db $60, $FF, $00, $80, $7F, $00, $7C, $38
#_12E0D8: db $7D, $00, $00, $FF
#_12E0DC: db $23 ; Byte Fill
#_12E0DD: db $00
#_12E0DE: db $04 ; Direct Copy
#_12E0DF: db $FF, $FF, $00, $83, $82
#_12E0E4: db $22 ; Byte Fill
#_12E0E5: db $FF
#_12E0E6: db $07 ; Direct Copy
#_12E0E7: db $00, $7C, $00, $C2, $3C, $BD, $7E, $BE
#_12E0EF: db $44 ; Word Fill
#_12E0F0: db $7F, $BF ; Word Fill
#_12E0F2: db $03 ; Direct Copy
#_12E0F3: db $DF, $3F, $5F, $3F
#_12E0F7: db $27 ; Byte Fill
#_12E0F8: db $00
#_12E0F9: db $06 ; Direct Copy
#_12E0FA: db $3C, $00, $43, $3C, $A0, $7F, $61
#_12E101: db $48 ; Word Fill
#_12E102: db $FF, $E1 ; Word Fill
#_12E104: db $27 ; Byte Fill
#_12E105: db $00
#_12E106: db $07 ; Direct Copy
#_12E107: db $FF, $80, $59, $00, $BF, $80, $1A, $A6
#_12E10F: db $43 ; Word Fill
#_12E110: db $19, $BC ; Word Fill
#_12E112: db $05 ; Direct Copy
#_12E113: db $06, $BA, $8A, $75, $7F, $FF
#_12E119: db $62 ; Increasing Fill
#_12E11A: db $40 ; Increasing Fill Start
#_12E11B: db $E0, $20 ; EXT Direct Copy
#_12E11D: db $42, $41, $04, $FF, $01, $9A, $00, $FD
#_12E125: db $01, $58, $67, $9A, $3F, $8B, $36, $55
#_12E12D: db $6A, $13, $EC, $FE, $FF, $02, $80, $40
#_12E135: db $40, $88, $0C, $A1, $BE, $C0, $03, $A0
#_12E13D: db $1D
#_12E13E: db $43 ; Word Fill
#_12E13F: db $FD, $0F ; Word Fill
#_12E141: db $08 ; Direct Copy
#_12E142: db $A1, $1F, $B2, $13, $EC, $01, $40, $FC
#_12E14A: db $C2
#_12E14B: db $22 ; Byte Fill
#_12E14C: db $C0
#_12E14D: db $07 ; Direct Copy
#_12E14E: db $CC, $D2, $EC, $01, $B2, $13, $A1, $1F
#_12E156: db $43 ; Word Fill
#_12E157: db $F9, $0F ; Word Fill
#_12E159: db $07 ; Direct Copy
#_12E15A: db $A0, $1D, $C0, $03, $A7, $B8, $D2, $CC
#_12E162: db $22 ; Byte Fill
#_12E163: db $C0
#_12E164: db $0A ; Direct Copy
#_12E165: db $C2, $FC, $40, $07, $F8, $7F, $81, $BE
#_12E16D: db $72, $BC, $65
#_12E170: db $44 ; Word Fill
#_12E171: db $BC, $6D ; Word Fill
#_12E173: db $05 ; Direct Copy
#_12E174: db $6C, $BB, $6F, $00, $03, $07
#_12E17A: db $24 ; Byte Fill
#_12E17B: db $0F
#_12E17C: db $01 ; Direct Copy
#_12E17D: db $FF, $00
#_12E17F: db $22 ; Byte Fill
#_12E180: db $08
#_12E181: db $0B ; Direct Copy
#_12E182: db $EB, $08, $E8, $0F, $EF, $18, $D8, $10
#_12E18A: db $17, $F0, $F7, $00
#_12E18E: db $26 ; Byte Fill
#_12E18F: db $FF
#_12E190: db $1D ; Direct Copy
#_12E191: db $58, $9F, $6F, $8F, $78, $88, $37, $80
#_12E199: db $57, $C0, $E7, $E0, $FF, $1F, $FF, $00
#_12E1A1: db $60, $70, $77, $7F, $3F, $1F, $E0, $FF
#_12E1A9: db $04, $FC, $F9, $F8, $0B, $08
#_12E1AF: db $45 ; Word Fill
#_12E1B0: db $F7, $00 ; Word Fill
#_12E1B2: db $22 ; Byte Fill
#_12E1B3: db $FF
#_12E1B4: db $03 ; Direct Copy
#_12E1B5: db $00, $03, $07, $F7
#_12E1B9: db $22 ; Byte Fill
#_12E1BA: db $FF
#_12E1BB: db $01 ; Direct Copy
#_12E1BC: db $00, $FF
#_12E1BE: db $37 ; Byte Fill
#_12E1BF: db $00
#_12E1C0: db $0B ; Direct Copy
#_12E1C1: db $B4, $07, $AB, $0F, $90, $18, $AF, $3F
#_12E1C9: db $C0, $7F, $80, $80
#_12E1CD: db $43 ; Word Fill
#_12E1CE: db $FF, $00 ; Word Fill
#_12E1D0: db $05 ; Direct Copy
#_12E1D1: db $F8, $F0, $E7, $C0, $80, $7F
#_12E1D7: db $22 ; Byte Fill
#_12E1D8: db $FF
#_12E1D9: db $02 ; Direct Copy
#_12E1DA: db $00, $FF, $7F
#_12E1DD: db $45 ; Word Fill
#_12E1DE: db $E0, $60 ; Word Fill
#_12E1E0: db $07 ; Direct Copy
#_12E1E1: db $B0, $30, $DF, $9F, $70, $C0, $FF, $80
#_12E1E9: db $22 ; Byte Fill
#_12E1EA: db $9F
#_12E1EB: db $0A ; Direct Copy
#_12E1EC: db $CF, $60, $3F, $FC, $01, $FB, $79, $FE
#_12E1F4: db $7C, $C5, $44
#_12E1F7: db $47 ; Word Fill
#_12E1F8: db $C3, $42 ; Word Fill
#_12E1FA: db $03 ; Direct Copy
#_12E1FB: db $FE, $86, $83, $BB
#_12E1FF: db $23 ; Byte Fill
#_12E200: db $BD
#_12E201: db $43 ; Word Fill
#_12E202: db $A0, $20 ; Word Fill
#_12E204: db $01 ; Direct Copy
#_12E205: db $7F, $FF
#_12E207: db $43 ; Word Fill
#_12E208: db $FF, $00 ; Word Fill
#_12E20A: db $07 ; Direct Copy
#_12E20B: db $EF, $7F, $C0, $7F, $86, $79, $5F, $5F
#_12E213: db $25 ; Byte Fill
#_12E214: db $00
#_12E215: db $23 ; Byte Fill
#_12E216: db $78
#_12E217: db $22 ; Byte Fill
#_12E218: db $FF
#_12E219: db $43 ; Word Fill
#_12E21A: db $00, $FF ; Word Fill
#_12E21C: db $06 ; Direct Copy
#_12E21D: db $FF, $08, $F7, $0C, $F3, $87, $87
#_12E224: db $25 ; Byte Fill
#_12E225: db $00
#_12E226: db $45 ; Word Fill
#_12E227: db $5F, $3F ; Word Fill
#_12E229: db $45 ; Word Fill
#_12E22A: db $BF, $7F ; Word Fill
#_12E22C: db $03 ; Direct Copy
#_12E22D: db $5F, $3F, $2F, $1F
#_12E231: db $27 ; Byte Fill
#_12E232: db $00
#_12E233: db $4F ; Word Fill
#_12E234: db $E1, $FF ; Word Fill
#_12E236: db $27 ; Byte Fill
#_12E237: db $00
#_12E238: db $04 ; Direct Copy
#_12E239: db $BE, $7D, $F6, $7D, $77
#_12E23E: db $44 ; Word Fill
#_12E23F: db $B9, $57 ; Word Fill
#_12E241: db $43 ; Word Fill
#_12E242: db $7D, $BA ; Word Fill
#_12E244: db $03 ; Direct Copy
#_12E245: db $78, $B7, $7D, $7D
#_12E249: db $22 ; Byte Fill
#_12E24A: db $39
#_12E24B: db $02 ; Direct Copy
#_12E24C: db $38, $38, $30
#_12E24F: db $43 ; Word Fill
#_12E250: db $FD, $EE ; Word Fill
#_12E252: db $E0, $47 ; EXT Direct Copy
#_12E254: db $FB, $CE, $FB, $C6, $EF, $D6, $A6, $D9
#_12E25C: db $E0, $DF, $EC, $53, $EE, $EE, $CE, $C6
#_12E264: db $C6, $C0, $C0, $40, $FF, $00, $4C, $BF
#_12E26C: db $4F, $BF, $97, $73, $BF, $7F, $E3, $7F
#_12E274: db $FF, $80, $F0, $8F, $00, $3F, $3F, $7B
#_12E27C: db $7F, $7F, $00, $0F, $E7, $9F, $E5, $9C
#_12E284: db $F3, $0F, $FF, $00, $87, $7F, $8F, $67
#_12E28C: db $DC, $3F, $FF, $00, $1F, $1E, $0F, $00
#_12E294: db $7F, $77, $3F, $00, $BC, $68, $BC, $65
#_12E29C: db $46 ; Word Fill
#_12E29D: db $BC, $6D ; Word Fill
#_12E29F: db $04 ; Direct Copy
#_12E2A0: db $6E, $BA, $6F, $BE, $67
#_12E2A5: db $27 ; Byte Fill
#_12E2A6: db $0F
#_12E2A7: db $07 ; Direct Copy
#_12E2A8: db $10, $1B, $08, $DC, $0F, $EF, $08, $E8
#_12E2B0: db $43 ; Word Fill
#_12E2B1: db $10, $D7 ; Word Fill
#_12E2B3: db $03 ; Direct Copy
#_12E2B4: db $00, $10, $F7, $EF
#_12E2B8: db $27 ; Byte Fill
#_12E2B9: db $FF
#_12E2BA: db $E0, $2F ; EXT Direct Copy
#_12E2BC: db $E6, $2F, $CF, $9F, $C8, $98, $C3, $90
#_12E2C4: db $C7, $90, $87, $70, $43, $F8, $20, $BC
#_12E2CC: db $10, $20, $27, $2F, $2F, $0F, $07, $43
#_12E2D4: db $78, $7B, $00, $86, $81, $FC, $7B, $78
#_12E2DC: db $FE, $00, $FC, $01, $F9, $03, $02, $06
#_12E2E4: db $84, $79, $03, $87, $FF, $FE, $FC, $F9
#_12E2EC: db $37 ; Byte Fill
#_12E2ED: db $00
#_12E2EE: db $E0, $28 ; EXT Direct Copy
#_12E2F0: db $62, $13, $C8, $11, $9C, $39, $26, $65
#_12E2F8: db $4A, $C1, $D9, $C2, $79, $42, $39, $02
#_12E300: db $EC, $EE, $C6, $9A, $3E, $3C, $BC, $FC
#_12E308: db $CF, $20, $A7, $5F, $E9, $56, $ED, $72
#_12E310: db $95, $5A, $AF, $6F, $50, $B0, $67, $BF
#_12E318: db $1F
#_12E319: db $22 ; Byte Fill
#_12E31A: db $00
#_12E31B: db $18 ; Direct Copy
#_12E31C: db $20, $10, $0F, $00, $FC, $03, $B3, $7C
#_12E324: db $74, $97, $8A, $FB, $32, $4B, $5D, $65
#_12E32C: db $4D, $7D, $7F, $45, $00, $00, $08, $04
#_12E334: db $84
#_12E335: db $22 ; Byte Fill
#_12E336: db $82
#_12E337: db $4B ; Word Fill
#_12E338: db $AF, $20 ; Word Fill
#_12E33A: db $03 ; Direct Copy
#_12E33B: db $B8, $38, $B0, $30
#_12E33F: db $25 ; Byte Fill
#_12E340: db $5F
#_12E341: db $03 ; Direct Copy
#_12E342: db $47, $4F, $B7, $00
#_12E346: db $49 ; Word Fill
#_12E347: db $87, $30 ; Word Fill
#_12E349: db $03 ; Direct Copy
#_12E34A: db $48, $78, $78, $48
#_12E34E: db $25 ; Byte Fill
#_12E34F: db $CF
#_12E350: db $01 ; Direct Copy
#_12E351: db $87, $87
#_12E353: db $4F ; Word Fill
#_12E354: db $BF, $7F ; Word Fill
#_12E356: db $27 ; Byte Fill
#_12E357: db $00
#_12E358: db $4F ; Word Fill
#_12E359: db $AF, $DF ; Word Fill
#_12E35B: db $27 ; Byte Fill
#_12E35C: db $00
#_12E35D: db $0B ; Direct Copy
#_12E35E: db $F2, $0D, $E7, $1C, $8F, $7C, $BB, $7C
#_12E366: db $EA, $6D, $FA, $6D
#_12E36A: db $43 ; Word Fill
#_12E36B: db $BE, $7D ; Word Fill
#_12E36D: db $17 ; Direct Copy
#_12E36E: db $0C, $1C, $7C, $7C, $7D, $6D, $7D, $7D
#_12E376: db $11, $EE, $F5, $0E, $F7, $0E, $33, $CA
#_12E37E: db $17, $EA, $DF, $EE, $BD, $AE, $FD, $AE
#_12E386: db $22 ; Byte Fill
#_12E387: db $0E
#_12E388: db $08 ; Direct Copy
#_12E389: db $CE, $EA, $EE, $EE, $AE, $F8, $07, $3F
#_12E391: db $C0
#_12E392: db $43 ; Word Fill
#_12E393: db $FF, $FE ; Word Fill
#_12E395: db $E0, $2D ; EXT Direct Copy
#_12E397: db $CE, $FD, $FC, $C3, $F8, $07, $3C, $F3
#_12E39F: db $00, $C0, $FE, $FE, $FC, $C0, $00, $F0
#_12E3A7: db $FF, $FC, $FF, $FE, $FF, $C0, $F8, $07
#_12E3AF: db $F9, $C6, $DD, $F2, $3C, $FB, $F8, $07
#_12E3B7: db $FC, $FE, $C0, $00, $C0, $F0, $F8, $00
#_12E3BF: db $BE, $63, $BF, $68, $BF, $64
#_12E3C5: db $43 ; Word Fill
#_12E3C6: db $BF, $62 ; Word Fill
#_12E3C8: db $E0, $3E ; EXT Direct Copy
#_12E3CA: db $BE, $67, $BF, $65, $BF, $64, $07, $0B
#_12E3D2: db $0C, $0E, $0E, $0F, $0F, $0C, $FF, $E8
#_12E3DA: db $F8, $03, $F8, $05, $0C, $01, $84, $80
#_12E3E2: db $FF, $7B, $7F, $83, $DF, $B9, $FF, $FF
#_12E3EA: db $0F, $F7, $7B, $03, $83, $FB, $E3, $64
#_12E3F2: db $C6, $41, $CD, $4B, $DB, $57, $76, $AE
#_12E3FA: db $2C, $DD, $58, $BB, $72, $B7, $18, $38
#_12E402: db $30, $20, $01, $02, $04, $08, $00
#_12E409: db $22 ; Byte Fill
#_12E40A: db $FF
#_12E40B: db $13 ; Direct Copy
#_12E40C: db $80, $80, $00, $7F, $07, $FF, $66, $FE
#_12E414: db $E6, $FE, $E4, $FD, $00, $00, $7F, $80
#_12E41C: db $00, $01, $01, $02
#_12E420: db $37 ; Byte Fill
#_12E421: db $00
#_12E422: db $E0, $26 ; EXT Direct Copy
#_12E424: db $C1, $D9, $80, $BC, $24, $7E, $22, $FB
#_12E42C: db $65, $F9, $4A, $DC, $45, $D6, $22, $93
#_12E434: db $26, $43, $81, $04, $06, $23, $29, $6C
#_12E43C: db $FA, $2F, $FA, $37, $9F, $78, $AE, $5E
#_12E444: db $B3, $6F, $BF, $70, $80, $3F, $FF
#_12E44B: db $22 ; Byte Fill
#_12E44C: db $00
#_12E44D: db $19 ; Direct Copy
#_12E44E: db $40, $41, $60, $70, $7F, $00, $FF, $00
#_12E456: db $C1, $3C, $DD, $EE, $ED, $76, $F5, $BA
#_12E45E: db $35, $DA, $FD, $DA, $2D, $CA, $00, $3E
#_12E466: db $0E, $06
#_12E468: db $22 ; Byte Fill
#_12E469: db $02
#_12E46A: db $02 ; Direct Copy
#_12E46B: db $12, $FF, $FF
#_12E46E: db $22 ; Byte Fill
#_12E46F: db $00
#_12E470: db $83 ; Repeat Fill
#_12E471: db $4C, $01 ; Repeat Fill bytes
#_12E473: db $00 ; Direct Copy
#_12E474: db $FF
#_12E475: db $22 ; Byte Fill
#_12E476: db $00
#_12E477: db $83 ; Repeat Fill
#_12E478: db $B0, $04 ; Repeat Fill bytes
#_12E47A: db $00 ; Direct Copy
#_12E47B: db $FF
#_12E47C: db $22 ; Byte Fill
#_12E47D: db $00
#_12E47E: db $13 ; Direct Copy
#_12E47F: db $FF, $00, $00, $7E, $81, $E7, $7E, $91
#_12E487: db $7E, $B1, $7E, $85, $7E, $83, $3E, $C3
#_12E48F: db $5A, $7E, $81, $00
#_12E493: db $25 ; Byte Fill
#_12E494: db $7E
#_12E495: db $00 ; Direct Copy
#_12E496: db $00
#_12E497: db $49 ; Word Fill
#_12E498: db $BF, $7F ; Word Fill
#_12E49A: db $04 ; Direct Copy
#_12E49B: db $9F, $7F, $00, $7F, $3F
#_12E4A0: db $28 ; Byte Fill
#_12E4A1: db $00
#_12E4A2: db $4B ; Word Fill
#_12E4A3: db $AF, $DF ; Word Fill
#_12E4A5: db $02 ; Direct Copy
#_12E4A6: db $60, $9F, $FF
#_12E4A9: db $28 ; Byte Fill
#_12E4AA: db $00
#_12E4AB: db $83 ; Repeat Fill
#_12E4AC: db $78, $00 ; Repeat Fill bytes
#_12E4AE: db $02 ; Direct Copy
#_12E4AF: db $BC, $7F, $7F
#_12E4B2: db $28 ; Byte Fill
#_12E4B3: db $FF
#_12E4B4: db $E4, $4F ; EXT Byte Fill
#_12E4B6: db $00
#_12E4B7: db $43 ; Word Fill
#_12E4B8: db $BE, $60 ; Word Fill
#_12E4BA: db $1A ; Direct Copy
#_12E4BB: db $AF, $71, $B7, $78, $BB, $7C, $BD, $7E
#_12E4C3: db $8F, $4F, $7F, $80, $0D, $0D, $04, $02
#_12E4CB: db $01, $00, $30, $00, $FF, $00, $31, $11
#_12E4D3: db $7B, $4A, $7B
#_12E4D6: db $44 ; Word Fill
#_12E4D7: db $00, $FF ; Word Fill
#_12E4D9: db $22 ; Byte Fill
#_12E4DA: db $FF
#_12E4DB: db $05 ; Direct Copy
#_12E4DC: db $00, $00, $CE, $84, $84, $FF
#_12E4E2: db $22 ; Byte Fill
#_12E4E3: db $00
#_12E4E4: db $0F ; Direct Copy
#_12E4E5: db $FF, $00, $3F, $FF, $60, $FF, $DF, $E0
#_12E4ED: db $37, $CF, $6C, $9C, $D8, $39, $B1, $72
#_12E4F5: db $24 ; Byte Fill
#_12E4F6: db $00
#_12E4F7: db $02 ; Direct Copy
#_12E4F8: db $03, $06, $0C
#_12E4FB: db $84 ; Repeat Fill
#_12E4FC: db $B6, $04 ; Repeat Fill bytes
#_12E4FE: db $09 ; Direct Copy
#_12E4FF: db $FF, $FF, $00, $74, $4C, $52, $B3, $A5
#_12E507: db $66, $FF
#_12E509: db $24 ; Byte Fill
#_12E50A: db $00
#_12E50B: db $02 ; Direct Copy
#_12E50C: db $83, $0C, $18
#_12E50F: db $38 ; Byte Fill
#_12E510: db $00
#_12E511: db $0F ; Direct Copy
#_12E512: db $FF, $00, $FE, $FF, $03, $FF, $FF, $01
#_12E51A: db $E1, $9E, $D1, $37, $B3, $77, $67, $EF
#_12E522: db $24 ; Byte Fill
#_12E523: db $00
#_12E524: db $02 ; Direct Copy
#_12E525: db $08, $08, $10
#_12E528: db $FF ; End of GFX 26

;===================================================================================================

GFX_27:
#_12E529: db $0F ; Direct Copy
#_12E52A: db $CF, $3D, $EF, $5E, $B7, $6F, $9F, $70
#_12E532: db $88, $78, $C7, $3F, $67, $9F, $70, $AF
#_12E53A: db $23 ; Byte Fill
#_12E53B: db $00
#_12E53C: db $00 ; Direct Copy
#_12E53D: db $07
#_12E53E: db $22 ; Byte Fill
#_12E53F: db $00
#_12E540: db $0F ; Direct Copy
#_12E541: db $FC, $03, $C7, $78, $63, $BD, $31, $DE
#_12E549: db $D8, $EF, $F6, $E7, $F6, $67, $F6, $A7
#_12E551: db $24 ; Byte Fill
#_12E552: db $00
#_12E553: db $22 ; Byte Fill
#_12E554: db $08
#_12E555: db $0F ; Direct Copy
#_12E556: db $C0, $00, $E0, $00, $7F, $00, $BF, $80
#_12E55E: db $B8, $00, $B7, $07, $A8, $0F, $9F, $10
#_12E566: db $22 ; Byte Fill
#_12E567: db $FF
#_12E568: db $04 ; Direct Copy
#_12E569: db $7F, $7F, $78, $70, $60
#_12E56E: db $23 ; Byte Fill
#_12E56F: db $00
#_12E570: db $0B ; Direct Copy
#_12E571: db $1C, $00, $BE, $00, $E3, $00, $5D, $1C
#_12E579: db $A2, $BE, $FF, $40
#_12E57D: db $24 ; Byte Fill
#_12E57E: db $FF
#_12E57F: db $0C ; Direct Copy
#_12E580: db $E3, $41, $00, $DF, $10, $E0, $00, $7E
#_12E588: db $00, $3D, $01, $3B, $02
#_12E58D: db $45 ; Word Fill
#_12E58E: db $35, $06 ; Word Fill
#_12E590: db $04 ; Direct Copy
#_12E591: db $E0, $FF, $FF, $FE, $FC
#_12E596: db $22 ; Byte Fill
#_12E597: db $F8
#_12E598: db $0F ; Direct Copy
#_12E599: db $FC, $03, $CE, $F1, $D7, $F8, $EB, $0C
#_12E5A1: db $FC, $CF, $1E, $E7, $FF, $FB, $3F, $C0
#_12E5A9: db $22 ; Byte Fill
#_12E5AA: db $00
#_12E5AB: db $1C ; Direct Copy
#_12E5AC: db $10, $C0, $00, $F8, $00, $F7, $07, $EF
#_12E5B4: db $0F, $EE, $0E, $6C, $0C, $B7, $87, $BB
#_12E5BC: db $83, $DF, $C0, $BF, $E0, $F8, $F0, $F1
#_12E5C4: db $F3, $78, $7C, $3F, $1F
#_12E5C9: db $43 ; Word Fill
#_12E5CA: db $0F, $00 ; Word Fill
#_12E5CC: db $E0, $2D ; EXT Direct Copy
#_12E5CE: db $67, $60, $64, $60, $09, $01, $9B, $83
#_12E5D6: db $F5, $07, $E9, $0F, $FF, $FF, $9F, $9F
#_12E5DE: db $FE, $7C, $F8, $F0, $EF, $0F, $F2, $03
#_12E5E6: db $FD, $01, $8F, $00, $77, $70, $FB, $F8
#_12E5EE: db $EF, $EC, $CF, $CC, $F0, $FC, $FE, $FF
#_12E5F6: db $8F, $07, $13, $33, $07, $04
#_12E5FC: db $43 ; Word Fill
#_12E5FD: db $33, $30 ; Word Fill
#_12E5FF: db $0C ; Direct Copy
#_12E600: db $06, $00, $CD, $01, $F2, $03, $E4, $07
#_12E608: db $EF, $0F, $FB, $CF, $CF
#_12E60D: db $83 ; Repeat Fill
#_12E60E: db $72, $00 ; Repeat Fill bytes
#_12E610: db $E0, $43 ; EXT Direct Copy
#_12E612: db $F0, $FF, $00, $FF, $7F, $FF, $6F, $EF
#_12E61A: db $56, $FE, $59, $EF, $4D, $E5, $47, $F7
#_12E622: db $57, $00, $7F, $6F, $46, $40, $50, $58
#_12E62A: db $48, $FF, $00, $E0, $DF, $DC, $3C, $70
#_12E632: db $F0, $E0, $E0, $C0, $C0, $C2, $C3, $D5
#_12E63A: db $D7, $00, $C0, $03, $0F, $1F, $3F, $3C
#_12E642: db $28, $65, $E7, $C3, $C3, $9E, $80, $3F
#_12E64A: db $00, $7F, $00, $E3, $00, $C1, $00, $80
#_12E652: db $00, $18, $3C, $7F
#_12E656: db $24 ; Byte Fill
#_12E657: db $FF
#_12E658: db $0B ; Direct Copy
#_12E659: db $54, $1C, $E8, $0F, $F7, $87, $7E, $40
#_12E661: db $BD, $21, $DF, $1F
#_12E665: db $43 ; Word Fill
#_12E666: db $FF, $00 ; Word Fill
#_12E668: db $09 ; Direct Copy
#_12E669: db $E3, $F0, $78, $BF, $DE, $E0, $FF, $FF
#_12E671: db $88, $E8
#_12E673: db $43 ; Word Fill
#_12E674: db $10, $D0 ; Word Fill
#_12E676: db $E0, $59 ; EXT Direct Copy
#_12E678: db $11, $B1, $12, $B2, $0D, $7C, $03, $79
#_12E680: db $04, $13, $10, $20, $20, $40, $C1, $83
#_12E688: db $86, $EC, $57, $6E, $2A, $DB, $D5, $B1
#_12E690: db $24, $E0, $CC, $C0, $9E, $80, $FB, $00
#_12E698: db $F1, $00, $80, $04, $0E, $1F, $3F, $7F
#_12E6A0: db $FF, $FF, $E1, $21, $E0, $20, $F4, $34
#_12E6A8: db $F0, $30, $D8, $18, $6F, $0F, $BC, $80
#_12E6B0: db $DF, $C0, $DE, $DF, $CB, $CF, $E7, $F0
#_12E6B8: db $7F, $3F, $FB, $03, $FD, $01, $F6, $F0
#_12E6C0: db $3B, $38, $0F, $0C, $27, $24, $05, $04
#_12E6C8: db $85, $84, $FC, $FE, $0F, $C7, $F3, $DB
#_12E6D0: db $FB, $7B
#_12E6D2: db $43 ; Word Fill
#_12E6D3: db $FA, $6F ; Word Fill
#_12E6D5: db $10 ; Direct Copy
#_12E6D6: db $9B, $66, $AF, $62, $DF, $3A, $EF, $1C
#_12E6DE: db $77, $8E, $33, $CE, $0A, $0A, $02, $12
#_12E6E6: db $02
#_12E6E7: db $22 ; Byte Fill
#_12E6E8: db $00
#_12E6E9: db $1D ; Direct Copy
#_12E6EA: db $46, $F9, $01, $FF, $01, $FE, $A1, $EE
#_12E6F2: db $90, $F7, $61, $DF, $30, $EF, $98, $6F
#_12E6FA: db $F7, $13, $1A, $B8, $BC, $1F, $03, $00
#_12E702: db $1B, $02, $0D, $01, $1B, $02
#_12E708: db $45 ; Word Fill
#_12E709: db $35, $06 ; Word Fill
#_12E70B: db $06 ; Direct Copy
#_12E70C: db $1B, $02, $0D, $00, $FC, $FE, $FC
#_12E713: db $22 ; Byte Fill
#_12E714: db $F8
#_12E715: db $0B ; Direct Copy
#_12E716: db $FC, $FE, $19, $FE, $84, $FF, $16, $FB
#_12E71E: db $0B, $EC, $01, $F7
#_12E722: db $43 ; Word Fill
#_12E723: db $80, $7F ; Word Fill
#_12E725: db $E0, $31 ; EXT Direct Copy
#_12E727: db $74, $CF, $98, $80, $98, $FC, $3C, $8C
#_12E72F: db $E6, $C6, $C9, $B9, $52, $BB, $28, $CB
#_12E737: db $32, $D3, $31, $D9, $E8, $1C, $B7, $CF
#_12E73F: db $1B, $E7, $06, $04, $14, $0C, $06, $03
#_12E747: db $00, $00, $CB, $DD, $CE, $D9, $5C, $DB
#_12E74F: db $BC, $BB, $54, $7B, $AF, $F0, $5B, $E7
#_12E757: db $30, $CF
#_12E759: db $22 ; Byte Fill
#_12E75A: db $20
#_12E75B: db $01 ; Direct Copy
#_12E75C: db $40, $80
#_12E75E: db $22 ; Byte Fill
#_12E75F: db $00
#_12E760: db $0F ; Direct Copy
#_12E761: db $86, $FB, $C4, $3B, $3E, $C1, $5B, $DC
#_12E769: db $A5, $EE, $02, $07, $53, $73, $8B, $FB
#_12E771: db $22 ; Byte Fill
#_12E772: db $00
#_12E773: db $17 ; Direct Copy
#_12E774: db $20, $10, $F8, $8C, $04, $D4, $F7, $EA
#_12E77C: db $EF, $15, $1E, $3B, $FC, $F6, $F9, $7C
#_12E784: db $83, $C6, $3B, $86, $FB, $08, $10, $E0
#_12E78C: db $24 ; Byte Fill
#_12E78D: db $00
#_12E78E: db $03 ; Direct Copy
#_12E78F: db $E7, $57, $E5, $57
#_12E793: db $43 ; Word Fill
#_12E794: db $ED, $5F ; Word Fill
#_12E796: db $0B ; Direct Copy
#_12E797: db $FD, $4F, $F5, $4F, $F8, $47, $E4, $5B
#_12E79F: db $48, $48, $40, $40
#_12E7A3: db $22 ; Byte Fill
#_12E7A4: db $60
#_12E7A5: db $1B ; Direct Copy
#_12E7A6: db $40, $D2, $D6, $F3, $F7, $E5, $F7, $EA
#_12E7AE: db $FB, $80, $FC, $45, $C7, $BA, $83, $ED
#_12E7B6: db $A9, $29, $08, $08, $04, $03, $38, $44
#_12E7BE: db $12, $AB, $6E, $AA
#_12E7C2: db $46 ; Word Fill
#_12E7C3: db $6D, $AB ; Word Fill
#_12E7C5: db $05 ; Direct Copy
#_12E7C6: db $BB, $6D, $9B, $55, $AB, $6D
#_12E7CC: db $25 ; Byte Fill
#_12E7CD: db $10
#_12E7CE: db $1F ; Direct Copy
#_12E7CF: db $28, $10, $32, $EE, $6C, $DC, $DA, $FB
#_12E7D7: db $90, $B7, $11, $37, $14, $36, $13, $32
#_12E7DF: db $29, $39, $01, $03, $04, $48, $C8, $C9
#_12E7E7: db $CD, $C6, $00, $0F, $00, $03, $00, $01
#_12E7EF: db $29 ; Byte Fill
#_12E7F0: db $00
#_12E7F1: db $03 ; Direct Copy
#_12E7F2: db $10, $0C, $03, $01
#_12E7F6: db $23 ; Byte Fill
#_12E7F7: db $00
#_12E7F8: db $E0, $2A ; EXT Direct Copy
#_12E7FA: db $4F, $66, $BF, $E6, $19, $CA, $67, $F4
#_12E802: db $53, $34, $ED, $2A, $D7, $5A, $AB, $B6
#_12E80A: db $98, $18, $34, $08, $C8, $D0, $A0, $40
#_12E812: db $43, $C0, $89, $48, $9C, $5C, $9E, $52
#_12E81A: db $8E, $52, $9C, $4A, $BC, $6A, $AE, $5C
#_12E822: db $3F, $37, $23
#_12E825: db $22 ; Byte Fill
#_12E826: db $21
#_12E827: db $10 ; Direct Copy
#_12E828: db $01, $01, $7F, $80, $80, $FF, $03, $02
#_12E830: db $36, $39, $7F, $67, $3F, $21, $99, $1E
#_12E838: db $C0
#_12E839: db $22 ; Byte Fill
#_12E83A: db $00
#_12E83B: db $06 ; Direct Copy
#_12E83C: db $FC, $C0, $80, $C0, $E0, $FF, $F0
#_12E843: db $44 ; Word Fill
#_12E844: db $6F, $FA ; Word Fill
#_12E846: db $05 ; Direct Copy
#_12E847: db $F0, $6E, $90, $6F, $B0, $2F
#_12E84D: db $43 ; Word Fill
#_12E84E: db $F8, $6F ; Word Fill
#_12E850: db $E0, $3C ; EXT Direct Copy
#_12E852: db $00, $0A, $0A, $01, $0D, $42, $0B, $09
#_12E85A: db $38, $C7, $00, $7F, $03, $FF, $84, $FC
#_12E862: db $06, $FE, $21, $FF, $A0, $FF, $46, $7B
#_12E86A: db $00, $83, $07, $CF, $8F, $47, $83, $E6
#_12E872: db $FF, $00, $F3, $FB, $F7, $FF, $FF, $00
#_12E87A: db $63, $FF, $00, $FF, $60, $FF, $00, $EF
#_12E882: db $00, $04, $00, $00, $6B, $08, $66, $1B
#_12E88A: db $12, $BE, $01, $FF, $86
#_12E88F: db $44 ; Word Fill
#_12E890: db $7F, $80 ; Word Fill
#_12E892: db $E0, $29 ; EXT Direct Copy
#_12E894: db $19, $FE, $29, $EF, $24, $E7, $5B, $15
#_12E89C: db $01, $00, $18, $3D, $7F, $7E, $C8, $E0
#_12E8A4: db $5B, $F3, $D4, $77, $E4, $77, $94, $57
#_12E8AC: db $A8, $6B, $72, $B3, $DE, $38, $1F, $0C
#_12E8B4: db $08, $08, $28, $14, $0C, $07, $03, $0F
#_12E8BC: db $E2, $EF
#_12E8BE: db $43 ; Word Fill
#_12E8BF: db $67, $EE ; Word Fill
#_12E8C1: db $08 ; Direct Copy
#_12E8C2: db $ED, $EE, $4D, $CE, $96, $9D, $2B, $3C
#_12E8CA: db $F0
#_12E8CB: db $23 ; Byte Fill
#_12E8CC: db $10
#_12E8CD: db $E0, $2E ; EXT Direct Copy
#_12E8CF: db $30, $60, $C0, $BD, $C2, $F3, $FC, $16
#_12E8D7: db $F7, $6B, $7B, $C5, $05, $39, $38, $43
#_12E8DF: db $7E, $40, $7E, $00, $00, $08, $84, $FA
#_12E8E7: db $C7, $81, $81, $4A, $7E, $7C, $7C, $79
#_12E8EF: db $79, $02, $03, $0D, $FF, $3E, $FF, $F3
#_12E8F7: db $FC, $BD, $C2, $81, $83, $86, $FC
#_12E8FE: db $23 ; Byte Fill
#_12E8FF: db $00
#_12E900: db $01 ; Direct Copy
#_12E901: db $EF, $58
#_12E903: db $43 ; Word Fill
#_12E904: db $EC, $5A ; Word Fill
#_12E906: db $E0, $26 ; EXT Direct Copy
#_12E908: db $EB, $5D, $EF, $5D, $F7, $4E, $FB, $57
#_12E910: db $FD, $5A, $40, $41, $41, $40, $40, $60
#_12E918: db $40, $40, $FE, $3C, $5F, $3D, $BE, $82
#_12E920: db $CF, $4C, $50, $B0, $BF, $C0, $FB, $67
#_12E928: db $59, $B7, $01, $80, $41, $30, $0F
#_12E92F: db $22 ; Byte Fill
#_12E930: db $00
#_12E931: db $0F ; Direct Copy
#_12E932: db $2E, $D9, $3A, $D5, $B0, $CF, $E7, $1F
#_12E93A: db $4C, $BC, $5A, $B8, $64, $B0, $F1, $39
#_12E942: db $23 ; Byte Fill
#_12E943: db $00
#_12E944: db $E0, $5A ; EXT Direct Copy
#_12E946: db $03, $07, $0F, $06, $A7, $E5, $BD, $FA
#_12E94E: db $5B, $7E, $63, $3E, $B5, $86, $4B, $4C
#_12E956: db $FE, $81, $8D, $73, $18, $00, $80, $C0
#_12E95E: db $78, $B0, $00, $00, $28, $25, $51, $44
#_12E966: db $A0, $85, $48, $0D, $90, $1D, $60, $7D
#_12E96E: db $80, $FD, $00, $FD, $1B, $33, $62, $C2
#_12E976: db $82, $02, $06, $06, $37, $CE, $AB, $DA
#_12E97E: db $FB, $9A, $D7, $36, $AB, $6E, $53, $DE
#_12E986: db $A7, $BE, $07, $36, $00, $04, $04, $08
#_12E98E: db $10, $20, $40, $C8, $DF, $30, $C8, $38
#_12E996: db $E7, $5F, $F0, $6F, $FF, $70, $FF, $7F
#_12E99E: db $BF, $3F, $FF
#_12E9A1: db $83 ; Repeat Fill
#_12E9A2: db $12, $00 ; Repeat Fill bytes
#_12E9A4: db $0E ; Direct Copy
#_12E9A5: db $20, $30, $3F, $40, $00, $FF, $00, $FD
#_12E9AD: db $3C, $3F, $DE, $9F, $EE, $CF, $76
#_12E9B4: db $45 ; Word Fill
#_12E9B5: db $AF, $36 ; Word Fill
#_12E9B7: db $04 ; Direct Copy
#_12E9B8: db $00, $02, $1C, $0C, $04
#_12E9BD: db $22 ; Byte Fill
#_12E9BE: db $44
#_12E9BF: db $01 ; Direct Copy
#_12E9C0: db $07, $03
#_12E9C2: db $83 ; Repeat Fill
#_12E9C3: db $E2, $02 ; Repeat Fill bytes
#_12E9C5: db $E0, $22 ; EXT Direct Copy
#_12E9C7: db $01, $01, $02, $02, $00, $06, $00, $F6
#_12E9CF: db $06, $16, $04, $02, $01, $02, $84, $F8
#_12E9D7: db $08, $08, $7E, $81, $E7, $7E, $91, $7E
#_12E9DF: db $B1, $7E, $85, $7E, $83, $3E, $C3, $5A
#_12E9E7: db $7E, $81, $00
#_12E9EA: db $25 ; Byte Fill
#_12E9EB: db $7E
#_12E9EC: db $0E ; Direct Copy
#_12E9ED: db $00, $10, $90, $38, $A8, $1C, $94, $0E
#_12E9F5: db $CA, $07, $E5, $03, $F2, $01, $FF
#_12E9FC: db $22 ; Byte Fill
#_12E9FD: db $00
#_12E9FE: db $E0, $33 ; EXT Direct Copy
#_12EA00: db $10, $08, $04, $02, $81, $C0, $FF, $5C
#_12EA08: db $44, $2E, $23, $17, $11, $0B, $08, $05
#_12EA10: db $06, $82, $8F, $C0, $7F, $00, $00, $18
#_12EA18: db $0C, $06, $03, $01, $01, $83, $FF, $00
#_12EA20: db $FF, $C0, $00, $17, $F9, $0B, $08, $05
#_12EA28: db $04, $02, $02, $01, $01, $00, $00, $F0
#_12EA30: db $FF, $06, $03, $01
#_12EA34: db $23 ; Byte Fill
#_12EA35: db $00
#_12EA36: db $E0, $3E ; EXT Direct Copy
#_12EA38: db $FF, $03, $00, $00, $FF, $80, $80, $C0
#_12EA40: db $40, $E0, $20, $70, $10, $B8, $88, $0F
#_12EA48: db $FF, $00, $00, $80, $C0, $60, $30, $00
#_12EA50: db $00, $0E, $EE, $03, $73, $00, $BC, $80
#_12EA58: db $DF, $40, $EF, $A0, $F7, $D0, $FB, $FE
#_12EA60: db $31, $1C, $0F, $07, $03, $01, $00, $E8
#_12EA68: db $FD, $F4, $FE, $FA, $FF, $FD, $7F, $7E
#_12EA70: db $3F, $3F, $1F, $1F, $0F, $0F, $07
#_12EA77: db $22 ; Byte Fill
#_12EA78: db $00
#_12EA79: db $18 ; Direct Copy
#_12EA7A: db $80, $40, $20, $10, $08, $EF, $5D, $F7
#_12EA82: db $4D, $FA, $65, $FF, $70, $FF, $7C, $FF
#_12EA8A: db $7F, $80, $7F, $FF, $00, $40, $60, $70
#_12EA92: db $78
#_12EA93: db $22 ; Byte Fill
#_12EA94: db $7F
#_12EA95: db $E0, $2C ; EXT Direct Copy
#_12EA97: db $00, $EA, $D7, $3B, $27, $D9, $D7, $7A
#_12EA9F: db $F7, $FB, $07, $F8, $F6, $04, $FB, $FF
#_12EAA7: db $00, $00, $C0, $20, $00, $00, $F1, $F8
#_12EAAF: db $00, $FF, $00, $90, $70, $AF, $6F, $DB
#_12EAB7: db $5C, $B4, $3B, $A9, $37, $F3, $0F, $E7
#_12EABF: db $1C, $00, $0F, $1F, $38
#_12EAC4: db $83 ; Repeat Fill
#_12EAC5: db $46, $00 ; Repeat Fill bytes
#_12EAC7: db $00 ; Direct Copy
#_12EAC8: db $FF
#_12EAC9: db $22 ; Byte Fill
#_12EACA: db $00
#_12EACB: db $22 ; Byte Fill
#_12EACC: db $FF
#_12EACD: db $0B ; Direct Copy
#_12EACE: db $00, $18, $E7, $2F, $DF, $D8, $B8, $F3
#_12EAD6: db $32, $00, $FF, $FF
#_12EADA: db $22 ; Byte Fill
#_12EADB: db $00
#_12EADC: db $01 ; Direct Copy
#_12EADD: db $07, $0C
#_12EADF: db $46 ; Word Fill
#_12EAE0: db $00, $FD ; Word Fill
#_12EAE2: db $04 ; Direct Copy
#_12EAE3: db $7D, $00, $1D, $00, $0D
#_12EAE8: db $83 ; Repeat Fill
#_12EAE9: db $D4, $02 ; Repeat Fill bytes
#_12EAEB: db $1F ; Direct Copy
#_12EAEC: db $06, $06, $8F, $FF, $7F, $1F, $0F, $07
#_12EAF4: db $FF, $00, $05, $06, $FB, $F8, $BF, $78
#_12EAFC: db $5D, $B2, $AB, $D6, $5B, $66, $F7, $0E
#_12EB04: db $00, $F8, $FC, $38, $10, $00, $80, $00
#_12EB0C: db $FF ; End of GFX 27

;===================================================================================================

GFX_28:
#_12EB0D: db $0F ; Direct Copy
#_12EB0E: db $CF, $3F, $E6, $5F, $B0, $6F, $9F, $70
#_12EB16: db $88, $78, $47, $BF, $66, $9F, $73, $AF
#_12EB1E: db $23 ; Byte Fill
#_12EB1F: db $00
#_12EB20: db $00 ; Direct Copy
#_12EB21: db $07
#_12EB22: db $22 ; Byte Fill
#_12EB23: db $00
#_12EB24: db $0F ; Direct Copy
#_12EB25: db $F8, $07, $C7, $78, $63, $BD, $31, $DE
#_12EB2D: db $98, $EF, $D6, $E7, $D7, $E7, $95, $E7
#_12EB35: db $24 ; Byte Fill
#_12EB36: db $00
#_12EB37: db $22 ; Byte Fill
#_12EB38: db $08
#_12EB39: db $0F ; Direct Copy
#_12EB3A: db $C3, $00, $C7, $00, $FE, $00, $7B, $03
#_12EB42: db $B5, $06, $CF, $49, $F6, $7A, $EC, $74
#_12EB4A: db $22 ; Byte Fill
#_12EB4B: db $FF
#_12EB4C: db $E0, $34 ; EXT Direct Copy
#_12EB4E: db $FC, $78, $30, $01, $03, $FF, $00, $AF
#_12EB56: db $30, $B9, $C8, $E3, $20, $23, $E0, $03
#_12EB5E: db $60, $91, $30, $41, $10, $FF, $C0, $07
#_12EB66: db $1F, $1F, $9F, $CF, $EF, $EF, $00, $F7
#_12EB6E: db $07, $3B, $03, $3A, $03, $35, $06, $6F
#_12EB76: db $09, $F6, $1A, $DC, $14, $F0, $F8, $FC
#_12EB7E: db $FC, $F8, $F0, $E1, $E3
#_12EB83: db $43 ; Word Fill
#_12EB84: db $0C, $F7 ; Word Fill
#_12EB86: db $0B ; Direct Copy
#_12EB87: db $EC, $17, $7C, $87, $78, $A7, $6C, $B3
#_12EB8F: db $66, $B9, $63, $BC
#_12EB93: db $27 ; Byte Fill
#_12EB94: db $00
#_12EB95: db $E0, $59 ; EXT Direct Copy
#_12EB97: db $FF, $80, $DB, $81, $BF, $83, $DB, $25
#_12EB9F: db $F9, $5C, $B8, $6D, $B2, $4E, $D8, $4F
#_12EBA7: db $7E, $7D, $43, $01, $42, $62, $61, $60
#_12EBAF: db $FF, $F8, $87, $FC, $1B, $E6, $BF, $E2
#_12EBB7: db $DF, $E2, $CB, $7A, $C6, $7D, $E6, $79
#_12EBBF: db $FB, $FD, $FE, $E6, $E6, $7E, $7C, $78
#_12EBC7: db $FC, $03, $FF, $3C, $CB, $62, $9C, $C7
#_12EBCF: db $B8, $C7, $91, $FF, $8F, $FF, $DF, $F8
#_12EBD7: db $C0, $BC, $7E, $E7, $E7, $FF, $FF, $F8
#_12EBDF: db $F8, $75, $F2, $23, $A0, $1F, $FD, $0F
#_12EBE7: db $FF, $08, $AE, $14, $D9, $0F, $FF, $E0
#_12EBEF: db $72, $AC
#_12EBF1: db $22 ; Byte Fill
#_12EBF2: db $C0
#_12EBF3: db $01 ; Direct Copy
#_12EBF4: db $C7, $EF
#_12EBF6: db $43 ; Word Fill
#_12EBF7: db $00, $FF ; Word Fill
#_12EBF9: db $0F ; Direct Copy
#_12EBFA: db $03, $FE, $77, $FC, $6A, $D4, $6A, $DA
#_12EC02: db $6D, $DF, $66, $CF, $72, $00, $03, $07
#_12EC0A: db $23 ; Byte Fill
#_12EC0B: db $0F
#_12EC0C: db $12 ; Direct Copy
#_12EC0D: db $07, $FF, $00, $FF, $83, $3C, $6F, $38
#_12EC15: db $2E, $70, $EC, $F0, $DC, $E7, $B8, $EC
#_12EC1D: db $76, $00, $C7
#_12EC20: db $22 ; Byte Fill
#_12EC21: db $EF
#_12EC22: db $0D ; Direct Copy
#_12EC23: db $DF, $BB, $77, $FF, $3F, $DF, $40, $BF
#_12EC2B: db $00, $FF, $0F, $F8, $98, $70
#_12EC31: db $44 ; Word Fill
#_12EC32: db $10, $F0 ; Word Fill
#_12EC34: db $04 ; Direct Copy
#_12EC35: db $00, $3F, $7F, $70, $67
#_12EC3A: db $22 ; Byte Fill
#_12EC3B: db $EF
#_12EC3C: db $0B ; Direct Copy
#_12EC3D: db $FF, $90, $7F, $4F, $B0, $30, $CF, $00
#_12EC45: db $FF, $86, $79, $79
#_12EC49: db $24 ; Byte Fill
#_12EC4A: db $00
#_12EC4B: db $16 ; Direct Copy
#_12EC4C: db $80, $CF, $FF, $79, $86, $FF, $FF, $80
#_12EC54: db $00, $80, $40, $C0, $60, $D0, $20, $D8
#_12EC5C: db $20, $DC, $60, $96, $78, $CB, $24
#_12EC63: db $22 ; Byte Fill
#_12EC64: db $80
#_12EC65: db $E0, $5C ; EXT Direct Copy
#_12EC67: db $C0, $C0, $80, $80, $D0, $B3, $12, $BF
#_12EC6F: db $2C, $DD, $90, $63, $42, $BF, $20, $DF
#_12EC77: db $1F, $FF, $80, $7F, $40, $4C, $40, $22
#_12EC7F: db $9C, $C0, $E0, $7F, $BF, $E1, $21, $E0
#_12EC87: db $20, $E4, $24, $F0, $30, $D9, $19, $6F
#_12EC8F: db $0F, $B0, $80, $DF, $40, $DE, $DF, $DB
#_12EC97: db $CF, $E6, $F0, $7F, $3F, $FB, $02, $FD
#_12EC9F: db $01, $F6, $F0, $1B, $18, $0D, $0C, $25
#_12ECA7: db $24, $05, $04, $8D, $8C, $FC, $FE, $0F
#_12ECAF: db $E7, $F3, $DB, $FB, $73, $20, $DF, $3F
#_12ECB7: db $C0, $3F, $CF, $18, $E7, $FC, $03, $F6
#_12ECBF: db $F9, $03, $FC, $01, $FE
#_12ECC4: db $27 ; Byte Fill
#_12ECC5: db $00
#_12ECC6: db $13 ; Direct Copy
#_12ECC7: db $F0, $9F, $E0, $1F, $F0, $8F, $FF, $C0
#_12ECCF: db $7F, $E0, $3F, $DE, $C3, $3E, $FD, $02
#_12ECD7: db $3F, $3F, $1F, $0F
#_12ECDB: db $23 ; Byte Fill
#_12ECDC: db $00
#_12ECDD: db $14 ; Direct Copy
#_12ECDE: db $F2, $28, $91, $2C, $F8, $5E, $A2, $43
#_12ECE6: db $E0, $20, $C0, $00, $DC, $00, $FF, $00
#_12ECEE: db $C7, $C3, $81, $9C, $9F
#_12ECF3: db $22 ; Byte Fill
#_12ECF4: db $BF
#_12ECF5: db $07 ; Direct Copy
#_12ECF6: db $F3, $BC, $FB, $1C, $FD, $0A, $BD, $C6
#_12ECFE: db $43 ; Word Fill
#_12ECFF: db $1D, $E6 ; Word Fill
#_12ED01: db $07 ; Direct Copy
#_12ED02: db $1E, $E7, $1F, $E0, $00, $00, $C0, $E0
#_12ED0A: db $23 ; Byte Fill
#_12ED0B: db $F0
#_12ED0C: db $E0, $29 ; EXT Direct Copy
#_12ED0E: db $DD, $77, $DD, $7F, $C9, $7E, $E3, $3E
#_12ED16: db $FF, $3C, $FF, $99, $3C, $C3, $00, $FF
#_12ED1E: db $77, $7F, $7E, $3E, $3C, $18, $00, $00
#_12ED26: db $FF, $7F, $8E, $71, $9F, $6E, $9B, $6A
#_12ED2E: db $FB, $0E, $FB, $EE, $1F, $E4, $0E, $F1
#_12ED36: db $00, $00
#_12ED38: db $23 ; Byte Fill
#_12ED39: db $0E
#_12ED3A: db $03 ; Direct Copy
#_12ED3B: db $04, $00, $FC, $07
#_12ED3F: db $43 ; Word Fill
#_12ED40: db $8C, $F7 ; Word Fill
#_12ED42: db $09 ; Direct Copy
#_12ED43: db $BE, $C1, $FF, $BC, $E3, $AE, $FF, $BC
#_12ED4B: db $3E, $C1
#_12ED4D: db $23 ; Byte Fill
#_12ED4E: db $00
#_12ED4F: db $15 ; Direct Copy
#_12ED50: db $3C, $3E, $3C, $00, $FC, $07, $FC, $E3
#_12ED58: db $1E, $F9, $CE, $FD, $EE, $FD, $0E, $F9
#_12ED60: db $FC, $F3, $FC, $07, $00, $E0
#_12ED66: db $84 ; Repeat Fill
#_12ED67: db $71, $00 ; Repeat Fill bytes
#_12ED69: db $E0, $4C ; EXT Direct Copy
#_12ED6B: db $00, $CF, $70, $DF, $60, $BF, $4A, $F7
#_12ED73: db $1A, $E7, $3B, $EE, $3B, $FF, $61, $FF
#_12ED7B: db $60, $02, $09, $1B, $3B, $7B, $7B, $73
#_12ED83: db $63, $D0, $EC, $E7, $D8, $EF, $B0, $FC
#_12ED8B: db $A4, $F8, $28, $E3, $93, $64, $96, $EF
#_12ED93: db $9C, $EF, $DF, $B8, $B3, $A7, $CC, $C9
#_12ED9B: db $C0, $9E, $61, $CD, $32, $A3, $1D, $BE
#_12EDA3: db $22, $DC, $1C, $E0, $40, $FF, $6F, $FF
#_12EDAB: db $00, $6D, $3E, $5C, $41, $23, $1F, $00
#_12EDB3: db $00, $A7, $13, $B6, $92
#_12EDB8: db $43 ; Word Fill
#_12EDB9: db $2D, $08 ; Word Fill
#_12EDBB: db $1F ; Direct Copy
#_12EDBC: db $66, $44, $F3, $B2, $D8, $18, $EF, $2F
#_12EDC4: db $48, $49, $D3, $D3, $99, $0C, $27, $10
#_12EDCC: db $80, $00, $C0, $00, $A0, $40, $90, $60
#_12EDD4: db $88, $70, $DC, $38, $DA, $3C, $DC, $3F
#_12EDDC: db $27 ; Byte Fill
#_12EDDD: db $00
#_12EDDE: db $E0, $59 ; EXT Direct Copy
#_12EDE0: db $5F, $00, $DF, $06, $DD, $04, $B9, $08
#_12EDE8: db $79, $18, $F5, $50, $6D, $40, $AD, $80
#_12EDF0: db $E0, $E0, $E2, $C6, $86, $0E, $9E, $5E
#_12EDF8: db $E0, $A0, $7B, $5B, $B2, $AB, $DF, $56
#_12EE00: db $AF, $6F, $90, $70, $8F, $7F, $89, $7F
#_12EE08: db $1F, $84, $44, $20, $10, $0F, $00, $00
#_12EE10: db $BF, $A0, $D0, $5F, $E8, $AF, $74, $57
#_12EE18: db $5B, $6B, $1A, $1B, $7A, $7B, $5B, $6B
#_12EE20: db $40, $20, $10, $88, $84, $E4, $84, $84
#_12EE28: db $9C, $6C, $FE, $06, $2F, $DB, $AF, $DD
#_12EE30: db $A7, $DE, $A3, $DF, $A1, $DF, $E0, $1F
#_12EE38: db $03, $01
#_12EE3A: db $25 ; Byte Fill
#_12EE3B: db $00
#_12EE3C: db $E0, $27 ; EXT Direct Copy
#_12EE3E: db $10, $18, $17, $1F, $10, $1F, $AF, $B0
#_12EE46: db $D7, $EF, $AF, $5F, $F8, $9F, $F0, $9F
#_12EE4E: db $E7, $E0, $E0, $40, $0F, $1F, $3F, $3F
#_12EE56: db $DF, $3E, $41, $BE, $7F, $80, $C0, $3F
#_12EE5E: db $F0, $BF, $F8, $DF, $7C, $6F, $3E, $37
#_12EE66: db $25 ; Byte Fill
#_12EE67: db $00
#_12EE68: db $0B ; Direct Copy
#_12EE69: db $80, $C0, $1F, $1B, $0B, $0C, $17, $18
#_12EE71: db $EB, $F7, $16, $EF
#_12EE75: db $45 ; Word Fill
#_12EE76: db $5C, $6F ; Word Fill
#_12EE78: db $04 ; Direct Copy
#_12EE79: db $E0, $F0, $E3, $07, $0F
#_12EE7E: db $22 ; Byte Fill
#_12EE7F: db $8F
#_12EE80: db $83 ; Repeat Fill
#_12EE81: db $AC, $02 ; Repeat Fill bytes
#_12EE83: db $07 ; Direct Copy
#_12EE84: db $FF, $3F, $E7, $73, $CB, $79, $DF, $75
#_12EE8C: db $43 ; Word Fill
#_12EE8D: db $DD, $77 ; Word Fill
#_12EE8F: db $04 ; Direct Copy
#_12EE90: db $60, $00, $3F, $7F, $7F
#_12EE95: db $22 ; Byte Fill
#_12EE96: db $77
#_12EE97: db $02 ; Direct Copy
#_12EE98: db $FE, $7D, $EE
#_12EE9B: db $43 ; Word Fill
#_12EE9C: db $25, $F6 ; Word Fill
#_12EE9E: db $E0, $38 ; EXT Direct Copy
#_12EEA0: db $AD, $E6, $BD, $FE, $BD, $FC, $9B, $98
#_12EEA8: db $67, $7C, $3C, $2C, $AC, $BC, $BC, $98
#_12EEB0: db $00, $00, $FF, $FC, $03, $FE, $FD, $C7
#_12EEB8: db $9E, $B7, $8E, $FE, $FD, $FE, $81, $FF
#_12EEC0: db $1E, $00, $00, $FC, $FE, $CE, $FC, $80
#_12EEC8: db $1E, $FF, $BF, $F8, $B1, $F7, $A7, $6F
#_12EED0: db $A8, $E7, $3F, $F0, $BF, $FF, $9F, $FF
#_12EED8: db $00
#_12EED9: db $22 ; Byte Fill
#_12EEDA: db $3F
#_12EEDB: db $06 ; Direct Copy
#_12EEDC: db $38, $3F, $BF, $9F, $00, $F7, $4C
#_12EEE3: db $43 ; Word Fill
#_12EEE4: db $FD, $4E ; Word Fill
#_12EEE6: db $E0, $6A ; EXT Direct Copy
#_12EEE8: db $F8, $47, $F1, $0F, $FE, $0D, $FF, $4C
#_12EEF0: db $DF, $66, $61, $60, $60, $61, $2F, $0F
#_12EEF8: db $0D, $0E, $F5, $0E, $FB, $07, $EF, $38
#_12EF00: db $F7, $3C, $F8, $1C, $FF, $0F, $FF, $00
#_12EF08: db $FF, $07, $C0, $30, $78, $7F, $7F, $3F
#_12EF10: db $0F, $70, $3F, $D0, $3F, $CF, $71, $9F
#_12EF18: db $E0, $3F, $CE, $7B, $DE, $71, $DE, $61
#_12EF20: db $9E, $61, $00, $0F, $1F, $3F, $7B, $71
#_12EF28: db $61, $6D, $DD, $53, $EE, $21, $EF, $80
#_12EF30: db $EF, $A0, $CF, $80, $D5, $4C, $9B, $0A
#_12EF38: db $B7, $25, $20, $10, $90, $90, $B0, $22
#_12EF40: db $64, $48, $80, $80, $C0, $80, $20, $40
#_12EF48: db $90, $E0, $08, $70, $0C, $74, $CE, $B4
#_12EF50: db $8D, $F6, $00
#_12EF53: db $43 ; Word Fill
#_12EF54: db $00, $80 ; Word Fill
#_12EF56: db $06 ; Direct Copy
#_12EF57: db $80, $00, $00, $F3, $32, $FF, $00
#_12EF5E: db $83 ; Repeat Fill
#_12EF5F: db $12, $04 ; Repeat Fill bytes
#_12EF61: db $08 ; Direct Copy
#_12EF62: db $F0, $0F, $F0, $6F, $D8, $C7, $98, $80
#_12EF6A: db $0C
#_12EF6B: db $24 ; Byte Fill
#_12EF6C: db $00
#_12EF6D: db $10 ; Direct Copy
#_12EF6E: db $20, $67, $DF, $30, $CF, $3F, $E7, $1F
#_12EF76: db $D0, $6F, $CF, $70, $E0, $7F, $BF, $3F
#_12EF7E: db $FF
#_12EF7F: db $26 ; Byte Fill
#_12EF80: db $00
#_12EF81: db $0A ; Direct Copy
#_12EF82: db $40, $00, $FF, $00, $FD, $1C, $27, $DE
#_12EF8A: db $93, $EE, $CB
#_12EF8D: db $46 ; Word Fill
#_12EF8E: db $76, $EB ; Word Fill
#_12EF90: db $01 ; Direct Copy
#_12EF91: db $00, $02
#_12EF93: db $25 ; Byte Fill
#_12EF94: db $00
#_12EF95: db $01 ; Direct Copy
#_12EF96: db $FF, $FF
#_12EF98: db $22 ; Byte Fill
#_12EF99: db $00
#_12EF9A: db $04 ; Direct Copy
#_12EF9B: db $FF, $FF, $00, $FF, $FF
#_12EFA0: db $22 ; Byte Fill
#_12EFA1: db $00
#_12EFA2: db $83 ; Repeat Fill
#_12EFA3: db $B0, $04 ; Repeat Fill bytes
#_12EFA5: db $00 ; Direct Copy
#_12EFA6: db $FF
#_12EFA7: db $22 ; Byte Fill
#_12EFA8: db $00
#_12EFA9: db $13 ; Direct Copy
#_12EFAA: db $FF, $00, $00, $7E, $81, $E7, $7E, $91
#_12EFB2: db $7E, $B1, $7E, $85, $7E, $83, $3E, $C3
#_12EFBA: db $5A, $7E, $81, $00
#_12EFBE: db $25 ; Byte Fill
#_12EFBF: db $7E
#_12EFC0: db $E4, $30 ; EXT Byte Fill
#_12EFC2: db $00
#_12EFC3: db $0E ; Direct Copy
#_12EFC4: db $28, $10, $EF, $10, $FF, $EF, $07, $FF
#_12EFCC: db $10, $EF, $FF, $D7, $EF, $10, $28
#_12EFD3: db $22 ; Byte Fill
#_12EFD4: db $10
#_12EFD5: db $14 ; Direct Copy
#_12EFD6: db $EF, $FF, $EF, $D7, $10, $10, $14, $08
#_12EFDE: db $F7, $08, $FF, $EB, $1C, $F7, $68, $FF
#_12EFE6: db $FF, $F7, $F7, $08, $14
#_12EFEB: db $22 ; Byte Fill
#_12EFEC: db $08
#_12EFED: db $05 ; Direct Copy
#_12EFEE: db $EB, $F7, $FF, $F7, $08, $08
#_12EFF4: db $84 ; Repeat Fill
#_12EFF5: db $10, $05 ; Repeat Fill bytes
#_12EFF7: db $09 ; Direct Copy
#_12EFF8: db $D7, $10, $EF, $07, $FF, $FF, $EF, $FF
#_12F000: db $10, $28
#_12F002: db $22 ; Byte Fill
#_12F003: db $10
#_12F004: db $06 ; Direct Copy
#_12F005: db $D7, $EF, $FF, $EF, $10, $10, $14
#_12F00C: db $43 ; Word Fill
#_12F00D: db $08, $FF ; Word Fill
#_12F00F: db $09 ; Direct Copy
#_12F010: db $F6, $23, $FE, $81, $FE, $FF, $EA, $F7
#_12F018: db $08, $14
#_12F01A: db $22 ; Byte Fill
#_12F01B: db $08
#_12F01C: db $05 ; Direct Copy
#_12F01D: db $F6, $FE, $FE, $EA, $08, $08
#_12F023: db $43 ; Word Fill
#_12F024: db $DF, $60 ; Word Fill
#_12F026: db $0C ; Direct Copy
#_12F027: db $CF, $70, $C3, $7C, $E1, $7E, $F0, $7F
#_12F02F: db $9F, $1F, $FF, $00, $06
#_12F034: db $22 ; Byte Fill
#_12F035: db $01
#_12F036: db $0E ; Direct Copy
#_12F037: db $00, $00, $60, $00, $BC, $73, $3F, $F0
#_12F03F: db $3F, $E0, $F8, $C7, $F0, $0F, $00
#_12F046: db $23 ; Byte Fill
#_12F047: db $FF
#_12F048: db $04 ; Direct Copy
#_12F049: db $00, $F8, $F8, $F0, $E0
#_12F04E: db $23 ; Byte Fill
#_12F04F: db $00
#_12F050: db $0F ; Direct Copy
#_12F051: db $FF, $00, $80, $7F, $BF, $7F, $E0, $60
#_12F059: db $DF, $50, $B8, $27, $F4, $4C, $EB, $1B
#_12F061: db $22 ; Byte Fill
#_12F062: db $00
#_12F063: db $04 ; Direct Copy
#_12F064: db $1F, $20, $40, $03, $04
#_12F069: db $83 ; Repeat Fill
#_12F06A: db $BE, $04 ; Repeat Fill bytes
#_12F06C: db $0B ; Direct Copy
#_12F06D: db $FD, $FE, $02, $01, $C5, $47, $6F, $AB
#_12F075: db $7F, $43, $BD, $A3
#_12F079: db $22 ; Byte Fill
#_12F07A: db $00
#_12F07B: db $04 ; Direct Copy
#_12F07C: db $FC, $38, $10, $80, $40
#_12F081: db $37 ; Byte Fill
#_12F082: db $00
#_12F083: db $0F ; Direct Copy
#_12F084: db $FF, $00, $87, $78, $7B, $FC, $C5, $C6
#_12F08C: db $BB, $82, $75, $38, $CB, $4C, $C5, $46
#_12F094: db $22 ; Byte Fill
#_12F095: db $00
#_12F096: db $04 ; Direct Copy
#_12F097: db $38, $44, $82, $30, $38
#_12F09C: db $FF ; End of GFX 28

;===================================================================================================

GFX_29:
#_12F09D: db $23 ; Byte Fill
#_12F09E: db $00
#_12F09F: db $0B ; Direct Copy
#_12F0A0: db $03, $00, $06, $02, $0C, $04, $19, $09
#_12F0A8: db $33, $12, $26, $04
#_12F0AC: db $22 ; Byte Fill
#_12F0AD: db $00
#_12F0AE: db $04 ; Direct Copy
#_12F0AF: db $01, $03, $06, $0C, $18
#_12F0B4: db $23 ; Byte Fill
#_12F0B5: db $00
#_12F0B6: db $0B ; Direct Copy
#_12F0B7: db $C0, $00, $60, $40, $30, $20, $98, $90
#_12F0BF: db $CC, $48, $64, $20
#_12F0C3: db $22 ; Byte Fill
#_12F0C4: db $00
#_12F0C5: db $05 ; Direct Copy
#_12F0C6: db $80, $C0, $60, $30, $18, $3C
#_12F0CC: db $4C ; Word Fill
#_12F0CD: db $00, $24 ; Word Fill
#_12F0CF: db $02 ; Direct Copy
#_12F0D0: db $3C, $00, $00
#_12F0D3: db $25 ; Byte Fill
#_12F0D4: db $18
#_12F0D5: db $06 ; Direct Copy
#_12F0D6: db $00, $E7, $24, $C3, $42, $81, $81
#_12F0DD: db $23 ; Byte Fill
#_12F0DE: db $00
#_12F0DF: db $15 ; Direct Copy
#_12F0E0: db $81, $81, $C3, $42, $E7, $24, $18, $3C
#_12F0E8: db $7E, $FF, $FF, $7E, $3C, $18, $00, $00
#_12F0F0: db $01, $00, $06, $00, $09, $01
#_12F0F6: db $43 ; Word Fill
#_12F0F7: db $0F, $07 ; Word Fill
#_12F0F9: db $E0, $37 ; EXT Direct Copy
#_12F0FB: db $1F, $0F, $1E, $0F, $00, $01, $07, $0E
#_12F103: db $08, $08, $10, $10, $D8, $1F, $0C, $0F
#_12F10B: db $EA, $EF, $F9, $FF, $FB, $FF, $FE, $FF
#_12F113: db $FD, $FF, $FE, $FF, $F8, $FC, $1A, $09
#_12F11B: db $0B, $0E, $0D, $0E, $37, $CE, $16, $EF
#_12F123: db $50, $EF, $5D, $E2, $DF, $E0, $CB, $F6
#_12F12B: db $8D, $F2, $87, $F8, $3F, $3F, $7F, $7F
#_12F133: db $24 ; Byte Fill
#_12F134: db $FF
#_12F135: db $06 ; Direct Copy
#_12F136: db $07, $F3, $0F, $F0, $0F, $FE, $01
#_12F13D: db $47 ; Word Fill
#_12F13E: db $FF, $00 ; Word Fill
#_12F140: db $27 ; Byte Fill
#_12F141: db $FF
#_12F142: db $14 ; Direct Copy
#_12F143: db $9A, $7E, $95, $7C, $AA, $78, $CB, $39
#_12F14B: db $D5, $3F, $ED, $1F, $B5, $4F, $15, $EF
#_12F153: db $F9, $F2, $E5, $E4, $F0
#_12F158: db $22 ; Byte Fill
#_12F159: db $FC
#_12F15A: db $43 ; Word Fill
#_12F15B: db $0A, $07 ; Word Fill
#_12F15D: db $00 ; Direct Copy
#_12F15E: db $05
#_12F15F: db $44 ; Word Fill
#_12F160: db $03, $04 ; Word Fill
#_12F162: db $02 ; Direct Copy
#_12F163: db $02, $01, $01
#_12F166: db $22 ; Byte Fill
#_12F167: db $00
#_12F168: db $01 ; Direct Copy
#_12F169: db $0F, $0F
#_12F16B: db $22 ; Byte Fill
#_12F16C: db $07
#_12F16D: db $01 ; Direct Copy
#_12F16E: db $03, $01
#_12F170: db $43 ; Word Fill
#_12F171: db $00, $FF ; Word Fill
#_12F173: db $E0, $37 ; EXT Direct Copy
#_12F175: db $7F, $FF, $6F, $EF, $56, $FE, $59, $EF
#_12F17D: db $4D, $E5, $47, $F7, $57, $00, $7F, $6F
#_12F185: db $46, $40, $50, $58, $48, $FF, $00, $E0
#_12F18D: db $DF, $DC, $3C, $70, $F0, $E0, $E0, $C0
#_12F195: db $C0, $C2, $C3, $D5, $D7, $00, $C0, $03
#_12F19D: db $0F, $1F, $3F, $3C, $28, $92, $82, $14
#_12F1A5: db $04, $3B, $00, $7F, $00, $E3, $00, $C1
#_12F1AD: db $44 ; Word Fill
#_12F1AE: db $00, $80 ; Word Fill
#_12F1B0: db $01 ; Direct Copy
#_12F1B1: db $7D, $FB
#_12F1B3: db $25 ; Byte Fill
#_12F1B4: db $FF
#_12F1B5: db $0A ; Direct Copy
#_12F1B6: db $44, $44, $DD, $44, $BB, $00, $FF, $00
#_12F1BE: db $C7, $00, $83
#_12F1C1: db $24 ; Byte Fill
#_12F1C2: db $00
#_12F1C3: db $01 ; Direct Copy
#_12F1C4: db $BB, $BB
#_12F1C6: db $25 ; Byte Fill
#_12F1C7: db $FF
#_12F1C8: db $E0, $2C ; EXT Direct Copy
#_12F1CA: db $C3, $80, $80, $78, $F8, $7E, $85, $87
#_12F1D2: db $62, $03, $F8, $01, $8D, $01, $87, $00
#_12F1DA: db $3F, $07, $01, $78, $FC, $FE, $FE, $FF
#_12F1E2: db $9B, $96, $4D, $4A, $E7, $04, $F3, $02
#_12F1EA: db $B9, $01, $1C, $00, $0F, $00, $07, $00
#_12F1F2: db $60, $B0, $F8, $FC, $FE
#_12F1F7: db $22 ; Byte Fill
#_12F1F8: db $FF
#_12F1F9: db $0A ; Direct Copy
#_12F1FA: db $26, $04, $33, $12, $19, $09, $0C, $04
#_12F202: db $06, $02, $03
#_12F205: db $24 ; Byte Fill
#_12F206: db $00
#_12F207: db $04 ; Direct Copy
#_12F208: db $18, $0C, $06, $03, $01
#_12F20D: db $22 ; Byte Fill
#_12F20E: db $00
#_12F20F: db $0A ; Direct Copy
#_12F210: db $64, $20, $CC, $48, $98, $90, $30, $20
#_12F218: db $60, $40, $C0
#_12F21B: db $24 ; Byte Fill
#_12F21C: db $00
#_12F21D: db $04 ; Direct Copy
#_12F21E: db $18, $30, $60, $C0, $80
#_12F223: db $26 ; Byte Fill
#_12F224: db $00
#_12F225: db $00 ; Direct Copy
#_12F226: db $FF
#_12F227: db $44 ; Word Fill
#_12F228: db $00, $81 ; Word Fill
#_12F22A: db $00 ; Direct Copy
#_12F22B: db $FF
#_12F22C: db $27 ; Byte Fill
#_12F22D: db $00
#_12F22E: db $01 ; Direct Copy
#_12F22F: db $7E, $7E
#_12F231: db $22 ; Byte Fill
#_12F232: db $00
#_12F233: db $0F ; Direct Copy
#_12F234: db $C3, $04, $81, $3A, $99, $22, $F1, $06
#_12F23C: db $E3, $0C, $E7, $08, $FF, $00, $E7, $08
#_12F244: db $27 ; Byte Fill
#_12F245: db $FF
#_12F246: db $17 ; Direct Copy
#_12F247: db $15, $0F, $10, $0F, $12, $0F, $32, $1F
#_12F24F: db $37, $1F, $3E, $1F, $3C, $1F, $20, $1F
#_12F257: db $10, $10, $12, $32, $36, $3D, $33, $3F
#_12F25F: db $43 ; Word Fill
#_12F260: db $3F, $FF ; Word Fill
#_12F262: db $02 ; Direct Copy
#_12F263: db $C4, $FF, $86
#_12F266: db $43 ; Word Fill
#_12F267: db $FF, $03 ; Word Fill
#_12F269: db $08 ; Direct Copy
#_12F26A: db $FE, $07, $F8, $0F, $F1, $17, $1B, $3D
#_12F272: db $7E
#_12F273: db $23 ; Byte Fill
#_12F274: db $FF
#_12F275: db $0E ; Direct Copy
#_12F276: db $87, $F8, $8F, $F0, $3F, $CC, $7F, $BE
#_12F27E: db $CF, $7F, $C7, $FF, $E0, $FF, $F0
#_12F285: db $23 ; Byte Fill
#_12F286: db $FF
#_12F287: db $04 ; Direct Copy
#_12F288: db $DF, $8F, $87, $C3, $E7
#_12F28D: db $49 ; Word Fill
#_12F28E: db $FF, $00 ; Word Fill
#_12F290: db $05 ; Direct Copy
#_12F291: db $FC, $83, $70, $8F, $38, $DF
#_12F297: db $24 ; Byte Fill
#_12F298: db $FF
#_12F299: db $02 ; Direct Copy
#_12F29A: db $FC, $F0, $F8
#_12F29D: db $45 ; Word Fill
#_12F29E: db $55, $EF ; Word Fill
#_12F2A0: db $05 ; Direct Copy
#_12F2A1: db $95, $6F, $15, $EF, $0C, $F7
#_12F2A7: db $43 ; Word Fill
#_12F2A8: db $04, $FB ; Word Fill
#_12F2AA: db $23 ; Byte Fill
#_12F2AB: db $FC
#_12F2AC: db $0D ; Direct Copy
#_12F2AD: db $1C, $0C, $04, $0C, $80, $7F, $B2, $7F
#_12F2B5: db $A1, $7E, $83, $7C, $86, $79
#_12F2BB: db $43 ; Word Fill
#_12F2BC: db $8C, $73 ; Word Fill
#_12F2BE: db $04 ; Direct Copy
#_12F2BF: db $98, $67, $F0, $FA, $FD
#_12F2C4: db $24 ; Byte Fill
#_12F2C5: db $FF
#_12F2C6: db $03 ; Direct Copy
#_12F2C7: db $E7, $57, $E5, $57
#_12F2CB: db $43 ; Word Fill
#_12F2CC: db $ED, $5F ; Word Fill
#_12F2CE: db $0B ; Direct Copy
#_12F2CF: db $FD, $4F, $F5, $4F, $F8, $47, $E4, $5B
#_12F2D7: db $48, $48, $40, $40
#_12F2DB: db $22 ; Byte Fill
#_12F2DC: db $60
#_12F2DD: db $E0, $3D ; EXT Direct Copy
#_12F2DF: db $40, $D2, $D6, $F3, $F7, $E5, $F7, $EA
#_12F2E7: db $FB, $80, $FC, $45, $C7, $BA, $83, $ED
#_12F2EF: db $A9, $29, $08, $08, $04, $03, $38, $44
#_12F2F7: db $12, $AE, $E4, $E3, $6A, $E3, $69, $D1
#_12F2FF: db $44, $A0, $02, $DF, $00, $AF, $1F, $A3
#_12F307: db $63, $13, $15, $16, $3B, $7D, $60, $40
#_12F30F: db $1C, $BA, $C6, $45, $7C, $BB, $39, $D6
#_12F317: db $92, $ED, $44, $FF, $44, $55
#_12F31D: db $22 ; Byte Fill
#_12F31E: db $45
#_12F31F: db $04 ; Direct Copy
#_12F320: db $01, $83, $C6, $6D, $BB
#_12F325: db $22 ; Byte Fill
#_12F326: db $BA
#_12F327: db $12 ; Direct Copy
#_12F328: db $D3, $C3, $D9, $C1, $B5, $81, $63, $00
#_12F330: db $C3, $00, $83, $01, $87, $03, $FF, $04
#_12F338: db $3C, $3E, $7E
#_12F33B: db $22 ; Byte Fill
#_12F33C: db $FE
#_12F33D: db $E0, $31 ; EXT Direct Copy
#_12F33F: db $FC, $F8, $C4, $66, $A2, $B3, $70, $39
#_12F347: db $A8, $2D, $50, $45, $EC, $25, $F4, $D5
#_12F34F: db $B8, $AD, $99, $4C, $C6, $D2, $BA, $1A
#_12F357: db $0A, $42, $BC, $FD, $7C, $7D, $78, $79
#_12F35F: db $F8, $79, $60, $61, $3B, $01, $BF, $E1
#_12F367: db $8E, $E2, $02, $82, $86, $86, $9E, $FE
#_12F36F: db $1E, $1D
#_12F371: db $25 ; Byte Fill
#_12F372: db $00
#_12F373: db $09 ; Direct Copy
#_12F374: db $01, $00, $03, $01, $06, $03, $0C, $07
#_12F37C: db $1E, $0F
#_12F37E: db $22 ; Byte Fill
#_12F37F: db $00
#_12F380: db $19 ; Direct Copy
#_12F381: db $01, $02, $04, $0C, $1E, $00, $00, $07
#_12F389: db $00, $79, $00, $F2, $72, $AF, $EF, $17
#_12F391: db $FF, $24, $FF, $01, $FF, $00, $07, $7E
#_12F399: db $8D, $10
#_12F39B: db $22 ; Byte Fill
#_12F39C: db $00
#_12F39D: db $17 ; Direct Copy
#_12F39E: db $01, $00, $C7, $01, $FB, $07, $75, $0F
#_12F3A6: db $A9, $97, $C9, $D7, $6A, $F6, $8A, $F6
#_12F3AE: db $01, $C6, $3C, $9C, $5C, $3C, $1D, $7D
#_12F3B6: db $43 ; Word Fill
#_12F3B7: db $20, $1F ; Word Fill
#_12F3B9: db $05 ; Direct Copy
#_12F3BA: db $31, $0E, $12, $0D, $13, $0D
#_12F3C0: db $43 ; Word Fill
#_12F3C1: db $17, $0B ; Word Fill
#_12F3C3: db $01 ; Direct Copy
#_12F3C4: db $15, $0B
#_12F3C6: db $22 ; Byte Fill
#_12F3C7: db $3F
#_12F3C8: db $00 ; Direct Copy
#_12F3C9: db $1E
#_12F3CA: db $22 ; Byte Fill
#_12F3CB: db $1F
#_12F3CC: db $17 ; Direct Copy
#_12F3CD: db $1D, $3F, $C1, $77, $9B, $F7, $7B, $CB
#_12F3D5: db $F7, $0B, $F7, $8D, $F3, $86, $F9, $87
#_12F3DD: db $F8, $FF, $E7, $87, $0F, $0F, $BF, $FF
#_12F3E5: db $44 ; Word Fill
#_12F3E6: db $FF, $E0 ; Word Fill
#_12F3E8: db $0B ; Direct Copy
#_12F3E9: db $C0, $FF, $C9, $FE, $82, $FD, $84, $FB
#_12F3F1: db $08, $F7, $D1, $2F
#_12F3F5: db $23 ; Byte Fill
#_12F3F6: db $FF
#_12F3F7: db $00 ; Direct Copy
#_12F3F8: db $F7
#_12F3F9: db $22 ; Byte Fill
#_12F3FA: db $FD
#_12F3FB: db $14 ; Direct Copy
#_12F3FC: db $3C, $DF, $7E, $BF, $7C, $BF, $F8, $3F
#_12F404: db $78, $BF, $39, $DF, $D0, $EF, $E8, $F7
#_12F40C: db $FC, $FE, $FD, $FB, $FB
#_12F411: db $22 ; Byte Fill
#_12F412: db $FF
#_12F413: db $43 ; Word Fill
#_12F414: db $06, $FB ; Word Fill
#_12F416: db $01 ; Direct Copy
#_12F417: db $07, $FB
#_12F419: db $43 ; Word Fill
#_12F41A: db $8B, $F7 ; Word Fill
#_12F41C: db $07 ; Direct Copy
#_12F41D: db $13, $EF, $11, $EF, $21, $DF, $1E, $FE
#_12F425: db $25 ; Byte Fill
#_12F426: db $FF
#_12F427: db $19 ; Direct Copy
#_12F428: db $70, $8F, $E8, $17, $84, $7B, $62, $FD
#_12F430: db $79, $FE, $3D, $FE, $1C, $FF, $10, $FF
#_12F438: db $7F, $FF, $BF, $7F, $7F, $3F, $5F, $FF
#_12F440: db $EF, $58
#_12F442: db $43 ; Word Fill
#_12F443: db $EC, $5A ; Word Fill
#_12F445: db $E0, $26 ; EXT Direct Copy
#_12F447: db $EB, $5D, $EF, $5D, $F7, $4E, $FB, $57
#_12F44F: db $FD, $5A, $40, $41, $41, $40, $40, $60
#_12F457: db $40, $40, $FE, $3C, $5F, $3D, $BE, $82
#_12F45F: db $CF, $4C, $50, $B0, $BF, $C0, $FB, $67
#_12F467: db $59, $B7, $01, $80, $41, $30, $0F
#_12F46E: db $22 ; Byte Fill
#_12F46F: db $00
#_12F470: db $12 ; Direct Copy
#_12F471: db $0C, $25, $29, $23, $2B, $26, $86, $0C
#_12F479: db $E6, $0C, $36, $0C, $2E, $34, $5E, $74
#_12F481: db $D2, $D4, $D1
#_12F484: db $22 ; Byte Fill
#_12F485: db $F3
#_12F486: db $09 ; Direct Copy
#_12F487: db $C3, $83, $C6, $83, $BB, $01, $45, $38
#_12F48F: db $BA, $7C
#_12F491: db $45 ; Word Fill
#_12F492: db $FE, $44 ; Word Fill
#_12F494: db $04 ; Direct Copy
#_12F495: db $7D, $A3, $7C, $C6, $83
#_12F49A: db $22 ; Byte Fill
#_12F49B: db $01
#_12F49C: db $07 ; Direct Copy
#_12F49D: db $19, $18, $6E, $FA, $67, $6A, $77, $76
#_12F4A5: db $43 ; Word Fill
#_12F4A6: db $77, $72 ; Word Fill
#_12F4A8: db $E0, $25 ; EXT Direct Copy
#_12F4AA: db $3B, $39, $1D, $1C, $0E, $0E, $05, $95
#_12F4B2: db $89, $8D, $8D, $C6, $E3, $F1, $45, $7C
#_12F4BA: db $54, $FC, $8A, $EE, $C5, $67, $C2, $73
#_12F4C2: db $C1, $69, $C8, $6C, $C8, $6E, $82, $03
#_12F4CA: db $11, $98, $8C, $96, $93, $91
#_12F4D0: db $83 ; Repeat Fill
#_12F4D1: db $02, $00 ; Repeat Fill bytes
#_12F4D3: db $01 ; Direct Copy
#_12F4D4: db $07, $03
#_12F4D6: db $43 ; Word Fill
#_12F4D7: db $0C, $07 ; Word Fill
#_12F4D9: db $13 ; Direct Copy
#_12F4DA: db $1C, $0F, $1F, $0C, $3C, $03, $00, $03
#_12F4E2: db $04, $08, $08, $18, $1F, $3C, $7E, $1F
#_12F4EA: db $FF, $3F, $DF, $3F
#_12F4EE: db $43 ; Word Fill
#_12F4EF: db $6F, $9F ; Word Fill
#_12F4F1: db $08 ; Direct Copy
#_12F4F2: db $33, $CF, $9C, $63, $5F, $A4, $7E, $FF
#_12F4FA: db $FF
#_12F4FB: db $22 ; Byte Fill
#_12F4FC: db $7F
#_12F4FD: db $15 ; Direct Copy
#_12F4FE: db $FF, $7F, $00, $FF, $80, $FF, $C0, $FF
#_12F506: db $D4, $FF, $C8, $FF, $80, $FF, $81, $FE
#_12F50E: db $0F, $F1, $01, $87, $DF, $FF
#_12F514: db $83 ; Repeat Fill
#_12F515: db $BB, $03 ; Repeat Fill bytes
#_12F517: db $10 ; Direct Copy
#_12F518: db $7E, $81, $E7, $7E, $91, $7E, $B1, $7E
#_12F520: db $85, $7E, $93, $7E, $C3, $7E, $7E, $81
#_12F528: db $00
#_12F529: db $25 ; Byte Fill
#_12F52A: db $7E
#_12F52B: db $00 ; Direct Copy
#_12F52C: db $00
#_12F52D: db $43 ; Word Fill
#_12F52E: db $0F, $07 ; Word Fill
#_12F530: db $0A ; Direct Copy
#_12F531: db $1E, $0F, $1E, $07, $3C, $03, $3F, $00
#_12F539: db $15, $0E, $12
#_12F53C: db $22 ; Byte Fill
#_12F53D: db $0F
#_12F53E: db $15 ; Direct Copy
#_12F53F: db $1F, $1F, $3F, $3F, $17, $1B, $07, $F8
#_12F547: db $0F, $F0, $1F, $E0, $38, $C7, $F3, $1F
#_12F54F: db $F9, $3F, $9A, $7F, $88, $7F
#_12F555: db $23 ; Byte Fill
#_12F556: db $FF
#_12F557: db $13 ; Direct Copy
#_12F558: db $F3, $F9, $D8, $E8, $F3, $0F, $F7, $0F
#_12F560: db $A5, $5F, $2D, $DF, $2E, $DF, $EE, $DF
#_12F568: db $EC, $DF, $68, $9F
#_12F56C: db $23 ; Byte Fill
#_12F56D: db $FD
#_12F56E: db $06 ; Direct Copy
#_12F56F: db $FE, $FE, $FD, $7B, $F7, $F8, $F8
#_12F576: db $22 ; Byte Fill
#_12F577: db $FF
#_12F578: db $08 ; Direct Copy
#_12F579: db $DE, $FF, $B9, $FF, $02, $FB, $0C, $FF
#_12F581: db $32
#_12F582: db $23 ; Byte Fill
#_12F583: db $FF
#_12F584: db $0C ; Direct Copy
#_12F585: db $DE, $99, $07, $FD, $FF, $E1, $1F, $60
#_12F58D: db $9F, $22, $DF, $23, $DF
#_12F592: db $83 ; Repeat Fill
#_12F593: db $CA, $03 ; Repeat Fill bytes
#_12F595: db $06 ; Direct Copy
#_12F596: db $10, $EF, $18, $E7, $FF, $FF, $7F
#_12F59D: db $24 ; Byte Fill
#_12F59E: db $FF
#_12F59F: db $10 ; Direct Copy
#_12F5A0: db $A1, $FF, $C1, $FF, $10, $FF, $33, $FC
#_12F5A8: db $FF, $01, $FA, $1D, $ED, $3E, $48, $BF
#_12F5B0: db $BF
#_12F5B1: db $23 ; Byte Fill
#_12F5B2: db $FF
#_12F5B3: db $16 ; Direct Copy
#_12F5B4: db $EF, $CF, $CF, $EF, $5D, $F7, $4D, $FA
#_12F5BC: db $65, $FF, $70, $FF, $7C, $FF, $7F, $80
#_12F5C4: db $7F, $FF, $00, $40, $60, $70, $78
#_12F5CB: db $22 ; Byte Fill
#_12F5CC: db $7F
#_12F5CD: db $E0, $32 ; EXT Direct Copy
#_12F5CF: db $00, $EA, $D7, $3B, $27, $D9, $D7, $7A
#_12F5D7: db $F7, $FB, $07, $F8, $F6, $04, $FB, $FF
#_12F5DF: db $00, $00, $C0, $20, $00, $00, $F1, $F8
#_12F5E7: db $00, $FF, $00, $37, $ED, $4B, $D9, $91
#_12F5EF: db $B3, $20, $64, $40, $49, $01, $13, $02
#_12F5F7: db $26, $00, $00, $24, $4C, $9B, $B6, $EC
#_12F5FF: db $D9, $FF, $00
#_12F602: db $43 ; Word Fill
#_12F603: db $FE, $57 ; Word Fill
#_12F605: db $09 ; Direct Copy
#_12F606: db $56, $FF, $02, $AB, $80, $A9, $29, $6D
#_12F60E: db $7C, $C6
#_12F610: db $23 ; Byte Fill
#_12F611: db $00
#_12F612: db $E0, $33 ; EXT Direct Copy
#_12F614: db $54, $56, $92, $39, $0A, $F6, $08, $F4
#_12F61C: db $14, $EC, $2A, $DA, $4E, $BE, $C2, $3E
#_12F624: db $D3, $3F, $CA, $3E, $FD, $FF, $FB, $F5
#_12F62C: db $E1, $E1, $F0, $F9, $FC, $03, $AE, $61
#_12F634: db $AF, $64, $41, $CA, $89, $9A, $91, $B2
#_12F63C: db $21, $E6, $A1, $EE, $00, $10, $10, $34
#_12F644: db $64, $4C, $18, $10
#_12F648: db $FF ; End of GFX 29

;===================================================================================================

GFX_2A:
#_12F649: db $0A ; Direct Copy
#_12F64A: db $30, $D6, $FA, $0A, $10, $E8, $1C, $E4
#_12F652: db $FA, $06, $F7
#_12F655: db $44 ; Word Fill
#_12F656: db $FB, $05 ; Word Fill
#_12F658: db $04 ; Direct Copy
#_12F659: db $09, $05, $07, $03, $01
#_12F65E: db $22 ; Byte Fill
#_12F65F: db $00
#_12F660: db $43 ; Word Fill
#_12F661: db $4C, $B7 ; Word Fill
#_12F663: db $0B ; Direct Copy
#_12F664: db $CC, $37, $FC, $87, $58, $67, $17, $98
#_12F66C: db $4C, $CF, $07, $07
#_12F670: db $23 ; Byte Fill
#_12F671: db $00
#_12F672: db $03 ; Direct Copy
#_12F673: db $80, $60, $30, $F8
#_12F677: db $43 ; Word Fill
#_12F678: db $FF, $00 ; Word Fill
#_12F67A: db $0B ; Direct Copy
#_12F67B: db $1F, $00, $30, $00, $69, $0F, $D6, $19
#_12F683: db $AF, $3E, $5F, $7F
#_12F687: db $23 ; Byte Fill
#_12F688: db $FF
#_12F689: db $13 ; Direct Copy
#_12F68A: db $F0, $E0, $C0, $80, $00, $00, $80, $00
#_12F692: db $C0, $00, $FF, $00, $7F, $00, $83, $82
#_12F69A: db $7F, $FC, $87, $78
#_12F69E: db $24 ; Byte Fill
#_12F69F: db $FF
#_12F6A0: db $13 ; Direct Copy
#_12F6A1: db $7C, $01, $03, $DF, $00, $F2, $02, $F9
#_12F6A9: db $01, $7C, $00, $3C, $00, $39, $01, $72
#_12F6B1: db $03, $E4, $06, $E0
#_12F6B5: db $62 ; Increasing Fill
#_12F6B6: db $FD ; Increasing Fill Start
#_12F6B7: db $1B ; Direct Copy
#_12F6B8: db $FF, $FE, $FC, $F9, $FC, $07, $4C, $73
#_12F6C0: db $36, $B9, $3B, $BC, $FD, $1E, $DF, $EE
#_12F6C8: db $6F, $76, $37, $38, $00, $80, $40, $40
#_12F6D0: db $00, $00, $80, $C0
#_12F6D4: db $4F ; Word Fill
#_12F6D5: db $C6, $45 ; Word Fill
#_12F6D7: db $27 ; Byte Fill
#_12F6D8: db $38
#_12F6D9: db $2F ; Byte Fill
#_12F6DA: db $FF
#_12F6DB: db $27 ; Byte Fill
#_12F6DC: db $00
#_12F6DD: db $07 ; Direct Copy
#_12F6DE: db $FF, $4F, $FF, $63, $FF, $30, $FF, $1C
#_12F6E6: db $86 ; Repeat Fill
#_12F6E7: db $C0, $00 ; Repeat Fill bytes
#_12F6E9: db $00 ; Direct Copy
#_12F6EA: db $5C
#_12F6EB: db $28 ; Byte Fill
#_12F6EC: db $FF
#_12F6ED: db $87 ; Repeat Fill
#_12F6EE: db $C1, $00 ; Repeat Fill bytes
#_12F6F0: db $02 ; Direct Copy
#_12F6F1: db $0F, $FF, $03
#_12F6F4: db $43 ; Word Fill
#_12F6F5: db $FF, $00 ; Word Fill
#_12F6F7: db $23 ; Byte Fill
#_12F6F8: db $FF
#_12F6F9: db $E0, $33 ; EXT Direct Copy
#_12F6FB: db $7F, $3F, $1F, $00, $00, $FF, $EF, $10
#_12F703: db $FF, $40, $BF, $0C, $92, $4D, $CB, $61
#_12F70B: db $FA, $30, $F2, $40, $00, $00, $0E, $5E
#_12F713: db $7C, $7C, $3D, $7D, $E3, $1C, $F4, $6B
#_12F71B: db $5B, $D7, $96, $9E, $2C, $3C, $5C, $7C
#_12F723: db $3E, $7E, $E7, $B7, $00, $00, $20, $61
#_12F72B: db $C3, $83, $81, $08
#_12F72F: db $45 ; Word Fill
#_12F730: db $7F, $80 ; Word Fill
#_12F732: db $45 ; Word Fill
#_12F733: db $60, $80 ; Word Fill
#_12F735: db $43 ; Word Fill
#_12F736: db $E0, $00 ; Word Fill
#_12F738: db $25 ; Byte Fill
#_12F739: db $7F
#_12F73A: db $22 ; Byte Fill
#_12F73B: db $FF
#_12F73C: db $43 ; Word Fill
#_12F73D: db $00, $FF ; Word Fill
#_12F73F: db $2A ; Byte Fill
#_12F740: db $00
#_12F741: db $27 ; Byte Fill
#_12F742: db $FF
#_12F743: db $37 ; Byte Fill
#_12F744: db $00
#_12F745: db $14 ; Direct Copy
#_12F746: db $EC, $3D, $D6, $1F, $EA, $0F, $F4, $07
#_12F74E: db $7B, $03, $3F, $00, $1F, $00, $0F, $00
#_12F756: db $C2, $E0, $F0, $F8, $FC
#_12F75B: db $22 ; Byte Fill
#_12F75C: db $FF
#_12F75D: db $0F ; Direct Copy
#_12F75E: db $C0, $00, $E0, $00, $FF, $00, $3F, $00
#_12F766: db $83, $80, $4F, $CC, $29, $6C, $1A, $3E
#_12F76E: db $23 ; Byte Fill
#_12F76F: db $FF
#_12F770: db $E0, $27 ; EXT Direct Copy
#_12F772: db $7F, $33, $93, $C1, $E8, $0C, $E4, $06
#_12F77A: db $72, $03, $31, $01, $37, $07, $34, $07
#_12F782: db $3D, $01, $3E, $00, $F3, $F9, $FC, $FE
#_12F78A: db $F8, $F8, $FE, $FF, $0D, $F0, $FB, $01
#_12F792: db $37, $C3, $68, $87, $40, $80, $7F, $80
#_12F79A: db $43 ; Word Fill
#_12F79B: db $00, $FF ; Word Fill
#_12F79D: db $04 ; Direct Copy
#_12F79E: db $06, $0D, $1B, $37, $3F
#_12F7A3: db $22 ; Byte Fill
#_12F7A4: db $00
#_12F7A5: db $19 ; Direct Copy
#_12F7A6: db $EF, $00, $F7, $E0, $FB, $F0, $05, $F8
#_12F7AE: db $00, $00, $FE, $02, $07, $F9, $03, $FC
#_12F7B6: db $D8, $EC, $F6, $FB, $FF, $01, $00, $00
#_12F7BE: db $EB, $0F
#_12F7C0: db $43 ; Word Fill
#_12F7C1: db $E9, $0C ; Word Fill
#_12F7C3: db $05 ; Direct Copy
#_12F7C4: db $75, $06, $3A, $03, $1D, $01
#_12F7CA: db $43 ; Word Fill
#_12F7CB: db $0C, $00 ; Word Fill
#_12F7CD: db $01 ; Direct Copy
#_12F7CE: db $F0, $F3
#_12F7D0: db $83 ; Repeat Fill
#_12F7D1: db $A8, $01 ; Repeat Fill bytes
#_12F7D3: db $1F ; Direct Copy
#_12F7D4: db $FF, $FF, $A1, $BE, $5B, $62, $25, $30
#_12F7DC: db $41, $7C, $A5, $E6, $8F, $8E, $33, $1E
#_12F7E4: db $7F, $1E, $40, $9C, $CE, $82, $18, $70
#_12F7EC: db $E0, $E0, $C6, $45, $C7, $44, $C7, $47
#_12F7F4: db $47 ; Word Fill
#_12F7F5: db $C0, $40 ; Word Fill
#_12F7F7: db $01 ; Direct Copy
#_12F7F8: db $FF, $7F
#_12F7FA: db $22 ; Byte Fill
#_12F7FB: db $38
#_12F7FC: db $23 ; Byte Fill
#_12F7FD: db $3F
#_12F7FE: db $00 ; Direct Copy
#_12F7FF: db $00
#_12F800: db $22 ; Byte Fill
#_12F801: db $FF
#_12F802: db $02 ; Direct Copy
#_12F803: db $00, $FF, $FF
#_12F806: db $27 ; Byte Fill
#_12F807: db $00
#_12F808: db $01 ; Direct Copy
#_12F809: db $FF, $FF
#_12F80B: db $22 ; Byte Fill
#_12F80C: db $00
#_12F80D: db $23 ; Byte Fill
#_12F80E: db $FF
#_12F80F: db $00 ; Direct Copy
#_12F810: db $00
#_12F811: db $22 ; Byte Fill
#_12F812: db $FF
#_12F813: db $45 ; Word Fill
#_12F814: db $7F, $FF ; Word Fill
#_12F816: db $05 ; Direct Copy
#_12F817: db $00, $FF, $70, $8F, $7F, $FF
#_12F81D: db $25 ; Byte Fill
#_12F81E: db $00
#_12F81F: db $02 ; Direct Copy
#_12F820: db $7F, $7F, $70
#_12F823: db $28 ; Byte Fill
#_12F824: db $FF
#_12F825: db $02 ; Direct Copy
#_12F826: db $00, $FF, $00
#_12F829: db $22 ; Byte Fill
#_12F82A: db $FF
#_12F82B: db $25 ; Byte Fill
#_12F82C: db $00
#_12F82D: db $E0, $42 ; EXT Direct Copy
#_12F82F: db $FF, $FF, $00, $C2, $64, $E7, $7D, $FF
#_12F837: db $3C, $FF, $18, $FF, $00, $DD, $22, $A1
#_12F83F: db $66, $C5, $46, $7D, $7C, $7C, $7E, $3C
#_12F847: db $00, $18, $38, $AA, $72, $A7, $79, $EA
#_12F84F: db $7D, $50, $DE, $5E, $FE, $B5, $6D, $8B
#_12F857: db $41, $CF, $05, $05, $08, $0C, $21, $01
#_12F85F: db $02, $34, $30, $56, $DE, $5A, $DE, $58
#_12F867: db $DE, $59, $DE, $01, $FF, $7D, $FF, $7A
#_12F86F: db $83, $7D, $81
#_12F872: db $22 ; Byte Fill
#_12F873: db $21
#_12F874: db $11 ; Direct Copy
#_12F875: db $20, $01, $01, $7C, $7E, $31, $1F, $41
#_12F87D: db $3E, $83, $7C, $06, $F9, $7C, $83, $F8
#_12F885: db $87, $00
#_12F887: db $22 ; Byte Fill
#_12F888: db $FF
#_12F889: db $05 ; Direct Copy
#_12F88A: db $DF, $BF, $7F, $FF, $FE, $FC
#_12F890: db $39 ; Byte Fill
#_12F891: db $00
#_12F892: db $E0, $6F ; EXT Direct Copy
#_12F894: db $7C, $B1, $6E, $AF, $3A, $E3, $50, $C1
#_12F89C: db $B0, $81, $C0, $C1, $30, $F1, $D8, $F9
#_12F8A4: db $8E, $90, $9C, $3E, $7E, $3E, $0E, $06
#_12F8AC: db $88, $9E, $55, $CF, $A4, $ED, $93, $F9
#_12F8B4: db $86, $D0, $C2, $98, $4D, $A0, $ED, $8A
#_12F8BC: db $61, $30, $12, $06, $2F, $27, $13, $11
#_12F8C4: db $BD, $FF, $47, $78, $21, $32, $50, $9C
#_12F8CC: db $83, $F5, $6B, $E0, $1C, $C1, $53, $70
#_12F8D4: db $00, $80, $CC, $63, $08, $1C, $3E, $8F
#_12F8DC: db $81, $FF, $BE, $D1, $D9, $E8, $EC, $F4
#_12F8E4: db $E5, $FB, $EA, $FD, $1B, $FC, $F6, $F8
#_12F8EC: db $00, $0E, $07, $03, $00, $00, $01, $03
#_12F8F4: db $FD, $80, $DB, $E0, $37, $C3, $EF, $87
#_12F8FC: db $D0, $0F, $80, $00, $3F, $00, $DF, $00
#_12F904: db $83 ; Repeat Fill
#_12F905: db $C0, $01 ; Repeat Fill bytes
#_12F907: db $E0, $42 ; EXT Direct Copy
#_12F909: db $EF, $FF, $E0, $30, $FF, $00, $FE, $FF
#_12F911: db $7F, $7F, $BF, $BF, $FF, $80, $00, $80
#_12F919: db $5E, $1E, $A1, $39, $00, $00, $80, $40
#_12F921: db $00, $7F, $E1, $C6, $D8, $FC, $5C, $7E
#_12F929: db $4E, $7F, $A6, $3F, $D2, $1F, $69, $8F
#_12F931: db $33, $82, $19, $80, $1B, $9D, $9E, $CE
#_12F939: db $E6, $70, $7D, $7F, $8F, $70, $A8, $57
#_12F941: db $AF, $50, $A8, $57, $8F, $70, $8F, $77
#_12F949: db $88, $77, $FF
#_12F94C: db $28 ; Byte Fill
#_12F94D: db $00
#_12F94E: db $8E ; Repeat Fill
#_12F94F: db $90, $03 ; Repeat Fill bytes
#_12F951: db $28 ; Byte Fill
#_12F952: db $00
#_12F953: db $85 ; Repeat Fill
#_12F954: db $4A, $02 ; Repeat Fill bytes
#_12F956: db $85 ; Repeat Fill
#_12F957: db $4A, $02 ; Repeat Fill bytes
#_12F959: db $02 ; Direct Copy
#_12F95A: db $FF, $70, $8F
#_12F95D: db $22 ; Byte Fill
#_12F95E: db $7F
#_12F95F: db $07 ; Direct Copy
#_12F960: db $70, $7F, $7F, $70, $7F, $7F, $FF, $00
#_12F968: db $22 ; Byte Fill
#_12F969: db $FF
#_12F96A: db $02 ; Direct Copy
#_12F96B: db $00, $FF, $00
#_12F96E: db $22 ; Byte Fill
#_12F96F: db $FF
#_12F970: db $02 ; Direct Copy
#_12F971: db $00, $FF, $00
#_12F974: db $23 ; Byte Fill
#_12F975: db $FF
#_12F976: db $83 ; Repeat Fill
#_12F977: db $2B, $02 ; Repeat Fill bytes
#_12F979: db $E0, $61 ; EXT Direct Copy
#_12F97B: db $FF, $FF, $CD, $4E, $D1, $5E, $E5, $66
#_12F983: db $A5, $66, $9D, $7F, $C8, $3C, $A5, $5D
#_12F98B: db $BB, $47, $30, $20, $18, $18, $00, $03
#_12F993: db $02, $00, $EB, $27, $FF, $18, $FE, $00
#_12F99B: db $FC, $01, $78, $83, $F7, $C0, $63, $CC
#_12F9A3: db $41, $9E, $90, $C0, $C1, $4B, $17, $0F
#_12F9AB: db $1F, $3F, $DB, $5F, $CA, $6E, $A9, $7D
#_12F9B3: db $F4, $7C, $F5, $7C, $D6, $5C, $C7, $6D
#_12F9BB: db $25, $FD, $20, $11, $02, $03, $03, $23
#_12F9C3: db $12, $02, $E2, $26, $CB, $CB, $71, $11
#_12F9CB: db $FF, $FF, $40, $40, $BF, $80, $40, $00
#_12F9D3: db $9F, $00, $D9, $34, $EE, $00, $BF, $7F
#_12F9DB: db $FF, $E0
#_12F9DD: db $37 ; Byte Fill
#_12F9DE: db $00
#_12F9DF: db $E0, $27 ; EXT Direct Copy
#_12F9E1: db $3B, $42, $83, $3A, $42, $03, $BE, $83
#_12F9E9: db $9E, $83, $6E, $63, $BE, $3F, $E0, $21
#_12F9F1: db $84, $C4, $FC, $7C, $7C, $9C, $C0, $1E
#_12F9F9: db $D7, $18, $D3, $5C, $D9, $5E, $EF, $6F
#_12FA01: db $B0, $70, $DF, $3F, $60, $9F, $3F, $C0
#_12FA09: db $22 ; Byte Fill
#_12FA0A: db $20
#_12FA0B: db $01 ; Direct Copy
#_12FA0C: db $10, $0F
#_12FA0E: db $22 ; Byte Fill
#_12FA0F: db $00
#_12FA10: db $13 ; Direct Copy
#_12FA11: db $FC, $03, $F6, $79, $1B, $1C, $ED, $EE
#_12FA19: db $35, $F6, $95, $76, $D5, $36, $F5, $16
#_12FA21: db $00, $00, $E0, $10
#_12FA25: db $23 ; Byte Fill
#_12FA26: db $08
#_12FA27: db $01 ; Direct Copy
#_12FA28: db $FF, $FF
#_12FA2A: db $22 ; Byte Fill
#_12FA2B: db $00
#_12FA2C: db $84 ; Repeat Fill
#_12FA2D: db $29, $02 ; Repeat Fill bytes
#_12FA2F: db $22 ; Byte Fill
#_12FA30: db $00
#_12FA31: db $83 ; Repeat Fill
#_12FA32: db $B6, $00 ; Repeat Fill bytes
#_12FA34: db $00 ; Direct Copy
#_12FA35: db $FF
#_12FA36: db $22 ; Byte Fill
#_12FA37: db $00
#_12FA38: db $13 ; Direct Copy
#_12FA39: db $FF, $00, $00, $7E, $81, $C3, $7E, $A5
#_12FA41: db $7E, $A3, $7E, $89, $7E, $A1, $7E, $C3
#_12FA49: db $7E, $7E, $81, $00
#_12FA4D: db $25 ; Byte Fill
#_12FA4E: db $7E
#_12FA4F: db $E4, $30 ; EXT Byte Fill
#_12FA51: db $00
#_12FA52: db $06 ; Direct Copy
#_12FA53: db $FF, $FF, $FC, $FF, $F0, $FF, $E0
#_12FA5A: db $44 ; Word Fill
#_12FA5B: db $FF, $C0 ; Word Fill
#_12FA5D: db $02 ; Direct Copy
#_12FA5E: db $81, $FF, $83
#_12FA61: db $28 ; Byte Fill
#_12FA62: db $FF
#_12FA63: db $08 ; Direct Copy
#_12FA64: db $80, $FF, $01, $FF, $07, $FF, $1F, $FF
#_12FA6C: db $7F
#_12FA6D: db $2E ; Byte Fill
#_12FA6E: db $FF
#_12FA6F: db $00 ; Direct Copy
#_12FA70: db $87
#_12FA71: db $44 ; Word Fill
#_12FA72: db $FF, $0F ; Word Fill
#_12FA74: db $43 ; Word Fill
#_12FA75: db $1F, $FF ; Word Fill
#_12FA77: db $43 ; Word Fill
#_12FA78: db $3F, $FF ; Word Fill
#_12FA7A: db $00 ; Direct Copy
#_12FA7B: db $7F
#_12FA7C: db $2C ; Byte Fill
#_12FA7D: db $FF
#_12FA7E: db $43 ; Word Fill
#_12FA7F: db $FE, $FF ; Word Fill
#_12FA81: db $06 ; Direct Copy
#_12FA82: db $FC, $FF, $F8, $FF, $F0, $FF, $C0
#_12FA89: db $28 ; Byte Fill
#_12FA8A: db $FF
#_12FA8B: db $11 ; Direct Copy
#_12FA8C: db $FD, $43, $FB, $44, $D2, $6D, $D4, $6B
#_12FA94: db $DC, $6B, $EF, $70, $87, $07, $FF, $00
#_12FA9C: db $00, $0C
#_12FA9E: db $22 ; Byte Fill
#_12FA9F: db $0F
#_12FAA0: db $06 ; Direct Copy
#_12FAA1: db $00, $78, $00, $FF, $C0, $FF, $00
#_12FAA8: db $43 ; Word Fill
#_12FAA9: db $7F, $C0 ; Word Fill
#_12FAAB: db $03 ; Direct Copy
#_12FAAC: db $F0, $8F, $E7, $1F
#_12FAB0: db $22 ; Byte Fill
#_12FAB1: db $FF
#_12FAB2: db $05 ; Direct Copy
#_12FAB3: db $00, $00, $13, $F0, $E0, $C0
#_12FAB9: db $22 ; Byte Fill
#_12FABA: db $00
#_12FABB: db $0F ; Direct Copy
#_12FABC: db $FF, $00, $BF, $7F, $E3, $7C, $C2, $7C
#_12FAC4: db $FF, $00, $8D, $72, $F5, $7A, $F8, $7E
#_12FACC: db $22 ; Byte Fill
#_12FACD: db $00
#_12FACE: db $24 ; Byte Fill
#_12FACF: db $01
#_12FAD0: db $83 ; Repeat Fill
#_12FAD1: db $E6, $00 ; Repeat Fill bytes
#_12FAD3: db $0B ; Direct Copy
#_12FAD4: db $80, $7F, $47, $B8, $3C, $43, $53, $6F
#_12FADC: db $AA, $3E, $9A, $1E
#_12FAE0: db $23 ; Byte Fill
#_12FAE1: db $00
#_12FAE2: db $03 ; Direct Copy
#_12FAE3: db $80, $80, $C1, $E1
#_12FAE7: db $37 ; Byte Fill
#_12FAE8: db $00
#_12FAE9: db $0F ; Direct Copy
#_12FAEA: db $FF, $00, $FD, $FE, $07, $FE, $FB, $06
#_12FAF2: db $05, $FA, $8B, $8C, $85, $F6, $FB, $82
#_12FAFA: db $24 ; Byte Fill
#_12FAFB: db $00
#_12FAFC: db $02 ; Direct Copy
#_12FAFD: db $70, $08, $04
#_12FB00: db $FF ; End of GFX 2A

;===================================================================================================

GFX_2B:
#_12FB01: db $0F ; Direct Copy
#_12FB02: db $9D, $66, $DA, $3D, $EC, $1B, $C5, $36
#_12FB0A: db $C3, $72, $B0, $D4, $68, $8F, $EF, $08
#_12FB12: db $22 ; Byte Fill
#_12FB13: db $00
#_12FB14: db $14 ; Direct Copy
#_12FB15: db $08, $0C, $0B, $10, $10, $39, $C6, $73
#_12FB1D: db $8C, $A7, $D8, $D3, $6C, $6D, $B6, $DA
#_12FB25: db $B7, $77, $5A, $3E, $93
#_12FB2A: db $25 ; Byte Fill
#_12FB2B: db $00
#_12FB2C: db $01 ; Direct Copy
#_12FB2D: db $80, $40
#_12FB2F: db $47 ; Word Fill
#_12FB30: db $C0, $00 ; Word Fill
#_12FB32: db $01 ; Direct Copy
#_12FB33: db $FF, $00
#_12FB35: db $43 ; Word Fill
#_12FB36: db $C0, $7F ; Word Fill
#_12FB38: db $01 ; Direct Copy
#_12FB39: db $FF, $00
#_12FB3B: db $24 ; Byte Fill
#_12FB3C: db $7F
#_12FB3D: db $22 ; Byte Fill
#_12FB3E: db $00
#_12FB3F: db $0B ; Direct Copy
#_12FB40: db $EF, $08, $DB, $13, $A7, $34, $A7, $30
#_12FB48: db $A6, $32, $A7, $33
#_12FB4C: db $43 ; Word Fill
#_12FB4D: db $A6, $32 ; Word Fill
#_12FB4F: db $02 ; Direct Copy
#_12FB50: db $F7, $EC, $C8
#_12FB53: db $43 ; Word Fill
#_12FB54: db $C8, $C9 ; Word Fill
#_12FB56: db $08 ; Direct Copy
#_12FB57: db $C9, $FF, $00, $E3, $1C, $C1, $3E, $BD
#_12FB5F: db $72
#_12FB60: db $43 ; Word Fill
#_12FB61: db $AE, $61 ; Word Fill
#_12FB63: db $03 ; Direct Copy
#_12FB64: db $A7, $60, $93, $70
#_12FB68: db $23 ; Byte Fill
#_12FB69: db $00
#_12FB6A: db $1F ; Direct Copy
#_12FB6B: db $10, $10, $18, $0C, $FE, $7F, $FD, $BF
#_12FB73: db $FB, $DF, $F7, $EF, $EF, $F7, $DF, $FB
#_12FB7B: db $BF, $FD, $7F, $FE, $FE, $FD, $FB, $F7
#_12FB83: db $EF, $DF, $BF, $7F, $11, $EE, $2E, $FF
#_12FB8B: db $43 ; Word Fill
#_12FB8C: db $51, $D1 ; Word Fill
#_12FB8E: db $E0, $5B ; EXT Direct Copy
#_12FB90: db $5D, $DD, $55, $D5, $53, $D3, $57, $D6
#_12FB98: db $00, $00, $2E, $2E, $22, $2A, $2C, $29
#_12FBA0: db $57, $D6, $53, $D3, $55, $D5, $5D, $DD
#_12FBA8: db $51, $C1, $4F, $C0, $61, $E1, $00, $FF
#_12FBB0: db $29, $2C, $2A, $22, $3E, $3F, $1E, $00
#_12FBB8: db $FF, $00, $80, $7F, $98, $60, $97, $67
#_12FBC0: db $88, $68, $88, $6A, $88, $68, $87, $67
#_12FBC8: db $00, $00, $1F, $18, $17, $15, $17, $18
#_12FBD0: db $FF, $00, $00, $FF, $03, $03, $10, $1F
#_12FBD8: db $E7, $F8, $88, $B7, $93, $EF, $26, $5E
#_12FBE0: db $00, $00, $FC, $E0, $00, $40, $00, $81
#_12FBE8: db $80, $7F, $FF, $00
#_12FBEC: db $43 ; Word Fill
#_12FBED: db $80, $7F ; Word Fill
#_12FBEF: db $01 ; Direct Copy
#_12FBF0: db $FF, $00
#_12FBF2: db $43 ; Word Fill
#_12FBF3: db $80, $7F ; Word Fill
#_12FBF5: db $00 ; Direct Copy
#_12FBF6: db $FF
#_12FBF7: db $43 ; Word Fill
#_12FBF8: db $00, $7F ; Word Fill
#_12FBFA: db $05 ; Direct Copy
#_12FBFB: db $7F, $00, $7F, $7F, $00, $FF
#_12FC01: db $83 ; Repeat Fill
#_12FC02: db $D8, $00 ; Repeat Fill bytes
#_12FC04: db $07 ; Direct Copy
#_12FC05: db $00, $2E, $FF, $20, $FE, $0D, $FF, $26
#_12FC0D: db $85 ; Repeat Fill
#_12FC0E: db $08, $01 ; Repeat Fill bytes
#_12FC10: db $04 ; Direct Copy
#_12FC11: db $80, $81, $80, $80, $00
#_12FC16: db $27 ; Byte Fill
#_12FC17: db $FF
#_12FC18: db $07 ; Direct Copy
#_12FC19: db $FE, $FF, $FC, $FF, $F8, $FF, $F1, $FE
#_12FC21: db $24 ; Byte Fill
#_12FC22: db $FF
#_12FC23: db $12 ; Direct Copy
#_12FC24: db $FE, $FC, $F8, $6F, $9C, $35, $CE, $5B
#_12FC2C: db $E4, $7E, $E1, $BD, $73, $C7, $21, $E9
#_12FC34: db $1B, $7D, $83
#_12FC37: db $23 ; Byte Fill
#_12FC38: db $00
#_12FC39: db $E0, $43 ; EXT Direct Copy
#_12FC3B: db $01, $19, $05, $01, $81, $60, $42, $EC
#_12FC43: db $80, $EF, $00, $ED, $00, $DE, $00, $AF
#_12FC4B: db $00, $77, $03, $FF, $1E, $11, $14, $36
#_12FC53: db $73, $55, $8A, $27, $DB, $6C, $9F, $64
#_12FC5B: db $2D, $53, $4C, $B4, $08, $FB, $10, $7F
#_12FC63: db $3C, $FF, $FE, $FF, $08, $04, $80, $13
#_12FC6B: db $34, $B9, $7F, $FF, $F7, $38, $4E, $B1
#_12FC73: db $76, $99, $AE, $D9, $EB, $1C, $F7, $08
#_12FC7B: db $3C, $C3, $1D, $E3
#_12FC7F: db $24 ; Byte Fill
#_12FC80: db $00
#_12FC81: db $02 ; Direct Copy
#_12FC82: db $03, $07, $03
#_12FC85: db $43 ; Word Fill
#_12FC86: db $B3, $4C ; Word Fill
#_12FC88: db $0B ; Direct Copy
#_12FC89: db $9F, $60, $C8, $37, $25, $DB, $2C, $DB
#_12FC91: db $F7, $10, $EF, $08
#_12FC95: db $25 ; Byte Fill
#_12FC96: db $00
#_12FC97: db $10 ; Direct Copy
#_12FC98: db $08, $10, $FF, $00, $FF, $FF, $7E, $81
#_12FCA0: db $81, $00, $7E, $7E, $C3, $FF, $04, $E3
#_12FCA8: db $FF
#_12FCA9: db $83 ; Repeat Fill
#_12FCAA: db $D7, $00 ; Repeat Fill bytes
#_12FCAC: db $03 ; Direct Copy
#_12FCAD: db $7E, $81, $00, $18
#_12FCB1: db $48 ; Word Fill
#_12FCB2: db $00, $C0 ; Word Fill
#_12FCB4: db $01 ; Direct Copy
#_12FCB5: db $FF, $00
#_12FCB7: db $43 ; Word Fill
#_12FCB8: db $C0, $7F ; Word Fill
#_12FCBA: db $01 ; Direct Copy
#_12FCBB: db $CF, $70
#_12FCBD: db $24 ; Byte Fill
#_12FCBE: db $7F
#_12FCBF: db $22 ; Byte Fill
#_12FCC0: db $00
#_12FCC1: db $0F ; Direct Copy
#_12FCC2: db $0E, $F1, $1C, $E3, $1B, $E5, $B5, $6F
#_12FCCA: db $79, $EB, $70, $CB, $79, $C7, $BE, $42
#_12FCD2: db $23 ; Byte Fill
#_12FCD3: db $00
#_12FCD4: db $05 ; Direct Copy
#_12FCD5: db $04, $04, $00, $01, $CB, $26
#_12FCDB: db $47 ; Word Fill
#_12FCDC: db $CE, $25 ; Word Fill
#_12FCDE: db $06 ; Direct Copy
#_12FCDF: db $FE, $55, $BF, $24, $9A, $17, $10
#_12FCE6: db $23 ; Byte Fill
#_12FCE7: db $12
#_12FCE8: db $02 ; Direct Copy
#_12FCE9: db $02, $42, $60
#_12FCEC: db $43 ; Word Fill
#_12FCED: db $FF, $00 ; Word Fill
#_12FCEF: db $1F ; Direct Copy
#_12FCF0: db $FD, $02, $FA, $05, $F7, $08, $FB, $05
#_12FCF8: db $FB, $04, $FD, $02, $00, $00, $02, $07
#_12FD00: db $0F, $07, $07, $03, $FF, $00, $DF, $20
#_12FD08: db $FB, $04, $6F, $B0, $FD, $66, $FE, $7F
#_12FD10: db $23 ; Byte Fill
#_12FD11: db $FF
#_12FD12: db $04 ; Direct Copy
#_12FD13: db $00, $20, $24, $F4, $FE
#_12FD18: db $22 ; Byte Fill
#_12FD19: db $FF
#_12FD1A: db $1E ; Direct Copy
#_12FD1B: db $FC, $03, $EE, $11, $A7, $58, $97, $68
#_12FD23: db $B7, $48, $7B, $94, $FD, $7A, $FD, $FA
#_12FD2B: db $03, $11, $58, $78, $78, $FC, $FE, $FE
#_12FD33: db $00, $3F, $1F, $40, $6F, $C0, $6F
#_12FD3A: db $46 ; Word Fill
#_12FD3B: db $D0, $6C ; Word Fill
#_12FD3D: db $04 ; Direct Copy
#_12FD3E: db $6F, $D0, $C0, $BF, $30
#_12FD43: db $24 ; Byte Fill
#_12FD44: db $27
#_12FD45: db $43 ; Word Fill
#_12FD46: db $80, $7F ; Word Fill
#_12FD48: db $83 ; Repeat Fill
#_12FD49: db $C0, $00 ; Repeat Fill bytes
#_12FD4B: db $00 ; Direct Copy
#_12FD4C: db $FF
#_12FD4D: db $44 ; Word Fill
#_12FD4E: db $7F, $80 ; Word Fill
#_12FD50: db $00 ; Direct Copy
#_12FD51: db $FF
#_12FD52: db $22 ; Byte Fill
#_12FD53: db $7F
#_12FD54: db $05 ; Direct Copy
#_12FD55: db $00, $7F, $00, $00, $7F, $00
#_12FD5B: db $43 ; Word Fill
#_12FD5C: db $80, $7F ; Word Fill
#_12FD5E: db $83 ; Repeat Fill
#_12FD5F: db $78, $02 ; Repeat Fill bytes
#_12FD61: db $47 ; Word Fill
#_12FD62: db $FF, $00 ; Word Fill
#_12FD64: db $01 ; Direct Copy
#_12FD65: db $00, $7F
#_12FD67: db $25 ; Byte Fill
#_12FD68: db $00
#_12FD69: db $00 ; Direct Copy
#_12FD6A: db $EE
#_12FD6B: db $22 ; Byte Fill
#_12FD6C: db $CC
#_12FD6D: db $00 ; Direct Copy
#_12FD6E: db $BB
#_12FD6F: db $22 ; Byte Fill
#_12FD70: db $33
#_12FD71: db $00 ; Direct Copy
#_12FD72: db $EE
#_12FD73: db $22 ; Byte Fill
#_12FD74: db $CC
#_12FD75: db $00 ; Direct Copy
#_12FD76: db $BB
#_12FD77: db $24 ; Byte Fill
#_12FD78: db $33
#_12FD79: db $01 ; Direct Copy
#_12FD7A: db $CC, $CC
#_12FD7C: db $83 ; Repeat Fill
#_12FD7D: db $B0, $02 ; Repeat Fill bytes
#_12FD7F: db $47 ; Word Fill
#_12FD80: db $FF, $00 ; Word Fill
#_12FD82: db $45 ; Word Fill
#_12FD83: db $80, $7F ; Word Fill
#_12FD85: db $00 ; Direct Copy
#_12FD86: db $FF
#_12FD87: db $26 ; Byte Fill
#_12FD88: db $00
#_12FD89: db $01 ; Direct Copy
#_12FD8A: db $7F, $00
#_12FD8C: db $27 ; Byte Fill
#_12FD8D: db $FF
#_12FD8E: db $07 ; Direct Copy
#_12FD8F: db $C7, $FF, $0B, $E7, $2C, $C3, $DC, $33
#_12FD97: db $24 ; Byte Fill
#_12FD98: db $FF
#_12FD99: db $12 ; Direct Copy
#_12FD9A: db $D7, $13, $01, $FF, $FF, $FB, $FF, $31
#_12FDA2: db $FB, $11, $FB, $25, $BF, $8E, $57, $78
#_12FDAA: db $B7, $FD, $12
#_12FDAD: db $22 ; Byte Fill
#_12FDAE: db $FF
#_12FDAF: db $0B ; Direct Copy
#_12FDB0: db $75, $51, $20, $00, $00, $E7, $FE, $E7
#_12FDB8: db $3E, $E7, $BE, $67
#_12FDBC: db $44 ; Word Fill
#_12FDBD: db $3E, $E7 ; Word Fill
#_12FDBF: db $43 ; Word Fill
#_12FDC0: db $67, $BE ; Word Fill
#_12FDC2: db $22 ; Byte Fill
#_12FDC3: db $18
#_12FDC4: db $E0, $20 ; EXT Direct Copy
#_12FDC6: db $98, $18, $18, $98, $98, $E5, $FF, $E7
#_12FDCE: db $3F, $E7, $BF, $65, $3D, $E6, $3E, $E7
#_12FDD6: db $3F, $67, $BF, $66, $BF, $1A, $18, $18
#_12FDDE: db $9A, $19, $18, $98, $99, $D1, $72, $89
#_12FDE6: db $6A
#_12FDE7: db $43 ; Word Fill
#_12FDE8: db $D9, $3A ; Word Fill
#_12FDEA: db $43 ; Word Fill
#_12FDEB: db $D8, $3B ; Word Fill
#_12FDED: db $05 ; Direct Copy
#_12FDEE: db $DA, $3B, $4D, $BD, $0C, $14
#_12FDF4: db $24 ; Byte Fill
#_12FDF5: db $04
#_12FDF6: db $15 ; Direct Copy
#_12FDF7: db $02, $A1, $6C, $2E, $E8, $27, $E5, $94
#_12FDFF: db $70, $D7, $2C, $6D, $93, $33, $CC, $1C
#_12FE07: db $E3, $13, $11, $18, $0F, $03
#_12FE0D: db $22 ; Byte Fill
#_12FE0E: db $00
#_12FE0F: db $11 ; Direct Copy
#_12FE10: db $7E, $00, $2F, $91, $7B, $C4, $79, $C6
#_12FE18: db $6C, $D3, $76, $C9, $7B, $C4, $B9, $46
#_12FE20: db $81, $40
#_12FE22: db $25 ; Byte Fill
#_12FE23: db $00
#_12FE24: db $83 ; Repeat Fill
#_12FE25: db $BE, $01 ; Repeat Fill bytes
#_12FE27: db $08 ; Direct Copy
#_12FE28: db $DF, $20, $FB, $24, $2F, $F4, $FD, $FE
#_12FE30: db $FE
#_12FE31: db $22 ; Byte Fill
#_12FE32: db $FF
#_12FE33: db $00 ; Direct Copy
#_12FE34: db $00
#_12FE35: db $86 ; Repeat Fill
#_12FE36: db $38, $02 ; Repeat Fill bytes
#_12FE38: db $17 ; Direct Copy
#_12FE39: db $DF, $20, $E6, $19, $EB, $1C, $EF, $15
#_12FE41: db $F7, $0B, $FB, $05, $D7, $2B, $DF, $27
#_12FE49: db $20, $19, $1D, $1F, $0F, $07, $2F, $3F
#_12FE51: db $83 ; Repeat Fill
#_12FE52: db $26, $01 ; Repeat Fill bytes
#_12FE54: db $07 ; Direct Copy
#_12FE55: db $FD, $FE, $6F, $F4, $FB, $64, $9F, $60
#_12FE5D: db $44 ; Word Fill
#_12FE5E: db $FF, $00 ; Word Fill
#_12FE60: db $0E ; Direct Copy
#_12FE61: db $FF, $FE, $F4, $64, $60, $00, $00, $FD
#_12FE69: db $FE, $BB, $7C, $DB, $3C, $EF, $10
#_12FE70: db $47 ; Word Fill
#_12FE71: db $FF, $00 ; Word Fill
#_12FE73: db $03 ; Direct Copy
#_12FE74: db $FE, $7C, $3C, $10
#_12FE78: db $23 ; Byte Fill
#_12FE79: db $00
#_12FE7A: db $1B ; Direct Copy
#_12FE7B: db $EF, $10, $E8, $F0, $FF, $07, $F8, $07
#_12FE83: db $0F, $00, $F0, $F0, $1F, $FF, $FF, $00
#_12FE8B: db $E7, $07, $00, $00, $F0, $0F, $00, $00
#_12FE93: db $68, $A8, $69, $A9
#_12FE97: db $43 ; Word Fill
#_12FE98: db $6B, $AB ; Word Fill
#_12FE9A: db $01 ; Direct Copy
#_12FE9B: db $69, $A9
#_12FE9D: db $45 ; Word Fill
#_12FE9E: db $68, $A8 ; Word Fill
#_12FEA0: db $04 ; Direct Copy
#_12FEA1: db $57, $56, $54, $54, $56
#_12FEA6: db $22 ; Byte Fill
#_12FEA7: db $57
#_12FEA8: db $17 ; Direct Copy
#_12FEA9: db $68, $A8, $58, $98, $44, $84, $43, $83
#_12FEB1: db $3F, $80, $C0, $40, $FF, $7F, $FF, $00
#_12FEB9: db $57, $67, $7B, $7C, $7F, $3F, $00, $00
#_12FEC1: db $22 ; Byte Fill
#_12FEC2: db $FF
#_12FEC3: db $0C ; Direct Copy
#_12FEC4: db $AF, $FF, $CB, $FF, $8B, $FF, $F3, $FF
#_12FECC: db $C2, $FF, $FE, $FF, $F8
#_12FED1: db $27 ; Byte Fill
#_12FED2: db $FF
#_12FED3: db $1C ; Direct Copy
#_12FED4: db $3F, $FF, $B3, $B3, $E3, $E3, $E6, $E6
#_12FEDC: db $3D, $3F, $19, $19, $99, $99, $FF, $FF
#_12FEE4: db $3F, $B3, $E3, $E6, $3D, $19, $99, $FF
#_12FEEC: db $3F, $FF, $BF, $BF, $F7
#_12FEF1: db $22 ; Byte Fill
#_12FEF2: db $FF
#_12FEF3: db $E0, $27 ; EXT Direct Copy
#_12FEF5: db $FD, $FF, $F9, $FF, $BF, $FF, $FB, $FB
#_12FEFD: db $3F, $BF, $F7, $FF, $FD, $F9, $BF, $FB
#_12FF05: db $97, $EC, $A9, $DE, $67, $E0, $8B, $F8
#_12FF0D: db $CF, $F7, $CB, $FC, $A5, $FE, $AF, $C2
#_12FF15: db $80, $C0, $98, $E4, $E0, $E0, $C0, $D0
#_12FF1D: db $22 ; Byte Fill
#_12FF1E: db $FF
#_12FF1F: db $08 ; Direct Copy
#_12FF20: db $4E, $FF, $04, $3C, $C3, $10, $EF, $86
#_12FF28: db $79
#_12FF29: db $83 ; Repeat Fill
#_12FF2A: db $C6, $03 ; Repeat Fill bytes
#_12FF2C: db $24 ; Byte Fill
#_12FF2D: db $FF
#_12FF2E: db $12 ; Direct Copy
#_12FF2F: db $79, $10, $00, $FF, $FC, $FF, $38, $FF
#_12FF37: db $10, $7C, $83, $10, $EF, $07, $F8, $6F
#_12FF3F: db $90, $FF, $00
#_12FF42: db $24 ; Byte Fill
#_12FF43: db $FF
#_12FF44: db $14 ; Direct Copy
#_12FF45: db $F8, $90, $00, $E6, $1E, $72, $8E, $39
#_12FF4D: db $C7, $9C, $63, $CC, $33, $EE, $11, $9D
#_12FF55: db $63, $0C, $F3, $01, $01
#_12FF5A: db $25 ; Byte Fill
#_12FF5B: db $00
#_12FF5C: db $0F ; Direct Copy
#_12FF5D: db $8F, $F0, $89, $F6, $09, $F6, $0B, $F4
#_12FF65: db $0E, $F1, $2C, $F3, $CE, $F1, $5F, $E0
#_12FF6D: db $27 ; Byte Fill
#_12FF6E: db $00
#_12FF6F: db $09 ; Direct Copy
#_12FF70: db $BE, $43, $9D, $63, $DE, $21, $EB, $14
#_12FF78: db $F9, $06
#_12FF7A: db $43 ; Word Fill
#_12FF7B: db $FD, $02 ; Word Fill
#_12FF7D: db $01 ; Direct Copy
#_12FF7E: db $D5, $2A
#_12FF80: db $27 ; Byte Fill
#_12FF81: db $00
#_12FF82: db $11 ; Direct Copy
#_12FF83: db $EF, $18, $E7, $18, $F7, $08, $7E, $83
#_12FF8B: db $7D, $C3, $BE, $C1, $77, $98, $DB, $3C
#_12FF93: db $08, $08
#_12FF95: db $25 ; Byte Fill
#_12FF96: db $00
#_12FF97: db $17 ; Direct Copy
#_12FF98: db $F7, $0B, $EA, $17, $F4, $0B, $FD, $02
#_12FFA0: db $EF, $15, $FB, $05, $FD, $02, $FE, $01
#_12FFA8: db $0F, $1F, $0B, $03, $1F, $07, $03, $01
#_12FFB0: db $97 ; Repeat Fill
#_12FFB1: db $78, $00 ; Repeat Fill bytes
#_12FFB3: db $85 ; Repeat Fill
#_12FFB4: db $CA, $00 ; Repeat Fill bytes
#_12FFB6: db $E0, $29 ; EXT Direct Copy
#_12FFB8: db $90, $60, $9C, $60, $8B, $4F, $9B, $1F
#_12FFC0: db $FF, $00, $15, $17, $18, $1F, $1F, $30
#_12FFC8: db $60, $00, $9A, $96, $FD, $F4, $07, $00
#_12FFD0: db $70, $03, $AC, $70, $AF, $DF, $DE, $AF
#_12FFD8: db $FF, $00, $61, $02, $F8, $FC, $8F, $21
#_12FFE0: db $06, $00
#_12FFE2: db $43 ; Word Fill
#_12FFE3: db $FF, $40 ; Word Fill
#_12FFE5: db $0B ; Direct Copy
#_12FFE6: db $EA, $55, $98, $37, $B5, $3F, $EA, $2A
#_12FFEE: db $E8, $28, $68, $A8
#_12FFF2: db $22 ; Byte Fill
#_12FFF3: db $00
#_12FFF4: db $04 ; Direct Copy
#_12FFF5: db $40, $40, $55, $57, $57
#_12FFFA: db $45 ; Word Fill
#_12FFFB: db $80, $7F ; Word Fill
#_12FFFD: db $01 ; Direct Copy
#_12FFFE: db $FF, $00

;===================================================================================================

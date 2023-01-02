org $0C8000

;===================================================================================================

OverworldMap32_Screen62_High:
#_0C8000: db $01 ; Direct Copy
#_0C8001: db $0B, $04
#_0C8003: db $2A ; Byte Fill
#_0C8004: db $00
#_0C8005: db $04 ; Direct Copy
#_0C8006: db $0B, $05, $06, $0B, $06
#_0C800B: db $22 ; Byte Fill
#_0C800C: db $00
#_0C800D: db $07 ; Direct Copy
#_0C800E: db $0B, $01, $06, $06, $01, $00, $00, $01
#_0C8016: db $83 ; Repeat Fill
#_0C8017: db $00, $0D ; Repeat Fill bytes
#_0C8019: db $03 ; Direct Copy
#_0C801A: db $01, $01, $00, $01
#_0C801E: db $23 ; Byte Fill
#_0C801F: db $19
#_0C8020: db $23 ; Byte Fill
#_0C8021: db $01
#_0C8022: db $03 ; Direct Copy
#_0C8023: db $05, $05, $07, $0B
#_0C8027: db $43 ; Word Fill
#_0C8028: db $00, $01 ;  Word Fill
#_0C802A: db $0F ; Direct Copy
#_0C802B: db $15, $19, $19, $0D, $00, $00, $06, $01
#_0C8033: db $05, $05, $06, $04, $03, $0B, $07, $0B
#_0C803B: db $22 ; Byte Fill
#_0C803C: db $19
#_0C803D: db $02 ; Direct Copy
#_0C803E: db $0B, $16, $03
#_0C8041: db $22 ; Byte Fill
#_0C8042: db $02
#_0C8043: db $22 ; Byte Fill
#_0C8044: db $05
#_0C8045: db $25 ; Byte Fill
#_0C8046: db $0B
#_0C8047: db $1E ; Direct Copy
#_0C8048: db $19, $05, $01, $01, $02, $0B, $01, $05
#_0C8050: db $07, $0B, $0B, $00, $00, $0B, $03, $10
#_0C8058: db $10, $19, $01, $01, $02, $05, $07, $07
#_0C8060: db $0B, $0B, $09, $01, $01, $0B, $0B
#_0C8067: db $83 ; Repeat Fill
#_0C8068: db $00, $27 ; Repeat Fill bytes
#_0C806A: db $0D ; Direct Copy
#_0C806B: db $02, $17, $0B, $08, $07, $07, $05, $01
#_0C8073: db $0F, $0B, $19, $19, $0B, $0B
#_0C8079: db $25 ; Byte Fill
#_0C807A: db $02
#_0C807B: db $02 ; Direct Copy
#_0C807C: db $08, $07, $08
#_0C807F: db $22 ; Byte Fill
#_0C8080: db $0B
#_0C8081: db $02 ; Direct Copy
#_0C8082: db $19, $19, $0B
#_0C8085: db $25 ; Byte Fill
#_0C8086: db $02
#_0C8087: db $09 ; Direct Copy
#_0C8088: db $0B, $03, $06, $08, $0B, $02, $08, $19
#_0C8090: db $19, $05
#_0C8092: db $25 ; Byte Fill
#_0C8093: db $02
#_0C8094: db $01 ; Direct Copy
#_0C8095: db $0B, $07
#_0C8097: db $22 ; Byte Fill
#_0C8098: db $0B
#_0C8099: db $04 ; Direct Copy
#_0C809A: db $08, $0B, $16, $19, $07
#_0C809F: db $22 ; Byte Fill
#_0C80A0: db $02
#_0C80A1: db $0C ; Direct Copy
#_0C80A2: db $08, $08, $04, $0B, $0B, $0C, $04, $08
#_0C80AA: db $08, $0B, $16, $00, $09
#_0C80AF: db $22 ; Byte Fill
#_0C80B0: db $02
#_0C80B1: db $0F ; Direct Copy
#_0C80B2: db $08, $08, $04, $08, $08, $04, $04, $08
#_0C80BA: db $08, $01, $00, $01, $01, $06, $00, $01
#_0C80C2: db $88 ; Repeat Fill
#_0C80C3: db $00, $CA ; Repeat Fill bytes
#_0C80C5: db $28 ; Byte Fill
#_0C80C6: db $0C
#_0C80C7: db $86 ; Repeat Fill
#_0C80C8: db $00, $CC ; Repeat Fill bytes
#_0C80CA: db $83 ; Repeat Fill
#_0C80CB: db $00, $CC ; Repeat Fill bytes
#_0C80CD: db $88 ; Repeat Fill
#_0C80CE: db $00, $F1 ; Repeat Fill bytes
#_0C80D0: db $FF ; End of Map 62

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen62_Low:
#_0C80D1: db $02 ; Direct Copy
#_0C80D2: db $C0, $1E, $0B
#_0C80D5: db $62 ; Increasing Fill
#_0C80D6: db $09 ; Increasing Fill Start
#_0C80D7: db $01 ; Direct Copy
#_0C80D8: db $09, $0A
#_0C80DA: db $84 ; Repeat Fill
#_0C80DB: db $00, $02 ; Repeat Fill bytes
#_0C80DD: db $04 ; Direct Copy
#_0C80DE: db $C1, $8A, $09, $C0, $2C
#_0C80E3: db $62 ; Increasing Fill
#_0C80E4: db $06 ; Increasing Fill Start
#_0C80E5: db $0F ; Direct Copy
#_0C80E6: db $C2, $0E, $5E, $AC, $31, $08, $06, $10
#_0C80EE: db $C3, $8A, $09, $C0, $19, $1A, $00, $04
#_0C80F6: db $63 ; Increasing Fill
#_0C80F7: db $66 ; Increasing Fill Start
#_0C80F8: db $1B ; Direct Copy
#_0C80F9: db $39, $3A, $1B, $1C, $6F, $8A, $5C, $C6
#_0C8101: db $99, $27, $09, $07, $C0, $6A, $6B, $B8
#_0C8109: db $91, $8E, $33, $29, $16, $8A, $09, $8E
#_0C8111: db $B2, $CA, $ED, $CB
#_0C8115: db $62 ; Increasing Fill
#_0C8116: db $6C ; Increasing Fill Start
#_0C8117: db $08 ; Direct Copy
#_0C8118: db $42, $E6, $FF, $A1, $07, $AA, $92, $C5
#_0C8120: db $A2
#_0C8121: db $65 ; Increasing Fill
#_0C8122: db $D0 ; Increasing Fill Start
#_0C8123: db $E0, $30 ; EXT Direct Copy
#_0C8125: db $6F, $46, $AB, $AC, $AA, $D8, $ED, $99
#_0C812D: db $1F, $D9, $DA, $EE, $09, $DC, $B1, $F7
#_0C8135: db $F8, $70, $B3, $B4, $7A, $6F, $1E, $1F
#_0C813D: db $DF, $E0, $1B, $30, $0E, $E1, $E2, $71
#_0C8145: db $72, $22, $22, $04, $00, $E6, $6B, $43
#_0C814D: db $20, $6E, $CC, $09, $E8, $73, $74, $EA
#_0C8155: db $EB
#_0C8156: db $24 ; Byte Fill
#_0C8157: db $E9
#_0C8158: db $03 ; Direct Copy
#_0C8159: db $3E, $6F, $54, $0A
#_0C815D: db $62 ; Increasing Fill
#_0C815E: db $ED ; Increasing Fill Start
#_0C815F: db $03 ; Direct Copy
#_0C8160: db $75, $76, $F1, $A7
#_0C8164: db $24 ; Byte Fill
#_0C8165: db $E9
#_0C8166: db $09 ; Direct Copy
#_0C8167: db $F3, $32, $09, $61, $F4, $A7, $97, $77
#_0C816F: db $78, $04
#_0C8171: db $25 ; Byte Fill
#_0C8172: db $E9
#_0C8173: db $09 ; Direct Copy
#_0C8174: db $F9, $3A, $94, $FA, $FB, $B9, $FC, $E6
#_0C817C: db $17, $6D
#_0C817E: db $22 ; Byte Fill
#_0C817F: db $E9
#_0C8180: db $0C ; Direct Copy
#_0C8181: db $B8, $B9, $2E, $FE, $FF, $00, $39, $9F
#_0C8189: db $4B, $43, $E6, $1F, $B2
#_0C818E: db $22 ; Byte Fill
#_0C818F: db $E9
#_0C8190: db $18 ; Direct Copy
#_0C8191: db $BD, $4B, $39, $9F, $4B, $39, $42, $D2
#_0C8199: db $D3, $62, $1F, $61, $62, $70, $99, $1E
#_0C81A1: db $4D, $4E, $42, $D2, $D3, $42, $4A, $99
#_0C81A9: db $44
#_0C81AA: db $62 ; Increasing Fill
#_0C81AB: db $02 ; Increasing Fill Start
#_0C81AC: db $00 ; Direct Copy
#_0C81AD: db $02
#_0C81AE: db $62 ; Increasing Fill
#_0C81AF: db $05 ; Increasing Fill Start
#_0C81B0: db $05 ; Direct Copy
#_0C81B1: db $05, $04, $4A, $99, $44, $4A
#_0C81B7: db $83 ; Repeat Fill
#_0C81B8: db $00, $CC ; Repeat Fill bytes
#_0C81BA: db $00 ; Direct Copy
#_0C81BB: db $9F
#_0C81BC: db $84 ; Repeat Fill
#_0C81BD: db $00, $CB ; Repeat Fill bytes
#_0C81BF: db $85 ; Repeat Fill
#_0C81C0: db $00, $F1 ; Repeat Fill bytes
#_0C81C2: db $FF ; End of Map 62

;===================================================================================================

OverworldMap32_Screen63_High:
#_0C81C3: db $04 ; Direct Copy
#_0C81C4: db $05, $07, $17, $19, $17
#_0C81C9: db $43 ; Word Fill
#_0C81CA: db $17, $19 ;  Word Fill
#_0C81CC: db $01 ; Direct Copy
#_0C81CD: db $19, $17
#_0C81CF: db $24 ; Byte Fill
#_0C81D0: db $19
#_0C81D1: db $01 ; Direct Copy
#_0C81D2: db $05, $07
#_0C81D4: db $22 ; Byte Fill
#_0C81D5: db $19
#_0C81D6: db $22 ; Byte Fill
#_0C81D7: db $17
#_0C81D8: db $45 ; Word Fill
#_0C81D9: db $19, $17 ;  Word Fill
#_0C81DB: db $06 ; Direct Copy
#_0C81DC: db $17, $19, $05, $07, $08, $15, $19
#_0C81E3: db $23 ; Byte Fill
#_0C81E4: db $06
#_0C81E5: db $43 ; Word Fill
#_0C81E6: db $19, $06 ;  Word Fill
#_0C81E8: db $22 ; Byte Fill
#_0C81E9: db $19
#_0C81EA: db $05 ; Direct Copy
#_0C81EB: db $05, $07, $08, $06, $19, $19
#_0C81F1: db $23 ; Byte Fill
#_0C81F2: db $06
#_0C81F3: db $00 ; Direct Copy
#_0C81F4: db $09
#_0C81F5: db $22 ; Byte Fill
#_0C81F6: db $06
#_0C81F7: db $85 ; Repeat Fill
#_0C81F8: db $00, $2E ; Repeat Fill bytes
#_0C81FA: db $01 ; Direct Copy
#_0C81FB: db $06, $09
#_0C81FD: db $24 ; Byte Fill
#_0C81FE: db $06
#_0C81FF: db $02 ; Direct Copy
#_0C8200: db $16, $16, $19
#_0C8203: db $83 ; Repeat Fill
#_0C8204: db $00, $1E ; Repeat Fill bytes
#_0C8206: db $04 ; Direct Copy
#_0C8207: db $19, $19, $06, $0C, $07
#_0C820C: db $23 ; Byte Fill
#_0C820D: db $06
#_0C820E: db $01 ; Direct Copy
#_0C820F: db $16, $16
#_0C8211: db $22 ; Byte Fill
#_0C8212: db $19
#_0C8213: db $05 ; Direct Copy
#_0C8214: db $05, $07, $05, $19, $01, $00
#_0C821A: db $83 ; Repeat Fill
#_0C821B: db $00, $34 ; Repeat Fill bytes
#_0C821D: db $01 ; Direct Copy
#_0C821E: db $09, $07
#_0C8220: db $83 ; Repeat Fill
#_0C8221: db $00, $2B ; Repeat Fill bytes
#_0C8223: db $03 ; Direct Copy
#_0C8224: db $05, $05, $19, $19
#_0C8228: db $2B ; Byte Fill
#_0C8229: db $0C
#_0C822A: db $22 ; Byte Fill
#_0C822B: db $05
#_0C822C: db $00 ; Direct Copy
#_0C822D: db $07
#_0C822E: db $2B ; Byte Fill
#_0C822F: db $02
#_0C8230: db $22 ; Byte Fill
#_0C8231: db $05
#_0C8232: db $3C ; Byte Fill
#_0C8233: db $07
#_0C8234: db $00 ; Direct Copy
#_0C8235: db $19
#_0C8236: db $2E ; Byte Fill
#_0C8237: db $07
#_0C8238: db $00 ; Direct Copy
#_0C8239: db $04
#_0C823A: db $2D ; Byte Fill
#_0C823B: db $0C
#_0C823C: db $06 ; Direct Copy
#_0C823D: db $19, $04, $04, $01, $19, $06, $06
#_0C8244: db $28 ; Byte Fill
#_0C8245: db $0C
#_0C8246: db $0F ; Direct Copy
#_0C8247: db $19, $08, $0C, $0C, $04, $00, $0C, $08
#_0C824F: db $08, $04, $08, $08, $04, $08, $08, $04
#_0C8257: db $22 ; Byte Fill
#_0C8258: db $08
#_0C8259: db $04 ; Direct Copy
#_0C825A: db $04, $04, $07, $01, $0B
#_0C825F: db $88 ; Repeat Fill
#_0C8260: db $00, $E7 ; Repeat Fill bytes
#_0C8262: db $FF ; End of Map 63

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen63_Low:
#_0C8263: db $0C ; Direct Copy
#_0C8264: db $E1, $6E, $5C, $79, $59, $75, $7A, $6F
#_0C826C: db $7B, $7C, $D9, $7D, $7C
#_0C8271: db $62 ; Increasing Fill
#_0C8272: db $7E ; Increasing Fill Start
#_0C8273: db $07 ; Direct Copy
#_0C8274: db $E1, $6E, $81, $82, $7C, $76, $75, $D9
#_0C827C: db $45 ; Word Fill
#_0C827D: db $7C, $8F ;  Word Fill
#_0C827F: db $06 ; Direct Copy
#_0C8280: db $5B, $80, $E1, $6E, $F5, $DA, $83
#_0C8287: db $23 ; Byte Fill
#_0C8288: db $7C
#_0C8289: db $44 ; Word Fill
#_0C828A: db $84, $7C ;  Word Fill
#_0C828C: db $07 ; Direct Copy
#_0C828D: db $85, $86, $E1, $6E, $F5, $70, $87, $83
#_0C8295: db $23 ; Byte Fill
#_0C8296: db $7C
#_0C8297: db $04 ; Direct Copy
#_0C8298: db $25, $91, $90, $7C, $86
#_0C829D: db $83 ; Repeat Fill
#_0C829E: db $00, $2F ; Repeat Fill bytes
#_0C82A0: db $02 ; Direct Copy
#_0C82A1: db $66, $66, $1C
#_0C82A4: db $23 ; Byte Fill
#_0C82A5: db $7C
#_0C82A6: db $0C ; Direct Copy
#_0C82A7: db $CD, $E7, $E8, $88, $8F, $86, $E1, $6E
#_0C82AF: db $89, $8A, $70, $23, $65
#_0C82B4: db $23 ; Byte Fill
#_0C82B5: db $7C
#_0C82B6: db $0A ; Direct Copy
#_0C82B7: db $E9, $EA, $8B, $8C, $86, $E1, $37, $1B
#_0C82BF: db $8D, $1E, $AA
#_0C82C2: db $83 ; Repeat Fill
#_0C82C3: db $00, $34 ; Repeat Fill bytes
#_0C82C5: db $02 ; Direct Copy
#_0C82C6: db $25, $4E, $8E
#_0C82C9: db $83 ; Repeat Fill
#_0C82CA: db $00, $3D ; Repeat Fill bytes
#_0C82CC: db $02 ; Direct Copy
#_0C82CD: db $AB, $8F, $90
#_0C82D0: db $2B ; Byte Fill
#_0C82D1: db $30
#_0C82D2: db $03 ; Direct Copy
#_0C82D3: db $E1, $E1, $AB, $3F
#_0C82D7: db $2B ; Byte Fill
#_0C82D8: db $FB
#_0C82D9: db $22 ; Byte Fill
#_0C82DA: db $E1
#_0C82DB: db $00 ; Direct Copy
#_0C82DC: db $44
#_0C82DD: db $2B ; Byte Fill
#_0C82DE: db $79
#_0C82DF: db $2F ; Byte Fill
#_0C82E0: db $22
#_0C82E1: db $00 ; Direct Copy
#_0C82E2: db $91
#_0C82E3: db $2E ; Byte Fill
#_0C82E4: db $27
#_0C82E5: db $00 ; Direct Copy
#_0C82E6: db $3A
#_0C82E7: db $62 ; Increasing Fill
#_0C82E8: db $37 ; Increasing Fill Start
#_0C82E9: db $00 ; Direct Copy
#_0C82EA: db $39
#_0C82EB: db $29 ; Byte Fill
#_0C82EC: db $3A
#_0C82ED: db $06 ; Direct Copy
#_0C82EE: db $92, $43, $44, $62, $93, $B3, $90
#_0C82F5: db $63 ; Increasing Fill
#_0C82F6: db $3C ; Increasing Fill Start
#_0C82F7: db $62 ; Increasing Fill
#_0C82F8: db $3D ; Increasing Fill Start
#_0C82F9: db $E0, $22 ; EXT Direct Copy
#_0C82FB: db $3D, $40, $94, $99, $42, $43, $2F, $1D
#_0C8303: db $28, $BD, $4B, $39, $9F, $4B, $39, $9F
#_0C830B: db $4B, $39, $9F, $9F, $4B, $39, $3A, $9E
#_0C8313: db $42, $47, $D3, $42, $D2, $D3, $42, $D2
#_0C831B: db $D3, $42, $D2
#_0C831E: db $FF ; End of Map 63

;===================================================================================================

OverworldMap32_Screen64_High:
#_0C831F: db $2B ; Byte Fill
#_0C8320: db $19
#_0C8321: db $05 ; Direct Copy
#_0C8322: db $17, $03, $05, $05, $19, $19
#_0C8328: db $24 ; Byte Fill
#_0C8329: db $17
#_0C832A: db $01 ; Direct Copy
#_0C832B: db $19, $19
#_0C832D: db $23 ; Byte Fill
#_0C832E: db $17
#_0C832F: db $02 ; Direct Copy
#_0C8330: db $03, $05, $10
#_0C8333: db $22 ; Byte Fill
#_0C8334: db $19
#_0C8335: db $05 ; Direct Copy
#_0C8336: db $06, $19, $00, $19, $19, $07
#_0C833C: db $22 ; Byte Fill
#_0C833D: db $06
#_0C833E: db $04 ; Direct Copy
#_0C833F: db $19, $08, $09, $07, $19
#_0C8344: db $43 ; Word Fill
#_0C8345: db $19, $06 ;  Word Fill
#_0C8347: db $01 ; Direct Copy
#_0C8348: db $06, $19
#_0C834A: db $22 ; Byte Fill
#_0C834B: db $06
#_0C834C: db $02 ; Direct Copy
#_0C834D: db $19, $00, $19
#_0C8350: db $22 ; Byte Fill
#_0C8351: db $0C
#_0C8352: db $04 ; Direct Copy
#_0C8353: db $19, $17, $06, $16, $16
#_0C8358: db $22 ; Byte Fill
#_0C8359: db $06
#_0C835A: db $10 ; Direct Copy
#_0C835B: db $19, $00, $00, $18, $06, $19, $0C, $01
#_0C8363: db $19, $19, $06, $16, $16, $19, $06, $19
#_0C836B: db $03
#_0C836C: db $23 ; Byte Fill
#_0C836D: db $00
#_0C836E: db $84 ; Repeat Fill
#_0C836F: db $00, $4D ; Repeat Fill bytes
#_0C8371: db $03 ; Direct Copy
#_0C8372: db $00, $03, $04, $00
#_0C8376: db $23 ; Byte Fill
#_0C8377: db $10
#_0C8378: db $05 ; Direct Copy
#_0C8379: db $00, $00, $19, $19, $01, $01
#_0C837F: db $2B ; Byte Fill
#_0C8380: db $0C
#_0C8381: db $03 ; Direct Copy
#_0C8382: db $19, $0C, $06, $06
#_0C8386: db $2B ; Byte Fill
#_0C8387: db $02
#_0C8388: db $05 ; Direct Copy
#_0C8389: db $07, $05, $05, $10, $0C, $07
#_0C838F: db $43 ; Word Fill
#_0C8390: db $07, $0C ;  Word Fill
#_0C8392: db $22 ; Byte Fill
#_0C8393: db $07
#_0C8394: db $06 ; Direct Copy
#_0C8395: db $0C, $0C, $07, $07, $10, $05, $05
#_0C839C: db $2C ; Byte Fill
#_0C839D: db $07
#_0C839E: db $02 ; Direct Copy
#_0C839F: db $05, $05, $10
#_0C83A2: db $29 ; Byte Fill
#_0C83A3: db $07
#_0C83A4: db $07 ; Direct Copy
#_0C83A5: db $0C, $0C, $19, $07, $05, $05, $0C, $19
#_0C83AD: db $27 ; Byte Fill
#_0C83AE: db $0C
#_0C83AF: db $05 ; Direct Copy
#_0C83B0: db $04, $01, $19, $08, $07, $10
#_0C83B6: db $24 ; Byte Fill
#_0C83B7: db $0C
#_0C83B8: db $43 ; Word Fill
#_0C83B9: db $02, $0C ;  Word Fill
#_0C83BB: db $0E ; Direct Copy
#_0C83BC: db $0C, $06, $06, $19, $19, $08, $07, $08
#_0C83C4: db $04, $08, $08, $0B, $00, $07, $01
#_0C83CB: db $22 ; Byte Fill
#_0C83CC: db $0C
#_0C83CD: db $04 ; Direct Copy
#_0C83CE: db $06, $06, $01, $03, $05
#_0C83D3: db $83 ; Repeat Fill
#_0C83D4: db $00, $E0 ; Repeat Fill bytes
#_0C83D6: db $0B ; Direct Copy
#_0C83D7: db $01, $00, $00, $06, $00, $02, $0C, $05
#_0C83DF: db $00, $00, $03, $05
#_0C83E3: db $FF ; End of Map 64

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen64_Low:
#_0C83E4: db $00 ; Direct Copy
#_0C83E5: db $80
#_0C83E6: db $64 ; Increasing Fill
#_0C83E7: db $95 ; Increasing Fill Start
#_0C83E8: db $62 ; Increasing Fill
#_0C83E9: db $97 ; Increasing Fill Start
#_0C83EA: db $62 ; Increasing Fill
#_0C83EB: db $99 ; Increasing Fill Start
#_0C83EC: db $05 ; Direct Copy
#_0C83ED: db $C0, $32, $C5, $E1, $80, $9C
#_0C83F3: db $44 ; Word Fill
#_0C83F4: db $8F, $72 ;  Word Fill
#_0C83F6: db $01 ; Direct Copy
#_0C83F7: db $9D, $98
#_0C83F9: db $22 ; Byte Fill
#_0C83FA: db $72
#_0C83FB: db $0C ; Direct Copy
#_0C83FC: db $C4, $32, $C5, $FF, $86, $9E, $84, $7C
#_0C8404: db $9F, $1D, $A0, $A1, $39
#_0C8409: db $22 ; Byte Fill
#_0C840A: db $7C
#_0C840B: db $0A ; Direct Copy
#_0C840C: db $A2, $69, $46, $22, $86, $86, $7C, $A3
#_0C8414: db $91, $74, $A4
#_0C8417: db $22 ; Byte Fill
#_0C8418: db $7C
#_0C8419: db $02 ; Direct Copy
#_0C841A: db $A5, $1C, $A6
#_0C841D: db $62 ; Increasing Fill
#_0C841E: db $56 ; Increasing Fill Start
#_0C841F: db $04 ; Direct Copy
#_0C8420: db $86, $8F, $7C, $E7, $E8
#_0C8425: db $22 ; Byte Fill
#_0C8426: db $7C
#_0C8427: db $11 ; Direct Copy
#_0C8428: db $A5, $A5, $1D, $0B, $66, $A7, $5E, $8B
#_0C8430: db $86, $8C, $83, $E9, $EA, $A8, $7C, $A5
#_0C8438: db $E2, $A5
#_0C843A: db $22 ; Byte Fill
#_0C843B: db $1D
#_0C843C: db $08 ; Direct Copy
#_0C843D: db $A9, $66, $AB, $86, $86, $1D, $DB, $25
#_0C8445: db $1D
#_0C8446: db $43 ; Word Fill
#_0C8447: db $83, $84 ;  Word Fill
#_0C8449: db $05 ; Direct Copy
#_0C844A: db $1D, $1D, $AA, $AB, $B3, $B3
#_0C8450: db $2B ; Byte Fill
#_0C8451: db $72
#_0C8452: db $03 ; Direct Copy
#_0C8453: db $AC, $74, $A0, $A0
#_0C8457: db $2B ; Byte Fill
#_0C8458: db $FB
#_0C8459: db $05 ; Direct Copy
#_0C845A: db $1B, $9F, $E1, $FF, $76, $79
#_0C8460: db $43 ; Word Fill
#_0C8461: db $79, $76 ;  Word Fill
#_0C8463: db $22 ; Byte Fill
#_0C8464: db $79
#_0C8465: db $06 ; Direct Copy
#_0C8466: db $76, $76, $79, $31, $FF, $E1, $E1
#_0C846D: db $2B ; Byte Fill
#_0C846E: db $22
#_0C846F: db $03 ; Direct Copy
#_0C8470: db $3D, $E1, $E1, $FF
#_0C8474: db $29 ; Byte Fill
#_0C8475: db $27
#_0C8476: db $08 ; Direct Copy
#_0C8477: db $78, $79, $AD, $43, $E1, $E1, $7C, $AE
#_0C847F: db $7B
#_0C8480: db $25 ; Byte Fill
#_0C8481: db $7C
#_0C8482: db $06 ; Direct Copy
#_0C8483: db $7D, $1E, $74, $AF, $6B, $43, $FF
#_0C848A: db $62 ; Increasing Fill
#_0C848B: db $80 ; Increasing Fill Start
#_0C848C: db $01 ; Direct Copy
#_0C848D: db $80, $83
#_0C848F: db $43 ; Word Fill
#_0C8490: db $5B, $84 ;  Word Fill
#_0C8492: db $0E ; Direct Copy
#_0C8493: db $85, $2F, $30, $B0, $B1, $6F, $54, $4B
#_0C849B: db $39, $9F, $4B, $43, $1D, $C5, $1E
#_0C84A2: db $62 ; Increasing Fill
#_0C84A3: db $89 ; Increasing Fill Start
#_0C84A4: db $14 ; Direct Copy
#_0C84A5: db $8A, $66, $1E, $32, $C5, $D3, $42, $D2
#_0C84AD: db $D3, $62, $1D, $1D, $66, $AA, $5E, $8C
#_0C84B5: db $4F, $1D, $FB, $32, $C5
#_0C84BA: db $FF ; End of Map 64

;===================================================================================================

OverworldMap32_Screen25_High:
#_0C84BB: db $03 ; Direct Copy
#_0C84BC: db $07, $01, $0F, $02
#_0C84C0: db $43 ; Word Fill
#_0C84C1: db $0B, $19 ;  Word Fill
#_0C84C3: db $0B ; Direct Copy
#_0C84C4: db $06, $04, $07, $04, $03, $00, $01, $0A
#_0C84CC: db $07, $01, $00, $02
#_0C84D0: db $25 ; Byte Fill
#_0C84D1: db $19
#_0C84D2: db $08 ; Direct Copy
#_0C84D3: db $0F, $19, $04, $00, $01, $19, $19, $07
#_0C84DB: db $02
#_0C84DC: db $24 ; Byte Fill
#_0C84DD: db $19
#_0C84DE: db $03 ; Direct Copy
#_0C84DF: db $01, $19, $0F, $0F
#_0C84E3: db $83 ; Repeat Fill
#_0C84E4: db $00, $26 ; Repeat Fill bytes
#_0C84E6: db $01 ; Direct Copy
#_0C84E7: db $19, $03
#_0C84E9: db $24 ; Byte Fill
#_0C84EA: db $19
#_0C84EB: db $00 ; Direct Copy
#_0C84EC: db $10
#_0C84ED: db $22 ; Byte Fill
#_0C84EE: db $01
#_0C84EF: db $22 ; Byte Fill
#_0C84F0: db $19
#_0C84F1: db $04 ; Direct Copy
#_0C84F2: db $01, $19, $03, $19, $02
#_0C84F7: db $22 ; Byte Fill
#_0C84F8: db $19
#_0C84F9: db $01 ; Direct Copy
#_0C84FA: db $10, $0C
#_0C84FC: db $24 ; Byte Fill
#_0C84FD: db $19
#_0C84FE: db $05 ; Direct Copy
#_0C84FF: db $04, $01, $01, $04, $00, $02
#_0C8505: db $22 ; Byte Fill
#_0C8506: db $19
#_0C8507: db $00 ; Direct Copy
#_0C8508: db $10
#_0C8509: db $26 ; Byte Fill
#_0C850A: db $19
#_0C850B: db $03 ; Direct Copy
#_0C850C: db $01, $01, $19, $01
#_0C8510: db $24 ; Byte Fill
#_0C8511: db $19
#_0C8512: db $00 ; Direct Copy
#_0C8513: db $01
#_0C8514: db $24 ; Byte Fill
#_0C8515: db $19
#_0C8516: db $22 ; Byte Fill
#_0C8517: db $01
#_0C8518: db $01 ; Direct Copy
#_0C8519: db $07, $07
#_0C851B: db $24 ; Byte Fill
#_0C851C: db $19
#_0C851D: db $00 ; Direct Copy
#_0C851E: db $01
#_0C851F: db $23 ; Byte Fill
#_0C8520: db $19
#_0C8521: db $05 ; Direct Copy
#_0C8522: db $06, $01, $01, $04, $07, $01
#_0C8528: db $23 ; Byte Fill
#_0C8529: db $19
#_0C852A: db $01 ; Direct Copy
#_0C852B: db $10, $01
#_0C852D: db $22 ; Byte Fill
#_0C852E: db $19
#_0C852F: db $07 ; Direct Copy
#_0C8530: db $10, $19, $19, $01, $04, $09, $01, $06
#_0C8538: db $84 ; Repeat Fill
#_0C8539: db $00, $8A ; Repeat Fill bytes
#_0C853B: db $01 ; Direct Copy
#_0C853C: db $19, $10
#_0C853E: db $24 ; Byte Fill
#_0C853F: db $19
#_0C8540: db $03 ; Direct Copy
#_0C8541: db $04, $07, $01, $02
#_0C8545: db $86 ; Repeat Fill
#_0C8546: db $00, $93 ; Repeat Fill bytes
#_0C8548: db $22 ; Byte Fill
#_0C8549: db $19
#_0C854A: db $05 ; Direct Copy
#_0C854B: db $10, $19, $04, $19, $01, $09
#_0C8551: db $23 ; Byte Fill
#_0C8552: db $19
#_0C8553: db $00 ; Direct Copy
#_0C8554: db $01
#_0C8555: db $23 ; Byte Fill
#_0C8556: db $19
#_0C8557: db $83 ; Repeat Fill
#_0C8558: db $00, $1E ; Repeat Fill bytes
#_0C855A: db $02 ; Direct Copy
#_0C855B: db $09, $01, $09
#_0C855E: db $23 ; Byte Fill
#_0C855F: db $19
#_0C8560: db $00 ; Direct Copy
#_0C8561: db $01
#_0C8562: db $23 ; Byte Fill
#_0C8563: db $19
#_0C8564: db $06 ; Direct Copy
#_0C8565: db $01, $19, $04, $01, $07, $01, $09
#_0C856C: db $22 ; Byte Fill
#_0C856D: db $19
#_0C856E: db $01 ; Direct Copy
#_0C856F: db $10, $01
#_0C8571: db $22 ; Byte Fill
#_0C8572: db $19
#_0C8573: db $00 ; Direct Copy
#_0C8574: db $10
#_0C8575: db $85 ; Repeat Fill
#_0C8576: db $00, $CC ; Repeat Fill bytes
#_0C8578: db $05 ; Direct Copy
#_0C8579: db $19, $0E, $0E, $0D, $19, $0D
#_0C857F: db $23 ; Byte Fill
#_0C8580: db $01
#_0C8581: db $83 ; Repeat Fill
#_0C8582: db $00, $4B ; Repeat Fill bytes
#_0C8584: db $08 ; Direct Copy
#_0C8585: db $07, $01, $00, $00, $0B, $0B, $01, $19
#_0C858D: db $0B
#_0C858E: db $22 ; Byte Fill
#_0C858F: db $01
#_0C8590: db $03 ; Direct Copy
#_0C8591: db $0B, $19, $04, $01
#_0C8595: db $FF ; End of Map 25

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen25_Low:
#_0C8596: db $13 ; Direct Copy
#_0C8597: db $4C, $93, $19, $4F, $56, $B2, $56, $B3
#_0C859F: db $8F, $8D, $38, $C2, $D5, $A5, $2E, $03
#_0C85A7: db $56, $93, $AA, $4F
#_0C85AB: db $63 ; Increasing Fill
#_0C85AC: db $B4 ; Increasing Fill Start
#_0C85AD: db $0A ; Direct Copy
#_0C85AE: db $B3, $B8, $42, $B9, $C4, $1D, $2E, $BA
#_0C85B6: db $BB, $5E, $6F
#_0C85B9: db $64 ; Increasing Fill
#_0C85BA: db $BC ; Increasing Fill Start
#_0C85BB: db $0F ; Direct Copy
#_0C85BC: db $06, $C1, $A4, $A1, $C2, $C3, $2E, $C4
#_0C85C4: db $C5, $49, $C6, $B4, $C7, $C8, $C1, $C1
#_0C85CC: db $22 ; Byte Fill
#_0C85CD: db $06
#_0C85CE: db $0C ; Direct Copy
#_0C85CF: db $C1, $C9, $CA, $08, $CB, $5E, $CC, $4F
#_0C85D7: db $BD, $BE, $CD, $B6, $ED
#_0C85DC: db $43 ; Word Fill
#_0C85DD: db $CE, $CF ;  Word Fill
#_0C85DF: db $06 ; Direct Copy
#_0C85E0: db $D0, $86, $E4, $03, $95, $1D, $4F
#_0C85E7: db $62 ; Increasing Fill
#_0C85E8: db $D1 ; Increasing Fill Start
#_0C85E9: db $01 ; Direct Copy
#_0C85EA: db $B9, $D4
#_0C85EC: db $43 ; Word Fill
#_0C85ED: db $D5, $D6 ;  Word Fill
#_0C85EF: db $06 ; Direct Copy
#_0C85F0: db $D0, $D7, $DB, $E4, $D8, $A0, $D9
#_0C85F7: db $83 ; Repeat Fill
#_0C85F8: db $00, $14 ; Repeat Fill bytes
#_0C85FA: db $00 ; Direct Copy
#_0C85FB: db $06
#_0C85FC: db $83 ; Repeat Fill
#_0C85FD: db $00, $14 ; Repeat Fill bytes
#_0C85FF: db $06 ; Direct Copy
#_0C8600: db $D5, $03, $E6, $DB, $1C, $6C, $DA
#_0C8607: db $84 ; Repeat Fill
#_0C8608: db $00, $24 ; Repeat Fill bytes
#_0C860A: db $83 ; Repeat Fill
#_0C860B: db $00, $24 ; Repeat Fill bytes
#_0C860D: db $05 ; Direct Copy
#_0C860E: db $A2, $01, $03, $80, $4C, $93
#_0C8614: db $62 ; Increasing Fill
#_0C8615: db $DA ; Increasing Fill Start
#_0C8616: db $12 ; Direct Copy
#_0C8617: db $C1, $C1, $06, $DB, $C8, $C1, $C1, $B6
#_0C861F: db $B7, $0D, $86, $DB, $93, $7E, $CD, $B6
#_0C8627: db $CE, $CF, $06
#_0C862A: db $83 ; Repeat Fill
#_0C862B: db $00, $93 ; Repeat Fill bytes
#_0C862D: db $0B ; Direct Copy
#_0C862E: db $BF, $C0, $D0, $86, $56, $93, $4F, $D3
#_0C8636: db $B9, $D5, $D6, $06
#_0C863A: db $83 ; Repeat Fill
#_0C863B: db $00, $A3 ; Repeat Fill bytes
#_0C863D: db $07 ; Direct Copy
#_0C863E: db $C1, $C1, $DD, $86, $DE, $93, $B0, $DF
#_0C8646: db $87 ; Repeat Fill
#_0C8647: db $00, $64 ; Repeat Fill bytes
#_0C8649: db $06 ; Direct Copy
#_0C864A: db $06, $E0, $E1, $C7, $DB, $93, $B0
#_0C8651: db $88 ; Repeat Fill
#_0C8652: db $00, $73 ; Repeat Fill bytes
#_0C8654: db $07 ; Direct Copy
#_0C8655: db $06, $D0, $86, $52, $4C, $93, $C1, $E2
#_0C865D: db $83 ; Repeat Fill
#_0C865E: db $00, $35 ; Repeat Fill bytes
#_0C8660: db $83 ; Repeat Fill
#_0C8661: db $00, $88 ; Repeat Fill bytes
#_0C8663: db $0B ; Direct Copy
#_0C8664: db $06, $D0, $86, $77, $4C, $93, $E3, $34
#_0C866C: db $35, $4C, $E4, $A2
#_0C8670: db $23 ; Byte Fill
#_0C8671: db $06
#_0C8672: db $00 ; Direct Copy
#_0C8673: db $B2
#_0C8674: db $84 ; Repeat Fill
#_0C8675: db $00, $DD ; Repeat Fill bytes
#_0C8677: db $06 ; Direct Copy
#_0C8678: db $1D, $AA, $32, $56, $06, $D4, $56
#_0C867F: db $22 ; Byte Fill
#_0C8680: db $06
#_0C8681: db $03 ; Direct Copy
#_0C8682: db $56, $D0, $86, $77
#_0C8686: db $FF ; End of Map 25

;===================================================================================================

OverworldMap32_Screen66_High:
#_0C8687: db $27 ; Byte Fill
#_0C8688: db $18
#_0C8689: db $02 ; Direct Copy
#_0C868A: db $19, $19, $18
#_0C868D: db $24 ; Byte Fill
#_0C868E: db $19
#_0C868F: db $01 ; Direct Copy
#_0C8690: db $18, $18
#_0C8692: db $2D ; Byte Fill
#_0C8693: db $19
#_0C8694: db $00 ; Direct Copy
#_0C8695: db $18
#_0C8696: db $29 ; Byte Fill
#_0C8697: db $19
#_0C8698: db $00 ; Direct Copy
#_0C8699: db $18
#_0C869A: db $44 ; Word Fill
#_0C869B: db $18, $1A ;  Word Fill
#_0C869D: db $28 ; Byte Fill
#_0C869E: db $1A
#_0C869F: db $02 ; Direct Copy
#_0C86A0: db $18, $18, $1A
#_0C86A3: db $43 ; Word Fill
#_0C86A4: db $1A, $18 ;  Word Fill
#_0C86A6: db $28 ; Byte Fill
#_0C86A7: db $1A
#_0C86A8: db $83 ; Repeat Fill
#_0C86A9: db $00, $3A ; Repeat Fill bytes
#_0C86AB: db $23 ; Byte Fill
#_0C86AC: db $18
#_0C86AD: db $02 ; Direct Copy
#_0C86AE: db $1A, $1A, $19
#_0C86B1: db $24 ; Byte Fill
#_0C86B2: db $1A
#_0C86B3: db $01 ; Direct Copy
#_0C86B4: db $18, $18
#_0C86B6: db $22 ; Byte Fill
#_0C86B7: db $1A
#_0C86B8: db $2A ; Byte Fill
#_0C86B9: db $18
#_0C86BA: db $01 ; Direct Copy
#_0C86BB: db $19, $18
#_0C86BD: db $2B ; Byte Fill
#_0C86BE: db $1A
#_0C86BF: db $23 ; Byte Fill
#_0C86C0: db $18
#_0C86C1: db $85 ; Repeat Fill
#_0C86C2: db $00, $38 ; Repeat Fill bytes
#_0C86C4: db $04 ; Direct Copy
#_0C86C5: db $0B, $1A, $1A, $0B, $07
#_0C86CA: db $26 ; Byte Fill
#_0C86CB: db $1A
#_0C86CC: db $83 ; Repeat Fill
#_0C86CD: db $00, $7F ; Repeat Fill bytes
#_0C86CF: db $23 ; Byte Fill
#_0C86D0: db $1A
#_0C86D1: db $02 ; Direct Copy
#_0C86D2: db $02, $1A, $18
#_0C86D5: db $23 ; Byte Fill
#_0C86D6: db $1A
#_0C86D7: db $03 ; Direct Copy
#_0C86D8: db $18, $18, $1A, $0C
#_0C86DC: db $24 ; Byte Fill
#_0C86DD: db $1A
#_0C86DE: db $02 ; Direct Copy
#_0C86DF: db $02, $1A, $18
#_0C86E2: db $23 ; Byte Fill
#_0C86E3: db $1A
#_0C86E4: db $03 ; Direct Copy
#_0C86E5: db $18, $18, $1A, $03
#_0C86E9: db $84 ; Repeat Fill
#_0C86EA: db $00, $8C ; Repeat Fill bytes
#_0C86EC: db $00 ; Direct Copy
#_0C86ED: db $02
#_0C86EE: db $28 ; Byte Fill
#_0C86EF: db $1A
#_0C86F0: db $01 ; Direct Copy
#_0C86F1: db $03, $0C
#_0C86F3: db $24 ; Byte Fill
#_0C86F4: db $1A
#_0C86F5: db $22 ; Byte Fill
#_0C86F6: db $0B
#_0C86F7: db $01 ; Direct Copy
#_0C86F8: db $1A, $1A
#_0C86FA: db $22 ; Byte Fill
#_0C86FB: db $0B
#_0C86FC: db $0F ; Direct Copy
#_0C86FD: db $1A, $00, $0C, $0C, $1A, $1A, $00, $00
#_0C8705: db $06, $0C, $03, $03, $0C, $1A, $00, $07
#_0C870D: db $22 ; Byte Fill
#_0C870E: db $0C
#_0C870F: db $02 ; Direct Copy
#_0C8710: db $1A, $02, $06
#_0C8713: db $43 ; Word Fill
#_0C8714: db $02, $05 ;  Word Fill
#_0C8716: db $05 ; Direct Copy
#_0C8717: db $1A, $03, $03, $1A, $02, $1A
#_0C871D: db $22 ; Byte Fill
#_0C871E: db $03
#_0C871F: db $09 ; Direct Copy
#_0C8720: db $0C, $0C, $00, $02, $04, $01, $01, $0C
#_0C8728: db $0C, $06
#_0C872A: db $22 ; Byte Fill
#_0C872B: db $01
#_0C872C: db $00 ; Direct Copy
#_0C872D: db $0C
#_0C872E: db $FF ; End of Map 66

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen66_Low:
#_0C872F: db $01 ; Direct Copy
#_0C8730: db $39, $96
#_0C8732: db $25 ; Byte Fill
#_0C8733: db $17
#_0C8734: db $09 ; Direct Copy
#_0C8735: db $E5, $E6, $AF, $E7, $E8, $E7, $E9, $EA
#_0C873D: db $39, $A1
#_0C873F: db $63 ; Increasing Fill
#_0C8740: db $EB ; Increasing Fill Start
#_0C8741: db $02 ; Direct Copy
#_0C8742: db $EC, $EF, $EE
#_0C8745: db $63 ; Increasing Fill
#_0C8746: db $F0 ; Increasing Fill Start
#_0C8747: db $03 ; Direct Copy
#_0C8748: db $F2, $F4, $F5, $39
#_0C874C: db $69 ; Increasing Fill
#_0C874D: db $F6 ; Increasing Fill Start
#_0C874E: db $05 ; Direct Copy
#_0C874F: db $52, $D6, $00, $30, $01, $39
#_0C8755: db $68 ; Increasing Fill
#_0C8756: db $02 ; Increasing Fill Start
#_0C8757: db $06 ; Direct Copy
#_0C8758: db $27, $5C, $0B, $0C, $2C, $0D, $39
#_0C875F: db $68 ; Increasing Fill
#_0C8760: db $0E ; Increasing Fill Start
#_0C8761: db $0F ; Direct Copy
#_0C8762: db $27, $2C, $17, $18, $2C, $57, $39, $2C
#_0C876A: db $19, $1A, $04, $1B, $1A, $1C, $1B, $1D
#_0C8772: db $83 ; Repeat Fill
#_0C8773: db $00, $4A ; Repeat Fill bytes
#_0C8775: db $06 ; Direct Copy
#_0C8776: db $1E, $27, $3F, $65, $84, $D6, $ED
#_0C877D: db $24 ; Byte Fill
#_0C877E: db $84
#_0C877F: db $03 ; Direct Copy
#_0C8780: db $0C, $40, $17, $18
#_0C8784: db $63 ; Increasing Fill
#_0C8785: db $1F ; Increasing Fill Start
#_0C8786: db $62 ; Increasing Fill
#_0C8787: db $22 ; Increasing Fill Start
#_0C8788: db $02 ; Direct Copy
#_0C8789: db $22, $22, $25
#_0C878C: db $22 ; Byte Fill
#_0C878D: db $70
#_0C878E: db $0B ; Direct Copy
#_0C878F: db $82, $17, $18, $38, $17, $26, $27, $EF
#_0C8797: db $28, $29, $EF, $00
#_0C879B: db $66 ; Increasing Fill
#_0C879C: db $2A ; Increasing Fill Start
#_0C879D: db $0A ; Direct Copy
#_0C879E: db $2C, $31, $32, $46, $33, $34, $34, $35
#_0C87A6: db $27, $36, $2C
#_0C87A9: db $63 ; Increasing Fill
#_0C87AA: db $37 ; Increasing Fill Start
#_0C87AB: db $03 ; Direct Copy
#_0C87AC: db $A0, $2C, $3B, $E6
#_0C87B0: db $64 ; Increasing Fill
#_0C87B1: db $3C ; Increasing Fill Start
#_0C87B2: db $02 ; Direct Copy
#_0C87B3: db $27, $41, $40
#_0C87B6: db $62 ; Increasing Fill
#_0C87B7: db $37 ; Increasing Fill Start
#_0C87B8: db $0A ; Direct Copy
#_0C87B9: db $42, $16, $18, $43, $D5, $44, $45, $FA
#_0C87C1: db $46, $47, $27
#_0C87C4: db $68 ; Increasing Fill
#_0C87C5: db $48 ; Increasing Fill Start
#_0C87C6: db $01 ; Direct Copy
#_0C87C7: db $D5, $D7
#_0C87C9: db $62 ; Increasing Fill
#_0C87CA: db $51 ; Increasing Fill Start
#_0C87CB: db $01 ; Direct Copy
#_0C87CC: db $40, $54
#_0C87CE: db $22 ; Byte Fill
#_0C87CF: db $EF
#_0C87D0: db $01 ; Direct Copy
#_0C87D1: db $28, $29
#_0C87D3: db $22 ; Byte Fill
#_0C87D4: db $EF
#_0C87D5: db $0F ; Direct Copy
#_0C87D6: db $55, $1D, $DD, $DE, $56, $57, $1D, $B2
#_0C87DE: db $66, $E3, $44, $44, $E4, $58, $1D, $8F
#_0C87E6: db $62 ; Increasing Fill
#_0C87E7: db $E4 ; Increasing Fill Start
#_0C87E8: db $15 ; Direct Copy
#_0C87E9: db $59, $D3, $66, $8D, $57, $4C, $58, $5A
#_0C87F1: db $4B, $4B, $5B, $4C, $5C, $4B, $8D, $D5
#_0C87F9: db $DD, $EB, $B2, $97, $E6, $EB
#_0C87FF: db $62 ; Increasing Fill
#_0C8800: db $EB ; Increasing Fill Start
#_0C8801: db $00 ; Direct Copy
#_0C8802: db $A3
#_0C8803: db $62 ; Increasing Fill
#_0C8804: db $EA ; Increasing Fill Start
#_0C8805: db $00 ; Direct Copy
#_0C8806: db $EE
#_0C8807: db $FF ; End of Map 66

;===================================================================================================

OverworldMap32_Screen67_High:
#_0C8808: db $15 ; Direct Copy
#_0C8809: db $05, $18, $1A, $18, $18, $05, $18, $18
#_0C8811: db $05, $1A, $1A, $05, $1A, $18, $1A, $01
#_0C8819: db $19, $1A, $19, $18, $18, $05
#_0C881F: db $43 ; Word Fill
#_0C8820: db $1A, $18 ;  Word Fill
#_0C8822: db $83 ; Repeat Fill
#_0C8823: db $00, $04 ; Repeat Fill bytes
#_0C8825: db $83 ; Repeat Fill
#_0C8826: db $00, $09 ; Repeat Fill bytes
#_0C8828: db $00 ; Direct Copy
#_0C8829: db $0A
#_0C882A: db $84 ; Repeat Fill
#_0C882B: db $00, $13 ; Repeat Fill bytes
#_0C882D: db $00 ; Direct Copy
#_0C882E: db $18
#_0C882F: db $25 ; Byte Fill
#_0C8830: db $1A
#_0C8831: db $01 ; Direct Copy
#_0C8832: db $01, $18
#_0C8834: db $22 ; Byte Fill
#_0C8835: db $1A
#_0C8836: db $00 ; Direct Copy
#_0C8837: db $18
#_0C8838: db $26 ; Byte Fill
#_0C8839: db $1A
#_0C883A: db $03 ; Direct Copy
#_0C883B: db $07, $1A, $1A, $01
#_0C883F: db $28 ; Byte Fill
#_0C8840: db $1A
#_0C8841: db $02 ; Direct Copy
#_0C8842: db $12, $06, $00
#_0C8845: db $22 ; Byte Fill
#_0C8846: db $1A
#_0C8847: db $00 ; Direct Copy
#_0C8848: db $01
#_0C8849: db $24 ; Byte Fill
#_0C884A: db $18
#_0C884B: db $01 ; Direct Copy
#_0C884C: db $1A, $07
#_0C884E: db $22 ; Byte Fill
#_0C884F: db $0B
#_0C8850: db $00 ; Direct Copy
#_0C8851: db $12
#_0C8852: db $23 ; Byte Fill
#_0C8853: db $1A
#_0C8854: db $00 ; Direct Copy
#_0C8855: db $01
#_0C8856: db $26 ; Byte Fill
#_0C8857: db $1A
#_0C8858: db $03 ; Direct Copy
#_0C8859: db $00, $06, $0D, $06
#_0C885D: db $23 ; Byte Fill
#_0C885E: db $1A
#_0C885F: db $01 ; Direct Copy
#_0C8860: db $01, $18
#_0C8862: db $22 ; Byte Fill
#_0C8863: db $1A
#_0C8864: db $0B ; Direct Copy
#_0C8865: db $02, $1A, $0B, $0D, $07, $0D, $06, $06
#_0C886D: db $02, $1A, $18, $01
#_0C8871: db $23 ; Byte Fill
#_0C8872: db $1A
#_0C8873: db $23 ; Byte Fill
#_0C8874: db $0D
#_0C8875: db $02 ; Direct Copy
#_0C8876: db $07, $0D, $06
#_0C8879: db $23 ; Byte Fill
#_0C887A: db $1A
#_0C887B: db $04 ; Direct Copy
#_0C887C: db $01, $0B, $1A, $02, $1A
#_0C8881: db $23 ; Byte Fill
#_0C8882: db $0D
#_0C8883: db $01 ; Direct Copy
#_0C8884: db $01, $01
#_0C8886: db $24 ; Byte Fill
#_0C8887: db $1A
#_0C8888: db $02 ; Direct Copy
#_0C8889: db $01, $0D, $06
#_0C888C: db $22 ; Byte Fill
#_0C888D: db $0D
#_0C888E: db $02 ; Direct Copy
#_0C888F: db $06, $0D, $02
#_0C8892: db $26 ; Byte Fill
#_0C8893: db $1A
#_0C8894: db $00 ; Direct Copy
#_0C8895: db $01
#_0C8896: db $22 ; Byte Fill
#_0C8897: db $06
#_0C8898: db $22 ; Byte Fill
#_0C8899: db $0D
#_0C889A: db $03 ; Direct Copy
#_0C889B: db $06, $02, $12, $12
#_0C889F: db $24 ; Byte Fill
#_0C88A0: db $1A
#_0C88A1: db $00 ; Direct Copy
#_0C88A2: db $01
#_0C88A3: db $22 ; Byte Fill
#_0C88A4: db $06
#_0C88A5: db $22 ; Byte Fill
#_0C88A6: db $0D
#_0C88A7: db $00 ; Direct Copy
#_0C88A8: db $06
#_0C88A9: db $22 ; Byte Fill
#_0C88AA: db $1A
#_0C88AB: db $0B ; Direct Copy
#_0C88AC: db $02, $1A, $0B, $0B, $1A, $01, $03, $07
#_0C88B4: db $00, $00, $06, $01
#_0C88B8: db $27 ; Byte Fill
#_0C88B9: db $00
#_0C88BA: db $03 ; Direct Copy
#_0C88BB: db $1A, $01, $03, $1A
#_0C88BF: db $29 ; Byte Fill
#_0C88C0: db $02
#_0C88C1: db $01 ; Direct Copy
#_0C88C2: db $09, $05
#_0C88C4: db $22 ; Byte Fill
#_0C88C5: db $1A
#_0C88C6: db $01 ; Direct Copy
#_0C88C7: db $01, $01
#_0C88C9: db $22 ; Byte Fill
#_0C88CA: db $1A
#_0C88CB: db $00 ; Direct Copy
#_0C88CC: db $01
#_0C88CD: db $43 ; Word Fill
#_0C88CE: db $01, $1A ;  Word Fill
#_0C88D0: db $00 ; Direct Copy
#_0C88D1: db $0D
#_0C88D2: db $83 ; Repeat Fill
#_0C88D3: db $00, $3D ; Repeat Fill bytes
#_0C88D5: db $FF ; End of Map 67

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen67_Low:
#_0C88D6: db $E0, $2B ; EXT Direct Copy
#_0C88D8: db $FB, $F8, $5D, $A0, $A1, $FB, $E3, $A1
#_0C88E0: db $FB, $5E, $5F, $FB, $60, $21, $61, $71
#_0C88E8: db $02, $03, $02, $A0, $A1, $FB, $62, $E9
#_0C88F0: db $63, $7F, $82, $FB, $16, $17, $64, $65
#_0C88F8: db $FB, $03, $0C, $E3, $A1, $FB, $66, $70
#_0C8900: db $C1, $31, $67, $4E
#_0C8904: db $62 ; Increasing Fill
#_0C8905: db $68 ; Increasing Fill Start
#_0C8906: db $01 ; Direct Copy
#_0C8907: db $71, $20
#_0C8909: db $62 ; Increasing Fill
#_0C890A: db $6B ; Increasing Fill Start
#_0C890B: db $03 ; Direct Copy
#_0C890C: db $8E, $6E, $6F, $5F
#_0C8910: db $63 ; Increasing Fill
#_0C8911: db $70 ; Increasing Fill Start
#_0C8912: db $03 ; Direct Copy
#_0C8913: db $00, $74, $75, $71
#_0C8917: db $66 ; Increasing Fill
#_0C8918: db $76 ; Increasing Fill Start
#_0C8919: db $0F ; Direct Copy
#_0C891A: db $49, $71, $85, $8E, $1D, $7D, $2A, $61
#_0C8922: db $71, $38, $29, $2A, $17, $17, $7E, $02
#_0C892A: db $22 ; Byte Fill
#_0C892B: db $EF
#_0C892C: db $00 ; Direct Copy
#_0C892D: db $E2
#_0C892E: db $63 ; Increasing Fill
#_0C892F: db $7F ; Increasing Fill Start
#_0C8930: db $00 ; Direct Copy
#_0C8931: db $71
#_0C8932: db $62 ; Increasing Fill
#_0C8933: db $83 ; Increasing Fill Start
#_0C8934: db $07 ; Direct Copy
#_0C8935: db $69, $69, $86, $87, $1D, $66, $10, $5A
#_0C893D: db $63 ; Increasing Fill
#_0C893E: db $88 ; Increasing Fill Start
#_0C893F: db $01 ; Direct Copy
#_0C8940: db $71, $18
#_0C8942: db $62 ; Increasing Fill
#_0C8943: db $8C ; Increasing Fill Start
#_0C8944: db $0F ; Direct Copy
#_0C8945: db $5B, $8F, $3D, $14, $A5, $15, $61, $64
#_0C894D: db $42, $90, $E7, $71, $69, $91, $8D, $92
#_0C8955: db $63 ; Increasing Fill
#_0C8956: db $1B ; Increasing Fill Start
#_0C8957: db $0B ; Direct Copy
#_0C8958: db $AC, $1F, $6B, $93, $94, $2A, $95, $71
#_0C8960: db $EF, $96, $5B, $97
#_0C8964: db $63 ; Increasing Fill
#_0C8965: db $23 ; Increasing Fill Start
#_0C8966: db $01 ; Direct Copy
#_0C8967: db $58, $65
#_0C8969: db $62 ; Increasing Fill
#_0C896A: db $98 ; Increasing Fill Start
#_0C896B: db $04 ; Direct Copy
#_0C896C: db $36, $9B, $71, $10, $5A
#_0C8971: db $62 ; Increasing Fill
#_0C8972: db $29 ; Increasing Fill Start
#_0C8973: db $02 ; Direct Copy
#_0C8974: db $61, $2C, $6F
#_0C8977: db $66 ; Increasing Fill
#_0C8978: db $9C ; Increasing Fill Start
#_0C8979: db $03 ; Direct Copy
#_0C897A: db $71, $60, $61, $64
#_0C897E: db $62 ; Increasing Fill
#_0C897F: db $33 ; Increasing Fill Start
#_0C8980: db $0C ; Direct Copy
#_0C8981: db $6E, $4F, $85, $85, $A3, $A4, $4E, $7C
#_0C8989: db $A5, $71, $6A, $6B, $6E
#_0C898E: db $62 ; Increasing Fill
#_0C898F: db $3D ; Increasing Fill Start
#_0C8990: db $12 ; Direct Copy
#_0C8991: db $66, $A6, $27, $A7, $5B, $27, $EF, $EF
#_0C8999: db $A8, $71, $44, $BB, $1C, $1D, $33, $29
#_0C89A1: db $1C, $1D, $9F
#_0C89A4: db $24 ; Byte Fill
#_0C89A5: db $1D
#_0C89A6: db $03 ; Direct Copy
#_0C89A7: db $A9, $71, $4B, $5B
#_0C89AB: db $27 ; Byte Fill
#_0C89AC: db $4C
#_0C89AD: db $03 ; Direct Copy
#_0C89AE: db $CC, $D3, $F4, $57
#_0C89B2: db $62 ; Increasing Fill
#_0C89B3: db $AA ; Increasing Fill Start
#_0C89B4: db $01 ; Direct Copy
#_0C89B5: db $EA, $EB
#_0C89B7: db $62 ; Increasing Fill
#_0C89B8: db $AD ; Increasing Fill Start
#_0C89B9: db $09 ; Direct Copy
#_0C89BA: db $EB, $EB, $AE, $EB, $B0, $4D, $B1, $B2
#_0C89C2: db $EB, $B3
#_0C89C4: db $FF ; End of Map 67

;===================================================================================================

OverworldMap32_Screen68_High:
#_0C89C5: db $0A ; Direct Copy
#_0C89C6: db $0D, $0D, $0A, $01, $0D, $08, $08, $04
#_0C89CE: db $08, $08, $04
#_0C89D1: db $84 ; Repeat Fill
#_0C89D2: db $00, $05 ; Repeat Fill bytes
#_0C89D4: db $24 ; Byte Fill
#_0C89D5: db $0D
#_0C89D6: db $8A ; Repeat Fill
#_0C89D7: db $00, $05 ; Repeat Fill bytes
#_0C89D9: db $03 ; Direct Copy
#_0C89DA: db $0B, $0D, $0A, $0B
#_0C89DE: db $88 ; Repeat Fill
#_0C89DF: db $00, $07 ; Repeat Fill bytes
#_0C89E1: db $06 ; Direct Copy
#_0C89E2: db $04, $08, $08, $03, $0A, $0D, $01
#_0C89E9: db $28 ; Byte Fill
#_0C89EA: db $08
#_0C89EB: db $00 ; Direct Copy
#_0C89EC: db $0D
#_0C89ED: db $85 ; Repeat Fill
#_0C89EE: db $00, $2E ; Repeat Fill bytes
#_0C89F0: db $03 ; Direct Copy
#_0C89F1: db $1A, $0C, $0C, $1A
#_0C89F5: db $22 ; Byte Fill
#_0C89F6: db $0C
#_0C89F7: db $22 ; Byte Fill
#_0C89F8: db $1A
#_0C89F9: db $01 ; Direct Copy
#_0C89FA: db $08, $08
#_0C89FC: db $22 ; Byte Fill
#_0C89FD: db $0D
#_0C89FE: db $09 ; Direct Copy
#_0C89FF: db $01, $07, $03, $00, $1A, $02, $1A, $00
#_0C8A07: db $06, $04
#_0C8A09: db $83 ; Repeat Fill
#_0C8A0A: db $00, $2D ; Repeat Fill bytes
#_0C8A0C: db $05 ; Direct Copy
#_0C8A0D: db $0D, $0A, $01, $07, $03, $06
#_0C8A13: db $22 ; Byte Fill
#_0C8A14: db $00
#_0C8A15: db $0A ; Direct Copy
#_0C8A16: db $1A, $00, $1A, $0D, $08, $08, $0C, $1A
#_0C8A1E: db $1A, $03, $07
#_0C8A21: db $22 ; Byte Fill
#_0C8A22: db $00
#_0C8A23: db $03 ; Direct Copy
#_0C8A24: db $1A, $06, $04, $02
#_0C8A28: db $83 ; Repeat Fill
#_0C8A29: db $00, $4C ; Repeat Fill bytes
#_0C8A2B: db $05 ; Direct Copy
#_0C8A2C: db $1A, $0D, $0D, $03, $0D, $1A
#_0C8A32: db $25 ; Byte Fill
#_0C8A33: db $0D
#_0C8A34: db $83 ; Repeat Fill
#_0C8A35: db $00, $6C ; Repeat Fill bytes
#_0C8A37: db $04 ; Direct Copy
#_0C8A38: db $01, $03, $04, $03, $00
#_0C8A3D: db $22 ; Byte Fill
#_0C8A3E: db $0D
#_0C8A3F: db $01 ; Direct Copy
#_0C8A40: db $1A, $0D
#_0C8A42: db $22 ; Byte Fill
#_0C8A43: db $00
#_0C8A44: db $E0, $21 ; EXT Direct Copy
#_0C8A46: db $01, $0B, $08, $01, $03, $1A, $02, $02
#_0C8A4E: db $10, $10, $02, $02, $0B, $1A, $00, $17
#_0C8A56: db $1A, $01, $08, $03, $0D, $0D, $01, $01
#_0C8A5E: db $16, $16, $01, $01, $03, $0B, $0D, $1A
#_0C8A66: db $1A, $01
#_0C8A68: db $22 ; Byte Fill
#_0C8A69: db $0D
#_0C8A6A: db $19 ; Direct Copy
#_0C8A6B: db $0C, $01, $08, $01, $03, $06, $00, $03
#_0C8A73: db $03, $0D, $0D, $02, $0D, $0D, $01, $0D
#_0C8A7B: db $02, $07, $0D, $0D, $07, $03, $03, $07
#_0C8A83: db $03, $03
#_0C8A85: db $25 ; Byte Fill
#_0C8A86: db $01
#_0C8A87: db $01 ; Direct Copy
#_0C8A88: db $0D, $0D
#_0C8A8A: db $24 ; Byte Fill
#_0C8A8B: db $03
#_0C8A8C: db $01 ; Direct Copy
#_0C8A8D: db $0B, $07
#_0C8A8F: db $24 ; Byte Fill
#_0C8A90: db $03
#_0C8A91: db $05 ; Direct Copy
#_0C8A92: db $01, $0B, $01, $01, $0D, $01
#_0C8A98: db $24 ; Byte Fill
#_0C8A99: db $0D
#_0C8A9A: db $24 ; Byte Fill
#_0C8A9B: db $03
#_0C8A9C: db $FF ; End of Map 68

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen68_Low:
#_0C8A9D: db $0A ; Direct Copy
#_0C8A9E: db $4F, $50, $39, $E3, $51, $D2, $D3, $42
#_0C8AA6: db $D2, $D3, $42
#_0C8AA9: db $84 ; Repeat Fill
#_0C8AAA: db $00, $05 ; Repeat Fill bytes
#_0C8AAC: db $01 ; Direct Copy
#_0C8AAD: db $52, $4F
#_0C8AAF: db $62 ; Increasing Fill
#_0C8AB0: db $53 ; Increasing Fill Start
#_0C8AB1: db $05 ; Direct Copy
#_0C8AB2: db $99, $44, $4A, $99, $44, $4A
#_0C8AB8: db $84 ; Repeat Fill
#_0C8AB9: db $00, $15 ; Repeat Fill bytes
#_0C8ABB: db $09 ; Direct Copy
#_0C8ABC: db $4D, $56, $39, $58, $39, $9F, $4B, $39
#_0C8AC4: db $9F, $4B
#_0C8AC6: db $85 ; Repeat Fill
#_0C8AC7: db $00, $24 ; Repeat Fill bytes
#_0C8AC9: db $0F ; Direct Copy
#_0C8ACA: db $63, $09, $53, $E3, $9C, $A5, $A6, $9C
#_0C8AD2: db $A5, $A6, $9C, $A5, $A6, $51, $D2, $D3
#_0C8ADA: db $83 ; Repeat Fill
#_0C8ADB: db $00, $30 ; Repeat Fill bytes
#_0C8ADD: db $03 ; Direct Copy
#_0C8ADE: db $B4, $39, $39, $B5
#_0C8AE2: db $22 ; Byte Fill
#_0C8AE3: db $39
#_0C8AE4: db $62 ; Increasing Fill
#_0C8AE5: db $B6 ; Increasing Fill Start
#_0C8AE6: db $18 ; Direct Copy
#_0C8AE7: db $99, $44, $5C, $5D, $53, $E3, $6D, $D5
#_0C8AEF: db $1D, $B9, $DE, $BA, $1D, $66, $38, $39
#_0C8AF7: db $9F, $4B, $9C, $64, $39, $E3, $6D, $FF
#_0C8AFF: db $66
#_0C8B00: db $22 ; Byte Fill
#_0C8B01: db $1D
#_0C8B02: db $0A ; Direct Copy
#_0C8B03: db $BB, $1D, $BC, $51, $D2, $D3, $90, $BD
#_0C8B0B: db $BE, $95, $6D
#_0C8B0E: db $22 ; Byte Fill
#_0C8B0F: db $1D
#_0C8B10: db $0F ; Direct Copy
#_0C8B11: db $BB, $66, $BB, $DE, $BF, $C0, $43, $44
#_0C8B19: db $C1, $78, $6F, $9D, $7A, $C2, $58, $69
#_0C8B21: db $22 ; Byte Fill
#_0C8B22: db $6C
#_0C8B23: db $09 ; Direct Copy
#_0C8B24: db $7C, $C3, $81, $4A, $4B, $F8, $9C, $84
#_0C8B2C: db $A8, $97
#_0C8B2E: db $62 ; Increasing Fill
#_0C8B2F: db $83 ; Increasing Fill Start
#_0C8B30: db $01 ; Direct Copy
#_0C8B31: db $C4, $86
#_0C8B33: db $22 ; Byte Fill
#_0C8B34: db $1D
#_0C8B35: db $E0, $3E ; EXT Direct Copy
#_0C8B37: db $42, $47, $D3, $E5, $BB, $C5, $61, $61
#_0C8B3F: db $F7, $F8, $61, $61, $D4, $C6, $B2, $2A
#_0C8B47: db $C7, $4E, $41, $5C, $91, $92, $22, $22
#_0C8B4F: db $3B, $3C, $22, $22, $B1, $D4, $86, $C8
#_0C8B57: db $C9, $58, $AF, $97, $98, $DE, $60, $2D
#_0C8B5F: db $1E, $D5, $66, $1D, $56, $B1, $99, $9D
#_0C8B67: db $08, $9D, $9D, $06, $9E, $D2, $BF, $9F
#_0C8B6F: db $A0, $90, $44, $44, $BB, $56, $BA
#_0C8B76: db $23 ; Byte Fill
#_0C8B77: db $E5
#_0C8B78: db $03 ; Direct Copy
#_0C8B79: db $06, $06, $9E, $A1
#_0C8B7D: db $24 ; Byte Fill
#_0C8B7E: db $4B
#_0C8B7F: db $01 ; Direct Copy
#_0C8B80: db $45, $BF
#_0C8B82: db $24 ; Byte Fill
#_0C8B83: db $44
#_0C8B84: db $02 ; Direct Copy
#_0C8B85: db $06, $4B, $06
#_0C8B88: db $43 ; Word Fill
#_0C8B89: db $06, $A2 ;  Word Fill
#_0C8B8B: db $03 ; Direct Copy
#_0C8B8C: db $A3, $4B, $9E, $A1
#_0C8B90: db $24 ; Byte Fill
#_0C8B91: db $4B
#_0C8B92: db $FF ; End of Map 68

;===================================================================================================

OverworldMap32_Screen69_High:
#_0C8B93: db $06 ; Direct Copy
#_0C8B94: db $04, $08, $08, $04, $08, $08, $04
#_0C8B9B: db $23 ; Byte Fill
#_0C8B9C: db $08
#_0C8B9D: db $22 ; Byte Fill
#_0C8B9E: db $0D
#_0C8B9F: db $87 ; Repeat Fill
#_0C8BA0: db $00, $01 ; Repeat Fill bytes
#_0C8BA2: db $08 ; Direct Copy
#_0C8BA3: db $1A, $01, $08, $01, $0D, $0D, $12, $01
#_0C8BAB: db $01
#_0C8BAC: db $88 ; Repeat Fill
#_0C8BAD: db $00, $0F ; Repeat Fill bytes
#_0C8BAF: db $04 ; Direct Copy
#_0C8BB0: db $0D, $04, $06, $04, $02
#_0C8BB5: db $22 ; Byte Fill
#_0C8BB6: db $0D
#_0C8BB7: db $25 ; Byte Fill
#_0C8BB8: db $08
#_0C8BB9: db $00 ; Direct Copy
#_0C8BBA: db $1A
#_0C8BBB: db $23 ; Byte Fill
#_0C8BBC: db $02
#_0C8BBD: db $0C ; Direct Copy
#_0C8BBE: db $03, $01, $1A, $0D, $0D, $01, $00, $1A
#_0C8BC6: db $1A, $05, $16, $02, $02
#_0C8BCB: db $22 ; Byte Fill
#_0C8BCC: db $01
#_0C8BCD: db $43 ; Word Fill
#_0C8BCE: db $1A, $01 ;  Word Fill
#_0C8BD0: db $0E ; Direct Copy
#_0C8BD1: db $08, $0D, $02, $04, $1A, $00, $16, $02
#_0C8BD9: db $06, $04, $02, $10, $1A, $01, $1A
#_0C8BE0: db $22 ; Byte Fill
#_0C8BE1: db $0D
#_0C8BE2: db $23 ; Byte Fill
#_0C8BE3: db $01
#_0C8BE4: db $04 ; Direct Copy
#_0C8BE5: db $00, $00, $09, $0D, $0D
#_0C8BEA: db $23 ; Byte Fill
#_0C8BEB: db $1A
#_0C8BEC: db $1A ; Direct Copy
#_0C8BED: db $0D, $0D, $0C, $04, $00, $01, $01, $1A
#_0C8BF5: db $07, $03, $1A, $06, $0D, $1A, $1A, $01
#_0C8BFD: db $08, $08, $04, $04, $03, $00, $01, $05
#_0C8C05: db $02, $03, $1A
#_0C8C08: db $45 ; Word Fill
#_0C8C09: db $1A, $08 ;  Word Fill
#_0C8C0B: db $0E ; Direct Copy
#_0C8C0C: db $08, $04, $04, $01, $03, $06, $01, $01
#_0C8C14: db $03, $0D, $0D, $08, $1A, $08, $0D
#_0C8C1B: db $22 ; Byte Fill
#_0C8C1C: db $08
#_0C8C1D: db $00 ; Direct Copy
#_0C8C1E: db $01
#_0C8C1F: db $22 ; Byte Fill
#_0C8C20: db $1A
#_0C8C21: db $22 ; Byte Fill
#_0C8C22: db $0C
#_0C8C23: db $0E ; Direct Copy
#_0C8C24: db $0D, $0D, $1A, $0D, $02, $04, $06, $01
#_0C8C2C: db $08, $01, $01, $0C, $05, $04, $02
#_0C8C33: db $62 ; Increasing Fill
#_0C8C34: db $02 ; Increasing Fill Start
#_0C8C35: db $22 ; Byte Fill
#_0C8C36: db $01
#_0C8C37: db $02 ; Direct Copy
#_0C8C38: db $04, $01, $03
#_0C8C3B: db $22 ; Byte Fill
#_0C8C3C: db $0D
#_0C8C3D: db $08 ; Direct Copy
#_0C8C3E: db $1A, $02, $04, $01, $01, $03, $03, $00
#_0C8C46: db $07
#_0C8C47: db $23 ; Byte Fill
#_0C8C48: db $06
#_0C8C49: db $23 ; Byte Fill
#_0C8C4A: db $01
#_0C8C4B: db $0B ; Direct Copy
#_0C8C4C: db $02, $03, $01, $03, $03, $0D, $08, $00
#_0C8C54: db $00, $06, $00, $00
#_0C8C58: db $25 ; Byte Fill
#_0C8C59: db $03
#_0C8C5A: db $03 ; Direct Copy
#_0C8C5B: db $01, $0C, $03, $03
#_0C8C5F: db $25 ; Byte Fill
#_0C8C60: db $00
#_0C8C61: db $25 ; Byte Fill
#_0C8C62: db $03
#_0C8C63: db $22 ; Byte Fill
#_0C8C64: db $0D
#_0C8C65: db $01 ; Direct Copy
#_0C8C66: db $06, $06
#_0C8C68: db $24 ; Byte Fill
#_0C8C69: db $00
#_0C8C6A: db $FF ; End of Map 69

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen69_Low:
#_0C8C6B: db $E0, $2F ; EXT Direct Copy
#_0C8C6D: db $42, $D2, $D3, $42, $D2, $D3, $42, $D2
#_0C8C75: db $D3, $A4, $9D, $A4, $A5, $51, $D2, $D3
#_0C8C7D: db $4A, $99, $44, $4A, $99, $44, $CA, $4E
#_0C8C85: db $41, $68, $A6, $A7, $E2, $4D, $4E, $41
#_0C8C8D: db $39, $9F, $4B, $39, $9F, $4B, $CB, $58
#_0C8C95: db $AF, $25, $66, $81, $61, $C6, $B3, $B4
#_0C8C9D: db $62 ; Increasing Fill
#_0C8C9E: db $A4 ; Increasing Fill Start
#_0C8C9F: db $04 ; Direct Copy
#_0C8CA0: db $9C, $A5, $A6, $CC, $60
#_0C8CA5: db $22 ; Byte Fill
#_0C8CA6: db $61
#_0C8CA7: db $0C ; Direct Copy
#_0C8CA8: db $B4, $22, $CD, $BC, $BD, $68, $99, $CE
#_0C8CB0: db $CF, $52, $1B, $79, $02
#_0C8CB5: db $22 ; Byte Fill
#_0C8CB6: db $22
#_0C8CB7: db $1E ; Direct Copy
#_0C8CB8: db $D0, $AB, $D1, $4E, $41, $C4, $61, $7C
#_0C8CC0: db $D2, $1D, $23, $7A, $66, $81, $61, $F7
#_0C8CC8: db $D3, $B3, $D4, $B3, $B4, $C7, $22, $23
#_0C8CD0: db $E6, $DB, $1D, $FB, $ED, $92, $C9
#_0C8CD7: db $62 ; Increasing Fill
#_0C8CD8: db $D5 ; Increasing Fill Start
#_0C8CD9: db $E0, $22 ; EXT Direct Copy
#_0C8CDB: db $CD, $BC, $BD, $43, $2F, $1D, $E4, $E6
#_0C8CE3: db $D8, $E6, $AB, $D9, $7C, $CD, $DA, $DB
#_0C8CEB: db $4D, $43, $44, $39, $3A, $FF, $1D, $E4
#_0C8CF3: db $5A, $61, $B4, $DC, $DD, $0F, $DE, $11
#_0C8CFB: db $DF, $4A, $4B
#_0C8CFE: db $62 ; Increasing Fill
#_0C8CFF: db $42 ; Increasing Fill Start
#_0C8D00: db $11 ; Direct Copy
#_0C8D01: db $BE, $66, $1F, $22, $A8, $D6, $D7, $1B
#_0C8D09: db $E0, $1D, $D8, $4D, $4E, $42, $4E, $E1
#_0C8D11: db $E2, $B4
#_0C8D13: db $22 ; Byte Fill
#_0C8D14: db $39
#_0C8D15: db $17 ; Direct Copy
#_0C8D16: db $DD, $DE, $E3, $E0, $08, $BA, $66, $67
#_0C8D1E: db $49, $58, $65, $39, $0C, $7D, $08, $08
#_0C8D26: db $B3, $82, $E5, $F9, $E5, $BC, $1E, $DB
#_0C8D2E: db $22 ; Byte Fill
#_0C8D2F: db $9D
#_0C8D30: db $08 ; Direct Copy
#_0C8D31: db $E4, $60, $82, $E5, $E5, $BB, $A8, $1D
#_0C8D39: db $E5
#_0C8D3A: db $23 ; Byte Fill
#_0C8D3B: db $9C
#_0C8D3C: db $23 ; Byte Fill
#_0C8D3D: db $E5
#_0C8D3E: db $0B ; Direct Copy
#_0C8D3F: db $02, $A8, $41, $44, $44, $E8, $A1, $B6
#_0C8D47: db $B7, $3B, $B6, $B7
#_0C8D4B: db $25 ; Byte Fill
#_0C8D4C: db $44
#_0C8D4D: db $04 ; Direct Copy
#_0C8D4E: db $48, $E8, $8C, $8D, $EE
#_0C8D53: db $62 ; Increasing Fill
#_0C8D54: db $09 ; Increasing Fill Start
#_0C8D55: db $01 ; Direct Copy
#_0C8D56: db $09, $0A
#_0C8D58: db $25 ; Byte Fill
#_0C8D59: db $4B
#_0C8D5A: db $62 ; Increasing Fill
#_0C8D5B: db $E9 ; Increasing Fill Start
#_0C8D5C: db $03 ; Direct Copy
#_0C8D5D: db $49, $45, $07, $08
#_0C8D61: db $62 ; Increasing Fill
#_0C8D62: db $06 ; Increasing Fill Start
#_0C8D63: db $FF ; End of Map 69

;===================================================================================================

OverworldMap32_Screen2A_High:
#_0C8D64: db $05 ; Direct Copy
#_0C8D65: db $04, $08, $08, $04, $08, $08
#_0C8D6B: db $89 ; Repeat Fill
#_0C8D6C: db $00, $00 ; Repeat Fill bytes
#_0C8D6E: db $85 ; Repeat Fill
#_0C8D6F: db $00, $00 ; Repeat Fill bytes
#_0C8D71: db $02 ; Direct Copy
#_0C8D72: db $1A, $01, $1A
#_0C8D75: db $97 ; Repeat Fill
#_0C8D76: db $00, $09 ; Repeat Fill bytes
#_0C8D78: db $24 ; Byte Fill
#_0C8D79: db $08
#_0C8D7A: db $02 ; Direct Copy
#_0C8D7B: db $1A, $01, $1A
#_0C8D7E: db $22 ; Byte Fill
#_0C8D7F: db $08
#_0C8D80: db $00 ; Direct Copy
#_0C8D81: db $0D
#_0C8D82: db $83 ; Repeat Fill
#_0C8D83: db $00, $0D ; Repeat Fill bytes
#_0C8D85: db $22 ; Byte Fill
#_0C8D86: db $08
#_0C8D87: db $00 ; Direct Copy
#_0C8D88: db $06
#_0C8D89: db $23 ; Byte Fill
#_0C8D8A: db $01
#_0C8D8B: db $03 ; Direct Copy
#_0C8D8C: db $00, $06, $01, $01
#_0C8D90: db $85 ; Repeat Fill
#_0C8D91: db $00, $0D ; Repeat Fill bytes
#_0C8D93: db $09 ; Direct Copy
#_0C8D94: db $1A, $00, $01, $01, $1A, $01, $04, $00
#_0C8D9C: db $1A, $1A
#_0C8D9E: db $84 ; Repeat Fill
#_0C8D9F: db $00, $0D ; Repeat Fill bytes
#_0C8DA1: db $05 ; Direct Copy
#_0C8DA2: db $15, $1A, $00, $01, $12, $09
#_0C8DA8: db $22 ; Byte Fill
#_0C8DA9: db $00
#_0C8DAA: db $01 ; Direct Copy
#_0C8DAB: db $01, $06
#_0C8DAD: db $84 ; Repeat Fill
#_0C8DAE: db $00, $0D ; Repeat Fill bytes
#_0C8DB0: db $22 ; Byte Fill
#_0C8DB1: db $01
#_0C8DB2: db $02 ; Direct Copy
#_0C8DB3: db $06, $1A, $00
#_0C8DB6: db $22 ; Byte Fill
#_0C8DB7: db $01
#_0C8DB8: db $03 ; Direct Copy
#_0C8DB9: db $06, $08, $01, $0E
#_0C8DBD: db $83 ; Repeat Fill
#_0C8DBE: db $00, $0F ; Repeat Fill bytes
#_0C8DC0: db $0B ; Direct Copy
#_0C8DC1: db $01, $1A, $00, $06, $08, $06, $1A, $03
#_0C8DC9: db $06, $01, $1A, $0E
#_0C8DCD: db $22 ; Byte Fill
#_0C8DCE: db $04
#_0C8DCF: db $24 ; Byte Fill
#_0C8DD0: db $01
#_0C8DD1: db $07 ; Direct Copy
#_0C8DD2: db $06, $01, $02, $01, $01, $07, $00, $01
#_0C8DDA: db $83 ; Repeat Fill
#_0C8DDB: db $00, $13 ; Repeat Fill bytes
#_0C8DDD: db $02 ; Direct Copy
#_0C8DDE: db $1A, $01, $01
#_0C8DE1: db $23 ; Byte Fill
#_0C8DE2: db $00
#_0C8DE3: db $05 ; Direct Copy
#_0C8DE4: db $01, $01, $00, $08, $0C, $04
#_0C8DEA: db $22 ; Byte Fill
#_0C8DEB: db $08
#_0C8DEC: db $01 ; Direct Copy
#_0C8DED: db $1A, $01
#_0C8DEF: db $83 ; Repeat Fill
#_0C8DF0: db $00, $43 ; Repeat Fill bytes
#_0C8DF2: db $0D ; Direct Copy
#_0C8DF3: db $09, $03, $04, $03, $08, $08, $04, $07
#_0C8DFB: db $08, $08, $04, $01, $01, $00
#_0C8E01: db $22 ; Byte Fill
#_0C8E02: db $01
#_0C8E03: db $11 ; Direct Copy
#_0C8E04: db $06, $06, $01, $0B, $08, $04, $03, $00
#_0C8E0C: db $01, $08, $08, $1A, $08, $03, $1A, $1A
#_0C8E14: db $0B, $1A
#_0C8E16: db $83 ; Repeat Fill
#_0C8E17: db $00, $3C ; Repeat Fill bytes
#_0C8E19: db $02 ; Direct Copy
#_0C8E1A: db $01, $00, $03
#_0C8E1D: db $22 ; Byte Fill
#_0C8E1E: db $08
#_0C8E1F: db $01 ; Direct Copy
#_0C8E20: db $0B, $00
#_0C8E22: db $86 ; Repeat Fill
#_0C8E23: db $00, $0F ; Repeat Fill bytes
#_0C8E25: db $23 ; Byte Fill
#_0C8E26: db $04
#_0C8E27: db $03 ; Direct Copy
#_0C8E28: db $01, $0B, $08, $01
#_0C8E2C: db $84 ; Repeat Fill
#_0C8E2D: db $00, $9D ; Repeat Fill bytes
#_0C8E2F: db $83 ; Repeat Fill
#_0C8E30: db $00, $00 ; Repeat Fill bytes
#_0C8E32: db $FF ; End of Map 2A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen2A_Low:
#_0C8E33: db $05 ; Direct Copy
#_0C8E34: db $42, $D2, $D3, $42, $D2, $D3
#_0C8E3A: db $89 ; Repeat Fill
#_0C8E3B: db $00, $00 ; Repeat Fill bytes
#_0C8E3D: db $08 ; Direct Copy
#_0C8E3E: db $4A, $99, $44, $4A, $99, $44, $CA, $4E
#_0C8E46: db $E5
#_0C8E47: db $85 ; Repeat Fill
#_0C8E48: db $00, $10 ; Repeat Fill bytes
#_0C8E4A: db $09 ; Direct Copy
#_0C8E4B: db $4A, $39, $9F, $4B, $39, $9F, $4B, $CB
#_0C8E53: db $58, $E6
#_0C8E55: db $85 ; Repeat Fill
#_0C8E56: db $00, $20 ; Repeat Fill bytes
#_0C8E58: db $03 ; Direct Copy
#_0C8E59: db $39, $42, $D2, $D3
#_0C8E5D: db $62 ; Increasing Fill
#_0C8E5E: db $A4 ; Increasing Fill Start
#_0C8E5F: db $06 ; Direct Copy
#_0C8E60: db $E7, $43, $E8, $9C, $A5, $A6, $51
#_0C8E67: db $85 ; Repeat Fill
#_0C8E68: db $00, $0D ; Repeat Fill bytes
#_0C8E6A: db $02 ; Direct Copy
#_0C8E6B: db $9A, $70, $1E
#_0C8E6E: db $62 ; Increasing Fill
#_0C8E6F: db $4D ; Increasing Fill Start
#_0C8E70: db $04 ; Direct Copy
#_0C8E71: db $1D, $70, $1E, $4D, $43
#_0C8E76: db $84 ; Repeat Fill
#_0C8E77: db $00, $1E ; Repeat Fill bytes
#_0C8E79: db $0A ; Direct Copy
#_0C8E7A: db $E9, $B6, $26, $57, $EA, $65, $56, $B6
#_0C8E82: db $EB, $EC, $4A
#_0C8E85: db $83 ; Repeat Fill
#_0C8E86: db $00, $2E ; Repeat Fill bytes
#_0C8E88: db $E0, $2D ; EXT Direct Copy
#_0C8E8A: db $E4, $ED, $09, $2F, $26, $B4, $1D, $EE
#_0C8E92: db $09, $2F, $70, $4D, $4E, $42, $4A, $BB
#_0C8E9A: db $4F, $30, $0E, $2B, $EE, $99, $1E, $30
#_0C8EA2: db $0E, $2B, $2D, $1E, $F7, $4A, $39, $BE
#_0C8EAA: db $C8, $1E, $EF, $9F, $70, $2D, $70, $F0
#_0C8EB2: db $E2, $66, $3C, $F1, $F8, $39
#_0C8EB8: db $62 ; Increasing Fill
#_0C8EB9: db $42 ; Increasing Fill Start
#_0C8EBA: db $62 ; Increasing Fill
#_0C8EBB: db $42 ; Increasing Fill Start
#_0C8EBC: db $19 ; Direct Copy
#_0C8EBD: db $3C, $70, $5A, $DE, $61, $62, $9E, $1D
#_0C8EC5: db $61, $42, $42, $43, $F2, $F3, $4E, $4F
#_0C8ECD: db $1C, $1C, $B2, $AA, $67, $68, $A5, $B8
#_0C8ED5: db $04, $4A
#_0C8ED7: db $62 ; Increasing Fill
#_0C8ED8: db $49 ; Increasing Fill Start
#_0C8ED9: db $E0, $2F ; EXT Direct Copy
#_0C8EDB: db $F4, $58, $C8, $66, $61, $62, $B4, $DB
#_0C8EE3: db $25, $D5, $BD, $4B, $39, $E6, $4D, $4E
#_0C8EEB: db $45, $43, $44, $1D, $67, $68, $3C, $70
#_0C8EF3: db $66, $42, $47, $D3, $42, $FB, $1D, $67
#_0C8EFB: db $42, $43, $F5, $CC, $DB, $F6, $F7, $FE
#_0C8F03: db $F8, $55, $99, $44, $4A, $74, $1D, $DB
#_0C8F0B: db $62 ; Increasing Fill
#_0C8F0C: db $49 ; Increasing Fill Start
#_0C8F0D: db $02 ; Direct Copy
#_0C8F0E: db $43, $1D, $38
#_0C8F11: db $86 ; Repeat Fill
#_0C8F12: db $00, $29 ; Repeat Fill bytes
#_0C8F14: db $08 ; Direct Copy
#_0C8F15: db $07, $60, $2C, $42, $47, $D3, $62, $AA
#_0C8F1D: db $61
#_0C8F1E: db $86 ; Repeat Fill
#_0C8F1F: db $00, $00 ; Repeat Fill bytes
#_0C8F21: db $FF ; End of Map 2A

;===================================================================================================

OverworldMap32_Screen2B_High:
#_0C8F22: db $23 ; Byte Fill
#_0C8F23: db $08
#_0C8F24: db $0A ; Direct Copy
#_0C8F25: db $06, $01, $08, $08, $04, $08, $08, $04
#_0C8F2D: db $08, $08, $04
#_0C8F30: db $23 ; Byte Fill
#_0C8F31: db $08
#_0C8F32: db $22 ; Byte Fill
#_0C8F33: db $1A
#_0C8F34: db $88 ; Repeat Fill
#_0C8F35: db $00, $06 ; Repeat Fill bytes
#_0C8F37: db $23 ; Byte Fill
#_0C8F38: db $08
#_0C8F39: db $02 ; Direct Copy
#_0C8F3A: db $06, $08, $01
#_0C8F3D: db $27 ; Byte Fill
#_0C8F3E: db $08
#_0C8F3F: db $00 ; Direct Copy
#_0C8F40: db $04
#_0C8F41: db $22 ; Byte Fill
#_0C8F42: db $08
#_0C8F43: db $0C ; Direct Copy
#_0C8F44: db $01, $01, $04, $04, $0B, $0B, $1A, $16
#_0C8F4C: db $01, $01, $03, $0E, $04
#_0C8F51: db $22 ; Byte Fill
#_0C8F52: db $08
#_0C8F53: db $02 ; Direct Copy
#_0C8F54: db $0C, $1A, $04
#_0C8F57: db $83 ; Repeat Fill
#_0C8F58: db $00, $08 ; Repeat Fill bytes
#_0C8F5A: db $05 ; Direct Copy
#_0C8F5B: db $04, $03, $1A, $01, $1A, $04
#_0C8F61: db $22 ; Byte Fill
#_0C8F62: db $08
#_0C8F63: db $03 ; Direct Copy
#_0C8F64: db $04, $04, $1B, $0D
#_0C8F68: db $84 ; Repeat Fill
#_0C8F69: db $00, $50 ; Repeat Fill bytes
#_0C8F6B: db $02 ; Direct Copy
#_0C8F6C: db $1B, $01, $1B
#_0C8F6F: db $25 ; Byte Fill
#_0C8F70: db $08
#_0C8F71: db $00 ; Direct Copy
#_0C8F72: db $1B
#_0C8F73: db $22 ; Byte Fill
#_0C8F74: db $08
#_0C8F75: db $07 ; Direct Copy
#_0C8F76: db $04, $08, $1B, $00, $01, $06, $00, $1B
#_0C8F7E: db $22 ; Byte Fill
#_0C8F7F: db $08
#_0C8F80: db $01 ; Direct Copy
#_0C8F81: db $00, $1B
#_0C8F83: db $84 ; Repeat Fill
#_0C8F84: db $00, $08 ; Repeat Fill bytes
#_0C8F86: db $01 ; Direct Copy
#_0C8F87: db $1B, $01
#_0C8F89: db $23 ; Byte Fill
#_0C8F8A: db $1B
#_0C8F8B: db $22 ; Byte Fill
#_0C8F8C: db $08
#_0C8F8D: db $08 ; Direct Copy
#_0C8F8E: db $00, $01, $04, $08, $15, $08, $08, $00
#_0C8F96: db $07
#_0C8F97: db $22 ; Byte Fill
#_0C8F98: db $1B
#_0C8F99: db $10 ; Direct Copy
#_0C8F9A: db $06, $08, $08, $01, $08, $14, $04, $08
#_0C8FA2: db $1B, $08, $06, $00, $03, $1B, $1B, $06
#_0C8FAA: db $00
#_0C8FAB: db $24 ; Byte Fill
#_0C8FAC: db $08
#_0C8FAD: db $06 ; Direct Copy
#_0C8FAE: db $04, $08, $08, $1B, $00, $00, $1B
#_0C8FB5: db $62 ; Increasing Fill
#_0C8FB6: db $03 ; Increasing Fill Start
#_0C8FB7: db $00 ; Direct Copy
#_0C8FB8: db $1B
#_0C8FB9: db $27 ; Byte Fill
#_0C8FBA: db $08
#_0C8FBB: db $0A ; Direct Copy
#_0C8FBC: db $1B, $00, $0F, $03, $1B, $1B, $05, $1B
#_0C8FC4: db $08, $15, $14
#_0C8FC7: db $43 ; Word Fill
#_0C8FC8: db $04, $00 ;  Word Fill
#_0C8FCA: db $00 ; Direct Copy
#_0C8FCB: db $06
#_0C8FCC: db $22 ; Byte Fill
#_0C8FCD: db $1B
#_0C8FCE: db $01 ; Direct Copy
#_0C8FCF: db $05, $02
#_0C8FD1: db $22 ; Byte Fill
#_0C8FD2: db $1B
#_0C8FD3: db $05 ; Direct Copy
#_0C8FD4: db $08, $1B, $04, $04, $00, $00
#_0C8FDA: db $23 ; Byte Fill
#_0C8FDB: db $1B
#_0C8FDC: db $01 ; Direct Copy
#_0C8FDD: db $10, $15
#_0C8FDF: db $23 ; Byte Fill
#_0C8FE0: db $1B
#_0C8FE1: db $83 ; Repeat Fill
#_0C8FE2: db $00, $46 ; Repeat Fill bytes
#_0C8FE4: db $0A ; Direct Copy
#_0C8FE5: db $02, $1B, $1B, $10, $01, $1B, $01, $0D
#_0C8FED: db $01, $1A, $01
#_0C8FF0: db $83 ; Repeat Fill
#_0C8FF1: db $00, $05 ; Repeat Fill bytes
#_0C8FF3: db $08 ; Direct Copy
#_0C8FF4: db $04, $07, $06, $10, $1B, $0D, $01, $0C
#_0C8FFC: db $0B
#_0C8FFD: db $22 ; Byte Fill
#_0C8FFE: db $01
#_0C8FFF: db $00 ; Direct Copy
#_0C9000: db $19
#_0C9001: db $FF ; End of Map 2B

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen2B_Low:
#_0C9002: db $09 ; Direct Copy
#_0C9003: db $D2, $D3, $A4, $9D, $66, $4D, $43, $44
#_0C900B: db $4A, $99
#_0C900D: db $85 ; Repeat Fill
#_0C900E: db $00, $07 ; Repeat Fill bytes
#_0C9010: db $02 ; Direct Copy
#_0C9011: db $99, $44, $9A
#_0C9014: db $62 ; Increasing Fill
#_0C9015: db $F9 ; Increasing Fill Start
#_0C9016: db $03 ; Direct Copy
#_0C9017: db $4A, $4B, $39, $9F
#_0C901B: db $85 ; Repeat Fill
#_0C901C: db $00, $17 ; Repeat Fill bytes
#_0C901E: db $1D ; Direct Copy
#_0C901F: db $9F, $4B, $A0, $70, $2D, $1E, $4D, $A6
#_0C9027: db $9C, $A5, $4E, $A4, $A5, $4E, $42, $D2
#_0C902F: db $D2, $D3, $62, $1E, $2D, $2E, $FE, $3A
#_0C9037: db $FC, $00, $67, $68, $5F, $F7
#_0C903D: db $83 ; Repeat Fill
#_0C903E: db $00, $0E ; Repeat Fill bytes
#_0C9040: db $02 ; Direct Copy
#_0C9041: db $43, $FD, $38
#_0C9044: db $83 ; Repeat Fill
#_0C9045: db $00, $18 ; Repeat Fill bytes
#_0C9047: db $04 ; Direct Copy
#_0C9048: db $3A, $DB, $FE, $1E, $FF
#_0C904D: db $83 ; Repeat Fill
#_0C904E: db $00, $1E ; Repeat Fill bytes
#_0C9050: db $0D ; Direct Copy
#_0C9051: db $39, $3A, $00, $51, $D2, $D3, $42, $43
#_0C9059: db $01, $02, $26, $03, $9C, $A5
#_0C905F: db $83 ; Repeat Fill
#_0C9060: db $00, $00 ; Repeat Fill bytes
#_0C9062: db $10 ; Direct Copy
#_0C9063: db $04, $BA, $99, $44, $4A, $BB, $05, $09
#_0C906B: db $2F, $66, $9F, $06, $99, $44, $9A, $AA
#_0C9073: db $07
#_0C9074: db $83 ; Repeat Fill
#_0C9075: db $00, $18 ; Repeat Fill bytes
#_0C9077: db $02 ; Direct Copy
#_0C9078: db $BE, $08, $0E
#_0C907B: db $63 ; Increasing Fill
#_0C907C: db $09 ; Increasing Fill Start
#_0C907D: db $0B ; Direct Copy
#_0C907E: db $9F, $4B, $A0, $B2, $61, $42, $D2, $E4
#_0C9086: db $9C, $9D, $AA, $9F
#_0C908A: db $62 ; Increasing Fill
#_0C908B: db $0D ; Increasing Fill Start
#_0C908C: db $14 ; Direct Copy
#_0C908D: db $66, $D2, $D3, $62, $B8, $F2, $4A, $99
#_0C9095: db $10, $CC, $66, $AA, $8E, $11, $12, $66
#_0C909D: db $BE, $99, $44, $9A, $BD
#_0C90A2: db $83 ; Repeat Fill
#_0C90A3: db $00, $17 ; Repeat Fill bytes
#_0C90A5: db $0A ; Direct Copy
#_0C90A6: db $13, $98, $9F, $14, $B2, $BA, $55, $15
#_0C90AE: db $9F, $4B, $A0
#_0C90B1: db $83 ; Repeat Fill
#_0C90B2: db $00, $26 ; Repeat Fill bytes
#_0C90B4: db $0B ; Direct Copy
#_0C90B5: db $A6, $16, $A1, $08, $56, $17, $18, $59
#_0C90BD: db $19, $D2, $E4, $F3
#_0C90C1: db $43 ; Word Fill
#_0C90C2: db $20, $1F ;  Word Fill
#_0C90C4: db $00 ; Direct Copy
#_0C90C5: db $F5
#_0C90C6: db $62 ; Increasing Fill
#_0C90C7: db $1A ; Increasing Fill Start
#_0C90C8: db $01 ; Direct Copy
#_0C90C9: db $E5, $57
#_0C90CB: db $62 ; Increasing Fill
#_0C90CC: db $1D ; Increasing Fill Start
#_0C90CD: db $05 ; Direct Copy
#_0C90CE: db $99, $20, $2E, $2F, $A0, $A2
#_0C90D4: db $63 ; Increasing Fill
#_0C90D5: db $21 ; Increasing Fill Start
#_0C90D6: db $01 ; Direct Copy
#_0C90D7: db $F6, $92
#_0C90D9: db $63 ; Increasing Fill
#_0C90DA: db $25 ; Increasing Fill Start
#_0C90DB: db $83 ; Repeat Fill
#_0C90DC: db $00, $46 ; Repeat Fill bytes
#_0C90DE: db $0B ; Direct Copy
#_0C90DF: db $4F, $29, $2A, $F6, $EB, $2B, $06, $97
#_0C90E7: db $EB, $AE, $EB, $EB
#_0C90EB: db $83 ; Repeat Fill
#_0C90EC: db $00, $56 ; Repeat Fill bytes
#_0C90EE: db $07 ; Direct Copy
#_0C90EF: db $50, $8E, $6E, $2C, $4C, $06, $ED, $56
#_0C90F7: db $22 ; Byte Fill
#_0C90F8: db $06
#_0C90F9: db $00 ; Direct Copy
#_0C90FA: db $E4
#_0C90FB: db $FF ; End of Map 2B

;===================================================================================================

OverworldMap32_Screen2C_High:
#_0C90FC: db $01 ; Direct Copy
#_0C90FD: db $08, $04
#_0C90FF: db $22 ; Byte Fill
#_0C9100: db $08
#_0C9101: db $0C ; Direct Copy
#_0C9102: db $00, $1B, $06, $00, $00, $07, $00, $06
#_0C910A: db $04, $03, $06, $08, $04
#_0C910F: db $22 ; Byte Fill
#_0C9110: db $08
#_0C9111: db $0A ; Direct Copy
#_0C9112: db $06, $02, $1B, $06, $00, $0C, $06, $04
#_0C911A: db $04, $08, $09
#_0C911D: db $23 ; Byte Fill
#_0C911E: db $08
#_0C911F: db $23 ; Byte Fill
#_0C9120: db $1B
#_0C9121: db $00 ; Direct Copy
#_0C9122: db $06
#_0C9123: db $22 ; Byte Fill
#_0C9124: db $1B
#_0C9125: db $07 ; Direct Copy
#_0C9126: db $04, $0C, $16, $0C, $08, $08, $00, $0E
#_0C912E: db $22 ; Byte Fill
#_0C912F: db $03
#_0C9130: db $23 ; Byte Fill
#_0C9131: db $1B
#_0C9132: db $04 ; Direct Copy
#_0C9133: db $05, $1B, $08, $10, $07
#_0C9138: db $83 ; Repeat Fill
#_0C9139: db $00, $22 ; Repeat Fill bytes
#_0C913B: db $22 ; Byte Fill
#_0C913C: db $0A
#_0C913D: db $0B ; Direct Copy
#_0C913E: db $03, $03, $1B, $0E, $06, $03, $05, $08
#_0C9146: db $07, $08, $14, $01
#_0C914A: db $22 ; Byte Fill
#_0C914B: db $1B
#_0C914C: db $0A ; Direct Copy
#_0C914D: db $15, $16, $03, $03, $07, $01, $08, $08
#_0C9155: db $05, $07, $00
#_0C9158: db $22 ; Byte Fill
#_0C9159: db $1B
#_0C915A: db $23 ; Byte Fill
#_0C915B: db $15
#_0C915C: db $07 ; Direct Copy
#_0C915D: db $03, $02, $07, $00, $02, $08, $07, $09
#_0C9165: db $22 ; Byte Fill
#_0C9166: db $1B
#_0C9167: db $04 ; Direct Copy
#_0C9168: db $0D, $1B, $16, $16, $0D
#_0C916D: db $23 ; Byte Fill
#_0C916E: db $1B
#_0C916F: db $06 ; Direct Copy
#_0C9170: db $00, $03, $05, $07, $02, $1B, $0D
#_0C9177: db $23 ; Byte Fill
#_0C9178: db $1B
#_0C9179: db $01 ; Direct Copy
#_0C917A: db $19, $03
#_0C917C: db $43 ; Word Fill
#_0C917D: db $1B, $01 ;  Word Fill
#_0C917F: db $16 ; Direct Copy
#_0C9180: db $03, $05, $05, $00, $00, $06, $01, $07
#_0C9188: db $1B, $07, $07, $03, $10, $06, $0B, $00
#_0C9190: db $07, $07, $1B, $02, $1B, $0F, $05
#_0C9197: db $83 ; Repeat Fill
#_0C9198: db $00, $71 ; Repeat Fill bytes
#_0C919A: db $07 ; Direct Copy
#_0C919B: db $07, $1B, $0B, $1B, $06, $1B, $07, $0B
#_0C91A3: db $24 ; Byte Fill
#_0C91A4: db $1B
#_0C91A5: db $22 ; Byte Fill
#_0C91A6: db $0F
#_0C91A7: db $03 ; Direct Copy
#_0C91A8: db $1B, $19, $06, $01
#_0C91AC: db $22 ; Byte Fill
#_0C91AD: db $1B
#_0C91AE: db $09 ; Direct Copy
#_0C91AF: db $0B, $06, $06, $0F, $06, $06, $1B, $01
#_0C91B7: db $09, $1B
#_0C91B9: db $23 ; Byte Fill
#_0C91BA: db $02
#_0C91BB: db $22 ; Byte Fill
#_0C91BC: db $06
#_0C91BD: db $03 ; Direct Copy
#_0C91BE: db $03, $03, $1B, $03
#_0C91C2: db $24 ; Byte Fill
#_0C91C3: db $1B
#_0C91C4: db $26 ; Byte Fill
#_0C91C5: db $02
#_0C91C6: db $07 ; Direct Copy
#_0C91C7: db $0F, $01, $1B, $0D, $11, $15, $03, $06
#_0C91CF: db $22 ; Byte Fill
#_0C91D0: db $01
#_0C91D1: db $00 ; Direct Copy
#_0C91D2: db $0A
#_0C91D3: db $22 ; Byte Fill
#_0C91D4: db $01
#_0C91D5: db $08 ; Direct Copy
#_0C91D6: db $0E, $01, $01, $0F, $0D, $01, $03, $02
#_0C91DE: db $00
#_0C91DF: db $84 ; Repeat Fill
#_0C91E0: db $00, $ED ; Repeat Fill bytes
#_0C91E2: db $02 ; Direct Copy
#_0C91E3: db $0D, $01, $01
#_0C91E6: db $FF ; End of Map 2C

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen2C_Low:
#_0C91E7: db $E0, $20 ; EXT Direct Copy
#_0C91E9: db $44, $4A, $99, $44, $9A, $1C, $2D, $8A
#_0C91F1: db $1D, $1D, $41, $1D, $66, $8A, $32, $09
#_0C91F9: db $4B, $39, $9F, $4B, $A0, $3A, $4F, $2E
#_0C9201: db $3A, $1D, $8A, $8F, $8A, $AA, $88, $83
#_0C9209: db $D3
#_0C920A: db $62 ; Increasing Fill
#_0C920B: db $A4 ; Increasing Fill Start
#_0C920C: db $63 ; Increasing Fill
#_0C920D: db $2F ; Increasing Fill Start
#_0C920E: db $0B ; Direct Copy
#_0C920F: db $8C, $33, $34, $29, $AA, $74, $95, $4C
#_0C9217: db $44, $9A, $1D, $5A
#_0C921B: db $22 ; Byte Fill
#_0C921C: db $88
#_0C921D: db $63 ; Increasing Fill
#_0C921E: db $35 ; Increasing Fill Start
#_0C921F: db $08 ; Direct Copy
#_0C9220: db $4F, $39, $8F, $F9, $36, $4B, $A0, $3A
#_0C9228: db $0E
#_0C9229: db $22 ; Byte Fill
#_0C922A: db $01
#_0C922B: db $0B ; Direct Copy
#_0C922C: db $91, $92, $3B, $3D, $66, $32, $C5, $AA
#_0C9234: db $36, $A6, $F3, $77
#_0C9238: db $62 ; Increasing Fill
#_0C9239: db $3C ; Increasing Fill Start
#_0C923A: db $0A ; Direct Copy
#_0C923B: db $B9, $82, $98, $99, $41, $1E, $69, $6A
#_0C9243: db $E1, $19, $1D
#_0C9246: db $62 ; Increasing Fill
#_0C9247: db $3F ; Increasing Fill Start
#_0C9248: db $63 ; Increasing Fill
#_0C9249: db $BC ; Increasing Fill Start
#_0C924A: db $0F ; Direct Copy
#_0C924B: db $A1, $DD, $41, $FB, $3E, $6F, $54, $90
#_0C9253: db $0C, $42, $43, $DD, $44, $87, $88, $B8
#_0C925B: db $63 ; Increasing Fill
#_0C925C: db $45 ; Increasing Fill Start
#_0C925D: db $06 ; Direct Copy
#_0C925E: db $FB, $32, $C5, $89, $DE, $49, $DD
#_0C9265: db $63 ; Increasing Fill
#_0C9266: db $4A ; Increasing Fill Start
#_0C9267: db $E0, $29 ; EXT Direct Copy
#_0C9269: db $40, $A1, $4E, $06, $4F, $1E, $32, $C5
#_0C9271: db $E1, $A5, $1F, $66, $4B, $C5, $50, $E6
#_0C9279: db $C5, $A1, $C3, $A2, $33, $A9, $3A, $3B
#_0C9281: db $51, $08, $52, $92, $55, $53, $54, $E1
#_0C9289: db $53, $26, $55, $4B, $56, $8A, $57, $3A
#_0C9291: db $94, $19
#_0C9293: db $62 ; Increasing Fill
#_0C9294: db $58 ; Increasing Fill Start
#_0C9295: db $00 ; Direct Copy
#_0C9296: db $19
#_0C9297: db $22 ; Byte Fill
#_0C9298: db $44
#_0C9299: db $10 ; Direct Copy
#_0C929A: db $5B, $C8, $A3, $06, $5C, $5D, $57, $9F
#_0C92A2: db $9C, $9C, $10, $93, $9C, $5E, $06, $D5
#_0C92AA: db $5F
#_0C92AB: db $23 ; Byte Fill
#_0C92AC: db $59
#_0C92AD: db $06 ; Direct Copy
#_0C92AE: db $93, $9C, $9C, $88, $88, $60, $5C
#_0C92B5: db $62 ; Increasing Fill
#_0C92B6: db $61 ; Increasing Fill Start
#_0C92B7: db $02 ; Direct Copy
#_0C92B8: db $63, $64, $4B
#_0C92BB: db $25 ; Byte Fill
#_0C92BC: db $4C
#_0C92BD: db $0B ; Direct Copy
#_0C92BE: db $3E, $EB, $65, $97, $24, $92, $5D, $66
#_0C92C6: db $48, $49, $EB, $79
#_0C92CA: db $22 ; Byte Fill
#_0C92CB: db $EB
#_0C92CC: db $10 ; Direct Copy
#_0C92CD: db $3B, $06, $06, $12, $4B, $06, $63, $DD
#_0C92D5: db $1D, $2E, $00, $40, $06, $06, $A2, $06
#_0C92DD: db $06
#_0C92DE: db $FF ; End of Map 2C

;===================================================================================================

OverworldMap32_Screen6D_High:
#_0C92DF: db $04 ; Direct Copy
#_0C92E0: db $07, $01, $00, $00, $1B
#_0C92E5: db $43 ; Word Fill
#_0C92E6: db $1B, $12 ;  Word Fill
#_0C92E8: db $18 ; Direct Copy
#_0C92E9: db $18, $1B, $18, $12, $1B, $0D, $01, $07
#_0C92F1: db $01, $06, $00, $0D, $1B, $1B, $12, $07
#_0C92F9: db $1B, $1B, $0B, $1A, $0D, $04, $02, $07
#_0C9301: db $01
#_0C9302: db $22 ; Byte Fill
#_0C9303: db $1B
#_0C9304: db $43 ; Word Fill
#_0C9305: db $12, $1B ;  Word Fill
#_0C9307: db $00 ; Direct Copy
#_0C9308: db $06
#_0C9309: db $22 ; Byte Fill
#_0C930A: db $0D
#_0C930B: db $08 ; Direct Copy
#_0C930C: db $03, $03, $01, $07, $01, $1B, $10, $1B
#_0C9314: db $02
#_0C9315: db $22 ; Byte Fill
#_0C9316: db $1B
#_0C9317: db $23 ; Byte Fill
#_0C9318: db $0E
#_0C9319: db $03 ; Direct Copy
#_0C931A: db $00, $0E, $0E, $07
#_0C931E: db $23 ; Byte Fill
#_0C931F: db $1B
#_0C9320: db $04 ; Direct Copy
#_0C9321: db $01, $0E, $0E, $02, $02
#_0C9326: db $23 ; Byte Fill
#_0C9327: db $0E
#_0C9328: db $0B ; Direct Copy
#_0C9329: db $02, $02, $07, $06, $01, $01, $06, $00
#_0C9331: db $0E, $0E, $00, $06
#_0C9335: db $23 ; Byte Fill
#_0C9336: db $0E
#_0C9337: db $15 ; Direct Copy
#_0C9338: db $00, $06, $05, $07, $06, $01, $02, $02
#_0C9340: db $1B, $1B, $00, $1B, $1B, $02, $15, $15
#_0C9348: db $02, $02, $05, $05, $08, $06
#_0C934E: db $84 ; Repeat Fill
#_0C934F: db $00, $64 ; Repeat Fill bytes
#_0C9351: db $09 ; Direct Copy
#_0C9352: db $0D, $03, $02, $0F, $0F, $02, $02, $0E
#_0C935A: db $05, $0C
#_0C935C: db $22 ; Byte Fill
#_0C935D: db $07
#_0C935E: db $10 ; Direct Copy
#_0C935F: db $1B, $1B, $02, $1B, $03, $1B, $0F, $1B
#_0C9367: db $07, $0C, $09, $07, $05, $05, $08, $05
#_0C936F: db $07
#_0C9370: db $22 ; Byte Fill
#_0C9371: db $1B
#_0C9372: db $05 ; Direct Copy
#_0C9373: db $03, $07, $08, $1B, $1B, $0F
#_0C9379: db $25 ; Byte Fill
#_0C937A: db $07
#_0C937B: db $83 ; Repeat Fill
#_0C937C: db $00, $76 ; Repeat Fill bytes
#_0C937E: db $00 ; Direct Copy
#_0C937F: db $08
#_0C9380: db $22 ; Byte Fill
#_0C9381: db $1B
#_0C9382: db $27 ; Byte Fill
#_0C9383: db $05
#_0C9384: db $83 ; Repeat Fill
#_0C9385: db $00, $76 ; Repeat Fill bytes
#_0C9387: db $01 ; Direct Copy
#_0C9388: db $1B, $0E
#_0C938A: db $43 ; Word Fill
#_0C938B: db $07, $09 ;  Word Fill
#_0C938D: db $22 ; Byte Fill
#_0C938E: db $06
#_0C938F: db $00 ; Direct Copy
#_0C9390: db $07
#_0C9391: db $23 ; Byte Fill
#_0C9392: db $1B
#_0C9393: db $0F ; Direct Copy
#_0C9394: db $06, $1B, $00, $02, $07, $0B, $07, $07
#_0C939C: db $02, $02, $0E, $1B, $12, $1B, $1B, $05
#_0C93A4: db $43 ; Word Fill
#_0C93A5: db $00, $01 ;  Word Fill
#_0C93A7: db $00 ; Direct Copy
#_0C93A8: db $0E
#_0C93A9: db $83 ; Repeat Fill
#_0C93AA: db $00, $37 ; Repeat Fill bytes
#_0C93AC: db $08 ; Direct Copy
#_0C93AD: db $01, $0E, $03, $02, $1B, $05, $00, $00
#_0C93B5: db $02
#_0C93B6: db $22 ; Byte Fill
#_0C93B7: db $01
#_0C93B8: db $06 ; Direct Copy
#_0C93B9: db $0E, $03, $0E, $0D, $01, $0B, $01
#_0C93C0: db $25 ; Byte Fill
#_0C93C1: db $00
#_0C93C2: db $22 ; Byte Fill
#_0C93C3: db $01
#_0C93C4: db $02 ; Direct Copy
#_0C93C5: db $0E, $0B, $0E
#_0C93C8: db $FF ; End of Map 6D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen6D_Low:
#_0C93C9: db $E0, $21 ; EXT Direct Copy
#_0C93CB: db $4C, $93, $1C, $1D, $66, $67, $85, $68
#_0C93D3: db $85, $08, $69, $08, $85, $6A, $EF, $FC
#_0C93DB: db $4C, $93, $66, $A9, $F0, $6B, $67, $85
#_0C93E3: db $01, $6C, $6D, $EF, $96, $F1, $8E, $61
#_0C93EB: db $4C, $93
#_0C93ED: db $62 ; Increasing Fill
#_0C93EE: db $6E ; Increasing Fill Start
#_0C93EF: db $04 ; Direct Copy
#_0C93F0: db $7E, $67, $85, $71, $8E
#_0C93F5: db $62 ; Increasing Fill
#_0C93F6: db $F8 ; Increasing Fill Start
#_0C93F7: db $0B ; Direct Copy
#_0C93F8: db $56, $57, $15, $56, $93, $72, $AD, $73
#_0C9400: db $5E, $74, $75, $67
#_0C9404: db $63 ; Increasing Fill
#_0C9405: db $01 ; Increasing Fill Start
#_0C9406: db $03 ; Direct Copy
#_0C9407: db $A1, $05, $06, $4C
#_0C940B: db $63 ; Increasing Fill
#_0C940C: db $76 ; Increasing Fill Start
#_0C940D: db $04 ; Direct Copy
#_0C940E: db $1E, $0B, $0C, $5B, $5B
#_0C9413: db $62 ; Increasing Fill
#_0C9414: db $0D ; Increasing Fill Start
#_0C9415: db $0D ; Direct Copy
#_0C9416: db $0D, $5B, $5B, $14, $16, $D9, $A0, $66
#_0C941E: db $1D, $10, $11, $B2, $66, $12
#_0C9424: db $62 ; Increasing Fill
#_0C9425: db $10 ; Increasing Fill Start
#_0C9426: db $E0, $41 ; EXT Direct Copy
#_0C9428: db $FB, $66, $E1, $14, $16, $D9, $07, $07
#_0C9430: db $7A, $7B, $1D, $7C, $7D, $07, $DE, $DF
#_0C9438: db $07, $07, $E0, $E1, $B5, $16, $FB, $FB
#_0C9440: db $7E, $7F, $1D, $6A, $9A, $FB, $5E, $5F
#_0C9448: db $FB, $FB, $1C, $E1, $4C, $14, $79, $79
#_0C9450: db $80, $81, $DA, $82, $32, $83, $69, $84
#_0C9458: db $79, $76, $36, $20, $E1, $E1, $AA, $E1
#_0C9460: db $6E, $81, $85, $86, $32, $5C, $AA, $87
#_0C9468: db $88, $D3
#_0C946A: db $25 ; Byte Fill
#_0C946B: db $84
#_0C946C: db $04 ; Direct Copy
#_0C946D: db $89, $8A, $1D, $6A, $69
#_0C9472: db $62 ; Increasing Fill
#_0C9473: db $8B ; Increasing Fill Start
#_0C9474: db $01 ; Direct Copy
#_0C9475: db $D5, $E1
#_0C9477: db $25 ; Byte Fill
#_0C9478: db $6D
#_0C9479: db $09 ; Direct Copy
#_0C947A: db $8E, $8F, $1D, $71, $90, $2F, $3B, $52
#_0C9482: db $36, $9D
#_0C9484: db $22 ; Byte Fill
#_0C9485: db $9C
#_0C9486: db $00 ; Direct Copy
#_0C9487: db $04
#_0C9488: db $63 ; Increasing Fill
#_0C9489: db $91 ; Increasing Fill Start
#_0C948A: db $E0, $37 ; EXT Direct Copy
#_0C948C: db $9C, $95, $A5, $30, $3A, $94, $84, $84
#_0C9494: db $4C, $4C, $33, $96, $7E, $97, $98, $4F
#_0C949C: db $FB, $1E, $B2, $41, $37, $99, $9A, $3A
#_0C94A4: db $3B, $EB, $3C, $8D, $5E, $63, $4F, $1D
#_0C94AC: db $AA, $DE, $41, $48, $49, $3B, $4A, $3E
#_0C94B4: db $F7, $06, $57, $E3, $1D, $A9, $1D, $1C
#_0C94BC: db $1D, $1D, $52, $53, $6A, $3F, $56, $40
#_0C94C4: db $FF ; End of Map 6D

;===================================================================================================

OverworldMap32_Screen2E_High:
#_0C94C5: db $06 ; Direct Copy
#_0C94C6: db $02, $1B, $16, $02, $06, $04, $05
#_0C94CD: db $22 ; Byte Fill
#_0C94CE: db $03
#_0C94CF: db $02 ; Direct Copy
#_0C94D0: db $1B, $01, $0F
#_0C94D3: db $22 ; Byte Fill
#_0C94D4: db $01
#_0C94D5: db $05 ; Direct Copy
#_0C94D6: db $0D, $09, $01, $02, $06, $04
#_0C94DC: db $22 ; Byte Fill
#_0C94DD: db $0F
#_0C94DE: db $03 ; Direct Copy
#_0C94DF: db $1B, $0F, $01, $0F
#_0C94E3: db $22 ; Byte Fill
#_0C94E4: db $01
#_0C94E5: db $00 ; Direct Copy
#_0C94E6: db $0D
#_0C94E7: db $22 ; Byte Fill
#_0C94E8: db $1B
#_0C94E9: db $00 ; Direct Copy
#_0C94EA: db $08
#_0C94EB: db $23 ; Byte Fill
#_0C94EC: db $1B
#_0C94ED: db $00 ; Direct Copy
#_0C94EE: db $04
#_0C94EF: db $84 ; Repeat Fill
#_0C94F0: db $00, $0A ; Repeat Fill bytes
#_0C94F2: db $01 ; Direct Copy
#_0C94F3: db $02, $0E
#_0C94F5: db $22 ; Byte Fill
#_0C94F6: db $1B
#_0C94F7: db $00 ; Direct Copy
#_0C94F8: db $01
#_0C94F9: db $22 ; Byte Fill
#_0C94FA: db $1B
#_0C94FB: db $05 ; Direct Copy
#_0C94FC: db $08, $08, $01, $01, $1B, $01
#_0C9502: db $22 ; Byte Fill
#_0C9503: db $02
#_0C9504: db $05 ; Direct Copy
#_0C9505: db $1B, $09, $01, $01, $1B, $00
#_0C950B: db $83 ; Repeat Fill
#_0C950C: db $00, $33 ; Repeat Fill bytes
#_0C950E: db $43 ; Word Fill
#_0C950F: db $01, $02 ;  Word Fill
#_0C9511: db $04 ; Direct Copy
#_0C9512: db $02, $10, $00, $00, $01
#_0C9517: db $45 ; Word Fill
#_0C9518: db $01, $1B ;  Word Fill
#_0C951A: db $00 ; Direct Copy
#_0C951B: db $00
#_0C951C: db $22 ; Byte Fill
#_0C951D: db $1B
#_0C951E: db $24 ; Byte Fill
#_0C951F: db $02
#_0C9520: db $03 ; Direct Copy
#_0C9521: db $01, $1B, $06, $06
#_0C9525: db $22 ; Byte Fill
#_0C9526: db $1B
#_0C9527: db $0A ; Direct Copy
#_0C9528: db $01, $1B, $01, $06, $02, $05, $0E, $0E
#_0C9530: db $1B, $01, $01
#_0C9533: db $23 ; Byte Fill
#_0C9534: db $1B
#_0C9535: db $06 ; Direct Copy
#_0C9536: db $01, $04, $03, $06, $1B, $05, $05
#_0C953D: db $22 ; Byte Fill
#_0C953E: db $07
#_0C953F: db $01 ; Direct Copy
#_0C9540: db $06, $09
#_0C9542: db $24 ; Byte Fill
#_0C9543: db $1B
#_0C9544: db $0A ; Direct Copy
#_0C9545: db $19, $01, $03, $03, $05, $0F, $07, $05
#_0C954D: db $1B, $07, $09
#_0C9550: db $24 ; Byte Fill
#_0C9551: db $06
#_0C9552: db $19 ; Direct Copy
#_0C9553: db $07, $01, $08, $03, $10, $1B, $05, $09
#_0C955B: db $05, $05, $08, $09, $07, $07, $09, $09
#_0C9563: db $08, $1B, $1B, $06, $01, $02, $07, $05
#_0C956B: db $07, $07
#_0C956D: db $24 ; Byte Fill
#_0C956E: db $1B
#_0C956F: db $01 ; Direct Copy
#_0C9570: db $09, $05
#_0C9572: db $22 ; Byte Fill
#_0C9573: db $1B
#_0C9574: db $04 ; Direct Copy
#_0C9575: db $01, $1B, $07, $07, $09
#_0C957A: db $83 ; Repeat Fill
#_0C957B: db $00, $33 ; Repeat Fill bytes
#_0C957D: db $03 ; Direct Copy
#_0C957E: db $0F, $0F, $05, $0C
#_0C9582: db $22 ; Byte Fill
#_0C9583: db $1B
#_0C9584: db $01 ; Direct Copy
#_0C9585: db $02, $02
#_0C9587: db $22 ; Byte Fill
#_0C9588: db $0E
#_0C9589: db $07 ; Direct Copy
#_0C958A: db $1B, $01, $10, $02, $1B, $0F, $07, $08
#_0C9592: db $83 ; Repeat Fill
#_0C9593: db $00, $49 ; Repeat Fill bytes
#_0C9595: db $00 ; Direct Copy
#_0C9596: db $02
#_0C9597: db $22 ; Byte Fill
#_0C9598: db $0E
#_0C9599: db $04 ; Direct Copy
#_0C959A: db $1B, $05, $01, $0B, $02
#_0C959F: db $83 ; Repeat Fill
#_0C95A0: db $00, $8F ; Repeat Fill bytes
#_0C95A2: db $06 ; Direct Copy
#_0C95A3: db $09, $01, $02, $02, $01, $06, $01
#_0C95AA: db $43 ; Word Fill
#_0C95AB: db $01, $0B ;  Word Fill
#_0C95AD: db $84 ; Repeat Fill
#_0C95AE: db $00, $E7 ; Repeat Fill bytes
#_0C95B0: db $03 ; Direct Copy
#_0C95B1: db $08, $01, $02, $02
#_0C95B5: db $FF ; End of Map 2E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen2E_Low:
#_0C95B6: db $06 ; Direct Copy
#_0C95B7: db $7A, $9B, $AE, $DD, $66, $8D, $61
#_0C95BE: db $22 ; Byte Fill
#_0C95BF: db $20
#_0C95C0: db $02 ; Direct Copy
#_0C95C1: db $9C, $03, $43
#_0C95C4: db $22 ; Byte Fill
#_0C95C5: db $03
#_0C95C6: db $0C ; Direct Copy
#_0C95C7: db $F2, $F3, $ED, $91, $70, $93, $42, $43
#_0C95CF: db $43, $9D, $43, $03, $43
#_0C95D4: db $22 ; Byte Fill
#_0C95D5: db $03
#_0C95D6: db $00 ; Direct Copy
#_0C95D7: db $FB
#_0C95D8: db $62 ; Increasing Fill
#_0C95D9: db $9E ; Increasing Fill Start
#_0C95DA: db $06 ; Direct Copy
#_0C95DB: db $2D, $A1, $17, $19, $19, $74, $19
#_0C95E2: db $83 ; Repeat Fill
#_0C95E3: db $00, $0B ; Repeat Fill bytes
#_0C95E5: db $01 ; Direct Copy
#_0C95E6: db $75, $06
#_0C95E8: db $62 ; Increasing Fill
#_0C95E9: db $A2 ; Increasing Fill Start
#_0C95EA: db $00 ; Direct Copy
#_0C95EB: db $43
#_0C95EC: db $62 ; Increasing Fill
#_0C95ED: db $A5 ; Increasing Fill Start
#_0C95EE: db $E0, $22 ; EXT Direct Copy
#_0C95F0: db $2D, $2D, $1E, $E4, $19, $03, $75, $82
#_0C95F8: db $5B, $A8, $DD, $4D, $4E, $05, $09, $A9
#_0C9600: db $43, $01, $AA, $26, $DE, $F3, $82, $82
#_0C9608: db $73, $A5, $1C, $57, $58, $08, $0E, $AB
#_0C9610: db $4E, $05, $09
#_0C9613: db $62 ; Increasing Fill
#_0C9614: db $AC ; Increasing Fill Start
#_0C9615: db $01 ; Direct Copy
#_0C9616: db $82, $82
#_0C9618: db $22 ; Byte Fill
#_0C9619: db $07
#_0C961A: db $1C ; Direct Copy
#_0C961B: db $A0, $AF, $7C, $7C, $B0, $B1, $08, $0E
#_0C9623: db $B2, $1B, $A5, $82, $60, $17, $17, $B3
#_0C962B: db $D9, $AA, $B4, $B5, $B5, $B6, $AB, $95
#_0C9633: db $D5, $33, $B7, $60, $63
#_0C9638: db $22 ; Byte Fill
#_0C9639: db $79
#_0C963A: db $01 ; Direct Copy
#_0C963B: db $16, $F0
#_0C963D: db $24 ; Byte Fill
#_0C963E: db $B8
#_0C963F: db $0A ; Direct Copy
#_0C9640: db $D8, $A0, $E2, $50, $63, $B8, $36, $E1
#_0C9648: db $B9, $14, $F7
#_0C964B: db $24 ; Byte Fill
#_0C964C: db $A0
#_0C964D: db $1A ; Direct Copy
#_0C964E: db $1C, $D9, $B3, $56, $6B, $BA, $E1, $9D
#_0C9656: db $E1, $E1, $D7, $47, $22, $22, $49, $90
#_0C965E: db $B5, $BB, $BC, $C1, $77, $82, $36, $E1
#_0C9666: db $36, $67, $BD
#_0C9669: db $22 ; Byte Fill
#_0C966A: db $BE
#_0C966B: db $02 ; Direct Copy
#_0C966C: db $BF, $52, $E1
#_0C966F: db $62 ; Increasing Fill
#_0C9670: db $C0 ; Increasing Fill Start
#_0C9671: db $11 ; Direct Copy
#_0C9672: db $5B, $C3, $84, $84, $FC, $C4, $54, $C5
#_0C967A: db $C6, $36, $C8, $DF, $4C, $C0, $C1, $C7
#_0C9682: db $98, $98
#_0C9684: db $22 ; Byte Fill
#_0C9685: db $3A
#_0C9686: db $0C ; Direct Copy
#_0C9687: db $C8, $55, $F6, $D1, $C9, $56, $8E, $AA
#_0C968F: db $C0, $CA, $77, $82, $82
#_0C9694: db $22 ; Byte Fill
#_0C9695: db $3E
#_0C9696: db $0F ; Direct Copy
#_0C9697: db $CB, $9D, $06, $4B, $DC, $61, $8E, $E1
#_0C969F: db $C0, $B1, $77, $82, $82, $06, $A2, $06
#_0C96A7: db $43 ; Word Fill
#_0C96A8: db $06, $4B ;  Word Fill
#_0C96AA: db $84 ; Repeat Fill
#_0C96AB: db $00, $E7 ; Repeat Fill bytes
#_0C96AD: db $03 ; Direct Copy
#_0C96AE: db $B7, $77, $82, $82
#_0C96B2: db $FF ; End of Map 2E

;===================================================================================================

OverworldMap32_Screen2F_High:
#_0C96B3: db $22 ; Byte Fill
#_0C96B4: db $03
#_0C96B5: db $22 ; Byte Fill
#_0C96B6: db $01
#_0C96B7: db $09 ; Direct Copy
#_0C96B8: db $05, $05, $01, $1B, $05, $1B, $1B, $01
#_0C96C0: db $01, $1B
#_0C96C2: db $22 ; Byte Fill
#_0C96C3: db $03
#_0C96C4: db $04 ; Direct Copy
#_0C96C5: db $01, $06, $0A, $05, $05
#_0C96CA: db $22 ; Byte Fill
#_0C96CB: db $01
#_0C96CC: db $1E ; Direct Copy
#_0C96CD: db $1B, $1B, $06, $01, $1B, $1B, $03, $04
#_0C96D5: db $01, $1B, $1B, $05, $05, $01, $02, $10
#_0C96DD: db $05, $1B, $01, $06, $02, $1B, $1B, $03
#_0C96E5: db $06, $01, $0A, $0A, $05, $0A, $0A
#_0C96EC: db $22 ; Byte Fill
#_0C96ED: db $05
#_0C96EE: db $0D ; Direct Copy
#_0C96EF: db $1B, $01, $02, $01, $1B, $00, $06, $01
#_0C96F7: db $0A, $16, $05, $05, $06, $05
#_0C96FD: db $83 ; Repeat Fill
#_0C96FE: db $00, $0A ; Repeat Fill bytes
#_0C9700: db $01 ; Direct Copy
#_0C9701: db $0E, $01
#_0C9703: db $84 ; Repeat Fill
#_0C9704: db $00, $0B ; Repeat Fill bytes
#_0C9706: db $22 ; Byte Fill
#_0C9707: db $05
#_0C9708: db $0F ; Direct Copy
#_0C9709: db $0A, $10, $0F, $1B, $01, $01, $19, $01
#_0C9711: db $1B, $1B, $10, $01, $1B, $0C, $05, $05
#_0C9719: db $24 ; Byte Fill
#_0C971A: db $1B
#_0C971B: db $0D ; Direct Copy
#_0C971C: db $01, $0C, $01, $02, $1B, $15, $1B, $1B
#_0C9724: db $11, $1B, $06, $1B, $1B, $03
#_0C972A: db $22 ; Byte Fill
#_0C972B: db $01
#_0C972C: db $08 ; Direct Copy
#_0C972D: db $1B, $01, $0C, $02, $07, $12, $1B, $1B
#_0C9735: db $16
#_0C9736: db $22 ; Byte Fill
#_0C9737: db $1B
#_0C9738: db $43 ; Word Fill
#_0C9739: db $03, $01 ;  Word Fill
#_0C973B: db $04 ; Direct Copy
#_0C973C: db $01, $05, $1B, $1B, $0D
#_0C9741: db $22 ; Byte Fill
#_0C9742: db $1B
#_0C9743: db $06 ; Direct Copy
#_0C9744: db $05, $1B, $1B, $12, $0F, $01, $1B
#_0C974B: db $23 ; Byte Fill
#_0C974C: db $01
#_0C974D: db $02 ; Direct Copy
#_0C974E: db $02, $02, $1A
#_0C9751: db $22 ; Byte Fill
#_0C9752: db $1B
#_0C9753: db $05 ; Direct Copy
#_0C9754: db $1C, $1C, $0B, $1C, $02, $02
#_0C975A: db $23 ; Byte Fill
#_0C975B: db $01
#_0C975C: db $0C ; Direct Copy
#_0C975D: db $1C, $04, $06, $02, $02, $1C, $1C, $06
#_0C9765: db $00, $02, $0F, $02, $00
#_0C976A: db $22 ; Byte Fill
#_0C976B: db $01
#_0C976C: db $00 ; Direct Copy
#_0C976D: db $02
#_0C976E: db $23 ; Byte Fill
#_0C976F: db $00
#_0C9770: db $03 ; Direct Copy
#_0C9771: db $01, $02, $02, $0E
#_0C9775: db $22 ; Byte Fill
#_0C9776: db $1C
#_0C9777: db $07 ; Direct Copy
#_0C9778: db $02, $1C, $01, $01, $0C, $00, $02, $10
#_0C9780: db $23 ; Byte Fill
#_0C9781: db $01
#_0C9782: db $0B ; Direct Copy
#_0C9783: db $0E, $07, $02, $02, $1C, $05, $01, $1C
#_0C978B: db $02, $07, $03, $03
#_0C978F: db $22 ; Byte Fill
#_0C9790: db $01
#_0C9791: db $01 ; Direct Copy
#_0C9792: db $1C, $1C
#_0C9794: db $23 ; Byte Fill
#_0C9795: db $01
#_0C9796: db $08 ; Direct Copy
#_0C9797: db $1C, $1C, $10, $1C, $0D, $03, $03, $0D
#_0C979F: db $01
#_0C97A0: db $24 ; Byte Fill
#_0C97A1: db $1C
#_0C97A2: db $02 ; Direct Copy
#_0C97A3: db $0F, $1C, $1C
#_0C97A6: db $FF ; End of Map 2F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen2F_Low:
#_0C97A7: db $22 ; Byte Fill
#_0C97A8: db $6C
#_0C97A9: db $22 ; Byte Fill
#_0C97AA: db $15
#_0C97AB: db $09 ; Direct Copy
#_0C97AC: db $B1, $A6, $06, $CC, $89, $CD, $CE, $71
#_0C97B4: db $06, $CF
#_0C97B6: db $22 ; Byte Fill
#_0C97B7: db $6C
#_0C97B8: db $E0, $42 ; EXT Direct Copy
#_0C97BA: db $15, $AD, $1D, $D0, $B1, $0A, $FD, $ED
#_0C97C2: db $D0, $D1, $12, $0C, $D2, $D3, $6C, $84
#_0C97CA: db $22, $D4, $D5, $DC, $D0, $15, $01, $8B
#_0C97D2: db $FB, $D6, $03, $1B, $69, $D7, $D8, $A8
#_0C97DA: db $66, $77, $CF, $0C, $DC, $1D, $F5, $FB
#_0C97E2: db $FB, $E8, $D9, $71, $69, $D6, $DA, $A5
#_0C97EA: db $70, $77, $CF, $98, $FB, $E8, $05, $E8
#_0C97F2: db $F5, $DB, $DC, $5C, $D9, $D6, $DD, $DE
#_0C97FA: db $1E, $77, $DF
#_0C97FD: db $22 ; Byte Fill
#_0C97FE: db $FB
#_0C97FF: db $0F ; Direct Copy
#_0C9800: db $0C, $8F, $FB, $E0, $49, $6A, $C1, $D6
#_0C9808: db $E1, $E2, $74, $77, $E3, $96, $E8, $FD
#_0C9810: db $64 ; Increasing Fill
#_0C9811: db $E4 ; Increasing Fill Start
#_0C9812: db $19 ; Direct Copy
#_0C9813: db $0C, $ED, $D6, $DD, $E9, $F6, $EA, $EB
#_0C981B: db $16, $EC, $06, $ED, $EE, $5A, $F8, $F8
#_0C9823: db $17, $EF, $D6, $DE, $42, $01, $7F, $F0
#_0C982B: db $F1, $C3
#_0C982D: db $62 ; Increasing Fill
#_0C982E: db $F2 ; Increasing Fill Start
#_0C982F: db $07 ; Direct Copy
#_0C9830: db $5A, $F8, $7B, $03, $17, $D2, $F5, $F6
#_0C9838: db $63 ; Increasing Fill
#_0C9839: db $F6 ; Increasing Fill Start
#_0C983A: db $0D ; Direct Copy
#_0C983B: db $E8, $FA, $FB, $7F, $A4, $E5, $FC, $03
#_0C9843: db $03, $D6, $D6, $DD, $5E, $27
#_0C9849: db $62 ; Increasing Fill
#_0C984A: db $FD ; Increasing Fill Start
#_0C984B: db $E0, $22 ; EXT Direct Copy
#_0C984D: db $00, $01, $EF, $02, $DA, $D4, $E4, $24
#_0C9855: db $D6, $D6, $03, $BB, $66, $5E, $5B, $04
#_0C985D: db $05, $66, $1D, $E6, $FF, $E6, $1D, $2E
#_0C9865: db $D6, $D6, $DD, $1D, $FB, $1D, $AA, $41
#_0C986D: db $4B, $4C, $33
#_0C9870: db $62 ; Increasing Fill
#_0C9871: db $06 ; Increasing Fill Start
#_0C9872: db $1C ; Direct Copy
#_0C9873: db $8D, $09, $D6, $D6, $DE, $1D, $8A, $79
#_0C987B: db $41, $48, $49, $EB, $3C, $CF, $4C, $4C
#_0C9883: db $0A, $9D, $D6, $0B, $D2, $BF, $44, $44
#_0C988B: db $48, $49, $6A, $0C, $0D
#_0C9890: db $22 ; Byte Fill
#_0C9891: db $EB
#_0C9892: db $0A ; Direct Copy
#_0C9893: db $EC, $0C, $0E, $70, $0F, $A1, $4B, $4B
#_0C989B: db $E9, $6A, $0C
#_0C989E: db $63 ; Increasing Fill
#_0C989F: db $10 ; Increasing Fill Start
#_0C98A0: db $02 ; Direct Copy
#_0C98A1: db $2C, $14, $15
#_0C98A4: db $FF ; End of Map 2F

;===================================================================================================

OverworldMap32_Screen70_High:
#_0C98A5: db $02 ; Direct Copy
#_0C98A6: db $1C, $03, $04
#_0C98A9: db $22 ; Byte Fill
#_0C98AA: db $01
#_0C98AB: db $00 ; Direct Copy
#_0C98AC: db $03
#_0C98AD: db $25 ; Byte Fill
#_0C98AE: db $01
#_0C98AF: db $05 ; Direct Copy
#_0C98B0: db $1C, $01, $01, $03, $03, $0E
#_0C98B6: db $22 ; Byte Fill
#_0C98B7: db $01
#_0C98B8: db $00 ; Direct Copy
#_0C98B9: db $03
#_0C98BA: db $28 ; Byte Fill
#_0C98BB: db $01
#_0C98BC: db $06 ; Direct Copy
#_0C98BD: db $1C, $0E, $19, $03, $1C, $0A, $0C
#_0C98C4: db $28 ; Byte Fill
#_0C98C5: db $0A
#_0C98C6: db $03 ; Direct Copy
#_0C98C7: db $1C, $19, $1C, $10
#_0C98CB: db $23 ; Byte Fill
#_0C98CC: db $1C
#_0C98CD: db $23 ; Byte Fill
#_0C98CE: db $05
#_0C98CF: db $23 ; Byte Fill
#_0C98D0: db $1C
#_0C98D1: db $02 ; Direct Copy
#_0C98D2: db $02, $06, $03
#_0C98D5: db $2C ; Byte Fill
#_0C98D6: db $1C
#_0C98D7: db $02 ; Direct Copy
#_0C98D8: db $02, $01, $03
#_0C98DB: db $25 ; Byte Fill
#_0C98DC: db $1C
#_0C98DD: db $02 ; Direct Copy
#_0C98DE: db $05, $1C, $05
#_0C98E1: db $22 ; Byte Fill
#_0C98E2: db $1C
#_0C98E3: db $03 ; Direct Copy
#_0C98E4: db $05, $02, $01, $03
#_0C98E8: db $22 ; Byte Fill
#_0C98E9: db $1C
#_0C98EA: db $00 ; Direct Copy
#_0C98EB: db $11
#_0C98EC: db $28 ; Byte Fill
#_0C98ED: db $1C
#_0C98EE: db $06 ; Direct Copy
#_0C98EF: db $02, $0C, $10, $1C, $1C, $10, $07
#_0C98F6: db $23 ; Byte Fill
#_0C98F7: db $1C
#_0C98F8: db $00 ; Direct Copy
#_0C98F9: db $0F
#_0C98FA: db $23 ; Byte Fill
#_0C98FB: db $1C
#_0C98FC: db $06 ; Direct Copy
#_0C98FD: db $02, $01, $0F, $1C, $10, $05, $07
#_0C9904: db $25 ; Byte Fill
#_0C9905: db $1C
#_0C9906: db $04 ; Direct Copy
#_0C9907: db $05, $05, $1C, $02, $06
#_0C990C: db $2A ; Byte Fill
#_0C990D: db $1C
#_0C990E: db $09 ; Direct Copy
#_0C990F: db $05, $11, $05, $02, $01, $0D, $06, $1C
#_0C9917: db $1C, $05
#_0C9919: db $24 ; Byte Fill
#_0C991A: db $1C
#_0C991B: db $04 ; Direct Copy
#_0C991C: db $05, $10, $07, $0F, $0F
#_0C9921: db $24 ; Byte Fill
#_0C9922: db $1C
#_0C9923: db $00 ; Direct Copy
#_0C9924: db $05
#_0C9925: db $24 ; Byte Fill
#_0C9926: db $1C
#_0C9927: db $0A ; Direct Copy
#_0C9928: db $10, $05, $0E, $1C, $0D, $1C, $1C, $0E
#_0C9930: db $1C, $1C, $05
#_0C9933: db $24 ; Byte Fill
#_0C9934: db $1C
#_0C9935: db $0A ; Direct Copy
#_0C9936: db $11, $07, $1C, $1C, $0C, $03, $1C, $0E
#_0C993E: db $06, $1C, $05
#_0C9941: db $22 ; Byte Fill
#_0C9942: db $1C
#_0C9943: db $0A ; Direct Copy
#_0C9944: db $11, $1C, $11, $05, $1C, $1C, $06, $03
#_0C994C: db $0E, $0E, $1C
#_0C994F: db $46 ; Word Fill
#_0C9950: db $1C, $05 ;  Word Fill
#_0C9952: db $05 ; Direct Copy
#_0C9953: db $11, $15, $1C, $1C, $19, $03
#_0C9959: db $23 ; Byte Fill
#_0C995A: db $1C
#_0C995B: db $00 ; Direct Copy
#_0C995C: db $05
#_0C995D: db $24 ; Byte Fill
#_0C995E: db $1C
#_0C995F: db $83 ; Repeat Fill
#_0C9960: db $00, $EC ; Repeat Fill bytes
#_0C9962: db $FF ; End of Map 70

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen70_Low:
#_0C9963: db $02 ; Direct Copy
#_0C9964: db $16, $6A, $92
#_0C9967: db $22 ; Byte Fill
#_0C9968: db $F8
#_0C9969: db $00 ; Direct Copy
#_0C996A: db $9C
#_0C996B: db $25 ; Byte Fill
#_0C996C: db $15
#_0C996D: db $09 ; Direct Copy
#_0C996E: db $17, $0A, $0A, $6A, $6B, $4F, $02, $02
#_0C9976: db $F8, $9C
#_0C9978: db $28 ; Byte Fill
#_0C9979: db $15
#_0C997A: db $06 ; Direct Copy
#_0C997B: db $18, $56, $C8, $6A, $19, $08, $90
#_0C9982: db $28 ; Byte Fill
#_0C9983: db $1D
#_0C9984: db $07 ; Direct Copy
#_0C9985: db $1A, $C8, $1B, $C9, $1C, $1D, $1D, $1E
#_0C998D: db $23 ; Byte Fill
#_0C998E: db $FB
#_0C998F: db $00 ; Direct Copy
#_0C9990: db $1F
#_0C9991: db $22 ; Byte Fill
#_0C9992: db $1D
#_0C9993: db $02 ; Direct Copy
#_0C9994: db $DC, $A2, $63
#_0C9997: db $64 ; Increasing Fill
#_0C9998: db $20 ; Increasing Fill Start
#_0C9999: db $23 ; Byte Fill
#_0C999A: db $1D
#_0C999B: db $06 ; Direct Copy
#_0C999C: db $25, $26, $22, $27, $DC, $06, $63
#_0C99A3: db $65 ; Increasing Fill
#_0C99A4: db $28 ; Increasing Fill Start
#_0C99A5: db $06 ; Direct Copy
#_0C99A6: db $A4, $2E, $A4, $2F, $29, $2A, $A4
#_0C99AD: db $83 ; Repeat Fill
#_0C99AE: db $00, $50 ; Repeat Fill bytes
#_0C99B0: db $02 ; Direct Copy
#_0C99B1: db $30, $31, $01
#_0C99B4: db $63 ; Increasing Fill
#_0C99B5: db $32 ; Increasing Fill Start
#_0C99B6: db $01 ; Direct Copy
#_0C99B7: db $32, $32
#_0C99B9: db $62 ; Increasing Fill
#_0C99BA: db $30 ; Increasing Fill Start
#_0C99BB: db $06 ; Direct Copy
#_0C99BC: db $DC, $ED, $63, $36, $27, $AE, $89
#_0C99C3: db $63 ; Increasing Fill
#_0C99C4: db $37 ; Increasing Fill Start
#_0C99C5: db $00 ; Direct Copy
#_0C99C6: db $9A
#_0C99C7: db $63 ; Increasing Fill
#_0C99C8: db $3B ; Increasing Fill Start
#_0C99C9: db $06 ; Direct Copy
#_0C99CA: db $DC, $06, $24, $3F, $BB, $E1, $36
#_0C99D1: db $65 ; Increasing Fill
#_0C99D2: db $40 ; Increasing Fill Start
#_0C99D3: db $04 ; Direct Copy
#_0C99D4: db $A4, $A4, $32, $DC, $A2
#_0C99D9: db $69 ; Increasing Fill
#_0C99DA: db $46 ; Increasing Fill Start
#_0C99DB: db $0A ; Direct Copy
#_0C99DC: db $2E, $A4, $01, $C9, $DC, $06, $97, $0E
#_0C99E4: db $50, $51, $A4
#_0C99E7: db $63 ; Increasing Fill
#_0C99E8: db $52 ; Increasing Fill Start
#_0C99E9: db $05 ; Direct Copy
#_0C99EA: db $4F, $A4, $AE, $36, $70, $0A
#_0C99F0: db $62 ; Increasing Fill
#_0C99F1: db $56 ; Increasing Fill Start
#_0C99F2: db $03 ; Direct Copy
#_0C99F3: db $28, $27, $A4, $52
#_0C99F7: db $62 ; Increasing Fill
#_0C99F8: db $59 ; Increasing Fill Start
#_0C99F9: db $0B ; Direct Copy
#_0C99FA: db $4F, $BB, $E1, $23, $5C, $97, $5D, $5E
#_0C9A02: db $9A, $5F, $60, $A4
#_0C9A06: db $64 ; Increasing Fill
#_0C9A07: db $61 ; Increasing Fill Start
#_0C9A08: db $0A ; Direct Copy
#_0C9A09: db $0A, $89, $66, $67, $ED, $63, $68, $9A
#_0C9A11: db $20, $69, $A4
#_0C9A14: db $62 ; Increasing Fill
#_0C9A15: db $6A ; Increasing Fill Start
#_0C9A16: db $1C ; Direct Copy
#_0C9A17: db $0B, $6A, $0A, $E1, $6D, $6E, $A2, $63
#_0C9A1F: db $AE, $9A, $6F, $70, $A4, $32, $A4, $71
#_0C9A27: db $A4, $32, $0A, $64, $72, $73, $B2, $63
#_0C9A2F: db $74, $75, $28, $2C, $A4
#_0C9A34: db $63 ; Increasing Fill
#_0C9A35: db $76 ; Increasing Fill Start
#_0C9A36: db $04 ; Direct Copy
#_0C9A37: db $77, $0A, $7D, $24, $7A
#_0C9A3C: db $FF ; End of Map 70

;===================================================================================================

OverworldMap32_Screen71_High:
#_0C9A3D: db $26 ; Byte Fill
#_0C9A3E: db $01
#_0C9A3F: db $00 ; Direct Copy
#_0C9A40: db $05
#_0C9A41: db $2E ; Byte Fill
#_0C9A42: db $01
#_0C9A43: db $01 ; Direct Copy
#_0C9A44: db $05, $05
#_0C9A46: db $26 ; Byte Fill
#_0C9A47: db $01
#_0C9A48: db $26 ; Byte Fill
#_0C9A49: db $0A
#_0C9A4A: db $01 ; Direct Copy
#_0C9A4B: db $1C, $0E
#_0C9A4D: db $26 ; Byte Fill
#_0C9A4E: db $01
#_0C9A4F: db $23 ; Byte Fill
#_0C9A50: db $1C
#_0C9A51: db $03 ; Direct Copy
#_0C9A52: db $05, $1B, $10, $1B
#_0C9A56: db $27 ; Byte Fill
#_0C9A57: db $01
#_0C9A58: db $02 ; Direct Copy
#_0C9A59: db $1C, $1C, $10
#_0C9A5C: db $22 ; Byte Fill
#_0C9A5D: db $1C
#_0C9A5E: db $01 ; Direct Copy
#_0C9A5F: db $10, $0D
#_0C9A61: db $27 ; Byte Fill
#_0C9A62: db $01
#_0C9A63: db $04 ; Direct Copy
#_0C9A64: db $05, $1C, $15, $1C, $1C
#_0C9A69: db $2A ; Byte Fill
#_0C9A6A: db $01
#_0C9A6B: db $01 ; Direct Copy
#_0C9A6C: db $10, $15
#_0C9A6E: db $22 ; Byte Fill
#_0C9A6F: db $1C
#_0C9A70: db $2A ; Byte Fill
#_0C9A71: db $01
#_0C9A72: db $01 ; Direct Copy
#_0C9A73: db $15, $15
#_0C9A75: db $22 ; Byte Fill
#_0C9A76: db $1C
#_0C9A77: db $26 ; Byte Fill
#_0C9A78: db $03
#_0C9A79: db $23 ; Byte Fill
#_0C9A7A: db $01
#_0C9A7B: db $07 ; Direct Copy
#_0C9A7C: db $0F, $1C, $05, $1C, $1C, $05, $03, $01
#_0C9A84: db $43 ; Word Fill
#_0C9A85: db $01, $0E ;  Word Fill
#_0C9A87: db $00 ; Direct Copy
#_0C9A88: db $05
#_0C9A89: db $22 ; Byte Fill
#_0C9A8A: db $01
#_0C9A8B: db $22 ; Byte Fill
#_0C9A8C: db $1C
#_0C9A8D: db $43 ; Word Fill
#_0C9A8E: db $05, $1C ;  Word Fill
#_0C9A90: db $00 ; Direct Copy
#_0C9A91: db $0A
#_0C9A92: db $43 ; Word Fill
#_0C9A93: db $0A, $0E ;  Word Fill
#_0C9A95: db $83 ; Repeat Fill
#_0C9A96: db $00, $17 ; Repeat Fill bytes
#_0C9A98: db $22 ; Byte Fill
#_0C9A99: db $1C
#_0C9A9A: db $03 ; Direct Copy
#_0C9A9B: db $10, $1C, $1C, $05
#_0C9A9F: db $23 ; Byte Fill
#_0C9AA0: db $1C
#_0C9AA1: db $00 ; Direct Copy
#_0C9AA2: db $05
#_0C9AA3: db $83 ; Repeat Fill
#_0C9AA4: db $00, $27 ; Repeat Fill bytes
#_0C9AA6: db $00 ; Direct Copy
#_0C9AA7: db $1C
#_0C9AA8: db $43 ; Word Fill
#_0C9AA9: db $1C, $05 ;  Word Fill
#_0C9AAB: db $22 ; Byte Fill
#_0C9AAC: db $1C
#_0C9AAD: db $83 ; Repeat Fill
#_0C9AAE: db $00, $82 ; Repeat Fill bytes
#_0C9AB0: db $03 ; Direct Copy
#_0C9AB1: db $05, $06, $01, $0F
#_0C9AB5: db $23 ; Byte Fill
#_0C9AB6: db $1C
#_0C9AB7: db $02 ; Direct Copy
#_0C9AB8: db $05, $1C, $05
#_0C9ABB: db $25 ; Byte Fill
#_0C9ABC: db $1C
#_0C9ABD: db $22 ; Byte Fill
#_0C9ABE: db $01
#_0C9ABF: db $22 ; Byte Fill
#_0C9AC0: db $1C
#_0C9AC1: db $04 ; Direct Copy
#_0C9AC2: db $10, $1C, $11, $05, $11
#_0C9AC7: db $84 ; Repeat Fill
#_0C9AC8: db $00, $40 ; Repeat Fill bytes
#_0C9ACA: db $00 ; Direct Copy
#_0C9ACB: db $0C
#_0C9ACC: db $84 ; Repeat Fill
#_0C9ACD: db $00, $AE ; Repeat Fill bytes
#_0C9ACF: db $23 ; Byte Fill
#_0C9AD0: db $1C
#_0C9AD1: db $02 ; Direct Copy
#_0C9AD2: db $15, $1C, $05
#_0C9AD5: db $23 ; Byte Fill
#_0C9AD6: db $1C
#_0C9AD7: db $01 ; Direct Copy
#_0C9AD8: db $0D, $01
#_0C9ADA: db $24 ; Byte Fill
#_0C9ADB: db $1C
#_0C9ADC: db $01 ; Direct Copy
#_0C9ADD: db $0F, $1C
#_0C9ADF: db $43 ; Word Fill
#_0C9AE0: db $1C, $05 ;  Word Fill
#_0C9AE2: db $04 ; Direct Copy
#_0C9AE3: db $05, $1C, $1C, $0D, $1C
#_0C9AE8: db $FF ; End of Map 71

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen71_Low:
#_0C9AE9: db $26 ; Byte Fill
#_0C9AEA: db $0A
#_0C9AEB: db $00 ; Direct Copy
#_0C9AEC: db $A6
#_0C9AED: db $27 ; Byte Fill
#_0C9AEE: db $06
#_0C9AEF: db $26 ; Byte Fill
#_0C9AF0: db $15
#_0C9AF1: db $01 ; Direct Copy
#_0C9AF2: db $B1, $A6
#_0C9AF4: db $26 ; Byte Fill
#_0C9AF5: db $06
#_0C9AF6: db $26 ; Byte Fill
#_0C9AF7: db $1D
#_0C9AF8: db $01 ; Direct Copy
#_0C9AF9: db $7B, $EE
#_0C9AFB: db $26 ; Byte Fill
#_0C9AFC: db $06
#_0C9AFD: db $22 ; Byte Fill
#_0C9AFE: db $1D
#_0C9AFF: db $05 ; Direct Copy
#_0C9B00: db $1E, $FB, $DB, $EC, $DC, $5C
#_0C9B06: db $26 ; Byte Fill
#_0C9B07: db $06
#_0C9B08: db $02 ; Direct Copy
#_0C9B09: db $45, $27, $AE
#_0C9B0C: db $62 ; Increasing Fill
#_0C9B0D: db $7C ; Increasing Fill Start
#_0C9B0E: db $02 ; Direct Copy
#_0C9B0F: db $54, $E9, $6A
#_0C9B12: db $26 ; Byte Fill
#_0C9B13: db $06
#_0C9B14: db $05 ; Direct Copy
#_0C9B15: db $A4, $7F, $61, $80, $81, $53
#_0C9B1B: db $29 ; Byte Fill
#_0C9B1C: db $06
#_0C9B1D: db $05 ; Direct Copy
#_0C9B1E: db $AE, $7D, $32, $45, $82, $71
#_0C9B24: db $29 ; Byte Fill
#_0C9B25: db $06
#_0C9B26: db $01 ; Direct Copy
#_0C9B27: db $61, $61
#_0C9B29: db $62 ; Increasing Fill
#_0C9B2A: db $83 ; Increasing Fill Start
#_0C9B2B: db $01 ; Direct Copy
#_0C9B2C: db $51, $52
#_0C9B2E: db $23 ; Byte Fill
#_0C9B2F: db $20
#_0C9B30: db $00 ; Direct Copy
#_0C9B31: db $21
#_0C9B32: db $23 ; Byte Fill
#_0C9B33: db $06
#_0C9B34: db $0C ; Direct Copy
#_0C9B35: db $86, $86, $A4, $27, $87, $D0, $5A, $F8
#_0C9B3D: db $F8, $E4, $F8, $E5, $A6
#_0C9B42: db $22 ; Byte Fill
#_0C9B43: db $06
#_0C9B44: db $0B ; Direct Copy
#_0C9B45: db $88, $80, $71, $A4, $89, $DC, $8A, $08
#_0C9B4D: db $08, $E9, $08, $83
#_0C9B51: db $83 ; Repeat Fill
#_0C9B52: db $00, $17 ; Repeat Fill bytes
#_0C9B54: db $0B ; Direct Copy
#_0C9B55: db $8B, $27, $45, $AD, $24, $1E, $FB, $1F
#_0C9B5D: db $1D, $1D, $8C, $DC
#_0C9B61: db $83 ; Repeat Fill
#_0C9B62: db $00, $27 ; Repeat Fill bytes
#_0C9B64: db $19 ; Direct Copy
#_0C9B65: db $8D, $2F, $A4, $84, $A4, $8E, $1D, $25
#_0C9B6D: db $A4, $8F, $90, $FB, $E9, $12, $0C, $12
#_0C9B75: db $91, $92, $78, $93, $A4, $2F, $A4, $27
#_0C9B7D: db $94, $27
#_0C9B7F: db $62 ; Increasing Fill
#_0C9B80: db $95 ; Increasing Fill Start
#_0C9B81: db $E0, $2C ; EXT Direct Copy
#_0C9B83: db $03, $17, $0C, $98, $99, $45, $AD, $9A
#_0C9B8B: db $01, $C9, $02, $9B, $45, $AD, $9C, $96
#_0C9B93: db $8E, $24, $00, $9D, $36, $A4, $84, $2F
#_0C9B9B: db $9E, $9F, $7D, $A0, $A4, $84, $27, $9C
#_0C9BA3: db $96, $01, $00, $A1, $A2, $27, $45, $84
#_0C9BAB: db $9C, $49, $80, $A4, $A3
#_0C9BB0: db $22 ; Byte Fill
#_0C9BB1: db $A4
#_0C9BB2: db $02 ; Direct Copy
#_0C9BB3: db $A5, $01, $A6
#_0C9BB6: db $FF ; End of Map 71

;===================================================================================================

OverworldMap32_Screen72_High:
#_0C9BB7: db $03 ; Direct Copy
#_0C9BB8: db $00, $01, $07, $01
#_0C9BBC: db $22 ; Byte Fill
#_0C9BBD: db $08
#_0C9BBE: db $08 ; Direct Copy
#_0C9BBF: db $02, $0E, $04, $08, $08, $04, $08, $08
#_0C9BC7: db $04
#_0C9BC8: db $83 ; Repeat Fill
#_0C9BC9: db $00, $00 ; Repeat Fill bytes
#_0C9BCB: db $22 ; Byte Fill
#_0C9BCC: db $08
#_0C9BCD: db $00 ; Direct Copy
#_0C9BCE: db $06
#_0C9BCF: db $86 ; Repeat Fill
#_0C9BD0: db $00, $08 ; Repeat Fill bytes
#_0C9BD2: db $22 ; Byte Fill
#_0C9BD3: db $04
#_0C9BD4: db $06 ; Direct Copy
#_0C9BD5: db $07, $06, $08, $08, $01, $00, $01
#_0C9BDC: db $26 ; Byte Fill
#_0C9BDD: db $08
#_0C9BDE: db $0A ; Direct Copy
#_0C9BDF: db $01, $01, $0C, $06, $00, $01, $01, $06
#_0C9BE7: db $01, $01, $06
#_0C9BEA: db $83 ; Repeat Fill
#_0C9BEB: db $00, $0E ; Repeat Fill bytes
#_0C9BED: db $00 ; Direct Copy
#_0C9BEE: db $03
#_0C9BEF: db $23 ; Byte Fill
#_0C9BF0: db $0E
#_0C9BF1: db $1F ; Direct Copy
#_0C9BF2: db $06, $03, $04, $00, $03, $04, $0E, $01
#_0C9BFA: db $00, $00, $01, $06, $01, $02, $02, $0E
#_0C9C02: db $0E, $0F, $0C, $00, $01, $00, $07, $03
#_0C9C0A: db $06, $01, $06, $07, $01, $01, $02, $02
#_0C9C12: db $26 ; Byte Fill
#_0C9C13: db $0F
#_0C9C14: db $01 ; Direct Copy
#_0C9C15: db $07, $0F
#_0C9C17: db $22 ; Byte Fill
#_0C9C18: db $00
#_0C9C19: db $03 ; Direct Copy
#_0C9C1A: db $0E, $06, $02, $02
#_0C9C1E: db $23 ; Byte Fill
#_0C9C1F: db $1C
#_0C9C20: db $1C ; Direct Copy
#_0C9C21: db $02, $0F, $0F, $06, $0F, $0F, $02, $02
#_0C9C29: db $01, $03, $06, $03, $1B, $10, $15, $03
#_0C9C31: db $06, $0F, $00, $00, $01, $01, $00, $06
#_0C9C39: db $03, $03, $04, $03, $1C
#_0C9C3E: db $22 ; Byte Fill
#_0C9C3F: db $03
#_0C9C40: db $02 ; Direct Copy
#_0C9C41: db $07, $03, $03
#_0C9C44: db $83 ; Repeat Fill
#_0C9C45: db $00, $8B ; Repeat Fill bytes
#_0C9C47: db $09 ; Direct Copy
#_0C9C48: db $02, $0F, $1B, $03, $01, $01, $1B, $1C
#_0C9C50: db $1C, $0D
#_0C9C52: db $23 ; Byte Fill
#_0C9C53: db $03
#_0C9C54: db $04 ; Direct Copy
#_0C9C55: db $04, $06, $00, $02, $02
#_0C9C5A: db $22 ; Byte Fill
#_0C9C5B: db $01
#_0C9C5C: db $07 ; Direct Copy
#_0C9C5D: db $00, $09, $10, $05, $0D, $0E, $03, $03
#_0C9C65: db $83 ; Repeat Fill
#_0C9C66: db $00, $60 ; Repeat Fill bytes
#_0C9C68: db $15 ; Direct Copy
#_0C9C69: db $0C, $06, $1B, $03, $03, $09, $01, $0C
#_0C9C71: db $01, $03, $01, $00, $03, $03, $00, $0F
#_0C9C79: db $02, $07, $1C, $03, $07, $10
#_0C9C7F: db $24 ; Byte Fill
#_0C9C80: db $0F
#_0C9C81: db $0B ; Direct Copy
#_0C9C82: db $0B, $03, $00, $03, $0F, $0F, $0D, $03
#_0C9C8A: db $03, $1C, $0F, $01
#_0C9C8E: db $22 ; Byte Fill
#_0C9C8F: db $0F
#_0C9C90: db $01 ; Direct Copy
#_0C9C91: db $0D, $0F
#_0C9C93: db $22 ; Byte Fill
#_0C9C94: db $02
#_0C9C95: db $08 ; Direct Copy
#_0C9C96: db $0E, $0F, $0F, $0B, $0E, $01, $0F, $0F
#_0C9C9E: db $01
#_0C9C9F: db $43 ; Word Fill
#_0C9CA0: db $0B, $0F ;  Word Fill
#_0C9CA2: db $02 ; Direct Copy
#_0C9CA3: db $0F, $01, $0A
#_0C9CA6: db $FF ; End of Map 72

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen72_Low:
#_0C9CA7: db $E0, $28 ; EXT Direct Copy
#_0C9CA9: db $83, $1C, $41, $4D, $43, $44, $9A, $DE
#_0C9CB1: db $F7, $4A, $99, $44, $4A, $99, $44, $4A
#_0C9CB9: db $8C, $29, $41, $57, $4A, $4B, $A0, $66
#_0C9CC1: db $F8, $39, $9F, $4B, $39, $9F, $4B, $39
#_0C9CC9: db $07, $60, $41, $66, $4D, $4E, $62, $1D
#_0C9CD1: db $61
#_0C9CD2: db $62 ; Increasing Fill
#_0C9CD3: db $A4 ; Increasing Fill Start
#_0C9CD4: db $13 ; Direct Copy
#_0C9CD5: db $9C, $A5, $A6, $9C, $1B, $1C, $8A, $8F
#_0C9CDD: db $1D, $67, $68, $B3, $67, $68, $70, $2D
#_0C9CE5: db $56, $B6, $26, $D5
#_0C9CE9: db $63 ; Increasing Fill
#_0C9CEA: db $F9 ; Increasing Fill Start
#_0C9CEB: db $1F ; Direct Copy
#_0C9CEC: db $8F, $DB, $25, $1F, $DB, $25, $FD, $1E
#_0C9CF4: db $EE, $09, $2F, $66, $EB, $D1, $D2, $FE
#_0C9CFC: db $FF, $00, $28, $1F, $4C, $1C, $C5, $FF
#_0C9D04: db $2D, $0E, $2B, $2B, $06, $06, $DC, $DD
#_0C9D0C: db $66 ; Increasing Fill
#_0C9D0D: db $02 ; Increasing Fill Start
#_0C9D0E: db $01 ; Direct Copy
#_0C9D0F: db $C5, $09
#_0C9D11: db $22 ; Byte Fill
#_0C9D12: db $A1
#_0C9D13: db $03 ; Direct Copy
#_0C9D14: db $40, $A3, $DC, $DD
#_0C9D18: db $63 ; Increasing Fill
#_0C9D19: db $A7 ; Increasing Fill Start
#_0C9D1A: db $E0, $5E ; EXT Direct Copy
#_0C9D1C: db $5B, $0E, $0F, $9C, $10, $11, $5A, $5B
#_0C9D24: db $06, $6A, $AA, $AC, $2A, $F6, $92, $5D
#_0C9D2C: db $66, $19, $A5, $1D, $61, $62, $B2, $66
#_0C9D34: db $6A, $6B, $84, $A8, $AB, $20, $94, $AC
#_0C9D3C: db $8F, $44, $86, $1D, $67, $68, $1D, $DE
#_0C9D44: db $ED, $D8, $A8, $2D, $E4, $19, $AC, $AD
#_0C9D4C: db $48, $8C, $8D, $86, $DB, $25, $66, $1D
#_0C9D54: db $DC, $DD, $6D, $4B, $2D, $1D, $F4, $8D
#_0C9D5C: db $9D, $97, $3C, $8D, $E2, $4B, $1E, $DE
#_0C9D64: db $DC, $DE, $39, $4A, $FF, $E2, $EB, $71
#_0C9D6C: db $ED, $06, $63, $E3, $1D, $FF, $FF, $1C
#_0C9D74: db $29, $D2, $BF, $AE, $44, $C0, $8D
#_0C9D7B: db $64 ; Increasing Fill
#_0C9D7C: db $2B ; Increasing Fill Start
#_0C9D7D: db $0B ; Direct Copy
#_0C9D7E: db $46, $E2, $1D, $D5, $30, $29, $A1, $4B
#_0C9D86: db $4B, $AF, $2B, $69
#_0C9D8A: db $62 ; Increasing Fill
#_0C9D8B: db $34 ; Increasing Fill Start
#_0C9D8C: db $01 ; Direct Copy
#_0C9D8D: db $9E, $38
#_0C9D8F: db $22 ; Byte Fill
#_0C9D90: db $4C
#_0C9D91: db $0F ; Direct Copy
#_0C9D92: db $3C, $30, $39, $4B, $40, $06, $3A, $3B
#_0C9D9A: db $6A, $4D, $3C, $4B, $3D, $3E, $EB, $79
#_0C9DA2: db $FF ; End of Map 72

;===================================================================================================

OverworldMap32_Screen33_High:
#_0C9DA3: db $0B ; Direct Copy
#_0C9DA4: db $08, $08, $04, $08, $07, $06, $10, $01
#_0C9DAC: db $01, $10, $1C, $03
#_0C9DB0: db $23 ; Byte Fill
#_0C9DB1: db $01
#_0C9DB2: db $87 ; Repeat Fill
#_0C9DB3: db $00, $00 ; Repeat Fill bytes
#_0C9DB5: db $01 ; Direct Copy
#_0C9DB6: db $1C, $1C
#_0C9DB8: db $25 ; Byte Fill
#_0C9DB9: db $01
#_0C9DBA: db $23 ; Byte Fill
#_0C9DBB: db $08
#_0C9DBC: db $02 ; Direct Copy
#_0C9DBD: db $02, $06, $10
#_0C9DC0: db $23 ; Byte Fill
#_0C9DC1: db $1C
#_0C9DC2: db $11 ; Direct Copy
#_0C9DC3: db $06, $1C, $05, $03, $03, $00, $07, $06
#_0C9DCB: db $00, $19, $06, $10, $03, $1B, $06, $1C
#_0C9DD3: db $16, $1C
#_0C9DD5: db $22 ; Byte Fill
#_0C9DD6: db $1B
#_0C9DD7: db $08 ; Direct Copy
#_0C9DD8: db $0D, $1C, $09, $0D, $1C, $05, $10, $03
#_0C9DE0: db $1B
#_0C9DE1: db $22 ; Byte Fill
#_0C9DE2: db $1C
#_0C9DE3: db $05 ; Direct Copy
#_0C9DE4: db $16, $1C, $1B, $06, $00, $09
#_0C9DEA: db $22 ; Byte Fill
#_0C9DEB: db $1C
#_0C9DEC: db $02 ; Direct Copy
#_0C9DED: db $01, $10, $03
#_0C9DF0: db $28 ; Byte Fill
#_0C9DF1: db $1C
#_0C9DF2: db $06 ; Direct Copy
#_0C9DF3: db $00, $19, $1B, $1C, $03, $01, $03
#_0C9DFA: db $27 ; Byte Fill
#_0C9DFB: db $1C
#_0C9DFC: db $06 ; Direct Copy
#_0C9DFD: db $12, $0E, $1B, $09, $00, $07, $01
#_0C9E04: db $26 ; Byte Fill
#_0C9E05: db $1C
#_0C9E06: db $09 ; Direct Copy
#_0C9E07: db $0E, $05, $06, $1C, $1C, $00, $06, $07
#_0C9E0F: db $01, $0F
#_0C9E11: db $24 ; Byte Fill
#_0C9E12: db $1C
#_0C9E13: db $18 ; Direct Copy
#_0C9E14: db $05, $1C, $07, $00, $0B, $02, $1C, $0B
#_0C9E1C: db $01, $10, $0F, $1C, $10, $1C, $05, $07
#_0C9E24: db $1C, $0C, $05, $03, $00, $02, $16, $1C
#_0C9E2C: db $00
#_0C9E2D: db $83 ; Repeat Fill
#_0C9E2E: db $00, $56 ; Repeat Fill bytes
#_0C9E30: db $00 ; Direct Copy
#_0C9E31: db $05
#_0C9E32: db $24 ; Byte Fill
#_0C9E33: db $1C
#_0C9E34: db $08 ; Direct Copy
#_0C9E35: db $00, $01, $01, $16, $01, $07, $10, $03
#_0C9E3D: db $1B
#_0C9E3E: db $26 ; Byte Fill
#_0C9E3F: db $1C
#_0C9E40: db $07 ; Direct Copy
#_0C9E41: db $00, $0E, $01, $16, $01, $00, $10, $03
#_0C9E49: db $27 ; Byte Fill
#_0C9E4A: db $1C
#_0C9E4B: db $84 ; Repeat Fill
#_0C9E4C: db $00, $B0 ; Repeat Fill bytes
#_0C9E4E: db $03 ; Direct Copy
#_0C9E4F: db $00, $10, $01, $02
#_0C9E53: db $26 ; Byte Fill
#_0C9E54: db $1C
#_0C9E55: db $0F ; Direct Copy
#_0C9E56: db $02, $05, $01, $1C, $01, $06, $03, $02
#_0C9E5E: db $1C, $07, $06, $1C, $1D, $07, $1D, $1D
#_0C9E66: db $22 ; Byte Fill
#_0C9E67: db $01
#_0C9E68: db $03 ; Direct Copy
#_0C9E69: db $03, $01, $1D, $07
#_0C9E6D: db $24 ; Byte Fill
#_0C9E6E: db $06
#_0C9E6F: db $03 ; Direct Copy
#_0C9E70: db $1B, $06, $1D, $1D
#_0C9E74: db $FF ; End of Map 33

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen33_Low:
#_0C9E75: db $0C ; Direct Copy
#_0C9E76: db $99, $44, $4A, $BB, $59, $8E, $6E, $06
#_0C9E7E: db $06, $BE, $B0, $20, $0C
#_0C9E83: db $22 ; Byte Fill
#_0C9E84: db $06
#_0C9E85: db $17 ; Direct Copy
#_0C9E86: db $9F, $4B, $39, $BE, $63, $8E, $6E, $06
#_0C9E8E: db $B1, $B2, $E5, $E5, $17, $0C, $06, $06
#_0C9E96: db $A5, $A6, $9C, $9D, $4F, $8E, $6E, $1B
#_0C9E9E: db $62 ; Increasing Fill
#_0C9E9F: db $B3 ; Increasing Fill Start
#_0C9EA0: db $E0, $26 ; EXT Direct Copy
#_0C9EA2: db $CD, $B6, $61, $20, $20, $1D, $DD, $66
#_0C9EAA: db $A0, $BC, $8E, $6E, $63, $DD, $7C, $B7
#_0C9EB2: db $4D, $B8, $17, $19, $19, $A6, $B9, $E9
#_0C9EBA: db $A4, $BA, $4F, $6E, $63, $DD, $B7, $BB
#_0C9EC2: db $BC, $4D, $BD, $AF, $7C, $B2, $E4
#_0C9EC9: db $62 ; Increasing Fill
#_0C9ECA: db $BE ; Increasing Fill Start
#_0C9ECB: db $07 ; Direct Copy
#_0C9ECC: db $D2, $6E, $63, $C1, $BB, $C2, $C3, $BC
#_0C9ED4: db $63 ; Increasing Fill
#_0C9ED5: db $C4 ; Increasing Fill Start
#_0C9ED6: db $06 ; Direct Copy
#_0C9ED7: db $A1, $BC, $5F, $C8, $96, $5E, $65
#_0C9EDE: db $62 ; Increasing Fill
#_0C9EDF: db $C9 ; Increasing Fill Start
#_0C9EE0: db $64 ; Increasing Fill
#_0C9EE1: db $CB ; Increasing Fill Start
#_0C9EE2: db $06 ; Direct Copy
#_0C9EE3: db $87, $00, $5F, $DD, $1D, $B0, $00
#_0C9EEA: db $63 ; Increasing Fill
#_0C9EEB: db $D0 ; Increasing Fill Start
#_0C9EEC: db $62 ; Increasing Fill
#_0C9EED: db $D3 ; Increasing Fill Start
#_0C9EEE: db $09 ; Direct Copy
#_0C9EEF: db $29, $C9, $66, $D6, $D7, $1C, $66, $B0
#_0C9EF7: db $00, $83
#_0C9EF9: db $64 ; Increasing Fill
#_0C9EFA: db $D8 ; Increasing Fill Start
#_0C9EFB: db $1F ; Direct Copy
#_0C9EFC: db $E1, $DD, $19, $A5, $F9, $8D, $DE, $46
#_0C9F04: db $FC, $67, $C8, $DF, $B7, $E0, $E1, $89
#_0C9F0C: db $E1, $4C, $E1, $E2, $FB, $97, $B3, $E2
#_0C9F14: db $1D, $6E, $63, $E3, $E4, $D5, $DB, $DC
#_0C9F1C: db $62 ; Increasing Fill
#_0C9F1D: db $E5 ; Increasing Fill Start
#_0C9F1E: db $08 ; Direct Copy
#_0C9F1F: db $A9, $1E, $2E, $BC, $E3, $AF, $6E, $63
#_0C9F27: db $DA
#_0C9F28: db $62 ; Increasing Fill
#_0C9F29: db $E8 ; Increasing Fill Start
#_0C9F2A: db $63 ; Increasing Fill
#_0C9F2B: db $EA ; Increasing Fill Start
#_0C9F2C: db $07 ; Direct Copy
#_0C9F2D: db $1D, $FD, $2E, $BC, $E3, $1D, $6E, $63
#_0C9F35: db $67 ; Increasing Fill
#_0C9F36: db $EE ; Increasing Fill Start
#_0C9F37: db $01 ; Direct Copy
#_0C9F38: db $9F, $41
#_0C9F3A: db $83 ; Repeat Fill
#_0C9F3B: db $00, $C2 ; Repeat Fill bytes
#_0C9F3D: db $02 ; Direct Copy
#_0C9F3E: db $77, $FD, $91
#_0C9F41: db $66 ; Increasing Fill
#_0C9F42: db $F6 ; Increasing Fill Start
#_0C9F43: db $16 ; Direct Copy
#_0C9F44: db $4C, $58, $49, $FD, $E3, $66, $56, $04
#_0C9F4C: db $FE, $39, $CD, $FF, $00, $39, $01, $02
#_0C9F54: db $EB, $EB, $6A, $63, $E3, $03, $39
#_0C9F5B: db $23 ; Byte Fill
#_0C9F5C: db $7C
#_0C9F5D: db $04 ; Direct Copy
#_0C9F5E: db $CF, $AF, $7C, $04, $05
#_0C9F63: db $FF ; End of Map 33

;===================================================================================================

OverworldMap32_Screen34_High:
#_0C9F64: db $0A ; Direct Copy
#_0C9F65: db $0B, $19, $0C, $0C, $19, $03, $02, $06
#_0C9F6D: db $01, $01, $0D
#_0C9F70: db $43 ; Word Fill
#_0C9F71: db $0E, $01 ;  Word Fill
#_0C9F73: db $1F ; Direct Copy
#_0C9F74: db $0D, $19, $1D, $06, $09, $01, $03, $1D
#_0C9F7C: db $08, $04, $11, $0E, $0F, $1D, $03, $1B
#_0C9F84: db $0E, $03, $1D, $1D, $03, $1D, $1D, $03
#_0C9F8C: db $01, $04, $05, $0F, $1D, $1B, $0F, $01
#_0C9F94: db $24 ; Byte Fill
#_0C9F95: db $1B
#_0C9F96: db $07 ; Direct Copy
#_0C9F97: db $1C, $03, $1C, $07, $1C, $03, $0D, $1B
#_0C9F9F: db $43 ; Word Fill
#_0C9FA0: db $1D, $01 ;  Word Fill
#_0C9FA2: db $0A ; Direct Copy
#_0C9FA3: db $06, $19, $0F, $01, $1C, $06, $1C, $1D
#_0C9FAB: db $06, $03, $01
#_0C9FAE: db $22 ; Byte Fill
#_0C9FAF: db $1D
#_0C9FB0: db $00 ; Direct Copy
#_0C9FB1: db $01
#_0C9FB2: db $22 ; Byte Fill
#_0C9FB3: db $1D
#_0C9FB4: db $01 ; Direct Copy
#_0C9FB5: db $19, $06
#_0C9FB7: db $23 ; Byte Fill
#_0C9FB8: db $1D
#_0C9FB9: db $00 ; Direct Copy
#_0C9FBA: db $07
#_0C9FBB: db $24 ; Byte Fill
#_0C9FBC: db $06
#_0C9FBD: db $12 ; Direct Copy
#_0C9FBE: db $05, $01, $1D, $1D, $0D, $06, $1D, $1D
#_0C9FC6: db $06, $06, $07, $06, $06, $0D, $06, $06
#_0C9FCE: db $1D, $01, $05
#_0C9FD1: db $22 ; Byte Fill
#_0C9FD2: db $1D
#_0C9FD3: db $05 ; Direct Copy
#_0C9FD4: db $0D, $1D, $1C, $16, $06, $0D
#_0C9FDA: db $83 ; Repeat Fill
#_0C9FDB: db $00, $64 ; Repeat Fill bytes
#_0C9FDD: db $05 ; Direct Copy
#_0C9FDE: db $1D, $01, $07, $1D, $06, $06
#_0C9FE4: db $25 ; Byte Fill
#_0C9FE5: db $1D
#_0C9FE6: db $22 ; Byte Fill
#_0C9FE7: db $06
#_0C9FE8: db $25 ; Byte Fill
#_0C9FE9: db $1D
#_0C9FEA: db $00 ; Direct Copy
#_0C9FEB: db $06
#_0C9FEC: db $25 ; Byte Fill
#_0C9FED: db $1D
#_0C9FEE: db $03 ; Direct Copy
#_0C9FEF: db $06, $09, $1D, $1B
#_0C9FF3: db $25 ; Byte Fill
#_0C9FF4: db $1D
#_0C9FF5: db $00 ; Direct Copy
#_0C9FF6: db $0E
#_0C9FF7: db $23 ; Byte Fill
#_0C9FF8: db $1D
#_0C9FF9: db $04 ; Direct Copy
#_0C9FFA: db $0E, $06, $06, $03, $01
#_0C9FFF: db $25 ; Byte Fill
#_0CA000: db $1D
#_0CA001: db $00 ; Direct Copy
#_0CA002: db $06
#_0CA003: db $23 ; Byte Fill
#_0CA004: db $1D
#_0CA005: db $22 ; Byte Fill
#_0CA006: db $06
#_0CA007: db $05 ; Direct Copy
#_0CA008: db $1D, $11, $19, $10, $00, $07
#_0CA00E: db $87 ; Repeat Fill
#_0CA00F: db $00, $72 ; Repeat Fill bytes
#_0CA011: db $0C ; Direct Copy
#_0CA012: db $06, $06, $03, $0E, $05, $02, $1D, $06
#_0CA01A: db $0D, $06, $1D, $06, $1C
#_0CA01F: db $43 ; Word Fill
#_0CA020: db $1D, $06 ;  Word Fill
#_0CA022: db $02 ; Direct Copy
#_0CA023: db $0D, $1D, $03
#_0CA026: db $24 ; Byte Fill
#_0CA027: db $1D
#_0CA028: db $27 ; Byte Fill
#_0CA029: db $06
#_0CA02A: db $06 ; Direct Copy
#_0CA02B: db $1D, $06, $06, $10, $01, $1D, $1D
#_0CA032: db $2B ; Byte Fill
#_0CA033: db $06
#_0CA034: db $01 ; Direct Copy
#_0CA035: db $10, $0E
#_0CA037: db $FF ; End of Map 34

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen34_Low:
#_0CA038: db $0A ; Direct Copy
#_0CA039: db $56, $B2, $ED, $ED, $B2, $63, $E8, $66
#_0CA041: db $2E, $00, $4C
#_0CA044: db $43 ; Word Fill
#_0CA045: db $40, $06 ;  Word Fill
#_0CA047: db $E0, $20 ; EXT Direct Copy
#_0CA049: db $4C, $D4, $06, $A3, $D5, $06, $65, $07
#_0CA051: db $2D, $8D, $05, $40, $4C, $08, $20, $EF
#_0CA059: db $40, $20, $08, $09, $20, $0A, $0B, $A8
#_0CA061: db $1E, $93, $B1, $3F, $0C, $9D, $44, $17
#_0CA069: db $EF
#_0CA06A: db $23 ; Byte Fill
#_0CA06B: db $19
#_0CA06C: db $16 ; Direct Copy
#_0CA06D: db $AC, $A8, $FE, $39, $B8, $57, $FB, $9E
#_0CA075: db $0D, $17, $0E, $17, $7C, $A5, $01, $4C
#_0CA07D: db $FE, $C1, $EF, $0F, $7C, $56, $22
#_0CA084: db $62 ; Increasing Fill
#_0CA085: db $10 ; Increasing Fill Start
#_0CA086: db $00 ; Direct Copy
#_0CA087: db $17
#_0CA088: db $62 ; Increasing Fill
#_0CA089: db $13 ; Increasing Fill Start
#_0CA08A: db $02 ; Direct Copy
#_0CA08B: db $8B, $7C, $16
#_0CA08E: db $62 ; Increasing Fill
#_0CA08F: db $16 ; Increasing Fill Start
#_0CA090: db $00 ; Direct Copy
#_0CA091: db $65
#_0CA092: db $23 ; Byte Fill
#_0CA093: db $7C
#_0CA094: db $13 ; Direct Copy
#_0CA095: db $CD, $50, $25, $19, $1A, $F8, $7C, $1B
#_0CA09D: db $1B, $7C, $CD, $39, $7C, $7C, $F8, $7C
#_0CA0A5: db $7C, $1C, $25, $C9
#_0CA0A9: db $62 ; Increasing Fill
#_0CA0AA: db $1D ; Increasing Fill Start
#_0CA0AB: db $07 ; Direct Copy
#_0CA0AC: db $F8, $20, $B7, $4D, $7C, $F8, $1B, $1E
#_0CA0B4: db $83 ; Repeat Fill
#_0CA0B5: db $00, $6C ; Repeat Fill bytes
#_0CA0B7: db $04 ; Direct Copy
#_0CA0B8: db $36, $21, $7C, $7C, $1E
#_0CA0BD: db $63 ; Increasing Fill
#_0CA0BE: db $22 ; Increasing Fill Start
#_0CA0BF: db $00 ; Direct Copy
#_0CA0C0: db $1E
#_0CA0C1: db $22 ; Byte Fill
#_0CA0C2: db $7C
#_0CA0C3: db $63 ; Increasing Fill
#_0CA0C4: db $26 ; Increasing Fill Start
#_0CA0C5: db $02 ; Direct Copy
#_0CA0C6: db $21, $2A, $7C
#_0CA0C9: db $64 ; Increasing Fill
#_0CA0CA: db $2B ; Increasing Fill Start
#_0CA0CB: db $04 ; Direct Copy
#_0CA0CC: db $2B, $7C, $25, $30, $2A
#_0CA0D1: db $65 ; Increasing Fill
#_0CA0D2: db $31 ; Increasing Fill Start
#_0CA0D3: db $01 ; Direct Copy
#_0CA0D4: db $12, $2C
#_0CA0D6: db $62 ; Increasing Fill
#_0CA0D7: db $37 ; Increasing Fill Start
#_0CA0D8: db $04 ; Direct Copy
#_0CA0D9: db $12, $7C, $CD, $96, $5E
#_0CA0DE: db $63 ; Increasing Fill
#_0CA0DF: db $3A ; Increasing Fill Start
#_0CA0E0: db $02 ; Direct Copy
#_0CA0E1: db $2C, $3E, $7C
#_0CA0E4: db $63 ; Increasing Fill
#_0CA0E5: db $3F ; Increasing Fill Start
#_0CA0E6: db $22 ; Byte Fill
#_0CA0E7: db $7C
#_0CA0E8: db $09 ; Direct Copy
#_0CA0E9: db $43, $05, $D5, $67, $1D, $39, $44, $45
#_0CA0F1: db $F8, $46
#_0CA0F3: db $83 ; Repeat Fill
#_0CA0F4: db $00, $76 ; Repeat Fill bytes
#_0CA0F6: db $18 ; Direct Copy
#_0CA0F7: db $7C, $7C, $56, $C0, $A6, $69, $46, $7C
#_0CA0FF: db $F8, $7C, $47, $7C, $C3, $48, $7C, $1E
#_0CA107: db $7C, $F8, $49, $56, $4A, $4B, $02, $4C
#_0CA10F: db $1E
#_0CA110: db $27 ; Byte Fill
#_0CA111: db $7C
#_0CA112: db $06 ; Direct Copy
#_0CA113: db $1E, $7C, $C1, $6E, $01, $4D, $4E
#_0CA11A: db $2A ; Byte Fill
#_0CA11B: db $7C
#_0CA11C: db $02 ; Direct Copy
#_0CA11D: db $CD, $6E, $40
#_0CA120: db $FF ; End of Map 34

;===================================================================================================

OverworldMap32_Screen75_High:
#_0CA121: db $03 ; Direct Copy
#_0CA122: db $0D, $0B, $03, $01
#_0CA126: db $25 ; Byte Fill
#_0CA127: db $00
#_0CA128: db $03 ; Direct Copy
#_0CA129: db $03, $03, $01, $01
#_0CA12D: db $25 ; Byte Fill
#_0CA12E: db $03
#_0CA12F: db $00 ; Direct Copy
#_0CA130: db $00
#_0CA131: db $44 ; Word Fill
#_0CA132: db $06, $07 ;  Word Fill
#_0CA134: db $84 ; Repeat Fill
#_0CA135: db $00, $0A ; Repeat Fill bytes
#_0CA137: db $22 ; Byte Fill
#_0CA138: db $01
#_0CA139: db $0A ; Direct Copy
#_0CA13A: db $03, $03, $00, $0F, $0F, $00, $02, $0F
#_0CA142: db $00, $03, $1D
#_0CA145: db $43 ; Word Fill
#_0CA146: db $01, $0F ;  Word Fill
#_0CA148: db $18 ; Direct Copy
#_0CA149: db $07, $03, $03, $0F, $07, $0F, $0F, $07
#_0CA151: db $09, $0F, $0F, $05, $04, $1D, $01, $03
#_0CA159: db $02, $00, $00, $0F, $07, $0F, $00, $00
#_0CA161: db $0F
#_0CA162: db $22 ; Byte Fill
#_0CA163: db $02
#_0CA164: db $01 ; Direct Copy
#_0CA165: db $04, $0C
#_0CA167: db $22 ; Byte Fill
#_0CA168: db $1D
#_0CA169: db $22 ; Byte Fill
#_0CA16A: db $01
#_0CA16B: db $04 ; Direct Copy
#_0CA16C: db $04, $0F, $0F, $03, $0F
#_0CA171: db $22 ; Byte Fill
#_0CA172: db $02
#_0CA173: db $03 ; Direct Copy
#_0CA174: db $07, $05, $1D, $0F
#_0CA178: db $22 ; Byte Fill
#_0CA179: db $1D
#_0CA17A: db $05 ; Direct Copy
#_0CA17B: db $01, $0F, $0F, $02, $07, $0F
#_0CA181: db $23 ; Byte Fill
#_0CA182: db $07
#_0CA183: db $0D ; Direct Copy
#_0CA184: db $1D, $1D, $0F, $02, $0B, $0B, $00, $0F
#_0CA18C: db $02, $05, $07, $05, $15, $1D
#_0CA192: db $43 ; Word Fill
#_0CA193: db $05, $07 ;  Word Fill
#_0CA195: db $05 ; Direct Copy
#_0CA196: db $0F, $0F, $01, $08, $08, $0F
#_0CA19C: db $22 ; Byte Fill
#_0CA19D: db $07
#_0CA19E: db $01 ; Direct Copy
#_0CA19F: db $1D, $08
#_0CA1A1: db $43 ; Word Fill
#_0CA1A2: db $1D, $05 ;  Word Fill
#_0CA1A4: db $02 ; Direct Copy
#_0CA1A5: db $08, $10, $0D
#_0CA1A8: db $83 ; Repeat Fill
#_0CA1A9: db $00, $46 ; Repeat Fill bytes
#_0CA1AB: db $0C ; Direct Copy
#_0CA1AC: db $07, $0C, $05, $05, $1D, $1D, $1C, $0F
#_0CA1B4: db $1D, $05, $0F, $0B, $0F
#_0CA1B9: db $83 ; Repeat Fill
#_0CA1BA: db $00, $83 ; Repeat Fill bytes
#_0CA1BC: db $08 ; Direct Copy
#_0CA1BD: db $05, $08, $1D, $1D, $05, $10, $05, $11
#_0CA1C5: db $07
#_0CA1C6: db $22 ; Byte Fill
#_0CA1C7: db $0F
#_0CA1C8: db $13 ; Direct Copy
#_0CA1C9: db $00, $00, $0F, $08, $09, $07, $1D, $0F
#_0CA1D1: db $05, $1D, $05, $10, $07, $0F, $07, $02
#_0CA1D9: db $00, $03, $02, $04
#_0CA1DD: db $22 ; Byte Fill
#_0CA1DE: db $05
#_0CA1DF: db $83 ; Repeat Fill
#_0CA1E0: db $00, $B9 ; Repeat Fill bytes
#_0CA1E2: db $0C ; Direct Copy
#_0CA1E3: db $1D, $07, $0F, $02, $05, $01, $1D, $0F
#_0CA1EB: db $05, $07, $07, $0F, $15
#_0CA1F0: db $43 ; Word Fill
#_0CA1F1: db $1D, $05 ;  Word Fill
#_0CA1F3: db $0C ; Direct Copy
#_0CA1F4: db $08, $0F, $1D, $04, $04, $0D, $00, $05
#_0CA1FC: db $07, $0E, $1D, $1D, $0F
#_0CA201: db $84 ; Repeat Fill
#_0CA202: db $00, $D5 ; Repeat Fill bytes
#_0CA204: db $0E ; Direct Copy
#_0CA205: db $0F, $02, $1D, $03, $00, $0F, $07, $10
#_0CA20D: db $10, $1D, $05, $11, $07, $07, $05
#_0CA214: db $FF ; End of Map 75

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen75_Low:
#_0CA215: db $05 ; Direct Copy
#_0CA216: db $4B, $56, $63, $E3, $1D, $1C
#_0CA21C: db $23 ; Byte Fill
#_0CA21D: db $1D
#_0CA21E: db $04 ; Direct Copy
#_0CA21F: db $50, $51, $0A, $0A, $52
#_0CA224: db $22 ; Byte Fill
#_0CA225: db $20
#_0CA226: db $E0, $37 ; EXT Direct Copy
#_0CA228: db $94, $95, $1D, $8B, $05, $9C, $04, $8F
#_0CA230: db $56, $57, $15, $15, $5A, $F8, $02, $02
#_0CA238: db $9C, $9D, $1D, $46, $47, $1D, $5E, $48
#_0CA240: db $1D, $56, $4F, $22, $4B, $02, $4C, $6F
#_0CA248: db $BB, $A8, $4D, $41, $4E, $4F, $09, $B2
#_0CA250: db $50, $50, $0C, $8A, $50, $0A, $63, $86
#_0CA258: db $1D, $1D, $4D, $41, $4E, $1D, $1D, $53
#_0CA260: db $22 ; Byte Fill
#_0CA261: db $08
#_0CA262: db $01 ; Direct Copy
#_0CA263: db $90, $74
#_0CA265: db $62 ; Increasing Fill
#_0CA266: db $51 ; Increasing Fill Start
#_0CA267: db $07 ; Direct Copy
#_0CA268: db $2B, $2B, $2C, $37, $5B, $5C, $B3, $5D
#_0CA270: db $22 ; Byte Fill
#_0CA271: db $FB
#_0CA272: db $03 ; Direct Copy
#_0CA273: db $1B, $9F, $54, $61
#_0CA277: db $62 ; Increasing Fill
#_0CA278: db $55 ; Increasing Fill Start
#_0CA279: db $05 ; Direct Copy
#_0CA27A: db $40, $5B, $66, $79, $1B, $68
#_0CA280: db $22 ; Byte Fill
#_0CA281: db $79
#_0CA282: db $E0, $92 ; EXT Direct Copy
#_0CA284: db $31, $58, $59, $61, $DD, $3E, $3F, $1D
#_0CA28C: db $66, $79, $99, $31, $E1, $62, $5A, $E1
#_0CA294: db $19, $E1, $36, $73, $74, $D5, $2D, $2D
#_0CA29C: db $76, $1E, $1F, $89, $5B, $AA, $5C, $E1
#_0CA2A4: db $5D, $E0, $AA, $70, $9E, $7A, $1D, $1D
#_0CA2AC: db $7B, $8E, $4C, $E1, $E1, $5B, $5E, $E7
#_0CA2B4: db $94, $5C, $E1, $82, $56, $83, $2D, $2D
#_0CA2BC: db $84, $8E, $E1, $AA, $5F, $60, $BD, $AD
#_0CA2C4: db $BD, $03, $4B, $8A, $4C, $8B, $1D, $A5
#_0CA2CC: db $8C, $C0, $52, $20, $54, $85, $A4, $61
#_0CA2D4: db $A4, $A6, $55, $91, $6F, $7A, $1D, $FF
#_0CA2DC: db $30, $F3, $DF, $E1, $E1, $5B, $72, $C9
#_0CA2E4: db $62, $5C, $20, $61, $86, $46, $F2, $63
#_0CA2EC: db $92, $6F, $8E, $20, $70, $61, $64, $E1
#_0CA2F4: db $5B, $E1, $AA, $61, $65, $B2, $7B, $B9
#_0CA2FC: db $1D, $6F, $8E, $23, $66, $67, $9C, $9D
#_0CA304: db $E1, $19, $89, $61, $96, $02, $68, $A8
#_0CA30C: db $1C, $97, $8E, $D8, $AC, $69, $A4, $0A
#_0CA314: db $36, $36, $E1
#_0CA317: db $FF ; End of Map 75

;===================================================================================================

OverworldMap32_Screen76_High:
#_0CA318: db $12 ; Direct Copy
#_0CA319: db $03, $06, $0F, $03, $03, $01, $0B, $02
#_0CA321: db $0F, $07, $05, $07, $08, $01, $02, $02
#_0CA329: db $0E, $03, $07
#_0CA32C: db $22 ; Byte Fill
#_0CA32D: db $01
#_0CA32E: db $01 ; Direct Copy
#_0CA32F: db $07, $06
#_0CA331: db $87 ; Repeat Fill
#_0CA332: db $00, $08 ; Repeat Fill bytes
#_0CA334: db $01 ; Direct Copy
#_0CA335: db $0F, $03
#_0CA337: db $23 ; Byte Fill
#_0CA338: db $01
#_0CA339: db $0E ; Direct Copy
#_0CA33A: db $03, $0E, $0F, $07, $05, $09, $02, $01
#_0CA342: db $02, $02, $1D, $0F, $0F, $01, $01
#_0CA349: db $22 ; Byte Fill
#_0CA34A: db $0F
#_0CA34B: db $14 ; Direct Copy
#_0CA34C: db $05, $0F, $05, $09, $0F, $01, $02, $02
#_0CA354: db $07, $01, $0F, $06, $06, $0F, $01, $05
#_0CA35C: db $07, $07, $04, $01, $06
#_0CA361: db $83 ; Repeat Fill
#_0CA362: db $00, $3D ; Repeat Fill bytes
#_0CA364: db $00 ; Direct Copy
#_0CA365: db $09
#_0CA366: db $24 ; Byte Fill
#_0CA367: db $05
#_0CA368: db $22 ; Byte Fill
#_0CA369: db $07
#_0CA36A: db $02 ; Direct Copy
#_0CA36B: db $09, $06, $00
#_0CA36E: db $83 ; Repeat Fill
#_0CA36F: db $00, $3D ; Repeat Fill bytes
#_0CA371: db $02 ; Direct Copy
#_0CA372: db $07, $05, $07
#_0CA375: db $24 ; Byte Fill
#_0CA376: db $05
#_0CA377: db $06 ; Direct Copy
#_0CA378: db $07, $07, $01, $04, $01, $0F, $0F
#_0CA37F: db $22 ; Byte Fill
#_0CA380: db $1D
#_0CA381: db $0C ; Direct Copy
#_0CA382: db $05, $0F, $1D, $11, $09, $0B, $05, $07
#_0CA38A: db $07, $0F, $1D, $05, $0F
#_0CA38F: db $26 ; Byte Fill
#_0CA390: db $1D
#_0CA391: db $09 ; Direct Copy
#_0CA392: db $1C, $0F, $1C, $1D, $07, $0F, $05, $0F
#_0CA39A: db $0F, $05
#_0CA39C: db $28 ; Byte Fill
#_0CA39D: db $1D
#_0CA39E: db $22 ; Byte Fill
#_0CA39F: db $0F
#_0CA3A0: db $02 ; Direct Copy
#_0CA3A1: db $0B, $0F, $02
#_0CA3A4: db $2C ; Byte Fill
#_0CA3A5: db $1D
#_0CA3A6: db $02 ; Direct Copy
#_0CA3A7: db $07, $0F, $02
#_0CA3AA: db $2C ; Byte Fill
#_0CA3AB: db $1D
#_0CA3AC: db $02 ; Direct Copy
#_0CA3AD: db $07, $0F, $0F
#_0CA3B0: db $2B ; Byte Fill
#_0CA3B1: db $1D
#_0CA3B2: db $02 ; Direct Copy
#_0CA3B3: db $07, $07, $0F
#_0CA3B6: db $2C ; Byte Fill
#_0CA3B7: db $1D
#_0CA3B8: db $03 ; Direct Copy
#_0CA3B9: db $05, $07, $01, $0F
#_0CA3BD: db $2B ; Byte Fill
#_0CA3BE: db $1D
#_0CA3BF: db $03 ; Direct Copy
#_0CA3C0: db $1C, $07, $0F, $0F
#_0CA3C4: db $2C ; Byte Fill
#_0CA3C5: db $1D
#_0CA3C6: db $02 ; Direct Copy
#_0CA3C7: db $0B, $0F, $01
#_0CA3CA: db $FF ; End of Map 76

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen76_Low:
#_0CA3CB: db $18 ; Direct Copy
#_0CA3CC: db $21, $A2, $4C, $20, $20, $0C, $4B, $DC
#_0CA3D4: db $61, $8E, $E1, $6E, $B7, $77, $82, $82
#_0CA3DC: db $E5, $52, $6F, $F8, $F8, $17, $0E, $AA
#_0CA3E4: db $A0
#_0CA3E5: db $86 ; Repeat Fill
#_0CA3E6: db $00, $09 ; Repeat Fill bytes
#_0CA3E8: db $E0, $3B ; EXT Direct Copy
#_0CA3EA: db $A1, $5A, $ED, $02, $02, $03, $9C, $56
#_0CA3F2: db $A2, $13, $E2, $15, $41, $77, $82, $82
#_0CA3FA: db $6A, $A4, $A5, $0A, $0A, $A6, $A7, $A2
#_0CA402: db $99, $A8, $EE, $1B, $A9, $77, $82, $82
#_0CA40A: db $1C, $09, $AA, $A0, $A0, $AB, $FD, $99
#_0CA412: db $1F, $32, $FA, $CC, $66, $77, $82, $82
#_0CA41A: db $14, $F7, $9F, $E1, $E1, $AB, $AC, $18
#_0CA422: db $36, $6E, $B7, $66
#_0CA426: db $83 ; Repeat Fill
#_0CA427: db $00, $3C ; Repeat Fill bytes
#_0CA429: db $03 ; Direct Copy
#_0CA42A: db $89, $20, $E1, $3E
#_0CA42E: db $24 ; Byte Fill
#_0CA42F: db $E1
#_0CA430: db $06 ; Direct Copy
#_0CA431: db $37, $38, $F0, $C2, $77, $AD, $B1
#_0CA438: db $62 ; Increasing Fill
#_0CA439: db $6B ; Increasing Fill Start
#_0CA43A: db $0C ; Direct Copy
#_0CA43B: db $E1, $70, $6E, $03, $9D, $DF, $AB, $3F
#_0CA443: db $28, $B3, $6F, $63, $B5
#_0CA448: db $66 ; Increasing Fill
#_0CA449: db $70 ; Increasing Fill Start
#_0CA44A: db $09 ; Direct Copy
#_0CA44B: db $49, $60, $49, $77, $30, $B7, $A2, $B8
#_0CA453: db $B9, $E1
#_0CA455: db $68 ; Increasing Fill
#_0CA456: db $78 ; Increasing Fill Start
#_0CA457: db $05 ; Direct Copy
#_0CA458: db $9C, $94, $95, $D9, $BC, $82
#_0CA45E: db $63 ; Increasing Fill
#_0CA45F: db $81 ; Increasing Fill Start
#_0CA460: db $02 ; Direct Copy
#_0CA461: db $84, $85, $84
#_0CA464: db $65 ; Increasing Fill
#_0CA465: db $86 ; Increasing Fill Start
#_0CA466: db $02 ; Direct Copy
#_0CA467: db $4C, $C1, $82
#_0CA46A: db $66 ; Increasing Fill
#_0CA46B: db $8C ; Increasing Fill Start
#_0CA46C: db $01 ; Direct Copy
#_0CA46D: db $90, $90
#_0CA46F: db $63 ; Increasing Fill
#_0CA470: db $93 ; Increasing Fill Start
#_0CA471: db $07 ; Direct Copy
#_0CA472: db $4C, $C1, $C5, $97, $98, $8E, $99, $92
#_0CA47A: db $62 ; Increasing Fill
#_0CA47B: db $9A ; Increasing Fill Start
#_0CA47C: db $09 ; Direct Copy
#_0CA47D: db $92, $93, $9D, $9E, $36, $4C, $C1, $9F
#_0CA485: db $A0, $8D
#_0CA487: db $64 ; Increasing Fill
#_0CA488: db $A1 ; Increasing Fill Start
#_0CA489: db $00 ; Direct Copy
#_0CA48A: db $A2
#_0CA48B: db $63 ; Increasing Fill
#_0CA48C: db $A6 ; Increasing Fill Start
#_0CA48D: db $03 ; Direct Copy
#_0CA48E: db $E1, $32, $53, $CD
#_0CA492: db $6B ; Increasing Fill
#_0CA493: db $AA ; Increasing Fill Start
#_0CA494: db $06 ; Direct Copy
#_0CA495: db $9E, $37, $D1, $D2, $B6, $B7, $AC
#_0CA49C: db $62 ; Increasing Fill
#_0CA49D: db $B8 ; Increasing Fill Start
#_0CA49E: db $62 ; Increasing Fill
#_0CA49F: db $BA ; Increasing Fill Start
#_0CA4A0: db $06 ; Direct Copy
#_0CA4A1: db $AC, $94, $BD, $BE, $D9, $BC, $25
#_0CA4A8: db $FF ; End of Map 76

;===================================================================================================

OverworldMap32_Screen37_High:
#_0CA4A9: db $01 ; Direct Copy
#_0CA4AA: db $01, $01
#_0CA4AC: db $24 ; Byte Fill
#_0CA4AD: db $0F
#_0CA4AE: db $03 ; Direct Copy
#_0CA4AF: db $1D, $0D, $03, $0D
#_0CA4B3: db $22 ; Byte Fill
#_0CA4B4: db $01
#_0CA4B5: db $E0, $24 ; EXT Direct Copy
#_0CA4B7: db $02, $05, $01, $01, $1B, $0F, $1D, $1D
#_0CA4BF: db $0F, $1D, $0D, $04, $01, $01, $02, $02
#_0CA4C7: db $05, $1D, $1D, $01, $1D, $1B, $1D, $1D
#_0CA4CF: db $1B, $02, $01, $03, $06, $01, $01, $05
#_0CA4D7: db $1D, $1B, $01, $02, $19
#_0CA4DC: db $23 ; Byte Fill
#_0CA4DD: db $06
#_0CA4DE: db $11 ; Direct Copy
#_0CA4DF: db $1D, $06, $00, $04, $0E, $04, $1D, $1B
#_0CA4E7: db $02, $05, $1D, $00, $07, $06, $09, $06
#_0CA4EF: db $01, $08
#_0CA4F1: db $23 ; Byte Fill
#_0CA4F2: db $1D
#_0CA4F3: db $0B ; Direct Copy
#_0CA4F4: db $1B, $02, $05, $0F, $15, $03, $1B, $02
#_0CA4FC: db $01, $1D, $01, $01
#_0CA500: db $23 ; Byte Fill
#_0CA501: db $1D
#_0CA502: db $0B ; Direct Copy
#_0CA503: db $02, $05, $01, $10, $1D, $1D, $02, $1B
#_0CA50B: db $07, $02, $01, $01
#_0CA50F: db $23 ; Byte Fill
#_0CA510: db $1D
#_0CA511: db $06 ; Direct Copy
#_0CA512: db $05, $01, $01, $10, $03, $1D, $05
#_0CA519: db $22 ; Byte Fill
#_0CA51A: db $07
#_0CA51B: db $00 ; Direct Copy
#_0CA51C: db $06
#_0CA51D: db $22 ; Byte Fill
#_0CA51E: db $1D
#_0CA51F: db $11 ; Direct Copy
#_0CA520: db $1C, $19, $01, $01, $14, $1D, $03, $06
#_0CA528: db $09, $07, $05, $07, $07, $1D, $10, $1D
#_0CA530: db $09, $06
#_0CA532: db $22 ; Byte Fill
#_0CA533: db $01
#_0CA534: db $0D ; Direct Copy
#_0CA535: db $1D, $1D, $05, $07, $1D, $0E, $09, $05
#_0CA53D: db $0F, $06, $1D, $1D, $01, $1C
#_0CA543: db $22 ; Byte Fill
#_0CA544: db $01
#_0CA545: db $22 ; Byte Fill
#_0CA546: db $07
#_0CA547: db $08 ; Direct Copy
#_0CA548: db $1D, $0F, $0F, $09, $05, $1D, $06, $1D
#_0CA550: db $1D
#_0CA551: db $23 ; Byte Fill
#_0CA552: db $01
#_0CA553: db $02 ; Direct Copy
#_0CA554: db $07, $05, $07
#_0CA557: db $43 ; Word Fill
#_0CA558: db $1D, $05 ;  Word Fill
#_0CA55A: db $00 ; Direct Copy
#_0CA55B: db $07
#_0CA55C: db $85 ; Repeat Fill
#_0CA55D: db $00, $A8 ; Repeat Fill bytes
#_0CA55F: db $03 ; Direct Copy
#_0CA560: db $0F, $01, $07, $07
#_0CA564: db $22 ; Byte Fill
#_0CA565: db $06
#_0CA566: db $06 ; Direct Copy
#_0CA567: db $10, $07, $09, $07, $0B, $1D, $16
#_0CA56E: db $83 ; Repeat Fill
#_0CA56F: db $00, $56 ; Repeat Fill bytes
#_0CA571: db $00 ; Direct Copy
#_0CA572: db $0F
#_0CA573: db $83 ; Repeat Fill
#_0CA574: db $00, $C1 ; Repeat Fill bytes
#_0CA576: db $0B ; Direct Copy
#_0CA577: db $1D, $10, $07, $07, $19, $1D, $05, $0C
#_0CA57F: db $01, $06, $01, $0F
#_0CA583: db $83 ; Repeat Fill
#_0CA584: db $00, $D1 ; Repeat Fill bytes
#_0CA586: db $0C ; Direct Copy
#_0CA587: db $1D, $10, $10, $1D, $1D, $05, $1D, $1D
#_0CA58F: db $1B, $01, $0C, $03, $05
#_0CA594: db $22 ; Byte Fill
#_0CA595: db $1D
#_0CA596: db $02 ; Direct Copy
#_0CA597: db $0A, $05, $10
#_0CA59A: db $22 ; Byte Fill
#_0CA59B: db $05
#_0CA59C: db $83 ; Repeat Fill
#_0CA59D: db $00, $6B ; Repeat Fill bytes
#_0CA59F: db $FF ; End of Map 37

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen37_Low:
#_0CA5A0: db $01 ; Direct Copy
#_0CA5A1: db $ED, $ED
#_0CA5A3: db $24 ; Byte Fill
#_0CA5A4: db $43
#_0CA5A5: db $E0, $2B ; EXT Direct Copy
#_0CA5A7: db $BF, $FB, $6C, $FB, $16, $03, $24, $82
#_0CA5AF: db $60, $ED, $ED, $9D, $43, $C0, $C1, $43
#_0CA5B7: db $BF, $FB, $84, $22, $23, $75, $82, $60
#_0CA5BF: db $C2, $C3, $ED, $0D, $19, $C4, $C5, $19
#_0CA5C7: db $02, $22, $A8, $66, $1E, $2E, $60, $C2
#_0CA5CF: db $BA, $D6, $86, $A8
#_0CA5D3: db $23 ; Byte Fill
#_0CA5D4: db $7C
#_0CA5D5: db $11 ; Direct Copy
#_0CA5D6: db $C6, $66, $99, $BE, $FD, $8D, $C2, $BA
#_0CA5DE: db $82, $83, $C7, $1D, $AF, $7C, $25, $83
#_0CA5E6: db $60, $2D
#_0CA5E8: db $63 ; Increasing Fill
#_0CA5E9: db $C8 ; Increasing Fill Start
#_0CA5EA: db $0B ; Direct Copy
#_0CA5EB: db $BA, $82, $DE, $8A, $92, $5D, $9B, $08
#_0CA5F3: db $F0, $CC, $DB, $75
#_0CA5F7: db $63 ; Increasing Fill
#_0CA5F8: db $CD ; Increasing Fill Start
#_0CA5F9: db $0B ; Direct Copy
#_0CA5FA: db $82, $DE, $03, $C3, $D1, $D2, $79, $B3
#_0CA602: db $28, $FB, $E6, $DB
#_0CA606: db $63 ; Increasing Fill
#_0CA607: db $D3 ; Increasing Fill Start
#_0CA608: db $0A ; Direct Copy
#_0CA609: db $DE, $03, $03, $C3, $65, $D7, $99, $79
#_0CA611: db $30, $79, $16
#_0CA614: db $62 ; Increasing Fill
#_0CA615: db $D8 ; Increasing Fill Start
#_0CA616: db $E0, $3D ; EXT Direct Copy
#_0CA618: db $BF, $D5, $03, $03, $E8, $DB, $6B, $13
#_0CA620: db $83, $20, $E1, $35, $4C, $DC, $DA, $DD
#_0CA628: db $D5, $A2, $01, $24, $73, $DE, $DF, $9F
#_0CA630: db $35, $E0, $27, $52, $97, $8E, $07, $E1
#_0CA638: db $E2, $06, $13, $73, $73, $D6, $8E, $20
#_0CA640: db $67, $E3, $80, $81, $52, $AB, $E4, $07
#_0CA648: db $E5, $E6, $69, $49, $73, $D6, $8E, $E1
#_0CA650: db $6E, $E7, $FB, $E8, $C5, $35
#_0CA656: db $83 ; Repeat Fill
#_0CA657: db $00, $A8 ; Repeat Fill bytes
#_0CA659: db $E0, $35 ; EXT Direct Copy
#_0CA65B: db $E9, $00, $C5, $D6, $8E, $35, $0A, $0B
#_0CA663: db $01, $E4, $3B, $52, $20, $D9, $EA, $98
#_0CA66B: db $EB, $17, $01, $EC, $C4, $43, $14, $16
#_0CA673: db $0B, $ED, $E4, $3B, $3C, $BB, $EE, $FB
#_0CA67B: db $8E, $03, $1B, $06, $C8, $C9, $54, $14
#_0CA683: db $16, $EF, $E3, $E4, $F0, $F1, $F4, $F2
#_0CA68B: db $F3, $D9, $71, $ED, $63, $8A
#_0CA691: db $62 ; Increasing Fill
#_0CA692: db $F4 ; Increasing Fill Start
#_0CA693: db $09 ; Direct Copy
#_0CA694: db $04, $FB, $E3, $FA, $FC, $FB, $F7, $F8
#_0CA69C: db $E9, $71
#_0CA69E: db $FF ; End of Map 37

;===================================================================================================

OverworldMap32_Screen78_High:
#_0CA69F: db $07 ; Direct Copy
#_0CA6A0: db $0D, $03, $10, $03, $1C, $05, $1C, $0F
#_0CA6A8: db $22 ; Byte Fill
#_0CA6A9: db $1D
#_0CA6AA: db $08 ; Direct Copy
#_0CA6AB: db $05, $11, $15, $05, $10, $0B, $03, $0F
#_0CA6B3: db $0F
#_0CA6B4: db $22 ; Byte Fill
#_0CA6B5: db $1C
#_0CA6B6: db $1D ; Direct Copy
#_0CA6B7: db $11, $05, $07, $1D, $05, $10, $1C, $05
#_0CA6BF: db $05, $1D, $10, $1D, $1D, $1C, $1C, $1E
#_0CA6C7: db $1E, $0F, $07, $05, $1D, $11, $11, $05
#_0CA6CF: db $1C, $03, $06, $1E, $1E, $06
#_0CA6D5: db $83 ; Repeat Fill
#_0CA6D6: db $00, $25 ; Repeat Fill bytes
#_0CA6D8: db $0D ; Direct Copy
#_0CA6D9: db $1C, $1C, $0F, $1E, $0F, $05, $05, $03
#_0CA6E1: db $0F, $1E, $03, $06, $1C, $11
#_0CA6E7: db $23 ; Byte Fill
#_0CA6E8: db $1E
#_0CA6E9: db $E0, $20 ; EXT Direct Copy
#_0CA6EB: db $05, $1C, $10, $11, $05, $03, $1E, $1E
#_0CA6F3: db $03, $16, $1E, $05, $15, $1D, $11, $05
#_0CA6FB: db $05, $1E, $05, $1C, $1C, $1E, $0F, $03
#_0CA703: db $16, $1E, $1E, $15, $10, $11, $0F, $1E
#_0CA70B: db $05
#_0CA70C: db $22 ; Byte Fill
#_0CA70D: db $1E
#_0CA70E: db $0A ; Direct Copy
#_0CA70F: db $05, $03, $1E, $16, $1E, $1C, $1D, $15
#_0CA717: db $1C, $1E, $05
#_0CA71A: db $22 ; Byte Fill
#_0CA71B: db $1C
#_0CA71C: db $22 ; Byte Fill
#_0CA71D: db $05
#_0CA71E: db $06 ; Direct Copy
#_0CA71F: db $0F, $1E, $0C, $1E, $05, $05, $15
#_0CA726: db $44 ; Word Fill
#_0CA727: db $1E, $1C ;  Word Fill
#_0CA729: db $0A ; Direct Copy
#_0CA72A: db $1E, $05, $1C, $05, $02, $06, $1E, $1E
#_0CA732: db $10, $1C, $05
#_0CA735: db $43 ; Word Fill
#_0CA736: db $1C, $1E ;  Word Fill
#_0CA738: db $0D ; Direct Copy
#_0CA739: db $1E, $1C, $1E, $05, $0F, $02, $06, $1E
#_0CA741: db $10, $1C, $1C, $10, $1C, $1C
#_0CA747: db $2D ; Byte Fill
#_0CA748: db $1E
#_0CA749: db $01 ; Direct Copy
#_0CA74A: db $1C, $1C
#_0CA74C: db $23 ; Byte Fill
#_0CA74D: db $1E
#_0CA74E: db $04 ; Direct Copy
#_0CA74F: db $05, $1E, $1E, $0F, $0C
#_0CA754: db $23 ; Byte Fill
#_0CA755: db $0F
#_0CA756: db $84 ; Repeat Fill
#_0CA757: db $00, $9A ; Repeat Fill bytes
#_0CA759: db $24 ; Byte Fill
#_0CA75A: db $1E
#_0CA75B: db $01 ; Direct Copy
#_0CA75C: db $0F, $01
#_0CA75E: db $23 ; Byte Fill
#_0CA75F: db $00
#_0CA760: db $00 ; Direct Copy
#_0CA761: db $0C
#_0CA762: db $24 ; Byte Fill
#_0CA763: db $1E
#_0CA764: db $23 ; Byte Fill
#_0CA765: db $0F
#_0CA766: db $03 ; Direct Copy
#_0CA767: db $0D, $0F, $01, $06
#_0CA76B: db $22 ; Byte Fill
#_0CA76C: db $00
#_0CA76D: db $01 ; Direct Copy
#_0CA76E: db $0C, $1E
#_0CA770: db $23 ; Byte Fill
#_0CA771: db $10
#_0CA772: db $04 ; Direct Copy
#_0CA773: db $01, $0A, $1A, $1E, $1E
#_0CA778: db $25 ; Byte Fill
#_0CA779: db $10
#_0CA77A: db $07 ; Direct Copy
#_0CA77B: db $1E, $10, $10, $05, $0B, $0B, $01, $09
#_0CA783: db $FF ; End of Map 78

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen78_Low:
#_0CA784: db $07 ; Direct Copy
#_0CA785: db $4C, $63, $C3, $63, $28, $A4, $2F, $86
#_0CA78D: db $62 ; Increasing Fill
#_0CA78E: db $F9 ; Increasing Fill Start
#_0CA78F: db $E0, $3B ; EXT Direct Copy
#_0CA791: db $A4, $0A, $7D, $A4, $AD, $56, $65, $DC
#_0CA799: db $DD, $28, $78, $93, $0A, $E1, $4B, $FC
#_0CA7A1: db $C9, $CC, $80, $A4, $A4, $FD, $C9, $FE
#_0CA7A9: db $FF, $5F, $60, $00, $01, $9D, $55, $E1
#_0CA7B1: db $5C, $06, $07, $A4, $27, $63, $20, $02
#_0CA7B9: db $03, $20, $69, $04, $05, $9C, $E7, $49
#_0CA7C1: db $60, $06, $77, $A4, $A4, $63, $E6, $07
#_0CA7C9: db $63, $20, $69, $01
#_0CA7CD: db $63 ; Increasing Fill
#_0CA7CE: db $08 ; Increasing Fill Start
#_0CA7CF: db $E0, $20 ; EXT Direct Copy
#_0CA7D1: db $A4, $2F, $AD, $0C, $A4, $63, $0C, $0D
#_0CA7D9: db $65, $90, $0E, $E1, $61, $FC, $07, $A4
#_0CA7E1: db $BD, $0F, $A4, $27, $32, $10, $EA, $6A
#_0CA7E9: db $97, $11, $12, $7D, $AD, $03, $77, $13
#_0CA7F1: db $A4
#_0CA7F2: db $62 ; Increasing Fill
#_0CA7F3: db $14 ; Increasing Fill Start
#_0CA7F4: db $E0, $3D ; EXT Direct Copy
#_0CA7F6: db $A4, $65, $17, $97, $11, $A2, $96, $7D
#_0CA7FE: db $71, $18, $A4, $78, $93, $32, $A4, $A4
#_0CA806: db $BD, $ED, $19, $91, $1A, $A4, $AA, $61
#_0CA80E: db $1B, $80, $1C, $27, $1D, $0F, $A4, $71
#_0CA816: db $BD, $DC, $20, $1E, $1F, $AD, $27, $A4
#_0CA81E: db $3D, $0A, $2F, $1D, $20, $2F, $0F, $A4
#_0CA826: db $AE, $DC, $20, $1A, $AD, $32, $27, $AD
#_0CA82E: db $2F, $71, $1D, $1D, $21, $21
#_0CA834: db $62 ; Increasing Fill
#_0CA835: db $14 ; Increasing Fill Start
#_0CA836: db $62 ; Increasing Fill
#_0CA837: db $22 ; Increasing Fill Start
#_0CA838: db $23 ; Byte Fill
#_0CA839: db $25
#_0CA83A: db $0B ; Direct Copy
#_0CA83B: db $60, $2F, $1D, $0F, $26, $26, $A4, $14
#_0CA843: db $15, $83, $E6, $F4
#_0CA847: db $22 ; Byte Fill
#_0CA848: db $F5
#_0CA849: db $10 ; Direct Copy
#_0CA84A: db $27, $24, $60, $20, $A4, $28, $29, $25
#_0CA852: db $2A, $2B, $83, $D5, $9F, $FB, $1D, $9F
#_0CA85A: db $E6
#_0CA85B: db $62 ; Increasing Fill
#_0CA85C: db $2C ; Increasing Fill Start
#_0CA85D: db $02 ; Direct Copy
#_0CA85E: db $2E, $2F, $FB
#_0CA861: db $22 ; Byte Fill
#_0CA862: db $FC
#_0CA863: db $12 ; Direct Copy
#_0CA864: db $9E, $7A, $D5, $66, $1C, $1D, $1D, $E6
#_0CA86C: db $30, $EC, $99, $03, $F6, $EB, $79, $AD
#_0CA874: db $31, $32, $06
#_0CA877: db $24 ; Byte Fill
#_0CA878: db $07
#_0CA879: db $07 ; Direct Copy
#_0CA87A: db $33, $09, $0A, $9D, $4B, $4B, $06, $D5
#_0CA882: db $FF ; End of Map 78

;===================================================================================================

OverworldMap32_Screen79_High:
#_0CA883: db $08 ; Direct Copy
#_0CA884: db $1C, $05, $05, $1E, $1E, $1C, $05, $1E
#_0CA88C: db $05
#_0CA88D: db $24 ; Byte Fill
#_0CA88E: db $1E
#_0CA88F: db $00 ; Direct Copy
#_0CA890: db $01
#_0CA891: db $23 ; Byte Fill
#_0CA892: db $1E
#_0CA893: db $01 ; Direct Copy
#_0CA894: db $1C, $05
#_0CA896: db $22 ; Byte Fill
#_0CA897: db $1C
#_0CA898: db $01 ; Direct Copy
#_0CA899: db $05, $1E
#_0CA89B: db $22 ; Byte Fill
#_0CA89C: db $10
#_0CA89D: db $02 ; Direct Copy
#_0CA89E: db $0D, $01, $01
#_0CA8A1: db $83 ; Repeat Fill
#_0CA8A2: db $00, $03 ; Repeat Fill bytes
#_0CA8A4: db $07 ; Direct Copy
#_0CA8A5: db $05, $1E, $05, $1C, $1E, $1E, $10, $1E
#_0CA8AD: db $23 ; Byte Fill
#_0CA8AE: db $01
#_0CA8AF: db $23 ; Byte Fill
#_0CA8B0: db $1E
#_0CA8B1: db $0B ; Direct Copy
#_0CA8B2: db $05, $05, $1E, $10, $1E, $05, $0D, $01
#_0CA8BA: db $19, $1E, $1E, $19
#_0CA8BE: db $22 ; Byte Fill
#_0CA8BF: db $1E
#_0CA8C0: db $01 ; Direct Copy
#_0CA8C1: db $1D, $1E
#_0CA8C3: db $83 ; Repeat Fill
#_0CA8C4: db $00, $07 ; Repeat Fill bytes
#_0CA8C6: db $0A ; Direct Copy
#_0CA8C7: db $05, $0D, $01, $1D, $04, $1E, $1E, $10
#_0CA8CF: db $1C, $0F, $05
#_0CA8D2: db $84 ; Repeat Fill
#_0CA8D3: db $00, $22 ; Repeat Fill bytes
#_0CA8D5: db $0B ; Direct Copy
#_0CA8D6: db $05, $0D, $01, $1E, $01, $03, $10, $0F
#_0CA8DE: db $1C, $15, $1C, $0F
#_0CA8E2: db $84 ; Repeat Fill
#_0CA8E3: db $00, $55 ; Repeat Fill bytes
#_0CA8E5: db $08 ; Direct Copy
#_0CA8E6: db $10, $11, $19, $1E, $01, $10, $1C, $05
#_0CA8EE: db $1E
#_0CA8EF: db $22 ; Byte Fill
#_0CA8F0: db $05
#_0CA8F1: db $00 ; Direct Copy
#_0CA8F2: db $1C
#_0CA8F3: db $85 ; Repeat Fill
#_0CA8F4: db $00, $54 ; Repeat Fill bytes
#_0CA8F6: db $09 ; Direct Copy
#_0CA8F7: db $19, $10, $01, $05, $05, $1C, $10, $05
#_0CA8FF: db $1E, $1C
#_0CA901: db $23 ; Byte Fill
#_0CA902: db $1E
#_0CA903: db $22 ; Byte Fill
#_0CA904: db $05
#_0CA905: db $03 ; Direct Copy
#_0CA906: db $01, $01, $1C, $05
#_0CA90A: db $22 ; Byte Fill
#_0CA90B: db $1E
#_0CA90C: db $22 ; Byte Fill
#_0CA90D: db $1C
#_0CA90E: db $83 ; Repeat Fill
#_0CA90F: db $00, $07 ; Repeat Fill bytes
#_0CA911: db $22 ; Byte Fill
#_0CA912: db $05
#_0CA913: db $00 ; Direct Copy
#_0CA914: db $01
#_0CA915: db $83 ; Repeat Fill
#_0CA916: db $00, $24 ; Repeat Fill bytes
#_0CA918: db $43 ; Word Fill
#_0CA919: db $1C, $1E ;  Word Fill
#_0CA91B: db $02 ; Direct Copy
#_0CA91C: db $1E, $1C, $0F
#_0CA91F: db $84 ; Repeat Fill
#_0CA920: db $00, $44 ; Repeat Fill bytes
#_0CA922: db $00 ; Direct Copy
#_0CA923: db $1C
#_0CA924: db $84 ; Repeat Fill
#_0CA925: db $00, $25 ; Repeat Fill bytes
#_0CA927: db $22 ; Byte Fill
#_0CA928: db $1C
#_0CA929: db $04 ; Direct Copy
#_0CA92A: db $05, $1E, $15, $1E, $05
#_0CA92F: db $83 ; Repeat Fill
#_0CA930: db $00, $0D ; Repeat Fill bytes
#_0CA932: db $84 ; Repeat Fill
#_0CA933: db $00, $B2 ; Repeat Fill bytes
#_0CA935: db $83 ; Repeat Fill
#_0CA936: db $00, $93 ; Repeat Fill bytes
#_0CA938: db $84 ; Repeat Fill
#_0CA939: db $00, $47 ; Repeat Fill bytes
#_0CA93B: db $00 ; Direct Copy
#_0CA93C: db $10
#_0CA93D: db $25 ; Byte Fill
#_0CA93E: db $1E
#_0CA93F: db $22 ; Byte Fill
#_0CA940: db $1C
#_0CA941: db $02 ; Direct Copy
#_0CA942: db $1E, $1E, $10
#_0CA945: db $22 ; Byte Fill
#_0CA946: db $1E
#_0CA947: db $01 ; Direct Copy
#_0CA948: db $02, $0D
#_0CA94A: db $23 ; Byte Fill
#_0CA94B: db $10
#_0CA94C: db $23 ; Byte Fill
#_0CA94D: db $1E
#_0CA94E: db $23 ; Byte Fill
#_0CA94F: db $10
#_0CA950: db $03 ; Direct Copy
#_0CA951: db $05, $01, $01, $0D
#_0CA955: db $28 ; Byte Fill
#_0CA956: db $10
#_0CA957: db $04 ; Direct Copy
#_0CA958: db $01, $1E, $0D, $01, $01
#_0CA95D: db $FF ; End of Map 79

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen79_Low:
#_0CA95E: db $0A ; Direct Copy
#_0CA95F: db $32, $A4, $A4, $34, $16, $2B, $A4, $35
#_0CA967: db $A4, $36, $2E
#_0CA96A: db $62 ; Increasing Fill
#_0CA96B: db $37 ; Increasing Fill Start
#_0CA96C: db $01 ; Direct Copy
#_0CA96D: db $49, $3A
#_0CA96F: db $62 ; Increasing Fill
#_0CA970: db $14 ; Increasing Fill Start
#_0CA971: db $18 ; Direct Copy
#_0CA972: db $2E, $A4, $9A, $2E, $2B, $A4, $3B, $8F
#_0CA97A: db $10, $09, $E9, $6A, $06, $3C, $3D, $60
#_0CA982: db $A4, $A4, $3E, $A4, $2E, $36, $3F, $14
#_0CA98A: db $40
#_0CA98B: db $23 ; Byte Fill
#_0CA98C: db $06
#_0CA98D: db $63 ; Increasing Fill
#_0CA98E: db $41 ; Increasing Fill Start
#_0CA98F: db $0B ; Direct Copy
#_0CA990: db $A4, $A4, $45, $BA, $3B, $FB, $01, $00
#_0CA998: db $B6, $46, $47, $B5
#_0CA99C: db $62 ; Increasing Fill
#_0CA99D: db $48 ; Increasing Fill Start
#_0CA99E: db $E0, $21 ; EXT Direct Copy
#_0CA9A0: db $F9, $4B, $4C, $A4, $36, $3F, $FB, $01
#_0CA9A8: db $00, $3A, $E6, $4D, $4E, $BB, $D3, $8D
#_0CA9B0: db $E1, $37, $A4, $A4, $4F, $FB, $FB, $01
#_0CA9B8: db $00, $50, $00, $63, $C3, $9C, $49, $61
#_0CA9C0: db $4A, $77
#_0CA9C2: db $84 ; Repeat Fill
#_0CA9C3: db $00, $55 ; Repeat Fill bytes
#_0CA9C5: db $08 ; Direct Copy
#_0CA9C6: db $19, $05, $D5, $51, $FD, $B9, $2E, $A4
#_0CA9CE: db $1C
#_0CA9CF: db $22 ; Byte Fill
#_0CA9D0: db $A4
#_0CA9D1: db $11 ; Direct Copy
#_0CA9D2: db $23, $95, $FB, $FB, $52, $B1, $A6, $DB
#_0CA9DA: db $C1, $06, $A4, $A4, $2F, $AD, $A4, $1C
#_0CA9E2: db $27, $1D
#_0CA9E4: db $62 ; Increasing Fill
#_0CA9E5: db $53 ; Increasing Fill Start
#_0CA9E6: db $10 ; Direct Copy
#_0CA9E7: db $D0, $B1, $A6, $06, $06, $2B, $A4, $56
#_0CA9EF: db $34, $16, $32, $2F, $32, $57, $A4, $58
#_0CA9F7: db $59
#_0CA9F8: db $83 ; Repeat Fill
#_0CA9F9: db $00, $8B ; Repeat Fill bytes
#_0CA9FB: db $E0, $3C ; EXT Direct Copy
#_0CA9FD: db $A4, $5A, $A4, $32, $93, $5B, $79, $5C
#_0CAA05: db $5D, $32, $86, $5E, $5F, $D0, $60, $61
#_0CAA0D: db $93, $62, $A4, $8F, $63, $64, $23, $84
#_0CAA15: db $27, $A4, $65, $7D, $66, $DC, $67, $00
#_0CAA1D: db $25, $68, $A4, $71, $69, $15, $32, $6A
#_0CAA25: db $69, $71, $93, $6B, $6C, $FB, $01, $00
#_0CAA2D: db $45, $6D, $6E, $25, $6F, $29, $68, $78
#_0CAA35: db $93, $A4, $70, $38, $EC
#_0CAA3A: db $62 ; Increasing Fill
#_0CAA3B: db $71 ; Increasing Fill Start
#_0CAA3C: db $02 ; Direct Copy
#_0CAA3D: db $D1, $52, $F5
#_0CAA40: db $22 ; Byte Fill
#_0CAA41: db $EC
#_0CAA42: db $0C ; Direct Copy
#_0CAA43: db $74, $75, $75, $38, $53, $54, $09, $0A
#_0CAA4B: db $9D, $06, $06, $9E, $56
#_0CAA50: db $26 ; Byte Fill
#_0CAA51: db $09
#_0CAA52: db $05 ; Direct Copy
#_0CAA53: db $57, $06, $76, $4C, $06, $06
#_0CAA59: db $FF ; End of Map 79

;===================================================================================================

OverworldMap32_Screen7A_High:
#_0CAA5A: db $02 ; Direct Copy
#_0CAA5B: db $01, $01, $03
#_0CAA5E: db $29 ; Byte Fill
#_0CAA5F: db $01
#_0CAA60: db $0C ; Direct Copy
#_0CAA61: db $05, $1E, $06, $01, $03, $03, $01, $01
#_0CAA69: db $10, $10, $1E, $1E, $10
#_0CAA6E: db $22 ; Byte Fill
#_0CAA6F: db $01
#_0CAA70: db $04 ; Direct Copy
#_0CAA71: db $05, $05, $01, $01, $02
#_0CAA76: db $22 ; Byte Fill
#_0CAA77: db $1E
#_0CAA78: db $0E ; Direct Copy
#_0CAA79: db $01, $10, $19, $10, $02, $10, $01, $01
#_0CAA81: db $10, $0E, $0E, $01, $02, $10, $01
#_0CAA88: db $43 ; Word Fill
#_0CAA89: db $10, $0B ;  Word Fill
#_0CAA8B: db $13 ; Direct Copy
#_0CAA8C: db $0F, $01, $06, $00, $04, $01, $01, $06
#_0CAA94: db $0F, $05, $1E, $0E, $1E, $10, $10, $06
#_0CAA9C: db $0F, $10, $00, $02
#_0CAAA0: db $23 ; Byte Fill
#_0CAAA1: db $01
#_0CAAA2: db $0B ; Direct Copy
#_0CAAA3: db $07, $01, $02, $1E, $0B, $03, $10, $01
#_0CAAAB: db $10, $02, $02, $10
#_0CAAAF: db $22 ; Byte Fill
#_0CAAB0: db $01
#_0CAAB1: db $0C ; Direct Copy
#_0CAAB2: db $0C, $1E, $02, $00, $1E, $0B, $06, $03
#_0CAABA: db $01, $10, $02, $10, $00
#_0CAABF: db $23 ; Byte Fill
#_0CAAC0: db $03
#_0CAAC1: db $0B ; Direct Copy
#_0CAAC2: db $01, $1E, $00, $1E, $0B, $02, $10, $10
#_0CAACA: db $00, $10, $0F, $04
#_0CAACE: db $22 ; Byte Fill
#_0CAACF: db $03
#_0CAAD0: db $01 ; Direct Copy
#_0CAAD1: db $01, $01
#_0CAAD3: db $22 ; Byte Fill
#_0CAAD4: db $1E
#_0CAAD5: db $02 ; Direct Copy
#_0CAAD6: db $19, $03, $0F
#_0CAAD9: db $22 ; Byte Fill
#_0CAADA: db $10
#_0CAADB: db $0E ; Direct Copy
#_0CAADC: db $0F, $10, $10, $09, $03, $01, $01, $00
#_0CAAE4: db $00, $1E, $01, $02, $0F, $06, $00
#_0CAAEB: db $83 ; Repeat Fill
#_0CAAEC: db $00, $89 ; Repeat Fill bytes
#_0CAAEE: db $0A ; Direct Copy
#_0CAAEF: db $02, $05, $02, $01, $02, $1E, $19, $01
#_0CAAF7: db $02, $0F, $00
#_0CAAFA: db $83 ; Repeat Fill
#_0CAAFB: db $00, $78 ; Repeat Fill bytes
#_0CAAFD: db $0F ; Direct Copy
#_0CAAFE: db $09, $10, $10, $0A, $01, $00, $19, $01
#_0CAB06: db $1C, $1E, $10, $0B, $01, $10, $0F, $10
#_0CAB0E: db $43 ; Word Fill
#_0CAB0F: db $01, $06 ;  Word Fill
#_0CAB11: db $00 ; Direct Copy
#_0CAB12: db $10
#_0CAB13: db $43 ; Word Fill
#_0CAB14: db $1C, $01 ;  Word Fill
#_0CAB16: db $07 ; Direct Copy
#_0CAB17: db $10, $02, $0F, $05, $10, $10, $03, $10
#_0CAB1F: db $22 ; Byte Fill
#_0CAB20: db $01
#_0CAB21: db $06 ; Direct Copy
#_0CAB22: db $0E, $10, $1E, $01, $05, $01, $0E
#_0CAB29: db $22 ; Byte Fill
#_0CAB2A: db $01
#_0CAB2B: db $01 ; Direct Copy
#_0CAB2C: db $0D, $0E
#_0CAB2E: db $83 ; Repeat Fill
#_0CAB2F: db $00, $CB ; Repeat Fill bytes
#_0CAB31: db $0A ; Direct Copy
#_0CAB32: db $0D, $03, $1B, $05, $01, $0B, $01, $06
#_0CAB3A: db $06, $01, $0D
#_0CAB3D: db $83 ; Repeat Fill
#_0CAB3E: db $00, $DA ; Repeat Fill bytes
#_0CAB40: db $00 ; Direct Copy
#_0CAB41: db $10
#_0CAB42: db $24 ; Byte Fill
#_0CAB43: db $01
#_0CAB44: db $07 ; Direct Copy
#_0CAB45: db $0E, $06, $01, $0D, $06, $0C, $01, $1E
#_0CAB4D: db $22 ; Byte Fill
#_0CAB4E: db $03
#_0CAB4F: db $FF ; End of Map 7A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen7A_Low:
#_0CAB50: db $02 ; Direct Copy
#_0CAB51: db $06, $06, $6A
#_0CAB54: db $29 ; Byte Fill
#_0CAB55: db $0A
#_0CAB56: db $0C ; Direct Copy
#_0CAB57: db $A6, $77, $A3, $06, $6A, $6B, $15, $15
#_0CAB5F: db $5F, $60, $78, $79, $5E
#_0CAB64: db $22 ; Byte Fill
#_0CAB65: db $15
#_0CAB66: db $04 ; Direct Copy
#_0CAB67: db $B1, $A6, $06, $06, $DC
#_0CAB6C: db $62 ; Increasing Fill
#_0CAB6D: db $7A ; Increasing Fill Start
#_0CAB6E: db $E0, $46 ; EXT Direct Copy
#_0CAB70: db $23, $67, $E4, $63, $02, $69, $22, $22
#_0CAB78: db $6B, $EE, $40, $06, $DC, $C3, $06, $6D
#_0CAB80: db $F9, $6E, $4B, $83, $1E, $66, $1D, $BB
#_0CAB88: db $77, $71, $A2, $4C, $89, $7D, $35, $7E
#_0CAB90: db $73, $6E, $A2, $83, $74, $1D, $8A, $41
#_0CAB98: db $5B, $5C, $06, $6F, $ED, $91, $7F, $33
#_0CABA0: db $E2, $77, $0A, $78, $8A, $8A, $79, $52
#_0CABA8: db $53, $6A, $ED, $80, $7A, $1D, $81, $33
#_0CABB0: db $66, $56, $22, $7D, $F8, $7E, $1D
#_0CABB7: db $62 ; Increasing Fill
#_0CABB8: db $50 ; Increasing Fill Start
#_0CABB9: db $E0, $80 ; EXT Direct Copy
#_0CABBB: db $20, $E3, $82, $1D, $81, $33, $F8, $7E
#_0CABC3: db $80, $1D, $6E, $83, $C1, $56, $57, $5A
#_0CABCB: db $F8, $E3, $83, $83, $81, $B3, $02, $83
#_0CABD3: db $83, $84, $6E, $83, $83, $84, $D1, $BA
#_0CABDB: db $E5, $E3, $1D, $1D, $81, $06, $69, $83
#_0CABE3: db $66, $1D, $6E, $83, $88, $89, $8D, $57
#_0CABEB: db $4C, $E3, $D4, $84, $BC, $06, $69, $83
#_0CABF3: db $1D, $1D, $6E, $83, $BB, $F4, $8D, $F6
#_0CABFB: db $79, $E3, $A1, $BC, $06, $0C, $85, $91
#_0CAC03: db $46, $41, $6E, $83, $92, $77, $12, $0C
#_0CAC0B: db $A2, $7C, $14, $06, $0C, $55, $94, $D1
#_0CAC13: db $38, $58, $95, $96, $8D, $97, $03, $09
#_0CAC1B: db $0A, $3C, $76, $86, $55, $9D, $06, $40
#_0CAC23: db $EA, $EB, $6A, $97, $3C, $8D, $9B, $13
#_0CAC2B: db $15, $97, $4A, $CB, $9D, $06, $4B, $06
#_0CAC33: db $A2, $A3, $06, $A2, $97, $3C, $8D, $9E
#_0CAC3B: db $9F
#_0CAC3C: db $24 ; Byte Fill
#_0CAC3D: db $06
#_0CAC3E: db $0A ; Direct Copy
#_0CAC3F: db $3F, $A2, $06, $A2, $A2, $ED, $06, $87
#_0CAC47: db $4A, $4B, $4B
#_0CAC4A: db $FF ; End of Map 7A

;===================================================================================================

OverworldMap32_Screen3B_High:
#_0CAC4B: db $06 ; Direct Copy
#_0CAC4C: db $06, $01, $1E, $03, $01, $06, $07
#_0CAC53: db $24 ; Byte Fill
#_0CAC54: db $06
#_0CAC55: db $0A ; Direct Copy
#_0CAC56: db $07, $06, $1E, $1D, $0C, $06, $0F, $07
#_0CAC5E: db $1E, $04, $09
#_0CAC61: db $24 ; Byte Fill
#_0CAC62: db $06
#_0CAC63: db $0B ; Direct Copy
#_0CAC64: db $18, $06, $1E, $1E, $06, $0F, $07, $01
#_0CAC6C: db $02, $1E, $1E, $07
#_0CAC70: db $23 ; Byte Fill
#_0CAC71: db $06
#_0CAC72: db $1B ; Direct Copy
#_0CAC73: db $00, $00, $09, $06, $01, $03, $1E, $02
#_0CAC7B: db $00, $1E, $0B, $00, $19, $06, $06, $1E
#_0CAC83: db $05, $00, $07, $07, $0B, $03, $01, $06
#_0CAC8B: db $1E, $19, $0B, $00
#_0CAC8F: db $26 ; Byte Fill
#_0CAC90: db $1E
#_0CAC91: db $0A ; Direct Copy
#_0CAC92: db $06, $06, $1E, $01, $00, $09, $02, $09
#_0CAC9A: db $1E, $1E, $05
#_0CAC9D: db $23 ; Byte Fill
#_0CAC9E: db $1E
#_0CAC9F: db $0B ; Direct Copy
#_0CACA0: db $1D, $06, $03, $07, $1E, $00, $06, $19
#_0CACA8: db $01, $1E, $1E, $11
#_0CACAC: db $23 ; Byte Fill
#_0CACAD: db $1E
#_0CACAE: db $06 ; Direct Copy
#_0CACAF: db $1D, $06, $0F, $01, $02, $09, $1E
#_0CACB6: db $83 ; Repeat Fill
#_0CACB7: db $00, $46 ; Repeat Fill bytes
#_0CACB9: db $01 ; Direct Copy
#_0CACBA: db $1C, $05
#_0CACBC: db $23 ; Byte Fill
#_0CACBD: db $1E
#_0CACBE: db $08 ; Direct Copy
#_0CACBF: db $19, $1B, $02, $02, $07, $06, $00, $07
#_0CACC7: db $06
#_0CACC8: db $26 ; Byte Fill
#_0CACC9: db $1E
#_0CACCA: db $06 ; Direct Copy
#_0CACCB: db $19, $02, $0E, $03, $06, $06, $07
#_0CACD2: db $22 ; Byte Fill
#_0CACD3: db $06
#_0CACD4: db $24 ; Byte Fill
#_0CACD5: db $1E
#_0CACD6: db $07 ; Direct Copy
#_0CACD7: db $1D, $06, $01, $0E, $03, $00, $02, $19
#_0CACDF: db $23 ; Byte Fill
#_0CACE0: db $06
#_0CACE1: db $E0, $2F ; EXT Direct Copy
#_0CACE3: db $1D, $06, $00, $1E, $06, $06, $19, $1E
#_0CACEB: db $03, $00, $00, $06, $19, $07, $06, $06
#_0CACF3: db $0E, $06, $00, $0E, $06, $06, $0F, $03
#_0CACFB: db $03, $00, $00, $1E, $00, $00, $07, $1E
#_0CAD03: db $1E, $03, $03, $07, $19, $06, $0D, $04
#_0CAD0B: db $03, $06, $00, $0C, $03, $03, $07, $0D
#_0CAD13: db $24 ; Byte Fill
#_0CAD14: db $03
#_0CAD15: db $10 ; Direct Copy
#_0CAD16: db $07, $10, $1E, $0C, $03, $03, $01, $0C
#_0CAD1E: db $03, $1C, $0F, $16, $1B, $1E, $0E, $07
#_0CAD26: db $02
#_0CAD27: db $24 ; Byte Fill
#_0CAD28: db $03
#_0CAD29: db $0A ; Direct Copy
#_0CAD2A: db $0D, $01, $16, $1E, $1E, $01, $02, $1B
#_0CAD32: db $1E, $01, $01
#_0CAD35: db $FF ; End of Map 3B

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen3B_Low:
#_0CAD36: db $06 ; Direct Copy
#_0CAD37: db $A2, $06, $88, $63, $E3, $90, $65
#_0CAD3E: db $23 ; Byte Fill
#_0CAD3F: db $7C
#_0CAD40: db $0B ; Direct Copy
#_0CAD41: db $CD, $34, $7C, $89, $4D, $ED, $A3, $4C
#_0CAD49: db $6F, $8A, $2C, $1C
#_0CAD4D: db $24 ; Byte Fill
#_0CAD4E: db $7C
#_0CAD4F: db $0B ; Direct Copy
#_0CAD50: db $0B, $66, $8B, $8C, $A2, $4C, $6F, $ED
#_0CAD58: db $7A, $8D, $8E, $65
#_0CAD5C: db $23 ; Byte Fill
#_0CAD5D: db $7C
#_0CAD5E: db $1B ; Direct Copy
#_0CAD5F: db $9F, $1D, $1C, $7C, $06, $63, $8F, $7A
#_0CAD67: db $1D, $90, $33, $9F, $A8, $7C, $7C, $91
#_0CAD6F: db $CB, $1C, $34, $65, $56, $63, $E3, $66
#_0CAD77: db $92, $BC, $33, $1D
#_0CAD7B: db $66 ; Increasing Fill
#_0CAD7C: db $93 ; Increasing Fill Start
#_0CAD7D: db $0A ; Direct Copy
#_0CAD7E: db $74, $A2, $9A, $E3, $A9, $C1, $59, $DD
#_0CAD86: db $9B, $9C, $BD
#_0CAD89: db $63 ; Increasing Fill
#_0CAD8A: db $9D ; Increasing Fill Start
#_0CAD8B: db $0B ; Direct Copy
#_0CAD8C: db $3E, $7C, $20, $6F, $8A, $1D, $3E, $93
#_0CAD94: db $4B, $A1, $A2, $01
#_0CAD98: db $63 ; Increasing Fill
#_0CAD99: db $A3 ; Increasing Fill Start
#_0CAD9A: db $0C ; Direct Copy
#_0CAD9B: db $2F, $7C, $43, $ED, $7A, $16, $A7, $F9
#_0CADA3: db $1D, $A8, $A9, $6B, $E1
#_0CADA8: db $63 ; Increasing Fill
#_0CADA9: db $AA ; Increasing Fill Start
#_0CADAA: db $08 ; Direct Copy
#_0CADAB: db $88, $19, $7A, $DE, $39, $7C, $B2, $39
#_0CADB3: db $CD
#_0CADB4: db $66 ; Increasing Fill
#_0CADB5: db $AE ; Increasing Fill Start
#_0CADB6: db $09 ; Direct Copy
#_0CADB7: db $8B, $4C, $33, $86, $90, $83, $2C, $7C
#_0CADBF: db $7C, $ED
#_0CADC1: db $64 ; Increasing Fill
#_0CADC2: db $B5 ; Increasing Fill Start
#_0CADC3: db $07 ; Direct Copy
#_0CADC4: db $3D, $7C, $EB, $3C, $8D, $1D, $8A, $8B
#_0CADCC: db $23 ; Byte Fill
#_0CADCD: db $7C
#_0CADCE: db $E0, $45 ; EXT Direct Copy
#_0CADD0: db $2B, $89, $1D, $BA, $7C, $7C, $D4, $BB
#_0CADD8: db $95, $A5, $1D, $7C, $A3, $65, $7C, $7C
#_0CADE0: db $12, $91, $1D, $12, $7C, $7C, $3F, $6B
#_0CADE8: db $9D, $1D, $1C, $BC, $9F, $A5, $34, $BD
#_0CADF0: db $BE, $44, $44, $D2, $88, $7C, $FB, $84
#_0CADF8: db $A8, $66, $AA, $E3, $44, $44, $C0, $48
#_0CAE00: db $4B, $4B, $8C, $8D, $86, $65, $9F, $BF
#_0CAE08: db $E4, $44, $44, $48, $E8, $4B, $AF, $2B
#_0CAE10: db $E3, $C6, $C0, $3C, $CF, $4C
#_0CAE16: db $24 ; Byte Fill
#_0CAE17: db $4B
#_0CAE18: db $0A ; Direct Copy
#_0CAE19: db $E9, $63, $E3, $C1, $C2, $49, $D1, $C9
#_0CAE21: db $C0, $EB, $EB
#_0CAE24: db $FF ; End of Map 3B

;===================================================================================================

OverworldMap32_Screen3C_High:
#_0CAE25: db $01 ; Direct Copy
#_0CAE26: db $1D, $1D
#_0CAE28: db $2A ; Byte Fill
#_0CAE29: db $06
#_0CAE2A: db $07 ; Direct Copy
#_0CAE2B: db $1D, $10, $0D, $1E, $1E, $06, $1D, $1E
#_0CAE33: db $43 ; Word Fill
#_0CAE34: db $06, $1D ;  Word Fill
#_0CAE36: db $23 ; Byte Fill
#_0CAE37: db $06
#_0CAE38: db $02 ; Direct Copy
#_0CAE39: db $1E, $05, $0B
#_0CAE3C: db $22 ; Byte Fill
#_0CAE3D: db $06
#_0CAE3E: db $11 ; Direct Copy
#_0CAE3F: db $1E, $05, $06, $0E, $0D, $0E, $06, $04
#_0CAE47: db $1E, $1B, $10, $0D, $01, $06, $1E, $04
#_0CAE4F: db $00, $1D
#_0CAE51: db $22 ; Byte Fill
#_0CAE52: db $1E
#_0CAE53: db $15 ; Direct Copy
#_0CAE54: db $00, $04, $02, $19, $1E, $01, $0B, $01
#_0CAE5C: db $1E, $04, $1C, $07, $1E, $1D, $1D, $1E
#_0CAE64: db $04, $1E, $0A, $0A, $1E, $01
#_0CAE6A: db $22 ; Byte Fill
#_0CAE6B: db $06
#_0CAE6C: db $1D ; Direct Copy
#_0CAE6D: db $1E, $06, $06, $1E, $1D, $1E, $09, $1E
#_0CAE75: db $0C, $0A, $16, $1E, $03, $05, $01, $06
#_0CAE7D: db $06, $1E, $1E, $09, $06, $04, $03, $06
#_0CAE85: db $0A, $18, $18, $05, $1C, $0E
#_0CAE8B: db $84 ; Repeat Fill
#_0CAE8C: db $00, $5F ; Repeat Fill bytes
#_0CAE8E: db $0B ; Direct Copy
#_0CAE8F: db $06, $1E, $01, $03, $06, $0A, $1E, $16
#_0CAE97: db $18, $05, $01, $0B
#_0CAE9B: db $22 ; Byte Fill
#_0CAE9C: db $06
#_0CAE9D: db $11 ; Direct Copy
#_0CAE9E: db $04, $04, $1E, $15, $04, $1E, $05, $0A
#_0CAEA6: db $1E, $0A, $05, $06, $03, $06, $19, $1E
#_0CAEAE: db $04, $04
#_0CAEB0: db $22 ; Byte Fill
#_0CAEB1: db $1E
#_0CAEB2: db $00 ; Direct Copy
#_0CAEB3: db $05
#_0CAEB4: db $22 ; Byte Fill
#_0CAEB5: db $11
#_0CAEB6: db $06 ; Direct Copy
#_0CAEB7: db $05, $05, $1E, $10, $1D, $07, $02
#_0CAEBE: db $24 ; Byte Fill
#_0CAEBF: db $1E
#_0CAEC0: db $01 ; Direct Copy
#_0CAEC1: db $0C, $18
#_0CAEC3: db $22 ; Byte Fill
#_0CAEC4: db $11
#_0CAEC5: db $04 ; Direct Copy
#_0CAEC6: db $1E, $1E, $0C, $06, $00
#_0CAECB: db $25 ; Byte Fill
#_0CAECC: db $1E
#_0CAECD: db $1F ; Direct Copy
#_0CAECE: db $0A, $05, $05, $16, $06, $05, $1E, $10
#_0CAED6: db $06, $06, $1E, $0F, $05, $1E, $05, $05
#_0CAEDE: db $1E, $0A, $1E, $1E, $0A, $1E, $05, $05
#_0CAEE6: db $06, $09, $07, $1E, $0F, $0A, $0A, $1B
#_0CAEEE: db $22 ; Byte Fill
#_0CAEEF: db $10
#_0CAEF0: db $06 ; Direct Copy
#_0CAEF1: db $1E, $05, $0A, $05, $06, $02, $02
#_0CAEF8: db $22 ; Byte Fill
#_0CAEF9: db $1E
#_0CAEFA: db $25 ; Byte Fill
#_0CAEFB: db $10
#_0CAEFC: db $00 ; Direct Copy
#_0CAEFD: db $1E
#_0CAEFE: db $23 ; Byte Fill
#_0CAEFF: db $0F
#_0CAF00: db $02 ; Direct Copy
#_0CAF01: db $1A, $1A, $01
#_0CAF04: db $83 ; Repeat Fill
#_0CAF05: db $00, $E3 ; Repeat Fill bytes
#_0CAF07: db $08 ; Direct Copy
#_0CAF08: db $0D, $01, $01, $19, $01, $0E, $11, $1E
#_0CAF10: db $0E
#_0CAF11: db $FF ; End of Map 3C

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen3C_Low:
#_0CAF12: db $01 ; Direct Copy
#_0CAF13: db $4D, $4E
#_0CAF15: db $2A ; Byte Fill
#_0CAF16: db $7C
#_0CAF17: db $07 ; Direct Copy
#_0CAF18: db $26, $6E, $A2, $8C, $C3, $7C, $35, $C4
#_0CAF20: db $43 ; Word Fill
#_0CAF21: db $7C, $2B ;  Word Fill
#_0CAF23: db $23 ; Byte Fill
#_0CAF24: db $7C
#_0CAF25: db $02 ; Direct Copy
#_0CAF26: db $C5, $9D, $4B
#_0CAF29: db $22 ; Byte Fill
#_0CAF2A: db $7C
#_0CAF2B: db $10 ; Direct Copy
#_0CAF2C: db $C6, $B6, $7C, $12, $F8, $12, $83, $BB
#_0CAF34: db $C7, $B6, $6E, $A2, $06, $7C, $C8, $BE
#_0CAF3C: db $1D
#_0CAF3D: db $63 ; Increasing Fill
#_0CAF3E: db $C8 ; Increasing Fill Start
#_0CAF3F: db $E0, $5C ; EXT Direct Copy
#_0CAF41: db $1D, $81, $61, $70, $CC, $71, $4B, $06
#_0CAF49: db $A7, $BE, $FE, $39, $CD, $4D, $CF, $CE
#_0CAF51: db $81, $CF, $1D, $1D, $D0, $71, $A2, $A2
#_0CAF59: db $7C, $D1, $7C, $7C, $D2, $D4, $D3, $ED
#_0CAF61: db $D4, $91, $0D, $98, $D5, $51, $A6, $06
#_0CAF69: db $7C, $7C, $D6, $D7, $25, $39, $BB, $A1
#_0CAF71: db $20, $0D, $33, $33, $DC, $7B, $EE, $06
#_0CAF79: db $7C, $7C, $D8, $D9, $39, $DA, $DB, $A1
#_0CAF81: db $20, $97, $DB, $A7, $33, $E9, $71, $4B
#_0CAF89: db $7C, $7C, $CD, $B5, $B6, $DC, $EC, $C5
#_0CAF91: db $DD, $FB, $97, $DE, $0B, $E9, $12, $20
#_0CAF99: db $7C, $A3, $DF, $B7, $B8
#_0CAF9E: db $62 ; Increasing Fill
#_0CAF9F: db $E0 ; Increasing Fill Start
#_0CAFA0: db $0A ; Direct Copy
#_0CAFA1: db $FB, $23, $21, $21, $E8, $E9, $E3, $C5
#_0CAFA9: db $1F, $AF, $65
#_0CAFAC: db $64 ; Increasing Fill
#_0CAFAD: db $E4 ; Increasing Fill Start
#_0CAFAE: db $09 ; Direct Copy
#_0CAFAF: db $96, $33, $23, $21, $21, $D5, $E9, $AD
#_0CAFB7: db $7C, $1D
#_0CAFB9: db $65 ; Increasing Fill
#_0CAFBA: db $EA ; Increasing Fill Start
#_0CAFBB: db $1F ; Direct Copy
#_0CAFBC: db $E8, $FB, $E8, $98, $05, $DC, $F0, $C5
#_0CAFC4: db $7C, $CD, $F1, $27, $FB, $F2, $FB, $FB
#_0CAFCC: db $F3, $0D, $DB, $F4, $0D, $F5, $E8, $FB
#_0CAFD4: db $7C, $25, $3A, $F6, $27, $0B, $0B, $DB
#_0CAFDC: db $22 ; Byte Fill
#_0CAFDD: db $EC
#_0CAFDE: db $06 ; Direct Copy
#_0CAFDF: db $F7, $FB, $0C, $FB, $05, $4C, $4C
#_0CAFE6: db $62 ; Increasing Fill
#_0CAFE7: db $F8 ; Increasing Fill Start
#_0CAFE8: db $06 ; Direct Copy
#_0CAFE9: db $EC, $EC, $53, $54, $09, $09, $FB
#_0CAFF0: db $23 ; Byte Fill
#_0CAFF1: db $FC
#_0CAFF2: db $0F ; Direct Copy
#_0CAFF3: db $AE, $AE, $EB, $4D, $FC, $09, $09, $E9
#_0CAFFB: db $6A, $06, $D4, $EA, $3B, $24, $FD, $3B
#_0CB003: db $FF ; End of Map 3C

;===================================================================================================

OverworldMap32_Screen7D_High:
#_0CB004: db $E0, $40 ; EXT Direct Copy
#_0CB006: db $0F, $0F, $0B, $00, $06, $03, $10, $1E
#_0CB00E: db $1D, $11, $10, $0F, $10, $09, $07, $05
#_0CB016: db $10, $10, $02, $07, $03, $03, $1E, $1F
#_0CB01E: db $1F, $1B, $1F, $0F, $09, $05, $05, $07
#_0CB026: db $0D, $10, $0D, $0D, $03, $03, $10, $10
#_0CB02E: db $05, $0F, $1F, $05, $07, $09, $05, $05
#_0CB036: db $01, $02, $01, $10, $0E, $10, $10, $02
#_0CB03E: db $0A, $1F, $0F, $0F, $05, $0F, $0F, $09
#_0CB046: db $10
#_0CB047: db $43 ; Word Fill
#_0CB048: db $0E, $01 ;  Word Fill
#_0CB04A: db $04 ; Direct Copy
#_0CB04B: db $01, $10, $02, $0A, $1C
#_0CB050: db $83 ; Repeat Fill
#_0CB051: db $00, $39 ; Repeat Fill bytes
#_0CB053: db $00 ; Direct Copy
#_0CB054: db $05
#_0CB055: db $26 ; Byte Fill
#_0CB056: db $10
#_0CB057: db $14 ; Direct Copy
#_0CB058: db $0F, $05, $0A, $1F, $1C, $11, $1F, $1E
#_0CB060: db $1F, $1F, $10, $03, $1C, $0A, $1F, $01
#_0CB068: db $01, $1F, $0A, $05, $1F
#_0CB06D: db $22 ; Byte Fill
#_0CB06E: db $1E
#_0CB06F: db $06 ; Direct Copy
#_0CB070: db $1C, $1F, $10, $10, $0D, $06, $10
#_0CB077: db $23 ; Byte Fill
#_0CB078: db $0A
#_0CB079: db $0A ; Direct Copy
#_0CB07A: db $1F, $1F, $0A, $05, $05, $1F, $11, $03
#_0CB082: db $10, $1F, $0A
#_0CB085: db $22 ; Byte Fill
#_0CB086: db $06
#_0CB087: db $13 ; Direct Copy
#_0CB088: db $1C, $1F, $1F, $1C, $1C, $05, $1C, $1F
#_0CB090: db $10, $0C, $10, $06, $06, $05, $0A, $0A
#_0CB098: db $1F, $07, $05, $15
#_0CB09C: db $22 ; Byte Fill
#_0CB09D: db $1C
#_0CB09E: db $08 ; Direct Copy
#_0CB09F: db $11, $05, $0C, $0F, $1E, $05, $06, $05
#_0CB0A7: db $05
#_0CB0A8: db $83 ; Repeat Fill
#_0CB0A9: db $00, $97 ; Repeat Fill bytes
#_0CB0AB: db $0F ; Direct Copy
#_0CB0AC: db $05, $11, $10, $10, $07, $0A, $10, $0A
#_0CB0B4: db $0A, $06, $0A, $0A, $10, $08, $09, $0F
#_0CB0BC: db $22 ; Byte Fill
#_0CB0BD: db $10
#_0CB0BE: db $04 ; Direct Copy
#_0CB0BF: db $05, $09, $05, $05, $0A
#_0CB0C4: db $22 ; Byte Fill
#_0CB0C5: db $05
#_0CB0C6: db $22 ; Byte Fill
#_0CB0C7: db $10
#_0CB0C8: db $09 ; Direct Copy
#_0CB0C9: db $07, $1B, $07, $1C, $05, $05, $09, $05
#_0CB0D1: db $06, $06
#_0CB0D3: db $22 ; Byte Fill
#_0CB0D4: db $10
#_0CB0D5: db $83 ; Repeat Fill
#_0CB0D6: db $00, $4D ; Repeat Fill bytes
#_0CB0D8: db $00 ; Direct Copy
#_0CB0D9: db $07
#_0CB0DA: db $43 ; Word Fill
#_0CB0DB: db $09, $05 ;  Word Fill
#_0CB0DD: db $00 ; Direct Copy
#_0CB0DE: db $07
#_0CB0DF: db $22 ; Byte Fill
#_0CB0E0: db $0F
#_0CB0E1: db $23 ; Byte Fill
#_0CB0E2: db $10
#_0CB0E3: db $05 ; Direct Copy
#_0CB0E4: db $1F, $10, $1F, $1F, $05, $0F
#_0CB0EA: db $22 ; Byte Fill
#_0CB0EB: db $1F
#_0CB0EC: db $23 ; Byte Fill
#_0CB0ED: db $01
#_0CB0EE: db $0B ; Direct Copy
#_0CB0EF: db $0D, $03, $10, $0D, $03, $10, $10, $1F
#_0CB0F7: db $0F, $1F, $10, $01
#_0CB0FB: db $FF ; End of Map 7D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen7D_Low:
#_0CB0FC: db $E0, $4F ; EXT Direct Copy
#_0CB0FE: db $73, $2F, $46, $B2, $66, $B6, $A4, $FE
#_0CB106: db $FC, $07, $AD, $86, $CC, $90, $20, $E1
#_0CB10E: db $A7, $A8, $D2, $BF, $44, $44, $FF, $00
#_0CB116: db $01, $8D, $02, $8D, $36, $E1, $E1, $19
#_0CB11E: db $9E, $AF, $9E, $A1, $4B, $4B, $B0, $B1
#_0CB126: db $D3, $60, $03, $E1, $89, $36, $E1, $E1
#_0CB12E: db $06, $F2, $06, $B4, $CE, $B5, $B6, $DC
#_0CB136: db $09, $04, $9C, $9D, $E1, $60, $94, $4A
#_0CB13E: db $B8, $74, $06, $D9, $0A, $FD, $B9, $DC
#_0CB146: db $09, $69, $05, $9C, $9B, $A4, $A4, $B7
#_0CB14E: db $65 ; Increasing Fill
#_0CB14F: db $BC ; Increasing Fill Start
#_0CB150: db $E0, $6F ; EXT Direct Copy
#_0CB152: db $4C, $89, $09, $06, $60, $0C, $07, $3D
#_0CB15A: db $08, $09, $C3, $6A, $19, $08, $0A, $0A
#_0CB162: db $FD, $0B, $09, $FB, $0C, $29, $6F, $3F
#_0CB16A: db $1F, $0D, $C8, $C9, $6E, $B5, $CB, $1D
#_0CB172: db $F5, $39, $09, $0E, $0F, $0C, $FB, $FB
#_0CB17A: db $10, $0A, $94, $CD, $11, $1D, $10, $B5
#_0CB182: db $B5, $9D, $12, $13, $7C, $1E, $FB, $1F
#_0CB18A: db $14, $CC, $90, $D3, $20, $05, $DC, $1D
#_0CB192: db $1D, $15, $1E, $E1, $7D, $24, $1D, $25
#_0CB19A: db $0A, $E1, $AD, $E1, $DD, $FB, $05, $FB
#_0CB1A2: db $E8, $16, $8E, $E1, $7D, $A4, $0C, $BA
#_0CB1AA: db $A6, $19, $08, $8B, $0C, $0C, $05, $E8
#_0CB1B2: db $0C, $DF, $C0, $52, $B0, $AB, $BA, $AE
#_0CB1BA: db $E1, $4A, $FB, $E8, $0C, $FB, $E8, $FB
#_0CB1C2: db $62 ; Increasing Fill
#_0CB1C3: db $E2 ; Increasing Fill Start
#_0CB1C4: db $09 ; Direct Copy
#_0CB1C5: db $3B, $51, $89, $D3, $E1, $E1, $9D, $FB
#_0CB1CD: db $05, $05
#_0CB1CF: db $62 ; Increasing Fill
#_0CB1D0: db $EB ; Increasing Fill Start
#_0CB1D1: db $09 ; Direct Copy
#_0CB1D2: db $FB, $FB, $E3, $E4, $3B, $52, $E1, $0B
#_0CB1DA: db $E1, $19
#_0CB1DC: db $22 ; Byte Fill
#_0CB1DD: db $FC
#_0CB1DE: db $62 ; Increasing Fill
#_0CB1DF: db $F0 ; Increasing Fill Start
#_0CB1E0: db $06 ; Direct Copy
#_0CB1E1: db $EC, $17, $F4, $18, $19, $D3, $BA
#_0CB1E8: db $62 ; Increasing Fill
#_0CB1E9: db $1A ; Increasing Fill Start
#_0CB1EA: db $22 ; Byte Fill
#_0CB1EB: db $EB
#_0CB1EC: db $0C ; Direct Copy
#_0CB1ED: db $EC, $97, $4A, $09, $E9, $4A, $0A, $F6
#_0CB1F5: db $1D, $BF, $1E, $F6, $EB
#_0CB1FA: db $FF ; End of Map 7D

;===================================================================================================

OverworldMap32_Screen7E_High:
#_0CB1FB: db $05 ; Direct Copy
#_0CB1FC: db $1F, $1D, $1F, $1F, $1D, $1F
#_0CB202: db $86 ; Repeat Fill
#_0CB203: db $00, $00 ; Repeat Fill bytes
#_0CB205: db $04 ; Direct Copy
#_0CB206: db $07, $0F, $01, $1D, $1D
#_0CB20B: db $2A ; Byte Fill
#_0CB20C: db $1F
#_0CB20D: db $03 ; Direct Copy
#_0CB20E: db $0F, $01, $10, $1D
#_0CB212: db $2A ; Byte Fill
#_0CB213: db $1F
#_0CB214: db $05 ; Direct Copy
#_0CB215: db $0F, $01, $01, $10, $07, $10
#_0CB21B: db $28 ; Byte Fill
#_0CB21C: db $1F
#_0CB21D: db $01 ; Direct Copy
#_0CB21E: db $07, $0F
#_0CB220: db $43 ; Word Fill
#_0CB221: db $01, $0E ;  Word Fill
#_0CB223: db $02 ; Direct Copy
#_0CB224: db $1D, $1F, $05
#_0CB227: db $24 ; Byte Fill
#_0CB228: db $1F
#_0CB229: db $0A ; Direct Copy
#_0CB22A: db $1D, $1F, $1F, $11, $11, $01, $0C, $0F
#_0CB232: db $1F, $1F, $0F
#_0CB235: db $25 ; Byte Fill
#_0CB236: db $1F
#_0CB237: db $01 ; Direct Copy
#_0CB238: db $11, $1F
#_0CB23A: db $22 ; Byte Fill
#_0CB23B: db $05
#_0CB23C: db $0B ; Direct Copy
#_0CB23D: db $0E, $07, $0F, $11, $10, $05, $09, $1D
#_0CB245: db $11, $1F, $10, $11
#_0CB249: db $23 ; Byte Fill
#_0CB24A: db $05
#_0CB24B: db $12 ; Direct Copy
#_0CB24C: db $03, $05, $07, $09, $05, $09, $1F, $09
#_0CB254: db $10, $1F, $1F, $0F, $1C, $1F, $05, $05
#_0CB25C: db $03, $07, $07
#_0CB25F: db $23 ; Byte Fill
#_0CB260: db $1F
#_0CB261: db $01 ; Direct Copy
#_0CB262: db $10, $1D
#_0CB264: db $83 ; Repeat Fill
#_0CB265: db $00, $5A ; Repeat Fill bytes
#_0CB267: db $05 ; Direct Copy
#_0CB268: db $1F, $1C, $1F, $07, $07, $05
#_0CB26E: db $22 ; Byte Fill
#_0CB26F: db $1F
#_0CB270: db $22 ; Byte Fill
#_0CB271: db $05
#_0CB272: db $09 ; Direct Copy
#_0CB273: db $1D, $05, $05, $10, $1F, $1F, $10, $07
#_0CB27B: db $05, $08
#_0CB27D: db $23 ; Byte Fill
#_0CB27E: db $1F
#_0CB27F: db $06 ; Direct Copy
#_0CB280: db $05, $05, $07, $05, $1B, $11, $1F
#_0CB287: db $22 ; Byte Fill
#_0CB288: db $0F
#_0CB289: db $00 ; Direct Copy
#_0CB28A: db $07
#_0CB28B: db $22 ; Byte Fill
#_0CB28C: db $05
#_0CB28D: db $06 ; Direct Copy
#_0CB28E: db $09, $1B, $05, $08, $05, $05, $07
#_0CB295: db $24 ; Byte Fill
#_0CB296: db $11
#_0CB297: db $05 ; Direct Copy
#_0CB298: db $05, $07, $09, $08, $07, $1D
#_0CB29E: db $22 ; Byte Fill
#_0CB29F: db $05
#_0CB2A0: db $00 ; Direct Copy
#_0CB2A1: db $1F
#_0CB2A2: db $22 ; Byte Fill
#_0CB2A3: db $11
#_0CB2A4: db $01 ; Direct Copy
#_0CB2A5: db $05, $1F
#_0CB2A7: db $43 ; Word Fill
#_0CB2A8: db $1F, $05 ;  Word Fill
#_0CB2AA: db $05 ; Direct Copy
#_0CB2AB: db $05, $1D, $05, $0C, $05, $07
#_0CB2B1: db $22 ; Byte Fill
#_0CB2B2: db $1F
#_0CB2B3: db $03 ; Direct Copy
#_0CB2B4: db $10, $05, $1F, $11
#_0CB2B8: db $23 ; Byte Fill
#_0CB2B9: db $1F
#_0CB2BA: db $22 ; Byte Fill
#_0CB2BB: db $0F
#_0CB2BC: db $04 ; Direct Copy
#_0CB2BD: db $1F, $1F, $05, $10, $0E
#_0CB2C2: db $22 ; Byte Fill
#_0CB2C3: db $10
#_0CB2C4: db $04 ; Direct Copy
#_0CB2C5: db $0F, $0F, $11, $11, $1F
#_0CB2CA: db $22 ; Byte Fill
#_0CB2CB: db $0F
#_0CB2CC: db $08 ; Direct Copy
#_0CB2CD: db $1F, $05, $05, $06, $0D, $03, $10, $0D
#_0CB2D5: db $01
#_0CB2D6: db $FF ; End of Map 7E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen7E_Low:
#_0CB2D7: db $13 ; Direct Copy
#_0CB2D8: db $1F, $B7, $20, $21, $84, $22, $23, $84
#_0CB2E0: db $24, $25, $9D, $26, $27, $4C, $C1, $25
#_0CB2E8: db $A0, $8D, $28, $29
#_0CB2EC: db $62 ; Increasing Fill
#_0CB2ED: db $29 ; Increasing Fill Start
#_0CB2EE: db $01 ; Direct Copy
#_0CB2EF: db $29, $29
#_0CB2F1: db $63 ; Increasing Fill
#_0CB2F2: db $2C ; Increasing Fill Start
#_0CB2F3: db $03 ; Direct Copy
#_0CB2F4: db $BD, $49, $FA, $FC
#_0CB2F8: db $6A ; Increasing Fill
#_0CB2F9: db $30 ; Increasing Fill Start
#_0CB2FA: db $05 ; Direct Copy
#_0CB2FB: db $BD, $49, $6A, $FC, $20, $D8
#_0CB301: db $68 ; Increasing Fill
#_0CB302: db $3B ; Increasing Fill Start
#_0CB303: db $08 ; Direct Copy
#_0CB304: db $4C, $C1, $00, $40, $01, $23, $74, $44
#_0CB30C: db $A4
#_0CB30D: db $64 ; Increasing Fill
#_0CB30E: db $45 ; Increasing Fill Start
#_0CB30F: db $02 ; Direct Copy
#_0CB310: db $B5, $4A, $4B
#_0CB313: db $62 ; Increasing Fill
#_0CB314: db $04 ; Increasing Fill Start
#_0CB315: db $04 ; Direct Copy
#_0CB316: db $ED, $85, $4C, $4D, $86
#_0CB31B: db $65 ; Increasing Fill
#_0CB31C: db $4E ; Increasing Fill Start
#_0CB31D: db $E0, $37 ; EXT Direct Copy
#_0CB31F: db $0A, $54, $98, $B1, $A6, $40, $20, $72
#_0CB327: db $02, $A6, $E1, $36, $FC, $07, $55, $AD
#_0CB32F: db $0A, $E1, $AB, $A2, $B1, $52, $E1, $89
#_0CB337: db $4A, $E1, $4A, $56, $36, $D8, $57, $58
#_0CB33F: db $9C, $49, $59, $AB, $A2, $5A, $89, $20
#_0CB347: db $5A, $59, $5B, $5C, $DE, $FC, $07, $41
#_0CB34F: db $A4, $A4, $5D, $E7, $5E, $3F, $20, $E1
#_0CB357: db $62 ; Increasing Fill
#_0CB358: db $5F ; Increasing Fill Start
#_0CB359: db $22 ; Byte Fill
#_0CB35A: db $E1
#_0CB35B: db $09 ; Direct Copy
#_0CB35C: db $FC, $C9, $B3, $BA, $62, $63, $A6, $44
#_0CB364: db $E1, $AA
#_0CB366: db $63 ; Increasing Fill
#_0CB367: db $64 ; Increasing Fill Start
#_0CB368: db $06 ; Direct Copy
#_0CB369: db $E0, $E1, $20, $E1, $8D, $0D, $68
#_0CB370: db $22 ; Byte Fill
#_0CB371: db $BA
#_0CB372: db $00 ; Direct Copy
#_0CB373: db $20
#_0CB374: db $22 ; Byte Fill
#_0CB375: db $E1
#_0CB376: db $08 ; Direct Copy
#_0CB377: db $9D, $B9, $E1, $AA, $E1, $E1, $67, $0E
#_0CB37F: db $0F
#_0CB380: db $22 ; Byte Fill
#_0CB381: db $10
#_0CB382: db $05 ; Direct Copy
#_0CB383: db $E1, $89, $90, $AA, $20, $5C
#_0CB389: db $22 ; Byte Fill
#_0CB38A: db $E1
#_0CB38B: db $00 ; Direct Copy
#_0CB38C: db $69
#_0CB38D: db $62 ; Increasing Fill
#_0CB38E: db $12 ; Increasing Fill Start
#_0CB38F: db $0B ; Direct Copy
#_0CB390: db $FB, $6A, $6B, $E1, $6C, $E1, $E1, $5B
#_0CB398: db $E1, $4C, $E1, $67
#_0CB39C: db $62 ; Increasing Fill
#_0CB39D: db $6D ; Increasing Fill Start
#_0CB39E: db $04 ; Direct Copy
#_0CB39F: db $ED, $FB, $70, $21, $1C
#_0CB3A4: db $62 ; Increasing Fill
#_0CB3A5: db $71 ; Increasing Fill Start
#_0CB3A6: db $22 ; Byte Fill
#_0CB3A7: db $BA
#_0CB3A8: db $0C ; Direct Copy
#_0CB3A9: db $1A, $6D, $9C, $F6, $3C, $F2, $EC, $F3
#_0CB3B1: db $FC, $3E, $24, $25, $74
#_0CB3B6: db $22 ; Byte Fill
#_0CB3B7: db $BF
#_0CB3B8: db $08 ; Direct Copy
#_0CB3B9: db $75, $9C, $9D, $A3, $97, $4A, $09, $E9
#_0CB3C1: db $EB
#_0CB3C2: db $FF ; End of Map 7E

;===================================================================================================

OverworldMap32_Screen3F_High:
#_0CB3C3: db $E0, $41 ; EXT Direct Copy
#_0CB3C5: db $01, $03, $05, $1F, $15, $1F, $0A, $05
#_0CB3CD: db $11, $11, $1E, $05, $05, $16, $05, $01
#_0CB3D5: db $01, $03, $01, $07, $07, $1F, $11, $0A
#_0CB3DD: db $11, $11, $1F, $1E, $05, $1B, $1B, $01
#_0CB3E5: db $03, $07, $01, $1F, $07, $1F, $11, $05
#_0CB3ED: db $1F, $11, $11, $1F, $1B, $10, $01, $01
#_0CB3F5: db $0F, $1F, $01, $07, $05, $07, $06, $06
#_0CB3FD: db $05, $1F, $1D, $11, $1F, $01, $01, $0C
#_0CB405: db $01, $02
#_0CB407: db $22 ; Byte Fill
#_0CB408: db $07
#_0CB409: db $0D ; Direct Copy
#_0CB40A: db $06, $01, $1F, $05, $1F, $06, $05, $05
#_0CB412: db $06, $01, $0E, $1F, $02, $07
#_0CB418: db $83 ; Repeat Fill
#_0CB419: db $00, $33 ; Repeat Fill bytes
#_0CB41B: db $22 ; Byte Fill
#_0CB41C: db $01
#_0CB41D: db $02 ; Direct Copy
#_0CB41E: db $06, $1F, $1C
#_0CB421: db $22 ; Byte Fill
#_0CB422: db $01
#_0CB423: db $83 ; Repeat Fill
#_0CB424: db $00, $49 ; Repeat Fill bytes
#_0CB426: db $0C ; Direct Copy
#_0CB427: db $08, $09, $07, $09, $1F, $07, $01, $1B
#_0CB42F: db $16, $0C, $01, $01, $0F
#_0CB434: db $23 ; Byte Fill
#_0CB435: db $05
#_0CB436: db $00 ; Direct Copy
#_0CB437: db $1F
#_0CB438: db $22 ; Byte Fill
#_0CB439: db $0F
#_0CB43A: db $22 ; Byte Fill
#_0CB43B: db $1F
#_0CB43C: db $08 ; Direct Copy
#_0CB43D: db $05, $10, $1E, $1E, $07, $16, $07, $05
#_0CB445: db $07
#_0CB446: db $22 ; Byte Fill
#_0CB447: db $11
#_0CB448: db $07 ; Direct Copy
#_0CB449: db $1F, $1F, $11, $05, $10, $10, $05, $1C
#_0CB451: db $22 ; Byte Fill
#_0CB452: db $07
#_0CB453: db $00 ; Direct Copy
#_0CB454: db $08
#_0CB455: db $86 ; Repeat Fill
#_0CB456: db $00, $88 ; Repeat Fill bytes
#_0CB458: db $04 ; Direct Copy
#_0CB459: db $0A, $10, $01, $19, $01
#_0CB45E: db $22 ; Byte Fill
#_0CB45F: db $0F
#_0CB460: db $26 ; Byte Fill
#_0CB461: db $1F
#_0CB462: db $05 ; Direct Copy
#_0CB463: db $11, $05, $0D, $01, $19, $01
#_0CB469: db $22 ; Byte Fill
#_0CB46A: db $11
#_0CB46B: db $83 ; Repeat Fill
#_0CB46C: db $00, $25 ; Repeat Fill bytes
#_0CB46E: db $0B ; Direct Copy
#_0CB46F: db $1E, $1F, $11, $05, $0A, $0D, $01, $1F
#_0CB477: db $01, $11, $11, $1E
#_0CB47B: db $22 ; Byte Fill
#_0CB47C: db $05
#_0CB47D: db $05 ; Direct Copy
#_0CB47E: db $1D, $1F, $1F, $05, $1F, $1B
#_0CB484: db $83 ; Repeat Fill
#_0CB485: db $00, $AC ; Repeat Fill bytes
#_0CB487: db $83 ; Repeat Fill
#_0CB488: db $00, $C8 ; Repeat Fill bytes
#_0CB48A: db $04 ; Direct Copy
#_0CB48B: db $10, $10, $0D, $05, $1B
#_0CB490: db $22 ; Byte Fill
#_0CB491: db $10
#_0CB492: db $22 ; Byte Fill
#_0CB493: db $01
#_0CB494: db $00 ; Direct Copy
#_0CB495: db $05
#_0CB496: db $22 ; Byte Fill
#_0CB497: db $0F
#_0CB498: db $04 ; Direct Copy
#_0CB499: db $1B, $01, $11, $1F, $0F
#_0CB49E: db $83 ; Repeat Fill
#_0CB49F: db $00, $D3 ; Repeat Fill bytes
#_0CB4A1: db $13 ; Direct Copy
#_0CB4A2: db $01, $01, $05, $0B, $0A, $0E, $1A, $1E
#_0CB4AA: db $1F, $06, $01, $11, $01, $1F, $06, $1C
#_0CB4B2: db $01, $11, $0D, $0D
#_0CB4B6: db $FF ; End of Map 3F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen3F_Low:
#_0CB4B7: db $E0, $41 ; EXT Direct Copy
#_0CB4B9: db $06, $63, $8A, $76, $62, $77, $04, $FB
#_0CB4C1: db $18, $21, $DE, $FB, $FB, $98, $E9, $71
#_0CB4C9: db $06, $63, $D6, $0B, $0C, $78, $15, $0B
#_0CB4D1: db $21, $21, $79, $DE, $FB, $DB, $DC, $5C
#_0CB4D9: db $20, $6F, $E2, $7A, $7A, $7B, $15, $FB
#_0CB4E1: db $79, $21, $21, $79, $DB, $53, $49, $6A
#_0CB4E9: db $44, $7C, $ED, $13, $E1, $6E, $00, $01
#_0CB4F1: db $FB, $7D, $F7, $21, $7E, $53, $6A, $ED
#_0CB4F9: db $06, $DC
#_0CB4FB: db $62 ; Increasing Fill
#_0CB4FC: db $1E ; Increasing Fill Start
#_0CB4FD: db $E0, $30 ; EXT Direct Copy
#_0CB4FF: db $0A, $03, $7F, $CD, $80, $01, $FB, $E9
#_0CB507: db $12, $0C, $3F, $81, $DC, $8E, $20, $E1
#_0CB50F: db $14, $16, $13, $F9, $16, $0B, $82, $97
#_0CB517: db $03, $17, $0C, $83, $AA, $96, $E1, $AA
#_0CB51F: db $36, $14, $F7, $84, $1C, $24, $E3, $98
#_0CB527: db $8E, $24, $00, $45, $9E, $9F, $E1, $E1
#_0CB52F: db $85
#_0CB530: db $22 ; Byte Fill
#_0CB531: db $BA
#_0CB532: db $62 ; Increasing Fill
#_0CB533: db $86 ; Increasing Fill Start
#_0CB534: db $08 ; Direct Copy
#_0CB535: db $FB, $8F, $72, $73, $1B, $95, $20, $E1
#_0CB53D: db $67
#_0CB53E: db $62 ; Increasing Fill
#_0CB53F: db $0E ; Increasing Fill Start
#_0CB540: db $17 ; Direct Copy
#_0CB541: db $89, $8A, $13, $FA, $8F, $03, $9D, $0C
#_0CB549: db $31, $20, $36, $C1, $8B, $8C, $14, $FB
#_0CB551: db $E3, $EE, $FA, $0D, $14, $5E, $E0, $55
#_0CB559: db $22 ; Byte Fill
#_0CB55A: db $BA
#_0CB55B: db $62 ; Increasing Fill
#_0CB55C: db $86 ; Increasing Fill Start
#_0CB55D: db $63 ; Increasing Fill
#_0CB55E: db $8D ; Increasing Fill Start
#_0CB55F: db $05 ; Direct Copy
#_0CB560: db $20, $FB, $01, $00, $D0, $71
#_0CB566: db $22 ; Byte Fill
#_0CB567: db $10
#_0CB568: db $E0, $2C ; EXT Direct Copy
#_0CB56A: db $91, $13, $FA, $92, $E7, $93, $19, $FB
#_0CB572: db $0D, $01, $00, $94, $71, $21, $21, $DE
#_0CB57A: db $C2, $FA, $FB, $E5, $95, $96, $FB, $97
#_0CB582: db $DB, $01, $00, $DD, $71, $98, $FB, $98
#_0CB58A: db $DB, $F3, $45, $4F, $FB, $DB, $EC, $EC
#_0CB592: db $53, $49, $54, $55, $9D
#_0CB597: db $22 ; Byte Fill
#_0CB598: db $FC
#_0CB599: db $1C ; Direct Copy
#_0CB59A: db $E0, $49, $25, $99, $FC, $E0, $54, $09
#_0CB5A2: db $E9, $54, $55, $9D, $4B, $79, $3B, $AD
#_0CB5AA: db $FD, $9A, $A3, $EA, $24, $EB, $9A, $A3
#_0CB5B2: db $0C, $55, $26, $4B, $4B
#_0CB5B7: db $FF ; End of Map 3F

;===================================================================================================

OverworldMap32_Screen9E_High:
#_0CB5B8: db $E4, $FF ; EXT Byte Fill
#_0CB5BA: db $1F
#_0CB5BB: db $FF ; End of Map 9E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen9E_Low:
#_0CB5BC: db $22 ; Byte Fill
#_0CB5BD: db $B4
#_0CB5BE: db $01 ; Direct Copy
#_0CB5BF: db $B5, $B6
#_0CB5C1: db $25 ; Byte Fill
#_0CB5C2: db $B4
#_0CB5C3: db $01 ; Direct Copy
#_0CB5C4: db $B5, $B6
#_0CB5C6: db $25 ; Byte Fill
#_0CB5C7: db $B4
#_0CB5C8: db $63 ; Increasing Fill
#_0CB5C9: db $B7 ; Increasing Fill Start
#_0CB5CA: db $23 ; Byte Fill
#_0CB5CB: db $B4
#_0CB5CC: db $84 ; Repeat Fill
#_0CB5CD: db $00, $13 ; Repeat Fill bytes
#_0CB5CF: db $01 ; Direct Copy
#_0CB5D0: db $B5, $B6
#_0CB5D2: db $22 ; Byte Fill
#_0CB5D3: db $B4
#_0CB5D4: db $01 ; Direct Copy
#_0CB5D5: db $B7, $B8
#_0CB5D7: db $62 ; Increasing Fill
#_0CB5D8: db $B4 ; Increasing Fill Start
#_0CB5D9: db $22 ; Byte Fill
#_0CB5DA: db $B4
#_0CB5DB: db $04 ; Direct Copy
#_0CB5DC: db $B7, $B8, $B4, $B7, $B8
#_0CB5E1: db $23 ; Byte Fill
#_0CB5E2: db $B4
#_0CB5E3: db $03 ; Direct Copy
#_0CB5E4: db $B9, $BA, $B7, $B8
#_0CB5E8: db $23 ; Byte Fill
#_0CB5E9: db $B4
#_0CB5EA: db $84 ; Repeat Fill
#_0CB5EB: db $00, $1D ; Repeat Fill bytes
#_0CB5ED: db $22 ; Byte Fill
#_0CB5EE: db $B4
#_0CB5EF: db $01 ; Direct Copy
#_0CB5F0: db $BB, $BC
#_0CB5F2: db $62 ; Increasing Fill
#_0CB5F3: db $B4 ; Increasing Fill Start
#_0CB5F4: db $22 ; Byte Fill
#_0CB5F5: db $B4
#_0CB5F6: db $04 ; Direct Copy
#_0CB5F7: db $BB, $BC, $B4, $B7, $B8
#_0CB5FC: db $22 ; Byte Fill
#_0CB5FD: db $B4
#_0CB5FE: db $84 ; Repeat Fill
#_0CB5FF: db $00, $2D ; Repeat Fill bytes
#_0CB601: db $22 ; Byte Fill
#_0CB602: db $B4
#_0CB603: db $01 ; Direct Copy
#_0CB604: db $B7, $B8
#_0CB606: db $23 ; Byte Fill
#_0CB607: db $B4
#_0CB608: db $01 ; Direct Copy
#_0CB609: db $B5, $B6
#_0CB60B: db $25 ; Byte Fill
#_0CB60C: db $B4
#_0CB60D: db $01 ; Direct Copy
#_0CB60E: db $B5, $B6
#_0CB610: db $25 ; Byte Fill
#_0CB611: db $B4
#_0CB612: db $01 ; Direct Copy
#_0CB613: db $B7, $B8
#_0CB615: db $25 ; Byte Fill
#_0CB616: db $B4
#_0CB617: db $01 ; Direct Copy
#_0CB618: db $B7, $B8
#_0CB61A: db $24 ; Byte Fill
#_0CB61B: db $B4
#_0CB61C: db $01 ; Direct Copy
#_0CB61D: db $B5, $B6
#_0CB61F: db $25 ; Byte Fill
#_0CB620: db $B4
#_0CB621: db $01 ; Direct Copy
#_0CB622: db $B5, $B6
#_0CB624: db $25 ; Byte Fill
#_0CB625: db $B4
#_0CB626: db $83 ; Repeat Fill
#_0CB627: db $00, $13 ; Repeat Fill bytes
#_0CB629: db $23 ; Byte Fill
#_0CB62A: db $B4
#_0CB62B: db $86 ; Repeat Fill
#_0CB62C: db $00, $1B ; Repeat Fill bytes
#_0CB62E: db $22 ; Byte Fill
#_0CB62F: db $B4
#_0CB630: db $84 ; Repeat Fill
#_0CB631: db $00, $25 ; Repeat Fill bytes
#_0CB633: db $22 ; Byte Fill
#_0CB634: db $B4
#_0CB635: db $84 ; Repeat Fill
#_0CB636: db $00, $2D ; Repeat Fill bytes
#_0CB638: db $23 ; Byte Fill
#_0CB639: db $B4
#_0CB63A: db $83 ; Repeat Fill
#_0CB63B: db $00, $36 ; Repeat Fill bytes
#_0CB63D: db $23 ; Byte Fill
#_0CB63E: db $B4
#_0CB63F: db $84 ; Repeat Fill
#_0CB640: db $00, $1D ; Repeat Fill bytes
#_0CB642: db $22 ; Byte Fill
#_0CB643: db $B4
#_0CB644: db $84 ; Repeat Fill
#_0CB645: db $00, $46 ; Repeat Fill bytes
#_0CB647: db $22 ; Byte Fill
#_0CB648: db $B4
#_0CB649: db $84 ; Repeat Fill
#_0CB64A: db $00, $4E ; Repeat Fill bytes
#_0CB64C: db $22 ; Byte Fill
#_0CB64D: db $B4
#_0CB64E: db $84 ; Repeat Fill
#_0CB64F: db $00, $2D ; Repeat Fill bytes
#_0CB651: db $22 ; Byte Fill
#_0CB652: db $B4
#_0CB653: db $01 ; Direct Copy
#_0CB654: db $B7, $B8
#_0CB656: db $23 ; Byte Fill
#_0CB657: db $B4
#_0CB658: db $01 ; Direct Copy
#_0CB659: db $B5, $B6
#_0CB65B: db $25 ; Byte Fill
#_0CB65C: db $B4
#_0CB65D: db $01 ; Direct Copy
#_0CB65E: db $B5, $B6
#_0CB660: db $25 ; Byte Fill
#_0CB661: db $B4
#_0CB662: db $01 ; Direct Copy
#_0CB663: db $B7, $B8
#_0CB665: db $25 ; Byte Fill
#_0CB666: db $B4
#_0CB667: db $83 ; Repeat Fill
#_0CB668: db $00, $30 ; Repeat Fill bytes
#_0CB66A: db $FF ; End of Map 9E

;===================================================================================================

OverworldMap32_Screen97_High:
#_0CB66B: db $E4, $FF ; EXT Byte Fill
#_0CB66D: db $1F
#_0CB66E: db $FF ; End of Map 97

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen97_Low:
#_0CB66F: db $67 ; Increasing Fill
#_0CB670: db $9B ; Increasing Fill Start
#_0CB671: db $87 ; Repeat Fill
#_0CB672: db $00, $00 ; Repeat Fill bytes
#_0CB674: db $66 ; Increasing Fill
#_0CB675: db $A3 ; Increasing Fill Start
#_0CB676: db $00 ; Direct Copy
#_0CB677: db $A9
#_0CB678: db $87 ; Repeat Fill
#_0CB679: db $00, $10 ; Repeat Fill bytes
#_0CB67B: db $62 ; Increasing Fill
#_0CB67C: db $AA ; Increasing Fill Start
#_0CB67D: db $01 ; Direct Copy
#_0CB67E: db $A9, $9B
#_0CB680: db $62 ; Increasing Fill
#_0CB681: db $AD ; Increasing Fill Start
#_0CB682: db $87 ; Repeat Fill
#_0CB683: db $00, $20 ; Repeat Fill bytes
#_0CB685: db $07 ; Direct Copy
#_0CB686: db $B0, $B1, $A2, $9B, $9C, $B2, $B3, $9C
#_0CB68E: db $87 ; Repeat Fill
#_0CB68F: db $00, $30 ; Repeat Fill bytes
#_0CB691: db $8B ; Repeat Fill
#_0CB692: db $00, $04 ; Repeat Fill bytes
#_0CB694: db $83 ; Repeat Fill
#_0CB695: db $00, $00 ; Repeat Fill bytes
#_0CB697: db $8B ; Repeat Fill
#_0CB698: db $00, $14 ; Repeat Fill bytes
#_0CB69A: db $83 ; Repeat Fill
#_0CB69B: db $00, $10 ; Repeat Fill bytes
#_0CB69D: db $8B ; Repeat Fill
#_0CB69E: db $00, $24 ; Repeat Fill bytes
#_0CB6A0: db $83 ; Repeat Fill
#_0CB6A1: db $00, $20 ; Repeat Fill bytes
#_0CB6A3: db $8B ; Repeat Fill
#_0CB6A4: db $00, $34 ; Repeat Fill bytes
#_0CB6A6: db $83 ; Repeat Fill
#_0CB6A7: db $00, $30 ; Repeat Fill bytes
#_0CB6A9: db $F0, $7F ; EXT Repeat Fill
#_0CB6AB: db $00, $00 ; Repeat Fill bytes
#_0CB6AD: db $FF ; End of Map 97

;===================================================================================================

OverworldMap32_Screen9F_High:
#_0CB6AE: db $E4, $B7 ; EXT Byte Fill
#_0CB6B0: db $1F
#_0CB6B1: db $01 ; Direct Copy
#_0CB6B2: db $20, $20
#_0CB6B4: db $22 ; Byte Fill
#_0CB6B5: db $1F
#_0CB6B6: db $00 ; Direct Copy
#_0CB6B7: db $20
#_0CB6B8: db $22 ; Byte Fill
#_0CB6B9: db $1F
#_0CB6BA: db $03 ; Direct Copy
#_0CB6BB: db $20, $1F, $1F, $20
#_0CB6BF: db $23 ; Byte Fill
#_0CB6C0: db $1F
#_0CB6C1: db $01 ; Direct Copy
#_0CB6C2: db $20, $1F
#_0CB6C4: db $47 ; Word Fill
#_0CB6C5: db $1F, $20 ;  Word Fill
#_0CB6C7: db $29 ; Byte Fill
#_0CB6C8: db $1F
#_0CB6C9: db $00 ; Direct Copy
#_0CB6CA: db $20
#_0CB6CB: db $23 ; Byte Fill
#_0CB6CC: db $1F
#_0CB6CD: db $46 ; Word Fill
#_0CB6CE: db $20, $1F ;  Word Fill
#_0CB6D0: db $22 ; Byte Fill
#_0CB6D1: db $1F
#_0CB6D2: db $01 ; Direct Copy
#_0CB6D3: db $20, $20
#_0CB6D5: db $24 ; Byte Fill
#_0CB6D6: db $1F
#_0CB6D7: db $00 ; Direct Copy
#_0CB6D8: db $20
#_0CB6D9: db $26 ; Byte Fill
#_0CB6DA: db $1F
#_0CB6DB: db $00 ; Direct Copy
#_0CB6DC: db $20
#_0CB6DD: db $23 ; Byte Fill
#_0CB6DE: db $1F
#_0CB6DF: db $FF ; End of Map 9F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen9F_Low:
#_0CB6E0: db $66 ; Increasing Fill
#_0CB6E1: db $BD ; Increasing Fill Start
#_0CB6E2: db $06 ; Direct Copy
#_0CB6E3: db $C0, $C2, $C4, $C5, $C3, $C2, $C6
#_0CB6EA: db $43 ; Word Fill
#_0CB6EB: db $C1, $C3 ;  Word Fill
#_0CB6ED: db $00 ; Direct Copy
#_0CB6EE: db $C0
#_0CB6EF: db $64 ; Increasing Fill
#_0CB6F0: db $C7 ; Increasing Fill Start
#_0CB6F1: db $15 ; Direct Copy
#_0CB6F2: db $C2, $CC, $C1, $CD, $C3, $CE, $C1, $CF
#_0CB6FA: db $BE, $BF, $BF, $D0, $D1, $C3, $C0, $C0
#_0CB702: db $C4, $C5, $CA, $D2, $D3, $BD
#_0CB708: db $65 ; Increasing Fill
#_0CB709: db $D4 ; Increasing Fill Start
#_0CB70A: db $0C ; Direct Copy
#_0CB70B: db $C9, $DA, $DB, $C6, $CC, $DC, $CD, $C2
#_0CB713: db $C2, $DD, $DE, $C0, $C0
#_0CB718: db $63 ; Increasing Fill
#_0CB719: db $DF ; Increasing Fill Start
#_0CB71A: db $18 ; Direct Copy
#_0CB71B: db $C0, $E3, $E4, $C3, $E5, $D2, $E6, $E7
#_0CB723: db $C7, $E8, $C3, $D6, $E7, $E9, $C4, $EA
#_0CB72B: db $CE, $EB, $C2, $D5, $E6, $EC, $C7, $ED
#_0CB733: db $CA
#_0CB734: db $62 ; Increasing Fill
#_0CB735: db $EE ; Increasing Fill Start
#_0CB736: db $E0, $48 ; EXT Direct Copy
#_0CB738: db $C1, $DC, $C4, $F1, $C7, $F2, $C0, $C3
#_0CB740: db $C2, $E7, $E7, $DB, $F3, $F4, $DB, $E7
#_0CB748: db $C3, $C3, $F5, $C3, $BD, $C2, $C3, $E6
#_0CB750: db $C3, $C7, $F6, $C3, $C3, $CC, $C3, $C3
#_0CB758: db $DB, $C2, $C3, $BE, $CA, $C2, $C1, $C3
#_0CB760: db $C0, $C6, $DB, $C4, $C1, $C3, $CE, $DB
#_0CB768: db $F7, $C2, $CC, $DB, $C0, $C2, $F8, $CA
#_0CB770: db $C2, $DB, $F8, $F9, $D4, $DB, $E7, $DB
#_0CB778: db $C2, $C1, $FA, $F0, $CE, $C9, $C3, $C0
#_0CB780: db $C6
#_0CB781: db $62 ; Increasing Fill
#_0CB782: db $FB ; Increasing Fill Start
#_0CB783: db $E0, $48 ; EXT Direct Copy
#_0CB785: db $C0, $CE, $FE, $FF, $C1, $D4, $DB, $C3
#_0CB78D: db $C2, $C2, $BE, $00, $01, $C4, $CF, $E6
#_0CB795: db $02, $E7, $C4, $C3, $03, $FA, $DF, $02
#_0CB79D: db $C5, $CC, $C3, $C6, $04, $FC, $C0, $05
#_0CB7A5: db $CE, $06, $D4, $07, $C4, $08, $CD, $C2
#_0CB7AD: db $C1, $FA, $F8, $D1, $C3, $CF, $E6, $C1
#_0CB7B5: db $09, $C4, $C1, $D4, $D5, $0A, $C3, $0B
#_0CB7BD: db $F9, $0C, $C0, $0D, $E7, $D7, $FA, $0E
#_0CB7C5: db $0F, $D4, $C6, $FC, $DB, $C3, $10, $C3
#_0CB7CD: db $D4
#_0CB7CE: db $22 ; Byte Fill
#_0CB7CF: db $C3
#_0CB7D0: db $06 ; Direct Copy
#_0CB7D1: db $D4, $D4, $11, $C1, $C4, $BD, $C3
#_0CB7D8: db $FF ; End of Map 9F

;===================================================================================================

OverworldMap32_Screen80_High:
#_0CB7D9: db $27 ; Byte Fill
#_0CB7DA: db $20
#_0CB7DB: db $07 ; Direct Copy
#_0CB7DC: db $01, $20, $20, $01, $01, $20, $20, $01
#_0CB7E4: db $2B ; Byte Fill
#_0CB7E5: db $20
#_0CB7E6: db $00 ; Direct Copy
#_0CB7E7: db $00
#_0CB7E8: db $24 ; Byte Fill
#_0CB7E9: db $20
#_0CB7EA: db $02 ; Direct Copy
#_0CB7EB: db $00, $20, $00
#_0CB7EE: db $23 ; Byte Fill
#_0CB7EF: db $20
#_0CB7F0: db $06 ; Direct Copy
#_0CB7F1: db $05, $04, $00, $20, $04, $02, $08
#_0CB7F8: db $28 ; Byte Fill
#_0CB7F9: db $20
#_0CB7FA: db $05 ; Direct Copy
#_0CB7FB: db $09, $0C, $10, $10, $0F, $05
#_0CB801: db $29 ; Byte Fill
#_0CB802: db $20
#_0CB803: db $05 ; Direct Copy
#_0CB804: db $05, $05, $09, $09, $0F, $07
#_0CB80A: db $29 ; Byte Fill
#_0CB80B: db $20
#_0CB80C: db $05 ; Direct Copy
#_0CB80D: db $05, $05, $08, $07, $07, $05
#_0CB813: db $29 ; Byte Fill
#_0CB814: db $20
#_0CB815: db $05 ; Direct Copy
#_0CB816: db $07, $09, $1B, $1B, $20, $1F
#_0CB81C: db $23 ; Byte Fill
#_0CB81D: db $20
#_0CB81E: db $22 ; Byte Fill
#_0CB81F: db $00
#_0CB820: db $2C ; Byte Fill
#_0CB821: db $20
#_0CB822: db $02 ; Direct Copy
#_0CB823: db $04, $00, $03
#_0CB826: db $2B ; Byte Fill
#_0CB827: db $20
#_0CB828: db $03 ; Direct Copy
#_0CB829: db $06, $20, $00, $00
#_0CB82D: db $2B ; Byte Fill
#_0CB82E: db $20
#_0CB82F: db $02 ; Direct Copy
#_0CB830: db $0E, $20, $06
#_0CB833: db $2C ; Byte Fill
#_0CB834: db $20
#_0CB835: db $03 ; Direct Copy
#_0CB836: db $00, $02, $1A, $00
#_0CB83A: db $2D ; Byte Fill
#_0CB83B: db $20
#_0CB83C: db $01 ; Direct Copy
#_0CB83D: db $1B, $00
#_0CB83F: db $2C ; Byte Fill
#_0CB840: db $20
#_0CB841: db $02 ; Direct Copy
#_0CB842: db $0E, $12, $03
#_0CB845: db $E4, $29 ; EXT Byte Fill
#_0CB847: db $20
#_0CB848: db $FF ; End of Map 80

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen80_Low:
#_0CB849: db $01 ; Direct Copy
#_0CB84A: db $12, $13
#_0CB84C: db $22 ; Byte Fill
#_0CB84D: db $14
#_0CB84E: db $02 ; Direct Copy
#_0CB84F: db $15, $12, $12
#_0CB852: db $62 ; Increasing Fill
#_0CB853: db $15 ; Increasing Fill Start
#_0CB854: db $06 ; Direct Copy
#_0CB855: db $E5, $E5, $18, $19, $15, $13, $1A
#_0CB85C: db $22 ; Byte Fill
#_0CB85D: db $1B
#_0CB85E: db $02 ; Direct Copy
#_0CB85F: db $1C, $15, $12
#_0CB862: db $63 ; Increasing Fill
#_0CB863: db $1D ; Increasing Fill Start
#_0CB864: db $00 ; Direct Copy
#_0CB865: db $1D
#_0CB866: db $64 ; Increasing Fill
#_0CB867: db $21 ; Increasing Fill Start
#_0CB868: db $0D ; Direct Copy
#_0CB869: db $AA, $26, $1D, $27, $1C, $15, $28, $5A
#_0CB871: db $C4, $1D, $29, $7D, $79, $63
#_0CB877: db $65 ; Increasing Fill
#_0CB878: db $2A ; Increasing Fill Start
#_0CB879: db $08 ; Direct Copy
#_0CB87A: db $27, $1C, $30, $F7, $2E, $F7, $F8, $5D
#_0CB882: db $99
#_0CB883: db $69 ; Increasing Fill
#_0CB884: db $31 ; Increasing Fill Start
#_0CB885: db $07 ; Direct Copy
#_0CB886: db $E1, $AB, $F8, $F9, $68, $1F, $3B, $2A
#_0CB88E: db $67 ; Increasing Fill
#_0CB88F: db $3C ; Increasing Fill Start
#_0CB890: db $07 ; Direct Copy
#_0CB891: db $E1, $E1, $D7, $22, $3D, $E1, $3B, $32
#_0CB899: db $67 ; Increasing Fill
#_0CB89A: db $44 ; Increasing Fill Start
#_0CB89B: db $05 ; Direct Copy
#_0CB89C: db $83, $FC, $BD, $BE, $4C, $73
#_0CB8A2: db $63 ; Increasing Fill
#_0CB8A3: db $4D ; Increasing Fill Start
#_0CB8A4: db $22 ; Byte Fill
#_0CB8A5: db $1D
#_0CB8A6: db $68 ; Increasing Fill
#_0CB8A7: db $51 ; Increasing Fill Start
#_0CB8A8: db $00 ; Direct Copy
#_0CB8A9: db $53
#_0CB8AA: db $62 ; Increasing Fill
#_0CB8AB: db $5A ; Increasing Fill Start
#_0CB8AC: db $06 ; Direct Copy
#_0CB8AD: db $2C, $1D, $D5, $38, $39, $5D, $5E
#_0CB8B4: db $23 ; Byte Fill
#_0CB8B5: db $5F
#_0CB8B6: db $0B ; Direct Copy
#_0CB8B7: db $60, $5D, $61, $62, $8B, $63, $1D, $1D
#_0CB8BF: db $64, $65, $5D, $5D
#_0CB8C3: db $24 ; Byte Fill
#_0CB8C4: db $5F
#_0CB8C5: db $0B ; Direct Copy
#_0CB8C6: db $5D, $66, $67, $34, $68, $8F, $26, $69
#_0CB8CE: db $4A, $5D, $5D, $6A
#_0CB8D2: db $23 ; Byte Fill
#_0CB8D3: db $5F
#_0CB8D4: db $62 ; Increasing Fill
#_0CB8D5: db $6B ; Increasing Fill Start
#_0CB8D6: db $09 ; Direct Copy
#_0CB8D7: db $1D, $27, $87, $1D, $51, $52, $5D, $5D
#_0CB8DF: db $6E, $6F
#_0CB8E1: db $22 ; Byte Fill
#_0CB8E2: db $5F
#_0CB8E3: db $64 ; Increasing Fill
#_0CB8E4: db $70 ; Increasing Fill Start
#_0CB8E5: db $03 ; Direct Copy
#_0CB8E6: db $29, $1D, $38, $39
#_0CB8EA: db $22 ; Byte Fill
#_0CB8EB: db $5D
#_0CB8EC: db $00 ; Direct Copy
#_0CB8ED: db $75
#_0CB8EE: db $22 ; Byte Fill
#_0CB8EF: db $5F
#_0CB8F0: db $00 ; Direct Copy
#_0CB8F1: db $70
#_0CB8F2: db $62 ; Increasing Fill
#_0CB8F3: db $76 ; Increasing Fill Start
#_0CB8F4: db $04 ; Direct Copy
#_0CB8F5: db $34, $E2, $D5, $79, $65
#_0CB8FA: db $22 ; Byte Fill
#_0CB8FB: db $5D
#_0CB8FC: db $00 ; Direct Copy
#_0CB8FD: db $7A
#_0CB8FE: db $22 ; Byte Fill
#_0CB8FF: db $5F
#_0CB900: db $00 ; Direct Copy
#_0CB901: db $70
#_0CB902: db $63 ; Increasing Fill
#_0CB903: db $7B ; Increasing Fill Start
#_0CB904: db $63 ; Increasing Fill
#_0CB905: db $7E ; Increasing Fill Start
#_0CB906: db $03 ; Direct Copy
#_0CB907: db $5D, $5D, $82, $83
#_0CB90B: db $22 ; Byte Fill
#_0CB90C: db $5F
#_0CB90D: db $68 ; Increasing Fill
#_0CB90E: db $84 ; Increasing Fill Start
#_0CB90F: db $02 ; Direct Copy
#_0CB910: db $5D, $5D, $8D
#_0CB913: db $22 ; Byte Fill
#_0CB914: db $5F
#_0CB915: db $01 ; Direct Copy
#_0CB916: db $8E, $8F
#_0CB918: db $FF ; End of Map 80

;===================================================================================================

OverworldMap32_Screen81_High:
#_0CB919: db $E4, $2B ; EXT Byte Fill
#_0CB91B: db $20
#_0CB91C: db $00 ; Direct Copy
#_0CB91D: db $06
#_0CB91E: db $2C ; Byte Fill
#_0CB91F: db $20
#_0CB920: db $00 ; Direct Copy
#_0CB921: db $1C
#_0CB922: db $2A ; Byte Fill
#_0CB923: db $20
#_0CB924: db $02 ; Direct Copy
#_0CB925: db $06, $06, $07
#_0CB928: db $22 ; Byte Fill
#_0CB929: db $20
#_0CB92A: db $02 ; Direct Copy
#_0CB92B: db $1C, $20, $05
#_0CB92E: db $25 ; Byte Fill
#_0CB92F: db $20
#_0CB930: db $04 ; Direct Copy
#_0CB931: db $07, $20, $20, $05, $05
#_0CB936: db $83 ; Repeat Fill
#_0CB937: db $00, $4B ; Repeat Fill bytes
#_0CB939: db $26 ; Byte Fill
#_0CB93A: db $20
#_0CB93B: db $09 ; Direct Copy
#_0CB93C: db $07, $03, $09, $08, $0E, $20, $20, $0F
#_0CB944: db $20, $05
#_0CB946: db $25 ; Byte Fill
#_0CB947: db $20
#_0CB948: db $04 ; Direct Copy
#_0CB949: db $06, $04, $20, $05, $10
#_0CB94E: db $23 ; Byte Fill
#_0CB94F: db $20
#_0CB950: db $00 ; Direct Copy
#_0CB951: db $05
#_0CB952: db $23 ; Byte Fill
#_0CB953: db $20
#_0CB954: db $05 ; Direct Copy
#_0CB955: db $1C, $20, $07, $07, $20, $07
#_0CB95B: db $22 ; Byte Fill
#_0CB95C: db $20
#_0CB95D: db $00 ; Direct Copy
#_0CB95E: db $05
#_0CB95F: db $27 ; Byte Fill
#_0CB960: db $20
#_0CB961: db $83 ; Repeat Fill
#_0CB962: db $00, $85 ; Repeat Fill bytes
#_0CB964: db $05 ; Direct Copy
#_0CB965: db $05, $20, $20, $1C, $05, $05
#_0CB96B: db $25 ; Byte Fill
#_0CB96C: db $20
#_0CB96D: db $01 ; Direct Copy
#_0CB96E: db $07, $07
#_0CB970: db $83 ; Repeat Fill
#_0CB971: db $00, $93 ; Repeat Fill bytes
#_0CB973: db $22 ; Byte Fill
#_0CB974: db $20
#_0CB975: db $00 ; Direct Copy
#_0CB976: db $05
#_0CB977: db $25 ; Byte Fill
#_0CB978: db $20
#_0CB979: db $04 ; Direct Copy
#_0CB97A: db $07, $07, $20, $0C, $20
#_0CB97F: db $22 ; Byte Fill
#_0CB980: db $07
#_0CB981: db $02 ; Direct Copy
#_0CB982: db $09, $20, $1C
#_0CB985: db $22 ; Byte Fill
#_0CB986: db $20
#_0CB987: db $85 ; Repeat Fill
#_0CB988: db $00, $83 ; Repeat Fill bytes
#_0CB98A: db $29 ; Byte Fill
#_0CB98B: db $20
#_0CB98C: db $04 ; Direct Copy
#_0CB98D: db $05, $20, $07, $20, $02
#_0CB992: db $27 ; Byte Fill
#_0CB993: db $20
#_0CB994: db $85 ; Repeat Fill
#_0CB995: db $00, $55 ; Repeat Fill bytes
#_0CB997: db $02 ; Direct Copy
#_0CB998: db $06, $02, $01
#_0CB99B: db $27 ; Byte Fill
#_0CB99C: db $20
#_0CB99D: db $08 ; Direct Copy
#_0CB99E: db $08, $10, $1C, $05, $20, $20, $07, $06
#_0CB9A6: db $01
#_0CB9A7: db $25 ; Byte Fill
#_0CB9A8: db $20
#_0CB9A9: db $FF ; End of Map 81

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen81_Low:
#_0CB9AA: db $62 ; Increasing Fill
#_0CB9AB: db $12 ; Increasing Fill Start
#_0CB9AC: db $62 ; Increasing Fill
#_0CB9AD: db $90 ; Increasing Fill Start
#_0CB9AE: db $62 ; Increasing Fill
#_0CB9AF: db $90 ; Increasing Fill Start
#_0CB9B0: db $85 ; Repeat Fill
#_0CB9B1: db $00, $03 ; Repeat Fill bytes
#_0CB9B3: db $03 ; Direct Copy
#_0CB9B4: db $14, $13, $1A, $1B
#_0CB9B8: db $62 ; Increasing Fill
#_0CB9B9: db $93 ; Increasing Fill Start
#_0CB9BA: db $62 ; Increasing Fill
#_0CB9BB: db $93 ; Increasing Fill Start
#_0CB9BC: db $85 ; Repeat Fill
#_0CB9BD: db $00, $13 ; Repeat Fill bytes
#_0CB9BF: db $01 ; Direct Copy
#_0CB9C0: db $1B, $1A
#_0CB9C2: db $64 ; Increasing Fill
#_0CB9C3: db $96 ; Increasing Fill Start
#_0CB9C4: db $22 ; Byte Fill
#_0CB9C5: db $98
#_0CB9C6: db $62 ; Increasing Fill
#_0CB9C7: db $9B ; Increasing Fill Start
#_0CB9C8: db $03 ; Direct Copy
#_0CB9C9: db $39, $9E, $9A, $98
#_0CB9CD: db $69 ; Increasing Fill
#_0CB9CE: db $9F ; Increasing Fill Start
#_0CB9CF: db $00 ; Direct Copy
#_0CB9D0: db $2D
#_0CB9D1: db $62 ; Increasing Fill
#_0CB9D2: db $A9 ; Increasing Fill Start
#_0CB9D3: db $00 ; Direct Copy
#_0CB9D4: db $A4
#_0CB9D5: db $66 ; Increasing Fill
#_0CB9D6: db $AC ; Increasing Fill Start
#_0CB9D7: db $02 ; Direct Copy
#_0CB9D8: db $1D, $1E, $43
#_0CB9DB: db $62 ; Increasing Fill
#_0CB9DC: db $B3 ; Increasing Fill Start
#_0CB9DD: db $02 ; Direct Copy
#_0CB9DE: db $2D, $A4, $E1
#_0CB9E1: db $63 ; Increasing Fill
#_0CB9E2: db $B6 ; Increasing Fill Start
#_0CB9E3: db $0A ; Direct Copy
#_0CB9E4: db $A1, $A4, $5D, $BA, $BB, $96, $E1, $BC
#_0CB9EC: db $2D, $BD, $E1
#_0CB9EF: db $66 ; Increasing Fill
#_0CB9F0: db $BE ; Increasing Fill Start
#_0CB9F1: db $E0, $2E ; EXT Direct Copy
#_0CB9F3: db $6E, $A0, $8B, $8F, $23, $C5, $BF, $9C
#_0CB9FB: db $C6, $A4, $C7, $AD, $AE, $C8, $B5, $C4
#_0CBA03: db $0A, $80, $C9, $DF, $D8, $A2, $A3, $CA
#_0CBA0B: db $CB, $A4, $CC, $B7, $B8, $AF, $2D, $C4
#_0CBA13: db $4C, $4D, $CD, $8E, $CE, $B0, $B1, $AA
#_0CBA1B: db $CF, $D0, $A8, $C0, $C1, $B9, $A1
#_0CBA22: db $84 ; Repeat Fill
#_0CBA23: db $00, $84 ; Repeat Fill bytes
#_0CBA25: db $11 ; Direct Copy
#_0CBA26: db $E1, $D1, $BF, $2D, $A4, $AA, $D2, $AD
#_0CBA2E: db $AE, $26, $C8, $C4, $4C, $4D, $D3, $D4
#_0CBA36: db $3C, $22
#_0CBA38: db $62 ; Increasing Fill
#_0CBA39: db $D5 ; Increasing Fill Start
#_0CBA3A: db $0B ; Direct Copy
#_0CBA3B: db $A4, $D8, $B7, $B8, $D9, $DA, $C4, $4C
#_0CBA43: db $4D, $26, $E6, $DB
#_0CBA47: db $22 ; Byte Fill
#_0CBA48: db $27
#_0CBA49: db $02 ; Direct Copy
#_0CBA4A: db $51, $DC, $2D
#_0CBA4D: db $62 ; Increasing Fill
#_0CBA4E: db $DD ; Increasing Fill Start
#_0CBA4F: db $83 ; Repeat Fill
#_0CBA50: db $00, $83 ; Repeat Fill bytes
#_0CBA52: db $03 ; Direct Copy
#_0CBA53: db $26, $9E, $E0, $E1
#_0CBA57: db $66 ; Increasing Fill
#_0CBA58: db $E1 ; Increasing Fill Start
#_0CBA59: db $05 ; Direct Copy
#_0CBA5A: db $BF, $A4, $C4, $4C, $E8, $08
#_0CBA60: db $65 ; Increasing Fill
#_0CBA61: db $E9 ; Increasing Fill Start
#_0CBA62: db $0C ; Direct Copy
#_0CBA63: db $E3, $EF, $5B, $F0, $F1, $A4, $AA, $F2
#_0CBA6B: db $16, $FB, $E6, $F3, $1C
#_0CBA70: db $62 ; Increasing Fill
#_0CBA71: db $F4 ; Increasing Fill Start
#_0CBA72: db $11 ; Direct Copy
#_0CBA73: db $EE, $F7, $F8, $6A, $D8, $2D, $A4, $BF
#_0CBA7B: db $F9, $79, $16, $E6, $F3, $1C, $15, $F5
#_0CBA83: db $F6, $FA
#_0CBA85: db $FF ; End of Map 81

;===================================================================================================

OverworldMap32_Screen82_High:
#_0CBA86: db $29 ; Byte Fill
#_0CBA87: db $20
#_0CBA88: db $01 ; Direct Copy
#_0CBA89: db $03, $20
#_0CBA8B: db $22 ; Byte Fill
#_0CBA8C: db $07
#_0CBA8D: db $00 ; Direct Copy
#_0CBA8E: db $1F
#_0CBA8F: db $29 ; Byte Fill
#_0CBA90: db $20
#_0CBA91: db $02 ; Direct Copy
#_0CBA92: db $03, $21, $21
#_0CBA95: db $83 ; Repeat Fill
#_0CBA96: db $00, $0D ; Repeat Fill bytes
#_0CBA98: db $00 ; Direct Copy
#_0CBA99: db $01
#_0CBA9A: db $22 ; Byte Fill
#_0CBA9B: db $20
#_0CBA9C: db $06 ; Direct Copy
#_0CBA9D: db $21, $20, $20, $21, $21, $03, $07
#_0CBAA4: db $22 ; Byte Fill
#_0CBAA5: db $05
#_0CBAA6: db $00 ; Direct Copy
#_0CBAA7: db $07
#_0CBAA8: db $22 ; Byte Fill
#_0CBAA9: db $21
#_0CBAAA: db $25 ; Byte Fill
#_0CBAAB: db $20
#_0CBAAC: db $02 ; Direct Copy
#_0CBAAD: db $21, $05, $09
#_0CBAB0: db $22 ; Byte Fill
#_0CBAB1: db $21
#_0CBAB2: db $04 ; Direct Copy
#_0CBAB3: db $07, $21, $0F, $05, $0E
#_0CBAB8: db $83 ; Repeat Fill
#_0CBAB9: db $00, $31 ; Repeat Fill bytes
#_0CBABB: db $07 ; Direct Copy
#_0CBABC: db $05, $07, $09, $05, $15, $21, $21, $07
#_0CBAC4: db $44 ; Word Fill
#_0CBAC5: db $21, $0F ;  Word Fill
#_0CBAC7: db $0B ; Direct Copy
#_0CBAC8: db $05, $20, $20, $05, $20, $21, $05, $15
#_0CBAD0: db $20, $21, $07, $20
#_0CBAD4: db $23 ; Byte Fill
#_0CBAD5: db $21
#_0CBAD6: db $43 ; Word Fill
#_0CBAD7: db $20, $21 ;  Word Fill
#_0CBAD9: db $03 ; Direct Copy
#_0CBADA: db $21, $0F, $0F, $05
#_0CBADE: db $83 ; Repeat Fill
#_0CBADF: db $00, $3D ; Repeat Fill bytes
#_0CBAE1: db $01 ; Direct Copy
#_0CBAE2: db $20, $20
#_0CBAE4: db $22 ; Byte Fill
#_0CBAE5: db $05
#_0CBAE6: db $00 ; Direct Copy
#_0CBAE7: db $20
#_0CBAE8: db $83 ; Repeat Fill
#_0CBAE9: db $00, $31 ; Repeat Fill bytes
#_0CBAEB: db $00 ; Direct Copy
#_0CBAEC: db $21
#_0CBAED: db $83 ; Repeat Fill
#_0CBAEE: db $00, $6C ; Repeat Fill bytes
#_0CBAF0: db $01 ; Direct Copy
#_0CBAF1: db $20, $20
#_0CBAF3: db $2A ; Byte Fill
#_0CBAF4: db $21
#_0CBAF5: db $00 ; Direct Copy
#_0CBAF6: db $0F
#_0CBAF7: db $83 ; Repeat Fill
#_0CBAF8: db $00, $6E ; Repeat Fill bytes
#_0CBAFA: db $01 ; Direct Copy
#_0CBAFB: db $21, $1C
#_0CBAFD: db $83 ; Repeat Fill
#_0CBAFE: db $00, $66 ; Repeat Fill bytes
#_0CBB00: db $23 ; Byte Fill
#_0CBB01: db $20
#_0CBB02: db $01 ; Direct Copy
#_0CBB03: db $21, $20
#_0CBB05: db $83 ; Repeat Fill
#_0CBB06: db $00, $6E ; Repeat Fill bytes
#_0CBB08: db $05 ; Direct Copy
#_0CBB09: db $1C, $21, $20, $1D, $07, $0E
#_0CBB0F: db $84 ; Repeat Fill
#_0CBB10: db $00, $6D ; Repeat Fill bytes
#_0CBB12: db $83 ; Repeat Fill
#_0CBB13: db $00, $7D ; Repeat Fill bytes
#_0CBB15: db $22 ; Byte Fill
#_0CBB16: db $21
#_0CBB17: db $00 ; Direct Copy
#_0CBB18: db $07
#_0CBB19: db $22 ; Byte Fill
#_0CBB1A: db $21
#_0CBB1B: db $05 ; Direct Copy
#_0CBB1C: db $20, $07, $03, $07, $21, $15
#_0CBB22: db $24 ; Byte Fill
#_0CBB23: db $21
#_0CBB24: db $00 ; Direct Copy
#_0CBB25: db $07
#_0CBB26: db $24 ; Byte Fill
#_0CBB27: db $21
#_0CBB28: db $02 ; Direct Copy
#_0CBB29: db $07, $21, $0C
#_0CBB2C: db $84 ; Repeat Fill
#_0CBB2D: db $00, $4B ; Repeat Fill bytes
#_0CBB2F: db $01 ; Direct Copy
#_0CBB30: db $07, $09
#_0CBB32: db $23 ; Byte Fill
#_0CBB33: db $21
#_0CBB34: db $03 ; Direct Copy
#_0CBB35: db $20, $21, $05, $03
#_0CBB39: db $43 ; Word Fill
#_0CBB3A: db $21, $07 ;  Word Fill
#_0CBB3C: db $2A ; Byte Fill
#_0CBB3D: db $21
#_0CBB3E: db $83 ; Repeat Fill
#_0CBB3F: db $00, $DA ; Repeat Fill bytes
#_0CBB41: db $83 ; Repeat Fill
#_0CBB42: db $00, $7E ; Repeat Fill bytes
#_0CBB44: db $29 ; Byte Fill
#_0CBB45: db $21
#_0CBB46: db $83 ; Repeat Fill
#_0CBB47: db $00, $EC ; Repeat Fill bytes
#_0CBB49: db $FF ; End of Map 82

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen82_Low:
#_0CBB4A: db $62 ; Increasing Fill
#_0CBB4B: db $90 ; Increasing Fill Start
#_0CBB4C: db $62 ; Increasing Fill
#_0CBB4D: db $90 ; Increasing Fill Start
#_0CBB4E: db $05 ; Direct Copy
#_0CBB4F: db $FB, $FB, $90, $FC, $A0, $FD
#_0CBB55: db $22 ; Byte Fill
#_0CBB56: db $0C
#_0CBB57: db $00 ; Direct Copy
#_0CBB58: db $78
#_0CBB59: db $62 ; Increasing Fill
#_0CBB5A: db $93 ; Increasing Fill Start
#_0CBB5B: db $62 ; Increasing Fill
#_0CBB5C: db $93 ; Increasing Fill Start
#_0CBB5D: db $19 ; Direct Copy
#_0CBB5E: db $FE, $FE, $93, $FF, $A0, $00, $01, $7A
#_0CBB66: db $7A, $7B, $9D, $4B, $D9, $98, $9B, $02
#_0CBB6E: db $9C, $9B, $03, $04, $A0, $5B, $C5, $E1
#_0CBB76: db $E1, $6E
#_0CBB78: db $62 ; Increasing Fill
#_0CBB79: db $05 ; Increasing Fill Start
#_0CBB7A: db $25 ; Byte Fill
#_0CBB7B: db $AC
#_0CBB7C: db $02 ; Direct Copy
#_0CBB7D: db $08, $5A, $82
#_0CBB80: db $62 ; Increasing Fill
#_0CBB81: db $09 ; Increasing Fill Start
#_0CBB82: db $E0, $21 ; EXT Direct Copy
#_0CBB84: db $6E, $0C, $9D, $D5, $23, $0C, $0D, $CF
#_0CBB8C: db $CF, $E1, $14, $F7, $9F, $7D, $0E, $0F
#_0CBB94: db $6E, $10, $9C, $11, $77, $12, $A4, $A2
#_0CBB9C: db $A3, $AA, $CF, $13, $E1, $7D, $BF, $14
#_0CBBA4: db $6E, $A7
#_0CBBA6: db $63 ; Increasing Fill
#_0CBBA7: db $15 ; Increasing Fill Start
#_0CBBA8: db $0D ; Direct Copy
#_0CBBA9: db $A7, $19, $B1, $1A, $1B, $9C, $9D, $E1
#_0CBBB1: db $1C, $1D, $6E, $1E, $CF, $CF
#_0CBBB7: db $22 ; Byte Fill
#_0CBBB8: db $E1
#_0CBBB9: db $E0, $3E ; EXT Direct Copy
#_0CBBBB: db $D2, $1F, $18, $AC, $D1, $20, $E1, $21
#_0CBBC3: db $1D, $6E, $A2, $A3, $22, $23, $0C, $0C
#_0CBBCB: db $24, $24, $0C, $0C, $0D, $25, $26, $77
#_0CBBD3: db $27, $6E, $19, $B1, $28, $80, $0E, $CA
#_0CBBDB: db $29, $17, $A8, $BF, $CA, $A8, $0E, $BF
#_0CBBE3: db $1D, $6E, $2A, $AC, $80, $2B, $A4, $E0
#_0CBBEB: db $84, $27, $2C, $2D, $83, $2E, $AC, $2F
#_0CBBF3: db $30, $6E, $BF, $31, $0E, $32, $67
#_0CBBFA: db $62 ; Increasing Fill
#_0CBBFB: db $33 ; Increasing Fill Start
#_0CBBFC: db $0C ; Direct Copy
#_0CBBFD: db $EF, $96, $8F, $53, $36, $59, $37, $38
#_0CBC05: db $17, $17, $39, $67, $33
#_0CBC0A: db $63 ; Increasing Fill
#_0CBC0B: db $3A ; Increasing Fill Start
#_0CBC0C: db $16 ; Direct Copy
#_0CBC0D: db $9D, $3E, $DD, $8F, $5B, $3F, $40, $84
#_0CBC15: db $84, $FC, $33, $3A, $41, $42, $9F, $3C
#_0CBC1D: db $55, $B3, $43, $8E, $44, $4C, $45
#_0CBC24: db $22 ; Byte Fill
#_0CBC25: db $46
#_0CBC26: db $01 ; Direct Copy
#_0CBC27: db $47, $41
#_0CBC29: db $64 ; Increasing Fill
#_0CBC2A: db $48 ; Increasing Fill Start
#_0CBC2B: db $0C ; Direct Copy
#_0CBC2C: db $BB, $4D, $8E, $4E, $4F, $4D, $FA, $FA
#_0CBC34: db $50, $51, $48, $49, $49
#_0CBC39: db $64 ; Increasing Fill
#_0CBC3A: db $52 ; Increasing Fill Start
#_0CBC3B: db $83 ; Repeat Fill
#_0CBC3C: db $00, $EC ; Repeat Fill bytes
#_0CBC3E: db $FF ; End of Map 82

;===================================================================================================

OverworldMap32_Screen89_High:
#_0CBC3F: db $01 ; Direct Copy
#_0CBC40: db $21, $20
#_0CBC42: db $23 ; Byte Fill
#_0CBC43: db $21
#_0CBC44: db $04 ; Direct Copy
#_0CBC45: db $20, $21, $21, $06, $01
#_0CBC4A: db $23 ; Byte Fill
#_0CBC4B: db $20
#_0CBC4C: db $00 ; Direct Copy
#_0CBC4D: db $21
#_0CBC4E: db $22 ; Byte Fill
#_0CBC4F: db $20
#_0CBC50: db $05 ; Direct Copy
#_0CBC51: db $07, $21, $07, $0E, $21, $0F
#_0CBC57: db $84 ; Repeat Fill
#_0CBC58: db $00, $08 ; Repeat Fill bytes
#_0CBC5A: db $02 ; Direct Copy
#_0CBC5B: db $21, $21, $20
#_0CBC5E: db $22 ; Byte Fill
#_0CBC5F: db $21
#_0CBC60: db $84 ; Repeat Fill
#_0CBC61: db $00, $1D ; Repeat Fill bytes
#_0CBC63: db $03 ; Direct Copy
#_0CBC64: db $0F, $21, $06, $04
#_0CBC68: db $22 ; Byte Fill
#_0CBC69: db $21
#_0CBC6A: db $00 ; Direct Copy
#_0CBC6B: db $20
#_0CBC6C: db $26 ; Byte Fill
#_0CBC6D: db $21
#_0CBC6E: db $05 ; Direct Copy
#_0CBC6F: db $05, $20, $0F, $21, $07, $07
#_0CBC75: db $29 ; Byte Fill
#_0CBC76: db $21
#_0CBC77: db $04 ; Direct Copy
#_0CBC78: db $05, $1C, $21, $21, $20
#_0CBC7D: db $2A ; Byte Fill
#_0CBC7E: db $21
#_0CBC7F: db $00 ; Direct Copy
#_0CBC80: db $05
#_0CBC81: db $29 ; Byte Fill
#_0CBC82: db $21
#_0CBC83: db $00 ; Direct Copy
#_0CBC84: db $02
#_0CBC85: db $22 ; Byte Fill
#_0CBC86: db $21
#_0CBC87: db $06 ; Direct Copy
#_0CBC88: db $05, $1D, $20, $21, $07, $21, $21
#_0CBC8F: db $22 ; Byte Fill
#_0CBC90: db $20
#_0CBC91: db $08 ; Direct Copy
#_0CBC92: db $21, $02, $08, $07, $07, $05, $21, $0F
#_0CBC9A: db $1C
#_0CBC9B: db $24 ; Byte Fill
#_0CBC9C: db $21
#_0CBC9D: db $00 ; Direct Copy
#_0CBC9E: db $20
#_0CBC9F: db $22 ; Byte Fill
#_0CBCA0: db $21
#_0CBCA1: db $03 ; Direct Copy
#_0CBCA2: db $05, $07, $21, $1C
#_0CBCA6: db $22 ; Byte Fill
#_0CBCA7: db $20
#_0CBCA8: db $03 ; Direct Copy
#_0CBCA9: db $05, $05, $07, $02
#_0CBCAD: db $83 ; Repeat Fill
#_0CBCAE: db $00, $1B ; Repeat Fill bytes
#_0CBCB0: db $83 ; Repeat Fill
#_0CBCB1: db $00, $6B ; Repeat Fill bytes
#_0CBCB3: db $04 ; Direct Copy
#_0CBCB4: db $1C, $20, $20, $21, $1E
#_0CBCB9: db $22 ; Byte Fill
#_0CBCBA: db $21
#_0CBCBB: db $0B ; Direct Copy
#_0CBCBC: db $06, $05, $20, $21, $07, $10, $20, $1C
#_0CBCC4: db $20, $21, $1C, $20
#_0CBCC8: db $22 ; Byte Fill
#_0CBCC9: db $21
#_0CBCCA: db $0D ; Direct Copy
#_0CBCCB: db $0F, $21, $09, $21, $21, $07, $20, $11
#_0CBCD3: db $21, $1D, $0E, $21, $21, $07
#_0CBCD9: db $83 ; Repeat Fill
#_0CBCDA: db $00, $15 ; Repeat Fill bytes
#_0CBCDC: db $22 ; Byte Fill
#_0CBCDD: db $21
#_0CBCDE: db $02 ; Direct Copy
#_0CBCDF: db $20, $08, $10
#_0CBCE2: db $22 ; Byte Fill
#_0CBCE3: db $21
#_0CBCE4: db $01 ; Direct Copy
#_0CBCE5: db $20, $07
#_0CBCE7: db $22 ; Byte Fill
#_0CBCE8: db $21
#_0CBCE9: db $00 ; Direct Copy
#_0CBCEA: db $20
#_0CBCEB: db $23 ; Byte Fill
#_0CBCEC: db $21
#_0CBCED: db $01 ; Direct Copy
#_0CBCEE: db $03, $07
#_0CBCF0: db $26 ; Byte Fill
#_0CBCF1: db $21
#_0CBCF2: db $23 ; Byte Fill
#_0CBCF3: db $20
#_0CBCF4: db $00 ; Direct Copy
#_0CBCF5: db $07
#_0CBCF6: db $83 ; Repeat Fill
#_0CBCF7: db $00, $D0 ; Repeat Fill bytes
#_0CBCF9: db $00 ; Direct Copy
#_0CBCFA: db $10
#_0CBCFB: db $26 ; Byte Fill
#_0CBCFC: db $21
#_0CBCFD: db $22 ; Byte Fill
#_0CBCFE: db $20
#_0CBCFF: db $22 ; Byte Fill
#_0CBD00: db $21
#_0CBD01: db $00 ; Direct Copy
#_0CBD02: db $03
#_0CBD03: db $28 ; Byte Fill
#_0CBD04: db $21
#_0CBD05: db $23 ; Byte Fill
#_0CBD06: db $20
#_0CBD07: db $FF ; End of Map 89

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen89_Low:
#_0CBD08: db $01 ; Direct Copy
#_0CBD09: db $57, $D4
#_0CBD0B: db $63 ; Increasing Fill
#_0CBD0C: db $58 ; Increasing Fill Start
#_0CBD0D: db $12 ; Direct Copy
#_0CBD0E: db $CB, $0A, $5C, $16, $E6, $F3, $1C, $15
#_0CBD16: db $F5, $5D, $EE, $E3, $DB, $27, $5E, $84
#_0CBD1E: db $27, $5F, $9C
#_0CBD21: db $84 ; Repeat Fill
#_0CBD22: db $00, $08 ; Repeat Fill bytes
#_0CBD24: db $02 ; Direct Copy
#_0CBD25: db $60, $61, $F6
#_0CBD28: db $62 ; Increasing Fill
#_0CBD29: db $62 ; Increasing Fill Start
#_0CBD2A: db $03 ; Direct Copy
#_0CBD2B: db $F7, $65, $66, $E4
#_0CBD2F: db $83 ; Repeat Fill
#_0CBD30: db $00, $17 ; Repeat Fill bytes
#_0CBD32: db $00 ; Direct Copy
#_0CBD33: db $80
#_0CBD34: db $62 ; Increasing Fill
#_0CBD35: db $67 ; Increasing Fill Start
#_0CBD36: db $00 ; Direct Copy
#_0CBD37: db $F5
#_0CBD38: db $62 ; Increasing Fill
#_0CBD39: db $6A ; Increasing Fill Start
#_0CBD3A: db $00 ; Direct Copy
#_0CBD3B: db $50
#_0CBD3C: db $62 ; Increasing Fill
#_0CBD3D: db $6D ; Increasing Fill Start
#_0CBD3E: db $05 ; Direct Copy
#_0CBD3F: db $DF, $D1, $9C, $70, $4D, $6D
#_0CBD45: db $69 ; Increasing Fill
#_0CBD46: db $71 ; Increasing Fill Start
#_0CBD47: db $04 ; Direct Copy
#_0CBD48: db $96, $80, $22, $7B, $BA
#_0CBD4D: db $67 ; Increasing Fill
#_0CBD4E: db $7C ; Increasing Fill Start
#_0CBD4F: db $03 ; Direct Copy
#_0CBD50: db $79, $84, $85, $9F
#_0CBD54: db $62 ; Increasing Fill
#_0CBD55: db $86 ; Increasing Fill Start
#_0CBD56: db $00 ; Direct Copy
#_0CBD57: db $3A
#_0CBD58: db $63 ; Increasing Fill
#_0CBD59: db $89 ; Increasing Fill Start
#_0CBD5A: db $0A ; Direct Copy
#_0CBD5B: db $81, $8D, $60, $8E, $8F, $85, $9F, $60
#_0CBD63: db $BF, $4F, $4D
#_0CBD66: db $62 ; Increasing Fill
#_0CBD67: db $90 ; Increasing Fill Start
#_0CBD68: db $10 ; Direct Copy
#_0CBD69: db $F4, $1A, $92, $65, $63, $3F, $1B, $9F
#_0CBD71: db $93, $77, $2D, $94, $95, $8E, $96, $97
#_0CBD79: db $1C
#_0CBD7A: db $62 ; Increasing Fill
#_0CBD7B: db $98 ; Increasing Fill Start
#_0CBD7C: db $03 ; Direct Copy
#_0CBD7D: db $C5, $44, $9B, $80
#_0CBD81: db $62 ; Increasing Fill
#_0CBD82: db $A2 ; Increasing Fill Start
#_0CBD83: db $10 ; Direct Copy
#_0CBD84: db $E1, $AB, $3F, $FB, $E6, $F3, $32, $9C
#_0CBD8C: db $1E, $9D, $9E, $BF, $2D, $B0, $B1, $0A
#_0CBD94: db $06
#_0CBD95: db $62 ; Increasing Fill
#_0CBD96: db $9F ; Increasing Fill Start
#_0CBD97: db $E0, $35 ; EXT Direct Copy
#_0CBD99: db $16, $5A, $2A, $9C, $8E, $D8, $BF, $2D
#_0CBDA1: db $CA, $A2, $2D, $BF, $A3, $17, $A2, $9C
#_0CBDA9: db $5C, $F7, $A4, $A5, $53, $F0, $07, $A6
#_0CBDB1: db $E0, $27, $A7, $A8, $83, $84, $27, $A9
#_0CBDB9: db $9C, $0D, $AA, $AB, $F8, $6A, $D8, $AC
#_0CBDC1: db $88, $AD, $DB, $8B, $AE, $46, $66, $E4
#_0CBDC9: db $AF, $17, $B0, $B1, $A1, $8E
#_0CBDCF: db $64 ; Increasing Fill
#_0CBDD0: db $B2 ; Increasing Fill Start
#_0CBDD1: db $0C ; Direct Copy
#_0CBDD2: db $55, $B7, $FA, $EE, $E3, $EF, $84, $B8
#_0CBDDA: db $B9, $A1, $8E, $D8, $B3
#_0CBDDF: db $65 ; Increasing Fill
#_0CBDE0: db $BA ; Increasing Fill Start
#_0CBDE1: db $06 ; Direct Copy
#_0CBDE2: db $F6, $EE, $F7, $46, $AA, $AB, $A1
#_0CBDE9: db $64 ; Increasing Fill
#_0CBDEA: db $C0 ; Increasing Fill Start
#_0CBDEB: db $00 ; Direct Copy
#_0CBDEC: db $B7
#_0CBDED: db $62 ; Increasing Fill
#_0CBDEE: db $C5 ; Increasing Fill Start
#_0CBDEF: db $03 ; Direct Copy
#_0CBDF0: db $F5, $F6, $FA, $FA
#_0CBDF4: db $FF ; End of Map 89

;===================================================================================================

OverworldMap32_Screen8A_High:
#_0CBDF5: db $2B ; Byte Fill
#_0CBDF6: db $21
#_0CBDF7: db $03 ; Direct Copy
#_0CBDF8: db $07, $21, $21, $07
#_0CBDFC: db $2B ; Byte Fill
#_0CBDFD: db $21
#_0CBDFE: db $00 ; Direct Copy
#_0CBDFF: db $07
#_0CBE00: db $22 ; Byte Fill
#_0CBE01: db $21
#_0CBE02: db $22 ; Byte Fill
#_0CBE03: db $20
#_0CBE04: db $28 ; Byte Fill
#_0CBE05: db $21
#_0CBE06: db $03 ; Direct Copy
#_0CBE07: db $05, $21, $21, $07
#_0CBE0B: db $22 ; Byte Fill
#_0CBE0C: db $20
#_0CBE0D: db $07 ; Direct Copy
#_0CBE0E: db $21, $04, $21, $21, $02, $03, $02, $02
#_0CBE16: db $23 ; Byte Fill
#_0CBE17: db $21
#_0CBE18: db $09 ; Direct Copy
#_0CBE19: db $07, $21, $21, $0D, $21, $04, $04, $16
#_0CBE21: db $01, $03
#_0CBE23: db $25 ; Byte Fill
#_0CBE24: db $21
#_0CBE25: db $00 ; Direct Copy
#_0CBE26: db $07
#_0CBE27: db $22 ; Byte Fill
#_0CBE28: db $21
#_0CBE29: db $00 ; Direct Copy
#_0CBE2A: db $02
#_0CBE2B: db $23 ; Byte Fill
#_0CBE2C: db $21
#_0CBE2D: db $00 ; Direct Copy
#_0CBE2E: db $20
#_0CBE2F: db $25 ; Byte Fill
#_0CBE30: db $21
#_0CBE31: db $01 ; Direct Copy
#_0CBE32: db $07, $20
#_0CBE34: db $28 ; Byte Fill
#_0CBE35: db $21
#_0CBE36: db $07 ; Direct Copy
#_0CBE37: db $0E, $21, $05, $20, $05, $07, $20, $21
#_0CBE3F: db $22 ; Byte Fill
#_0CBE40: db $22
#_0CBE41: db $22 ; Byte Fill
#_0CBE42: db $15
#_0CBE43: db $01 ; Direct Copy
#_0CBE44: db $22, $21
#_0CBE46: db $22 ; Byte Fill
#_0CBE47: db $22
#_0CBE48: db $83 ; Repeat Fill
#_0CBE49: db $00, $77 ; Repeat Fill bytes
#_0CBE4B: db $03 ; Direct Copy
#_0CBE4C: db $1E, $22, $22, $05
#_0CBE50: db $22 ; Byte Fill
#_0CBE51: db $15
#_0CBE52: db $E0, $28 ; EXT Direct Copy
#_0CBE54: db $05, $19, $07, $22, $05, $15, $21, $22
#_0CBE5C: db $04, $02, $22, $22, $05, $21, $20, $21
#_0CBE64: db $06, $01, $03, $22, $09, $1F, $07, $0F
#_0CBE6C: db $07, $02, $02, $05, $22, $0F, $1C, $22
#_0CBE74: db $21, $06, $07, $05, $1C, $1C, $21, $0F
#_0CBE7C: db $20
#_0CBE7D: db $22 ; Byte Fill
#_0CBE7E: db $22
#_0CBE7F: db $01 ; Direct Copy
#_0CBE80: db $0F, $05
#_0CBE82: db $23 ; Byte Fill
#_0CBE83: db $22
#_0CBE84: db $05 ; Direct Copy
#_0CBE85: db $21, $1C, $1C, $20, $21, $0F
#_0CBE8B: db $2A ; Byte Fill
#_0CBE8C: db $21
#_0CBE8D: db $04 ; Direct Copy
#_0CBE8E: db $20, $20, $22, $07, $22
#_0CBE93: db $2D ; Byte Fill
#_0CBE94: db $07
#_0CBE95: db $01 ; Direct Copy
#_0CBE96: db $22, $22
#_0CBE98: db $2C ; Byte Fill
#_0CBE99: db $21
#_0CBE9A: db $02 ; Direct Copy
#_0CBE9B: db $22, $22, $21
#_0CBE9E: db $2C ; Byte Fill
#_0CBE9F: db $20
#_0CBEA0: db $02 ; Direct Copy
#_0CBEA1: db $22, $21, $21
#_0CBEA4: db $FF ; End of Map 8A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen8A_Low:
#_0CBEA5: db $00 ; Direct Copy
#_0CBEA6: db $C8
#_0CBEA7: db $62 ; Increasing Fill
#_0CBEA8: db $C8 ; Increasing Fill Start
#_0CBEA9: db $22 ; Byte Fill
#_0CBEAA: db $49
#_0CBEAB: db $00 ; Direct Copy
#_0CBEAC: db $CB
#_0CBEAD: db $63 ; Increasing Fill
#_0CBEAE: db $CB ; Increasing Fill Start
#_0CBEAF: db $03 ; Direct Copy
#_0CBEB0: db $8E, $4E, $4F, $4D
#_0CBEB4: db $62 ; Increasing Fill
#_0CBEB5: db $CF ; Increasing Fill Start
#_0CBEB6: db $00 ; Direct Copy
#_0CBEB7: db $CF
#_0CBEB8: db $66 ; Increasing Fill
#_0CBEB9: db $D2 ; Increasing Fill Start
#_0CBEBA: db $07 ; Direct Copy
#_0CBEBB: db $CE, $8E, $4E, $94, $D9, $91, $92, $90
#_0CBEC3: db $67 ; Increasing Fill
#_0CBEC4: db $DA ; Increasing Fill Start
#_0CBEC5: db $1D ; Direct Copy
#_0CBEC6: db $7A, $96, $E2, $14, $6E, $94, $95, $93
#_0CBECE: db $E3, $B5, $E4, $E5, $08, $B3, $61, $61
#_0CBED6: db $85, $E6, $E7, $27, $6E, $E8, $E9, $69
#_0CBEDE: db $EA, $B7, $B8, $23, $E5, $BB
#_0CBEE4: db $63 ; Increasing Fill
#_0CBEE5: db $EB ; Increasing Fill Start
#_0CBEE6: db $02 ; Direct Copy
#_0CBEE7: db $2B, $27, $6E
#_0CBEEA: db $62 ; Increasing Fill
#_0CBEEB: db $EF ; Increasing Fill Start
#_0CBEEC: db $00 ; Direct Copy
#_0CBEED: db $79
#_0CBEEE: db $62 ; Increasing Fill
#_0CBEEF: db $F2 ; Increasing Fill Start
#_0CBEF0: db $01 ; Direct Copy
#_0CBEF1: db $02, $9C
#_0CBEF3: db $64 ; Increasing Fill
#_0CBEF4: db $F5 ; Increasing Fill Start
#_0CBEF5: db $02 ; Direct Copy
#_0CBEF6: db $28, $6E, $71
#_0CBEF9: db $63 ; Increasing Fill
#_0CBEFA: db $FA ; Increasing Fill Start
#_0CBEFB: db $0C ; Direct Copy
#_0CBEFC: db $17, $18, $2F, $5B, $FE, $27, $2C, $E1
#_0CBF04: db $B3, $E1, $6E, $1A, $FF
#_0CBF09: db $62 ; Increasing Fill
#_0CBF0A: db $00 ; Increasing Fill Start
#_0CBF0B: db $22 ; Byte Fill
#_0CBF0C: db $59
#_0CBF0D: db $01 ; Direct Copy
#_0CBF0E: db $03, $88
#_0CBF10: db $62 ; Increasing Fill
#_0CBF11: db $04 ; Increasing Fill Start
#_0CBF12: db $07 ; Direct Copy
#_0CBF13: db $59, $07, $38, $08, $DC, $09, $0A, $FE
#_0CBF1B: db $22 ; Byte Fill
#_0CBF1C: db $5B
#_0CBF1D: db $E0, $37 ; EXT Direct Copy
#_0CBF1F: db $FF, $D7, $26, $0B, $FE, $5B, $3F, $0C
#_0CBF27: db $7C, $08, $0D, $0E, $C5, $44, $CF, $13
#_0CBF2F: db $0A, $03, $9C, $0F, $83, $56, $4C, $C1
#_0CBF37: db $1C, $FB, $FB, $99, $10, $77, $2D, $11
#_0CBF3F: db $5C, $16, $1B, $9F, $80, $2D, $4F, $C1
#_0CBF47: db $F2, $12, $12, $13, $77, $A4, $14, $15
#_0CBF4F: db $11, $16, $9B, $80, $2D, $BF, $4F, $C1
#_0CBF57: db $26 ; Byte Fill
#_0CBF58: db $17
#_0CBF59: db $08 ; Direct Copy
#_0CBF5A: db $5B, $17, $5B, $5B, $CB, $CA, $17, $29
#_0CBF62: db $18
#_0CBF63: db $2C ; Byte Fill
#_0CBF64: db $84
#_0CBF65: db $02 ; Direct Copy
#_0CBF66: db $96, $19, $1A
#_0CBF69: db $2C ; Byte Fill
#_0CBF6A: db $46
#_0CBF6B: db $02 ; Direct Copy
#_0CBF6C: db $1B, $1C, $3B
#_0CBF6F: db $2C ; Byte Fill
#_0CBF70: db $FA
#_0CBF71: db $02 ; Direct Copy
#_0CBF72: db $1D, $41, $C8
#_0CBF75: db $FF ; End of Map 8A

;===================================================================================================

OverworldMap32_Screen96_High:
#_0CBF76: db $E4, $5F ; EXT Byte Fill
#_0CBF78: db $22
#_0CBF79: db $E4, $9F ; EXT Byte Fill
#_0CBF7B: db $00
#_0CBF7C: db $FF ; End of Map 96

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen96_Low:
#_0CBF7D: db $27 ; Byte Fill
#_0CBF7E: db $1E
#_0CBF7F: db $01 ; Direct Copy
#_0CBF80: db $1F, $20
#_0CBF82: db $25 ; Byte Fill
#_0CBF83: db $1E
#_0CBF84: db $66 ; Increasing Fill
#_0CBF85: db $21 ; Increasing Fill Start
#_0CBF86: db $00 ; Direct Copy
#_0CBF87: db $24
#_0CBF88: db $63 ; Increasing Fill
#_0CBF89: db $28 ; Increasing Fill Start
#_0CBF8A: db $03 ; Direct Copy
#_0CBF8B: db $23, $23, $2C, $29
#_0CBF8F: db $2F ; Byte Fill
#_0CBF90: db $2D
#_0CBF91: db $3F ; Byte Fill
#_0CBF92: db $2E
#_0CBF93: db $2F ; Byte Fill
#_0CBF94: db $2F
#_0CBF95: db $E4, $9F ; EXT Byte Fill
#_0CBF97: db $1D
#_0CBF98: db $FF ; End of Map 96

;===================================================================================================

OverworldMap32_Screen95_High:
#_0CBF99: db $E4, $20 ; EXT Byte Fill
#_0CBF9B: db $22
#_0CBF9C: db $01 ; Direct Copy
#_0CBF9D: db $13, $12
#_0CBF9F: db $25 ; Byte Fill
#_0CBFA0: db $22
#_0CBFA1: db $01 ; Direct Copy
#_0CBFA2: db $13, $12
#_0CBFA4: db $25 ; Byte Fill
#_0CBFA5: db $22
#_0CBFA6: db $00 ; Direct Copy
#_0CBFA7: db $13
#_0CBFA8: db $26 ; Byte Fill
#_0CBFA9: db $22
#_0CBFAA: db $00 ; Direct Copy
#_0CBFAB: db $13
#_0CBFAC: db $26 ; Byte Fill
#_0CBFAD: db $22
#_0CBFAE: db $00 ; Direct Copy
#_0CBFAF: db $13
#_0CBFB0: db $26 ; Byte Fill
#_0CBFB1: db $22
#_0CBFB2: db $00 ; Direct Copy
#_0CBFB3: db $13
#_0CBFB4: db $26 ; Byte Fill
#_0CBFB5: db $22
#_0CBFB6: db $00 ; Direct Copy
#_0CBFB7: db $13
#_0CBFB8: db $26 ; Byte Fill
#_0CBFB9: db $22
#_0CBFBA: db $00 ; Direct Copy
#_0CBFBB: db $13
#_0CBFBC: db $E4, $46 ; EXT Byte Fill
#_0CBFBE: db $22
#_0CBFBF: db $01 ; Direct Copy
#_0CBFC0: db $13, $12
#_0CBFC2: db $25 ; Byte Fill
#_0CBFC3: db $22
#_0CBFC4: db $01 ; Direct Copy
#_0CBFC5: db $13, $12
#_0CBFC7: db $25 ; Byte Fill
#_0CBFC8: db $22
#_0CBFC9: db $00 ; Direct Copy
#_0CBFCA: db $13
#_0CBFCB: db $26 ; Byte Fill
#_0CBFCC: db $22
#_0CBFCD: db $00 ; Direct Copy
#_0CBFCE: db $13
#_0CBFCF: db $26 ; Byte Fill
#_0CBFD0: db $22
#_0CBFD1: db $00 ; Direct Copy
#_0CBFD2: db $13
#_0CBFD3: db $26 ; Byte Fill
#_0CBFD4: db $22
#_0CBFD5: db $00 ; Direct Copy
#_0CBFD6: db $13
#_0CBFD7: db $26 ; Byte Fill
#_0CBFD8: db $22
#_0CBFD9: db $00 ; Direct Copy
#_0CBFDA: db $13
#_0CBFDB: db $26 ; Byte Fill
#_0CBFDC: db $22
#_0CBFDD: db $00 ; Direct Copy
#_0CBFDE: db $13
#_0CBFDF: db $E4, $25 ; EXT Byte Fill
#_0CBFE1: db $22
#_0CBFE2: db $FF ; End of Map 95

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen95_Low:
#_0CBFE3: db $67 ; Increasing Fill
#_0CBFE4: db $30 ; Increasing Fill Start
#_0CBFE5: db $87 ; Repeat Fill
#_0CBFE6: db $00, $00 ; Repeat Fill bytes
#_0CBFE8: db $64 ; Increasing Fill
#_0CBFE9: db $38 ; Increasing Fill Start
#_0CBFEA: db $02 ; Direct Copy
#_0CBFEB: db $30, $3D, $3E
#_0CBFEE: db $87 ; Repeat Fill
#_0CBFEF: db $00, $10 ; Repeat Fill bytes
#_0CBFF1: db $07 ; Direct Copy
#_0CBFF2: db $3B, $D9, $59, $3F, $3E, $40, $41, $3B
#_0CBFFA: db $87 ; Repeat Fill
#_0CBFFB: db $00, $20 ; Repeat Fill bytes
#_0CBFFD: db $07 ; Direct Copy
#_0CBFFE: db $42, $1D, $43, $44, $3B, $37, $45, $46
#_0CC006: db $87 ; Repeat Fill
#_0CC007: db $00, $30 ; Repeat Fill bytes
#_0CC009: db $07 ; Direct Copy
#_0CC00A: db $3D, $D9, $47, $44, $48, $3E, $38, $34
#_0CC012: db $87 ; Repeat Fill
#_0CC013: db $00, $40 ; Repeat Fill bytes
#_0CC015: db $07 ; Direct Copy
#_0CC016: db $41, $1D, $49, $44, $4A, $3B, $3B, $4B
#_0CC01E: db $87 ; Repeat Fill
#_0CC01F: db $00, $50 ; Repeat Fill bytes
#_0CC021: db $07 ; Direct Copy
#_0CC022: db $3B, $3B, $4C, $4D, $45, $46, $42, $48
#_0CC02A: db $87 ; Repeat Fill
#_0CC02B: db $00, $60 ; Repeat Fill bytes
#_0CC02D: db $01 ; Direct Copy
#_0CC02E: db $4E, $45
#_0CC030: db $23 ; Byte Fill
#_0CC031: db $30
#_0CC032: db $03 ; Direct Copy
#_0CC033: db $3D, $4A, $4E, $45
#_0CC037: db $23 ; Byte Fill
#_0CC038: db $30
#_0CC039: db $01 ; Direct Copy
#_0CC03A: db $3D, $4A
#_0CC03C: db $F0, $71 ; EXT Repeat Fill
#_0CC03E: db $00, $00 ; Repeat Fill bytes
#_0CC040: db $23 ; Byte Fill
#_0CC041: db $30
#_0CC042: db $83 ; Repeat Fill
#_0CC043: db $00, $76 ; Repeat Fill bytes
#_0CC045: db $23 ; Byte Fill
#_0CC046: db $30
#_0CC047: db $01 ; Direct Copy
#_0CC048: db $3D, $4A
#_0CC04A: db $FF ; End of Map 95

;===================================================================================================

OverworldMap32_Screen9C_High:
#_0CC04B: db $E4, $FF ; EXT Byte Fill
#_0CC04D: db $22
#_0CC04E: db $FF ; End of Map 9C

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen9C_Low:
#_0CC04F: db $E4, $FF ; EXT Byte Fill
#_0CC051: db $4F
#_0CC052: db $FF ; End of Map 9C

;===================================================================================================

OverworldMap32_Screen88_High:
#_0CC053: db $E4, $FF ; EXT Byte Fill
#_0CC055: db $22
#_0CC056: db $FF ; End of Map 88

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen88_Low:
#_0CC057: db $00 ; Direct Copy
#_0CC058: db $50
#_0CC059: db $64 ; Increasing Fill
#_0CC05A: db $50 ; Increasing Fill Start
#_0CC05B: db $01 ; Direct Copy
#_0CC05C: db $50, $50
#_0CC05E: db $63 ; Increasing Fill
#_0CC05F: db $55 ; Increasing Fill Start
#_0CC060: db $63 ; Increasing Fill
#_0CC061: db $58 ; Increasing Fill Start
#_0CC062: db $09 ; Direct Copy
#_0CC063: db $50, $50, $5C, $58, $58, $5D, $50, $50
#_0CC06B: db $55, $5E
#_0CC06D: db $23 ; Byte Fill
#_0CC06E: db $58
#_0CC06F: db $0B ; Direct Copy
#_0CC070: db $5F, $5B, $50, $60, $61, $58, $58, $62
#_0CC078: db $60, $50, $63, $64
#_0CC07C: db $23 ; Byte Fill
#_0CC07D: db $58
#_0CC07E: db $63 ; Increasing Fill
#_0CC07F: db $65 ; Increasing Fill Start
#_0CC080: db $23 ; Byte Fill
#_0CC081: db $58
#_0CC082: db $02 ; Direct Copy
#_0CC083: db $68, $67, $5E
#_0CC086: db $25 ; Byte Fill
#_0CC087: db $58
#_0CC088: db $00 ; Direct Copy
#_0CC089: db $5F
#_0CC08A: db $27 ; Byte Fill
#_0CC08B: db $58
#_0CC08C: db $00 ; Direct Copy
#_0CC08D: db $64
#_0CC08E: db $25 ; Byte Fill
#_0CC08F: db $58
#_0CC090: db $00 ; Direct Copy
#_0CC091: db $65
#_0CC092: db $66 ; Increasing Fill
#_0CC093: db $69 ; Increasing Fill Start
#_0CC094: db $00 ; Direct Copy
#_0CC095: db $69
#_0CC096: db $27 ; Byte Fill
#_0CC097: db $58
#_0CC098: db $65 ; Increasing Fill
#_0CC099: db $70 ; Increasing Fill Start
#_0CC09A: db $01 ; Direct Copy
#_0CC09B: db $71, $70
#_0CC09D: db $27 ; Byte Fill
#_0CC09E: db $58
#_0CC09F: db $01 ; Direct Copy
#_0CC0A0: db $70, $70
#_0CC0A2: db $63 ; Increasing Fill
#_0CC0A3: db $76 ; Increasing Fill Start
#_0CC0A4: db $01 ; Direct Copy
#_0CC0A5: db $70, $70
#_0CC0A7: db $E4, $87 ; EXT Byte Fill
#_0CC0A9: db $58
#_0CC0AA: db $FF ; End of Map 88

;===================================================================================================
; FREE ROM: 0x55
;===================================================================================================
NULL_0CC0AB:
#_0CC0AB: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CC0B3: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CC0BB: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CC0C3: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CC0CB: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CC0D3: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CC0DB: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CC0E3: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CC0EB: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CC0F3: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CC0FB: db $FF, $FF, $FF, $FF, $FF

;===================================================================================================

Module00_Intro:
#_0CC100: LDA.b $11
#_0CC102: CMP.b #$04
#_0CC104: BCC .run_submodule

#_0CC106: LDA.b $F6
#_0CC108: AND.b #$C0

#_0CC10A: ORA.b $F4
#_0CC10C: AND.b #$D0
#_0CC10E: BEQ .run_submodule

#_0CC110: JMP.w FadeMusicAndResetSRAMMirror

;---------------------------------------------------------------------------------------------------

.run_submodule
#_0CC113: LDA.b $11
#_0CC115: JSL JumpTableLong
#_0CC119: dl Intro_InitialInitialization
#_0CC11C: dl Intro_InitializeMemory
#_0CC11F: dl Intro_InitializeTriforcePolyThread
#_0CC122: dl Intro_HandleAllTriforceAnimations
#_0CC125: dl Intro_HandleAllTriforceAnimations
#_0CC128: dl Intro_FadeLogoIn
#_0CC12B: dl Intro_PopSubtitleCard
#_0CC12E: dl Intro_TrianglesBeforeAttract
#_0CC131: dl Intro_InitializeTriforcePolyThread
#_0CC134: dl Intro_HandleAllTriforceAnimations

;===================================================================================================

Intro_InitialInitialization:
#_0CC137: LDA.b #$80
#_0CC139: STA.w $0710

#_0CC13C: JSL EnableForceBlank
#_0CC140: JSL Intro_SetupScreen

#_0CC144: REP #$20

#_0CC146: LDX.b #$80
#_0CC148: STX.w VMAIN

#_0CC14B: LDA.w #$27F0 ; VRAM $4FE0
#_0CC14E: STA.w VMADDR

#_0CC151: LDX.b #$20

#_0CC153: LDA.w #$7FFF ; RGB: #F8F8F8

.clear_next
#_0CC156: STZ.w VMDATA

#_0CC159: STA.l $7EC620,X

#_0CC15D: DEX
#_0CC15E: DEX
#_0CC15F: BPL .clear_next

;---------------------------------------------------------------------------------------------------

#_0CC161: LDA.w #$1FFE
#_0CC164: STA.b $C8

#_0CC166: LDA.w #$1BFE
#_0CC169: STA.b $CA

#_0CC16B: SEP #$20

#_0CC16D: LDA.b #$0F
#_0CC16F: STA.b $13

#_0CC171: STZ.b $B0

#_0CC173: INC.b $15
#_0CC175: INC.b $11

#_0CC177: LDA.b #$0A ; SFX3.0A
#_0CC179: STA.w $012F

;===================================================================================================

Intro_InitializeMemory:
#_0CC17C: JSR Intro_DisplayLogo

#_0CC17F: LDA.b $B0

#_0CC181: INC.b $B0

#_0CC183: CMP.b #$0C
#_0CC185: BCS Intro_InitializeMemory_darken

#_0CC187: JSL JumpTableLong
#_0CC18B: dl Intro_Clear1kbBlocksOfWRAM
#_0CC18E: dl Intro_Clear1kbBlocksOfWRAM
#_0CC191: dl Intro_Clear1kbBlocksOfWRAM
#_0CC194: dl Intro_Clear1kbBlocksOfWRAM
#_0CC197: dl Intro_Clear1kbBlocksOfWRAM
#_0CC19A: dl Intro_Clear1kbBlocksOfWRAM
#_0CC19D: dl Intro_Clear1kbBlocksOfWRAM
#_0CC1A0: dl Intro_Clear1kbBlocksOfWRAM
#_0CC1A3: dl Intro_CreateTextPointers
#_0CC1A6: dl DecompressFontGFX
#_0CC1A9: dl LoadItemGFXIntoWRAM4BPPBuffer
#_0CC1AC: dl LoadFollowerGraphics

;===================================================================================================
; what a weird way to clear memory
; Every frame it empties 15 1-kilobyte blocks of WRAM
; They could have just done it all at once...
;===================================================================================================
Intro_Clear1kbBlocksOfWRAM:
#_0CC1AF: REP #$30

#_0CC1B1: LDX.b $C8

#_0CC1B3: LDA.w #$0000

.loop
#_0CC1B6: STA.l $7E2000,X
#_0CC1BA: STA.l $7E4000,X
#_0CC1BE: STA.l $7E6000,X
#_0CC1C2: STA.l $7E8000,X

#_0CC1C6: STA.l $7EA000,X
#_0CC1CA: STA.l $7EC000,X
#_0CC1CE: STA.l $7EE000,X
#_0CC1D2: STA.l $7F0000,X

#_0CC1D6: STA.l $7F2000,X
#_0CC1DA: STA.l $7F4000,X
#_0CC1DE: STA.l $7F6000,X
#_0CC1E2: STA.l $7F8000,X

#_0CC1E6: STA.l $7FA000,X
#_0CC1EA: STA.l $7FC000,X
#_0CC1EE: STA.l $7FE000,X

#_0CC1F2: DEX
#_0CC1F3: DEX
#_0CC1F4: CPX.b $CA
#_0CC1F6: BNE .loop

;---------------------------------------------------------------------------------------------------

#_0CC1F8: STX.b $C8 ; save our place

#_0CC1FA: TXA ; -1k
#_0CC1FB: SEC
#_0CC1FC: SBC.w #$0400
#_0CC1FF: STA.b $CA ; save our stopping point

#_0CC201: SEP #$30

#_0CC203: RTL

;===================================================================================================

Intro_InitializeMemory_darken:
#_0CC204: DEC.b $13
#_0CC206: BNE .still_darkening

;===================================================================================================

#Intro_InitializeDefaultGFX:
#_0CC208: JSL EnableForceBlank
#_0CC20C: JSL EraseTilemaps_normal

#_0CC210: LDA.b #$02
#_0CC212: STA.w OBSEL

#_0CC215: LDA.b #$23
#_0CC217: STA.w $0AA1

#_0CC21A: LDA.b #$7D
#_0CC21C: STA.w $0AA3

#_0CC21F: LDA.b #$51
#_0CC221: STA.w $0AA2

#_0CC224: LDA.b #$08
#_0CC226: STA.w $0AA4

#_0CC229: JSL LoadDefaultGraphics
#_0CC22D: JSL InitializeTilesets

#_0CC231: LDY.b #$5D
#_0CC233: JSL DecompressAnimatedUnderworldTiles

;---------------------------------------------------------------------------------------------------

#_0CC237: LDA.b #$02
#_0CC239: STA.l $7EC00D

#_0CC23D: LDA.b #$00
#_0CC23F: STA.l $7EC00E

#_0CC243: STZ.b $8A

#_0CC245: STZ.w $0AB6
#_0CC248: STZ.w $0AB8

#_0CC24B: STZ.b $C8
#_0CC24D: STZ.b $C9

#_0CC24F: STZ.b $CA
#_0CC251: STZ.b $CB

#_0CC253: LDA.b #$02
#_0CC255: STA.l $7EC009

#_0CC259: LDA.b #$1F
#_0CC25B: STA.l $7EC007

#_0CC25F: LDA.b #$00
#_0CC261: STA.l $7EC00B

#_0CC265: STZ.w $0AA6

#_0CC268: INC.b $11

.still_darkening
#_0CC26A: RTL

;===================================================================================================

Intro_FadeLogoIn:
#_0CC26B: JSL Intro_HandleAllTriforceAnimations

#_0CC26F: LDA.b $1A
#_0CC271: LSR A
#_0CC272: BCC .exit_a

#_0CC274: JSL ApplyPaletteFilter

#_0CC278: LDA.l $7EC007
#_0CC27C: BNE .dont_advance

#_0CC27E: LDA.b #$20
#_0CC280: STA.b $B0

#_0CC282: INC.b $11

.exit_a
#_0CC284: RTL

;---------------------------------------------------------------------------------------------------

.dont_advance
#_0CC285: CMP.b #$0D
#_0CC287: BNE .exit_b

#_0CC289: LDA.b #$15
#_0CC28B: STA.b $1C
#_0CC28D: STZ.b $1D

.exit_b
#_0CC28F: RTL

;===================================================================================================

Intro_PopSubtitleCard:
#_0CC290: JSL Intro_HandleAllTriforceAnimations

#_0CC294: DEC.b $B0
#_0CC296: BNE .exit

#_0CC298: LDA.b #$01
#_0CC29A: STA.w $1E13

#_0CC29D: LDA.b #$01
#_0CC29F: STA.w $1E1B

#_0CC2A2: INC.b $11

.exit
#_0CC2A4: RTL

;===================================================================================================

Intro_TrianglesBeforeAttract:
#_0CC2A5: JSL Intro_HandleAllTriforceAnimations

#_0CC2A9: DEC.b $B0
#_0CC2AB: BNE .exit

#_0CC2AD: LDA.b #$14
#_0CC2AF: STA.b $10

#_0CC2B1: STZ.b $11
#_0CC2B3: STZ.b $22

.exit
#_0CC2B5: RTL

;===================================================================================================

FadeMusicAndResetSRAMMirror:
#_0CC2B6: LDA.b #$FF
#_0CC2B8: STA.w $0128

#_0CC2BB: LDA.b #$15
#_0CC2BD: STA.b $1C

#_0CC2BF: STZ.b $1D
#_0CC2C1: STZ.b $1B

#_0CC2C3: LDA.b #$F1 ; SONG F1 - fade
#_0CC2C5: STA.w $012C

#_0CC2C8: JSL FixedColorBlack

;---------------------------------------------------------------------------------------------------

#_0CC2CC: REP #$30

#_0CC2CE: LDX.w #$006E

.next_dp
#_0CC2D1: STZ.b $20,X

#_0CC2D3: DEX
#_0CC2D4: DEX
#_0CC2D5: BPL .next_dp

;---------------------------------------------------------------------------------------------------

#_0CC2D7: LDX.w #$0000
#_0CC2DA: TXA

.next_sram
#_0CC2DB: STA.l $7EF000,X
#_0CC2DF: STA.l $7EF100,X
#_0CC2E3: STA.l $7EF200,X
#_0CC2E7: STA.l $7EF300,X
#_0CC2EB: STA.l $7EF400,X

#_0CC2EF: INX
#_0CC2F0: INX
#_0CC2F1: CPX.w #$0100
#_0CC2F4: BNE .next_sram

;---------------------------------------------------------------------------------------------------

#_0CC2F6: SEP #$30

#_0CC2F8: LDA.b #$01
#_0CC2FA: STA.b $10
#_0CC2FC: STA.w $04AA

#_0CC2FF: STZ.b $11

#_0CC301: RTL

;===================================================================================================

Intro_InitializeTriforcePolyThread:
#_0CC302: LDA.b #$08
#_0CC304: STA.w $0AA4

#_0CC307: JSL LoadCommonSprites_long
#_0CC30B: JSR TriforceInitializePolyhedralModule

#_0CC30E: LDA.b #$01
#_0CC310: STA.w $1E10
#_0CC313: STA.w $1E11
#_0CC316: STA.w $1E12

#_0CC319: LDA.b #$00
#_0CC31B: STA.w $1E18
#_0CC31E: STA.w $1E19
#_0CC321: STA.w $1E1A

#_0CC324: LDA.b #$01
#_0CC326: STA.w $1E14

#_0CC329: LDA.b #$02
#_0CC32B: STA.w $1E1C

#_0CC32E: LDA.b #$0F
#_0CC330: STA.b $13

#_0CC332: INC.b $11

#_0CC334: RTL

;===================================================================================================

TriforceInitializePolyhedralModule:
#_0CC335: JSL Polyhedral_InitializeThread
#_0CC339: JSR LoadTriforceSpritePalette

#_0CC33C: LDA.b #$90
#_0CC33E: STA.b $FF

#_0CC340: LDA.b #$FF
#_0CC342: STA.w $1F02

#_0CC345: LDA.b #$01
#_0CC347: STA.w $1F01

#_0CC34A: LDA.b #$20
#_0CC34C: STA.w $1F06

#_0CC34F: LDA.b #$20
#_0CC351: STA.w $1F07

#_0CC354: LDA.b #$20
#_0CC356: STA.w $1F08

#_0CC359: LDA.b #$01
#_0CC35B: STA.w $1F03

#_0CC35E: LDA.b #$A0
#_0CC360: STA.w $1F04

#_0CC363: LDA.b #$60
#_0CC365: STA.w $1F05

#_0CC368: LDA.b #$01
#_0CC36A: STA.w $012A
#_0CC36D: STA.w $1F00

;---------------------------------------------------------------------------------------------------

#_0CC370: LDX.b #$0F

.clear_next
#_0CC372: STZ.w $1E00,X
#_0CC375: STZ.w $1E10,X
#_0CC378: STZ.w $1E20,X
#_0CC37B: STZ.w $1E30,X
#_0CC37E: STZ.w $1E40,X
#_0CC381: STZ.w $1E50,X
#_0CC384: STZ.w $1E60,X

#_0CC387: DEX
#_0CC388: BPL .clear_next

;---------------------------------------------------------------------------------------------------

#_0CC38A: RTS

;===================================================================================================

LoadTriforceSpritePalette:
#_0CC38B: REP #$20

#_0CC38D: LDA.l Palettes_Triforce+0
#_0CC391: STA.l $7EC6A0

#_0CC395: LDA.l Palettes_Triforce+2
#_0CC399: STA.l $7EC6A2

#_0CC39D: LDA.l Palettes_Triforce+4
#_0CC3A1: STA.l $7EC6A4

#_0CC3A5: LDA.l Palettes_Triforce+6
#_0CC3A9: STA.l $7EC6A6

#_0CC3AD: LDA.l Palettes_Triforce+8
#_0CC3B1: STA.l $7EC6A8

#_0CC3B5: LDA.l Palettes_Triforce+10
#_0CC3B9: STA.l $7EC6AA

#_0CC3BD: LDA.l Palettes_Triforce+12
#_0CC3C1: STA.l $7EC6AC

#_0CC3C5: LDA.l Palettes_Triforce+14
#_0CC3C9: STA.l $7EC6AE

#_0CC3CD: SEP #$30

#_0CC3CF: INC.b $15

#_0CC3D1: RTS

;===================================================================================================

Intro_HandleAllTriforceAnimations:
#_0CC3D2: PHB
#_0CC3D3: PHK
#_0CC3D4: PLB

#_0CC3D5: INC.w $1E0A

#_0CC3D8: JSR Intro_AnimateTriforce
#_0CC3DB: JSR Scene_AnimateEverySprite

#_0CC3DE: PLB

#_0CC3DF: RTL

;===================================================================================================

Scene_AnimateEverySprite:
#_0CC3E0: LDA.b #$00
#_0CC3E2: STA.w $1E08

#_0CC3E5: LDA.b #$08
#_0CC3E7: STA.w $1E09

#_0CC3EA: LDX.b #$07

.next
#_0CC3EC: JSR Scene_AnimateSingleSprite

#_0CC3EF: DEX
#_0CC3F0: BPL .next

#_0CC3F2: RTS

;===================================================================================================

Palettes_Triforce:
; #RRGGBB :  000000, 685000, 806800, 987800, B09000, C89800, E8B800, F8D000
#_0CC3F3: dw  $0000,  $014D,  $01B0,  $01F3,  $0256,  $0279,  $02FD,  $035F

;===================================================================================================

Intro_AnimateTriforce:
#_0CC403: LDA.b #$01
#_0CC405: STA.w $012A

#_0CC408: LDA.w $1F00
#_0CC40B: BNE .exit

#_0CC40D: JSR Intro_AnimateTriforceDanceMoves

#_0CC410: LDA.b #$01
#_0CC412: STA.w $1F00

.exit
#_0CC415: RTS

;===================================================================================================

Intro_AnimateTriforceDanceMoves:
#_0CC416: LDA.w $1E00
#_0CC419: JSL JumpTableLocal
#_0CC41D: dw Intro_TriforceTinyDancers
#_0CC41F: dw Intro_TriforceSpinInwards
#_0CC421: dw Intro_TriforceNearingMerge
#_0CC423: dw Intro_MergeTriforceSpin
#_0CC425: dw Intro_TriforceTerminateSpin
#_0CC427: dw Intro_TriforceDoNothing

;===================================================================================================

Intro_TriforceTinyDancers:
#_0CC429: INC.w $1E01

#_0CC42C: LDA.w $1E01
#_0CC42F: CMP.b #$40
#_0CC431: BNE .delay

#_0CC433: INC.w $1E00

.delay
#_0CC436: LDA.w $1F05
#_0CC439: CLC
#_0CC43A: ADC.b #$05
#_0CC43C: STA.w $1F05

#_0CC43F: LDA.w $1F04
#_0CC442: CLC
#_0CC443: ADC.b #$03
#_0CC445: STA.w $1F04

#_0CC448: RTS

;===================================================================================================
; Spinwards, if you will.
;===================================================================================================
Intro_TriforceSpinInwards:
#_0CC449: LDA.w $1F02
#_0CC44C: CMP.b #$02
#_0CC44E: BCS .delay

#_0CC450: STZ.w $1F02

#_0CC453: INC.w $1E00

#_0CC456: LDA.b #$40
#_0CC458: STA.w $1E01

#_0CC45B: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_0CC45C: SBC.b #$02
#_0CC45E: STA.w $1F02

#_0CC461: LDA.w $1F05
#_0CC464: CLC
#_0CC465: ADC.b #$05
#_0CC467: STA.w $1F05

#_0CC46A: LDA.w $1F04
#_0CC46D: CLC
#_0CC46E: ADC.b #$03
#_0CC470: STA.w $1F04

#_0CC473: LDA.w $1F02
#_0CC476: CMP.b #$E1
#_0CC478: BCS .delay_skippability

#_0CC47A: LDX.b #$04
#_0CC47C: STX.b $11

.delay_skippability
#_0CC47E: CMP.b #$71
#_0CC480: BNE .delay_song

#_0CC482: LDA.b #$01 ; SONG 01
#_0CC484: STA.w $012C

.delay_song
#_0CC487: RTS

;===================================================================================================

Intro_TriforceNearingMerge:
#_0CC488: DEC.w $1E01
#_0CC48B: BNE .delay

#_0CC48D: INC.w $1E00

#_0CC490: RTS

;---------------------------------------------------------------------------------------------------

.delay
#_0CC491: LDA.w $1F05
#_0CC494: CLC
#_0CC495: ADC.b #$05
#_0CC497: STA.w $1F05

#_0CC49A: LDA.w $1F04
#_0CC49D: CLC
#_0CC49E: ADC.b #$03
#_0CC4A0: STA.w $1F04

#_0CC4A3: RTS

;===================================================================================================

Intro_MergeTriforceSpin:
#_0CC4A4: LDA.w $1F05
#_0CC4A7: CMP.b #$FA
#_0CC4A9: BCC .spinning

#_0CC4AB: LDA.w $1F04
#_0CC4AE: CMP.b #$FC
#_0CC4B0: BCC .spinning

#_0CC4B2: INC.w $1E00

#_0CC4B5: LDA.b #$20
#_0CC4B7: STA.w $1E01

#_0CC4BA: RTS

;---------------------------------------------------------------------------------------------------

.spinning
#_0CC4BB: LDA.w $1F05
#_0CC4BE: CLC
#_0CC4BF: ADC.b #$05
#_0CC4C1: STA.w $1F05

#_0CC4C4: LDA.w $1F04
#_0CC4C7: CLC
#_0CC4C8: ADC.b #$03
#_0CC4CA: STA.w $1F04

#_0CC4CD: RTS

;===================================================================================================

Intro_TriforceTerminateSpin:
#_0CC4CE: STZ.w $1F05
#_0CC4D1: STZ.w $1F04

#_0CC4D4: DEC.w $1E01
#_0CC4D7: BNE .exit

#_0CC4D9: INC.w $1E00

#_0CC4DC: LDA.b #$01
#_0CC4DE: STA.w $1E15

#_0CC4E1: LDA.b #$03
#_0CC4E3: STA.w $1E1D

#_0CC4E6: LDA.b #$03
#_0CC4E8: STA.b $14

#_0CC4EA: INC.b $15

#_0CC4EC: INC.b $11

#_0CC4EE: LDA.b #$10
#_0CC4F0: STA.b $1C

#_0CC4F2: LDA.b #$05
#_0CC4F4: STA.b $1D

#_0CC4F6: LDA.b #$02
#_0CC4F8: STA.b $99

#_0CC4FA: LDA.b #$31
#_0CC4FC: STA.b $9A

#_0CC4FE: STZ.b $B0

.exit
#_0CC500: RTS

;===================================================================================================

Intro_TriforceDoNothing:
#_0CC501: RTS

;===================================================================================================

Scene_AnimateSingleSprite:
#_0CC502: LDA.w $1E10,X
#_0CC505: BEQ .exit

#_0CC507: JSL JumpTableLocal
#_0CC50B: dw .exit
#_0CC50D: dw InitializeSceneSprite
#_0CC50F: dw AnimateSceneSprite

;---------------------------------------------------------------------------------------------------

.exit
#_0CC511: RTS

;===================================================================================================

InitializeSceneSprite:
#_0CC512: LDA.w $1E18,X
#_0CC515: JSL JumpTableLocal
#_0CC519: dw InitializeSceneSprite_Triangle
#_0CC51B: dw InitializeSceneSprite_TitleCard
#_0CC51D: dw InitializeSceneSprite_Copyright
#_0CC51F: dw InitializeSceneSprite_Sparkle
#_0CC521: dw InitializeSceneSprite_TriforceRoomTriangle
#_0CC523: dw InitializeSceneSprite_TriforceRoomTriangle
#_0CC525: dw InitializeSceneSprite_TriforceRoomTriangle
#_0CC527: dw InitializeSceneSprite_CreditsTriangle

;===================================================================================================

AnimateSceneSprite:
#_0CC529: LDA.w $1E18,X
#_0CC52C: JSL JumpTableLocal
#_0CC530: dw AnimateSceneSprite_Triangle
#_0CC532: dw AnimateSceneSprite_TitleCard
#_0CC534: dw AnimateSceneSprite_Copyright
#_0CC536: dw AnimateSceneSprite_Sparkle
#_0CC538: dw AnimateSceneSprite_TriforceRoomTriangle
#_0CC53A: dw AnimateSceneSprite_TriforceRoomTriangle
#_0CC53C: dw AnimateSceneSprite_TriforceRoomTriangle
#_0CC53E: dw AnimateSceneSprite_CreditsTriangle

;===================================================================================================

pool InitializeSceneSprite_Triangle

.pos_x_start
#_0CC540: dw $FFDA
#_0CC542: dw $005F
#_0CC544: dw $00E6

.pos_y_start
#_0CC546: dw $00C8
#_0CC548: dw $FFBD
#_0CC54A: dw $00C8

pool off

;---------------------------------------------------------------------------------------------------

InitializeSceneSprite_Triangle:
#_0CC54C: TXA
#_0CC54D: ASL A
#_0CC54E: TAY

#_0CC54F: LDA.w .pos_x_start+0,Y
#_0CC552: STA.w $1E30,X

#_0CC555: LDA.w .pos_x_start+1,Y
#_0CC558: STA.w $1E38,X

#_0CC55B: LDA.w .pos_y_start+0,Y
#_0CC55E: STA.w $1E48,X

#_0CC561: LDA.w .pos_y_start+1,Y
#_0CC564: STA.w $1E50,X

#_0CC567: LDA.w IntroTriangleSpeedX,X
#_0CC56A: CLC
#_0CC56B: ADC.w $1E58,X
#_0CC56E: STA.w $1E58,X

#_0CC571: LDA.w IntroTriangleSpeedY,X
#_0CC574: CLC
#_0CC575: ADC.w $1E60,X
#_0CC578: STA.w $1E60,X

#_0CC57B: INC.w $1E10,X

#_0CC57E: RTS

;===================================================================================================

AnimateSceneSprite_Triangle:
#_0CC57F: JSR AnimateSceneSprite_DrawTriangle
#_0CC582: JSR AnimateSceneSprite_MoveTriangle

#_0CC585: LDA.w $1E00
#_0CC588: JSL JumpTableLocal
#_0CC58C: dw IntroTriangle_MoveIntoPlace
#_0CC58E: dw IntroTriangle_MoveIntoPlace
#_0CC590: dw IntroTriangle_MoveIntoPlace
#_0CC592: dw IntroTriangle_MoveIntoPlace
#_0CC594: dw IntroTriangle_MoveIntoPlace
#_0CC596: dw IntroTriangle_StopMoving

;===================================================================================================

IntroTriangleSpeedX:
#_0CC598: db   1
#_0CC599: db   0
#_0CC59A: db  -1

IntroTriangleSpeedY:
#_0CC59B: db  -1
#_0CC59C: db   1
#_0CC59D: db  -1

;===================================================================================================

pool IntroTriangle_MoveIntoPlace

.target_x
#_0CC59E: db $4B
#_0CC59F: db $5F
#_0CC5A0: db $75

.target_y
#_0CC5A1: db $50
#_0CC5A2: db $28
#_0CC5A3: db $50

pool off

;---------------------------------------------------------------------------------------------------

IntroTriangle_MoveIntoPlace:
#_0CC5A4: LDA.w $1E0A
#_0CC5A7: AND.b #$1F
#_0CC5A9: BNE .dont_accel

#_0CC5AB: LDA.w IntroTriangleSpeedX,X
#_0CC5AE: CLC
#_0CC5AF: ADC.w $1E58,X
#_0CC5B2: STA.w $1E58,X

#_0CC5B5: LDA.w IntroTriangleSpeedY,X
#_0CC5B8: CLC
#_0CC5B9: ADC.w $1E60,X
#_0CC5BC: STA.w $1E60,X

.dont_accel
#_0CC5BF: LDA.w .target_x,X
#_0CC5C2: CMP.w $1E30,X
#_0CC5C5: BNE .dont_reset_speed

#_0CC5C7: STZ.w $1E58,X

.dont_reset_speed
#_0CC5CA: LDA.w .target_y,X
#_0CC5CD: CMP.w $1E48,X
#_0CC5D0: BNE .exit

#_0CC5D2: STZ.w $1E60,X

.exit
#_0CC5D5: RTS

;===================================================================================================

IntroTriangle_StopMoving:
#_0CC5D6: STZ.w $1E58,X
#_0CC5D9: STZ.w $1E60,X

#_0CC5DC: RTS

;===================================================================================================

pool AnimateSceneSprite_DrawTriangle

.rightside_objects
#_0CC5DD: dw   0,   0 : db $80, $2B, $00, $02
#_0CC5E5: dw  16,   0 : db $82, $2B, $00, $02
#_0CC5ED: dw  32,   0 : db $84, $2B, $00, $02
#_0CC5F5: dw  48,   0 : db $86, $2B, $00, $02
#_0CC5FD: dw   0,  16 : db $A0, $2B, $00, $02
#_0CC605: dw  16,  16 : db $A2, $2B, $00, $02
#_0CC60D: dw  32,  16 : db $A4, $2B, $00, $02
#_0CC615: dw  48,  16 : db $A6, $2B, $00, $02
#_0CC61D: dw   0,  32 : db $88, $2B, $00, $02
#_0CC625: dw  16,  32 : db $8A, $2B, $00, $02
#_0CC62D: dw  32,  32 : db $8C, $2B, $00, $02
#_0CC635: dw  48,  32 : db $8E, $2B, $00, $02
#_0CC63D: dw   0,  48 : db $A8, $2B, $00, $02
#_0CC645: dw  16,  48 : db $AA, $2B, $00, $02
#_0CC64D: dw  32,  48 : db $AC, $2B, $00, $02
#_0CC655: dw  48,  48 : db $AE, $2B, $00, $02

;---------------------------------------------------------------------------------------------------

.leftside_objects
#_0CC65D: dw  48,   0 : db $80, $6B, $00, $02
#_0CC665: dw  32,   0 : db $82, $6B, $00, $02
#_0CC66D: dw  16,   0 : db $84, $6B, $00, $02
#_0CC675: dw   0,   0 : db $86, $6B, $00, $02
#_0CC67D: dw  48,  16 : db $A0, $6B, $00, $02
#_0CC685: dw  32,  16 : db $A2, $6B, $00, $02
#_0CC68D: dw  16,  16 : db $A4, $6B, $00, $02
#_0CC695: dw   0,  16 : db $A6, $6B, $00, $02
#_0CC69D: dw  48,  32 : db $88, $6B, $00, $02
#_0CC6A5: dw  32,  32 : db $8A, $6B, $00, $02
#_0CC6AD: dw  16,  32 : db $8C, $6B, $00, $02
#_0CC6B5: dw   0,  32 : db $8E, $6B, $00, $02
#_0CC6BD: dw  48,  48 : db $A8, $6B, $00, $02
#_0CC6C5: dw  32,  48 : db $AA, $6B, $00, $02
#_0CC6CD: dw  16,  48 : db $AC, $6B, $00, $02
#_0CC6D5: dw   0,  48 : db $AE, $6B, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

AnimateSceneSprite_DrawTriangle:
#_0CC6DD: LDA.b #$10
#_0CC6DF: STA.b $06
#_0CC6E1: STZ.b $07

#_0CC6E3: CPX.b #$02
#_0CC6E5: BEQ .decrementing

#_0CC6E7: LDA.b #.rightside_objects>>0
#_0CC6E9: STA.b $08

#_0CC6EB: LDA.b #.rightside_objects>>8
#_0CC6ED: STA.b $09

#_0CC6EF: BRA .continue

;---------------------------------------------------------------------------------------------------

.decrementing
#_0CC6F1: LDA.b #.leftside_objects>>0
#_0CC6F3: STA.b $08

#_0CC6F5: LDA.b #.leftside_objects>>8
#_0CC6F7: STA.b $09

.continue
#_0CC6F9: JSR AnimateSceneSprite_AddObjectsToOAMBuffer

#_0CC6FC: RTS

;===================================================================================================

InitializeSceneSprite_TitleCard:
#_0CC6FD: LDA.b #$80
#_0CC6FF: STA.w $1E30,X

#_0CC702: STZ.w $1E38,X

#_0CC705: LDA.b #$7E
#_0CC707: STA.w $1E48,X

#_0CC70A: STZ.w $1E50,X

#_0CC70D: INC.w $1E10,X

#_0CC710: RTS

;===================================================================================================

AnimateSceneSprite_TitleCard:
#_0CC711: JSR AnimateSceneSprite_DrawTitleCard

#_0CC714: RTS

;===================================================================================================

pool AnimateSceneSprite_DrawTitleCard

.groups
#_0CC715: dw   0,   0 : db $46, $0C, $00, $02
#_0CC71D: dw  16,   0 : db $48, $0C, $00, $02
#_0CC725: dw  32,   0 : db $4A, $0C, $00, $02
#_0CC72D: dw  48,   0 : db $4C, $0C, $00, $02
#_0CC735: dw  64,   0 : db $4E, $0C, $00, $02
#_0CC73D: dw  80,   0 : db $60, $0C, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

AnimateSceneSprite_DrawTitleCard:
#_0CC745: LDA.b #$06
#_0CC747: STA.b $06
#_0CC749: STZ.b $07

#_0CC74B: LDA.b #.groups>>0
#_0CC74D: STA.b $08

#_0CC74F: LDA.b #.groups>>8
#_0CC751: STA.b $09

#_0CC753: JSR AnimateSceneSprite_AddObjectsToOAMBuffer

#_0CC756: RTS

;===================================================================================================

InitializeSceneSprite_Copyright:
#_0CC757: LDA.b #$58
#_0CC759: STA.w $1E30,X

#_0CC75C: STZ.w $1E38,X

#_0CC75F: LDA.b #$B8
#_0CC761: STA.w $1E48,X

#_0CC764: STZ.w $1E50,X

#_0CC767: INC.w $1E10,X

#_0CC76A: RTS

;===================================================================================================

AnimateSceneSprite_Copyright:
#_0CC76B: JSR AnimateSceneSprite_DrawCopyright

#_0CC76E: RTS

;===================================================================================================

pool AnimateSceneSprite_DrawCopyright

.groups
#_0CC76F: dw   0,   0 : db $40, $0A, $00, $00
#_0CC777: dw   8,   0 : db $41, $0A, $00, $00
#_0CC77F: dw  16,   0 : db $42, $0A, $00, $00
#_0CC787: dw  24,   0 : db $43, $0A, $00, $00
#_0CC78F: dw  32,   0 : db $44, $0A, $00, $00
#_0CC797: dw  40,   0 : db $50, $0A, $00, $00
#_0CC79F: dw  48,   0 : db $51, $0A, $00, $00
#_0CC7A7: dw  56,   0 : db $52, $0A, $00, $00
#_0CC7AF: dw  64,   0 : db $53, $0A, $00, $00
#_0CC7B7: dw  72,   0 : db $54, $0A, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

AnimateSceneSprite_DrawCopyright:
#_0CC7BF: LDA.b #$0A
#_0CC7C1: STA.b $06
#_0CC7C3: STZ.b $07

#_0CC7C5: LDA.b #.groups>>0
#_0CC7C7: STA.b $08

#_0CC7C9: LDA.b #.groups>>8
#_0CC7CB: STA.b $09

#_0CC7CD: JSR AnimateSceneSprite_AddObjectsToOAMBuffer

#_0CC7D0: RTS

;===================================================================================================

InitializeSceneSprite_Sparkle:
#_0CC7D1: LDA.w $1E0A

#_0CC7D4: LSR A ; /32
#_0CC7D5: LSR A
#_0CC7D6: LSR A
#_0CC7D7: LSR A
#_0CC7D8: LSR A

#_0CC7D9: AND.b #$03
#_0CC7DB: TAY

#_0CC7DC: LDA.w .position_x,Y
#_0CC7DF: STA.w $1E30,X

#_0CC7E2: LDA.w .position_y,Y
#_0CC7E5: STA.w $1E48,X

#_0CC7E8: INC.w $1E10,X

#_0CC7EB: RTS

;---------------------------------------------------------------------------------------------------

pool InitializeSceneSprite_Sparkle AnimateSceneSprite_Sparkle

.position_x
#_0CC7EC: db $D0, $98, $6E, $2A

.position_y
#_0CC7F0: db $6E, $4C, $71, $51

.anim_step
#_0CC7F4: db $00, $01, $02, $03, $02, $01, $FF, $FF

pool off

;---------------------------------------------------------------------------------------------------

AnimateSceneSprite_Sparkle:
#_0CC7FC: JSR AnimateSceneSprite_DrawSparkle

#_0CC7FF: LDA.w $1E0A
#_0CC802: LSR A
#_0CC803: LSR A
#_0CC804: AND.b #$07
#_0CC806: TAY

#_0CC807: LDA.w .anim_step,Y
#_0CC80A: STA.w $1E20,X

#_0CC80D: LDA.w $1E0A
#_0CC810: LSR A ; /32
#_0CC811: LSR A
#_0CC812: LSR A
#_0CC813: LSR A
#_0CC814: LSR A
#_0CC815: AND.b #$03
#_0CC817: TAY

#_0CC818: LDA.w .position_x,Y
#_0CC81B: STA.w $1E30,X

#_0CC81E: LDA.w .position_y,Y
#_0CC821: STA.w $1E48,X

#_0CC824: RTS

;===================================================================================================

pool AnimateSceneSprite_DrawSparkle

.groups
#_0CC825: dw   0,   0 : db $80, $34, $00, $00
#_0CC82D: dw   0,   0 : db $B7, $34, $00, $00
#_0CC835: dw  -4,  -3 : db $64, $38, $00, $02
#_0CC83D: dw  -4,  -3 : db $62, $34, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

AnimateSceneSprite_DrawSparkle:
#_0CC845: LDA.b #$01
#_0CC847: STA.b $06
#_0CC849: STZ.b $07

#_0CC84B: LDA.w $1E20,X
#_0CC84E: BMI .exit

#_0CC850: ASL A
#_0CC851: ASL A
#_0CC852: ASL A

#_0CC853: ADC.b #.groups>>0
#_0CC855: STA.b $08

#_0CC857: LDA.b #.groups>>8
#_0CC859: ADC.b #$00
#_0CC85B: STA.b $09

#_0CC85D: JSR AnimateSceneSprite_AddObjectsToOAMBuffer

.exit
#_0CC860: RTS

;===================================================================================================

AnimateSceneSprite_AddObjectsToOAMBuffer:
#_0CC861: LDA.w $1E30,X
#_0CC864: STA.b $00

#_0CC866: LDA.w $1E38,X
#_0CC869: STA.b $01

#_0CC86B: LDA.w $1E48,X
#_0CC86E: STA.b $02

#_0CC870: LDA.w $1E50,X
#_0CC873: STA.b $03

#_0CC875: STZ.b $04
#_0CC877: STZ.b $05

;---------------------------------------------------------------------------------------------------

#_0CC879: PHX

#_0CC87A: REP #$30

#_0CC87C: LDY.w #$0000
#_0CC87F: LDX.w $1E08

#_0CC882: LDA.b $06
#_0CC884: ASL A
#_0CC885: ASL A
#_0CC886: ADC.w $1E08
#_0CC889: STA.w $1E08

;---------------------------------------------------------------------------------------------------

.next
#_0CC88C: LDA.b ($08),Y
#_0CC88E: CLC
#_0CC88F: ADC.b $00
#_0CC891: STA.w $0000,X

#_0CC894: AND.w #$0100
#_0CC897: STA.b $0C

#_0CC899: INY
#_0CC89A: INY

#_0CC89B: LDA.b ($08),Y
#_0CC89D: CLC
#_0CC89E: ADC.b $02
#_0CC8A0: STA.w $0001,X

#_0CC8A3: CLC
#_0CC8A4: ADC.w #$0010
#_0CC8A7: CMP.w #$0100
#_0CC8AA: BCC .on_screen

#_0CC8AC: LDA.w #$00F0
#_0CC8AF: STA.w $0001,X

.on_screen
#_0CC8B2: INY
#_0CC8B3: INY

#_0CC8B4: LDA.b ($08),Y
#_0CC8B6: EOR.b $04
#_0CC8B8: STA.w $0002,X

#_0CC8BB: PHX

#_0CC8BC: TXA
#_0CC8BD: SEC
#_0CC8BE: SBC.w #$0800
#_0CC8C1: LSR A
#_0CC8C2: LSR A
#_0CC8C3: TAX

#_0CC8C4: SEP #$20

#_0CC8C6: INY
#_0CC8C7: INY
#_0CC8C8: INY

#_0CC8C9: LDA.b ($08),Y
#_0CC8CB: ORA.b $0D
#_0CC8CD: STA.w $0A20,X

#_0CC8D0: PLX

#_0CC8D1: REP #$20

#_0CC8D3: INY

#_0CC8D4: INX ; +4
#_0CC8D5: INX
#_0CC8D6: INX
#_0CC8D7: INX

#_0CC8D8: DEC.b $06
#_0CC8DA: BNE .next

;---------------------------------------------------------------------------------------------------

#_0CC8DC: SEP #$30

#_0CC8DE: PLX

#_0CC8DF: RTS

;===================================================================================================

AnimateSceneSprite_MoveTriangle:
#_0CC8E0: LDA.w $1E58,X
#_0CC8E3: BEQ .no_x_speed

#_0CC8E5: ASL A ; x16
#_0CC8E6: ASL A
#_0CC8E7: ASL A
#_0CC8E8: ASL A

#_0CC8E9: CLC
#_0CC8EA: ADC.w $1E28,X
#_0CC8ED: STA.w $1E28,X

#_0CC8F0: LDA.w $1E58,X
#_0CC8F3: PHP

#_0CC8F4: LSR A ; /16
#_0CC8F5: LSR A
#_0CC8F6: LSR A
#_0CC8F7: LSR A

#_0CC8F8: LDY.b #$00

#_0CC8FA: PLP
#_0CC8FB: BPL .positive_x

#_0CC8FD: ORA.b #$F0
#_0CC8FF: DEY

.positive_x
#_0CC900: ADC.w $1E30,X
#_0CC903: STA.w $1E30,X

#_0CC906: TYA
#_0CC907: ADC.w $1E38,X
#_0CC90A: STA.w $1E38,X

;---------------------------------------------------------------------------------------------------

.no_x_speed
#_0CC90D: LDA.w $1E60,X
#_0CC910: BEQ .exit

#_0CC912: ASL A ; x16
#_0CC913: ASL A
#_0CC914: ASL A
#_0CC915: ASL A

#_0CC916: CLC
#_0CC917: ADC.w $1E40,X
#_0CC91A: STA.w $1E40,X

#_0CC91D: LDA.w $1E60,X
#_0CC920: PHP

#_0CC921: LSR A ; /16
#_0CC922: LSR A
#_0CC923: LSR A
#_0CC924: LSR A

#_0CC925: LDY.b #$00

#_0CC927: PLP
#_0CC928: BPL .positive_y

#_0CC92A: ORA.b #$F0
#_0CC92C: DEY

.positive_y
#_0CC92D: ADC.w $1E48,X
#_0CC930: STA.w $1E48,X

#_0CC933: TYA
#_0CC934: ADC.w $1E50,X
#_0CC937: STA.w $1E50,X

.exit
#_0CC93A: RTS

;===================================================================================================

AnimateSceneSprite_TerminateTriangle:
#_0CC93B: LDA.w $1E02
#_0CC93E: BEQ .exit

#_0CC940: PLA
#_0CC941: PLA

.exit
#_0CC942: RTS

;===================================================================================================

TriforceRoom_PrepGFXSlotForPoly:
#_0CC943: LDA.b #$08
#_0CC945: STA.w $0AA4

#_0CC948: JSL LoadCommonSprites_long
#_0CC94C: JSR TriforceInitializePolyhedralModule

#_0CC94F: LDA.b #$01
#_0CC951: STA.w $1E10
#_0CC954: STA.w $1E11
#_0CC957: STA.w $1E12

#_0CC95A: LDA.b #$04
#_0CC95C: STA.w $1E18

#_0CC95F: LDA.b #$05
#_0CC961: STA.w $1E19

#_0CC964: LDA.b #$06
#_0CC966: STA.w $1E1A

#_0CC969: LDA.b #$0F
#_0CC96B: STA.b $13

#_0CC96D: INC.b $11

#_0CC96F: RTL

;===================================================================================================

Credits_InitializePolyhedral:
#_0CC970: LDA.b #$08
#_0CC972: STA.w $0AA4

#_0CC975: JSL LoadCommonSprites_long
#_0CC979: JSR TriforceInitializePolyhedralModule

#_0CC97C: STZ.w $1F02

#_0CC97F: LDA.b #$01
#_0CC981: STA.w $1E10
#_0CC984: STA.w $1E11
#_0CC987: STA.w $1E12

#_0CC98A: LDA.b #$07
#_0CC98C: STA.w $1E18

#_0CC98F: LDA.b #$07
#_0CC991: STA.w $1E19

#_0CC994: LDA.b #$07
#_0CC996: STA.w $1E1A

#_0CC999: LDA.b #$0F
#_0CC99B: STA.b $13

#_0CC99D: INC.b $11

#_0CC99F: RTL

;===================================================================================================

AdvancePolyhedral:
#_0CC9A0: PHB
#_0CC9A1: PHK
#_0CC9A2: PLB

#_0CC9A3: JSR .do_advance
#_0CC9A6: JSR Scene_AnimateEverySprite

#_0CC9A9: PLB

#_0CC9AA: RTL

;===================================================================================================

.do_advance
#_0CC9AB: LDA.b #$01
#_0CC9AD: STA.w $012A
#_0CC9B0: STA.w $1E02

#_0CC9B3: LDA.w $1F00
#_0CC9B6: BNE .exit

#_0CC9B8: JSR .run_sub

#_0CC9BB: LDA.b #$01
#_0CC9BD: STA.w $1F00

#_0CC9C0: STZ.w $1E02

#_0CC9C3: INC.w $1E0A

.exit
#_0CC9C6: RTS

;---------------------------------------------------------------------------------------------------

.run_sub
#_0CC9C7: LDA.w $1E00
#_0CC9CA: JSL JumpTableLocal
#_0CC9CE: dw IntroPolyhedral_StartUp
#_0CC9D0: dw IntroPolyhedral_MoveGrowRotate
#_0CC9D2: dw IntroPolyhedral_MoveRotate
#_0CC9D4: dw IntroPolyhedral_LockIntoPlace
#_0CC9D6: dw EXIT_0CCA90

;===================================================================================================

IntroPolyhedral_StartUp:
#_0CC9D8: LDA.w $1F02
#_0CC9DB: SEC
#_0CC9DC: SBC.b #$02
#_0CC9DE: STA.w $1F02

#_0CC9E1: CMP.b #$02
#_0CC9E3: BCS IntroPolyhedral_MoveGrowRotate

#_0CC9E5: STZ.w $1F02

#_0CC9E8: INC.w $1E00
#_0CC9EB: INC.b $B0

;===================================================================================================

IntroPolyhedral_MoveGrowRotate:
#_0CC9ED: LDA.b $B0
#_0CC9EF: CMP.b #$0A
#_0CC9F1: BCC .delay

#_0CC9F3: INC.w $1E00

#_0CC9F6: LDA.b #$05
#_0CC9F8: STA.w $1E61

.delay
#_0CC9FB: LDA.w $1F05
#_0CC9FE: CLC
#_0CC9FF: ADC.b #$02
#_0CCA01: STA.w $1F05

#_0CCA04: LDA.w $1F04
#_0CCA07: CLC
#_0CCA08: ADC.b #$01
#_0CCA0A: STA.w $1F04

#_0CCA0D: RTS

;===================================================================================================

IntroPolyhedral_MoveRotate:
#_0CCA0E: LDA.b #$C0
#_0CCA10: STA.w $1E0C

#_0CCA13: LDA.b #$01
#_0CCA15: STA.w $1E0D

#_0CCA18: LDA.w $1F02
#_0CCA1B: CMP.b #$80
#_0CCA1D: BCS .negative

#_0CCA1F: ADC.b #$01
#_0CCA21: STA.w $1F02

#_0CCA24: BRA .just_spin

;---------------------------------------------------------------------------------------------------

.negative
#_0CCA26: LDA.w $1F05
#_0CCA29: SEC
#_0CCA2A: SBC.b #$0A
#_0CCA2C: AND.b #$7F

#_0CCA2E: CMP.b #$5C
#_0CCA30: BCC .just_spin

#_0CCA32: LDA.w $1F04
#_0CCA35: SEC
#_0CCA36: SBC.b #$0B

#_0CCA38: CMP.b #$DC
#_0CCA3A: BCC .just_spin

;---------------------------------------------------------------------------------------------------

#_0CCA3C: STZ.w $1F04
#_0CCA3F: STZ.w $1F05

#_0CCA42: INC.b $B0
#_0CCA44: INC.w $1E00

#_0CCA47: LDA.b #$2C ; SFX2.2C
#_0CCA49: STA.w $012E

#_0CCA4C: LDA.b #$FF ; RGB: #F8F8F8
#_0CCA4E: STA.l $7EC6AE

#_0CCA52: LDA.b #$7F
#_0CCA54: STA.l $7EC6AF

#_0CCA58: INC.b $15

#_0CCA5A: LDA.b #$06
#_0CCA5C: STA.w $1E01

#_0CCA5F: RTS

;---------------------------------------------------------------------------------------------------

.just_spin
#_0CCA60: LDA.w $1F05
#_0CCA63: CLC
#_0CCA64: ADC.b #$05
#_0CCA66: STA.w $1F05

#_0CCA69: LDA.w $1F04
#_0CCA6C: CLC
#_0CCA6D: ADC.b #$03
#_0CCA6F: STA.w $1F04

#_0CCA72: RTS

;===================================================================================================

IntroPolyhedral_LockIntoPlace:
#_0CCA73: DEC.w $1E01

#_0CCA76: LDA.w $1E01
#_0CCA79: BNE EXIT_0CCA90

#_0CCA7B: LDA.l Palettes_Triforce+14
#_0CCA7F: STA.l $7EC6AE

#_0CCA83: LDA.l Palettes_Triforce+15
#_0CCA87: STA.l $7EC6AF

#_0CCA8B: INC.b $15
#_0CCA8D: INC.w $1E00

;---------------------------------------------------------------------------------------------------

#EXIT_0CCA90:
#_0CCA90: RTS

;===================================================================================================

Credits_AnimateTheTriangles:
#_0CCA91: PHB
#_0CCA92: PHK
#_0CCA93: PLB

#_0CCA94: INC.w $1E0A

#_0CCA97: JSR CreditsTriangle_HandleRotation
#_0CCA9A: JSR Scene_AnimateEverySprite

#_0CCA9D: PLB

#_0CCA9E: RTL

;===================================================================================================

CreditsTriangle_HandleRotation:
#_0CCA9F: LDA.b #$01
#_0CCAA1: STA.w $012A

#_0CCAA4: LDA.w $1F00
#_0CCAA7: BNE .exit

#_0CCAA9: JSR CreditsTriangle_ApplyRotation

#_0CCAAC: LDA.b #$01
#_0CCAAE: STA.w $1F00

.exit
#_0CCAB1: RTS

;===================================================================================================

CreditsTriangle_ApplyRotation:
#_0CCAB2: LDA.w $1F05
#_0CCAB5: CLC
#_0CCAB6: ADC.b #$03
#_0CCAB8: STA.w $1F05

#_0CCABB: LDA.w $1F04
#_0CCABE: CLC
#_0CCABF: ADC.b #$01
#_0CCAC1: STA.w $1F04

#_0CCAC4: RTS

;===================================================================================================

pool InitializeSceneSprite_TriforceRoomTriangle

.position_x
#_0CCAC5: dw $004E
#_0CCAC7: dw $005F
#_0CCAC9: dw $0072

.position_y
#_0CCACB: dw $009C
#_0CCACD: dw $009C
#_0CCACF: dw $009C

.speed_x
#_0CCAD1: db $FE
#_0CCAD2: db $00
#_0CCAD3: db $02

.speed_y
#_0CCAD4: db $04
#_0CCAD5: db $FC
#_0CCAD6: db $04

pool off

;---------------------------------------------------------------------------------------------------

InitializeSceneSprite_TriforceRoomTriangle:
#_0CCAD7: TXA
#_0CCAD8: ASL A
#_0CCAD9: TAY

#_0CCADA: LDA.w .position_x+0,Y
#_0CCADD: STA.w $1E30,X

#_0CCAE0: LDA.w .position_x+1,Y
#_0CCAE3: STA.w $1E38,X

#_0CCAE6: LDA.w .position_y+0,Y
#_0CCAE9: STA.w $1E48,X

#_0CCAEC: LDA.w .position_y+1,Y
#_0CCAEF: STA.w $1E50,X

#_0CCAF2: LDA.w .speed_x,X
#_0CCAF5: STA.w $1E58,X

#_0CCAF8: LDA.w .speed_y,X
#_0CCAFB: STA.w $1E60,X

#_0CCAFE: INC.w $1E10,X

#_0CCB01: RTS

;===================================================================================================

AnimateSceneSprite_TriforceRoomTriangle:
#_0CCB02: JSR AnimateSceneSprite_DrawTriangle
#_0CCB05: JSR AnimateSceneSprite_TerminateTriangle
#_0CCB08: JSR AnimateSceneSprite_MoveTriangle

#_0CCB0B: LDA.w $1E00
#_0CCB0E: JSL JumpTableLocal
#_0CCB12: dw AnimateTriforceRoomTriangle_Expand
#_0CCB14: dw AnimateTriforceRoomTriangle_RotateInPlace
#_0CCB16: dw AnimateTriforceRoomTriangle_Contract
#_0CCB18: dw AnimateTriforceRoomTriangle_Stopped
#_0CCB1A: dw AnimateTriforceRoomTriangle_Stopped

;===================================================================================================

pool AnimateTriforceRoomTriangle_Expand

.speed_x
#_0CCB1C: db -1
#_0CCB1D: db  0
#_0CCB1E: db  1

.speed_y
#_0CCB1F: db -1
#_0CCB20: db -1
#_0CCB21: db -1

pool off

;---------------------------------------------------------------------------------------------------

AnimateTriforceRoomTriangle_Expand:
#_0CCB22: LDA.w $1E0A
#_0CCB25: AND.b #$07
#_0CCB27: BNE .no_x_speed

#_0CCB29: LDA.w .speed_x,X
#_0CCB2C: CLC
#_0CCB2D: ADC.w $1E58,X
#_0CCB30: STA.w $1E58,X

.no_x_speed
#_0CCB33: LDA.w $1E0A
#_0CCB36: AND.b #$03
#_0CCB38: BNE .exit

#_0CCB3A: LDA.w .speed_y,X
#_0CCB3D: CLC
#_0CCB3E: ADC.w $1E60,X
#_0CCB41: STA.w $1E60,X

.exit
#_0CCB44: RTS

;===================================================================================================

AnimateTriforceRoomTriangle_RotateInPlace:
#_0CCB45: STZ.w $1E58,X
#_0CCB48: STZ.w $1E60,X

#_0CCB4B: RTS

;===================================================================================================

pool AnimateTriforceRoomTriangle_Contract AnimateTriforceRoomTriangle_HandleContracting

.speed_x
#_0CCB4C: db $FF
#_0CCB4D: db $FF
#_0CCB4E: db $FF

.speed_y
#_0CCB4F: db $01
#_0CCB50: db $01
#_0CCB51: db $01

.limit_x
#_0CCB52: db $EF

.limit_y
#_0CCB53: db $11

.target_x
#_0CCB54: db $59
#_0CCB55: db $5F
#_0CCB56: db $67

.target_y
#_0CCB57: db $74
#_0CCB58: db $68
#_0CCB59: db $74

pool off

;---------------------------------------------------------------------------------------------------

AnimateTriforceRoomTriangle_Contract:
#_0CCB5A: LDA.w $1E0A
#_0CCB5D: AND.b #$03
#_0CCB5F: BNE .no_x_speed

#_0CCB61: JSR AnimateTriforceRoomTriangle_HandleContracting

.no_x_speed
#_0CCB64: LDA.w .target_x,X
#_0CCB67: CMP.w $1E30,X
#_0CCB6A: BNE .no_reset

#_0CCB6C: STZ.w $1E58,X

.no_reset
#_0CCB6F: LDA.w .target_y,X
#_0CCB72: CMP.w $1E48,X
#_0CCB75: BNE .exit

#_0CCB77: STZ.w $1E60,X

.exit
#_0CCB7A: RTS

;===================================================================================================

pool AnimateTriforceRoomTriangle_Stopped

.position_y
#_0CCB7B: db $72
#_0CCB7C: db $66
#_0CCB7D: db $72

pool off

;---------------------------------------------------------------------------------------------------

AnimateTriforceRoomTriangle_Stopped:
#_0CCB7E: LDA.w $1E0C
#_0CCB81: ORA.w $1E0D
#_0CCB84: BNE .no_adjust

#_0CCB86: LDA.w .position_y,X
#_0CCB89: STA.w $1E48,X

#_0CCB8C: RTS

;---------------------------------------------------------------------------------------------------

.no_adjust
#_0CCB8D: LDA.w $1E0C
#_0CCB90: SEC
#_0CCB91: SBC.b #$01
#_0CCB93: STA.w $1E0C

#_0CCB96: LDA.w $1E0D
#_0CCB99: SBC.b #$00
#_0CCB9B: STA.w $1E0D

#_0CCB9E: RTS

;===================================================================================================

AnimateTriforceRoomTriangle_HandleContracting:
#_0CCB9F: LDA.w .target_x,X
#_0CCBA2: CMP.w $1E30,X
#_0CCBA5: BCC .below_x

#_0CCBA7: LDA.w .speed_y,X
#_0CCBAA: BRA .continue_x

.below_x
#_0CCBAC: LDA.w .speed_x,X

.continue_x
#_0CCBAF: CLC
#_0CCBB0: ADC.w $1E58,X
#_0CCBB3: STA.w $1E58,X

#_0CCBB6: CMP.w .limit_x
#_0CCBB9: BNE .unequal_x

#_0CCBBB: LDA.w .limit_x
#_0CCBBE: INC A

#_0CCBBF: BRA .set_x

.unequal_x
#_0CCBC1: CMP.w .limit_y
#_0CCBC4: BNE .done_x

#_0CCBC6: LDA.w .limit_y
#_0CCBC9: DEC A

.set_x
#_0CCBCA: STA.w $1E58,X

;---------------------------------------------------------------------------------------------------

.done_x
#_0CCBCD: LDA.w .target_y,X
#_0CCBD0: CMP.w $1E48,X
#_0CCBD3: BCC .below_y

#_0CCBD5: LDA.w .speed_y,X
#_0CCBD8: BRA .continue_y

.below_y
#_0CCBDA: LDA.w .speed_x,X

.continue_y
#_0CCBDD: CLC
#_0CCBDE: ADC.w $1E60,X
#_0CCBE1: STA.w $1E60,X

#_0CCBE4: CMP.w .limit_x
#_0CCBE7: BNE .unequal_y

#_0CCBE9: LDA.w .limit_x
#_0CCBEC: INC A
#_0CCBED: BRA .set_y

.unequal_y
#_0CCBEF: CMP.w .limit_y
#_0CCBF2: BNE .exit

#_0CCBF4: LDA.w .limit_y
#_0CCBF7: DEC A

.set_y
#_0CCBF8: STA.w $1E60,X

.exit
#_0CCBFB: RTS

;===================================================================================================

pool InitializeSceneSprite_CreditsTriangle

.position_x
#_0CCBFC: dw $0029
#_0CCBFE: dw $005F
#_0CCC00: dw $0097

.position_y
#_0CCC02: dw $0070
#_0CCC04: dw $0020
#_0CCC06: dw $0070

pool off

;---------------------------------------------------------------------------------------------------

InitializeSceneSprite_CreditsTriangle:
#_0CCC08: TXA
#_0CCC09: ASL A
#_0CCC0A: TAY

#_0CCC0B: LDA.w .position_x+0,Y
#_0CCC0E: STA.w $1E30,X

#_0CCC11: LDA.w .position_x+1,Y
#_0CCC14: STA.w $1E38,X

#_0CCC17: LDA.w .position_y+0,Y
#_0CCC1A: STA.w $1E48,X

#_0CCC1D: LDA.w .position_y+1,Y
#_0CCC20: STA.w $1E50,X

#_0CCC23: INC.w $1E10,X

#_0CCC26: RTS

;===================================================================================================

pool AnimateSceneSprite_CreditsTriangle

.speed_x
#_0CCC27: db -1
#_0CCC28: db  0
#_0CCC29: db  1

.speed_y
#_0CCC2A: db  1
#_0CCC2B: db -1
#_0CCC2C: db  1

pool off

;---------------------------------------------------------------------------------------------------

AnimateSceneSprite_CreditsTriangle:
#_0CCC2D: JSR LoadTriforceSpritePalette
#_0CCC30: JSR AnimateSceneSprite_DrawTriangle
#_0CCC33: JSR AnimateSceneSprite_MoveTriangle

#_0CCC36: LDA.b $11
#_0CCC38: CMP.b #$24
#_0CCC3A: BNE .reset

#_0CCC3C: LDA.w $1E20,X
#_0CCC3F: CMP.b #$50
#_0CCC41: BEQ .exit

#_0CCC43: INC.w $1E20,X

#_0CCC46: LDA.w .speed_x,X
#_0CCC49: CLC
#_0CCC4A: ADC.w $1E58,X
#_0CCC4D: STA.w $1E58,X

#_0CCC50: LDA.w .speed_y,X
#_0CCC53: CLC
#_0CCC54: ADC.w $1E60,X
#_0CCC57: STA.w $1E60,X

.exit
#_0CCC5A: RTS

;---------------------------------------------------------------------------------------------------

.reset
#_0CCC5B: STZ.w $1E20,X

#_0CCC5E: RTS

;===================================================================================================

UNREACHABLE_0CCC5F:
#_0CCC5F: dw $0000
#_0CCC61: dw $0064
#_0CCC63: dw $00C8
#_0CCC65: dw $FF8F

;===================================================================================================

FileSelect_FairyY:
#_0CCC67: db $4A ; File 1
#_0CCC68: db $6A ; File 2
#_0CCC69: db $8A ; File 3
#_0CCC6A: db $A7 ; Copy
#_0CCC6B: db $C7 ; KILL

;---------------------------------------------------------------------------------------------------

Module01_FileSelect:
#_0CCC6C: STZ.b $E4
#_0CCC6E: STZ.b $E5
#_0CCC70: STZ.b $EA
#_0CCC72: STZ.b $EB

#_0CCC74: LDA.b $11
#_0CCC76: JSL JumpTableLong
#_0CCC7A: dl FileSelect_InitializeGFX
#_0CCC7D: dl FileSelect_ReInitSaveFlagsAndEraseTriforce
#_0CCC80: dl FileSelect_TriggerStripesAndAdvance
#_0CCC83: dl FileSelect_TriggerNameStripesAndAdvance
#_0CCC86: dl FileSelect_Main

;===================================================================================================

FileSelect_InitializeGFX:
#_0CCC89: JSL EnableForceBlank

#_0CCC8D: STZ.w $012A
#_0CCC90: STZ.w $1F0C

#_0CCC93: LDA.b #$0B ; SONG 0B
#_0CCC95: STA.w $012C

#_0CCC98: INC.b $11

#_0CCC9A: LDA.b #$02
#_0CCC9C: STA.w $0AA9

#_0CCC9F: STZ.w $0AB6

#_0CCCA2: JSL Palettes_Load_UnderworldSet
#_0CCCA6: JSL Palettes_Load_OWBG3

#_0CCCAA: LDA.b #$01
#_0CCCAC: STA.w $0AB2

#_0CCCAF: JSL Palettes_Load_HUD

#_0CCCB3: STZ.w $0202

#_0CCCB6: LDA.b #$01
#_0CCCB8: STA.w $0AA4

#_0CCCBB: LDA.b #$23
#_0CCCBD: STA.w $0AA1

#_0CCCC0: JSL LoadDefaultGraphics
#_0CCCC4: JSL InitializeTilesets
#_0CCCC8: JSL LoadFileSelectGraphics

#_0CCCCC: REP #$30

#_0CCCCE: STZ.b $00

;---------------------------------------------------------------------------------------------------

.next_file_check
#_0CCCD0: LDX.b $00

#_0CCCD2: LDA.l SaveFileCopyOffsets,X
#_0CCCD6: TAX

#_0CCCD7: PHX

#_0CCCD8: LDY.w #$0000
#_0CCCDB: TYA

.calc_checksum_main
#_0CCCDC: CLC
#_0CCCDD: ADC.l $700000,X

#_0CCCE1: INX
#_0CCCE2: INX

#_0CCCE3: INY
#_0CCCE4: CPY.w #$0280
#_0CCCE7: BNE .calc_checksum_main

#_0CCCE9: PLX

#_0CCCEA: CMP.w #$5A5A
#_0CCCED: BEQ .checksum_good

;---------------------------------------------------------------------------------------------------

#_0CCCEF: PHX
#_0CCCF0: LDY.w #$0000
#_0CCCF3: TYA

.calc_checksum_backup
#_0CCCF4: CLC
#_0CCCF5: ADC.l $700F00,X

#_0CCCF9: INX
#_0CCCFA: INX

#_0CCCFB: INY
#_0CCCFC: CPY.w #$0280
#_0CCCFF: BNE .calc_checksum_backup

#_0CCD01: PLX

#_0CCD02: CMP.w #$5A5A
#_0CCD05: BNE .delete_file

;---------------------------------------------------------------------------------------------------

#_0CCD07: LDY.w #$0000

.copy_from_backup
#_0CCD0A: LDA.l $700F00,X
#_0CCD0E: STA.l $700000,X

#_0CCD12: LDA.l $701000,X
#_0CCD16: STA.l $700100,X

#_0CCD1A: LDA.l $701100,X
#_0CCD1E: STA.l $700200,X

#_0CCD22: LDA.l $701200,X
#_0CCD26: STA.l $700300,X

#_0CCD2A: LDA.l $701300,X
#_0CCD2E: STA.l $700400,X

#_0CCD32: INX
#_0CCD33: INX

#_0CCD34: INY
#_0CCD35: CPY.w #$0080
#_0CCD38: BNE .copy_from_backup

;---------------------------------------------------------------------------------------------------

.checksum_good
#_0CCD3A: INC.b $00
#_0CCD3C: INC.b $00

#_0CCD3E: LDX.b $00
#_0CCD40: CPX.w #$0006
#_0CCD43: BNE .next_file_check

;---------------------------------------------------------------------------------------------------

#_0CCD45: LDX.w #$00FE

.clear_next_sprite_prop
#_0CCD48: STZ.w $0D00,X
#_0CCD4B: STZ.w $0E00,X
#_0CCD4E: STZ.w $0F00,X

#_0CCD51: DEX
#_0CCD52: DEX
#_0CCD53: BPL .clear_next_sprite_prop

#_0CCD55: SEP #$30

#_0CCD57: JML DecompressEnemyDamageSubclasses

;---------------------------------------------------------------------------------------------------

.delete_file
#_0CCD5B: LDY.w #$0000
#_0CCD5E: TYA

.delete_next
#_0CCD5F: STA.l $700F00,X
#_0CCD63: STA.l $700000,X

#_0CCD67: STA.l $701000,X
#_0CCD6B: STA.l $700100,X

#_0CCD6F: STA.l $701100,X
#_0CCD73: STA.l $700200,X

#_0CCD77: STA.l $701200,X
#_0CCD7B: STA.l $700300,X

#_0CCD7F: STA.l $701300,X
#_0CCD83: STA.l $700400,X

#_0CCD87: INX
#_0CCD88: INX

#_0CCD89: INY
#_0CCD8A: CPY.w #$0080
#_0CCD8D: BNE .delete_next

#_0CCD8F: BRA .checksum_good

;===================================================================================================

FileSelect_ReInitSaveFlagsAndEraseTriforce:
#_0CCD91: LDX.b #$05

.clear_next
#_0CCD93: STZ.b $BF,X

#_0CCD95: DEX
#_0CCD96: BPL .clear_next

;===================================================================================================

FileSelect_EraseTriforce:
#_0CCD98: LDA.b #$80
#_0CCD9A: STA.w $0710

#_0CCD9D: JSL EnableForceBlank
#_0CCDA1: JSL EraseTilemaps_triforce
#_0CCDA5: JSL Palettes_LoadForFileSelect

#_0CCDA9: INC.b $15
#_0CCDAB: INC.b $11

#_0CCDAD: RTL

;===================================================================================================

FileSelect_TriggerStripesAndAdvance:
#_0CCDAE: LDA.w $0B9D
#_0CCDB1: STA.b $C8

.advance_submodule
#_0CCDB3: INC.b $11

#_0CCDB5: LDA.b #$06
#_0CCDB7: STA.b $14

#_0CCDB9: RTL

;===================================================================================================

#FileSelect_TriggerNameStripesAndAdvance:
#_0CCDBA: JSR FileSelect_SetUpNamesStripes

#_0CCDBD: LDA.b #$0F
#_0CCDBF: STA.b $13

#_0CCDC1: STZ.w $0710

#_0CCDC4: BRA .advance_submodule

;===================================================================================================

FileSelect_Main:
#_0CCDC6: PHB
#_0CCDC7: PHK
#_0CCDC8: PLB

#_0CCDC9: JSL FileSelect_HandleInput

#_0CCDCD: JMP.w FileSelect_TriggerTheStripes

;===================================================================================================

FileSelect_SetUpNamesStripes:
#_0CCDD0: PHB
#_0CCDD1: PHK
#_0CCDD2: PLB

#_0CCDD3: REP #$10

#_0CCDD5: LDX.w #$012D

.next
#_0CCDD8: LDA.w FileSelectNamesTilemap-1,X
#_0CCDDB: STA.w $1001,X

#_0CCDDE: DEX
#_0CCDDF: BNE .next

;---------------------------------------------------------------------------------------------------

#_0CCDE1: SEP #$10

#_0CCDE3: PLB

#_0CCDE4: RTS

;===================================================================================================

FileSelect_HandleInput:
#_0CCDE5: LDA.b $C8
#_0CCDE7: CMP.b #$03
#_0CCDE9: BCS .not_on_a_file

#_0CCDEB: STA.w $0B9D

.not_on_a_file
#_0CCDEE: REP #$30

#_0CCDF0: LDX.w #$0000

;---------------------------------------------------------------------------------------------------

.check_next_file
#_0CCDF3: STX.b $00

#_0CCDF5: LDA.l SaveFileCopyOffsets,X
#_0CCDF9: TAX

#_0CCDFA: LDA.l $7003E1,X
#_0CCDFE: CMP.w #$55AA
#_0CCE01: BNE .no_name

#_0CCE03: PHX

#_0CCE04: LDX.b $00

#_0CCE06: LDA.w #$0001
#_0CCE09: STA.b $BF,X

#_0CCE0B: PLX

#_0CCE0C: JSR FileSelect_CopyNameToStripes

;---------------------------------------------------------------------------------------------------

.no_name
#_0CCE0F: LDX.b $00
#_0CCE11: INX
#_0CCE12: INX
#_0CCE13: CPX.w #$0006
#_0CCE16: BCC .check_next_file

;---------------------------------------------------------------------------------------------------

#_0CCE18: SEP #$30

#_0CCE1A: LDX.b $C8

#_0CCE1C: LDA.b #$14
#_0CCE1E: STA.b $00

#_0CCE20: LDA.w FileSelect_FairyY,X
#_0CCE23: STA.b $01

#_0CCE25: JSR FileSelect_DrawFairy

#_0CCE28: LDY.b #$02

; check for AX
#_0CCE2A: LDA.b $F6
#_0CCE2C: AND.b #$C0

; check for BYSsud
#_0CCE2E: ORA.b $F4
#_0CCE30: AND.b #$FC
#_0CCE32: BEQ .exit

#_0CCE34: AND.b #$2C
#_0CCE36: BEQ .didnt_change_selection

#_0CCE38: AND.b #$08
#_0CCE3A: BEQ .pressed_down

;---------------------------------------------------------------------------------------------------

#_0CCE3C: LDA.b #$20 ; SFX3.20
#_0CCE3E: STA.w $012F

#_0CCE41: DEC.b $C8
#_0CCE43: BPL .proceed_to_exit

#_0CCE45: LDA.b #$04
#_0CCE47: STA.b $C8

#_0CCE49: BRA .proceed_to_exit

;---------------------------------------------------------------------------------------------------

.pressed_down
#_0CCE4B: LDA.b #$20 ; SFX3.20
#_0CCE4D: STA.w $012F

#_0CCE50: INC.b $C8

#_0CCE52: LDA.b $C8
#_0CCE54: CMP.b #$05
#_0CCE56: BNE .proceed_to_exit

#_0CCE58: STZ.b $C8

.proceed_to_exit
#_0CCE5A: BRA .exit

;---------------------------------------------------------------------------------------------------

.didnt_change_selection
#_0CCE5C: LDA.b #$2C ; SFX2.2C
#_0CCE5E: STA.w $012E

#_0CCE61: LDA.b $C8
#_0CCE63: CMP.b #$03
#_0CCE65: BEQ .copy_file

#_0CCE67: BCS .kill_file

#_0CCE69: LDA.b $C8
#_0CCE6B: ASL A
#_0CCE6C: TAX

#_0CCE6D: LDA.b $BF,X
#_0CCE6F: BEQ .no_file_there

#_0CCE71: LDA.b #$F1 ; SONG F1 - fade
#_0CCE73: STA.w $012C

#_0CCE76: STZ.b $C9

#_0CCE78: REP #$20

#_0CCE7A: LDA.l SaveFileCopyOffsets,X
#_0CCE7E: STA.b $00

#_0CCE80: LDA.b $C8
#_0CCE82: ASL A
#_0CCE83: INC A
#_0CCE84: INC A
#_0CCE85: STA.l $701FFE

#_0CCE89: SEP #$20

#_0CCE8B: BRL CopySaveToWRAM

;---------------------------------------------------------------------------------------------------

.no_file_there
#_0CCE8E: STZ.b $C9

#_0CCE90: LDY.b #$04
#_0CCE92: BRA .set_module

;---------------------------------------------------------------------------------------------------

.copy_file
#_0CCE94: LDY.b #$02
#_0CCE96: BRA .check_for_some_file

.kill_file
#_0CCE98: LDY.b #$03

.check_for_some_file
#_0CCE9A: LDA.b $BF
#_0CCE9C: ORA.b $C1
#_0CCE9E: ORA.b $C3
#_0CCEA0: BNE .dont_error_beep

#_0CCEA2: LDA.b #$3C ; SFX2.3C
#_0CCEA4: STA.w $012E

#_0CCEA7: BRA .exit

.dont_error_beep
#_0CCEA9: STZ.b $C8

;---------------------------------------------------------------------------------------------------

.set_module
#_0CCEAB: STY.b $10

#_0CCEAD: STZ.b $11
#_0CCEAF: STZ.b $B0

.exit
#_0CCEB1: RTL

;===================================================================================================

CopySaveToWRAM:
#_0CCEB2: LDX.b #$0F

#_0CCEB4: LDA.b #$00
#_0CCEB6: STA.l $001AC0,X
#_0CCEBA: STA.l $001AE0,X

#_0CCEBE: LDA.b #$00
#_0CCEC0: STA.l $001AB0,X
#_0CCEC4: STA.l $001AD0,X
#_0CCEC8: STA.l $001AF0,X

#_0CCECC: PHB

#_0CCECD: LDA.b #$7E
#_0CCECF: PHA
#_0CCED0: PLB

;---------------------------------------------------------------------------------------------------

#_0CCED1: REP #$30

#_0CCED3: LDY.w #$0000
#_0CCED6: LDX.b $00

.copy_next
#_0CCED8: LDA.l $700000,X
#_0CCEDC: STA.w $7EF000,Y

#_0CCEDF: LDA.l $700100,X
#_0CCEE3: STA.w $7EF100,Y

#_0CCEE6: LDA.l $700200,X
#_0CCEEA: STA.w $7EF200,Y

#_0CCEED: LDA.l $700300,X
#_0CCEF1: STA.w $7EF300,Y

#_0CCEF4: LDA.l $700400,X
#_0CCEF8: STA.w $7EF400,Y

#_0CCEFB: INX
#_0CCEFC: INX

#_0CCEFD: INY
#_0CCEFE: INY
#_0CCEFF: CPY.w #$0100
#_0CCF02: BNE .copy_next

;---------------------------------------------------------------------------------------------------

#_0CCF04: PLB

#_0CCF05: LDA.w #$0007
#_0CCF08: STA.l $7EC00D
#_0CCF0C: STA.l $7EC013

#_0CCF10: LDA.w #$0000
#_0CCF13: STA.l $7EC00F
#_0CCF17: STA.l $7EC015

#_0CCF1B: LDA.w #$6040 ; VRAM $C080
#_0CCF1E: STA.w $0219

#_0CCF21: LDA.w #$4841
#_0CCF24: STA.w $021D

#_0CCF27: LDA.w #$007F
#_0CCF2A: STA.w $021F

#_0CCF2D: LDA.w #$FFFF
#_0CCF30: STA.w $0221

;---------------------------------------------------------------------------------------------------

#_0CCF33: SEP #$30

#_0CCF35: LDA.b #$80
#_0CCF37: STA.w $0204

#_0CCF3A: LDA.b #$05
#_0CCF3C: STA.b $10
#_0CCF3E: STZ.b $11

#_0CCF40: STZ.w $010E

#_0CCF43: STZ.w $0710

#_0CCF46: STZ.w $0AB2

#_0CCF49: RTL

;===================================================================================================

Module02_CopyFile:
#_0CCF4A: STZ.w $0B9D

#_0CCF4D: LDA.b $11
#_0CCF4F: JSL JumpTableLong
#_0CCF53: dl FileSelect_EraseTriforce
#_0CCF56: dl CopyFile_FindFileIndices
#_0CCF59: dl CopyFile_ChooseSelection
#_0CCF5C: dl CopyFile_ChooseTarget
#_0CCF5F: dl CopyFile_ConfirmSelection

;===================================================================================================

CopyFile_FindFileIndices:
#_0CCF62: LDA.b #$07

;===================================================================================================

KILLFile_FindFileIndices:
#_0CCF64: STA.b $14

#_0CCF66: INC.b $11

#_0CCF68: LDA.b #$0F
#_0CCF6A: STA.b $13

#_0CCF6C: STZ.w $0710

#_0CCF6F: LDX.b #$FE

.find_file
#_0CCF71: INX
#_0CCF72: INX

#_0CCF73: LDA.b $BF,X
#_0CCF75: BEQ .find_file

;---------------------------------------------------------------------------------------------------

#_0CCF77: TXA
#_0CCF78: LSR A
#_0CCF79: STA.b $C8

#_0CCF7B: RTL

;===================================================================================================

CopyFile_ChooseSelection:
#_0CCF7C: PHB
#_0CCF7D: PHK
#_0CCF7E: PLB

#_0CCF7F: JSR CopyFile_SelectionAndBlinker

#_0CCF82: LDA.b $11
#_0CCF84: CMP.b #$02
#_0CCF86: BNE FileSelect_TriggerTheStripes

#_0CCF88: LDA.b $1A
#_0CCF8A: AND.b #$30
#_0CCF8C: BNE FileSelect_TriggerTheStripes

#_0CCF8E: JSR FilePicker_DeleteHeaderStripe

;===================================================================================================

FileSelect_TriggerTheStripes:
#_0CCF91: LDA.b #$01
#_0CCF93: STA.b $14

#_0CCF95: PLB

#_0CCF96: RTL

;===================================================================================================

CopyFile_ChooseTarget:
#_0CCF97: PHB
#_0CCF98: PHK
#_0CCF99: PLB

#_0CCF9A: JSR CopyFile_TargetSelectionAndBlink

#_0CCF9D: LDA.b $11
#_0CCF9F: CMP.b #$03
#_0CCFA1: BNE .trigger_stripes

#_0CCFA3: LDA.b $1A
#_0CCFA5: AND.b #$30
#_0CCFA7: BNE FileSelect_TriggerTheStripes

#_0CCFA9: JSR FilePicker_DeleteHeaderStripe

.trigger_stripes
#_0CCFAC: BRA FileSelect_TriggerTheStripes

;===================================================================================================

CopyFile_ConfirmSelection:
#_0CCFAE: PHB
#_0CCFAF: PHK
#_0CCFB0: PLB

#_0CCFB1: JSR CopyFile_HandleConfirmation

#_0CCFB4: JMP.w FileSelect_TriggerTheStripes

;===================================================================================================

pool FilePicker_DeleteHeaderStripe

.offset
#_0CCFB7: dw $0004, $0016

pool off

;---------------------------------------------------------------------------------------------------

FilePicker_DeleteHeaderStripe:
#_0CCFBB: REP #$30

#_0CCFBD: LDX.w #$0002

#_0CCFC0: LDA.w #$0188

.next_stripe
#_0CCFC3: LDY.w #$0007
#_0CCFC6: STY.b $00

#_0CCFC8: LDY.w .offset,X

.next_byte
#_0CCFCB: STA.w $1002,Y

#_0CCFCE: INY
#_0CCFCF: INY

#_0CCFD0: DEC.b $00
#_0CCFD2: BNE .next_byte

#_0CCFD4: DEX
#_0CCFD5: DEX
#_0CCFD6: BPL .next_stripe

#_0CCFD8: SEP #$30

#_0CCFDA: RTS

;===================================================================================================

CopyFile_FairyHeight:
#_0CCFDB: db $47 ; File 1
#_0CCFDC: db $67 ; File 2
#_0CCFDD: db $87 ; File 3
#_0CCFDE: db $C7 ; Exit

;===================================================================================================

CopyFile_CopyToMenuStripe:
#_0CCFDF: dw $2561, $1040 ; VRAM $C24A | 18 bytes | Fixed horizontal
#_0CCFE3: dw $0188

#_0CCFE5: dw $4561, $1040 ; VRAM $C28A | 18 bytes | Fixed horizontal
#_0CCFE9: dw $0188

#_0CCFEB: dw $A561, $1040 ; VRAM $C34A | 18 bytes | Fixed horizontal
#_0CCFEF: dw $0188

#_0CCFF1: dw $C561, $1040 ; VRAM $C38A | 18 bytes | Fixed horizontal
#_0CCFF5: dw $0188

#_0CCFF7: dw $F110, $0300 ; VRAM $21E2 | 4 bytes | Horizontal
#_0CCFFB: dw $4882, $0881

#_0CCFFF: dw $FC10, $0300 ; VRAM $21F8 | 4 bytes | Horizontal
#_0CD003: dw $0881, $0882

#_0CD007: dw $1111, $0CC0 ; VRAM $2222 | 14 bytes | Fixed vertical
#_0CD00B: dw $4883

#_0CD00D: dw $1D11, $0CC0 ; VRAM $223A | 14 bytes | Fixed vertical
#_0CD011: dw $0883

#_0CD013: dw $F111, $0100 ; VRAM $23E2 | 2 bytes | Horizontal
#_0CD017: dw $C882

#_0CD019: dw $F211, $1440 ; VRAM $23E4 | 22 bytes | Fixed horizontal
#_0CD01D: dw $8881

#_0CD01F: dw $FD11, $0100 ; VRAM $23FA | 2 bytes | Horizontal
#_0CD023: dw $8882

#_0CD025: db $FF ; end of stripes data

;===================================================================================================

CopyFile_TargetStripeOffsetAdjuster:
#_0CD026: db $00 ; File 1
#_0CD027: db $0C ; File 2

;===================================================================================================

CopyFile_NameStripeBufferOffset:
#_0CD028: dw $002C ; File 1
#_0CD02A: dw $0058 ; File 2
#_0CD02C: dw $0084 ; File 3

;===================================================================================================

CopyFile_SelectionAndBlinker:
#_0CD02E: REP #$10

#_0CD030: LDX.w #$00C0
#_0CD033: STX.w $1000

.next_header_stripe
#_0CD036: LDA.w CopyFile_HeaderStripe,X
#_0CD039: STA.w $1002,X

#_0CD03C: DEX
#_0CD03D: BPL .next_header_stripe

;---------------------------------------------------------------------------------------------------

#_0CD03F: REP #$20

#_0CD041: LDX.w #$0000

.next_file_name
#_0CD044: STX.b $00

#_0CD046: LDA.b $BF,X
#_0CD048: AND.w #$0001
#_0CD04B: BEQ .skip_this_file

#_0CD04D: LDA.l SaveFileCopyOffsets,X
#_0CD051: TXY
#_0CD052: TAX

#_0CD053: LDA.w CopyFile_NameStripeBufferOffset,Y
#_0CD056: TAY

#_0CD057: LDA.w #$0004
#_0CD05A: STA.b $02

.next_letter
#_0CD05C: LDA.l $7003D9,X
#_0CD060: CLC
#_0CD061: ADC.w #$1C00
#_0CD064: STA.w $1002,Y

#_0CD067: CLC
#_0CD068: ADC.w #$0010
#_0CD06B: STA.w $1018,Y

#_0CD06E: INX
#_0CD06F: INX

#_0CD070: INY ; +4
#_0CD071: INY
#_0CD072: INY
#_0CD073: INY

#_0CD074: DEC.b $02
#_0CD076: BNE .next_letter

.skip_this_file
#_0CD078: LDX.b $00
#_0CD07A: INX
#_0CD07B: INX
#_0CD07C: CPX.w #$0006
#_0CD07F: BCC .next_file_name

;---------------------------------------------------------------------------------------------------

#_0CD081: SEP #$30

#_0CD083: LDX.b $C8

#_0CD085: LDA.b #$14
#_0CD087: STA.b $00

#_0CD089: LDA.w CopyFile_FairyHeight,X
#_0CD08C: STA.b $01

#_0CD08E: JSR FileSelect_DrawFairy

; check for AX
#_0CD091: LDA.b $F6
#_0CD093: AND.b #$C0

; check for BYSsud
#_0CD095: ORA.b $F4
#_0CD097: AND.b #$FC
#_0CD099: BNE .made_input

#_0CD09B: BRL .exit

.made_input
#_0CD09E: AND.b #$2C
#_0CD0A0: BEQ .made_selection

#_0CD0A2: AND.b #$08
#_0CD0A4: BEQ .didnt_press_up

#_0CD0A6: LDX.b $C8
#_0CD0A8: DEX
#_0CD0A9: BMI .select_exit

;---------------------------------------------------------------------------------------------------

.prev_file_check
#_0CD0AB: TXA
#_0CD0AC: ASL A
#_0CD0AD: TAY

#_0CD0AE: LDA.w $00BF,Y
#_0CD0B1: BNE .set_new_selection

#_0CD0B3: DEX
#_0CD0B4: BPL .prev_file_check

.select_exit
#_0CD0B6: LDX.b #$03
#_0CD0B8: BRA .set_new_selection

;---------------------------------------------------------------------------------------------------

.didnt_press_up
#_0CD0BA: LDX.b $C8
#_0CD0BC: INX
#_0CD0BD: CPX.b #$03
#_0CD0BF: BCS .went_too_far

.next_file_check
#_0CD0C1: TXA
#_0CD0C2: ASL A
#_0CD0C3: TAY

#_0CD0C4: LDA.w $00BF,Y
#_0CD0C7: BNE .set_new_selection

#_0CD0C9: INX
#_0CD0CA: CPX.b #$03
#_0CD0CC: BNE .next_file_check

#_0CD0CE: BRA .set_new_selection

.went_too_far
#_0CD0D0: CPX.b #$04
#_0CD0D2: BNE .set_new_selection

#_0CD0D4: LDX.b #$00
#_0CD0D6: BRA .next_file_check

.set_new_selection
#_0CD0D8: LDA.b #$20 ; SFX3.20
#_0CD0DA: STA.w $012F

#_0CD0DD: STX.b $C8
#_0CD0DF: BRA .exit

;---------------------------------------------------------------------------------------------------

.made_selection
#_0CD0E1: LDA.b #$2C ; SFX2.2C
#_0CD0E3: STA.w $012E

#_0CD0E6: LDA.b $C8
#_0CD0E8: CMP.b #$03
#_0CD0EA: BEQ ReturnToFileSelect

;---------------------------------------------------------------------------------------------------

#_0CD0EC: ASL A
#_0CD0ED: STA.b $CC
#_0CD0EF: STZ.b $CD

#_0CD0F1: LDX.b #$47

.next_target_stripe
#_0CD0F3: LDA.w CopyFile_CopyToMenuStripe-1,X
#_0CD0F6: STA.w $1025,X

#_0CD0F9: DEX
#_0CD0FA: BNE .next_target_stripe

;---------------------------------------------------------------------------------------------------

#_0CD0FC: LDX.b $C8
#_0CD0FE: CPX.b #$02
#_0CD100: BEQ .selected_file_3

#_0CD102: LDA.w CopyFile_TargetStripeOffsetAdjuster,X
#_0CD105: TAX

#_0CD106: LDA.b #$62
#_0CD108: STA.w $1026,X
#_0CD10B: STA.w $102C,X

#_0CD10E: LDA.b #$25
#_0CD110: STA.w $1027,X

#_0CD113: CLC
#_0CD114: ADC.b #$20
#_0CD116: STA.w $102D,X

.selected_file_3
#_0CD119: INC.b $11

#_0CD11B: BRA .reset_cursor

;===================================================================================================

#ReturnToFileSelect:
#_0CD11D: LDA.b #$01
#_0CD11F: STA.b $10

#_0CD121: LDA.b #$01
#_0CD123: STA.b $11

#_0CD125: STZ.b $B0

.reset_cursor
#_0CD127: STZ.b $C8

.exit
#_0CD129: RTS

;===================================================================================================

CopyFile_ConfirmationStripes:
#_0CD12A: dw $3461, $1040 ; VRAM $C268 | 18 bytes | Fixed horizontal
#_0CD12E: dw $0188

#_0CD130: dw $5461, $1040 ; VRAM $C2A8 | 18 bytes | Fixed horizontal
#_0CD134: dw $0188

#_0CD136: dw $C562, $1100 ; VRAM $C58A | 18 bytes | Horizontal
#_0CD13A: dw $1CAC, $0188, $1D23, $0188, $1D89, $0188, $1D68, $0188
#_0CD14A: dw $1D64

#_0CD14C: dw $E562, $1100 ; VRAM $C5CA | 18 bytes | Horizontal
#_0CD150: dw $1CBC, $0188, $1D33, $0188, $1D99, $0188, $1D78, $0188
#_0CD160: dw $1D74

#_0CD162: db $FF ; end of stripes data

;===================================================================================================

CopyFile_TargetFairyX:
#_0CD163: db $8C ; 1
#_0CD164: db $8C ; 2
#_0CD165: db $14 ; Exit

CopyFile_TargetFairyY:
#_0CD166: db $47 ; 1
#_0CD167: db $67 ; 2
#_0CD168: db $C7 ; Exit

CopyFile_BufferOffset:
#_0CD169: dw $0028
#_0CD16B: dw $0054

CopyFile_TargetNumerals:
#_0CD16D: dw $1D41 ; 1
#_0CD16F: dw $1D42 ; 2
#_0CD171: dw $1D43 ; 3

;---------------------------------------------------------------------------------------------------

CopyFile_TargetSelectionAndBlink:
#_0CD173: LDA.b #$04
#_0CD175: LDX.b #$01

.next_index_setup
#_0CD177: CMP.b $CC
#_0CD179: BEQ .dont_replace_index

#_0CD17B: STA.b $CA,X

#_0CD17D: DEX

.dont_replace_index
#_0CD17E: DEC A
#_0CD17F: DEC A
#_0CD180: BPL .next_index_setup

;---------------------------------------------------------------------------------------------------

#_0CD182: REP #$10

#_0CD184: LDX.w #$007C
#_0CD187: STX.b $0E

.next_header_stripe
#_0CD189: LDA.w CopyFile_TargetHeaderStripes,X
#_0CD18C: STA.w $1002,X

#_0CD18F: DEX
#_0CD190: BPL .next_header_stripe

;---------------------------------------------------------------------------------------------------

#_0CD192: REP #$20

#_0CD194: LDX.w #$0000
#_0CD197: STX.b $04

.next_filename_stripe
#_0CD199: STX.b $00

#_0CD19B: CPX.b $CC
#_0CD19D: BEQ .skip_this_file

#_0CD19F: LDY.b $04

#_0CD1A1: LDA.w CopyFile_BufferOffset,Y
#_0CD1A4: TAY

#_0CD1A5: INC.b $04
#_0CD1A7: INC.b $04

#_0CD1A9: LDA.w CopyFile_TargetNumerals,X
#_0CD1AC: STA.w $1002,Y

#_0CD1AF: CLC
#_0CD1B0: ADC.w #$0010
#_0CD1B3: STA.w $1018,Y

#_0CD1B6: LDA.b $BF,X
#_0CD1B8: BEQ .skip_this_file

#_0CD1BA: LDA.w #$0004
#_0CD1BD: STA.b $02

#_0CD1BF: LDA.l SaveFileCopyOffsets,X
#_0CD1C3: TAX

.next_letter
#_0CD1C4: LDA.l $7003D9,X
#_0CD1C8: CLC
#_0CD1C9: ADC.w #$1C00
#_0CD1CC: STA.w $1006,Y

#_0CD1CF: CLC
#_0CD1D0: ADC.w #$0010
#_0CD1D3: STA.w $101C,Y

#_0CD1D6: INX
#_0CD1D7: INX

#_0CD1D8: INY ; +4
#_0CD1D9: INY
#_0CD1DA: INY
#_0CD1DB: INY

#_0CD1DC: DEC.b $02
#_0CD1DE: BNE .next_letter

.skip_this_file
#_0CD1E0: LDX.b $00
#_0CD1E2: INX
#_0CD1E3: INX
#_0CD1E4: CPX.w #$0006
#_0CD1E7: BCC .next_filename_stripe

;---------------------------------------------------------------------------------------------------

#_0CD1E9: LDX.b $0E
#_0CD1EB: STX.w $1000

#_0CD1EE: SEP #$30

#_0CD1F0: LDX.b $C8

#_0CD1F2: LDA.w CopyFile_TargetFairyX,X
#_0CD1F5: STA.b $00

#_0CD1F7: LDA.w CopyFile_TargetFairyY,X
#_0CD1FA: STA.b $01

#_0CD1FC: JSR FileSelect_DrawFairy

; check for AX
#_0CD1FF: LDA.b $F6
#_0CD201: AND.b #$C0

; check for BYSsud
#_0CD203: ORA.b $F4
#_0CD205: AND.b #$FC
#_0CD207: BEQ .exit

#_0CD209: AND.b #$2C
#_0CD20B: BEQ .made_selection

#_0CD20D: AND.b #$08
#_0CD20F: BEQ .didnt_press_up

#_0CD211: LDX.b $C8
#_0CD213: DEX
#_0CD214: BPL .select_exit

#_0CD216: LDX.b #$02
#_0CD218: BRA .select_exit

.didnt_press_up
#_0CD21A: LDX.b $C8
#_0CD21C: INX
#_0CD21D: CPX.b #$03
#_0CD21F: BCC .select_exit

#_0CD221: LDX.b #$00

;---------------------------------------------------------------------------------------------------

.select_exit
#_0CD223: LDA.b #$20 ; SFX3.20
#_0CD225: STA.w $012F

#_0CD228: STX.b $C8
#_0CD22A: BRA .exit

;---------------------------------------------------------------------------------------------------

.made_selection
#_0CD22C: LDA.b #$2C ; SFX2.2C
#_0CD22E: STA.w $012E

#_0CD231: LDX.b $C8
#_0CD233: CPX.b #$02
#_0CD235: BEQ .selecting_exit

#_0CD237: LDA.b $CA,X
#_0CD239: STA.b $CA
#_0CD23B: STZ.b $CB

#_0CD23D: LDX.b #$38

.next_confirm_stripe
#_0CD23F: LDA.w CopyFile_ConfirmationStripes,X
#_0CD242: STA.w $1026,X

#_0CD245: DEX
#_0CD246: BPL .next_confirm_stripe

; Which file name is erased on tilemap
#_0CD248: LDA.b $C8
#_0CD24A: BNE .dont_reposition_deleted_name

#_0CD24C: LDA.b #$B4
#_0CD24E: STA.w $1027

#_0CD251: CLC
#_0CD252: ADC.b #$20 ; effectively $D4
#_0CD254: STA.w $102D

.dont_reposition_deleted_name
#_0CD257: INC.b $11
#_0CD259: BRA .reset_selection

;---------------------------------------------------------------------------------------------------

.selecting_exit
#_0CD25B: JSR ReturnToFileSelect

.reset_selection
#_0CD25E: STZ.b $C8

.exit
#_0CD260: RTS

;===================================================================================================

pool CopyFile_HandleConfirmation

.fairy_y
#_0CD261: db $AE ; Yes
#_0CD262: db $C7 ; No

pool off

;---------------------------------------------------------------------------------------------------

CopyFile_HandleConfirmation:
#_0CD263: LDX.b $C8

#_0CD265: LDA.b #$14
#_0CD267: STA.b $00

#_0CD269: LDA.w .fairy_y,X
#_0CD26C: STA.b $01

#_0CD26E: JSR FileSelect_DrawFairy

; check for AX
#_0CD271: LDA.b $F6
#_0CD273: AND.b #$C0

; check for BYSsud
#_0CD275: ORA.b $F4
#_0CD277: AND.b #$FC
#_0CD279: BEQ .exit

#_0CD27B: AND.b #$2C
#_0CD27D: BEQ .made_selection

#_0CD27F: AND.b #$24
#_0CD281: BEQ .select_or_down

#_0CD283: LDA.b #$20 ; SFX3.20
#_0CD285: STA.w $012F

#_0CD288: INC.b $C8

#_0CD28A: LDA.b $C8
#_0CD28C: CMP.b #$02
#_0CD28E: BCC .exit

#_0CD290: STZ.b $C8
#_0CD292: BRA .exit

;---------------------------------------------------------------------------------------------------

.select_or_down
#_0CD294: LDA.b #$20 ; SFX3.20
#_0CD296: STA.w $012F

#_0CD299: DEC.b $C8
#_0CD29B: BPL .exit

#_0CD29D: LDA.b #$01
#_0CD29F: STA.b $C8
#_0CD2A1: BRA .exit

;---------------------------------------------------------------------------------------------------

.made_selection
#_0CD2A3: LDA.b #$2C ; SFX2.2C
#_0CD2A5: STA.w $012E

#_0CD2A8: LDA.b $C8
#_0CD2AA: BNE .decided_against_it

#_0CD2AC: REP #$30

#_0CD2AE: LDX.b $CA

#_0CD2B0: LDA.l SaveFileCopyOffsets,X
#_0CD2B4: TAY

#_0CD2B5: LDX.b $CC

#_0CD2B7: LDA.l SaveFileCopyOffsets,X
#_0CD2BB: TAX

#_0CD2BC: JSR CopyFile_CopyData

#_0CD2BF: LDX.b $CA

#_0CD2C1: LDA.w #$0001
#_0CD2C4: STA.b $BF,X

#_0CD2C6: SEP #$30

;---------------------------------------------------------------------------------------------------

.decided_against_it
#_0CD2C8: JSR ReturnToFileSelect

#_0CD2CB: STZ.b $C8

.exit
#_0CD2CD: RTS

;===================================================================================================

CopyFile_CopyData:
#_0CD2CE: SEP #$20

#_0CD2D0: PHB

#_0CD2D1: LDA.b #$70
#_0CD2D3: PHA
#_0CD2D4: PLB

#_0CD2D5: REP #$20

#_0CD2D7: LDA.w #$0080
#_0CD2DA: STA.b $00

.next
#_0CD2DC: LDA.w $700000,X
#_0CD2DF: STA.w $700000,Y

#_0CD2E2: LDA.w $700100,X
#_0CD2E5: STA.w $700100,Y

#_0CD2E8: LDA.w $700200,X
#_0CD2EB: STA.w $700200,Y

#_0CD2EE: LDA.w $700300,X
#_0CD2F1: STA.w $700300,Y

#_0CD2F4: LDA.w $700400,X
#_0CD2F7: STA.w $700400,Y

#_0CD2FA: INY
#_0CD2FB: INY

#_0CD2FC: INX
#_0CD2FD: INX

#_0CD2FE: DEC.b $00
#_0CD300: BNE .next

;---------------------------------------------------------------------------------------------------

#_0CD302: SEP #$20 ; !USELESS

#_0CD304: PLB

#_0CD305: REP #$20

#_0CD307: RTS

;===================================================================================================

KILLFile_FairyY:
#_0CD308: db $4A ; File 1
#_0CD309: db $6A ; File 2
#_0CD30A: db $8A ; File 3
#_0CD30B: db $C7 ; Exit

;---------------------------------------------------------------------------------------------------

KILL_OK_stripes:
; Deletes file names
#_0CD30C: dw $2861, $2C40 ; VRAM $C250 | 46 bytes | Fixed horizontal
#_0CD310: dw $0188

#_0CD312: dw $4861, $2C40 ; VRAM $C290 | 46 bytes | Fixed horizontal
#_0CD316: dw $0188

#_0CD318: dw $A861, $2C40 ; VRAM $C350 | 46 bytes | Fixed horizontal
#_0CD31C: dw $0188

#_0CD31E: dw $C861, $2C40 ; VRAM $C390 | 46 bytes | Fixed horizontal
#_0CD322: dw $0188

; KILL OK
#_0CD324: dw $A562, $1700 ; VRAM $C54A | 24 bytes | Horizontal
#_0CD328: dw $1D64, $0188, $1D62, $0188, $1D65, $0188, $1D65, $0188
#_0CD338: dw $0188, $1D68, $0188, $1D64

#_0CD340: dw $C562, $1700 ; VRAM $C58A | 24 bytes | Horizontal
#_0CD344: dw $1D74, $0188, $1D72, $0188, $1D75, $0188, $1D75, $0188
#_0CD354: dw $0188, $1D78, $0188, $1D74

#_0CD35C: db $FF ; end of stripes data

;===================================================================================================

KILL_OK_FileNameStripesAdjustment:
#_0CD35D: db $00 ; File 1
#_0CD35E: db $0C ; File 2

;===================================================================================================

Module03_KILLFile:
#_0CD35F: LDA.b $11
#_0CD361: JSL JumpTableLong
#_0CD365: dl FileSelect_EraseTriforce
#_0CD368: dl KILLFile_SetUp
#_0CD36B: dl KILLFile_HandleSelection
#_0CD36E: dl KILLFile_HandleConfirmation

;===================================================================================================

KILLFile_SetUp:
#_0CD371: LDA.b #$08

#_0CD373: JMP.w KILLFile_FindFileIndices

;===================================================================================================

KILLFile_HandleSelection:
#_0CD376: PHB
#_0CD377: PHK
#_0CD378: PLB

#_0CD379: LDA.b $C8
#_0CD37B: CMP.b #$03
#_0CD37D: BCS .selecting_exit

#_0CD37F: STA.w $0B9D

.selecting_exit
#_0CD382: JSR KILLFile_ChooseTarget

#_0CD385: JMP.w FileSelect_TriggerTheStripes

;===================================================================================================

KILLFile_HandleConfirmation:
#_0CD388: PHB
#_0CD389: PHK
#_0CD38A: PLB

#_0CD38B: JSR KILLFile_VerifyDeletion

#_0CD38E: JMP.w FileSelect_TriggerTheStripes

;===================================================================================================

KILLFile_ChooseTarget:
#_0CD391: REP #$10

#_0CD393: LDX.w #$012D

.next_blankname_stripe
#_0CD396: LDA.w KILLFile_BlankNameStripes-1,X
#_0CD399: STA.w $1001,X

#_0CD39C: DEX
#_0CD39D: BNE .next_blankname_stripe

;---------------------------------------------------------------------------------------------------

#_0CD39F: REP #$20

#_0CD3A1: LDX.w #$0000

.next_filename_stripe
#_0CD3A4: STX.b $00

#_0CD3A6: LDA.b $BF,X
#_0CD3A8: AND.w #$0001
#_0CD3AB: BEQ .skip_this_file

#_0CD3AD: LDA.l SaveFileCopyOffsets,X
#_0CD3B1: TAX
#_0CD3B2: JSR FileSelect_CopyNameToStripes

.skip_this_file
#_0CD3B5: LDX.b $00
#_0CD3B7: INX
#_0CD3B8: INX
#_0CD3B9: CPX.w #$0006
#_0CD3BC: BCC .next_filename_stripe

;---------------------------------------------------------------------------------------------------

#_0CD3BE: SEP #$30

#_0CD3C0: LDX.b $C8

#_0CD3C2: LDA.b #$14
#_0CD3C4: STA.b $00

#_0CD3C6: LDA.w KILLFile_FairyY,X
#_0CD3C9: STA.b $01

#_0CD3CB: JSR FileSelect_DrawFairy

;---------------------------------------------------------------------------------------------------

#_0CD3CE: LDY.b #$02

; Check for select
#_0CD3D0: LDA.b $F4
#_0CD3D2: AND.b #$20
#_0CD3D4: BNE .pressed_down_or_select

; Check for up or down
#_0CD3D6: LDA.b $F4
#_0CD3D8: AND.b #$0C
#_0CD3DA: BEQ .check_for_pick

; check for down
#_0CD3DC: AND.b #$04
#_0CD3DE: BNE .pressed_down_or_select

#_0CD3E0: LDA.b #$20 ; SFX3.20
#_0CD3E2: STA.w $012F

#_0CD3E5: LDY.b #$FE

#_0CD3E7: LDX.b $C8
#_0CD3E9: DEX
#_0CD3EA: BMI .select_exit

.check_prev_file
#_0CD3EC: TXA
#_0CD3ED: ASL A
#_0CD3EE: TAY

#_0CD3EF: LDA.w $00BF,Y
#_0CD3F2: BNE .check_for_pick

#_0CD3F4: DEX
#_0CD3F5: BPL .check_prev_file

;---------------------------------------------------------------------------------------------------

.select_exit
#_0CD3F7: LDX.b #$03
#_0CD3F9: BRA .check_for_pick

;---------------------------------------------------------------------------------------------------

.pressed_down_or_select
#_0CD3FB: LDA.b #$20 ; SFX3.20
#_0CD3FD: STA.w $012F

#_0CD400: LDX.b $C8
#_0CD402: INX
#_0CD403: CPX.b #$03
#_0CD405: BCS .not_on_file

.check_next_file
#_0CD407: TXA
#_0CD408: ASL A
#_0CD409: TAY

#_0CD40A: LDA.w $00BF,Y
#_0CD40D: BNE .check_for_pick

#_0CD40F: INX
#_0CD410: CPX.b #$03
#_0CD412: BNE .check_next_file

#_0CD414: BRA .check_for_pick

.not_on_file
#_0CD416: CPX.b #$04
#_0CD418: BNE .check_for_pick

#_0CD41A: LDX.b #$00
#_0CD41C: BRA .check_next_file

;---------------------------------------------------------------------------------------------------

.check_for_pick
#_0CD41E: STX.b $C8

; check for AX
#_0CD420: LDA.b $F6
#_0CD422: AND.b #$C0

; Check for BYS
#_0CD424: ORA.b $F4
#_0CD426: AND.b #$D0
#_0CD428: BEQ .exit

#_0CD42A: LDA.b #$2C ; SFX2.2C
#_0CD42C: STA.w $012E

#_0CD42F: LDA.b $C8
#_0CD431: CMP.b #$03
#_0CD433: BEQ .picked_exit

#_0CD435: LDX.b #$50

.next_ok
#_0CD437: LDA.w KILL_OK_stripes,X
#_0CD43A: STA.w $1002,X

#_0CD43D: DEX
#_0CD43E: BPL .next_ok

;---------------------------------------------------------------------------------------------------

#_0CD440: INC.b $11

#_0CD442: LDX.b $C8
#_0CD444: CPX.b #$02
#_0CD446: BEQ .no_filename_stripe_adjustment

#_0CD448: LDA.w KILL_OK_FileNameStripesAdjustment,X
#_0CD44B: TAX

#_0CD44C: LDA.b #$62
#_0CD44E: STA.w $1002,X
#_0CD451: STA.w $1008,X

#_0CD454: LDA.b #$28
#_0CD456: STA.w $1003,X

#_0CD459: CLC
#_0CD45A: ADC.b #$20
#_0CD45C: STA.w $1009,X

.no_filename_stripe_adjustment
#_0CD45F: LDA.b $C8
#_0CD461: STA.b $B0

#_0CD463: STZ.b $C8
#_0CD465: BRA .exit

;---------------------------------------------------------------------------------------------------

.picked_exit
#_0CD467: SEP #$30

#_0CD469: JSR ReturnToFileSelect

.exit
#_0CD46C: RTS

;===================================================================================================

pool KILLFile_VerifyDeletion

.fairy_pos_y
#_0CD46D: db $A7
#_0CD46E: db $C7

pool off

;---------------------------------------------------------------------------------------------------

KILLFile_VerifyDeletion:
#_0CD46F: LDA.b $B0
#_0CD471: ASL A
#_0CD472: STA.b $00

#_0CD474: JSR FileSelect_DrawLink
#_0CD477: JSR FileSelect_DrawDeaths

#_0CD47A: SEP #$30

#_0CD47C: LDX.b $C8

#_0CD47E: LDA.b #$14
#_0CD480: STA.b $00

#_0CD482: LDA.w .fairy_pos_y,X
#_0CD485: STA.b $01

#_0CD487: JSR FileSelect_DrawFairy

;---------------------------------------------------------------------------------------------------

#_0CD48A: LDY.b #$02

; check for select, up, down
#_0CD48C: LDA.b $F4
#_0CD48E: AND.b #$2C
#_0CD490: BEQ .not_selection_change_input

; check for select or down
#_0CD492: AND.b #$24
#_0CD494: BNE .pressed_select_or_down

#_0CD496: DEX
#_0CD497: BRA .move_kiss_of_death

.pressed_select_or_down
#_0CD499: INX

.move_kiss_of_death
#_0CD49A: TXA
#_0CD49B: AND.b #$01
#_0CD49D: STA.b $C8

#_0CD49F: LDA.b #$20 ; SFX3.20
#_0CD4A1: STA.w $012F

;---------------------------------------------------------------------------------------------------

.not_selection_change_input
; check for AX
#_0CD4A4: LDA.b $F6
#_0CD4A6: AND.b #$C0

; check for BYSsud
#_0CD4A8: ORA.b $F4
#_0CD4AA: AND.b #$D0
#_0CD4AC: BEQ .exit

#_0CD4AE: LDA.b #$2C ; SFX2.2C
#_0CD4B0: STA.w $012E

#_0CD4B3: LDA.b $C8
#_0CD4B5: BNE .chickened_out

#_0CD4B7: LDA.b #$22 ; SFX3.22
#_0CD4B9: STA.w $012F
#_0CD4BC: STZ.w $012E

#_0CD4BF: REP #$30

#_0CD4C1: LDA.b $B0
#_0CD4C3: AND.w #$00FF
#_0CD4C6: ASL A
#_0CD4C7: TAX

#_0CD4C8: STZ.b $BF,X

#_0CD4CA: LDA.l SaveFileCopyOffsets,X
#_0CD4CE: TAX

;---------------------------------------------------------------------------------------------------

#_0CD4CF: LDY.w #$0000
#_0CD4D2: TYA

.clear_next
#_0CD4D3: STA.l $700000,X
#_0CD4D7: STA.l $700100,X
#_0CD4DB: STA.l $700200,X
#_0CD4DF: STA.l $700300,X
#_0CD4E3: STA.l $700400,X
#_0CD4E7: STA.l $700F00,X
#_0CD4EB: STA.l $701000,X
#_0CD4EF: STA.l $701100,X
#_0CD4F3: STA.l $701200,X
#_0CD4F7: STA.l $701300,X

#_0CD4FB: INX
#_0CD4FC: INX

#_0CD4FD: INY
#_0CD4FE: INY
#_0CD4FF: CPY.w #$0100
#_0CD502: BNE .clear_next

;---------------------------------------------------------------------------------------------------

#_0CD504: SEP #$30

.chickened_out
#_0CD506: JSR ReturnToFileSelect
#_0CD509: STZ.b $B0

.exit
#_0CD50B: RTS

;===================================================================================================

pool FileSelect_CopyNameToStripes

.name_offset
#_0CD50C: dw $000A
#_0CD50E: dw $006E
#_0CD510: dw $00D2

.hearts_offset
#_0CD512: dw $001E
#_0CD514: dw $0082
#_0CD516: dw $00E6

pool off

;---------------------------------------------------------------------------------------------------

FileSelect_CopyNameToStripes:
#_0CD518: PHX

#_0CD519: JSR FileSelect_DrawLink
#_0CD51C: JSR FileSelect_DrawDeaths

#_0CD51F: PLX
#_0CD520: PHX

#_0CD521: LDY.b $00

#_0CD523: LDA.w .name_offset,Y
#_0CD526: TAY

#_0CD527: LDA.w #$0004
#_0CD52A: STA.b $02

;---------------------------------------------------------------------------------------------------

.next_character
#_0CD52C: LDA.l $7003D9,X
#_0CD530: CLC
#_0CD531: ADC.w #$1C00
#_0CD534: STA.w $1002,Y

#_0CD537: CLC
#_0CD538: ADC.w #$0010
#_0CD53B: STA.w $1034,Y

#_0CD53E: INX
#_0CD53F: INX

#_0CD540: INY ; +4
#_0CD541: INY
#_0CD542: INY
#_0CD543: INY

#_0CD544: DEC.b $02
#_0CD546: BNE .next_character

;---------------------------------------------------------------------------------------------------

#_0CD548: PLX

#_0CD549: LDY.w #$0001

#_0CD54C: LDA.l $70036C,X
#_0CD550: AND.w #$00FF
#_0CD553: LSR A
#_0CD554: LSR A
#_0CD555: LSR A
#_0CD556: STA.b $02

#_0CD558: LDX.b $00

#_0CD55A: LDY.w .hearts_offset,X
#_0CD55D: STY.b $04

#_0CD55F: LDA.w #$05C0
#_0CD562: LDX.w #$000A

;---------------------------------------------------------------------------------------------------

.next_heart
#_0CD565: STA.w $1002,Y

#_0CD568: INY
#_0CD569: INY

#_0CD56A: DEX
#_0CD56B: BNE .same_row

#_0CD56D: PHA

#_0CD56E: LDA.b $04
#_0CD570: CLC
#_0CD571: ADC.w #$0032
#_0CD574: TAY

#_0CD575: PLA

.same_row
#_0CD576: DEC.b $02
#_0CD578: BNE .next_heart

#_0CD57A: RTS

;===================================================================================================

pool FileSelect_DrawLink

.unused
#_0CD57B: db $01, $06, $0B

.offset_y
#_0CD57E: db $45 ; file 1
#_0CD57F: db $65 ; file 2
#_0CD580: db $85 ; file 3

.oam_offset
#_0CD581: db $28 ; file 1
#_0CD582: db $3C ; file 2
#_0CD583: db $50 ; file 3

.sword_gfx
#_0CD584: db $85 ; fighter sword
#_0CD585: db $A1 ; master sword
#_0CD586: db $A1 ; tempered sword
#_0CD587: db $A1 ; gold sword

.shield_gfx
#_0CD588: db $C4 ; fighter shield
#_0CD589: db $CA ; fire shield
#_0CD58A: db $E0 ; mirror shield

.link_props
#_0CD58B: db $72 ; file 1
#_0CD58C: db $76 ; file 2
#_0CD58D: db $7A ; file 3

.sword_props
#_0CD58E: db $32 ; file 1
#_0CD58F: db $36 ; file 2
#_0CD590: db $3A ; file 3

.shield_props
#_0CD591: db $30 ; file 1
#_0CD592: db $34 ; file 2
#_0CD593: db $38 ; file 3

pool off

;---------------------------------------------------------------------------------------------------

FileSelect_DrawLink:
#_0CD594: REP #$30

#_0CD596: LDA.w #$0116
#_0CD599: ASL A
#_0CD59A: STA.w $0100

#_0CD59D: LDA.b $00
#_0CD59F: AND.w #$00FF
#_0CD5A2: TAX

#_0CD5A3: LDA.l SaveFileCopyOffsets,X
#_0CD5A7: STA.b $0E

;---------------------------------------------------------------------------------------------------

#_0CD5A9: SEP #$30

#_0CD5AB: LDA.b $00
#_0CD5AD: LSR A
#_0CD5AE: TAY

#_0CD5AF: LDA.w .oam_offset,Y
#_0CD5B2: TAX

#_0CD5B3: LDA.b #$34
#_0CD5B5: STA.w $0800,X
#_0CD5B8: STA.w $0804,X

#_0CD5BB: LDA.w .offset_y,Y
#_0CD5BE: CLC
#_0CD5BF: ADC.b #$FB
#_0CD5C1: STA.w $0801,X

#_0CD5C4: CLC
#_0CD5C5: ADC.b #$08
#_0CD5C7: STA.w $0805,X

#_0CD5CA: LDA.w .link_props,Y
#_0CD5CD: STA.w $0803,X
#_0CD5D0: STA.w $0807,X

;---------------------------------------------------------------------------------------------------

#_0CD5D3: PHY
#_0CD5D4: PHX

#_0CD5D5: REP #$10

#_0CD5D7: LDX.b $0E

#_0CD5D9: LDA.l $700359,X

#_0CD5DD: SEP #$10

#_0CD5DF: PLX

#_0CD5E0: TAY
#_0CD5E1: DEY
#_0CD5E2: BPL .have_sword

#_0CD5E4: LDA.b #$F0
#_0CD5E6: STA.w $0801,X
#_0CD5E9: STA.w $0805,X

#_0CD5EC: INY

.have_sword
#_0CD5ED: LDA.w .sword_gfx,Y
#_0CD5F0: STA.w $0802,X

#_0CD5F3: CLC
#_0CD5F4: ADC.b #$10
#_0CD5F6: STA.w $0806,X

;---------------------------------------------------------------------------------------------------

#_0CD5F9: PLY

#_0CD5FA: PHX
#_0CD5FB: TXA

#_0CD5FC: LSR A
#_0CD5FD: LSR A
#_0CD5FE: TAX

#_0CD5FF: LDA.b #$00
#_0CD601: STA.w $0A20,X
#_0CD604: STA.w $0A21,X

#_0CD607: PLA
#_0CD608: CLC
#_0CD609: ADC.b #$08
#_0CD60B: TAX

#_0CD60C: LDA.b #$23
#_0CD60E: STA.w $0800,X

#_0CD611: LDA.w .offset_y,Y
#_0CD614: CLC
#_0CD615: ADC.b #$0A
#_0CD617: STA.w $0801,X

#_0CD61A: LDA.w .sword_props,Y
#_0CD61D: STA.w $0803,X

;---------------------------------------------------------------------------------------------------

#_0CD620: PHY
#_0CD621: PHX

#_0CD622: REP #$10

#_0CD624: LDX.b $0E

#_0CD626: LDA.l $70035A,X

#_0CD62A: SEP #$10

#_0CD62C: PLX

#_0CD62D: TAY
#_0CD62E: DEY
#_0CD62F: BPL .have_shield

#_0CD631: LDA.b #$F0
#_0CD633: STA.w $0801,X

#_0CD636: INY

.have_shield
#_0CD637: LDA.w .shield_gfx,Y
#_0CD63A: STA.w $0802,X

;---------------------------------------------------------------------------------------------------

#_0CD63D: PLY

#_0CD63E: PHX
#_0CD63F: TXA

#_0CD640: LSR A
#_0CD641: LSR A
#_0CD642: TAX

#_0CD643: LDA.b #$02
#_0CD645: STA.w $0A20,X

#_0CD648: PLA
#_0CD649: CLC
#_0CD64A: ADC.b #$04
#_0CD64C: TAX

#_0CD64D: LDA.b #$28
#_0CD64F: STA.w $0800,X
#_0CD652: STA.w $0804,X

#_0CD655: LDA.b #$00
#_0CD657: STA.w $0802,X

#_0CD65A: LDA.b #$02
#_0CD65C: STA.w $0806,X

#_0CD65F: LDA.w .shield_props,Y
#_0CD662: STA.w $0803,X

#_0CD665: ORA.b #$40
#_0CD667: STA.w $0807,X

#_0CD66A: LDA.w .offset_y,Y
#_0CD66D: STA.w $0801,X

#_0CD670: CLC
#_0CD671: ADC.b #$08
#_0CD673: STA.w $0805,X

#_0CD676: TXA
#_0CD677: LSR A
#_0CD678: LSR A
#_0CD679: TAX

#_0CD67A: LDA.b #$02
#_0CD67C: STA.w $0A20,X
#_0CD67F: STA.w $0A21,X

#_0CD682: REP #$30

#_0CD684: RTS

;===================================================================================================

pool FileSelect_DrawFairy

.char
#_0CD685: db $A8
#_0CD686: db $AA

pool off

;---------------------------------------------------------------------------------------------------

FileSelect_DrawFairy:
#_0CD687: LDA.b $00
#_0CD689: STA.w $0800

#_0CD68C: LDA.b $01
#_0CD68E: STA.w $0801

#_0CD691: PHX

#_0CD692: LDX.b #$00
#_0CD694: LDA.b $1A

#_0CD696: AND.b #$08
#_0CD698: BEQ .frame_0

#_0CD69A: INX

.frame_0
#_0CD69B: LDA.w .char,X
#_0CD69E: STA.w $0802

#_0CD6A1: PLX

#_0CD6A2: LDA.b #$7E
#_0CD6A4: STA.w $0803

#_0CD6A7: LDA.b #$02
#_0CD6A9: STA.w $0A20

;---------------------------------------------------------------------------------------------------

#EXIT_0CD6AC:
#_0CD6AC: RTS

;===================================================================================================

pool FileSelect_DrawDeaths

.digit_char
#_0CD6AD: db $D0 ; 0
#_0CD6AE: db $AC ; 1
#_0CD6AF: db $AD ; 2
#_0CD6B0: db $BC ; 3
#_0CD6B1: db $BD ; 4
#_0CD6B2: db $AE ; 5
#_0CD6B3: db $AF ; 6
#_0CD6B4: db $BE ; 7
#_0CD6B5: db $BF ; 8
#_0CD6B6: db $C0 ; 9

.buffer_offset
#_0CD6B7: db $04 ; ..#
#_0CD6B8: db $10 ; .#.
#_0CD6B9: db $1C ; #..

.digit_position_x
#_0CD6BA: db $34 ; ..#
#_0CD6BB: db $2C ; .#.
#_0CD6BC: db $24 ; #..

.digit_position_y
#_0CD6BD: db $59 ; File 1
#_0CD6BE: db $79 ; File 2
#_0CD6BF: db $99 ; File 3

pool off

;---------------------------------------------------------------------------------------------------

FileSelect_DrawDeaths:
#_0CD6C0: REP #$30

#_0CD6C2: LDX.b $0E

#_0CD6C4: LDA.l $700401,X
#_0CD6C8: CMP.w #$FFFF
#_0CD6CB: BEQ EXIT_0CD6AC

#_0CD6CD: CMP.w #1000
#_0CD6D0: BCC .calculate_decimal_digits

#_0CD6D2: LDA.w #$0009
#_0CD6D5: STA.b $02
#_0CD6D7: STA.b $04
#_0CD6D9: STA.b $06

#_0CD6DB: BRA .continue

;---------------------------------------------------------------------------------------------------

.calculate_decimal_digits
#_0CD6DD: LDY.w #$0000

.remove_from_ones
#_0CD6E0: CMP.w #$000A
#_0CD6E3: BCC .sub_ten

#_0CD6E5: SEC
#_0CD6E6: SBC.w #$000A

#_0CD6E9: INY

#_0CD6EA: BRA .remove_from_ones

;---------------------------------------------------------------------------------------------------

.sub_ten
#_0CD6EC: STA.b $02

#_0CD6EE: TYA

#_0CD6EF: LDY.w #$0000

.remove_from_tens
#_0CD6F2: CMP.w #$000A
#_0CD6F5: BCC .sub_hundo

#_0CD6F7: SEC
#_0CD6F8: SBC.w #$000A

#_0CD6FB: INY

#_0CD6FC: BRA .remove_from_tens

;---------------------------------------------------------------------------------------------------

.sub_hundo
#_0CD6FE: STA.b $04
#_0CD700: STY.b $06

;---------------------------------------------------------------------------------------------------

.continue
#_0CD702: LDX.w #$0004

#_0CD705: LDA.b $06
#_0CD707: BNE .skip_digit

#_0CD709: DEX
#_0CD70A: DEX

#_0CD70B: LDA.b $04
#_0CD70D: BNE .skip_digit

#_0CD70F: DEX
#_0CD710: DEX

.skip_digit
#_0CD711: SEP #$30

#_0CD713: LDA.b $00
#_0CD715: LSR A
#_0CD716: TAY

#_0CD717: LDA.w .buffer_offset,Y
#_0CD71A: TAY

;---------------------------------------------------------------------------------------------------

.next_digit
#_0CD71B: PHX

#_0CD71C: LDA.b $02,X
#_0CD71E: TAX

#_0CD71F: LDA.w .digit_char,X
#_0CD722: STA.w $0802,Y

#_0CD725: LDA.b $00
#_0CD727: LSR A
#_0CD728: TAX

#_0CD729: LDA.w .digit_position_y,X
#_0CD72C: STA.w $0801,Y

#_0CD72F: PLA
#_0CD730: PHA

#_0CD731: LSR A
#_0CD732: TAX

#_0CD733: LDA.w .digit_position_x,X
#_0CD736: STA.w $0800,Y

#_0CD739: LDA.b #$3C
#_0CD73B: STA.w $0803,Y

#_0CD73E: PHY

#_0CD73F: TYA
#_0CD740: LSR A
#_0CD741: LSR A
#_0CD742: TAY

#_0CD743: LDA.b #$00
#_0CD745: STA.w $0A20,Y

#_0CD748: PLY
#_0CD749: INY ; +4
#_0CD74A: INY
#_0CD74B: INY
#_0CD74C: INY

#_0CD74D: PLX
#_0CD74E: DEX ; +2
#_0CD74F: DEX
#_0CD750: BPL .next_digit

#_0CD752: REP #$30

#_0CD754: RTS

;===================================================================================================

Module04_NameFile:
#_0CD755: LDA.b $11
#_0CD757: JSL JumpTableLong
#_0CD75B: dl NameFile_EraseSave
#_0CD75E: dl NameFile_MakeScreenVisible
#_0CD761: dl NameFile_DoTheNaming

;===================================================================================================

NameFile_EraseSave:
#_0CD764: JSL FileSelect_EraseTriforce

#_0CD768: LDA.b #$01
#_0CD76A: STA.w $0128

#_0CD76D: STZ.w $0B12
#_0CD770: STZ.w $0B10
#_0CD773: STZ.w $0B15

#_0CD776: STZ.w $00CA
#_0CD779: STZ.w $00CC

#_0CD77C: LDA.b #$3E
#_0CD77E: STA.w $0B11

#_0CD781: REP #$30

#_0CD783: LDA.w #$019C
#_0CD786: STA.w $0630

#_0CD789: STZ.b $E4

#_0CD78B: LDA.b $C8
#_0CD78D: ASL A
#_0CD78E: TAX

#_0CD78F: LDA.l SaveFileCopyOffsets,X
#_0CD793: STA.w $0200

#_0CD796: TAX

;---------------------------------------------------------------------------------------------------

#_0CD797: LDY.w #$0000
#_0CD79A: TYA

.next_clear
#_0CD79B: STA.l $700000,X
#_0CD79F: STA.l $700100,X
#_0CD7A3: STA.l $700200,X
#_0CD7A7: STA.l $700300,X
#_0CD7AB: STA.l $700400,X

#_0CD7AF: INX
#_0CD7B0: INX

#_0CD7B1: INY
#_0CD7B2: INY
#_0CD7B3: CPY.w #$0100
#_0CD7B6: BNE .next_clear

;---------------------------------------------------------------------------------------------------

#_0CD7B8: LDX.w $0200

#_0CD7BB: LDA.w #$018C
#_0CD7BE: STA.l $7003D9,X
#_0CD7C2: STA.l $7003DB,X
#_0CD7C6: STA.l $7003DD,X
#_0CD7CA: STA.l $7003DF,X

#_0CD7CE: SEP #$30

#_0CD7D0: RTL

;===================================================================================================

NameFile_MakeScreenVisible:
#_0CD7D1: LDA.b #$05
#_0CD7D3: STA.b $14

#_0CD7D5: INC.b $11

#_0CD7D7: LDA.b #$0F
#_0CD7D9: STA.b $13

#_0CD7DB: STZ.w $0710

#_0CD7DE: RTL

;===================================================================================================

NameFile_CharacterLayout:
#_0CD7DF: db $00, $01, $02, $03, $04, $CC, $CC   ; あ い う え お ⎵ ⎵
#_0CD7E6: db $15, $16, $17, $1D, $1E, $CC        ; が ぎ ぐ げ ご ⎵
#_0CD7EC: db $50, $51, $52, $53, $54, $CC, $CC   ; ア イ ウ エ オ ⎵ ⎵
#_0CD7F3: db $65, $66, $67, $6D, $6E, $CC        ; ガ ギ グ ゲ ゴ ⎵
#_0CD7F9: db $AA, $AB, $AC, $AD, $CC, $CC        ; A B C D ⎵ ⎵

#_0CD7FF: db $08, $09, $0A, $0B, $0C, $CC, $CC   ; か き く け こ ⎵ ⎵
#_0CD806: db $1F, $25, $26, $27, $2D, $CC        ; ざ じ ず ぜ ぞ ⎵
#_0CD80C: db $58, $59, $5A, $5B, $5C, $CC, $CC   ; カ キ ク ケ コ ⎵ ⎵
#_0CD813: db $6F, $75, $76, $77, $7D, $CC        ; ザ ジ ズ ゼ ゾ ⎵
#_0CD819: db $AE, $AF, $B0, $B1, $CC, $CC        ; E F G H ⎵ ⎵

#_0CD81F: db $10, $11, $12, $13, $14, $CC, $CC   ; さ し す せ そ ⎵ ⎵
#_0CD826: db $2E, $2F, $35, $36, $37, $CC        ; だ ぢ づ で ど ⎵
#_0CD82C: db $60, $61, $62, $63, $64, $CC, $CC   ; サ シ ス セ ソ ⎵ ⎵
#_0CD833: db $7E, $7F, $85, $86, $87, $CC        ; ダ ヂ ヅ デ ド ⎵
#_0CD839: db $B2, $B3, $B4, $B5, $CC, $CC        ; I J K L ⎵ ⎵

#_0CD83F: db $18, $19, $1A, $1B, $1C, $CC, $CC   ; た ち つ て と ⎵ ⎵
#_0CD846: db $3D, $3E, $3F, $40, $41, $CC        ; ば び ぶ べ ぼ ⎵
#_0CD84C: db $68, $69, $6A, $6B, $6C, $CC, $CC   ; タ チ ツ テ ト ⎵ ⎵
#_0CD853: db $8D, $8E, $8F, $90, $91, $CC        ; バ ビ ブ ベ ボ ⎵
#_0CD859: db $B6, $B7, $B8, $B9, $CC, $CC        ; M N O P ⎵ ⎵

#_0CD85F: db $20, $21, $22, $23, $24, $CC, $CC   ; な に ぬ ね の ⎵ ⎵
#_0CD866: db $42, $43, $44, $45, $46, $CC        ; ぱ ぴ ぷ ぺ ぽ ⎵
#_0CD86C: db $70, $71, $72, $73, $74, $CC, $CC   ; ナ ニ ヌ ネ ノ ⎵ ⎵
#_0CD873: db $92, $93, $94, $95, $96, $CC        ; パ ピ プ ペ ポ ⎵
#_0CD879: db $BA, $BB, $BC, $BD, $CC, $CC        ; Q R S T ⎵ ⎵

#_0CD87F: db $28, $29, $2A, $2B, $2C, $CC, $CC   ; は ひ ふ へ ほ ⎵ ⎵
#_0CD886: db $4B, $4C, $4D, $4E, $4F, $CC        ; ぁ ぃ ぅ ぇ ぉ ⎵
#_0CD88C: db $78, $79, $7A, $7B, $7C, $CC, $CC   ; ハ ヒ フ ヘ ホ ⎵ ⎵
#_0CD893: db $9B, $9C, $9D, $9E, $9F, $CC        ; ァ ィ ゥ ェ ォ ⎵
#_0CD899: db $BE, $BF, $C0, $C1, $CC, $CC        ; U V W X ⎵ ⎵

#_0CD89F: db $30, $31, $32, $33, $34, $CC, $CC   ; ま み む め も ⎵ ⎵
#_0CD8A6: db $47, $48, $49, $CC, $4A, $CC        ; ゃ ゅ ょ ⎵ っ ⎵
#_0CD8AC: db $80, $81, $82, $83, $84, $CC, $CC   ; マ ミ ム メ モ ⎵ ⎵
#_0CD8B3: db $97, $98, $99, $CC, $9A, $CC        ; ャ ュ ョ ⎵ ッ ⎵
#_0CD8B9: db $C2, $C3, $C9, $CE, $CC, $CC        ; Y Z － 〜 ⎵ ⎵

#_0CD8BF: db $05, $CC, $06, $CC, $07, $CC, $CC   ; や ⎵ ゆ ⎵ よ ⎵ ⎵
#_0CD8C6: db $CC, $CC, $CC, $CC, $CC, $CC        ; ⎵ ⎵ ⎵ ⎵ ⎵ ⎵
#_0CD8CC: db $55, $CC, $56, $CC, $57, $CC, $CC   ; ヤ ⎵ ユ ⎵ ヨ ⎵ ⎵
#_0CD8D3: db $CC, $CC, $CC, $CC, $CC, $CC        ; ⎵ ⎵ ⎵ ⎵ ⎵ ⎵
#_0CD8D9: db $CC, $CC, $CC, $CC, $CC, $CC        ; ⎵ ⎵ ⎵ ⎵ ⎵ ⎵

#_0CD8DF: db $38, $39, $3A, $3B, $3C, $CC, $CC   ; ら り る れ ろ ⎵ ⎵
#_0CD8E6: db $CA, $CB, $CD, $CD, $CC, $CC        ; 🡄 🡆 END ⎵ ⎵
#_0CD8EC: db $88, $89, $8A, $8B, $8C, $CC, $CC   ; ラ リ ル レ ロ ⎵ ⎵
#_0CD8F3: db $CC, $CC, $CC, $CC, $CC, $CC        ; ⎵ ⎵ ⎵ ⎵ ⎵ ⎵
#_0CD8F9: db $CA, $CB, $CD, $CD, $CC, $CC        ; 🡄 🡆 END ⎵ ⎵

#_0CD8FF: db $0D, $0E, $0F, $CC, $C9, $CC, $CC   ; わ を ん ⎵ － ⎵ ⎵
#_0CD906: db $CC, $CC, $CC, $CC, $CC, $CC        ; ⎵ ⎵ ⎵ ⎵ ⎵ ⎵
#_0CD90C: db $5D, $5E, $5F, $CC, $C9, $CC, $CC   ; ワ ヲ ン ⎵ － ⎵ ⎵
#_0CD913: db $CC, $CC, $CC, $CC, $CC, $CC        ; ⎵ ⎵ ⎵ ⎵ ⎵ ⎵
#_0CD919: db $CC, $CC, $CC, $CC, $CC, $CC        ; ⎵ ⎵ ⎵ ⎵ ⎵ ⎵

;===================================================================================================

NameFile_CursorPositionX:
#_0CD91F: dw $019C, $01AC, $01BC, $01CC
#_0CD927: dw $01DC, $01EC, $01FC, $000C
#_0CD92F: dw $001C, $002C, $003C, $004C
#_0CD937: dw $005C, $006C, $007C, $008C
#_0CD93F: dw $009C, $00AC, $00BC, $00CC
#_0CD947: dw $00DC, $00EC, $00FC, $010C
#_0CD94F: dw $011C, $012C, $013C, $014C
#_0CD957: dw $015C, $016C, $017C, $018C

; Index in the table above
NameFile_CursorIndexMovementX:
#_0CD95F: dw $0001 ; Right
#_0CD961: dw $00FF ; Left

NameFile_CursorIndexBoundaryX:
#_0CD963: dw $0020 ; Right
#_0CD965: dw $00FF ; Left

NameFile_CursorIndexWrapX:
#_0CD967: dw $0000 ; Right
#_0CD969: dw $001F ; Left

;===================================================================================================

NameFile_CursorPositionY:
#_0CD96B: db $3E, $4E, $5E, $6E
#_0CD96F: db $7E, $8E, $9E, $AE
#_0CD973: db $BE, $CE

; Index in the table above
NameFile_CursorIndexMovementY:
#_0CD975: db $01, $FF

NameFile_CursorIndexBoundaryY:
#_0CD977: db $0A, $FF

NameFile_CursorStickY:
#_0CD979: db $00, $09

NameFile_YtoXIndexOffset:
#_0CD97B: dw $0000, $0020, $0040, $0060
#_0CD983: dw $0080, $00A0, $00C0, $00E0
#_0CD98B: dw $0100, $0120

;===================================================================================================

NameFile_HeartXPosition:
#_0CD98F: db $A8, $B8, $C8, $D8

;===================================================================================================

NameFile_CursorMovement:
#_0CD993: dw  -1,   1
#_0CD997: dw  -1,   1
#_0CD99B: dw  -1,   1
#_0CD99F: dw  -1,   1
#_0CD9A3: dw  -1,   1
#_0CD9A7: dw  -1,   1
#_0CD9AB: dw  -1,   1
#_0CD9AF: dw  -1,   1
#_0CD9B3: dw  -2,   2
#_0CD9B7: dw  -2,   2
#_0CD9BB: dw  -2,   2
#_0CD9BF: dw  -2,   2
#_0CD9C3: dw  -4,   4

;---------------------------------------------------------------------------------------------------

NameFile_DoTheNaming:
.check_x_scroll
#_0CD9C7: LDY.w $0B13
#_0CD9CA: BEQ .not_busy_scrolling_x

#_0CD9CC: TYA
#_0CD9CD: CMP.b #$31
#_0CD9CF: BEQ .hit_target_scroll_x

#_0CD9D1: CLC
#_0CD9D2: ADC.b #$04
#_0CD9D4: STA.w $0B13

.hit_target_scroll_x
#_0CD9D7: LDA.w $0B10
#_0CD9DA: ASL A
#_0CD9DB: TAX

#_0CD9DC: REP #$20

#_0CD9DE: DEY

#_0CD9DF: LDA.w $0630
#_0CD9E2: CMP.l NameFile_CursorPositionX,X
#_0CD9E6: BNE .not_at_valid_x_position

#_0CD9E8: SEP #$20

#_0CD9EA: LDA.b #$30
#_0CD9EC: STA.w $0B13

#_0CD9EF: LDA.b $F0
#_0CD9F1: AND.b #$03
#_0CD9F3: BNE .had_lr_input

#_0CD9F5: STZ.w $0B13

.had_lr_input
#_0CD9F8: JSR NameFile_CheckForScrollInputX
#_0CD9FB: BRA .check_x_scroll

;---------------------------------------------------------------------------------------------------

.not_at_valid_x_position
#_0CD9FD: REP #$20

#_0CD9FF: LDX.w $0B16
#_0CDA02: BNE .last_move_left

#_0CDA04: INY
#_0CDA05: INY

.last_move_left
#_0CDA06: LDA.w $0630

#_0CDA09: TYX

#_0CDA0A: CLC
#_0CDA0B: ADC.l NameFile_CursorMovement,X
#_0CDA0F: AND.w #$01FF
#_0CDA12: STA.w $0630

#_0CDA15: SEP #$20

#_0CDA17: BRA .check_y_scroll

.not_busy_scrolling_x
#_0CDA19: JSR NameFile_CheckForScrollInputX

;---------------------------------------------------------------------------------------------------

.check_y_scroll
#_0CDA1C: LDA.w $0B14
#_0CDA1F: BEQ .not_busy_scrolling_y

#_0CDA21: LDX.w $0B15
#_0CDA24: LDY.b #$02

#_0CDA26: LDA.w $0B11
#_0CDA29: CMP.l NameFile_CursorPositionY,X
#_0CDA2D: BNE .not_at_valid_y_position

#_0CDA2F: STZ.w $0B14

#_0CDA32: JSR NameFile_CheckForScrollInputY
#_0CDA35: BRA .check_y_scroll

.not_at_valid_y_position
#_0CDA37: BMI .scrolling_down

#_0CDA39: LDY.b #$FE

.scrolling_down
#_0CDA3B: TYA
#_0CDA3C: CLC
#_0CDA3D: ADC.w $0B11
#_0CDA40: STA.w $0B11

#_0CDA43: BRA .done_y

.not_busy_scrolling_y
#_0CDA45: JSR NameFile_CheckForScrollInputY

;---------------------------------------------------------------------------------------------------

.done_y
#_0CDA48: LDX.b #$00
#_0CDA4A: TXY

#_0CDA4B: LDA.b #$18
#_0CDA4D: STA.b $00

.next_horizontal_bar_object
#_0CDA4F: LDA.b $00
#_0CDA51: STA.w $0800,Y

#_0CDA54: CLC
#_0CDA55: ADC.b #$08
#_0CDA57: STA.b $00

#_0CDA59: LDA.w $0B11
#_0CDA5C: STA.w $0801,Y

#_0CDA5F: LDA.b #$2E
#_0CDA61: STA.w $0802,Y

#_0CDA64: LDA.b #$3C
#_0CDA66: STA.w $0803,Y

#_0CDA69: STZ.w $0A20,X

#_0CDA6C: INY ; +4
#_0CDA6D: INY
#_0CDA6E: INY
#_0CDA6F: INY

#_0CDA70: INX
#_0CDA71: CPX.b #$1A
#_0CDA73: BNE .next_horizontal_bar_object

;---------------------------------------------------------------------------------------------------

#_0CDA75: PHX

#_0CDA76: LDX.w $0B12

#_0CDA79: LDA.l NameFile_HeartXPosition,X
#_0CDA7D: STA.w $0800,Y

#_0CDA80: LDA.b #$14
#_0CDA82: STA.w $0801,Y

#_0CDA85: PLX

#_0CDA86: LDA.b #$29
#_0CDA88: STA.w $0802,Y

#_0CDA8B: LDA.b #$0C
#_0CDA8D: STA.w $0803,Y

#_0CDA90: STZ.w $0A20,X

#_0CDA93: LDA.w $0B13
#_0CDA96: ORA.w $0B14
#_0CDA99: BNE .busy_scrolling

; check for start
#_0CDA9B: LDA.b $F4
#_0CDA9D: AND.b #$10
#_0CDA9F: BNE .confirm_name

; check for AX
#_0CDAA1: LDA.b $F4
#_0CDAA3: AND.b #$C0
#_0CDAA5: BNE .select_item

; check for BY
#_0CDAA7: LDA.b $F6
#_0CDAA9: AND.b #$C0
#_0CDAAB: BNE .select_item

.busy_scrolling
#_0CDAAD: JMP.w .exit

;---------------------------------------------------------------------------------------------------

.select_item
#_0CDAB0: LDA.b #$2B ; SFX2.2B
#_0CDAB2: STA.w $012E

#_0CDAB5: REP #$30

#_0CDAB7: LDA.w $0B15
#_0CDABA: AND.w #$00FF
#_0CDABD: ASL A
#_0CDABE: TAX

#_0CDABF: LDA.l NameFile_YtoXIndexOffset,X
#_0CDAC3: CLC
#_0CDAC4: ADC.w $0B10
#_0CDAC7: AND.w #$01FF
#_0CDACA: TAX

#_0CDACB: SEP #$20

#_0CDACD: LDA.l NameFile_CharacterLayout,X

#_0CDAD1: CMP.b #$CA
#_0CDAD3: BEQ .back_arrow

#_0CDAD5: CMP.b #$CB
#_0CDAD7: BEQ .forward_arrow

#_0CDAD9: CMP.b #$CD
#_0CDADB: BEQ .confirm_name

#_0CDADD: STA.b $00
#_0CDADF: STZ.b $01

#_0CDAE1: BRA .written_character

;---------------------------------------------------------------------------------------------------

.back_arrow
#_0CDAE3: DEC.w $0B12
#_0CDAE6: BRA .adjust_cursor

.forward_arrow
#_0CDAE8: INC.w $0B12

.adjust_cursor
#_0CDAEB: LDA.w $0B12
#_0CDAEE: AND.b #$03
#_0CDAF0: STA.w $0B12

#_0CDAF3: BRA .exit

;---------------------------------------------------------------------------------------------------

.written_character
#_0CDAF5: REP #$30

#_0CDAF7: AND.w #$000F
#_0CDAFA: STA.b $02

#_0CDAFC: LDA.w $0B12
#_0CDAFF: AND.w #$00FF
#_0CDB02: ASL A
#_0CDB03: TAY

#_0CDB04: CLC
#_0CDB05: ADC.w $0200
#_0CDB08: TAX

#_0CDB09: LDA.b $00
#_0CDB0B: AND.w #$FFF0
#_0CDB0E: ASL A
#_0CDB0F: ORA.b $02
#_0CDB11: STA.l $7003D9,X

#_0CDB15: JSR NameFile_DrawSelectedCharacter

#_0CDB18: BRA .forward_arrow

;---------------------------------------------------------------------------------------------------

.confirm_name
#_0CDB1A: REP #$30

#_0CDB1C: STZ.b $02

.write_name_to_save
#_0CDB1E: LDA.w $0200
#_0CDB21: CLC
#_0CDB22: ADC.b $02
#_0CDB24: TAX

#_0CDB25: LDA.l $7003D9,X
#_0CDB29: CMP.w #$018C
#_0CDB2C: BNE InitializeSaveFile

#_0CDB2E: LDA.b $02
#_0CDB30: CMP.w #$0006
#_0CDB33: BEQ .exit

#_0CDB35: INC A
#_0CDB36: INC A
#_0CDB37: STA.b $02

#_0CDB39: BRA .write_name_to_save

.exit
#_0CDB3B: SEP #$30

#_0CDB3D: RTL

;===================================================================================================

InitializeSaveFile:
#_0CDB3E: SEP #$30

#_0CDB40: PHB

#_0CDB41: LDA.b #DefaultSaveFileItems>>16
#_0CDB43: PHA
#_0CDB44: PLB

#_0CDB45: REP #$30

#_0CDB47: LDA.b $C8
#_0CDB49: ASL A
#_0CDB4A: INC A
#_0CDB4B: INC A
#_0CDB4C: STA.l $701FFE

#_0CDB50: TAX

#_0CDB51: LDA.l SaveFileOffsets,X
#_0CDB55: STA.b $00

#_0CDB57: TAX

;---------------------------------------------------------------------------------------------------

#_0CDB58: LDA.w #$55AA
#_0CDB5B: STA.l $7003E1,X

; Open the bomb walls for red rang hut and kak restock hut
#_0CDB5F: LDA.w #$F000
#_0CDB62: STA.l $70020C,X
#_0CDB66: STA.l $70020E,X

#_0CDB6A: LDA.w #$FFFF
#_0CDB6D: STA.l $700401,X

#_0CDB71: LDA.w #$001D
#_0CDB74: STA.b $02

;---------------------------------------------------------------------------------------------------

#_0CDB76: LDY.w #$003C

#_0CDB79: CPX.w #$0000
#_0CDB7C: BNE .copy_next

#_0CDB7E: LDA.l Player2JoypadReturn
#_0CDB82: AND.w #$00FF
#_0CDB85: CMP.w #$0060 ; RTS
#_0CDB88: BEQ .copy_next

#_0CDB8A: LDA.l $7003D9
#_0CDB8E: CMP.w #$00AF
#_0CDB91: BNE .copy_next

#_0CDB93: LDA.w #$00F0 ; mushroom received
#_0CDB96: STA.l $700212,X

#_0CDB9A: LDA.w #$1502
#_0CDB9D: STA.l $7003C5,X

#_0CDBA1: LDA.w #$0100
#_0CDBA4: STA.l $7003C7,X

#_0CDBA8: LDY.w #$0000

;---------------------------------------------------------------------------------------------------

.copy_next
#_0CDBAB: LDA.w DefaultSaveFileItems,Y
#_0CDBAE: STA.l $700340,X

#_0CDBB2: INX
#_0CDBB3: INX

#_0CDBB4: INY
#_0CDBB5: INY

#_0CDBB6: DEC.b $02
#_0CDBB8: BPL .copy_next

;---------------------------------------------------------------------------------------------------

#_0CDBBA: LDX.b $00

#_0CDBBC: LDY.w #$0000
#_0CDBBF: TYA

.build_checksum
#_0CDBC0: CLC
#_0CDBC1: ADC.l $700000,X
#_0CDBC5: INX
#_0CDBC6: INX
#_0CDBC7: INY
#_0CDBC8: CPY.w #$027F
#_0CDBCB: BNE .build_checksum

#_0CDBCD: STA.b $02

#_0CDBCF: LDX.b $00

#_0CDBD1: LDA.w #$5A5A
#_0CDBD4: SEC
#_0CDBD5: SBC.b $02
#_0CDBD7: STA.l $7004FE,X

;---------------------------------------------------------------------------------------------------

#_0CDBDB: SEP #$30

#_0CDBDD: PLB

#_0CDBDE: JSR ReturnToFileSelect

#_0CDBE1: LDA.b #$FF
#_0CDBE3: STA.w $0128

#_0CDBE6: LDA.b #$2C ; SFX2.2C
#_0CDBE8: STA.w $012E

#_0CDBEB: SEP #$30

#_0CDBED: RTL

;===================================================================================================

NameFile_CheckForScrollInputX:
#_0CDBEE: SEP #$30

; check for L or R input
#_0CDBF0: LDA.b $F0
#_0CDBF2: AND.b #$03
#_0CDBF4: BEQ .exit

#_0CDBF6: INC.w $0B13

#_0CDBF9: DEC A
#_0CDBFA: STA.w $0B16

#_0CDBFD: REP #$30

#_0CDBFF: AND.w #$00FF
#_0CDC02: ASL A
#_0CDC03: TAX

#_0CDC04: LDA.w $0B10
#_0CDC07: AND.w #$00FF
#_0CDC0A: CLC
#_0CDC0B: ADC.l NameFile_CursorIndexMovementX,X
#_0CDC0F: CMP.l NameFile_CursorIndexBoundaryX,X
#_0CDC13: BNE .no_wrap

#_0CDC15: LDA.l NameFile_CursorIndexWrapX,X

.no_wrap
#_0CDC19: SEP #$30

#_0CDC1B: STA.w $0B10

.exit
#_0CDC1E: SEP #$30

#_0CDC20: RTS

;===================================================================================================

NameFile_CheckForScrollInputY:
#_0CDC21: LDA.b $F0
#_0CDC23: AND.b #$0C
#_0CDC25: BEQ .no_input

#_0CDC27: STA.b $02

#_0CDC29: ASL A
#_0CDC2A: ORA.w $0B15
#_0CDC2D: CMP.b #$10
#_0CDC2F: BEQ .set_input

#_0CDC31: LDA.b $02
#_0CDC33: ASL A
#_0CDC34: ASL A
#_0CDC35: ORA.w $0B15

#_0CDC38: LDX.w $0B10

#_0CDC3B: CMP.b #$19
#_0CDC3D: BEQ .set_input

#_0CDC3F: LDA.b $02
#_0CDC41: LSR A
#_0CDC42: LSR A

.next
#_0CDC43: TAX

#_0CDC44: LDA.w $0B15
#_0CDC47: CLC
#_0CDC48: ADC.l NameFile_CursorIndexMovementY-1,X
#_0CDC4C: CMP.l NameFile_CursorIndexBoundaryY-1,X
#_0CDC50: BNE .no_stick

; I don't think this is reachable through normal gameplay.
#_0CDC52: LDA.l NameFile_CursorStickY-1,X

.no_stick
#_0CDC56: STA.w $0B15

#_0CDC59: STX.b $01

#_0CDC5B: LDX.w $0B15

#_0CDC5E: LDA.l NameFile_YtoXIndexOffset,X
#_0CDC62: CLC
#_0CDC63: ADC.w $0B10
#_0CDC66: TAX

#_0CDC67: LDA.l NameFile_CharacterLayout,X
#_0CDC6B: CMP.b #$FF
#_0CDC6D: BNE .not_character_that_doesnt_exit

; I don't think this ever happens
#_0CDC6F: LDA.b $01
#_0CDC71: BRA .next

;---------------------------------------------------------------------------------------------------

.not_character_that_doesnt_exit
#_0CDC73: INC.w $0B14

#_0CDC76: BRA .set_input

;---------------------------------------------------------------------------------------------------

.no_input
#_0CDC78: STZ.w $00CA

.set_input
#_0CDC7B: LDA.w $0002
#_0CDC7E: STA.w $00CB

#_0CDC81: RTS

;===================================================================================================

pool NameFile_DrawSelectedCharacter

.vram_position_low
#_0CDC82: dw $0075 ; $C0EA in VRAM
#_0CDC84: dw $0077 ; $C0EE in VRAM
#_0CDC86: dw $0079 ; $C0F2 in VRAM
#_0CDC88: dw $007B ; $C0F6 in VRAM

pool off

;---------------------------------------------------------------------------------------------------

NameFile_DrawSelectedCharacter:
#_0CDC8A: PHB
#_0CDC8B: PHK
#_0CDC8C: PLB

#_0CDC8D: LDA.w #$6000
#_0CDC90: ORA.w .vram_position_low,Y
#_0CDC93: XBA
#_0CDC94: STA.w $1002

#_0CDC97: XBA
#_0CDC98: CLC
#_0CDC99: ADC.w #$0020

#_0CDC9C: XBA
#_0CDC9D: STA.w $1008

#_0CDCA0: LDA.w #$0100
#_0CDCA3: STA.w $1004
#_0CDCA6: STA.w $100A

#_0CDCA9: LDA.l $7003D9,X
#_0CDCAD: ORA.w #$1C00
#_0CDCB0: STA.w $1006

#_0CDCB3: CLC
#_0CDCB4: ADC.w #$0010
#_0CDCB7: STA.w $100C

;---------------------------------------------------------------------------------------------------

#_0CDCBA: SEP #$30

#_0CDCBC: LDA.b #$FF
#_0CDCBE: STA.w $100E

#_0CDCC1: LDA.b #$01
#_0CDCC3: STA.b $14

#_0CDCC5: PLB

#_0CDCC6: RTS

;===================================================================================================

IntroLogoTilemap:
#_0CDCC7: dw $0010, $7E47 ; VRAM $2000 | 1920 bytes | Fixed horizontal
#_0CDCCB: dw $0976

#_0CDCCD: dw $A010, $7E43 ; VRAM $2140 | 896 bytes | Fixed horizontal
#_0CDCD1: dw $0977

#_0CDCD3: dw $2511, $1700 ; VRAM $224A | 24 bytes | Horizontal
#_0CDCD7: dw $3900, $3901, $3902, $3903, $3904, $3905, $3906, $3907
#_0CDCE7: dw $3908, $3909, $390A, $390B

#_0CDCEF: dw $3911, $0300 ; VRAM $2272 | 4 bytes | Horizontal
#_0CDCF3: dw $397E, $397F

#_0CDCF7: dw $4511, $2B00 ; VRAM $228A | 44 bytes | Horizontal
#_0CDCFB: dw $390C, $390D, $390E, $390F, $3910, $3911, $3912, $3977
#_0CDD0B: dw $3913, $3914, $3915, $3916, $3977, $3977, $3917, $3918
#_0CDD1B: dw $3919, $391A, $391B, $391C, $391D, $391E

#_0CDD27: dw $6511, $2B00 ; VRAM $22CA | 44 bytes | Horizontal
#_0CDD2B: dw $391F, $3920, $3921, $3922, $3923, $3924, $3925, $3926
#_0CDD3B: dw $3927, $3928, $3929, $392A, $392B, $392C, $392D, $392E
#_0CDD4B: dw $392F, $3930, $3931, $3932, $3933, $3934

#_0CDD57: dw $8511, $2B00 ; VRAM $230A | 44 bytes | Horizontal
#_0CDD5B: dw $3935, $3936, $3937, $3938, $3939, $393A, $393B, $393C
#_0CDD6B: dw $393D, $393E, $393F, $3940, $3941, $3942, $3943, $3944
#_0CDD7B: dw $3945, $3946, $3947, $3948, $3949, $394A

#_0CDD87: dw $A511, $2B00 ; VRAM $234A | 44 bytes | Horizontal
#_0CDD8B: dw $394B, $394C, $394D, $394E, $394F, $3950, $3951, $3952
#_0CDD9B: dw $3953, $3954, $3955, $3956, $3957, $3958, $3959, $395A
#_0CDDAB: dw $395B, $395C, $395D, $395E, $395F, $3960

#_0CDDB7: dw $C511, $2B00 ; VRAM $238A | 44 bytes | Horizontal
#_0CDDBB: dw $3977, $3961, $3962, $3963, $3964, $3965, $3966, $3967
#_0CDDCB: dw $3968, $3969, $396A, $396B, $396C, $396D, $396E, $396F
#_0CDDDB: dw $3970, $3971, $3972, $3973, $3974, $3975

#_0CDDE7: db $FF ; end of stripes data

;===================================================================================================

FileSelectTilemap:
#_0CDDE8: dw $6260, $3700 ; VRAM $C0C4 | 56 bytes | Horizontal
#_0CDDEC: dw $1D8A, $0188, $1D69, $0188, $1D65, $0188, $1D4A, $0188
#_0CDDFC: dw $1D82, $0188, $1D4E, $0188, $1D6B, $0188, $0188, $1D6C
#_0CDE0C: dw $0188, $1D4E, $0188, $1D65, $0188, $1D4E, $0188, $1D4C
#_0CDE1C: dw $0188, $1D6D, $0188, $1D8B

#_0CDE24: dw $8260, $3700 ; VRAM $C104 | 56 bytes | Horizontal
#_0CDE28: dw $1D9A, $0188, $1D79, $0188, $1D75, $0188, $1D5A, $0188
#_0CDE38: dw $1D92, $0188, $1D5E, $0188, $1D7B, $0188, $0188, $1D7C
#_0CDE48: dw $0188, $1D5E, $0188, $1D75, $0188, $1D5E, $0188, $1D5C
#_0CDE58: dw $0188, $1D7D, $0188, $1D9B

#_0CDE60: dw $A562, $1500 ; VRAM $C54A | 22 bytes | Horizontal
#_0CDE64: dw $1CAC, $0188, $1D23, $0188, $1D89, $0188, $1D04, $0188
#_0CDE74: dw $1D89, $0188, $1D07

#_0CDE7A: dw $C562, $1500 ; VRAM $C58A | 22 bytes | Horizontal
#_0CDE7E: dw $1CBC, $0188, $1D33, $0188, $1D99, $0188, $1D14, $0188
#_0CDE8E: dw $1D99, $0188, $1D17

#_0CDE94: dw $2563, $1900 ; VRAM $C64A | 26 bytes | Horizontal
#_0CDE98: dw $1D64, $0188, $1D62, $0188, $1D65, $0188, $1D65, $0188
#_0CDEA8: dw $1D04, $0188, $1D89, $0188, $1D07

#_0CDEB2: dw $4563, $1900 ; VRAM $C68A | 26 bytes | Horizontal
#_0CDEB6: dw $1D74, $0188, $1D72, $0188, $1D75, $0188, $1D75, $0188
#_0CDEC6: dw $1D14, $0188, $1D99, $0188, $1D17

#_0CDED0: db $FF ; end of stripes data

;===================================================================================================

FileSelectNamesTilemap:
#_0CDED1: dw $2861, $2D00 ; VRAM $C250 | 46 bytes | Horizontal
#_0CDED5: dw $1D41, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CDEE5: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CDEF5: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

#_0CDF03: dw $4861, $2D00 ; VRAM $C290 | 46 bytes | Horizontal
#_0CDF07: dw $1D51, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
#_0CDF17: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CDF27: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

#_0CDF35: dw $A861, $2D00 ; VRAM $C350 | 46 bytes | Horizontal
#_0CDF39: dw $1D42, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CDF49: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CDF59: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

#_0CDF67: dw $C861, $2D00 ; VRAM $C390 | 46 bytes | Horizontal
#_0CDF6B: dw $1D52, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
#_0CDF7B: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CDF8B: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

#_0CDF99: dw $2862, $2D00 ; VRAM $C450 | 46 bytes | Horizontal
#_0CDF9D: dw $1D43, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CDFAD: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CDFBD: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

#_0CDFCB: dw $4862, $2D00 ; VRAM $C490 | 46 bytes | Horizontal
#_0CDFCF: dw $1D53, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
#_0CDFDF: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CDFEF: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

#_0CDFFD: db $FF ; end of stripes data

;===================================================================================================

FileSelectKILLFileTilemap:
#_0CDFFE: dw $6760, $2100 ; VRAM $C0CE | 34 bytes | Horizontal
#_0CE002: dw $1D8A, $0188, $1D64, $0188, $1D62, $0188, $1D65, $0188
#_0CE012: dw $1D65, $0188, $1D04, $0188, $1D89, $0188, $1D07, $0188
#_0CE022: dw $1D8B

#_0CE024: dw $8760, $2100 ; VRAM $C10E | 34 bytes | Horizontal
#_0CE028: dw $1D9A, $0188, $1D74, $0188, $1D72, $0188, $1D75, $0188
#_0CE038: dw $1D75, $0188, $1D14, $0188, $1D99, $0188, $1D17, $0188
#_0CE048: dw $1D9B

#_0CE04A: dw $C360, $3100 ; VRAM $C186 | 50 bytes | Horizontal
#_0CE04E: dw $0C67, $0188, $0C44, $0188, $0D06, $0188, $0D89, $0188
#_0CE05E: dw $0CC8, $0188, $0D89, $0188, $0C0E, $0188, $0C0B, $0188
#_0CE06E: dw $0C21, $0188, $0C60, $0188, $0C22, $0188, $0C08, $0188
#_0CE07E: dw $0D86

#_0CE080: dw $E360, $3100 ; VRAM $C1C6 | 50 bytes | Horizontal
#_0CE084: dw $0C77, $0188, $0C54, $0188, $0D16, $0188, $0D99, $0188
#_0CE094: dw $0CD8, $0188, $0D99, $0188, $0C1E, $0188, $0C1B, $0188
#_0CE0A4: dw $0C31, $0188, $0C70, $0188, $0C32, $0188, $0C18, $0188
#_0CE0B4: dw $0D96

#_0CE0B6: dw $2563, $1B00 ; VRAM $C64A | 28 bytes | Horizontal
#_0CE0BA: dw $1C05, $0188, $1C8A, $0188, $1C82, $0188, $1C69, $0188
#_0CE0CA: dw $0188, $1C05, $0188, $1C63, $0188, $1C6A

#_0CE0D6: dw $4563, $1B00 ; VRAM $C68A | 28 bytes | Horizontal
#_0CE0DA: dw $1C15, $0188, $1C9A, $0188, $1C92, $0188, $1C79, $0188
#_0CE0EA: dw $0188, $1C15, $0188, $1C73, $0188, $1C7A

#_0CE0F6: db $FF ; end of stripes data

;===================================================================================================

KILLFile_BlankNameStripes:
; File 1
#_0CE0F7: dw $2861, $2D00 ; VRAM $C250 | 46 bytes | Horizontal
#_0CE0FB: dw $1D41, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE10B: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE11B: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

#_0CE129: dw $4861, $2D00 ; VRAM $C290 | 46 bytes | Horizontal
#_0CE12D: dw $1D51, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE13D: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE14D: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

; File 2
#_0CE15B: dw $A861, $2D00 ; VRAM $C350 | 46 bytes | Horizontal
#_0CE15F: dw $1D42, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE16F: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE17F: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

#_0CE18D: dw $C861, $2D00 ; VRAM $C390 | 46 bytes | Horizontal
#_0CE191: dw $1D52, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE1A1: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE1B1: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

; File 3
#_0CE1BF: dw $2862, $2D00 ; VRAM $C450 | 46 bytes | Horizontal
#_0CE1C3: dw $1D43, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE1D3: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE1E3: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

#_0CE1F1: dw $4862, $2D00 ; VRAM $C490 | 46 bytes | Horizontal
#_0CE1F5: dw $1D53, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE205: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE215: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

#_0CE223: db $FF ; end of stripes data

;===================================================================================================

FileSelectCopyFileTilemap:
#_0CE224: dw $6860, $1D00 ; VRAM $C0D0 | 30 bytes | Horizontal
#_0CE228: dw $1D8A, $0188, $1CAC, $0188, $1D23, $0188, $1D89, $0188
#_0CE238: dw $1D04, $0188, $1D89, $0188, $1D07, $0188, $1D8B

#_0CE246: dw $8860, $1D00 ; VRAM $C110 | 30 bytes | Horizontal
#_0CE24A: dw $1D9A, $0188, $1CBC, $0188, $1D33, $0188, $1D99, $0188
#_0CE25A: dw $1D14, $0188, $1D99, $0188, $1D17, $0188, $1D9B

#_0CE268: dw $E210, $0300 ; VRAM $21C4 | 4 bytes | Horizontal
#_0CE26C: dw $4882, $0881

#_0CE270: dw $ED10, $0300 ; VRAM $21DA | 4 bytes | Horizontal
#_0CE274: dw $0881, $0882

#_0CE278: dw $0211, $14C0 ; VRAM $2204 | 22 bytes | Fixed vertical
#_0CE27C: dw $4883

#_0CE27E: dw $0E11, $14C0 ; VRAM $221C | 22 bytes | Fixed vertical
#_0CE282: dw $0883

#_0CE284: dw $6212, $0100 ; VRAM $24C4 | 2 bytes | Horizontal
#_0CE288: dw $C882

#_0CE28A: dw $6312, $1440 ; VRAM $24C6 | 22 bytes | Fixed horizontal
#_0CE28E: dw $8881

#_0CE290: dw $6E12, $0100 ; VRAM $24DC | 2 bytes | Horizontal
#_0CE294: dw $8882

#_0CE296: dw $2563, $1B00 ; VRAM $C64A | 28 bytes | Horizontal
#_0CE29A: dw $1C05, $0188, $1C8A, $0188, $1C82, $0188, $1C69, $0188
#_0CE2AA: dw $0188, $1C05, $0188, $1C63, $0188, $1C6A

#_0CE2B6: dw $4563, $1B00 ; VRAM $C68A | 28 bytes | Horizontal
#_0CE2BA: dw $1C15, $0188, $1C9A, $0188, $1C92, $0188, $1C79, $0188
#_0CE2CA: dw $0188, $1C15, $0188, $1C73, $0188, $1C7A

#_0CE2D6: db $FF ; end of stripes data

;===================================================================================================

CopyFile_HeaderStripe:
#_0CE2D7: dw $C560, $0D00 ; VRAM $C18A | 14 bytes | Horizontal
#_0CE2DB: dw $0C67, $0188, $0C6B, $0188, $0C0E, $0188, $0D86

#_0CE2E9: dw $E560, $0D00 ; VRAM $C1CA | 14 bytes | Horizontal
#_0CE2ED: dw $0C77, $0188, $0C7B, $0188, $0C1E, $0188, $0D96

#_0CE2FB: dw $2561, $1100 ; VRAM $C24A | 18 bytes | Horizontal
#_0CE2FF: dw $1D41, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE30F: dw $0188

#_0CE311: dw $4561, $1100 ; VRAM $C28A | 18 bytes | Horizontal
#_0CE315: dw $1D51, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE325: dw $0188

#_0CE327: dw $A561, $1100 ; VRAM $C34A | 18 bytes | Horizontal
#_0CE32B: dw $1D42, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE33B: dw $0188

#_0CE33D: dw $C561, $1100 ; VRAM $C38A | 18 bytes | Horizontal
#_0CE341: dw $1D52, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE351: dw $0188

#_0CE353: dw $2562, $1100 ; VRAM $C44A | 18 bytes | Horizontal
#_0CE357: dw $1D43, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE367: dw $0188

#_0CE369: dw $4562, $1100 ; VRAM $C48A | 18 bytes | Horizontal
#_0CE36D: dw $1D53, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE37D: dw $0188

#_0CE37F: dw $F110, $1840 ; VRAM $21E2 | 26 bytes | Fixed horizontal
#_0CE383: dw $087F

#_0CE385: dw $1111, $0CC0 ; VRAM $2222 | 14 bytes | Fixed vertical
#_0CE389: dw $087F

#_0CE38B: dw $1D11, $0CC0 ; VRAM $223A | 14 bytes | Fixed vertical
#_0CE38F: dw $087F

#_0CE391: dw $F111, $1840 ; VRAM $23E2 | 26 bytes | Fixed horizontal
#_0CE395: dw $087F

#_0CE397: db $FF ; end of stripes data

;===================================================================================================

CopyFile_TargetHeaderStripes:
#_0CE398: dw $D460, $0D00 ; VRAM $C1A8 | 14 bytes | Horizontal
#_0CE39C: dw $0C67, $0188, $0C0C, $0188, $0C41, $0188, $0D86

#_0CE3AA: dw $F460, $0D00 ; VRAM $C1E8 | 14 bytes | Horizontal
#_0CE3AE: dw $0C77, $0188, $0C1C, $0188, $0C51, $0188, $0D96

#_0CE3BC: dw $3461, $1100 ; VRAM $C268 | 18 bytes | Horizontal
#_0CE3C0: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE3D0: dw $0188

#_0CE3D2: dw $5461, $1100 ; VRAM $C2A8 | 18 bytes | Horizontal
#_0CE3D6: dw $0188, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE3E6: dw $0188

#_0CE3E8: dw $B461, $1100 ; VRAM $C368 | 18 bytes | Horizontal
#_0CE3EC: dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE3FC: dw $0188

#_0CE3FE: dw $D461, $1100 ; VRAM $C3A8 | 18 bytes | Horizontal
#_0CE402: dw $0188, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
#_0CE412: dw $0188

#_0CE414: db $FF ; end of stripes data

;===================================================================================================

NamePlayerTilemap:
#_0CE415: dw $0010, $7E41 ; VRAM $2000 | 384 bytes | Fixed horizontal
#_0CE419: dw $0890

#_0CE41B: dw $C010, $2CC0 ; VRAM $2180 | 46 bytes | Fixed vertical
#_0CE41F: dw $0890

#_0CE421: dw $C110, $2CC0 ; VRAM $2182 | 46 bytes | Fixed vertical
#_0CE425: dw $0890

#_0CE427: dw $DE10, $2CC0 ; VRAM $21BC | 46 bytes | Fixed vertical
#_0CE42B: dw $0890

#_0CE42D: dw $DF10, $2CC0 ; VRAM $21BE | 46 bytes | Fixed vertical
#_0CE431: dw $0890

#_0CE433: dw $8013, $3E40 ; VRAM $2700 | 64 bytes | Fixed horizontal
#_0CE437: dw $0890

#_0CE439: dw $3310, $0980 ; VRAM $2066 | 10 bytes | Vertical
#_0CE43D: dw $4882, $4883, $4883, $4883, $C882

#_0CE447: dw $3410, $1040 ; VRAM $2068 | 18 bytes | Fixed horizontal
#_0CE44B: dw $0881

#_0CE44D: dw $3D10, $0980 ; VRAM $207A | 10 bytes | Vertical
#_0CE451: dw $0882, $0883, $0883, $0883, $8882

#_0CE45B: dw $5410, $1040 ; VRAM $20A8 | 18 bytes | Fixed horizontal
#_0CE45F: dw $087F

#_0CE461: dw $7410, $1040 ; VRAM $20E8 | 18 bytes | Fixed horizontal
#_0CE465: dw $087F

#_0CE467: dw $9410, $1040 ; VRAM $2128 | 18 bytes | Fixed horizontal
#_0CE46B: dw $087F

#_0CE46D: dw $B410, $1040 ; VRAM $2168 | 18 bytes | Fixed horizontal
#_0CE471: dw $8881

#_0CE473: dw $C210, $0100 ; VRAM $2184 | 2 bytes | Horizontal
#_0CE477: dw $4885

#_0CE479: dw $C310, $3240 ; VRAM $2186 | 52 bytes | Fixed horizontal
#_0CE47D: dw $0884

#_0CE47F: dw $DD10, $0100 ; VRAM $21BA | 2 bytes | Horizontal
#_0CE483: dw $0885

#_0CE485: dw $E210, $26C0 ; VRAM $21C4 | 40 bytes | Fixed vertical
#_0CE489: dw $4893

#_0CE48B: dw $FD10, $26C0 ; VRAM $21FA | 40 bytes | Fixed vertical
#_0CE48F: dw $0893

#_0CE491: dw $6213, $0100 ; VRAM $26C4 | 2 bytes | Horizontal
#_0CE495: dw $C885

#_0CE497: dw $6313, $3240 ; VRAM $26C6 | 52 bytes | Fixed horizontal
#_0CE49B: dw $8884

#_0CE49D: dw $7D13, $0100 ; VRAM $26FA | 2 bytes | Horizontal
#_0CE4A1: dw $8885

#_0CE4A3: dw $4310, $0F00 ; VRAM $2086 | 16 bytes | Horizontal
#_0CE4A7: dw $0886, $0887, $0888, $0889, $088A, $088B, $088C, $088D

#_0CE4B7: dw $6310, $0F00 ; VRAM $20C6 | 16 bytes | Horizontal
#_0CE4BB: dw $0896, $0897, $0898, $0899, $089A, $089B, $089C, $089D

#_0CE4CB: dw $EF10, $26C0 ; VRAM $21DE | 40 bytes | Fixed vertical
#_0CE4CF: dw $0495

#_0CE4D1: dw $E360, $3900 ; VRAM $C1C6 | 58 bytes | Horizontal
#_0CE4D5: dw $1C00, $0188, $1C01, $0188, $1C02, $0188, $1C03, $0188
#_0CE4E5: dw $1C04, $0188, $0188, $0188, $0188, $0188, $1C25, $0188
#_0CE4F5: dw $1C26, $0188, $1C27, $0188, $1C2D, $0188, $1C2E, $0188
#_0CE505: dw $0188, $0188, $1CA0, $0188, $1CA1

#_0CE50F: dw $0361, $3900 ; VRAM $C206 | 58 bytes | Horizontal
#_0CE513: dw $1C10, $0188, $1C11, $0188, $1C12, $0188, $1C13, $0188
#_0CE523: dw $1C14, $0188, $0188, $0188, $0188, $0188, $1C35, $0188
#_0CE533: dw $1C36, $0188, $1C37, $0188, $1C3D, $0188, $1C3E, $0188
#_0CE543: dw $0188, $0188, $1CB0, $0188, $1CB1

#_0CE54D: dw $2361, $3900 ; VRAM $C246 | 58 bytes | Horizontal
#_0CE551: dw $1C08, $0188, $1C09, $0188, $1C0A, $0188, $1C0B, $0188
#_0CE561: dw $1C0C, $0188, $0188, $0188, $0188, $0188, $1C2F, $0188
#_0CE571: dw $1C45, $0188, $1C46, $0188, $1C47, $0188, $1C4D, $0188
#_0CE581: dw $0188, $0188, $1CA8, $0188, $1CA9

#_0CE58B: dw $4361, $3900 ; VRAM $C286 | 58 bytes | Horizontal
#_0CE58F: dw $1C18, $0188, $1C19, $0188, $1C1A, $0188, $1C1B, $0188
#_0CE59F: dw $1C1C, $0188, $0188, $0188, $0188, $0188, $1C3F, $0188
#_0CE5AF: dw $1C55, $0188, $1C56, $0188, $1C57, $0188, $1C5D, $0188
#_0CE5BF: dw $0188, $0188, $1CB8, $0188, $1CB9

#_0CE5C9: dw $6361, $3900 ; VRAM $C2C6 | 58 bytes | Horizontal
#_0CE5CD: dw $1C20, $0188, $1C21, $0188, $1C22, $0188, $1C23, $0188
#_0CE5DD: dw $1C24, $0188, $0188, $0188, $0188, $0188, $1C4E, $0188
#_0CE5ED: dw $1C4F, $0188, $1C65, $0188, $1C66, $0188, $1C67, $0188
#_0CE5FD: dw $0188, $0188, $1CC0, $0188, $1CC1

#_0CE607: dw $8361, $3900 ; VRAM $C306 | 58 bytes | Horizontal
#_0CE60B: dw $1C30, $0188, $1C31, $0188, $1C32, $0188, $1C33, $0188
#_0CE61B: dw $1C34, $0188, $0188, $0188, $0188, $0188, $1C5E, $0188
#_0CE62B: dw $1C5F, $0188, $1C75, $0188, $1C76, $0188, $1C77, $0188
#_0CE63B: dw $0188, $0188, $1CD0, $0188, $1CD1

#_0CE645: dw $A361, $3900 ; VRAM $C346 | 58 bytes | Horizontal
#_0CE649: dw $1C28, $0188, $1C29, $0188, $1C2A, $0188, $1C2B, $0188
#_0CE659: dw $1C2C, $0188, $0188, $0188, $0188, $0188, $1C6D, $0188
#_0CE669: dw $1C6E, $0188, $1C6F, $0188, $1C80, $0188, $1C81, $0188
#_0CE679: dw $0188, $0188, $1CC8, $0188, $1CC9

#_0CE683: dw $C361, $3900 ; VRAM $C386 | 58 bytes | Horizontal
#_0CE687: dw $1C38, $0188, $1C39, $0188, $1C3A, $0188, $1C3B, $0188
#_0CE697: dw $1C3C, $0188, $0188, $0188, $0188, $0188, $1C7D, $0188
#_0CE6A7: dw $1C7E, $0188, $1C7F, $0188, $1C90, $0188, $1C91, $0188
#_0CE6B7: dw $0188, $0188, $1CD8, $0188, $1CD9

#_0CE6C1: dw $E361, $3900 ; VRAM $C3C6 | 58 bytes | Horizontal
#_0CE6C5: dw $1C40, $0188, $1C41, $0188, $1C42, $0188, $1C43, $0188
#_0CE6D5: dw $1C44, $0188, $0188, $0188, $0188, $0188, $1C82, $0188
#_0CE6E5: dw $1C83, $0188, $1C84, $0188, $1C85, $0188, $1C86, $0188
#_0CE6F5: dw $0188, $0188, $1CE0, $0188, $1CE1

#_0CE6FF: dw $0362, $3900 ; VRAM $C406 | 58 bytes | Horizontal
#_0CE703: dw $1C50, $0188, $1C51, $0188, $1C52, $0188, $1C53, $0188
#_0CE713: dw $1C54, $0188, $0188, $0188, $0188, $0188, $1C92, $0188
#_0CE723: dw $1C93, $0188, $1C94, $0188, $1C95, $0188, $1C96, $0188
#_0CE733: dw $0188, $0188, $1CF0, $0188, $1CF1

#_0CE73D: dw $2362, $3900 ; VRAM $C446 | 58 bytes | Horizontal
#_0CE741: dw $1C48, $0188, $1C49, $0188, $1C4A, $0188, $1C4B, $0188
#_0CE751: dw $1C4C, $0188, $0188, $0188, $0188, $0188, $1C8B, $0188
#_0CE761: dw $1C8C, $0188, $1C8D, $0188, $1C8E, $0188, $1C8F, $0188
#_0CE771: dw $0188, $0188, $1CE8, $0188, $1CE9

#_0CE77B: dw $4362, $3900 ; VRAM $C486 | 58 bytes | Horizontal
#_0CE77F: dw $1C58, $0188, $1C59, $0188, $1C5A, $0188, $1C5B, $0188
#_0CE78F: dw $1C5C, $0188, $0188, $0188, $0188, $0188, $1C9B, $0188
#_0CE79F: dw $1C9C, $0188, $1C9D, $0188, $1C9E, $0188, $1C9F, $0188
#_0CE7AF: dw $0188, $0188, $1CF8, $0188, $1CF9

#_0CE7B9: dw $6362, $3900 ; VRAM $C4C6 | 58 bytes | Horizontal
#_0CE7BD: dw $1C60, $0188, $1C61, $0188, $1C62, $0188, $1C63, $0188
#_0CE7CD: dw $1C64, $0188, $0188, $0188, $0188, $0188, $1C87, $0188
#_0CE7DD: dw $1C88, $0188, $1C89, $0188, $0188, $0188, $1C8A, $0188
#_0CE7ED: dw $0188, $0188, $1D00, $0188, $1D01

#_0CE7F7: dw $8362, $3900 ; VRAM $C506 | 58 bytes | Horizontal
#_0CE7FB: dw $1C70, $0188, $1C71, $0188, $1C72, $0188, $1C73, $0188
#_0CE80B: dw $1C74, $0188, $0188, $0188, $0188, $0188, $1C97, $0188
#_0CE81B: dw $1C98, $0188, $1C99, $0188, $0188, $0188, $1C9A, $0188
#_0CE82B: dw $0188, $0188, $1D10, $0188, $1D11

#_0CE835: dw $A362, $1100 ; VRAM $C546 | 18 bytes | Horizontal
#_0CE839: dw $1C05, $0188, $0188, $0188, $1C06, $0188, $0188, $0188
#_0CE849: dw $1C07

#_0CE84B: dw $C362, $1100 ; VRAM $C586 | 18 bytes | Horizontal
#_0CE84F: dw $1C15, $0188, $0188, $0188, $1C16, $0188, $0188, $0188
#_0CE85F: dw $1C17

#_0CE861: dw $BD62, $0100 ; VRAM $C57A | 2 bytes | Horizontal
#_0CE865: dw $1CA5

#_0CE867: dw $DD62, $0100 ; VRAM $C5BA | 2 bytes | Horizontal
#_0CE86B: dw $1CB5

#_0CE86D: dw $E362, $1100 ; VRAM $C5C6 | 18 bytes | Horizontal
#_0CE871: dw $1C68, $0188, $1C69, $0188, $1C6A, $0188, $1C6B, $0188
#_0CE881: dw $1C6C

#_0CE883: dw $0363, $1100 ; VRAM $C606 | 18 bytes | Horizontal
#_0CE887: dw $1C78, $0188, $1C79, $0188, $1C7A, $0188, $1C7B, $0188
#_0CE897: dw $1C7C

#_0CE899: dw $2363, $1100 ; VRAM $C646 | 18 bytes | Horizontal
#_0CE89D: dw $1C0D, $0188, $1C0E, $0188, $1C0F, $0188, $0188, $0188
#_0CE8AD: dw $1D89

#_0CE8AF: dw $4363, $1100 ; VRAM $C686 | 18 bytes | Horizontal
#_0CE8B3: dw $1C1D, $0188, $1C1E, $0188, $1C1F, $0188, $0188, $0188
#_0CE8C3: dw $1D99

#_0CE8C5: dw $FD62, $0500 ; VRAM $C5FA | 6 bytes | Horizontal
#_0CE8C9: dw $1D08, $0188, $1D09

#_0CE8CF: dw $1D63, $0500 ; VRAM $C63A | 6 bytes | Horizontal
#_0CE8D3: dw $1D18, $0188, $1D19

#_0CE8D9: dw $3D63, $0500 ; VRAM $C67A | 6 bytes | Horizontal
#_0CE8DD: dw $1CAD, $0188, $1CAE

#_0CE8E3: dw $5D63, $0500 ; VRAM $C6BA | 6 bytes | Horizontal
#_0CE8E7: dw $1CBD, $0188, $1CBE

#_0CE8ED: dw $F162, $0D00 ; VRAM $C5E2 | 14 bytes | Horizontal
#_0CE8F1: dw $1D8A, $0188, $1D8B, $0188, $1D4E, $1D67, $1D4D

#_0CE8FF: dw $1163, $0D00 ; VRAM $C622 | 14 bytes | Horizontal
#_0CE903: dw $1D9A, $0188, $1D9B, $0188, $1D5E, $1D77, $1D5D

#_0CE911: dw $E164, $3900 ; VRAM $C9C2 | 58 bytes | Horizontal
#_0CE915: dw $1CA2, $0188, $1CA3, $0188, $1CA4, $0188, $0188, $0188
#_0CE925: dw $0188, $0188, $1CC5, $0188, $1CC6, $0188, $1CC7, $0188
#_0CE935: dw $1CCD, $0188, $1CCE, $0188, $0188, $0188, $1D4A, $0188
#_0CE945: dw $1D4B, $0188, $1D4C, $0188, $1D4D

#_0CE94F: dw $0165, $3900 ; VRAM $CA02 | 58 bytes | Horizontal
#_0CE953: dw $1CB2, $0188, $1CB3, $0188, $1CB4, $0188, $0188, $0188
#_0CE963: dw $0188, $0188, $1CD5, $0188, $1CD6, $0188, $1CD7, $0188
#_0CE973: dw $1CDD, $0188, $1CDE, $0188, $0188, $0188, $1D5A, $0188
#_0CE983: dw $1D5B, $0188, $1D5C, $0188, $1D5D

#_0CE98D: dw $2165, $3900 ; VRAM $CA42 | 58 bytes | Horizontal
#_0CE991: dw $1CAA, $0188, $1CAB, $0188, $1CAC, $0188, $0188, $0188
#_0CE9A1: dw $0188, $0188, $1CCF, $0188, $1CE5, $0188, $1CE6, $0188
#_0CE9B1: dw $1CE7, $0188, $1CED, $0188, $0188, $0188, $1D4E, $0188
#_0CE9C1: dw $1D4F, $0188, $1D60, $0188, $1D61

#_0CE9CB: dw $4165, $3900 ; VRAM $CA82 | 58 bytes | Horizontal
#_0CE9CF: dw $1CBA, $0188, $1CBB, $0188, $1CBC, $0188, $0188, $0188
#_0CE9DF: dw $0188, $0188, $1CDF, $0188, $1CF5, $0188, $1CF6, $0188
#_0CE9EF: dw $1CF7, $0188, $1CFD, $0188, $0188, $0188, $1D5E, $0188
#_0CE9FF: dw $1D5F, $0188, $1D70, $0188, $1D71

#_0CEA09: dw $6165, $3900 ; VRAM $CAC2 | 58 bytes | Horizontal
#_0CEA0D: dw $1CC2, $0188, $1CC3, $0188, $1CC4, $0188, $0188, $0188
#_0CEA1D: dw $0188, $0188, $1CEE, $0188, $1CEF, $0188, $1D05, $0188
#_0CEA2D: dw $1D06, $0188, $1D07, $0188, $0188, $0188, $1D62, $0188
#_0CEA3D: dw $1D63, $0188, $1D64, $0188, $1D65

#_0CEA47: dw $8165, $3900 ; VRAM $CB02 | 58 bytes | Horizontal
#_0CEA4B: dw $1CD2, $0188, $1CD3, $0188, $1CD4, $0188, $0188, $0188
#_0CEA5B: dw $0188, $0188, $1CFE, $0188, $1CFF, $0188, $1D15, $0188
#_0CEA6B: dw $1D16, $0188, $1D17, $0188, $0188, $0188, $1D72, $0188
#_0CEA7B: dw $1D73, $0188, $1D74, $0188, $1D75

#_0CEA85: dw $A165, $3900 ; VRAM $CB42 | 58 bytes | Horizontal
#_0CEA89: dw $1CCA, $0188, $1CCB, $0188, $1CCC, $0188, $0188, $0188
#_0CEA99: dw $0188, $0188, $1D0D, $0188, $1D0E, $0188, $1D0F, $0188
#_0CEAA9: dw $1D20, $0188, $1D21, $0188, $0188, $0188, $1D66, $0188
#_0CEAB9: dw $1D67, $0188, $1D68, $0188, $1D69

#_0CEAC3: dw $C165, $3900 ; VRAM $CB82 | 58 bytes | Horizontal
#_0CEAC7: dw $1CDA, $0188, $1CDB, $0188, $1CDC, $0188, $0188, $0188
#_0CEAD7: dw $0188, $0188, $1D1D, $0188, $1D1E, $0188, $1D1F, $0188
#_0CEAE7: dw $1D30, $0188, $1D31, $0188, $0188, $0188, $1D76, $0188
#_0CEAF7: dw $1D77, $0188, $1D78, $0188, $1D79

#_0CEB01: dw $E165, $3900 ; VRAM $CBC2 | 58 bytes | Horizontal
#_0CEB05: dw $1CE2, $0188, $1CE3, $0188, $1CE4, $0188, $0188, $0188
#_0CEB15: dw $0188, $0188, $1D22, $0188, $1D23, $0188, $1D24, $0188
#_0CEB25: dw $1D25, $0188, $1D26, $0188, $1D88, $0188, $1D6A, $0188
#_0CEB35: dw $1D6B, $0188, $1D6C, $0188, $1D6D

#_0CEB3F: dw $0166, $3900 ; VRAM $CC02 | 58 bytes | Horizontal
#_0CEB43: dw $1CF2, $0188, $1CF3, $0188, $1CF4, $0188, $0188, $0188
#_0CEB53: dw $0188, $0188, $1D32, $0188, $1D33, $0188, $1D34, $0188
#_0CEB63: dw $1D35, $0188, $1D36, $0188, $1D88, $0188, $1D7A, $0188
#_0CEB73: dw $1D7B, $0188, $1D7C, $0188, $1D7D

#_0CEB7D: dw $2166, $3900 ; VRAM $CC42 | 58 bytes | Horizontal
#_0CEB81: dw $1CEA, $0188, $1CEB, $0188, $1CEC, $0188, $0188, $0188
#_0CEB91: dw $0188, $0188, $1D2B, $0188, $1D2C, $0188, $1D2D, $0188
#_0CEBA1: dw $1D2E, $0188, $1D2F, $0188, $1D88, $0188, $1D6E, $0188
#_0CEBB1: dw $1D6F, $0188, $1D80, $0188, $1D81

#_0CEBBB: dw $4166, $3900 ; VRAM $CC82 | 58 bytes | Horizontal
#_0CEBBF: dw $1CFA, $0188, $1CFB, $0188, $1CFC, $0188, $0188, $0188
#_0CEBCF: dw $0188, $0188, $1D3B, $0188, $1D3C, $0188, $1D3D, $0188
#_0CEBDF: dw $1D3E, $0188, $1D3F, $0188, $1D88, $0188, $1D7E, $0188
#_0CEBEF: dw $1D7F, $0188, $1D90, $0188, $1D91

#_0CEBF9: dw $6166, $3900 ; VRAM $CCC2 | 58 bytes | Horizontal
#_0CEBFD: dw $1D02, $0188, $1D03, $0188, $1D04, $0188, $0188, $0188
#_0CEC0D: dw $0188, $0188, $1D27, $0188, $1D28, $0188, $1D29, $0188
#_0CEC1D: dw $0188, $0188, $1D2A, $1D88, $0188, $0188, $1D82, $0188
#_0CEC2D: dw $1D83, $0188, $1D89, $0188, $1D8E

#_0CEC37: dw $8166, $3900 ; VRAM $CD02 | 58 bytes | Horizontal
#_0CEC3B: dw $1D12, $0188, $1D13, $0188, $1D14, $0188, $0188, $0188
#_0CEC4B: dw $0188, $0188, $1D37, $0188, $1D38, $0188, $1D39, $0188
#_0CEC5B: dw $0188, $0188, $1D3A, $1D88, $0188, $0188, $1D92, $0188
#_0CEC6B: dw $1D93, $0188, $1D99, $0188, $1D9E

#_0CEC75: dw $A166, $0900 ; VRAM $CD42 | 10 bytes | Horizontal
#_0CEC79: dw $1CA6, $0188, $0188, $0188, $1CA7

#_0CEC83: dw $C166, $0900 ; VRAM $CD82 | 10 bytes | Horizontal
#_0CEC87: dw $1CB6, $0188, $0188, $0188, $1CB7

#_0CEC91: dw $E166, $0900 ; VRAM $CDC2 | 10 bytes | Horizontal
#_0CEC95: dw $1D0A, $0188, $1D0B, $0188, $1D0C

#_0CEC9F: dw $0167, $0900 ; VRAM $CE02 | 10 bytes | Horizontal
#_0CECA3: dw $1D1A, $0188, $1D1B, $0188, $1D1C

#_0CECAD: dw $2167, $0900 ; VRAM $CE42 | 10 bytes | Horizontal
#_0CECB1: dw $1CAF, $0188, $0188, $0188, $1D89

#_0CECBB: dw $4167, $0900 ; VRAM $CE82 | 10 bytes | Horizontal
#_0CECBF: dw $1CBF, $0188, $0188, $0188, $1D99

#_0CECC9: dw $F766, $0D00 ; VRAM $CDEE | 14 bytes | Horizontal
#_0CECCD: dw $1D8A, $0188, $1D8B, $0188, $1D4E, $1D67, $1D4D

#_0CECDB: dw $1767, $0D00 ; VRAM $CE2E | 14 bytes | Horizontal
#_0CECDF: dw $1D9A, $0188, $1D9B, $0188, $1D5E, $1D77, $1D5D

#_0CECED: db $FF ; end of stripes data

;===================================================================================================

pool Intro_DisplayLogo

.object_a
#_0CECEE: db $60, $70, $80, $88

.object_b
#_0CECF2: db $69, $6B, $6D, $6E

pool off

;---------------------------------------------------------------------------------------------------

Intro_DisplayLogo:
#_0CECF6: PHB
#_0CECF7: PHK
#_0CECF8: PLB

#_0CECF9: LDY.b #$03
#_0CECFB: LDX.b #$0C

.next
#_0CECFD: LDA.b #$02
#_0CECFF: STA.w $0A20,Y

#_0CED02: LDA.w .object_a,Y
#_0CED05: STA.w $0800,X

#_0CED08: LDA.b #$68
#_0CED0A: STA.w $0801,X

#_0CED0D: LDA.w .object_b,Y
#_0CED10: STA.w $0802,X

#_0CED13: LDA.b #$32
#_0CED15: STA.w $0803,X

#_0CED18: DEX
#_0CED19: DEX
#_0CED1A: DEX
#_0CED1B: DEX

#_0CED1C: DEY
#_0CED1D: BPL .next

#_0CED1F: PLB

#_0CED20: RTS

;===================================================================================================

Module14_Attract:
#_0CED21: LDA.b $13
#_0CED23: BEQ .continue

#_0CED25: CMP.b #$80
#_0CED27: BEQ .continue

#_0CED29: LDA.b $22
#_0CED2B: BEQ .continue

#_0CED2D: CMP.b #$02
#_0CED2F: BEQ .continue

#_0CED31: CMP.b #$06
#_0CED33: BEQ .continue

; Check for B or Start
#_0CED35: LDA.b $F4
#_0CED37: AND.b #$90
#_0CED39: BEQ .continue

#_0CED3B: LDA.b #$09
#_0CED3D: STA.b $22

.continue
#_0CED3F: LDA.b $22
#_0CED41: ASL A
#_0CED42: TAX

#_0CED43: JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

.vectors
#_0CED46: dw Attract_FadeOut          ; 0x00
#_0CED48: dw Attract_Initialize       ; 0x01
#_0CED4A: dw Attract_FadeOutSequence  ; 0x02
#_0CED4C: dw Attract_LoadNewScene     ; 0x03
#_0CED4E: dw Attract_FadeInSequence   ; 0x04
#_0CED50: dw Attract_EnactStory       ; 0x05
#_0CED52: dw Attract_FadeOutSequence  ; 0x06
#_0CED54: dw Attract_LoadNewScene     ; 0x07
#_0CED56: dw Attract_EnactStory       ; 0x08
#_0CED58: dw Attract_SkipToFileSelect ; 0x09

;===================================================================================================

Attract_FadeOut:
#_0CED5A: LDA.b $13
#_0CED5C: BEQ .fully_faded

#_0CED5E: DEC.b $13

#_0CED60: RTL

;---------------------------------------------------------------------------------------------------

.fully_faded
#_0CED61: JSL EnableForceBlank

#_0CED65: LDA.b #$FF
#_0CED67: STA.w $0128

#_0CED6A: STZ.w $012A
#_0CED6D: STZ.w $1F0C

#_0CED70: INC.b $22

#_0CED72: RTL

;===================================================================================================

Attract_Initialize:
#_0CED73: LDX.b #$50

.next
#_0CED75: STZ.b $20,X

#_0CED77: DEX
#_0CED78: BPL .next

#_0CED7A: JSL EraseTilemaps_normal
#_0CED7E: JSL Attract_LoadBG3GFX

#_0CED82: LDA.b #$01
#_0CED84: STA.w $0AB2
#_0CED87: STZ.w $0AA9
#_0CED8A: JSL Palettes_Load_HUD

#_0CED8E: LDA.b #$02
#_0CED90: STA.w $0AA9
#_0CED93: JSL Palettes_Load_HUD

#_0CED97: JSL Palettes_Load_LinkArmorAndGloves

#_0CED9B: LDA.b #$00 ; RGB: #000070
#_0CED9D: STA.l $7EC53A

#_0CEDA1: LDA.b #$38
#_0CEDA3: STA.l $7EC53B

#_0CEDA7: INC.b $15

;---------------------------------------------------------------------------------------------------

#_0CEDA9: LDA.b #$14
#_0CEDAB: STA.b $EA

#_0CEDAD: JSR Attract_BuildBackgrounds

#_0CEDB0: REP #$10

#_0CEDB2: STZ.w $1CD8

; Message 0110
#_0CEDB5: LDX.w #$0110
#_0CEDB8: STX.w $1CF0

#_0CEDBB: STZ.b $E8
#_0CEDBD: STZ.b $E9

#_0CEDBF: LDX.w #$0E9C
#_0CEDC2: STX.w $0200

#_0CEDC5: INC.b $22
#_0CEDC7: INC.b $22
#_0CEDC9: INC.b $22

#_0CEDCB: SEP #$10

#_0CEDCD: JSR Attract_SetUpWindowingHDMA

;---------------------------------------------------------------------------------------------------

#_0CEDD0: STZ.b $96
#_0CEDD2: STZ.b $97

#_0CEDD4: LDA.b #$B0
#_0CEDD6: STA.b $98

#_0CEDD8: LDA.b #$03
#_0CEDDA: STA.b $1E
#_0CEDDC: STZ.b $1F

#_0CEDDE: LDA.b #$25 ; Fixed color RGB: #282828
#_0CEDE0: STA.b $9C

#_0CEDE2: LDA.b #$45
#_0CEDE4: STA.b $9D

#_0CEDE6: LDA.b #$85
#_0CEDE8: STA.b $9E

#_0CEDEA: LDA.b #$10
#_0CEDEC: STA.b $99

#_0CEDEE: LDA.b #$A3
#_0CEDF0: STA.b $9A

#_0CEDF2: STZ.w WBGLOG
#_0CEDF5: STZ.w WOBJLOG

#_0CEDF8: LDA.b #$C0
#_0CEDFA: STA.b $9B

#_0CEDFC: LDA.b #$06 ; SONG 06
#_0CEDFE: STA.w $012C

#_0CEE01: INC.b $27

#_0CEE03: RTL

;===================================================================================================

Attract_FadeInStep:
#_0CEE04: LDA.b $13
#_0CEE06: CMP.b #$0F
#_0CEE08: BEQ .step

#_0CEE0A: DEC.b $5E
#_0CEE0C: BPL .exit

#_0CEE0E: INC.b $13

#_0CEE10: LDA.b #$01
#_0CEE12: STA.b $5E

.exit
#_0CEE14: RTS

.step
#_0CEE15: INC.b $5F

#_0CEE17: RTS

;===================================================================================================

Attract_FadeInSequence:
#_0CEE18: LDA.b $13
#_0CEE1A: CMP.b #$0F
#_0CEE1C: BEQ Attract_FadedSequenceAdvance

#_0CEE1E: DEC.b $5E
#_0CEE20: BPL .exit

#_0CEE22: INC.b $13

#_0CEE24: LDA.b #$01
#_0CEE26: STA.b $5E

.exit
#_0CEE28: RTL

;===================================================================================================

Attract_FadeOutSequence:
#_0CEE29: LDA.b $13
#_0CEE2B: BEQ .advance

#_0CEE2D: DEC.b $5E
#_0CEE2F: BPL .exit

#_0CEE31: DEC.b $13

#_0CEE33: LDA.b #$01
#_0CEE35: STA.b $5E

.exit
#_0CEE37: RTL

.advance
#_0CEE38: JSL EnableForceBlank
#_0CEE3C: JSL EraseTilemaps_normal

;===================================================================================================

Attract_FadedSequenceAdvance:
#_0CEE40: INC.b $22

#_0CEE42: RTL

;===================================================================================================

Attract_LoadNewScene:
#_0CEE43: LDA.b $23
#_0CEE45: ASL A
#_0CEE46: TAX

#_0CEE47: JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

.vectors
#_0CEE4A: dw AttractScene_PolkaDots    ; 0x00
#_0CEE4C: dw AttractScene_WorldMap     ; 0x01
#_0CEE4E: dw AttractScene_ThroneRoom   ; 0x02
#_0CEE50: dw AttractScene_Prison       ; 0x03
#_0CEE52: dw AttractScene_AgahnimAltar ; 0x04
#_0CEE54: dw AttractScene_EndOfStory   ; 0x05

;===================================================================================================

AttractScene_PolkaDots:
#_0CEE56: STZ.b $26

#_0CEE58: INC.b $22

#_0CEE5A: STZ.b $13

#_0CEE5C: RTL

;===================================================================================================

AttractScene_WorldMap:
#_0CEE5D: LDA.b #$13
#_0CEE5F: STA.w BG1SC

#_0CEE62: LDA.b #$03
#_0CEE64: STA.w BG2SC

#_0CEE67: LDA.b #$80
#_0CEE69: STA.b $99

#_0CEE6B: LDA.b #$21
#_0CEE6D: STA.b $9A

#_0CEE6F: LDA.b #$07
#_0CEE71: STA.w BGMODE
#_0CEE74: STA.b $94

#_0CEE76: LDA.b #$80
#_0CEE78: STA.w M7SEL

#_0CEE7B: JSL WorldMap_LoadLightWorldMap

;---------------------------------------------------------------------------------------------------

#_0CEE7F: REP #$20

#_0CEE81: LDA.w #$00ED
#_0CEE84: STA.w $063A

#_0CEE87: LDA.w #$0100
#_0CEE8A: STA.w $0638

#_0CEE8D: LDA.w #$0080
#_0CEE90: STA.w $0120

#_0CEE93: LDA.w #$00C0
#_0CEE96: STA.w $0124

#_0CEE99: SEP #$20

#_0CEE9B: LDA.b #$FF
#_0CEE9D: STA.w $0637

#_0CEEA0: JSR Attract_ControlMapZoom

#_0CEEA3: LDA.b #$01
#_0CEEA5: STA.b $25

#_0CEEA7: INC.b $22

#_0CEEA9: STZ.b $13

#_0CEEAB: RTL

;===================================================================================================

AttractScene_ThroneRoom:
#_0CEEAC: STZ.w HDMAEN
#_0CEEAF: STZ.b $9B

#_0CEEB1: LDA.b #$02
#_0CEEB3: STA.b $99

#_0CEEB5: LDA.b #$20
#_0CEEB7: STA.b $9A

#_0CEEB9: LDA.b #$0A
#_0CEEBB: STA.w $0AA4

#_0CEEBE: JSL LoadCommonSprites_long

#_0CEEC2: REP #$20

#_0CEEC4: LDA.b $20
#_0CEEC6: PHA

#_0CEEC7: LDA.b $22
#_0CEEC9: PHA

#_0CEECA: SEP #$20

#_0CEECC: LDA.b #$74
#_0CEECE: JSL Underworld_LoadAndDrawEntranceRoom

;---------------------------------------------------------------------------------------------------

#_0CEED2: REP #$20

#_0CEED4: PLA
#_0CEED5: STA.b $22

#_0CEED7: PLA
#_0CEED8: STA.b $20

#_0CEEDA: SEP #$20

#_0CEEDC: LDA.b #$00
#_0CEEDE: STA.w $0AB6

#_0CEEE1: LDA.b #$00
#_0CEEE3: STA.w $0AAC

#_0CEEE6: LDA.b #$0E
#_0CEEE8: STA.w $0AAD

#_0CEEEB: LDA.b #$03
#_0CEEED: STA.w $0AAE

#_0CEEF0: LDX.b #$7E
#_0CEEF2: LDA.b #$00
#_0CEEF4: JSL Underworld_SaveAndLoadLoadAllPalettes

#_0CEEF8: LDA.b #$00 ; RGB: #0008C0
#_0CEEFA: STA.l $7EC53A

#_0CEEFE: LDA.b #$38
#_0CEF00: STA.l $7EC53B

;---------------------------------------------------------------------------------------------------

#_0CEF04: STZ.w $1CD8

; Message 0111
#_0CEF07: LDA.b #$11
#_0CEF09: STA.w $1CF0

#_0CEF0C: LDA.b #$01
#_0CEF0E: STA.w $1CF1

#_0CEF11: LDA.b #$02
#_0CEF13: STA.b $25

#_0CEF15: LDA.b #$E0
#_0CEF17: STA.b $2C

#_0CEF19: LDA.b #$C0
#_0CEF1B: STA.b $64

;===================================================================================================

AttractScene_AdvanceFromDungeon:
#_0CEF1D: INC.b $22

#_0CEF1F: STZ.b $13
#_0CEF21: STZ.b $EA

#_0CEF23: LDA.w $011F
#_0CEF26: AND.b #$01
#_0CEF28: STA.w $011F

#_0CEF2B: LDA.w $0123
#_0CEF2E: AND.b #$01
#_0CEF30: STA.w $0123

#_0CEF33: LDA.b $E3
#_0CEF35: AND.b #$01
#_0CEF37: STA.b $E3

#_0CEF39: LDA.b $E9
#_0CEF3B: AND.b #$01
#_0CEF3D: STA.b $E9

#_0CEF3F: RTL

;===================================================================================================

AttractScene_Prison:
#_0CEF40: STZ.b $99
#_0CEF42: STZ.b $9A

#_0CEF44: REP #$20

#_0CEF46: LDA.b $20
#_0CEF48: PHA

#_0CEF49: LDA.b $22
#_0CEF4B: PHA

#_0CEF4C: SEP #$20

#_0CEF4E: LDA.b #$73
#_0CEF50: JSL Underworld_LoadAndDrawEntranceRoom

#_0CEF54: REP #$20

#_0CEF56: PLA
#_0CEF57: STA.b $22

#_0CEF59: PLA
#_0CEF5A: STA.b $20

#_0CEF5C: SEP #$20

#_0CEF5E: LDA.b #$02
#_0CEF60: STA.w $0AB6

#_0CEF63: LDA.b #$00
#_0CEF65: STA.w $0AAC

#_0CEF68: LDA.b #$0E
#_0CEF6A: STA.w $0AAD

#_0CEF6D: LDA.b #$03
#_0CEF6F: STA.w $0AAE

#_0CEF72: LDX.b #$7F
#_0CEF74: LDA.b #$01
#_0CEF76: JSL Underworld_SaveAndLoadLoadAllPalettes

#_0CEF7A: LDA.b #$00 ; RGB: #000070
#_0CEF7C: STA.l $7EC53A

#_0CEF80: LDA.b #$38
#_0CEF82: STA.l $7EC53B

;---------------------------------------------------------------------------------------------------

#_0CEF86: STZ.w $1CD8

; Message 0112
#_0CEF89: LDA.b #$12
#_0CEF8B: STA.w $1CF0

#_0CEF8E: LDA.b #$01
#_0CEF90: STA.w $1CF1

#_0CEF93: LDA.b #$94
#_0CEF95: STA.b $2B

#_0CEF97: LDA.b #$68
#_0CEF99: STA.b $30

#_0CEF9B: STZ.b $31
#_0CEF9D: STZ.b $32
#_0CEF9F: STZ.b $33

#_0CEFA1: STZ.b $40
#_0CEFA3: STZ.b $50
#_0CEFA5: STZ.b $5F

#_0CEFA7: LDA.b #$FF
#_0CEFA9: STA.b $25

#_0CEFAB: LDA.b #$D0
#_0CEFAD: STA.b $64

#_0CEFAF: JMP.w AttractScene_AdvanceFromDungeon

;===================================================================================================

AttractScene_AgahnimAltar:
#_0CEFB2: REP #$20

#_0CEFB4: LDA.b $20
#_0CEFB6: PHA

#_0CEFB7: LDA.b $22
#_0CEFB9: PHA

#_0CEFBA: SEP #$20

#_0CEFBC: LDA.b #$75
#_0CEFBE: JSL Underworld_LoadAndDrawEntranceRoom

#_0CEFC2: REP #$20

#_0CEFC4: PLA
#_0CEFC5: STA.b $22

#_0CEFC7: PLA
#_0CEFC8: STA.b $20

#_0CEFCA: SEP #$20

#_0CEFCC: LDA.b #$00
#_0CEFCE: STA.w $0AB6

#_0CEFD1: LDA.b #$00
#_0CEFD3: STA.w $0AAC

#_0CEFD6: LDA.b #$0E
#_0CEFD8: STA.w $0AAD

#_0CEFDB: LDA.b #$03
#_0CEFDD: STA.w $0AAE

#_0CEFE0: STZ.w $0AA9
#_0CEFE3: JSL Underworld_LoadAllPalettes

#_0CEFE7: LDX.b #$7F
#_0CEFE9: LDA.b #$02
#_0CEFEB: JSL Underworld_SaveAndLoadLoadAllPalettes

#_0CEFEF: LDA.b #$00 ; RGB: #0008C0
#_0CEFF1: STA.l $7EC33A
#_0CEFF5: STA.l $7EC53A

#_0CEFF9: LDA.b #$38
#_0CEFFB: STA.l $7EC33B
#_0CEFFF: STA.l $7EC53B

;---------------------------------------------------------------------------------------------------

#_0CF003: STZ.w $1CD8

; Message 0113
#_0CF006: LDA.b #$13
#_0CF008: STA.w $1CF0

#_0CF00B: LDA.b #$01
#_0CF00D: STA.w $1CF1

#_0CF010: LDA.b #$FF
#_0CF012: STA.b $25

#_0CF014: LDA.b #$70
#_0CF016: STA.b $30
#_0CF018: STA.b $62

#_0CF01A: LDA.b #$70
#_0CF01C: STA.b $63

#_0CF01E: LDA.b #$08
#_0CF020: STA.b $32

#_0CF022: STZ.b $50
#_0CF024: STZ.b $51
#_0CF026: STZ.b $52

#_0CF028: STZ.b $5F
#_0CF02A: STZ.b $60
#_0CF02C: STZ.b $61

#_0CF02E: LDA.b #$C0
#_0CF030: STA.b $64

#_0CF032: JMP.w AttractScene_AdvanceFromDungeon

;===================================================================================================

AttractScene_EndOfStory:
#_0CF035: REP #$20

#_0CF037: JSL Attract_SetUpConclusionHDMA

;===================================================================================================

InitializeTriforceIntro:
#_0CF03B: INC.w $0710

#_0CF03E: JSL Intro_InitializeDefaultGFX
#_0CF042: JSL Overworld_LoadAllPalettes_long
#_0CF046: JSL DecompressFontGFX

#_0CF04A: STZ.b $EA

#_0CF04C: REP #$20

#_0CF04E: STZ.w $063A
#_0CF051: STZ.w $0638

#_0CF054: STZ.w $0120
#_0CF057: STZ.w $0124

#_0CF05A: SEP #$20

#_0CF05C: LDA.b #$F1 ; SONG F1 - fade
#_0CF05E: STA.w $012C

#_0CF061: STZ.b $23
#_0CF063: STZ.b $10

#_0CF065: LDA.b #$08
#_0CF067: STA.b $11
#_0CF069: STA.b $B0

#_0CF06B: RTL

;===================================================================================================

Attract_EnactStory:
#_0CF06C: LDA.b $23
#_0CF06E: ASL A
#_0CF06F: TAX

#_0CF070: JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

.vectors
#_0CF073: dw AttractDramatize_PolkaDots    ; 0x00
#_0CF075: dw AttractDramatize_WorldMap     ; 0x01
#_0CF077: dw AttractDramatize_ThroneRoom   ; 0x02
#_0CF079: dw AttractDramatize_Prison       ; 0x03
#_0CF07B: dw AttractDramatize_AgahnimAltar ; 0x04

;===================================================================================================

AttractDramatize_PolkaDots:
#_0CF07D: LDA.b $1A
#_0CF07F: AND.b #$03
#_0CF081: BNE .delay_scroll

#_0CF083: INC.w $0124
#_0CF086: INC.w $0120
#_0CF089: INC.w $0122
#_0CF08C: DEC.w $011E

.delay_scroll
#_0CF08F: LDA.b $27
#_0CF091: BEQ .delay_map_update

#_0CF093: JSR Attract_BuildNextImageTilemap

#_0CF096: STZ.b $27

#_0CF098: INC.b $26
#_0CF09A: INC.b $26

.delay_map_update
#_0CF09C: STZ.b $F2
#_0CF09E: STZ.b $F6
#_0CF0A0: STZ.b $F4

#_0CF0A2: JSL RenderText

#_0CF0A6: REP #$20

#_0CF0A8: DEC.w $0200
#_0CF0AB: BNE .delay_sequence

#_0CF0AD: SEP #$20

#_0CF0AF: INC.b $23

#_0CF0B1: DEC.b $22
#_0CF0B3: DEC.b $22
#_0CF0B5: DEC.b $22

#_0CF0B7: BRA .exit

;---------------------------------------------------------------------------------------------------

.delay_sequence
#_0CF0B9: LDA.w $0200
#_0CF0BC: CMP.w #$0018
#_0CF0BF: BCS .exit

#_0CF0C1: AND.w #$0001
#_0CF0C4: BEQ .exit

#_0CF0C6: SEP #$20

#_0CF0C8: DEC.b $13

.exit
#_0CF0CA: SEP #$20

#_0CF0CC: RTL

;===================================================================================================

AttractDramatize_WorldMap:
#_0CF0CD: LDA.w $0637
#_0CF0D0: CMP.b #$00
#_0CF0D2: BEQ .advance_sequence

#_0CF0D4: CMP.b #$0F
#_0CF0D6: BCS .skip_fade

#_0CF0D8: DEC.b $13

.skip_fade
#_0CF0DA: LDY.b #$01

#_0CF0DC: DEC.b $25
#_0CF0DE: BNE .exit

#_0CF0E0: STY.b $25

#_0CF0E2: LDA.w $0637
#_0CF0E5: SEC
#_0CF0E6: SBC.b #$01
#_0CF0E8: STA.w $0637

#_0CF0EB: JSR Attract_ControlMapZoom

.exit
#_0CF0EE: RTL

;---------------------------------------------------------------------------------------------------

.advance_sequence
#_0CF0EF: JSL EnableForceBlank

#_0CF0F3: LDA.b #$09
#_0CF0F5: STA.w BGMODE
#_0CF0F8: STA.b $94

#_0CF0FA: JSL EraseTilemaps_normal

#_0CF0FE: INC.b $23

#_0CF100: DEC.b $22
#_0CF102: DEC.b $22

#_0CF104: RTL

;---------------------------------------------------------------------------------------------------

pool AttractDramatize_ThroneRoom

.pointer_size
#_0CF105: dw AttractOAMData_king_size
#_0CF107: dw AttractOAMData_mantle_size

.pointer_offset_x
#_0CF109: dw AttractOAMData_king_offset_x
#_0CF10B: dw AttractOAMData_mantle_offset_x

.pointer_offset_y
#_0CF10D: dw AttractOAMData_king_offset_y
#_0CF10F: dw AttractOAMData_mantle_offset_y

.pointer_char
#_0CF111: dw AttractOAMData_king_char
#_0CF113: dw AttractOAMData_mantle_char

.pointer_prop
#_0CF115: dw AttractOAMData_king_prop
#_0CF117: dw AttractOAMData_mantle_prop

;---------------------------------------------------------------------------------------------------

.offset_x
#_0CF119: db $50 ; king
#_0CF11A: db $68 ; mantle

.offset_y
#_0CF11B: db $58 ; king
#_0CF11C: db $20 ; mantle

;---------------------------------------------------------------------------------------------------

.oam_count
#_0CF11D: db $03 ; king
#_0CF11E: db $05 ; mantle

pool off

;===================================================================================================

AttractDramatize_ThroneRoom:
#_0CF11F: STZ.b $2A

; this flags brightness being maxed
#_0CF121: LDA.b $52
#_0CF123: BNE .continue

#_0CF125: LDA.b $13
#_0CF127: CMP.b #$0F
#_0CF129: BEQ .max_brightness

#_0CF12B: INC.b $13

#_0CF12D: BRA .continue

.max_brightness
#_0CF12F: INC.b $52

;---------------------------------------------------------------------------------------------------

.continue
#_0CF131: REP #$20

#_0CF133: LDA.w $0122
#_0CF136: BNE .scroll_screen

#_0CF138: SEP #$20

#_0CF13A: JSR Attract_DoTextInDungeonScene

#_0CF13D: LDA.b $64
#_0CF13F: BNE .continue_dramatization

#_0CF141: LDA.b $2C
#_0CF143: CMP.b #$1F
#_0CF145: BCS .dont_fade_out

#_0CF147: AND.b #$01
#_0CF149: BNE .dont_fade_out

#_0CF14B: DEC.b $13

.dont_fade_out
#_0CF14D: DEC.b $2C
#_0CF14F: BNE .continue_dramatization

#_0CF151: INC.b $23
#_0CF153: INC.b $22

#_0CF155: RTL

;---------------------------------------------------------------------------------------------------

.scroll_screen
#_0CF156: DEC.w $0122
#_0CF159: DEC.w $0124

;---------------------------------------------------------------------------------------------------

.continue_dramatization
#_0CF15C: SEP #$20

#_0CF15E: LDX.b #$02

.next_entity
#_0CF160: PHX

#_0CF161: REP #$20

#_0CF163: LDA.l .pointer_size,X
#_0CF167: STA.b $2D

#_0CF169: LDA.l .pointer_offset_x,X
#_0CF16D: STA.b $02

#_0CF16F: LDA.l .pointer_offset_y,X
#_0CF173: STA.b $04

#_0CF175: LDA.l .pointer_char,X
#_0CF179: STA.b $06

#_0CF17B: LDA.l .pointer_prop,X
#_0CF17F: STA.b $08

#_0CF181: TXA
#_0CF182: AND.w #$00FF
#_0CF185: LSR A
#_0CF186: TAX

#_0CF187: LDA.l .offset_y,X
#_0CF18B: AND.w #$00FF
#_0CF18E: SEC
#_0CF18F: SBC.w $0122
#_0CF192: STA.b $00

#_0CF194: CMP.w #$FFE0

#_0CF197: SEP #$20
#_0CF199: BMI .off_screen

#_0CF19B: LDA.l .offset_x,X
#_0CF19F: STA.b $28

#_0CF1A1: LDA.b $00
#_0CF1A3: STA.b $29

#_0CF1A5: LDA.l .oam_count,X
#_0CF1A9: TAY

#_0CF1AA: JSR Attract_DrawPreloadedSprite

.off_screen
#_0CF1AD: PLX

#_0CF1AE: DEX
#_0CF1AF: DEX
#_0CF1B0: BPL .next_entity

#_0CF1B2: RTL

;===================================================================================================

pool AttractDramatize_Prison

.soldier_offset_x
#_0CF1B3: dw  32, -12

.soldier_offset_y
#_0CF1B7: db  24,  24

.soldier_direction
#_0CF1B9: db $01, $01

.soldier_palette
#_0CF1BB: db $09, $07

;---------------------------------------------------------------------------------------------------

.maiden_jab_offset_x
#_0CF1BD: db  0,  1,  2,  3
#_0CF1C1: db  4,  5,  5,  5
#_0CF1C5: db  4,  4,  3,  3
#_0CF1C9: db  2,  2,  1,  1

pool off

;---------------------------------------------------------------------------------------------------

AttractDramatize_Prison:
#_0CF1CD: STZ.b $2A

#_0CF1CF: LDA.b $5F
#_0CF1D1: BNE .skip_fade

#_0CF1D3: JSR Attract_FadeInStep

.skip_fade
#_0CF1D6: LDA.b #$38
#_0CF1D8: STA.b $28

#_0CF1DA: JSR Attract_DrawZelda

#_0CF1DD: LDA.b $25
#_0CF1DF: CMP.b #$C0
#_0CF1E1: BCS .delay_agahnim

#_0CF1E3: JMP.w AttractDramatize_Agahnim

.delay_agahnim
#_0CF1E6: LDA.b #$70
#_0CF1E8: STA.b $29

#_0CF1EA: DEC.b $50
#_0CF1EC: BPL .dont_reset_jab

#_0CF1EE: LDA.b #$0F
#_0CF1F0: STA.b $50

.dont_reset_jab
#_0CF1F2: LDX.b $50

#_0CF1F4: LDA.b $31
#_0CF1F6: STA.b $40

#_0CF1F8: LDA.b $30
#_0CF1FA: CLC
#_0CF1FB: ADC.l .maiden_jab_offset_x,X
#_0CF1FF: STA.b $28

#_0CF201: BCC .dont_disable_maiden

#_0CF203: INC.b $40

.dont_disable_maiden
#_0CF205: JSR Attract_DrawKidnappedMaiden

;---------------------------------------------------------------------------------------------------

#_0CF208: LDX.b #$01

.next_soldier
#_0CF20A: STZ.b $03

#_0CF20C: LDA.b $33
#_0CF20E: STA.b $06

#_0CF210: LDA.b $29
#_0CF212: CLC
#_0CF213: ADC.l .soldier_offset_y,X
#_0CF217: STA.b $02

#_0CF219: LDA.l .soldier_direction,X
#_0CF21D: STA.b $04

#_0CF21F: LDA.l .soldier_palette,X
#_0CF223: STA.b $05

#_0CF225: PHX

#_0CF226: REP #$20

#_0CF228: TXA
#_0CF229: ASL A
#_0CF22A: TAX

#_0CF22B: LDA.b $30
#_0CF22D: CLC
#_0CF22E: ADC.w #$0100

#_0CF231: CLC
#_0CF232: ADC.l .soldier_offset_x,X
#_0CF236: STA.b $00

#_0CF238: TAY
#_0CF239: STY.b $34

#_0CF23B: SEP #$20

#_0CF23D: JSL SpritePrep_ResetProperties
#_0CF241: JSL PuppetSoldier

#_0CF245: PLX
#_0CF246: DEX
#_0CF247: BPL .next_soldier

;---------------------------------------------------------------------------------------------------

#_0CF249: INC.b $32

#_0CF24B: LDA.b $32
#_0CF24D: AND.b #$07
#_0CF24F: BNE AttractDramatize_Agahnim

#_0CF251: LDY.b #$FF

#_0CF253: LDA.b $33
#_0CF255: CMP.b #$02
#_0CF257: BNE .delay_sfx

#_0CF259: STY.b $33

#_0CF25B: LDA.b $31
#_0CF25D: BNE .delay_sfx

#_0CF25F: LDA.b $32
#_0CF261: AND.b #$08
#_0CF263: BEQ .delay_sfx

#_0CF265: LDA.b #$04 ; SFX3.04
#_0CF267: STA.w $012F

.delay_sfx
#_0CF26A: INC.b $33

;===================================================================================================

AttractDramatize_Agahnim:
#_0CF26C: LDA.b $60
#_0CF26E: ASL A
#_0CF26F: TAX

#_0CF270: JMP.w (.vectors,X)

.vectors
#_0CF273: dw Dramaghanim_WaitForCue
#_0CF275: dw Dramaghanim_MoveAndSpin

;===================================================================================================

Dramaghanim_AdvanceStory:
#_0CF277: INC.b $23

#_0CF279: DEC.b $22
#_0CF27B: DEC.b $22

#_0CF27D: RTL

;===================================================================================================

Dramaghanim_WaitForCue:
#_0CF27E: LDA.b $34
#_0CF280: BNE .delay

#_0CF282: INC.b $60

.delay
#_0CF284: REP #$20

#_0CF286: LDA.b $1A
#_0CF288: AND.w #$0001
#_0CF28B: BEQ .delay_tick

#_0CF28D: DEC.b $30

.delay_tick
#_0CF28F: LDA.w #AttractAgahnimOAM_size
#_0CF292: STA.b $2D

#_0CF294: LDA.w #AttractAgahnimOAM_offset_x
#_0CF297: STA.b $02

#_0CF299: LDA.w #AttractAgahnimOAM_offset_y
#_0CF29C: STA.b $04

#_0CF29E: LDA.w #AttractAgahnimOAM_char_step0
#_0CF2A1: STA.b $06

#_0CF2A3: LDA.w #AttractAgahnimOAM_prop_step0
#_0CF2A6: STA.b $08

#_0CF2A8: SEP #$20

#_0CF2AA: LDA.b #$58
#_0CF2AC: STA.b $28

#_0CF2AE: LDA.b $2B
#_0CF2B0: STA.b $29

#_0CF2B2: LDY.b #$05
#_0CF2B4: JSR Attract_DrawPreloadedSprite

#_0CF2B7: RTL

;===================================================================================================

pool Dramaghanim_MoveAndSpin

.pointers_char
#_0CF2B8: dw AttractAgahnimOAM_char_step0
#_0CF2BA: dw AttractAgahnimOAM_char_step1
#_0CF2BC: dw AttractAgahnimOAM_char_step2
#_0CF2BE: dw AttractAgahnimOAM_char_step3
#_0CF2C0: dw AttractAgahnimOAM_char_step4

.pointers_prop
#_0CF2C2: dw AttractAgahnimOAM_prop_step0
#_0CF2C4: dw AttractAgahnimOAM_prop_step1
#_0CF2C6: dw AttractAgahnimOAM_prop_step2
#_0CF2C8: dw AttractAgahnimOAM_prop_step0
#_0CF2CA: dw AttractAgahnimOAM_prop_step0

pool off

;---------------------------------------------------------------------------------------------------

Dramaghanim_MoveAndSpin:
#_0CF2CC: LDA.b $25
#_0CF2CE: CMP.b #$80
#_0CF2D0: BCS .continue

#_0CF2D2: JSR Attract_DoTextInDungeonScene

#_0CF2D5: LDA.b $64
#_0CF2D7: BEQ .continue

#_0CF2D9: LDX.b #$08
#_0CF2DB: BRA .animate_agahnim

.continue
#_0CF2DD: LDX.b #$00

#_0CF2DF: LDA.b $2B
#_0CF2E1: CMP.b #$6E
#_0CF2E3: BEQ .timer_maxed

#_0CF2E5: DEC.b $2B
#_0CF2E7: BRA .animate_agahnim

.timer_maxed
#_0CF2E9: LDA.b $25
#_0CF2EB: CMP.b #$1F
#_0CF2ED: BCS .delay_fade

#_0CF2EF: AND.b #$01
#_0CF2F1: BNE .delay_fade

#_0CF2F3: DEC.b $13

.delay_fade
#_0CF2F5: DEC.b $25
#_0CF2F7: BNE .dont_advance_story

#_0CF2F9: JMP.w Dramaghanim_AdvanceStory

;---------------------------------------------------------------------------------------------------

.dont_advance_story
#_0CF2FC: LDA.b $25
#_0CF2FE: CMP.b #$C0
#_0CF300: BCS .animate_agahnim

#_0CF302: INX
#_0CF303: INX

#_0CF304: CMP.b #$B8
#_0CF306: BCS .animate_agahnim

#_0CF308: INX
#_0CF309: INX

#_0CF30A: CMP.b #$B0
#_0CF30C: BCS .animate_agahnim

#_0CF30E: INX
#_0CF30F: INX

#_0CF310: CMP.b #$A0
#_0CF312: BCS .animate_agahnim

#_0CF314: INX
#_0CF315: INX

;---------------------------------------------------------------------------------------------------

.animate_agahnim
#_0CF316: LDA.b #$A8
#_0CF318: STA.b $28

#_0CF31A: REP #$20

#_0CF31C: LDA.b $1A
#_0CF31E: AND.w #$0001
#_0CF321: BEQ .delay_tick

#_0CF323: DEC.b $30

.delay_tick
#_0CF325: LDA.w #AttractAgahnimOAM_size
#_0CF328: STA.b $2D

#_0CF32A: LDA.w #AttractAgahnimOAM_offset_x
#_0CF32D: STA.b $02

#_0CF32F: LDA.w #AttractAgahnimOAM_offset_y
#_0CF332: STA.b $04

#_0CF334: LDA.l .pointers_char,X
#_0CF338: STA.b $06

#_0CF33A: LDA.l .pointers_prop,X
#_0CF33E: STA.b $08

#_0CF340: SEP #$20

#_0CF342: LDA.b #$58
#_0CF344: STA.b $28

#_0CF346: LDA.b $2B
#_0CF348: STA.b $29

#_0CF34A: LDY.b #$05
#_0CF34C: JSR Attract_DrawPreloadedSprite

#_0CF34F: RTL

;===================================================================================================

pool AttractDramatize_AgahnimAltar

.soldier_position_x
#_0CF350: db $30, $C0, $30, $C0, $50, $A0

.soldier_position_y
#_0CF356: db $70, $70, $98, $98, $C0, $C0

.soldier_direction
#_0CF35C: db $00, $01, $00, $01, $03, $03

.soldier_palette
#_0CF362: db $09, $09, $09, $09, $07, $09

;---------------------------------------------------------------------------------------------------

.vectors
#_0CF368: dw Dramagahnim_RaiseTheRoof
#_0CF36A: dw Dramagahnim_ReadySpell
#_0CF36C: dw Dramagahnim_CastSpell
#_0CF36E: dw Dramagahnim_RealizeWhatJustHappened
#_0CF370: dw Dramagahnim_IdleGuiltily

pool off

;---------------------------------------------------------------------------------------------------

AttractDramatize_AgahnimAltar:
#_0CF372: LDA.b $5D
#_0CF374: BEQ .delay

#_0CF376: JMP.w Dramaghanim_AdvanceStory

.delay
#_0CF379: STZ.b $2A

#_0CF37B: JSL HandleScreenFlash

#_0CF37F: LDA.b $5F
#_0CF381: BNE .delay_fade

#_0CF383: JSR Attract_FadeInStep

.delay_fade
#_0CF386: LDA.b $50
#_0CF388: CMP.b #$FF
#_0CF38A: BEQ .delay_tick

#_0CF38C: INC.b $50

.delay_tick
#_0CF38E: LDA.w $0FF9
#_0CF391: BEQ .delay_sfx

#_0CF393: AND.b #$04
#_0CF395: BEQ .delay_sfx

#_0CF397: LDX.b #$2B ; SFX3.2B
#_0CF399: STX.w $012F

;---------------------------------------------------------------------------------------------------

.delay_sfx
#_0CF39C: LDA.b $60
#_0CF39E: ASL A
#_0CF39F: TAX

#_0CF3A0: JSR (.vectors,X)

;---------------------------------------------------------------------------------------------------

#_0CF3A3: LDX.b #$05

.next_soldier
#_0CF3A5: STZ.b $01
#_0CF3A7: STZ.b $03
#_0CF3A9: STZ.b $06

#_0CF3AB: LDA.l .soldier_position_x,X
#_0CF3AF: STA.b $00

#_0CF3B1: LDA.l .soldier_position_y,X
#_0CF3B5: STA.b $02

#_0CF3B7: LDA.l .soldier_direction,X
#_0CF3BB: STA.b $04

#_0CF3BD: LDA.l .soldier_palette,X
#_0CF3C1: STA.b $05

#_0CF3C3: PHX

#_0CF3C4: JSL SpritePrep_ResetProperties
#_0CF3C8: JSL PuppetSoldier

#_0CF3CC: PLX
#_0CF3CD: DEX
#_0CF3CE: BPL .next_soldier

;---------------------------------------------------------------------------------------------------

#_0CF3D0: LDX.b $50
#_0CF3D2: CPX.b #$A0
#_0CF3D4: BCC .continue

#_0CF3D6: LDA.b $30
#_0CF3D8: CMP.b #$60
#_0CF3DA: BEQ .tick_timer

#_0CF3DC: DEC.b $32
#_0CF3DE: BNE .continue

#_0CF3E0: DEC.b $30

#_0CF3E2: LDA.b #$08
#_0CF3E4: STA.b $32

#_0CF3E6: BRA .continue

.tick_timer
#_0CF3E8: INC.b $61

;---------------------------------------------------------------------------------------------------

.continue
#_0CF3EA: LDA.b $52
#_0CF3EC: BNE .dont_draw_maiden

#_0CF3EE: REP #$20

#_0CF3F0: LDA.w #AttractAltarMaidenOAM_size
#_0CF3F3: STA.b $2D

#_0CF3F5: LDA.w #AttractAltarMaidenOAM_offset_x
#_0CF3F8: STA.b $02

#_0CF3FA: LDA.w #AttractAltarMaidenOAM_offset_y
#_0CF3FD: STA.b $04

#_0CF3FF: LDX.b #$00

#_0CF401: LDA.b $30
#_0CF403: AND.w #$00FF
#_0CF406: CMP.w #$0070
#_0CF409: BEQ .not_airborne

#_0CF40B: INX
#_0CF40C: INX

.not_airborne
#_0CF40D: LDA.l .maiden_char_pointer,X
#_0CF411: STA.b $06

#_0CF413: LDA.w #AttractAltarMaidenOAM_prop
#_0CF416: STA.b $08

#_0CF418: SEP #$20

#_0CF41A: LDA.b #$74
#_0CF41C: STA.b $28

#_0CF41E: LDA.b $30
#_0CF420: STA.b $29

#_0CF422: LDY.b #$01
#_0CF424: JSR Attract_DrawPreloadedSprite

;---------------------------------------------------------------------------------------------------

#_0CF427: LDX.b #$0E

#_0CF429: LDA.b $30
#_0CF42B: CMP.b #$68
#_0CF42D: BCS .adjust_shadow_index

#_0CF42F: SEC
#_0CF430: SBC.b #$68

#_0CF432: ASL A
#_0CF433: AND.b #$0E
#_0CF435: TAX

.adjust_shadow_index
#_0CF436: REP #$20

#_0CF438: LDA.w #AttractAltarMaidenShadowOAM_size
#_0CF43B: STA.b $2D

#_0CF43D: LDA.l .shadow_offset_x_pointer,X
#_0CF441: STA.b $02

#_0CF443: LDA.w #AttractAltarMaidenShadowOAM_offset_y
#_0CF446: STA.b $04

#_0CF448: LDA.w #AttractAltarMaidenShadowOAM_char
#_0CF44B: STA.b $06

#_0CF44D: LDA.w #AttractAltarMaidenShadowOAM_prop
#_0CF450: STA.b $08

#_0CF452: SEP #$20

#_0CF454: TXA
#_0CF455: LSR A
#_0CF456: TAX

#_0CF457: LDA.b #$74
#_0CF459: CLC
#_0CF45A: ADC.l .shadow_base_offset_x,X
#_0CF45E: STA.b $28

#_0CF460: LDA.b #$76
#_0CF462: STA.b $29

#_0CF464: LDY.b #$01
#_0CF466: JSR Attract_DrawPreloadedSprite

;---------------------------------------------------------------------------------------------------

.dont_draw_maiden
#_0CF469: LDA.b $50

#_0CF46B: LSR A
#_0CF46C: LSR A
#_0CF46D: LSR A
#_0CF46E: LSR A

#_0CF46F: AND.b #$0E
#_0CF471: TAX

#_0CF472: REP #$20

#_0CF474: LDA.w #AttractAgahnimOAM_size
#_0CF477: STA.b $2D

#_0CF479: LDA.w #AttractAgahnimOAM_offset_x
#_0CF47C: STA.b $02

#_0CF47E: LDA.w #AttractAgahnimOAM_offset_y
#_0CF481: STA.b $04

#_0CF483: LDA.l .agahnim_char_pointer,X
#_0CF487: STA.b $06

#_0CF489: LDA.w #AttractAgahnimOAM_prop_step0
#_0CF48C: STA.b $08

#_0CF48E: SEP #$20

#_0CF490: LDA.b #$70
#_0CF492: STA.b $28

#_0CF494: LDA.b #$46
#_0CF496: STA.b $29

#_0CF498: LDY.b #$05
#_0CF49A: JSR Attract_DrawPreloadedSprite

#_0CF49D: RTL

;---------------------------------------------------------------------------------------------------

.shadow_offset_x_pointer
#_0CF49E: dw AttractAltarMaidenShadowOAM_offset_x_step0
#_0CF4A0: dw AttractAltarMaidenShadowOAM_offset_x_step0
#_0CF4A2: dw AttractAltarMaidenShadowOAM_offset_x_step1
#_0CF4A4: dw AttractAltarMaidenShadowOAM_offset_x_step1
#_0CF4A6: dw AttractAltarMaidenShadowOAM_offset_x_step2
#_0CF4A8: dw AttractAltarMaidenShadowOAM_offset_x_step2
#_0CF4AA: dw AttractAltarMaidenShadowOAM_offset_x_step3
#_0CF4AC: dw AttractAltarMaidenShadowOAM_offset_x_step4

;---------------------------------------------------------------------------------------------------

.shadow_base_offset_x
#_0CF4AE: db  4,  4,  3,  3
#_0CF4B2: db  2,  2,  1,  0

;---------------------------------------------------------------------------------------------------

.maiden_char_pointer
#_0CF4B6: dw AttractAltarMaidenOAM_char_step0
#_0CF4B8: dw AttractAltarMaidenOAM_char_step1

;---------------------------------------------------------------------------------------------------

.agahnim_char_pointer
#_0CF4BA: dw AttractAgahnimOAM_char_step3
#_0CF4BC: dw AttractAgahnimOAM_char_step5
#_0CF4BE: dw AttractAgahnimOAM_char_step3
#_0CF4C0: dw AttractAgahnimOAM_char_step6
#_0CF4C2: dw AttractAgahnimOAM_char_step3
#_0CF4C4: dw AttractAgahnimOAM_char_step5
#_0CF4C6: dw AttractAgahnimOAM_char_step3
#_0CF4C8: dw AttractAgahnimOAM_char_step4

;===================================================================================================

Dramagahnim_RaiseTheRoof:
#_0CF4CA: LDA.b $61
#_0CF4CC: BEQ .exit

#_0CF4CE: INC.b $60

.exit
#_0CF4D0: RTS

;===================================================================================================

DramagahnimSpellCharPointer:
#_0CF4D1: dw DramagahnimSpellOAM_char_step0
#_0CF4D3: dw DramagahnimSpellOAM_char_step1

;---------------------------------------------------------------------------------------------------

DramagahnimSpellPropPointer:
#_0CF4D5: dw DramagahnimSpellOAM_prop_step0
#_0CF4D7: dw DramagahnimSpellOAM_prop_step1

;---------------------------------------------------------------------------------------------------

pool Dramagahnim_ReadySpell

.oam_count
#_0CF4D9: db  1
#_0CF4DA: db  1
#_0CF4DB: db  1
#_0CF4DC: db  5
#_0CF4DD: db  5
#_0CF4DE: db  9
#_0CF4DF: db  9
#_0CF4E0: db 13

pool off

;---------------------------------------------------------------------------------------------------

Dramagahnim_ReadySpell:
#_0CF4E1: LDA.b $1A
#_0CF4E3: LSR A
#_0CF4E4: AND.b #$02
#_0CF4E6: TAX

#_0CF4E7: REP #$20

#_0CF4E9: LDA.w #DramagahnimSpellOAM_size
#_0CF4EC: STA.b $2D

#_0CF4EE: LDA.w #DramagahnimSpellOAM_offset_x
#_0CF4F1: STA.b $02

#_0CF4F3: LDA.w #DramagahnimSpellOAM_offset_y
#_0CF4F6: STA.b $04

#_0CF4F8: LDA.l DramagahnimSpellCharPointer,X
#_0CF4FC: STA.b $06

#_0CF4FE: LDA.l DramagahnimSpellPropPointer,X
#_0CF502: STA.b $08

;---------------------------------------------------------------------------------------------------

#_0CF504: SEP #$20

#_0CF506: LDA.b #$6E
#_0CF508: STA.b $28

#_0CF50A: LDA.b #$48
#_0CF50C: STA.b $29

#_0CF50E: LDA.b $51
#_0CF510: LSR A
#_0CF511: AND.b #$07
#_0CF513: TAX

#_0CF514: LDA.l .oam_count,X
#_0CF518: TAY

#_0CF519: JSR Attract_DrawPreloadedSprite

;---------------------------------------------------------------------------------------------------

#_0CF51C: LDA.b $51
#_0CF51E: BNE .delay_sfx

#_0CF520: LDY.b $63
#_0CF522: CPY.b #$70
#_0CF524: BNE .delay_sfx

#_0CF526: LDX.b #$27 ; SFX3.27
#_0CF528: STX.w $012F

;---------------------------------------------------------------------------------------------------

.delay_sfx
#_0CF52B: CMP.b #$0F
#_0CF52D: BEQ .advance

#_0CF52F: CMP.b #$06
#_0CF531: BNE .delay_other_sfx

#_0CF533: LDX.b #$90
#_0CF535: STX.w $0FF9

#_0CF538: LDX.b #$2B ; SFX3.2B
#_0CF53A: STX.w $012F

;---------------------------------------------------------------------------------------------------

.delay_other_sfx
#_0CF53D: LDA.b $63
#_0CF53F: BEQ .delay_tick

#_0CF541: DEC.b $63

#_0CF543: RTS

;---------------------------------------------------------------------------------------------------

.delay_tick
#_0CF544: INC.b $51

#_0CF546: RTS

;---------------------------------------------------------------------------------------------------

.advance
#_0CF547: INC.b $60

#_0CF549: RTS

;===================================================================================================

pool Dramagahnim_CastSpell

.oam_count
#_0CF54A: db  3
#_0CF54B: db  3
#_0CF54C: db  7
#_0CF54D: db  7
#_0CF54E: db 11
#_0CF54F: db 11
#_0CF550: db 13
#_0CF551: db 13

;---------------------------------------------------------------------------------------------------

.index_offset
#_0CF552: dw 10
#_0CF554: dw 10
#_0CF556: dw  6
#_0CF558: dw  6
#_0CF55A: dw  2
#_0CF55C: dw  2
#_0CF55E: dw  0
#_0CF560: dw  0

pool off

;---------------------------------------------------------------------------------------------------

Dramagahnim_CastSpell:
#_0CF562: PHB
#_0CF563: PHK
#_0CF564: PLB

#_0CF565: LDA.b $1A
#_0CF567: LSR A
#_0CF568: AND.b #$02
#_0CF56A: TAX

#_0CF56B: LDA.b $51
#_0CF56D: LSR A
#_0CF56E: AND.b #$07
#_0CF570: STA.b $00

#_0CF572: ASL A
#_0CF573: TAY

;---------------------------------------------------------------------------------------------------

#_0CF574: REP #$20

#_0CF576: LDA.w #DramagahnimSpellOAM_size
#_0CF579: CLC
#_0CF57A: ADC.w .index_offset,Y
#_0CF57D: STA.b $2D

#_0CF57F: LDA.w #DramagahnimSpellOAM_offset_x
#_0CF582: CLC
#_0CF583: ADC.w .index_offset,Y
#_0CF586: STA.b $02

#_0CF588: LDA.w #DramagahnimSpellOAM_offset_y
#_0CF58B: CLC
#_0CF58C: ADC.w .index_offset,Y
#_0CF58F: STA.b $04

#_0CF591: LDA.w DramagahnimSpellCharPointer,X
#_0CF594: CLC
#_0CF595: ADC.w .index_offset,Y
#_0CF598: STA.b $06

#_0CF59A: LDA.w DramagahnimSpellPropPointer,X
#_0CF59D: CLC
#_0CF59E: ADC.w .index_offset,Y
#_0CF5A1: STA.b $08

;---------------------------------------------------------------------------------------------------

#_0CF5A3: SEP #$20

#_0CF5A5: LDA.b #$6E
#_0CF5A7: STA.b $28

#_0CF5A9: LDA.b #$48
#_0CF5AB: STA.b $29

#_0CF5AD: LDX.b $00

#_0CF5AF: LDA.w .oam_count,X
#_0CF5B2: TAY

#_0CF5B3: JSR Attract_DrawPreloadedSprite

#_0CF5B6: PLB

;---------------------------------------------------------------------------------------------------

#_0CF5B7: LDA.b $51
#_0CF5B9: BNE .delay_tick

#_0CF5BB: DEC.b $62
#_0CF5BD: BEQ Dramagahnim_ReadySpell_advance

#_0CF5BF: BRA .exit

.delay_tick
#_0CF5C1: DEC.b $51

.exit
#_0CF5C3: RTS

;===================================================================================================

pool Dramagahnim_RealizeWhatJustHappened

.pointers_offset_x
#_0CF5C4: dw AttractTelebubbleOAM_step0_offset_x
#_0CF5C6: dw AttractTelebubbleOAM_step1_offset_x

.pointers_offset_y
#_0CF5C8: dw AttractTelebubbleOAM_step0_offset_y
#_0CF5CA: dw AttractTelebubbleOAM_step1_offset_y

.pointers_char
#_0CF5CC: dw AttractTelebubbleOAM_step0_char
#_0CF5CE: dw AttractTelebubbleOAM_step1_char

.pointers_prop
#_0CF5D0: dw AttractTelebubbleOAM_step0_prop
#_0CF5D2: dw AttractTelebubbleOAM_step1_prop

;---------------------------------------------------------------------------------------------------

.position_x
#_0CF5D4: db $78
#_0CF5D5: db $70

.object_count
#_0CF5D6: db $00
#_0CF5D7: db $01

pool off

;---------------------------------------------------------------------------------------------------

Dramagahnim_RealizeWhatJustHappened:
#_0CF5D8: LDA.b $51
#_0CF5DA: CMP.b #$06
#_0CF5DC: BNE .delay_sfx

#_0CF5DE: INC.b $52

#_0CF5E0: LDA.b #$33 ; SFX2.33
#_0CF5E2: STA.w $012E

.delay_sfx
#_0CF5E5: CMP.b #$40
#_0CF5E7: BNE .delay_tick

#_0CF5E9: LDA.b #$E0
#_0CF5EB: STA.b $51

#_0CF5ED: INC.b $60

.delay_tick
#_0CF5EF: CMP.b #$0F
#_0CF5F1: BCS .skip_draw

#_0CF5F3: LSR A
#_0CF5F4: LSR A
#_0CF5F5: AND.b #$02
#_0CF5F7: TAX

#_0CF5F8: REP #$20

#_0CF5FA: LDA.w #AttractTelebubbleOAM_size
#_0CF5FD: STA.b $2D

#_0CF5FF: LDA.l .pointers_offset_x,X
#_0CF603: STA.b $02

#_0CF605: LDA.l .pointers_offset_y,X
#_0CF609: STA.b $04

#_0CF60B: LDA.l .pointers_char,X
#_0CF60F: STA.b $06

#_0CF611: LDA.l .pointers_prop,X
#_0CF615: STA.b $08

;---------------------------------------------------------------------------------------------------

#_0CF617: SEP #$20

#_0CF619: TXA
#_0CF61A: LSR A
#_0CF61B: TAX

#_0CF61C: LDA.l .position_x,X
#_0CF620: STA.b $28

#_0CF622: LDA.b #$60
#_0CF624: STA.b $29

#_0CF626: LDA.l .object_count,X
#_0CF62A: TAY

#_0CF62B: JSR Attract_DrawPreloadedSprite

.skip_draw
#_0CF62E: INC.b $51

#_0CF630: RTS

;===================================================================================================

Dramagahnim_IdleGuiltily:
#_0CF631: JSR Attract_DoTextInDungeonScene
#_0CF634: LDA.b $64
#_0CF636: BNE .exit

#_0CF638: LDA.b $51
#_0CF63A: CMP.b #$1F
#_0CF63C: BCS .delay_fade

#_0CF63E: AND.b #$01
#_0CF640: BNE .delay_fade

#_0CF642: DEC.b $13

.delay_fade
#_0CF644: DEC.b $51
#_0CF646: BNE .exit

#_0CF648: INC.b $5D

.exit
#_0CF64A: RTS

;===================================================================================================

Attract_SkipToFileSelect:
#_0CF64B: DEC.b $13
#_0CF64D: BNE .exit

#_0CF64F: JSL EnableForceBlank

#_0CF653: LDA.b #$13
#_0CF655: STA.w BG1SC

#_0CF658: LDA.b #$03
#_0CF65A: STA.w BG2SC

#_0CF65D: REP #$20

#_0CF65F: JSL Attract_SetUpConclusionHDMA

#_0CF663: REP #$20

#_0CF665: STZ.w $063A
#_0CF668: STZ.w $0638

#_0CF66B: STZ.w $0120
#_0CF66E: STZ.w $0124

#_0CF671: STZ.b $EA

#_0CF673: SEP #$20

#_0CF675: JSL DecompressFontGFX

#_0CF679: JMP.w FadeMusicAndResetSRAMMirror

.exit
#_0CF67C: RTL

;===================================================================================================

pool Attract_BuildNextImageTilemap

.stripes_pointers
#_0CF67D: dw AttractImage0Stripes
#_0CF67F: dw AttractImage1Stripes
#_0CF681: dw AttractImage2Stripes
#_0CF683: dw AttractImage3Stripes

.stripes_sizes
#_0CF685: dw $009C
#_0CF687: dw $00EC
#_0CF689: dw $00C6
#_0CF68B: dw $0108

pool off

;---------------------------------------------------------------------------------------------------

Attract_BuildNextImageTilemap:
#_0CF68D: REP #$20

#_0CF68F: LDX.b $26

#_0CF691: LDA.l .stripes_sizes,X
#_0CF695: STA.b $00

#_0CF697: LDA.l .stripes_pointers,X
#_0CF69B: STA.b $02

#_0CF69D: LDX.b #Attract_BuildNextImageTilemap>>16
#_0CF69F: STX.b $04

#_0CF6A1: REP #$10

#_0CF6A3: LDY.b $00

.copy_next
#_0CF6A5: LDA.b [$02],Y
#_0CF6A7: STA.w $1002,Y

#_0CF6AA: DEY
#_0CF6AB: DEY
#_0CF6AC: BPL .copy_next

#_0CF6AE: SEP #$30

#_0CF6B0: LDA.b #$01
#_0CF6B2: STA.b $14

#_0CF6B4: RTS

;===================================================================================================

Attract_DoTextInDungeonScene:
#_0CF6B5: LDA.b $E8
#_0CF6B7: STA.b $20

#_0CF6B9: LDA.b $E9
#_0CF6BB: STA.b $21

#_0CF6BD: STZ.b $F2
#_0CF6BF: STZ.b $F6
#_0CF6C1: STZ.b $F4

#_0CF6C3: JSL RenderText

#_0CF6C7: LDA.b $64
#_0CF6C9: BEQ .exit

#_0CF6CB: DEC.b $64

.exit
#_0CF6CD: RTS

;===================================================================================================

Attract_ControlMapZoom:
#_0CF6CE: REP #$10

#_0CF6D0: LDA.w $0637
#_0CF6D3: STA.w WRMPYA

#_0CF6D6: LDX.w #$01BE

.copy_next
#_0CF6D9: LDA.l WorldMapHDMA_ZoomedOut_Part1+0,X
#_0CF6DD: STA.w WRMPYB

#_0CF6E0: NOP
#_0CF6E1: NOP
#_0CF6E2: NOP
#_0CF6E3: NOP

#_0CF6E4: LDA.w RDMPYH
#_0CF6E7: STA.b $00

#_0CF6E9: LDA.l WorldMapHDMA_ZoomedOut_Part1+1,X
#_0CF6ED: STA.w WRMPYB

#_0CF6F0: NOP

#_0CF6F1: LDA.b $00
#_0CF6F3: CLC
#_0CF6F4: ADC.w RDMPYL
#_0CF6F7: STA.w $1B00,X

#_0CF6FA: LDA.w RDMPYH
#_0CF6FD: ADC.b #$00
#_0CF6FF: STA.w $1B01,X

#_0CF702: DEX
#_0CF703: DEX
#_0CF704: BPL .copy_next

#_0CF706: SEP #$10

#_0CF708: RTS

;===================================================================================================

AttractBG1Tiles:
#_0CF709: dw $01A0, $09A6, $89A5, $01A0
#_0CF711: dw $09A5, $01A0, $01A0, $89A6
#_0CF719: dw $49A5, $01A0, $01A0, $49A5
#_0CF721: dw $01A0, $89A5, $C9A5, $01A0

;---------------------------------------------------------------------------------------------------

AttractBG2Tiles:
#_0CF729: dw $09A1, $09A2, $09A3, $09A4

;---------------------------------------------------------------------------------------------------

Attract_BuildBackgrounds:
#_0CF731: LDA.b #$09
#_0CF733: STA.b $94

#_0CF735: LDA.b #$17
#_0CF737: STA.b $1C
#_0CF739: STZ.b $1D

#_0CF73B: LDA.b #$10
#_0CF73D: STA.w BG1SC

#_0CF740: LDA.b #$00
#_0CF742: STA.w BG2SC

#_0CF745: PHB
#_0CF746: PHK
#_0CF747: PLB

;---------------------------------------------------------------------------------------------------

#_0CF748: REP #$30

#_0CF74A: LDX.w #$0000

#_0CF74D: LDA.w #AttractBG1Tiles
#_0CF750: STA.b $30

.next_stripe_bg1
#_0CF752: TXA
#_0CF753: AND.w #$0007
#_0CF756: TAY

.next_bg1
#_0CF757: LDA.b ($30),Y
#_0CF759: STA.w $1006,X

#_0CF75C: INY
#_0CF75D: INY

#_0CF75E: INX
#_0CF75F: INX

#_0CF760: TYA
#_0CF761: AND.w #$0007
#_0CF764: BNE .next_bg1

#_0CF766: TXA
#_0CF767: AND.w #$003F
#_0CF76A: BNE .next_stripe_bg1

#_0CF76C: LDA.b $30
#_0CF76E: CLC
#_0CF76F: ADC.w #$0008
#_0CF772: STA.b $30

#_0CF774: CPX.w #$0100
#_0CF777: BNE .next_stripe_bg1

;---------------------------------------------------------------------------------------------------

#_0CF779: LDA.w #$1000
#_0CF77C: STA.b $30

#_0CF77E: JSR Attract_TriggerBGDMA

;---------------------------------------------------------------------------------------------------

#_0CF781: REP #$30

#_0CF783: LDX.w #$0000

#_0CF786: LDA.w #AttractBG2Tiles
#_0CF789: STA.b $30

.next_stripe_bg2
#_0CF78B: TXA
#_0CF78C: AND.w #$0003
#_0CF78F: TAY

.next_bg2
#_0CF790: LDA.b ($30),Y
#_0CF792: STA.w $1006,X

#_0CF795: INY
#_0CF796: INY

#_0CF797: INX
#_0CF798: INX

#_0CF799: TYA
#_0CF79A: AND.w #$0003
#_0CF79D: BNE .next_bg2

#_0CF79F: TXA
#_0CF7A0: AND.w #$003F
#_0CF7A3: BNE .next_stripe_bg2

#_0CF7A5: TXA
#_0CF7A6: AND.w #$0040

#_0CF7A9: LSR A
#_0CF7AA: LSR A
#_0CF7AB: LSR A
#_0CF7AC: LSR A

#_0CF7AD: CLC
#_0CF7AE: ADC.w #AttractBG2Tiles
#_0CF7B1: STA.b $30

#_0CF7B3: CPX.w #$0100
#_0CF7B6: BNE .next_stripe_bg2

#_0CF7B8: LDA.w #$0000
#_0CF7BB: STA.b $30

#_0CF7BD: JSR Attract_TriggerBGDMA

#_0CF7C0: SEP #$30

#_0CF7C2: PLB

#_0CF7C3: RTS

;===================================================================================================

Attract_TriggerBGDMA:
#_0CF7C4: SEP #$10

#_0CF7C6: LDX.b #$07

#_0CF7C8: LDA.b $30
#_0CF7CA: STA.w VMADDR

.next
#_0CF7CD: LDY.b #$80
#_0CF7CF: STY.w VMAIN

#_0CF7D2: LDA.w #$1801
#_0CF7D5: STA.w DMA0MODE

#_0CF7D8: LDA.w #$1006
#_0CF7DB: STA.w DMA0ADDRL

#_0CF7DE: LDY.b #$00
#_0CF7E0: STY.w DMA0ADDRB

#_0CF7E3: LDA.w #$0100
#_0CF7E6: STA.w DMA0SIZE

#_0CF7E9: LDY.b #$01
#_0CF7EB: STY.w MDMAEN

#_0CF7EE: DEX
#_0CF7EF: BPL .next

#_0CF7F1: RTS

;===================================================================================================

AttractOAMData:

.king_size
#_0CF7F2: db $02, $02, $02, $02

.king_offset_x
#_0CF7F6: db  16,   0,  16,   0

.king_offset_y
#_0CF7FA: db  16,  16,   0,   0

.king_char
#_0CF7FE: db $2A, $2A, $0A, $0A

.king_prop
#_0CF802: db $7B, $3B, $7B, $3B

;---------------------------------------------------------------------------------------------------

.mantle_size
#_0CF806: db $02, $02, $02, $02, $02, $02

.mantle_offset_x
#_0CF80C: db   0,  16,  32,   0,  16,  32

.mantle_offset_y
#_0CF812: db   0,   0,   0,  16,  16,  16

.mantle_char
#_0CF818: db $0C, $0E, $0C, $2C, $2E, $2C

.mantle_prop
#_0CF81E: db $31, $31, $71, $31, $31, $71

;---------------------------------------------------------------------------------------------------

AttractAgahnimOAM:

.size
#_0CF824: db $02, $02, $02, $02, $02, $02

.offset_x
#_0CF82A: db   5,  11,   0,  16,   0,  16

.offset_y
#_0CF830: db  25,  25,   0,   0,  16,  16

;---------------------------------------------------------------------------------------------------

.char_step3
#_0CF836: db $6C, $6C, $82, $82, $A2, $A2

.char_step5
#_0CF83C: db $6C, $6C, $80, $82, $A0, $A2

.char_step6
#_0CF842: db $6C, $6C, $82, $80, $A2, $A0

.char_step4
#_0CF848: db $6C, $6C, $80, $80, $A0, $A0

.char_step0
#_0CF84E: db $6C, $6C, $84, $84, $A4, $A4

.char_step1
#_0CF854: db $6C, $6C, $C4, $C2, $E4, $E6

.char_step2
#_0CF85A: db $6C, $6C, $88, $8A, $A8, $AA

;---------------------------------------------------------------------------------------------------

.prop_step0
#_0CF860: db $38, $38, $3B, $7B, $3B, $7B

.prop_step1
#_0CF866: db $38, $38, $3B, $3B, $3B, $3B

.prop_step2
#_0CF86C: db $38, $38, $3B, $3B, $3B, $3B

;---------------------------------------------------------------------------------------------------

AttractAltarMaidenOAM:

.size
#_0CF872: db $02, $02

.offset_x
#_0CF874: db $00, $08

.offset_y
#_0CF876: db $00, $00

.char_step0
#_0CF878: db $03, $04

.char_step1
#_0CF87A: db $00, $01

.prop
#_0CF87C: db $3D, $3D

;---------------------------------------------------------------------------------------------------

AttractAltarMaidenShadowOAM:

.size
#_0CF87E: db $02, $02

;---------------------------------------------------------------------------------------------------

.offset_x_step4
#_0CF880: db $00, $08

.offset_x_step3
#_0CF882: db $00, $06

.offset_x_step2
#_0CF884: db $00, $04

.offset_x_step1
#_0CF886: db $00, $02

.offset_x_step0
#_0CF888: db $00, $00

;---------------------------------------------------------------------------------------------------

.offset_y
#_0CF88A: db $00, $00

.char
#_0CF88C: db $6C, $6C

.prop
#_0CF88E: db $38, $38

;===================================================================================================

DramagahnimSpellOAM:

.size
#_0CF890: db $00, $00, $00, $00
#_0CF894: db $00, $00, $00, $00
#_0CF898: db $00, $00, $02, $02
#_0CF89C: db $02, $02

.offset_x
#_0CF89E: db   0,  28,  -2,  30
#_0CF8A2: db  -2,  30,   0,  28
#_0CF8A6: db   0,  28,   2,  18
#_0CF8AA: db   2,  18

.offset_y
#_0CF8AC: db   0,   0,   3,   3
#_0CF8B0: db  11,  11,  16,  16
#_0CF8B4: db  24,  24,  16,  16
#_0CF8B8: db  32,  32

;---------------------------------------------------------------------------------------------------

.char_step0
#_0CF8BA: db $CE, $CE, $26, $26
#_0CF8BE: db $36, $36, $26, $26
#_0CF8C2: db $36, $36, $20, $20
#_0CF8C6: db $20, $20

.char_step1
#_0CF8C8: db $CE, $CE, $26, $26
#_0CF8CC: db $36, $36, $26, $26
#_0CF8D0: db $36, $36, $22, $22
#_0CF8D4: db $22, $22

;---------------------------------------------------------------------------------------------------

.prop_step0
#_0CF8D6: db $35, $35, $75, $35
#_0CF8DA: db $75, $35, $75, $35
#_0CF8DE: db $75, $35, $35, $75
#_0CF8E2: db $B5, $F5

.prop_step1
#_0CF8E4: db $37, $37, $77, $37
#_0CF8E8: db $77, $37, $77, $37
#_0CF8EC: db $77, $37, $37, $77
#_0CF8F0: db $B7, $F7

;---------------------------------------------------------------------------------------------------

AttractTelebubbleOAM:

.size
#_0CF8F2: db $02, $02

.step0_offset_x
#_0CF8F4: db   0

.step0_offset_y
#_0CF8F5: db   0

.step0_char
#_0CF8F6: db $C6

.step0_prop
#_0CF8F7: db $3D

;---------------------------------------------------------------------------------------------------

.step1_offset_x
#_0CF8F8: db   0,  16

.step1_offset_y
#_0CF8FA: db   0,   0

.step1_char
#_0CF8FC: db $24, $24

.step1_prop
#_0CF8FE: db $35, $75

;===================================================================================================

Attract_DrawPreloadedSprite:
#_0CF900: PHB
#_0CF901: PHK
#_0CF902: PLB

.next_object
#_0CF903: LDX.b $2A

#_0CF905: LDA.b ($2D),Y
#_0CF907: STA.w $0A60,X

#_0CF90A: TXA
#_0CF90B: ASL A
#_0CF90C: ASL A
#_0CF90D: TAX

#_0CF90E: LDA.b ($02),Y
#_0CF910: CLC
#_0CF911: ADC.b $28
#_0CF913: STA.w $0900,X

#_0CF916: LDA.b ($04),Y
#_0CF918: CLC
#_0CF919: ADC.b $29
#_0CF91B: STA.w $0901,X

#_0CF91E: LDA.b ($06),Y
#_0CF920: STA.w $0902,X

#_0CF923: LDA.b ($08),Y
#_0CF925: STA.w $0903,X

#_0CF928: INC.b $2A

#_0CF92A: DEY
#_0CF92B: BPL .next_object

#_0CF92D: PLB

#_0CF92E: RTS

;===================================================================================================

pool Attract_DrawZelda

.head_char
#_0CF92F: db $28

.body_char
#_0CF930: db $2A

.head_prop
#_0CF931: db $29

.body_prop
#_0CF932: db $29

pool off

;---------------------------------------------------------------------------------------------------

Attract_DrawZelda:
#_0CF933: LDX.b $2A

#_0CF935: LDA.b #$02
#_0CF937: STA.w $0A60,X

#_0CF93A: TXA
#_0CF93B: ASL A
#_0CF93C: ASL A
#_0CF93D: TAX

#_0CF93E: LDA.b #$60
#_0CF940: STA.w $0900,X
#_0CF943: STA.w $0904,X

#_0CF946: LDA.b $28
#_0CF948: STA.w $0901,X

#_0CF94B: CLC
#_0CF94C: ADC.b #$0A
#_0CF94E: STA.w $0905,X

#_0CF951: LDA.l .head_char
#_0CF955: STA.w $0902,X

#_0CF958: LDA.l .body_char
#_0CF95C: STA.w $0906,X

#_0CF95F: LDA.l .head_prop
#_0CF963: STA.w $0903,X

#_0CF966: LDA.l .body_prop
#_0CF96A: STA.w $0907,X

#_0CF96D: INC.b $2A
#_0CF96F: INC.b $2A

#_0CF971: RTS

;===================================================================================================

pool Attract_DrawKidnappedMaiden

.head_char
#_0CF972: db $06

.body_char
#_0CF973: db $08, $0A

.offset_y
#_0CF975: db   0,   1

.body_offset_y
#_0CF977: db  10,   9

.head_prop
#_0CF979: db $3D

.body_prop
#_0CF97A: db $3D

pool off

;---------------------------------------------------------------------------------------------------

Attract_DrawKidnappedMaiden:
#_0CF97B: PHB
#_0CF97C: PHK
#_0CF97D: PLB

#_0CF97E: PHY

#_0CF97F: LDX.b $2A

#_0CF981: LDA.b #$02
#_0CF983: LDY.b $40
#_0CF985: BEQ .step_0

#_0CF987: ORA.b #$01

.step_0
#_0CF989: STA.w $0A60,X
#_0CF98C: STA.w $0A61,X

#_0CF98F: TXA
#_0CF990: ASL A
#_0CF991: ASL A
#_0CF992: TAX

#_0CF993: LDA.b $28
#_0CF995: STA.w $0900,X
#_0CF998: STA.w $0904,X

#_0CF99B: LDA.b $32

#_0CF99D: LSR A
#_0CF99E: LSR A
#_0CF99F: LSR A

#_0CF9A0: AND.b #$01
#_0CF9A2: TAY

#_0CF9A3: LDA.b $29
#_0CF9A5: CLC
#_0CF9A6: ADC.w .offset_y,Y
#_0CF9A9: STA.w $0901,X

#_0CF9AC: CLC
#_0CF9AD: ADC.w .body_offset_y,Y
#_0CF9B0: STA.w $0905,X

#_0CF9B3: LDA.w .head_char
#_0CF9B6: STA.w $0902,X

#_0CF9B9: LDA.w .body_char,Y
#_0CF9BC: STA.w $0906,X

#_0CF9BF: LDA.w .head_prop
#_0CF9C2: STA.w $0903,X

#_0CF9C5: LDA.w .body_prop
#_0CF9C8: STA.w $0907,X

#_0CF9CB: INC.b $2A
#_0CF9CD: INC.b $2A

#_0CF9CF: PLY
#_0CF9D0: PLB

#_0CF9D1: RTS

;===================================================================================================

Attract_WindowingHDMA:

.table_a
#_0CF9D2: db $20 : db $FF, $00
#_0CF9D5: db $50 : db $18, $E0
#_0CF9D8: db $50 : db $18, $E0
#_0CF9DB: db $01 : db $FF, $00
#_0CF9DE: db $00

.table_b
#_0CF9DF: db $48 : db $FF, $00
#_0CF9E2: db $30 : db $30, $D8
#_0CF9E5: db $01 : db $FF, $00
#_0CF9E8: db $00

;---------------------------------------------------------------------------------------------------

.settings
#_0CF9E9: db $01 ; 2 registers, write once
#_0CF9EA: db WH0
#_0CF9EB: dl .table_a

;===================================================================================================

Attract_SetUpWindowingHDMA:
#_0CF9EE: LDX.b #$04

.next
#_0CF9F0: LDA.l Attract_WindowingHDMA_settings,X
#_0CF9F4: STA.w DMA6MODE,X
#_0CF9F7: STA.w DMA7MODE,X

#_0CF9FA: DEX
#_0CF9FB: BPL .next

; Why even copy both in the same loop if you're just gonna change everything?
#_0CF9FD: REP #$20

#_0CF9FF: LDA.w #Attract_WindowingHDMA_table_b
#_0CFA02: STA.w DMA7ADDRL

#_0CFA05: SEP #$20

#_0CFA07: LDA.b #WH2
#_0CFA09: STA.w DMA7PORT

#_0CFA0C: RTS

;===================================================================================================

AttractImage0Stripes:
#_0CFA0D: dw $6561, $2840 ; VRAM $C2CA | 42 bytes | Fixed horizontal
#_0CFA11: dw $3500

#_0CFA13: dw $8561, $2840 ; VRAM $C30A | 42 bytes | Fixed horizontal
#_0CFA17: dw $3510

#_0CFA19: dw $A561, $2900 ; VRAM $C34A | 42 bytes | Horizontal
#_0CFA1D: dw $3501, $3502, $3501, $3502, $3501, $3502, $3501, $3502
#_0CFA2D: dw $3501, $3103, $7103, $3502, $3501, $3502, $3501, $3502
#_0CFA3D: dw $3501, $3502, $3501, $3502, $3501

#_0CFA47: dw $C561, $2900 ; VRAM $C38A | 42 bytes | Horizontal
#_0CFA4B: dw $3511, $3512, $3511, $3512, $3511, $3512, $3511, $3512
#_0CFA5B: dw $3511, $3513, $7513, $3512, $3511, $3512, $3511, $3512
#_0CFA6B: dw $3511, $3512, $3511, $3512, $3511

#_0CFA75: dw $E561, $2900 ; VRAM $C3CA | 42 bytes | Horizontal
#_0CFA79: dw $3520, $3521, $3520, $3521, $3520, $3521, $3520, $3521
#_0CFA89: dw $3520, $3521, $3520, $3521, $3520, $3521, $3520, $3521
#_0CFA99: dw $3520, $3521, $3520, $3521, $3520

#_0CFAA3: dw $0562, $2840 ; VRAM $C40A | 42 bytes | Fixed horizontal
#_0CFAA7: dw $B500

#_0CFAA9: db $FF ; end of stripes data

;===================================================================================================

AttractImage1Stripes:
#_0CFAAA: dw $6561, $2840 ; VRAM $C2CA | 42 bytes | Fixed horizontal
#_0CFAAE: dw $3500

#_0CFAB0: dw $8561, $1300 ; VRAM $C30A | 20 bytes | Horizontal
#_0CFAB4: dw $3510, $754E, $356E, $3510, $354E, $3510, $354C, $3510
#_0CFAC4: dw $754E, $3549

#_0CFAC8: dw $8F61, $0840 ; VRAM $C31E | 10 bytes | Fixed horizontal
#_0CFACC: dw $3510

#_0CFACE: dw $9461, $0B00 ; VRAM $C328 | 12 bytes | Horizontal
#_0CFAD2: dw $754E, $356E, $3510, $354E, $3510, $354C

#_0CFADE: dw $A561, $2900 ; VRAM $C34A | 42 bytes | Horizontal
#_0CFAE2: dw $755F, $755E, $357E, $357F, $355E, $355F, $354D, $755F
#_0CFAF2: dw $755E, $354A, $354B, $3510, $7549, $3510, $755F, $755E
#_0CFB02: dw $357E, $357F, $355E, $355F, $354D

#_0CFB0C: dw $C561, $2900 ; VRAM $C38A | 42 bytes | Horizontal
#_0CFB10: dw $3550, $3551, $3552, $3553, $3554, $3555, $3556, $3557
#_0CFB20: dw $3558, $3559, $355A, $355B, $355C, $355D, $3550, $3551
#_0CFB30: dw $3552, $3553, $3554, $3555, $3556

#_0CFB3A: dw $E561, $2900 ; VRAM $C3CA | 42 bytes | Horizontal
#_0CFB3E: dw $3560, $3561, $3562, $3563, $3564, $3565, $3566, $3567
#_0CFB4E: dw $3568, $3569, $356A, $356B, $356C, $356D, $3560, $3561
#_0CFB5E: dw $3562, $3563, $3564, $3565, $3566

#_0CFB68: dw $0562, $2900 ; VRAM $C40A | 42 bytes | Horizontal
#_0CFB6C: dw $3570, $3571, $3572, $3573, $3574, $3575, $3576, $3577
#_0CFB7C: dw $3578, $3579, $357A, $357B, $357C, $357D, $3570, $3571
#_0CFB8C: dw $3572, $3573, $3574, $3575, $3576

#_0CFB96: db $FF ; end of stripes data

;===================================================================================================

AttractImage2Stripes:
#_0CFB97: dw $6561, $2840 ; VRAM $C2CA | 42 bytes | Fixed horizontal
#_0CFB9B: dw $3500

#_0CFB9D: dw $8561, $2840 ; VRAM $C30A | 42 bytes | Fixed horizontal
#_0CFBA1: dw $3510

#_0CFBA3: dw $A561, $1D00 ; VRAM $C34A | 30 bytes | Horizontal
#_0CFBA7: dw $3522, $3523, $3510, $3522, $3523, $3510, $3522, $3523
#_0CFBB7: dw $3510, $3522, $3523, $3510, $7510, $7523, $7522

#_0CFBC5: dw $B461, $0640 ; VRAM $C368 | 8 bytes | Fixed horizontal
#_0CFBC9: dw $3510

#_0CFBCB: dw $B861, $0300 ; VRAM $C370 | 4 bytes | Horizontal
#_0CFBCF: dw $7523, $7522

#_0CFBD3: dw $C561, $2900 ; VRAM $C38A | 42 bytes | Horizontal
#_0CFBD7: dw $3504, $3505, $3506, $3504, $3505, $3506, $3504, $3505
#_0CFBE7: dw $3506, $3504, $3505, $3506, $7506, $7505, $7504, $7510
#_0CFBF7: dw $7523, $7522, $7506, $7505, $7504

#_0CFC01: dw $E561, $2900 ; VRAM $C3CA | 42 bytes | Horizontal
#_0CFC05: dw $3514, $3515, $3516, $3514, $3515, $3516, $3514, $3515
#_0CFC15: dw $3516, $3514, $3515, $3516, $7516, $7515, $7514, $7506
#_0CFC25: dw $7505, $7504, $7516, $7515, $7514

#_0CFC2F: dw $0562, $2900 ; VRAM $C40A | 42 bytes | Horizontal
#_0CFC33: dw $3524, $3525, $3526, $3524, $3525, $3526, $3524, $3525
#_0CFC43: dw $3526, $3524, $3525, $3526, $7526, $7525, $7524, $7526
#_0CFC53: dw $7525, $7524, $7526, $7525, $7524

#_0CFC5D: db $FF ; end of stripes data

;===================================================================================================

AttractImage3Stripes:
#_0CFC5E: dw $6561, $2900 ; VRAM $C2CA | 42 bytes | Horizontal
#_0CFC62: dw $3500, $3500, $351B, $3530, $3531, $3532, $3500, $3500
#_0CFC72: dw $3500, $3533, $3541, $7541, $7533, $7500, $7500, $7500
#_0CFC82: dw $7532, $7531, $7530, $751B, $7500

#_0CFC8C: dw $8561, $1E40 ; VRAM $C30A | 32 bytes | Fixed horizontal
#_0CFC90: dw $3510

#_0CFC92: dw $8661, $0900 ; VRAM $C30C | 10 bytes | Horizontal
#_0CFC96: dw $3534, $350B, $3540, $3541, $3542

#_0CFCA0: dw $9561, $0900 ; VRAM $C32A | 10 bytes | Horizontal
#_0CFCA4: dw $7542, $7541, $7540, $750B, $7534

#_0CFCAE: dw $A561, $2900 ; VRAM $C34A | 42 bytes | Horizontal
#_0CFCB2: dw $3543, $3544, $3507, $3508, $3509, $350A, $3510, $350C
#_0CFCC2: dw $350D, $350E, $350F, $750F, $750E, $750D, $750C, $7510
#_0CFCD2: dw $750A, $7509, $7508, $7507, $7544

#_0CFCDC: dw $C561, $2900 ; VRAM $C38A | 42 bytes | Horizontal
#_0CFCE0: dw $3535, $3536, $3517, $3518, $3519, $351A, $3510, $351C
#_0CFCF0: dw $351D, $351E, $351F, $751F, $751E, $751D, $751C, $7510
#_0CFD00: dw $751A, $7519, $7518, $7517, $7536

#_0CFD0A: dw $E561, $2900 ; VRAM $C3CA | 42 bytes | Horizontal
#_0CFD0E: dw $3545, $3546, $3527, $3528, $3529, $352A, $352B, $352C
#_0CFD1E: dw $352D, $352E, $352F, $752F, $752E, $752D, $752C, $752B
#_0CFD2E: dw $752A, $7529, $7528, $7527, $7546

#_0CFD38: dw $0562, $2900 ; VRAM $C40A | 42 bytes | Horizontal
#_0CFD3C: dw $3547, $3548, $3537, $3538, $3539, $353A, $353B, $353C
#_0CFD4C: dw $353D, $353E, $353F, $753F, $753E, $753D, $753C, $753B
#_0CFD5C: dw $753A, $7539, $7538, $7537, $7548

#_0CFD66: db $FF ; end of stripes data

;===================================================================================================
; FREE ROM: 0x69
;===================================================================================================
NULL_0CFD67:
#_0CFD67: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFD6F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFD77: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFD7F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFD87: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFD8F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFD97: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFD9F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFDA7: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFDAF: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFDB7: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFDBF: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFDC7: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFDCF: db $FF

;===================================================================================================

UnderworldPaletteSets:
#_0CFDD0: db $00, $00, $03, $01 ; 0x00
#_0CFDD4: db $02, $00, $03, $01 ; 0x01
#_0CFDD8: db $04, $00, $0A, $01 ; 0x02
#_0CFDDC: db $06, $00, $01, $07 ; 0x03
#_0CFDE0: db $0A, $02, $02, $07 ; 0x04
#_0CFDE4: db $04, $04, $03, $0A ; 0x05
#_0CFDE8: db $0C, $05, $08, $14 ; 0x06
#_0CFDEC: db $0E, $00, $03, $0A ; 0x07
#_0CFDF0: db $02, $00, $0F, $14 ; 0x08
#_0CFDF4: db $0A, $02, $00, $07 ; 0x09
#_0CFDF8: db $02, $00, $0F, $0C ; 0x0A
#_0CFDFC: db $06, $00, $06, $07 ; 0x0B
#_0CFE00: db $00, $00, $0E, $12 ; 0x0C
#_0CFE04: db $12, $05, $05, $0B ; 0x0D
#_0CFE08: db $12, $00, $02, $0C ; 0x0E
#_0CFE0C: db $10, $05, $0A, $07 ; 0x0F
#_0CFE10: db $10, $00, $10, $0C ; 0x10
#_0CFE14: db $16, $07, $02, $07 ; 0x11
#_0CFE18: db $16, $00, $07, $0F ; 0x12
#_0CFE1C: db $08, $00, $04, $0C ; 0x13
#_0CFE20: db $08, $00, $04, $09 ; 0x14
#_0CFE24: db $04, $00, $03, $01 ; 0x15
#_0CFE28: db $14, $00, $04, $04 ; 0x16
#_0CFE2C: db $14, $00, $14, $0C ; 0x17
#_0CFE30: db $18, $05, $07, $0B ; 0x18
#_0CFE34: db $18, $06, $10, $0C ; 0x19
#_0CFE38: db $1A, $05, $08, $14 ; 0x1A
#_0CFE3C: db $1A, $02, $00, $07 ; 0x1B
#_0CFE40: db $06, $00, $03, $0A ; 0x1C
#_0CFE44: db $1C, $00, $03, $01 ; 0x1D
#_0CFE48: db $1E, $00, $0B, $11 ; 0x1E
#_0CFE4C: db $04, $00, $0B, $11 ; 0x1F
#_0CFE50: db $0E, $00, $00, $02 ; 0x20
#_0CFE54: db $20, $08, $13, $0D ; 0x21
#_0CFE58: db $0A, $00, $03, $0A ; 0x22
#_0CFE5C: db $14, $00, $04, $04 ; 0x23
#_0CFE60: db $1A, $02, $02, $07 ; 0x24
#_0CFE64: db $1A, $0A, $00, $00 ; 0x25
#_0CFE68: db $00, $00, $03, $02 ; 0x26
#_0CFE6C: db $0E, $00, $03, $07 ; 0x27
#_0CFE70: db $1A, $05, $05, $0B ; 0x28

;===================================================================================================

OverworldPaletteSet:
#_0CFE74: db $00, $FF, $07, $FF ; 0x00
#_0CFE78: db $00, $01, $07, $FF ; 0x01
#_0CFE7C: db $00, $02, $07, $FF ; 0x02
#_0CFE80: db $00, $03, $07, $FF ; 0x03
#_0CFE84: db $00, $04, $07, $FF ; 0x04
#_0CFE88: db $00, $05, $07, $FF ; 0x05
#_0CFE8C: db $00, $06, $07, $FF ; 0x06
#_0CFE90: db $07, $06, $05, $FF ; 0x07
#_0CFE94: db $00, $08, $07, $FF ; 0x08
#_0CFE98: db $00, $09, $07, $FF ; 0x09
#_0CFE9C: db $00, $0A, $07, $FF ; 0x0A
#_0CFEA0: db $00, $0B, $07, $FF ; 0x0B
#_0CFEA4: db $00, $FF, $07, $FF ; 0x0C
#_0CFEA8: db $00, $FF, $07, $FF ; 0x0D
#_0CFEAC: db $03, $04, $07, $FF ; 0x0E
#_0CFEB0: db $04, $04, $03, $FF ; 0x0F
#_0CFEB4: db $10, $FF, $06, $FF ; 0x10
#_0CFEB8: db $10, $01, $06, $FF ; 0x11
#_0CFEBC: db $10, $11, $06, $FF ; 0x12
#_0CFEC0: db $10, $03, $06, $FF ; 0x13
#_0CFEC4: db $10, $04, $06, $FF ; 0x14
#_0CFEC8: db $10, $05, $06, $FF ; 0x15
#_0CFECC: db $10, $06, $06, $FF ; 0x16
#_0CFED0: db $12, $13, $04, $FF ; 0x17
#_0CFED4: db $12, $05, $04, $FF ; 0x18
#_0CFED8: db $10, $09, $06, $FF ; 0x19
#_0CFEDC: db $10, $0B, $06, $FF ; 0x1A
#_0CFEE0: db $10, $0C, $06, $FF ; 0x1B
#_0CFEE4: db $10, $0D, $06, $FF ; 0x1C
#_0CFEE8: db $10, $0E, $06, $FF ; 0x1D
#_0CFEEC: db $10, $0F, $06, $FF ; 0x1E

;===================================================================================================

OverworldSpritesPaletteSet:
#_0CFEF0: db $FF, $FF
#_0CFEF2: db $03, $0A
#_0CFEF4: db $03, $06
#_0CFEF6: db $03, $01
#_0CFEF8: db $00, $02
#_0CFEFA: db $03, $0E
#_0CFEFC: db $03, $02
#_0CFEFE: db $13, $01
#_0CFF00: db $0B, $0C
#_0CFF02: db $11, $01
#_0CFF04: db $07, $05
#_0CFF06: db $11, $00
#_0CFF08: db $09, $0B
#_0CFF0A: db $0F, $05
#_0CFF0C: db $03, $05
#_0CFF0E: db $03, $07
#_0CFF10: db $0F, $02
#_0CFF12: db $0A, $02
#_0CFF14: db $05, $01
#_0CFF16: db $0C, $0E

;===================================================================================================

OverworldPalettesLoader:
#_0CFF18: ASL A
#_0CFF19: ASL A
#_0CFF1A: TAX

#_0CFF1B: STZ.w $0AA9

#_0CFF1E: LDA.l OverworldPaletteSet+0,X
#_0CFF22: BMI .dont_change_a

#_0CFF24: STA.w $0AB4

.dont_change_a
#_0CFF27: LDA.l OverworldPaletteSet+1,X
#_0CFF2B: BMI .dont_change_b

#_0CFF2D: STA.w $0AB5

.dont_change_b
#_0CFF30: LDA.l OverworldPaletteSet+2,X
#_0CFF34: BMI .dont_change_c

#_0CFF36: STA.w $0AB8

.dont_change_c
#_0CFF39: LDA.b $00
#_0CFF3B: ASL A
#_0CFF3C: TAX

#_0CFF3D: LDA.l OverworldSpritesPaletteSet+0,X
#_0CFF41: BMI .dont_change_d

#_0CFF43: STA.w $0AAD

.dont_change_d
#_0CFF46: LDA.l OverworldSpritesPaletteSet+1,X
#_0CFF4A: BMI .dont_change_e

#_0CFF4C: STA.w $0AAE

.dont_change_e
#_0CFF4F: JSL Palettes_Load_OWBG1
#_0CFF53: JSL Palettes_Load_OWBG2
#_0CFF57: JSL Palettes_Load_OWBG3

#_0CFF5B: JSL Palettes_Load_SpriteAux1
#_0CFF5F: JSL Palettes_Load_SpriteAux2

#_0CFF63: RTL

;===================================================================================================

SetBGandFixedColorBlack:
#_0CFF64: REP #$20

#_0CFF66: LDA.w #$0000 ; RGB #000000

;===================================================================================================

SetBGColorMainBuffer:
#_0CFF69: STA.l $7EC500 ; bg color
#_0CFF6D: STA.l $7EC540

;===================================================================================================

SetBGColorCacheOnly:
#_0CFF71: STA.l $7EC300
#_0CFF75: STA.l $7EC340

#_0CFF79: SEP #$30

;===================================================================================================

FixedColorBlack:
#_0CFF7B: LDA.b #$20 ; Fixed color RGB: #000000
#_0CFF7D: STA.b $9C

#_0CFF7F: LDA.b #$40
#_0CFF81: STA.b $9D

#_0CFF83: LDA.b #$80
#_0CFF85: STA.b $9E

#_0CFF87: RTL

;===================================================================================================

UNREACHABLE_0CFF88:
#_0CFF88: db $25, $27, $33, $4F
#_0CFF8C: db $54, $4F, $85, $87
#_0CFF90: db $89

;===================================================================================================

Overworld_SetScreenBGColor:
#_0CFF91: REP #$30

#_0CFF93: LDX.w #$2669 ; RGB: #489848

#_0CFF96: LDA.b $8A

#_0CFF98: CMP.w #$0080
#_0CFF9B: BCC .normal_overworld

#_0CFF9D: LDA.b $A0

#_0CFF9F: CMP.w #$0183
#_0CFFA2: BEQ .special_area

#_0CFFA4: CMP.w #$0182
#_0CFFA7: BEQ .special_area

#_0CFFA9: CMP.w #$0180
#_0CFFAC: BNE .set_color

.special_area
#_0CFFAE: LDX.w #$19C6 ; RGB: #307030
#_0CFFB1: BRA .set_color

.normal_overworld
#_0CFFB3: LDX.w #$2669 ; RGB: #489848

#_0CFFB6: LDA.b $8A

; are we in the dark world?
#_0CFFB8: AND.w #$0040
#_0CFFBB: BEQ .set_color

#_0CFFBD: LDX.w #$2A32 ; RGB: #908850

.set_color
#_0CFFC0: TXA
#_0CFFC1: BRA SetBGColorMainBuffer

;===================================================================================================

Overworld_SetScreenBGColorCacheOnly:
#_0CFFC3: REP #$30

#_0CFFC5: LDX.w #$2669 ; RGB: #489848

#_0CFFC8: LDA.b $8A

#_0CFFCA: CMP.w #$0080
#_0CFFCD: BCC .normal_overworld

#_0CFFCF: LDA.b $A0

#_0CFFD1: CMP.w #$0183
#_0CFFD4: BEQ .special_area

#_0CFFD6: CMP.w #$0182
#_0CFFD9: BEQ .special_area

#_0CFFDB: CMP.w #$0180
#_0CFFDE: BNE .set_color

.special_area
#_0CFFE0: LDX.w #$19C6 ; RGB: #307030
#_0CFFE3: BRA .set_color

.normal_overworld
#_0CFFE5: LDX.w #$2669 ; RGB: #489848

#_0CFFE8: LDA.b $8A

; are we in the dark world?
#_0CFFEA: AND.w #$0040
#_0CFFED: BEQ .set_color

#_0CFFEF: LDX.w #$2A32 ; RGB: #908850

.set_color
#_0CFFF2: TXA
#_0CFFF3: JMP.w SetBGColorCacheOnly

;===================================================================================================
; FREE ROM: 0x0A
;===================================================================================================
NULL_0CFFF6:
#_0CFFF6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0CFFFE: db $FF, $FF

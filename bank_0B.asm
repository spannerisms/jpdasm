org $0B8000

;===================================================================================================

OverworldMap32_Screen00_High:
#_0B8000: db $E4, $FF ; EXT Repeat byte
#_0B8002: db $00
#_0B8003: db $FF ; End of Map 00

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen00_Low:
#_0B8004: db $62 ; Increment fill
#_0B8005: db $00
#_0B8006: db $00 ; Raw block
#_0B8007: db $00
#_0B8008: db $65 ; Increment fill
#_0B8009: db $03
#_0B800A: db $62 ; Increment fill
#_0B800B: db $06
#_0B800C: db $65 ; Increment fill
#_0B800D: db $06
#_0B800E: db $00 ; Raw block
#_0B800F: db $09
#_0B8010: db $62 ; Increment fill
#_0B8011: db $0C
#_0B8012: db $02 ; Raw block
#_0B8013: db $02, $00, $03
#_0B8016: db $62 ; Increment fill
#_0B8017: db $0F
#_0B8018: db $62 ; Increment fill
#_0B8019: db $0F
#_0B801A: db $83 ; Copy past
#_0B801B: dw $0800
#_0B801D: db $62 ; Increment fill
#_0B801E: db $12
#_0B801F: db $01 ; Raw block
#_0B8020: db $0B, $09
#_0B8022: db $63 ; Increment fill
#_0B8023: db $15
#_0B8024: db $62 ; Increment fill
#_0B8025: db $16
#_0B8026: db $84 ; Copy past
#_0B8027: dw $0000
#_0B8029: db $02 ; Raw block
#_0B802A: db $19, $05, $06
#_0B802D: db $63 ; Increment fill
#_0B802E: db $1A
#_0B802F: db $63 ; Increment fill
#_0B8030: db $1D
#_0B8031: db $83 ; Copy past
#_0B8032: dw $1000
#_0B8034: db $6A ; Increment fill
#_0B8035: db $21
#_0B8036: db $02 ; Raw block
#_0B8037: db $27, $07, $08
#_0B803A: db $63 ; Increment fill
#_0B803B: db $2C
#_0B803C: db $02 ; Raw block
#_0B803D: db $0D, $30, $09
#_0B8040: db $64 ; Increment fill
#_0B8041: db $31
#_0B8042: db $03 ; Raw block
#_0B8043: db $13, $32, $00, $03
#_0B8047: db $65 ; Increment fill
#_0B8048: db $36
#_0B8049: db $02 ; Raw block
#_0B804A: db $2D, $3C, $32
#_0B804D: db $64 ; Increment fill
#_0B804E: db $3D
#_0B804F: db $03 ; Raw block
#_0B8050: db $09, $0C, $42, $29
#_0B8054: db $63 ; Increment fill
#_0B8055: db $43
#_0B8056: db $02 ; Raw block
#_0B8057: db $37, $47, $32
#_0B805A: db $63 ; Increment fill
#_0B805B: db $48
#_0B805C: db $09 ; Raw block
#_0B805D: db $41, $07, $35, $13, $4C, $4D, $29, $4E
#_0B8065: db $1D, $20
#_0B8067: db $62 ; Increment fill
#_0B8068: db $4F
#_0B8069: db $06 ; Raw block
#_0B806A: db $34, $52, $53, $32, $00, $01, $40
#_0B8071: db $63 ; Increment fill
#_0B8072: db $54
#_0B8073: db $0A ; Raw block
#_0B8074: db $1C, $20, $1D, $1D, $58, $59, $03, $36
#_0B807C: db $50, $09, $0A
#_0B807F: db $64 ; Increment fill
#_0B8080: db $5A
#_0B8081: db $0B ; Raw block
#_0B8082: db $27, $5F, $2A, $60, $61, $09, $15, $62
#_0B808A: db $20, $07, $08, $53
#_0B808E: db $63 ; Increment fill
#_0B808F: db $63
#_0B8090: db $0B ; Raw block
#_0B8091: db $32, $3D, $34, $35, $67, $1A, $68, $69
#_0B8099: db $1D, $00, $01, $40
#_0B809D: db $63 ; Increment fill
#_0B809E: db $6A
#_0B809F: db $04 ; Raw block
#_0B80A0: db $41, $6E, $3E, $3F, $02
#_0B80A5: db $63 ; Increment fill
#_0B80A6: db $6F
#_0B80A7: db $07 ; Raw block
#_0B80A8: db $09, $0A, $5A, $6A, $6B, $73, $74, $41
#_0B80B0: db $62 ; Increment fill
#_0B80B1: db $48
#_0B80B2: db $17 ; Raw block
#_0B80B3: db $0B, $09, $75, $20, $1D, $07, $08, $76
#_0B80BB: db $77, $39, $37, $37, $50, $78, $79, $05
#_0B80C3: db $7A, $07, $7B, $7C, $1D, $00, $03, $7D
#_0B80CB: db $25 ; Repeat byte
#_0B80CC: db $1D
#_0B80CD: db $06 ; Raw block
#_0B80CE: db $7E, $0E, $02, $00, $01, $7F, $1D
#_0B80D5: db $FF ; End of Map 00

;===================================================================================================

OverworldMap32_Screen01_High:
#_0B80D6: db $E4, $FF ; EXT Repeat byte
#_0B80D8: db $00
#_0B80D9: db $FF ; End of Map 01

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen01_Low:
#_0B80DA: db $62 ; Increment fill
#_0B80DB: db $06
#_0B80DC: db $62 ; Increment fill
#_0B80DD: db $06
#_0B80DE: db $04 ; Raw block
#_0B80DF: db $53, $80, $81, $3B, $82
#_0B80E4: db $83 ; Copy past
#_0B80E5: dw $0200
#_0B80E7: db $06 ; Raw block
#_0B80E8: db $06, $0F, $10, $3F, $83, $84, $11
#_0B80EF: db $64 ; Increment fill
#_0B80F0: db $85
#_0B80F1: db $01 ; Raw block
#_0B80F2: db $3F, $02
#_0B80F4: db $62 ; Increment fill
#_0B80F5: db $00
#_0B80F6: db $02 ; Raw block
#_0B80F7: db $8A, $8B, $4A
#_0B80FA: db $62 ; Increment fill
#_0B80FB: db $8C
#_0B80FC: db $06 ; Raw block
#_0B80FD: db $1D, $8F, $90, $1D, $91, $92, $0B
#_0B8104: db $62 ; Increment fill
#_0B8105: db $09
#_0B8106: db $01 ; Raw block
#_0B8107: db $7E, $34
#_0B8109: db $66 ; Increment fill
#_0B810A: db $93
#_0B810B: db $01 ; Raw block
#_0B810C: db $1D, $1F
#_0B810E: db $63 ; Increment fill
#_0B810F: db $9A
#_0B8110: db $08 ; Raw block
#_0B8111: db $9B, $9E, $59, $01, $7F, $9F, $9F, $1D
#_0B8119: db $1D
#_0B811A: db $66 ; Increment fill
#_0B811B: db $9F
#_0B811C: db $03 ; Raw block
#_0B811D: db $9F, $A6, $09, $0A
#_0B8121: db $62 ; Increment fill
#_0B8122: db $A7
#_0B8123: db $01 ; Raw block
#_0B8124: db $97, $98
#_0B8126: db $63 ; Increment fill
#_0B8127: db $AA
#_0B8128: db $01 ; Raw block
#_0B8129: db $1F, $1F
#_0B812B: db $62 ; Increment fill
#_0B812C: db $AE
#_0B812D: db $02 ; Raw block
#_0B812E: db $82, $08, $76
#_0B8131: db $62 ; Increment fill
#_0B8132: db $B1
#_0B8133: db $00 ; Raw block
#_0B8134: db $1D
#_0B8135: db $66 ; Increment fill
#_0B8136: db $B4
#_0B8137: db $0A ; Raw block
#_0B8138: db $09, $BB, $BC, $11, $BD, $1D, $BE, $BF
#_0B8140: db $1C, $C0, $C1
#_0B8143: db $62 ; Increment fill
#_0B8144: db $09
#_0B8145: db $05 ; Raw block
#_0B8146: db $09, $C2, $2D, $C3, $C4, $18
#_0B814C: db $64 ; Increment fill
#_0B814D: db $C5
#_0B814E: db $04 ; Raw block
#_0B814F: db $12, $CA, $07, $08, $2C
#_0B8154: db $64 ; Increment fill
#_0B8155: db $CB
#_0B8156: db $09 ; Raw block
#_0B8157: db $A5, $1D, $D0, $1D, $B5, $D1, $01, $02
#_0B815F: db $00, $03
#_0B8161: db $62 ; Increment fill
#_0B8162: db $D2
#_0B8163: db $00 ; Raw block
#_0B8164: db $02
#_0B8165: db $62 ; Increment fill
#_0B8166: db $D5
#_0B8167: db $00 ; Raw block
#_0B8168: db $27
#_0B8169: db $62 ; Increment fill
#_0B816A: db $D8
#_0B816B: db $83 ; Copy past
#_0B816C: dw $7A00
#_0B816E: db $16 ; Raw block
#_0B816F: db $15, $DB, $DC, $14, $0B, $DD, $DE, $7E
#_0B8177: db $41, $DF, $6B, $3B, $82, $08, $2C, $CB
#_0B817F: db $1B, $E0, $DC, $05, $7A, $E1, $1D
#_0B8186: db $83 ; Copy past
#_0B8187: dw $B200
#_0B8189: db $05 ; Raw block
#_0B818A: db $E2, $E3, $03, $E4, $E5, $62
#_0B8190: db $62 ; Increment fill
#_0B8191: db $E6
#_0B8192: db $0D ; Raw block
#_0B8193: db $02, $E6, $E9, $EA, $41, $DF, $EB, $EC
#_0B819B: db $09, $15, $62, $B2, $C0, $ED
#_0B81A1: db $62 ; Increment fill
#_0B81A2: db $09
#_0B81A3: db $03 ; Raw block
#_0B81A4: db $EE, $09, $EF, $86
#_0B81A8: db $62 ; Increment fill
#_0B81A9: db $F0
#_0B81AA: db $0C ; Raw block
#_0B81AB: db $2D, $1B, $1D, $1D, $F3, $F4, $07, $93
#_0B81B3: db $06, $F5, $9C, $F6, $8F
#_0B81B8: db $62 ; Increment fill
#_0B81B9: db $F7
#_0B81BA: db $00 ; Raw block
#_0B81BB: db $37
#_0B81BC: db $63 ; Increment fill
#_0B81BD: db $FA
#_0B81BE: db $83 ; Copy past
#_0B81BF: dw $1C00
#_0B81C1: db $FF ; End of Map 01

;===================================================================================================

OverworldMap32_Screen02_High:
#_0B81C2: db $28 ; Repeat byte
#_0B81C3: db $00
#_0B81C4: db $26 ; Repeat byte
#_0B81C5: db $01
#_0B81C6: db $26 ; Repeat byte
#_0B81C7: db $00
#_0B81C8: db $28 ; Repeat byte
#_0B81C9: db $01
#_0B81CA: db $26 ; Repeat byte
#_0B81CB: db $00
#_0B81CC: db $2A ; Repeat byte
#_0B81CD: db $01
#_0B81CE: db $23 ; Repeat byte
#_0B81CF: db $00
#_0B81D0: db $29 ; Repeat byte
#_0B81D1: db $01
#_0B81D2: db $03 ; Raw block
#_0B81D3: db $00, $01, $01, $00
#_0B81D7: db $2B ; Repeat byte
#_0B81D8: db $01
#_0B81D9: db $83 ; Copy past
#_0B81DA: dw $4000
#_0B81DC: db $22 ; Repeat byte
#_0B81DD: db $01
#_0B81DE: db $01 ; Raw block
#_0B81DF: db $00, $00
#_0B81E1: db $26 ; Repeat byte
#_0B81E2: db $01
#_0B81E3: db $00 ; Raw block
#_0B81E4: db $00
#_0B81E5: db $23 ; Repeat byte
#_0B81E6: db $01
#_0B81E7: db $22 ; Repeat byte
#_0B81E8: db $00
#_0B81E9: db $27 ; Repeat byte
#_0B81EA: db $01
#_0B81EB: db $00 ; Raw block
#_0B81EC: db $00
#_0B81ED: db $24 ; Repeat byte
#_0B81EE: db $01
#_0B81EF: db $00 ; Raw block
#_0B81F0: db $00
#_0B81F1: db $28 ; Repeat byte
#_0B81F2: db $01
#_0B81F3: db $83 ; Copy past
#_0B81F4: dw $4000
#_0B81F6: db $00 ; Raw block
#_0B81F7: db $00
#_0B81F8: db $23 ; Repeat byte
#_0B81F9: db $01
#_0B81FA: db $00 ; Raw block
#_0B81FB: db $00
#_0B81FC: db $25 ; Repeat byte
#_0B81FD: db $01
#_0B81FE: db $00 ; Raw block
#_0B81FF: db $00
#_0B8200: db $22 ; Repeat byte
#_0B8201: db $01
#_0B8202: db $00 ; Raw block
#_0B8203: db $00
#_0B8204: db $22 ; Repeat byte
#_0B8205: db $01
#_0B8206: db $00 ; Raw block
#_0B8207: db $00
#_0B8208: db $26 ; Repeat byte
#_0B8209: db $01
#_0B820A: db $00 ; Raw block
#_0B820B: db $00
#_0B820C: db $27 ; Repeat byte
#_0B820D: db $01
#_0B820E: db $01 ; Raw block
#_0B820F: db $00, $00
#_0B8211: db $24 ; Repeat byte
#_0B8212: db $01
#_0B8213: db $00 ; Raw block
#_0B8214: db $00
#_0B8215: db $23 ; Repeat byte
#_0B8216: db $01
#_0B8217: db $00 ; Raw block
#_0B8218: db $00
#_0B8219: db $29 ; Repeat byte
#_0B821A: db $01
#_0B821B: db $00 ; Raw block
#_0B821C: db $00
#_0B821D: db $23 ; Repeat byte
#_0B821E: db $01
#_0B821F: db $01 ; Raw block
#_0B8220: db $00, $00
#_0B8222: db $28 ; Repeat byte
#_0B8223: db $01
#_0B8224: db $00 ; Raw block
#_0B8225: db $00
#_0B8226: db $22 ; Repeat byte
#_0B8227: db $01
#_0B8228: db $00 ; Raw block
#_0B8229: db $00
#_0B822A: db $2A ; Repeat byte
#_0B822B: db $01
#_0B822C: db $22 ; Repeat byte
#_0B822D: db $00
#_0B822E: db $2C ; Repeat byte
#_0B822F: db $01
#_0B8230: db $03 ; Raw block
#_0B8231: db $00, $00, $01, $00
#_0B8235: db $2B ; Repeat byte
#_0B8236: db $01
#_0B8237: db $FF ; End of Map 02

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen02_Low:
#_0B8238: db $01 ; Raw block
#_0B8239: db $07, $08
#_0B823B: db $62 ; Increment fill
#_0B823C: db $06
#_0B823D: db $05 ; Raw block
#_0B823E: db $06, $07, $FE, $FF, $00, $01
#_0B8244: db $22 ; Repeat byte
#_0B8245: db $02
#_0B8246: db $01 ; Raw block
#_0B8247: db $03, $03
#_0B8249: db $62 ; Increment fill
#_0B824A: db $00
#_0B824B: db $62 ; Increment fill
#_0B824C: db $00
#_0B824D: db $03 ; Raw block
#_0B824E: db $00, $04, $05, $00
#_0B8252: db $23 ; Repeat byte
#_0B8253: db $06
#_0B8254: db $01 ; Raw block
#_0B8255: db $01, $03
#_0B8257: db $62 ; Increment fill
#_0B8258: db $09
#_0B8259: db $62 ; Increment fill
#_0B825A: db $09
#_0B825B: db $00 ; Raw block
#_0B825C: db $09
#_0B825D: db $62 ; Increment fill
#_0B825E: db $07
#_0B825F: db $22 ; Repeat byte
#_0B8260: db $0A
#_0B8261: db $64 ; Increment fill
#_0B8262: db $0B
#_0B8263: db $83 ; Copy past
#_0B8264: dw $0200
#_0B8266: db $65 ; Increment fill
#_0B8267: db $10
#_0B8268: db $63 ; Increment fill
#_0B8269: db $15
#_0B826A: db $04 ; Raw block
#_0B826B: db $1D, $19, $1A, $00, $04
#_0B8270: db $6A ; Increment fill
#_0B8271: db $1B
#_0B8272: db $0A ; Raw block
#_0B8273: db $B6, $26, $27, $09, $07, $28, $29, $99
#_0B827B: db $99, $2A, $2B
#_0B827E: db $63 ; Increment fill
#_0B827F: db $2B
#_0B8280: db $01 ; Raw block
#_0B8281: db $25, $09
#_0B8283: db $63 ; Increment fill
#_0B8284: db $2F
#_0B8285: db $02 ; Raw block
#_0B8286: db $7C, $1D, $99
#_0B8289: db $62 ; Increment fill
#_0B828A: db $33
#_0B828B: db $62 ; Increment fill
#_0B828C: db $35
#_0B828D: db $03 ; Raw block
#_0B828E: db $2E, $25, $07, $32
#_0B8292: db $63 ; Increment fill
#_0B8293: db $38
#_0B8294: db $02 ; Raw block
#_0B8295: db $1D, $3C, $33
#_0B8298: db $64 ; Increment fill
#_0B8299: db $3D
#_0B829A: db $06 ; Raw block
#_0B829B: db $2E, $25, $00, $04, $3B, $91, $8E
#_0B82A2: db $63 ; Increment fill
#_0B82A3: db $42
#_0B82A4: db $03 ; Raw block
#_0B82A5: db $1D, $46, $47, $41
#_0B82A9: db $62 ; Increment fill
#_0B82AA: db $48
#_0B82AB: db $04 ; Raw block
#_0B82AC: db $09, $07, $4B, $4C, $1D
#_0B82B1: db $62 ; Increment fill
#_0B82B2: db $4D
#_0B82B3: db $02 ; Raw block
#_0B82B4: db $99, $50, $51
#_0B82B7: db $64 ; Increment fill
#_0B82B8: db $51
#_0B82B9: db $04 ; Raw block
#_0B82BA: db $07, $32, $56, $43, $44
#_0B82BF: db $63 ; Increment fill
#_0B82C0: db $57
#_0B82C1: db $02 ; Raw block
#_0B82C2: db $1D, $1D, $41
#_0B82C5: db $63 ; Increment fill
#_0B82C6: db $5B
#_0B82C7: db $16 ; Raw block
#_0B82C8: db $00, $04, $5F, $4E, $4F, $1D, $60, $1E
#_0B82D0: db $61, $62, $41, $48, $49, $63, $64, $00
#_0B82D8: db $09, $07, $57, $58, $65, $1D, $1D
#_0B82DF: db $62 ; Increment fill
#_0B82E0: db $66
#_0B82E1: db $0D ; Raw block
#_0B82E2: db $52, $53, $63, $69, $49, $6A, $07, $32
#_0B82EA: db $6B, $6C, $98, $6D, $2D, $2D
#_0B82F0: db $63 ; Increment fill
#_0B82F1: db $6E
#_0B82F2: db $0A ; Raw block
#_0B82F3: db $69, $49, $6A, $06, $00, $01, $7F, $3C
#_0B82FB: db $72, $4B, $4B
#_0B82FE: db $22 ; Repeat byte
#_0B82FF: db $6D
#_0B8300: db $10 ; Raw block
#_0B8301: db $70, $71, $73, $00, $06, $06, $09, $0A
#_0B8309: db $74, $1D, $75, $76, $72, $76, $1D, $72
#_0B8311: db $77
#_0B8312: db $84 ; Copy past
#_0B8313: dw $EB00
#_0B8315: db $FF ; End of Map 02

;===================================================================================================

OverworldMap32_Screen03_High:
#_0B8316: db $E4, $22 ; EXT Repeat byte
#_0B8318: db $01
#_0B8319: db $00 ; Raw block
#_0B831A: db $00
#_0B831B: db $E4, $91 ; EXT Repeat byte
#_0B831D: db $01
#_0B831E: db $02 ; Raw block
#_0B831F: db $00, $01, $00
#_0B8322: db $3B ; Repeat byte
#_0B8323: db $01
#_0B8324: db $00 ; Raw block
#_0B8325: db $02
#_0B8326: db $25 ; Repeat byte
#_0B8327: db $01
#_0B8328: db $01 ; Raw block
#_0B8329: db $02, $02
#_0B832B: db $26 ; Repeat byte
#_0B832C: db $01
#_0B832D: db $83 ; Copy past
#_0B832E: dw $DC00
#_0B8330: db $03 ; Raw block
#_0B8331: db $00, $01, $01, $02
#_0B8335: db $27 ; Repeat byte
#_0B8336: db $01
#_0B8337: db $25 ; Repeat byte
#_0B8338: db $02
#_0B8339: db $00 ; Raw block
#_0B833A: db $01
#_0B833B: db $22 ; Repeat byte
#_0B833C: db $02
#_0B833D: db $00 ; Raw block
#_0B833E: db $01
#_0B833F: db $FF ; End of Map 03

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen03_Low:
#_0B8340: db $68 ; Increment fill
#_0B8341: db $78
#_0B8342: db $03 ; Raw block
#_0B8343: db $7E, $81, $82, $78
#_0B8347: db $68 ; Increment fill
#_0B8348: db $83
#_0B8349: db $62 ; Increment fill
#_0B834A: db $89
#_0B834B: db $00 ; Raw block
#_0B834C: db $89
#_0B834D: db $68 ; Increment fill
#_0B834E: db $8C
#_0B834F: db $02 ; Raw block
#_0B8350: db $1D, $95, $96
#_0B8353: db $66 ; Increment fill
#_0B8354: db $96
#_0B8355: db $22 ; Repeat byte
#_0B8356: db $9D
#_0B8357: db $64 ; Increment fill
#_0B8358: db $9E
#_0B8359: db $04 ; Raw block
#_0B835A: db $95, $96, $A2, $A1, $99
#_0B835F: db $62 ; Increment fill
#_0B8360: db $A3
#_0B8361: db $22 ; Repeat byte
#_0B8362: db $A6
#_0B8363: db $63 ; Increment fill
#_0B8364: db $A7
#_0B8365: db $24 ; Repeat byte
#_0B8366: db $AB
#_0B8367: db $63 ; Increment fill
#_0B8368: db $AC
#_0B8369: db $22 ; Repeat byte
#_0B836A: db $78
#_0B836B: db $03 ; Raw block
#_0B836C: db $B0, $B1, $A8, $B2
#_0B8370: db $24 ; Repeat byte
#_0B8371: db $B3
#_0B8372: db $62 ; Increment fill
#_0B8373: db $B4
#_0B8374: db $01 ; Raw block
#_0B8375: db $91, $79
#_0B8377: db $65 ; Increment fill
#_0B8378: db $B7
#_0B8379: db $24 ; Repeat byte
#_0B837A: db $BD
#_0B837B: db $62 ; Increment fill
#_0B837C: db $BE
#_0B837D: db $00 ; Raw block
#_0B837E: db $B7
#_0B837F: db $6A ; Increment fill
#_0B8380: db $C1
#_0B8381: db $24 ; Repeat byte
#_0B8382: db $C3
#_0B8383: db $02 ; Raw block
#_0B8384: db $8A, $CC, $A2
#_0B8387: db $62 ; Increment fill
#_0B8388: db $CD
#_0B8389: db $06 ; Raw block
#_0B838A: db $B7, $B7, $B8, $D0, $D1, $95, $A2
#_0B8391: db $63 ; Increment fill
#_0B8392: db $D2
#_0B8393: db $03 ; Raw block
#_0B8394: db $95, $D2, $D6, $D7
#_0B8398: db $23 ; Repeat byte
#_0B8399: db $C3
#_0B839A: db $6B ; Increment fill
#_0B839B: db $D8
#_0B839C: db $04 ; Raw block
#_0B839D: db $96, $A1, $A2, $A2, $94
#_0B83A2: db $6E ; Increment fill
#_0B83A3: db $E4
#_0B83A4: db $02 ; Raw block
#_0B83A5: db $1D, $A1, $1D
#_0B83A8: db $64 ; Increment fill
#_0B83A9: db $F3
#_0B83AA: db $03 ; Raw block
#_0B83AB: db $0A, $0B, $ED, $ED
#_0B83AF: db $63 ; Increment fill
#_0B83B0: db $F8
#_0B83B1: db $09 ; Raw block
#_0B83B2: db $F2, $A2, $94, $FC, $03, $09, $FD, $FE
#_0B83BA: db $14, $16
#_0B83BC: db $83 ; Copy past
#_0B83BD: dw $C000
#_0B83BF: db $0B ; Raw block
#_0B83C0: db $FF, $00, $FB, $F2, $95, $96, $E4, $13
#_0B83C8: db $01, $02, $20, $23
#_0B83CC: db $84 ; Copy past
#_0B83CD: dw $D000
#_0B83CF: db $0A ; Raw block
#_0B83D0: db $03, $00, $FB, $F2, $1D, $A1, $1F, $04
#_0B83D8: db $95, $A2, $A1
#_0B83DB: db $85 ; Copy past
#_0B83DC: dw $E000
#_0B83DE: db $01 ; Raw block
#_0B83DF: db $03, $00
#_0B83E1: db $62 ; Increment fill
#_0B83E2: db $05
#_0B83E3: db $04 ; Raw block
#_0B83E4: db $DA, $08, $08, $09, $DA
#_0B83E9: db $FF ; End of Map 03

;===================================================================================================

OverworldMap32_Screen04_High:
#_0B83EA: db $22 ; Repeat byte
#_0B83EB: db $01
#_0B83EC: db $2B ; Repeat byte
#_0B83ED: db $02
#_0B83EE: db $00 ; Raw block
#_0B83EF: db $01
#_0B83F0: db $2D ; Repeat byte
#_0B83F1: db $02
#_0B83F2: db $00 ; Raw block
#_0B83F3: db $01
#_0B83F4: db $3C ; Repeat byte
#_0B83F5: db $02
#_0B83F6: db $03 ; Raw block
#_0B83F7: db $01, $01, $02, $01
#_0B83FB: db $2B ; Repeat byte
#_0B83FC: db $02
#_0B83FD: db $00 ; Raw block
#_0B83FE: db $01
#_0B83FF: db $24 ; Repeat byte
#_0B8400: db $02
#_0B8401: db $00 ; Raw block
#_0B8402: db $01
#_0B8403: db $28 ; Repeat byte
#_0B8404: db $02
#_0B8405: db $25 ; Repeat byte
#_0B8406: db $01
#_0B8407: db $00 ; Raw block
#_0B8408: db $00
#_0B8409: db $28 ; Repeat byte
#_0B840A: db $02
#_0B840B: db $22 ; Repeat byte
#_0B840C: db $01
#_0B840D: db $03 ; Raw block
#_0B840E: db $02, $00, $01, $01
#_0B8412: db $29 ; Repeat byte
#_0B8413: db $02
#_0B8414: db $02 ; Raw block
#_0B8415: db $01, $01, $02
#_0B8418: db $23 ; Repeat byte
#_0B8419: db $01
#_0B841A: db $02 ; Raw block
#_0B841B: db $02, $02, $01
#_0B841E: db $22 ; Repeat byte
#_0B841F: db $02
#_0B8420: db $24 ; Repeat byte
#_0B8421: db $01
#_0B8422: db $2B ; Repeat byte
#_0B8423: db $02
#_0B8424: db $83 ; Copy past
#_0B8425: dw $7000
#_0B8427: db $00 ; Raw block
#_0B8428: db $01
#_0B8429: db $2B ; Repeat byte
#_0B842A: db $02
#_0B842B: db $83 ; Copy past
#_0B842C: dw $8300
#_0B842E: db $23 ; Repeat byte
#_0B842F: db $02
#_0B8430: db $03 ; Raw block
#_0B8431: db $01, $02, $02, $00
#_0B8435: db $27 ; Repeat byte
#_0B8436: db $02
#_0B8437: db $22 ; Repeat byte
#_0B8438: db $01
#_0B8439: db $01 ; Raw block
#_0B843A: db $02, $01
#_0B843C: db $22 ; Repeat byte
#_0B843D: db $02
#_0B843E: db $01 ; Raw block
#_0B843F: db $00, $01
#_0B8441: db $23 ; Repeat byte
#_0B8442: db $02
#_0B8443: db $22 ; Repeat byte
#_0B8444: db $01
#_0B8445: db $83 ; Copy past
#_0B8446: dw $3A00
#_0B8448: db $25 ; Repeat byte
#_0B8449: db $02
#_0B844A: db $01 ; Raw block
#_0B844B: db $01, $01
#_0B844D: db $22 ; Repeat byte
#_0B844E: db $02
#_0B844F: db $83 ; Copy past
#_0B8450: dw $8300
#_0B8452: db $26 ; Repeat byte
#_0B8453: db $02
#_0B8454: db $84 ; Copy past
#_0B8455: dw $7D00
#_0B8457: db $22 ; Repeat byte
#_0B8458: db $02
#_0B8459: db $22 ; Repeat byte
#_0B845A: db $01
#_0B845B: db $26 ; Repeat byte
#_0B845C: db $02
#_0B845D: db $22 ; Repeat byte
#_0B845E: db $01
#_0B845F: db $FF ; End of Map 04

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen04_Low:
#_0B8460: db $02 ; Raw block
#_0B8461: db $78, $79, $C1
#_0B8464: db $6B ; Increment fill
#_0B8465: db $0A
#_0B8466: db $00 ; Raw block
#_0B8467: db $84
#_0B8468: db $63 ; Increment fill
#_0B8469: db $16
#_0B846A: db $00 ; Raw block
#_0B846B: db $0B
#_0B846C: db $68 ; Increment fill
#_0B846D: db $1A
#_0B846E: db $00 ; Raw block
#_0B846F: db $C6
#_0B8470: db $73 ; Increment fill
#_0B8471: db $23
#_0B8472: db $00 ; Raw block
#_0B8473: db $27
#_0B8474: db $66 ; Increment fill
#_0B8475: db $37
#_0B8476: db $04 ; Raw block
#_0B8477: db $2F, $94, $96, $3E, $C3
#_0B847C: db $6B ; Increment fill
#_0B847D: db $3F
#_0B847E: db $02 ; Raw block
#_0B847F: db $41, $4B, $4C
#_0B8482: db $62 ; Increment fill
#_0B8483: db $4C
#_0B8484: db $00 ; Raw block
#_0B8485: db $CC
#_0B8486: db $66 ; Increment fill
#_0B8487: db $4F
#_0B8488: db $08 ; Raw block
#_0B8489: db $52, $56, $48, $49, $EB, $EB, $8A, $CC
#_0B8491: db $1C
#_0B8492: db $63 ; Increment fill
#_0B8493: db $57
#_0B8494: db $23 ; Repeat byte
#_0B8495: db $5B
#_0B8496: db $07 ; Raw block
#_0B8497: db $5C, $2E, $00, $06, $5D, $AA, $94, $A2
#_0B849F: db $62 ; Increment fill
#_0B84A0: db $5E
#_0B84A1: db $24 ; Repeat byte
#_0B84A2: db $61
#_0B84A3: db $04 ; Raw block
#_0B84A4: db $62, $63, $17, $0C, $64
#_0B84A9: db $62 ; Increment fill
#_0B84AA: db $D3
#_0B84AB: db $03 ; Raw block
#_0B84AC: db $A1, $65, $02, $22
#_0B84B0: db $62 ; Increment fill
#_0B84B1: db $66
#_0B84B2: db $04 ; Raw block
#_0B84B3: db $22, $23, $03, $03, $17
#_0B84B8: db $6B ; Increment fill
#_0B84B9: db $69
#_0B84BA: db $04 ; Raw block
#_0B84BB: db $1D, $E4, $03, $75, $71
#_0B84C0: db $68 ; Increment fill
#_0B84C1: db $76
#_0B84C2: db $06 ; Raw block
#_0B84C3: db $5E, $7F, $80, $95, $81, $82, $71
#_0B84CA: db $63 ; Increment fill
#_0B84CB: db $83
#_0B84CC: db $03 ; Raw block
#_0B84CD: db $94, $87, $88, $1D
#_0B84D1: db $67 ; Increment fill
#_0B84D2: db $89
#_0B84D3: db $04 ; Raw block
#_0B84D4: db $09, $FD, $ED, $91, $96
#_0B84D9: db $62 ; Increment fill
#_0B84DA: db $92
#_0B84DB: db $01 ; Raw block
#_0B84DC: db $1D, $A2
#_0B84DE: db $63 ; Increment fill
#_0B84DF: db $95
#_0B84E0: db $06 ; Raw block
#_0B84E1: db $53, $6A, $13, $01, $7A, $95, $A1
#_0B84E8: db $65 ; Increment fill
#_0B84E9: db $99
#_0B84EA: db $09 ; Raw block
#_0B84EB: db $A2, $2E, $82, $9F, $A0, $1F, $04, $A1
#_0B84F3: db $DA, $09
#_0B84F5: db $65 ; Increment fill
#_0B84F6: db $A2
#_0B84F7: db $0B ; Raw block
#_0B84F8: db $95, $2E, $A8, $03, $F8, $08, $A9, $AA
#_0B8500: db $F8, $F8, $FA, $AB
#_0B8504: db $22 ; Repeat byte
#_0B8505: db $08
#_0B8506: db $05 ; Raw block
#_0B8507: db $A9, $07, $AC, $03, $03, $F8
#_0B850D: db $FF ; End of Map 04

;===================================================================================================

OverworldMap32_Screen05_High:
#_0B850E: db $26 ; Repeat byte
#_0B850F: db $02
#_0B8510: db $22 ; Repeat byte
#_0B8511: db $01
#_0B8512: db $07 ; Raw block
#_0B8513: db $02, $02, $01, $02, $02, $01, $02, $02
#_0B851B: db $22 ; Repeat byte
#_0B851C: db $01
#_0B851D: db $23 ; Repeat byte
#_0B851E: db $02
#_0B851F: db $00 ; Raw block
#_0B8520: db $01
#_0B8521: db $43 ; Repeat word
#_0B8522: dw $0201
#_0B8524: db $43 ; Repeat word
#_0B8525: dw $0102
#_0B8527: db $22 ; Repeat byte
#_0B8528: db $02
#_0B8529: db $01 ; Raw block
#_0B852A: db $01, $01
#_0B852C: db $22 ; Repeat byte
#_0B852D: db $02
#_0B852E: db $86 ; Copy past
#_0B852F: dw $0900
#_0B8531: db $22 ; Repeat byte
#_0B8532: db $02
#_0B8533: db $02 ; Raw block
#_0B8534: db $01, $02, $02
#_0B8537: db $22 ; Repeat byte
#_0B8538: db $01
#_0B8539: db $24 ; Repeat byte
#_0B853A: db $02
#_0B853B: db $00 ; Raw block
#_0B853C: db $01
#_0B853D: db $22 ; Repeat byte
#_0B853E: db $02
#_0B853F: db $00 ; Raw block
#_0B8540: db $01
#_0B8541: db $43 ; Repeat word
#_0B8542: dw $0201
#_0B8544: db $23 ; Repeat byte
#_0B8545: db $01
#_0B8546: db $00 ; Raw block
#_0B8547: db $02
#_0B8548: db $22 ; Repeat byte
#_0B8549: db $01
#_0B854A: db $22 ; Repeat byte
#_0B854B: db $02
#_0B854C: db $00 ; Raw block
#_0B854D: db $01
#_0B854E: db $23 ; Repeat byte
#_0B854F: db $02
#_0B8550: db $22 ; Repeat byte
#_0B8551: db $01
#_0B8552: db $84 ; Copy past
#_0B8553: dw $0B00
#_0B8555: db $23 ; Repeat byte
#_0B8556: db $02
#_0B8557: db $00 ; Raw block
#_0B8558: db $00
#_0B8559: db $29 ; Repeat byte
#_0B855A: db $02
#_0B855B: db $00 ; Raw block
#_0B855C: db $00
#_0B855D: db $22 ; Repeat byte
#_0B855E: db $02
#_0B855F: db $00 ; Raw block
#_0B8560: db $00
#_0B8561: db $2A ; Repeat byte
#_0B8562: db $02
#_0B8563: db $00 ; Raw block
#_0B8564: db $01
#_0B8565: db $29 ; Repeat byte
#_0B8566: db $02
#_0B8567: db $84 ; Copy past
#_0B8568: dw $0800
#_0B856A: db $25 ; Repeat byte
#_0B856B: db $02
#_0B856C: db $01 ; Raw block
#_0B856D: db $01, $01
#_0B856F: db $25 ; Repeat byte
#_0B8570: db $02
#_0B8571: db $22 ; Repeat byte
#_0B8572: db $03
#_0B8573: db $01 ; Raw block
#_0B8574: db $02, $02
#_0B8576: db $22 ; Repeat byte
#_0B8577: db $03
#_0B8578: db $05 ; Raw block
#_0B8579: db $01, $01, $03, $03, $01, $02
#_0B857F: db $43 ; Repeat word
#_0B8580: dw $0302
#_0B8582: db $22 ; Repeat byte
#_0B8583: db $02
#_0B8584: db $87 ; Copy past
#_0B8585: dw $A300
#_0B8587: db $22 ; Repeat byte
#_0B8588: db $01
#_0B8589: db $01 ; Raw block
#_0B858A: db $03, $03
#_0B858C: db $22 ; Repeat byte
#_0B858D: db $02
#_0B858E: db $01 ; Raw block
#_0B858F: db $03, $03
#_0B8591: db $83 ; Copy past
#_0B8592: dw $A600
#_0B8594: db $43 ; Repeat word
#_0B8595: dw $0201
#_0B8597: db $03 ; Raw block
#_0B8598: db $03, $02, $01, $02
#_0B859C: db $2F ; Repeat byte
#_0B859D: db $03
#_0B859E: db $2F ; Repeat byte
#_0B859F: db $01
#_0B85A0: db $2F ; Repeat byte
#_0B85A1: db $03
#_0B85A2: db $FF ; End of Map 05

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen05_Low:
#_0B85A3: db $66 ; Increment fill
#_0B85A4: db $AD
#_0B85A5: db $0A ; Raw block
#_0B85A6: db $B8, $84, $84, $B4, $AE, $78, $B5, $B6
#_0B85AE: db $84, $B7, $B8
#_0B85B1: db $22 ; Repeat byte
#_0B85B2: db $78
#_0B85B3: db $63 ; Increment fill
#_0B85B4: db $B9
#_0B85B5: db $10 ; Raw block
#_0B85B6: db $84, $84, $BD, $78, $B9, $BB, $84, $BE
#_0B85BE: db $B8, $B3, $AE, $BF, $78, $78, $C0, $C1
#_0B85C6: db $15
#_0B85C7: db $83 ; Copy past
#_0B85C8: dw $0900
#_0B85CA: db $02 ; Raw block
#_0B85CB: db $C0, $C2, $C3
#_0B85CE: db $62 ; Increment fill
#_0B85CF: db $C3
#_0B85D0: db $05 ; Raw block
#_0B85D1: db $84, $AD, $C6, $78, $78, $8F
#_0B85D7: db $64 ; Increment fill
#_0B85D8: db $C7
#_0B85D9: db $08 ; Raw block
#_0B85DA: db $B7, $CC, $CD, $31, $C3, $C3, $CE, $84
#_0B85E2: db $CF
#_0B85E3: db $22 ; Repeat byte
#_0B85E4: db $78
#_0B85E5: db $04 ; Raw block
#_0B85E6: db $8F, $D0, $CB, $C3, $C3
#_0B85EB: db $62 ; Increment fill
#_0B85EC: db $D1
#_0B85ED: db $00 ; Raw block
#_0B85EE: db $A1
#_0B85EF: db $63 ; Increment fill
#_0B85F0: db $D4
#_0B85F1: db $22 ; Repeat byte
#_0B85F2: db $78
#_0B85F3: db $04 ; Raw block
#_0B85F4: db $D8, $D0, $D9, $DA, $98
#_0B85F9: db $63 ; Increment fill
#_0B85FA: db $DB
#_0B85FB: db $00 ; Raw block
#_0B85FC: db $AA
#_0B85FD: db $62 ; Increment fill
#_0B85FE: db $DF
#_0B85FF: db $22 ; Repeat byte
#_0B8600: db $E2
#_0B8601: db $63 ; Increment fill
#_0B8602: db $E3
#_0B8603: db $04 ; Raw block
#_0B8604: db $1D, $E7, $DC, $E8, $1D
#_0B8609: db $63 ; Increment fill
#_0B860A: db $E9
#_0B860B: db $22 ; Repeat byte
#_0B860C: db $ED
#_0B860D: db $63 ; Increment fill
#_0B860E: db $EE
#_0B860F: db $12 ; Raw block
#_0B8610: db $95, $F2, $DC, $F3, $F4, $07, $AA, $F5
#_0B8618: db $B4, $AE, $B2, $81, $84, $F6, $F7, $F2
#_0B8620: db $F8, $F2, $DC
#_0B8623: db $62 ; Increment fill
#_0B8624: db $F9
#_0B8625: db $01 ; Raw block
#_0B8626: db $B5, $BF
#_0B8628: db $62 ; Increment fill
#_0B8629: db $FC
#_0B862A: db $02 ; Raw block
#_0B862B: db $BB, $B7, $FF
#_0B862E: db $62 ; Increment fill
#_0B862F: db $00
#_0B8630: db $01 ; Raw block
#_0B8631: db $F2, $DC
#_0B8633: db $62 ; Increment fill
#_0B8634: db $03
#_0B8635: db $19 ; Raw block
#_0B8636: db $BF, $84, $06, $07, $78, $C0, $C1, $08
#_0B863E: db $FF, $09, $69, $F2, $DC, $0A, $0B, $84
#_0B8646: db $84, $0C, $0D, $79, $AE, $78, $78, $8F
#_0B864E: db $0E, $0F
#_0B8650: db $85 ; Copy past
#_0B8651: dw $AF00
#_0B8653: db $0A ; Raw block
#_0B8654: db $10, $11, $78, $83, $C9, $78, $16, $12
#_0B865C: db $33, $9E, $69
#_0B865F: db $66 ; Increment fill
#_0B8660: db $13
#_0B8661: db $62 ; Increment fill
#_0B8662: db $19
#_0B8663: db $05 ; Raw block
#_0B8664: db $19, $1C, $1D, $17, $1E, $1F
#_0B866A: db $2F ; Repeat byte
#_0B866B: db $06
#_0B866C: db $2E ; Repeat byte
#_0B866D: db $20
#_0B866E: db $00 ; Raw block
#_0B866F: db $21
#_0B8670: db $FF ; End of Map 05

;===================================================================================================

OverworldMap32_Screen06_High:
#_0B8671: db $62 ; Increment fill
#_0B8672: db $01
#_0B8673: db $00 ; Raw block
#_0B8674: db $01
#_0B8675: db $43 ; Repeat word
#_0B8676: dw $0302
#_0B8678: db $04 ; Raw block
#_0B8679: db $03, $02, $02, $01, $01
#_0B867E: db $83 ; Copy past
#_0B867F: dw $0800
#_0B8681: db $23 ; Repeat byte
#_0B8682: db $03
#_0B8683: db $01 ; Raw block
#_0B8684: db $01, $03
#_0B8686: db $22 ; Repeat byte
#_0B8687: db $01
#_0B8688: db $02 ; Raw block
#_0B8689: db $03, $03, $01
#_0B868C: db $44 ; Repeat word
#_0B868D: dw $0302
#_0B868F: db $06 ; Raw block
#_0B8690: db $02, $03, $01, $01, $03, $00, $00
#_0B8697: db $22 ; Repeat byte
#_0B8698: db $03
#_0B8699: db $02 ; Raw block
#_0B869A: db $01, $02, $02
#_0B869D: db $26 ; Repeat byte
#_0B869E: db $03
#_0B869F: db $00 ; Raw block
#_0B86A0: db $02
#_0B86A1: db $22 ; Repeat byte
#_0B86A2: db $01
#_0B86A3: db $05 ; Raw block
#_0B86A4: db $03, $03, $01, $00, $02, $02
#_0B86AA: db $62 ; Increment fill
#_0B86AB: db $01
#_0B86AC: db $43 ; Repeat word
#_0B86AD: dw $0203
#_0B86AF: db $22 ; Repeat byte
#_0B86B0: db $01
#_0B86B1: db $83 ; Copy past
#_0B86B2: dw $0700
#_0B86B4: db $03 ; Raw block
#_0B86B5: db $03, $03, $00, $02
#_0B86B9: db $24 ; Repeat byte
#_0B86BA: db $03
#_0B86BB: db $83 ; Copy past
#_0B86BC: dw $1800
#_0B86BE: db $22 ; Repeat byte
#_0B86BF: db $01
#_0B86C0: db $22 ; Repeat byte
#_0B86C1: db $03
#_0B86C2: db $00 ; Raw block
#_0B86C3: db $01
#_0B86C4: db $83 ; Copy past
#_0B86C5: dw $0200
#_0B86C7: db $22 ; Repeat byte
#_0B86C8: db $01
#_0B86C9: db $01 ; Raw block
#_0B86CA: db $03, $00
#_0B86CC: db $84 ; Copy past
#_0B86CD: dw $5500
#_0B86CF: db $22 ; Repeat byte
#_0B86D0: db $01
#_0B86D1: db $01 ; Raw block
#_0B86D2: db $00, $02
#_0B86D4: db $43 ; Repeat word
#_0B86D5: dw $0302
#_0B86D7: db $01 ; Raw block
#_0B86D8: db $03, $00
#_0B86DA: db $28 ; Repeat byte
#_0B86DB: db $03
#_0B86DC: db $02 ; Raw block
#_0B86DD: db $01, $02, $01
#_0B86E0: db $44 ; Repeat word
#_0B86E1: dw $0301
#_0B86E3: db $23 ; Repeat byte
#_0B86E4: db $03
#_0B86E5: db $02 ; Raw block
#_0B86E6: db $01, $01, $03
#_0B86E9: db $25 ; Repeat byte
#_0B86EA: db $02
#_0B86EB: db $00 ; Raw block
#_0B86EC: db $01
#_0B86ED: db $22 ; Repeat byte
#_0B86EE: db $02
#_0B86EF: db $84 ; Copy past
#_0B86F0: dw $6300
#_0B86F2: db $24 ; Repeat byte
#_0B86F3: db $03
#_0B86F4: db $23 ; Repeat byte
#_0B86F5: db $01
#_0B86F6: db $01 ; Raw block
#_0B86F7: db $03, $03
#_0B86F9: db $23 ; Repeat byte
#_0B86FA: db $01
#_0B86FB: db $25 ; Repeat byte
#_0B86FC: db $03
#_0B86FD: db $23 ; Repeat byte
#_0B86FE: db $01
#_0B86FF: db $01 ; Raw block
#_0B8700: db $03, $03
#_0B8702: db $22 ; Repeat byte
#_0B8703: db $01
#_0B8704: db $25 ; Repeat byte
#_0B8705: db $03
#_0B8706: db $84 ; Copy past
#_0B8707: dw $2200
#_0B8709: db $84 ; Copy past
#_0B870A: dw $2100
#_0B870C: db $2D ; Repeat byte
#_0B870D: db $03
#_0B870E: db $01 ; Raw block
#_0B870F: db $01, $01
#_0B8711: db $24 ; Repeat byte
#_0B8712: db $03
#_0B8713: db $22 ; Repeat byte
#_0B8714: db $01
#_0B8715: db $01 ; Raw block
#_0B8716: db $03, $03
#_0B8718: db $24 ; Repeat byte
#_0B8719: db $01
#_0B871A: db $25 ; Repeat byte
#_0B871B: db $03
#_0B871C: db $83 ; Copy past
#_0B871D: dw $4900
#_0B871F: db $00 ; Raw block
#_0B8720: db $03
#_0B8721: db $25 ; Repeat byte
#_0B8722: db $01
#_0B8723: db $FF ; End of Map 06

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen06_Low:
#_0B8724: db $10 ; Raw block
#_0B8725: db $84, $FC, $22, $91, $3F, $23, $0A, $24
#_0B872D: db $25, $B4, $AE, $79, $B7, $26, $AE, $AF
#_0B8735: db $84
#_0B8736: db $63 ; Increment fill
#_0B8737: db $27
#_0B8738: db $13 ; Raw block
#_0B8739: db $88, $2B, $8B, $89, $8C, $2C, $2D, $C2
#_0B8741: db $C3, $2E, $AE, $2F, $C5, $B7, $30, $93
#_0B8749: db $F2, $31, $1D, $1D
#_0B874D: db $62 ; Increment fill
#_0B874E: db $32
#_0B874F: db $02 ; Raw block
#_0B8750: db $CC, $30, $21
#_0B8753: db $66 ; Increment fill
#_0B8754: db $35
#_0B8755: db $1D ; Raw block
#_0B8756: db $07, $AA, $AC, $AD, $3C, $3D, $A1, $1D
#_0B875E: db $30, $31, $C3, $32, $3E, $3F, $FF, $40
#_0B8766: db $FB, $B2, $B4, $B5, $41, $42, $4B, $4C
#_0B876E: db $43, $44, $1D, $3E, $45, $24
#_0B8774: db $62 ; Increment fill
#_0B8775: db $46
#_0B8776: db $06 ; Raw block
#_0B8777: db $BC, $BE, $41, $49, $52, $53, $EB
#_0B877E: db $62 ; Increment fill
#_0B877F: db $4A
#_0B8780: db $19 ; Raw block
#_0B8781: db $98, $4D, $8B, $21, $4E, $8F, $CA, $D0
#_0B8789: db $4F, $1D, $50, $51, $0A, $0A, $52, $97
#_0B8791: db $96, $95, $1D, $30, $21, $53, $0A, $54
#_0B8799: db $55, $1D
#_0B879B: db $65 ; Increment fill
#_0B879C: db $56
#_0B879D: db $62 ; Increment fill
#_0B879E: db $5B
#_0B879F: db $08 ; Raw block
#_0B87A0: db $A1, $30, $8B, $8B, $5E, $98, $5F, $95
#_0B87A8: db $56
#_0B87A9: db $62 ; Increment fill
#_0B87AA: db $60
#_0B87AB: db $04 ; Raw block
#_0B87AC: db $06, $06, $63, $F3, $F4
#_0B87B1: db $43 ; Repeat word
#_0B87B2: dw $0607
#_0B87B4: db $08 ; Raw block
#_0B87B5: db $EF, $09, $07, $07, $EF, $09, $64, $06
#_0B87BD: db $06
#_0B87BE: db $64 ; Increment fill
#_0B87BF: db $65
#_0B87C0: db $23 ; Repeat byte
#_0B87C1: db $F8
#_0B87C2: db $01 ; Raw block
#_0B87C3: db $68, $69
#_0B87C5: db $22 ; Repeat byte
#_0B87C6: db $F8
#_0B87C7: db $00 ; Raw block
#_0B87C8: db $06
#_0B87C9: db $65 ; Increment fill
#_0B87CA: db $6A
#_0B87CB: db $23 ; Repeat byte
#_0B87CC: db $F8
#_0B87CD: db $01 ; Raw block
#_0B87CE: db $70, $6F
#_0B87D0: db $22 ; Repeat byte
#_0B87D1: db $F8
#_0B87D2: db $62 ; Increment fill
#_0B87D3: db $6A
#_0B87D4: db $0D ; Raw block
#_0B87D5: db $6C, $6D, $71, $09, $72, $F8, $F8, $73
#_0B87DD: db $07, $07, $72, $F8, $F8, $74
#_0B87E3: db $22 ; Repeat byte
#_0B87E4: db $6C
#_0B87E5: db $00 ; Raw block
#_0B87E6: db $6D
#_0B87E7: db $62 ; Increment fill
#_0B87E8: db $75
#_0B87E9: db $08 ; Raw block
#_0B87EA: db $68, $69, $78, $76, $76, $77, $F8, $F8
#_0B87F2: db $74
#_0B87F3: db $22 ; Repeat byte
#_0B87F4: db $6C
#_0B87F5: db $00 ; Raw block
#_0B87F6: db $6D
#_0B87F7: db $22 ; Repeat byte
#_0B87F8: db $F8
#_0B87F9: db $01 ; Raw block
#_0B87FA: db $70, $79
#_0B87FC: db $24 ; Repeat byte
#_0B87FD: db $F8
#_0B87FE: db $01 ; Raw block
#_0B87FF: db $7A, $74
#_0B8801: db $22 ; Repeat byte
#_0B8802: db $6C
#_0B8803: db $05 ; Raw block
#_0B8804: db $6D, $F8, $7B, $73, $06, $64
#_0B880A: db $24 ; Repeat byte
#_0B880B: db $F8
#_0B880C: db $00 ; Raw block
#_0B880D: db $03
#_0B880E: db $FF ; End of Map 06

;===================================================================================================

OverworldMap32_Screen07_High:
#_0B880F: db $02 ; Raw block
#_0B8810: db $02, $01, $01
#_0B8813: db $22 ; Repeat byte
#_0B8814: db $03
#_0B8815: db $05 ; Raw block
#_0B8816: db $02, $02, $01, $02, $02, $03
#_0B881C: db $43 ; Repeat word
#_0B881D: dw $0102
#_0B881F: db $83 ; Copy past
#_0B8820: dw $0400
#_0B8822: db $00 ; Raw block
#_0B8823: db $03
#_0B8824: db $62 ; Increment fill
#_0B8825: db $01
#_0B8826: db $83 ; Copy past
#_0B8827: dw $0B00
#_0B8829: db $01 ; Raw block
#_0B882A: db $02, $03
#_0B882C: db $22 ; Repeat byte
#_0B882D: db $01
#_0B882E: db $01 ; Raw block
#_0B882F: db $02, $02
#_0B8831: db $27 ; Repeat byte
#_0B8832: db $01
#_0B8833: db $22 ; Repeat byte
#_0B8834: db $02
#_0B8835: db $23 ; Repeat byte
#_0B8836: db $01
#_0B8837: db $01 ; Raw block
#_0B8838: db $03, $03
#_0B883A: db $22 ; Repeat byte
#_0B883B: db $00
#_0B883C: db $00 ; Raw block
#_0B883D: db $03
#_0B883E: db $22 ; Repeat byte
#_0B883F: db $00
#_0B8840: db $00 ; Raw block
#_0B8841: db $02
#_0B8842: db $62 ; Increment fill
#_0B8843: db $01
#_0B8844: db $00 ; Raw block
#_0B8845: db $02
#_0B8846: db $22 ; Repeat byte
#_0B8847: db $03
#_0B8848: db $03 ; Raw block
#_0B8849: db $00, $03, $00, $01
#_0B884D: db $43 ; Repeat word
#_0B884E: dw $0301
#_0B8850: db $02 ; Raw block
#_0B8851: db $00, $00, $02
#_0B8854: db $24 ; Repeat byte
#_0B8855: db $03
#_0B8856: db $02 ; Raw block
#_0B8857: db $00, $00, $01
#_0B885A: db $26 ; Repeat byte
#_0B885B: db $03
#_0B885C: db $01 ; Raw block
#_0B885D: db $02, $01
#_0B885F: db $23 ; Repeat byte
#_0B8860: db $03
#_0B8861: db $03 ; Raw block
#_0B8862: db $00, $00, $03, $03
#_0B8866: db $22 ; Repeat byte
#_0B8867: db $00
#_0B8868: db $02 ; Raw block
#_0B8869: db $03, $03, $00
#_0B886C: db $44 ; Repeat word
#_0B886D: dw $0103
#_0B886F: db $01 ; Raw block
#_0B8870: db $03, $00
#_0B8872: db $22 ; Repeat byte
#_0B8873: db $03
#_0B8874: db $22 ; Repeat byte
#_0B8875: db $00
#_0B8876: db $25 ; Repeat byte
#_0B8877: db $03
#_0B8878: db $84 ; Copy past
#_0B8879: dw $3100
#_0B887B: db $83 ; Copy past
#_0B887C: dw $3200
#_0B887E: db $23 ; Repeat byte
#_0B887F: db $03
#_0B8880: db $01 ; Raw block
#_0B8881: db $02, $02
#_0B8883: db $22 ; Repeat byte
#_0B8884: db $03
#_0B8885: db $02 ; Raw block
#_0B8886: db $01, $00, $01
#_0B8889: db $22 ; Repeat byte
#_0B888A: db $03
#_0B888B: db $00 ; Raw block
#_0B888C: db $01
#_0B888D: db $25 ; Repeat byte
#_0B888E: db $03
#_0B888F: db $00 ; Raw block
#_0B8890: db $02
#_0B8891: db $22 ; Repeat byte
#_0B8892: db $03
#_0B8893: db $22 ; Repeat byte
#_0B8894: db $00
#_0B8895: db $86 ; Copy past
#_0B8896: dw $7E00
#_0B8898: db $22 ; Repeat byte
#_0B8899: db $02
#_0B889A: db $00 ; Raw block
#_0B889B: db $01
#_0B889C: db $83 ; Copy past
#_0B889D: dw $9000
#_0B889F: db $00 ; Raw block
#_0B88A0: db $00
#_0B88A1: db $22 ; Repeat byte
#_0B88A2: db $03
#_0B88A3: db $22 ; Repeat byte
#_0B88A4: db $00
#_0B88A5: db $03 ; Raw block
#_0B88A6: db $03, $02, $01, $01
#_0B88AA: db $23 ; Repeat byte
#_0B88AB: db $03
#_0B88AC: db $01 ; Raw block
#_0B88AD: db $01, $01
#_0B88AF: db $22 ; Repeat byte
#_0B88B0: db $02
#_0B88B1: db $02 ; Raw block
#_0B88B2: db $01, $00, $01
#_0B88B5: db $22 ; Repeat byte
#_0B88B6: db $03
#_0B88B7: db $00 ; Raw block
#_0B88B8: db $02
#_0B88B9: db $23 ; Repeat byte
#_0B88BA: db $03
#_0B88BB: db $01 ; Raw block
#_0B88BC: db $01, $01
#_0B88BE: db $22 ; Repeat byte
#_0B88BF: db $02
#_0B88C0: db $22 ; Repeat byte
#_0B88C1: db $01
#_0B88C2: db $22 ; Repeat byte
#_0B88C3: db $03
#_0B88C4: db $00 ; Raw block
#_0B88C5: db $01
#_0B88C6: db $83 ; Copy past
#_0B88C7: dw $1400
#_0B88C9: db $01 ; Raw block
#_0B88CA: db $01, $01
#_0B88CC: db $22 ; Repeat byte
#_0B88CD: db $03
#_0B88CE: db $22 ; Repeat byte
#_0B88CF: db $01
#_0B88D0: db $01 ; Raw block
#_0B88D1: db $03, $03
#_0B88D3: db $43 ; Repeat word
#_0B88D4: dw $0102
#_0B88D6: db $02 ; Raw block
#_0B88D7: db $01, $03, $02
#_0B88DA: db $22 ; Repeat byte
#_0B88DB: db $03
#_0B88DC: db $23 ; Repeat byte
#_0B88DD: db $01
#_0B88DE: db $03 ; Raw block
#_0B88DF: db $03, $02, $03, $01
#_0B88E3: db $FF ; End of Map 07

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen07_Low:
#_0B88E4: db $1C ; Raw block
#_0B88E5: db $BB, $84, $84, $7C, $7D, $11, $CA, $AE
#_0B88ED: db $78, $BF, $C0, $7E, $C6, $8F, $23, $84
#_0B88F5: db $7F, $80, $4D, $0A, $53, $7D, $0A, $81
#_0B88FD: db $12, $4D, $7B, $B6, $B7
#_0B8902: db $62 ; Increment fill
#_0B8903: db $82
#_0B8904: db $02 ; Raw block
#_0B8905: db $81, $4D, $4E
#_0B8908: db $23 ; Repeat byte
#_0B8909: db $8B
#_0B890A: db $0C ; Raw block
#_0B890B: db $89, $C3, $8A, $89, $CE, $BE, $C6, $8F
#_0B8913: db $C9, $C3, $8A, $83, $4C
#_0B8918: db $22 ; Repeat byte
#_0B8919: db $1D
#_0B891A: db $00 ; Raw block
#_0B891B: db $84
#_0B891C: db $22 ; Repeat byte
#_0B891D: db $1D
#_0B891E: db $1A ; Raw block
#_0B891F: db $3E, $C3, $C3, $85, $AE, $44, $44, $86
#_0B8927: db $1D, $87, $1D, $D2, $D3, $88, $D4, $89
#_0B892F: db $1D, $1D, $30, $8A, $8B, $4B, $8C, $8D
#_0B8937: db $1D, $1D, $D2
#_0B893A: db $65 ; Increment fill
#_0B893B: db $8E
#_0B893C: db $0A ; Raw block
#_0B893D: db $4C, $A1, $AD, $0B, $20, $94, $95, $1D
#_0B8945: db $1D, $96, $97
#_0B8948: db $22 ; Repeat byte
#_0B8949: db $1D
#_0B894A: db $09 ; Raw block
#_0B894B: db $98, $99, $1D, $9A, $B5, $9B, $F8, $9C
#_0B8953: db $9D, $1D
#_0B8955: db $62 ; Increment fill
#_0B8956: db $9E
#_0B8957: db $22 ; Repeat byte
#_0B8958: db $1D
#_0B8959: db $65 ; Increment fill
#_0B895A: db $A1
#_0B895B: db $08 ; Raw block
#_0B895C: db $F8, $A7, $A8, $1D, $1D, $50, $A9, $1D
#_0B8964: db $1D
#_0B8965: db $62 ; Increment fill
#_0B8966: db $AA
#_0B8967: db $02 ; Raw block
#_0B8968: db $87, $3E, $CE
#_0B896B: db $62 ; Increment fill
#_0B896C: db $AD
#_0B896D: db $02 ; Raw block
#_0B896E: db $F2, $1D, $95
#_0B8971: db $62 ; Increment fill
#_0B8972: db $B0
#_0B8973: db $03 ; Raw block
#_0B8974: db $F0, $B3, $B4, $A8
#_0B8978: db $62 ; Increment fill
#_0B8979: db $B5
#_0B897A: db $03 ; Raw block
#_0B897B: db $D6, $B8, $00, $B9
#_0B897F: db $22 ; Repeat byte
#_0B8980: db $1D
#_0B8981: db $12 ; Raw block
#_0B8982: db $56, $BA, $F9, $BB, $A8, $1D, $1D, $A1
#_0B898A: db $AA, $F5, $84, $0F, $BC, $F2, $1D, $1D
#_0B8992: db $4C, $BD, $BE
#_0B8995: db $22 ; Repeat byte
#_0B8996: db $1D
#_0B8997: db $02 ; Raw block
#_0B8998: db $BF, $AA, $B5
#_0B899B: db $62 ; Increment fill
#_0B899C: db $BF
#_0B899D: db $03 ; Raw block
#_0B899E: db $3A, $B9, $AB, $AC
#_0B89A2: db $22 ; Repeat byte
#_0B89A3: db $07
#_0B89A4: db $06 ; Raw block
#_0B89A5: db $A0, $1D, $94, $C2, $C3, $9B, $B0
#_0B89AC: db $63 ; Increment fill
#_0B89AD: db $C4
#_0B89AE: db $01 ; Raw block
#_0B89AF: db $B3, $B4
#_0B89B1: db $22 ; Repeat byte
#_0B89B2: db $FB
#_0B89B3: db $62 ; Increment fill
#_0B89B4: db $A9
#_0B89B5: db $62 ; Increment fill
#_0B89B6: db $C8
#_0B89B7: db $19 ; Raw block
#_0B89B8: db $78, $CB, $90, $C8, $C6, $BD, $BE, $05
#_0B89C0: db $CC, $48, $A8, $B2, $B3, $CD, $CE, $C9
#_0B89C8: db $79, $AE, $78, $8F, $CF, $C2, $D0, $D1
#_0B89D0: db $11, $8F
#_0B89D2: db $62 ; Increment fill
#_0B89D3: db $BB
#_0B89D4: db $03 ; Raw block
#_0B89D5: db $D2, $B0, $11, $83
#_0B89D9: db $FF ; End of Map 07

;===================================================================================================

OverworldMap32_Screen08_High:
#_0B89DA: db $00 ; Raw block
#_0B89DB: db $00
#_0B89DC: db $22 ; Repeat byte
#_0B89DD: db $03
#_0B89DE: db $24 ; Repeat byte
#_0B89DF: db $00
#_0B89E0: db $00 ; Raw block
#_0B89E1: db $03
#_0B89E2: db $23 ; Repeat byte
#_0B89E3: db $00
#_0B89E4: db $04 ; Raw block
#_0B89E5: db $01, $01, $00, $00, $03
#_0B89EA: db $2B ; Repeat byte
#_0B89EB: db $00
#_0B89EC: db $03 ; Raw block
#_0B89ED: db $03, $00, $00, $03
#_0B89F1: db $23 ; Repeat byte
#_0B89F2: db $00
#_0B89F3: db $00 ; Raw block
#_0B89F4: db $03
#_0B89F5: db $24 ; Repeat byte
#_0B89F6: db $00
#_0B89F7: db $01 ; Raw block
#_0B89F8: db $01, $01
#_0B89FA: db $83 ; Copy past
#_0B89FB: dw $1F00
#_0B89FD: db $23 ; Repeat byte
#_0B89FE: db $00
#_0B89FF: db $23 ; Repeat byte
#_0B8A00: db $03
#_0B8A01: db $83 ; Copy past
#_0B8A02: dw $3500
#_0B8A04: db $22 ; Repeat byte
#_0B8A05: db $00
#_0B8A06: db $01 ; Raw block
#_0B8A07: db $03, $03
#_0B8A09: db $26 ; Repeat byte
#_0B8A0A: db $00
#_0B8A0B: db $83 ; Copy past
#_0B8A0C: dw $1F00
#_0B8A0E: db $22 ; Repeat byte
#_0B8A0F: db $00
#_0B8A10: db $01 ; Raw block
#_0B8A11: db $03, $00
#_0B8A13: db $48 ; Repeat word
#_0B8A14: dw $0300
#_0B8A16: db $01 ; Raw block
#_0B8A17: db $00, $03
#_0B8A19: db $24 ; Repeat byte
#_0B8A1A: db $00
#_0B8A1B: db $00 ; Raw block
#_0B8A1C: db $03
#_0B8A1D: db $23 ; Repeat byte
#_0B8A1E: db $00
#_0B8A1F: db $00 ; Raw block
#_0B8A20: db $03
#_0B8A21: db $27 ; Repeat byte
#_0B8A22: db $00
#_0B8A23: db $03 ; Raw block
#_0B8A24: db $03, $00, $03, $03
#_0B8A28: db $22 ; Repeat byte
#_0B8A29: db $00
#_0B8A2A: db $00 ; Raw block
#_0B8A2B: db $03
#_0B8A2C: db $22 ; Repeat byte
#_0B8A2D: db $00
#_0B8A2E: db $01 ; Raw block
#_0B8A2F: db $03, $03
#_0B8A31: db $23 ; Repeat byte
#_0B8A32: db $00
#_0B8A33: db $02 ; Raw block
#_0B8A34: db $03, $03, $00
#_0B8A37: db $23 ; Repeat byte
#_0B8A38: db $03
#_0B8A39: db $00 ; Raw block
#_0B8A3A: db $00
#_0B8A3B: db $24 ; Repeat byte
#_0B8A3C: db $03
#_0B8A3D: db $01 ; Raw block
#_0B8A3E: db $00, $00
#_0B8A40: db $23 ; Repeat byte
#_0B8A41: db $03
#_0B8A42: db $03 ; Raw block
#_0B8A43: db $04, $01, $04, $04
#_0B8A47: db $23 ; Repeat byte
#_0B8A48: db $00
#_0B8A49: db $01 ; Raw block
#_0B8A4A: db $01, $03
#_0B8A4C: db $22 ; Repeat byte
#_0B8A4D: db $00
#_0B8A4E: db $05 ; Raw block
#_0B8A4F: db $04, $03, $00, $04, $01, $04
#_0B8A55: db $23 ; Repeat byte
#_0B8A56: db $00
#_0B8A57: db $22 ; Repeat byte
#_0B8A58: db $04
#_0B8A59: db $83 ; Copy past
#_0B8A5A: dw $AB00
#_0B8A5C: db $00 ; Raw block
#_0B8A5D: db $03
#_0B8A5E: db $23 ; Repeat byte
#_0B8A5F: db $04
#_0B8A60: db $01 ; Raw block
#_0B8A61: db $00, $00
#_0B8A63: db $22 ; Repeat byte
#_0B8A64: db $04
#_0B8A65: db $23 ; Repeat byte
#_0B8A66: db $00
#_0B8A67: db $00 ; Raw block
#_0B8A68: db $04
#_0B8A69: db $23 ; Repeat byte
#_0B8A6A: db $00
#_0B8A6B: db $00 ; Raw block
#_0B8A6C: db $04
#_0B8A6D: db $23 ; Repeat byte
#_0B8A6E: db $00
#_0B8A6F: db $01 ; Raw block
#_0B8A70: db $04, $04
#_0B8A72: db $25 ; Repeat byte
#_0B8A73: db $00
#_0B8A74: db $01 ; Raw block
#_0B8A75: db $03, $04
#_0B8A77: db $22 ; Repeat byte
#_0B8A78: db $00
#_0B8A79: db $03 ; Raw block
#_0B8A7A: db $04, $03, $00, $03
#_0B8A7E: db $24 ; Repeat byte
#_0B8A7F: db $00
#_0B8A80: db $04 ; Raw block
#_0B8A81: db $04, $04, $00, $04, $04
#_0B8A86: db $22 ; Repeat byte
#_0B8A87: db $00
#_0B8A88: db $23 ; Repeat byte
#_0B8A89: db $04
#_0B8A8A: db $23 ; Repeat byte
#_0B8A8B: db $00
#_0B8A8C: db $83 ; Copy past
#_0B8A8D: dw $A700
#_0B8A8F: db $00 ; Raw block
#_0B8A90: db $04
#_0B8A91: db $23 ; Repeat byte
#_0B8A92: db $00
#_0B8A93: db $01 ; Raw block
#_0B8A94: db $01, $04
#_0B8A96: db $22 ; Repeat byte
#_0B8A97: db $00
#_0B8A98: db $FF ; End of Map 08

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen08_Low:
#_0B8A99: db $00 ; Raw block
#_0B8A9A: db $09
#_0B8A9B: db $62 ; Increment fill
#_0B8A9C: db $D3
#_0B8A9D: db $16 ; Raw block
#_0B8A9E: db $C7, $C8, $1D, $96, $D7, $D6, $14, $0B
#_0B8AA6: db $09, $0A, $74, $61, $07, $35, $D7, $1D
#_0B8AAE: db $96, $D7, $29, $43, $7E, $34, $93
#_0B8AB5: db $62 ; Increment fill
#_0B8AB6: db $06
#_0B8AB7: db $18 ; Raw block
#_0B8AB8: db $94, $D8, $00, $03, $D9, $1F, $1D, $7E
#_0B8AC0: db $0D, $DA, $7E, $3E, $11, $24, $00, $04
#_0B8AC8: db $3B, $DB, $09, $0C, $D4, $C7, $C8, $55
#_0B8AD0: db $37
#_0B8AD1: db $63 ; Increment fill
#_0B8AD2: db $DC
#_0B8AD3: db $E0, $24 ; EXT Raw block
#_0B8AD5: db $30, $09, $E0, $E1, $D9, $07, $35, $D7
#_0B8ADD: db $E2, $D7, $4E, $A5, $96, $BF, $1D, $4F
#_0B8AE5: db $E3, $82, $35, $E4, $6B, $00, $01, $E5
#_0B8AED: db $B9, $EA, $E6, $27, $E7, $5C, $E1, $D9
#_0B8AF5: db $E8, $E3, $03, $E9, $6B
#_0B8AFA: db $62 ; Increment fill
#_0B8AFB: db $09
#_0B8AFC: db $E0, $22 ; EXT Raw block
#_0B8AFE: db $09, $EA, $0D, $32, $DF, $64, $EB, $6B
#_0B8B06: db $EC, $09, $21, $63, $6B, $07, $08, $EC
#_0B8B0E: db $1A, $ED, $EE, $86, $F0, $F1, $EF, $6B
#_0B8B16: db $3B, $2D, $F0, $F1, $39, $00, $01, $83
#_0B8B1E: db $F2, $F3, $C5
#_0B8B21: db $63 ; Increment fill
#_0B8B22: db $F4
#_0B8B23: db $00 ; Raw block
#_0B8B24: db $6B
#_0B8B25: db $64 ; Increment fill
#_0B8B26: db $F8
#_0B8B27: db $1C ; Raw block
#_0B8B28: db $09, $0A, $FD, $FE, $DC, $FF, $00, $43
#_0B8B30: db $01, $02, $EB, $EC, $09, $0A, $74, $FC
#_0B8B38: db $07, $08, $53, $03, $FC, $C0, $04, $4E
#_0B8B40: db $05, $63, $6B, $3B, $CB
#_0B8B45: db $62 ; Increment fill
#_0B8B46: db $06
#_0B8B47: db $04 ; Raw block
#_0B8B48: db $00, $01, $09, $03, $FC
#_0B8B4D: db $63 ; Increment fill
#_0B8B4E: db $0A
#_0B8B4F: db $01 ; Raw block
#_0B8B50: db $38, $39
#_0B8B52: db $62 ; Increment fill
#_0B8B53: db $0E
#_0B8B54: db $E0, $2B ; EXT Raw block
#_0B8B56: db $24, $00, $09, $0A, $11, $FA, $20, $D7
#_0B8B5E: db $29, $12, $29, $29, $43, $BE, $0A, $13
#_0B8B66: db $30, $09, $07, $08, $94, $20, $FC, $14
#_0B8B6E: db $34, $35, $67, $15, $DA, $20, $FC, $F3
#_0B8B76: db $F4, $07, $00, $01, $16, $17, $B8, $18
#_0B8B7E: db $19, $3F, $02, $6F
#_0B8B82: db $63 ; Increment fill
#_0B8B83: db $1A
#_0B8B84: db $83 ; Copy past
#_0B8B85: dw $BE00
#_0B8B87: db $05 ; Raw block
#_0B8B88: db $74, $1E, $0B, $09, $1F, $4A
#_0B8B8E: db $83 ; Copy past
#_0B8B8F: dw $0B00
#_0B8B91: db $03 ; Raw block
#_0B8B92: db $1E, $4B, $30, $09
#_0B8B96: db $FF ; End of Map 08

;===================================================================================================

OverworldMap32_Screen09_High:
#_0B8B97: db $22 ; Repeat byte
#_0B8B98: db $01
#_0B8B99: db $23 ; Repeat byte
#_0B8B9A: db $00
#_0B8B9B: db $03 ; Raw block
#_0B8B9C: db $04, $00, $00, $04
#_0B8BA0: db $24 ; Repeat byte
#_0B8BA1: db $00
#_0B8BA2: db $08 ; Raw block
#_0B8BA3: db $04, $03, $04, $02, $04, $03, $00, $01
#_0B8BAB: db $04
#_0B8BAC: db $26 ; Repeat byte
#_0B8BAD: db $00
#_0B8BAE: db $07 ; Raw block
#_0B8BAF: db $04, $03, $04, $00, $04, $01, $00, $04
#_0B8BB7: db $27 ; Repeat byte
#_0B8BB8: db $00
#_0B8BB9: db $01 ; Raw block
#_0B8BBA: db $04, $00
#_0B8BBC: db $45 ; Repeat word
#_0B8BBD: dw $0400
#_0B8BBF: db $02 ; Raw block
#_0B8BC0: db $03, $00, $04
#_0B8BC3: db $25 ; Repeat byte
#_0B8BC4: db $00
#_0B8BC5: db $02 ; Raw block
#_0B8BC6: db $01, $00, $00
#_0B8BC9: db $23 ; Repeat byte
#_0B8BCA: db $04
#_0B8BCB: db $01 ; Raw block
#_0B8BCC: db $00, $00
#_0B8BCE: db $22 ; Repeat byte
#_0B8BCF: db $04
#_0B8BD0: db $22 ; Repeat byte
#_0B8BD1: db $00
#_0B8BD2: db $29 ; Repeat byte
#_0B8BD3: db $04
#_0B8BD4: db $25 ; Repeat byte
#_0B8BD5: db $00
#_0B8BD6: db $29 ; Repeat byte
#_0B8BD7: db $04
#_0B8BD8: db $00 ; Raw block
#_0B8BD9: db $01
#_0B8BDA: db $84 ; Copy past
#_0B8BDB: dw $2500
#_0B8BDD: db $22 ; Repeat byte
#_0B8BDE: db $04
#_0B8BDF: db $01 ; Raw block
#_0B8BE0: db $03, $00
#_0B8BE2: db $24 ; Repeat byte
#_0B8BE3: db $04
#_0B8BE4: db $01 ; Raw block
#_0B8BE5: db $01, $04
#_0B8BE7: db $24 ; Repeat byte
#_0B8BE8: db $00
#_0B8BE9: db $22 ; Repeat byte
#_0B8BEA: db $04
#_0B8BEB: db $00 ; Raw block
#_0B8BEC: db $00
#_0B8BED: db $28 ; Repeat byte
#_0B8BEE: db $04
#_0B8BEF: db $83 ; Copy past
#_0B8BF0: dw $4200
#_0B8BF2: db $01 ; Raw block
#_0B8BF3: db $00, $03
#_0B8BF5: db $23 ; Repeat byte
#_0B8BF6: db $04
#_0B8BF7: db $01 ; Raw block
#_0B8BF8: db $00, $04
#_0B8BFA: db $26 ; Repeat byte
#_0B8BFB: db $00
#_0B8BFC: db $01 ; Raw block
#_0B8BFD: db $03, $04
#_0B8BFF: db $84 ; Copy past
#_0B8C00: dw $4000
#_0B8C02: db $22 ; Repeat byte
#_0B8C03: db $00
#_0B8C04: db $02 ; Raw block
#_0B8C05: db $04, $00, $04
#_0B8C08: db $22 ; Repeat byte
#_0B8C09: db $00
#_0B8C0A: db $02 ; Raw block
#_0B8C0B: db $03, $04, $04
#_0B8C0E: db $26 ; Repeat byte
#_0B8C0F: db $00
#_0B8C10: db $01 ; Raw block
#_0B8C11: db $01, $04
#_0B8C13: db $22 ; Repeat byte
#_0B8C14: db $00
#_0B8C15: db $01 ; Raw block
#_0B8C16: db $03, $03
#_0B8C18: db $23 ; Repeat byte
#_0B8C19: db $00
#_0B8C1A: db $43 ; Repeat word
#_0B8C1B: dw $0004
#_0B8C1D: db $01 ; Raw block
#_0B8C1E: db $00, $04
#_0B8C20: db $24 ; Repeat byte
#_0B8C21: db $00
#_0B8C22: db $00 ; Raw block
#_0B8C23: db $04
#_0B8C24: db $25 ; Repeat byte
#_0B8C25: db $00
#_0B8C26: db $83 ; Copy past
#_0B8C27: dw $9100
#_0B8C29: db $01 ; Raw block
#_0B8C2A: db $00, $04
#_0B8C2C: db $22 ; Repeat byte
#_0B8C2D: db $00
#_0B8C2E: db $23 ; Repeat byte
#_0B8C2F: db $04
#_0B8C30: db $25 ; Repeat byte
#_0B8C31: db $00
#_0B8C32: db $01 ; Raw block
#_0B8C33: db $04, $04
#_0B8C35: db $2E ; Repeat byte
#_0B8C36: db $00
#_0B8C37: db $00 ; Raw block
#_0B8C38: db $04
#_0B8C39: db $22 ; Repeat byte
#_0B8C3A: db $00
#_0B8C3B: db $FF ; End of Map 09

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen09_Low:
#_0B8C3C: db $0C ; Raw block
#_0B8C3D: db $62, $61, $62, $A5, $96, $1D, $1D, $20
#_0B8C45: db $1F, $D7, $21, $14, $0B
#_0B8C4A: db $62 ; Increment fill
#_0B8C4B: db $09
#_0B8C4C: db $0B ; Raw block
#_0B8C4D: db $22, $D8, $22, $DE, $23, $FB, $B3, $4B
#_0B8C55: db $24, $7E, $34, $93
#_0B8C59: db $62 ; Increment fill
#_0B8C5A: db $06
#_0B8C5B: db $0D ; Raw block
#_0B8C5C: db $06, $25, $DB, $25, $AA, $1E, $74, $BF
#_0B8C64: db $26, $BF, $7E, $3E, $3F, $02
#_0B8C6A: db $62 ; Increment fill
#_0B8C6B: db $00
#_0B8C6C: db $0B ; Raw block
#_0B8C6D: db $27, $A8, $C7, $28, $9A, $29, $A5, $2A
#_0B8C75: db $E2, $7E, $2B, $4A
#_0B8C79: db $83 ; Copy past
#_0B8C7A: dw $0C00
#_0B8C7C: db $03 ; Raw block
#_0B8C7D: db $65, $62, $43, $1D
#_0B8C81: db $63 ; Increment fill
#_0B8C82: db $2C
#_0B8C83: db $01 ; Raw block
#_0B8C84: db $1D, $7E
#_0B8C86: db $62 ; Increment fill
#_0B8C87: db $30
#_0B8C88: db $02 ; Raw block
#_0B8C89: db $82, $08, $06
#_0B8C8C: db $69 ; Increment fill
#_0B8C8D: db $33
#_0B8C8E: db $07 ; Raw block
#_0B8C8F: db $37, $37, $47, $3E, $3F, $02, $3D, $39
#_0B8C97: db $67 ; Increment fill
#_0B8C98: db $3E
#_0B8C99: db $05 ; Raw block
#_0B8C9A: db $43, $44, $55, $46, $4A, $0B
#_0B8CA0: db $62 ; Increment fill
#_0B8CA1: db $47
#_0B8CA2: db $02 ; Raw block
#_0B8CA3: db $DA, $7E, $33
#_0B8CA6: db $64 ; Increment fill
#_0B8CA7: db $4A
#_0B8CA8: db $05 ; Raw block
#_0B8CA9: db $4E, $9F, $7E, $05, $06, $7E
#_0B8CAF: db $62 ; Increment fill
#_0B8CB0: db $4F
#_0B8CB1: db $02 ; Raw block
#_0B8CB2: db $7E, $3D, $39
#_0B8CB5: db $62 ; Increment fill
#_0B8CB6: db $52
#_0B8CB7: db $00 ; Raw block
#_0B8CB8: db $0C
#_0B8CB9: db $62 ; Increment fill
#_0B8CBA: db $55
#_0B8CBB: db $05 ; Raw block
#_0B8CBC: db $E8, $02, $14, $58, $46, $DC
#_0B8CC2: db $63 ; Increment fill
#_0B8CC3: db $59
#_0B8CC4: db $04 ; Raw block
#_0B8CC5: db $62, $5D, $4E, $1D, $EE
#_0B8CCA: db $62 ; Increment fill
#_0B8CCB: db $09
#_0B8CCC: db $E0, $2B ; EXT Raw block
#_0B8CCE: db $12, $D7, $5E, $B3, $2D, $F9, $37, $5F
#_0B8CD6: db $1D, $F3, $CD, $60, $F5, $61, $93, $06
#_0B8CDE: db $03, $D9, $62, $63, $C7, $C8, $1D, $1D
#_0B8CE6: db $FC, $FD, $83, $1C, $56, $D1, $01, $02
#_0B8CEE: db $D3, $D4, $20, $96, $D7, $29, $64, $60
#_0B8CF6: db $65, $14, $8C, $66
#_0B8CFA: db $84 ; Copy past
#_0B8CFB: dw $9C00
#_0B8CFD: db $0F ; Raw block
#_0B8CFE: db $67, $43, $20, $7E, $34, $12, $F4, $68
#_0B8D06: db $08, $EC, $60, $F5, $61, $08, $06, $01
#_0B8D0E: db $63 ; Increment fill
#_0B8D0F: db $69
#_0B8D10: db $01 ; Raw block
#_0B8D11: db $59, $01
#_0B8D13: db $83 ; Copy past
#_0B8D14: dw $2C00
#_0B8D16: db $05 ; Raw block
#_0B8D17: db $6D, $6E, $D1, $01, $02, $0A
#_0B8D1D: db $83 ; Copy past
#_0B8D1E: dw $0C00
#_0B8D20: db $00 ; Raw block
#_0B8D21: db $09
#_0B8D22: db $85 ; Copy past
#_0B8D23: dw $F000
#_0B8D25: db $00 ; Raw block
#_0B8D26: db $6F
#_0B8D27: db $62 ; Increment fill
#_0B8D28: db $09
#_0B8D29: db $FF ; End of Map 09

;===================================================================================================

OverworldMap32_Screen0B_High:
#_0B8D2A: db $04 ; Raw block
#_0B8D2B: db $01, $01, $04, $01, $01
#_0B8D30: db $22 ; Repeat byte
#_0B8D31: db $02
#_0B8D32: db $02 ; Raw block
#_0B8D33: db $03, $01, $03
#_0B8D36: db $24 ; Repeat byte
#_0B8D37: db $01
#_0B8D38: db $44 ; Repeat word
#_0B8D39: dw $0104
#_0B8D3B: db $22 ; Repeat byte
#_0B8D3C: db $02
#_0B8D3D: db $02 ; Raw block
#_0B8D3E: db $03, $01, $04
#_0B8D41: db $22 ; Repeat byte
#_0B8D42: db $01
#_0B8D43: db $0B ; Raw block
#_0B8D44: db $03, $01, $01, $02, $04, $00, $03, $03
#_0B8D4C: db $02, $02, $04, $01
#_0B8D50: db $83 ; Copy past
#_0B8D51: dw $1700
#_0B8D53: db $83 ; Copy past
#_0B8D54: dw $0200
#_0B8D56: db $22 ; Repeat byte
#_0B8D57: db $00
#_0B8D58: db $03 ; Raw block
#_0B8D59: db $03, $03, $02, $04
#_0B8D5D: db $22 ; Repeat byte
#_0B8D5E: db $03
#_0B8D5F: db $01 ; Raw block
#_0B8D60: db $01, $03
#_0B8D62: db $62 ; Increment fill
#_0B8D63: db $02
#_0B8D64: db $00 ; Raw block
#_0B8D65: db $02
#_0B8D66: db $22 ; Repeat byte
#_0B8D67: db $01
#_0B8D68: db $00 ; Raw block
#_0B8D69: db $00
#_0B8D6A: db $22 ; Repeat byte
#_0B8D6B: db $03
#_0B8D6C: db $23 ; Repeat byte
#_0B8D6D: db $01
#_0B8D6E: db $23 ; Repeat byte
#_0B8D6F: db $03
#_0B8D70: db $83 ; Copy past
#_0B8D71: dw $1200
#_0B8D73: db $03 ; Raw block
#_0B8D74: db $04, $01, $03, $03
#_0B8D78: db $26 ; Repeat byte
#_0B8D79: db $01
#_0B8D7A: db $01 ; Raw block
#_0B8D7B: db $03, $03
#_0B8D7D: db $25 ; Repeat byte
#_0B8D7E: db $01
#_0B8D7F: db $23 ; Repeat byte
#_0B8D80: db $00
#_0B8D81: db $01 ; Raw block
#_0B8D82: db $04, $02
#_0B8D84: db $83 ; Copy past
#_0B8D85: dw $4400
#_0B8D87: db $84 ; Copy past
#_0B8D88: dw $2C00
#_0B8D8A: db $03 ; Raw block
#_0B8D8B: db $04, $00, $01, $00
#_0B8D8F: db $84 ; Copy past
#_0B8D90: dw $2D00
#_0B8D92: db $22 ; Repeat byte
#_0B8D93: db $04
#_0B8D94: db $83 ; Copy past
#_0B8D95: dw $4700
#_0B8D97: db $0A ; Raw block
#_0B8D98: db $04, $01, $01, $00, $04, $03, $00, $01
#_0B8DA0: db $01, $04, $03
#_0B8DA3: db $23 ; Repeat byte
#_0B8DA4: db $00
#_0B8DA5: db $02 ; Raw block
#_0B8DA6: db $01, $04, $00
#_0B8DA9: db $23 ; Repeat byte
#_0B8DAA: db $04
#_0B8DAB: db $00 ; Raw block
#_0B8DAC: db $02
#_0B8DAD: db $44 ; Repeat word
#_0B8DAE: dw $0001
#_0B8DB0: db $22 ; Repeat byte
#_0B8DB1: db $00
#_0B8DB2: db $02 ; Raw block
#_0B8DB3: db $04, $04, $03
#_0B8DB6: db $23 ; Repeat byte
#_0B8DB7: db $04
#_0B8DB8: db $03 ; Raw block
#_0B8DB9: db $01, $02, $01, $01
#_0B8DBD: db $22 ; Repeat byte
#_0B8DBE: db $00
#_0B8DBF: db $02 ; Raw block
#_0B8DC0: db $01, $00, $04
#_0B8DC3: db $83 ; Copy past
#_0B8DC4: dw $0700
#_0B8DC6: db $05 ; Raw block
#_0B8DC7: db $03, $04, $04, $03, $01, $03
#_0B8DCD: db $22 ; Repeat byte
#_0B8DCE: db $01
#_0B8DCF: db $01 ; Raw block
#_0B8DD0: db $04, $00
#_0B8DD2: db $22 ; Repeat byte
#_0B8DD3: db $03
#_0B8DD4: db $01 ; Raw block
#_0B8DD5: db $01, $03
#_0B8DD7: db $22 ; Repeat byte
#_0B8DD8: db $04
#_0B8DD9: db $86 ; Copy past
#_0B8DDA: dw $7100
#_0B8DDC: db $02 ; Raw block
#_0B8DDD: db $01, $00, $03
#_0B8DE0: db $26 ; Repeat byte
#_0B8DE1: db $04
#_0B8DE2: db $00 ; Raw block
#_0B8DE3: db $01
#_0B8DE4: db $25 ; Repeat byte
#_0B8DE5: db $04
#_0B8DE6: db $01 ; Raw block
#_0B8DE7: db $02, $01
#_0B8DE9: db $22 ; Repeat byte
#_0B8DEA: db $04
#_0B8DEB: db $22 ; Repeat byte
#_0B8DEC: db $01
#_0B8DED: db $01 ; Raw block
#_0B8DEE: db $04, $01
#_0B8DF0: db $27 ; Repeat byte
#_0B8DF1: db $04
#_0B8DF2: db $02 ; Raw block
#_0B8DF3: db $02, $02, $04
#_0B8DF6: db $22 ; Repeat byte
#_0B8DF7: db $01
#_0B8DF8: db $01 ; Raw block
#_0B8DF9: db $04, $04
#_0B8DFB: db $FF ; End of Map 0B

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen0B_Low:
#_0B8DFC: db $04 ; Raw block
#_0B8DFD: db $ED, $ED, $70, $F9, $FF
#_0B8E02: db $22 ; Repeat byte
#_0B8E03: db $03
#_0B8E04: db $02 ; Raw block
#_0B8E05: db $5A, $F8, $7B
#_0B8E08: db $24 ; Repeat byte
#_0B8E09: db $F8
#_0B8E0A: db $04 ; Raw block
#_0B8E0B: db $71, $ED, $72, $F9, $73
#_0B8E10: db $22 ; Repeat byte
#_0B8E11: db $03
#_0B8E12: db $02 ; Raw block
#_0B8E13: db $5A, $E5, $74
#_0B8E16: db $22 ; Repeat byte
#_0B8E17: db $F8
#_0B8E18: db $13 ; Raw block
#_0B8E19: db $7B, $F8, $D6, $86, $75, $1D, $56, $57
#_0B8E21: db $03, $03, $76, $DA, $A9, $72, $F8, $77
#_0B8E29: db $74, $F8, $D6, $DD
#_0B8E2D: db $22 ; Repeat byte
#_0B8E2E: db $1D
#_0B8E2F: db $13 ; Raw block
#_0B8E30: db $56, $57, $03, $78, $76, $76, $77, $F8
#_0B8E38: db $71, $09, $72, $79, $F3, $AB, $F2, $A2
#_0B8E40: db $1D, $56, $57, $5A
#_0B8E44: db $23 ; Repeat byte
#_0B8E45: db $F8
#_0B8E46: db $62 ; Increment fill
#_0B8E47: db $75
#_0B8E48: db $08 ; Raw block
#_0B8E49: db $6C, $7A, $B3, $7B, $61, $7C, $DB, $56
#_0B8E51: db $BA
#_0B8E52: db $26 ; Repeat byte
#_0B8E53: db $E5
#_0B8E54: db $01 ; Raw block
#_0B8E55: db $6C, $6C
#_0B8E57: db $22 ; Repeat byte
#_0B8E58: db $15
#_0B8E59: db $1A ; Raw block
#_0B8E5A: db $16, $E6, $DB, $1D, $1D, $9F, $1D, $7D
#_0B8E62: db $08, $DB, $B2, $6C, $6C, $15, $7E, $7F
#_0B8E6A: db $16, $03, $80, $1D, $A2, $1D, $81, $82
#_0B8E72: db $E5, $E6, $08
#_0B8E75: db $62 ; Increment fill
#_0B8E76: db $83
#_0B8E77: db $15 ; Raw block
#_0B8E78: db $60, $61, $23, $24, $86, $A2, $A2, $1D
#_0B8E80: db $87, $A8, $1D, $E4, $E5, $88, $A8, $1D
#_0B8E88: db $B2, $1D, $1D, $2E, $86, $1D
#_0B8E8E: db $63 ; Increment fill
#_0B8E8F: db $89
#_0B8E90: db $05 ; Raw block
#_0B8E91: db $A2, $F2, $1D, $E3, $1D, $A2
#_0B8E97: db $22 ; Repeat byte
#_0B8E98: db $1D
#_0B8E99: db $02 ; Raw block
#_0B8E9A: db $8D, $8E, $B2
#_0B8E9D: db $63 ; Increment fill
#_0B8E9E: db $8F
#_0B8E9F: db $13 ; Raw block
#_0B8EA0: db $FA, $AB, $F0, $E3, $1D, $1C, $1D, $A2
#_0B8EA8: db $1D, $93, $03, $5A, $F8, $9C, $6C, $94
#_0B8EB0: db $73, $5A, $F9, $95
#_0B8EB4: db $22 ; Repeat byte
#_0B8EB5: db $AB
#_0B8EB6: db $00 ; Raw block
#_0B8EB7: db $95
#_0B8EB8: db $84 ; Copy past
#_0B8EB9: dw $4500
#_0B8EBB: db $0D ; Raw block
#_0B8EBC: db $9C, $84, $96, $97, $BA, $F9, $98, $99
#_0B8EC4: db $B3, $B3, $9A, $A0, $1D, $56
#_0B8ECA: db $66 ; Increment fill
#_0B8ECB: db $9B
#_0B8ECC: db $00 ; Raw block
#_0B8ECD: db $AB
#_0B8ECE: db $62 ; Increment fill
#_0B8ECF: db $A2
#_0B8ED0: db $62 ; Increment fill
#_0B8ED1: db $A4
#_0B8ED2: db $01 ; Raw block
#_0B8ED3: db $07, $A0
#_0B8ED5: db $62 ; Increment fill
#_0B8ED6: db $A7
#_0B8ED7: db $22 ; Repeat byte
#_0B8ED8: db $AB
#_0B8ED9: db $01 ; Raw block
#_0B8EDA: db $AA, $B3
#_0B8EDC: db $66 ; Increment fill
#_0B8EDD: db $AB
#_0B8EDE: db $03 ; Raw block
#_0B8EDF: db $A6, $07, $07, $B2
#_0B8EE3: db $23 ; Repeat byte
#_0B8EE4: db $B3
#_0B8EE5: db $00 ; Raw block
#_0B8EE6: db $A4
#_0B8EE7: db $FF ; End of Map 0B

;===================================================================================================

OverworldMap32_Screen0C_High:
#_0B8EE8: db $25 ; Repeat byte
#_0B8EE9: db $01
#_0B8EEA: db $00 ; Raw block
#_0B8EEB: db $03
#_0B8EEC: db $2E ; Repeat byte
#_0B8EED: db $01
#_0B8EEE: db $00 ; Raw block
#_0B8EEF: db $03
#_0B8EF0: db $2E ; Repeat byte
#_0B8EF1: db $01
#_0B8EF2: db $02 ; Raw block
#_0B8EF3: db $03, $01, $04
#_0B8EF6: db $2A ; Repeat byte
#_0B8EF7: db $01
#_0B8EF8: db $44 ; Repeat word
#_0B8EF9: dw $0103
#_0B8EFB: db $01 ; Raw block
#_0B8EFC: db $02, $03
#_0B8EFE: db $28 ; Repeat byte
#_0B8EFF: db $01
#_0B8F00: db $03 ; Raw block
#_0B8F01: db $04, $04, $03, $01
#_0B8F05: db $22 ; Repeat byte
#_0B8F06: db $03
#_0B8F07: db $26 ; Repeat byte
#_0B8F08: db $01
#_0B8F09: db $04 ; Raw block
#_0B8F0A: db $02, $04, $04, $03, $03
#_0B8F0F: db $28 ; Repeat byte
#_0B8F10: db $01
#_0B8F11: db $01 ; Raw block
#_0B8F12: db $00, $00
#_0B8F14: db $22 ; Repeat byte
#_0B8F15: db $04
#_0B8F16: db $24 ; Repeat byte
#_0B8F17: db $00
#_0B8F18: db $01 ; Raw block
#_0B8F19: db $01, $00
#_0B8F1B: db $23 ; Repeat byte
#_0B8F1C: db $01
#_0B8F1D: db $22 ; Repeat byte
#_0B8F1E: db $02
#_0B8F1F: db $05 ; Raw block
#_0B8F20: db $04, $00, $01, $04, $04, $00
#_0B8F26: db $22 ; Repeat byte
#_0B8F27: db $01
#_0B8F28: db $00 ; Raw block
#_0B8F29: db $04
#_0B8F2A: db $24 ; Repeat byte
#_0B8F2B: db $01
#_0B8F2C: db $05 ; Raw block
#_0B8F2D: db $02, $00, $00, $04, $02, $04
#_0B8F33: db $83 ; Copy past
#_0B8F34: dw $4200
#_0B8F36: db $01 ; Raw block
#_0B8F37: db $02, $00
#_0B8F39: db $83 ; Copy past
#_0B8F3A: dw $4200
#_0B8F3C: db $24 ; Repeat byte
#_0B8F3D: db $02
#_0B8F3E: db $03 ; Raw block
#_0B8F3F: db $00, $01, $00, $00
#_0B8F43: db $22 ; Repeat byte
#_0B8F44: db $04
#_0B8F45: db $04 ; Raw block
#_0B8F46: db $00, $00, $04, $03, $04
#_0B8F4B: db $83 ; Copy past
#_0B8F4C: dw $8000
#_0B8F4E: db $45 ; Repeat word
#_0B8F4F: dw $0204
#_0B8F51: db $03 ; Raw block
#_0B8F52: db $01, $00, $00, $03
#_0B8F56: db $22 ; Repeat byte
#_0B8F57: db $04
#_0B8F58: db $83 ; Copy past
#_0B8F59: dw $8300
#_0B8F5B: db $00 ; Raw block
#_0B8F5C: db $01
#_0B8F5D: db $22 ; Repeat byte
#_0B8F5E: db $04
#_0B8F5F: db $23 ; Repeat byte
#_0B8F60: db $01
#_0B8F61: db $23 ; Repeat byte
#_0B8F62: db $03
#_0B8F63: db $07 ; Raw block
#_0B8F64: db $02, $02, $04, $02, $00, $03, $03, $04
#_0B8F6C: db $25 ; Repeat byte
#_0B8F6D: db $01
#_0B8F6E: db $03 ; Raw block
#_0B8F6F: db $00, $03, $01, $01
#_0B8F73: db $22 ; Repeat byte
#_0B8F74: db $02
#_0B8F75: db $02 ; Raw block
#_0B8F76: db $01, $03, $01
#_0B8F79: db $23 ; Repeat byte
#_0B8F7A: db $04
#_0B8F7B: db $23 ; Repeat byte
#_0B8F7C: db $01
#_0B8F7D: db $04 ; Raw block
#_0B8F7E: db $00, $00, $02, $04, $04
#_0B8F83: db $22 ; Repeat byte
#_0B8F84: db $02
#_0B8F85: db $25 ; Repeat byte
#_0B8F86: db $04
#_0B8F87: db $23 ; Repeat byte
#_0B8F88: db $02
#_0B8F89: db $29 ; Repeat byte
#_0B8F8A: db $04
#_0B8F8B: db $FF ; End of Map 0C

;---------------------------------------------------------------------------------------------------


OverworldMap32_Screen0C_Low:
#_0B8F8C: db $06 ; Raw block
#_0B8F8D: db $F8, $F8, $ED, $F8, $F8, $FF, $5A
#_0B8F94: db $24 ; Repeat byte
#_0B8F95: db $F8
#_0B8F96: db $22 ; Repeat byte
#_0B8F97: db $03
#_0B8F98: db $22 ; Repeat byte
#_0B8F99: db $F8
#_0B8F9A: db $84 ; Copy past
#_0B8F9B: dw $0200
#_0B8F9D: db $24 ; Repeat byte
#_0B8F9E: db $F8
#_0B8F9F: db $22 ; Repeat byte
#_0B8FA0: db $03
#_0B8FA1: db $22 ; Repeat byte
#_0B8FA2: db $F8
#_0B8FA3: db $85 ; Copy past
#_0B8FA4: dw $0200
#_0B8FA6: db $03 ; Raw block
#_0B8FA7: db $77, $E5, $F8, $F8
#_0B8FAB: db $22 ; Repeat byte
#_0B8FAC: db $03
#_0B8FAD: db $22 ; Repeat byte
#_0B8FAE: db $F8
#_0B8FAF: db $09 ; Raw block
#_0B8FB0: db $ED, $F8, $7B, $FF, $5A, $F8, $71, $A9
#_0B8FB8: db $72, $F8
#_0B8FBA: db $22 ; Repeat byte
#_0B8FBB: db $03
#_0B8FBC: db $22 ; Repeat byte
#_0B8FBD: db $F8
#_0B8FBE: db $05 ; Raw block
#_0B8FBF: db $ED, $E5, $B4, $73, $5A, $F8
#_0B8FC5: db $62 ; Increment fill
#_0B8FC6: db $75
#_0B8FC7: db $00 ; Raw block
#_0B8FC8: db $F8
#_0B8FC9: db $22 ; Repeat byte
#_0B8FCA: db $03
#_0B8FCB: db $07 ; Raw block
#_0B8FCC: db $F8, $E5, $E5, $7A, $B5, $B6, $56, $BA
#_0B8FD4: db $24 ; Repeat byte
#_0B8FD5: db $E5
#_0B8FD6: db $22 ; Repeat byte
#_0B8FD7: db $03
#_0B8FD8: db $05 ; Raw block
#_0B8FD9: db $F8, $1D, $1D, $B5, $B7, $B8
#_0B8FDF: db $24 ; Repeat byte
#_0B8FE0: db $1D
#_0B8FE1: db $0E ; Raw block
#_0B8FE2: db $A2, $1D, $E4, $03, $03, $F8, $08, $08
#_0B8FEA: db $79, $B9, $1D, $A2, $B5, $BA, $1D
#_0B8FF1: db $22 ; Repeat byte
#_0B8FF2: db $A2
#_0B8FF3: db $01 ; Raw block
#_0B8FF4: db $BB, $E4
#_0B8FF6: db $84 ; Copy past
#_0B8FF7: dw $4E00
#_0B8FF9: db $0E ; Raw block
#_0B8FFA: db $1D, $1D, $B5, $79, $BC, $A2, $A2, $BD
#_0B9002: db $BE, $8A, $1D, $E4, $E5, $8A, $BF
#_0B9009: db $22 ; Repeat byte
#_0B900A: db $08
#_0B900B: db $0D ; Raw block
#_0B900C: db $79, $7A, $1D, $A2, $1D, $1D, $C0, $C1
#_0B9014: db $BB, $1D, $1D, $90, $67, $77
#_0B901A: db $83 ; Copy past
#_0B901B: dw $8000
#_0B901D: db $0C ; Raw block
#_0B901E: db $B5, $08, $C2, $8A, $BB, $8A, $A2, $1D
#_0B9026: db $1D, $9C, $94, $C3, $C4
#_0B902B: db $83 ; Copy past
#_0B902C: dw $8300
#_0B902E: db $03 ; Raw block
#_0B902F: db $E5, $C3, $C4, $8A
#_0B9033: db $23 ; Repeat byte
#_0B9034: db $AB
#_0B9035: db $0B ; Raw block
#_0B9036: db $BB, $A8, $56, $B1, $61, $61, $C5, $7A
#_0B903E: db $1D, $56, $B1, $C6
#_0B9042: db $23 ; Repeat byte
#_0B9043: db $B3
#_0B9044: db $1C ; Raw block
#_0B9045: db $AB, $F2, $1D, $56, $22, $22, $04, $A1
#_0B904D: db $A2, $F2, $56, $22, $C7, $C8, $A4, $A4
#_0B9055: db $B3, $FB, $F2, $A2, $1D, $1D, $A1, $C9
#_0B905D: db $CA, $05, $07, $07, $C9
#_0B9062: db $62 ; Increment fill
#_0B9063: db $CB
#_0B9064: db $02 ; Raw block
#_0B9065: db $A4, $CE, $05
#_0B9068: db $22 ; Repeat byte
#_0B9069: db $07
#_0B906A: db $06 ; Raw block
#_0B906B: db $C9, $AB, $CF, $D0, $B1, $B1, $AB
#_0B9072: db $62 ; Increment fill
#_0B9073: db $D1
#_0B9074: db $FF ; End of Map 0C

;===================================================================================================

OverworldMap32_Screen0D_High:
#_0B9075: db $03 ; Raw block
#_0B9076: db $01, $02, $01, $01
#_0B907A: db $27 ; Repeat byte
#_0B907B: db $04
#_0B907C: db $00 ; Raw block
#_0B907D: db $03
#_0B907E: db $23 ; Repeat byte
#_0B907F: db $01
#_0B9080: db $02 ; Raw block
#_0B9081: db $02, $01, $01
#_0B9084: db $26 ; Repeat byte
#_0B9085: db $04
#_0B9086: db $01 ; Raw block
#_0B9087: db $02, $03
#_0B9089: db $22 ; Repeat byte
#_0B908A: db $01
#_0B908B: db $03 ; Raw block
#_0B908C: db $03, $04, $01, $01
#_0B9090: db $26 ; Repeat byte
#_0B9091: db $04
#_0B9092: db $01 ; Raw block
#_0B9093: db $02, $03
#_0B9095: db $24 ; Repeat byte
#_0B9096: db $01
#_0B9097: db $01 ; Raw block
#_0B9098: db $04, $01
#_0B909A: db $27 ; Repeat byte
#_0B909B: db $04
#_0B909C: db $00 ; Raw block
#_0B909D: db $03
#_0B909E: db $25 ; Repeat byte
#_0B909F: db $01
#_0B90A0: db $29 ; Repeat byte
#_0B90A1: db $04
#_0B90A2: db $26 ; Repeat byte
#_0B90A3: db $01
#_0B90A4: db $28 ; Repeat byte
#_0B90A5: db $04
#_0B90A6: db $02 ; Raw block
#_0B90A7: db $01, $00, $04
#_0B90AA: db $22 ; Repeat byte
#_0B90AB: db $01
#_0B90AC: db $01 ; Raw block
#_0B90AD: db $02, $00
#_0B90AF: db $23 ; Repeat byte
#_0B90B0: db $04
#_0B90B1: db $24 ; Repeat byte
#_0B90B2: db $05
#_0B90B3: db $01 ; Raw block
#_0B90B4: db $00, $03
#_0B90B6: db $83 ; Copy past
#_0B90B7: dw $0F00
#_0B90B9: db $00 ; Raw block
#_0B90BA: db $00
#_0B90BB: db $28 ; Repeat byte
#_0B90BC: db $05
#_0B90BD: db $01 ; Raw block
#_0B90BE: db $00, $00
#_0B90C0: db $83 ; Copy past
#_0B90C1: dw $0000
#_0B90C3: db $27 ; Repeat byte
#_0B90C4: db $05
#_0B90C5: db $04 ; Raw block
#_0B90C6: db $02, $00, $05, $01, $00
#_0B90CB: db $23 ; Repeat byte
#_0B90CC: db $01
#_0B90CD: db $43 ; Repeat word
#_0B90CE: dw $0405
#_0B90D0: db $23 ; Repeat byte
#_0B90D1: db $05
#_0B90D2: db $08 ; Raw block
#_0B90D3: db $01, $04, $01, $00, $01, $04, $02, $02
#_0B90DB: db $04
#_0B90DC: db $25 ; Repeat byte
#_0B90DD: db $05
#_0B90DE: db $83 ; Copy past
#_0B90DF: dw $3200
#_0B90E1: db $04 ; Raw block
#_0B90E2: db $01, $01, $04, $05, $04
#_0B90E7: db $27 ; Repeat byte
#_0B90E8: db $05
#_0B90E9: db $05 ; Raw block
#_0B90EA: db $04, $04, $05, $01, $01, $04
#_0B90F0: db $23 ; Repeat byte
#_0B90F1: db $05
#_0B90F2: db $01 ; Raw block
#_0B90F3: db $04, $04
#_0B90F5: db $22 ; Repeat byte
#_0B90F6: db $05
#_0B90F7: db $00 ; Raw block
#_0B90F8: db $04
#_0B90F9: db $22 ; Repeat byte
#_0B90FA: db $05
#_0B90FB: db $22 ; Repeat byte
#_0B90FC: db $04
#_0B90FD: db $02 ; Raw block
#_0B90FE: db $05, $05, $03
#_0B9101: db $83 ; Copy past
#_0B9102: dw $CA00
#_0B9104: db $83 ; Copy past
#_0B9105: dw $0200
#_0B9107: db $26 ; Repeat byte
#_0B9108: db $05
#_0B9109: db $00 ; Raw block
#_0B910A: db $03
#_0B910B: db $83 ; Copy past
#_0B910C: dw $9700
#_0B910E: db $01 ; Raw block
#_0B910F: db $04, $04
#_0B9111: db $22 ; Repeat byte
#_0B9112: db $05
#_0B9113: db $24 ; Repeat byte
#_0B9114: db $04
#_0B9115: db $01 ; Raw block
#_0B9116: db $05, $05
#_0B9118: db $26 ; Repeat byte
#_0B9119: db $04
#_0B911A: db $02 ; Raw block
#_0B911B: db $05, $05, $04
#_0B911E: db $FF ; End of Map 0D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen0D_Low:
#_0B911F: db $05 ; Raw block
#_0B9120: db $06, $DC, $D6, $D6, $D4, $D5
#_0B9126: db $65 ; Increment fill
#_0B9127: db $D5
#_0B9128: db $03 ; Raw block
#_0B9129: db $5A, $F8, $F8, $09
#_0B912D: db $83 ; Copy past
#_0B912E: dw $0000
#_0B9130: db $02 ; Raw block
#_0B9131: db $DB, $D5, $D5
#_0B9134: db $62 ; Increment fill
#_0B9135: db $DC
#_0B9136: db $0C ; Raw block
#_0B9137: db $DA, $03, $5A, $F8, $F8, $13, $20, $DF
#_0B913F: db $D6, $D6, $DB, $D6, $D7
#_0B9144: db $63 ; Increment fill
#_0B9145: db $E0
#_0B9146: db $84 ; Copy past
#_0B9147: dw $1B00
#_0B9149: db $03 ; Raw block
#_0B914A: db $F8, $ED, $E4, $D6
#_0B914E: db $62 ; Increment fill
#_0B914F: db $DB
#_0B9150: db $63 ; Increment fill
#_0B9151: db $E5
#_0B9152: db $00 ; Raw block
#_0B9153: db $E3
#_0B9154: db $85 ; Copy past
#_0B9155: dw $2C00
#_0B9157: db $01 ; Raw block
#_0B9158: db $ED, $E4
#_0B915A: db $68 ; Increment fill
#_0B915B: db $E9
#_0B915C: db $03 ; Raw block
#_0B915D: db $E5, $E5, $13, $F8
#_0B9161: db $22 ; Repeat byte
#_0B9162: db $ED
#_0B9163: db $68 ; Increment fill
#_0B9164: db $F2
#_0B9165: db $07 ; Raw block
#_0B9166: db $CC, $1D, $FB, $F8, $ED, $ED, $7A, $1D
#_0B916E: db $63 ; Increment fill
#_0B916F: db $FC
#_0B9170: db $64 ; Increment fill
#_0B9171: db $00
#_0B9172: db $08 ; Raw block
#_0B9173: db $1D, $BD, $F8, $ED, $7A, $97, $1D, $05
#_0B917B: db $06
#_0B917C: db $66 ; Increment fill
#_0B917D: db $06
#_0B917E: db $05 ; Raw block
#_0B917F: db $1D, $1D, $E5, $7A, $94, $A2
#_0B9185: db $67 ; Increment fill
#_0B9186: db $0D
#_0B9187: db $0C ; Raw block
#_0B9188: db $36, $1D, $15, $AB, $1D, $94, $A2, $A2
#_0B9190: db $98, $16, $DB, $17, $D5
#_0B9195: db $63 ; Increment fill
#_0B9196: db $18
#_0B9197: db $0B ; Raw block
#_0B9198: db $AB, $AA, $B3, $1D, $95, $8A, $F4, $07
#_0B91A0: db $C9, $1C, $18, $19
#_0B91A4: db $62 ; Increment fill
#_0B91A5: db $1D
#_0B91A6: db $0C ; Raw block
#_0B91A7: db $CE, $B3, $B3, $A4, $AB, $AB, $AA, $20
#_0B91AF: db $B1, $21, $22, $1D, $1E
#_0B91B4: db $63 ; Increment fill
#_0B91B5: db $23
#_0B91B6: db $02 ; Raw block
#_0B91B7: db $A4, $F7, $18
#_0B91BA: db $22 ; Repeat byte
#_0B91BB: db $B3
#_0B91BC: db $63 ; Increment fill
#_0B91BD: db $27
#_0B91BE: db $01 ; Raw block
#_0B91BF: db $D5, $D5
#_0B91C1: db $62 ; Increment fill
#_0B91C2: db $2B
#_0B91C3: db $00 ; Raw block
#_0B91C4: db $E7
#_0B91C5: db $62 ; Increment fill
#_0B91C6: db $2E
#_0B91C7: db $0D ; Raw block
#_0B91C8: db $A4, $A4, $F7, $31, $32, $8F, $33, $34
#_0B91D0: db $D5, $35, $0A, $0A, $EE, $EF
#_0B91D6: db $66 ; Increment fill
#_0B91D7: db $36
#_0B91D8: db $11 ; Raw block
#_0B91D9: db $B3, $3D, $EF, $3E, $3F, $A4, $A4, $40
#_0B91E1: db $2F, $41, $D5, $D2, $D3, $D5, $F5, $42
#_0B91E9: db $43, $F7
#_0B91EB: db $25 ; Repeat byte
#_0B91EC: db $D5
#_0B91ED: db $02 ; Raw block
#_0B91EE: db $36, $37, $D5
#_0B91F1: db $FF ; End of Map 0D

;===================================================================================================

OverworldMap32_Screen0E_High:
#_0B91F2: db $23 ; Repeat byte
#_0B91F3: db $03
#_0B91F4: db $05 ; Raw block
#_0B91F5: db $04, $01, $04, $03, $05, $05
#_0B91FB: db $25 ; Repeat byte
#_0B91FC: db $01
#_0B91FD: db $22 ; Repeat byte
#_0B91FE: db $03
#_0B91FF: db $07 ; Raw block
#_0B9200: db $04, $03, $05, $01, $05, $03, $03, $01
#_0B9208: db $22 ; Repeat byte
#_0B9209: db $03
#_0B920A: db $83 ; Copy past
#_0B920B: dw $0E00
#_0B920D: db $07 ; Raw block
#_0B920E: db $04, $03, $02, $04, $01, $02, $00, $02
#_0B9216: db $24 ; Repeat byte
#_0B9217: db $05
#_0B9218: db $14 ; Raw block
#_0B9219: db $01, $03, $04, $03, $01, $03, $02, $05
#_0B9221: db $00, $05, $02, $02, $05, $02, $02, $05
#_0B9229: db $05, $04, $03, $01, $01
#_0B922E: db $22 ; Repeat byte
#_0B922F: db $05
#_0B9230: db $05 ; Raw block
#_0B9231: db $00, $05, $02, $01, $01, $00
#_0B9237: db $22 ; Repeat byte
#_0B9238: db $01
#_0B9239: db $0A ; Raw block
#_0B923A: db $03, $05, $01, $04, $02, $00, $05, $03
#_0B9242: db $02, $02, $00
#_0B9245: db $83 ; Copy past
#_0B9246: dw $2800
#_0B9248: db $0E ; Raw block
#_0B9249: db $01, $00, $05, $05, $04, $02, $05, $03
#_0B9251: db $03, $02, $05, $02, $01, $02, $04
#_0B9258: db $24 ; Repeat byte
#_0B9259: db $01
#_0B925A: db $09 ; Raw block
#_0B925B: db $02, $00, $05, $04, $01, $04, $04, $01
#_0B9263: db $05, $02
#_0B9265: db $27 ; Repeat byte
#_0B9266: db $01
#_0B9267: db $05 ; Raw block
#_0B9268: db $05, $03, $02, $03, $03, $01
#_0B926E: db $22 ; Repeat byte
#_0B926F: db $05
#_0B9270: db $01 ; Raw block
#_0B9271: db $03, $03
#_0B9273: db $24 ; Repeat byte
#_0B9274: db $01
#_0B9275: db $03 ; Raw block
#_0B9276: db $00, $03, $01, $05
#_0B927A: db $83 ; Copy past
#_0B927B: dw $4E00
#_0B927D: db $02 ; Raw block
#_0B927E: db $03, $01, $01
#_0B9281: db $22 ; Repeat byte
#_0B9282: db $04
#_0B9283: db $02 ; Raw block
#_0B9284: db $05, $05, $00
#_0B9287: db $22 ; Repeat byte
#_0B9288: db $02
#_0B9289: db $01 ; Raw block
#_0B928A: db $05, $01
#_0B928C: db $23 ; Repeat byte
#_0B928D: db $03
#_0B928E: db $00 ; Raw block
#_0B928F: db $01
#_0B9290: db $23 ; Repeat byte
#_0B9291: db $05
#_0B9292: db $01 ; Raw block
#_0B9293: db $02, $05
#_0B9295: db $22 ; Repeat byte
#_0B9296: db $04
#_0B9297: db $83 ; Copy past
#_0B9298: dw $9300
#_0B929A: db $01 ; Raw block
#_0B929B: db $03, $04
#_0B929D: db $24 ; Repeat byte
#_0B929E: db $05
#_0B929F: db $00 ; Raw block
#_0B92A0: db $01
#_0B92A1: db $23 ; Repeat byte
#_0B92A2: db $05
#_0B92A3: db $01 ; Raw block
#_0B92A4: db $04, $01
#_0B92A6: db $83 ; Copy past
#_0B92A7: dw $4500
#_0B92A9: db $83 ; Copy past
#_0B92AA: dw $C800
#_0B92AC: db $02 ; Raw block
#_0B92AD: db $01, $04, $03
#_0B92B0: db $23 ; Repeat byte
#_0B92B1: db $05
#_0B92B2: db $00 ; Raw block
#_0B92B3: db $04
#_0B92B4: db $22 ; Repeat byte
#_0B92B5: db $01
#_0B92B6: db $07 ; Raw block
#_0B92B7: db $04, $04, $05, $04, $02, $02, $05, $04
#_0B92BF: db $83 ; Copy past
#_0B92C0: dw $B200
#_0B92C2: db $03 ; Raw block
#_0B92C3: db $05, $04, $04, $01
#_0B92C7: db $44 ; Repeat word
#_0B92C8: dw $0504
#_0B92CA: db $00 ; Raw block
#_0B92CB: db $04
#_0B92CC: db $23 ; Repeat byte
#_0B92CD: db $05
#_0B92CE: db $00 ; Raw block
#_0B92CF: db $03
#_0B92D0: db $23 ; Repeat byte
#_0B92D1: db $05
#_0B92D2: db $02 ; Raw block
#_0B92D3: db $04, $05, $05
#_0B92D6: db $FF ; End of Map 0E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen0E_Low:
#_0B92D7: db $00 ; Raw block
#_0B92D8: db $6B
#_0B92D9: db $22 ; Repeat byte
#_0B92DA: db $6C
#_0B92DB: db $05 ; Raw block
#_0B92DC: db $94, $E5, $74, $78, $44, $45
#_0B92E2: db $24 ; Repeat byte
#_0B92E3: db $F8
#_0B92E4: db $00 ; Raw block
#_0B92E5: db $03
#_0B92E6: db $22 ; Repeat byte
#_0B92E7: db $6C
#_0B92E8: db $0A ; Raw block
#_0B92E9: db $84, $A8, $46, $AC, $47, $70, $6F, $F8
#_0B92F1: db $68, $69, $7B
#_0B92F4: db $83 ; Copy past
#_0B92F5: dw $0E00
#_0B92F7: db $07 ; Raw block
#_0B92F8: db $84, $A8, $A1, $B2, $B4, $7A, $1D, $A1
#_0B9300: db $64 ; Increment fill
#_0B9301: db $47
#_0B9302: db $14 ; Raw block
#_0B9303: db $03, $6C, $84, $A8, $97, $9A, $02, $4C
#_0B930B: db $1D, $4D, $AA, $7A, $4E, $59, $5A, $4F
#_0B9313: db $50, $84, $A8, $95, $A2
#_0B9318: db $62 ; Increment fill
#_0B9319: db $51
#_0B931A: db $E0, $38 ; EXT Raw block
#_0B931C: db $1D, $54, $86, $95, $A2, $1D, $A2, $41
#_0B9324: db $5B, $A8, $55, $DB, $B5, $6E, $1D, $56
#_0B932C: db $B2, $79, $91, $1D, $1D, $8D, $57, $58
#_0B9334: db $49, $1D, $59, $5A, $C5, $7A, $5B, $56
#_0B933C: db $BA, $7A, $5C, $07, $AA, $97, $E6, $EB
#_0B9344: db $6A, $A2, $A1, $1F, $04, $1D, $5D, $C4
#_0B934C: db $98, $81, $82, $E5, $5E, $82, $00, $06
#_0B9354: db $06
#_0B9355: db $22 ; Repeat byte
#_0B9356: db $AB
#_0B9357: db $0C ; Raw block
#_0B9358: db $F2, $A2, $5F, $B1, $61, $B4, $A8, $97
#_0B9360: db $50, $60, $61, $20, $20
#_0B9365: db $22 ; Repeat byte
#_0B9366: db $B3
#_0B9367: db $0C ; Raw block
#_0B9368: db $FB, $F2, $1D, $56, $22, $62, $94, $A2
#_0B9370: db $50, $63, $5A, $F8, $F8
#_0B9375: db $22 ; Repeat byte
#_0B9376: db $A4
#_0B9377: db $0D ; Raw block
#_0B9378: db $64, $65, $1D, $A1, $07, $A2, $66, $A2
#_0B9380: db $56, $57, $5A, $7B, $F8, $19
#_0B9386: db $62 ; Increment fill
#_0B9387: db $67
#_0B9388: db $0A ; Raw block
#_0B9389: db $41, $4D, $C9, $B1, $CA, $FB, $F2, $AA
#_0B9391: db $56, $BA, $74
#_0B9394: db $64 ; Increment fill
#_0B9395: db $6A
#_0B9396: db $00 ; Raw block
#_0B9397: db $CC
#_0B9398: db $63 ; Increment fill
#_0B9399: db $6F
#_0B939A: db $0C ; Raw block
#_0B939B: db $CE, $FB, $73, $66, $AA, $74, $75, $D8
#_0B93A3: db $D1, $76, $A2, $8A, $C8
#_0B93A8: db $62 ; Increment fill
#_0B93A9: db $77
#_0B93AA: db $E0, $26 ; EXT Raw block
#_0B93AC: db $26, $CE, $B3, $FB, $AB, $AA, $B3, $7A
#_0B93B4: db $A6, $07, $07, $7B, $B3, $7C, $2B, $D1
#_0B93BC: db $7D, $26, $A4, $CE, $B3, $B3, $7E, $F5
#_0B93C4: db $42, $B1, $B1, $43, $7F, $3B, $80, $20
#_0B93CC: db $81, $82, $41, $26, $A4, $7F, $36
#_0B93D3: db $FF ; End of Map 0E

;===================================================================================================

OverworldMap32_Screen0F_High:
#_0B93D4: db $24 ; Repeat byte
#_0B93D5: db $05
#_0B93D6: db $00 ; Raw block
#_0B93D7: db $01
#_0B93D8: db $25 ; Repeat byte
#_0B93D9: db $05
#_0B93DA: db $22 ; Repeat byte
#_0B93DB: db $02
#_0B93DC: db $00 ; Raw block
#_0B93DD: db $01
#_0B93DE: db $24 ; Repeat byte
#_0B93DF: db $05
#_0B93E0: db $02 ; Raw block
#_0B93E1: db $03, $01, $01
#_0B93E4: db $23 ; Repeat byte
#_0B93E5: db $05
#_0B93E6: db $22 ; Repeat byte
#_0B93E7: db $02
#_0B93E8: db $01 ; Raw block
#_0B93E9: db $01, $03
#_0B93EB: db $23 ; Repeat byte
#_0B93EC: db $05
#_0B93ED: db $02 ; Raw block
#_0B93EE: db $02, $02, $01
#_0B93F1: db $22 ; Repeat byte
#_0B93F2: db $05
#_0B93F3: db $22 ; Repeat byte
#_0B93F4: db $02
#_0B93F5: db $02 ; Raw block
#_0B93F6: db $05, $05, $04
#_0B93F9: db $24 ; Repeat byte
#_0B93FA: db $05
#_0B93FB: db $00 ; Raw block
#_0B93FC: db $02
#_0B93FD: db $23 ; Repeat byte
#_0B93FE: db $05
#_0B93FF: db $03 ; Raw block
#_0B9400: db $02, $02, $05, $03
#_0B9404: db $2B ; Repeat byte
#_0B9405: db $05
#_0B9406: db $03 ; Raw block
#_0B9407: db $02, $05, $05, $02
#_0B940B: db $2D ; Repeat byte
#_0B940C: db $05
#_0B940D: db $22 ; Repeat byte
#_0B940E: db $02
#_0B940F: db $26 ; Repeat byte
#_0B9410: db $05
#_0B9411: db $00 ; Raw block
#_0B9412: db $00
#_0B9413: db $23 ; Repeat byte
#_0B9414: db $05
#_0B9415: db $22 ; Repeat byte
#_0B9416: db $02
#_0B9417: db $2D ; Repeat byte
#_0B9418: db $05
#_0B9419: db $00 ; Raw block
#_0B941A: db $02
#_0B941B: db $29 ; Repeat byte
#_0B941C: db $05
#_0B941D: db $02 ; Raw block
#_0B941E: db $03, $05, $01
#_0B9421: db $24 ; Repeat byte
#_0B9422: db $05
#_0B9423: db $01 ; Raw block
#_0B9424: db $01, $01
#_0B9426: db $26 ; Repeat byte
#_0B9427: db $05
#_0B9428: db $00 ; Raw block
#_0B9429: db $03
#_0B942A: db $24 ; Repeat byte
#_0B942B: db $05
#_0B942C: db $22 ; Repeat byte
#_0B942D: db $01
#_0B942E: db $2B ; Repeat byte
#_0B942F: db $05
#_0B9430: db $03 ; Raw block
#_0B9431: db $01, $01, $05, $01
#_0B9435: db $2B ; Repeat byte
#_0B9436: db $05
#_0B9437: db $01 ; Raw block
#_0B9438: db $01, $01
#_0B943A: db $24 ; Repeat byte
#_0B943B: db $05
#_0B943C: db $27 ; Repeat byte
#_0B943D: db $06
#_0B943E: db $04 ; Raw block
#_0B943F: db $05, $01, $01, $03, $05
#_0B9444: db $22 ; Repeat byte
#_0B9445: db $06
#_0B9446: db $00 ; Raw block
#_0B9447: db $01
#_0B9448: db $28 ; Repeat byte
#_0B9449: db $06
#_0B944A: db $02 ; Raw block
#_0B944B: db $01, $03, $03
#_0B944E: db $23 ; Repeat byte
#_0B944F: db $06
#_0B9450: db $02 ; Raw block
#_0B9451: db $01, $06, $01
#_0B9454: db $22 ; Repeat byte
#_0B9455: db $06
#_0B9456: db $05 ; Raw block
#_0B9457: db $05, $06, $01, $06, $03, $05
#_0B945D: db $24 ; Repeat byte
#_0B945E: db $06
#_0B945F: db $03 ; Raw block
#_0B9460: db $01, $02, $01, $03
#_0B9464: db $83 ; Copy past
#_0B9465: dw $EB00
#_0B9467: db $00 ; Raw block
#_0B9468: db $01
#_0B9469: db $FF ; End of Map 0F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen0F_Low:
#_0B946A: db $64 ; Increment fill
#_0B946B: db $83
#_0B946C: db $00 ; Raw block
#_0B946D: db $71
#_0B946E: db $65 ; Increment fill
#_0B946F: db $88
#_0B9470: db $22 ; Repeat byte
#_0B9471: db $82
#_0B9472: db $02 ; Raw block
#_0B9473: db $71, $8E, $83
#_0B9476: db $62 ; Increment fill
#_0B9477: db $8F
#_0B9478: db $02 ; Raw block
#_0B9479: db $51, $FD, $ED
#_0B947C: db $63 ; Increment fill
#_0B947D: db $92
#_0B947E: db $22 ; Repeat byte
#_0B947F: db $82
#_0B9480: db $02 ; Raw block
#_0B9481: db $71, $6C, $8E
#_0B9484: db $62 ; Increment fill
#_0B9485: db $96
#_0B9486: db $02 ; Raw block
#_0B9487: db $03, $01, $ED
#_0B948A: db $62 ; Increment fill
#_0B948B: db $99
#_0B948C: db $05 ; Raw block
#_0B948D: db $8E, $8F, $8F, $9C, $9D, $83
#_0B9493: db $64 ; Increment fill
#_0B9494: db $9E
#_0B9495: db $01 ; Raw block
#_0B9496: db $01, $99
#_0B9498: db $62 ; Increment fill
#_0B9499: db $A3
#_0B949A: db $03 ; Raw block
#_0B949B: db $82, $82, $60, $51
#_0B949F: db $63 ; Increment fill
#_0B94A0: db $A6
#_0B94A1: db $00 ; Raw block
#_0B94A2: db $A4
#_0B94A3: db $66 ; Increment fill
#_0B94A4: db $AA
#_0B94A5: db $09 ; Raw block
#_0B94A6: db $82, $60, $63, $03, $B1, $8A, $B2, $B3
#_0B94AE: db $A4, $A4
#_0B94B0: db $66 ; Increment fill
#_0B94B1: db $B4
#_0B94B2: db $00 ; Raw block
#_0B94B3: db $63
#_0B94B4: db $22 ; Repeat byte
#_0B94B5: db $03
#_0B94B6: db $00 ; Raw block
#_0B94B7: db $8A
#_0B94B8: db $62 ; Increment fill
#_0B94B9: db $BB
#_0B94BA: db $03 ; Raw block
#_0B94BB: db $A4, $BE, $BF, $1D
#_0B94BF: db $63 ; Increment fill
#_0B94C0: db $C0
#_0B94C1: db $22 ; Repeat byte
#_0B94C2: db $03
#_0B94C3: db $01 ; Raw block
#_0B94C4: db $C4, $8A
#_0B94C6: db $6B ; Increment fill
#_0B94C7: db $C5
#_0B94C8: db $01 ; Raw block
#_0B94C9: db $03, $C4
#_0B94CB: db $68 ; Increment fill
#_0B94CC: db $D1
#_0B94CD: db $02 ; Raw block
#_0B94CE: db $56, $DA, $23
#_0B94D1: db $62 ; Increment fill
#_0B94D2: db $DB
#_0B94D3: db $03 ; Raw block
#_0B94D4: db $D1, $DE, $CD, $CD
#_0B94D8: db $66 ; Increment fill
#_0B94D9: db $DF
#_0B94DA: db $00 ; Raw block
#_0B94DB: db $D5
#_0B94DC: db $64 ; Increment fill
#_0B94DD: db $E6
#_0B94DE: db $02 ; Raw block
#_0B94DF: db $03, $D6, $D6
#_0B94E2: db $6A ; Increment fill
#_0B94E3: db $EB
#_0B94E4: db $04 ; Raw block
#_0B94E5: db $E9, $71, $01, $83, $D6
#_0B94EA: db $64 ; Increment fill
#_0B94EB: db $F6
#_0B94EC: db $0D ; Raw block
#_0B94ED: db $F5, $FB, $C1, $FC, $FD, $C1, $E9, $71
#_0B94F5: db $06, $8E, $83, $84, $FE, $FF
#_0B94FB: db $67 ; Increment fill
#_0B94FC: db $00
#_0B94FD: db $04 ; Raw block
#_0B94FE: db $E9, $71, $06, $6C, $8E
#_0B9503: db $62 ; Increment fill
#_0B9504: db $08
#_0B9505: db $00 ; Raw block
#_0B9506: db $03
#_0B9507: db $63 ; Increment fill
#_0B9508: db $0B
#_0B9509: db $00 ; Raw block
#_0B950A: db $04
#_0B950B: db $63 ; Increment fill
#_0B950C: db $0F
#_0B950D: db $02 ; Raw block
#_0B950E: db $0C, $6C, $6C
#_0B9511: db $63 ; Increment fill
#_0B9512: db $13
#_0B9513: db $0B ; Raw block
#_0B9514: db $03, $17, $17, $18, $0E, $19, $DC, $1A
#_0B951C: db $03, $1B, $6C, $9E
#_0B9520: db $63 ; Increment fill
#_0B9521: db $1C
#_0B9522: db $09 ; Raw block
#_0B9523: db $16, $03, $75, $00, $63, $20, $FB, $21
#_0B952B: db $F3, $71
#_0B952D: db $FF ; End of Map 0F

;===================================================================================================

OverworldMap32_Screen10_High:
#_0B952E: db $03 ; Raw block
#_0B952F: db $00, $00, $06, $06
#_0B9533: db $26 ; Repeat byte
#_0B9534: db $00
#_0B9535: db $01 ; Raw block
#_0B9536: db $06, $06
#_0B9538: db $24 ; Repeat byte
#_0B9539: db $00
#_0B953A: db $01 ; Raw block
#_0B953B: db $06, $06
#_0B953D: db $26 ; Repeat byte
#_0B953E: db $00
#_0B953F: db $01 ; Raw block
#_0B9540: db $06, $06
#_0B9542: db $23 ; Repeat byte
#_0B9543: db $00
#_0B9544: db $03 ; Raw block
#_0B9545: db $01, $06, $06, $01
#_0B9549: db $23 ; Repeat byte
#_0B954A: db $00
#_0B954B: db $00 ; Raw block
#_0B954C: db $03
#_0B954D: db $84 ; Copy past
#_0B954E: dw $2100
#_0B9550: db $05 ; Raw block
#_0B9551: db $03, $00, $04, $06, $05, $01
#_0B9557: db $24 ; Repeat byte
#_0B9558: db $00
#_0B9559: db $02 ; Raw block
#_0B955A: db $01, $02, $06
#_0B955D: db $24 ; Repeat byte
#_0B955E: db $00
#_0B955F: db $01 ; Raw block
#_0B9560: db $01, $06
#_0B9562: db $25 ; Repeat byte
#_0B9563: db $00
#_0B9564: db $00 ; Raw block
#_0B9565: db $01
#_0B9566: db $25 ; Repeat byte
#_0B9567: db $00
#_0B9568: db $04 ; Raw block
#_0B9569: db $01, $06, $01, $01, $06
#_0B956E: db $22 ; Repeat byte
#_0B956F: db $00
#_0B9570: db $04 ; Raw block
#_0B9571: db $03, $04, $00, $06, $01
#_0B9576: db $22 ; Repeat byte
#_0B9577: db $00
#_0B9578: db $00 ; Raw block
#_0B9579: db $04
#_0B957A: db $22 ; Repeat byte
#_0B957B: db $01
#_0B957C: db $00 ; Raw block
#_0B957D: db $06
#_0B957E: db $23 ; Repeat byte
#_0B957F: db $00
#_0B9580: db $03 ; Raw block
#_0B9581: db $01, $04, $03, $01
#_0B9585: db $23 ; Repeat byte
#_0B9586: db $00
#_0B9587: db $03 ; Raw block
#_0B9588: db $01, $03, $01, $04
#_0B958C: db $23 ; Repeat byte
#_0B958D: db $00
#_0B958E: db $02 ; Raw block
#_0B958F: db $01, $04, $01
#_0B9592: db $25 ; Repeat byte
#_0B9593: db $00
#_0B9594: db $00 ; Raw block
#_0B9595: db $01
#_0B9596: db $24 ; Repeat byte
#_0B9597: db $00
#_0B9598: db $03 ; Raw block
#_0B9599: db $04, $04, $06, $06
#_0B959D: db $26 ; Repeat byte
#_0B959E: db $00
#_0B959F: db $00 ; Raw block
#_0B95A0: db $01
#_0B95A1: db $22 ; Repeat byte
#_0B95A2: db $00
#_0B95A3: db $22 ; Repeat byte
#_0B95A4: db $01
#_0B95A5: db $02 ; Raw block
#_0B95A6: db $06, $06, $01
#_0B95A9: db $24 ; Repeat byte
#_0B95AA: db $00
#_0B95AB: db $00 ; Raw block
#_0B95AC: db $01
#_0B95AD: db $23 ; Repeat byte
#_0B95AE: db $00
#_0B95AF: db $00 ; Raw block
#_0B95B0: db $01
#_0B95B1: db $24 ; Repeat byte
#_0B95B2: db $06
#_0B95B3: db $24 ; Repeat byte
#_0B95B4: db $00
#_0B95B5: db $02 ; Raw block
#_0B95B6: db $06, $00, $06
#_0B95B9: db $23 ; Repeat byte
#_0B95BA: db $00
#_0B95BB: db $02 ; Raw block
#_0B95BC: db $06, $02, $06
#_0B95BF: db $24 ; Repeat byte
#_0B95C0: db $00
#_0B95C1: db $04 ; Raw block
#_0B95C2: db $01, $01, $00, $01, $01
#_0B95C7: db $83 ; Copy past
#_0B95C8: dw $C100
#_0B95CA: db $01 ; Raw block
#_0B95CB: db $04, $06
#_0B95CD: db $24 ; Repeat byte
#_0B95CE: db $00
#_0B95CF: db $24 ; Repeat byte
#_0B95D0: db $06
#_0B95D1: db $83 ; Copy past
#_0B95D2: dw $2000
#_0B95D4: db $00 ; Raw block
#_0B95D5: db $04
#_0B95D6: db $26 ; Repeat byte
#_0B95D7: db $00
#_0B95D8: db $03 ; Raw block
#_0B95D9: db $06, $03, $06, $06
#_0B95DD: db $23 ; Repeat byte
#_0B95DE: db $00
#_0B95DF: db $00 ; Raw block
#_0B95E0: db $06
#_0B95E1: db $26 ; Repeat byte
#_0B95E2: db $00
#_0B95E3: db $02 ; Raw block
#_0B95E4: db $06, $03, $06
#_0B95E7: db $24 ; Repeat byte
#_0B95E8: db $00
#_0B95E9: db $00 ; Raw block
#_0B95EA: db $06
#_0B95EB: db $23 ; Repeat byte
#_0B95EC: db $00
#_0B95ED: db $FF ; End of Map 10

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen10_Low:
#_0B95EE: db $03 ; Raw block
#_0B95EF: db $02, $00, $22, $23
#_0B95F3: db $62 ; Increment fill
#_0B95F4: db $00
#_0B95F5: db $01 ; Raw block
#_0B95F6: db $00, $01
#_0B95F8: db $86 ; Copy past
#_0B95F9: dw $0000
#_0B95FB: db $03 ; Raw block
#_0B95FC: db $0B, $09, $24, $25
#_0B9600: db $62 ; Increment fill
#_0B9601: db $09
#_0B9602: db $01 ; Raw block
#_0B9603: db $09, $0A
#_0B9605: db $86 ; Copy past
#_0B9606: dw $1000
#_0B9608: db $05 ; Raw block
#_0B9609: db $06, $10, $26, $27, $31, $93
#_0B960F: db $62 ; Increment fill
#_0B9610: db $06
#_0B9611: db $00 ; Raw block
#_0B9612: db $EC
#_0B9613: db $84 ; Copy past
#_0B9614: dw $2100
#_0B9616: db $0E ; Raw block
#_0B9617: db $EC, $02, $6D, $28, $4F, $39, $3F, $02
#_0B961F: db $00, $01, $83, $1C, $5E, $29, $D1
#_0B9626: db $83 ; Copy past
#_0B9627: dw $0E00
#_0B9629: db $0A ; Raw block
#_0B962A: db $2F, $2A, $91, $92, $0B, $09, $0A, $8C
#_0B9632: db $29, $1D, $EE
#_0B9635: db $84 ; Copy past
#_0B9636: dw $1D00
#_0B9638: db $13 ; Raw block
#_0B9639: db $2B, $61, $62, $2C, $7A, $07, $08, $EC
#_0B9641: db $60, $1D, $2D, $31, $93, $06, $02, $6D
#_0B9649: db $26, $67, $68, $2E
#_0B964D: db $84 ; Copy past
#_0B964E: dw $3600
#_0B9650: db $03 ; Raw block
#_0B9651: db $23, $FB, $39, $3F
#_0B9655: db $83 ; Copy past
#_0B9656: dw $3F00
#_0B9658: db $02 ; Raw block
#_0B9659: db $DB, $6F, $1E
#_0B965C: db $84 ; Copy past
#_0B965D: dw $4600
#_0B965F: db $18 ; Raw block
#_0B9660: db $1E, $74, $91, $92, $0B, $7A, $07, $FE
#_0B9668: db $38, $C9, $93, $7A, $07, $93, $07, $60
#_0B9670: db $2F, $30, $C9, $93, $06, $02, $00, $01
#_0B9678: db $7F
#_0B9679: db $83 ; Copy past
#_0B967A: dw $3400
#_0B967C: db $04 ; Raw block
#_0B967D: db $04, $1B, $1C, $31, $32
#_0B9682: db $84 ; Copy past
#_0B9683: dw $6D00
#_0B9685: db $00 ; Raw block
#_0B9686: db $0A
#_0B9687: db $83 ; Copy past
#_0B9688: dw $7C00
#_0B968A: db $01 ; Raw block
#_0B968B: db $09, $07
#_0B968D: db $64 ; Increment fill
#_0B968E: db $33
#_0B968F: db $83 ; Copy past
#_0B9690: dw $7E00
#_0B9692: db $1A ; Raw block
#_0B9693: db $93, $38, $1D, $2C, $7A, $07, $FE, $7C
#_0B969B: db $39, $8A, $3A, $C9, $93, $7A, $02, $00
#_0B96A3: db $04, $3B, $1C, $19, $1A, $00, $04, $3B
#_0B96AB: db $1D, $23, $3B
#_0B96AE: db $84 ; Copy past
#_0B96AF: dw $3D00
#_0B96B1: db $64 ; Increment fill
#_0B96B2: db $3C
#_0B96B3: db $03 ; Raw block
#_0B96B4: db $09, $07, $41, $42
#_0B96B8: db $83 ; Copy past
#_0B96B9: dw $7500
#_0B96BB: db $83 ; Copy past
#_0B96BC: dw $7F00
#_0B96BE: db $06 ; Raw block
#_0B96BF: db $43, $D5, $44, $45, $07, $FE, $7C
#_0B96C6: db $83 ; Copy past
#_0B96C7: dw $B400
#_0B96C9: db $83 ; Copy past
#_0B96CA: dw $BE00
#_0B96CC: db $03 ; Raw block
#_0B96CD: db $01, $46, $D5, $47
#_0B96D1: db $83 ; Copy past
#_0B96D2: dw $9000
#_0B96D4: db $00 ; Raw block
#_0B96D5: db $1D
#_0B96D6: db $83 ; Copy past
#_0B96D7: dw $6500
#_0B96D9: db $00 ; Raw block
#_0B96DA: db $02
#_0B96DB: db $FF ; End of Map 10

;===================================================================================================

OverworldMap32_Screen13_High:
#_0B96DC: db $01 ; Raw block
#_0B96DD: db $04, $06
#_0B96DF: db $22 ; Repeat byte
#_0B96E0: db $01
#_0B96E1: db $00 ; Raw block
#_0B96E2: db $06
#_0B96E3: db $22 ; Repeat byte
#_0B96E4: db $00
#_0B96E5: db $23 ; Repeat byte
#_0B96E6: db $06
#_0B96E7: db $22 ; Repeat byte
#_0B96E8: db $00
#_0B96E9: db $01 ; Raw block
#_0B96EA: db $04, $03
#_0B96EC: db $22 ; Repeat byte
#_0B96ED: db $01
#_0B96EE: db $03 ; Raw block
#_0B96EF: db $06, $01, $00, $01
#_0B96F3: db $23 ; Repeat byte
#_0B96F4: db $06
#_0B96F5: db $07 ; Raw block
#_0B96F6: db $01, $00, $00, $03, $03, $05, $01, $02
#_0B96FE: db $83 ; Copy past
#_0B96FF: dw $1500
#_0B9701: db $23 ; Repeat byte
#_0B9702: db $06
#_0B9703: db $0A ; Raw block
#_0B9704: db $01, $00, $00, $02, $02, $04, $02, $00
#_0B970C: db $06, $01, $01
#_0B970F: db $25 ; Repeat byte
#_0B9710: db $06
#_0B9711: db $08 ; Raw block
#_0B9712: db $01, $06, $01, $01, $03, $00, $00, $06
#_0B971A: db $00
#_0B971B: db $28 ; Repeat byte
#_0B971C: db $06
#_0B971D: db $04 ; Raw block
#_0B971E: db $00, $06, $06, $01, $01
#_0B9723: db $29 ; Repeat byte
#_0B9724: db $06
#_0B9725: db $22 ; Repeat byte
#_0B9726: db $00
#_0B9727: db $02 ; Raw block
#_0B9728: db $06, $01, $01
#_0B972B: db $22 ; Repeat byte
#_0B972C: db $06
#_0B972D: db $83 ; Copy past
#_0B972E: dw $0700
#_0B9730: db $83 ; Copy past
#_0B9731: dw $0700
#_0B9733: db $22 ; Repeat byte
#_0B9734: db $00
#_0B9735: db $03 ; Raw block
#_0B9736: db $03, $04, $06, $01
#_0B973A: db $28 ; Repeat byte
#_0B973B: db $06
#_0B973C: db $04 ; Raw block
#_0B973D: db $02, $04, $00, $00, $01
#_0B9742: db $43 ; Repeat word
#_0B9743: dw $0006
#_0B9745: db $00 ; Raw block
#_0B9746: db $04
#_0B9747: db $83 ; Copy past
#_0B9748: dw $1B00
#_0B974A: db $07 ; Raw block
#_0B974B: db $06, $06, $01, $04, $04, $06, $02, $02
#_0B9753: db $89 ; Copy past
#_0B9754: dw $8600
#_0B9756: db $02 ; Raw block
#_0B9757: db $00, $03, $03
#_0B975A: db $83 ; Copy past
#_0B975B: dw $3100
#_0B975D: db $28 ; Repeat byte
#_0B975E: db $06
#_0B975F: db $05 ; Raw block
#_0B9760: db $00, $06, $03, $01, $02, $00
#_0B9766: db $23 ; Repeat byte
#_0B9767: db $06
#_0B9768: db $00 ; Raw block
#_0B9769: db $02
#_0B976A: db $34 ; Repeat byte
#_0B976B: db $06
#_0B976C: db $01 ; Raw block
#_0B976D: db $01, $01
#_0B976F: db $24 ; Repeat byte
#_0B9770: db $06
#_0B9771: db $24 ; Repeat byte
#_0B9772: db $01
#_0B9773: db $22 ; Repeat byte
#_0B9774: db $06
#_0B9775: db $30 ; Repeat byte
#_0B9776: db $01
#_0B9777: db $2F ; Repeat byte
#_0B9778: db $06
#_0B9779: db $FF ; End of Map 13

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen13_Low:
#_0B977A: db $05 ; Raw block
#_0B977B: db $8D, $48, $F8, $ED, $E2, $49
#_0B9781: db $62 ; Increment fill
#_0B9782: db $06
#_0B9783: db $63 ; Increment fill
#_0B9784: db $4A
#_0B9785: db $62 ; Increment fill
#_0B9786: db $06
#_0B9787: db $08 ; Raw block
#_0B9788: db $93, $5A, $F8, $ED, $ED, $4E, $1A, $00
#_0B9790: db $04
#_0B9791: db $63 ; Increment fill
#_0B9792: db $4F
#_0B9793: db $0B ; Raw block
#_0B9794: db $1A, $00, $01, $56, $BA, $6A, $ED, $7A
#_0B979C: db $53, $27, $09, $07
#_0B97A0: db $63 ; Increment fill
#_0B97A1: db $54
#_0B97A2: db $0A ; Raw block
#_0B97A3: db $27, $09, $0A, $61, $61, $82, $7A, $99
#_0B97AB: db $58, $30, $0E
#_0B97AE: db $63 ; Increment fill
#_0B97AF: db $59
#_0B97B0: db $0A ; Raw block
#_0B97B1: db $5A, $5D, $0E, $5E, $22, $22, $A8, $99
#_0B97B9: db $1D, $58, $1D
#_0B97BC: db $64 ; Increment fill
#_0B97BD: db $5F
#_0B97BE: db $00 ; Raw block
#_0B97BF: db $61
#_0B97C0: db $62 ; Increment fill
#_0B97C1: db $64
#_0B97C2: db $06 ; Raw block
#_0B97C3: db $FB, $67, $68, $61, $62, $58, $66
#_0B97CA: db $64 ; Increment fill
#_0B97CB: db $69
#_0B97CC: db $1A ; Raw block
#_0B97CD: db $6B, $6E, $65, $1D, $1D, $1C, $6F, $67
#_0B97D5: db $68, $58, $70, $71, $1D, $1D, $72, $73
#_0B97DD: db $1D, $1D, $71, $74, $AA, $AA, $1D, $DB
#_0B97E5: db $25, $58, $1E
#_0B97E8: db $65 ; Increment fill
#_0B97E9: db $75
#_0B97EA: db $19 ; Raw block
#_0B97EB: db $76, $7B, $7C, $08, $C2, $1D, $9F, $2D
#_0B97F3: db $58, $FB, $7D, $1F, $20, $7E, $7F, $37
#_0B97FB: db $1F, $80, $7C, $E5, $C3, $C4, $81, $6D
#_0B9803: db $6E, $1D
#_0B9805: db $86 ; Copy past
#_0B9806: dw $8700
#_0B9808: db $0A ; Raw block
#_0B9809: db $82, $83, $1D, $56, $B1, $61, $C5, $7A
#_0B9811: db $1D, $84, $85
#_0B9814: db $62 ; Increment fill
#_0B9815: db $85
#_0B9816: db $0A ; Raw block
#_0B9817: db $85, $85, $88, $89, $A0, $8A, $56, $22
#_0B981F: db $04, $1D, $66
#_0B9822: db $62 ; Increment fill
#_0B9823: db $8B
#_0B9824: db $02 ; Raw block
#_0B9825: db $4F, $8E, $8B
#_0B9828: db $67 ; Increment fill
#_0B9829: db $8F
#_0B982A: db $00 ; Raw block
#_0B982B: db $95
#_0B982C: db $62 ; Increment fill
#_0B982D: db $97
#_0B982E: db $09 ; Raw block
#_0B982F: db $93, $92, $93, $9A, $9B, $97, $9C, $AB
#_0B9837: db $AB, $9D
#_0B9839: db $22 ; Repeat byte
#_0B983A: db $9E
#_0B983B: db $00 ; Raw block
#_0B983C: db $9F
#_0B983D: db $24 ; Repeat byte
#_0B983E: db $AB
#_0B983F: db $62 ; Increment fill
#_0B9840: db $9D
#_0B9841: db $00 ; Raw block
#_0B9842: db $AB
#_0B9843: db $2F ; Repeat byte
#_0B9844: db $B3
#_0B9845: db $2F ; Repeat byte
#_0B9846: db $A0
#_0B9847: db $FF ; End of Map 13

;===================================================================================================

OverworldMap32_Screen14_High:
#_0B9848: db $23 ; Repeat byte
#_0B9849: db $00
#_0B984A: db $01 ; Raw block
#_0B984B: db $06, $01
#_0B984D: db $23 ; Repeat byte
#_0B984E: db $06
#_0B984F: db $01 ; Raw block
#_0B9850: db $02, $06
#_0B9852: db $27 ; Repeat byte
#_0B9853: db $00
#_0B9854: db $07 ; Raw block
#_0B9855: db $06, $06, $01, $01, $06, $01, $02, $06
#_0B985D: db $27 ; Repeat byte
#_0B985E: db $00
#_0B985F: db $00 ; Raw block
#_0B9860: db $06
#_0B9861: db $22 ; Repeat byte
#_0B9862: db $01
#_0B9863: db $23 ; Repeat byte
#_0B9864: db $06
#_0B9865: db $23 ; Repeat byte
#_0B9866: db $00
#_0B9867: db $83 ; Copy past
#_0B9868: dw $0400
#_0B986A: db $02 ; Raw block
#_0B986B: db $00, $01, $01
#_0B986E: db $23 ; Repeat byte
#_0B986F: db $06
#_0B9870: db $05 ; Raw block
#_0B9871: db $03, $06, $06, $01, $06, $00
#_0B9877: db $22 ; Repeat byte
#_0B9878: db $06
#_0B9879: db $02 ; Raw block
#_0B987A: db $00, $01, $01
#_0B987D: db $27 ; Repeat byte
#_0B987E: db $06
#_0B987F: db $03 ; Raw block
#_0B9880: db $00, $00, $04, $06
#_0B9884: db $83 ; Copy past
#_0B9885: dw $2300
#_0B9887: db $03 ; Raw block
#_0B9888: db $03, $01, $01, $03
#_0B988C: db $33 ; Repeat byte
#_0B988D: db $06
#_0B988E: db $00 ; Raw block
#_0B988F: db $00
#_0B9890: db $2E ; Repeat byte
#_0B9891: db $06
#_0B9892: db $00 ; Raw block
#_0B9893: db $00
#_0B9894: db $2E ; Repeat byte
#_0B9895: db $06
#_0B9896: db $00 ; Raw block
#_0B9897: db $00
#_0B9898: db $24 ; Repeat byte
#_0B9899: db $06
#_0B989A: db $01 ; Raw block
#_0B989B: db $01, $01
#_0B989D: db $28 ; Repeat byte
#_0B989E: db $06
#_0B989F: db $00 ; Raw block
#_0B98A0: db $00
#_0B98A1: db $32 ; Repeat byte
#_0B98A2: db $06
#_0B98A3: db $00 ; Raw block
#_0B98A4: db $02
#_0B98A5: db $29 ; Repeat byte
#_0B98A6: db $06
#_0B98A7: db $01 ; Raw block
#_0B98A8: db $00, $06
#_0B98AA: db $23 ; Repeat byte
#_0B98AB: db $07
#_0B98AC: db $22 ; Repeat byte
#_0B98AD: db $06
#_0B98AE: db $02 ; Raw block
#_0B98AF: db $07, $06, $07
#_0B98B2: db $24 ; Repeat byte
#_0B98B3: db $06
#_0B98B4: db $00 ; Raw block
#_0B98B5: db $01
#_0B98B6: db $22 ; Repeat byte
#_0B98B7: db $06
#_0B98B8: db $23 ; Repeat byte
#_0B98B9: db $01
#_0B98BA: db $02 ; Raw block
#_0B98BB: db $07, $06, $07
#_0B98BE: db $22 ; Repeat byte
#_0B98BF: db $01
#_0B98C0: db $01 ; Raw block
#_0B98C1: db $07, $07
#_0B98C3: db $2F ; Repeat byte
#_0B98C4: db $01
#_0B98C5: db $2F ; Repeat byte
#_0B98C6: db $06
#_0B98C7: db $FF ; End of Map 14

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen14_Low:
#_0B98C8: db $62 ; Increment fill
#_0B98C9: db $06
#_0B98CA: db $02 ; Raw block
#_0B98CB: db $06, $A1, $71
#_0B98CE: db $43 ; Repeat word
#_0B98CF: dw $A3A2
#_0B98D1: db $02 ; Raw block
#_0B98D2: db $DC, $A4, $08
#_0B98D5: db $62 ; Increment fill
#_0B98D6: db $06
#_0B98D7: db $17 ; Raw block
#_0B98D8: db $02, $00, $01, $83, $A5, $12, $0C, $06
#_0B98E0: db $A3, $06, $DC, $A6, $3F, $02, $00, $01
#_0B98E8: db $0B, $09, $0A, $8C, $A7, $03, $09, $0A
#_0B98F0: db $63 ; Increment fill
#_0B98F1: db $A8
#_0B98F2: db $0A ; Raw block
#_0B98F3: db $92, $0B, $09, $0A, $AC, $0E, $5E, $30
#_0B98FB: db $1D, $E4, $13
#_0B98FE: db $63 ; Increment fill
#_0B98FF: db $AD
#_0B9900: db $05 ; Raw block
#_0B9901: db $A8, $2F, $AC, $0E, $5E, $1D
#_0B9907: db $62 ; Increment fill
#_0B9908: db $B1
#_0B9909: db $04 ; Raw block
#_0B990A: db $1F, $2D, $1F, $B4, $B5
#_0B990F: db $65 ; Increment fill
#_0B9910: db $B5
#_0B9911: db $0B ; Raw block
#_0B9912: db $1D, $1D, $20, $BB, $1F, $BC, $37, $1E
#_0B991A: db $56, $22, $22, $A8
#_0B991E: db $63 ; Increment fill
#_0B991F: db $BD
#_0B9920: db $00 ; Raw block
#_0B9921: db $66
#_0B9922: db $64 ; Increment fill
#_0B9923: db $C1
#_0B9924: db $00 ; Raw block
#_0B9925: db $C4
#_0B9926: db $62 ; Increment fill
#_0B9927: db $C6
#_0B9928: db $00 ; Raw block
#_0B9929: db $C6
#_0B992A: db $63 ; Increment fill
#_0B992B: db $C9
#_0B992C: db $01 ; Raw block
#_0B992D: db $C0, $1D
#_0B992F: db $68 ; Increment fill
#_0B9930: db $CD
#_0B9931: db $00 ; Raw block
#_0B9932: db $C5
#_0B9933: db $64 ; Increment fill
#_0B9934: db $D6
#_0B9935: db $03 ; Raw block
#_0B9936: db $1D, $7C, $DB, $D2
#_0B993A: db $65 ; Increment fill
#_0B993B: db $DC
#_0B993C: db $00 ; Raw block
#_0B993D: db $D1
#_0B993E: db $64 ; Increment fill
#_0B993F: db $E2
#_0B9940: db $0A ; Raw block
#_0B9941: db $1D, $66, $CE, $E7, $E8, $DF, $37, $3C
#_0B9949: db $E9, $DC, $D3
#_0B994C: db $62 ; Increment fill
#_0B994D: db $EA
#_0B994E: db $04 ; Raw block
#_0B994F: db $E5, $DA, $ED, $1D, $C2
#_0B9954: db $63 ; Increment fill
#_0B9955: db $EE
#_0B9956: db $0E ; Raw block
#_0B9957: db $EC, $F2, $E8, $DF, $F3, $DF, $F4, $E5
#_0B995F: db $DA, $7C, $F5, $95, $95, $F6, $9B
#_0B9966: db $67 ; Increment fill
#_0B9967: db $F7
#_0B9968: db $03 ; Raw block
#_0B9969: db $F8, $FF, $1D, $92
#_0B996D: db $63 ; Increment fill
#_0B996E: db $00
#_0B996F: db $22 ; Repeat byte
#_0B9970: db $9C
#_0B9971: db $02 ; Raw block
#_0B9972: db $04, $95, $05
#_0B9975: db $24 ; Repeat byte
#_0B9976: db $9C
#_0B9977: db $00 ; Raw block
#_0B9978: db $AB
#_0B9979: db $62 ; Increment fill
#_0B997A: db $9D
#_0B997B: db $23 ; Repeat byte
#_0B997C: db $AB
#_0B997D: db $02 ; Raw block
#_0B997E: db $06, $9E, $07
#_0B9981: db $22 ; Repeat byte
#_0B9982: db $AB
#_0B9983: db $01 ; Raw block
#_0B9984: db $08, $09
#_0B9986: db $2F ; Repeat byte
#_0B9987: db $B3
#_0B9988: db $2F ; Repeat byte
#_0B9989: db $A0
#_0B998A: db $FF ; End of Map 14

;===================================================================================================

OverworldMap32_Screen15_High:
#_0B998B: db $03 ; Raw block
#_0B998C: db $00, $00, $01, $00
#_0B9990: db $22 ; Repeat byte
#_0B9991: db $01
#_0B9992: db $00 ; Raw block
#_0B9993: db $03
#_0B9994: db $23 ; Repeat byte
#_0B9995: db $07
#_0B9996: db $07 ; Raw block
#_0B9997: db $06, $07, $01, $03, $00, $00, $01, $07
#_0B999F: db $24 ; Repeat byte
#_0B99A0: db $01
#_0B99A1: db $22 ; Repeat byte
#_0B99A2: db $07
#_0B99A3: db $05 ; Raw block
#_0B99A4: db $01, $03, $01, $01, $00, $00
#_0B99AA: db $24 ; Repeat byte
#_0B99AB: db $01
#_0B99AC: db $04 ; Raw block
#_0B99AD: db $02, $01, $07, $07, $06
#_0B99B2: db $83 ; Copy past
#_0B99B3: dw $1C00
#_0B99B5: db $02 ; Raw block
#_0B99B6: db $06, $01, $07
#_0B99B9: db $22 ; Repeat byte
#_0B99BA: db $01
#_0B99BB: db $02 ; Raw block
#_0B99BC: db $07, $07, $05
#_0B99BF: db $22 ; Repeat byte
#_0B99C0: db $07
#_0B99C1: db $03 ; Raw block
#_0B99C2: db $06, $07, $07, $02
#_0B99C6: db $22 ; Repeat byte
#_0B99C7: db $00
#_0B99C8: db $02 ; Raw block
#_0B99C9: db $06, $00, $01
#_0B99CC: db $29 ; Repeat byte
#_0B99CD: db $07
#_0B99CE: db $06 ; Raw block
#_0B99CF: db $00, $06, $00, $04, $04, $01, $07
#_0B99D6: db $22 ; Repeat byte
#_0B99D7: db $05
#_0B99D8: db $00 ; Raw block
#_0B99D9: db $06
#_0B99DA: db $24 ; Repeat byte
#_0B99DB: db $07
#_0B99DC: db $08 ; Raw block
#_0B99DD: db $03, $04, $00, $04, $02, $07, $07, $05
#_0B99E5: db $05
#_0B99E6: db $22 ; Repeat byte
#_0B99E7: db $07
#_0B99E8: db $04 ; Raw block
#_0B99E9: db $00, $04, $03, $03, $00
#_0B99EE: db $25 ; Repeat byte
#_0B99EF: db $07
#_0B99F0: db $0D ; Raw block
#_0B99F1: db $05, $07, $03, $07, $06, $06, $04, $01
#_0B99F9: db $02, $00, $07, $06, $03, $05
#_0B99FF: db $84 ; Copy past
#_0B9A00: dw $3600
#_0B9A02: db $08 ; Raw block
#_0B9A03: db $01, $01, $05, $06, $06, $03, $07, $04
#_0B9A0B: db $00
#_0B9A0C: db $24 ; Repeat byte
#_0B9A0D: db $07
#_0B9A0E: db $00 ; Raw block
#_0B9A0F: db $05
#_0B9A10: db $22 ; Repeat byte
#_0B9A11: db $07
#_0B9A12: db $07 ; Raw block
#_0B9A13: db $01, $04, $03, $01, $06, $07, $06, $02
#_0B9A1B: db $83 ; Copy past
#_0B9A1C: dw $0A00
#_0B9A1E: db $00 ; Raw block
#_0B9A1F: db $05
#_0B9A20: db $23 ; Repeat byte
#_0B9A21: db $07
#_0B9A22: db $02 ; Raw block
#_0B9A23: db $04, $01, $01
#_0B9A26: db $43 ; Repeat word
#_0B9A27: dw $0706
#_0B9A29: db $01 ; Raw block
#_0B9A2A: db $07, $03
#_0B9A2C: db $26 ; Repeat byte
#_0B9A2D: db $07
#_0B9A2E: db $00 ; Raw block
#_0B9A2F: db $06
#_0B9A30: db $43 ; Repeat word
#_0B9A31: dw $0706
#_0B9A33: db $00 ; Raw block
#_0B9A34: db $01
#_0B9A35: db $83 ; Copy past
#_0B9A36: dw $8800
#_0B9A38: db $25 ; Repeat byte
#_0B9A39: db $07
#_0B9A3A: db $00 ; Raw block
#_0B9A3B: db $06
#_0B9A3C: db $83 ; Copy past
#_0B9A3D: dw $0600
#_0B9A3F: db $84 ; Copy past
#_0B9A40: dw $C200
#_0B9A42: db $03 ; Raw block
#_0B9A43: db $06, $07, $07, $05
#_0B9A47: db $22 ; Repeat byte
#_0B9A48: db $07
#_0B9A49: db $02 ; Raw block
#_0B9A4A: db $01, $07, $04
#_0B9A4D: db $23 ; Repeat byte
#_0B9A4E: db $07
#_0B9A4F: db $86 ; Copy past
#_0B9A50: dw $3400
#_0B9A52: db $00 ; Raw block
#_0B9A53: db $03
#_0B9A54: db $25 ; Repeat byte
#_0B9A55: db $07
#_0B9A56: db $0C ; Raw block
#_0B9A57: db $02, $06, $00, $00, $07, $03, $05, $07
#_0B9A5F: db $03, $04, $01, $04, $00
#_0B9A64: db $FF ; End of Map 15

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen15_Low:
#_0B9A65: db $07 ; Raw block
#_0B9A66: db $06, $07, $32, $FF, $00, $06, $06, $63
#_0B9A6E: db $63 ; Increment fill
#_0B9A6F: db $0A
#_0B9A70: db $0C ; Raw block
#_0B9A71: db $12, $0E, $0B, $20, $02, $00, $04, $0F
#_0B9A79: db $09, $0A, $0A, $FD, $E2
#_0B9A7E: db $62 ; Increment fill
#_0B9A7F: db $10
#_0B9A80: db $07 ; Raw block
#_0B9A81: db $03, $9C, $16, $F8, $0B, $09, $07, $E4
#_0B9A89: db $62 ; Increment fill
#_0B9A8A: db $13
#_0B9A8B: db $04 ; Raw block
#_0B9A8C: db $01, $ED, $13, $14, $16
#_0B9A91: db $83 ; Copy past
#_0B9A92: dw $1C00
#_0B9A94: db $02 ; Raw block
#_0B9A95: db $AC, $0E, $15
#_0B9A98: db $62 ; Increment fill
#_0B9A99: db $1E
#_0B9A9A: db $02 ; Raw block
#_0B9A9B: db $16, $17, $99
#_0B9A9E: db $62 ; Increment fill
#_0B9A9F: db $18
#_0B9AA0: db $02 ; Raw block
#_0B9AA1: db $16, $1B, $1C
#_0B9AA4: db $43 ; Repeat word
#_0B9AA5: dw $1DFB
#_0B9AA7: db $02 ; Raw block
#_0B9AA8: db $66, $FB, $3C
#_0B9AAB: db $67 ; Increment fill
#_0B9AAC: db $1D
#_0B9AAD: db $0C ; Raw block
#_0B9AAE: db $23, $25, $1D, $66, $1D, $8A, $BF, $F0
#_0B9AB6: db $26, $96, $E1, $E2, $1D
#_0B9ABB: db $24 ; Repeat byte
#_0B9ABC: db $27
#_0B9ABD: db $08 ; Raw block
#_0B9ABE: db $E2, $BE, $1D, $AA, $FA, $28, $1B, $9F
#_0B9AC6: db $E2
#_0B9AC7: db $62 ; Increment fill
#_0B9AC8: db $29
#_0B9AC9: db $04 ; Raw block
#_0B9ACA: db $1D, $23, $FB, $E2, $1D
#_0B9ACF: db $65 ; Increment fill
#_0B9AD0: db $2C
#_0B9AD1: db $1B ; Raw block
#_0B9AD2: db $E1, $32, $97, $33, $70, $66, $1E, $74
#_0B9ADA: db $DE, $1D, $34, $83, $32, $C5, $35, $36
#_0B9AE2: db $E1, $37, $38, $F0, $F1, $66, $2F, $30
#_0B9AEA: db $E2, $39, $2C, $FB
#_0B9AEE: db $64 ; Increment fill
#_0B9AEF: db $3A
#_0B9AF0: db $E0, $21 ; EXT Raw block
#_0B9AF2: db $AB, $3F, $28, $40, $FB, $23, $FB, $61
#_0B9AFA: db $83, $41, $66, $30, $3A, $42, $1E, $43
#_0B9B02: db $E1, $44, $30, $45, $46, $1E, $74, $67
#_0B9B0A: db $8B, $47, $9C, $04, $48, $5E, $49, $4A
#_0B9B12: db $43, $35
#_0B9B14: db $62 ; Increment fill
#_0B9B15: db $4B
#_0B9B16: db $09 ; Raw block
#_0B9B17: db $2F, $30, $4E, $98, $4F, $43, $50, $51
#_0B9B1F: db $43, $44
#_0B9B21: db $65 ; Increment fill
#_0B9B22: db $52
#_0B9B23: db $0D ; Raw block
#_0B9B24: db $66, $41, $44, $09, $58, $4E, $59, $5A
#_0B9B2C: db $4E, $4F, $7C, $5B, $5C, $E1
#_0B9B32: db $62 ; Increment fill
#_0B9B33: db $5D
#_0B9B34: db $02 ; Raw block
#_0B9B35: db $48, $60, $9A
#_0B9B38: db $63 ; Increment fill
#_0B9B39: db $61
#_0B9B3A: db $07 ; Raw block
#_0B9B3B: db $58, $65, $65, $66, $C5, $67, $68, $49
#_0B9B43: db $62 ; Increment fill
#_0B9B44: db $69
#_0B9B45: db $0F ; Raw block
#_0B9B46: db $1C, $6C, $6D, $4F, $8E, $1D, $1D, $34
#_0B9B4E: db $32, $C5, $6E, $4F, $2C, $77, $86, $1D
#_0B9B56: db $FF ; End of Map 15

;===================================================================================================

OverworldMap32_Screen16_High:
#_0B9B57: db $01 ; Raw block
#_0B9B58: db $03, $07
#_0B9B5A: db $22 ; Repeat byte
#_0B9B5B: db $01
#_0B9B5C: db $02 ; Raw block
#_0B9B5D: db $07, $01, $01
#_0B9B60: db $27 ; Repeat byte
#_0B9B61: db $07
#_0B9B62: db $22 ; Repeat byte
#_0B9B63: db $01
#_0B9B64: db $04 ; Raw block
#_0B9B65: db $02, $02, $07, $02, $01
#_0B9B6A: db $23 ; Repeat byte
#_0B9B6B: db $07
#_0B9B6C: db $00 ; Raw block
#_0B9B6D: db $03
#_0B9B6E: db $22 ; Repeat byte
#_0B9B6F: db $07
#_0B9B70: db $02 ; Raw block
#_0B9B71: db $01, $01, $05
#_0B9B74: db $23 ; Repeat byte
#_0B9B75: db $07
#_0B9B76: db $00 ; Raw block
#_0B9B77: db $06
#_0B9B78: db $27 ; Repeat byte
#_0B9B79: db $07
#_0B9B7A: db $01 ; Raw block
#_0B9B7B: db $02, $05
#_0B9B7D: db $24 ; Repeat byte
#_0B9B7E: db $07
#_0B9B7F: db $00 ; Raw block
#_0B9B80: db $06
#_0B9B81: db $29 ; Repeat byte
#_0B9B82: db $07
#_0B9B83: db $00 ; Raw block
#_0B9B84: db $06
#_0B9B85: db $23 ; Repeat byte
#_0B9B86: db $07
#_0B9B87: db $07 ; Raw block
#_0B9B88: db $06, $07, $05, $07, $07, $05, $07, $03
#_0B9B90: db $23 ; Repeat byte
#_0B9B91: db $07
#_0B9B92: db $03 ; Raw block
#_0B9B93: db $00, $00, $07, $01
#_0B9B97: db $22 ; Repeat byte
#_0B9B98: db $07
#_0B9B99: db $01 ; Raw block
#_0B9B9A: db $05, $05
#_0B9B9C: db $24 ; Repeat byte
#_0B9B9D: db $07
#_0B9B9E: db $83 ; Copy past
#_0B9B9F: dw $5300
#_0B9BA1: db $01 ; Raw block
#_0B9BA2: db $00, $00
#_0B9BA4: db $25 ; Repeat byte
#_0B9BA5: db $07
#_0B9BA6: db $03 ; Raw block
#_0B9BA7: db $02, $07, $07, $00
#_0B9BAB: db $25 ; Repeat byte
#_0B9BAC: db $01
#_0B9BAD: db $25 ; Repeat byte
#_0B9BAE: db $07
#_0B9BAF: db $01 ; Raw block
#_0B9BB0: db $02, $03
#_0B9BB2: db $83 ; Copy past
#_0B9BB3: dw $5200
#_0B9BB5: db $00 ; Raw block
#_0B9BB6: db $06
#_0B9BB7: db $27 ; Repeat byte
#_0B9BB8: db $07
#_0B9BB9: db $08 ; Raw block
#_0B9BBA: db $00, $01, $03, $03, $01, $01, $04, $00
#_0B9BC2: db $00
#_0B9BC3: db $24 ; Repeat byte
#_0B9BC4: db $07
#_0B9BC5: db $0A ; Raw block
#_0B9BC6: db $00, $07, $07, $01, $03, $07, $01, $00
#_0B9BCE: db $06, $00, $01
#_0B9BD1: db $22 ; Repeat byte
#_0B9BD2: db $07
#_0B9BD3: db $00 ; Raw block
#_0B9BD4: db $01
#_0B9BD5: db $22 ; Repeat byte
#_0B9BD6: db $07
#_0B9BD7: db $08 ; Raw block
#_0B9BD8: db $00, $01, $01, $07, $04, $06, $01, $01
#_0B9BE0: db $04
#_0B9BE1: db $22 ; Repeat byte
#_0B9BE2: db $07
#_0B9BE3: db $02 ; Raw block
#_0B9BE4: db $00, $07, $03
#_0B9BE7: db $84 ; Copy past
#_0B9BE8: dw $AB00
#_0B9BEA: db $08 ; Raw block
#_0B9BEB: db $07, $03, $03, $01, $00, $01, $06, $07
#_0B9BF3: db $02
#_0B9BF4: db $28 ; Repeat byte
#_0B9BF5: db $07
#_0B9BF6: db $01 ; Raw block
#_0B9BF7: db $03, $07
#_0B9BF9: db $83 ; Copy past
#_0B9BFA: dw $C500
#_0B9BFC: db $27 ; Repeat byte
#_0B9BFD: db $07
#_0B9BFE: db $00 ; Raw block
#_0B9BFF: db $00
#_0B9C00: db $22 ; Repeat byte
#_0B9C01: db $07
#_0B9C02: db $22 ; Repeat byte
#_0B9C03: db $02
#_0B9C04: db $83 ; Copy past
#_0B9C05: dw $A600
#_0B9C07: db $00 ; Raw block
#_0B9C08: db $03
#_0B9C09: db $83 ; Copy past
#_0B9C0A: dw $5500
#_0B9C0C: db $00 ; Raw block
#_0B9C0D: db $00
#_0B9C0E: db $26 ; Repeat byte
#_0B9C0F: db $07
#_0B9C10: db $00 ; Raw block
#_0B9C11: db $01
#_0B9C12: db $22 ; Repeat byte
#_0B9C13: db $07
#_0B9C14: db $03 ; Raw block
#_0B9C15: db $03, $03, $07, $05
#_0B9C19: db $FF ; End of Map 16

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen16_Low:
#_0B9C1A: db $E0, $32 ; EXT Raw block
#_0B9C1C: db $20, $6F, $ED, $F8, $F8, $70, $F8, $17
#_0B9C24: db $71, $72, $72, $71, $0E, $73, $74, $74
#_0B9C2C: db $F8, $ED, $ED, $FB, $FB, $70, $FB, $03
#_0B9C34: db $75, $76, $76, $75, $9C, $77, $78, $78
#_0B9C3C: db $F8, $ED, $99, $79, $79, $7A, $79, $16
#_0B9C44: db $7B, $7C, $7C, $7B, $1B, $7D, $7E, $7E
#_0B9C4C: db $FB, $99, $7F
#_0B9C4F: db $23 ; Repeat byte
#_0B9C50: db $22
#_0B9C51: db $05 ; Raw block
#_0B9C52: db $15, $80, $81, $81, $80, $31
#_0B9C58: db $62 ; Increment fill
#_0B9C59: db $82
#_0B9C5A: db $02 ; Raw block
#_0B9C5B: db $25, $85, $1D
#_0B9C5E: db $62 ; Increment fill
#_0B9C5F: db $86
#_0B9C60: db $17 ; Raw block
#_0B9C61: db $27, $1E, $43, $E1, $89, $36, $E2, $29
#_0B9C69: db $8F, $8A, $27, $8B, $2A, $EE, $09, $8C
#_0B9C71: db $1E, $8D, $8E, $20, $E1, $E2, $29, $2A
#_0B9C79: db $62 ; Increment fill
#_0B9C7A: db $8F
#_0B9C7B: db $05 ; Raw block
#_0B9C7C: db $C9, $FE, $92, $31, $7B, $7C
#_0B9C82: db $62 ; Increment fill
#_0B9C83: db $93
#_0B9C84: db $06 ; Raw block
#_0B9C85: db $84, $96, $2A, $8D, $97, $98, $1D
#_0B9C8C: db $62 ; Increment fill
#_0B9C8D: db $39
#_0B9C8E: db $62 ; Increment fill
#_0B9C8F: db $39
#_0B9C90: db $65 ; Increment fill
#_0B9C91: db $99
#_0B9C92: db $06 ; Raw block
#_0B9C93: db $97, $97, $9F, $FB, $91, $A0, $3B
#_0B9C9A: db $67 ; Increment fill
#_0B9C9B: db $A1
#_0B9C9C: db $08 ; Raw block
#_0B9C9D: db $1D, $2E, $A0, $96, $62, $4B, $1E, $0B
#_0B9CA5: db $09
#_0B9CA6: db $64 ; Increment fill
#_0B9CA7: db $A9
#_0B9CA8: db $0A ; Raw block
#_0B9CA9: db $1F, $AE, $AF, $2E, $A0, $B0, $68, $BE
#_0B9CB1: db $2C, $06, $10
#_0B9CB4: db $62 ; Increment fill
#_0B9CB5: db $B1
#_0B9CB6: db $00 ; Raw block
#_0B9CB7: db $58
#_0B9CB8: db $62 ; Increment fill
#_0B9CB9: db $B4
#_0B9CBA: db $08 ; Raw block
#_0B9CBB: db $1D, $08, $E6, $B7, $25, $66, $19, $1A
#_0B9CC3: db $6D
#_0B9CC4: db $62 ; Increment fill
#_0B9CC5: db $B8
#_0B9CC6: db $12 ; Raw block
#_0B9CC7: db $B2, $8F, $44, $BB, $9F, $E4, $24, $BC
#_0B9CCF: db $90, $44, $86, $27, $09, $2F, $B3, $BD
#_0B9CD7: db $8D, $97, $98
#_0B9CDA: db $64 ; Increment fill
#_0B9CDB: db $BE
#_0B9CDC: db $07 ; Raw block
#_0B9CDD: db $98, $C3, $8D, $C4, $0E, $2B, $C5, $8D
#_0B9CE5: db $67 ; Increment fill
#_0B9CE6: db $C6
#_0B9CE7: db $03 ; Raw block
#_0B9CE8: db $A9, $49, $CE, $CF
#_0B9CEC: db $22 ; Repeat byte
#_0B9CED: db $4C
#_0B9CEE: db $05 ; Raw block
#_0B9CEF: db $D0, $C7, $48, $D1, $8D, $D2
#_0B9CF5: db $62 ; Increment fill
#_0B9CF6: db $D2
#_0B9CF7: db $08 ; Raw block
#_0B9CF8: db $A9, $D5, $49, $D6, $D7, $D6, $D6, $D8
#_0B9D00: db $48
#_0B9D01: db $62 ; Increment fill
#_0B9D02: db $D9
#_0B9D03: db $03 ; Raw block
#_0B9D04: db $8D, $96, $DC, $FB
#_0B9D08: db $FF ; End of Map 16

;===================================================================================================

OverworldMap32_Screen18_High:
#_0B9D09: db $22 ; Repeat byte
#_0B9D0A: db $00
#_0B9D0B: db $02 ; Raw block
#_0B9D0C: db $01, $07, $04
#_0B9D0F: db $22 ; Repeat byte
#_0B9D10: db $00
#_0B9D11: db $02 ; Raw block
#_0B9D12: db $01, $04, $04
#_0B9D15: db $26 ; Repeat byte
#_0B9D16: db $00
#_0B9D17: db $07 ; Raw block
#_0B9D18: db $06, $07, $06, $06, $01, $06, $06, $04
#_0B9D20: db $84 ; Copy past
#_0B9D21: dw $1500
#_0B9D23: db $03 ; Raw block
#_0B9D24: db $00, $00, $01, $01
#_0B9D28: db $2B ; Repeat byte
#_0B9D29: db $07
#_0B9D2A: db $04 ; Raw block
#_0B9D2B: db $00, $00, $07, $06, $07
#_0B9D30: db $22 ; Repeat byte
#_0B9D31: db $06
#_0B9D32: db $2A ; Repeat byte
#_0B9D33: db $07
#_0B9D34: db $09 ; Raw block
#_0B9D35: db $02, $01, $01, $00, $04, $04, $07, $06
#_0B9D3D: db $01, $01
#_0B9D3F: db $25 ; Repeat byte
#_0B9D40: db $07
#_0B9D41: db $83 ; Copy past
#_0B9D42: dw $2200
#_0B9D44: db $05 ; Raw block
#_0B9D45: db $04, $04, $07, $00, $01, $01
#_0B9D4B: db $22 ; Repeat byte
#_0B9D4C: db $07
#_0B9D4D: db $0C ; Raw block
#_0B9D4E: db $00, $00, $07, $07, $01, $03, $03, $04
#_0B9D56: db $00, $07, $06, $03, $04
#_0B9D5B: db $83 ; Copy past
#_0B9D5C: dw $2E00
#_0B9D5E: db $01 ; Raw block
#_0B9D5F: db $01, $06
#_0B9D61: db $26 ; Repeat byte
#_0B9D62: db $07
#_0B9D63: db $02 ; Raw block
#_0B9D64: db $05, $01, $06
#_0B9D67: db $22 ; Repeat byte
#_0B9D68: db $07
#_0B9D69: db $02 ; Raw block
#_0B9D6A: db $00, $04, $01
#_0B9D6D: db $24 ; Repeat byte
#_0B9D6E: db $07
#_0B9D6F: db $0A ; Raw block
#_0B9D70: db $08, $07, $05, $05, $02, $08, $08, $02
#_0B9D78: db $00, $00, $01
#_0B9D7B: db $2C ; Repeat byte
#_0B9D7C: db $08
#_0B9D7D: db $04 ; Raw block
#_0B9D7E: db $00, $01, $06, $08, $01
#_0B9D83: db $2A ; Repeat byte
#_0B9D84: db $08
#_0B9D85: db $02 ; Raw block
#_0B9D86: db $00, $04, $01
#_0B9D89: db $2C ; Repeat byte
#_0B9D8A: db $08
#_0B9D8B: db $02 ; Raw block
#_0B9D8C: db $00, $00, $01
#_0B9D8F: db $23 ; Repeat byte
#_0B9D90: db $08
#_0B9D91: db $00 ; Raw block
#_0B9D92: db $06
#_0B9D93: db $27 ; Repeat byte
#_0B9D94: db $08
#_0B9D95: db $83 ; Copy past
#_0B9D96: dw $A000
#_0B9D98: db $03 ; Raw block
#_0B9D99: db $08, $06, $08, $01
#_0B9D9D: db $27 ; Repeat byte
#_0B9D9E: db $08
#_0B9D9F: db $83 ; Copy past
#_0B9DA0: dw $B000
#_0B9DA2: db $00 ; Raw block
#_0B9DA3: db $07
#_0B9DA4: db $2A ; Repeat byte
#_0B9DA5: db $08
#_0B9DA6: db $02 ; Raw block
#_0B9DA7: db $00, $00, $01
#_0B9DAA: db $22 ; Repeat byte
#_0B9DAB: db $08
#_0B9DAC: db $00 ; Raw block
#_0B9DAD: db $07
#_0B9DAE: db $28 ; Repeat byte
#_0B9DAF: db $08
#_0B9DB0: db $FF ; End of Map 18

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen18_Low:
#_0B9DB1: db $05 ; Raw block
#_0B9DB2: db $0B, $09, $0A, $74, $DD, $1E
#_0B9DB8: db $83 ; Copy past
#_0B9DB9: dw $0000
#_0B9DBB: db $00 ; Raw block
#_0B9DBC: db $2C
#_0B9DBD: db $83 ; Copy past
#_0B9DBE: dw $0500
#_0B9DC0: db $00 ; Raw block
#_0B9DC1: db $0B
#_0B9DC2: db $62 ; Increment fill
#_0B9DC3: db $06
#_0B9DC4: db $07 ; Raw block
#_0B9DC5: db $38, $41, $2F, $AC, $0E, $5E, $30, $37
#_0B9DCD: db $83 ; Copy past
#_0B9DCE: dw $1500
#_0B9DD0: db $05 ; Raw block
#_0B9DD1: db $AC, $02, $00, $04, $3B, $41
#_0B9DD7: db $23 ; Repeat byte
#_0B9DD8: db $DE
#_0B9DD9: db $62 ; Increment fill
#_0B9DDA: db $DF
#_0B9DDB: db $62 ; Increment fill
#_0B9DDC: db $E1
#_0B9DDD: db $05 ; Raw block
#_0B9DDE: db $E0, $0B, $09, $E4, $66, $E5
#_0B9DE4: db $22 ; Repeat byte
#_0B9DE5: db $9C
#_0B9DE6: db $63 ; Increment fill
#_0B9DE7: db $E6
#_0B9DE8: db $62 ; Increment fill
#_0B9DE9: db $E9
#_0B9DEA: db $00 ; Raw block
#_0B9DEB: db $E8
#_0B9DEC: db $62 ; Increment fill
#_0B9DED: db $EC
#_0B9DEE: db $0B ; Raw block
#_0B9DEF: db $09, $A0, $1E, $FB, $B5, $B6, $E7, $3E
#_0B9DF7: db $61, $62, $EF, $EB
#_0B9DFB: db $63 ; Increment fill
#_0B9DFC: db $F0
#_0B9DFD: db $E0, $20 ; EXT Raw block
#_0B9DFF: db $E5, $D9, $F4, $F5, $B7, $B8, $E7, $1D
#_0B9E07: db $67, $68, $EF, $EB, $F6, $0B, $09, $F7
#_0B9E0F: db $F8, $E4, $70, $6F, $B9, $1D, $E7, $66
#_0B9E17: db $DB, $25, $EF, $EB, $1D, $06, $10, $2B
#_0B9E1F: db $F9
#_0B9E20: db $24 ; Repeat byte
#_0B9E21: db $FA
#_0B9E22: db $0B ; Raw block
#_0B9E23: db $E7, $55, $DB, $3A, $FB, $EB, $FC, $02
#_0B9E2B: db $6D, $26, $FD, $FE
#_0B9E2F: db $22 ; Repeat byte
#_0B9E30: db $FF
#_0B9E31: db $0A ; Raw block
#_0B9E32: db $00, $E7, $59, $5A, $61, $01, $02, $61
#_0B9E3A: db $0B, $09, $2F
#_0B9E3D: db $6B ; Increment fill
#_0B9E3E: db $03
#_0B9E3F: db $05 ; Raw block
#_0B9E40: db $0C, $06, $10, $2B, $03, $37
#_0B9E46: db $6A ; Increment fill
#_0B9E47: db $0F
#_0B9E48: db $03 ; Raw block
#_0B9E49: db $02, $6D, $26, $03
#_0B9E4D: db $64 ; Increment fill
#_0B9E4E: db $1A
#_0B9E4F: db $00 ; Raw block
#_0B9E50: db $13
#_0B9E51: db $65 ; Increment fill
#_0B9E52: db $1F
#_0B9E53: db $83 ; Copy past
#_0B9E54: dw $9000
#_0B9E56: db $62 ; Increment fill
#_0B9E57: db $25
#_0B9E58: db $02 ; Raw block
#_0B9E59: db $66, $08, $13
#_0B9E5C: db $62 ; Increment fill
#_0B9E5D: db $28
#_0B9E5E: db $02 ; Raw block
#_0B9E5F: db $22, $04, $2B
#_0B9E62: db $83 ; Copy past
#_0B9E63: dw $A000
#_0B9E65: db $05 ; Raw block
#_0B9E66: db $2C, $70, $2D, $1E, $2E, $13
#_0B9E6C: db $62 ; Increment fill
#_0B9E6D: db $2F
#_0B9E6E: db $02 ; Raw block
#_0B9E6F: db $22, $32, $33
#_0B9E72: db $83 ; Copy past
#_0B9E73: dw $B000
#_0B9E75: db $00 ; Raw block
#_0B9E76: db $E0
#_0B9E77: db $64 ; Increment fill
#_0B9E78: db $34
#_0B9E79: db $83 ; Copy past
#_0B9E7A: dw $DA00
#_0B9E7C: db $01 ; Raw block
#_0B9E7D: db $25, $39
#_0B9E7F: db $83 ; Copy past
#_0B9E80: dw $9000
#_0B9E82: db $04 ; Raw block
#_0B9E83: db $23, $3A, $DD, $3B, $3C
#_0B9E88: db $84 ; Copy past
#_0B9E89: dw $D900
#_0B9E8B: db $01 ; Raw block
#_0B9E8C: db $3D, $3E
#_0B9E8E: db $FF ; End of Map 18

;===================================================================================================

OverworldMap32_Screen19_High:
#_0B9E8F: db $26 ; Repeat byte
#_0B9E90: db $00
#_0B9E91: db $04 ; Raw block
#_0B9E92: db $01, $08, $08, $01, $01
#_0B9E97: db $23 ; Repeat byte
#_0B9E98: db $08
#_0B9E99: db $0A ; Raw block
#_0B9E9A: db $01, $06, $06, $01, $06, $06, $01, $06
#_0B9EA2: db $08, $08, $01
#_0B9EA5: db $24 ; Repeat byte
#_0B9EA6: db $08
#_0B9EA7: db $26 ; Repeat byte
#_0B9EA8: db $07
#_0B9EA9: db $06 ; Raw block
#_0B9EAA: db $08, $07, $08, $08, $04, $01, $00
#_0B9EB1: db $83 ; Copy past
#_0B9EB2: dw $1E00
#_0B9EB4: db $25 ; Repeat byte
#_0B9EB5: db $08
#_0B9EB6: db $02 ; Raw block
#_0B9EB7: db $07, $08, $07
#_0B9EBA: db $22 ; Repeat byte
#_0B9EBB: db $06
#_0B9EBC: db $01 ; Raw block
#_0B9EBD: db $08, $01
#_0B9EBF: db $2A ; Repeat byte
#_0B9EC0: db $08
#_0B9EC1: db $02 ; Raw block
#_0B9EC2: db $07, $00, $02
#_0B9EC5: db $2C ; Repeat byte
#_0B9EC6: db $08
#_0B9EC7: db $02 ; Raw block
#_0B9EC8: db $00, $00, $03
#_0B9ECB: db $43 ; Repeat word
#_0B9ECC: dw $0608
#_0B9ECE: db $00 ; Raw block
#_0B9ECF: db $07
#_0B9ED0: db $22 ; Repeat byte
#_0B9ED1: db $08
#_0B9ED2: db $09 ; Raw block
#_0B9ED3: db $01, $06, $04, $04, $07, $07, $06, $03
#_0B9EDB: db $05, $05
#_0B9EDD: db $22 ; Repeat byte
#_0B9EDE: db $08
#_0B9EDF: db $00 ; Raw block
#_0B9EE0: db $06
#_0B9EE1: db $22 ; Repeat byte
#_0B9EE2: db $08
#_0B9EE3: db $03 ; Raw block
#_0B9EE4: db $02, $04, $04, $07
#_0B9EE8: db $83 ; Copy past
#_0B9EE9: dw $0600
#_0B9EEB: db $00 ; Raw block
#_0B9EEC: db $05
#_0B9EED: db $25 ; Repeat byte
#_0B9EEE: db $02
#_0B9EEF: db $09 ; Raw block
#_0B9EF0: db $04, $02, $02, $06, $07, $07, $06, $02
#_0B9EF8: db $08, $07
#_0B9EFA: db $2D ; Repeat byte
#_0B9EFB: db $08
#_0B9EFC: db $00 ; Raw block
#_0B9EFD: db $02
#_0B9EFE: db $2F ; Repeat byte
#_0B9EFF: db $08
#_0B9F00: db $00 ; Raw block
#_0B9F01: db $03
#_0B9F02: db $43 ; Repeat word
#_0B9F03: dw $0708
#_0B9F05: db $03 ; Raw block
#_0B9F06: db $07, $08, $08, $07
#_0B9F0A: db $26 ; Repeat byte
#_0B9F0B: db $08
#_0B9F0C: db $00 ; Raw block
#_0B9F0D: db $03
#_0B9F0E: db $22 ; Repeat byte
#_0B9F0F: db $08
#_0B9F10: db $04 ; Raw block
#_0B9F11: db $07, $06, $00, $07, $07
#_0B9F16: db $25 ; Repeat byte
#_0B9F17: db $08
#_0B9F18: db $00 ; Raw block
#_0B9F19: db $04
#_0B9F1A: db $23 ; Repeat byte
#_0B9F1B: db $08
#_0B9F1C: db $84 ; Copy past
#_0B9F1D: dw $B300
#_0B9F1F: db $00 ; Raw block
#_0B9F20: db $01
#_0B9F21: db $29 ; Repeat byte
#_0B9F22: db $08
#_0B9F23: db $01 ; Raw block
#_0B9F24: db $07, $00
#_0B9F26: db $83 ; Copy past
#_0B9F27: dw $C500
#_0B9F29: db $06 ; Raw block
#_0B9F2A: db $06, $08, $00, $07, $08, $07, $05
#_0B9F31: db $22 ; Repeat byte
#_0B9F32: db $08
#_0B9F33: db $85 ; Copy past
#_0B9F34: dw $B300
#_0B9F36: db $01 ; Raw block
#_0B9F37: db $00, $00
#_0B9F39: db $22 ; Repeat byte
#_0B9F3A: db $08
#_0B9F3B: db $01 ; Raw block
#_0B9F3C: db $07, $05
#_0B9F3E: db $FF ; End of Map 19

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen19_Low:
#_0B9F3F: db $62 ; Increment fill
#_0B9F40: db $09
#_0B9F41: db $62 ; Increment fill
#_0B9F42: db $09
#_0B9F43: db $05 ; Raw block
#_0B9F44: db $09, $2F, $3F, $40, $4D, $4E
#_0B9F4A: db $63 ; Increment fill
#_0B9F4B: db $41
#_0B9F4C: db $0A ; Raw block
#_0B9F4D: db $0E, $5E, $AC, $0E, $5E, $AC, $0E, $2B
#_0B9F55: db $45, $46, $57
#_0B9F58: db $64 ; Increment fill
#_0B9F59: db $47
#_0B9F5A: db $26 ; Repeat byte
#_0B9F5B: db $E1
#_0B9F5C: db $0B ; Raw block
#_0B9F5D: db $37, $E3, $35, $4C, $1E, $74, $1D, $4D
#_0B9F65: db $4E, $E9, $E9, $4F
#_0B9F69: db $22 ; Repeat byte
#_0B9F6A: db $50
#_0B9F6B: db $0C ; Raw block
#_0B9F6C: db $51, $52, $E7, $2D, $E7, $2F, $30, $66
#_0B9F74: db $53, $67, $54, $55, $0F
#_0B9F79: db $22 ; Repeat byte
#_0B9F7A: db $10
#_0B9F7B: db $07 ; Raw block
#_0B9F7C: db $11, $56, $09, $57, $58, $DE, $1D, $A1
#_0B9F84: db $64 ; Increment fill
#_0B9F85: db $59
#_0B9F86: db $03 ; Raw block
#_0B9F87: db $1C, $5E, $1C, $1D
#_0B9F8B: db $63 ; Increment fill
#_0B9F8C: db $5F
#_0B9F8D: db $14 ; Raw block
#_0B9F8E: db $1D, $1D, $9A, $63, $A0, $64, $70, $C5
#_0B9F96: db $27, $65, $27, $1E, $3E, $B5, $BA, $E7
#_0B9F9E: db $DE, $66, $32, $C5, $E1
#_0B9FA3: db $22 ; Repeat byte
#_0B9FA4: db $66
#_0B9FA5: db $00 ; Raw block
#_0B9FA6: db $B3
#_0B9FA7: db $62 ; Increment fill
#_0B9FA8: db $66
#_0B9FA9: db $08 ; Raw block
#_0B9FAA: db $60, $C5, $BC, $E7, $1D, $1E, $69, $6A
#_0B9FB2: db $E1
#_0B9FB3: db $25 ; Repeat byte
#_0B9FB4: db $61
#_0B9FB5: db $09 ; Raw block
#_0B9FB6: db $C5, $02, $04, $66, $E7, $DE, $70, $3E
#_0B9FBE: db $6B, $43
#_0B9FC0: db $25 ; Repeat byte
#_0B9FC1: db $0C
#_0B9FC2: db $00 ; Raw block
#_0B9FC3: db $6C
#_0B9FC4: db $22 ; Repeat byte
#_0B9FC5: db $0A
#_0B9FC6: db $04 ; Raw block
#_0B9FC7: db $6D, $0A, $0A, $6E, $3E
#_0B9FCC: db $65 ; Increment fill
#_0B9FCD: db $6F
#_0B9FCE: db $63 ; Increment fill
#_0B9FCF: db $74
#_0B9FD0: db $22 ; Repeat byte
#_0B9FD1: db $78
#_0B9FD2: db $62 ; Increment fill
#_0B9FD3: db $79
#_0B9FD4: db $09 ; Raw block
#_0B9FD5: db $32, $7C, $E9, $7D, $EB, $DE, $7E, $7F
#_0B9FDD: db $EB, $25
#_0B9FDF: db $62 ; Increment fill
#_0B9FE0: db $05
#_0B9FE1: db $62 ; Increment fill
#_0B9FE2: db $80
#_0B9FE3: db $00 ; Raw block
#_0B9FE4: db $32
#_0B9FE5: db $62 ; Increment fill
#_0B9FE6: db $83
#_0B9FE7: db $05 ; Raw block
#_0B9FE8: db $EB, $66, $1D, $EF, $EB, $04
#_0B9FEE: db $62 ; Increment fill
#_0B9FEF: db $0F
#_0B9FF0: db $02 ; Raw block
#_0B9FF1: db $86, $87, $AA
#_0B9FF4: db $63 ; Increment fill
#_0B9FF5: db $88
#_0B9FF6: db $84 ; Copy past
#_0B9FF7: dw $B300
#_0B9FF9: db $00 ; Raw block
#_0B9FFA: db $37
#_0B9FFB: db $62 ; Increment fill
#_0B9FFC: db $1B
#_0B9FFD: db $66 ; Increment fill
#_0B9FFE: db $8C
#_0B9FFF: db $0C ; Raw block
#_0BA000: db $EB, $1D, $1D, $EF, $EB, $1A, $66, $27
#_0BA008: db $1F, $EF, $93, $5B, $C5
#_0BA00D: db $62 ; Increment fill
#_0BA00E: db $94
#_0BA00F: db $84 ; Copy past
#_0BA010: dw $B300
#_0BA012: db $07 ; Raw block
#_0BA013: db $04, $1D, $1D, $97, $98, $93, $5B, $C5
#_0BA01B: db $FF ; End of Map 19

;===================================================================================================

OverworldMap32_Screen1A_High:
#_0BA01C: db $00 ; Raw block
#_0BA01D: db $04
#_0BA01E: db $22 ; Repeat byte
#_0BA01F: db $08
#_0BA020: db $01 ; Raw block
#_0BA021: db $00, $00
#_0BA023: db $22 ; Repeat byte
#_0BA024: db $08
#_0BA025: db $00 ; Raw block
#_0BA026: db $00
#_0BA027: db $43 ; Repeat word
#_0BA028: dw $0801
#_0BA02A: db $02 ; Raw block
#_0BA02B: db $07, $07, $04
#_0BA02E: db $22 ; Repeat byte
#_0BA02F: db $08
#_0BA030: db $03 ; Raw block
#_0BA031: db $00, $08, $00, $01
#_0BA035: db $83 ; Copy past
#_0BA036: dw $0400
#_0BA038: db $03 ; Raw block
#_0BA039: db $01, $08, $07, $05
#_0BA03D: db $23 ; Repeat byte
#_0BA03E: db $08
#_0BA03F: db $03 ; Raw block
#_0BA040: db $00, $08, $00, $07
#_0BA044: db $22 ; Repeat byte
#_0BA045: db $01
#_0BA046: db $11 ; Raw block
#_0BA047: db $00, $00, $08, $07, $08, $08, $04, $04
#_0BA04F: db $00, $00, $08, $01, $00, $01, $08, $00
#_0BA057: db $01, $01
#_0BA059: db $84 ; Copy past
#_0BA05A: dw $2D00
#_0BA05C: db $22 ; Repeat byte
#_0BA05D: db $01
#_0BA05E: db $43 ; Repeat word
#_0BA05F: dw $0800
#_0BA061: db $84 ; Copy past
#_0BA062: dw $3100
#_0BA064: db $00 ; Raw block
#_0BA065: db $07
#_0BA066: db $62 ; Increment fill
#_0BA067: db $05
#_0BA068: db $01 ; Raw block
#_0BA069: db $01, $08
#_0BA06B: db $83 ; Copy past
#_0BA06C: dw $2900
#_0BA06E: db $05 ; Raw block
#_0BA06F: db $01, $00, $04, $01, $01, $08
#_0BA075: db $22 ; Repeat byte
#_0BA076: db $07
#_0BA077: db $22 ; Repeat byte
#_0BA078: db $08
#_0BA079: db $84 ; Copy past
#_0BA07A: dw $5200
#_0BA07C: db $24 ; Repeat byte
#_0BA07D: db $08
#_0BA07E: db $01 ; Raw block
#_0BA07F: db $07, $08
#_0BA081: db $22 ; Repeat byte
#_0BA082: db $07
#_0BA083: db $08 ; Raw block
#_0BA084: db $03, $03, $04, $04, $03, $00, $08, $08
#_0BA08C: db $04
#_0BA08D: db $22 ; Repeat byte
#_0BA08E: db $08
#_0BA08F: db $03 ; Raw block
#_0BA090: db $07, $08, $08, $03
#_0BA094: db $22 ; Repeat byte
#_0BA095: db $01
#_0BA096: db $02 ; Raw block
#_0BA097: db $04, $01, $00
#_0BA09A: db $23 ; Repeat byte
#_0BA09B: db $08
#_0BA09C: db $00 ; Raw block
#_0BA09D: db $02
#_0BA09E: db $43 ; Repeat word
#_0BA09F: dw $0807
#_0BA0A1: db $43 ; Repeat word
#_0BA0A2: dw $0801
#_0BA0A4: db $02 ; Raw block
#_0BA0A5: db $06, $08, $00
#_0BA0A8: db $43 ; Repeat word
#_0BA0A9: dw $0100
#_0BA0AB: db $0A ; Raw block
#_0BA0AC: db $04, $02, $01, $07, $06, $07, $01, $01
#_0BA0B4: db $08, $04, $00
#_0BA0B7: db $22 ; Repeat byte
#_0BA0B8: db $01
#_0BA0B9: db $04 ; Raw block
#_0BA0BA: db $04, $03, $03, $02, $02
#_0BA0BF: db $22 ; Repeat byte
#_0BA0C0: db $07
#_0BA0C1: db $00 ; Raw block
#_0BA0C2: db $03
#_0BA0C3: db $84 ; Copy past
#_0BA0C4: dw $5400
#_0BA0C6: db $0E ; Raw block
#_0BA0C7: db $08, $00, $04, $01, $05, $02, $02, $08
#_0BA0CF: db $08, $03, $00, $01, $08, $08, $04
#_0BA0D6: db $22 ; Repeat byte
#_0BA0D7: db $08
#_0BA0D8: db $02 ; Raw block
#_0BA0D9: db $06, $08, $05
#_0BA0DC: db $22 ; Repeat byte
#_0BA0DD: db $07
#_0BA0DE: db $03 ; Raw block
#_0BA0DF: db $08, $00, $06, $03
#_0BA0E3: db $22 ; Repeat byte
#_0BA0E4: db $04
#_0BA0E5: db $22 ; Repeat byte
#_0BA0E6: db $08
#_0BA0E7: db $84 ; Copy past
#_0BA0E8: dw $4B00
#_0BA0EA: db $05 ; Raw block
#_0BA0EB: db $08, $08, $01, $04, $04, $01
#_0BA0F1: db $83 ; Copy past
#_0BA0F2: dw $D600
#_0BA0F4: db $06 ; Raw block
#_0BA0F5: db $04, $01, $04, $08, $07, $05, $07
#_0BA0FC: db $22 ; Repeat byte
#_0BA0FD: db $08
#_0BA0FE: db $83 ; Copy past
#_0BA0FF: dw $E700
#_0BA101: db $02 ; Raw block
#_0BA102: db $08, $08, $04
#_0BA105: db $22 ; Repeat byte
#_0BA106: db $08
#_0BA107: db $01 ; Raw block
#_0BA108: db $07, $05
#_0BA10A: db $FF ; End of Map 1A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen1A_Low:
#_0BA10B: db $05 ; Raw block
#_0BA10C: db $4A, $99, $44, $9A, $1D, $1C
#_0BA112: db $62 ; Increment fill
#_0BA113: db $9B
#_0BA114: db $16 ; Raw block
#_0BA115: db $B2, $67, $42, $4E, $9E, $8E, $36, $39
#_0BA11D: db $9F, $4B, $A0, $B2, $A1, $B6, $26, $1D
#_0BA125: db $1D, $A2, $49, $58, $A3, $8E, $E1
#_0BA12C: db $63 ; Increment fill
#_0BA12D: db $A4
#_0BA12E: db $E0, $3C ; EXT Raw block
#_0BA130: db $B6, $A8, $09, $8C, $61, $62, $2D, $C9
#_0BA138: db $FE, $A9, $8E, $AA, $AB, $95, $BE, $EE
#_0BA140: db $09, $AC, $0E, $F6, $67, $AD, $1C, $39
#_0BA148: db $3A, $AE, $8E, $AA, $AF, $9A, $A0, $30
#_0BA150: db $0E, $F6, $B0, $B6, $B1, $25, $20, $91
#_0BA158: db $8E, $B2, $8E, $E1, $A0, $1C, $D9, $B3
#_0BA160: db $61, $62, $EE, $09, $2F, $99, $20, $42
#_0BA168: db $43, $B4, $8E, $36, $19
#_0BA16D: db $62 ; Increment fill
#_0BA16E: db $B5
#_0BA16F: db $04 ; Raw block
#_0BA170: db $67, $AD, $30, $0E, $F6
#_0BA175: db $64 ; Increment fill
#_0BA176: db $B8
#_0BA177: db $0D ; Raw block
#_0BA178: db $8E, $AA, $36, $67, $68, $55, $DB, $25
#_0BA180: db $23, $FB, $AA, $BD, $4B, $39
#_0BA186: db $62 ; Increment fill
#_0BA187: db $BE
#_0BA188: db $03 ; Raw block
#_0BA189: db $3C, $C1, $C2, $49
#_0BA18D: db $62 ; Increment fill
#_0BA18E: db $42
#_0BA18F: db $12 ; Raw block
#_0BA190: db $1E, $74, $AA, $4D, $A6, $9C, $9D, $30
#_0BA198: db $3A, $C3, $4C, $C4, $A0, $C5, $4E, $C6
#_0BA1A0: db $2F, $C7, $1C
#_0BA1A3: db $43 ; Repeat word
#_0BA1A4: dw $4B9F
#_0BA1A6: db $E0, $2A ; EXT Raw block
#_0BA1A8: db $C1, $30, $8B, $14, $16, $6C, $57, $58
#_0BA1B0: db $C8, $BB, $1D, $61, $62, $4B, $23, $FB
#_0BA1B8: db $FF, $A1, $07, $36, $5D, $5E, $FF, $61
#_0BA1C0: db $62, $97, $98, $67, $AD, $B2, $1E, $74
#_0BA1C8: db $4D, $AA, $FB, $C1, $C2, $49, $B2, $67
#_0BA1D0: db $AD, $C9, $2E
#_0BA1D3: db $62 ; Increment fill
#_0BA1D4: db $CA
#_0BA1D5: db $16 ; Raw block
#_0BA1D6: db $2F, $C7, $6F, $1E, $79, $4C, $CD, $99
#_0BA1DE: db $3A, $DB, $25, $38, $39, $9F, $4B, $CE
#_0BA1E6: db $1D, $97, $CF, $8E, $E1, $D0, $D1
#_0BA1ED: db $62 ; Increment fill
#_0BA1EE: db $43
#_0BA1EF: db $13 ; Raw block
#_0BA1F0: db $43, $44, $42, $D2, $D3, $45, $43, $44
#_0BA1F8: db $D4, $8E, $E1, $4C, $D5, $43, $44, $4A
#_0BA200: db $99, $44, $4A, $99
#_0BA204: db $83 ; Copy past
#_0BA205: dw $F300
#_0BA207: db $02 ; Raw block
#_0BA208: db $D6, $8E, $E1
#_0BA20B: db $FF ; End of Map 1A

;===================================================================================================

OverworldMap32_Screen1B_High:
#_0BA20C: db $03 ; Raw block
#_0BA20D: db $05, $05, $08, $07
#_0BA211: db $2B ; Repeat byte
#_0BA212: db $08
#_0BA213: db $04 ; Raw block
#_0BA214: db $07, $07, $08, $07, $07
#_0BA219: db $2A ; Repeat byte
#_0BA21A: db $08
#_0BA21B: db $83 ; Copy past
#_0BA21C: dw $1300
#_0BA21E: db $00 ; Raw block
#_0BA21F: db $00
#_0BA220: db $2A ; Repeat byte
#_0BA221: db $08
#_0BA222: db $04 ; Raw block
#_0BA223: db $07, $07, $08, $01, $01
#_0BA228: db $2B ; Repeat byte
#_0BA229: db $08
#_0BA22A: db $03 ; Raw block
#_0BA22B: db $07, $08, $00, $07
#_0BA22F: db $24 ; Repeat byte
#_0BA230: db $08
#_0BA231: db $01 ; Raw block
#_0BA232: db $09, $09
#_0BA234: db $22 ; Repeat byte
#_0BA235: db $08
#_0BA236: db $05 ; Raw block
#_0BA237: db $09, $05, $07, $08, $07, $06
#_0BA23D: db $25 ; Repeat byte
#_0BA23E: db $09
#_0BA23F: db $22 ; Repeat byte
#_0BA240: db $08
#_0BA241: db $22 ; Repeat byte
#_0BA242: db $09
#_0BA243: db $04 ; Raw block
#_0BA244: db $07, $09, $02, $06, $06
#_0BA249: db $22 ; Repeat byte
#_0BA24A: db $09
#_0BA24B: db $00 ; Raw block
#_0BA24C: db $06
#_0BA24D: db $27 ; Repeat byte
#_0BA24E: db $09
#_0BA24F: db $03 ; Raw block
#_0BA250: db $02, $09, $06, $06
#_0BA254: db $22 ; Repeat byte
#_0BA255: db $09
#_0BA256: db $02 ; Raw block
#_0BA257: db $00, $09, $09
#_0BA25A: db $22 ; Repeat byte
#_0BA25B: db $08
#_0BA25C: db $22 ; Repeat byte
#_0BA25D: db $09
#_0BA25E: db $03 ; Raw block
#_0BA25F: db $01, $09, $06, $06
#_0BA263: db $22 ; Repeat byte
#_0BA264: db $09
#_0BA265: db $00 ; Raw block
#_0BA266: db $06
#_0BA267: db $25 ; Repeat byte
#_0BA268: db $09
#_0BA269: db $22 ; Repeat byte
#_0BA26A: db $01
#_0BA26B: db $02 ; Raw block
#_0BA26C: db $09, $06, $06
#_0BA26F: db $22 ; Repeat byte
#_0BA270: db $09
#_0BA271: db $03 ; Raw block
#_0BA272: db $06, $04, $00, $01
#_0BA276: db $22 ; Repeat byte
#_0BA277: db $09
#_0BA278: db $04 ; Raw block
#_0BA279: db $02, $01, $06, $09, $06
#_0BA27E: db $23 ; Repeat byte
#_0BA27F: db $09
#_0BA280: db $22 ; Repeat byte
#_0BA281: db $00
#_0BA282: db $00 ; Raw block
#_0BA283: db $01
#_0BA284: db $22 ; Repeat byte
#_0BA285: db $09
#_0BA286: db $04 ; Raw block
#_0BA287: db $02, $01, $08, $09, $06
#_0BA28C: db $24 ; Repeat byte
#_0BA28D: db $09
#_0BA28E: db $02 ; Raw block
#_0BA28F: db $01, $01, $06
#_0BA292: db $23 ; Repeat byte
#_0BA293: db $09
#_0BA294: db $06 ; Raw block
#_0BA295: db $08, $09, $07, $06, $09, $08, $08
#_0BA29C: db $22 ; Repeat byte
#_0BA29D: db $09
#_0BA29E: db $00 ; Raw block
#_0BA29F: db $01
#_0BA2A0: db $24 ; Repeat byte
#_0BA2A1: db $09
#_0BA2A2: db $83 ; Copy past
#_0BA2A3: dw $6100
#_0BA2A5: db $25 ; Repeat byte
#_0BA2A6: db $09
#_0BA2A7: db $00 ; Raw block
#_0BA2A8: db $06
#_0BA2A9: db $23 ; Repeat byte
#_0BA2AA: db $09
#_0BA2AB: db $04 ; Raw block
#_0BA2AC: db $07, $07, $09, $06, $00
#_0BA2B1: db $25 ; Repeat byte
#_0BA2B2: db $09
#_0BA2B3: db $00 ; Raw block
#_0BA2B4: db $00
#_0BA2B5: db $23 ; Repeat byte
#_0BA2B6: db $09
#_0BA2B7: db $04 ; Raw block
#_0BA2B8: db $05, $07, $09, $00, $03
#_0BA2BD: db $25 ; Repeat byte
#_0BA2BE: db $09
#_0BA2BF: db $00 ; Raw block
#_0BA2C0: db $00
#_0BA2C1: db $23 ; Repeat byte
#_0BA2C2: db $09
#_0BA2C3: db $FF ; End of Map 1B

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen1B_Low:
#_0BA2C4: db $03 ; Raw block
#_0BA2C5: db $E1, $E0, $D7, $22
#_0BA2C9: db $63 ; Increment fill
#_0BA2CA: db $D8
#_0BA2CB: db $03 ; Raw block
#_0BA2CC: db $DB, $DC, $DB, $DB
#_0BA2D0: db $62 ; Increment fill
#_0BA2D1: db $DD
#_0BA2D2: db $05 ; Raw block
#_0BA2D3: db $DF, $36, $67, $E0, $86, $87
#_0BA2D9: db $68 ; Increment fill
#_0BA2DA: db $E1
#_0BA2DB: db $08 ; Raw block
#_0BA2DC: db $E3, $EA, $20, $6E, $EB, $EC, $09, $ED
#_0BA2E4: db $EE
#_0BA2E5: db $44 ; Repeat word
#_0BA2E6: dw $F0EF
#_0BA2E8: db $63 ; Increment fill
#_0BA2E9: db $F1
#_0BA2EA: db $06 ; Raw block
#_0BA2EB: db $89, $6E, $F5, $30, $0E, $F6, $EE
#_0BA2F2: db $24 ; Repeat byte
#_0BA2F3: db $EF
#_0BA2F4: db $63 ; Increment fill
#_0BA2F5: db $F7
#_0BA2F6: db $04 ; Raw block
#_0BA2F7: db $AA, $6E, $F5, $1F, $AF
#_0BA2FC: db $64 ; Increment fill
#_0BA2FD: db $FB
#_0BA2FE: db $01 ; Raw block
#_0BA2FF: db $00, $01
#_0BA301: db $22 ; Repeat byte
#_0BA302: db $EF
#_0BA303: db $05 ; Raw block
#_0BA304: db $02, $E1, $6E, $F5, $AF, $7C
#_0BA30A: db $65 ; Increment fill
#_0BA30B: db $03
#_0BA30C: db $02 ; Raw block
#_0BA30D: db $EE, $EF, $EF
#_0BA310: db $62 ; Increment fill
#_0BA311: db $09
#_0BA312: db $08 ; Raw block
#_0BA313: db $6E, $0C, $DE, $7C, $7C, $0D, $05, $0E
#_0BA31B: db $7C
#_0BA31C: db $62 ; Increment fill
#_0BA31D: db $0F
#_0BA31E: db $64 ; Increment fill
#_0BA31F: db $11
#_0BA320: db $01 ; Raw block
#_0BA321: db $41, $16
#_0BA323: db $84 ; Copy past
#_0BA324: dw $6400
#_0BA326: db $05 ; Raw block
#_0BA327: db $1F, $17, $18, $F3, $F2, $F3
#_0BA32D: db $62 ; Increment fill
#_0BA32E: db $19
#_0BA32F: db $01 ; Raw block
#_0BA330: db $CC, $1C
#_0BA332: db $84 ; Copy past
#_0BA333: dw $6400
#_0BA335: db $00 ; Raw block
#_0BA336: db $66
#_0BA337: db $62 ; Increment fill
#_0BA338: db $1D
#_0BA339: db $05 ; Raw block
#_0BA33A: db $1E, $20, $21, $8B, $CC, $1E
#_0BA340: db $85 ; Copy past
#_0BA341: dw $8300
#_0BA343: db $03 ; Raw block
#_0BA344: db $70, $56, $B6, $26
#_0BA348: db $62 ; Increment fill
#_0BA349: db $22
#_0BA34A: db $0C ; Raw block
#_0BA34B: db $07, $A0, $66, $1C, $7C, $25, $0D, $05
#_0BA353: db $0E, $FB, $EE, $09, $2F
#_0BA358: db $62 ; Increment fill
#_0BA359: db $26
#_0BA35A: db $04 ; Raw block
#_0BA35B: db $FB, $D9, $B3, $1C, $7C
#_0BA360: db $64 ; Increment fill
#_0BA361: db $29
#_0BA362: db $0D ; Raw block
#_0BA363: db $30, $0E, $2B, $2E, $27, $28, $2F, $B6
#_0BA36B: db $30, $34, $83, $31, $EE, $EF
#_0BA371: db $62 ; Increment fill
#_0BA372: db $32
#_0BA373: db $0A ; Raw block
#_0BA374: db $1E, $35, $22, $27, $28, $36, $6E, $37
#_0BA37C: db $DE, $66, $31
#_0BA37F: db $62 ; Increment fill
#_0BA380: db $38
#_0BA381: db $E0, $22 ; EXT Raw block
#_0BA383: db $33, $3B, $66, $3C, $2E, $27, $28, $20
#_0BA38B: db $6E, $37, $66, $1C, $17, $3D, $05, $3E
#_0BA393: db $33, $3B, $1D, $3C, $22, $27, $28, $E1
#_0BA39B: db $6E, $37, $1D, $D5, $1D, $3F, $05, $40
#_0BA3A3: db $41, $3B, $1D
#_0BA3A6: db $83 ; Copy past
#_0BA3A7: dw $DC00
#_0BA3A9: db $FF ; End of Map 1B

;===================================================================================================

OverworldMap32_Screen1C_High:
#_0BA3AA: db $03 ; Raw block
#_0BA3AB: db $08, $08, $09, $09
#_0BA3AF: db $24 ; Repeat byte
#_0BA3B0: db $08
#_0BA3B1: db $26 ; Repeat byte
#_0BA3B2: db $09
#_0BA3B3: db $01 ; Raw block
#_0BA3B4: db $08, $08
#_0BA3B6: db $22 ; Repeat byte
#_0BA3B7: db $09
#_0BA3B8: db $23 ; Repeat byte
#_0BA3B9: db $08
#_0BA3BA: db $22 ; Repeat byte
#_0BA3BB: db $09
#_0BA3BC: db $01 ; Raw block
#_0BA3BD: db $07, $07
#_0BA3BF: db $25 ; Repeat byte
#_0BA3C0: db $09
#_0BA3C1: db $24 ; Repeat byte
#_0BA3C2: db $08
#_0BA3C3: db $06 ; Raw block
#_0BA3C4: db $09, $09, $08, $00, $09, $07, $06
#_0BA3CB: db $23 ; Repeat byte
#_0BA3CC: db $09
#_0BA3CD: db $24 ; Repeat byte
#_0BA3CE: db $08
#_0BA3CF: db $07 ; Raw block
#_0BA3D0: db $09, $09, $01, $01, $09, $07, $05, $09
#_0BA3D8: db $22 ; Repeat byte
#_0BA3D9: db $08
#_0BA3DA: db $01 ; Raw block
#_0BA3DB: db $09, $08
#_0BA3DD: db $27 ; Repeat byte
#_0BA3DE: db $09
#_0BA3DF: db $01 ; Raw block
#_0BA3E0: db $07, $05
#_0BA3E2: db $84 ; Copy past
#_0BA3E3: dw $0E00
#_0BA3E5: db $43 ; Repeat word
#_0BA3E6: dw $0809
#_0BA3E8: db $24 ; Repeat byte
#_0BA3E9: db $09
#_0BA3EA: db $01 ; Raw block
#_0BA3EB: db $07, $05
#_0BA3ED: db $27 ; Repeat byte
#_0BA3EE: db $09
#_0BA3EF: db $00 ; Raw block
#_0BA3F0: db $08
#_0BA3F1: db $24 ; Repeat byte
#_0BA3F2: db $09
#_0BA3F3: db $00 ; Raw block
#_0BA3F4: db $07
#_0BA3F5: db $28 ; Repeat byte
#_0BA3F6: db $09
#_0BA3F7: db $00 ; Raw block
#_0BA3F8: db $08
#_0BA3F9: db $2E ; Repeat byte
#_0BA3FA: db $09
#_0BA3FB: db $00 ; Raw block
#_0BA3FC: db $08
#_0BA3FD: db $24 ; Repeat byte
#_0BA3FE: db $09
#_0BA3FF: db $01 ; Raw block
#_0BA400: db $08, $07
#_0BA402: db $22 ; Repeat byte
#_0BA403: db $09
#_0BA404: db $05 ; Raw block
#_0BA405: db $08, $00, $01, $09, $09, $08
#_0BA40B: db $23 ; Repeat byte
#_0BA40C: db $09
#_0BA40D: db $01 ; Raw block
#_0BA40E: db $07, $05
#_0BA410: db $23 ; Repeat byte
#_0BA411: db $09
#_0BA412: db $05 ; Raw block
#_0BA413: db $00, $00, $01, $00, $09, $08
#_0BA419: db $23 ; Repeat byte
#_0BA41A: db $09
#_0BA41B: db $02 ; Raw block
#_0BA41C: db $07, $05, $05
#_0BA41F: db $22 ; Repeat byte
#_0BA420: db $09
#_0BA421: db $03 ; Raw block
#_0BA422: db $01, $01, $06, $07
#_0BA426: db $25 ; Repeat byte
#_0BA427: db $09
#_0BA428: db $02 ; Raw block
#_0BA429: db $07, $05, $07
#_0BA42C: db $22 ; Repeat byte
#_0BA42D: db $09
#_0BA42E: db $03 ; Raw block
#_0BA42F: db $06, $09, $06, $06
#_0BA433: db $25 ; Repeat byte
#_0BA434: db $09
#_0BA435: db $01 ; Raw block
#_0BA436: db $07, $05
#_0BA438: db $22 ; Repeat byte
#_0BA439: db $09
#_0BA43A: db $00 ; Raw block
#_0BA43B: db $00
#_0BA43C: db $22 ; Repeat byte
#_0BA43D: db $09
#_0BA43E: db $00 ; Raw block
#_0BA43F: db $00
#_0BA440: db $25 ; Repeat byte
#_0BA441: db $09
#_0BA442: db $00 ; Raw block
#_0BA443: db $07
#_0BA444: db $83 ; Copy past
#_0BA445: dw $4E00
#_0BA447: db $00 ; Raw block
#_0BA448: db $00
#_0BA449: db $22 ; Repeat byte
#_0BA44A: db $09
#_0BA44B: db $02 ; Raw block
#_0BA44C: db $00, $09, $08
#_0BA44F: db $23 ; Repeat byte
#_0BA450: db $09
#_0BA451: db $01 ; Raw block
#_0BA452: db $07, $06
#_0BA454: db $22 ; Repeat byte
#_0BA455: db $09
#_0BA456: db $00 ; Raw block
#_0BA457: db $00
#_0BA458: db $22 ; Repeat byte
#_0BA459: db $09
#_0BA45A: db $02 ; Raw block
#_0BA45B: db $00, $09, $08
#_0BA45E: db $23 ; Repeat byte
#_0BA45F: db $09
#_0BA460: db $02 ; Raw block
#_0BA461: db $07, $05, $05
#_0BA464: db $FF ; End of Map 1C

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen1C_Low:
#_0BA465: db $08 ; Raw block
#_0BA466: db $DF, $DF, $42, $43, $DB, $DB, $DC, $DB
#_0BA46E: db $DB
#_0BA46F: db $66 ; Increment fill
#_0BA470: db $44
#_0BA471: db $01 ; Raw block
#_0BA472: db $EA, $E3
#_0BA474: db $62 ; Increment fill
#_0BA475: db $4B
#_0BA476: db $62 ; Increment fill
#_0BA477: db $E4
#_0BA478: db $00 ; Raw block
#_0BA479: db $E3
#_0BA47A: db $62 ; Increment fill
#_0BA47B: db $4E
#_0BA47C: db $01 ; Raw block
#_0BA47D: db $87, $88
#_0BA47F: db $65 ; Increment fill
#_0BA480: db $51
#_0BA481: db $44 ; Repeat word
#_0BA482: dw $F0EF
#_0BA484: db $06 ; Raw block
#_0BA485: db $57, $58, $EC, $09, $59, $5B, $09
#_0BA48C: db $63 ; Increment fill
#_0BA48D: db $5A
#_0BA48E: db $24 ; Repeat byte
#_0BA48F: db $EF
#_0BA490: db $07 ; Raw block
#_0BA491: db $57, $0E, $30, $0E, $5E, $5B, $C5, $5F
#_0BA499: db $22 ; Repeat byte
#_0BA49A: db $EF
#_0BA49B: db $04 ; Raw block
#_0BA49C: db $60, $FE, $61, $00, $01
#_0BA4A1: db $64 ; Increment fill
#_0BA4A2: db $62
#_0BA4A3: db $0A ; Raw block
#_0BA4A4: db $5B, $C5, $67, $68, $EF, $EF, $57, $69
#_0BA4AC: db $EA, $6A, $EE
#_0BA4AF: db $64 ; Increment fill
#_0BA4B0: db $6B
#_0BA4B1: db $0C ; Raw block
#_0BA4B2: db $5B, $C5, $70, $71, $11, $11, $72, $0E
#_0BA4BA: db $73, $74, $EE, $32, $33
#_0BA4BF: db $62 ; Increment fill
#_0BA4C0: db $75
#_0BA4C1: db $00 ; Raw block
#_0BA4C2: db $5B
#_0BA4C3: db $62 ; Increment fill
#_0BA4C4: db $78
#_0BA4C5: db $00 ; Raw block
#_0BA4C6: db $55
#_0BA4C7: db $63 ; Increment fill
#_0BA4C8: db $7B
#_0BA4C9: db $03 ; Raw block
#_0BA4CA: db $0F, $EE, $32, $33
#_0BA4CE: db $68 ; Increment fill
#_0BA4CF: db $7F
#_0BA4D0: db $00 ; Raw block
#_0BA4D1: db $86
#_0BA4D2: db $62 ; Increment fill
#_0BA4D3: db $88
#_0BA4D4: db $83 ; Copy past
#_0BA4D5: dw $7800
#_0BA4D7: db $03 ; Raw block
#_0BA4D8: db $66, $8B, $8F, $89
#_0BA4DC: db $62 ; Increment fill
#_0BA4DD: db $8C
#_0BA4DE: db $03 ; Raw block
#_0BA4DF: db $A1, $B6, $26, $89
#_0BA4E3: db $84 ; Copy past
#_0BA4E4: dw $7700
#_0BA4E6: db $02 ; Raw block
#_0BA4E7: db $8F, $5B, $C5
#_0BA4EA: db $63 ; Increment fill
#_0BA4EB: db $90
#_0BA4EC: db $03 ; Raw block
#_0BA4ED: db $EE, $09, $2F, $1F
#_0BA4F1: db $83 ; Copy past
#_0BA4F2: dw $7700
#_0BA4F4: db $04 ; Raw block
#_0BA4F5: db $94, $95, $5B, $C5, $E1
#_0BA4FA: db $62 ; Increment fill
#_0BA4FB: db $91
#_0BA4FC: db $03 ; Raw block
#_0BA4FD: db $30, $0E, $2B, $C5
#_0BA501: db $63 ; Increment fill
#_0BA502: db $96
#_0BA503: db $17 ; Raw block
#_0BA504: db $94, $66, $5B, $C5, $36, $91, $92, $9A
#_0BA50C: db $B3, $9B, $B3, $B3, $0D, $9C, $57, $0E
#_0BA514: db $7F, $6F, $5B, $C5, $9D, $91, $92, $1F
#_0BA51C: db $62 ; Increment fill
#_0BA51D: db $9E
#_0BA51E: db $00 ; Raw block
#_0BA51F: db $1F
#_0BA520: db $62 ; Increment fill
#_0BA521: db $A1
#_0BA522: db $08 ; Raw block
#_0BA523: db $0E, $94, $A4, $5B, $5C, $E1, $91, $92
#_0BA52B: db $1F
#_0BA52C: db $62 ; Increment fill
#_0BA52D: db $A5
#_0BA52E: db $08 ; Raw block
#_0BA52F: db $1F, $A8, $EE, $A9, $7D, $94, $8F, $5B
#_0BA537: db $09
#_0BA538: db $62 ; Increment fill
#_0BA539: db $90
#_0BA53A: db $00 ; Raw block
#_0BA53B: db $1F
#_0BA53C: db $62 ; Increment fill
#_0BA53D: db $AA
#_0BA53E: db $09 ; Raw block
#_0BA53F: db $1F, $AD, $EE, $AE, $AF, $94, $6F, $5B
#_0BA547: db $C5, $E1
#_0BA549: db $FF ; End of Map 1C

;===================================================================================================

OverworldMap32_Screen1D_High:
#_0BA54A: db $04 ; Raw block
#_0BA54B: db $07, $01, $07, $09, $06
#_0BA550: db $22 ; Repeat byte
#_0BA551: db $00
#_0BA552: db $0C ; Raw block
#_0BA553: db $03, $05, $07, $09, $04, $01, $04, $00
#_0BA55B: db $07, $01, $09, $09, $02
#_0BA560: db $23 ; Repeat byte
#_0BA561: db $09
#_0BA562: db $03 ; Raw block
#_0BA563: db $06, $07, $09, $01
#_0BA567: db $86 ; Copy past
#_0BA568: dw $0D00
#_0BA56A: db $22 ; Repeat byte
#_0BA56B: db $01
#_0BA56C: db $03 ; Raw block
#_0BA56D: db $09, $01, $05, $07
#_0BA571: db $22 ; Repeat byte
#_0BA572: db $09
#_0BA573: db $85 ; Copy past
#_0BA574: dw $0E00
#_0BA576: db $22 ; Repeat byte
#_0BA577: db $01
#_0BA578: db $02 ; Raw block
#_0BA579: db $03, $05, $09
#_0BA57C: db $87 ; Copy past
#_0BA57D: dw $1A00
#_0BA57F: db $22 ; Repeat byte
#_0BA580: db $09
#_0BA581: db $02 ; Raw block
#_0BA582: db $01, $01, $03
#_0BA585: db $23 ; Repeat byte
#_0BA586: db $09
#_0BA587: db $0A ; Raw block
#_0BA588: db $01, $09, $04, $04, $07, $01, $00, $09
#_0BA590: db $09, $06, $00
#_0BA593: db $28 ; Repeat byte
#_0BA594: db $09
#_0BA595: db $02 ; Raw block
#_0BA596: db $07, $01, $00
#_0BA599: db $22 ; Repeat byte
#_0BA59A: db $09
#_0BA59B: db $00 ; Raw block
#_0BA59C: db $07
#_0BA59D: db $25 ; Repeat byte
#_0BA59E: db $09
#_0BA59F: db $05 ; Raw block
#_0BA5A0: db $00, $01, $04, $09, $01, $02
#_0BA5A6: db $22 ; Repeat byte
#_0BA5A7: db $09
#_0BA5A8: db $00 ; Raw block
#_0BA5A9: db $02
#_0BA5AA: db $25 ; Repeat byte
#_0BA5AB: db $09
#_0BA5AC: db $01 ; Raw block
#_0BA5AD: db $00, $01
#_0BA5AF: db $83 ; Copy past
#_0BA5B0: dw $4F00
#_0BA5B2: db $03 ; Raw block
#_0BA5B3: db $02, $09, $00, $00
#_0BA5B7: db $22 ; Repeat byte
#_0BA5B8: db $09
#_0BA5B9: db $02 ; Raw block
#_0BA5BA: db $07, $08, $07
#_0BA5BD: db $85 ; Copy past
#_0BA5BE: dw $7D00
#_0BA5C0: db $0C ; Raw block
#_0BA5C1: db $09, $06, $09, $04, $09, $09, $05, $07
#_0BA5C9: db $08, $07, $07, $09, $04
#_0BA5CE: db $62 ; Increment fill
#_0BA5CF: db $07
#_0BA5D0: db $83 ; Copy past
#_0BA5D1: dw $5100
#_0BA5D3: db $0A ; Raw block
#_0BA5D4: db $05, $08, $07, $07, $03, $09, $02, $07
#_0BA5DC: db $07, $09, $06
#_0BA5DF: db $23 ; Repeat byte
#_0BA5E0: db $09
#_0BA5E1: db $23 ; Repeat byte
#_0BA5E2: db $07
#_0BA5E3: db $05 ; Raw block
#_0BA5E4: db $03, $00, $09, $07, $07, $01
#_0BA5EA: db $24 ; Repeat byte
#_0BA5EB: db $09
#_0BA5EC: db $0C ; Raw block
#_0BA5ED: db $05, $07, $09, $07, $03, $00, $00, $09
#_0BA5F5: db $04, $01, $07, $09, $09
#_0BA5FA: db $24 ; Repeat byte
#_0BA5FB: db $07
#_0BA5FC: db $03 ; Raw block
#_0BA5FD: db $09, $07, $09, $03
#_0BA601: db $22 ; Repeat byte
#_0BA602: db $07
#_0BA603: db $06 ; Raw block
#_0BA604: db $01, $09, $05, $05, $09, $05, $05
#_0BA60B: db $22 ; Repeat byte
#_0BA60C: db $0A
#_0BA60D: db $01 ; Raw block
#_0BA60E: db $03, $01
#_0BA610: db $22 ; Repeat byte
#_0BA611: db $07
#_0BA612: db $06 ; Raw block
#_0BA613: db $00, $01, $0A, $07, $0A, $01, $00
#_0BA61A: db $22 ; Repeat byte
#_0BA61B: db $0A
#_0BA61C: db $03 ; Raw block
#_0BA61D: db $06, $00, $01, $03
#_0BA621: db $22 ; Repeat byte
#_0BA622: db $00
#_0BA623: db $01 ; Raw block
#_0BA624: db $01, $0A
#_0BA626: db $FF ; End of Map 1D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen1D_Low:
#_0BA627: db $04 ; Raw block
#_0BA628: db $4C, $93, $6D, $B0, $8E
#_0BA62D: db $22 ; Repeat byte
#_0BA62E: db $1D
#_0BA62F: db $0D ; Raw block
#_0BA630: db $32, $C5, $6E, $B1, $37, $77, $86, $1D
#_0BA638: db $4C, $93, $B2, $B3, $96, $B4
#_0BA63E: db $62 ; Increment fill
#_0BA63F: db $B4
#_0BA640: db $0A ; Raw block
#_0BA641: db $09, $6E, $B7, $37, $70, $86, $1D, $56
#_0BA649: db $93, $B8, $B9
#_0BA64C: db $62 ; Increment fill
#_0BA64D: db $42
#_0BA64E: db $03 ; Raw block
#_0BA64F: db $BA, $AD, $C5, $6E
#_0BA653: db $62 ; Increment fill
#_0BA654: db $BB
#_0BA655: db $83 ; Copy past
#_0BA656: dw $0E00
#_0BA658: db $01 ; Raw block
#_0BA659: db $B0, $BE
#_0BA65B: db $62 ; Increment fill
#_0BA65C: db $4D
#_0BA65D: db $05 ; Raw block
#_0BA65E: db $9A, $99, $BF, $6E, $C0, $62
#_0BA664: db $84 ; Copy past
#_0BA665: dw $0D00
#_0BA667: db $62 ; Increment fill
#_0BA668: db $C1
#_0BA669: db $02 ; Raw block
#_0BA66A: db $58, $65, $32
#_0BA66D: db $63 ; Increment fill
#_0BA66E: db $C4
#_0BA66F: db $0A ; Raw block
#_0BA670: db $68, $C8, $8E, $C4, $4C, $93, $1D, $C9
#_0BA678: db $CA, $8F, $1D
#_0BA67B: db $68 ; Increment fill
#_0BA67C: db $CB
#_0BA67D: db $02 ; Raw block
#_0BA67E: db $4C, $93, $1D
#_0BA681: db $62 ; Increment fill
#_0BA682: db $D4
#_0BA683: db $01 ; Raw block
#_0BA684: db $04, $D7
#_0BA686: db $22 ; Repeat byte
#_0BA687: db $D8
#_0BA688: db $0B ; Raw block
#_0BA689: db $D9, $DA, $A5, $77, $86, $DB, $93, $DE
#_0BA691: db $C1, $DC, $DD, $5E
#_0BA695: db $65 ; Increment fill
#_0BA696: db $DE
#_0BA697: db $09 ; Raw block
#_0BA698: db $A5, $77, $86, $4C, $93, $1D, $DE, $E4
#_0BA6A0: db $A5, $1D
#_0BA6A2: db $62 ; Increment fill
#_0BA6A3: db $E5
#_0BA6A4: db $03 ; Raw block
#_0BA6A5: db $6E, $B7, $41, $1D
#_0BA6A9: db $84 ; Copy past
#_0BA6AA: dw $7E00
#_0BA6AC: db $1E ; Raw block
#_0BA6AD: db $E8, $9C, $E9, $81, $82, $EA, $E1, $6E
#_0BA6B5: db $B7, $41, $91, $EB, $86, $4C, $C4, $EC
#_0BA6BD: db $F2, $1D, $ED, $EE, $9F, $AA, $67, $68
#_0BA6C5: db $55, $E4, $8D, $C6, $C7, $EF, $16
#_0BA6CC: db $63 ; Increment fill
#_0BA6CD: db $F0
#_0BA6CE: db $09 ; Raw block
#_0BA6CF: db $13, $36, $67, $68, $49, $1D, $F4, $C6
#_0BA6D7: db $C7, $48
#_0BA6D9: db $64 ; Increment fill
#_0BA6DA: db $F5
#_0BA6DB: db $0D ; Raw block
#_0BA6DC: db $AC, $18, $90, $6E, $4F, $1D, $1D, $EB
#_0BA6E4: db $86, $48, $D9, $FA, $FB, $83
#_0BA6EA: db $23 ; Repeat byte
#_0BA6EB: db $84
#_0BA6EC: db $0D ; Raw block
#_0BA6ED: db $FC, $68, $FD, $44, $C0, $C6, $2A, $2E
#_0BA6F5: db $FE, $E2, $EE, $FF, $6D, $6D
#_0BA6FB: db $62 ; Increment fill
#_0BA6FC: db $00
#_0BA6FD: db $17 ; Raw block
#_0BA6FE: db $49, $48, $60, $CB, $2A, $1D, $2E, $03
#_0BA706: db $4C, $04, $CC, $A0, $05, $06, $06, $8F
#_0BA70E: db $1D, $2E, $A0, $A5, $1D, $A5, $2E, $03
#_0BA716: db $FF ; End of Map 1D

;===================================================================================================

OverworldMap32_Screen1E_High:
#_0BA717: db $2E ; Repeat byte
#_0BA718: db $0A
#_0BA719: db $02 ; Raw block
#_0BA71A: db $01, $0A, $0A
#_0BA71D: db $22 ; Repeat byte
#_0BA71E: db $05
#_0BA71F: db $02 ; Raw block
#_0BA720: db $0A, $05, $05
#_0BA723: db $83 ; Copy past
#_0BA724: dw $1000
#_0BA726: db $01 ; Raw block
#_0BA727: db $0A, $05
#_0BA729: db $26 ; Repeat byte
#_0BA72A: db $0A
#_0BA72B: db $22 ; Repeat byte
#_0BA72C: db $06
#_0BA72D: db $E4, $31 ; EXT Repeat byte
#_0BA72F: db $0A
#_0BA730: db $00 ; Raw block
#_0BA731: db $06
#_0BA732: db $E4, $8E ; EXT Repeat byte
#_0BA734: db $0A
#_0BA735: db $04 ; Raw block
#_0BA736: db $04, $01, $01, $0A, $01
#_0BA73B: db $23 ; Repeat byte
#_0BA73C: db $0A
#_0BA73D: db $00 ; Raw block
#_0BA73E: db $06
#_0BA73F: db $25 ; Repeat byte
#_0BA740: db $0A
#_0BA741: db $05 ; Raw block
#_0BA742: db $01, $0A, $03, $03, $07, $0A
#_0BA748: db $FF ; End of Map 1E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen1E_Low:
#_0BA749: db $00 ; Raw block
#_0BA74A: db $07
#_0BA74B: db $2D ; Repeat byte
#_0BA74C: db $08
#_0BA74D: db $11 ; Raw block
#_0BA74E: db $F8, $09, $0A, $FB, $FB, $E8, $0B, $FB
#_0BA756: db $E8, $0B, $0C, $FB, $E8, $0D, $E8, $0E
#_0BA75E: db $0F, $09
#_0BA760: db $63 ; Increment fill
#_0BA761: db $10
#_0BA762: db $22 ; Repeat byte
#_0BA763: db $B5
#_0BA764: db $63 ; Increment fill
#_0BA765: db $14
#_0BA766: db $00 ; Raw block
#_0BA767: db $13
#_0BA768: db $62 ; Increment fill
#_0BA769: db $18
#_0BA76A: db $03 ; Raw block
#_0BA76B: db $09, $10, $19, $1B
#_0BA76F: db $44 ; Repeat word
#_0BA770: dw $1D1C
#_0BA772: db $00 ; Raw block
#_0BA773: db $1C
#_0BA774: db $64 ; Increment fill
#_0BA775: db $1E
#_0BA776: db $04 ; Raw block
#_0BA777: db $1A, $09, $0A, $23, $1A
#_0BA77C: db $62 ; Increment fill
#_0BA77D: db $24
#_0BA77E: db $04 ; Raw block
#_0BA77F: db $25, $27, $28, $25, $27
#_0BA784: db $62 ; Increment fill
#_0BA785: db $29
#_0BA786: db $04 ; Raw block
#_0BA787: db $1A, $09, $10, $2C, $1A
#_0BA78C: db $62 ; Increment fill
#_0BA78D: db $11
#_0BA78E: db $15 ; Raw block
#_0BA78F: db $2D, $17, $2E, $B5, $18, $2F, $30, $08
#_0BA797: db $31, $09, $10, $19, $1A, $32, $1B, $33
#_0BA79F: db $1E, $1F, $34, $35, $21, $36
#_0BA7A5: db $22 ; Repeat byte
#_0BA7A6: db $37
#_0BA7A7: db $04 ; Raw block
#_0BA7A8: db $09, $38, $39, $1A, $19
#_0BA7AD: db $6A ; Increment fill
#_0BA7AE: db $3A
#_0BA7AF: db $03 ; Raw block
#_0BA7B0: db $09, $10, $39, $1A
#_0BA7B4: db $67 ; Increment fill
#_0BA7B5: db $45
#_0BA7B6: db $01 ; Raw block
#_0BA7B7: db $29, $4D
#_0BA7B9: db $83 ; Copy past
#_0BA7BA: dw $2E00
#_0BA7BC: db $03 ; Raw block
#_0BA7BD: db $4E, $1A, $39, $46
#_0BA7C1: db $65 ; Increment fill
#_0BA7C2: db $4F
#_0BA7C3: db $08 ; Raw block
#_0BA7C4: db $29, $40, $22, $55, $09, $38, $4E, $1A
#_0BA7CC: db $39
#_0BA7CD: db $66 ; Increment fill
#_0BA7CE: db $56
#_0BA7CF: db $09 ; Raw block
#_0BA7D0: db $29, $4C, $5D, $5E, $09, $10, $23, $1A
#_0BA7D8: db $5F, $55
#_0BA7DA: db $65 ; Increment fill
#_0BA7DB: db $60
#_0BA7DC: db $09 ; Raw block
#_0BA7DD: db $29, $2A, $66, $66, $09, $0A, $2C, $1A
#_0BA7E5: db $67, $68
#_0BA7E7: db $22 ; Repeat byte
#_0BA7E8: db $69
#_0BA7E9: db $0A ; Raw block
#_0BA7EA: db $6A, $6A, $6B, $2F, $30, $08, $08, $09
#_0BA7F2: db $10, $6C, $55
#_0BA7F5: db $22 ; Repeat byte
#_0BA7F6: db $6D
#_0BA7F7: db $63 ; Increment fill
#_0BA7F8: db $6E
#_0BA7F9: db $23 ; Repeat byte
#_0BA7FA: db $6D
#_0BA7FB: db $05 ; Raw block
#_0BA7FC: db $72, $09, $0A, $5D, $73, $69
#_0BA802: db $64 ; Increment fill
#_0BA803: db $74
#_0BA804: db $04 ; Raw block
#_0BA805: db $E6, $EB, $EB, $79, $EB
#_0BA80A: db $62 ; Increment fill
#_0BA80B: db $7A
#_0BA80C: db $04 ; Raw block
#_0BA80D: db $2E, $B5, $7D, $7D, $14
#_0BA812: db $62 ; Increment fill
#_0BA813: db $7E
#_0BA814: db $05 ; Raw block
#_0BA815: db $17, $81, $20, $20, $0E, $82
#_0BA81B: db $FF ; End of Map 1E

;===================================================================================================

OverworldMap32_Screen1F_High:
#_0BA81C: db $04 ; Raw block
#_0BA81D: db $01, $01, $0A, $0A, $01
#_0BA822: db $29 ; Repeat byte
#_0BA823: db $0A
#_0BA824: db $00 ; Raw block
#_0BA825: db $02
#_0BA826: db $2E ; Repeat byte
#_0BA827: db $0A
#_0BA828: db $00 ; Raw block
#_0BA829: db $02
#_0BA82A: db $22 ; Repeat byte
#_0BA82B: db $0A
#_0BA82C: db $00 ; Raw block
#_0BA82D: db $06
#_0BA82E: db $2A ; Repeat byte
#_0BA82F: db $0A
#_0BA830: db $00 ; Raw block
#_0BA831: db $02
#_0BA832: db $E4, $42 ; EXT Repeat byte
#_0BA834: db $0A
#_0BA835: db $00 ; Raw block
#_0BA836: db $05
#_0BA837: db $E4, $2A ; EXT Repeat byte
#_0BA839: db $0A
#_0BA83A: db $00 ; Raw block
#_0BA83B: db $02
#_0BA83C: db $23 ; Repeat byte
#_0BA83D: db $0A
#_0BA83E: db $00 ; Raw block
#_0BA83F: db $05
#_0BA840: db $24 ; Repeat byte
#_0BA841: db $0A
#_0BA842: db $00 ; Raw block
#_0BA843: db $01
#_0BA844: db $2C ; Repeat byte
#_0BA845: db $0A
#_0BA846: db $00 ; Raw block
#_0BA847: db $05
#_0BA848: db $29 ; Repeat byte
#_0BA849: db $0A
#_0BA84A: db $01 ; Raw block
#_0BA84B: db $05, $05
#_0BA84D: db $22 ; Repeat byte
#_0BA84E: db $0A
#_0BA84F: db $00 ; Raw block
#_0BA850: db $06
#_0BA851: db $37 ; Repeat byte
#_0BA852: db $0A
#_0BA853: db $00 ; Raw block
#_0BA854: db $05
#_0BA855: db $27 ; Repeat byte
#_0BA856: db $0A
#_0BA857: db $01 ; Raw block
#_0BA858: db $05, $05
#_0BA85A: db $22 ; Repeat byte
#_0BA85B: db $0A
#_0BA85C: db $00 ; Raw block
#_0BA85D: db $02
#_0BA85E: db $27 ; Repeat byte
#_0BA85F: db $0A
#_0BA860: db $01 ; Raw block
#_0BA861: db $05, $06
#_0BA863: db $24 ; Repeat byte
#_0BA864: db $0A
#_0BA865: db $00 ; Raw block
#_0BA866: db $02
#_0BA867: db $FF ; End of Map 1F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen1F_Low:
#_0BA868: db $05 ; Raw block
#_0BA869: db $FE, $15, $83, $84, $F8, $08
#_0BA86F: db $65 ; Increment fill
#_0BA870: db $85
#_0BA871: db $03 ; Raw block
#_0BA872: db $87, $88, $8B, $82
#_0BA876: db $62 ; Increment fill
#_0BA877: db $8C
#_0BA878: db $01 ; Raw block
#_0BA879: db $08, $85
#_0BA87B: db $66 ; Increment fill
#_0BA87C: db $8F
#_0BA87D: db $0A ; Raw block
#_0BA87E: db $92, $93, $96, $82, $97, $98, $54, $05
#_0BA886: db $99, $9A, $90
#_0BA889: db $63 ; Increment fill
#_0BA88A: db $9B
#_0BA88B: db $62 ; Increment fill
#_0BA88C: db $9B
#_0BA88D: db $01 ; Raw block
#_0BA88E: db $9F, $82
#_0BA890: db $62 ; Increment fill
#_0BA891: db $A0
#_0BA892: db $03 ; Raw block
#_0BA893: db $63, $A3, $A4, $90
#_0BA897: db $68 ; Increment fill
#_0BA898: db $A5
#_0BA899: db $00 ; Raw block
#_0BA89A: db $99
#_0BA89B: db $64 ; Increment fill
#_0BA89C: db $AE
#_0BA89D: db $0A ; Raw block
#_0BA89E: db $90, $9A, $A6, $AB, $B3, $B4, $A6, $AB
#_0BA8A6: db $90, $B5, $99
#_0BA8A9: db $64 ; Increment fill
#_0BA8AA: db $B6
#_0BA8AB: db $02 ; Raw block
#_0BA8AC: db $90, $BB, $BC
#_0BA8AF: db $23 ; Repeat byte
#_0BA8B0: db $A7
#_0BA8B1: db $62 ; Increment fill
#_0BA8B2: db $BD
#_0BA8B3: db $04 ; Raw block
#_0BA8B4: db $99, $84, $08, $08, $85
#_0BA8B9: db $63 ; Increment fill
#_0BA8BA: db $C0
#_0BA8BB: db $0D ; Raw block
#_0BA8BC: db $15, $C4, $C5, $15, $C6, $C7, $83, $80
#_0BA8C4: db $85, $C8, $FB, $99, $9A, $C9
#_0BA8CA: db $22 ; Repeat byte
#_0BA8CB: db $CA
#_0BA8CC: db $0B ; Raw block
#_0BA8CD: db $CB, $CC, $CA, $CA, $CD, $CE, $97, $99
#_0BA8D5: db $CF, $D0, $99, $A4
#_0BA8D9: db $27 ; Repeat byte
#_0BA8DA: db $AB
#_0BA8DB: db $08 ; Raw block
#_0BA8DC: db $D1, $D2, $63, $A3, $D3, $D0, $D4, $D5
#_0BA8E4: db $15
#_0BA8E5: db $83 ; Copy past
#_0BA8E6: dw $6900
#_0BA8E8: db $09 ; Raw block
#_0BA8E9: db $15, $C4, $C5, $D6, $82, $D7, $D7, $D8
#_0BA8F1: db $D0, $DC
#_0BA8F3: db $22 ; Repeat byte
#_0BA8F4: db $1C
#_0BA8F5: db $07 ; Raw block
#_0BA8F6: db $CB, $D9, $15, $DA, $CB, $DB, $DC, $AD
#_0BA8FE: db $65 ; Increment fill
#_0BA8FF: db $DD
#_0BA900: db $1C ; Raw block
#_0BA901: db $E1, $E3, $FB, $E4, $E5, $DC, $C8, $0C
#_0BA909: db $99, $E6, $08, $85, $E7, $FB, $E8, $D0
#_0BA911: db $0C, $E8, $05, $E9, $10, $99, $EA, $0C
#_0BA919: db $EB, $EC, $E0, $D4, $D5
#_0BA91E: db $62 ; Increment fill
#_0BA91F: db $15
#_0BA920: db $07 ; Raw block
#_0BA921: db $15, $13, $14, $7E, $ED, $D4, $D5, $C4
#_0BA929: db $62 ; Increment fill
#_0BA92A: db $EE
#_0BA92B: db $01 ; Raw block
#_0BA92C: db $DC, $1D
#_0BA92E: db $62 ; Increment fill
#_0BA92F: db $F1
#_0BA930: db $14 ; Raw block
#_0BA931: db $DA, $F4, $1D, $F5, $FB, $DC, $1D, $CB
#_0BA939: db $F6, $82, $F7, $E8, $0C, $F8, $F9, $1F
#_0BA941: db $DC, $FA, $FB, $05, $97
#_0BA946: db $22 ; Repeat byte
#_0BA947: db $E8
#_0BA948: db $01 ; Raw block
#_0BA949: db $99, $82
#_0BA94B: db $FF ; End of Map 1F

;===================================================================================================

OverworldMap32_Screen20_High:
#_0BA94C: db $09 ; Raw block
#_0BA94D: db $00, $01, $06, $08, $0A, $00, $07, $00
#_0BA955: db $0A, $08
#_0BA957: db $25 ; Repeat byte
#_0BA958: db $0A
#_0BA959: db $02 ; Raw block
#_0BA95A: db $00, $04, $01
#_0BA95D: db $85 ; Copy past
#_0BA95E: dw $0300
#_0BA960: db $00 ; Raw block
#_0BA961: db $0A
#_0BA962: db $45 ; Repeat word
#_0BA963: dw $0B08
#_0BA965: db $01 ; Raw block
#_0BA966: db $00, $00
#_0BA968: db $86 ; Copy past
#_0BA969: dw $1200
#_0BA96B: db $01 ; Raw block
#_0BA96C: db $07, $08
#_0BA96E: db $23 ; Repeat byte
#_0BA96F: db $0B
#_0BA970: db $00 ; Raw block
#_0BA971: db $08
#_0BA972: db $88 ; Copy past
#_0BA973: dw $0000
#_0BA975: db $01 ; Raw block
#_0BA976: db $07, $08
#_0BA978: db $24 ; Repeat byte
#_0BA979: db $0B
#_0BA97A: db $83 ; Copy past
#_0BA97B: dw $1000
#_0BA97D: db $06 ; Raw block
#_0BA97E: db $0B, $0B, $04, $0B, $0B, $07, $08
#_0BA985: db $24 ; Repeat byte
#_0BA986: db $0B
#_0BA987: db $83 ; Copy past
#_0BA988: dw $2000
#_0BA98A: db $06 ; Raw block
#_0BA98B: db $0B, $0B, $08, $0B, $0B, $08, $08
#_0BA992: db $23 ; Repeat byte
#_0BA993: db $0B
#_0BA994: db $83 ; Copy past
#_0BA995: dw $2F00
#_0BA997: db $27 ; Repeat byte
#_0BA998: db $08
#_0BA999: db $01 ; Raw block
#_0BA99A: db $0B, $00
#_0BA99C: db $83 ; Copy past
#_0BA99D: dw $1D00
#_0BA99F: db $02 ; Raw block
#_0BA9A0: db $04, $01, $08
#_0BA9A3: db $25 ; Repeat byte
#_0BA9A4: db $0B
#_0BA9A5: db $24 ; Repeat byte
#_0BA9A6: db $07
#_0BA9A7: db $03 ; Raw block
#_0BA9A8: db $08, $00, $00, $01
#_0BA9AC: db $25 ; Repeat byte
#_0BA9AD: db $0B
#_0BA9AE: db $02 ; Raw block
#_0BA9AF: db $07, $0B, $0B
#_0BA9B2: db $22 ; Repeat byte
#_0BA9B3: db $07
#_0BA9B4: db $83 ; Copy past
#_0BA9B5: dw $2F00
#_0BA9B7: db $25 ; Repeat byte
#_0BA9B8: db $0B
#_0BA9B9: db $03 ; Raw block
#_0BA9BA: db $05, $0B, $0B, $06
#_0BA9BE: db $22 ; Repeat byte
#_0BA9BF: db $0B
#_0BA9C0: db $01 ; Raw block
#_0BA9C1: db $00, $04
#_0BA9C3: db $22 ; Repeat byte
#_0BA9C4: db $0B
#_0BA9C5: db $22 ; Repeat byte
#_0BA9C6: db $00
#_0BA9C7: db $04 ; Raw block
#_0BA9C8: db $08, $07, $0B, $0B, $00
#_0BA9CD: db $22 ; Repeat byte
#_0BA9CE: db $0B
#_0BA9CF: db $01 ; Raw block
#_0BA9D0: db $00, $00
#_0BA9D2: db $25 ; Repeat byte
#_0BA9D3: db $0B
#_0BA9D4: db $86 ; Copy past
#_0BA9D5: dw $A800
#_0BA9D7: db $02 ; Raw block
#_0BA9D8: db $08, $06, $01
#_0BA9DB: db $22 ; Repeat byte
#_0BA9DC: db $0B
#_0BA9DD: db $00 ; Raw block
#_0BA9DE: db $08
#_0BA9DF: db $43 ; Repeat word
#_0BA9E0: dw $0B08
#_0BA9E2: db $23 ; Repeat byte
#_0BA9E3: db $00
#_0BA9E4: db $09 ; Raw block
#_0BA9E5: db $06, $08, $03, $03, $0B, $0B, $01, $0B
#_0BA9ED: db $08, $01
#_0BA9EF: db $2C ; Repeat byte
#_0BA9F0: db $0B
#_0BA9F1: db $00 ; Raw block
#_0BA9F2: db $08
#_0BA9F3: db $2D ; Repeat byte
#_0BA9F4: db $0B
#_0BA9F5: db $05 ; Raw block
#_0BA9F6: db $04, $08, $08, $04, $08, $08
#_0BA9FC: db $85 ; Copy past
#_0BA9FD: dw $F400
#_0BA9FF: db $FF ; End of Map 20

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen20_Low:
#_0BAA00: db $09 ; Raw block
#_0BAA01: db $06, $10, $2B, $03, $FB, $1F, $41, $1F
#_0BAA09: db $FC, $13
#_0BAA0B: db $23 ; Repeat byte
#_0BAA0C: db $FD
#_0BAA0D: db $04 ; Raw block
#_0BAA0E: db $FE, $FE, $02, $6D, $26
#_0BAA13: db $85 ; Copy past
#_0BAA14: dw $0300
#_0BAA16: db $09 ; Raw block
#_0BAA17: db $FF, $77, $00, $61, $01, $78, $02, $0B
#_0BAA1F: db $09, $2F
#_0BAA21: db $85 ; Copy past
#_0BAA22: dw $0300
#_0BAA24: db $01 ; Raw block
#_0BAA25: db $E7, $25
#_0BAA27: db $63 ; Increment fill
#_0BAA28: db $03
#_0BAA29: db $00 ; Raw block
#_0BAA2A: db $08
#_0BAA2B: db $88 ; Copy past
#_0BAA2C: dw $0000
#_0BAA2E: db $01 ; Raw block
#_0BAA2F: db $E7, $25
#_0BAA31: db $64 ; Increment fill
#_0BAA32: db $07
#_0BAA33: db $83 ; Copy past
#_0BAA34: dw $1000
#_0BAA36: db $06 ; Raw block
#_0BAA37: db $0C, $0D, $37, $0E, $0F, $E7, $25
#_0BAA3E: db $64 ; Increment fill
#_0BAA3F: db $10
#_0BAA40: db $83 ; Copy past
#_0BAA41: dw $2000
#_0BAA43: db $06 ; Raw block
#_0BAA44: db $15, $16, $0A, $17, $18, $58, $25
#_0BAA4B: db $63 ; Increment fill
#_0BAA4C: db $19
#_0BAA4D: db $84 ; Copy past
#_0BAA4E: dw $2F00
#_0BAA50: db $62 ; Increment fill
#_0BAA51: db $2F
#_0BAA52: db $08 ; Raw block
#_0BAA53: db $2F, $30, $22, $3D, $1D, $1D, $1E, $95
#_0BAA5B: db $1F
#_0BAA5C: db $83 ; Copy past
#_0BAA5D: dw $1000
#_0BAA5F: db $00 ; Raw block
#_0BAA60: db $20
#_0BAA61: db $24 ; Repeat byte
#_0BAA62: db $21
#_0BAA63: db $24 ; Repeat byte
#_0BAA64: db $E1
#_0BAA65: db $05 ; Raw block
#_0BAA66: db $37, $0B, $09, $2F, $22, $23
#_0BAA6C: db $22 ; Repeat byte
#_0BAA6D: db $24
#_0BAA6E: db $03 ; Raw block
#_0BAA6F: db $25, $E9, $26, $26
#_0BAA73: db $22 ; Repeat byte
#_0BAA74: db $E9
#_0BAA75: db $04 ; Raw block
#_0BAA76: db $24, $06, $10, $2B, $27
#_0BAA7B: db $23 ; Repeat byte
#_0BAA7C: db $28
#_0BAA7D: db $04 ; Raw block
#_0BAA7E: db $29, $04, $2A, $2B, $66
#_0BAA83: db $62 ; Increment fill
#_0BAA84: db $2C
#_0BAA85: db $01 ; Raw block
#_0BAA86: db $02, $6D
#_0BAA88: db $62 ; Increment fill
#_0BAA89: db $2F
#_0BAA8A: db $22 ; Repeat byte
#_0BAA8B: db $1F
#_0BAA8C: db $09 ; Raw block
#_0BAA8D: db $03, $6D, $32, $33, $1D, $34, $35, $14
#_0BAA95: db $0B, $09
#_0BAA97: db $65 ; Increment fill
#_0BAA98: db $36
#_0BAA99: db $09 ; Raw block
#_0BAA9A: db $03, $6D, $3C, $3D, $1D, $3E, $3F, $08
#_0BAAA2: db $AC, $0E
#_0BAAA4: db $62 ; Increment fill
#_0BAAA5: db $40
#_0BAAA6: db $04 ; Raw block
#_0BAAA7: db $BD, $4B, $43, $03, $44
#_0BAAAC: db $23 ; Repeat byte
#_0BAAAD: db $1F
#_0BAAAE: db $0A ; Raw block
#_0BAAAF: db $70, $08, $4B, $4B, $45, $46, $42, $47
#_0BAAB7: db $D3, $62, $22
#_0BAABA: db $24 ; Repeat byte
#_0BAABB: db $48
#_0BAABC: db $66 ; Increment fill
#_0BAABD: db $49
#_0BAABE: db $00 ; Raw block
#_0BAABF: db $99
#_0BAAC0: db $65 ; Increment fill
#_0BAAC1: db $50
#_0BAAC2: db $62 ; Increment fill
#_0BAAC3: db $53
#_0BAAC4: db $01 ; Raw block
#_0BAAC5: db $53, $4C
#_0BAAC7: db $62 ; Increment fill
#_0BAAC8: db $56
#_0BAAC9: db $05 ; Raw block
#_0BAACA: db $39, $9F, $4B, $39, $9F, $4B
#_0BAAD0: db $85 ; Copy past
#_0BAAD1: dw $F400
#_0BAAD3: db $FF ; End of Map 20

;===================================================================================================

OverworldMap32_Screen21_High:
#_0BAAD4: db $07 ; Raw block
#_0BAAD5: db $0A, $0A, $0B, $0B, $0A, $0A, $0B, $0B
#_0BAADD: db $23 ; Repeat byte
#_0BAADE: db $07
#_0BAADF: db $05 ; Raw block
#_0BAAE0: db $0B, $08, $07, $05, $0B, $0B
#_0BAAE6: db $23 ; Repeat byte
#_0BAAE7: db $08
#_0BAAE8: db $26 ; Repeat byte
#_0BAAE9: db $0B
#_0BAAEA: db $03 ; Raw block
#_0BAAEB: db $08, $07, $05, $08
#_0BAAEF: db $24 ; Repeat byte
#_0BAAF0: db $0B
#_0BAAF1: db $01 ; Raw block
#_0BAAF2: db $08, $08
#_0BAAF4: db $24 ; Repeat byte
#_0BAAF5: db $0B
#_0BAAF6: db $83 ; Copy past
#_0BAAF7: dw $1D00
#_0BAAF9: db $24 ; Repeat byte
#_0BAAFA: db $0B
#_0BAAFB: db $01 ; Raw block
#_0BAAFC: db $08, $08
#_0BAAFE: db $24 ; Repeat byte
#_0BAAFF: db $0B
#_0BAB00: db $83 ; Copy past
#_0BAB01: dw $1D00
#_0BAB03: db $24 ; Repeat byte
#_0BAB04: db $0B
#_0BAB05: db $01 ; Raw block
#_0BAB06: db $08, $08
#_0BAB08: db $26 ; Repeat byte
#_0BAB09: db $0B
#_0BAB0A: db $01 ; Raw block
#_0BAB0B: db $05, $08
#_0BAB0D: db $25 ; Repeat byte
#_0BAB0E: db $0B
#_0BAB0F: db $01 ; Raw block
#_0BAB10: db $08, $0A
#_0BAB12: db $22 ; Repeat byte
#_0BAB13: db $00
#_0BAB14: db $04 ; Raw block
#_0BAB15: db $0B, $08, $03, $05, $08
#_0BAB1A: db $2B ; Repeat byte
#_0BAB1B: db $0B
#_0BAB1C: db $83 ; Copy past
#_0BAB1D: dw $5D00
#_0BAB1F: db $2B ; Repeat byte
#_0BAB20: db $0B
#_0BAB21: db $03 ; Raw block
#_0BAB22: db $08, $07, $0B, $08
#_0BAB26: db $25 ; Repeat byte
#_0BAB27: db $0B
#_0BAB28: db $0B ; Raw block
#_0BAB29: db $07, $07, $0B, $0B, $00, $0B, $0B, $02
#_0BAB31: db $0B, $08, $0B, $01
#_0BAB35: db $22 ; Repeat byte
#_0BAB36: db $0B
#_0BAB37: db $00 ; Raw block
#_0BAB38: db $09
#_0BAB39: db $23 ; Repeat byte
#_0BAB3A: db $0B
#_0BAB3B: db $02 ; Raw block
#_0BAB3C: db $00, $0B, $0B
#_0BAB3F: db $22 ; Repeat byte
#_0BAB40: db $08
#_0BAB41: db $01 ; Raw block
#_0BAB42: db $0B, $01
#_0BAB44: db $22 ; Repeat byte
#_0BAB45: db $0B
#_0BAB46: db $01 ; Raw block
#_0BAB47: db $09, $0B
#_0BAB49: db $85 ; Copy past
#_0BAB4A: dw $8F00
#_0BAB4C: db $22 ; Repeat byte
#_0BAB4D: db $08
#_0BAB4E: db $01 ; Raw block
#_0BAB4F: db $0B, $01
#_0BAB51: db $22 ; Repeat byte
#_0BAB52: db $0B
#_0BAB53: db $01 ; Raw block
#_0BAB54: db $09, $0B
#_0BAB56: db $46 ; Repeat word
#_0BAB57: dw $080B
#_0BAB59: db $83 ; Copy past
#_0BAB5A: dw $8F00
#_0BAB5C: db $25 ; Repeat byte
#_0BAB5D: db $0B
#_0BAB5E: db $00 ; Raw block
#_0BAB5F: db $08
#_0BAB60: db $83 ; Copy past
#_0BAB61: dw $2500
#_0BAB63: db $01 ; Raw block
#_0BAB64: db $08, $08
#_0BAB66: db $22 ; Repeat byte
#_0BAB67: db $0B
#_0BAB68: db $23 ; Repeat byte
#_0BAB69: db $07
#_0BAB6A: db $27 ; Repeat byte
#_0BAB6B: db $0B
#_0BAB6C: db $00 ; Raw block
#_0BAB6D: db $08
#_0BAB6E: db $2D ; Repeat byte
#_0BAB6F: db $0B
#_0BAB70: db $07 ; Raw block
#_0BAB71: db $08, $0B, $04, $08, $08, $04, $08, $08
#_0BAB79: db $83 ; Copy past
#_0BAB7A: dw $F000
#_0BAB7C: db $01 ; Raw block
#_0BAB7D: db $04, $02
#_0BAB7F: db $83 ; Copy past
#_0BAB80: dw $EF00
#_0BAB82: db $FF ; End of Map 21

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen21_Low:
#_0BAB83: db $07 ; Raw block
#_0BAB84: db $FE, $FE, $59, $5A, $FE, $FE, $59, $5B
#_0BAB8C: db $23 ; Repeat byte
#_0BAB8D: db $E3
#_0BAB8E: db $05 ; Raw block
#_0BAB8F: db $5C, $93, $5B, $C5, $5D, $5E
#_0BAB95: db $23 ; Repeat byte
#_0BAB96: db $78
#_0BAB97: db $02 ; Raw block
#_0BAB98: db $5F, $60, $61
#_0BAB9B: db $22 ; Repeat byte
#_0BAB9C: db $62
#_0BAB9D: db $04 ; Raw block
#_0BAB9E: db $63, $93, $5B, $C5, $13
#_0BABA3: db $64 ; Increment fill
#_0BABA4: db $64
#_0BABA5: db $01 ; Raw block
#_0BABA6: db $92, $22
#_0BABA8: db $64 ; Increment fill
#_0BABA9: db $69
#_0BABAA: db $83 ; Copy past
#_0BABAB: dw $1D00
#_0BABAD: db $64 ; Increment fill
#_0BABAE: db $6E
#_0BABAF: db $01 ; Raw block
#_0BABB0: db $92, $22
#_0BABB2: db $63 ; Increment fill
#_0BABB3: db $73
#_0BABB4: db $85 ; Copy past
#_0BABB5: dw $2C00
#_0BABB7: db $63 ; Increment fill
#_0BABB8: db $77
#_0BABB9: db $01 ; Raw block
#_0BABBA: db $92, $22
#_0BABBC: db $63 ; Increment fill
#_0BABBD: db $7B
#_0BABBE: db $0C ; Raw block
#_0BABBF: db $6D, $7F, $80, $C5, $13, $81, $82, $3E
#_0BABC7: db $3F, $83, $84, $22, $FB
#_0BABCC: db $22 ; Repeat byte
#_0BABCD: db $1F
#_0BABCE: db $09 ; Raw block
#_0BABCF: db $85, $87, $32, $C5, $13, $86, $18, $87
#_0BABD7: db $88, $15
#_0BABD9: db $62 ; Increment fill
#_0BABDA: db $89
#_0BABDB: db $03 ; Raw block
#_0BABDC: db $87, $88, $8C, $8D
#_0BABE0: db $83 ; Copy past
#_0BABE1: dw $5D00
#_0BABE3: db $04 ; Raw block
#_0BABE4: db $8E, $21, $8F, $90, $20
#_0BABE9: db $22 ; Repeat byte
#_0BABEA: db $21
#_0BABEB: db $07 ; Raw block
#_0BABEC: db $91, $92, $90, $93, $87, $3A, $94, $13
#_0BABF4: db $65 ; Increment fill
#_0BABF5: db $95
#_0BABF6: db $0B ; Raw block
#_0BABF7: db $E9, $E9, $9B, $9C, $B6, $9D, $9E, $30
#_0BABFF: db $9F, $13, $A0, $37
#_0BAC03: db $62 ; Increment fill
#_0BAC04: db $A1
#_0BAC05: db $01 ; Raw block
#_0BAC06: db $33, $A4
#_0BAC08: db $62 ; Increment fill
#_0BAC09: db $A4
#_0BAC0A: db $07 ; Raw block
#_0BAC0B: db $09, $A7, $A8, $0A, $0A, $13, $A9, $37
#_0BAC13: db $62 ; Increment fill
#_0BAC14: db $07
#_0BAC15: db $1C ; Raw block
#_0BAC16: db $33, $AA, $AA, $92, $AB, $0E, $AC, $AD
#_0BAC1E: db $61, $61, $13, $A9, $37, $10, $AE, $12
#_0BAC26: db $33, $A4, $A4, $92, $A8, $0A, $AF, $87
#_0BAC2E: db $B0, $B1, $13, $A9, $37
#_0BAC33: db $63 ; Increment fill
#_0BAC34: db $19
#_0BAC35: db $08 ; Raw block
#_0BAC36: db $AA, $AA, $85, $AD, $61, $61, $B2, $BD
#_0BAC3E: db $4B
#_0BAC3F: db $62 ; Increment fill
#_0BAC40: db $B3
#_0BAC41: db $23 ; Repeat byte
#_0BAC42: db $FA
#_0BAC43: db $00 ; Raw block
#_0BAC44: db $B5
#_0BAC45: db $65 ; Increment fill
#_0BAC46: db $B5
#_0BAC47: db $03 ; Raw block
#_0BAC48: db $47, $D3, $54, $55
#_0BAC4C: db $62 ; Increment fill
#_0BAC4D: db $53
#_0BAC4E: db $00 ; Raw block
#_0BAC4F: db $53
#_0BAC50: db $83 ; Copy past
#_0BAC51: dw $E000
#_0BAC53: db $63 ; Increment fill
#_0BAC54: db $BB
#_0BAC55: db $07 ; Raw block
#_0BAC56: db $99, $50, $39, $9F, $4B, $39, $9F, $4B
#_0BAC5E: db $83 ; Copy past
#_0BAC5F: dw $F000
#_0BAC61: db $05 ; Raw block
#_0BAC62: db $3A, $4F, $BF, $39, $9F, $4B
#_0BAC68: db $FF ; End of Map 21

;===================================================================================================

OverworldMap32_Screen22_High:
#_0BAC69: db $01 ; Raw block
#_0BAC6A: db $0B, $04
#_0BAC6C: db $2A ; Repeat byte
#_0BAC6D: db $00
#_0BAC6E: db $04 ; Raw block
#_0BAC6F: db $0B, $05, $06, $0B, $06
#_0BAC74: db $22 ; Repeat byte
#_0BAC75: db $00
#_0BAC76: db $07 ; Raw block
#_0BAC77: db $0B, $01, $06, $06, $01, $00, $00, $01
#_0BAC7F: db $83 ; Copy past
#_0BAC80: dw $0D00
#_0BAC82: db $05 ; Raw block
#_0BAC83: db $01, $01, $00, $01, $0B, $0B
#_0BAC89: db $25 ; Repeat byte
#_0BAC8A: db $01
#_0BAC8B: db $07 ; Raw block
#_0BAC8C: db $05, $05, $07, $0B, $08, $01, $00, $01
#_0BAC94: db $23 ; Repeat byte
#_0BAC95: db $0B
#_0BAC96: db $0A ; Raw block
#_0BAC97: db $00, $00, $06, $01, $05, $05, $06, $04
#_0BAC9F: db $03, $0B, $07
#_0BACA2: db $24 ; Repeat byte
#_0BACA3: db $0B
#_0BACA4: db $01 ; Raw block
#_0BACA5: db $00, $03
#_0BACA7: db $22 ; Repeat byte
#_0BACA8: db $02
#_0BACA9: db $22 ; Repeat byte
#_0BACAA: db $05
#_0BACAB: db $26 ; Repeat byte
#_0BACAC: db $0B
#_0BACAD: db $07 ; Raw block
#_0BACAE: db $08, $0B, $01, $02, $0B, $01, $05, $07
#_0BACB6: db $22 ; Repeat byte
#_0BACB7: db $0B
#_0BACB8: db $10 ; Raw block
#_0BACB9: db $00, $0B, $03, $08, $0B, $0B, $04, $01
#_0BACC1: db $02, $05, $07, $07, $0B, $0B, $09, $01
#_0BACC9: db $01
#_0BACCA: db $23 ; Repeat byte
#_0BACCB: db $0B
#_0BACCC: db $09 ; Raw block
#_0BACCD: db $01, $0B, $02, $00, $0B, $08, $07, $07
#_0BACD5: db $05, $01
#_0BACD7: db $25 ; Repeat byte
#_0BACD8: db $0B
#_0BACD9: db $08 ; Raw block
#_0BACDA: db $00, $0B, $03, $00, $00, $02, $08, $07
#_0BACE2: db $08
#_0BACE3: db $26 ; Repeat byte
#_0BACE4: db $0B
#_0BACE5: db $01 ; Raw block
#_0BACE6: db $01, $07
#_0BACE8: db $22 ; Repeat byte
#_0BACE9: db $00
#_0BACEA: db $05 ; Raw block
#_0BACEB: db $0B, $03, $06, $08, $0B, $0B
#_0BACF1: db $22 ; Repeat byte
#_0BACF2: db $08
#_0BACF3: db $00 ; Raw block
#_0BACF4: db $05
#_0BACF5: db $22 ; Repeat byte
#_0BACF6: db $0B
#_0BACF7: db $04 ; Raw block
#_0BACF8: db $00, $06, $01, $0B, $07
#_0BACFD: db $22 ; Repeat byte
#_0BACFE: db $0B
#_0BACFF: db $0F ; Raw block
#_0BAD00: db $08, $0B, $00, $00, $07, $00, $0B, $06
#_0BAD08: db $08, $08, $04, $0B, $0B, $0C, $04, $08
#_0BAD10: db $83 ; Copy past
#_0BAD11: dw $B200
#_0BAD13: db $0B ; Raw block
#_0BAD14: db $09, $0B, $0C, $03, $08, $08, $04, $08
#_0BAD1C: db $08, $04, $04, $08
#_0BAD20: db $83 ; Copy past
#_0BAD21: dw $3100
#_0BAD23: db $03 ; Raw block
#_0BAD24: db $01, $06, $00, $01
#_0BAD28: db $88 ; Copy past
#_0BAD29: dw $CA00
#_0BAD2B: db $28 ; Repeat byte
#_0BAD2C: db $0C
#_0BAD2D: db $86 ; Copy past
#_0BAD2E: dw $CC00
#_0BAD30: db $83 ; Copy past
#_0BAD31: dw $CC00
#_0BAD33: db $88 ; Copy past
#_0BAD34: dw $F100
#_0BAD36: db $FF ; End of Map 22

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen22_Low:
#_0BAD37: db $02 ; Raw block
#_0BAD38: db $C0, $1E, $0B
#_0BAD3B: db $62 ; Increment fill
#_0BAD3C: db $09
#_0BAD3D: db $01 ; Raw block
#_0BAD3E: db $09, $0A
#_0BAD40: db $84 ; Copy past
#_0BAD41: dw $0200
#_0BAD43: db $04 ; Raw block
#_0BAD44: db $C1, $8A, $09, $C0, $2C
#_0BAD49: db $62 ; Increment fill
#_0BAD4A: db $06
#_0BAD4B: db $1F ; Raw block
#_0BAD4C: db $C2, $0E, $5E, $AC, $31, $08, $06, $10
#_0BAD54: db $C3, $8A, $09, $C0, $19, $1A, $00, $04
#_0BAD5C: db $C4, $C5, $2B, $2C, $39, $3A, $1B, $1C
#_0BAD64: db $6F, $8A, $5C, $C6, $53, $27, $09, $07
#_0BAD6C: db $62 ; Increment fill
#_0BAD6D: db $C7
#_0BAD6E: db $0B ; Raw block
#_0BAD6F: db $38, $91, $8E, $33, $29, $16, $8A, $09
#_0BAD77: db $8E, $B2, $CA, $ED
#_0BAD7B: db $64 ; Increment fill
#_0BAD7C: db $CB
#_0BAD7D: db $07 ; Raw block
#_0BAD7E: db $1F, $FF, $A1, $07, $AA, $92, $C5, $A2
#_0BAD86: db $66 ; Increment fill
#_0BAD87: db $D0
#_0BAD88: db $07 ; Raw block
#_0BAD89: db $66, $D7, $AC, $AA, $D8, $ED, $99, $1F
#_0BAD91: db $62 ; Increment fill
#_0BAD92: db $D9
#_0BAD93: db $10 ; Raw block
#_0BAD94: db $09, $DC, $B1, $01, $DD, $DE, $C6, $B4
#_0BAD9C: db $7A, $6F, $1E, $1F, $DF, $E0, $1B, $30
#_0BADA4: db $0E
#_0BADA5: db $63 ; Increment fill
#_0BADA6: db $E1
#_0BADA7: db $0B ; Raw block
#_0BADA8: db $20, $E5, $04, $1D, $E6, $6B, $43, $20
#_0BADB0: db $6E, $CC, $E7, $E8
#_0BADB4: db $63 ; Increment fill
#_0BADB5: db $E8
#_0BADB6: db $08 ; Raw block
#_0BADB7: db $1F, $EC, $5F, $1D, $A5, $3E, $6F, $54
#_0BADBF: db $0A
#_0BADC0: db $62 ; Increment fill
#_0BADC1: db $ED
#_0BADC2: db $63 ; Increment fill
#_0BADC3: db $EF
#_0BADC4: db $0E ; Raw block
#_0BADC5: db $1E, $C5, $1D, $1D, $FB, $F3, $32, $09
#_0BADCD: db $61, $F4, $F5, $97, $66, $66, $04
#_0BADD4: db $62 ; Increment fill
#_0BADD5: db $F6
#_0BADD6: db $E0, $38 ; EXT Raw block
#_0BADD8: db $1D, $66, $1E, $F9, $3A, $94, $FA, $FB
#_0BADE0: db $B9, $FC, $1F, $1F, $6D, $1F, $FD, $66
#_0BADE8: db $B8, $B9, $2E, $FE, $FF, $00, $39, $9F
#_0BADF0: db $4B, $43, $1F, $1F, $B2, $F6, $01, $FF
#_0BADF8: db $BD, $4B, $39, $9F, $4B, $39, $42, $D2
#_0BAE00: db $D3, $62, $1F, $61, $62, $70, $99, $1E
#_0BAE08: db $4D, $4E, $42, $D2, $D3, $42, $4A, $99
#_0BAE10: db $44
#_0BAE11: db $62 ; Increment fill
#_0BAE12: db $02
#_0BAE13: db $00 ; Raw block
#_0BAE14: db $02
#_0BAE15: db $62 ; Increment fill
#_0BAE16: db $05
#_0BAE17: db $05 ; Raw block
#_0BAE18: db $05, $04, $4A, $99, $44, $4A
#_0BAE1E: db $83 ; Copy past
#_0BAE1F: dw $CC00
#_0BAE21: db $00 ; Raw block
#_0BAE22: db $9F
#_0BAE23: db $84 ; Copy past
#_0BAE24: dw $CB00
#_0BAE26: db $85 ; Copy past
#_0BAE27: dw $F100
#_0BAE29: db $FF ; End of Map 22

;===================================================================================================

OverworldMap32_Screen23_High:
#_0BAE2A: db $05 ; Raw block
#_0BAE2B: db $07, $07, $09, $02, $0B, $00
#_0BAE31: db $22 ; Repeat byte
#_0BAE32: db $09
#_0BAE33: db $00 ; Raw block
#_0BAE34: db $06
#_0BAE35: db $43 ; Repeat word
#_0BAE36: dw $000C
#_0BAE38: db $09 ; Raw block
#_0BAE39: db $09, $09, $07, $07, $09, $0B, $00, $0C
#_0BAE41: db $0C, $09
#_0BAE43: db $26 ; Repeat byte
#_0BAE44: db $0C
#_0BAE45: db $06 ; Raw block
#_0BAE46: db $09, $05, $07, $09, $03, $06, $09
#_0BAE4D: db $29 ; Repeat byte
#_0BAE4E: db $0C
#_0BAE4F: db $00 ; Raw block
#_0BAE50: db $08
#_0BAE51: db $83 ; Copy past
#_0BAE52: dw $1100
#_0BAE54: db $2A ; Repeat byte
#_0BAE55: db $0C
#_0BAE56: db $06 ; Raw block
#_0BAE57: db $05, $07, $09, $06, $06, $0C, $0C
#_0BAE5E: db $24 ; Repeat byte
#_0BAE5F: db $08
#_0BAE60: db $24 ; Repeat byte
#_0BAE61: db $0C
#_0BAE62: db $05 ; Raw block
#_0BAE63: db $07, $09, $08, $06, $0C, $07
#_0BAE69: db $24 ; Repeat byte
#_0BAE6A: db $06
#_0BAE6B: db $00 ; Raw block
#_0BAE6C: db $08
#_0BAE6D: db $84 ; Copy past
#_0BAE6E: dw $1D00
#_0BAE70: db $05 ; Raw block
#_0BAE71: db $0C, $0C, $01, $06, $0C, $0C
#_0BAE77: db $23 ; Repeat byte
#_0BAE78: db $06
#_0BAE79: db $23 ; Repeat byte
#_0BAE7A: db $0C
#_0BAE7B: db $01 ; Raw block
#_0BAE7C: db $05, $05
#_0BAE7E: db $2D ; Repeat byte
#_0BAE7F: db $0C
#_0BAE80: db $03 ; Raw block
#_0BAE81: db $07, $05, $05, $07
#_0BAE85: db $29 ; Repeat byte
#_0BAE86: db $02
#_0BAE87: db $01 ; Raw block
#_0BAE88: db $0C, $0C
#_0BAE8A: db $22 ; Repeat byte
#_0BAE8B: db $05
#_0BAE8C: db $03 ; Raw block
#_0BAE8D: db $07, $0C, $07, $09
#_0BAE91: db $22 ; Repeat byte
#_0BAE92: db $07
#_0BAE93: db $02 ; Raw block
#_0BAE94: db $09, $07, $07
#_0BAE97: db $22 ; Repeat byte
#_0BAE98: db $0C
#_0BAE99: db $03 ; Raw block
#_0BAE9A: db $08, $07, $07, $09
#_0BAE9E: db $22 ; Repeat byte
#_0BAE9F: db $07
#_0BAEA0: db $01 ; Raw block
#_0BAEA1: db $0C, $07
#_0BAEA3: db $84 ; Copy past
#_0BAEA4: dw $A000
#_0BAEA6: db $22 ; Repeat byte
#_0BAEA7: db $0C
#_0BAEA8: db $2C ; Repeat byte
#_0BAEA9: db $07
#_0BAEAA: db $02 ; Raw block
#_0BAEAB: db $0C, $0C, $04
#_0BAEAE: db $2D ; Repeat byte
#_0BAEAF: db $0C
#_0BAEB0: db $03 ; Raw block
#_0BAEB1: db $02, $04, $04, $01
#_0BAEB5: db $22 ; Repeat byte
#_0BAEB6: db $06
#_0BAEB7: db $29 ; Repeat byte
#_0BAEB8: db $0C
#_0BAEB9: db $0E ; Raw block
#_0BAEBA: db $08, $0C, $0C, $04, $00, $0C, $08, $08
#_0BAEC2: db $04, $08, $08, $04, $08, $08, $04
#_0BAEC9: db $22 ; Repeat byte
#_0BAECA: db $08
#_0BAECB: db $04 ; Raw block
#_0BAECC: db $04, $04, $07, $01, $0B
#_0BAED1: db $88 ; Copy past
#_0BAED2: dw $E700
#_0BAED4: db $FF ; End of Map 23

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen23_Low:
#_0BAED5: db $18 ; Raw block
#_0BAED6: db $36, $6E, $37, $DE, $F9, $AA, $0D, $05
#_0BAEDE: db $0E, $66, $08, $1D, $09, $1F, $27, $28
#_0BAEE6: db $19, $6E, $37, $F3, $1D, $0A, $0B, $05
#_0BAEEE: db $0C
#_0BAEEF: db $24 ; Repeat byte
#_0BAEF0: db $0D
#_0BAEF1: db $09 ; Raw block
#_0BAEF2: db $0E, $28, $E0, $6E, $37, $E2, $66, $31
#_0BAEFA: db $0F, $10
#_0BAEFC: db $24 ; Repeat byte
#_0BAEFD: db $11
#_0BAEFE: db $62 ; Increment fill
#_0BAEFF: db $12
#_0BAF00: db $06 ; Raw block
#_0BAF01: db $AA, $6E, $37, $F3, $FB, $15, $16
#_0BAF08: db $24 ; Repeat byte
#_0BAF09: db $17
#_0BAF0A: db $63 ; Increment fill
#_0BAF0B: db $18
#_0BAF0C: db $06 ; Raw block
#_0BAF0D: db $E1, $6E, $37, $66, $66, $1C, $1D
#_0BAF14: db $23 ; Repeat byte
#_0BAF15: db $E3
#_0BAF16: db $00 ; Raw block
#_0BAF17: db $E7
#_0BAF18: db $64 ; Increment fill
#_0BAF19: db $1E
#_0BAF1A: db $05 ; Raw block
#_0BAF1B: db $6E, $37, $2D, $70, $23, $65
#_0BAF21: db $24 ; Repeat byte
#_0BAF22: db $7C
#_0BAF23: db $0F ; Raw block
#_0BAF24: db $F1, $24, $25, $28, $E1, $37, $26, $27
#_0BAF2C: db $1E, $66, $28, $29, $B3, $90, $7C, $83
#_0BAF34: db $63 ; Increment fill
#_0BAF35: db $2A
#_0BAF36: db $03 ; Raw block
#_0BAF37: db $E1, $AB, $2E, $2F
#_0BAF3B: db $29 ; Repeat byte
#_0BAF3C: db $30
#_0BAF3D: db $05 ; Raw block
#_0BAF3E: db $31, $2D, $89, $E1, $AB, $3F
#_0BAF44: db $29 ; Repeat byte
#_0BAF45: db $FB
#_0BAF46: db $08 ; Raw block
#_0BAF47: db $32, $2D, $E1, $E0, $E1, $44, $33, $79
#_0BAF4F: db $2F
#_0BAF50: db $22 ; Repeat byte
#_0BAF51: db $79
#_0BAF52: db $09 ; Raw block
#_0BAF53: db $2F, $79, $79, $33, $32, $2D, $D8, $22
#_0BAF5B: db $22, $48
#_0BAF5D: db $22 ; Repeat byte
#_0BAF5E: db $22
#_0BAF5F: db $01 ; Raw block
#_0BAF60: db $34, $22
#_0BAF62: db $84 ; Copy past
#_0BAF63: dw $A000
#_0BAF65: db $02 ; Raw block
#_0BAF66: db $32, $2D, $35
#_0BAF69: db $2C ; Repeat byte
#_0BAF6A: db $27
#_0BAF6B: db $02 ; Raw block
#_0BAF6C: db $36, $2D, $3A
#_0BAF6F: db $62 ; Increment fill
#_0BAF70: db $37
#_0BAF71: db $00 ; Raw block
#_0BAF72: db $39
#_0BAF73: db $28 ; Repeat byte
#_0BAF74: db $3A
#_0BAF75: db $00 ; Raw block
#_0BAF76: db $3B
#_0BAF77: db $62 ; Increment fill
#_0BAF78: db $42
#_0BAF79: db $03 ; Raw block
#_0BAF7A: db $62, $39, $B3, $90
#_0BAF7E: db $63 ; Increment fill
#_0BAF7F: db $3C
#_0BAF80: db $62 ; Increment fill
#_0BAF81: db $3D
#_0BAF82: db $E0, $22 ; EXT Raw block
#_0BAF84: db $3D, $40, $41, $99, $42, $43, $2F, $1D
#_0BAF8C: db $28, $BD, $4B, $39, $9F, $4B, $39, $9F
#_0BAF94: db $4B, $39, $9F, $9F, $4B, $39, $3A, $9E
#_0BAF9C: db $42, $47, $D3, $42, $D2, $D3, $42, $D2
#_0BAFA4: db $D3, $42, $D2
#_0BAFA7: db $FF ; End of Map 23

;===================================================================================================

OverworldMap32_Screen24_High:
#_0BAFA8: db $0F ; Raw block
#_0BAFA9: db $09, $09, $0C, $00, $00, $06, $01, $09
#_0BAFB1: db $08, $09, $09, $0C, $0C, $07, $06, $07
#_0BAFB9: db $27 ; Repeat byte
#_0BAFBA: db $0C
#_0BAFBB: db $06 ; Raw block
#_0BAFBC: db $08, $0C, $0C, $09, $09, $07, $05
#_0BAFC3: db $2A ; Repeat byte
#_0BAFC4: db $0C
#_0BAFC5: db $00 ; Raw block
#_0BAFC6: db $09
#_0BAFC7: db $22 ; Repeat byte
#_0BAFC8: db $0C
#_0BAFC9: db $04 ; Raw block
#_0BAFCA: db $09, $08, $0C, $0C, $08
#_0BAFCF: db $22 ; Repeat byte
#_0BAFD0: db $0C
#_0BAFD1: db $00 ; Raw block
#_0BAFD2: db $08
#_0BAFD3: db $22 ; Repeat byte
#_0BAFD4: db $0C
#_0BAFD5: db $02 ; Raw block
#_0BAFD6: db $09, $0C, $05
#_0BAFD9: db $24 ; Repeat byte
#_0BAFDA: db $0C
#_0BAFDB: db $00 ; Raw block
#_0BAFDC: db $09
#_0BAFDD: db $83 ; Copy past
#_0BAFDE: dw $2D00
#_0BAFE0: db $08 ; Raw block
#_0BAFE1: db $09, $08, $08, $09, $0C, $06, $0C, $0C
#_0BAFE9: db $01
#_0BAFEA: db $24 ; Repeat byte
#_0BAFEB: db $0C
#_0BAFEC: db $0B ; Raw block
#_0BAFED: db $01, $06, $04, $01, $06, $03, $0C, $02
#_0BAFF5: db $0C, $0C, $01, $09
#_0BAFF9: db $2C ; Repeat byte
#_0BAFFA: db $0C
#_0BAFFB: db $02 ; Raw block
#_0BAFFC: db $01, $01, $09
#_0BAFFF: db $2C ; Repeat byte
#_0BB000: db $0C
#_0BB001: db $03 ; Raw block
#_0BB002: db $06, $06, $09, $0C
#_0BB006: db $29 ; Repeat byte
#_0BB007: db $02
#_0BB008: db $00 ; Raw block
#_0BB009: db $07
#_0BB00A: db $22 ; Repeat byte
#_0BB00B: db $05
#_0BB00C: db $01 ; Raw block
#_0BB00D: db $09, $0C
#_0BB00F: db $43 ; Repeat word
#_0BB010: dw $070C
#_0BB012: db $01 ; Raw block
#_0BB013: db $07, $09
#_0BB015: db $24 ; Repeat byte
#_0BB016: db $07
#_0BB017: db $00 ; Raw block
#_0BB018: db $05
#_0BB019: db $22 ; Repeat byte
#_0BB01A: db $09
#_0BB01B: db $02 ; Raw block
#_0BB01C: db $0C, $08, $07
#_0BB01F: db $62 ; Increment fill
#_0BB020: db $07
#_0BB021: db $00 ; Raw block
#_0BB022: db $09
#_0BB023: db $24 ; Repeat byte
#_0BB024: db $07
#_0BB025: db $00 ; Raw block
#_0BB026: db $05
#_0BB027: db $22 ; Repeat byte
#_0BB028: db $09
#_0BB029: db $00 ; Raw block
#_0BB02A: db $0C
#_0BB02B: db $27 ; Repeat byte
#_0BB02C: db $07
#_0BB02D: db $06 ; Raw block
#_0BB02E: db $0C, $0C, $06, $07, $0C, $08, $06
#_0BB035: db $28 ; Repeat byte
#_0BB036: db $0C
#_0BB037: db $05 ; Raw block
#_0BB038: db $04, $01, $0C, $0C, $07, $05
#_0BB03E: db $24 ; Repeat byte
#_0BB03F: db $0C
#_0BB040: db $43 ; Repeat word
#_0BB041: dw $0C02
#_0BB043: db $02 ; Raw block
#_0BB044: db $0C, $06, $06
#_0BB047: db $22 ; Repeat byte
#_0BB048: db $0C
#_0BB049: db $08 ; Raw block
#_0BB04A: db $07, $08, $04, $08, $08, $0B, $06, $07
#_0BB052: db $01
#_0BB053: db $22 ; Repeat byte
#_0BB054: db $0C
#_0BB055: db $04 ; Raw block
#_0BB056: db $06, $06, $01, $03, $05
#_0BB05B: db $83 ; Copy past
#_0BB05C: dw $E000
#_0BB05E: db $0B ; Raw block
#_0BB05F: db $01, $00, $00, $06, $00, $02, $0C, $05
#_0BB067: db $00, $00, $03, $05
#_0BB06B: db $FF ; End of Map 24

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen24_Low:
#_0BB06C: db $11 ; Raw block
#_0BB06D: db $91, $92, $44, $1D, $1D, $B3, $2D, $31
#_0BB075: db $EE, $32, $33, $45, $46, $5B, $09, $3E
#_0BB07D: db $47, $48
#_0BB07F: db $24 ; Repeat byte
#_0BB080: db $0D
#_0BB081: db $07 ; Raw block
#_0BB082: db $49, $EE, $4A, $4B, $94, $6F, $5B, $C5
#_0BB08A: db $63 ; Increment fill
#_0BB08B: db $4C
#_0BB08C: db $24 ; Repeat byte
#_0BB08D: db $11
#_0BB08E: db $14 ; Raw block
#_0BB08F: db $50, $51, $0E, $45, $46, $52, $46, $D8
#_0BB097: db $1B, $53, $EE, $54, $17, $17, $FF, $17
#_0BB09F: db $17, $55, $63, $45, $0D
#_0BB0A4: db $64 ; Increment fill
#_0BB0A5: db $56
#_0BB0A6: db $0D ; Raw block
#_0BB0A7: db $10, $5B, $4D, $E7, $5C, $4D, $E3, $E7
#_0BB0AF: db $6C, $45, $66, $5D, $5E, $8B
#_0BB0B5: db $64 ; Increment fill
#_0BB0B6: db $5F
#_0BB0B7: db $0B ; Raw block
#_0BB0B8: db $4C, $3A, $20, $4C, $3A, $D5, $64, $DE
#_0BB0C0: db $65, $66, $AB, $91
#_0BB0C4: db $66 ; Increment fill
#_0BB0C5: db $67
#_0BB0C6: db $02 ; Raw block
#_0BB0C7: db $6B, $6C, $64
#_0BB0CA: db $62 ; Increment fill
#_0BB0CB: db $6E
#_0BB0CC: db $03 ; Raw block
#_0BB0CD: db $B3, $B3, $91, $71
#_0BB0D1: db $29 ; Repeat byte
#_0BB0D2: db $72
#_0BB0D3: db $05 ; Raw block
#_0BB0D4: db $73, $74, $A0, $A0, $91, $75
#_0BB0DA: db $29 ; Repeat byte
#_0BB0DB: db $FB
#_0BB0DC: db $0B ; Raw block
#_0BB0DD: db $1B, $9F, $E1, $E1, $91, $75, $76, $79
#_0BB0E5: db $33, $79, $79, $2F
#_0BB0E9: db $23 ; Repeat byte
#_0BB0EA: db $79
#_0BB0EB: db $0B ; Raw block
#_0BB0EC: db $31, $E1, $36, $36, $91, $75, $D8, $22
#_0BB0F4: db $22, $D8, $47, $47
#_0BB0F8: db $23 ; Repeat byte
#_0BB0F9: db $22
#_0BB0FA: db $00 ; Raw block
#_0BB0FB: db $3D
#_0BB0FC: db $83 ; Copy past
#_0BB0FD: dw $9D00
#_0BB0FF: db $00 ; Raw block
#_0BB100: db $77
#_0BB101: db $27 ; Repeat byte
#_0BB102: db $27
#_0BB103: db $08 ; Raw block
#_0BB104: db $78, $79, $1E, $43, $4C, $AA, $9B, $7A
#_0BB10C: db $7B
#_0BB10D: db $25 ; Repeat byte
#_0BB10E: db $7C
#_0BB10F: db $06 ; Raw block
#_0BB110: db $7D, $1E, $74, $7E, $7F, $43, $E1
#_0BB117: db $62 ; Increment fill
#_0BB118: db $80
#_0BB119: db $01 ; Raw block
#_0BB11A: db $80, $83
#_0BB11C: db $43 ; Repeat word
#_0BB11D: dw $845B
#_0BB11F: db $02 ; Raw block
#_0BB120: db $85, $2F, $30
#_0BB123: db $62 ; Increment fill
#_0BB124: db $86
#_0BB125: db $08 ; Raw block
#_0BB126: db $54, $4B, $39, $9F, $4B, $43, $3E, $C5
#_0BB12E: db $1E
#_0BB12F: db $62 ; Increment fill
#_0BB130: db $89
#_0BB131: db $14 ; Raw block
#_0BB132: db $8A, $66, $1E, $32, $C5, $D3, $42, $D2
#_0BB13A: db $D3, $62, $1D, $1D, $66, $AA, $5E, $8C
#_0BB142: db $4F, $1D, $FB, $32, $C5
#_0BB147: db $FF ; End of Map 24

;===================================================================================================

OverworldMap32_Screen26_High:
#_0BB148: db $00 ; Raw block
#_0BB149: db $01
#_0BB14A: db $26 ; Repeat byte
#_0BB14B: db $0A
#_0BB14C: db $0B ; Raw block
#_0BB14D: db $0C, $06, $0C, $0C, $01, $01, $0C, $0C
#_0BB155: db $01, $0A, $05, $0C
#_0BB159: db $44 ; Repeat word
#_0BB15A: dw $0A0C
#_0BB15C: db $04 ; Raw block
#_0BB15D: db $0C, $06, $0C, $0A, $0A
#_0BB162: db $84 ; Copy past
#_0BB163: dw $0E00
#_0BB165: db $26 ; Repeat byte
#_0BB166: db $0C
#_0BB167: db $00 ; Raw block
#_0BB168: db $0A
#_0BB169: db $83 ; Copy past
#_0BB16A: dw $1300
#_0BB16C: db $00 ; Raw block
#_0BB16D: db $05
#_0BB16E: db $83 ; Copy past
#_0BB16F: dw $1000
#_0BB171: db $03 ; Raw block
#_0BB172: db $05, $05, $0C, $05
#_0BB176: db $43 ; Repeat word
#_0BB177: dw $0C05
#_0BB179: db $04 ; Raw block
#_0BB17A: db $0A, $0A, $0C, $0A, $01
#_0BB17F: db $83 ; Copy past
#_0BB180: dw $3C00
#_0BB182: db $22 ; Repeat byte
#_0BB183: db $0C
#_0BB184: db $44 ; Repeat word
#_0BB185: dw $0C0A
#_0BB187: db $85 ; Copy past
#_0BB188: dw $2D00
#_0BB18A: db $26 ; Repeat byte
#_0BB18B: db $0C
#_0BB18C: db $01 ; Raw block
#_0BB18D: db $05, $0C
#_0BB18F: db $22 ; Repeat byte
#_0BB190: db $0A
#_0BB191: db $01 ; Raw block
#_0BB192: db $05, $01
#_0BB194: db $2A ; Repeat byte
#_0BB195: db $0C
#_0BB196: db $22 ; Repeat byte
#_0BB197: db $0A
#_0BB198: db $02 ; Raw block
#_0BB199: db $06, $01, $0A
#_0BB19C: db $84 ; Copy past
#_0BB19D: dw $0C00
#_0BB19F: db $01 ; Raw block
#_0BB1A0: db $0C, $0A
#_0BB1A2: db $23 ; Repeat byte
#_0BB1A3: db $0C
#_0BB1A4: db $83 ; Copy past
#_0BB1A5: dw $3D00
#_0BB1A7: db $43 ; Repeat word
#_0BB1A8: dw $0C01
#_0BB1AA: db $04 ; Raw block
#_0BB1AB: db $0C, $01, $0C, $06, $0C
#_0BB1B0: db $43 ; Repeat word
#_0BB1B1: dw $0A0C
#_0BB1B3: db $83 ; Copy past
#_0BB1B4: dw $1D00
#_0BB1B6: db $00 ; Raw block
#_0BB1B7: db $02
#_0BB1B8: db $24 ; Repeat byte
#_0BB1B9: db $0C
#_0BB1BA: db $02 ; Raw block
#_0BB1BB: db $06, $05, $0C
#_0BB1BE: db $22 ; Repeat byte
#_0BB1BF: db $0A
#_0BB1C0: db $00 ; Raw block
#_0BB1C1: db $05
#_0BB1C2: db $83 ; Copy past
#_0BB1C3: dw $8F00
#_0BB1C5: db $24 ; Repeat byte
#_0BB1C6: db $0C
#_0BB1C7: db $85 ; Copy past
#_0BB1C8: dw $2A00
#_0BB1CA: db $04 ; Raw block
#_0BB1CB: db $06, $0C, $01, $0C, $02
#_0BB1D0: db $2C ; Repeat byte
#_0BB1D1: db $0C
#_0BB1D2: db $02 ; Raw block
#_0BB1D3: db $00, $0C, $02
#_0BB1D6: db $24 ; Repeat byte
#_0BB1D7: db $0C
#_0BB1D8: db $83 ; Copy past
#_0BB1D9: dw $0C00
#_0BB1DB: db $22 ; Repeat byte
#_0BB1DC: db $01
#_0BB1DD: db $01 ; Raw block
#_0BB1DE: db $0C, $00
#_0BB1E0: db $25 ; Repeat byte
#_0BB1E1: db $0C
#_0BB1E2: db $07 ; Raw block
#_0BB1E3: db $06, $0C, $03, $03, $0C, $07, $00, $07
#_0BB1EB: db $23 ; Repeat byte
#_0BB1EC: db $0C
#_0BB1ED: db $01 ; Raw block
#_0BB1EE: db $02, $06
#_0BB1F0: db $43 ; Repeat word
#_0BB1F1: dw $0502
#_0BB1F3: db $83 ; Copy past
#_0BB1F4: dw $D800
#_0BB1F6: db $01 ; Raw block
#_0BB1F7: db $02, $0C
#_0BB1F9: db $22 ; Repeat byte
#_0BB1FA: db $03
#_0BB1FB: db $04 ; Raw block
#_0BB1FC: db $0C, $0C, $00, $02, $04
#_0BB201: db $83 ; Copy past
#_0BB202: dw $0C00
#_0BB204: db $00 ; Raw block
#_0BB205: db $06
#_0BB206: db $22 ; Repeat byte
#_0BB207: db $01
#_0BB208: db $00 ; Raw block
#_0BB209: db $0C
#_0BB20A: db $FF ; End of Map 26

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen26_Low:
#_0BB20B: db $01 ; Raw block
#_0BB20C: db $D6, $1B
#_0BB20E: db $24 ; Repeat byte
#_0BB20F: db $1D
#_0BB210: db $1B ; Raw block
#_0BB211: db $F5, $8D, $05, $8E, $8F, $F8, $F8, $90
#_0BB219: db $91, $D6, $1A, $FB, $92, $93, $E2, $92
#_0BB221: db $E2, $93, $92, $05, $94, $08, $85, $95
#_0BB229: db $96, $D6, $1A, $FB
#_0BB22D: db $62 ; Increment fill
#_0BB22E: db $97
#_0BB22F: db $E0, $3A ; EXT Raw block
#_0BB231: db $97, $99, $99, $97, $E8, $9A, $9B, $99
#_0BB239: db $9C, $FB, $D6, $1A, $FB, $9D, $FB, $FB
#_0BB241: db $9E, $FB, $FB, $9D, $FB, $9F, $77, $99
#_0BB249: db $A0, $E8, $D6, $1A, $E8, $A1, $E2, $93
#_0BB251: db $A1, $93, $E2, $A1, $E8, $A2, $77, $99
#_0BB259: db $A3, $E8, $D6, $1A, $FB, $A4, $99, $98
#_0BB261: db $A4, $98, $99, $A4, $FB, $A5, $77, $99
#_0BB269: db $D3, $FB, $D6
#_0BB26C: db $6A ; Increment fill
#_0BB26D: db $A6
#_0BB26E: db $0D ; Raw block
#_0BB26F: db $77, $99, $FA, $05, $D6, $07, $F8, $F8
#_0BB277: db $B1, $B2, $F8, $B3, $08, $B1
#_0BB27D: db $62 ; Increment fill
#_0BB27E: db $B4
#_0BB27F: db $15 ; Raw block
#_0BB280: db $99, $B7, $66, $D6, $D6, $B8, $E5, $B1
#_0BB288: db $B9, $E5, $BA, $05, $BB, $BC, $27, $BD
#_0BB290: db $80, $08, $8F, $BE, $D6, $DD
#_0BB296: db $64 ; Increment fill
#_0BB297: db $BF
#_0BB298: db $0A ; Raw block
#_0BB299: db $05, $FB, $C4, $D0, $E8, $0C, $FB, $C5
#_0BB2A1: db $C6, $D6, $DD
#_0BB2A4: db $63 ; Increment fill
#_0BB2A5: db $C7
#_0BB2A6: db $0B ; Raw block
#_0BB2A7: db $C3, $E8, $9E, $C4, $D0, $9E, $E8, $05
#_0BB2AF: db $CB, $E5, $CC, $DD
#_0BB2B3: db $64 ; Increment fill
#_0BB2B4: db $CD
#_0BB2B5: db $01 ; Raw block
#_0BB2B6: db $AB, $A7
#_0BB2B8: db $62 ; Increment fill
#_0BB2B9: db $D2
#_0BB2BA: db $62 ; Increment fill
#_0BB2BB: db $D4
#_0BB2BC: db $01 ; Raw block
#_0BB2BD: db $1D, $D7
#_0BB2BF: db $83 ; Copy past
#_0BB2C0: dw $A200
#_0BB2C2: db $05 ; Raw block
#_0BB2C3: db $D8, $D9, $E5, $E5, $DA, $DB
#_0BB2C9: db $22 ; Repeat byte
#_0BB2CA: db $E5
#_0BB2CB: db $01 ; Raw block
#_0BB2CC: db $DC, $1D
#_0BB2CE: db $65 ; Increment fill
#_0BB2CF: db $DD
#_0BB2D0: db $07 ; Raw block
#_0BB2D1: db $66, $E3, $44, $44, $E4, $BB, $1D, $8F
#_0BB2D9: db $63 ; Increment fill
#_0BB2DA: db $E4
#_0BB2DB: db $14 ; Raw block
#_0BB2DC: db $D3, $66, $8D, $57, $4C, $58, $E8, $4B
#_0BB2E4: db $4B, $E9, $4C, $EA, $4B, $8D, $D5, $DD
#_0BB2EC: db $EB, $B2, $97, $E6, $EB
#_0BB2F1: db $62 ; Increment fill
#_0BB2F2: db $EB
#_0BB2F3: db $00 ; Raw block
#_0BB2F4: db $A3
#_0BB2F5: db $62 ; Increment fill
#_0BB2F6: db $EA
#_0BB2F7: db $00 ; Raw block
#_0BB2F8: db $EE
#_0BB2F9: db $FF ; End of Map 26

;===================================================================================================

OverworldMap32_Screen27_High:
#_0BB2FA: db $0F ; Raw block
#_0BB2FB: db $0A, $05, $06, $0C, $0A, $05, $0A, $0A
#_0BB303: db $05, $06, $05, $05, $0A, $0A, $0C, $0A
#_0BB30B: db $43 ; Repeat word
#_0BB30C: dw $0C05
#_0BB30E: db $43 ; Repeat word
#_0BB30F: dw $0C0A
#_0BB311: db $01 ; Raw block
#_0BB312: db $06, $0C
#_0BB314: db $23 ; Repeat byte
#_0BB315: db $0A
#_0BB316: db $00 ; Raw block
#_0BB317: db $0C
#_0BB318: db $83 ; Copy past
#_0BB319: dw $0700
#_0BB31B: db $01 ; Raw block
#_0BB31C: db $0C, $0A
#_0BB31E: db $83 ; Copy past
#_0BB31F: dw $0400
#_0BB321: db $02 ; Raw block
#_0BB322: db $0C, $0C, $01
#_0BB325: db $44 ; Repeat word
#_0BB326: dw $0A0C
#_0BB328: db $02 ; Raw block
#_0BB329: db $0C, $0A, $0A
#_0BB32C: db $22 ; Repeat byte
#_0BB32D: db $0C
#_0BB32E: db $02 ; Raw block
#_0BB32F: db $05, $05, $0A
#_0BB332: db $23 ; Repeat byte
#_0BB333: db $0C
#_0BB334: db $23 ; Repeat byte
#_0BB335: db $0D
#_0BB336: db $83 ; Copy past
#_0BB337: dw $2400
#_0BB339: db $02 ; Raw block
#_0BB33A: db $0D, $0C, $0C
#_0BB33D: db $24 ; Repeat byte
#_0BB33E: db $0D
#_0BB33F: db $08 ; Raw block
#_0BB340: db $0A, $0D, $0D, $0A, $05, $05, $06, $0A
#_0BB348: db $0D
#_0BB349: db $22 ; Repeat byte
#_0BB34A: db $01
#_0BB34B: db $22 ; Repeat byte
#_0BB34C: db $0D
#_0BB34D: db $01 ; Raw block
#_0BB34E: db $0C, $0A
#_0BB350: db $22 ; Repeat byte
#_0BB351: db $0D
#_0BB352: db $23 ; Repeat byte
#_0BB353: db $0A
#_0BB354: db $00 ; Raw block
#_0BB355: db $0D
#_0BB356: db $44 ; Repeat word
#_0BB357: dw $060D
#_0BB359: db $00 ; Raw block
#_0BB35A: db $0C
#_0BB35B: db $22 ; Repeat byte
#_0BB35C: db $0D
#_0BB35D: db $0A ; Raw block
#_0BB35E: db $0A, $0D, $0D, $04, $01, $04, $02, $0D
#_0BB366: db $07, $0D, $06
#_0BB369: db $84 ; Copy past
#_0BB36A: dw $5B00
#_0BB36C: db $00 ; Raw block
#_0BB36D: db $01
#_0BB36E: db $26 ; Repeat byte
#_0BB36F: db $0D
#_0BB370: db $83 ; Copy past
#_0BB371: dw $7800
#_0BB373: db $05 ; Raw block
#_0BB374: db $05, $0D, $0A, $0D, $01, $0C
#_0BB37A: db $25 ; Repeat byte
#_0BB37B: db $0D
#_0BB37C: db $01 ; Raw block
#_0BB37D: db $01, $01
#_0BB37F: db $85 ; Copy past
#_0BB380: dw $7A00
#_0BB382: db $01 ; Raw block
#_0BB383: db $0D, $06
#_0BB385: db $22 ; Repeat byte
#_0BB386: db $0D
#_0BB387: db $00 ; Raw block
#_0BB388: db $06
#_0BB389: db $23 ; Repeat byte
#_0BB38A: db $0D
#_0BB38B: db $03 ; Raw block
#_0BB38C: db $05, $0D, $0D, $0C
#_0BB390: db $22 ; Repeat byte
#_0BB391: db $0D
#_0BB392: db $01 ; Raw block
#_0BB393: db $06, $06
#_0BB395: db $22 ; Repeat byte
#_0BB396: db $0D
#_0BB397: db $02 ; Raw block
#_0BB398: db $06, $0D, $0C
#_0BB39B: db $27 ; Repeat byte
#_0BB39C: db $0D
#_0BB39D: db $01 ; Raw block
#_0BB39E: db $06, $06
#_0BB3A0: db $22 ; Repeat byte
#_0BB3A1: db $0D
#_0BB3A2: db $10 ; Raw block
#_0BB3A3: db $06, $0D, $0C, $01, $01, $0D, $0A, $01
#_0BB3AB: db $0D, $02, $03, $03, $07, $03, $0D, $0D
#_0BB3B3: db $07
#_0BB3B4: db $22 ; Repeat byte
#_0BB3B5: db $03
#_0BB3B6: db $00 ; Raw block
#_0BB3B7: db $07
#_0BB3B8: db $83 ; Copy past
#_0BB3B9: dw $8600
#_0BB3BB: db $00 ; Raw block
#_0BB3BC: db $02
#_0BB3BD: db $29 ; Repeat byte
#_0BB3BE: db $03
#_0BB3BF: db $02 ; Raw block
#_0BB3C0: db $0B, $02, $09
#_0BB3C3: db $23 ; Repeat byte
#_0BB3C4: db $0D
#_0BB3C5: db $23 ; Repeat byte
#_0BB3C6: db $01
#_0BB3C7: db $07 ; Raw block
#_0BB3C8: db $0D, $01, $01, $0C, $01, $02, $0D, $0D
#_0BB3D0: db $22 ; Repeat byte
#_0BB3D1: db $01
#_0BB3D2: db $FF ; End of Map 27

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen27_Low:
#_0BB3D3: db $E0, $39 ; EXT Raw block
#_0BB3D5: db $E8, $FB, $05, $EF, $38, $FB, $99, $E7
#_0BB3DD: db $FB, $05, $FB, $E8, $E8, $0C, $F0, $BF
#_0BB3E5: db $E8, $9E, $FB, $9F, $10, $F1, $D4, $F2
#_0BB3ED: db $B5, $F3, $15, $15, $2E, $C4, $F4, $83
#_0BB3F5: db $FB, $05, $E8, $9A, $10, $D0, $DC, $1D
#_0BB3FD: db $1C, $F5, $F6, $15, $F7, $CB, $F8, $CE
#_0BB405: db $F9, $FA, $17, $7E, $FB, $F1, $9E, $FB
#_0BB40D: db $E8, $19
#_0BB40F: db $63 ; Increment fill
#_0BB410: db $FC
#_0BB411: db $63 ; Increment fill
#_0BB412: db $00
#_0BB413: db $06 ; Raw block
#_0BB414: db $1F, $F5, $FB, $D0, $04, $AC, $AD
#_0BB41B: db $64 ; Increment fill
#_0BB41C: db $05
#_0BB41D: db $08 ; Raw block
#_0BB41E: db $29, $01, $02, $1A, $E8, $FB, $05, $0C
#_0BB426: db $0A
#_0BB427: db $22 ; Repeat byte
#_0BB428: db $E5
#_0BB429: db $07 ; Raw block
#_0BB42A: db $0B, $07, $0C, $C4, $29, $01, $02, $0D
#_0BB432: db $62 ; Increment fill
#_0BB433: db $13
#_0BB434: db $1B ; Raw block
#_0BB435: db $15, $0E, $0F, $66, $10, $5A, $11, $C3
#_0BB43D: db $09, $00, $01, $2B, $12, $13, $85, $22
#_0BB445: db $85, $04, $14, $A5, $15, $61, $16, $17
#_0BB44D: db $C4, $29, $01, $F8
#_0BB451: db $66 ; Increment fill
#_0BB452: db $18
#_0BB453: db $09 ; Raw block
#_0BB454: db $AC, $1F, $6B, $20, $C0, $09, $29, $01
#_0BB45C: db $E5, $DC
#_0BB45E: db $65 ; Increment fill
#_0BB45F: db $21
#_0BB460: db $09 ; Raw block
#_0BB461: db $58, $65, $66, $07, $27, $C4, $29, $01
#_0BB469: db $28, $5A
#_0BB46B: db $62 ; Increment fill
#_0BB46C: db $29
#_0BB46D: db $00 ; Raw block
#_0BB46E: db $61
#_0BB46F: db $63 ; Increment fill
#_0BB470: db $2C
#_0BB471: db $08 ; Raw block
#_0BB472: db $F2, $30, $31, $C4, $00, $01, $32, $61
#_0BB47A: db $64
#_0BB47B: db $62 ; Increment fill
#_0BB47C: db $33
#_0BB47D: db $02 ; Raw block
#_0BB47E: db $6E, $07, $D1
#_0BB481: db $65 ; Increment fill
#_0BB482: db $36
#_0BB483: db $03 ; Raw block
#_0BB484: db $01, $3C, $6B, $6E
#_0BB488: db $62 ; Increment fill
#_0BB489: db $3D
#_0BB48A: db $10 ; Raw block
#_0BB48B: db $66, $40, $D9, $E5, $E5, $41, $F3, $E5
#_0BB493: db $42, $82, $44, $44, $90, $44, $43, $44
#_0BB49B: db $90
#_0BB49C: db $22 ; Repeat byte
#_0BB49D: db $44
#_0BB49E: db $05 ; Raw block
#_0BB49F: db $BB, $45, $46, $8F, $47, $82
#_0BB4A5: db $29 ; Repeat byte
#_0BB4A6: db $4B
#_0BB4A7: db $02 ; Raw block
#_0BB4A8: db $45, $D3, $F4
#_0BB4AB: db $63 ; Increment fill
#_0BB4AC: db $48
#_0BB4AD: db $23 ; Repeat byte
#_0BB4AE: db $06
#_0BB4AF: db $0A ; Raw block
#_0BB4B0: db $4C, $06, $06, $ED, $06, $DC, $4D, $4E
#_0BB4B8: db $71, $06, $06
#_0BB4BB: db $FF ; End of Map 27

;===================================================================================================

OverworldMap32_Screen28_High:
#_0BB4BC: db $0A ; Raw block
#_0BB4BD: db $0D, $0D, $0A, $01, $0D, $08, $08, $04
#_0BB4C5: db $08, $08, $04
#_0BB4C8: db $84 ; Copy past
#_0BB4C9: dw $0500
#_0BB4CB: db $24 ; Repeat byte
#_0BB4CC: db $0D
#_0BB4CD: db $8A ; Copy past
#_0BB4CE: dw $0500
#_0BB4D0: db $03 ; Raw block
#_0BB4D1: db $0B, $0D, $0A, $0B
#_0BB4D5: db $88 ; Copy past
#_0BB4D6: dw $0700
#_0BB4D8: db $06 ; Raw block
#_0BB4D9: db $04, $08, $08, $03, $0A, $0D, $01
#_0BB4E0: db $28 ; Repeat byte
#_0BB4E1: db $08
#_0BB4E2: db $00 ; Raw block
#_0BB4E3: db $0D
#_0BB4E4: db $85 ; Copy past
#_0BB4E5: dw $2E00
#_0BB4E7: db $01 ; Raw block
#_0BB4E8: db $0D, $07
#_0BB4EA: db $25 ; Repeat byte
#_0BB4EB: db $0D
#_0BB4EC: db $83 ; Copy past
#_0BB4ED: dw $3C00
#_0BB4EF: db $22 ; Repeat byte
#_0BB4F0: db $0D
#_0BB4F1: db $05 ; Raw block
#_0BB4F2: db $01, $00, $00, $0D, $0D, $05
#_0BB4F8: db $23 ; Repeat byte
#_0BB4F9: db $0D
#_0BB4FA: db $83 ; Copy past
#_0BB4FB: dw $2D00
#_0BB4FD: db $03 ; Raw block
#_0BB4FE: db $0D, $0D, $03, $00
#_0BB502: db $28 ; Repeat byte
#_0BB503: db $0D
#_0BB504: db $05 ; Raw block
#_0BB505: db $08, $08, $0C, $0D, $0D, $03
#_0BB50B: db $23 ; Repeat byte
#_0BB50C: db $0D
#_0BB50D: db $00 ; Raw block
#_0BB50E: db $09
#_0BB50F: db $24 ; Repeat byte
#_0BB510: db $0D
#_0BB511: db $83 ; Copy past
#_0BB512: dw $0E00
#_0BB514: db $05 ; Raw block
#_0BB515: db $04, $0D, $0D, $07, $0D, $09
#_0BB51B: db $25 ; Repeat byte
#_0BB51C: db $0D
#_0BB51D: db $03 ; Raw block
#_0BB51E: db $08, $08, $03, $04
#_0BB522: db $25 ; Repeat byte
#_0BB523: db $0D
#_0BB524: db $00 ; Raw block
#_0BB525: db $00
#_0BB526: db $26 ; Repeat byte
#_0BB527: db $0D
#_0BB528: db $02 ; Raw block
#_0BB529: db $03, $03, $04
#_0BB52C: db $25 ; Repeat byte
#_0BB52D: db $02
#_0BB52E: db $00 ; Raw block
#_0BB52F: db $0B
#_0BB530: db $23 ; Repeat byte
#_0BB531: db $0D
#_0BB532: db $00 ; Raw block
#_0BB533: db $08
#_0BB534: db $83 ; Copy past
#_0BB535: dw $7200
#_0BB537: db $25 ; Repeat byte
#_0BB538: db $01
#_0BB539: db $01 ; Raw block
#_0BB53A: db $03, $0B
#_0BB53C: db $23 ; Repeat byte
#_0BB53D: db $0D
#_0BB53E: db $0B ; Raw block
#_0BB53F: db $08, $0D, $0D, $0C, $01, $08, $01, $03
#_0BB547: db $06, $00, $03, $03
#_0BB54B: db $24 ; Repeat byte
#_0BB54C: db $0D
#_0BB54D: db $0B ; Raw block
#_0BB54E: db $01, $0D, $02, $07, $0D, $0D, $07, $03
#_0BB556: db $03, $07, $03, $03
#_0BB55A: db $25 ; Repeat byte
#_0BB55B: db $01
#_0BB55C: db $01 ; Raw block
#_0BB55D: db $0D, $0D
#_0BB55F: db $24 ; Repeat byte
#_0BB560: db $03
#_0BB561: db $01 ; Raw block
#_0BB562: db $0B, $07
#_0BB564: db $24 ; Repeat byte
#_0BB565: db $03
#_0BB566: db $05 ; Raw block
#_0BB567: db $01, $0B, $01, $01, $0D, $01
#_0BB56D: db $24 ; Repeat byte
#_0BB56E: db $0D
#_0BB56F: db $24 ; Repeat byte
#_0BB570: db $03
#_0BB571: db $FF ; End of Map 28

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen28_Low:
#_0BB572: db $0A ; Raw block
#_0BB573: db $4F, $50, $39, $E3, $51, $D2, $D3, $42
#_0BB57B: db $D2, $D3, $42
#_0BB57E: db $84 ; Copy past
#_0BB57F: dw $0500
#_0BB581: db $01 ; Raw block
#_0BB582: db $52, $4F
#_0BB584: db $62 ; Increment fill
#_0BB585: db $53
#_0BB586: db $05 ; Raw block
#_0BB587: db $99, $44, $4A, $99, $44, $4A
#_0BB58D: db $84 ; Copy past
#_0BB58E: dw $1500
#_0BB590: db $09 ; Raw block
#_0BB591: db $4D, $56, $39, $58, $39, $9F, $4B, $39
#_0BB599: db $9F, $4B
#_0BB59B: db $85 ; Copy past
#_0BB59C: dw $2400
#_0BB59E: db $0F ; Raw block
#_0BB59F: db $63, $09, $53, $E3, $9C, $A5, $A6, $9C
#_0BB5A7: db $A5, $A6, $9C, $A5, $A6, $51, $D2, $D3
#_0BB5AF: db $83 ; Copy past
#_0BB5B0: dw $3000
#_0BB5B2: db $01 ; Raw block
#_0BB5B3: db $57, $09
#_0BB5B5: db $63 ; Increment fill
#_0BB5B6: db $58
#_0BB5B7: db $0E ; Raw block
#_0BB5B8: db $5B, $5A, $C9, $55, $99, $44, $5C, $5D
#_0BB5C0: db $53, $E3, $1F, $99, $5E, $5F, $0D
#_0BB5C7: db $63 ; Increment fill
#_0BB5C8: db $60
#_0BB5C9: db $07 ; Raw block
#_0BB5CA: db $39, $9F, $4B, $9C, $64, $65, $95, $1F
#_0BB5D2: db $67 ; Increment fill
#_0BB5D3: db $66
#_0BB5D4: db $0B ; Raw block
#_0BB5D5: db $51, $D2, $D3, $90, $6E, $6F, $9D, $70
#_0BB5DD: db $71, $62, $72, $6F
#_0BB5E1: db $64 ; Increment fill
#_0BB5E2: db $73
#_0BB5E3: db $09 ; Raw block
#_0BB5E4: db $43, $44, $78, $6F, $84, $79, $7A, $09
#_0BB5EC: db $7B, $6F
#_0BB5EE: db $65 ; Increment fill
#_0BB5EF: db $7C
#_0BB5F0: db $05 ; Raw block
#_0BB5F1: db $4A, $4B, $9C, $84, $82, $83
#_0BB5F7: db $22 ; Repeat byte
#_0BB5F8: db $84
#_0BB5F9: db $01 ; Raw block
#_0BB5FA: db $85, $1D
#_0BB5FC: db $66 ; Increment fill
#_0BB5FD: db $86
#_0BB5FE: db $02 ; Raw block
#_0BB5FF: db $BB, $A8, $81
#_0BB602: db $25 ; Repeat byte
#_0BB603: db $61
#_0BB604: db $01 ; Raw block
#_0BB605: db $D4, $86
#_0BB607: db $62 ; Increment fill
#_0BB608: db $8D
#_0BB609: db $04 ; Raw block
#_0BB60A: db $10, $90, $5C, $91, $92
#_0BB60F: db $25 ; Repeat byte
#_0BB610: db $22
#_0BB611: db $01 ; Raw block
#_0BB612: db $B1, $D4
#_0BB614: db $63 ; Increment fill
#_0BB615: db $93
#_0BB616: db $0B ; Raw block
#_0BB617: db $5E, $97, $98, $DE, $60, $2D, $1E, $D5
#_0BB61F: db $66, $1D, $56, $B1
#_0BB623: db $64 ; Increment fill
#_0BB624: db $99
#_0BB625: db $0B ; Raw block
#_0BB626: db $06, $9E, $D2, $BF, $9F, $A0, $90, $44
#_0BB62E: db $44, $BB, $56, $BA
#_0BB632: db $23 ; Repeat byte
#_0BB633: db $E5
#_0BB634: db $03 ; Raw block
#_0BB635: db $06, $06, $9E, $A1
#_0BB639: db $24 ; Repeat byte
#_0BB63A: db $4B
#_0BB63B: db $01 ; Raw block
#_0BB63C: db $45, $BF
#_0BB63E: db $24 ; Repeat byte
#_0BB63F: db $44
#_0BB640: db $02 ; Raw block
#_0BB641: db $06, $4B, $06
#_0BB644: db $43 ; Repeat word
#_0BB645: dw $A206
#_0BB647: db $03 ; Raw block
#_0BB648: db $A3, $4B, $9E, $A1
#_0BB64C: db $24 ; Repeat byte
#_0BB64D: db $4B
#_0BB64E: db $FF ; End of Map 28

;===================================================================================================

OverworldMap32_Screen29_High:
#_0BB64F: db $06 ; Raw block
#_0BB650: db $04, $08, $08, $04, $08, $08, $04
#_0BB657: db $23 ; Repeat byte
#_0BB658: db $08
#_0BB659: db $22 ; Repeat byte
#_0BB65A: db $0D
#_0BB65B: db $02 ; Raw block
#_0BB65C: db $08, $08, $04
#_0BB65F: db $22 ; Repeat byte
#_0BB660: db $08
#_0BB661: db $01 ; Raw block
#_0BB662: db $01, $08
#_0BB664: db $43 ; Repeat word
#_0BB665: dw $0108
#_0BB667: db $24 ; Repeat byte
#_0BB668: db $0D
#_0BB669: db $02 ; Raw block
#_0BB66A: db $08, $04, $08
#_0BB66D: db $23 ; Repeat byte
#_0BB66E: db $0D
#_0BB66F: db $04 ; Raw block
#_0BB670: db $08, $01, $0D, $04, $06
#_0BB675: db $24 ; Repeat byte
#_0BB676: db $0D
#_0BB677: db $01 ; Raw block
#_0BB678: db $08, $08
#_0BB67A: db $23 ; Repeat byte
#_0BB67B: db $0D
#_0BB67C: db $00 ; Raw block
#_0BB67D: db $04
#_0BB67E: db $23 ; Repeat byte
#_0BB67F: db $02
#_0BB680: db $24 ; Repeat byte
#_0BB681: db $0D
#_0BB682: db $01 ; Raw block
#_0BB683: db $01, $00
#_0BB685: db $23 ; Repeat byte
#_0BB686: db $0D
#_0BB687: db $01 ; Raw block
#_0BB688: db $02, $02
#_0BB68A: db $22 ; Repeat byte
#_0BB68B: db $01
#_0BB68C: db $00 ; Raw block
#_0BB68D: db $03
#_0BB68E: db $22 ; Repeat byte
#_0BB68F: db $0D
#_0BB690: db $09 ; Raw block
#_0BB691: db $08, $0D, $02, $02, $0D, $04, $01, $02
#_0BB699: db $06, $04
#_0BB69B: db $23 ; Repeat byte
#_0BB69C: db $02
#_0BB69D: db $23 ; Repeat byte
#_0BB69E: db $0D
#_0BB69F: db $06 ; Raw block
#_0BB6A0: db $01, $01, $0D, $02, $00, $00, $09
#_0BB6A7: db $27 ; Repeat byte
#_0BB6A8: db $0D
#_0BB6A9: db $09 ; Raw block
#_0BB6AA: db $0C, $04, $06, $05, $0D, $09, $07, $03
#_0BB6B2: db $03, $06
#_0BB6B4: db $23 ; Repeat byte
#_0BB6B5: db $0D
#_0BB6B6: db $0B ; Raw block
#_0BB6B7: db $08, $08, $04, $04, $07, $06, $05, $02
#_0BB6BF: db $02, $03, $03, $0D
#_0BB6C3: db $22 ; Repeat byte
#_0BB6C4: db $08
#_0BB6C5: db $02 ; Raw block
#_0BB6C6: db $0D, $08, $08
#_0BB6C9: db $23 ; Repeat byte
#_0BB6CA: db $0D
#_0BB6CB: db $00 ; Raw block
#_0BB6CC: db $03
#_0BB6CD: db $84 ; Copy past
#_0BB6CE: dw $4900
#_0BB6D0: db $22 ; Repeat byte
#_0BB6D1: db $08
#_0BB6D2: db $01 ; Raw block
#_0BB6D3: db $0D, $08
#_0BB6D5: db $43 ; Repeat word
#_0BB6D6: dw $0D08
#_0BB6D8: db $03 ; Raw block
#_0BB6D9: db $0D, $07, $06, $05
#_0BB6DD: db $25 ; Repeat byte
#_0BB6DE: db $0D
#_0BB6DF: db $03 ; Raw block
#_0BB6E0: db $04, $06, $01, $08
#_0BB6E4: db $22 ; Repeat byte
#_0BB6E5: db $0D
#_0BB6E6: db $05 ; Raw block
#_0BB6E7: db $05, $0D, $05, $03, $03, $04
#_0BB6ED: db $22 ; Repeat byte
#_0BB6EE: db $01
#_0BB6EF: db $02 ; Raw block
#_0BB6F0: db $04, $01, $03
#_0BB6F3: db $22 ; Repeat byte
#_0BB6F4: db $0D
#_0BB6F5: db $03 ; Raw block
#_0BB6F6: db $02, $02, $0D, $05
#_0BB6FA: db $22 ; Repeat byte
#_0BB6FB: db $03
#_0BB6FC: db $01 ; Raw block
#_0BB6FD: db $00, $07
#_0BB6FF: db $23 ; Repeat byte
#_0BB700: db $06
#_0BB701: db $23 ; Repeat byte
#_0BB702: db $01
#_0BB703: db $02 ; Raw block
#_0BB704: db $02, $0D, $01
#_0BB707: db $83 ; Copy past
#_0BB708: dw $8700
#_0BB70A: db $04 ; Raw block
#_0BB70B: db $00, $00, $06, $00, $00
#_0BB710: db $25 ; Repeat byte
#_0BB711: db $03
#_0BB712: db $03 ; Raw block
#_0BB713: db $01, $0C, $03, $03
#_0BB717: db $25 ; Repeat byte
#_0BB718: db $00
#_0BB719: db $25 ; Repeat byte
#_0BB71A: db $03
#_0BB71B: db $22 ; Repeat byte
#_0BB71C: db $0D
#_0BB71D: db $01 ; Raw block
#_0BB71E: db $06, $06
#_0BB720: db $24 ; Repeat byte
#_0BB721: db $00
#_0BB722: db $FF ; End of Map 29

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen29_Low:
#_0BB723: db $19 ; Raw block
#_0BB724: db $42, $D2, $D3, $42, $D2, $D3, $42, $D2
#_0BB72C: db $D3, $A4, $9D, $A4, $A5, $51, $D2, $D3
#_0BB734: db $4A, $BB, $41, $42, $4E, $41, $42, $4E
#_0BB73C: db $41, $68
#_0BB73E: db $64 ; Increment fill
#_0BB73F: db $A6
#_0BB740: db $02 ; Raw block
#_0BB741: db $41, $39, $BE
#_0BB744: db $63 ; Increment fill
#_0BB745: db $AB
#_0BB746: db $04 ; Raw block
#_0BB747: db $49, $58, $AF, $25, $66
#_0BB74C: db $64 ; Increment fill
#_0BB74D: db $B0
#_0BB74E: db $01 ; Raw block
#_0BB74F: db $A4, $9D
#_0BB751: db $63 ; Increment fill
#_0BB752: db $B5
#_0BB753: db $01 ; Raw block
#_0BB754: db $B5, $60
#_0BB756: db $22 ; Repeat byte
#_0BB757: db $61
#_0BB758: db $64 ; Increment fill
#_0BB759: db $B9
#_0BB75A: db $01 ; Raw block
#_0BB75B: db $68, $99
#_0BB75D: db $63 ; Increment fill
#_0BB75E: db $BE
#_0BB75F: db $01 ; Raw block
#_0BB760: db $79, $02
#_0BB762: db $22 ; Repeat byte
#_0BB763: db $22
#_0BB764: db $0D ; Raw block
#_0BB765: db $A8, $C2, $C3, $AA, $41, $C4, $61, $61
#_0BB76D: db $C5, $C5, $E5, $7A, $66, $81
#_0BB773: db $23 ; Repeat byte
#_0BB774: db $61
#_0BB775: db $0C ; Raw block
#_0BB776: db $C6, $B3, $B4, $C7, $22, $22, $C8, $04
#_0BB77E: db $1D, $FB, $ED, $92, $C9
#_0BB783: db $22 ; Repeat byte
#_0BB784: db $CA
#_0BB785: db $0C ; Raw block
#_0BB786: db $CB, $BC, $BD, $43, $2F, $B3, $52, $CC
#_0BB78E: db $E8, $E6, $AB, $AC, $7C
#_0BB793: db $63 ; Increment fill
#_0BB794: db $CD
#_0BB795: db $0B ; Raw block
#_0BB796: db $43, $44, $39, $3A, $C5, $66, $56, $61
#_0BB79E: db $61, $B4, $A8, $D1
#_0BB7A2: db $62 ; Increment fill
#_0BB7A3: db $0F
#_0BB7A4: db $0C ; Raw block
#_0BB7A5: db $D2, $4A, $4B, $D3, $8B, $D4, $D5, $56
#_0BB7AD: db $22, $22, $A8, $D6, $D7
#_0BB7B2: db $62 ; Increment fill
#_0BB7B3: db $1B
#_0BB7B4: db $09 ; Raw block
#_0BB7B5: db $D8, $4D, $4E, $D9, $10, $DA, $DB, $6D
#_0BB7BD: db $66, $5B
#_0BB7BF: db $65 ; Increment fill
#_0BB7C0: db $DC
#_0BB7C1: db $03 ; Raw block
#_0BB7C2: db $BA, $66, $67, $5E
#_0BB7C6: db $62 ; Increment fill
#_0BB7C7: db $E2
#_0BB7C8: db $17 ; Raw block
#_0BB7C9: db $0C, $E5, $5D, $B2, $B3, $82, $E5, $F9
#_0BB7D1: db $E5, $BC, $1E, $DB, $9D, $9B, $9C, $08
#_0BB7D9: db $60, $E6, $5F, $BA, $BB, $A8, $1D, $E5
#_0BB7E1: db $23 ; Repeat byte
#_0BB7E2: db $9C
#_0BB7E3: db $23 ; Repeat byte
#_0BB7E4: db $E5
#_0BB7E5: db $0B ; Raw block
#_0BB7E6: db $02, $E7, $41, $44, $44, $E8, $A1, $B6
#_0BB7EE: db $B7, $3B, $B6, $B7
#_0BB7F2: db $25 ; Repeat byte
#_0BB7F3: db $44
#_0BB7F4: db $04 ; Raw block
#_0BB7F5: db $48, $E8, $8C, $8D, $EE
#_0BB7FA: db $62 ; Increment fill
#_0BB7FB: db $09
#_0BB7FC: db $01 ; Raw block
#_0BB7FD: db $09, $0A
#_0BB7FF: db $25 ; Repeat byte
#_0BB800: db $4B
#_0BB801: db $62 ; Increment fill
#_0BB802: db $E9
#_0BB803: db $03 ; Raw block
#_0BB804: db $49, $45, $07, $08
#_0BB808: db $62 ; Increment fill
#_0BB809: db $06
#_0BB80A: db $FF ; End of Map 29

;===================================================================================================

OverworldMap32_Screen2D_High:
#_0BB80B: db $18 ; Raw block
#_0BB80C: db $07, $01, $00, $00, $0D, $06, $01, $0D
#_0BB814: db $01, $09, $0B, $09, $01, $0D, $0D, $01
#_0BB81C: db $09, $01, $06, $00, $0D, $0C, $06, $01
#_0BB824: db $0B
#_0BB825: db $23 ; Repeat byte
#_0BB826: db $02
#_0BB827: db $04 ; Raw block
#_0BB828: db $0D, $04, $0D, $07, $01
#_0BB82D: db $23 ; Repeat byte
#_0BB82E: db $0D
#_0BB82F: db $03 ; Raw block
#_0BB830: db $06, $01, $0D, $06
#_0BB834: db $22 ; Repeat byte
#_0BB835: db $0D
#_0BB836: db $04 ; Raw block
#_0BB837: db $03, $03, $0D, $07, $01
#_0BB83C: db $22 ; Repeat byte
#_0BB83D: db $0D
#_0BB83E: db $03 ; Raw block
#_0BB83F: db $02, $0D, $0E, $06
#_0BB843: db $23 ; Repeat byte
#_0BB844: db $0E
#_0BB845: db $03 ; Raw block
#_0BB846: db $00, $0E, $0E, $07
#_0BB84A: db $23 ; Repeat byte
#_0BB84B: db $0E
#_0BB84C: db $04 ; Raw block
#_0BB84D: db $01, $0E, $0E, $02, $02
#_0BB852: db $23 ; Repeat byte
#_0BB853: db $0E
#_0BB854: db $0B ; Raw block
#_0BB855: db $02, $02, $07, $06, $01, $01, $06, $06
#_0BB85D: db $0E, $0E, $00, $06
#_0BB861: db $23 ; Repeat byte
#_0BB862: db $0E
#_0BB863: db $05 ; Raw block
#_0BB864: db $00, $06, $05, $07, $06, $01
#_0BB86A: db $22 ; Repeat byte
#_0BB86B: db $02
#_0BB86C: db $23 ; Repeat byte
#_0BB86D: db $0E
#_0BB86E: db $24 ; Repeat byte
#_0BB86F: db $02
#_0BB870: db $03 ; Raw block
#_0BB871: db $05, $05, $08, $06
#_0BB875: db $2C ; Repeat byte
#_0BB876: db $0E
#_0BB877: db $01 ; Raw block
#_0BB878: db $05, $0C
#_0BB87A: db $22 ; Repeat byte
#_0BB87B: db $07
#_0BB87C: db $25 ; Repeat byte
#_0BB87D: db $0E
#_0BB87E: db $06 ; Raw block
#_0BB87F: db $07, $0E, $07, $07, $09, $07, $05
#_0BB886: db $43 ; Repeat word
#_0BB887: dw $0805
#_0BB889: db $23 ; Repeat byte
#_0BB88A: db $0E
#_0BB88B: db $04 ; Raw block
#_0BB88C: db $07, $0E, $0E, $05, $05
#_0BB891: db $26 ; Repeat byte
#_0BB892: db $07
#_0BB893: db $25 ; Repeat byte
#_0BB894: db $0E
#_0BB895: db $02 ; Raw block
#_0BB896: db $05, $0E, $0E
#_0BB899: db $26 ; Repeat byte
#_0BB89A: db $05
#_0BB89B: db $24 ; Repeat byte
#_0BB89C: db $0E
#_0BB89D: db $03 ; Raw block
#_0BB89E: db $07, $09, $05, $09
#_0BB8A2: db $23 ; Repeat byte
#_0BB8A3: db $06
#_0BB8A4: db $0F ; Raw block
#_0BB8A5: db $0E, $0A, $0E, $06, $02, $0E, $06, $02
#_0BB8AD: db $07, $0B, $07, $07, $02, $02, $0E, $03
#_0BB8B5: db $22 ; Repeat byte
#_0BB8B6: db $0E
#_0BB8B7: db $00 ; Raw block
#_0BB8B8: db $06
#_0BB8B9: db $43 ; Repeat word
#_0BB8BA: dw $0100
#_0BB8BC: db $24 ; Repeat byte
#_0BB8BD: db $0E
#_0BB8BE: db $08 ; Raw block
#_0BB8BF: db $01, $0E, $03, $00, $0E, $0E, $00, $00
#_0BB8C7: db $02
#_0BB8C8: db $22 ; Repeat byte
#_0BB8C9: db $01
#_0BB8CA: db $09 ; Raw block
#_0BB8CB: db $0E, $03, $0E, $0D, $01, $0B, $01, $00
#_0BB8D3: db $00, $07
#_0BB8D5: db $22 ; Repeat byte
#_0BB8D6: db $00
#_0BB8D7: db $22 ; Repeat byte
#_0BB8D8: db $01
#_0BB8D9: db $02 ; Raw block
#_0BB8DA: db $0E, $0B, $0E
#_0BB8DD: db $FF ; End of Map 2D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen2D_Low:
#_0BB8DE: db $E0, $21 ; EXT Raw block
#_0BB8E0: db $4C, $93, $FB, $1D, $EC, $A2, $06, $ED
#_0BB8E8: db $06, $D5, $4B, $D5, $06, $EE, $EF, $FC
#_0BB8F0: db $DB, $93, $66, $A9, $F0, $ED, $A2, $06
#_0BB8F8: db $4B, $58, $59, $59, $5A, $F1, $8E, $F2
#_0BB900: db $4C, $93
#_0BB902: db $63 ; Increment fill
#_0BB903: db $F3
#_0BB904: db $03 ; Raw block
#_0BB905: db $A2, $06, $F7, $8E
#_0BB909: db $62 ; Increment fill
#_0BB90A: db $F8
#_0BB90B: db $04 ; Raw block
#_0BB90C: db $56, $57, $FB, $4C, $93
#_0BB911: db $62 ; Increment fill
#_0BB912: db $FC
#_0BB913: db $03 ; Raw block
#_0BB914: db $5E, $FF, $00, $A2
#_0BB918: db $63 ; Increment fill
#_0BB919: db $01
#_0BB91A: db $03 ; Raw block
#_0BB91B: db $A1, $05, $06, $4C
#_0BB91F: db $63 ; Increment fill
#_0BB920: db $07
#_0BB921: db $04 ; Raw block
#_0BB922: db $1E, $0B, $0C, $5B, $5B
#_0BB927: db $62 ; Increment fill
#_0BB928: db $0D
#_0BB929: db $0D ; Raw block
#_0BB92A: db $0D, $5B, $5B, $14, $16, $D9, $A0, $66
#_0BB932: db $70, $10, $11, $B2, $66, $12
#_0BB938: db $62 ; Increment fill
#_0BB939: db $10
#_0BB93A: db $05 ; Raw block
#_0BB93B: db $FB, $66, $E1, $14, $16, $D9
#_0BB941: db $22 ; Repeat byte
#_0BB942: db $07
#_0BB943: db $63 ; Increment fill
#_0BB944: db $13
#_0BB945: db $24 ; Repeat byte
#_0BB946: db $07
#_0BB947: db $03 ; Raw block
#_0BB948: db $E0, $E1, $B5, $16
#_0BB94C: db $22 ; Repeat byte
#_0BB94D: db $17
#_0BB94E: db $63 ; Increment fill
#_0BB94F: db $18
#_0BB950: db $24 ; Repeat byte
#_0BB951: db $17
#_0BB952: db $12 ; Raw block
#_0BB953: db $1C, $E1, $4C, $14, $79, $79, $1D, $1E
#_0BB95B: db $19, $1A, $1F, $20, $79, $21, $79, $79
#_0BB963: db $36, $20, $E1
#_0BB966: db $43 ; Repeat word
#_0BB967: dw $AAE1
#_0BB969: db $08 ; Raw block
#_0BB96A: db $1E, $19, $1A, $22, $20, $23, $24, $AA
#_0BB972: db $E1
#_0BB973: db $26 ; Repeat byte
#_0BB974: db $84
#_0BB975: db $02 ; Raw block
#_0BB976: db $25, $19, $1A
#_0BB979: db $62 ; Increment fill
#_0BB97A: db $26
#_0BB97B: db $02 ; Raw block
#_0BB97C: db $C9, $29, $2A
#_0BB97F: db $26 ; Repeat byte
#_0BB980: db $6D
#_0BB981: db $64 ; Increment fill
#_0BB982: db $2B
#_0BB983: db $03 ; Raw block
#_0BB984: db $3B, $52, $E1, $9D
#_0BB988: db $23 ; Repeat byte
#_0BB989: db $9C
#_0BB98A: db $0F ; Raw block
#_0BB98B: db $30, $06, $31, $92, $59, $32, $66, $30
#_0BB993: db $3A, $94, $84, $84, $4C, $4C, $33, $86
#_0BB99B: db $62 ; Increment fill
#_0BB99C: db $34
#_0BB99D: db $04 ; Raw block
#_0BB99E: db $3E, $FB, $1E, $FB, $41
#_0BB9A3: db $64 ; Increment fill
#_0BB9A4: db $37
#_0BB9A5: db $1E ; Raw block
#_0BB9A6: db $EB, $3C, $8D, $1D, $34, $3D, $1D, $AA
#_0BB9AE: db $DE, $41, $48, $49, $3B, $4A, $3E, $F7
#_0BB9B6: db $06, $57, $E3, $1D, $A9, $41, $1C, $1D
#_0BB9BE: db $1D, $52, $53, $6A, $3F, $56, $40
#_0BB9C5: db $FF ; End of Map 2D

;===================================================================================================

OverworldMap32_Screen30_High:
#_0BB9C6: db $26 ; Repeat byte
#_0BB9C7: db $0E
#_0BB9C8: db $02 ; Raw block
#_0BB9C9: db $01, $01, $0E
#_0BB9CC: db $22 ; Repeat byte
#_0BB9CD: db $01
#_0BB9CE: db $24 ; Repeat byte
#_0BB9CF: db $0E
#_0BB9D0: db $00 ; Raw block
#_0BB9D1: db $04
#_0BB9D2: db $22 ; Repeat byte
#_0BB9D3: db $01
#_0BB9D4: db $01 ; Raw block
#_0BB9D5: db $03, $01
#_0BB9D7: db $22 ; Repeat byte
#_0BB9D8: db $0E
#_0BB9D9: db $84 ; Copy past
#_0BB9DA: dw $0700
#_0BB9DC: db $02 ; Raw block
#_0BB9DD: db $0E, $03, $0E
#_0BB9E0: db $22 ; Repeat byte
#_0BB9E1: db $01
#_0BB9E2: db $45 ; Repeat word
#_0BB9E3: dw $010E
#_0BB9E5: db $29 ; Repeat byte
#_0BB9E6: db $0E
#_0BB9E7: db $01 ; Raw block
#_0BB9E8: db $06, $06
#_0BB9EA: db $22 ; Repeat byte
#_0BB9EB: db $0E
#_0BB9EC: db $00 ; Raw block
#_0BB9ED: db $06
#_0BB9EE: db $33 ; Repeat byte
#_0BB9EF: db $0E
#_0BB9F0: db $00 ; Raw block
#_0BB9F1: db $02
#_0BB9F2: db $2E ; Repeat byte
#_0BB9F3: db $0E
#_0BB9F4: db $00 ; Raw block
#_0BB9F5: db $02
#_0BB9F6: db $2E ; Repeat byte
#_0BB9F7: db $0E
#_0BB9F8: db $00 ; Raw block
#_0BB9F9: db $02
#_0BB9FA: db $24 ; Repeat byte
#_0BB9FB: db $0E
#_0BB9FC: db $0A ; Raw block
#_0BB9FD: db $07, $0A, $01, $0E, $02, $0A, $0A, $0E
#_0BBA05: db $01, $0E, $02
#_0BBA08: db $23 ; Repeat byte
#_0BBA09: db $0E
#_0BBA0A: db $00 ; Raw block
#_0BBA0B: db $07
#_0BBA0C: db $29 ; Repeat byte
#_0BBA0D: db $0E
#_0BBA0E: db $00 ; Raw block
#_0BBA0F: db $02
#_0BBA10: db $22 ; Repeat byte
#_0BBA11: db $0E
#_0BBA12: db $00 ; Raw block
#_0BBA13: db $07
#_0BBA14: db $2A ; Repeat byte
#_0BBA15: db $0E
#_0BBA16: db $00 ; Raw block
#_0BBA17: db $02
#_0BBA18: db $2C ; Repeat byte
#_0BBA19: db $0E
#_0BBA1A: db $01 ; Raw block
#_0BBA1B: db $07, $01
#_0BBA1D: db $3C ; Repeat byte
#_0BBA1E: db $0E
#_0BBA1F: db $00 ; Raw block
#_0BBA20: db $0C
#_0BBA21: db $2E ; Repeat byte
#_0BBA22: db $0E
#_0BBA23: db $00 ; Raw block
#_0BBA24: db $0C
#_0BBA25: db $2E ; Repeat byte
#_0BBA26: db $0E
#_0BBA27: db $00 ; Raw block
#_0BBA28: db $0C
#_0BBA29: db $2E ; Repeat byte
#_0BBA2A: db $0E
#_0BBA2B: db $02 ; Raw block
#_0BBA2C: db $0C, $0E, $0E
#_0BBA2F: db $FF ; End of Map 30

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen30_Low:
#_0BBA30: db $02 ; Raw block
#_0BBA31: db $41, $42, $43
#_0BBA34: db $22 ; Repeat byte
#_0BBA35: db $44
#_0BBA36: db $03 ; Raw block
#_0BBA37: db $45, $0A, $0A, $46
#_0BBA3B: db $22 ; Repeat byte
#_0BBA3C: db $0A
#_0BBA3D: db $05 ; Raw block
#_0BBA3E: db $47, $48, $42, $49, $4A, $92
#_0BBA44: db $22 ; Repeat byte
#_0BBA45: db $F8
#_0BBA46: db $01 ; Raw block
#_0BBA47: db $9C, $15
#_0BBA49: db $62 ; Increment fill
#_0BBA4A: db $4B
#_0BBA4B: db $07 ; Raw block
#_0BBA4C: db $15, $15, $4E, $0A, $0A, $4A, $6B, $4F
#_0BBA54: db $22 ; Repeat byte
#_0BBA55: db $02
#_0BBA56: db $06 ; Raw block
#_0BBA57: db $50, $22, $51, $20, $52, $22, $53
#_0BBA5E: db $22 ; Repeat byte
#_0BBA5F: db $54
#_0BBA60: db $02 ; Raw block
#_0BBA61: db $55, $56, $48
#_0BBA64: db $62 ; Increment fill
#_0BBA65: db $57
#_0BBA66: db $01 ; Raw block
#_0BBA67: db $8E, $66
#_0BBA69: db $62 ; Increment fill
#_0BBA6A: db $5A
#_0BBA6B: db $01 ; Raw block
#_0BBA6C: db $F5, $5D
#_0BBA6E: db $62 ; Increment fill
#_0BBA6F: db $57
#_0BBA70: db $01 ; Raw block
#_0BBA71: db $5E, $48
#_0BBA73: db $69 ; Increment fill
#_0BBA74: db $5F
#_0BBA75: db $83 ; Copy past
#_0BBA76: dw $4200
#_0BBA78: db $02 ; Raw block
#_0BBA79: db $F2, $5F, $5F
#_0BBA7C: db $62 ; Increment fill
#_0BBA7D: db $69
#_0BBA7E: db $00 ; Raw block
#_0BBA7F: db $5F
#_0BBA80: db $64 ; Increment fill
#_0BBA81: db $6C
#_0BBA82: db $06 ; Raw block
#_0BBA83: db $5F, $69, $71, $6B, $F2, $5F, $5F
#_0BBA8A: db $68 ; Increment fill
#_0BBA8B: db $72
#_0BBA8C: db $00 ; Raw block
#_0BBA8D: db $44
#_0BBA8E: db $62 ; Increment fill
#_0BBA8F: db $7B
#_0BBA90: db $01 ; Raw block
#_0BBA91: db $F2, $5F
#_0BBA93: db $63 ; Increment fill
#_0BBA94: db $7E
#_0BBA95: db $0F ; Raw block
#_0BBA96: db $6F, $08, $13, $82, $01, $08, $08, $83
#_0BBA9E: db $15, $84, $F2, $5F, $85, $86, $75, $6F
#_0BBAA6: db $64 ; Increment fill
#_0BBAA7: db $87
#_0BBAA8: db $01 ; Raw block
#_0BBAA9: db $88, $88
#_0BBAAB: db $62 ; Increment fill
#_0BBAAC: db $8C
#_0BBAAD: db $05 ; Raw block
#_0BBAAE: db $F2, $8F, $85, $90, $6F, $87
#_0BBAB4: db $64 ; Increment fill
#_0BBAB5: db $91
#_0BBAB6: db $00 ; Raw block
#_0BBAB7: db $92
#_0BBAB8: db $63 ; Increment fill
#_0BBAB9: db $96
#_0BBABA: db $06 ; Raw block
#_0BBABB: db $F2, $5F, $85, $9A, $9B, $88, $9C
#_0BBAC2: db $24 ; Repeat byte
#_0BBAC3: db $9D
#_0BBAC4: db $03 ; Raw block
#_0BBAC5: db $9E, $9F, $6F, $02
#_0BBAC9: db $62 ; Increment fill
#_0BBACA: db $A0
#_0BBACB: db $04 ; Raw block
#_0BBACC: db $9A, $A3, $88, $9C, $9D
#_0BBAD1: db $22 ; Repeat byte
#_0BBAD2: db $A4
#_0BBAD3: db $04 ; Raw block
#_0BBAD4: db $9D, $A5, $A6, $87, $88
#_0BBAD9: db $62 ; Increment fill
#_0BBADA: db $A7
#_0BBADB: db $85 ; Copy past
#_0BBADC: dw $B300
#_0BBADE: db $06 ; Raw block
#_0BBADF: db $AA, $A4, $9D, $AB, $A2, $88, $88
#_0BBAE6: db $62 ; Increment fill
#_0BBAE7: db $AC
#_0BBAE8: db $84 ; Copy past
#_0BBAE9: dw $B300
#_0BBAEB: db $22 ; Repeat byte
#_0BBAEC: db $A4
#_0BBAED: db $84 ; Copy past
#_0BBAEE: dw $CB00
#_0BBAF0: db $01 ; Raw block
#_0BBAF1: db $AF, $B0
#_0BBAF3: db $84 ; Copy past
#_0BBAF4: dw $D200
#_0BBAF6: db $24 ; Repeat byte
#_0BBAF7: db $9D
#_0BBAF8: db $83 ; Copy past
#_0BBAF9: dw $CC00
#_0BBAFB: db $63 ; Increment fill
#_0BBAFC: db $B1
#_0BBAFD: db $01 ; Raw block
#_0BBAFE: db $A3, $88
#_0BBB00: db $64 ; Increment fill
#_0BBB01: db $B5
#_0BBB02: db $04 ; Raw block
#_0BBB03: db $B6, $BA, $A2, $88, $88
#_0BBB08: db $FF ; End of Map 30

;===================================================================================================

OverworldMap32_Screen31_High:
#_0BBB09: db $2F ; Repeat byte
#_0BBB0A: db $0E
#_0BBB0B: db $27 ; Repeat byte
#_0BBB0C: db $01
#_0BBB0D: db $29 ; Repeat byte
#_0BBB0E: db $0E
#_0BBB0F: db $00 ; Raw block
#_0BBB10: db $01
#_0BBB11: db $22 ; Repeat byte
#_0BBB12: db $0E
#_0BBB13: db $01 ; Raw block
#_0BBB14: db $01, $01
#_0BBB16: db $2D ; Repeat byte
#_0BBB17: db $0E
#_0BBB18: db $01 ; Raw block
#_0BBB19: db $07, $00
#_0BBB1B: db $30 ; Repeat byte
#_0BBB1C: db $0E
#_0BBB1D: db $00 ; Raw block
#_0BBB1E: db $02
#_0BBB1F: db $3B ; Repeat byte
#_0BBB20: db $0E
#_0BBB21: db $00 ; Raw block
#_0BBB22: db $02
#_0BBB23: db $E4, $20 ; EXT Repeat byte
#_0BBB25: db $0E
#_0BBB26: db $02 ; Raw block
#_0BBB27: db $01, $0E, $01
#_0BBB2A: db $24 ; Repeat byte
#_0BBB2B: db $0E
#_0BBB2C: db $00 ; Raw block
#_0BBB2D: db $07
#_0BBB2E: db $25 ; Repeat byte
#_0BBB2F: db $0E
#_0BBB30: db $00 ; Raw block
#_0BBB31: db $0A
#_0BBB32: db $43 ; Repeat word
#_0BBB33: dw $0E0A
#_0BBB35: db $00 ; Raw block
#_0BBB36: db $05
#_0BBB37: db $3F ; Repeat byte
#_0BBB38: db $0E
#_0BBB39: db $00 ; Raw block
#_0BBB3A: db $06
#_0BBB3B: db $2E ; Repeat byte
#_0BBB3C: db $0E
#_0BBB3D: db $01 ; Raw block
#_0BBB3E: db $01, $01
#_0BBB40: db $2F ; Repeat byte
#_0BBB41: db $0E
#_0BBB42: db $00 ; Raw block
#_0BBB43: db $01
#_0BBB44: db $3F ; Repeat byte
#_0BBB45: db $0E
#_0BBB46: db $FF ; End of Map 31

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen31_Low:
#_0BBB47: db $02 ; Raw block
#_0BBB48: db $BB, $5F, $BB
#_0BBB4B: db $2C ; Repeat byte
#_0BBB4C: db $5F
#_0BBB4D: db $27 ; Repeat byte
#_0BBB4E: db $0A
#_0BBB4F: db $00 ; Raw block
#_0BBB50: db $BC
#_0BBB51: db $26 ; Repeat byte
#_0BBB52: db $5F
#_0BBB53: db $09 ; Raw block
#_0BBB54: db $54, $BD, $15, $BE, $54, $BF, $22, $22
#_0BBB5C: db $C0, $BC
#_0BBB5E: db $25 ; Repeat byte
#_0BBB5F: db $5F
#_0BBB60: db $09 ; Raw block
#_0BBB61: db $C1, $C2, $8D, $C3, $BC, $C4, $AF, $1D
#_0BBB69: db $C5, $C6
#_0BBB6B: db $25 ; Repeat byte
#_0BBB6C: db $5F
#_0BBB6D: db $03 ; Raw block
#_0BBB6E: db $B2, $A3, $88, $8C
#_0BBB72: db $62 ; Increment fill
#_0BBB73: db $C7
#_0BBB74: db $02 ; Raw block
#_0BBB75: db $C9, $CA, $69
#_0BBB78: db $25 ; Repeat byte
#_0BBB79: db $5F
#_0BBB7A: db $03 ; Raw block
#_0BBB7B: db $B2, $A3, $88, $88
#_0BBB7F: db $65 ; Increment fill
#_0BBB80: db $CB
#_0BBB81: db $25 ; Repeat byte
#_0BBB82: db $5F
#_0BBB83: db $06 ; Raw block
#_0BBB84: db $D1, $D2, $88, $D3, $CB, $D4, $69
#_0BBB8B: db $28 ; Repeat byte
#_0BBB8C: db $5F
#_0BBB8D: db $03 ; Raw block
#_0BBB8E: db $D5, $D6, $88, $88
#_0BBB92: db $65 ; Increment fill
#_0BBB93: db $D7
#_0BBB94: db $0A ; Raw block
#_0BBB95: db $44, $DD, $5F, $DE, $5F, $5F, $DF, $E0
#_0BBB9D: db $D3, $88, $8C
#_0BBBA0: db $62 ; Increment fill
#_0BBBA1: db $E1
#_0BBBA2: db $E0, $27 ; EXT Raw block
#_0BBBA4: db $F8, $E4, $F8, $E5, $BC, $5F, $5F, $DE
#_0BBBAC: db $6F, $E6, $88, $E7, $88, $8C, $E8, $08
#_0BBBB4: db $08, $E9, $08, $83, $B1, $BC, $BB, $5F
#_0BBBBC: db $87, $88, $D3, $EA, $EA, $88, $EB, $88
#_0BBBC4: db $D3, $88, $EC, $8C, $ED, $EE, $5F, $5F
#_0BBBCC: db $25 ; Repeat byte
#_0BBBCD: db $88
#_0BBBCE: db $00 ; Raw block
#_0BBBCF: db $EF
#_0BBBD0: db $22 ; Repeat byte
#_0BBBD1: db $88
#_0BBBD2: db $0E ; Raw block
#_0BBBD3: db $D3, $88, $CB, $12, $F0, $BB, $88, $88
#_0BBBDB: db $EC, $88, $88, $E7, $88, $88, $E7
#_0BBBE2: db $22 ; Repeat byte
#_0BBBE3: db $88
#_0BBBE4: db $03 ; Raw block
#_0BBBE5: db $F1, $03, $17, $44
#_0BBBE9: db $2C ; Repeat byte
#_0BBBEA: db $88
#_0BBBEB: db $04 ; Raw block
#_0BBBEC: db $F2, $F3, $02, $88, $F4
#_0BBBF1: db $22 ; Repeat byte
#_0BBBF2: db $88
#_0BBBF3: db $03 ; Raw block
#_0BBBF4: db $EC, $88, $88, $EC
#_0BBBF8: db $24 ; Repeat byte
#_0BBBF9: db $88
#_0BBBFA: db $03 ; Raw block
#_0BBBFB: db $F5, $5F, $88, $F6
#_0BBBFF: db $24 ; Repeat byte
#_0BBC00: db $88
#_0BBC01: db $00 ; Raw block
#_0BBC02: db $EC
#_0BBC03: db $25 ; Repeat byte
#_0BBC04: db $88
#_0BBC05: db $01 ; Raw block
#_0BBC06: db $F5, $5F
#_0BBC08: db $FF ; End of Map 31

;===================================================================================================

OverworldMap32_Screen32_High:
#_0BBC09: db $03 ; Raw block
#_0BBC0A: db $00, $01, $07, $01
#_0BBC0E: db $22 ; Repeat byte
#_0BBC0F: db $08
#_0BBC10: db $08 ; Raw block
#_0BBC11: db $02, $0E, $04, $08, $08, $04, $08, $08
#_0BBC19: db $04
#_0BBC1A: db $83 ; Copy past
#_0BBC1B: dw $0000
#_0BBC1D: db $22 ; Repeat byte
#_0BBC1E: db $08
#_0BBC1F: db $00 ; Raw block
#_0BBC20: db $06
#_0BBC21: db $86 ; Copy past
#_0BBC22: dw $0800
#_0BBC24: db $22 ; Repeat byte
#_0BBC25: db $04
#_0BBC26: db $06 ; Raw block
#_0BBC27: db $07, $06, $08, $08, $01, $00, $01
#_0BBC2E: db $26 ; Repeat byte
#_0BBC2F: db $08
#_0BBC30: db $0A ; Raw block
#_0BBC31: db $01, $01, $0C, $06, $00, $01, $01, $06
#_0BBC39: db $01, $01, $06
#_0BBC3C: db $83 ; Copy past
#_0BBC3D: dw $0E00
#_0BBC3F: db $00 ; Raw block
#_0BBC40: db $03
#_0BBC41: db $23 ; Repeat byte
#_0BBC42: db $0E
#_0BBC43: db $1F ; Raw block
#_0BBC44: db $06, $03, $04, $00, $03, $04, $0E, $01
#_0BBC4C: db $00, $00, $01, $06, $01, $02, $02, $0E
#_0BBC54: db $0E, $0F, $0F, $00, $0C, $00, $07, $03
#_0BBC5C: db $06, $01, $06, $07, $01, $01, $02, $02
#_0BBC64: db $26 ; Repeat byte
#_0BBC65: db $0F
#_0BBC66: db $01 ; Raw block
#_0BBC67: db $07, $0F
#_0BBC69: db $22 ; Repeat byte
#_0BBC6A: db $00
#_0BBC6B: db $01 ; Raw block
#_0BBC6C: db $0E, $01
#_0BBC6E: db $23 ; Repeat byte
#_0BBC6F: db $0F
#_0BBC70: db $22 ; Repeat byte
#_0BBC71: db $02
#_0BBC72: db $02 ; Raw block
#_0BBC73: db $0F, $0F, $06
#_0BBC76: db $83 ; Copy past
#_0BBC77: dw $7400
#_0BBC79: db $24 ; Repeat byte
#_0BBC7A: db $0F
#_0BBC7B: db $00 ; Raw block
#_0BBC7C: db $05
#_0BBC7D: db $83 ; Copy past
#_0BBC7E: dw $7900
#_0BBC80: db $05 ; Raw block
#_0BBC81: db $00, $00, $01, $01, $00, $06
#_0BBC87: db $22 ; Repeat byte
#_0BBC88: db $0F
#_0BBC89: db $01 ; Raw block
#_0BBC8A: db $0C, $05
#_0BBC8C: db $23 ; Repeat byte
#_0BBC8D: db $0F
#_0BBC8E: db $01 ; Raw block
#_0BBC8F: db $03, $03
#_0BBC91: db $83 ; Copy past
#_0BBC92: dw $8B00
#_0BBC94: db $02 ; Raw block
#_0BBC95: db $02, $0F, $0C
#_0BBC98: db $24 ; Repeat byte
#_0BBC99: db $05
#_0BBC9A: db $01 ; Raw block
#_0BBC9B: db $0F, $0F
#_0BBC9D: db $23 ; Repeat byte
#_0BBC9E: db $03
#_0BBC9F: db $03 ; Raw block
#_0BBCA0: db $04, $06, $00, $0F
#_0BBCA4: db $25 ; Repeat byte
#_0BBCA5: db $05
#_0BBCA6: db $0A ; Raw block
#_0BBCA7: db $0F, $05, $0F, $0E, $03, $03, $01, $01
#_0BBCAF: db $02, $0F, $0F
#_0BBCB2: db $23 ; Repeat byte
#_0BBCB3: db $05
#_0BBCB4: db $09 ; Raw block
#_0BBCB5: db $0F, $0E, $0C, $01, $03, $01, $00, $03
#_0BBCBD: db $03, $00
#_0BBCBF: db $22 ; Repeat byte
#_0BBCC0: db $0F
#_0BBCC1: db $01 ; Raw block
#_0BBCC2: db $05, $05
#_0BBCC4: db $26 ; Repeat byte
#_0BBCC5: db $0F
#_0BBCC6: db $03 ; Raw block
#_0BBCC7: db $0B, $03, $00, $03
#_0BBCCB: db $26 ; Repeat byte
#_0BBCCC: db $0F
#_0BBCCD: db $00 ; Raw block
#_0BBCCE: db $01
#_0BBCCF: db $24 ; Repeat byte
#_0BBCD0: db $0F
#_0BBCD1: db $22 ; Repeat byte
#_0BBCD2: db $02
#_0BBCD3: db $03 ; Raw block
#_0BBCD4: db $0E, $0F, $0F, $0B
#_0BBCD8: db $83 ; Copy past
#_0BBCD9: dw $7000
#_0BBCDB: db $00 ; Raw block
#_0BBCDC: db $01
#_0BBCDD: db $43 ; Repeat word
#_0BBCDE: dw $0F0B
#_0BBCE0: db $02 ; Raw block
#_0BBCE1: db $0F, $01, $0A
#_0BBCE4: db $FF ; End of Map 32

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen32_Low:
#_0BBCE5: db $E0, $28 ; EXT Raw block
#_0BBCE7: db $83, $1C, $41, $4D, $43, $44, $9A, $DE
#_0BBCEF: db $F7, $4A, $99, $44, $4A, $99, $44, $4A
#_0BBCF7: db $8C, $29, $41, $57, $4A, $4B, $A0, $66
#_0BBCFF: db $F8, $39, $9F, $4B, $39, $9F, $4B, $39
#_0BBD07: db $07, $60, $41, $66, $4D, $4E, $62, $1D
#_0BBD0F: db $61
#_0BBD10: db $62 ; Increment fill
#_0BBD11: db $A4
#_0BBD12: db $13 ; Raw block
#_0BBD13: db $9C, $A5, $A6, $9C, $1B, $1C, $8A, $8F
#_0BBD1B: db $1D, $67, $68, $B3, $67, $68, $70, $2D
#_0BBD23: db $56, $B6, $26, $D5
#_0BBD27: db $63 ; Increment fill
#_0BBD28: db $F9
#_0BBD29: db $1F ; Raw block
#_0BBD2A: db $8F, $DB, $25, $1F, $DB, $25, $FD, $1E
#_0BBD32: db $EE, $09, $2F, $66, $EB, $D1, $D2, $FE
#_0BBD3A: db $FF, $00, $01, $1F, $29, $1C, $C5, $FF
#_0BBD42: db $2D, $0E, $2B, $2B, $06, $06, $DC, $DD
#_0BBD4A: db $66 ; Increment fill
#_0BBD4B: db $02
#_0BBD4C: db $01 ; Raw block
#_0BBD4D: db $C5, $09
#_0BBD4F: db $22 ; Repeat byte
#_0BBD50: db $A1
#_0BBD51: db $01 ; Raw block
#_0BBD52: db $40, $06
#_0BBD54: db $63 ; Increment fill
#_0BBD55: db $0A
#_0BBD56: db $22 ; Repeat byte
#_0BBD57: db $5B
#_0BBD58: db $06 ; Raw block
#_0BBD59: db $0E, $0F, $9C, $10, $11, $5A, $5B
#_0BBD60: db $64 ; Increment fill
#_0BBD61: db $12
#_0BBD62: db $0A ; Raw block
#_0BBD63: db $B8, $17, $18, $66, $19, $A5, $1D, $61
#_0BBD6B: db $62, $B2, $66
#_0BBD6E: db $62 ; Increment fill
#_0BBD6F: db $1A
#_0BBD70: db $01 ; Raw block
#_0BBD71: db $91, $FB
#_0BBD73: db $63 ; Increment fill
#_0BBD74: db $1D
#_0BBD75: db $08 ; Raw block
#_0BBD76: db $44, $86, $1D, $67, $68, $1D, $DE, $21
#_0BBD7E: db $91
#_0BBD7F: db $24 ; Repeat byte
#_0BBD80: db $FB
#_0BBD81: db $09 ; Raw block
#_0BBD82: db $22, $23, $8C, $8D, $86, $DB, $25, $66
#_0BBD8A: db $1D, $24
#_0BBD8C: db $25 ; Repeat byte
#_0BBD8D: db $FB
#_0BBD8E: db $0A ; Raw block
#_0BBD8F: db $25, $9D, $26, $3C, $8D, $E2, $4B, $1E
#_0BBD97: db $DE, $24, $27
#_0BBD9A: db $23 ; Repeat byte
#_0BBD9B: db $FB
#_0BBD9C: db $10 ; Raw block
#_0BBD9D: db $28, $F5, $ED, $06, $63, $E3, $1D, $FF
#_0BBDA5: db $FF, $1C, $29, $2A, $27, $FB, $FB, $28
#_0BBDAD: db $25
#_0BBDAE: db $64 ; Increment fill
#_0BBDAF: db $2B
#_0BBDB0: db $0B ; Raw block
#_0BBDB1: db $46, $E2, $1D, $D5, $30, $29, $31, $32
#_0BBDB9: db $32, $33, $2B, $69
#_0BBDBD: db $64 ; Increment fill
#_0BBDBE: db $34
#_0BBDBF: db $22 ; Repeat byte
#_0BBDC0: db $4C
#_0BBDC1: db $0F ; Raw block
#_0BBDC2: db $3C, $30, $39, $4B, $40, $06, $3A, $3B
#_0BBDCA: db $6A, $4D, $3C, $4B, $3D, $3E, $EB, $79
#_0BBDD2: db $FF ; End of Map 32

;===================================================================================================

OverworldMap32_Screen35_High:
#_0BBDD3: db $0D ; Raw block
#_0BBDD4: db $0D, $0B, $03, $01, $00, $00, $07, $00
#_0BBDDC: db $00, $06, $03, $03, $0F, $0F
#_0BBDE2: db $25 ; Repeat byte
#_0BBDE3: db $03
#_0BBDE4: db $00 ; Raw block
#_0BBDE5: db $00
#_0BBDE6: db $44 ; Repeat word
#_0BBDE7: dw $0706
#_0BBDE9: db $01 ; Raw block
#_0BBDEA: db $03, $03
#_0BBDEC: db $26 ; Repeat byte
#_0BBDED: db $0F
#_0BBDEE: db $08 ; Raw block
#_0BBDEF: db $03, $00, $0F, $0F, $00, $02, $0F, $00
#_0BBDF7: db $03
#_0BBDF8: db $22 ; Repeat byte
#_0BBDF9: db $0F
#_0BBDFA: db $19 ; Raw block
#_0BBDFB: db $01, $0F, $07, $03, $03, $0F, $07, $0F
#_0BBE03: db $0F, $07, $09, $0C, $0F, $05, $04, $0F
#_0BBE0B: db $0F, $03, $02, $00, $00, $0F, $07, $0F
#_0BBE13: db $06, $00
#_0BBE15: db $22 ; Repeat byte
#_0BBE16: db $0F
#_0BBE17: db $03 ; Raw block
#_0BBE18: db $02, $04, $0C, $06
#_0BBE1C: db $24 ; Repeat byte
#_0BBE1D: db $0F
#_0BBE1E: db $83 ; Copy past
#_0BBE1F: dw $3D00
#_0BBE21: db $22 ; Repeat byte
#_0BBE22: db $0F
#_0BBE23: db $02 ; Raw block
#_0BBE24: db $02, $07, $05
#_0BBE27: db $27 ; Repeat byte
#_0BBE28: db $0F
#_0BBE29: db $00 ; Raw block
#_0BBE2A: db $02
#_0BBE2B: db $23 ; Repeat byte
#_0BBE2C: db $0F
#_0BBE2D: db $03 ; Raw block
#_0BBE2E: db $07, $0F, $0F, $05
#_0BBE32: db $23 ; Repeat byte
#_0BBE33: db $0F
#_0BBE34: db $03 ; Raw block
#_0BBE35: db $03, $0F, $02, $05
#_0BBE39: db $83 ; Copy past
#_0BBE3A: dw $6C00
#_0BBE3C: db $02 ; Raw block
#_0BBE3D: db $09, $07, $08
#_0BBE40: db $23 ; Repeat byte
#_0BBE41: db $0F
#_0BBE42: db $06 ; Raw block
#_0BBE43: db $08, $08, $0F, $07, $07, $0E, $0F
#_0BBE4A: db $83 ; Copy past
#_0BBE4B: dw $8500
#_0BBE4D: db $04 ; Raw block
#_0BBE4E: db $09, $0C, $0F, $0D, $0F
#_0BBE53: db $83 ; Copy past
#_0BBE54: dw $4200
#_0BBE56: db $01 ; Raw block
#_0BBE57: db $0E, $05
#_0BBE59: db $25 ; Repeat byte
#_0BBE5A: db $0F
#_0BBE5B: db $02 ; Raw block
#_0BBE5C: db $09, $0F, $0B
#_0BBE5F: db $84 ; Copy past
#_0BBE60: dw $8200
#_0BBE62: db $83 ; Copy past
#_0BBE63: dw $6A00
#_0BBE65: db $04 ; Raw block
#_0BBE66: db $05, $0F, $06, $0F, $05
#_0BBE6B: db $22 ; Repeat byte
#_0BBE6C: db $0F
#_0BBE6D: db $04 ; Raw block
#_0BBE6E: db $00, $00, $0F, $08, $09
#_0BBE73: db $83 ; Copy past
#_0BBE74: dw $6E00
#_0BBE76: db $1D ; Raw block
#_0BBE77: db $0C, $0D, $0F, $09, $0F, $07, $02, $00
#_0BBE7F: db $03, $02, $04, $05, $09, $07, $05, $07
#_0BBE87: db $02, $07, $05, $05, $0F, $02, $05, $01
#_0BBE8F: db $0D, $0F, $05, $07, $05, $08
#_0BBE95: db $23 ; Repeat byte
#_0BBE96: db $07
#_0BBE97: db $0A ; Raw block
#_0BBE98: db $05, $08, $0F, $0F, $04, $04, $0D, $06
#_0BBEA0: db $05, $07, $05
#_0BBEA3: db $22 ; Repeat byte
#_0BBEA4: db $0F
#_0BBEA5: db $0A ; Raw block
#_0BBEA6: db $09, $05, $0F, $0C, $0F, $0F, $02, $01
#_0BBEAE: db $03, $00, $0F
#_0BBEB1: db $83 ; Copy past
#_0BBEB2: dw $5D00
#_0BBEB4: db $00 ; Raw block
#_0BBEB5: db $05
#_0BBEB6: db $23 ; Repeat byte
#_0BBEB7: db $0F
#_0BBEB8: db $FF ; End of Map 35

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen35_Low:
#_0BBEB9: db $0E ; Raw block
#_0BBEBA: db $4B, $56, $63, $E3, $1D, $1C, $41, $1D
#_0BBEC2: db $1D, $66, $50, $51, $3F, $3F, $52
#_0BBEC9: db $22 ; Repeat byte
#_0BBECA: db $20
#_0BBECB: db $09 ; Raw block
#_0BBECC: db $94, $95, $1D, $8B, $47, $9C, $04, $8F
#_0BBED4: db $56, $57
#_0BBED6: db $64 ; Increment fill
#_0BBED7: db $40
#_0BBED8: db $0A ; Raw block
#_0BBED9: db $44, $45, $9D, $1D, $46, $47, $1D, $5E
#_0BBEE1: db $48, $1D, $56
#_0BBEE4: db $62 ; Increment fill
#_0BBEE5: db $49
#_0BBEE6: db $19 ; Raw block
#_0BBEE7: db $02, $4C, $6F, $BB, $A8, $4D, $41, $4E
#_0BBEEF: db $4F, $09, $B2, $39, $50, $0C, $8A, $51
#_0BBEF7: db $52, $63, $86, $1D, $1D, $4D, $41, $4E
#_0BBEFF: db $3E, $1D
#_0BBF01: db $62 ; Increment fill
#_0BBF02: db $53
#_0BBF03: db $03 ; Raw block
#_0BBF04: db $08, $90, $74, $A0
#_0BBF08: db $64 ; Increment fill
#_0BBF09: db $56
#_0BBF0A: db $03 ; Raw block
#_0BBF0B: db $37, $5B, $5C, $B3
#_0BBF0F: db $62 ; Increment fill
#_0BBF10: db $5D
#_0BBF11: db $02 ; Raw block
#_0BBF12: db $FB, $1B, $9F
#_0BBF15: db $65 ; Increment fill
#_0BBF16: db $60
#_0BBF17: db $02 ; Raw block
#_0BBF18: db $5B, $66, $79
#_0BBF1B: db $63 ; Increment fill
#_0BBF1C: db $67
#_0BBF1D: db $04 ; Raw block
#_0BBF1E: db $79, $6B, $6C, $BD, $61
#_0BBF23: db $62 ; Increment fill
#_0BBF24: db $6D
#_0BBF25: db $0A ; Raw block
#_0BBF26: db $FF, $66, $79, $99, $31, $70, $71, $E1
#_0BBF2E: db $36, $36, $AA
#_0BBF31: db $63 ; Increment fill
#_0BBF32: db $72
#_0BBF33: db $15 ; Raw block
#_0BBF34: db $2D, $2D, $76, $1E, $18, $23, $77, $78
#_0BBF3C: db $83, $84, $27, $52, $4C, $79, $9E, $7A
#_0BBF44: db $1D, $1D, $7B, $8E, $23, $BC
#_0BBF4A: db $65 ; Increment fill
#_0BBF4B: db $7C
#_0BBF4C: db $E0, $5C ; EXT Raw block
#_0BBF4E: db $52, $82, $56, $83, $2D, $2D, $84, $8E
#_0BBF56: db $85, $86, $4C, $87, $FB, $88, $05, $89
#_0BBF5E: db $C5, $8A, $4C, $8B, $1D, $1D, $8C, $C0
#_0BBF66: db $52, $8D, $97, $8E, $8F, $AD, $78, $90
#_0BBF6E: db $83, $91, $6F, $7A, $1D, $FF, $30, $F3
#_0BBF76: db $DF, $36, $20, $AB, $3F, $FB, $1B, $9F
#_0BBF7E: db $E1, $61, $86, $46, $F2, $B0, $92, $6F
#_0BBF86: db $8E, $E1, $AA, $20, $44, $79, $31, $E1
#_0BBF8E: db $AA, $61, $93, $B2, $7B, $B9, $3A, $6F
#_0BBF96: db $8E, $E1, $70, $60, $94, $90, $E1, $95
#_0BBF9E: db $4C, $61, $96, $02, $22, $A8, $1C, $97
#_0BBFA6: db $8E, $E1, $98, $99, $A4
#_0BBFAB: db $63 ; Increment fill
#_0BBFAC: db $9A
#_0BBFAD: db $FF ; End of Map 35

;===================================================================================================

OverworldMap32_Screen36_High:
#_0BBFAE: db $17 ; Raw block
#_0BBFAF: db $03, $06, $0F, $03, $03, $01, $0B, $02
#_0BBFB7: db $0F, $07, $05, $07, $08, $0F, $02, $02
#_0BBFBF: db $0F, $03, $07, $0F, $0F, $01, $07, $06
#_0BBFC7: db $84 ; Copy past
#_0BBFC8: dw $0800
#_0BBFCA: db $04 ; Raw block
#_0BBFCB: db $01, $02, $02, $0F, $0F
#_0BBFD0: db $23 ; Repeat byte
#_0BBFD1: db $01
#_0BBFD2: db $09 ; Raw block
#_0BBFD3: db $0F, $0E, $0F, $07, $05, $09, $02, $0F
#_0BBFDB: db $02, $02
#_0BBFDD: db $27 ; Repeat byte
#_0BBFDE: db $0F
#_0BBFDF: db $14 ; Raw block
#_0BBFE0: db $05, $0F, $05, $09, $0F, $01, $02, $02
#_0BBFE8: db $07, $01, $0F, $06, $06, $0F, $01, $05
#_0BBFF0: db $07, $07, $04, $01, $06
#_0BBFF5: db $83 ; Copy past
#_0BBFF6: dw $1D00
#_0BBFF8: db $00 ; Raw block
#_0BBFF9: db $09
#_0BBFFA: db $24 ; Repeat byte
#_0BBFFB: db $05
#_0BBFFC: db $22 ; Repeat byte
#_0BBFFD: db $07
#_0BBFFE: db $01 ; Raw block
#_0BBFFF: db $09, $06
#_0BC001: db $62 ; Increment fill
#_0BC002: db $00
#_0BC003: db $22 ; Repeat byte
#_0BC004: db $0F
#_0BC005: db $00 ; Raw block
#_0BC006: db $05
#_0BC007: db $43 ; Repeat word
#_0BC008: dw $0905
#_0BC00A: db $06 ; Raw block
#_0BC00B: db $08, $0F, $07, $07, $01, $04, $01
#_0BC012: db $22 ; Repeat byte
#_0BC013: db $0F
#_0BC014: db $01 ; Raw block
#_0BC015: db $05, $07
#_0BC017: db $22 ; Repeat byte
#_0BC018: db $05
#_0BC019: db $06 ; Raw block
#_0BC01A: db $09, $07, $07, $05, $07, $07, $0F
#_0BC021: db $43 ; Repeat word
#_0BC022: dw $050F
#_0BC024: db $43 ; Repeat word
#_0BC025: dw $0709
#_0BC027: db $08 ; Raw block
#_0BC028: db $05, $07, $05, $09, $05, $0F, $07, $0F
#_0BC030: db $05
#_0BC031: db $85 ; Copy past
#_0BC032: dw $6000
#_0BC034: db $23 ; Repeat byte
#_0BC035: db $0F
#_0BC036: db $0A ; Raw block
#_0BC037: db $09, $05, $05, $07, $05, $0B, $0F, $02
#_0BC03F: db $09, $09, $05
#_0BC042: db $24 ; Repeat byte
#_0BC043: db $0F
#_0BC044: db $00 ; Raw block
#_0BC045: db $07
#_0BC046: db $23 ; Repeat byte
#_0BC047: db $05
#_0BC048: db $0B ; Raw block
#_0BC049: db $07, $0F, $02, $05, $05, $0F, $01, $0F
#_0BC051: db $0F, $06, $0D, $0F
#_0BC055: db $22 ; Repeat byte
#_0BC056: db $07
#_0BC057: db $05 ; Raw block
#_0BC058: db $05, $07, $0F, $0F, $07, $07
#_0BC05E: db $44 ; Repeat word
#_0BC05F: dw $0F01
#_0BC061: db $04 ; Raw block
#_0BC062: db $01, $0F, $0F, $07, $08
#_0BC067: db $84 ; Copy past
#_0BC068: dw $7A00
#_0BC06A: db $03 ; Raw block
#_0BC06B: db $07, $0F, $01, $02
#_0BC06F: db $23 ; Repeat byte
#_0BC070: db $01
#_0BC071: db $00 ; Raw block
#_0BC072: db $0F
#_0BC073: db $22 ; Repeat byte
#_0BC074: db $05
#_0BC075: db $00 ; Raw block
#_0BC076: db $07
#_0BC077: db $83 ; Copy past
#_0BC078: dw $C700
#_0BC07A: db $03 ; Raw block
#_0BC07B: db $0F, $02, $06, $01
#_0BC07F: db $83 ; Copy past
#_0BC080: dw $5C00
#_0BC082: db $43 ; Repeat word
#_0BC083: dw $0705
#_0BC085: db $83 ; Copy past
#_0BC086: dw $6F00
#_0BC088: db $0D ; Raw block
#_0BC089: db $03, $00, $06, $05, $06, $00, $00, $07
#_0BC091: db $05, $0F, $07, $0B, $0F, $01
#_0BC097: db $FF ; End of Map 36

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen36_Low:
#_0BC098: db $18 ; Raw block
#_0BC099: db $21, $A2, $4C, $20, $20, $0C, $4B, $DC
#_0BC0A1: db $61, $8E, $E1, $6E, $B7, $9E, $82, $82
#_0BC0A9: db $9F, $52, $6F, $43, $43, $17, $0E, $AA
#_0BC0B1: db $A0
#_0BC0B2: db $83 ; Copy past
#_0BC0B3: dw $0900
#_0BC0B5: db $12 ; Raw block
#_0BC0B6: db $77, $82, $82, $A1, $42, $ED, $02, $02
#_0BC0BE: db $03, $45, $56, $A2, $13, $E2, $15, $41
#_0BC0C6: db $9E, $82, $82
#_0BC0C9: db $62 ; Increment fill
#_0BC0CA: db $A3
#_0BC0CB: db $E0, $2B ; EXT Raw block
#_0BC0CD: db $3F, $3F, $A6, $A7, $A2, $99, $A8, $EE
#_0BC0D5: db $1B, $A9, $77, $82, $82, $1C, $09, $AA
#_0BC0DD: db $A0, $A0, $AB, $FD, $99, $1F, $32, $FA
#_0BC0E5: db $CC, $66, $77, $82, $82, $AC, $F7, $9F
#_0BC0ED: db $E1, $E1, $AB, $AC, $18, $36, $6E, $B7
#_0BC0F5: db $66, $A9, $77, $82
#_0BC0F9: db $62 ; Increment fill
#_0BC0FA: db $AD
#_0BC0FB: db $E0, $31 ; EXT Raw block
#_0BC0FD: db $E1, $E1, $36, $E1, $9D, $AA, $B0, $37
#_0BC105: db $38, $F0, $C2, $77, $AD, $B1, $B2, $E1
#_0BC10D: db $89, $E1, $E1, $E0, $90, $3E, $36, $AB
#_0BC115: db $3F, $28, $B3, $B4, $63, $B5, $E1, $36
#_0BC11D: db $36, $9D, $36, $E1, $20, $E1, $36, $E1
#_0BC125: db $B6, $30, $B7, $A2, $B8, $B9, $E1, $E1
#_0BC12D: db $0B, $E2
#_0BC12F: db $22 ; Repeat byte
#_0BC130: db $BA
#_0BC131: db $0B ; Raw block
#_0BC132: db $BB, $36, $E1, $E1, $20, $E1, $D9, $BC
#_0BC13A: db $82, $36, $36, $E2
#_0BC13E: db $62 ; Increment fill
#_0BC13F: db $BD
#_0BC140: db $02 ; Raw block
#_0BC141: db $BF, $C0, $43
#_0BC144: db $23 ; Repeat byte
#_0BC145: db $E1
#_0BC146: db $E0, $52 ; EXT Raw block
#_0BC148: db $4C, $C1, $82, $E1, $E2, $BD, $49, $C2
#_0BC150: db $C3, $A3, $9E, $C4, $43, $89, $20, $E1
#_0BC158: db $4C, $C1, $C5, $20, $32, $53, $C6, $F7
#_0BC160: db $C7, $0B, $0C, $C8, $C9, $54, $AA, $36
#_0BC168: db $4C, $C1, $CA, $E1, $6E, $CB, $FD, $02
#_0BC170: db $20, $23, $09, $FD, $CC, $C5, $E1, $E1
#_0BC178: db $32, $53, $CD, $CE, $6E, $CF, $04, $66
#_0BC180: db $4B, $1D, $1F, $04, $D0, $C5, $36, $E1
#_0BC188: db $37, $D1, $D2, $E1, $6E, $A0, $1D, $3A
#_0BC190: db $76, $3A, $1D, $1D, $5B, $C5, $D3, $3E
#_0BC198: db $D9, $BC, $25
#_0BC19B: db $FF ; End of Map 36

;===================================================================================================

OverworldMap32_Screen38_High:
#_0BC19C: db $02 ; Raw block
#_0BC19D: db $0F, $0E, $0F
#_0BC1A0: db $24 ; Repeat byte
#_0BC1A1: db $0E
#_0BC1A2: db $22 ; Repeat byte
#_0BC1A3: db $0F
#_0BC1A4: db $02 ; Raw block
#_0BC1A5: db $0E, $0F, $0F
#_0BC1A8: db $22 ; Repeat byte
#_0BC1A9: db $0E
#_0BC1AA: db $22 ; Repeat byte
#_0BC1AB: db $0F
#_0BC1AC: db $24 ; Repeat byte
#_0BC1AD: db $0E
#_0BC1AE: db $23 ; Repeat byte
#_0BC1AF: db $0F
#_0BC1B0: db $22 ; Repeat byte
#_0BC1B1: db $0E
#_0BC1B2: db $83 ; Copy past
#_0BC1B3: dw $0A00
#_0BC1B5: db $26 ; Repeat byte
#_0BC1B6: db $0E
#_0BC1B7: db $00 ; Raw block
#_0BC1B8: db $0A
#_0BC1B9: db $25 ; Repeat byte
#_0BC1BA: db $0E
#_0BC1BB: db $00 ; Raw block
#_0BC1BC: db $0F
#_0BC1BD: db $2D ; Repeat byte
#_0BC1BE: db $0E
#_0BC1BF: db $01 ; Raw block
#_0BC1C0: db $0F, $0F
#_0BC1C2: db $2D ; Repeat byte
#_0BC1C3: db $0E
#_0BC1C4: db $22 ; Repeat byte
#_0BC1C5: db $0F
#_0BC1C6: db $2C ; Repeat byte
#_0BC1C7: db $0E
#_0BC1C8: db $02 ; Raw block
#_0BC1C9: db $0F, $0E, $0F
#_0BC1CC: db $2B ; Repeat byte
#_0BC1CD: db $0E
#_0BC1CE: db $22 ; Repeat byte
#_0BC1CF: db $0F
#_0BC1D0: db $2C ; Repeat byte
#_0BC1D1: db $0E
#_0BC1D2: db $01 ; Raw block
#_0BC1D3: db $0F, $0F
#_0BC1D5: db $2D ; Repeat byte
#_0BC1D6: db $0E
#_0BC1D7: db $00 ; Raw block
#_0BC1D8: db $02
#_0BC1D9: db $2E ; Repeat byte
#_0BC1DA: db $0E
#_0BC1DB: db $00 ; Raw block
#_0BC1DC: db $02
#_0BC1DD: db $2E ; Repeat byte
#_0BC1DE: db $0E
#_0BC1DF: db $22 ; Repeat byte
#_0BC1E0: db $0F
#_0BC1E1: db $2A ; Repeat byte
#_0BC1E2: db $0E
#_0BC1E3: db $22 ; Repeat byte
#_0BC1E4: db $0F
#_0BC1E5: db $00 ; Raw block
#_0BC1E6: db $0C
#_0BC1E7: db $25 ; Repeat byte
#_0BC1E8: db $0F
#_0BC1E9: db $25 ; Repeat byte
#_0BC1EA: db $0E
#_0BC1EB: db $23 ; Repeat byte
#_0BC1EC: db $0F
#_0BC1ED: db $02 ; Raw block
#_0BC1EE: db $03, $00, $00
#_0BC1F1: db $83 ; Copy past
#_0BC1F2: dw $C000
#_0BC1F4: db $01 ; Raw block
#_0BC1F5: db $0E, $0E
#_0BC1F7: db $27 ; Repeat byte
#_0BC1F8: db $0F
#_0BC1F9: db $04 ; Raw block
#_0BC1FA: db $06, $0F, $0F, $00, $0C
#_0BC1FF: db $27 ; Repeat byte
#_0BC200: db $10
#_0BC201: db $01 ; Raw block
#_0BC202: db $0E, $0F
#_0BC204: db $28 ; Repeat byte
#_0BC205: db $10
#_0BC206: db $24 ; Repeat byte
#_0BC207: db $0E
#_0BC208: db $FF ; End of Map 38

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen38_Low:
#_0BC209: db $04 ; Raw block
#_0BC20A: db $D4, $B2, $D5, $B2, $A3
#_0BC20F: db $22 ; Repeat byte
#_0BC210: db $88
#_0BC211: db $62 ; Increment fill
#_0BC212: db $D6
#_0BC213: db $05 ; Raw block
#_0BC214: db $88, $D9, $DA, $88, $88, $AF
#_0BC21A: db $62 ; Increment fill
#_0BC21B: db $DB
#_0BC21C: db $00 ; Raw block
#_0BC21D: db $A3
#_0BC21E: db $23 ; Repeat byte
#_0BC21F: db $88
#_0BC220: db $63 ; Increment fill
#_0BC221: db $DE
#_0BC222: db $07 ; Raw block
#_0BC223: db $87, $88, $88, $E2, $C2, $E3, $E4, $A3
#_0BC22B: db $23 ; Repeat byte
#_0BC22C: db $88
#_0BC22D: db $03 ; Raw block
#_0BC22E: db $8C, $E8, $08, $87
#_0BC232: db $22 ; Repeat byte
#_0BC233: db $88
#_0BC234: db $04 ; Raw block
#_0BC235: db $B2, $A3, $E5, $B2, $A3
#_0BC23A: db $2A ; Repeat byte
#_0BC23B: db $88
#_0BC23C: db $04 ; Raw block
#_0BC23D: db $B2, $E6, $E7, $B2, $A3
#_0BC242: db $2A ; Repeat byte
#_0BC243: db $88
#_0BC244: db $04 ; Raw block
#_0BC245: db $B2, $E8, $E9, $DB, $D2
#_0BC24A: db $2A ; Repeat byte
#_0BC24B: db $88
#_0BC24C: db $04 ; Raw block
#_0BC24D: db $B2, $EA, $4A, $EB, $D6
#_0BC252: db $2A ; Repeat byte
#_0BC253: db $88
#_0BC254: db $03 ; Raw block
#_0BC255: db $DB, $EC, $EB, $D6
#_0BC259: db $2B ; Repeat byte
#_0BC25A: db $88
#_0BC25B: db $02 ; Raw block
#_0BC25C: db $ED, $EE, $D6
#_0BC25F: db $2C ; Repeat byte
#_0BC260: db $88
#_0BC261: db $01 ; Raw block
#_0BC262: db $DC, $A3
#_0BC264: db $2D ; Repeat byte
#_0BC265: db $88
#_0BC266: db $83 ; Copy past
#_0BC267: dw $9000
#_0BC269: db $00 ; Raw block
#_0BC26A: db $E7
#_0BC26B: db $2A ; Repeat byte
#_0BC26C: db $88
#_0BC26D: db $02 ; Raw block
#_0BC26E: db $EF, $F0, $F1
#_0BC271: db $2A ; Repeat byte
#_0BC272: db $88
#_0BC273: db $04 ; Raw block
#_0BC274: db $F2, $F3, $83, $E6, $F4
#_0BC279: db $22 ; Repeat byte
#_0BC27A: db $F5
#_0BC27B: db $01 ; Raw block
#_0BC27C: db $F6, $F1
#_0BC27E: db $25 ; Repeat byte
#_0BC27F: db $88
#_0BC280: db $0E ; Raw block
#_0BC281: db $F2, $F7, $83, $75, $B5, $FB, $1D, $F8
#_0BC289: db $E6, $F9, $F1, $88, $88, $FA, $FB
#_0BC290: db $22 ; Repeat byte
#_0BC291: db $FC
#_0BC292: db $07 ; Raw block
#_0BC293: db $FD, $FE, $75, $66, $FF, $FF, $1D, $E6
#_0BC29B: db $64 ; Increment fill
#_0BC29C: db $00
#_0BC29D: db $22 ; Repeat byte
#_0BC29E: db $05
#_0BC29F: db $02 ; Raw block
#_0BC2A0: db $BB, $FD, $06
#_0BC2A3: db $24 ; Repeat byte
#_0BC2A4: db $07
#_0BC2A5: db $62 ; Increment fill
#_0BC2A6: db $08
#_0BC2A7: db $01 ; Raw block
#_0BC2A8: db $D0, $CD
#_0BC2AA: db $22 ; Repeat byte
#_0BC2AB: db $CE
#_0BC2AC: db $FF ; End of Map 38

;===================================================================================================

OverworldMap32_Screen39_High:
#_0BC2AD: db $2E ; Repeat byte
#_0BC2AE: db $0E
#_0BC2AF: db $00 ; Raw block
#_0BC2B0: db $10
#_0BC2B1: db $3E ; Repeat byte
#_0BC2B2: db $0E
#_0BC2B3: db $00 ; Raw block
#_0BC2B4: db $10
#_0BC2B5: db $2A ; Repeat byte
#_0BC2B6: db $0E
#_0BC2B7: db $23 ; Repeat byte
#_0BC2B8: db $10
#_0BC2B9: db $2A ; Repeat byte
#_0BC2BA: db $0E
#_0BC2BB: db $24 ; Repeat byte
#_0BC2BC: db $10
#_0BC2BD: db $2A ; Repeat byte
#_0BC2BE: db $0E
#_0BC2BF: db $25 ; Repeat byte
#_0BC2C0: db $10
#_0BC2C1: db $29 ; Repeat byte
#_0BC2C2: db $0E
#_0BC2C3: db $01 ; Raw block
#_0BC2C4: db $10, $10
#_0BC2C6: db $2D ; Repeat byte
#_0BC2C7: db $0E
#_0BC2C8: db $01 ; Raw block
#_0BC2C9: db $10, $05
#_0BC2CB: db $28 ; Repeat byte
#_0BC2CC: db $0E
#_0BC2CD: db $01 ; Raw block
#_0BC2CE: db $10, $10
#_0BC2D0: db $23 ; Repeat byte
#_0BC2D1: db $0E
#_0BC2D2: db $01 ; Raw block
#_0BC2D3: db $10, $05
#_0BC2D5: db $84 ; Copy past
#_0BC2D6: dw $6900
#_0BC2D8: db $27 ; Repeat byte
#_0BC2D9: db $10
#_0BC2DA: db $83 ; Copy past
#_0BC2DB: dw $7800
#_0BC2DD: db $83 ; Copy past
#_0BC2DE: dw $3D00
#_0BC2E0: db $23 ; Repeat byte
#_0BC2E1: db $10
#_0BC2E2: db $00 ; Raw block
#_0BC2E3: db $0E
#_0BC2E4: db $22 ; Repeat byte
#_0BC2E5: db $10
#_0BC2E6: db $22 ; Repeat byte
#_0BC2E7: db $0E
#_0BC2E8: db $02 ; Raw block
#_0BC2E9: db $10, $03, $01
#_0BC2EC: db $25 ; Repeat byte
#_0BC2ED: db $10
#_0BC2EE: db $00 ; Raw block
#_0BC2EF: db $0E
#_0BC2F0: db $22 ; Repeat byte
#_0BC2F1: db $10
#_0BC2F2: db $24 ; Repeat byte
#_0BC2F3: db $0E
#_0BC2F4: db $00 ; Raw block
#_0BC2F5: db $0A
#_0BC2F6: db $2B ; Repeat byte
#_0BC2F7: db $10
#_0BC2F8: db $23 ; Repeat byte
#_0BC2F9: db $0E
#_0BC2FA: db $02 ; Raw block
#_0BC2FB: db $10, $10, $0F
#_0BC2FE: db $2D ; Repeat byte
#_0BC2FF: db $10
#_0BC300: db $00 ; Raw block
#_0BC301: db $0D
#_0BC302: db $2E ; Repeat byte
#_0BC303: db $10
#_0BC304: db $00 ; Raw block
#_0BC305: db $0F
#_0BC306: db $2A ; Repeat byte
#_0BC307: db $10
#_0BC308: db $02 ; Raw block
#_0BC309: db $0E, $10, $10
#_0BC30C: db $FF ; End of Map 39

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen39_Low:
#_0BC30D: db $22 ; Repeat byte
#_0BC30E: db $88
#_0BC30F: db $00 ; Raw block
#_0BC310: db $EC
#_0BC311: db $29 ; Repeat byte
#_0BC312: db $88
#_0BC313: db $01 ; Raw block
#_0BC314: db $F5, $0B
#_0BC316: db $25 ; Repeat byte
#_0BC317: db $88
#_0BC318: db $00 ; Raw block
#_0BC319: db $EC
#_0BC31A: db $26 ; Repeat byte
#_0BC31B: db $88
#_0BC31C: db $01 ; Raw block
#_0BC31D: db $F5, $5F
#_0BC31F: db $22 ; Repeat byte
#_0BC320: db $88
#_0BC321: db $00 ; Raw block
#_0BC322: db $EC
#_0BC323: db $29 ; Repeat byte
#_0BC324: db $88
#_0BC325: db $01 ; Raw block
#_0BC326: db $F5, $0B
#_0BC328: db $25 ; Repeat byte
#_0BC329: db $88
#_0BC32A: db $00 ; Raw block
#_0BC32B: db $EC
#_0BC32C: db $23 ; Repeat byte
#_0BC32D: db $88
#_0BC32E: db $04 ; Raw block
#_0BC32F: db $0C, $01, $0D, $0E, $5F
#_0BC334: db $22 ; Repeat byte
#_0BC335: db $88
#_0BC336: db $00 ; Raw block
#_0BC337: db $EC
#_0BC338: db $25 ; Repeat byte
#_0BC339: db $88
#_0BC33A: db $64 ; Increment fill
#_0BC33B: db $0F
#_0BC33C: db $00 ; Raw block
#_0BC33D: db $58
#_0BC33E: db $25 ; Repeat byte
#_0BC33F: db $88
#_0BC340: db $00 ; Raw block
#_0BC341: db $EC
#_0BC342: db $22 ; Repeat byte
#_0BC343: db $88
#_0BC344: db $64 ; Increment fill
#_0BC345: db $14
#_0BC346: db $00 ; Raw block
#_0BC347: db $18
#_0BC348: db $22 ; Repeat byte
#_0BC349: db $88
#_0BC34A: db $00 ; Raw block
#_0BC34B: db $EC
#_0BC34C: db $25 ; Repeat byte
#_0BC34D: db $88
#_0BC34E: db $01 ; Raw block
#_0BC34F: db $19, $1A
#_0BC351: db $23 ; Repeat byte
#_0BC352: db $5F
#_0BC353: db $25 ; Repeat byte
#_0BC354: db $88
#_0BC355: db $00 ; Raw block
#_0BC356: db $EC
#_0BC357: db $22 ; Repeat byte
#_0BC358: db $88
#_0BC359: db $02 ; Raw block
#_0BC35A: db $1B, $B1, $BC
#_0BC35D: db $22 ; Repeat byte
#_0BC35E: db $5F
#_0BC35F: db $22 ; Repeat byte
#_0BC360: db $88
#_0BC361: db $0E ; Raw block
#_0BC362: db $EC, $88, $1C, $1D, $88, $EB, $88, $8C
#_0BC36A: db $1E, $B1, $BC, $1F, $0B, $88, $88
#_0BC371: db $67 ; Increment fill
#_0BC372: db $20
#_0BC373: db $83 ; Copy past
#_0BC374: dw $8900
#_0BC376: db $03 ; Raw block
#_0BC377: db $28, $29, $88, $88
#_0BC37B: db $63 ; Increment fill
#_0BC37C: db $2A
#_0BC37D: db $00 ; Raw block
#_0BC37E: db $5F
#_0BC37F: db $62 ; Increment fill
#_0BC380: db $2E
#_0BC381: db $05 ; Raw block
#_0BC382: db $D3, $88, $8C, $1E, $5A, $F8
#_0BC388: db $65 ; Increment fill
#_0BC389: db $31
#_0BC38A: db $00 ; Raw block
#_0BC38B: db $5F
#_0BC38C: db $62 ; Increment fill
#_0BC38D: db $37
#_0BC38E: db $22 ; Repeat byte
#_0BC38F: db $88
#_0BC390: db $02 ; Raw block
#_0BC391: db $8C, $E8, $08
#_0BC394: db $63 ; Increment fill
#_0BC395: db $3A
#_0BC396: db $00 ; Raw block
#_0BC397: db $2D
#_0BC398: db $66 ; Increment fill
#_0BC399: db $3E
#_0BC39A: db $00 ; Raw block
#_0BC39B: db $D3
#_0BC39C: db $22 ; Repeat byte
#_0BC39D: db $88
#_0BC39E: db $02 ; Raw block
#_0BC39F: db $45, $46, $F2
#_0BC3A2: db $64 ; Increment fill
#_0BC3A3: db $47
#_0BC3A4: db $02 ; Raw block
#_0BC3A5: db $42, $4C, $4D
#_0BC3A8: db $24 ; Repeat byte
#_0BC3A9: db $01
#_0BC3AA: db $08 ; Raw block
#_0BC3AB: db $4E, $52, $4F, $01, $01, $50, $51, $01
#_0BC3B3: db $01
#_0BC3B4: db $62 ; Increment fill
#_0BC3B5: db $52
#_0BC3B6: db $23 ; Repeat byte
#_0BC3B7: db $09
#_0BC3B8: db $02 ; Raw block
#_0BC3B9: db $55, $FD, $56
#_0BC3BC: db $26 ; Repeat byte
#_0BC3BD: db $09
#_0BC3BE: db $62 ; Increment fill
#_0BC3BF: db $57
#_0BC3C0: db $02 ; Raw block
#_0BC3C1: db $CE, $55, $5A
#_0BC3C4: db $FF ; End of Map 39

;===================================================================================================

OverworldMap32_Screen3A_High:
#_0BC3C5: db $00 ; Raw block
#_0BC3C6: db $10
#_0BC3C7: db $2B ; Repeat byte
#_0BC3C8: db $01
#_0BC3C9: db $07 ; Raw block
#_0BC3CA: db $0E, $10, $0E, $0E, $10, $10, $01, $01
#_0BC3D2: db $24 ; Repeat byte
#_0BC3D3: db $10
#_0BC3D4: db $22 ; Repeat byte
#_0BC3D5: db $01
#_0BC3D6: db $03 ; Raw block
#_0BC3D7: db $05, $0E, $0F, $0E
#_0BC3DB: db $23 ; Repeat byte
#_0BC3DC: db $10
#_0BC3DD: db $00 ; Raw block
#_0BC3DE: db $01
#_0BC3DF: db $22 ; Repeat byte
#_0BC3E0: db $10
#_0BC3E1: db $03 ; Raw block
#_0BC3E2: db $02, $10, $10, $01
#_0BC3E6: db $43 ; Repeat word
#_0BC3E7: dw $0E10
#_0BC3E9: db $43 ; Repeat word
#_0BC3EA: dw $100E
#_0BC3EC: db $0B ; Raw block
#_0BC3ED: db $0B, $10, $0E, $0F, $01, $06, $00, $04
#_0BC3F5: db $01, $01, $0E, $0E
#_0BC3F9: db $25 ; Repeat byte
#_0BC3FA: db $10
#_0BC3FB: db $62 ; Increment fill
#_0BC3FC: db $0E
#_0BC3FD: db $01 ; Raw block
#_0BC3FE: db $00, $02
#_0BC400: db $22 ; Repeat byte
#_0BC401: db $01
#_0BC402: db $00 ; Raw block
#_0BC403: db $0E
#_0BC404: db $23 ; Repeat byte
#_0BC405: db $10
#_0BC406: db $06 ; Raw block
#_0BC407: db $0E, $03, $10, $01, $10, $02, $02
#_0BC40E: db $83 ; Copy past
#_0BC40F: dw $1200
#_0BC411: db $22 ; Repeat byte
#_0BC412: db $0E
#_0BC413: db $0C ; Raw block
#_0BC414: db $10, $10, $0E, $06, $03, $01, $10, $02
#_0BC41C: db $10, $00, $03, $03, $10
#_0BC421: db $22 ; Repeat byte
#_0BC422: db $0E
#_0BC423: db $09 ; Raw block
#_0BC424: db $10, $10, $0E, $02, $10, $10, $00, $10
#_0BC42C: db $0F, $04
#_0BC42E: db $22 ; Repeat byte
#_0BC42F: db $03
#_0BC430: db $02 ; Raw block
#_0BC431: db $01, $0E, $0E
#_0BC434: db $22 ; Repeat byte
#_0BC435: db $10
#_0BC436: db $01 ; Raw block
#_0BC437: db $03, $0F
#_0BC439: db $22 ; Repeat byte
#_0BC43A: db $10
#_0BC43B: db $03 ; Raw block
#_0BC43C: db $0F, $10, $10, $09
#_0BC440: db $83 ; Copy past
#_0BC441: dw $7E00
#_0BC443: db $22 ; Repeat byte
#_0BC444: db $10
#_0BC445: db $03 ; Raw block
#_0BC446: db $02, $0F, $06, $00
#_0BC44A: db $83 ; Copy past
#_0BC44B: dw $8900
#_0BC44D: db $04 ; Raw block
#_0BC44E: db $02, $05, $02, $01, $01
#_0BC453: db $22 ; Repeat byte
#_0BC454: db $10
#_0BC455: db $01 ; Raw block
#_0BC456: db $02, $0F
#_0BC458: db $22 ; Repeat byte
#_0BC459: db $10
#_0BC45A: db $02 ; Raw block
#_0BC45B: db $0F, $04, $09
#_0BC45E: db $22 ; Repeat byte
#_0BC45F: db $10
#_0BC460: db $03 ; Raw block
#_0BC461: db $0A, $0A, $10, $05
#_0BC465: db $22 ; Repeat byte
#_0BC466: db $10
#_0BC467: db $01 ; Raw block
#_0BC468: db $0B, $01
#_0BC46A: db $83 ; Copy past
#_0BC46B: dw $8900
#_0BC46D: db $05 ; Raw block
#_0BC46E: db $06, $0E, $0E, $0A, $05, $05
#_0BC474: db $23 ; Repeat byte
#_0BC475: db $10
#_0BC476: db $05 ; Raw block
#_0BC477: db $0F, $05, $10, $10, $03, $10
#_0BC47D: db $22 ; Repeat byte
#_0BC47E: db $01
#_0BC47F: db $23 ; Repeat byte
#_0BC480: db $10
#_0BC481: db $01 ; Raw block
#_0BC482: db $0E, $0E
#_0BC484: db $23 ; Repeat byte
#_0BC485: db $10
#_0BC486: db $00 ; Raw block
#_0BC487: db $0E
#_0BC488: db $83 ; Copy past
#_0BC489: dw $5400
#_0BC48B: db $00 ; Raw block
#_0BC48C: db $01
#_0BC48D: db $22 ; Repeat byte
#_0BC48E: db $10
#_0BC48F: db $01 ; Raw block
#_0BC490: db $0E, $10
#_0BC492: db $24 ; Repeat byte
#_0BC493: db $0E
#_0BC494: db $83 ; Copy past
#_0BC495: dw $D900
#_0BC497: db $23 ; Repeat byte
#_0BC498: db $10
#_0BC499: db $83 ; Copy past
#_0BC49A: dw $1E00
#_0BC49C: db $02 ; Raw block
#_0BC49D: db $0E, $0E, $10
#_0BC4A0: db $22 ; Repeat byte
#_0BC4A1: db $0E
#_0BC4A2: db $00 ; Raw block
#_0BC4A3: db $10
#_0BC4A4: db $22 ; Repeat byte
#_0BC4A5: db $03
#_0BC4A6: db $FF ; End of Map 3A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen3A_Low:
#_0BC4A7: db $01 ; Raw block
#_0BC4A8: db $5B, $09
#_0BC4AA: db $2A ; Repeat byte
#_0BC4AB: db $0A
#_0BC4AC: db $07 ; Raw block
#_0BC4AD: db $BC, $5C, $DE, $5F, $5D, $5E, $14, $15
#_0BC4B5: db $63 ; Increment fill
#_0BC4B6: db $5F
#_0BC4B7: db $00 ; Raw block
#_0BC4B8: db $5E
#_0BC4B9: db $22 ; Repeat byte
#_0BC4BA: db $15
#_0BC4BB: db $03 ; Raw block
#_0BC4BC: db $B1, $BC, $D4, $5F
#_0BC4C0: db $63 ; Increment fill
#_0BC4C1: db $63
#_0BC4C2: db $1B ; Raw block
#_0BC4C3: db $23, $67, $68, $63, $02, $69, $6A, $22
#_0BC4CB: db $6B, $EE, $1F, $5F, $A0, $6C, $5F, $6D
#_0BC4D3: db $F9, $6E, $BB, $83, $1E, $66, $1D, $BB
#_0BC4DB: db $77, $71, $8F, $58
#_0BC4DF: db $64 ; Increment fill
#_0BC4E0: db $6F
#_0BC4E1: db $E0, $4B ; EXT Raw block
#_0BC4E3: db $6E, $8F, $83, $74, $1D, $8A, $41, $5B
#_0BC4EB: db $5C, $5F, $18, $18, $75, $76, $C4, $E2
#_0BC4F3: db $77, $0A, $78, $8A, $8A, $79, $52, $53
#_0BC4FB: db $7A, $AC, $5F, $5F, $7B, $7C, $C4, $66
#_0BC503: db $56, $22, $7D, $F8, $7E, $1D, $50, $51
#_0BC50B: db $28, $44, $5F, $5F, $7F, $7C, $C4, $F8
#_0BC513: db $7E, $80, $A9, $6E, $83, $C1, $56, $57
#_0BC51B: db $5A, $F8, $5F, $5F, $81, $7C, $82, $02
#_0BC523: db $83, $83, $84, $6E, $83, $83, $84, $D1
#_0BC52B: db $BA, $E5, $44, $44
#_0BC52F: db $62 ; Increment fill
#_0BC530: db $85
#_0BC531: db $0C ; Raw block
#_0BC532: db $69, $83, $66, $FB, $6E, $83, $88, $89
#_0BC53A: db $8D, $57, $4C, $F8, $F8
#_0BC53F: db $62 ; Increment fill
#_0BC540: db $8A
#_0BC541: db $00 ; Raw block
#_0BC542: db $69
#_0BC543: db $84 ; Copy past
#_0BC544: dw $8600
#_0BC546: db $08 ; Raw block
#_0BC547: db $BB, $F4, $8D, $04, $8E, $08, $08, $8B
#_0BC54F: db $FB
#_0BC550: db $62 ; Increment fill
#_0BC551: db $8F
#_0BC552: db $E0, $36 ; EXT Raw block
#_0BC554: db $46, $41, $6E, $83, $92, $93, $12, $F0
#_0BC55C: db $8F, $0C, $FB, $FB, $8F, $03, $94, $4E
#_0BC564: db $38, $58, $95, $96, $8D, $97, $03, $09
#_0BC56C: db $0A, $98, $98, $99, $03, $D0, $5F, $1F
#_0BC574: db $9A, $05, $7A, $A7, $3C, $8D, $9B, $13
#_0BC57C: db $15, $09, $09, $0A, $D0, $9C, $BB, $5F
#_0BC584: db $8F, $DE, $5F, $9D, $A7, $3C, $8D
#_0BC58B: db $63 ; Increment fill
#_0BC58C: db $9E
#_0BC58D: db $0D ; Raw block
#_0BC58E: db $BB, $D4, $AF, $A2, $8F, $5F, $9D, $8F
#_0BC596: db $AC, $5F, $A3, $4A, $4B, $4B
#_0BC59C: db $FF ; End of Map 3A

;===================================================================================================

OverworldMap32_Screen3D_High:
#_0BC59D: db $09 ; Raw block
#_0BC59E: db $0F, $0F, $0B, $00, $06, $03, $10, $07
#_0BC5A6: db $05, $10
#_0BC5A8: db $44 ; Repeat word
#_0BC5A9: dw $0F05
#_0BC5AB: db $22 ; Repeat byte
#_0BC5AC: db $10
#_0BC5AD: db $11 ; Raw block
#_0BC5AE: db $02, $07, $03, $03, $10, $10, $09, $10
#_0BC5B6: db $10, $05, $05, $10, $10, $08, $0D, $10
#_0BC5BE: db $0D, $0D
#_0BC5C0: db $83 ; Copy past
#_0BC5C1: dw $1400
#_0BC5C3: db $0F ; Raw block
#_0BC5C4: db $05, $10, $10, $05, $10, $10, $05, $07
#_0BC5CC: db $01, $02, $01, $10, $0E, $10, $10, $02
#_0BC5D4: db $22 ; Repeat byte
#_0BC5D5: db $05
#_0BC5D6: db $01 ; Raw block
#_0BC5D7: db $0F, $05
#_0BC5D9: db $83 ; Copy past
#_0BC5DA: dw $0600
#_0BC5DC: db $43 ; Repeat word
#_0BC5DD: dw $010E
#_0BC5DF: db $00 ; Raw block
#_0BC5E0: db $01
#_0BC5E1: db $83 ; Copy past
#_0BC5E2: dw $3600
#_0BC5E4: db $22 ; Repeat byte
#_0BC5E5: db $10
#_0BC5E6: db $02 ; Raw block
#_0BC5E7: db $08, $05, $07
#_0BC5EA: db $25 ; Repeat byte
#_0BC5EB: db $10
#_0BC5EC: db $00 ; Raw block
#_0BC5ED: db $0F
#_0BC5EE: db $24 ; Repeat byte
#_0BC5EF: db $05
#_0BC5F0: db $00 ; Raw block
#_0BC5F1: db $10
#_0BC5F2: db $22 ; Repeat byte
#_0BC5F3: db $05
#_0BC5F4: db $01 ; Raw block
#_0BC5F5: db $10, $03
#_0BC5F7: db $22 ; Repeat byte
#_0BC5F8: db $10
#_0BC5F9: db $01 ; Raw block
#_0BC5FA: db $01, $01
#_0BC5FC: db $84 ; Copy past
#_0BC5FD: dw $1A00
#_0BC5FF: db $08 ; Raw block
#_0BC600: db $0F, $05, $07, $05, $10, $10, $0D, $10
#_0BC608: db $10
#_0BC609: db $22 ; Repeat byte
#_0BC60A: db $0A
#_0BC60B: db $22 ; Repeat byte
#_0BC60C: db $05
#_0BC60D: db $05 ; Raw block
#_0BC60E: db $10, $05, $07, $05, $05, $03
#_0BC614: db $22 ; Repeat byte
#_0BC615: db $10
#_0BC616: db $00 ; Raw block
#_0BC617: db $06
#_0BC618: db $22 ; Repeat byte
#_0BC619: db $10
#_0BC61A: db $03 ; Raw block
#_0BC61B: db $05, $09, $0E, $0F
#_0BC61F: db $22 ; Repeat byte
#_0BC620: db $05
#_0BC621: db $00 ; Raw block
#_0BC622: db $09
#_0BC623: db $22 ; Repeat byte
#_0BC624: db $10
#_0BC625: db $01 ; Raw block
#_0BC626: db $0F, $0E
#_0BC628: db $22 ; Repeat byte
#_0BC629: db $10
#_0BC62A: db $09 ; Raw block
#_0BC62B: db $07, $07, $10, $05, $10, $09, $05, $07
#_0BC633: db $0C, $0F
#_0BC635: db $25 ; Repeat byte
#_0BC636: db $10
#_0BC637: db $07 ; Raw block
#_0BC638: db $07, $07, $0F, $0F, $10, $05, $08, $05
#_0BC640: db $83 ; Copy past
#_0BC641: dw $7300
#_0BC643: db $08 ; Raw block
#_0BC644: db $06, $0A, $0A, $10, $08, $07, $09, $10
#_0BC64C: db $07
#_0BC64D: db $83 ; Copy past
#_0BC64E: dw $AC00
#_0BC650: db $01 ; Raw block
#_0BC651: db $05, $0A
#_0BC653: db $22 ; Repeat byte
#_0BC654: db $05
#_0BC655: db $22 ; Repeat byte
#_0BC656: db $10
#_0BC657: db $00 ; Raw block
#_0BC658: db $08
#_0BC659: db $25 ; Repeat byte
#_0BC65A: db $10
#_0BC65B: db $02 ; Raw block
#_0BC65C: db $05, $06, $06
#_0BC65F: db $22 ; Repeat byte
#_0BC660: db $10
#_0BC661: db $83 ; Copy past
#_0BC662: dw $1B00
#_0BC664: db $01 ; Raw block
#_0BC665: db $05, $06
#_0BC667: db $83 ; Copy past
#_0BC668: dw $0C00
#_0BC66A: db $22 ; Repeat byte
#_0BC66B: db $0F
#_0BC66C: db $26 ; Repeat byte
#_0BC66D: db $10
#_0BC66E: db $00 ; Raw block
#_0BC66F: db $0F
#_0BC670: db $22 ; Repeat byte
#_0BC671: db $10
#_0BC672: db $01 ; Raw block
#_0BC673: db $0F, $0F
#_0BC675: db $23 ; Repeat byte
#_0BC676: db $01
#_0BC677: db $07 ; Raw block
#_0BC678: db $0D, $03, $10, $0D, $03, $10, $10, $02
#_0BC680: db $22 ; Repeat byte
#_0BC681: db $10
#_0BC682: db $00 ; Raw block
#_0BC683: db $01
#_0BC684: db $FF ; End of Map 3D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen3D_Low:
#_0BC685: db $09 ; Raw block
#_0BC686: db $73, $2F, $46, $B2, $66, $B6, $A4, $8E
#_0BC68E: db $E1, $A5
#_0BC690: db $44 ; Repeat word
#_0BC691: dw $AEA4
#_0BC693: db $62 ; Increment fill
#_0BC694: db $A6
#_0BC695: db $E0, $3D ; EXT Raw block
#_0BC697: db $D2, $BF, $44, $44, $A9, $AA, $52, $AB
#_0BC69F: db $AC, $A4, $A4, $AD, $AE, $AA, $9E, $AF
#_0BC6A7: db $9E, $A1, $4B, $4B, $B0, $B1, $D3, $B2
#_0BC6AF: db $AC, $A4, $B3, $AE, $E1, $20, $06, $F2
#_0BC6B7: db $06, $B4, $CE, $B5, $B6, $DC, $8A, $93
#_0BC6BF: db $A4, $AE, $A4, $B7, $20, $E1, $B8, $74
#_0BC6C7: db $06, $D9, $0A, $FD, $B9, $DC, $8A, $93
#_0BC6CF: db $AC, $BA, $BB, $AA, $E1, $20
#_0BC6D5: db $65 ; Increment fill
#_0BC6D6: db $BC
#_0BC6D7: db $06 ; Raw block
#_0BC6D8: db $4C, $89, $8A, $93, $BD, $A4, $C2
#_0BC6DF: db $22 ; Repeat byte
#_0BC6E0: db $E1
#_0BC6E1: db $01 ; Raw block
#_0BC6E2: db $C3, $6A
#_0BC6E4: db $62 ; Increment fill
#_0BC6E5: db $C4
#_0BC6E6: db $1B ; Raw block
#_0BC6E7: db $0A, $FD, $C7, $8A, $93, $AC, $BB, $8D
#_0BC6EF: db $E1, $36, $E0, $C8, $C9, $6E, $CA, $CB
#_0BC6F7: db $1D, $F5, $39, $8A, $C5, $C6, $CC, $E1
#_0BC6FF: db $36, $E1, $E1, $94
#_0BC703: db $62 ; Increment fill
#_0BC704: db $CD
#_0BC705: db $07 ; Raw block
#_0BC706: db $B4, $D0, $D0, $D1, $92, $78, $23, $94
#_0BC70E: db $22 ; Repeat byte
#_0BC70F: db $E1
#_0BC710: db $00 ; Raw block
#_0BC711: db $36
#_0BC712: db $62 ; Increment fill
#_0BC713: db $D2
#_0BC714: db $01 ; Raw block
#_0BC715: db $04, $05
#_0BC717: db $62 ; Increment fill
#_0BC718: db $D5
#_0BC719: db $0B ; Raw block
#_0BC71A: db $1E, $18, $D8, $BD, $B7, $36, $E1, $36
#_0BC722: db $AD, $E1, $D9, $DA
#_0BC726: db $63 ; Increment fill
#_0BC727: db $DA
#_0BC728: db $1D ; Raw block
#_0BC729: db $8E, $20, $85, $86, $DE, $E0, $AA, $E0
#_0BC731: db $C5, $8B, $0C, $0C, $05, $E8, $0C, $DF
#_0BC739: db $C0, $3C, $47, $E0, $83, $E1, $E1, $D7
#_0BC741: db $FB, $E8, $0C, $FB, $E8, $FB
#_0BC747: db $62 ; Increment fill
#_0BC748: db $E2
#_0BC749: db $00 ; Raw block
#_0BC74A: db $C3
#_0BC74B: db $65 ; Increment fill
#_0BC74C: db $E5
#_0BC74D: db $02 ; Raw block
#_0BC74E: db $FB, $05, $05
#_0BC751: db $62 ; Increment fill
#_0BC752: db $EB
#_0BC753: db $09 ; Raw block
#_0BC754: db $FB, $FB, $E3, $EE, $FA, $05, $E8, $1E
#_0BC75C: db $F0, $EF
#_0BC75E: db $22 ; Repeat byte
#_0BC75F: db $FC
#_0BC760: db $62 ; Increment fill
#_0BC761: db $F0
#_0BC762: db $09 ; Raw block
#_0BC763: db $EC, $F3, $F4, $99, $FB, $45, $F5, $99
#_0BC76B: db $FB, $FC
#_0BC76D: db $22 ; Repeat byte
#_0BC76E: db $EB
#_0BC76F: db $0C ; Raw block
#_0BC770: db $EC, $97, $4A, $09, $E9, $4A, $0A, $F6
#_0BC778: db $D1, $56, $0A, $F6, $EB
#_0BC77D: db $FF ; End of Map 3D

;===================================================================================================

OverworldMap32_Screen3E_High:
#_0BC77E: db $18 ; Raw block
#_0BC77F: db $07, $06, $01, $02, $02, $10, $10, $03
#_0BC787: db $03, $09, $09, $05, $10, $07, $0F, $01
#_0BC78F: db $09, $07, $06, $02, $08, $09, $09, $07
#_0BC797: db $07
#_0BC798: db $23 ; Repeat byte
#_0BC799: db $05
#_0BC79A: db $0B ; Raw block
#_0BC79B: db $0F, $01, $10, $07, $05, $07, $0E, $10
#_0BC7A3: db $05, $05, $07, $07
#_0BC7A7: db $43 ; Repeat word
#_0BC7A8: dw $0F05
#_0BC7AA: db $07 ; Raw block
#_0BC7AB: db $01, $01, $10, $05, $08, $05, $10, $10
#_0BC7B3: db $22 ; Repeat byte
#_0BC7B4: db $05
#_0BC7B5: db $0A ; Raw block
#_0BC7B6: db $10, $10, $05, $07, $0F, $01, $0E, $01
#_0BC7BE: db $05, $05, $09
#_0BC7C1: db $23 ; Repeat byte
#_0BC7C2: db $11
#_0BC7C3: db $0A ; Raw block
#_0BC7C4: db $05, $08, $07, $09, $07, $11, $11, $01
#_0BC7CC: db $0C, $09, $0C
#_0BC7CF: db $24 ; Repeat byte
#_0BC7D0: db $11
#_0BC7D1: db $02 ; Raw block
#_0BC7D2: db $05, $05, $07
#_0BC7D5: db $24 ; Repeat byte
#_0BC7D6: db $05
#_0BC7D7: db $00 ; Raw block
#_0BC7D8: db $0E
#_0BC7D9: db $22 ; Repeat byte
#_0BC7DA: db $05
#_0BC7DB: db $06 ; Raw block
#_0BC7DC: db $10, $05, $11, $10, $07, $09, $08
#_0BC7E3: db $24 ; Repeat byte
#_0BC7E4: db $05
#_0BC7E5: db $06 ; Raw block
#_0BC7E6: db $03, $09, $08, $07, $0F, $11, $10
#_0BC7ED: db $23 ; Repeat byte
#_0BC7EE: db $05
#_0BC7EF: db $0A ; Raw block
#_0BC7F0: db $07, $05, $08, $05, $05, $0F, $05, $05
#_0BC7F8: db $09, $05, $11
#_0BC7FB: db $23 ; Repeat byte
#_0BC7FC: db $0F
#_0BC7FD: db $01 ; Raw block
#_0BC7FE: db $09, $07
#_0BC800: db $23 ; Repeat byte
#_0BC801: db $05
#_0BC802: db $44 ; Repeat word
#_0BC803: dw $0507
#_0BC805: db $24 ; Repeat byte
#_0BC806: db $11
#_0BC807: db $02 ; Raw block
#_0BC808: db $05, $09, $07
#_0BC80B: db $22 ; Repeat byte
#_0BC80C: db $05
#_0BC80D: db $03 ; Raw block
#_0BC80E: db $07, $05, $05, $07
#_0BC812: db $22 ; Repeat byte
#_0BC813: db $11
#_0BC814: db $04 ; Raw block
#_0BC815: db $05, $05, $0F, $07, $05
#_0BC81A: db $24 ; Repeat byte
#_0BC81B: db $0F
#_0BC81C: db $22 ; Repeat byte
#_0BC81D: db $07
#_0BC81E: db $01 ; Raw block
#_0BC81F: db $11, $05
#_0BC821: db $23 ; Repeat byte
#_0BC822: db $11
#_0BC823: db $00 ; Raw block
#_0BC824: db $0F
#_0BC825: db $28 ; Repeat byte
#_0BC826: db $11
#_0BC827: db $00 ; Raw block
#_0BC828: db $06
#_0BC829: db $83 ; Copy past
#_0BC82A: dw $B800
#_0BC82C: db $23 ; Repeat byte
#_0BC82D: db $05
#_0BC82E: db $23 ; Repeat byte
#_0BC82F: db $11
#_0BC830: db $11 ; Raw block
#_0BC831: db $05, $10, $10, $0C, $0A, $10, $05, $06
#_0BC839: db $10, $0F, $0F, $10, $10, $05, $11, $11
#_0BC841: db $0F, $0F
#_0BC843: db $27 ; Repeat byte
#_0BC844: db $10
#_0BC845: db $01 ; Raw block
#_0BC846: db $01, $0E
#_0BC848: db $22 ; Repeat byte
#_0BC849: db $10
#_0BC84A: db $03 ; Raw block
#_0BC84B: db $0F, $0F, $11, $11
#_0BC84F: db $24 ; Repeat byte
#_0BC850: db $10
#_0BC851: db $07 ; Raw block
#_0BC852: db $11, $06, $0F, $0D, $03, $10, $0D, $11
#_0BC85A: db $FF ; End of Map 3E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen3E_Low:
#_0BC85B: db $E0, $42 ; EXT Raw block
#_0BC85D: db $36, $0A, $E6, $08, $60, $F7, $F8, $B2
#_0BC865: db $B3, $82, $83, $E1, $F9, $4C, $C1, $25
#_0BC86D: db $9D, $1A, $16, $FB, $63, $F8, $F9, $3F
#_0BC875: db $1B, $9F, $E1, $E1, $E2, $BD, $49, $FA
#_0BC87D: db $20, $E1, $14, $21, $FB, $E1, $E1, $44
#_0BC885: db $31, $E1, $D3, $E2, $BD, $49, $6A, $FC
#_0BC88D: db $E1, $AA, $E1, $D8, $FD, $AA, $E1, $E1
#_0BC895: db $FE, $FF, $E1, $4C, $C1, $00, $40, $01
#_0BC89D: db $E1, $E1, $36
#_0BC8A0: db $63 ; Increment fill
#_0BC8A1: db $00
#_0BC8A2: db $04 ; Raw block
#_0BC8A3: db $E1, $AA, $89, $9D, $4C
#_0BC8A8: db $62 ; Increment fill
#_0BC8A9: db $04
#_0BC8AA: db $02 ; Raw block
#_0BC8AB: db $ED, $36, $4C
#_0BC8AE: db $64 ; Increment fill
#_0BC8AF: db $06
#_0BC8B0: db $08 ; Raw block
#_0BC8B1: db $E1, $E1, $20, $E1, $97, $98, $B1, $A6
#_0BC8B9: db $40
#_0BC8BA: db $22 ; Repeat byte
#_0BC8BB: db $E1
#_0BC8BC: db $12 ; Raw block
#_0BC8BD: db $D8, $AA, $0B, $A6, $89, $36, $AA, $E1
#_0BC8C5: db $E1, $AB, $A2, $B1, $52, $36, $AA, $89
#_0BC8CD: db $85, $0C, $AE
#_0BC8D0: db $23 ; Repeat byte
#_0BC8D1: db $E1
#_0BC8D2: db $05 ; Raw block
#_0BC8D3: db $36, $E1, $AA, $AB, $A2, $42
#_0BC8D9: db $83 ; Copy past
#_0BC8DA: dw $7800
#_0BC8DC: db $00 ; Raw block
#_0BC8DD: db $0D
#_0BC8DE: db $23 ; Repeat byte
#_0BC8DF: db $BA
#_0BC8E0: db $01 ; Raw block
#_0BC8E1: db $52, $19
#_0BC8E3: db $22 ; Repeat byte
#_0BC8E4: db $E1
#_0BC8E5: db $05 ; Raw block
#_0BC8E6: db $AB, $3F, $E1, $20, $E1, $67
#_0BC8EC: db $62 ; Increment fill
#_0BC8ED: db $0E
#_0BC8EE: db $0B ; Raw block
#_0BC8EF: db $10, $11, $D3, $52, $36, $E0, $E0, $E1
#_0BC8F7: db $44, $E1, $E1, $67
#_0BC8FB: db $62 ; Increment fill
#_0BC8FC: db $12
#_0BC8FD: db $04 ; Raw block
#_0BC8FE: db $FB, $FB, $1E, $DB, $D3
#_0BC903: db $24 ; Repeat byte
#_0BC904: db $BA
#_0BC905: db $04 ; Raw block
#_0BC906: db $22, $22, $6E, $15, $FA
#_0BC90B: db $63 ; Increment fill
#_0BC90C: db $16
#_0BC90D: db $01 ; Raw block
#_0BC90E: db $1E, $1A
#_0BC910: db $24 ; Repeat byte
#_0BC911: db $10
#_0BC912: db $62 ; Increment fill
#_0BC913: db $1B
#_0BC914: db $04 ; Raw block
#_0BC915: db $00, $1E, $E1, $1F, $20
#_0BC91A: db $23 ; Repeat byte
#_0BC91B: db $FB
#_0BC91C: db $00 ; Raw block
#_0BC91D: db $18
#_0BC91E: db $22 ; Repeat byte
#_0BC91F: db $21
#_0BC920: db $13 ; Raw block
#_0BC921: db $FB, $E3, $EE, $8E, $08, $8B, $FB, $05
#_0BC929: db $8F, $FB, $FC, $F4, $ED, $FB, $22, $23
#_0BC931: db $FC, $FC, $45, $F5
#_0BC935: db $22 ; Repeat byte
#_0BC936: db $EC
#_0BC937: db $0C ; Raw block
#_0BC938: db $99, $03, $94, $EB, $3C, $F2, $EC, $F3
#_0BC940: db $FC, $3E, $24, $25, $56
#_0BC945: db $22 ; Repeat byte
#_0BC946: db $09
#_0BC947: db $08 ; Raw block
#_0BC948: db $0A, $26, $A2, $12, $97, $4A, $09, $E9
#_0BC950: db $24
#_0BC951: db $FF ; End of Map 3E

;===================================================================================================

OverworldMap32_Screen40_High:
#_0BC952: db $E4, $3D ; EXT Repeat byte
#_0BC954: db $11
#_0BC955: db $00 ; Raw block
#_0BC956: db $00
#_0BC957: db $E4, $C0 ; EXT Repeat byte
#_0BC959: db $11
#_0BC95A: db $FF ; End of Map 40

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen40_Low:
#_0BC95B: db $62 ; Increment fill
#_0BC95C: db $27
#_0BC95D: db $00 ; Raw block
#_0BC95E: db $27
#_0BC95F: db $65 ; Increment fill
#_0BC960: db $2A
#_0BC961: db $62 ; Increment fill
#_0BC962: db $2D
#_0BC963: db $65 ; Increment fill
#_0BC964: db $2D
#_0BC965: db $00 ; Raw block
#_0BC966: db $30
#_0BC967: db $62 ; Increment fill
#_0BC968: db $33
#_0BC969: db $02 ; Raw block
#_0BC96A: db $29, $27, $2A
#_0BC96D: db $62 ; Increment fill
#_0BC96E: db $36
#_0BC96F: db $62 ; Increment fill
#_0BC970: db $36
#_0BC971: db $08 ; Raw block
#_0BC972: db $2E, $2F, $2D, $39, $3A, $34, $3B, $32
#_0BC97A: db $30
#_0BC97B: db $64 ; Increment fill
#_0BC97C: db $3C
#_0BC97D: db $03 ; Raw block
#_0BC97E: db $3E, $41, $27, $28
#_0BC982: db $62 ; Increment fill
#_0BC983: db $42
#_0BC984: db $03 ; Raw block
#_0BC985: db $34, $2C, $2D, $39
#_0BC989: db $64 ; Increment fill
#_0BC98A: db $45
#_0BC98B: db $07 ; Raw block
#_0BC98C: db $1F, $4A, $30, $31, $4B, $4C, $34, $34
#_0BC994: db $68 ; Increment fill
#_0BC995: db $4D
#_0BC996: db $01 ; Raw block
#_0BC997: db $51, $2E
#_0BC999: db $66 ; Increment fill
#_0BC99A: db $56
#_0BC99B: db $00 ; Raw block
#_0BC99C: db $30
#_0BC99D: db $65 ; Increment fill
#_0BC99E: db $5D
#_0BC99F: db $02 ; Raw block
#_0BC9A0: db $5E, $27, $2A
#_0BC9A3: db $67 ; Increment fill
#_0BC9A4: db $63
#_0BC9A5: db $01 ; Raw block
#_0BC9A6: db $5E, $5F
#_0BC9A8: db $62 ; Increment fill
#_0BC9A9: db $6B
#_0BC9AA: db $01 ; Raw block
#_0BC9AB: db $5E, $30
#_0BC9AD: db $68 ; Increment fill
#_0BC9AE: db $6E
#_0BC9AF: db $00 ; Raw block
#_0BC9B0: db $5E
#_0BC9B1: db $63 ; Increment fill
#_0BC9B2: db $77
#_0BC9B3: db $04 ; Raw block
#_0BC9B4: db $5E, $2E, $61, $7B, $47
#_0BC9B9: db $63 ; Increment fill
#_0BC9BA: db $7C
#_0BC9BB: db $00 ; Raw block
#_0BC9BC: db $4A
#_0BC9BD: db $62 ; Increment fill
#_0BC9BE: db $80
#_0BC9BF: db $05 ; Raw block
#_0BC9C0: db $60, $56, $57, $5E, $27, $28
#_0BC9C6: db $65 ; Increment fill
#_0BC9C7: db $83
#_0BC9C8: db $09 ; Raw block
#_0BC9C9: db $4A, $47, $47, $89, $8A, $2A, $63, $81
#_0BC9D1: db $30, $31
#_0BC9D3: db $64 ; Increment fill
#_0BC9D4: db $8B
#_0BC9D5: db $0B ; Raw block
#_0BC9D6: db $51, $52, $54, $90, $91, $30, $3C, $92
#_0BC9DE: db $4A, $2E, $2F, $57
#_0BC9E2: db $63 ; Increment fill
#_0BC9E3: db $93
#_0BC9E4: db $05 ; Raw block
#_0BC9E5: db $5E, $77, $60, $61, $97, $39
#_0BC9EB: db $62 ; Increment fill
#_0BC9EC: db $98
#_0BC9ED: db $0B ; Raw block
#_0BC9EE: db $27, $28, $6D, $93, $94, $9B, $9C, $5E
#_0BC9F6: db $77, $6B, $6C, $29
#_0BC9FA: db $63 ; Increment fill
#_0BC9FB: db $9D
#_0BC9FC: db $11 ; Raw block
#_0BC9FD: db $30, $31, $8B, $93, $94, $A1, $A2, $5E
#_0BCA05: db $77, $78, $A3, $32, $30, $A4, $4A, $47
#_0BCA0D: db $2E, $2F
#_0BCA0F: db $63 ; Increment fill
#_0BCA10: db $A5
#_0BCA11: db $0C ; Raw block
#_0BCA12: db $A8, $81, $A9, $AA, $2C, $AB, $2E, $AC
#_0BCA1A: db $AD, $47, $27, $2A, $AE
#_0BCA1F: db $23 ; Repeat byte
#_0BCA20: db $47
#_0BCA21: db $08 ; Raw block
#_0BCA22: db $AF, $47, $B0, $35, $29, $27, $28, $B1
#_0BCA2A: db $47
#_0BCA2B: db $FF ; End of Map 40

;===================================================================================================

OverworldMap32_Screen41_High:
#_0BCA2C: db $E4, $39 ; EXT Repeat byte
#_0BCA2E: db $11
#_0BCA2F: db $00 ; Raw block
#_0BCA30: db $00
#_0BCA31: db $30 ; Repeat byte
#_0BCA32: db $11
#_0BCA33: db $00 ; Raw block
#_0BCA34: db $00
#_0BCA35: db $2C ; Repeat byte
#_0BCA36: db $11
#_0BCA37: db $03 ; Raw block
#_0BCA38: db $00, $11, $00, $00
#_0BCA3C: db $E4, $4C ; EXT Repeat byte
#_0BCA3E: db $11
#_0BCA3F: db $01 ; Raw block
#_0BCA40: db $12, $12
#_0BCA42: db $22 ; Repeat byte
#_0BCA43: db $11
#_0BCA44: db $46 ; Repeat word
#_0BCA45: dw $1112
#_0BCA47: db $28 ; Repeat byte
#_0BCA48: db $11
#_0BCA49: db $22 ; Repeat byte
#_0BCA4A: db $12
#_0BCA4B: db $43 ; Repeat word
#_0BCA4C: dw $1211
#_0BCA4E: db $01 ; Raw block
#_0BCA4F: db $12, $11
#_0BCA51: db $25 ; Repeat byte
#_0BCA52: db $12
#_0BCA53: db $00 ; Raw block
#_0BCA54: db $11
#_0BCA55: db $22 ; Repeat byte
#_0BCA56: db $12
#_0BCA57: db $46 ; Repeat word
#_0BCA58: dw $1211
#_0BCA5A: db $02 ; Raw block
#_0BCA5B: db $11, $12, $12
#_0BCA5E: db $22 ; Repeat byte
#_0BCA5F: db $11
#_0BCA60: db $46 ; Repeat word
#_0BCA61: dw $1112
#_0BCA63: db $23 ; Repeat byte
#_0BCA64: db $11
#_0BCA65: db $00 ; Raw block
#_0BCA66: db $12
#_0BCA67: db $25 ; Repeat byte
#_0BCA68: db $11
#_0BCA69: db $02 ; Raw block
#_0BCA6A: db $12, $11, $12
#_0BCA6D: db $22 ; Repeat byte
#_0BCA6E: db $11
#_0BCA6F: db $23 ; Repeat byte
#_0BCA70: db $12
#_0BCA71: db $23 ; Repeat byte
#_0BCA72: db $11
#_0BCA73: db $FF ; End of Map 41

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen41_Low:
#_0BCA74: db $62 ; Increment fill
#_0BCA75: db $2D
#_0BCA76: db $62 ; Increment fill
#_0BCA77: db $2D
#_0BCA78: db $89 ; Copy past
#_0BCA79: dw $0000
#_0BCA7B: db $03 ; Raw block
#_0BCA7C: db $36, $37, $6C, $42
#_0BCA80: db $62 ; Increment fill
#_0BCA81: db $B2
#_0BCA82: db $62 ; Increment fill
#_0BCA83: db $B2
#_0BCA84: db $02 ; Raw block
#_0BCA85: db $B2, $6C, $29
#_0BCA88: db $62 ; Increment fill
#_0BCA89: db $27
#_0BCA8A: db $02 ; Raw block
#_0BCA8B: db $B5, $B6, $79
#_0BCA8E: db $63 ; Increment fill
#_0BCA8F: db $B7
#_0BCA90: db $62 ; Increment fill
#_0BCA91: db $B8
#_0BCA92: db $02 ; Raw block
#_0BCA93: db $B8, $BB, $32
#_0BCA96: db $62 ; Increment fill
#_0BCA97: db $30
#_0BCA98: db $04 ; Raw block
#_0BCA99: db $B0, $60, $BC, $BD, $47
#_0BCA9E: db $62 ; Increment fill
#_0BCA9F: db $BE
#_0BCAA0: db $02 ; Raw block
#_0BCAA1: db $BE, $47, $1F
#_0BCAA4: db $63 ; Increment fill
#_0BCAA5: db $C1
#_0BCAA6: db $08 ; Raw block
#_0BCAA7: db $C2, $C5, $8A, $28, $B1, $C6, $C6, $47
#_0BCAAF: db $47
#_0BCAB0: db $63 ; Increment fill
#_0BCAB1: db $C6
#_0BCAB2: db $06 ; Raw block
#_0BCAB3: db $A3, $CA, $47, $C6, $CB, $30, $31
#_0BCABA: db $66 ; Increment fill
#_0BCABB: db $CC
#_0BCABC: db $03 ; Raw block
#_0BCABD: db $AC, $D3, $1F, $1F
#_0BCAC1: db $63 ; Increment fill
#_0BCAC2: db $D4
#_0BCAC3: db $01 ; Raw block
#_0BCAC4: db $2F, $A5
#_0BCAC6: db $62 ; Increment fill
#_0BCAC7: db $D8
#_0BCAC8: db $00 ; Raw block
#_0BCAC9: db $47
#_0BCACA: db $66 ; Increment fill
#_0BCACB: db $DB
#_0BCACC: db $05 ; Raw block
#_0BCACD: db $30, $E2, $E3, $38, $E4, $47
#_0BCAD3: db $64 ; Increment fill
#_0BCAD4: db $E5
#_0BCAD5: db $62 ; Increment fill
#_0BCAD6: db $30
#_0BCAD7: db $03 ; Raw block
#_0BCAD8: db $30, $EA, $69, $77
#_0BCADC: db $62 ; Increment fill
#_0BCADD: db $EB
#_0BCADE: db $0B ; Raw block
#_0BCADF: db $47, $47, $EE, $60, $EF, $F0, $2E, $2F
#_0BCAE7: db $F1, $69, $F2, $97
#_0BCAEB: db $63 ; Increment fill
#_0BCAEC: db $F3
#_0BCAED: db $07 ; Raw block
#_0BCAEE: db $A0, $F7, $F8, $8A, $28, $29, $27, $2A
#_0BCAF6: db $62 ; Increment fill
#_0BCAF7: db $F9
#_0BCAF8: db $07 ; Raw block
#_0BCAF9: db $29, $B0, $FC, $F6, $FD, $47, $FE, $FF
#_0BCB01: db $83 ; Copy past
#_0BCB02: dw $7A00
#_0BCB04: db $14 ; Raw block
#_0BCB05: db $00, $01, $B0, $3B, $32, $02, $FC, $03
#_0BCB0D: db $51, $04, $8D, $05, $D7, $2F, $F1, $69
#_0BCB15: db $45, $47, $B0, $2C, $AB
#_0BCB1A: db $62 ; Increment fill
#_0BCB1B: db $06
#_0BCB1C: db $05 ; Raw block
#_0BCB1D: db $5E, $09, $94, $0A, $0B, $2A
#_0BCB23: db $65 ; Increment fill
#_0BCB24: db $0C
#_0BCB25: db $0D ; Raw block
#_0BCB26: db $29, $0F, $12, $13, $5E, $09, $94, $14
#_0BCB2E: db $30, $00, $92, $D9, $15, $16
#_0BCB34: db $62 ; Increment fill
#_0BCB35: db $30
#_0BCB36: db $17 ; Raw block
#_0BCB37: db $17, $30, $18, $5E, $09, $94, $19, $69
#_0BCB3F: db $45, $47, $47, $1A, $F0, $2E, $BC, $2D
#_0BCB47: db $68, $69, $1B, $81, $1C, $A7, $A8, $A8
#_0BCB4F: db $63 ; Increment fill
#_0BCB50: db $1D
#_0BCB51: db $83 ; Copy past
#_0BCB52: dw $1C00
#_0BCB54: db $FF ; End of Map 41

;===================================================================================================

OverworldMap32_Screen42_High:
#_0BCB55: db $28 ; Repeat byte
#_0BCB56: db $00
#_0BCB57: db $01 ; Raw block
#_0BCB58: db $01, $12
#_0BCB5A: db $24 ; Repeat byte
#_0BCB5B: db $01
#_0BCB5C: db $26 ; Repeat byte
#_0BCB5D: db $00
#_0BCB5E: db $26 ; Repeat byte
#_0BCB5F: db $01
#_0BCB60: db $01 ; Raw block
#_0BCB61: db $12, $01
#_0BCB63: db $26 ; Repeat byte
#_0BCB64: db $00
#_0BCB65: db $27 ; Repeat byte
#_0BCB66: db $01
#_0BCB67: db $02 ; Raw block
#_0BCB68: db $12, $01, $01
#_0BCB6B: db $23 ; Repeat byte
#_0BCB6C: db $00
#_0BCB6D: db $29 ; Repeat byte
#_0BCB6E: db $01
#_0BCB6F: db $03 ; Raw block
#_0BCB70: db $00, $01, $01, $00
#_0BCB74: db $2B ; Repeat byte
#_0BCB75: db $01
#_0BCB76: db $83 ; Copy past
#_0BCB77: dw $4000
#_0BCB79: db $22 ; Repeat byte
#_0BCB7A: db $01
#_0BCB7B: db $01 ; Raw block
#_0BCB7C: db $00, $00
#_0BCB7E: db $26 ; Repeat byte
#_0BCB7F: db $01
#_0BCB80: db $00 ; Raw block
#_0BCB81: db $00
#_0BCB82: db $23 ; Repeat byte
#_0BCB83: db $01
#_0BCB84: db $22 ; Repeat byte
#_0BCB85: db $00
#_0BCB86: db $04 ; Raw block
#_0BCB87: db $12, $12, $0B, $0B, $12
#_0BCB8C: db $22 ; Repeat byte
#_0BCB8D: db $01
#_0BCB8E: db $00 ; Raw block
#_0BCB8F: db $00
#_0BCB90: db $24 ; Repeat byte
#_0BCB91: db $01
#_0BCB92: db $02 ; Raw block
#_0BCB93: db $00, $12, $01
#_0BCB96: db $24 ; Repeat byte
#_0BCB97: db $12
#_0BCB98: db $84 ; Copy past
#_0BCB99: dw $3E00
#_0BCB9B: db $23 ; Repeat byte
#_0BCB9C: db $00
#_0BCB9D: db $01 ; Raw block
#_0BCB9E: db $01, $01
#_0BCBA0: db $22 ; Repeat byte
#_0BCBA1: db $00
#_0BCBA2: db $23 ; Repeat byte
#_0BCBA3: db $01
#_0BCBA4: db $00 ; Raw block
#_0BCBA5: db $00
#_0BCBA6: db $22 ; Repeat byte
#_0BCBA7: db $01
#_0BCBA8: db $22 ; Repeat byte
#_0BCBA9: db $00
#_0BCBAA: db $01 ; Raw block
#_0BCBAB: db $01, $00
#_0BCBAD: db $26 ; Repeat byte
#_0BCBAE: db $01
#_0BCBAF: db $00 ; Raw block
#_0BCBB0: db $00
#_0BCBB1: db $23 ; Repeat byte
#_0BCBB2: db $01
#_0BCBB3: db $01 ; Raw block
#_0BCBB4: db $00, $00
#_0BCBB6: db $83 ; Copy past
#_0BCBB7: dw $1E00
#_0BCBB9: db $24 ; Repeat byte
#_0BCBBA: db $01
#_0BCBBB: db $00 ; Raw block
#_0BCBBC: db $00
#_0BCBBD: db $23 ; Repeat byte
#_0BCBBE: db $01
#_0BCBBF: db $00 ; Raw block
#_0BCBC0: db $00
#_0BCBC1: db $29 ; Repeat byte
#_0BCBC2: db $01
#_0BCBC3: db $00 ; Raw block
#_0BCBC4: db $00
#_0BCBC5: db $23 ; Repeat byte
#_0BCBC6: db $01
#_0BCBC7: db $01 ; Raw block
#_0BCBC8: db $00, $00
#_0BCBCA: db $28 ; Repeat byte
#_0BCBCB: db $01
#_0BCBCC: db $00 ; Raw block
#_0BCBCD: db $00
#_0BCBCE: db $22 ; Repeat byte
#_0BCBCF: db $01
#_0BCBD0: db $00 ; Raw block
#_0BCBD1: db $00
#_0BCBD2: db $2A ; Repeat byte
#_0BCBD3: db $01
#_0BCBD4: db $22 ; Repeat byte
#_0BCBD5: db $00
#_0BCBD6: db $2C ; Repeat byte
#_0BCBD7: db $01
#_0BCBD8: db $83 ; Copy past
#_0BCBD9: dw $9500
#_0BCBDB: db $2B ; Repeat byte
#_0BCBDC: db $01
#_0BCBDD: db $FF ; End of Map 42

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen42_Low:
#_0BCBDE: db $01 ; Raw block
#_0BCBDF: db $07, $08
#_0BCBE1: db $62 ; Increment fill
#_0BCBE2: db $06
#_0BCBE3: db $05 ; Raw block
#_0BCBE4: db $06, $07, $FE, $FF, $00, $21
#_0BCBEA: db $22 ; Repeat byte
#_0BCBEB: db $02
#_0BCBEC: db $01 ; Raw block
#_0BCBED: db $03, $03
#_0BCBEF: db $62 ; Increment fill
#_0BCBF0: db $00
#_0BCBF1: db $62 ; Increment fill
#_0BCBF2: db $00
#_0BCBF3: db $03 ; Raw block
#_0BCBF4: db $00, $04, $05, $00
#_0BCBF8: db $23 ; Repeat byte
#_0BCBF9: db $06
#_0BCBFA: db $01 ; Raw block
#_0BCBFB: db $21, $03
#_0BCBFD: db $62 ; Increment fill
#_0BCBFE: db $09
#_0BCBFF: db $62 ; Increment fill
#_0BCC00: db $09
#_0BCC01: db $00 ; Raw block
#_0BCC02: db $09
#_0BCC03: db $62 ; Increment fill
#_0BCC04: db $07
#_0BCC05: db $22 ; Repeat byte
#_0BCC06: db $0A
#_0BCC07: db $04 ; Raw block
#_0BCC08: db $0B, $0C, $22, $0E, $0F
#_0BCC0D: db $83 ; Copy past
#_0BCC0E: dw $0200
#_0BCC10: db $63 ; Increment fill
#_0BCC11: db $10
#_0BCC12: db $22 ; Repeat byte
#_0BCC13: db $15
#_0BCC14: db $62 ; Increment fill
#_0BCC15: db $16
#_0BCC16: db $04 ; Raw block
#_0BCC17: db $1D, $19, $1A, $00, $04
#_0BCC1C: db $62 ; Increment fill
#_0BCC1D: db $1B
#_0BCC1E: db $02 ; Raw block
#_0BCC1F: db $5A, $1F, $21
#_0BCC22: db $64 ; Increment fill
#_0BCC23: db $21
#_0BCC24: db $0A ; Raw block
#_0BCC25: db $B6, $26, $27, $09, $07, $28, $29, $99
#_0BCC2D: db $99, $2A, $2B
#_0BCC30: db $63 ; Increment fill
#_0BCC31: db $2B
#_0BCC32: db $01 ; Raw block
#_0BCC33: db $25, $09
#_0BCC35: db $63 ; Increment fill
#_0BCC36: db $2F
#_0BCC37: db $0C ; Raw block
#_0BCC38: db $7C, $1D, $1D, $23, $24, $C8, $C9, $25
#_0BCC40: db $37, $2E, $25, $07, $32
#_0BCC45: db $63 ; Increment fill
#_0BCC46: db $38
#_0BCC47: db $02 ; Raw block
#_0BCC48: db $1D, $26, $33
#_0BCC4B: db $64 ; Increment fill
#_0BCC4C: db $27
#_0BCC4D: db $06 ; Raw block
#_0BCC4E: db $2E, $25, $00, $04, $3B, $91, $8E
#_0BCC55: db $22 ; Repeat byte
#_0BCC56: db $1D
#_0BCC57: db $00 ; Raw block
#_0BCC58: db $45
#_0BCC59: db $22 ; Repeat byte
#_0BCC5A: db $1D
#_0BCC5B: db $00 ; Raw block
#_0BCC5C: db $41
#_0BCC5D: db $62 ; Increment fill
#_0BCC5E: db $48
#_0BCC5F: db $04 ; Raw block
#_0BCC60: db $09, $07, $4B, $4C, $1D
#_0BCC65: db $43 ; Repeat word
#_0BCC66: dw $991D
#_0BCC68: db $01 ; Raw block
#_0BCC69: db $50, $51
#_0BCC6B: db $64 ; Increment fill
#_0BCC6C: db $51
#_0BCC6D: db $0B ; Raw block
#_0BCC6E: db $07, $32, $56, $43, $44, $1D, $1D, $2C
#_0BCC76: db $5A, $1D, $1D, $41
#_0BCC7A: db $63 ; Increment fill
#_0BCC7B: db $5B
#_0BCC7C: db $16 ; Raw block
#_0BCC7D: db $00, $04, $5F, $4E, $4F, $1D, $60, $1E
#_0BCC85: db $61, $62, $41, $48, $49, $63, $64, $00
#_0BCC8D: db $09, $07, $57, $58, $65, $1D, $1D
#_0BCC94: db $62 ; Increment fill
#_0BCC95: db $66
#_0BCC96: db $0D ; Raw block
#_0BCC97: db $52, $53, $63, $69, $49, $6A, $07, $32
#_0BCC9F: db $6B, $6C, $98, $6D, $2D, $2D
#_0BCCA5: db $63 ; Increment fill
#_0BCCA6: db $6E
#_0BCCA7: db $0A ; Raw block
#_0BCCA8: db $69, $49, $6A, $06, $00, $01, $7F, $3C
#_0BCCB0: db $72, $4B, $4B
#_0BCCB3: db $22 ; Repeat byte
#_0BCCB4: db $6D
#_0BCCB5: db $10 ; Raw block
#_0BCCB6: db $70, $71, $73, $00, $06, $06, $09, $0A
#_0BCCBE: db $74, $1D, $75, $76, $72, $76, $1D, $72
#_0BCCC6: db $77
#_0BCCC7: db $84 ; Copy past
#_0BCCC8: dw $EB00
#_0BCCCA: db $FF ; End of Map 42

;===================================================================================================

OverworldMap32_Screen43_High:
#_0BCCCB: db $31 ; Repeat byte
#_0BCCCC: db $12
#_0BCCCD: db $00 ; Raw block
#_0BCCCE: db $01
#_0BCCCF: db $24 ; Repeat byte
#_0BCCD0: db $12
#_0BCCD1: db $01 ; Raw block
#_0BCCD2: db $01, $01
#_0BCCD4: db $26 ; Repeat byte
#_0BCCD5: db $12
#_0BCCD6: db $03 ; Raw block
#_0BCCD7: db $01, $00, $02, $02
#_0BCCDB: db $22 ; Repeat byte
#_0BCCDC: db $01
#_0BCCDD: db $00 ; Raw block
#_0BCCDE: db $00
#_0BCCDF: db $27 ; Repeat byte
#_0BCCE0: db $12
#_0BCCE1: db $07 ; Raw block
#_0BCCE2: db $01, $01, $00, $03, $00, $00, $03, $00
#_0BCCEA: db $28 ; Repeat byte
#_0BCCEB: db $12
#_0BCCEC: db $28 ; Repeat byte
#_0BCCED: db $01
#_0BCCEE: db $27 ; Repeat byte
#_0BCCEF: db $12
#_0BCCF0: db $26 ; Repeat byte
#_0BCCF1: db $01
#_0BCCF2: db $34 ; Repeat byte
#_0BCCF3: db $12
#_0BCCF4: db $01 ; Raw block
#_0BCCF5: db $01, $01
#_0BCCF7: db $26 ; Repeat byte
#_0BCCF8: db $12
#_0BCCF9: db $26 ; Repeat byte
#_0BCCFA: db $01
#_0BCCFB: db $02 ; Raw block
#_0BCCFC: db $12, $01, $01
#_0BCCFF: db $24 ; Repeat byte
#_0BCD00: db $12
#_0BCD01: db $08 ; Raw block
#_0BCD02: db $01, $00, $12, $00, $04, $02, $04, $00
#_0BCD0A: db $04
#_0BCD0B: db $29 ; Repeat byte
#_0BCD0C: db $01
#_0BCD0D: db $04 ; Raw block
#_0BCD0E: db $04, $12, $01, $12, $02
#_0BCD13: db $83 ; Copy past
#_0BCD14: dw $3000
#_0BCD16: db $06 ; Raw block
#_0BCD17: db $00, $12, $12, $00, $01, $01, $05
#_0BCD1E: db $25 ; Repeat byte
#_0BCD1F: db $12
#_0BCD20: db $24 ; Repeat byte
#_0BCD21: db $01
#_0BCD22: db $23 ; Repeat byte
#_0BCD23: db $00
#_0BCD24: db $26 ; Repeat byte
#_0BCD25: db $12
#_0BCD26: db $26 ; Repeat byte
#_0BCD27: db $01
#_0BCD28: db $03 ; Raw block
#_0BCD29: db $12, $00, $00, $07
#_0BCD2D: db $24 ; Repeat byte
#_0BCD2E: db $12
#_0BCD2F: db $24 ; Repeat byte
#_0BCD30: db $01
#_0BCD31: db $00 ; Raw block
#_0BCD32: db $02
#_0BCD33: db $83 ; Copy past
#_0BCD34: dw $A000
#_0BCD36: db $05 ; Raw block
#_0BCD37: db $0E, $07, $07, $12, $02, $12
#_0BCD3D: db $24 ; Repeat byte
#_0BCD3E: db $01
#_0BCD3F: db $83 ; Copy past
#_0BCD40: dw $2300
#_0BCD42: db $06 ; Raw block
#_0BCD43: db $00, $00, $0B, $0B, $00, $12, $00
#_0BCD4A: db $24 ; Repeat byte
#_0BCD4B: db $01
#_0BCD4C: db $2A ; Repeat byte
#_0BCD4D: db $02
#_0BCD4E: db $FF ; End of Map 43

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen43_Low:
#_0BCD4F: db $71 ; Increment fill
#_0BCD50: db $2D
#_0BCD51: db $02 ; Raw block
#_0BCD52: db $88, $3F, $30
#_0BCD55: db $62 ; Increment fill
#_0BCD56: db $40
#_0BCD57: db $01 ; Raw block
#_0BCD58: db $8B, $89
#_0BCD5A: db $66 ; Increment fill
#_0BCD5B: db $43
#_0BCD5C: db $07 ; Raw block
#_0BCD5D: db $93, $B2, $30, $31, $C3, $8A, $CC, $AA
#_0BCD65: db $63 ; Increment fill
#_0BCD66: db $4A
#_0BCD67: db $22 ; Repeat byte
#_0BCD68: db $4E
#_0BCD69: db $09 ; Raw block
#_0BCD6A: db $4F, $9F, $A0, $9F, $5F, $1C, $1D, $5F
#_0BCD72: db $B2, $4A
#_0BCD74: db $62 ; Increment fill
#_0BCD75: db $50
#_0BCD76: db $22 ; Repeat byte
#_0BCD77: db $53
#_0BCD78: db $03 ; Raw block
#_0BCD79: db $54, $55, $A9, $AA
#_0BCD7D: db $24 ; Repeat byte
#_0BCD7E: db $AB
#_0BCD7F: db $01 ; Raw block
#_0BCD80: db $AC, $AD
#_0BCD82: db $66 ; Increment fill
#_0BCD83: db $56
#_0BCD84: db $01 ; Raw block
#_0BCD85: db $55, $B2
#_0BCD87: db $24 ; Repeat byte
#_0BCD88: db $B3
#_0BCD89: db $00 ; Raw block
#_0BCD8A: db $B4
#_0BCD8B: db $69 ; Increment fill
#_0BCD8C: db $5D
#_0BCD8D: db $24 ; Repeat byte
#_0BCD8E: db $67
#_0BCD8F: db $65 ; Increment fill
#_0BCD90: db $68
#_0BCD91: db $01 ; Raw block
#_0BCD92: db $C3, $C4
#_0BCD94: db $66 ; Increment fill
#_0BCD95: db $6E
#_0BCD96: db $24 ; Repeat byte
#_0BCD97: db $C3
#_0BCD98: db $06 ; Raw block
#_0BCD99: db $8A, $CC, $75, $CD, $CE, $76, $77
#_0BCDA0: db $62 ; Increment fill
#_0BCDA1: db $77
#_0BCDA2: db $0A ; Raw block
#_0BCDA3: db $D1, $9F, $75, $1C, $7D, $08, $C2, $9F
#_0BCDAB: db $7D, $D6, $D7
#_0BCDAE: db $23 ; Repeat byte
#_0BCDAF: db $C3
#_0BCDB0: db $63 ; Increment fill
#_0BCDB1: db $D8
#_0BCDB2: db $0F ; Raw block
#_0BCDB3: db $81, $7A, $02, $7B, $61, $7A, $E2, $E3
#_0BCDBB: db $1C, $9F, $75, $75, $B2, $E4, $E5, $5A
#_0BCDC3: db $65 ; Increment fill
#_0BCDC4: db $7C
#_0BCDC5: db $64 ; Increment fill
#_0BCDC6: db $ED
#_0BCDC7: db $07 ; Raw block
#_0BCDC8: db $1D, $9F, $1C, $1D, $82, $81, $83, $84
#_0BCDD0: db $22 ; Repeat byte
#_0BCDD1: db $85
#_0BCDD2: db $01 ; Raw block
#_0BCDD3: db $ED, $ED
#_0BCDD5: db $63 ; Increment fill
#_0BCDD6: db $F8
#_0BCDD7: db $04 ; Raw block
#_0BCDD8: db $F2, $75, $9F, $AB, $00
#_0BCDDD: db $24 ; Repeat byte
#_0BCDDE: db $85
#_0BCDDF: db $83 ; Copy past
#_0BCDE0: dw $C000
#_0BCDE2: db $0B ; Raw block
#_0BCDE3: db $FF, $00, $FB, $F2, $AA, $9F, $34, $00
#_0BCDEB: db $02, $86, $5B, $87
#_0BCDEF: db $84 ; Copy past
#_0BCDF0: dw $D000
#_0BCDF2: db $00 ; Raw block
#_0BCDF3: db $03
#_0BCDF4: db $84 ; Copy past
#_0BCDF5: dw $D500
#_0BCDF7: db $04 ; Raw block
#_0BCDF8: db $3C, $3D, $1C, $75, $B2
#_0BCDFD: db $85 ; Copy past
#_0BCDFE: dw $E000
#_0BCE00: db $02 ; Raw block
#_0BCE01: db $03, $00, $05
#_0BCE04: db $26 ; Repeat byte
#_0BCE05: db $07
#_0BCE06: db $FF ; End of Map 43

;===================================================================================================

OverworldMap32_Screen44_High:
#_0BCE07: db $E4, $2C ; EXT Repeat byte
#_0BCE09: db $12
#_0BCE0A: db $00 ; Raw block
#_0BCE0B: db $02
#_0BCE0C: db $2E ; Repeat byte
#_0BCE0D: db $12
#_0BCE0E: db $05 ; Raw block
#_0BCE0F: db $00, $02, $01, $12, $12, $02
#_0BCE15: db $29 ; Repeat byte
#_0BCE16: db $12
#_0BCE17: db $22 ; Repeat byte
#_0BCE18: db $02
#_0BCE19: db $03 ; Raw block
#_0BCE1A: db $12, $12, $01, $00
#_0BCE1E: db $27 ; Repeat byte
#_0BCE1F: db $12
#_0BCE20: db $25 ; Repeat byte
#_0BCE21: db $01
#_0BCE22: db $28 ; Repeat byte
#_0BCE23: db $00
#_0BCE24: db $00 ; Raw block
#_0BCE25: db $05
#_0BCE26: db $22 ; Repeat byte
#_0BCE27: db $01
#_0BCE28: db $05 ; Raw block
#_0BCE29: db $02, $00, $00, $12, $00, $04
#_0BCE2F: db $27 ; Repeat byte
#_0BCE30: db $02
#_0BCE31: db $09 ; Raw block
#_0BCE32: db $01, $01, $12, $02, $04, $00, $00, $02
#_0BCE3A: db $02, $01
#_0BCE3C: db $22 ; Repeat byte
#_0BCE3D: db $02
#_0BCE3E: db $24 ; Repeat byte
#_0BCE3F: db $01
#_0BCE40: db $07 ; Raw block
#_0BCE41: db $02, $01, $12, $04, $04, $02, $02, $12
#_0BCE49: db $23 ; Repeat byte
#_0BCE4A: db $02
#_0BCE4B: db $00 ; Raw block
#_0BCE4C: db $00
#_0BCE4D: db $83 ; Copy past
#_0BCE4E: dw $8D00
#_0BCE50: db $22 ; Repeat byte
#_0BCE51: db $12
#_0BCE52: db $00 ; Raw block
#_0BCE53: db $04
#_0BCE54: db $22 ; Repeat byte
#_0BCE55: db $02
#_0BCE56: db $04 ; Raw block
#_0BCE57: db $01, $03, $12, $02, $02
#_0BCE5C: db $83 ; Copy past
#_0BCE5D: dw $8300
#_0BCE5F: db $23 ; Repeat byte
#_0BCE60: db $12
#_0BCE61: db $01 ; Raw block
#_0BCE62: db $00, $02
#_0BCE64: db $43 ; Repeat word
#_0BCE65: dw $0612
#_0BCE67: db $25 ; Repeat byte
#_0BCE68: db $02
#_0BCE69: db $02 ; Raw block
#_0BCE6A: db $12, $12, $07
#_0BCE6D: db $83 ; Copy past
#_0BCE6E: dw $B300
#_0BCE70: db $03 ; Raw block
#_0BCE71: db $12, $0B, $01, $12
#_0BCE75: db $22 ; Repeat byte
#_0BCE76: db $02
#_0BCE77: db $06 ; Raw block
#_0BCE78: db $01, $01, $07, $07, $09, $00, $00
#_0BCE7F: db $22 ; Repeat byte
#_0BCE80: db $02
#_0BCE81: db $23 ; Repeat byte
#_0BCE82: db $12
#_0BCE83: db $05 ; Raw block
#_0BCE84: db $01, $02, $02, $03, $0B, $0B
#_0BCE8A: db $25 ; Repeat byte
#_0BCE8B: db $02
#_0BCE8C: db $83 ; Copy past
#_0BCE8D: dw $A900
#_0BCE8F: db $03 ; Raw block
#_0BCE90: db $01, $02, $01, $01
#_0BCE94: db $22 ; Repeat byte
#_0BCE95: db $02
#_0BCE96: db $22 ; Repeat byte
#_0BCE97: db $01
#_0BCE98: db $02 ; Raw block
#_0BCE99: db $02, $02, $01
#_0BCE9C: db $23 ; Repeat byte
#_0BCE9D: db $02
#_0BCE9E: db $22 ; Repeat byte
#_0BCE9F: db $01
#_0BCEA0: db $FF ; End of Map 44

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen44_Low:
#_0BCEA1: db $00 ; Raw block
#_0BCEA2: db $2D
#_0BCEA3: db $EC, $2B ; EXT Increment fill
#_0BCEA5: db $88
#_0BCEA6: db $00 ; Raw block
#_0BCEA7: db $31
#_0BCEA8: db $6E ; Increment fill
#_0BCEA9: db $B4
#_0BCEAA: db $05 ; Raw block
#_0BCEAB: db $1D, $3E, $C3, $C3, $C4, $41
#_0BCEB1: db $69 ; Increment fill
#_0BCEB2: db $C5
#_0BCEB3: db $06 ; Raw block
#_0BCEB4: db $4B, $4C, $4C, $CF, $42, $CC, $AA
#_0BCEBB: db $67 ; Increment fill
#_0BCEBC: db $D0
#_0BCEBD: db $19 ; Raw block
#_0BCEBE: db $48, $49, $EB, $EB, $8A, $CC, $1C, $1D
#_0BCEC6: db $9F, $1D, $1D, $AA, $1D, $B2, $1C, $46
#_0BCECE: db $2E, $00, $06, $5D, $AA, $1D, $75, $AA
#_0BCED6: db $B5, $60
#_0BCED8: db $24 ; Repeat byte
#_0BCED9: db $61
#_0BCEDA: db $0B ; Raw block
#_0BCEDB: db $62, $63, $17, $0C, $D8, $08, $C2, $AA
#_0BCEE3: db $1D, $65, $02, $22
#_0BCEE7: db $62 ; Increment fill
#_0BCEE8: db $66
#_0BCEE9: db $0C ; Raw block
#_0BCEEA: db $22, $23, $03, $03, $17, $69, $02, $7B
#_0BCEF2: db $C4, $B5, $6E, $6F, $D9
#_0BCEF7: db $63 ; Increment fill
#_0BCEF8: db $71
#_0BCEF9: db $04 ; Raw block
#_0BCEFA: db $B2, $E4, $03, $75, $71
#_0BCEFF: db $62 ; Increment fill
#_0BCF00: db $DA
#_0BCF01: db $00 ; Raw block
#_0BCF02: db $C5
#_0BCF03: db $62 ; Increment fill
#_0BCF04: db $7A
#_0BCF05: db $12 ; Raw block
#_0BCF06: db $2D, $FF, $DD, $7F, $80, $1D, $81, $82
#_0BCF0E: db $71, $83, $84, $DE, $DF, $9F, $87, $E0
#_0BCF16: db $F5, $E1, $3A
#_0BCF19: db $85 ; Copy past
#_0BCF1A: dw $0400
#_0BCF1C: db $0A ; Raw block
#_0BCF1D: db $85, $85, $02, $E2, $B2, $92, $E3, $DD
#_0BCF25: db $3D, $2D, $E4
#_0BCF28: db $62 ; Increment fill
#_0BCF29: db $96
#_0BCF2A: db $06 ; Raw block
#_0BCF2B: db $53, $6A, $00, $02, $DD, $9F, $1D
#_0BCF32: db $62 ; Increment fill
#_0BCF33: db $99
#_0BCF34: db $62 ; Increment fill
#_0BCF35: db $E5
#_0BCF36: db $09 ; Raw block
#_0BCF37: db $75, $2E, $82, $9F, $20, $3C, $3D, $A1
#_0BCF3F: db $07, $07
#_0BCF41: db $62 ; Increment fill
#_0BCF42: db $A2
#_0BCF43: db $17 ; Raw block
#_0BCF44: db $E8, $A6, $A7, $9F, $2E, $A8, $03, $F8
#_0BCF4C: db $07, $07, $AA, $F8, $F8, $FA, $05, $07
#_0BCF54: db $EF, $09, $07, $07, $AC, $03, $03, $F8
#_0BCF5C: db $FF ; End of Map 44

;===================================================================================================

OverworldMap32_Screen45_High:
#_0BCF5D: db $3B ; Repeat byte
#_0BCF5E: db $12
#_0BCF5F: db $03 ; Raw block
#_0BCF60: db $13, $13, $12, $12
#_0BCF64: db $29 ; Repeat byte
#_0BCF65: db $13
#_0BCF66: db $01 ; Raw block
#_0BCF67: db $12, $12
#_0BCF69: db $23 ; Repeat byte
#_0BCF6A: db $13
#_0BCF6B: db $00 ; Raw block
#_0BCF6C: db $01
#_0BCF6D: db $22 ; Repeat byte
#_0BCF6E: db $13
#_0BCF6F: db $00 ; Raw block
#_0BCF70: db $12
#_0BCF71: db $2A ; Repeat byte
#_0BCF72: db $13
#_0BCF73: db $22 ; Repeat byte
#_0BCF74: db $02
#_0BCF75: db $01 ; Raw block
#_0BCF76: db $01, $01
#_0BCF78: db $28 ; Repeat byte
#_0BCF79: db $13
#_0BCF7A: db $01 ; Raw block
#_0BCF7B: db $01, $01
#_0BCF7D: db $22 ; Repeat byte
#_0BCF7E: db $02
#_0BCF7F: db $01 ; Raw block
#_0BCF80: db $00, $02
#_0BCF82: db $28 ; Repeat byte
#_0BCF83: db $13
#_0BCF84: db $01 ; Raw block
#_0BCF85: db $00, $00
#_0BCF87: db $23 ; Repeat byte
#_0BCF88: db $02
#_0BCF89: db $00 ; Raw block
#_0BCF8A: db $00
#_0BCF8B: db $28 ; Repeat byte
#_0BCF8C: db $13
#_0BCF8D: db $02 ; Raw block
#_0BCF8E: db $00, $00, $13
#_0BCF91: db $83 ; Copy past
#_0BCF92: dw $5100
#_0BCF94: db $28 ; Repeat byte
#_0BCF95: db $13
#_0BCF96: db $01 ; Raw block
#_0BCF97: db $00, $00
#_0BCF99: db $25 ; Repeat byte
#_0BCF9A: db $02
#_0BCF9B: db $00 ; Raw block
#_0BCF9C: db $13
#_0BCF9D: db $22 ; Repeat byte
#_0BCF9E: db $12
#_0BCF9F: db $22 ; Repeat byte
#_0BCFA0: db $13
#_0BCFA1: db $01 ; Raw block
#_0BCFA2: db $02, $01
#_0BCFA4: db $25 ; Repeat byte
#_0BCFA5: db $02
#_0BCFA6: db $22 ; Repeat byte
#_0BCFA7: db $12
#_0BCFA8: db $01 ; Raw block
#_0BCFA9: db $13, $12
#_0BCFAB: db $22 ; Repeat byte
#_0BCFAC: db $13
#_0BCFAD: db $22 ; Repeat byte
#_0BCFAE: db $03
#_0BCFAF: db $02 ; Raw block
#_0BCFB0: db $02, $02, $03
#_0BCFB3: db $83 ; Copy past
#_0BCFB4: dw $1C00
#_0BCFB6: db $26 ; Repeat byte
#_0BCFB7: db $13
#_0BCFB8: db $00 ; Raw block
#_0BCFB9: db $03
#_0BCFBA: db $22 ; Repeat byte
#_0BCFBB: db $02
#_0BCFBC: db $03 ; Raw block
#_0BCFBD: db $03, $13, $12, $12
#_0BCFC1: db $26 ; Repeat byte
#_0BCFC2: db $13
#_0BCFC3: db $01 ; Raw block
#_0BCFC4: db $12, $13
#_0BCFC6: db $22 ; Repeat byte
#_0BCFC7: db $02
#_0BCFC8: db $00 ; Raw block
#_0BCFC9: db $03
#_0BCFCA: db $83 ; Copy past
#_0BCFCB: dw $3300
#_0BCFCD: db $00 ; Raw block
#_0BCFCE: db $12
#_0BCFCF: db $24 ; Repeat byte
#_0BCFD0: db $13
#_0BCFD1: db $02 ; Raw block
#_0BCFD2: db $12, $12, $02
#_0BCFD5: db $22 ; Repeat byte
#_0BCFD6: db $03
#_0BCFD7: db $2B ; Repeat byte
#_0BCFD8: db $13
#_0BCFD9: db $00 ; Raw block
#_0BCFDA: db $03
#_0BCFDB: db $2F ; Repeat byte
#_0BCFDC: db $01
#_0BCFDD: db $2F ; Repeat byte
#_0BCFDE: db $03
#_0BCFDF: db $FF ; End of Map 45

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen45_Low:
#_0BCFE0: db $67 ; Increment fill
#_0BCFE1: db $E9
#_0BCFE2: db $01 ; Raw block
#_0BCFE3: db $3B, $3B
#_0BCFE5: db $65 ; Increment fill
#_0BCFE6: db $F1
#_0BCFE7: db $00 ; Raw block
#_0BCFE8: db $95
#_0BCFE9: db $67 ; Increment fill
#_0BCFEA: db $F7
#_0BCFEB: db $06 ; Raw block
#_0BCFEC: db $3B, $3B, $FF, $00, $01, $96, $F6
#_0BCFF3: db $64 ; Increment fill
#_0BCFF4: db $02
#_0BCFF5: db $01 ; Raw block
#_0BCFF6: db $00, $00
#_0BCFF8: db $62 ; Increment fill
#_0BCFF9: db $07
#_0BCFFA: db $06 ; Raw block
#_0BCFFB: db $3B, $F1, $0A, $00, $0B, $0C, $C3
#_0BD002: db $62 ; Increment fill
#_0BD003: db $0D
#_0BD004: db $04 ; Raw block
#_0BD005: db $F6, $10, $11, $00, $00
#_0BD00A: db $66 ; Increment fill
#_0BD00B: db $12
#_0BD00C: db $04 ; Raw block
#_0BD00D: db $CC, $CD, $31, $C3, $C3
#_0BD012: db $68 ; Increment fill
#_0BD013: db $19
#_0BD014: db $01 ; Raw block
#_0BD015: db $C3, $C3
#_0BD017: db $62 ; Increment fill
#_0BD018: db $D1
#_0BD019: db $05 ; Raw block
#_0BD01A: db $1D, $D4, $22, $23, $00, $24
#_0BD020: db $22 ; Repeat byte
#_0BD021: db $00
#_0BD022: db $03 ; Raw block
#_0BD023: db $25, $26, $9F, $A9
#_0BD027: db $63 ; Increment fill
#_0BD028: db $DB
#_0BD029: db $02 ; Raw block
#_0BD02A: db $AA, $27, $28
#_0BD02D: db $24 ; Repeat byte
#_0BD02E: db $29
#_0BD02F: db $08 ; Raw block
#_0BD030: db $2A, $2B, $9F, $B2, $2C, $DC, $E8, $1D
#_0BD038: db $E9
#_0BD039: db $68 ; Increment fill
#_0BD03A: db $2D
#_0BD03B: db $0B ; Raw block
#_0BD03C: db $AA, $9F, $F2, $DC, $F3, $F4, $07, $AA
#_0BD044: db $36, $38, $3A, $3B
#_0BD048: db $62 ; Increment fill
#_0BD049: db $37
#_0BD04A: db $04 ; Raw block
#_0BD04B: db $F7, $F2, $F8, $F2, $DC
#_0BD050: db $62 ; Increment fill
#_0BD051: db $F9
#_0BD052: db $04 ; Raw block
#_0BD053: db $5D, $69, $95, $3A, $47
#_0BD058: db $62 ; Increment fill
#_0BD059: db $3B
#_0BD05A: db $62 ; Increment fill
#_0BD05B: db $00
#_0BD05C: db $07 ; Raw block
#_0BD05D: db $F2, $DC, $03, $3E, $3F, $69, $F6, $40
#_0BD065: db $22 ; Repeat byte
#_0BD066: db $41
#_0BD067: db $0A ; Raw block
#_0BD068: db $00, $42, $3D, $09, $69, $F2, $DC, $0A
#_0BD070: db $43, $F6, $F6
#_0BD073: db $66 ; Increment fill
#_0BD074: db $44
#_0BD075: db $01 ; Raw block
#_0BD076: db $A6, $4B
#_0BD078: db $85 ; Copy past
#_0BD079: dw $AF00
#_0BD07B: db $02 ; Raw block
#_0BD07C: db $4C, $45, $39
#_0BD07F: db $64 ; Increment fill
#_0BD080: db $4D
#_0BD081: db $02 ; Raw block
#_0BD082: db $B5, $4F, $69
#_0BD085: db $62 ; Increment fill
#_0BD086: db $13
#_0BD087: db $63 ; Increment fill
#_0BD088: db $52
#_0BD089: db $62 ; Increment fill
#_0BD08A: db $55
#_0BD08B: db $05 ; Raw block
#_0BD08C: db $55, $58, $59, $53, $5A, $1F
#_0BD092: db $2F ; Repeat byte
#_0BD093: db $06
#_0BD094: db $2E ; Repeat byte
#_0BD095: db $20
#_0BD096: db $00 ; Raw block
#_0BD097: db $21
#_0BD098: db $FF ; End of Map 45

;===================================================================================================

OverworldMap32_Screen46_High:
#_0BD099: db $22 ; Repeat byte
#_0BD09A: db $13
#_0BD09B: db $00 ; Raw block
#_0BD09C: db $12
#_0BD09D: db $22 ; Repeat byte
#_0BD09E: db $13
#_0BD09F: db $00 ; Raw block
#_0BD0A0: db $12
#_0BD0A1: db $2B ; Repeat byte
#_0BD0A2: db $13
#_0BD0A3: db $04 ; Raw block
#_0BD0A4: db $12, $01, $13, $01, $01
#_0BD0A9: db $22 ; Repeat byte
#_0BD0AA: db $13
#_0BD0AB: db $00 ; Raw block
#_0BD0AC: db $12
#_0BD0AD: db $23 ; Repeat byte
#_0BD0AE: db $13
#_0BD0AF: db $01 ; Raw block
#_0BD0B0: db $12, $13
#_0BD0B2: db $83 ; Copy past
#_0BD0B3: dw $1600
#_0BD0B5: db $07 ; Raw block
#_0BD0B6: db $00, $00, $03, $13, $03, $01, $02, $12
#_0BD0BE: db $24 ; Repeat byte
#_0BD0BF: db $13
#_0BD0C0: db $01 ; Raw block
#_0BD0C1: db $03, $03
#_0BD0C3: db $43 ; Repeat word
#_0BD0C4: dw $0102
#_0BD0C6: db $07 ; Raw block
#_0BD0C7: db $13, $03, $00, $00, $02, $02, $01, $12
#_0BD0CF: db $22 ; Repeat byte
#_0BD0D0: db $13
#_0BD0D1: db $01 ; Raw block
#_0BD0D2: db $03, $02
#_0BD0D4: db $83 ; Copy past
#_0BD0D5: dw $0100
#_0BD0D7: db $06 ; Raw block
#_0BD0D8: db $03, $02, $02, $03, $03, $00, $02
#_0BD0DF: db $27 ; Repeat byte
#_0BD0E0: db $13
#_0BD0E1: db $00 ; Raw block
#_0BD0E2: db $03
#_0BD0E3: db $22 ; Repeat byte
#_0BD0E4: db $01
#_0BD0E5: db $06 ; Raw block
#_0BD0E6: db $03, $03, $00, $00, $03, $01, $12
#_0BD0ED: db $22 ; Repeat byte
#_0BD0EE: db $13
#_0BD0EF: db $07 ; Raw block
#_0BD0F0: db $12, $03, $00, $03, $03, $01, $01, $03
#_0BD0F8: db $23 ; Repeat byte
#_0BD0F9: db $00
#_0BD0FA: db $01 ; Raw block
#_0BD0FB: db $02, $12
#_0BD0FD: db $22 ; Repeat byte
#_0BD0FE: db $13
#_0BD0FF: db $01 ; Raw block
#_0BD100: db $03, $00
#_0BD102: db $28 ; Repeat byte
#_0BD103: db $03
#_0BD104: db $01 ; Raw block
#_0BD105: db $00, $13
#_0BD107: db $83 ; Copy past
#_0BD108: dw $6D00
#_0BD10A: db $01 ; Raw block
#_0BD10B: db $07, $00
#_0BD10D: db $23 ; Repeat byte
#_0BD10E: db $03
#_0BD10F: db $02 ; Raw block
#_0BD110: db $01, $01, $03
#_0BD113: db $29 ; Repeat byte
#_0BD114: db $02
#_0BD115: db $62 ; Increment fill
#_0BD116: db $01
#_0BD117: db $01 ; Raw block
#_0BD118: db $01, $01
#_0BD11A: db $24 ; Repeat byte
#_0BD11B: db $03
#_0BD11C: db $23 ; Repeat byte
#_0BD11D: db $01
#_0BD11E: db $01 ; Raw block
#_0BD11F: db $03, $03
#_0BD121: db $23 ; Repeat byte
#_0BD122: db $01
#_0BD123: db $25 ; Repeat byte
#_0BD124: db $03
#_0BD125: db $23 ; Repeat byte
#_0BD126: db $01
#_0BD127: db $01 ; Raw block
#_0BD128: db $03, $03
#_0BD12A: db $22 ; Repeat byte
#_0BD12B: db $01
#_0BD12C: db $23 ; Repeat byte
#_0BD12D: db $03
#_0BD12E: db $00 ; Raw block
#_0BD12F: db $13
#_0BD130: db $27 ; Repeat byte
#_0BD131: db $02
#_0BD132: db $02 ; Raw block
#_0BD133: db $03, $01, $01
#_0BD136: db $23 ; Repeat byte
#_0BD137: db $03
#_0BD138: db $00 ; Raw block
#_0BD139: db $13
#_0BD13A: db $22 ; Repeat byte
#_0BD13B: db $03
#_0BD13C: db $01 ; Raw block
#_0BD13D: db $05, $13
#_0BD13F: db $23 ; Repeat byte
#_0BD140: db $03
#_0BD141: db $01 ; Raw block
#_0BD142: db $01, $01
#_0BD144: db $24 ; Repeat byte
#_0BD145: db $03
#_0BD146: db $22 ; Repeat byte
#_0BD147: db $01
#_0BD148: db $01 ; Raw block
#_0BD149: db $03, $03
#_0BD14B: db $24 ; Repeat byte
#_0BD14C: db $01
#_0BD14D: db $25 ; Repeat byte
#_0BD14E: db $03
#_0BD14F: db $22 ; Repeat byte
#_0BD150: db $01
#_0BD151: db $01 ; Raw block
#_0BD152: db $13, $03
#_0BD154: db $25 ; Repeat byte
#_0BD155: db $01
#_0BD156: db $FF ; End of Map 46

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen46_Low:
#_0BD157: db $62 ; Increment fill
#_0BD158: db $5B
#_0BD159: db $00 ; Raw block
#_0BD15A: db $EB
#_0BD15B: db $62 ; Increment fill
#_0BD15C: db $5E
#_0BD15D: db $00 ; Raw block
#_0BD15E: db $35
#_0BD15F: db $69 ; Increment fill
#_0BD160: db $61
#_0BD161: db $06 ; Raw block
#_0BD162: db $67, $6B, $3E, $88, $6C, $8B, $89
#_0BD169: db $62 ; Increment fill
#_0BD16A: db $6D
#_0BD16B: db $12 ; Raw block
#_0BD16C: db $6D, $0D, $0E, $67, $70, $F6, $4E, $71
#_0BD174: db $93, $F2, $72, $1C, $1D, $32, $73, $34
#_0BD17C: db $CC, $30, $3F
#_0BD17F: db $64 ; Increment fill
#_0BD180: db $74
#_0BD181: db $1D ; Raw block
#_0BD182: db $3A, $3B, $07, $A0, $A1, $AD, $79, $3D
#_0BD18A: db $AA, $9F, $30, $31, $C3, $B4, $7A, $7B
#_0BD192: db $3D, $40, $FB, $7C, $7D, $5D, $7E, $42
#_0BD19A: db $4B, $4C, $43, $44, $1D, $3E
#_0BD1A0: db $66 ; Increment fill
#_0BD1A1: db $7F
#_0BD1A2: db $0B ; Raw block
#_0BD1A3: db $7E, $49, $52, $53, $EB, $4A, $4B, $A9
#_0BD1AB: db $1C, $4D, $8B, $3F
#_0BD1AF: db $62 ; Increment fill
#_0BD1B0: db $86
#_0BD1B1: db $0D ; Raw block
#_0BD1B2: db $79, $4F, $FB, $50, $51, $0A, $0A, $52
#_0BD1BA: db $1D, $B2, $1C, $1D, $30, $3F
#_0BD1C0: db $62 ; Increment fill
#_0BD1C1: db $89
#_0BD1C2: db $01 ; Raw block
#_0BD1C3: db $55, $9F
#_0BD1C5: db $65 ; Increment fill
#_0BD1C6: db $56
#_0BD1C7: db $62 ; Increment fill
#_0BD1C8: db $5B
#_0BD1C9: db $08 ; Raw block
#_0BD1CA: db $AA, $8C, $8B, $8B, $5E, $1C, $AF, $9F
#_0BD1D2: db $56
#_0BD1D3: db $62 ; Increment fill
#_0BD1D4: db $60
#_0BD1D5: db $04 ; Raw block
#_0BD1D6: db $06, $06, $63, $F3, $F4
#_0BD1DB: db $27 ; Repeat byte
#_0BD1DC: db $07
#_0BD1DD: db $04 ; Raw block
#_0BD1DE: db $EF, $09, $64, $06, $06
#_0BD1E3: db $84 ; Copy past
#_0BD1E4: dw $0C00
#_0BD1E6: db $23 ; Repeat byte
#_0BD1E7: db $F8
#_0BD1E8: db $01 ; Raw block
#_0BD1E9: db $68, $69
#_0BD1EB: db $22 ; Repeat byte
#_0BD1EC: db $F8
#_0BD1ED: db $00 ; Raw block
#_0BD1EE: db $06
#_0BD1EF: db $63 ; Increment fill
#_0BD1F0: db $6A
#_0BD1F1: db $01 ; Raw block
#_0BD1F2: db $70, $6F
#_0BD1F4: db $23 ; Repeat byte
#_0BD1F5: db $E5
#_0BD1F6: db $01 ; Raw block
#_0BD1F7: db $70, $6F
#_0BD1F9: db $22 ; Repeat byte
#_0BD1FA: db $F8
#_0BD1FB: db $62 ; Increment fill
#_0BD1FC: db $6A
#_0BD1FD: db $01 ; Raw block
#_0BD1FE: db $6C, $8D
#_0BD200: db $27 ; Repeat byte
#_0BD201: db $07
#_0BD202: db $03 ; Raw block
#_0BD203: db $72, $F8, $F8, $74
#_0BD207: db $22 ; Repeat byte
#_0BD208: db $6C
#_0BD209: db $00 ; Raw block
#_0BD20A: db $8E
#_0BD20B: db $22 ; Repeat byte
#_0BD20C: db $76
#_0BD20D: db $01 ; Raw block
#_0BD20E: db $44, $8F
#_0BD210: db $22 ; Repeat byte
#_0BD211: db $76
#_0BD212: db $03 ; Raw block
#_0BD213: db $77, $F8, $F8, $74
#_0BD217: db $22 ; Repeat byte
#_0BD218: db $6C
#_0BD219: db $00 ; Raw block
#_0BD21A: db $6D
#_0BD21B: db $22 ; Repeat byte
#_0BD21C: db $F8
#_0BD21D: db $01 ; Raw block
#_0BD21E: db $6E, $79
#_0BD220: db $24 ; Repeat byte
#_0BD221: db $F8
#_0BD222: db $01 ; Raw block
#_0BD223: db $7A, $74
#_0BD225: db $22 ; Repeat byte
#_0BD226: db $6C
#_0BD227: db $00 ; Raw block
#_0BD228: db $6D
#_0BD229: db $22 ; Repeat byte
#_0BD22A: db $F8
#_0BD22B: db $01 ; Raw block
#_0BD22C: db $90, $64
#_0BD22E: db $24 ; Repeat byte
#_0BD22F: db $F8
#_0BD230: db $00 ; Raw block
#_0BD231: db $03
#_0BD232: db $FF ; End of Map 46

;===================================================================================================

OverworldMap32_Screen47_High:
#_0BD233: db $05 ; Raw block
#_0BD234: db $12, $12, $13, $13, $12, $12
#_0BD23A: db $28 ; Repeat byte
#_0BD23B: db $13
#_0BD23C: db $83 ; Copy past
#_0BD23D: dw $0100
#_0BD23F: db $27 ; Repeat byte
#_0BD240: db $13
#_0BD241: db $02 ; Raw block
#_0BD242: db $12, $12, $13
#_0BD245: db $24 ; Repeat byte
#_0BD246: db $12
#_0BD247: db $27 ; Repeat byte
#_0BD248: db $01
#_0BD249: db $24 ; Repeat byte
#_0BD24A: db $13
#_0BD24B: db $01 ; Raw block
#_0BD24C: db $01, $01
#_0BD24E: db $22 ; Repeat byte
#_0BD24F: db $13
#_0BD250: db $25 ; Repeat byte
#_0BD251: db $00
#_0BD252: db $01 ; Raw block
#_0BD253: db $02, $01
#_0BD255: db $22 ; Repeat byte
#_0BD256: db $13
#_0BD257: db $22 ; Repeat byte
#_0BD258: db $03
#_0BD259: db $22 ; Repeat byte
#_0BD25A: db $00
#_0BD25B: db $02 ; Raw block
#_0BD25C: db $01, $03, $13
#_0BD25F: db $83 ; Copy past
#_0BD260: dw $4100
#_0BD262: db $02 ; Raw block
#_0BD263: db $13, $03, $13
#_0BD266: db $22 ; Repeat byte
#_0BD267: db $03
#_0BD268: db $03 ; Raw block
#_0BD269: db $00, $00, $13, $01
#_0BD26D: db $22 ; Repeat byte
#_0BD26E: db $13
#_0BD26F: db $01 ; Raw block
#_0BD270: db $03, $13
#_0BD272: db $83 ; Copy past
#_0BD273: dw $3A00
#_0BD275: db $22 ; Repeat byte
#_0BD276: db $03
#_0BD277: db $03 ; Raw block
#_0BD278: db $00, $00, $01, $13
#_0BD27C: db $22 ; Repeat byte
#_0BD27D: db $01
#_0BD27E: db $0B ; Raw block
#_0BD27F: db $13, $13, $00, $03, $12, $13, $01, $03
#_0BD287: db $03, $13, $13, $01
#_0BD28B: db $44 ; Repeat word
#_0BD28C: dw $0013
#_0BD28E: db $01 ; Raw block
#_0BD28F: db $02, $00
#_0BD291: db $83 ; Copy past
#_0BD292: dw $7200
#_0BD294: db $05 ; Raw block
#_0BD295: db $03, $03, $00, $13, $03, $04
#_0BD29B: db $44 ; Repeat word
#_0BD29C: dw $1303
#_0BD29E: db $01 ; Raw block
#_0BD29F: db $00, $02
#_0BD2A1: db $83 ; Copy past
#_0BD2A2: dw $3E00
#_0BD2A4: db $62 ; Increment fill
#_0BD2A5: db $01
#_0BD2A6: db $28 ; Repeat byte
#_0BD2A7: db $13
#_0BD2A8: db $00 ; Raw block
#_0BD2A9: db $03
#_0BD2AA: db $83 ; Copy past
#_0BD2AB: dw $3E00
#_0BD2AD: db $01 ; Raw block
#_0BD2AE: db $00, $00
#_0BD2B0: db $26 ; Repeat byte
#_0BD2B1: db $13
#_0BD2B2: db $07 ; Raw block
#_0BD2B3: db $00, $02, $02, $13, $12, $13, $03, $01
#_0BD2BB: db $22 ; Repeat byte
#_0BD2BC: db $00
#_0BD2BD: db $22 ; Repeat byte
#_0BD2BE: db $13
#_0BD2BF: db $03 ; Raw block
#_0BD2C0: db $00, $00, $05, $02
#_0BD2C4: db $83 ; Copy past
#_0BD2C5: dw $0000
#_0BD2C7: db $00 ; Raw block
#_0BD2C8: db $03
#_0BD2C9: db $22 ; Repeat byte
#_0BD2CA: db $01
#_0BD2CB: db $22 ; Repeat byte
#_0BD2CC: db $02
#_0BD2CD: db $06 ; Raw block
#_0BD2CE: db $01, $00, $00, $05, $13, $13, $12
#_0BD2D5: db $22 ; Repeat byte
#_0BD2D6: db $13
#_0BD2D7: db $02 ; Raw block
#_0BD2D8: db $03, $01, $01
#_0BD2DB: db $22 ; Repeat byte
#_0BD2DC: db $02
#_0BD2DD: db $22 ; Repeat byte
#_0BD2DE: db $01
#_0BD2DF: db $00 ; Raw block
#_0BD2E0: db $03
#_0BD2E1: db $26 ; Repeat byte
#_0BD2E2: db $13
#_0BD2E3: db $01 ; Raw block
#_0BD2E4: db $12, $12
#_0BD2E6: db $22 ; Repeat byte
#_0BD2E7: db $13
#_0BD2E8: db $03 ; Raw block
#_0BD2E9: db $12, $01, $01, $03
#_0BD2ED: db $22 ; Repeat byte
#_0BD2EE: db $13
#_0BD2EF: db $00 ; Raw block
#_0BD2F0: db $12
#_0BD2F1: db $27 ; Repeat byte
#_0BD2F2: db $13
#_0BD2F3: db $22 ; Repeat byte
#_0BD2F4: db $12
#_0BD2F5: db $43 ; Repeat word
#_0BD2F6: dw $1213
#_0BD2F8: db $FF ; End of Map 47

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen47_Low:
#_0BD2F9: db $05 ; Raw block
#_0BD2FA: db $96, $F6, $91, $92, $47, $EC
#_0BD300: db $68 ; Increment fill
#_0BD301: db $93
#_0BD302: db $13 ; Raw block
#_0BD303: db $3B, $9C, $9D, $CF, $9E, $9E, $89, $89
#_0BD30B: db $61, $9F, $A0, $61, $F5, $95, $A1, $3A
#_0BD313: db $3B, $37, $CF, $42
#_0BD317: db $23 ; Repeat byte
#_0BD318: db $8B
#_0BD319: db $05 ; Raw block
#_0BD31A: db $89, $C3, $8A, $89, $A2, $02
#_0BD320: db $62 ; Increment fill
#_0BD321: db $A3
#_0BD322: db $01 ; Raw block
#_0BD323: db $C3, $8A
#_0BD325: db $62 ; Increment fill
#_0BD326: db $A6
#_0BD327: db $E0, $21 ; EXT Raw block
#_0BD329: db $9F, $AA, $B2, $AA, $1D, $B2, $3E, $C3
#_0BD331: db $0D, $A9, $AA, $44, $44, $86, $A9, $1C
#_0BD339: db $1D, $41, $44, $AB, $44, $86, $1C, $1C
#_0BD341: db $8C, $8A, $AC, $4B, $8C, $8D, $B2, $1D
#_0BD349: db $AD, $48
#_0BD34B: db $62 ; Increment fill
#_0BD34C: db $AE
#_0BD34D: db $E0, $3A ; EXT Raw block
#_0BD34F: db $8D, $B1, $1C, $A1, $AD, $43, $20, $94
#_0BD357: db $95, $1D, $AA, $52, $B2, $88, $8B, $89
#_0BD35F: db $B3, $B4, $AA, $9A, $5D, $B5, $F8, $9C
#_0BD367: db $9D, $A7, $A8, $77, $B6, $1D, $B7, $1D
#_0BD36F: db $B8, $DD, $1C, $A4, $B9, $BA, $F8, $A7
#_0BD377: db $A8, $AA, $BB, $50, $8E, $B2, $BC, $B3
#_0BD37F: db $BD, $AC, $A9, $3E, $A2, $BE, $AE, $AF
#_0BD387: db $F2, $8A, $B6
#_0BD38A: db $66 ; Increment fill
#_0BD38B: db $BF
#_0BD38C: db $08 ; Raw block
#_0BD38D: db $A7, $A8, $B7, $C6, $C7, $00, $B9, $9F
#_0BD395: db $A9
#_0BD396: db $66 ; Increment fill
#_0BD397: db $C8
#_0BD398: db $0A ; Raw block
#_0BD399: db $AA, $A1, $AA, $36, $F6, $4B, $BC, $F2
#_0BD3A1: db $9F, $1C, $1D
#_0BD3A4: db $62 ; Increment fill
#_0BD3A5: db $CF
#_0BD3A6: db $0B ; Raw block
#_0BD3A7: db $1D, $AA, $4D, $AA, $5D, $69, $D2, $78
#_0BD3AF: db $3A, $FB, $AB, $AC
#_0BD3B3: db $22 ; Repeat byte
#_0BD3B4: db $07
#_0BD3B5: db $06 ; Raw block
#_0BD3B6: db $A0, $9F, $1D, $6F, $D3, $B5, $5F
#_0BD3BD: db $62 ; Increment fill
#_0BD3BE: db $D4
#_0BD3BF: db $02 ; Raw block
#_0BD3C0: db $C7, $B3, $B4
#_0BD3C3: db $22 ; Repeat byte
#_0BD3C4: db $FB
#_0BD3C5: db $62 ; Increment fill
#_0BD3C6: db $A9
#_0BD3C7: db $00 ; Raw block
#_0BD3C8: db $C8
#_0BD3C9: db $65 ; Increment fill
#_0BD3CA: db $D7
#_0BD3CB: db $0D ; Raw block
#_0BD3CC: db $D6, $67, $68, $3F, $DD, $83, $55, $B2
#_0BD3D4: db $B3, $CD, $DE, $4E, $DF, $3C
#_0BD3DA: db $67 ; Increment fill
#_0BD3DB: db $E0
#_0BD3DC: db $62 ; Increment fill
#_0BD3DD: db $65
#_0BD3DE: db $03 ; Raw block
#_0BD3DF: db $E8, $5F, $E9, $3A
#_0BD3E3: db $FF ; End of Map 47

;===================================================================================================

OverworldMap32_Screen48_High:
#_0BD3E4: db $00 ; Raw block
#_0BD3E5: db $11
#_0BD3E6: db $24 ; Repeat byte
#_0BD3E7: db $13
#_0BD3E8: db $43 ; Repeat word
#_0BD3E9: dw $1311
#_0BD3EB: db $23 ; Repeat byte
#_0BD3EC: db $11
#_0BD3ED: db $03 ; Raw block
#_0BD3EE: db $13, $13, $11, $11
#_0BD3F2: db $23 ; Repeat byte
#_0BD3F3: db $13
#_0BD3F4: db $01 ; Raw block
#_0BD3F5: db $11, $13
#_0BD3F7: db $22 ; Repeat byte
#_0BD3F8: db $11
#_0BD3F9: db $83 ; Copy past
#_0BD3FA: dw $0400
#_0BD3FC: db $00 ; Raw block
#_0BD3FD: db $13
#_0BD3FE: db $22 ; Repeat byte
#_0BD3FF: db $11
#_0BD400: db $23 ; Repeat byte
#_0BD401: db $13
#_0BD402: db $04 ; Raw block
#_0BD403: db $14, $14, $11, $11, $14
#_0BD408: db $22 ; Repeat byte
#_0BD409: db $11
#_0BD40A: db $01 ; Raw block
#_0BD40B: db $14, $11
#_0BD40D: db $85 ; Copy past
#_0BD40E: dw $2700
#_0BD410: db $01 ; Raw block
#_0BD411: db $13, $11
#_0BD413: db $22 ; Repeat byte
#_0BD414: db $14
#_0BD415: db $02 ; Raw block
#_0BD416: db $11, $14, $14
#_0BD419: db $23 ; Repeat byte
#_0BD41A: db $11
#_0BD41B: db $23 ; Repeat byte
#_0BD41C: db $14
#_0BD41D: db $83 ; Copy past
#_0BD41E: dw $3000
#_0BD420: db $43 ; Repeat word
#_0BD421: dw $1411
#_0BD423: db $22 ; Repeat byte
#_0BD424: db $11
#_0BD425: db $23 ; Repeat byte
#_0BD426: db $14
#_0BD427: db $01 ; Raw block
#_0BD428: db $11, $12
#_0BD42A: db $43 ; Repeat word
#_0BD42B: dw $1411
#_0BD42D: db $02 ; Raw block
#_0BD42E: db $14, $11, $14
#_0BD431: db $24 ; Repeat byte
#_0BD432: db $11
#_0BD433: db $03 ; Raw block
#_0BD434: db $14, $13, $11, $12
#_0BD438: db $45 ; Repeat word
#_0BD439: dw $1411
#_0BD43B: db $00 ; Raw block
#_0BD43C: db $14
#_0BD43D: db $22 ; Repeat byte
#_0BD43E: db $11
#_0BD43F: db $84 ; Copy past
#_0BD440: dw $2F00
#_0BD442: db $83 ; Copy past
#_0BD443: dw $5700
#_0BD445: db $03 ; Raw block
#_0BD446: db $12, $11, $14, $14
#_0BD44A: db $23 ; Repeat byte
#_0BD44B: db $11
#_0BD44C: db $26 ; Repeat byte
#_0BD44D: db $14
#_0BD44E: db $00 ; Raw block
#_0BD44F: db $11
#_0BD450: db $23 ; Repeat byte
#_0BD451: db $14
#_0BD452: db $23 ; Repeat byte
#_0BD453: db $11
#_0BD454: db $26 ; Repeat byte
#_0BD455: db $14
#_0BD456: db $04 ; Raw block
#_0BD457: db $11, $12, $11, $11, $13
#_0BD45C: db $23 ; Repeat byte
#_0BD45D: db $11
#_0BD45E: db $25 ; Repeat byte
#_0BD45F: db $14
#_0BD460: db $03 ; Raw block
#_0BD461: db $11, $11, $12, $11
#_0BD465: db $22 ; Repeat byte
#_0BD466: db $14
#_0BD467: db $01 ; Raw block
#_0BD468: db $11, $11
#_0BD46A: db $27 ; Repeat byte
#_0BD46B: db $14
#_0BD46C: db $00 ; Raw block
#_0BD46D: db $11
#_0BD46E: db $22 ; Repeat byte
#_0BD46F: db $14
#_0BD470: db $23 ; Repeat byte
#_0BD471: db $11
#_0BD472: db $01 ; Raw block
#_0BD473: db $14, $12
#_0BD475: db $44 ; Repeat word
#_0BD476: dw $1411
#_0BD478: db $84 ; Copy past
#_0BD479: dw $5A00
#_0BD47B: db $25 ; Repeat byte
#_0BD47C: db $11
#_0BD47D: db $01 ; Raw block
#_0BD47E: db $14, $14
#_0BD480: db $22 ; Repeat byte
#_0BD481: db $11
#_0BD482: db $26 ; Repeat byte
#_0BD483: db $14
#_0BD484: db $01 ; Raw block
#_0BD485: db $11, $11
#_0BD487: db $24 ; Repeat byte
#_0BD488: db $14
#_0BD489: db $01 ; Raw block
#_0BD48A: db $11, $11
#_0BD48C: db $26 ; Repeat byte
#_0BD48D: db $14
#_0BD48E: db $02 ; Raw block
#_0BD48F: db $11, $11, $13
#_0BD492: db $83 ; Copy past
#_0BD493: dw $2800
#_0BD495: db $23 ; Repeat byte
#_0BD496: db $11
#_0BD497: db $00 ; Raw block
#_0BD498: db $13
#_0BD499: db $43 ; Repeat word
#_0BD49A: dw $1114
#_0BD49C: db $FF ; End of Map 48

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen48_Low:
#_0BD49D: db $00 ; Raw block
#_0BD49E: db $30
#_0BD49F: db $64 ; Increment fill
#_0BD4A0: db $EA
#_0BD4A1: db $0B ; Raw block
#_0BD4A2: db $47, $EF, $7E, $F0, $3B, $32, $30, $31
#_0BD4AA: db $F1, $F2, $2E, $61
#_0BD4AE: db $63 ; Increment fill
#_0BD4AF: db $F3
#_0BD4B0: db $0C ; Raw block
#_0BD4B1: db $53, $F7, $B0, $60, $BC, $F8, $F9, $C4
#_0BD4B9: db $FA, $FB, $27, $2A, $63
#_0BD4BE: db $63 ; Increment fill
#_0BD4BF: db $FC
#_0BD4C0: db $11 ; Raw block
#_0BD4C1: db $00, $01, $6B, $38, $02, $DA, $47, $C6
#_0BD4C9: db $03, $30, $04, $05, $BF, $C0, $06, $A8
#_0BD4D1: db $FC, $76
#_0BD4D3: db $62 ; Increment fill
#_0BD4D4: db $07
#_0BD4D5: db $06 ; Raw block
#_0BD4D6: db $47, $0A, $0B, $8D, $2E, $61, $7B
#_0BD4DD: db $63 ; Increment fill
#_0BD4DE: db $0C
#_0BD4DF: db $0A ; Raw block
#_0BD4E0: db $D0, $10, $11, $47, $47, $12, $61, $13
#_0BD4E8: db $94, $27, $28
#_0BD4EB: db $63 ; Increment fill
#_0BD4EC: db $14
#_0BD4ED: db $09 ; Raw block
#_0BD4EE: db $51, $04, $8D, $18, $8D, $19, $1A, $2A
#_0BD4F6: db $1B, $94
#_0BD4F8: db $62 ; Increment fill
#_0BD4F9: db $30
#_0BD4FA: db $1F ; Raw block
#_0BD4FB: db $30, $1C, $FF, $5E, $09, $94, $1D, $94
#_0BD503: db $1E, $30, $1F, $20, $94, $2E, $2F, $21
#_0BD50B: db $39, $22, $23, $5E, $09, $94, $24, $94
#_0BD513: db $19, $69, $25, $26, $A7, $27, $28, $42
#_0BD51B: db $66 ; Increment fill
#_0BD51C: db $27
#_0BD51D: db $00 ; Raw block
#_0BD51E: db $94
#_0BD51F: db $63 ; Increment fill
#_0BD520: db $2E
#_0BD521: db $03 ; Raw block
#_0BD522: db $47, $30, $31, $4B
#_0BD526: db $66 ; Increment fill
#_0BD527: db $32
#_0BD528: db $08 ; Raw block
#_0BD529: db $94, $14, $30, $31, $F1, $47, $2E, $2F
#_0BD531: db $57
#_0BD532: db $65 ; Increment fill
#_0BD533: db $39
#_0BD534: db $03 ; Raw block
#_0BD535: db $93, $94, $19, $69
#_0BD539: db $62 ; Increment fill
#_0BD53A: db $3F
#_0BD53B: db $04 ; Raw block
#_0BD53C: db $27, $28, $42, $39, $3A
#_0BD541: db $63 ; Increment fill
#_0BD542: db $43
#_0BD543: db $01 ; Raw block
#_0BD544: db $26, $A7
#_0BD546: db $62 ; Increment fill
#_0BD547: db $47
#_0BD548: db $1A ; Raw block
#_0BD549: db $36, $37, $30, $31, $4A, $1D, $4A, $0D
#_0BD551: db $53, $4B, $53, $53, $4C, $4D, $47, $4E
#_0BD559: db $3D, $3E, $2E, $2F, $BD, $4A, $3A, $4F
#_0BD561: db $60, $61, $97
#_0BD564: db $66 ; Increment fill
#_0BD565: db $50
#_0BD566: db $01 ; Raw block
#_0BD567: db $27, $28
#_0BD569: db $64 ; Increment fill
#_0BD56A: db $57
#_0BD56B: db $01 ; Raw block
#_0BD56C: db $6C, $29
#_0BD56E: db $65 ; Increment fill
#_0BD56F: db $5C
#_0BD570: db $08 ; Raw block
#_0BD571: db $15, $30, $31, $F1, $62, $32, $30, $63
#_0BD579: db $A3
#_0BD57A: db $83 ; Copy past
#_0BD57B: dw $0B00
#_0BD57D: db $03 ; Raw block
#_0BD57E: db $62, $7A, $64, $30
#_0BD582: db $FF ; End of Map 48

;===================================================================================================

OverworldMap32_Screen49_High:
#_0BD583: db $22 ; Repeat byte
#_0BD584: db $14
#_0BD585: db $23 ; Repeat byte
#_0BD586: db $11
#_0BD587: db $03 ; Raw block
#_0BD588: db $14, $00, $14, $14
#_0BD58C: db $24 ; Repeat byte
#_0BD58D: db $11
#_0BD58E: db $83 ; Copy past
#_0BD58F: dw $0100
#_0BD591: db $04 ; Raw block
#_0BD592: db $13, $14, $11, $14, $14
#_0BD597: db $26 ; Repeat byte
#_0BD598: db $11
#_0BD599: db $02 ; Raw block
#_0BD59A: db $14, $14, $13
#_0BD59D: db $44 ; Repeat word
#_0BD59E: dw $1114
#_0BD5A0: db $27 ; Repeat byte
#_0BD5A1: db $11
#_0BD5A2: db $03 ; Raw block
#_0BD5A3: db $14, $12, $11, $11
#_0BD5A7: db $23 ; Repeat byte
#_0BD5A8: db $14
#_0BD5A9: db $02 ; Raw block
#_0BD5AA: db $11, $11, $14
#_0BD5AD: db $25 ; Repeat byte
#_0BD5AE: db $11
#_0BD5AF: db $01 ; Raw block
#_0BD5B0: db $14, $11
#_0BD5B2: db $24 ; Repeat byte
#_0BD5B3: db $14
#_0BD5B4: db $01 ; Raw block
#_0BD5B5: db $11, $11
#_0BD5B7: db $22 ; Repeat byte
#_0BD5B8: db $14
#_0BD5B9: db $22 ; Repeat byte
#_0BD5BA: db $11
#_0BD5BB: db $29 ; Repeat byte
#_0BD5BC: db $14
#_0BD5BD: db $25 ; Repeat byte
#_0BD5BE: db $11
#_0BD5BF: db $24 ; Repeat byte
#_0BD5C0: db $14
#_0BD5C1: db $00 ; Raw block
#_0BD5C2: db $13
#_0BD5C3: db $25 ; Repeat byte
#_0BD5C4: db $14
#_0BD5C5: db $83 ; Copy past
#_0BD5C6: dw $2600
#_0BD5C8: db $23 ; Repeat byte
#_0BD5C9: db $14
#_0BD5CA: db $00 ; Raw block
#_0BD5CB: db $11
#_0BD5CC: db $26 ; Repeat byte
#_0BD5CD: db $14
#_0BD5CE: db $24 ; Repeat byte
#_0BD5CF: db $11
#_0BD5D0: db $2D ; Repeat byte
#_0BD5D1: db $14
#_0BD5D2: db $00 ; Raw block
#_0BD5D3: db $11
#_0BD5D4: db $23 ; Repeat byte
#_0BD5D5: db $14
#_0BD5D6: db $00 ; Raw block
#_0BD5D7: db $11
#_0BD5D8: db $22 ; Repeat byte
#_0BD5D9: db $14
#_0BD5DA: db $00 ; Raw block
#_0BD5DB: db $12
#_0BD5DC: db $43 ; Repeat word
#_0BD5DD: dw $1411
#_0BD5DF: db $26 ; Repeat byte
#_0BD5E0: db $11
#_0BD5E1: db $02 ; Raw block
#_0BD5E2: db $14, $14, $11
#_0BD5E5: db $83 ; Copy past
#_0BD5E6: dw $9800
#_0BD5E8: db $22 ; Repeat byte
#_0BD5E9: db $14
#_0BD5EA: db $22 ; Repeat byte
#_0BD5EB: db $11
#_0BD5EC: db $23 ; Repeat byte
#_0BD5ED: db $14
#_0BD5EE: db $22 ; Repeat byte
#_0BD5EF: db $11
#_0BD5F0: db $02 ; Raw block
#_0BD5F1: db $12, $12, $11
#_0BD5F4: db $22 ; Repeat byte
#_0BD5F5: db $14
#_0BD5F6: db $84 ; Copy past
#_0BD5F7: dw $2E00
#_0BD5F9: db $00 ; Raw block
#_0BD5FA: db $14
#_0BD5FB: db $45 ; Repeat word
#_0BD5FC: dw $1114
#_0BD5FE: db $02 ; Raw block
#_0BD5FF: db $11, $14, $14
#_0BD602: db $24 ; Repeat byte
#_0BD603: db $11
#_0BD604: db $00 ; Raw block
#_0BD605: db $13
#_0BD606: db $24 ; Repeat byte
#_0BD607: db $11
#_0BD608: db $01 ; Raw block
#_0BD609: db $14, $11
#_0BD60B: db $23 ; Repeat byte
#_0BD60C: db $14
#_0BD60D: db $01 ; Raw block
#_0BD60E: db $11, $11
#_0BD610: db $24 ; Repeat byte
#_0BD611: db $14
#_0BD612: db $25 ; Repeat byte
#_0BD613: db $11
#_0BD614: db $22 ; Repeat byte
#_0BD615: db $14
#_0BD616: db $2D ; Repeat byte
#_0BD617: db $11
#_0BD618: db $00 ; Raw block
#_0BD619: db $14
#_0BD61A: db $22 ; Repeat byte
#_0BD61B: db $11
#_0BD61C: db $FF ; End of Map 49

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen49_Low:
#_0BD61D: db $0C ; Raw block
#_0BD61E: db $65, $66, $09, $47, $BE, $47, $47, $67
#_0BD626: db $1F, $0D, $68, $3B, $32
#_0BD62B: db $62 ; Increment fill
#_0BD62C: db $30
#_0BD62D: db $0B ; Raw block
#_0BD62E: db $69, $6A, $AF, $47, $F2, $6B, $CF, $6C
#_0BD636: db $6D, $B0, $60, $BC
#_0BD63A: db $62 ; Increment fill
#_0BD63B: db $2D
#_0BD63C: db $0D ; Raw block
#_0BD63D: db $2D, $6E, $6F, $EF, $70, $9B, $69, $DA
#_0BD645: db $71, $DA, $B0, $6B, $6C, $29
#_0BD64B: db $62 ; Increment fill
#_0BD64C: db $27
#_0BD64D: db $03 ; Raw block
#_0BD64E: db $72, $01, $47, $EE
#_0BD652: db $63 ; Increment fill
#_0BD653: db $73
#_0BD654: db $03 ; Raw block
#_0BD655: db $47, $B0, $77, $79
#_0BD659: db $83 ; Copy past
#_0BD65A: dw $0C00
#_0BD65C: db $02 ; Raw block
#_0BD65D: db $95, $6B, $7E
#_0BD660: db $64 ; Increment fill
#_0BD661: db $78
#_0BD662: db $01 ; Raw block
#_0BD663: db $47, $B0
#_0BD665: db $62 ; Increment fill
#_0BD666: db $7D
#_0BD667: db $02 ; Raw block
#_0BD668: db $D7, $2F, $2D
#_0BD66B: db $69 ; Increment fill
#_0BD66C: db $80
#_0BD66D: db $07 ; Raw block
#_0BD66E: db $A8, $A8, $76, $6B, $6C, $29, $8A, $86
#_0BD676: db $62 ; Increment fill
#_0BD677: db $8B
#_0BD678: db $00 ; Raw block
#_0BD679: db $F2
#_0BD67A: db $63 ; Increment fill
#_0BD67B: db $8E
#_0BD67C: db $05 ; Raw block
#_0BD67D: db $36, $92, $80, $93, $79, $32
#_0BD683: db $63 ; Increment fill
#_0BD684: db $94
#_0BD685: db $01 ; Raw block
#_0BD686: db $B0, $80
#_0BD688: db $63 ; Increment fill
#_0BD689: db $98
#_0BD68A: db $0C ; Raw block
#_0BD68B: db $3D, $9C, $C6, $B0, $2C, $2D, $B0, $7D
#_0BD693: db $9D, $9E, $10, $9F, $86
#_0BD698: db $62 ; Increment fill
#_0BD699: db $A0
#_0BD69A: db $00 ; Raw block
#_0BD69B: db $45
#_0BD69C: db $63 ; Increment fill
#_0BD69D: db $A3
#_0BD69E: db $00 ; Raw block
#_0BD69F: db $29
#_0BD6A0: db $63 ; Increment fill
#_0BD6A1: db $A7
#_0BD6A2: db $00 ; Raw block
#_0BD6A3: db $47
#_0BD6A4: db $62 ; Increment fill
#_0BD6A5: db $AB
#_0BD6A6: db $04 ; Raw block
#_0BD6A7: db $01, $7E, $AE, $47, $AF
#_0BD6AC: db $62 ; Increment fill
#_0BD6AD: db $30
#_0BD6AE: db $0A ; Raw block
#_0BD6AF: db $EF, $7B, $47, $CF, $B0, $B1, $A8, $0E
#_0BD6B7: db $47, $B2, $97
#_0BD6BA: db $62 ; Increment fill
#_0BD6BB: db $B3
#_0BD6BC: db $02 ; Raw block
#_0BD6BD: db $BC, $2D, $38
#_0BD6C0: db $63 ; Increment fill
#_0BD6C1: db $B6
#_0BD6C2: db $16 ; Raw block
#_0BD6C3: db $C0, $47, $47, $1F, $20, $42, $BA, $BB
#_0BD6CB: db $1A, $28, $29, $08, $01, $BF, $BC, $0D
#_0BD6D3: db $53, $BD, $90, $BE, $3B, $B7, $BF
#_0BD6DA: db $83 ; Copy past
#_0BD6DB: dw $9C00
#_0BD6DD: db $0A ; Raw block
#_0BD6DE: db $7E, $53, $F7, $47, $B0, $60, $EF, $F0
#_0BD6E6: db $C0, $2F, $21
#_0BD6E9: db $62 ; Increment fill
#_0BD6EA: db $B3
#_0BD6EB: db $01 ; Raw block
#_0BD6EC: db $2F, $2D
#_0BD6EE: db $64 ; Increment fill
#_0BD6EF: db $C1
#_0BD6F0: db $01 ; Raw block
#_0BD6F1: db $8A, $28
#_0BD6F3: db $83 ; Copy past
#_0BD6F4: dw $2C00
#_0BD6F6: db $05 ; Raw block
#_0BD6F7: db $C6, $C7, $1A, $28, $29, $31
#_0BD6FD: db $83 ; Copy past
#_0BD6FE: dw $0C00
#_0BD700: db $00 ; Raw block
#_0BD701: db $30
#_0BD702: db $85 ; Copy past
#_0BD703: dw $F000
#_0BD705: db $00 ; Raw block
#_0BD706: db $C8
#_0BD707: db $62 ; Increment fill
#_0BD708: db $30
#_0BD709: db $FF ; End of Map 49

;===================================================================================================

OverworldMap32_Screen0A_High:
#_0BD70A: db $0A ; Raw block
#_0BD70B: db $00, $14, $06, $00, $00, $01, $14, $01
#_0BD713: db $01, $00, $01
#_0BD716: db $24 ; Repeat byte
#_0BD717: db $14
#_0BD718: db $22 ; Repeat byte
#_0BD719: db $00
#_0BD71A: db $02 ; Raw block
#_0BD71B: db $06, $01, $00
#_0BD71E: db $24 ; Repeat byte
#_0BD71F: db $01
#_0BD720: db $24 ; Repeat byte
#_0BD721: db $14
#_0BD722: db $83 ; Copy past
#_0BD723: dw $0300
#_0BD725: db $00 ; Raw block
#_0BD726: db $08
#_0BD727: db $22 ; Repeat byte
#_0BD728: db $01
#_0BD729: db $01 ; Raw block
#_0BD72A: db $00, $01
#_0BD72C: db $25 ; Repeat byte
#_0BD72D: db $14
#_0BD72E: db $09 ; Raw block
#_0BD72F: db $00, $00, $06, $06, $01, $01, $03, $04
#_0BD737: db $00, $01
#_0BD739: db $25 ; Repeat byte
#_0BD73A: db $14
#_0BD73B: db $22 ; Repeat byte
#_0BD73C: db $00
#_0BD73D: db $03 ; Raw block
#_0BD73E: db $01, $01, $04, $04
#_0BD742: db $22 ; Repeat byte
#_0BD743: db $01
#_0BD744: db $25 ; Repeat byte
#_0BD745: db $14
#_0BD746: db $06 ; Raw block
#_0BD747: db $00, $00, $01, $04, $02, $04, $04
#_0BD74E: db $25 ; Repeat byte
#_0BD74F: db $01
#_0BD750: db $0C ; Raw block
#_0BD751: db $03, $05, $14, $07, $14, $14, $02, $01
#_0BD759: db $04, $14, $01, $06, $00
#_0BD75E: db $22 ; Repeat byte
#_0BD75F: db $01
#_0BD760: db $01 ; Raw block
#_0BD761: db $04, $01
#_0BD763: db $22 ; Repeat byte
#_0BD764: db $14
#_0BD765: db $05 ; Raw block
#_0BD766: db $01, $02, $00, $00, $14, $14
#_0BD76C: db $22 ; Repeat byte
#_0BD76D: db $02
#_0BD76E: db $08 ; Raw block
#_0BD76F: db $04, $07, $08, $01, $05, $00, $01, $03
#_0BD777: db $0F
#_0BD778: db $22 ; Repeat byte
#_0BD779: db $00
#_0BD77A: db $00 ; Raw block
#_0BD77B: db $14
#_0BD77C: db $22 ; Repeat byte
#_0BD77D: db $01
#_0BD77E: db $08 ; Raw block
#_0BD77F: db $04, $03, $02, $14, $05, $00, $00, $04
#_0BD787: db $00
#_0BD788: db $22 ; Repeat byte
#_0BD789: db $08
#_0BD78A: db $00 ; Raw block
#_0BD78B: db $00
#_0BD78C: db $22 ; Repeat byte
#_0BD78D: db $04
#_0BD78E: db $0C ; Raw block
#_0BD78F: db $03, $03, $01, $04, $02, $00, $00, $04
#_0BD797: db $01, $08, $08, $0B, $00
#_0BD79C: db $22 ; Repeat byte
#_0BD79D: db $04
#_0BD79E: db $04 ; Raw block
#_0BD79F: db $06, $01, $00, $03, $14
#_0BD7A4: db $22 ; Repeat byte
#_0BD7A5: db $00
#_0BD7A6: db $03 ; Raw block
#_0BD7A7: db $01, $08, $08, $01
#_0BD7AB: db $84 ; Copy past
#_0BD7AC: dw $B200
#_0BD7AE: db $03 ; Raw block
#_0BD7AF: db $14, $00, $00, $14
#_0BD7B3: db $24 ; Repeat byte
#_0BD7B4: db $00
#_0BD7B5: db $0A ; Raw block
#_0BD7B6: db $0E, $0C, $0B, $14, $08, $00, $07, $01
#_0BD7BE: db $01, $00, $14
#_0BD7C1: db $22 ; Repeat byte
#_0BD7C2: db $00
#_0BD7C3: db $03 ; Raw block
#_0BD7C4: db $01, $01, $0E, $04
#_0BD7C8: db $22 ; Repeat byte
#_0BD7C9: db $08
#_0BD7CA: db $01 ; Raw block
#_0BD7CB: db $00, $00
#_0BD7CD: db $22 ; Repeat byte
#_0BD7CE: db $01
#_0BD7CF: db $00 ; Raw block
#_0BD7D0: db $14
#_0BD7D1: db $22 ; Repeat byte
#_0BD7D2: db $00
#_0BD7D3: db $01 ; Raw block
#_0BD7D4: db $01, $00
#_0BD7D6: db $23 ; Repeat byte
#_0BD7D7: db $08
#_0BD7D8: db $06 ; Raw block
#_0BD7D9: db $14, $03, $00, $03, $04, $14, $14
#_0BD7E0: db $22 ; Repeat byte
#_0BD7E1: db $00
#_0BD7E2: db $03 ; Raw block
#_0BD7E3: db $01, $00, $00, $07
#_0BD7E7: db $24 ; Repeat byte
#_0BD7E8: db $00
#_0BD7E9: db $03 ; Raw block
#_0BD7EA: db $03, $00, $14, $00
#_0BD7EE: db $FF ; End of Map 0A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen0A_Low:
#_0BD7EF: db $0A ; Raw block
#_0BD7F0: db $07, $C9, $38, $1D, $1D, $3C, $CA, $3C
#_0BD7F8: db $1D, $1D, $77
#_0BD7FB: db $63 ; Increment fill
#_0BD7FC: db $CB
#_0BD7FD: db $0B ; Raw block
#_0BD7FE: db $CE, $00, $01, $7F, $70, $72, $1D, $61
#_0BD806: db $62, $5A, $41, $5B
#_0BD80A: db $63 ; Increment fill
#_0BD80B: db $CF
#_0BD80C: db $0A ; Raw block
#_0BD80D: db $CE, $09, $0A, $74, $D3, $2D, $1E, $67
#_0BD815: db $68, $1D, $48
#_0BD818: db $65 ; Increment fill
#_0BD819: db $D4
#_0BD81A: db $0B ; Raw block
#_0BD81B: db $07, $08, $38, $70, $1D, $5A, $DB, $25
#_0BD823: db $1D, $2E, $DA, $CE
#_0BD827: db $63 ; Increment fill
#_0BD828: db $DB
#_0BD829: db $09 ; Raw block
#_0BD82A: db $00, $01, $7F, $3C, $5A, $B5, $B6, $1D
#_0BD832: db $1E, $08
#_0BD834: db $62 ; Increment fill
#_0BD835: db $DF
#_0BD836: db $62 ; Increment fill
#_0BD837: db $E1
#_0BD838: db $1E ; Raw block
#_0BD839: db $09, $0A, $74, $B5, $08, $B7, $B8, $3C
#_0BD841: db $1D, $E4, $03, $F8, $F8, $7B, $5E, $E4
#_0BD849: db $ED, $E5, $E6, $79, $E5, $B9, $E7, $DB
#_0BD851: db $3E, $1D, $E4, $E5, $E5, $74, $03
#_0BD858: db $62 ; Increment fill
#_0BD859: db $E8
#_0BD85A: db $05 ; Raw block
#_0BD85B: db $E5, $7A, $1D, $A5, $EB, $EC
#_0BD861: db $22 ; Repeat byte
#_0BD862: db $08
#_0BD863: db $0C ; Raw block
#_0BD864: db $C2, $AF, $2D, $F3, $60, $0A, $74, $D5
#_0BD86C: db $19, $1D, $1C, $1D, $ED
#_0BD871: db $22 ; Repeat byte
#_0BD872: db $E5
#_0BD873: db $0C ; Raw block
#_0BD874: db $C3, $B2, $08, $EE, $63, $93, $06, $60
#_0BD87C: db $1D, $B8, $B9, $CC, $AA
#_0BD881: db $62 ; Increment fill
#_0BD882: db $2D
#_0BD883: db $0C ; Raw block
#_0BD884: db $56, $BA, $E5, $73, $03, $01, $02, $6D
#_0BD88C: db $26, $BD, $4B, $43, $AA
#_0BD891: db $62 ; Increment fill
#_0BD892: db $38
#_0BD893: db $E0, $4B ; EXT Raw block
#_0BD895: db $70, $5A, $1D, $56, $EF, $0A, $0B, $09
#_0BD89D: db $2F, $4D, $4E, $62, $1D, $61, $A4, $9D
#_0BD8A5: db $3C, $F0, $1C, $1D, $F1, $08, $06, $07
#_0BD8AD: db $FE, $7C, $F7, $43, $FE, $F2, $9A, $AA
#_0BD8B5: db $2B, $61, $62, $AA, $F1, $01, $02, $00
#_0BD8BD: db $04, $3B, $F8, $39, $9F, $4B, $A0, $1C
#_0BD8C5: db $1D, $67, $68, $D2, $F1, $0A, $0B, $09
#_0BD8CD: db $07, $1D, $9B, $9C, $A5, $A6, $F3, $D5
#_0BD8D5: db $AA, $DB, $25, $F4, $F5, $08, $06, $07
#_0BD8DD: db $32, $7C, $1D, $91
#_0BD8E1: db $24 ; Repeat byte
#_0BD8E2: db $1D
#_0BD8E3: db $03 ; Raw block
#_0BD8E4: db $E2, $1D, $F1, $1D
#_0BD8E8: db $FF ; End of Map 0A

;===================================================================================================

OverworldMap32_Screen4B_High:
#_0BD8E9: db $24 ; Repeat byte
#_0BD8EA: db $01
#_0BD8EB: db $22 ; Repeat byte
#_0BD8EC: db $02
#_0BD8ED: db $00 ; Raw block
#_0BD8EE: db $03
#_0BD8EF: db $26 ; Repeat byte
#_0BD8F0: db $01
#_0BD8F1: db $00 ; Raw block
#_0BD8F2: db $04
#_0BD8F3: db $22 ; Repeat byte
#_0BD8F4: db $01
#_0BD8F5: db $00 ; Raw block
#_0BD8F6: db $04
#_0BD8F7: db $22 ; Repeat byte
#_0BD8F8: db $02
#_0BD8F9: db $00 ; Raw block
#_0BD8FA: db $03
#_0BD8FB: db $27 ; Repeat byte
#_0BD8FC: db $01
#_0BD8FD: db $07 ; Raw block
#_0BD8FE: db $02, $00, $00, $03, $03, $02, $02, $03
#_0BD906: db $27 ; Repeat byte
#_0BD907: db $01
#_0BD908: db $01 ; Raw block
#_0BD909: db $02, $03
#_0BD90B: db $84 ; Copy past
#_0BD90C: dw $2200
#_0BD90E: db $00 ; Raw block
#_0BD90F: db $03
#_0BD910: db $26 ; Repeat byte
#_0BD911: db $01
#_0BD912: db $05 ; Raw block
#_0BD913: db $04, $02, $01, $01, $12, $00
#_0BD919: db $22 ; Repeat byte
#_0BD91A: db $03
#_0BD91B: db $26 ; Repeat byte
#_0BD91C: db $01
#_0BD91D: db $08 ; Raw block
#_0BD91E: db $03, $04, $01, $04, $02, $04, $01, $03
#_0BD926: db $03
#_0BD927: db $26 ; Repeat byte
#_0BD928: db $01
#_0BD929: db $04 ; Raw block
#_0BD92A: db $03, $03, $01, $14, $14
#_0BD92F: db $22 ; Repeat byte
#_0BD930: db $01
#_0BD931: db $23 ; Repeat byte
#_0BD932: db $00
#_0BD933: db $05 ; Raw block
#_0BD934: db $04, $02, $01, $00, $03, $03
#_0BD93A: db $84 ; Copy past
#_0BD93B: dw $5600
#_0BD93D: db $08 ; Raw block
#_0BD93E: db $04, $00, $12, $00, $04, $04, $01, $01
#_0BD946: db $02
#_0BD947: db $22 ; Repeat byte
#_0BD948: db $04
#_0BD949: db $84 ; Copy past
#_0BD94A: dw $7300
#_0BD94C: db $08 ; Raw block
#_0BD94D: db $12, $12, $00, $04, $03, $00, $01, $01
#_0BD955: db $04
#_0BD956: db $83 ; Copy past
#_0BD957: dw $3200
#_0BD959: db $06 ; Raw block
#_0BD95A: db $00, $01, $04, $03, $14, $14, $04
#_0BD961: db $83 ; Copy past
#_0BD962: dw $6C00
#_0BD964: db $02 ; Raw block
#_0BD965: db $01, $03, $12
#_0BD968: db $22 ; Repeat byte
#_0BD969: db $00
#_0BD96A: db $03 ; Raw block
#_0BD96B: db $04, $04, $03, $14
#_0BD96F: db $22 ; Repeat byte
#_0BD970: db $04
#_0BD971: db $03 ; Raw block
#_0BD972: db $01, $02, $01, $01
#_0BD976: db $22 ; Repeat byte
#_0BD977: db $00
#_0BD978: db $03 ; Raw block
#_0BD979: db $12, $00, $04, $02
#_0BD97D: db $83 ; Copy past
#_0BD97E: dw $7100
#_0BD980: db $04 ; Raw block
#_0BD981: db $04, $04, $03, $01, $03
#_0BD986: db $22 ; Repeat byte
#_0BD987: db $01
#_0BD988: db $01 ; Raw block
#_0BD989: db $04, $00
#_0BD98B: db $22 ; Repeat byte
#_0BD98C: db $03
#_0BD98D: db $01 ; Raw block
#_0BD98E: db $01, $03
#_0BD990: db $22 ; Repeat byte
#_0BD991: db $04
#_0BD992: db $01 ; Raw block
#_0BD993: db $03, $01
#_0BD995: db $83 ; Copy past
#_0BD996: dw $7B00
#_0BD998: db $00 ; Raw block
#_0BD999: db $04
#_0BD99A: db $85 ; Copy past
#_0BD99B: dw $6E00
#_0BD99D: db $04 ; Raw block
#_0BD99E: db $04, $14, $04, $04, $01
#_0BD9A3: db $25 ; Repeat byte
#_0BD9A4: db $04
#_0BD9A5: db $04 ; Raw block
#_0BD9A6: db $02, $01, $00, $00, $05
#_0BD9AB: db $22 ; Repeat byte
#_0BD9AC: db $01
#_0BD9AD: db $02 ; Raw block
#_0BD9AE: db $04, $01, $05
#_0BD9B1: db $23 ; Repeat byte
#_0BD9B2: db $14
#_0BD9B3: db $05 ; Raw block
#_0BD9B4: db $05, $04, $04, $02, $02, $04
#_0BD9BA: db $22 ; Repeat byte
#_0BD9BB: db $01
#_0BD9BC: db $01 ; Raw block
#_0BD9BD: db $04, $04
#_0BD9BF: db $FF ; End of Map 4B

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen4B_Low:
#_0BD9C0: db $04 ; Raw block
#_0BD9C1: db $ED, $ED, $F8, $F9, $FF
#_0BD9C6: db $22 ; Repeat byte
#_0BD9C7: db $03
#_0BD9C8: db $00 ; Raw block
#_0BD9C9: db $5A
#_0BD9CA: db $26 ; Repeat byte
#_0BD9CB: db $F8
#_0BD9CC: db $04 ; Raw block
#_0BD9CD: db $71, $ED, $E5, $F9, $73
#_0BD9D2: db $22 ; Repeat byte
#_0BD9D3: db $03
#_0BD9D4: db $00 ; Raw block
#_0BD9D5: db $5A
#_0BD9D6: db $26 ; Repeat byte
#_0BD9D7: db $F8
#_0BD9D8: db $08 ; Raw block
#_0BD9D9: db $D6, $86, $1D, $9F, $56, $57, $03, $03
#_0BD9E1: db $5A
#_0BD9E2: db $26 ; Repeat byte
#_0BD9E3: db $F8
#_0BD9E4: db $08 ; Raw block
#_0BD9E5: db $D6, $DD, $FF, $B2, $1D, $56, $57, $03
#_0BD9ED: db $5A
#_0BD9EE: db $26 ; Repeat byte
#_0BD9EF: db $F8
#_0BD9F0: db $08 ; Raw block
#_0BD9F1: db $79, $F3, $AB, $F2, $75, $1D, $56, $57
#_0BD9F9: db $5A
#_0BD9FA: db $26 ; Repeat byte
#_0BD9FB: db $F8
#_0BD9FC: db $08 ; Raw block
#_0BD9FD: db $6C, $7A, $B3, $7B, $61, $7C, $DB, $56
#_0BDA05: db $BA
#_0BDA06: db $26 ; Repeat byte
#_0BDA07: db $E5
#_0BDA08: db $1F ; Raw block
#_0BDA09: db $6C, $6C, $15, $F6, $F7, $16, $E6, $DB
#_0BDA11: db $1D, $1D, $9F, $1D, $7D, $08, $DB, $B2
#_0BDA19: db $6C, $6C, $15, $58, $59, $16, $03, $80
#_0BDA21: db $1D, $75, $1D, $81, $82, $E5, $E6, $08
#_0BDA29: db $62 ; Increment fill
#_0BDA2A: db $83
#_0BDA2B: db $1F ; Raw block
#_0BDA2C: db $60, $61, $23, $24, $86, $75, $75, $1D
#_0BDA34: db $87, $A8, $B2, $E4, $E5, $88, $A8, $1D
#_0BDA3C: db $B2, $FF, $1D, $2E, $86, $FF, $F8, $F9
#_0BDA44: db $8B, $8C, $A2, $F2, $1D, $E3, $FF, $75
#_0BDA4C: db $22 ; Repeat byte
#_0BDA4D: db $1D
#_0BDA4E: db $03 ; Raw block
#_0BDA4F: db $8D, $8E, $B2, $FA
#_0BDA53: db $62 ; Increment fill
#_0BDA54: db $90
#_0BDA55: db $13 ; Raw block
#_0BDA56: db $FA, $AB, $F0, $E3, $1D, $9F, $1D, $75
#_0BDA5E: db $1D, $93, $03, $5A, $F8, $9C, $6C, $94
#_0BDA66: db $73, $5A, $F9, $95
#_0BDA6A: db $22 ; Repeat byte
#_0BDA6B: db $AB
#_0BDA6C: db $01 ; Raw block
#_0BDA6D: db $95, $9F
#_0BDA6F: db $83 ; Copy past
#_0BDA70: dw $4600
#_0BDA72: db $15 ; Raw block
#_0BDA73: db $9C, $84, $96, $97, $BA, $F9, $98, $99
#_0BDA7B: db $B3, $B3, $9A, $A0, $1D, $56, $BA, $E5
#_0BDA83: db $BB, $9E, $FB, $A0, $A1, $AB
#_0BDA89: db $62 ; Increment fill
#_0BDA8A: db $A2
#_0BDA8B: db $62 ; Increment fill
#_0BDA8C: db $A4
#_0BDA8D: db $04 ; Raw block
#_0BDA8E: db $07, $A0, $1D, $1D, $46
#_0BDA93: db $22 ; Repeat byte
#_0BDA94: db $AB
#_0BDA95: db $02 ; Raw block
#_0BDA96: db $AA, $B3, $21
#_0BDA99: db $63 ; Increment fill
#_0BDA9A: db $FC
#_0BDA9B: db $05 ; Raw block
#_0BDA9C: db $42, $B1, $A6, $07, $07, $B2
#_0BDAA2: db $23 ; Repeat byte
#_0BDAA3: db $B3
#_0BDAA4: db $00 ; Raw block
#_0BDAA5: db $A4
#_0BDAA6: db $FF ; End of Map 4B

;===================================================================================================

OverworldMap32_Screen4C_High:
#_0BDAA7: db $25 ; Repeat byte
#_0BDAA8: db $01
#_0BDAA9: db $00 ; Raw block
#_0BDAAA: db $03
#_0BDAAB: db $2E ; Repeat byte
#_0BDAAC: db $01
#_0BDAAD: db $03 ; Raw block
#_0BDAAE: db $03, $01, $01, $0E
#_0BDAB2: db $2B ; Repeat byte
#_0BDAB3: db $01
#_0BDAB4: db $03 ; Raw block
#_0BDAB5: db $03, $01, $04, $04
#_0BDAB9: db $2B ; Repeat byte
#_0BDABA: db $01
#_0BDABB: db $04 ; Raw block
#_0BDABC: db $03, $01, $03, $02, $03
#_0BDAC1: db $29 ; Repeat byte
#_0BDAC2: db $01
#_0BDAC3: db $02 ; Raw block
#_0BDAC4: db $04, $03, $01
#_0BDAC7: db $22 ; Repeat byte
#_0BDAC8: db $03
#_0BDAC9: db $26 ; Repeat byte
#_0BDACA: db $01
#_0BDACB: db $04 ; Raw block
#_0BDACC: db $02, $04, $04, $03, $03
#_0BDAD1: db $28 ; Repeat byte
#_0BDAD2: db $01
#_0BDAD3: db $01 ; Raw block
#_0BDAD4: db $03, $00
#_0BDAD6: db $22 ; Repeat byte
#_0BDAD7: db $04
#_0BDAD8: db $06 ; Raw block
#_0BDAD9: db $00, $00, $03, $00, $00, $12, $00
#_0BDAE0: db $23 ; Repeat byte
#_0BDAE1: db $01
#_0BDAE2: db $22 ; Repeat byte
#_0BDAE3: db $02
#_0BDAE4: db $09 ; Raw block
#_0BDAE5: db $04, $00, $12, $04, $04, $00, $12, $12
#_0BDAED: db $00, $00
#_0BDAEF: db $24 ; Repeat byte
#_0BDAF0: db $01
#_0BDAF1: db $07 ; Raw block
#_0BDAF2: db $02, $00, $00, $04, $02, $04, $12, $12
#_0BDAFA: db $23 ; Repeat byte
#_0BDAFB: db $00
#_0BDAFC: db $03 ; Raw block
#_0BDAFD: db $01, $01, $04, $04
#_0BDB01: db $24 ; Repeat byte
#_0BDB02: db $02
#_0BDB03: db $01 ; Raw block
#_0BDB04: db $00, $12
#_0BDB06: db $26 ; Repeat byte
#_0BDB07: db $00
#_0BDB08: db $02 ; Raw block
#_0BDB09: db $04, $03, $04
#_0BDB0C: db $83 ; Copy past
#_0BDB0D: dw $8000
#_0BDB0F: db $02 ; Raw block
#_0BDB10: db $04, $04, $05
#_0BDB13: db $22 ; Repeat byte
#_0BDB14: db $00
#_0BDB15: db $03 ; Raw block
#_0BDB16: db $12, $03, $00, $03
#_0BDB1A: db $22 ; Repeat byte
#_0BDB1B: db $04
#_0BDB1C: db $01 ; Raw block
#_0BDB1D: db $00, $00
#_0BDB1F: db $22 ; Repeat byte
#_0BDB20: db $04
#_0BDB21: db $02 ; Raw block
#_0BDB22: db $05, $04, $04
#_0BDB25: db $23 ; Repeat byte
#_0BDB26: db $01
#_0BDB27: db $23 ; Repeat byte
#_0BDB28: db $03
#_0BDB29: db $07 ; Raw block
#_0BDB2A: db $02, $02, $04, $04, $00, $05, $03, $04
#_0BDB32: db $25 ; Repeat byte
#_0BDB33: db $01
#_0BDB34: db $83 ; Copy past
#_0BDB35: dw $4900
#_0BDB37: db $22 ; Repeat byte
#_0BDB38: db $02
#_0BDB39: db $02 ; Raw block
#_0BDB3A: db $01, $03, $01
#_0BDB3D: db $23 ; Repeat byte
#_0BDB3E: db $04
#_0BDB3F: db $22 ; Repeat byte
#_0BDB40: db $01
#_0BDB41: db $05 ; Raw block
#_0BDB42: db $12, $03, $00, $02, $04, $04
#_0BDB48: db $22 ; Repeat byte
#_0BDB49: db $02
#_0BDB4A: db $05 ; Raw block
#_0BDB4B: db $04, $15, $05, $15, $04, $04
#_0BDB51: db $23 ; Repeat byte
#_0BDB52: db $02
#_0BDB53: db $02 ; Raw block
#_0BDB54: db $04, $05, $05
#_0BDB57: db $22 ; Repeat byte
#_0BDB58: db $04
#_0BDB59: db $83 ; Copy past
#_0BDB5A: dw $EE00
#_0BDB5C: db $FF ; End of Map 4C

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen4C_Low:
#_0BDB5D: db $06 ; Raw block
#_0BDB5E: db $F8, $F8, $ED, $F8, $F8, $FF, $5A
#_0BDB65: db $24 ; Repeat byte
#_0BDB66: db $F8
#_0BDB67: db $22 ; Repeat byte
#_0BDB68: db $03
#_0BDB69: db $22 ; Repeat byte
#_0BDB6A: db $F8
#_0BDB6B: db $86 ; Copy past
#_0BDB6C: dw $0200
#_0BDB6E: db $02 ; Raw block
#_0BDB6F: db $E4, $F8, $F8
#_0BDB72: db $22 ; Repeat byte
#_0BDB73: db $03
#_0BDB74: db $22 ; Repeat byte
#_0BDB75: db $F8
#_0BDB76: db $85 ; Copy past
#_0BDB77: dw $0200
#_0BDB79: db $03 ; Raw block
#_0BDB7A: db $77, $74, $F8, $F8
#_0BDB7E: db $22 ; Repeat byte
#_0BDB7F: db $03
#_0BDB80: db $22 ; Repeat byte
#_0BDB81: db $F8
#_0BDB82: db $85 ; Copy past
#_0BDB83: dw $0200
#_0BDB85: db $03 ; Raw block
#_0BDB86: db $71, $A9, $72, $F8
#_0BDB8A: db $22 ; Repeat byte
#_0BDB8B: db $03
#_0BDB8C: db $22 ; Repeat byte
#_0BDB8D: db $F8
#_0BDB8E: db $05 ; Raw block
#_0BDB8F: db $ED, $E5, $E5, $73, $5A, $F8
#_0BDB95: db $62 ; Increment fill
#_0BDB96: db $75
#_0BDB97: db $00 ; Raw block
#_0BDB98: db $F8
#_0BDB99: db $22 ; Repeat byte
#_0BDB9A: db $03
#_0BDB9B: db $07 ; Raw block
#_0BDB9C: db $F8, $E5, $E5, $7A, $B5, $B6, $56, $BA
#_0BDBA4: db $24 ; Repeat byte
#_0BDBA5: db $E5
#_0BDBA6: db $22 ; Repeat byte
#_0BDBA7: db $03
#_0BDBA8: db $1E ; Raw block
#_0BDBA9: db $F8, $FF, $A9, $B5, $B7, $B8, $B2, $1C
#_0BDBB1: db $FF, $B2, $1C, $75, $9F, $E4, $03, $03
#_0BDBB9: db $F8, $08, $08, $79, $B9, $9F, $75, $B5
#_0BDBC1: db $BA, $1C, $75, $75, $9F, $1D, $E4
#_0BDBC8: db $84 ; Copy past
#_0BDBC9: dw $4E00
#_0BDBCB: db $04 ; Raw block
#_0BDBCC: db $9F, $AA, $B5, $79, $BC
#_0BDBD1: db $83 ; Copy past
#_0BDBD2: dw $7900
#_0BDBD4: db $05 ; Raw block
#_0BDBD5: db $1C, $1D, $E4, $E5, $8A, $BF
#_0BDBDB: db $22 ; Repeat byte
#_0BDBDC: db $08
#_0BDBDD: db $E0, $26 ; EXT Raw block
#_0BDBDF: db $79, $7A, $1D, $75, $B2, $AA, $1C, $1D
#_0BDBE7: db $AA, $1D, $B2, $90, $67, $77, $E5, $E5
#_0BDBEF: db $7A, $1D, $B5, $B6, $5B, $9F, $AA, $1C
#_0BDBF7: db $75, $FF, $9F, $9C, $94, $C3, $C4, $9F
#_0BDBFF: db $1C, $B5, $B7, $B8, $5D, $C4, $8A
#_0BDC06: db $23 ; Repeat byte
#_0BDC07: db $AB
#_0BDC08: db $0B ; Raw block
#_0BDC09: db $BB, $A8, $56, $B1, $61, $61, $C5, $B9
#_0BDC11: db $AA, $5F, $B1, $C6
#_0BDC15: db $23 ; Repeat byte
#_0BDC16: db $B3
#_0BDC17: db $E0, $22 ; EXT Raw block
#_0BDC19: db $AB, $F2, $FF, $56, $22, $22, $04, $A1
#_0BDC21: db $A2, $F2, $56, $22, $C7, $C8, $A4, $A4
#_0BDC29: db $B3, $FB, $F2, $75, $FF, $FB, $A1, $C9
#_0BDC31: db $CA, $05, $07, $07, $C9, $00, $38, $01
#_0BDC39: db $A4, $CE, $05
#_0BDC3C: db $22 ; Repeat byte
#_0BDC3D: db $07
#_0BDC3E: db $09 ; Raw block
#_0BDC3F: db $C9, $21, $72, $D0, $B1, $B1, $21, $02
#_0BDC47: db $D2, $D3
#_0BDC49: db $FF ; End of Map 4C

;===================================================================================================

OverworldMap32_Screen4D_High:
#_0BDC4A: db $02 ; Raw block
#_0BDC4B: db $01, $02, $15
#_0BDC4E: db $43 ; Repeat word
#_0BDC4F: dw $0415
#_0BDC51: db $05 ; Raw block
#_0BDC52: db $04, $15, $15, $04, $04, $03
#_0BDC58: db $23 ; Repeat byte
#_0BDC59: db $01
#_0BDC5A: db $83 ; Copy past
#_0BDC5B: dw $0100
#_0BDC5D: db $24 ; Repeat byte
#_0BDC5E: db $15
#_0BDC5F: db $02 ; Raw block
#_0BDC60: db $04, $02, $03
#_0BDC63: db $22 ; Repeat byte
#_0BDC64: db $01
#_0BDC65: db $00 ; Raw block
#_0BDC66: db $03
#_0BDC67: db $22 ; Repeat byte
#_0BDC68: db $15
#_0BDC69: db $01 ; Raw block
#_0BDC6A: db $04, $04
#_0BDC6C: db $23 ; Repeat byte
#_0BDC6D: db $15
#_0BDC6E: db $02 ; Raw block
#_0BDC6F: db $04, $02, $03
#_0BDC72: db $24 ; Repeat byte
#_0BDC73: db $01
#_0BDC74: db $02 ; Raw block
#_0BDC75: db $15, $15, $04
#_0BDC78: db $22 ; Repeat byte
#_0BDC79: db $15
#_0BDC7A: db $83 ; Copy past
#_0BDC7B: dw $0700
#_0BDC7D: db $00 ; Raw block
#_0BDC7E: db $03
#_0BDC7F: db $25 ; Repeat byte
#_0BDC80: db $01
#_0BDC81: db $83 ; Copy past
#_0BDC82: dw $1300
#_0BDC84: db $22 ; Repeat byte
#_0BDC85: db $04
#_0BDC86: db $02 ; Raw block
#_0BDC87: db $15, $15, $04
#_0BDC8A: db $26 ; Repeat byte
#_0BDC8B: db $01
#_0BDC8C: db $85 ; Copy past
#_0BDC8D: dw $0600
#_0BDC8F: db $83 ; Copy past
#_0BDC90: dw $4A00
#_0BDC92: db $00 ; Raw block
#_0BDC93: db $00
#_0BDC94: db $23 ; Repeat byte
#_0BDC95: db $01
#_0BDC96: db $03 ; Raw block
#_0BDC97: db $02, $00, $15, $04
#_0BDC9B: db $25 ; Repeat byte
#_0BDC9C: db $15
#_0BDC9D: db $22 ; Repeat byte
#_0BDC9E: db $00
#_0BDC9F: db $83 ; Copy past
#_0BDCA0: dw $6100
#_0BDCA2: db $04 ; Raw block
#_0BDCA3: db $00, $05, $04, $05, $05
#_0BDCA8: db $22 ; Repeat byte
#_0BDCA9: db $15
#_0BDCAA: db $00 ; Raw block
#_0BDCAB: db $08
#_0BDCAC: db $22 ; Repeat byte
#_0BDCAD: db $00
#_0BDCAE: db $08 ; Raw block
#_0BDCAF: db $01, $02, $00, $12, $00, $15, $04, $05
#_0BDCB7: db $05
#_0BDCB8: db $83 ; Copy past
#_0BDCB9: dw $0600
#_0BDCBB: db $0B ; Raw block
#_0BDCBC: db $00, $04, $01, $00, $00, $12, $12, $00
#_0BDCC4: db $05, $04, $15, $15
#_0BDCC8: db $83 ; Copy past
#_0BDCC9: dw $8700
#_0BDCCB: db $09 ; Raw block
#_0BDCCC: db $02, $05, $01, $00, $00, $04, $02, $02
#_0BDCD4: db $04, $15
#_0BDCD6: db $22 ; Repeat byte
#_0BDCD7: db $05
#_0BDCD8: db $01 ; Raw block
#_0BDCD9: db $15, $15
#_0BDCDB: db $43 ; Repeat word
#_0BDCDC: dw $0405
#_0BDCDE: db $01 ; Raw block
#_0BDCDF: db $01, $01
#_0BDCE1: db $44 ; Repeat word
#_0BDCE2: dw $0504
#_0BDCE4: db $02 ; Raw block
#_0BDCE5: db $15, $15, $05
#_0BDCE8: db $22 ; Repeat byte
#_0BDCE9: db $15
#_0BDCEA: db $05 ; Raw block
#_0BDCEB: db $05, $15, $05, $01, $01, $04
#_0BDCF1: db $23 ; Repeat byte
#_0BDCF2: db $05
#_0BDCF3: db $01 ; Raw block
#_0BDCF4: db $15, $04
#_0BDCF6: db $22 ; Repeat byte
#_0BDCF7: db $05
#_0BDCF8: db $22 ; Repeat byte
#_0BDCF9: db $15
#_0BDCFA: db $00 ; Raw block
#_0BDCFB: db $05
#_0BDCFC: db $22 ; Repeat byte
#_0BDCFD: db $04
#_0BDCFE: db $05 ; Raw block
#_0BDCFF: db $15, $05, $03, $15, $15, $04
#_0BDD05: db $83 ; Copy past
#_0BDD06: dw $BF00
#_0BDD08: db $00 ; Raw block
#_0BDD09: db $04
#_0BDD0A: db $23 ; Repeat byte
#_0BDD0B: db $05
#_0BDD0C: db $04 ; Raw block
#_0BDD0D: db $15, $05, $05, $03, $05
#_0BDD12: db $22 ; Repeat byte
#_0BDD13: db $15
#_0BDD14: db $22 ; Repeat byte
#_0BDD15: db $04
#_0BDD16: db $03 ; Raw block
#_0BDD17: db $15, $05, $15, $04
#_0BDD1B: db $22 ; Repeat byte
#_0BDD1C: db $15
#_0BDD1D: db $00 ; Raw block
#_0BDD1E: db $05
#_0BDD1F: db $85 ; Copy past
#_0BDD20: dw $7500
#_0BDD22: db $83 ; Copy past
#_0BDD23: dw $A500
#_0BDD25: db $00 ; Raw block
#_0BDD26: db $15
#_0BDD27: db $FF ; End of Map 4D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen4D_Low:
#_0BDD28: db $0F ; Raw block
#_0BDD29: db $06, $F2, $03, $03, $D4, $04, $D5, $D6
#_0BDD31: db $05, $06, $D9, $DA, $5A, $F8, $F8, $09
#_0BDD39: db $84 ; Copy past
#_0BDD3A: dw $0000
#_0BDD3C: db $64 ; Increment fill
#_0BDD3D: db $07
#_0BDD3E: db $0B ; Raw block
#_0BDD3F: db $DA, $03, $5A, $F8, $F8, $13, $20, $0C
#_0BDD47: db $03, $03, $D4, $D6
#_0BDD4B: db $63 ; Increment fill
#_0BDD4C: db $0D
#_0BDD4D: db $00 ; Raw block
#_0BDD4E: db $E3
#_0BDD4F: db $84 ; Copy past
#_0BDD50: dw $1B00
#_0BDD52: db $04 ; Raw block
#_0BDD53: db $F8, $ED, $11, $03, $D4
#_0BDD58: db $62 ; Increment fill
#_0BDD59: db $12
#_0BDD5A: db $03 ; Raw block
#_0BDD5B: db $E6, $15, $16, $E3
#_0BDD5F: db $85 ; Copy past
#_0BDD60: dw $2C00
#_0BDD62: db $04 ; Raw block
#_0BDD63: db $ED, $11, $E9, $17, $18
#_0BDD68: db $62 ; Increment fill
#_0BDD69: db $EC
#_0BDD6A: db $06 ; Raw block
#_0BDD6B: db $19, $1A, $F1, $E5, $E5, $13, $F8
#_0BDD72: db $22 ; Repeat byte
#_0BDD73: db $ED
#_0BDD74: db $12 ; Raw block
#_0BDD75: db $F2, $F3, $1B, $1C, $F6, $F7, $1D, $1E
#_0BDD7D: db $FA, $CC, $AA, $1F, $F8, $ED, $ED, $7A
#_0BDD85: db $1D, $1F, $D4
#_0BDD88: db $63 ; Increment fill
#_0BDD89: db $20
#_0BDD8A: db $E0, $4E ; EXT Raw block
#_0BDD8C: db $06, $24, $AA, $1C, $1C, $F8, $ED, $7A
#_0BDD94: db $1C, $9F, $6F, $D4, $18, $19, $25, $26
#_0BDD9C: db $06, $B7, $9F, $AA, $B2, $E5, $7A, $9F
#_0BDDA4: db $75, $9F, $1F, $D4, $1D, $1E, $D5, $D5
#_0BDDAC: db $06, $24, $AA, $8A, $AB, $1C, $9F, $75
#_0BDDB4: db $75, $AA, $16, $D4, $27, $28, $18, $19
#_0BDDBC: db $EC, $A6, $07, $7B, $B3, $9F, $B2, $8A
#_0BDDC4: db $F4, $07, $C9, $29, $18, $19, $1D, $2A
#_0BDDCC: db $2B, $42, $B1, $43, $A4, $AB, $AB, $AA
#_0BDDD4: db $20, $B1, $21, $DD, $2C, $2D, $23
#_0BDDDB: db $62 ; Increment fill
#_0BDDDC: db $2E
#_0BDDDD: db $02 ; Raw block
#_0BDDDE: db $28, $31, $18
#_0BDDE1: db $22 ; Repeat byte
#_0BDDE2: db $B3
#_0BDDE3: db $62 ; Increment fill
#_0BDDE4: db $27
#_0BDDE5: db $02 ; Raw block
#_0BDDE6: db $24, $32, $D5
#_0BDDE9: db $62 ; Increment fill
#_0BDDEA: db $2B
#_0BDDEB: db $11 ; Raw block
#_0BDDEC: db $15, $33, $34, $30, $A4, $A4, $F7, $35
#_0BDDF4: db $32, $8F, $36, $37, $D5, $35, $0A, $0A
#_0BDDFC: db $EE, $EF
#_0BDDFE: db $63 ; Increment fill
#_0BDDFF: db $36
#_0BDE00: db $04 ; Raw block
#_0BDE01: db $38, $3B, $3C, $B3, $3D
#_0BDE06: db $62 ; Increment fill
#_0BDE07: db $39
#_0BDE08: db $06 ; Raw block
#_0BDE09: db $A4, $A4, $F7, $3C, $41, $04, $D2
#_0BDE10: db $62 ; Increment fill
#_0BDE11: db $3D
#_0BDE12: db $0B ; Raw block
#_0BDE13: db $42, $43, $F7, $18, $19, $40, $41, $D5
#_0BDE1B: db $42, $36, $37, $43
#_0BDE1F: db $FF ; End of Map 4D

;===================================================================================================

OverworldMap32_Screen4E_High:
#_0BDE20: db $23 ; Repeat byte
#_0BDE21: db $03
#_0BDE22: db $00 ; Raw block
#_0BDE23: db $04
#_0BDE24: db $22 ; Repeat byte
#_0BDE25: db $01
#_0BDE26: db $01 ; Raw block
#_0BDE27: db $03, $15
#_0BDE29: db $25 ; Repeat byte
#_0BDE2A: db $01
#_0BDE2B: db $22 ; Repeat byte
#_0BDE2C: db $03
#_0BDE2D: db $04 ; Raw block
#_0BDE2E: db $04, $03, $05, $01, $05
#_0BDE33: db $22 ; Repeat byte
#_0BDE34: db $01
#_0BDE35: db $22 ; Repeat byte
#_0BDE36: db $03
#_0BDE37: db $83 ; Copy past
#_0BDE38: dw $0E00
#_0BDE3A: db $07 ; Raw block
#_0BDE3B: db $04, $03, $02, $04, $01, $02, $00, $02
#_0BDE43: db $24 ; Repeat byte
#_0BDE44: db $05
#_0BDE45: db $0B ; Raw block
#_0BDE46: db $01, $03, $04, $03, $00, $03, $02, $15
#_0BDE4E: db $00, $05, $02, $02
#_0BDE52: db $83 ; Copy past
#_0BDE53: dw $3800
#_0BDE55: db $06 ; Raw block
#_0BDE56: db $05, $04, $03, $00, $12, $05, $05
#_0BDE5D: db $83 ; Copy past
#_0BDE5E: dw $3600
#_0BDE60: db $43 ; Repeat word
#_0BDE61: dw $1200
#_0BDE63: db $0C ; Raw block
#_0BDE64: db $01, $01, $03, $05, $01, $04, $02, $00
#_0BDE6C: db $05, $03, $02, $02, $00
#_0BDE71: db $83 ; Copy past
#_0BDE72: dw $2800
#_0BDE74: db $11 ; Raw block
#_0BDE75: db $01, $00, $05, $05, $04, $02, $05, $03
#_0BDE7D: db $03, $02, $05, $02, $01, $02, $04, $01
#_0BDE85: db $01, $12
#_0BDE87: db $62 ; Increment fill
#_0BDE88: db $00
#_0BDE89: db $08 ; Raw block
#_0BDE8A: db $00, $05, $04, $00, $04, $04, $01, $05
#_0BDE92: db $02
#_0BDE93: db $26 ; Repeat byte
#_0BDE94: db $01
#_0BDE95: db $06 ; Raw block
#_0BDE96: db $12, $05, $03, $02, $03, $03, $00
#_0BDE9D: db $22 ; Repeat byte
#_0BDE9E: db $05
#_0BDE9F: db $01 ; Raw block
#_0BDEA0: db $03, $03
#_0BDEA2: db $24 ; Repeat byte
#_0BDEA3: db $01
#_0BDEA4: db $0A ; Raw block
#_0BDEA5: db $00, $03, $01, $05, $00, $12, $03, $05
#_0BDEAD: db $03, $01, $01
#_0BDEB0: db $22 ; Repeat byte
#_0BDEB1: db $04
#_0BDEB2: db $02 ; Raw block
#_0BDEB3: db $05, $05, $00
#_0BDEB6: db $22 ; Repeat byte
#_0BDEB7: db $02
#_0BDEB8: db $01 ; Raw block
#_0BDEB9: db $05, $12
#_0BDEBB: db $22 ; Repeat byte
#_0BDEBC: db $03
#_0BDEBD: db $02 ; Raw block
#_0BDEBE: db $01, $01, $05
#_0BDEC1: db $22 ; Repeat byte
#_0BDEC2: db $15
#_0BDEC3: db $01 ; Raw block
#_0BDEC4: db $02, $05
#_0BDEC6: db $22 ; Repeat byte
#_0BDEC7: db $04
#_0BDEC8: db $83 ; Copy past
#_0BDEC9: dw $9300
#_0BDECB: db $01 ; Raw block
#_0BDECC: db $03, $01
#_0BDECE: db $24 ; Repeat byte
#_0BDECF: db $05
#_0BDED0: db $11 ; Raw block
#_0BDED1: db $01, $05, $05, $15, $05, $04, $01, $05
#_0BDED9: db $05, $00, $05, $05, $15, $01, $00, $12
#_0BDEE1: db $04, $03
#_0BDEE3: db $22 ; Repeat byte
#_0BDEE4: db $15
#_0BDEE5: db $01 ; Raw block
#_0BDEE6: db $05, $04
#_0BDEE8: db $22 ; Repeat byte
#_0BDEE9: db $01
#_0BDEEA: db $10 ; Raw block
#_0BDEEB: db $04, $04, $15, $04, $02, $02, $05, $04
#_0BDEF3: db $15, $05, $02, $15, $15, $04, $04, $01
#_0BDEFB: db $04
#_0BDEFC: db $83 ; Copy past
#_0BDEFD: dw $D700
#_0BDEFF: db $00 ; Raw block
#_0BDF00: db $04
#_0BDF01: db $83 ; Copy past
#_0BDF02: dw $E400
#_0BDF04: db $01 ; Raw block
#_0BDF05: db $03, $05
#_0BDF07: db $22 ; Repeat byte
#_0BDF08: db $15
#_0BDF09: db $02 ; Raw block
#_0BDF0A: db $04, $04, $15
#_0BDF0D: db $FF ; End of Map 4E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen4E_Low:
#_0BDF0E: db $00 ; Raw block
#_0BDF0F: db $6B
#_0BDF10: db $22 ; Repeat byte
#_0BDF11: db $6C
#_0BDF12: db $05 ; Raw block
#_0BDF13: db $94, $E5, $E5, $F8, $75, $44
#_0BDF19: db $24 ; Repeat byte
#_0BDF1A: db $F8
#_0BDF1B: db $00 ; Raw block
#_0BDF1C: db $03
#_0BDF1D: db $22 ; Repeat byte
#_0BDF1E: db $6C
#_0BDF1F: db $0A ; Raw block
#_0BDF20: db $84, $A8, $46, $AC, $47, $E5, $E5, $F8
#_0BDF28: db $68, $69, $7B
#_0BDF2B: db $83 ; Copy past
#_0BDF2C: dw $0E00
#_0BDF2E: db $07 ; Raw block
#_0BDF2F: db $84, $A8, $A1, $B2, $B4, $7A, $AA, $A1
#_0BDF37: db $64 ; Increment fill
#_0BDF38: db $47
#_0BDF39: db $E0, $50 ; EXT Raw block
#_0BDF3B: db $03, $6C, $84, $A8, $9F, $9A, $02, $45
#_0BDF43: db $1D, $4D, $AA, $7A, $4E, $59, $5A, $4F
#_0BDF4B: db $50, $84, $A8, $1C, $75, $51, $52, $46
#_0BDF53: db $1C, $54, $86, $1C, $75, $9F, $75, $41
#_0BDF5B: db $5B, $A8, $55, $DB, $B5, $6E, $1D, $56
#_0BDF63: db $B2, $79, $91, $A9, $1C, $8D, $57, $58
#_0BDF6B: db $49, $AA, $59, $5A, $C5, $7A, $5B, $56
#_0BDF73: db $BA, $7A, $5C, $07, $AA, $97, $E6, $EB
#_0BDF7B: db $6A, $75, $9F, $1F, $04, $9F, $5D, $C4
#_0BDF83: db $1D, $81, $82, $E5, $5E, $82, $00, $06
#_0BDF8B: db $06
#_0BDF8C: db $22 ; Repeat byte
#_0BDF8D: db $AB
#_0BDF8E: db $0C ; Raw block
#_0BDF8F: db $F2, $75, $5F, $B1, $61, $B4, $A8, $9F
#_0BDF97: db $50, $60, $61, $20, $20
#_0BDF9C: db $22 ; Repeat byte
#_0BDF9D: db $B3
#_0BDF9E: db $0C ; Raw block
#_0BDF9F: db $FB, $F2, $9F, $56, $22, $62, $1C, $75
#_0BDFA7: db $50, $63, $5A, $F8, $F8
#_0BDFAC: db $22 ; Repeat byte
#_0BDFAD: db $A4
#_0BDFAE: db $0D ; Raw block
#_0BDFAF: db $64, $65, $AA, $A1, $07, $A2, $66, $75
#_0BDFB7: db $56, $57, $5A, $F8, $F8, $19
#_0BDFBD: db $62 ; Increment fill
#_0BDFBE: db $47
#_0BDFBF: db $0A ; Raw block
#_0BDFC0: db $41, $4D, $C9, $B1, $CA, $FB, $F2, $AA
#_0BDFC8: db $56, $BA, $E5
#_0BDFCB: db $64 ; Increment fill
#_0BDFCC: db $6A
#_0BDFCD: db $11 ; Raw block
#_0BDFCE: db $CC, $6F, $70, $4A, $72, $CE, $FB, $73
#_0BDFD6: db $66, $AA, $74, $75, $06, $D1, $1D, $75
#_0BDFDE: db $8A, $C8
#_0BDFE0: db $62 ; Increment fill
#_0BDFE1: db $4B
#_0BDFE2: db $E0, $26 ; EXT Raw block
#_0BDFE4: db $26, $CE, $B3, $FB, $AB, $AA, $B3, $4E
#_0BDFEC: db $A6, $07, $07, $7B, $B3, $4F, $2B, $D1
#_0BDFF4: db $50, $51, $A4, $CE, $B3, $B3, $52, $53
#_0BDFFC: db $42, $B1, $B1, $43, $F7, $54, $80, $20
#_0BE004: db $81, $55, $56, $51, $A4, $F7, $57
#_0BE00B: db $FF ; End of Map 4E

;===================================================================================================

OverworldMap32_Screen4F_High:
#_0BE00C: db $01 ; Raw block
#_0BE00D: db $05, $07
#_0BE00F: db $2A ; Repeat byte
#_0BE010: db $15
#_0BE011: db $02 ; Raw block
#_0BE012: db $02, $05, $01
#_0BE015: db $22 ; Repeat byte
#_0BE016: db $05
#_0BE017: db $28 ; Repeat byte
#_0BE018: db $15
#_0BE019: db $08 ; Raw block
#_0BE01A: db $05, $05, $01, $01, $03, $05, $05, $07
#_0BE022: db $05
#_0BE023: db $22 ; Repeat byte
#_0BE024: db $15
#_0BE025: db $00 ; Raw block
#_0BE026: db $07
#_0BE027: db $22 ; Repeat byte
#_0BE028: db $15
#_0BE029: db $00 ; Raw block
#_0BE02A: db $06
#_0BE02B: db $22 ; Repeat byte
#_0BE02C: db $01
#_0BE02D: db $01 ; Raw block
#_0BE02E: db $04, $05
#_0BE030: db $43 ; Repeat word
#_0BE031: dw $0705
#_0BE033: db $23 ; Repeat byte
#_0BE034: db $15
#_0BE035: db $0E ; Raw block
#_0BE036: db $0F, $0F, $15, $06, $01, $15, $05, $08
#_0BE03E: db $15, $05, $0F, $05, $05, $15, $07
#_0BE045: db $23 ; Repeat byte
#_0BE046: db $15
#_0BE047: db $03 ; Raw block
#_0BE048: db $07, $08, $02, $05
#_0BE04C: db $22 ; Repeat byte
#_0BE04D: db $15
#_0BE04E: db $03 ; Raw block
#_0BE04F: db $11, $0F, $0F, $06
#_0BE053: db $25 ; Repeat byte
#_0BE054: db $07
#_0BE055: db $02 ; Raw block
#_0BE056: db $15, $15, $05
#_0BE059: db $22 ; Repeat byte
#_0BE05A: db $15
#_0BE05B: db $01 ; Raw block
#_0BE05C: db $10, $05
#_0BE05E: db $22 ; Repeat byte
#_0BE05F: db $15
#_0BE060: db $06 ; Raw block
#_0BE061: db $00, $00, $04, $15, $15, $03, $15
#_0BE068: db $83 ; Copy past
#_0BE069: dw $4500
#_0BE06B: db $22 ; Repeat byte
#_0BE06C: db $15
#_0BE06D: db $08 ; Raw block
#_0BE06E: db $01, $05, $0D, $04, $01, $15, $15, $01
#_0BE076: db $01
#_0BE077: db $24 ; Repeat byte
#_0BE078: db $05
#_0BE079: db $83 ; Copy past
#_0BE07A: dw $2A00
#_0BE07C: db $04 ; Raw block
#_0BE07D: db $05, $01, $15, $02, $0C
#_0BE082: db $23 ; Repeat byte
#_0BE083: db $01
#_0BE084: db $04 ; Raw block
#_0BE085: db $05, $09, $08, $05, $15
#_0BE08A: db $43 ; Repeat word
#_0BE08B: dw $0503
#_0BE08D: db $83 ; Copy past
#_0BE08E: dw $2B00
#_0BE090: db $02 ; Raw block
#_0BE091: db $15, $01, $01
#_0BE094: db $23 ; Repeat byte
#_0BE095: db $05
#_0BE096: db $01 ; Raw block
#_0BE097: db $15, $0A
#_0BE099: db $22 ; Repeat byte
#_0BE09A: db $15
#_0BE09B: db $01 ; Raw block
#_0BE09C: db $03, $04
#_0BE09E: db $22 ; Repeat byte
#_0BE09F: db $01
#_0BE0A0: db $01 ; Raw block
#_0BE0A1: db $05, $01
#_0BE0A3: db $22 ; Repeat byte
#_0BE0A4: db $05
#_0BE0A5: db $07 ; Raw block
#_0BE0A6: db $15, $01, $03, $06, $00, $15, $05, $00
#_0BE0AE: db $22 ; Repeat byte
#_0BE0AF: db $01
#_0BE0B0: db $24 ; Repeat byte
#_0BE0B1: db $05
#_0BE0B2: db $01 ; Raw block
#_0BE0B3: db $15, $01
#_0BE0B5: db $22 ; Repeat byte
#_0BE0B6: db $15
#_0BE0B7: db $02 ; Raw block
#_0BE0B8: db $0F, $05, $04
#_0BE0BB: db $22 ; Repeat byte
#_0BE0BC: db $01
#_0BE0BD: db $01 ; Raw block
#_0BE0BE: db $03, $05
#_0BE0C0: db $22 ; Repeat byte
#_0BE0C1: db $06
#_0BE0C2: db $0C ; Raw block
#_0BE0C3: db $01, $01, $15, $06, $15, $0F, $05, $03
#_0BE0CB: db $15, $06, $01, $03, $03
#_0BE0D0: db $23 ; Repeat byte
#_0BE0D1: db $06
#_0BE0D2: db $43 ; Repeat word
#_0BE0D3: dw $0601
#_0BE0D5: db $23 ; Repeat byte
#_0BE0D6: db $15
#_0BE0D7: db $03 ; Raw block
#_0BE0D8: db $01, $06, $03, $05
#_0BE0DC: db $24 ; Repeat byte
#_0BE0DD: db $06
#_0BE0DE: db $03 ; Raw block
#_0BE0DF: db $01, $02, $01, $03
#_0BE0E3: db $22 ; Repeat byte
#_0BE0E4: db $15
#_0BE0E5: db $01 ; Raw block
#_0BE0E6: db $01, $01
#_0BE0E8: db $FF ; End of Map 4F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen4F_Low:
#_0BE0E9: db $02 ; Raw block
#_0BE0EA: db $83, $0A, $58
#_0BE0ED: db $28 ; Repeat byte
#_0BE0EE: db $59
#_0BE0EF: db $06 ; Raw block
#_0BE0F0: db $5A, $82, $DE, $03, $8E, $83, $8F
#_0BE0F7: db $28 ; Repeat byte
#_0BE0F8: db $5B
#_0BE0F9: db $08 ; Raw block
#_0BE0FA: db $FF, $DE, $03, $03, $6C, $8E, $96, $35
#_0BE102: db $E1
#_0BE103: db $62 ; Increment fill
#_0BE104: db $5C
#_0BE105: db $00 ; Raw block
#_0BE106: db $89
#_0BE107: db $62 ; Increment fill
#_0BE108: db $5F
#_0BE109: db $00 ; Raw block
#_0BE10A: db $0A
#_0BE10B: db $22 ; Repeat byte
#_0BE10C: db $03
#_0BE10D: db $05 ; Raw block
#_0BE10E: db $83, $9E, $9F, $19, $E1, $19
#_0BE114: db $63 ; Increment fill
#_0BE115: db $62
#_0BE116: db $0E ; Raw block
#_0BE117: db $99, $86, $66, $16, $03, $67, $A7, $8F
#_0BE11F: db $68, $E1, $70, $E1, $E1, $69, $22
#_0BE126: db $63 ; Increment fill
#_0BE127: db $6A
#_0BE128: db $03 ; Raw block
#_0BE129: db $23, $B6, $82, $8A
#_0BE12D: db $62 ; Increment fill
#_0BE12E: db $6E
#_0BE12F: db $03 ; Raw block
#_0BE130: db $00, $9A, $94, $1D
#_0BE134: db $25 ; Repeat byte
#_0BE135: db $27
#_0BE136: db $02 ; Raw block
#_0BE137: db $71, $72, $8A
#_0BE13A: db $62 ; Increment fill
#_0BE13B: db $73
#_0BE13C: db $01 ; Raw block
#_0BE13D: db $AB, $BD
#_0BE13F: db $62 ; Increment fill
#_0BE140: db $76
#_0BE141: db $0A ; Raw block
#_0BE142: db $1D, $1D, $BE, $79, $7A, $4D, $7B, $8A
#_0BE14A: db $C5, $7C, $20
#_0BE14D: db $62 ; Increment fill
#_0BE14E: db $7D
#_0BE14F: db $08 ; Raw block
#_0BE150: db $E4, $5A, $C5, $7C, $DB, $79, $80, $41
#_0BE158: db $2E
#_0BE159: db $62 ; Increment fill
#_0BE15A: db $D2
#_0BE15B: db $1E ; Raw block
#_0BE15C: db $E1, $E1, $81, $82, $66, $1F, $DA, $23
#_0BE164: db $83, $8A, $E3, $48, $49, $CD, $CD, $DF
#_0BE16C: db $36, $AA, $E2, $84, $88, $E5, $D5, $E6
#_0BE174: db $85, $66, $52, $53, $86, $D6, $D6
#_0BE17B: db $63 ; Increment fill
#_0BE17C: db $EB
#_0BE17D: db $01 ; Raw block
#_0BE17E: db $87, $01
#_0BE180: db $62 ; Increment fill
#_0BE181: db $88
#_0BE182: db $06 ; Raw block
#_0BE183: db $49, $20, $77, $71, $06, $83, $D6
#_0BE18A: db $62 ; Increment fill
#_0BE18B: db $F6
#_0BE18C: db $11 ; Raw block
#_0BE18D: db $8B, $CC, $FF, $66, $A0, $8C, $5B, $1D
#_0BE195: db $77, $71, $06, $8E, $83, $84, $FE, $FF
#_0BE19D: db $8D, $A0
#_0BE19F: db $62 ; Increment fill
#_0BE1A0: db $8E
#_0BE1A1: db $07 ; Raw block
#_0BE1A2: db $48, $5D, $C4, $77, $71, $06, $6C, $8E
#_0BE1AA: db $62 ; Increment fill
#_0BE1AB: db $08
#_0BE1AC: db $0C ; Raw block
#_0BE1AD: db $03, $D9, $91, $0D, $92, $18, $5F, $B1
#_0BE1B5: db $93, $12, $0C, $6C, $6C
#_0BE1BA: db $63 ; Increment fill
#_0BE1BB: db $13
#_0BE1BC: db $04 ; Raw block
#_0BE1BD: db $03, $17, $17, $18, $92
#_0BE1C2: db $62 ; Increment fill
#_0BE1C3: db $94
#_0BE1C4: db $03 ; Raw block
#_0BE1C5: db $03, $1B, $6C, $9E
#_0BE1C9: db $63 ; Increment fill
#_0BE1CA: db $1C
#_0BE1CB: db $04 ; Raw block
#_0BE1CC: db $16, $03, $75, $00, $63
#_0BE1D1: db $62 ; Increment fill
#_0BE1D2: db $97
#_0BE1D3: db $01 ; Raw block
#_0BE1D4: db $F3, $71
#_0BE1D6: db $FF ; End of Map 4F

;===================================================================================================

OverworldMap32_Screen50_High:
#_0BE1D7: db $03 ; Raw block
#_0BE1D8: db $00, $00, $06, $06
#_0BE1DC: db $26 ; Repeat byte
#_0BE1DD: db $00
#_0BE1DE: db $01 ; Raw block
#_0BE1DF: db $06, $06
#_0BE1E1: db $24 ; Repeat byte
#_0BE1E2: db $00
#_0BE1E3: db $01 ; Raw block
#_0BE1E4: db $06, $06
#_0BE1E6: db $26 ; Repeat byte
#_0BE1E7: db $00
#_0BE1E8: db $01 ; Raw block
#_0BE1E9: db $06, $06
#_0BE1EB: db $23 ; Repeat byte
#_0BE1EC: db $00
#_0BE1ED: db $03 ; Raw block
#_0BE1EE: db $01, $06, $06, $01
#_0BE1F2: db $23 ; Repeat byte
#_0BE1F3: db $00
#_0BE1F4: db $00 ; Raw block
#_0BE1F5: db $03
#_0BE1F6: db $84 ; Copy past
#_0BE1F7: dw $2100
#_0BE1F9: db $05 ; Raw block
#_0BE1FA: db $03, $00, $04, $06, $05, $01
#_0BE200: db $24 ; Repeat byte
#_0BE201: db $00
#_0BE202: db $02 ; Raw block
#_0BE203: db $01, $02, $06
#_0BE206: db $24 ; Repeat byte
#_0BE207: db $00
#_0BE208: db $01 ; Raw block
#_0BE209: db $01, $06
#_0BE20B: db $25 ; Repeat byte
#_0BE20C: db $00
#_0BE20D: db $00 ; Raw block
#_0BE20E: db $01
#_0BE20F: db $25 ; Repeat byte
#_0BE210: db $00
#_0BE211: db $04 ; Raw block
#_0BE212: db $01, $06, $01, $01, $06
#_0BE217: db $22 ; Repeat byte
#_0BE218: db $00
#_0BE219: db $04 ; Raw block
#_0BE21A: db $03, $04, $00, $06, $01
#_0BE21F: db $22 ; Repeat byte
#_0BE220: db $00
#_0BE221: db $00 ; Raw block
#_0BE222: db $04
#_0BE223: db $24 ; Repeat byte
#_0BE224: db $01
#_0BE225: db $00 ; Raw block
#_0BE226: db $00
#_0BE227: db $22 ; Repeat byte
#_0BE228: db $01
#_0BE229: db $02 ; Raw block
#_0BE22A: db $04, $03, $01
#_0BE22D: db $23 ; Repeat byte
#_0BE22E: db $00
#_0BE22F: db $03 ; Raw block
#_0BE230: db $15, $03, $15, $06
#_0BE234: db $23 ; Repeat byte
#_0BE235: db $15
#_0BE236: db $02 ; Raw block
#_0BE237: db $04, $04, $01
#_0BE23A: db $25 ; Repeat byte
#_0BE23B: db $00
#_0BE23C: db $09 ; Raw block
#_0BE23D: db $01, $00, $00, $06, $04, $15, $15, $04
#_0BE245: db $06, $06
#_0BE247: db $26 ; Repeat byte
#_0BE248: db $00
#_0BE249: db $00 ; Raw block
#_0BE24A: db $01
#_0BE24B: db $22 ; Repeat byte
#_0BE24C: db $00
#_0BE24D: db $22 ; Repeat byte
#_0BE24E: db $01
#_0BE24F: db $02 ; Raw block
#_0BE250: db $15, $15, $01
#_0BE253: db $24 ; Repeat byte
#_0BE254: db $00
#_0BE255: db $00 ; Raw block
#_0BE256: db $01
#_0BE257: db $23 ; Repeat byte
#_0BE258: db $00
#_0BE259: db $05 ; Raw block
#_0BE25A: db $01, $15, $15, $03, $15, $15
#_0BE260: db $24 ; Repeat byte
#_0BE261: db $00
#_0BE262: db $43 ; Repeat word
#_0BE263: dw $0006
#_0BE265: db $83 ; Copy past
#_0BE266: dw $4900
#_0BE268: db $00 ; Raw block
#_0BE269: db $01
#_0BE26A: db $25 ; Repeat byte
#_0BE26B: db $00
#_0BE26C: db $02 ; Raw block
#_0BE26D: db $01, $15, $00
#_0BE270: db $84 ; Copy past
#_0BE271: dw $6500
#_0BE273: db $02 ; Raw block
#_0BE274: db $00, $04, $06
#_0BE277: db $24 ; Repeat byte
#_0BE278: db $00
#_0BE279: db $01 ; Raw block
#_0BE27A: db $06, $15
#_0BE27C: db $83 ; Copy past
#_0BE27D: dw $0100
#_0BE27F: db $03 ; Raw block
#_0BE280: db $01, $06, $06, $04
#_0BE284: db $26 ; Repeat byte
#_0BE285: db $00
#_0BE286: db $03 ; Raw block
#_0BE287: db $06, $03, $06, $06
#_0BE28B: db $23 ; Repeat byte
#_0BE28C: db $00
#_0BE28D: db $00 ; Raw block
#_0BE28E: db $06
#_0BE28F: db $26 ; Repeat byte
#_0BE290: db $00
#_0BE291: db $02 ; Raw block
#_0BE292: db $06, $03, $06
#_0BE295: db $24 ; Repeat byte
#_0BE296: db $00
#_0BE297: db $00 ; Raw block
#_0BE298: db $06
#_0BE299: db $23 ; Repeat byte
#_0BE29A: db $00
#_0BE29B: db $FF ; End of Map 50

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen50_Low:
#_0BE29C: db $03 ; Raw block
#_0BE29D: db $02, $00, $22, $23
#_0BE2A1: db $62 ; Increment fill
#_0BE2A2: db $00
#_0BE2A3: db $01 ; Raw block
#_0BE2A4: db $00, $01
#_0BE2A6: db $86 ; Copy past
#_0BE2A7: dw $0000
#_0BE2A9: db $03 ; Raw block
#_0BE2AA: db $0B, $09, $24, $25
#_0BE2AE: db $62 ; Increment fill
#_0BE2AF: db $09
#_0BE2B0: db $01 ; Raw block
#_0BE2B1: db $09, $0A
#_0BE2B3: db $86 ; Copy past
#_0BE2B4: dw $1000
#_0BE2B6: db $05 ; Raw block
#_0BE2B7: db $06, $10, $26, $27, $31, $93
#_0BE2BD: db $62 ; Increment fill
#_0BE2BE: db $06
#_0BE2BF: db $00 ; Raw block
#_0BE2C0: db $EC
#_0BE2C1: db $84 ; Copy past
#_0BE2C2: dw $2100
#_0BE2C4: db $0E ; Raw block
#_0BE2C5: db $EC, $02, $6D, $28, $4F, $39, $3F, $02
#_0BE2CD: db $00, $01, $83, $1C, $5E, $29, $D1
#_0BE2D4: db $83 ; Copy past
#_0BE2D5: dw $0E00
#_0BE2D7: db $0A ; Raw block
#_0BE2D8: db $2F, $2A, $91, $92, $0B, $09, $0A, $8C
#_0BE2E0: db $29, $1D, $EE
#_0BE2E3: db $84 ; Copy past
#_0BE2E4: dw $1D00
#_0BE2E6: db $E0, $23 ; EXT Raw block
#_0BE2E8: db $2B, $61, $62, $2C, $7A, $07, $08, $EC
#_0BE2F0: db $60, $1D, $2D, $31, $93, $06, $02, $6D
#_0BE2F8: db $26, $67, $68, $19, $1B, $84, $3A, $1B
#_0BE300: db $1C, $23, $FB, $39, $3F, $02, $0B, $09
#_0BE308: db $9A, $DB, $9B, $B3
#_0BE30C: db $62 ; Increment fill
#_0BE30D: db $9C
#_0BE30E: db $1A ; Raw block
#_0BE30F: db $9C, $66, $1E, $74, $91, $92, $0B, $7A
#_0BE317: db $07, $FE, $38, $C9, $FE, $45, $08, $9F
#_0BE31F: db $A0, $60, $2F, $30, $C9, $93, $06, $02
#_0BE327: db $00, $01, $7F
#_0BE32A: db $83 ; Copy past
#_0BE32B: dw $3400
#_0BE32D: db $04 ; Raw block
#_0BE32E: db $04, $1B, $1C, $A1, $A2
#_0BE333: db $84 ; Copy past
#_0BE334: dw $6D00
#_0BE336: db $00 ; Raw block
#_0BE337: db $0A
#_0BE338: db $83 ; Copy past
#_0BE339: dw $7C00
#_0BE33B: db $06 ; Raw block
#_0BE33C: db $09, $07, $A3, $A4, $FF, $A5, $A6
#_0BE343: db $83 ; Copy past
#_0BE344: dw $7E00
#_0BE346: db $1A ; Raw block
#_0BE347: db $93, $38, $1D, $2C, $7A, $07, $32, $7C
#_0BE34F: db $B2, $2D, $1D, $C9, $93, $7A, $02, $00
#_0BE357: db $04, $A7, $1D, $19, $1A, $00, $04, $3B
#_0BE35F: db $1D, $23, $3B
#_0BE362: db $84 ; Copy past
#_0BE363: dw $3D00
#_0BE365: db $09 ; Raw block
#_0BE366: db $3C, $A8, $1D, $3F, $40, $09, $07, $41
#_0BE36E: db $42, $1E
#_0BE370: db $83 ; Copy past
#_0BE371: dw $1600
#_0BE373: db $09 ; Raw block
#_0BE374: db $7A, $07, $FE, $43, $D5, $44, $45, $07
#_0BE37C: db $FE, $7C
#_0BE37E: db $83 ; Copy past
#_0BE37F: dw $B400
#_0BE381: db $83 ; Copy past
#_0BE382: dw $BE00
#_0BE384: db $03 ; Raw block
#_0BE385: db $01, $46, $D5, $47
#_0BE389: db $83 ; Copy past
#_0BE38A: dw $9000
#_0BE38C: db $01 ; Raw block
#_0BE38D: db $1D, $2E
#_0BE38F: db $83 ; Copy past
#_0BE390: dw $0600
#_0BE392: db $FF ; End of Map 50

;===================================================================================================

OverworldMap32_Screen11_High:
#_0BE393: db $2A ; Repeat byte
#_0BE394: db $00
#_0BE395: db $22 ; Repeat byte
#_0BE396: db $15
#_0BE397: db $2D ; Repeat byte
#_0BE398: db $00
#_0BE399: db $00 ; Raw block
#_0BE39A: db $15
#_0BE39B: db $2D ; Repeat byte
#_0BE39C: db $00
#_0BE39D: db $04 ; Raw block
#_0BE39E: db $06, $04, $06, $06, $01
#_0BE3A3: db $23 ; Repeat byte
#_0BE3A4: db $00
#_0BE3A5: db $0B ; Raw block
#_0BE3A6: db $01, $01, $00, $01, $01, $00, $01, $01
#_0BE3AE: db $0D, $00, $00, $15
#_0BE3B2: db $23 ; Repeat byte
#_0BE3B3: db $00
#_0BE3B4: db $00 ; Raw block
#_0BE3B5: db $01
#_0BE3B6: db $25 ; Repeat byte
#_0BE3B7: db $15
#_0BE3B8: db $0A ; Raw block
#_0BE3B9: db $03, $0D, $05, $15, $06, $07, $14, $07
#_0BE3C1: db $07, $15, $04
#_0BE3C4: db $24 ; Repeat byte
#_0BE3C5: db $01
#_0BE3C6: db $83 ; Copy past
#_0BE3C7: dw $4B00
#_0BE3C9: db $06 ; Raw block
#_0BE3CA: db $01, $15, $15, $14, $01, $03, $03
#_0BE3D1: db $23 ; Repeat byte
#_0BE3D2: db $15
#_0BE3D3: db $00 ; Raw block
#_0BE3D4: db $01
#_0BE3D5: db $83 ; Copy past
#_0BE3D6: dw $3200
#_0BE3D8: db $06 ; Raw block
#_0BE3D9: db $15, $00, $00, $01, $00, $00, $0F
#_0BE3E0: db $23 ; Repeat byte
#_0BE3E1: db $15
#_0BE3E2: db $0B ; Raw block
#_0BE3E3: db $01, $01, $04, $04, $0B, $14, $00, $14
#_0BE3EB: db $04, $04, $03, $06
#_0BE3EF: db $22 ; Repeat byte
#_0BE3F0: db $15
#_0BE3F1: db $06 ; Raw block
#_0BE3F2: db $0D, $00, $0C, $04, $04, $08, $08
#_0BE3F9: db $22 ; Repeat byte
#_0BE3FA: db $00
#_0BE3FB: db $02 ; Raw block
#_0BE3FC: db $01, $04, $00
#_0BE3FF: db $23 ; Repeat byte
#_0BE400: db $15
#_0BE401: db $01 ; Raw block
#_0BE402: db $01, $04
#_0BE404: db $23 ; Repeat byte
#_0BE405: db $08
#_0BE406: db $22 ; Repeat byte
#_0BE407: db $00
#_0BE408: db $11 ; Raw block
#_0BE409: db $01, $07, $06, $15, $0F, $0F, $00, $00
#_0BE411: db $15, $06, $15, $04, $01, $00, $00, $04
#_0BE419: db $04, $0C
#_0BE41B: db $22 ; Repeat byte
#_0BE41C: db $15
#_0BE41D: db $07 ; Raw block
#_0BE41E: db $07, $07, $06, $15, $12, $15, $06, $03
#_0BE426: db $22 ; Repeat byte
#_0BE427: db $00
#_0BE428: db $0C ; Raw block
#_0BE429: db $01, $04, $03, $00, $15, $02, $06, $15
#_0BE431: db $00, $0B, $0B, $06, $06
#_0BE436: db $22 ; Repeat byte
#_0BE437: db $00
#_0BE438: db $03 ; Raw block
#_0BE439: db $15, $04, $01, $0C
#_0BE43D: db $23 ; Repeat byte
#_0BE43E: db $15
#_0BE43F: db $04 ; Raw block
#_0BE440: db $08, $08, $04, $0B, $08
#_0BE445: db $83 ; Copy past
#_0BE446: dw $B000
#_0BE448: db $02 ; Raw block
#_0BE449: db $00, $04, $04
#_0BE44C: db $23 ; Repeat byte
#_0BE44D: db $15
#_0BE44E: db $04 ; Raw block
#_0BE44F: db $08, $08, $04, $08, $08
#_0BE454: db $25 ; Repeat byte
#_0BE455: db $00
#_0BE456: db $05 ; Raw block
#_0BE457: db $04, $15, $06, $0F, $01, $0B
#_0BE45D: db $83 ; Copy past
#_0BE45E: dw $EC00
#_0BE460: db $FF ; End of Map 11

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen11_Low:
#_0BE461: db $62 ; Increment fill
#_0BE462: db $00
#_0BE463: db $62 ; Increment fill
#_0BE464: db $00
#_0BE465: db $84 ; Copy past
#_0BE466: dw $0000
#_0BE468: db $62 ; Increment fill
#_0BE469: db $A9
#_0BE46A: db $01 ; Raw block
#_0BE46B: db $02, $00
#_0BE46D: db $62 ; Increment fill
#_0BE46E: db $09
#_0BE46F: db $62 ; Increment fill
#_0BE470: db $09
#_0BE471: db $84 ; Copy past
#_0BE472: dw $1000
#_0BE474: db $06 ; Raw block
#_0BE475: db $8C, $AC, $92, $0B, $09, $07, $08
#_0BE47C: db $62 ; Increment fill
#_0BE47D: db $06
#_0BE47E: db $00 ; Raw block
#_0BE47F: db $06
#_0BE480: db $84 ; Copy past
#_0BE481: dw $2000
#_0BE483: db $04 ; Raw block
#_0BE484: db $38, $37, $2F, $AC, $0E
#_0BE489: db $83 ; Copy past
#_0BE48A: dw $0000
#_0BE48C: db $0B ; Raw block
#_0BE48D: db $04, $1B, $84, $3A, $1B, $84, $3A, $3B
#_0BE495: db $E5, $1D, $A0, $AD
#_0BE499: db $83 ; Copy past
#_0BE49A: dw $1000
#_0BE49C: db $00 ; Raw block
#_0BE49D: db $07
#_0BE49E: db $63 ; Increment fill
#_0BE49F: db $AE
#_0BE4A0: db $0C ; Raw block
#_0BE4A1: db $AF, $B0, $B3, $E6, $55, $B2, $9E, $ED
#_0BE4A9: db $E5, $EC, $ED, $B3, $82
#_0BE4AE: db $24 ; Repeat byte
#_0BE4AF: db $E5
#_0BE4B0: db $0A ; Raw block
#_0BE4B1: db $BB, $E7, $59, $B4, $B3, $B5, $B6, $EA
#_0BE4B9: db $E5, $BB, $A8
#_0BE4BC: db $63 ; Increment fill
#_0BE4BD: db $B7
#_0BE4BE: db $0B ; Raw block
#_0BE4BF: db $2D, $1D, $A9, $1E, $1F, $BB, $09, $0A
#_0BE4C7: db $74, $1D, $1D, $01
#_0BE4CB: db $63 ; Increment fill
#_0BE4CC: db $BC
#_0BE4CD: db $0B ; Raw block
#_0BE4CE: db $4B, $2D, $2D, $2E, $FE, $F2, $07, $C9
#_0BE4D6: db $07, $60, $5F, $70
#_0BE4DA: db $62 ; Increment fill
#_0BE4DB: db $C0
#_0BE4DC: db $0C ; Raw block
#_0BE4DD: db $B8, $1D, $29, $38, $39, $9F, $4B, $00
#_0BE4E5: db $01, $83, $1C, $2C, $A9
#_0BE4EA: db $63 ; Increment fill
#_0BE4EB: db $C3
#_0BE4EC: db $1A ; Raw block
#_0BE4ED: db $6D, $2C, $9B, $9C, $A5, $4E, $09, $0A
#_0BE4F5: db $8C, $29, $E5, $9C, $C7, $08, $01, $1F
#_0BE4FD: db $1F, $C8, $8A, $C9, $BE, $67, $07, $08
#_0BE505: db $07, $60, $39
#_0BE508: db $62 ; Increment fill
#_0BE509: db $CA
#_0BE50A: db $07 ; Raw block
#_0BE50B: db $04, $05, $9C, $CD, $83, $AD, $8A, $DB
#_0BE513: db $83 ; Copy past
#_0BE514: dw $9000
#_0BE516: db $12 ; Raw block
#_0BE517: db $23, $FB, $1F, $CE, $4F, $8E, $CF, $AB
#_0BE51F: db $EF, $EF, $93, $9C, $09, $0A, $8C, $D0
#_0BE527: db $1E, $74, $28
#_0BE52A: db $63 ; Increment fill
#_0BE52B: db $D1
#_0BE52C: db $04 ; Raw block
#_0BE52D: db $B8, $B9, $2E, $FE, $B9
#_0BE532: db $43 ; Repeat word
#_0BE533: dw $0807
#_0BE535: db $02 ; Raw block
#_0BE536: db $93, $07, $60
#_0BE539: db $63 ; Increment fill
#_0BE53A: db $D5
#_0BE53B: db $01 ; Raw block
#_0BE53C: db $BD, $4B
#_0BE53E: db $84 ; Copy past
#_0BE53F: dw $8D00
#_0BE541: db $83 ; Copy past
#_0BE542: dw $0200
#_0BE544: db $09 ; Raw block
#_0BE545: db $6D, $D9, $F5, $00, $42, $47, $D3, $42
#_0BE54D: db $D2, $D3
#_0BE54F: db $FF ; End of Map 11

;===================================================================================================

OverworldMap32_Screen12_High:
#_0BE550: db $22 ; Repeat byte
#_0BE551: db $00
#_0BE552: db $01 ; Raw block
#_0BE553: db $01, $01
#_0BE555: db $27 ; Repeat byte
#_0BE556: db $00
#_0BE557: db $02 ; Raw block
#_0BE558: db $01, $14, $15
#_0BE55B: db $22 ; Repeat byte
#_0BE55C: db $00
#_0BE55D: db $16 ; Raw block
#_0BE55E: db $01, $00, $15, $00, $00, $0B, $15, $00
#_0BE566: db $06, $01, $03, $15, $00, $06, $06, $01
#_0BE56E: db $06, $02, $15, $15, $01, $00, $00
#_0BE575: db $22 ; Repeat byte
#_0BE576: db $08
#_0BE577: db $01 ; Raw block
#_0BE578: db $15, $01
#_0BE57A: db $22 ; Repeat byte
#_0BE57B: db $00
#_0BE57C: db $1B ; Raw block
#_0BE57D: db $0F, $02, $02, $0F, $0F, $01, $01, $00
#_0BE585: db $08, $08, $0B, $01, $05, $02, $06, $15
#_0BE58D: db $15, $03, $05, $15, $0F, $06, $07, $01
#_0BE595: db $0B, $15, $15, $00
#_0BE599: db $22 ; Repeat byte
#_0BE59A: db $01
#_0BE59B: db $06 ; Raw block
#_0BE59C: db $15, $0D, $03, $05, $07, $0C, $07
#_0BE5A3: db $22 ; Repeat byte
#_0BE5A4: db $01
#_0BE5A5: db $83 ; Copy past
#_0BE5A6: dw $4C00
#_0BE5A8: db $15 ; Raw block
#_0BE5A9: db $15, $0D, $01, $0D, $08, $08, $05, $07
#_0BE5B1: db $07, $08, $07, $01, $15, $15, $00, $00
#_0BE5B9: db $15, $0B, $04, $01, $02, $08
#_0BE5BF: db $22 ; Repeat byte
#_0BE5C0: db $07
#_0BE5C1: db $1A ; Raw block
#_0BE5C2: db $06, $01, $08, $14, $15, $04, $15, $00
#_0BE5CA: db $04, $04, $01, $00, $02, $08, $07, $05
#_0BE5D2: db $07, $08, $08, $00, $15, $01, $01, $02
#_0BE5DA: db $04, $04, $15
#_0BE5DD: db $84 ; Copy past
#_0BE5DE: dw $8200
#_0BE5E0: db $09 ; Raw block
#_0BE5E1: db $09, $07, $03, $01, $06, $00, $01, $01
#_0BE5E9: db $08, $01
#_0BE5EB: db $83 ; Copy past
#_0BE5EC: dw $1900
#_0BE5EE: db $05 ; Raw block
#_0BE5EF: db $02, $05, $05, $03, $00, $06
#_0BE5F5: db $23 ; Repeat byte
#_0BE5F6: db $00
#_0BE5F7: db $04 ; Raw block
#_0BE5F8: db $08, $01, $01, $00, $01
#_0BE5FD: db $24 ; Repeat byte
#_0BE5FE: db $15
#_0BE5FF: db $00 ; Raw block
#_0BE600: db $06
#_0BE601: db $23 ; Repeat byte
#_0BE602: db $15
#_0BE603: db $22 ; Repeat byte
#_0BE604: db $06
#_0BE605: db $13 ; Raw block
#_0BE606: db $15, $15, $07, $06, $0B, $0B, $02, $15
#_0BE60E: db $06, $15, $12, $07, $0B, $06, $04, $0B
#_0BE616: db $15, $15, $02, $00
#_0BE61A: db $43 ; Repeat word
#_0BE61B: dw $0600
#_0BE61D: db $01 ; Raw block
#_0BE61E: db $04, $15
#_0BE620: db $83 ; Copy past
#_0BE621: dw $6F00
#_0BE623: db $09 ; Raw block
#_0BE624: db $04, $08, $08, $0B, $00, $00, $04, $04
#_0BE62C: db $16, $01
#_0BE62E: db $24 ; Repeat byte
#_0BE62F: db $04
#_0BE630: db $83 ; Copy past
#_0BE631: dw $DF00
#_0BE633: db $02 ; Raw block
#_0BE634: db $01, $00, $00
#_0BE637: db $22 ; Repeat byte
#_0BE638: db $04
#_0BE639: db $06 ; Raw block
#_0BE63A: db $00, $01, $04, $04, $16, $16, $06
#_0BE641: db $FF ; End of Map 12

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen12_Low:
#_0BE642: db $E0, $AC ; EXT Raw block
#_0BE644: db $01, $02, $00, $04, $3B, $1D, $B2, $1D
#_0BE64C: db $AA, $1D, $A9, $FB, $A9, $D2, $F1, $DA
#_0BE654: db $0A, $0B, $09, $07, $1C, $DB, $B2, $1D
#_0BE65C: db $F3, $DC, $1D, $70, $1E, $8E, $DD, $9F
#_0BE664: db $5E, $AC, $0E, $2B, $A1, $DE, $DF, $A0
#_0BE66C: db $1D, $AA, $B8, $B9, $CC, $E0, $DB, $9F
#_0BE674: db $A1, $A1, $08, $A1, $AA, $5E, $5F, $D9
#_0BE67C: db $A0, $1D, $BD, $4B, $43, $E4, $5A, $61
#_0BE684: db $9E, $E1, $E2, $9A, $99, $E3, $6A, $16
#_0BE68C: db $6C, $42, $47, $E4, $E5, $FB, $1F, $22
#_0BE694: db $B3, $E6, $E6, $32, $C5, $36, $4C, $4C
#_0BE69C: db $93, $4D, $4E, $E7, $1F, $1D, $1E, $E8
#_0BE6A4: db $C7, $22, $E7, $69, $6A, $E1, $89, $4C
#_0BE6AC: db $C4, $61, $58, $E9, $EA, $1C, $1D, $EB
#_0BE6B4: db $51, $2F, $2D, $3E, $6B, $43, $36, $14
#_0BE6BC: db $16, $D9, $B3, $EB, $EC, $7C, $ED, $FB
#_0BE6C4: db $39, $3A, $4C, $1D, $3E, $6B, $43, $E1
#_0BE6CC: db $14, $B6, $B7, $FB, $EE, $23, $E6, $08
#_0BE6D4: db $42, $43, $EF, $2D, $FB, $3E, $6B, $95
#_0BE6DC: db $FC, $68, $55, $1E, $3A, $1D, $E4, $E5
#_0BE6E4: db $42, $4E, $E7, $A9, $70, $1E, $3E, $6D
#_0BE6EC: db $6D, $49, $A9, $70, $FB
#_0BE6F1: db $22 ; Repeat byte
#_0BE6F2: db $1D
#_0BE6F3: db $04 ; Raw block
#_0BE6F4: db $49, $58, $65, $1D, $1E
#_0BE6F9: db $64 ; Increment fill
#_0BE6FA: db $F0
#_0BE6FB: db $01 ; Raw block
#_0BE6FC: db $3E, $F0
#_0BE6FE: db $62 ; Increment fill
#_0BE6FF: db $F5
#_0BE700: db $16 ; Raw block
#_0BE701: db $8D, $9C, $9C, $F8, $F9, $05, $92, $EF
#_0BE709: db $F0, $72, $FA, $9C, $FB, $85, $02, $EF
#_0BE711: db $93, $2E, $FE, $FC, $FD, $A7, $1D
#_0BE718: db $43 ; Repeat word
#_0BE719: dw $B31D
#_0BE71B: db $0F ; Raw block
#_0BE71C: db $2D, $FE, $FF, $3D, $8A, $AB, $39, $9F
#_0BE724: db $4B, $43, $1D, $1D, $2D, $2E, $00, $4B
#_0BE72C: db $62 ; Increment fill
#_0BE72D: db $38
#_0BE72E: db $08 ; Raw block
#_0BE72F: db $8A, $AA, $B3, $42, $D2, $D3, $62, $1D
#_0BE737: db $1D
#_0BE738: db $62 ; Increment fill
#_0BE739: db $38
#_0BE73A: db $06 ; Raw block
#_0BE73B: db $1D, $61, $42, $43, $01, $02, $A0
#_0BE742: db $FF ; End of Map 12

;===================================================================================================

OverworldMap32_Screen53_High:
#_0BE743: db $01 ; Raw block
#_0BE744: db $04, $06
#_0BE746: db $22 ; Repeat byte
#_0BE747: db $01
#_0BE748: db $00 ; Raw block
#_0BE749: db $06
#_0BE74A: db $23 ; Repeat byte
#_0BE74B: db $00
#_0BE74C: db $02 ; Raw block
#_0BE74D: db $01, $03, $06
#_0BE750: db $22 ; Repeat byte
#_0BE751: db $00
#_0BE752: db $14 ; Raw block
#_0BE753: db $04, $03, $01, $01, $16, $16, $01, $00
#_0BE75B: db $01, $07, $01, $01, $16, $01, $00, $00
#_0BE763: db $03, $03, $01, $16, $02
#_0BE768: db $83 ; Copy past
#_0BE769: dw $1500
#_0BE76B: db $06 ; Raw block
#_0BE76C: db $01, $16, $16, $02, $01, $00, $00
#_0BE773: db $22 ; Repeat byte
#_0BE774: db $02
#_0BE775: db $02 ; Raw block
#_0BE776: db $04, $02, $06
#_0BE779: db $83 ; Copy past
#_0BE77A: dw $0300
#_0BE77C: db $05 ; Raw block
#_0BE77D: db $16, $16, $00, $01, $01, $06
#_0BE783: db $22 ; Repeat byte
#_0BE784: db $01
#_0BE785: db $01 ; Raw block
#_0BE786: db $16, $00
#_0BE788: db $22 ; Repeat byte
#_0BE789: db $06
#_0BE78A: db $09 ; Raw block
#_0BE78B: db $0D, $07, $16, $16, $07, $16, $01, $06
#_0BE793: db $00, $04
#_0BE795: db $22 ; Repeat byte
#_0BE796: db $00
#_0BE797: db $22 ; Repeat byte
#_0BE798: db $06
#_0BE799: db $00 ; Raw block
#_0BE79A: db $16
#_0BE79B: db $85 ; Copy past
#_0BE79C: dw $4900
#_0BE79E: db $05 ; Raw block
#_0BE79F: db $00, $00, $02, $16, $04, $00
#_0BE7A5: db $43 ; Repeat word
#_0BE7A6: dw $0106
#_0BE7A8: db $23 ; Repeat byte
#_0BE7A9: db $16
#_0BE7AA: db $83 ; Copy past
#_0BE7AB: dw $0300
#_0BE7AD: db $00 ; Raw block
#_0BE7AE: db $07
#_0BE7AF: db $22 ; Repeat byte
#_0BE7B0: db $16
#_0BE7B1: db $01 ; Raw block
#_0BE7B2: db $02, $00
#_0BE7B4: db $27 ; Repeat byte
#_0BE7B5: db $16
#_0BE7B6: db $0A ; Raw block
#_0BE7B7: db $06, $02, $04, $00, $00, $16, $02, $00
#_0BE7BF: db $06, $00, $04
#_0BE7C2: db $83 ; Copy past
#_0BE7C3: dw $1400
#_0BE7C5: db $05 ; Raw block
#_0BE7C6: db $06, $06, $01, $04, $03, $04
#_0BE7CC: db $22 ; Repeat byte
#_0BE7CD: db $00
#_0BE7CE: db $01 ; Raw block
#_0BE7CF: db $06, $00
#_0BE7D1: db $23 ; Repeat byte
#_0BE7D2: db $16
#_0BE7D3: db $06 ; Raw block
#_0BE7D4: db $00, $16, $06, $00, $03, $03, $04
#_0BE7DB: db $22 ; Repeat byte
#_0BE7DC: db $00
#_0BE7DD: db $27 ; Repeat byte
#_0BE7DE: db $16
#_0BE7DF: db $02 ; Raw block
#_0BE7E0: db $00, $00, $06
#_0BE7E3: db $23 ; Repeat byte
#_0BE7E4: db $00
#_0BE7E5: db $23 ; Repeat byte
#_0BE7E6: db $06
#_0BE7E7: db $83 ; Copy past
#_0BE7E8: dw $5300
#_0BE7EA: db $01 ; Raw block
#_0BE7EB: db $00, $00
#_0BE7ED: db $2F ; Repeat byte
#_0BE7EE: db $06
#_0BE7EF: db $01 ; Raw block
#_0BE7F0: db $01, $01
#_0BE7F2: db $24 ; Repeat byte
#_0BE7F3: db $06
#_0BE7F4: db $24 ; Repeat byte
#_0BE7F5: db $01
#_0BE7F6: db $22 ; Repeat byte
#_0BE7F7: db $06
#_0BE7F8: db $30 ; Repeat byte
#_0BE7F9: db $01
#_0BE7FA: db $2F ; Repeat byte
#_0BE7FB: db $06
#_0BE7FC: db $FF ; End of Map 53

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen53_Low:
#_0BE7FD: db $05 ; Raw block
#_0BE7FE: db $8D, $48, $F8, $ED, $E2, $49
#_0BE804: db $62 ; Increment fill
#_0BE805: db $06
#_0BE806: db $02 ; Raw block
#_0BE807: db $FF, $00, $63
#_0BE80A: db $83 ; Copy past
#_0BE80B: dw $0500
#_0BE80D: db $1F ; Raw block
#_0BE80E: db $93, $5A, $F8, $ED, $03, $04, $1A, $00
#_0BE816: db $04, $0F, $09, $FD, $05, $1A, $00, $01
#_0BE81E: db $56, $BA, $E5, $06, $79, $07, $27, $09
#_0BE826: db $07, $E4, $08, $09, $7A, $27, $09, $0A
#_0BE82E: db $22 ; Repeat byte
#_0BE82F: db $61
#_0BE830: db $0C ; Raw block
#_0BE831: db $C5, $7A, $53, $30, $0E, $2B, $1D, $0A
#_0BE839: db $0B, $1D, $30, $0E, $5E
#_0BE83E: db $22 ; Repeat byte
#_0BE83F: db $22
#_0BE840: db $E0, $25 ; EXT Raw block
#_0BE842: db $0C, $1D, $58, $66, $5F, $14, $A5, $0D
#_0BE84A: db $0E, $A5, $0F, $2D, $66, $FB, $BB, $AA
#_0BE852: db $1D, $1D, $58, $70, $69, $10, $AC, $11
#_0BE85A: db $12, $AC, $13, $37, $1D, $1D, $8A, $14
#_0BE862: db $BB, $1D, $58, $1E, $7D, $57
#_0BE868: db $63 ; Increment fill
#_0BE869: db $15
#_0BE86A: db $04 ; Raw block
#_0BE86B: db $65, $37, $74, $AA, $D5
#_0BE870: db $62 ; Increment fill
#_0BE871: db $19
#_0BE872: db $01 ; Raw block
#_0BE873: db $6E, $FB
#_0BE875: db $65 ; Increment fill
#_0BE876: db $1C
#_0BE877: db $16 ; Raw block
#_0BE878: db $1D, $22, $7C, $08, $C2, $1D, $1D, $23
#_0BE880: db $7A, $1D, $7D, $1F, $20, $24, $25, $37
#_0BE888: db $1F, $80, $7C, $E5, $C3, $B2, $BA
#_0BE88F: db $22 ; Repeat byte
#_0BE890: db $1D
#_0BE891: db $01 ; Raw block
#_0BE892: db $7D, $1F
#_0BE894: db $63 ; Increment fill
#_0BE895: db $26
#_0BE896: db $06 ; Raw block
#_0BE897: db $1F, $2A, $83, $1D, $56, $BA, $BC
#_0BE89E: db $22 ; Repeat byte
#_0BE89F: db $1D
#_0BE8A0: db $65 ; Increment fill
#_0BE8A1: db $2B
#_0BE8A2: db $04 ; Raw block
#_0BE8A3: db $2C, $31, $1D, $A0, $8A
#_0BE8A8: db $23 ; Repeat byte
#_0BE8A9: db $1D
#_0BE8AA: db $00 ; Raw block
#_0BE8AB: db $66
#_0BE8AC: db $62 ; Increment fill
#_0BE8AD: db $8B
#_0BE8AE: db $05 ; Raw block
#_0BE8AF: db $1D, $1D, $8B, $8F, $1D, $1D
#_0BE8B5: db $64 ; Increment fill
#_0BE8B6: db $92
#_0BE8B7: db $00 ; Raw block
#_0BE8B8: db $95
#_0BE8B9: db $62 ; Increment fill
#_0BE8BA: db $97
#_0BE8BB: db $09 ; Raw block
#_0BE8BC: db $93, $9C, $9C, $9A, $9B, $97, $9C, $AB
#_0BE8C4: db $AB, $9D
#_0BE8C6: db $22 ; Repeat byte
#_0BE8C7: db $9E
#_0BE8C8: db $00 ; Raw block
#_0BE8C9: db $9F
#_0BE8CA: db $24 ; Repeat byte
#_0BE8CB: db $AB
#_0BE8CC: db $62 ; Increment fill
#_0BE8CD: db $9D
#_0BE8CE: db $00 ; Raw block
#_0BE8CF: db $AB
#_0BE8D0: db $2F ; Repeat byte
#_0BE8D1: db $B3
#_0BE8D2: db $2F ; Repeat byte
#_0BE8D3: db $A0
#_0BE8D4: db $FF ; End of Map 53

;===================================================================================================

OverworldMap32_Screen54_High:
#_0BE8D5: db $23 ; Repeat byte
#_0BE8D6: db $00
#_0BE8D7: db $01 ; Raw block
#_0BE8D8: db $06, $01
#_0BE8DA: db $23 ; Repeat byte
#_0BE8DB: db $06
#_0BE8DC: db $01 ; Raw block
#_0BE8DD: db $02, $06
#_0BE8DF: db $27 ; Repeat byte
#_0BE8E0: db $00
#_0BE8E1: db $07 ; Raw block
#_0BE8E2: db $06, $06, $01, $01, $06, $01, $02, $06
#_0BE8EA: db $27 ; Repeat byte
#_0BE8EB: db $00
#_0BE8EC: db $00 ; Raw block
#_0BE8ED: db $06
#_0BE8EE: db $24 ; Repeat byte
#_0BE8EF: db $01
#_0BE8F0: db $01 ; Raw block
#_0BE8F1: db $06, $06
#_0BE8F3: db $23 ; Repeat byte
#_0BE8F4: db $00
#_0BE8F5: db $83 ; Copy past
#_0BE8F6: dw $0400
#_0BE8F8: db $03 ; Raw block
#_0BE8F9: db $00, $01, $01, $06
#_0BE8FD: db $22 ; Repeat byte
#_0BE8FE: db $16
#_0BE8FF: db $07 ; Raw block
#_0BE900: db $03, $06, $06, $01, $06, $00, $16, $03
#_0BE908: db $86 ; Copy past
#_0BE909: dw $3300
#_0BE90B: db $04 ; Raw block
#_0BE90C: db $06, $09, $16, $16, $07
#_0BE911: db $22 ; Repeat byte
#_0BE912: db $00
#_0BE913: db $04 ; Raw block
#_0BE914: db $03, $0C, $06, $16, $06
#_0BE919: db $22 ; Repeat byte
#_0BE91A: db $16
#_0BE91B: db $00 ; Raw block
#_0BE91C: db $03
#_0BE91D: db $22 ; Repeat byte
#_0BE91E: db $16
#_0BE91F: db $02 ; Raw block
#_0BE920: db $07, $06, $06
#_0BE923: db $2C ; Repeat byte
#_0BE924: db $16
#_0BE925: db $03 ; Raw block
#_0BE926: db $07, $00, $06, $0D
#_0BE92A: db $26 ; Repeat byte
#_0BE92B: db $16
#_0BE92C: db $00 ; Raw block
#_0BE92D: db $0D
#_0BE92E: db $24 ; Repeat byte
#_0BE92F: db $16
#_0BE930: db $01 ; Raw block
#_0BE931: db $00, $06
#_0BE933: db $2D ; Repeat byte
#_0BE934: db $16
#_0BE935: db $02 ; Raw block
#_0BE936: db $00, $06, $0D
#_0BE939: db $2C ; Repeat byte
#_0BE93A: db $16
#_0BE93B: db $01 ; Raw block
#_0BE93C: db $06, $00
#_0BE93E: db $2E ; Repeat byte
#_0BE93F: db $16
#_0BE940: db $22 ; Repeat byte
#_0BE941: db $06
#_0BE942: db $01 ; Raw block
#_0BE943: db $16, $02
#_0BE945: db $24 ; Repeat byte
#_0BE946: db $16
#_0BE947: db $00 ; Raw block
#_0BE948: db $0D
#_0BE949: db $23 ; Repeat byte
#_0BE94A: db $16
#_0BE94B: db $01 ; Raw block
#_0BE94C: db $00, $06
#_0BE94E: db $23 ; Repeat byte
#_0BE94F: db $07
#_0BE950: db $22 ; Repeat byte
#_0BE951: db $06
#_0BE952: db $02 ; Raw block
#_0BE953: db $07, $06, $07
#_0BE956: db $24 ; Repeat byte
#_0BE957: db $06
#_0BE958: db $00 ; Raw block
#_0BE959: db $01
#_0BE95A: db $22 ; Repeat byte
#_0BE95B: db $06
#_0BE95C: db $23 ; Repeat byte
#_0BE95D: db $01
#_0BE95E: db $02 ; Raw block
#_0BE95F: db $07, $06, $07
#_0BE962: db $22 ; Repeat byte
#_0BE963: db $01
#_0BE964: db $01 ; Raw block
#_0BE965: db $07, $07
#_0BE967: db $2F ; Repeat byte
#_0BE968: db $01
#_0BE969: db $2F ; Repeat byte
#_0BE96A: db $06
#_0BE96B: db $FF ; End of Map 54

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen54_Low:
#_0BE96C: db $62 ; Increment fill
#_0BE96D: db $06
#_0BE96E: db $02 ; Raw block
#_0BE96F: db $06, $A1, $71
#_0BE972: db $43 ; Repeat word
#_0BE973: dw $A3A2
#_0BE975: db $02 ; Raw block
#_0BE976: db $DC, $A4, $08
#_0BE979: db $62 ; Increment fill
#_0BE97A: db $06
#_0BE97B: db $16 ; Raw block
#_0BE97C: db $02, $00, $01, $83, $A5, $12, $0C, $06
#_0BE984: db $A3, $06, $DC, $A6, $3F, $02, $00, $01
#_0BE98C: db $0B, $09, $0A, $8C, $A7, $03, $09
#_0BE993: db $22 ; Repeat byte
#_0BE994: db $0A
#_0BE995: db $0D ; Raw block
#_0BE996: db $AA, $AB, $92, $0B, $09, $0A, $AC, $0E
#_0BE99E: db $5E, $30, $1D, $E4, $13, $AD
#_0BE9A4: db $62 ; Increment fill
#_0BE9A5: db $32
#_0BE9A6: db $13 ; Raw block
#_0BE9A7: db $A8, $2F, $AC, $0E, $5E, $1D, $35, $E2
#_0BE9AF: db $B3, $1F, $2D, $1F, $B4, $36, $37, $B6
#_0BE9B7: db $6F, $38, $38, $6D
#_0BE9BB: db $22 ; Repeat byte
#_0BE9BC: db $1D
#_0BE9BD: db $04 ; Raw block
#_0BE9BE: db $5F, $28, $BC, $39, $CD
#_0BE9C3: db $62 ; Increment fill
#_0BE9C4: db $3A
#_0BE9C5: db $00 ; Raw block
#_0BE9C6: db $A8
#_0BE9C7: db $62 ; Increment fill
#_0BE9C8: db $3D
#_0BE9C9: db $05 ; Raw block
#_0BE9CA: db $6D, $66, $C1, $40, $41, $38
#_0BE9D0: db $63 ; Increment fill
#_0BE9D1: db $42
#_0BE9D2: db $01 ; Raw block
#_0BE9D3: db $45, $44
#_0BE9D5: db $63 ; Increment fill
#_0BE9D6: db $46
#_0BE9D7: db $04 ; Raw block
#_0BE9D8: db $6D, $1D, $CD, $6A, $4A
#_0BE9DD: db $65 ; Increment fill
#_0BE9DE: db $4A
#_0BE9DF: db $01 ; Raw block
#_0BE9E0: db $F8, $2F
#_0BE9E2: db $63 ; Increment fill
#_0BE9E3: db $50
#_0BE9E4: db $01 ; Raw block
#_0BE9E5: db $1D, $7C
#_0BE9E7: db $6D ; Increment fill
#_0BE9E8: db $54
#_0BE9E9: db $02 ; Raw block
#_0BE9EA: db $1D, $66, $6A
#_0BE9ED: db $6A ; Increment fill
#_0BE9EE: db $62
#_0BE9EF: db $03 ; Raw block
#_0BE9F0: db $60, $6D, $ED, $1D
#_0BE9F4: db $64 ; Increment fill
#_0BE9F5: db $6E
#_0BE9F6: db $00 ; Raw block
#_0BE9F7: db $6C
#_0BE9F8: db $63 ; Increment fill
#_0BE9F9: db $73
#_0BE9FA: db $09 ; Raw block
#_0BE9FB: db $75, $77, $60, $6D, $78, $F5, $95, $95
#_0BEA03: db $79, $9B
#_0BEA05: db $64 ; Increment fill
#_0BEA06: db $7A
#_0BEA07: db $06 ; Raw block
#_0BEA08: db $84, $7E, $7A, $7D, $7F, $1D, $92
#_0BEA0F: db $63 ; Increment fill
#_0BEA10: db $00
#_0BEA11: db $22 ; Repeat byte
#_0BEA12: db $9C
#_0BEA13: db $02 ; Raw block
#_0BEA14: db $04, $95, $05
#_0BEA17: db $24 ; Repeat byte
#_0BEA18: db $9C
#_0BEA19: db $00 ; Raw block
#_0BEA1A: db $AB
#_0BEA1B: db $62 ; Increment fill
#_0BEA1C: db $9D
#_0BEA1D: db $23 ; Repeat byte
#_0BEA1E: db $AB
#_0BEA1F: db $02 ; Raw block
#_0BEA20: db $06, $9E, $07
#_0BEA23: db $22 ; Repeat byte
#_0BEA24: db $AB
#_0BEA25: db $01 ; Raw block
#_0BEA26: db $08, $09
#_0BEA28: db $2F ; Repeat byte
#_0BEA29: db $B3
#_0BEA2A: db $2F ; Repeat byte
#_0BEA2B: db $A0
#_0BEA2C: db $FF ; End of Map 54

;===================================================================================================

OverworldMap32_Screen55_High:
#_0BEA2D: db $03 ; Raw block
#_0BEA2E: db $00, $00, $01, $00
#_0BEA32: db $22 ; Repeat byte
#_0BEA33: db $01
#_0BEA34: db $00 ; Raw block
#_0BEA35: db $03
#_0BEA36: db $23 ; Repeat byte
#_0BEA37: db $07
#_0BEA38: db $07 ; Raw block
#_0BEA39: db $06, $07, $01, $03, $00, $00, $01, $07
#_0BEA41: db $24 ; Repeat byte
#_0BEA42: db $01
#_0BEA43: db $22 ; Repeat byte
#_0BEA44: db $07
#_0BEA45: db $05 ; Raw block
#_0BEA46: db $01, $03, $01, $01, $00, $00
#_0BEA4C: db $24 ; Repeat byte
#_0BEA4D: db $01
#_0BEA4E: db $04 ; Raw block
#_0BEA4F: db $02, $01, $07, $07, $06
#_0BEA54: db $83 ; Copy past
#_0BEA55: dw $1C00
#_0BEA57: db $02 ; Raw block
#_0BEA58: db $06, $01, $07
#_0BEA5B: db $22 ; Repeat byte
#_0BEA5C: db $01
#_0BEA5D: db $02 ; Raw block
#_0BEA5E: db $07, $07, $05
#_0BEA61: db $22 ; Repeat byte
#_0BEA62: db $07
#_0BEA63: db $03 ; Raw block
#_0BEA64: db $06, $07, $07, $02
#_0BEA68: db $22 ; Repeat byte
#_0BEA69: db $00
#_0BEA6A: db $02 ; Raw block
#_0BEA6B: db $06, $00, $01
#_0BEA6E: db $29 ; Repeat byte
#_0BEA6F: db $07
#_0BEA70: db $06 ; Raw block
#_0BEA71: db $00, $06, $00, $04, $04, $02, $07
#_0BEA78: db $22 ; Repeat byte
#_0BEA79: db $05
#_0BEA7A: db $00 ; Raw block
#_0BEA7B: db $06
#_0BEA7C: db $24 ; Repeat byte
#_0BEA7D: db $07
#_0BEA7E: db $04 ; Raw block
#_0BEA7F: db $03, $04, $00, $04, $02
#_0BEA84: db $83 ; Copy past
#_0BEA85: dw $5500
#_0BEA87: db $22 ; Repeat byte
#_0BEA88: db $07
#_0BEA89: db $04 ; Raw block
#_0BEA8A: db $00, $04, $03, $03, $00
#_0BEA8F: db $25 ; Repeat byte
#_0BEA90: db $07
#_0BEA91: db $0D ; Raw block
#_0BEA92: db $05, $07, $03, $07, $06, $06, $04, $01
#_0BEA9A: db $02, $00, $07, $06, $03, $05
#_0BEAA0: db $84 ; Copy past
#_0BEAA1: dw $3600
#_0BEAA3: db $08 ; Raw block
#_0BEAA4: db $01, $01, $05, $06, $06, $03, $07, $04
#_0BEAAC: db $00
#_0BEAAD: db $24 ; Repeat byte
#_0BEAAE: db $07
#_0BEAAF: db $00 ; Raw block
#_0BEAB0: db $05
#_0BEAB1: db $22 ; Repeat byte
#_0BEAB2: db $07
#_0BEAB3: db $07 ; Raw block
#_0BEAB4: db $01, $04, $03, $01, $06, $07, $06, $02
#_0BEABC: db $83 ; Copy past
#_0BEABD: dw $0A00
#_0BEABF: db $00 ; Raw block
#_0BEAC0: db $05
#_0BEAC1: db $23 ; Repeat byte
#_0BEAC2: db $07
#_0BEAC3: db $02 ; Raw block
#_0BEAC4: db $04, $01, $01
#_0BEAC7: db $43 ; Repeat word
#_0BEAC8: dw $0706
#_0BEACA: db $01 ; Raw block
#_0BEACB: db $07, $03
#_0BEACD: db $26 ; Repeat byte
#_0BEACE: db $07
#_0BEACF: db $00 ; Raw block
#_0BEAD0: db $06
#_0BEAD1: db $43 ; Repeat word
#_0BEAD2: dw $0706
#_0BEAD4: db $00 ; Raw block
#_0BEAD5: db $01
#_0BEAD6: db $83 ; Copy past
#_0BEAD7: dw $8800
#_0BEAD9: db $25 ; Repeat byte
#_0BEADA: db $07
#_0BEADB: db $00 ; Raw block
#_0BEADC: db $06
#_0BEADD: db $83 ; Copy past
#_0BEADE: dw $0600
#_0BEAE0: db $84 ; Copy past
#_0BEAE1: dw $C200
#_0BEAE3: db $03 ; Raw block
#_0BEAE4: db $06, $07, $07, $05
#_0BEAE8: db $22 ; Repeat byte
#_0BEAE9: db $07
#_0BEAEA: db $02 ; Raw block
#_0BEAEB: db $01, $07, $04
#_0BEAEE: db $23 ; Repeat byte
#_0BEAEF: db $07
#_0BEAF0: db $86 ; Copy past
#_0BEAF1: dw $3400
#_0BEAF3: db $00 ; Raw block
#_0BEAF4: db $03
#_0BEAF5: db $25 ; Repeat byte
#_0BEAF6: db $07
#_0BEAF7: db $0C ; Raw block
#_0BEAF8: db $02, $06, $00, $00, $07, $03, $05, $07
#_0BEB00: db $03, $04, $01, $04, $00
#_0BEB05: db $FF ; End of Map 55

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen55_Low:
#_0BEB06: db $07 ; Raw block
#_0BEB07: db $06, $07, $32, $FF, $00, $06, $06, $63
#_0BEB0F: db $63 ; Increment fill
#_0BEB10: db $0A
#_0BEB11: db $0C ; Raw block
#_0BEB12: db $12, $0E, $0B, $20, $02, $00, $04, $0F
#_0BEB1A: db $09, $0A, $0A, $FD, $E2
#_0BEB1F: db $62 ; Increment fill
#_0BEB20: db $10
#_0BEB21: db $0F ; Raw block
#_0BEB22: db $03, $9C, $16, $F8, $0B, $09, $07, $E4
#_0BEB2A: db $13, $15, $15, $01, $ED, $13, $14, $16
#_0BEB32: db $83 ; Copy past
#_0BEB33: dw $1C00
#_0BEB35: db $08 ; Raw block
#_0BEB36: db $AC, $0E, $15, $1E, $1F, $22, $16, $17
#_0BEB3E: db $99
#_0BEB3F: db $62 ; Increment fill
#_0BEB40: db $18
#_0BEB41: db $02 ; Raw block
#_0BEB42: db $16, $1B, $1C
#_0BEB45: db $43 ; Repeat word
#_0BEB46: dw $1DFB
#_0BEB48: db $02 ; Raw block
#_0BEB49: db $66, $FB, $3C
#_0BEB4C: db $67 ; Increment fill
#_0BEB4D: db $1D
#_0BEB4E: db $0C ; Raw block
#_0BEB4F: db $23, $25, $1D, $66, $1D, $8A, $BF, $08
#_0BEB57: db $26, $96, $E1, $E2, $1D
#_0BEB5C: db $24 ; Repeat byte
#_0BEB5D: db $27
#_0BEB5E: db $08 ; Raw block
#_0BEB5F: db $E2, $BE, $1D, $AA, $FA, $FB, $1B, $9F
#_0BEB67: db $E2
#_0BEB68: db $62 ; Increment fill
#_0BEB69: db $29
#_0BEB6A: db $04 ; Raw block
#_0BEB6B: db $1D, $23, $FB, $E2, $1D
#_0BEB70: db $63 ; Increment fill
#_0BEB71: db $2C
#_0BEB72: db $1D ; Raw block
#_0BEB73: db $79, $31, $E1, $32, $97, $33, $70, $66
#_0BEB7B: db $1E, $74, $DE, $1D, $34, $83, $32, $C5
#_0BEB83: db $35, $36, $E1, $37, $38, $F0, $F1, $66
#_0BEB8B: db $2F, $30, $E2, $39, $2C, $FB
#_0BEB91: db $64 ; Increment fill
#_0BEB92: db $3A
#_0BEB93: db $E0, $21 ; EXT Raw block
#_0BEB95: db $AB, $3F, $28, $40, $FB, $23, $FB, $61
#_0BEB9D: db $83, $41, $66, $30, $3A, $42, $1E, $43
#_0BEBA5: db $E1, $44, $30, $45, $46, $1E, $74, $67
#_0BEBAD: db $8B, $47, $9C, $04, $48, $5E, $49, $4A
#_0BEBB5: db $43, $35
#_0BEBB7: db $62 ; Increment fill
#_0BEBB8: db $4B
#_0BEBB9: db $09 ; Raw block
#_0BEBBA: db $2F, $30, $4E, $98, $4F, $43, $50, $51
#_0BEBC2: db $43, $44
#_0BEBC4: db $65 ; Increment fill
#_0BEBC5: db $52
#_0BEBC6: db $0D ; Raw block
#_0BEBC7: db $66, $41, $44, $09, $58, $4E, $59, $5A
#_0BEBCF: db $4E, $4F, $7C, $5B, $5C, $E1
#_0BEBD5: db $62 ; Increment fill
#_0BEBD6: db $5D
#_0BEBD7: db $02 ; Raw block
#_0BEBD8: db $48, $60, $9A
#_0BEBDB: db $63 ; Increment fill
#_0BEBDC: db $61
#_0BEBDD: db $07 ; Raw block
#_0BEBDE: db $58, $65, $65, $66, $C5, $67, $68, $49
#_0BEBE6: db $62 ; Increment fill
#_0BEBE7: db $69
#_0BEBE8: db $0F ; Raw block
#_0BEBE9: db $1C, $6C, $6D, $4F, $8E, $1D, $1D, $34
#_0BEBF1: db $32, $C5, $6E, $4F, $2C, $77, $86, $1D
#_0BEBF9: db $FF ; End of Map 55

;===================================================================================================

OverworldMap32_Screen56_High:
#_0BEBFA: db $01 ; Raw block
#_0BEBFB: db $03, $07
#_0BEBFD: db $22 ; Repeat byte
#_0BEBFE: db $01
#_0BEBFF: db $02 ; Raw block
#_0BEC00: db $07, $01, $01
#_0BEC03: db $27 ; Repeat byte
#_0BEC04: db $07
#_0BEC05: db $22 ; Repeat byte
#_0BEC06: db $01
#_0BEC07: db $04 ; Raw block
#_0BEC08: db $02, $02, $07, $02, $01
#_0BEC0D: db $23 ; Repeat byte
#_0BEC0E: db $07
#_0BEC0F: db $00 ; Raw block
#_0BEC10: db $03
#_0BEC11: db $22 ; Repeat byte
#_0BEC12: db $07
#_0BEC13: db $02 ; Raw block
#_0BEC14: db $01, $01, $05
#_0BEC17: db $23 ; Repeat byte
#_0BEC18: db $07
#_0BEC19: db $00 ; Raw block
#_0BEC1A: db $06
#_0BEC1B: db $27 ; Repeat byte
#_0BEC1C: db $07
#_0BEC1D: db $01 ; Raw block
#_0BEC1E: db $02, $05
#_0BEC20: db $24 ; Repeat byte
#_0BEC21: db $07
#_0BEC22: db $00 ; Raw block
#_0BEC23: db $06
#_0BEC24: db $29 ; Repeat byte
#_0BEC25: db $07
#_0BEC26: db $00 ; Raw block
#_0BEC27: db $06
#_0BEC28: db $23 ; Repeat byte
#_0BEC29: db $07
#_0BEC2A: db $07 ; Raw block
#_0BEC2B: db $06, $07, $05, $07, $07, $05, $07, $03
#_0BEC33: db $23 ; Repeat byte
#_0BEC34: db $07
#_0BEC35: db $03 ; Raw block
#_0BEC36: db $00, $00, $07, $01
#_0BEC3A: db $22 ; Repeat byte
#_0BEC3B: db $07
#_0BEC3C: db $01 ; Raw block
#_0BEC3D: db $05, $05
#_0BEC3F: db $24 ; Repeat byte
#_0BEC40: db $07
#_0BEC41: db $83 ; Copy past
#_0BEC42: dw $5300
#_0BEC44: db $01 ; Raw block
#_0BEC45: db $00, $00
#_0BEC47: db $25 ; Repeat byte
#_0BEC48: db $07
#_0BEC49: db $03 ; Raw block
#_0BEC4A: db $02, $07, $07, $00
#_0BEC4E: db $25 ; Repeat byte
#_0BEC4F: db $01
#_0BEC50: db $25 ; Repeat byte
#_0BEC51: db $07
#_0BEC52: db $01 ; Raw block
#_0BEC53: db $02, $03
#_0BEC55: db $83 ; Copy past
#_0BEC56: dw $5200
#_0BEC58: db $06 ; Raw block
#_0BEC59: db $06, $07, $16, $15, $16, $16, $00
#_0BEC60: db $83 ; Copy past
#_0BEC61: dw $6E00
#_0BEC63: db $06 ; Raw block
#_0BEC64: db $03, $03, $01, $01, $04, $00, $00
#_0BEC6B: db $22 ; Repeat byte
#_0BEC6C: db $16
#_0BEC6D: db $00 ; Raw block
#_0BEC6E: db $15
#_0BEC6F: db $83 ; Copy past
#_0BEC70: dw $6500
#_0BEC72: db $07 ; Raw block
#_0BEC73: db $01, $03, $07, $01, $00, $06, $00, $01
#_0BEC7B: db $22 ; Repeat byte
#_0BEC7C: db $16
#_0BEC7D: db $00 ; Raw block
#_0BEC7E: db $0D
#_0BEC7F: db $84 ; Copy past
#_0BEC80: dw $8900
#_0BEC82: db $0C ; Raw block
#_0BEC83: db $01, $07, $04, $06, $01, $01, $04, $16
#_0BEC8B: db $12, $12, $16, $16, $03
#_0BEC90: db $84 ; Copy past
#_0BEC91: dw $AB00
#_0BEC93: db $08 ; Raw block
#_0BEC94: db $07, $03, $03, $01, $00, $01, $06, $07
#_0BEC9C: db $02
#_0BEC9D: db $28 ; Repeat byte
#_0BEC9E: db $07
#_0BEC9F: db $01 ; Raw block
#_0BECA0: db $03, $07
#_0BECA2: db $83 ; Copy past
#_0BECA3: dw $C500
#_0BECA5: db $27 ; Repeat byte
#_0BECA6: db $07
#_0BECA7: db $00 ; Raw block
#_0BECA8: db $00
#_0BECA9: db $22 ; Repeat byte
#_0BECAA: db $07
#_0BECAB: db $22 ; Repeat byte
#_0BECAC: db $02
#_0BECAD: db $02 ; Raw block
#_0BECAE: db $07, $07, $01
#_0BECB1: db $83 ; Copy past
#_0BECB2: dw $D100
#_0BECB4: db $02 ; Raw block
#_0BECB5: db $07, $07, $00
#_0BECB8: db $26 ; Repeat byte
#_0BECB9: db $07
#_0BECBA: db $00 ; Raw block
#_0BECBB: db $01
#_0BECBC: db $22 ; Repeat byte
#_0BECBD: db $07
#_0BECBE: db $03 ; Raw block
#_0BECBF: db $03, $03, $07, $05
#_0BECC3: db $FF ; End of Map 56

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen56_Low:
#_0BECC4: db $E0, $32 ; EXT Raw block
#_0BECC6: db $20, $6F, $ED, $F8, $F8, $70, $F8, $17
#_0BECCE: db $71, $72, $72, $71, $0E, $73, $74, $74
#_0BECD6: db $F8, $ED, $ED, $FB, $FB, $70, $FB, $03
#_0BECDE: db $75, $76, $76, $75, $9C, $77, $78, $78
#_0BECE6: db $F8, $ED, $99, $79, $79, $7A, $79, $16
#_0BECEE: db $7B, $7C, $7C, $7B, $1B, $7D, $7E, $7E
#_0BECF6: db $FB, $99, $7F
#_0BECF9: db $23 ; Repeat byte
#_0BECFA: db $22
#_0BECFB: db $05 ; Raw block
#_0BECFC: db $15, $80, $81, $81, $80, $31
#_0BED02: db $62 ; Increment fill
#_0BED03: db $82
#_0BED04: db $02 ; Raw block
#_0BED05: db $25, $85, $1D
#_0BED08: db $62 ; Increment fill
#_0BED09: db $86
#_0BED0A: db $17 ; Raw block
#_0BED0B: db $27, $1E, $43, $E1, $89, $36, $E2, $29
#_0BED13: db $8F, $8A, $27, $8B, $2A, $EE, $09, $8C
#_0BED1B: db $1E, $8D, $8E, $20, $E1, $E2, $29, $2A
#_0BED23: db $62 ; Increment fill
#_0BED24: db $8F
#_0BED25: db $05 ; Raw block
#_0BED26: db $C9, $FE, $92, $31, $7B, $7C
#_0BED2C: db $62 ; Increment fill
#_0BED2D: db $93
#_0BED2E: db $06 ; Raw block
#_0BED2F: db $84, $96, $2A, $8D, $97, $98, $1D
#_0BED36: db $62 ; Increment fill
#_0BED37: db $39
#_0BED38: db $62 ; Increment fill
#_0BED39: db $39
#_0BED3A: db $65 ; Increment fill
#_0BED3B: db $99
#_0BED3C: db $17 ; Raw block
#_0BED3D: db $97, $97, $9F, $FB, $91, $A0, $3B, $A1
#_0BED45: db $80, $B8, $81, $82, $1F, $A7, $A8, $1D
#_0BED4D: db $2E, $A0, $96, $62, $4B, $1E, $0B, $09
#_0BED55: db $62 ; Increment fill
#_0BED56: db $83
#_0BED57: db $0C ; Raw block
#_0BED58: db $BF, $1F, $1F, $AE, $AF, $2E, $A0, $B0
#_0BED60: db $68, $BE, $2C, $06, $10
#_0BED65: db $62 ; Increment fill
#_0BED66: db $86
#_0BED67: db $E0, $22 ; EXT Raw block
#_0BED69: db $B8, $1F, $B5, $B6, $1D, $08, $E6, $B7
#_0BED71: db $25, $66, $19, $1A, $6D, $89, $28, $29
#_0BED79: db $8A, $8B, $44, $BB, $9F, $E4, $24, $BC
#_0BED81: db $90, $44, $86, $27, $09, $2F, $B3, $BD
#_0BED89: db $8D, $97, $98
#_0BED8C: db $64 ; Increment fill
#_0BED8D: db $BE
#_0BED8E: db $07 ; Raw block
#_0BED8F: db $98, $C3, $8D, $C4, $0E, $2B, $C5, $8D
#_0BED97: db $67 ; Increment fill
#_0BED98: db $C6
#_0BED99: db $03 ; Raw block
#_0BED9A: db $A9, $49, $CE, $CF
#_0BED9E: db $22 ; Repeat byte
#_0BED9F: db $4C
#_0BEDA0: db $05 ; Raw block
#_0BEDA1: db $D0, $C7, $48, $D1, $8D, $D2
#_0BEDA7: db $62 ; Increment fill
#_0BEDA8: db $D2
#_0BEDA9: db $08 ; Raw block
#_0BEDAA: db $A9, $D5, $49, $D6, $D7, $D6, $D6, $D8
#_0BEDB2: db $48
#_0BEDB3: db $62 ; Increment fill
#_0BEDB4: db $D9
#_0BEDB5: db $03 ; Raw block
#_0BEDB6: db $8D, $96, $DC, $FB
#_0BEDBA: db $FF ; End of Map 56

;===================================================================================================

OverworldMap32_Screen17_High:
#_0BEDBB: db $22 ; Repeat byte
#_0BEDBC: db $16
#_0BEDBD: db $07 ; Raw block
#_0BEDBE: db $0F, $06, $16, $16, $05, $02, $01, $03
#_0BEDC6: db $22 ; Repeat byte
#_0BEDC7: db $16
#_0BEDC8: db $01 ; Raw block
#_0BEDC9: db $01, $01
#_0BEDCB: db $22 ; Repeat byte
#_0BEDCC: db $16
#_0BEDCD: db $0B ; Raw block
#_0BEDCE: db $01, $05, $16, $09, $07, $05, $16, $16
#_0BEDD6: db $0C, $16, $16, $03
#_0BEDDA: db $23 ; Repeat byte
#_0BEDDB: db $16
#_0BEDDC: db $08 ; Raw block
#_0BEDDD: db $06, $05, $09, $05, $07, $16, $16, $0C
#_0BEDE5: db $05
#_0BEDE6: db $22 ; Repeat byte
#_0BEDE7: db $16
#_0BEDE8: db $00 ; Raw block
#_0BEDE9: db $03
#_0BEDEA: db $25 ; Repeat byte
#_0BEDEB: db $07
#_0BEDEC: db $09 ; Raw block
#_0BEDED: db $09, $07, $16, $16, $0A, $16, $06, $0C
#_0BEDF5: db $01, $16
#_0BEDF7: db $43 ; Repeat word
#_0BEDF8: dw $070A
#_0BEDFA: db $05 ; Raw block
#_0BEDFB: db $07, $16, $05, $03, $00, $16
#_0BEE01: db $23 ; Repeat byte
#_0BEE02: db $05
#_0BEE03: db $03 ; Raw block
#_0BEE04: db $16, $16, $07, $03
#_0BEE08: db $22 ; Repeat byte
#_0BEE09: db $02
#_0BEE0A: db $E0, $20 ; EXT Raw block
#_0BEE0C: db $0B, $00, $00, $16, $05, $06, $05, $16
#_0BEE14: db $16, $05, $16, $07, $07, $16, $07, $03
#_0BEE1C: db $0C, $02, $00, $16, $16, $05, $05, $0A
#_0BEE24: db $0A, $16, $03, $16, $01, $00, $04, $02
#_0BEE2C: db $16
#_0BEE2D: db $83 ; Copy past
#_0BEE2E: dw $6600
#_0BEE30: db $03 ; Raw block
#_0BEE31: db $0C, $0A, $0A, $06
#_0BEE35: db $22 ; Repeat byte
#_0BEE36: db $16
#_0BEE37: db $06 ; Raw block
#_0BEE38: db $03, $04, $16, $0F, $01, $02, $00
#_0BEE3F: db $26 ; Repeat byte
#_0BEE40: db $16
#_0BEE41: db $00 ; Raw block
#_0BEE42: db $10
#_0BEE43: db $24 ; Repeat byte
#_0BEE44: db $16
#_0BEE45: db $03 ; Raw block
#_0BEE46: db $02, $00, $03, $03
#_0BEE4A: db $24 ; Repeat byte
#_0BEE4B: db $16
#_0BEE4C: db $0A ; Raw block
#_0BEE4D: db $07, $06, $16, $16, $04, $10, $06, $00
#_0BEE55: db $03, $03, $02
#_0BEE58: db $28 ; Repeat byte
#_0BEE59: db $16
#_0BEE5A: db $83 ; Copy past
#_0BEE5B: dw $7100
#_0BEE5D: db $22 ; Repeat byte
#_0BEE5E: db $0D
#_0BEE5F: db $03 ; Raw block
#_0BEE60: db $16, $16, $02, $02
#_0BEE64: db $43 ; Repeat word
#_0BEE65: dw $1601
#_0BEE67: db $03 ; Raw block
#_0BEE68: db $16, $01, $03, $02
#_0BEE6C: db $22 ; Repeat byte
#_0BEE6D: db $0A
#_0BEE6E: db $22 ; Repeat byte
#_0BEE6F: db $16
#_0BEE70: db $04 ; Raw block
#_0BEE71: db $00, $01, $01, $16, $07
#_0BEE76: db $83 ; Copy past
#_0BEE77: dw $C000
#_0BEE79: db $01 ; Raw block
#_0BEE7A: db $16, $0F
#_0BEE7C: db $22 ; Repeat byte
#_0BEE7D: db $05
#_0BEE7E: db $00 ; Raw block
#_0BEE7F: db $0F
#_0BEE80: db $84 ; Copy past
#_0BEE81: dw $0D00
#_0BEE83: db $00 ; Raw block
#_0BEE84: db $0D
#_0BEE85: db $83 ; Copy past
#_0BEE86: dw $4E00
#_0BEE88: db $02 ; Raw block
#_0BEE89: db $16, $16, $0A
#_0BEE8C: db $23 ; Repeat byte
#_0BEE8D: db $16
#_0BEE8E: db $06 ; Raw block
#_0BEE8F: db $01, $16, $16, $10, $05, $16, $15
#_0BEE96: db $29 ; Repeat byte
#_0BEE97: db $16
#_0BEE98: db $03 ; Raw block
#_0BEE99: db $07, $02, $16, $16
#_0BEE9D: db $FF ; End of Map 17

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen17_Low:
#_0BEE9E: db $0A ; Raw block
#_0BEE9F: db $8C, $8C, $8D, $3F, $AA, $8E, $8F, $FF
#_0BEEA7: db $82, $00, $65
#_0BEEAA: db $62 ; Increment fill
#_0BEEAB: db $90
#_0BEEAC: db $E0, $21 ; EXT Raw block
#_0BEEAE: db $77, $71, $93, $93, $94, $15, $9E, $95
#_0BEEB6: db $9D, $6E, $DE, $96, $97, $91, $98, $92
#_0BEEBE: db $50, $99, $9A, $9A, $9B, $A0, $9F, $9D
#_0BEEC6: db $E1, $6E, $9C, $9D, $91, $E8, $98, $9E
#_0BEECE: db $9F, $57
#_0BEED0: db $25 ; Repeat byte
#_0BEED1: db $84
#_0BEED2: db $09 ; Raw block
#_0BEED3: db $FC, $68, $A0, $A1, $0C, $91, $05, $8E
#_0BEEDB: db $E6, $9F
#_0BEEDD: db $43 ; Repeat word
#_0BEEDE: dw $D701
#_0BEEE0: db $E0, $39 ; EXT Raw block
#_0BEEE2: db $D7, $A2, $6D, $49, $1D, $A3, $FB, $F5
#_0BEEEA: db $F5, $FB, $A4, $A5, $C8, $44, $4B, $4C
#_0BEEF2: db $CC, $46, $AA, $1D, $A6, $E7, $05, $C1
#_0BEEFA: db $A7, $A8, $E9, $A5, $98, $98, $A9, $8A
#_0BEF02: db $91, $E7, $D3, $1D, $AA, $AB, $F5, $FB
#_0BEF0A: db $0D, $E8, $AC, $A0, $AD, $D5, $B2, $7D
#_0BEF12: db $08, $AE, $DD, $9F, $AF, $B0, $96, $0B
#_0BEF1A: db $0B, $02
#_0BEF1C: db $62 ; Increment fill
#_0BEF1D: db $B1
#_0BEF1E: db $06 ; Raw block
#_0BEF1F: db $99, $81, $B4, $43, $ED, $91, $1D
#_0BEF26: db $66 ; Increment fill
#_0BEF27: db $B5
#_0BEF28: db $00 ; Raw block
#_0BEF29: db $8D
#_0BEF2A: db $64 ; Increment fill
#_0BEF2B: db $BC
#_0BEF2C: db $03 ; Raw block
#_0BEF2D: db $7A, $1D, $5F, $56
#_0BEF31: db $64 ; Increment fill
#_0BEF32: db $C1
#_0BEF33: db $0A ; Raw block
#_0BEF34: db $BC, $12, $BC, $C6, $88, $7D, $3E, $1D
#_0BEF3C: db $5F, $5F, $DE
#_0BEF3F: db $66 ; Increment fill
#_0BEF40: db $C7
#_0BEF41: db $17 ; Raw block
#_0BEF42: db $BC, $C6, $E3, $1D, $B5, $60, $F2, $F2
#_0BEF4A: db $C5, $CE, $CF, $59, $59, $73, $A5, $E4
#_0BEF52: db $BC, $C6, $E3, $D5, $65, $8C, $1D, $1D
#_0BEF5A: db $62 ; Increment fill
#_0BEF5B: db $D0
#_0BEF5C: db $1C ; Raw block
#_0BEF5D: db $AA, $41, $2E, $A5, $8F, $BC, $C6, $E3
#_0BEF65: db $86, $D3, $27, $F5, $C1, $F5, $28, $D4
#_0BEF6D: db $41, $48, $D5, $B2, $48, $BC, $D6, $CE
#_0BEF75: db $8D, $D7, $D8, $63, $D9
#_0BEF7A: db $62 ; Increment fill
#_0BEF7B: db $D9
#_0BEF7C: db $06 ; Raw block
#_0BEF7D: db $48, $D5, $B2, $8D, $9D, $DC, $92
#_0BEF84: db $62 ; Increment fill
#_0BEF85: db $DD
#_0BEF86: db $24 ; Repeat byte
#_0BEF87: db $E0
#_0BEF88: db $05 ; Raw block
#_0BEF89: db $E1, $A9, $6B, $97, $E2, $E3
#_0BEF8F: db $FF ; End of Map 17

;===================================================================================================

OverworldMap32_Screen58_High:
#_0BEF90: db $22 ; Repeat byte
#_0BEF91: db $00
#_0BEF92: db $02 ; Raw block
#_0BEF93: db $01, $07, $04
#_0BEF96: db $22 ; Repeat byte
#_0BEF97: db $00
#_0BEF98: db $02 ; Raw block
#_0BEF99: db $01, $04, $04
#_0BEF9C: db $26 ; Repeat byte
#_0BEF9D: db $00
#_0BEF9E: db $07 ; Raw block
#_0BEF9F: db $06, $07, $06, $06, $01, $06, $06, $04
#_0BEFA7: db $84 ; Copy past
#_0BEFA8: dw $1500
#_0BEFAA: db $04 ; Raw block
#_0BEFAB: db $00, $00, $01, $01, $07
#_0BEFB0: db $23 ; Repeat byte
#_0BEFB1: db $03
#_0BEFB2: db $26 ; Repeat byte
#_0BEFB3: db $07
#_0BEFB4: db $04 ; Raw block
#_0BEFB5: db $00, $00, $01, $06, $07
#_0BEFBA: db $22 ; Repeat byte
#_0BEFBB: db $06
#_0BEFBC: db $26 ; Repeat byte
#_0BEFBD: db $07
#_0BEFBE: db $10 ; Raw block
#_0BEFBF: db $08, $07, $07, $16, $16, $01, $16, $16
#_0BEFC7: db $04, $04, $07, $06, $16, $16, $07, $07
#_0BEFCF: db $08
#_0BEFD0: db $22 ; Repeat byte
#_0BEFD1: db $07
#_0BEFD2: db $07 ; Raw block
#_0BEFD3: db $01, $01, $02, $01, $04, $04, $07, $00
#_0BEFDB: db $84 ; Copy past
#_0BEFDC: dw $4B00
#_0BEFDE: db $03 ; Raw block
#_0BEFDF: db $00, $00, $16, $00
#_0BEFE3: db $22 ; Repeat byte
#_0BEFE4: db $01
#_0BEFE5: db $0B ; Raw block
#_0BEFE6: db $04, $00, $07, $06, $03, $04, $07, $07
#_0BEFEE: db $16, $00, $01, $06
#_0BEFF2: db $26 ; Repeat byte
#_0BEFF3: db $07
#_0BEFF4: db $00 ; Raw block
#_0BEFF5: db $05
#_0BEFF6: db $83 ; Copy past
#_0BEFF7: dw $7100
#_0BEFF9: db $03 ; Raw block
#_0BEFFA: db $16, $00, $04, $01
#_0BEFFE: db $24 ; Repeat byte
#_0BEFFF: db $07
#_0BF000: db $0A ; Raw block
#_0BF001: db $08, $07, $05, $05, $02, $08, $08, $02
#_0BF009: db $00, $00, $01
#_0BF00C: db $24 ; Repeat byte
#_0BF00D: db $08
#_0BF00E: db $00 ; Raw block
#_0BF00F: db $16
#_0BF010: db $26 ; Repeat byte
#_0BF011: db $08
#_0BF012: db $04 ; Raw block
#_0BF013: db $00, $01, $06, $08, $01
#_0BF018: db $22 ; Repeat byte
#_0BF019: db $16
#_0BF01A: db $01 ; Raw block
#_0BF01B: db $08, $08
#_0BF01D: db $22 ; Repeat byte
#_0BF01E: db $16
#_0BF01F: db $22 ; Repeat byte
#_0BF020: db $08
#_0BF021: db $02 ; Raw block
#_0BF022: db $00, $04, $01
#_0BF025: db $23 ; Repeat byte
#_0BF026: db $08
#_0BF027: db $02 ; Raw block
#_0BF028: db $16, $08, $08
#_0BF02B: db $23 ; Repeat byte
#_0BF02C: db $16
#_0BF02D: db $01 ; Raw block
#_0BF02E: db $08, $08
#_0BF030: db $83 ; Copy past
#_0BF031: dw $9000
#_0BF033: db $43 ; Repeat word
#_0BF034: dw $1608
#_0BF036: db $01 ; Raw block
#_0BF037: db $16, $08
#_0BF039: db $23 ; Repeat byte
#_0BF03A: db $16
#_0BF03B: db $00 ; Raw block
#_0BF03C: db $08
#_0BF03D: db $83 ; Copy past
#_0BF03E: dw $6F00
#_0BF040: db $83 ; Copy past
#_0BF041: dw $A800
#_0BF043: db $00 ; Raw block
#_0BF044: db $17
#_0BF045: db $24 ; Repeat byte
#_0BF046: db $08
#_0BF047: db $02 ; Raw block
#_0BF048: db $16, $17, $17
#_0BF04B: db $83 ; Copy past
#_0BF04C: dw $B000
#_0BF04E: db $00 ; Raw block
#_0BF04F: db $07
#_0BF050: db $27 ; Repeat byte
#_0BF051: db $08
#_0BF052: db $05 ; Raw block
#_0BF053: db $16, $08, $17, $00, $00, $01
#_0BF059: db $22 ; Repeat byte
#_0BF05A: db $08
#_0BF05B: db $00 ; Raw block
#_0BF05C: db $07
#_0BF05D: db $25 ; Repeat byte
#_0BF05E: db $08
#_0BF05F: db $02 ; Raw block
#_0BF060: db $16, $08, $17
#_0BF063: db $FF ; End of Map 58

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen58_Low:
#_0BF064: db $05 ; Raw block
#_0BF065: db $0B, $09, $0A, $74, $DD, $1E
#_0BF06B: db $83 ; Copy past
#_0BF06C: dw $0000
#_0BF06E: db $00 ; Raw block
#_0BF06F: db $2C
#_0BF070: db $83 ; Copy past
#_0BF071: dw $0500
#_0BF073: db $00 ; Raw block
#_0BF074: db $0B
#_0BF075: db $62 ; Increment fill
#_0BF076: db $06
#_0BF077: db $07 ; Raw block
#_0BF078: db $38, $41, $2F, $AC, $0E, $5E, $30, $37
#_0BF080: db $83 ; Copy past
#_0BF081: dw $1500
#_0BF083: db $05 ; Raw block
#_0BF084: db $AC, $02, $00, $04, $3B, $41
#_0BF08A: db $23 ; Repeat byte
#_0BF08B: db $5F
#_0BF08C: db $62 ; Increment fill
#_0BF08D: db $DF
#_0BF08E: db $62 ; Increment fill
#_0BF08F: db $E1
#_0BF090: db $05 ; Raw block
#_0BF091: db $E0, $0B, $09, $07, $66, $E5
#_0BF097: db $22 ; Repeat byte
#_0BF098: db $9C
#_0BF099: db $63 ; Increment fill
#_0BF09A: db $E6
#_0BF09B: db $62 ; Increment fill
#_0BF09C: db $E9
#_0BF09D: db $10 ; Raw block
#_0BF09E: db $23, $EC, $ED, $E4, $E5, $A0, $E6, $E6
#_0BF0A6: db $B5, $B6, $E7, $3E, $E7, $E8, $EF, $EB
#_0BF0AE: db $25
#_0BF0AF: db $62 ; Increment fill
#_0BF0B0: db $F1
#_0BF0B1: db $E0, $20 ; EXT Raw block
#_0BF0B3: db $E5, $D9, $07, $EF, $B7, $B8, $E7, $1D
#_0BF0BB: db $E9, $EA, $EF, $EB, $04, $0B, $09, $EB
#_0BF0C3: db $98, $E4, $E5, $E5, $B9, $1D, $E7, $66
#_0BF0CB: db $DB, $25, $EF, $EB, $EC, $06, $10, $2B
#_0BF0D3: db $F9
#_0BF0D4: db $24 ; Repeat byte
#_0BF0D5: db $FA
#_0BF0D6: db $0B ; Raw block
#_0BF0D7: db $E7, $55, $DB, $3A, $FB, $EB, $ED, $02
#_0BF0DF: db $6D, $26, $FD, $FE
#_0BF0E3: db $22 ; Repeat byte
#_0BF0E4: db $FF
#_0BF0E5: db $0A ; Raw block
#_0BF0E6: db $00, $E7, $59, $5A, $61, $01, $02, $61
#_0BF0EE: db $0B, $09, $2F
#_0BF0F1: db $64 ; Increment fill
#_0BF0F2: db $03
#_0BF0F3: db $00 ; Raw block
#_0BF0F4: db $EE
#_0BF0F5: db $65 ; Increment fill
#_0BF0F6: db $09
#_0BF0F7: db $05 ; Raw block
#_0BF0F8: db $0C, $06, $10, $2B, $03, $37
#_0BF0FE: db $62 ; Increment fill
#_0BF0FF: db $EF
#_0BF100: db $01 ; Raw block
#_0BF101: db $12, $13
#_0BF103: db $62 ; Increment fill
#_0BF104: db $F2
#_0BF105: db $62 ; Increment fill
#_0BF106: db $17
#_0BF107: db $09 ; Raw block
#_0BF108: db $02, $6D, $26, $03, $1A, $5D, $1C, $F5
#_0BF110: db $1E, $13
#_0BF112: db $63 ; Increment fill
#_0BF113: db $F6
#_0BF114: db $01 ; Raw block
#_0BF115: db $23, $24
#_0BF117: db $83 ; Copy past
#_0BF118: dw $9000
#_0BF11A: db $05 ; Raw block
#_0BF11B: db $25, $E6, $27, $FA, $EE, $13
#_0BF121: db $62 ; Increment fill
#_0BF122: db $FB
#_0BF123: db $02 ; Raw block
#_0BF124: db $F9, $04, $FE
#_0BF127: db $83 ; Copy past
#_0BF128: dw $A000
#_0BF12A: db $05 ; Raw block
#_0BF12B: db $2C, $EC, $FF, $00, $2E, $13
#_0BF131: db $62 ; Increment fill
#_0BF132: db $2F
#_0BF133: db $02 ; Raw block
#_0BF134: db $F9, $01, $02
#_0BF137: db $83 ; Copy past
#_0BF138: dw $B000
#_0BF13A: db $00 ; Raw block
#_0BF13B: db $E0
#_0BF13C: db $64 ; Increment fill
#_0BF13D: db $34
#_0BF13E: db $83 ; Copy past
#_0BF13F: dw $DA00
#_0BF141: db $01 ; Raw block
#_0BF142: db $25, $03
#_0BF144: db $83 ; Copy past
#_0BF145: dw $9000
#_0BF147: db $04 ; Raw block
#_0BF148: db $23, $3A, $DD, $3B, $3C
#_0BF14D: db $84 ; Copy past
#_0BF14E: dw $D900
#_0BF150: db $01 ; Raw block
#_0BF151: db $3D, $04
#_0BF153: db $FF ; End of Map 58

;===================================================================================================

OverworldMap32_Screen59_High:
#_0BF154: db $26 ; Repeat byte
#_0BF155: db $00
#_0BF156: db $04 ; Raw block
#_0BF157: db $01, $08, $08, $01, $01
#_0BF15C: db $23 ; Repeat byte
#_0BF15D: db $08
#_0BF15E: db $0A ; Raw block
#_0BF15F: db $01, $06, $06, $01, $06, $06, $01, $06
#_0BF167: db $08, $08, $01
#_0BF16A: db $24 ; Repeat byte
#_0BF16B: db $08
#_0BF16C: db $26 ; Repeat byte
#_0BF16D: db $07
#_0BF16E: db $08 ; Raw block
#_0BF16F: db $08, $07, $08, $08, $04, $01, $00, $08
#_0BF177: db $08
#_0BF178: db $26 ; Repeat byte
#_0BF179: db $07
#_0BF17A: db $43 ; Repeat word
#_0BF17B: dw $0708
#_0BF17D: db $04 ; Raw block
#_0BF17E: db $06, $06, $00, $08, $01
#_0BF183: db $27 ; Repeat byte
#_0BF184: db $17
#_0BF185: db $22 ; Repeat byte
#_0BF186: db $08
#_0BF187: db $04 ; Raw block
#_0BF188: db $07, $00, $02, $08, $08
#_0BF18D: db $27 ; Repeat byte
#_0BF18E: db $17
#_0BF18F: db $22 ; Repeat byte
#_0BF190: db $08
#_0BF191: db $E0, $24 ; EXT Raw block
#_0BF193: db $00, $00, $03, $08, $06, $17, $17, $0B
#_0BF19B: db $16, $08, $17, $17, $0B, $04, $04, $07
#_0BF1A3: db $07, $16, $03, $05, $05, $07, $07, $0D
#_0BF1AB: db $16, $07, $0D, $04, $02, $04, $04, $07
#_0BF1B3: db $16, $01, $08, $08, $05
#_0BF1B8: db $25 ; Repeat byte
#_0BF1B9: db $02
#_0BF1BA: db $09 ; Raw block
#_0BF1BB: db $04, $02, $02, $17, $07, $07, $06, $02
#_0BF1C3: db $08, $07
#_0BF1C5: db $2D ; Repeat byte
#_0BF1C6: db $08
#_0BF1C7: db $02 ; Raw block
#_0BF1C8: db $02, $08, $17
#_0BF1CB: db $2D ; Repeat byte
#_0BF1CC: db $08
#_0BF1CD: db $00 ; Raw block
#_0BF1CE: db $03
#_0BF1CF: db $43 ; Repeat word
#_0BF1D0: dw $0708
#_0BF1D2: db $03 ; Raw block
#_0BF1D3: db $07, $17, $17, $07
#_0BF1D7: db $26 ; Repeat byte
#_0BF1D8: db $08
#_0BF1D9: db $08 ; Raw block
#_0BF1DA: db $03, $17, $16, $08, $07, $06, $16, $07
#_0BF1E2: db $07
#_0BF1E3: db $24 ; Repeat byte
#_0BF1E4: db $08
#_0BF1E5: db $06 ; Raw block
#_0BF1E6: db $17, $04, $08, $17, $17, $08, $07
#_0BF1ED: db $22 ; Repeat byte
#_0BF1EE: db $08
#_0BF1EF: db $01 ; Raw block
#_0BF1F0: db $07, $16
#_0BF1F2: db $26 ; Repeat byte
#_0BF1F3: db $08
#_0BF1F4: db $83 ; Copy past
#_0BF1F5: dw $D000
#_0BF1F7: db $03 ; Raw block
#_0BF1F8: db $00, $16, $07, $07
#_0BF1FC: db $43 ; Repeat word
#_0BF1FD: dw $0008
#_0BF1FF: db $03 ; Raw block
#_0BF200: db $07, $08, $07, $05
#_0BF204: db $22 ; Repeat byte
#_0BF205: db $08
#_0BF206: db $85 ; Copy past
#_0BF207: dw $B300
#_0BF209: db $01 ; Raw block
#_0BF20A: db $00, $16
#_0BF20C: db $22 ; Repeat byte
#_0BF20D: db $08
#_0BF20E: db $01 ; Raw block
#_0BF20F: db $07, $05
#_0BF211: db $FF ; End of Map 59

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen59_Low:
#_0BF212: db $62 ; Increment fill
#_0BF213: db $09
#_0BF214: db $62 ; Increment fill
#_0BF215: db $09
#_0BF216: db $05 ; Raw block
#_0BF217: db $09, $2F, $3F, $40, $4D, $4E
#_0BF21D: db $63 ; Increment fill
#_0BF21E: db $41
#_0BF21F: db $0A ; Raw block
#_0BF220: db $0E, $5E, $AC, $0E, $5E, $AC, $0E, $2B
#_0BF228: db $45, $46, $57
#_0BF22B: db $64 ; Increment fill
#_0BF22C: db $47
#_0BF22D: db $26 ; Repeat byte
#_0BF22E: db $E1
#_0BF22F: db $08 ; Raw block
#_0BF230: db $37, $E3, $35, $4C, $1E, $74, $1D, $4D
#_0BF238: db $4E
#_0BF239: db $26 ; Repeat byte
#_0BF23A: db $E9
#_0BF23B: db $08 ; Raw block
#_0BF23C: db $3C, $E7, $2D, $E7, $2F, $30, $1D, $53
#_0BF244: db $67
#_0BF245: db $64 ; Increment fill
#_0BF246: db $05
#_0BF247: db $0A ; Raw block
#_0BF248: db $05, $06, $0A, $09, $57, $58, $DE, $1D
#_0BF250: db $A1, $59, $5A
#_0BF253: db $64 ; Increment fill
#_0BF254: db $0B
#_0BF255: db $02 ; Raw block
#_0BF256: db $0B, $0C, $10
#_0BF259: db $62 ; Increment fill
#_0BF25A: db $60
#_0BF25B: db $E0, $24 ; EXT Raw block
#_0BF25D: db $1D, $1D, $9A, $63, $A0, $11, $12, $1C
#_0BF265: db $E6, $65, $11, $12, $1C, $B5, $BA, $E7
#_0BF26D: db $DE, $FF, $32, $C5, $E1, $09, $09, $58
#_0BF275: db $FA, $09, $58, $B5, $60, $C5, $BC, $E7
#_0BF27D: db $FA, $1E, $69, $6A, $E1
#_0BF282: db $25 ; Repeat byte
#_0BF283: db $61
#_0BF284: db $09 ; Raw block
#_0BF285: db $C5, $02, $04, $00, $E7, $DE, $3E, $3E
#_0BF28D: db $6B, $43
#_0BF28F: db $25 ; Repeat byte
#_0BF290: db $0C
#_0BF291: db $00 ; Raw block
#_0BF292: db $6C
#_0BF293: db $22 ; Repeat byte
#_0BF294: db $0A
#_0BF295: db $06 ; Raw block
#_0BF296: db $6D, $0A, $0A, $6E, $3E, $6F, $13
#_0BF29D: db $63 ; Increment fill
#_0BF29E: db $71
#_0BF29F: db $63 ; Increment fill
#_0BF2A0: db $74
#_0BF2A1: db $22 ; Repeat byte
#_0BF2A2: db $78
#_0BF2A3: db $62 ; Increment fill
#_0BF2A4: db $79
#_0BF2A5: db $09 ; Raw block
#_0BF2A6: db $32, $7C, $E9, $7D, $EB, $DE, $14, $15
#_0BF2AE: db $EB, $25
#_0BF2B0: db $62 ; Increment fill
#_0BF2B1: db $05
#_0BF2B2: db $62 ; Increment fill
#_0BF2B3: db $80
#_0BF2B4: db $09 ; Raw block
#_0BF2B5: db $32, $16, $FF, $85, $EB, $66, $E6, $EF
#_0BF2BD: db $EB, $04
#_0BF2BF: db $62 ; Increment fill
#_0BF2C0: db $0F
#_0BF2C1: db $0C ; Raw block
#_0BF2C2: db $86, $17, $AA, $88, $18, $19, $8B, $EB
#_0BF2CA: db $53, $7E, $7F, $EB, $E6
#_0BF2CF: db $62 ; Increment fill
#_0BF2D0: db $1B
#_0BF2D1: db $63 ; Increment fill
#_0BF2D2: db $8C
#_0BF2D3: db $0F ; Raw block
#_0BF2D4: db $1A, $00, $92, $EB, $1D, $FF, $EF, $EB
#_0BF2DC: db $1A, $1F, $27, $1F, $EF, $93, $5B, $C5
#_0BF2E4: db $62 ; Increment fill
#_0BF2E5: db $94
#_0BF2E6: db $84 ; Copy past
#_0BF2E7: dw $B300
#_0BF2E9: db $07 ; Raw block
#_0BF2EA: db $04, $1F, $FF, $97, $98, $93, $5B, $C5
#_0BF2F2: db $FF ; End of Map 59

;===================================================================================================

OverworldMap32_Screen5A_High:
#_0BF2F3: db $00 ; Raw block
#_0BF2F4: db $04
#_0BF2F5: db $22 ; Repeat byte
#_0BF2F6: db $08
#_0BF2F7: db $01 ; Raw block
#_0BF2F8: db $00, $00
#_0BF2FA: db $22 ; Repeat byte
#_0BF2FB: db $08
#_0BF2FC: db $00 ; Raw block
#_0BF2FD: db $00
#_0BF2FE: db $43 ; Repeat word
#_0BF2FF: dw $0801
#_0BF301: db $02 ; Raw block
#_0BF302: db $07, $07, $04
#_0BF305: db $22 ; Repeat byte
#_0BF306: db $08
#_0BF307: db $03 ; Raw block
#_0BF308: db $00, $08, $00, $01
#_0BF30C: db $83 ; Copy past
#_0BF30D: dw $0400
#_0BF30F: db $03 ; Raw block
#_0BF310: db $01, $08, $07, $05
#_0BF314: db $23 ; Repeat byte
#_0BF315: db $08
#_0BF316: db $03 ; Raw block
#_0BF317: db $00, $08, $00, $07
#_0BF31B: db $22 ; Repeat byte
#_0BF31C: db $01
#_0BF31D: db $11 ; Raw block
#_0BF31E: db $00, $00, $08, $07, $08, $08, $04, $04
#_0BF326: db $00, $00, $08, $01, $00, $01, $08, $00
#_0BF32E: db $01, $01
#_0BF330: db $84 ; Copy past
#_0BF331: dw $2D00
#_0BF333: db $22 ; Repeat byte
#_0BF334: db $01
#_0BF335: db $43 ; Repeat word
#_0BF336: dw $0800
#_0BF338: db $84 ; Copy past
#_0BF339: dw $3100
#_0BF33B: db $00 ; Raw block
#_0BF33C: db $07
#_0BF33D: db $62 ; Increment fill
#_0BF33E: db $05
#_0BF33F: db $01 ; Raw block
#_0BF340: db $01, $08
#_0BF342: db $83 ; Copy past
#_0BF343: dw $2900
#_0BF345: db $01 ; Raw block
#_0BF346: db $01, $00
#_0BF348: db $83 ; Copy past
#_0BF349: dw $3200
#_0BF34B: db $22 ; Repeat byte
#_0BF34C: db $07
#_0BF34D: db $22 ; Repeat byte
#_0BF34E: db $08
#_0BF34F: db $83 ; Copy past
#_0BF350: dw $5200
#_0BF352: db $22 ; Repeat byte
#_0BF353: db $00
#_0BF354: db $84 ; Copy past
#_0BF355: dw $3B00
#_0BF357: db $22 ; Repeat byte
#_0BF358: db $07
#_0BF359: db $07 ; Raw block
#_0BF35A: db $03, $03, $04, $04, $03, $17, $17, $0D
#_0BF362: db $22 ; Repeat byte
#_0BF363: db $17
#_0BF364: db $83 ; Copy past
#_0BF365: dw $1E00
#_0BF367: db $00 ; Raw block
#_0BF368: db $03
#_0BF369: db $22 ; Repeat byte
#_0BF36A: db $01
#_0BF36B: db $01 ; Raw block
#_0BF36C: db $04, $01
#_0BF36E: db $83 ; Copy past
#_0BF36F: dw $7800
#_0BF371: db $04 ; Raw block
#_0BF372: db $04, $17, $07, $05, $07
#_0BF377: db $44 ; Repeat word
#_0BF378: dw $0108
#_0BF37A: db $02 ; Raw block
#_0BF37B: db $06, $08, $17
#_0BF37E: db $22 ; Repeat byte
#_0BF37F: db $08
#_0BF380: db $83 ; Copy past
#_0BF381: dw $7C00
#_0BF383: db $02 ; Raw block
#_0BF384: db $07, $06, $07
#_0BF387: db $22 ; Repeat byte
#_0BF388: db $01
#_0BF389: db $02 ; Raw block
#_0BF38A: db $04, $00, $0B
#_0BF38D: db $22 ; Repeat byte
#_0BF38E: db $08
#_0BF38F: db $83 ; Copy past
#_0BF390: dw $7C00
#_0BF392: db $03 ; Raw block
#_0BF393: db $05, $07, $01, $00
#_0BF397: db $83 ; Copy past
#_0BF398: dw $2900
#_0BF39A: db $06 ; Raw block
#_0BF39B: db $0B, $06, $17, $06, $0F, $17, $07
#_0BF3A2: db $22 ; Repeat byte
#_0BF3A3: db $05
#_0BF3A4: db $09 ; Raw block
#_0BF3A5: db $09, $04, $01, $08, $00, $00, $17, $0B
#_0BF3AD: db $0D, $00
#_0BF3AF: db $84 ; Copy past
#_0BF3B0: dw $9C00
#_0BF3B2: db $06 ; Raw block
#_0BF3B3: db $08, $17, $0D, $03, $04, $00, $00
#_0BF3BA: db $22 ; Repeat byte
#_0BF3BB: db $17
#_0BF3BC: db $00 ; Raw block
#_0BF3BD: db $0D
#_0BF3BE: db $85 ; Copy past
#_0BF3BF: dw $CC00
#_0BF3C1: db $05 ; Raw block
#_0BF3C2: db $01, $04, $04, $01, $04, $04
#_0BF3C8: db $84 ; Copy past
#_0BF3C9: dw $E200
#_0BF3CB: db $03 ; Raw block
#_0BF3CC: db $08, $07, $05, $07
#_0BF3D0: db $22 ; Repeat byte
#_0BF3D1: db $08
#_0BF3D2: db $06 ; Raw block
#_0BF3D3: db $04, $08, $08, $04, $08, $08, $04
#_0BF3DA: db $22 ; Repeat byte
#_0BF3DB: db $08
#_0BF3DC: db $01 ; Raw block
#_0BF3DD: db $07, $05
#_0BF3DF: db $FF ; End of Map 5A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen5A_Low:
#_0BF3E0: db $05 ; Raw block
#_0BF3E1: db $4A, $99, $44, $9A, $1D, $1C
#_0BF3E7: db $62 ; Increment fill
#_0BF3E8: db $9B
#_0BF3E9: db $16 ; Raw block
#_0BF3EA: db $B2, $67, $42, $4E, $9E, $8E, $36, $39
#_0BF3F2: db $9F, $4B, $A0, $B2, $A1, $B6, $26, $1D
#_0BF3FA: db $1D, $A2, $49, $58, $A3, $8E, $E1
#_0BF401: db $63 ; Increment fill
#_0BF402: db $A4
#_0BF403: db $E0, $36 ; EXT Raw block
#_0BF405: db $B6, $A8, $09, $8C, $61, $62, $2D, $C9
#_0BF40D: db $FE, $A9, $8E, $AA, $AB, $95, $BE, $EE
#_0BF415: db $09, $AC, $0E, $F6, $67, $AD, $1C, $39
#_0BF41D: db $3A, $AE, $8E, $AA, $AF, $9A, $A0, $30
#_0BF425: db $0E, $F6, $B0, $B6, $B1, $25, $20, $91
#_0BF42D: db $8E, $B2, $8E, $E1, $A0, $1C, $D9, $B3
#_0BF435: db $61, $62, $EE, $09, $2F, $99, $20
#_0BF43C: db $83 ; Copy past
#_0BF43D: dw $2B00
#_0BF43F: db $01 ; Raw block
#_0BF440: db $36, $19
#_0BF442: db $62 ; Increment fill
#_0BF443: db $B5
#_0BF444: db $06 ; Raw block
#_0BF445: db $67, $AD, $30, $0E, $F6, $AA, $1D
#_0BF44C: db $84 ; Copy past
#_0BF44D: dw $3B00
#_0BF44F: db $0A ; Raw block
#_0BF450: db $36, $67, $68, $55, $DB, $25, $23, $FB
#_0BF458: db $1B, $1C, $6C
#_0BF45B: db $62 ; Increment fill
#_0BF45C: db $1D
#_0BF45D: db $04 ; Raw block
#_0BF45E: db $8E, $E1, $C1, $C2, $49
#_0BF463: db $62 ; Increment fill
#_0BF464: db $42
#_0BF465: db $12 ; Raw block
#_0BF466: db $1E, $74, $20, $21, $8B, $22, $20, $23
#_0BF46E: db $8E, $E1, $4C, $C4, $A0, $C5, $4E, $C6
#_0BF476: db $2F, $C7, $24
#_0BF479: db $62 ; Increment fill
#_0BF47A: db $0F
#_0BF47B: db $0C ; Raw block
#_0BF47C: db $25, $26, $8E, $E1, $14, $16, $6C, $57
#_0BF484: db $58, $65, $BB, $1D, $FD
#_0BF489: db $62 ; Increment fill
#_0BF48A: db $1B
#_0BF48B: db $E0, $2B ; EXT Raw block
#_0BF48D: db $27, $28, $8E, $E1, $E1, $4C, $93, $1D
#_0BF495: db $61, $62, $97, $98, $FD, $3A, $29, $B3
#_0BF49D: db $01, $23, $8E, $E1, $E2, $EE, $1B, $BE
#_0BF4A5: db $67, $AD, $1D, $1D, $2A, $44, $84, $1F
#_0BF4AD: db $2B, $26, $8E, $E1, $4C, $CD, $2C, $58
#_0BF4B5: db $DB, $25, $1D, $1D
#_0BF4B9: db $62 ; Increment fill
#_0BF4BA: db $2D
#_0BF4BB: db $06 ; Raw block
#_0BF4BC: db $6C, $30, $31, $8E, $E1, $4C, $D1
#_0BF4C3: db $62 ; Increment fill
#_0BF4C4: db $43
#_0BF4C5: db $62 ; Increment fill
#_0BF4C6: db $43
#_0BF4C7: db $84 ; Copy past
#_0BF4C8: dw $E200
#_0BF4CA: db $0B ; Raw block
#_0BF4CB: db $D4, $8E, $E1, $4C, $D5, $43, $44, $4A
#_0BF4D3: db $99, $44, $4A, $99
#_0BF4D7: db $83 ; Copy past
#_0BF4D8: dw $F300
#_0BF4DA: db $02 ; Raw block
#_0BF4DB: db $D6, $8E, $E1
#_0BF4DE: db $FF ; End of Map 5A

;===================================================================================================

OverworldMap32_Screen5B_High:
#_0BF4DF: db $E4, $4F ; EXT Repeat byte
#_0BF4E1: db $17
#_0BF4E2: db $01 ; Raw block
#_0BF4E3: db $05, $07
#_0BF4E5: db $2D ; Repeat byte
#_0BF4E6: db $17
#_0BF4E7: db $01 ; Raw block
#_0BF4E8: db $05, $07
#_0BF4EA: db $2D ; Repeat byte
#_0BF4EB: db $17
#_0BF4EC: db $01 ; Raw block
#_0BF4ED: db $05, $07
#_0BF4EF: db $2D ; Repeat byte
#_0BF4F0: db $17
#_0BF4F1: db $01 ; Raw block
#_0BF4F2: db $05, $07
#_0BF4F4: db $2D ; Repeat byte
#_0BF4F5: db $17
#_0BF4F6: db $01 ; Raw block
#_0BF4F7: db $05, $07
#_0BF4F9: db $2D ; Repeat byte
#_0BF4FA: db $17
#_0BF4FB: db $01 ; Raw block
#_0BF4FC: db $05, $07
#_0BF4FE: db $2D ; Repeat byte
#_0BF4FF: db $17
#_0BF500: db $01 ; Raw block
#_0BF501: db $05, $07
#_0BF503: db $2D ; Repeat byte
#_0BF504: db $17
#_0BF505: db $01 ; Raw block
#_0BF506: db $05, $07
#_0BF508: db $2D ; Repeat byte
#_0BF509: db $17
#_0BF50A: db $01 ; Raw block
#_0BF50B: db $05, $07
#_0BF50D: db $2D ; Repeat byte
#_0BF50E: db $17
#_0BF50F: db $01 ; Raw block
#_0BF510: db $05, $07
#_0BF512: db $2D ; Repeat byte
#_0BF513: db $17
#_0BF514: db $01 ; Raw block
#_0BF515: db $05, $07
#_0BF517: db $2D ; Repeat byte
#_0BF518: db $17
#_0BF519: db $FF ; End of Map 5B

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen5B_Low:
#_0BF51A: db $E4, $2C ; EXT Repeat byte
#_0BF51C: db $32
#_0BF51D: db $02 ; Raw block
#_0BF51E: db $33, $34, $35
#_0BF521: db $25 ; Repeat byte
#_0BF522: db $32
#_0BF523: db $02 ; Raw block
#_0BF524: db $36, $37, $35
#_0BF527: db $66 ; Increment fill
#_0BF528: db $38
#_0BF529: db $02 ; Raw block
#_0BF52A: db $32, $32, $36
#_0BF52D: db $65 ; Increment fill
#_0BF52E: db $3F
#_0BF52F: db $03 ; Raw block
#_0BF530: db $3C, $45, $46, $45
#_0BF534: db $62 ; Increment fill
#_0BF535: db $47
#_0BF536: db $01 ; Raw block
#_0BF537: db $E1, $6E
#_0BF539: db $66 ; Increment fill
#_0BF53A: db $4A
#_0BF53B: db $03 ; Raw block
#_0BF53C: db $47, $3C, $46, $3C
#_0BF540: db $62 ; Increment fill
#_0BF541: db $51
#_0BF542: db $0A ; Raw block
#_0BF543: db $E1, $6E, $54, $55, $43, $56, $4B, $4C
#_0BF54B: db $50, $45, $47
#_0BF54E: db $64 ; Increment fill
#_0BF54F: db $57
#_0BF550: db $0A ; Raw block
#_0BF551: db $E1, $6E, $5C, $4E, $4F, $5D, $55, $43
#_0BF559: db $50, $3C, $45
#_0BF55C: db $64 ; Increment fill
#_0BF55D: db $5E
#_0BF55E: db $84 ; Copy past
#_0BF55F: dw $5000
#_0BF561: db $00 ; Raw block
#_0BF562: db $63
#_0BF563: db $84 ; Copy past
#_0BF564: dw $5600
#_0BF566: db $64 ; Increment fill
#_0BF567: db $64
#_0BF568: db $84 ; Copy past
#_0BF569: dw $6000
#_0BF56B: db $00 ; Raw block
#_0BF56C: db $69
#_0BF56D: db $83 ; Copy past
#_0BF56E: dw $6600
#_0BF570: db $65 ; Increment fill
#_0BF571: db $6A
#_0BF572: db $84 ; Copy past
#_0BF573: dw $7000
#_0BF575: db $06 ; Raw block
#_0BF576: db $70, $55, $43, $50, $71, $72, $6B
#_0BF57D: db $63 ; Increment fill
#_0BF57E: db $73
#_0BF57F: db $84 ; Copy past
#_0BF580: dw $5000
#_0BF582: db $00 ; Raw block
#_0BF583: db $77
#_0BF584: db $62 ; Increment fill
#_0BF585: db $4E
#_0BF586: db $66 ; Increment fill
#_0BF587: db $78
#_0BF588: db $84 ; Copy past
#_0BF589: dw $6000
#_0BF58B: db $01 ; Raw block
#_0BF58C: db $7F, $4B
#_0BF58E: db $64 ; Increment fill
#_0BF58F: db $80
#_0BF590: db $62 ; Increment fill
#_0BF591: db $84
#_0BF592: db $00 ; Raw block
#_0BF593: db $86
#_0BF594: db $83 ; Copy past
#_0BF595: dw $7000
#_0BF597: db $05 ; Raw block
#_0BF598: db $43, $87, $71, $88, $89, $5B
#_0BF59E: db $63 ; Increment fill
#_0BF59F: db $8A
#_0BF5A0: db $01 ; Raw block
#_0BF5A1: db $75, $75
#_0BF5A3: db $83 ; Copy past
#_0BF5A4: dw $5000
#_0BF5A6: db $00 ; Raw block
#_0BF5A7: db $4F
#_0BF5A8: db $62 ; Increment fill
#_0BF5A9: db $8E
#_0BF5AA: db $00 ; Raw block
#_0BF5AB: db $8F
#_0BF5AC: db $66 ; Increment fill
#_0BF5AD: db $91
#_0BF5AE: db $83 ; Copy past
#_0BF5AF: dw $6000
#_0BF5B1: db $6A ; Increment fill
#_0BF5B2: db $98
#_0BF5B3: db $00 ; Raw block
#_0BF5B4: db $A2
#_0BF5B5: db $FF ; End of Map 5B

;===================================================================================================

OverworldMap32_Screen5C_High:
#_0BF5B6: db $E4, $5C ; EXT Repeat byte
#_0BF5B8: db $17
#_0BF5B9: db $02 ; Raw block
#_0BF5BA: db $03, $05, $05
#_0BF5BD: db $2C ; Repeat byte
#_0BF5BE: db $17
#_0BF5BF: db $02 ; Raw block
#_0BF5C0: db $03, $05, $05
#_0BF5C3: db $2C ; Repeat byte
#_0BF5C4: db $17
#_0BF5C5: db $02 ; Raw block
#_0BF5C6: db $03, $05, $05
#_0BF5C9: db $2C ; Repeat byte
#_0BF5CA: db $17
#_0BF5CB: db $02 ; Raw block
#_0BF5CC: db $03, $05, $05
#_0BF5CF: db $2C ; Repeat byte
#_0BF5D0: db $17
#_0BF5D1: db $02 ; Raw block
#_0BF5D2: db $03, $05, $05
#_0BF5D5: db $2C ; Repeat byte
#_0BF5D6: db $17
#_0BF5D7: db $02 ; Raw block
#_0BF5D8: db $03, $05, $05
#_0BF5DB: db $2C ; Repeat byte
#_0BF5DC: db $17
#_0BF5DD: db $02 ; Raw block
#_0BF5DE: db $03, $05, $05
#_0BF5E1: db $2C ; Repeat byte
#_0BF5E2: db $17
#_0BF5E3: db $02 ; Raw block
#_0BF5E4: db $03, $05, $05
#_0BF5E7: db $2C ; Repeat byte
#_0BF5E8: db $17
#_0BF5E9: db $02 ; Raw block
#_0BF5EA: db $03, $05, $05
#_0BF5ED: db $2C ; Repeat byte
#_0BF5EE: db $17
#_0BF5EF: db $02 ; Raw block
#_0BF5F0: db $03, $05, $05
#_0BF5F3: db $2C ; Repeat byte
#_0BF5F4: db $17
#_0BF5F5: db $02 ; Raw block
#_0BF5F6: db $03, $05, $05
#_0BF5F9: db $FF ; End of Map 5C

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen5C_Low:
#_0BF5FA: db $3F ; Repeat byte
#_0BF5FB: db $32
#_0BF5FC: db $02 ; Raw block
#_0BF5FD: db $35, $A3, $A4
#_0BF600: db $2C ; Repeat byte
#_0BF601: db $32
#_0BF602: db $68 ; Increment fill
#_0BF603: db $A5
#_0BF604: db $26 ; Repeat byte
#_0BF605: db $32
#_0BF606: db $6B ; Increment fill
#_0BF607: db $AE
#_0BF608: db $00 ; Raw block
#_0BF609: db $AD
#_0BF60A: db $22 ; Repeat byte
#_0BF60B: db $32
#_0BF60C: db $07 ; Raw block
#_0BF60D: db $BA, $BB, $B3, $BC, $A6, $BD, $BE, $B5
#_0BF615: db $62 ; Increment fill
#_0BF616: db $BF
#_0BF617: db $04 ; Raw block
#_0BF618: db $C0, $B6, $32, $C5, $E1
#_0BF61D: db $63 ; Increment fill
#_0BF61E: db $C2
#_0BF61F: db $0B ; Raw block
#_0BF620: db $AF, $B0, $C6, $B5, $C0, $B6, $C1, $B6
#_0BF628: db $BF, $32, $C5, $E1
#_0BF62C: db $63 ; Increment fill
#_0BF62D: db $C7
#_0BF62E: db $0B ; Raw block
#_0BF62F: db $B2, $B3, $CB, $B5, $B6, $BF, $C1, $BF
#_0BF637: db $C0, $32, $C5, $E1
#_0BF63B: db $64 ; Increment fill
#_0BF63C: db $CC
#_0BF63D: db $84 ; Copy past
#_0BF63E: dw $5500
#_0BF640: db $00 ; Raw block
#_0BF641: db $D1
#_0BF642: db $84 ; Copy past
#_0BF643: dw $5B00
#_0BF645: db $01 ; Raw block
#_0BF646: db $6E, $6F
#_0BF648: db $64 ; Increment fill
#_0BF649: db $D2
#_0BF64A: db $03 ; Raw block
#_0BF64B: db $B5, $C0, $B6, $B5
#_0BF64F: db $84 ; Copy past
#_0BF650: dw $6B00
#_0BF652: db $01 ; Raw block
#_0BF653: db $75, $75
#_0BF655: db $64 ; Increment fill
#_0BF656: db $D7
#_0BF657: db $03 ; Raw block
#_0BF658: db $B5, $B6, $BF, $B5
#_0BF65C: db $84 ; Copy past
#_0BF65D: dw $7B00
#_0BF65F: db $0A ; Raw block
#_0BF660: db $DC, $78, $DD, $DE, $50, $78, $78, $B5
#_0BF668: db $BF, $C0, $B5
#_0BF66B: db $84 ; Copy past
#_0BF66C: dw $5B00
#_0BF66E: db $08 ; Raw block
#_0BF66F: db $86, $DF, $E0, $E0, $E1, $86, $DF, $E2
#_0BF677: db $E3
#_0BF678: db $88 ; Copy past
#_0BF679: dw $9900
#_0BF67B: db $07 ; Raw block
#_0BF67C: db $76, $75, $75, $76, $76, $75, $D4, $E4
#_0BF684: db $85 ; Copy past
#_0BF685: dw $AA00
#_0BF687: db $0A ; Raw block
#_0BF688: db $E5, $E6, $E5, $E7, $8F, $E8, $E9, $E5
#_0BF690: db $E5, $EA, $EB
#_0BF693: db $84 ; Copy past
#_0BF694: dw $5B00
#_0BF696: db $6B ; Increment fill
#_0BF697: db $EC
#_0BF698: db $83 ; Copy past
#_0BF699: dw $6C00
#_0BF69B: db $FF ; End of Map 5C

;===================================================================================================

OverworldMap32_Screen5D_High:
#_0BF69C: db $04 ; Raw block
#_0BF69D: db $07, $01, $07, $09, $06
#_0BF6A2: db $22 ; Repeat byte
#_0BF6A3: db $00
#_0BF6A4: db $12 ; Raw block
#_0BF6A5: db $03, $05, $07, $08, $04, $01, $04, $00
#_0BF6AD: db $07, $01, $09, $09, $02, $00, $00, $06
#_0BF6B5: db $09, $06, $07
#_0BF6B8: db $22 ; Repeat byte
#_0BF6B9: db $17
#_0BF6BA: db $84 ; Copy past
#_0BF6BB: dw $0E00
#_0BF6BD: db $00 ; Raw block
#_0BF6BE: db $17
#_0BF6BF: db $22 ; Repeat byte
#_0BF6C0: db $01
#_0BF6C1: db $06 ; Raw block
#_0BF6C2: db $02, $01, $05, $07, $08, $17, $10
#_0BF6C9: db $85 ; Copy past
#_0BF6CA: dw $1E00
#_0BF6CC: db $22 ; Repeat byte
#_0BF6CD: db $01
#_0BF6CE: db $05 ; Raw block
#_0BF6CF: db $03, $05, $07, $07, $17, $07
#_0BF6D5: db $85 ; Copy past
#_0BF6D6: dw $0D00
#_0BF6D8: db $03 ; Raw block
#_0BF6D9: db $17, $09, $01, $18
#_0BF6DD: db $83 ; Copy past
#_0BF6DE: dw $3700
#_0BF6E0: db $11 ; Raw block
#_0BF6E1: db $18, $06, $18, $04, $04, $07, $01, $00
#_0BF6E9: db $18, $18, $06, $00, $18, $18, $15, $18
#_0BF6F1: db $08, $06
#_0BF6F3: db $22 ; Repeat byte
#_0BF6F4: db $09
#_0BF6F5: db $03 ; Raw block
#_0BF6F6: db $07, $01, $00, $09
#_0BF6FA: db $22 ; Repeat byte
#_0BF6FB: db $18
#_0BF6FC: db $17 ; Raw block
#_0BF6FD: db $03, $05, $09, $07, $08, $18, $00, $01
#_0BF705: db $04, $09, $01, $02, $09, $18, $09, $00
#_0BF70D: db $03, $05, $09, $18, $08, $03, $00, $01
#_0BF715: db $84 ; Copy past
#_0BF716: dw $4F00
#_0BF718: db $05 ; Raw block
#_0BF719: db $09, $00, $00, $09, $05, $15
#_0BF71F: db $88 ; Copy past
#_0BF720: dw $7A00
#_0BF722: db $0C ; Raw block
#_0BF723: db $09, $06, $09, $04, $09, $09, $05, $07
#_0BF72B: db $08, $00, $07, $09, $04
#_0BF730: db $62 ; Increment fill
#_0BF731: db $07
#_0BF732: db $12 ; Raw block
#_0BF733: db $01, $00, $09, $09, $05, $08, $07, $07
#_0BF73B: db $03, $00, $02, $07, $07, $09, $06, $18
#_0BF743: db $04, $02, $04
#_0BF746: db $23 ; Repeat byte
#_0BF747: db $07
#_0BF748: db $05 ; Raw block
#_0BF749: db $03, $00, $09, $07, $07, $01
#_0BF74F: db $22 ; Repeat byte
#_0BF750: db $09
#_0BF751: db $0E ; Raw block
#_0BF752: db $06, $06, $05, $07, $09, $07, $03, $00
#_0BF75A: db $00, $09, $04, $01, $07, $09, $09
#_0BF761: db $24 ; Repeat byte
#_0BF762: db $07
#_0BF763: db $03 ; Raw block
#_0BF764: db $09, $07, $09, $03
#_0BF768: db $22 ; Repeat byte
#_0BF769: db $07
#_0BF76A: db $06 ; Raw block
#_0BF76B: db $01, $09, $05, $05, $09, $05, $05
#_0BF772: db $22 ; Repeat byte
#_0BF773: db $0A
#_0BF774: db $01 ; Raw block
#_0BF775: db $03, $01
#_0BF777: db $22 ; Repeat byte
#_0BF778: db $07
#_0BF779: db $07 ; Raw block
#_0BF77A: db $00, $01, $0A, $07, $01, $01, $00, $18
#_0BF782: db $22 ; Repeat byte
#_0BF783: db $06
#_0BF784: db $02 ; Raw block
#_0BF785: db $00, $01, $03
#_0BF788: db $22 ; Repeat byte
#_0BF789: db $00
#_0BF78A: db $01 ; Raw block
#_0BF78B: db $01, $0A
#_0BF78D: db $FF ; End of Map 5D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen5D_Low:
#_0BF78E: db $04 ; Raw block
#_0BF78F: db $4C, $93, $6D, $B0, $8E
#_0BF794: db $22 ; Repeat byte
#_0BF795: db $1D
#_0BF796: db $12 ; Raw block
#_0BF797: db $32, $C5, $6E, $B7, $37, $77, $86, $1D
#_0BF79F: db $4C, $93, $B2, $B3, $96, $1D, $1D, $7D
#_0BF7A7: db $B6, $09, $6E
#_0BF7AA: db $62 ; Increment fill
#_0BF7AB: db $F8
#_0BF7AC: db $05 ; Raw block
#_0BF7AD: db $86, $1D, $56, $93, $B8, $FB
#_0BF7B3: db $62 ; Increment fill
#_0BF7B4: db $42
#_0BF7B5: db $06 ; Raw block
#_0BF7B6: db $A1, $AD, $C5, $6E, $B7, $FC, $93
#_0BF7BD: db $83 ; Copy past
#_0BF7BE: dw $0E00
#_0BF7C0: db $01 ; Raw block
#_0BF7C1: db $B0, $FD
#_0BF7C3: db $62 ; Increment fill
#_0BF7C4: db $4D
#_0BF7C5: db $05 ; Raw block
#_0BF7C6: db $9A, $99, $1F, $6E, $FE, $AF
#_0BF7CC: db $84 ; Copy past
#_0BF7CD: dw $0D00
#_0BF7CF: db $1A ; Raw block
#_0BF7D0: db $C1, $FF, $C3, $58, $00, $32, $C5, $36
#_0BF7D8: db $6E, $01, $3A, $02, $8E, $C4, $4C, $93
#_0BF7E0: db $1D, $03, $04, $8F, $1D, $05, $06, $5C
#_0BF7E8: db $07, $B7, $66
#_0BF7EB: db $62 ; Increment fill
#_0BF7EC: db $D1
#_0BF7ED: db $03 ; Raw block
#_0BF7EE: db $4C, $93, $1D, $D4
#_0BF7F2: db $62 ; Increment fill
#_0BF7F3: db $08
#_0BF7F4: db $E0, $26 ; EXT Raw block
#_0BF7F6: db $32, $C5, $F5, $6E, $B7, $0B, $A5, $77
#_0BF7FE: db $86, $DB, $93, $DE, $C1, $0C, $DD, $1D
#_0BF806: db $32, $C5, $FA, $0D, $B7, $E2, $A5, $77
#_0BF80E: db $86, $4C, $93, $1D, $0E, $E4, $A5, $1D
#_0BF816: db $E5, $C5, $62, $0F, $B7, $D5, $1D
#_0BF81D: db $84 ; Copy past
#_0BF81E: dw $7E00
#_0BF820: db $E0, $2C ; EXT Raw block
#_0BF822: db $E8, $9C, $E9, $81, $82, $EA, $E1, $6E
#_0BF82A: db $B7, $1D, $91, $EB, $86, $4C, $C4, $EC
#_0BF832: db $F2, $1D, $ED, $EE, $9F, $AA, $67, $68
#_0BF83A: db $55, $1D, $8D, $C6, $C7, $EF, $16, $10
#_0BF842: db $7B, $61, $C5, $13, $36, $67, $68, $49
#_0BF84A: db $1D, $F4, $C6, $C7, $48
#_0BF84F: db $62 ; Increment fill
#_0BF850: db $F5
#_0BF851: db $0F ; Raw block
#_0BF852: db $A0, $A0, $AC, $18, $90, $6E, $4F, $1D
#_0BF85A: db $1D, $EB, $86, $48, $D9, $FA, $FB, $83
#_0BF862: db $23 ; Repeat byte
#_0BF863: db $84
#_0BF864: db $0D ; Raw block
#_0BF865: db $FC, $68, $FD, $44, $C0, $C6, $2A, $2E
#_0BF86D: db $FE, $E2, $EE, $FF, $6D, $6D
#_0BF873: db $62 ; Increment fill
#_0BF874: db $00
#_0BF875: db $17 ; Raw block
#_0BF876: db $49, $48, $60, $CB, $2A, $1D, $2E, $03
#_0BF87E: db $4C, $93, $CC, $A0, $11, $95, $95, $8F
#_0BF886: db $1D, $2E, $A0, $A5, $1D, $A5, $2E, $03
#_0BF88E: db $FF ; End of Map 5D

;===================================================================================================

OverworldMap32_Screen5E_High:
#_0BF88F: db $23 ; Repeat byte
#_0BF890: db $0A
#_0BF891: db $23 ; Repeat byte
#_0BF892: db $18
#_0BF893: db $25 ; Repeat byte
#_0BF894: db $0A
#_0BF895: db $83 ; Copy past
#_0BF896: dw $0600
#_0BF898: db $01 ; Raw block
#_0BF899: db $05, $05
#_0BF89B: db $23 ; Repeat byte
#_0BF89C: db $18
#_0BF89D: db $83 ; Copy past
#_0BF89E: dw $1000
#_0BF8A0: db $23 ; Repeat byte
#_0BF8A1: db $18
#_0BF8A2: db $01 ; Raw block
#_0BF8A3: db $0A, $0A
#_0BF8A5: db $2D ; Repeat byte
#_0BF8A6: db $18
#_0BF8A7: db $01 ; Raw block
#_0BF8A8: db $0A, $0C
#_0BF8AA: db $31 ; Repeat byte
#_0BF8AB: db $18
#_0BF8AC: db $02 ; Raw block
#_0BF8AD: db $05, $0A, $18
#_0BF8B0: db $23 ; Repeat byte
#_0BF8B1: db $05
#_0BF8B2: db $E4, $20 ; EXT Repeat byte
#_0BF8B4: db $18
#_0BF8B5: db $23 ; Repeat byte
#_0BF8B6: db $05
#_0BF8B7: db $E4, $4F ; EXT Repeat byte
#_0BF8B9: db $18
#_0BF8BA: db $00 ; Raw block
#_0BF8BB: db $0A
#_0BF8BC: db $2E ; Repeat byte
#_0BF8BD: db $18
#_0BF8BE: db $01 ; Raw block
#_0BF8BF: db $0A, $0A
#_0BF8C1: db $2D ; Repeat byte
#_0BF8C2: db $18
#_0BF8C3: db $01 ; Raw block
#_0BF8C4: db $0A, $0A
#_0BF8C6: db $3D ; Repeat byte
#_0BF8C7: db $18
#_0BF8C8: db $FF ; End of Map 5E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen5E_Low:
#_0BF8C9: db $00 ; Raw block
#_0BF8CA: db $07
#_0BF8CB: db $22 ; Repeat byte
#_0BF8CC: db $08
#_0BF8CD: db $03 ; Raw block
#_0BF8CE: db $12, $13, $13, $14
#_0BF8D2: db $25 ; Repeat byte
#_0BF8D3: db $08
#_0BF8D4: db $0D ; Raw block
#_0BF8D5: db $15, $14, $09, $0A, $FB, $FB, $16, $17
#_0BF8DD: db $17, $18, $0B, $0C, $FB, $E8
#_0BF8E3: db $63 ; Increment fill
#_0BF8E4: db $19
#_0BF8E5: db $02 ; Raw block
#_0BF8E6: db $09, $10, $1D
#_0BF8E9: db $22 ; Repeat byte
#_0BF8EA: db $1E
#_0BF8EB: db $01 ; Raw block
#_0BF8EC: db $1F, $1E
#_0BF8EE: db $63 ; Increment fill
#_0BF8EF: db $20
#_0BF8F0: db $00 ; Raw block
#_0BF8F1: db $1E
#_0BF8F2: db $62 ; Increment fill
#_0BF8F3: db $24
#_0BF8F4: db $03 ; Raw block
#_0BF8F5: db $09, $FB, $27, $28
#_0BF8F9: db $25 ; Repeat byte
#_0BF8FA: db $17
#_0BF8FB: db $69 ; Increment fill
#_0BF8FC: db $29
#_0BF8FD: db $02 ; Raw block
#_0BF8FE: db $FB, $0C, $33
#_0BF901: db $23 ; Repeat byte
#_0BF902: db $FB
#_0BF903: db $65 ; Increment fill
#_0BF904: db $34
#_0BF905: db $0A ; Raw block
#_0BF906: db $2C, $2D, $3A, $3B, $21, $21, $3C, $3D
#_0BF90E: db $21, $21, $3E
#_0BF911: db $22 ; Repeat byte
#_0BF912: db $17
#_0BF913: db $05 ; Raw block
#_0BF914: db $18, $3F, $40, $27, $2C, $31
#_0BF91A: db $65 ; Increment fill
#_0BF91B: db $41
#_0BF91C: db $00 ; Raw block
#_0BF91D: db $2C
#_0BF91E: db $23 ; Repeat byte
#_0BF91F: db $FB
#_0BF920: db $02 ; Raw block
#_0BF921: db $47, $48, $27
#_0BF924: db $62 ; Increment fill
#_0BF925: db $49
#_0BF926: db $00 ; Raw block
#_0BF927: db $41
#_0BF928: db $6B ; Increment fill
#_0BF929: db $4C
#_0BF92A: db $09 ; Raw block
#_0BF92B: db $38, $2B, $58, $59, $4F, $5A, $4D, $5B
#_0BF933: db $32, $27
#_0BF935: db $62 ; Increment fill
#_0BF936: db $5C
#_0BF937: db $01 ; Raw block
#_0BF938: db $39, $5F
#_0BF93A: db $83 ; Copy past
#_0BF93B: dw $6200
#_0BF93D: db $62 ; Increment fill
#_0BF93E: db $60
#_0BF93F: db $0A ; Raw block
#_0BF940: db $44, $63, $2E, $37, $1C, $64, $65, $39
#_0BF948: db $2C, $66, $2C
#_0BF94B: db $65 ; Increment fill
#_0BF94C: db $67
#_0BF94D: db $03 ; Raw block
#_0BF94E: db $41, $6D, $6E, $2C
#_0BF952: db $62 ; Increment fill
#_0BF953: db $6F
#_0BF954: db $00 ; Raw block
#_0BF955: db $18
#_0BF956: db $66 ; Increment fill
#_0BF957: db $72
#_0BF958: db $62 ; Increment fill
#_0BF959: db $78
#_0BF95A: db $04 ; Raw block
#_0BF95B: db $5D, $7B, $1F, $1F, $09
#_0BF960: db $63 ; Increment fill
#_0BF961: db $7C
#_0BF962: db $02 ; Raw block
#_0BF963: db $70, $80, $81
#_0BF966: db $22 ; Repeat byte
#_0BF967: db $70
#_0BF968: db $01 ; Raw block
#_0BF969: db $82, $83
#_0BF96B: db $22 ; Repeat byte
#_0BF96C: db $17
#_0BF96D: db $03 ; Raw block
#_0BF96E: db $09, $10, $64, $65
#_0BF972: db $22 ; Repeat byte
#_0BF973: db $84
#_0BF974: db $63 ; Increment fill
#_0BF975: db $85
#_0BF976: db $00 ; Raw block
#_0BF977: db $88
#_0BF978: db $22 ; Repeat byte
#_0BF979: db $89
#_0BF97A: db $06 ; Raw block
#_0BF97B: db $8A, $09, $0A, $7F, $8B, $8C, $70
#_0BF982: db $63 ; Increment fill
#_0BF983: db $8C
#_0BF984: db $24 ; Repeat byte
#_0BF985: db $90
#_0BF986: db $01 ; Raw block
#_0BF987: db $91, $2F
#_0BF989: db $62 ; Increment fill
#_0BF98A: db $92
#_0BF98B: db $22 ; Repeat byte
#_0BF98C: db $21
#_0BF98D: db $63 ; Increment fill
#_0BF98E: db $95
#_0BF98F: db $43 ; Repeat word
#_0BF990: dw $9A99
#_0BF992: db $00 ; Raw block
#_0BF993: db $9B
#_0BF994: db $FF ; End of Map 5E

;===================================================================================================

OverworldMap32_Screen5F_High:
#_0BF995: db $03 ; Raw block
#_0BF996: db $0A, $18, $18, $0A
#_0BF99A: db $2A ; Repeat byte
#_0BF99B: db $18
#_0BF99C: db $04 ; Raw block
#_0BF99D: db $01, $05, $18, $18, $05
#_0BF9A2: db $2A ; Repeat byte
#_0BF9A3: db $18
#_0BF9A4: db $84 ; Copy past
#_0BF9A5: dw $0F00
#_0BF9A7: db $2A ; Repeat byte
#_0BF9A8: db $18
#_0BF9A9: db $00 ; Raw block
#_0BF9AA: db $01
#_0BF9AB: db $2E ; Repeat byte
#_0BF9AC: db $18
#_0BF9AD: db $00 ; Raw block
#_0BF9AE: db $01
#_0BF9AF: db $2E ; Repeat byte
#_0BF9B0: db $18
#_0BF9B1: db $00 ; Raw block
#_0BF9B2: db $01
#_0BF9B3: db $2E ; Repeat byte
#_0BF9B4: db $18
#_0BF9B5: db $00 ; Raw block
#_0BF9B6: db $01
#_0BF9B7: db $2E ; Repeat byte
#_0BF9B8: db $18
#_0BF9B9: db $00 ; Raw block
#_0BF9BA: db $01
#_0BF9BB: db $22 ; Repeat byte
#_0BF9BC: db $18
#_0BF9BD: db $00 ; Raw block
#_0BF9BE: db $05
#_0BF9BF: db $2A ; Repeat byte
#_0BF9C0: db $18
#_0BF9C1: db $04 ; Raw block
#_0BF9C2: db $01, $0A, $18, $18, $05
#_0BF9C7: db $2A ; Repeat byte
#_0BF9C8: db $18
#_0BF9C9: db $00 ; Raw block
#_0BF9CA: db $01
#_0BF9CB: db $22 ; Repeat byte
#_0BF9CC: db $18
#_0BF9CD: db $00 ; Raw block
#_0BF9CE: db $05
#_0BF9CF: db $2A ; Repeat byte
#_0BF9D0: db $18
#_0BF9D1: db $00 ; Raw block
#_0BF9D2: db $01
#_0BF9D3: db $22 ; Repeat byte
#_0BF9D4: db $18
#_0BF9D5: db $00 ; Raw block
#_0BF9D6: db $05
#_0BF9D7: db $2A ; Repeat byte
#_0BF9D8: db $18
#_0BF9D9: db $00 ; Raw block
#_0BF9DA: db $01
#_0BF9DB: db $2C ; Repeat byte
#_0BF9DC: db $18
#_0BF9DD: db $06 ; Raw block
#_0BF9DE: db $19, $18, $01, $18, $19, $18, $05
#_0BF9E5: db $22 ; Repeat byte
#_0BF9E6: db $19
#_0BF9E7: db $01 ; Raw block
#_0BF9E8: db $05, $18
#_0BF9EA: db $23 ; Repeat byte
#_0BF9EB: db $19
#_0BF9EC: db $01 ; Raw block
#_0BF9ED: db $18, $19
#_0BF9EF: db $83 ; Copy past
#_0BF9F0: dw $0F00
#_0BF9F2: db $07 ; Raw block
#_0BF9F3: db $19, $19, $18, $18, $19, $19, $18, $0A
#_0BF9FB: db $22 ; Repeat byte
#_0BF9FC: db $18
#_0BF9FD: db $00 ; Raw block
#_0BF9FE: db $19
#_0BF9FF: db $83 ; Copy past
#_0BFA00: dw $7F00
#_0BFA02: db $24 ; Repeat byte
#_0BFA03: db $19
#_0BFA04: db $02 ; Raw block
#_0BFA05: db $18, $18, $05
#_0BFA08: db $22 ; Repeat byte
#_0BFA09: db $18
#_0BFA0A: db $04 ; Raw block
#_0BFA0B: db $19, $01, $05, $0A, $0A
#_0BFA10: db $84 ; Copy past
#_0BFA11: dw $D200
#_0BFA13: db $01 ; Raw block
#_0BFA14: db $05, $06
#_0BFA16: db $23 ; Repeat byte
#_0BFA17: db $0A
#_0BFA18: db $01 ; Raw block
#_0BFA19: db $19, $01
#_0BFA1B: db $FF ; End of Map 5F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen5F_Low:
#_0BFA1C: db $04 ; Raw block
#_0BFA1D: db $08, $15, $14, $08, $12
#_0BFA22: db $62 ; Increment fill
#_0BFA23: db $9C
#_0BFA24: db $25 ; Repeat byte
#_0BFA25: db $90
#_0BFA26: db $05 ; Raw block
#_0BFA27: db $9F, $71, $FB, $27, $2C, $FB
#_0BFA2D: db $6A ; Increment fill
#_0BFA2E: db $A0
#_0BFA2F: db $03 ; Raw block
#_0BFA30: db $71, $FB, $AB, $AC
#_0BFA34: db $83 ; Copy past
#_0BFA35: dw $1300
#_0BFA37: db $67 ; Increment fill
#_0BFA38: db $AD
#_0BFA39: db $07 ; Raw block
#_0BFA3A: db $71, $20, $B5, $65, $84, $B6, $B7, $A2
#_0BFA42: db $67 ; Increment fill
#_0BFA43: db $B8
#_0BFA44: db $02 ; Raw block
#_0BFA45: db $71, $2B, $C0
#_0BFA48: db $22 ; Repeat byte
#_0BFA49: db $70
#_0BFA4A: db $01 ; Raw block
#_0BFA4B: db $C1, $A2
#_0BFA4D: db $67 ; Increment fill
#_0BFA4E: db $C2
#_0BFA4F: db $08 ; Raw block
#_0BFA50: db $71, $27, $49, $CA, $23, $1E, $CB, $A2
#_0BFA58: db $C2
#_0BFA59: db $65 ; Increment fill
#_0BFA5A: db $CC
#_0BFA5B: db $08 ; Raw block
#_0BFA5C: db $C9, $71, $74, $D2, $D3, $2A, $D4, $A1
#_0BFA64: db $D5
#_0BFA65: db $22 ; Repeat byte
#_0BFA66: db $84
#_0BFA67: db $0C ; Raw block
#_0BFA68: db $D6, $D7, $84, $84, $D8, $71, $7F, $D9
#_0BFA70: db $DA, $FB, $A0, $DB, $DC
#_0BFA75: db $22 ; Repeat byte
#_0BFA76: db $DD
#_0BFA77: db $0B ; Raw block
#_0BFA78: db $DE, $DF, $DD, $DD, $E0, $71, $97, $E1
#_0BFA80: db $E2, $FB, $E3, $E4
#_0BFA84: db $47 ; Repeat word
#_0BFA85: dw $E6E5
#_0BFA87: db $0C ; Raw block
#_0BFA88: db $E7, $71, $84, $B6, $B7, $FB, $E8, $E9
#_0BFA90: db $84, $84, $53, $EA, $21
#_0BFA95: db $63 ; Increment fill
#_0BFA96: db $EB
#_0BFA97: db $09 ; Raw block
#_0BFA98: db $71, $70, $70, $C1, $FB, $EF, $F0, $70
#_0BFAA0: db $70, $5D
#_0BFAA2: db $65 ; Increment fill
#_0BFAA3: db $F1
#_0BFAA4: db $03 ; Raw block
#_0BFAA5: db $71, $1E, $1E, $CB
#_0BFAA9: db $64 ; Increment fill
#_0BFAAA: db $F7
#_0BFAAB: db $00 ; Raw block
#_0BFAAC: db $27
#_0BFAAD: db $63 ; Increment fill
#_0BFAAE: db $FC
#_0BFAAF: db $06 ; Raw block
#_0BFAB0: db $00, $C9, $71, $17, $01, $A1, $FB
#_0BFAB7: db $62 ; Increment fill
#_0BFAB8: db $02
#_0BFAB9: db $01 ; Raw block
#_0BFABA: db $FB, $27
#_0BFABC: db $63 ; Increment fill
#_0BFABD: db $05
#_0BFABE: db $15 ; Raw block
#_0BFABF: db $FB, $09, $71, $FB, $E8, $E9, $0A, $0B
#_0BFAC7: db $84, $85, $0B, $0C, $40, $97, $74, $E9
#_0BFACF: db $84, $0D, $71, $0C, $EF, $70
#_0BFAD5: db $62 ; Increment fill
#_0BFAD6: db $0E
#_0BFAD7: db $14 ; Raw block
#_0BFAD8: db $0E, $0F, $70, $82, $FB, $7F, $70, $70
#_0BFAE0: db $11, $71, $FB, $E8, $0C, $A0, $08, $12
#_0BFAE8: db $A0, $A1, $FB, $05, $97
#_0BFAED: db $22 ; Repeat byte
#_0BFAEE: db $E8
#_0BFAEF: db $01 ; Raw block
#_0BFAF0: db $13, $71
#_0BFAF2: db $FF ; End of Map 5F

;===================================================================================================

OverworldMap32_Screen60_High:
#_0BFAF3: db $09 ; Raw block
#_0BFAF4: db $00, $01, $06, $08, $0A, $16, $07, $00
#_0BFAFC: db $0A, $08
#_0BFAFE: db $25 ; Repeat byte
#_0BFAFF: db $0A
#_0BFB00: db $09 ; Raw block
#_0BFB01: db $00, $04, $01, $08, $0A, $00, $07, $16
#_0BFB09: db $0A, $0A
#_0BFB0B: db $45 ; Repeat word
#_0BFB0C: dw $0B08
#_0BFB0E: db $02 ; Raw block
#_0BFB0F: db $00, $00, $01
#_0BFB12: db $84 ; Copy past
#_0BFB13: dw $0300
#_0BFB15: db $02 ; Raw block
#_0BFB16: db $16, $07, $08
#_0BFB19: db $22 ; Repeat byte
#_0BFB1A: db $19
#_0BFB1B: db $01 ; Raw block
#_0BFB1C: db $0B, $08
#_0BFB1E: db $86 ; Copy past
#_0BFB1F: dw $0000
#_0BFB21: db $03 ; Raw block
#_0BFB22: db $19, $0A, $07, $08
#_0BFB26: db $24 ; Repeat byte
#_0BFB27: db $19
#_0BFB28: db $83 ; Copy past
#_0BFB29: dw $1000
#_0BFB2B: db $06 ; Raw block
#_0BFB2C: db $0B, $0B, $04, $0B, $0B, $07, $08
#_0BFB33: db $23 ; Repeat byte
#_0BFB34: db $19
#_0BFB35: db $00 ; Raw block
#_0BFB36: db $16
#_0BFB37: db $83 ; Copy past
#_0BFB38: dw $2000
#_0BFB3A: db $06 ; Raw block
#_0BFB3B: db $0B, $0B, $08, $0B, $0B, $08, $08
#_0BFB42: db $22 ; Repeat byte
#_0BFB43: db $19
#_0BFB44: db $00 ; Raw block
#_0BFB45: db $16
#_0BFB46: db $83 ; Copy past
#_0BFB47: dw $2F00
#_0BFB49: db $27 ; Repeat byte
#_0BFB4A: db $08
#_0BFB4B: db $01 ; Raw block
#_0BFB4C: db $0B, $16
#_0BFB4E: db $83 ; Copy past
#_0BFB4F: dw $1D00
#_0BFB51: db $02 ; Raw block
#_0BFB52: db $04, $01, $08
#_0BFB55: db $25 ; Repeat byte
#_0BFB56: db $0B
#_0BFB57: db $24 ; Repeat byte
#_0BFB58: db $07
#_0BFB59: db $03 ; Raw block
#_0BFB5A: db $08, $00, $00, $01
#_0BFB5E: db $25 ; Repeat byte
#_0BFB5F: db $0B
#_0BFB60: db $02 ; Raw block
#_0BFB61: db $07, $0B, $0B
#_0BFB64: db $22 ; Repeat byte
#_0BFB65: db $07
#_0BFB66: db $83 ; Copy past
#_0BFB67: dw $2F00
#_0BFB69: db $25 ; Repeat byte
#_0BFB6A: db $0B
#_0BFB6B: db $03 ; Raw block
#_0BFB6C: db $05, $0B, $0B, $16
#_0BFB70: db $22 ; Repeat byte
#_0BFB71: db $0B
#_0BFB72: db $01 ; Raw block
#_0BFB73: db $00, $04
#_0BFB75: db $84 ; Copy past
#_0BFB76: dw $4D00
#_0BFB78: db $0A ; Raw block
#_0BFB79: db $19, $08, $07, $0B, $0B, $16, $19, $19
#_0BFB81: db $0B, $00, $00
#_0BFB84: db $22 ; Repeat byte
#_0BFB85: db $19
#_0BFB86: db $22 ; Repeat byte
#_0BFB87: db $0B
#_0BFB88: db $83 ; Copy past
#_0BFB89: dw $A800
#_0BFB8B: db $05 ; Raw block
#_0BFB8C: db $17, $16, $16, $08, $06, $01
#_0BFB92: db $22 ; Repeat byte
#_0BFB93: db $19
#_0BFB94: db $00 ; Raw block
#_0BFB95: db $08
#_0BFB96: db $43 ; Repeat word
#_0BFB97: dw $0B08
#_0BFB99: db $22 ; Repeat byte
#_0BFB9A: db $16
#_0BFB9B: db $0A ; Raw block
#_0BFB9C: db $00, $01, $16, $03, $03, $0B, $0B, $01
#_0BFBA4: db $0B, $08, $01
#_0BFBA7: db $2C ; Repeat byte
#_0BFBA8: db $0B
#_0BFBA9: db $00 ; Raw block
#_0BFBAA: db $08
#_0BFBAB: db $2D ; Repeat byte
#_0BFBAC: db $0B
#_0BFBAD: db $05 ; Raw block
#_0BFBAE: db $04, $08, $08, $04, $08, $08
#_0BFBB4: db $85 ; Copy past
#_0BFBB5: dw $F400
#_0BFBB7: db $FF ; End of Map 60

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen60_Low:
#_0BFBB8: db $09 ; Raw block
#_0BFBB9: db $06, $10, $2B, $03, $FB, $E6, $41, $1F
#_0BFBC1: db $FC, $13
#_0BFBC3: db $23 ; Repeat byte
#_0BFBC4: db $FD
#_0BFBC5: db $14 ; Raw block
#_0BFBC6: db $FE, $FE, $02, $6D, $26, $03, $FB, $1F
#_0BFBCE: db $41, $FF, $FC, $FF, $77, $00, $61, $01
#_0BFBD6: db $78, $02, $0B, $09, $2F
#_0BFBDB: db $84 ; Copy past
#_0BFBDC: dw $0300
#_0BFBDE: db $02 ; Raw block
#_0BFBDF: db $EE, $E7, $25
#_0BFBE2: db $62 ; Increment fill
#_0BFBE3: db $14
#_0BFBE4: db $01 ; Raw block
#_0BFBE5: db $06, $08
#_0BFBE7: db $84 ; Copy past
#_0BFBE8: dw $0000
#_0BFBEA: db $05 ; Raw block
#_0BFBEB: db $EC, $41, $17, $FC, $E7, $25
#_0BFBF1: db $64 ; Increment fill
#_0BFBF2: db $18
#_0BFBF3: db $83 ; Copy past
#_0BFBF4: dw $1000
#_0BFBF6: db $06 ; Raw block
#_0BFBF7: db $0C, $0D, $37, $0E, $0F, $E7, $25
#_0BFBFE: db $63 ; Increment fill
#_0BFBFF: db $1D
#_0BFC00: db $00 ; Raw block
#_0BFC01: db $EE
#_0BFC02: db $83 ; Copy past
#_0BFC03: dw $2000
#_0BFC05: db $06 ; Raw block
#_0BFC06: db $15, $16, $0A, $17, $18, $58, $25
#_0BFC0D: db $62 ; Increment fill
#_0BFC0E: db $21
#_0BFC0F: db $00 ; Raw block
#_0BFC10: db $FA
#_0BFC11: db $84 ; Copy past
#_0BFC12: dw $2F00
#_0BFC14: db $62 ; Increment fill
#_0BFC15: db $2F
#_0BFC16: db $08 ; Raw block
#_0BFC17: db $2F, $30, $22, $3D, $1D, $EC, $1E, $95
#_0BFC1F: db $1F
#_0BFC20: db $83 ; Copy past
#_0BFC21: dw $1000
#_0BFC23: db $00 ; Raw block
#_0BFC24: db $20
#_0BFC25: db $24 ; Repeat byte
#_0BFC26: db $21
#_0BFC27: db $24 ; Repeat byte
#_0BFC28: db $E1
#_0BFC29: db $05 ; Raw block
#_0BFC2A: db $37, $0B, $09, $2F, $22, $23
#_0BFC30: db $22 ; Repeat byte
#_0BFC31: db $24
#_0BFC32: db $03 ; Raw block
#_0BFC33: db $25, $E9, $26, $26
#_0BFC37: db $22 ; Repeat byte
#_0BFC38: db $E9
#_0BFC39: db $04 ; Raw block
#_0BFC3A: db $24, $06, $10, $2B, $27
#_0BFC3F: db $23 ; Repeat byte
#_0BFC40: db $28
#_0BFC41: db $04 ; Raw block
#_0BFC42: db $29, $04, $2A, $2B, $E6
#_0BFC47: db $62 ; Increment fill
#_0BFC48: db $2C
#_0BFC49: db $14 ; Raw block
#_0BFC4A: db $02, $6D, $24, $25, $FA, $1F, $1F, $17
#_0BFC52: db $03, $6D, $32, $33, $FF, $26, $27, $14
#_0BFC5A: db $0B, $09, $28, $19, $29
#_0BFC5F: db $62 ; Increment fill
#_0BFC60: db $39
#_0BFC61: db $09 ; Raw block
#_0BFC62: db $03, $6D, $3C, $3D, $00, $FF, $FA, $08
#_0BFC6A: db $AC, $0E
#_0BFC6C: db $62 ; Increment fill
#_0BFC6D: db $2A
#_0BFC6E: db $13 ; Raw block
#_0BFC6F: db $BD, $4B, $43, $03, $44, $E6, $EC, $E6
#_0BFC77: db $1F, $5A, $EE, $4B, $4B, $45, $46, $42
#_0BFC7F: db $47, $D3, $62, $22
#_0BFC83: db $24 ; Repeat byte
#_0BFC84: db $48
#_0BFC85: db $66 ; Increment fill
#_0BFC86: db $49
#_0BFC87: db $00 ; Raw block
#_0BFC88: db $99
#_0BFC89: db $65 ; Increment fill
#_0BFC8A: db $50
#_0BFC8B: db $62 ; Increment fill
#_0BFC8C: db $53
#_0BFC8D: db $01 ; Raw block
#_0BFC8E: db $53, $4C
#_0BFC90: db $62 ; Increment fill
#_0BFC91: db $56
#_0BFC92: db $05 ; Raw block
#_0BFC93: db $39, $9F, $4B, $39, $9F, $4B
#_0BFC99: db $85 ; Copy past
#_0BFC9A: dw $F400
#_0BFC9C: db $FF ; End of Map 60

;===================================================================================================

OverworldMap32_Screen61_High:
#_0BFC9D: db $07 ; Raw block
#_0BFC9E: db $0A, $0A, $0B, $0B, $0A, $0A, $0B, $0B
#_0BFCA6: db $23 ; Repeat byte
#_0BFCA7: db $07
#_0BFCA8: db $05 ; Raw block
#_0BFCA9: db $0B, $08, $07, $05, $0B, $0B
#_0BFCAF: db $23 ; Repeat byte
#_0BFCB0: db $08
#_0BFCB1: db $01 ; Raw block
#_0BFCB2: db $0B, $0B
#_0BFCB4: db $23 ; Repeat byte
#_0BFCB5: db $19
#_0BFCB6: db $83 ; Copy past
#_0BFCB7: dw $0C00
#_0BFCB9: db $01 ; Raw block
#_0BFCBA: db $08, $08
#_0BFCBC: db $23 ; Repeat byte
#_0BFCBD: db $19
#_0BFCBE: db $01 ; Raw block
#_0BFCBF: db $08, $08
#_0BFCC1: db $22 ; Repeat byte
#_0BFCC2: db $19
#_0BFCC3: db $00 ; Raw block
#_0BFCC4: db $0D
#_0BFCC5: db $84 ; Copy past
#_0BFCC6: dw $1C00
#_0BFCC8: db $00 ; Raw block
#_0BFCC9: db $17
#_0BFCCA: db $23 ; Repeat byte
#_0BFCCB: db $19
#_0BFCCC: db $04 ; Raw block
#_0BFCCD: db $08, $08, $19, $16, $16
#_0BFCD2: db $86 ; Copy past
#_0BFCD3: dw $2B00
#_0BFCD5: db $23 ; Repeat byte
#_0BFCD6: db $19
#_0BFCD7: db $05 ; Raw block
#_0BFCD8: db $08, $08, $19, $12, $19, $19
#_0BFCDE: db $22 ; Repeat byte
#_0BFCDF: db $0B
#_0BFCE0: db $00 ; Raw block
#_0BFCE1: db $05
#_0BFCE2: db $84 ; Copy past
#_0BFCE3: dw $1500
#_0BFCE5: db $09 ; Raw block
#_0BFCE6: db $0B, $0B, $08, $0A, $00, $16, $16, $0B
#_0BFCEE: db $08, $03
#_0BFCF0: db $85 ; Copy past
#_0BFCF1: dw $4F00
#_0BFCF3: db $23 ; Repeat byte
#_0BFCF4: db $0B
#_0BFCF5: db $22 ; Repeat byte
#_0BFCF6: db $19
#_0BFCF7: db $84 ; Copy past
#_0BFCF8: dw $5C00
#_0BFCFA: db $2B ; Repeat byte
#_0BFCFB: db $0B
#_0BFCFC: db $03 ; Raw block
#_0BFCFD: db $08, $07, $0B, $08
#_0BFD01: db $24 ; Repeat byte
#_0BFD02: db $19
#_0BFD03: db $0A ; Raw block
#_0BFD04: db $0B, $07, $07, $0B, $19, $06, $19, $0B
#_0BFD0C: db $02, $0B, $08
#_0BFD0F: db $27 ; Repeat byte
#_0BFD10: db $19
#_0BFD11: db $84 ; Copy past
#_0BFD12: dw $8900
#_0BFD14: db $22 ; Repeat byte
#_0BFD15: db $08
#_0BFD16: db $00 ; Raw block
#_0BFD17: db $0B
#_0BFD18: db $25 ; Repeat byte
#_0BFD19: db $19
#_0BFD1A: db $01 ; Raw block
#_0BFD1B: db $00, $08
#_0BFD1D: db $83 ; Copy past
#_0BFD1E: dw $8A00
#_0BFD20: db $22 ; Repeat byte
#_0BFD21: db $08
#_0BFD22: db $01 ; Raw block
#_0BFD23: db $0B, $01
#_0BFD25: db $25 ; Repeat byte
#_0BFD26: db $19
#_0BFD27: db $45 ; Repeat word
#_0BFD28: dw $0B08
#_0BFD2A: db $03 ; Raw block
#_0BFD2B: db $0B, $08, $0B, $16
#_0BFD2F: db $25 ; Repeat byte
#_0BFD30: db $19
#_0BFD31: db $06 ; Raw block
#_0BFD32: db $08, $0B, $08, $08, $0B, $08, $08
#_0BFD39: db $23 ; Repeat byte
#_0BFD3A: db $0B
#_0BFD3B: db $02 ; Raw block
#_0BFD3C: db $07, $07, $19
#_0BFD3F: db $27 ; Repeat byte
#_0BFD40: db $0B
#_0BFD41: db $00 ; Raw block
#_0BFD42: db $08
#_0BFD43: db $2D ; Repeat byte
#_0BFD44: db $0B
#_0BFD45: db $07 ; Raw block
#_0BFD46: db $08, $0B, $04, $08, $08, $04, $08, $08
#_0BFD4E: db $83 ; Copy past
#_0BFD4F: dw $F000
#_0BFD51: db $01 ; Raw block
#_0BFD52: db $04, $02
#_0BFD54: db $83 ; Copy past
#_0BFD55: dw $EF00
#_0BFD57: db $FF ; End of Map 61

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen61_Low:
#_0BFD58: db $07 ; Raw block
#_0BFD59: db $FE, $FE, $59, $5A, $FE, $FE, $59, $5B
#_0BFD61: db $23 ; Repeat byte
#_0BFD62: db $E3
#_0BFD63: db $05 ; Raw block
#_0BFD64: db $5C, $93, $5B, $C5, $5D, $5E
#_0BFD6A: db $23 ; Repeat byte
#_0BFD6B: db $78
#_0BFD6C: db $02 ; Raw block
#_0BFD6D: db $5F, $60, $2D
#_0BFD70: db $22 ; Repeat byte
#_0BFD71: db $2E
#_0BFD72: db $05 ; Raw block
#_0BFD73: db $63, $93, $5B, $C5, $13, $87
#_0BFD79: db $63 ; Increment fill
#_0BFD7A: db $2F
#_0BFD7B: db $01 ; Raw block
#_0BFD7C: db $92, $22
#_0BFD7E: db $62 ; Increment fill
#_0BFD7F: db $33
#_0BFD80: db $01 ; Raw block
#_0BFD81: db $D5, $6D
#_0BFD83: db $83 ; Copy past
#_0BFD84: dw $1D00
#_0BFD86: db $0A ; Raw block
#_0BFD87: db $17, $36, $37, $19, $38, $92, $22, $39
#_0BFD8F: db $87, $88, $B8
#_0BFD92: db $85 ; Copy past
#_0BFD93: dw $2C00
#_0BFD95: db $63 ; Increment fill
#_0BFD96: db $3A
#_0BFD97: db $1F ; Raw block
#_0BFD98: db $92, $22, $3E, $28, $3F, $40, $6D, $7F
#_0BFDA0: db $80, $C5, $13, $81, $82, $41, $42, $83
#_0BFDA8: db $84, $22, $FB, $1F, $FA, $E6, $85, $87
#_0BFDB0: db $32, $C5, $13, $86, $18, $43, $44, $15
#_0BFDB8: db $62 ; Increment fill
#_0BFDB9: db $89
#_0BFDBA: db $62 ; Increment fill
#_0BFDBB: db $45
#_0BFDBC: db $00 ; Raw block
#_0BFDBD: db $8D
#_0BFDBE: db $83 ; Copy past
#_0BFDBF: dw $5D00
#_0BFDC1: db $04 ; Raw block
#_0BFDC2: db $8E, $21, $8F, $90, $20
#_0BFDC7: db $22 ; Repeat byte
#_0BFDC8: db $21
#_0BFDC9: db $07 ; Raw block
#_0BFDCA: db $91, $92, $90, $93, $87, $3A, $94, $13
#_0BFDD2: db $64 ; Increment fill
#_0BFDD3: db $48
#_0BFDD4: db $0E ; Raw block
#_0BFDD5: db $9A, $E9, $E9, $9B, $4D, $5A, $4E, $9E
#_0BFDDD: db $30, $9F, $13, $4F, $50, $18, $37
#_0BFDE4: db $63 ; Increment fill
#_0BFDE5: db $51
#_0BFDE6: db $0B ; Raw block
#_0BFDE7: db $A5, $55, $61, $56, $A8, $0A, $0A, $13
#_0BFDEF: db $A9, $57, $58, $19
#_0BFDF3: db $62 ; Increment fill
#_0BFDF4: db $59
#_0BFDF5: db $0A ; Raw block
#_0BFDF6: db $98, $92, $5C, $6B, $5D, $AD, $61, $61
#_0BFDFE: db $13, $A9, $37
#_0BFE01: db $62 ; Increment fill
#_0BFE02: db $1D
#_0BFE03: db $62 ; Increment fill
#_0BFE04: db $5E
#_0BFE05: db $0B ; Raw block
#_0BFE06: db $92, $A8, $0A, $AF, $87, $B0, $B1, $13
#_0BFE0E: db $A9, $FF, $21, $22
#_0BFE12: db $63 ; Increment fill
#_0BFE13: db $61
#_0BFE14: db $0F ; Raw block
#_0BFE15: db $85, $AD, $61, $61, $B2, $BD, $4B, $B3
#_0BFE1D: db $B4, $48, $49, $FA, $FA, $65, $48, $48
#_0BFE25: db $64 ; Increment fill
#_0BFE26: db $B6
#_0BFE27: db $03 ; Raw block
#_0BFE28: db $47, $D3, $54, $55
#_0BFE2C: db $62 ; Increment fill
#_0BFE2D: db $53
#_0BFE2E: db $00 ; Raw block
#_0BFE2F: db $53
#_0BFE30: db $83 ; Copy past
#_0BFE31: dw $E000
#_0BFE33: db $63 ; Increment fill
#_0BFE34: db $BB
#_0BFE35: db $07 ; Raw block
#_0BFE36: db $99, $50, $39, $9F, $4B, $39, $9F, $4B
#_0BFE3E: db $83 ; Copy past
#_0BFE3F: dw $F000
#_0BFE41: db $05 ; Raw block
#_0BFE42: db $3A, $4F, $BF, $39, $9F, $4B
#_0BFE48: db $FF ; End of Map 61

;===================================================================================================
; FREE ROM: 0x27
;===================================================================================================
NULL_0BFE49:
#_0BFE49: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0BFE51: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0BFE59: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0BFE61: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0BFE69: db $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

Overworld_SetFixedColAndScroll:
#_0BFE70: STZ.b $1D

#_0BFE72: REP #$30

#_0BFE74: LDX.w #$19C6 ; RGB: #307030

#_0BFE77: LDA.b $8A
#_0BFE79: CMP.w #$0080 ; OW 80
#_0BFE7C: BNE .not_ms_grove

#_0BFE7E: LDA.b $A0
#_0BFE80: CMP.w #$0181 ; OW 81
#_0BFE83: BNE .use_this_color

#_0BFE85: INC.b $1D
#_0BFE87: BRA .check_world

;---------------------------------------------------------------------------------------------------

.not_ms_grove
#_0BFE89: CMP.w #$0081
#_0BFE8C: BEQ .use_this_color

#_0BFE8E: LDX.w #$0000 ; RGB: #000000
#_0BFE91: CMP.w #$005B
#_0BFE94: BEQ .use_this_color

#_0BFE96: AND.w #$00BF
#_0BFE99: CMP.w #$0003
#_0BFE9C: BEQ .use_this_color

#_0BFE9E: CMP.w #$0005
#_0BFEA1: BEQ .use_this_color

#_0BFEA3: CMP.w #$0007
#_0BFEA6: BEQ .use_this_color

;---------------------------------------------------------------------------------------------------

.check_world
#_0BFEA8: LDX.w #$2669 ; RGB: #489848

#_0BFEAB: LDA.b $8A
#_0BFEAD: AND.w #$0040
#_0BFEB0: BEQ .use_this_color

#_0BFEB2: LDX.w #$2A32 ; RGB: #908850

;---------------------------------------------------------------------------------------------------

.use_this_color
#_0BFEB5: TXA
#_0BFEB6: STA.l $7EC500
#_0BFEBA: STA.l $7EC300
#_0BFEBE: STA.l $7EC540
#_0BFEC2: STA.l $7EC340

#_0BFEC6: LDA.w #$4020 ; Fixed color RGB: #000000
#_0BFEC9: STA.b $9C

#_0BFECB: LDA.w #$8040
#_0BFECE: STA.b $9D

#_0BFED0: LDA.b $8A ; OW 00
#_0BFED2: BEQ .is_woods_or_pyramid

#_0BFED4: CMP.w #$0070 ; OW 70
#_0BFED7: BNE .not_mire

#_0BFED9: JMP.w .exit_and_trigger

.not_mire
#_0BFEDC: CMP.w #$0040 ; OW 40
#_0BFEDF: BEQ .is_woods_or_pyramid

#_0BFEE1: CMP.w #$005B ; OW 5B
#_0BFEE4: BEQ .is_woods_or_pyramid

#_0BFEE6: LDX.w #$4C26 ; Fixed color RGB: #306060
#_0BFEE9: LDY.w #$8C4C

#_0BFEEC: CMP.w #$0003 ; OW 03
#_0BFEEF: BEQ .use_this_fixed_col

#_0BFEF1: CMP.w #$0005 ; OW 05
#_0BFEF4: BEQ .use_this_fixed_col

#_0BFEF6: CMP.w #$0007 ; OW 07
#_0BFEF9: BEQ .use_this_fixed_col

#_0BFEFB: LDX.w #$4A26 ; Fixed color RGB: #305038
#_0BFEFE: LDY.w #$874A

#_0BFF01: CMP.w #$0043 ; OW 43
#_0BFF04: BEQ .use_this_fixed_col

#_0BFF06: CMP.w #$0045 ; OW 45
#_0BFF09: BEQ .use_this_fixed_col

#_0BFF0B: SEP #$30

#_0BFF0D: INC.b $15

#_0BFF0F: RTL

;---------------------------------------------------------------------------------------------------

.use_this_fixed_col
#_0BFF10: STX.b $9C
#_0BFF12: STY.b $9D

.is_woods_or_pyramid
#_0BFF14: LDA.b $11
#_0BFF16: AND.w #$00FF
#_0BFF19: CMP.w #$0004
#_0BFF1C: BEQ .transitioning

#_0BFF1E: LDA.b $E8
#_0BFF20: STA.b $E6

#_0BFF22: LDA.b $E2
#_0BFF24: STA.b $E0

#_0BFF26: LDA.b $8A
#_0BFF28: AND.w #$003F
#_0BFF2B: CMP.w #$001B ; OW 1B, OW 5B
#_0BFF2E: BNE .exit_and_trigger

#_0BFF30: LDA.b $E2
#_0BFF32: SEC
#_0BFF33: SBC.w #$0778
#_0BFF36: LSR A
#_0BFF37: TAY

#_0BFF38: AND.w #$4000
#_0BFF3B: BEQ .positive_a

#_0BFF3D: TYA
#_0BFF3E: ORA.w #$8000
#_0BFF41: TAY

.positive_a
#_0BFF42: STY.b $00

#_0BFF44: LDA.b $E2
#_0BFF46: SEC
#_0BFF47: SBC.b $00
#_0BFF49: STA.b $E0

#_0BFF4B: LDA.b $E6
#_0BFF4D: CMP.w #$06C0
#_0BFF50: BCC .offset_type_c

#_0BFF52: SEC
#_0BFF53: SBC.w #$0600
#_0BFF56: AND.w #$03FF
#_0BFF59: CMP.w #$0180
#_0BFF5C: BCS .offset_type_b

#_0BFF5E: LSR A
#_0BFF5F: ORA.w #$0600
#_0BFF62: BRA .use_this_bg1vofs

.offset_type_b
#_0BFF64: LDA.w #$06C0

#_0BFF67: BRA .use_this_bg1vofs

.offset_type_c
#_0BFF69: LDA.b $E6
#_0BFF6B: AND.w #$00FF
#_0BFF6E: LSR A
#_0BFF6F: ORA.w #$0600

;---------------------------------------------------------------------------------------------------

.use_this_bg1vofs
#_0BFF72: STA.b $E6

#_0BFF74: BRA .exit_and_trigger

;---------------------------------------------------------------------------------------------------

.transitioning
#_0BFF76: LDA.b $8A
#_0BFF78: AND.w #$003F
#_0BFF7B: CMP.w #$001B ; OW 1B, OW 5B
#_0BFF7E: BNE .exit_and_trigger

#_0BFF80: LDA.b $E8
#_0BFF82: STA.b $E6

#_0BFF84: LDA.b $E2
#_0BFF86: STA.b $E0

#_0BFF88: LDA.w $0410
#_0BFF8B: AND.w #$00FF
#_0BFF8E: CMP.w #$0008
#_0BFF91: BEQ .do_vertical

#_0BFF93: LDA.w #$0838
#_0BFF96: STA.b $E0

.do_vertical
#_0BFF98: LDA.w #$06C0
#_0BFF9B: STA.b $E6

;---------------------------------------------------------------------------------------------------

.exit_and_trigger
#_0BFF9D: SEP #$20

#_0BFF9F: LDA.b #$01
#_0BFFA1: STA.b $1D

#_0BFFA3: SEP #$30

#_0BFFA5: INC.b $15

#_0BFFA7: RTL

;===================================================================================================

WallMaster_SendPlayerToLastEntrance:
#_0BFFA8: JSL SaveDungeonKeys
#_0BFFAC: JSL Underworld_FlagRoomData_Quadrants
#_0BFFB0: JSL Sprite_ResetAll

#_0BFFB4: STZ.w $04AA

#_0BFFB7: LDA.b #$11
#_0BFFB9: STA.b $10
#_0BFFBB: STZ.b $11

#_0BFFBD: STZ.b $14

;===================================================================================================

ResetSomeThingsAfterDeath:
#_0BFFBF: STZ.w $0345

; !WTF this is changed to your room ID from $09F538
#_0BFFC2: STA.w $005E

#_0BFFC5: STZ.w $03F3
#_0BFFC8: STZ.w $0322

#_0BFFCB: STZ.w $02E4
#_0BFFCE: STZ.w $0ABD
#_0BFFD1: STZ.w $036B
#_0BFFD4: STZ.w $0373

#_0BFFD7: STZ.b $27
#_0BFFD9: STZ.b $28
#_0BFFDB: STZ.b $29
#_0BFFDD: STZ.b $24

#_0BFFDF: STZ.w $0351
#_0BFFE2: STZ.w $0316
#_0BFFE5: STZ.w $031F

#_0BFFE8: LDA.b #$00 ; LINKSTATE 00
#_0BFFEA: STA.b $5D

#_0BFFEC: STZ.b $4B

;===================================================================================================

ResetAncillaAndLink:
#_0BFFEE: JSL Ancilla_TerminateSelectInteractives

#_0BFFF2: JML Link_ResetProperties_A

;===================================================================================================
; FREE ROM: 0x0A
;===================================================================================================
NULL_0BFFF6:
#_0BFFF6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0BFFFE: db $FF, $FF

;===================================================================================================

org $0A8000

;===================================================================================================

RoomDataTiles_0104:
#_0A8000: db $E3, $00 ; Floors and Layout
#_0A8002: db $FF, $AA, $02 ; 0x0102: Wall Inner Corner ▜ | { 3A, 28 } | Size: 00
#_0A8005: db $9A, $A2, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 28 } | Size: 0A
#_0A8008: db $FE, $2A, $00 ; 0x0100: Wall Inner Corner ▛ | { 22, 28 } | Size: 00
#_0A800B: db $A0, $A0, $3E ; 0x003E: Top Wall Column ↔ | { 28, 28 } | Size: 00
#_0A800E: db $B4, $A1, $4F ; 0x004F: Shelf ↔ | { 2D, 28 } | Size: 01
#_0A8011: db $FF, $5A, $29 ; 0x0129: Decoration | { 35, 28 } | Size: 00
#_0A8014: db $98, $EE, $3B ; 0x003B: Bottom Wall Decoration ↔ | { 26, 3B } | Size: 02
#_0A8017: db $97, $AF, $FA ; 0x0FAF: Pot | { 25, 2B } | Size: 0F
#_0A801A: db $97, $B7, $FA ; 0x0FAF: Pot | { 25, 2D } | Size: 0F
#_0A801D: db $97, $BF, $FA ; 0x0FAF: Pot | { 25, 2F } | Size: 0F
#_0A8020: db $FE, $7A, $E8 ; 0x0128: Bed | { 27, 2B } | Size: 00
#_0A8023: db $E1, $DA, $F9 ; 0x0F99: Chest | { 38, 36 } | Size: 06
#_0A8026: db $FE, $7D, $A3 ; 0x0123: Table | { 27, 36 } | Size: 00
#_0A8029: db $CD, $C0, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 33, 30 } | Size: 04
#_0A802C: db $D4, $B8, $3C ; 0x003C: Double Chair ↔ | { 35, 2E } | Size: 00
#_0A802F: db $88, $C4, $76 ; 0x0076: Left Wall Decoration ↕ | { 22, 31 } | Size: 00
#_0A8032: db $EC, $C4, $77 ; 0x0077: Right Wall Decoration ↕ | { 3B, 31 } | Size: 00
#_0A8035: db $8B, $90, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 24 } | Size: 0C
#_0A8038: db $CA, $90, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 24 } | Size: 08
#_0A803B: db $FF, $FF ; Layer01
#_0A803D: db $FF, $FF ; Layer02
#_0A803F: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0104:
#_0A8041: db $81, $00 ; Door 0x00 | Dir:01 | Pos:10
#_0A8043: db $81, $12 ; Door 0x12 | Dir:01 | Pos:10
#_0A8045: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0055:
#_0A8047: db $E5, $10 ; Floors and Layout
#_0A8049: db $FC, $82, $00 ; 0x0100: Wall Inner Corner ▛ | { 08, 08 } | Size: 00
#_0A804C: db $33, $23, $01 ; 0x0001: Top Wall Horiz. ↔ | { 0C, 08 } | Size: 0F
#_0A804F: db $AA, $20, $01 ; 0x0001: Top Wall Horiz. ↔ | { 2A, 08 } | Size: 08
#_0A8052: db $FF, $A2, $02 ; 0x0102: Wall Inner Corner ▜ | { 3A, 08 } | Size: 00
#_0A8055: db $21, $33, $61 ; 0x0061: Left Wall Vertic. ↕ | { 08, 0C } | Size: 07
#_0A8058: db $FC, $86, $81 ; 0x0101: Wall Inner Corner ▙ | { 08, 1A } | Size: 00
#_0A805B: db $FD, $46, $83 ; 0x0103: Wall Inner Corner ▟ | { 14, 1A } | Size: 00
#_0A805E: db $50, $61, $62 ; 0x0062: Right Wall Horiz. ↕ | { 14, 18 } | Size: 01
#_0A8061: db $FD, $45, $07 ; 0x0107: Wall Outer Corner ▛ | { 14, 14 } | Size: 00
#_0A8064: db $62, $51, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 18, 14 } | Size: 09
#_0A8067: db $FE, $A5, $05 ; 0x0105: Wall Outer Corner ▜ | { 2A, 14 } | Size: 00
#_0A806A: db $A8, $61, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 18 } | Size: 01
#_0A806D: db $FE, $A6, $81 ; 0x0101: Wall Inner Corner ▙ | { 2A, 1A } | Size: 00
#_0A8070: db $FC, $B2, $C8 ; 0x0108: Wall Corner (Lower) | { 0B, 0B } | Size: 00
#_0A8073: db $3F, $2F, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0F, 0B } | Size: 0F
#_0A8076: db $BC, $2F, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2F, 0B } | Size: 03
#_0A8079: db $FF, $72, $CA ; 0x010A: Wall Corner (Lower) | { 37, 0B } | Size: 00
#_0A807C: db $DC, $3F, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 0F } | Size: 03
#_0A807F: db $FF, $75, $CB ; 0x010B: Wall Corner (Lower) | { 37, 17 } | Size: 00
#_0A8082: db $C4, $5E, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 31, 17 } | Size: 02
#_0A8085: db $FE, $D5, $C9 ; 0x0109: Wall Corner (Lower) | { 2D, 17 } | Size: 00
#_0A8088: db $B4, $54, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 2D, 15 } | Size: 00
#_0A808B: db $FE, $D4, $4D ; 0x010D: Wall Corner (Lower) | { 2D, 11 } | Size: 00
#_0A808E: db $56, $47, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 15, 11 } | Size: 0B
#_0A8091: db $FD, $14, $4F ; 0x010F: Wall Corner (Lower) | { 11, 11 } | Size: 00
#_0A8094: db $44, $54, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 11, 15 } | Size: 00
#_0A8097: db $FD, $15, $CB ; 0x010B: Wall Corner (Lower) | { 11, 17 } | Size: 00
#_0A809A: db $3C, $5C, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0F, 17 } | Size: 00
#_0A809D: db $FC, $B5, $C9 ; 0x0109: Wall Corner (Lower) | { 0B, 17 } | Size: 00
#_0A80A0: db $2C, $3F, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0B, 0F } | Size: 03
#_0A80A3: db $FC, $69, $00 ; 0x0100: Wall Inner Corner ▛ | { 06, 24 } | Size: 00
#_0A80A6: db $1A, $A1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 28 } | Size: 09
#_0A80A9: db $FC, $6E, $81 ; 0x0101: Wall Inner Corner ▙ | { 06, 3A } | Size: 00
#_0A80AC: db $FF, $89, $02 ; 0x0102: Wall Inner Corner ▜ | { 38, 24 } | Size: 00
#_0A80AF: db $E2, $A0, $62 ; 0x0062: Right Wall Horiz. ↕ | { 38, 28 } | Size: 08
#_0A80B2: db $FF, $8E, $03 ; 0x0103: Wall Inner Corner ▟ | { 38, 38 } | Size: 00
#_0A80B5: db $9A, $E1, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 26, 38 } | Size: 09
#_0A80B8: db $FE, $2E, $01 ; 0x0101: Wall Inner Corner ▙ | { 22, 38 } | Size: 00
#_0A80BB: db $88, $D2, $61 ; 0x0061: Left Wall Vertic. ↕ | { 22, 34 } | Size: 02
#_0A80BE: db $FE, $2C, $05 ; 0x0105: Wall Outer Corner ▜ | { 22, 30 } | Size: 00
#_0A80C1: db $69, $C0, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1A, 30 } | Size: 04
#_0A80C4: db $FD, $6C, $07 ; 0x0107: Wall Outer Corner ▛ | { 16, 30 } | Size: 00
#_0A80C7: db $58, $D3, $62 ; 0x0062: Right Wall Horiz. ↕ | { 16, 34 } | Size: 03
#_0A80CA: db $FD, $6E, $83 ; 0x0103: Wall Inner Corner ▟ | { 16, 3A } | Size: 00
#_0A80CD: db $FC, $99, $C8 ; 0x0108: Wall Corner (Lower) | { 09, 27 } | Size: 00
#_0A80D0: db $37, $9F, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0D, 27 } | Size: 0F
#_0A80D3: db $B4, $9F, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2D, 27 } | Size: 03
#_0A80D6: db $FF, $59, $CA ; 0x010A: Wall Corner (Lower) | { 35, 27 } | Size: 00
#_0A80D9: db $D5, $AC, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 35, 2B } | Size: 04
#_0A80DC: db $FF, $5D, $4B ; 0x010B: Wall Corner (Lower) | { 35, 35 } | Size: 00
#_0A80DF: db $A5, $D5, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 29, 35 } | Size: 05
#_0A80E2: db $FE, $5D, $49 ; 0x0109: Wall Corner (Lower) | { 25, 35 } | Size: 00
#_0A80E5: db $94, $C5, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 25, 31 } | Size: 01
#_0A80E8: db $FE, $5B, $4D ; 0x010D: Wall Corner (Lower) | { 25, 2D } | Size: 00
#_0A80EB: db $5D, $B6, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 17, 2D } | Size: 06
#_0A80EE: db $FD, $3B, $4F ; 0x010F: Wall Corner (Lower) | { 13, 2D } | Size: 00
#_0A80F1: db $4C, $C5, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 13, 31 } | Size: 01
#_0A80F4: db $FD, $3D, $0B ; 0x010B: Wall Corner (Lower) | { 13, 34 } | Size: 00
#_0A80F7: db $34, $D2, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0D, 34 } | Size: 02
#_0A80FA: db $25, $AC, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 09, 2B } | Size: 04
#_0A80FD: db $FC, $9D, $09 ; 0x0109: Wall Corner (Lower) | { 09, 34 } | Size: 00
#_0A8100: db $C1, $3D, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 30, 0F } | Size: 05
#_0A8103: db $C1, $39, $3F ; 0x003F: Water Edge ↔ | { 30, 0E } | Size: 05
#_0A8106: db $C1, $3F, $79 ; 0x0079: Water Edge ↕ | { 30, 0F } | Size: 07
#_0A8109: db $C1, $5D, $40 ; 0x0040: Water Edge ↔ | { 30, 17 } | Size: 05
#_0A810C: db $DD, $3F, $7A ; 0x007A: Water Edge ↕ | { 37, 0F } | Size: 07
#_0A810F: db $68, $25, $55 ; 0x0055: Wall Torches ↔ | { 1A, 09 } | Size: 01
#_0A8112: db $68, $55, $56 ; 0x0056: Wall Torches ↔ | { 1A, 15 } | Size: 01
#_0A8115: db $2C, $6C, $56 ; 0x0056: Wall Torches ↔ | { 0B, 1B } | Size: 00
#_0A8118: db $44, $6C, $56 ; 0x0056: Wall Torches ↔ | { 11, 1B } | Size: 00
#_0A811B: db $2C, $94, $55 ; 0x0055: Wall Torches ↔ | { 0B, 25 } | Size: 00
#_0A811E: db $44, $94, $55 ; 0x0055: Wall Torches ↔ | { 11, 25 } | Size: 00
#_0A8121: db $BC, $94, $55 ; 0x0055: Wall Torches ↔ | { 2F, 25 } | Size: 00
#_0A8124: db $B0, $A8, $DC ; 0x00DC: Chest Platform? ↔ ↕ | { 2C, 2A } | Size: 00
#_0A8127: db $CF, $C7, $FA ; 0x0FAF: Pot | { 33, 31 } | Size: 0F
#_0A812A: db $CF, $CF, $FA ; 0x0FAF: Pot | { 33, 33 } | Size: 0F
#_0A812D: db $C1, $B2, $F9 ; 0x0F99: Chest | { 30, 2C } | Size: 06
#_0A8130: db $FC, $C1, $60 ; 0x0120: Torch Lit | { 0C, 05 } | Size: 00
#_0A8133: db $FC, $A1, $60 ; 0x0120: Torch Lit | { 0A, 05 } | Size: 00
#_0A8136: db $39, $D3, $F9 ; 0x0F9D: Stair | { 0E, 34 } | Size: 07
#_0A8139: db $24, $E1, $22 ; 0x0022: Horizontal Rail ↔ | { 09, 38 } | Size: 01
#_0A813C: db $48, $E1, $22 ; 0x0022: Horizontal Rail ↔ | { 12, 38 } | Size: 01
#_0A813F: db $69, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1A, 34 } | Size: 06
#_0A8142: db $8B, $F2, $00 ; 0x0000: Ceiling ↔ | { 22, 3C } | Size: 0E
#_0A8145: db $F3, $90, $60 ; 0x0060: Ceiling ↕ | { 3C, 24 } | Size: 0C
#_0A8148: db $08, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 24 } | Size: 03
#_0A814B: db $08, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 34 } | Size: 02
#_0A814E: db $63, $61, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 18, 18 } | Size: 0D
#_0A8151: db $A0, $63, $60 ; 0x0060: Ceiling ↕ | { 28, 18 } | Size: 03
#_0A8154: db $00, $10, $00 ; 0x0000: Ceiling ↔ | { 00, 04 } | Size: 00
#_0A8157: db $00, $18, $00 ; 0x0000: Ceiling ↔ | { 00, 06 } | Size: 00
#_0A815A: db $01, $23, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 08 } | Size: 07
#_0A815D: db $01, $61, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 18 } | Size: 05
#_0A8160: db $FF, $FF ; Layer01
#_0A8162: db $FF, $FF ; Layer02
#_0A8164: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0055:
#_0A8166: db $90, $02 ; Door 0x02 | Dir:00 | Pos:12
#_0A8168: db $61, $00 ; Door 0x00 | Dir:01 | Pos:0C
#_0A816A: db $61, $12 ; Door 0x12 | Dir:01 | Pos:0C
#_0A816C: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00E1:
#_0A816E: db $51, $04 ; Floors and Layout
#_0A8170: db $19, $84, $0D ; 0x000D: Diagonal Wall ◤ | { 06, 21 } | Size: 04
#_0A8173: db $41, $61, $01 ; 0x0001: Top Wall Horiz. ↔ | { 10, 18 } | Size: 05
#_0A8176: db $FD, $A6, $02 ; 0x0102: Wall Inner Corner ▜ | { 1A, 18 } | Size: 00
#_0A8179: db $1B, $88, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 22 } | Size: 0C
#_0A817C: db $FC, $6E, $81 ; 0x0101: Wall Inner Corner ▙ | { 06, 3A } | Size: 00
#_0A817F: db $FD, $6E, $83 ; 0x0103: Wall Inner Corner ▟ | { 16, 3A } | Size: 00
#_0A8182: db $58, $A6, $10 ; 0x0010: Diagonal Wall ◢ | { 16, 29 } | Size: 02
#_0A8185: db $5A, $A8, $62 ; 0x0062: Right Wall Horiz. ↕ | { 16, 2A } | Size: 08
#_0A8188: db $68, $8A, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1A, 22 } | Size: 02
#_0A818B: db $24, $85, $19 ; 0x0019: Diagonal Wall ◤ | { 09, 21 } | Size: 01
#_0A818E: db $25, $8A, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 09, 22 } | Size: 06
#_0A8191: db $FC, $9C, $09 ; 0x0109: Wall Corner (Lower) | { 09, 30 } | Size: 00
#_0A8194: db $34, $C2, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0D, 30 } | Size: 02
#_0A8197: db $FD, $3C, $0B ; 0x010B: Wall Corner (Lower) | { 13, 30 } | Size: 00
#_0A819A: db $4C, $A6, $1C ; 0x001C: Diagonal Wall ◢ | { 13, 29 } | Size: 02
#_0A819D: db $4C, $AA, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 13, 2A } | Size: 02
#_0A81A0: db $5C, $7B, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 17, 1E } | Size: 03
#_0A81A3: db $40, $6F, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 10, 1B } | Size: 03
#_0A81A6: db $FD, $76, $CA ; 0x010A: Wall Corner (Lower) | { 17, 1B } | Size: 00
#_0A81A9: db $FE, $29, $81 ; 0x0101: Wall Inner Corner ▙ | { 22, 26 } | Size: 00
#_0A81AC: db $9A, $9A, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 26, 26 } | Size: 0A
#_0A81AF: db $FF, $A9, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 26 } | Size: 00
#_0A81B2: db $94, $81, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 25, 20 } | Size: 01
#_0A81B5: db $FE, $58, $C9 ; 0x0109: Wall Corner (Lower) | { 25, 23 } | Size: 00
#_0A81B8: db $A5, $8E, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 29, 23 } | Size: 06
#_0A81BB: db $DC, $81, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 20 } | Size: 01
#_0A81BE: db $FF, $78, $CB ; 0x010B: Wall Corner (Lower) | { 37, 23 } | Size: 00
#_0A81C1: db $FE, $57, $08 ; 0x0108: Wall Corner (Lower) | { 25, 1C } | Size: 00
#_0A81C4: db $A5, $72, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 29, 1C } | Size: 06
#_0A81C7: db $FF, $77, $0A ; 0x010A: Wall Corner (Lower) | { 37, 1C } | Size: 00
#_0A81CA: db $AF, $2A, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 2B, 0A } | Size: 0E
#_0A81CD: db $94, $6E, $22 ; 0x0022: Horizontal Rail ↔ | { 25, 1B } | Size: 02
#_0A81D0: db $D4, $6E, $22 ; 0x0022: Horizontal Rail ↔ | { 35, 1B } | Size: 02
#_0A81D3: db $24, $D1, $22 ; 0x0022: Horizontal Rail ↔ | { 09, 34 } | Size: 01
#_0A81D6: db $48, $D1, $22 ; 0x0022: Horizontal Rail ↔ | { 12, 34 } | Size: 01
#_0A81D9: db $38, $C3, $F9 ; 0x0F9C: Stair | { 0E, 30 } | Size: 03
#_0A81DC: db $0B, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 0F
#_0A81DF: db $4A, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 04 } | Size: 0B
#_0A81E2: db $08, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 14 } | Size: 03
#_0A81E5: db $08, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 24 } | Size: 03
#_0A81E8: db $08, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 34 } | Size: 02
#_0A81EB: db $19, $61, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 06, 18 } | Size: 05
#_0A81EE: db $1B, $50, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 06, 14 } | Size: 0C
#_0A81F1: db $59, $50, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 14 } | Size: 04
#_0A81F4: db $6C, $A4, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 1B, 29 } | Size: 00
#_0A81F7: db $68, $AB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1A, 2A } | Size: 03
#_0A81FA: db $68, $E8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1A, 3A } | Size: 00
#_0A81FD: db $8B, $AB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 2A } | Size: 0F
#_0A8200: db $CA, $AB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 2A } | Size: 0B
#_0A8203: db $8B, $E8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 3A } | Size: 0C
#_0A8206: db $CA, $E8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 3A } | Size: 08
#_0A8209: db $FF, $FF ; Layer01
#_0A820B: db $6D, $75, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1B, 1D } | Size: 05
#_0A820E: db $6D, $85, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1B, 21 } | Size: 05
#_0A8211: db $FF, $FF ; Layer02
#_0A8213: db $28, $86, $AC ; 0x00AC: Diagonal Ceiling ◢ | { 0A, 21 } | Size: 02
#_0A8216: db $54, $99, $A9 ; 0x00A9: Diagonal Ceiling ◤ | { 15, 26 } | Size: 01
#_0A8219: db $41, $6D, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 10, 1B } | Size: 05
#_0A821C: db $5C, $6D, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 17, 1B } | Size: 01
#_0A821F: db $2F, $88, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0B, 22 } | Size: 0C
#_0A8222: db $26, $8B, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 09, 22 } | Size: 0B
#_0A8225: db $4C, $A9, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 13, 2A } | Size: 01
#_0A8228: db $26, $C0, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 09, 30 } | Size: 08
#_0A822B: db $4C, $C0, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 13, 30 } | Size: 00
#_0A822E: db $9B, $75, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 26, 1D } | Size: 0D
#_0A8231: db $9B, $88, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 26, 22 } | Size: 0C
#_0A8234: db $D8, $75, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 36, 1D } | Size: 01
#_0A8237: db $D8, $88, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 36, 22 } | Size: 00
#_0A823A: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E1:
#_0A823C: db $A2, $40 ; Door 0x40 | Dir:02 | Pos:14
#_0A823E: db $61, $0E ; Door 0x0E | Dir:01 | Pos:0C
#_0A8240: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00E3:
#_0A8242: db $51, $00 ; Floors and Layout
#_0A8244: db $09, $C0, $0E ; 0x000E: Diagonal Wall ◣ | { 02, 30 } | Size: 04
#_0A8247: db $08, $C2, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 30 } | Size: 02
#_0A824A: db $68, $4A, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1A, 12 } | Size: 02
#_0A824D: db $68, $A2, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1A, 28 } | Size: 02
#_0A8250: db $25, $B4, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 09, 2D } | Size: 04
#_0A8253: db $FC, $59, $C8 ; 0x0108: Wall Corner (Lower) | { 05, 27 } | Size: 00
#_0A8256: db $14, $AC, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 2B } | Size: 00
#_0A8259: db $25, $9E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 09, 27 } | Size: 06
#_0A825C: db $FC, $5B, $49 ; 0x0109: Wall Corner (Lower) | { 05, 2D } | Size: 00
#_0A825F: db $FD, $3B, $4D ; 0x010D: Wall Corner (Lower) | { 13, 2D } | Size: 00
#_0A8262: db $4C, $C7, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 13, 31 } | Size: 03
#_0A8265: db $FD, $3D, $C9 ; 0x0109: Wall Corner (Lower) | { 13, 37 } | Size: 00
#_0A8268: db $FD, $79, $CA ; 0x010A: Wall Corner (Lower) | { 17, 27 } | Size: 00
#_0A826B: db $5D, $AD, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 17, 2B } | Size: 05
#_0A826E: db $FD, $7D, $CB ; 0x010B: Wall Corner (Lower) | { 17, 37 } | Size: 00
#_0A8271: db $FE, $61, $00 ; 0x0100: Wall Inner Corner ▛ | { 26, 04 } | Size: 00
#_0A8274: db $9A, $21, $61 ; 0x0061: Left Wall Vertic. ↕ | { 26, 08 } | Size: 09
#_0A8277: db $FE, $66, $81 ; 0x0101: Wall Inner Corner ▙ | { 26, 1A } | Size: 00
#_0A827A: db $FF, $61, $02 ; 0x0102: Wall Inner Corner ▜ | { 36, 04 } | Size: 00
#_0A827D: db $DA, $21, $62 ; 0x0062: Right Wall Horiz. ↕ | { 36, 08 } | Size: 09
#_0A8280: db $FF, $66, $83 ; 0x0103: Wall Inner Corner ▟ | { 36, 1A } | Size: 00
#_0A8283: db $FE, $91, $C8 ; 0x0108: Wall Corner (Lower) | { 29, 07 } | Size: 00
#_0A8286: db $A5, $2D, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 29, 0B } | Size: 05
#_0A8289: db $FE, $95, $C9 ; 0x0109: Wall Corner (Lower) | { 29, 17 } | Size: 00
#_0A828C: db $B4, $1E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2D, 07 } | Size: 02
#_0A828F: db $FF, $31, $CA ; 0x010A: Wall Corner (Lower) | { 33, 07 } | Size: 00
#_0A8292: db $CD, $2D, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 33, 0B } | Size: 05
#_0A8295: db $FF, $35, $CB ; 0x010B: Wall Corner (Lower) | { 33, 17 } | Size: 00
#_0A8298: db $B4, $5E, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2D, 17 } | Size: 02
#_0A829B: db $89, $B4, $0D ; 0x000D: Diagonal Wall ◤ | { 22, 2D } | Size: 04
#_0A829E: db $89, $C0, $0E ; 0x000E: Diagonal Wall ◣ | { 22, 30 } | Size: 04
#_0A82A1: db $D1, $90, $0F ; 0x000F: Diagonal Wall ◥ | { 34, 24 } | Size: 04
#_0A82A4: db $D1, $E4, $10 ; 0x0010: Diagonal Wall ◢ | { 34, 39 } | Size: 04
#_0A82A7: db $88, $BB, $61 ; 0x0061: Left Wall Vertic. ↕ | { 22, 2E } | Size: 03
#_0A82AA: db $E8, $BB, $62 ; 0x0062: Right Wall Horiz. ↕ | { 3A, 2E } | Size: 03
#_0A82AD: db $94, $B5, $19 ; 0x0019: Diagonal Wall ◤ | { 25, 2D } | Size: 01
#_0A82B0: db $94, $C1, $1A ; 0x001A: Diagonal Wall ◣ | { 25, 30 } | Size: 01
#_0A82B3: db $B0, $9F, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2C, 27 } | Size: 03
#_0A82B6: db $D0, $9D, $1B ; 0x001B: Diagonal Wall ◥ | { 34, 27 } | Size: 01
#_0A82B9: db $D0, $D9, $1C ; 0x001C: Diagonal Wall ◢ | { 34, 36 } | Size: 01
#_0A82BC: db $B0, $DF, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2C, 37 } | Size: 03
#_0A82BF: db $94, $BA, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 25, 2E } | Size: 02
#_0A82C2: db $DC, $BA, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 2E } | Size: 02
#_0A82C5: db $14, $C5, $22 ; 0x0022: Horizontal Rail ↔ | { 05, 31 } | Size: 01
#_0A82C8: db $49, $C6, $69 ; 0x0069: Vertical Rail ↕ | { 12, 31 } | Size: 06
#_0A82CB: db $30, $B7, $F9 ; 0x0F9C: Stair | { 0C, 2D } | Size: 03
#_0A82CE: db $09, $D5, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 02, 35 } | Size: 05
#_0A82D1: db $88, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 04 } | Size: 03
#_0A82D4: db $88, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 14 } | Size: 02
#_0A82D7: db $E8, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 04 } | Size: 03
#_0A82DA: db $E8, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 14 } | Size: 02
#_0A82DD: db $89, $91, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 22, 24 } | Size: 05
#_0A82E0: db $89, $D5, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 22, 35 } | Size: 05
#_0A82E3: db $D5, $91, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 35, 24 } | Size: 05
#_0A82E6: db $D5, $F5, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 35, 3D } | Size: 05
#_0A82E9: db $FF, $FF ; Layer01
#_0A82EB: db $FE, $C2, $BF ; 0x013F: Magic bat altar | { 2C, 0A } | Size: 00
#_0A82EE: db $B3, $BB, $FA ; 0x0FAF: Pot | { 2C, 2E } | Size: 0F
#_0A82F1: db $CB, $CB, $FA ; 0x0FAF: Pot | { 32, 32 } | Size: 0F
#_0A82F4: db $6D, $B5, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1B, 2D } | Size: 05
#_0A82F7: db $6D, $C5, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1B, 31 } | Size: 05
#_0A82FA: db $B1, $6E, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2C, 1B } | Size: 06
#_0A82FD: db $C1, $6E, $62 ; 0x0062: Right Wall Horiz. ↕ | { 30, 1B } | Size: 06
#_0A8300: db $FF, $FF ; Layer02
#_0A8302: db $1B, $A1, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 06, 28 } | Size: 0D
#_0A8305: db $4D, $A3, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 13, 28 } | Size: 07
#_0A8308: db $4D, $DC, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 13, 37 } | Size: 04
#_0A830B: db $94, $BB, $AC ; 0x00AC: Diagonal Ceiling ◢ | { 25, 2E } | Size: 03
#_0A830E: db $94, $CF, $AB ; 0x00AB: Diagonal Ceiling ◥ | { 25, 33 } | Size: 03
#_0A8311: db $D0, $A3, $AA ; 0x00AA: Diagonal Ceiling ◣ | { 34, 28 } | Size: 03
#_0A8314: db $D0, $CF, $A9 ; 0x00A9: Diagonal Ceiling ◤ | { 34, 33 } | Size: 03
#_0A8317: db $97, $BC, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 25, 2F } | Size: 0C
#_0A831A: db $CD, $BC, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 33, 2F } | Size: 04
#_0A831D: db $B1, $9D, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2C, 27 } | Size: 05
#_0A8320: db $B1, $CD, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2C, 33 } | Size: 05
#_0A8323: db $AA, $23, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2A, 08 } | Size: 0B
#_0A8326: db $AA, $5C, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2A, 17 } | Size: 08
#_0A8329: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E3:
#_0A832B: db $B2, $4A ; Door 0x4A | Dir:02 | Pos:16
#_0A832D: db $B0, $40 ; Door 0x40 | Dir:00 | Pos:16
#_0A832F: db $61, $0E ; Door 0x0E | Dir:01 | Pos:0C
#_0A8331: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00E2:
#_0A8333: db $51, $04 ; Floors and Layout
#_0A8335: db $FC, $61, $00 ; 0x0100: Wall Inner Corner ▛ | { 06, 04 } | Size: 00
#_0A8338: db $19, $22, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 08 } | Size: 06
#_0A833B: db $FC, $65, $01 ; 0x0101: Wall Inner Corner ▙ | { 06, 14 } | Size: 00
#_0A833E: db $FC, $A5, $05 ; 0x0105: Wall Outer Corner ▜ | { 0A, 14 } | Size: 00
#_0A8341: db $2A, $61, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0A, 18 } | Size: 09
#_0A8344: db $FC, $AA, $84 ; 0x0104: Wall Outer Corner ▟ | { 0A, 2A } | Size: 00
#_0A8347: db $FC, $6A, $80 ; 0x0100: Wall Inner Corner ▛ | { 06, 2A } | Size: 00
#_0A834A: db $19, $BA, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 2E } | Size: 06
#_0A834D: db $FC, $6E, $81 ; 0x0101: Wall Inner Corner ▙ | { 06, 3A } | Size: 00
#_0A8350: db $FC, $91, $C8 ; 0x0108: Wall Corner (Lower) | { 09, 07 } | Size: 00
#_0A8353: db $24, $2E, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 09, 0B } | Size: 02
#_0A8356: db $FC, $94, $49 ; 0x0109: Wall Corner (Lower) | { 09, 11 } | Size: 00
#_0A8359: db $FC, $D4, $4D ; 0x010D: Wall Corner (Lower) | { 0D, 11 } | Size: 00
#_0A835C: db $34, $55, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0D, 15 } | Size: 01
#_0A835F: db $FC, $D6, $49 ; 0x0109: Wall Corner (Lower) | { 0D, 19 } | Size: 00
#_0A8362: db $44, $66, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 11, 19 } | Size: 02
#_0A8365: db $FD, $76, $4B ; 0x010B: Wall Corner (Lower) | { 17, 19 } | Size: 00
#_0A8368: db $5D, $2E, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 17, 0B } | Size: 06
#_0A836B: db $FD, $71, $CA ; 0x010A: Wall Corner (Lower) | { 17, 07 } | Size: 00
#_0A836E: db $35, $1C, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0D, 07 } | Size: 04
#_0A8371: db $FC, $D9, $48 ; 0x0108: Wall Corner (Lower) | { 0D, 25 } | Size: 00
#_0A8374: db $44, $96, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 11, 25 } | Size: 02
#_0A8377: db $FD, $79, $4A ; 0x010A: Wall Corner (Lower) | { 17, 25 } | Size: 00
#_0A837A: db $34, $A5, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0D, 29 } | Size: 01
#_0A837D: db $FC, $DB, $4C ; 0x010C: Wall Corner (Lower) | { 0D, 2D } | Size: 00
#_0A8380: db $FC, $9B, $48 ; 0x0108: Wall Corner (Lower) | { 09, 2D } | Size: 00
#_0A8383: db $24, $C6, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 09, 31 } | Size: 02
#_0A8386: db $FC, $9D, $C9 ; 0x0109: Wall Corner (Lower) | { 09, 37 } | Size: 00
#_0A8389: db $35, $DC, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0D, 37 } | Size: 04
#_0A838C: db $FD, $7D, $CB ; 0x010B: Wall Corner (Lower) | { 17, 37 } | Size: 00
#_0A838F: db $5D, $A6, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 17, 29 } | Size: 06
#_0A8392: db $FE, $26, $00 ; 0x0100: Wall Inner Corner ▛ | { 22, 18 } | Size: 00
#_0A8395: db $9A, $62, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 18 } | Size: 0A
#_0A8398: db $FF, $A6, $02 ; 0x0102: Wall Inner Corner ▜ | { 3A, 18 } | Size: 00
#_0A839B: db $FE, $2A, $01 ; 0x0101: Wall Inner Corner ▙ | { 22, 28 } | Size: 00
#_0A839E: db $98, $A2, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 26, 28 } | Size: 02
#_0A83A1: db $FE, $AA, $05 ; 0x0105: Wall Outer Corner ▜ | { 2A, 28 } | Size: 00
#_0A83A4: db $A9, $B3, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 2C } | Size: 07
#_0A83A7: db $FE, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 2A, 3A } | Size: 00
#_0A83AA: db $D8, $E6, $10 ; 0x0010: Diagonal Wall ◢ | { 36, 39 } | Size: 02
#_0A83AD: db $E8, $CA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 3A, 32 } | Size: 02
#_0A83B0: db $FE, $86, $C8 ; 0x0108: Wall Corner (Lower) | { 28, 1B } | Size: 00
#_0A83B3: db $A0, $7E, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 28, 1F } | Size: 02
#_0A83B6: db $FE, $89, $49 ; 0x0109: Wall Corner (Lower) | { 28, 25 } | Size: 00
#_0A83B9: db $B0, $94, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2C, 25 } | Size: 00
#_0A83BC: db $FE, $D9, $4D ; 0x010D: Wall Corner (Lower) | { 2D, 25 } | Size: 00
#_0A83BF: db $B4, $A5, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 2D, 29 } | Size: 01
#_0A83C2: db $FE, $DB, $09 ; 0x0109: Wall Corner (Lower) | { 2D, 2C } | Size: 00
#_0A83C5: db $C4, $B2, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 31, 2C } | Size: 02
#_0A83C8: db $B1, $6D, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2C, 1B } | Size: 05
#_0A83CB: db $FF, $76, $CA ; 0x010A: Wall Corner (Lower) | { 37, 1B } | Size: 00
#_0A83CE: db $DD, $7E, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 1F } | Size: 06
#_0A83D1: db $FF, $7B, $0B ; 0x010B: Wall Corner (Lower) | { 37, 2C } | Size: 00
#_0A83D4: db $34, $75, $22 ; 0x0022: Horizontal Rail ↔ | { 0D, 1D } | Size: 01
#_0A83D7: db $34, $91, $22 ; 0x0022: Horizontal Rail ↔ | { 0D, 24 } | Size: 01
#_0A83DA: db $58, $75, $22 ; 0x0022: Horizontal Rail ↔ | { 16, 1D } | Size: 01
#_0A83DD: db $58, $91, $22 ; 0x0022: Horizontal Rail ↔ | { 16, 24 } | Size: 01
#_0A83E0: db $B4, $C1, $22 ; 0x0022: Horizontal Rail ↔ | { 2D, 30 } | Size: 01
#_0A83E3: db $D8, $C1, $22 ; 0x0022: Horizontal Rail ↔ | { 36, 30 } | Size: 01
#_0A83E6: db $9C, $6C, $69 ; 0x0069: Vertical Rail ↕ | { 27, 1B } | Size: 00
#_0A83E9: db $9C, $8B, $69 ; 0x0069: Vertical Rail ↕ | { 27, 22 } | Size: 03
#_0A83EC: db $32, $29, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 0C, 0A } | Size: 09
#_0A83EF: db $41, $49, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 10, 12 } | Size: 05
#_0A83F2: db $41, $A1, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 10, 28 } | Size: 05
#_0A83F5: db $32, $C1, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 0C, 30 } | Size: 09
#_0A83F8: db $B2, $7D, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 2C, 1F } | Size: 09
#_0A83FB: db $C1, $95, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 30, 25 } | Size: 05
#_0A83FE: db $32, $29, $3F ; 0x003F: Water Edge ↔ | { 0C, 0A } | Size: 09
#_0A8401: db $31, $2D, $79 ; 0x0079: Water Edge ↕ | { 0C, 0B } | Size: 05
#_0A8404: db $30, $46, $44 ; 0x0044: Water Edge ↔ | { 0C, 11 } | Size: 02
#_0A8407: db $41, $4A, $79 ; 0x0079: Water Edge ↕ | { 10, 12 } | Size: 06
#_0A840A: db $41, $65, $40 ; 0x0040: Water Edge ↔ | { 10, 19 } | Size: 05
#_0A840D: db $5F, $2D, $7A ; 0x007A: Water Edge ↕ | { 17, 0B } | Size: 0D
#_0A8410: db $41, $A1, $3F ; 0x003F: Water Edge ↔ | { 10, 28 } | Size: 05
#_0A8413: db $41, $A6, $79 ; 0x0079: Water Edge ↕ | { 10, 29 } | Size: 06
#_0A8416: db $30, $C2, $46 ; 0x0046: Water Edge ↔ | { 0C, 30 } | Size: 02
#_0A8419: db $31, $C5, $79 ; 0x0079: Water Edge ↕ | { 0C, 31 } | Size: 05
#_0A841C: db $32, $DD, $40 ; 0x0040: Water Edge ↔ | { 0C, 37 } | Size: 09
#_0A841F: db $5F, $A5, $7A ; 0x007A: Water Edge ↕ | { 17, 29 } | Size: 0D
#_0A8422: db $AE, $7A, $3F ; 0x003F: Water Edge ↔ | { 2B, 1E } | Size: 0A
#_0A8425: db $AD, $7E, $79 ; 0x0079: Water Edge ↕ | { 2B, 1F } | Size: 06
#_0A8428: db $AC, $9B, $44 ; 0x0044: Water Edge ↔ | { 2B, 26 } | Size: 03
#_0A842B: db $C1, $9C, $79 ; 0x0079: Water Edge ↕ | { 30, 27 } | Size: 04
#_0A842E: db $C1, $B1, $40 ; 0x0040: Water Edge ↔ | { 30, 2C } | Size: 05
#_0A8431: db $DF, $7C, $7A ; 0x007A: Water Edge ↕ | { 37, 1F } | Size: 0C
#_0A8434: db $49, $67, $F9 ; 0x0F9D: Stair | { 12, 19 } | Size: 07
#_0A8437: db $C9, $B3, $F9 ; 0x0F9D: Stair | { 32, 2C } | Size: 07
#_0A843A: db $FD, $29, $72 ; 0x0132: Stairs Going Up (layer) | { 12, 25 } | Size: 00
#_0A843D: db $08, $00, $60 ; 0x0060: Ceiling ↕ | { 02, 00 } | Size: 00
#_0A8440: db $10, $00, $60 ; 0x0060: Ceiling ↕ | { 04, 00 } | Size: 00
#_0A8443: db $18, $63, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 06, 18 } | Size: 03
#_0A8446: db $18, $A2, $00 ; 0x0000: Ceiling ↔ | { 06, 28 } | Size: 02
#_0A8449: db $8B, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 04 } | Size: 0F
#_0A844C: db $CA, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 04 } | Size: 0B
#_0A844F: db $8B, $50, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 14 } | Size: 0C
#_0A8452: db $CA, $50, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 14 } | Size: 08
#_0A8455: db $89, $B3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 2C } | Size: 07
#_0A8458: db $89, $F0, $00 ; 0x0000: Ceiling ↔ | { 22, 3C } | Size: 04
#_0A845B: db $DC, $F7, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 37, 3D } | Size: 03
#_0A845E: db $FF, $FF ; Layer01
#_0A8460: db $FF, $FF ; Layer02
#_0A8462: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E2:
#_0A8464: db $72, $00 ; Door 0x00 | Dir:02 | Pos:0E
#_0A8466: db $81, $0E ; Door 0x0E | Dir:01 | Pos:10
#_0A8468: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0000:
#_0A846A: db $E6, $00 ; Floors and Layout
#_0A846C: db $FE, $00, $80 ; 0x0100: Wall Inner Corner ▛ | { 20, 02 } | Size: 00
#_0A846F: db $93, $08, $01 ; 0x0001: Top Wall Horiz. ↔ | { 24, 02 } | Size: 0C
#_0A8472: db $FF, $C0, $82 ; 0x0102: Wall Inner Corner ▜ | { 3C, 02 } | Size: 00
#_0A8475: db $82, $1B, $61 ; 0x0061: Left Wall Vertic. ↕ | { 20, 06 } | Size: 0B
#_0A8478: db $FE, $07, $01 ; 0x0101: Wall Inner Corner ▙ | { 20, 1C } | Size: 00
#_0A847B: db $FF, $C7, $03 ; 0x0103: Wall Inner Corner ▟ | { 3C, 1C } | Size: 00
#_0A847E: db $93, $70, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 24, 1C } | Size: 0C
#_0A8481: db $F2, $1B, $62 ; 0x0062: Right Wall Horiz. ↕ | { 3C, 06 } | Size: 0B
#_0A8484: db $C6, $17, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 31, 05 } | Size: 0B
#_0A8487: db $8F, $55, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 23, 15 } | Size: 0D
#_0A848A: db $C6, $55, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 31, 15 } | Size: 09
#_0A848D: db $8F, $17, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 23, 05 } | Size: 0F
#_0A8490: db $93, $09, $FF ; 0x0FF7: ??? | { 24, 02 } | Size: 0D
#_0A8493: db $D3, $09, $FF ; 0x0FF7: ??? | { 34, 02 } | Size: 0D
#_0A8496: db $B2, $09, $FF ; 0x0FF6: ??? | { 2C, 02 } | Size: 09
#_0A8499: db $80, $1E, $76 ; 0x0076: Left Wall Decoration ↕ | { 20, 07 } | Size: 02
#_0A849C: db $F4, $1E, $77 ; 0x0077: Right Wall Decoration ↕ | { 3D, 07 } | Size: 02
#_0A849F: db $AD, $35, $E1 ; 0x00E1: Floor9 ↔ ↕ | { 2B, 0D } | Size: 05
#_0A84A2: db $C4, $35, $E1 ; 0x00E1: Floor9 ↔ ↕ | { 31, 0D } | Size: 01
#_0A84A5: db $B8, $36, $FF ; 0x0FF8: ??? | { 2E, 0D } | Size: 02
#_0A84A8: db $FE, $FA, $A0 ; 0x0120: Torch Lit | { 2F, 2A } | Size: 00
#_0A84AB: db $8B, $BB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 2E } | Size: 0F
#_0A84AE: db $CA, $BB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 2E } | Size: 0B
#_0A84B1: db $FF, $FF ; Layer01
#_0A84B3: db $FF, $FF ; Layer02
#_0A84B5: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0000:
#_0A84B7: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0010:
#_0A84B9: db $E1, $04 ; Floors and Layout
#_0A84BB: db $FC, $A1, $00 ; 0x0100: Wall Inner Corner ▛ | { 0A, 04 } | Size: 00
#_0A84BE: db $2B, $22, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0A, 08 } | Size: 0E
#_0A84C1: db $FC, $A9, $04 ; 0x0104: Wall Outer Corner ▟ | { 0A, 24 } | Size: 00
#_0A84C4: db $FD, $21, $02 ; 0x0102: Wall Inner Corner ▜ | { 12, 04 } | Size: 00
#_0A84C7: db $4B, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 12, 08 } | Size: 0F
#_0A84CA: db $FC, $69, $00 ; 0x0100: Wall Inner Corner ▛ | { 06, 24 } | Size: 00
#_0A84CD: db $1A, $A1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 28 } | Size: 09
#_0A84D0: db $FC, $6E, $81 ; 0x0101: Wall Inner Corner ▙ | { 06, 3A } | Size: 00
#_0A84D3: db $48, $9A, $62 ; 0x0062: Right Wall Horiz. ↕ | { 12, 26 } | Size: 02
#_0A84D6: db $FD, $2A, $86 ; 0x0106: Wall Outer Corner ▙ | { 12, 2A } | Size: 00
#_0A84D9: db $58, $AA, $01 ; 0x0001: Top Wall Horiz. ↔ | { 16, 2A } | Size: 02
#_0A84DC: db $FD, $AA, $82 ; 0x0102: Wall Inner Corner ▜ | { 1A, 2A } | Size: 00
#_0A84DF: db $FE, $2A, $80 ; 0x0100: Wall Inner Corner ▛ | { 22, 2A } | Size: 00
#_0A84E2: db $98, $AA, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 2A } | Size: 02
#_0A84E5: db $FE, $AA, $84 ; 0x0104: Wall Outer Corner ▟ | { 2A, 2A } | Size: 00
#_0A84E8: db $A9, $81, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 20 } | Size: 05
#_0A84EB: db $FE, $A7, $05 ; 0x0105: Wall Outer Corner ▜ | { 2A, 1C } | Size: 00
#_0A84EE: db $90, $73, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 24, 1C } | Size: 03
#_0A84F1: db $FE, $07, $01 ; 0x0101: Wall Inner Corner ▙ | { 20, 1C } | Size: 00
#_0A84F4: db $83, $10, $61 ; 0x0061: Left Wall Vertic. ↕ | { 20, 04 } | Size: 0C
#_0A84F7: db $FE, $00, $00 ; 0x0100: Wall Inner Corner ▛ | { 20, 00 } | Size: 00
#_0A84FA: db $93, $00, $01 ; 0x0001: Top Wall Horiz. ↔ | { 24, 00 } | Size: 0C
#_0A84FD: db $FF, $C0, $02 ; 0x0102: Wall Inner Corner ▜ | { 3C, 00 } | Size: 00
#_0A8500: db $F3, $10, $62 ; 0x0062: Right Wall Horiz. ↕ | { 3C, 04 } | Size: 0C
#_0A8503: db $FF, $C7, $03 ; 0x0103: Wall Inner Corner ▟ | { 3C, 1C } | Size: 00
#_0A8506: db $D8, $73, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 36, 1C } | Size: 03
#_0A8509: db $FF, $27, $07 ; 0x0107: Wall Outer Corner ▛ | { 32, 1C } | Size: 00
#_0A850C: db $CA, $82, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 20 } | Size: 0A
#_0A850F: db $FF, $2D, $03 ; 0x0103: Wall Inner Corner ▟ | { 32, 34 } | Size: 00
#_0A8512: db $99, $D2, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 26, 34 } | Size: 06
#_0A8515: db $FE, $2D, $01 ; 0x0101: Wall Inner Corner ▙ | { 22, 34 } | Size: 00
#_0A8518: db $93, $13, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 24, 04 } | Size: 0F
#_0A851B: db $D1, $13, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 34, 04 } | Size: 07
#_0A851E: db $90, $51, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 24, 14 } | Size: 01
#_0A8521: db $E0, $51, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 38, 14 } | Size: 01
#_0A8524: db $FE, $92, $48 ; 0x0108: Wall Corner (Lower) | { 29, 09 } | Size: 00
#_0A8527: db $B4, $26, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2D, 09 } | Size: 02
#_0A852A: db $FF, $32, $4A ; 0x010A: Wall Corner (Lower) | { 33, 09 } | Size: 00
#_0A852D: db $A4, $36, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 29, 0D } | Size: 02
#_0A8530: db $FE, $94, $C9 ; 0x0109: Wall Corner (Lower) | { 29, 13 } | Size: 00
#_0A8533: db $B4, $4E, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2D, 13 } | Size: 02
#_0A8536: db $FF, $34, $CB ; 0x010B: Wall Corner (Lower) | { 33, 13 } | Size: 00
#_0A8539: db $CC, $36, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 33, 0D } | Size: 02
#_0A853C: db $FE, $C3, $18 ; 0x0118: Pit Edge Corner | { 2C, 0C } | Size: 00
#_0A853F: db $B8, $31, $07 ; 0x0007: Top Wall Pit ↔ | { 2E, 0C } | Size: 01
#_0A8542: db $FF, $23, $1A ; 0x011A: Pit Edge Corner | { 32, 0C } | Size: 00
#_0A8545: db $B0, $39, $67 ; 0x0067: Left Wall Pit ↕ | { 2C, 0E } | Size: 01
#_0A8548: db $FE, $C4, $99 ; 0x0119: Pit Edge Corner | { 2C, 12 } | Size: 00
#_0A854B: db $B8, $49, $08 ; 0x0008: Bottom Wall Pit ↔ | { 2E, 12 } | Size: 01
#_0A854E: db $FF, $24, $9B ; 0x011B: Pit Edge Corner | { 32, 12 } | Size: 00
#_0A8551: db $C8, $39, $68 ; 0x0068: Right Wall Pit ↕ | { 32, 0E } | Size: 01
#_0A8554: db $B8, $38, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 2E, 0E } | Size: 00
#_0A8557: db $A3, $20, $22 ; 0x0022: Horizontal Rail ↔ | { 28, 08 } | Size: 0C
#_0A855A: db $A3, $20, $69 ; 0x0069: Vertical Rail ↕ | { 28, 08 } | Size: 0C
#_0A855D: db $A3, $5C, $22 ; 0x0022: Horizontal Rail ↔ | { 28, 17 } | Size: 0C
#_0A8560: db $DF, $20, $69 ; 0x0069: Vertical Rail ↕ | { 37, 08 } | Size: 0C
#_0A8563: db $3F, $14, $F9 ; 0x0F93: Telepathic Tile | { 0F, 05 } | Size: 0C
#_0A8566: db $08, $00, $60 ; 0x0060: Ceiling ↕ | { 02, 00 } | Size: 00
#_0A8569: db $10, $00, $60 ; 0x0060: Ceiling ↕ | { 04, 00 } | Size: 00
#_0A856C: db $18, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 06, 04 } | Size: 03
#_0A856F: db $18, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 06, 14 } | Size: 03
#_0A8572: db $59, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 04 } | Size: 07
#_0A8575: db $59, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 14 } | Size: 07
#_0A8578: db $59, $89, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 22 } | Size: 05
#_0A857B: db $89, $81, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 20 } | Size: 05
#_0A857E: db $89, $A0, $00 ; 0x0000: Ceiling ↔ | { 22, 28 } | Size: 04
#_0A8581: db $8B, $E1, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 38 } | Size: 0D
#_0A8584: db $CA, $E1, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 38 } | Size: 09
#_0A8587: db $D9, $83, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 20 } | Size: 07
#_0A858A: db $D9, $C1, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 30 } | Size: 05
#_0A858D: db $FF, $FF ; Layer01
#_0A858F: db $2B, $14, $FF ; 0x0FF3: Bg2 Full Mask | { 0A, 05 } | Size: 0C
#_0A8592: db $FF, $FF ; Layer02
#_0A8594: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0010:
#_0A8596: db $61, $0A ; Door 0x0A | Dir:01 | Pos:0C
#_0A8598: db $82, $00 ; Door 0x00 | Dir:02 | Pos:10
#_0A859A: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0008:
#_0A859C: db $51, $00 ; Floors and Layout
#_0A859E: db $08, $B3, $0D ; 0x000D: Diagonal Wall ◤ | { 02, 2C } | Size: 03
#_0A85A1: db $08, $B6, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 2D } | Size: 02
#_0A85A4: db $54, $93, $0F ; 0x000F: Diagonal Wall ◥ | { 15, 24 } | Size: 03
#_0A85A7: db $68, $B6, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1A, 2D } | Size: 02
#_0A85AA: db $14, $B0, $19 ; 0x0019: Diagonal Wall ◤ | { 05, 2C } | Size: 00
#_0A85AD: db $2D, $9C, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0B, 27 } | Size: 04
#_0A85B0: db $54, $9C, $1B ; 0x001B: Diagonal Wall ◥ | { 15, 27 } | Size: 00
#_0A85B3: db $15, $B4, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 2D } | Size: 04
#_0A85B6: db $FC, $5D, $C9 ; 0x0109: Wall Corner (Lower) | { 05, 37 } | Size: 00
#_0A85B9: db $25, $DE, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 09, 37 } | Size: 06
#_0A85BC: db $FD, $7D, $CB ; 0x010B: Wall Corner (Lower) | { 17, 37 } | Size: 00
#_0A85BF: db $5D, $B4, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 17, 2D } | Size: 04
#_0A85C2: db $FE, $2A, $00 ; 0x0100: Wall Inner Corner ▛ | { 22, 28 } | Size: 00
#_0A85C5: db $99, $A3, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 28 } | Size: 07
#_0A85C8: db $FF, $4A, $02 ; 0x0102: Wall Inner Corner ▜ | { 34, 28 } | Size: 00
#_0A85CB: db $D1, $B3, $62 ; 0x0062: Right Wall Horiz. ↕ | { 34, 2C } | Size: 07
#_0A85CE: db $FF, $4E, $83 ; 0x0103: Wall Inner Corner ▟ | { 34, 3A } | Size: 00
#_0A85D1: db $FE, $5A, $C8 ; 0x0108: Wall Corner (Lower) | { 25, 2B } | Size: 00
#_0A85D4: db $A4, $AF, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 29, 2B } | Size: 03
#_0A85D7: db $FF, $1A, $CA ; 0x010A: Wall Corner (Lower) | { 31, 2B } | Size: 00
#_0A85DA: db $94, $BD, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 25, 2F } | Size: 01
#_0A85DD: db $FE, $5C, $C9 ; 0x0109: Wall Corner (Lower) | { 25, 33 } | Size: 00
#_0A85E0: db $A4, $CF, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 29, 33 } | Size: 03
#_0A85E3: db $FF, $1C, $CB ; 0x010B: Wall Corner (Lower) | { 31, 33 } | Size: 00
#_0A85E6: db $C4, $BD, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 31, 2F } | Size: 01
#_0A85E9: db $94, $DD, $22 ; 0x0022: Horizontal Rail ↔ | { 25, 37 } | Size: 01
#_0A85EC: db $C4, $DC, $22 ; 0x0022: Horizontal Rail ↔ | { 31, 37 } | Size: 00
#_0A85EF: db $A8, $CF, $F9 ; 0x0F9C: Stair | { 2A, 33 } | Size: 03
#_0A85F2: db $09, $90, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 02, 24 } | Size: 04
#_0A85F5: db $59, $90, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 16, 24 } | Size: 04
#_0A85F8: db $8B, $90, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 24 } | Size: 0C
#_0A85FB: db $CA, $90, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 24 } | Size: 08
#_0A85FE: db $E1, $A3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 38, 28 } | Size: 07
#_0A8601: db $E1, $E1, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 38, 38 } | Size: 05
#_0A8604: db $FF, $FF ; Layer01
#_0A8606: db $FC, $AC, $24 ; 0x0124: Decoration | { 0A, 30 } | Size: 00
#_0A8609: db $FD, $2C, $24 ; 0x0124: Decoration | { 12, 30 } | Size: 00
#_0A860C: db $31, $B0, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 0C, 2C } | Size: 04
#_0A860F: db $38, $B8, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 0E, 2E } | Size: 00
#_0A8612: db $31, $AD, $3F ; 0x003F: Water Edge ↔ | { 0C, 2B } | Size: 05
#_0A8615: db $30, $B2, $79 ; 0x0079: Water Edge ↕ | { 0C, 2C } | Size: 02
#_0A8618: db $30, $BC, $44 ; 0x0044: Water Edge ↔ | { 0C, 2F } | Size: 00
#_0A861B: db $38, $C0, $79 ; 0x0079: Water Edge ↕ | { 0E, 30 } | Size: 00
#_0A861E: db $38, $C5, $40 ; 0x0040: Water Edge ↔ | { 0E, 31 } | Size: 01
#_0A8621: db $44, $C0, $7A ; 0x007A: Water Edge ↕ | { 11, 30 } | Size: 00
#_0A8624: db $44, $BC, $43 ; 0x0043: Water Edge ↔ | { 11, 2F } | Size: 00
#_0A8627: db $4C, $B2, $7A ; 0x007A: Water Edge ↕ | { 13, 2C } | Size: 02
#_0A862A: db $6D, $B5, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1B, 2D } | Size: 05
#_0A862D: db $6D, $C5, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1B, 31 } | Size: 05
#_0A8630: db $30, $EE, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0C, 3B } | Size: 02
#_0A8633: db $40, $EE, $62 ; 0x0062: Right Wall Horiz. ↕ | { 10, 3B } | Size: 02
#_0A8636: db $FF, $FF ; Layer02
#_0A8638: db $14, $B7, $AC ; 0x00AC: Diagonal Ceiling ◢ | { 05, 2D } | Size: 03
#_0A863B: db $50, $9F, $AA ; 0x00AA: Diagonal Ceiling ◣ | { 14, 27 } | Size: 03
#_0A863E: db $31, $9F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0C, 27 } | Size: 07
#_0A8641: db $17, $BA, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 05, 2E } | Size: 0E
#_0A8644: db $4D, $BA, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 13, 2E } | Size: 06
#_0A8647: db $97, $AD, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 25, 2B } | Size: 0D
#_0A864A: db $97, $C8, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 25, 32 } | Size: 0C
#_0A864D: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0008:
#_0A864F: db $B2, $48 ; Door 0x48 | Dir:02 | Pos:16
#_0A8651: db $81, $0E ; Door 0x0E | Dir:01 | Pos:10
#_0A8653: db $91, $40 ; Door 0x40 | Dir:01 | Pos:12
#_0A8655: db $91, $16 ; Door 0x16 | Dir:01 | Pos:12
#_0A8657: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0018:
#_0A8659: db $E5, $04 ; Floors and Layout
#_0A865B: db $FC, $81, $00 ; 0x0100: Wall Inner Corner ▛ | { 08, 04 } | Size: 00
#_0A865E: db $09, $94, $0D ; 0x000D: Diagonal Wall ◤ | { 02, 25 } | Size: 04
#_0A8661: db $09, $A8, $0E ; 0x000E: Diagonal Wall ◣ | { 02, 2A } | Size: 04
#_0A8664: db $09, $98, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 26 } | Size: 04
#_0A8667: db $23, $20, $61 ; 0x0061: Left Wall Vertic. ↕ | { 08, 08 } | Size: 0C
#_0A866A: db $31, $D1, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0C, 34 } | Size: 05
#_0A866D: db $FD, $6D, $03 ; 0x0103: Wall Inner Corner ▟ | { 16, 34 } | Size: 00
#_0A8670: db $5B, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 16, 08 } | Size: 0F
#_0A8673: db $59, $9B, $62 ; 0x0062: Right Wall Horiz. ↕ | { 16, 26 } | Size: 07
#_0A8676: db $FD, $61, $02 ; 0x0102: Wall Inner Corner ▜ | { 16, 04 } | Size: 00
#_0A8679: db $3C, $1D, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0F, 07 } | Size: 01
#_0A867C: db $FD, $31, $CA ; 0x010A: Wall Corner (Lower) | { 13, 07 } | Size: 00
#_0A867F: db $15, $94, $19 ; 0x0019: Diagonal Wall ◤ | { 05, 25 } | Size: 04
#_0A8682: db $14, $A9, $1A ; 0x001A: Diagonal Wall ◣ | { 05, 2A } | Size: 01
#_0A8685: db $14, $9B, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 26 } | Size: 03
#_0A8688: db $2E, $2A, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0B, 0A } | Size: 0A
#_0A868B: db $FC, $B1, $C8 ; 0x0108: Wall Corner (Lower) | { 0B, 07 } | Size: 00
#_0A868E: db $30, $C7, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0C, 31 } | Size: 03
#_0A8691: db $FD, $3C, $4B ; 0x010B: Wall Corner (Lower) | { 13, 31 } | Size: 00
#_0A8694: db $4F, $2F, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 13, 0B } | Size: 0F
#_0A8697: db $4C, $AE, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 13, 2B } | Size: 02
#_0A869A: db $3C, $39, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 0F, 0E } | Size: 01
#_0A869D: db $3C, $61, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 0F, 18 } | Size: 01
#_0A86A0: db $38, $99, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 0E, 26 } | Size: 01
#_0A86A3: db $34, $9B, $3F ; 0x003F: Water Edge ↔ | { 0D, 26 } | Size: 03
#_0A86A6: db $35, $9D, $79 ; 0x0079: Water Edge ↕ | { 0D, 27 } | Size: 05
#_0A86A9: db $34, $B7, $40 ; 0x0040: Water Edge ↔ | { 0D, 2D } | Size: 03
#_0A86AC: db $49, $9D, $7A ; 0x007A: Water Edge ↕ | { 12, 27 } | Size: 05
#_0A86AF: db $3C, $61, $3F ; 0x003F: Water Edge ↔ | { 0F, 18 } | Size: 01
#_0A86B2: db $3D, $65, $79 ; 0x0079: Water Edge ↕ | { 0F, 19 } | Size: 05
#_0A86B5: db $3C, $7D, $40 ; 0x0040: Water Edge ↔ | { 0F, 1F } | Size: 01
#_0A86B8: db $49, $65, $7A ; 0x007A: Water Edge ↕ | { 12, 19 } | Size: 05
#_0A86BB: db $3C, $39, $3F ; 0x003F: Water Edge ↔ | { 0F, 0E } | Size: 01
#_0A86BE: db $3D, $3D, $79 ; 0x0079: Water Edge ↕ | { 0F, 0F } | Size: 05
#_0A86C1: db $3C, $55, $40 ; 0x0040: Water Edge ↔ | { 0F, 15 } | Size: 01
#_0A86C4: db $49, $3D, $7A ; 0x007A: Water Edge ↕ | { 12, 0F } | Size: 05
#_0A86C7: db $01, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 04 } | Size: 07
#_0A86CA: db $01, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 14 } | Size: 06
#_0A86CD: db $08, $81, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 02, 20 } | Size: 01
#_0A86D0: db $09, $BD, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 02, 2F } | Size: 05
#_0A86D3: db $0B, $E1, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 38 } | Size: 0D
#_0A86D6: db $49, $E1, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 38 } | Size: 05
#_0A86D9: db $68, $00, $60 ; 0x0060: Ceiling ↕ | { 1A, 00 } | Size: 00
#_0A86DC: db $70, $00, $60 ; 0x0060: Ceiling ↕ | { 1C, 00 } | Size: 00
#_0A86DF: db $FF, $FF ; Layer01
#_0A86E1: db $FF, $FF ; Layer02
#_0A86E3: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0018:
#_0A86E5: db $30, $02 ; Door 0x02 | Dir:00 | Pos:06
#_0A86E7: db $30, $16 ; Door 0x16 | Dir:00 | Pos:06
#_0A86E9: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_002F:
#_0A86EB: db $51, $14 ; Floors and Layout
#_0A86ED: db $FC, $A1, $00 ; 0x0100: Wall Inner Corner ▛ | { 0A, 04 } | Size: 00
#_0A86F0: db $2A, $21, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0A, 08 } | Size: 09
#_0A86F3: db $FC, $A6, $81 ; 0x0101: Wall Inner Corner ▙ | { 0A, 1A } | Size: 00
#_0A86F6: db $FD, $21, $02 ; 0x0102: Wall Inner Corner ▜ | { 12, 04 } | Size: 00
#_0A86F9: db $4A, $21, $62 ; 0x0062: Right Wall Horiz. ↕ | { 12, 08 } | Size: 09
#_0A86FC: db $FD, $26, $83 ; 0x0103: Wall Inner Corner ▟ | { 12, 1A } | Size: 00
#_0A86FF: db $FC, $69, $00 ; 0x0100: Wall Inner Corner ▛ | { 06, 24 } | Size: 00
#_0A8702: db $18, $CA, $0E ; 0x000E: Diagonal Wall ◣ | { 06, 32 } | Size: 02
#_0A8705: db $19, $A3, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 28 } | Size: 07
#_0A8708: db $C1, $90, $0F ; 0x000F: Diagonal Wall ◥ | { 30, 24 } | Size: 04
#_0A870B: db $D9, $BA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 36, 2E } | Size: 06
#_0A870E: db $FF, $6E, $83 ; 0x0103: Wall Inner Corner ▟ | { 36, 3A } | Size: 00
#_0A8711: db $89, $9E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 22, 27 } | Size: 06
#_0A8714: db $FD, $F9, $C8 ; 0x0108: Wall Corner (Lower) | { 1F, 27 } | Size: 00
#_0A8717: db $C0, $9D, $1B ; 0x001B: Diagonal Wall ◥ | { 30, 27 } | Size: 01
#_0A871A: db $CC, $B9, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 33, 2E } | Size: 01
#_0A871D: db $FF, $3C, $4B ; 0x010B: Wall Corner (Lower) | { 33, 31 } | Size: 00
#_0A8720: db $AC, $C7, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2B, 31 } | Size: 03
#_0A8723: db $FE, $7C, $4F ; 0x010F: Wall Corner (Lower) | { 27, 31 } | Size: 00
#_0A8726: db $9C, $D4, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 27, 35 } | Size: 00
#_0A8729: db $FE, $7D, $CB ; 0x010B: Wall Corner (Lower) | { 27, 37 } | Size: 00
#_0A872C: db $56, $DC, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 15, 37 } | Size: 08
#_0A872F: db $FD, $1D, $C9 ; 0x0109: Wall Corner (Lower) | { 11, 37 } | Size: 00
#_0A8732: db $44, $C6, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 11, 31 } | Size: 02
#_0A8735: db $FD, $1B, $48 ; 0x0108: Wall Corner (Lower) | { 11, 2D } | Size: 00
#_0A8738: db $55, $B4, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 15, 2D } | Size: 04
#_0A873B: db $FD, $FB, $4C ; 0x010C: Wall Corner (Lower) | { 1F, 2D } | Size: 00
#_0A873E: db $7C, $AC, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 1F, 2B } | Size: 00
#_0A8741: db $3D, $22, $F9 ; 0x0F99: Chest | { 0F, 08 } | Size: 06
#_0A8744: db $3B, $3B, $FA ; 0x0FAF: Pot | { 0E, 0E } | Size: 0F
#_0A8747: db $43, $3B, $FA ; 0x0FAF: Pot | { 10, 0E } | Size: 0F
#_0A874A: db $3B, $4B, $FA ; 0x0FAF: Pot | { 0E, 12 } | Size: 0F
#_0A874D: db $43, $4B, $FA ; 0x0FAF: Pot | { 10, 12 } | Size: 0F
#_0A8750: db $34, $A9, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 0D, 2A } | Size: 01
#_0A8753: db $44, $B0, $22 ; 0x0022: Horizontal Rail ↔ | { 11, 2C } | Size: 00
#_0A8756: db $51, $9E, $F9 ; 0x0F99: Chest | { 14, 27 } | Size: 06
#_0A8759: db $61, $9E, $F9 ; 0x0F99: Chest | { 18, 27 } | Size: 06
#_0A875C: db $71, $9E, $F9 ; 0x0F99: Chest | { 1C, 27 } | Size: 06
#_0A875F: db $3D, $C2, $F9 ; 0x0F99: Chest | { 0F, 30 } | Size: 06
#_0A8762: db $5B, $9F, $FA ; 0x0FAF: Pot | { 16, 27 } | Size: 0F
#_0A8765: db $6B, $9F, $FA ; 0x0FAF: Pot | { 1A, 27 } | Size: 0F
#_0A8768: db $78, $9C, $69 ; 0x0069: Vertical Rail ↕ | { 1E, 27 } | Size: 00
#_0A876B: db $40, $DC, $69 ; 0x0069: Vertical Rail ↕ | { 10, 37 } | Size: 00
#_0A876E: db $B8, $C7, $F9 ; 0x0F9C: Stair | { 2E, 31 } | Size: 03
#_0A8771: db $D3, $DB, $FA ; 0x0FAF: Pot | { 34, 36 } | Size: 0F
#_0A8774: db $D3, $E3, $FA ; 0x0FAF: Pot | { 34, 38 } | Size: 0F
#_0A8777: db $C8, $D5, $22 ; 0x0022: Horizontal Rail ↔ | { 32, 35 } | Size: 01
#_0A877A: db $AC, $D6, $69 ; 0x0069: Vertical Rail ↕ | { 2B, 35 } | Size: 02
#_0A877D: db $18, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 06, 04 } | Size: 03
#_0A8780: db $18, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 06, 14 } | Size: 02
#_0A8783: db $08, $00, $60 ; 0x0060: Ceiling ↕ | { 02, 00 } | Size: 00
#_0A8786: db $10, $00, $60 ; 0x0060: Ceiling ↕ | { 04, 00 } | Size: 00
#_0A8789: db $59, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 04 } | Size: 07
#_0A878C: db $59, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 14 } | Size: 06
#_0A878F: db $18, $DF, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 06, 37 } | Size: 03
#_0A8792: db $C5, $91, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 31, 24 } | Size: 05
#_0A8795: db $E8, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 24 } | Size: 03
#_0A8798: db $E8, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 34 } | Size: 02
#_0A879B: db $FF, $FF ; Layer01
#_0A879D: db $59, $C8, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 16, 32 } | Size: 04
#_0A87A0: db $55, $C7, $3F ; 0x003F: Water Edge ↔ | { 15, 31 } | Size: 07
#_0A87A3: db $54, $CB, $79 ; 0x0079: Water Edge ↕ | { 15, 32 } | Size: 03
#_0A87A6: db $55, $DB, $40 ; 0x0040: Water Edge ↔ | { 15, 36 } | Size: 07
#_0A87A9: db $78, $CB, $7A ; 0x007A: Water Edge ↕ | { 1E, 32 } | Size: 03
#_0A87AC: db $8C, $AE, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 23, 2B } | Size: 02
#_0A87AF: db $8C, $AD, $3F ; 0x003F: Water Edge ↔ | { 23, 2B } | Size: 01
#_0A87B2: db $8E, $B1, $79 ; 0x0079: Water Edge ↕ | { 23, 2C } | Size: 09
#_0A87B5: db $8C, $D9, $40 ; 0x0040: Water Edge ↔ | { 23, 36 } | Size: 01
#_0A87B8: db $9A, $B1, $7A ; 0x007A: Water Edge ↕ | { 26, 2C } | Size: 09
#_0A87BB: db $FF, $FF ; Layer02
#_0A87BD: db $C0, $A2, $AA ; 0x00AA: Diagonal Ceiling ◣ | { 30, 28 } | Size: 02
#_0A87C0: db $4B, $BA, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 12, 2E } | Size: 0E
#_0A87C3: db $83, $A2, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 20, 28 } | Size: 0E
#_0A87C6: db $89, $C9, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 22, 32 } | Size: 05
#_0A87C9: db $BD, $B8, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2F, 2E } | Size: 04
#_0A87CC: db $BD, $C0, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2F, 30 } | Size: 04
#_0A87CF: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_002F:
#_0A87D1: db $60, $2E ; Door 0x2E | Dir:00 | Pos:0C
#_0A87D3: db $81, $0E ; Door 0x0E | Dir:01 | Pos:10
#_0A87D5: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_002C:
#_0A87D7: db $E0, $00 ; Floors and Layout
#_0A87D9: db $FC, $25, $01 ; 0x0101: Wall Inner Corner ▙ | { 02, 14 } | Size: 00
#_0A87DC: db $18, $52, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 14 } | Size: 02
#_0A87DF: db $FC, $A5, $05 ; 0x0105: Wall Outer Corner ▜ | { 0A, 14 } | Size: 00
#_0A87E2: db $28, $61, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0A, 18 } | Size: 01
#_0A87E5: db $FC, $A6, $81 ; 0x0101: Wall Inner Corner ▙ | { 0A, 1A } | Size: 00
#_0A87E8: db $FD, $26, $83 ; 0x0103: Wall Inner Corner ▟ | { 12, 1A } | Size: 00
#_0A87EB: db $48, $61, $62 ; 0x0062: Right Wall Horiz. ↕ | { 12, 18 } | Size: 01
#_0A87EE: db $FD, $25, $07 ; 0x0107: Wall Outer Corner ▛ | { 12, 14 } | Size: 00
#_0A87F1: db $58, $52, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 16, 14 } | Size: 02
#_0A87F4: db $FD, $A5, $03 ; 0x0103: Wall Inner Corner ▟ | { 1A, 14 } | Size: 00
#_0A87F7: db $FE, $25, $01 ; 0x0101: Wall Inner Corner ▙ | { 22, 14 } | Size: 00
#_0A87FA: db $98, $52, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 26, 14 } | Size: 02
#_0A87FD: db $FE, $A5, $05 ; 0x0105: Wall Outer Corner ▜ | { 2A, 14 } | Size: 00
#_0A8800: db $A8, $61, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 18 } | Size: 01
#_0A8803: db $FE, $A6, $81 ; 0x0101: Wall Inner Corner ▙ | { 2A, 1A } | Size: 00
#_0A8806: db $FF, $26, $83 ; 0x0103: Wall Inner Corner ▟ | { 32, 1A } | Size: 00
#_0A8809: db $C8, $61, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 18 } | Size: 01
#_0A880C: db $FF, $25, $07 ; 0x0107: Wall Outer Corner ▛ | { 32, 14 } | Size: 00
#_0A880F: db $D8, $52, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 36, 14 } | Size: 02
#_0A8812: db $FF, $A5, $03 ; 0x0103: Wall Inner Corner ▟ | { 3A, 14 } | Size: 00
#_0A8815: db $FC, $A9, $00 ; 0x0100: Wall Inner Corner ▛ | { 0A, 24 } | Size: 00
#_0A8818: db $2A, $A1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0A, 28 } | Size: 09
#_0A881B: db $FC, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 0A, 3A } | Size: 00
#_0A881E: db $FD, $29, $02 ; 0x0102: Wall Inner Corner ▜ | { 12, 24 } | Size: 00
#_0A8821: db $48, $A2, $62 ; 0x0062: Right Wall Horiz. ↕ | { 12, 28 } | Size: 02
#_0A8824: db $FD, $2B, $06 ; 0x0106: Wall Outer Corner ▙ | { 12, 2C } | Size: 00
#_0A8827: db $58, $B2, $01 ; 0x0001: Top Wall Horiz. ↔ | { 16, 2C } | Size: 02
#_0A882A: db $FD, $AB, $02 ; 0x0102: Wall Inner Corner ▜ | { 1A, 2C } | Size: 00
#_0A882D: db $FD, $AC, $83 ; 0x0103: Wall Inner Corner ▟ | { 1A, 32 } | Size: 00
#_0A8830: db $58, $CA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 16, 32 } | Size: 02
#_0A8833: db $FD, $2C, $87 ; 0x0107: Wall Outer Corner ▛ | { 12, 32 } | Size: 00
#_0A8836: db $48, $DA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 12, 36 } | Size: 02
#_0A8839: db $FD, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 12, 3A } | Size: 00
#_0A883C: db $FE, $2B, $00 ; 0x0100: Wall Inner Corner ▛ | { 22, 2C } | Size: 00
#_0A883F: db $98, $B2, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 2C } | Size: 02
#_0A8842: db $FE, $AB, $04 ; 0x0104: Wall Outer Corner ▟ | { 2A, 2C } | Size: 00
#_0A8845: db $A8, $A2, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 28 } | Size: 02
#_0A8848: db $FE, $A9, $00 ; 0x0100: Wall Inner Corner ▛ | { 2A, 24 } | Size: 00
#_0A884B: db $FF, $29, $02 ; 0x0102: Wall Inner Corner ▜ | { 32, 24 } | Size: 00
#_0A884E: db $C8, $A2, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 28 } | Size: 02
#_0A8851: db $FF, $2B, $06 ; 0x0106: Wall Outer Corner ▙ | { 32, 2C } | Size: 00
#_0A8854: db $D8, $B2, $01 ; 0x0001: Top Wall Horiz. ↔ | { 36, 2C } | Size: 02
#_0A8857: db $FF, $AB, $02 ; 0x0102: Wall Inner Corner ▜ | { 3A, 2C } | Size: 00
#_0A885A: db $FF, $AC, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 32 } | Size: 00
#_0A885D: db $D8, $CA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 36, 32 } | Size: 02
#_0A8860: db $FF, $2C, $87 ; 0x0107: Wall Outer Corner ▛ | { 32, 32 } | Size: 00
#_0A8863: db $C8, $DA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 36 } | Size: 02
#_0A8866: db $FF, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 32, 3A } | Size: 00
#_0A8869: db $FE, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 2A, 3A } | Size: 00
#_0A886C: db $A8, $DA, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 36 } | Size: 02
#_0A886F: db $FE, $AC, $85 ; 0x0105: Wall Outer Corner ▜ | { 2A, 32 } | Size: 00
#_0A8872: db $98, $CA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 26, 32 } | Size: 02
#_0A8875: db $FE, $2C, $81 ; 0x0101: Wall Inner Corner ▙ | { 22, 32 } | Size: 00
#_0A8878: db $2A, $21, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 0A, 08 } | Size: 09
#_0A887B: db $26, $23, $3F ; 0x003F: Water Edge ↔ | { 09, 08 } | Size: 0B
#_0A887E: db $25, $26, $79 ; 0x0079: Water Edge ↕ | { 09, 09 } | Size: 06
#_0A8881: db $26, $43, $40 ; 0x0040: Water Edge ↔ | { 09, 10 } | Size: 0B
#_0A8884: db $59, $26, $7A ; 0x007A: Water Edge ↕ | { 16, 09 } | Size: 06
#_0A8887: db $AA, $21, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 2A, 08 } | Size: 09
#_0A888A: db $A6, $23, $3F ; 0x003F: Water Edge ↔ | { 29, 08 } | Size: 0B
#_0A888D: db $A5, $26, $79 ; 0x0079: Water Edge ↕ | { 29, 09 } | Size: 06
#_0A8890: db $A6, $43, $40 ; 0x0040: Water Edge ↔ | { 29, 10 } | Size: 0B
#_0A8893: db $D9, $26, $7A ; 0x007A: Water Edge ↕ | { 36, 09 } | Size: 06
#_0A8896: db $FE, $53, $A4 ; 0x0124: Decoration | { 25, 0E } | Size: 00
#_0A8899: db $FF, $73, $A4 ; 0x0124: Decoration | { 37, 0E } | Size: 00
#_0A889C: db $EE, $BE, $FE ; 0x0FEA: Right Crack Wall | { 3B, 2F } | Size: 0A
#_0A889F: db $DB, $C3, $FA ; 0x0FAF: Pot | { 36, 30 } | Size: 0F
#_0A88A2: db $E3, $C3, $FA ; 0x0FAF: Pot | { 38, 30 } | Size: 0F
#_0A88A5: db $09, $61, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 18 } | Size: 05
#_0A88A8: db $59, $61, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 18 } | Size: 05
#_0A88AB: db $09, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 24 } | Size: 07
#_0A88AE: db $09, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 34 } | Size: 06
#_0A88B1: db $59, $91, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 24 } | Size: 05
#_0A88B4: db $59, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 36 } | Size: 05
#_0A88B7: db $89, $61, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 18 } | Size: 05
#_0A88BA: db $D9, $61, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 18 } | Size: 05
#_0A88BD: db $89, $91, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 24 } | Size: 05
#_0A88C0: db $D9, $91, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 24 } | Size: 05
#_0A88C3: db $89, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 36 } | Size: 05
#_0A88C6: db $D9, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 36 } | Size: 05
#_0A88C9: db $FF, $FF ; Layer01
#_0A88CB: db $FF, $FF ; Layer02
#_0A88CD: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_002C:
#_0A88CF: db $60, $2E ; Door 0x2E | Dir:00 | Pos:0C
#_0A88D1: db $80, $2E ; Door 0x2E | Dir:00 | Pos:10
#_0A88D3: db $82, $2E ; Door 0x2E | Dir:02 | Pos:10
#_0A88D5: db $81, $2E ; Door 0x2E | Dir:01 | Pos:10
#_0A88D7: db $61, $0E ; Door 0x0E | Dir:01 | Pos:0C
#_0A88D9: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_003C:
#_0A88DB: db $E0, $1C ; Floors and Layout
#_0A88DD: db $1B, $23, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 06, 08 } | Size: 0F
#_0A88E0: db $5B, $23, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 16, 08 } | Size: 0F
#_0A88E3: db $9B, $23, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 26, 08 } | Size: 0F
#_0A88E6: db $D8, $23, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 36, 08 } | Size: 03
#_0A88E9: db $1B, $63, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 06, 18 } | Size: 0F
#_0A88EC: db $5B, $63, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 16, 18 } | Size: 0F
#_0A88EF: db $9B, $63, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 26, 18 } | Size: 0F
#_0A88F2: db $D8, $63, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 36, 18 } | Size: 03
#_0A88F5: db $1B, $A3, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 06, 28 } | Size: 0F
#_0A88F8: db $5B, $A3, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 16, 28 } | Size: 0F
#_0A88FB: db $9B, $A3, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 26, 28 } | Size: 0F
#_0A88FE: db $D8, $A3, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 36, 28 } | Size: 03
#_0A8901: db $1B, $D8, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 06, 36 } | Size: 0C
#_0A8904: db $5B, $D8, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 16, 36 } | Size: 0C
#_0A8907: db $9B, $D8, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 26, 36 } | Size: 0C
#_0A890A: db $D8, $D8, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 36, 36 } | Size: 00
#_0A890D: db $17, $1F, $27 ; 0x0027: Pit Top Edge ↔ | { 05, 07 } | Size: 0F
#_0A8910: db $57, $1F, $27 ; 0x0027: Pit Top Edge ↔ | { 15, 07 } | Size: 0F
#_0A8913: db $97, $1F, $27 ; 0x0027: Pit Top Edge ↔ | { 25, 07 } | Size: 0F
#_0A8916: db $D4, $1F, $27 ; 0x0027: Pit Top Edge ↔ | { 35, 07 } | Size: 03
#_0A8919: db $17, $23, $6A ; 0x006A: Left Pit Edge ↕ | { 05, 08 } | Size: 0F
#_0A891C: db $17, $63, $6A ; 0x006A: Left Pit Edge ↕ | { 05, 18 } | Size: 0F
#_0A891F: db $17, $A3, $6A ; 0x006A: Left Pit Edge ↕ | { 05, 28 } | Size: 0F
#_0A8922: db $14, $E1, $6A ; 0x006A: Left Pit Edge ↕ | { 05, 38 } | Size: 01
#_0A8925: db $17, $EB, $28 ; 0x0028: Pit Bottom Edge ↔ | { 05, 3A } | Size: 0F
#_0A8928: db $57, $EB, $28 ; 0x0028: Pit Bottom Edge ↔ | { 15, 3A } | Size: 0F
#_0A892B: db $97, $EB, $28 ; 0x0028: Pit Bottom Edge ↔ | { 25, 3A } | Size: 0F
#_0A892E: db $D4, $EB, $28 ; 0x0028: Pit Bottom Edge ↔ | { 35, 3A } | Size: 03
#_0A8931: db $EB, $23, $6B ; 0x006B: Right Pit Edge ↕ | { 3A, 08 } | Size: 0F
#_0A8934: db $EB, $63, $6B ; 0x006B: Right Pit Edge ↕ | { 3A, 18 } | Size: 0F
#_0A8937: db $EB, $A3, $6B ; 0x006B: Right Pit Edge ↕ | { 3A, 28 } | Size: 0F
#_0A893A: db $E8, $E1, $6B ; 0x006B: Right Pit Edge ↕ | { 3A, 38 } | Size: 01
#_0A893D: db $B8, $21, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 2E, 08 } | Size: 01
#_0A8940: db $B8, $7B, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 2E, 1E } | Size: 03
#_0A8943: db $B8, $BA, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 2E, 2E } | Size: 02
#_0A8946: db $32, $40, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 0C, 10 } | Size: 08
#_0A8949: db $80, $42, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 20, 10 } | Size: 02
#_0A894C: db $28, $72, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 0A, 1C } | Size: 02
#_0A894F: db $50, $6B, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 14, 1A } | Size: 03
#_0A8952: db $81, $91, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 20, 24 } | Size: 05
#_0A8955: db $69, $C8, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 1A, 32 } | Size: 04
#_0A8958: db $B5, $1D, $69 ; 0x0069: Vertical Rail ↕ | { 2D, 07 } | Size: 05
#_0A895B: db $C9, $1D, $69 ; 0x0069: Vertical Rail ↕ | { 32, 07 } | Size: 05
#_0A895E: db $B8, $12, $01 ; 0x0001: Top Wall Horiz. ↔ | { 2E, 04 } | Size: 02
#_0A8961: db $B4, $7A, $69 ; 0x0069: Vertical Rail ↕ | { 2D, 1E } | Size: 02
#_0A8964: db $B6, $B3, $69 ; 0x0069: Vertical Rail ↕ | { 2D, 2C } | Size: 0B
#_0A8967: db $C9, $7A, $8A ; 0x008A: Long Vertical Rail ↕ | { 32, 1E } | Size: 06
#_0A896A: db $B8, $EA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2E, 3A } | Size: 02
#_0A896D: db $B8, $40, $94 ; 0x0094: Invisible Floor ↕ | { 2E, 10 } | Size: 00
#_0A8970: db $C8, $49, $94 ; 0x0094: Invisible Floor ↕ | { 32, 12 } | Size: 01
#_0A8973: db $B8, $59, $94 ; 0x0094: Invisible Floor ↕ | { 2E, 16 } | Size: 01
#_0A8976: db $C3, $9B, $FA ; 0x0FAF: Pot | { 30, 26 } | Size: 0F
#_0A8979: db $33, $43, $FA ; 0x0FAF: Pot | { 0C, 10 } | Size: 0F
#_0A897C: db $2B, $73, $FA ; 0x0FAF: Pot | { 0A, 1C } | Size: 0F
#_0A897F: db $2B, $9B, $FA ; 0x0FAF: Pot | { 0A, 26 } | Size: 0F
#_0A8982: db $89, $42, $F9 ; 0x0F99: Chest | { 22, 10 } | Size: 06
#_0A8985: db $51, $6A, $F9 ; 0x0F99: Chest | { 14, 1A } | Size: 06
#_0A8988: db $59, $92, $F9 ; 0x0F99: Chest | { 16, 24 } | Size: 06
#_0A898B: db $69, $CA, $F9 ; 0x0F99: Chest | { 1A, 32 } | Size: 06
#_0A898E: db $83, $63, $FA ; 0x0FAF: Pot | { 20, 18 } | Size: 0F
#_0A8991: db $50, $78, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 14, 1E } | Size: 00
#_0A8994: db $8B, $93, $FA ; 0x0FAF: Pot | { 22, 24 } | Size: 0F
#_0A8997: db $83, $A3, $FA ; 0x0FAF: Pot | { 20, 28 } | Size: 0F
#_0A899A: db $83, $D3, $FA ; 0x0FAF: Pot | { 20, 34 } | Size: 0F
#_0A899D: db $FF, $FF ; Layer01
#_0A899F: db $FF, $FF ; Layer02
#_0A89A1: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_003C:
#_0A89A3: db $20, $2E ; Door 0x2E | Dir:00 | Pos:04
#_0A89A5: db $81, $0E ; Door 0x0E | Dir:01 | Pos:10
#_0A89A7: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0003:
#_0A89A9: db $E1, $00 ; Floors and Layout
#_0A89AB: db $3F, $94, $F9 ; 0x0F93: Telepathic Tile | { 0F, 25 } | Size: 0C
#_0A89AE: db $1B, $A3, $E2 ; 0x00E2: Rupee Floor ↔ ↕ | { 06, 28 } | Size: 0F
#_0A89B1: db $58, $A3, $E2 ; 0x00E2: Rupee Floor ↔ ↕ | { 16, 28 } | Size: 03
#_0A89B4: db $1B, $D8, $E2 ; 0x00E2: Rupee Floor ↔ ↕ | { 06, 36 } | Size: 0C
#_0A89B7: db $58, $D8, $E2 ; 0x00E2: Rupee Floor ↔ ↕ | { 16, 36 } | Size: 00
#_0A89BA: db $1A, $A0, $F9 ; 0x0F92: Rupee Floor | { 06, 28 } | Size: 08
#_0A89BD: db $36, $A0, $F9 ; 0x0F92: Rupee Floor | { 0D, 28 } | Size: 08
#_0A89C0: db $52, $A0, $F9 ; 0x0F92: Rupee Floor | { 14, 28 } | Size: 08
#_0A89C3: db $1A, $C8, $F9 ; 0x0F92: Rupee Floor | { 06, 32 } | Size: 08
#_0A89C6: db $52, $C8, $F9 ; 0x0F92: Rupee Floor | { 14, 32 } | Size: 08
#_0A89C9: db $FF, $FF ; Layer01
#_0A89CB: db $FF, $FF ; Layer02
#_0A89CD: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0003:
#_0A89CF: db $61, $0E ; Door 0x0E | Dir:01 | Pos:0C
#_0A89D1: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0012:
#_0A89D3: db $E2, $1C ; Floors and Layout
#_0A89D5: db $FC, $E1, $00 ; 0x0100: Wall Inner Corner ▛ | { 0E, 04 } | Size: 00
#_0A89D8: db $3B, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0E, 08 } | Size: 0F
#_0A89DB: db $39, $98, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0E, 26 } | Size: 04
#_0A89DE: db $FC, $EB, $41 ; 0x0101: Wall Inner Corner ▙ | { 0E, 2D } | Size: 00
#_0A89E1: db $48, $B5, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 12, 2D } | Size: 01
#_0A89E4: db $51, $C1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 14, 30 } | Size: 05
#_0A89E7: db $FD, $4B, $45 ; 0x0105: Wall Outer Corner ▜ | { 14, 2D } | Size: 00
#_0A89EA: db $FD, $4E, $81 ; 0x0101: Wall Inner Corner ▙ | { 14, 3A } | Size: 00
#_0A89ED: db $FE, $E1, $02 ; 0x0102: Wall Inner Corner ▜ | { 2E, 04 } | Size: 00
#_0A89F0: db $BB, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2E, 08 } | Size: 0F
#_0A89F3: db $B9, $98, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2E, 26 } | Size: 04
#_0A89F6: db $FE, $EB, $43 ; 0x0103: Wall Inner Corner ▟ | { 2E, 2D } | Size: 00
#_0A89F9: db $B0, $B5, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2C, 2D } | Size: 01
#_0A89FC: db $A1, $C1, $62 ; 0x0062: Right Wall Horiz. ↕ | { 28, 30 } | Size: 05
#_0A89FF: db $FE, $8B, $47 ; 0x0107: Wall Outer Corner ▛ | { 28, 2D } | Size: 00
#_0A8A02: db $FE, $8E, $83 ; 0x0103: Wall Inner Corner ▟ | { 28, 3A } | Size: 00
#_0A8A05: db $FD, $11, $C8 ; 0x0108: Wall Corner (Lower) | { 11, 07 } | Size: 00
#_0A8A08: db $56, $1E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 15, 07 } | Size: 0A
#_0A8A0B: db $FE, $B1, $CA ; 0x010A: Wall Corner (Lower) | { 2B, 07 } | Size: 00
#_0A8A0E: db $47, $2F, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 11, 0B } | Size: 0F
#_0A8A11: db $FD, $1A, $89 ; 0x0109: Wall Corner (Lower) | { 11, 2A } | Size: 00
#_0A8A14: db $54, $A8, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 15, 2A } | Size: 00
#_0A8A17: db $5D, $B4, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 17, 2D } | Size: 04
#_0A8A1A: db $FD, $7A, $8D ; 0x010D: Wall Corner (Lower) | { 17, 2A } | Size: 00
#_0A8A1D: db $FD, $7D, $C9 ; 0x0109: Wall Corner (Lower) | { 17, 37 } | Size: 00
#_0A8A20: db $6D, $DC, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 1B, 37 } | Size: 04
#_0A8A23: db $AF, $2F, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 2B, 0B } | Size: 0F
#_0A8A26: db $FE, $BA, $8B ; 0x010B: Wall Corner (Lower) | { 2B, 2A } | Size: 00
#_0A8A29: db $A4, $A8, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 29, 2A } | Size: 00
#_0A8A2C: db $95, $B4, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 25, 2D } | Size: 04
#_0A8A2F: db $FE, $5A, $8F ; 0x010F: Wall Corner (Lower) | { 25, 2A } | Size: 00
#_0A8A32: db $FE, $5D, $CB ; 0x010B: Wall Corner (Lower) | { 25, 37 } | Size: 00
#_0A8A35: db $FD, $41, $3C ; 0x013C: Sanctuary Wall | { 14, 04 } | Size: 00
#_0A8A38: db $7A, $4C, $70 ; 0x0070: Carpet Floor ↕ | { 1E, 13 } | Size: 08
#_0A8A3B: db $63, $2A, $DC ; 0x00DC: Chest Platform? ↔ ↕ | { 18, 0A } | Size: 0E
#_0A8A3E: db $77, $57, $71 ; 0x0071: Carpet Floor Contour ↕ | { 1D, 15 } | Size: 0F
#_0A8A41: db $76, $A3, $71 ; 0x0071: Carpet Floor Contour ↕ | { 1D, 28 } | Size: 0B
#_0A8A44: db $8B, $57, $71 ; 0x0071: Carpet Floor Contour ↕ | { 22, 15 } | Size: 0F
#_0A8A47: db $8A, $A3, $71 ; 0x0071: Carpet Floor Contour ↕ | { 22, 28 } | Size: 0B
#_0A8A4A: db $71, $2A, $F9 ; 0x0F99: Chest | { 1C, 0A } | Size: 06
#_0A8A4D: db $64, $40, $3D ; 0x003D: Floor Torch ↔ | { 19, 10 } | Size: 00
#_0A8A50: db $94, $40, $3D ; 0x003D: Floor Torch ↔ | { 25, 10 } | Size: 00
#_0A8A53: db $38, $47, $81 ; 0x0081: Left Wall Decoration ↕ | { 0E, 11 } | Size: 03
#_0A8A56: db $44, $47, $83 ; 0x0083: Left Wall Decoration?? ↕ | { 11, 11 } | Size: 03
#_0A8A59: db $BC, $47, $82 ; 0x0082: Right Wall Decoration ↕ | { 2F, 11 } | Size: 03
#_0A8A5C: db $B0, $47, $84 ; 0x0084: Right Wall Decoration?? ↕ | { 2C, 11 } | Size: 03
#_0A8A5F: db $FD, $66, $7E ; 0x013E: ??? | { 16, 19 } | Size: 00
#_0A8A62: db $FD, $67, $BE ; 0x013E: ??? | { 16, 1E } | Size: 00
#_0A8A65: db $FD, $68, $FE ; 0x013E: ??? | { 16, 23 } | Size: 00
#_0A8A68: db $FE, $46, $7E ; 0x013E: ??? | { 24, 19 } | Size: 00
#_0A8A6B: db $FE, $47, $BE ; 0x013E: ??? | { 24, 1E } | Size: 00
#_0A8A6E: db $FE, $48, $FE ; 0x013E: ??? | { 24, 23 } | Size: 00
#_0A8A71: db $0A, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 0B
#_0A8A74: db $0A, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 14 } | Size: 0B
#_0A8A77: db $0A, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 24 } | Size: 0B
#_0A8A7A: db $0A, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 34 } | Size: 0A
#_0A8A7D: db $31, $C6, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 0C, 31 } | Size: 06
#_0A8A80: db $38, $F3, $00 ; 0x0000: Ceiling ↔ | { 0E, 3C } | Size: 03
#_0A8A83: db $B0, $F3, $00 ; 0x0000: Ceiling ↔ | { 2C, 3C } | Size: 03
#_0A8A86: db $B1, $C6, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2C, 31 } | Size: 06
#_0A8A89: db $CA, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 04 } | Size: 0B
#_0A8A8C: db $CA, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 14 } | Size: 0B
#_0A8A8F: db $CA, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 24 } | Size: 0B
#_0A8A92: db $CA, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 34 } | Size: 0A
#_0A8A95: db $FF, $FF ; Layer01
#_0A8A97: db $FF, $FF ; Layer02
#_0A8A99: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0012:
#_0A8A9B: db $40, $02 ; Door 0x02 | Dir:00 | Pos:08
#_0A8A9D: db $40, $16 ; Door 0x16 | Dir:00 | Pos:08
#_0A8A9F: db $A1, $02 ; Door 0x02 | Dir:01 | Pos:14
#_0A8AA1: db $A1, $12 ; Door 0x12 | Dir:01 | Pos:14
#_0A8AA3: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0002:
#_0A8AA5: db $77, $10 ; Floors and Layout
#_0A8AA7: db $FC, $C1, $00 ; 0x0100: Wall Inner Corner ▛ | { 0C, 04 } | Size: 00
#_0A8AAA: db $32, $21, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0C, 08 } | Size: 09
#_0A8AAD: db $FC, $C6, $81 ; 0x0101: Wall Inner Corner ▙ | { 0C, 1A } | Size: 00
#_0A8AB0: db $FF, $51, $02 ; 0x0102: Wall Inner Corner ▜ | { 35, 04 } | Size: 00
#_0A8AB3: db $D6, $21, $62 ; 0x0062: Right Wall Horiz. ↕ | { 35, 08 } | Size: 09
#_0A8AB6: db $FF, $56, $83 ; 0x0103: Wall Inner Corner ▟ | { 35, 1A } | Size: 00
#_0A8AB9: db $FC, $F1, $C8 ; 0x0108: Wall Corner (Lower) | { 0F, 07 } | Size: 00
#_0A8ABC: db $4F, $1F, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 13, 07 } | Size: 0F
#_0A8ABF: db $FF, $21, $CA ; 0x010A: Wall Corner (Lower) | { 32, 07 } | Size: 00
#_0A8AC2: db $3D, $2D, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0F, 0B } | Size: 05
#_0A8AC5: db $FC, $F5, $C9 ; 0x0109: Wall Corner (Lower) | { 0F, 17 } | Size: 00
#_0A8AC8: db $4F, $5F, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 13, 17 } | Size: 0F
#_0A8ACB: db $C9, $2D, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 32, 0B } | Size: 05
#_0A8ACE: db $FF, $25, $CB ; 0x010B: Wall Corner (Lower) | { 32, 17 } | Size: 00
#_0A8AD1: db $FD, $59, $00 ; 0x0100: Wall Inner Corner ▛ | { 15, 24 } | Size: 00
#_0A8AD4: db $54, $A1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 15, 28 } | Size: 01
#_0A8AD7: db $40, $AB, $01 ; 0x0001: Top Wall Horiz. ↔ | { 10, 2A } | Size: 03
#_0A8ADA: db $FD, $5A, $84 ; 0x0104: Wall Outer Corner ▟ | { 15, 2A } | Size: 00
#_0A8ADD: db $FC, $CA, $80 ; 0x0100: Wall Inner Corner ▛ | { 0C, 2A } | Size: 00
#_0A8AE0: db $31, $BA, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0C, 2E } | Size: 06
#_0A8AE3: db $FC, $CE, $81 ; 0x0101: Wall Inner Corner ▙ | { 0C, 3A } | Size: 00
#_0A8AE6: db $FE, $79, $02 ; 0x0102: Wall Inner Corner ▜ | { 27, 24 } | Size: 00
#_0A8AE9: db $9C, $A1, $62 ; 0x0062: Right Wall Horiz. ↕ | { 27, 28 } | Size: 01
#_0A8AEC: db $A8, $AB, $01 ; 0x0001: Top Wall Horiz. ↔ | { 2A, 2A } | Size: 03
#_0A8AEF: db $FE, $7A, $86 ; 0x0106: Wall Outer Corner ▙ | { 27, 2A } | Size: 00
#_0A8AF2: db $FF, $0A, $82 ; 0x0102: Wall Inner Corner ▜ | { 30, 2A } | Size: 00
#_0A8AF5: db $C1, $BA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 30, 2E } | Size: 06
#_0A8AF8: db $FF, $0E, $83 ; 0x0103: Wall Inner Corner ▟ | { 30, 3A } | Size: 00
#_0A8AFB: db $FD, $89, $C8 ; 0x0108: Wall Corner (Lower) | { 18, 27 } | Size: 00
#_0A8AFE: db $70, $9F, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 1C, 27 } | Size: 03
#_0A8B01: db $FE, $49, $CA ; 0x010A: Wall Corner (Lower) | { 24, 27 } | Size: 00
#_0A8B04: db $60, $AC, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 18, 2B } | Size: 00
#_0A8B07: db $4C, $B6, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 13, 2D } | Size: 02
#_0A8B0A: db $FC, $FB, $48 ; 0x0108: Wall Corner (Lower) | { 0F, 2D } | Size: 00
#_0A8B0D: db $FD, $8B, $4C ; 0x010C: Wall Corner (Lower) | { 18, 2D } | Size: 00
#_0A8B10: db $3C, $C6, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0F, 31 } | Size: 02
#_0A8B13: db $FC, $FD, $C9 ; 0x0109: Wall Corner (Lower) | { 0F, 37 } | Size: 00
#_0A8B16: db $4F, $DC, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 13, 37 } | Size: 0C
#_0A8B19: db $FE, $DD, $CB ; 0x010B: Wall Corner (Lower) | { 2D, 37 } | Size: 00
#_0A8B1C: db $90, $AC, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 24, 2B } | Size: 00
#_0A8B1F: db $FE, $4B, $4E ; 0x010E: Wall Corner (Lower) | { 24, 2D } | Size: 00
#_0A8B22: db $A0, $B6, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 28, 2D } | Size: 02
#_0A8B25: db $FE, $DB, $4A ; 0x010A: Wall Corner (Lower) | { 2D, 2D } | Size: 00
#_0A8B28: db $B4, $C6, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 2D, 31 } | Size: 02
#_0A8B2B: db $08, $00, $60 ; 0x0060: Ceiling ↕ | { 02, 00 } | Size: 00
#_0A8B2E: db $10, $00, $60 ; 0x0060: Ceiling ↕ | { 04, 00 } | Size: 00
#_0A8B31: db $11, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 04, 04 } | Size: 07
#_0A8B34: db $11, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 04, 14 } | Size: 06
#_0A8B37: db $17, $89, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 05, 22 } | Size: 0D
#_0A8B3A: db $11, $AB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 04, 2A } | Size: 07
#_0A8B3D: db $11, $E8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 04, 3A } | Size: 04
#_0A8B40: db $E4, $00, $60 ; 0x0060: Ceiling ↕ | { 39, 00 } | Size: 00
#_0A8B43: db $EC, $00, $60 ; 0x0060: Ceiling ↕ | { 3B, 00 } | Size: 00
#_0A8B46: db $F0, $00, $60 ; 0x0060: Ceiling ↕ | { 3C, 00 } | Size: 00
#_0A8B49: db $AF, $89, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2B, 22 } | Size: 0D
#_0A8B4C: db $D1, $AB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 34, 2A } | Size: 07
#_0A8B4F: db $D1, $E8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 34, 3A } | Size: 04
#_0A8B52: db $FF, $FF ; Layer01
#_0A8B54: db $FE, $E1, $FB ; 0x013B: Spiral Staircase Down (Lower) | { 2E, 07 } | Size: 00
#_0A8B57: db $A3, $33, $FA ; 0x0FAF: Pot | { 28, 0C } | Size: 0F
#_0A8B5A: db $A3, $43, $FA ; 0x0FAF: Pot | { 28, 10 } | Size: 0F
#_0A8B5D: db $5B, $43, $FA ; 0x0FAF: Pot | { 16, 10 } | Size: 0F
#_0A8B60: db $5B, $53, $FA ; 0x0FAF: Pot | { 16, 14 } | Size: 0F
#_0A8B63: db $71, $6E, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1C, 1B } | Size: 06
#_0A8B66: db $81, $6E, $62 ; 0x0062: Right Wall Horiz. ↕ | { 20, 1B } | Size: 06
#_0A8B69: db $70, $EE, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1C, 3B } | Size: 02
#_0A8B6C: db $80, $EE, $62 ; 0x0062: Right Wall Horiz. ↕ | { 20, 3B } | Size: 02
#_0A8B6F: db $FF, $FF ; Layer02
#_0A8B71: db $3F, $1F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0F, 07 } | Size: 0F
#_0A8B74: db $7F, $1F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1F, 07 } | Size: 0F
#_0A8B77: db $B9, $1F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2E, 07 } | Size: 07
#_0A8B7A: db $3F, $5C, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0F, 17 } | Size: 0C
#_0A8B7D: db $7F, $5C, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1F, 17 } | Size: 0C
#_0A8B80: db $B9, $5C, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2E, 17 } | Size: 04
#_0A8B83: db $63, $9F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 18, 27 } | Size: 0F
#_0A8B86: db $3E, $B6, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0F, 2D } | Size: 0A
#_0A8B89: db $3F, $DC, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0F, 37 } | Size: 0C
#_0A8B8C: db $7F, $DC, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1F, 37 } | Size: 0C
#_0A8B8F: db $96, $B6, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 25, 2D } | Size: 0A
#_0A8B92: db $B4, $DC, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2D, 37 } | Size: 00
#_0A8B95: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0002:
#_0A8B97: db $A1, $44 ; Door 0x44 | Dir:01 | Pos:14
#_0A8B99: db $A0, $40 ; Door 0x40 | Dir:00 | Pos:14
#_0A8B9B: db $A1, $16 ; Door 0x16 | Dir:01 | Pos:14
#_0A8B9D: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0011:
#_0A8B9F: db $E1, $04 ; Floors and Layout
#_0A8BA1: db $FE, $A1, $00 ; 0x0100: Wall Inner Corner ▛ | { 2A, 04 } | Size: 00
#_0A8BA4: db $FF, $21, $02 ; 0x0102: Wall Inner Corner ▜ | { 32, 04 } | Size: 00
#_0A8BA7: db $C8, $22, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 08 } | Size: 02
#_0A8BAA: db $FF, $22, $C6 ; 0x0106: Wall Outer Corner ▙ | { 32, 0B } | Size: 00
#_0A8BAD: db $FF, $A2, $C2 ; 0x0102: Wall Inner Corner ▜ | { 3A, 0B } | Size: 00
#_0A8BB0: db $D8, $2E, $01 ; 0x0001: Top Wall Horiz. ↔ | { 36, 0B } | Size: 02
#_0A8BB3: db $A8, $22, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 08 } | Size: 02
#_0A8BB6: db $FE, $A2, $C4 ; 0x0104: Wall Outer Corner ▟ | { 2A, 0B } | Size: 00
#_0A8BB9: db $98, $2E, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 0B } | Size: 02
#_0A8BBC: db $FE, $22, $C0 ; 0x0100: Wall Inner Corner ▛ | { 22, 0B } | Size: 00
#_0A8BBF: db $FE, $24, $C1 ; 0x0101: Wall Inner Corner ▙ | { 22, 13 } | Size: 00
#_0A8BC2: db $98, $4E, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 26, 13 } | Size: 02
#_0A8BC5: db $FE, $A4, $C5 ; 0x0105: Wall Outer Corner ▜ | { 2A, 13 } | Size: 00
#_0A8BC8: db $AA, $5E, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 17 } | Size: 0A
#_0A8BCB: db $FE, $AA, $C4 ; 0x0104: Wall Outer Corner ▟ | { 2A, 2B } | Size: 00
#_0A8BCE: db $98, $AE, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 2B } | Size: 02
#_0A8BD1: db $FE, $2A, $C0 ; 0x0100: Wall Inner Corner ▛ | { 22, 2B } | Size: 00
#_0A8BD4: db $FE, $2C, $C1 ; 0x0101: Wall Inner Corner ▙ | { 22, 33 } | Size: 00
#_0A8BD7: db $98, $CE, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 26, 33 } | Size: 02
#_0A8BDA: db $FE, $AC, $C5 ; 0x0105: Wall Outer Corner ▜ | { 2A, 33 } | Size: 00
#_0A8BDD: db $A8, $DE, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 37 } | Size: 02
#_0A8BE0: db $FE, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 2A, 3A } | Size: 00
#_0A8BE3: db $FF, $2C, $C7 ; 0x0107: Wall Outer Corner ▛ | { 32, 33 } | Size: 00
#_0A8BE6: db $C8, $DE, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 37 } | Size: 02
#_0A8BE9: db $FF, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 32, 3A } | Size: 00
#_0A8BEC: db $D8, $CE, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 36, 33 } | Size: 02
#_0A8BEF: db $FF, $AC, $C3 ; 0x0103: Wall Inner Corner ▟ | { 3A, 33 } | Size: 00
#_0A8BF2: db $23, $7F, $FA ; 0x0FAF: Pot | { 08, 1F } | Size: 0F
#_0A8BF5: db $33, $7F, $FA ; 0x0FAF: Pot | { 0C, 1F } | Size: 0F
#_0A8BF8: db $43, $7F, $FA ; 0x0FAF: Pot | { 10, 1F } | Size: 0F
#_0A8BFB: db $21, $8E, $F9 ; 0x0F99: Chest | { 08, 23 } | Size: 06
#_0A8BFE: db $31, $8E, $F9 ; 0x0F99: Chest | { 0C, 23 } | Size: 06
#_0A8C01: db $41, $8E, $F9 ; 0x0F99: Chest | { 10, 23 } | Size: 06
#_0A8C04: db $23, $9F, $FA ; 0x0FAF: Pot | { 08, 27 } | Size: 0F
#_0A8C07: db $33, $9F, $FA ; 0x0FAF: Pot | { 0C, 27 } | Size: 0F
#_0A8C0A: db $43, $9F, $FA ; 0x0FAF: Pot | { 10, 27 } | Size: 0F
#_0A8C0D: db $C4, $30, $5E ; 0x005E: Block ↔ | { 31, 0C } | Size: 00
#_0A8C10: db $B4, $39, $5E ; 0x005E: Block ↔ | { 2D, 0E } | Size: 01
#_0A8C13: db $FE, $E1, $38 ; 0x0138: Spiral Staircase Up | { 2E, 04 } | Size: 00
#_0A8C16: db $AC, $60, $7F ; 0x007F: Left Wall Torches ↕ | { 2B, 18 } | Size: 00
#_0A8C19: db $AC, $98, $7F ; 0x007F: Left Wall Torches ↕ | { 2B, 26 } | Size: 00
#_0A8C1C: db $EC, $4A, $80 ; 0x0080: Right Wall Torches ↕ | { 3B, 12 } | Size: 02
#_0A8C1F: db $64, $4D, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 19, 13 } | Size: 01
#_0A8C22: db $FD, $54, $C7 ; 0x0107: Wall Outer Corner ▛ | { 15, 13 } | Size: 00
#_0A8C25: db $56, $5E, $62 ; 0x0062: Right Wall Horiz. ↕ | { 15, 17 } | Size: 0A
#_0A8C28: db $FD, $5A, $C6 ; 0x0106: Wall Outer Corner ▙ | { 15, 2B } | Size: 00
#_0A8C2B: db $64, $AD, $01 ; 0x0001: Top Wall Horiz. ↔ | { 19, 2B } | Size: 01
#_0A8C2E: db $FD, $AA, $C2 ; 0x0102: Wall Inner Corner ▜ | { 1A, 2B } | Size: 00
#_0A8C31: db $FD, $A4, $C3 ; 0x0103: Wall Inner Corner ▟ | { 1A, 13 } | Size: 00
#_0A8C34: db $89, $0D, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 03 } | Size: 05
#_0A8C37: db $D9, $0D, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 03 } | Size: 05
#_0A8C3A: db $65, $5F, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 19, 17 } | Size: 07
#_0A8C3D: db $65, $9C, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 19, 27 } | Size: 04
#_0A8C40: db $89, $5F, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 17 } | Size: 07
#_0A8C43: db $89, $9C, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 27 } | Size: 04
#_0A8C46: db $89, $DD, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 37 } | Size: 05
#_0A8C49: db $D9, $DD, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 37 } | Size: 05
#_0A8C4C: db $FF, $FF ; Layer01
#_0A8C4E: db $FF, $FF ; Layer02
#_0A8C50: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0011:
#_0A8C52: db $62, $28 ; Door 0x28 | Dir:02 | Pos:0C
#_0A8C54: db $82, $28 ; Door 0x28 | Dir:02 | Pos:10
#_0A8C56: db $81, $1C ; Door 0x1C | Dir:01 | Pos:10
#_0A8C58: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0021:
#_0A8C5A: db $E1, $10 ; Floors and Layout
#_0A8C5C: db $23, $AC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 08, 2B } | Size: 0C
#_0A8C5F: db $62, $AC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 18, 2B } | Size: 08
#_0A8C62: db $50, $9C, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 14, 27 } | Size: 00
#_0A8C65: db $21, $CD, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 08, 33 } | Size: 05
#_0A8C68: db $43, $CC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 10, 33 } | Size: 0C
#_0A8C6B: db $80, $CC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 20, 33 } | Size: 00
#_0A8C6E: db $E9, $A3, $62 ; 0x0062: Right Wall Horiz. ↕ | { 3A, 28 } | Size: 07
#_0A8C71: db $43, $A7, $FA ; 0x0FAF: Pot | { 10, 29 } | Size: 0F
#_0A8C74: db $CB, $E3, $FA ; 0x0FAF: Pot | { 32, 38 } | Size: 0F
#_0A8C77: db $D3, $E3, $FA ; 0x0FAF: Pot | { 34, 38 } | Size: 0F
#_0A8C7A: db $53, $C7, $FA ; 0x0FAF: Pot | { 14, 31 } | Size: 0F
#_0A8C7D: db $A7, $E3, $FA ; 0x0FAF: Pot | { 29, 38 } | Size: 0F
#_0A8C80: db $63, $E3, $FA ; 0x0FAF: Pot | { 18, 38 } | Size: 0F
#_0A8C83: db $FF, $6D, $87 ; 0x0107: Wall Outer Corner ▛ | { 36, 36 } | Size: 00
#_0A8C86: db $FF, $AD, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 36 } | Size: 00
#_0A8C89: db $FF, $6E, $83 ; 0x0103: Wall Inner Corner ▟ | { 36, 3A } | Size: 00
#_0A8C8C: db $20, $B1, $79 ; 0x0079: Water Edge ↕ | { 08, 2C } | Size: 01
#_0A8C8F: db $22, $AE, $46 ; 0x0046: Water Edge ↔ | { 08, 2B } | Size: 0A
#_0A8C92: db $50, $A2, $79 ; 0x0079: Water Edge ↕ | { 14, 28 } | Size: 02
#_0A8C95: db $50, $9D, $3F ; 0x003F: Water Edge ↔ | { 14, 27 } | Size: 01
#_0A8C98: db $5C, $A2, $7A ; 0x007A: Water Edge ↕ | { 17, 28 } | Size: 02
#_0A8C9B: db $93, $AE, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 24, 2B } | Size: 0E
#_0A8C9E: db $9B, $9C, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 26, 27 } | Size: 0C
#_0A8CA1: db $D0, $9E, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 34, 27 } | Size: 02
#_0A8CA4: db $D8, $9D, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 36, 27 } | Size: 01
#_0A8CA7: db $5F, $AD, $42 ; 0x0042: Water Edge ↔ | { 17, 2B } | Size: 0D
#_0A8CAA: db $98, $A2, $79 ; 0x0079: Water Edge ↕ | { 26, 28 } | Size: 02
#_0A8CAD: db $9B, $9F, $3F ; 0x003F: Water Edge ↔ | { 26, 27 } | Size: 0F
#_0A8CB0: db $D8, $9E, $3F ; 0x003F: Water Edge ↔ | { 36, 27 } | Size: 02
#_0A8CB3: db $E9, $A1, $7A ; 0x007A: Water Edge ↕ | { 3A, 28 } | Size: 05
#_0A8CB6: db $CC, $CE, $43 ; 0x0043: Water Edge ↔ | { 33, 33 } | Size: 02
#_0A8CB9: db $DC, $BF, $7A ; 0x007A: Water Edge ↕ | { 37, 2F } | Size: 03
#_0A8CBC: db $DC, $B9, $43 ; 0x0043: Water Edge ↔ | { 37, 2E } | Size: 01
#_0A8CBF: db $23, $BB, $44 ; 0x0044: Water Edge ↔ | { 08, 2E } | Size: 0F
#_0A8CC2: db $62, $BA, $41 ; 0x0041: Water Edge ↔ | { 18, 2E } | Size: 0A
#_0A8CC5: db $90, $BF, $79 ; 0x0079: Water Edge ↕ | { 24, 2F } | Size: 03
#_0A8CC8: db $23, $CF, $3F ; 0x003F: Water Edge ↔ | { 08, 33 } | Size: 0F
#_0A8CCB: db $62, $CE, $42 ; 0x0042: Water Edge ↔ | { 18, 33 } | Size: 0A
#_0A8CCE: db $21, $D1, $79 ; 0x0079: Water Edge ↕ | { 08, 34 } | Size: 05
#_0A8CD1: db $21, $E9, $40 ; 0x0040: Water Edge ↔ | { 08, 3A } | Size: 05
#_0A8CD4: db $3C, $E1, $7A ; 0x007A: Water Edge ↕ | { 0F, 38 } | Size: 01
#_0A8CD7: db $3F, $DF, $43 ; 0x0043: Water Edge ↔ | { 0F, 37 } | Size: 0F
#_0A8CDA: db $7F, $DF, $43 ; 0x0043: Water Edge ↔ | { 1F, 37 } | Size: 0F
#_0A8CDD: db $BC, $DE, $43 ; 0x0043: Water Edge ↔ | { 2F, 37 } | Size: 02
#_0A8CE0: db $CC, $D2, $7A ; 0x007A: Water Edge ↕ | { 33, 34 } | Size: 02
#_0A8CE3: db $FC, $62, $00 ; 0x0100: Wall Inner Corner ▛ | { 06, 08 } | Size: 00
#_0A8CE6: db $19, $33, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 0C } | Size: 07
#_0A8CE9: db $FC, $66, $81 ; 0x0101: Wall Inner Corner ▙ | { 06, 1A } | Size: 00
#_0A8CEC: db $28, $21, $01 ; 0x0001: Top Wall Horiz. ↔ | { 0A, 08 } | Size: 01
#_0A8CEF: db $FC, $C2, $02 ; 0x0102: Wall Inner Corner ▜ | { 0C, 08 } | Size: 00
#_0A8CF2: db $30, $31, $62 ; 0x0062: Right Wall Horiz. ↕ | { 0C, 0C } | Size: 01
#_0A8CF5: db $FC, $C3, $86 ; 0x0106: Wall Outer Corner ▙ | { 0C, 0E } | Size: 00
#_0A8CF8: db $42, $3B, $01 ; 0x0001: Top Wall Horiz. ↔ | { 10, 0E } | Size: 0B
#_0A8CFB: db $FE, $63, $84 ; 0x0104: Wall Outer Corner ▟ | { 26, 0E } | Size: 00
#_0A8CFE: db $98, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 26, 08 } | Size: 03
#_0A8D01: db $FE, $61, $00 ; 0x0100: Wall Inner Corner ▛ | { 26, 04 } | Size: 00
#_0A8D04: db $FF, $61, $02 ; 0x0102: Wall Inner Corner ▜ | { 36, 04 } | Size: 00
#_0A8D07: db $DA, $21, $62 ; 0x0062: Right Wall Horiz. ↕ | { 36, 08 } | Size: 09
#_0A8D0A: db $FF, $66, $83 ; 0x0103: Wall Inner Corner ▟ | { 36, 1A } | Size: 00
#_0A8D0D: db $43, $0A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 10, 02 } | Size: 0E
#_0A8D10: db $79, $0A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1E, 02 } | Size: 06
#_0A8D13: db $0B, $10, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 0C
#_0A8D16: db $0A, $23, $60 ; 0x0060: Ceiling ↕ | { 02, 08 } | Size: 0B
#_0A8D19: db $12, $23, $60 ; 0x0060: Ceiling ↕ | { 04, 08 } | Size: 0B
#_0A8D1C: db $EB, $11, $60 ; 0x0060: Ceiling ↕ | { 3A, 04 } | Size: 0D
#_0A8D1F: db $F3, $11, $60 ; 0x0060: Ceiling ↕ | { 3C, 04 } | Size: 0D
#_0A8D22: db $E8, $E8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 3A } | Size: 00
#_0A8D25: db $FF, $FF ; Layer01
#_0A8D27: db $36, $42, $FA ; 0x0FAA: LAMP | { 0D, 10 } | Size: 0A
#_0A8D2A: db $FF, $FF ; Layer02
#_0A8D2C: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0021:
#_0A8D2E: db $20, $1C ; Door 0x1C | Dir:00 | Pos:04
#_0A8D30: db $70, $00 ; Door 0x00 | Dir:00 | Pos:0E
#_0A8D32: db $83, $00 ; Door 0x00 | Dir:03 | Pos:10
#_0A8D34: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0022:
#_0A8D36: db $E1, $10 ; Floors and Layout
#_0A8D38: db $18, $DB, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 36 } | Size: 03
#_0A8D3B: db $FC, $CD, $85 ; 0x0105: Wall Outer Corner ▜ | { 0C, 36 } | Size: 00
#_0A8D3E: db $FC, $CE, $81 ; 0x0101: Wall Inner Corner ▙ | { 0C, 3A } | Size: 00
#_0A8D41: db $FE, $79, $02 ; 0x0102: Wall Inner Corner ▜ | { 27, 24 } | Size: 00
#_0A8D44: db $9E, $A1, $62 ; 0x0062: Right Wall Horiz. ↕ | { 27, 28 } | Size: 09
#_0A8D47: db $FE, $7E, $83 ; 0x0103: Wall Inner Corner ▟ | { 27, 3A } | Size: 00
#_0A8D4A: db $10, $BC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 04, 2F } | Size: 00
#_0A8D4D: db $12, $CC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 04, 33 } | Size: 08
#_0A8D50: db $12, $AC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 04, 2B } | Size: 08
#_0A8D53: db $30, $BC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 0C, 2F } | Size: 00
#_0A8D56: db $43, $AC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 10, 2B } | Size: 0C
#_0A8D59: db $43, $CC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 10, 33 } | Size: 0C
#_0A8D5C: db $41, $DC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 10, 37 } | Size: 04
#_0A8D5F: db $50, $BC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 14, 2F } | Size: 00
#_0A8D62: db $72, $BC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 1C, 2F } | Size: 08
#_0A8D65: db $80, $CC, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 20, 33 } | Size: 00
#_0A8D68: db $20, $BA, $41 ; 0x0041: Water Edge ↔ | { 08, 2E } | Size: 02
#_0A8D6B: db $20, $CE, $42 ; 0x0042: Water Edge ↔ | { 08, 33 } | Size: 02
#_0A8D6E: db $20, $BF, $7A ; 0x007A: Water Edge ↕ | { 08, 2F } | Size: 03
#_0A8D71: db $30, $BF, $79 ; 0x0079: Water Edge ↕ | { 0C, 2F } | Size: 03
#_0A8D74: db $40, $BE, $41 ; 0x0041: Water Edge ↔ | { 10, 2F } | Size: 02
#_0A8D77: db $40, $CA, $42 ; 0x0042: Water Edge ↔ | { 10, 32 } | Size: 02
#_0A8D7A: db $40, $C1, $7A ; 0x007A: Water Edge ↕ | { 10, 30 } | Size: 01
#_0A8D7D: db $50, $C1, $79 ; 0x0079: Water Edge ↕ | { 14, 30 } | Size: 01
#_0A8D80: db $5C, $BE, $41 ; 0x0041: Water Edge ↔ | { 17, 2F } | Size: 02
#_0A8D83: db $5C, $CA, $42 ; 0x0042: Water Edge ↔ | { 17, 32 } | Size: 02
#_0A8D86: db $5C, $C1, $7A ; 0x007A: Water Edge ↕ | { 17, 30 } | Size: 01
#_0A8D89: db $6C, $C1, $79 ; 0x0079: Water Edge ↕ | { 1B, 30 } | Size: 01
#_0A8D8C: db $FC, $2D, $81 ; 0x0101: Wall Inner Corner ▙ | { 02, 36 } | Size: 00
#_0A8D8F: db $09, $A3, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 28 } | Size: 07
#_0A8D92: db $17, $AF, $3F ; 0x003F: Water Edge ↔ | { 05, 2B } | Size: 0F
#_0A8D95: db $56, $AD, $3F ; 0x003F: Water Edge ↔ | { 15, 2B } | Size: 09
#_0A8D98: db $80, $B1, $7A ; 0x007A: Water Edge ↕ | { 20, 2C } | Size: 01
#_0A8D9B: db $81, $B9, $45 ; 0x0045: Water Edge ↔ | { 20, 2E } | Size: 05
#_0A8D9E: db $16, $D8, $44 ; 0x0044: Water Edge ↔ | { 05, 36 } | Size: 08
#_0A8DA1: db $16, $B1, $79 ; 0x0079: Water Edge ↕ | { 05, 2C } | Size: 09
#_0A8DA4: db $3C, $DE, $79 ; 0x0079: Water Edge ↕ | { 0F, 37 } | Size: 02
#_0A8DA7: db $3D, $EA, $40 ; 0x0040: Water Edge ↔ | { 0F, 3A } | Size: 06
#_0A8DAA: db $5C, $DE, $7A ; 0x007A: Water Edge ↕ | { 17, 37 } | Size: 02
#_0A8DAD: db $5E, $DB, $43 ; 0x0043: Water Edge ↔ | { 17, 36 } | Size: 0B
#_0A8DB0: db $90, $D1, $7A ; 0x007A: Water Edge ↕ | { 24, 34 } | Size: 01
#_0A8DB3: db $90, $CD, $43 ; 0x0043: Water Edge ↔ | { 24, 33 } | Size: 01
#_0A8DB6: db $9C, $BF, $7A ; 0x007A: Water Edge ↕ | { 27, 2F } | Size: 03
#_0A8DB9: db $02, $E8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 3A } | Size: 08
#_0A8DBC: db $AF, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2B, 24 } | Size: 0F
#_0A8DBF: db $AF, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2B, 34 } | Size: 0E
#_0A8DC2: db $E1, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 38, 24 } | Size: 07
#_0A8DC5: db $E1, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 38, 34 } | Size: 06
#_0A8DC8: db $FF, $FF ; Layer01
#_0A8DCA: db $2E, $3E, $FA ; 0x0FAA: LAMP | { 0B, 0F } | Size: 0A
#_0A8DCD: db $FF, $FF ; Layer02
#_0A8DCF: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0022:
#_0A8DD1: db $71, $1C ; Door 0x1C | Dir:01 | Pos:0E
#_0A8DD3: db $22, $00 ; Door 0x00 | Dir:02 | Pos:04
#_0A8DD5: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0032:
#_0A8DD7: db $E1, $1C ; Floors and Layout
#_0A8DD9: db $FD, $A1, $00 ; 0x0100: Wall Inner Corner ▛ | { 1A, 04 } | Size: 00
#_0A8DDC: db $69, $22, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1A, 08 } | Size: 06
#_0A8DDF: db $1A, $52, $01 ; 0x0001: Top Wall Horiz. ↔ | { 06, 14 } | Size: 0A
#_0A8DE2: db $FD, $A5, $04 ; 0x0104: Wall Outer Corner ▟ | { 1A, 14 } | Size: 00
#_0A8DE5: db $FC, $25, $00 ; 0x0100: Wall Inner Corner ▛ | { 02, 14 } | Size: 00
#_0A8DE8: db $FC, $28, $01 ; 0x0101: Wall Inner Corner ▙ | { 02, 20 } | Size: 00
#_0A8DEB: db $1A, $82, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 20 } | Size: 0A
#_0A8DEE: db $FD, $A8, $05 ; 0x0105: Wall Outer Corner ▜ | { 1A, 20 } | Size: 00
#_0A8DF1: db $6A, $93, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1A, 24 } | Size: 0B
#_0A8DF4: db $FD, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 1A, 3A } | Size: 00
#_0A8DF7: db $FE, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 22, 3A } | Size: 00
#_0A8DFA: db $8A, $93, $62 ; 0x0062: Right Wall Horiz. ↕ | { 22, 24 } | Size: 0B
#_0A8DFD: db $9A, $82, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 26, 20 } | Size: 0A
#_0A8E00: db $FE, $28, $07 ; 0x0107: Wall Outer Corner ▛ | { 22, 20 } | Size: 00
#_0A8E03: db $FF, $A8, $03 ; 0x0103: Wall Inner Corner ▟ | { 3A, 20 } | Size: 00
#_0A8E06: db $9A, $52, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 14 } | Size: 0A
#_0A8E09: db $FF, $A5, $02 ; 0x0102: Wall Inner Corner ▜ | { 3A, 14 } | Size: 00
#_0A8E0C: db $FE, $25, $06 ; 0x0106: Wall Outer Corner ▙ | { 22, 14 } | Size: 00
#_0A8E0F: db $78, $E8, $FA ; 0x0FA0: Staircase Going Up (Down) | { 1E, 3A } | Size: 00
#_0A8E12: db $3B, $6B, $FA ; 0x0FAF: Pot | { 0E, 1A } | Size: 0F
#_0A8E15: db $C1, $6A, $F9 ; 0x0F99: Chest | { 30, 1A } | Size: 06
#_0A8E18: db $89, $22, $62 ; 0x0062: Right Wall Horiz. ↕ | { 22, 08 } | Size: 06
#_0A8E1B: db $FE, $21, $02 ; 0x0102: Wall Inner Corner ▜ | { 22, 04 } | Size: 00
#_0A8E1E: db $0B, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 0F
#_0A8E21: db $49, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 04 } | Size: 07
#_0A8E24: db $0B, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 24 } | Size: 0F
#_0A8E27: db $0B, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 34 } | Size: 0E
#_0A8E2A: db $49, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 24 } | Size: 07
#_0A8E2D: db $49, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 34 } | Size: 06
#_0A8E30: db $9B, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 26, 04 } | Size: 0F
#_0A8E33: db $D9, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 04 } | Size: 07
#_0A8E36: db $9B, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 26, 24 } | Size: 0F
#_0A8E39: db $9B, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 26, 34 } | Size: 0E
#_0A8E3C: db $D9, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 24 } | Size: 07
#_0A8E3F: db $D9, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 34 } | Size: 06
#_0A8E42: db $FF, $FF ; Layer01
#_0A8E44: db $2E, $3E, $FA ; 0x0FAA: LAMP | { 0B, 0F } | Size: 0A
#_0A8E47: db $FF, $FF ; Layer02
#_0A8E49: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0032:
#_0A8E4B: db $10, $1C ; Door 0x1C | Dir:00 | Pos:02
#_0A8E4D: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0042:
#_0A8E4F: db $E1, $10 ; Floors and Layout
#_0A8E51: db $FE, $31, $02 ; 0x0102: Wall Inner Corner ▜ | { 23, 04 } | Size: 00
#_0A8E54: db $FE, $32, $06 ; 0x0106: Wall Outer Corner ▙ | { 23, 08 } | Size: 00
#_0A8E57: db $FE, $F2, $04 ; 0x0104: Wall Outer Corner ▟ | { 2F, 08 } | Size: 00
#_0A8E5A: db $FE, $F1, $00 ; 0x0100: Wall Inner Corner ▛ | { 2F, 04 } | Size: 00
#_0A8E5D: db $9D, $20, $01 ; 0x0001: Top Wall Horiz. ↔ | { 27, 08 } | Size: 04
#_0A8E60: db $FD, $81, $00 ; 0x0100: Wall Inner Corner ▛ | { 18, 04 } | Size: 00
#_0A8E63: db $61, $20, $61 ; 0x0061: Left Wall Vertic. ↕ | { 18, 08 } | Size: 04
#_0A8E66: db $FD, $84, $01 ; 0x0101: Wall Inner Corner ▙ | { 18, 10 } | Size: 00
#_0A8E69: db $FF, $A4, $03 ; 0x0103: Wall Inner Corner ▟ | { 3A, 10 } | Size: 00
#_0A8E6C: db $73, $43, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1C, 10 } | Size: 0F
#_0A8E6F: db $FF, $41, $38 ; 0x0138: Spiral Staircase Up | { 34, 04 } | Size: 00
#_0A8E72: db $7B, $13, $F9 ; 0x0F9F: Staircase Going Down (Up) | { 1E, 04 } | Size: 0F
#_0A8E75: db $0B, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 0F
#_0A8E78: db $41, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 10, 04 } | Size: 07
#_0A8E7B: db $0B, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 14 } | Size: 0E
#_0A8E7E: db $4B, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 14 } | Size: 0E
#_0A8E81: db $8B, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 14 } | Size: 0E
#_0A8E84: db $CA, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 14 } | Size: 0A
#_0A8E87: db $9D, $10, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 27, 04 } | Size: 04
#_0A8E8A: db $FF, $FF ; Layer01
#_0A8E8C: db $AE, $32, $FA ; 0x0FAA: LAMP | { 2B, 0C } | Size: 0A
#_0A8E8F: db $FF, $FF ; Layer02
#_0A8E91: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0042:
#_0A8E93: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0041:
#_0A8E95: db $E1, $1C ; Floors and Layout
#_0A8E97: db $FD, $61, $00 ; 0x0100: Wall Inner Corner ▛ | { 16, 04 } | Size: 00
#_0A8E9A: db $5B, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 16, 08 } | Size: 0F
#_0A8E9D: db $FD, $69, $44 ; 0x0104: Wall Outer Corner ▟ | { 16, 25 } | Size: 00
#_0A8EA0: db $1A, $94, $01 ; 0x0001: Top Wall Horiz. ↔ | { 06, 25 } | Size: 08
#_0A8EA3: db $FC, $29, $40 ; 0x0100: Wall Inner Corner ▛ | { 02, 25 } | Size: 00
#_0A8EA6: db $FC, $2B, $C1 ; 0x0101: Wall Inner Corner ▙ | { 02, 2F } | Size: 00
#_0A8EA9: db $1A, $BC, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 2F } | Size: 08
#_0A8EAC: db $FD, $6B, $C5 ; 0x0105: Wall Outer Corner ▜ | { 16, 2F } | Size: 00
#_0A8EAF: db $59, $CC, $61 ; 0x0061: Left Wall Vertic. ↕ | { 16, 33 } | Size: 04
#_0A8EB2: db $FD, $6E, $81 ; 0x0101: Wall Inner Corner ▙ | { 16, 3A } | Size: 00
#_0A8EB5: db $FE, $61, $02 ; 0x0102: Wall Inner Corner ▜ | { 26, 04 } | Size: 00
#_0A8EB8: db $99, $22, $62 ; 0x0062: Right Wall Horiz. ↕ | { 26, 08 } | Size: 06
#_0A8EBB: db $FE, $65, $06 ; 0x0106: Wall Outer Corner ▙ | { 26, 14 } | Size: 00
#_0A8EBE: db $A8, $52, $01 ; 0x0001: Top Wall Horiz. ↔ | { 2A, 14 } | Size: 02
#_0A8EC1: db $FE, $E5, $04 ; 0x0104: Wall Outer Corner ▟ | { 2E, 14 } | Size: 00
#_0A8EC4: db $B9, $22, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2E, 08 } | Size: 06
#_0A8EC7: db $FE, $E1, $00 ; 0x0100: Wall Inner Corner ▛ | { 2E, 04 } | Size: 00
#_0A8ECA: db $FF, $A7, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 1E } | Size: 00
#_0A8ECD: db $AA, $78, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2A, 1E } | Size: 08
#_0A8ED0: db $FE, $67, $87 ; 0x0107: Wall Outer Corner ▛ | { 26, 1E } | Size: 00
#_0A8ED3: db $9B, $88, $62 ; 0x0062: Right Wall Horiz. ↕ | { 26, 22 } | Size: 0C
#_0A8ED6: db $FE, $6E, $83 ; 0x0103: Wall Inner Corner ▟ | { 26, 3A } | Size: 00
#_0A8ED9: db $FF, $41, $39 ; 0x0139: Spiral Staircase Down | { 34, 04 } | Size: 00
#_0A8EDC: db $CB, $53, $FA ; 0x0FAF: Pot | { 32, 14 } | Size: 0F
#_0A8EDF: db $6B, $7B, $FA ; 0x0FAF: Pot | { 1A, 1E } | Size: 0F
#_0A8EE2: db $6B, $83, $FA ; 0x0FAF: Pot | { 1A, 20 } | Size: 0F
#_0A8EE5: db $2B, $B7, $FA ; 0x0FAF: Pot | { 0A, 2D } | Size: 0F
#_0A8EE8: db $0B, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 0F
#_0A8EEB: db $0B, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 14 } | Size: 0F
#_0A8EEE: db $48, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 04 } | Size: 03
#_0A8EF1: db $48, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 14 } | Size: 03
#_0A8EF4: db $0A, $8E, $00 ; 0x0000: Ceiling ↔ | { 02, 23 } | Size: 0A
#_0A8EF7: db $0B, $CE, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 33 } | Size: 0E
#_0A8EFA: db $48, $CE, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 33 } | Size: 02
#_0A8EFD: db $A8, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2A, 04 } | Size: 03
#_0A8F00: db $AB, $8B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2A, 22 } | Size: 0F
#_0A8F03: db $AB, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2A, 32 } | Size: 0E
#_0A8F06: db $E8, $8B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 22 } | Size: 03
#_0A8F09: db $E8, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 32 } | Size: 02
#_0A8F0C: db $FF, $FF ; Layer01
#_0A8F0E: db $2A, $16, $FA ; 0x0FAA: LAMP | { 0A, 05 } | Size: 0A
#_0A8F11: db $FF, $FF ; Layer02
#_0A8F13: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0041:
#_0A8F15: db $71, $18 ; Door 0x18 | Dir:01 | Pos:0E
#_0A8F17: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0051:
#_0A8F19: db $73, $1C ; Floors and Layout
#_0A8F1B: db $FD, $09, $04 ; 0x0104: Wall Outer Corner ▟ | { 10, 24 } | Size: 00
#_0A8F1E: db $FC, $69, $00 ; 0x0100: Wall Inner Corner ▛ | { 06, 24 } | Size: 00
#_0A8F21: db $28, $93, $01 ; 0x0001: Top Wall Horiz. ↔ | { 0A, 24 } | Size: 03
#_0A8F24: db $1A, $A1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 28 } | Size: 09
#_0A8F27: db $FC, $6E, $81 ; 0x0101: Wall Inner Corner ▙ | { 06, 3A } | Size: 00
#_0A8F2A: db $FE, $C9, $06 ; 0x0106: Wall Outer Corner ▙ | { 2C, 24 } | Size: 00
#_0A8F2D: db $C0, $93, $01 ; 0x0001: Top Wall Horiz. ↔ | { 30, 24 } | Size: 03
#_0A8F30: db $FF, $69, $02 ; 0x0102: Wall Inner Corner ▜ | { 36, 24 } | Size: 00
#_0A8F33: db $DA, $A1, $62 ; 0x0062: Right Wall Horiz. ↕ | { 36, 28 } | Size: 09
#_0A8F36: db $FF, $6E, $83 ; 0x0103: Wall Inner Corner ▟ | { 36, 3A } | Size: 00
#_0A8F39: db $5C, $9B, $22 ; 0x0022: Horizontal Rail ↔ | { 17, 26 } | Size: 03
#_0A8F3C: db $E8, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 24 } | Size: 03
#_0A8F3F: db $E8, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 34 } | Size: 02
#_0A8F42: db $FD, $41, $00 ; 0x0100: Wall Inner Corner ▛ | { 14, 04 } | Size: 00
#_0A8F45: db $FD, $42, $04 ; 0x0104: Wall Outer Corner ▟ | { 14, 08 } | Size: 00
#_0A8F48: db $FD, $02, $00 ; 0x0100: Wall Inner Corner ▛ | { 10, 08 } | Size: 00
#_0A8F4B: db $43, $30, $61 ; 0x0061: Left Wall Vertic. ↕ | { 10, 0C } | Size: 0C
#_0A8F4E: db $FE, $81, $02 ; 0x0102: Wall Inner Corner ▜ | { 28, 04 } | Size: 00
#_0A8F51: db $FE, $82, $06 ; 0x0106: Wall Outer Corner ▙ | { 28, 08 } | Size: 00
#_0A8F54: db $FE, $C2, $02 ; 0x0102: Wall Inner Corner ▜ | { 2C, 08 } | Size: 00
#_0A8F57: db $B3, $30, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2C, 0C } | Size: 0C
#_0A8F5A: db $63, $1E, $DC ; 0x00DC: Chest Platform? ↔ ↕ | { 18, 07 } | Size: 0E
#_0A8F5D: db $79, $48, $70 ; 0x0070: Carpet Floor ↕ | { 1E, 12 } | Size: 04
#_0A8F60: db $77, $4B, $71 ; 0x0071: Carpet Floor Contour ↕ | { 1D, 12 } | Size: 0F
#_0A8F63: db $8B, $4B, $71 ; 0x0071: Carpet Floor Contour ↕ | { 22, 12 } | Size: 0F
#_0A8F66: db $74, $88, $71 ; 0x0071: Carpet Floor Contour ↕ | { 1D, 22 } | Size: 00
#_0A8F69: db $88, $88, $71 ; 0x0071: Carpet Floor Contour ↕ | { 22, 22 } | Size: 00
#_0A8F6C: db $64, $5A, $75 ; 0x0075: Column ↕ | { 19, 16 } | Size: 02
#_0A8F6F: db $94, $5A, $75 ; 0x0075: Column ↕ | { 25, 16 } | Size: 02
#_0A8F72: db $40, $3B, $65 ; 0x0065: Left Wall Column ↕ | { 10, 0E } | Size: 03
#_0A8F75: db $B0, $3B, $66 ; 0x0066: Right Wall Column ↕ | { 2C, 0E } | Size: 03
#_0A8F78: db $40, $42, $73 ; 0x0073: Left Curtain ↕ | { 10, 10 } | Size: 02
#_0A8F7B: db $B0, $42, $74 ; 0x0074: Right Curtain ↕ | { 2C, 10 } | Size: 02
#_0A8F7E: db $FD, $89, $C8 ; 0x0108: Wall Corner (Lower) | { 18, 27 } | Size: 00
#_0A8F81: db $70, $9F, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 1C, 27 } | Size: 03
#_0A8F84: db $FE, $49, $CA ; 0x010A: Wall Corner (Lower) | { 24, 27 } | Size: 00
#_0A8F87: db $FD, $8A, $CC ; 0x010C: Wall Corner (Lower) | { 18, 2B } | Size: 00
#_0A8F8A: db $40, $AF, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 10, 2B } | Size: 03
#_0A8F8D: db $FC, $DA, $C8 ; 0x0108: Wall Corner (Lower) | { 0D, 2B } | Size: 00
#_0A8F90: db $34, $BE, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0D, 2F } | Size: 02
#_0A8F93: db $61, $DF, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 18, 37 } | Size: 07
#_0A8F96: db $FE, $4A, $CE ; 0x010E: Wall Corner (Lower) | { 24, 2B } | Size: 00
#_0A8F99: db $A0, $AF, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 28, 2B } | Size: 03
#_0A8F9C: db $FE, $FA, $CA ; 0x010A: Wall Corner (Lower) | { 2F, 2B } | Size: 00
#_0A8F9F: db $BC, $BE, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 2F, 2F } | Size: 02
#_0A8FA2: db $78, $98, $34 ; 0x0034: Carpet Contour ↔ | { 1E, 26 } | Size: 00
#_0A8FA5: db $5C, $99, $69 ; 0x0069: Vertical Rail ↕ | { 17, 26 } | Size: 01
#_0A8FA8: db $30, $A8, $22 ; 0x0022: Horizontal Rail ↔ | { 0C, 2A } | Size: 00
#_0A8FAB: db $30, $A8, $69 ; 0x0069: Vertical Rail ↕ | { 0C, 2A } | Size: 00
#_0A8FAE: db $88, $9B, $22 ; 0x0022: Horizontal Rail ↔ | { 22, 26 } | Size: 03
#_0A8FB1: db $A0, $99, $69 ; 0x0069: Vertical Rail ↕ | { 28, 26 } | Size: 01
#_0A8FB4: db $C0, $A8, $22 ; 0x0022: Horizontal Rail ↔ | { 30, 2A } | Size: 00
#_0A8FB7: db $CC, $A8, $69 ; 0x0069: Vertical Rail ↕ | { 33, 2A } | Size: 00
#_0A8FBA: db $0A, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 0B
#_0A8FBD: db $31, $10, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 0C, 04 } | Size: 04
#_0A8FC0: db $0A, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 14 } | Size: 0B
#_0A8FC3: db $3B, $22, $60 ; 0x0060: Ceiling ↕ | { 0E, 08 } | Size: 0E
#_0A8FC6: db $08, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 24 } | Size: 03
#_0A8FC9: db $08, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 34 } | Size: 02
#_0A8FCC: db $B1, $10, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2C, 04 } | Size: 04
#_0A8FCF: db $CA, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 04 } | Size: 0B
#_0A8FD2: db $CA, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 14 } | Size: 0B
#_0A8FD5: db $C3, $22, $60 ; 0x0060: Ceiling ↕ | { 30, 08 } | Size: 0E
#_0A8FD8: db $FD, $E9, $F1 ; 0x0131: Stairs Going Up2 (layer) | { 1E, 27 } | Size: 00
#_0A8FDB: db $FD, $A2, $E4 ; 0x0124: Decoration | { 1A, 0B } | Size: 00
#_0A8FDE: db $FE, $22, $E4 ; 0x0124: Decoration | { 22, 0B } | Size: 00
#_0A8FE1: db $FF, $FF ; Layer01
#_0A8FE3: db $34, $D5, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0D, 35 } | Size: 01
#_0A8FE6: db $41, $DC, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 10, 37 } | Size: 04
#_0A8FE9: db $FC, $DD, $C1 ; 0x0101: Wall Inner Corner ▙ | { 0D, 37 } | Size: 00
#_0A8FEC: db $A1, $DC, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 28, 37 } | Size: 04
#_0A8FEF: db $FE, $FD, $C3 ; 0x0103: Wall Inner Corner ▟ | { 2F, 37 } | Size: 00
#_0A8FF2: db $BC, $D5, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2F, 35 } | Size: 01
#_0A8FF5: db $79, $DE, $FA ; 0x0FA9: Staircase Going Down (Lower) | { 1E, 37 } | Size: 06
#_0A8FF8: db $FF, $FF ; Layer02
#_0A8FFA: db $02, $24, $60 ; 0x0060: Ceiling ↕ | { 00, 09 } | Size: 08
#_0A8FFD: db $FA, $24, $60 ; 0x0060: Ceiling ↕ | { 3E, 09 } | Size: 08
#_0A9000: db $30, $C8, $69 ; 0x0069: Vertical Rail ↕ | { 0C, 32 } | Size: 00
#_0A9003: db $32, $D4, $22 ; 0x0022: Horizontal Rail ↔ | { 0C, 35 } | Size: 08
#_0A9006: db $5C, $D6, $69 ; 0x0069: Vertical Rail ↕ | { 17, 35 } | Size: 02
#_0A9009: db $A0, $D6, $69 ; 0x0069: Vertical Rail ↕ | { 28, 35 } | Size: 02
#_0A900C: db $CC, $C8, $69 ; 0x0069: Vertical Rail ↕ | { 33, 32 } | Size: 00
#_0A900F: db $A2, $D4, $22 ; 0x0022: Horizontal Rail ↔ | { 28, 35 } | Size: 08
#_0A9012: db $3B, $B1, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0E, 2C } | Size: 0D
#_0A9015: db $66, $A3, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 19, 28 } | Size: 0B
#_0A9018: db $8C, $A3, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 23, 28 } | Size: 03
#_0A901B: db $9A, $B1, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 26, 2C } | Size: 09
#_0A901E: db $3A, $C4, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0E, 31 } | Size: 08
#_0A9021: db $9A, $C4, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 26, 31 } | Size: 08
#_0A9024: db $63, $C9, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 18, 32 } | Size: 0D
#_0A9027: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0051:
#_0A9029: db $10, $00 ; Door 0x00 | Dir:00 | Pos:02
#_0A902B: db $10, $14 ; Door 0x14 | Dir:00 | Pos:02
#_0A902D: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0050:
#_0A902F: db $66, $04 ; Floors and Layout
#_0A9031: db $FE, $61, $80 ; 0x0100: Wall Inner Corner ▛ | { 26, 06 } | Size: 00
#_0A9034: db $AA, $18, $01 ; 0x0001: Top Wall Horiz. ↔ | { 2A, 06 } | Size: 08
#_0A9037: db $FF, $A1, $82 ; 0x0102: Wall Inner Corner ▜ | { 3A, 06 } | Size: 00
#_0A903A: db $9B, $2B, $61 ; 0x0061: Left Wall Vertic. ↕ | { 26, 0A } | Size: 0F
#_0A903D: db $9A, $A1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 26, 28 } | Size: 09
#_0A9040: db $FE, $6E, $81 ; 0x0101: Wall Inner Corner ▙ | { 26, 3A } | Size: 00
#_0A9043: db $FF, $6E, $83 ; 0x0103: Wall Inner Corner ▟ | { 36, 3A } | Size: 00
#_0A9046: db $DB, $73, $62 ; 0x0062: Right Wall Horiz. ↕ | { 36, 1C } | Size: 0F
#_0A9049: db $FF, $66, $07 ; 0x0107: Wall Outer Corner ▛ | { 36, 18 } | Size: 00
#_0A904C: db $FF, $A6, $03 ; 0x0103: Wall Inner Corner ▟ | { 3A, 18 } | Size: 00
#_0A904F: db $FE, $92, $48 ; 0x0108: Wall Corner (Lower) | { 29, 09 } | Size: 00
#_0A9052: db $B5, $24, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2D, 09 } | Size: 04
#_0A9055: db $FF, $72, $4A ; 0x010A: Wall Corner (Lower) | { 37, 09 } | Size: 00
#_0A9058: db $DC, $37, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 0D } | Size: 03
#_0A905B: db $FF, $75, $4B ; 0x010B: Wall Corner (Lower) | { 37, 15 } | Size: 00
#_0A905E: db $FF, $35, $4F ; 0x010F: Wall Corner (Lower) | { 33, 15 } | Size: 00
#_0A9061: db $CF, $66, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 33, 19 } | Size: 0E
#_0A9064: db $FF, $3D, $CB ; 0x010B: Wall Corner (Lower) | { 33, 37 } | Size: 00
#_0A9067: db $B4, $DE, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2D, 37 } | Size: 02
#_0A906A: db $FE, $9D, $C9 ; 0x0109: Wall Corner (Lower) | { 29, 37 } | Size: 00
#_0A906D: db $A7, $37, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 29, 0D } | Size: 0F
#_0A9070: db $A5, $B4, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 29, 2D } | Size: 04
#_0A9073: db $8B, $12, $00 ; 0x0000: Ceiling ↔ | { 22, 04 } | Size: 0E
#_0A9076: db $C0, $1C, $55 ; 0x0055: Wall Torches ↔ | { 30, 07 } | Size: 00
#_0A9079: db $EC, $3C, $80 ; 0x0080: Right Wall Torches ↕ | { 3B, 0F } | Size: 00
#_0A907C: db $88, $00, $60 ; 0x0060: Ceiling ↕ | { 22, 00 } | Size: 00
#_0A907F: db $90, $00, $60 ; 0x0060: Ceiling ↕ | { 24, 00 } | Size: 00
#_0A9082: db $E8, $73, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 1C } | Size: 03
#_0A9085: db $E8, $B3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 2C } | Size: 03
#_0A9088: db $E8, $E8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 3A } | Size: 00
#_0A908B: db $FF, $FF ; Layer01
#_0A908D: db $EC, $36, $01 ; 0x0001: Top Wall Horiz. ↔ | { 3B, 0D } | Size: 02
#_0A9090: db $EC, $46, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 3B, 11 } | Size: 02
#_0A9093: db $B0, $EE, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2C, 3B } | Size: 02
#_0A9096: db $C0, $EE, $62 ; 0x0062: Right Wall Horiz. ↕ | { 30, 3B } | Size: 02
#_0A9099: db $C3, $33, $FA ; 0x0FAF: Pot | { 30, 0C } | Size: 0F
#_0A909C: db $CB, $33, $FA ; 0x0FAF: Pot | { 32, 0C } | Size: 0F
#_0A909F: db $B0, $2C, $38 ; 0x0038: Statue ↔ | { 2C, 0B } | Size: 00
#_0A90A2: db $D8, $2C, $38 ; 0x0038: Statue ↔ | { 36, 0B } | Size: 00
#_0A90A5: db $BC, $3D, $33 ; 0x0033: Carpet Floor ↔ | { 2F, 0F } | Size: 01
#_0A90A8: db $B9, $3D, $34 ; 0x0034: Carpet Contour ↔ | { 2E, 0F } | Size: 05
#_0A90AB: db $C4, $4A, $34 ; 0x0034: Carpet Contour ↔ | { 31, 12 } | Size: 02
#_0A90AE: db $BA, $4C, $70 ; 0x0070: Carpet Floor ↕ | { 2E, 13 } | Size: 08
#_0A90B1: db $C7, $4F, $71 ; 0x0071: Carpet Floor Contour ↕ | { 31, 13 } | Size: 0F
#_0A90B4: db $C7, $99, $71 ; 0x0071: Carpet Floor Contour ↕ | { 31, 26 } | Size: 0D
#_0A90B7: db $BB, $43, $71 ; 0x0071: Carpet Floor Contour ↕ | { 2E, 10 } | Size: 0F
#_0A90BA: db $BB, $8F, $71 ; 0x0071: Carpet Floor Contour ↕ | { 2E, 23 } | Size: 0F
#_0A90BD: db $B8, $CC, $71 ; 0x0071: Carpet Floor Contour ↕ | { 2E, 33 } | Size: 00
#_0A90C0: db $FF, $FF ; Layer02
#_0A90C2: db $A7, $27, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 29, 09 } | Size: 0F
#_0A90C5: db $DC, $27, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 37, 09 } | Size: 03
#_0A90C8: db $A6, $67, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 29, 19 } | Size: 0B
#_0A90CB: db $A6, $A7, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 29, 29 } | Size: 0B
#_0A90CE: db $A6, $DC, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 29, 37 } | Size: 08
#_0A90D1: db $CC, $67, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 33, 19 } | Size: 03
#_0A90D4: db $CC, $A7, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 33, 29 } | Size: 03
#_0A90D7: db $CC, $DC, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 33, 37 } | Size: 00
#_0A90DA: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0050:
#_0A90DC: db $93, $46 ; Door 0x46 | Dir:03 | Pos:12
#_0A90DE: db $B1, $40 ; Door 0x40 | Dir:01 | Pos:16
#_0A90E0: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0001:
#_0A90E2: db $66, $10 ; Floors and Layout
#_0A90E4: db $FC, $21, $C0 ; 0x0100: Wall Inner Corner ▛ | { 02, 07 } | Size: 00
#_0A90E7: db $1B, $1F, $01 ; 0x0001: Top Wall Horiz. ↔ | { 06, 07 } | Size: 0F
#_0A90EA: db $92, $1F, $01 ; 0x0001: Top Wall Horiz. ↔ | { 24, 07 } | Size: 0B
#_0A90ED: db $FF, $A1, $C2 ; 0x0102: Wall Inner Corner ▜ | { 3A, 07 } | Size: 00
#_0A90F0: db $FC, $25, $C1 ; 0x0101: Wall Inner Corner ▙ | { 02, 17 } | Size: 00
#_0A90F3: db $1B, $5F, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 17 } | Size: 0F
#_0A90F6: db $92, $5F, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 24, 17 } | Size: 0B
#_0A90F9: db $FF, $A5, $C3 ; 0x0103: Wall Inner Corner ▟ | { 3A, 17 } | Size: 00
#_0A90FC: db $FC, $52, $88 ; 0x0108: Wall Corner (Lower) | { 05, 0A } | Size: 00
#_0A90FF: db $27, $2B, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 09, 0A } | Size: 0F
#_0A9102: db $FF, $72, $8A ; 0x010A: Wall Corner (Lower) | { 37, 0A } | Size: 00
#_0A9105: db $DC, $3A, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 0E } | Size: 02
#_0A9108: db $FF, $75, $0B ; 0x010B: Wall Corner (Lower) | { 37, 14 } | Size: 00
#_0A910B: db $14, $3A, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 0E } | Size: 02
#_0A910E: db $FC, $55, $09 ; 0x0109: Wall Corner (Lower) | { 05, 14 } | Size: 00
#_0A9111: db $27, $53, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 09, 14 } | Size: 0F
#_0A9114: db $A5, $52, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 29, 14 } | Size: 06
#_0A9117: db $A5, $2A, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 29, 0A } | Size: 06
#_0A911A: db $68, $1D, $3A ; 0x003A: Top Wall Decoration ↔ | { 1A, 07 } | Size: 01
#_0A911D: db $00, $0C, $00 ; 0x0000: Ceiling ↔ | { 00, 03 } | Size: 00
#_0A9120: db $00, $14, $00 ; 0x0000: Ceiling ↔ | { 00, 05 } | Size: 00
#_0A9123: db $00, $6C, $00 ; 0x0000: Ceiling ↔ | { 00, 1B } | Size: 00
#_0A9126: db $00, $74, $00 ; 0x0000: Ceiling ↔ | { 00, 1D } | Size: 00
#_0A9129: db $FF, $FF ; Layer01
#_0A912B: db $04, $36, $01 ; 0x0001: Top Wall Horiz. ↔ | { 01, 0D } | Size: 02
#_0A912E: db $04, $46, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 01, 11 } | Size: 02
#_0A9131: db $EC, $36, $01 ; 0x0001: Top Wall Horiz. ↔ | { 3B, 0D } | Size: 02
#_0A9134: db $EC, $46, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 3B, 11 } | Size: 02
#_0A9137: db $FD, $E2, $BB ; 0x013B: Spiral Staircase Down (Lower) | { 1E, 0A } | Size: 00
#_0A913A: db $59, $34, $33 ; 0x0033: Carpet Floor ↔ | { 16, 0D } | Size: 04
#_0A913D: db $58, $34, $71 ; 0x0071: Carpet Floor Contour ↕ | { 16, 0D } | Size: 00
#_0A9140: db $5F, $42, $34 ; 0x0034: Carpet Contour ↔ | { 17, 10 } | Size: 0E
#_0A9143: db $A4, $34, $71 ; 0x0071: Carpet Floor Contour ↕ | { 29, 0D } | Size: 00
#_0A9146: db $60, $31, $38 ; 0x0038: Statue ↔ | { 18, 0C } | Size: 01
#_0A9149: db $88, $31, $38 ; 0x0038: Statue ↔ | { 22, 0C } | Size: 01
#_0A914C: db $FF, $FF ; Layer02
#_0A914E: db $17, $2A, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 05, 0A } | Size: 0E
#_0A9151: db $57, $2A, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 15, 0A } | Size: 0E
#_0A9154: db $97, $2A, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 25, 0A } | Size: 0E
#_0A9157: db $CD, $2A, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 33, 0A } | Size: 06
#_0A915A: db $17, $50, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 05, 14 } | Size: 0C
#_0A915D: db $57, $50, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 15, 14 } | Size: 0C
#_0A9160: db $97, $50, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 25, 14 } | Size: 0C
#_0A9163: db $CD, $50, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 33, 14 } | Size: 04
#_0A9166: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0001:
#_0A9168: db $32, $46 ; Door 0x46 | Dir:02 | Pos:06
#_0A916A: db $93, $46 ; Door 0x46 | Dir:03 | Pos:12
#_0A916C: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0052:
#_0A916E: db $62, $1C ; Floors and Layout
#_0A9170: db $FC, $26, $01 ; 0x0101: Wall Inner Corner ▙ | { 02, 18 } | Size: 00
#_0A9173: db $FC, $66, $05 ; 0x0105: Wall Outer Corner ▜ | { 06, 18 } | Size: 00
#_0A9176: db $1B, $73, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 1C } | Size: 0F
#_0A9179: db $FC, $6E, $81 ; 0x0101: Wall Inner Corner ▙ | { 06, 3A } | Size: 00
#_0A917C: db $FD, $A1, $02 ; 0x0102: Wall Inner Corner ▜ | { 1A, 04 } | Size: 00
#_0A917F: db $6B, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1A, 08 } | Size: 0F
#_0A9182: db $69, $9A, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1A, 26 } | Size: 06
#_0A9185: db $FD, $AC, $86 ; 0x0106: Wall Outer Corner ▙ | { 1A, 32 } | Size: 00
#_0A9188: db $78, $CA, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1E, 32 } | Size: 02
#_0A918B: db $FE, $2C, $82 ; 0x0102: Wall Inner Corner ▜ | { 22, 32 } | Size: 00
#_0A918E: db $88, $DA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 22, 36 } | Size: 02
#_0A9191: db $FE, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 22, 3A } | Size: 00
#_0A9194: db $FC, $52, $88 ; 0x0108: Wall Corner (Lower) | { 05, 0A } | Size: 00
#_0A9197: db $25, $28, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 09, 0A } | Size: 04
#_0A919A: db $FD, $32, $8A ; 0x010A: Wall Corner (Lower) | { 13, 0A } | Size: 00
#_0A919D: db $14, $3B, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 0E } | Size: 03
#_0A91A0: db $FC, $55, $49 ; 0x0109: Wall Corner (Lower) | { 05, 15 } | Size: 00
#_0A91A3: db $FC, $95, $4D ; 0x010D: Wall Corner (Lower) | { 09, 15 } | Size: 00
#_0A91A6: db $27, $66, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 09, 19 } | Size: 0E
#_0A91A9: db $FC, $9D, $C9 ; 0x0109: Wall Corner (Lower) | { 09, 37 } | Size: 00
#_0A91AC: db $34, $DE, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0D, 37 } | Size: 02
#_0A91AF: db $4F, $3B, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 13, 0E } | Size: 0F
#_0A91B2: db $4D, $B8, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 13, 2E } | Size: 04
#_0A91B5: db $FD, $3D, $CB ; 0x010B: Wall Corner (Lower) | { 13, 37 } | Size: 00
#_0A91B8: db $15, $25, $22 ; 0x0022: Horizontal Rail ↔ | { 05, 09 } | Size: 05
#_0A91BB: db $48, $26, $22 ; 0x0022: Horizontal Rail ↔ | { 12, 09 } | Size: 02
#_0A91BE: db $5C, $26, $69 ; 0x0069: Vertical Rail ↕ | { 17, 09 } | Size: 02
#_0A91C1: db $5C, $D6, $69 ; 0x0069: Vertical Rail ↕ | { 17, 35 } | Size: 02
#_0A91C4: db $0C, $3C, $7F ; 0x007F: Left Wall Torches ↕ | { 03, 0F } | Size: 00
#_0A91C7: db $17, $1F, $FA ; 0x0FAF: Pot | { 05, 07 } | Size: 0F
#_0A91CA: db $87, $D7, $FA ; 0x0FAF: Pot | { 21, 35 } | Size: 0F
#_0A91CD: db $FC, $E2, $B1 ; 0x0131: Stairs Going Up2 (layer) | { 0E, 0A } | Size: 00
#_0A91D0: db $08, $73, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 1C } | Size: 03
#_0A91D3: db $08, $B3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 2C } | Size: 03
#_0A91D6: db $08, $F2, $00 ; 0x0000: Ceiling ↔ | { 02, 3C } | Size: 02
#_0A91D9: db $7B, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1E, 04 } | Size: 0F
#_0A91DC: db $BB, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 04 } | Size: 0F
#_0A91DF: db $7B, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1E, 14 } | Size: 0F
#_0A91E2: db $BB, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 14 } | Size: 0F
#_0A91E5: db $7B, $8B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1E, 22 } | Size: 0F
#_0A91E8: db $BB, $8B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 22 } | Size: 0F
#_0A91EB: db $9B, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 26, 32 } | Size: 0E
#_0A91EE: db $D9, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 32 } | Size: 06
#_0A91F1: db $FF, $FF ; Layer01
#_0A91F3: db $24, $3D, $33 ; 0x0033: Carpet Floor ↔ | { 09, 0F } | Size: 01
#_0A91F6: db $25, $3D, $34 ; 0x0034: Carpet Contour ↔ | { 09, 0F } | Size: 05
#_0A91F9: db $24, $4A, $34 ; 0x0034: Carpet Contour ↔ | { 09, 12 } | Size: 02
#_0A91FC: db $3A, $4C, $70 ; 0x0070: Carpet Floor ↕ | { 0E, 13 } | Size: 08
#_0A91FF: db $3B, $4F, $71 ; 0x0071: Carpet Floor Contour ↕ | { 0E, 13 } | Size: 0F
#_0A9202: db $3B, $99, $71 ; 0x0071: Carpet Floor Contour ↕ | { 0E, 26 } | Size: 0D
#_0A9205: db $47, $43, $71 ; 0x0071: Carpet Floor Contour ↕ | { 11, 10 } | Size: 0F
#_0A9208: db $47, $8F, $71 ; 0x0071: Carpet Floor Contour ↕ | { 11, 23 } | Size: 0F
#_0A920B: db $44, $CC, $71 ; 0x0071: Carpet Floor Contour ↕ | { 11, 33 } | Size: 00
#_0A920E: db $04, $36, $01 ; 0x0001: Top Wall Horiz. ↔ | { 01, 0D } | Size: 02
#_0A9211: db $04, $46, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 01, 11 } | Size: 02
#_0A9214: db $30, $EE, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0C, 3B } | Size: 02
#_0A9217: db $40, $EE, $62 ; 0x0062: Right Wall Horiz. ↕ | { 10, 3B } | Size: 02
#_0A921A: db $FF, $FF ; Layer02
#_0A921C: db $1B, $2E, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 06, 0B } | Size: 0E
#_0A921F: db $1B, $50, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 06, 14 } | Size: 0C
#_0A9222: db $2A, $63, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0A, 18 } | Size: 0B
#_0A9225: db $2A, $A3, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0A, 28 } | Size: 0B
#_0A9228: db $14, $2E, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 05, 0B } | Size: 02
#_0A922B: db $2A, $DC, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0A, 37 } | Size: 08
#_0A922E: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0052:
#_0A9230: db $32, $46 ; Door 0x46 | Dir:02 | Pos:06
#_0A9232: db $91, $40 ; Door 0x40 | Dir:01 | Pos:12
#_0A9234: db $71, $00 ; Door 0x00 | Dir:01 | Pos:0E
#_0A9236: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0060:
#_0A9238: db $62, $04 ; Floors and Layout
#_0A923A: db $FE, $21, $00 ; 0x0100: Wall Inner Corner ▛ | { 22, 04 } | Size: 00
#_0A923D: db $8B, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 22, 08 } | Size: 0F
#_0A9240: db $8A, $9A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 22, 26 } | Size: 0A
#_0A9243: db $FE, $2E, $81 ; 0x0101: Wall Inner Corner ▙ | { 22, 3A } | Size: 00
#_0A9246: db $FF, $AA, $03 ; 0x0103: Wall Inner Corner ▟ | { 3A, 28 } | Size: 00
#_0A9249: db $FF, $6A, $07 ; 0x0107: Wall Outer Corner ▛ | { 36, 28 } | Size: 00
#_0A924C: db $D9, $B3, $62 ; 0x0062: Right Wall Horiz. ↕ | { 36, 2C } | Size: 07
#_0A924F: db $FF, $6E, $83 ; 0x0103: Wall Inner Corner ▟ | { 36, 3A } | Size: 00
#_0A9252: db $CC, $2D, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 33, 0B } | Size: 01
#_0A9255: db $FF, $23, $16 ; 0x0116: Wall S (Lower) | { 32, 0C } | Size: 00
#_0A9258: db $FF, $31, $CA ; 0x010A: Wall Corner (Lower) | { 33, 07 } | Size: 00
#_0A925B: db $FE, $91, $C8 ; 0x0108: Wall Corner (Lower) | { 29, 07 } | Size: 00
#_0A925E: db $A4, $2D, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 29, 0B } | Size: 01
#_0A9261: db $FE, $A3, $14 ; 0x0114: Wall S (Lower) | { 2A, 0C } | Size: 00
#_0A9264: db $B4, $1E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2D, 07 } | Size: 02
#_0A9267: db $A6, $5D, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 29, 17 } | Size: 09
#_0A926A: db $FE, $A5, $D5 ; 0x0115: Wall S (Lower) | { 2A, 17 } | Size: 00
#_0A926D: db $FE, $9A, $89 ; 0x0109: Wall Corner (Lower) | { 29, 2A } | Size: 00
#_0A9270: db $CC, $5D, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 33, 17 } | Size: 01
#_0A9273: db $FF, $25, $D7 ; 0x0117: Wall S (Lower) | { 32, 17 } | Size: 00
#_0A9276: db $FF, $36, $8E ; 0x010E: Wall Corner (Lower) | { 33, 1A } | Size: 00
#_0A9279: db $FF, $76, $8A ; 0x010A: Wall Corner (Lower) | { 37, 1A } | Size: 00
#_0A927C: db $DC, $7B, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 1E } | Size: 03
#_0A927F: db $FF, $79, $4B ; 0x010B: Wall Corner (Lower) | { 37, 25 } | Size: 00
#_0A9282: db $FF, $39, $4F ; 0x010F: Wall Corner (Lower) | { 33, 25 } | Size: 00
#_0A9285: db $CC, $A4, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 33, 29 } | Size: 00
#_0A9288: db $FF, $3A, $8B ; 0x010B: Wall Corner (Lower) | { 33, 2A } | Size: 00
#_0A928B: db $B4, $AA, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2D, 2A } | Size: 02
#_0A928E: db $A4, $3C, $2F ; 0x002F: Rail Wall ↔ | { 29, 0F } | Size: 00
#_0A9291: db $A4, $54, $30 ; 0x0030: Rail Wall ↔ | { 29, 15 } | Size: 00
#_0A9294: db $A3, $40, $22 ; 0x0022: Horizontal Rail ↔ | { 28, 10 } | Size: 0C
#_0A9297: db $A3, $54, $22 ; 0x0022: Horizontal Rail ↔ | { 28, 15 } | Size: 0C
#_0A929A: db $DD, $1E, $69 ; 0x0069: Vertical Rail ↕ | { 37, 07 } | Size: 06
#_0A929D: db $DC, $55, $69 ; 0x0069: Vertical Rail ↕ | { 37, 15 } | Size: 01
#_0A92A0: db $DC, $64, $22 ; 0x0022: Horizontal Rail ↔ | { 37, 19 } | Size: 00
#_0A92A3: db $A1, $1E, $69 ; 0x0069: Vertical Rail ↕ | { 28, 07 } | Size: 06
#_0A92A6: db $A0, $57, $8A ; 0x008A: Long Vertical Rail ↕ | { 28, 15 } | Size: 03
#_0A92A9: db $A0, $B8, $22 ; 0x0022: Horizontal Rail ↔ | { 28, 2E } | Size: 00
#_0A92AC: db $CC, $B8, $22 ; 0x0022: Horizontal Rail ↔ | { 33, 2E } | Size: 00
#_0A92AF: db $E3, $23, $FA ; 0x0FAF: Pot | { 38, 08 } | Size: 0F
#_0A92B2: db $9B, $23, $FA ; 0x0FAF: Pot | { 26, 08 } | Size: 0F
#_0A92B5: db $89, $3C, $76 ; 0x0076: Left Wall Decoration ↕ | { 22, 0F } | Size: 04
#_0A92B8: db $B0, $E9, $06 ; 0x0006: Bottom Wall Column ↔ | { 2C, 3A } | Size: 01
#_0A92BB: db $FE, $CD, $A0 ; 0x0120: Torch Lit | { 2C, 36 } | Size: 00
#_0A92BE: db $FF, $2D, $A0 ; 0x0120: Torch Lit | { 32, 36 } | Size: 00
#_0A92C1: db $B8, $AB, $F9 ; 0x0F9C: Stair | { 2E, 2A } | Size: 03
#_0A92C4: db $E8, $B3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 2C } | Size: 03
#_0A92C7: db $E8, $F2, $00 ; 0x0000: Ceiling ↔ | { 3A, 3C } | Size: 02
#_0A92CA: db $FF, $FF ; Layer01
#_0A92CC: db $A9, $3C, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 0F } | Size: 04
#_0A92CF: db $C9, $3C, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 0F } | Size: 04
#_0A92D2: db $B9, $2D, $70 ; 0x0070: Carpet Floor ↕ | { 2E, 0B } | Size: 05
#_0A92D5: db $BC, $7D, $33 ; 0x0033: Carpet Floor ↔ | { 2F, 1F } | Size: 01
#_0A92D8: db $BB, $2F, $71 ; 0x0071: Carpet Floor Contour ↕ | { 2E, 0B } | Size: 0F
#_0A92DB: db $B8, $79, $71 ; 0x0071: Carpet Floor Contour ↕ | { 2E, 1E } | Size: 01
#_0A92DE: db $C7, $2F, $71 ; 0x0071: Carpet Floor Contour ↕ | { 31, 0B } | Size: 0F
#_0A92E1: db $C4, $70, $71 ; 0x0071: Carpet Floor Contour ↕ | { 31, 1C } | Size: 00
#_0A92E4: db $C8, $7D, $34 ; 0x0034: Carpet Contour ↔ | { 32, 1F } | Size: 01
#_0A92E7: db $BD, $88, $34 ; 0x0034: Carpet Contour ↔ | { 2F, 22 } | Size: 04
#_0A92EA: db $B0, $07, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2C, 01 } | Size: 03
#_0A92ED: db $C0, $07, $62 ; 0x0062: Right Wall Horiz. ↕ | { 30, 01 } | Size: 03
#_0A92F0: db $EC, $76, $01 ; 0x0001: Top Wall Horiz. ↔ | { 3B, 1D } | Size: 02
#_0A92F3: db $EC, $86, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 3B, 21 } | Size: 02
#_0A92F6: db $FF, $FF ; Layer02
#_0A92F8: db $AA, $1D, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2A, 07 } | Size: 09
#_0A92FB: db $AA, $5F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2A, 17 } | Size: 0B
#_0A92FE: db $D8, $6E, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 36, 1B } | Size: 02
#_0A9301: db $D8, $90, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 36, 24 } | Size: 00
#_0A9304: db $AA, $95, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2A, 25 } | Size: 09
#_0A9307: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0060:
#_0A9309: db $50, $40 ; Door 0x40 | Dir:00 | Pos:0A
#_0A930B: db $A3, $40 ; Door 0x40 | Dir:03 | Pos:14
#_0A930D: db $A3, $16 ; Door 0x16 | Dir:03 | Pos:14
#_0A930F: db $63, $00 ; Door 0x00 | Dir:03 | Pos:0C
#_0A9311: db $81, $00 ; Door 0x00 | Dir:01 | Pos:10
#_0A9313: db $81, $12 ; Door 0x12 | Dir:01 | Pos:10
#_0A9315: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0061:
#_0A9317: db $62, $1C ; Floors and Layout
#_0A9319: db $23, $98, $DB ; 0x00DB: Floor2 ↔ ↕ | { 08, 26 } | Size: 0C
#_0A931C: db $5B, $9B, $DB ; 0x00DB: Floor2 ↔ ↕ | { 16, 26 } | Size: 0F
#_0A931F: db $A3, $98, $DB ; 0x00DB: Floor2 ↔ ↕ | { 28, 26 } | Size: 0C
#_0A9322: db $98, $9B, $DB ; 0x00DB: Floor2 ↔ ↕ | { 26, 26 } | Size: 03
#_0A9325: db $5B, $D0, $DB ; 0x00DB: Floor2 ↔ ↕ | { 16, 34 } | Size: 0C
#_0A9328: db $98, $D0, $DB ; 0x00DB: Floor2 ↔ ↕ | { 26, 34 } | Size: 00
#_0A932B: db $09, $34, $0D ; 0x000D: Diagonal Wall ◤ | { 02, 0D } | Size: 04
#_0A932E: db $09, $88, $0E ; 0x000E: Diagonal Wall ◣ | { 02, 22 } | Size: 04
#_0A9331: db $30, $B2, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0C, 2C } | Size: 02
#_0A9334: db $FD, $0B, $05 ; 0x0105: Wall Outer Corner ▜ | { 10, 2C } | Size: 00
#_0A9337: db $41, $C1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 10, 30 } | Size: 05
#_0A933A: db $FD, $0E, $81 ; 0x0101: Wall Inner Corner ▙ | { 10, 3A } | Size: 00
#_0A933D: db $FE, $CE, $83 ; 0x0103: Wall Inner Corner ▟ | { 2C, 3A } | Size: 00
#_0A9340: db $B1, $C1, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2C, 30 } | Size: 05
#_0A9343: db $FE, $CB, $07 ; 0x0107: Wall Outer Corner ▛ | { 2C, 2C } | Size: 00
#_0A9346: db $C0, $B2, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 30, 2C } | Size: 02
#_0A9349: db $D1, $AC, $10 ; 0x0010: Diagonal Wall ◢ | { 34, 2B } | Size: 04
#_0A934C: db $D1, $10, $0F ; 0x000F: Diagonal Wall ◥ | { 34, 04 } | Size: 04
#_0A934F: db $0B, $38, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 0E } | Size: 0C
#_0A9352: db $EB, $38, $62 ; 0x0062: Right Wall Horiz. ↕ | { 3A, 0E } | Size: 0C
#_0A9355: db $FC, $55, $08 ; 0x0108: Wall Corner (Lower) | { 05, 14 } | Size: 00
#_0A9358: db $24, $52, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 09, 14 } | Size: 02
#_0A935B: db $FC, $F5, $0C ; 0x010C: Wall Corner (Lower) | { 0F, 14 } | Size: 00
#_0A935E: db $3C, $3A, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0F, 0E } | Size: 02
#_0A9361: db $FC, $F2, $C8 ; 0x0108: Wall Corner (Lower) | { 0F, 0B } | Size: 00
#_0A9364: db $4F, $2C, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 13, 0B } | Size: 0C
#_0A9367: db $B4, $3A, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 2D, 0E } | Size: 02
#_0A936A: db $FE, $D2, $CA ; 0x010A: Wall Corner (Lower) | { 2D, 0B } | Size: 00
#_0A936D: db $FE, $D5, $0E ; 0x010E: Wall Corner (Lower) | { 2D, 14 } | Size: 00
#_0A9370: db $C4, $52, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 31, 14 } | Size: 02
#_0A9373: db $FF, $75, $0A ; 0x010A: Wall Corner (Lower) | { 37, 14 } | Size: 00
#_0A9376: db $14, $89, $1A ; 0x001A: Diagonal Wall ◣ | { 05, 22 } | Size: 01
#_0A9379: db $15, $62, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 18 } | Size: 06
#_0A937C: db $30, $A7, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0C, 29 } | Size: 03
#_0A937F: db $FD, $3A, $4D ; 0x010D: Wall Corner (Lower) | { 13, 29 } | Size: 00
#_0A9382: db $4D, $B4, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 13, 2D } | Size: 04
#_0A9385: db $FD, $3D, $C9 ; 0x0109: Wall Corner (Lower) | { 13, 37 } | Size: 00
#_0A9388: db $5E, $DC, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 17, 37 } | Size: 08
#_0A938B: db $FE, $9D, $CB ; 0x010B: Wall Corner (Lower) | { 29, 37 } | Size: 00
#_0A938E: db $A5, $B4, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 29, 2D } | Size: 04
#_0A9391: db $B0, $A7, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2C, 29 } | Size: 03
#_0A9394: db $FE, $9A, $4F ; 0x010F: Wall Corner (Lower) | { 29, 29 } | Size: 00
#_0A9397: db $D0, $A1, $1C ; 0x001C: Diagonal Wall ◢ | { 34, 28 } | Size: 01
#_0A939A: db $DD, $62, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 18 } | Size: 06
#_0A939D: db $14, $4D, $22 ; 0x0022: Horizontal Rail ↔ | { 05, 13 } | Size: 01
#_0A93A0: db $39, $2A, $69 ; 0x0069: Vertical Rail ↕ | { 0E, 0A } | Size: 06
#_0A93A3: db $39, $28, $22 ; 0x0022: Horizontal Rail ↔ | { 0E, 0A } | Size: 04
#_0A93A6: db $68, $28, $22 ; 0x0022: Horizontal Rail ↔ | { 1A, 0A } | Size: 00
#_0A93A9: db $88, $28, $22 ; 0x0022: Horizontal Rail ↔ | { 22, 0A } | Size: 00
#_0A93AC: db $A9, $28, $22 ; 0x0022: Horizontal Rail ↔ | { 2A, 0A } | Size: 04
#_0A93AF: db $C5, $2A, $69 ; 0x0069: Vertical Rail ↕ | { 31, 0A } | Size: 06
#_0A93B2: db $D8, $4D, $22 ; 0x0022: Horizontal Rail ↔ | { 36, 13 } | Size: 01
#_0A93B5: db $FC, $A5, $32 ; 0x0132: Stairs Going Up (layer) | { 0A, 14 } | Size: 00
#_0A93B8: db $FD, $E2, $F2 ; 0x0132: Stairs Going Up (layer) | { 1E, 0B } | Size: 00
#_0A93BB: db $FF, $25, $32 ; 0x0132: Stairs Going Up (layer) | { 32, 14 } | Size: 00
#_0A93BE: db $58, $EE, $3B ; 0x003B: Bottom Wall Decoration ↔ | { 16, 3B } | Size: 02
#_0A93C1: db $30, $12, $05 ; 0x0005: Top Wall Column ↔ | { 0C, 04 } | Size: 02
#_0A93C4: db $98, $12, $05 ; 0x0005: Top Wall Column ↔ | { 26, 04 } | Size: 02
#_0A93C7: db $68, $11, $3A ; 0x003A: Top Wall Decoration ↔ | { 1A, 04 } | Size: 01
#_0A93CA: db $7A, $13, $F9 ; 0x0F9E: Staircase going Up(Up) | { 1E, 04 } | Size: 0B
#_0A93CD: db $70, $9F, $70 ; 0x0070: Carpet Floor ↕ | { 1C, 27 } | Size: 03
#_0A93D0: db $80, $9F, $70 ; 0x0070: Carpet Floor ↕ | { 20, 27 } | Size: 03
#_0A93D3: db $71, $9C, $34 ; 0x0034: Carpet Contour ↔ | { 1C, 27 } | Size: 04
#_0A93D6: db $72, $A3, $71 ; 0x0071: Carpet Floor Contour ↕ | { 1C, 28 } | Size: 0B
#_0A93D9: db $8E, $A3, $71 ; 0x0071: Carpet Floor Contour ↕ | { 23, 28 } | Size: 0B
#_0A93DC: db $FD, $AA, $20 ; 0x0120: Torch Lit | { 1A, 28 } | Size: 00
#_0A93DF: db $FD, $AB, $20 ; 0x0120: Torch Lit | { 1A, 2C } | Size: 00
#_0A93E2: db $FD, $AC, $20 ; 0x0120: Torch Lit | { 1A, 30 } | Size: 00
#_0A93E5: db $FD, $AD, $20 ; 0x0120: Torch Lit | { 1A, 34 } | Size: 00
#_0A93E8: db $FE, $4A, $20 ; 0x0120: Torch Lit | { 24, 28 } | Size: 00
#_0A93EB: db $FE, $4B, $20 ; 0x0120: Torch Lit | { 24, 2C } | Size: 00
#_0A93EE: db $FE, $4C, $20 ; 0x0120: Torch Lit | { 24, 30 } | Size: 00
#_0A93F1: db $FE, $4D, $20 ; 0x0120: Torch Lit | { 24, 34 } | Size: 00
#_0A93F4: db $4D, $3D, $33 ; 0x0033: Carpet Floor ↔ | { 13, 0F } | Size: 05
#_0A93F7: db $4D, $4D, $33 ; 0x0033: Carpet Floor ↔ | { 13, 13 } | Size: 05
#_0A93FA: db $4D, $5D, $33 ; 0x0033: Carpet Floor ↔ | { 13, 17 } | Size: 05
#_0A93FD: db $26, $62, $33 ; 0x0033: Carpet Floor ↔ | { 09, 18 } | Size: 0A
#_0A9400: db $26, $72, $33 ; 0x0033: Carpet Floor ↔ | { 09, 1C } | Size: 0A
#_0A9403: db $26, $82, $33 ; 0x0033: Carpet Floor ↔ | { 09, 20 } | Size: 0A
#_0A9406: db $26, $8A, $33 ; 0x0033: Carpet Floor ↔ | { 09, 22 } | Size: 0A
#_0A9409: db $A4, $3E, $70 ; 0x0070: Carpet Floor ↕ | { 29, 0F } | Size: 02
#_0A940C: db $CC, $62, $70 ; 0x0070: Carpet Floor ↕ | { 33, 18 } | Size: 02
#_0A940F: db $CC, $88, $70 ; 0x0070: Carpet Floor ↕ | { 33, 22 } | Size: 00
#_0A9412: db $27, $97, $34 ; 0x0034: Carpet Contour ↔ | { 09, 25 } | Size: 0F
#_0A9415: db $73, $97, $34 ; 0x0034: Carpet Contour ↔ | { 1C, 25 } | Size: 0F
#_0A9418: db $BD, $94, $34 ; 0x0034: Carpet Contour ↔ | { 2F, 25 } | Size: 04
#_0A941B: db $FD, $A3, $9C ; 0x011C: Fairy Pot | { 1A, 0E } | Size: 00
#_0A941E: db $FE, $23, $9C ; 0x011C: Fairy Pot | { 22, 0E } | Size: 00
#_0A9421: db $FD, $65, $9C ; 0x011C: Fairy Pot | { 16, 16 } | Size: 00
#_0A9424: db $FE, $65, $9C ; 0x011C: Fairy Pot | { 26, 16 } | Size: 00
#_0A9427: db $30, $70, $39 ; 0x0039: Column ↔ | { 0C, 1C } | Size: 00
#_0A942A: db $40, $70, $39 ; 0x0039: Column ↔ | { 10, 1C } | Size: 00
#_0A942D: db $50, $70, $39 ; 0x0039: Column ↔ | { 14, 1C } | Size: 00
#_0A9430: db $A8, $70, $39 ; 0x0039: Column ↔ | { 2A, 1C } | Size: 00
#_0A9433: db $B8, $70, $39 ; 0x0039: Column ↔ | { 2E, 1C } | Size: 00
#_0A9436: db $C8, $70, $39 ; 0x0039: Column ↔ | { 32, 1C } | Size: 00
#_0A9439: db $70, $81, $3D ; 0x003D: Floor Torch ↔ | { 1C, 20 } | Size: 01
#_0A943C: db $09, $11, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 02, 04 } | Size: 05
#_0A943F: db $09, $9D, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 02, 27 } | Size: 05
#_0A9442: db $03, $C3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 30 } | Size: 0F
#_0A9445: db $C3, $C3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 30, 30 } | Size: 0F
#_0A9448: db $D5, $BD, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 35, 2F } | Size: 05
#_0A944B: db $D5, $11, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 35, 04 } | Size: 05
#_0A944E: db $FF, $FF ; Layer01
#_0A9450: db $FF, $FF ; Layer02
#_0A9452: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0061:
#_0A9454: db $42, $02 ; Door 0x02 | Dir:02 | Pos:08
#_0A9456: db $42, $16 ; Door 0x16 | Dir:02 | Pos:08
#_0A9458: db $A3, $02 ; Door 0x02 | Dir:03 | Pos:14
#_0A945A: db $A3, $16 ; Door 0x16 | Dir:03 | Pos:14
#_0A945C: db $A1, $02 ; Door 0x02 | Dir:01 | Pos:14
#_0A945E: db $A1, $12 ; Door 0x12 | Dir:01 | Pos:14
#_0A9460: db $02, $00 ; Door 0x00 | Dir:02 | Pos:00
#_0A9462: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0062:
#_0A9464: db $62, $1C ; Floors and Layout
#_0A9466: db $FC, $61, $00 ; 0x0100: Wall Inner Corner ▛ | { 06, 04 } | Size: 00
#_0A9469: db $19, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 08 } | Size: 07
#_0A946C: db $FC, $65, $84 ; 0x0104: Wall Outer Corner ▟ | { 06, 16 } | Size: 00
#_0A946F: db $FC, $25, $80 ; 0x0100: Wall Inner Corner ▛ | { 02, 16 } | Size: 00
#_0A9472: db $FC, $2A, $01 ; 0x0101: Wall Inner Corner ▙ | { 02, 28 } | Size: 00
#_0A9475: db $FC, $6A, $05 ; 0x0105: Wall Outer Corner ▜ | { 06, 28 } | Size: 00
#_0A9478: db $19, $B3, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 2C } | Size: 07
#_0A947B: db $FC, $6E, $81 ; 0x0101: Wall Inner Corner ▙ | { 06, 3A } | Size: 00
#_0A947E: db $FD, $CE, $83 ; 0x0103: Wall Inner Corner ▟ | { 1C, 3A } | Size: 00
#_0A9481: db $71, $C1, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1C, 30 } | Size: 05
#_0A9484: db $FD, $CB, $47 ; 0x0107: Wall Outer Corner ▛ | { 1C, 2D } | Size: 00
#_0A9487: db $81, $B5, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 20, 2D } | Size: 05
#_0A948A: db $AB, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2A, 08 } | Size: 0F
#_0A948D: db $A9, $98, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2A, 26 } | Size: 04
#_0A9490: db $FE, $AB, $43 ; 0x0103: Wall Inner Corner ▟ | { 2A, 2D } | Size: 00
#_0A9493: db $FE, $A1, $02 ; 0x0102: Wall Inner Corner ▜ | { 2A, 04 } | Size: 00
#_0A9496: db $FC, $91, $C8 ; 0x0108: Wall Corner (Lower) | { 09, 07 } | Size: 00
#_0A9499: db $34, $1E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0D, 07 } | Size: 02
#_0A949C: db $FD, $31, $CA ; 0x010A: Wall Corner (Lower) | { 13, 07 } | Size: 00
#_0A949F: db $FD, $39, $4F ; 0x010F: Wall Corner (Lower) | { 13, 25 } | Size: 00
#_0A94A2: db $34, $AA, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0D, 2A } | Size: 02
#_0A94A5: db $24, $A4, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 09, 29 } | Size: 00
#_0A94A8: db $FC, $9A, $89 ; 0x0109: Wall Corner (Lower) | { 09, 2A } | Size: 00
#_0A94AB: db $FC, $99, $4D ; 0x010D: Wall Corner (Lower) | { 09, 25 } | Size: 00
#_0A94AE: db $FC, $59, $49 ; 0x0109: Wall Corner (Lower) | { 05, 25 } | Size: 00
#_0A94B1: db $14, $77, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 1D } | Size: 03
#_0A94B4: db $FC, $56, $48 ; 0x0108: Wall Corner (Lower) | { 05, 19 } | Size: 00
#_0A94B7: db $FC, $96, $4C ; 0x010C: Wall Corner (Lower) | { 09, 19 } | Size: 00
#_0A94BA: db $25, $2E, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 09, 0B } | Size: 06
#_0A94BD: db $FD, $34, $0E ; 0x010E: Wall Corner (Lower) | { 13, 10 } | Size: 00
#_0A94C0: db $5B, $40, $6C ; 0x006C: Rail Wall Left ↕ | { 16, 10 } | Size: 0C
#_0A94C3: db $4C, $2E, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 13, 0B } | Size: 02
#_0A94C6: db $4C, $A4, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 13, 29 } | Size: 00
#_0A94C9: db $FD, $3A, $8B ; 0x010B: Wall Corner (Lower) | { 13, 2A } | Size: 00
#_0A94CC: db $79, $3C, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 1E, 0F } | Size: 04
#_0A94CF: db $FD, $E4, $12 ; 0x0112: Wall S (Lower) | { 1E, 10 } | Size: 00
#_0A94D2: db $79, $98, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 1E, 26 } | Size: 04
#_0A94D5: db $FD, $E9, $53 ; 0x0113: Wall S (Lower) | { 1E, 25 } | Size: 00
#_0A94D8: db $FE, $73, $CA ; 0x010A: Wall Corner (Lower) | { 27, 0F } | Size: 00
#_0A94DB: db $9E, $4D, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 27, 13 } | Size: 09
#_0A94DE: db $FE, $79, $8B ; 0x010B: Wall Corner (Lower) | { 27, 26 } | Size: 00
#_0A94E1: db $73, $3D, $6D ; 0x006D: Rail Wall Right ↕ | { 1C, 0F } | Size: 0D
#_0A94E4: db $5F, $1F, $8A ; 0x008A: Long Vertical Rail ↕ | { 17, 07 } | Size: 0F
#_0A94E7: db $5C, $AC, $69 ; 0x0069: Vertical Rail ↕ | { 17, 2B } | Size: 00
#_0A94EA: db $4C, $B9, $22 ; 0x0022: Horizontal Rail ↔ | { 13, 2E } | Size: 01
#_0A94ED: db $24, $B8, $22 ; 0x0022: Horizontal Rail ↔ | { 09, 2E } | Size: 00
#_0A94F0: db $71, $3A, $8A ; 0x008A: Long Vertical Rail ↕ | { 1C, 0E } | Size: 06
#_0A94F3: db $70, $3A, $22 ; 0x0022: Horizontal Rail ↔ | { 1C, 0E } | Size: 02
#_0A94F6: db $98, $39, $22 ; 0x0022: Horizontal Rail ↔ | { 26, 0E } | Size: 01
#_0A94F9: db $70, $AA, $22 ; 0x0022: Horizontal Rail ↔ | { 1C, 2A } | Size: 02
#_0A94FC: db $98, $A9, $22 ; 0x0022: Horizontal Rail ↔ | { 26, 2A } | Size: 01
#_0A94FF: db $FE, $23, $F1 ; 0x0131: Stairs Going Up2 (layer) | { 22, 0F } | Size: 00
#_0A9502: db $AC, $3F, $77 ; 0x0077: Right Wall Decoration ↕ | { 2B, 0F } | Size: 03
#_0A9505: db $30, $E9, $06 ; 0x0006: Bottom Wall Column ↔ | { 0C, 3A } | Size: 01
#_0A9508: db $FC, $CD, $A0 ; 0x0120: Torch Lit | { 0C, 36 } | Size: 00
#_0A950B: db $FD, $2D, $A0 ; 0x0120: Torch Lit | { 12, 36 } | Size: 00
#_0A950E: db $A3, $AF, $FA ; 0x0FAF: Pot | { 28, 2B } | Size: 0F
#_0A9511: db $BB, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 04 } | Size: 0F
#_0A9514: db $BB, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 14 } | Size: 0F
#_0A9517: db $BB, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 24 } | Size: 0F
#_0A951A: db $BB, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 34 } | Size: 0E
#_0A951D: db $83, $C6, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 20, 31 } | Size: 0E
#_0A9520: db $81, $F3, $00 ; 0x0000: Ceiling ↔ | { 20, 3C } | Size: 07
#_0A9523: db $08, $B3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 2C } | Size: 03
#_0A9526: db $08, $F2, $00 ; 0x0000: Ceiling ↔ | { 02, 3C } | Size: 02
#_0A9529: db $08, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 03
#_0A952C: db $08, $52, $00 ; 0x0000: Ceiling ↔ | { 02, 14 } | Size: 02
#_0A952F: db $FF, $FF ; Layer01
#_0A9531: db $5C, $43, $01 ; 0x0001: Top Wall Horiz. ↔ | { 17, 10 } | Size: 03
#_0A9534: db $70, $41, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1C, 10 } | Size: 01
#_0A9537: db $5C, $97, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 17, 25 } | Size: 03
#_0A953A: db $70, $95, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1C, 25 } | Size: 01
#_0A953D: db $39, $2D, $70 ; 0x0070: Carpet Floor ↕ | { 0E, 0B } | Size: 05
#_0A9540: db $24, $7D, $33 ; 0x0033: Carpet Floor ↔ | { 09, 1F } | Size: 01
#_0A9543: db $24, $7E, $34 ; 0x0034: Carpet Contour ↔ | { 09, 1F } | Size: 02
#_0A9546: db $25, $89, $34 ; 0x0034: Carpet Contour ↔ | { 09, 22 } | Size: 05
#_0A9549: db $3B, $2F, $71 ; 0x0071: Carpet Floor Contour ↕ | { 0E, 0B } | Size: 0F
#_0A954C: db $47, $2F, $71 ; 0x0071: Carpet Floor Contour ↕ | { 11, 0B } | Size: 0F
#_0A954F: db $44, $78, $71 ; 0x0071: Carpet Floor Contour ↕ | { 11, 1E } | Size: 00
#_0A9552: db $38, $6C, $71 ; 0x0071: Carpet Floor Contour ↕ | { 0E, 1B } | Size: 00
#_0A9555: db $04, $76, $01 ; 0x0001: Top Wall Horiz. ↔ | { 01, 1D } | Size: 02
#_0A9558: db $04, $86, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 01, 21 } | Size: 02
#_0A955B: db $30, $07, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0C, 01 } | Size: 03
#_0A955E: db $40, $07, $62 ; 0x0062: Right Wall Horiz. ↕ | { 10, 01 } | Size: 03
#_0A9561: db $FF, $FF ; Layer02
#_0A9563: db $2A, $1F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0A, 07 } | Size: 0B
#_0A9566: db $2A, $5F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0A, 17 } | Size: 0B
#_0A9569: db $15, $67, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 05, 19 } | Size: 07
#_0A956C: db $2A, $95, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0A, 25 } | Size: 09
#_0A956F: db $7A, $3F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1E, 0F } | Size: 0B
#_0A9572: db $7A, $76, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1E, 1D } | Size: 0A
#_0A9575: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0062:
#_0A9577: db $42, $40 ; Door 0x40 | Dir:02 | Pos:08
#_0A9579: db $42, $16 ; Door 0x16 | Dir:02 | Pos:08
#_0A957B: db $30, $40 ; Door 0x40 | Dir:00 | Pos:06
#_0A957D: db $10, $00 ; Door 0x00 | Dir:00 | Pos:02
#_0A957F: db $61, $00 ; Door 0x00 | Dir:01 | Pos:0C
#_0A9581: db $61, $12 ; Door 0x12 | Dir:01 | Pos:0C
#_0A9583: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00C8:
#_0A9585: db $E1, $00 ; Floors and Layout
#_0A9587: db $98, $92, $3A ; 0x003A: Top Wall Decoration ↔ | { 26, 24 } | Size: 02
#_0A958A: db $88, $AA, $65 ; 0x0065: Left Wall Column ↕ | { 22, 2A } | Size: 02
#_0A958D: db $E8, $AA, $66 ; 0x0066: Right Wall Column ↕ | { 3A, 2A } | Size: 02
#_0A9590: db $FF, $FF ; Layer01
#_0A9592: db $FF, $FF ; Layer02
#_0A9594: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00C8:
#_0A9596: db $81, $18 ; Door 0x18 | Dir:01 | Pos:10
#_0A9598: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00D8:
#_0A959A: db $E1, $0C ; Floors and Layout
#_0A959C: db $FE, $A1, $00 ; 0x0100: Wall Inner Corner ▛ | { 2A, 04 } | Size: 00
#_0A959F: db $A8, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 08 } | Size: 03
#_0A95A2: db $FE, $A3, $84 ; 0x0104: Wall Outer Corner ▟ | { 2A, 0E } | Size: 00
#_0A95A5: db $98, $3A, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 0E } | Size: 02
#_0A95A8: db $FE, $23, $80 ; 0x0100: Wall Inner Corner ▛ | { 22, 0E } | Size: 00
#_0A95AB: db $FF, $21, $02 ; 0x0102: Wall Inner Corner ▜ | { 32, 04 } | Size: 00
#_0A95AE: db $C8, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 08 } | Size: 03
#_0A95B1: db $FF, $23, $86 ; 0x0106: Wall Outer Corner ▙ | { 32, 0E } | Size: 00
#_0A95B4: db $D8, $3A, $01 ; 0x0001: Top Wall Horiz. ↔ | { 36, 0E } | Size: 02
#_0A95B7: db $FF, $A3, $82 ; 0x0102: Wall Inner Corner ▜ | { 3A, 0E } | Size: 00
#_0A95BA: db $98, $38, $3A ; 0x003A: Top Wall Decoration ↔ | { 26, 0E } | Size: 00
#_0A95BD: db $D8, $38, $3A ; 0x003A: Top Wall Decoration ↔ | { 36, 0E } | Size: 00
#_0A95C0: db $97, $47, $FA ; 0x0FAF: Pot | { 25, 11 } | Size: 0F
#_0A95C3: db $97, $57, $FA ; 0x0FAF: Pot | { 25, 15 } | Size: 0F
#_0A95C6: db $97, $67, $FA ; 0x0FAF: Pot | { 25, 19 } | Size: 0F
#_0A95C9: db $E7, $57, $FA ; 0x0FAF: Pot | { 39, 15 } | Size: 0F
#_0A95CC: db $E7, $67, $FA ; 0x0FAF: Pot | { 39, 19 } | Size: 0F
#_0A95CF: db $E7, $47, $FA ; 0x0FAF: Pot | { 39, 11 } | Size: 0F
#_0A95D2: db $98, $93, $05 ; 0x0005: Top Wall Column ↔ | { 26, 24 } | Size: 03
#_0A95D5: db $B0, $91, $FF ; 0x0FF4: Boss Entrance | { 2C, 24 } | Size: 01
#_0A95D8: db $98, $EB, $06 ; 0x0006: Bottom Wall Column ↔ | { 26, 3A } | Size: 03
#_0A95DB: db $BB, $C3, $FA ; 0x0FAF: Pot | { 2E, 30 } | Size: 0F
#_0A95DE: db $C3, $C3, $FA ; 0x0FAF: Pot | { 30, 30 } | Size: 0F
#_0A95E1: db $89, $0A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 02 } | Size: 06
#_0A95E4: db $D9, $0A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 02 } | Size: 06
#_0A95E7: db $FF, $FF ; Layer01
#_0A95E9: db $FF, $FF ; Layer02
#_0A95EB: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00D8:
#_0A95ED: db $20, $18 ; Door 0x18 | Dir:00 | Pos:04
#_0A95EF: db $80, $36 ; Door 0x36 | Dir:00 | Pos:10
#_0A95F1: db $83, $00 ; Door 0x00 | Dir:03 | Pos:10
#_0A95F3: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00D9:
#_0A95F5: db $E1, $18 ; Floors and Layout
#_0A95F7: db $1C, $90, $51 ; 0x0051: Canon Hole ↔ | { 07, 24 } | Size: 00
#_0A95FA: db $2C, $90, $51 ; 0x0051: Canon Hole ↔ | { 0B, 24 } | Size: 00
#_0A95FD: db $44, $90, $51 ; 0x0051: Canon Hole ↔ | { 11, 24 } | Size: 00
#_0A9600: db $54, $90, $51 ; 0x0051: Canon Hole ↔ | { 15, 24 } | Size: 00
#_0A9603: db $1C, $EC, $52 ; 0x0052: Canon Hole ↔ | { 07, 3B } | Size: 00
#_0A9606: db $2C, $EC, $52 ; 0x0052: Canon Hole ↔ | { 0B, 3B } | Size: 00
#_0A9609: db $44, $EC, $52 ; 0x0052: Canon Hole ↔ | { 11, 3B } | Size: 00
#_0A960C: db $54, $EC, $52 ; 0x0052: Canon Hole ↔ | { 15, 3B } | Size: 00
#_0A960F: db $08, $9C, $85 ; 0x0085: Left Wall Canon Hole ↕ | { 02, 27 } | Size: 00
#_0A9612: db $08, $AC, $85 ; 0x0085: Left Wall Canon Hole ↕ | { 02, 2B } | Size: 00
#_0A9615: db $08, $CC, $85 ; 0x0085: Left Wall Canon Hole ↕ | { 02, 33 } | Size: 00
#_0A9618: db $08, $DC, $85 ; 0x0085: Left Wall Canon Hole ↕ | { 02, 37 } | Size: 00
#_0A961B: db $6C, $9C, $86 ; 0x0086: Right Wall Canon Hole ↕ | { 1B, 27 } | Size: 00
#_0A961E: db $6C, $AC, $86 ; 0x0086: Right Wall Canon Hole ↕ | { 1B, 2B } | Size: 00
#_0A9621: db $6C, $CC, $86 ; 0x0086: Right Wall Canon Hole ↕ | { 1B, 33 } | Size: 00
#_0A9624: db $6C, $DC, $86 ; 0x0086: Right Wall Canon Hole ↕ | { 1B, 37 } | Size: 00
#_0A9627: db $28, $A8, $FD ; 0x0FD0: Floor Switch | { 0A, 2A } | Size: 00
#_0A962A: db $53, $A8, $FE ; 0x0FE3: ??? | { 14, 2A } | Size: 0C
#_0A962D: db $2B, $D8, $FE ; 0x0FE3: ??? | { 0A, 36 } | Size: 0C
#_0A9630: db $53, $D8, $FE ; 0x0FE3: ??? | { 14, 36 } | Size: 0C
#_0A9633: db $FE, $2B, $00 ; 0x0100: Wall Inner Corner ▛ | { 22, 2C } | Size: 00
#_0A9636: db $98, $B2, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 2C } | Size: 02
#_0A9639: db $FE, $AB, $04 ; 0x0104: Wall Outer Corner ▟ | { 2A, 2C } | Size: 00
#_0A963C: db $A8, $A2, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 28 } | Size: 02
#_0A963F: db $FE, $A9, $00 ; 0x0100: Wall Inner Corner ▛ | { 2A, 24 } | Size: 00
#_0A9642: db $FE, $2C, $81 ; 0x0101: Wall Inner Corner ▙ | { 22, 32 } | Size: 00
#_0A9645: db $98, $CA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 26, 32 } | Size: 02
#_0A9648: db $FE, $AC, $85 ; 0x0105: Wall Outer Corner ▜ | { 2A, 32 } | Size: 00
#_0A964B: db $A8, $DA, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 36 } | Size: 02
#_0A964E: db $FE, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 2A, 3A } | Size: 00
#_0A9651: db $A3, $C0, $FE ; 0x0FE3: ??? | { 28, 30 } | Size: 0C
#_0A9654: db $C3, $A8, $FE ; 0x0FE3: ??? | { 30, 2A } | Size: 0C
#_0A9657: db $C3, $C0, $FE ; 0x0FE3: ??? | { 30, 30 } | Size: 0C
#_0A965A: db $BB, $A3, $FA ; 0x0FAF: Pot | { 2E, 28 } | Size: 0F
#_0A965D: db $BB, $E3, $FA ; 0x0FAF: Pot | { 2E, 38 } | Size: 0F
#_0A9660: db $C0, $D8, $FD ; 0x0FD0: Floor Switch | { 30, 36 } | Size: 00
#_0A9663: db $89, $91, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 24 } | Size: 05
#_0A9666: db $89, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 36 } | Size: 05
#_0A9669: db $FF, $FF ; Layer01
#_0A966B: db $FF, $FF ; Layer02
#_0A966D: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00D9:
#_0A966F: db $22, $18 ; Door 0x18 | Dir:02 | Pos:04
#_0A9671: db $82, $18 ; Door 0x18 | Dir:02 | Pos:10
#_0A9673: db $83, $18 ; Door 0x18 | Dir:03 | Pos:10
#_0A9675: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00DA:
#_0A9677: db $E1, $18 ; Floors and Layout
#_0A9679: db $FC, $E9, $39 ; 0x0139: Spiral Staircase Down | { 0E, 24 } | Size: 00
#_0A967C: db $18, $93, $05 ; 0x0005: Top Wall Column ↔ | { 06, 24 } | Size: 03
#_0A967F: db $20, $A8, $38 ; 0x0038: Statue ↔ | { 08, 2A } | Size: 00
#_0A9682: db $20, $D4, $38 ; 0x0038: Statue ↔ | { 08, 35 } | Size: 00
#_0A9685: db $58, $A8, $38 ; 0x0038: Statue ↔ | { 16, 2A } | Size: 00
#_0A9688: db $58, $D4, $38 ; 0x0038: Statue ↔ | { 16, 35 } | Size: 00
#_0A968B: db $33, $BB, $FA ; 0x0FAF: Pot | { 0C, 2E } | Size: 0F
#_0A968E: db $4B, $BB, $FA ; 0x0FAF: Pot | { 12, 2E } | Size: 0F
#_0A9691: db $33, $CB, $FA ; 0x0FAF: Pot | { 0C, 32 } | Size: 0F
#_0A9694: db $4B, $CB, $FA ; 0x0FAF: Pot | { 12, 32 } | Size: 0F
#_0A9697: db $FF, $FF ; Layer01
#_0A9699: db $FF, $FF ; Layer02
#_0A969B: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00DA:
#_0A969D: db $22, $18 ; Door 0x18 | Dir:02 | Pos:04
#_0A969F: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0099:
#_0A96A1: db $E1, $14 ; Floors and Layout
#_0A96A3: db $FC, $E9, $38 ; 0x0138: Spiral Staircase Up | { 0E, 24 } | Size: 00
#_0A96A6: db $FC, $A9, $00 ; 0x0100: Wall Inner Corner ▛ | { 0A, 24 } | Size: 00
#_0A96A9: db $28, $A1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0A, 28 } | Size: 01
#_0A96AC: db $FC, $AA, $81 ; 0x0101: Wall Inner Corner ▙ | { 0A, 2A } | Size: 00
#_0A96AF: db $38, $AA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0E, 2A } | Size: 02
#_0A96B2: db $FD, $2A, $85 ; 0x0105: Wall Outer Corner ▜ | { 12, 2A } | Size: 00
#_0A96B5: db $49, $BA, $61 ; 0x0061: Left Wall Vertic. ↕ | { 12, 2E } | Size: 06
#_0A96B8: db $FD, $2E, $81 ; 0x0101: Wall Inner Corner ▙ | { 12, 3A } | Size: 00
#_0A96BB: db $FE, $AE, $83 ; 0x0103: Wall Inner Corner ▟ | { 2A, 3A } | Size: 00
#_0A96BE: db $A9, $BA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2A, 2E } | Size: 06
#_0A96C1: db $FE, $AA, $87 ; 0x0107: Wall Outer Corner ▛ | { 2A, 2A } | Size: 00
#_0A96C4: db $B8, $AA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2E, 2A } | Size: 02
#_0A96C7: db $FF, $2A, $83 ; 0x0103: Wall Inner Corner ▟ | { 32, 2A } | Size: 00
#_0A96CA: db $C8, $A1, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 28 } | Size: 01
#_0A96CD: db $FF, $29, $02 ; 0x0102: Wall Inner Corner ▜ | { 32, 24 } | Size: 00
#_0A96D0: db $FE, $20, $C0 ; 0x0100: Wall Inner Corner ▛ | { 22, 03 } | Size: 00
#_0A96D3: db $9A, $0E, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 03 } | Size: 0A
#_0A96D6: db $FF, $A0, $C2 ; 0x0102: Wall Inner Corner ▜ | { 3A, 03 } | Size: 00
#_0A96D9: db $A3, $26, $E2 ; 0x00E2: Rupee Floor ↔ ↕ | { 28, 09 } | Size: 0E
#_0A96DC: db $FE, $51, $88 ; 0x0108: Wall Corner (Lower) | { 25, 06 } | Size: 00
#_0A96DF: db $A5, $1A, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 29, 06 } | Size: 06
#_0A96E2: db $FF, $71, $8A ; 0x010A: Wall Corner (Lower) | { 37, 06 } | Size: 00
#_0A96E5: db $95, $28, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 25, 0A } | Size: 04
#_0A96E8: db $FE, $55, $09 ; 0x0109: Wall Corner (Lower) | { 25, 14 } | Size: 00
#_0A96EB: db $A5, $52, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 29, 14 } | Size: 06
#_0A96EE: db $DD, $28, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 0A } | Size: 04
#_0A96F1: db $FF, $75, $0B ; 0x010B: Wall Corner (Lower) | { 37, 14 } | Size: 00
#_0A96F4: db $53, $A3, $FA ; 0x0FAF: Pot | { 14, 28 } | Size: 0F
#_0A96F7: db $AB, $A3, $FA ; 0x0FAF: Pot | { 2A, 28 } | Size: 0F
#_0A96FA: db $94, $60, $22 ; 0x0022: Horizontal Rail ↔ | { 25, 18 } | Size: 00
#_0A96FD: db $DC, $60, $22 ; 0x0022: Horizontal Rail ↔ | { 37, 18 } | Size: 00
#_0A9700: db $A5, $53, $F9 ; 0x0F9D: Stair | { 29, 14 } | Size: 07
#_0A9703: db $CD, $53, $F9 ; 0x0F9D: Stair | { 33, 14 } | Size: 07
#_0A9706: db $0B, $91, $60 ; 0x0060: Ceiling ↕ | { 02, 24 } | Size: 0D
#_0A9709: db $13, $91, $60 ; 0x0060: Ceiling ↕ | { 04, 24 } | Size: 0D
#_0A970C: db $18, $92, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 06, 24 } | Size: 02
#_0A970F: db $1A, $BB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 06, 2E } | Size: 0B
#_0A9712: db $D9, $92, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 24 } | Size: 06
#_0A9715: db $BB, $BB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 2E } | Size: 0F
#_0A9718: db $AA, $2C, $F9 ; 0x0F92: Rupee Floor | { 2A, 0B } | Size: 08
#_0A971B: db $C6, $2C, $F9 ; 0x0F92: Rupee Floor | { 31, 0B } | Size: 08
#_0A971E: db $FF, $FF ; Layer01
#_0A9720: db $2B, $14, $FF ; 0x0FF3: Bg2 Full Mask | { 0A, 05 } | Size: 0C
#_0A9723: db $2A, $16, $FA ; 0x0FAA: LAMP | { 0A, 05 } | Size: 0A
#_0A9726: db $FF, $FF ; Layer02
#_0A9728: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0099:
#_0A972A: db $60, $20 ; Door 0x20 | Dir:00 | Pos:0C
#_0A972C: db $71, $1C ; Door 0x1C | Dir:01 | Pos:0E
#_0A972E: db $80, $00 ; Door 0x00 | Dir:00 | Pos:10
#_0A9730: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00A8:
#_0A9732: db $51, $08 ; Floors and Layout
#_0A9734: db $FC, $61, $00 ; 0x0100: Wall Inner Corner ▛ | { 06, 04 } | Size: 00
#_0A9737: db $18, $22, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 08 } | Size: 02
#_0A973A: db $FC, $63, $04 ; 0x0104: Wall Outer Corner ▟ | { 06, 0C } | Size: 00
#_0A973D: db $FC, $23, $00 ; 0x0100: Wall Inner Corner ▛ | { 02, 0C } | Size: 00
#_0A9740: db $FD, $21, $02 ; 0x0102: Wall Inner Corner ▜ | { 12, 04 } | Size: 00
#_0A9743: db $FD, $22, $06 ; 0x0106: Wall Outer Corner ▙ | { 12, 08 } | Size: 00
#_0A9746: db $58, $22, $01 ; 0x0001: Top Wall Horiz. ↔ | { 16, 08 } | Size: 02
#_0A9749: db $FD, $A2, $02 ; 0x0102: Wall Inner Corner ▜ | { 1A, 08 } | Size: 00
#_0A974C: db $FE, $22, $00 ; 0x0100: Wall Inner Corner ▛ | { 22, 08 } | Size: 00
#_0A974F: db $9A, $22, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 08 } | Size: 0A
#_0A9752: db $FF, $A2, $02 ; 0x0102: Wall Inner Corner ▜ | { 3A, 08 } | Size: 00
#_0A9755: db $FE, $2C, $C1 ; 0x0101: Wall Inner Corner ▙ | { 22, 33 } | Size: 00
#_0A9758: db $98, $CD, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 26, 33 } | Size: 01
#_0A975B: db $A0, $DA, $61 ; 0x0061: Left Wall Vertic. ↕ | { 28, 36 } | Size: 02
#_0A975E: db $FE, $8C, $C5 ; 0x0105: Wall Outer Corner ▜ | { 28, 33 } | Size: 00
#_0A9761: db $FE, $8E, $81 ; 0x0101: Wall Inner Corner ▙ | { 28, 3A } | Size: 00
#_0A9764: db $FF, $4E, $83 ; 0x0103: Wall Inner Corner ▟ | { 34, 3A } | Size: 00
#_0A9767: db $D0, $DA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 34, 36 } | Size: 02
#_0A976A: db $FF, $4C, $C7 ; 0x0107: Wall Outer Corner ▛ | { 34, 33 } | Size: 00
#_0A976D: db $E0, $CD, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 38, 33 } | Size: 01
#_0A9770: db $FF, $AC, $C3 ; 0x0103: Wall Inner Corner ▟ | { 3A, 33 } | Size: 00
#_0A9773: db $20, $3E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 08, 0F } | Size: 02
#_0A9776: db $FC, $53, $C8 ; 0x0108: Wall Corner (Lower) | { 05, 0F } | Size: 00
#_0A9779: db $14, $4D, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 13 } | Size: 01
#_0A977C: db $FC, $55, $C9 ; 0x0109: Wall Corner (Lower) | { 05, 17 } | Size: 00
#_0A977F: db $24, $5D, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 09, 17 } | Size: 01
#_0A9782: db $4C, $5D, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 13, 17 } | Size: 01
#_0A9785: db $FD, $75, $CB ; 0x010B: Wall Corner (Lower) | { 17, 17 } | Size: 00
#_0A9788: db $5C, $3F, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 17, 0F } | Size: 03
#_0A978B: db $50, $2D, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 14, 0B } | Size: 01
#_0A978E: db $FD, $72, $CA ; 0x010A: Wall Corner (Lower) | { 17, 0B } | Size: 00
#_0A9791: db $36, $39, $69 ; 0x0069: Vertical Rail ↕ | { 0D, 0E } | Size: 09
#_0A9794: db $4F, $2C, $69 ; 0x0069: Vertical Rail ↕ | { 13, 0B } | Size: 0C
#_0A9797: db $35, $26, $F9 ; 0x0F99: Chest | { 0D, 09 } | Size: 06
#_0A979A: db $22, $BA, $FF ; 0x0FFA: ??? | { 08, 2E } | Size: 0A
#_0A979D: db $32, $B2, $FF ; 0x0FFA: ??? | { 0C, 2C } | Size: 0A
#_0A97A0: db $52, $BA, $FF ; 0x0FFA: ??? | { 14, 2E } | Size: 0A
#_0A97A3: db $3A, $D2, $FF ; 0x0FFA: ??? | { 0E, 34 } | Size: 0A
#_0A97A6: db $42, $DA, $FF ; 0x0FFA: ??? | { 10, 36 } | Size: 0A
#_0A97A9: db $30, $10, $3A ; 0x003A: Top Wall Decoration ↔ | { 0C, 04 } | Size: 00
#_0A97AC: db $28, $91, $3A ; 0x003A: Top Wall Decoration ↔ | { 0A, 24 } | Size: 01
#_0A97AF: db $88, $76, $65 ; 0x0065: Left Wall Column ↕ | { 22, 1D } | Size: 02
#_0A97B2: db $E8, $77, $66 ; 0x0066: Right Wall Column ↕ | { 3A, 1D } | Size: 03
#_0A97B5: db $17, $9F, $FA ; 0x0FAF: Pot | { 05, 27 } | Size: 0F
#_0A97B8: db $67, $9F, $FA ; 0x0FAF: Pot | { 19, 27 } | Size: 0F
#_0A97BB: db $17, $E7, $FA ; 0x0FAF: Pot | { 05, 39 } | Size: 0F
#_0A97BE: db $67, $E7, $FA ; 0x0FAF: Pot | { 19, 39 } | Size: 0F
#_0A97C1: db $3F, $C3, $FA ; 0x0FAF: Pot | { 0F, 30 } | Size: 0F
#_0A97C4: db $FE, $52, $C8 ; 0x0108: Wall Corner (Lower) | { 25, 0B } | Size: 00
#_0A97C7: db $A5, $2E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 29, 0B } | Size: 06
#_0A97CA: db $FF, $72, $CA ; 0x010A: Wall Corner (Lower) | { 37, 0B } | Size: 00
#_0A97CD: db $94, $3D, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 25, 0F } | Size: 01
#_0A97D0: db $FE, $54, $C9 ; 0x0109: Wall Corner (Lower) | { 25, 13 } | Size: 00
#_0A97D3: db $FF, $74, $CB ; 0x010B: Wall Corner (Lower) | { 37, 13 } | Size: 00
#_0A97D6: db $DC, $3D, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 0F } | Size: 01
#_0A97D9: db $A4, $4C, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 29, 13 } | Size: 00
#_0A97DC: db $FE, $B4, $CD ; 0x010D: Wall Corner (Lower) | { 2B, 13 } | Size: 00
#_0A97DF: db $FF, $14, $CF ; 0x010F: Wall Corner (Lower) | { 31, 13 } | Size: 00
#_0A97E2: db $D4, $4C, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 35, 13 } | Size: 00
#_0A97E5: db $AC, $80, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 2B, 20 } | Size: 00
#_0A97E8: db $C4, $80, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 31, 20 } | Size: 00
#_0A97EB: db $AD, $AC, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 2B, 2B } | Size: 04
#_0A97EE: db $FE, $BD, $09 ; 0x0109: Wall Corner (Lower) | { 2B, 34 } | Size: 00
#_0A97F1: db $BC, $D0, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2F, 34 } | Size: 00
#_0A97F4: db $C5, $AC, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 31, 2B } | Size: 04
#_0A97F7: db $FF, $1D, $0B ; 0x010B: Wall Corner (Lower) | { 31, 34 } | Size: 00
#_0A97FA: db $97, $5F, $22 ; 0x0022: Horizontal Rail ↔ | { 25, 17 } | Size: 0F
#_0A97FD: db $D8, $5D, $22 ; 0x0022: Horizontal Rail ↔ | { 36, 17 } | Size: 01
#_0A9800: db $AA, $A8, $22 ; 0x0022: Horizontal Rail ↔ | { 2A, 2A } | Size: 08
#_0A9803: db $A9, $AA, $69 ; 0x0069: Vertical Rail ↕ | { 2A, 2A } | Size: 06
#_0A9806: db $D5, $AA, $69 ; 0x0069: Vertical Rail ↕ | { 35, 2A } | Size: 06
#_0A9809: db $B0, $E0, $38 ; 0x0038: Statue ↔ | { 2C, 38 } | Size: 00
#_0A980C: db $C8, $E0, $38 ; 0x0038: Statue ↔ | { 32, 38 } | Size: 00
#_0A980F: db $FC, $93, $F1 ; 0x0131: Stairs Going Up2 (layer) | { 09, 0F } | Size: 00
#_0A9812: db $B8, $D3, $F9 ; 0x0F9C: Stair | { 2E, 34 } | Size: 03
#_0A9815: db $08, $11, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 01
#_0A9818: db $59, $10, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 04 } | Size: 04
#_0A981B: db $8B, $10, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 04 } | Size: 0C
#_0A981E: db $CA, $10, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 04 } | Size: 08
#_0A9821: db $81, $DD, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 20, 37 } | Size: 05
#_0A9824: db $E1, $DD, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 38, 37 } | Size: 05
#_0A9827: db $FF, $FF ; Layer01
#_0A9829: db $38, $3D, $01 ; 0x0001: Top Wall Horiz. ↔ | { 0E, 0F } | Size: 01
#_0A982C: db $FD, $03, $C4 ; 0x0104: Wall Outer Corner ▟ | { 10, 0F } | Size: 00
#_0A982F: db $FD, $02, $C0 ; 0x0100: Wall Inner Corner ▛ | { 10, 0B } | Size: 00
#_0A9832: db $34, $5F, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0D, 17 } | Size: 03
#_0A9835: db $AC, $5D, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2B, 17 } | Size: 01
#_0A9838: db $AD, $60, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2B, 18 } | Size: 04
#_0A983B: db $C4, $5D, $62 ; 0x0062: Right Wall Horiz. ↕ | { 31, 17 } | Size: 01
#_0A983E: db $C5, $60, $62 ; 0x0062: Right Wall Horiz. ↕ | { 31, 18 } | Size: 04
#_0A9841: db $AC, $89, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2B, 22 } | Size: 01
#_0A9844: db $AD, $8C, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2B, 23 } | Size: 04
#_0A9847: db $C4, $89, $62 ; 0x0062: Right Wall Horiz. ↕ | { 31, 22 } | Size: 01
#_0A984A: db $C5, $8C, $62 ; 0x0062: Right Wall Horiz. ↕ | { 31, 23 } | Size: 04
#_0A984D: db $FE, $EB, $F4 ; 0x0134: Block | { 2E, 2F } | Size: 00
#_0A9850: db $6D, $35, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1B, 0D } | Size: 05
#_0A9853: db $6D, $45, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1B, 11 } | Size: 05
#_0A9856: db $EC, $36, $01 ; 0x0001: Top Wall Horiz. ↔ | { 3B, 0D } | Size: 02
#_0A9859: db $EC, $46, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 3B, 11 } | Size: 02
#_0A985C: db $BF, $30, $F9 ; 0x0F93: Telepathic Tile | { 2F, 0C } | Size: 0C
#_0A985F: db $FF, $FF ; Layer02
#_0A9861: db $15, $3E, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 05, 0F } | Size: 06
#_0A9864: db $50, $2F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 14, 0B } | Size: 03
#_0A9867: db $5C, $2F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 17, 0B } | Size: 03
#_0A986A: db $97, $2E, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 25, 0B } | Size: 0E
#_0A986D: db $CD, $2E, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 33, 0B } | Size: 06
#_0A9870: db $AA, $7C, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2A, 1F } | Size: 08
#_0A9873: db $AA, $7C, $22 ; 0x0022: Horizontal Rail ↔ | { 2A, 1F } | Size: 08
#_0A9876: db $A8, $7C, $69 ; 0x0069: Vertical Rail ↕ | { 2A, 1F } | Size: 00
#_0A9879: db $AA, $88, $22 ; 0x0022: Horizontal Rail ↔ | { 2A, 22 } | Size: 08
#_0A987C: db $D4, $7C, $69 ; 0x0069: Vertical Rail ↕ | { 35, 1F } | Size: 00
#_0A987F: db $AD, $AE, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2B, 2B } | Size: 06
#_0A9882: db $C4, $AE, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 31, 2B } | Size: 02
#_0A9885: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00A8:
#_0A9887: db $82, $38 ; Door 0x38 | Dir:02 | Pos:10
#_0A9889: db $60, $36 ; Door 0x36 | Dir:00 | Pos:0C
#_0A988B: db $81, $1C ; Door 0x1C | Dir:01 | Pos:10
#_0A988D: db $92, $40 ; Door 0x40 | Dir:02 | Pos:12
#_0A988F: db $93, $40 ; Door 0x40 | Dir:03 | Pos:12
#_0A9891: db $73, $00 ; Door 0x00 | Dir:03 | Pos:0E
#_0A9893: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00A9:
#_0A9895: db $61, $1C ; Floors and Layout
#_0A9897: db $09, $34, $0D ; 0x000D: Diagonal Wall ◤ | { 02, 0D } | Size: 04
#_0A989A: db $08, $3A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 0E } | Size: 02
#_0A989D: db $FC, $2A, $81 ; 0x0101: Wall Inner Corner ▙ | { 02, 2A } | Size: 00
#_0A98A0: db $18, $A9, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 2A } | Size: 01
#_0A98A3: db $FC, $8A, $85 ; 0x0105: Wall Outer Corner ▜ | { 08, 2A } | Size: 00
#_0A98A6: db $FC, $8B, $81 ; 0x0101: Wall Inner Corner ▙ | { 08, 2E } | Size: 00
#_0A98A9: db $31, $BB, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0C, 2E } | Size: 07
#_0A98AC: db $FD, $AB, $85 ; 0x0105: Wall Outer Corner ▜ | { 1A, 2E } | Size: 00
#_0A98AF: db $69, $C8, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1A, 32 } | Size: 04
#_0A98B2: db $FD, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 1A, 3A } | Size: 00
#_0A98B5: db $FE, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 22, 3A } | Size: 00
#_0A98B8: db $89, $C8, $62 ; 0x0062: Right Wall Horiz. ↕ | { 22, 32 } | Size: 04
#_0A98BB: db $FE, $2B, $87 ; 0x0107: Wall Outer Corner ▛ | { 22, 2E } | Size: 00
#_0A98BE: db $99, $BB, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 26, 2E } | Size: 07
#_0A98C1: db $FF, $4B, $83 ; 0x0103: Wall Inner Corner ▟ | { 34, 2E } | Size: 00
#_0A98C4: db $E0, $A9, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 38, 2A } | Size: 01
#_0A98C7: db $FF, $4A, $87 ; 0x0107: Wall Outer Corner ▛ | { 34, 2A } | Size: 00
#_0A98CA: db $FF, $AA, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 2A } | Size: 00
#_0A98CD: db $D1, $10, $0F ; 0x000F: Diagonal Wall ◥ | { 34, 04 } | Size: 04
#_0A98D0: db $E8, $3A, $62 ; 0x0062: Right Wall Horiz. ↕ | { 3A, 0E } | Size: 02
#_0A98D3: db $14, $35, $19 ; 0x0019: Diagonal Wall ◤ | { 05, 0D } | Size: 01
#_0A98D6: db $15, $39, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 0E } | Size: 05
#_0A98D9: db $FC, $56, $89 ; 0x0109: Wall Corner (Lower) | { 05, 1A } | Size: 00
#_0A98DC: db $24, $6A, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 09, 1A } | Size: 02
#_0A98DF: db $FC, $F6, $8D ; 0x010D: Wall Corner (Lower) | { 0F, 1A } | Size: 00
#_0A98E2: db $3C, $7B, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0F, 1E } | Size: 03
#_0A98E5: db $C4, $6A, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 31, 1A } | Size: 02
#_0A98E8: db $FF, $76, $8B ; 0x010B: Wall Corner (Lower) | { 37, 1A } | Size: 00
#_0A98EB: db $FE, $D6, $8F ; 0x010F: Wall Corner (Lower) | { 2D, 1A } | Size: 00
#_0A98EE: db $B4, $7B, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 2D, 1E } | Size: 03
#_0A98F1: db $FE, $D9, $8B ; 0x010B: Wall Corner (Lower) | { 2D, 26 } | Size: 00
#_0A98F4: db $D0, $1D, $1B ; 0x001B: Diagonal Wall ◥ | { 34, 07 } | Size: 01
#_0A98F7: db $DD, $39, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 0E } | Size: 05
#_0A98FA: db $31, $1C, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0C, 07 } | Size: 04
#_0A98FD: db $FD, $61, $CA ; 0x010A: Wall Corner (Lower) | { 16, 07 } | Size: 00
#_0A9900: db $FD, $62, $CE ; 0x010E: Wall Corner (Lower) | { 16, 0B } | Size: 00
#_0A9903: db $74, $28, $69 ; 0x0069: Vertical Rail ↕ | { 1D, 0A } | Size: 00
#_0A9906: db $88, $28, $69 ; 0x0069: Vertical Rail ↕ | { 22, 0A } | Size: 00
#_0A9909: db $69, $2D, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 1A, 0B } | Size: 05
#_0A990C: db $FE, $62, $CC ; 0x010C: Wall Corner (Lower) | { 26, 0B } | Size: 00
#_0A990F: db $A9, $1C, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2A, 07 } | Size: 04
#_0A9912: db $FE, $61, $C8 ; 0x0108: Wall Corner (Lower) | { 26, 07 } | Size: 00
#_0A9915: db $FC, $F9, $89 ; 0x0109: Wall Corner (Lower) | { 0F, 26 } | Size: 00
#_0A9918: db $4F, $98, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 13, 26 } | Size: 0C
#_0A991B: db $68, $11, $3A ; 0x003A: Top Wall Decoration ↔ | { 1A, 04 } | Size: 01
#_0A991E: db $68, $1C, $69 ; 0x0069: Vertical Rail ↕ | { 1A, 07 } | Size: 00
#_0A9921: db $94, $1C, $69 ; 0x0069: Vertical Rail ↕ | { 25, 07 } | Size: 00
#_0A9924: db $FD, $E2, $F1 ; 0x0131: Stairs Going Up2 (layer) | { 1E, 0B } | Size: 00
#_0A9927: db $15, $7A, $22 ; 0x0022: Horizontal Rail ↔ | { 05, 1E } | Size: 06
#_0A992A: db $3A, $79, $69 ; 0x0069: Vertical Rail ↕ | { 0E, 1E } | Size: 09
#_0A992D: db $3B, $A9, $5F ; 0x005F: Long Horizontal Rail ↔ | { 0E, 2A } | Size: 0D
#_0A9930: db $C6, $79, $69 ; 0x0069: Vertical Rail ↕ | { 31, 1E } | Size: 09
#_0A9933: db $C5, $7A, $22 ; 0x0022: Horizontal Rail ↔ | { 31, 1E } | Size: 06
#_0A9936: db $DB, $A3, $FA ; 0x0FAF: Pot | { 36, 28 } | Size: 0F
#_0A9939: db $CB, $7E, $FE ; 0x0FEB: Throne/ Decoration Object | { 32, 1F } | Size: 0E
#_0A993C: db $E3, $9B, $FA ; 0x0FAF: Pot | { 38, 26 } | Size: 0F
#_0A993F: db $E0, $A0, $FD ; 0x0FD0: Floor Switch | { 38, 28 } | Size: 00
#_0A9942: db $0C, $65, $7F ; 0x007F: Left Wall Torches ↕ | { 03, 19 } | Size: 01
#_0A9945: db $EC, $65, $80 ; 0x0080: Right Wall Torches ↕ | { 3B, 19 } | Size: 01
#_0A9948: db $2B, $7E, $FE ; 0x0FEB: Throne/ Decoration Object | { 0A, 1F } | Size: 0E
#_0A994B: db $1B, $9B, $FA ; 0x0FAF: Pot | { 06, 26 } | Size: 0F
#_0A994E: db $23, $A3, $FA ; 0x0FAF: Pot | { 08, 28 } | Size: 0F
#_0A9951: db $18, $A0, $FD ; 0x0FD0: Floor Switch | { 06, 28 } | Size: 00
#_0A9954: db $09, $11, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 02, 04 } | Size: 05
#_0A9957: db $D5, $11, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 35, 04 } | Size: 05
#_0A995A: db $01, $BB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 2E } | Size: 07
#_0A995D: db $23, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 08, 32 } | Size: 0E
#_0A9960: db $61, $CA, $60 ; 0x0060: Ceiling ↕ | { 18, 32 } | Size: 06
#_0A9963: db $9B, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 26, 32 } | Size: 0E
#_0A9966: db $D9, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 32 } | Size: 06
#_0A9969: db $E1, $B8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 38, 2E } | Size: 04
#_0A996C: db $FF, $FF ; Layer01
#_0A996E: db $61, $5A, $C1 ; 0x00C1: Chest Contour Floor ↔ ↕ | { 18, 16 } | Size: 06
#_0A9971: db $70, $82, $21 ; 0x0021: Mini Stairs ↔ | { 1C, 20 } | Size: 02
#_0A9974: db $79, $68, $FB ; 0x0FB1: Big Chest | { 1E, 1A } | Size: 04
#_0A9977: db $04, $36, $01 ; 0x0001: Top Wall Horiz. ↔ | { 01, 0D } | Size: 02
#_0A997A: db $04, $46, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 01, 11 } | Size: 02
#_0A997D: db $EC, $36, $01 ; 0x0001: Top Wall Horiz. ↔ | { 3B, 0D } | Size: 02
#_0A9980: db $EC, $46, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 3B, 11 } | Size: 02
#_0A9983: db $23, $5F, $FA ; 0x0FAF: Pot | { 08, 17 } | Size: 0F
#_0A9986: db $23, $67, $FA ; 0x0FAF: Pot | { 08, 19 } | Size: 0F
#_0A9989: db $DB, $5F, $FA ; 0x0FAF: Pot | { 36, 17 } | Size: 0F
#_0A998C: db $DB, $67, $FA ; 0x0FAF: Pot | { 36, 19 } | Size: 0F
#_0A998F: db $5B, $43, $FC ; 0x0FCF: Inactive Warp | { 16, 10 } | Size: 0F
#_0A9992: db $A3, $43, $FC ; 0x0FCF: Inactive Warp | { 28, 10 } | Size: 0F
#_0A9995: db $FD, $A3, $9C ; 0x011C: Fairy Pot | { 1A, 0E } | Size: 00
#_0A9998: db $FE, $23, $9C ; 0x011C: Fairy Pot | { 22, 0E } | Size: 00
#_0A999B: db $FF, $FF ; Layer02
#_0A999D: db $18, $36, $AC ; 0x00AC: Diagonal Ceiling ◢ | { 06, 0D } | Size: 02
#_0A99A0: db $D0, $22, $AA ; 0x00AA: Diagonal Ceiling ◣ | { 34, 08 } | Size: 02
#_0A99A3: db $32, $1F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0C, 07 } | Size: 0B
#_0A99A6: db $58, $1F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 16, 07 } | Size: 03
#_0A99A9: db $17, $3B, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 05, 0E } | Size: 0F
#_0A99AC: db $6B, $33, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1A, 0C } | Size: 0F
#_0A99AF: db $9A, $1F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 26, 07 } | Size: 0B
#_0A99B2: db $C0, $1F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 30, 07 } | Size: 03
#_0A99B5: db $AF, $3B, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2B, 0E } | Size: 0F
#_0A99B8: db $3F, $7A, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0F, 1E } | Size: 0E
#_0A99BB: db $7F, $7A, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1F, 1E } | Size: 0E
#_0A99BE: db $B4, $7A, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2D, 1E } | Size: 02
#_0A99C1: db $57, $5D, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 15, 17 } | Size: 0D
#_0A99C4: db $95, $5D, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 25, 17 } | Size: 05
#_0A99C7: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00A9:
#_0A99C9: db $12, $18 ; Door 0x18 | Dir:02 | Pos:02
#_0A99CB: db $73, $18 ; Door 0x18 | Dir:03 | Pos:0E
#_0A99CD: db $10, $1E ; Door 0x1E | Dir:00 | Pos:02
#_0A99CF: db $32, $40 ; Door 0x40 | Dir:02 | Pos:06
#_0A99D1: db $93, $40 ; Door 0x40 | Dir:03 | Pos:12
#_0A99D3: db $71, $00 ; Door 0x00 | Dir:01 | Pos:0E
#_0A99D5: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00AA:
#_0A99D7: db $51, $0C ; Floors and Layout
#_0A99D9: db $FC, $2C, $C1 ; 0x0101: Wall Inner Corner ▙ | { 02, 33 } | Size: 00
#_0A99DC: db $18, $CF, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 33 } | Size: 03
#_0A99DF: db $2C, $DA, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0B, 36 } | Size: 02
#_0A99E2: db $FC, $BC, $C5 ; 0x0105: Wall Outer Corner ▜ | { 0B, 33 } | Size: 00
#_0A99E5: db $FC, $BE, $81 ; 0x0101: Wall Inner Corner ▙ | { 0B, 3A } | Size: 00
#_0A99E8: db $FD, $1E, $83 ; 0x0103: Wall Inner Corner ▟ | { 11, 3A } | Size: 00
#_0A99EB: db $44, $DA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 11, 36 } | Size: 02
#_0A99EE: db $50, $CF, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 14, 33 } | Size: 03
#_0A99F1: db $FD, $1C, $C7 ; 0x0107: Wall Outer Corner ▛ | { 11, 33 } | Size: 00
#_0A99F4: db $FD, $AC, $C3 ; 0x0103: Wall Inner Corner ▟ | { 1A, 33 } | Size: 00
#_0A99F7: db $FC, $51, $C8 ; 0x0108: Wall Corner (Lower) | { 05, 07 } | Size: 00
#_0A99FA: db $25, $1E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 09, 07 } | Size: 06
#_0A99FD: db $FD, $71, $CA ; 0x010A: Wall Corner (Lower) | { 17, 07 } | Size: 00
#_0A9A00: db $5C, $2C, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 17, 0B } | Size: 00
#_0A9A03: db $15, $2C, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 0B } | Size: 04
#_0A9A06: db $14, $AE, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 2B } | Size: 02
#_0A9A09: db $FC, $5C, $09 ; 0x0109: Wall Corner (Lower) | { 05, 30 } | Size: 00
#_0A9A0C: db $25, $C1, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 09, 30 } | Size: 05
#_0A9A0F: db $FE, $2A, $00 ; 0x0100: Wall Inner Corner ▛ | { 22, 28 } | Size: 00
#_0A9A12: db $98, $A1, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 28 } | Size: 01
#_0A9A15: db $FE, $8A, $04 ; 0x0104: Wall Outer Corner ▟ | { 28, 28 } | Size: 00
#_0A9A18: db $FE, $89, $00 ; 0x0100: Wall Inner Corner ▛ | { 28, 24 } | Size: 00
#_0A9A1B: db $FF, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 32, 3A } | Size: 00
#_0A9A1E: db $FF, $2D, $87 ; 0x0107: Wall Outer Corner ▛ | { 32, 36 } | Size: 00
#_0A9A21: db $D8, $DA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 36, 36 } | Size: 02
#_0A9A24: db $FF, $AD, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 36 } | Size: 00
#_0A9A27: db $AC, $AF, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2B, 2B } | Size: 03
#_0A9A2A: db $AC, $CF, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2B, 33 } | Size: 03
#_0A9A2D: db $3A, $35, $22 ; 0x0022: Horizontal Rail ↔ | { 0E, 0D } | Size: 09
#_0A9A30: db $39, $35, $69 ; 0x0069: Vertical Rail ↕ | { 0E, 0D } | Size: 05
#_0A9A33: db $0C, $65, $7F ; 0x007F: Left Wall Torches ↕ | { 03, 19 } | Size: 01
#_0A9A36: db $6C, $4E, $80 ; 0x0080: Right Wall Torches ↕ | { 1B, 13 } | Size: 02
#_0A9A39: db $B0, $92, $05 ; 0x0005: Top Wall Column ↔ | { 2C, 24 } | Size: 02
#_0A9A3C: db $15, $56, $22 ; 0x0022: Horizontal Rail ↔ | { 05, 15 } | Size: 06
#_0A9A3F: db $17, $A9, $22 ; 0x0022: Horizontal Rail ↔ | { 05, 2A } | Size: 0D
#_0A9A42: db $55, $AA, $69 ; 0x0069: Vertical Rail ↕ | { 15, 2A } | Size: 06
#_0A9A45: db $54, $CE, $22 ; 0x0022: Horizontal Rail ↔ | { 15, 33 } | Size: 02
#_0A9A48: db $48, $46, $22 ; 0x0022: Horizontal Rail ↔ | { 12, 11 } | Size: 02
#_0A9A4B: db $48, $5A, $22 ; 0x0022: Horizontal Rail ↔ | { 12, 16 } | Size: 02
#_0A9A4E: db $48, $46, $69 ; 0x0069: Vertical Rail ↕ | { 12, 11 } | Size: 02
#_0A9A51: db $5C, $46, $69 ; 0x0069: Vertical Rail ↕ | { 17, 11 } | Size: 02
#_0A9A54: db $24, $66, $22 ; 0x0022: Horizontal Rail ↔ | { 09, 19 } | Size: 02
#_0A9A57: db $24, $66, $69 ; 0x0069: Vertical Rail ↕ | { 09, 19 } | Size: 02
#_0A9A5A: db $24, $7A, $22 ; 0x0022: Horizontal Rail ↔ | { 09, 1E } | Size: 02
#_0A9A5D: db $38, $66, $69 ; 0x0069: Vertical Rail ↕ | { 0E, 19 } | Size: 02
#_0A9A60: db $48, $66, $22 ; 0x0022: Horizontal Rail ↔ | { 12, 19 } | Size: 02
#_0A9A63: db $48, $66, $69 ; 0x0069: Vertical Rail ↕ | { 12, 19 } | Size: 02
#_0A9A66: db $48, $7A, $22 ; 0x0022: Horizontal Rail ↔ | { 12, 1E } | Size: 02
#_0A9A69: db $5C, $66, $69 ; 0x0069: Vertical Rail ↕ | { 17, 19 } | Size: 02
#_0A9A6C: db $24, $86, $22 ; 0x0022: Horizontal Rail ↔ | { 09, 21 } | Size: 02
#_0A9A6F: db $24, $86, $69 ; 0x0069: Vertical Rail ↕ | { 09, 21 } | Size: 02
#_0A9A72: db $24, $9A, $22 ; 0x0022: Horizontal Rail ↔ | { 09, 26 } | Size: 02
#_0A9A75: db $38, $86, $69 ; 0x0069: Vertical Rail ↕ | { 0E, 21 } | Size: 02
#_0A9A78: db $48, $86, $22 ; 0x0022: Horizontal Rail ↔ | { 12, 21 } | Size: 02
#_0A9A7B: db $48, $86, $69 ; 0x0069: Vertical Rail ↕ | { 12, 21 } | Size: 02
#_0A9A7E: db $48, $9A, $22 ; 0x0022: Horizontal Rail ↔ | { 12, 26 } | Size: 02
#_0A9A81: db $5C, $86, $69 ; 0x0069: Vertical Rail ↕ | { 17, 21 } | Size: 02
#_0A9A84: db $38, $C3, $F9 ; 0x0F9C: Stair | { 0E, 30 } | Size: 03
#_0A9A87: db $B0, $CF, $F9 ; 0x0F9C: Stair | { 2C, 33 } | Size: 03
#_0A9A8A: db $CC, $B4, $8B ; 0x008B: Left Vertical Jump Edge ↕ | { 33, 2D } | Size: 00
#_0A9A8D: db $D9, $BA, $F9 ; 0x0F99: Chest | { 36, 2E } | Size: 06
#_0A9A90: db $CC, $AC, $69 ; 0x0069: Vertical Rail ↕ | { 33, 2B } | Size: 00
#_0A9A93: db $CC, $CC, $69 ; 0x0069: Vertical Rail ↕ | { 33, 33 } | Size: 00
#_0A9A96: db $A8, $B4, $8C ; 0x008C: Right Vertical Jump Edge ↕ | { 2A, 2D } | Size: 00
#_0A9A99: db $A8, $AC, $69 ; 0x0069: Vertical Rail ↕ | { 2A, 2B } | Size: 00
#_0A9A9C: db $A8, $CC, $69 ; 0x0069: Vertical Rail ↕ | { 2A, 33 } | Size: 00
#_0A9A9F: db $AB, $2F, $FA ; 0x0FAF: Pot | { 2A, 0B } | Size: 0F
#_0A9AA2: db $D3, $2F, $FA ; 0x0FAF: Pot | { 34, 0B } | Size: 0F
#_0A9AA5: db $AB, $57, $FA ; 0x0FAF: Pot | { 2A, 15 } | Size: 0F
#_0A9AA8: db $D3, $57, $FA ; 0x0FAF: Pot | { 34, 15 } | Size: 0F
#_0A9AAB: db $BF, $43, $FA ; 0x0FAF: Pot | { 2F, 10 } | Size: 0F
#_0A9AAE: db $09, $DD, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 37 } | Size: 05
#_0A9AB1: db $25, $DC, $60 ; 0x0060: Ceiling ↕ | { 09, 37 } | Size: 04
#_0A9AB4: db $55, $DD, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 15, 37 } | Size: 05
#_0A9AB7: db $71, $DC, $60 ; 0x0060: Ceiling ↕ | { 1C, 37 } | Size: 04
#_0A9ABA: db $81, $90, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 20, 24 } | Size: 04
#_0A9ABD: db $D9, $E8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 3A } | Size: 04
#_0A9AC0: db $FF, $FF ; Layer01
#_0A9AC2: db $16, $57, $61 ; 0x0061: Left Wall Vertic. ↕ | { 05, 15 } | Size: 0B
#_0A9AC5: db $5F, $37, $62 ; 0x0062: Right Wall Horiz. ↕ | { 17, 0D } | Size: 0F
#_0A9AC8: db $5C, $AF, $62 ; 0x0062: Right Wall Horiz. ↕ | { 17, 2B } | Size: 03
#_0A9ACB: db $FD, $7C, $03 ; 0x0103: Wall Inner Corner ▟ | { 17, 30 } | Size: 00
#_0A9ACE: db $54, $C1, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 15, 30 } | Size: 01
#_0A9AD1: db $FE, $5A, $C0 ; 0x0100: Wall Inner Corner ▛ | { 25, 2B } | Size: 00
#_0A9AD4: db $94, $BE, $61 ; 0x0061: Left Wall Vertic. ↕ | { 25, 2F } | Size: 02
#_0A9AD7: db $FE, $5C, $C1 ; 0x0101: Wall Inner Corner ▙ | { 25, 33 } | Size: 00
#_0A9ADA: db $04, $36, $01 ; 0x0001: Top Wall Horiz. ↔ | { 01, 0D } | Size: 02
#_0A9ADD: db $04, $46, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 01, 11 } | Size: 02
#_0A9AE0: db $A4, $AD, $01 ; 0x0001: Top Wall Horiz. ↔ | { 29, 2B } | Size: 01
#_0A9AE3: db $A4, $CD, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 29, 33 } | Size: 01
#_0A9AE6: db $CC, $AE, $01 ; 0x0001: Top Wall Horiz. ↔ | { 33, 2B } | Size: 02
#_0A9AE9: db $FF, $7A, $C2 ; 0x0102: Wall Inner Corner ▜ | { 37, 2B } | Size: 00
#_0A9AEC: db $DC, $BE, $62 ; 0x0062: Right Wall Horiz. ↕ | { 37, 2F } | Size: 02
#_0A9AEF: db $FF, $7C, $C3 ; 0x0103: Wall Inner Corner ▟ | { 37, 33 } | Size: 00
#_0A9AF2: db $CC, $CE, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 33, 33 } | Size: 02
#_0A9AF5: db $DB, $BB, $FA ; 0x0FAF: Pot | { 36, 2E } | Size: 0F
#_0A9AF8: db $DB, $C3, $FA ; 0x0FAF: Pot | { 36, 30 } | Size: 0F
#_0A9AFB: db $DB, $CB, $FA ; 0x0FAF: Pot | { 36, 32 } | Size: 0F
#_0A9AFE: db $FF, $FF ; Layer02
#_0A9B00: db $15, $1E, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 05, 07 } | Size: 06
#_0A9B03: db $15, $44, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 05, 11 } | Size: 04
#_0A9B06: db $28, $35, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0A, 0D } | Size: 01
#_0A9B09: db $2F, $1C, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0B, 07 } | Size: 0C
#_0A9B0C: db $2F, $24, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0B, 09 } | Size: 0C
#_0A9B0F: db $4C, $48, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 13, 12 } | Size: 00
#_0A9B12: db $4C, $68, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 13, 1A } | Size: 00
#_0A9B15: db $28, $68, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0A, 1A } | Size: 00
#_0A9B18: db $28, $88, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0A, 22 } | Size: 00
#_0A9B1B: db $4C, $88, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 13, 22 } | Size: 00
#_0A9B1E: db $17, $AD, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 05, 2B } | Size: 0D
#_0A9B21: db $AD, $B1, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2B, 2C } | Size: 05
#_0A9B24: db $AD, $C8, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2B, 32 } | Size: 04
#_0A9B27: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00AA:
#_0A9B29: db $80, $38 ; Door 0x38 | Dir:00 | Pos:10
#_0A9B2B: db $32, $40 ; Door 0x40 | Dir:02 | Pos:06
#_0A9B2D: db $62, $00 ; Door 0x00 | Dir:02 | Pos:0C
#_0A9B2F: db $82, $00 ; Door 0x00 | Dir:02 | Pos:10
#_0A9B31: db $12, $00 ; Door 0x00 | Dir:02 | Pos:02
#_0A9B33: db $61, $00 ; Door 0x00 | Dir:01 | Pos:0C
#_0A9B35: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00B8:
#_0A9B37: db $E1, $04 ; Floors and Layout
#_0A9B39: db $FE, $41, $00 ; 0x0100: Wall Inner Corner ▛ | { 24, 04 } | Size: 00
#_0A9B3C: db $93, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 24, 08 } | Size: 0F
#_0A9B3F: db $92, $9A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 24, 26 } | Size: 0A
#_0A9B42: db $FE, $4E, $81 ; 0x0101: Wall Inner Corner ▙ | { 24, 3A } | Size: 00
#_0A9B45: db $91, $36, $65 ; 0x0065: Left Wall Column ↕ | { 24, 0D } | Size: 06
#_0A9B48: db $E9, $36, $66 ; 0x0066: Right Wall Column ↕ | { 3A, 0D } | Size: 06
#_0A9B4B: db $A8, $31, $C1 ; 0x00C1: Chest Contour Floor ↔ ↕ | { 2A, 0C } | Size: 01
#_0A9B4E: db $B4, $52, $21 ; 0x0021: Mini Stairs ↔ | { 2D, 14 } | Size: 02
#_0A9B51: db $A9, $6A, $88 ; 0x0088: Large Vertical Rail ↕ | { 2A, 1A } | Size: 06
#_0A9B54: db $D9, $6A, $88 ; 0x0088: Large Vertical Rail ↕ | { 36, 1A } | Size: 06
#_0A9B57: db $B1, $A4, $5D ; 0x005D: Large Horizontal Rail ↔ | { 2C, 29 } | Size: 04
#_0A9B5A: db $B0, $C0, $88 ; 0x0088: Large Vertical Rail ↕ | { 2C, 30 } | Size: 00
#_0A9B5D: db $D0, $C0, $88 ; 0x0088: Large Vertical Rail ↕ | { 34, 30 } | Size: 00
#_0A9B60: db $B3, $83, $FA ; 0x0FAF: Pot | { 2C, 20 } | Size: 0F
#_0A9B63: db $D3, $83, $FA ; 0x0FAF: Pot | { 34, 20 } | Size: 0F
#_0A9B66: db $C3, $6B, $FA ; 0x0FAF: Pot | { 30, 1A } | Size: 0F
#_0A9B69: db $C1, $42, $F9 ; 0x0F99: Chest | { 30, 10 } | Size: 06
#_0A9B6C: db $88, $00, $60 ; 0x0060: Ceiling ↕ | { 22, 00 } | Size: 00
#_0A9B6F: db $FF, $FF ; Layer01
#_0A9B71: db $FF, $FF ; Layer02
#_0A9B73: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00B8:
#_0A9B75: db $20, $1E ; Door 0x1E | Dir:00 | Pos:04
#_0A9B77: db $63, $00 ; Door 0x00 | Dir:03 | Pos:0C
#_0A9B79: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00B9:
#_0A9B7B: db $51, $1C ; Floors and Layout
#_0A9B7D: db $FD, $51, $00 ; 0x0100: Wall Inner Corner ▛ | { 15, 04 } | Size: 00
#_0A9B80: db $54, $21, $61 ; 0x0061: Left Wall Vertic. ↕ | { 15, 08 } | Size: 01
#_0A9B83: db $1A, $24, $01 ; 0x0001: Top Wall Horiz. ↔ | { 06, 09 } | Size: 08
#_0A9B86: db $FD, $52, $44 ; 0x0104: Wall Outer Corner ▟ | { 15, 09 } | Size: 00
#_0A9B89: db $FC, $22, $40 ; 0x0100: Wall Inner Corner ▛ | { 02, 09 } | Size: 00
#_0A9B8C: db $FC, $2A, $81 ; 0x0101: Wall Inner Corner ▙ | { 02, 2A } | Size: 00
#_0A9B8F: db $19, $AA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 2A } | Size: 06
#_0A9B92: db $FD, $1A, $85 ; 0x0105: Wall Outer Corner ▜ | { 11, 2A } | Size: 00
#_0A9B95: db $45, $BA, $61 ; 0x0061: Left Wall Vertic. ↕ | { 11, 2E } | Size: 06
#_0A9B98: db $FD, $1E, $81 ; 0x0101: Wall Inner Corner ▙ | { 11, 3A } | Size: 00
#_0A9B9B: db $FE, $D1, $02 ; 0x0102: Wall Inner Corner ▜ | { 2D, 04 } | Size: 00
#_0A9B9E: db $B4, $21, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2D, 08 } | Size: 01
#_0A9BA1: db $C1, $25, $01 ; 0x0001: Top Wall Horiz. ↔ | { 30, 09 } | Size: 05
#_0A9BA4: db $FE, $D2, $46 ; 0x0106: Wall Outer Corner ▙ | { 2D, 09 } | Size: 00
#_0A9BA7: db $FF, $A2, $42 ; 0x0102: Wall Inner Corner ▜ | { 3A, 09 } | Size: 00
#_0A9BAA: db $FF, $A6, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 1A } | Size: 00
#_0A9BAD: db $B1, $6B, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2C, 1A } | Size: 07
#_0A9BB0: db $FE, $96, $87 ; 0x0107: Wall Outer Corner ▛ | { 29, 1A } | Size: 00
#_0A9BB3: db $A4, $79, $62 ; 0x0062: Right Wall Horiz. ↕ | { 29, 1E } | Size: 01
#_0A9BB6: db $B1, $83, $01 ; 0x0001: Top Wall Horiz. ↔ | { 2C, 20 } | Size: 07
#_0A9BB9: db $FE, $98, $06 ; 0x0106: Wall Outer Corner ▙ | { 29, 20 } | Size: 00
#_0A9BBC: db $FF, $A8, $02 ; 0x0102: Wall Inner Corner ▜ | { 3A, 20 } | Size: 00
#_0A9BBF: db $FF, $AA, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 2A } | Size: 00
#_0A9BC2: db $D0, $AB, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 34, 2A } | Size: 03
#_0A9BC5: db $FF, $1A, $87 ; 0x0107: Wall Outer Corner ▛ | { 31, 2A } | Size: 00
#_0A9BC8: db $C5, $BA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 31, 2E } | Size: 06
#_0A9BCB: db $FF, $1E, $83 ; 0x0103: Wall Inner Corner ▟ | { 31, 3A } | Size: 00
#_0A9BCE: db $FD, $06, $87 ; 0x0107: Wall Outer Corner ▛ | { 10, 1A } | Size: 00
#_0A9BD1: db $50, $6B, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 14, 1A } | Size: 03
#_0A9BD4: db $FD, $96, $85 ; 0x0105: Wall Outer Corner ▜ | { 19, 1A } | Size: 00
#_0A9BD7: db $40, $7B, $62 ; 0x0062: Right Wall Horiz. ↕ | { 10, 1E } | Size: 03
#_0A9BDA: db $FD, $09, $06 ; 0x0106: Wall Outer Corner ▙ | { 10, 24 } | Size: 00
#_0A9BDD: db $50, $93, $01 ; 0x0001: Top Wall Horiz. ↔ | { 14, 24 } | Size: 03
#_0A9BE0: db $FD, $99, $04 ; 0x0104: Wall Outer Corner ▟ | { 19, 24 } | Size: 00
#_0A9BE3: db $64, $7B, $61 ; 0x0061: Left Wall Vertic. ↕ | { 19, 1E } | Size: 03
#_0A9BE6: db $27, $33, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 09, 0C } | Size: 0F
#_0A9BE9: db $A5, $30, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 29, 0C } | Size: 04
#_0A9BEC: db $FF, $33, $0A ; 0x010A: Wall Corner (Lower) | { 33, 0C } | Size: 00
#_0A9BEF: db $CC, $41, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 33, 10 } | Size: 01
#_0A9BF2: db $A9, $4C, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2A, 13 } | Size: 04
#_0A9BF5: db $FF, $34, $CB ; 0x010B: Wall Corner (Lower) | { 33, 13 } | Size: 00
#_0A9BF8: db $FE, $64, $CF ; 0x010F: Wall Corner (Lower) | { 26, 13 } | Size: 00
#_0A9BFB: db $99, $6D, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 26, 1B } | Size: 05
#_0A9BFE: db $FE, $6A, $CE ; 0x010E: Wall Corner (Lower) | { 26, 2B } | Size: 00
#_0A9C01: db $A8, $AD, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2A, 2B } | Size: 01
#_0A9C04: db $FE, $EA, $CA ; 0x010A: Wall Corner (Lower) | { 2E, 2B } | Size: 00
#_0A9C07: db $B8, $BD, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 2E, 2F } | Size: 01
#_0A9C0A: db $FE, $EC, $8B ; 0x010B: Wall Corner (Lower) | { 2E, 32 } | Size: 00
#_0A9C0D: db $62, $CA, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 18, 32 } | Size: 0A
#_0A9C10: db $50, $BD, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 14, 2F } | Size: 01
#_0A9C13: db $FD, $4C, $89 ; 0x0109: Wall Corner (Lower) | { 14, 32 } | Size: 00
#_0A9C16: db $FD, $4A, $C8 ; 0x0108: Wall Corner (Lower) | { 14, 2B } | Size: 00
#_0A9C19: db $60, $AD, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 18, 2B } | Size: 01
#_0A9C1C: db $FD, $CA, $CC ; 0x010C: Wall Corner (Lower) | { 1C, 2B } | Size: 00
#_0A9C1F: db $71, $6D, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 1C, 1B } | Size: 05
#_0A9C22: db $FD, $C4, $CD ; 0x010D: Wall Corner (Lower) | { 1C, 13 } | Size: 00
#_0A9C25: db $41, $4D, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 10, 13 } | Size: 05
#_0A9C28: db $FC, $D4, $CF ; 0x010F: Wall Corner (Lower) | { 0D, 13 } | Size: 00
#_0A9C2B: db $34, $6F, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 0D, 1B } | Size: 03
#_0A9C2E: db $FC, $D8, $CB ; 0x010B: Wall Corner (Lower) | { 0D, 23 } | Size: 00
#_0A9C31: db $24, $8D, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 09, 23 } | Size: 01
#_0A9C34: db $FC, $58, $C9 ; 0x0109: Wall Corner (Lower) | { 05, 23 } | Size: 00
#_0A9C37: db $14, $6F, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 1B } | Size: 03
#_0A9C3A: db $80, $2E, $22 ; 0x0022: Horizontal Rail ↔ | { 20, 0B } | Size: 02
#_0A9C3D: db $22, $30, $69 ; 0x0069: Vertical Rail ↕ | { 08, 0C } | Size: 08
#_0A9C40: db $23, $5F, $5F ; 0x005F: Long Horizontal Rail ↔ | { 08, 17 } | Size: 0F
#_0A9C43: db $B2, $5C, $22 ; 0x0022: Horizontal Rail ↔ | { 2C, 17 } | Size: 08
#_0A9C46: db $DE, $30, $69 ; 0x0069: Vertical Rail ↕ | { 37, 0C } | Size: 08
#_0A9C49: db $72, $6A, $22 ; 0x0022: Horizontal Rail ↔ | { 1C, 1A } | Size: 0A
#_0A9C4C: db $16, $68, $22 ; 0x0022: Horizontal Rail ↔ | { 05, 1A } | Size: 08
#_0A9C4F: db $14, $9C, $22 ; 0x0022: Horizontal Rail ↔ | { 05, 27 } | Size: 00
#_0A9C52: db $34, $9C, $22 ; 0x0022: Horizontal Rail ↔ | { 0D, 27 } | Size: 00
#_0A9C55: db $50, $A8, $22 ; 0x0022: Horizontal Rail ↔ | { 14, 2A } | Size: 00
#_0A9C58: db $72, $9F, $22 ; 0x0022: Horizontal Rail ↔ | { 1C, 27 } | Size: 0B
#_0A9C5B: db $A8, $8D, $69 ; 0x0069: Vertical Rail ↕ | { 2A, 23 } | Size: 01
#_0A9C5E: db $72, $AA, $22 ; 0x0022: Horizontal Rail ↔ | { 1C, 2A } | Size: 0A
#_0A9C61: db $B8, $A8, $22 ; 0x0022: Horizontal Rail ↔ | { 2E, 2A } | Size: 00
#_0A9C64: db $80, $DA, $22 ; 0x0022: Horizontal Rail ↔ | { 20, 36 } | Size: 02
#_0A9C67: db $53, $DA, $FE ; 0x0FEB: Throne/ Decoration Object | { 14, 36 } | Size: 0E
#_0A9C6A: db $BB, $DA, $FE ; 0x0FEB: Throne/ Decoration Object | { 2E, 36 } | Size: 0E
#_0A9C6D: db $80, $31, $51 ; 0x0051: Canon Hole ↔ | { 20, 0C } | Size: 01
#_0A9C70: db $80, $CD, $52 ; 0x0052: Canon Hole ↔ | { 20, 33 } | Size: 01
#_0A9C73: db $FD, $83, $31 ; 0x0131: Stairs Going Up2 (layer) | { 18, 0C } | Size: 00
#_0A9C76: db $FE, $A3, $31 ; 0x0131: Stairs Going Up2 (layer) | { 2A, 0C } | Size: 00
#_0A9C79: db $24, $8F, $F9 ; 0x0F9C: Stair | { 09, 23 } | Size: 03
#_0A9C7C: db $60, $CB, $F9 ; 0x0F9C: Stair | { 18, 32 } | Size: 03
#_0A9C7F: db $A8, $CB, $F9 ; 0x0F9C: Stair | { 2A, 32 } | Size: 03
#_0A9C82: db $BB, $93, $FA ; 0x0FAF: Pot | { 2E, 24 } | Size: 0F
#_0A9C85: db $C3, $93, $FA ; 0x0FAF: Pot | { 30, 24 } | Size: 0F
#_0A9C88: db $D3, $93, $FA ; 0x0FAF: Pot | { 34, 24 } | Size: 0F
#_0A9C8B: db $DB, $93, $FA ; 0x0FAF: Pot | { 36, 24 } | Size: 0F
#_0A9C8E: db $C9, $92, $F9 ; 0x0F99: Chest | { 32, 24 } | Size: 06
#_0A9C91: db $0B, $05, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 01 } | Size: 0D
#_0A9C94: db $44, $05, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 11, 01 } | Size: 01
#_0A9C97: db $C6, $05, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 31, 01 } | Size: 09
#_0A9C9A: db $F0, $0F, $60 ; 0x0060: Ceiling ↕ | { 3C, 03 } | Size: 03
#_0A9C9D: db $B6, $79, $00 ; 0x0000: Ceiling ↔ | { 2D, 1E } | Size: 09
#_0A9CA0: db $50, $78, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 14, 1E } | Size: 00
#_0A9CA3: db $5C, $7B, $60 ; 0x0060: Ceiling ↕ | { 17, 1E } | Size: 03
#_0A9CA6: db $50, $8A, $00 ; 0x0000: Ceiling ↔ | { 14, 22 } | Size: 02
#_0A9CA9: db $07, $BB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 01, 2E } | Size: 0F
#_0A9CAC: db $D5, $BB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 35, 2E } | Size: 07
#_0A9CAF: db $F2, $B8, $60 ; 0x0060: Ceiling ↕ | { 3C, 2E } | Size: 08
#_0A9CB2: db $FF, $FF ; Layer01
#_0A9CB4: db $15, $3E, $61 ; 0x0061: Left Wall Vertic. ↕ | { 05, 0F } | Size: 06
#_0A9CB7: db $FC, $53, $00 ; 0x0100: Wall Inner Corner ▛ | { 05, 0C } | Size: 00
#_0A9CBA: db $34, $5E, $62 ; 0x0062: Right Wall Horiz. ↕ | { 0D, 17 } | Size: 02
#_0A9CBD: db $70, $5E, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1C, 17 } | Size: 02
#_0A9CC0: db $70, $9E, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1C, 27 } | Size: 02
#_0A9CC3: db $98, $9E, $62 ; 0x0062: Right Wall Horiz. ↕ | { 26, 27 } | Size: 02
#_0A9CC6: db $98, $5E, $62 ; 0x0062: Right Wall Horiz. ↕ | { 26, 17 } | Size: 02
#_0A9CC9: db $80, $31, $51 ; 0x0051: Canon Hole ↔ | { 20, 0C } | Size: 01
#_0A9CCC: db $80, $CD, $52 ; 0x0052: Canon Hole ↔ | { 20, 33 } | Size: 01
#_0A9CCF: db $7C, $52, $88 ; 0x0088: Large Vertical Rail ↕ | { 1F, 14 } | Size: 02
#_0A9CD2: db $7C, $78, $88 ; 0x0088: Large Vertical Rail ↕ | { 1F, 1E } | Size: 00
#_0A9CD5: db $95, $52, $88 ; 0x0088: Large Vertical Rail ↕ | { 25, 14 } | Size: 06
#_0A9CD8: db $94, $8F, $88 ; 0x0088: Large Vertical Rail ↕ | { 25, 23 } | Size: 03
#_0A9CDB: db $7C, $9D, $88 ; 0x0088: Large Vertical Rail ↕ | { 1F, 27 } | Size: 01
#_0A9CDE: db $FF, $FF ; Layer02
#_0A9CE0: db $27, $35, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 09, 0D } | Size: 0D
#_0A9CE3: db $27, $4C, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 09, 13 } | Size: 0C
#_0A9CE6: db $67, $35, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 19, 0D } | Size: 0D
#_0A9CE9: db $67, $4C, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 19, 13 } | Size: 0C
#_0A9CEC: db $9F, $35, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 27, 0D } | Size: 0D
#_0A9CEF: db $9F, $4C, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 27, 13 } | Size: 0C
#_0A9CF2: db $16, $6E, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 05, 1B } | Size: 0A
#_0A9CF5: db $76, $6E, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1D, 1B } | Size: 0A
#_0A9CF8: db $53, $B1, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 14, 2C } | Size: 0D
#_0A9CFB: db $53, $C4, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 14, 31 } | Size: 0C
#_0A9CFE: db $8B, $B1, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 22, 2C } | Size: 0D
#_0A9D01: db $8B, $C4, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 22, 31 } | Size: 0C
#_0A9D04: db $76, $AC, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1D, 2B } | Size: 08
#_0A9D07: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00B9:
#_0A9D09: db $63, $1C ; Door 0x1C | Dir:03 | Pos:0C
#_0A9D0B: db $10, $00 ; Door 0x00 | Dir:00 | Pos:02
#_0A9D0D: db $71, $00 ; Door 0x00 | Dir:01 | Pos:0E
#_0A9D0F: db $02, $00 ; Door 0x00 | Dir:02 | Pos:00
#_0A9D11: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00BA:
#_0A9D13: db $E1, $00 ; Floors and Layout
#_0A9D15: db $FC, $82, $87 ; 0x0107: Wall Outer Corner ▛ | { 08, 0A } | Size: 00
#_0A9D18: db $31, $28, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0C, 0A } | Size: 04
#_0A9D1B: db $FD, $42, $85 ; 0x0105: Wall Outer Corner ▜ | { 14, 0A } | Size: 00
#_0A9D1E: db $20, $3B, $62 ; 0x0062: Right Wall Horiz. ↕ | { 08, 0E } | Size: 03
#_0A9D21: db $FC, $85, $06 ; 0x0106: Wall Outer Corner ▙ | { 08, 14 } | Size: 00
#_0A9D24: db $31, $50, $01 ; 0x0001: Top Wall Horiz. ↔ | { 0C, 14 } | Size: 04
#_0A9D27: db $FD, $45, $04 ; 0x0104: Wall Outer Corner ▟ | { 14, 14 } | Size: 00
#_0A9D2A: db $50, $3B, $61 ; 0x0061: Left Wall Vertic. ↕ | { 14, 0E } | Size: 03
#_0A9D2D: db $60, $50, $FD ; 0x0FD0: Floor Switch | { 18, 14 } | Size: 00
#_0A9D30: db $9B, $33, $FA ; 0x0FAF: Pot | { 26, 0C } | Size: 0F
#_0A9D33: db $9B, $53, $FA ; 0x0FAF: Pot | { 26, 14 } | Size: 0F
#_0A9D36: db $B3, $43, $FA ; 0x0FAF: Pot | { 2C, 10 } | Size: 0F
#_0A9D39: db $BF, $23, $FA ; 0x0FAF: Pot | { 2F, 08 } | Size: 0F
#_0A9D3C: db $BF, $63, $FA ; 0x0FAF: Pot | { 2F, 18 } | Size: 0F
#_0A9D3F: db $CB, $43, $FA ; 0x0FAF: Pot | { 32, 10 } | Size: 0F
#_0A9D42: db $E3, $33, $FA ; 0x0FAF: Pot | { 38, 0C } | Size: 0F
#_0A9D45: db $E3, $53, $FA ; 0x0FAF: Pot | { 38, 14 } | Size: 0F
#_0A9D48: db $31, $38, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 0C, 0E } | Size: 04
#_0A9D4B: db $31, $48, $00 ; 0x0000: Ceiling ↔ | { 0C, 12 } | Size: 04
#_0A9D4E: db $FF, $FF ; Layer01
#_0A9D50: db $2A, $16, $FA ; 0x0FAA: LAMP | { 0A, 05 } | Size: 0A
#_0A9D53: db $FF, $FF ; Layer02
#_0A9D55: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00BA:
#_0A9D57: db $02, $1C ; Door 0x1C | Dir:02 | Pos:00
#_0A9D59: db $00, $18 ; Door 0x18 | Dir:00 | Pos:00
#_0A9D5B: db $62, $38 ; Door 0x38 | Dir:02 | Pos:0C
#_0A9D5D: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00C9:
#_0A9D5F: db $E1, $10 ; Floors and Layout
#_0A9D61: db $FC, $A9, $00 ; 0x0100: Wall Inner Corner ▛ | { 0A, 24 } | Size: 00
#_0A9D64: db $29, $A3, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0A, 28 } | Size: 07
#_0A9D67: db $FC, $AD, $81 ; 0x0101: Wall Inner Corner ▙ | { 0A, 36 } | Size: 00
#_0A9D6A: db $38, $DB, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0E, 36 } | Size: 03
#_0A9D6D: db $FD, $3D, $85 ; 0x0105: Wall Outer Corner ▜ | { 13, 36 } | Size: 00
#_0A9D70: db $FD, $3E, $81 ; 0x0101: Wall Inner Corner ▙ | { 13, 3A } | Size: 00
#_0A9D73: db $FD, $29, $02 ; 0x0102: Wall Inner Corner ▜ | { 12, 24 } | Size: 00
#_0A9D76: db $48, $A2, $62 ; 0x0062: Right Wall Horiz. ↕ | { 12, 28 } | Size: 02
#_0A9D79: db $FD, $2B, $06 ; 0x0106: Wall Outer Corner ▙ | { 12, 2C } | Size: 00
#_0A9D7C: db $58, $B2, $01 ; 0x0001: Top Wall Horiz. ↔ | { 16, 2C } | Size: 02
#_0A9D7F: db $FD, $AB, $04 ; 0x0104: Wall Outer Corner ▟ | { 1A, 2C } | Size: 00
#_0A9D82: db $68, $A2, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1A, 28 } | Size: 02
#_0A9D85: db $FD, $A9, $00 ; 0x0100: Wall Inner Corner ▛ | { 1A, 24 } | Size: 00
#_0A9D88: db $FE, $29, $02 ; 0x0102: Wall Inner Corner ▜ | { 22, 24 } | Size: 00
#_0A9D8B: db $88, $A2, $62 ; 0x0062: Right Wall Horiz. ↕ | { 22, 28 } | Size: 02
#_0A9D8E: db $FE, $2B, $06 ; 0x0106: Wall Outer Corner ▙ | { 22, 2C } | Size: 00
#_0A9D91: db $98, $B2, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 2C } | Size: 02
#_0A9D94: db $FE, $AB, $04 ; 0x0104: Wall Outer Corner ▟ | { 2A, 2C } | Size: 00
#_0A9D97: db $A8, $A2, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 28 } | Size: 02
#_0A9D9A: db $FE, $A9, $00 ; 0x0100: Wall Inner Corner ▛ | { 2A, 24 } | Size: 00
#_0A9D9D: db $FF, $29, $02 ; 0x0102: Wall Inner Corner ▜ | { 32, 24 } | Size: 00
#_0A9DA0: db $C9, $A3, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 28 } | Size: 07
#_0A9DA3: db $FF, $2D, $83 ; 0x0103: Wall Inner Corner ▟ | { 32, 36 } | Size: 00
#_0A9DA6: db $B0, $DB, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2C, 36 } | Size: 03
#_0A9DA9: db $FE, $9D, $87 ; 0x0107: Wall Outer Corner ▛ | { 29, 36 } | Size: 00
#_0A9DAC: db $FE, $9E, $83 ; 0x0103: Wall Inner Corner ▟ | { 29, 3A } | Size: 00
#_0A9DAF: db $FC, $51, $C8 ; 0x0108: Wall Corner (Lower) | { 05, 07 } | Size: 00
#_0A9DB2: db $26, $1C, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 09, 07 } | Size: 08
#_0A9DB5: db $15, $2D, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 0B } | Size: 05
#_0A9DB8: db $34, $5A, $08 ; 0x0008: Bottom Wall Pit ↔ | { 0D, 16 } | Size: 02
#_0A9DBB: db $60, $15, $55 ; 0x0055: Wall Torches ↔ | { 18, 05 } | Size: 01
#_0A9DBE: db $6F, $1E, $69 ; 0x0069: Vertical Rail ↕ | { 1B, 07 } | Size: 0E
#_0A9DC1: db $6C, $59, $69 ; 0x0069: Vertical Rail ↕ | { 1B, 16 } | Size: 01
#_0A9DC4: db $93, $1E, $69 ; 0x0069: Vertical Rail ↕ | { 24, 07 } | Size: 0E
#_0A9DC7: db $90, $59, $69 ; 0x0069: Vertical Rail ↕ | { 24, 16 } | Size: 01
#_0A9DCA: db $96, $1C, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 25, 07 } | Size: 08
#_0A9DCD: db $FF, $71, $CA ; 0x010A: Wall Corner (Lower) | { 37, 07 } | Size: 00
#_0A9DD0: db $DD, $2D, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 0B } | Size: 05
#_0A9DD3: db $FF, $75, $CB ; 0x010B: Wall Corner (Lower) | { 37, 17 } | Size: 00
#_0A9DD6: db $96, $5C, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 25, 17 } | Size: 08
#_0A9DD9: db $26, $5C, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 09, 17 } | Size: 08
#_0A9DDC: db $FC, $55, $C9 ; 0x0109: Wall Corner (Lower) | { 05, 17 } | Size: 00
#_0A9DDF: db $2B, $2A, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 0A, 0A } | Size: 0E
#_0A9DE2: db $4D, $2E, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 13, 0B } | Size: 06
#_0A9DE5: db $97, $2A, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 25, 0A } | Size: 0E
#_0A9DE8: db $C8, $2A, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 32, 0A } | Size: 02
#_0A9DEB: db $26, $28, $07 ; 0x0007: Top Wall Pit ↔ | { 09, 0A } | Size: 08
#_0A9DEE: db $FC, $82, $98 ; 0x0118: Pit Edge Corner | { 08, 0A } | Size: 00
#_0A9DF1: db $21, $30, $67 ; 0x0067: Left Wall Pit ↕ | { 08, 0C } | Size: 04
#_0A9DF4: db $26, $58, $08 ; 0x0008: Bottom Wall Pit ↔ | { 09, 16 } | Size: 08
#_0A9DF7: db $FC, $85, $99 ; 0x0119: Pit Edge Corner | { 08, 16 } | Size: 00
#_0A9DFA: db $96, $28, $07 ; 0x0007: Top Wall Pit ↔ | { 25, 0A } | Size: 08
#_0A9DFD: db $FF, $62, $9A ; 0x011A: Pit Edge Corner | { 36, 0A } | Size: 00
#_0A9E00: db $D9, $30, $68 ; 0x0068: Right Wall Pit ↕ | { 36, 0C } | Size: 04
#_0A9E03: db $96, $58, $08 ; 0x0008: Bottom Wall Pit ↔ | { 25, 16 } | Size: 08
#_0A9E06: db $FF, $65, $9B ; 0x011B: Pit Edge Corner | { 36, 16 } | Size: 00
#_0A9E09: db $38, $58, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 0E, 16 } | Size: 00
#_0A9E0C: db $38, $6A, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0E, 1A } | Size: 02
#_0A9E0F: db $B8, $6A, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2E, 1A } | Size: 02
#_0A9E12: db $34, $57, $29 ; 0x0029: Pit Edge ↔ | { 0D, 15 } | Size: 03
#_0A9E15: db $34, $56, $69 ; 0x0069: Vertical Rail ↕ | { 0D, 15 } | Size: 02
#_0A9E18: db $48, $56, $69 ; 0x0069: Vertical Rail ↕ | { 12, 15 } | Size: 02
#_0A9E1B: db $B4, $57, $29 ; 0x0029: Pit Edge ↔ | { 2D, 15 } | Size: 03
#_0A9E1E: db $B4, $56, $69 ; 0x0069: Vertical Rail ↕ | { 2D, 15 } | Size: 02
#_0A9E21: db $C8, $56, $69 ; 0x0069: Vertical Rail ↕ | { 32, 15 } | Size: 02
#_0A9E24: db $B8, $58, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 2E, 16 } | Size: 00
#_0A9E27: db $78, $48, $FD ; 0x0FD0: Floor Switch | { 1E, 12 } | Size: 00
#_0A9E2A: db $5B, $BE, $FE ; 0x0FEB: Throne/ Decoration Object | { 16, 2F } | Size: 0E
#_0A9E2D: db $9B, $BE, $FE ; 0x0FEB: Throne/ Decoration Object | { 26, 2F } | Size: 0E
#_0A9E30: db $3F, $B3, $FA ; 0x0FAF: Pot | { 0F, 2C } | Size: 0F
#_0A9E33: db $7B, $B3, $FA ; 0x0FAF: Pot | { 1E, 2C } | Size: 0F
#_0A9E36: db $BF, $B3, $FA ; 0x0FAF: Pot | { 2F, 2C } | Size: 0F
#_0A9E39: db $FC, $39, $72 ; 0x0132: Stairs Going Up (layer) | { 03, 25 } | Size: 00
#_0A9E3C: db $09, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 24 } | Size: 07
#_0A9E3F: db $09, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 34 } | Size: 06
#_0A9E42: db $1E, $E8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 07, 3A } | Size: 08
#_0A9E45: db $B6, $E8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2D, 3A } | Size: 08
#_0A9E48: db $D9, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 24 } | Size: 07
#_0A9E4B: db $D9, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 34 } | Size: 06
#_0A9E4E: db $58, $91, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 24 } | Size: 01
#_0A9E51: db $98, $91, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 26, 24 } | Size: 01
#_0A9E54: db $FF, $FF ; Layer01
#_0A9E56: db $FF, $FF ; Layer02
#_0A9E58: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00C9:
#_0A9E5A: db $70, $18 ; Door 0x18 | Dir:00 | Pos:0E
#_0A9E5C: db $10, $18 ; Door 0x18 | Dir:00 | Pos:02
#_0A9E5E: db $60, $00 ; Door 0x00 | Dir:00 | Pos:0C
#_0A9E60: db $80, $00 ; Door 0x00 | Dir:00 | Pos:10
#_0A9E62: db $71, $0A ; Door 0x0A | Dir:01 | Pos:0E
#_0A9E64: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0089:
#_0A9E66: db $E4, $1C ; Floors and Layout
#_0A9E68: db $57, $37, $22 ; 0x0022: Horizontal Rail ↔ | { 15, 0D } | Size: 0F
#_0A9E6B: db $98, $35, $22 ; 0x0022: Horizontal Rail ↔ | { 26, 0D } | Size: 01
#_0A9E6E: db $66, $6E, $22 ; 0x0022: Horizontal Rail ↔ | { 19, 1B } | Size: 0A
#_0A9E71: db $98, $49, $22 ; 0x0022: Horizontal Rail ↔ | { 26, 12 } | Size: 01
#_0A9E74: db $5A, $42, $FC ; 0x0FCA: Warp Tile | { 16, 10 } | Size: 0A
#_0A9E77: db $54, $49, $22 ; 0x0022: Horizontal Rail ↔ | { 15, 12 } | Size: 01
#_0A9E7A: db $65, $4A, $69 ; 0x0069: Vertical Rail ↕ | { 19, 12 } | Size: 06
#_0A9E7D: db $99, $4A, $69 ; 0x0069: Vertical Rail ↕ | { 26, 12 } | Size: 06
#_0A9E80: db $A2, $42, $FC ; 0x0FCA: Warp Tile | { 28, 10 } | Size: 0A
#_0A9E83: db $54, $36, $69 ; 0x0069: Vertical Rail ↕ | { 15, 0D } | Size: 02
#_0A9E86: db $A8, $36, $69 ; 0x0069: Vertical Rail ↕ | { 2A, 0D } | Size: 02
#_0A9E89: db $54, $4D, $07 ; 0x0007: Top Wall Pit ↔ | { 15, 13 } | Size: 01
#_0A9E8C: db $9C, $4D, $07 ; 0x0007: Top Wall Pit ↔ | { 27, 13 } | Size: 01
#_0A9E8F: db $65, $72, $07 ; 0x0007: Top Wall Pit ↔ | { 19, 1C } | Size: 06
#_0A9E92: db $03, $7B, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 00, 1E } | Size: 0F
#_0A9E95: db $43, $7B, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 10, 1E } | Size: 0F
#_0A9E98: db $83, $7B, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 20, 1E } | Size: 0F
#_0A9E9B: db $C3, $7B, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 30, 1E } | Size: 0F
#_0A9E9E: db $03, $03, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 00, 00 } | Size: 0F
#_0A9EA1: db $35, $03, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 0D, 00 } | Size: 07
#_0A9EA4: db $57, $02, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 15, 00 } | Size: 0E
#_0A9EA7: db $57, $24, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 15, 09 } | Size: 0C
#_0A9EAA: db $97, $02, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 25, 00 } | Size: 0E
#_0A9EAD: db $97, $24, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 25, 09 } | Size: 0C
#_0A9EB0: db $D2, $03, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 34, 00 } | Size: 0B
#_0A9EB3: db $AF, $37, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 2B, 0D } | Size: 0F
#_0A9EB6: db $9F, $56, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 27, 15 } | Size: 0E
#_0A9EB9: db $D2, $43, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 34, 10 } | Size: 0B
#_0A9EBC: db $03, $43, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 00, 10 } | Size: 0F
#_0A9EBF: db $35, $43, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 0D, 10 } | Size: 07
#_0A9EC2: db $54, $56, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 15, 15 } | Size: 02
#_0A9EC5: db $FF, $FF ; Layer01
#_0A9EC7: db $FF, $FF ; Layer02
#_0A9EC9: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0089:
#_0A9ECB: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0072:
#_0A9ECD: db $51, $10 ; Floors and Layout
#_0A9ECF: db $FD, $61, $C0 ; 0x0100: Wall Inner Corner ▛ | { 16, 07 } | Size: 00
#_0A9ED2: db $69, $1E, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1A, 07 } | Size: 06
#_0A9ED5: db $FE, $61, $C2 ; 0x0102: Wall Inner Corner ▜ | { 26, 07 } | Size: 00
#_0A9ED8: db $9A, $2C, $62 ; 0x0062: Right Wall Horiz. ↕ | { 26, 0B } | Size: 08
#_0A9EDB: db $5A, $2C, $61 ; 0x0061: Left Wall Vertic. ↕ | { 16, 0B } | Size: 08
#_0A9EDE: db $FD, $66, $81 ; 0x0101: Wall Inner Corner ▙ | { 16, 1A } | Size: 00
#_0A9EE1: db $FE, $66, $83 ; 0x0103: Wall Inner Corner ▟ | { 26, 1A } | Size: 00
#_0A9EE4: db $FD, $E1, $F8 ; 0x0138: Spiral Staircase Up | { 1E, 07 } | Size: 00
#_0A9EE7: db $5C, $44, $7F ; 0x007F: Left Wall Torches ↕ | { 17, 11 } | Size: 00
#_0A9EEA: db $9C, $44, $80 ; 0x0080: Right Wall Torches ↕ | { 27, 11 } | Size: 00
#_0A9EED: db $79, $4A, $F9 ; 0x0F99: Chest | { 1E, 12 } | Size: 06
#_0A9EF0: db $80, $44, $38 ; 0x0038: Statue ↔ | { 20, 11 } | Size: 00
#_0A9EF3: db $FE, $69, $02 ; 0x0102: Wall Inner Corner ▜ | { 26, 24 } | Size: 00
#_0A9EF6: db $FE, $6A, $06 ; 0x0106: Wall Outer Corner ▙ | { 26, 28 } | Size: 00
#_0A9EF9: db $A8, $A1, $01 ; 0x0001: Top Wall Horiz. ↔ | { 2A, 28 } | Size: 01
#_0A9EFC: db $FE, $CA, $04 ; 0x0104: Wall Outer Corner ▟ | { 2C, 28 } | Size: 00
#_0A9EFF: db $B3, $03, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2C, 00 } | Size: 0F
#_0A9F02: db $B1, $79, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2C, 1E } | Size: 05
#_0A9F05: db $FC, $5A, $C8 ; 0x0108: Wall Corner (Lower) | { 05, 2B } | Size: 00
#_0A9F08: db $27, $AF, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 09, 2B } | Size: 0F
#_0A9F0B: db $A4, $AE, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 29, 2B } | Size: 02
#_0A9F0E: db $BF, $03, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 2F, 00 } | Size: 0F
#_0A9F11: db $BD, $81, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 2F, 20 } | Size: 05
#_0A9F14: db $FE, $FA, $CC ; 0x010C: Wall Corner (Lower) | { 2F, 2B } | Size: 00
#_0A9F17: db $14, $BD, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 2F } | Size: 01
#_0A9F1A: db $FC, $5C, $89 ; 0x0109: Wall Corner (Lower) | { 05, 32 } | Size: 00
#_0A9F1D: db $24, $CB, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 09, 32 } | Size: 03
#_0A9F20: db $FD, $0C, $8D ; 0x010D: Wall Corner (Lower) | { 10, 32 } | Size: 00
#_0A9F23: db $40, $DA, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 10, 36 } | Size: 02
#_0A9F26: db $FD, $0E, $CC ; 0x010C: Wall Corner (Lower) | { 10, 3B } | Size: 00
#_0A9F29: db $30, $ED, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0C, 3B } | Size: 01
#_0A9F2C: db $18, $E1, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 06, 38 } | Size: 01
#_0A9F2F: db $24, $F8, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 09, 3E } | Size: 00
#_0A9F32: db $FC, $9E, $C8 ; 0x0108: Wall Corner (Lower) | { 09, 3B } | Size: 00
#_0A9F35: db $08, $EB, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 3A } | Size: 03
#_0A9F38: db $14, $D8, $22 ; 0x0022: Horizontal Rail ↔ | { 05, 36 } | Size: 00
#_0A9F3B: db $21, $E8, $22 ; 0x0022: Horizontal Rail ↔ | { 08, 3A } | Size: 04
#_0A9F3E: db $20, $EA, $69 ; 0x0069: Vertical Rail ↕ | { 08, 3A } | Size: 02
#_0A9F41: db $14, $A8, $22 ; 0x0022: Horizontal Rail ↔ | { 05, 2A } | Size: 00
#_0A9F44: db $84, $AA, $22 ; 0x0022: Horizontal Rail ↔ | { 21, 2A } | Size: 02
#_0A9F47: db $C2, $E0, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 30, 38 } | Size: 08
#_0A9F4A: db $FE, $CE, $07 ; 0x0107: Wall Outer Corner ▛ | { 2C, 38 } | Size: 00
#_0A9F4D: db $B0, $F2, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2C, 3C } | Size: 02
#_0A9F50: db $B2, $D5, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2C, 35 } | Size: 09
#_0A9F53: db $A4, $E3, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 29, 38 } | Size: 03
#_0A9F56: db $FE, $9D, $4F ; 0x010F: Wall Corner (Lower) | { 29, 35 } | Size: 00
#_0A9F59: db $FD, $8A, $F1 ; 0x0131: Stairs Going Up2 (layer) | { 18, 2B } | Size: 00
#_0A9F5C: db $0B, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 0F
#_0A9F5F: db $0B, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 14 } | Size: 0E
#_0A9F62: db $48, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 04 } | Size: 03
#_0A9F65: db $48, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 14 } | Size: 02
#_0A9F68: db $5B, $0C, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 03 } | Size: 0C
#_0A9F6B: db $91, $0C, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 24, 03 } | Size: 04
#_0A9F6E: db $AB, $1C, $60 ; 0x0060: Ceiling ↕ | { 2A, 07 } | Size: 0C
#_0A9F71: db $A8, $92, $60 ; 0x0060: Ceiling ↕ | { 2A, 24 } | Size: 02
#_0A9F74: db $C1, $F3, $00 ; 0x0000: Ceiling ↔ | { 30, 3C } | Size: 07
#_0A9F77: db $FF, $FF ; Layer01
#_0A9F79: db $CB, $03, $67 ; 0x0067: Left Wall Pit ↕ | { 32, 00 } | Size: 0F
#_0A9F7C: db $C9, $82, $67 ; 0x0067: Left Wall Pit ↕ | { 32, 20 } | Size: 06
#_0A9F7F: db $CA, $B8, $FA ; 0x0FA2: Pit Wall Corner | { 32, 2E } | Size: 08
#_0A9F82: db $89, $BB, $07 ; 0x0007: Top Wall Pit ↔ | { 22, 2E } | Size: 07
#_0A9F85: db $AA, $D2, $08 ; 0x0008: Bottom Wall Pit ↔ | { 2A, 34 } | Size: 0A
#_0A9F88: db $89, $D2, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 22, 34 } | Size: 06
#_0A9F8B: db $A1, $D8, $68 ; 0x0068: Right Wall Pit ↕ | { 28, 36 } | Size: 04
#_0A9F8E: db $A1, $D1, $FA ; 0x0FA5: Pit Wall Corner | { 28, 34 } | Size: 05
#_0A9F91: db $84, $B8, $69 ; 0x0069: Vertical Rail ↕ | { 21, 2E } | Size: 00
#_0A9F94: db $61, $EE, $22 ; 0x0022: Horizontal Rail ↔ | { 18, 3B } | Size: 06
#_0A9F97: db $62, $F0, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 18, 3C } | Size: 08
#_0A9F9A: db $61, $F0, $07 ; 0x0007: Top Wall Pit ↔ | { 18, 3C } | Size: 04
#_0A9F9D: db $60, $ED, $69 ; 0x0069: Vertical Rail ↕ | { 18, 3B } | Size: 01
#_0A9FA0: db $38, $FA, $07 ; 0x0007: Top Wall Pit ↔ | { 0E, 3E } | Size: 02
#_0A9FA3: db $4C, $ED, $69 ; 0x0069: Vertical Rail ↕ | { 13, 3B } | Size: 01
#_0A9FA6: db $FC, $CF, $98 ; 0x0118: Pit Edge Corner | { 0C, 3E } | Size: 00
#_0A9FA9: db $D2, $03, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 34, 00 } | Size: 0B
#_0A9FAC: db $D2, $43, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 34, 10 } | Size: 0B
#_0A9FAF: db $D2, $83, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 34, 20 } | Size: 0B
#_0A9FB2: db $C3, $C0, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 30, 30 } | Size: 0C
#_0A9FB5: db $8B, $C0, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 22, 30 } | Size: 0C
#_0A9FB8: db $FF, $FF ; Layer02
#_0A9FBA: db $17, $B2, $D7 ; 0x00D7: overlay tile? ↔ ↕ | { 05, 2C } | Size: 0E
#_0A9FBD: db $47, $B3, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 11, 2C } | Size: 0F
#_0A9FC0: db $2B, $F0, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0A, 3C } | Size: 0C
#_0A9FC3: db $6B, $F0, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1A, 3C } | Size: 0C
#_0A9FC6: db $87, $B2, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 21, 2C } | Size: 0E
#_0A9FC9: db $82, $C3, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 20, 30 } | Size: 0B
#_0A9FCC: db $C3, $03, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 30, 00 } | Size: 0F
#_0A9FCF: db $C3, $43, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 30, 10 } | Size: 0F
#_0A9FD2: db $C3, $83, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 30, 20 } | Size: 0F
#_0A9FD5: db $C3, $C1, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 30, 30 } | Size: 0D
#_0A9FD8: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0072:
#_0A9FDA: db $70, $1C ; Door 0x1C | Dir:00 | Pos:0E
#_0A9FDC: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0082:
#_0A9FDE: db $51, $1C ; Floors and Layout
#_0A9FE0: db $18, $01, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 06, 00 } | Size: 01
#_0A9FE3: db $01, $38, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 00, 0E } | Size: 04
#_0A9FE6: db $09, $00, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 00 } | Size: 04
#_0A9FE9: db $FC, $22, $84 ; 0x0104: Wall Outer Corner ▟ | { 02, 0A } | Size: 00
#_0A9FEC: db $00, $29, $01 ; 0x0001: Top Wall Horiz. ↔ | { 00, 0A } | Size: 01
#_0A9FEF: db $26, $00, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 09, 00 } | Size: 08
#_0A9FF2: db $FC, $94, $4C ; 0x010C: Wall Corner (Lower) | { 09, 11 } | Size: 00
#_0A9FF5: db $00, $41, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 00, 10 } | Size: 01
#_0A9FF8: db $FC, $24, $05 ; 0x0105: Wall Outer Corner ▜ | { 02, 10 } | Size: 00
#_0A9FFB: db $FC, $54, $48 ; 0x0108: Wall Corner (Lower) | { 05, 11 } | Size: 00
#_0A9FFE: db $FC, $2A, $84 ; 0x0104: Wall Outer Corner ▟ | { 02, 2A } | Size: 00
#_0AA001: db $00, $A9, $01 ; 0x0001: Top Wall Horiz. ↔ | { 00, 2A } | Size: 01
#_0AA004: db $16, $57, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 15 } | Size: 0B
#_0AA007: db $01, $C0, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 00, 30 } | Size: 04
#_0AA00A: db $23, $01, $69 ; 0x0069: Vertical Rail ↕ | { 08, 00 } | Size: 0D
#_0AA00D: db $14, $40, $22 ; 0x0022: Horizontal Rail ↔ | { 05, 10 } | Size: 00
#_0AA010: db $00, $EC, $00 ; 0x0000: Ceiling ↔ | { 00, 3B } | Size: 00
#_0AA013: db $00, $F4, $00 ; 0x0000: Ceiling ↔ | { 00, 3D } | Size: 00
#_0AA016: db $00, $B6, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 00, 2D } | Size: 02
#_0AA019: db $03, $DF, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 00, 37 } | Size: 0F
#_0AA01C: db $FC, $5B, $4C ; 0x010C: Wall Corner (Lower) | { 05, 2D } | Size: 00
#_0AA01F: db $7A, $DF, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1E, 37 } | Size: 0B
#_0AA022: db $D0, $D9, $62 ; 0x0062: Right Wall Horiz. ↕ | { 34, 36 } | Size: 01
#_0AA025: db $FF, $45, $02 ; 0x0102: Wall Inner Corner ▜ | { 34, 14 } | Size: 00
#_0AA028: db $FF, $4D, $C3 ; 0x0103: Wall Inner Corner ▟ | { 34, 37 } | Size: 00
#_0AA02B: db $D3, $63, $62 ; 0x0062: Right Wall Horiz. ↕ | { 34, 18 } | Size: 0F
#_0AA02E: db $C0, $52, $01 ; 0x0001: Top Wall Horiz. ↔ | { 30, 14 } | Size: 02
#_0AA031: db $FE, $C5, $06 ; 0x0106: Wall Outer Corner ▙ | { 2C, 14 } | Size: 00
#_0AA034: db $B2, $02, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2C, 00 } | Size: 0A
#_0AA037: db $A6, $03, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 29, 00 } | Size: 0B
#_0AA03A: db $FE, $95, $CE ; 0x010E: Wall Corner (Lower) | { 29, 17 } | Size: 00
#_0AA03D: db $B4, $5D, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2D, 17 } | Size: 01
#_0AA040: db $FF, $15, $CA ; 0x010A: Wall Corner (Lower) | { 31, 17 } | Size: 00
#_0AA043: db $C7, $6C, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 31, 1B } | Size: 0C
#_0AA046: db $82, $D0, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 20, 34 } | Size: 08
#_0AA049: db $FF, $1D, $0B ; 0x010B: Wall Corner (Lower) | { 31, 34 } | Size: 00
#_0AA04C: db $03, $D3, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 00, 34 } | Size: 0F
#_0AA04F: db $E0, $00, $60 ; 0x0060: Ceiling ↕ | { 38, 00 } | Size: 00
#_0AA052: db $E8, $00, $60 ; 0x0060: Ceiling ↕ | { 3A, 00 } | Size: 00
#_0AA055: db $F0, $00, $60 ; 0x0060: Ceiling ↕ | { 3C, 00 } | Size: 00
#_0AA058: db $10, $E3, $56 ; 0x0056: Wall Torches ↔ | { 04, 38 } | Size: 03
#_0AA05B: db $C1, $03, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 30, 00 } | Size: 07
#_0AA05E: db $C1, $40, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 30, 10 } | Size: 04
#_0AA061: db $FF, $FF ; Layer01
#_0AA063: db $30, $13, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 0C, 04 } | Size: 03
#_0AA066: db $21, $53, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 08, 14 } | Size: 07
#_0AA069: db $42, $68, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 10, 1A } | Size: 08
#_0AA06C: db $80, $68, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 20, 1A } | Size: 00
#_0AA06F: db $42, $73, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 10, 1C } | Size: 0B
#_0AA072: db $29, $92, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 0A, 24 } | Size: 06
#_0AA075: db $72, $9E, $C3 ; 0x00C3: Bg2 Medium Overlay ↔ ↕ | { 1C, 27 } | Size: 0A
#_0AA078: db $4B, $B0, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 12, 2C } | Size: 0C
#_0AA07B: db $63, $01, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 18, 00 } | Size: 0D
#_0AA07E: db $90, $13, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 24, 04 } | Size: 03
#_0AA081: db $83, $70, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 20, 1C } | Size: 0C
#_0AA084: db $83, $74, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 20, 1D } | Size: 0C
#_0AA087: db $B4, $87, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 2D, 21 } | Size: 03
#_0AA08A: db $B4, $BC, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 2D, 2F } | Size: 00
#_0AA08D: db $90, $52, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 24, 14 } | Size: 02
#_0AA090: db $31, $01, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 0C, 00 } | Size: 05
#_0AA093: db $32, $01, $67 ; 0x0067: Left Wall Pit ↕ | { 0C, 00 } | Size: 09
#_0AA096: db $32, $50, $FA ; 0x0FA2: Pit Wall Corner | { 0C, 14 } | Size: 08
#_0AA099: db $28, $50, $07 ; 0x0007: Top Wall Pit ↔ | { 0A, 14 } | Size: 00
#_0AA09C: db $FC, $85, $18 ; 0x0118: Pit Edge Corner | { 08, 14 } | Size: 00
#_0AA09F: db $23, $58, $67 ; 0x0067: Left Wall Pit ↕ | { 08, 16 } | Size: 0C
#_0AA0A2: db $A3, $00, $68 ; 0x0068: Right Wall Pit ↕ | { 28, 00 } | Size: 0C
#_0AA0A5: db $A0, $69, $FA ; 0x0FA4: Pit Wall Corner | { 28, 1A } | Size: 01
#_0AA0A8: db $A8, $6A, $07 ; 0x0007: Top Wall Pit ↔ | { 2A, 1A } | Size: 02
#_0AA0AB: db $FF, $06, $9A ; 0x011A: Pit Edge Corner | { 30, 1A } | Size: 00
#_0AA0AE: db $C2, $73, $68 ; 0x0068: Right Wall Pit ↕ | { 30, 1C } | Size: 0B
#_0AA0B1: db $FF, $0C, $DB ; 0x011B: Pit Edge Corner | { 30, 33 } | Size: 00
#_0AA0B4: db $B0, $CD, $08 ; 0x0008: Bottom Wall Pit ↔ | { 2C, 33 } | Size: 01
#_0AA0B7: db $61, $00, $69 ; 0x0069: Vertical Rail ↕ | { 18, 00 } | Size: 04
#_0AA0BA: db $4D, $00, $69 ; 0x0069: Vertical Rail ↕ | { 13, 00 } | Size: 04
#_0AA0BD: db $40, $38, $69 ; 0x0069: Vertical Rail ↕ | { 10, 0E } | Size: 00
#_0AA0C0: db $8C, $38, $69 ; 0x0069: Vertical Rail ↕ | { 23, 0E } | Size: 00
#_0AA0C3: db $41, $61, $07 ; 0x0007: Top Wall Pit ↔ | { 10, 18 } | Size: 05
#_0AA0C6: db $80, $61, $07 ; 0x0007: Top Wall Pit ↔ | { 20, 18 } | Size: 01
#_0AA0C9: db $6D, $9C, $07 ; 0x0007: Top Wall Pit ↔ | { 1B, 27 } | Size: 04
#_0AA0CC: db $6E, $63, $69 ; 0x0069: Vertical Rail ↕ | { 1B, 18 } | Size: 0B
#_0AA0CF: db $7D, $62, $69 ; 0x0069: Vertical Rail ↕ | { 1F, 18 } | Size: 06
#_0AA0D2: db $9B, $93, $FA ; 0x0FAF: Pot | { 26, 24 } | Size: 0F
#_0AA0D5: db $67, $2B, $FA ; 0x0FAF: Pot | { 19, 0A } | Size: 0F
#_0AA0D8: db $67, $53, $FA ; 0x0FAF: Pot | { 19, 14 } | Size: 0F
#_0AA0DB: db $FD, $63, $DD ; 0x011D: Statue | { 16, 0F } | Size: 00
#_0AA0DE: db $FD, $C3, $DD ; 0x011D: Statue | { 1C, 0F } | Size: 00
#_0AA0E1: db $B0, $C1, $69 ; 0x0069: Vertical Rail ↕ | { 2C, 30 } | Size: 01
#_0AA0E4: db $21, $C2, $5F ; 0x005F: Long Horizontal Rail ↔ | { 08, 30 } | Size: 06
#_0AA0E7: db $B0, $86, $69 ; 0x0069: Vertical Rail ↕ | { 2C, 21 } | Size: 02
#_0AA0EA: db $FF, $FF ; Layer02
#_0AA0EC: db $2B, $03, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0A, 00 } | Size: 0F
#_0AA0EF: db $6B, $03, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1A, 00 } | Size: 0F
#_0AA0F2: db $2B, $43, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0A, 10 } | Size: 0F
#_0AA0F5: db $18, $4B, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 06, 12 } | Size: 03
#_0AA0F8: db $1B, $83, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 06, 20 } | Size: 0F
#_0AA0FB: db $03, $B9, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 00, 2E } | Size: 0D
#_0AA0FE: db $6B, $43, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1A, 10 } | Size: 0F
#_0AA101: db $5B, $83, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 16, 20 } | Size: 0F
#_0AA104: db $99, $83, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 26, 20 } | Size: 07
#_0AA107: db $43, $BD, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 10, 2F } | Size: 0D
#_0AA10A: db $83, $BD, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 20, 2F } | Size: 0D
#_0AA10D: db $03, $CC, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 00, 33 } | Size: 0C
#_0AA110: db $A0, $03, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 28, 00 } | Size: 03
#_0AA113: db $A0, $43, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 28, 10 } | Size: 03
#_0AA116: db $B1, $63, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2C, 18 } | Size: 07
#_0AA119: db $B1, $9F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 2C, 27 } | Size: 07
#_0AA11C: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0082:
#_0AA11E: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0081:
#_0AA120: db $51, $1C ; Floors and Layout
#_0AA122: db $FC, $61, $00 ; 0x0100: Wall Inner Corner ▛ | { 06, 04 } | Size: 00
#_0AA125: db $1B, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 08 } | Size: 0F
#_0AA128: db $18, $9A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 26 } | Size: 02
#_0AA12B: db $FC, $6A, $81 ; 0x0101: Wall Inner Corner ▙ | { 06, 2A } | Size: 00
#_0AA12E: db $2B, $AB, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0A, 2A } | Size: 0F
#_0AA131: db $A0, $AA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 28, 2A } | Size: 02
#_0AA134: db $FE, $CA, $85 ; 0x0105: Wall Outer Corner ▜ | { 2C, 2A } | Size: 00
#_0AA137: db $B1, $B9, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2C, 2E } | Size: 05
#_0AA13A: db $FE, $CD, $C1 ; 0x0101: Wall Inner Corner ▙ | { 2C, 37 } | Size: 00
#_0AA13D: db $E1, $C0, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 38, 30 } | Size: 04
#_0AA140: db $C2, $DC, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 30, 37 } | Size: 08
#_0AA143: db $FD, $61, $02 ; 0x0102: Wall Inner Corner ▜ | { 16, 04 } | Size: 00
#_0AA146: db $58, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 16, 08 } | Size: 03
#_0AA149: db $FD, $63, $86 ; 0x0106: Wall Outer Corner ▙ | { 16, 0E } | Size: 00
#_0AA14C: db $68, $3A, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1A, 0E } | Size: 02
#_0AA14F: db $FD, $E3, $84 ; 0x0104: Wall Outer Corner ▟ | { 1E, 0E } | Size: 00
#_0AA152: db $FD, $E2, $80 ; 0x0100: Wall Inner Corner ▛ | { 1E, 0A } | Size: 00
#_0AA155: db $8B, $2B, $01 ; 0x0001: Top Wall Horiz. ↔ | { 22, 0A } | Size: 0F
#_0AA158: db $E1, $38, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 38, 0E } | Size: 04
#_0AA15B: db $F8, $41, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 3E, 10 } | Size: 01
#_0AA15E: db $FF, $A4, $07 ; 0x0107: Wall Outer Corner ▛ | { 3A, 10 } | Size: 00
#_0AA161: db $FF, $AA, $86 ; 0x0106: Wall Outer Corner ▙ | { 3A, 2A } | Size: 00
#_0AA164: db $F8, $A9, $01 ; 0x0001: Top Wall Horiz. ↔ | { 3E, 2A } | Size: 01
#_0AA167: db $FC, $91, $C8 ; 0x0108: Wall Corner (Lower) | { 09, 07 } | Size: 00
#_0AA16A: db $34, $1E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0D, 07 } | Size: 02
#_0AA16D: db $FD, $31, $CA ; 0x010A: Wall Corner (Lower) | { 13, 07 } | Size: 00
#_0AA170: db $4C, $2E, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 13, 0B } | Size: 02
#_0AA173: db $5A, $45, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 16, 11 } | Size: 09
#_0AA176: db $FD, $34, $4E ; 0x010E: Wall Corner (Lower) | { 13, 11 } | Size: 00
#_0AA179: db $FE, $74, $90 ; 0x0110: Wall S (Lower) | { 27, 12 } | Size: 00
#_0AA17C: db $C0, $47, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 30, 11 } | Size: 03
#_0AA17F: db $FF, $04, $92 ; 0x0112: Wall S (Lower) | { 30, 12 } | Size: 00
#_0AA182: db $FF, $74, $4A ; 0x010A: Wall Corner (Lower) | { 37, 11 } | Size: 00
#_0AA185: db $DE, $57, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 15 } | Size: 0B
#_0AA188: db $E8, $B6, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 3A, 2D } | Size: 02
#_0AA18B: db $FF, $7B, $4E ; 0x010E: Wall Corner (Lower) | { 37, 2D } | Size: 00
#_0AA18E: db $C9, $D2, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 32, 34 } | Size: 06
#_0AA191: db $FE, $F8, $8D ; 0x010D: Wall Corner (Lower) | { 2F, 22 } | Size: 00
#_0AA194: db $FE, $78, $8F ; 0x010F: Wall Corner (Lower) | { 27, 22 } | Size: 00
#_0AA197: db $FD, $38, $8D ; 0x010D: Wall Corner (Lower) | { 13, 22 } | Size: 00
#_0AA19A: db $26, $2F, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 09, 0B } | Size: 0B
#_0AA19D: db $FC, $98, $89 ; 0x0109: Wall Corner (Lower) | { 09, 22 } | Size: 00
#_0AA1A0: db $34, $8A, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0D, 22 } | Size: 02
#_0AA1A3: db $BA, $44, $6D ; 0x006D: Rail Wall Right ↕ | { 2E, 11 } | Size: 08
#_0AA1A6: db $AA, $44, $6C ; 0x006C: Rail Wall Left ↕ | { 2A, 11 } | Size: 08
#_0AA1A9: db $BD, $9A, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 2F, 26 } | Size: 06
#_0AA1AC: db $FE, $FD, $09 ; 0x0109: Wall Corner (Lower) | { 2F, 34 } | Size: 00
#_0AA1AF: db $1C, $41, $7F ; 0x007F: Left Wall Torches ↕ | { 07, 10 } | Size: 01
#_0AA1B2: db $EC, $61, $80 ; 0x0080: Right Wall Torches ↕ | { 3B, 18 } | Size: 01
#_0AA1B5: db $98, $42, $22 ; 0x0022: Horizontal Rail ↔ | { 26, 10 } | Size: 02
#_0AA1B8: db $B8, $40, $22 ; 0x0022: Horizontal Rail ↔ | { 2E, 10 } | Size: 00
#_0AA1BB: db $DC, $40, $22 ; 0x0022: Horizontal Rail ↔ | { 37, 10 } | Size: 00
#_0AA1BE: db $24, $99, $22 ; 0x0022: Horizontal Rail ↔ | { 09, 26 } | Size: 01
#_0AA1C1: db $68, $0A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1A, 02 } | Size: 02
#_0AA1C4: db $7B, $09, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1E, 02 } | Size: 0D
#_0AA1C7: db $BB, $09, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 02 } | Size: 0D
#_0AA1CA: db $08, $00, $60 ; 0x0060: Ceiling ↕ | { 02, 00 } | Size: 00
#_0AA1CD: db $10, $00, $60 ; 0x0060: Ceiling ↕ | { 04, 00 } | Size: 00
#_0AA1D0: db $1B, $BB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 06, 2E } | Size: 0F
#_0AA1D3: db $5B, $BB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 2E } | Size: 0F
#_0AA1D6: db $91, $BB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 24, 2E } | Size: 07
#_0AA1D9: db $B3, $EC, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2C, 3B } | Size: 0C
#_0AA1DC: db $F0, $EC, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3C, 3B } | Size: 00
#_0AA1DF: db $FE, $24, $71 ; 0x0131: Stairs Going Up2 (layer) | { 22, 11 } | Size: 00
#_0AA1E2: db $38, $8B, $F9 ; 0x0F9C: Stair | { 0E, 22 } | Size: 03
#_0AA1E5: db $4E, $96, $2F ; 0x002F: Rail Wall ↔ | { 13, 25 } | Size: 0A
#_0AA1E8: db $48, $88, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 12, 22 } | Size: 00
#_0AA1EB: db $FF, $FF ; Layer01
#_0AA1ED: db $4C, $70, $88 ; 0x0088: Large Vertical Rail ↕ | { 13, 1C } | Size: 00
#_0AA1F0: db $64, $5B, $88 ; 0x0088: Large Vertical Rail ↕ | { 19, 16 } | Size: 03
#_0AA1F3: db $7C, $57, $88 ; 0x0088: Large Vertical Rail ↕ | { 1F, 15 } | Size: 03
#_0AA1F6: db $FD, $F8, $5D ; 0x011D: Statue | { 1F, 21 } | Size: 00
#_0AA1F9: db $A8, $4B, $01 ; 0x0001: Top Wall Horiz. ↔ | { 2A, 12 } | Size: 03
#_0AA1FC: db $AC, $8A, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2B, 22 } | Size: 02
#_0AA1FF: db $30, $07, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0C, 01 } | Size: 03
#_0AA202: db $40, $07, $62 ; 0x0062: Right Wall Horiz. ↕ | { 10, 01 } | Size: 03
#_0AA205: db $4C, $99, $61 ; 0x0061: Left Wall Vertic. ↕ | { 13, 26 } | Size: 01
#_0AA208: db $FD, $39, $C1 ; 0x0101: Wall Inner Corner ▙ | { 13, 27 } | Size: 00
#_0AA20B: db $5E, $9C, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 17, 27 } | Size: 08
#_0AA20E: db $9C, $99, $62 ; 0x0062: Right Wall Horiz. ↕ | { 27, 26 } | Size: 01
#_0AA211: db $FE, $79, $C3 ; 0x0103: Wall Inner Corner ▟ | { 27, 27 } | Size: 00
#_0AA214: db $FF, $FF ; Layer02
#_0AA216: db $B8, $40, $8A ; 0x008A: Long Vertical Rail ↕ | { 2E, 10 } | Size: 00
#_0AA219: db $AC, $40, $8A ; 0x008A: Long Vertical Rail ↕ | { 2B, 10 } | Size: 00
#_0AA21C: db $48, $9B, $5F ; 0x005F: Long Horizontal Rail ↔ | { 12, 26 } | Size: 03
#_0AA21F: db $26, $1F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 09, 07 } | Size: 0B
#_0AA222: db $27, $5E, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 09, 17 } | Size: 0E
#_0AA225: db $4C, $1F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 13, 07 } | Size: 03
#_0AA228: db $27, $84, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 09, 21 } | Size: 0C
#_0AA22B: db $5F, $4B, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 17, 12 } | Size: 0F
#_0AA22E: db $98, $4B, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 26, 12 } | Size: 03
#_0AA231: db $67, $84, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 19, 21 } | Size: 0C
#_0AA234: db $98, $84, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 26, 21 } | Size: 00
#_0AA237: db $C1, $4B, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 30, 12 } | Size: 07
#_0AA23A: db $DC, $4B, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 37, 12 } | Size: 03
#_0AA23D: db $C1, $8B, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 30, 22 } | Size: 07
#_0AA240: db $DC, $8B, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 37, 22 } | Size: 03
#_0AA243: db $C3, $B5, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 30, 2D } | Size: 0D
#_0AA246: db $C3, $D0, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 30, 34 } | Size: 0C
#_0AA249: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0081:
#_0AA24B: db $30, $40 ; Door 0x40 | Dir:00 | Pos:06
#_0AA24D: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0071:
#_0AA24F: db $51, $00 ; Floors and Layout
#_0AA251: db $FC, $C1, $00 ; 0x0100: Wall Inner Corner ▛ | { 0C, 04 } | Size: 00
#_0AA254: db $FC, $C2, $04 ; 0x0104: Wall Outer Corner ▟ | { 0C, 08 } | Size: 00
#_0AA257: db $28, $21, $01 ; 0x0001: Top Wall Horiz. ↔ | { 0A, 08 } | Size: 01
#_0AA25A: db $FC, $72, $00 ; 0x0100: Wall Inner Corner ▛ | { 07, 08 } | Size: 00
#_0AA25D: db $1D, $31, $61 ; 0x0061: Left Wall Vertic. ↕ | { 07, 0C } | Size: 05
#_0AA260: db $FC, $75, $81 ; 0x0101: Wall Inner Corner ▙ | { 07, 16 } | Size: 00
#_0AA263: db $FC, $A6, $81 ; 0x0101: Wall Inner Corner ▙ | { 0A, 1A } | Size: 00
#_0AA266: db $FC, $A5, $85 ; 0x0105: Wall Outer Corner ▜ | { 0A, 16 } | Size: 00
#_0AA269: db $FD, $26, $83 ; 0x0103: Wall Inner Corner ▟ | { 12, 1A } | Size: 00
#_0AA26C: db $FD, $25, $87 ; 0x0107: Wall Outer Corner ▛ | { 12, 16 } | Size: 00
#_0AA26F: db $58, $5A, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 16, 16 } | Size: 02
#_0AA272: db $FD, $A5, $83 ; 0x0103: Wall Inner Corner ▟ | { 1A, 16 } | Size: 00
#_0AA275: db $FC, $F1, $C8 ; 0x0108: Wall Corner (Lower) | { 0F, 07 } | Size: 00
#_0AA278: db $FC, $F2, $CC ; 0x010C: Wall Corner (Lower) | { 0F, 0B } | Size: 00
#_0AA27B: db $34, $2C, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0D, 0B } | Size: 00
#_0AA27E: db $FC, $A2, $C8 ; 0x0108: Wall Corner (Lower) | { 0A, 0B } | Size: 00
#_0AA281: db $28, $3D, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0A, 0F } | Size: 01
#_0AA284: db $FC, $A4, $C9 ; 0x0109: Wall Corner (Lower) | { 0A, 13 } | Size: 00
#_0AA287: db $39, $4C, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0E, 13 } | Size: 04
#_0AA28A: db $FD, $74, $CB ; 0x010B: Wall Corner (Lower) | { 17, 13 } | Size: 00
#_0AA28D: db $5C, $2F, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 17, 0B } | Size: 03
#_0AA290: db $FD, $71, $CA ; 0x010A: Wall Corner (Lower) | { 17, 07 } | Size: 00
#_0AA293: db $4C, $1D, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 13, 07 } | Size: 01
#_0AA296: db $02, $10, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 04 } | Size: 08
#_0AA299: db $08, $23, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 08 } | Size: 03
#_0AA29C: db $16, $21, $60 ; 0x0060: Ceiling ↕ | { 05, 08 } | Size: 09
#_0AA29F: db $38, $4F, $F9 ; 0x0F9C: Stair | { 0E, 13 } | Size: 03
#_0AA2A2: db $FC, $A9, $00 ; 0x0100: Wall Inner Corner ▛ | { 0A, 24 } | Size: 00
#_0AA2A5: db $FD, $29, $02 ; 0x0102: Wall Inner Corner ▜ | { 12, 24 } | Size: 00
#_0AA2A8: db $FD, $2A, $06 ; 0x0106: Wall Outer Corner ▙ | { 12, 28 } | Size: 00
#_0AA2AB: db $58, $A2, $01 ; 0x0001: Top Wall Horiz. ↔ | { 16, 28 } | Size: 02
#_0AA2AE: db $FD, $AA, $02 ; 0x0102: Wall Inner Corner ▜ | { 1A, 28 } | Size: 00
#_0AA2B1: db $FC, $AA, $04 ; 0x0104: Wall Outer Corner ▟ | { 0A, 28 } | Size: 00
#_0AA2B4: db $18, $A2, $01 ; 0x0001: Top Wall Horiz. ↔ | { 06, 28 } | Size: 02
#_0AA2B7: db $FC, $2A, $00 ; 0x0100: Wall Inner Corner ▛ | { 02, 28 } | Size: 00
#_0AA2BA: db $08, $63, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 18 } | Size: 03
#_0AA2BD: db $18, $68, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 06, 1A } | Size: 00
#_0AA2C0: db $18, $90, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 06, 24 } | Size: 00
#_0AA2C3: db $59, $68, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 1A } | Size: 04
#_0AA2C6: db $59, $90, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 24 } | Size: 04
#_0AA2C9: db $FC, $5A, $C8 ; 0x0108: Wall Corner (Lower) | { 05, 2B } | Size: 00
#_0AA2CC: db $25, $AE, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 09, 2B } | Size: 06
#_0AA2CF: db $FD, $7A, $CA ; 0x010A: Wall Corner (Lower) | { 17, 2B } | Size: 00
#_0AA2D2: db $14, $BF, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 2F } | Size: 03
#_0AA2D5: db $FC, $5D, $C9 ; 0x0109: Wall Corner (Lower) | { 05, 37 } | Size: 00
#_0AA2D8: db $25, $DE, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 09, 37 } | Size: 06
#_0AA2DB: db $FD, $7D, $CB ; 0x010B: Wall Corner (Lower) | { 17, 37 } | Size: 00
#_0AA2DE: db $5C, $BF, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 17, 2F } | Size: 03
#_0AA2E1: db $FC, $EA, $F1 ; 0x0131: Stairs Going Up2 (layer) | { 0E, 2B } | Size: 00
#_0AA2E4: db $FE, $59, $C8 ; 0x0108: Wall Corner (Lower) | { 25, 27 } | Size: 00
#_0AA2E7: db $A5, $9E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 29, 27 } | Size: 06
#_0AA2EA: db $FF, $79, $CA ; 0x010A: Wall Corner (Lower) | { 37, 27 } | Size: 00
#_0AA2ED: db $DD, $AD, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 2B } | Size: 05
#_0AA2F0: db $FF, $7D, $CB ; 0x010B: Wall Corner (Lower) | { 37, 37 } | Size: 00
#_0AA2F3: db $A5, $DE, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 29, 37 } | Size: 06
#_0AA2F6: db $FE, $5D, $C9 ; 0x0109: Wall Corner (Lower) | { 25, 37 } | Size: 00
#_0AA2F9: db $95, $AD, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 25, 2B } | Size: 05
#_0AA2FC: db $FF, $FF ; Layer01
#_0AA2FE: db $FD, $31, $FB ; 0x013B: Spiral Staircase Down (Lower) | { 13, 07 } | Size: 00
#_0AA301: db $A0, $AC, $38 ; 0x0038: Statue ↔ | { 28, 2B } | Size: 00
#_0AA304: db $A8, $A8, $38 ; 0x0038: Statue ↔ | { 2A, 2A } | Size: 00
#_0AA307: db $D0, $A8, $38 ; 0x0038: Statue ↔ | { 34, 2A } | Size: 00
#_0AA30A: db $D8, $AC, $38 ; 0x0038: Statue ↔ | { 36, 2B } | Size: 00
#_0AA30D: db $B4, $BD, $38 ; 0x0038: Statue ↔ | { 2D, 2F } | Size: 01
#_0AA310: db $D8, $D4, $38 ; 0x0038: Statue ↔ | { 36, 35 } | Size: 00
#_0AA313: db $A0, $D4, $38 ; 0x0038: Statue ↔ | { 28, 35 } | Size: 00
#_0AA316: db $BD, $C2, $F9 ; 0x0F99: Chest | { 2F, 30 } | Size: 06
#_0AA319: db $6D, $B5, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1B, 2D } | Size: 05
#_0AA31C: db $6D, $C5, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1B, 31 } | Size: 05
#_0AA31F: db $30, $EE, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0C, 3B } | Size: 02
#_0AA322: db $40, $EE, $62 ; 0x0062: Right Wall Horiz. ↕ | { 10, 3B } | Size: 02
#_0AA325: db $FF, $FF ; Layer02
#_0AA327: db $3E, $1F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0F, 07 } | Size: 0B
#_0AA32A: db $29, $2E, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0A, 0B } | Size: 06
#_0AA32D: db $17, $AF, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 05, 2B } | Size: 0F
#_0AA330: db $4D, $AF, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 13, 2B } | Size: 07
#_0AA333: db $97, $9F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 25, 27 } | Size: 0F
#_0AA336: db $97, $DC, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 25, 37 } | Size: 0C
#_0AA339: db $CD, $9F, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 33, 27 } | Size: 07
#_0AA33C: db $CD, $DC, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 33, 37 } | Size: 04
#_0AA33F: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0071:
#_0AA341: db $60, $1C ; Door 0x1C | Dir:00 | Pos:0C
#_0AA343: db $91, $44 ; Door 0x44 | Dir:01 | Pos:12
#_0AA345: db $B2, $44 ; Door 0x44 | Dir:02 | Pos:16
#_0AA347: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0070:
#_0AA349: db $E1, $00 ; Floors and Layout
#_0AA34B: db $FD, $31, $38 ; 0x0138: Spiral Staircase Up | { 13, 04 } | Size: 00
#_0AA34E: db $FC, $91, $39 ; 0x0139: Spiral Staircase Down | { 09, 04 } | Size: 00
#_0AA351: db $FC, $51, $00 ; 0x0100: Wall Inner Corner ▛ | { 05, 04 } | Size: 00
#_0AA354: db $FD, $71, $02 ; 0x0102: Wall Inner Corner ▜ | { 17, 04 } | Size: 00
#_0AA357: db $14, $22, $61 ; 0x0061: Left Wall Vertic. ↕ | { 05, 08 } | Size: 02
#_0AA35A: db $FC, $53, $01 ; 0x0101: Wall Inner Corner ▙ | { 05, 0C } | Size: 00
#_0AA35D: db $25, $33, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 09, 0C } | Size: 07
#_0AA360: db $FD, $73, $03 ; 0x0103: Wall Inner Corner ▟ | { 17, 0C } | Size: 00
#_0AA363: db $5C, $22, $62 ; 0x0062: Right Wall Horiz. ↕ | { 17, 08 } | Size: 02
#_0AA366: db $38, $14, $55 ; 0x0055: Wall Torches ↔ | { 0E, 05 } | Size: 00
#_0AA369: db $04, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 01, 04 } | Size: 03
#_0AA36C: db $6C, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1B, 04 } | Size: 03
#_0AA36F: db $0B, $43, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 10 } | Size: 0F
#_0AA372: db $4A, $43, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 10 } | Size: 0B
#_0AA375: db $FF, $FF ; Layer01
#_0AA377: db $FF, $FF ; Layer02
#_0AA379: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0070:
#_0AA37B: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0080:
#_0AA37D: db $E1, $10 ; Floors and Layout
#_0AA37F: db $FC, $51, $00 ; 0x0100: Wall Inner Corner ▛ | { 05, 04 } | Size: 00
#_0AA382: db $16, $21, $61 ; 0x0061: Left Wall Vertic. ↕ | { 05, 08 } | Size: 09
#_0AA385: db $FC, $56, $81 ; 0x0101: Wall Inner Corner ▙ | { 05, 1A } | Size: 00
#_0AA388: db $FC, $D1, $02 ; 0x0102: Wall Inner Corner ▜ | { 0D, 04 } | Size: 00
#_0AA38B: db $34, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 0D, 08 } | Size: 03
#_0AA38E: db $FC, $D3, $86 ; 0x0106: Wall Outer Corner ▙ | { 0D, 0E } | Size: 00
#_0AA391: db $44, $39, $01 ; 0x0001: Top Wall Horiz. ↔ | { 11, 0E } | Size: 01
#_0AA394: db $FD, $33, $84 ; 0x0104: Wall Outer Corner ▟ | { 13, 0E } | Size: 00
#_0AA397: db $4C, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 13, 08 } | Size: 03
#_0AA39A: db $FD, $31, $00 ; 0x0100: Wall Inner Corner ▛ | { 13, 04 } | Size: 00
#_0AA39D: db $FD, $F1, $02 ; 0x0102: Wall Inner Corner ▜ | { 1F, 04 } | Size: 00
#_0AA3A0: db $7C, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1F, 08 } | Size: 03
#_0AA3A3: db $FD, $F3, $86 ; 0x0106: Wall Outer Corner ▙ | { 1F, 0E } | Size: 00
#_0AA3A6: db $8C, $39, $01 ; 0x0001: Top Wall Horiz. ↔ | { 23, 0E } | Size: 01
#_0AA3A9: db $FE, $53, $84 ; 0x0104: Wall Outer Corner ▟ | { 25, 0E } | Size: 00
#_0AA3AC: db $94, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 25, 08 } | Size: 03
#_0AA3AF: db $FE, $51, $00 ; 0x0100: Wall Inner Corner ▛ | { 25, 04 } | Size: 00
#_0AA3B2: db $FF, $11, $02 ; 0x0102: Wall Inner Corner ▜ | { 31, 04 } | Size: 00
#_0AA3B5: db $C4, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 31, 08 } | Size: 03
#_0AA3B8: db $FF, $13, $86 ; 0x0106: Wall Outer Corner ▙ | { 31, 0E } | Size: 00
#_0AA3BB: db $D4, $39, $01 ; 0x0001: Top Wall Horiz. ↔ | { 35, 0E } | Size: 01
#_0AA3BE: db $FF, $63, $82 ; 0x0102: Wall Inner Corner ▜ | { 36, 0E } | Size: 00
#_0AA3C1: db $D9, $48, $62 ; 0x0062: Right Wall Horiz. ↕ | { 36, 12 } | Size: 04
#_0AA3C4: db $FF, $66, $83 ; 0x0103: Wall Inner Corner ▟ | { 36, 1A } | Size: 00
#_0AA3C7: db $28, $6F, $56 ; 0x0056: Wall Torches ↔ | { 0A, 1B } | Size: 03
#_0AA3CA: db $40, $50, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 10, 14 } | Size: 00
#_0AA3CD: db $63, $23, $FA ; 0x0FAF: Pot | { 18, 08 } | Size: 0F
#_0AA3D0: db $A5, $22, $F9 ; 0x0F99: Chest | { 29, 08 } | Size: 06
#_0AA3D3: db $6B, $23, $FA ; 0x0FAF: Pot | { 1A, 08 } | Size: 0F
#_0AA3D6: db $73, $23, $FA ; 0x0FAF: Pot | { 1C, 08 } | Size: 0F
#_0AA3D9: db $FC, $91, $38 ; 0x0138: Spiral Staircase Up | { 09, 04 } | Size: 00
#_0AA3DC: db $58, $40, $22 ; 0x0022: Horizontal Rail ↔ | { 16, 10 } | Size: 00
#_0AA3DF: db $70, $40, $22 ; 0x0022: Horizontal Rail ↔ | { 1C, 10 } | Size: 00
#_0AA3E2: db $58, $3C, $22 ; 0x0022: Horizontal Rail ↔ | { 16, 0F } | Size: 00
#_0AA3E5: db $70, $3C, $22 ; 0x0022: Horizontal Rail ↔ | { 1C, 0F } | Size: 00
#_0AA3E8: db $A0, $40, $22 ; 0x0022: Horizontal Rail ↔ | { 28, 10 } | Size: 00
#_0AA3EB: db $B8, $40, $22 ; 0x0022: Horizontal Rail ↔ | { 2E, 10 } | Size: 00
#_0AA3EE: db $A0, $3C, $22 ; 0x0022: Horizontal Rail ↔ | { 28, 0F } | Size: 00
#_0AA3F1: db $B8, $3C, $22 ; 0x0022: Horizontal Rail ↔ | { 2E, 0F } | Size: 00
#_0AA3F4: db $B0, $3A, $F9 ; 0x0F98: Cell Lock | { 2C, 0E } | Size: 02
#_0AA3F7: db $04, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 01, 04 } | Size: 03
#_0AA3FA: db $04, $4A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 01, 12 } | Size: 02
#_0AA3FD: db $45, $11, $60 ; 0x0060: Ceiling ↕ | { 11, 04 } | Size: 05
#_0AA400: db $8D, $11, $60 ; 0x0060: Ceiling ↕ | { 23, 04 } | Size: 05
#_0AA403: db $D5, $0A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 35, 02 } | Size: 06
#_0AA406: db $E8, $3B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 0E } | Size: 03
#_0AA409: db $F1, $11, $60 ; 0x0060: Ceiling ↕ | { 3C, 04 } | Size: 05
#_0AA40C: db $FF, $FF ; Layer01
#_0AA40E: db $4F, $31, $F9 ; 0x0F97: Cell | { 13, 0C } | Size: 0D
#_0AA411: db $97, $31, $F9 ; 0x0F97: Cell | { 25, 0C } | Size: 0D
#_0AA414: db $FF, $FF ; Layer02
#_0AA416: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0080:
#_0AA418: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00F0:
#_0AA41A: db $E5, $1C ; Floors and Layout
#_0AA41C: db $08, $2E, $09 ; 0x0009: Diagonal Wall ◤ | { 02, 0B } | Size: 02
#_0AA41F: db $09, $68, $0A ; 0x000A: Diagonal Wall ◣ | { 02, 1A } | Size: 04
#_0AA422: db $22, $93, $61 ; 0x0061: Left Wall Vertic. ↕ | { 08, 24 } | Size: 0B
#_0AA425: db $FC, $8E, $81 ; 0x0101: Wall Inner Corner ▙ | { 08, 3A } | Size: 00
#_0AA428: db $93, $10, $0B ; 0x000B: Diagonal Wall ◥ | { 24, 04 } | Size: 0C
#_0AA42B: db $FF, $A6, $42 ; 0x0102: Wall Inner Corner ▜ | { 3A, 19 } | Size: 00
#_0AA42E: db $C8, $5A, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 16 } | Size: 02
#_0AA431: db $FF, $26, $46 ; 0x0106: Wall Outer Corner ▙ | { 32, 19 } | Size: 00
#_0AA434: db $D8, $66, $01 ; 0x0001: Top Wall Horiz. ↔ | { 36, 19 } | Size: 02
#_0AA437: db $FF, $A9, $43 ; 0x0103: Wall Inner Corner ▟ | { 3A, 25 } | Size: 00
#_0AA43A: db $D8, $96, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 36, 25 } | Size: 02
#_0AA43D: db $FF, $29, $47 ; 0x0107: Wall Outer Corner ▛ | { 32, 25 } | Size: 00
#_0AA440: db $C8, $A7, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 29 } | Size: 03
#_0AA443: db $FF, $2B, $86 ; 0x0106: Wall Outer Corner ▙ | { 32, 2E } | Size: 00
#_0AA446: db $D8, $BA, $01 ; 0x0001: Top Wall Horiz. ↔ | { 36, 2E } | Size: 02
#_0AA449: db $FF, $AB, $82 ; 0x0102: Wall Inner Corner ▜ | { 3A, 2E } | Size: 00
#_0AA44C: db $FD, $4E, $83 ; 0x0103: Wall Inner Corner ▟ | { 14, 3A } | Size: 00
#_0AA44F: db $51, $BA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 14, 2E } | Size: 06
#_0AA452: db $FD, $4A, $87 ; 0x0107: Wall Outer Corner ▛ | { 14, 2A } | Size: 00
#_0AA455: db $60, $A9, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 18, 2A } | Size: 01
#_0AA458: db $68, $A8, $0A ; 0x000A: Diagonal Wall ◣ | { 1A, 2A } | Size: 00
#_0AA45B: db $80, $C3, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 20, 30 } | Size: 03
#_0AA45E: db $98, $CA, $0A ; 0x000A: Diagonal Wall ◣ | { 26, 32 } | Size: 02
#_0AA461: db $A0, $C4, $1A ; 0x001A: Diagonal Wall ◣ | { 28, 31 } | Size: 00
#_0AA464: db $98, $D1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 26, 34 } | Size: 01
#_0AA467: db $FE, $6C, $05 ; 0x0105: Wall Outer Corner ▜ | { 26, 30 } | Size: 00
#_0AA46A: db $10, $30, $19 ; 0x0019: Diagonal Wall ◤ | { 04, 0C } | Size: 00
#_0AA46D: db $0A, $31, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 0C } | Size: 09
#_0AA470: db $15, $68, $1A ; 0x001A: Diagonal Wall ◣ | { 05, 1A } | Size: 04
#_0AA473: db $16, $30, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 0C } | Size: 08
#_0AA476: db $2D, $93, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0B, 24 } | Size: 07
#_0AA479: db $FC, $BC, $C9 ; 0x0109: Wall Corner (Lower) | { 0B, 33 } | Size: 00
#_0AA47C: db $3C, $CC, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0F, 33 } | Size: 00
#_0AA47F: db $FD, $1C, $CB ; 0x010B: Wall Corner (Lower) | { 11, 33 } | Size: 00
#_0AA482: db $44, $AF, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 11, 2B } | Size: 03
#_0AA485: db $50, $9E, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 14, 27 } | Size: 02
#_0AA488: db $FD, $19, $CF ; 0x010F: Wall Corner (Lower) | { 11, 27 } | Size: 00
#_0AA48B: db $68, $9C, $1A ; 0x001A: Diagonal Wall ◣ | { 1A, 27 } | Size: 00
#_0AA48E: db $81, $B4, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 20, 2D } | Size: 04
#_0AA491: db $A4, $C2, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 29, 30 } | Size: 02
#_0AA494: db $B9, $DC, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2E, 37 } | Size: 04
#_0AA497: db $FF, $7D, $CB ; 0x010B: Wall Corner (Lower) | { 37, 37 } | Size: 00
#_0AA49A: db $DC, $D4, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 35 } | Size: 00
#_0AA49D: db $FF, $7C, $4A ; 0x010A: Wall Corner (Lower) | { 37, 31 } | Size: 00
#_0AA4A0: db $CC, $C5, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 33, 31 } | Size: 01
#_0AA4A3: db $FE, $9B, $4D ; 0x010D: Wall Corner (Lower) | { 29, 2D } | Size: 00
#_0AA4A6: db $BD, $99, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 2F, 26 } | Size: 05
#_0AA4A9: db $FE, $FC, $4E ; 0x010E: Wall Corner (Lower) | { 2F, 31 } | Size: 00
#_0AA4AC: db $CC, $89, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 33, 22 } | Size: 01
#_0AA4AF: db $FF, $77, $0A ; 0x010A: Wall Corner (Lower) | { 37, 1C } | Size: 00
#_0AA4B2: db $CC, $71, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 33, 1C } | Size: 01
#_0AA4B5: db $92, $1D, $1B ; 0x001B: Diagonal Wall ◥ | { 24, 07 } | Size: 09
#_0AA4B8: db $BC, $5A, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 2F, 16 } | Size: 02
#_0AA4BB: db $FE, $F7, $0E ; 0x010E: Wall Corner (Lower) | { 2F, 1C } | Size: 00
#_0AA4BE: db $DC, $80, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 20 } | Size: 00
#_0AA4C1: db $FF, $78, $8B ; 0x010B: Wall Corner (Lower) | { 37, 22 } | Size: 00
#_0AA4C4: db $FE, $F8, $8F ; 0x010F: Wall Corner (Lower) | { 2F, 22 } | Size: 00
#_0AA4C7: db $2B, $1C, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0A, 07 } | Size: 0C
#_0AA4CA: db $FC, $C4, $07 ; 0x0107: Wall Outer Corner ▛ | { 0C, 10 } | Size: 00
#_0AA4CD: db $30, $5A, $0B ; 0x000B: Diagonal Wall ◥ | { 0C, 16 } | Size: 02
#_0AA4D0: db $30, $53, $62 ; 0x0062: Right Wall Horiz. ↕ | { 0C, 14 } | Size: 03
#_0AA4D3: db $50, $79, $01 ; 0x0001: Top Wall Horiz. ↔ | { 14, 1E } | Size: 01
#_0AA4D6: db $FD, $67, $84 ; 0x0104: Wall Outer Corner ▟ | { 16, 1E } | Size: 00
#_0AA4D9: db $58, $6A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 16, 1A } | Size: 02
#_0AA4DC: db $FD, $65, $80 ; 0x0100: Wall Inner Corner ▛ | { 16, 16 } | Size: 00
#_0AA4DF: db $68, $5A, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1A, 16 } | Size: 02
#_0AA4E2: db $78, $5A, $0B ; 0x000B: Diagonal Wall ◥ | { 1E, 16 } | Size: 02
#_0AA4E5: db $74, $64, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 1D, 19 } | Size: 00
#_0AA4E8: db $78, $64, $1B ; 0x001B: Diagonal Wall ◥ | { 1E, 19 } | Size: 00
#_0AA4EB: db $88, $7B, $62 ; 0x0062: Right Wall Horiz. ↕ | { 22, 1E } | Size: 03
#_0AA4EE: db $FE, $29, $06 ; 0x0106: Wall Outer Corner ▙ | { 22, 24 } | Size: 00
#_0AA4F1: db $98, $91, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 24 } | Size: 01
#_0AA4F4: db $42, $41, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 10, 10 } | Size: 09
#_0AA4F7: db $85, $41, $0A ; 0x000A: Diagonal Wall ◣ | { 21, 10 } | Size: 05
#_0AA4FA: db $A1, $6D, $61 ; 0x0061: Left Wall Vertic. ↕ | { 28, 1B } | Size: 05
#_0AA4FD: db $FE, $89, $04 ; 0x0104: Wall Outer Corner ▟ | { 28, 24 } | Size: 00
#_0AA500: db $25, $59, $1B ; 0x001B: Diagonal Wall ◥ | { 09, 16 } | Size: 05
#_0AA503: db $25, $40, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 09, 10 } | Size: 04
#_0AA506: db $36, $35, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0D, 0D } | Size: 09
#_0AA509: db $FC, $93, $4F ; 0x010F: Wall Corner (Lower) | { 09, 0D } | Size: 00
#_0AA50C: db $50, $86, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 14, 21 } | Size: 02
#_0AA50F: db $FD, $98, $4C ; 0x010C: Wall Corner (Lower) | { 19, 21 } | Size: 00
#_0AA512: db $64, $75, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 19, 1D } | Size: 01
#_0AA515: db $FD, $96, $48 ; 0x0108: Wall Corner (Lower) | { 19, 19 } | Size: 00
#_0AA518: db $7D, $78, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 1F, 1E } | Size: 04
#_0AA51B: db $FD, $F9, $CE ; 0x010E: Wall Corner (Lower) | { 1F, 27 } | Size: 00
#_0AA51E: db $8C, $9F, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 23, 27 } | Size: 03
#_0AA521: db $86, $34, $1A ; 0x001A: Diagonal Wall ◣ | { 21, 0D } | Size: 08
#_0AA524: db $AD, $6D, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 2B, 1B } | Size: 05
#_0AA527: db $FE, $B9, $CC ; 0x010C: Wall Corner (Lower) | { 2B, 27 } | Size: 00
#_0AA52A: db $60, $28, $A4 ; 0x00A4: Hole ↔ ↕ | { 18, 0A } | Size: 00
#_0AA52D: db $D0, $D0, $A4 ; 0x00A4: Hole ↔ ↕ | { 34, 34 } | Size: 00
#_0AA530: db $FF, $62, $32 ; 0x0132: Stairs Going Up (layer) | { 36, 08 } | Size: 00
#_0AA533: db $2C, $DC, $22 ; 0x0022: Horizontal Rail ↔ | { 0B, 37 } | Size: 00
#_0AA536: db $44, $DC, $22 ; 0x0022: Horizontal Rail ↔ | { 11, 37 } | Size: 00
#_0AA539: db $08, $13, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 02, 04 } | Size: 03
#_0AA53C: db $08, $7D, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 02, 1F } | Size: 01
#_0AA53F: db $01, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 24 } | Size: 07
#_0AA542: db $01, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 34 } | Size: 06
#_0AA545: db $68, $BD, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 1A, 2F } | Size: 01
#_0AA548: db $62, $B8, $60 ; 0x0060: Ceiling ↕ | { 18, 2E } | Size: 08
#_0AA54B: db $6A, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1A, 34 } | Size: 0A
#_0AA54E: db $98, $DF, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 26, 37 } | Size: 03
#_0AA551: db $44, $68, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 11, 1A } | Size: 00
#_0AA554: db $40, $58, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 10, 16 } | Size: 00
#_0AA557: db $51, $58, $60 ; 0x0060: Ceiling ↕ | { 14, 16 } | Size: 04
#_0AA55A: db $42, $50, $00 ; 0x0000: Ceiling ↔ | { 10, 14 } | Size: 08
#_0AA55D: db $84, $54, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 21, 15 } | Size: 00
#_0AA560: db $90, $60, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 24, 18 } | Size: 00
#_0AA563: db $7C, $58, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 1F, 16 } | Size: 00
#_0AA566: db $88, $64, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 22, 19 } | Size: 00
#_0AA569: db $7C, $51, $00 ; 0x0000: Ceiling ↔ | { 1F, 14 } | Size: 01
#_0AA56C: db $99, $70, $60 ; 0x0060: Ceiling ↕ | { 26, 1C } | Size: 04
#_0AA56F: db $97, $11, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 25, 04 } | Size: 0D
#_0AA572: db $D9, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 04 } | Size: 07
#_0AA575: db $D9, $45, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 11 } | Size: 05
#_0AA578: db $D9, $A4, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 29 } | Size: 04
#_0AA57B: db $D9, $B0, $00 ; 0x0000: Ceiling ↔ | { 36, 2C } | Size: 04
#_0AA57E: db $FF, $FF ; Layer01
#_0AA580: db $2B, $14, $FF ; 0x0FF3: Bg2 Full Mask | { 0A, 05 } | Size: 0C
#_0AA583: db $2A, $16, $FA ; 0x0FAA: LAMP | { 0A, 05 } | Size: 0A
#_0AA586: db $FF, $FF ; Layer02
#_0AA588: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F0:
#_0AA58A: db $61, $0E ; Door 0x0E | Dir:01 | Pos:0C
#_0AA58C: db $A3, $02 ; Door 0x02 | Dir:03 | Pos:14
#_0AA58E: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00F1:
#_0AA590: db $E5, $1C ; Floors and Layout
#_0AA592: db $FC, $26, $40 ; 0x0100: Wall Inner Corner ▛ | { 02, 19 } | Size: 00
#_0AA595: db $18, $65, $01 ; 0x0001: Top Wall Horiz. ↔ | { 06, 19 } | Size: 01
#_0AA598: db $22, $21, $61 ; 0x0061: Left Wall Vertic. ↕ | { 08, 08 } | Size: 09
#_0AA59B: db $FC, $86, $44 ; 0x0104: Wall Outer Corner ▟ | { 08, 19 } | Size: 00
#_0AA59E: db $FC, $81, $00 ; 0x0100: Wall Inner Corner ▛ | { 08, 04 } | Size: 00
#_0AA5A1: db $FD, $41, $02 ; 0x0102: Wall Inner Corner ▜ | { 14, 04 } | Size: 00
#_0AA5A4: db $52, $21, $62 ; 0x0062: Right Wall Horiz. ↕ | { 14, 08 } | Size: 09
#_0AA5A7: db $FD, $46, $86 ; 0x0106: Wall Outer Corner ▙ | { 14, 1A } | Size: 00
#_0AA5AA: db $60, $69, $01 ; 0x0001: Top Wall Horiz. ↔ | { 18, 1A } | Size: 01
#_0AA5AD: db $68, $66, $09 ; 0x0009: Diagonal Wall ◤ | { 1A, 19 } | Size: 02
#_0AA5B0: db $68, $2A, $0A ; 0x000A: Diagonal Wall ◣ | { 1A, 0A } | Size: 02
#_0AA5B3: db $68, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1A, 08 } | Size: 03
#_0AA5B6: db $FD, $A1, $00 ; 0x0100: Wall Inner Corner ▛ | { 1A, 04 } | Size: 00
#_0AA5B9: db $78, $4A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1E, 12 } | Size: 02
#_0AA5BC: db $FE, $41, $02 ; 0x0102: Wall Inner Corner ▜ | { 24, 04 } | Size: 00
#_0AA5BF: db $90, $22, $0B ; 0x000B: Diagonal Wall ◥ | { 24, 08 } | Size: 02
#_0AA5C2: db $90, $22, $62 ; 0x0062: Right Wall Horiz. ↕ | { 24, 08 } | Size: 02
#_0AA5C5: db $B0, $41, $01 ; 0x0001: Top Wall Horiz. ↔ | { 2C, 10 } | Size: 01
#_0AA5C8: db $FE, $E4, $04 ; 0x0104: Wall Outer Corner ▟ | { 2E, 10 } | Size: 00
#_0AA5CB: db $B9, $20, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2E, 08 } | Size: 04
#_0AA5CE: db $FE, $E1, $00 ; 0x0100: Wall Inner Corner ▛ | { 2E, 04 } | Size: 00
#_0AA5D1: db $FC, $29, $41 ; 0x0101: Wall Inner Corner ▙ | { 02, 25 } | Size: 00
#_0AA5D4: db $18, $95, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 25 } | Size: 01
#_0AA5D7: db $FC, $89, $45 ; 0x0105: Wall Outer Corner ▜ | { 08, 25 } | Size: 00
#_0AA5DA: db $22, $A5, $61 ; 0x0061: Left Wall Vertic. ↕ | { 08, 29 } | Size: 09
#_0AA5DD: db $FC, $8E, $81 ; 0x0101: Wall Inner Corner ▙ | { 08, 3A } | Size: 00
#_0AA5E0: db $FD, $4E, $83 ; 0x0103: Wall Inner Corner ▟ | { 14, 3A } | Size: 00
#_0AA5E3: db $58, $AC, $0C ; 0x000C: Diagonal Wall ◢ | { 16, 2B } | Size: 00
#_0AA5E6: db $51, $BA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 14, 2E } | Size: 06
#_0AA5E9: db $70, $99, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1C, 26 } | Size: 01
#_0AA5EC: db $79, $94, $0C ; 0x000C: Diagonal Wall ◢ | { 1E, 25 } | Size: 04
#_0AA5EF: db $A0, $73, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 28, 1C } | Size: 03
#_0AA5F2: db $FE, $E7, $05 ; 0x0105: Wall Outer Corner ▜ | { 2E, 1C } | Size: 00
#_0AA5F5: db $B8, $83, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2E, 20 } | Size: 03
#_0AA5F8: db $FE, $E9, $84 ; 0x0104: Wall Outer Corner ▟ | { 2E, 26 } | Size: 00
#_0AA5FB: db $B0, $99, $01 ; 0x0001: Top Wall Horiz. ↔ | { 2C, 26 } | Size: 01
#_0AA5FE: db $FE, $89, $80 ; 0x0100: Wall Inner Corner ▛ | { 28, 26 } | Size: 00
#_0AA601: db $A2, $A8, $61 ; 0x0061: Left Wall Vertic. ↕ | { 28, 2A } | Size: 08
#_0AA604: db $FE, $8E, $81 ; 0x0101: Wall Inner Corner ▙ | { 28, 3A } | Size: 00
#_0AA607: db $FF, $4E, $83 ; 0x0103: Wall Inner Corner ▟ | { 34, 3A } | Size: 00
#_0AA60A: db $D0, $DA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 34, 36 } | Size: 02
#_0AA60D: db $FF, $4C, $87 ; 0x0107: Wall Outer Corner ▛ | { 34, 32 } | Size: 00
#_0AA610: db $E0, $C9, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 38, 32 } | Size: 01
#_0AA613: db $FF, $AC, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 32 } | Size: 00
#_0AA616: db $2E, $2C, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0B, 0B } | Size: 08
#_0AA619: db $FC, $B7, $0C ; 0x010C: Wall Corner (Lower) | { 0B, 1C } | Size: 00
#_0AA61C: db $FC, $B1, $C8 ; 0x0108: Wall Corner (Lower) | { 0B, 07 } | Size: 00
#_0AA61F: db $3C, $1C, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0F, 07 } | Size: 00
#_0AA622: db $FD, $11, $CA ; 0x010A: Wall Corner (Lower) | { 11, 07 } | Size: 00
#_0AA625: db $46, $2C, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 11, 0B } | Size: 08
#_0AA628: db $50, $76, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 14, 1D } | Size: 02
#_0AA62B: db $FD, $17, $4E ; 0x010E: Wall Corner (Lower) | { 11, 1D } | Size: 00
#_0AA62E: db $69, $71, $19 ; 0x0019: Diagonal Wall ◤ | { 1A, 1C } | Size: 05
#_0AA631: db $74, $2A, $1A ; 0x001A: Diagonal Wall ◣ | { 1D, 0A } | Size: 02
#_0AA634: db $84, $49, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 21, 12 } | Size: 01
#_0AA637: db $74, $29, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 1D, 0A } | Size: 01
#_0AA63A: db $FD, $D1, $C8 ; 0x0108: Wall Corner (Lower) | { 1D, 07 } | Size: 00
#_0AA63D: db $85, $21, $1B ; 0x001B: Diagonal Wall ◥ | { 21, 08 } | Size: 05
#_0AA640: db $84, $28, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 21, 0A } | Size: 00
#_0AA643: db $FE, $11, $CA ; 0x010A: Wall Corner (Lower) | { 21, 07 } | Size: 00
#_0AA646: db $B0, $4E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2C, 13 } | Size: 02
#_0AA649: db $FF, $14, $CC ; 0x010C: Wall Corner (Lower) | { 31, 13 } | Size: 00
#_0AA64C: db $C4, $2F, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 31, 0B } | Size: 03
#_0AA64F: db $FF, $11, $C8 ; 0x0108: Wall Corner (Lower) | { 31, 07 } | Size: 00
#_0AA652: db $D4, $1C, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 35, 07 } | Size: 00
#_0AA655: db $FF, $71, $CA ; 0x010A: Wall Corner (Lower) | { 37, 07 } | Size: 00
#_0AA658: db $DF, $2F, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 0B } | Size: 0F
#_0AA65B: db $DC, $AD, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 2B } | Size: 01
#_0AA65E: db $FF, $7B, $CB ; 0x010B: Wall Corner (Lower) | { 37, 2F } | Size: 00
#_0AA661: db $D4, $BC, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 35, 2F } | Size: 00
#_0AA664: db $FF, $1B, $CF ; 0x010F: Wall Corner (Lower) | { 31, 2F } | Size: 00
#_0AA667: db $C4, $CD, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 31, 33 } | Size: 01
#_0AA66A: db $FF, $1D, $CB ; 0x010B: Wall Corner (Lower) | { 31, 37 } | Size: 00
#_0AA66D: db $BC, $DC, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2F, 37 } | Size: 00
#_0AA670: db $FE, $BD, $C9 ; 0x0109: Wall Corner (Lower) | { 2B, 37 } | Size: 00
#_0AA673: db $AD, $B4, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 2B, 2D } | Size: 04
#_0AA676: db $FE, $BA, $48 ; 0x0108: Wall Corner (Lower) | { 2B, 29 } | Size: 00
#_0AA679: db $BC, $A4, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2F, 29 } | Size: 00
#_0AA67C: db $FF, $1A, $4C ; 0x010C: Wall Corner (Lower) | { 31, 29 } | Size: 00
#_0AA67F: db $C5, $75, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 31, 1D } | Size: 05
#_0AA682: db $A1, $64, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 28, 19 } | Size: 04
#_0AA685: db $FF, $16, $4D ; 0x010D: Wall Corner (Lower) | { 31, 19 } | Size: 00
#_0AA688: db $79, $88, $1C ; 0x001C: Diagonal Wall ◢ | { 1E, 22 } | Size: 04
#_0AA68B: db $70, $8C, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 1C, 23 } | Size: 00
#_0AA68E: db $45, $B5, $1C ; 0x001C: Diagonal Wall ◢ | { 11, 2D } | Size: 05
#_0AA691: db $45, $B8, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 11, 2E } | Size: 04
#_0AA694: db $FD, $1D, $CB ; 0x010B: Wall Corner (Lower) | { 11, 37 } | Size: 00
#_0AA697: db $2E, $98, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0B, 26 } | Size: 08
#_0AA69A: db $FC, $BD, $C9 ; 0x0109: Wall Corner (Lower) | { 0B, 37 } | Size: 00
#_0AA69D: db $3C, $DC, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0F, 37 } | Size: 00
#_0AA6A0: db $FC, $B8, $8D ; 0x010D: Wall Corner (Lower) | { 0B, 22 } | Size: 00
#_0AA6A3: db $24, $88, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 09, 22 } | Size: 00
#_0AA6A6: db $14, $80, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 20 } | Size: 00
#_0AA6A9: db $FC, $57, $08 ; 0x0108: Wall Corner (Lower) | { 05, 1C } | Size: 00
#_0AA6AC: db $24, $70, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 09, 1C } | Size: 00
#_0AA6AF: db $FC, $58, $89 ; 0x0109: Wall Corner (Lower) | { 05, 22 } | Size: 00
#_0AA6B2: db $83, $2B, $FA ; 0x0FAF: Pot | { 20, 0A } | Size: 0F
#_0AA6B5: db $48, $80, $A4 ; 0x00A4: Hole ↔ ↕ | { 12, 20 } | Size: 00
#_0AA6B8: db $D0, $28, $A4 ; 0x00A4: Hole ↔ ↕ | { 34, 0A } | Size: 00
#_0AA6BB: db $62, $13, $60 ; 0x0060: Ceiling ↕ | { 18, 04 } | Size: 0B
#_0AA6BE: db $68, $3C, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 1A, 0F } | Size: 00
#_0AA6C1: db $68, $54, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 1A, 15 } | Size: 00
#_0AA6C4: db $68, $4E, $00 ; 0x0000: Ceiling ↔ | { 1A, 13 } | Size: 02
#_0AA6C7: db $A0, $11, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 28, 04 } | Size: 01
#_0AA6CA: db $B1, $12, $60 ; 0x0060: Ceiling ↕ | { 2C, 04 } | Size: 06
#_0AA6CD: db $A0, $2C, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 28, 0B } | Size: 00
#_0AA6D0: db $64, $B4, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 19, 2D } | Size: 00
#_0AA6D3: db $7D, $A5, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 1F, 29 } | Size: 05
#_0AA6D6: db $63, $BB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 18, 2E } | Size: 0F
#_0AA6D9: db $72, $A8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1C, 2A } | Size: 08
#_0AA6DC: db $A0, $83, $00 ; 0x0000: Ceiling ↔ | { 28, 20 } | Size: 03
#_0AA6DF: db $A0, $8B, $00 ; 0x0000: Ceiling ↔ | { 28, 22 } | Size: 03
#_0AA6E2: db $A0, $93, $00 ; 0x0000: Ceiling ↔ | { 28, 24 } | Size: 03
#_0AA6E5: db $E0, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 38, 36 } | Size: 01
#_0AA6E8: db $F1, $D8, $60 ; 0x0060: Ceiling ↕ | { 3C, 36 } | Size: 04
#_0AA6EB: db $01, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 04 } | Size: 07
#_0AA6EE: db $01, $45, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 11 } | Size: 05
#_0AA6F1: db $01, $A7, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 29 } | Size: 07
#_0AA6F4: db $01, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 36 } | Size: 05
#_0AA6F7: db $FF, $FF ; Layer01
#_0AA6F9: db $2B, $14, $FF ; 0x0FF3: Bg2 Full Mask | { 0A, 05 } | Size: 0C
#_0AA6FC: db $2A, $16, $FA ; 0x0FAA: LAMP | { 0A, 05 } | Size: 0A
#_0AA6FF: db $FF, $FF ; Layer02
#_0AA701: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F1:
#_0AA703: db $B1, $10 ; Door 0x10 | Dir:01 | Pos:16
#_0AA705: db $42, $02 ; Door 0x02 | Dir:02 | Pos:08
#_0AA707: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00F2:
#_0AA709: db $E3, $00 ; Floors and Layout
#_0AA70B: db $A0, $91, $3E ; 0x003E: Top Wall Column ↔ | { 28, 24 } | Size: 01
#_0AA70E: db $A0, $F1, $4B ; 0x004B: Bottom Wall Column ↔ | { 28, 3C } | Size: 01
#_0AA711: db $88, $A5, $78 ; 0x0078: Left Wall Top Column ↕ | { 22, 29 } | Size: 01
#_0AA714: db $F0, $A5, $7B ; 0x007B: Right Wall Top Column ↕ | { 3C, 29 } | Size: 01
#_0AA717: db $88, $BC, $76 ; 0x0076: Left Wall Decoration ↕ | { 22, 2F } | Size: 00
#_0AA71A: db $FF, $19, $E8 ; 0x0128: Bed | { 31, 27 } | Size: 00
#_0AA71D: db $FF, $79, $E8 ; 0x0128: Bed | { 37, 27 } | Size: 00
#_0AA720: db $94, $A2, $B2 ; 0x00B2: Floor? ↔ | { 25, 28 } | Size: 02
#_0AA723: db $94, $B2, $B2 ; 0x00B2: Floor? ↔ | { 25, 2C } | Size: 02
#_0AA726: db $94, $C2, $B2 ; 0x00B2: Floor? ↔ | { 25, 30 } | Size: 02
#_0AA729: db $94, $D2, $B2 ; 0x00B2: Floor? ↔ | { 25, 34 } | Size: 02
#_0AA72C: db $96, $9D, $B3 ; 0x00B3: ??? | { 25, 27 } | Size: 09
#_0AA72F: db $96, $DD, $B4 ; 0x00B4: ??? | { 25, 37 } | Size: 09
#_0AA732: db $97, $A2, $8D ; 0x008D: Left Edge ↕ | { 25, 28 } | Size: 0E
#_0AA735: db $C3, $A2, $8E ; 0x008E: Right Edge ↕ | { 30, 28 } | Size: 0E
#_0AA738: db $9C, $AD, $3C ; 0x003C: Double Chair ↔ | { 27, 2B } | Size: 01
#_0AA73B: db $9D, $B4, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 27, 2D } | Size: 04
#_0AA73E: db $A2, $B6, $FD ; 0x0FDA: ??? | { 28, 2D } | Size: 0A
#_0AA741: db $AC, $93, $FD ; 0x0FDC: ??? | { 2B, 24 } | Size: 03
#_0AA744: db $FF, $FF ; Layer01
#_0AA746: db $FF, $FF ; Layer02
#_0AA748: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F2:
#_0AA74A: db $83, $00 ; Door 0x00 | Dir:03 | Pos:10
#_0AA74C: db $81, $00 ; Door 0x00 | Dir:01 | Pos:10
#_0AA74E: db $81, $12 ; Door 0x12 | Dir:01 | Pos:10
#_0AA750: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00F3:
#_0AA752: db $E3, $00 ; Floors and Layout
#_0AA754: db $20, $91, $3E ; 0x003E: Top Wall Column ↔ | { 08, 24 } | Size: 01
#_0AA757: db $08, $A5, $78 ; 0x0078: Left Wall Top Column ↕ | { 02, 29 } | Size: 01
#_0AA75A: db $70, $A5, $7B ; 0x007B: Right Wall Top Column ↕ | { 1C, 29 } | Size: 01
#_0AA75D: db $21, $D0, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 08, 34 } | Size: 04
#_0AA760: db $FC, $8E, $27 ; 0x0127: Chair | { 08, 38 } | Size: 00
#_0AA763: db $FC, $CE, $27 ; 0x0127: Chair | { 0C, 38 } | Size: 00
#_0AA766: db $49, $A3, $C5 ; 0x00C5: Floor3 ↔ ↕ | { 12, 28 } | Size: 07
#_0AA769: db $49, $D8, $C5 ; 0x00C5: Floor3 ↔ ↕ | { 12, 36 } | Size: 04
#_0AA76C: db $4B, $A2, $71 ; 0x0071: Carpet Floor Contour ↕ | { 12, 28 } | Size: 0E
#_0AA76F: db $53, $A3, $FA ; 0x0FAF: Pot | { 14, 28 } | Size: 0F
#_0AA772: db $5B, $A3, $FA ; 0x0FAF: Pot | { 16, 28 } | Size: 0F
#_0AA775: db $63, $A3, $FA ; 0x0FAF: Pot | { 18, 28 } | Size: 0F
#_0AA778: db $FC, $E9, $29 ; 0x0129: Decoration | { 0E, 24 } | Size: 00
#_0AA77B: db $58, $EC, $3B ; 0x003B: Bottom Wall Decoration ↔ | { 16, 3B } | Size: 00
#_0AA77E: db $FC, $6A, $21 ; 0x0121: Barrel | { 06, 28 } | Size: 00
#_0AA781: db $FC, $6A, $A1 ; 0x0121: Barrel | { 06, 2A } | Size: 00
#_0AA784: db $FC, $8A, $21 ; 0x0121: Barrel | { 08, 28 } | Size: 00
#_0AA787: db $2B, $A2, $FD ; 0x0FDB: ??? | { 0A, 28 } | Size: 0E
#_0AA78A: db $26, $D2, $FD ; 0x0FDA: ??? | { 09, 34 } | Size: 0A
#_0AA78D: db $51, $AB, $FD ; 0x0FDD: ??? | { 14, 2A } | Size: 07
#_0AA790: db $51, $BF, $FD ; 0x0FDD: ??? | { 14, 2F } | Size: 07
#_0AA793: db $FF, $FF ; Layer01
#_0AA795: db $FF, $FF ; Layer02
#_0AA797: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F3:
#_0AA799: db $22, $00 ; Door 0x00 | Dir:02 | Pos:04
#_0AA79B: db $61, $00 ; Door 0x00 | Dir:01 | Pos:0C
#_0AA79D: db $61, $12 ; Door 0x12 | Dir:01 | Pos:0C
#_0AA79F: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00F4:
#_0AA7A1: db $E3, $00 ; Floors and Layout
#_0AA7A3: db $A0, $91, $3E ; 0x003E: Top Wall Column ↔ | { 28, 24 } | Size: 01
#_0AA7A6: db $88, $C0, $78 ; 0x0078: Left Wall Top Column ↕ | { 22, 30 } | Size: 00
#_0AA7A9: db $A0, $EC, $3B ; 0x003B: Bottom Wall Decoration ↔ | { 28, 3B } | Size: 00
#_0AA7AC: db $B4, $91, $4F ; 0x004F: Shelf ↔ | { 2D, 24 } | Size: 01
#_0AA7AF: db $A0, $AF, $B2 ; 0x00B2: Floor? ↔ | { 28, 2B } | Size: 03
#_0AA7B2: db $A0, $BF, $B2 ; 0x00B2: Floor? ↔ | { 28, 2F } | Size: 03
#_0AA7B5: db $A0, $CF, $B2 ; 0x00B2: Floor? ↔ | { 28, 33 } | Size: 03
#_0AA7B8: db $A3, $A9, $B3 ; 0x00B3: ??? | { 28, 2A } | Size: 0D
#_0AA7BB: db $A3, $DD, $B4 ; 0x00B4: ??? | { 28, 37 } | Size: 0D
#_0AA7BE: db $A2, $AF, $8D ; 0x008D: Left Edge ↕ | { 28, 2B } | Size: 0B
#_0AA7C1: db $DE, $AF, $8E ; 0x008E: Right Edge ↕ | { 37, 2B } | Size: 0B
#_0AA7C4: db $BC, $B0, $3C ; 0x003C: Double Chair ↔ | { 2F, 2C } | Size: 00
#_0AA7C7: db $B5, $B8, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 2D, 2E } | Size: 04
#_0AA7CA: db $FF, $79, $E8 ; 0x0128: Bed | { 37, 27 } | Size: 00
#_0AA7CD: db $FF, $FF ; Layer01
#_0AA7CF: db $FF, $FF ; Layer02
#_0AA7D1: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F4:
#_0AA7D3: db $83, $28 ; Door 0x28 | Dir:03 | Pos:10
#_0AA7D5: db $81, $00 ; Door 0x00 | Dir:01 | Pos:10
#_0AA7D7: db $81, $12 ; Door 0x12 | Dir:01 | Pos:10
#_0AA7D9: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00F5:
#_0AA7DB: db $E3, $00 ; Floors and Layout
#_0AA7DD: db $20, $91, $3E ; 0x003E: Top Wall Column ↔ | { 08, 24 } | Size: 01
#_0AA7E0: db $20, $F0, $4B ; 0x004B: Bottom Wall Column ↔ | { 08, 3C } | Size: 00
#_0AA7E3: db $54, $EC, $3B ; 0x003B: Bottom Wall Decoration ↔ | { 15, 3B } | Size: 00
#_0AA7E6: db $70, $C0, $7B ; 0x007B: Right Wall Top Column ↕ | { 1C, 30 } | Size: 00
#_0AA7E9: db $20, $AF, $B2 ; 0x00B2: Floor? ↔ | { 08, 2B } | Size: 03
#_0AA7EC: db $20, $BF, $B2 ; 0x00B2: Floor? ↔ | { 08, 2F } | Size: 03
#_0AA7EF: db $20, $CF, $B2 ; 0x00B2: Floor? ↔ | { 08, 33 } | Size: 03
#_0AA7F2: db $23, $A9, $B3 ; 0x00B3: ??? | { 08, 2A } | Size: 0D
#_0AA7F5: db $23, $DD, $B4 ; 0x00B4: ??? | { 08, 37 } | Size: 0D
#_0AA7F8: db $22, $AF, $8D ; 0x008D: Left Edge ↕ | { 08, 2B } | Size: 0B
#_0AA7FB: db $5E, $AF, $8E ; 0x008E: Right Edge ↕ | { 17, 2B } | Size: 0B
#_0AA7FE: db $34, $B1, $3C ; 0x003C: Double Chair ↔ | { 0D, 2C } | Size: 01
#_0AA801: db $35, $B8, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 0D, 2E } | Size: 04
#_0AA804: db $3A, $BA, $FD ; 0x0FDA: ??? | { 0E, 2E } | Size: 0A
#_0AA807: db $34, $93, $FD ; 0x0FDC: ??? | { 0D, 24 } | Size: 03
#_0AA80A: db $FC, $59, $E8 ; 0x0128: Bed | { 05, 27 } | Size: 00
#_0AA80D: db $FF, $FF ; Layer01
#_0AA80F: db $FF, $FF ; Layer02
#_0AA811: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F5:
#_0AA813: db $22, $28 ; Door 0x28 | Dir:02 | Pos:04
#_0AA815: db $61, $00 ; Door 0x00 | Dir:01 | Pos:0C
#_0AA817: db $61, $12 ; Door 0x12 | Dir:01 | Pos:0C
#_0AA819: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00F8:
#_0AA81B: db $E1, $1C ; Floors and Layout
#_0AA81D: db $FC, $22, $81 ; 0x0101: Wall Inner Corner ▙ | { 02, 0A } | Size: 00
#_0AA820: db $18, $2B, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 0A } | Size: 03
#_0AA823: db $FC, $C2, $85 ; 0x0105: Wall Outer Corner ▜ | { 0C, 0A } | Size: 00
#_0AA826: db $32, $3B, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0C, 0E } | Size: 0B
#_0AA829: db $FC, $C9, $01 ; 0x0101: Wall Inner Corner ▙ | { 0C, 24 } | Size: 00
#_0AA82C: db $42, $93, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 10, 24 } | Size: 0B
#_0AA82F: db $FE, $69, $05 ; 0x0105: Wall Outer Corner ▜ | { 26, 24 } | Size: 00
#_0AA832: db $99, $A0, $61 ; 0x0061: Left Wall Vertic. ↕ | { 26, 28 } | Size: 04
#_0AA835: db $FE, $6C, $04 ; 0x0104: Wall Outer Corner ▟ | { 26, 30 } | Size: 00
#_0AA838: db $50, $A8, $0F ; 0x000F: Diagonal Wall ◥ | { 14, 2A } | Size: 00
#_0AA83B: db $69, $C2, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1A, 30 } | Size: 06
#_0AA83E: db $19, $AB, $01 ; 0x0001: Top Wall Horiz. ↔ | { 06, 2A } | Size: 07
#_0AA841: db $08, $B0, $0E ; 0x000E: Diagonal Wall ◣ | { 02, 2C } | Size: 00
#_0AA844: db $FC, $2A, $80 ; 0x0100: Wall Inner Corner ▛ | { 02, 2A } | Size: 00
#_0AA847: db $08, $B9, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 2E } | Size: 01
#_0AA84A: db $21, $CA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 08, 32 } | Size: 06
#_0AA84D: db $50, $CA, $0E ; 0x000E: Diagonal Wall ◣ | { 14, 32 } | Size: 02
#_0AA850: db $FE, $AE, $83 ; 0x0103: Wall Inner Corner ▟ | { 2A, 3A } | Size: 00
#_0AA853: db $AA, $93, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2A, 24 } | Size: 0B
#_0AA856: db $FE, $A8, $02 ; 0x0102: Wall Inner Corner ▜ | { 2A, 20 } | Size: 00
#_0AA859: db $5A, $82, $01 ; 0x0001: Top Wall Horiz. ↔ | { 16, 20 } | Size: 0A
#_0AA85C: db $FD, $28, $06 ; 0x0106: Wall Outer Corner ▙ | { 12, 20 } | Size: 00
#_0AA85F: db $4A, $39, $62 ; 0x0062: Right Wall Horiz. ↕ | { 12, 0E } | Size: 09
#_0AA862: db $FD, $22, $87 ; 0x0107: Wall Outer Corner ▛ | { 12, 0A } | Size: 00
#_0AA865: db $5A, $29, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 16, 0A } | Size: 09
#_0AA868: db $FE, $82, $83 ; 0x0103: Wall Inner Corner ▟ | { 28, 0A } | Size: 00
#_0AA86B: db $A0, $21, $62 ; 0x0062: Right Wall Horiz. ↕ | { 28, 08 } | Size: 01
#_0AA86E: db $FE, $81, $02 ; 0x0102: Wall Inner Corner ▜ | { 28, 04 } | Size: 00
#_0AA871: db $FD, $A4, $80 ; 0x0100: Wall Inner Corner ▛ | { 1A, 12 } | Size: 00
#_0AA874: db $7A, $49, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1E, 12 } | Size: 09
#_0AA877: db $FF, $04, $84 ; 0x0104: Wall Outer Corner ▟ | { 30, 12 } | Size: 00
#_0AA87A: db $C0, $3A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 30, 0E } | Size: 02
#_0AA87D: db $FF, $02, $80 ; 0x0100: Wall Inner Corner ▛ | { 30, 0A } | Size: 00
#_0AA880: db $D0, $29, $01 ; 0x0001: Top Wall Horiz. ↔ | { 34, 0A } | Size: 01
#_0AA883: db $FF, $62, $82 ; 0x0102: Wall Inner Corner ▜ | { 36, 0A } | Size: 00
#_0AA886: db $D8, $39, $62 ; 0x0062: Right Wall Horiz. ↕ | { 36, 0E } | Size: 01
#_0AA889: db $FF, $64, $06 ; 0x0106: Wall Outer Corner ▙ | { 36, 10 } | Size: 00
#_0AA88C: db $FF, $A4, $02 ; 0x0102: Wall Inner Corner ▜ | { 3A, 10 } | Size: 00
#_0AA88F: db $FF, $A9, $03 ; 0x0103: Wall Inner Corner ▟ | { 3A, 24 } | Size: 00
#_0AA892: db $D8, $92, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 36, 24 } | Size: 02
#_0AA895: db $FF, $29, $01 ; 0x0101: Wall Inner Corner ▙ | { 32, 24 } | Size: 00
#_0AA898: db $C9, $70, $61 ; 0x0061: Left Wall Vertic. ↕ | { 32, 1C } | Size: 04
#_0AA89B: db $FF, $26, $05 ; 0x0105: Wall Outer Corner ▜ | { 32, 18 } | Size: 00
#_0AA89E: db $7A, $62, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1E, 18 } | Size: 0A
#_0AA8A1: db $FD, $A6, $01 ; 0x0101: Wall Inner Corner ▙ | { 1A, 18 } | Size: 00
#_0AA8A4: db $68, $59, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1A, 16 } | Size: 01
#_0AA8A7: db $FC, $81, $38 ; 0x0138: Spiral Staircase Up | { 08, 04 } | Size: 00
#_0AA8AA: db $FE, $41, $38 ; 0x0138: Spiral Staircase Up | { 24, 04 } | Size: 00
#_0AA8AD: db $FD, $E4, $B8 ; 0x0138: Spiral Staircase Up | { 1E, 12 } | Size: 00
#_0AA8B0: db $FC, $6A, $B8 ; 0x0138: Spiral Staircase Up | { 06, 2A } | Size: 00
#_0AA8B3: db $E5, $4E, $F9 ; 0x0F99: Chest | { 39, 13 } | Size: 06
#_0AA8B6: db $E5, $5E, $F9 ; 0x0F99: Chest | { 39, 17 } | Size: 06
#_0AA8B9: db $E7, $6F, $FA ; 0x0FAF: Pot | { 39, 1B } | Size: 0F
#_0AA8BC: db $02, $3B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 0E } | Size: 0B
#_0AA8BF: db $02, $7A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 1E } | Size: 0A
#_0AA8C2: db $08, $C5, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 02, 31 } | Size: 01
#_0AA8C5: db $0B, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 36 } | Size: 0D
#_0AA8C8: db $49, $D8, $60 ; 0x0060: Ceiling ↕ | { 12, 36 } | Size: 04
#_0AA8CB: db $50, $DF, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 14, 37 } | Size: 03
#_0AA8CE: db $54, $A9, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 15, 2A } | Size: 01
#_0AA8D1: db $6A, $A1, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1A, 28 } | Size: 09
#_0AA8D4: db $31, $A3, $00 ; 0x0000: Ceiling ↔ | { 0C, 28 } | Size: 07
#_0AA8D7: db $B3, $09, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2C, 02 } | Size: 0D
#_0AA8DA: db $E8, $12, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 04 } | Size: 02
#_0AA8DD: db $B0, $29, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2C, 0A } | Size: 01
#_0AA8E0: db $73, $38, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1C, 0E } | Size: 0C
#_0AA8E3: db $68, $3A, $60 ; 0x0060: Ceiling ↕ | { 1A, 0E } | Size: 02
#_0AA8E6: db $58, $3B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 0E } | Size: 03
#_0AA8E9: db $5B, $70, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 1C } | Size: 0C
#_0AA8EC: db $9A, $70, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 26, 1C } | Size: 08
#_0AA8EF: db $B8, $81, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 20 } | Size: 01
#_0AA8F2: db $BB, $A3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 28 } | Size: 0F
#_0AA8F5: db $BB, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 36 } | Size: 0D
#_0AA8F8: db $FF, $FF ; Layer01
#_0AA8FA: db $FF, $FF ; Layer02
#_0AA8FC: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F8:
#_0AA8FE: db $71, $0E ; Door 0x0E | Dir:01 | Pos:0E
#_0AA900: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00E8:
#_0AA902: db $81, $1C ; Floors and Layout
#_0AA904: db $FC, $22, $81 ; 0x0101: Wall Inner Corner ▙ | { 02, 0A } | Size: 00
#_0AA907: db $18, $2B, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 0A } | Size: 03
#_0AA90A: db $FC, $C2, $85 ; 0x0105: Wall Outer Corner ▜ | { 0C, 0A } | Size: 00
#_0AA90D: db $33, $3A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0C, 0E } | Size: 0E
#_0AA910: db $FC, $CA, $84 ; 0x0104: Wall Outer Corner ▟ | { 0C, 2A } | Size: 00
#_0AA913: db $18, $AB, $01 ; 0x0001: Top Wall Horiz. ↔ | { 06, 2A } | Size: 03
#_0AA916: db $FC, $2A, $80 ; 0x0100: Wall Inner Corner ▛ | { 02, 2A } | Size: 00
#_0AA919: db $FC, $2C, $01 ; 0x0101: Wall Inner Corner ▙ | { 02, 30 } | Size: 00
#_0AA91C: db $19, $C2, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 30 } | Size: 06
#_0AA91F: db $FD, $2C, $03 ; 0x0103: Wall Inner Corner ▟ | { 12, 30 } | Size: 00
#_0AA922: db $4B, $3B, $62 ; 0x0062: Right Wall Horiz. ↕ | { 12, 0E } | Size: 0F
#_0AA925: db $48, $B2, $62 ; 0x0062: Right Wall Horiz. ↕ | { 12, 2C } | Size: 02
#_0AA928: db $FD, $22, $87 ; 0x0107: Wall Outer Corner ▛ | { 12, 0A } | Size: 00
#_0AA92B: db $58, $29, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 16, 0A } | Size: 01
#_0AA92E: db $FD, $82, $83 ; 0x0103: Wall Inner Corner ▟ | { 18, 0A } | Size: 00
#_0AA931: db $60, $21, $62 ; 0x0062: Right Wall Horiz. ↕ | { 18, 08 } | Size: 01
#_0AA934: db $FD, $81, $02 ; 0x0102: Wall Inner Corner ▜ | { 18, 04 } | Size: 00
#_0AA937: db $FE, $01, $00 ; 0x0100: Wall Inner Corner ▛ | { 20, 04 } | Size: 00
#_0AA93A: db $80, $21, $61 ; 0x0061: Left Wall Vertic. ↕ | { 20, 08 } | Size: 01
#_0AA93D: db $FE, $02, $81 ; 0x0101: Wall Inner Corner ▙ | { 20, 0A } | Size: 00
#_0AA940: db $90, $2B, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 24, 0A } | Size: 03
#_0AA943: db $FE, $A2, $85 ; 0x0105: Wall Outer Corner ▜ | { 2A, 0A } | Size: 00
#_0AA946: db $A9, $6A, $0E ; 0x000E: Diagonal Wall ◣ | { 2A, 1A } | Size: 06
#_0AA949: db $AA, $38, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 0E } | Size: 08
#_0AA94C: db $D8, $9A, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 36, 26 } | Size: 02
#_0AA94F: db $FF, $A9, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 26 } | Size: 00
#_0AA952: db $FD, $A4, $80 ; 0x0100: Wall Inner Corner ▛ | { 1A, 12 } | Size: 00
#_0AA955: db $78, $4A, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1E, 12 } | Size: 02
#_0AA958: db $FE, $24, $82 ; 0x0102: Wall Inner Corner ▜ | { 22, 12 } | Size: 00
#_0AA95B: db $6B, $72, $0E ; 0x000E: Diagonal Wall ◣ | { 1A, 1C } | Size: 0E
#_0AA95E: db $69, $59, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1A, 16 } | Size: 05
#_0AA961: db $A9, $C1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 30 } | Size: 05
#_0AA964: db $FE, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 2A, 3A } | Size: 00
#_0AA967: db $8B, $72, $0F ; 0x000F: Diagonal Wall ◥ | { 22, 1C } | Size: 0E
#_0AA96A: db $89, $59, $62 ; 0x0062: Right Wall Horiz. ↕ | { 22, 16 } | Size: 05
#_0AA96D: db $C9, $C1, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 30 } | Size: 05
#_0AA970: db $FF, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 32, 3A } | Size: 00
#_0AA973: db $FC, $81, $39 ; 0x0139: Spiral Staircase Down | { 08, 04 } | Size: 00
#_0AA976: db $FC, $6A, $B9 ; 0x0139: Spiral Staircase Down | { 06, 2A } | Size: 00
#_0AA979: db $FD, $E4, $B9 ; 0x0139: Spiral Staircase Down | { 1E, 12 } | Size: 00
#_0AA97C: db $FE, $41, $39 ; 0x0139: Spiral Staircase Down | { 24, 04 } | Size: 00
#_0AA97F: db $54, $1C, $A4 ; 0x00A4: Hole ↔ ↕ | { 15, 07 } | Size: 00
#_0AA982: db $3C, $40, $A4 ; 0x00A4: Hole ↔ ↕ | { 0F, 10 } | Size: 00
#_0AA985: db $CC, $38, $A4 ; 0x00A4: Hole ↔ ↕ | { 33, 0E } | Size: 00
#_0AA988: db $B4, $54, $A4 ; 0x00A4: Hole ↔ ↕ | { 2D, 15 } | Size: 00
#_0AA98B: db $D8, $80, $A4 ; 0x00A4: Hole ↔ ↕ | { 36, 20 } | Size: 00
#_0AA98E: db $C3, $23, $FA ; 0x0FAF: Pot | { 30, 08 } | Size: 0F
#_0AA991: db $02, $3B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 0E } | Size: 0B
#_0AA994: db $02, $7A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 1E } | Size: 0A
#_0AA997: db $0B, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 34 } | Size: 0E
#_0AA99A: db $4B, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 34 } | Size: 0E
#_0AA99D: db $6A, $87, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 1A, 21 } | Size: 0B
#_0AA9A0: db $6B, $C3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1A, 30 } | Size: 0F
#_0AA9A3: db $58, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 24 } | Size: 03
#_0AA9A6: db $58, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 14 } | Size: 03
#_0AA9A9: db $70, $12, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1C, 04 } | Size: 02
#_0AA9AC: db $5B, $38, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 0E } | Size: 0C
#_0AA9AF: db $58, $4A, $00 ; 0x0000: Ceiling ↔ | { 16, 12 } | Size: 02
#_0AA9B2: db $98, $3B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 26, 0E } | Size: 03
#_0AA9B5: db $98, $7A, $00 ; 0x0000: Ceiling ↔ | { 26, 1E } | Size: 02
#_0AA9B8: db $98, $7D, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 26, 1F } | Size: 01
#_0AA9BB: db $AC, $81, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 2B, 20 } | Size: 01
#_0AA9BE: db $B0, $95, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 2C, 25 } | Size: 01
#_0AA9C1: db $C4, $99, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 31, 26 } | Size: 01
#_0AA9C4: db $C8, $AC, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 32, 2B } | Size: 00
#_0AA9C7: db $D9, $AB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 2A } | Size: 07
#_0AA9CA: db $D9, $E8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 3A } | Size: 04
#_0AA9CD: db $FF, $FF ; Layer01
#_0AA9CF: db $FF, $FF ; Layer02
#_0AA9D1: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E8:
#_0AA9D3: db $81, $0E ; Door 0x0E | Dir:01 | Pos:10
#_0AA9D5: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00FD:
#_0AA9D7: db $E1, $1C ; Floors and Layout
#_0AA9D9: db $FC, $81, $00 ; 0x0100: Wall Inner Corner ▛ | { 08, 04 } | Size: 00
#_0AA9DC: db $09, $44, $0D ; 0x000D: Diagonal Wall ◤ | { 02, 11 } | Size: 04
#_0AA9DF: db $20, $22, $61 ; 0x0061: Left Wall Vertic. ↕ | { 08, 08 } | Size: 02
#_0AA9E2: db $08, $60, $0E ; 0x000E: Diagonal Wall ◣ | { 02, 18 } | Size: 00
#_0AA9E5: db $09, $49, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 12 } | Size: 05
#_0AA9E8: db $20, $7B, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 08, 1E } | Size: 03
#_0AA9EB: db $FC, $E7, $85 ; 0x0105: Wall Outer Corner ▜ | { 0E, 1E } | Size: 00
#_0AA9EE: db $3B, $88, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0E, 22 } | Size: 0C
#_0AA9F1: db $FC, $EE, $81 ; 0x0101: Wall Inner Corner ▙ | { 0E, 3A } | Size: 00
#_0AA9F4: db $FE, $6E, $83 ; 0x0103: Wall Inner Corner ▟ | { 26, 3A } | Size: 00
#_0AA9F7: db $98, $DA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 26, 36 } | Size: 02
#_0AA9FA: db $FE, $6C, $87 ; 0x0107: Wall Outer Corner ▛ | { 26, 32 } | Size: 00
#_0AA9FD: db $AA, $C8, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2A, 32 } | Size: 08
#_0AAA00: db $FF, $AC, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 32 } | Size: 00
#_0AAA03: db $FF, $AA, $82 ; 0x0102: Wall Inner Corner ▜ | { 3A, 2A } | Size: 00
#_0AAA06: db $AA, $A8, $01 ; 0x0001: Top Wall Horiz. ↔ | { 2A, 2A } | Size: 08
#_0AAA09: db $FE, $6A, $86 ; 0x0106: Wall Outer Corner ▙ | { 26, 2A } | Size: 00
#_0AAA0C: db $99, $88, $62 ; 0x0062: Right Wall Horiz. ↕ | { 26, 22 } | Size: 04
#_0AAA0F: db $FE, $67, $82 ; 0x0102: Wall Inner Corner ▜ | { 26, 1E } | Size: 00
#_0AAA12: db $71, $79, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1C, 1E } | Size: 05
#_0AAA15: db $49, $50, $0F ; 0x000F: Diagonal Wall ◥ | { 12, 14 } | Size: 04
#_0AAA18: db $4A, $20, $62 ; 0x0062: Right Wall Horiz. ↕ | { 12, 08 } | Size: 08
#_0AAA1B: db $FD, $21, $02 ; 0x0102: Wall Inner Corner ▜ | { 12, 04 } | Size: 00
#_0AAA1E: db $74, $24, $0D ; 0x000D: Diagonal Wall ◤ | { 1D, 09 } | Size: 00
#_0AAA21: db $74, $38, $0E ; 0x000E: Diagonal Wall ◣ | { 1D, 0E } | Size: 00
#_0AAA24: db $75, $28, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1D, 0A } | Size: 04
#_0AAA27: db $FF, $61, $02 ; 0x0102: Wall Inner Corner ▜ | { 36, 04 } | Size: 00
#_0AAA2A: db $D9, $22, $62 ; 0x0062: Right Wall Horiz. ↕ | { 36, 08 } | Size: 06
#_0AAA2D: db $8E, $52, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 23, 14 } | Size: 0A
#_0AAA30: db $FF, $65, $03 ; 0x0103: Wall Inner Corner ▟ | { 36, 14 } | Size: 00
#_0AAA33: db $FD, $19, $C8 ; 0x0108: Wall Corner (Lower) | { 11, 27 } | Size: 00
#_0AAA36: db $55, $9E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 15, 27 } | Size: 06
#_0AAA39: db $FE, $39, $CA ; 0x010A: Wall Corner (Lower) | { 23, 27 } | Size: 00
#_0AAA3C: db $44, $C8, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 11, 32 } | Size: 00
#_0AAA3F: db $45, $AD, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 11, 2B } | Size: 05
#_0AAA42: db $FD, $1D, $C9 ; 0x0109: Wall Corner (Lower) | { 11, 37 } | Size: 00
#_0AAA45: db $55, $DE, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 15, 37 } | Size: 06
#_0AAA48: db $8D, $AD, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 23, 2B } | Size: 05
#_0AAA4B: db $FE, $3D, $CB ; 0x010B: Wall Corner (Lower) | { 23, 37 } | Size: 00
#_0AAA4E: db $FD, $89, $F2 ; 0x0132: Stairs Going Up (layer) | { 18, 27 } | Size: 00
#_0AAA51: db $B3, $33, $FA ; 0x0FAF: Pot | { 2C, 0C } | Size: 0F
#_0AAA54: db $CB, $33, $FA ; 0x0FAF: Pot | { 32, 0C } | Size: 0F
#_0AAA57: db $AB, $BB, $FA ; 0x0FAF: Pot | { 2A, 2E } | Size: 0F
#_0AAA5A: db $AB, $C3, $FA ; 0x0FAF: Pot | { 2A, 30 } | Size: 0F
#_0AAA5D: db $44, $99, $22 ; 0x0022: Horizontal Rail ↔ | { 11, 26 } | Size: 01
#_0AAA60: db $80, $9B, $22 ; 0x0022: Horizontal Rail ↔ | { 20, 26 } | Size: 03
#_0AAA63: db $28, $48, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 0A, 12 } | Size: 00
#_0AAA66: db $99, $38, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 26, 0E } | Size: 04
#_0AAA69: db $FC, $E1, $38 ; 0x0138: Spiral Staircase Up | { 0E, 04 } | Size: 00
#_0AAA6C: db $FE, $E1, $38 ; 0x0138: Spiral Staircase Up | { 2E, 04 } | Size: 00
#_0AAA6F: db $08, $31, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 02, 0C } | Size: 01
#_0AAA72: db $01, $11, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 04 } | Size: 05
#_0AAA75: db $08, $75, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 02, 1D } | Size: 01
#_0AAA78: db $0A, $8B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 22 } | Size: 0B
#_0AAA7B: db $0A, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 32 } | Size: 0A
#_0AAA7E: db $AB, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2A, 36 } | Size: 0D
#_0AAA81: db $E8, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 36 } | Size: 01
#_0AAA84: db $58, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 04 } | Size: 03
#_0AAA87: db $64, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 19, 04 } | Size: 03
#_0AAA8A: db $59, $50, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 14 } | Size: 04
#_0AAA8D: db $74, $11, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 1D, 04 } | Size: 01
#_0AAA90: db $74, $4D, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 1D, 13 } | Size: 01
#_0AAA93: db $5C, $61, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 17, 18 } | Size: 01
#_0AAA96: db $E8, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 04 } | Size: 03
#_0AAA99: db $E8, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 14 } | Size: 03
#_0AAA9C: db $73, $60, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1C, 18 } | Size: 0C
#_0AAA9F: db $73, $68, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1C, 1A } | Size: 0C
#_0AAAA2: db $AB, $63, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2A, 18 } | Size: 0F
#_0AAAA5: db $AA, $A2, $00 ; 0x0000: Ceiling ↔ | { 2A, 28 } | Size: 0A
#_0AAAA8: db $E8, $90, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 24 } | Size: 00
#_0AAAAB: db $FF, $FF ; Layer01
#_0AAAAD: db $FF, $FF ; Layer02
#_0AAAAF: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00FD:
#_0AAAB1: db $A1, $10 ; Door 0x10 | Dir:01 | Pos:14
#_0AAAB3: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00ED:
#_0AAAB5: db $81, $1C ; Floors and Layout
#_0AAAB7: db $FC, $91, $00 ; 0x0100: Wall Inner Corner ▛ | { 09, 04 } | Size: 00
#_0AAABA: db $25, $22, $61 ; 0x0061: Left Wall Vertic. ↕ | { 09, 08 } | Size: 06
#_0AAABD: db $FC, $94, $C4 ; 0x0104: Wall Outer Corner ▟ | { 09, 13 } | Size: 00
#_0AAAC0: db $14, $4E, $01 ; 0x0001: Top Wall Horiz. ↔ | { 05, 13 } | Size: 02
#_0AAAC3: db $FC, $24, $C0 ; 0x0100: Wall Inner Corner ▛ | { 02, 13 } | Size: 00
#_0AAAC6: db $08, $6E, $0E ; 0x000E: Diagonal Wall ◣ | { 02, 1B } | Size: 02
#_0AAAC9: db $08, $6E, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 1B } | Size: 02
#_0AAACC: db $28, $8F, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0A, 23 } | Size: 03
#_0AAACF: db $40, $8F, $0E ; 0x000E: Diagonal Wall ◣ | { 10, 23 } | Size: 03
#_0AAAD2: db $55, $B0, $61 ; 0x0061: Left Wall Vertic. ↕ | { 15, 2C } | Size: 04
#_0AAAD5: db $FD, $5C, $C1 ; 0x0101: Wall Inner Corner ▙ | { 15, 33 } | Size: 00
#_0AAAD8: db $64, $CF, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 19, 33 } | Size: 03
#_0AAADB: db $FD, $FC, $C3 ; 0x0103: Wall Inner Corner ▟ | { 1F, 33 } | Size: 00
#_0AAADE: db $7E, $85, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1F, 21 } | Size: 09
#_0AAAE1: db $FD, $F7, $42 ; 0x0102: Wall Inner Corner ▜ | { 1F, 1D } | Size: 00
#_0AAAE4: db $6C, $76, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1B, 1D } | Size: 02
#_0AAAE7: db $FD, $77, $46 ; 0x0106: Wall Outer Corner ▙ | { 17, 1D } | Size: 00
#_0AAAEA: db $5C, $59, $10 ; 0x0010: Diagonal Wall ◢ | { 17, 16 } | Size: 01
#_0AAAED: db $5C, $5F, $62 ; 0x0062: Right Wall Horiz. ↕ | { 17, 17 } | Size: 03
#_0AAAF0: db $78, $43, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1E, 10 } | Size: 03
#_0AAAF3: db $FE, $44, $03 ; 0x0103: Wall Inner Corner ▟ | { 24, 10 } | Size: 00
#_0AAAF6: db $90, $39, $62 ; 0x0062: Right Wall Horiz. ↕ | { 24, 0E } | Size: 01
#_0AAAF9: db $FE, $42, $82 ; 0x0102: Wall Inner Corner ▜ | { 24, 0A } | Size: 00
#_0AAAFC: db $61, $2A, $01 ; 0x0001: Top Wall Horiz. ↔ | { 18, 0A } | Size: 06
#_0AAAFF: db $FD, $42, $86 ; 0x0106: Wall Outer Corner ▙ | { 14, 0A } | Size: 00
#_0AAB02: db $50, $21, $62 ; 0x0062: Right Wall Horiz. ↕ | { 14, 08 } | Size: 01
#_0AAB05: db $FD, $41, $02 ; 0x0102: Wall Inner Corner ▜ | { 14, 04 } | Size: 00
#_0AAB08: db $FE, $A1, $00 ; 0x0100: Wall Inner Corner ▛ | { 2A, 04 } | Size: 00
#_0AAB0B: db $A9, $20, $0E ; 0x000E: Diagonal Wall ◣ | { 2A, 08 } | Size: 04
#_0AAB0E: db $A8, $22, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 08 } | Size: 02
#_0AAB11: db $A9, $AC, $0D ; 0x000D: Diagonal Wall ◤ | { 2A, 2B } | Size: 04
#_0AAB14: db $C2, $4A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 30, 12 } | Size: 0A
#_0AAB17: db $A9, $B3, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 2C } | Size: 07
#_0AAB1A: db $FE, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 2A, 3A } | Size: 00
#_0AAB1D: db $D0, $E6, $10 ; 0x0010: Diagonal Wall ◢ | { 34, 39 } | Size: 02
#_0AAB20: db $D0, $12, $0F ; 0x000F: Diagonal Wall ◥ | { 34, 04 } | Size: 02
#_0AAB23: db $E3, $33, $62 ; 0x0062: Right Wall Horiz. ↕ | { 38, 0C } | Size: 0F
#_0AAB26: db $E1, $AA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 38, 2A } | Size: 06
#_0AAB29: db $31, $70, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 0C, 1C } | Size: 04
#_0AAB2C: db $68, $91, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 1A, 24 } | Size: 01
#_0AAB2F: db $FC, $E1, $39 ; 0x0139: Spiral Staircase Down | { 0E, 04 } | Size: 00
#_0AAB32: db $FE, $E1, $39 ; 0x0139: Spiral Staircase Down | { 2E, 04 } | Size: 00
#_0AAB35: db $20, $58, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 08, 16 } | Size: 00
#_0AAB38: db $20, $59, $27 ; 0x0027: Pit Top Edge ↔ | { 08, 16 } | Size: 01
#_0AAB3B: db $20, $5D, $6A ; 0x006A: Left Pit Edge ↕ | { 08, 17 } | Size: 01
#_0AAB3E: db $2C, $5D, $6B ; 0x006B: Right Pit Edge ↕ | { 0B, 17 } | Size: 01
#_0AAB41: db $20, $65, $28 ; 0x0028: Pit Bottom Edge ↔ | { 08, 19 } | Size: 01
#_0AAB44: db $3C, $36, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 0F, 0D } | Size: 02
#_0AAB47: db $3C, $35, $27 ; 0x0027: Pit Top Edge ↔ | { 0F, 0D } | Size: 01
#_0AAB4A: db $3C, $65, $28 ; 0x0028: Pit Bottom Edge ↔ | { 0F, 19 } | Size: 01
#_0AAB4D: db $3E, $3A, $6A ; 0x006A: Left Pit Edge ↕ | { 0F, 0E } | Size: 0A
#_0AAB50: db $4A, $3A, $6B ; 0x006B: Right Pit Edge ↕ | { 12, 0E } | Size: 0A
#_0AAB53: db $84, $34, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 21, 0D } | Size: 00
#_0AAB56: db $50, $80, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 14, 20 } | Size: 00
#_0AAB59: db $61, $B1, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 18, 2C } | Size: 05
#_0AAB5C: db $B4, $B8, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 2D, 2E } | Size: 00
#_0AAB5F: db $D4, $B8, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 35, 2E } | Size: 00
#_0AAB62: db $84, $35, $27 ; 0x0027: Pit Top Edge ↔ | { 21, 0D } | Size: 01
#_0AAB65: db $84, $41, $28 ; 0x0028: Pit Bottom Edge ↔ | { 21, 10 } | Size: 01
#_0AAB68: db $84, $39, $6A ; 0x006A: Left Pit Edge ↕ | { 21, 0E } | Size: 01
#_0AAB6B: db $90, $39, $6B ; 0x006B: Right Pit Edge ↕ | { 24, 0E } | Size: 01
#_0AAB6E: db $50, $81, $27 ; 0x0027: Pit Top Edge ↔ | { 14, 20 } | Size: 01
#_0AAB71: db $50, $8D, $28 ; 0x0028: Pit Bottom Edge ↔ | { 14, 23 } | Size: 01
#_0AAB74: db $50, $85, $6A ; 0x006A: Left Pit Edge ↕ | { 14, 21 } | Size: 01
#_0AAB77: db $5C, $85, $6B ; 0x006B: Right Pit Edge ↕ | { 17, 21 } | Size: 01
#_0AAB7A: db $61, $B1, $27 ; 0x0027: Pit Top Edge ↔ | { 18, 2C } | Size: 05
#_0AAB7D: db $61, $CD, $28 ; 0x0028: Pit Bottom Edge ↔ | { 18, 33 } | Size: 05
#_0AAB80: db $61, $B5, $6A ; 0x006A: Left Pit Edge ↕ | { 18, 2D } | Size: 05
#_0AAB83: db $7D, $B5, $6B ; 0x006B: Right Pit Edge ↕ | { 1F, 2D } | Size: 05
#_0AAB86: db $B4, $BA, $27 ; 0x0027: Pit Top Edge ↔ | { 2D, 2E } | Size: 02
#_0AAB89: db $B4, $C6, $28 ; 0x0028: Pit Bottom Edge ↔ | { 2D, 31 } | Size: 02
#_0AAB8C: db $B4, $BD, $6A ; 0x006A: Left Pit Edge ↕ | { 2D, 2F } | Size: 01
#_0AAB8F: db $C4, $BD, $6B ; 0x006B: Right Pit Edge ↕ | { 31, 2F } | Size: 01
#_0AAB92: db $D0, $BA, $27 ; 0x0027: Pit Top Edge ↔ | { 34, 2E } | Size: 02
#_0AAB95: db $D0, $C6, $28 ; 0x0028: Pit Bottom Edge ↔ | { 34, 31 } | Size: 02
#_0AAB98: db $D0, $BD, $6A ; 0x006A: Left Pit Edge ↕ | { 34, 2F } | Size: 01
#_0AAB9B: db $E0, $BD, $6B ; 0x006B: Right Pit Edge ↕ | { 38, 2F } | Size: 01
#_0AAB9E: db $05, $0F, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 01, 03 } | Size: 07
#_0AABA1: db $08, $83, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 02, 20 } | Size: 03
#_0AABA4: db $40, $A0, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 10, 28 } | Size: 00
#_0AABA7: db $03, $9F, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 27 } | Size: 0F
#_0AABAA: db $03, $DD, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 37 } | Size: 0D
#_0AABAD: db $35, $B3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 0D, 2C } | Size: 07
#_0AABB0: db $43, $DD, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 10, 37 } | Size: 0D
#_0AABB3: db $F0, $00, $60 ; 0x0060: Ceiling ↕ | { 3C, 00 } | Size: 00
#_0AABB6: db $D4, $13, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 35, 04 } | Size: 03
#_0AABB9: db $D4, $F7, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 35, 3D } | Size: 03
#_0AABBC: db $A8, $35, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 2A, 0D } | Size: 01
#_0AABBF: db $A8, $99, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 2A, 26 } | Size: 01
#_0AABC2: db $63, $09, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 18, 02 } | Size: 0D
#_0AABC5: db $81, $DD, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 20, 37 } | Size: 05
#_0AABC8: db $A0, $00, $60 ; 0x0060: Ceiling ↕ | { 28, 00 } | Size: 00
#_0AABCB: db $6C, $5C, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 1B, 17 } | Size: 00
#_0AABCE: db $7B, $51, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1E, 14 } | Size: 0D
#_0AABD1: db $6C, $60, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1B, 18 } | Size: 00
#_0AABD4: db $6E, $6E, $00 ; 0x0000: Ceiling ↔ | { 1B, 1B } | Size: 0A
#_0AABD7: db $A1, $4B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 28, 12 } | Size: 07
#_0AABDA: db $8C, $77, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 23, 1D } | Size: 03
#_0AABDD: db $A1, $88, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 28, 22 } | Size: 04
#_0AABE0: db $8C, $B6, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 23, 2D } | Size: 02
#_0AABE3: db $9B, $75, $60 ; 0x0060: Ceiling ↕ | { 26, 1D } | Size: 0D
#_0AABE6: db $FF, $FF ; Layer01
#_0AABE8: db $FF, $FF ; Layer02
#_0AABEA: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00ED:
#_0AABEC: db $81, $0E ; Door 0x0E | Dir:01 | Pos:10
#_0AABEE: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00FF:
#_0AABF0: db $E1, $14 ; Floors and Layout
#_0AABF2: db $FC, $25, $01 ; 0x0101: Wall Inner Corner ▙ | { 02, 14 } | Size: 00
#_0AABF5: db $18, $51, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 14 } | Size: 01
#_0AABF8: db $FC, $85, $05 ; 0x0105: Wall Outer Corner ▜ | { 08, 14 } | Size: 00
#_0AABFB: db $20, $61, $61 ; 0x0061: Left Wall Vertic. ↕ | { 08, 18 } | Size: 01
#_0AABFE: db $FC, $86, $81 ; 0x0101: Wall Inner Corner ▙ | { 08, 1A } | Size: 00
#_0AAC01: db $FD, $46, $83 ; 0x0103: Wall Inner Corner ▟ | { 14, 1A } | Size: 00
#_0AAC04: db $50, $61, $62 ; 0x0062: Right Wall Horiz. ↕ | { 14, 18 } | Size: 01
#_0AAC07: db $FD, $45, $07 ; 0x0107: Wall Outer Corner ▛ | { 14, 14 } | Size: 00
#_0AAC0A: db $60, $51, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 18, 14 } | Size: 01
#_0AAC0D: db $FD, $A5, $03 ; 0x0103: Wall Inner Corner ▟ | { 1A, 14 } | Size: 00
#_0AAC10: db $FE, $A1, $00 ; 0x0100: Wall Inner Corner ▛ | { 2A, 04 } | Size: 00
#_0AAC13: db $AA, $21, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 08 } | Size: 09
#_0AAC16: db $FE, $A6, $81 ; 0x0101: Wall Inner Corner ▙ | { 2A, 1A } | Size: 00
#_0AAC19: db $FF, $21, $02 ; 0x0102: Wall Inner Corner ▜ | { 32, 04 } | Size: 00
#_0AAC1C: db $CA, $21, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 08 } | Size: 09
#_0AAC1F: db $FF, $26, $83 ; 0x0103: Wall Inner Corner ▟ | { 32, 1A } | Size: 00
#_0AAC22: db $FC, $A9, $00 ; 0x0100: Wall Inner Corner ▛ | { 0A, 24 } | Size: 00
#_0AAC25: db $29, $A2, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0A, 28 } | Size: 06
#_0AAC28: db $FC, $AD, $01 ; 0x0101: Wall Inner Corner ▙ | { 0A, 34 } | Size: 00
#_0AAC2B: db $3A, $D3, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0E, 34 } | Size: 0B
#_0AAC2E: db $90, $D0, $0E ; 0x000E: Diagonal Wall ◣ | { 24, 34 } | Size: 00
#_0AAC31: db $FE, $49, $00 ; 0x0100: Wall Inner Corner ▛ | { 24, 24 } | Size: 00
#_0AAC34: db $90, $A3, $61 ; 0x0061: Left Wall Vertic. ↕ | { 24, 28 } | Size: 03
#_0AAC37: db $FE, $4B, $84 ; 0x0104: Wall Outer Corner ▟ | { 24, 2E } | Size: 00
#_0AAC3A: db $59, $BB, $01 ; 0x0001: Top Wall Horiz. ↔ | { 16, 2E } | Size: 07
#_0AAC3D: db $FD, $2B, $86 ; 0x0106: Wall Outer Corner ▙ | { 12, 2E } | Size: 00
#_0AAC40: db $48, $A3, $62 ; 0x0062: Right Wall Horiz. ↕ | { 12, 28 } | Size: 03
#_0AAC43: db $FD, $29, $02 ; 0x0102: Wall Inner Corner ▜ | { 12, 24 } | Size: 00
#_0AAC46: db $18, $34, $3D ; 0x003D: Floor Torch ↔ | { 06, 0D } | Size: 00
#_0AAC49: db $60, $34, $3D ; 0x003D: Floor Torch ↔ | { 18, 0D } | Size: 00
#_0AAC4C: db $20, $37, $33 ; 0x0033: Carpet Floor ↔ | { 08, 0D } | Size: 03
#_0AAC4F: db $1F, $32, $34 ; 0x0034: Carpet Contour ↔ | { 07, 0C } | Size: 0E
#_0AAC52: db $1F, $46, $34 ; 0x0034: Carpet Contour ↔ | { 07, 11 } | Size: 0E
#_0AAC55: db $B9, $22, $F9 ; 0x0F99: Chest | { 2E, 08 } | Size: 06
#_0AAC58: db $C1, $22, $F9 ; 0x0F99: Chest | { 30, 08 } | Size: 06
#_0AAC5B: db $BB, $43, $FA ; 0x0FAF: Pot | { 2E, 10 } | Size: 0F
#_0AAC5E: db $C3, $43, $FA ; 0x0FAF: Pot | { 30, 10 } | Size: 0F
#_0AAC61: db $FF, $69, $38 ; 0x0138: Spiral Staircase Up | { 36, 24 } | Size: 00
#_0AAC64: db $A2, $C0, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 28, 30 } | Size: 08
#_0AAC67: db $CA, $C2, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 32, 30 } | Size: 0A
#_0AAC6A: db $E3, $E3, $FA ; 0x0FAF: Pot | { 38, 38 } | Size: 0F
#_0AAC6D: db $01, $61, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 18 } | Size: 05
#_0AAC70: db $61, $61, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 18, 18 } | Size: 05
#_0AAC73: db $89, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 04 } | Size: 07
#_0AAC76: db $89, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 14 } | Size: 06
#_0AAC79: db $D9, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 04 } | Size: 07
#_0AAC7C: db $D9, $52, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 14 } | Size: 06
#_0AAC7F: db $09, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 24 } | Size: 07
#_0AAC82: db $09, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 34 } | Size: 06
#_0AAC85: db $2B, $E1, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 0A, 38 } | Size: 0D
#_0AAC88: db $62, $E1, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 18, 38 } | Size: 09
#_0AAC8B: db $90, $E5, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 24, 39 } | Size: 01
#_0AAC8E: db $5A, $8A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 22 } | Size: 0A
#_0AAC91: db $89, $91, $60 ; 0x0060: Ceiling ↕ | { 22, 24 } | Size: 05
#_0AAC94: db $FF, $FF ; Layer01
#_0AAC96: db $FF, $FF ; Layer02
#_0AAC98: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00FF:
#_0AAC9A: db $60, $2E ; Door 0x2E | Dir:00 | Pos:0C
#_0AAC9C: db $80, $2E ; Door 0x2E | Dir:00 | Pos:10
#_0AAC9E: db $81, $0E ; Door 0x0E | Dir:01 | Pos:10
#_0AACA0: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00EF:
#_0AACA2: db $81, $14 ; Floors and Layout
#_0AACA4: db $88, $4A, $0E ; 0x000E: Diagonal Wall ◣ | { 22, 12 } | Size: 02
#_0AACA7: db $D8, $66, $10 ; 0x0010: Diagonal Wall ◢ | { 36, 19 } | Size: 02
#_0AACAA: db $88, $4A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 22, 12 } | Size: 02
#_0AACAD: db $E8, $4A, $62 ; 0x0062: Right Wall Horiz. ↕ | { 3A, 12 } | Size: 02
#_0AACB0: db $FC, $A9, $00 ; 0x0100: Wall Inner Corner ▛ | { 0A, 24 } | Size: 00
#_0AACB3: db $28, $A3, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0A, 28 } | Size: 03
#_0AACB6: db $FC, $AB, $81 ; 0x0101: Wall Inner Corner ▙ | { 0A, 2E } | Size: 00
#_0AACB9: db $39, $BA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0E, 2E } | Size: 06
#_0AACBC: db $FD, $AB, $85 ; 0x0105: Wall Outer Corner ▜ | { 1A, 2E } | Size: 00
#_0AACBF: db $69, $C8, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1A, 32 } | Size: 04
#_0AACC2: db $FD, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 1A, 3A } | Size: 00
#_0AACC5: db $FE, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 22, 3A } | Size: 00
#_0AACC8: db $89, $C8, $62 ; 0x0062: Right Wall Horiz. ↕ | { 22, 32 } | Size: 04
#_0AACCB: db $FE, $2B, $87 ; 0x0107: Wall Outer Corner ▛ | { 22, 2E } | Size: 00
#_0AACCE: db $9A, $BA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 26, 2E } | Size: 0A
#_0AACD1: db $FF, $AB, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 2E } | Size: 00
#_0AACD4: db $FE, $69, $00 ; 0x0100: Wall Inner Corner ▛ | { 26, 24 } | Size: 00
#_0AACD7: db $FE, $6A, $04 ; 0x0104: Wall Outer Corner ▟ | { 26, 28 } | Size: 00
#_0AACDA: db $69, $A2, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1A, 28 } | Size: 06
#_0AACDD: db $FD, $6A, $06 ; 0x0106: Wall Outer Corner ▙ | { 16, 28 } | Size: 00
#_0AACE0: db $FD, $69, $02 ; 0x0102: Wall Inner Corner ▜ | { 16, 24 } | Size: 00
#_0AACE3: db $FC, $E9, $38 ; 0x0138: Spiral Staircase Up | { 0E, 24 } | Size: 00
#_0AACE6: db $FF, $69, $39 ; 0x0139: Spiral Staircase Down | { 36, 24 } | Size: 00
#_0AACE9: db $A4, $A1, $C3 ; 0x00C3: Bg2 Medium Overlay ↔ ↕ | { 29, 28 } | Size: 01
#_0AACEC: db $AF, $AC, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 2B, 2B } | Size: 0C
#_0AACEF: db $A4, $9D, $27 ; 0x0027: Pit Top Edge ↔ | { 29, 27 } | Size: 01
#_0AACF2: db $A5, $A1, $6A ; 0x006A: Left Pit Edge ↕ | { 29, 28 } | Size: 05
#_0AACF5: db $A7, $BB, $28 ; 0x0028: Pit Bottom Edge ↔ | { 29, 2E } | Size: 0F
#_0AACF8: db $B0, $A2, $6B ; 0x006B: Right Pit Edge ↕ | { 2C, 28 } | Size: 02
#_0AACFB: db $B3, $AC, $2D ; 0x002D: Pit Edge ↔ | { 2C, 2B } | Size: 0C
#_0AACFE: db $E8, $B1, $6B ; 0x006B: Right Pit Edge ↕ | { 3A, 2C } | Size: 01
#_0AAD01: db $99, $22, $F9 ; 0x0F99: Chest | { 26, 08 } | Size: 06
#_0AAD04: db $B1, $22, $F9 ; 0x0F99: Chest | { 2C, 08 } | Size: 06
#_0AAD07: db $C9, $22, $F9 ; 0x0F99: Chest | { 32, 08 } | Size: 06
#_0AAD0A: db $E1, $22, $F9 ; 0x0F99: Chest | { 38, 08 } | Size: 06
#_0AAD0D: db $B9, $2A, $F9 ; 0x0F99: Chest | { 2E, 0A } | Size: 06
#_0AAD10: db $98, $43, $B8 ; 0x00B8: Blue Peg Block ↔ | { 26, 10 } | Size: 03
#_0AAD13: db $B3, $38, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 2C, 0E } | Size: 0C
#_0AAD16: db $D8, $42, $B8 ; 0x00B8: Blue Peg Block ↔ | { 36, 10 } | Size: 02
#_0AAD19: db $88, $5F, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 22, 17 } | Size: 03
#_0AAD1C: db $DC, $77, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 37, 1D } | Size: 03
#_0AAD1F: db $09, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 24 } | Size: 07
#_0AAD22: db $0B, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 32 } | Size: 0E
#_0AAD25: db $49, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 32 } | Size: 06
#_0AAD28: db $9B, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 26, 32 } | Size: 0E
#_0AAD2B: db $D9, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 32 } | Size: 06
#_0AAD2E: db $6A, $90, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1A, 24 } | Size: 08
#_0AAD31: db $FF, $FF ; Layer01
#_0AAD33: db $FF, $FF ; Layer02
#_0AAD35: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00EF:
#_0AAD37: db $80, $38 ; Door 0x38 | Dir:00 | Pos:10
#_0AAD39: db $71, $0E ; Door 0x0E | Dir:01 | Pos:0E
#_0AAD3B: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00DF:
#_0AAD3D: db $51, $14 ; Floors and Layout
#_0AAD3F: db $FC, $89, $00 ; 0x0100: Wall Inner Corner ▛ | { 08, 24 } | Size: 00
#_0AAD42: db $21, $A0, $61 ; 0x0061: Left Wall Vertic. ↕ | { 08, 28 } | Size: 04
#_0AAD45: db $FC, $8C, $01 ; 0x0101: Wall Inner Corner ▙ | { 08, 30 } | Size: 00
#_0AAD48: db $31, $C1, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0C, 30 } | Size: 05
#_0AAD4B: db $FD, $6C, $05 ; 0x0105: Wall Outer Corner ▜ | { 16, 30 } | Size: 00
#_0AAD4E: db $58, $D3, $61 ; 0x0061: Left Wall Vertic. ↕ | { 16, 34 } | Size: 03
#_0AAD51: db $FD, $6E, $81 ; 0x0101: Wall Inner Corner ▙ | { 16, 3A } | Size: 00
#_0AAD54: db $FE, $69, $02 ; 0x0102: Wall Inner Corner ▜ | { 26, 24 } | Size: 00
#_0AAD57: db $9A, $A1, $62 ; 0x0062: Right Wall Horiz. ↕ | { 26, 28 } | Size: 09
#_0AAD5A: db $FE, $6E, $83 ; 0x0103: Wall Inner Corner ▟ | { 26, 3A } | Size: 00
#_0AAD5D: db $FC, $B9, $C8 ; 0x0108: Wall Corner (Lower) | { 0B, 27 } | Size: 00
#_0AAD60: db $3E, $9D, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0F, 27 } | Size: 09
#_0AAD63: db $FE, $39, $CA ; 0x010A: Wall Corner (Lower) | { 23, 27 } | Size: 00
#_0AAD66: db $2C, $AC, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0B, 2B } | Size: 00
#_0AAD69: db $FC, $BB, $49 ; 0x0109: Wall Corner (Lower) | { 0B, 2D } | Size: 00
#_0AAD6C: db $3D, $B4, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0F, 2D } | Size: 04
#_0AAD6F: db $FD, $9B, $4D ; 0x010D: Wall Corner (Lower) | { 19, 2D } | Size: 00
#_0AAD72: db $64, $C4, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 19, 31 } | Size: 00
#_0AAD75: db $FD, $9C, $89 ; 0x0109: Wall Corner (Lower) | { 19, 32 } | Size: 00
#_0AAD78: db $8C, $AF, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 23, 2B } | Size: 03
#_0AAD7B: db $FE, $3C, $8B ; 0x010B: Wall Corner (Lower) | { 23, 32 } | Size: 00
#_0AAD7E: db $74, $CA, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 1D, 32 } | Size: 02
#_0AAD81: db $78, $CB, $F9 ; 0x0F9C: Stair | { 1E, 32 } | Size: 03
#_0AAD84: db $64, $D9, $22 ; 0x0022: Horizontal Rail ↔ | { 19, 36 } | Size: 01
#_0AAD87: db $88, $D9, $22 ; 0x0022: Horizontal Rail ↔ | { 22, 36 } | Size: 01
#_0AAD8A: db $01, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 24 } | Size: 07
#_0AAD8D: db $0B, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 34 } | Size: 0E
#_0AAD90: db $48, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 34 } | Size: 02
#_0AAD93: db $AB, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2A, 24 } | Size: 0F
#_0AAD96: db $AB, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2A, 34 } | Size: 0E
#_0AAD99: db $E8, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 24 } | Size: 03
#_0AAD9C: db $E8, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 3A, 34 } | Size: 02
#_0AAD9F: db $FF, $FF ; Layer01
#_0AADA1: db $FC, $E9, $FB ; 0x013B: Spiral Staircase Down (Lower) | { 0E, 27 } | Size: 00
#_0AADA4: db $FF, $FF ; Layer02
#_0AADA6: db $2F, $9D, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0B, 27 } | Size: 0D
#_0AADA9: db $2F, $B4, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0B, 2D } | Size: 0C
#_0AADAC: db $6E, $9E, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1B, 27 } | Size: 0A
#_0AADAF: db $6A, $B9, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 1A, 2E } | Size: 09
#_0AADB2: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00DF:
#_0AADB4: db $71, $0E ; Door 0x0E | Dir:01 | Pos:0E
#_0AADB6: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00EB:
#_0AADB8: db $81, $04 ; Floors and Layout
#_0AADBA: db $FE, $A1, $00 ; 0x0100: Wall Inner Corner ▛ | { 2A, 04 } | Size: 00
#_0AADBD: db $A8, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 08 } | Size: 03
#_0AADC0: db $FE, $A3, $84 ; 0x0104: Wall Outer Corner ▟ | { 2A, 0E } | Size: 00
#_0AADC3: db $A0, $39, $01 ; 0x0001: Top Wall Horiz. ↔ | { 28, 0E } | Size: 01
#_0AADC6: db $91, $6C, $0E ; 0x000E: Diagonal Wall ◣ | { 24, 1B } | Size: 04
#_0AADC9: db $91, $47, $61 ; 0x0061: Left Wall Vertic. ↕ | { 24, 11 } | Size: 07
#_0AADCC: db $FE, $43, $80 ; 0x0100: Wall Inner Corner ▛ | { 24, 0E } | Size: 00
#_0AADCF: db $AA, $97, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 25 } | Size: 0B
#_0AADD2: db $FE, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 2A, 3A } | Size: 00
#_0AADD5: db $FF, $21, $02 ; 0x0102: Wall Inner Corner ▜ | { 32, 04 } | Size: 00
#_0AADD8: db $CB, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 08 } | Size: 0F
#_0AADDB: db $CA, $9A, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 26 } | Size: 0A
#_0AADDE: db $FF, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 32, 3A } | Size: 00
#_0AADE1: db $FE, $E1, $39 ; 0x0139: Spiral Staircase Down | { 2E, 04 } | Size: 00
#_0AADE4: db $AD, $48, $A4 ; 0x00A4: Hole ↔ ↕ | { 2B, 12 } | Size: 04
#_0AADE7: db $9F, $47, $FA ; 0x0FAF: Pot | { 27, 11 } | Size: 0F
#_0AADEA: db $A7, $47, $FA ; 0x0FAF: Pot | { 29, 11 } | Size: 0F
#_0AADED: db $B3, $73, $FA ; 0x0FAF: Pot | { 2C, 1C } | Size: 0F
#_0AADF0: db $BB, $73, $FA ; 0x0FAF: Pot | { 2E, 1C } | Size: 0F
#_0AADF3: db $C3, $73, $FA ; 0x0FAF: Pot | { 30, 1C } | Size: 0F
#_0AADF6: db $B8, $78, $A4 ; 0x00A4: Hole ↔ ↕ | { 2E, 1E } | Size: 00
#_0AADF9: db $89, $0A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 02 } | Size: 06
#_0AADFC: db $88, $00, $60 ; 0x0060: Ceiling ↕ | { 22, 00 } | Size: 00
#_0AADFF: db $90, $82, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 24, 20 } | Size: 02
#_0AAE02: db $89, $9B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 26 } | Size: 07
#_0AAE05: db $89, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 36 } | Size: 05
#_0AAE08: db $D9, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 04 } | Size: 07
#_0AAE0B: db $D9, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 14 } | Size: 07
#_0AAE0E: db $D9, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 24 } | Size: 07
#_0AAE11: db $D9, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 34 } | Size: 06
#_0AAE14: db $FF, $FF ; Layer01
#_0AAE16: db $FF, $FF ; Layer02
#_0AAE18: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00EB:
#_0AAE1A: db $81, $0E ; Door 0x0E | Dir:01 | Pos:10
#_0AAE1C: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00FB:
#_0AAE1E: db $E1, $1C ; Floors and Layout
#_0AAE20: db $FE, $A1, $00 ; 0x0100: Wall Inner Corner ▛ | { 2A, 04 } | Size: 00
#_0AAE23: db $91, $54, $0D ; 0x000D: Diagonal Wall ◤ | { 24, 15 } | Size: 04
#_0AAE26: db $A9, $20, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 08 } | Size: 04
#_0AAE29: db $6A, $C4, $0D ; 0x000D: Diagonal Wall ◤ | { 1A, 31 } | Size: 08
#_0AAE2C: db $92, $59, $61 ; 0x0061: Left Wall Vertic. ↕ | { 24, 16 } | Size: 09
#_0AAE2F: db $69, $C8, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1A, 32 } | Size: 04
#_0AAE32: db $FD, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 1A, 3A } | Size: 00
#_0AAE35: db $FE, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 22, 3A } | Size: 00
#_0AAE38: db $88, $D6, $10 ; 0x0010: Diagonal Wall ◢ | { 22, 35 } | Size: 02
#_0AAE3B: db $88, $DA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 22, 36 } | Size: 02
#_0AAE3E: db $A8, $BA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2A, 2E } | Size: 02
#_0AAE41: db $FE, $EB, $83 ; 0x0103: Wall Inner Corner ▟ | { 2E, 2E } | Size: 00
#_0AAE44: db $BA, $9C, $10 ; 0x0010: Diagonal Wall ◢ | { 2E, 27 } | Size: 08
#_0AAE47: db $B8, $A3, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2E, 28 } | Size: 03
#_0AAE4A: db $C9, $30, $0F ; 0x000F: Diagonal Wall ◥ | { 32, 0C } | Size: 04
#_0AAE4D: db $E1, $58, $62 ; 0x0062: Right Wall Horiz. ↕ | { 38, 16 } | Size: 04
#_0AAE50: db $C9, $20, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 08 } | Size: 04
#_0AAE53: db $FF, $21, $02 ; 0x0102: Wall Inner Corner ▜ | { 32, 04 } | Size: 00
#_0AAE56: db $FE, $E1, $38 ; 0x0138: Spiral Staircase Up | { 2E, 04 } | Size: 00
#_0AAE59: db $9C, $60, $A4 ; 0x00A4: Hole ↔ ↕ | { 27, 18 } | Size: 00
#_0AAE5C: db $D4, $60, $A4 ; 0x00A4: Hole ↔ ↕ | { 35, 18 } | Size: 00
#_0AAE5F: db $13, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 04, 04 } | Size: 0F
#_0AAE62: db $53, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 14, 04 } | Size: 0F
#_0AAE65: db $89, $12, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 04 } | Size: 06
#_0AAE68: db $90, $41, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 24, 10 } | Size: 01
#_0AAE6B: db $13, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 04, 14 } | Size: 0F
#_0AAE6E: db $53, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 14, 14 } | Size: 0F
#_0AAE71: db $13, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 04, 24 } | Size: 0F
#_0AAE74: db $13, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 04, 34 } | Size: 0E
#_0AAE77: db $69, $A1, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 1A, 28 } | Size: 05
#_0AAE7A: db $53, $90, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 14, 24 } | Size: 0C
#_0AAE7D: db $49, $A3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 28 } | Size: 07
#_0AAE80: db $49, $E1, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 38 } | Size: 05
#_0AAE83: db $9C, $D4, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 27, 35 } | Size: 00
#_0AAE86: db $9B, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 26, 36 } | Size: 0D
#_0AAE89: db $AF, $C9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2B, 32 } | Size: 0D
#_0AAE8C: db $CA, $A3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 28 } | Size: 0B
#_0AAE8F: db $D9, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 36 } | Size: 05
#_0AAE92: db $CD, $9D, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 33, 27 } | Size: 05
#_0AAE95: db $DC, $41, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 37, 10 } | Size: 01
#_0AAE98: db $D9, $12, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 04 } | Size: 06
#_0AAE9B: db $F3, $40, $60 ; 0x0060: Ceiling ↕ | { 3C, 10 } | Size: 0C
#_0AAE9E: db $FF, $FF ; Layer01
#_0AAEA0: db $FF, $FF ; Layer02
#_0AAEA2: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00FB:
#_0AAEA4: db $71, $0E ; Door 0x0E | Dir:01 | Pos:0E
#_0AAEA6: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00EE:
#_0AAEA8: db $81, $1C ; Floors and Layout
#_0AAEAA: db $09, $34, $0D ; 0x000D: Diagonal Wall ◤ | { 02, 0D } | Size: 04
#_0AAEAD: db $08, $3A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 0E } | Size: 02
#_0AAEB0: db $09, $C0, $0E ; 0x000E: Diagonal Wall ◣ | { 02, 30 } | Size: 04
#_0AAEB3: db $08, $C2, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 30 } | Size: 02
#_0AAEB6: db $FF, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 32, 3A } | Size: 00
#_0AAEB9: db $C8, $E1, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 38 } | Size: 01
#_0AAEBC: db $B4, $D3, $01 ; 0x0001: Top Wall Horiz. ↔ | { 2D, 34 } | Size: 03
#_0AAEBF: db $FF, $2D, $02 ; 0x0102: Wall Inner Corner ▜ | { 32, 34 } | Size: 00
#_0AAEC2: db $20, $B5, $0F ; 0x000F: Diagonal Wall ◥ | { 08, 2D } | Size: 01
#_0AAEC5: db $3F, $D3, $01 ; 0x0001: Top Wall Horiz. ↔ | { 0F, 34 } | Size: 0F
#_0AAEC8: db $20, $41, $10 ; 0x0010: Diagonal Wall ◢ | { 08, 10 } | Size: 01
#_0AAECB: db $23, $47, $62 ; 0x0062: Right Wall Horiz. ↕ | { 08, 11 } | Size: 0F
#_0AAECE: db $20, $BD, $62 ; 0x0062: Right Wall Horiz. ↕ | { 08, 2F } | Size: 01
#_0AAED1: db $3F, $2B, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0F, 0A } | Size: 0F
#_0AAED4: db $D1, $10, $0F ; 0x000F: Diagonal Wall ◥ | { 34, 04 } | Size: 04
#_0AAED7: db $D1, $A4, $10 ; 0x0010: Diagonal Wall ◢ | { 34, 29 } | Size: 04
#_0AAEDA: db $EA, $3B, $62 ; 0x0062: Right Wall Horiz. ↕ | { 3A, 0E } | Size: 0B
#_0AAEDD: db $B4, $2A, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2D, 0A } | Size: 02
#_0AAEE0: db $C4, $29, $0E ; 0x000E: Diagonal Wall ◣ | { 31, 0A } | Size: 01
#_0AAEE3: db $C4, $8D, $0D ; 0x000D: Diagonal Wall ◤ | { 31, 23 } | Size: 01
#_0AAEE6: db $D2, $44, $61 ; 0x0061: Left Wall Vertic. ↕ | { 34, 11 } | Size: 08
#_0AAEE9: db $73, $A8, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1C, 2A } | Size: 0C
#_0AAEEC: db $49, $80, $0E ; 0x000E: Diagonal Wall ◣ | { 12, 20 } | Size: 04
#_0AAEEF: db $FD, $25, $00 ; 0x0100: Wall Inner Corner ▛ | { 12, 14 } | Size: 00
#_0AAEF2: db $49, $62, $61 ; 0x0061: Left Wall Vertic. ↕ | { 12, 18 } | Size: 06
#_0AAEF5: db $5A, $52, $01 ; 0x0001: Top Wall Horiz. ↔ | { 16, 14 } | Size: 0A
#_0AAEF8: db $FE, $A5, $02 ; 0x0102: Wall Inner Corner ▜ | { 2A, 14 } | Size: 00
#_0AAEFB: db $A8, $61, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2A, 18 } | Size: 01
#_0AAEFE: db $FE, $A6, $83 ; 0x0103: Wall Inner Corner ▟ | { 2A, 1A } | Size: 00
#_0AAF01: db $71, $6B, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1C, 1A } | Size: 07
#_0AAF04: db $60, $75, $0F ; 0x000F: Diagonal Wall ◥ | { 18, 1D } | Size: 01
#_0AAF07: db $FD, $86, $87 ; 0x0107: Wall Outer Corner ▛ | { 18, 1A } | Size: 00
#_0AAF0A: db $60, $7D, $62 ; 0x0062: Right Wall Horiz. ↕ | { 18, 1F } | Size: 01
#_0AAF0D: db $60, $79, $62 ; 0x0062: Right Wall Horiz. ↕ | { 18, 1E } | Size: 01
#_0AAF10: db $7E, $91, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1F, 24 } | Size: 09
#_0AAF13: db $9C, $5C, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 27, 17 } | Size: 00
#_0AAF16: db $9C, $5D, $27 ; 0x0027: Pit Top Edge ↔ | { 27, 17 } | Size: 01
#_0AAF19: db $9C, $69, $28 ; 0x0028: Pit Bottom Edge ↔ | { 27, 1A } | Size: 01
#_0AAF1C: db $9C, $61, $6A ; 0x006A: Left Pit Edge ↕ | { 27, 18 } | Size: 01
#_0AAF1F: db $A8, $61, $6B ; 0x006B: Right Pit Edge ↕ | { 2A, 18 } | Size: 01
#_0AAF22: db $09, $11, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 02, 04 } | Size: 05
#_0AAF25: db $09, $D5, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 02, 35 } | Size: 05
#_0AAF28: db $D5, $11, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 35, 04 } | Size: 05
#_0AAF2B: db $D5, $B5, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 35, 2D } | Size: 05
#_0AAF2E: db $D9, $BB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 2E } | Size: 07
#_0AAF31: db $30, $C0, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 0C, 30 } | Size: 00
#_0AAF34: db $73, $B9, $00 ; 0x0000: Ceiling ↔ | { 1C, 2E } | Size: 0D
#_0AAF37: db $9B, $C0, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 26, 30 } | Size: 0C
#_0AAF3A: db $5B, $C0, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 30 } | Size: 0C
#_0AAF3D: db $49, $95, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 12, 25 } | Size: 05
#_0AAF40: db $41, $B1, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 10, 2C } | Size: 05
#_0AAF43: db $60, $BA, $00 ; 0x0000: Ceiling ↔ | { 18, 2E } | Size: 02
#_0AAF46: db $30, $44, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 0C, 11 } | Size: 00
#_0AAF49: db $43, $3B, $60 ; 0x0060: Ceiling ↕ | { 10, 0E } | Size: 0F
#_0AAF4C: db $30, $4B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 0C, 12 } | Size: 03
#_0AAF4F: db $30, $83, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 0C, 20 } | Size: 03
#_0AAF52: db $C0, $38, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 30, 0E } | Size: 00
#_0AAF55: db $C0, $80, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 30, 20 } | Size: 00
#_0AAF58: db $C9, $4B, $60 ; 0x0060: Ceiling ↕ | { 32, 12 } | Size: 07
#_0AAF5B: db $B8, $4B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 12 } | Size: 03
#_0AAF5E: db $4B, $3B, $00 ; 0x0000: Ceiling ↔ | { 12, 0E } | Size: 0F
#_0AAF61: db $4B, $40, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 10 } | Size: 0C
#_0AAF64: db $83, $40, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 20, 10 } | Size: 0C
#_0AAF67: db $70, $80, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 1C, 20 } | Size: 00
#_0AAF6A: db $72, $79, $00 ; 0x0000: Ceiling ↔ | { 1C, 1E } | Size: 09
#_0AAF6D: db $83, $80, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 20, 20 } | Size: 0C
#_0AAF70: db $FF, $FF ; Layer01
#_0AAF72: db $FF, $FF ; Layer02
#_0AAF74: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00EE:
#_0AAF76: db $81, $0E ; Door 0x0E | Dir:01 | Pos:10
#_0AAF78: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00FE:
#_0AAF7A: db $E5, $1C ; Floors and Layout
#_0AAF7C: db $FE, $04, $C0 ; 0x0100: Wall Inner Corner ▛ | { 20, 13 } | Size: 00
#_0AAF7F: db $81, $BA, $0A ; 0x000A: Diagonal Wall ◣ | { 20, 2E } | Size: 06
#_0AAF82: db $D1, $E4, $0C ; 0x000C: Diagonal Wall ◢ | { 34, 39 } | Size: 04
#_0AAF85: db $80, $C1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 20, 30 } | Size: 01
#_0AAF88: db $83, $5D, $61 ; 0x0061: Left Wall Vertic. ↕ | { 20, 17 } | Size: 0D
#_0AAF8B: db $E8, $C2, $62 ; 0x0062: Right Wall Horiz. ↕ | { 3A, 30 } | Size: 02
#_0AAF8E: db $FF, $A4, $C2 ; 0x0102: Wall Inner Corner ▜ | { 3A, 13 } | Size: 00
#_0AAF91: db $92, $4F, $01 ; 0x0001: Top Wall Horiz. ↔ | { 24, 13 } | Size: 0B
#_0AAF94: db $FE, $37, $08 ; 0x0108: Wall Corner (Lower) | { 23, 1C } | Size: 00
#_0AAF97: db $FF, $17, $0C ; 0x010C: Wall Corner (Lower) | { 31, 1C } | Size: 00
#_0AAF9A: db $9D, $70, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 27, 1C } | Size: 04
#_0AAF9D: db $FF, $15, $88 ; 0x0108: Wall Corner (Lower) | { 31, 16 } | Size: 00
#_0AAFA0: db $C4, $68, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 31, 1A } | Size: 00
#_0AAFA3: db $D4, $58, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 35, 16 } | Size: 00
#_0AAFA6: db $FF, $75, $8A ; 0x010A: Wall Corner (Lower) | { 37, 16 } | Size: 00
#_0AAFA9: db $D0, $D9, $1C ; 0x001C: Diagonal Wall ◢ | { 34, 36 } | Size: 01
#_0AAFAC: db $8C, $BB, $1A ; 0x001A: Diagonal Wall ◣ | { 23, 2E } | Size: 03
#_0AAFAF: db $B0, $DF, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2C, 37 } | Size: 03
#_0AAFB2: db $8E, $80, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 23, 20 } | Size: 08
#_0AAFB5: db $DF, $68, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 1A } | Size: 0C
#_0AAFB8: db $8C, $6C, $22 ; 0x0022: Horizontal Rail ↔ | { 23, 1B } | Size: 00
#_0AAFBB: db $C0, $5A, $69 ; 0x0069: Vertical Rail ↕ | { 30, 16 } | Size: 02
#_0AAFBE: db $B1, $A1, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 2C, 28 } | Size: 05
#_0AAFC1: db $B1, $62, $F9 ; 0x0F99: Chest | { 2C, 18 } | Size: 06
#_0AAFC4: db $FC, $A1, $72 ; 0x0132: Stairs Going Up (layer) | { 0A, 05 } | Size: 00
#_0AAFC7: db $0B, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 0F
#_0AAFCA: db $0B, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 14 } | Size: 0F
#_0AAFCD: db $0B, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 24 } | Size: 0F
#_0AAFD0: db $0B, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 34 } | Size: 0E
#_0AAFD3: db $43, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 10, 04 } | Size: 0F
#_0AAFD6: db $43, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 10, 14 } | Size: 0F
#_0AAFD9: db $43, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 10, 24 } | Size: 0F
#_0AAFDC: db $43, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 10, 34 } | Size: 0E
#_0AAFDF: db $81, $CF, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 20, 33 } | Size: 07
#_0AAFE2: db $D5, $F5, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 35, 3D } | Size: 05
#_0AAFE5: db $83, $0F, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 20, 03 } | Size: 0F
#_0AAFE8: db $C3, $0F, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 30, 03 } | Size: 0F
#_0AAFEB: db $FF, $FF ; Layer01
#_0AAFED: db $FF, $FF ; Layer02
#_0AAFEF: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00FE:
#_0AAFF1: db $B1, $10 ; Door 0x10 | Dir:01 | Pos:16
#_0AAFF3: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00F9:
#_0AAFF5: db $E1, $1C ; Floors and Layout
#_0AAFF7: db $2B, $D7, $0D ; 0x000D: Diagonal Wall ◤ | { 0A, 35 } | Size: 0F
#_0AAFFA: db $7E, $83, $0D ; 0x000D: Diagonal Wall ◤ | { 1F, 20 } | Size: 0B
#_0AAFFD: db $B1, $22, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2C, 08 } | Size: 06
#_0AB000: db $FE, $C1, $00 ; 0x0100: Wall Inner Corner ▛ | { 2C, 04 } | Size: 00
#_0AB003: db $E1, $20, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 38, 08 } | Size: 04
#_0AB006: db $E8, $13, $01 ; 0x0001: Top Wall Horiz. ↔ | { 3A, 04 } | Size: 03
#_0AB009: db $F0, $2A, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 3C, 0A } | Size: 02
#_0AB00C: db $C9, $4C, $10 ; 0x0010: Diagonal Wall ◢ | { 32, 13 } | Size: 04
#_0AB00F: db $28, $DA, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0A, 36 } | Size: 02
#_0AB012: db $FC, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 0A, 3A } | Size: 00
#_0AB015: db $53, $E7, $10 ; 0x0010: Diagonal Wall ◢ | { 14, 39 } | Size: 0F
#_0AB018: db $A5, $93, $10 ; 0x0010: Diagonal Wall ◢ | { 29, 24 } | Size: 07
#_0AB01B: db $C9, $50, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 14 } | Size: 04
#_0AB01E: db $2B, $8B, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 0A, 22 } | Size: 0F
#_0AB021: db $7A, $51, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 1E, 14 } | Size: 09
#_0AB024: db $0B, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 0F
#_0AB027: db $4B, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 04 } | Size: 0F
#_0AB02A: db $82, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 20, 04 } | Size: 0B
#_0AB02D: db $0B, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 14 } | Size: 0F
#_0AB030: db $4A, $4B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 12 } | Size: 0B
#_0AB033: db $09, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 24 } | Size: 07
#_0AB036: db $09, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 34 } | Size: 06
#_0AB039: db $57, $F7, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 15, 3D } | Size: 0F
#_0AB03C: db $A6, $A5, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 29, 29 } | Size: 09
#_0AB03F: db $A3, $AB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 28, 2A } | Size: 0F
#_0AB042: db $A3, $E8, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 28, 3A } | Size: 0C
#_0AB045: db $DC, $4D, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 37, 13 } | Size: 01
#_0AB048: db $F0, $3B, $60 ; 0x0060: Ceiling ↕ | { 3C, 0E } | Size: 03
#_0AB04B: db $D9, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 14 } | Size: 07
#_0AB04E: db $D9, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 24 } | Size: 07
#_0AB051: db $D9, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 34 } | Size: 06
#_0AB054: db $FF, $FF ; Layer01
#_0AB056: db $FF, $FF ; Layer02
#_0AB058: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F9:
#_0AB05A: db $61, $0E ; Door 0x0E | Dir:01 | Pos:0C
#_0AB05C: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00FA:
#_0AB05E: db $51, $1C ; Floors and Layout
#_0AB060: db $01, $20, $C4 ; 0x00C4: Floor1 ↔ ↕ | { 00, 08 } | Size: 04
#_0AB063: db $00, $13, $01 ; 0x0001: Top Wall Horiz. ↔ | { 00, 04 } | Size: 03
#_0AB066: db $FC, $22, $85 ; 0x0105: Wall Outer Corner ▜ | { 02, 0A } | Size: 00
#_0AB069: db $00, $29, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 00, 0A } | Size: 01
#_0AB06C: db $FD, $A1, $02 ; 0x0102: Wall Inner Corner ▜ | { 1A, 04 } | Size: 00
#_0AB06F: db $6A, $22, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1A, 08 } | Size: 0A
#_0AB072: db $FD, $A6, $C6 ; 0x0106: Wall Outer Corner ▙ | { 1A, 1B } | Size: 00
#_0AB075: db $FC, $B2, $C8 ; 0x0108: Wall Corner (Lower) | { 0B, 0B } | Size: 00
#_0AB078: db $3C, $2F, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 0F, 0B } | Size: 03
#_0AB07B: db $FD, $72, $CA ; 0x010A: Wall Corner (Lower) | { 17, 0B } | Size: 00
#_0AB07E: db $2D, $3E, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0B, 0F } | Size: 06
#_0AB081: db $5D, $3E, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 17, 0F } | Size: 06
#_0AB084: db $FC, $C6, $94 ; 0x0114: Wall S (Lower) | { 0C, 1A } | Size: 00
#_0AB087: db $FD, $66, $96 ; 0x0116: Wall S (Lower) | { 16, 1A } | Size: 00
#_0AB08A: db $2C, $9E, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0B, 27 } | Size: 02
#_0AB08D: db $FC, $BB, $0C ; 0x010C: Wall Corner (Lower) | { 0B, 2C } | Size: 00
#_0AB090: db $09, $C0, $0A ; 0x000A: Diagonal Wall ◣ | { 02, 30 } | Size: 04
#_0AB093: db $51, $E4, $0C ; 0x000C: Diagonal Wall ◢ | { 14, 39 } | Size: 04
#_0AB096: db $08, $BB, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 2E } | Size: 03
#_0AB099: db $69, $A2, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1A, 28 } | Size: 06
#_0AB09C: db $FD, $A9, $47 ; 0x0107: Wall Outer Corner ▛ | { 1A, 25 } | Size: 00
#_0AB09F: db $14, $C1, $1A ; 0x001A: Diagonal Wall ◣ | { 05, 30 } | Size: 01
#_0AB0A2: db $50, $D9, $1C ; 0x001C: Diagonal Wall ◢ | { 14, 36 } | Size: 01
#_0AB0A5: db $30, $DF, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0C, 37 } | Size: 03
#_0AB0A8: db $FC, $5B, $08 ; 0x0108: Wall Corner (Lower) | { 05, 2C } | Size: 00
#_0AB0AB: db $24, $B0, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 09, 2C } | Size: 00
#_0AB0AE: db $14, $C1, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 30 } | Size: 01
#_0AB0B1: db $5C, $C8, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 17, 32 } | Size: 00
#_0AB0B4: db $5D, $9D, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 17, 27 } | Size: 05
#_0AB0B7: db $FC, $C9, $D5 ; 0x0115: Wall S (Lower) | { 0C, 27 } | Size: 00
#_0AB0BA: db $FD, $69, $D7 ; 0x0117: Wall S (Lower) | { 16, 27 } | Size: 00
#_0AB0BD: db $2C, $76, $2F ; 0x002F: Rail Wall ↔ | { 0B, 1D } | Size: 02
#_0AB0C0: db $2C, $96, $30 ; 0x0030: Rail Wall ↔ | { 0B, 25 } | Size: 02
#_0AB0C3: db $14, $AE, $22 ; 0x0022: Horizontal Rail ↔ | { 05, 2B } | Size: 02
#_0AB0C6: db $28, $97, $69 ; 0x0069: Vertical Rail ↕ | { 0A, 25 } | Size: 03
#_0AB0C9: db $2B, $95, $22 ; 0x0022: Horizontal Rail ↔ | { 0A, 25 } | Size: 0D
#_0AB0CC: db $2B, $79, $22 ; 0x0022: Horizontal Rail ↔ | { 0A, 1E } | Size: 0D
#_0AB0CF: db $2B, $1F, $69 ; 0x0069: Vertical Rail ↕ | { 0A, 07 } | Size: 0F
#_0AB0D2: db $28, $63, $69 ; 0x0069: Vertical Rail ↕ | { 0A, 18 } | Size: 03
#_0AB0D5: db $28, $29, $22 ; 0x0022: Horizontal Rail ↔ | { 0A, 0A } | Size: 01
#_0AB0D8: db $58, $29, $22 ; 0x0022: Horizontal Rail ↔ | { 16, 0A } | Size: 01
#_0AB0DB: db $FC, $E1, $38 ; 0x0138: Spiral Staircase Up | { 0E, 04 } | Size: 00
#_0AB0DE: db $FD, $22, $F1 ; 0x0131: Stairs Going Up2 (layer) | { 12, 0B } | Size: 00
#_0AB0E1: db $09, $D5, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 02, 35 } | Size: 05
#_0AB0E4: db $55, $F5, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 15, 3D } | Size: 05
#_0AB0E7: db $78, $6E, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1E, 1B } | Size: 02
#_0AB0EA: db $88, $62, $61 ; 0x0061: Left Wall Vertic. ↕ | { 22, 18 } | Size: 02
#_0AB0ED: db $FE, $26, $C4 ; 0x0104: Wall Outer Corner ▟ | { 22, 1B } | Size: 00
#_0AB0F0: db $FE, $25, $00 ; 0x0100: Wall Inner Corner ▛ | { 22, 14 } | Size: 00
#_0AB0F3: db $99, $53, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 14 } | Size: 07
#_0AB0F6: db $FF, $45, $02 ; 0x0102: Wall Inner Corner ▜ | { 34, 14 } | Size: 00
#_0AB0F9: db $D1, $63, $62 ; 0x0062: Right Wall Horiz. ↕ | { 34, 18 } | Size: 07
#_0AB0FC: db $FF, $49, $43 ; 0x0103: Wall Inner Corner ▟ | { 34, 25 } | Size: 00
#_0AB0FF: db $7A, $97, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1E, 25 } | Size: 0B
#_0AB102: db $A2, $62, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 28, 18 } | Size: 0A
#_0AB105: db $9E, $62, $3F ; 0x003F: Water Edge ↔ | { 27, 18 } | Size: 0A
#_0AB108: db $9E, $66, $79 ; 0x0079: Water Edge ↕ | { 27, 19 } | Size: 0A
#_0AB10B: db $9E, $92, $40 ; 0x0040: Water Edge ↔ | { 27, 24 } | Size: 0A
#_0AB10E: db $CE, $66, $7A ; 0x007A: Water Edge ↕ | { 33, 19 } | Size: 0A
#_0AB111: db $7B, $0C, $60 ; 0x0060: Ceiling ↕ | { 1E, 03 } | Size: 0C
#_0AB114: db $83, $0C, $60 ; 0x0060: Ceiling ↕ | { 20, 03 } | Size: 0C
#_0AB117: db $8B, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 04 } | Size: 0F
#_0AB11A: db $CA, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 04 } | Size: 0B
#_0AB11D: db $E1, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 38, 14 } | Size: 07
#_0AB120: db $E1, $91, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 38, 24 } | Size: 05
#_0AB123: db $7B, $A7, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1E, 29 } | Size: 0F
#_0AB126: db $BB, $A7, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 29 } | Size: 0F
#_0AB129: db $7B, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1E, 36 } | Size: 0D
#_0AB12C: db $BB, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 36 } | Size: 0D
#_0AB12F: db $FF, $FF ; Layer01
#_0AB131: db $31, $75, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0C, 1D } | Size: 05
#_0AB134: db $59, $75, $62 ; 0x0062: Right Wall Horiz. ↕ | { 16, 1D } | Size: 05
#_0AB137: db $30, $EE, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0C, 3B } | Size: 02
#_0AB13A: db $40, $EE, $62 ; 0x0062: Right Wall Horiz. ↕ | { 10, 3B } | Size: 02
#_0AB13D: db $3D, $49, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 0F, 12 } | Size: 05
#_0AB140: db $40, $B1, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 10, 2C } | Size: 01
#_0AB143: db $FF, $FF ; Layer02
#_0AB145: db $2F, $33, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0B, 0C } | Size: 0F
#_0AB148: db $2F, $64, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0B, 19 } | Size: 0C
#_0AB14B: db $2F, $9E, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0B, 27 } | Size: 0E
#_0AB14E: db $17, $B1, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 05, 2C } | Size: 0D
#_0AB151: db $4D, $C0, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 13, 30 } | Size: 04
#_0AB154: db $31, $CD, $C6 ; 0x00C6: Bg2 Large Overlay ↔ ↕ | { 0C, 33 } | Size: 05
#_0AB157: db $14, $D3, $AB ; 0x00AB: Diagonal Ceiling ◥ | { 05, 34 } | Size: 03
#_0AB15A: db $50, $D3, $A9 ; 0x00A9: Diagonal Ceiling ◤ | { 14, 34 } | Size: 03
#_0AB15D: db $35, $72, $31 ; 0x0031: Unused | { 0D, 1C } | Size: 06
#_0AB160: db $35, $9E, $32 ; 0x0032: Unused | { 0D, 27 } | Size: 06
#_0AB163: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00FA:
#_0AB165: db $91, $04 ; Door 0x04 | Dir:01 | Pos:12
#_0AB167: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00EA:
#_0AB169: db $81, $1C ; Floors and Layout
#_0AB16B: db $FC, $A1, $00 ; 0x0100: Wall Inner Corner ▛ | { 0A, 04 } | Size: 00
#_0AB16E: db $28, $22, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0A, 08 } | Size: 02
#_0AB171: db $FC, $A3, $01 ; 0x0101: Wall Inner Corner ▙ | { 0A, 0C } | Size: 00
#_0AB174: db $39, $33, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0E, 0C } | Size: 07
#_0AB177: db $FD, $C3, $05 ; 0x0105: Wall Outer Corner ▜ | { 1C, 0C } | Size: 00
#_0AB17A: db $70, $41, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1C, 10 } | Size: 01
#_0AB17D: db $FD, $C4, $84 ; 0x0104: Wall Outer Corner ▟ | { 1C, 12 } | Size: 00
#_0AB180: db $51, $48, $01 ; 0x0001: Top Wall Horiz. ↔ | { 14, 12 } | Size: 04
#_0AB183: db $FD, $04, $80 ; 0x0100: Wall Inner Corner ▛ | { 10, 12 } | Size: 00
#_0AB186: db $40, $5B, $61 ; 0x0061: Left Wall Vertic. ↕ | { 10, 16 } | Size: 03
#_0AB189: db $FD, $07, $04 ; 0x0104: Wall Outer Corner ▟ | { 10, 1C } | Size: 00
#_0AB18C: db $28, $73, $01 ; 0x0001: Top Wall Horiz. ↔ | { 0A, 1C } | Size: 03
#_0AB18F: db $FC, $67, $00 ; 0x0100: Wall Inner Corner ▛ | { 06, 1C } | Size: 00
#_0AB192: db $1B, $81, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 20 } | Size: 0D
#_0AB195: db $FC, $6E, $81 ; 0x0101: Wall Inner Corner ▙ | { 06, 3A } | Size: 00
#_0AB198: db $50, $E4, $10 ; 0x0010: Diagonal Wall ◢ | { 14, 39 } | Size: 00
#_0AB19B: db $5A, $8B, $62 ; 0x0062: Right Wall Horiz. ↕ | { 16, 22 } | Size: 0B
#_0AB19E: db $FD, $67, $87 ; 0x0107: Wall Outer Corner ▛ | { 16, 1E } | Size: 00
#_0AB1A1: db $69, $79, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1A, 1E } | Size: 05
#_0AB1A4: db $FE, $47, $83 ; 0x0103: Wall Inner Corner ▟ | { 24, 1E } | Size: 00
#_0AB1A7: db $92, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 24, 08 } | Size: 0B
#_0AB1AA: db $FE, $41, $02 ; 0x0102: Wall Inner Corner ▜ | { 24, 04 } | Size: 00
#_0AB1AD: db $FC, $E1, $39 ; 0x0139: Spiral Staircase Down | { 0E, 04 } | Size: 00
#_0AB1B0: db $39, $80, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 0E, 20 } | Size: 04
#_0AB1B3: db $39, $7E, $27 ; 0x0027: Pit Top Edge ↔ | { 0E, 1F } | Size: 06
#_0AB1B6: db $39, $92, $28 ; 0x0028: Pit Bottom Edge ↔ | { 0E, 24 } | Size: 06
#_0AB1B9: db $38, $83, $6A ; 0x006A: Left Pit Edge ↕ | { 0E, 20 } | Size: 03
#_0AB1BC: db $58, $83, $6B ; 0x006B: Right Pit Edge ↕ | { 16, 20 } | Size: 03
#_0AB1BF: db $08, $00, $60 ; 0x0060: Ceiling ↕ | { 02, 00 } | Size: 00
#_0AB1C2: db $10, $00, $60 ; 0x0060: Ceiling ↕ | { 04, 00 } | Size: 00
#_0AB1C5: db $18, $0B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 06, 02 } | Size: 03
#_0AB1C8: db $12, $42, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 04, 10 } | Size: 0A
#_0AB1CB: db $2A, $41, $00 ; 0x0000: Ceiling ↔ | { 0A, 10 } | Size: 09
#_0AB1CE: db $54, $F5, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 15, 3D } | Size: 01
#_0AB1D1: db $5B, $4C, $F9 ; 0x0F93: Telepathic Tile | { 16, 13 } | Size: 0C
#_0AB1D4: db $48, $A8, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 12, 2A } | Size: 00
#_0AB1D7: db $FD, $C6, $20 ; 0x0120: Torch Lit | { 1C, 18 } | Size: 00
#_0AB1DA: db $FE, $06, $20 ; 0x0120: Torch Lit | { 20, 18 } | Size: 00
#_0AB1DD: db $6B, $8B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1A, 22 } | Size: 0F
#_0AB1E0: db $6B, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1A, 32 } | Size: 0E
#_0AB1E3: db $A3, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 28, 04 } | Size: 0F
#_0AB1E6: db $A3, $53, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 28, 14 } | Size: 0F
#_0AB1E9: db $A3, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 28, 24 } | Size: 0F
#_0AB1EC: db $A3, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 28, 34 } | Size: 0E
#_0AB1EF: db $FF, $FF ; Layer01
#_0AB1F1: db $FF, $FF ; Layer02
#_0AB1F3: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00EA:
#_0AB1F5: db $61, $0E ; Door 0x0E | Dir:01 | Pos:0C
#_0AB1F7: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00E6:
#_0AB1F9: db $E5, $1C ; Floors and Layout
#_0AB1FB: db $23, $CF, $09 ; 0x0009: Diagonal Wall ◤ | { 08, 33 } | Size: 0F
#_0AB1FE: db $76, $7B, $09 ; 0x0009: Diagonal Wall ◤ | { 1D, 1E } | Size: 0B
#_0AB201: db $B8, $34, $09 ; 0x0009: Diagonal Wall ◤ | { 2E, 0D } | Size: 00
#_0AB204: db $D0, $23, $01 ; 0x0001: Top Wall Horiz. ↔ | { 34, 08 } | Size: 03
#_0AB207: db $20, $D3, $61 ; 0x0061: Left Wall Vertic. ↕ | { 08, 34 } | Size: 03
#_0AB20A: db $FC, $8E, $81 ; 0x0101: Wall Inner Corner ▙ | { 08, 3A } | Size: 00
#_0AB20D: db $FD, $8E, $83 ; 0x0103: Wall Inner Corner ▟ | { 18, 3A } | Size: 00
#_0AB210: db $60, $E1, $62 ; 0x0062: Right Wall Horiz. ↕ | { 18, 38 } | Size: 01
#_0AB213: db $FD, $8D, $07 ; 0x0107: Wall Outer Corner ▛ | { 18, 34 } | Size: 00
#_0AB216: db $70, $D2, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1C, 34 } | Size: 02
#_0AB219: db $FE, $0D, $03 ; 0x0103: Wall Inner Corner ▟ | { 20, 34 } | Size: 00
#_0AB21C: db $80, $C2, $62 ; 0x0062: Right Wall Horiz. ↕ | { 20, 30 } | Size: 02
#_0AB21F: db $FE, $0B, $07 ; 0x0107: Wall Outer Corner ▛ | { 20, 2C } | Size: 00
#_0AB222: db $90, $B2, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 24, 2C } | Size: 02
#_0AB225: db $FE, $8B, $03 ; 0x0103: Wall Inner Corner ▟ | { 28, 2C } | Size: 00
#_0AB228: db $A0, $A2, $62 ; 0x0062: Right Wall Horiz. ↕ | { 28, 28 } | Size: 02
#_0AB22B: db $FE, $89, $07 ; 0x0107: Wall Outer Corner ▛ | { 28, 24 } | Size: 00
#_0AB22E: db $B0, $92, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2C, 24 } | Size: 02
#_0AB231: db $FF, $09, $03 ; 0x0103: Wall Inner Corner ▟ | { 30, 24 } | Size: 00
#_0AB234: db $C0, $82, $62 ; 0x0062: Right Wall Horiz. ↕ | { 30, 20 } | Size: 02
#_0AB237: db $FF, $07, $07 ; 0x0107: Wall Outer Corner ▛ | { 30, 1C } | Size: 00
#_0AB23A: db $FF, $A7, $03 ; 0x0103: Wall Inner Corner ▟ | { 3A, 1C } | Size: 00
#_0AB23D: db $FF, $A2, $02 ; 0x0102: Wall Inner Corner ▜ | { 3A, 08 } | Size: 00
#_0AB240: db $D0, $73, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 34, 1C } | Size: 03
#_0AB243: db $2F, $CF, $19 ; 0x0019: Diagonal Wall ◤ | { 0B, 33 } | Size: 0F
#_0AB246: db $83, $7A, $19 ; 0x0019: Diagonal Wall ◤ | { 20, 1E } | Size: 0E
#_0AB249: db $D0, $2D, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 34, 0B } | Size: 01
#_0AB24C: db $FF, $72, $CA ; 0x010A: Wall Corner (Lower) | { 37, 0B } | Size: 00
#_0AB24F: db $2C, $D1, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 0B, 34 } | Size: 01
#_0AB252: db $FC, $BD, $C9 ; 0x0109: Wall Corner (Lower) | { 0B, 37 } | Size: 00
#_0AB255: db $3C, $DE, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0F, 37 } | Size: 02
#_0AB258: db $FD, $5D, $CB ; 0x010B: Wall Corner (Lower) | { 15, 37 } | Size: 00
#_0AB25B: db $54, $D4, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 15, 35 } | Size: 00
#_0AB25E: db $FD, $5C, $4F ; 0x010F: Wall Corner (Lower) | { 15, 31 } | Size: 00
#_0AB261: db $64, $C5, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 19, 31 } | Size: 01
#_0AB264: db $FD, $DC, $4B ; 0x010B: Wall Corner (Lower) | { 1D, 31 } | Size: 00
#_0AB267: db $74, $B5, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 1D, 2D } | Size: 01
#_0AB26A: db $FD, $DA, $4F ; 0x010F: Wall Corner (Lower) | { 1D, 29 } | Size: 00
#_0AB26D: db $84, $A5, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 21, 29 } | Size: 01
#_0AB270: db $FE, $5A, $4B ; 0x010B: Wall Corner (Lower) | { 25, 29 } | Size: 00
#_0AB273: db $94, $95, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 25, 25 } | Size: 01
#_0AB276: db $FE, $58, $4F ; 0x010F: Wall Corner (Lower) | { 25, 21 } | Size: 00
#_0AB279: db $A4, $85, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 29, 21 } | Size: 01
#_0AB27C: db $FE, $D8, $4B ; 0x010B: Wall Corner (Lower) | { 2D, 21 } | Size: 00
#_0AB27F: db $B4, $75, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 2D, 1D } | Size: 01
#_0AB282: db $FE, $D6, $4F ; 0x010F: Wall Corner (Lower) | { 2D, 19 } | Size: 00
#_0AB285: db $C4, $66, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 31, 19 } | Size: 02
#_0AB288: db $FF, $76, $4B ; 0x010B: Wall Corner (Lower) | { 37, 19 } | Size: 00
#_0AB28B: db $DD, $3C, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 37, 0F } | Size: 04
#_0AB28E: db $48, $D0, $A4 ; 0x00A4: Hole ↔ ↕ | { 12, 34 } | Size: 00
#_0AB291: db $68, $B0, $A4 ; 0x00A4: Hole ↔ ↕ | { 1A, 2C } | Size: 00
#_0AB294: db $88, $90, $A4 ; 0x00A4: Hole ↔ ↕ | { 22, 24 } | Size: 00
#_0AB297: db $A8, $70, $A4 ; 0x00A4: Hole ↔ ↕ | { 2A, 1C } | Size: 00
#_0AB29A: db $D0, $50, $A4 ; 0x00A4: Hole ↔ ↕ | { 34, 14 } | Size: 00
#_0AB29D: db $DB, $63, $FA ; 0x0FAF: Pot | { 36, 18 } | Size: 0F
#_0AB2A0: db $B3, $83, $FA ; 0x0FAF: Pot | { 2C, 20 } | Size: 0F
#_0AB2A3: db $93, $A3, $FA ; 0x0FAF: Pot | { 24, 28 } | Size: 0F
#_0AB2A6: db $73, $C3, $FA ; 0x0FAF: Pot | { 1C, 30 } | Size: 0F
#_0AB2A9: db $23, $83, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 08, 20 } | Size: 0F
#_0AB2AC: db $73, $33, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 1C, 0C } | Size: 0F
#_0AB2AF: db $BC, $20, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 2F, 08 } | Size: 00
#_0AB2B2: db $00, $10, $00 ; 0x0000: Ceiling ↔ | { 00, 04 } | Size: 00
#_0AB2B5: db $00, $18, $00 ; 0x0000: Ceiling ↔ | { 00, 06 } | Size: 00
#_0AB2B8: db $72, $22, $00 ; 0x0000: Ceiling ↔ | { 1C, 08 } | Size: 0A
#_0AB2BB: db $72, $2A, $00 ; 0x0000: Ceiling ↔ | { 1C, 0A } | Size: 0A
#_0AB2BE: db $0B, $23, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 08 } | Size: 0F
#_0AB2C1: db $42, $23, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 10, 08 } | Size: 0B
#_0AB2C4: db $0B, $61, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 18 } | Size: 0D
#_0AB2C7: db $42, $61, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 10, 18 } | Size: 09
#_0AB2CA: db $01, $83, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 20 } | Size: 07
#_0AB2CD: db $01, $C3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 00, 30 } | Size: 07
#_0AB2D0: db $73, $E1, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1C, 38 } | Size: 0D
#_0AB2D3: db $93, $C3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 24, 30 } | Size: 0F
#_0AB2D6: db $D2, $E1, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 34, 38 } | Size: 09
#_0AB2D9: db $B3, $A3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2C, 28 } | Size: 0F
#_0AB2DC: db $D2, $83, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 34, 20 } | Size: 0B
#_0AB2DF: db $F1, $C0, $60 ; 0x0060: Ceiling ↕ | { 3C, 30 } | Size: 04
#_0AB2E2: db $FF, $FF ; Layer01
#_0AB2E4: db $2B, $14, $FF ; 0x0FF3: Bg2 Full Mask | { 0A, 05 } | Size: 0C
#_0AB2E7: db $2A, $16, $FA ; 0x0FAA: LAMP | { 0A, 05 } | Size: 0A
#_0AB2EA: db $FF, $FF ; Layer02
#_0AB2EC: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E6:
#_0AB2EE: db $91, $10 ; Door 0x10 | Dir:01 | Pos:12
#_0AB2F0: db $93, $02 ; Door 0x02 | Dir:03 | Pos:12
#_0AB2F2: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00E7:
#_0AB2F4: db $E5, $1C ; Floors and Layout
#_0AB2F6: db $FC, $22, $00 ; 0x0100: Wall Inner Corner ▛ | { 02, 08 } | Size: 00
#_0AB2F9: db $19, $20, $01 ; 0x0001: Top Wall Horiz. ↔ | { 06, 08 } | Size: 04
#_0AB2FC: db $38, $20, $0B ; 0x000B: Diagonal Wall ◥ | { 0E, 08 } | Size: 00
#_0AB2FF: db $50, $3B, $01 ; 0x0001: Top Wall Horiz. ↔ | { 14, 0E } | Size: 03
#_0AB302: db $FD, $A3, $84 ; 0x0104: Wall Outer Corner ▟ | { 1A, 0E } | Size: 00
#_0AB305: db $68, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1A, 08 } | Size: 03
#_0AB308: db $FD, $A1, $00 ; 0x0100: Wall Inner Corner ▛ | { 1A, 04 } | Size: 00
#_0AB30B: db $FE, $A1, $02 ; 0x0102: Wall Inner Corner ▜ | { 2A, 04 } | Size: 00
#_0AB30E: db $AA, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 2A, 08 } | Size: 0B
#_0AB311: db $FE, $A7, $86 ; 0x0106: Wall Outer Corner ▙ | { 2A, 1E } | Size: 00
#_0AB314: db $B8, $7B, $01 ; 0x0001: Top Wall Horiz. ↔ | { 2E, 1E } | Size: 03
#_0AB317: db $FF, $47, $82 ; 0x0102: Wall Inner Corner ▜ | { 34, 1E } | Size: 00
#_0AB31A: db $D3, $88, $62 ; 0x0062: Right Wall Horiz. ↕ | { 34, 22 } | Size: 0C
#_0AB31D: db $FF, $4E, $83 ; 0x0103: Wall Inner Corner ▟ | { 34, 3A } | Size: 00
#_0AB320: db $09, $4A, $0A ; 0x000A: Diagonal Wall ◣ | { 02, 12 } | Size: 06
#_0AB323: db $08, $4A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 12 } | Size: 02
#_0AB326: db $3A, $78, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 0E, 1E } | Size: 08
#_0AB329: db $FD, $E7, $85 ; 0x0105: Wall Outer Corner ▜ | { 1E, 1E } | Size: 00
#_0AB32C: db $7A, $88, $0A ; 0x000A: Diagonal Wall ◣ | { 1E, 22 } | Size: 08
#_0AB32F: db $78, $8A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1E, 22 } | Size: 02
#_0AB332: db $A1, $C1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 28, 30 } | Size: 05
#_0AB335: db $FE, $8E, $81 ; 0x0101: Wall Inner Corner ▙ | { 28, 3A } | Size: 00
#_0AB338: db $20, $2E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 08, 0B } | Size: 02
#_0AB33B: db $38, $2C, $1B ; 0x001B: Diagonal Wall ◥ | { 0E, 0B } | Size: 00
#_0AB33E: db $51, $44, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 14, 11 } | Size: 04
#_0AB341: db $FD, $D4, $4C ; 0x010C: Wall Corner (Lower) | { 1D, 11 } | Size: 00
#_0AB344: db $74, $2E, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 1D, 0B } | Size: 02
#_0AB347: db $FD, $D1, $C8 ; 0x0108: Wall Corner (Lower) | { 1D, 07 } | Size: 00
#_0AB34A: db $84, $1E, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 21, 07 } | Size: 02
#_0AB34D: db $FE, $71, $CA ; 0x010A: Wall Corner (Lower) | { 27, 07 } | Size: 00
#_0AB350: db $9E, $2E, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 27, 0B } | Size: 0A
#_0AB353: db $FE, $78, $4E ; 0x010E: Wall Corner (Lower) | { 27, 21 } | Size: 00
#_0AB356: db $AC, $86, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 2B, 21 } | Size: 02
#_0AB359: db $FF, $18, $4A ; 0x010A: Wall Corner (Lower) | { 31, 21 } | Size: 00
#_0AB35C: db $C6, $94, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 31, 25 } | Size: 08
#_0AB35F: db $FF, $1D, $CB ; 0x010B: Wall Corner (Lower) | { 31, 37 } | Size: 00
#_0AB362: db $14, $4B, $1A ; 0x001A: Diagonal Wall ◣ | { 05, 12 } | Size: 03
#_0AB365: db $14, $3B, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 0E } | Size: 03
#_0AB368: db $FC, $52, $C8 ; 0x0108: Wall Corner (Lower) | { 05, 0B } | Size: 00
#_0AB36B: db $3A, $6D, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 0E, 1B } | Size: 09
#_0AB36E: db $86, $88, $1A ; 0x001A: Diagonal Wall ◣ | { 21, 22 } | Size: 08
#_0AB371: db $84, $7B, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 21, 1E } | Size: 03
#_0AB374: db $FE, $16, $CD ; 0x010D: Wall Corner (Lower) | { 21, 1B } | Size: 00
#_0AB377: db $AC, $C3, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 2B, 30 } | Size: 03
#_0AB37A: db $FE, $BD, $C9 ; 0x0109: Wall Corner (Lower) | { 2B, 37 } | Size: 00
#_0AB37D: db $BC, $DC, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 2F, 37 } | Size: 00
#_0AB380: db $50, $50, $A4 ; 0x00A4: Hole ↔ ↕ | { 14, 14 } | Size: 00
#_0AB383: db $80, $60, $A4 ; 0x00A4: Hole ↔ ↕ | { 20, 18 } | Size: 00
#_0AB386: db $88, $30, $A4 ; 0x00A4: Hole ↔ ↕ | { 22, 0C } | Size: 00
#_0AB389: db $8B, $2B, $FA ; 0x0FAF: Pot | { 22, 0A } | Size: 0F
#_0AB38C: db $93, $2B, $FA ; 0x0FAF: Pot | { 24, 0A } | Size: 0F
#_0AB38F: db $B8, $90, $A4 ; 0x00A4: Hole ↔ ↕ | { 2E, 24 } | Size: 00
#_0AB392: db $3C, $21, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 0F, 08 } | Size: 01
#_0AB395: db $58, $0A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 02 } | Size: 02
#_0AB398: db $51, $11, $60 ; 0x0060: Ceiling ↕ | { 14, 04 } | Size: 05
#_0AB39B: db $0A, $11, $00 ; 0x0000: Ceiling ↔ | { 02, 04 } | Size: 09
#_0AB39E: db $0A, $19, $00 ; 0x0000: Ceiling ↔ | { 02, 06 } | Size: 09
#_0AB3A1: db $0B, $8B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 22 } | Size: 0F
#_0AB3A4: db $0B, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 32 } | Size: 0E
#_0AB3A7: db $4A, $8B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 22 } | Size: 0B
#_0AB3AA: db $4A, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 32 } | Size: 0A
#_0AB3AD: db $79, $9D, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 1E, 27 } | Size: 05
#_0AB3B0: db $72, $C3, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1C, 30 } | Size: 0B
#_0AB3B3: db $BB, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 04 } | Size: 0F
#_0AB3B6: db $BB, $4A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2E, 12 } | Size: 0E
#_0AB3B9: db $E1, $7B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 38, 1E } | Size: 07
#_0AB3BC: db $E1, $BB, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 38, 2E } | Size: 07
#_0AB3BF: db $09, $5F, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 02, 17 } | Size: 07
#_0AB3C2: db $FF, $FF ; Layer01
#_0AB3C4: db $2B, $14, $FF ; 0x0FF3: Bg2 Full Mask | { 0A, 05 } | Size: 0C
#_0AB3C7: db $2A, $16, $FA ; 0x0FAA: LAMP | { 0A, 05 } | Size: 0A
#_0AB3CA: db $FF, $FF ; Layer02
#_0AB3CC: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E7:
#_0AB3CE: db $B1, $10 ; Door 0x10 | Dir:01 | Pos:16
#_0AB3D0: db $32, $02 ; Door 0x02 | Dir:02 | Pos:06
#_0AB3D2: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00E4:
#_0AB3D4: db $51, $04 ; Floors and Layout
#_0AB3D6: db $0A, $7C, $0D ; 0x000D: Diagonal Wall ◤ | { 02, 1F } | Size: 08
#_0AB3D9: db $08, $82, $61 ; 0x0061: Left Wall Vertic. ↕ | { 02, 20 } | Size: 02
#_0AB3DC: db $30, $4A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0C, 12 } | Size: 02
#_0AB3DF: db $FC, $C3, $C0 ; 0x0100: Wall Inner Corner ▛ | { 0C, 0F } | Size: 00
#_0AB3E2: db $40, $3F, $01 ; 0x0001: Top Wall Horiz. ↔ | { 10, 0F } | Size: 03
#_0AB3E5: db $54, $38, $0D ; 0x000D: Diagonal Wall ◤ | { 15, 0E } | Size: 00
#_0AB3E8: db $60, $31, $01 ; 0x0001: Top Wall Horiz. ↔ | { 18, 0C } | Size: 01
#_0AB3EB: db $FD, $A3, $02 ; 0x0102: Wall Inner Corner ▜ | { 1A, 0C } | Size: 00
#_0AB3EE: db $5C, $61, $10 ; 0x0010: Diagonal Wall ◢ | { 17, 18 } | Size: 01
#_0AB3F1: db $68, $4A, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1A, 12 } | Size: 02
#_0AB3F4: db $5C, $65, $0F ; 0x000F: Diagonal Wall ◥ | { 17, 19 } | Size: 01
#_0AB3F7: db $68, $82, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1A, 20 } | Size: 02
#_0AB3FA: db $5C, $66, $62 ; 0x0062: Right Wall Horiz. ↕ | { 17, 19 } | Size: 02
#_0AB3FD: db $23, $A3, $DB ; 0x00DB: Floor2 ↔ ↕ | { 08, 28 } | Size: 0F
#_0AB400: db $FC, $59, $48 ; 0x0108: Wall Corner (Lower) | { 05, 25 } | Size: 00
#_0AB403: db $25, $96, $03 ; 0x0003: Top Wall Horiz. (Lower) ↔ | { 09, 25 } | Size: 06
#_0AB406: db $FD, $79, $4A ; 0x010A: Wall Corner (Lower) | { 17, 25 } | Size: 00
#_0AB409: db $15, $A6, $63 ; 0x0063: Left Wall Horiz. (Lower) ↕ | { 05, 29 } | Size: 06
#_0AB40C: db $FC, $5D, $C9 ; 0x0109: Wall Corner (Lower) | { 05, 37 } | Size: 00
#_0AB40F: db $25, $DE, $04 ; 0x0004: Bottom Wall Horiz. (Lower) ↔ | { 09, 37 } | Size: 06
#_0AB412: db $FD, $7D, $CB ; 0x010B: Wall Corner (Lower) | { 17, 37 } | Size: 00
#_0AB415: db $5D, $A6, $64 ; 0x0064: Right Wall Horiz. (Lower) ↕ | { 17, 29 } | Size: 06
#_0AB418: db $41, $B8, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 10, 2E } | Size: 04
#_0AB41B: db $15, $91, $22 ; 0x0022: Horizontal Rail ↔ | { 05, 24 } | Size: 05
#_0AB41E: db $58, $91, $22 ; 0x0022: Horizontal Rail ↔ | { 16, 24 } | Size: 01
#_0AB421: db $FC, $E8, $20 ; 0x0120: Torch Lit | { 0E, 20 } | Size: 00
#_0AB424: db $FD, $48, $20 ; 0x0120: Torch Lit | { 14, 20 } | Size: 00
#_0AB427: db $FD, $09, $72 ; 0x0132: Stairs Going Up (layer) | { 10, 25 } | Size: 00
#_0AB42A: db $43, $4B, $FA ; 0x0FAF: Pot | { 10, 12 } | Size: 0F
#_0AB42D: db $FE, $23, $00 ; 0x0100: Wall Inner Corner ▛ | { 22, 0C } | Size: 00
#_0AB430: db $9A, $32, $01 ; 0x0001: Top Wall Horiz. ↔ | { 26, 0C } | Size: 0A
#_0AB433: db $FF, $A3, $02 ; 0x0102: Wall Inner Corner ▜ | { 3A, 0C } | Size: 00
#_0AB436: db $89, $8A, $0E ; 0x000E: Diagonal Wall ◣ | { 22, 22 } | Size: 06
#_0AB439: db $88, $8A, $61 ; 0x0061: Left Wall Vertic. ↕ | { 22, 22 } | Size: 02
#_0AB43C: db $B9, $BA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2E, 2E } | Size: 06
#_0AB43F: db $FF, $AB, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 2E } | Size: 00
#_0AB442: db $FF, $A7, $02 ; 0x0102: Wall Inner Corner ▜ | { 3A, 1C } | Size: 00
#_0AB445: db $E0, $71, $01 ; 0x0001: Top Wall Horiz. ↔ | { 38, 1C } | Size: 01
#_0AB448: db $FF, $47, $00 ; 0x0100: Wall Inner Corner ▛ | { 34, 1C } | Size: 00
#_0AB44B: db $D1, $80, $61 ; 0x0061: Left Wall Vertic. ↕ | { 34, 20 } | Size: 04
#_0AB44E: db $FF, $4A, $04 ; 0x0104: Wall Outer Corner ▟ | { 34, 28 } | Size: 00
#_0AB451: db $C0, $A2, $01 ; 0x0001: Top Wall Horiz. ↔ | { 30, 28 } | Size: 02
#_0AB454: db $A0, $82, $0F ; 0x000F: Diagonal Wall ◥ | { 28, 20 } | Size: 02
#_0AB457: db $A1, $5B, $62 ; 0x0062: Right Wall Horiz. ↕ | { 28, 16 } | Size: 07
#_0AB45A: db $FE, $84, $87 ; 0x0107: Wall Outer Corner ▛ | { 28, 12 } | Size: 00
#_0AB45D: db $B1, $48, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 2C, 12 } | Size: 04
#_0AB460: db $FF, $44, $85 ; 0x0105: Wall Outer Corner ▜ | { 34, 12 } | Size: 00
#_0AB463: db $FF, $45, $81 ; 0x0101: Wall Inner Corner ▙ | { 34, 16 } | Size: 00
#_0AB466: db $E0, $59, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 38, 16 } | Size: 01
#_0AB469: db $FF, $A5, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 16 } | Size: 00
#_0AB46C: db $E3, $53, $FA ; 0x0FAF: Pot | { 38, 14 } | Size: 0F
#_0AB46F: db $09, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 07
#_0AB472: db $09, $59, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 02, 16 } | Size: 05
#_0AB475: db $09, $51, $00 ; 0x0000: Ceiling ↔ | { 02, 14 } | Size: 05
#_0AB478: db $28, $3F, $60 ; 0x0060: Ceiling ↕ | { 0A, 0F } | Size: 03
#_0AB47B: db $26, $0E, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 09, 03 } | Size: 0A
#_0AB47E: db $54, $25, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 15, 09 } | Size: 01
#_0AB481: db $4A, $11, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 12, 04 } | Size: 09
#_0AB484: db $6C, $64, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1B, 19 } | Size: 00
#_0AB487: db $70, $60, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 1C, 18 } | Size: 00
#_0AB48A: db $70, $74, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 1C, 1D } | Size: 00
#_0AB48D: db $8B, $11, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 04 } | Size: 0D
#_0AB490: db $CA, $11, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 04 } | Size: 09
#_0AB493: db $D1, $69, $00 ; 0x0000: Ceiling ↔ | { 34, 1A } | Size: 05
#_0AB496: db $B4, $90, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 2D, 24 } | Size: 00
#_0AB499: db $B1, $5A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2C, 16 } | Size: 06
#_0AB49C: db $C0, $90, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 30, 24 } | Size: 00
#_0AB49F: db $B1, $88, $00 ; 0x0000: Ceiling ↔ | { 2C, 22 } | Size: 04
#_0AB4A2: db $89, $9F, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 22, 27 } | Size: 07
#_0AB4A5: db $8B, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 32 } | Size: 0E
#_0AB4A8: db $CA, $CA, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 32, 32 } | Size: 0A
#_0AB4AB: db $FF, $FF ; Layer01
#_0AB4AD: db $FF, $FF ; Layer02
#_0AB4AF: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E4:
#_0AB4B1: db $91, $10 ; Door 0x10 | Dir:01 | Pos:12
#_0AB4B3: db $62, $00 ; Door 0x00 | Dir:02 | Pos:0C
#_0AB4B5: db $73, $00 ; Door 0x00 | Dir:03 | Pos:0E
#_0AB4B7: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_00E5:
#_0AB4B9: db $E1, $1C ; Floors and Layout
#_0AB4BB: db $15, $70, $01 ; 0x0001: Top Wall Horiz. ↔ | { 05, 1C } | Size: 04
#_0AB4BE: db $FC, $27, $00 ; 0x0100: Wall Inner Corner ▛ | { 02, 1C } | Size: 00
#_0AB4C1: db $35, $6D, $0D ; 0x000D: Diagonal Wall ◤ | { 0D, 1B } | Size: 05
#_0AB4C4: db $51, $1F, $61 ; 0x0061: Left Wall Vertic. ↕ | { 14, 07 } | Size: 07
#_0AB4C7: db $FD, $41, $00 ; 0x0100: Wall Inner Corner ▛ | { 14, 04 } | Size: 00
#_0AB4CA: db $FD, $A1, $02 ; 0x0102: Wall Inner Corner ▜ | { 1A, 04 } | Size: 00
#_0AB4CD: db $68, $23, $62 ; 0x0062: Right Wall Horiz. ↕ | { 1A, 08 } | Size: 03
#_0AB4D0: db $FD, $A3, $86 ; 0x0106: Wall Outer Corner ▙ | { 1A, 0E } | Size: 00
#_0AB4D3: db $78, $3A, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1E, 0E } | Size: 02
#_0AB4D6: db $FE, $23, $84 ; 0x0104: Wall Outer Corner ▟ | { 22, 0E } | Size: 00
#_0AB4D9: db $88, $23, $61 ; 0x0061: Left Wall Vertic. ↕ | { 22, 08 } | Size: 03
#_0AB4DC: db $FE, $21, $00 ; 0x0100: Wall Inner Corner ▛ | { 22, 04 } | Size: 00
#_0AB4DF: db $A1, $45, $0F ; 0x000F: Diagonal Wall ◥ | { 28, 11 } | Size: 05
#_0AB4E2: db $A1, $1F, $62 ; 0x0062: Right Wall Horiz. ↕ | { 28, 07 } | Size: 07
#_0AB4E5: db $FE, $81, $02 ; 0x0102: Wall Inner Corner ▜ | { 28, 04 } | Size: 00
#_0AB4E8: db $CD, $70, $01 ; 0x0001: Top Wall Horiz. ↔ | { 33, 1C } | Size: 04
#_0AB4EB: db $FF, $A7, $02 ; 0x0102: Wall Inner Corner ▜ | { 3A, 1C } | Size: 00
#_0AB4EE: db $FF, $A8, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 22 } | Size: 00
#_0AB4F1: db $A2, $BC, $10 ; 0x0010: Diagonal Wall ◢ | { 28, 2F } | Size: 08
#_0AB4F4: db $D8, $8A, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 36, 22 } | Size: 02
#_0AB4F7: db $90, $C2, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 24, 30 } | Size: 02
#_0AB4FA: db $FE, $1C, $07 ; 0x0107: Wall Outer Corner ▛ | { 21, 30 } | Size: 00
#_0AB4FD: db $84, $D3, $62 ; 0x0062: Right Wall Horiz. ↕ | { 21, 34 } | Size: 03
#_0AB500: db $FE, $1E, $83 ; 0x0103: Wall Inner Corner ▟ | { 21, 3A } | Size: 00
#_0AB503: db $FD, $BE, $81 ; 0x0101: Wall Inner Corner ▙ | { 1B, 3A } | Size: 00
#_0AB506: db $6C, $D3, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1B, 34 } | Size: 03
#_0AB509: db $60, $C2, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 18, 30 } | Size: 02
#_0AB50C: db $FD, $BC, $05 ; 0x0105: Wall Outer Corner ▜ | { 1B, 30 } | Size: 00
#_0AB50F: db $FC, $28, $81 ; 0x0101: Wall Inner Corner ▙ | { 02, 22 } | Size: 00
#_0AB512: db $18, $8A, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 22 } | Size: 02
#_0AB515: db $2A, $88, $0E ; 0x000E: Diagonal Wall ◣ | { 0A, 22 } | Size: 08
#_0AB518: db $41, $79, $10 ; 0x0010: Diagonal Wall ◢ | { 10, 1E } | Size: 05
#_0AB51B: db $41, $7D, $0F ; 0x000F: Diagonal Wall ◥ | { 10, 1F } | Size: 05
#_0AB51E: db $40, $7E, $62 ; 0x0062: Right Wall Horiz. ↕ | { 10, 1F } | Size: 02
#_0AB521: db $6C, $A9, $01 ; 0x0001: Top Wall Horiz. ↔ | { 1B, 2A } | Size: 01
#_0AB524: db $FD, $DA, $84 ; 0x0104: Wall Outer Corner ▟ | { 1D, 2A } | Size: 00
#_0AB527: db $74, $93, $61 ; 0x0061: Left Wall Vertic. ↕ | { 1D, 24 } | Size: 03
#_0AB52A: db $FD, $D8, $00 ; 0x0100: Wall Inner Corner ▛ | { 1D, 20 } | Size: 00
#_0AB52D: db $FE, $18, $02 ; 0x0102: Wall Inner Corner ▜ | { 21, 20 } | Size: 00
#_0AB530: db $84, $93, $62 ; 0x0062: Right Wall Horiz. ↕ | { 21, 24 } | Size: 03
#_0AB533: db $FE, $1A, $86 ; 0x0106: Wall Outer Corner ▙ | { 21, 2A } | Size: 00
#_0AB536: db $94, $A9, $01 ; 0x0001: Top Wall Horiz. ↔ | { 25, 2A } | Size: 01
#_0AB539: db $9C, $A7, $0D ; 0x000D: Diagonal Wall ◤ | { 27, 29 } | Size: 03
#_0AB53C: db $95, $51, $0E ; 0x000E: Diagonal Wall ◣ | { 25, 14 } | Size: 05
#_0AB53F: db $B0, $7F, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2C, 1F } | Size: 03
#_0AB542: db $6D, $51, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 1B, 14 } | Size: 05
#_0AB545: db $63, $23, $FA ; 0x0FAF: Pot | { 18, 08 } | Size: 0F
#_0AB548: db $9B, $23, $FA ; 0x0FAF: Pot | { 26, 08 } | Size: 0F
#_0AB54B: db $E3, $83, $FA ; 0x0FAF: Pot | { 38, 20 } | Size: 0F
#_0AB54E: db $83, $93, $FA ; 0x0FAF: Pot | { 20, 24 } | Size: 0F
#_0AB551: db $4A, $0D, $60 ; 0x0060: Ceiling ↕ | { 12, 03 } | Size: 09
#_0AB554: db $34, $56, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 0D, 15 } | Size: 02
#_0AB557: db $0B, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 04 } | Size: 0F
#_0AB55A: db $06, $51, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 01, 14 } | Size: 09
#_0AB55D: db $34, $4F, $00 ; 0x0000: Ceiling ↔ | { 0D, 13 } | Size: 03
#_0AB560: db $09, $9B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 26 } | Size: 07
#_0AB563: db $2A, $9D, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 0A, 27 } | Size: 09
#_0AB566: db $0B, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 36 } | Size: 0D
#_0AB569: db $3E, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 0F, 36 } | Size: 09
#_0AB56C: db $26, $D1, $00 ; 0x0000: Ceiling ↔ | { 09, 34 } | Size: 09
#_0AB56F: db $78, $0A, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1E, 02 } | Size: 02
#_0AB572: db $B3, $13, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 2C, 04 } | Size: 0F
#_0AB575: db $F3, $10, $60 ; 0x0060: Ceiling ↕ | { 3C, 04 } | Size: 0C
#_0AB578: db $B4, $56, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 2D, 15 } | Size: 02
#_0AB57B: db $B1, $4C, $00 ; 0x0000: Ceiling ↔ | { 2C, 13 } | Size: 04
#_0AB57E: db $CE, $51, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 33, 14 } | Size: 09
#_0AB581: db $97, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 25, 34 } | Size: 0E
#_0AB584: db $D5, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 35, 34 } | Size: 06
#_0AB587: db $A6, $CD, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 29, 33 } | Size: 09
#_0AB58A: db $D9, $9B, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 26 } | Size: 07
#_0AB58D: db $F1, $D8, $60 ; 0x0060: Ceiling ↕ | { 3C, 36 } | Size: 04
#_0AB590: db $51, $7C, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 14, 1F } | Size: 04
#_0AB593: db $54, $7A, $A3 ; 0x00A3: Diagonal Ceiling ◢ | { 15, 1E } | Size: 02
#_0AB596: db $54, $8E, $A2 ; 0x00A2: Diagonal Ceiling ◥ | { 15, 23 } | Size: 02
#_0AB599: db $94, $66, $A1 ; 0x00A1: Diagonal Ceiling ◣ | { 25, 19 } | Size: 02
#_0AB59C: db $9C, $94, $A0 ; 0x00A0: Diagonal Ceiling ◤ | { 27, 25 } | Size: 00
#_0AB59F: db $75, $61, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1D, 18 } | Size: 05
#_0AB5A2: db $6E, $61, $60 ; 0x0060: Ceiling ↕ | { 1B, 18 } | Size: 09
#_0AB5A5: db $95, $7A, $60 ; 0x0060: Ceiling ↕ | { 25, 1E } | Size: 06
#_0AB5A8: db $98, $7F, $00 ; 0x0000: Ceiling ↔ | { 26, 1F } | Size: 03
#_0AB5AB: db $98, $87, $00 ; 0x0000: Ceiling ↔ | { 26, 21 } | Size: 03
#_0AB5AE: db $98, $8F, $00 ; 0x0000: Ceiling ↔ | { 26, 23 } | Size: 03
#_0AB5B1: db $FF, $FF ; Layer01
#_0AB5B3: db $2A, $16, $FA ; 0x0FAA: LAMP | { 0A, 05 } | Size: 0A
#_0AB5B6: db $FF, $FF ; Layer02
#_0AB5B8: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E5:
#_0AB5BA: db $12, $00 ; Door 0x00 | Dir:02 | Pos:02
#_0AB5BC: db $71, $0E ; Door 0x0E | Dir:01 | Pos:0E
#_0AB5BE: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0124:
#_0AB5C0: db $E1, $00 ; Floors and Layout
#_0AB5C2: db $2B, $A3, $FA ; 0x0FAF: Pot | { 0A, 28 } | Size: 0F
#_0AB5C5: db $2B, $AB, $FA ; 0x0FAF: Pot | { 0A, 2A } | Size: 0F
#_0AB5C8: db $2B, $B3, $FA ; 0x0FAF: Pot | { 0A, 2C } | Size: 0F
#_0AB5CB: db $28, $B8, $3D ; 0x003D: Floor Torch ↔ | { 0A, 2E } | Size: 00
#_0AB5CE: db $33, $C3, $FA ; 0x0FAF: Pot | { 0C, 30 } | Size: 0F
#_0AB5D1: db $3B, $C3, $FA ; 0x0FAF: Pot | { 0E, 30 } | Size: 0F
#_0AB5D4: db $43, $C3, $FA ; 0x0FAF: Pot | { 10, 30 } | Size: 0F
#_0AB5D7: db $4B, $C3, $FA ; 0x0FAF: Pot | { 12, 30 } | Size: 0F
#_0AB5DA: db $50, $B8, $3D ; 0x003D: Floor Torch ↔ | { 14, 2E } | Size: 00
#_0AB5DD: db $53, $B3, $FA ; 0x0FAF: Pot | { 14, 2C } | Size: 0F
#_0AB5E0: db $53, $AB, $FA ; 0x0FAF: Pot | { 14, 2A } | Size: 0F
#_0AB5E3: db $53, $A3, $FA ; 0x0FAF: Pot | { 14, 28 } | Size: 0F
#_0AB5E6: db $A9, $9E, $DC ; 0x00DC: Chest Platform? ↔ ↕ | { 2A, 27 } | Size: 06
#_0AB5E9: db $A0, $C8, $3D ; 0x003D: Floor Torch ↔ | { 28, 32 } | Size: 00
#_0AB5EC: db $D8, $C8, $3D ; 0x003D: Floor Torch ↔ | { 36, 32 } | Size: 00
#_0AB5EF: db $BD, $AA, $F9 ; 0x0F99: Chest | { 2F, 2A } | Size: 06
#_0AB5F2: db $FF, $FF ; Layer01
#_0AB5F4: db $FF, $FF ; Layer02
#_0AB5F6: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0124:
#_0AB5F8: db $61, $0E ; Door 0x0E | Dir:01 | Pos:0C
#_0AB5FA: db $81, $0E ; Door 0x0E | Dir:01 | Pos:10
#_0AB5FC: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0125:
RoomDataTiles_0127:
#_0AB5FE: db $E1, $00 ; Floors and Layout
#_0AB600: db $FE, $89, $00 ; 0x0100: Wall Inner Corner ▛ | { 28, 24 } | Size: 00
#_0AB603: db $A2, $A1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 28, 28 } | Size: 09
#_0AB606: db $FE, $8E, $81 ; 0x0101: Wall Inner Corner ▙ | { 28, 3A } | Size: 00
#_0AB609: db $FF, $49, $02 ; 0x0102: Wall Inner Corner ▜ | { 34, 24 } | Size: 00
#_0AB60C: db $D2, $A1, $62 ; 0x0062: Right Wall Horiz. ↕ | { 34, 28 } | Size: 09
#_0AB60F: db $FF, $4E, $83 ; 0x0103: Wall Inner Corner ▟ | { 34, 3A } | Size: 00
#_0AB612: db $20, $B3, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 08, 2C } | Size: 03
#_0AB615: db $50, $B3, $DD ; 0x00DD: Table / Rock ↔ ↕ | { 14, 2C } | Size: 03
#_0AB618: db $33, $CB, $FA ; 0x0FAF: Pot | { 0C, 32 } | Size: 0F
#_0AB61B: db $3B, $CB, $FA ; 0x0FAF: Pot | { 0E, 32 } | Size: 0F
#_0AB61E: db $43, $CB, $FA ; 0x0FAF: Pot | { 10, 32 } | Size: 0F
#_0AB621: db $4B, $CB, $FA ; 0x0FAF: Pot | { 12, 32 } | Size: 0F
#_0AB624: db $BF, $94, $F9 ; 0x0F93: Telepathic Tile | { 2F, 25 } | Size: 0C
#_0AB627: db $B3, $B3, $FA ; 0x0FAF: Pot | { 2C, 2C } | Size: 0F
#_0AB62A: db $CB, $B3, $FA ; 0x0FAF: Pot | { 32, 2C } | Size: 0F
#_0AB62D: db $AD, $C8, $DF ; 0x00DF: Spike Floor ↔ ↕ | { 2B, 32 } | Size: 04
#_0AB630: db $C4, $C8, $DF ; 0x00DF: Spike Floor ↔ ↕ | { 31, 32 } | Size: 00
#_0AB633: db $B3, $E3, $FA ; 0x0FAF: Pot | { 2C, 38 } | Size: 0F
#_0AB636: db $CB, $E3, $FA ; 0x0FAF: Pot | { 32, 38 } | Size: 0F
#_0AB639: db $81, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 20, 24 } | Size: 07
#_0AB63C: db $81, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 20, 34 } | Size: 06
#_0AB63F: db $E1, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 38, 24 } | Size: 07
#_0AB642: db $E1, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 38, 34 } | Size: 06
#_0AB645: db $FF, $FF ; Layer01
#_0AB647: db $FF, $FF ; Layer02
#_0AB649: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0125:
;---------------------------------------------------------------------------------------------------

RoomDataDoors_0127:
#_0AB64B: db $61, $0E ; Door 0x0E | Dir:01 | Pos:0C
#_0AB64D: db $81, $0E ; Door 0x0E | Dir:01 | Pos:10
#_0AB64F: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0126:
#_0AB651: db $E1, $00 ; Floors and Layout
#_0AB653: db $FC, $2C, $81 ; 0x0101: Wall Inner Corner ▙ | { 02, 32 } | Size: 00
#_0AB656: db $18, $CA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 06, 32 } | Size: 02
#_0AB659: db $FC, $AC, $85 ; 0x0105: Wall Outer Corner ▜ | { 0A, 32 } | Size: 00
#_0AB65C: db $28, $DA, $61 ; 0x0061: Left Wall Vertic. ↕ | { 0A, 36 } | Size: 02
#_0AB65F: db $FD, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 12, 3A } | Size: 00
#_0AB662: db $48, $DA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 12, 36 } | Size: 02
#_0AB665: db $FD, $2C, $87 ; 0x0107: Wall Outer Corner ▛ | { 12, 32 } | Size: 00
#_0AB668: db $58, $CA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 16, 32 } | Size: 02
#_0AB66B: db $FD, $AC, $83 ; 0x0103: Wall Inner Corner ▟ | { 1A, 32 } | Size: 00
#_0AB66E: db $FC, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 0A, 3A } | Size: 00
#_0AB671: db $FE, $A9, $00 ; 0x0100: Wall Inner Corner ▛ | { 2A, 24 } | Size: 00
#_0AB674: db $AA, $A1, $61 ; 0x0061: Left Wall Vertic. ↕ | { 2A, 28 } | Size: 09
#_0AB677: db $FE, $AE, $81 ; 0x0101: Wall Inner Corner ▙ | { 2A, 3A } | Size: 00
#_0AB67A: db $FF, $AC, $83 ; 0x0103: Wall Inner Corner ▟ | { 3A, 32 } | Size: 00
#_0AB67D: db $D8, $CA, $02 ; 0x0002: Bottom Wall Horiz. ↔ | { 36, 32 } | Size: 02
#_0AB680: db $FF, $2C, $87 ; 0x0107: Wall Outer Corner ▛ | { 32, 32 } | Size: 00
#_0AB683: db $C8, $DA, $62 ; 0x0062: Right Wall Horiz. ↕ | { 32, 36 } | Size: 02
#_0AB686: db $FF, $2E, $83 ; 0x0103: Wall Inner Corner ▟ | { 32, 3A } | Size: 00
#_0AB689: db $31, $A1, $C8 ; 0x00C8: Water Floor ↔ ↕ | { 0C, 28 } | Size: 05
#_0AB68C: db $2D, $A3, $3F ; 0x003F: Water Edge ↔ | { 0B, 28 } | Size: 07
#_0AB68F: db $2D, $A6, $79 ; 0x0079: Water Edge ↕ | { 0B, 29 } | Size: 06
#_0AB692: db $2D, $C3, $40 ; 0x0040: Water Edge ↔ | { 0B, 30 } | Size: 07
#_0AB695: db $51, $A6, $7A ; 0x007A: Water Edge ↕ | { 14, 29 } | Size: 06
#_0AB698: db $FC, $6A, $A4 ; 0x0124: Decoration | { 06, 2A } | Size: 00
#_0AB69B: db $FD, $6A, $A4 ; 0x0124: Decoration | { 16, 2A } | Size: 00
#_0AB69E: db $D8, $B8, $5E ; 0x005E: Block ↔ | { 36, 2E } | Size: 00
#_0AB6A1: db $C8, $A9, $89 ; 0x0089: Block Vertical ↕ | { 32, 2A } | Size: 01
#_0AB6A4: db $E0, $C0, $5E ; 0x005E: Block ↔ | { 38, 30 } | Size: 00
#_0AB6A7: db $B7, $9E, $69 ; 0x0069: Vertical Rail ↕ | { 2D, 27 } | Size: 0E
#_0AB6AA: db $B4, $DC, $69 ; 0x0069: Vertical Rail ↕ | { 2D, 37 } | Size: 00
#_0AB6AD: db $B6, $9E, $22 ; 0x0022: Horizontal Rail ↔ | { 2D, 27 } | Size: 0A
#_0AB6B0: db $EA, $9C, $69 ; 0x0069: Vertical Rail ↕ | { 3A, 27 } | Size: 08
#_0AB6B3: db $C9, $C9, $22 ; 0x0022: Horizontal Rail ↔ | { 32, 32 } | Size: 05
#_0AB6B6: db $89, $93, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 24 } | Size: 07
#_0AB6B9: db $89, $D2, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 22, 34 } | Size: 06
#_0AB6BC: db $D9, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 36, 36 } | Size: 05
#_0AB6BF: db $09, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 36 } | Size: 05
#_0AB6C2: db $59, $D9, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 16, 36 } | Size: 05
#_0AB6C5: db $FF, $FF ; Layer01
#_0AB6C7: db $FF, $FF ; Layer02
#_0AB6C9: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0126:
#_0AB6CB: db $61, $0E ; Door 0x0E | Dir:01 | Pos:0C
#_0AB6CD: db $81, $0E ; Door 0x0E | Dir:01 | Pos:10
#_0AB6CF: db $FF, $FF ; Layer03 / End

;===================================================================================================

RoomDataTiles_0123:
#_0AB6D1: db $E1, $00 ; Floors and Layout
#_0AB6D3: db $FC, $25, $01 ; 0x0101: Wall Inner Corner ▙ | { 02, 14 } | Size: 00
#_0AB6D6: db $FC, $65, $05 ; 0x0105: Wall Outer Corner ▜ | { 06, 14 } | Size: 00
#_0AB6D9: db $18, $61, $61 ; 0x0061: Left Wall Vertic. ↕ | { 06, 18 } | Size: 01
#_0AB6DC: db $FC, $66, $81 ; 0x0101: Wall Inner Corner ▙ | { 06, 1A } | Size: 00
#_0AB6DF: db $FD, $66, $83 ; 0x0103: Wall Inner Corner ▟ | { 16, 1A } | Size: 00
#_0AB6E2: db $58, $61, $62 ; 0x0062: Right Wall Horiz. ↕ | { 16, 18 } | Size: 01
#_0AB6E5: db $FD, $65, $07 ; 0x0107: Wall Outer Corner ▛ | { 16, 14 } | Size: 00
#_0AB6E8: db $FD, $A5, $03 ; 0x0103: Wall Inner Corner ▟ | { 1A, 14 } | Size: 00
#_0AB6EB: db $19, $2A, $F9 ; 0x0F99: Chest | { 06, 0A } | Size: 06
#_0AB6EE: db $29, $22, $F9 ; 0x0F99: Chest | { 0A, 08 } | Size: 06
#_0AB6F1: db $51, $22, $F9 ; 0x0F99: Chest | { 14, 08 } | Size: 06
#_0AB6F4: db $61, $2A, $F9 ; 0x0F99: Chest | { 18, 0A } | Size: 06
#_0AB6F7: db $30, $41, $3D ; 0x003D: Floor Torch ↔ | { 0C, 10 } | Size: 01
#_0AB6FA: db $28, $A7, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 0A, 29 } | Size: 03
#_0AB6FD: db $48, $A7, $C2 ; 0x00C2: Bg2 Large Overlay ↔ ↕ | { 12, 29 } | Size: 03
#_0AB700: db $28, $A1, $27 ; 0x0027: Pit Top Edge ↔ | { 0A, 28 } | Size: 01
#_0AB703: db $2B, $A7, $6A ; 0x006A: Left Pit Edge ↕ | { 0A, 29 } | Size: 0F
#_0AB706: db $28, $E5, $28 ; 0x0028: Pit Bottom Edge ↔ | { 0A, 39 } | Size: 01
#_0AB709: db $37, $A7, $6B ; 0x006B: Right Pit Edge ↕ | { 0D, 29 } | Size: 0F
#_0AB70C: db $48, $A1, $27 ; 0x0027: Pit Top Edge ↔ | { 12, 28 } | Size: 01
#_0AB70F: db $4B, $A7, $6A ; 0x006A: Left Pit Edge ↕ | { 12, 29 } | Size: 0F
#_0AB712: db $48, $E5, $28 ; 0x0028: Pit Bottom Edge ↔ | { 12, 39 } | Size: 01
#_0AB715: db $57, $A7, $6B ; 0x006B: Right Pit Edge ↕ | { 15, 29 } | Size: 0F
#_0AB718: db $08, $61, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 02, 18 } | Size: 01
#_0AB71B: db $68, $61, $C0 ; 0x00C0: Ceiling Large ↔ ↕ | { 1A, 18 } | Size: 01
#_0AB71E: db $FF, $FF ; Layer01
#_0AB720: db $FF, $FF ; Layer02
#_0AB722: db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0123:
#_0AB724: db $60, $36 ; Door 0x36 | Dir:00 | Pos:0C
#_0AB726: db $61, $0E ; Door 0x0E | Dir:01 | Pos:0C
#_0AB728: db $FF, $FF ; Layer03 / End

;===================================================================================================
; END OF ROOM DATA
;===================================================================================================
; FREE ROM: 0x26
;===================================================================================================
NULL_0AB72A:
#_0AB72A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AB732: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AB73A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AB742: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AB74A: db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

Module0E_0A_FluteMenu:
#_0AB750: LDA.w $0200
#_0AB753: JSL JumpTableLocal
#_0AB757: dw WorldMap_FadeOut
#_0AB759: dw FluteMenu_LoadMap
#_0AB75B: dw WorldMap_LoadSpriteGFX
#_0AB75D: dw WorldMap_Brighten
#_0AB75F: dw FluteMenu_AdvanceMode
#_0AB761: dw FluteMenu_HandleSelection
#_0AB763: dw WorldMap_RestoreGraphics
#_0AB765: dw FluteMenu_LoadSelectedScreen
#_0AB767: dw Overworld_LoadOverlayAndMap
#_0AB769: dw FluteMenu_FadeInAndQuack

;===================================================================================================

FluteMenu_LoadMap:
#_0AB76B: STZ.w $1AF0

#_0AB76E: JSL WorldMap_LoadLightWorldMap

#_0AB772: RTL

;===================================================================================================
; Why does this need its own mode?
FluteMenu_AdvanceMode:
#_0AB773: LDA.b #$10
#_0AB775: STA.b $C8

#_0AB777: INC.w $0200

#_0AB77A: RTL

;===================================================================================================

FluteMenuNumbers:
.char
#_0AB77B: db $7F
#_0AB77C: db $79
#_0AB77D: db $6C
#_0AB77E: db $6D
#_0AB77F: db $6E
#_0AB780: db $6F
#_0AB781: db $7C
#_0AB782: db $7D

.pos_x_low
#_0AB783: db $80
#_0AB784: db $CF
#_0AB785: db $10
#_0AB786: db $B8
#_0AB787: db $30
#_0AB788: db $70
#_0AB789: db $70
#_0AB78A: db $F0

.pos_x_high
#_0AB78B: db $06
#_0AB78C: db $0C
#_0AB78D: db $02
#_0AB78E: db $08
#_0AB78F: db $0F
#_0AB790: db $00
#_0AB791: db $07
#_0AB792: db $0E

.pos_y_low
#_0AB793: db $5B
#_0AB794: db $98
#_0AB795: db $C0
#_0AB796: db $20
#_0AB797: db $50
#_0AB798: db $B0
#_0AB799: db $30
#_0AB79A: db $80

.pos_y_high
#_0AB79B: db $03
#_0AB79C: db $05
#_0AB79D: db $07
#_0AB79E: db $0B
#_0AB79F: db $0B
#_0AB7A0: db $0F
#_0AB7A1: db $0F
#_0AB7A2: db $0F

; seems unused
; locking of locations?
.bits
#_0AB7A3: db $80
#_0AB7A4: db $40
#_0AB7A5: db $20
#_0AB7A6: db $10
#_0AB7A7: db $08
#_0AB7A8: db $04
#_0AB7A9: db $02
#_0AB7AA: db $01

;---------------------------------------------------------------------------------------------------

FluteMenu_HandleSelection:
#_0AB7AB: LDA.b $C8
#_0AB7AD: BNE .delay

#_0AB7AF: LDA.b $F2
#_0AB7B1: ORA.b $F0
#_0AB7B3: AND.b #$C0
#_0AB7B5: BEQ .no_selection_made

#_0AB7B7: INC.w $0200

#_0AB7BA: RTL

;---------------------------------------------------------------------------------------------------

.delay
#_0AB7BB: DEC.b $C8

.no_selection_made
#_0AB7BD: LDY.b #$07
#_0AB7BF: LDX.w $1AF0

.continue_from_unreachable
#_0AB7C2: BRA .continue

;---------------------------------------------------------------------------------------------------

; TODO analyze what this would have done
.unreachable
#_0AB7C4: TXA
#_0AB7C5: INC A
#_0AB7C6: AND.b #$07
#_0AB7C8: TAX

#_0AB7C9: DEY
#_0AB7CA: BPL .continue_from_unreachable

;---------------------------------------------------------------------------------------------------

.continue
#_0AB7CC: STX.w $1AF0

#_0AB7CF: LDA.b $F4
#_0AB7D1: AND.b #$0A
#_0AB7D3: BEQ .pressed_up_or_left

#_0AB7D5: DEC.w $1AF0

#_0AB7D8: LDA.b #!SFX3_20
#_0AB7DA: STA.w $012F

.pressed_up_or_left
#_0AB7DD: LDA.b $F4
#_0AB7DF: AND.b #$05
#_0AB7E1: BEQ .pressed_down_or_right

#_0AB7E3: INC.w $1AF0

#_0AB7E6: LDA.b #!SFX3_20
#_0AB7E8: STA.w $012F

.pressed_down_or_right
#_0AB7EB: LDA.w $1AF0
#_0AB7EE: AND.b #$07
#_0AB7F0: STA.w $1AF0

#_0AB7F3: LDA.b $1A
#_0AB7F5: AND.b #$10
#_0AB7F7: BEQ .dont_draw_link

;---------------------------------------------------------------------------------------------------

#_0AB7F9: JSR WorldMap_CalculateOAMCoordinates
#_0AB7FC: BCC .dont_draw_link

#_0AB7FE: LDA.b $0E
#_0AB800: SEC
#_0AB801: SBC.b #$04
#_0AB803: STA.b $0E

#_0AB805: LDA.b $0F
#_0AB807: SEC
#_0AB808: SBC.b #$04
#_0AB80A: STA.b $0F

#_0AB80C: LDA.b #$00
#_0AB80E: STA.b $0D

#_0AB810: LDA.b #$3E
#_0AB812: STA.b $0C

#_0AB814: LDA.b #$02
#_0AB816: STA.b $0B

#_0AB818: LDX.b #$10
#_0AB81A: JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.dont_draw_link
#_0AB81D: LDA.l $7EC108
#_0AB821: PHA

#_0AB822: LDA.l $7EC109
#_0AB826: PHA

#_0AB827: LDA.l $7EC10A
#_0AB82B: PHA

#_0AB82C: LDA.l $7EC10B
#_0AB830: PHA

#_0AB831: LDX.b #$07

;---------------------------------------------------------------------------------------------------

.next_numeral
#_0AB833: CPX.w $1AF0
#_0AB836: BNE .not_selected

.selected
#_0AB838: LDA.l FluteMenuNumbers_pos_x_low,X
#_0AB83C: STA.w $1AB0,X
#_0AB83F: STA.l $7EC10A

#_0AB843: LDA.l FluteMenuNumbers_pos_x_high,X
#_0AB847: STA.w $1AC0,X
#_0AB84A: STA.l $7EC10B

#_0AB84E: LDA.l FluteMenuNumbers_pos_y_low,X
#_0AB852: STA.w $1AD0,X
#_0AB855: STA.l $7EC108

#_0AB859: LDA.l FluteMenuNumbers_pos_y_high,X
#_0AB85D: STA.w $1AE0,X
#_0AB860: STA.l $7EC109

#_0AB864: PHX
#_0AB865: JSR WorldMap_CalculateOAMCoordinates
#_0AB868: PLX

#_0AB869: BCC .to_next_numeral

#_0AB86B: LDA.l FluteMenuNumbers_char,X
#_0AB86F: STA.b $0D

#_0AB871: LDA.b $1A
#_0AB873: AND.b #$06
#_0AB875: ORA.b #$30
#_0AB877: STA.b $0C

#_0AB879: LDA.b #$00
#_0AB87B: STA.b $0B

#_0AB87D: PHX
#_0AB87E: JSR WorldMap_HandleSpriteBlink
#_0AB881: PLX

#_0AB882: BRA .to_next_numeral

;---------------------------------------------------------------------------------------------------

.not_selected
#_0AB884: LDA.l FluteMenuNumbers_pos_x_low,X
#_0AB888: STA.w $1AB0,X
#_0AB88B: STA.l $7EC10A

#_0AB88F: LDA.l FluteMenuNumbers_pos_x_high,X
#_0AB893: STA.w $1AC0,X
#_0AB896: STA.l $7EC10B

#_0AB89A: LDA.l FluteMenuNumbers_pos_y_low,X
#_0AB89E: STA.w $1AD0,X
#_0AB8A1: STA.l $7EC108

#_0AB8A5: LDA.l FluteMenuNumbers_pos_y_high,X
#_0AB8A9: STA.w $1AE0,X
#_0AB8AC: STA.l $7EC109

#_0AB8B0: PHX

#_0AB8B1: JSR WorldMap_CalculateOAMCoordinates

#_0AB8B4: PLX

#_0AB8B5: BCC .to_next_numeral

#_0AB8B7: LDA.l FluteMenuNumbers_char,X
#_0AB8BB: STA.b $0D

#_0AB8BD: LDA.b #$32
#_0AB8BF: STA.b $0C

#_0AB8C1: LDA.b #$00
#_0AB8C3: STA.b $0B

#_0AB8C5: PHX

#_0AB8C6: JSR WorldMap_HandleSpriteBlink

#_0AB8C9: PLX

;---------------------------------------------------------------------------------------------------

.to_next_numeral
#_0AB8CA: DEX
#_0AB8CB: BMI .done

#_0AB8CD: JMP.w .next_numeral

;---------------------------------------------------------------------------------------------------

.done
#_0AB8D0: PLA
#_0AB8D1: STA.l $7EC10B

#_0AB8D5: PLA
#_0AB8D6: STA.l $7EC10A

#_0AB8DA: PLA
#_0AB8DB: STA.l $7EC109

#_0AB8DF: PLA
#_0AB8E0: STA.l $7EC108

#_0AB8E4: RTL

;===================================================================================================

FluteMenu_LoadSelectedScreen:
; disable dam drain
#_0AB8E5: LDA.l $7EF2BB
#_0AB8E9: AND.b #$DF
#_0AB8EB: STA.l $7EF2BB

; disable swamp flood
#_0AB8EF: LDA.l $7EF2FB
#_0AB8F3: AND.b #$DF
#_0AB8F5: STA.l $7EF2FB

; disable dam flood
#_0AB8F9: LDA.l $7EF216
#_0AB8FD: AND.b #$7F
#_0AB8FF: STA.l $7EF216

; disable swamp entrance flood
#_0AB903: LDA.l $7EF051
#_0AB907: AND.b #$FE
#_0AB909: STA.l $7EF051

#_0AB90D: JSL FluteMenu_LoadTransport
#_0AB911: JSL FluteMenu_LoadSelectedScreenPalettes

;---------------------------------------------------------------------------------------------------

#_0AB915: LDY.b #$58

#_0AB917: LDA.b $8A
#_0AB919: AND.b #$BF
#_0AB91B: CMP.b #$03
#_0AB91D: BEQ .death_mountain

#_0AB91F: CMP.b #$05
#_0AB921: BEQ .death_mountain

#_0AB923: CMP.b #$07
#_0AB925: BEQ .death_mountain

#_0AB927: LDY.b #$5A

.death_mountain
#_0AB929: JSL DecompressAnimatedOverworldTiles
#_0AB92D: JSL Overworld_SetFixedColAndScroll

#_0AB931: STZ.w $0AA9
#_0AB934: STZ.w $0AB2

#_0AB937: JSL InitializeTilesets

#_0AB93B: INC.w $0200

#_0AB93E: STZ.b $B2

#_0AB940: JSL Overworld_ReloadSubscreenOverlayAndAdvance_long

;---------------------------------------------------------------------------------------------------

#_0AB944: LDA.b #!SFX3_10
#_0AB946: STA.w $012F

#_0AB949: LDA.b $8A
#_0AB94B: AND.b #$BF

#_0AB94D: LDX.b #!SONG_02

; are we in kak?
#_0AB94F: CMP.b #$18
#_0AB951: BNE .use_this_song

; is aga dead?
#_0AB953: LDA.l $7EF3C5
#_0AB957: CMP.b #$03
#_0AB959: BCS .use_this_song

#_0AB95B: LDX.b #!SONG_07

.use_this_song
#_0AB95D: CPX.w $0130
#_0AB960: BNE .songs_differ

#_0AB962: LDX.b #!SONG_F3_MAXVOL
#_0AB964: STX.w $012C

#_0AB967: RTL

.songs_differ
#_0AB968: STX.w $012C

#_0AB96B: RTL

;===================================================================================================

Overworld_LoadOverlayAndMap:
#_0AB96C: REP #$20

#_0AB96E: LDA.b $10
#_0AB970: PHA

#_0AB971: LDA.w $0200
#_0AB974: PHA

#_0AB975: SEP #$20

#_0AB977: JSL Overworld_LoadAndBuildScreen_long

#_0AB97B: REP #$20

#_0AB97D: PLA
#_0AB97E: INC A
#_0AB97F: STA.w $0200

#_0AB982: PLA
#_0AB983: STA.b $10

#_0AB985: SEP #$20

#_0AB987: RTL

;===================================================================================================

FluteMenu_FadeInAndQuack:
#_0AB988: INC.b $13

#_0AB98A: LDA.b $13
#_0AB98C: CMP.b #$0F
#_0AB98E: BNE .delay

;===================================================================================================

#SpawnLandingDuck:
#_0AB990: STZ.w $0200
#_0AB993: STZ.b $B0

#_0AB995: LDA.w $010C
#_0AB998: STA.b $10
#_0AB99A: STZ.b $11

#_0AB99C: LDA.l $7EC229
#_0AB9A0: STA.b $9B

#_0AB9A2: LDY.b #$04
#_0AB9A4: LDA.b #!ANCILLA_27
#_0AB9A6: JSL AncillaAdd_Duck_drop_off

.delay
#_0AB9AA: JSL Sprite_Main

#_0AB9AE: RTL

;===================================================================================================

Module0E_07_OverworldMap:
#_0AB9AF: LDA.w $0200
#_0AB9B2: JSL JumpTableLocal
#_0AB9B6: dw WorldMap_FadeOut
#_0AB9B8: dw WorldMap_LoadLightWorldMap
#_0AB9BA: dw WorldMap_LoadDarkWorldMap
#_0AB9BC: dw WorldMap_LoadSpriteGFX
#_0AB9BE: dw WorldMap_Brighten
#_0AB9C0: dw WorldMap_PlayerControl
#_0AB9C2: dw WorldMap_RestoreGraphics
#_0AB9C4: dw WorldMap_ExitMap

;===================================================================================================

#EXIT_0AB9C6:
#_0AB9C6: RTL

;---------------------------------------------------------------------------------------------------

WorldMap_FadeOut:
#_0AB9C7: DEC.b $13
#_0AB9C9: BNE EXIT_0AB9C6

#_0AB9CB: LDA.b $9B
#_0AB9CD: STA.l $7EC229

#_0AB9D1: JSL EnableForceBlank

#_0AB9D5: LDA.b #$03
#_0AB9D7: STA.b $95

#_0AB9D9: INC.w $0200

#_0AB9DC: REP #$20

#_0AB9DE: LDA.b $1C
#_0AB9E0: STA.l $7EC211

#_0AB9E4: LDA.b $E0
#_0AB9E6: STA.l $7EC200

#_0AB9EA: LDA.b $E2
#_0AB9EC: STA.l $7EC202

#_0AB9F0: LDA.b $E6
#_0AB9F2: STA.l $7EC204

#_0AB9F6: LDA.b $E8
#_0AB9F8: STA.l $7EC206

#_0AB9FC: STZ.b $E0
#_0AB9FE: STZ.b $E2

#_0ABA00: STZ.b $E4
#_0ABA02: STZ.b $E6

#_0ABA04: STZ.b $E8
#_0ABA06: STZ.b $EA

#_0ABA08: LDA.b $99
#_0ABA0A: STA.l $7EC225

#_0ABA0E: LDA.w #$01FC
#_0ABA11: STA.w $0100

;---------------------------------------------------------------------------------------------------

#_0ABA14: LDX.b $8A
#_0ABA16: CPX.b #$80
#_0ABA18: BCS .special_overworld

#_0ABA1A: LDA.b $20
#_0ABA1C: STA.l $7EC108

#_0ABA20: LDA.b $22
#_0ABA22: STA.l $7EC10A

.special_overworld
#_0ABA26: SEP #$20

#_0ABA28: LDA.l $7EF3C5
#_0ABA2C: CMP.b #$02
#_0ABA2E: BCS .zelda_rescured

; clip to black inside color window
#_0ABA30: LDA.b #$80
#_0ABA32: STA.b $99

; half color math, enabled for BG1 and CG0
#_0ABA34: LDA.b #$61
#_0ABA36: STA.b $9A

.zelda_rescured
#_0ABA38: LDA.b #!SFX3_10
#_0ABA3A: STA.w $012F

#_0ABA3D: LDA.b #!SONG_F2_HALFVOL
#_0ABA3F: STA.w $012C

#_0ABA42: LDA.b #$07
#_0ABA44: STA.w BGMODE
#_0ABA47: STA.b $94

#_0ABA49: LDA.b #$80
#_0ABA4B: STA.w M7SEL

#_0ABA4E: RTL

;===================================================================================================

WorldMap_LoadLightWorldMap:
#_0ABA4F: JSR WorldMap_FillTilemapWithEF

#_0ABA52: LDA.b #$11
#_0ABA54: STA.b $1C
#_0ABA56: STZ.b $1D

#_0ABA58: JSL TransferMode7Characters
#_0ABA5C: JSR WorldMap_SetUpHDMA

#_0ABA5F: PHB

#_0ABA60: LDA.b #Palettes_OWMAP>>16
#_0ABA62: PHA
#_0ABA63: PLB

#_0ABA64: REP #$30

#_0ABA66: LDX.w #$00FE
#_0ABA69: LDY.w #$00FE

#_0ABA6C: LDA.b $8A
#_0ABA6E: AND.w #$0040
#_0ABA71: BEQ .light_world

#_0ABA73: LDY.w #$01FE

.light_world
.next_color
#_0ABA76: LDA.w Palettes_OWMAP,Y
#_0ABA79: STA.l $7EC500,X

#_0ABA7D: DEY
#_0ABA7E: DEY

#_0ABA7F: DEX
#_0ABA80: DEX
#_0ABA81: BPL .next_color

#_0ABA83: SEP #$30

#_0ABA85: PLB

#_0ABA86: JSL RefreshLinkEquipmentPalettes_sword_and_mail

#_0ABA8A: INC.b $15

#_0ABA8C: LDA.b #$07
#_0ABA8E: STA.b $17

#_0ABA90: STZ.b $13

#_0ABA92: INC.w $0710
#_0ABA95: INC.w $0200

#_0ABA98: RTL

;===================================================================================================

WorldMap_LoadDarkWorldMap:
#_0ABA99: LDA.b $8A
#_0ABA9B: AND.b #$40
#_0ABA9D: BEQ .light_world

#_0ABA9F: REP #$30

#_0ABAA1: LDX.w #$03FE

.copy_next
#_0ABAA4: LDA.l WorldMap_DarkWorldTileMap,X
#_0ABAA8: STA.w $1000,X

#_0ABAAB: DEX
#_0ABAAC: DEX
#_0ABAAD: BPL .copy_next

#_0ABAAF: SEP #$30

; Trigger dark world tile map update
#_0ABAB1: LDA.b #$15
#_0ABAB3: STA.b $17

.light_world
#_0ABAB5: INC.w $0200

#_0ABAB8: RTL

;===================================================================================================

WorldMap_LoadSpriteGFX:
#_0ABAB9: LDA.b #$10
#_0ABABB: STA.w $0AAA

#_0ABABE: JSL Graphics_LoadChrHalfSlot

#_0ABAC2: STZ.w $0AAA

#_0ABAC5: INC.w $0200

#_0ABAC8: RTL

;===================================================================================================

WorldMap_Brighten:
#_0ABAC9: INC.b $13

#_0ABACB: LDA.b $13
#_0ABACD: CMP.b #$0F
#_0ABACF: BNE .exit

#_0ABAD1: INC.w $0200

.exit
#_0ABAD4: RTL

;===================================================================================================

UNREACHABLE_0ABAD5:
#_0ABAD5: db $1E, $00, $1E, $02, $FE, $02, $00, $80
#_0ABADD: db $02, $80, $00, $01, $FF, $01

;===================================================================================================

WorldMap_BaseZoom:
#_0ABAE3: db $21 ; zoomed out
#_0ABAE4: db $0C ; zoomed in

;===================================================================================================

WorldMap_PanMovements:
#_0ABAE5: dw $0000 ; none
#_0ABAE7: dw $0000 ; none
#_0ABAE9: dw $0001 ; down
#_0ABAEB: dw $0002 ; right
#_0ABAED: dw $FFFF ; up
#_0ABAEF: dw $FFFE ; left
#_0ABAF1: dw $0001 ; never used, but handles UD
#_0ABAF3: dw $0002 ; never used, but handles LR

;===================================================================================================

WorldMap_PanBoundaries:
#_0ABAF5: db $00, $00 ; none
#_0ABAF7: db $00, $00 ; none
#_0ABAF9: db $E0, $00 ; down
#_0ABAFB: db $E0, $01 ; right
#_0ABAFD: db $B8, $FF ; up
#_0ABAFF: db $20, $FF ; left

;===================================================================================================

WorldMapHDMA_ZoomPointers:
#_0ABB01: dw WorldMapHDMA_ZoomedOut
#_0ABB03: dw WorldMapHDMA_ZoomedIn

;===================================================================================================

WorldMap_PlayerControl:
#_0ABB05: LDA.w $0636
#_0ABB08: ASL A
#_0ABB09: BCC .no_zoom_change

#_0ABB0B: TAX

#_0ABB0C: LSR A
#_0ABB0D: STA.w $0636

#_0ABB10: LDA.l WorldMapHDMA_ZoomPointers,X
#_0ABB14: STA.w DMA6ADDRL
#_0ABB17: STA.w DMA7ADDRL

.no_zoom_change
#_0ABB1A: LDA.w $0636
#_0ABB1D: BNE .ignore_change

; check for X
#_0ABB1F: LDA.b $F6
#_0ABB21: AND.b #$40
#_0ABB23: BEQ .ignore_change

#_0ABB25: INC.w $0200

#_0ABB28: RTL

;---------------------------------------------------------------------------------------------------

.ignore_change
; short timer to prevent fast changing
#_0ABB29: LDA.b $B2
#_0ABB2B: BEQ .not_switching

#_0ABB2D: DEC.b $B2
#_0ABB2F: JMP.w .continue

;---------------------------------------------------------------------------------------------------

.not_switching
; check for LR
#_0ABB32: LDA.b $F6
#_0ABB34: AND.b #$70
#_0ABB36: BEQ .continue

#_0ABB38: LDA.b #!SFX3_24
#_0ABB3A: STA.w $012F

#_0ABB3D: LDA.b #$08
#_0ABB3F: STA.b $B2

#_0ABB41: LDA.w $0636
#_0ABB44: EOR.b #$01
#_0ABB46: TAX

#_0ABB47: ORA.b #$80
#_0ABB49: STA.w $0636

#_0ABB4C: LDA.l WorldMap_BaseZoom,X
#_0ABB50: STA.w $0637

#_0ABB53: CMP.b #$0C
#_0ABB55: BNE .not_zoomed_in

;---------------------------------------------------------------------------------------------------

.zoomed_in
#_0ABB57: REP #$20

#_0ABB59: LDA.l $7EC108

#_0ABB5D: LSR A
#_0ABB5E: LSR A
#_0ABB5F: LSR A
#_0ABB60: LSR A

#_0ABB61: SEC
#_0ABB62: SBC.w #$0048
#_0ABB65: AND.w #$FFFE
#_0ABB68: STA.b $E6

#_0ABB6A: CLC
#_0ABB6B: ADC.w #$0100
#_0ABB6E: STA.w $063A

#_0ABB71: LDA.l $7EC10A

#_0ABB75: LSR A
#_0ABB76: LSR A
#_0ABB77: LSR A
#_0ABB78: LSR A

#_0ABB79: SEC
#_0ABB7A: SBC.w #$0080
#_0ABB7D: STA.b $02
#_0ABB7F: BPL .x_positive_a

#_0ABB81: EOR.w #$FFFF
#_0ABB84: INC A

.x_positive_a
#_0ABB85: STA.b $00

#_0ABB87: ASL A
#_0ABB88: ASL A

#_0ABB89: CLC
#_0ABB8A: ADC.b $00

#_0ABB8C: LSR A

#_0ABB8D: LDX.b $03
#_0ABB8F: BPL .x_positive_b

#_0ABB91: EOR.w #$FFFF
#_0ABB94: INC A

.x_positive_b
#_0ABB95: CLC
#_0ABB96: ADC.w #$0080
#_0ABB99: BRA .set_scroll

;---------------------------------------------------------------------------------------------------

.not_zoomed_in
#_0ABB9B: REP #$21

#_0ABB9D: LDA.w #$00C8
#_0ABBA0: STA.b $E6

#_0ABBA2: ADC.w #$0100
#_0ABBA5: STA.w $063A

#_0ABBA8: LDA.w #$0080

;---------------------------------------------------------------------------------------------------

.set_scroll
#_0ABBAB: AND.w #$FFFE
#_0ABBAE: STA.b $E0

;---------------------------------------------------------------------------------------------------

.continue
#_0ABBB0: SEP #$20

#_0ABBB2: LDA.w $0636
#_0ABBB5: BEQ .map_zoomed_out

#_0ABBB7: LDA.b $F0
#_0ABBB9: AND.b #$0C
#_0ABBBB: TAX

#_0ABBBC: REP #$20

#_0ABBBE: LDA.b $E6
#_0ABBC0: CMP.l WorldMap_PanBoundaries,X
#_0ABBC4: BEQ .at_vertical_boundary

#_0ABBC6: CLC
#_0ABBC7: ADC.l WorldMap_PanMovements,X
#_0ABBCB: STA.b $E6

#_0ABBCD: CLC
#_0ABBCE: ADC.w #$0100
#_0ABBD1: STA.w $063A

.at_vertical_boundary
#_0ABBD4: SEP #$20

;---------------------------------------------------------------------------------------------------

; check for lr
#_0ABBD6: LDA.b $F0
#_0ABBD8: AND.b #$03
#_0ABBDA: ASL A

#_0ABBDB: INC A
#_0ABBDC: ASL A
#_0ABBDD: TAX

#_0ABBDE: REP #$20

#_0ABBE0: LDA.b $E0
#_0ABBE2: CMP.l WorldMap_PanBoundaries,X
#_0ABBE6: BEQ .at_horizontal_boundary

#_0ABBE8: CLC
#_0ABBE9: ADC.l WorldMap_PanMovements,X
#_0ABBED: STA.b $E0

.at_horizontal_boundary
#_0ABBEF: SEP #$20

.map_zoomed_out
#_0ABBF1: JSR WorldMap_HandleSprites

;---------------------------------------------------------------------------------------------------

#EXIT_0ABBF4:
#_0ABBF4: RTL

;===================================================================================================

WorldMap_RestoreGraphics:
#_0ABBF5: DEC.b $13
#_0ABBF7: BNE EXIT_0ABBF4

#_0ABBF9: JSL EnableForceBlank

#_0ABBFD: INC.w $0200

;---------------------------------------------------------------------------------------------------

#_0ABC00: REP #$20

#_0ABC02: LDX.b #$00

.next_color
#_0ABC04: LDA.l $7EC300,X
#_0ABC08: STA.l $7EC500,X

#_0ABC0C: LDA.l $7EC380,X
#_0ABC10: STA.l $7EC580,X

#_0ABC14: LDA.l $7EC400,X
#_0ABC18: STA.l $7EC600,X

#_0ABC1C: LDA.l $7EC480,X
#_0ABC20: STA.l $7EC680,X

#_0ABC24: INX
#_0ABC25: INX
#_0ABC26: CPX.b #$80
#_0ABC28: BNE .next_color

;---------------------------------------------------------------------------------------------------

#_0ABC2A: LDA.l $7EC225
#_0ABC2E: STA.b $99

#_0ABC30: STZ.b $E4
#_0ABC32: STZ.b $EA

#_0ABC34: LDA.l $7EC200
#_0ABC38: STA.b $E0

#_0ABC3A: LDA.l $7EC202
#_0ABC3E: STA.b $E2

#_0ABC40: LDA.l $7EC204
#_0ABC44: STA.b $E6

#_0ABC46: LDA.l $7EC206
#_0ABC4A: STA.b $E8

#_0ABC4C: LDA.l $7EC211
#_0ABC50: STA.b $1C

;===================================================================================================

Attract_SetUpConclusionHDMA:
#_0ABC52: LDA.w #WorldMapHDMA_AttractMode>>0
#_0ABC55: STA.w DMA7ADDRL

#_0ABC58: LDX.b #WorldMapHDMA_AttractMode>>16
#_0ABC5A: STX.w DMA7ADDRB

#_0ABC5D: LDX.b #$00
#_0ABC5F: STX.w HDMA7INDIRECTB

#_0ABC62: SEP #$30

#_0ABC64: LDA.b #$80
#_0ABC66: STA.b $9B

#_0ABC68: LDA.b #$09
#_0ABC6A: STA.w BGMODE
#_0ABC6D: STA.b $94

#_0ABC6F: STZ.w $0710

#_0ABC72: RTL

;===================================================================================================

WorldMap_ExitMap:
#_0ABC73: STZ.w $0AA9
#_0ABC76: STZ.w $0AB2

#_0ABC79: JSL InitializeTilesets

#_0ABC7D: INC.b $15

#_0ABC7F: STZ.b $B2
#_0ABC81: STZ.w $0200
#_0ABC84: STZ.b $B0

#_0ABC86: LDA.w $010C
#_0ABC89: STA.b $10

#_0ABC8B: LDA.b #$20
#_0ABC8D: STA.b $11

#_0ABC8F: STZ.w $1000
#_0ABC92: STZ.w $1001

#_0ABC95: LDA.l $7EC229
#_0ABC99: STA.b $9B

#_0ABC9B: SEP #$20

#_0ABC9D: LDA.b #!SFX3_10
#_0ABC9F: STA.w $012F

#_0ABCA2: LDA.b #!SONG_F3_MAXVOL
#_0ABCA4: STA.w $012C

#_0ABCA7: RTL

;---------------------------------------------------------------------------------------------------

WorldMap_SetUpHDMA:
#_0ABCA8: REP #$20

#_0ABCAA: LDA.w #$0080
#_0ABCAD: STA.b $E0

#_0ABCAF: LDA.w #$00C8
#_0ABCB2: STA.b $E6

#_0ABCB4: ADC.w #$0100
#_0ABCB7: STA.w $063A

#_0ABCBA: LDA.w #$0100
#_0ABCBD: STA.w $0638

; HDMA mode 2: 1 register write twice
; Indirect HDMA table
; register: $211B - M7A
#_0ABCC0: LDA.w #$1B42
#_0ABCC3: STA.w DMA6MODE

; HDMA mode 2: 1 register write twice
; Indirect HDMA table
; register: $211E - M7D
#_0ABCC6: LDA.w #$1E42
#_0ABCC9: STA.w DMA7MODE

;---------------------------------------------------------------------------------------------------

#_0ABCCC: SEP #$20

#_0ABCCE: STZ.b $96
#_0ABCD0: STZ.b $97
#_0ABCD2: STZ.b $98
#_0ABCD4: STZ.b $1E
#_0ABCD6: STZ.b $1F

#_0ABCD8: STZ.w M7B
#_0ABCDB: STZ.w M7B
#_0ABCDE: STZ.w M7C
#_0ABCE1: STZ.w M7C

#_0ABCE4: STZ.w M7X
#_0ABCE7: LDA.b #$01
#_0ABCE9: STA.w M7X

#_0ABCEC: STZ.w M7Y
#_0ABCEF: STA.w M7Y

;---------------------------------------------------------------------------------------------------

#_0ABCF2: LDA.b $10
#_0ABCF4: CMP.b #$14
#_0ABCF6: BEQ .attract_mode

#_0ABCF8: LDA.b $11
#_0ABCFA: CMP.b #$0A
#_0ABCFC: BNE .not_flute_map

#_0ABCFE: JMP.w .flute_map

;---------------------------------------------------------------------------------------------------

.not_flute_map
#_0ABD01: LDA.b #$04
#_0ABD03: STA.w $0635

#_0ABD06: LDA.b #$0C
#_0ABD08: STA.w $0637

#_0ABD0B: LDA.b #$01
#_0ABD0D: STA.w $0636

#_0ABD10: REP #$21

; Get link's position on overworld
#_0ABD12: LDA.l $7EC108

#_0ABD16: LSR A
#_0ABD17: LSR A
#_0ABD18: LSR A
#_0ABD19: LSR A

#_0ABD1A: SEC
#_0ABD1B: SBC.w #$0048

#_0ABD1E: AND.w #$FFFE
#_0ABD21: CLC
#_0ABD22: ADC.l WorldMap_PanMovements
#_0ABD26: STA.b $E6

#_0ABD28: CLC
#_0ABD29: ADC.w #$0100
#_0ABD2C: STA.w $063A

;---------------------------------------------------------------------------------------------------

#_0ABD2F: LDA.l $7EC10A

#_0ABD33: LSR A
#_0ABD34: LSR A
#_0ABD35: LSR A
#_0ABD36: LSR A

#_0ABD37: SEC
#_0ABD38: SBC.w #$0080
#_0ABD3B: STA.b $02
#_0ABD3D: BPL .x_positive_a

#_0ABD3F: EOR.w #$FFFF
#_0ABD42: INC A

.x_positive_a
#_0ABD43: STA.b $00

#_0ABD45: ASL A
#_0ABD46: ASL A
#_0ABD47: CLC
#_0ABD48: ADC.b $00

#_0ABD4A: LSR A
#_0ABD4B: LDX.b $03
#_0ABD4D: BPL .x_positive_b

#_0ABD4F: EOR.w #$FFFF
#_0ABD52: INC A

.x_positive_b
#_0ABD53: CLC
#_0ABD54: ADC.w #$0080
#_0ABD57: AND.w #$FFFE
#_0ABD5A: STA.b $E0

;---------------------------------------------------------------------------------------------------

.normal_map
#_0ABD5C: LDA.w #WorldMapHDMA_ZoomedIn>>0
#_0ABD5F: STA.w DMA6ADDRL
#_0ABD62: STA.w DMA7ADDRL

#_0ABD65: LDX.b #WorldMapHDMA_ZoomedIn>>16
#_0ABD67: STX.w DMA6ADDRB
#_0ABD6A: STX.w DMA7ADDRB

#_0ABD6D: LDX.b #WorldMapHDMA_ZoomedIn>>16
#_0ABD6F: BRA .continue

;---------------------------------------------------------------------------------------------------

.attract_mode
#_0ABD71: REP #$21

#_0ABD73: LDA.w #WorldMapHDMA_AttractMode>>0
#_0ABD76: STA.w DMA6ADDRL
#_0ABD79: STA.w DMA7ADDRL

#_0ABD7C: LDX.b #WorldMapHDMA_AttractMode>>16
#_0ABD7E: STX.w DMA6ADDRB
#_0ABD81: STX.w DMA7ADDRB

#_0ABD84: LDX.b #$00
#_0ABD86: BRA .continue

;---------------------------------------------------------------------------------------------------

.flute_map
#_0ABD88: LDA.b #$04
#_0ABD8A: STA.w $0635

#_0ABD8D: LDA.b #$21
#_0ABD8F: STA.w $0637
#_0ABD92: STZ.w $0636

#_0ABD95: REP #$21

#_0ABD97: LDA.w #WorldMapHDMA_ZoomedOut>>0
#_0ABD9A: STA.w DMA6ADDRL
#_0ABD9D: STA.w DMA7ADDRL

#_0ABDA0: LDX.b #WorldMapHDMA_ZoomedOut>>16
#_0ABDA2: STX.w DMA6ADDRB
#_0ABDA5: STX.w DMA7ADDRB

#_0ABDA8: LDX.b #WorldMapHDMA_ZoomedOut>>16

;---------------------------------------------------------------------------------------------------

.continue
#_0ABDAA: STX.w HDMA6INDIRECTB
#_0ABDAD: STX.w HDMA7INDIRECTB

#_0ABDB0: SEP #$20

; Enable HDMA channels 6 and 7
#_0ABDB2: LDA.b #$C0
#_0ABDB4: STA.b $9B

#_0ABDB6: RTS

;===================================================================================================

WorldMap_FillTilemapWithEF:
#_0ABDB7: REP #$20

; Use this character to empty everything
#_0ABDB9: LDA.w #$00EF
#_0ABDBC: STA.b $00

#_0ABDBE: STZ.w VMAIN
#_0ABDC1: STZ.w VMADDR

#_0ABDC4: LDA.w #$1808
#_0ABDC7: STA.w DMA1MODE
#_0ABDCA: STZ.w DMA1ADDRB

#_0ABDCD: LDA.w #$0000
#_0ABDD0: STA.w DMA1ADDRL

#_0ABDD3: LDA.w #$4000
#_0ABDD6: STA.w DMA1SIZE

#_0ABDD9: LDY.b #$02
#_0ABDDB: STY.w DMAENABLE

#_0ABDDE: SEP #$20

#_0ABDE0: RTS

;===================================================================================================

WorldMapHDMA_ZoomedOut:
#_0ABDE1: db $F0 : dw WorldMapHDMA_ZoomedOut_Part1 ; 112 lines, continuous
#_0ABDE4: db $F0 : dw WorldMapHDMA_ZoomedOut_Part2 ; 112 lines, continuous
#_0ABDE7: db $00 ; end

;===================================================================================================

WorldMapHDMA_ZoomedIn:
#_0ABDE8: db $F0 : dw WorldMapHDMA_ZoomedIn_Part1 ; 112 lines, continuous
#_0ABDEB: db $F0 : dw WorldMapHDMA_ZoomedIn_Part2 ; 112 lines, continuous
#_0ABDEE: db $00 ; end

;===================================================================================================

WorldMapHDMA_AttractMode:
#_0ABDEF: db $F0 : dw $1B00 ; 112 lines, continuous
#_0ABDF2: db $F0 : dw $1BE0 ; 112 lines, continuous
#_0ABDF5: db $00 ; end

;===================================================================================================
; Numbers in comments are the value of $7EF3C7
; TODO document what's being displayed for each
;===================================================================================================
WorldMapIcon_posx_spr0:
#_0ABDF6: dw $07FF ; 0x00
#_0ABDF8: dw $02C0 ; 0x01
#_0ABDFA: dw $0D00 ; 0x02
#_0ABDFC: dw $0F31 ; 0x03
#_0ABDFE: dw $006D ; 0x04
#_0ABE00: dw $07E0 ; 0x05
#_0ABE02: dw $0F40 ; 0x06
#_0ABE04: dw $0F40 ; 0x07
#_0ABE06: dw $08DC ; 0x08

WorldMapIcon_posy_spr0:
#_0ABE08: dw $0730 ; 0x00
#_0ABE0A: dw $06A0 ; 0x01
#_0ABE0C: dw $0710 ; 0x02
#_0ABE0E: dw $0620 ; 0x03
#_0ABE10: dw $0070 ; 0x04
#_0ABE12: dw $0640 ; 0x05
#_0ABE14: dw $0620 ; 0x06
#_0ABE16: dw $0620 ; 0x07
#_0ABE18: dw $0030 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_posx_spr1:
#_0ABE1A: dw $FF00 ; 0x00
#_0ABE1C: dw $FF00 ; 0x01
#_0ABE1E: dw $FF00 ; 0x02
#_0ABE20: dw $08D0 ; 0x03
#_0ABE22: dw $FF00 ; 0x04
#_0ABE24: dw $FF00 ; 0x05
#_0ABE26: dw $FF00 ; 0x06
#_0ABE28: dw $0082 ; 0x07
#_0ABE2A: dw $FF00 ; 0x08

WorldMapIcon_posy_spr1:
#_0ABE2C: dw $FF00 ; 0x00
#_0ABE2E: dw $FF00 ; 0x01
#_0ABE30: dw $FF00 ; 0x02
#_0ABE32: dw $0080 ; 0x03
#_0ABE34: dw $FF00 ; 0x04
#_0ABE36: dw $FF00 ; 0x05
#_0ABE38: dw $FF00 ; 0x06
#_0ABE3A: dw $00B0 ; 0x07
#_0ABE3C: dw $FF00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_posx_spr2:
#_0ABE3E: dw $FF00 ; 0x00
#_0ABE40: dw $FF00 ; 0x01
#_0ABE42: dw $FF00 ; 0x02
#_0ABE44: dw $0108 ; 0x03
#_0ABE46: dw $FF00 ; 0x04
#_0ABE48: dw $FF00 ; 0x05
#_0ABE4A: dw $FF00 ; 0x06
#_0ABE4C: dw $0F11 ; 0x07
#_0ABE4E: dw $FF00 ; 0x08

WorldMapIcon_posy_spr2:
#_0ABE50: dw $FF00 ; 0x00
#_0ABE52: dw $FF00 ; 0x01
#_0ABE54: dw $FF00 ; 0x02
#_0ABE56: dw $0D70 ; 0x03
#_0ABE58: dw $FF00 ; 0x04
#_0ABE5A: dw $FF00 ; 0x05
#_0ABE5C: dw $FF00 ; 0x06
#_0ABE5E: dw $0103 ; 0x07
#_0ABE60: dw $FF00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_posx_spr3:
#_0ABE62: dw $FF00 ; 0x00
#_0ABE64: dw $FF00 ; 0x01
#_0ABE66: dw $FF00 ; 0x02
#_0ABE68: dw $006D ; 0x03
#_0ABE6A: dw $FF00 ; 0x04
#_0ABE6C: dw $FF00 ; 0x05
#_0ABE6E: dw $FF00 ; 0x06
#_0ABE70: dw $01D0 ; 0x07
#_0ABE72: dw $FF00 ; 0x08

WorldMapIcon_posy_spr3:
#_0ABE74: dw $FF00 ; 0x00
#_0ABE76: dw $FF00 ; 0x01
#_0ABE78: dw $FF00 ; 0x02
#_0ABE7A: dw $0070 ; 0x03
#_0ABE7C: dw $FF00 ; 0x04
#_0ABE7E: dw $FF00 ; 0x05
#_0ABE80: dw $FF00 ; 0x06
#_0ABE82: dw $0780 ; 0x07
#_0ABE84: dw $FF00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_posx_spr4:
#_0ABE86: dw $FF00 ; 0x00
#_0ABE88: dw $FF00 ; 0x01
#_0ABE8A: dw $FF00 ; 0x02
#_0ABE8C: dw $FF00 ; 0x03
#_0ABE8E: dw $FF00 ; 0x04
#_0ABE90: dw $FF00 ; 0x05
#_0ABE92: dw $FF00 ; 0x06
#_0ABE94: dw $0100 ; 0x07
#_0ABE96: dw $FF00 ; 0x08

WorldMapIcon_posy_spr4:
#_0ABE98: dw $FF00 ; 0x00
#_0ABE9A: dw $FF00 ; 0x01
#_0ABE9C: dw $FF00 ; 0x02
#_0ABE9E: dw $FF00 ; 0x03
#_0ABEA0: dw $FF00 ; 0x04
#_0ABEA2: dw $FF00 ; 0x05
#_0ABEA4: dw $FF00 ; 0x06
#_0ABEA6: dw $0CA0 ; 0x07
#_0ABEA8: dw $FF00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_posx_spr5:
#_0ABEAA: dw $FF00 ; 0x00
#_0ABEAC: dw $FF00 ; 0x01
#_0ABEAE: dw $FF00 ; 0x02
#_0ABEB0: dw $FF00 ; 0x03
#_0ABEB2: dw $FF00 ; 0x04
#_0ABEB4: dw $FF00 ; 0x05
#_0ABEB6: dw $FF00 ; 0x06
#_0ABEB8: dw $0CA0 ; 0x07
#_0ABEBA: dw $FF00 ; 0x08

WorldMapIcon_posy_spr5:
#_0ABEBC: dw $FF00 ; 0x00
#_0ABEBE: dw $FF00 ; 0x01
#_0ABEC0: dw $FF00 ; 0x02
#_0ABEC2: dw $FF00 ; 0x03
#_0ABEC4: dw $FF00 ; 0x04
#_0ABEC6: dw $FF00 ; 0x05
#_0ABEC8: dw $FF00 ; 0x06
#_0ABECA: dw $0DA0 ; 0x07
#_0ABECC: dw $FF00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_posx_spr6:
#_0ABECE: dw $FF00 ; 0x00
#_0ABED0: dw $FF00 ; 0x01
#_0ABED2: dw $FF00 ; 0x02
#_0ABED4: dw $FF00 ; 0x03
#_0ABED6: dw $FF00 ; 0x04
#_0ABED8: dw $FF00 ; 0x05
#_0ABEDA: dw $FF00 ; 0x06
#_0ABEDC: dw $0759 ; 0x07
#_0ABEDE: dw $FF00 ; 0x08

WorldMapIcon_posy_spr6:
#_0ABEE0: dw $FF00 ; 0x00
#_0ABEE2: dw $FF00 ; 0x01
#_0ABEE4: dw $FF00 ; 0x02
#_0ABEE6: dw $FF00 ; 0x03
#_0ABEE8: dw $FF00 ; 0x04
#_0ABEEA: dw $FF00 ; 0x05
#_0ABEEC: dw $FF00 ; 0x06
#_0ABEEE: dw $0ED0 ; 0x07
#_0ABEF0: dw $FF00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr0:
#_0ABEF2: db $00, $00 ; 0x00
#_0ABEF4: db $00, $00 ; 0x01
#_0ABEF6: db $00, $00 ; 0x02
#_0ABEF8: db $38, $60 ; 0x03
#_0ABEFA: db $34, $62 ; 0x04
#_0ABEFC: db $32, $66 ; 0x05
#_0ABEFE: db $34, $64 ; 0x06
#_0ABF00: db $34, $64 ; 0x07
#_0ABF02: db $32, $66 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr1:
#_0ABF04: db $00, $00 ; 0x00
#_0ABF06: db $00, $00 ; 0x01
#_0ABF08: db $00, $00 ; 0x02
#_0ABF0A: db $32, $60 ; 0x03
#_0ABF0C: db $00, $00 ; 0x04
#_0ABF0E: db $00, $00 ; 0x05
#_0ABF10: db $00, $00 ; 0x06
#_0ABF12: db $34, $64 ; 0x07
#_0ABF14: db $00, $00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr2:
#_0ABF16: db $00, $00 ; 0x00
#_0ABF18: db $00, $00 ; 0x01
#_0ABF1A: db $00, $00 ; 0x02
#_0ABF1C: db $34, $60 ; 0x03
#_0ABF1E: db $00, $00 ; 0x04
#_0ABF20: db $00, $00 ; 0x05
#_0ABF22: db $00, $00 ; 0x06
#_0ABF24: db $34, $64 ; 0x07
#_0ABF26: db $00, $00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr3:
#_0ABF28: db $00, $00 ; 0x00
#_0ABF2A: db $00, $00 ; 0x01
#_0ABF2C: db $00, $00 ; 0x02
#_0ABF2E: db $34, $62 ; 0x03
#_0ABF30: db $00, $00 ; 0x04
#_0ABF32: db $00, $00 ; 0x05
#_0ABF34: db $00, $00 ; 0x06
#_0ABF36: db $34, $64 ; 0x07
#_0ABF38: db $00, $00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr4:
#_0ABF3A: db $00, $00 ; 0x00
#_0ABF3C: db $00, $00 ; 0x01
#_0ABF3E: db $00, $00 ; 0x02
#_0ABF40: db $00, $00 ; 0x03
#_0ABF42: db $00, $00 ; 0x04
#_0ABF44: db $00, $00 ; 0x05
#_0ABF46: db $00, $00 ; 0x06
#_0ABF48: db $34, $64 ; 0x07
#_0ABF4A: db $00, $00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr5:
#_0ABF4C: db $00, $00 ; 0x00
#_0ABF4E: db $00, $00 ; 0x01
#_0ABF50: db $00, $00 ; 0x02
#_0ABF52: db $00, $00 ; 0x03
#_0ABF54: db $00, $00 ; 0x04
#_0ABF56: db $00, $00 ; 0x05
#_0ABF58: db $00, $00 ; 0x06
#_0ABF5A: db $34, $64 ; 0x07
#_0ABF5C: db $00, $00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr6:
#_0ABF5E: db $00, $00 ; 0x00
#_0ABF60: db $00, $00 ; 0x01
#_0ABF62: db $00, $00 ; 0x02
#_0ABF64: db $00, $00 ; 0x03
#_0ABF66: db $00, $00 ; 0x04
#_0ABF68: db $00, $00 ; 0x05
#_0ABF6A: db $00, $00 ; 0x06
#_0ABF6C: db $34, $64 ; 0x07
#_0ABF6E: db $00, $00 ; 0x08

;===================================================================================================

WorldMap_RedXChars:
#_0ABF70: db $68, $69, $78, $69

;===================================================================================================

WorldMap_PortalProps:
#_0ABF74: db $34, $74, $F4, $B4

;===================================================================================================

WorldMap_HandleSprites:
#_0ABF78: LDA.b $1A
#_0ABF7A: AND.b #$10
#_0ABF7C: BEQ .dont_draw_link

#_0ABF7E: JSR WorldMap_CalculateOAMCoordinates
#_0ABF81: BCC .dont_draw_link

;---------------------------------------------------------------------------------------------------

#_0ABF83: LDA.b $0E
#_0ABF85: SEC
#_0ABF86: SBC.b #$04
#_0ABF88: STA.b $0E

#_0ABF8A: LDA.b $0F
#_0ABF8C: SEC
#_0ABF8D: SBC.b #$04
#_0ABF8F: STA.b $0F

#_0ABF91: LDA.b #$00
#_0ABF93: STA.b $0D

#_0ABF95: LDA.b #$3E
#_0ABF97: STA.b $0C

#_0ABF99: LDA.b #$02
#_0ABF9B: STA.b $0B

#_0ABF9D: LDX.b #$00
#_0ABF9F: JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.dont_draw_link
#_0ABFA2: LDA.l $7EC108
#_0ABFA6: PHA

#_0ABFA7: LDA.l $7EC109
#_0ABFAB: PHA

#_0ABFAC: LDA.l $7EC10A
#_0ABFB0: PHA

#_0ABFB1: LDA.l $7EC10B
#_0ABFB5: PHA

;---------------------------------------------------------------------------------------------------

#_0ABFB6: LDA.w $008A
#_0ABFB9: CMP.b #$40
#_0ABFBB: BCS .dont_draw_mirror_portal

; check for mirror portal
#_0ABFBD: LDX.b #$0F

#_0ABFBF: LDA.w $1AB0,X
#_0ABFC2: ORA.w $1AC0,X
#_0ABFC5: ORA.w $1AD0,X
#_0ABFC8: ORA.w $1AE0,X
#_0ABFCB: BEQ .dont_draw_mirror_portal

#_0ABFCD: LDA.b $1A
#_0ABFCF: BNE .dont_swap_portal_char

#_0ABFD1: LDA.w $1AF0,X
#_0ABFD4: INC A
#_0ABFD5: STA.w $1AF0,X

.dont_swap_portal_char
#_0ABFD8: LDA.w $1AB0,X
#_0ABFDB: STA.l $7EC10A

#_0ABFDF: LDA.w $1AC0,X
#_0ABFE2: STA.l $7EC10B

#_0ABFE6: LDA.w $1AD0,X
#_0ABFE9: STA.l $7EC108

#_0ABFED: LDA.w $1AE0,X
#_0ABFF0: STA.l $7EC109

#_0ABFF4: JSR WorldMap_CalculateOAMCoordinates
#_0ABFF7: BCC .dont_draw_mirror_portal

#_0ABFF9: LDA.b #$6A
#_0ABFFB: STA.b $0D

#_0ABFFD: LDA.b $1A
#_0ABFFF: LSR A
#_0AC000: AND.b #$03
#_0AC002: TAX

#_0AC003: LDA.l WorldMap_PortalProps,X
#_0AC007: STA.b $0C

#_0AC009: LDA.b #$02
#_0AC00B: STA.b $0B

#_0AC00D: LDX.b #$0F
#_0AC00F: JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.dont_draw_mirror_portal
#_0AC012: LDA.l $7EF2DB
#_0AC016: AND.b #$20
#_0AC018: BNE .pyramid_open

#_0AC01A: LDA.l $7EF3C7
#_0AC01E: CMP.b #$06

#_0AC020: ROL A
#_0AC021: EOR.w $0FFF
#_0AC024: AND.b #$01
#_0AC026: BEQ .draw_prizes

.pyramid_open
#_0AC028: JMP.w .restore_coords_and_exit

;---------------------------------------------------------------------------------------------------

.draw_prizes
; checks for green pendant or crystal 1
#_0AC02B: LDX.b #$00
#_0AC02D: JSR OverworldMap_CheckForPendant
#_0AC030: BCS .skip_draw_0

#_0AC032: JSR OverworldMap_CheckForCrystal
#_0AC035: BCS .skip_draw_0

#_0AC037: LDA.l $7EF3C7
#_0AC03B: ASL A
#_0AC03C: TAX

#_0AC03D: LDA.l WorldMapIcon_posx_spr0+1,X
#_0AC041: BMI .skip_draw_0

#_0AC043: STA.l $7EC10B

#_0AC047: LDA.l WorldMapIcon_posx_spr0+0,X
#_0AC04B: STA.l $7EC10A

#_0AC04F: LDA.l WorldMapIcon_posy_spr0+1,X
#_0AC053: STA.l $7EC109

#_0AC057: LDA.l WorldMapIcon_posy_spr0+0,X
#_0AC05B: STA.l $7EC108

;---------------------------------------------------------------------------------------------------

#_0AC05F: LDA.l WorldMapIcon_tile_spr0+1,X
#_0AC063: BEQ .dont_adjust_0

; crystals will be based on pendant number
#_0AC065: CMP.b #$64
#_0AC067: BEQ .is_crystal_1

#_0AC069: LDA.b $1A
#_0AC06B: AND.b #$10
#_0AC06D: BNE .skip_draw_0

.is_crystal_1
#_0AC06F: JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_0
#_0AC072: LDX.b #$0E
#_0AC074: JSR WorldMap_CalculateOAMCoordinates
#_0AC077: BCC .skip_draw_0

#_0AC079: LDA.l $7EF3C7
#_0AC07D: ASL A
#_0AC07E: TAX

#_0AC07F: LDA.l WorldMapIcon_tile_spr0+1,X
#_0AC083: BEQ .is_red_x_0

#_0AC085: STA.b $0D

#_0AC087: LDA.l WorldMapIcon_tile_spr0+0,X
#_0AC08B: STA.b $0C

#_0AC08D: LDA.b #$02
#_0AC08F: BRA .continue_0

;---------------------------------------------------------------------------------------------------

.is_red_x_0
#_0AC091: LDA.b $1A

#_0AC093: LSR A
#_0AC094: LSR A
#_0AC095: LSR A

#_0AC096: AND.b #$03
#_0AC098: TAX

#_0AC099: LDA.l WorldMap_RedXChars,X
#_0AC09D: STA.b $0D

#_0AC09F: LDA.b #$32
#_0AC0A1: STA.b $0C

#_0AC0A3: LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_0
#_0AC0A5: STA.b $0B

#_0AC0A7: LDX.b #$0E
#_0AC0A9: JSR WorldMap_HandleSpriteBlink

;===================================================================================================

.skip_draw_0
; checks for red pendant or crystal 3
#_0AC0AC: LDX.b #$01
#_0AC0AE: JSR OverworldMap_CheckForPendant
#_0AC0B1: BCS .skip_draw_1

#_0AC0B3: JSR OverworldMap_CheckForCrystal
#_0AC0B6: BCS .skip_draw_1

#_0AC0B8: LDA.l $7EF3C7
#_0AC0BC: ASL A
#_0AC0BD: TAX

#_0AC0BE: LDA.l WorldMapIcon_posx_spr1+1,X
#_0AC0C2: BMI .skip_draw_1

#_0AC0C4: STA.l $7EC10B

#_0AC0C8: LDA.l WorldMapIcon_posx_spr1+0,X
#_0AC0CC: STA.l $7EC10A

#_0AC0D0: LDA.l WorldMapIcon_posy_spr1+1,X
#_0AC0D4: STA.l $7EC109

#_0AC0D8: LDA.l WorldMapIcon_posy_spr1+0,X
#_0AC0DC: STA.l $7EC108

;---------------------------------------------------------------------------------------------------

#_0AC0E0: LDA.l WorldMapIcon_tile_spr1+1,X
#_0AC0E4: BEQ .dont_adjust_1

#_0AC0E6: CMP.b #$64
#_0AC0E8: BEQ .is_crystal_3

#_0AC0EA: LDA.b $1A
#_0AC0EC: AND.b #$10
#_0AC0EE: BNE .skip_draw_1

.is_crystal_3
#_0AC0F0: JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_1
#_0AC0F3: JSR WorldMap_CalculateOAMCoordinates
#_0AC0F6: BCC .skip_draw_1

#_0AC0F8: LDA.l $7EF3C7
#_0AC0FC: ASL A
#_0AC0FD: TAX

#_0AC0FE: LDA.l WorldMapIcon_tile_spr1+1,X
#_0AC102: BEQ .is_red_x_1

#_0AC104: STA.b $0D

#_0AC106: LDA.l WorldMapIcon_tile_spr1+0,X
#_0AC10A: STA.b $0C

#_0AC10C: LDA.b #$02
#_0AC10E: BRA .continue_1

;---------------------------------------------------------------------------------------------------

.is_red_x_1
#_0AC110: LDA.b $1A

#_0AC112: LSR A
#_0AC113: LSR A
#_0AC114: LSR A

#_0AC115: AND.b #$03
#_0AC117: TAX

#_0AC118: LDA.l WorldMap_RedXChars,X
#_0AC11C: STA.b $0D

#_0AC11E: LDA.b #$32
#_0AC120: STA.b $0C

#_0AC122: LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_1
#_0AC124: STA.b $0B

#_0AC126: LDX.b #$0D
#_0AC128: JSR WorldMap_HandleSpriteBlink

;===================================================================================================

.skip_draw_1
; checks for blue pendant or crystal 7
#_0AC12B: LDX.b #$02
#_0AC12D: JSR OverworldMap_CheckForPendant
#_0AC130: BCS .skip_draw_2

#_0AC132: JSR OverworldMap_CheckForCrystal
#_0AC135: BCS .skip_draw_2

#_0AC137: LDA.l $7EF3C7
#_0AC13B: ASL A
#_0AC13C: TAX

#_0AC13D: LDA.l WorldMapIcon_posx_spr2+1,X
#_0AC141: BMI .skip_draw_2

#_0AC143: STA.l $7EC10B

#_0AC147: LDA.l WorldMapIcon_posx_spr2+0,X
#_0AC14B: STA.l $7EC10A

#_0AC14F: LDA.l WorldMapIcon_posy_spr2+1,X
#_0AC153: STA.l $7EC109

#_0AC157: LDA.l WorldMapIcon_posy_spr2+0,X
#_0AC15B: STA.l $7EC108

;---------------------------------------------------------------------------------------------------

#_0AC15F: LDA.l WorldMapIcon_tile_spr2+1,X
#_0AC163: BEQ .dont_adjust_2

#_0AC165: CMP.b #$64
#_0AC167: BEQ .is_crystal_7

#_0AC169: LDA.b $1A
#_0AC16B: AND.b #$10
#_0AC16D: BNE .skip_draw_2

.is_crystal_7
#_0AC16F: JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_2
#_0AC172: LDX.b #$0C
#_0AC174: JSR WorldMap_CalculateOAMCoordinates
#_0AC177: BCC .skip_draw_2

#_0AC179: LDA.l $7EF3C7
#_0AC17D: ASL A
#_0AC17E: TAX

#_0AC17F: LDA.l WorldMapIcon_tile_spr2+1,X
#_0AC183: BEQ .is_red_x_2

#_0AC185: STA.b $0D

#_0AC187: LDA.l WorldMapIcon_tile_spr2+0,X
#_0AC18B: STA.b $0C

#_0AC18D: LDA.b #$02
#_0AC18F: BRA .continue_2

;---------------------------------------------------------------------------------------------------

.is_red_x_2
#_0AC191: LDA.b $1A

#_0AC193: LSR A
#_0AC194: LSR A
#_0AC195: LSR A

#_0AC196: AND.b #$03
#_0AC198: TAX

#_0AC199: LDA.l WorldMap_RedXChars,X
#_0AC19D: STA.b $0D

#_0AC19F: LDA.b #$32
#_0AC1A1: STA.b $0C

#_0AC1A3: LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_2
#_0AC1A5: STA.b $0B

#_0AC1A7: LDX.b #$0C
#_0AC1A9: JSR WorldMap_HandleSpriteBlink

;===================================================================================================

.skip_draw_2
; checks for crystal 4
#_0AC1AC: LDX.b #$03
#_0AC1AE: JSR OverworldMap_CheckForCrystal
#_0AC1B1: BCS .skip_draw_3

#_0AC1B3: LDA.l $7EF3C7
#_0AC1B7: ASL A
#_0AC1B8: TAX

#_0AC1B9: LDA.l WorldMapIcon_posx_spr3+1,X
#_0AC1BD: BMI .skip_draw_3

#_0AC1BF: STA.l $7EC10B

#_0AC1C3: LDA.l WorldMapIcon_posx_spr3+0,X
#_0AC1C7: STA.l $7EC10A

#_0AC1CB: LDA.l WorldMapIcon_posy_spr3+1,X
#_0AC1CF: STA.l $7EC109

#_0AC1D3: LDA.l WorldMapIcon_posy_spr3+0,X
#_0AC1D7: STA.l $7EC108

;---------------------------------------------------------------------------------------------------

#_0AC1DB: LDA.l WorldMapIcon_tile_spr3+1,X
#_0AC1DF: BEQ .dont_adjust_3

#_0AC1E1: CMP.b #$64
#_0AC1E3: BEQ .is_crystal_4

#_0AC1E5: LDA.b $1A
#_0AC1E7: AND.b #$10
#_0AC1E9: BNE .skip_draw_3

.is_crystal_4
#_0AC1EB: JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_3
#_0AC1EE: LDX.b #$0B
#_0AC1F0: JSR WorldMap_CalculateOAMCoordinates
#_0AC1F3: BCC .skip_draw_3

#_0AC1F5: LDA.l $7EF3C7
#_0AC1F9: ASL A
#_0AC1FA: TAX

#_0AC1FB: LDA.l WorldMapIcon_tile_spr3+1,X
#_0AC1FF: BEQ .is_red_x_3

#_0AC201: STA.b $0D

#_0AC203: LDA.l WorldMapIcon_tile_spr3+0,X
#_0AC207: STA.b $0C

#_0AC209: LDA.b #$02
#_0AC20B: BRA .continue_3

;---------------------------------------------------------------------------------------------------

.is_red_x_3
#_0AC20D: LDA.b $1A

#_0AC20F: LSR A
#_0AC210: LSR A
#_0AC211: LSR A

#_0AC212: AND.b #$03
#_0AC214: TAX

#_0AC215: LDA.l WorldMap_RedXChars,X
#_0AC219: STA.b $0D

#_0AC21B: LDA.b #$32
#_0AC21D: STA.b $0C

#_0AC21F: LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_3
#_0AC221: STA.b $0B

#_0AC223: LDX.b #$0B
#_0AC225: JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.skip_draw_3
; checks for crystal 6
#_0AC228: LDX.b #$04
#_0AC22A: JSR OverworldMap_CheckForCrystal
#_0AC22D: BCS .skip_draw_4

#_0AC22F: LDA.l $7EF3C7
#_0AC233: ASL A
#_0AC234: TAX

#_0AC235: LDA.l WorldMapIcon_posx_spr4+1,X
#_0AC239: BMI .skip_draw_4

#_0AC23B: STA.l $7EC10B

#_0AC23F: LDA.l WorldMapIcon_posx_spr4+0,X
#_0AC243: STA.l $7EC10A

#_0AC247: LDA.l WorldMapIcon_posy_spr4+1,X
#_0AC24B: STA.l $7EC109

#_0AC24F: LDA.l WorldMapIcon_posy_spr4+0,X
#_0AC253: STA.l $7EC108

;---------------------------------------------------------------------------------------------------

#_0AC257: LDA.l WorldMapIcon_tile_spr4+1,X
#_0AC25B: BEQ .dont_adjust_4

#_0AC25D: CMP.b #$64
#_0AC25F: BEQ .is_crystal_6

#_0AC261: LDA.b $1A
#_0AC263: AND.b #$10
#_0AC265: BNE .skip_draw_4

.is_crystal_6
#_0AC267: JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_4
#_0AC26A: LDX.b #$0A
#_0AC26C: JSR WorldMap_CalculateOAMCoordinates
#_0AC26F: BCC .skip_draw_4

#_0AC271: LDA.l $7EF3C7
#_0AC275: ASL A
#_0AC276: TAX

#_0AC277: LDA.l WorldMapIcon_tile_spr4+1,X
#_0AC27B: BEQ .is_red_x_4

#_0AC27D: STA.b $0D

#_0AC27F: LDA.l WorldMapIcon_tile_spr4+0,X
#_0AC283: STA.b $0C

#_0AC285: LDA.b #$02
#_0AC287: BRA .continue_4

.is_red_x_4
#_0AC289: LDA.b $1A

#_0AC28B: LSR A
#_0AC28C: LSR A
#_0AC28D: LSR A

#_0AC28E: AND.b #$03
#_0AC290: TAX

#_0AC291: LDA.l WorldMap_RedXChars,X
#_0AC295: STA.b $0D

#_0AC297: LDA.b #$32
#_0AC299: STA.b $0C

#_0AC29B: LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_4
#_0AC29D: STA.b $0B

#_0AC29F: LDX.b #$0A
#_0AC2A1: JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.skip_draw_4
; checks for crystal 5
#_0AC2A4: LDX.b #$05
#_0AC2A6: JSR OverworldMap_CheckForCrystal
#_0AC2A9: BCS .skip_draw_5

#_0AC2AB: LDA.l $7EF3C7
#_0AC2AF: ASL A
#_0AC2B0: TAX

#_0AC2B1: LDA.l WorldMapIcon_posx_spr5+1,X
#_0AC2B5: BMI .skip_draw_5

#_0AC2B7: STA.l $7EC10B

#_0AC2BB: LDA.l WorldMapIcon_posx_spr5+0,X
#_0AC2BF: STA.l $7EC10A

#_0AC2C3: LDA.l WorldMapIcon_posy_spr5+1,X
#_0AC2C7: STA.l $7EC109

#_0AC2CB: LDA.l WorldMapIcon_posy_spr5+0,X
#_0AC2CF: STA.l $7EC108

;---------------------------------------------------------------------------------------------------

#_0AC2D3: LDA.l WorldMapIcon_tile_spr5+1,X
#_0AC2D7: BEQ .dont_adjust_5

#_0AC2D9: CMP.b #$64
#_0AC2DB: BEQ .is_crystal_5

#_0AC2DD: LDA.b $1A
#_0AC2DF: AND.b #$10
#_0AC2E1: BNE .skip_draw_5

.is_crystal_5
#_0AC2E3: JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_5
#_0AC2E6: LDX.b #$09

#_0AC2E8: JSR WorldMap_CalculateOAMCoordinates
#_0AC2EB: BCC .skip_draw_5

#_0AC2ED: LDA.l $7EF3C7
#_0AC2F1: ASL A
#_0AC2F2: TAX

#_0AC2F3: LDA.l WorldMapIcon_tile_spr5+1,X
#_0AC2F7: BEQ .is_red_x_5

#_0AC2F9: STA.b $0D

#_0AC2FB: LDA.l WorldMapIcon_tile_spr5+0,X
#_0AC2FF: STA.b $0C

#_0AC301: LDA.b #$02
#_0AC303: BRA .continue_5

;---------------------------------------------------------------------------------------------------

.is_red_x_5
#_0AC305: LDA.b $1A
#_0AC307: LSR A
#_0AC308: LSR A
#_0AC309: LSR A

#_0AC30A: AND.b #$03
#_0AC30C: TAX

#_0AC30D: LDA.l WorldMap_RedXChars,X
#_0AC311: STA.b $0D

#_0AC313: LDA.b #$32
#_0AC315: STA.b $0C

#_0AC317: LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_5
#_0AC319: STA.b $0B

#_0AC31B: LDX.b #$09
#_0AC31D: JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.skip_draw_5
; checks for crystal 2
#_0AC320: LDX.b #$06
#_0AC322: JSR OverworldMap_CheckForCrystal
#_0AC325: BCS .restore_coords_and_exit

#_0AC327: LDA.l $7EF3C7
#_0AC32B: ASL A
#_0AC32C: TAX

#_0AC32D: LDA.l WorldMapIcon_posx_spr6+1,X
#_0AC331: BMI .restore_coords_and_exit

#_0AC333: STA.l $7EC10B

#_0AC337: LDA.l WorldMapIcon_posx_spr6+0,X
#_0AC33B: STA.l $7EC10A

#_0AC33F: LDA.l WorldMapIcon_posy_spr6+1,X
#_0AC343: STA.l $7EC109

#_0AC347: LDA.l WorldMapIcon_posy_spr6+0,X
#_0AC34B: STA.l $7EC108

;---------------------------------------------------------------------------------------------------

#_0AC34F: LDA.l WorldMapIcon_tile_spr6+1,X
#_0AC353: BEQ .dont_adjust_6

#_0AC355: CMP.b #$64
#_0AC357: BEQ .is_crystal_2

#_0AC359: LDA.b $1A
#_0AC35B: AND.b #$10
#_0AC35D: BNE .restore_coords_and_exit

.is_crystal_2
#_0AC35F: JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_6
#_0AC362: LDX.b #$08
#_0AC364: JSR WorldMap_CalculateOAMCoordinates
#_0AC367: BCC .restore_coords_and_exit

#_0AC369: LDA.l $7EF3C7
#_0AC36D: ASL A
#_0AC36E: TAX

#_0AC36F: LDA.l WorldMapIcon_tile_spr6+1,X
#_0AC373: BEQ .is_red_x_6

#_0AC375: STA.b $0D

#_0AC377: LDA.l WorldMapIcon_tile_spr6+0,X
#_0AC37B: STA.b $0C

#_0AC37D: LDA.b #$02
#_0AC37F: BRA .continue_6

;---------------------------------------------------------------------------------------------------

.is_red_x_6
#_0AC381: LDA.b $1A

#_0AC383: LSR A
#_0AC384: LSR A
#_0AC385: LSR A

#_0AC386: AND.b #$03
#_0AC388: TAX

#_0AC389: LDA.l WorldMap_RedXChars,X
#_0AC38D: STA.b $0D

#_0AC38F: LDA.b #$32
#_0AC391: STA.b $0C

#_0AC393: LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_6
#_0AC395: STA.b $0B

#_0AC397: LDX.b #$08
#_0AC399: JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.restore_coords_and_exit
#_0AC39C: PLA
#_0AC39D: STA.l $7EC10B

#_0AC3A1: PLA
#_0AC3A2: STA.l $7EC10A

#_0AC3A6: PLA
#_0AC3A7: STA.l $7EC109

#_0AC3AB: PLA
#_0AC3AC: STA.l $7EC108

#_0AC3B0: RTS

;===================================================================================================

WorldMap_CalculateOAMCoordinates:
#_0AC3B1: LDA.w $0636
#_0AC3B4: BNE .zoomed_in

;---------------------------------------------------------------------------------------------------

.zoomed_out
#_0AC3B6: REP #$30

#_0AC3B8: LDA.l $7EC108

#_0AC3BC: LSR A
#_0AC3BD: LSR A
#_0AC3BE: LSR A
#_0AC3BF: LSR A

#_0AC3C0: EOR.w #$FFFF
#_0AC3C3: INC A

#_0AC3C4: ADC.w $063A
#_0AC3C7: SEC
#_0AC3C8: SBC.w #$00C0
#_0AC3CB: TAX

#_0AC3CC: SEP #$20

#_0AC3CE: LDA.l WorldMap_SpritePositions,X
#_0AC3D2: STA.b $0F ; !USELESS subsequently overwitten

#_0AC3D4: SEP #$30

#_0AC3D6: XBA

#_0AC3D7: LDA.b #$0D
#_0AC3D9: JSR WorldMap_MultiplyAxB
#_0AC3DC: JSR WorldMap_ShiftNibblesRight

#_0AC3DF: STA.b $0F

;---------------------------------------------------------------------------------------------------

#_0AC3E1: REP #$30

#_0AC3E3: LDA.l $7EC10A

#_0AC3E7: LSR A
#_0AC3E8: LSR A
#_0AC3E9: LSR A
#_0AC3EA: LSR A

#_0AC3EB: SEP #$30

#_0AC3ED: SEC
#_0AC3EE: SBC.b #$80
#_0AC3F0: PHP

#_0AC3F1: BPL .x_positive_a

#_0AC3F3: EOR.b #$FF

.x_positive_a
#_0AC3F5: PHA

;---------------------------------------------------------------------------------------------------

#_0AC3F6: LDA.b $0F
#_0AC3F8: CMP.b #$E0
#_0AC3FA: BCC .in_range_a

#_0AC3FC: LDA.b #$00

.in_range_a
#_0AC3FE: XBA

#_0AC3FF: LDA.b #$54
#_0AC401: JSR WorldMap_MultiplyAxB

#_0AC404: XBA
#_0AC405: CLC
#_0AC406: ADC.b #$B2
#_0AC408: XBA

#_0AC409: PLA
#_0AC40A: JSR WorldMap_MultiplyAxB

#_0AC40D: XBA

#_0AC40E: PLP
#_0AC40F: BCS .in_range_b

#_0AC411: STA.b $00

#_0AC413: LDA.b #$80
#_0AC415: SEC
#_0AC416: SBC.b $00
#_0AC418: BRA .continue_a

.in_range_b
#_0AC41A: CLC
#_0AC41B: ADC.b #$80

;---------------------------------------------------------------------------------------------------

.continue_a
#_0AC41D: SEC
#_0AC41E: SBC.b $E0
#_0AC420: STA.b $0E

#_0AC422: LDA.b $0E
#_0AC424: CLC
#_0AC425: ADC.b #$80
#_0AC427: STA.b $0E

#_0AC429: LDA.b $0F
#_0AC42B: CLC
#_0AC42C: ADC.b #$0C
#_0AC42E: STA.b $0F

#_0AC430: JMP.w .exit_successfully

;---------------------------------------------------------------------------------------------------

.zoomed_in
#_0AC433: REP #$30

#_0AC435: LDA.l $7EC108

#_0AC439: LSR A
#_0AC43A: LSR A
#_0AC43B: LSR A
#_0AC43C: LSR A

#_0AC43D: EOR.w #$FFFF
#_0AC440: INC A

#_0AC441: CLC
#_0AC442: ADC.w $063A

#_0AC445: SEC
#_0AC446: SBC.w #$0080
#_0AC449: CMP.w #$0100

#_0AC44C: BCC .y_in_bounds

#_0AC44E: JMP.w .exit_fail

;---------------------------------------------------------------------------------------------------

.y_in_bounds
#_0AC451: SEP #$30

#_0AC453: XBA

#_0AC454: LDA.b #$25
#_0AC456: JSR WorldMap_MultiplyAxB
#_0AC459: JSR WorldMap_ShiftNibblesRight

#_0AC45C: REP #$10

#_0AC45E: TAX
#_0AC45F: CPX.w #$014D
#_0AC462: BCC .x_in_bounds

#_0AC464: JMP.w .exit_fail

.x_in_bounds
#_0AC467: LDA.l WorldMap_SpritePositions,X
#_0AC46B: STA.b $0F

#_0AC46D: REP #$20

#_0AC46F: LDA.l $7EC10A
#_0AC473: SEC
#_0AC474: SBC.w #$07F8
#_0AC477: PHP

#_0AC478: BPL .x_positive_b

#_0AC47A: EOR.w #$FFFF
#_0AC47D: INC A

.x_positive_b
#_0AC47E: PHA

;---------------------------------------------------------------------------------------------------

#_0AC47F: SEP #$20

#_0AC481: LDA.b $0F
#_0AC483: CMP.b #$E2
#_0AC485: BCC .in_range_c

#_0AC487: LDA.b #$00

.in_range_c
#_0AC489: XBA

#_0AC48A: LDA.b #$54
#_0AC48C: JSR WorldMap_MultiplyAxB

#_0AC48F: XBA
#_0AC490: CLC
#_0AC491: ADC.b #$B2
#_0AC493: STA.b $00

#_0AC495: XBA

#_0AC496: PLA
#_0AC497: JSR WorldMap_MultiplyAxB

#_0AC49A: XBA
#_0AC49B: STA.b $01

#_0AC49D: PLA
#_0AC49E: XBA

#_0AC49F: LDA.b $00
#_0AC4A1: JSR WorldMap_MultiplyAxB

#_0AC4A4: CLC
#_0AC4A5: ADC.b $01

#_0AC4A7: XBA
#_0AC4A8: ADC.b #$00
#_0AC4AA: XBA

#_0AC4AB: PLP
#_0AC4AC: BCS .do_addition

.do_subtraction
#_0AC4AE: STA.b $00

#_0AC4B0: LDA.w #$0800
#_0AC4B3: SEC
#_0AC4B4: SBC.b $00

#_0AC4B6: BRA .continue_b

.do_addition
#_0AC4B8: CLC
#_0AC4B9: ADC.w #$0800

;---------------------------------------------------------------------------------------------------

.continue_b
#_0AC4BC: SEC
#_0AC4BD: SBC.w #$0800
#_0AC4C0: BCS .positive_a

#_0AC4C2: EOR.w #$FFFF
#_0AC4C5: INC A

.positive_a
#_0AC4C6: SEP #$20

#_0AC4C8: PHP

#_0AC4C9: XBA
#_0AC4CA: PHA

#_0AC4CB: LDA.b #$2D
#_0AC4CD: JSR WorldMap_MultiplyAxB

#_0AC4D0: XBA
#_0AC4D1: STA.b $00

#_0AC4D3: PLA
#_0AC4D4: XBA

#_0AC4D5: LDA.b #$2D
#_0AC4D7: JSR WorldMap_MultiplyAxB

#_0AC4DA: CLC
#_0AC4DB: ADC.b $00

#_0AC4DD: XBA
#_0AC4DE: ADC.b #$00
#_0AC4E0: XBA

;---------------------------------------------------------------------------------------------------

#_0AC4E1: PLP
#_0AC4E2: BCS .in_range_d

#_0AC4E4: STA.b $00

#_0AC4E6: LDA.b #$80
#_0AC4E8: SEC
#_0AC4E9: SBC.b $00

#_0AC4EB: XBA
#_0AC4EC: STA.b $00

#_0AC4EE: LDA.b #$00
#_0AC4F0: SBC.b $00
#_0AC4F2: XBA

#_0AC4F3: BRA .continue_c

.in_range_d
#_0AC4F5: CLC
#_0AC4F6: ADC.b #$80

#_0AC4F8: XBA
#_0AC4F9: ADC.b #$00

#_0AC4FB: XBA

;---------------------------------------------------------------------------------------------------

.continue_c
#_0AC4FC: PHA

#_0AC4FD: SEC
#_0AC4FE: SBC.b $E0
#_0AC500: STA.b $0E

#_0AC502: PLA

;---------------------------------------------------------------------------------------------------

#_0AC503: REP #$30

#_0AC505: SEC
#_0AC506: SBC.w #$FF80

#_0AC509: SEC
#_0AC50A: SBC.b $E0

#_0AC50C: SEP #$30

#_0AC50E: XBA
#_0AC50F: BNE .exit_fail

#_0AC511: LDA.b $0E
#_0AC513: CLC
#_0AC514: ADC.b #$81
#_0AC516: STA.b $0E

#_0AC518: LDA.b $0F
#_0AC51A: CLC
#_0AC51B: ADC.b #$10
#_0AC51D: STA.b $0F

;---------------------------------------------------------------------------------------------------

.exit_successfully
#_0AC51F: SEP #$30
#_0AC521: SEC

#_0AC522: RTS

.exit_fail
#_0AC523: SEP #$30
#_0AC525: CLC

#_0AC526: RTS

;===================================================================================================

pool WorldMap_HandleSpriteBlink

.crystal_numbers
#_0AC527: db $79 ; 2
#_0AC528: db $6E ; 5
#_0AC529: db $6F ; 6
#_0AC52A: db $6D ; 4
#_0AC52B: db $7C ; 7
#_0AC52C: db $6C ; 3
#_0AC52D: db $7F ; 1

pool off

;---------------------------------------------------------------------------------------------------

; TODO analyze params
; $0D - char
WorldMap_HandleSpriteBlink:
#_0AC52E: LDA.b $1A

#_0AC530: LSR A
#_0AC531: LSR A
#_0AC532: LSR A
#_0AC533: LSR A

; check if blinking
#_0AC534: AND.b #$01
#_0AC536: BNE .dont_show_number

; check if character is a crystal
#_0AC538: LDA.b $0D
#_0AC53A: CMP.b #$64
#_0AC53C: BNE .dont_show_number

;---------------------------------------------------------------------------------------------------

#_0AC53E: LDA.l .crystal_numbers-8,X
#_0AC542: STA.b $0D

#_0AC544: LDA.b #$32
#_0AC546: STA.b $0C

#_0AC548: STZ.w $0A20,X

#_0AC54B: TXA
#_0AC54C: ASL A
#_0AC54D: ASL A
#_0AC54E: TAX

#_0AC54F: LDA.b $0E
#_0AC551: STA.w $0800,X

#_0AC554: LDA.b $0F
#_0AC556: STA.w $0801,X

#_0AC559: BRA .continue

;---------------------------------------------------------------------------------------------------

.dont_show_number
#_0AC55B: LDA.b $0B
#_0AC55D: STA.w $0A20,X

#_0AC560: TXA
#_0AC561: ASL A
#_0AC562: ASL A
#_0AC563: TAX

#_0AC564: LDA.b $0E
#_0AC566: SEC
#_0AC567: SBC.b #$04
#_0AC569: STA.w $0800,X

#_0AC56C: LDA.b $0F
#_0AC56E: SEC
#_0AC56F: SBC.b #$04
#_0AC571: STA.w $0801,X

;---------------------------------------------------------------------------------------------------

.continue
#_0AC574: LDA.b $0D
#_0AC576: STA.w $0802,X

#_0AC579: LDA.b $0C
#_0AC57B: STA.w $0803,X

#_0AC57E: RTS

;===================================================================================================
; With A and B being the respective accumulators
;===================================================================================================
WorldMap_MultiplyAxB:
#_0AC57F: STA.w CPUMULTA
#_0AC582: XBA
#_0AC583: STA.w CPUMULTB

#_0AC586: NOP
#_0AC587: NOP
#_0AC588: NOP
#_0AC589: NOP

#_0AC58A: LDA.w CPUPRODUCTH
#_0AC58D: XBA
#_0AC58E: LDA.w CPUPRODUCTL

#_0AC591: RTS

;===================================================================================================

WorldMap_ShiftNibblesRight:
#_0AC592: REP #$30

#_0AC594: LSR A
#_0AC595: LSR A
#_0AC596: LSR A
#_0AC597: LSR A

#_0AC598: SEP #$30

#_0AC59A: RTS

;===================================================================================================

WorldMapIcon_AdjustCoordinate:
#_0AC59B: REP #$20

#_0AC59D: LDA.l $7EC10A
#_0AC5A1: SEC
#_0AC5A2: SBC.w #$0004
#_0AC5A5: STA.l $7EC10A

#_0AC5A9: LDA.l $7EC108
#_0AC5AD: SEC
#_0AC5AE: SBC.w #$0004
#_0AC5B1: STA.l $7EC108

#_0AC5B5: SEP #$20

#_0AC5B7: RTS

;===================================================================================================
; Checks for the ownership of a dungeon prize
; Parameter: X - index of prize to check
; Fails if the current map marker disagrees
;===================================================================================================
pool OverworldMap_CheckForPendant

.bit
#_0AC5B8: db $04 ; green
#_0AC5B9: db $01 ; red
#_0AC5BA: db $02 ; blue

pool off

;---------------------------------------------------------------------------------------------------

OverworldMap_CheckForPendant:
#_0AC5BB: LDA.l $7EF3C7 ; check for pendants as map marker
#_0AC5BF: CMP.b #$03
#_0AC5C1: BNE OverworldMap_PrizeCheckFail

#_0AC5C3: LDA.l $7EF374
#_0AC5C7: AND.l .bit,X
#_0AC5CB: BEQ OverworldMap_PrizeCheckFail

#_0AC5CD: SEC

#_0AC5CE: RTS

;===================================================================================================

OverworldMap_PrizeCheckFail:
#_0AC5CF: CLC

#_0AC5D0: RTS

;===================================================================================================

pool OverworldMap_CheckForCrystal

; What a weird order. It doesn't match any other list.
.bit
#_0AC5D1: db $02 ; Palace of Darkness
#_0AC5D2: db $40 ; Skull Woods
#_0AC5D3: db $08 ; Turtle Rock
#_0AC5D4: db $20 ; Thieves' Town
#_0AC5D5: db $01 ; Misery Mire
#_0AC5D6: db $04 ; Ice palace
#_0AC5D7: db $10 ; Swamp Palace

pool off

;---------------------------------------------------------------------------------------------------

OverworldMap_CheckForCrystal:
#_0AC5D8: LDA.l $7EF3C7 ; check for crystals as map marker
#_0AC5DC: CMP.b #$07
#_0AC5DE: BNE OverworldMap_PrizeCheckFail

#_0AC5E0: LDA.l $7EF37A
#_0AC5E4: AND.l .bit,X
#_0AC5E8: BEQ OverworldMap_PrizeCheckFail

#_0AC5EA: SEC

#_0AC5EB: RTS

;===================================================================================================
; TODO needs analysis
;===================================================================================================
WorldMap_SpritePositions:
#_0AC5EC: db $E0, $E0, $E0, $E0, $E0, $E0, $E0, $E0
#_0AC5F4: db $E0, $E0, $E0, $E0, $E0, $E0, $E0, $DF
#_0AC5FC: db $DE, $DD, $DC, $DB, $DA, $D8, $D7, $D6
#_0AC604: db $D5, $D4, $D3, $D2, $D1, $D0, $CF, $CE
#_0AC60C: db $CD, $CC, $CB, $CA, $C9, $C7, $C6, $C5
#_0AC614: db $C4, $C3, $C2, $C1, $C0, $BF, $BE, $BD
#_0AC61C: db $BC, $BB, $BA, $B9, $B8, $B7, $B6, $B5
#_0AC624: db $B4, $B3, $B2, $B1, $B0, $AF, $AE, $AD
#_0AC62C: db $AC, $AB, $AA, $A9, $A8, $A7, $A6, $A5
#_0AC634: db $A4, $A3, $A2, $A1, $A0, $9F, $9E, $9D
#_0AC63C: db $9C, $9B, $9B, $9A, $99, $98, $97, $96
#_0AC644: db $95, $94, $93, $92, $91, $90, $8F, $8E
#_0AC64C: db $8D, $8C, $8B, $8B, $8A, $89, $88, $87
#_0AC654: db $86, $85, $84, $83, $82, $81, $81, $80
#_0AC65C: db $7F, $7E, $7D, $7C, $7B, $7A, $79, $79
#_0AC664: db $78, $77, $76, $75, $74, $73, $72, $72
#_0AC66C: db $71, $70, $6F, $6E, $6D, $6C, $6C, $6B
#_0AC674: db $6A, $69, $68, $67, $67, $66, $65, $64
#_0AC67C: db $63, $62, $62, $61, $60, $5F, $5E, $5D
#_0AC684: db $5D, $5C, $5B, $5A, $59, $59, $58, $57
#_0AC68C: db $56, $55, $55, $54, $53, $52, $51, $51
#_0AC694: db $50, $4F, $4E, $4E, $4D, $4C, $4B, $4A
#_0AC69C: db $4A, $49, $48, $47, $47, $46, $45, $44
#_0AC6A4: db $44, $43, $42, $41, $41, $40, $3F, $3E
#_0AC6AC: db $3E, $3D, $3C, $3C, $3B, $3A, $39, $39
#_0AC6B4: db $38, $37, $36, $36, $35, $34, $34, $33
#_0AC6BC: db $32, $32, $31, $30, $2F, $2F, $2E, $2D
#_0AC6C4: db $2D, $2C, $2B, $2B, $2A, $29, $29, $28
#_0AC6CC: db $27, $27, $26, $25, $25, $24, $23, $23
#_0AC6D4: db $22, $21, $21, $20, $1F, $1F, $1E, $1D
#_0AC6DC: db $1D, $1C, $1C, $1B, $1A, $1A, $19, $18
#_0AC6E4: db $18, $17, $17, $16, $15, $15, $14, $14
#_0AC6EC: db $13, $12, $12, $11, $10, $10, $0F, $0F
#_0AC6F4: db $0E, $0E, $0D, $0C, $0C, $0B, $0B, $0A
#_0AC6FC: db $09, $09, $08, $08, $07, $07, $06, $05
#_0AC704: db $05, $04, $04, $03, $03, $02, $01, $01
#_0AC70C: db $00, $00, $00, $00, $FF, $FE, $FE, $FD
#_0AC714: db $FC, $FC, $FB, $FB, $FA, $F9, $F9, $F8
#_0AC71C: db $F7, $F7, $F6, $F5, $F4, $F4, $F3, $F2
#_0AC724: db $F2, $F1, $F0, $EF, $EE, $EE, $ED, $EC
#_0AC72C: db $EB, $EA, $E9, $E8, $E8, $E7, $E6, $E5
#_0AC734: db $E4, $E3, $E2, $E1, $E0

;===================================================================================================

WorldMap_LightWorldTileMap:
#_0AC739: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 00, Strip 0
#_0AC741: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 00, Strip 1
#_0AC749: db $28, $28, $28, $28, $28, $2C, $09, $08 ; Quadrant 0, Row 00, Strip 2
#_0AC751: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 00, Strip 3
#_0AC759: db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 0, Row 01, Strip 0
#_0AC761: db $29, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 01, Strip 1
#_0AC769: db $28, $28, $28, $28, $28, $28, $2A, $28 ; Quadrant 0, Row 01, Strip 2
#_0AC771: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 01, Strip 3
#_0AC779: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 02, Strip 0
#_0AC781: db $2C, $09, $08, $09, $28, $28, $28, $28 ; Quadrant 0, Row 02, Strip 1
#_0AC789: db $28, $28, $28, $28, $28, $08, $29, $28 ; Quadrant 0, Row 02, Strip 2
#_0AC791: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 02, Strip 3
#_0AC799: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 03, Strip 0
#_0AC7A1: db $28, $2C, $2D, $2C, $09, $28, $28, $28 ; Quadrant 0, Row 03, Strip 1
#_0AC7A9: db $28, $28, $28, $28, $08, $28, $2C, $09 ; Quadrant 0, Row 03, Strip 2
#_0AC7B1: db $08, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 0, Row 03, Strip 3
#_0AC7B9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 04, Strip 0
#_0AC7C1: db $28, $28, $2C, $28, $2B, $09, $28, $28 ; Quadrant 0, Row 04, Strip 1
#_0AC7C9: db $28, $28, $28, $08, $28, $28, $28, $2A ; Quadrant 0, Row 04, Strip 2
#_0AC7D1: db $28, $28, $28, $28, $28, $28, $08, $28 ; Quadrant 0, Row 04, Strip 3
#_0AC7D9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 05, Strip 0
#_0AC7E1: db $28, $28, $28, $28, $2B, $2A, $28, $28 ; Quadrant 0, Row 05, Strip 1
#_0AC7E9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 05, Strip 2
#_0AC7F1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 05, Strip 3
#_0AC7F9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 06, Strip 0
#_0AC801: db $28, $29, $28, $28, $2A, $28, $28, $28 ; Quadrant 0, Row 06, Strip 1
#_0AC809: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 06, Strip 2
#_0AC811: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 06, Strip 3
#_0AC819: db $28, $28, $08, $29, $28, $28, $28, $28 ; Quadrant 0, Row 07, Strip 0
#_0AC821: db $28, $2C, $29, $28, $28, $28, $28, $28 ; Quadrant 0, Row 07, Strip 1
#_0AC829: db $28, $08, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 07, Strip 2
#_0AC831: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 07, Strip 3
#_0AC839: db $28, $08, $28, $2C, $09, $08, $28, $28 ; Quadrant 0, Row 08, Strip 0
#_0AC841: db $28, $28, $2B, $09, $08, $29, $08, $29 ; Quadrant 0, Row 08, Strip 1
#_0AC849: db $08, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 08, Strip 2
#_0AC851: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 08, Strip 3
#_0AC859: db $08, $28, $28, $28, $2A, $28, $28, $28 ; Quadrant 0, Row 09, Strip 0
#_0AC861: db $28, $28, $2B, $2E, $2D, $2C, $2D, $2C ; Quadrant 0, Row 09, Strip 1
#_0AC869: db $2D, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 09, Strip 2
#_0AC871: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 09, Strip 3
#_0AC879: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0A, Strip 0
#_0AC881: db $28, $28, $2C, $2C, $2C, $28, $2C, $28 ; Quadrant 0, Row 0A, Strip 1
#_0AC889: db $2C, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0A, Strip 2
#_0AC891: db $28, $28, $28, $28, $08, $29, $28, $2F ; Quadrant 0, Row 0A, Strip 3
#_0AC899: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0B, Strip 0
#_0AC8A1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0B, Strip 1
#_0AC8A9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0B, Strip 2
#_0AC8B1: db $28, $08, $09, $08, $28, $2C, $09, $1B ; Quadrant 0, Row 0B, Strip 3
#_0AC8B9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0C, Strip 0
#_0AC8C1: db $28, $28, $28, $29, $28, $28, $28, $28 ; Quadrant 0, Row 0C, Strip 1
#_0AC8C9: db $28, $2F, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0C, Strip 2
#_0AC8D1: db $08, $28, $2C, $2D, $28, $28, $2B, $19 ; Quadrant 0, Row 0C, Strip 3
#_0AC8D9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0D, Strip 0
#_0AC8E1: db $28, $28, $28, $2C, $29, $28, $2F, $28 ; Quadrant 0, Row 0D, Strip 1
#_0AC8E9: db $2F, $1B, $1A, $28, $2F, $28, $2F, $08 ; Quadrant 0, Row 0D, Strip 2
#_0AC8F1: db $28, $28, $28, $2C, $28, $28, $2C, $2E ; Quadrant 0, Row 0D, Strip 3
#_0AC8F9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0E, Strip 0
#_0AC901: db $28, $28, $28, $28, $2C, $38, $1B, $1C ; Quadrant 0, Row 0E, Strip 1
#_0AC909: db $1D, $1F, $1E, $1A, $1B, $1C, $1D, $1A ; Quadrant 0, Row 0E, Strip 2
#_0AC911: db $28, $2F, $28, $2F, $28, $28, $28, $2B ; Quadrant 0, Row 0E, Strip 3
#_0AC919: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0F, Strip 0
#_0AC921: db $28, $28, $28, $28, $28, $2E, $19, $1E ; Quadrant 0, Row 0F, Strip 1
#_0AC929: db $1F, $14, $14, $1E, $1F, $1E, $1F, $1E ; Quadrant 0, Row 0F, Strip 2
#_0AC931: db $1A, $1B, $3B, $3C, $3B, $28, $28, $28 ; Quadrant 0, Row 0F, Strip 3
#_0AC939: db $28, $28, $28, $28, $08, $29, $08, $29 ; Quadrant 0, Row 10, Strip 0
#_0AC941: db $28, $28, $28, $28, $28, $2B, $2E, $0B ; Quadrant 0, Row 10, Strip 1
#_0AC949: db $26, $27, $14, $14, $14, $A5, $14, $26 ; Quadrant 0, Row 10, Strip 2
#_0AC951: db $24, $25, $56, $35, $5B, $73, $74, $28 ; Quadrant 0, Row 10, Strip 3
#_0AC959: db $28, $28, $28, $08, $28, $2C, $28, $2B ; Quadrant 0, Row 11, Strip 0
#_0AC961: db $09, $08, $29, $28, $28, $2C, $2E, $1B ; Quadrant 0, Row 11, Strip 1
#_0AC969: db $36, $37, $14, $14, $14, $14, $14, $15 ; Quadrant 0, Row 11, Strip 2
#_0AC971: db $34, $A7, $64, $5B, $90, $73, $73, $52 ; Quadrant 0, Row 11, Strip 3
#_0AC979: db $28, $28, $28, $28, $28, $28, $28, $2C ; Quadrant 0, Row 12, Strip 0
#_0AC981: db $2E, $2D, $2C, $09, $28, $2F, $1B, $1F ; Quadrant 0, Row 12, Strip 1
#_0AC989: db $14, $14, $14, $14, $14, $14, $14, $15 ; Quadrant 0, Row 12, Strip 2
#_0AC991: db $A7, $34, $E4, $90, $82, $83, $83, $83 ; Quadrant 0, Row 12, Strip 3
#_0AC999: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 13, Strip 0
#_0AC9A1: db $2C, $2E, $2D, $2A, $29, $2C, $19, $14 ; Quadrant 0, Row 13, Strip 1
#_0AC9A9: db $A5, $14, $14, $14, $A5, $14, $14, $15 ; Quadrant 0, Row 13, Strip 2
#_0AC9B1: db $A7, $B6, $DF, $82, $B2, $93, $D6, $D6 ; Quadrant 0, Row 13, Strip 3
#_0AC9B9: db $09, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 14, Strip 0
#_0AC9C1: db $28, $2C, $2A, $28, $2C, $09, $1B, $14 ; Quadrant 0, Row 14, Strip 1
#_0AC9C9: db $14, $A5, $14, $14, $14, $14, $14, $15 ; Quadrant 0, Row 14, Strip 2
#_0AC9D1: db $34, $A7, $82, $B2, $D6, $93, $93, $93 ; Quadrant 0, Row 14, Strip 3
#_0AC9D9: db $2B, $09, $08, $29, $28, $28, $28, $28 ; Quadrant 0, Row 15, Strip 0
#_0AC9E1: db $28, $28, $28, $28, $28, $2B, $19, $14 ; Quadrant 0, Row 15, Strip 1
#_0AC9E9: db $14, $14, $14, $14, $A5, $14, $A5, $36 ; Quadrant 0, Row 15, Strip 2
#_0AC9F1: db $05, $34, $B0, $D6, $D6, $82, $83, $83 ; Quadrant 0, Row 15, Strip 3
#_0AC9F9: db $2C, $2A, $28, $2B, $2D, $28, $28, $28 ; Quadrant 0, Row 16, Strip 0
#_0ACA01: db $28, $28, $28, $28, $28, $2C, $2B, $0B ; Quadrant 0, Row 16, Strip 1
#_0ACA09: db $A5, $14, $14, $A5, $14, $A5, $14, $14 ; Quadrant 0, Row 16, Strip 2
#_0ACA11: db $15, $33, $33, $33, $90, $B2, $D6, $93 ; Quadrant 0, Row 16, Strip 3
#_0ACA19: db $28, $28, $28, $2C, $2E, $2D, $08, $28 ; Quadrant 0, Row 17, Strip 0
#_0ACA21: db $28, $28, $28, $28, $28, $28, $2F, $1B ; Quadrant 0, Row 17, Strip 1
#_0ACA29: db $14, $14, $A5, $A5, $14, $14, $14, $A5 ; Quadrant 0, Row 17, Strip 2
#_0ACA31: db $15, $A6, $FB, $34, $82, $83, $83, $83 ; Quadrant 0, Row 17, Strip 3
#_0ACA39: db $28, $28, $28, $28, $2C, $2A, $28, $28 ; Quadrant 0, Row 18, Strip 0
#_0ACA41: db $28, $28, $08, $29, $08, $29, $1B, $1F ; Quadrant 0, Row 18, Strip 1
#_0ACA49: db $26, $27, $26, $27, $26, $24, $24, $D5 ; Quadrant 0, Row 18, Strip 2
#_0ACA51: db $25, $34, $34, $34, $B0, $93, $71, $93 ; Quadrant 0, Row 18, Strip 3
#_0ACA59: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 19, Strip 0
#_0ACA61: db $28, $2F, $28, $2C, $28, $2C, $19, $14 ; Quadrant 0, Row 19, Strip 1
#_0ACA69: db $15, $13, $15, $13, $15, $33, $40, $41 ; Quadrant 0, Row 19, Strip 2
#_0ACA71: db $33, $BF, $34, $34, $30, $23, $81, $23 ; Quadrant 0, Row 19, Strip 3
#_0ACA79: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 1A, Strip 0
#_0ACA81: db $2F, $1B, $1A, $28, $28, $2F, $1B, $14 ; Quadrant 0, Row 1A, Strip 1
#_0ACA89: db $15, $13, $15, $13, $15, $BC, $BD, $A6 ; Quadrant 0, Row 1A, Strip 2
#_0ACA91: db $A7, $34, $41, $33, $40, $34, $C0, $34 ; Quadrant 0, Row 1A, Strip 3
#_0ACA99: db $29, $28, $28, $28, $28, $08, $2D, $28 ; Quadrant 0, Row 1B, Strip 0
#_0ACAA1: db $28, $19, $0A, $28, $2F, $1B, $1F, $14 ; Quadrant 0, Row 1B, Strip 1
#_0ACAA9: db $15, $13, $15, $13, $36, $05, $D0, $D0 ; Quadrant 0, Row 1B, Strip 2
#_0ACAB1: db $D0, $D0, $D0, $D0, $D0, $D0, $C3, $D0 ; Quadrant 0, Row 1B, Strip 3
#_0ACAB9: db $2C, $09, $28, $28, $08, $28, $2B, $2D ; Quadrant 0, Row 1C, Strip 0
#_0ACAC1: db $28, $2C, $28, $2F, $1B, $1F, $14, $14 ; Quadrant 0, Row 1C, Strip 1
#_0ACAC9: db $15, $23, $25, $23, $24, $25, $C0, $A6 ; Quadrant 0, Row 1C, Strip 2
#_0ACAD1: db $FB, $A7, $A6, $00, $6A, $3D, $6E, $8B ; Quadrant 0, Row 1C, Strip 3
#_0ACAD9: db $28, $2C, $09, $08, $28, $28, $2C, $2E ; Quadrant 0, Row 1D, Strip 0
#_0ACAE1: db $2D, $08, $29, $1B, $1F, $A5, $14, $26 ; Quadrant 0, Row 1D, Strip 1
#_0ACAE9: db $25, $31, $B6, $E4, $FD, $FE, $C0, $10 ; Quadrant 0, Row 1D, Strip 2
#_0ACAF1: db $12, $A6, $FB, $10, $12, $4D, $7E, $9B ; Quadrant 0, Row 1D, Strip 3
#_0ACAF9: db $28, $28, $2A, $29, $28, $28, $28, $2C ; Quadrant 0, Row 1E, Strip 0
#_0ACB01: db $2A, $28, $2C, $19, $14, $14, $A5, $15 ; Quadrant 0, Row 1E, Strip 1
#_0ACB09: db $34, $41, $33, $33, $33, $33, $C0, $10 ; Quadrant 0, Row 1E, Strip 2
#_0ACB11: db $12, $A7, $FB, $20, $22, $CD, $A7, $3E ; Quadrant 0, Row 1E, Strip 3
#_0ACB19: db $28, $28, $28, $2C, $2D, $28, $28, $28 ; Quadrant 0, Row 1F, Strip 0
#_0ACB21: db $28, $28, $28, $2B, $0B, $A5, $14, $15 ; Quadrant 0, Row 1F, Strip 1
#_0ACB29: db $34, $F6, $89, $6B, $6C, $89, $F6, $10 ; Quadrant 0, Row 1F, Strip 2
#_0ACB31: db $12, $FB, $FB, $00, $02, $CD, $34, $3E ; Quadrant 0, Row 1F, Strip 3

;---------------------------------------------------------------------------------------------------

#_0ACB39: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 00, Strip 0
#_0ACB41: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 00, Strip 1
#_0ACB49: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 00, Strip 2
#_0ACB51: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 00, Strip 3
#_0ACB59: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 01, Strip 0
#_0ACB61: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 01, Strip 1
#_0ACB69: db $28, $28, $28, $28, $08, $29, $28, $28 ; Quadrant 1, Row 01, Strip 2
#_0ACB71: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 01, Strip 3
#_0ACB79: db $28, $28, $08, $28, $08, $29, $28, $28 ; Quadrant 1, Row 02, Strip 0
#_0ACB81: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 02, Strip 1
#_0ACB89: db $28, $28, $28, $08, $28, $2C, $09, $28 ; Quadrant 1, Row 02, Strip 2
#_0ACB91: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 02, Strip 3
#_0ACB99: db $09, $08, $28, $08, $28, $2C, $09, $28 ; Quadrant 1, Row 03, Strip 0
#_0ACBA1: db $28, $28, $28, $28, $28, $29, $08, $29 ; Quadrant 1, Row 03, Strip 1
#_0ACBA9: db $08, $29, $08, $28, $28, $28, $2B, $09 ; Quadrant 1, Row 03, Strip 2
#_0ACBB1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 03, Strip 3
#_0ACBB9: db $2C, $2D, $28, $28, $28, $28, $2B, $09 ; Quadrant 1, Row 04, Strip 0
#_0ACBC1: db $28, $28, $08, $28, $28, $2C, $2D, $2C ; Quadrant 1, Row 04, Strip 1
#_0ACBC9: db $2D, $2C, $2D, $28, $28, $28, $2C, $2E ; Quadrant 1, Row 04, Strip 2
#_0ACBD1: db $09, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 04, Strip 3
#_0ACBD9: db $28, $2C, $28, $28, $28, $28, $2C, $2E ; Quadrant 1, Row 05, Strip 0
#_0ACBE1: db $09, $08, $28, $28, $28, $28, $2C, $28 ; Quadrant 1, Row 05, Strip 1
#_0ACBE9: db $2C, $28, $2C, $28, $28, $28, $28, $2B ; Quadrant 1, Row 05, Strip 2
#_0ACBF1: db $2A, $29, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 05, Strip 3
#_0ACBF9: db $28, $28, $28, $28, $28, $28, $28, $2B ; Quadrant 1, Row 06, Strip 0
#_0ACC01: db $2A, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 06, Strip 1
#_0ACC09: db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 1, Row 06, Strip 2
#_0ACC11: db $09, $2C, $09, $28, $28, $28, $28, $28 ; Quadrant 1, Row 06, Strip 3
#_0ACC19: db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 1, Row 07, Strip 0
#_0ACC21: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 07, Strip 1
#_0ACC29: db $28, $28, $28, $28, $28, $28, $08, $28 ; Quadrant 1, Row 07, Strip 2
#_0ACC31: db $2C, $28, $2B, $09, $28, $28, $28, $28 ; Quadrant 1, Row 07, Strip 3
#_0ACC39: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 08, Strip 0
#_0ACC41: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 08, Strip 1
#_0ACC49: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 08, Strip 2
#_0ACC51: db $28, $28, $2C, $2E, $2D, $28, $28, $28 ; Quadrant 1, Row 08, Strip 3
#_0ACC59: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 09, Strip 0
#_0ACC61: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 09, Strip 1
#_0ACC69: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 09, Strip 2
#_0ACC71: db $28, $28, $28, $2B, $2A, $2D, $28, $28 ; Quadrant 1, Row 09, Strip 3
#_0ACC79: db $28, $28, $28, $28, $28, $28, $2F, $28 ; Quadrant 1, Row 0A, Strip 0
#_0ACC81: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0A, Strip 1
#_0ACC89: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0A, Strip 2
#_0ACC91: db $28, $28, $28, $2A, $28, $2C, $28, $28 ; Quadrant 1, Row 0A, Strip 3
#_0ACC99: db $1A, $28, $08, $29, $08, $29, $1B, $1A ; Quadrant 1, Row 0B, Strip 0
#_0ACCA1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0B, Strip 1
#_0ACCA9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0B, Strip 2
#_0ACCB1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0B, Strip 3
#_0ACCB9: db $0A, $08, $2D, $2C, $2D, $1B, $1F, $0A ; Quadrant 1, Row 0C, Strip 0
#_0ACCC1: db $28, $28, $28, $2F, $28, $28, $28, $28 ; Quadrant 1, Row 0C, Strip 1
#_0ACCC9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0C, Strip 2
#_0ACCD1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0C, Strip 3
#_0ACCD9: db $2D, $28, $2C, $28, $2C, $19, $0A, $28 ; Quadrant 1, Row 0D, Strip 0
#_0ACCE1: db $28, $28, $2F, $1B, $1A, $28, $28, $28 ; Quadrant 1, Row 0D, Strip 1
#_0ACCE9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0D, Strip 2
#_0ACCF1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0D, Strip 3
#_0ACCF9: db $2E, $28, $08, $29, $28, $2C, $2D, $28 ; Quadrant 1, Row 0E, Strip 0
#_0ACD01: db $28, $28, $2C, $19, $0A, $28, $28, $28 ; Quadrant 1, Row 0E, Strip 1
#_0ACD09: db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 1, Row 0E, Strip 2
#_0ACD11: db $29, $08, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0E, Strip 3
#_0ACD19: db $2C, $98, $42, $2C, $09, $28, $2C, $28 ; Quadrant 1, Row 0F, Strip 0
#_0ACD21: db $28, $08, $29, $2C, $28, $28, $28, $28 ; Quadrant 1, Row 0F, Strip 1
#_0ACD29: db $28, $28, $28, $28, $28, $28, $08, $28 ; Quadrant 1, Row 0F, Strip 2
#_0ACD31: db $2C, $2D, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0F, Strip 3
#_0ACD39: db $72, $99, $63, $73, $73, $74, $2C, $72 ; Quadrant 1, Row 10, Strip 0
#_0ACD41: db $73, $73, $73, $A1, $A0, $73, $73, $74 ; Quadrant 1, Row 10, Strip 1
#_0ACD49: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 10, Strip 2
#_0ACD51: db $28, $2C, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 10, Strip 3
#_0ACD59: db $52, $9A, $70, $A0, $73, $91, $09, $90 ; Quadrant 1, Row 11, Strip 0
#_0ACD61: db $73, $73, $A1, $84, $90, $73, $73, $91 ; Quadrant 1, Row 11, Strip 1
#_0ACD69: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 11, Strip 2
#_0ACD71: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 11, Strip 3
#_0ACD79: db $83, $83, $84, $82, $83, $52, $52, $83 ; Quadrant 1, Row 12, Strip 0
#_0ACD81: db $83, $83, $84, $B3, $90, $A1, $83, $84 ; Quadrant 1, Row 12, Strip 1
#_0ACD89: db $3B, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 12, Strip 2
#_0ACD91: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 12, Strip 3
#_0ACD99: db $93, $93, $94, $92, $93, $94, $72, $93 ; Quadrant 1, Row 13, Strip 0
#_0ACDA1: db $93, $93, $B3, $A1, $82, $84, $93, $A2 ; Quadrant 1, Row 13, Strip 1
#_0ACDA9: db $4A, $3B, $08, $28, $28, $28, $28, $28 ; Quadrant 1, Row 13, Strip 2
#_0ACDB1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 13, Strip 3
#_0ACDB9: db $D6, $93, $94, $92, $93, $94, $82, $93 ; Quadrant 1, Row 14, Strip 0
#_0ACDC1: db $82, $83, $83, $84, $B4, $94, $06, $54 ; Quadrant 1, Row 14, Strip 1
#_0ACDC9: db $35, $4C, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 14, Strip 2
#_0ACDD1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 14, Strip 3
#_0ACDD9: db $83, $84, $B3, $B2, $93, $94, $B4, $90 ; Quadrant 1, Row 15, Strip 0
#_0ACDE1: db $B2, $93, $93, $B3, $CA, $B7, $95, $54 ; Quadrant 1, Row 15, Strip 1
#_0ACDE9: db $48, $3B, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 15, Strip 2
#_0ACDF1: db $28, $28, $28, $28, $08, $29, $28, $28 ; Quadrant 1, Row 15, Strip 3
#_0ACDF9: db $93, $B3, $73, $A1, $83, $52, $62, $90 ; Quadrant 1, Row 16, Strip 0
#_0ACE01: db $73, $73, $73, $91, $9F, $06, $22, $54 ; Quadrant 1, Row 16, Strip 1
#_0ACE09: db $5C, $4A, $3B, $28, $28, $28, $28, $28 ; Quadrant 1, Row 16, Strip 2
#_0ACE11: db $28, $28, $28, $08, $28, $2C, $09, $08 ; Quadrant 1, Row 16, Strip 3
#_0ACE19: db $83, $83, $83, $84, $93, $94, $CA, $82 ; Quadrant 1, Row 17, Strip 0
#_0ACE21: db $83, $83, $83, $84, $A9, $16, $02, $54 ; Quadrant 1, Row 17, Strip 1
#_0ACE29: db $58, $56, $4A, $3B, $08, $28, $28, $28 ; Quadrant 1, Row 17, Strip 2
#_0ACE31: db $28, $28, $08, $28, $28, $28, $2B, $2D ; Quadrant 1, Row 17, Strip 3
#_0ACE39: db $93, $93, $93, $A4, $93, $A4, $CA, $B4 ; Quadrant 1, Row 18, Strip 0
#_0ACE41: db $93, $93, $93, $B7, $11, $11, $12, $54 ; Quadrant 1, Row 18, Strip 1
#_0ACE49: db $35, $58, $56, $4C, $29, $28, $28, $28 ; Quadrant 1, Row 18, Strip 2
#_0ACE51: db $28, $28, $28, $28, $28, $28, $2C, $2E ; Quadrant 1, Row 18, Strip 3
#_0ACE59: db $24, $24, $24, $25, $00, $85, $06, $21 ; Quadrant 1, Row 19, Strip 0
#_0ACE61: db $21, $21, $21, $21, $21, $21, $22, $54 ; Quadrant 1, Row 19, Strip 1
#_0ACE69: db $39, $3A, $39, $28, $2C, $2D, $28, $28 ; Quadrant 1, Row 19, Strip 2
#_0ACE71: db $28, $28, $28, $28, $28, $28, $28, $2C ; Quadrant 1, Row 19, Strip 3
#_0ACE79: db $B6, $80, $80, $B6, $20, $07, $95, $A6 ; Quadrant 1, Row 1A, Strip 0
#_0ACE81: db $A6, $F6, $A7, $44, $45, $41, $31, $54 ; Quadrant 1, Row 1A, Strip 1
#_0ACE89: db $3B, $28, $28, $28, $28, $2C, $28, $28 ; Quadrant 1, Row 1A, Strip 2
#_0ACE91: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1A, Strip 3
#_0ACE99: db $D0, $D0, $D0, $D0, $D0, $10, $06, $77 ; Quadrant 1, Row 1B, Strip 0
#_0ACEA1: db $7B, $7B, $7B, $43, $7A, $7B, $8D, $8E ; Quadrant 1, Row 1B, Strip 1
#_0ACEA9: db $4A, $3B, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1B, Strip 2
#_0ACEB1: db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 1, Row 1B, Strip 3
#_0ACEB9: db $8C, $6E, $3F, $8A, $02, $10, $12, $54 ; Quadrant 1, Row 1C, Strip 0
#_0ACEC1: db $57, $9D, $9D, $9D, $9D, $9D, $C8, $C9 ; Quadrant 1, Row 1C, Strip 1
#_0ACEC9: db $35, $4C, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1C, Strip 2
#_0ACED1: db $28, $28, $28, $28, $28, $28, $08, $28 ; Quadrant 1, Row 1C, Strip 3
#_0ACED9: db $9C, $7E, $4F, $10, $12, $10, $12, $54 ; Quadrant 1, Row 1D, Strip 0
#_0ACEE1: db $C7, $57, $56, $48, $35, $89, $89, $5C ; Quadrant 1, Row 1D, Strip 1
#_0ACEE9: db $35, $3B, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1D, Strip 2
#_0ACEF1: db $28, $28, $28, $28, $28, $08, $28, $28 ; Quadrant 1, Row 1D, Strip 3
#_0ACEF9: db $5E, $A7, $CE, $10, $12, $52, $52, $54 ; Quadrant 1, Row 1E, Strip 0
#_0ACF01: db $C7, $EE, $EF, $58, $9D, $9D, $9D, $5C ; Quadrant 1, Row 1E, Strip 1
#_0ACF09: db $48, $4A, $3B, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1E, Strip 2
#_0ACF11: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1E, Strip 3
#_0ACF19: db $5E, $34, $CE, $10, $F3, $F4, $22, $54 ; Quadrant 1, Row 1F, Strip 0
#_0ACF21: db $C7, $89, $49, $56, $57, $9D, $56, $5C ; Quadrant 1, Row 1F, Strip 1
#_0ACF29: db $5C, $35, $4C, $28, $29, $28, $28, $28 ; Quadrant 1, Row 1F, Strip 2
#_0ACF31: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1F, Strip 3

;---------------------------------------------------------------------------------------------------

#_0ACF39: db $28, $28, $28, $28, $2B, $2D, $28, $28 ; Quadrant 2, Row 00, Strip 0
#_0ACF41: db $28, $28, $28, $2C, $2A, $0B, $14, $15 ; Quadrant 2, Row 00, Strip 1
#_0ACF49: db $34, $B6, $34, $3E, $5E, $88, $88, $10 ; Quadrant 2, Row 00, Strip 2
#_0ACF51: db $12, $FB, $A6, $10, $12, $CD, $34, $3E ; Quadrant 2, Row 00, Strip 3
#_0ACF59: db $28, $28, $28, $28, $2C, $2E, $2D, $08 ; Quadrant 2, Row 01, Strip 0
#_0ACF61: db $09, $28, $28, $28, $2F, $2A, $0B, $15 ; Quadrant 2, Row 01, Strip 1
#_0ACF69: db $88, $88, $BC, $BD, $BC, $BD, $F6, $10 ; Quadrant 2, Row 01, Strip 2
#_0ACF71: db $12, $BC, $BD, $10, $12, $5D, $4E, $7D ; Quadrant 2, Row 01, Strip 3
#_0ACF79: db $28, $28, $28, $28, $28, $2C, $2A, $28 ; Quadrant 2, Row 02, Strip 0
#_0ACF81: db $2B, $09, $28, $28, $28, $2F, $1B, $25 ; Quadrant 2, Row 02, Strip 1
#_0ACF89: db $34, $A7, $34, $34, $34, $34, $A7, $20 ; Quadrant 2, Row 02, Strip 2
#_0ACF91: db $22, $33, $33, $10, $16, $01, $01, $50 ; Quadrant 2, Row 02, Strip 3
#_0ACF99: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 03, Strip 0
#_0ACFA1: db $2C, $2A, $28, $28, $2F, $3C, $4B, $66 ; Quadrant 2, Row 03, Strip 1
#_0ACFA9: db $CF, $04, $04, $CB, $04, $BB, $C0, $03 ; Quadrant 2, Row 03, Strip 2
#_0ACFB1: db $04, $04, $04, $DB, $E6, $21, $21, $60 ; Quadrant 2, Row 03, Strip 3
#_0ACFB9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 04, Strip 0
#_0ACFC1: db $28, $28, $08, $09, $08, $5A, $35, $35 ; Quadrant 2, Row 04, Strip 1
#_0ACFC9: db $69, $24, $24, $27, $26, $25, $C0, $13 ; Quadrant 2, Row 04, Strip 2
#_0ACFD1: db $26, $24, $24, $27, $15, $A7, $FB, $FB ; Quadrant 2, Row 04, Strip 3
#_0ACFD9: db $09, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 05, Strip 0
#_0ACFE1: db $28, $28, $28, $2C, $2D, $2B, $3A, $35 ; Quadrant 2, Row 05, Strip 1
#_0ACFE9: db $55, $34, $34, $13, $15, $E4, $33, $13 ; Quadrant 2, Row 05, Strip 2
#_0ACFF1: db $15, $FB, $A7, $13, $15, $A7, $FB, $FB ; Quadrant 2, Row 05, Strip 3
#_0ACFF9: db $2B, $09, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 06, Strip 0
#_0AD001: db $28, $28, $28, $28, $2C, $2F, $3C, $35 ; Quadrant 2, Row 06, Strip 1
#_0AD009: db $55, $33, $31, $23, $25, $33, $F6, $13 ; Quadrant 2, Row 06, Strip 2
#_0AD011: db $15, $A7, $FB, $13, $15, $A7, $A6, $34 ; Quadrant 2, Row 06, Strip 3
#_0AD019: db $2C, $2E, $09, $08, $29, $28, $28, $28 ; Quadrant 2, Row 07, Strip 0
#_0AD021: db $28, $2C, $09, $28, $2F, $3C, $4B, $35 ; Quadrant 2, Row 07, Strip 1
#_0AD029: db $7A, $7B, $7B, $A3, $D2, $7B, $7C, $23 ; Quadrant 2, Row 07, Strip 2
#_0AD031: db $36, $05, $03, $37, $15, $A7, $41, $33 ; Quadrant 2, Row 07, Strip 3
#_0AD039: db $28, $2C, $2A, $28, $2C, $09, $28, $28 ; Quadrant 2, Row 08, Strip 0
#_0AD041: db $28, $28, $2C, $09, $3C, $4B, $35, $57 ; Quadrant 2, Row 08, Strip 1
#_0AD049: db $9D, $9D, $C5, $9D, $9D, $56, $55, $A6 ; Quadrant 2, Row 08, Strip 2
#_0AD051: db $23, $25, $23, $24, $25, $34, $44, $66 ; Quadrant 2, Row 08, Strip 3
#_0AD059: db $28, $28, $28, $28, $28, $2B, $2D, $28 ; Quadrant 2, Row 09, Strip 0
#_0AD061: db $28, $28, $28, $2C, $5A, $35, $35, $C7 ; Quadrant 2, Row 09, Strip 1
#_0AD069: db $35, $DE, $CC, $DE, $57, $5C, $47, $66 ; Quadrant 2, Row 09, Strip 2
#_0AD071: db $45, $D0, $D0, $D0, $C3, $34, $AF, $67 ; Quadrant 2, Row 09, Strip 3
#_0AD079: db $28, $28, $28, $28, $28, $2B, $2A, $28 ; Quadrant 2, Row 0A, Strip 0
#_0AD081: db $28, $28, $28, $28, $2C, $3A, $35, $C7 ; Quadrant 2, Row 0A, Strip 1
#_0AD089: db $57, $9D, $78, $9D, $59, $58, $56, $35 ; Quadrant 2, Row 0A, Strip 2
#_0AD091: db $7A, $7B, $7C, $A7, $34, $B1, $AD, $B6 ; Quadrant 2, Row 0A, Strip 3
#_0AD099: db $28, $28, $28, $28, $2F, $2A, $28, $28 ; Quadrant 2, Row 0B, Strip 0
#_0AD0A1: db $28, $28, $28, $28, $28, $2C, $3A, $C7 ; Quadrant 2, Row 0B, Strip 1
#_0AD0A9: db $C7, $86, $DC, $57, $59, $86, $58, $56 ; Quadrant 2, Row 0B, Strip 2
#_0AD0B1: db $35, $35, $7A, $7B, $7B, $D3, $AC, $BF ; Quadrant 2, Row 0B, Strip 3
#_0AD0B9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 0C, Strip 0
#_0AD0C1: db $28, $28, $08, $09, $08, $29, $3C, $C7 ; Quadrant 2, Row 0C, Strip 1
#_0AD0C9: db $C7, $86, $58, $59, $86, $86, $86, $5C ; Quadrant 2, Row 0C, Strip 2
#_0AD0D1: db $57, $56, $57, $56, $57, $65, $B6, $B6 ; Quadrant 2, Row 0C, Strip 3
#_0AD0D9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 0D, Strip 0
#_0AD0E1: db $28, $28, $28, $2C, $2D, $3C, $4B, $C7 ; Quadrant 2, Row 0D, Strip 1
#_0AD0E9: db $59, $86, $86, $86, $86, $86, $86, $5C ; Quadrant 2, Row 0D, Strip 2
#_0AD0F1: db $C7, $64, $65, $54, $55, $B6, $B6, $B6 ; Quadrant 2, Row 0D, Strip 3
#_0AD0F9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 0E, Strip 0
#_0AD101: db $28, $28, $28, $28, $2C, $5A, $35, $C7 ; Quadrant 2, Row 0E, Strip 1
#_0AD109: db $86, $86, $86, $86, $86, $86, $86, $58 ; Quadrant 2, Row 0E, Strip 2
#_0AD111: db $C2, $7F, $6F, $C1, $65, $B6, $79, $F5 ; Quadrant 2, Row 0E, Strip 3
#_0AD119: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 0F, Strip 0
#_0AD121: db $28, $28, $28, $08, $29, $2C, $3A, $C7 ; Quadrant 2, Row 0F, Strip 1
#_0AD129: db $66, $49, $86, $86, $86, $86, $86, $86 ; Quadrant 2, Row 0F, Strip 2
#_0AD131: db $5C, $47, $46, $55, $B6, $B6, $B6, $B6 ; Quadrant 2, Row 0F, Strip 3
#_0AD139: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 10, Strip 0
#_0AD141: db $08, $29, $08, $28, $2C, $09, $3C, $47 ; Quadrant 2, Row 10, Strip 1
#_0AD149: db $66, $66, $66, $66, $66, $66, $66, $66 ; Quadrant 2, Row 10, Strip 2
#_0AD151: db $46, $35, $35, $47, $66, $66, $66, $66 ; Quadrant 2, Row 10, Strip 3
#_0AD159: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 11, Strip 0
#_0AD161: db $28, $2C, $09, $28, $28, $2B, $5A, $39 ; Quadrant 2, Row 11, Strip 1
#_0AD169: db $3A, $39, $3A, $35, $35, $39, $3A, $48 ; Quadrant 2, Row 11, Strip 2
#_0AD171: db $66, $66, $49, $39, $3A, $35, $35, $39 ; Quadrant 2, Row 11, Strip 3
#_0AD179: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 12, Strip 0
#_0AD181: db $28, $28, $2C, $28, $28, $2C, $2C, $2D ; Quadrant 2, Row 12, Strip 1
#_0AD189: db $2C, $28, $2C, $3A, $39, $2F, $3C, $5C ; Quadrant 2, Row 12, Strip 2
#_0AD191: db $39, $3A, $39, $28, $2C, $3A, $39, $28 ; Quadrant 2, Row 12, Strip 3
#_0AD199: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 13, Strip 0
#_0AD1A1: db $28, $28, $28, $28, $28, $28, $28, $2C ; Quadrant 2, Row 13, Strip 1
#_0AD1A9: db $28, $28, $28, $2C, $28, $2C, $5A, $46 ; Quadrant 2, Row 13, Strip 2
#_0AD1B1: db $3B, $2C, $2D, $28, $28, $2C, $2D, $28 ; Quadrant 2, Row 13, Strip 3
#_0AD1B9: db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 2, Row 14, Strip 0
#_0AD1C1: db $29, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 14, Strip 1
#_0AD1C9: db $28, $28, $28, $28, $28, $28, $3C, $35 ; Quadrant 2, Row 14, Strip 2
#_0AD1D1: db $4A, $3B, $2C, $2D, $28, $28, $2C, $28 ; Quadrant 2, Row 14, Strip 3
#_0AD1D9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 15, Strip 0
#_0AD1E1: db $2C, $09, $08, $29, $28, $28, $28, $28 ; Quadrant 2, Row 15, Strip 1
#_0AD1E9: db $28, $28, $28, $28, $28, $08, $5A, $35 ; Quadrant 2, Row 15, Strip 2
#_0AD1F1: db $35, $4A, $3B, $3C, $3B, $08, $29, $28 ; Quadrant 2, Row 15, Strip 3
#_0AD1F9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 16, Strip 0
#_0AD201: db $28, $2C, $2D, $2C, $09, $28, $28, $28 ; Quadrant 2, Row 16, Strip 1
#_0AD209: db $28, $28, $28, $28, $08, $28, $2C, $3A ; Quadrant 2, Row 16, Strip 2
#_0AD211: db $39, $3A, $4A, $4B, $4C, $28, $2C, $09 ; Quadrant 2, Row 16, Strip 3
#_0AD219: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 17, Strip 0
#_0AD221: db $28, $28, $2C, $28, $2B, $09, $08, $29 ; Quadrant 2, Row 17, Strip 1
#_0AD229: db $28, $28, $28, $08, $28, $28, $28, $2A ; Quadrant 2, Row 17, Strip 2
#_0AD231: db $28, $2C, $3A, $39, $28, $28, $28, $08 ; Quadrant 2, Row 17, Strip 3
#_0AD239: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 18, Strip 0
#_0AD241: db $28, $28, $28, $28, $2B, $2A, $28, $2C ; Quadrant 2, Row 18, Strip 1
#_0AD249: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 18, Strip 2
#_0AD251: db $28, $28, $2B, $2D, $28, $28, $28, $28 ; Quadrant 2, Row 18, Strip 3
#_0AD259: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 19, Strip 0
#_0AD261: db $28, $28, $28, $28, $2A, $28, $28, $28 ; Quadrant 2, Row 19, Strip 1
#_0AD269: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 19, Strip 2
#_0AD271: db $28, $28, $2C, $2E, $2D, $28, $28, $28 ; Quadrant 2, Row 19, Strip 3
#_0AD279: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1A, Strip 0
#_0AD281: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1A, Strip 1
#_0AD289: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1A, Strip 2
#_0AD291: db $28, $28, $28, $2C, $2E, $28, $28, $28 ; Quadrant 2, Row 1A, Strip 3
#_0AD299: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1B, Strip 0
#_0AD2A1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1B, Strip 1
#_0AD2A9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1B, Strip 2
#_0AD2B1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1B, Strip 3
#_0AD2B9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1C, Strip 0
#_0AD2C1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1C, Strip 1
#_0AD2C9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1C, Strip 2
#_0AD2D1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1C, Strip 3
#_0AD2D9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1D, Strip 0
#_0AD2E1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1D, Strip 1
#_0AD2E9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1D, Strip 2
#_0AD2F1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1D, Strip 3
#_0AD2F9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1E, Strip 0
#_0AD301: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1E, Strip 1
#_0AD309: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1E, Strip 2
#_0AD311: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1E, Strip 3
#_0AD319: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1F, Strip 0
#_0AD321: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1F, Strip 1
#_0AD329: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1F, Strip 2
#_0AD331: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1F, Strip 3

;---------------------------------------------------------------------------------------------------

#_0AD339: db $5E, $34, $CE, $10, $12, $FC, $FC, $5C ; Quadrant 3, Row 00, Strip 0
#_0AD341: db $C7, $9D, $59, $58, $59, $89, $58, $5C ; Quadrant 3, Row 00, Strip 1
#_0AD349: db $58, $39, $28, $28, $2C, $2D, $28, $28 ; Quadrant 3, Row 00, Strip 2
#_0AD351: db $08, $29, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 00, Strip 3
#_0AD359: db $6D, $4E, $5F, $20, $22, $FC, $FC, $5C ; Quadrant 3, Row 01, Strip 0
#_0AD361: db $C7, $67, $56, $89, $57, $67, $67, $5C ; Quadrant 3, Row 01, Strip 1
#_0AD369: db $39, $28, $28, $28, $28, $2B, $2D, $08 ; Quadrant 3, Row 01, Strip 2
#_0AD371: db $28, $2C, $2D, $28, $28, $28, $28, $28 ; Quadrant 3, Row 01, Strip 3
#_0AD379: db $51, $01, $01, $01, $02, $FC, $FC, $5C ; Quadrant 3, Row 02, Strip 0
#_0AD381: db $55, $9E, $64, $67, $65, $FB, $A7, $54 ; Quadrant 3, Row 02, Strip 1
#_0AD389: db $3B, $28, $28, $08, $28, $28, $2C, $28 ; Quadrant 3, Row 02, Strip 2
#_0AD391: db $28, $28, $2C, $28, $28, $28, $28, $28 ; Quadrant 3, Row 02, Strip 3
#_0AD399: db $61, $21, $21, $07, $12, $FC, $FC, $5C ; Quadrant 3, Row 03, Strip 0
#_0AD3A1: db $55, $77, $7B, $7B, $7B, $7B, $7C, $54 ; Quadrant 3, Row 03, Strip 1
#_0AD3A9: db $4A, $3B, $08, $28, $28, $28, $28, $28 ; Quadrant 3, Row 03, Strip 2
#_0AD3B1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 03, Strip 3
#_0AD3B9: db $FB, $A7, $C0, $10, $12, $FC, $FC, $5C ; Quadrant 3, Row 04, Strip 0
#_0AD3C1: db $55, $64, $67, $56, $57, $67, $65, $54 ; Quadrant 3, Row 04, Strip 1
#_0AD3C9: db $48, $4C, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 04, Strip 2
#_0AD3D1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 04, Strip 3
#_0AD3D9: db $FB, $B6, $C0, $10, $12, $34, $34, $64 ; Quadrant 3, Row 05, Strip 0
#_0AD3E1: db $65, $A6, $A6, $54, $55, $31, $44, $46 ; Quadrant 3, Row 05, Strip 1
#_0AD3E9: db $58, $3B, $28, $2F, $28, $28, $28, $28 ; Quadrant 3, Row 05, Strip 2
#_0AD3F1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 05, Strip 3
#_0AD3F9: db $B6, $F6, $C0, $10, $16, $50, $51, $01 ; Quadrant 3, Row 06, Strip 0
#_0AD401: db $01, $01, $01, $68, $55, $41, $64, $56 ; Quadrant 3, Row 06, Strip 1
#_0AD409: db $48, $4A, $3B, $3C, $3B, $28, $28, $28 ; Quadrant 3, Row 06, Strip 2
#_0AD411: db $2F, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 06, Strip 3
#_0AD419: db $33, $33, $C3, $20, $21, $60, $61, $AB ; Quadrant 3, Row 07, Strip 0
#_0AD421: db $97, $97, $BE, $68, $7A, $7B, $7B, $43 ; Quadrant 3, Row 07, Strip 1
#_0AD429: db $5C, $35, $4A, $4B, $4A, $3B, $08, $29 ; Quadrant 3, Row 07, Strip 2
#_0AD431: db $3C, $3B, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 07, Strip 3
#_0AD439: db $66, $45, $44, $66, $45, $34, $34, $64 ; Quadrant 3, Row 08, Strip 0
#_0AD441: db $AE, $AE, $A9, $68, $57, $C6, $67, $56 ; Quadrant 3, Row 08, Strip 1
#_0AD449: db $58, $56, $35, $35, $35, $4C, $2F, $3C ; Quadrant 3, Row 08, Strip 2
#_0AD451: db $4B, $4C, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 08, Strip 3
#_0AD459: db $67, $65, $64, $56, $75, $76, $96, $01 ; Quadrant 3, Row 09, Strip 0
#_0AD461: db $17, $11, $11, $B8, $53, $01, $02, $54 ; Quadrant 3, Row 09, Strip 1
#_0AD469: db $35, $58, $39, $3A, $39, $28, $28, $5A ; Quadrant 3, Row 09, Strip 2
#_0AD471: db $39, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 09, Strip 3
#_0AD479: db $B6, $B6, $B6, $54, $55, $10, $06, $07 ; Quadrant 3, Row 0A, Strip 0
#_0AD481: db $87, $97, $BE, $8F, $9F, $06, $12, $54 ; Quadrant 3, Row 0A, Strip 1
#_0AD489: db $35, $39, $28, $2C, $2D, $28, $28, $2C ; Quadrant 3, Row 0A, Strip 2
#_0AD491: db $2D, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 3, Row 0A, Strip 3
#_0AD499: db $BF, $B6, $B6, $54, $55, $10, $16, $17 ; Quadrant 3, Row 0B, Strip 0
#_0AD4A1: db $B9, $C6, $BA, $8F, $9F, $12, $12, $54 ; Quadrant 3, Row 0B, Strip 1
#_0AD4A9: db $35, $3B, $08, $28, $2C, $28, $28, $28 ; Quadrant 3, Row 0B, Strip 2
#_0AD4B1: db $2C, $28, $28, $28, $28, $28, $08, $28 ; Quadrant 3, Row 0B, Strip 3
#_0AD4B9: db $B6, $B6, $B6, $54, $47, $AA, $11, $11 ; Quadrant 3, Row 0C, Strip 0
#_0AD4C1: db $16, $96, $17, $8F, $9F, $12, $22, $54 ; Quadrant 3, Row 0C, Strip 1
#_0AD4C9: db $35, $4C, $2D, $28, $28, $28, $28, $28 ; Quadrant 3, Row 0C, Strip 2
#_0AD4D1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 0C, Strip 3
#_0AD4D9: db $B6, $30, $33, $54, $57, $F2, $11, $11 ; Quadrant 3, Row 0D, Strip 0
#_0AD4E1: db $11, $11, $11, $A8, $A9, $95, $02, $54 ; Quadrant 3, Row 0D, Strip 1
#_0AD4E9: db $39, $28, $2C, $2D, $28, $28, $08, $29 ; Quadrant 3, Row 0D, Strip 2
#_0AD4F1: db $08, $29, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 0D, Strip 3
#_0AD4F9: db $B6, $32, $34, $64, $65, $10, $11, $11 ; Quadrant 3, Row 0E, Strip 0
#_0AD501: db $06, $21, $07, $11, $11, $06, $22, $54 ; Quadrant 3, Row 0E, Strip 1
#_0AD509: db $3B, $28, $28, $2C, $28, $28, $28, $2C ; Quadrant 3, Row 0E, Strip 2
#_0AD511: db $28, $2C, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 0E, Strip 3
#_0AD519: db $30, $40, $34, $B6, $34, $20, $21, $21 ; Quadrant 3, Row 0F, Strip 0
#_0AD521: db $22, $34, $B6, $34, $34, $34, $B6, $54 ; Quadrant 3, Row 0F, Strip 1
#_0AD529: db $39, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 0F, Strip 2
#_0AD531: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 0F, Strip 3
#_0AD539: db $66, $66, $66, $66, $66, $66, $66, $66 ; Quadrant 3, Row 10, Strip 0
#_0AD541: db $66, $66, $66, $66, $66, $66, $66, $46 ; Quadrant 3, Row 10, Strip 1
#_0AD549: db $3B, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 10, Strip 2
#_0AD551: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 10, Strip 3
#_0AD559: db $3A, $48, $66, $66, $66, $49, $48, $49 ; Quadrant 3, Row 11, Strip 0
#_0AD561: db $39, $3A, $35, $35, $39, $3A, $35, $35 ; Quadrant 3, Row 11, Strip 1
#_0AD569: db $39, $2D, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 11, Strip 2
#_0AD571: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 11, Strip 3
#_0AD579: db $2C, $3A, $39, $3A, $35, $47, $46, $39 ; Quadrant 3, Row 12, Strip 0
#_0AD581: db $28, $2C, $3A, $39, $28, $2C, $3A, $39 ; Quadrant 3, Row 12, Strip 1
#_0AD589: db $28, $2C, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 12, Strip 2
#_0AD591: db $28, $28, $28, $28, $28, $08, $29, $08 ; Quadrant 3, Row 12, Strip 3
#_0AD599: db $28, $2C, $2D, $2C, $3A, $35, $39, $28 ; Quadrant 3, Row 13, Strip 0
#_0AD5A1: db $28, $28, $2C, $08, $29, $28, $2C, $28 ; Quadrant 3, Row 13, Strip 1
#_0AD5A9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 13, Strip 2
#_0AD5B1: db $28, $28, $28, $28, $08, $28, $2C, $2D ; Quadrant 3, Row 13, Strip 3
#_0AD5B9: db $28, $28, $2C, $28, $2C, $39, $28, $28 ; Quadrant 3, Row 14, Strip 0
#_0AD5C1: db $28, $28, $28, $28, $2B, $09, $08, $29 ; Quadrant 3, Row 14, Strip 1
#_0AD5C9: db $28, $28, $28, $28, $08, $29, $28, $28 ; Quadrant 3, Row 14, Strip 2
#_0AD5D1: db $28, $28, $28, $28, $28, $28, $28, $2C ; Quadrant 3, Row 14, Strip 3
#_0AD5D9: db $28, $28, $28, $28, $08, $29, $28, $28 ; Quadrant 3, Row 15, Strip 0
#_0AD5E1: db $28, $28, $28, $28, $2C, $2A, $28, $2C ; Quadrant 3, Row 15, Strip 1
#_0AD5E9: db $09, $28, $28, $08, $28, $2C, $09, $28 ; Quadrant 3, Row 15, Strip 2
#_0AD5F1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 15, Strip 3
#_0AD5F9: db $28, $28, $28, $08, $28, $2C, $2D, $28 ; Quadrant 3, Row 16, Strip 0
#_0AD601: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 16, Strip 1
#_0AD609: db $08, $29, $08, $28, $28, $28, $2B, $09 ; Quadrant 3, Row 16, Strip 2
#_0AD611: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 16, Strip 3
#_0AD619: db $29, $28, $08, $28, $28, $28, $2C, $28 ; Quadrant 3, Row 17, Strip 0
#_0AD621: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 17, Strip 1
#_0AD629: db $28, $2C, $2D, $28, $28, $28, $2C, $2E ; Quadrant 3, Row 17, Strip 2
#_0AD631: db $09, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 17, Strip 3
#_0AD639: db $2C, $2D, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 18, Strip 0
#_0AD641: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 18, Strip 1
#_0AD649: db $28, $28, $2C, $28, $28, $28, $28, $2B ; Quadrant 3, Row 18, Strip 2
#_0AD651: db $2A, $29, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 18, Strip 3
#_0AD659: db $28, $2C, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 19, Strip 0
#_0AD661: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 19, Strip 1
#_0AD669: db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 3, Row 19, Strip 2
#_0AD671: db $09, $2C, $09, $28, $28, $28, $28, $28 ; Quadrant 3, Row 19, Strip 3
#_0AD679: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1A, Strip 0
#_0AD681: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1A, Strip 1
#_0AD689: db $28, $28, $28, $28, $28, $28, $08, $28 ; Quadrant 3, Row 1A, Strip 2
#_0AD691: db $28, $28, $2B, $09, $28, $28, $28, $28 ; Quadrant 3, Row 1A, Strip 3
#_0AD699: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1B, Strip 0
#_0AD6A1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1B, Strip 1
#_0AD6A9: db $28, $28, $28, $28, $28, $08, $28, $28 ; Quadrant 3, Row 1B, Strip 2
#_0AD6B1: db $28, $28, $2C, $2E, $2D, $28, $28, $28 ; Quadrant 3, Row 1B, Strip 3
#_0AD6B9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1C, Strip 0
#_0AD6C1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1C, Strip 1
#_0AD6C9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1C, Strip 2
#_0AD6D1: db $28, $28, $28, $2B, $2A, $28, $28, $28 ; Quadrant 3, Row 1C, Strip 3
#_0AD6D9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1D, Strip 0
#_0AD6E1: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1D, Strip 1
#_0AD6E9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1D, Strip 2
#_0AD6F1: db $28, $28, $28, $2A, $28, $28, $28, $28 ; Quadrant 3, Row 1D, Strip 3
#_0AD6F9: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1E, Strip 0
#_0AD701: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1E, Strip 1
#_0AD709: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1E, Strip 2
#_0AD711: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1E, Strip 3
#_0AD719: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1F, Strip 0
#_0AD721: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1F, Strip 1
#_0AD729: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1F, Strip 2
#_0AD731: db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1F, Strip 3

;===================================================================================================

WorldMap_DarkWorldTileMap:
#_0AD739: db $26, $27, $14, $14, $14, $A5, $14, $26 ; Row 00, Strip 0
#_0AD741: db $24, $25, $56, $35, $5B, $73, $74, $28 ; Row 00, Strip 1
#_0AD749: db $72, $99, $63, $73, $73, $74, $2C, $72 ; Row 00, Strip 2
#_0AD751: db $73, $73, $73, $A1, $A0, $73, $73, $74 ; Row 00, Strip 3
#_0AD759: db $36, $37, $14, $14, $14, $14, $14, $15 ; Row 01, Strip 0
#_0AD761: db $34, $A7, $64, $5B, $90, $73, $73, $73 ; Row 01, Strip 1
#_0AD769: db $73, $9A, $70, $A0, $73, $91, $09, $90 ; Row 01, Strip 2
#_0AD771: db $73, $73, $A1, $84, $90, $73, $FF, $91 ; Row 01, Strip 3
#_0AD779: db $14, $14, $14, $14, $14, $14, $14, $15 ; Row 02, Strip 0
#_0AD781: db $A7, $34, $E4, $90, $82, $83, $83, $83 ; Row 02, Strip 1
#_0AD789: db $83, $83, $84, $82, $83, $83, $83, $83 ; Row 02, Strip 2
#_0AD791: db $83, $83, $84, $B3, $82, $83, $83, $84 ; Row 02, Strip 3
#_0AD799: db $A5, $14, $14, $14, $A5, $14, $14, $15 ; Row 03, Strip 0
#_0AD7A1: db $A7, $B6, $DF, $82, $B2, $93, $93, $93 ; Row 03, Strip 1
#_0AD7A9: db $93, $93, $94, $92, $93, $94, $72, $93 ; Row 03, Strip 2
#_0AD7B1: db $93, $93, $B3, $91, $B4, $93, $93, $A2 ; Row 03, Strip 3
#_0AD7B9: db $14, $A5, $14, $14, $14, $14, $14, $15 ; Row 04, Strip 0
#_0AD7C1: db $34, $A7, $82, $B2, $93, $93, $93, $93 ; Row 04, Strip 1
#_0AD7C9: db $93, $93, $94, $92, $93, $94, $82, $93 ; Row 04, Strip 2
#_0AD7D1: db $82, $83, $83, $84, $CA, $CA, $CA, $8F ; Row 04, Strip 3
#_0AD7D9: db $14, $14, $14, $14, $A5, $14, $A5, $36 ; Row 05, Strip 0
#_0AD7E1: db $05, $34, $B0, $D6, $93, $82, $83, $83 ; Row 05, Strip 1
#_0AD7E9: db $83, $84, $B3, $B2, $93, $B3, $B4, $90 ; Row 05, Strip 2
#_0AD7F1: db $B2, $93, $93, $B3, $BE, $11, $95, $54 ; Row 05, Strip 3
#_0AD7F9: db $A5, $14, $14, $A5, $14, $A5, $14, $14 ; Row 06, Strip 0
#_0AD801: db $15, $33, $33, $33, $90, $B2, $93, $93 ; Row 06, Strip 1
#_0AD809: db $93, $B3, $73, $A1, $83, $84, $11, $90 ; Row 06, Strip 2
#_0AD811: db $73, $73, $73, $91, $9F, $06, $22, $54 ; Row 06, Strip 3
#_0AD819: db $14, $14, $A5, $A5, $14, $14, $14, $A5 ; Row 07, Strip 0
#_0AD821: db $15, $A6, $FB, $34, $82, $83, $83, $83 ; Row 07, Strip 1
#_0AD829: db $83, $83, $83, $84, $93, $94, $CA, $82 ; Row 07, Strip 2
#_0AD831: db $83, $83, $83, $84, $A9, $16, $02, $54 ; Row 07, Strip 3
#_0AD839: db $26, $27, $26, $27, $26, $24, $24, $D5 ; Row 08, Strip 0
#_0AD841: db $25, $34, $34, $34, $B0, $93, $D6, $93 ; Row 08, Strip 1
#_0AD849: db $93, $93, $93, $A4, $93, $A4, $CA, $B4 ; Row 08, Strip 2
#_0AD851: db $93, $93, $93, $B7, $11, $11, $12, $54 ; Row 08, Strip 3
#_0AD859: db $15, $13, $15, $13, $15, $33, $40, $41 ; Row 09, Strip 0
#_0AD861: db $33, $BF, $34, $34, $30, $FB, $C0, $23 ; Row 09, Strip 1
#_0AD869: db $24, $24, $24, $25, $00, $17, $06, $21 ; Row 09, Strip 2
#_0AD871: db $21, $21, $21, $21, $21, $21, $22, $54 ; Row 09, Strip 3
#_0AD879: db $15, $13, $15, $13, $15, $BC, $BD, $A6 ; Row 0A, Strip 0
#_0AD881: db $A7, $34, $41, $33, $40, $34, $C0, $34 ; Row 0A, Strip 1
#_0AD889: db $B6, $80, $80, $B6, $20, $07, $95, $A6 ; Row 0A, Strip 2
#_0AD891: db $A6, $F6, $A7, $44, $45, $34, $41, $54 ; Row 0A, Strip 3
#_0AD899: db $15, $13, $15, $13, $36, $05, $D0, $D0 ; Row 0B, Strip 0
#_0AD8A1: db $D0, $D0, $D0, $D0, $D0, $D0, $C3, $D0 ; Row 0B, Strip 1
#_0AD8A9: db $D0, $D0, $D0, $D0, $D0, $10, $06, $77 ; Row 0B, Strip 2
#_0AD8B1: db $7B, $7B, $7B, $43, $7A, $7B, $8D, $8E ; Row 0B, Strip 3
#_0AD8B9: db $15, $23, $25, $23, $24, $25, $C0, $A6 ; Row 0C, Strip 0
#_0AD8C1: db $FB, $A7, $A6, $00, $EA, $E8, $E8, $E8 ; Row 0C, Strip 1
#_0AD8C9: db $E9, $E9, $E9, $EB, $02, $10, $12, $54 ; Row 0C, Strip 2
#_0AD8D1: db $57, $9D, $9D, $9D, $9D, $9D, $C8, $C9 ; Row 0C, Strip 3
#_0AD8D9: db $25, $31, $B6, $34, $6E, $6E, $C0, $10 ; Row 0D, Strip 0
#_0AD8E1: db $12, $A7, $A6, $10, $C4, $D9, $D9, $D7 ; Row 0D, Strip 1
#_0AD8E9: db $E7, $DA, $DA, $D4, $12, $10, $12, $54 ; Row 0D, Strip 2
#_0AD8F1: db $C7, $E2, $E2, $E2, $E2, $F1, $89, $54 ; Row 0D, Strip 3
#_0AD8F9: db $34, $41, $33, $33, $33, $33, $C0, $10 ; Row 0E, Strip 0
#_0AD901: db $12, $A6, $F6, $10, $C4, $D9, $D7, $D8 ; Row 0E, Strip 1
#_0AD909: db $EC, $E7, $DA, $D4, $12, $10, $12, $54 ; Row 0E, Strip 2
#_0AD911: db $C7, $E2, $E2, $E2, $E2, $E1, $F1, $54 ; Row 0E, Strip 3
#_0AD919: db $34, $F6, $89, $6B, $6C, $89, $F6, $10 ; Row 0F, Strip 0
#_0AD921: db $12, $FB, $FB, $10, $C4, $D7, $EC, $D8 ; Row 0F, Strip 1
#_0AD929: db $D8, $D8, $E7, $D4, $F3, $F4, $22, $54 ; Row 0F, Strip 2
#_0AD931: db $C7, $E2, $E1, $E1, $E2, $E1, $F1, $54 ; Row 0F, Strip 3
#_0AD939: db $34, $B6, $34, $3E, $5E, $88, $88, $10 ; Row 10, Strip 0
#_0AD941: db $12, $A6, $A6, $10, $D1, $D8, $D8, $EC ; Row 10, Strip 1
#_0AD949: db $EC, $D8, $D8, $E5, $12, $FC, $FC, $5C ; Row 10, Strip 2
#_0AD951: db $C7, $E0, $6D, $7D, $E0, $E1, $F1, $54 ; Row 10, Strip 3
#_0AD959: db $88, $88, $E3, $BD, $E3, $BD, $F6, $10 ; Row 11, Strip 0
#_0AD961: db $12, $E3, $BD, $10, $12, $34, $A7, $89 ; Row 11, Strip 1
#_0AD969: db $89, $A7, $34, $20, $22, $FC, $FC, $5C ; Row 11, Strip 2
#_0AD971: db $C7, $E2, $E1, $E2, $E2, $F1, $89, $54 ; Row 11, Strip 3
#_0AD979: db $34, $A7, $34, $34, $34, $34, $A7, $20 ; Row 12, Strip 0
#_0AD981: db $22, $33, $33, $10, $16, $01, $01, $01 ; Row 12, Strip 1
#_0AD989: db $01, $01, $01, $01, $02, $FC, $FC, $5C ; Row 12, Strip 2
#_0AD991: db $55, $F0, $89, $F0, $F0, $FB, $A7, $54 ; Row 12, Strip 3
#_0AD999: db $CF, $04, $04, $CB, $04, $BB, $C0, $03 ; Row 13, Strip 0
#_0AD9A1: db $04, $04, $04, $DB, $E6, $21, $21, $21 ; Row 13, Strip 1
#_0AD9A9: db $21, $21, $21, $07, $12, $FC, $FC, $5C ; Row 13, Strip 2
#_0AD9B1: db $55, $77, $7B, $7B, $7B, $7B, $7C, $54 ; Row 13, Strip 3
#_0AD9B9: db $69, $24, $24, $27, $26, $25, $C0, $13 ; Row 14, Strip 0
#_0AD9C1: db $26, $24, $24, $27, $15, $A7, $FB, $FB ; Row 14, Strip 1
#_0AD9C9: db $FB, $A7, $C0, $10, $12, $FC, $FC, $5C ; Row 14, Strip 2
#_0AD9D1: db $55, $64, $67, $56, $57, $67, $65, $54 ; Row 14, Strip 3
#_0AD9D9: db $55, $34, $34, $13, $15, $33, $33, $13 ; Row 15, Strip 0
#_0AD9E1: db $15, $FB, $A7, $13, $15, $A7, $FB, $FB ; Row 15, Strip 1
#_0AD9E9: db $FB, $B6, $C0, $10, $12, $34, $34, $64 ; Row 15, Strip 2
#_0AD9F1: db $65, $A6, $A6, $54, $55, $31, $44, $46 ; Row 15, Strip 3
#_0AD9F9: db $55, $33, $31, $23, $25, $33, $F6, $13 ; Row 16, Strip 0
#_0ADA01: db $15, $A7, $FB, $13, $15, $A7, $A6, $34 ; Row 16, Strip 1
#_0ADA09: db $B6, $F6, $C0, $10, $16, $02, $00, $96 ; Row 16, Strip 2
#_0ADA11: db $01, $01, $01, $68, $55, $41, $64, $56 ; Row 16, Strip 3
#_0ADA19: db $7A, $7B, $7B, $7B, $7B, $7B, $7C, $23 ; Row 17, Strip 0
#_0ADA21: db $36, $05, $03, $37, $15, $A7, $41, $33 ; Row 17, Strip 1
#_0ADA29: db $33, $33, $C3, $20, $21, $22, $20, $AB ; Row 17, Strip 2
#_0ADA31: db $97, $97, $BE, $68, $7A, $7B, $7B, $43 ; Row 17, Strip 3
#_0ADA39: db $9D, $9D, $9D, $9D, $9D, $56, $55, $A6 ; Row 18, Strip 0
#_0ADA41: db $23, $25, $23, $24, $25, $34, $44, $66 ; Row 18, Strip 1
#_0ADA49: db $66, $45, $44, $66, $45, $34, $34, $64 ; Row 18, Strip 2
#_0ADA51: db $AE, $AE, $A9, $68, $57, $C6, $67, $56 ; Row 18, Strip 3
#_0ADA59: db $9F, $DD, $DD, $DD, $11, $8F, $47, $66 ; Row 19, Strip 0
#_0ADA61: db $45, $D0, $D0, $D0, $C3, $34, $AF, $67 ; Row 19, Strip 1
#_0ADA69: db $67, $65, $64, $56, $75, $76, $01, $01 ; Row 19, Strip 2
#_0ADA71: db $17, $11, $11, $B8, $53, $96, $02, $54 ; Row 19, Strip 3
#_0ADA79: db $9F, $11, $11, $11, $11, $A8, $56, $35 ; Row 1A, Strip 0
#_0ADA81: db $55, $77, $7C, $A7, $34, $B1, $AD, $B6 ; Row 1A, Strip 1
#_0ADA89: db $B6, $B6, $B6, $54, $55, $10, $11, $11 ; Row 1A, Strip 2
#_0ADA91: db $11, $11, $11, $8F, $9F, $06, $12, $54 ; Row 1A, Strip 3
#_0ADA99: db $9F, $ED, $ED, $11, $ED, $11, $A8, $56 ; Row 1B, Strip 0
#_0ADAA1: db $7A, $43, $7A, $7B, $7B, $D3, $AC, $BF ; Row 1B, Strip 1
#_0ADAA9: db $BF, $B6, $B6, $54, $55, $10, $11, $11 ; Row 1B, Strip 2
#_0ADAB1: db $F7, $F8, $11, $8F, $9F, $12, $22, $54 ; Row 1B, Strip 3
#_0ADAB9: db $9F, $ED, $11, $11, $11, $ED, $11, $54 ; Row 1C, Strip 0
#_0ADAC1: db $57, $56, $57, $56, $57, $65, $B6, $B6 ; Row 1C, Strip 1
#_0ADAC9: db $B6, $B6, $B6, $54, $47, $AA, $11, $11 ; Row 1C, Strip 2
#_0ADAD1: db $F9, $FA, $11, $8F, $9F, $12, $34, $54 ; Row 1C, Strip 3
#_0ADAD9: db $A9, $11, $11, $ED, $11, $11, $11, $54 ; Row 1D, Strip 0
#_0ADAE1: db $55, $64, $65, $54, $55, $B6, $B6, $B6 ; Row 1D, Strip 1
#_0ADAE9: db $B6, $30, $33, $54, $57, $F2, $11, $11 ; Row 1D, Strip 2
#_0ADAF1: db $11, $11, $11, $A8, $A9, $95, $02, $54 ; Row 1D, Strip 3
#_0ADAF9: db $11, $11, $ED, $11, $11, $ED, $11, $54 ; Row 1E, Strip 0
#_0ADB01: db $7A, $7F, $6F, $C1, $65, $B6, $79, $F5 ; Row 1E, Strip 1
#_0ADB09: db $B6, $32, $34, $64, $65, $20, $07, $11 ; Row 1E, Strip 2
#_0ADB11: db $11, $11, $11, $11, $06, $21, $22, $54 ; Row 1E, Strip 3
#_0ADB19: db $21, $07, $11, $ED, $11, $ED, $06, $54 ; Row 1F, Strip 0
#_0ADB21: db $35, $47, $46, $55, $B6, $B6, $B6, $B6 ; Row 1F, Strip 1
#_0ADB29: db $30, $40, $34, $B6, $34, $34, $10, $11 ; Row 1F, Strip 2
#_0ADB31: db $11, $11, $06, $21, $22, $34, $B6, $54 ; Row 1F, Strip 3

;===================================================================================================

Palettes_OWMAP:

; Light World
Palettes_LWMAP:
; #RRGGBB :  000000, 585010, 185828, 188020, A86050, F8F0B0, 886040, B88858
; #RRGGBB :  F800F8, B8C8D8, C8D0E0, D0D8E8, D8E0F0, E8E8F8, 000000, 000000
; #RRGGBB :  000000, 004000, 000000, 000000, D8E0F0, B06820, D8A030, F8F8B8
; #RRGGBB :  A86050, A0A0D8, B0B0E8, C8C8F8, D8D8F8, E8E8F8, 000000, 000000
; #RRGGBB :  000000, 004000, A05838, C8F8C8, 48B838, 70E060, 2050C0, 5098F8
; #RRGGBB :  209010, F800F8, 2050C0, 58B840, 507078, 90B0B8, D0F0F8, 505860
; #RRGGBB :  000000, 004000, 603028, 804030, A86050, D08878, 185830, 187828
; #RRGGBB :  A87848, B88858, 187828, 58B840, 2050C0, 9888F8, C860B8, E8C0E8
; #RRGGBB :  000000, 603818, 58B840, 88E858, 805838, B88858, A87848, B89878
; #RRGGBB :  D0C888, 2050C0, 5098F8, 187828, 588058, A0D0A0, F8F8F8, 30A828
; #RRGGBB :  000000, 004000, 287028, 30A828, 48B838, 68D058, A87848, B89878
; #RRGGBB :  D0C888, A0D0A0, 187828, 58B840, C04050, F88090, F8D878, F800F8
; #RRGGBB :  000000, 004000, 185828, 188020, 48B838, 80E858, 805838, B88858
; #RRGGBB :  D0C888, 2050C0, 187828, 58B840, 805838, B88858, F8C898, E8E8F8
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000, A87848
; #RRGGBB :  505860, 90B0B8, F8F8F8, 187828, D0C888, C04050, E8C0E8, 000000
#_0ADB39: dw  $0000,  $094B,  $1563,  $1203,  $2995,  $5BDF,  $2191,  $2E37
#_0ADB49: dw  $7C1F,  $6F37,  $7359,  $777A,  $7B9B,  $7FBD,  $0000,  $0000
#_0ADB59: dw  $0000,  $0100,  $0000,  $0000,  $7B9B,  $11B6,  $1A9B,  $5FFF
#_0ADB69: dw  $2995,  $6E94,  $76D6,  $7F39,  $7F7B,  $7FBD,  $0000,  $0000
#_0ADB79: dw  $0000,  $0100,  $1D74,  $67F9,  $1EE9,  $338E,  $6144,  $7E6A
#_0ADB89: dw  $0A44,  $7C1F,  $6144,  $22EB,  $3DCA,  $5ED2,  $7FDA,  $316A
#_0ADB99: dw  $0000,  $0100,  $14CC,  $1910,  $2995,  $3E3A,  $1963,  $15E3
#_0ADBA9: dw  $25F5,  $2E37,  $15E3,  $22EB,  $6144,  $7E33,  $5D99,  $771D
#_0ADBB9: dw  $0000,  $0CEC,  $22EB,  $2FB1,  $1D70,  $2E37,  $25F5,  $3E77
#_0ADBC9: dw  $473A,  $6144,  $7E6A,  $15E3,  $2E0B,  $5354,  $7FFF,  $16A6
#_0ADBD9: dw  $0000,  $0100,  $15C5,  $16A6,  $1EE9,  $2F4D,  $25F5,  $3E77
#_0ADBE9: dw  $473A,  $5354,  $15E3,  $22EB,  $2918,  $4A1F,  $3F7F,  $7C1F
#_0ADBF9: dw  $0000,  $0100,  $1563,  $1203,  $1EE9,  $2FB0,  $1D70,  $2E37
#_0ADC09: dw  $473A,  $6144,  $15E3,  $22EB,  $1D70,  $2E37,  $4F3F,  $7FBD
#_0ADC19: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $25F5
#_0ADC29: dw  $316A,  $5ED2,  $7FFF,  $15E3,  $473A,  $2918,  $771D,  $0000

;===================================================================================================

; Dark World
Palettes_DWMAP:
; #RRGGBB :  000000, 303030, 405010, 506020, 787048, F8E8A8, 885830, C08050
; #RRGGBB :  F800F8, C0B0A0, C8B8B0, D0C0B8, D8C8C0, E0D0D0, 000000, 000000
; #RRGGBB :  000000, 303030, 280000, E07888, D8C8C0, 707038, A0A068, C0C088
; #RRGGBB :  787048, 005038, 503868, 7858C0, D8C0E8, B0B048, C0C050, D0D058
; #RRGGBB :  000000, 303030, 885848, D0F0C0, 908850, A0A070, 005038, 006048
; #RRGGBB :  F800F8, F800F8, 003018, 60B038, A84860, 707038, C0C088, A0A068
; #RRGGBB :  000000, 303030, 383828, 605840, 807048, A89870, 485840, 708058
; #RRGGBB :  B07040, C08050, 885830, 908850, 005038, 006048, D058B0, F0B8E0
; #RRGGBB :  000000, 303030, 908850, A0A070, 885840, C08860, B07850, C09880
; #RRGGBB :  D8B098, 005038, 687068, 586828, 706030, A09060, F8C0E0, A0B038
; #RRGGBB :  000000, 303030, 505800, 707040, 908850, A0A070, B07850, C09880
; #RRGGBB :  D8B098, 005038, 885830, 908850, 605890, 8080B0, F8D070, F800F8
; #RRGGBB :  000000, 303030, 405010, 506020, 708840, 90B860, 885030, C08050
; #RRGGBB :  D8C080, 005038, 885830, 908850, A07040, C08050, F8C090, E8E0F0
; #RRGGBB :  000000, F800F8, F800F8, F800F8, F800F8, 888858, 203800, 485840
; #RRGGBB :  708058, 88B880, F800F8, F800F8, F800F8, E88090, F88898, F890B0
#_0ADC39: dw  $0000,  $18C6,  $0948,  $118A,  $25CF,  $57BF,  $1971,  $2A18
#_0ADC49: dw  $7C1F,  $52D8,  $5AF9,  $5F1A,  $633B,  $6B5C,  $0000,  $0000
#_0ADC59: dw  $0000,  $18C6,  $0005,  $45FC,  $633B,  $1DCE,  $3694,  $4718
#_0ADC69: dw  $25CF,  $1D40,  $34EA,  $616F,  $771B,  $26D6,  $2B18,  $2F5A
#_0ADC79: dw  $0000,  $18C6,  $2571,  $63DA,  $2A32,  $3A94,  $1D40,  $2580
#_0ADC89: dw  $7C1F,  $7C1F,  $0CC0,  $1ECC,  $3135,  $1DCE,  $4718,  $3694
#_0ADC99: dw  $0000,  $18C6,  $14E7,  $216C,  $25D0,  $3A75,  $2169,  $2E0E
#_0ADCA9: dw  $21D6,  $2A18,  $1971,  $2A32,  $1D40,  $2580,  $597A,  $72FE
#_0ADCB9: dw  $0000,  $18C6,  $2A32,  $3A94,  $2171,  $3238,  $29F6,  $4278
#_0ADCC9: dw  $4EDB,  $1D40,  $35CD,  $15AB,  $198E,  $3254,  $731F,  $1ED4
#_0ADCD9: dw  $0000,  $18C6,  $016A,  $21CE,  $2A32,  $3A94,  $29F6,  $4278
#_0ADCE9: dw  $4EDB,  $1D40,  $1971,  $2A32,  $496C,  $5A10,  $3B5F,  $7C1F
#_0ADCF9: dw  $0000,  $18C6,  $0948,  $118A,  $222E,  $32F2,  $1951,  $2A18
#_0ADD09: dw  $431B,  $1D40,  $1971,  $2A32,  $21D4,  $2A18,  $4B1F,  $7B9D
#_0ADD19: dw  $0000,  $7C1F,  $7C1F,  $7C1F,  $7C1F,  $2E31,  $00E4,  $2169
#_0ADD29: dw  $2E0E,  $42F1,  $7C1F,  $7C1F,  $7C1F,  $4A1D,  $4E3F,  $5A5F

;===================================================================================================

WorldMapHDMA_ZoomedOut_Part1:
#_0ADD39: dw $0177 ; scanline   0
#_0ADD3B: dw $0176 ; scanline   1
#_0ADD3D: dw $0175 ; scanline   2
#_0ADD3F: dw $0175 ; scanline   3
#_0ADD41: dw $0174 ; scanline   4
#_0ADD43: dw $0173 ; scanline   5
#_0ADD45: dw $0173 ; scanline   6
#_0ADD47: dw $0172 ; scanline   7
#_0ADD49: dw $0171 ; scanline   8
#_0ADD4B: dw $0171 ; scanline   9
#_0ADD4D: dw $0170 ; scanline  10
#_0ADD4F: dw $016F ; scanline  11
#_0ADD51: dw $016F ; scanline  12
#_0ADD53: dw $016E ; scanline  13
#_0ADD55: dw $016D ; scanline  14
#_0ADD57: dw $016D ; scanline  15
#_0ADD59: dw $016C ; scanline  16
#_0ADD5B: dw $016B ; scanline  17
#_0ADD5D: dw $016B ; scanline  18
#_0ADD5F: dw $0169 ; scanline  19
#_0ADD61: dw $0169 ; scanline  20
#_0ADD63: dw $0168 ; scanline  21
#_0ADD65: dw $0167 ; scanline  22
#_0ADD67: dw $0167 ; scanline  23
#_0ADD69: dw $0166 ; scanline  24
#_0ADD6B: dw $0165 ; scanline  25
#_0ADD6D: dw $0165 ; scanline  26
#_0ADD6F: dw $0164 ; scanline  27
#_0ADD71: dw $0163 ; scanline  28
#_0ADD73: dw $0163 ; scanline  29
#_0ADD75: dw $0162 ; scanline  30
#_0ADD77: dw $0162 ; scanline  31
#_0ADD79: dw $0161 ; scanline  32
#_0ADD7B: dw $0160 ; scanline  33
#_0ADD7D: dw $0160 ; scanline  34
#_0ADD7F: dw $015F ; scanline  35
#_0ADD81: dw $015F ; scanline  36
#_0ADD83: dw $015E ; scanline  37
#_0ADD85: dw $015D ; scanline  38
#_0ADD87: dw $015D ; scanline  39
#_0ADD89: dw $015C ; scanline  40
#_0ADD8B: dw $015C ; scanline  41
#_0ADD8D: dw $015B ; scanline  42
#_0ADD8F: dw $015A ; scanline  43
#_0ADD91: dw $015A ; scanline  44
#_0ADD93: dw $0159 ; scanline  45
#_0ADD95: dw $0159 ; scanline  46
#_0ADD97: dw $0158 ; scanline  47
#_0ADD99: dw $0157 ; scanline  48
#_0ADD9B: dw $0157 ; scanline  49
#_0ADD9D: dw $0156 ; scanline  50
#_0ADD9F: dw $0156 ; scanline  51
#_0ADDA1: dw $0155 ; scanline  52
#_0ADDA3: dw $0155 ; scanline  53
#_0ADDA5: dw $0154 ; scanline  54
#_0ADDA7: dw $0153 ; scanline  55
#_0ADDA9: dw $0153 ; scanline  56
#_0ADDAB: dw $0152 ; scanline  57
#_0ADDAD: dw $0152 ; scanline  58
#_0ADDAF: dw $0151 ; scanline  59
#_0ADDB1: dw $0151 ; scanline  60
#_0ADDB3: dw $0150 ; scanline  61
#_0ADDB5: dw $014F ; scanline  62
#_0ADDB7: dw $014F ; scanline  63
#_0ADDB9: dw $014E ; scanline  64
#_0ADDBB: dw $014E ; scanline  65
#_0ADDBD: dw $014D ; scanline  66
#_0ADDBF: dw $014D ; scanline  67
#_0ADDC1: dw $014C ; scanline  68
#_0ADDC3: dw $014C ; scanline  69
#_0ADDC5: dw $014B ; scanline  70
#_0ADDC7: dw $014B ; scanline  71
#_0ADDC9: dw $014A ; scanline  72
#_0ADDCB: dw $014A ; scanline  73
#_0ADDCD: dw $0148 ; scanline  74
#_0ADDCF: dw $0147 ; scanline  75
#_0ADDD1: dw $0147 ; scanline  76
#_0ADDD3: dw $0146 ; scanline  77
#_0ADDD5: dw $0146 ; scanline  78
#_0ADDD7: dw $0145 ; scanline  79
#_0ADDD9: dw $0145 ; scanline  80
#_0ADDDB: dw $0144 ; scanline  81
#_0ADDDD: dw $0144 ; scanline  82
#_0ADDDF: dw $0143 ; scanline  83
#_0ADDE1: dw $0143 ; scanline  84
#_0ADDE3: dw $0142 ; scanline  85
#_0ADDE5: dw $0142 ; scanline  86
#_0ADDE7: dw $0141 ; scanline  87
#_0ADDE9: dw $0141 ; scanline  88
#_0ADDEB: dw $0140 ; scanline  89
#_0ADDED: dw $0140 ; scanline  90
#_0ADDEF: dw $013F ; scanline  91
#_0ADDF1: dw $013F ; scanline  92
#_0ADDF3: dw $013E ; scanline  93
#_0ADDF5: dw $013E ; scanline  94
#_0ADDF7: dw $013D ; scanline  95
#_0ADDF9: dw $013D ; scanline  96
#_0ADDFB: dw $013C ; scanline  97
#_0ADDFD: dw $013C ; scanline  98
#_0ADDFF: dw $013B ; scanline  99
#_0ADE01: dw $013B ; scanline 100
#_0ADE03: dw $013A ; scanline 101
#_0ADE05: dw $013A ; scanline 102
#_0ADE07: dw $0139 ; scanline 103
#_0ADE09: dw $0139 ; scanline 104
#_0ADE0B: dw $0138 ; scanline 105
#_0ADE0D: dw $0138 ; scanline 106
#_0ADE0F: dw $0137 ; scanline 107
#_0ADE11: dw $0137 ; scanline 108
#_0ADE13: dw $0136 ; scanline 109
#_0ADE15: dw $0136 ; scanline 110
#_0ADE17: dw $0135 ; scanline 111

;---------------------------------------------------------------------------------------------------

WorldMapHDMA_ZoomedOut_Part2:
#_0ADE19: dw $0135 ; scanline 112
#_0ADE1B: dw $0135 ; scanline 113
#_0ADE1D: dw $0134 ; scanline 114
#_0ADE1F: dw $0134 ; scanline 115
#_0ADE21: dw $0133 ; scanline 116
#_0ADE23: dw $0133 ; scanline 117
#_0ADE25: dw $0132 ; scanline 118
#_0ADE27: dw $0132 ; scanline 119
#_0ADE29: dw $0131 ; scanline 120
#_0ADE2B: dw $0131 ; scanline 121
#_0ADE2D: dw $0130 ; scanline 122
#_0ADE2F: dw $0130 ; scanline 123
#_0ADE31: dw $012F ; scanline 124
#_0ADE33: dw $012F ; scanline 125
#_0ADE35: dw $012F ; scanline 126
#_0ADE37: dw $012E ; scanline 127
#_0ADE39: dw $012E ; scanline 128
#_0ADE3B: dw $012D ; scanline 129
#_0ADE3D: dw $012D ; scanline 130
#_0ADE3F: dw $012C ; scanline 131
#_0ADE41: dw $012C ; scanline 132
#_0ADE43: dw $012B ; scanline 133
#_0ADE45: dw $012B ; scanline 134
#_0ADE47: dw $012B ; scanline 135
#_0ADE49: dw $012A ; scanline 136
#_0ADE4B: dw $012A ; scanline 137
#_0ADE4D: dw $0129 ; scanline 138
#_0ADE4F: dw $0129 ; scanline 139
#_0ADE51: dw $0127 ; scanline 140
#_0ADE53: dw $0127 ; scanline 141
#_0ADE55: dw $0126 ; scanline 142
#_0ADE57: dw $0126 ; scanline 143
#_0ADE59: dw $0126 ; scanline 144
#_0ADE5B: dw $0125 ; scanline 145
#_0ADE5D: dw $0125 ; scanline 146
#_0ADE5F: dw $0124 ; scanline 147
#_0ADE61: dw $0124 ; scanline 148
#_0ADE63: dw $0124 ; scanline 149
#_0ADE65: dw $0123 ; scanline 150
#_0ADE67: dw $0123 ; scanline 151
#_0ADE69: dw $0122 ; scanline 152
#_0ADE6B: dw $0122 ; scanline 153
#_0ADE6D: dw $0121 ; scanline 154
#_0ADE6F: dw $0121 ; scanline 155
#_0ADE71: dw $0121 ; scanline 156
#_0ADE73: dw $0120 ; scanline 157
#_0ADE75: dw $0120 ; scanline 158
#_0ADE77: dw $011F ; scanline 159
#_0ADE79: dw $011F ; scanline 160
#_0ADE7B: dw $011F ; scanline 161
#_0ADE7D: dw $011E ; scanline 162
#_0ADE7F: dw $011E ; scanline 163
#_0ADE81: dw $011D ; scanline 164
#_0ADE83: dw $011D ; scanline 165
#_0ADE85: dw $011D ; scanline 166
#_0ADE87: dw $011C ; scanline 167
#_0ADE89: dw $011C ; scanline 168
#_0ADE8B: dw $011B ; scanline 169
#_0ADE8D: dw $011B ; scanline 170
#_0ADE8F: dw $011B ; scanline 171
#_0ADE91: dw $011A ; scanline 172
#_0ADE93: dw $011A ; scanline 173
#_0ADE95: dw $0119 ; scanline 174
#_0ADE97: dw $0119 ; scanline 175
#_0ADE99: dw $0119 ; scanline 176
#_0ADE9B: dw $0118 ; scanline 177
#_0ADE9D: dw $0118 ; scanline 178
#_0ADE9F: dw $0117 ; scanline 179
#_0ADEA1: dw $0117 ; scanline 180
#_0ADEA3: dw $0117 ; scanline 181
#_0ADEA5: dw $0116 ; scanline 182
#_0ADEA7: dw $0116 ; scanline 183
#_0ADEA9: dw $0116 ; scanline 184
#_0ADEAB: dw $0115 ; scanline 185
#_0ADEAD: dw $0115 ; scanline 186
#_0ADEAF: dw $0114 ; scanline 187
#_0ADEB1: dw $0114 ; scanline 188
#_0ADEB3: dw $0114 ; scanline 189
#_0ADEB5: dw $0113 ; scanline 190
#_0ADEB7: dw $0113 ; scanline 191
#_0ADEB9: dw $0113 ; scanline 192
#_0ADEBB: dw $0112 ; scanline 193
#_0ADEBD: dw $0112 ; scanline 194
#_0ADEBF: dw $0111 ; scanline 195
#_0ADEC1: dw $0111 ; scanline 196
#_0ADEC3: dw $0111 ; scanline 197
#_0ADEC5: dw $0110 ; scanline 198
#_0ADEC7: dw $0110 ; scanline 199
#_0ADEC9: dw $0110 ; scanline 200
#_0ADECB: dw $010F ; scanline 201
#_0ADECD: dw $010F ; scanline 202
#_0ADECF: dw $010F ; scanline 203
#_0ADED1: dw $010E ; scanline 204
#_0ADED3: dw $010E ; scanline 205
#_0ADED5: dw $010D ; scanline 206
#_0ADED7: dw $010D ; scanline 207
#_0ADED9: dw $010D ; scanline 208
#_0ADEDB: dw $010C ; scanline 209
#_0ADEDD: dw $010C ; scanline 210
#_0ADEDF: dw $010C ; scanline 211
#_0ADEE1: dw $010B ; scanline 212
#_0ADEE3: dw $010B ; scanline 213
#_0ADEE5: dw $010B ; scanline 214
#_0ADEE7: dw $010A ; scanline 215
#_0ADEE9: dw $010A ; scanline 216
#_0ADEEB: dw $010A ; scanline 217
#_0ADEED: dw $0109 ; scanline 218
#_0ADEEF: dw $0109 ; scanline 219
#_0ADEF1: dw $0109 ; scanline 220
#_0ADEF3: dw $0108 ; scanline 221
#_0ADEF5: dw $0108 ; scanline 222
#_0ADEF7: dw $0108 ; scanline 223

;===================================================================================================

WorldMapHDMA_ZoomedIn_Part1:
#_0ADEF9: dw $0088 ; scanline   0
#_0ADEFB: dw $0088 ; scanline   1
#_0ADEFD: dw $0087 ; scanline   2
#_0ADEFF: dw $0087 ; scanline   3
#_0ADF01: dw $0087 ; scanline   4
#_0ADF03: dw $0087 ; scanline   5
#_0ADF05: dw $0087 ; scanline   6
#_0ADF07: dw $0086 ; scanline   7
#_0ADF09: dw $0086 ; scanline   8
#_0ADF0B: dw $0086 ; scanline   9
#_0ADF0D: dw $0085 ; scanline  10
#_0ADF0F: dw $0085 ; scanline  11
#_0ADF11: dw $0085 ; scanline  12
#_0ADF13: dw $0085 ; scanline  13
#_0ADF15: dw $0084 ; scanline  14
#_0ADF17: dw $0084 ; scanline  15
#_0ADF19: dw $0084 ; scanline  16
#_0ADF1B: dw $0084 ; scanline  17
#_0ADF1D: dw $0084 ; scanline  18
#_0ADF1F: dw $0083 ; scanline  19
#_0ADF21: dw $0083 ; scanline  20
#_0ADF23: dw $0083 ; scanline  21
#_0ADF25: dw $0082 ; scanline  22
#_0ADF27: dw $0082 ; scanline  23
#_0ADF29: dw $0082 ; scanline  24
#_0ADF2B: dw $0082 ; scanline  25
#_0ADF2D: dw $0082 ; scanline  26
#_0ADF2F: dw $0081 ; scanline  27
#_0ADF31: dw $0081 ; scanline  28
#_0ADF33: dw $0081 ; scanline  29
#_0ADF35: dw $0081 ; scanline  30
#_0ADF37: dw $0081 ; scanline  31
#_0ADF39: dw $0080 ; scanline  32
#_0ADF3B: dw $0080 ; scanline  33
#_0ADF3D: dw $0080 ; scanline  34
#_0ADF3F: dw $007F ; scanline  35
#_0ADF41: dw $007F ; scanline  36
#_0ADF43: dw $007F ; scanline  37
#_0ADF45: dw $007F ; scanline  38
#_0ADF47: dw $007F ; scanline  39
#_0ADF49: dw $007E ; scanline  40
#_0ADF4B: dw $007E ; scanline  41
#_0ADF4D: dw $007E ; scanline  42
#_0ADF4F: dw $007E ; scanline  43
#_0ADF51: dw $007E ; scanline  44
#_0ADF53: dw $007D ; scanline  45
#_0ADF55: dw $007D ; scanline  46
#_0ADF57: dw $007D ; scanline  47
#_0ADF59: dw $007C ; scanline  48
#_0ADF5B: dw $007C ; scanline  49
#_0ADF5D: dw $007C ; scanline  50
#_0ADF5F: dw $007C ; scanline  51
#_0ADF61: dw $007C ; scanline  52
#_0ADF63: dw $007C ; scanline  53
#_0ADF65: dw $007B ; scanline  54
#_0ADF67: dw $007B ; scanline  55
#_0ADF69: dw $007B ; scanline  56
#_0ADF6B: dw $007B ; scanline  57
#_0ADF6D: dw $007B ; scanline  58
#_0ADF6F: dw $007A ; scanline  59
#_0ADF71: dw $007A ; scanline  60
#_0ADF73: dw $007A ; scanline  61
#_0ADF75: dw $0079 ; scanline  62
#_0ADF77: dw $0079 ; scanline  63
#_0ADF79: dw $0079 ; scanline  64
#_0ADF7B: dw $0079 ; scanline  65
#_0ADF7D: dw $0079 ; scanline  66
#_0ADF7F: dw $0079 ; scanline  67
#_0ADF81: dw $0078 ; scanline  68
#_0ADF83: dw $0078 ; scanline  69
#_0ADF85: dw $0078 ; scanline  70
#_0ADF87: dw $0078 ; scanline  71
#_0ADF89: dw $0078 ; scanline  72
#_0ADF8B: dw $0078 ; scanline  73
#_0ADF8D: dw $0077 ; scanline  74
#_0ADF8F: dw $0077 ; scanline  75
#_0ADF91: dw $0077 ; scanline  76
#_0ADF93: dw $0076 ; scanline  77
#_0ADF95: dw $0076 ; scanline  78
#_0ADF97: dw $0076 ; scanline  79
#_0ADF99: dw $0076 ; scanline  80
#_0ADF9B: dw $0076 ; scanline  81
#_0ADF9D: dw $0076 ; scanline  82
#_0ADF9F: dw $0075 ; scanline  83
#_0ADFA1: dw $0075 ; scanline  84
#_0ADFA3: dw $0075 ; scanline  85
#_0ADFA5: dw $0075 ; scanline  86
#_0ADFA7: dw $0075 ; scanline  87
#_0ADFA9: dw $0075 ; scanline  88
#_0ADFAB: dw $0074 ; scanline  89
#_0ADFAD: dw $0074 ; scanline  90
#_0ADFAF: dw $0074 ; scanline  91
#_0ADFB1: dw $0074 ; scanline  92
#_0ADFB3: dw $0073 ; scanline  93
#_0ADFB5: dw $0073 ; scanline  94
#_0ADFB7: dw $0073 ; scanline  95
#_0ADFB9: dw $0073 ; scanline  96
#_0ADFBB: dw $0073 ; scanline  97
#_0ADFBD: dw $0073 ; scanline  98
#_0ADFBF: dw $0072 ; scanline  99
#_0ADFC1: dw $0072 ; scanline 100
#_0ADFC3: dw $0072 ; scanline 101
#_0ADFC5: dw $0072 ; scanline 102
#_0ADFC7: dw $0072 ; scanline 103
#_0ADFC9: dw $0072 ; scanline 104
#_0ADFCB: dw $0071 ; scanline 105
#_0ADFCD: dw $0071 ; scanline 106
#_0ADFCF: dw $0071 ; scanline 107
#_0ADFD1: dw $0071 ; scanline 108
#_0ADFD3: dw $0070 ; scanline 109
#_0ADFD5: dw $0070 ; scanline 110
#_0ADFD7: dw $0070 ; scanline 111

;---------------------------------------------------------------------------------------------------

WorldMapHDMA_ZoomedIn_Part2:
#_0ADFD9: dw $0070 ; scanline 112
#_0ADFDB: dw $0070 ; scanline 113
#_0ADFDD: dw $0070 ; scanline 114
#_0ADFDF: dw $0070 ; scanline 115
#_0ADFE1: dw $006F ; scanline 116
#_0ADFE3: dw $006F ; scanline 117
#_0ADFE5: dw $006F ; scanline 118
#_0ADFE7: dw $006F ; scanline 119
#_0ADFE9: dw $006F ; scanline 120
#_0ADFEB: dw $006F ; scanline 121
#_0ADFED: dw $006E ; scanline 122
#_0ADFEF: dw $006E ; scanline 123
#_0ADFF1: dw $006E ; scanline 124
#_0ADFF3: dw $006E ; scanline 125
#_0ADFF5: dw $006E ; scanline 126
#_0ADFF7: dw $006D ; scanline 127
#_0ADFF9: dw $006D ; scanline 128
#_0ADFFB: dw $006D ; scanline 129
#_0ADFFD: dw $006D ; scanline 130
#_0ADFFF: dw $006D ; scanline 131
#_0AE001: dw $006D ; scanline 132
#_0AE003: dw $006C ; scanline 133
#_0AE005: dw $006C ; scanline 134
#_0AE007: dw $006C ; scanline 135
#_0AE009: dw $006C ; scanline 136
#_0AE00B: dw $006C ; scanline 137
#_0AE00D: dw $006C ; scanline 138
#_0AE00F: dw $006C ; scanline 139
#_0AE011: dw $006B ; scanline 140
#_0AE013: dw $006B ; scanline 141
#_0AE015: dw $006B ; scanline 142
#_0AE017: dw $006B ; scanline 143
#_0AE019: dw $006B ; scanline 144
#_0AE01B: dw $006A ; scanline 145
#_0AE01D: dw $006A ; scanline 146
#_0AE01F: dw $006A ; scanline 147
#_0AE021: dw $006A ; scanline 148
#_0AE023: dw $006A ; scanline 149
#_0AE025: dw $006A ; scanline 150
#_0AE027: dw $006A ; scanline 151
#_0AE029: dw $0069 ; scanline 152
#_0AE02B: dw $0069 ; scanline 153
#_0AE02D: dw $0069 ; scanline 154
#_0AE02F: dw $0069 ; scanline 155
#_0AE031: dw $0069 ; scanline 156
#_0AE033: dw $0069 ; scanline 157
#_0AE035: dw $0069 ; scanline 158
#_0AE037: dw $0068 ; scanline 159
#_0AE039: dw $0068 ; scanline 160
#_0AE03B: dw $0068 ; scanline 161
#_0AE03D: dw $0068 ; scanline 162
#_0AE03F: dw $0068 ; scanline 163
#_0AE041: dw $0067 ; scanline 164
#_0AE043: dw $0067 ; scanline 165
#_0AE045: dw $0067 ; scanline 166
#_0AE047: dw $0067 ; scanline 167
#_0AE049: dw $0067 ; scanline 168
#_0AE04B: dw $0067 ; scanline 169
#_0AE04D: dw $0067 ; scanline 170
#_0AE04F: dw $0067 ; scanline 171
#_0AE051: dw $0066 ; scanline 172
#_0AE053: dw $0066 ; scanline 173
#_0AE055: dw $0066 ; scanline 174
#_0AE057: dw $0066 ; scanline 175
#_0AE059: dw $0066 ; scanline 176
#_0AE05B: dw $0066 ; scanline 177
#_0AE05D: dw $0066 ; scanline 178
#_0AE05F: dw $0065 ; scanline 179
#_0AE061: dw $0065 ; scanline 180
#_0AE063: dw $0065 ; scanline 181
#_0AE065: dw $0065 ; scanline 182
#_0AE067: dw $0065 ; scanline 183
#_0AE069: dw $0065 ; scanline 184
#_0AE06B: dw $0064 ; scanline 185
#_0AE06D: dw $0064 ; scanline 186
#_0AE06F: dw $0064 ; scanline 187
#_0AE071: dw $0064 ; scanline 188
#_0AE073: dw $0064 ; scanline 189
#_0AE075: dw $0064 ; scanline 190
#_0AE077: dw $0064 ; scanline 191
#_0AE079: dw $0064 ; scanline 192
#_0AE07B: dw $0063 ; scanline 193
#_0AE07D: dw $0063 ; scanline 194
#_0AE07F: dw $0063 ; scanline 195
#_0AE081: dw $0063 ; scanline 196
#_0AE083: dw $0063 ; scanline 197
#_0AE085: dw $0063 ; scanline 198
#_0AE087: dw $0063 ; scanline 199
#_0AE089: dw $0063 ; scanline 200
#_0AE08B: dw $0062 ; scanline 201
#_0AE08D: dw $0062 ; scanline 202
#_0AE08F: dw $0062 ; scanline 203
#_0AE091: dw $0062 ; scanline 204
#_0AE093: dw $0062 ; scanline 205
#_0AE095: dw $0061 ; scanline 206
#_0AE097: dw $0061 ; scanline 207
#_0AE099: dw $0061 ; scanline 208
#_0AE09B: dw $0061 ; scanline 209
#_0AE09D: dw $0061 ; scanline 210
#_0AE09F: dw $0061 ; scanline 211
#_0AE0A1: dw $0061 ; scanline 212
#_0AE0A3: dw $0061 ; scanline 213
#_0AE0A5: dw $0061 ; scanline 214
#_0AE0A7: dw $0060 ; scanline 215
#_0AE0A9: dw $0060 ; scanline 216
#_0AE0AB: dw $0060 ; scanline 217
#_0AE0AD: dw $0060 ; scanline 218
#_0AE0AF: dw $0060 ; scanline 219
#_0AE0B1: dw $0060 ; scanline 220
#_0AE0B3: dw $0060 ; scanline 221
#_0AE0B5: dw $0060 ; scanline 222
#_0AE0B7: dw $0060 ; scanline 223

;===================================================================================================
; FREE ROM: 0x06
;===================================================================================================
#_0AE0B9: db $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

Module0E_03_UnderworldMap:
#_0AE0C0: LDA.w $0200
#_0AE0C3: JSL JumpTableLong
#_0AE0C7: dl Module0E_03_00_DarkenAndPrep     ; 0x00
#_0AE0CA: dl Module0E_03_01_DrawMap           ; 0x01
#_0AE0CD: dl Module0E_03_02_BrightenMap       ; 0x02
#_0AE0D0: dl DungeonMap_HandleInputAndSprites ; 0x03
#_0AE0D3: dl Module0E_03_04_UnusedCrazyScroll ; 0x04
#_0AE0D6: dl UnderworldMap_RecoverRegisters   ; 0x05
#_0AE0D9: dl UnderworldMap_RecoverGFX         ; 0x06
#_0AE0DC: dl ToggleStarTilesAndAdvance        ; 0x07
#_0AE0DF: dl UnderworldMap_RecoverLightCone   ; 0x08

;===================================================================================================

pool Module0E_03_01_DrawMap

.vectors
#_0AE0E2: dw Module0E_03_01_00_PrepMapGraphics
#_0AE0E4: dw Module0E_03_01_01_DrawLEVEL
#_0AE0E6: dw Module0E_03_01_02_DrawFloorsBackdrop
#_0AE0E8: dw Module0E_03_01_03_DrawRooms
#_0AE0EA: dw DungeonMap_DrawRoomMarkers

pool off

;---------------------------------------------------------------------------------------------------

Module0E_03_01_DrawMap:
#_0AE0EC: LDA.w $020D
#_0AE0EF: ASL A
#_0AE0F0: TAX

#_0AE0F1: JMP.w (.vectors,X)

;===================================================================================================

Module0E_03_01_00_PrepMapGraphics:
#_0AE0F4: LDA.b $9B
#_0AE0F6: PHA

#_0AE0F7: STZ.w HDMAENABLE
#_0AE0FA: STZ.b $9B

#_0AE0FC: LDA.w $0AA1 ; cache tilesets
#_0AE0FF: STA.l $7EC20E

#_0AE103: LDA.w $0AA3
#_0AE106: STA.l $7EC20F

#_0AE10A: LDA.w $0AA2
#_0AE10D: STA.l $7EC210

;---------------------------------------------------------------------------------------------------

#_0AE111: LDA.b $1C ; cache TM and TS
#_0AE113: STA.l $7EC211

#_0AE117: LDA.b $1D
#_0AE119: STA.l $7EC212

;---------------------------------------------------------------------------------------------------

#_0AE11D: LDA.b #$20 ; why are we loading these tilesets?
#_0AE11F: STA.w $0AA1

#_0AE122: LDA.w $040C ; this here loads map GFX, why dungeon based?
#_0AE125: LSR A
#_0AE126: ORA.b #$80
#_0AE128: STA.w $0AA3

#_0AE12B: LDA.b #$40 ; just loads more overworld stuff
#_0AE12D: STA.w $0AA2

#_0AE130: LDA.b #$16 ; BG2, BG3, OBJ on main screen
#_0AE132: STA.b $1C

#_0AE134: LDA.b #$01 ; BG1 on subscreen
#_0AE136: STA.b $1D

#_0AE138: JSL EraseTileMaps_dungeonmap
#_0AE13C: JSL InitializeTilesets

#_0AE140: LDA.b #$02
#_0AE142: STA.w $0AA9
#_0AE145: JSL Palettes_Load_DungeonMapBG
#_0AE149: JSL Palettes_Load_DungeonMapSprite

#_0AE14D: LDA.b #$01
#_0AE14F: STA.w $0AB2
#_0AE152: JSL Palettes_Load_HUD
#_0AE156: JSL RefreshLinkEquipmentPalettes_sword_and_mail

#_0AE15A: INC.b $15

#_0AE15C: INC.w $020D ; next subsubsubsubsubsubsubsubsubmodule

#_0AE15F: PLA ; recover HDMA
#_0AE160: STA.b $9B

#_0AE162: LDA.b #$09 ; trigger the BG3 tilemap changes
#_0AE164: STA.b $14
#_0AE166: STA.w $0710

#_0AE169: RTL

;===================================================================================================
; These stripes do 12 bytes and leave the last 2 bytes to the routine
;===================================================================================================
pool Module0E_03_01_01_DrawLEVEL

.LEVEL_top
#_0AE16A: dw VRAMaddrBE($C108), $0B00 ; 12 bytes | Horizontal
#_0AE16E: dw $2132, $2133, $2138, $213A, $207F

.LEVEL_bottom
#_0AE178: dw VRAMaddrBE($C148), $0B00 ; 12 bytes | Horizontal
#_0AE17C: dw $2142, $2143, $2149, $214A, $207F

.numerals_top
#_0AE186: dw $2108, $2109, $2109, $210A
#_0AE18E: dw $210B, $210C, $210D, $211D

.numerals_bottom
#_0AE196: dw $2118, $2119, $A109, $211A
#_0AE19E: dw $211B, $211C, $2118, $A11D

.dungeon_level
#_0AE1A6: db $FF ; Sewers
#_0AE1A7: db $FF ; Hyrule Castle
#_0AE1A8: db $FF ; Eastern Palace
#_0AE1A9: db $FF ; Desert Palace
#_0AE1AA: db $FF ; Agahnim's Tower
#_0AE1AB: db $02 ; Swamp Palace
#_0AE1AC: db $00 ; Palace of Darkness
#_0AE1AD: db $0A ; Misery Mire
#_0AE1AE: db $04 ; Skull Woods
#_0AE1AF: db $08 ; Ice Palace
#_0AE1B0: db $FF ; Tower of Hera
#_0AE1B1: db $06 ; Thieves' Town
#_0AE1B2: db $0C ; Turtle Rock
#_0AE1B3: db $0E ; Ganon's Tower

pool off

;---------------------------------------------------------------------------------------------------

Module0E_03_01_01_DrawLEVEL:
#_0AE1B4: PHB
#_0AE1B5: PHK
#_0AE1B6: PLB

#_0AE1B7: LDA.w $040C
#_0AE1BA: LSR A
#_0AE1BB: TAX

#_0AE1BC: LDY.w .dungeon_level,X
#_0AE1BF: BMI .not_darkworld_dungeon

#_0AE1C1: LDA.b #$FF
#_0AE1C3: STA.w $1022

#_0AE1C6: LDX.b #$0E

#_0AE1C8: REP #$20

#_0AE1CA: LDA.w .numerals_top,Y
#_0AE1CD: STA.w $1002,X

#_0AE1D0: LDA.w .numerals_bottom,Y
#_0AE1D3: STA.w $1012,X

;---------------------------------------------------------------------------------------------------

#_0AE1D6: SEP #$20

#_0AE1D8: DEX

.next_letter
#_0AE1D9: LDA.w .LEVEL_top,X
#_0AE1DC: STA.w $1002,X

#_0AE1DF: LDA.w .LEVEL_bottom,X
#_0AE1E2: STA.w $1012,X

#_0AE1E5: DEX
#_0AE1E6: BPL .next_letter

#_0AE1E8: LDA.b #$01
#_0AE1EA: STA.b $14

;---------------------------------------------------------------------------------------------------

.not_darkworld_dungeon
#_0AE1EC: INC.w $020D

#_0AE1EF: PLB

#_0AE1F0: RTL

;===================================================================================================
; VRAM address for the top of the ocean/grounds's surface
; based on the highest floor or lowest floor
; above ground levels take priority in this decision
;===================================================================================================
DungeonMap_BackdropFloorPosition:
#_0AE1F1: dw VRAMaddr($2446) ; 4B-4F
#_0AE1F3: dw VRAMaddr($24C6) ; 5F
#_0AE1F5: dw VRAMaddr($2546) ; 6F
#_0AE1F7: dw VRAMaddr($25C6) ; 7F
#_0AE1F9: dw VRAMaddr($2646) ; 8F

#_0AE1FB: dw VRAMaddr($23C6) ; 5B
#_0AE1FD: dw VRAMaddr($2346) ; 6B
#_0AE1FF: dw VRAMaddr($22C6) ; 7B
#_0AE201: dw VRAMaddr($2246) ; 8B

;===================================================================================================
; Sets up stripes at $1000 for the backdrop behind the floor window that's
; displayed on the left side of the dungeon map screen
;===================================================================================================
Module0E_03_01_02_DrawFloorsBackdrop:
#_0AE203: PHB
#_0AE204: PHK
#_0AE205: PLB

#_0AE206: REP #$30

#_0AE208: STZ.w $1000

#_0AE20B: LDX.w $040C
#_0AE20E: PHX

#_0AE20F: LDA.w DungeonMapFloorCountData,X

#_0AE212: AND.w #$0300 ; why not just check AND #$0100?
#_0AE215: BEQ .no_mountain

#_0AE217: AND.w #$0100
#_0AE21A: BEQ .no_mountain

#_0AE21C: LDX.w #$002A
#_0AE21F: PHX

; First copy the basic stripes
.next_copy
#_0AE220: LDA.w DungeonMap_MountainStripes,X
#_0AE223: STA.w $1000,X

#_0AE226: DEX
#_0AE227: DEX
#_0AE228: BNE .next_copy

;---------------------------------------------------------------------------------------------------

; Now create a series of stripes for the fill
#_0AE22A: PLX ; get back that 2A

#_0AE22B: LDA.w #VRAMaddr($2246)
#_0AE22E: STA.b $00

#_0AE230: LDY.w #$0010 ; number of rows

.next_mountain_fill_stripe
#_0AE233: LDA.b $00

#_0AE235: XBA ; stupid big endian
#_0AE236: STA.w $1002,X
#_0AE239: XBA

#_0AE23A: CLC
#_0AE23B: ADC.w #$0020 ; next row
#_0AE23E: STA.b $00

#_0AE240: LDA.w #$0E40
#_0AE243: STA.w $1004,X

#_0AE246: LDA.w #$1B2E ; the mountain fill tile
#_0AE249: STA.w $1006,X

#_0AE24C: INX ; +6
#_0AE24D: INX
#_0AE24E: INX
#_0AE24F: INX
#_0AE250: INX
#_0AE251: INX

#_0AE252: DEY
#_0AE253: BNE .next_mountain_fill_stripe

#_0AE255: STX.w $1000 ; stripe indexer

.no_mountain
#_0AE258: STZ.b $00
#_0AE25A: STZ.b $02

; Determine how high the water/ocean
#_0AE25C: LDX.w $040C ; get floor count for dungeon

#_0AE25F: LDA.w DungeonMapFloorCountData,X
#_0AE262: AND.w #$00FF
#_0AE265: CMP.w #$0050
#_0AE268: BCC .fewer_than_5_above

#_0AE26A: LSR A ; /16
#_0AE26B: LSR A
#_0AE26C: LSR A
#_0AE26D: LSR A

#_0AE26E: SEC
#_0AE26F: SBC.w #$0004 ; -4 to index the height

#_0AE272: ASL A
#_0AE273: STA.b $00

#_0AE275: BRA .done_floor_counting

.fewer_than_5_above
#_0AE277: AND.w #$000F ; basement floors are lower priority
#_0AE27A: CMP.w #$0005
#_0AE27D: BCC .done_floor_counting

#_0AE27F: ASL A
#_0AE280: STA.b $00

;---------------------------------------------------------------------------------------------------

.done_floor_counting
#_0AE282: LDX.b $00
#_0AE284: LDY.w $1000

#_0AE287: LDA.w DungeonMap_BackdropFloorPosition,X
#_0AE28A: STA.b $00
#_0AE28C: STA.b $0E

.next_floor_stripe
#_0AE28E: LDA.b $00 ; big endian DISGUSTING
#_0AE290: XBA

#_0AE291: STA.w $1002,Y

#_0AE294: INY
#_0AE295: INY

#_0AE296: LDA.w #$0E40 ; filler stripe 16 bytes
#_0AE299: STA.w $1002,Y

#_0AE29C: INY
#_0AE29D: INY

#_0AE29E: LDX.b $02 ; get the next tile in gradient

#_0AE2A0: LDA.w DungeonMap_BackdropFloorGradientTiles,X
#_0AE2A3: STA.b $04

#_0AE2A5: LDX.w $040C ; check for ocean/land based on dungeon

#_0AE2A8: LDA.w DungeonMapFloorCountData,X
#_0AE2AB: AND.w #$0200
#_0AE2AE: BEQ .not_ocean

#_0AE2B0: LDA.b $04 ; this just increments the palette
#_0AE2B2: CLC
#_0AE2B3: ADC.w #$0400
#_0AE2B6: STA.b $04

.not_ocean
#_0AE2B8: LDA.b $04 ; save tile to stripe
#_0AE2BA: STA.w $1002,Y

#_0AE2BD: INY
#_0AE2BE: INY

#_0AE2BF: LDA.b $02
#_0AE2C1: CMP.w #$000C ; stop after 6
#_0AE2C4: BEQ .gradient_finished

#_0AE2C6: INC.b $02 ; next gradient level
#_0AE2C8: INC.b $02

.gradient_finished
#_0AE2CA: LDA.b $00 ; point address to next row
#_0AE2CC: CLC
#_0AE2CD: ADC.w #$0020
#_0AE2D0: STA.b $00

#_0AE2D2: CMP.w #VRAMaddr($26C0)
#_0AE2D5: BCC .next_floor_stripe

;---------------------------------------------------------------------------------------------------

#_0AE2D7: STY.w $1000 ; save stripe buffer position

#_0AE2DA: SEP #$20

; this PLX recovers our dungeon ID
; which we were perfectly happy with just LDXing earlier
#_0AE2DC: PLX
#_0AE2DD: JSR DungeonMap_BuildFloorListBoxes

#_0AE2E0: REP #$10 ; we're done, so mark the last stripe as finished

#_0AE2E2: LDY.w $1000

#_0AE2E5: LDA.b #$FF
#_0AE2E7: STA.w $1002,Y

#_0AE2EA: SEP #$10

#_0AE2EC: INC.w $020D ; next subsubsubsubsubsubsubmodule

#_0AE2EF: LDA.b #$01 ; tell NMI to handle stripes
#_0AE2F1: STA.b $14

#_0AE2F3: PLB

#_0AE2F4: RTL

;===================================================================================================
; This builds those blue boxes used by the floor counter
; Starts by positioning the topmost box relative to the backdrop's floor
; then builds 2 stripes for each box
;===================================================================================================
pool DungeonMap_BuildFloorListBoxes

.tiles
#_0AE2F5: dw $0F26, $0F27, $4F27, $4F26
#_0AE2FD: dw $8F26, $8F27, $CF27, $CF26

pool off

;---------------------------------------------------------------------------------------------------

DungeonMap_BuildFloorListBoxes:
#_0AE305: REP #$20

; get the total number of floors
#_0AE307: LDA.w DungeonMapFloorCountData,X
#_0AE30A: AND.w #$00FF ; cache value
#_0AE30D: STA.b $02

#_0AE30F: AND.w #$000F ; get basement floors
#_0AE312: STA.b $00

#_0AE314: LDA.b $02 ; get above ground floors

#_0AE316: LSR A ; /16
#_0AE317: LSR A
#_0AE318: LSR A
#_0AE319: LSR A

#_0AE31A: CLC ; add in basement floors
#_0AE31B: ADC.b $00
#_0AE31D: STA.b $02

#_0AE31F: LDA.b $A4 ; add in the floor we are currently on
#_0AE321: CLC
#_0AE322: ADC.b $00
#_0AE324: AND.w #$00FF
#_0AE327: STA.b $0C

#_0AE329: STZ.b $0A

#_0AE32B: LDA.b $0E ; this will contain the backdrop floor position
#_0AE32D: SEC
#_0AE32E: SBC.w #$0040 ; bring it down 2 rows
#_0AE331: CLC
#_0AE332: ADC.w #$0002 ; then right 1 tile
#_0AE335: STA.b $0E

#_0AE337: LDX.b $00 ; check number of basement floor
#_0AE339: BEQ .no_basement

#_0AE33B: LDA.b $0E ; this wasn't necessary

.scroll_floors ; move down 2 rows for every basement floor
#_0AE33D: CLC
#_0AE33E: ADC.w #$0040

#_0AE341: DEX
#_0AE342: BNE .scroll_floors

#_0AE344: STA.b $0E

.no_basement
#_0AE346: REP #$10

#_0AE348: LDY.w $1000

.next_box
#_0AE34B: LDX.w #$0000 ; reset the index for what tile we write

#_0AE34E: LDA.b $0E

.do_next_row
#_0AE350: XBA ; turn the address big endian
#_0AE351: STA.w $1002,Y

#_0AE354: INY
#_0AE355: INY

#_0AE356: LDA.w #$0700 ; transferring 8 bytes, inline
#_0AE359: STA.w $1002,Y

#_0AE35C: INY
#_0AE35D: INY

.next_tile_to_stripe
#_0AE35E: LDA.w .tiles,X ; add each tile from that row
#_0AE361: STA.w $1002,Y

#_0AE364: INY
#_0AE365: INY

#_0AE366: INX
#_0AE367: INX
#_0AE368: CPX.w #$0008
#_0AE36B: BCC .next_tile_to_stripe
#_0AE36D: BEQ .set_up_box_bottom ; at 8, we've only done the first row

#_0AE36F: CPX.w #$0010
#_0AE372: BNE .next_tile_to_stripe

#_0AE374: BRA .box_done ; at 16, we've finished the bottom row too

.set_up_box_bottom
#_0AE376: LDA.b $0E
#_0AE378: CLC
#_0AE379: ADC.w #$0020

#_0AE37C: BRA .do_next_row

.box_done
#_0AE37E: LDA.b $0E ; move our next address up by 2 tiles
#_0AE380: SEC
#_0AE381: SBC.w #$0040
#_0AE384: STA.b $0E

#_0AE386: INC.b $0A ; increment the count of our boxes done

#_0AE388: LDA.b $0A
#_0AE38A: CMP.b $02 ; coulda just decremented this
#_0AE38C: BMI .next_box

#_0AE38E: STY.w $1000 ; save our DMA position

#_0AE391: SEP #$30

#_0AE393: RTS

;===================================================================================================

Module0E_03_01_03_DrawRooms:
#_0AE394: PHB
#_0AE395: PHK
#_0AE396: PLB

#_0AE397: STZ.w $0210

#_0AE39A: REP #$30

#_0AE39C: STZ.b $00
#_0AE39E: STZ.b $02
#_0AE3A0: STZ.b $04
#_0AE3A2: STZ.b $06
#_0AE3A4: STZ.b $08
#_0AE3A6: STZ.b $0A
#_0AE3A8: STZ.b $0C

#_0AE3AA: STZ.w $0211

#_0AE3AD: LDX.w $040C

#_0AE3B0: LDA.w DungeonMapFloorCountData,X
#_0AE3B3: AND.w #$000F

#_0AE3B6: EOR.w #$00FF
#_0AE3B9: INC A

#_0AE3BA: AND.w #$00FF

#_0AE3BD: CMP.b $A4
#_0AE3BF: BEQ .on_this_floor

#_0AE3C1: LDA.b $A4
#_0AE3C3: AND.w #$00FF
#_0AE3C6: STA.w $020E

#_0AE3C9: BRA .continue

.on_this_floor
#_0AE3CB: LDA.b $A4
#_0AE3CD: INC A
#_0AE3CE: STA.w $020E

#_0AE3D1: INC.w $0211
#_0AE3D4: INC.w $0211

.continue
;---------------------------------------------------------------------------------------------------
; Draw the top room
;---------------------------------------------------------------------------------------------------
; This appears to affect the border drawn.
; Perhaps they planned to have it be highlighted for your current location?
; In its current state, this is pointless.
#_0AE3D7: LDA.w $020E
#_0AE3DA: AND.w #$0050
#_0AE3DD: BNE .pointless_check

#_0AE3DF: LDA.w #$EFFF
#_0AE3E2: STA.b $08
#_0AE3E4: BRA .that_was_pointless

.pointless_check
#_0AE3E6: LDA.w #$EFFF
#_0AE3E9: STA.b $08

.that_was_pointless
#_0AE3EB: JSR DungeonMap_DrawFloorNumbersByRoom
#_0AE3EE: JSR DungeonMap_DrawBorderForRooms
#_0AE3F1: JSR DungeonMap_DrawDungeonLayout

;---------------------------------------------------------------------------------------------------
; Draw the bottom room
;---------------------------------------------------------------------------------------------------
#_0AE3F4: DEC.w $020E

#_0AE3F7: REP #$30

#_0AE3F9: LDA.w #$0300
#_0AE3FC: STA.b $06

; WOW! What were they planning here?
#_0AE3FE: LDA.w $0211
#_0AE401: BNE .very_useless
#_0AE403: BRA .very_useless

; More pointless checks
.very_useless
#_0AE405: LDA.w $020E
#_0AE408: AND.w #$0050
#_0AE40B: BNE .more_pointlessness

#_0AE40D: LDA.w #$EFFF
#_0AE410: STA.b $08
#_0AE412: BRA .wow_really_pointless

.more_pointlessness
#_0AE414: LDA.w #$EFFF
#_0AE417: STA.b $08

.wow_really_pointless
#_0AE419: JSR DungeonMap_DrawFloorNumbersByRoom
#_0AE41C: JSR DungeonMap_DrawBorderForRooms
#_0AE41F: JSR DungeonMap_DrawDungeonLayout

;---------------------------------------------------------------------------------------------------

#_0AE422: REP #$30

#_0AE424: INC.w $020E

#_0AE427: STZ.b $06

#_0AE429: SEP #$30

#_0AE42B: LDA.b #$08
#_0AE42D: STA.b $17

#_0AE42F: LDA.b #$22
#_0AE431: STA.w $0116

#_0AE434: INC.w $020D

#_0AE437: PLB

#_0AE438: RTL

;===================================================================================================

pool DungeonMap_DrawBorderForRooms

.tiles_corner
#_0AE439: dw $1F19, $5F19, $9F19, $DF19

.tiles_corner_address
#_0AE441: dw $00E2, $00F8, $03A2, $03B8

.tiles_vertical_border
#_0AE449: dw $1F1A, $9F1A

.tiles_vertical_border_address
#_0AE44D: dw $00E4, $03A4

.tiles_horizontal_border
#_0AE451: dw $1F1B, $5F1B

.tiles_horizontal_border_address
#_0AE455: dw $0122, $0138

pool off

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawBorderForRooms:
#_0AE459: REP #$30

#_0AE45B: STZ.b $02

.next_corner
#_0AE45D: LDY.b $02

#_0AE45F: LDA.w .tiles_corner_address,Y
#_0AE462: CLC
#_0AE463: ADC.b $06
#_0AE465: AND.w #$0FFF
#_0AE468: TAX

#_0AE469: LDA.w #$0F00
#_0AE46C: STA.l $7F0000,X

#_0AE470: LDA.w .tiles_corner,Y
#_0AE473: AND.b $08
#_0AE475: STA.l $7F0000,X

#_0AE479: INC.b $02
#_0AE47B: INC.b $02

#_0AE47D: LDA.b $02
#_0AE47F: CMP.w #$0008
#_0AE482: BNE .next_corner

;---------------------------------------------------------------------------------------------------

#_0AE484: LDY.w #$0000

.next_vertical_segment
#_0AE487: STZ.b $02

#_0AE489: LDA.w .tiles_vertical_border_address,Y
#_0AE48C: CLC
#_0AE48D: ADC.b $06
#_0AE48F: STA.b $04

.next_vertical_tile
#_0AE491: LDA.b $04
#_0AE493: CLC
#_0AE494: ADC.b $02
#_0AE496: AND.w #$0FFF
#_0AE499: TAX

#_0AE49A: LDA.w #$0F00
#_0AE49D: STA.l $7F0000,X

#_0AE4A1: LDA.w .tiles_vertical_border,Y
#_0AE4A4: AND.b $08
#_0AE4A6: STA.l $7F0000,X

#_0AE4AA: INC.b $02
#_0AE4AC: INC.b $02

#_0AE4AE: LDA.b $02
#_0AE4B0: CMP.w #$0014
#_0AE4B3: BNE .next_vertical_tile

#_0AE4B5: INY
#_0AE4B6: INY
#_0AE4B7: CPY.w #$0004
#_0AE4BA: BNE .next_vertical_segment

;---------------------------------------------------------------------------------------------------

#_0AE4BC: LDY.w #$0000

.next_horizontal_segment
#_0AE4BF: STZ.b $02

#_0AE4C1: LDA.w .tiles_horizontal_border_address,Y
#_0AE4C4: CLC
#_0AE4C5: ADC.b $06
#_0AE4C7: STA.b $04

.next_horizontal_tile
#_0AE4C9: LDA.b $04
#_0AE4CB: CLC
#_0AE4CC: ADC.b $02
#_0AE4CE: AND.w #$0FFF
#_0AE4D1: TAX

#_0AE4D2: LDA.w #$0F00
#_0AE4D5: STA.l $7F0000,X

#_0AE4D9: LDA.w .tiles_horizontal_border,Y
#_0AE4DC: AND.b $08
#_0AE4DE: STA.l $7F0000,X

#_0AE4E2: LDA.b $02
#_0AE4E4: CLC
#_0AE4E5: ADC.w #$0040
#_0AE4E8: STA.b $02

#_0AE4EA: CMP.w #$0280
#_0AE4ED: BNE .next_horizontal_tile

#_0AE4EF: INY
#_0AE4F0: INY
#_0AE4F1: CPY.w #$0004
#_0AE4F4: BNE .next_horizontal_segment

;---------------------------------------------------------------------------------------------------

#_0AE4F6: SEP #$30

#_0AE4F8: RTS

;===================================================================================================

pool DungeonMap_DrawFloorNumbersByRoom

.floor_numbers
#_0AE4F9: dw $1F1E ; 1
#_0AE4FB: dw $1F1F ; 2
#_0AE4FD: dw $1F20 ; 3
#_0AE4FF: dw $1F21 ; 4
#_0AE501: dw $1F22 ; 5
#_0AE503: dw $1F23 ; 6
#_0AE505: dw $1F24 ; 7
#_0AE507: dw $1F25 ; 8

pool off

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawFloorNumbersByRoom:
#_0AE509: REP #$30

#_0AE50B: LDA.w #$00DE
#_0AE50E: STA.b $00

; Delete the existing characters
.delete_next_letter
#_0AE510: LDA.b $00
#_0AE512: CLC
#_0AE513: ADC.b $06
#_0AE515: AND.w #$0FFF
#_0AE518: TAX

#_0AE519: LDA.w #$0F00
#_0AE51C: STA.l $7F0000,X
#_0AE520: STA.l $7F0002,X

#_0AE524: LDA.b $00
#_0AE526: CLC
#_0AE527: ADC.w #$0040
#_0AE52A: STA.b $00

#_0AE52C: CMP.w #$039E
#_0AE52F: BNE .delete_next_letter

;---------------------------------------------------------------------------------------------------

; Draw the floor number
#_0AE531: LDA.w $020E
#_0AE534: AND.w #$0080
#_0AE537: BEQ .above_ground_floor

#_0AE539: LDA.w #$1F1C ; letter B
#_0AE53C: BRA .write_char

; Otherwise, write the floor number
.above_ground_floor
#_0AE53E: LDA.w $020E
#_0AE541: AND.w #$000F
#_0AE544: ASL A
#_0AE545: TAY

#_0AE546: LDA.w .floor_numbers,Y

; Write first character (digit or B)
.write_char
#_0AE549: PHA

#_0AE54A: LDA.w #$035E
#_0AE54D: CLC
#_0AE54E: ADC.b $06

#_0AE550: AND.w #$0FFF
#_0AE553: TAX

#_0AE554: PLA
#_0AE555: AND.b $08
#_0AE557: STA.l $7F0000,X

;---------------------------------------------------------------------------------------------------

#_0AE55B: LDA.w $020E
#_0AE55E: AND.w #$0080
#_0AE561: BEQ .above_ground_again

; Check floor again for basementitude
#_0AE563: LDA.w $020E
#_0AE566: AND.w #$00FF
#_0AE569: EOR.w #$00FF
#_0AE56C: ASL A
#_0AE56D: TAY

#_0AE56E: LDA.w .floor_numbers,Y
#_0AE571: BRA .write_second_character

.above_ground_again
#_0AE573: LDA.w #$1F1D ; letter F

.write_second_character
#_0AE576: AND.b $08
#_0AE578: STA.l $7F0002,X

#_0AE57C: SEP #$30

#_0AE57E: RTS

;===================================================================================================

pool DungeonMap_DrawDungeonLayout

.row_offset
#_0AE57F: dw $0124
#_0AE581: dw $01A4
#_0AE583: dw $0224
#_0AE585: dw $02A4
#_0AE587: dw $0324

pool off

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawDungeonLayout:
#_0AE589: REP #$30

#_0AE58B: STZ.b $00

.next_row_of_rooms
#_0AE58D: LDA.b $00
#_0AE58F: ASL A
#_0AE590: TAX

#_0AE591: LDA.w .row_offset,X
#_0AE594: CLC
#_0AE595: ADC.b $06
#_0AE597: AND.w #$0FFF
#_0AE59A: TAX

#_0AE59B: JSR DungeonMap_DrawSingleRowOfRooms

#_0AE59E: INC.b $00

#_0AE5A0: LDA.b $00
#_0AE5A2: CMP.w #$0005
#_0AE5A5: BNE .next_row_of_rooms

#_0AE5A7: SEP #$30

#_0AE5A9: RTS

;===================================================================================================

pool DungeonMap_DrawSingleRowOfRooms

.row_draw_offset
#_0AE5AA: dw $0000
#_0AE5AC: dw $0005
#_0AE5AE: dw $000A
#_0AE5B0: dw $000F
#_0AE5B2: dw $0014

.unused
#_0AE5B4: dw $0000, $0032, $0064, $0096
#_0AE5BC: dw $00C8, $00FA, $012C, $015E
#_0AE5C4: dw $0190, $0300, $0B00, $0F00

pool off

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawSingleRowOfRooms:
#_0AE5CC: REP #$30

#_0AE5CE: STZ.b $02

.next_room
#_0AE5D0: STZ.b $0E

#_0AE5D2: PHX

; Get row number
#_0AE5D3: LDA.b $00
#_0AE5D5: ASL A
#_0AE5D6: TAX

; Add in room number
#_0AE5D7: LDA.b $02
#_0AE5D9: ADC.w .row_draw_offset,X
#_0AE5DC: STA.b $04

#_0AE5DE: SEP #$20

#_0AE5E0: LDX.w $040C

; Get number of basement floors in dungeon
#_0AE5E3: LDA.w DungeonMapFloorCountData,X
#_0AE5E6: AND.b #$0F

; Add in current floor
#_0AE5E8: CLC
#_0AE5E9: ADC.w $020E

; So (basements+current)*2
#_0AE5EC: ASL A
#_0AE5ED: STA.b $0E

; So that means the lowest floor is where the data starts
#_0AE5EF: TAY

#_0AE5F0: REP #$20

#_0AE5F2: LDA.w DungeonMapRoomPointers,X
#_0AE5F5: STA.b $0C

#_0AE5F7: LDA.w DungeonMapFloorToDataOffset,Y
#_0AE5FA: CLC
#_0AE5FB: ADC.b $04
#_0AE5FD: TAY

#_0AE5FE: SEP #$20

; 0x0F = empty room
#_0AE600: LDA.b ($0C),Y
#_0AE602: CMP.b #$0F
#_0AE604: BNE .valid_room

#_0AE606: REP #$20

#_0AE608: LDA.w #$0051
#_0AE60B: BRA .shift_empty_room

.valid_room
#_0AE60D: REP #$20

; Check SRAM for room visits
#_0AE60F: AND.w #$00FF
#_0AE612: STA.b $CA

#_0AE614: ASL A
#_0AE615: PHA

#_0AE616: LDA.b $CA
#_0AE618: ASL A
#_0AE619: TAX

#_0AE61A: LDA.l $7EF000,X
#_0AE61E: AND.w #$000F

; $0E holds quadrant flags and chests
#_0AE621: STA.b $0E

#_0AE623: PLA
#_0AE624: BRA .is_valid

; Not sure I understand the point of this branch.
; It could have been merged or been further ahead.
.shift_empty_room
#_0AE626: ASL A
#_0AE627: ASL A
#_0AE628: ASL A
#_0AE629: TAY

#_0AE62A: BRA .continue_with_empty_room

;---------------------------------------------------------------------------------------------------

.is_valid
#_0AE62C: STZ.b $C8

#_0AE62E: LDY.w #$0000
#_0AE631: LDX.w $040C

#_0AE634: LDA.w DungeonMapRoomPointers,X
#_0AE637: STA.b $0C

.check_next_room
#_0AE639: SEP #$20

#_0AE63B: LDA.b ($0C),Y
#_0AE63D: CMP.b #$0F
#_0AE63F: BNE .draw_this_room

#_0AE641: INY
#_0AE642: BRA .check_next_room

.draw_this_room
; $CA held our room ID
#_0AE644: CMP.b $CA
#_0AE646: BEQ .room_matches

; C8 holds the room idnex to look for
#_0AE648: INC.b $C8

#_0AE64A: INY

#_0AE64B: BRA .check_next_room

.room_matches
#_0AE64D: REP #$20

#_0AE64F: LDA.w DungeonMapRoomLayoutPointers,X
#_0AE652: STA.b $0C

; Get index of room in layout data
#_0AE654: LDA.b $C8
#_0AE656: TAY

#_0AE657: SEP #$20

; get the room's stripe
#_0AE659: LDA.b ($0C),Y

#_0AE65B: REP #$20

#_0AE65D: ASL A ; x8
#_0AE65E: ASL A
#_0AE65F: ASL A
#_0AE660: TAY

.continue_with_empty_room
#_0AE661: PLX

; C holds the character/properties
#_0AE662: LDA.w DungeonMap_RoomTemplates+0,Y
#_0AE665: STA.b $0C

#_0AE667: PHA

;---------------------------------------------------------------------------------------------------
; NW quadrant
;---------------------------------------------------------------------------------------------------
; Empty character
#_0AE668: CMP.w #$0B00
#_0AE66B: BEQ .empty_quad_nw

; Quadrant not visited
#_0AE66D: LDA.b $0E
#_0AE66F: AND.w #$0008
#_0AE672: BNE .empty_quad_nw

#_0AE674: LDA.b $0C
#_0AE676: AND.w #$1000
#_0AE679: BNE .visited_pal_nw

#_0AE67B: LDA.w #$0400
#_0AE67E: STA.b $0C
#_0AE680: BRA .check_visit_nw

.visited_pal_nw
#_0AE682: PHX

#_0AE683: LDX.w $040C

#_0AE686: LDA.l $7EF368
#_0AE68A: AND.l DungeonMask,X
#_0AE68E: BEQ .missing_map_nw

#_0AE690: PLX
#_0AE691: PLA

#_0AE692: LDA.b $0C
#_0AE694: AND.w #$E3FF
#_0AE697: ORA.w #$0C00
#_0AE69A: BRA .write_char_nw

.missing_map_nw
#_0AE69C: PLX

.empty_quad_nw
#_0AE69D: STZ.b $0C

.check_visit_nw
#_0AE69F: PLA
#_0AE6A0: CLC
#_0AE6A1: ADC.b $0C

#_0AE6A3: PHX

#_0AE6A4: STA.b $0C

#_0AE6A6: LDX.w $040C

#_0AE6A9: LDA.l $7EF368
#_0AE6AD: AND.l DungeonMask,X
#_0AE6B1: BNE .quadrant_visited_nw

#_0AE6B3: LDA.b $0E
#_0AE6B5: AND.w #$0008
#_0AE6B8: BNE .quadrant_visited_nw

#_0AE6BA: LDA.w #$0B00
#_0AE6BD: BRA .quadrant_unvisited_nw

.quadrant_visited_nw
#_0AE6BF: LDA.b $0C

.quadrant_unvisited_nw
#_0AE6C1: PLX

.write_char_nw
#_0AE6C2: STA.l $7F0000,X

;---------------------------------------------------------------------------------------------------
; NE quadrant
;---------------------------------------------------------------------------------------------------
#_0AE6C6: LDA.w DungeonMap_RoomTemplates+2,Y
#_0AE6C9: STA.b $0C

#_0AE6CB: PHA

#_0AE6CC: CMP.w #$0B00
#_0AE6CF: BEQ .empty_quad_ne

#_0AE6D1: LDA.b $0E
#_0AE6D3: AND.w #$0004
#_0AE6D6: BNE .empty_quad_ne

#_0AE6D8: LDA.b $0C
#_0AE6DA: AND.w #$1000
#_0AE6DD: BNE .visited_pal_ne

#_0AE6DF: LDA.w #$0400
#_0AE6E2: STA.b $0C

#_0AE6E4: BRA .check_visit_ne

.visited_pal_ne
#_0AE6E6: PHX

#_0AE6E7: LDX.w $040C

#_0AE6EA: LDA.l $7EF368
#_0AE6EE: AND.l DungeonMask,X
#_0AE6F2: BEQ .missing_map_ne

#_0AE6F4: PLX
#_0AE6F5: PLA

#_0AE6F6: LDA.b $0C
#_0AE6F8: AND.w #$E3FF
#_0AE6FB: ORA.w #$0C00
#_0AE6FE: BRA .write_char_ne

.missing_map_ne
#_0AE700: PLX

.empty_quad_ne
#_0AE701: STZ.b $0C

.check_visit_ne
#_0AE703: PLA
#_0AE704: CLC
#_0AE705: ADC.b $0C

#_0AE707: PHX

#_0AE708: STA.b $0C

#_0AE70A: LDX.w $040C

#_0AE70D: LDA.l $7EF368
#_0AE711: AND.l DungeonMask,X
#_0AE715: BNE .quadrant_visited_ne

#_0AE717: LDA.b $0E
#_0AE719: AND.w #$0004
#_0AE71C: BNE .quadrant_visited_ne

#_0AE71E: LDA.w #$0B00

#_0AE721: BRA .quadrant_unvisited_ne

.quadrant_visited_ne
#_0AE723: LDA.b $0C

.quadrant_unvisited_ne
#_0AE725: PLX

.write_char_ne
#_0AE726: STA.l $7F0002,X

;---------------------------------------------------------------------------------------------------
; SW quadrant
;---------------------------------------------------------------------------------------------------
#_0AE72A: LDA.w DungeonMap_RoomTemplates+4,Y
#_0AE72D: STA.b $0C

#_0AE72F: PHA

#_0AE730: CMP.w #$0B00
#_0AE733: BEQ .empty_quad_sw

#_0AE735: LDA.b $0E
#_0AE737: AND.w #$0002
#_0AE73A: BNE .empty_quad_sw

#_0AE73C: LDA.b $0C
#_0AE73E: AND.w #$1000
#_0AE741: BNE .visited_pal_sw

#_0AE743: LDA.w #$0400
#_0AE746: STA.b $0C

#_0AE748: BRA .check_visit_sw

.visited_pal_sw
#_0AE74A: PHX

#_0AE74B: LDX.w $040C

#_0AE74E: LDA.l $7EF368
#_0AE752: AND.l DungeonMask,X
#_0AE756: BEQ .missing_map_sw

#_0AE758: PLX
#_0AE759: PLA

#_0AE75A: LDA.b $0C
#_0AE75C: AND.w #$E3FF
#_0AE75F: ORA.w #$0C00
#_0AE762: BRA .write_char_sw

.missing_map_sw
#_0AE764: PLX

.empty_quad_sw
#_0AE765: STZ.b $0C

.check_visit_sw
#_0AE767: PLA
#_0AE768: CLC
#_0AE769: ADC.b $0C

#_0AE76B: PHX

#_0AE76C: STA.b $0C

#_0AE76E: LDX.w $040C

#_0AE771: LDA.l $7EF368
#_0AE775: AND.l DungeonMask,X
#_0AE779: BNE .quadrant_visited_sw

#_0AE77B: LDA.b $0E
#_0AE77D: AND.w #$0002
#_0AE780: BNE .quadrant_visited_sw

#_0AE782: LDA.w #$0B00

#_0AE785: BRA .quadrant_unvisited_sw

.quadrant_visited_sw
#_0AE787: LDA.b $0C

.quadrant_unvisited_sw
#_0AE789: PLX

.write_char_sw
#_0AE78A: STA.l $7F0040,X

;---------------------------------------------------------------------------------------------------
; SE quadrant
;---------------------------------------------------------------------------------------------------
#_0AE78E: LDA.w DungeonMap_RoomTemplates+6,Y
#_0AE791: STA.b $0C

#_0AE793: PHA

#_0AE794: CMP.w #$0B00
#_0AE797: BEQ .empty_quad_se

#_0AE799: LDA.b $0E
#_0AE79B: AND.w #$0001
#_0AE79E: BNE .empty_quad_se

#_0AE7A0: LDA.b $0C
#_0AE7A2: AND.w #$1000
#_0AE7A5: BNE .visited_pal_se

#_0AE7A7: LDA.w #$0400
#_0AE7AA: STA.b $0C

#_0AE7AC: BRA .check_visit_se

.visited_pal_se
#_0AE7AE: PHX

#_0AE7AF: LDX.w $040C

#_0AE7B2: LDA.l $7EF368
#_0AE7B6: AND.l DungeonMask,X
#_0AE7BA: BEQ .missing_map_se

#_0AE7BC: PLX
#_0AE7BD: PLA

#_0AE7BE: LDA.b $0C
#_0AE7C0: AND.w #$E3FF
#_0AE7C3: ORA.w #$0C00

#_0AE7C6: BRA .write_char_se

.missing_map_se
#_0AE7C8: PLX

.empty_quad_se
#_0AE7C9: STZ.b $0C

.check_visit_se
#_0AE7CB: PLA
#_0AE7CC: CLC
#_0AE7CD: ADC.b $0C

#_0AE7CF: PHX

#_0AE7D0: STA.b $0C

#_0AE7D2: LDX.w $040C

#_0AE7D5: LDA.l $7EF368
#_0AE7D9: AND.l DungeonMask,X
#_0AE7DD: BNE .quadrant_visited_se

#_0AE7DF: LDA.b $0E
#_0AE7E1: AND.w #$0001
#_0AE7E4: BNE .quadrant_visited_se

#_0AE7E6: LDA.w #$0B00

#_0AE7E9: BRA .quadrant_unvisited_se

.quadrant_visited_se
#_0AE7EB: LDA.b $0C

.quadrant_unvisited_se
#_0AE7ED: PLX

.write_char_se
#_0AE7EE: STA.l $7F0042,X

;---------------------------------------------------------------------------------------------------

#_0AE7F2: INX ; +4
#_0AE7F3: INX
#_0AE7F4: INX
#_0AE7F5: INX

#_0AE7F6: INC.b $02

#_0AE7F8: LDA.b $02
#_0AE7FA: CMP.w #$0005
#_0AE7FD: BEQ .exit

#_0AE7FF: JMP.w .next_room

.exit
#_0AE802: RTS

;===================================================================================================

DungeonMapRoomMarkerYBase:
#_0AE803: dw $001F, $007F

;---------------------------------------------------------------------------------------------------

pool DungeonMap_DrawRoomMarkers

.offset_x_base
#_0AE807: dw $0090

.fairy_rooms
#_0AE809: dw $0089 ; Eastern fairy room
#_0AE80B: dw $00A7 ; Hera fairy room
#_0AE80D: dw $004F ; Ice Palace fairy room

.fairy_room_replacements
#_0AE80F: dw $00A9 ; Eastern big chest room
#_0AE811: dw $0077 ; Hera lobby
#_0AE813: dw $00BE ; Ice Palace block switch room

.floor_threshold
#_0AE815: dw $0004

pool off

;---------------------------------------------------------------------------------------------------

DungeonMapBossRooms:
#_0AE817: dw $000F ; Sewers: none
#_0AE819: dw $000F ; Castle: none
#_0AE81B: dw $00C8 ; Eastern
#_0AE81D: dw $0033 ; Desert
#_0AE81F: dw $0020 ; Agahnim's tower
#_0AE821: dw $0006 ; Swamp palace
#_0AE823: dw $005A ; Palace of Darkness
#_0AE825: dw $0090 ; Misery Mire
#_0AE827: dw $0029 ; Skull Woods
#_0AE829: dw $00DE ; Ice Palace
#_0AE82B: dw $0007 ; Tower of Hera
#_0AE82D: dw $00AC ; Thieves' Town
#_0AE82F: dw $00A4 ; Turtle Rock
#_0AE831: dw $000D ; Ganon's tower

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawRoomMarkers:
#_0AE833: PHB
#_0AE834: PHK
#_0AE835: PLB

#_0AE836: REP #$10

#_0AE838: LDA.b #$00
#_0AE83A: XBA

#_0AE83B: LDX.w $040C

#_0AE83E: LDA.w DungeonMapFloorCountData,X
#_0AE841: AND.b #$0F
#_0AE843: CLC
#_0AE844: ADC.b $A4
#_0AE846: ASL A
#_0AE847: TAY

#_0AE848: STY.b $0C

#_0AE84A: REP #$20

#_0AE84C: STZ.b $00
#_0AE84E: STZ.b $02

;---------------------------------------------------------------------------------------------------

#_0AE850: PHY

#_0AE851: LDY.w .floor_threshold

#_0AE854: LDA.b $A0

.check_next
#_0AE856: CMP.w .fairy_rooms,Y
#_0AE859: BEQ .replace_this_room

#_0AE85B: DEY
#_0AE85C: DEY
#_0AE85D: BPL .check_next

#_0AE85F: BRA .no_replacements

.replace_this_room
#_0AE861: LDA.w .fairy_room_replacements,Y

.no_replacements
#_0AE864: STA.b $0E

;---------------------------------------------------------------------------------------------------

#_0AE866: PLY

#_0AE867: LDA.w DungeonMapRoomPointers,X
#_0AE86A: STA.b $04

#_0AE86C: LDA.w DungeonMapFloorToDataOffset,Y
#_0AE86F: TAY

#_0AE870: SEP #$20

.next_room_check
#_0AE872: LDA.b ($04),Y

#_0AE874: INY

#_0AE875: CMP.b $0E
#_0AE877: BEQ .is_this_room

#_0AE879: LDA.b $00
#_0AE87B: CMP.b #$40
#_0AE87D: BCC .dont_reset_row

#_0AE87F: STZ.b $00

#_0AE881: LDA.b $02
#_0AE883: CLC
#_0AE884: ADC.b #$10
#_0AE886: STA.b $02

#_0AE888: BRA .next_room_check

.dont_reset_row
#_0AE88A: CLC
#_0AE88B: ADC.b #$10
#_0AE88D: STA.b $00

#_0AE88F: BRA .next_room_check

;---------------------------------------------------------------------------------------------------

.is_this_room
#_0AE891: REP #$20

#_0AE893: LDA.b $00
#_0AE895: CLC
#_0AE896: ADC.w .offset_x_base
#_0AE899: STA.w $0215

#_0AE89C: LDA.b $22
#_0AE89E: AND.w #$01E0

#_0AE8A1: ASL A
#_0AE8A2: ASL A
#_0AE8A3: ASL A

#_0AE8A4: XBA
#_0AE8A5: CLC
#_0AE8A6: ADC.w $0215
#_0AE8A9: STA.w $0215

#_0AE8AC: LDY.w $0211

#_0AE8AF: LDA.b $02
#_0AE8B1: STA.w $0CF5

#_0AE8B4: CLC
#_0AE8B5: ADC.w DungeonMapRoomMarkerYBase,Y
#_0AE8B8: STA.w $0217

#_0AE8BB: LDA.b $20
#_0AE8BD: AND.w #$01E0

#_0AE8C0: ASL A
#_0AE8C1: ASL A
#_0AE8C2: ASL A

#_0AE8C3: XBA
#_0AE8C4: CLC
#_0AE8C5: ADC.w $0217
#_0AE8C8: STA.w $0217

;---------------------------------------------------------------------------------------------------

#_0AE8CB: SEP #$20

#_0AE8CD: LDA.b #$00
#_0AE8CF: XBA

#_0AE8D0: LDA.w DungeonMapFloorCountData,X
#_0AE8D3: AND.b #$0F
#_0AE8D5: CLC
#_0AE8D6: ADC.w DungeonMap_BossRoomFloor+0,X

#_0AE8D9: REP #$20

#_0AE8DB: ASL A
#_0AE8DC: TAY

#_0AE8DD: LDA.w DungeonMapRoomPointers,X
#_0AE8E0: CLC
#_0AE8E1: ADC.w DungeonMapFloorToDataOffset,Y
#_0AE8E4: STA.b $0E

;---------------------------------------------------------------------------------------------------

#_0AE8E6: SEP #$20

#_0AE8E8: LDA.b #$40
#_0AE8EA: STA.w $0FA8
#_0AE8ED: STZ.w $0FA9

#_0AE8F0: STA.w $0FAA
#_0AE8F3: STZ.w $0FAB

#_0AE8F6: LDY.w #$0018

.next_boss_room_check
#_0AE8F9: LDA.b ($0E),Y
#_0AE8FB: CMP.b #$0F
#_0AE8FD: BEQ .invalid_room

#_0AE8FF: CMP.w DungeonMapBossRooms,X
#_0AE902: BEQ .is_boss_room

.invalid_room
#_0AE904: LDA.w $0FA8
#_0AE907: SEC
#_0AE908: SBC.b #$10
#_0AE90A: STA.w $0FA8
#_0AE90D: BPL .dont_reset_row_b

#_0AE90F: LDA.b #$40
#_0AE911: STA.w $0FA8

#_0AE914: LDA.w $0FAA
#_0AE917: SEC
#_0AE918: SBC.b #$10
#_0AE91A: STA.w $0FAA

.dont_reset_row_b
#_0AE91D: DEY
#_0AE91E: BPL .next_boss_room_check

;---------------------------------------------------------------------------------------------------

.is_boss_room
#_0AE920: STZ.b $02
#_0AE922: STZ.b $0F

#_0AE924: LDA.w $020E
#_0AE927: SEC
#_0AE928: SBC.w DungeonMap_BossRoomFloor+0,X
#_0AE92B: STA.b $0E

#_0AE92D: BPL .dont_invert

#_0AE92F: EOR.b #$FF
#_0AE931: INC A
#_0AE932: STA.b $0E

#_0AE934: INC.b $02
#_0AE936: INC.b $02

;---------------------------------------------------------------------------------------------------

.dont_invert
#_0AE938: SEP #$10

#_0AE93A: LDY.b $02

#_0AE93C: REP #$20

.adjust_next
#_0AE93E: DEC.b $0E
#_0AE940: BMI .done

#_0AE942: LDA.w $0FAA
#_0AE945: CLC
#_0AE946: ADC.w DungeonMap_PanValues,Y
#_0AE949: STA.w $0FAA

#_0AE94C: BRA .adjust_next

;---------------------------------------------------------------------------------------------------

.done
#_0AE94E: LDA.w $0FAA
#_0AE951: CLC
#_0AE952: ADC.w DungeonMapRoomMarkerYBase
#_0AE955: STA.w $0FAA

#_0AE958: SEP #$20

#_0AE95A: INC.w $0200

#_0AE95D: STZ.b $13
#_0AE95F: STZ.w $020D

#_0AE962: PLB

#_0AE963: RTL

;---------------------------------------------------------------------------------------------------

DungeonMap_HandleInputAndSprites:
#_0AE964: JSL DungeonMap_HandleInput

#_0AE968: JMP.w DungeonMap_DrawSprites

;===================================================================================================

DungeonMap_HandleInput:
#_0AE96B: PHB
#_0AE96C: PHK
#_0AE96D: PLB

#_0AE96E: LDA.b $F6
#_0AE970: AND.b #$40

#_0AE972: BNE .close_map

#_0AE974: JSL DungeonMap_HandleMovementInput

#_0AE978: PLB

#_0AE979: RTL

;---------------------------------------------------------------------------------------------------

.close_map
#_0AE97A: INC.w $0200
#_0AE97D: INC.w $0200
#_0AE980: STZ.w $020D

#_0AE983: PLB

#_0AE984: RTL

;===================================================================================================

DungeonMap_PanValues:
#_0AE985: dw  96
#_0AE987: dw -96

;===================================================================================================

DungeonMap_HandleMovementInput:
#_0AE989: JSL DungeonMap_HandleFloorSelect

#_0AE98D: LDA.w $0210
#_0AE990: BEQ .exit

#_0AE992: JMP.w DungeonMap_ScrollFloors

.exit
#_0AE995: RTL

;===================================================================================================

DungeonMap_HandleFloorSelect:
#_0AE996: REP #$30

#_0AE998: LDX.w $040C

#_0AE99B: LDA.w DungeonMapFloorCountData,X
#_0AE99E: AND.w #$00F0
#_0AE9A1: LSR A ; /16
#_0AE9A2: LSR A
#_0AE9A3: LSR A
#_0AE9A4: LSR A
#_0AE9A5: STA.b $00

#_0AE9A7: LDA.w DungeonMapFloorCountData,X
#_0AE9AA: AND.w #$000F
#_0AE9AD: CLC
#_0AE9AE: ADC.b $00

#_0AE9B0: CMP.w #$0003
#_0AE9B3: BMI .ignore_input

;---------------------------------------------------------------------------------------------------

#_0AE9B5: SEP #$30

#_0AE9B7: LDA.w $0210
#_0AE9BA: BNE .ignore_input

#_0AE9BC: LDA.b $F0
#_0AE9BE: AND.b #$0C
#_0AE9C0: BNE .pressed_up_or_down

;---------------------------------------------------------------------------------------------------

.ignore_input
#_0AE9C2: JMP.w .proceed_to_exit

;---------------------------------------------------------------------------------------------------

.pressed_up_or_down
#_0AE9C5: STA.b $0A

#_0AE9C7: STZ.w $020F

#_0AE9CA: AND.b #$08
#_0AE9CC: BEQ .didnt_press_up

;---------------------------------------------------------------------------------------------------

#_0AE9CE: REP #$30

#_0AE9D0: LDX.w $040C

#_0AE9D3: LDA.w DungeonMapFloorCountData,X
#_0AE9D6: AND.w #$00F0

#_0AE9D9: LSR A ; /16
#_0AE9DA: LSR A
#_0AE9DB: LSR A
#_0AE9DC: LSR A

#_0AE9DD: DEC A
#_0AE9DE: CMP.w $020E
#_0AE9E1: BNE .continue_a

#_0AE9E3: JMP.w .proceed_to_exit

;---------------------------------------------------------------------------------------------------

.continue_a
#_0AE9E6: INC.w $020E

#_0AE9E9: LDA.b $06
#_0AE9EB: SEC
#_0AE9EC: SBC.w #$0300
#_0AE9EF: AND.w #$0FFF
#_0AE9F2: STA.b $06

#_0AE9F4: BRA .continue_b

;---------------------------------------------------------------------------------------------------

.didnt_press_up
#_0AE9F6: REP #$30

#_0AE9F8: LDX.w $040C

#_0AE9FB: LDA.w DungeonMapFloorCountData,X
#_0AE9FE: AND.w #$000F
#_0AEA01: EOR.w #$00FF

#_0AEA04: INC A
#_0AEA05: INC A
#_0AEA06: AND.w #$00FF

#_0AEA09: CMP.w $020E
#_0AEA0C: BEQ .proceed_to_exit

#_0AEA0E: DEC.w $020E
#_0AEA11: DEC.w $020E

#_0AEA14: LDA.b $06
#_0AEA16: CLC
#_0AEA17: ADC.w #$0600
#_0AEA1A: AND.w #$0FFF
#_0AEA1D: STA.b $06

;---------------------------------------------------------------------------------------------------

.continue_b
#_0AEA1F: SEP #$20

#_0AEA21: LDA.w $020E
#_0AEA24: CMP.b $A4
#_0AEA26: BNE .useless_floor_level_check

#_0AEA28: REP #$20

#_0AEA2A: BRA .check_useless_property

.useless_floor_level_check
#_0AEA2C: BMI .useless_bitmode_branch ; !USELESS this and the BRA that follows could just go.

#_0AEA2E: REP #$20

#_0AEA30: BRA .check_useless_property

;---------------------------------------------------------------------------------------------------

.useless_bitmode_branch
#_0AEA32: REP #$20

.check_useless_property
#_0AEA34: LDA.w $020E
#_0AEA37: AND.w #$0080
#_0AEA3A: BNE .useless_property_change

#_0AEA3C: LDA.w #$EFFF
#_0AEA3F: STA.b $08

#_0AEA41: BRA .ignore_useless_property_change

.useless_property_change
#_0AEA43: LDA.w #$EFFF
#_0AEA46: STA.b $08

.ignore_useless_property_change
#_0AEA48: SEP #$20

#_0AEA4A: JSR DungeonMap_DrawFloorNumbersByRoom
#_0AEA4D: JSR DungeonMap_DrawBorderForRooms
#_0AEA50: JSR DungeonMap_DrawDungeonLayout

#_0AEA53: SEP #$20

#_0AEA55: INC.w $0210

#_0AEA58: LDA.b $0A
#_0AEA5A: AND.b #$08
#_0AEA5C: LSR A
#_0AEA5D: LSR A
#_0AEA5E: TAX

#_0AEA5F: REP #$30

#_0AEA61: LDA.b $E8
#_0AEA63: CLC
#_0AEA64: ADC.w DungeonMap_PanValues,X
#_0AEA67: STA.w $0213

#_0AEA6A: LDA.b $0A
#_0AEA6C: AND.w #$0008
#_0AEA6F: BNE .pressed_up

#_0AEA71: LDA.b $06
#_0AEA73: SEC
#_0AEA74: SBC.w #$0300
#_0AEA77: AND.w #$0FFF
#_0AEA7A: STA.b $06

#_0AEA7C: INC.w $020E

;---------------------------------------------------------------------------------------------------

.pressed_up
#_0AEA7F: SEP #$20

#_0AEA81: LDA.b #$08
#_0AEA83: STA.b $17

.proceed_to_exit
#_0AEA85: BRA EXIT_0AEABF

;===================================================================================================

pool DungeonMap_ScrollFloors

.speed_bg
#_0AEA87: dw   4 ; down
#_0AEA89: dw  -4 ; up

.speed_sprites
#_0AEA8B: dw  -4 ; down
#_0AEA8D: dw   4 ; up

pool off

;---------------------------------------------------------------------------------------------------

DungeonMap_ScrollFloors:
#_0AEA8F: REP #$30

#_0AEA91: LDA.b $0A
#_0AEA93: AND.w #$0008
#_0AEA96: LSR A
#_0AEA97: LSR A
#_0AEA98: TAX

#_0AEA99: LDA.w $0217
#_0AEA9C: CLC
#_0AEA9D: ADC.w .speed_sprites,X
#_0AEAA0: STA.w $0217

#_0AEAA3: LDA.w $0FAA
#_0AEAA6: CLC
#_0AEAA7: ADC.w .speed_sprites,X
#_0AEAAA: STA.w $0FAA

#_0AEAAD: LDA.b $E8
#_0AEAAF: CLC
#_0AEAB0: ADC.w .speed_bg,X
#_0AEAB3: STA.b $E8

#_0AEAB5: CMP.w $0213
#_0AEAB8: BNE EXIT_0AEABF

#_0AEABA: SEP #$20

#_0AEABC: STZ.w $0210

;---------------------------------------------------------------------------------------------------

#EXIT_0AEABF:
#_0AEABF: SEP #$30

#_0AEAC1: RTL

;===================================================================================================

DungeonMap_DrawSprites:
#_0AEAC2: PHB
#_0AEAC3: PHK
#_0AEAC4: PLB

#_0AEAC5: REP #$10

#_0AEAC7: LDX.w $040C

#_0AEACA: LDA.w DungeonMapFloorCountData,X

#_0AEACD: AND.b #$0F
#_0AEACF: STA.b $02

#_0AEAD1: CLC
#_0AEAD2: ADC.b $A4
#_0AEAD4: STA.b $01
#_0AEAD6: STA.b $03

;---------------------------------------------------------------------------------------------------

#_0AEAD8: SEP #$10

#_0AEADA: STZ.b $00
#_0AEADC: STZ.b $0E

#_0AEADE: JSR DungeonMap_DrawLinkPointing

#_0AEAE1: INC.b $00

.next_marker
#_0AEAE3: JSR DungeonMap_DrawLocationMarker

#_0AEAE6: INC.b $0E

#_0AEAE8: LDA.b $00
#_0AEAEA: CMP.b #$09
#_0AEAEC: BNE .next_marker

#_0AEAEE: JSR DungeonMap_DrawBlinkingIndicator

#_0AEAF1: INC.b $00

#_0AEAF3: JSR DungeonMap_DrawBossIcon
#_0AEAF6: JSR DungeonMap_DrawFloorNumberObjects
#_0AEAF9: JSR DungeonMap_DrawFloorBlinker

#_0AEAFC: PLB

#_0AEAFD: RTL

;===================================================================================================

LinkPointingPositionX:
#_0AEAFE: db $19

DrawBossIconByFloor_position_x:
#_0AEAFF: db $4C

;===================================================================================================

DungeonMap_DrawLinkPointing:
#_0AEB00: REP #$10

#_0AEB02: LDA.b #$04
#_0AEB04: SEC
#_0AEB05: SBC.b $02
#_0AEB07: BMI .y_offset_done

#_0AEB09: CLC
#_0AEB0A: ADC.b $03
#_0AEB0C: STA.b $03

#_0AEB0E: LDA.w DungeonMapFloorCountData,X

#_0AEB11: LSR A ; /16
#_0AEB12: LSR A
#_0AEB13: LSR A
#_0AEB14: LSR A

#_0AEB15: SEC
#_0AEB16: SBC.b #$04
#_0AEB18: BMI .y_offset_done

#_0AEB1A: SEC
#_0AEB1B: SBC.b $03

#_0AEB1D: EOR.b #$FF
#_0AEB1F: INC A
#_0AEB20: STA.b $03

;---------------------------------------------------------------------------------------------------

.y_offset_done
#_0AEB22: SEP #$10

#_0AEB24: LDX.b $00

#_0AEB26: LDA.b #$02
#_0AEB28: STA.w $0A20,X

#_0AEB2B: TXA
#_0AEB2C: ASL A
#_0AEB2D: ASL A
#_0AEB2E: TAX

#_0AEB2F: LDA.w LinkPointingPositionX
#_0AEB32: STA.w $0800,X

#_0AEB35: LDY.b $03

#_0AEB37: LDA.w FloorIconOffsetY,Y
#_0AEB3A: SEC
#_0AEB3B: SBC.b #$04

#_0AEB3D: STA.w $0801,X
#_0AEB40: STZ.w $0802,X

#_0AEB43: LDA.b #$3E

#_0AEB45: LDY.w $0ABD
#_0AEB48: BEQ .set_priority

#_0AEB4A: LDA.b #$30

.set_priority
#_0AEB4C: STA.w $0803,X

#_0AEB4F: RTS

;===================================================================================================

pool DungeonMap_DrawBlinkingIndicator

.tile
#_0AEB50: db $34, $35, $36, $34
#_0AEB54: db $31, $32, $33, $32

.prop
#_0AEB58: db $39, $3B, $3D, $3B
#_0AEB5C: db $3B, $3B, $3B, $3B

pool off

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawBlinkingIndicator:
#_0AEB60: LDX.b $00

#_0AEB62: LDA.b #$00
#_0AEB64: STA.w $0A20,X

#_0AEB67: TXA
#_0AEB68: ASL A
#_0AEB69: ASL A
#_0AEB6A: TAX

#_0AEB6B: LDA.w $0215
#_0AEB6E: SEC
#_0AEB6F: SBC.b #$03
#_0AEB71: STA.w $0800,X

;---------------------------------------------------------------------------------------------------

#_0AEB74: LDA.w $0218
#_0AEB77: BEQ .on_screen

#_0AEB79: LDA.b #$F0
#_0AEB7B: BRA .continue

.on_screen
#_0AEB7D: LDA.w $0217

;---------------------------------------------------------------------------------------------------

.continue
#_0AEB80: SEC
#_0AEB81: SBC.b #$03
#_0AEB83: STA.w $0801,X

#_0AEB86: LDA.b $1A
#_0AEB88: AND.b #$0C
#_0AEB8A: LSR A
#_0AEB8B: LSR A
#_0AEB8C: TAY

#_0AEB8D: LDA.w .tile
#_0AEB90: STA.w $0802,X

#_0AEB93: LDA.w .prop,Y
#_0AEB96: STA.w $0803,X

#_0AEB99: RTS

;===================================================================================================

pool DungeonMap_DrawLocationMarker

.offset_x
#_0AEB9A: db  -9 ; top left
#_0AEB9B: db   8 ; top right
#_0AEB9C: db  -9 ; bottom left
#_0AEB9D: db   8 ; bottom right

.offset_y
#_0AEB9E: db  -8 ; top left
#_0AEB9F: db  -8 ; top right
#_0AEBA0: db   9 ; bottom left
#_0AEBA1: db   9 ; bottom right

.props
#_0AEBA2: db $F1 ; top left
#_0AEBA3: db $B1 ; top right
#_0AEBA4: db $71 ; bottom left
#_0AEBA5: db $31 ; bottom right

.palette_flash
#_0AEBA6: db $0C, $0C
#_0AEBA8: db $08, $0A

.unsued
#_0AEBAA: dw $0000, $0060, $00C0, $0120
#_0AEBB2: dw $0180, $01E0, $0240

pool off

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawLocationMarker:
#_0AEBB8: LDY.b #$03

.next_object
#_0AEBBA: LDA.b $00
#_0AEBBC: TAX

#_0AEBBD: LDA.b #$02
#_0AEBBF: STA.w $0A20,X

#_0AEBC2: TXA
#_0AEBC3: ASL A
#_0AEBC4: ASL A
#_0AEBC5: TAX

#_0AEBC6: LDA.w $0215
#_0AEBC9: AND.b #$F0
#_0AEBCB: CLC
#_0AEBCC: ADC.w .offset_x,Y
#_0AEBCF: STA.w $0800,X

#_0AEBD2: PHY

#_0AEBD3: LDA.b $0E
#_0AEBD5: ASL A
#_0AEBD6: TAY

#_0AEBD7: LDA.w $0CF5
#_0AEBDA: CLC
#_0AEBDB: ADC.w DungeonMapRoomMarkerYBase,Y
#_0AEBDE: STA.b $0F

#_0AEBE0: PLY

#_0AEBE1: CLC
#_0AEBE2: ADC.w .offset_y,Y
#_0AEBE5: STA.w $0801,X

#_0AEBE8: STZ.w $0802,X

#_0AEBEB: LDA.w .props,Y
#_0AEBEE: STA.b $0C

#_0AEBF0: PHY

#_0AEBF1: LDA.b $1A
#_0AEBF3: LSR A
#_0AEBF4: LSR A
#_0AEBF5: AND.b #$01
#_0AEBF7: TAY

#_0AEBF8: INC.b $0F

#_0AEBFA: LDA.w $0217
#_0AEBFD: INC A
#_0AEBFE: AND.b #$F0
#_0AEC00: CMP.b $0F
#_0AEC02: BNE .use_set_a

#_0AEC04: LDA.w $0218
#_0AEC07: BNE .use_set_a

#_0AEC09: INY
#_0AEC0A: INY

.use_set_a
#_0AEC0B: LDA.b $0C
#_0AEC0D: ORA.w .palette_flash,Y
#_0AEC10: STA.w $0803,X

#_0AEC13: PLY

#_0AEC14: INC.b $00

#_0AEC16: DEY
#_0AEC17: BPL .next_object

#_0AEC19: RTS

;===================================================================================================

DungeonMap_DrawFloorNumberObjects:
#_0AEC1A: REP #$10

#_0AEC1C: LDX.w $040C

#_0AEC1F: LDA.w DungeonMapFloorCountData,X
#_0AEC22: PHA

; floors above ground
#_0AEC23: LSR A
#_0AEC24: LSR A
#_0AEC25: LSR A
#_0AEC26: LSR A
#_0AEC27: STA.b $02

; floors below ground
#_0AEC29: PLA
#_0AEC2A: AND.b #$0F
#_0AEC2C: STA.b $03

#_0AEC2E: SEP #$10

#_0AEC30: LDY.b #$07

; if 8 floors total, just go
#_0AEC32: LDA.b $02
#_0AEC34: CLC
#_0AEC35: ADC.b $03
#_0AEC37: CMP.b #$08
#_0AEC39: BEQ .start_draw

; if >=4 above, just go
#_0AEC3B: LDA.b $02
#_0AEC3D: CMP.b #$04
#_0AEC3F: BPL .start_draw

#_0AEC41: DEY

#_0AEC42: LDX.b #$03
#_0AEC44: STX.b $04

.count_floors_above
#_0AEC46: CMP.b $04
#_0AEC48: BEQ .done_floors_above

#_0AEC4A: DEY
#_0AEC4B: DEC.b $04
#_0AEC4D: BNE .count_floors_above

.done_floors_above
#_0AEC4F: LDA.b $03
#_0AEC51: CMP.b #$05
#_0AEC53: BMI .start_draw

#_0AEC55: LDX.b #$05
#_0AEC57: STX.b $04

.count_floors_below
#_0AEC59: CMP.b $04
#_0AEC5B: BEQ .start_draw

#_0AEC5D: INY

#_0AEC5E: INC.b $04
#_0AEC60: CMP.b #$08
#_0AEC62: BNE .count_floors_below

;---------------------------------------------------------------------------------------------------

.start_draw
#_0AEC64: LDA.w FloorIconOffsetY,Y
#_0AEC67: INC A
#_0AEC68: STA.b $04

#_0AEC6A: DEC.b $02

#_0AEC6C: LDA.b $03
#_0AEC6E: EOR.b #$FF
#_0AEC70: INC A
#_0AEC71: STA.b $03

;---------------------------------------------------------------------------------------------------

.next
#_0AEC73: LDX.b $00

#_0AEC75: LDA.b #$00
#_0AEC77: STA.w $0A20,X
#_0AEC7A: STA.w $0A21,X

#_0AEC7D: TXA
#_0AEC7E: ASL A
#_0AEC7F: ASL A
#_0AEC80: TAX

#_0AEC81: LDA.b #$30
#_0AEC83: STA.w $0800,X

#_0AEC86: LDA.b #$38
#_0AEC88: STA.w $0804,X

#_0AEC8B: LDA.b $04
#_0AEC8D: STA.w $0801,X
#_0AEC90: STA.w $0805,X

#_0AEC93: CLC
#_0AEC94: ADC.b #$10
#_0AEC96: STA.b $04

#_0AEC98: LDA.b #$3D
#_0AEC9A: STA.w $0803,X
#_0AEC9D: STA.w $0807,X

#_0AECA0: LDA.b #$1C
#_0AECA2: STA.w $0802,X

#_0AECA5: LDA.b #$1D
#_0AECA7: STA.w $0806,X

#_0AECAA: LDY.b $02
#_0AECAC: BMI .negative

#_0AECAE: LDA.w FloorNumberOAMChar,Y
#_0AECB1: STA.w $0802,X

#_0AECB4: BRA .to_next

.negative
#_0AECB6: TYA
#_0AECB7: EOR.b #$FF
#_0AECB9: TAY

#_0AECBA: LDA.w FloorNumberOAMChar,Y
#_0AECBD: STA.w $0806,X

.to_next
#_0AECC0: INC.b $00
#_0AECC2: INC.b $00

#_0AECC4: DEC.b $02

#_0AECC6: LDA.b $02
#_0AECC8: INC A
#_0AECC9: CMP.b $03
#_0AECCB: BNE .next

#_0AECCD: RTS

;===================================================================================================

FloorIconOffsetY:
#_0AECCE: db $BB ; distance scrolled indexes this table
#_0AECCF: db $AB
#_0AECD0: db $9B
#_0AECD1: db $8B
#_0AECD2: db $7B
#_0AECD3: db $6B
#_0AECD4: db $5B
#_0AECD5: db $4B

;---------------------------------------------------------------------------------------------------

FloorNumberOAMChar:
#_0AECD6: db $1E ; 1
#_0AECD7: db $1F ; 2
#_0AECD8: db $20 ; 3
#_0AECD9: db $21 ; 4
#_0AECDA: db $22 ; 5
#_0AECDB: db $23 ; 6
#_0AECDC: db $24 ; 7
#_0AECDD: db $25 ; 8

;---------------------------------------------------------------------------------------------------

FloorNumberBlinkProps:
#_0AECDE: db $3D

;===================================================================================================

DungeonMap_DrawFloorBlinker:
#_0AECDF: LDA.b $00
#_0AECE1: STA.b $05

#_0AECE3: LDA.w $020E
#_0AECE6: STA.b $03

#_0AECE8: LDY.b #$00

#_0AECEA: REP #$10

#_0AECEC: LDX.w $040C

; floors above ground
#_0AECEF: LDA.w DungeonMapFloorCountData,X
#_0AECF2: LSR A ; /16
#_0AECF3: LSR A
#_0AECF4: LSR A
#_0AECF5: LSR A
#_0AECF6: STA.b $02

#_0AECF8: LDA.w DungeonMapFloorCountData,X
#_0AECFB: AND.b #$0F

#_0AECFD: SEP #$10

#_0AECFF: CLC
#_0AED00: ADC.b $02
#_0AED02: CMP.b #$01
#_0AED04: BEQ .has_floors

#_0AED06: INC.b $05
#_0AED08: INC.b $05

#_0AED0A: DEC.b $03

#_0AED0C: LDY.b #$01

.has_floors
#_0AED0E: STY.b $02

;---------------------------------------------------------------------------------------------------

.next_check
#_0AED10: LDX.b $02

#_0AED12: LDA.w FloorNumberBlinkProps
#_0AED15: STA.b $0E,X

#_0AED17: REP #$10

#_0AED19: LDX.w $040C

#_0AED1C: LDA.w DungeonMapFloorCountData,X
#_0AED1F: AND.b #$0F
#_0AED21: STA.b $01

#_0AED23: CLC
#_0AED24: ADC.b $03
#_0AED26: STA.b $00

#_0AED28: LDA.b #$04
#_0AED2A: SEC
#_0AED2B: SBC.b $01
#_0AED2D: BMI .to_next

#_0AED2F: CLC
#_0AED30: ADC.b $00
#_0AED32: STA.b $00

#_0AED34: LDA.w DungeonMapFloorCountData,X
#_0AED37: LSR A ; /16
#_0AED38: LSR A
#_0AED39: LSR A
#_0AED3A: LSR A
#_0AED3B: SEC
#_0AED3C: SBC.b #$04
#_0AED3E: BMI .to_next

#_0AED40: SEC
#_0AED41: SBC.b $00
#_0AED43: EOR.b #$FF
#_0AED45: INC A
#_0AED46: STA.b $00

.to_next
#_0AED48: SEP #$10

#_0AED4A: DEC.b $05
#_0AED4C: DEC.b $05

#_0AED4E: INC.b $03

#_0AED50: DEC.b $02
#_0AED52: BMI .check_for_blinking

#_0AED54: BRL .next_check

;---------------------------------------------------------------------------------------------------

.check_for_blinking
#_0AED57: LDA.b $1A
#_0AED59: AND.b #$10
#_0AED5B: BNE .blink_on

#_0AED5D: RTS

;---------------------------------------------------------------------------------------------------

.oam_data_offset
#_0AED5E: db $00, $08

.char
#_0AED60: db $37, $38, $38, $37

;---------------------------------------------------------------------------------------------------
; Draws 8 objects for each floor level box to highlight
;---------------------------------------------------------------------------------------------------
.blink_on
#_0AED64: LDY.b $00

#_0AED66: LDA.w FloorIconOffsetY,Y
#_0AED69: SEC
#_0AED6A: SBC.b #$04
#_0AED6C: STA.b $02

#_0AED6E: CLC
#_0AED6F: ADC.b #$10
#_0AED71: STA.b $03

#_0AED73: LDY.b #$00

#_0AED75: REP #$10

#_0AED77: LDX.w $040C

#_0AED7A: LDA.w DungeonMapFloorCountData,X
#_0AED7D: LSR A ; /16
#_0AED7E: LSR A
#_0AED7F: LSR A
#_0AED80: LSR A
#_0AED81: STA.b $0D

#_0AED83: LDA.w DungeonMapFloorCountData,X
#_0AED86: AND.b #$0F

#_0AED88: SEP #$10

#_0AED8A: CLC
#_0AED8B: ADC.b $0D
#_0AED8D: CMP.b #$01
#_0AED8F: BEQ .only_one_floor

#_0AED91: LDY.b #$01

.only_one_floor
#_0AED93: STY.b $0D

;---------------------------------------------------------------------------------------------------

.next_floor_box
#_0AED95: LDA.b #$28
#_0AED97: STA.b $01

#_0AED99: LDA.b #$03
#_0AED9B: STA.b $0C

#_0AED9D: LDX.b $0D

#_0AED9F: LDA.w .oam_data_offset,X
#_0AEDA2: TAY

.next_highlight
#_0AEDA3: LDA.b #$00
#_0AEDA5: STA.w $0A60,Y
#_0AEDA8: STA.w $0A64,Y

#_0AEDAB: PHY

#_0AEDAC: TYA
#_0AEDAD: ASL A
#_0AEDAE: ASL A
#_0AEDAF: TAY

#_0AEDB0: LDA.b $01
#_0AEDB2: STA.w $0900,Y
#_0AEDB5: STA.w $0910,Y

#_0AEDB8: LDA.b $02,X
#_0AEDBA: STA.w $0901,Y

#_0AEDBD: CLC
#_0AEDBE: ADC.b #$08
#_0AEDC0: STA.w $0911,Y

#_0AEDC3: PHX

#_0AEDC4: LDX.b $0C

#_0AEDC6: LDA.w .char,X
#_0AEDC9: STA.w $0902,Y
#_0AEDCC: STA.w $0912,Y

#_0AEDCF: PLX

#_0AEDD0: PHY

#_0AEDD1: LDA.b $0E,X

#_0AEDD3: LDY.b $0C
#_0AEDD5: BNE .no_hflip

#_0AEDD7: ORA.b #$40

.no_hflip
#_0AEDD9: PLY
#_0AEDDA: STA.w $0903,Y

#_0AEDDD: ORA.b #$80
#_0AEDDF: STA.w $0913,Y

#_0AEDE2: PLY
#_0AEDE3: INY

#_0AEDE4: LDA.b $01
#_0AEDE6: CLC
#_0AEDE7: ADC.b #$08
#_0AEDE9: STA.b $01

#_0AEDEB: DEC.b $0C
#_0AEDED: BPL .next_highlight

#_0AEDEF: DEC.b $0D
#_0AEDF1: BPL .next_floor_box

#_0AEDF3: RTS

;===================================================================================================

DungeonMap_DrawBossIcon:
#_0AEDF4: REP #$10

#_0AEDF6: LDX.w $040C

#_0AEDF9: REP #$20

#_0AEDFB: PHX

#_0AEDFC: LDA.w DungeonMapBossRooms,X
#_0AEDFF: ASL A
#_0AEE00: TAX

#_0AEE01: SEP #$20

#_0AEE03: LDA.l $7EF001,X
#_0AEE07: PLX

#_0AEE08: AND.b #$08
#_0AEE0A: BNE .exit_a

#_0AEE0C: REP #$20

#_0AEE0E: LDA.l $7EF364
#_0AEE12: AND.l DungeonMask,X

#_0AEE16: SEP #$20

#_0AEE18: BEQ .exit_a

#_0AEE1A: LDA.w DungeonMap_BossRoomFloor+1,X
#_0AEE1D: BPL .draw_a_skull

.exit_a
#_0AEE1F: SEP #$10

#_0AEE21: RTS

;---------------------------------------------------------------------------------------------------

.draw_a_skull
#_0AEE22: PHX

#_0AEE23: JSR DungeonMap_DrawBossIconByFloor

#_0AEE26: PLX

#_0AEE27: SEP #$10

#_0AEE29: LDA.b $1A
#_0AEE2B: AND.b #$0F
#_0AEE2D: CMP.b #$0A
#_0AEE2F: BCS .exit_b

;---------------------------------------------------------------------------------------------------

#_0AEE31: LDY.b $00

#_0AEE33: LDA.b #$00
#_0AEE35: STA.w $0A20,Y

#_0AEE38: TYA
#_0AEE39: ASL A
#_0AEE3A: ASL A
#_0AEE3B: TAY

#_0AEE3C: LDA.w .offsets+1,X
#_0AEE3F: CLC
#_0AEE40: ADC.w $0FA8

#_0AEE43: CLC
#_0AEE44: ADC.b #$90
#_0AEE46: STA.w $0800,Y

#_0AEE49: LDA.w $0FAB
#_0AEE4C: BEQ .on_screen

#_0AEE4E: LDA.b #$F0
#_0AEE50: BRA .continue

;---------------------------------------------------------------------------------------------------

.on_screen
#_0AEE52: LDA.w .offsets+0,X
#_0AEE55: CLC
#_0AEE56: ADC.w $0FAA

.continue
#_0AEE59: STA.w $0801,Y

#_0AEE5C: LDA.w DungeonMap_BossSkull_char
#_0AEE5F: STA.w $0802,Y

#_0AEE62: LDA.w DungeonMap_BossSkull_prop
#_0AEE65: STA.w $0803,Y

#_0AEE68: INC.b $00

.exit_b
#_0AEE6A: RTS

;===================================================================================================

#DungeonMap_BossSkull_char:
#_0AEE6B: db $31

#DungeonMap_BossSkull_prop:
#_0AEE6C: db $33

;===================================================================================================

.offsets
#_0AEE6D: db $FF, $FF, $FF, $FF
#_0AEE71: db $08, $08, $08, $00
#_0AEE75: db $00, $00, $08, $00
#_0AEE79: db $08, $08, $08, $00
#_0AEE7D: db $08, $08, $00, $08
#_0AEE81: db $04, $04, $08, $08
#_0AEE85: db $08, $00, $08, $00

;===================================================================================================

DungeonMap_BossRoomFloor:
#_0AEE89: dw $FFFF ; Sewers
#_0AEE8B: dw $FFFF ; Hyrule Castle
#_0AEE8D: dw $0001 ; Eastern Palace
#_0AEE8F: dw $0001 ; Desert Palace
#_0AEE91: dw $0006 ; Agahnim's Tower
#_0AEE93: dw $00FF ; Swamp Palace
#_0AEE95: dw $00FF ; Palace of Darkness
#_0AEE97: dw $00FF ; Misery Mire
#_0AEE99: dw $00FE ; Skull Woods
#_0AEE9B: dw $00F9 ; Ice Palace
#_0AEE9D: dw $0005 ; Tower of Hera
#_0AEE9F: dw $00FF ; Thieves' Town
#_0AEEA1: dw $00FD ; Turtle Rock
#_0AEEA3: dw $0006 ; Ganon's Tower

;===================================================================================================

DungeonMap_DrawBossIconByFloor:
#_0AEEA5: LDA.w DungeonMapFloorCountData,X
#_0AEEA8: AND.b #$0F
#_0AEEAA: STA.b $02

#_0AEEAC: CLC
#_0AEEAD: ADC.w DungeonMap_BossRoomFloor+0,X
#_0AEEB0: STA.b $03

#_0AEEB2: LDA.b #$04
#_0AEEB4: SEC
#_0AEEB5: SBC.b $02
#_0AEEB7: BMI .floor_is_fine

#_0AEEB9: CLC
#_0AEEBA: ADC.b $03
#_0AEEBC: STA.b $03

#_0AEEBE: LDA.w DungeonMapFloorCountData,X

#_0AEEC1: LSR A ; /16
#_0AEEC2: LSR A
#_0AEEC3: LSR A
#_0AEEC4: LSR A

#_0AEEC5: SEC
#_0AEEC6: SBC.b #$04
#_0AEEC8: BMI .floor_is_fine

#_0AEECA: SEC
#_0AEECB: SBC.b $03

#_0AEECD: EOR.b #$FF
#_0AEECF: INC A
#_0AEED0: STA.b $03

;---------------------------------------------------------------------------------------------------

.floor_is_fine
#_0AEED2: SEP #$10

#_0AEED4: LDA.b $1A
#_0AEED6: AND.b #$0F
#_0AEED8: CMP.b #$0A
#_0AEEDA: BCS .exit

#_0AEEDC: LDX.b $00

#_0AEEDE: LDA.b #$00
#_0AEEE0: STA.w $0A20,X

#_0AEEE3: TXA
#_0AEEE4: ASL A
#_0AEEE5: ASL A
#_0AEEE6: TAX

#_0AEEE7: LDA.w DrawBossIconByFloor_position_x
#_0AEEEA: STA.w $0800,X

#_0AEEED: LDY.b $03

#_0AEEEF: LDA.w FloorIconOffsetY,Y
#_0AEEF2: STA.w $0801,X

#_0AEEF5: LDA.w DungeonMap_BossSkull_char
#_0AEEF8: STA.w $0802,X

#_0AEEFB: LDA.w DungeonMap_BossSkull_prop
#_0AEEFE: STA.w $0803,X

#_0AEF01: INC.b $00

.exit
#_0AEF03: REP #$10

#_0AEF05: RTS

;===================================================================================================
; Appears completely unused
;===================================================================================================
Module0E_03_04_UnusedCrazyScroll:
#_0AEF06: REP #$30

#_0AEF08: LDA.w $0213
#_0AEF0B: CLC
#_0AEF0C: ADC.b $E8
#_0AEF0E: STA.b $E8

#_0AEF10: LDA.w $0213
#_0AEF13: EOR.w #$FFFF
#_0AEF16: INC A

#_0AEF17: CLC
#_0AEF18: ADC.w $0217
#_0AEF1B: STA.w $0217

#_0AEF1E: SEP #$30

#_0AEF20: DEC.w $0205
#_0AEF23: BNE .exit

#_0AEF25: DEC.w $0200

.exit
#_0AEF28: RTL

;===================================================================================================

UnderworldMap_RecoverGFX:
#_0AEF29: LDA.b $9B
#_0AEF2B: PHA

#_0AEF2C: STZ.w HDMAENABLE
#_0AEF2F: STZ.b $9B

#_0AEF31: JSL EraseTileMaps_normal

;---------------------------------------------------------------------------------------------------

#_0AEF35: LDA.l $7EC211
#_0AEF39: STA.b $1C

#_0AEF3B: LDA.l $7EC212
#_0AEF3F: STA.l $00001D

#_0AEF43: LDA.l $7EC20E
#_0AEF47: STA.w $0AA1

#_0AEF4A: LDA.l $7EC20F
#_0AEF4E: STA.w $0AA3

#_0AEF51: LDA.l $7EC210
#_0AEF55: STA.w $0AA2

#_0AEF58: JSL InitializeTilesets

#_0AEF5C: STZ.w $0AA9
#_0AEF5F: STZ.w $0AB2

#_0AEF62: JSL RebuildHUD_long2

#_0AEF66: STZ.w $0418
#_0AEF69: STZ.w $045C

.next_quadrant
#_0AEF6C: JSL WaterFlood_BuildOneQuadrantForVRAM
#_0AEF70: JSL NMI_UploadTilemap_long

#_0AEF74: JSL Underworld_PrepareNextRoomQuadrantUpload
#_0AEF78: JSL NMI_UploadTilemap_long

#_0AEF7C: LDA.w $045C
#_0AEF7F: CMP.b #$10
#_0AEF81: BNE .next_quadrant

#_0AEF83: STZ.b $17
#_0AEF85: STZ.b $B0

#_0AEF87: PLA
#_0AEF88: STA.b $9B

;---------------------------------------------------------------------------------------------------

#_0AEF8A: REP #$20

#_0AEF8C: LDX.b #$00

.copy_next_color
#_0AEF8E: LDA.l $7FDD80,X
#_0AEF92: STA.l $7EC500,X

#_0AEF96: LDA.l $7FDE00,X
#_0AEF9A: STA.l $7EC580,X

#_0AEF9E: LDA.l $7FDE80,X
#_0AEFA2: STA.l $7EC600,X

#_0AEFA6: LDA.l $7FDF00,X
#_0AEFAA: STA.l $7EC680,X

#_0AEFAE: INX
#_0AEFAF: INX
#_0AEFB0: CPX.b #$80
#_0AEFB2: BNE .copy_next_color

;---------------------------------------------------------------------------------------------------

#_0AEFB4: SEP #$20

#_0AEFB6: LDA.l $7EC017
#_0AEFBA: TSB.b $9C
#_0AEFBC: TSB.b $9D
#_0AEFBE: TSB.b $9E

#_0AEFC0: LDA.b #!SFX3_10
#_0AEFC2: STA.w $012F

#_0AEFC5: LDA.b #!SONG_F3_MAXVOL
#_0AEFC7: STA.w $012C

#_0AEFCA: JSL RecoverPegGFXFromMapping

#_0AEFCE: INC.b $15
#_0AEFD0: INC.w $0200

#_0AEFD3: STZ.b $13
#_0AEFD5: STZ.w $0710

#_0AEFD8: RTL

;===================================================================================================

ToggleStarTilesAndAdvance:
#_0AEFD9: JSL ToggleStarTileGraphics

#_0AEFDD: INC.w $0200

#_0AEFE0: RTL

;===================================================================================================
; Tiles to use for gradient fill
;===================================================================================================
DungeonMap_BackdropFloorGradientTiles:
#_0AEFE1: dw $1B28, $1B29, $1B2A, $1B2B, $1B2C, $1B2D

;===================================================================================================
; Some good ol stripes for the mountain backdrop
;===================================================================================================
DungeonMap_MountainStripes:
#_0AEFED: dw $1B2E ; some straggler/placeholder? this gets overwritten later

#_0AEFEF: dw VRAMaddrBE($2154), $0100 ; 2 bytes | Horizontal
#_0AEFF3: dw $1B2F

#_0AEFF5: dw VRAMaddrBE($2192), $0300 ; 4 bytes | Horizontal
#_0AEFF9: dw $1B2F, $1B2E

#_0AEFFD: dw VRAMaddrBE($21CA), $0B00 ; 12 bytes | Horizontal
#_0AF001: dw $1B2F, $1B2E, $5B2F, $1B2F, $1B2E, $1B2E

#_0AF00D: dw VRAMaddrBE($2206), $0100 ; 2 bytes | Horizontal
#_0AF011: dw $1B2F

#_0AF013: dw VRAMaddrBE($2208), $0C40 ; 14 bytes | Fixed horizontal
#_0AF017: dw $1B2E

;===================================================================================================
; Which characters to draw for which quadrant
;===================================================================================================
DungeonMap_RoomTemplates:

;---------------------------------------------------------------------------------------------------
; Sewers
;---------------------------------------------------------------------------------------------------
#_0AF019: dw $0B61, $5361, $8B61, $8B62 ; 0x00 - Room 0011
#_0AF021: dw $0B60, $0B63, $8B60, $0B64 ; 0x01 - Room 0021
#_0AF029: dw $0B00, $0B00, $0B65, $0B66 ; 0x02 - Room 0022
#_0AF031: dw $0B67, $4B67, $9367, $D367 ; 0x03 - Room 0032
#_0AF039: dw $0B60, $5360, $8B60, $CB60 ; 0x04 - Room 0002
#_0AF041: dw $0B6A, $4B6A, $4B6D, $0B6D ; 0x05 - Room 0012
#_0AF049: dw $1368, $1369, $0B00, $0B00 ; 0x06 - Room 0042
#_0AF051: dw $0B6A, $136B, $0B6C, $0B6D ; 0x07 - Room 0041

;---------------------------------------------------------------------------------------------------
; Hyrule Castle
;---------------------------------------------------------------------------------------------------
#_0AF059: dw $136E, $4B6E, $0B00, $0B00 ; 0x08 - Room 0080
#_0AF061: dw $136F, $0B00, $0B00, $0B00 ; 0x09 - Room 0070
#_0AF069: dw $1340, $0B00, $0B78, $1744 ; 0x0A - Room 0071
#_0AF071: dw $536D, $136D, $4B76, $0B76 ; 0x0B - Room 0072
#_0AF079: dw $0B70, $0B71, $0B72, $8B71 ; 0x0C - Room 0081
#_0AF081: dw $0B75, $0B76, $8B75, $8B76 ; 0x0D - Room 0082
#_0AF089: dw $0B00, $0B53, $0B00, $0B55 ; 0x0E - Room 0050
#_0AF091: dw $1354, $5354, $0B00, $0B00 ; 0x0F - Room 0001
#_0AF099: dw $4B53, $0B00, $0B56, $0B57 ; 0x10 - Room 0052
#_0AF0A1: dw $0B00, $0B59, $0B00, $135E ; 0x11 - Room 0060
#_0AF0A9: dw $135A, $135B, $135F, $535F ; 0x12 - Room 0061
#_0AF0B1: dw $0B5C, $0B5D, $535E, $CB58 ; 0x13 - Room 0062
#_0AF0B9: dw $0B50, $4B50, $1352, $5352 ; 0x14 - Room 0051

;---------------------------------------------------------------------------------------------------
; Eastern Palace
;---------------------------------------------------------------------------------------------------
#_0AF0C1: dw $0B00, $0B40, $1345, $0B46 ; 0x15 - Room 0099
#_0AF0C9: dw $8B42, $0B47, $0B42, $0B49 ; 0x16 - Room 00A8
#_0AF0D1: dw $1348, $5348, $174A, $574A ; 0x17 - Room 00A9
#_0AF0D9: dw $4B47, $CB42, $4B49, $4B42 ; 0x18 - Room 00AA
#_0AF0E1: dw $0B00, $0B4B, $0B00, $0B4D ; 0x19 - Room 00B8
#_0AF0E9: dw $0B4C, $4B4C, $0B4E, $4B4E ; 0x1A - Room 00B9
#_0AF0F1: dw $0B51, $0B44, $0B00, $0B00 ; 0x1B - Room 00BA
#_0AF0F9: dw $0B4F, $4B4F, $934F, $D34F ; 0x1C - Room 00C9
#_0AF101: dw $0B00, $0B00, $0B00, $0B40 ; 0x1D - Room 00C8
#_0AF109: dw $0B00, $0B41, $0B00, $0B42 ; 0x1E - Room 00D8
#_0AF111: dw $0B00, $0B00, $0B43, $0B43 ; 0x1F - Room 00D9
#_0AF119: dw $0B00, $0B00, $9344, $0B00 ; 0x20 - Room 00DA

;---------------------------------------------------------------------------------------------------
; Desert Palace
;---------------------------------------------------------------------------------------------------
#_0AF121: dw $1340, $0B00, $1341, $0B00 ; 0x21 - Room 0063
#_0AF129: dw $1740, $0B40, $0B42, $0B7D ; 0x22 - Room 0073
#_0AF131: dw $4B7A, $0B7A, $0B7E, $4B7E ; 0x23 - Room 0074
#_0AF139: dw $0B40, $8B4D, $4BBA, $0B55 ; 0x24 - Room 0076
#_0AF141: dw $0B40, $8B55, $1378, $CB53 ; 0x25 - Room 0083
#_0AF149: dw $4B76, $4B75, $13BB, $53BB ; 0x26 - Room 0084
#_0AF151: dw $4B7F, $4B42, $0B83, $13BC ; 0x27 - Room 0086
#_0AF159: dw $0B00, $0B00, $0B79, $0B00 ; 0x28 - Room 0033
#_0AF161: dw $0B6E, $4B7C, $0B00, $0B41 ; 0x29 - Room 0042
#_0AF169: dw $1340, $8B55, $0B42, $0B7B ; 0x2A - Room 0053

;---------------------------------------------------------------------------------------------------
; Agahnim's Tower
;---------------------------------------------------------------------------------------------------
#_0AF171: dw $8B42, $9344, $1341, $0B00 ; 0x2B - Room 00E0
#_0AF179: dw $0B53, $9344, $8B53, $9344 ; 0x2C - Room 00C0/Room 00D0
#_0AF181: dw $8B42, $9344, $0B42, $9344 ; 0x2D - Room 00B0
#_0AF189: dw $934D, $0B00, $8B53, $9344 ; 0x2E - Room 0040
#_0AF191: dw $0B00, $0B00, $0B40, $0B00 ; 0x2F - Room 0020
#_0AF199: dw $0B41, $0B00, $1384, $0B00 ; 0x30 - Room 0030

;---------------------------------------------------------------------------------------------------
; Swamp Palace
;---------------------------------------------------------------------------------------------------
#_0AF1A1: dw $0BB8, $13B9, $4B85, $CB7C ; 0x31 - Room 0066
#_0AF1A9: dw $0B87, $13B0, $4B7B, $9344 ; 0x32 - Room 0076
#_0AF1B1: dw $0B00, $0B00, $0B40, $0B00 ; 0x33 - Room 0006
#_0AF1B9: dw $0B91, $5391, $0B9C, $4B9C ; 0x34 - Room 0016
#_0AF1C1: dw $8B42, $1392, $0B93, $1394 ; 0x35 - Room 0026
#_0AF1C9: dw $0B95, $0B96, $9395, $8B96 ; 0x36 - Room 0034
#_0AF1D1: dw $0B97, $0B98, $8B97, $8B98 ; 0x37 - Room 0035
#_0AF1D9: dw $1799, $5799, $9799, $D799 ; 0x38 - Room 0036
#_0AF1E1: dw $4B98, $4B97, $CB98, $CB97 ; 0x39 - Room 0037
#_0AF1E9: dw $937B, $0B00, $0B7B, $0B00 ; 0x3A - Room 0038
#_0AF1F1: dw $0BA6, $4BA6, $CB7A, $8B7A ; 0x3B - Room 0046
#_0AF1F9: dw $0B8E, $4B8E, $938E, $CB8E ; 0x3C - Room 0054
#_0AF201: dw $934D, $0B8F, $1390, $5390 ; 0x3D - Room 0028

;---------------------------------------------------------------------------------------------------
; Palace of Darkness
;---------------------------------------------------------------------------------------------------
#_0AF209: dw $0B00, $0B00, $0B00, $8B48 ; 0x3E - Room 005A
#_0AF211: dw $0B00, $934E, $0B00, $8B4D ; 0x3F - Room 006A
#_0AF219: dw $8B72, $1346, $0B45, $0B46 ; 0x40 - Room 000B
#_0AF221: dw $5744, $1744, $0B00, $0B00 ; 0x41 - Room 000A
#_0AF229: dw $134D, $0B00, $8B54, $0B00 ; 0x42 - Room 003B
#_0AF231: dw $1349, $1349, $0B00, $0B00 ; 0x43 - Room 0009
#_0AF239: dw $0B4B, $8B48, $0B72, $4B72 ; 0x44 - Room 004B
#_0AF241: dw $0B00, $0B74, $0B00, $0BB0 ; 0x45 - Room 0019
#_0AF249: dw $0B71, $1747, $17AF, $0B4B ; 0x46 - Room 001A
#_0AF251: dw $0B6F, $1370, $0B4B, $0B00 ; 0x47 - Room 001B
#_0AF259: dw $0B6B, $8B6C, $8B6B, $0BAD ; 0x48 - Room 002A
#_0AF261: dw $0B73, $0B00, $13AE, $0B46 ; 0x49 - Room 002B
#_0AF269: dw $176B, $576B, $0B6A, $4B6A ; 0x4A - Room 003A
#_0AF271: dw $1368, $5368, $1369, $5369 ; 0x4B - Room 004A

;---------------------------------------------------------------------------------------------------
; Stray Turtle Rock rooms
;---------------------------------------------------------------------------------------------------
#_0AF279: dw $8B4E, $0B00, $9354, $0B00 ; 0x4C - Room 00D5
#_0AF281: dw $0B00, $0B00, $0B00, $5377 ; 0x4D - Room 0023

;---------------------------------------------------------------------------------------------------
; Misery Mire
;---------------------------------------------------------------------------------------------------
#_0AF289: dw $0B00, $974D, $0B00, $4B7B ; 0x4E - Room 0091
#_0AF291: dw $0B40, $8B4D, $0B51, $0B8D ; 0x4F - Room 0092
#_0AF299: dw $537A, $137A, $4B42, $8B40 ; 0x50 - Room 0093
#_0AF2A1: dw $0B00, $0B00, $0B00, $0B00 ; 0x51 - UNUSED
#_0AF2A9: dw $0B00, $0B00, $0B40, $0B00 ; 0x52 - Room 0090
#_0AF2B1: dw $CB7A, $576E, $0B00, $0B00 ; 0x53 - Room 00A0
#_0AF2B9: dw $0B6E, $0B9F, $0B00, $4BA5 ; 0x54 - Room 00A1
#_0AF2C1: dw $13A0, $13A1, $0BA2, $0BA3 ; 0x55 - Room 00A2
#_0AF2C9: dw $0BA4, $0B00, $0BA5, $0B00 ; 0x56 - Room 00A3
#_0AF2D1: dw $0B40, $8B55, $0B42, $CB87 ; 0x57 - Room 00B1
#_0AF2D9: dw $8B95, $0BA7, $8B42, $0BAF ; 0x58 - Room 00B2
#_0AF2E1: dw $4B78, $0B00, $4B78, $0B00 ; 0x59 - Room 00B3
#_0AF2E9: dw $8B42, $0B51, $0B78, $8B51 ; 0x5A - Room 00C1
#_0AF2F1: dw $0BA8, $0BA9, $0BAC, $8BA9 ; 0x5B - Room 00C2
#_0AF2F9: dw $0BAA, $17AB, $13B4, $8BAB ; 0x5C - Room 00C3
#_0AF301: dw $17B1, $0B41, $4B44, $4B42 ; 0x5D - Room 00D1
#_0AF309: dw $0B00, $0BAD, $0B00, $13AE ; 0x5E - Room 00D2
#_0AF311: dw $1340, $0BB7, $0B42, $0BB6 ; 0x5F - Room 0097
#_0AF319: dw $0B00, $0B00, $139D, $139E ; 0x60 - Room 0098

;---------------------------------------------------------------------------------------------------
; Skull Woods
;---------------------------------------------------------------------------------------------------
#_0AF321: dw $0B00, $0B00, $0B00, $0B79 ; 0x61 - Room 0029
#_0AF329: dw $0B00, $0B00, $8B42, $0B86 ; 0x62 - Room 0039
#_0AF331: dw $0B42, $8B7B, $8B42, $0B7B ; 0x63 - Room 0049
#_0AF339: dw $0B87, $8B7B, $9387, $0B7B ; 0x64 - Room 0059
#_0AF341: dw $0B40, $13B3, $1378, $0B8D ; 0x65 - Room 0056
#_0AF349: dw $8B42, $0B88, $5378, $0B40 ; 0x66 - Room 0057
#_0AF351: dw $4B44, $D342, $97B5, $4B78 ; 0x67 - Room 0058
#_0AF359: dw $13B3, $8B55, $4B7B, $0B8D ; 0x68 - Room 0067
#_0AF361: dw $0B89, $138A, $0B8B, $0B8C ; 0x69 - Room 0068

;---------------------------------------------------------------------------------------------------
; Ice Palace
;---------------------------------------------------------------------------------------------------
#_0AF369: dw $0B00, $0B7C, $0B00, $0B00 ; 0x6A - Room 00DE
#_0AF371: dw $0B00, $9348, $0B00, $0B56 ; 0x6B - Room 00BE
#_0AF379: dw $0B00, $0B00, $0B88, $0B00 ; 0x6C - Room 00BF
#_0AF381: dw $0B00, $0B48, $0B00, $0B00 ; 0x6D - Room 00CE
#_0AF389: dw $0B00, $9348, $1786, $0B65 ; 0x6E - Room 009E
#_0AF391: dw $0B00, $0B00, $CB5A, $0B00 ; 0x6F - Room 009F
#_0AF399: dw $0B00, $5388, $0B00, $0B00 ; 0x70 - Room 00AE
#_0AF3A1: dw $4B5A, $0B00, $0B00, $0B00 ; 0x71 - Room 00AF
#_0AF3A9: dw $0B00, $CB5B, $13AB, $0BAC ; 0x72 - Room 007E
#_0AF3B1: dw $CB5A, $0B00, $137E, $0B00 ; 0x73 - Room 007F
#_0AF3B9: dw $0B00, $137E, $0B00, $0B00 ; 0x74 - Room 008E
#_0AF3C1: dw $0B00, $8B48, $1783, $1384 ; 0x75 - Room 005E
#_0AF3C9: dw $0B00, $0B00, $1385, $0B00 ; 0x76 - Room 005F
#_0AF3D1: dw $0B00, $537E, $0B00, $0B00 ; 0x77 - Room 006E
#_0AF3D9: dw $0B00, $8B48, $0B43, $CB43 ; 0x78 - Room 003E
#_0AF3E1: dw $0B00, $0B00, $1379, $137A ; 0x79 - Room 003F
#_0AF3E9: dw $0B5A, $137B, $0B00, $0B00 ; 0x7A - Room 004E
#_0AF3F1: dw $0B00, $8B48, $137F, $1380 ; 0x7B - Room 001E
#_0AF3F9: dw $0B00, $0B00, $1381, $1382 ; 0x7C - Room 001F
#_0AF401: dw $0B00, $0B48, $0B00, $0B00 ; 0x7D - Room 002E
#_0AF409: dw $0B00, $0B00, $1387, $1377 ; 0x7E - Room 000E

;---------------------------------------------------------------------------------------------------
; Tower of Hera
;---------------------------------------------------------------------------------------------------
#_0AF411: dw $5746, $0B47, $1349, $0B48 ; 0x7F - Room 0087
#_0AF419: dw $1375, $4B42, $174A, $574A ; 0x80 - Room 0077
#_0AF421: dw $0B43, $1344, $0B45, $1746 ; 0x81 - Room 0031
#_0AF429: dw $1742, $5742, $8B42, $CB42 ; 0x82 - Room 0027
#_0AF431: dw $1375, $5375, $8B42, $CB42 ; 0x83 - Room 0017
#_0AF439: dw $4B40, $1340, $0B41, $4B41 ; 0x84 - Room 0007

;---------------------------------------------------------------------------------------------------
; Thieves' Town
;---------------------------------------------------------------------------------------------------
#_0AF441: dw $4B46, $0B71, $1786, $8B71 ; 0x85 - Room 0044
#_0AF449: dw $1347, $0B4D, $0B65, $0B5B ; 0x86 - Room 0045
#_0AF451: dw $0B00, $0B00, $9348, $0B00 ; 0x87 - Room 00AB
#_0AF459: dw $0B00, $0B00, $0B00, $8B48 ; 0x88 - Room 00AC
#_0AF461: dw $4B66, $8B65, $4B5B, $0B65 ; 0x89 - Room 00BB
#_0AF469: dw $9365, $0B66, $0B63, $8B66 ; 0x8A - Room 00BC
#_0AF471: dw $4B51, $0B5F, $CB76, $0B60 ; 0x8B - Room 00CB
#_0AF479: dw $0B64, $4B4F, $4B60, $8B76 ; 0x8C - Room 00CC
#_0AF481: dw $4B76, $0B61, $D376, $1362 ; 0x8D - Room 00DB
#_0AF489: dw $4B61, $0B76, $CB58, $8B51 ; 0x8E - Room 00DC
#_0AF491: dw $0B00, $0B00, $5746, $0B5E ; 0x8F - Room 0064
#_0AF499: dw $0B00, $0B00, $0B5E, $0B46 ; 0x90 - Room 0065

;---------------------------------------------------------------------------------------------------
; Turtle Rock
;---------------------------------------------------------------------------------------------------
#_0AF4A1: dw $0B00, $0B00, $8B48, $0B00 ; 0x91 - Room 00A4
#_0AF4A9: dw $0B4F, $0B51, $CB76, $8B76 ; 0x92 - Room 00B4
#_0AF4B1: dw $5351, $0B51, $8B4F, $8B51 ; 0x93 - Room 00B5
#_0AF4B9: dw $4B76, $0B76, $CB51, $8B58 ; 0x94 - Room 00C4
#_0AF4C1: dw $0B54, $0B00, $8B66, $0B00 ; 0x95 - Room 00C5
#_0AF4C9: dw $9348, $8B48, $0B56, $4B45 ; 0x96 - Room 0004
#_0AF4D1: dw $0B00, $0B57, $0B00, $0B59 ; 0x97 - Room 0013
#_0AF4D9: dw $4B50, $0B58, $CB50, $8B50 ; 0x98 - Room 0014
#_0AF4E1: dw $5758, $1751, $CB58, $8B51 ; 0x99 - Room 0015
#_0AF4E9: dw $0B56, $4B56, $0B65, $5756 ; 0x9A - Room 0024
#_0AF4F1: dw $9348, $8B48, $0B4C, $0B4B ; 0x9B - Room 00B6
#_0AF4F9: dw $0B4D, $0B00, $8B54, $0B00 ; 0x9C - Room 00B7
#_0AF501: dw $0B4F, $0B50, $8B4F, $8B50 ; 0x9D - Room 00C6
#_0AF509: dw $4B50, $0B51, $CB58, $8B51 ; 0x9E - Room 00C7
#_0AF511: dw $0B52, $0B54, $0B53, $9354 ; 0x9F - Room 00D6

;---------------------------------------------------------------------------------------------------
; Ganon's Tower
;---------------------------------------------------------------------------------------------------
#_0AF519: dw $9748, $9748, $138D, $138E ; 0xA0 - Room 001C
#_0AF521: dw $1391, $1392, $138C, $138F ; 0xA1 - Room 007B
#_0AF529: dw $1393, $1390, $9393, $138F ; 0xA2 - Room 007C
#_0AF531: dw $1394, $1395, $138E, $138C ; 0xA3 - Room 007D
#_0AF539: dw $175D, $1399, $975D, $538F ; 0xA4 - Room 008B
#_0AF541: dw $1397, $1398, $179A, $138C ; 0xA5 - Room 008C
#_0AF549: dw $1399, $1766, $138F, $D75D ; 0xA6 - Room 008D
#_0AF551: dw $538E, $538F, $1391, $1392 ; 0xA7 - Room 009B
#_0AF559: dw $139B, $539B, $139C, $539C ; 0xA8 - Room 009C
#_0AF561: dw $138F, $138E, $5392, $5391 ; 0xA9 - Room 009D
#_0AF569: dw $138A, $538A, $138B, $538B ; 0xAA - Room 000C
#_0AF571: dw $0B00, $CB5B, $0B00, $8B54 ; 0xAB - Room 005B
#_0AF579: dw $4B74, $13A6, $0B00, $4B48 ; 0xAC - Room 005C
#_0AF581: dw $13A0, $13A1, $538E, $138E ; 0xAD - Room 006B
#_0AF589: dw $D38E, $53A3, $13A4, $0B00 ; 0xAE - Room 005D
#_0AF591: dw $97AA, $0B00, $538E, $1399 ; 0xAF - Room 006C
#_0AF599: dw $13A4, $0B00, $138E, $0B00 ; 0xB0 - Room 006D
#_0AF5A1: dw $0B00, $5393, $0B00, $574E ; 0xB1 - Room 0095
#_0AF5A9: dw $4B7D, $0B00, $8B7D, $139F ; 0xB2 - Room 0096
#_0AF5B1: dw $97AA, $13A4, $13A9, $53A9 ; 0xB3 - Room 00A5
#_0AF5B9: dw $13A5, $13A6, $93A5, $D3A5 ; 0xB4 - Room 00A6
#_0AF5C1: dw $D38E, $938E, $13A4, $13AA ; 0xB5 - Room 0034
#_0AF5C9: dw $0B00, $13A6, $0B00, $8B5F ; 0xB6 - Room 004C
#_0AF5D1: dw $139B, $13A6, $139C, $53A2 ; 0xB7 - Room 004D
#_0AF5D9: dw $0B00, $0B00, $138C, $0B00 ; 0xB8 - Room 000D
#_0AF5E1: dw $9394, $139E, $0B00, $0B00 ; 0xB9 - Room 001D

;===================================================================================================
; byte 1: ffff bbbb
;   f - number of floors above ground
;   b - number of floors below ground
;
; byte 2: .... ..om
;   o - backdrop scenery (0: brown ground | 1: blue ocean)
;   m - backdrop scenery (0: nothing | 1: mountain)
;===================================================================================================
DungeonMapFloorCountData:
#_0AF5E9: db $21, $00 ; Sewers
#_0AF5EB: db $23, $00 ; Hyrule Castle
#_0AF5ED: db $20, $00 ; Eastern Palace
#_0AF5EF: db $21, $00 ; Desert Palace
#_0AF5F1: db $70, $00 ; Agahnim's Tower
#_0AF5F3: db $12, $00 ; Swamp Palace
#_0AF5F5: db $11, $00 ; Palace of Darkness
#_0AF5F7: db $12, $02 ; Misery Mire
#_0AF5F9: db $02, $00 ; Skull Woods
#_0AF5FB: db $17, $02 ; Ice Palace
#_0AF5FD: db $60, $01 ; Tower of Hera
#_0AF5FF: db $12, $00 ; Thieves' Town
#_0AF601: db $13, $01 ; Turtle Rock
#_0AF603: db $71, $01 ; Ganon's Tower

;===================================================================================================

DungeonMapFloorToDataOffset:
#_0AF605: dw $0000
#_0AF607: dw $0019
#_0AF609: dw $0032
#_0AF60B: dw $004B
#_0AF60D: dw $0064
#_0AF60F: dw $007D
#_0AF611: dw $0096
#_0AF613: dw $00AF

;===================================================================================================

DungeonMapRoomPointers:
#_0AF615: dw DungeonMapRoomData_Sewers
#_0AF617: dw DungeonMapRoomData_HyruleCastle
#_0AF619: dw DungeonMapRoomData_EasternPalace
#_0AF61B: dw DungeonMapRoomData_DesertPalace
#_0AF61D: dw DungeonMapRoomData_AgahnimsTower
#_0AF61F: dw DungeonMapRoomData_SwampPalace
#_0AF621: dw DungeonMapRoomData_PalaceofDarkness
#_0AF623: dw DungeonMapRoomData_MiseryMire
#_0AF625: dw DungeonMapRoomData_SkullWoods
#_0AF627: dw DungeonMapRoomData_IcePalace
#_0AF629: dw DungeonMapRoomData_TowerofHera
#_0AF62B: dw DungeonMapRoomData_ThievesTown
#_0AF62D: dw DungeonMapRoomData_TurtleRock
#_0AF62F: dw DungeonMapRoomData_GanonsTower

;===================================================================================================

DungeonMapRoomData_Sewers:
; Basement 1
#_0AF631: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF636: db $0F, $0F, $11, $0F, $0F ; row 1
#_0AF63B: db $0F, $0F, $21, $22, $0F ; row 2
#_0AF640: db $0F, $0F, $0F, $32, $0F ; row 3
#_0AF645: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 1
#_0AF64A: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF64F: db $0F, $0F, $02, $0F, $0F ; row 1
#_0AF654: db $0F, $0F, $12, $0F, $0F ; row 2
#_0AF659: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF65E: db $0F, $0F, $0F, $42, $0F ; row 4

; Floor 2
#_0AF663: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF668: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF66D: db $0F, $0F, $0F, $0F, $0F ; row 2
#_0AF672: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF677: db $0F, $0F, $0F, $41, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_HyruleCastle:
; Basement 3
#_0AF67C: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF681: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF686: db $0F, $80, $0F, $0F, $0F ; row 2
#_0AF68B: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF690: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 2
#_0AF695: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF69A: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF69F: db $0F, $70, $0F, $0F, $0F ; row 2
#_0AF6A4: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF6A9: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
#_0AF6AE: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF6B3: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF6B8: db $0F, $71, $72, $0F, $0F ; row 2
#_0AF6BD: db $0F, $81, $82, $0F, $0F ; row 3
#_0AF6C2: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 1
#_0AF6C7: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF6CC: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF6D1: db $0F, $50, $01, $52, $0F ; row 2
#_0AF6D6: db $0F, $60, $61, $62, $0F ; row 3
#_0AF6DB: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 2
#_0AF6E0: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF6E5: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF6EA: db $0F, $0F, $51, $0F, $0F ; row 2
#_0AF6EF: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF6F4: db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_EasternPalace:
; Floor 1
#_0AF6F9: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF6FE: db $0F, $0F, $99, $0F, $0F ; row 1
#_0AF703: db $0F, $A8, $A9, $AA, $0F ; row 2
#_0AF708: db $0F, $B8, $B9, $BA, $0F ; row 3
#_0AF70D: db $0F, $0F, $C9, $0F, $0F ; row 4

; Floor 2
#_0AF712: db $C8, $0F, $0F, $0F, $0F ; row 0
#_0AF717: db $D8, $D9, $DA, $0F, $0F ; row 1
#_0AF71C: db $0F, $0F, $0F, $0F, $0F ; row 2
#_0AF721: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF726: db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_DesertPalace:
; Basement 1
#_0AF72B: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF730: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF735: db $0F, $0F, $0F, $0F, $0F ; row 2
#_0AF73A: db $0F, $73, $74, $75, $0F ; row 3
#_0AF73F: db $0F, $83, $84, $85, $0F ; row 4

; Floor 1
#_0AF744: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF749: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF74E: db $0F, $0F, $63, $0F, $0F ; row 2
#_0AF753: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF758: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 2
#_0AF75D: db $0F, $0F, $33, $0F, $0F ; row 0
#_0AF762: db $0F, $0F, $43, $0F, $0F ; row 1
#_0AF767: db $0F, $0F, $53, $0F, $0F ; row 2
#_0AF76C: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF771: db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_AgahnimsTower:
; Floor 1
#_0AF776: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF77B: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF780: db $0F, $0F, $0F, $0F, $0F ; row 2
#_0AF785: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF78A: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 2
#_0AF78F: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF794: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF799: db $0F, $0F, $E0, $0F, $0F ; row 2
#_0AF79E: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF7A3: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 3
#_0AF7A8: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF7AD: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF7B2: db $0F, $0F, $D0, $0F, $0F ; row 2
#_0AF7B7: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF7BC: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 4
#_0AF7C1: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF7C6: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF7CB: db $0F, $0F, $C0, $0F, $0F ; row 2
#_0AF7D0: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF7D5: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 5
#_0AF7DA: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF7DF: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF7E4: db $0F, $0F, $B0, $0F, $0F ; row 2
#_0AF7E9: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF7EE: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 6
#_0AF7F3: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF7F8: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF7FD: db $0F, $0F, $40, $0F, $0F ; row 2
#_0AF802: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF807: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 7
#_0AF80C: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF811: db $0F, $0F, $20, $0F, $0F ; row 1
#_0AF816: db $0F, $0F, $30, $0F, $0F ; row 2
#_0AF81B: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF820: db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_SwampPalace:
; Basement 2
#_0AF825: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF82A: db $0F, $0F, $66, $0F, $0F ; row 1
#_0AF82F: db $0F, $0F, $76, $0F, $0F ; row 2
#_0AF834: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF839: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
#_0AF83E: db $0F, $0F, $06, $0F, $0F ; row 0
#_0AF843: db $0F, $0F, $16, $0F, $0F ; row 1
#_0AF848: db $0F, $0F, $26, $0F, $0F ; row 2
#_0AF84D: db $34, $35, $36, $37, $38 ; row 3
#_0AF852: db $0F, $0F, $46, $0F, $0F ; row 4

; Floor 1
#_0AF857: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF85C: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF861: db $0F, $0F, $0F, $0F, $0F ; row 2
#_0AF866: db $54, $0F, $0F, $0F, $28 ; row 3
#_0AF86B: db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_PalaceofDarkness:
; Basement 1
#_0AF870: db $0F, $0F, $5A, $0F, $0F ; row 0
#_0AF875: db $0F, $0F, $6A, $0B, $0F ; row 1
#_0AF87A: db $0F, $0F, $0F, $0F, $0F ; row 2
#_0AF87F: db $0F, $0F, $0A, $3B, $0F ; row 3
#_0AF884: db $0F, $0F, $09, $4B, $0F ; row 4

; Floor 1
#_0AF889: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF88E: db $0F, $19, $1A, $1B, $0F ; row 1
#_0AF893: db $0F, $0F, $2A, $2B, $0F ; row 2
#_0AF898: db $0F, $0F, $3A, $0F, $0F ; row 3
#_0AF89D: db $0F, $0F, $4A, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_MiseryMire:
; Basement 2
#_0AF8A2: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF8A7: db $0F, $91, $92, $93, $0F ; row 1
#_0AF8AC: db $0F, $0F, $0F, $0F, $0F ; row 2
#_0AF8B1: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF8B6: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
#_0AF8BB: db $0F, $90, $0F, $0F, $0F ; row 0
#_0AF8C0: db $0F, $A0, $A1, $A2, $A3 ; row 1
#_0AF8C5: db $0F, $0F, $B1, $B2, $B3 ; row 2
#_0AF8CA: db $0F, $0F, $C1, $C2, $C3 ; row 3
#_0AF8CF: db $0F, $0F, $D1, $D2, $0F ; row 4

; Floor 1
#_0AF8D4: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF8D9: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF8DE: db $0F, $0F, $0F, $0F, $0F ; row 2
#_0AF8E3: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF8E8: db $0F, $0F, $97, $98, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_SkullWoods:
; Basement 2
#_0AF8ED: db $29, $0F, $0F, $0F, $0F ; row 0
#_0AF8F2: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF8F7: db $0F, $0F, $0F, $0F, $0F ; row 2
#_0AF8FC: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF901: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
#_0AF906: db $39, $0F, $0F, $0F, $0F ; row 0
#_0AF90B: db $49, $0F, $0F, $0F, $0F ; row 1
#_0AF910: db $59, $0F, $0F, $0F, $0F ; row 2
#_0AF915: db $0F, $56, $57, $58, $0F ; row 3
#_0AF91A: db $0F, $0F, $67, $68, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_IcePalace:
; Basement 7
#_0AF91F: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF924: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF929: db $0F, $0F, $0F, $0F, $0F ; row 2
#_0AF92E: db $0F, $0F, $DE, $0F, $0F ; row 3
#_0AF933: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 6
#_0AF938: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF93D: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF942: db $0F, $0F, $BE, $BF, $0F ; row 2
#_0AF947: db $0F, $0F, $CE, $0F, $0F ; row 3
#_0AF94C: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 5
#_0AF951: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF956: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF95B: db $0F, $0F, $9E, $9F, $0F ; row 2
#_0AF960: db $0F, $0F, $AE, $AF, $0F ; row 3
#_0AF965: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 4
#_0AF96A: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF96F: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF974: db $0F, $0F, $7E, $7F, $0F ; row 2
#_0AF979: db $0F, $0F, $8E, $0F, $0F ; row 3
#_0AF97E: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 3
#_0AF983: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF988: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF98D: db $0F, $0F, $5E, $5F, $0F ; row 2
#_0AF992: db $0F, $0F, $6E, $0F, $0F ; row 3
#_0AF997: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 2
#_0AF99C: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF9A1: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF9A6: db $0F, $0F, $3E, $3F, $0F ; row 2
#_0AF9AB: db $0F, $0F, $4E, $0F, $0F ; row 3
#_0AF9B0: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
#_0AF9B5: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF9BA: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF9BF: db $0F, $0F, $1E, $1F, $0F ; row 2
#_0AF9C4: db $0F, $0F, $2E, $0F, $0F ; row 3
#_0AF9C9: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 1
#_0AF9CE: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF9D3: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF9D8: db $0F, $0F, $0E, $0F, $0F ; row 2
#_0AF9DD: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF9E2: db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_TowerofHera:
; Floor 1
#_0AF9E7: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AF9EC: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AF9F1: db $0F, $0F, $87, $0F, $0F ; row 2
#_0AF9F6: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AF9FB: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 2
#_0AFA00: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFA05: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AFA0A: db $0F, $0F, $77, $0F, $0F ; row 2
#_0AFA0F: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFA14: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 3
#_0AFA19: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFA1E: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AFA23: db $0F, $0F, $31, $0F, $0F ; row 2
#_0AFA28: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFA2D: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 4
#_0AFA32: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFA37: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AFA3C: db $0F, $0F, $27, $0F, $0F ; row 2
#_0AFA41: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFA46: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 5
#_0AFA4B: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFA50: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AFA55: db $0F, $0F, $17, $0F, $0F ; row 2
#_0AFA5A: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFA5F: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 6
#_0AFA64: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFA69: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AFA6E: db $0F, $0F, $07, $0F, $0F ; row 2
#_0AFA73: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFA78: db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_ThievesTown:
; Basement 2
#_0AFA7D: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFA82: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AFA87: db $0F, $44, $45, $0F, $0F ; row 2
#_0AFA8C: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFA91: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
#_0AFA96: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFA9B: db $0F, $AB, $AC, $0F, $0F ; row 1
#_0AFAA0: db $0F, $BB, $BC, $0F, $0F ; row 2
#_0AFAA5: db $0F, $CB, $CC, $0F, $0F ; row 3
#_0AFAAA: db $0F, $DB, $DC, $0F, $0F ; row 4

; Floor 1
#_0AFAAF: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFAB4: db $0F, $64, $65, $0F, $0F ; row 1
#_0AFAB9: db $0F, $0F, $0F, $0F, $0F ; row 2
#_0AFABE: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFAC3: db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_TurtleRock:
; Basement 3
#_0AFAC8: db $0F, $A4, $0F, $0F, $0F ; row 0
#_0AFACD: db $0F, $B4, $0F, $0F, $0F ; row 1
#_0AFAD2: db $0F, $0F, $0F, $0F, $0F ; row 2
#_0AFAD7: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFADC: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 2
#_0AFAE1: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFAE6: db $0F, $0F, $B5, $0F, $0F ; row 1
#_0AFAEB: db $0F, $C4, $C5, $0F, $0F ; row 2
#_0AFAF0: db $0F, $0F, $D5, $0F, $0F ; row 3
#_0AFAF5: db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
#_0AFAFA: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFAFF: db $0F, $0F, $04, $0F, $0F ; row 1
#_0AFB04: db $0F, $13, $14, $15, $0F ; row 2
#_0AFB09: db $0F, $23, $24, $0F, $0F ; row 3
#_0AFB0E: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 1
#_0AFB13: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFB18: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AFB1D: db $0F, $0F, $0F, $B6, $B7 ; row 2
#_0AFB22: db $0F, $0F, $0F, $C6, $C7 ; row 3
#_0AFB27: db $0F, $0F, $0F, $D6, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_GanonsTower:
; Basement 1
#_0AFB2C: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFB31: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AFB36: db $0F, $0F, $1C, $0F, $0F ; row 2
#_0AFB3B: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFB40: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 1
#_0AFB45: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFB4A: db $0F, $7B, $7C, $7D, $0F ; row 1
#_0AFB4F: db $0F, $8B, $8C, $8D, $0F ; row 2
#_0AFB54: db $0F, $9B, $9C, $9D, $0F ; row 3
#_0AFB59: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 2
#_0AFB5E: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFB63: db $0F, $0F, $0F, $0F, $0F ; row 1
#_0AFB68: db $0F, $0F, $0C, $0F, $0F ; row 2
#_0AFB6D: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFB72: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 3
#_0AFB77: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFB7C: db $0F, $0F, $5B, $5C, $0F ; row 1
#_0AFB81: db $0F, $0F, $6B, $0F, $0F ; row 2
#_0AFB86: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFB8B: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 4
#_0AFB90: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFB95: db $0F, $0F, $0F, $5D, $0F ; row 1
#_0AFB9A: db $0F, $0F, $6C, $6D, $0F ; row 2
#_0AFB9F: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFBA4: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 5
#_0AFBA9: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFBAE: db $0F, $0F, $95, $96, $0F ; row 1
#_0AFBB3: db $0F, $0F, $A5, $A6, $0F ; row 2
#_0AFBB8: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFBBD: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 6
#_0AFBC2: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFBC7: db $0F, $0F, $0F, $3D, $0F ; row 1
#_0AFBCC: db $0F, $0F, $4C, $4D, $0F ; row 2
#_0AFBD1: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFBD6: db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 7
#_0AFBDB: db $0F, $0F, $0F, $0F, $0F ; row 0
#_0AFBE0: db $0F, $0F, $0D, $0F, $0F ; row 1
#_0AFBE5: db $0F, $0F, $1D, $0F, $0F ; row 2
#_0AFBEA: db $0F, $0F, $0F, $0F, $0F ; row 3
#_0AFBEF: db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomLayoutPointers:
#_0AFBF4: dw DungeonMapLayoutData_Sewers
#_0AFBF6: dw DungeonMapLayoutData_HyruleCastle
#_0AFBF8: dw DungeonMapLayoutData_EasternPalace
#_0AFBFA: dw DungeonMapLayoutData_DesertPalace
#_0AFBFC: dw DungeonMapLayoutData_AgahnimsTower
#_0AFBFE: dw DungeonMapLayoutData_SwampPalace
#_0AFC00: dw DungeonMapLayoutData_PalaceOfDarkness
#_0AFC02: dw DungeonMapLayoutData_MiseryMire
#_0AFC04: dw DungeonMapLayoutData_SkullWoods
#_0AFC06: dw DungeonMapLayoutData_IcePalace
#_0AFC08: dw DungeonMapLayoutData_TowerOfHera
#_0AFC0A: dw DungeonMapLayoutData_ThievesTown
#_0AFC0C: dw DungeonMapLayoutData_TurtleRock
#_0AFC0E: dw DungeonMapLayoutData_GanonsTower

;===================================================================================================

DungeonMapLayoutData_Sewers:
#_0AFC10: db $00 ; Room 0011
#_0AFC11: db $01 ; Room 0021
#_0AFC12: db $02 ; Room 0022
#_0AFC13: db $03 ; Room 0032
#_0AFC14: db $04 ; Room 0002
#_0AFC15: db $05 ; Room 0012
#_0AFC16: db $06 ; Room 0042
#_0AFC17: db $07 ; Room 0041

;===================================================================================================

DungeonMapLayoutData_HyruleCastle:
#_0AFC18: db $08 ; Room 0080
#_0AFC19: db $09 ; Room 0070
#_0AFC1A: db $0A ; Room 0071
#_0AFC1B: db $0B ; Room 0072
#_0AFC1C: db $0C ; Room 0081
#_0AFC1D: db $0D ; Room 0082
#_0AFC1E: db $0E ; Room 0050
#_0AFC1F: db $0F ; Room 0001
#_0AFC20: db $10 ; Room 0052
#_0AFC21: db $11 ; Room 0060
#_0AFC22: db $12 ; Room 0061
#_0AFC23: db $13 ; Room 0062
#_0AFC24: db $14 ; Room 0051

;===================================================================================================

DungeonMapLayoutData_EasternPalace:
#_0AFC25: db $15 ; Room 0099
#_0AFC26: db $16 ; Room 00A8
#_0AFC27: db $17 ; Room 00A9
#_0AFC28: db $18 ; Room 00AA
#_0AFC29: db $19 ; Room 00B8
#_0AFC2A: db $1A ; Room 00B9
#_0AFC2B: db $1B ; Room 00BA
#_0AFC2C: db $1C ; Room 00C9
#_0AFC2D: db $1D ; Room 00C8
#_0AFC2E: db $1E ; Room 00D8
#_0AFC2F: db $1F ; Room 00D9
#_0AFC30: db $20 ; Room 00DA

;===================================================================================================

DungeonMapLayoutData_DesertPalace:
#_0AFC31: db $22 ; Room 0073
#_0AFC32: db $23 ; Room 0074
#_0AFC33: db $24 ; Room 0076
#_0AFC34: db $25 ; Room 0083
#_0AFC35: db $26 ; Room 0084
#_0AFC36: db $27 ; Room 0086
#_0AFC37: db $21 ; Room 0063
#_0AFC38: db $28 ; Room 0033
#_0AFC39: db $29 ; Room 0042
#_0AFC3A: db $2A ; Room 0053

;===================================================================================================

DungeonMapLayoutData_AgahnimsTower:
#_0AFC3B: db $2B ; Room 00E0
#_0AFC3C: db $2C ; Room 00D0
#_0AFC3D: db $2C ; Room 00C0
#_0AFC3E: db $2D ; Room 00B0
#_0AFC3F: db $2E ; Room 0040
#_0AFC40: db $2F ; Room 0020
#_0AFC41: db $30 ; Room 0030

;===================================================================================================

DungeonMapLayoutData_SwampPalace:
#_0AFC42: db $31 ; Room 0066
#_0AFC43: db $32 ; Room 0076
#_0AFC44: db $33 ; Room 0006
#_0AFC45: db $34 ; Room 0016
#_0AFC46: db $35 ; Room 0026
#_0AFC47: db $36 ; Room 0034
#_0AFC48: db $37 ; Room 0035
#_0AFC49: db $38 ; Room 0036
#_0AFC4A: db $39 ; Room 0037
#_0AFC4B: db $3A ; Room 0038
#_0AFC4C: db $3B ; Room 0046
#_0AFC4D: db $3C ; Room 0054
#_0AFC4E: db $3D ; Room 0028

;===================================================================================================

DungeonMapLayoutData_PalaceOfDarkness:
#_0AFC4F: db $3E ; Room 005A
#_0AFC50: db $3F ; Room 006A
#_0AFC51: db $40 ; Room 000B
#_0AFC52: db $41 ; Room 000A
#_0AFC53: db $42 ; Room 003B
#_0AFC54: db $43 ; Room 0009
#_0AFC55: db $44 ; Room 004B
#_0AFC56: db $45 ; Room 0019
#_0AFC57: db $46 ; Room 001A
#_0AFC58: db $47 ; Room 001B
#_0AFC59: db $48 ; Room 002A
#_0AFC5A: db $49 ; Room 002B
#_0AFC5B: db $4A ; Room 003A
#_0AFC5C: db $4B ; Room 004A

;===================================================================================================

DungeonMapLayoutData_MiseryMire:
#_0AFC5D: db $4E ; Room 0091
#_0AFC5E: db $4F ; Room 0092
#_0AFC5F: db $50 ; Room 0093
#_0AFC60: db $52 ; Room 0090
#_0AFC61: db $53 ; Room 00A0
#_0AFC62: db $54 ; Room 00A1
#_0AFC63: db $55 ; Room 00A2
#_0AFC64: db $56 ; Room 00A3
#_0AFC65: db $57 ; Room 00B1
#_0AFC66: db $58 ; Room 00B2
#_0AFC67: db $59 ; Room 00B3
#_0AFC68: db $5A ; Room 00C1
#_0AFC69: db $5B ; Room 00C2
#_0AFC6A: db $5C ; Room 00C3
#_0AFC6B: db $5D ; Room 00D1
#_0AFC6C: db $5E ; Room 00D2
#_0AFC6D: db $5F ; Room 0097
#_0AFC6E: db $60 ; Room 0098

;===================================================================================================

DungeonMapLayoutData_SkullWoods:
#_0AFC6F: db $61 ; Room 0029
#_0AFC70: db $62 ; Room 0039
#_0AFC71: db $63 ; Room 0049
#_0AFC72: db $64 ; Room 0059
#_0AFC73: db $65 ; Room 0056
#_0AFC74: db $66 ; Room 0057
#_0AFC75: db $67 ; Room 0058
#_0AFC76: db $68 ; Room 0067
#_0AFC77: db $69 ; Room 0068

;===================================================================================================

DungeonMapLayoutData_IcePalace:
#_0AFC78: db $6A ; Room 00DE
#_0AFC79: db $6B ; Room 00BE
#_0AFC7A: db $6C ; Room 00BF
#_0AFC7B: db $6D ; Room 00CE
#_0AFC7C: db $6E ; Room 009E
#_0AFC7D: db $6F ; Room 009F
#_0AFC7E: db $70 ; Room 00AE
#_0AFC7F: db $71 ; Room 00AF
#_0AFC80: db $72 ; Room 007E
#_0AFC81: db $73 ; Room 007F
#_0AFC82: db $74 ; Room 008E
#_0AFC83: db $75 ; Room 005E
#_0AFC84: db $76 ; Room 005F
#_0AFC85: db $77 ; Room 006E
#_0AFC86: db $78 ; Room 003E
#_0AFC87: db $79 ; Room 003F
#_0AFC88: db $7A ; Room 004E
#_0AFC89: db $7B ; Room 001E
#_0AFC8A: db $7C ; Room 001F
#_0AFC8B: db $7D ; Room 002E
#_0AFC8C: db $7E ; Room 000E

;===================================================================================================

DungeonMapLayoutData_TowerOfHera:
#_0AFC8D: db $7F ; Room 0087
#_0AFC8E: db $80 ; Room 0077
#_0AFC8F: db $81 ; Room 0031
#_0AFC90: db $82 ; Room 0027
#_0AFC91: db $83 ; Room 0017
#_0AFC92: db $84 ; Room 0007

;===================================================================================================

DungeonMapLayoutData_ThievesTown:
#_0AFC93: db $85 ; Room 0044
#_0AFC94: db $86 ; Room 0045
#_0AFC95: db $87 ; Room 00AB
#_0AFC96: db $88 ; Room 00AC
#_0AFC97: db $89 ; Room 00BB
#_0AFC98: db $8A ; Room 00BC
#_0AFC99: db $8B ; Room 00CB
#_0AFC9A: db $8C ; Room 00CC
#_0AFC9B: db $8D ; Room 00DB
#_0AFC9C: db $8E ; Room 00DC
#_0AFC9D: db $8F ; Room 0064
#_0AFC9E: db $90 ; Room 0065

;===================================================================================================

DungeonMapLayoutData_TurtleRock:
#_0AFC9F: db $91 ; Room 00A4
#_0AFCA0: db $92 ; Room 00B4
#_0AFCA1: db $93 ; Room 00B5
#_0AFCA2: db $94 ; Room 00C4
#_0AFCA3: db $95 ; Room 00C5
#_0AFCA4: db $4C ; Room 00D5
#_0AFCA5: db $96 ; Room 0004
#_0AFCA6: db $97 ; Room 0013
#_0AFCA7: db $98 ; Room 0014
#_0AFCA8: db $99 ; Room 0015
#_0AFCA9: db $4D ; Room 0023
#_0AFCAA: db $9A ; Room 0024
#_0AFCAB: db $9B ; Room 00B6
#_0AFCAC: db $9C ; Room 00B7
#_0AFCAD: db $9D ; Room 00C6
#_0AFCAE: db $9E ; Room 00C7
#_0AFCAF: db $9F ; Room 00D6

;===================================================================================================

DungeonMapLayoutData_GanonsTower:
#_0AFCB0: db $A0 ; Room 001C
#_0AFCB1: db $A1 ; Room 007B
#_0AFCB2: db $A2 ; Room 007C
#_0AFCB3: db $A3 ; Room 007D
#_0AFCB4: db $A4 ; Room 008B
#_0AFCB5: db $A5 ; Room 008C
#_0AFCB6: db $A6 ; Room 008D
#_0AFCB7: db $A7 ; Room 009B
#_0AFCB8: db $A8 ; Room 009C
#_0AFCB9: db $A9 ; Room 009D
#_0AFCBA: db $AA ; Room 000C
#_0AFCBB: db $AB ; Room 005B
#_0AFCBC: db $AC ; Room 005C
#_0AFCBD: db $AD ; Room 006B
#_0AFCBE: db $AE ; Room 005D
#_0AFCBF: db $AF ; Room 006C
#_0AFCC0: db $B0 ; Room 006D
#_0AFCC1: db $B1 ; Room 0095
#_0AFCC2: db $B2 ; Room 0096
#_0AFCC3: db $B3 ; Room 00A5
#_0AFCC4: db $B4 ; Room 00A6
#_0AFCC5: db $B5 ; Room 0034
#_0AFCC6: db $B6 ; Room 004C
#_0AFCC7: db $B7 ; Room 004D
#_0AFCC8: db $B8 ; Room 000D
#_0AFCC9: db $B9 ; Room 001D

;===================================================================================================
; FREE ROM: 0x36
;===================================================================================================
NULL_0AFCCA:
#_0AFCCA: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AFCD2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AFCDA: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AFCE2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AFCEA: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AFCF2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AFCFA: db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

HUDBigNumbersTop: 
#_0AFD00: dw $2508 ; 1
#_0AFD02: dw $2509 ; 2
#_0AFD04: dw $2509 ; 3
#_0AFD06: dw $250A ; 4
#_0AFD08: dw $250B ; 5
#_0AFD0A: dw $250C ; 6
#_0AFD0C: dw $250D ; 7
#_0AFD0E: dw $251D ; 8
#_0AFD10: dw $E51C ; 9
#_0AFD12: dw $250E ; 0
#_0AFD14: dw $007F ; -

;---------------------------------------------------------------------------------------------------

HUDBigNumbersBottom:
#_0AFD16: dw $2518 ; 1
#_0AFD18: dw $2519 ; 2
#_0AFD1A: dw $A509 ; 3
#_0AFD1C: dw $251A ; 4
#_0AFD1E: dw $251B ; 5
#_0AFD20: dw $251C ; 6
#_0AFD22: dw $2518 ; 7
#_0AFD24: dw $A51D ; 8
#_0AFD26: dw $E50C ; 9
#_0AFD28: dw $A50E ; 0
#_0AFD2A: dw $007F ; -

;===================================================================================================

HUD_HandleFloorIndicator:
#_0AFD2C: REP #$30

#_0AFD2E: LDA.w $04A0
#_0AFD31: AND.w #$00FF
#_0AFD34: BEQ HUD_HideBigNumbers

#_0AFD36: INC A
#_0AFD37: CMP.w #$00C0
#_0AFD3A: BNE .dont_clear

#_0AFD3C: LDA.w #$0000

.dont_clear
#_0AFD3F: STA.w $04A0

;---------------------------------------------------------------------------------------------------

#_0AFD42: PHB
#_0AFD43: PHK
#_0AFD44: PLB

#_0AFD45: LDA.w #$251E
#_0AFD48: STA.l $7EC7F2

#_0AFD4C: INC A
#_0AFD4D: STA.l $7EC834

#_0AFD51: INC A
#_0AFD52: STA.l $7EC832

#_0AFD56: LDA.w #$250F
#_0AFD59: STA.l $7EC7F4

#_0AFD5D: LDX.w #$0000

#_0AFD60: LDA.b $A3
#_0AFD62: BMI .basement_floors

#_0AFD64: LDA.b $A4
#_0AFD66: BNE .no_rain_noise

#_0AFD68: LDA.b $A0
#_0AFD6A: CMP.w #$0002
#_0AFD6D: BEQ .no_rain_noise

#_0AFD6F: SEP #$20

#_0AFD71: LDA.l $7EF3C5
#_0AFD75: CMP.b #$02
#_0AFD77: BCS .too_late_for_rain

#_0AFD79: LDA.b #!SFX1_03
#_0AFD7B: STA.w $012D

;---------------------------------------------------------------------------------------------------

.too_late_for_rain
#_0AFD7E: REP #$20

.no_rain_noise
#_0AFD80: LDA.b $A4
#_0AFD82: AND.w #$00FF
#_0AFD85: BRA .continue

.basement_floors
#_0AFD87: SEP #$20

#_0AFD89: LDA.b #!SFX1_05
#_0AFD8B: STA.w $012D

#_0AFD8E: REP #$20

#_0AFD90: INX
#_0AFD91: INX

#_0AFD92: LDA.b $A4
#_0AFD94: ORA.w #$FF00
#_0AFD97: EOR.w #$FFFF

;---------------------------------------------------------------------------------------------------

.continue
#_0AFD9A: ASL A
#_0AFD9B: TAY

#_0AFD9C: LDA.w HUDBigNumbersTop,Y
#_0AFD9F: STA.l $7EC7F2,X

#_0AFDA3: LDA.w HUDBigNumbersBottom,Y
#_0AFDA6: STA.l $7EC832,X

#_0AFDAA: SEP #$30

#_0AFDAC: PLB
#_0AFDAD: INC.b $16

#_0AFDAF: RTL

;===================================================================================================
; Used for floor indicator and timers
;===================================================================================================
HUD_HideBigNumbers:
#_0AFDB0: REP #$20

#_0AFDB2: LDA.w #$007F
#_0AFDB5: STA.l $7EC7F2
#_0AFDB9: STA.l $7EC832
#_0AFDBD: STA.l $7EC7F4
#_0AFDC1: STA.l $7EC834

#_0AFDC5: SEP #$30

#_0AFDC7: RTL

;===================================================================================================

HUD_HandleBigTimer:
#_0AFDC8: LDA.w $04B5
#_0AFDCB: BNE .dont_tick

#_0AFDCD: LDA.w $04B4
#_0AFDD0: BMI .timer_ended

#_0AFDD2: DEC.w $04B4

#_0AFDD5: LDA.b #$3E
#_0AFDD7: STA.w $04B5

.dont_tick
#_0AFDDA: DEC.w $04B5

#_0AFDDD: LDA.w $04B4
#_0AFDE0: BPL .draw_numbers

.timer_ended
#_0AFDE2: LDA.b #$FF
#_0AFDE4: STA.w $04B4

#_0AFDE7: REP #$30

#_0AFDE9: BRA HUD_HideBigNumbers

;---------------------------------------------------------------------------------------------------

.draw_numbers
#_0AFDEB: LDA.w $04B4
#_0AFDEE: STA.w CPUDIVIDENDL

#_0AFDF1: STZ.w CPUDIVIDENDH
#_0AFDF4: LDA.b #10
#_0AFDF6: STA.w $4206

#_0AFDF9: NOP ; 8 NOP
#_0AFDFA: NOP
#_0AFDFB: NOP
#_0AFDFC: NOP
#_0AFDFD: NOP
#_0AFDFE: NOP
#_0AFDFF: NOP
#_0AFE00: NOP

#_0AFE01: LDA.w CPUQUOTIENT
#_0AFE04: ASL A
#_0AFE05: STA.b $00

#_0AFE07: LDA.w CPUREMAINDER
#_0AFE0A: ASL A
#_0AFE0B: STA.b $02

;---------------------------------------------------------------------------------------------------

#_0AFE0D: PHB
#_0AFE0E: PHK
#_0AFE0F: PLB

#_0AFE10: REP #$20

#_0AFE12: LDX.b #$02

.next_number
#_0AFE14: LDY.b $00,X

#_0AFE16: DEY
#_0AFE17: DEY
#_0AFE18: BPL .draw_digit

#_0AFE1A: LDY.b #$12
#_0AFE1C: CPX.b #$00
#_0AFE1E: BNE .draw_digit

#_0AFE20: LDY.b #$14

.draw_digit
#_0AFE22: LDA.w HUDBigNumbersTop,Y
#_0AFE25: STA.l $7EC7F2,X

#_0AFE29: LDA.w HUDBigNumbersBottom,Y
#_0AFE2C: STA.l $7EC832,X

#_0AFE30: DEX
#_0AFE31: DEX
#_0AFE32: BPL .next_number

#_0AFE34: SEP #$20

#_0AFE36: PLB

#_0AFE37: RTL

;===================================================================================================
; FREE ROM: 0x38
;===================================================================================================
NULL_0AFE38:
#_0AFE38: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AFE40: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AFE48: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AFE50: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AFE58: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AFE60: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0AFE68: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

pool Underworld_HandleLayerEffect

.vectors
#_0AFE70: dw LayerEffect_Nothing
#_0AFE72: dw LayerEffect_Nothing
#_0AFE74: dw LayerEffect_Scroll
#_0AFE76: dw LayerEffect_WaterRapids
#_0AFE78: dw LayerEffect_Trinexx
#_0AFE7A: dw LayerEffect_Agahnim2
#_0AFE7C: dw LayerEffect_Black2
#_0AFE7E: dw LayerEffect_Ganon

pool off

;---------------------------------------------------------------------------------------------------

Underworld_HandleLayerEffect:
#_0AFE80: LDA.b $AD
#_0AFE82: ASL A
#_0AFE83: TAX

#_0AFE84: JMP.w (.vectors,X)

;===================================================================================================

LayerEffect_Nothing:
#_0AFE87: RTL

;===================================================================================================

LayerEffect_Scroll:
#_0AFE88: LDA.w $0403
#_0AFE8B: AND.b #$80
#_0AFE8D: BEQ .continue

#_0AFE8F: STZ.b $AD

#_0AFE91: RTL

;---------------------------------------------------------------------------------------------------

.continue
#_0AFE92: REP #$30

#_0AFE94: STZ.w $0312
#_0AFE97: STZ.w $0310

#_0AFE9A: LDA.w $041A
#_0AFE9D: LSR A
#_0AFE9E: BCS .exit

#_0AFEA0: ASL A
#_0AFEA1: AND.w #$0002
#_0AFEA4: TAX

#_0AFEA5: LDA.w $041C
#_0AFEA8: CLC
#_0AFEA9: ADC.w #$8000
#_0AFEAC: STA.w $041C

#_0AFEAF: ROL A
#_0AFEB0: AND.w #$0001

#_0AFEB3: CPX.w #$0002
#_0AFEB6: BNE .dont_invert

#_0AFEB8: EOR.w #$FFFF
#_0AFEBB: INC A

.dont_invert
#_0AFEBC: LDX.w $041A
#_0AFEBF: CPX.w #$0004
#_0AFEC2: BCS .scroll_vertically

#_0AFEC4: STA.w $0312

#_0AFEC7: LDA.w $0422
#_0AFECA: SEC
#_0AFECB: SBC.w $0312
#_0AFECE: STA.w $0422

#_0AFED1: CLC
#_0AFED2: ADC.b $E2
#_0AFED4: STA.b $E0

#_0AFED6: SEP #$30

#_0AFED8: RTL

;---------------------------------------------------------------------------------------------------

.scroll_vertically
#_0AFED9: STA.w $0310

#_0AFEDC: LDA.w $0424
#_0AFEDF: SEC
#_0AFEE0: SBC.w $0310
#_0AFEE3: STA.w $0424

#_0AFEE6: CLC
#_0AFEE7: ADC.b $E8
#_0AFEE9: STA.b $E6

.exit
#_0AFEEB: SEP #$30

#_0AFEED: RTL

;===================================================================================================

LayerEffect_Trinexx:
#_0AFEEE: REP #$20

#_0AFEF0: LDA.w $0422
#_0AFEF3: CLC
#_0AFEF4: ADC.w $0312
#_0AFEF7: STA.w $0422

#_0AFEFA: LDA.w $0424
#_0AFEFD: CLC
#_0AFEFE: ADC.w $0310
#_0AFF01: STA.w $0424

#_0AFF04: STZ.w $0312
#_0AFF07: STZ.w $0310

#_0AFF0A: SEP #$20

#_0AFF0C: RTL

;===================================================================================================

LayerEffect_Agahnim2:
#_0AFF0D: LDA.b $1A
#_0AFF0F: AND.b #$7F
#_0AFF11: CMP.b #$03
#_0AFF13: BEQ .flash

#_0AFF15: CMP.b #$05
#_0AFF17: BEQ .restore

#_0AFF19: CMP.b #$24
#_0AFF1B: BEQ .flash

#_0AFF1D: CMP.b #$26
#_0AFF1F: BNE .disable

;---------------------------------------------------------------------------------------------------

.restore
#_0AFF21: REP #$20

#_0AFF23: LDA.l $7EC3DA
#_0AFF27: STA.l $7EC5DA

#_0AFF2B: LDA.l $7EC3DC
#_0AFF2F: STA.l $7EC5DC

#_0AFF33: LDA.l $7EC3DE

;---------------------------------------------------------------------------------------------------

.set_color
#_0AFF37: STA.l $7EC5DE
#_0AFF3B: STA.l $7EC5EE

#_0AFF3F: SEP #$20

#_0AFF41: INC.b $15

;---------------------------------------------------------------------------------------------------

.disable
#_0AFF43: LDA.b #$02
#_0AFF45: STA.b $1D

#_0AFF47: RTL

;---------------------------------------------------------------------------------------------------

.flash
#_0AFF48: REP #$20

#_0AFF4A: LDA.w #$1D59 ; RGB: #C85038
#_0AFF4D: STA.l $7EC5DA

#_0AFF51: LDA.w #$25FF ; RGB: #F87848
#_0AFF54: STA.l $7EC5DC

#_0AFF58: LDA.w #$001A ; RGB: #D00000
#_0AFF5B: BRA .set_color

;===================================================================================================

LayerEffect_Black2:
#_0AFF5D: REP #$30

#_0AFF5F: LDX.w #$0000
#_0AFF62: STX.b $00

.next
#_0AFF64: LDA.w $0540,X
#_0AFF67: ASL A
#_0AFF68: BCC .skip

#_0AFF6A: INC.b $00

.skip
#_0AFF6C: INX
#_0AFF6D: INX
#_0AFF6E: CPX.w #$0020
#_0AFF71: BNE .next

;---------------------------------------------------------------------------------------------------

#_0AFF73: LDX.w #$2940 ; RGB: #005050
#_0AFF76: LDY.w #$4E60 ; RGB: #009898

#_0AFF79: LDA.b $00
#_0AFF7B: BNE .dont_use_black

#_0AFF7D: LDX.w #$0000 ; RGB: #000000
#_0AFF80: LDY.w #$0000 ; RGB: #000000

.dont_use_black
#_0AFF83: TXA

#_0AFF84: CMP.l $7EC3F6
#_0AFF88: BEQ .already_matches

#_0AFF8A: STA.l $7EC3F6
#_0AFF8E: STA.l $7EC5F6

#_0AFF92: TYA
#_0AFF93: STA.l $7EC3F8
#_0AFF97: STA.l $7EC5F8

#_0AFF9B: INC.b $15

.already_matches
#_0AFF9D: SEP #$30

#_0AFF9F: LDA.b #$02
#_0AFFA1: STA.b $1D

#_0AFFA3: RTL

;===================================================================================================

LayerEffect_Ganon:
#_0AFFA4: STZ.w $04C5

#_0AFFA7: REP #$30

#_0AFFA9: LDX.w #$0000

.next_torch_check
#_0AFFAC: LDA.w $0540,X
#_0AFFAF: ASL A
#_0AFFB0: BCC .torch_off

#_0AFFB2: INC.w $04C5

.torch_off
#_0AFFB5: INX
#_0AFFB6: INX
#_0AFFB7: CPX.w #$0006
#_0AFFBA: BNE .next_torch_check

;---------------------------------------------------------------------------------------------------

#_0AFFBC: SEP #$30

#_0AFFBE: LDA.w $04C5
#_0AFFC1: BNE .not_dark

#_0AFFC3: STZ.b $1D

#_0AFFC5: LDA.b #$B3
#_0AFFC7: STA.b $9A

#_0AFFC9: RTL

.not_dark
#_0AFFCA: CMP.b #$01
#_0AFFCC: BNE .opaque

#_0AFFCE: LDA.b #$02
#_0AFFD0: STA.b $1D

#_0AFFD2: LDA.b #$70
#_0AFFD4: STA.b $9A

#_0AFFD6: RTL

;---------------------------------------------------------------------------------------------------

.opaque
#_0AFFD7: STZ.b $1D

#_0AFFD9: LDA.b #$70
#_0AFFDB: STA.b $9A

#_0AFFDD: RTL

;===================================================================================================

LayerEffect_WaterRapids:
#_0AFFDE: REP #$21

#_0AFFE0: LDA.w #$8000
#_0AFFE3: ADC.w $041C
#_0AFFE6: STA.w $041C

#_0AFFE9: ROL A
#_0AFFEA: AND.w #$0001
#_0AFFED: STA.b $00

#_0AFFEF: LDA.w #$0000
#_0AFFF2: SEC
#_0AFFF3: SBC.b $00
#_0AFFF5: STA.w $0312

#_0AFFF8: SEP #$20

#_0AFFFA: RTL

;===================================================================================================
; FREE ROM: 0x05
;===================================================================================================
NULL_0AFFFB:
#_0AFFFB: db $FF, $FF, $FF, $FF, $FF

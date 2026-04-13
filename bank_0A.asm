org $0A8000

;===================================================================================================

RoomDataTiles_0104:
|0A8000| db $E3, $00 ; Floors and Layout
|0A8002| db $FF, $AA, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 28 }
|0A8005| db $9A, $A2, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 28 } | Size: 0A
|0A8008| db $FE, $2A, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 28 }
|0A800B| db $A0, $A0, $3E ; OBJ 03E - Supports (north) ↔ | { 28, 28 } | Size: 00
|0A800E| db $B4, $A1, $4F ; OBJ 04F - Shelf ↔ | { 2D, 28 } | Size: 01
|0A8011| db $FF, $5A, $29 ; OBJ 129 - Fireplace | { 35, 28 }
|0A8014| db $98, $EE, $3B ; OBJ 03B - Wall decors (south) ↔ | { 26, 3B } | Size: 02
|0A8017| db $97, $AF, $FA ; OBJ 22F - Pot | { 25, 2B }
|0A801A| db $97, $B7, $FA ; OBJ 22F - Pot | { 25, 2D }
|0A801D| db $97, $BF, $FA ; OBJ 22F - Pot | { 25, 2F }
|0A8020| db $FE, $7A, $E8 ; OBJ 128 - Bed | { 27, 2B }
|0A8023| db $E1, $DA, $F9 ; OBJ 219 - Chest | { 38, 36 }
|0A8026| db $FE, $7D, $A3 ; OBJ 123 - Table | { 27, 36 }
|0A8029| db $CD, $C0, $DD ; OBJ 0DD - Table / Rock ⇲| { 33, 30 } | Size: 04
|0A802C| db $D4, $B8, $3C ; OBJ 03C - Chairs in pairs ↔ | { 35, 2E } | Size: 00
|0A802F| db $88, $C4, $76 ; OBJ 076 - Wall decors (west) ↕ | { 22, 31 } | Size: 00
|0A8032| db $EC, $C4, $77 ; OBJ 077 - Wall decors (east) ↕ | { 3B, 31 } | Size: 00
|0A8035| db $8B, $90, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 24 } | Size: 0C
|0A8038| db $CA, $90, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 24 } | Size: 08
|0A803B| db $FF, $FF ; Layer 1
|0A803D| db $FF, $FF ; Layer 2
|0A803F| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0104:
|0A8041| db $81, $00 ; DOORTYPE 00 | South 10
|0A8043| db $81, $12 ; DOORTYPE 12 | South 10
|0A8045| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0055:
|0A8047| db $E5, $10 ; Floors and Layout
|0A8049| db $FC, $82, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 08, 08 }
|0A804C| db $33, $23, $01 ; OBJ 001 - Wall (top, north) ↔ | { 0C, 08 } | Size: 0F
|0A804F| db $AA, $20, $01 ; OBJ 001 - Wall (top, north) ↔ | { 2A, 08 } | Size: 08
|0A8052| db $FF, $A2, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 08 }
|0A8055| db $21, $33, $61 ; OBJ 061 - Wall (top, west) ↕ | { 08, 0C } | Size: 07
|0A8058| db $FC, $86, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 08, 1A }
|0A805B| db $FD, $46, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 14, 1A }
|0A805E| db $50, $61, $62 ; OBJ 062 - Wall (top, east) ↕ | { 14, 18 } | Size: 01
|0A8061| db $FD, $45, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 14, 14 }
|0A8064| db $62, $51, $02 ; OBJ 002 - Wall (top, south) ↔ | { 18, 14 } | Size: 09
|0A8067| db $FE, $A5, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 2A, 14 }
|0A806A| db $A8, $61, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 18 } | Size: 01
|0A806D| db $FE, $A6, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 2A, 1A }
|0A8070| db $FC, $B2, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 0B, 0B }
|0A8073| db $3F, $2F, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0F, 0B } | Size: 0F
|0A8076| db $BC, $2F, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2F, 0B } | Size: 03
|0A8079| db $FF, $72, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 0B }
|0A807C| db $DC, $3F, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 0F } | Size: 03
|0A807F| db $FF, $75, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 17 }
|0A8082| db $C4, $5E, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 31, 17 } | Size: 02
|0A8085| db $FE, $D5, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 2D, 17 }
|0A8088| db $B4, $54, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 2D, 15 } | Size: 00
|0A808B| db $FE, $D4, $4D ; OBJ 10D - Corner (bottom, convex) ▜ | { 2D, 11 }
|0A808E| db $56, $47, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 15, 11 } | Size: 0B
|0A8091| db $FD, $14, $4F ; OBJ 10F - Corner (bottom, convex) ▛ | { 11, 11 }
|0A8094| db $44, $54, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 11, 15 } | Size: 00
|0A8097| db $FD, $15, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 11, 17 }
|0A809A| db $3C, $5C, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0F, 17 } | Size: 00
|0A809D| db $FC, $B5, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 0B, 17 }
|0A80A0| db $2C, $3F, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0B, 0F } | Size: 03
|0A80A3| db $FC, $69, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 06, 24 }
|0A80A6| db $1A, $A1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 28 } | Size: 09
|0A80A9| db $FC, $6E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 06, 3A }
|0A80AC| db $FF, $89, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 38, 24 }
|0A80AF| db $E2, $A0, $62 ; OBJ 062 - Wall (top, east) ↕ | { 38, 28 } | Size: 08
|0A80B2| db $FF, $8E, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 38, 38 }
|0A80B5| db $9A, $E1, $02 ; OBJ 002 - Wall (top, south) ↔ | { 26, 38 } | Size: 09
|0A80B8| db $FE, $2E, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 22, 38 }
|0A80BB| db $88, $D2, $61 ; OBJ 061 - Wall (top, west) ↕ | { 22, 34 } | Size: 02
|0A80BE| db $FE, $2C, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 22, 30 }
|0A80C1| db $69, $C0, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1A, 30 } | Size: 04
|0A80C4| db $FD, $6C, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 16, 30 }
|0A80C7| db $58, $D3, $62 ; OBJ 062 - Wall (top, east) ↕ | { 16, 34 } | Size: 03
|0A80CA| db $FD, $6E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 16, 3A }
|0A80CD| db $FC, $99, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 09, 27 }
|0A80D0| db $37, $9F, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0D, 27 } | Size: 0F
|0A80D3| db $B4, $9F, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2D, 27 } | Size: 03
|0A80D6| db $FF, $59, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 35, 27 }
|0A80D9| db $D5, $AC, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 35, 2B } | Size: 04
|0A80DC| db $FF, $5D, $4B ; OBJ 10B - Corner (bottom, concave) ▟ | { 35, 35 }
|0A80DF| db $A5, $D5, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 29, 35 } | Size: 05
|0A80E2| db $FE, $5D, $49 ; OBJ 109 - Corner (bottom, concave) ▙ | { 25, 35 }
|0A80E5| db $94, $C5, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 25, 31 } | Size: 01
|0A80E8| db $FE, $5B, $4D ; OBJ 10D - Corner (bottom, convex) ▜ | { 25, 2D }
|0A80EB| db $5D, $B6, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 17, 2D } | Size: 06
|0A80EE| db $FD, $3B, $4F ; OBJ 10F - Corner (bottom, convex) ▛ | { 13, 2D }
|0A80F1| db $4C, $C5, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 13, 31 } | Size: 01
|0A80F4| db $FD, $3D, $0B ; OBJ 10B - Corner (bottom, concave) ▟ | { 13, 34 }
|0A80F7| db $34, $D2, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0D, 34 } | Size: 02
|0A80FA| db $25, $AC, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 09, 2B } | Size: 04
|0A80FD| db $FC, $9D, $09 ; OBJ 109 - Corner (bottom, concave) ▙ | { 09, 34 }
|0A8100| db $C1, $3D, $C8 ; OBJ 0C8 - Water floor ⇲ | { 30, 0F } | Size: 05
|0A8103| db $C1, $39, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 30, 0E } | Size: 05
|0A8106| db $C1, $3F, $79 ; OBJ 079 - Water edge (west) ↕ | { 30, 0F } | Size: 07
|0A8109| db $C1, $5D, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 30, 17 } | Size: 05
|0A810C| db $DD, $3F, $7A ; OBJ 07A - Water edge (east) ↕ | { 37, 0F } | Size: 07
|0A810F| db $68, $25, $55 ; OBJ 055 - Wall torches (north) ↔ | { 1A, 09 } | Size: 01
|0A8112| db $68, $55, $56 ; OBJ 056 - Wall torches (south) ↔ | { 1A, 15 } | Size: 01
|0A8115| db $2C, $6C, $56 ; OBJ 056 - Wall torches (south) ↔ | { 0B, 1B } | Size: 00
|0A8118| db $44, $6C, $56 ; OBJ 056 - Wall torches (south) ↔ | { 11, 1B } | Size: 00
|0A811B| db $2C, $94, $55 ; OBJ 055 - Wall torches (north) ↔ | { 0B, 25 } | Size: 00
|0A811E| db $44, $94, $55 ; OBJ 055 - Wall torches (north) ↔ | { 11, 25 } | Size: 00
|0A8121| db $BC, $94, $55 ; OBJ 055 - Wall torches (north) ↔ | { 2F, 25 } | Size: 00
|0A8124| db $B0, $A8, $DC ; OBJ 0DC - Chest platform (short) ⇲ | { 2C, 2A } | Size: 00
|0A8127| db $CF, $C7, $FA ; OBJ 22F - Pot | { 33, 31 }
|0A812A| db $CF, $CF, $FA ; OBJ 22F - Pot | { 33, 33 }
|0A812D| db $C1, $B2, $F9 ; OBJ 219 - Chest | { 30, 2C }
|0A8130| db $FC, $C1, $60 ; OBJ 120 - Small torch (lit) | { 0C, 05 }
|0A8133| db $FC, $A1, $60 ; OBJ 120 - Small torch (lit) | { 0A, 05 }
|0A8136| db $39, $D3, $F9 ; OBJ 21D - Intraroom stairs south (merged layers) | { 0E, 34 }
|0A8139| db $24, $E1, $22 ; OBJ 022 - Rail ↔ | { 09, 38 } | Size: 01
|0A813C| db $48, $E1, $22 ; OBJ 022 - Rail ↔ | { 12, 38 } | Size: 01
|0A813F| db $69, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1A, 34 } | Size: 06
|0A8142| db $8B, $F2, $00 ; OBJ 000 - Ceiling ↔ | { 22, 3C } | Size: 0E
|0A8145| db $F3, $90, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 24 } | Size: 0C
|0A8148| db $08, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 24 } | Size: 03
|0A814B| db $08, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 34 } | Size: 02
|0A814E| db $63, $61, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 18, 18 } | Size: 0D
|0A8151| db $A0, $63, $60 ; OBJ 060 - Ceiling ↕ | { 28, 18 } | Size: 03
|0A8154| db $00, $10, $00 ; OBJ 000 - Ceiling ↔ | { 00, 04 } | Size: 00
|0A8157| db $00, $18, $00 ; OBJ 000 - Ceiling ↔ | { 00, 06 } | Size: 00
|0A815A| db $01, $23, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 08 } | Size: 07
|0A815D| db $01, $61, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 18 } | Size: 05
|0A8160| db $FF, $FF ; Layer 1
|0A8162| db $FF, $FF ; Layer 2
|0A8164| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0055:
|0A8166| db $90, $02 ; DOORTYPE 02 | North 12
|0A8168| db $61, $00 ; DOORTYPE 00 | South 0C
|0A816A| db $61, $12 ; DOORTYPE 12 | South 0C
|0A816C| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00E1:
|0A816E| db $51, $04 ; Floors and Layout
|0A8170| db $19, $84, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 06, 21 } | Size: 04
|0A8173| db $41, $61, $01 ; OBJ 001 - Wall (top, north) ↔ | { 10, 18 } | Size: 05
|0A8176| db $FD, $A6, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 1A, 18 }
|0A8179| db $1B, $88, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 22 } | Size: 0C
|0A817C| db $FC, $6E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 06, 3A }
|0A817F| db $FD, $6E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 16, 3A }
|0A8182| db $58, $A6, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 16, 29 } | Size: 02
|0A8185| db $5A, $A8, $62 ; OBJ 062 - Wall (top, east) ↕ | { 16, 2A } | Size: 08
|0A8188| db $68, $8A, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1A, 22 } | Size: 02
|0A818B| db $24, $85, $19 ; OBJ 019 - Diagonal wall B ◤ (bottom) | { 09, 21 } | Size: 01
|0A818E| db $25, $8A, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 09, 22 } | Size: 06
|0A8191| db $FC, $9C, $09 ; OBJ 109 - Corner (bottom, concave) ▙ | { 09, 30 }
|0A8194| db $34, $C2, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0D, 30 } | Size: 02
|0A8197| db $FD, $3C, $0B ; OBJ 10B - Corner (bottom, concave) ▟ | { 13, 30 }
|0A819A| db $4C, $A6, $1C ; OBJ 01C - Diagonal wall B ◢ (bottom) | { 13, 29 } | Size: 02
|0A819D| db $4C, $AA, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 13, 2A } | Size: 02
|0A81A0| db $5C, $7B, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 17, 1E } | Size: 03
|0A81A3| db $40, $6F, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 10, 1B } | Size: 03
|0A81A6| db $FD, $76, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 17, 1B }
|0A81A9| db $FE, $29, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 22, 26 }
|0A81AC| db $9A, $9A, $02 ; OBJ 002 - Wall (top, south) ↔ | { 26, 26 } | Size: 0A
|0A81AF| db $FF, $A9, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 26 }
|0A81B2| db $94, $81, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 25, 20 } | Size: 01
|0A81B5| db $FE, $58, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 25, 23 }
|0A81B8| db $A5, $8E, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 29, 23 } | Size: 06
|0A81BB| db $DC, $81, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 20 } | Size: 01
|0A81BE| db $FF, $78, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 23 }
|0A81C1| db $FE, $57, $08 ; OBJ 108 - Corner (bottom, concave) ▛ | { 25, 1C }
|0A81C4| db $A5, $72, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 29, 1C } | Size: 06
|0A81C7| db $FF, $77, $0A ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 1C }
|0A81CA| db $AF, $2A, $DD ; OBJ 0DD - Table / Rock ⇲| { 2B, 0A } | Size: 0E
|0A81CD| db $94, $6E, $22 ; OBJ 022 - Rail ↔ | { 25, 1B } | Size: 02
|0A81D0| db $D4, $6E, $22 ; OBJ 022 - Rail ↔ | { 35, 1B } | Size: 02
|0A81D3| db $24, $D1, $22 ; OBJ 022 - Rail ↔ | { 09, 34 } | Size: 01
|0A81D6| db $48, $D1, $22 ; OBJ 022 - Rail ↔ | { 12, 34 } | Size: 01
|0A81D9| db $38, $C3, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 0E, 30 }
|0A81DC| db $0B, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 0F
|0A81DF| db $4A, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 04 } | Size: 0B
|0A81E2| db $08, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 14 } | Size: 03
|0A81E5| db $08, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 24 } | Size: 03
|0A81E8| db $08, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 34 } | Size: 02
|0A81EB| db $19, $61, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 06, 18 } | Size: 05
|0A81EE| db $1B, $50, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 06, 14 } | Size: 0C
|0A81F1| db $59, $50, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 14 } | Size: 04
|0A81F4| db $6C, $A4, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 1B, 29 } | Size: 00
|0A81F7| db $68, $AB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1A, 2A } | Size: 03
|0A81FA| db $68, $E8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1A, 3A } | Size: 00
|0A81FD| db $8B, $AB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 2A } | Size: 0F
|0A8200| db $CA, $AB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 2A } | Size: 0B
|0A8203| db $8B, $E8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 3A } | Size: 0C
|0A8206| db $CA, $E8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 3A } | Size: 08
|0A8209| db $FF, $FF ; Layer 1
|0A820B| db $6D, $75, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1B, 1D } | Size: 05
|0A820E| db $6D, $85, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1B, 21 } | Size: 05
|0A8211| db $FF, $FF ; Layer 2
|0A8213| db $28, $86, $AC ; OBJ 0AC - Diagonal layer 2 mask B ◢ | { 0A, 21 } | Size: 02
|0A8216| db $54, $99, $A9 ; OBJ 0A9 - Diagonal layer 2 mask B ◤ | { 15, 26 } | Size: 01
|0A8219| db $41, $6D, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 10, 1B } | Size: 05
|0A821C| db $5C, $6D, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 17, 1B } | Size: 01
|0A821F| db $2F, $88, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0B, 22 } | Size: 0C
|0A8222| db $26, $8B, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 09, 22 } | Size: 0B
|0A8225| db $4C, $A9, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 13, 2A } | Size: 01
|0A8228| db $26, $C0, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 09, 30 } | Size: 08
|0A822B| db $4C, $C0, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 13, 30 } | Size: 00
|0A822E| db $9B, $75, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 26, 1D } | Size: 0D
|0A8231| db $9B, $88, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 26, 22 } | Size: 0C
|0A8234| db $D8, $75, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 36, 1D } | Size: 01
|0A8237| db $D8, $88, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 36, 22 } | Size: 00
|0A823A| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E1:
|0A823C| db $A2, $40 ; DOORTYPE 40 | West 14
|0A823E| db $61, $0E ; DOORTYPE 0E | South 0C
|0A8240| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00E3:
|0A8242| db $51, $00 ; Floors and Layout
|0A8244| db $09, $C0, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 02, 30 } | Size: 04
|0A8247| db $08, $C2, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 30 } | Size: 02
|0A824A| db $68, $4A, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1A, 12 } | Size: 02
|0A824D| db $68, $A2, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1A, 28 } | Size: 02
|0A8250| db $25, $B4, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 09, 2D } | Size: 04
|0A8253| db $FC, $59, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 27 }
|0A8256| db $14, $AC, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 2B } | Size: 00
|0A8259| db $25, $9E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 09, 27 } | Size: 06
|0A825C| db $FC, $5B, $49 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 2D }
|0A825F| db $FD, $3B, $4D ; OBJ 10D - Corner (bottom, convex) ▜ | { 13, 2D }
|0A8262| db $4C, $C7, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 13, 31 } | Size: 03
|0A8265| db $FD, $3D, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 13, 37 }
|0A8268| db $FD, $79, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 17, 27 }
|0A826B| db $5D, $AD, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 17, 2B } | Size: 05
|0A826E| db $FD, $7D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 17, 37 }
|0A8271| db $FE, $61, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 26, 04 }
|0A8274| db $9A, $21, $61 ; OBJ 061 - Wall (top, west) ↕ | { 26, 08 } | Size: 09
|0A8277| db $FE, $66, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 26, 1A }
|0A827A| db $FF, $61, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 36, 04 }
|0A827D| db $DA, $21, $62 ; OBJ 062 - Wall (top, east) ↕ | { 36, 08 } | Size: 09
|0A8280| db $FF, $66, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 36, 1A }
|0A8283| db $FE, $91, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 29, 07 }
|0A8286| db $A5, $2D, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 29, 0B } | Size: 05
|0A8289| db $FE, $95, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 29, 17 }
|0A828C| db $B4, $1E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2D, 07 } | Size: 02
|0A828F| db $FF, $31, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 33, 07 }
|0A8292| db $CD, $2D, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 33, 0B } | Size: 05
|0A8295| db $FF, $35, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 33, 17 }
|0A8298| db $B4, $5E, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2D, 17 } | Size: 02
|0A829B| db $89, $B4, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 22, 2D } | Size: 04
|0A829E| db $89, $C0, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 22, 30 } | Size: 04
|0A82A1| db $D1, $90, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 34, 24 } | Size: 04
|0A82A4| db $D1, $E4, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 34, 39 } | Size: 04
|0A82A7| db $88, $BB, $61 ; OBJ 061 - Wall (top, west) ↕ | { 22, 2E } | Size: 03
|0A82AA| db $E8, $BB, $62 ; OBJ 062 - Wall (top, east) ↕ | { 3A, 2E } | Size: 03
|0A82AD| db $94, $B5, $19 ; OBJ 019 - Diagonal wall B ◤ (bottom) | { 25, 2D } | Size: 01
|0A82B0| db $94, $C1, $1A ; OBJ 01A - Diagonal wall B ◣ (bottom) | { 25, 30 } | Size: 01
|0A82B3| db $B0, $9F, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2C, 27 } | Size: 03
|0A82B6| db $D0, $9D, $1B ; OBJ 01B - Diagonal wall B ◥ (bottom) | { 34, 27 } | Size: 01
|0A82B9| db $D0, $D9, $1C ; OBJ 01C - Diagonal wall B ◢ (bottom) | { 34, 36 } | Size: 01
|0A82BC| db $B0, $DF, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2C, 37 } | Size: 03
|0A82BF| db $94, $BA, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 25, 2E } | Size: 02
|0A82C2| db $DC, $BA, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 2E } | Size: 02
|0A82C5| db $14, $C5, $22 ; OBJ 022 - Rail ↔ | { 05, 31 } | Size: 01
|0A82C8| db $49, $C6, $69 ; OBJ 069 - Rail ↕ | { 12, 31 } | Size: 06
|0A82CB| db $30, $B7, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 0C, 2D }
|0A82CE| db $09, $D5, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 02, 35 } | Size: 05
|0A82D1| db $88, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 04 } | Size: 03
|0A82D4| db $88, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 14 } | Size: 02
|0A82D7| db $E8, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 04 } | Size: 03
|0A82DA| db $E8, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 14 } | Size: 02
|0A82DD| db $89, $91, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 22, 24 } | Size: 05
|0A82E0| db $89, $D5, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 22, 35 } | Size: 05
|0A82E3| db $D5, $91, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 35, 24 } | Size: 05
|0A82E6| db $D5, $F5, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 35, 3D } | Size: 05
|0A82E9| db $FF, $FF ; Layer 1
|0A82EB| db $FE, $C2, $BF ; OBJ 13F - Magic bat altar | { 2C, 0A }
|0A82EE| db $B3, $BB, $FA ; OBJ 22F - Pot | { 2C, 2E }
|0A82F1| db $CB, $CB, $FA ; OBJ 22F - Pot | { 32, 32 }
|0A82F4| db $6D, $B5, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1B, 2D } | Size: 05
|0A82F7| db $6D, $C5, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1B, 31 } | Size: 05
|0A82FA| db $B1, $6E, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2C, 1B } | Size: 06
|0A82FD| db $C1, $6E, $62 ; OBJ 062 - Wall (top, east) ↕ | { 30, 1B } | Size: 06
|0A8300| db $FF, $FF ; Layer 2
|0A8302| db $1B, $A1, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 06, 28 } | Size: 0D
|0A8305| db $4D, $A3, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 13, 28 } | Size: 07
|0A8308| db $4D, $DC, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 13, 37 } | Size: 04
|0A830B| db $94, $BB, $AC ; OBJ 0AC - Diagonal layer 2 mask B ◢ | { 25, 2E } | Size: 03
|0A830E| db $94, $CF, $AB ; OBJ 0AB - Diagonal layer 2 mask B ◥ | { 25, 33 } | Size: 03
|0A8311| db $D0, $A3, $AA ; OBJ 0AA - Diagonal layer 2 mask B ◣ | { 34, 28 } | Size: 03
|0A8314| db $D0, $CF, $A9 ; OBJ 0A9 - Diagonal layer 2 mask B ◤ | { 34, 33 } | Size: 03
|0A8317| db $97, $BC, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 25, 2F } | Size: 0C
|0A831A| db $CD, $BC, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 33, 2F } | Size: 04
|0A831D| db $B1, $9D, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2C, 27 } | Size: 05
|0A8320| db $B1, $CD, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2C, 33 } | Size: 05
|0A8323| db $AA, $23, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2A, 08 } | Size: 0B
|0A8326| db $AA, $5C, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2A, 17 } | Size: 08
|0A8329| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E3:
|0A832B| db $B2, $4A ; DOORTYPE 4A | West 16
|0A832D| db $B0, $40 ; DOORTYPE 40 | North 16
|0A832F| db $61, $0E ; DOORTYPE 0E | South 0C
|0A8331| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00E2:
|0A8333| db $51, $04 ; Floors and Layout
|0A8335| db $FC, $61, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 06, 04 }
|0A8338| db $19, $22, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 08 } | Size: 06
|0A833B| db $FC, $65, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 06, 14 }
|0A833E| db $FC, $A5, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 0A, 14 }
|0A8341| db $2A, $61, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0A, 18 } | Size: 09
|0A8344| db $FC, $AA, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 0A, 2A }
|0A8347| db $FC, $6A, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 06, 2A }
|0A834A| db $19, $BA, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 2E } | Size: 06
|0A834D| db $FC, $6E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 06, 3A }
|0A8350| db $FC, $91, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 09, 07 }
|0A8353| db $24, $2E, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 09, 0B } | Size: 02
|0A8356| db $FC, $94, $49 ; OBJ 109 - Corner (bottom, concave) ▙ | { 09, 11 }
|0A8359| db $FC, $D4, $4D ; OBJ 10D - Corner (bottom, convex) ▜ | { 0D, 11 }
|0A835C| db $34, $55, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0D, 15 } | Size: 01
|0A835F| db $FC, $D6, $49 ; OBJ 109 - Corner (bottom, concave) ▙ | { 0D, 19 }
|0A8362| db $44, $66, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 11, 19 } | Size: 02
|0A8365| db $FD, $76, $4B ; OBJ 10B - Corner (bottom, concave) ▟ | { 17, 19 }
|0A8368| db $5D, $2E, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 17, 0B } | Size: 06
|0A836B| db $FD, $71, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 17, 07 }
|0A836E| db $35, $1C, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0D, 07 } | Size: 04
|0A8371| db $FC, $D9, $48 ; OBJ 108 - Corner (bottom, concave) ▛ | { 0D, 25 }
|0A8374| db $44, $96, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 11, 25 } | Size: 02
|0A8377| db $FD, $79, $4A ; OBJ 10A - Corner (bottom, concave) ▜ | { 17, 25 }
|0A837A| db $34, $A5, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0D, 29 } | Size: 01
|0A837D| db $FC, $DB, $4C ; OBJ 10C - Corner (bottom, convex) ▟ | { 0D, 2D }
|0A8380| db $FC, $9B, $48 ; OBJ 108 - Corner (bottom, concave) ▛ | { 09, 2D }
|0A8383| db $24, $C6, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 09, 31 } | Size: 02
|0A8386| db $FC, $9D, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 09, 37 }
|0A8389| db $35, $DC, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0D, 37 } | Size: 04
|0A838C| db $FD, $7D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 17, 37 }
|0A838F| db $5D, $A6, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 17, 29 } | Size: 06
|0A8392| db $FE, $26, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 18 }
|0A8395| db $9A, $62, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 18 } | Size: 0A
|0A8398| db $FF, $A6, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 18 }
|0A839B| db $FE, $2A, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 22, 28 }
|0A839E| db $98, $A2, $02 ; OBJ 002 - Wall (top, south) ↔ | { 26, 28 } | Size: 02
|0A83A1| db $FE, $AA, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 2A, 28 }
|0A83A4| db $A9, $B3, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 2C } | Size: 07
|0A83A7| db $FE, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 2A, 3A }
|0A83AA| db $D8, $E6, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 36, 39 } | Size: 02
|0A83AD| db $E8, $CA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 3A, 32 } | Size: 02
|0A83B0| db $FE, $86, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 28, 1B }
|0A83B3| db $A0, $7E, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 28, 1F } | Size: 02
|0A83B6| db $FE, $89, $49 ; OBJ 109 - Corner (bottom, concave) ▙ | { 28, 25 }
|0A83B9| db $B0, $94, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2C, 25 } | Size: 00
|0A83BC| db $FE, $D9, $4D ; OBJ 10D - Corner (bottom, convex) ▜ | { 2D, 25 }
|0A83BF| db $B4, $A5, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 2D, 29 } | Size: 01
|0A83C2| db $FE, $DB, $09 ; OBJ 109 - Corner (bottom, concave) ▙ | { 2D, 2C }
|0A83C5| db $C4, $B2, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 31, 2C } | Size: 02
|0A83C8| db $B1, $6D, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2C, 1B } | Size: 05
|0A83CB| db $FF, $76, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 1B }
|0A83CE| db $DD, $7E, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 1F } | Size: 06
|0A83D1| db $FF, $7B, $0B ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 2C }
|0A83D4| db $34, $75, $22 ; OBJ 022 - Rail ↔ | { 0D, 1D } | Size: 01
|0A83D7| db $34, $91, $22 ; OBJ 022 - Rail ↔ | { 0D, 24 } | Size: 01
|0A83DA| db $58, $75, $22 ; OBJ 022 - Rail ↔ | { 16, 1D } | Size: 01
|0A83DD| db $58, $91, $22 ; OBJ 022 - Rail ↔ | { 16, 24 } | Size: 01
|0A83E0| db $B4, $C1, $22 ; OBJ 022 - Rail ↔ | { 2D, 30 } | Size: 01
|0A83E3| db $D8, $C1, $22 ; OBJ 022 - Rail ↔ | { 36, 30 } | Size: 01
|0A83E6| db $9C, $6C, $69 ; OBJ 069 - Rail ↕ | { 27, 1B } | Size: 00
|0A83E9| db $9C, $8B, $69 ; OBJ 069 - Rail ↕ | { 27, 22 } | Size: 03
|0A83EC| db $32, $29, $C8 ; OBJ 0C8 - Water floor ⇲ | { 0C, 0A } | Size: 09
|0A83EF| db $41, $49, $C8 ; OBJ 0C8 - Water floor ⇲ | { 10, 12 } | Size: 05
|0A83F2| db $41, $A1, $C8 ; OBJ 0C8 - Water floor ⇲ | { 10, 28 } | Size: 05
|0A83F5| db $32, $C1, $C8 ; OBJ 0C8 - Water floor ⇲ | { 0C, 30 } | Size: 09
|0A83F8| db $B2, $7D, $C8 ; OBJ 0C8 - Water floor ⇲ | { 2C, 1F } | Size: 09
|0A83FB| db $C1, $95, $C8 ; OBJ 0C8 - Water floor ⇲ | { 30, 25 } | Size: 05
|0A83FE| db $32, $29, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 0C, 0A } | Size: 09
|0A8401| db $31, $2D, $79 ; OBJ 079 - Water edge (west) ↕ | { 0C, 0B } | Size: 05
|0A8404| db $30, $46, $44 ; OBJ 044 - Water edge ┗━┓ (concave) ↔ | { 0C, 11 } | Size: 02
|0A8407| db $41, $4A, $79 ; OBJ 079 - Water edge (west) ↕ | { 10, 12 } | Size: 06
|0A840A| db $41, $65, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 10, 19 } | Size: 05
|0A840D| db $5F, $2D, $7A ; OBJ 07A - Water edge (east) ↕ | { 17, 0B } | Size: 0D
|0A8410| db $41, $A1, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 10, 28 } | Size: 05
|0A8413| db $41, $A6, $79 ; OBJ 079 - Water edge (west) ↕ | { 10, 29 } | Size: 06
|0A8416| db $30, $C2, $46 ; OBJ 046 - Water edge ┏━┛ (convex) ↔ | { 0C, 30 } | Size: 02
|0A8419| db $31, $C5, $79 ; OBJ 079 - Water edge (west) ↕ | { 0C, 31 } | Size: 05
|0A841C| db $32, $DD, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 0C, 37 } | Size: 09
|0A841F| db $5F, $A5, $7A ; OBJ 07A - Water edge (east) ↕ | { 17, 29 } | Size: 0D
|0A8422| db $AE, $7A, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 2B, 1E } | Size: 0A
|0A8425| db $AD, $7E, $79 ; OBJ 079 - Water edge (west) ↕ | { 2B, 1F } | Size: 06
|0A8428| db $AC, $9B, $44 ; OBJ 044 - Water edge ┗━┓ (concave) ↔ | { 2B, 26 } | Size: 03
|0A842B| db $C1, $9C, $79 ; OBJ 079 - Water edge (west) ↕ | { 30, 27 } | Size: 04
|0A842E| db $C1, $B1, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 30, 2C } | Size: 05
|0A8431| db $DF, $7C, $7A ; OBJ 07A - Water edge (east) ↕ | { 37, 1F } | Size: 0C
|0A8434| db $49, $67, $F9 ; OBJ 21D - Intraroom stairs south (merged layers) | { 12, 19 }
|0A8437| db $C9, $B3, $F9 ; OBJ 21D - Intraroom stairs south (merged layers) | { 32, 2C }
|0A843A| db $FD, $29, $72 ; OBJ 132 - Intraroom stairs north (merged layers) | { 12, 25 }
|0A843D| db $08, $00, $60 ; OBJ 060 - Ceiling ↕ | { 02, 00 } | Size: 00
|0A8440| db $10, $00, $60 ; OBJ 060 - Ceiling ↕ | { 04, 00 } | Size: 00
|0A8443| db $18, $63, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 06, 18 } | Size: 03
|0A8446| db $18, $A2, $00 ; OBJ 000 - Ceiling ↔ | { 06, 28 } | Size: 02
|0A8449| db $8B, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 04 } | Size: 0F
|0A844C| db $CA, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 04 } | Size: 0B
|0A844F| db $8B, $50, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 14 } | Size: 0C
|0A8452| db $CA, $50, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 14 } | Size: 08
|0A8455| db $89, $B3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 2C } | Size: 07
|0A8458| db $89, $F0, $00 ; OBJ 000 - Ceiling ↔ | { 22, 3C } | Size: 04
|0A845B| db $DC, $F7, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 37, 3D } | Size: 03
|0A845E| db $FF, $FF ; Layer 1
|0A8460| db $FF, $FF ; Layer 2
|0A8462| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E2:
|0A8464| db $72, $00 ; DOORTYPE 00 | West 0E
|0A8466| db $81, $0E ; DOORTYPE 0E | South 10
|0A8468| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0000:
|0A846A| db $E6, $00 ; Floors and Layout
|0A846C| db $FE, $00, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 20, 02 }
|0A846F| db $93, $08, $01 ; OBJ 001 - Wall (top, north) ↔ | { 24, 02 } | Size: 0C
|0A8472| db $FF, $C0, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 3C, 02 }
|0A8475| db $82, $1B, $61 ; OBJ 061 - Wall (top, west) ↕ | { 20, 06 } | Size: 0B
|0A8478| db $FE, $07, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 20, 1C }
|0A847B| db $FF, $C7, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 3C, 1C }
|0A847E| db $93, $70, $02 ; OBJ 002 - Wall (top, south) ↔ | { 24, 1C } | Size: 0C
|0A8481| db $F2, $1B, $62 ; OBJ 062 - Wall (top, east) ↕ | { 3C, 06 } | Size: 0B
|0A8484| db $C6, $17, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 31, 05 } | Size: 0B
|0A8487| db $8F, $55, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 23, 15 } | Size: 0D
|0A848A| db $C6, $55, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 31, 15 } | Size: 09
|0A848D| db $8F, $17, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 23, 05 } | Size: 0F
|0A8490| db $93, $09, $FF ; OBJ 277 - Triforce wall ornament | { 24, 02 }
|0A8493| db $D3, $09, $FF ; OBJ 277 - Triforce wall ornament | { 34, 02 }
|0A8496| db $B2, $09, $FF ; OBJ 276 - Ganon door | { 2C, 02 }
|0A8499| db $80, $1E, $76 ; OBJ 076 - Wall decors (west) ↕ | { 20, 07 } | Size: 02
|0A849C| db $F4, $1E, $77 ; OBJ 077 - Wall decors (east) ↕ | { 3D, 07 } | Size: 02
|0A849F| db $AD, $35, $E1 ; OBJ 0E1 - Tiled floor ⇲ | { 2B, 0D } | Size: 05
|0A84A2| db $C4, $35, $E1 ; OBJ 0E1 - Tiled floor ⇲ | { 31, 0D } | Size: 01
|0A84A5| db $B8, $36, $FF ; OBJ 278 - Triforce floor tiles | { 2E, 0D }
|0A84A8| db $FE, $FA, $A0 ; OBJ 120 - Small torch (lit) | { 2F, 2A }
|0A84AB| db $8B, $BB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 2E } | Size: 0F
|0A84AE| db $CA, $BB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 2E } | Size: 0B
|0A84B1| db $FF, $FF ; Layer 1
|0A84B3| db $FF, $FF ; Layer 2
|0A84B5| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0000:
|0A84B7| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0010:
|0A84B9| db $E1, $04 ; Floors and Layout
|0A84BB| db $FC, $A1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 0A, 04 }
|0A84BE| db $2B, $22, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0A, 08 } | Size: 0E
|0A84C1| db $FC, $A9, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 0A, 24 }
|0A84C4| db $FD, $21, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 12, 04 }
|0A84C7| db $4B, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 12, 08 } | Size: 0F
|0A84CA| db $FC, $69, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 06, 24 }
|0A84CD| db $1A, $A1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 28 } | Size: 09
|0A84D0| db $FC, $6E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 06, 3A }
|0A84D3| db $48, $9A, $62 ; OBJ 062 - Wall (top, east) ↕ | { 12, 26 } | Size: 02
|0A84D6| db $FD, $2A, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 12, 2A }
|0A84D9| db $58, $AA, $01 ; OBJ 001 - Wall (top, north) ↔ | { 16, 2A } | Size: 02
|0A84DC| db $FD, $AA, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 1A, 2A }
|0A84DF| db $FE, $2A, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 2A }
|0A84E2| db $98, $AA, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 2A } | Size: 02
|0A84E5| db $FE, $AA, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 2A, 2A }
|0A84E8| db $A9, $81, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 20 } | Size: 05
|0A84EB| db $FE, $A7, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 2A, 1C }
|0A84EE| db $90, $73, $02 ; OBJ 002 - Wall (top, south) ↔ | { 24, 1C } | Size: 03
|0A84F1| db $FE, $07, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 20, 1C }
|0A84F4| db $83, $10, $61 ; OBJ 061 - Wall (top, west) ↕ | { 20, 04 } | Size: 0C
|0A84F7| db $FE, $00, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 20, 00 }
|0A84FA| db $93, $00, $01 ; OBJ 001 - Wall (top, north) ↔ | { 24, 00 } | Size: 0C
|0A84FD| db $FF, $C0, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 3C, 00 }
|0A8500| db $F3, $10, $62 ; OBJ 062 - Wall (top, east) ↕ | { 3C, 04 } | Size: 0C
|0A8503| db $FF, $C7, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 3C, 1C }
|0A8506| db $D8, $73, $02 ; OBJ 002 - Wall (top, south) ↔ | { 36, 1C } | Size: 03
|0A8509| db $FF, $27, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 32, 1C }
|0A850C| db $CA, $82, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 20 } | Size: 0A
|0A850F| db $FF, $2D, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 32, 34 }
|0A8512| db $99, $D2, $02 ; OBJ 002 - Wall (top, south) ↔ | { 26, 34 } | Size: 06
|0A8515| db $FE, $2D, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 22, 34 }
|0A8518| db $93, $13, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 24, 04 } | Size: 0F
|0A851B| db $D1, $13, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 34, 04 } | Size: 07
|0A851E| db $90, $51, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 24, 14 } | Size: 01
|0A8521| db $E0, $51, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 38, 14 } | Size: 01
|0A8524| db $FE, $92, $48 ; OBJ 108 - Corner (bottom, concave) ▛ | { 29, 09 }
|0A8527| db $B4, $26, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2D, 09 } | Size: 02
|0A852A| db $FF, $32, $4A ; OBJ 10A - Corner (bottom, concave) ▜ | { 33, 09 }
|0A852D| db $A4, $36, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 29, 0D } | Size: 02
|0A8530| db $FE, $94, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 29, 13 }
|0A8533| db $B4, $4E, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2D, 13 } | Size: 02
|0A8536| db $FF, $34, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 33, 13 }
|0A8539| db $CC, $36, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 33, 0D } | Size: 02
|0A853C| db $FE, $C3, $18 ; OBJ 118 - Deep corner (concave) ▛ | { 2C, 0C }
|0A853F| db $B8, $31, $07 ; OBJ 007 - Deep wall (north) ↔ | { 2E, 0C } | Size: 01
|0A8542| db $FF, $23, $1A ; OBJ 11A - Deep corner (concave) ▜ | { 32, 0C }
|0A8545| db $B0, $39, $67 ; OBJ 067 - Deep wall (west) ↕ | { 2C, 0E } | Size: 01
|0A8548| db $FE, $C4, $99 ; OBJ 119 - Deep corner (concave) ▙ | { 2C, 12 }
|0A854B| db $B8, $49, $08 ; OBJ 008 - Deep wall (south) ↔ | { 2E, 12 } | Size: 01
|0A854E| db $FF, $24, $9B ; OBJ 11B - Deep corner (concave) ▟ | { 32, 12 }
|0A8551| db $C8, $39, $68 ; OBJ 068 - Deep wall (east) ↕ | { 32, 0E } | Size: 01
|0A8554| db $B8, $38, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 2E, 0E } | Size: 00
|0A8557| db $A3, $20, $22 ; OBJ 022 - Rail ↔ | { 28, 08 } | Size: 0C
|0A855A| db $A3, $20, $69 ; OBJ 069 - Rail ↕ | { 28, 08 } | Size: 0C
|0A855D| db $A3, $5C, $22 ; OBJ 022 - Rail ↔ | { 28, 17 } | Size: 0C
|0A8560| db $DF, $20, $69 ; OBJ 069 - Rail ↕ | { 37, 08 } | Size: 0C
|0A8563| db $3F, $14, $F9 ; OBJ 213 - Telepathy tile | { 0F, 05 }
|0A8566| db $08, $00, $60 ; OBJ 060 - Ceiling ↕ | { 02, 00 } | Size: 00
|0A8569| db $10, $00, $60 ; OBJ 060 - Ceiling ↕ | { 04, 00 } | Size: 00
|0A856C| db $18, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 06, 04 } | Size: 03
|0A856F| db $18, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 06, 14 } | Size: 03
|0A8572| db $59, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 04 } | Size: 07
|0A8575| db $59, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 14 } | Size: 07
|0A8578| db $59, $89, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 22 } | Size: 05
|0A857B| db $89, $81, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 20 } | Size: 05
|0A857E| db $89, $A0, $00 ; OBJ 000 - Ceiling ↔ | { 22, 28 } | Size: 04
|0A8581| db $8B, $E1, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 38 } | Size: 0D
|0A8584| db $CA, $E1, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 38 } | Size: 09
|0A8587| db $D9, $83, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 20 } | Size: 07
|0A858A| db $D9, $C1, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 30 } | Size: 05
|0A858D| db $FF, $FF ; Layer 1
|0A858F| db $2B, $14, $FF ; OBJ 273 - Layer 2 mask (full) | { 0A, 05 }
|0A8592| db $FF, $FF ; Layer 2
|0A8594| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0010:
|0A8596| db $61, $0A ; DOORTYPE 0A | South 0C
|0A8598| db $82, $00 ; DOORTYPE 00 | West 10
|0A859A| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0008:
|0A859C| db $51, $00 ; Floors and Layout
|0A859E| db $08, $B3, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 02, 2C } | Size: 03
|0A85A1| db $08, $B6, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 2D } | Size: 02
|0A85A4| db $54, $93, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 15, 24 } | Size: 03
|0A85A7| db $68, $B6, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1A, 2D } | Size: 02
|0A85AA| db $14, $B0, $19 ; OBJ 019 - Diagonal wall B ◤ (bottom) | { 05, 2C } | Size: 00
|0A85AD| db $2D, $9C, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0B, 27 } | Size: 04
|0A85B0| db $54, $9C, $1B ; OBJ 01B - Diagonal wall B ◥ (bottom) | { 15, 27 } | Size: 00
|0A85B3| db $15, $B4, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 2D } | Size: 04
|0A85B6| db $FC, $5D, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 37 }
|0A85B9| db $25, $DE, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 09, 37 } | Size: 06
|0A85BC| db $FD, $7D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 17, 37 }
|0A85BF| db $5D, $B4, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 17, 2D } | Size: 04
|0A85C2| db $FE, $2A, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 28 }
|0A85C5| db $99, $A3, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 28 } | Size: 07
|0A85C8| db $FF, $4A, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 34, 28 }
|0A85CB| db $D1, $B3, $62 ; OBJ 062 - Wall (top, east) ↕ | { 34, 2C } | Size: 07
|0A85CE| db $FF, $4E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 34, 3A }
|0A85D1| db $FE, $5A, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 25, 2B }
|0A85D4| db $A4, $AF, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 29, 2B } | Size: 03
|0A85D7| db $FF, $1A, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 31, 2B }
|0A85DA| db $94, $BD, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 25, 2F } | Size: 01
|0A85DD| db $FE, $5C, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 25, 33 }
|0A85E0| db $A4, $CF, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 29, 33 } | Size: 03
|0A85E3| db $FF, $1C, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 31, 33 }
|0A85E6| db $C4, $BD, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 31, 2F } | Size: 01
|0A85E9| db $94, $DD, $22 ; OBJ 022 - Rail ↔ | { 25, 37 } | Size: 01
|0A85EC| db $C4, $DC, $22 ; OBJ 022 - Rail ↔ | { 31, 37 } | Size: 00
|0A85EF| db $A8, $CF, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 2A, 33 }
|0A85F2| db $09, $90, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 02, 24 } | Size: 04
|0A85F5| db $59, $90, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 16, 24 } | Size: 04
|0A85F8| db $8B, $90, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 24 } | Size: 0C
|0A85FB| db $CA, $90, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 24 } | Size: 08
|0A85FE| db $E1, $A3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 38, 28 } | Size: 07
|0A8601| db $E1, $E1, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 38, 38 } | Size: 05
|0A8604| db $FF, $FF ; Layer 1
|0A8606| db $FC, $AC, $24 ; OBJ 124 - Fairy statue | { 0A, 30 }
|0A8609| db $FD, $2C, $24 ; OBJ 124 - Fairy statue | { 12, 30 }
|0A860C| db $31, $B0, $C8 ; OBJ 0C8 - Water floor ⇲ | { 0C, 2C } | Size: 04
|0A860F| db $38, $B8, $C8 ; OBJ 0C8 - Water floor ⇲ | { 0E, 2E } | Size: 00
|0A8612| db $31, $AD, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 0C, 2B } | Size: 05
|0A8615| db $30, $B2, $79 ; OBJ 079 - Water edge (west) ↕ | { 0C, 2C } | Size: 02
|0A8618| db $30, $BC, $44 ; OBJ 044 - Water edge ┗━┓ (concave) ↔ | { 0C, 2F } | Size: 00
|0A861B| db $38, $C0, $79 ; OBJ 079 - Water edge (west) ↕ | { 0E, 30 } | Size: 00
|0A861E| db $38, $C5, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 0E, 31 } | Size: 01
|0A8621| db $44, $C0, $7A ; OBJ 07A - Water edge (east) ↕ | { 11, 30 } | Size: 00
|0A8624| db $44, $BC, $43 ; OBJ 043 - Water edge ┏━┛ (concave) ↔ | { 11, 2F } | Size: 00
|0A8627| db $4C, $B2, $7A ; OBJ 07A - Water edge (east) ↕ | { 13, 2C } | Size: 02
|0A862A| db $6D, $B5, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1B, 2D } | Size: 05
|0A862D| db $6D, $C5, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1B, 31 } | Size: 05
|0A8630| db $30, $EE, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0C, 3B } | Size: 02
|0A8633| db $40, $EE, $62 ; OBJ 062 - Wall (top, east) ↕ | { 10, 3B } | Size: 02
|0A8636| db $FF, $FF ; Layer 2
|0A8638| db $14, $B7, $AC ; OBJ 0AC - Diagonal layer 2 mask B ◢ | { 05, 2D } | Size: 03
|0A863B| db $50, $9F, $AA ; OBJ 0AA - Diagonal layer 2 mask B ◣ | { 14, 27 } | Size: 03
|0A863E| db $31, $9F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0C, 27 } | Size: 07
|0A8641| db $17, $BA, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 05, 2E } | Size: 0E
|0A8644| db $4D, $BA, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 13, 2E } | Size: 06
|0A8647| db $97, $AD, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 25, 2B } | Size: 0D
|0A864A| db $97, $C8, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 25, 32 } | Size: 0C
|0A864D| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0008:
|0A864F| db $B2, $48 ; DOORTYPE 48 | West 16
|0A8651| db $81, $0E ; DOORTYPE 0E | South 10
|0A8653| db $91, $40 ; DOORTYPE 40 | South 12
|0A8655| db $91, $16 ; DOORTYPE 16 | South 12
|0A8657| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0018:
|0A8659| db $E5, $04 ; Floors and Layout
|0A865B| db $FC, $81, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 08, 04 }
|0A865E| db $09, $94, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 02, 25 } | Size: 04
|0A8661| db $09, $A8, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 02, 2A } | Size: 04
|0A8664| db $09, $98, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 26 } | Size: 04
|0A8667| db $23, $20, $61 ; OBJ 061 - Wall (top, west) ↕ | { 08, 08 } | Size: 0C
|0A866A| db $31, $D1, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0C, 34 } | Size: 05
|0A866D| db $FD, $6D, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 16, 34 }
|0A8670| db $5B, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 16, 08 } | Size: 0F
|0A8673| db $59, $9B, $62 ; OBJ 062 - Wall (top, east) ↕ | { 16, 26 } | Size: 07
|0A8676| db $FD, $61, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 16, 04 }
|0A8679| db $3C, $1D, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0F, 07 } | Size: 01
|0A867C| db $FD, $31, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 13, 07 }
|0A867F| db $15, $94, $19 ; OBJ 019 - Diagonal wall B ◤ (bottom) | { 05, 25 } | Size: 04
|0A8682| db $14, $A9, $1A ; OBJ 01A - Diagonal wall B ◣ (bottom) | { 05, 2A } | Size: 01
|0A8685| db $14, $9B, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 26 } | Size: 03
|0A8688| db $2E, $2A, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0B, 0A } | Size: 0A
|0A868B| db $FC, $B1, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 0B, 07 }
|0A868E| db $30, $C7, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0C, 31 } | Size: 03
|0A8691| db $FD, $3C, $4B ; OBJ 10B - Corner (bottom, concave) ▟ | { 13, 31 }
|0A8694| db $4F, $2F, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 13, 0B } | Size: 0F
|0A8697| db $4C, $AE, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 13, 2B } | Size: 02
|0A869A| db $3C, $39, $C8 ; OBJ 0C8 - Water floor ⇲ | { 0F, 0E } | Size: 01
|0A869D| db $3C, $61, $C8 ; OBJ 0C8 - Water floor ⇲ | { 0F, 18 } | Size: 01
|0A86A0| db $38, $99, $C8 ; OBJ 0C8 - Water floor ⇲ | { 0E, 26 } | Size: 01
|0A86A3| db $34, $9B, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 0D, 26 } | Size: 03
|0A86A6| db $35, $9D, $79 ; OBJ 079 - Water edge (west) ↕ | { 0D, 27 } | Size: 05
|0A86A9| db $34, $B7, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 0D, 2D } | Size: 03
|0A86AC| db $49, $9D, $7A ; OBJ 07A - Water edge (east) ↕ | { 12, 27 } | Size: 05
|0A86AF| db $3C, $61, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 0F, 18 } | Size: 01
|0A86B2| db $3D, $65, $79 ; OBJ 079 - Water edge (west) ↕ | { 0F, 19 } | Size: 05
|0A86B5| db $3C, $7D, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 0F, 1F } | Size: 01
|0A86B8| db $49, $65, $7A ; OBJ 07A - Water edge (east) ↕ | { 12, 19 } | Size: 05
|0A86BB| db $3C, $39, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 0F, 0E } | Size: 01
|0A86BE| db $3D, $3D, $79 ; OBJ 079 - Water edge (west) ↕ | { 0F, 0F } | Size: 05
|0A86C1| db $3C, $55, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 0F, 15 } | Size: 01
|0A86C4| db $49, $3D, $7A ; OBJ 07A - Water edge (east) ↕ | { 12, 0F } | Size: 05
|0A86C7| db $01, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 04 } | Size: 07
|0A86CA| db $01, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 14 } | Size: 06
|0A86CD| db $08, $81, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 02, 20 } | Size: 01
|0A86D0| db $09, $BD, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 02, 2F } | Size: 05
|0A86D3| db $0B, $E1, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 38 } | Size: 0D
|0A86D6| db $49, $E1, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 38 } | Size: 05
|0A86D9| db $68, $00, $60 ; OBJ 060 - Ceiling ↕ | { 1A, 00 } | Size: 00
|0A86DC| db $70, $00, $60 ; OBJ 060 - Ceiling ↕ | { 1C, 00 } | Size: 00
|0A86DF| db $FF, $FF ; Layer 1
|0A86E1| db $FF, $FF ; Layer 2
|0A86E3| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0018:
|0A86E5| db $30, $02 ; DOORTYPE 02 | North 06
|0A86E7| db $30, $16 ; DOORTYPE 16 | North 06
|0A86E9| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_002F:
|0A86EB| db $51, $14 ; Floors and Layout
|0A86ED| db $FC, $A1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 0A, 04 }
|0A86F0| db $2A, $21, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0A, 08 } | Size: 09
|0A86F3| db $FC, $A6, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0A, 1A }
|0A86F6| db $FD, $21, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 12, 04 }
|0A86F9| db $4A, $21, $62 ; OBJ 062 - Wall (top, east) ↕ | { 12, 08 } | Size: 09
|0A86FC| db $FD, $26, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 12, 1A }
|0A86FF| db $FC, $69, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 06, 24 }
|0A8702| db $18, $CA, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 06, 32 } | Size: 02
|0A8705| db $19, $A3, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 28 } | Size: 07
|0A8708| db $C1, $90, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 30, 24 } | Size: 04
|0A870B| db $D9, $BA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 36, 2E } | Size: 06
|0A870E| db $FF, $6E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 36, 3A }
|0A8711| db $89, $9E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 22, 27 } | Size: 06
|0A8714| db $FD, $F9, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 1F, 27 }
|0A8717| db $C0, $9D, $1B ; OBJ 01B - Diagonal wall B ◥ (bottom) | { 30, 27 } | Size: 01
|0A871A| db $CC, $B9, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 33, 2E } | Size: 01
|0A871D| db $FF, $3C, $4B ; OBJ 10B - Corner (bottom, concave) ▟ | { 33, 31 }
|0A8720| db $AC, $C7, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2B, 31 } | Size: 03
|0A8723| db $FE, $7C, $4F ; OBJ 10F - Corner (bottom, convex) ▛ | { 27, 31 }
|0A8726| db $9C, $D4, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 27, 35 } | Size: 00
|0A8729| db $FE, $7D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 27, 37 }
|0A872C| db $56, $DC, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 15, 37 } | Size: 08
|0A872F| db $FD, $1D, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 11, 37 }
|0A8732| db $44, $C6, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 11, 31 } | Size: 02
|0A8735| db $FD, $1B, $48 ; OBJ 108 - Corner (bottom, concave) ▛ | { 11, 2D }
|0A8738| db $55, $B4, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 15, 2D } | Size: 04
|0A873B| db $FD, $FB, $4C ; OBJ 10C - Corner (bottom, convex) ▟ | { 1F, 2D }
|0A873E| db $7C, $AC, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 1F, 2B } | Size: 00
|0A8741| db $3D, $22, $F9 ; OBJ 219 - Chest | { 0F, 08 }
|0A8744| db $3B, $3B, $FA ; OBJ 22F - Pot | { 0E, 0E }
|0A8747| db $43, $3B, $FA ; OBJ 22F - Pot | { 10, 0E }
|0A874A| db $3B, $4B, $FA ; OBJ 22F - Pot | { 0E, 12 }
|0A874D| db $43, $4B, $FA ; OBJ 22F - Pot | { 10, 12 }
|0A8750| db $34, $A9, $DD ; OBJ 0DD - Table / Rock ⇲| { 0D, 2A } | Size: 01
|0A8753| db $44, $B0, $22 ; OBJ 022 - Rail ↔ | { 11, 2C } | Size: 00
|0A8756| db $51, $9E, $F9 ; OBJ 219 - Chest | { 14, 27 }
|0A8759| db $61, $9E, $F9 ; OBJ 219 - Chest | { 18, 27 }
|0A875C| db $71, $9E, $F9 ; OBJ 219 - Chest | { 1C, 27 }
|0A875F| db $3D, $C2, $F9 ; OBJ 219 - Chest | { 0F, 30 }
|0A8762| db $5B, $9F, $FA ; OBJ 22F - Pot | { 16, 27 }
|0A8765| db $6B, $9F, $FA ; OBJ 22F - Pot | { 1A, 27 }
|0A8768| db $78, $9C, $69 ; OBJ 069 - Rail ↕ | { 1E, 27 } | Size: 00
|0A876B| db $40, $DC, $69 ; OBJ 069 - Rail ↕ | { 10, 37 } | Size: 00
|0A876E| db $B8, $C7, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 2E, 31 }
|0A8771| db $D3, $DB, $FA ; OBJ 22F - Pot | { 34, 36 }
|0A8774| db $D3, $E3, $FA ; OBJ 22F - Pot | { 34, 38 }
|0A8777| db $C8, $D5, $22 ; OBJ 022 - Rail ↔ | { 32, 35 } | Size: 01
|0A877A| db $AC, $D6, $69 ; OBJ 069 - Rail ↕ | { 2B, 35 } | Size: 02
|0A877D| db $18, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 06, 04 } | Size: 03
|0A8780| db $18, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 06, 14 } | Size: 02
|0A8783| db $08, $00, $60 ; OBJ 060 - Ceiling ↕ | { 02, 00 } | Size: 00
|0A8786| db $10, $00, $60 ; OBJ 060 - Ceiling ↕ | { 04, 00 } | Size: 00
|0A8789| db $59, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 04 } | Size: 07
|0A878C| db $59, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 14 } | Size: 06
|0A878F| db $18, $DF, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 06, 37 } | Size: 03
|0A8792| db $C5, $91, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 31, 24 } | Size: 05
|0A8795| db $E8, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 24 } | Size: 03
|0A8798| db $E8, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 34 } | Size: 02
|0A879B| db $FF, $FF ; Layer 1
|0A879D| db $59, $C8, $C8 ; OBJ 0C8 - Water floor ⇲ | { 16, 32 } | Size: 04
|0A87A0| db $55, $C7, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 15, 31 } | Size: 07
|0A87A3| db $54, $CB, $79 ; OBJ 079 - Water edge (west) ↕ | { 15, 32 } | Size: 03
|0A87A6| db $55, $DB, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 15, 36 } | Size: 07
|0A87A9| db $78, $CB, $7A ; OBJ 07A - Water edge (east) ↕ | { 1E, 32 } | Size: 03
|0A87AC| db $8C, $AE, $C8 ; OBJ 0C8 - Water floor ⇲ | { 23, 2B } | Size: 02
|0A87AF| db $8C, $AD, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 23, 2B } | Size: 01
|0A87B2| db $8E, $B1, $79 ; OBJ 079 - Water edge (west) ↕ | { 23, 2C } | Size: 09
|0A87B5| db $8C, $D9, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 23, 36 } | Size: 01
|0A87B8| db $9A, $B1, $7A ; OBJ 07A - Water edge (east) ↕ | { 26, 2C } | Size: 09
|0A87BB| db $FF, $FF ; Layer 2
|0A87BD| db $C0, $A2, $AA ; OBJ 0AA - Diagonal layer 2 mask B ◣ | { 30, 28 } | Size: 02
|0A87C0| db $4B, $BA, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 12, 2E } | Size: 0E
|0A87C3| db $83, $A2, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 20, 28 } | Size: 0E
|0A87C6| db $89, $C9, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 22, 32 } | Size: 05
|0A87C9| db $BD, $B8, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2F, 2E } | Size: 04
|0A87CC| db $BD, $C0, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2F, 30 } | Size: 04
|0A87CF| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_002F:
|0A87D1| db $60, $2E ; DOORTYPE 2E | North 0C
|0A87D3| db $81, $0E ; DOORTYPE 0E | South 10
|0A87D5| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_002C:
|0A87D7| db $E0, $00 ; Floors and Layout
|0A87D9| db $FC, $25, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 14 }
|0A87DC| db $18, $52, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 14 } | Size: 02
|0A87DF| db $FC, $A5, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 0A, 14 }
|0A87E2| db $28, $61, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0A, 18 } | Size: 01
|0A87E5| db $FC, $A6, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0A, 1A }
|0A87E8| db $FD, $26, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 12, 1A }
|0A87EB| db $48, $61, $62 ; OBJ 062 - Wall (top, east) ↕ | { 12, 18 } | Size: 01
|0A87EE| db $FD, $25, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 12, 14 }
|0A87F1| db $58, $52, $02 ; OBJ 002 - Wall (top, south) ↔ | { 16, 14 } | Size: 02
|0A87F4| db $FD, $A5, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 1A, 14 }
|0A87F7| db $FE, $25, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 22, 14 }
|0A87FA| db $98, $52, $02 ; OBJ 002 - Wall (top, south) ↔ | { 26, 14 } | Size: 02
|0A87FD| db $FE, $A5, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 2A, 14 }
|0A8800| db $A8, $61, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 18 } | Size: 01
|0A8803| db $FE, $A6, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 2A, 1A }
|0A8806| db $FF, $26, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 32, 1A }
|0A8809| db $C8, $61, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 18 } | Size: 01
|0A880C| db $FF, $25, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 32, 14 }
|0A880F| db $D8, $52, $02 ; OBJ 002 - Wall (top, south) ↔ | { 36, 14 } | Size: 02
|0A8812| db $FF, $A5, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 14 }
|0A8815| db $FC, $A9, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 0A, 24 }
|0A8818| db $2A, $A1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0A, 28 } | Size: 09
|0A881B| db $FC, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0A, 3A }
|0A881E| db $FD, $29, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 12, 24 }
|0A8821| db $48, $A2, $62 ; OBJ 062 - Wall (top, east) ↕ | { 12, 28 } | Size: 02
|0A8824| db $FD, $2B, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 12, 2C }
|0A8827| db $58, $B2, $01 ; OBJ 001 - Wall (top, north) ↔ | { 16, 2C } | Size: 02
|0A882A| db $FD, $AB, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 1A, 2C }
|0A882D| db $FD, $AC, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 1A, 32 }
|0A8830| db $58, $CA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 16, 32 } | Size: 02
|0A8833| db $FD, $2C, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 12, 32 }
|0A8836| db $48, $DA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 12, 36 } | Size: 02
|0A8839| db $FD, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 12, 3A }
|0A883C| db $FE, $2B, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 2C }
|0A883F| db $98, $B2, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 2C } | Size: 02
|0A8842| db $FE, $AB, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 2A, 2C }
|0A8845| db $A8, $A2, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 28 } | Size: 02
|0A8848| db $FE, $A9, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2A, 24 }
|0A884B| db $FF, $29, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 32, 24 }
|0A884E| db $C8, $A2, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 28 } | Size: 02
|0A8851| db $FF, $2B, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 32, 2C }
|0A8854| db $D8, $B2, $01 ; OBJ 001 - Wall (top, north) ↔ | { 36, 2C } | Size: 02
|0A8857| db $FF, $AB, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 2C }
|0A885A| db $FF, $AC, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 32 }
|0A885D| db $D8, $CA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 36, 32 } | Size: 02
|0A8860| db $FF, $2C, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 32, 32 }
|0A8863| db $C8, $DA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 36 } | Size: 02
|0A8866| db $FF, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 32, 3A }
|0A8869| db $FE, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 2A, 3A }
|0A886C| db $A8, $DA, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 36 } | Size: 02
|0A886F| db $FE, $AC, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 2A, 32 }
|0A8872| db $98, $CA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 26, 32 } | Size: 02
|0A8875| db $FE, $2C, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 22, 32 }
|0A8878| db $2A, $21, $C8 ; OBJ 0C8 - Water floor ⇲ | { 0A, 08 } | Size: 09
|0A887B| db $26, $23, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 09, 08 } | Size: 0B
|0A887E| db $25, $26, $79 ; OBJ 079 - Water edge (west) ↕ | { 09, 09 } | Size: 06
|0A8881| db $26, $43, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 09, 10 } | Size: 0B
|0A8884| db $59, $26, $7A ; OBJ 07A - Water edge (east) ↕ | { 16, 09 } | Size: 06
|0A8887| db $AA, $21, $C8 ; OBJ 0C8 - Water floor ⇲ | { 2A, 08 } | Size: 09
|0A888A| db $A6, $23, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 29, 08 } | Size: 0B
|0A888D| db $A5, $26, $79 ; OBJ 079 - Water edge (west) ↕ | { 29, 09 } | Size: 06
|0A8890| db $A6, $43, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 29, 10 } | Size: 0B
|0A8893| db $D9, $26, $7A ; OBJ 07A - Water edge (east) ↕ | { 36, 09 } | Size: 06
|0A8896| db $FE, $53, $A4 ; OBJ 124 - Fairy statue | { 25, 0E }
|0A8899| db $FF, $73, $A4 ; OBJ 124 - Fairy statue | { 37, 0E }
|0A889C| db $EE, $BE, $FE ; OBJ 26A - Wall crack (east) | { 3B, 2F }
|0A889F| db $DB, $C3, $FA ; OBJ 22F - Pot | { 36, 30 }
|0A88A2| db $E3, $C3, $FA ; OBJ 22F - Pot | { 38, 30 }
|0A88A5| db $09, $61, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 18 } | Size: 05
|0A88A8| db $59, $61, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 18 } | Size: 05
|0A88AB| db $09, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 24 } | Size: 07
|0A88AE| db $09, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 34 } | Size: 06
|0A88B1| db $59, $91, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 24 } | Size: 05
|0A88B4| db $59, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 36 } | Size: 05
|0A88B7| db $89, $61, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 18 } | Size: 05
|0A88BA| db $D9, $61, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 18 } | Size: 05
|0A88BD| db $89, $91, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 24 } | Size: 05
|0A88C0| db $D9, $91, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 24 } | Size: 05
|0A88C3| db $89, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 36 } | Size: 05
|0A88C6| db $D9, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 36 } | Size: 05
|0A88C9| db $FF, $FF ; Layer 1
|0A88CB| db $FF, $FF ; Layer 2
|0A88CD| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_002C:
|0A88CF| db $60, $2E ; DOORTYPE 2E | North 0C
|0A88D1| db $80, $2E ; DOORTYPE 2E | North 10
|0A88D3| db $82, $2E ; DOORTYPE 2E | West 10
|0A88D5| db $81, $2E ; DOORTYPE 2E | South 10
|0A88D7| db $61, $0E ; DOORTYPE 0E | South 0C
|0A88D9| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_003C:
|0A88DB| db $E0, $1C ; Floors and Layout
|0A88DD| db $1B, $23, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 06, 08 } | Size: 0F
|0A88E0| db $5B, $23, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 16, 08 } | Size: 0F
|0A88E3| db $9B, $23, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 26, 08 } | Size: 0F
|0A88E6| db $D8, $23, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 36, 08 } | Size: 03
|0A88E9| db $1B, $63, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 06, 18 } | Size: 0F
|0A88EC| db $5B, $63, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 16, 18 } | Size: 0F
|0A88EF| db $9B, $63, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 26, 18 } | Size: 0F
|0A88F2| db $D8, $63, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 36, 18 } | Size: 03
|0A88F5| db $1B, $A3, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 06, 28 } | Size: 0F
|0A88F8| db $5B, $A3, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 16, 28 } | Size: 0F
|0A88FB| db $9B, $A3, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 26, 28 } | Size: 0F
|0A88FE| db $D8, $A3, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 36, 28 } | Size: 03
|0A8901| db $1B, $D8, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 06, 36 } | Size: 0C
|0A8904| db $5B, $D8, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 16, 36 } | Size: 0C
|0A8907| db $9B, $D8, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 26, 36 } | Size: 0C
|0A890A| db $D8, $D8, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 36, 36 } | Size: 00
|0A890D| db $17, $1F, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 05, 07 } | Size: 0F
|0A8910| db $57, $1F, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 15, 07 } | Size: 0F
|0A8913| db $97, $1F, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 25, 07 } | Size: 0F
|0A8916| db $D4, $1F, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 35, 07 } | Size: 03
|0A8919| db $17, $23, $6A ; OBJ 06A - Pit edge (west) ↕ | { 05, 08 } | Size: 0F
|0A891C| db $17, $63, $6A ; OBJ 06A - Pit edge (west) ↕ | { 05, 18 } | Size: 0F
|0A891F| db $17, $A3, $6A ; OBJ 06A - Pit edge (west) ↕ | { 05, 28 } | Size: 0F
|0A8922| db $14, $E1, $6A ; OBJ 06A - Pit edge (west) ↕ | { 05, 38 } | Size: 01
|0A8925| db $17, $EB, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 05, 3A } | Size: 0F
|0A8928| db $57, $EB, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 15, 3A } | Size: 0F
|0A892B| db $97, $EB, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 25, 3A } | Size: 0F
|0A892E| db $D4, $EB, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 35, 3A } | Size: 03
|0A8931| db $EB, $23, $6B ; OBJ 06B - Pit edge (east) ↕ | { 3A, 08 } | Size: 0F
|0A8934| db $EB, $63, $6B ; OBJ 06B - Pit edge (east) ↕ | { 3A, 18 } | Size: 0F
|0A8937| db $EB, $A3, $6B ; OBJ 06B - Pit edge (east) ↕ | { 3A, 28 } | Size: 0F
|0A893A| db $E8, $E1, $6B ; OBJ 06B - Pit edge (east) ↕ | { 3A, 38 } | Size: 01
|0A893D| db $B8, $21, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 2E, 08 } | Size: 01
|0A8940| db $B8, $7B, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 2E, 1E } | Size: 03
|0A8943| db $B8, $BA, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 2E, 2E } | Size: 02
|0A8946| db $32, $40, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 0C, 10 } | Size: 08
|0A8949| db $80, $42, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 20, 10 } | Size: 02
|0A894C| db $28, $72, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 0A, 1C } | Size: 02
|0A894F| db $50, $6B, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 14, 1A } | Size: 03
|0A8952| db $81, $91, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 20, 24 } | Size: 05
|0A8955| db $69, $C8, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 1A, 32 } | Size: 04
|0A8958| db $B5, $1D, $69 ; OBJ 069 - Rail ↕ | { 2D, 07 } | Size: 05
|0A895B| db $C9, $1D, $69 ; OBJ 069 - Rail ↕ | { 32, 07 } | Size: 05
|0A895E| db $B8, $12, $01 ; OBJ 001 - Wall (top, north) ↔ | { 2E, 04 } | Size: 02
|0A8961| db $B4, $7A, $69 ; OBJ 069 - Rail ↕ | { 2D, 1E } | Size: 02
|0A8964| db $B6, $B3, $69 ; OBJ 069 - Rail ↕ | { 2D, 2C } | Size: 0B
|0A8967| db $C9, $7A, $8A ; OBJ 08A - Long rail ↕ | { 32, 1E } | Size: 06
|0A896A| db $B8, $EA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2E, 3A } | Size: 02
|0A896D| db $B8, $40, $94 ; OBJ 094 - Invisible floor ↕ | { 2E, 10 } | Size: 00
|0A8970| db $C8, $49, $94 ; OBJ 094 - Invisible floor ↕ | { 32, 12 } | Size: 01
|0A8973| db $B8, $59, $94 ; OBJ 094 - Invisible floor ↕ | { 2E, 16 } | Size: 01
|0A8976| db $C3, $9B, $FA ; OBJ 22F - Pot | { 30, 26 }
|0A8979| db $33, $43, $FA ; OBJ 22F - Pot | { 0C, 10 }
|0A897C| db $2B, $73, $FA ; OBJ 22F - Pot | { 0A, 1C }
|0A897F| db $2B, $9B, $FA ; OBJ 22F - Pot | { 0A, 26 }
|0A8982| db $89, $42, $F9 ; OBJ 219 - Chest | { 22, 10 }
|0A8985| db $51, $6A, $F9 ; OBJ 219 - Chest | { 14, 1A }
|0A8988| db $59, $92, $F9 ; OBJ 219 - Chest | { 16, 24 }
|0A898B| db $69, $CA, $F9 ; OBJ 219 - Chest | { 1A, 32 }
|0A898E| db $83, $63, $FA ; OBJ 22F - Pot | { 20, 18 }
|0A8991| db $50, $78, $DD ; OBJ 0DD - Table / Rock ⇲| { 14, 1E } | Size: 00
|0A8994| db $8B, $93, $FA ; OBJ 22F - Pot | { 22, 24 }
|0A8997| db $83, $A3, $FA ; OBJ 22F - Pot | { 20, 28 }
|0A899A| db $83, $D3, $FA ; OBJ 22F - Pot | { 20, 34 }
|0A899D| db $FF, $FF ; Layer 1
|0A899F| db $FF, $FF ; Layer 2
|0A89A1| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_003C:
|0A89A3| db $20, $2E ; DOORTYPE 2E | North 04
|0A89A5| db $81, $0E ; DOORTYPE 0E | South 10
|0A89A7| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0003:
|0A89A9| db $E1, $00 ; Floors and Layout
|0A89AB| db $3F, $94, $F9 ; OBJ 213 - Telepathy tile | { 0F, 25 }
|0A89AE| db $1B, $A3, $E2 ; OBJ 0E2 - Rupee floor ⇲ | { 06, 28 } | Size: 0F
|0A89B1| db $58, $A3, $E2 ; OBJ 0E2 - Rupee floor ⇲ | { 16, 28 } | Size: 03
|0A89B4| db $1B, $D8, $E2 ; OBJ 0E2 - Rupee floor ⇲ | { 06, 36 } | Size: 0C
|0A89B7| db $58, $D8, $E2 ; OBJ 0E2 - Rupee floor ⇲ | { 16, 36 } | Size: 00
|0A89BA| db $1A, $A0, $F9 ; OBJ 212 - 9 blue rupees | { 06, 28 }
|0A89BD| db $36, $A0, $F9 ; OBJ 212 - 9 blue rupees | { 0D, 28 }
|0A89C0| db $52, $A0, $F9 ; OBJ 212 - 9 blue rupees | { 14, 28 }
|0A89C3| db $1A, $C8, $F9 ; OBJ 212 - 9 blue rupees | { 06, 32 }
|0A89C6| db $52, $C8, $F9 ; OBJ 212 - 9 blue rupees | { 14, 32 }
|0A89C9| db $FF, $FF ; Layer 1
|0A89CB| db $FF, $FF ; Layer 2
|0A89CD| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0003:
|0A89CF| db $61, $0E ; DOORTYPE 0E | South 0C
|0A89D1| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0012:
|0A89D3| db $E2, $1C ; Floors and Layout
|0A89D5| db $FC, $E1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 0E, 04 }
|0A89D8| db $3B, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0E, 08 } | Size: 0F
|0A89DB| db $39, $98, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0E, 26 } | Size: 04
|0A89DE| db $FC, $EB, $41 ; OBJ 101 - Corner (top, concave) ▙ | { 0E, 2D }
|0A89E1| db $48, $B5, $02 ; OBJ 002 - Wall (top, south) ↔ | { 12, 2D } | Size: 01
|0A89E4| db $51, $C1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 14, 30 } | Size: 05
|0A89E7| db $FD, $4B, $45 ; OBJ 105 - Corner (top, convex) ▜ | { 14, 2D }
|0A89EA| db $FD, $4E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 14, 3A }
|0A89ED| db $FE, $E1, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 2E, 04 }
|0A89F0| db $BB, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2E, 08 } | Size: 0F
|0A89F3| db $B9, $98, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2E, 26 } | Size: 04
|0A89F6| db $FE, $EB, $43 ; OBJ 103 - Corner (top, concave) ▟ | { 2E, 2D }
|0A89F9| db $B0, $B5, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2C, 2D } | Size: 01
|0A89FC| db $A1, $C1, $62 ; OBJ 062 - Wall (top, east) ↕ | { 28, 30 } | Size: 05
|0A89FF| db $FE, $8B, $47 ; OBJ 107 - Corner (top, convex) ▛ | { 28, 2D }
|0A8A02| db $FE, $8E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 28, 3A }
|0A8A05| db $FD, $11, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 11, 07 }
|0A8A08| db $56, $1E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 15, 07 } | Size: 0A
|0A8A0B| db $FE, $B1, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 2B, 07 }
|0A8A0E| db $47, $2F, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 11, 0B } | Size: 0F
|0A8A11| db $FD, $1A, $89 ; OBJ 109 - Corner (bottom, concave) ▙ | { 11, 2A }
|0A8A14| db $54, $A8, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 15, 2A } | Size: 00
|0A8A17| db $5D, $B4, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 17, 2D } | Size: 04
|0A8A1A| db $FD, $7A, $8D ; OBJ 10D - Corner (bottom, convex) ▜ | { 17, 2A }
|0A8A1D| db $FD, $7D, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 17, 37 }
|0A8A20| db $6D, $DC, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 1B, 37 } | Size: 04
|0A8A23| db $AF, $2F, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 2B, 0B } | Size: 0F
|0A8A26| db $FE, $BA, $8B ; OBJ 10B - Corner (bottom, concave) ▟ | { 2B, 2A }
|0A8A29| db $A4, $A8, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 29, 2A } | Size: 00
|0A8A2C| db $95, $B4, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 25, 2D } | Size: 04
|0A8A2F| db $FE, $5A, $8F ; OBJ 10F - Corner (bottom, convex) ▛ | { 25, 2A }
|0A8A32| db $FE, $5D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 25, 37 }
|0A8A35| db $FD, $41, $3C ; OBJ 13C - Sanctuary wall (north) | { 14, 04 }
|0A8A38| db $7A, $4C, $70 ; OBJ 070 - Carpet ↕ | { 1E, 13 } | Size: 08
|0A8A3B| db $63, $2A, $DC ; OBJ 0DC - Chest platform (short) ⇲ | { 18, 0A } | Size: 0E
|0A8A3E| db $77, $57, $71 ; OBJ 071 - Carpet trim ↕ | { 1D, 15 } | Size: 0F
|0A8A41| db $76, $A3, $71 ; OBJ 071 - Carpet trim ↕ | { 1D, 28 } | Size: 0B
|0A8A44| db $8B, $57, $71 ; OBJ 071 - Carpet trim ↕ | { 22, 15 } | Size: 0F
|0A8A47| db $8A, $A3, $71 ; OBJ 071 - Carpet trim ↕ | { 22, 28 } | Size: 0B
|0A8A4A| db $71, $2A, $F9 ; OBJ 219 - Chest | { 1C, 0A }
|0A8A4D| db $64, $40, $3D ; OBJ 03D - Tall torches ↔ | { 19, 10 } | Size: 00
|0A8A50| db $94, $40, $3D ; OBJ 03D - Tall torches ↔ | { 25, 10 } | Size: 00
|0A8A53| db $38, $47, $81 ; OBJ 081 - Wall decors tight A (west) ↕ | { 0E, 11 } | Size: 03
|0A8A56| db $44, $47, $83 ; OBJ 083 - Wall decors tight B (west) ↕ | { 11, 11 } | Size: 03
|0A8A59| db $BC, $47, $82 ; OBJ 082 - Wall decors tight A (east) ↕ | { 2F, 11 } | Size: 03
|0A8A5C| db $B0, $47, $84 ; OBJ 084 - Wall decors tight B (east) ↕ | { 2C, 11 } | Size: 03
|0A8A5F| db $FD, $66, $7E ; OBJ 13E - Pew | { 16, 19 }
|0A8A62| db $FD, $67, $BE ; OBJ 13E - Pew | { 16, 1E }
|0A8A65| db $FD, $68, $FE ; OBJ 13E - Pew | { 16, 23 }
|0A8A68| db $FE, $46, $7E ; OBJ 13E - Pew | { 24, 19 }
|0A8A6B| db $FE, $47, $BE ; OBJ 13E - Pew | { 24, 1E }
|0A8A6E| db $FE, $48, $FE ; OBJ 13E - Pew | { 24, 23 }
|0A8A71| db $0A, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 0B
|0A8A74| db $0A, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 14 } | Size: 0B
|0A8A77| db $0A, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 24 } | Size: 0B
|0A8A7A| db $0A, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 34 } | Size: 0A
|0A8A7D| db $31, $C6, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 0C, 31 } | Size: 06
|0A8A80| db $38, $F3, $00 ; OBJ 000 - Ceiling ↔ | { 0E, 3C } | Size: 03
|0A8A83| db $B0, $F3, $00 ; OBJ 000 - Ceiling ↔ | { 2C, 3C } | Size: 03
|0A8A86| db $B1, $C6, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2C, 31 } | Size: 06
|0A8A89| db $CA, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 04 } | Size: 0B
|0A8A8C| db $CA, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 14 } | Size: 0B
|0A8A8F| db $CA, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 24 } | Size: 0B
|0A8A92| db $CA, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 34 } | Size: 0A
|0A8A95| db $FF, $FF ; Layer 1
|0A8A97| db $FF, $FF ; Layer 2
|0A8A99| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0012:
|0A8A9B| db $40, $02 ; DOORTYPE 02 | North 08
|0A8A9D| db $40, $16 ; DOORTYPE 16 | North 08
|0A8A9F| db $A1, $02 ; DOORTYPE 02 | South 14
|0A8AA1| db $A1, $12 ; DOORTYPE 12 | South 14
|0A8AA3| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0002:
|0A8AA5| db $77, $10 ; Floors and Layout
|0A8AA7| db $FC, $C1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 0C, 04 }
|0A8AAA| db $32, $21, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0C, 08 } | Size: 09
|0A8AAD| db $FC, $C6, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0C, 1A }
|0A8AB0| db $FF, $51, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 35, 04 }
|0A8AB3| db $D6, $21, $62 ; OBJ 062 - Wall (top, east) ↕ | { 35, 08 } | Size: 09
|0A8AB6| db $FF, $56, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 35, 1A }
|0A8AB9| db $FC, $F1, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 0F, 07 }
|0A8ABC| db $4F, $1F, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 13, 07 } | Size: 0F
|0A8ABF| db $FF, $21, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 32, 07 }
|0A8AC2| db $3D, $2D, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0F, 0B } | Size: 05
|0A8AC5| db $FC, $F5, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 0F, 17 }
|0A8AC8| db $4F, $5F, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 13, 17 } | Size: 0F
|0A8ACB| db $C9, $2D, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 32, 0B } | Size: 05
|0A8ACE| db $FF, $25, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 32, 17 }
|0A8AD1| db $FD, $59, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 15, 24 }
|0A8AD4| db $54, $A1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 15, 28 } | Size: 01
|0A8AD7| db $40, $AB, $01 ; OBJ 001 - Wall (top, north) ↔ | { 10, 2A } | Size: 03
|0A8ADA| db $FD, $5A, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 15, 2A }
|0A8ADD| db $FC, $CA, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 0C, 2A }
|0A8AE0| db $31, $BA, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0C, 2E } | Size: 06
|0A8AE3| db $FC, $CE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0C, 3A }
|0A8AE6| db $FE, $79, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 27, 24 }
|0A8AE9| db $9C, $A1, $62 ; OBJ 062 - Wall (top, east) ↕ | { 27, 28 } | Size: 01
|0A8AEC| db $A8, $AB, $01 ; OBJ 001 - Wall (top, north) ↔ | { 2A, 2A } | Size: 03
|0A8AEF| db $FE, $7A, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 27, 2A }
|0A8AF2| db $FF, $0A, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 30, 2A }
|0A8AF5| db $C1, $BA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 30, 2E } | Size: 06
|0A8AF8| db $FF, $0E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 30, 3A }
|0A8AFB| db $FD, $89, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 18, 27 }
|0A8AFE| db $70, $9F, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 1C, 27 } | Size: 03
|0A8B01| db $FE, $49, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 24, 27 }
|0A8B04| db $60, $AC, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 18, 2B } | Size: 00
|0A8B07| db $4C, $B6, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 13, 2D } | Size: 02
|0A8B0A| db $FC, $FB, $48 ; OBJ 108 - Corner (bottom, concave) ▛ | { 0F, 2D }
|0A8B0D| db $FD, $8B, $4C ; OBJ 10C - Corner (bottom, convex) ▟ | { 18, 2D }
|0A8B10| db $3C, $C6, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0F, 31 } | Size: 02
|0A8B13| db $FC, $FD, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 0F, 37 }
|0A8B16| db $4F, $DC, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 13, 37 } | Size: 0C
|0A8B19| db $FE, $DD, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 2D, 37 }
|0A8B1C| db $90, $AC, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 24, 2B } | Size: 00
|0A8B1F| db $FE, $4B, $4E ; OBJ 10E - Corner (bottom, convex) ▙ | { 24, 2D }
|0A8B22| db $A0, $B6, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 28, 2D } | Size: 02
|0A8B25| db $FE, $DB, $4A ; OBJ 10A - Corner (bottom, concave) ▜ | { 2D, 2D }
|0A8B28| db $B4, $C6, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 2D, 31 } | Size: 02
|0A8B2B| db $08, $00, $60 ; OBJ 060 - Ceiling ↕ | { 02, 00 } | Size: 00
|0A8B2E| db $10, $00, $60 ; OBJ 060 - Ceiling ↕ | { 04, 00 } | Size: 00
|0A8B31| db $11, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 04, 04 } | Size: 07
|0A8B34| db $11, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 04, 14 } | Size: 06
|0A8B37| db $17, $89, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 05, 22 } | Size: 0D
|0A8B3A| db $11, $AB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 04, 2A } | Size: 07
|0A8B3D| db $11, $E8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 04, 3A } | Size: 04
|0A8B40| db $E4, $00, $60 ; OBJ 060 - Ceiling ↕ | { 39, 00 } | Size: 00
|0A8B43| db $EC, $00, $60 ; OBJ 060 - Ceiling ↕ | { 3B, 00 } | Size: 00
|0A8B46| db $F0, $00, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 00 } | Size: 00
|0A8B49| db $AF, $89, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2B, 22 } | Size: 0D
|0A8B4C| db $D1, $AB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 34, 2A } | Size: 07
|0A8B4F| db $D1, $E8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 34, 3A } | Size: 04
|0A8B52| db $FF, $FF ; Layer 1
|0A8B54| db $FE, $E1, $FB ; OBJ 13B - Interroom spiral stairs down (bottom) | { 2E, 07 }
|0A8B57| db $A3, $33, $FA ; OBJ 22F - Pot | { 28, 0C }
|0A8B5A| db $A3, $43, $FA ; OBJ 22F - Pot | { 28, 10 }
|0A8B5D| db $5B, $43, $FA ; OBJ 22F - Pot | { 16, 10 }
|0A8B60| db $5B, $53, $FA ; OBJ 22F - Pot | { 16, 14 }
|0A8B63| db $71, $6E, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1C, 1B } | Size: 06
|0A8B66| db $81, $6E, $62 ; OBJ 062 - Wall (top, east) ↕ | { 20, 1B } | Size: 06
|0A8B69| db $70, $EE, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1C, 3B } | Size: 02
|0A8B6C| db $80, $EE, $62 ; OBJ 062 - Wall (top, east) ↕ | { 20, 3B } | Size: 02
|0A8B6F| db $FF, $FF ; Layer 2
|0A8B71| db $3F, $1F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0F, 07 } | Size: 0F
|0A8B74| db $7F, $1F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1F, 07 } | Size: 0F
|0A8B77| db $B9, $1F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2E, 07 } | Size: 07
|0A8B7A| db $3F, $5C, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0F, 17 } | Size: 0C
|0A8B7D| db $7F, $5C, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1F, 17 } | Size: 0C
|0A8B80| db $B9, $5C, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2E, 17 } | Size: 04
|0A8B83| db $63, $9F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 18, 27 } | Size: 0F
|0A8B86| db $3E, $B6, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0F, 2D } | Size: 0A
|0A8B89| db $3F, $DC, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0F, 37 } | Size: 0C
|0A8B8C| db $7F, $DC, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1F, 37 } | Size: 0C
|0A8B8F| db $96, $B6, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 25, 2D } | Size: 0A
|0A8B92| db $B4, $DC, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2D, 37 } | Size: 00
|0A8B95| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0002:
|0A8B97| db $A1, $44 ; DOORTYPE 44 | South 14
|0A8B99| db $A0, $40 ; DOORTYPE 40 | North 14
|0A8B9B| db $A1, $16 ; DOORTYPE 16 | South 14
|0A8B9D| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0011:
|0A8B9F| db $E1, $04 ; Floors and Layout
|0A8BA1| db $FE, $A1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2A, 04 }
|0A8BA4| db $FF, $21, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 32, 04 }
|0A8BA7| db $C8, $22, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 08 } | Size: 02
|0A8BAA| db $FF, $22, $C6 ; OBJ 106 - Corner (top, convex) ▙ | { 32, 0B }
|0A8BAD| db $FF, $A2, $C2 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 0B }
|0A8BB0| db $D8, $2E, $01 ; OBJ 001 - Wall (top, north) ↔ | { 36, 0B } | Size: 02
|0A8BB3| db $A8, $22, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 08 } | Size: 02
|0A8BB6| db $FE, $A2, $C4 ; OBJ 104 - Corner (top, convex) ▟ | { 2A, 0B }
|0A8BB9| db $98, $2E, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 0B } | Size: 02
|0A8BBC| db $FE, $22, $C0 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 0B }
|0A8BBF| db $FE, $24, $C1 ; OBJ 101 - Corner (top, concave) ▙ | { 22, 13 }
|0A8BC2| db $98, $4E, $02 ; OBJ 002 - Wall (top, south) ↔ | { 26, 13 } | Size: 02
|0A8BC5| db $FE, $A4, $C5 ; OBJ 105 - Corner (top, convex) ▜ | { 2A, 13 }
|0A8BC8| db $AA, $5E, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 17 } | Size: 0A
|0A8BCB| db $FE, $AA, $C4 ; OBJ 104 - Corner (top, convex) ▟ | { 2A, 2B }
|0A8BCE| db $98, $AE, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 2B } | Size: 02
|0A8BD1| db $FE, $2A, $C0 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 2B }
|0A8BD4| db $FE, $2C, $C1 ; OBJ 101 - Corner (top, concave) ▙ | { 22, 33 }
|0A8BD7| db $98, $CE, $02 ; OBJ 002 - Wall (top, south) ↔ | { 26, 33 } | Size: 02
|0A8BDA| db $FE, $AC, $C5 ; OBJ 105 - Corner (top, convex) ▜ | { 2A, 33 }
|0A8BDD| db $A8, $DE, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 37 } | Size: 02
|0A8BE0| db $FE, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 2A, 3A }
|0A8BE3| db $FF, $2C, $C7 ; OBJ 107 - Corner (top, convex) ▛ | { 32, 33 }
|0A8BE6| db $C8, $DE, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 37 } | Size: 02
|0A8BE9| db $FF, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 32, 3A }
|0A8BEC| db $D8, $CE, $02 ; OBJ 002 - Wall (top, south) ↔ | { 36, 33 } | Size: 02
|0A8BEF| db $FF, $AC, $C3 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 33 }
|0A8BF2| db $23, $7F, $FA ; OBJ 22F - Pot | { 08, 1F }
|0A8BF5| db $33, $7F, $FA ; OBJ 22F - Pot | { 0C, 1F }
|0A8BF8| db $43, $7F, $FA ; OBJ 22F - Pot | { 10, 1F }
|0A8BFB| db $21, $8E, $F9 ; OBJ 219 - Chest | { 08, 23 }
|0A8BFE| db $31, $8E, $F9 ; OBJ 219 - Chest | { 0C, 23 }
|0A8C01| db $41, $8E, $F9 ; OBJ 219 - Chest | { 10, 23 }
|0A8C04| db $23, $9F, $FA ; OBJ 22F - Pot | { 08, 27 }
|0A8C07| db $33, $9F, $FA ; OBJ 22F - Pot | { 0C, 27 }
|0A8C0A| db $43, $9F, $FA ; OBJ 22F - Pot | { 10, 27 }
|0A8C0D| db $C4, $30, $5E ; OBJ 05E - Blocks ↔ | { 31, 0C } | Size: 00
|0A8C10| db $B4, $39, $5E ; OBJ 05E - Blocks ↔ | { 2D, 0E } | Size: 01
|0A8C13| db $FE, $E1, $38 ; OBJ 138 - Interroom spiral stairs up (top) | { 2E, 04 }
|0A8C16| db $AC, $60, $7F ; OBJ 07F - Wall torches (west) ↕ | { 2B, 18 } | Size: 00
|0A8C19| db $AC, $98, $7F ; OBJ 07F - Wall torches (west) ↕ | { 2B, 26 } | Size: 00
|0A8C1C| db $EC, $4A, $80 ; OBJ 080 - Wall torches (east) ↕ | { 3B, 12 } | Size: 02
|0A8C1F| db $64, $4D, $02 ; OBJ 002 - Wall (top, south) ↔ | { 19, 13 } | Size: 01
|0A8C22| db $FD, $54, $C7 ; OBJ 107 - Corner (top, convex) ▛ | { 15, 13 }
|0A8C25| db $56, $5E, $62 ; OBJ 062 - Wall (top, east) ↕ | { 15, 17 } | Size: 0A
|0A8C28| db $FD, $5A, $C6 ; OBJ 106 - Corner (top, convex) ▙ | { 15, 2B }
|0A8C2B| db $64, $AD, $01 ; OBJ 001 - Wall (top, north) ↔ | { 19, 2B } | Size: 01
|0A8C2E| db $FD, $AA, $C2 ; OBJ 102 - Corner (top, concave) ▜ | { 1A, 2B }
|0A8C31| db $FD, $A4, $C3 ; OBJ 103 - Corner (top, concave) ▟ | { 1A, 13 }
|0A8C34| db $89, $0D, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 03 } | Size: 05
|0A8C37| db $D9, $0D, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 03 } | Size: 05
|0A8C3A| db $65, $5F, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 19, 17 } | Size: 07
|0A8C3D| db $65, $9C, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 19, 27 } | Size: 04
|0A8C40| db $89, $5F, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 17 } | Size: 07
|0A8C43| db $89, $9C, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 27 } | Size: 04
|0A8C46| db $89, $DD, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 37 } | Size: 05
|0A8C49| db $D9, $DD, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 37 } | Size: 05
|0A8C4C| db $FF, $FF ; Layer 1
|0A8C4E| db $FF, $FF ; Layer 2
|0A8C50| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0011:
|0A8C52| db $62, $28 ; DOORTYPE 28 | West 0C
|0A8C54| db $82, $28 ; DOORTYPE 28 | West 10
|0A8C56| db $81, $1C ; DOORTYPE 1C | South 10
|0A8C58| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0021:
|0A8C5A| db $E1, $10 ; Floors and Layout
|0A8C5C| db $23, $AC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 08, 2B } | Size: 0C
|0A8C5F| db $62, $AC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 18, 2B } | Size: 08
|0A8C62| db $50, $9C, $C8 ; OBJ 0C8 - Water floor ⇲ | { 14, 27 } | Size: 00
|0A8C65| db $21, $CD, $C8 ; OBJ 0C8 - Water floor ⇲ | { 08, 33 } | Size: 05
|0A8C68| db $43, $CC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 10, 33 } | Size: 0C
|0A8C6B| db $80, $CC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 20, 33 } | Size: 00
|0A8C6E| db $E9, $A3, $62 ; OBJ 062 - Wall (top, east) ↕ | { 3A, 28 } | Size: 07
|0A8C71| db $43, $A7, $FA ; OBJ 22F - Pot | { 10, 29 }
|0A8C74| db $CB, $E3, $FA ; OBJ 22F - Pot | { 32, 38 }
|0A8C77| db $D3, $E3, $FA ; OBJ 22F - Pot | { 34, 38 }
|0A8C7A| db $53, $C7, $FA ; OBJ 22F - Pot | { 14, 31 }
|0A8C7D| db $A7, $E3, $FA ; OBJ 22F - Pot | { 29, 38 }
|0A8C80| db $63, $E3, $FA ; OBJ 22F - Pot | { 18, 38 }
|0A8C83| db $FF, $6D, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 36, 36 }
|0A8C86| db $FF, $AD, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 36 }
|0A8C89| db $FF, $6E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 36, 3A }
|0A8C8C| db $20, $B1, $79 ; OBJ 079 - Water edge (west) ↕ | { 08, 2C } | Size: 01
|0A8C8F| db $22, $AE, $46 ; OBJ 046 - Water edge ┏━┛ (convex) ↔ | { 08, 2B } | Size: 0A
|0A8C92| db $50, $A2, $79 ; OBJ 079 - Water edge (west) ↕ | { 14, 28 } | Size: 02
|0A8C95| db $50, $9D, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 14, 27 } | Size: 01
|0A8C98| db $5C, $A2, $7A ; OBJ 07A - Water edge (east) ↕ | { 17, 28 } | Size: 02
|0A8C9B| db $93, $AE, $C8 ; OBJ 0C8 - Water floor ⇲ | { 24, 2B } | Size: 0E
|0A8C9E| db $9B, $9C, $C8 ; OBJ 0C8 - Water floor ⇲ | { 26, 27 } | Size: 0C
|0A8CA1| db $D0, $9E, $C8 ; OBJ 0C8 - Water floor ⇲ | { 34, 27 } | Size: 02
|0A8CA4| db $D8, $9D, $C8 ; OBJ 0C8 - Water floor ⇲ | { 36, 27 } | Size: 01
|0A8CA7| db $5F, $AD, $42 ; OBJ 042 - Water edge ┗━┛ (convex) ↔ | { 17, 2B } | Size: 0D
|0A8CAA| db $98, $A2, $79 ; OBJ 079 - Water edge (west) ↕ | { 26, 28 } | Size: 02
|0A8CAD| db $9B, $9F, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 26, 27 } | Size: 0F
|0A8CB0| db $D8, $9E, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 36, 27 } | Size: 02
|0A8CB3| db $E9, $A1, $7A ; OBJ 07A - Water edge (east) ↕ | { 3A, 28 } | Size: 05
|0A8CB6| db $CC, $CE, $43 ; OBJ 043 - Water edge ┏━┛ (concave) ↔ | { 33, 33 } | Size: 02
|0A8CB9| db $DC, $BF, $7A ; OBJ 07A - Water edge (east) ↕ | { 37, 2F } | Size: 03
|0A8CBC| db $DC, $B9, $43 ; OBJ 043 - Water edge ┏━┛ (concave) ↔ | { 37, 2E } | Size: 01
|0A8CBF| db $23, $BB, $44 ; OBJ 044 - Water edge ┗━┓ (concave) ↔ | { 08, 2E } | Size: 0F
|0A8CC2| db $62, $BA, $41 ; OBJ 041 - Water edge ┏━┓ (convex) ↔ | { 18, 2E } | Size: 0A
|0A8CC5| db $90, $BF, $79 ; OBJ 079 - Water edge (west) ↕ | { 24, 2F } | Size: 03
|0A8CC8| db $23, $CF, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 08, 33 } | Size: 0F
|0A8CCB| db $62, $CE, $42 ; OBJ 042 - Water edge ┗━┛ (convex) ↔ | { 18, 33 } | Size: 0A
|0A8CCE| db $21, $D1, $79 ; OBJ 079 - Water edge (west) ↕ | { 08, 34 } | Size: 05
|0A8CD1| db $21, $E9, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 08, 3A } | Size: 05
|0A8CD4| db $3C, $E1, $7A ; OBJ 07A - Water edge (east) ↕ | { 0F, 38 } | Size: 01
|0A8CD7| db $3F, $DF, $43 ; OBJ 043 - Water edge ┏━┛ (concave) ↔ | { 0F, 37 } | Size: 0F
|0A8CDA| db $7F, $DF, $43 ; OBJ 043 - Water edge ┏━┛ (concave) ↔ | { 1F, 37 } | Size: 0F
|0A8CDD| db $BC, $DE, $43 ; OBJ 043 - Water edge ┏━┛ (concave) ↔ | { 2F, 37 } | Size: 02
|0A8CE0| db $CC, $D2, $7A ; OBJ 07A - Water edge (east) ↕ | { 33, 34 } | Size: 02
|0A8CE3| db $FC, $62, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 06, 08 }
|0A8CE6| db $19, $33, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 0C } | Size: 07
|0A8CE9| db $FC, $66, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 06, 1A }
|0A8CEC| db $28, $21, $01 ; OBJ 001 - Wall (top, north) ↔ | { 0A, 08 } | Size: 01
|0A8CEF| db $FC, $C2, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 0C, 08 }
|0A8CF2| db $30, $31, $62 ; OBJ 062 - Wall (top, east) ↕ | { 0C, 0C } | Size: 01
|0A8CF5| db $FC, $C3, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 0C, 0E }
|0A8CF8| db $42, $3B, $01 ; OBJ 001 - Wall (top, north) ↔ | { 10, 0E } | Size: 0B
|0A8CFB| db $FE, $63, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 26, 0E }
|0A8CFE| db $98, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 26, 08 } | Size: 03
|0A8D01| db $FE, $61, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 26, 04 }
|0A8D04| db $FF, $61, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 36, 04 }
|0A8D07| db $DA, $21, $62 ; OBJ 062 - Wall (top, east) ↕ | { 36, 08 } | Size: 09
|0A8D0A| db $FF, $66, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 36, 1A }
|0A8D0D| db $43, $0A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 10, 02 } | Size: 0E
|0A8D10| db $79, $0A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1E, 02 } | Size: 06
|0A8D13| db $0B, $10, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 0C
|0A8D16| db $0A, $23, $60 ; OBJ 060 - Ceiling ↕ | { 02, 08 } | Size: 0B
|0A8D19| db $12, $23, $60 ; OBJ 060 - Ceiling ↕ | { 04, 08 } | Size: 0B
|0A8D1C| db $EB, $11, $60 ; OBJ 060 - Ceiling ↕ | { 3A, 04 } | Size: 0D
|0A8D1F| db $F3, $11, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 04 } | Size: 0D
|0A8D22| db $E8, $E8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 3A } | Size: 00
|0A8D25| db $FF, $FF ; Layer 1
|0A8D27| db $36, $42, $FA ; OBJ 22A - Lamp cones | { 0D, 10 }
|0A8D2A| db $FF, $FF ; Layer 2
|0A8D2C| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0021:
|0A8D2E| db $20, $1C ; DOORTYPE 1C | North 04
|0A8D30| db $70, $00 ; DOORTYPE 00 | North 0E
|0A8D32| db $83, $00 ; DOORTYPE 00 | East 10
|0A8D34| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0022:
|0A8D36| db $E1, $10 ; Floors and Layout
|0A8D38| db $18, $DB, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 36 } | Size: 03
|0A8D3B| db $FC, $CD, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 0C, 36 }
|0A8D3E| db $FC, $CE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0C, 3A }
|0A8D41| db $FE, $79, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 27, 24 }
|0A8D44| db $9E, $A1, $62 ; OBJ 062 - Wall (top, east) ↕ | { 27, 28 } | Size: 09
|0A8D47| db $FE, $7E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 27, 3A }
|0A8D4A| db $10, $BC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 04, 2F } | Size: 00
|0A8D4D| db $12, $CC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 04, 33 } | Size: 08
|0A8D50| db $12, $AC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 04, 2B } | Size: 08
|0A8D53| db $30, $BC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 0C, 2F } | Size: 00
|0A8D56| db $43, $AC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 10, 2B } | Size: 0C
|0A8D59| db $43, $CC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 10, 33 } | Size: 0C
|0A8D5C| db $41, $DC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 10, 37 } | Size: 04
|0A8D5F| db $50, $BC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 14, 2F } | Size: 00
|0A8D62| db $72, $BC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 1C, 2F } | Size: 08
|0A8D65| db $80, $CC, $C8 ; OBJ 0C8 - Water floor ⇲ | { 20, 33 } | Size: 00
|0A8D68| db $20, $BA, $41 ; OBJ 041 - Water edge ┏━┓ (convex) ↔ | { 08, 2E } | Size: 02
|0A8D6B| db $20, $CE, $42 ; OBJ 042 - Water edge ┗━┛ (convex) ↔ | { 08, 33 } | Size: 02
|0A8D6E| db $20, $BF, $7A ; OBJ 07A - Water edge (east) ↕ | { 08, 2F } | Size: 03
|0A8D71| db $30, $BF, $79 ; OBJ 079 - Water edge (west) ↕ | { 0C, 2F } | Size: 03
|0A8D74| db $40, $BE, $41 ; OBJ 041 - Water edge ┏━┓ (convex) ↔ | { 10, 2F } | Size: 02
|0A8D77| db $40, $CA, $42 ; OBJ 042 - Water edge ┗━┛ (convex) ↔ | { 10, 32 } | Size: 02
|0A8D7A| db $40, $C1, $7A ; OBJ 07A - Water edge (east) ↕ | { 10, 30 } | Size: 01
|0A8D7D| db $50, $C1, $79 ; OBJ 079 - Water edge (west) ↕ | { 14, 30 } | Size: 01
|0A8D80| db $5C, $BE, $41 ; OBJ 041 - Water edge ┏━┓ (convex) ↔ | { 17, 2F } | Size: 02
|0A8D83| db $5C, $CA, $42 ; OBJ 042 - Water edge ┗━┛ (convex) ↔ | { 17, 32 } | Size: 02
|0A8D86| db $5C, $C1, $7A ; OBJ 07A - Water edge (east) ↕ | { 17, 30 } | Size: 01
|0A8D89| db $6C, $C1, $79 ; OBJ 079 - Water edge (west) ↕ | { 1B, 30 } | Size: 01
|0A8D8C| db $FC, $2D, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 36 }
|0A8D8F| db $09, $A3, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 28 } | Size: 07
|0A8D92| db $17, $AF, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 05, 2B } | Size: 0F
|0A8D95| db $56, $AD, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 15, 2B } | Size: 09
|0A8D98| db $80, $B1, $7A ; OBJ 07A - Water edge (east) ↕ | { 20, 2C } | Size: 01
|0A8D9B| db $81, $B9, $45 ; OBJ 045 - Water edge ┗━┓ (convex) ↔ | { 20, 2E } | Size: 05
|0A8D9E| db $16, $D8, $44 ; OBJ 044 - Water edge ┗━┓ (concave) ↔ | { 05, 36 } | Size: 08
|0A8DA1| db $16, $B1, $79 ; OBJ 079 - Water edge (west) ↕ | { 05, 2C } | Size: 09
|0A8DA4| db $3C, $DE, $79 ; OBJ 079 - Water edge (west) ↕ | { 0F, 37 } | Size: 02
|0A8DA7| db $3D, $EA, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 0F, 3A } | Size: 06
|0A8DAA| db $5C, $DE, $7A ; OBJ 07A - Water edge (east) ↕ | { 17, 37 } | Size: 02
|0A8DAD| db $5E, $DB, $43 ; OBJ 043 - Water edge ┏━┛ (concave) ↔ | { 17, 36 } | Size: 0B
|0A8DB0| db $90, $D1, $7A ; OBJ 07A - Water edge (east) ↕ | { 24, 34 } | Size: 01
|0A8DB3| db $90, $CD, $43 ; OBJ 043 - Water edge ┏━┛ (concave) ↔ | { 24, 33 } | Size: 01
|0A8DB6| db $9C, $BF, $7A ; OBJ 07A - Water edge (east) ↕ | { 27, 2F } | Size: 03
|0A8DB9| db $02, $E8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 3A } | Size: 08
|0A8DBC| db $AF, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2B, 24 } | Size: 0F
|0A8DBF| db $AF, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2B, 34 } | Size: 0E
|0A8DC2| db $E1, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 38, 24 } | Size: 07
|0A8DC5| db $E1, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 38, 34 } | Size: 06
|0A8DC8| db $FF, $FF ; Layer 1
|0A8DCA| db $2E, $3E, $FA ; OBJ 22A - Lamp cones | { 0B, 0F }
|0A8DCD| db $FF, $FF ; Layer 2
|0A8DCF| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0022:
|0A8DD1| db $71, $1C ; DOORTYPE 1C | South 0E
|0A8DD3| db $22, $00 ; DOORTYPE 00 | West 04
|0A8DD5| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0032:
|0A8DD7| db $E1, $1C ; Floors and Layout
|0A8DD9| db $FD, $A1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 1A, 04 }
|0A8DDC| db $69, $22, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1A, 08 } | Size: 06
|0A8DDF| db $1A, $52, $01 ; OBJ 001 - Wall (top, north) ↔ | { 06, 14 } | Size: 0A
|0A8DE2| db $FD, $A5, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 1A, 14 }
|0A8DE5| db $FC, $25, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 02, 14 }
|0A8DE8| db $FC, $28, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 20 }
|0A8DEB| db $1A, $82, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 20 } | Size: 0A
|0A8DEE| db $FD, $A8, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 1A, 20 }
|0A8DF1| db $6A, $93, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1A, 24 } | Size: 0B
|0A8DF4| db $FD, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 1A, 3A }
|0A8DF7| db $FE, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 22, 3A }
|0A8DFA| db $8A, $93, $62 ; OBJ 062 - Wall (top, east) ↕ | { 22, 24 } | Size: 0B
|0A8DFD| db $9A, $82, $02 ; OBJ 002 - Wall (top, south) ↔ | { 26, 20 } | Size: 0A
|0A8E00| db $FE, $28, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 22, 20 }
|0A8E03| db $FF, $A8, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 20 }
|0A8E06| db $9A, $52, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 14 } | Size: 0A
|0A8E09| db $FF, $A5, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 14 }
|0A8E0C| db $FE, $25, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 22, 14 }
|0A8E0F| db $78, $E8, $FA ; OBJ 220 - Interroom straight stairs up (south, top) | { 1E, 3A }
|0A8E12| db $3B, $6B, $FA ; OBJ 22F - Pot | { 0E, 1A }
|0A8E15| db $C1, $6A, $F9 ; OBJ 219 - Chest | { 30, 1A }
|0A8E18| db $89, $22, $62 ; OBJ 062 - Wall (top, east) ↕ | { 22, 08 } | Size: 06
|0A8E1B| db $FE, $21, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 22, 04 }
|0A8E1E| db $0B, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 0F
|0A8E21| db $49, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 04 } | Size: 07
|0A8E24| db $0B, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 24 } | Size: 0F
|0A8E27| db $0B, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 34 } | Size: 0E
|0A8E2A| db $49, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 24 } | Size: 07
|0A8E2D| db $49, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 34 } | Size: 06
|0A8E30| db $9B, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 26, 04 } | Size: 0F
|0A8E33| db $D9, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 04 } | Size: 07
|0A8E36| db $9B, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 26, 24 } | Size: 0F
|0A8E39| db $9B, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 26, 34 } | Size: 0E
|0A8E3C| db $D9, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 24 } | Size: 07
|0A8E3F| db $D9, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 34 } | Size: 06
|0A8E42| db $FF, $FF ; Layer 1
|0A8E44| db $2E, $3E, $FA ; OBJ 22A - Lamp cones | { 0B, 0F }
|0A8E47| db $FF, $FF ; Layer 2
|0A8E49| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0032:
|0A8E4B| db $10, $1C ; DOORTYPE 1C | North 02
|0A8E4D| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0042:
|0A8E4F| db $E1, $10 ; Floors and Layout
|0A8E51| db $FE, $31, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 23, 04 }
|0A8E54| db $FE, $32, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 23, 08 }
|0A8E57| db $FE, $F2, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 2F, 08 }
|0A8E5A| db $FE, $F1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2F, 04 }
|0A8E5D| db $9D, $20, $01 ; OBJ 001 - Wall (top, north) ↔ | { 27, 08 } | Size: 04
|0A8E60| db $FD, $81, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 18, 04 }
|0A8E63| db $61, $20, $61 ; OBJ 061 - Wall (top, west) ↕ | { 18, 08 } | Size: 04
|0A8E66| db $FD, $84, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 18, 10 }
|0A8E69| db $FF, $A4, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 10 }
|0A8E6C| db $73, $43, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1C, 10 } | Size: 0F
|0A8E6F| db $FF, $41, $38 ; OBJ 138 - Interroom spiral stairs up (top) | { 34, 04 }
|0A8E72| db $7B, $13, $F9 ; OBJ 21F - Interroom straight stairs down (north, top) | { 1E, 04 }
|0A8E75| db $0B, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 0F
|0A8E78| db $41, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 10, 04 } | Size: 07
|0A8E7B| db $0B, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 14 } | Size: 0E
|0A8E7E| db $4B, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 14 } | Size: 0E
|0A8E81| db $8B, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 14 } | Size: 0E
|0A8E84| db $CA, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 14 } | Size: 0A
|0A8E87| db $9D, $10, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 27, 04 } | Size: 04
|0A8E8A| db $FF, $FF ; Layer 1
|0A8E8C| db $AE, $32, $FA ; OBJ 22A - Lamp cones | { 2B, 0C }
|0A8E8F| db $FF, $FF ; Layer 2
|0A8E91| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0042:
|0A8E93| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0041:
|0A8E95| db $E1, $1C ; Floors and Layout
|0A8E97| db $FD, $61, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 16, 04 }
|0A8E9A| db $5B, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 16, 08 } | Size: 0F
|0A8E9D| db $FD, $69, $44 ; OBJ 104 - Corner (top, convex) ▟ | { 16, 25 }
|0A8EA0| db $1A, $94, $01 ; OBJ 001 - Wall (top, north) ↔ | { 06, 25 } | Size: 08
|0A8EA3| db $FC, $29, $40 ; OBJ 100 - Corner (top, concave) ▛ | { 02, 25 }
|0A8EA6| db $FC, $2B, $C1 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 2F }
|0A8EA9| db $1A, $BC, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 2F } | Size: 08
|0A8EAC| db $FD, $6B, $C5 ; OBJ 105 - Corner (top, convex) ▜ | { 16, 2F }
|0A8EAF| db $59, $CC, $61 ; OBJ 061 - Wall (top, west) ↕ | { 16, 33 } | Size: 04
|0A8EB2| db $FD, $6E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 16, 3A }
|0A8EB5| db $FE, $61, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 26, 04 }
|0A8EB8| db $99, $22, $62 ; OBJ 062 - Wall (top, east) ↕ | { 26, 08 } | Size: 06
|0A8EBB| db $FE, $65, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 26, 14 }
|0A8EBE| db $A8, $52, $01 ; OBJ 001 - Wall (top, north) ↔ | { 2A, 14 } | Size: 02
|0A8EC1| db $FE, $E5, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 2E, 14 }
|0A8EC4| db $B9, $22, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2E, 08 } | Size: 06
|0A8EC7| db $FE, $E1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2E, 04 }
|0A8ECA| db $FF, $A7, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 1E }
|0A8ECD| db $AA, $78, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2A, 1E } | Size: 08
|0A8ED0| db $FE, $67, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 26, 1E }
|0A8ED3| db $9B, $88, $62 ; OBJ 062 - Wall (top, east) ↕ | { 26, 22 } | Size: 0C
|0A8ED6| db $FE, $6E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 26, 3A }
|0A8ED9| db $FF, $41, $39 ; OBJ 139 - Interroom spiral stairs down (top) | { 34, 04 }
|0A8EDC| db $CB, $53, $FA ; OBJ 22F - Pot | { 32, 14 }
|0A8EDF| db $6B, $7B, $FA ; OBJ 22F - Pot | { 1A, 1E }
|0A8EE2| db $6B, $83, $FA ; OBJ 22F - Pot | { 1A, 20 }
|0A8EE5| db $2B, $B7, $FA ; OBJ 22F - Pot | { 0A, 2D }
|0A8EE8| db $0B, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 0F
|0A8EEB| db $0B, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 14 } | Size: 0F
|0A8EEE| db $48, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 04 } | Size: 03
|0A8EF1| db $48, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 14 } | Size: 03
|0A8EF4| db $0A, $8E, $00 ; OBJ 000 - Ceiling ↔ | { 02, 23 } | Size: 0A
|0A8EF7| db $0B, $CE, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 33 } | Size: 0E
|0A8EFA| db $48, $CE, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 33 } | Size: 02
|0A8EFD| db $A8, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2A, 04 } | Size: 03
|0A8F00| db $AB, $8B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2A, 22 } | Size: 0F
|0A8F03| db $AB, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2A, 32 } | Size: 0E
|0A8F06| db $E8, $8B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 22 } | Size: 03
|0A8F09| db $E8, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 32 } | Size: 02
|0A8F0C| db $FF, $FF ; Layer 1
|0A8F0E| db $2A, $16, $FA ; OBJ 22A - Lamp cones | { 0A, 05 }
|0A8F11| db $FF, $FF ; Layer 2
|0A8F13| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0041:
|0A8F15| db $71, $18 ; DOORTYPE 18 | South 0E
|0A8F17| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0051:
|0A8F19| db $73, $1C ; Floors and Layout
|0A8F1B| db $FD, $09, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 10, 24 }
|0A8F1E| db $FC, $69, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 06, 24 }
|0A8F21| db $28, $93, $01 ; OBJ 001 - Wall (top, north) ↔ | { 0A, 24 } | Size: 03
|0A8F24| db $1A, $A1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 28 } | Size: 09
|0A8F27| db $FC, $6E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 06, 3A }
|0A8F2A| db $FE, $C9, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 2C, 24 }
|0A8F2D| db $C0, $93, $01 ; OBJ 001 - Wall (top, north) ↔ | { 30, 24 } | Size: 03
|0A8F30| db $FF, $69, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 36, 24 }
|0A8F33| db $DA, $A1, $62 ; OBJ 062 - Wall (top, east) ↕ | { 36, 28 } | Size: 09
|0A8F36| db $FF, $6E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 36, 3A }
|0A8F39| db $5C, $9B, $22 ; OBJ 022 - Rail ↔ | { 17, 26 } | Size: 03
|0A8F3C| db $E8, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 24 } | Size: 03
|0A8F3F| db $E8, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 34 } | Size: 02
|0A8F42| db $FD, $41, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 14, 04 }
|0A8F45| db $FD, $42, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 14, 08 }
|0A8F48| db $FD, $02, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 10, 08 }
|0A8F4B| db $43, $30, $61 ; OBJ 061 - Wall (top, west) ↕ | { 10, 0C } | Size: 0C
|0A8F4E| db $FE, $81, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 28, 04 }
|0A8F51| db $FE, $82, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 28, 08 }
|0A8F54| db $FE, $C2, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 2C, 08 }
|0A8F57| db $B3, $30, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2C, 0C } | Size: 0C
|0A8F5A| db $63, $1E, $DC ; OBJ 0DC - Chest platform (short) ⇲ | { 18, 07 } | Size: 0E
|0A8F5D| db $79, $48, $70 ; OBJ 070 - Carpet ↕ | { 1E, 12 } | Size: 04
|0A8F60| db $77, $4B, $71 ; OBJ 071 - Carpet trim ↕ | { 1D, 12 } | Size: 0F
|0A8F63| db $8B, $4B, $71 ; OBJ 071 - Carpet trim ↕ | { 22, 12 } | Size: 0F
|0A8F66| db $74, $88, $71 ; OBJ 071 - Carpet trim ↕ | { 1D, 22 } | Size: 00
|0A8F69| db $88, $88, $71 ; OBJ 071 - Carpet trim ↕ | { 22, 22 } | Size: 00
|0A8F6C| db $64, $5A, $75 ; OBJ 075 - Columns ↕ | { 19, 16 } | Size: 02
|0A8F6F| db $94, $5A, $75 ; OBJ 075 - Columns ↕ | { 25, 16 } | Size: 02
|0A8F72| db $40, $3B, $65 ; OBJ 065 - Wall columns (west) ↕ | { 10, 0E } | Size: 03
|0A8F75| db $B0, $3B, $66 ; OBJ 066 - Wall columns (east) ↕ | { 2C, 0E } | Size: 03
|0A8F78| db $40, $42, $73 ; OBJ 073 - Drapes (west) ↕ | { 10, 10 } | Size: 02
|0A8F7B| db $B0, $42, $74 ; OBJ 074 - Drapes (east) ↕ | { 2C, 10 } | Size: 02
|0A8F7E| db $FD, $89, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 18, 27 }
|0A8F81| db $70, $9F, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 1C, 27 } | Size: 03
|0A8F84| db $FE, $49, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 24, 27 }
|0A8F87| db $FD, $8A, $CC ; OBJ 10C - Corner (bottom, convex) ▟ | { 18, 2B }
|0A8F8A| db $40, $AF, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 10, 2B } | Size: 03
|0A8F8D| db $FC, $DA, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 0D, 2B }
|0A8F90| db $34, $BE, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0D, 2F } | Size: 02
|0A8F93| db $61, $DF, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 18, 37 } | Size: 07
|0A8F96| db $FE, $4A, $CE ; OBJ 10E - Corner (bottom, convex) ▙ | { 24, 2B }
|0A8F99| db $A0, $AF, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 28, 2B } | Size: 03
|0A8F9C| db $FE, $FA, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 2F, 2B }
|0A8F9F| db $BC, $BE, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 2F, 2F } | Size: 02
|0A8FA2| db $78, $98, $34 ; OBJ 034 - Carpet trim ↔ | { 1E, 26 } | Size: 00
|0A8FA5| db $5C, $99, $69 ; OBJ 069 - Rail ↕ | { 17, 26 } | Size: 01
|0A8FA8| db $30, $A8, $22 ; OBJ 022 - Rail ↔ | { 0C, 2A } | Size: 00
|0A8FAB| db $30, $A8, $69 ; OBJ 069 - Rail ↕ | { 0C, 2A } | Size: 00
|0A8FAE| db $88, $9B, $22 ; OBJ 022 - Rail ↔ | { 22, 26 } | Size: 03
|0A8FB1| db $A0, $99, $69 ; OBJ 069 - Rail ↕ | { 28, 26 } | Size: 01
|0A8FB4| db $C0, $A8, $22 ; OBJ 022 - Rail ↔ | { 30, 2A } | Size: 00
|0A8FB7| db $CC, $A8, $69 ; OBJ 069 - Rail ↕ | { 33, 2A } | Size: 00
|0A8FBA| db $0A, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 0B
|0A8FBD| db $31, $10, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 0C, 04 } | Size: 04
|0A8FC0| db $0A, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 14 } | Size: 0B
|0A8FC3| db $3B, $22, $60 ; OBJ 060 - Ceiling ↕ | { 0E, 08 } | Size: 0E
|0A8FC6| db $08, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 24 } | Size: 03
|0A8FC9| db $08, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 34 } | Size: 02
|0A8FCC| db $B1, $10, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2C, 04 } | Size: 04
|0A8FCF| db $CA, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 04 } | Size: 0B
|0A8FD2| db $CA, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 14 } | Size: 0B
|0A8FD5| db $C3, $22, $60 ; OBJ 060 - Ceiling ↕ | { 30, 08 } | Size: 0E
|0A8FD8| db $FD, $E9, $F1 ; OBJ 131 - Intraroom stairs north (separate layers) | { 1E, 27 }
|0A8FDB| db $FD, $A2, $E4 ; OBJ 124 - Fairy statue | { 1A, 0B }
|0A8FDE| db $FE, $22, $E4 ; OBJ 124 - Fairy statue | { 22, 0B }
|0A8FE1| db $FF, $FF ; Layer 1
|0A8FE3| db $34, $D5, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0D, 35 } | Size: 01
|0A8FE6| db $41, $DC, $02 ; OBJ 002 - Wall (top, south) ↔ | { 10, 37 } | Size: 04
|0A8FE9| db $FC, $DD, $C1 ; OBJ 101 - Corner (top, concave) ▙ | { 0D, 37 }
|0A8FEC| db $A1, $DC, $02 ; OBJ 002 - Wall (top, south) ↔ | { 28, 37 } | Size: 04
|0A8FEF| db $FE, $FD, $C3 ; OBJ 103 - Corner (top, concave) ▟ | { 2F, 37 }
|0A8FF2| db $BC, $D5, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2F, 35 } | Size: 01
|0A8FF5| db $79, $DE, $FA ; OBJ 229 - Interroom straight stairs down (south, bottom) | { 1E, 37 }
|0A8FF8| db $FF, $FF ; Layer 2
|0A8FFA| db $02, $24, $60 ; OBJ 060 - Ceiling ↕ | { 00, 09 } | Size: 08
|0A8FFD| db $FA, $24, $60 ; OBJ 060 - Ceiling ↕ | { 3E, 09 } | Size: 08
|0A9000| db $30, $C8, $69 ; OBJ 069 - Rail ↕ | { 0C, 32 } | Size: 00
|0A9003| db $32, $D4, $22 ; OBJ 022 - Rail ↔ | { 0C, 35 } | Size: 08
|0A9006| db $5C, $D6, $69 ; OBJ 069 - Rail ↕ | { 17, 35 } | Size: 02
|0A9009| db $A0, $D6, $69 ; OBJ 069 - Rail ↕ | { 28, 35 } | Size: 02
|0A900C| db $CC, $C8, $69 ; OBJ 069 - Rail ↕ | { 33, 32 } | Size: 00
|0A900F| db $A2, $D4, $22 ; OBJ 022 - Rail ↔ | { 28, 35 } | Size: 08
|0A9012| db $3B, $B1, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0E, 2C } | Size: 0D
|0A9015| db $66, $A3, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 19, 28 } | Size: 0B
|0A9018| db $8C, $A3, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 23, 28 } | Size: 03
|0A901B| db $9A, $B1, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 26, 2C } | Size: 09
|0A901E| db $3A, $C4, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0E, 31 } | Size: 08
|0A9021| db $9A, $C4, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 26, 31 } | Size: 08
|0A9024| db $63, $C9, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 18, 32 } | Size: 0D
|0A9027| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0051:
|0A9029| db $10, $00 ; DOORTYPE 00 | North 02
|0A902B| db $10, $14 ; DOORTYPE 14 | North 02
|0A902D| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0050:
|0A902F| db $66, $04 ; Floors and Layout
|0A9031| db $FE, $61, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 26, 06 }
|0A9034| db $AA, $18, $01 ; OBJ 001 - Wall (top, north) ↔ | { 2A, 06 } | Size: 08
|0A9037| db $FF, $A1, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 06 }
|0A903A| db $9B, $2B, $61 ; OBJ 061 - Wall (top, west) ↕ | { 26, 0A } | Size: 0F
|0A903D| db $9A, $A1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 26, 28 } | Size: 09
|0A9040| db $FE, $6E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 26, 3A }
|0A9043| db $FF, $6E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 36, 3A }
|0A9046| db $DB, $73, $62 ; OBJ 062 - Wall (top, east) ↕ | { 36, 1C } | Size: 0F
|0A9049| db $FF, $66, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 36, 18 }
|0A904C| db $FF, $A6, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 18 }
|0A904F| db $FE, $92, $48 ; OBJ 108 - Corner (bottom, concave) ▛ | { 29, 09 }
|0A9052| db $B5, $24, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2D, 09 } | Size: 04
|0A9055| db $FF, $72, $4A ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 09 }
|0A9058| db $DC, $37, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 0D } | Size: 03
|0A905B| db $FF, $75, $4B ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 15 }
|0A905E| db $FF, $35, $4F ; OBJ 10F - Corner (bottom, convex) ▛ | { 33, 15 }
|0A9061| db $CF, $66, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 33, 19 } | Size: 0E
|0A9064| db $FF, $3D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 33, 37 }
|0A9067| db $B4, $DE, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2D, 37 } | Size: 02
|0A906A| db $FE, $9D, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 29, 37 }
|0A906D| db $A7, $37, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 29, 0D } | Size: 0F
|0A9070| db $A5, $B4, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 29, 2D } | Size: 04
|0A9073| db $8B, $12, $00 ; OBJ 000 - Ceiling ↔ | { 22, 04 } | Size: 0E
|0A9076| db $C0, $1C, $55 ; OBJ 055 - Wall torches (north) ↔ | { 30, 07 } | Size: 00
|0A9079| db $EC, $3C, $80 ; OBJ 080 - Wall torches (east) ↕ | { 3B, 0F } | Size: 00
|0A907C| db $88, $00, $60 ; OBJ 060 - Ceiling ↕ | { 22, 00 } | Size: 00
|0A907F| db $90, $00, $60 ; OBJ 060 - Ceiling ↕ | { 24, 00 } | Size: 00
|0A9082| db $E8, $73, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 1C } | Size: 03
|0A9085| db $E8, $B3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 2C } | Size: 03
|0A9088| db $E8, $E8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 3A } | Size: 00
|0A908B| db $FF, $FF ; Layer 1
|0A908D| db $EC, $36, $01 ; OBJ 001 - Wall (top, north) ↔ | { 3B, 0D } | Size: 02
|0A9090| db $EC, $46, $02 ; OBJ 002 - Wall (top, south) ↔ | { 3B, 11 } | Size: 02
|0A9093| db $B0, $EE, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2C, 3B } | Size: 02
|0A9096| db $C0, $EE, $62 ; OBJ 062 - Wall (top, east) ↕ | { 30, 3B } | Size: 02
|0A9099| db $C3, $33, $FA ; OBJ 22F - Pot | { 30, 0C }
|0A909C| db $CB, $33, $FA ; OBJ 22F - Pot | { 32, 0C }
|0A909F| db $B0, $2C, $38 ; OBJ 038 - Statues ↔ | { 2C, 0B } | Size: 00
|0A90A2| db $D8, $2C, $38 ; OBJ 038 - Statues ↔ | { 36, 0B } | Size: 00
|0A90A5| db $BC, $3D, $33 ; OBJ 033 - Carpet ↔ | { 2F, 0F } | Size: 01
|0A90A8| db $B9, $3D, $34 ; OBJ 034 - Carpet trim ↔ | { 2E, 0F } | Size: 05
|0A90AB| db $C4, $4A, $34 ; OBJ 034 - Carpet trim ↔ | { 31, 12 } | Size: 02
|0A90AE| db $BA, $4C, $70 ; OBJ 070 - Carpet ↕ | { 2E, 13 } | Size: 08
|0A90B1| db $C7, $4F, $71 ; OBJ 071 - Carpet trim ↕ | { 31, 13 } | Size: 0F
|0A90B4| db $C7, $99, $71 ; OBJ 071 - Carpet trim ↕ | { 31, 26 } | Size: 0D
|0A90B7| db $BB, $43, $71 ; OBJ 071 - Carpet trim ↕ | { 2E, 10 } | Size: 0F
|0A90BA| db $BB, $8F, $71 ; OBJ 071 - Carpet trim ↕ | { 2E, 23 } | Size: 0F
|0A90BD| db $B8, $CC, $71 ; OBJ 071 - Carpet trim ↕ | { 2E, 33 } | Size: 00
|0A90C0| db $FF, $FF ; Layer 2
|0A90C2| db $A7, $27, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 29, 09 } | Size: 0F
|0A90C5| db $DC, $27, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 37, 09 } | Size: 03
|0A90C8| db $A6, $67, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 29, 19 } | Size: 0B
|0A90CB| db $A6, $A7, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 29, 29 } | Size: 0B
|0A90CE| db $A6, $DC, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 29, 37 } | Size: 08
|0A90D1| db $CC, $67, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 33, 19 } | Size: 03
|0A90D4| db $CC, $A7, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 33, 29 } | Size: 03
|0A90D7| db $CC, $DC, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 33, 37 } | Size: 00
|0A90DA| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0050:
|0A90DC| db $93, $46 ; DOORTYPE 46 | East 12
|0A90DE| db $B1, $40 ; DOORTYPE 40 | South 16
|0A90E0| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0001:
|0A90E2| db $66, $10 ; Floors and Layout
|0A90E4| db $FC, $21, $C0 ; OBJ 100 - Corner (top, concave) ▛ | { 02, 07 }
|0A90E7| db $1B, $1F, $01 ; OBJ 001 - Wall (top, north) ↔ | { 06, 07 } | Size: 0F
|0A90EA| db $92, $1F, $01 ; OBJ 001 - Wall (top, north) ↔ | { 24, 07 } | Size: 0B
|0A90ED| db $FF, $A1, $C2 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 07 }
|0A90F0| db $FC, $25, $C1 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 17 }
|0A90F3| db $1B, $5F, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 17 } | Size: 0F
|0A90F6| db $92, $5F, $02 ; OBJ 002 - Wall (top, south) ↔ | { 24, 17 } | Size: 0B
|0A90F9| db $FF, $A5, $C3 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 17 }
|0A90FC| db $FC, $52, $88 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 0A }
|0A90FF| db $27, $2B, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 09, 0A } | Size: 0F
|0A9102| db $FF, $72, $8A ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 0A }
|0A9105| db $DC, $3A, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 0E } | Size: 02
|0A9108| db $FF, $75, $0B ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 14 }
|0A910B| db $14, $3A, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 0E } | Size: 02
|0A910E| db $FC, $55, $09 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 14 }
|0A9111| db $27, $53, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 09, 14 } | Size: 0F
|0A9114| db $A5, $52, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 29, 14 } | Size: 06
|0A9117| db $A5, $2A, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 29, 0A } | Size: 06
|0A911A| db $68, $1D, $3A ; OBJ 03A - Wall decors (north) ↔ | { 1A, 07 } | Size: 01
|0A911D| db $00, $0C, $00 ; OBJ 000 - Ceiling ↔ | { 00, 03 } | Size: 00
|0A9120| db $00, $14, $00 ; OBJ 000 - Ceiling ↔ | { 00, 05 } | Size: 00
|0A9123| db $00, $6C, $00 ; OBJ 000 - Ceiling ↔ | { 00, 1B } | Size: 00
|0A9126| db $00, $74, $00 ; OBJ 000 - Ceiling ↔ | { 00, 1D } | Size: 00
|0A9129| db $FF, $FF ; Layer 1
|0A912B| db $04, $36, $01 ; OBJ 001 - Wall (top, north) ↔ | { 01, 0D } | Size: 02
|0A912E| db $04, $46, $02 ; OBJ 002 - Wall (top, south) ↔ | { 01, 11 } | Size: 02
|0A9131| db $EC, $36, $01 ; OBJ 001 - Wall (top, north) ↔ | { 3B, 0D } | Size: 02
|0A9134| db $EC, $46, $02 ; OBJ 002 - Wall (top, south) ↔ | { 3B, 11 } | Size: 02
|0A9137| db $FD, $E2, $BB ; OBJ 13B - Interroom spiral stairs down (bottom) | { 1E, 0A }
|0A913A| db $59, $34, $33 ; OBJ 033 - Carpet ↔ | { 16, 0D } | Size: 04
|0A913D| db $58, $34, $71 ; OBJ 071 - Carpet trim ↕ | { 16, 0D } | Size: 00
|0A9140| db $5F, $42, $34 ; OBJ 034 - Carpet trim ↔ | { 17, 10 } | Size: 0E
|0A9143| db $A4, $34, $71 ; OBJ 071 - Carpet trim ↕ | { 29, 0D } | Size: 00
|0A9146| db $60, $31, $38 ; OBJ 038 - Statues ↔ | { 18, 0C } | Size: 01
|0A9149| db $88, $31, $38 ; OBJ 038 - Statues ↔ | { 22, 0C } | Size: 01
|0A914C| db $FF, $FF ; Layer 2
|0A914E| db $17, $2A, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 05, 0A } | Size: 0E
|0A9151| db $57, $2A, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 15, 0A } | Size: 0E
|0A9154| db $97, $2A, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 25, 0A } | Size: 0E
|0A9157| db $CD, $2A, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 33, 0A } | Size: 06
|0A915A| db $17, $50, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 05, 14 } | Size: 0C
|0A915D| db $57, $50, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 15, 14 } | Size: 0C
|0A9160| db $97, $50, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 25, 14 } | Size: 0C
|0A9163| db $CD, $50, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 33, 14 } | Size: 04
|0A9166| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0001:
|0A9168| db $32, $46 ; DOORTYPE 46 | West 06
|0A916A| db $93, $46 ; DOORTYPE 46 | East 12
|0A916C| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0052:
|0A916E| db $62, $1C ; Floors and Layout
|0A9170| db $FC, $26, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 18 }
|0A9173| db $FC, $66, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 06, 18 }
|0A9176| db $1B, $73, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 1C } | Size: 0F
|0A9179| db $FC, $6E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 06, 3A }
|0A917C| db $FD, $A1, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 1A, 04 }
|0A917F| db $6B, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1A, 08 } | Size: 0F
|0A9182| db $69, $9A, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1A, 26 } | Size: 06
|0A9185| db $FD, $AC, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 1A, 32 }
|0A9188| db $78, $CA, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1E, 32 } | Size: 02
|0A918B| db $FE, $2C, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 22, 32 }
|0A918E| db $88, $DA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 22, 36 } | Size: 02
|0A9191| db $FE, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 22, 3A }
|0A9194| db $FC, $52, $88 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 0A }
|0A9197| db $25, $28, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 09, 0A } | Size: 04
|0A919A| db $FD, $32, $8A ; OBJ 10A - Corner (bottom, concave) ▜ | { 13, 0A }
|0A919D| db $14, $3B, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 0E } | Size: 03
|0A91A0| db $FC, $55, $49 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 15 }
|0A91A3| db $FC, $95, $4D ; OBJ 10D - Corner (bottom, convex) ▜ | { 09, 15 }
|0A91A6| db $27, $66, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 09, 19 } | Size: 0E
|0A91A9| db $FC, $9D, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 09, 37 }
|0A91AC| db $34, $DE, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0D, 37 } | Size: 02
|0A91AF| db $4F, $3B, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 13, 0E } | Size: 0F
|0A91B2| db $4D, $B8, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 13, 2E } | Size: 04
|0A91B5| db $FD, $3D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 13, 37 }
|0A91B8| db $15, $25, $22 ; OBJ 022 - Rail ↔ | { 05, 09 } | Size: 05
|0A91BB| db $48, $26, $22 ; OBJ 022 - Rail ↔ | { 12, 09 } | Size: 02
|0A91BE| db $5C, $26, $69 ; OBJ 069 - Rail ↕ | { 17, 09 } | Size: 02
|0A91C1| db $5C, $D6, $69 ; OBJ 069 - Rail ↕ | { 17, 35 } | Size: 02
|0A91C4| db $0C, $3C, $7F ; OBJ 07F - Wall torches (west) ↕ | { 03, 0F } | Size: 00
|0A91C7| db $17, $1F, $FA ; OBJ 22F - Pot | { 05, 07 }
|0A91CA| db $87, $D7, $FA ; OBJ 22F - Pot | { 21, 35 }
|0A91CD| db $FC, $E2, $B1 ; OBJ 131 - Intraroom stairs north (separate layers) | { 0E, 0A }
|0A91D0| db $08, $73, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 1C } | Size: 03
|0A91D3| db $08, $B3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 2C } | Size: 03
|0A91D6| db $08, $F2, $00 ; OBJ 000 - Ceiling ↔ | { 02, 3C } | Size: 02
|0A91D9| db $7B, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1E, 04 } | Size: 0F
|0A91DC| db $BB, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 04 } | Size: 0F
|0A91DF| db $7B, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1E, 14 } | Size: 0F
|0A91E2| db $BB, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 14 } | Size: 0F
|0A91E5| db $7B, $8B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1E, 22 } | Size: 0F
|0A91E8| db $BB, $8B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 22 } | Size: 0F
|0A91EB| db $9B, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 26, 32 } | Size: 0E
|0A91EE| db $D9, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 32 } | Size: 06
|0A91F1| db $FF, $FF ; Layer 1
|0A91F3| db $24, $3D, $33 ; OBJ 033 - Carpet ↔ | { 09, 0F } | Size: 01
|0A91F6| db $25, $3D, $34 ; OBJ 034 - Carpet trim ↔ | { 09, 0F } | Size: 05
|0A91F9| db $24, $4A, $34 ; OBJ 034 - Carpet trim ↔ | { 09, 12 } | Size: 02
|0A91FC| db $3A, $4C, $70 ; OBJ 070 - Carpet ↕ | { 0E, 13 } | Size: 08
|0A91FF| db $3B, $4F, $71 ; OBJ 071 - Carpet trim ↕ | { 0E, 13 } | Size: 0F
|0A9202| db $3B, $99, $71 ; OBJ 071 - Carpet trim ↕ | { 0E, 26 } | Size: 0D
|0A9205| db $47, $43, $71 ; OBJ 071 - Carpet trim ↕ | { 11, 10 } | Size: 0F
|0A9208| db $47, $8F, $71 ; OBJ 071 - Carpet trim ↕ | { 11, 23 } | Size: 0F
|0A920B| db $44, $CC, $71 ; OBJ 071 - Carpet trim ↕ | { 11, 33 } | Size: 00
|0A920E| db $04, $36, $01 ; OBJ 001 - Wall (top, north) ↔ | { 01, 0D } | Size: 02
|0A9211| db $04, $46, $02 ; OBJ 002 - Wall (top, south) ↔ | { 01, 11 } | Size: 02
|0A9214| db $30, $EE, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0C, 3B } | Size: 02
|0A9217| db $40, $EE, $62 ; OBJ 062 - Wall (top, east) ↕ | { 10, 3B } | Size: 02
|0A921A| db $FF, $FF ; Layer 2
|0A921C| db $1B, $2E, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 06, 0B } | Size: 0E
|0A921F| db $1B, $50, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 06, 14 } | Size: 0C
|0A9222| db $2A, $63, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0A, 18 } | Size: 0B
|0A9225| db $2A, $A3, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0A, 28 } | Size: 0B
|0A9228| db $14, $2E, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 05, 0B } | Size: 02
|0A922B| db $2A, $DC, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0A, 37 } | Size: 08
|0A922E| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0052:
|0A9230| db $32, $46 ; DOORTYPE 46 | West 06
|0A9232| db $91, $40 ; DOORTYPE 40 | South 12
|0A9234| db $71, $00 ; DOORTYPE 00 | South 0E
|0A9236| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0060:
|0A9238| db $62, $04 ; Floors and Layout
|0A923A| db $FE, $21, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 04 }
|0A923D| db $8B, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 22, 08 } | Size: 0F
|0A9240| db $8A, $9A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 22, 26 } | Size: 0A
|0A9243| db $FE, $2E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 22, 3A }
|0A9246| db $FF, $AA, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 28 }
|0A9249| db $FF, $6A, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 36, 28 }
|0A924C| db $D9, $B3, $62 ; OBJ 062 - Wall (top, east) ↕ | { 36, 2C } | Size: 07
|0A924F| db $FF, $6E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 36, 3A }
|0A9252| db $CC, $2D, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 33, 0B } | Size: 01
|0A9255| db $FF, $23, $16 ; OBJ 116 - Kinked corner east (bottom) ▟ | { 32, 0C }
|0A9258| db $FF, $31, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 33, 07 }
|0A925B| db $FE, $91, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 29, 07 }
|0A925E| db $A4, $2D, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 29, 0B } | Size: 01
|0A9261| db $FE, $A3, $14 ; OBJ 114 - Kinked corner west (bottom) ▙ | { 2A, 0C }
|0A9264| db $B4, $1E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2D, 07 } | Size: 02
|0A9267| db $A6, $5D, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 29, 17 } | Size: 09
|0A926A| db $FE, $A5, $D5 ; OBJ 115 - Kinked corner west (bottom) ▛ | { 2A, 17 }
|0A926D| db $FE, $9A, $89 ; OBJ 109 - Corner (bottom, concave) ▙ | { 29, 2A }
|0A9270| db $CC, $5D, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 33, 17 } | Size: 01
|0A9273| db $FF, $25, $D7 ; OBJ 117 - Kinked corner east (bottom) ▜ | { 32, 17 }
|0A9276| db $FF, $36, $8E ; OBJ 10E - Corner (bottom, convex) ▙ | { 33, 1A }
|0A9279| db $FF, $76, $8A ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 1A }
|0A927C| db $DC, $7B, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 1E } | Size: 03
|0A927F| db $FF, $79, $4B ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 25 }
|0A9282| db $FF, $39, $4F ; OBJ 10F - Corner (bottom, convex) ▛ | { 33, 25 }
|0A9285| db $CC, $A4, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 33, 29 } | Size: 00
|0A9288| db $FF, $3A, $8B ; OBJ 10B - Corner (bottom, concave) ▟ | { 33, 2A }
|0A928B| db $B4, $AA, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2D, 2A } | Size: 02
|0A928E| db $A4, $3C, $2F ; OBJ 02F - Rail wall (north) ↔ | { 29, 0F } | Size: 00
|0A9291| db $A4, $54, $30 ; OBJ 030 - Rail wall (south) ↔ | { 29, 15 } | Size: 00
|0A9294| db $A3, $40, $22 ; OBJ 022 - Rail ↔ | { 28, 10 } | Size: 0C
|0A9297| db $A3, $54, $22 ; OBJ 022 - Rail ↔ | { 28, 15 } | Size: 0C
|0A929A| db $DD, $1E, $69 ; OBJ 069 - Rail ↕ | { 37, 07 } | Size: 06
|0A929D| db $DC, $55, $69 ; OBJ 069 - Rail ↕ | { 37, 15 } | Size: 01
|0A92A0| db $DC, $64, $22 ; OBJ 022 - Rail ↔ | { 37, 19 } | Size: 00
|0A92A3| db $A1, $1E, $69 ; OBJ 069 - Rail ↕ | { 28, 07 } | Size: 06
|0A92A6| db $A0, $57, $8A ; OBJ 08A - Long rail ↕ | { 28, 15 } | Size: 03
|0A92A9| db $A0, $B8, $22 ; OBJ 022 - Rail ↔ | { 28, 2E } | Size: 00
|0A92AC| db $CC, $B8, $22 ; OBJ 022 - Rail ↔ | { 33, 2E } | Size: 00
|0A92AF| db $E3, $23, $FA ; OBJ 22F - Pot | { 38, 08 }
|0A92B2| db $9B, $23, $FA ; OBJ 22F - Pot | { 26, 08 }
|0A92B5| db $89, $3C, $76 ; OBJ 076 - Wall decors (west) ↕ | { 22, 0F } | Size: 04
|0A92B8| db $B0, $E9, $06 ; OBJ 006 - Wall columns (south) ↔ | { 2C, 3A } | Size: 01
|0A92BB| db $FE, $CD, $A0 ; OBJ 120 - Small torch (lit) | { 2C, 36 }
|0A92BE| db $FF, $2D, $A0 ; OBJ 120 - Small torch (lit) | { 32, 36 }
|0A92C1| db $B8, $AB, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 2E, 2A }
|0A92C4| db $E8, $B3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 2C } | Size: 03
|0A92C7| db $E8, $F2, $00 ; OBJ 000 - Ceiling ↔ | { 3A, 3C } | Size: 02
|0A92CA| db $FF, $FF ; Layer 1
|0A92CC| db $A9, $3C, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 0F } | Size: 04
|0A92CF| db $C9, $3C, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 0F } | Size: 04
|0A92D2| db $B9, $2D, $70 ; OBJ 070 - Carpet ↕ | { 2E, 0B } | Size: 05
|0A92D5| db $BC, $7D, $33 ; OBJ 033 - Carpet ↔ | { 2F, 1F } | Size: 01
|0A92D8| db $BB, $2F, $71 ; OBJ 071 - Carpet trim ↕ | { 2E, 0B } | Size: 0F
|0A92DB| db $B8, $79, $71 ; OBJ 071 - Carpet trim ↕ | { 2E, 1E } | Size: 01
|0A92DE| db $C7, $2F, $71 ; OBJ 071 - Carpet trim ↕ | { 31, 0B } | Size: 0F
|0A92E1| db $C4, $70, $71 ; OBJ 071 - Carpet trim ↕ | { 31, 1C } | Size: 00
|0A92E4| db $C8, $7D, $34 ; OBJ 034 - Carpet trim ↔ | { 32, 1F } | Size: 01
|0A92E7| db $BD, $88, $34 ; OBJ 034 - Carpet trim ↔ | { 2F, 22 } | Size: 04
|0A92EA| db $B0, $07, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2C, 01 } | Size: 03
|0A92ED| db $C0, $07, $62 ; OBJ 062 - Wall (top, east) ↕ | { 30, 01 } | Size: 03
|0A92F0| db $EC, $76, $01 ; OBJ 001 - Wall (top, north) ↔ | { 3B, 1D } | Size: 02
|0A92F3| db $EC, $86, $02 ; OBJ 002 - Wall (top, south) ↔ | { 3B, 21 } | Size: 02
|0A92F6| db $FF, $FF ; Layer 2
|0A92F8| db $AA, $1D, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2A, 07 } | Size: 09
|0A92FB| db $AA, $5F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2A, 17 } | Size: 0B
|0A92FE| db $D8, $6E, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 36, 1B } | Size: 02
|0A9301| db $D8, $90, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 36, 24 } | Size: 00
|0A9304| db $AA, $95, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2A, 25 } | Size: 09
|0A9307| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0060:
|0A9309| db $50, $40 ; DOORTYPE 40 | North 0A
|0A930B| db $A3, $40 ; DOORTYPE 40 | East 14
|0A930D| db $A3, $16 ; DOORTYPE 16 | East 14
|0A930F| db $63, $00 ; DOORTYPE 00 | East 0C
|0A9311| db $81, $00 ; DOORTYPE 00 | South 10
|0A9313| db $81, $12 ; DOORTYPE 12 | South 10
|0A9315| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0061:
|0A9317| db $62, $1C ; Floors and Layout
|0A9319| db $23, $98, $DB ; OBJ 0DB - Floor 2 ⇲ | { 08, 26 } | Size: 0C
|0A931C| db $5B, $9B, $DB ; OBJ 0DB - Floor 2 ⇲ | { 16, 26 } | Size: 0F
|0A931F| db $A3, $98, $DB ; OBJ 0DB - Floor 2 ⇲ | { 28, 26 } | Size: 0C
|0A9322| db $98, $9B, $DB ; OBJ 0DB - Floor 2 ⇲ | { 26, 26 } | Size: 03
|0A9325| db $5B, $D0, $DB ; OBJ 0DB - Floor 2 ⇲ | { 16, 34 } | Size: 0C
|0A9328| db $98, $D0, $DB ; OBJ 0DB - Floor 2 ⇲ | { 26, 34 } | Size: 00
|0A932B| db $09, $34, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 02, 0D } | Size: 04
|0A932E| db $09, $88, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 02, 22 } | Size: 04
|0A9331| db $30, $B2, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0C, 2C } | Size: 02
|0A9334| db $FD, $0B, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 10, 2C }
|0A9337| db $41, $C1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 10, 30 } | Size: 05
|0A933A| db $FD, $0E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 10, 3A }
|0A933D| db $FE, $CE, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 2C, 3A }
|0A9340| db $B1, $C1, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2C, 30 } | Size: 05
|0A9343| db $FE, $CB, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 2C, 2C }
|0A9346| db $C0, $B2, $02 ; OBJ 002 - Wall (top, south) ↔ | { 30, 2C } | Size: 02
|0A9349| db $D1, $AC, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 34, 2B } | Size: 04
|0A934C| db $D1, $10, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 34, 04 } | Size: 04
|0A934F| db $0B, $38, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 0E } | Size: 0C
|0A9352| db $EB, $38, $62 ; OBJ 062 - Wall (top, east) ↕ | { 3A, 0E } | Size: 0C
|0A9355| db $FC, $55, $08 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 14 }
|0A9358| db $24, $52, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 09, 14 } | Size: 02
|0A935B| db $FC, $F5, $0C ; OBJ 10C - Corner (bottom, convex) ▟ | { 0F, 14 }
|0A935E| db $3C, $3A, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0F, 0E } | Size: 02
|0A9361| db $FC, $F2, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 0F, 0B }
|0A9364| db $4F, $2C, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 13, 0B } | Size: 0C
|0A9367| db $B4, $3A, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 2D, 0E } | Size: 02
|0A936A| db $FE, $D2, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 2D, 0B }
|0A936D| db $FE, $D5, $0E ; OBJ 10E - Corner (bottom, convex) ▙ | { 2D, 14 }
|0A9370| db $C4, $52, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 31, 14 } | Size: 02
|0A9373| db $FF, $75, $0A ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 14 }
|0A9376| db $14, $89, $1A ; OBJ 01A - Diagonal wall B ◣ (bottom) | { 05, 22 } | Size: 01
|0A9379| db $15, $62, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 18 } | Size: 06
|0A937C| db $30, $A7, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0C, 29 } | Size: 03
|0A937F| db $FD, $3A, $4D ; OBJ 10D - Corner (bottom, convex) ▜ | { 13, 29 }
|0A9382| db $4D, $B4, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 13, 2D } | Size: 04
|0A9385| db $FD, $3D, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 13, 37 }
|0A9388| db $5E, $DC, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 17, 37 } | Size: 08
|0A938B| db $FE, $9D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 29, 37 }
|0A938E| db $A5, $B4, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 29, 2D } | Size: 04
|0A9391| db $B0, $A7, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2C, 29 } | Size: 03
|0A9394| db $FE, $9A, $4F ; OBJ 10F - Corner (bottom, convex) ▛ | { 29, 29 }
|0A9397| db $D0, $A1, $1C ; OBJ 01C - Diagonal wall B ◢ (bottom) | { 34, 28 } | Size: 01
|0A939A| db $DD, $62, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 18 } | Size: 06
|0A939D| db $14, $4D, $22 ; OBJ 022 - Rail ↔ | { 05, 13 } | Size: 01
|0A93A0| db $39, $2A, $69 ; OBJ 069 - Rail ↕ | { 0E, 0A } | Size: 06
|0A93A3| db $39, $28, $22 ; OBJ 022 - Rail ↔ | { 0E, 0A } | Size: 04
|0A93A6| db $68, $28, $22 ; OBJ 022 - Rail ↔ | { 1A, 0A } | Size: 00
|0A93A9| db $88, $28, $22 ; OBJ 022 - Rail ↔ | { 22, 0A } | Size: 00
|0A93AC| db $A9, $28, $22 ; OBJ 022 - Rail ↔ | { 2A, 0A } | Size: 04
|0A93AF| db $C5, $2A, $69 ; OBJ 069 - Rail ↕ | { 31, 0A } | Size: 06
|0A93B2| db $D8, $4D, $22 ; OBJ 022 - Rail ↔ | { 36, 13 } | Size: 01
|0A93B5| db $FC, $A5, $32 ; OBJ 132 - Intraroom stairs north (merged layers) | { 0A, 14 }
|0A93B8| db $FD, $E2, $F2 ; OBJ 132 - Intraroom stairs north (merged layers) | { 1E, 0B }
|0A93BB| db $FF, $25, $32 ; OBJ 132 - Intraroom stairs north (merged layers) | { 32, 14 }
|0A93BE| db $58, $EE, $3B ; OBJ 03B - Wall decors (south) ↔ | { 16, 3B } | Size: 02
|0A93C1| db $30, $12, $05 ; OBJ 005 - Wall columns (north) ↔ | { 0C, 04 } | Size: 02
|0A93C4| db $98, $12, $05 ; OBJ 005 - Wall columns (north) ↔ | { 26, 04 } | Size: 02
|0A93C7| db $68, $11, $3A ; OBJ 03A - Wall decors (north) ↔ | { 1A, 04 } | Size: 01
|0A93CA| db $7A, $13, $F9 ; OBJ 21E - Interroom straight stairs up (north, top) | { 1E, 04 }
|0A93CD| db $70, $9F, $70 ; OBJ 070 - Carpet ↕ | { 1C, 27 } | Size: 03
|0A93D0| db $80, $9F, $70 ; OBJ 070 - Carpet ↕ | { 20, 27 } | Size: 03
|0A93D3| db $71, $9C, $34 ; OBJ 034 - Carpet trim ↔ | { 1C, 27 } | Size: 04
|0A93D6| db $72, $A3, $71 ; OBJ 071 - Carpet trim ↕ | { 1C, 28 } | Size: 0B
|0A93D9| db $8E, $A3, $71 ; OBJ 071 - Carpet trim ↕ | { 23, 28 } | Size: 0B
|0A93DC| db $FD, $AA, $20 ; OBJ 120 - Small torch (lit) | { 1A, 28 }
|0A93DF| db $FD, $AB, $20 ; OBJ 120 - Small torch (lit) | { 1A, 2C }
|0A93E2| db $FD, $AC, $20 ; OBJ 120 - Small torch (lit) | { 1A, 30 }
|0A93E5| db $FD, $AD, $20 ; OBJ 120 - Small torch (lit) | { 1A, 34 }
|0A93E8| db $FE, $4A, $20 ; OBJ 120 - Small torch (lit) | { 24, 28 }
|0A93EB| db $FE, $4B, $20 ; OBJ 120 - Small torch (lit) | { 24, 2C }
|0A93EE| db $FE, $4C, $20 ; OBJ 120 - Small torch (lit) | { 24, 30 }
|0A93F1| db $FE, $4D, $20 ; OBJ 120 - Small torch (lit) | { 24, 34 }
|0A93F4| db $4D, $3D, $33 ; OBJ 033 - Carpet ↔ | { 13, 0F } | Size: 05
|0A93F7| db $4D, $4D, $33 ; OBJ 033 - Carpet ↔ | { 13, 13 } | Size: 05
|0A93FA| db $4D, $5D, $33 ; OBJ 033 - Carpet ↔ | { 13, 17 } | Size: 05
|0A93FD| db $26, $62, $33 ; OBJ 033 - Carpet ↔ | { 09, 18 } | Size: 0A
|0A9400| db $26, $72, $33 ; OBJ 033 - Carpet ↔ | { 09, 1C } | Size: 0A
|0A9403| db $26, $82, $33 ; OBJ 033 - Carpet ↔ | { 09, 20 } | Size: 0A
|0A9406| db $26, $8A, $33 ; OBJ 033 - Carpet ↔ | { 09, 22 } | Size: 0A
|0A9409| db $A4, $3E, $70 ; OBJ 070 - Carpet ↕ | { 29, 0F } | Size: 02
|0A940C| db $CC, $62, $70 ; OBJ 070 - Carpet ↕ | { 33, 18 } | Size: 02
|0A940F| db $CC, $88, $70 ; OBJ 070 - Carpet ↕ | { 33, 22 } | Size: 00
|0A9412| db $27, $97, $34 ; OBJ 034 - Carpet trim ↔ | { 09, 25 } | Size: 0F
|0A9415| db $73, $97, $34 ; OBJ 034 - Carpet trim ↔ | { 1C, 25 } | Size: 0F
|0A9418| db $BD, $94, $34 ; OBJ 034 - Carpet trim ↔ | { 2F, 25 } | Size: 04
|0A941B| db $FD, $A3, $9C ; OBJ 11C - Large brazier | { 1A, 0E }
|0A941E| db $FE, $23, $9C ; OBJ 11C - Large brazier | { 22, 0E }
|0A9421| db $FD, $65, $9C ; OBJ 11C - Large brazier | { 16, 16 }
|0A9424| db $FE, $65, $9C ; OBJ 11C - Large brazier | { 26, 16 }
|0A9427| db $30, $70, $39 ; OBJ 039 - Columns ↔ | { 0C, 1C } | Size: 00
|0A942A| db $40, $70, $39 ; OBJ 039 - Columns ↔ | { 10, 1C } | Size: 00
|0A942D| db $50, $70, $39 ; OBJ 039 - Columns ↔ | { 14, 1C } | Size: 00
|0A9430| db $A8, $70, $39 ; OBJ 039 - Columns ↔ | { 2A, 1C } | Size: 00
|0A9433| db $B8, $70, $39 ; OBJ 039 - Columns ↔ | { 2E, 1C } | Size: 00
|0A9436| db $C8, $70, $39 ; OBJ 039 - Columns ↔ | { 32, 1C } | Size: 00
|0A9439| db $70, $81, $3D ; OBJ 03D - Tall torches ↔ | { 1C, 20 } | Size: 01
|0A943C| db $09, $11, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 02, 04 } | Size: 05
|0A943F| db $09, $9D, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 02, 27 } | Size: 05
|0A9442| db $03, $C3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 30 } | Size: 0F
|0A9445| db $C3, $C3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 30, 30 } | Size: 0F
|0A9448| db $D5, $BD, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 35, 2F } | Size: 05
|0A944B| db $D5, $11, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 35, 04 } | Size: 05
|0A944E| db $FF, $FF ; Layer 1
|0A9450| db $FF, $FF ; Layer 2
|0A9452| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0061:
|0A9454| db $42, $02 ; DOORTYPE 02 | West 08
|0A9456| db $42, $16 ; DOORTYPE 16 | West 08
|0A9458| db $A3, $02 ; DOORTYPE 02 | East 14
|0A945A| db $A3, $16 ; DOORTYPE 16 | East 14
|0A945C| db $A1, $02 ; DOORTYPE 02 | South 14
|0A945E| db $A1, $12 ; DOORTYPE 12 | South 14
|0A9460| db $02, $00 ; DOORTYPE 00 | West 00
|0A9462| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0062:
|0A9464| db $62, $1C ; Floors and Layout
|0A9466| db $FC, $61, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 06, 04 }
|0A9469| db $19, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 08 } | Size: 07
|0A946C| db $FC, $65, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 06, 16 }
|0A946F| db $FC, $25, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 02, 16 }
|0A9472| db $FC, $2A, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 28 }
|0A9475| db $FC, $6A, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 06, 28 }
|0A9478| db $19, $B3, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 2C } | Size: 07
|0A947B| db $FC, $6E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 06, 3A }
|0A947E| db $FD, $CE, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 1C, 3A }
|0A9481| db $71, $C1, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1C, 30 } | Size: 05
|0A9484| db $FD, $CB, $47 ; OBJ 107 - Corner (top, convex) ▛ | { 1C, 2D }
|0A9487| db $81, $B5, $02 ; OBJ 002 - Wall (top, south) ↔ | { 20, 2D } | Size: 05
|0A948A| db $AB, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2A, 08 } | Size: 0F
|0A948D| db $A9, $98, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2A, 26 } | Size: 04
|0A9490| db $FE, $AB, $43 ; OBJ 103 - Corner (top, concave) ▟ | { 2A, 2D }
|0A9493| db $FE, $A1, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 2A, 04 }
|0A9496| db $FC, $91, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 09, 07 }
|0A9499| db $34, $1E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0D, 07 } | Size: 02
|0A949C| db $FD, $31, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 13, 07 }
|0A949F| db $FD, $39, $4F ; OBJ 10F - Corner (bottom, convex) ▛ | { 13, 25 }
|0A94A2| db $34, $AA, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0D, 2A } | Size: 02
|0A94A5| db $24, $A4, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 09, 29 } | Size: 00
|0A94A8| db $FC, $9A, $89 ; OBJ 109 - Corner (bottom, concave) ▙ | { 09, 2A }
|0A94AB| db $FC, $99, $4D ; OBJ 10D - Corner (bottom, convex) ▜ | { 09, 25 }
|0A94AE| db $FC, $59, $49 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 25 }
|0A94B1| db $14, $77, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 1D } | Size: 03
|0A94B4| db $FC, $56, $48 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 19 }
|0A94B7| db $FC, $96, $4C ; OBJ 10C - Corner (bottom, convex) ▟ | { 09, 19 }
|0A94BA| db $25, $2E, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 09, 0B } | Size: 06
|0A94BD| db $FD, $34, $0E ; OBJ 10E - Corner (bottom, convex) ▙ | { 13, 10 }
|0A94C0| db $5B, $40, $6C ; OBJ 06C - Rail wall (west) ↕ | { 16, 10 } | Size: 0C
|0A94C3| db $4C, $2E, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 13, 0B } | Size: 02
|0A94C6| db $4C, $A4, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 13, 29 } | Size: 00
|0A94C9| db $FD, $3A, $8B ; OBJ 10B - Corner (bottom, concave) ▟ | { 13, 2A }
|0A94CC| db $79, $3C, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 1E, 0F } | Size: 04
|0A94CF| db $FD, $E4, $12 ; OBJ 112 - Kinked corner north (bottom) ▛ | { 1E, 10 }
|0A94D2| db $79, $98, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 1E, 26 } | Size: 04
|0A94D5| db $FD, $E9, $53 ; OBJ 113 - Kinked corner south (bottom) ▙ | { 1E, 25 }
|0A94D8| db $FE, $73, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 27, 0F }
|0A94DB| db $9E, $4D, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 27, 13 } | Size: 09
|0A94DE| db $FE, $79, $8B ; OBJ 10B - Corner (bottom, concave) ▟ | { 27, 26 }
|0A94E1| db $73, $3D, $6D ; OBJ 06D - Rail wall (east) ↕ | { 1C, 0F } | Size: 0D
|0A94E4| db $5F, $1F, $8A ; OBJ 08A - Long rail ↕ | { 17, 07 } | Size: 0F
|0A94E7| db $5C, $AC, $69 ; OBJ 069 - Rail ↕ | { 17, 2B } | Size: 00
|0A94EA| db $4C, $B9, $22 ; OBJ 022 - Rail ↔ | { 13, 2E } | Size: 01
|0A94ED| db $24, $B8, $22 ; OBJ 022 - Rail ↔ | { 09, 2E } | Size: 00
|0A94F0| db $71, $3A, $8A ; OBJ 08A - Long rail ↕ | { 1C, 0E } | Size: 06
|0A94F3| db $70, $3A, $22 ; OBJ 022 - Rail ↔ | { 1C, 0E } | Size: 02
|0A94F6| db $98, $39, $22 ; OBJ 022 - Rail ↔ | { 26, 0E } | Size: 01
|0A94F9| db $70, $AA, $22 ; OBJ 022 - Rail ↔ | { 1C, 2A } | Size: 02
|0A94FC| db $98, $A9, $22 ; OBJ 022 - Rail ↔ | { 26, 2A } | Size: 01
|0A94FF| db $FE, $23, $F1 ; OBJ 131 - Intraroom stairs north (separate layers) | { 22, 0F }
|0A9502| db $AC, $3F, $77 ; OBJ 077 - Wall decors (east) ↕ | { 2B, 0F } | Size: 03
|0A9505| db $30, $E9, $06 ; OBJ 006 - Wall columns (south) ↔ | { 0C, 3A } | Size: 01
|0A9508| db $FC, $CD, $A0 ; OBJ 120 - Small torch (lit) | { 0C, 36 }
|0A950B| db $FD, $2D, $A0 ; OBJ 120 - Small torch (lit) | { 12, 36 }
|0A950E| db $A3, $AF, $FA ; OBJ 22F - Pot | { 28, 2B }
|0A9511| db $BB, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 04 } | Size: 0F
|0A9514| db $BB, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 14 } | Size: 0F
|0A9517| db $BB, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 24 } | Size: 0F
|0A951A| db $BB, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 34 } | Size: 0E
|0A951D| db $83, $C6, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 20, 31 } | Size: 0E
|0A9520| db $81, $F3, $00 ; OBJ 000 - Ceiling ↔ | { 20, 3C } | Size: 07
|0A9523| db $08, $B3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 2C } | Size: 03
|0A9526| db $08, $F2, $00 ; OBJ 000 - Ceiling ↔ | { 02, 3C } | Size: 02
|0A9529| db $08, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 03
|0A952C| db $08, $52, $00 ; OBJ 000 - Ceiling ↔ | { 02, 14 } | Size: 02
|0A952F| db $FF, $FF ; Layer 1
|0A9531| db $5C, $43, $01 ; OBJ 001 - Wall (top, north) ↔ | { 17, 10 } | Size: 03
|0A9534| db $70, $41, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1C, 10 } | Size: 01
|0A9537| db $5C, $97, $02 ; OBJ 002 - Wall (top, south) ↔ | { 17, 25 } | Size: 03
|0A953A| db $70, $95, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1C, 25 } | Size: 01
|0A953D| db $39, $2D, $70 ; OBJ 070 - Carpet ↕ | { 0E, 0B } | Size: 05
|0A9540| db $24, $7D, $33 ; OBJ 033 - Carpet ↔ | { 09, 1F } | Size: 01
|0A9543| db $24, $7E, $34 ; OBJ 034 - Carpet trim ↔ | { 09, 1F } | Size: 02
|0A9546| db $25, $89, $34 ; OBJ 034 - Carpet trim ↔ | { 09, 22 } | Size: 05
|0A9549| db $3B, $2F, $71 ; OBJ 071 - Carpet trim ↕ | { 0E, 0B } | Size: 0F
|0A954C| db $47, $2F, $71 ; OBJ 071 - Carpet trim ↕ | { 11, 0B } | Size: 0F
|0A954F| db $44, $78, $71 ; OBJ 071 - Carpet trim ↕ | { 11, 1E } | Size: 00
|0A9552| db $38, $6C, $71 ; OBJ 071 - Carpet trim ↕ | { 0E, 1B } | Size: 00
|0A9555| db $04, $76, $01 ; OBJ 001 - Wall (top, north) ↔ | { 01, 1D } | Size: 02
|0A9558| db $04, $86, $02 ; OBJ 002 - Wall (top, south) ↔ | { 01, 21 } | Size: 02
|0A955B| db $30, $07, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0C, 01 } | Size: 03
|0A955E| db $40, $07, $62 ; OBJ 062 - Wall (top, east) ↕ | { 10, 01 } | Size: 03
|0A9561| db $FF, $FF ; Layer 2
|0A9563| db $2A, $1F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0A, 07 } | Size: 0B
|0A9566| db $2A, $5F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0A, 17 } | Size: 0B
|0A9569| db $15, $67, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 05, 19 } | Size: 07
|0A956C| db $2A, $95, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0A, 25 } | Size: 09
|0A956F| db $7A, $3F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1E, 0F } | Size: 0B
|0A9572| db $7A, $76, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1E, 1D } | Size: 0A
|0A9575| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0062:
|0A9577| db $42, $40 ; DOORTYPE 40 | West 08
|0A9579| db $42, $16 ; DOORTYPE 16 | West 08
|0A957B| db $30, $40 ; DOORTYPE 40 | North 06
|0A957D| db $10, $00 ; DOORTYPE 00 | North 02
|0A957F| db $61, $00 ; DOORTYPE 00 | South 0C
|0A9581| db $61, $12 ; DOORTYPE 12 | South 0C
|0A9583| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00C8:
|0A9585| db $E1, $00 ; Floors and Layout
|0A9587| db $98, $92, $3A ; OBJ 03A - Wall decors (north) ↔ | { 26, 24 } | Size: 02
|0A958A| db $88, $AA, $65 ; OBJ 065 - Wall columns (west) ↕ | { 22, 2A } | Size: 02
|0A958D| db $E8, $AA, $66 ; OBJ 066 - Wall columns (east) ↕ | { 3A, 2A } | Size: 02
|0A9590| db $FF, $FF ; Layer 1
|0A9592| db $FF, $FF ; Layer 2
|0A9594| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00C8:
|0A9596| db $81, $18 ; DOORTYPE 18 | South 10
|0A9598| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00D8:
|0A959A| db $E1, $0C ; Floors and Layout
|0A959C| db $FE, $A1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2A, 04 }
|0A959F| db $A8, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 08 } | Size: 03
|0A95A2| db $FE, $A3, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 2A, 0E }
|0A95A5| db $98, $3A, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 0E } | Size: 02
|0A95A8| db $FE, $23, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 0E }
|0A95AB| db $FF, $21, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 32, 04 }
|0A95AE| db $C8, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 08 } | Size: 03
|0A95B1| db $FF, $23, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 32, 0E }
|0A95B4| db $D8, $3A, $01 ; OBJ 001 - Wall (top, north) ↔ | { 36, 0E } | Size: 02
|0A95B7| db $FF, $A3, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 0E }
|0A95BA| db $98, $38, $3A ; OBJ 03A - Wall decors (north) ↔ | { 26, 0E } | Size: 00
|0A95BD| db $D8, $38, $3A ; OBJ 03A - Wall decors (north) ↔ | { 36, 0E } | Size: 00
|0A95C0| db $97, $47, $FA ; OBJ 22F - Pot | { 25, 11 }
|0A95C3| db $97, $57, $FA ; OBJ 22F - Pot | { 25, 15 }
|0A95C6| db $97, $67, $FA ; OBJ 22F - Pot | { 25, 19 }
|0A95C9| db $E7, $57, $FA ; OBJ 22F - Pot | { 39, 15 }
|0A95CC| db $E7, $67, $FA ; OBJ 22F - Pot | { 39, 19 }
|0A95CF| db $E7, $47, $FA ; OBJ 22F - Pot | { 39, 11 }
|0A95D2| db $98, $93, $05 ; OBJ 005 - Wall columns (north) ↔ | { 26, 24 } | Size: 03
|0A95D5| db $B0, $91, $FF ; OBJ 274 - Boss entrance | { 2C, 24 }
|0A95D8| db $98, $EB, $06 ; OBJ 006 - Wall columns (south) ↔ | { 26, 3A } | Size: 03
|0A95DB| db $BB, $C3, $FA ; OBJ 22F - Pot | { 2E, 30 }
|0A95DE| db $C3, $C3, $FA ; OBJ 22F - Pot | { 30, 30 }
|0A95E1| db $89, $0A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 02 } | Size: 06
|0A95E4| db $D9, $0A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 02 } | Size: 06
|0A95E7| db $FF, $FF ; Layer 1
|0A95E9| db $FF, $FF ; Layer 2
|0A95EB| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00D8:
|0A95ED| db $20, $18 ; DOORTYPE 18 | North 04
|0A95EF| db $80, $36 ; DOORTYPE 36 | North 10
|0A95F1| db $83, $00 ; DOORTYPE 00 | East 10
|0A95F3| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00D9:
|0A95F5| db $E1, $18 ; Floors and Layout
|0A95F7| db $1C, $90, $51 ; OBJ 051 - Cannon hole (bottom, north) ↔ | { 07, 24 } | Size: 00
|0A95FA| db $2C, $90, $51 ; OBJ 051 - Cannon hole (bottom, north) ↔ | { 0B, 24 } | Size: 00
|0A95FD| db $44, $90, $51 ; OBJ 051 - Cannon hole (bottom, north) ↔ | { 11, 24 } | Size: 00
|0A9600| db $54, $90, $51 ; OBJ 051 - Cannon hole (bottom, north) ↔ | { 15, 24 } | Size: 00
|0A9603| db $1C, $EC, $52 ; OBJ 052 - Cannon hole (bottom, south) ↔ | { 07, 3B } | Size: 00
|0A9606| db $2C, $EC, $52 ; OBJ 052 - Cannon hole (bottom, south) ↔ | { 0B, 3B } | Size: 00
|0A9609| db $44, $EC, $52 ; OBJ 052 - Cannon hole (bottom, south) ↔ | { 11, 3B } | Size: 00
|0A960C| db $54, $EC, $52 ; OBJ 052 - Cannon hole (bottom, south) ↔ | { 15, 3B } | Size: 00
|0A960F| db $08, $9C, $85 ; OBJ 085 - Cannon hole (west) ↕ | { 02, 27 } | Size: 00
|0A9612| db $08, $AC, $85 ; OBJ 085 - Cannon hole (west) ↕ | { 02, 2B } | Size: 00
|0A9615| db $08, $CC, $85 ; OBJ 085 - Cannon hole (west) ↕ | { 02, 33 } | Size: 00
|0A9618| db $08, $DC, $85 ; OBJ 085 - Cannon hole (west) ↕ | { 02, 37 } | Size: 00
|0A961B| db $6C, $9C, $86 ; OBJ 086 - Cannon hole (east) ↕ | { 1B, 27 } | Size: 00
|0A961E| db $6C, $AC, $86 ; OBJ 086 - Cannon hole (east) ↕ | { 1B, 2B } | Size: 00
|0A9621| db $6C, $CC, $86 ; OBJ 086 - Cannon hole (east) ↕ | { 1B, 33 } | Size: 00
|0A9624| db $6C, $DC, $86 ; OBJ 086 - Cannon hole (east) ↕ | { 1B, 37 } | Size: 00
|0A9627| db $28, $A8, $FD ; OBJ 250 - Pressure plate | { 0A, 2A }
|0A962A| db $53, $A8, $FE ; OBJ 263 - Fake pressure plate | { 14, 2A }
|0A962D| db $2B, $D8, $FE ; OBJ 263 - Fake pressure plate | { 0A, 36 }
|0A9630| db $53, $D8, $FE ; OBJ 263 - Fake pressure plate | { 14, 36 }
|0A9633| db $FE, $2B, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 2C }
|0A9636| db $98, $B2, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 2C } | Size: 02
|0A9639| db $FE, $AB, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 2A, 2C }
|0A963C| db $A8, $A2, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 28 } | Size: 02
|0A963F| db $FE, $A9, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2A, 24 }
|0A9642| db $FE, $2C, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 22, 32 }
|0A9645| db $98, $CA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 26, 32 } | Size: 02
|0A9648| db $FE, $AC, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 2A, 32 }
|0A964B| db $A8, $DA, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 36 } | Size: 02
|0A964E| db $FE, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 2A, 3A }
|0A9651| db $A3, $C0, $FE ; OBJ 263 - Fake pressure plate | { 28, 30 }
|0A9654| db $C3, $A8, $FE ; OBJ 263 - Fake pressure plate | { 30, 2A }
|0A9657| db $C3, $C0, $FE ; OBJ 263 - Fake pressure plate | { 30, 30 }
|0A965A| db $BB, $A3, $FA ; OBJ 22F - Pot | { 2E, 28 }
|0A965D| db $BB, $E3, $FA ; OBJ 22F - Pot | { 2E, 38 }
|0A9660| db $C0, $D8, $FD ; OBJ 250 - Pressure plate | { 30, 36 }
|0A9663| db $89, $91, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 24 } | Size: 05
|0A9666| db $89, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 36 } | Size: 05
|0A9669| db $FF, $FF ; Layer 1
|0A966B| db $FF, $FF ; Layer 2
|0A966D| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00D9:
|0A966F| db $22, $18 ; DOORTYPE 18 | West 04
|0A9671| db $82, $18 ; DOORTYPE 18 | West 10
|0A9673| db $83, $18 ; DOORTYPE 18 | East 10
|0A9675| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00DA:
|0A9677| db $E1, $18 ; Floors and Layout
|0A9679| db $FC, $E9, $39 ; OBJ 139 - Interroom spiral stairs down (top) | { 0E, 24 }
|0A967C| db $18, $93, $05 ; OBJ 005 - Wall columns (north) ↔ | { 06, 24 } | Size: 03
|0A967F| db $20, $A8, $38 ; OBJ 038 - Statues ↔ | { 08, 2A } | Size: 00
|0A9682| db $20, $D4, $38 ; OBJ 038 - Statues ↔ | { 08, 35 } | Size: 00
|0A9685| db $58, $A8, $38 ; OBJ 038 - Statues ↔ | { 16, 2A } | Size: 00
|0A9688| db $58, $D4, $38 ; OBJ 038 - Statues ↔ | { 16, 35 } | Size: 00
|0A968B| db $33, $BB, $FA ; OBJ 22F - Pot | { 0C, 2E }
|0A968E| db $4B, $BB, $FA ; OBJ 22F - Pot | { 12, 2E }
|0A9691| db $33, $CB, $FA ; OBJ 22F - Pot | { 0C, 32 }
|0A9694| db $4B, $CB, $FA ; OBJ 22F - Pot | { 12, 32 }
|0A9697| db $FF, $FF ; Layer 1
|0A9699| db $FF, $FF ; Layer 2
|0A969B| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00DA:
|0A969D| db $22, $18 ; DOORTYPE 18 | West 04
|0A969F| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0099:
|0A96A1| db $E1, $14 ; Floors and Layout
|0A96A3| db $FC, $E9, $38 ; OBJ 138 - Interroom spiral stairs up (top) | { 0E, 24 }
|0A96A6| db $FC, $A9, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 0A, 24 }
|0A96A9| db $28, $A1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0A, 28 } | Size: 01
|0A96AC| db $FC, $AA, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0A, 2A }
|0A96AF| db $38, $AA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0E, 2A } | Size: 02
|0A96B2| db $FD, $2A, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 12, 2A }
|0A96B5| db $49, $BA, $61 ; OBJ 061 - Wall (top, west) ↕ | { 12, 2E } | Size: 06
|0A96B8| db $FD, $2E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 12, 3A }
|0A96BB| db $FE, $AE, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 2A, 3A }
|0A96BE| db $A9, $BA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2A, 2E } | Size: 06
|0A96C1| db $FE, $AA, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 2A, 2A }
|0A96C4| db $B8, $AA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2E, 2A } | Size: 02
|0A96C7| db $FF, $2A, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 32, 2A }
|0A96CA| db $C8, $A1, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 28 } | Size: 01
|0A96CD| db $FF, $29, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 32, 24 }
|0A96D0| db $FE, $20, $C0 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 03 }
|0A96D3| db $9A, $0E, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 03 } | Size: 0A
|0A96D6| db $FF, $A0, $C2 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 03 }
|0A96D9| db $A3, $26, $E2 ; OBJ 0E2 - Rupee floor ⇲ | { 28, 09 } | Size: 0E
|0A96DC| db $FE, $51, $88 ; OBJ 108 - Corner (bottom, concave) ▛ | { 25, 06 }
|0A96DF| db $A5, $1A, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 29, 06 } | Size: 06
|0A96E2| db $FF, $71, $8A ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 06 }
|0A96E5| db $95, $28, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 25, 0A } | Size: 04
|0A96E8| db $FE, $55, $09 ; OBJ 109 - Corner (bottom, concave) ▙ | { 25, 14 }
|0A96EB| db $A5, $52, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 29, 14 } | Size: 06
|0A96EE| db $DD, $28, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 0A } | Size: 04
|0A96F1| db $FF, $75, $0B ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 14 }
|0A96F4| db $53, $A3, $FA ; OBJ 22F - Pot | { 14, 28 }
|0A96F7| db $AB, $A3, $FA ; OBJ 22F - Pot | { 2A, 28 }
|0A96FA| db $94, $60, $22 ; OBJ 022 - Rail ↔ | { 25, 18 } | Size: 00
|0A96FD| db $DC, $60, $22 ; OBJ 022 - Rail ↔ | { 37, 18 } | Size: 00
|0A9700| db $A5, $53, $F9 ; OBJ 21D - Intraroom stairs south (merged layers) | { 29, 14 }
|0A9703| db $CD, $53, $F9 ; OBJ 21D - Intraroom stairs south (merged layers) | { 33, 14 }
|0A9706| db $0B, $91, $60 ; OBJ 060 - Ceiling ↕ | { 02, 24 } | Size: 0D
|0A9709| db $13, $91, $60 ; OBJ 060 - Ceiling ↕ | { 04, 24 } | Size: 0D
|0A970C| db $18, $92, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 06, 24 } | Size: 02
|0A970F| db $1A, $BB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 06, 2E } | Size: 0B
|0A9712| db $D9, $92, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 24 } | Size: 06
|0A9715| db $BB, $BB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 2E } | Size: 0F
|0A9718| db $AA, $2C, $F9 ; OBJ 212 - 9 blue rupees | { 2A, 0B }
|0A971B| db $C6, $2C, $F9 ; OBJ 212 - 9 blue rupees | { 31, 0B }
|0A971E| db $FF, $FF ; Layer 1
|0A9720| db $2B, $14, $FF ; OBJ 273 - Layer 2 mask (full) | { 0A, 05 }
|0A9723| db $2A, $16, $FA ; OBJ 22A - Lamp cones | { 0A, 05 }
|0A9726| db $FF, $FF ; Layer 2
|0A9728| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0099:
|0A972A| db $60, $20 ; DOORTYPE 20 | North 0C
|0A972C| db $71, $1C ; DOORTYPE 1C | South 0E
|0A972E| db $80, $00 ; DOORTYPE 00 | North 10
|0A9730| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00A8:
|0A9732| db $51, $08 ; Floors and Layout
|0A9734| db $FC, $61, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 06, 04 }
|0A9737| db $18, $22, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 08 } | Size: 02
|0A973A| db $FC, $63, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 06, 0C }
|0A973D| db $FC, $23, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 02, 0C }
|0A9740| db $FD, $21, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 12, 04 }
|0A9743| db $FD, $22, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 12, 08 }
|0A9746| db $58, $22, $01 ; OBJ 001 - Wall (top, north) ↔ | { 16, 08 } | Size: 02
|0A9749| db $FD, $A2, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 1A, 08 }
|0A974C| db $FE, $22, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 08 }
|0A974F| db $9A, $22, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 08 } | Size: 0A
|0A9752| db $FF, $A2, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 08 }
|0A9755| db $FE, $2C, $C1 ; OBJ 101 - Corner (top, concave) ▙ | { 22, 33 }
|0A9758| db $98, $CD, $02 ; OBJ 002 - Wall (top, south) ↔ | { 26, 33 } | Size: 01
|0A975B| db $A0, $DA, $61 ; OBJ 061 - Wall (top, west) ↕ | { 28, 36 } | Size: 02
|0A975E| db $FE, $8C, $C5 ; OBJ 105 - Corner (top, convex) ▜ | { 28, 33 }
|0A9761| db $FE, $8E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 28, 3A }
|0A9764| db $FF, $4E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 34, 3A }
|0A9767| db $D0, $DA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 34, 36 } | Size: 02
|0A976A| db $FF, $4C, $C7 ; OBJ 107 - Corner (top, convex) ▛ | { 34, 33 }
|0A976D| db $E0, $CD, $02 ; OBJ 002 - Wall (top, south) ↔ | { 38, 33 } | Size: 01
|0A9770| db $FF, $AC, $C3 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 33 }
|0A9773| db $20, $3E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 08, 0F } | Size: 02
|0A9776| db $FC, $53, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 0F }
|0A9779| db $14, $4D, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 13 } | Size: 01
|0A977C| db $FC, $55, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 17 }
|0A977F| db $24, $5D, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 09, 17 } | Size: 01
|0A9782| db $4C, $5D, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 13, 17 } | Size: 01
|0A9785| db $FD, $75, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 17, 17 }
|0A9788| db $5C, $3F, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 17, 0F } | Size: 03
|0A978B| db $50, $2D, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 14, 0B } | Size: 01
|0A978E| db $FD, $72, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 17, 0B }
|0A9791| db $36, $39, $69 ; OBJ 069 - Rail ↕ | { 0D, 0E } | Size: 09
|0A9794| db $4F, $2C, $69 ; OBJ 069 - Rail ↕ | { 13, 0B } | Size: 0C
|0A9797| db $35, $26, $F9 ; OBJ 219 - Chest | { 0D, 09 }
|0A979A| db $22, $BA, $FF ; OBJ 27A - Pile of bones | { 08, 2E }
|0A979D| db $32, $B2, $FF ; OBJ 27A - Pile of bones | { 0C, 2C }
|0A97A0| db $52, $BA, $FF ; OBJ 27A - Pile of bones | { 14, 2E }
|0A97A3| db $3A, $D2, $FF ; OBJ 27A - Pile of bones | { 0E, 34 }
|0A97A6| db $42, $DA, $FF ; OBJ 27A - Pile of bones | { 10, 36 }
|0A97A9| db $30, $10, $3A ; OBJ 03A - Wall decors (north) ↔ | { 0C, 04 } | Size: 00
|0A97AC| db $28, $91, $3A ; OBJ 03A - Wall decors (north) ↔ | { 0A, 24 } | Size: 01
|0A97AF| db $88, $76, $65 ; OBJ 065 - Wall columns (west) ↕ | { 22, 1D } | Size: 02
|0A97B2| db $E8, $77, $66 ; OBJ 066 - Wall columns (east) ↕ | { 3A, 1D } | Size: 03
|0A97B5| db $17, $9F, $FA ; OBJ 22F - Pot | { 05, 27 }
|0A97B8| db $67, $9F, $FA ; OBJ 22F - Pot | { 19, 27 }
|0A97BB| db $17, $E7, $FA ; OBJ 22F - Pot | { 05, 39 }
|0A97BE| db $67, $E7, $FA ; OBJ 22F - Pot | { 19, 39 }
|0A97C1| db $3F, $C3, $FA ; OBJ 22F - Pot | { 0F, 30 }
|0A97C4| db $FE, $52, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 25, 0B }
|0A97C7| db $A5, $2E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 29, 0B } | Size: 06
|0A97CA| db $FF, $72, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 0B }
|0A97CD| db $94, $3D, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 25, 0F } | Size: 01
|0A97D0| db $FE, $54, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 25, 13 }
|0A97D3| db $FF, $74, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 13 }
|0A97D6| db $DC, $3D, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 0F } | Size: 01
|0A97D9| db $A4, $4C, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 29, 13 } | Size: 00
|0A97DC| db $FE, $B4, $CD ; OBJ 10D - Corner (bottom, convex) ▜ | { 2B, 13 }
|0A97DF| db $FF, $14, $CF ; OBJ 10F - Corner (bottom, convex) ▛ | { 31, 13 }
|0A97E2| db $D4, $4C, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 35, 13 } | Size: 00
|0A97E5| db $AC, $80, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 2B, 20 } | Size: 00
|0A97E8| db $C4, $80, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 31, 20 } | Size: 00
|0A97EB| db $AD, $AC, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 2B, 2B } | Size: 04
|0A97EE| db $FE, $BD, $09 ; OBJ 109 - Corner (bottom, concave) ▙ | { 2B, 34 }
|0A97F1| db $BC, $D0, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2F, 34 } | Size: 00
|0A97F4| db $C5, $AC, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 31, 2B } | Size: 04
|0A97F7| db $FF, $1D, $0B ; OBJ 10B - Corner (bottom, concave) ▟ | { 31, 34 }
|0A97FA| db $97, $5F, $22 ; OBJ 022 - Rail ↔ | { 25, 17 } | Size: 0F
|0A97FD| db $D8, $5D, $22 ; OBJ 022 - Rail ↔ | { 36, 17 } | Size: 01
|0A9800| db $AA, $A8, $22 ; OBJ 022 - Rail ↔ | { 2A, 2A } | Size: 08
|0A9803| db $A9, $AA, $69 ; OBJ 069 - Rail ↕ | { 2A, 2A } | Size: 06
|0A9806| db $D5, $AA, $69 ; OBJ 069 - Rail ↕ | { 35, 2A } | Size: 06
|0A9809| db $B0, $E0, $38 ; OBJ 038 - Statues ↔ | { 2C, 38 } | Size: 00
|0A980C| db $C8, $E0, $38 ; OBJ 038 - Statues ↔ | { 32, 38 } | Size: 00
|0A980F| db $FC, $93, $F1 ; OBJ 131 - Intraroom stairs north (separate layers) | { 09, 0F }
|0A9812| db $B8, $D3, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 2E, 34 }
|0A9815| db $08, $11, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 01
|0A9818| db $59, $10, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 04 } | Size: 04
|0A981B| db $8B, $10, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 04 } | Size: 0C
|0A981E| db $CA, $10, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 04 } | Size: 08
|0A9821| db $81, $DD, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 20, 37 } | Size: 05
|0A9824| db $E1, $DD, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 38, 37 } | Size: 05
|0A9827| db $FF, $FF ; Layer 1
|0A9829| db $38, $3D, $01 ; OBJ 001 - Wall (top, north) ↔ | { 0E, 0F } | Size: 01
|0A982C| db $FD, $03, $C4 ; OBJ 104 - Corner (top, convex) ▟ | { 10, 0F }
|0A982F| db $FD, $02, $C0 ; OBJ 100 - Corner (top, concave) ▛ | { 10, 0B }
|0A9832| db $34, $5F, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0D, 17 } | Size: 03
|0A9835| db $AC, $5D, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2B, 17 } | Size: 01
|0A9838| db $AD, $60, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2B, 18 } | Size: 04
|0A983B| db $C4, $5D, $62 ; OBJ 062 - Wall (top, east) ↕ | { 31, 17 } | Size: 01
|0A983E| db $C5, $60, $62 ; OBJ 062 - Wall (top, east) ↕ | { 31, 18 } | Size: 04
|0A9841| db $AC, $89, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2B, 22 } | Size: 01
|0A9844| db $AD, $8C, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2B, 23 } | Size: 04
|0A9847| db $C4, $89, $62 ; OBJ 062 - Wall (top, east) ↕ | { 31, 22 } | Size: 01
|0A984A| db $C5, $8C, $62 ; OBJ 062 - Wall (top, east) ↕ | { 31, 23 } | Size: 04
|0A984D| db $FE, $EB, $F4 ; OBJ 134 - Block | { 2E, 2F }
|0A9850| db $6D, $35, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1B, 0D } | Size: 05
|0A9853| db $6D, $45, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1B, 11 } | Size: 05
|0A9856| db $EC, $36, $01 ; OBJ 001 - Wall (top, north) ↔ | { 3B, 0D } | Size: 02
|0A9859| db $EC, $46, $02 ; OBJ 002 - Wall (top, south) ↔ | { 3B, 11 } | Size: 02
|0A985C| db $BF, $30, $F9 ; OBJ 213 - Telepathy tile | { 2F, 0C }
|0A985F| db $FF, $FF ; Layer 2
|0A9861| db $15, $3E, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 05, 0F } | Size: 06
|0A9864| db $50, $2F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 14, 0B } | Size: 03
|0A9867| db $5C, $2F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 17, 0B } | Size: 03
|0A986A| db $97, $2E, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 25, 0B } | Size: 0E
|0A986D| db $CD, $2E, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 33, 0B } | Size: 06
|0A9870| db $AA, $7C, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2A, 1F } | Size: 08
|0A9873| db $AA, $7C, $22 ; OBJ 022 - Rail ↔ | { 2A, 1F } | Size: 08
|0A9876| db $A8, $7C, $69 ; OBJ 069 - Rail ↕ | { 2A, 1F } | Size: 00
|0A9879| db $AA, $88, $22 ; OBJ 022 - Rail ↔ | { 2A, 22 } | Size: 08
|0A987C| db $D4, $7C, $69 ; OBJ 069 - Rail ↕ | { 35, 1F } | Size: 00
|0A987F| db $AD, $AE, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2B, 2B } | Size: 06
|0A9882| db $C4, $AE, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 31, 2B } | Size: 02
|0A9885| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00A8:
|0A9887| db $82, $38 ; DOORTYPE 38 | West 10
|0A9889| db $60, $36 ; DOORTYPE 36 | North 0C
|0A988B| db $81, $1C ; DOORTYPE 1C | South 10
|0A988D| db $92, $40 ; DOORTYPE 40 | West 12
|0A988F| db $93, $40 ; DOORTYPE 40 | East 12
|0A9891| db $73, $00 ; DOORTYPE 00 | East 0E
|0A9893| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00A9:
|0A9895| db $61, $1C ; Floors and Layout
|0A9897| db $09, $34, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 02, 0D } | Size: 04
|0A989A| db $08, $3A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 0E } | Size: 02
|0A989D| db $FC, $2A, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 2A }
|0A98A0| db $18, $A9, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 2A } | Size: 01
|0A98A3| db $FC, $8A, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 08, 2A }
|0A98A6| db $FC, $8B, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 08, 2E }
|0A98A9| db $31, $BB, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0C, 2E } | Size: 07
|0A98AC| db $FD, $AB, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 1A, 2E }
|0A98AF| db $69, $C8, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1A, 32 } | Size: 04
|0A98B2| db $FD, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 1A, 3A }
|0A98B5| db $FE, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 22, 3A }
|0A98B8| db $89, $C8, $62 ; OBJ 062 - Wall (top, east) ↕ | { 22, 32 } | Size: 04
|0A98BB| db $FE, $2B, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 22, 2E }
|0A98BE| db $99, $BB, $02 ; OBJ 002 - Wall (top, south) ↔ | { 26, 2E } | Size: 07
|0A98C1| db $FF, $4B, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 34, 2E }
|0A98C4| db $E0, $A9, $02 ; OBJ 002 - Wall (top, south) ↔ | { 38, 2A } | Size: 01
|0A98C7| db $FF, $4A, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 34, 2A }
|0A98CA| db $FF, $AA, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 2A }
|0A98CD| db $D1, $10, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 34, 04 } | Size: 04
|0A98D0| db $E8, $3A, $62 ; OBJ 062 - Wall (top, east) ↕ | { 3A, 0E } | Size: 02
|0A98D3| db $14, $35, $19 ; OBJ 019 - Diagonal wall B ◤ (bottom) | { 05, 0D } | Size: 01
|0A98D6| db $15, $39, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 0E } | Size: 05
|0A98D9| db $FC, $56, $89 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 1A }
|0A98DC| db $24, $6A, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 09, 1A } | Size: 02
|0A98DF| db $FC, $F6, $8D ; OBJ 10D - Corner (bottom, convex) ▜ | { 0F, 1A }
|0A98E2| db $3C, $7B, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0F, 1E } | Size: 03
|0A98E5| db $C4, $6A, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 31, 1A } | Size: 02
|0A98E8| db $FF, $76, $8B ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 1A }
|0A98EB| db $FE, $D6, $8F ; OBJ 10F - Corner (bottom, convex) ▛ | { 2D, 1A }
|0A98EE| db $B4, $7B, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 2D, 1E } | Size: 03
|0A98F1| db $FE, $D9, $8B ; OBJ 10B - Corner (bottom, concave) ▟ | { 2D, 26 }
|0A98F4| db $D0, $1D, $1B ; OBJ 01B - Diagonal wall B ◥ (bottom) | { 34, 07 } | Size: 01
|0A98F7| db $DD, $39, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 0E } | Size: 05
|0A98FA| db $31, $1C, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0C, 07 } | Size: 04
|0A98FD| db $FD, $61, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 16, 07 }
|0A9900| db $FD, $62, $CE ; OBJ 10E - Corner (bottom, convex) ▙ | { 16, 0B }
|0A9903| db $74, $28, $69 ; OBJ 069 - Rail ↕ | { 1D, 0A } | Size: 00
|0A9906| db $88, $28, $69 ; OBJ 069 - Rail ↕ | { 22, 0A } | Size: 00
|0A9909| db $69, $2D, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 1A, 0B } | Size: 05
|0A990C| db $FE, $62, $CC ; OBJ 10C - Corner (bottom, convex) ▟ | { 26, 0B }
|0A990F| db $A9, $1C, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2A, 07 } | Size: 04
|0A9912| db $FE, $61, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 26, 07 }
|0A9915| db $FC, $F9, $89 ; OBJ 109 - Corner (bottom, concave) ▙ | { 0F, 26 }
|0A9918| db $4F, $98, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 13, 26 } | Size: 0C
|0A991B| db $68, $11, $3A ; OBJ 03A - Wall decors (north) ↔ | { 1A, 04 } | Size: 01
|0A991E| db $68, $1C, $69 ; OBJ 069 - Rail ↕ | { 1A, 07 } | Size: 00
|0A9921| db $94, $1C, $69 ; OBJ 069 - Rail ↕ | { 25, 07 } | Size: 00
|0A9924| db $FD, $E2, $F1 ; OBJ 131 - Intraroom stairs north (separate layers) | { 1E, 0B }
|0A9927| db $15, $7A, $22 ; OBJ 022 - Rail ↔ | { 05, 1E } | Size: 06
|0A992A| db $3A, $79, $69 ; OBJ 069 - Rail ↕ | { 0E, 1E } | Size: 09
|0A992D| db $3B, $A9, $5F ; OBJ 05F - Long rail ↔ | { 0E, 2A } | Size: 0D
|0A9930| db $C6, $79, $69 ; OBJ 069 - Rail ↕ | { 31, 1E } | Size: 09
|0A9933| db $C5, $7A, $22 ; OBJ 022 - Rail ↔ | { 31, 1E } | Size: 06
|0A9936| db $DB, $A3, $FA ; OBJ 22F - Pot | { 36, 28 }
|0A9939| db $CB, $7E, $FE ; OBJ 26B - Large decor | { 32, 1F }
|0A993C| db $E3, $9B, $FA ; OBJ 22F - Pot | { 38, 26 }
|0A993F| db $E0, $A0, $FD ; OBJ 250 - Pressure plate | { 38, 28 }
|0A9942| db $0C, $65, $7F ; OBJ 07F - Wall torches (west) ↕ | { 03, 19 } | Size: 01
|0A9945| db $EC, $65, $80 ; OBJ 080 - Wall torches (east) ↕ | { 3B, 19 } | Size: 01
|0A9948| db $2B, $7E, $FE ; OBJ 26B - Large decor | { 0A, 1F }
|0A994B| db $1B, $9B, $FA ; OBJ 22F - Pot | { 06, 26 }
|0A994E| db $23, $A3, $FA ; OBJ 22F - Pot | { 08, 28 }
|0A9951| db $18, $A0, $FD ; OBJ 250 - Pressure plate | { 06, 28 }
|0A9954| db $09, $11, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 02, 04 } | Size: 05
|0A9957| db $D5, $11, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 35, 04 } | Size: 05
|0A995A| db $01, $BB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 2E } | Size: 07
|0A995D| db $23, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 08, 32 } | Size: 0E
|0A9960| db $61, $CA, $60 ; OBJ 060 - Ceiling ↕ | { 18, 32 } | Size: 06
|0A9963| db $9B, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 26, 32 } | Size: 0E
|0A9966| db $D9, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 32 } | Size: 06
|0A9969| db $E1, $B8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 38, 2E } | Size: 04
|0A996C| db $FF, $FF ; Layer 1
|0A996E| db $61, $5A, $C1 ; OBJ 0C1 - Chest platform (tall) ⇲ | { 18, 16 } | Size: 06
|0A9971| db $70, $82, $21 ; OBJ 021 - Platform stairs ↔ | { 1C, 20 } | Size: 02
|0A9974| db $79, $68, $FB ; OBJ 231 - Big chest | { 1E, 1A }
|0A9977| db $04, $36, $01 ; OBJ 001 - Wall (top, north) ↔ | { 01, 0D } | Size: 02
|0A997A| db $04, $46, $02 ; OBJ 002 - Wall (top, south) ↔ | { 01, 11 } | Size: 02
|0A997D| db $EC, $36, $01 ; OBJ 001 - Wall (top, north) ↔ | { 3B, 0D } | Size: 02
|0A9980| db $EC, $46, $02 ; OBJ 002 - Wall (top, south) ↔ | { 3B, 11 } | Size: 02
|0A9983| db $23, $5F, $FA ; OBJ 22F - Pot | { 08, 17 }
|0A9986| db $23, $67, $FA ; OBJ 22F - Pot | { 08, 19 }
|0A9989| db $DB, $5F, $FA ; OBJ 22F - Pot | { 36, 17 }
|0A998C| db $DB, $67, $FA ; OBJ 22F - Pot | { 36, 19 }
|0A998F| db $5B, $43, $FC ; OBJ 24F - Warp tile (disabled) | { 16, 10 }
|0A9992| db $A3, $43, $FC ; OBJ 24F - Warp tile (disabled) | { 28, 10 }
|0A9995| db $FD, $A3, $9C ; OBJ 11C - Large brazier | { 1A, 0E }
|0A9998| db $FE, $23, $9C ; OBJ 11C - Large brazier | { 22, 0E }
|0A999B| db $FF, $FF ; Layer 2
|0A999D| db $18, $36, $AC ; OBJ 0AC - Diagonal layer 2 mask B ◢ | { 06, 0D } | Size: 02
|0A99A0| db $D0, $22, $AA ; OBJ 0AA - Diagonal layer 2 mask B ◣ | { 34, 08 } | Size: 02
|0A99A3| db $32, $1F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0C, 07 } | Size: 0B
|0A99A6| db $58, $1F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 16, 07 } | Size: 03
|0A99A9| db $17, $3B, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 05, 0E } | Size: 0F
|0A99AC| db $6B, $33, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1A, 0C } | Size: 0F
|0A99AF| db $9A, $1F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 26, 07 } | Size: 0B
|0A99B2| db $C0, $1F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 30, 07 } | Size: 03
|0A99B5| db $AF, $3B, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2B, 0E } | Size: 0F
|0A99B8| db $3F, $7A, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0F, 1E } | Size: 0E
|0A99BB| db $7F, $7A, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1F, 1E } | Size: 0E
|0A99BE| db $B4, $7A, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2D, 1E } | Size: 02
|0A99C1| db $57, $5D, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 15, 17 } | Size: 0D
|0A99C4| db $95, $5D, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 25, 17 } | Size: 05
|0A99C7| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00A9:
|0A99C9| db $12, $18 ; DOORTYPE 18 | West 02
|0A99CB| db $73, $18 ; DOORTYPE 18 | East 0E
|0A99CD| db $10, $1E ; DOORTYPE 1E | North 02
|0A99CF| db $32, $40 ; DOORTYPE 40 | West 06
|0A99D1| db $93, $40 ; DOORTYPE 40 | East 12
|0A99D3| db $71, $00 ; DOORTYPE 00 | South 0E
|0A99D5| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00AA:
|0A99D7| db $51, $0C ; Floors and Layout
|0A99D9| db $FC, $2C, $C1 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 33 }
|0A99DC| db $18, $CF, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 33 } | Size: 03
|0A99DF| db $2C, $DA, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0B, 36 } | Size: 02
|0A99E2| db $FC, $BC, $C5 ; OBJ 105 - Corner (top, convex) ▜ | { 0B, 33 }
|0A99E5| db $FC, $BE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0B, 3A }
|0A99E8| db $FD, $1E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 11, 3A }
|0A99EB| db $44, $DA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 11, 36 } | Size: 02
|0A99EE| db $50, $CF, $02 ; OBJ 002 - Wall (top, south) ↔ | { 14, 33 } | Size: 03
|0A99F1| db $FD, $1C, $C7 ; OBJ 107 - Corner (top, convex) ▛ | { 11, 33 }
|0A99F4| db $FD, $AC, $C3 ; OBJ 103 - Corner (top, concave) ▟ | { 1A, 33 }
|0A99F7| db $FC, $51, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 07 }
|0A99FA| db $25, $1E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 09, 07 } | Size: 06
|0A99FD| db $FD, $71, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 17, 07 }
|0A9A00| db $5C, $2C, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 17, 0B } | Size: 00
|0A9A03| db $15, $2C, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 0B } | Size: 04
|0A9A06| db $14, $AE, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 2B } | Size: 02
|0A9A09| db $FC, $5C, $09 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 30 }
|0A9A0C| db $25, $C1, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 09, 30 } | Size: 05
|0A9A0F| db $FE, $2A, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 28 }
|0A9A12| db $98, $A1, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 28 } | Size: 01
|0A9A15| db $FE, $8A, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 28, 28 }
|0A9A18| db $FE, $89, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 28, 24 }
|0A9A1B| db $FF, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 32, 3A }
|0A9A1E| db $FF, $2D, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 32, 36 }
|0A9A21| db $D8, $DA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 36, 36 } | Size: 02
|0A9A24| db $FF, $AD, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 36 }
|0A9A27| db $AC, $AF, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2B, 2B } | Size: 03
|0A9A2A| db $AC, $CF, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2B, 33 } | Size: 03
|0A9A2D| db $3A, $35, $22 ; OBJ 022 - Rail ↔ | { 0E, 0D } | Size: 09
|0A9A30| db $39, $35, $69 ; OBJ 069 - Rail ↕ | { 0E, 0D } | Size: 05
|0A9A33| db $0C, $65, $7F ; OBJ 07F - Wall torches (west) ↕ | { 03, 19 } | Size: 01
|0A9A36| db $6C, $4E, $80 ; OBJ 080 - Wall torches (east) ↕ | { 1B, 13 } | Size: 02
|0A9A39| db $B0, $92, $05 ; OBJ 005 - Wall columns (north) ↔ | { 2C, 24 } | Size: 02
|0A9A3C| db $15, $56, $22 ; OBJ 022 - Rail ↔ | { 05, 15 } | Size: 06
|0A9A3F| db $17, $A9, $22 ; OBJ 022 - Rail ↔ | { 05, 2A } | Size: 0D
|0A9A42| db $55, $AA, $69 ; OBJ 069 - Rail ↕ | { 15, 2A } | Size: 06
|0A9A45| db $54, $CE, $22 ; OBJ 022 - Rail ↔ | { 15, 33 } | Size: 02
|0A9A48| db $48, $46, $22 ; OBJ 022 - Rail ↔ | { 12, 11 } | Size: 02
|0A9A4B| db $48, $5A, $22 ; OBJ 022 - Rail ↔ | { 12, 16 } | Size: 02
|0A9A4E| db $48, $46, $69 ; OBJ 069 - Rail ↕ | { 12, 11 } | Size: 02
|0A9A51| db $5C, $46, $69 ; OBJ 069 - Rail ↕ | { 17, 11 } | Size: 02
|0A9A54| db $24, $66, $22 ; OBJ 022 - Rail ↔ | { 09, 19 } | Size: 02
|0A9A57| db $24, $66, $69 ; OBJ 069 - Rail ↕ | { 09, 19 } | Size: 02
|0A9A5A| db $24, $7A, $22 ; OBJ 022 - Rail ↔ | { 09, 1E } | Size: 02
|0A9A5D| db $38, $66, $69 ; OBJ 069 - Rail ↕ | { 0E, 19 } | Size: 02
|0A9A60| db $48, $66, $22 ; OBJ 022 - Rail ↔ | { 12, 19 } | Size: 02
|0A9A63| db $48, $66, $69 ; OBJ 069 - Rail ↕ | { 12, 19 } | Size: 02
|0A9A66| db $48, $7A, $22 ; OBJ 022 - Rail ↔ | { 12, 1E } | Size: 02
|0A9A69| db $5C, $66, $69 ; OBJ 069 - Rail ↕ | { 17, 19 } | Size: 02
|0A9A6C| db $24, $86, $22 ; OBJ 022 - Rail ↔ | { 09, 21 } | Size: 02
|0A9A6F| db $24, $86, $69 ; OBJ 069 - Rail ↕ | { 09, 21 } | Size: 02
|0A9A72| db $24, $9A, $22 ; OBJ 022 - Rail ↔ | { 09, 26 } | Size: 02
|0A9A75| db $38, $86, $69 ; OBJ 069 - Rail ↕ | { 0E, 21 } | Size: 02
|0A9A78| db $48, $86, $22 ; OBJ 022 - Rail ↔ | { 12, 21 } | Size: 02
|0A9A7B| db $48, $86, $69 ; OBJ 069 - Rail ↕ | { 12, 21 } | Size: 02
|0A9A7E| db $48, $9A, $22 ; OBJ 022 - Rail ↔ | { 12, 26 } | Size: 02
|0A9A81| db $5C, $86, $69 ; OBJ 069 - Rail ↕ | { 17, 21 } | Size: 02
|0A9A84| db $38, $C3, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 0E, 30 }
|0A9A87| db $B0, $CF, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 2C, 33 }
|0A9A8A| db $CC, $B4, $8B ; OBJ 08B - Jump ledge (west) ↕ | { 33, 2D } | Size: 00
|0A9A8D| db $D9, $BA, $F9 ; OBJ 219 - Chest | { 36, 2E }
|0A9A90| db $CC, $AC, $69 ; OBJ 069 - Rail ↕ | { 33, 2B } | Size: 00
|0A9A93| db $CC, $CC, $69 ; OBJ 069 - Rail ↕ | { 33, 33 } | Size: 00
|0A9A96| db $A8, $B4, $8C ; OBJ 08C - Jump ledge (east) ↕ | { 2A, 2D } | Size: 00
|0A9A99| db $A8, $AC, $69 ; OBJ 069 - Rail ↕ | { 2A, 2B } | Size: 00
|0A9A9C| db $A8, $CC, $69 ; OBJ 069 - Rail ↕ | { 2A, 33 } | Size: 00
|0A9A9F| db $AB, $2F, $FA ; OBJ 22F - Pot | { 2A, 0B }
|0A9AA2| db $D3, $2F, $FA ; OBJ 22F - Pot | { 34, 0B }
|0A9AA5| db $AB, $57, $FA ; OBJ 22F - Pot | { 2A, 15 }
|0A9AA8| db $D3, $57, $FA ; OBJ 22F - Pot | { 34, 15 }
|0A9AAB| db $BF, $43, $FA ; OBJ 22F - Pot | { 2F, 10 }
|0A9AAE| db $09, $DD, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 37 } | Size: 05
|0A9AB1| db $25, $DC, $60 ; OBJ 060 - Ceiling ↕ | { 09, 37 } | Size: 04
|0A9AB4| db $55, $DD, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 15, 37 } | Size: 05
|0A9AB7| db $71, $DC, $60 ; OBJ 060 - Ceiling ↕ | { 1C, 37 } | Size: 04
|0A9ABA| db $81, $90, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 20, 24 } | Size: 04
|0A9ABD| db $D9, $E8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 3A } | Size: 04
|0A9AC0| db $FF, $FF ; Layer 1
|0A9AC2| db $16, $57, $61 ; OBJ 061 - Wall (top, west) ↕ | { 05, 15 } | Size: 0B
|0A9AC5| db $5F, $37, $62 ; OBJ 062 - Wall (top, east) ↕ | { 17, 0D } | Size: 0F
|0A9AC8| db $5C, $AF, $62 ; OBJ 062 - Wall (top, east) ↕ | { 17, 2B } | Size: 03
|0A9ACB| db $FD, $7C, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 17, 30 }
|0A9ACE| db $54, $C1, $02 ; OBJ 002 - Wall (top, south) ↔ | { 15, 30 } | Size: 01
|0A9AD1| db $FE, $5A, $C0 ; OBJ 100 - Corner (top, concave) ▛ | { 25, 2B }
|0A9AD4| db $94, $BE, $61 ; OBJ 061 - Wall (top, west) ↕ | { 25, 2F } | Size: 02
|0A9AD7| db $FE, $5C, $C1 ; OBJ 101 - Corner (top, concave) ▙ | { 25, 33 }
|0A9ADA| db $04, $36, $01 ; OBJ 001 - Wall (top, north) ↔ | { 01, 0D } | Size: 02
|0A9ADD| db $04, $46, $02 ; OBJ 002 - Wall (top, south) ↔ | { 01, 11 } | Size: 02
|0A9AE0| db $A4, $AD, $01 ; OBJ 001 - Wall (top, north) ↔ | { 29, 2B } | Size: 01
|0A9AE3| db $A4, $CD, $02 ; OBJ 002 - Wall (top, south) ↔ | { 29, 33 } | Size: 01
|0A9AE6| db $CC, $AE, $01 ; OBJ 001 - Wall (top, north) ↔ | { 33, 2B } | Size: 02
|0A9AE9| db $FF, $7A, $C2 ; OBJ 102 - Corner (top, concave) ▜ | { 37, 2B }
|0A9AEC| db $DC, $BE, $62 ; OBJ 062 - Wall (top, east) ↕ | { 37, 2F } | Size: 02
|0A9AEF| db $FF, $7C, $C3 ; OBJ 103 - Corner (top, concave) ▟ | { 37, 33 }
|0A9AF2| db $CC, $CE, $02 ; OBJ 002 - Wall (top, south) ↔ | { 33, 33 } | Size: 02
|0A9AF5| db $DB, $BB, $FA ; OBJ 22F - Pot | { 36, 2E }
|0A9AF8| db $DB, $C3, $FA ; OBJ 22F - Pot | { 36, 30 }
|0A9AFB| db $DB, $CB, $FA ; OBJ 22F - Pot | { 36, 32 }
|0A9AFE| db $FF, $FF ; Layer 2
|0A9B00| db $15, $1E, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 05, 07 } | Size: 06
|0A9B03| db $15, $44, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 05, 11 } | Size: 04
|0A9B06| db $28, $35, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0A, 0D } | Size: 01
|0A9B09| db $2F, $1C, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0B, 07 } | Size: 0C
|0A9B0C| db $2F, $24, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0B, 09 } | Size: 0C
|0A9B0F| db $4C, $48, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 13, 12 } | Size: 00
|0A9B12| db $4C, $68, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 13, 1A } | Size: 00
|0A9B15| db $28, $68, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0A, 1A } | Size: 00
|0A9B18| db $28, $88, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0A, 22 } | Size: 00
|0A9B1B| db $4C, $88, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 13, 22 } | Size: 00
|0A9B1E| db $17, $AD, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 05, 2B } | Size: 0D
|0A9B21| db $AD, $B1, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2B, 2C } | Size: 05
|0A9B24| db $AD, $C8, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2B, 32 } | Size: 04
|0A9B27| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00AA:
|0A9B29| db $80, $38 ; DOORTYPE 38 | North 10
|0A9B2B| db $32, $40 ; DOORTYPE 40 | West 06
|0A9B2D| db $62, $00 ; DOORTYPE 00 | West 0C
|0A9B2F| db $82, $00 ; DOORTYPE 00 | West 10
|0A9B31| db $12, $00 ; DOORTYPE 00 | West 02
|0A9B33| db $61, $00 ; DOORTYPE 00 | South 0C
|0A9B35| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00B8:
|0A9B37| db $E1, $04 ; Floors and Layout
|0A9B39| db $FE, $41, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 24, 04 }
|0A9B3C| db $93, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 24, 08 } | Size: 0F
|0A9B3F| db $92, $9A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 24, 26 } | Size: 0A
|0A9B42| db $FE, $4E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 24, 3A }
|0A9B45| db $91, $36, $65 ; OBJ 065 - Wall columns (west) ↕ | { 24, 0D } | Size: 06
|0A9B48| db $E9, $36, $66 ; OBJ 066 - Wall columns (east) ↕ | { 3A, 0D } | Size: 06
|0A9B4B| db $A8, $31, $C1 ; OBJ 0C1 - Chest platform (tall) ⇲ | { 2A, 0C } | Size: 01
|0A9B4E| db $B4, $52, $21 ; OBJ 021 - Platform stairs ↔ | { 2D, 14 } | Size: 02
|0A9B51| db $A9, $6A, $88 ; OBJ 088 - Thick rail ↕ | { 2A, 1A } | Size: 06
|0A9B54| db $D9, $6A, $88 ; OBJ 088 - Thick rail ↕ | { 36, 1A } | Size: 06
|0A9B57| db $B1, $A4, $5D ; OBJ 05D - Thick rail ↔ | { 2C, 29 } | Size: 04
|0A9B5A| db $B0, $C0, $88 ; OBJ 088 - Thick rail ↕ | { 2C, 30 } | Size: 00
|0A9B5D| db $D0, $C0, $88 ; OBJ 088 - Thick rail ↕ | { 34, 30 } | Size: 00
|0A9B60| db $B3, $83, $FA ; OBJ 22F - Pot | { 2C, 20 }
|0A9B63| db $D3, $83, $FA ; OBJ 22F - Pot | { 34, 20 }
|0A9B66| db $C3, $6B, $FA ; OBJ 22F - Pot | { 30, 1A }
|0A9B69| db $C1, $42, $F9 ; OBJ 219 - Chest | { 30, 10 }
|0A9B6C| db $88, $00, $60 ; OBJ 060 - Ceiling ↕ | { 22, 00 } | Size: 00
|0A9B6F| db $FF, $FF ; Layer 1
|0A9B71| db $FF, $FF ; Layer 2
|0A9B73| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00B8:
|0A9B75| db $20, $1E ; DOORTYPE 1E | North 04
|0A9B77| db $63, $00 ; DOORTYPE 00 | East 0C
|0A9B79| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00B9:
|0A9B7B| db $51, $1C ; Floors and Layout
|0A9B7D| db $FD, $51, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 15, 04 }
|0A9B80| db $54, $21, $61 ; OBJ 061 - Wall (top, west) ↕ | { 15, 08 } | Size: 01
|0A9B83| db $1A, $24, $01 ; OBJ 001 - Wall (top, north) ↔ | { 06, 09 } | Size: 08
|0A9B86| db $FD, $52, $44 ; OBJ 104 - Corner (top, convex) ▟ | { 15, 09 }
|0A9B89| db $FC, $22, $40 ; OBJ 100 - Corner (top, concave) ▛ | { 02, 09 }
|0A9B8C| db $FC, $2A, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 2A }
|0A9B8F| db $19, $AA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 2A } | Size: 06
|0A9B92| db $FD, $1A, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 11, 2A }
|0A9B95| db $45, $BA, $61 ; OBJ 061 - Wall (top, west) ↕ | { 11, 2E } | Size: 06
|0A9B98| db $FD, $1E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 11, 3A }
|0A9B9B| db $FE, $D1, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 2D, 04 }
|0A9B9E| db $B4, $21, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2D, 08 } | Size: 01
|0A9BA1| db $C1, $25, $01 ; OBJ 001 - Wall (top, north) ↔ | { 30, 09 } | Size: 05
|0A9BA4| db $FE, $D2, $46 ; OBJ 106 - Corner (top, convex) ▙ | { 2D, 09 }
|0A9BA7| db $FF, $A2, $42 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 09 }
|0A9BAA| db $FF, $A6, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 1A }
|0A9BAD| db $B1, $6B, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2C, 1A } | Size: 07
|0A9BB0| db $FE, $96, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 29, 1A }
|0A9BB3| db $A4, $79, $62 ; OBJ 062 - Wall (top, east) ↕ | { 29, 1E } | Size: 01
|0A9BB6| db $B1, $83, $01 ; OBJ 001 - Wall (top, north) ↔ | { 2C, 20 } | Size: 07
|0A9BB9| db $FE, $98, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 29, 20 }
|0A9BBC| db $FF, $A8, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 20 }
|0A9BBF| db $FF, $AA, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 2A }
|0A9BC2| db $D0, $AB, $02 ; OBJ 002 - Wall (top, south) ↔ | { 34, 2A } | Size: 03
|0A9BC5| db $FF, $1A, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 31, 2A }
|0A9BC8| db $C5, $BA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 31, 2E } | Size: 06
|0A9BCB| db $FF, $1E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 31, 3A }
|0A9BCE| db $FD, $06, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 10, 1A }
|0A9BD1| db $50, $6B, $02 ; OBJ 002 - Wall (top, south) ↔ | { 14, 1A } | Size: 03
|0A9BD4| db $FD, $96, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 19, 1A }
|0A9BD7| db $40, $7B, $62 ; OBJ 062 - Wall (top, east) ↕ | { 10, 1E } | Size: 03
|0A9BDA| db $FD, $09, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 10, 24 }
|0A9BDD| db $50, $93, $01 ; OBJ 001 - Wall (top, north) ↔ | { 14, 24 } | Size: 03
|0A9BE0| db $FD, $99, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 19, 24 }
|0A9BE3| db $64, $7B, $61 ; OBJ 061 - Wall (top, west) ↕ | { 19, 1E } | Size: 03
|0A9BE6| db $27, $33, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 09, 0C } | Size: 0F
|0A9BE9| db $A5, $30, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 29, 0C } | Size: 04
|0A9BEC| db $FF, $33, $0A ; OBJ 10A - Corner (bottom, concave) ▜ | { 33, 0C }
|0A9BEF| db $CC, $41, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 33, 10 } | Size: 01
|0A9BF2| db $A9, $4C, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2A, 13 } | Size: 04
|0A9BF5| db $FF, $34, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 33, 13 }
|0A9BF8| db $FE, $64, $CF ; OBJ 10F - Corner (bottom, convex) ▛ | { 26, 13 }
|0A9BFB| db $99, $6D, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 26, 1B } | Size: 05
|0A9BFE| db $FE, $6A, $CE ; OBJ 10E - Corner (bottom, convex) ▙ | { 26, 2B }
|0A9C01| db $A8, $AD, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2A, 2B } | Size: 01
|0A9C04| db $FE, $EA, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 2E, 2B }
|0A9C07| db $B8, $BD, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 2E, 2F } | Size: 01
|0A9C0A| db $FE, $EC, $8B ; OBJ 10B - Corner (bottom, concave) ▟ | { 2E, 32 }
|0A9C0D| db $62, $CA, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 18, 32 } | Size: 0A
|0A9C10| db $50, $BD, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 14, 2F } | Size: 01
|0A9C13| db $FD, $4C, $89 ; OBJ 109 - Corner (bottom, concave) ▙ | { 14, 32 }
|0A9C16| db $FD, $4A, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 14, 2B }
|0A9C19| db $60, $AD, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 18, 2B } | Size: 01
|0A9C1C| db $FD, $CA, $CC ; OBJ 10C - Corner (bottom, convex) ▟ | { 1C, 2B }
|0A9C1F| db $71, $6D, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 1C, 1B } | Size: 05
|0A9C22| db $FD, $C4, $CD ; OBJ 10D - Corner (bottom, convex) ▜ | { 1C, 13 }
|0A9C25| db $41, $4D, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 10, 13 } | Size: 05
|0A9C28| db $FC, $D4, $CF ; OBJ 10F - Corner (bottom, convex) ▛ | { 0D, 13 }
|0A9C2B| db $34, $6F, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 0D, 1B } | Size: 03
|0A9C2E| db $FC, $D8, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 0D, 23 }
|0A9C31| db $24, $8D, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 09, 23 } | Size: 01
|0A9C34| db $FC, $58, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 23 }
|0A9C37| db $14, $6F, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 1B } | Size: 03
|0A9C3A| db $80, $2E, $22 ; OBJ 022 - Rail ↔ | { 20, 0B } | Size: 02
|0A9C3D| db $22, $30, $69 ; OBJ 069 - Rail ↕ | { 08, 0C } | Size: 08
|0A9C40| db $23, $5F, $5F ; OBJ 05F - Long rail ↔ | { 08, 17 } | Size: 0F
|0A9C43| db $B2, $5C, $22 ; OBJ 022 - Rail ↔ | { 2C, 17 } | Size: 08
|0A9C46| db $DE, $30, $69 ; OBJ 069 - Rail ↕ | { 37, 0C } | Size: 08
|0A9C49| db $72, $6A, $22 ; OBJ 022 - Rail ↔ | { 1C, 1A } | Size: 0A
|0A9C4C| db $16, $68, $22 ; OBJ 022 - Rail ↔ | { 05, 1A } | Size: 08
|0A9C4F| db $14, $9C, $22 ; OBJ 022 - Rail ↔ | { 05, 27 } | Size: 00
|0A9C52| db $34, $9C, $22 ; OBJ 022 - Rail ↔ | { 0D, 27 } | Size: 00
|0A9C55| db $50, $A8, $22 ; OBJ 022 - Rail ↔ | { 14, 2A } | Size: 00
|0A9C58| db $72, $9F, $22 ; OBJ 022 - Rail ↔ | { 1C, 27 } | Size: 0B
|0A9C5B| db $A8, $8D, $69 ; OBJ 069 - Rail ↕ | { 2A, 23 } | Size: 01
|0A9C5E| db $72, $AA, $22 ; OBJ 022 - Rail ↔ | { 1C, 2A } | Size: 0A
|0A9C61| db $B8, $A8, $22 ; OBJ 022 - Rail ↔ | { 2E, 2A } | Size: 00
|0A9C64| db $80, $DA, $22 ; OBJ 022 - Rail ↔ | { 20, 36 } | Size: 02
|0A9C67| db $53, $DA, $FE ; OBJ 26B - Large decor | { 14, 36 }
|0A9C6A| db $BB, $DA, $FE ; OBJ 26B - Large decor | { 2E, 36 }
|0A9C6D| db $80, $31, $51 ; OBJ 051 - Cannon hole (bottom, north) ↔ | { 20, 0C } | Size: 01
|0A9C70| db $80, $CD, $52 ; OBJ 052 - Cannon hole (bottom, south) ↔ | { 20, 33 } | Size: 01
|0A9C73| db $FD, $83, $31 ; OBJ 131 - Intraroom stairs north (separate layers) | { 18, 0C }
|0A9C76| db $FE, $A3, $31 ; OBJ 131 - Intraroom stairs north (separate layers) | { 2A, 0C }
|0A9C79| db $24, $8F, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 09, 23 }
|0A9C7C| db $60, $CB, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 18, 32 }
|0A9C7F| db $A8, $CB, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 2A, 32 }
|0A9C82| db $BB, $93, $FA ; OBJ 22F - Pot | { 2E, 24 }
|0A9C85| db $C3, $93, $FA ; OBJ 22F - Pot | { 30, 24 }
|0A9C88| db $D3, $93, $FA ; OBJ 22F - Pot | { 34, 24 }
|0A9C8B| db $DB, $93, $FA ; OBJ 22F - Pot | { 36, 24 }
|0A9C8E| db $C9, $92, $F9 ; OBJ 219 - Chest | { 32, 24 }
|0A9C91| db $0B, $05, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 01 } | Size: 0D
|0A9C94| db $44, $05, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 11, 01 } | Size: 01
|0A9C97| db $C6, $05, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 31, 01 } | Size: 09
|0A9C9A| db $F0, $0F, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 03 } | Size: 03
|0A9C9D| db $B6, $79, $00 ; OBJ 000 - Ceiling ↔ | { 2D, 1E } | Size: 09
|0A9CA0| db $50, $78, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 14, 1E } | Size: 00
|0A9CA3| db $5C, $7B, $60 ; OBJ 060 - Ceiling ↕ | { 17, 1E } | Size: 03
|0A9CA6| db $50, $8A, $00 ; OBJ 000 - Ceiling ↔ | { 14, 22 } | Size: 02
|0A9CA9| db $07, $BB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 01, 2E } | Size: 0F
|0A9CAC| db $D5, $BB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 35, 2E } | Size: 07
|0A9CAF| db $F2, $B8, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 2E } | Size: 08
|0A9CB2| db $FF, $FF ; Layer 1
|0A9CB4| db $15, $3E, $61 ; OBJ 061 - Wall (top, west) ↕ | { 05, 0F } | Size: 06
|0A9CB7| db $FC, $53, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 05, 0C }
|0A9CBA| db $34, $5E, $62 ; OBJ 062 - Wall (top, east) ↕ | { 0D, 17 } | Size: 02
|0A9CBD| db $70, $5E, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1C, 17 } | Size: 02
|0A9CC0| db $70, $9E, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1C, 27 } | Size: 02
|0A9CC3| db $98, $9E, $62 ; OBJ 062 - Wall (top, east) ↕ | { 26, 27 } | Size: 02
|0A9CC6| db $98, $5E, $62 ; OBJ 062 - Wall (top, east) ↕ | { 26, 17 } | Size: 02
|0A9CC9| db $80, $31, $51 ; OBJ 051 - Cannon hole (bottom, north) ↔ | { 20, 0C } | Size: 01
|0A9CCC| db $80, $CD, $52 ; OBJ 052 - Cannon hole (bottom, south) ↔ | { 20, 33 } | Size: 01
|0A9CCF| db $7C, $52, $88 ; OBJ 088 - Thick rail ↕ | { 1F, 14 } | Size: 02
|0A9CD2| db $7C, $78, $88 ; OBJ 088 - Thick rail ↕ | { 1F, 1E } | Size: 00
|0A9CD5| db $95, $52, $88 ; OBJ 088 - Thick rail ↕ | { 25, 14 } | Size: 06
|0A9CD8| db $94, $8F, $88 ; OBJ 088 - Thick rail ↕ | { 25, 23 } | Size: 03
|0A9CDB| db $7C, $9D, $88 ; OBJ 088 - Thick rail ↕ | { 1F, 27 } | Size: 01
|0A9CDE| db $FF, $FF ; Layer 2
|0A9CE0| db $27, $35, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 09, 0D } | Size: 0D
|0A9CE3| db $27, $4C, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 09, 13 } | Size: 0C
|0A9CE6| db $67, $35, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 19, 0D } | Size: 0D
|0A9CE9| db $67, $4C, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 19, 13 } | Size: 0C
|0A9CEC| db $9F, $35, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 27, 0D } | Size: 0D
|0A9CEF| db $9F, $4C, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 27, 13 } | Size: 0C
|0A9CF2| db $16, $6E, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 05, 1B } | Size: 0A
|0A9CF5| db $76, $6E, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1D, 1B } | Size: 0A
|0A9CF8| db $53, $B1, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 14, 2C } | Size: 0D
|0A9CFB| db $53, $C4, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 14, 31 } | Size: 0C
|0A9CFE| db $8B, $B1, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 22, 2C } | Size: 0D
|0A9D01| db $8B, $C4, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 22, 31 } | Size: 0C
|0A9D04| db $76, $AC, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1D, 2B } | Size: 08
|0A9D07| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00B9:
|0A9D09| db $63, $1C ; DOORTYPE 1C | East 0C
|0A9D0B| db $10, $00 ; DOORTYPE 00 | North 02
|0A9D0D| db $71, $00 ; DOORTYPE 00 | South 0E
|0A9D0F| db $02, $00 ; DOORTYPE 00 | West 00
|0A9D11| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00BA:
|0A9D13| db $E1, $00 ; Floors and Layout
|0A9D15| db $FC, $82, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 08, 0A }
|0A9D18| db $31, $28, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0C, 0A } | Size: 04
|0A9D1B| db $FD, $42, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 14, 0A }
|0A9D1E| db $20, $3B, $62 ; OBJ 062 - Wall (top, east) ↕ | { 08, 0E } | Size: 03
|0A9D21| db $FC, $85, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 08, 14 }
|0A9D24| db $31, $50, $01 ; OBJ 001 - Wall (top, north) ↔ | { 0C, 14 } | Size: 04
|0A9D27| db $FD, $45, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 14, 14 }
|0A9D2A| db $50, $3B, $61 ; OBJ 061 - Wall (top, west) ↕ | { 14, 0E } | Size: 03
|0A9D2D| db $60, $50, $FD ; OBJ 250 - Pressure plate | { 18, 14 }
|0A9D30| db $9B, $33, $FA ; OBJ 22F - Pot | { 26, 0C }
|0A9D33| db $9B, $53, $FA ; OBJ 22F - Pot | { 26, 14 }
|0A9D36| db $B3, $43, $FA ; OBJ 22F - Pot | { 2C, 10 }
|0A9D39| db $BF, $23, $FA ; OBJ 22F - Pot | { 2F, 08 }
|0A9D3C| db $BF, $63, $FA ; OBJ 22F - Pot | { 2F, 18 }
|0A9D3F| db $CB, $43, $FA ; OBJ 22F - Pot | { 32, 10 }
|0A9D42| db $E3, $33, $FA ; OBJ 22F - Pot | { 38, 0C }
|0A9D45| db $E3, $53, $FA ; OBJ 22F - Pot | { 38, 14 }
|0A9D48| db $31, $38, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 0C, 0E } | Size: 04
|0A9D4B| db $31, $48, $00 ; OBJ 000 - Ceiling ↔ | { 0C, 12 } | Size: 04
|0A9D4E| db $FF, $FF ; Layer 1
|0A9D50| db $2A, $16, $FA ; OBJ 22A - Lamp cones | { 0A, 05 }
|0A9D53| db $FF, $FF ; Layer 2
|0A9D55| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00BA:
|0A9D57| db $02, $1C ; DOORTYPE 1C | West 00
|0A9D59| db $00, $18 ; DOORTYPE 18 | North 00
|0A9D5B| db $62, $38 ; DOORTYPE 38 | West 0C
|0A9D5D| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00C9:
|0A9D5F| db $E1, $10 ; Floors and Layout
|0A9D61| db $FC, $A9, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 0A, 24 }
|0A9D64| db $29, $A3, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0A, 28 } | Size: 07
|0A9D67| db $FC, $AD, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0A, 36 }
|0A9D6A| db $38, $DB, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0E, 36 } | Size: 03
|0A9D6D| db $FD, $3D, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 13, 36 }
|0A9D70| db $FD, $3E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 13, 3A }
|0A9D73| db $FD, $29, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 12, 24 }
|0A9D76| db $48, $A2, $62 ; OBJ 062 - Wall (top, east) ↕ | { 12, 28 } | Size: 02
|0A9D79| db $FD, $2B, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 12, 2C }
|0A9D7C| db $58, $B2, $01 ; OBJ 001 - Wall (top, north) ↔ | { 16, 2C } | Size: 02
|0A9D7F| db $FD, $AB, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 1A, 2C }
|0A9D82| db $68, $A2, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1A, 28 } | Size: 02
|0A9D85| db $FD, $A9, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 1A, 24 }
|0A9D88| db $FE, $29, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 22, 24 }
|0A9D8B| db $88, $A2, $62 ; OBJ 062 - Wall (top, east) ↕ | { 22, 28 } | Size: 02
|0A9D8E| db $FE, $2B, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 22, 2C }
|0A9D91| db $98, $B2, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 2C } | Size: 02
|0A9D94| db $FE, $AB, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 2A, 2C }
|0A9D97| db $A8, $A2, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 28 } | Size: 02
|0A9D9A| db $FE, $A9, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2A, 24 }
|0A9D9D| db $FF, $29, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 32, 24 }
|0A9DA0| db $C9, $A3, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 28 } | Size: 07
|0A9DA3| db $FF, $2D, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 32, 36 }
|0A9DA6| db $B0, $DB, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2C, 36 } | Size: 03
|0A9DA9| db $FE, $9D, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 29, 36 }
|0A9DAC| db $FE, $9E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 29, 3A }
|0A9DAF| db $FC, $51, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 07 }
|0A9DB2| db $26, $1C, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 09, 07 } | Size: 08
|0A9DB5| db $15, $2D, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 0B } | Size: 05
|0A9DB8| db $34, $5A, $08 ; OBJ 008 - Deep wall (south) ↔ | { 0D, 16 } | Size: 02
|0A9DBB| db $60, $15, $55 ; OBJ 055 - Wall torches (north) ↔ | { 18, 05 } | Size: 01
|0A9DBE| db $6F, $1E, $69 ; OBJ 069 - Rail ↕ | { 1B, 07 } | Size: 0E
|0A9DC1| db $6C, $59, $69 ; OBJ 069 - Rail ↕ | { 1B, 16 } | Size: 01
|0A9DC4| db $93, $1E, $69 ; OBJ 069 - Rail ↕ | { 24, 07 } | Size: 0E
|0A9DC7| db $90, $59, $69 ; OBJ 069 - Rail ↕ | { 24, 16 } | Size: 01
|0A9DCA| db $96, $1C, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 25, 07 } | Size: 08
|0A9DCD| db $FF, $71, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 07 }
|0A9DD0| db $DD, $2D, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 0B } | Size: 05
|0A9DD3| db $FF, $75, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 17 }
|0A9DD6| db $96, $5C, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 25, 17 } | Size: 08
|0A9DD9| db $26, $5C, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 09, 17 } | Size: 08
|0A9DDC| db $FC, $55, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 17 }
|0A9DDF| db $2B, $2A, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 0A, 0A } | Size: 0E
|0A9DE2| db $4D, $2E, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 13, 0B } | Size: 06
|0A9DE5| db $97, $2A, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 25, 0A } | Size: 0E
|0A9DE8| db $C8, $2A, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 32, 0A } | Size: 02
|0A9DEB| db $26, $28, $07 ; OBJ 007 - Deep wall (north) ↔ | { 09, 0A } | Size: 08
|0A9DEE| db $FC, $82, $98 ; OBJ 118 - Deep corner (concave) ▛ | { 08, 0A }
|0A9DF1| db $21, $30, $67 ; OBJ 067 - Deep wall (west) ↕ | { 08, 0C } | Size: 04
|0A9DF4| db $26, $58, $08 ; OBJ 008 - Deep wall (south) ↔ | { 09, 16 } | Size: 08
|0A9DF7| db $FC, $85, $99 ; OBJ 119 - Deep corner (concave) ▙ | { 08, 16 }
|0A9DFA| db $96, $28, $07 ; OBJ 007 - Deep wall (north) ↔ | { 25, 0A } | Size: 08
|0A9DFD| db $FF, $62, $9A ; OBJ 11A - Deep corner (concave) ▜ | { 36, 0A }
|0A9E00| db $D9, $30, $68 ; OBJ 068 - Deep wall (east) ↕ | { 36, 0C } | Size: 04
|0A9E03| db $96, $58, $08 ; OBJ 008 - Deep wall (south) ↔ | { 25, 16 } | Size: 08
|0A9E06| db $FF, $65, $9B ; OBJ 11B - Deep corner (concave) ▟ | { 36, 16 }
|0A9E09| db $38, $58, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 0E, 16 } | Size: 00
|0A9E0C| db $38, $6A, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0E, 1A } | Size: 02
|0A9E0F| db $B8, $6A, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2E, 1A } | Size: 02
|0A9E12| db $34, $57, $29 ; OBJ 029 - Pit edge ━━━ (south) ↔ | { 0D, 15 } | Size: 03
|0A9E15| db $34, $56, $69 ; OBJ 069 - Rail ↕ | { 0D, 15 } | Size: 02
|0A9E18| db $48, $56, $69 ; OBJ 069 - Rail ↕ | { 12, 15 } | Size: 02
|0A9E1B| db $B4, $57, $29 ; OBJ 029 - Pit edge ━━━ (south) ↔ | { 2D, 15 } | Size: 03
|0A9E1E| db $B4, $56, $69 ; OBJ 069 - Rail ↕ | { 2D, 15 } | Size: 02
|0A9E21| db $C8, $56, $69 ; OBJ 069 - Rail ↕ | { 32, 15 } | Size: 02
|0A9E24| db $B8, $58, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 2E, 16 } | Size: 00
|0A9E27| db $78, $48, $FD ; OBJ 250 - Pressure plate | { 1E, 12 }
|0A9E2A| db $5B, $BE, $FE ; OBJ 26B - Large decor | { 16, 2F }
|0A9E2D| db $9B, $BE, $FE ; OBJ 26B - Large decor | { 26, 2F }
|0A9E30| db $3F, $B3, $FA ; OBJ 22F - Pot | { 0F, 2C }
|0A9E33| db $7B, $B3, $FA ; OBJ 22F - Pot | { 1E, 2C }
|0A9E36| db $BF, $B3, $FA ; OBJ 22F - Pot | { 2F, 2C }
|0A9E39| db $FC, $39, $72 ; OBJ 132 - Intraroom stairs north (merged layers) | { 03, 25 }
|0A9E3C| db $09, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 24 } | Size: 07
|0A9E3F| db $09, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 34 } | Size: 06
|0A9E42| db $1E, $E8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 07, 3A } | Size: 08
|0A9E45| db $B6, $E8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2D, 3A } | Size: 08
|0A9E48| db $D9, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 24 } | Size: 07
|0A9E4B| db $D9, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 34 } | Size: 06
|0A9E4E| db $58, $91, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 24 } | Size: 01
|0A9E51| db $98, $91, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 26, 24 } | Size: 01
|0A9E54| db $FF, $FF ; Layer 1
|0A9E56| db $FF, $FF ; Layer 2
|0A9E58| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00C9:
|0A9E5A| db $70, $18 ; DOORTYPE 18 | North 0E
|0A9E5C| db $10, $18 ; DOORTYPE 18 | North 02
|0A9E5E| db $60, $00 ; DOORTYPE 00 | North 0C
|0A9E60| db $80, $00 ; DOORTYPE 00 | North 10
|0A9E62| db $71, $0A ; DOORTYPE 0A | South 0E
|0A9E64| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0089:
|0A9E66| db $E4, $1C ; Floors and Layout
|0A9E68| db $57, $37, $22 ; OBJ 022 - Rail ↔ | { 15, 0D } | Size: 0F
|0A9E6B| db $98, $35, $22 ; OBJ 022 - Rail ↔ | { 26, 0D } | Size: 01
|0A9E6E| db $66, $6E, $22 ; OBJ 022 - Rail ↔ | { 19, 1B } | Size: 0A
|0A9E71| db $98, $49, $22 ; OBJ 022 - Rail ↔ | { 26, 12 } | Size: 01
|0A9E74| db $5A, $42, $FC ; OBJ 24A - Warp tile | { 16, 10 }
|0A9E77| db $54, $49, $22 ; OBJ 022 - Rail ↔ | { 15, 12 } | Size: 01
|0A9E7A| db $65, $4A, $69 ; OBJ 069 - Rail ↕ | { 19, 12 } | Size: 06
|0A9E7D| db $99, $4A, $69 ; OBJ 069 - Rail ↕ | { 26, 12 } | Size: 06
|0A9E80| db $A2, $42, $FC ; OBJ 24A - Warp tile | { 28, 10 }
|0A9E83| db $54, $36, $69 ; OBJ 069 - Rail ↕ | { 15, 0D } | Size: 02
|0A9E86| db $A8, $36, $69 ; OBJ 069 - Rail ↕ | { 2A, 0D } | Size: 02
|0A9E89| db $54, $4D, $07 ; OBJ 007 - Deep wall (north) ↔ | { 15, 13 } | Size: 01
|0A9E8C| db $9C, $4D, $07 ; OBJ 007 - Deep wall (north) ↔ | { 27, 13 } | Size: 01
|0A9E8F| db $65, $72, $07 ; OBJ 007 - Deep wall (north) ↔ | { 19, 1C } | Size: 06
|0A9E92| db $03, $7B, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 00, 1E } | Size: 0F
|0A9E95| db $43, $7B, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 10, 1E } | Size: 0F
|0A9E98| db $83, $7B, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 20, 1E } | Size: 0F
|0A9E9B| db $C3, $7B, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 30, 1E } | Size: 0F
|0A9E9E| db $03, $03, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 00, 00 } | Size: 0F
|0A9EA1| db $35, $03, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 0D, 00 } | Size: 07
|0A9EA4| db $57, $02, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 15, 00 } | Size: 0E
|0A9EA7| db $57, $24, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 15, 09 } | Size: 0C
|0A9EAA| db $97, $02, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 25, 00 } | Size: 0E
|0A9EAD| db $97, $24, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 25, 09 } | Size: 0C
|0A9EB0| db $D2, $03, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 34, 00 } | Size: 0B
|0A9EB3| db $AF, $37, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 2B, 0D } | Size: 0F
|0A9EB6| db $9F, $56, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 27, 15 } | Size: 0E
|0A9EB9| db $D2, $43, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 34, 10 } | Size: 0B
|0A9EBC| db $03, $43, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 00, 10 } | Size: 0F
|0A9EBF| db $35, $43, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 0D, 10 } | Size: 07
|0A9EC2| db $54, $56, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 15, 15 } | Size: 02
|0A9EC5| db $FF, $FF ; Layer 1
|0A9EC7| db $FF, $FF ; Layer 2
|0A9EC9| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0089:
|0A9ECB| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0072:
|0A9ECD| db $51, $10 ; Floors and Layout
|0A9ECF| db $FD, $61, $C0 ; OBJ 100 - Corner (top, concave) ▛ | { 16, 07 }
|0A9ED2| db $69, $1E, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1A, 07 } | Size: 06
|0A9ED5| db $FE, $61, $C2 ; OBJ 102 - Corner (top, concave) ▜ | { 26, 07 }
|0A9ED8| db $9A, $2C, $62 ; OBJ 062 - Wall (top, east) ↕ | { 26, 0B } | Size: 08
|0A9EDB| db $5A, $2C, $61 ; OBJ 061 - Wall (top, west) ↕ | { 16, 0B } | Size: 08
|0A9EDE| db $FD, $66, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 16, 1A }
|0A9EE1| db $FE, $66, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 26, 1A }
|0A9EE4| db $FD, $E1, $F8 ; OBJ 138 - Interroom spiral stairs up (top) | { 1E, 07 }
|0A9EE7| db $5C, $44, $7F ; OBJ 07F - Wall torches (west) ↕ | { 17, 11 } | Size: 00
|0A9EEA| db $9C, $44, $80 ; OBJ 080 - Wall torches (east) ↕ | { 27, 11 } | Size: 00
|0A9EED| db $79, $4A, $F9 ; OBJ 219 - Chest | { 1E, 12 }
|0A9EF0| db $80, $44, $38 ; OBJ 038 - Statues ↔ | { 20, 11 } | Size: 00
|0A9EF3| db $FE, $69, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 26, 24 }
|0A9EF6| db $FE, $6A, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 26, 28 }
|0A9EF9| db $A8, $A1, $01 ; OBJ 001 - Wall (top, north) ↔ | { 2A, 28 } | Size: 01
|0A9EFC| db $FE, $CA, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 2C, 28 }
|0A9EFF| db $B3, $03, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2C, 00 } | Size: 0F
|0A9F02| db $B1, $79, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2C, 1E } | Size: 05
|0A9F05| db $FC, $5A, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 2B }
|0A9F08| db $27, $AF, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 09, 2B } | Size: 0F
|0A9F0B| db $A4, $AE, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 29, 2B } | Size: 02
|0A9F0E| db $BF, $03, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 2F, 00 } | Size: 0F
|0A9F11| db $BD, $81, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 2F, 20 } | Size: 05
|0A9F14| db $FE, $FA, $CC ; OBJ 10C - Corner (bottom, convex) ▟ | { 2F, 2B }
|0A9F17| db $14, $BD, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 2F } | Size: 01
|0A9F1A| db $FC, $5C, $89 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 32 }
|0A9F1D| db $24, $CB, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 09, 32 } | Size: 03
|0A9F20| db $FD, $0C, $8D ; OBJ 10D - Corner (bottom, convex) ▜ | { 10, 32 }
|0A9F23| db $40, $DA, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 10, 36 } | Size: 02
|0A9F26| db $FD, $0E, $CC ; OBJ 10C - Corner (bottom, convex) ▟ | { 10, 3B }
|0A9F29| db $30, $ED, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0C, 3B } | Size: 01
|0A9F2C| db $18, $E1, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 06, 38 } | Size: 01
|0A9F2F| db $24, $F8, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 09, 3E } | Size: 00
|0A9F32| db $FC, $9E, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 09, 3B }
|0A9F35| db $08, $EB, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 3A } | Size: 03
|0A9F38| db $14, $D8, $22 ; OBJ 022 - Rail ↔ | { 05, 36 } | Size: 00
|0A9F3B| db $21, $E8, $22 ; OBJ 022 - Rail ↔ | { 08, 3A } | Size: 04
|0A9F3E| db $20, $EA, $69 ; OBJ 069 - Rail ↕ | { 08, 3A } | Size: 02
|0A9F41| db $14, $A8, $22 ; OBJ 022 - Rail ↔ | { 05, 2A } | Size: 00
|0A9F44| db $84, $AA, $22 ; OBJ 022 - Rail ↔ | { 21, 2A } | Size: 02
|0A9F47| db $C2, $E0, $02 ; OBJ 002 - Wall (top, south) ↔ | { 30, 38 } | Size: 08
|0A9F4A| db $FE, $CE, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 2C, 38 }
|0A9F4D| db $B0, $F2, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2C, 3C } | Size: 02
|0A9F50| db $B2, $D5, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2C, 35 } | Size: 09
|0A9F53| db $A4, $E3, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 29, 38 } | Size: 03
|0A9F56| db $FE, $9D, $4F ; OBJ 10F - Corner (bottom, convex) ▛ | { 29, 35 }
|0A9F59| db $FD, $8A, $F1 ; OBJ 131 - Intraroom stairs north (separate layers) | { 18, 2B }
|0A9F5C| db $0B, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 0F
|0A9F5F| db $0B, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 14 } | Size: 0E
|0A9F62| db $48, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 04 } | Size: 03
|0A9F65| db $48, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 14 } | Size: 02
|0A9F68| db $5B, $0C, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 03 } | Size: 0C
|0A9F6B| db $91, $0C, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 24, 03 } | Size: 04
|0A9F6E| db $AB, $1C, $60 ; OBJ 060 - Ceiling ↕ | { 2A, 07 } | Size: 0C
|0A9F71| db $A8, $92, $60 ; OBJ 060 - Ceiling ↕ | { 2A, 24 } | Size: 02
|0A9F74| db $C1, $F3, $00 ; OBJ 000 - Ceiling ↔ | { 30, 3C } | Size: 07
|0A9F77| db $FF, $FF ; Layer 1
|0A9F79| db $CB, $03, $67 ; OBJ 067 - Deep wall (west) ↕ | { 32, 00 } | Size: 0F
|0A9F7C| db $C9, $82, $67 ; OBJ 067 - Deep wall (west) ↕ | { 32, 20 } | Size: 06
|0A9F7F| db $CA, $B8, $FA ; OBJ 222 - Deep corner (convex) ▟ | { 32, 2E }
|0A9F82| db $89, $BB, $07 ; OBJ 007 - Deep wall (north) ↔ | { 22, 2E } | Size: 07
|0A9F85| db $AA, $D2, $08 ; OBJ 008 - Deep wall (south) ↔ | { 2A, 34 } | Size: 0A
|0A9F88| db $89, $D2, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 22, 34 } | Size: 06
|0A9F8B| db $A1, $D8, $68 ; OBJ 068 - Deep wall (east) ↕ | { 28, 36 } | Size: 04
|0A9F8E| db $A1, $D1, $FA ; OBJ 225 - Deep corner (convex) ▛ | { 28, 34 }
|0A9F91| db $84, $B8, $69 ; OBJ 069 - Rail ↕ | { 21, 2E } | Size: 00
|0A9F94| db $61, $EE, $22 ; OBJ 022 - Rail ↔ | { 18, 3B } | Size: 06
|0A9F97| db $62, $F0, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 18, 3C } | Size: 08
|0A9F9A| db $61, $F0, $07 ; OBJ 007 - Deep wall (north) ↔ | { 18, 3C } | Size: 04
|0A9F9D| db $60, $ED, $69 ; OBJ 069 - Rail ↕ | { 18, 3B } | Size: 01
|0A9FA0| db $38, $FA, $07 ; OBJ 007 - Deep wall (north) ↔ | { 0E, 3E } | Size: 02
|0A9FA3| db $4C, $ED, $69 ; OBJ 069 - Rail ↕ | { 13, 3B } | Size: 01
|0A9FA6| db $FC, $CF, $98 ; OBJ 118 - Deep corner (concave) ▛ | { 0C, 3E }
|0A9FA9| db $D2, $03, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 34, 00 } | Size: 0B
|0A9FAC| db $D2, $43, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 34, 10 } | Size: 0B
|0A9FAF| db $D2, $83, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 34, 20 } | Size: 0B
|0A9FB2| db $C3, $C0, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 30, 30 } | Size: 0C
|0A9FB5| db $8B, $C0, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 22, 30 } | Size: 0C
|0A9FB8| db $FF, $FF ; Layer 2
|0A9FBA| db $17, $B2, $D7 ; OBJ 0D7 - Layer 2 mask (medium) ⇲ | { 05, 2C } | Size: 0E
|0A9FBD| db $47, $B3, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 11, 2C } | Size: 0F
|0A9FC0| db $2B, $F0, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0A, 3C } | Size: 0C
|0A9FC3| db $6B, $F0, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1A, 3C } | Size: 0C
|0A9FC6| db $87, $B2, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 21, 2C } | Size: 0E
|0A9FC9| db $82, $C3, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 20, 30 } | Size: 0B
|0A9FCC| db $C3, $03, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 30, 00 } | Size: 0F
|0A9FCF| db $C3, $43, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 30, 10 } | Size: 0F
|0A9FD2| db $C3, $83, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 30, 20 } | Size: 0F
|0A9FD5| db $C3, $C1, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 30, 30 } | Size: 0D
|0A9FD8| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0072:
|0A9FDA| db $70, $1C ; DOORTYPE 1C | North 0E
|0A9FDC| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0082:
|0A9FDE| db $51, $1C ; Floors and Layout
|0A9FE0| db $18, $01, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 06, 00 } | Size: 01
|0A9FE3| db $01, $38, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 00, 0E } | Size: 04
|0A9FE6| db $09, $00, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 00 } | Size: 04
|0A9FE9| db $FC, $22, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 02, 0A }
|0A9FEC| db $00, $29, $01 ; OBJ 001 - Wall (top, north) ↔ | { 00, 0A } | Size: 01
|0A9FEF| db $26, $00, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 09, 00 } | Size: 08
|0A9FF2| db $FC, $94, $4C ; OBJ 10C - Corner (bottom, convex) ▟ | { 09, 11 }
|0A9FF5| db $00, $41, $02 ; OBJ 002 - Wall (top, south) ↔ | { 00, 10 } | Size: 01
|0A9FF8| db $FC, $24, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 02, 10 }
|0A9FFB| db $FC, $54, $48 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 11 }
|0A9FFE| db $FC, $2A, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 02, 2A }
|0AA001| db $00, $A9, $01 ; OBJ 001 - Wall (top, north) ↔ | { 00, 2A } | Size: 01
|0AA004| db $16, $57, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 15 } | Size: 0B
|0AA007| db $01, $C0, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 00, 30 } | Size: 04
|0AA00A| db $23, $01, $69 ; OBJ 069 - Rail ↕ | { 08, 00 } | Size: 0D
|0AA00D| db $14, $40, $22 ; OBJ 022 - Rail ↔ | { 05, 10 } | Size: 00
|0AA010| db $00, $EC, $00 ; OBJ 000 - Ceiling ↔ | { 00, 3B } | Size: 00
|0AA013| db $00, $F4, $00 ; OBJ 000 - Ceiling ↔ | { 00, 3D } | Size: 00
|0AA016| db $00, $B6, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 00, 2D } | Size: 02
|0AA019| db $03, $DF, $02 ; OBJ 002 - Wall (top, south) ↔ | { 00, 37 } | Size: 0F
|0AA01C| db $FC, $5B, $4C ; OBJ 10C - Corner (bottom, convex) ▟ | { 05, 2D }
|0AA01F| db $7A, $DF, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1E, 37 } | Size: 0B
|0AA022| db $D0, $D9, $62 ; OBJ 062 - Wall (top, east) ↕ | { 34, 36 } | Size: 01
|0AA025| db $FF, $45, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 34, 14 }
|0AA028| db $FF, $4D, $C3 ; OBJ 103 - Corner (top, concave) ▟ | { 34, 37 }
|0AA02B| db $D3, $63, $62 ; OBJ 062 - Wall (top, east) ↕ | { 34, 18 } | Size: 0F
|0AA02E| db $C0, $52, $01 ; OBJ 001 - Wall (top, north) ↔ | { 30, 14 } | Size: 02
|0AA031| db $FE, $C5, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 2C, 14 }
|0AA034| db $B2, $02, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2C, 00 } | Size: 0A
|0AA037| db $A6, $03, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 29, 00 } | Size: 0B
|0AA03A| db $FE, $95, $CE ; OBJ 10E - Corner (bottom, convex) ▙ | { 29, 17 }
|0AA03D| db $B4, $5D, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2D, 17 } | Size: 01
|0AA040| db $FF, $15, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 31, 17 }
|0AA043| db $C7, $6C, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 31, 1B } | Size: 0C
|0AA046| db $82, $D0, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 20, 34 } | Size: 08
|0AA049| db $FF, $1D, $0B ; OBJ 10B - Corner (bottom, concave) ▟ | { 31, 34 }
|0AA04C| db $03, $D3, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 00, 34 } | Size: 0F
|0AA04F| db $E0, $00, $60 ; OBJ 060 - Ceiling ↕ | { 38, 00 } | Size: 00
|0AA052| db $E8, $00, $60 ; OBJ 060 - Ceiling ↕ | { 3A, 00 } | Size: 00
|0AA055| db $F0, $00, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 00 } | Size: 00
|0AA058| db $10, $E3, $56 ; OBJ 056 - Wall torches (south) ↔ | { 04, 38 } | Size: 03
|0AA05B| db $C1, $03, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 30, 00 } | Size: 07
|0AA05E| db $C1, $40, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 30, 10 } | Size: 04
|0AA061| db $FF, $FF ; Layer 1
|0AA063| db $30, $13, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 0C, 04 } | Size: 03
|0AA066| db $21, $53, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 08, 14 } | Size: 07
|0AA069| db $42, $68, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 10, 1A } | Size: 08
|0AA06C| db $80, $68, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 20, 1A } | Size: 00
|0AA06F| db $42, $73, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 10, 1C } | Size: 0B
|0AA072| db $29, $92, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 0A, 24 } | Size: 06
|0AA075| db $72, $9E, $C3 ; OBJ 0C3 - Layer 2 pit mask (medium) ⇲ | { 1C, 27 } | Size: 0A
|0AA078| db $4B, $B0, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 12, 2C } | Size: 0C
|0AA07B| db $63, $01, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 18, 00 } | Size: 0D
|0AA07E| db $90, $13, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 24, 04 } | Size: 03
|0AA081| db $83, $70, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 20, 1C } | Size: 0C
|0AA084| db $83, $74, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 20, 1D } | Size: 0C
|0AA087| db $B4, $87, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 2D, 21 } | Size: 03
|0AA08A| db $B4, $BC, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 2D, 2F } | Size: 00
|0AA08D| db $90, $52, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 24, 14 } | Size: 02
|0AA090| db $31, $01, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 0C, 00 } | Size: 05
|0AA093| db $32, $01, $67 ; OBJ 067 - Deep wall (west) ↕ | { 0C, 00 } | Size: 09
|0AA096| db $32, $50, $FA ; OBJ 222 - Deep corner (convex) ▟ | { 0C, 14 }
|0AA099| db $28, $50, $07 ; OBJ 007 - Deep wall (north) ↔ | { 0A, 14 } | Size: 00
|0AA09C| db $FC, $85, $18 ; OBJ 118 - Deep corner (concave) ▛ | { 08, 14 }
|0AA09F| db $23, $58, $67 ; OBJ 067 - Deep wall (west) ↕ | { 08, 16 } | Size: 0C
|0AA0A2| db $A3, $00, $68 ; OBJ 068 - Deep wall (east) ↕ | { 28, 00 } | Size: 0C
|0AA0A5| db $A0, $69, $FA ; OBJ 224 - Deep corner (convex) ▙ | { 28, 1A }
|0AA0A8| db $A8, $6A, $07 ; OBJ 007 - Deep wall (north) ↔ | { 2A, 1A } | Size: 02
|0AA0AB| db $FF, $06, $9A ; OBJ 11A - Deep corner (concave) ▜ | { 30, 1A }
|0AA0AE| db $C2, $73, $68 ; OBJ 068 - Deep wall (east) ↕ | { 30, 1C } | Size: 0B
|0AA0B1| db $FF, $0C, $DB ; OBJ 11B - Deep corner (concave) ▟ | { 30, 33 }
|0AA0B4| db $B0, $CD, $08 ; OBJ 008 - Deep wall (south) ↔ | { 2C, 33 } | Size: 01
|0AA0B7| db $61, $00, $69 ; OBJ 069 - Rail ↕ | { 18, 00 } | Size: 04
|0AA0BA| db $4D, $00, $69 ; OBJ 069 - Rail ↕ | { 13, 00 } | Size: 04
|0AA0BD| db $40, $38, $69 ; OBJ 069 - Rail ↕ | { 10, 0E } | Size: 00
|0AA0C0| db $8C, $38, $69 ; OBJ 069 - Rail ↕ | { 23, 0E } | Size: 00
|0AA0C3| db $41, $61, $07 ; OBJ 007 - Deep wall (north) ↔ | { 10, 18 } | Size: 05
|0AA0C6| db $80, $61, $07 ; OBJ 007 - Deep wall (north) ↔ | { 20, 18 } | Size: 01
|0AA0C9| db $6D, $9C, $07 ; OBJ 007 - Deep wall (north) ↔ | { 1B, 27 } | Size: 04
|0AA0CC| db $6E, $63, $69 ; OBJ 069 - Rail ↕ | { 1B, 18 } | Size: 0B
|0AA0CF| db $7D, $62, $69 ; OBJ 069 - Rail ↕ | { 1F, 18 } | Size: 06
|0AA0D2| db $9B, $93, $FA ; OBJ 22F - Pot | { 26, 24 }
|0AA0D5| db $67, $2B, $FA ; OBJ 22F - Pot | { 19, 0A }
|0AA0D8| db $67, $53, $FA ; OBJ 22F - Pot | { 19, 14 }
|0AA0DB| db $FD, $63, $DD ; OBJ 11D - Statue | { 16, 0F }
|0AA0DE| db $FD, $C3, $DD ; OBJ 11D - Statue | { 1C, 0F }
|0AA0E1| db $B0, $C1, $69 ; OBJ 069 - Rail ↕ | { 2C, 30 } | Size: 01
|0AA0E4| db $21, $C2, $5F ; OBJ 05F - Long rail ↔ | { 08, 30 } | Size: 06
|0AA0E7| db $B0, $86, $69 ; OBJ 069 - Rail ↕ | { 2C, 21 } | Size: 02
|0AA0EA| db $FF, $FF ; Layer 2
|0AA0EC| db $2B, $03, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0A, 00 } | Size: 0F
|0AA0EF| db $6B, $03, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1A, 00 } | Size: 0F
|0AA0F2| db $2B, $43, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0A, 10 } | Size: 0F
|0AA0F5| db $18, $4B, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 06, 12 } | Size: 03
|0AA0F8| db $1B, $83, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 06, 20 } | Size: 0F
|0AA0FB| db $03, $B9, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 00, 2E } | Size: 0D
|0AA0FE| db $6B, $43, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1A, 10 } | Size: 0F
|0AA101| db $5B, $83, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 16, 20 } | Size: 0F
|0AA104| db $99, $83, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 26, 20 } | Size: 07
|0AA107| db $43, $BD, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 10, 2F } | Size: 0D
|0AA10A| db $83, $BD, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 20, 2F } | Size: 0D
|0AA10D| db $03, $CC, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 00, 33 } | Size: 0C
|0AA110| db $A0, $03, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 28, 00 } | Size: 03
|0AA113| db $A0, $43, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 28, 10 } | Size: 03
|0AA116| db $B1, $63, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2C, 18 } | Size: 07
|0AA119| db $B1, $9F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 2C, 27 } | Size: 07
|0AA11C| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0082:
|0AA11E| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0081:
|0AA120| db $51, $1C ; Floors and Layout
|0AA122| db $FC, $61, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 06, 04 }
|0AA125| db $1B, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 08 } | Size: 0F
|0AA128| db $18, $9A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 26 } | Size: 02
|0AA12B| db $FC, $6A, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 06, 2A }
|0AA12E| db $2B, $AB, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0A, 2A } | Size: 0F
|0AA131| db $A0, $AA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 28, 2A } | Size: 02
|0AA134| db $FE, $CA, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 2C, 2A }
|0AA137| db $B1, $B9, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2C, 2E } | Size: 05
|0AA13A| db $FE, $CD, $C1 ; OBJ 101 - Corner (top, concave) ▙ | { 2C, 37 }
|0AA13D| db $E1, $C0, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 38, 30 } | Size: 04
|0AA140| db $C2, $DC, $02 ; OBJ 002 - Wall (top, south) ↔ | { 30, 37 } | Size: 08
|0AA143| db $FD, $61, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 16, 04 }
|0AA146| db $58, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 16, 08 } | Size: 03
|0AA149| db $FD, $63, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 16, 0E }
|0AA14C| db $68, $3A, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1A, 0E } | Size: 02
|0AA14F| db $FD, $E3, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 1E, 0E }
|0AA152| db $FD, $E2, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 1E, 0A }
|0AA155| db $8B, $2B, $01 ; OBJ 001 - Wall (top, north) ↔ | { 22, 0A } | Size: 0F
|0AA158| db $E1, $38, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 38, 0E } | Size: 04
|0AA15B| db $F8, $41, $02 ; OBJ 002 - Wall (top, south) ↔ | { 3E, 10 } | Size: 01
|0AA15E| db $FF, $A4, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 3A, 10 }
|0AA161| db $FF, $AA, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 3A, 2A }
|0AA164| db $F8, $A9, $01 ; OBJ 001 - Wall (top, north) ↔ | { 3E, 2A } | Size: 01
|0AA167| db $FC, $91, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 09, 07 }
|0AA16A| db $34, $1E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0D, 07 } | Size: 02
|0AA16D| db $FD, $31, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 13, 07 }
|0AA170| db $4C, $2E, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 13, 0B } | Size: 02
|0AA173| db $5A, $45, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 16, 11 } | Size: 09
|0AA176| db $FD, $34, $4E ; OBJ 10E - Corner (bottom, convex) ▙ | { 13, 11 }
|0AA179| db $FE, $74, $90 ; OBJ 110 - Kinked corner north (bottom) ▜ | { 27, 12 }
|0AA17C| db $C0, $47, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 30, 11 } | Size: 03
|0AA17F| db $FF, $04, $92 ; OBJ 112 - Kinked corner north (bottom) ▛ | { 30, 12 }
|0AA182| db $FF, $74, $4A ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 11 }
|0AA185| db $DE, $57, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 15 } | Size: 0B
|0AA188| db $E8, $B6, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 3A, 2D } | Size: 02
|0AA18B| db $FF, $7B, $4E ; OBJ 10E - Corner (bottom, convex) ▙ | { 37, 2D }
|0AA18E| db $C9, $D2, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 32, 34 } | Size: 06
|0AA191| db $FE, $F8, $8D ; OBJ 10D - Corner (bottom, convex) ▜ | { 2F, 22 }
|0AA194| db $FE, $78, $8F ; OBJ 10F - Corner (bottom, convex) ▛ | { 27, 22 }
|0AA197| db $FD, $38, $8D ; OBJ 10D - Corner (bottom, convex) ▜ | { 13, 22 }
|0AA19A| db $26, $2F, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 09, 0B } | Size: 0B
|0AA19D| db $FC, $98, $89 ; OBJ 109 - Corner (bottom, concave) ▙ | { 09, 22 }
|0AA1A0| db $34, $8A, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0D, 22 } | Size: 02
|0AA1A3| db $BA, $44, $6D ; OBJ 06D - Rail wall (east) ↕ | { 2E, 11 } | Size: 08
|0AA1A6| db $AA, $44, $6C ; OBJ 06C - Rail wall (west) ↕ | { 2A, 11 } | Size: 08
|0AA1A9| db $BD, $9A, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 2F, 26 } | Size: 06
|0AA1AC| db $FE, $FD, $09 ; OBJ 109 - Corner (bottom, concave) ▙ | { 2F, 34 }
|0AA1AF| db $1C, $41, $7F ; OBJ 07F - Wall torches (west) ↕ | { 07, 10 } | Size: 01
|0AA1B2| db $EC, $61, $80 ; OBJ 080 - Wall torches (east) ↕ | { 3B, 18 } | Size: 01
|0AA1B5| db $98, $42, $22 ; OBJ 022 - Rail ↔ | { 26, 10 } | Size: 02
|0AA1B8| db $B8, $40, $22 ; OBJ 022 - Rail ↔ | { 2E, 10 } | Size: 00
|0AA1BB| db $DC, $40, $22 ; OBJ 022 - Rail ↔ | { 37, 10 } | Size: 00
|0AA1BE| db $24, $99, $22 ; OBJ 022 - Rail ↔ | { 09, 26 } | Size: 01
|0AA1C1| db $68, $0A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1A, 02 } | Size: 02
|0AA1C4| db $7B, $09, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1E, 02 } | Size: 0D
|0AA1C7| db $BB, $09, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 02 } | Size: 0D
|0AA1CA| db $08, $00, $60 ; OBJ 060 - Ceiling ↕ | { 02, 00 } | Size: 00
|0AA1CD| db $10, $00, $60 ; OBJ 060 - Ceiling ↕ | { 04, 00 } | Size: 00
|0AA1D0| db $1B, $BB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 06, 2E } | Size: 0F
|0AA1D3| db $5B, $BB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 2E } | Size: 0F
|0AA1D6| db $91, $BB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 24, 2E } | Size: 07
|0AA1D9| db $B3, $EC, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2C, 3B } | Size: 0C
|0AA1DC| db $F0, $EC, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3C, 3B } | Size: 00
|0AA1DF| db $FE, $24, $71 ; OBJ 131 - Intraroom stairs north (separate layers) | { 22, 11 }
|0AA1E2| db $38, $8B, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 0E, 22 }
|0AA1E5| db $4E, $96, $2F ; OBJ 02F - Rail wall (north) ↔ | { 13, 25 } | Size: 0A
|0AA1E8| db $48, $88, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 12, 22 } | Size: 00
|0AA1EB| db $FF, $FF ; Layer 1
|0AA1ED| db $4C, $70, $88 ; OBJ 088 - Thick rail ↕ | { 13, 1C } | Size: 00
|0AA1F0| db $64, $5B, $88 ; OBJ 088 - Thick rail ↕ | { 19, 16 } | Size: 03
|0AA1F3| db $7C, $57, $88 ; OBJ 088 - Thick rail ↕ | { 1F, 15 } | Size: 03
|0AA1F6| db $FD, $F8, $5D ; OBJ 11D - Statue | { 1F, 21 }
|0AA1F9| db $A8, $4B, $01 ; OBJ 001 - Wall (top, north) ↔ | { 2A, 12 } | Size: 03
|0AA1FC| db $AC, $8A, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2B, 22 } | Size: 02
|0AA1FF| db $30, $07, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0C, 01 } | Size: 03
|0AA202| db $40, $07, $62 ; OBJ 062 - Wall (top, east) ↕ | { 10, 01 } | Size: 03
|0AA205| db $4C, $99, $61 ; OBJ 061 - Wall (top, west) ↕ | { 13, 26 } | Size: 01
|0AA208| db $FD, $39, $C1 ; OBJ 101 - Corner (top, concave) ▙ | { 13, 27 }
|0AA20B| db $5E, $9C, $02 ; OBJ 002 - Wall (top, south) ↔ | { 17, 27 } | Size: 08
|0AA20E| db $9C, $99, $62 ; OBJ 062 - Wall (top, east) ↕ | { 27, 26 } | Size: 01
|0AA211| db $FE, $79, $C3 ; OBJ 103 - Corner (top, concave) ▟ | { 27, 27 }
|0AA214| db $FF, $FF ; Layer 2
|0AA216| db $B8, $40, $8A ; OBJ 08A - Long rail ↕ | { 2E, 10 } | Size: 00
|0AA219| db $AC, $40, $8A ; OBJ 08A - Long rail ↕ | { 2B, 10 } | Size: 00
|0AA21C| db $48, $9B, $5F ; OBJ 05F - Long rail ↔ | { 12, 26 } | Size: 03
|0AA21F| db $26, $1F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 09, 07 } | Size: 0B
|0AA222| db $27, $5E, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 09, 17 } | Size: 0E
|0AA225| db $4C, $1F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 13, 07 } | Size: 03
|0AA228| db $27, $84, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 09, 21 } | Size: 0C
|0AA22B| db $5F, $4B, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 17, 12 } | Size: 0F
|0AA22E| db $98, $4B, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 26, 12 } | Size: 03
|0AA231| db $67, $84, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 19, 21 } | Size: 0C
|0AA234| db $98, $84, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 26, 21 } | Size: 00
|0AA237| db $C1, $4B, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 30, 12 } | Size: 07
|0AA23A| db $DC, $4B, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 37, 12 } | Size: 03
|0AA23D| db $C1, $8B, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 30, 22 } | Size: 07
|0AA240| db $DC, $8B, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 37, 22 } | Size: 03
|0AA243| db $C3, $B5, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 30, 2D } | Size: 0D
|0AA246| db $C3, $D0, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 30, 34 } | Size: 0C
|0AA249| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0081:
|0AA24B| db $30, $40 ; DOORTYPE 40 | North 06
|0AA24D| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0071:
|0AA24F| db $51, $00 ; Floors and Layout
|0AA251| db $FC, $C1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 0C, 04 }
|0AA254| db $FC, $C2, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 0C, 08 }
|0AA257| db $28, $21, $01 ; OBJ 001 - Wall (top, north) ↔ | { 0A, 08 } | Size: 01
|0AA25A| db $FC, $72, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 07, 08 }
|0AA25D| db $1D, $31, $61 ; OBJ 061 - Wall (top, west) ↕ | { 07, 0C } | Size: 05
|0AA260| db $FC, $75, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 07, 16 }
|0AA263| db $FC, $A6, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0A, 1A }
|0AA266| db $FC, $A5, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 0A, 16 }
|0AA269| db $FD, $26, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 12, 1A }
|0AA26C| db $FD, $25, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 12, 16 }
|0AA26F| db $58, $5A, $02 ; OBJ 002 - Wall (top, south) ↔ | { 16, 16 } | Size: 02
|0AA272| db $FD, $A5, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 1A, 16 }
|0AA275| db $FC, $F1, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 0F, 07 }
|0AA278| db $FC, $F2, $CC ; OBJ 10C - Corner (bottom, convex) ▟ | { 0F, 0B }
|0AA27B| db $34, $2C, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0D, 0B } | Size: 00
|0AA27E| db $FC, $A2, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 0A, 0B }
|0AA281| db $28, $3D, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0A, 0F } | Size: 01
|0AA284| db $FC, $A4, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 0A, 13 }
|0AA287| db $39, $4C, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0E, 13 } | Size: 04
|0AA28A| db $FD, $74, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 17, 13 }
|0AA28D| db $5C, $2F, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 17, 0B } | Size: 03
|0AA290| db $FD, $71, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 17, 07 }
|0AA293| db $4C, $1D, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 13, 07 } | Size: 01
|0AA296| db $02, $10, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 04 } | Size: 08
|0AA299| db $08, $23, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 08 } | Size: 03
|0AA29C| db $16, $21, $60 ; OBJ 060 - Ceiling ↕ | { 05, 08 } | Size: 09
|0AA29F| db $38, $4F, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 0E, 13 }
|0AA2A2| db $FC, $A9, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 0A, 24 }
|0AA2A5| db $FD, $29, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 12, 24 }
|0AA2A8| db $FD, $2A, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 12, 28 }
|0AA2AB| db $58, $A2, $01 ; OBJ 001 - Wall (top, north) ↔ | { 16, 28 } | Size: 02
|0AA2AE| db $FD, $AA, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 1A, 28 }
|0AA2B1| db $FC, $AA, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 0A, 28 }
|0AA2B4| db $18, $A2, $01 ; OBJ 001 - Wall (top, north) ↔ | { 06, 28 } | Size: 02
|0AA2B7| db $FC, $2A, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 02, 28 }
|0AA2BA| db $08, $63, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 18 } | Size: 03
|0AA2BD| db $18, $68, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 06, 1A } | Size: 00
|0AA2C0| db $18, $90, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 06, 24 } | Size: 00
|0AA2C3| db $59, $68, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 1A } | Size: 04
|0AA2C6| db $59, $90, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 24 } | Size: 04
|0AA2C9| db $FC, $5A, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 2B }
|0AA2CC| db $25, $AE, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 09, 2B } | Size: 06
|0AA2CF| db $FD, $7A, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 17, 2B }
|0AA2D2| db $14, $BF, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 2F } | Size: 03
|0AA2D5| db $FC, $5D, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 37 }
|0AA2D8| db $25, $DE, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 09, 37 } | Size: 06
|0AA2DB| db $FD, $7D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 17, 37 }
|0AA2DE| db $5C, $BF, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 17, 2F } | Size: 03
|0AA2E1| db $FC, $EA, $F1 ; OBJ 131 - Intraroom stairs north (separate layers) | { 0E, 2B }
|0AA2E4| db $FE, $59, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 25, 27 }
|0AA2E7| db $A5, $9E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 29, 27 } | Size: 06
|0AA2EA| db $FF, $79, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 27 }
|0AA2ED| db $DD, $AD, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 2B } | Size: 05
|0AA2F0| db $FF, $7D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 37 }
|0AA2F3| db $A5, $DE, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 29, 37 } | Size: 06
|0AA2F6| db $FE, $5D, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 25, 37 }
|0AA2F9| db $95, $AD, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 25, 2B } | Size: 05
|0AA2FC| db $FF, $FF ; Layer 1
|0AA2FE| db $FD, $31, $FB ; OBJ 13B - Interroom spiral stairs down (bottom) | { 13, 07 }
|0AA301| db $A0, $AC, $38 ; OBJ 038 - Statues ↔ | { 28, 2B } | Size: 00
|0AA304| db $A8, $A8, $38 ; OBJ 038 - Statues ↔ | { 2A, 2A } | Size: 00
|0AA307| db $D0, $A8, $38 ; OBJ 038 - Statues ↔ | { 34, 2A } | Size: 00
|0AA30A| db $D8, $AC, $38 ; OBJ 038 - Statues ↔ | { 36, 2B } | Size: 00
|0AA30D| db $B4, $BD, $38 ; OBJ 038 - Statues ↔ | { 2D, 2F } | Size: 01
|0AA310| db $D8, $D4, $38 ; OBJ 038 - Statues ↔ | { 36, 35 } | Size: 00
|0AA313| db $A0, $D4, $38 ; OBJ 038 - Statues ↔ | { 28, 35 } | Size: 00
|0AA316| db $BD, $C2, $F9 ; OBJ 219 - Chest | { 2F, 30 }
|0AA319| db $6D, $B5, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1B, 2D } | Size: 05
|0AA31C| db $6D, $C5, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1B, 31 } | Size: 05
|0AA31F| db $30, $EE, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0C, 3B } | Size: 02
|0AA322| db $40, $EE, $62 ; OBJ 062 - Wall (top, east) ↕ | { 10, 3B } | Size: 02
|0AA325| db $FF, $FF ; Layer 2
|0AA327| db $3E, $1F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0F, 07 } | Size: 0B
|0AA32A| db $29, $2E, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0A, 0B } | Size: 06
|0AA32D| db $17, $AF, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 05, 2B } | Size: 0F
|0AA330| db $4D, $AF, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 13, 2B } | Size: 07
|0AA333| db $97, $9F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 25, 27 } | Size: 0F
|0AA336| db $97, $DC, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 25, 37 } | Size: 0C
|0AA339| db $CD, $9F, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 33, 27 } | Size: 07
|0AA33C| db $CD, $DC, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 33, 37 } | Size: 04
|0AA33F| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0071:
|0AA341| db $60, $1C ; DOORTYPE 1C | North 0C
|0AA343| db $91, $44 ; DOORTYPE 44 | South 12
|0AA345| db $B2, $44 ; DOORTYPE 44 | West 16
|0AA347| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0070:
|0AA349| db $E1, $00 ; Floors and Layout
|0AA34B| db $FD, $31, $38 ; OBJ 138 - Interroom spiral stairs up (top) | { 13, 04 }
|0AA34E| db $FC, $91, $39 ; OBJ 139 - Interroom spiral stairs down (top) | { 09, 04 }
|0AA351| db $FC, $51, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 05, 04 }
|0AA354| db $FD, $71, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 17, 04 }
|0AA357| db $14, $22, $61 ; OBJ 061 - Wall (top, west) ↕ | { 05, 08 } | Size: 02
|0AA35A| db $FC, $53, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 05, 0C }
|0AA35D| db $25, $33, $02 ; OBJ 002 - Wall (top, south) ↔ | { 09, 0C } | Size: 07
|0AA360| db $FD, $73, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 17, 0C }
|0AA363| db $5C, $22, $62 ; OBJ 062 - Wall (top, east) ↕ | { 17, 08 } | Size: 02
|0AA366| db $38, $14, $55 ; OBJ 055 - Wall torches (north) ↔ | { 0E, 05 } | Size: 00
|0AA369| db $04, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 01, 04 } | Size: 03
|0AA36C| db $6C, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1B, 04 } | Size: 03
|0AA36F| db $0B, $43, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 10 } | Size: 0F
|0AA372| db $4A, $43, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 10 } | Size: 0B
|0AA375| db $FF, $FF ; Layer 1
|0AA377| db $FF, $FF ; Layer 2
|0AA379| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0070:
|0AA37B| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0080:
|0AA37D| db $E1, $10 ; Floors and Layout
|0AA37F| db $FC, $51, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 05, 04 }
|0AA382| db $16, $21, $61 ; OBJ 061 - Wall (top, west) ↕ | { 05, 08 } | Size: 09
|0AA385| db $FC, $56, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 05, 1A }
|0AA388| db $FC, $D1, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 0D, 04 }
|0AA38B| db $34, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 0D, 08 } | Size: 03
|0AA38E| db $FC, $D3, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 0D, 0E }
|0AA391| db $44, $39, $01 ; OBJ 001 - Wall (top, north) ↔ | { 11, 0E } | Size: 01
|0AA394| db $FD, $33, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 13, 0E }
|0AA397| db $4C, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 13, 08 } | Size: 03
|0AA39A| db $FD, $31, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 13, 04 }
|0AA39D| db $FD, $F1, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 1F, 04 }
|0AA3A0| db $7C, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1F, 08 } | Size: 03
|0AA3A3| db $FD, $F3, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 1F, 0E }
|0AA3A6| db $8C, $39, $01 ; OBJ 001 - Wall (top, north) ↔ | { 23, 0E } | Size: 01
|0AA3A9| db $FE, $53, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 25, 0E }
|0AA3AC| db $94, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 25, 08 } | Size: 03
|0AA3AF| db $FE, $51, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 25, 04 }
|0AA3B2| db $FF, $11, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 31, 04 }
|0AA3B5| db $C4, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 31, 08 } | Size: 03
|0AA3B8| db $FF, $13, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 31, 0E }
|0AA3BB| db $D4, $39, $01 ; OBJ 001 - Wall (top, north) ↔ | { 35, 0E } | Size: 01
|0AA3BE| db $FF, $63, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 36, 0E }
|0AA3C1| db $D9, $48, $62 ; OBJ 062 - Wall (top, east) ↕ | { 36, 12 } | Size: 04
|0AA3C4| db $FF, $66, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 36, 1A }
|0AA3C7| db $28, $6F, $56 ; OBJ 056 - Wall torches (south) ↔ | { 0A, 1B } | Size: 03
|0AA3CA| db $40, $50, $DD ; OBJ 0DD - Table / Rock ⇲| { 10, 14 } | Size: 00
|0AA3CD| db $63, $23, $FA ; OBJ 22F - Pot | { 18, 08 }
|0AA3D0| db $A5, $22, $F9 ; OBJ 219 - Chest | { 29, 08 }
|0AA3D3| db $6B, $23, $FA ; OBJ 22F - Pot | { 1A, 08 }
|0AA3D6| db $73, $23, $FA ; OBJ 22F - Pot | { 1C, 08 }
|0AA3D9| db $FC, $91, $38 ; OBJ 138 - Interroom spiral stairs up (top) | { 09, 04 }
|0AA3DC| db $58, $40, $22 ; OBJ 022 - Rail ↔ | { 16, 10 } | Size: 00
|0AA3DF| db $70, $40, $22 ; OBJ 022 - Rail ↔ | { 1C, 10 } | Size: 00
|0AA3E2| db $58, $3C, $22 ; OBJ 022 - Rail ↔ | { 16, 0F } | Size: 00
|0AA3E5| db $70, $3C, $22 ; OBJ 022 - Rail ↔ | { 1C, 0F } | Size: 00
|0AA3E8| db $A0, $40, $22 ; OBJ 022 - Rail ↔ | { 28, 10 } | Size: 00
|0AA3EB| db $B8, $40, $22 ; OBJ 022 - Rail ↔ | { 2E, 10 } | Size: 00
|0AA3EE| db $A0, $3C, $22 ; OBJ 022 - Rail ↔ | { 28, 0F } | Size: 00
|0AA3F1| db $B8, $3C, $22 ; OBJ 022 - Rail ↔ | { 2E, 0F } | Size: 00
|0AA3F4| db $B0, $3A, $F9 ; OBJ 218 - Big key lock | { 2C, 0E }
|0AA3F7| db $04, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 01, 04 } | Size: 03
|0AA3FA| db $04, $4A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 01, 12 } | Size: 02
|0AA3FD| db $45, $11, $60 ; OBJ 060 - Ceiling ↕ | { 11, 04 } | Size: 05
|0AA400| db $8D, $11, $60 ; OBJ 060 - Ceiling ↕ | { 23, 04 } | Size: 05
|0AA403| db $D5, $0A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 35, 02 } | Size: 06
|0AA406| db $E8, $3B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 0E } | Size: 03
|0AA409| db $F1, $11, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 04 } | Size: 05
|0AA40C| db $FF, $FF ; Layer 1
|0AA40E| db $4F, $31, $F9 ; OBJ 217 - Prison cell | { 13, 0C }
|0AA411| db $97, $31, $F9 ; OBJ 217 - Prison cell | { 25, 0C }
|0AA414| db $FF, $FF ; Layer 2
|0AA416| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0080:
|0AA418| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00F0:
|0AA41A| db $E5, $1C ; Floors and Layout
|0AA41C| db $08, $2E, $09 ; OBJ 009 - Diagonal wall A ◤ (top) | { 02, 0B } | Size: 02
|0AA41F| db $09, $68, $0A ; OBJ 00A - Diagonal wall A ◣ (top) | { 02, 1A } | Size: 04
|0AA422| db $22, $93, $61 ; OBJ 061 - Wall (top, west) ↕ | { 08, 24 } | Size: 0B
|0AA425| db $FC, $8E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 08, 3A }
|0AA428| db $93, $10, $0B ; OBJ 00B - Diagonal wall A ◥ (top) | { 24, 04 } | Size: 0C
|0AA42B| db $FF, $A6, $42 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 19 }
|0AA42E| db $C8, $5A, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 16 } | Size: 02
|0AA431| db $FF, $26, $46 ; OBJ 106 - Corner (top, convex) ▙ | { 32, 19 }
|0AA434| db $D8, $66, $01 ; OBJ 001 - Wall (top, north) ↔ | { 36, 19 } | Size: 02
|0AA437| db $FF, $A9, $43 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 25 }
|0AA43A| db $D8, $96, $02 ; OBJ 002 - Wall (top, south) ↔ | { 36, 25 } | Size: 02
|0AA43D| db $FF, $29, $47 ; OBJ 107 - Corner (top, convex) ▛ | { 32, 25 }
|0AA440| db $C8, $A7, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 29 } | Size: 03
|0AA443| db $FF, $2B, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 32, 2E }
|0AA446| db $D8, $BA, $01 ; OBJ 001 - Wall (top, north) ↔ | { 36, 2E } | Size: 02
|0AA449| db $FF, $AB, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 2E }
|0AA44C| db $FD, $4E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 14, 3A }
|0AA44F| db $51, $BA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 14, 2E } | Size: 06
|0AA452| db $FD, $4A, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 14, 2A }
|0AA455| db $60, $A9, $02 ; OBJ 002 - Wall (top, south) ↔ | { 18, 2A } | Size: 01
|0AA458| db $68, $A8, $0A ; OBJ 00A - Diagonal wall A ◣ (top) | { 1A, 2A } | Size: 00
|0AA45B| db $80, $C3, $02 ; OBJ 002 - Wall (top, south) ↔ | { 20, 30 } | Size: 03
|0AA45E| db $98, $CA, $0A ; OBJ 00A - Diagonal wall A ◣ (top) | { 26, 32 } | Size: 02
|0AA461| db $A0, $C4, $1A ; OBJ 01A - Diagonal wall B ◣ (bottom) | { 28, 31 } | Size: 00
|0AA464| db $98, $D1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 26, 34 } | Size: 01
|0AA467| db $FE, $6C, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 26, 30 }
|0AA46A| db $10, $30, $19 ; OBJ 019 - Diagonal wall B ◤ (bottom) | { 04, 0C } | Size: 00
|0AA46D| db $0A, $31, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 0C } | Size: 09
|0AA470| db $15, $68, $1A ; OBJ 01A - Diagonal wall B ◣ (bottom) | { 05, 1A } | Size: 04
|0AA473| db $16, $30, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 0C } | Size: 08
|0AA476| db $2D, $93, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0B, 24 } | Size: 07
|0AA479| db $FC, $BC, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 0B, 33 }
|0AA47C| db $3C, $CC, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0F, 33 } | Size: 00
|0AA47F| db $FD, $1C, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 11, 33 }
|0AA482| db $44, $AF, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 11, 2B } | Size: 03
|0AA485| db $50, $9E, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 14, 27 } | Size: 02
|0AA488| db $FD, $19, $CF ; OBJ 10F - Corner (bottom, convex) ▛ | { 11, 27 }
|0AA48B| db $68, $9C, $1A ; OBJ 01A - Diagonal wall B ◣ (bottom) | { 1A, 27 } | Size: 00
|0AA48E| db $81, $B4, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 20, 2D } | Size: 04
|0AA491| db $A4, $C2, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 29, 30 } | Size: 02
|0AA494| db $B9, $DC, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2E, 37 } | Size: 04
|0AA497| db $FF, $7D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 37 }
|0AA49A| db $DC, $D4, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 35 } | Size: 00
|0AA49D| db $FF, $7C, $4A ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 31 }
|0AA4A0| db $CC, $C5, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 33, 31 } | Size: 01
|0AA4A3| db $FE, $9B, $4D ; OBJ 10D - Corner (bottom, convex) ▜ | { 29, 2D }
|0AA4A6| db $BD, $99, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 2F, 26 } | Size: 05
|0AA4A9| db $FE, $FC, $4E ; OBJ 10E - Corner (bottom, convex) ▙ | { 2F, 31 }
|0AA4AC| db $CC, $89, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 33, 22 } | Size: 01
|0AA4AF| db $FF, $77, $0A ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 1C }
|0AA4B2| db $CC, $71, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 33, 1C } | Size: 01
|0AA4B5| db $92, $1D, $1B ; OBJ 01B - Diagonal wall B ◥ (bottom) | { 24, 07 } | Size: 09
|0AA4B8| db $BC, $5A, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 2F, 16 } | Size: 02
|0AA4BB| db $FE, $F7, $0E ; OBJ 10E - Corner (bottom, convex) ▙ | { 2F, 1C }
|0AA4BE| db $DC, $80, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 20 } | Size: 00
|0AA4C1| db $FF, $78, $8B ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 22 }
|0AA4C4| db $FE, $F8, $8F ; OBJ 10F - Corner (bottom, convex) ▛ | { 2F, 22 }
|0AA4C7| db $2B, $1C, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0A, 07 } | Size: 0C
|0AA4CA| db $FC, $C4, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 0C, 10 }
|0AA4CD| db $30, $5A, $0B ; OBJ 00B - Diagonal wall A ◥ (top) | { 0C, 16 } | Size: 02
|0AA4D0| db $30, $53, $62 ; OBJ 062 - Wall (top, east) ↕ | { 0C, 14 } | Size: 03
|0AA4D3| db $50, $79, $01 ; OBJ 001 - Wall (top, north) ↔ | { 14, 1E } | Size: 01
|0AA4D6| db $FD, $67, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 16, 1E }
|0AA4D9| db $58, $6A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 16, 1A } | Size: 02
|0AA4DC| db $FD, $65, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 16, 16 }
|0AA4DF| db $68, $5A, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1A, 16 } | Size: 02
|0AA4E2| db $78, $5A, $0B ; OBJ 00B - Diagonal wall A ◥ (top) | { 1E, 16 } | Size: 02
|0AA4E5| db $74, $64, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 1D, 19 } | Size: 00
|0AA4E8| db $78, $64, $1B ; OBJ 01B - Diagonal wall B ◥ (bottom) | { 1E, 19 } | Size: 00
|0AA4EB| db $88, $7B, $62 ; OBJ 062 - Wall (top, east) ↕ | { 22, 1E } | Size: 03
|0AA4EE| db $FE, $29, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 22, 24 }
|0AA4F1| db $98, $91, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 24 } | Size: 01
|0AA4F4| db $42, $41, $02 ; OBJ 002 - Wall (top, south) ↔ | { 10, 10 } | Size: 09
|0AA4F7| db $85, $41, $0A ; OBJ 00A - Diagonal wall A ◣ (top) | { 21, 10 } | Size: 05
|0AA4FA| db $A1, $6D, $61 ; OBJ 061 - Wall (top, west) ↕ | { 28, 1B } | Size: 05
|0AA4FD| db $FE, $89, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 28, 24 }
|0AA500| db $25, $59, $1B ; OBJ 01B - Diagonal wall B ◥ (bottom) | { 09, 16 } | Size: 05
|0AA503| db $25, $40, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 09, 10 } | Size: 04
|0AA506| db $36, $35, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0D, 0D } | Size: 09
|0AA509| db $FC, $93, $4F ; OBJ 10F - Corner (bottom, convex) ▛ | { 09, 0D }
|0AA50C| db $50, $86, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 14, 21 } | Size: 02
|0AA50F| db $FD, $98, $4C ; OBJ 10C - Corner (bottom, convex) ▟ | { 19, 21 }
|0AA512| db $64, $75, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 19, 1D } | Size: 01
|0AA515| db $FD, $96, $48 ; OBJ 108 - Corner (bottom, concave) ▛ | { 19, 19 }
|0AA518| db $7D, $78, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 1F, 1E } | Size: 04
|0AA51B| db $FD, $F9, $CE ; OBJ 10E - Corner (bottom, convex) ▙ | { 1F, 27 }
|0AA51E| db $8C, $9F, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 23, 27 } | Size: 03
|0AA521| db $86, $34, $1A ; OBJ 01A - Diagonal wall B ◣ (bottom) | { 21, 0D } | Size: 08
|0AA524| db $AD, $6D, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 2B, 1B } | Size: 05
|0AA527| db $FE, $B9, $CC ; OBJ 10C - Corner (bottom, convex) ▟ | { 2B, 27 }
|0AA52A| db $60, $28, $A4 ; OBJ 0A4 - Pit ⇲ | { 18, 0A } | Size: 00
|0AA52D| db $D0, $D0, $A4 ; OBJ 0A4 - Pit ⇲ | { 34, 34 } | Size: 00
|0AA530| db $FF, $62, $32 ; OBJ 132 - Intraroom stairs north (merged layers) | { 36, 08 }
|0AA533| db $2C, $DC, $22 ; OBJ 022 - Rail ↔ | { 0B, 37 } | Size: 00
|0AA536| db $44, $DC, $22 ; OBJ 022 - Rail ↔ | { 11, 37 } | Size: 00
|0AA539| db $08, $13, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 02, 04 } | Size: 03
|0AA53C| db $08, $7D, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 02, 1F } | Size: 01
|0AA53F| db $01, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 24 } | Size: 07
|0AA542| db $01, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 34 } | Size: 06
|0AA545| db $68, $BD, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 1A, 2F } | Size: 01
|0AA548| db $62, $B8, $60 ; OBJ 060 - Ceiling ↕ | { 18, 2E } | Size: 08
|0AA54B| db $6A, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1A, 34 } | Size: 0A
|0AA54E| db $98, $DF, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 26, 37 } | Size: 03
|0AA551| db $44, $68, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 11, 1A } | Size: 00
|0AA554| db $40, $58, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 10, 16 } | Size: 00
|0AA557| db $51, $58, $60 ; OBJ 060 - Ceiling ↕ | { 14, 16 } | Size: 04
|0AA55A| db $42, $50, $00 ; OBJ 000 - Ceiling ↔ | { 10, 14 } | Size: 08
|0AA55D| db $84, $54, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 21, 15 } | Size: 00
|0AA560| db $90, $60, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 24, 18 } | Size: 00
|0AA563| db $7C, $58, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 1F, 16 } | Size: 00
|0AA566| db $88, $64, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 22, 19 } | Size: 00
|0AA569| db $7C, $51, $00 ; OBJ 000 - Ceiling ↔ | { 1F, 14 } | Size: 01
|0AA56C| db $99, $70, $60 ; OBJ 060 - Ceiling ↕ | { 26, 1C } | Size: 04
|0AA56F| db $97, $11, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 25, 04 } | Size: 0D
|0AA572| db $D9, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 04 } | Size: 07
|0AA575| db $D9, $45, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 11 } | Size: 05
|0AA578| db $D9, $A4, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 29 } | Size: 04
|0AA57B| db $D9, $B0, $00 ; OBJ 000 - Ceiling ↔ | { 36, 2C } | Size: 04
|0AA57E| db $FF, $FF ; Layer 1
|0AA580| db $2B, $14, $FF ; OBJ 273 - Layer 2 mask (full) | { 0A, 05 }
|0AA583| db $2A, $16, $FA ; OBJ 22A - Lamp cones | { 0A, 05 }
|0AA586| db $FF, $FF ; Layer 2
|0AA588| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F0:
|0AA58A| db $61, $0E ; DOORTYPE 0E | South 0C
|0AA58C| db $A3, $02 ; DOORTYPE 02 | East 14
|0AA58E| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00F1:
|0AA590| db $E5, $1C ; Floors and Layout
|0AA592| db $FC, $26, $40 ; OBJ 100 - Corner (top, concave) ▛ | { 02, 19 }
|0AA595| db $18, $65, $01 ; OBJ 001 - Wall (top, north) ↔ | { 06, 19 } | Size: 01
|0AA598| db $22, $21, $61 ; OBJ 061 - Wall (top, west) ↕ | { 08, 08 } | Size: 09
|0AA59B| db $FC, $86, $44 ; OBJ 104 - Corner (top, convex) ▟ | { 08, 19 }
|0AA59E| db $FC, $81, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 08, 04 }
|0AA5A1| db $FD, $41, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 14, 04 }
|0AA5A4| db $52, $21, $62 ; OBJ 062 - Wall (top, east) ↕ | { 14, 08 } | Size: 09
|0AA5A7| db $FD, $46, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 14, 1A }
|0AA5AA| db $60, $69, $01 ; OBJ 001 - Wall (top, north) ↔ | { 18, 1A } | Size: 01
|0AA5AD| db $68, $66, $09 ; OBJ 009 - Diagonal wall A ◤ (top) | { 1A, 19 } | Size: 02
|0AA5B0| db $68, $2A, $0A ; OBJ 00A - Diagonal wall A ◣ (top) | { 1A, 0A } | Size: 02
|0AA5B3| db $68, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1A, 08 } | Size: 03
|0AA5B6| db $FD, $A1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 1A, 04 }
|0AA5B9| db $78, $4A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1E, 12 } | Size: 02
|0AA5BC| db $FE, $41, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 24, 04 }
|0AA5BF| db $90, $22, $0B ; OBJ 00B - Diagonal wall A ◥ (top) | { 24, 08 } | Size: 02
|0AA5C2| db $90, $22, $62 ; OBJ 062 - Wall (top, east) ↕ | { 24, 08 } | Size: 02
|0AA5C5| db $B0, $41, $01 ; OBJ 001 - Wall (top, north) ↔ | { 2C, 10 } | Size: 01
|0AA5C8| db $FE, $E4, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 2E, 10 }
|0AA5CB| db $B9, $20, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2E, 08 } | Size: 04
|0AA5CE| db $FE, $E1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2E, 04 }
|0AA5D1| db $FC, $29, $41 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 25 }
|0AA5D4| db $18, $95, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 25 } | Size: 01
|0AA5D7| db $FC, $89, $45 ; OBJ 105 - Corner (top, convex) ▜ | { 08, 25 }
|0AA5DA| db $22, $A5, $61 ; OBJ 061 - Wall (top, west) ↕ | { 08, 29 } | Size: 09
|0AA5DD| db $FC, $8E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 08, 3A }
|0AA5E0| db $FD, $4E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 14, 3A }
|0AA5E3| db $58, $AC, $0C ; OBJ 00C - Diagonal wall A ◢ (top) | { 16, 2B } | Size: 00
|0AA5E6| db $51, $BA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 14, 2E } | Size: 06
|0AA5E9| db $70, $99, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1C, 26 } | Size: 01
|0AA5EC| db $79, $94, $0C ; OBJ 00C - Diagonal wall A ◢ (top) | { 1E, 25 } | Size: 04
|0AA5EF| db $A0, $73, $02 ; OBJ 002 - Wall (top, south) ↔ | { 28, 1C } | Size: 03
|0AA5F2| db $FE, $E7, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 2E, 1C }
|0AA5F5| db $B8, $83, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2E, 20 } | Size: 03
|0AA5F8| db $FE, $E9, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 2E, 26 }
|0AA5FB| db $B0, $99, $01 ; OBJ 001 - Wall (top, north) ↔ | { 2C, 26 } | Size: 01
|0AA5FE| db $FE, $89, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 28, 26 }
|0AA601| db $A2, $A8, $61 ; OBJ 061 - Wall (top, west) ↕ | { 28, 2A } | Size: 08
|0AA604| db $FE, $8E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 28, 3A }
|0AA607| db $FF, $4E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 34, 3A }
|0AA60A| db $D0, $DA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 34, 36 } | Size: 02
|0AA60D| db $FF, $4C, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 34, 32 }
|0AA610| db $E0, $C9, $02 ; OBJ 002 - Wall (top, south) ↔ | { 38, 32 } | Size: 01
|0AA613| db $FF, $AC, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 32 }
|0AA616| db $2E, $2C, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0B, 0B } | Size: 08
|0AA619| db $FC, $B7, $0C ; OBJ 10C - Corner (bottom, convex) ▟ | { 0B, 1C }
|0AA61C| db $FC, $B1, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 0B, 07 }
|0AA61F| db $3C, $1C, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0F, 07 } | Size: 00
|0AA622| db $FD, $11, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 11, 07 }
|0AA625| db $46, $2C, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 11, 0B } | Size: 08
|0AA628| db $50, $76, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 14, 1D } | Size: 02
|0AA62B| db $FD, $17, $4E ; OBJ 10E - Corner (bottom, convex) ▙ | { 11, 1D }
|0AA62E| db $69, $71, $19 ; OBJ 019 - Diagonal wall B ◤ (bottom) | { 1A, 1C } | Size: 05
|0AA631| db $74, $2A, $1A ; OBJ 01A - Diagonal wall B ◣ (bottom) | { 1D, 0A } | Size: 02
|0AA634| db $84, $49, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 21, 12 } | Size: 01
|0AA637| db $74, $29, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 1D, 0A } | Size: 01
|0AA63A| db $FD, $D1, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 1D, 07 }
|0AA63D| db $85, $21, $1B ; OBJ 01B - Diagonal wall B ◥ (bottom) | { 21, 08 } | Size: 05
|0AA640| db $84, $28, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 21, 0A } | Size: 00
|0AA643| db $FE, $11, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 21, 07 }
|0AA646| db $B0, $4E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2C, 13 } | Size: 02
|0AA649| db $FF, $14, $CC ; OBJ 10C - Corner (bottom, convex) ▟ | { 31, 13 }
|0AA64C| db $C4, $2F, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 31, 0B } | Size: 03
|0AA64F| db $FF, $11, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 31, 07 }
|0AA652| db $D4, $1C, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 35, 07 } | Size: 00
|0AA655| db $FF, $71, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 07 }
|0AA658| db $DF, $2F, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 0B } | Size: 0F
|0AA65B| db $DC, $AD, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 2B } | Size: 01
|0AA65E| db $FF, $7B, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 2F }
|0AA661| db $D4, $BC, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 35, 2F } | Size: 00
|0AA664| db $FF, $1B, $CF ; OBJ 10F - Corner (bottom, convex) ▛ | { 31, 2F }
|0AA667| db $C4, $CD, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 31, 33 } | Size: 01
|0AA66A| db $FF, $1D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 31, 37 }
|0AA66D| db $BC, $DC, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2F, 37 } | Size: 00
|0AA670| db $FE, $BD, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 2B, 37 }
|0AA673| db $AD, $B4, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 2B, 2D } | Size: 04
|0AA676| db $FE, $BA, $48 ; OBJ 108 - Corner (bottom, concave) ▛ | { 2B, 29 }
|0AA679| db $BC, $A4, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2F, 29 } | Size: 00
|0AA67C| db $FF, $1A, $4C ; OBJ 10C - Corner (bottom, convex) ▟ | { 31, 29 }
|0AA67F| db $C5, $75, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 31, 1D } | Size: 05
|0AA682| db $A1, $64, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 28, 19 } | Size: 04
|0AA685| db $FF, $16, $4D ; OBJ 10D - Corner (bottom, convex) ▜ | { 31, 19 }
|0AA688| db $79, $88, $1C ; OBJ 01C - Diagonal wall B ◢ (bottom) | { 1E, 22 } | Size: 04
|0AA68B| db $70, $8C, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 1C, 23 } | Size: 00
|0AA68E| db $45, $B5, $1C ; OBJ 01C - Diagonal wall B ◢ (bottom) | { 11, 2D } | Size: 05
|0AA691| db $45, $B8, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 11, 2E } | Size: 04
|0AA694| db $FD, $1D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 11, 37 }
|0AA697| db $2E, $98, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0B, 26 } | Size: 08
|0AA69A| db $FC, $BD, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 0B, 37 }
|0AA69D| db $3C, $DC, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0F, 37 } | Size: 00
|0AA6A0| db $FC, $B8, $8D ; OBJ 10D - Corner (bottom, convex) ▜ | { 0B, 22 }
|0AA6A3| db $24, $88, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 09, 22 } | Size: 00
|0AA6A6| db $14, $80, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 20 } | Size: 00
|0AA6A9| db $FC, $57, $08 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 1C }
|0AA6AC| db $24, $70, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 09, 1C } | Size: 00
|0AA6AF| db $FC, $58, $89 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 22 }
|0AA6B2| db $83, $2B, $FA ; OBJ 22F - Pot | { 20, 0A }
|0AA6B5| db $48, $80, $A4 ; OBJ 0A4 - Pit ⇲ | { 12, 20 } | Size: 00
|0AA6B8| db $D0, $28, $A4 ; OBJ 0A4 - Pit ⇲ | { 34, 0A } | Size: 00
|0AA6BB| db $62, $13, $60 ; OBJ 060 - Ceiling ↕ | { 18, 04 } | Size: 0B
|0AA6BE| db $68, $3C, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 1A, 0F } | Size: 00
|0AA6C1| db $68, $54, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 1A, 15 } | Size: 00
|0AA6C4| db $68, $4E, $00 ; OBJ 000 - Ceiling ↔ | { 1A, 13 } | Size: 02
|0AA6C7| db $A0, $11, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 28, 04 } | Size: 01
|0AA6CA| db $B1, $12, $60 ; OBJ 060 - Ceiling ↕ | { 2C, 04 } | Size: 06
|0AA6CD| db $A0, $2C, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 28, 0B } | Size: 00
|0AA6D0| db $64, $B4, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 19, 2D } | Size: 00
|0AA6D3| db $7D, $A5, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 1F, 29 } | Size: 05
|0AA6D6| db $63, $BB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 18, 2E } | Size: 0F
|0AA6D9| db $72, $A8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1C, 2A } | Size: 08
|0AA6DC| db $A0, $83, $00 ; OBJ 000 - Ceiling ↔ | { 28, 20 } | Size: 03
|0AA6DF| db $A0, $8B, $00 ; OBJ 000 - Ceiling ↔ | { 28, 22 } | Size: 03
|0AA6E2| db $A0, $93, $00 ; OBJ 000 - Ceiling ↔ | { 28, 24 } | Size: 03
|0AA6E5| db $E0, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 38, 36 } | Size: 01
|0AA6E8| db $F1, $D8, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 36 } | Size: 04
|0AA6EB| db $01, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 04 } | Size: 07
|0AA6EE| db $01, $45, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 11 } | Size: 05
|0AA6F1| db $01, $A7, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 29 } | Size: 07
|0AA6F4| db $01, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 36 } | Size: 05
|0AA6F7| db $FF, $FF ; Layer 1
|0AA6F9| db $2B, $14, $FF ; OBJ 273 - Layer 2 mask (full) | { 0A, 05 }
|0AA6FC| db $2A, $16, $FA ; OBJ 22A - Lamp cones | { 0A, 05 }
|0AA6FF| db $FF, $FF ; Layer 2
|0AA701| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F1:
|0AA703| db $B1, $10 ; DOORTYPE 10 | South 16
|0AA705| db $42, $02 ; DOORTYPE 02 | West 08
|0AA707| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00F2:
|0AA709| db $E3, $00 ; Floors and Layout
|0AA70B| db $A0, $91, $3E ; OBJ 03E - Supports (north) ↔ | { 28, 24 } | Size: 01
|0AA70E| db $A0, $F1, $4B ; OBJ 04B - Support (south) ↔ | { 28, 3C } | Size: 01
|0AA711| db $88, $A5, $78 ; OBJ 078 - Supports (west) ↕ | { 22, 29 } | Size: 01
|0AA714| db $F0, $A5, $7B ; OBJ 07B - Supports (east) ↕ | { 3C, 29 } | Size: 01
|0AA717| db $88, $BC, $76 ; OBJ 076 - Wall decors (west) ↕ | { 22, 2F } | Size: 00
|0AA71A| db $FF, $19, $E8 ; OBJ 128 - Bed | { 31, 27 }
|0AA71D| db $FF, $79, $E8 ; OBJ 128 - Bed | { 37, 27 }
|0AA720| db $94, $A2, $B2 ; OBJ 0B2 - Rug ↔ | { 25, 28 } | Size: 02
|0AA723| db $94, $B2, $B2 ; OBJ 0B2 - Rug ↔ | { 25, 2C } | Size: 02
|0AA726| db $94, $C2, $B2 ; OBJ 0B2 - Rug ↔ | { 25, 30 } | Size: 02
|0AA729| db $94, $D2, $B2 ; OBJ 0B2 - Rug ↔ | { 25, 34 } | Size: 02
|0AA72C| db $96, $9D, $B3 ; OBJ 0B3 - Rug trim (north) ↔ | { 25, 27 } | Size: 09
|0AA72F| db $96, $DD, $B4 ; OBJ 0B4 - Rug trim (south) ↔ | { 25, 37 } | Size: 09
|0AA732| db $97, $A2, $8D ; OBJ 08D - Rug trim (west) ↕ | { 25, 28 } | Size: 0E
|0AA735| db $C3, $A2, $8E ; OBJ 08E - Rug trim (east) ↕ | { 30, 28 } | Size: 0E
|0AA738| db $9C, $AD, $3C ; OBJ 03C - Chairs in pairs ↔ | { 27, 2B } | Size: 01
|0AA73B| db $9D, $B4, $DD ; OBJ 0DD - Table / Rock ⇲| { 27, 2D } | Size: 04
|0AA73E| db $A2, $B6, $FD ; OBJ 25A - Decorative bowl | { 28, 2D }
|0AA741| db $AC, $93, $FD ; OBJ 25C - Bookcase | { 2B, 24 }
|0AA744| db $FF, $FF ; Layer 1
|0AA746| db $FF, $FF ; Layer 2
|0AA748| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F2:
|0AA74A| db $83, $00 ; DOORTYPE 00 | East 10
|0AA74C| db $81, $00 ; DOORTYPE 00 | South 10
|0AA74E| db $81, $12 ; DOORTYPE 12 | South 10
|0AA750| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00F3:
|0AA752| db $E3, $00 ; Floors and Layout
|0AA754| db $20, $91, $3E ; OBJ 03E - Supports (north) ↔ | { 08, 24 } | Size: 01
|0AA757| db $08, $A5, $78 ; OBJ 078 - Supports (west) ↕ | { 02, 29 } | Size: 01
|0AA75A| db $70, $A5, $7B ; OBJ 07B - Supports (east) ↕ | { 1C, 29 } | Size: 01
|0AA75D| db $21, $D0, $DD ; OBJ 0DD - Table / Rock ⇲| { 08, 34 } | Size: 04
|0AA760| db $FC, $8E, $27 ; OBJ 127 - Chair | { 08, 38 }
|0AA763| db $FC, $CE, $27 ; OBJ 127 - Chair | { 0C, 38 }
|0AA766| db $49, $A3, $C5 ; OBJ 0C5 - Floor 3 ⇲| { 12, 28 } | Size: 07
|0AA769| db $49, $D8, $C5 ; OBJ 0C5 - Floor 3 ⇲| { 12, 36 } | Size: 04
|0AA76C| db $4B, $A2, $71 ; OBJ 071 - Carpet trim ↕ | { 12, 28 } | Size: 0E
|0AA76F| db $53, $A3, $FA ; OBJ 22F - Pot | { 14, 28 }
|0AA772| db $5B, $A3, $FA ; OBJ 22F - Pot | { 16, 28 }
|0AA775| db $63, $A3, $FA ; OBJ 22F - Pot | { 18, 28 }
|0AA778| db $FC, $E9, $29 ; OBJ 129 - Fireplace | { 0E, 24 }
|0AA77B| db $58, $EC, $3B ; OBJ 03B - Wall decors (south) ↔ | { 16, 3B } | Size: 00
|0AA77E| db $FC, $6A, $21 ; OBJ 121 - Barrel | { 06, 28 }
|0AA781| db $FC, $6A, $A1 ; OBJ 121 - Barrel | { 06, 2A }
|0AA784| db $FC, $8A, $21 ; OBJ 121 - Barrel | { 08, 28 }
|0AA787| db $2B, $A2, $FD ; OBJ 25B - Tub (tall) | { 0A, 28 }
|0AA78A| db $26, $D2, $FD ; OBJ 25A - Decorative bowl | { 09, 34 }
|0AA78D| db $51, $AB, $FD ; OBJ 25D - Range | { 14, 2A }
|0AA790| db $51, $BF, $FD ; OBJ 25D - Range | { 14, 2F }
|0AA793| db $FF, $FF ; Layer 1
|0AA795| db $FF, $FF ; Layer 2
|0AA797| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F3:
|0AA799| db $22, $00 ; DOORTYPE 00 | West 04
|0AA79B| db $61, $00 ; DOORTYPE 00 | South 0C
|0AA79D| db $61, $12 ; DOORTYPE 12 | South 0C
|0AA79F| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00F4:
|0AA7A1| db $E3, $00 ; Floors and Layout
|0AA7A3| db $A0, $91, $3E ; OBJ 03E - Supports (north) ↔ | { 28, 24 } | Size: 01
|0AA7A6| db $88, $C0, $78 ; OBJ 078 - Supports (west) ↕ | { 22, 30 } | Size: 00
|0AA7A9| db $A0, $EC, $3B ; OBJ 03B - Wall decors (south) ↔ | { 28, 3B } | Size: 00
|0AA7AC| db $B4, $91, $4F ; OBJ 04F - Shelf ↔ | { 2D, 24 } | Size: 01
|0AA7AF| db $A0, $AF, $B2 ; OBJ 0B2 - Rug ↔ | { 28, 2B } | Size: 03
|0AA7B2| db $A0, $BF, $B2 ; OBJ 0B2 - Rug ↔ | { 28, 2F } | Size: 03
|0AA7B5| db $A0, $CF, $B2 ; OBJ 0B2 - Rug ↔ | { 28, 33 } | Size: 03
|0AA7B8| db $A3, $A9, $B3 ; OBJ 0B3 - Rug trim (north) ↔ | { 28, 2A } | Size: 0D
|0AA7BB| db $A3, $DD, $B4 ; OBJ 0B4 - Rug trim (south) ↔ | { 28, 37 } | Size: 0D
|0AA7BE| db $A2, $AF, $8D ; OBJ 08D - Rug trim (west) ↕ | { 28, 2B } | Size: 0B
|0AA7C1| db $DE, $AF, $8E ; OBJ 08E - Rug trim (east) ↕ | { 37, 2B } | Size: 0B
|0AA7C4| db $BC, $B0, $3C ; OBJ 03C - Chairs in pairs ↔ | { 2F, 2C } | Size: 00
|0AA7C7| db $B5, $B8, $DD ; OBJ 0DD - Table / Rock ⇲| { 2D, 2E } | Size: 04
|0AA7CA| db $FF, $79, $E8 ; OBJ 128 - Bed | { 37, 27 }
|0AA7CD| db $FF, $FF ; Layer 1
|0AA7CF| db $FF, $FF ; Layer 2
|0AA7D1| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F4:
|0AA7D3| db $83, $28 ; DOORTYPE 28 | East 10
|0AA7D5| db $81, $00 ; DOORTYPE 00 | South 10
|0AA7D7| db $81, $12 ; DOORTYPE 12 | South 10
|0AA7D9| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00F5:
|0AA7DB| db $E3, $00 ; Floors and Layout
|0AA7DD| db $20, $91, $3E ; OBJ 03E - Supports (north) ↔ | { 08, 24 } | Size: 01
|0AA7E0| db $20, $F0, $4B ; OBJ 04B - Support (south) ↔ | { 08, 3C } | Size: 00
|0AA7E3| db $54, $EC, $3B ; OBJ 03B - Wall decors (south) ↔ | { 15, 3B } | Size: 00
|0AA7E6| db $70, $C0, $7B ; OBJ 07B - Supports (east) ↕ | { 1C, 30 } | Size: 00
|0AA7E9| db $20, $AF, $B2 ; OBJ 0B2 - Rug ↔ | { 08, 2B } | Size: 03
|0AA7EC| db $20, $BF, $B2 ; OBJ 0B2 - Rug ↔ | { 08, 2F } | Size: 03
|0AA7EF| db $20, $CF, $B2 ; OBJ 0B2 - Rug ↔ | { 08, 33 } | Size: 03
|0AA7F2| db $23, $A9, $B3 ; OBJ 0B3 - Rug trim (north) ↔ | { 08, 2A } | Size: 0D
|0AA7F5| db $23, $DD, $B4 ; OBJ 0B4 - Rug trim (south) ↔ | { 08, 37 } | Size: 0D
|0AA7F8| db $22, $AF, $8D ; OBJ 08D - Rug trim (west) ↕ | { 08, 2B } | Size: 0B
|0AA7FB| db $5E, $AF, $8E ; OBJ 08E - Rug trim (east) ↕ | { 17, 2B } | Size: 0B
|0AA7FE| db $34, $B1, $3C ; OBJ 03C - Chairs in pairs ↔ | { 0D, 2C } | Size: 01
|0AA801| db $35, $B8, $DD ; OBJ 0DD - Table / Rock ⇲| { 0D, 2E } | Size: 04
|0AA804| db $3A, $BA, $FD ; OBJ 25A - Decorative bowl | { 0E, 2E }
|0AA807| db $34, $93, $FD ; OBJ 25C - Bookcase | { 0D, 24 }
|0AA80A| db $FC, $59, $E8 ; OBJ 128 - Bed | { 05, 27 }
|0AA80D| db $FF, $FF ; Layer 1
|0AA80F| db $FF, $FF ; Layer 2
|0AA811| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F5:
|0AA813| db $22, $28 ; DOORTYPE 28 | West 04
|0AA815| db $61, $00 ; DOORTYPE 00 | South 0C
|0AA817| db $61, $12 ; DOORTYPE 12 | South 0C
|0AA819| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00F8:
|0AA81B| db $E1, $1C ; Floors and Layout
|0AA81D| db $FC, $22, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 0A }
|0AA820| db $18, $2B, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 0A } | Size: 03
|0AA823| db $FC, $C2, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 0C, 0A }
|0AA826| db $32, $3B, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0C, 0E } | Size: 0B
|0AA829| db $FC, $C9, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 0C, 24 }
|0AA82C| db $42, $93, $02 ; OBJ 002 - Wall (top, south) ↔ | { 10, 24 } | Size: 0B
|0AA82F| db $FE, $69, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 26, 24 }
|0AA832| db $99, $A0, $61 ; OBJ 061 - Wall (top, west) ↕ | { 26, 28 } | Size: 04
|0AA835| db $FE, $6C, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 26, 30 }
|0AA838| db $50, $A8, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 14, 2A } | Size: 00
|0AA83B| db $69, $C2, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1A, 30 } | Size: 06
|0AA83E| db $19, $AB, $01 ; OBJ 001 - Wall (top, north) ↔ | { 06, 2A } | Size: 07
|0AA841| db $08, $B0, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 02, 2C } | Size: 00
|0AA844| db $FC, $2A, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 02, 2A }
|0AA847| db $08, $B9, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 2E } | Size: 01
|0AA84A| db $21, $CA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 08, 32 } | Size: 06
|0AA84D| db $50, $CA, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 14, 32 } | Size: 02
|0AA850| db $FE, $AE, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 2A, 3A }
|0AA853| db $AA, $93, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2A, 24 } | Size: 0B
|0AA856| db $FE, $A8, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 2A, 20 }
|0AA859| db $5A, $82, $01 ; OBJ 001 - Wall (top, north) ↔ | { 16, 20 } | Size: 0A
|0AA85C| db $FD, $28, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 12, 20 }
|0AA85F| db $4A, $39, $62 ; OBJ 062 - Wall (top, east) ↕ | { 12, 0E } | Size: 09
|0AA862| db $FD, $22, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 12, 0A }
|0AA865| db $5A, $29, $02 ; OBJ 002 - Wall (top, south) ↔ | { 16, 0A } | Size: 09
|0AA868| db $FE, $82, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 28, 0A }
|0AA86B| db $A0, $21, $62 ; OBJ 062 - Wall (top, east) ↕ | { 28, 08 } | Size: 01
|0AA86E| db $FE, $81, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 28, 04 }
|0AA871| db $FD, $A4, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 1A, 12 }
|0AA874| db $7A, $49, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1E, 12 } | Size: 09
|0AA877| db $FF, $04, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 30, 12 }
|0AA87A| db $C0, $3A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 30, 0E } | Size: 02
|0AA87D| db $FF, $02, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 30, 0A }
|0AA880| db $D0, $29, $01 ; OBJ 001 - Wall (top, north) ↔ | { 34, 0A } | Size: 01
|0AA883| db $FF, $62, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 36, 0A }
|0AA886| db $D8, $39, $62 ; OBJ 062 - Wall (top, east) ↕ | { 36, 0E } | Size: 01
|0AA889| db $FF, $64, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 36, 10 }
|0AA88C| db $FF, $A4, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 10 }
|0AA88F| db $FF, $A9, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 24 }
|0AA892| db $D8, $92, $02 ; OBJ 002 - Wall (top, south) ↔ | { 36, 24 } | Size: 02
|0AA895| db $FF, $29, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 32, 24 }
|0AA898| db $C9, $70, $61 ; OBJ 061 - Wall (top, west) ↕ | { 32, 1C } | Size: 04
|0AA89B| db $FF, $26, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 32, 18 }
|0AA89E| db $7A, $62, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1E, 18 } | Size: 0A
|0AA8A1| db $FD, $A6, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 1A, 18 }
|0AA8A4| db $68, $59, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1A, 16 } | Size: 01
|0AA8A7| db $FC, $81, $38 ; OBJ 138 - Interroom spiral stairs up (top) | { 08, 04 }
|0AA8AA| db $FE, $41, $38 ; OBJ 138 - Interroom spiral stairs up (top) | { 24, 04 }
|0AA8AD| db $FD, $E4, $B8 ; OBJ 138 - Interroom spiral stairs up (top) | { 1E, 12 }
|0AA8B0| db $FC, $6A, $B8 ; OBJ 138 - Interroom spiral stairs up (top) | { 06, 2A }
|0AA8B3| db $E5, $4E, $F9 ; OBJ 219 - Chest | { 39, 13 }
|0AA8B6| db $E5, $5E, $F9 ; OBJ 219 - Chest | { 39, 17 }
|0AA8B9| db $E7, $6F, $FA ; OBJ 22F - Pot | { 39, 1B }
|0AA8BC| db $02, $3B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 0E } | Size: 0B
|0AA8BF| db $02, $7A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 1E } | Size: 0A
|0AA8C2| db $08, $C5, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 02, 31 } | Size: 01
|0AA8C5| db $0B, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 36 } | Size: 0D
|0AA8C8| db $49, $D8, $60 ; OBJ 060 - Ceiling ↕ | { 12, 36 } | Size: 04
|0AA8CB| db $50, $DF, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 14, 37 } | Size: 03
|0AA8CE| db $54, $A9, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 15, 2A } | Size: 01
|0AA8D1| db $6A, $A1, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1A, 28 } | Size: 09
|0AA8D4| db $31, $A3, $00 ; OBJ 000 - Ceiling ↔ | { 0C, 28 } | Size: 07
|0AA8D7| db $B3, $09, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2C, 02 } | Size: 0D
|0AA8DA| db $E8, $12, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 04 } | Size: 02
|0AA8DD| db $B0, $29, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2C, 0A } | Size: 01
|0AA8E0| db $73, $38, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1C, 0E } | Size: 0C
|0AA8E3| db $68, $3A, $60 ; OBJ 060 - Ceiling ↕ | { 1A, 0E } | Size: 02
|0AA8E6| db $58, $3B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 0E } | Size: 03
|0AA8E9| db $5B, $70, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 1C } | Size: 0C
|0AA8EC| db $9A, $70, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 26, 1C } | Size: 08
|0AA8EF| db $B8, $81, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 20 } | Size: 01
|0AA8F2| db $BB, $A3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 28 } | Size: 0F
|0AA8F5| db $BB, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 36 } | Size: 0D
|0AA8F8| db $FF, $FF ; Layer 1
|0AA8FA| db $FF, $FF ; Layer 2
|0AA8FC| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F8:
|0AA8FE| db $71, $0E ; DOORTYPE 0E | South 0E
|0AA900| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00E8:
|0AA902| db $81, $1C ; Floors and Layout
|0AA904| db $FC, $22, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 0A }
|0AA907| db $18, $2B, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 0A } | Size: 03
|0AA90A| db $FC, $C2, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 0C, 0A }
|0AA90D| db $33, $3A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0C, 0E } | Size: 0E
|0AA910| db $FC, $CA, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 0C, 2A }
|0AA913| db $18, $AB, $01 ; OBJ 001 - Wall (top, north) ↔ | { 06, 2A } | Size: 03
|0AA916| db $FC, $2A, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 02, 2A }
|0AA919| db $FC, $2C, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 30 }
|0AA91C| db $19, $C2, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 30 } | Size: 06
|0AA91F| db $FD, $2C, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 12, 30 }
|0AA922| db $4B, $3B, $62 ; OBJ 062 - Wall (top, east) ↕ | { 12, 0E } | Size: 0F
|0AA925| db $48, $B2, $62 ; OBJ 062 - Wall (top, east) ↕ | { 12, 2C } | Size: 02
|0AA928| db $FD, $22, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 12, 0A }
|0AA92B| db $58, $29, $02 ; OBJ 002 - Wall (top, south) ↔ | { 16, 0A } | Size: 01
|0AA92E| db $FD, $82, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 18, 0A }
|0AA931| db $60, $21, $62 ; OBJ 062 - Wall (top, east) ↕ | { 18, 08 } | Size: 01
|0AA934| db $FD, $81, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 18, 04 }
|0AA937| db $FE, $01, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 20, 04 }
|0AA93A| db $80, $21, $61 ; OBJ 061 - Wall (top, west) ↕ | { 20, 08 } | Size: 01
|0AA93D| db $FE, $02, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 20, 0A }
|0AA940| db $90, $2B, $02 ; OBJ 002 - Wall (top, south) ↔ | { 24, 0A } | Size: 03
|0AA943| db $FE, $A2, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 2A, 0A }
|0AA946| db $A9, $6A, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 2A, 1A } | Size: 06
|0AA949| db $AA, $38, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 0E } | Size: 08
|0AA94C| db $D8, $9A, $02 ; OBJ 002 - Wall (top, south) ↔ | { 36, 26 } | Size: 02
|0AA94F| db $FF, $A9, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 26 }
|0AA952| db $FD, $A4, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 1A, 12 }
|0AA955| db $78, $4A, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1E, 12 } | Size: 02
|0AA958| db $FE, $24, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 22, 12 }
|0AA95B| db $6B, $72, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 1A, 1C } | Size: 0E
|0AA95E| db $69, $59, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1A, 16 } | Size: 05
|0AA961| db $A9, $C1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 30 } | Size: 05
|0AA964| db $FE, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 2A, 3A }
|0AA967| db $8B, $72, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 22, 1C } | Size: 0E
|0AA96A| db $89, $59, $62 ; OBJ 062 - Wall (top, east) ↕ | { 22, 16 } | Size: 05
|0AA96D| db $C9, $C1, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 30 } | Size: 05
|0AA970| db $FF, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 32, 3A }
|0AA973| db $FC, $81, $39 ; OBJ 139 - Interroom spiral stairs down (top) | { 08, 04 }
|0AA976| db $FC, $6A, $B9 ; OBJ 139 - Interroom spiral stairs down (top) | { 06, 2A }
|0AA979| db $FD, $E4, $B9 ; OBJ 139 - Interroom spiral stairs down (top) | { 1E, 12 }
|0AA97C| db $FE, $41, $39 ; OBJ 139 - Interroom spiral stairs down (top) | { 24, 04 }
|0AA97F| db $54, $1C, $A4 ; OBJ 0A4 - Pit ⇲ | { 15, 07 } | Size: 00
|0AA982| db $3C, $40, $A4 ; OBJ 0A4 - Pit ⇲ | { 0F, 10 } | Size: 00
|0AA985| db $CC, $38, $A4 ; OBJ 0A4 - Pit ⇲ | { 33, 0E } | Size: 00
|0AA988| db $B4, $54, $A4 ; OBJ 0A4 - Pit ⇲ | { 2D, 15 } | Size: 00
|0AA98B| db $D8, $80, $A4 ; OBJ 0A4 - Pit ⇲ | { 36, 20 } | Size: 00
|0AA98E| db $C3, $23, $FA ; OBJ 22F - Pot | { 30, 08 }
|0AA991| db $02, $3B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 0E } | Size: 0B
|0AA994| db $02, $7A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 1E } | Size: 0A
|0AA997| db $0B, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 34 } | Size: 0E
|0AA99A| db $4B, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 34 } | Size: 0E
|0AA99D| db $6A, $87, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 1A, 21 } | Size: 0B
|0AA9A0| db $6B, $C3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1A, 30 } | Size: 0F
|0AA9A3| db $58, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 24 } | Size: 03
|0AA9A6| db $58, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 14 } | Size: 03
|0AA9A9| db $70, $12, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1C, 04 } | Size: 02
|0AA9AC| db $5B, $38, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 0E } | Size: 0C
|0AA9AF| db $58, $4A, $00 ; OBJ 000 - Ceiling ↔ | { 16, 12 } | Size: 02
|0AA9B2| db $98, $3B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 26, 0E } | Size: 03
|0AA9B5| db $98, $7A, $00 ; OBJ 000 - Ceiling ↔ | { 26, 1E } | Size: 02
|0AA9B8| db $98, $7D, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 26, 1F } | Size: 01
|0AA9BB| db $AC, $81, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 2B, 20 } | Size: 01
|0AA9BE| db $B0, $95, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 2C, 25 } | Size: 01
|0AA9C1| db $C4, $99, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 31, 26 } | Size: 01
|0AA9C4| db $C8, $AC, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 32, 2B } | Size: 00
|0AA9C7| db $D9, $AB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 2A } | Size: 07
|0AA9CA| db $D9, $E8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 3A } | Size: 04
|0AA9CD| db $FF, $FF ; Layer 1
|0AA9CF| db $FF, $FF ; Layer 2
|0AA9D1| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E8:
|0AA9D3| db $81, $0E ; DOORTYPE 0E | South 10
|0AA9D5| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00FD:
|0AA9D7| db $E1, $1C ; Floors and Layout
|0AA9D9| db $FC, $81, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 08, 04 }
|0AA9DC| db $09, $44, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 02, 11 } | Size: 04
|0AA9DF| db $20, $22, $61 ; OBJ 061 - Wall (top, west) ↕ | { 08, 08 } | Size: 02
|0AA9E2| db $08, $60, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 02, 18 } | Size: 00
|0AA9E5| db $09, $49, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 12 } | Size: 05
|0AA9E8| db $20, $7B, $02 ; OBJ 002 - Wall (top, south) ↔ | { 08, 1E } | Size: 03
|0AA9EB| db $FC, $E7, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 0E, 1E }
|0AA9EE| db $3B, $88, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0E, 22 } | Size: 0C
|0AA9F1| db $FC, $EE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0E, 3A }
|0AA9F4| db $FE, $6E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 26, 3A }
|0AA9F7| db $98, $DA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 26, 36 } | Size: 02
|0AA9FA| db $FE, $6C, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 26, 32 }
|0AA9FD| db $AA, $C8, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2A, 32 } | Size: 08
|0AAA00| db $FF, $AC, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 32 }
|0AAA03| db $FF, $AA, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 2A }
|0AAA06| db $AA, $A8, $01 ; OBJ 001 - Wall (top, north) ↔ | { 2A, 2A } | Size: 08
|0AAA09| db $FE, $6A, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 26, 2A }
|0AAA0C| db $99, $88, $62 ; OBJ 062 - Wall (top, east) ↕ | { 26, 22 } | Size: 04
|0AAA0F| db $FE, $67, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 26, 1E }
|0AAA12| db $71, $79, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1C, 1E } | Size: 05
|0AAA15| db $49, $50, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 12, 14 } | Size: 04
|0AAA18| db $4A, $20, $62 ; OBJ 062 - Wall (top, east) ↕ | { 12, 08 } | Size: 08
|0AAA1B| db $FD, $21, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 12, 04 }
|0AAA1E| db $74, $24, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 1D, 09 } | Size: 00
|0AAA21| db $74, $38, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 1D, 0E } | Size: 00
|0AAA24| db $75, $28, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1D, 0A } | Size: 04
|0AAA27| db $FF, $61, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 36, 04 }
|0AAA2A| db $D9, $22, $62 ; OBJ 062 - Wall (top, east) ↕ | { 36, 08 } | Size: 06
|0AAA2D| db $8E, $52, $02 ; OBJ 002 - Wall (top, south) ↔ | { 23, 14 } | Size: 0A
|0AAA30| db $FF, $65, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 36, 14 }
|0AAA33| db $FD, $19, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 11, 27 }
|0AAA36| db $55, $9E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 15, 27 } | Size: 06
|0AAA39| db $FE, $39, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 23, 27 }
|0AAA3C| db $44, $C8, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 11, 32 } | Size: 00
|0AAA3F| db $45, $AD, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 11, 2B } | Size: 05
|0AAA42| db $FD, $1D, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 11, 37 }
|0AAA45| db $55, $DE, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 15, 37 } | Size: 06
|0AAA48| db $8D, $AD, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 23, 2B } | Size: 05
|0AAA4B| db $FE, $3D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 23, 37 }
|0AAA4E| db $FD, $89, $F2 ; OBJ 132 - Intraroom stairs north (merged layers) | { 18, 27 }
|0AAA51| db $B3, $33, $FA ; OBJ 22F - Pot | { 2C, 0C }
|0AAA54| db $CB, $33, $FA ; OBJ 22F - Pot | { 32, 0C }
|0AAA57| db $AB, $BB, $FA ; OBJ 22F - Pot | { 2A, 2E }
|0AAA5A| db $AB, $C3, $FA ; OBJ 22F - Pot | { 2A, 30 }
|0AAA5D| db $44, $99, $22 ; OBJ 022 - Rail ↔ | { 11, 26 } | Size: 01
|0AAA60| db $80, $9B, $22 ; OBJ 022 - Rail ↔ | { 20, 26 } | Size: 03
|0AAA63| db $28, $48, $DD ; OBJ 0DD - Table / Rock ⇲| { 0A, 12 } | Size: 00
|0AAA66| db $99, $38, $DD ; OBJ 0DD - Table / Rock ⇲| { 26, 0E } | Size: 04
|0AAA69| db $FC, $E1, $38 ; OBJ 138 - Interroom spiral stairs up (top) | { 0E, 04 }
|0AAA6C| db $FE, $E1, $38 ; OBJ 138 - Interroom spiral stairs up (top) | { 2E, 04 }
|0AAA6F| db $08, $31, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 02, 0C } | Size: 01
|0AAA72| db $01, $11, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 04 } | Size: 05
|0AAA75| db $08, $75, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 02, 1D } | Size: 01
|0AAA78| db $0A, $8B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 22 } | Size: 0B
|0AAA7B| db $0A, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 32 } | Size: 0A
|0AAA7E| db $AB, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2A, 36 } | Size: 0D
|0AAA81| db $E8, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 36 } | Size: 01
|0AAA84| db $58, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 04 } | Size: 03
|0AAA87| db $64, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 19, 04 } | Size: 03
|0AAA8A| db $59, $50, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 14 } | Size: 04
|0AAA8D| db $74, $11, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 1D, 04 } | Size: 01
|0AAA90| db $74, $4D, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 1D, 13 } | Size: 01
|0AAA93| db $5C, $61, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 17, 18 } | Size: 01
|0AAA96| db $E8, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 04 } | Size: 03
|0AAA99| db $E8, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 14 } | Size: 03
|0AAA9C| db $73, $60, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1C, 18 } | Size: 0C
|0AAA9F| db $73, $68, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1C, 1A } | Size: 0C
|0AAAA2| db $AB, $63, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2A, 18 } | Size: 0F
|0AAAA5| db $AA, $A2, $00 ; OBJ 000 - Ceiling ↔ | { 2A, 28 } | Size: 0A
|0AAAA8| db $E8, $90, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 24 } | Size: 00
|0AAAAB| db $FF, $FF ; Layer 1
|0AAAAD| db $FF, $FF ; Layer 2
|0AAAAF| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00FD:
|0AAAB1| db $A1, $10 ; DOORTYPE 10 | South 14
|0AAAB3| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00ED:
|0AAAB5| db $81, $1C ; Floors and Layout
|0AAAB7| db $FC, $91, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 09, 04 }
|0AAABA| db $25, $22, $61 ; OBJ 061 - Wall (top, west) ↕ | { 09, 08 } | Size: 06
|0AAABD| db $FC, $94, $C4 ; OBJ 104 - Corner (top, convex) ▟ | { 09, 13 }
|0AAAC0| db $14, $4E, $01 ; OBJ 001 - Wall (top, north) ↔ | { 05, 13 } | Size: 02
|0AAAC3| db $FC, $24, $C0 ; OBJ 100 - Corner (top, concave) ▛ | { 02, 13 }
|0AAAC6| db $08, $6E, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 02, 1B } | Size: 02
|0AAAC9| db $08, $6E, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 1B } | Size: 02
|0AAACC| db $28, $8F, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0A, 23 } | Size: 03
|0AAACF| db $40, $8F, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 10, 23 } | Size: 03
|0AAAD2| db $55, $B0, $61 ; OBJ 061 - Wall (top, west) ↕ | { 15, 2C } | Size: 04
|0AAAD5| db $FD, $5C, $C1 ; OBJ 101 - Corner (top, concave) ▙ | { 15, 33 }
|0AAAD8| db $64, $CF, $02 ; OBJ 002 - Wall (top, south) ↔ | { 19, 33 } | Size: 03
|0AAADB| db $FD, $FC, $C3 ; OBJ 103 - Corner (top, concave) ▟ | { 1F, 33 }
|0AAADE| db $7E, $85, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1F, 21 } | Size: 09
|0AAAE1| db $FD, $F7, $42 ; OBJ 102 - Corner (top, concave) ▜ | { 1F, 1D }
|0AAAE4| db $6C, $76, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1B, 1D } | Size: 02
|0AAAE7| db $FD, $77, $46 ; OBJ 106 - Corner (top, convex) ▙ | { 17, 1D }
|0AAAEA| db $5C, $59, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 17, 16 } | Size: 01
|0AAAED| db $5C, $5F, $62 ; OBJ 062 - Wall (top, east) ↕ | { 17, 17 } | Size: 03
|0AAAF0| db $78, $43, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1E, 10 } | Size: 03
|0AAAF3| db $FE, $44, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 24, 10 }
|0AAAF6| db $90, $39, $62 ; OBJ 062 - Wall (top, east) ↕ | { 24, 0E } | Size: 01
|0AAAF9| db $FE, $42, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 24, 0A }
|0AAAFC| db $61, $2A, $01 ; OBJ 001 - Wall (top, north) ↔ | { 18, 0A } | Size: 06
|0AAAFF| db $FD, $42, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 14, 0A }
|0AAB02| db $50, $21, $62 ; OBJ 062 - Wall (top, east) ↕ | { 14, 08 } | Size: 01
|0AAB05| db $FD, $41, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 14, 04 }
|0AAB08| db $FE, $A1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2A, 04 }
|0AAB0B| db $A9, $20, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 2A, 08 } | Size: 04
|0AAB0E| db $A8, $22, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 08 } | Size: 02
|0AAB11| db $A9, $AC, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 2A, 2B } | Size: 04
|0AAB14| db $C2, $4A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 30, 12 } | Size: 0A
|0AAB17| db $A9, $B3, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 2C } | Size: 07
|0AAB1A| db $FE, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 2A, 3A }
|0AAB1D| db $D0, $E6, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 34, 39 } | Size: 02
|0AAB20| db $D0, $12, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 34, 04 } | Size: 02
|0AAB23| db $E3, $33, $62 ; OBJ 062 - Wall (top, east) ↕ | { 38, 0C } | Size: 0F
|0AAB26| db $E1, $AA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 38, 2A } | Size: 06
|0AAB29| db $31, $70, $DD ; OBJ 0DD - Table / Rock ⇲| { 0C, 1C } | Size: 04
|0AAB2C| db $68, $91, $DD ; OBJ 0DD - Table / Rock ⇲| { 1A, 24 } | Size: 01
|0AAB2F| db $FC, $E1, $39 ; OBJ 139 - Interroom spiral stairs down (top) | { 0E, 04 }
|0AAB32| db $FE, $E1, $39 ; OBJ 139 - Interroom spiral stairs down (top) | { 2E, 04 }
|0AAB35| db $20, $58, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 08, 16 } | Size: 00
|0AAB38| db $20, $59, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 08, 16 } | Size: 01
|0AAB3B| db $20, $5D, $6A ; OBJ 06A - Pit edge (west) ↕ | { 08, 17 } | Size: 01
|0AAB3E| db $2C, $5D, $6B ; OBJ 06B - Pit edge (east) ↕ | { 0B, 17 } | Size: 01
|0AAB41| db $20, $65, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 08, 19 } | Size: 01
|0AAB44| db $3C, $36, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 0F, 0D } | Size: 02
|0AAB47| db $3C, $35, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 0F, 0D } | Size: 01
|0AAB4A| db $3C, $65, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 0F, 19 } | Size: 01
|0AAB4D| db $3E, $3A, $6A ; OBJ 06A - Pit edge (west) ↕ | { 0F, 0E } | Size: 0A
|0AAB50| db $4A, $3A, $6B ; OBJ 06B - Pit edge (east) ↕ | { 12, 0E } | Size: 0A
|0AAB53| db $84, $34, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 21, 0D } | Size: 00
|0AAB56| db $50, $80, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 14, 20 } | Size: 00
|0AAB59| db $61, $B1, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 18, 2C } | Size: 05
|0AAB5C| db $B4, $B8, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 2D, 2E } | Size: 00
|0AAB5F| db $D4, $B8, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 35, 2E } | Size: 00
|0AAB62| db $84, $35, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 21, 0D } | Size: 01
|0AAB65| db $84, $41, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 21, 10 } | Size: 01
|0AAB68| db $84, $39, $6A ; OBJ 06A - Pit edge (west) ↕ | { 21, 0E } | Size: 01
|0AAB6B| db $90, $39, $6B ; OBJ 06B - Pit edge (east) ↕ | { 24, 0E } | Size: 01
|0AAB6E| db $50, $81, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 14, 20 } | Size: 01
|0AAB71| db $50, $8D, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 14, 23 } | Size: 01
|0AAB74| db $50, $85, $6A ; OBJ 06A - Pit edge (west) ↕ | { 14, 21 } | Size: 01
|0AAB77| db $5C, $85, $6B ; OBJ 06B - Pit edge (east) ↕ | { 17, 21 } | Size: 01
|0AAB7A| db $61, $B1, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 18, 2C } | Size: 05
|0AAB7D| db $61, $CD, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 18, 33 } | Size: 05
|0AAB80| db $61, $B5, $6A ; OBJ 06A - Pit edge (west) ↕ | { 18, 2D } | Size: 05
|0AAB83| db $7D, $B5, $6B ; OBJ 06B - Pit edge (east) ↕ | { 1F, 2D } | Size: 05
|0AAB86| db $B4, $BA, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 2D, 2E } | Size: 02
|0AAB89| db $B4, $C6, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 2D, 31 } | Size: 02
|0AAB8C| db $B4, $BD, $6A ; OBJ 06A - Pit edge (west) ↕ | { 2D, 2F } | Size: 01
|0AAB8F| db $C4, $BD, $6B ; OBJ 06B - Pit edge (east) ↕ | { 31, 2F } | Size: 01
|0AAB92| db $D0, $BA, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 34, 2E } | Size: 02
|0AAB95| db $D0, $C6, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 34, 31 } | Size: 02
|0AAB98| db $D0, $BD, $6A ; OBJ 06A - Pit edge (west) ↕ | { 34, 2F } | Size: 01
|0AAB9B| db $E0, $BD, $6B ; OBJ 06B - Pit edge (east) ↕ | { 38, 2F } | Size: 01
|0AAB9E| db $05, $0F, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 01, 03 } | Size: 07
|0AABA1| db $08, $83, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 02, 20 } | Size: 03
|0AABA4| db $40, $A0, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 10, 28 } | Size: 00
|0AABA7| db $03, $9F, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 27 } | Size: 0F
|0AABAA| db $03, $DD, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 37 } | Size: 0D
|0AABAD| db $35, $B3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 0D, 2C } | Size: 07
|0AABB0| db $43, $DD, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 10, 37 } | Size: 0D
|0AABB3| db $F0, $00, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 00 } | Size: 00
|0AABB6| db $D4, $13, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 35, 04 } | Size: 03
|0AABB9| db $D4, $F7, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 35, 3D } | Size: 03
|0AABBC| db $A8, $35, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 2A, 0D } | Size: 01
|0AABBF| db $A8, $99, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 2A, 26 } | Size: 01
|0AABC2| db $63, $09, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 18, 02 } | Size: 0D
|0AABC5| db $81, $DD, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 20, 37 } | Size: 05
|0AABC8| db $A0, $00, $60 ; OBJ 060 - Ceiling ↕ | { 28, 00 } | Size: 00
|0AABCB| db $6C, $5C, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 1B, 17 } | Size: 00
|0AABCE| db $7B, $51, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1E, 14 } | Size: 0D
|0AABD1| db $6C, $60, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1B, 18 } | Size: 00
|0AABD4| db $6E, $6E, $00 ; OBJ 000 - Ceiling ↔ | { 1B, 1B } | Size: 0A
|0AABD7| db $A1, $4B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 28, 12 } | Size: 07
|0AABDA| db $8C, $77, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 23, 1D } | Size: 03
|0AABDD| db $A1, $88, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 28, 22 } | Size: 04
|0AABE0| db $8C, $B6, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 23, 2D } | Size: 02
|0AABE3| db $9B, $75, $60 ; OBJ 060 - Ceiling ↕ | { 26, 1D } | Size: 0D
|0AABE6| db $FF, $FF ; Layer 1
|0AABE8| db $FF, $FF ; Layer 2
|0AABEA| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00ED:
|0AABEC| db $81, $0E ; DOORTYPE 0E | South 10
|0AABEE| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00FF:
|0AABF0| db $E1, $14 ; Floors and Layout
|0AABF2| db $FC, $25, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 14 }
|0AABF5| db $18, $51, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 14 } | Size: 01
|0AABF8| db $FC, $85, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 08, 14 }
|0AABFB| db $20, $61, $61 ; OBJ 061 - Wall (top, west) ↕ | { 08, 18 } | Size: 01
|0AABFE| db $FC, $86, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 08, 1A }
|0AAC01| db $FD, $46, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 14, 1A }
|0AAC04| db $50, $61, $62 ; OBJ 062 - Wall (top, east) ↕ | { 14, 18 } | Size: 01
|0AAC07| db $FD, $45, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 14, 14 }
|0AAC0A| db $60, $51, $02 ; OBJ 002 - Wall (top, south) ↔ | { 18, 14 } | Size: 01
|0AAC0D| db $FD, $A5, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 1A, 14 }
|0AAC10| db $FE, $A1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2A, 04 }
|0AAC13| db $AA, $21, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 08 } | Size: 09
|0AAC16| db $FE, $A6, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 2A, 1A }
|0AAC19| db $FF, $21, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 32, 04 }
|0AAC1C| db $CA, $21, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 08 } | Size: 09
|0AAC1F| db $FF, $26, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 32, 1A }
|0AAC22| db $FC, $A9, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 0A, 24 }
|0AAC25| db $29, $A2, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0A, 28 } | Size: 06
|0AAC28| db $FC, $AD, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 0A, 34 }
|0AAC2B| db $3A, $D3, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0E, 34 } | Size: 0B
|0AAC2E| db $90, $D0, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 24, 34 } | Size: 00
|0AAC31| db $FE, $49, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 24, 24 }
|0AAC34| db $90, $A3, $61 ; OBJ 061 - Wall (top, west) ↕ | { 24, 28 } | Size: 03
|0AAC37| db $FE, $4B, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 24, 2E }
|0AAC3A| db $59, $BB, $01 ; OBJ 001 - Wall (top, north) ↔ | { 16, 2E } | Size: 07
|0AAC3D| db $FD, $2B, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 12, 2E }
|0AAC40| db $48, $A3, $62 ; OBJ 062 - Wall (top, east) ↕ | { 12, 28 } | Size: 03
|0AAC43| db $FD, $29, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 12, 24 }
|0AAC46| db $18, $34, $3D ; OBJ 03D - Tall torches ↔ | { 06, 0D } | Size: 00
|0AAC49| db $60, $34, $3D ; OBJ 03D - Tall torches ↔ | { 18, 0D } | Size: 00
|0AAC4C| db $20, $37, $33 ; OBJ 033 - Carpet ↔ | { 08, 0D } | Size: 03
|0AAC4F| db $1F, $32, $34 ; OBJ 034 - Carpet trim ↔ | { 07, 0C } | Size: 0E
|0AAC52| db $1F, $46, $34 ; OBJ 034 - Carpet trim ↔ | { 07, 11 } | Size: 0E
|0AAC55| db $B9, $22, $F9 ; OBJ 219 - Chest | { 2E, 08 }
|0AAC58| db $C1, $22, $F9 ; OBJ 219 - Chest | { 30, 08 }
|0AAC5B| db $BB, $43, $FA ; OBJ 22F - Pot | { 2E, 10 }
|0AAC5E| db $C3, $43, $FA ; OBJ 22F - Pot | { 30, 10 }
|0AAC61| db $FF, $69, $38 ; OBJ 138 - Interroom spiral stairs up (top) | { 36, 24 }
|0AAC64| db $A2, $C0, $DD ; OBJ 0DD - Table / Rock ⇲| { 28, 30 } | Size: 08
|0AAC67| db $CA, $C2, $DD ; OBJ 0DD - Table / Rock ⇲| { 32, 30 } | Size: 0A
|0AAC6A| db $E3, $E3, $FA ; OBJ 22F - Pot | { 38, 38 }
|0AAC6D| db $01, $61, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 18 } | Size: 05
|0AAC70| db $61, $61, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 18, 18 } | Size: 05
|0AAC73| db $89, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 04 } | Size: 07
|0AAC76| db $89, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 14 } | Size: 06
|0AAC79| db $D9, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 04 } | Size: 07
|0AAC7C| db $D9, $52, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 14 } | Size: 06
|0AAC7F| db $09, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 24 } | Size: 07
|0AAC82| db $09, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 34 } | Size: 06
|0AAC85| db $2B, $E1, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 0A, 38 } | Size: 0D
|0AAC88| db $62, $E1, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 18, 38 } | Size: 09
|0AAC8B| db $90, $E5, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 24, 39 } | Size: 01
|0AAC8E| db $5A, $8A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 22 } | Size: 0A
|0AAC91| db $89, $91, $60 ; OBJ 060 - Ceiling ↕ | { 22, 24 } | Size: 05
|0AAC94| db $FF, $FF ; Layer 1
|0AAC96| db $FF, $FF ; Layer 2
|0AAC98| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00FF:
|0AAC9A| db $60, $2E ; DOORTYPE 2E | North 0C
|0AAC9C| db $80, $2E ; DOORTYPE 2E | North 10
|0AAC9E| db $81, $0E ; DOORTYPE 0E | South 10
|0AACA0| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00EF:
|0AACA2| db $81, $14 ; Floors and Layout
|0AACA4| db $88, $4A, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 22, 12 } | Size: 02
|0AACA7| db $D8, $66, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 36, 19 } | Size: 02
|0AACAA| db $88, $4A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 22, 12 } | Size: 02
|0AACAD| db $E8, $4A, $62 ; OBJ 062 - Wall (top, east) ↕ | { 3A, 12 } | Size: 02
|0AACB0| db $FC, $A9, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 0A, 24 }
|0AACB3| db $28, $A3, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0A, 28 } | Size: 03
|0AACB6| db $FC, $AB, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0A, 2E }
|0AACB9| db $39, $BA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0E, 2E } | Size: 06
|0AACBC| db $FD, $AB, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 1A, 2E }
|0AACBF| db $69, $C8, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1A, 32 } | Size: 04
|0AACC2| db $FD, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 1A, 3A }
|0AACC5| db $FE, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 22, 3A }
|0AACC8| db $89, $C8, $62 ; OBJ 062 - Wall (top, east) ↕ | { 22, 32 } | Size: 04
|0AACCB| db $FE, $2B, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 22, 2E }
|0AACCE| db $9A, $BA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 26, 2E } | Size: 0A
|0AACD1| db $FF, $AB, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 2E }
|0AACD4| db $FE, $69, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 26, 24 }
|0AACD7| db $FE, $6A, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 26, 28 }
|0AACDA| db $69, $A2, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1A, 28 } | Size: 06
|0AACDD| db $FD, $6A, $06 ; OBJ 106 - Corner (top, convex) ▙ | { 16, 28 }
|0AACE0| db $FD, $69, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 16, 24 }
|0AACE3| db $FC, $E9, $38 ; OBJ 138 - Interroom spiral stairs up (top) | { 0E, 24 }
|0AACE6| db $FF, $69, $39 ; OBJ 139 - Interroom spiral stairs down (top) | { 36, 24 }
|0AACE9| db $A4, $A1, $C3 ; OBJ 0C3 - Layer 2 pit mask (medium) ⇲ | { 29, 28 } | Size: 01
|0AACEC| db $AF, $AC, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 2B, 2B } | Size: 0C
|0AACEF| db $A4, $9D, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 29, 27 } | Size: 01
|0AACF2| db $A5, $A1, $6A ; OBJ 06A - Pit edge (west) ↕ | { 29, 28 } | Size: 05
|0AACF5| db $A7, $BB, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 29, 2E } | Size: 0F
|0AACF8| db $B0, $A2, $6B ; OBJ 06B - Pit edge (east) ↕ | { 2C, 28 } | Size: 02
|0AACFB| db $B3, $AC, $2D ; OBJ 02D - Pit edge ━━┓ (north) ↔ | { 2C, 2B } | Size: 0C
|0AACFE| db $E8, $B1, $6B ; OBJ 06B - Pit edge (east) ↕ | { 3A, 2C } | Size: 01
|0AAD01| db $99, $22, $F9 ; OBJ 219 - Chest | { 26, 08 }
|0AAD04| db $B1, $22, $F9 ; OBJ 219 - Chest | { 2C, 08 }
|0AAD07| db $C9, $22, $F9 ; OBJ 219 - Chest | { 32, 08 }
|0AAD0A| db $E1, $22, $F9 ; OBJ 219 - Chest | { 38, 08 }
|0AAD0D| db $B9, $2A, $F9 ; OBJ 219 - Chest | { 2E, 0A }
|0AAD10| db $98, $43, $B8 ; OBJ 0B8 - Blue pegs ↔ | { 26, 10 } | Size: 03
|0AAD13| db $B3, $38, $DD ; OBJ 0DD - Table / Rock ⇲| { 2C, 0E } | Size: 0C
|0AAD16| db $D8, $42, $B8 ; OBJ 0B8 - Blue pegs ↔ | { 36, 10 } | Size: 02
|0AAD19| db $88, $5F, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 22, 17 } | Size: 03
|0AAD1C| db $DC, $77, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 37, 1D } | Size: 03
|0AAD1F| db $09, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 24 } | Size: 07
|0AAD22| db $0B, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 32 } | Size: 0E
|0AAD25| db $49, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 32 } | Size: 06
|0AAD28| db $9B, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 26, 32 } | Size: 0E
|0AAD2B| db $D9, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 32 } | Size: 06
|0AAD2E| db $6A, $90, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1A, 24 } | Size: 08
|0AAD31| db $FF, $FF ; Layer 1
|0AAD33| db $FF, $FF ; Layer 2
|0AAD35| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00EF:
|0AAD37| db $80, $38 ; DOORTYPE 38 | North 10
|0AAD39| db $71, $0E ; DOORTYPE 0E | South 0E
|0AAD3B| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00DF:
|0AAD3D| db $51, $14 ; Floors and Layout
|0AAD3F| db $FC, $89, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 08, 24 }
|0AAD42| db $21, $A0, $61 ; OBJ 061 - Wall (top, west) ↕ | { 08, 28 } | Size: 04
|0AAD45| db $FC, $8C, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 08, 30 }
|0AAD48| db $31, $C1, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0C, 30 } | Size: 05
|0AAD4B| db $FD, $6C, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 16, 30 }
|0AAD4E| db $58, $D3, $61 ; OBJ 061 - Wall (top, west) ↕ | { 16, 34 } | Size: 03
|0AAD51| db $FD, $6E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 16, 3A }
|0AAD54| db $FE, $69, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 26, 24 }
|0AAD57| db $9A, $A1, $62 ; OBJ 062 - Wall (top, east) ↕ | { 26, 28 } | Size: 09
|0AAD5A| db $FE, $6E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 26, 3A }
|0AAD5D| db $FC, $B9, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 0B, 27 }
|0AAD60| db $3E, $9D, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0F, 27 } | Size: 09
|0AAD63| db $FE, $39, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 23, 27 }
|0AAD66| db $2C, $AC, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0B, 2B } | Size: 00
|0AAD69| db $FC, $BB, $49 ; OBJ 109 - Corner (bottom, concave) ▙ | { 0B, 2D }
|0AAD6C| db $3D, $B4, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0F, 2D } | Size: 04
|0AAD6F| db $FD, $9B, $4D ; OBJ 10D - Corner (bottom, convex) ▜ | { 19, 2D }
|0AAD72| db $64, $C4, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 19, 31 } | Size: 00
|0AAD75| db $FD, $9C, $89 ; OBJ 109 - Corner (bottom, concave) ▙ | { 19, 32 }
|0AAD78| db $8C, $AF, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 23, 2B } | Size: 03
|0AAD7B| db $FE, $3C, $8B ; OBJ 10B - Corner (bottom, concave) ▟ | { 23, 32 }
|0AAD7E| db $74, $CA, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 1D, 32 } | Size: 02
|0AAD81| db $78, $CB, $F9 ; OBJ 21C - Intraroom stairs south (separate layers) | { 1E, 32 }
|0AAD84| db $64, $D9, $22 ; OBJ 022 - Rail ↔ | { 19, 36 } | Size: 01
|0AAD87| db $88, $D9, $22 ; OBJ 022 - Rail ↔ | { 22, 36 } | Size: 01
|0AAD8A| db $01, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 24 } | Size: 07
|0AAD8D| db $0B, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 34 } | Size: 0E
|0AAD90| db $48, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 34 } | Size: 02
|0AAD93| db $AB, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2A, 24 } | Size: 0F
|0AAD96| db $AB, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2A, 34 } | Size: 0E
|0AAD99| db $E8, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 24 } | Size: 03
|0AAD9C| db $E8, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 3A, 34 } | Size: 02
|0AAD9F| db $FF, $FF ; Layer 1
|0AADA1| db $FC, $E9, $FB ; OBJ 13B - Interroom spiral stairs down (bottom) | { 0E, 27 }
|0AADA4| db $FF, $FF ; Layer 2
|0AADA6| db $2F, $9D, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0B, 27 } | Size: 0D
|0AADA9| db $2F, $B4, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0B, 2D } | Size: 0C
|0AADAC| db $6E, $9E, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1B, 27 } | Size: 0A
|0AADAF| db $6A, $B9, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 1A, 2E } | Size: 09
|0AADB2| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00DF:
|0AADB4| db $71, $0E ; DOORTYPE 0E | South 0E
|0AADB6| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00EB:
|0AADB8| db $81, $04 ; Floors and Layout
|0AADBA| db $FE, $A1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2A, 04 }
|0AADBD| db $A8, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 08 } | Size: 03
|0AADC0| db $FE, $A3, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 2A, 0E }
|0AADC3| db $A0, $39, $01 ; OBJ 001 - Wall (top, north) ↔ | { 28, 0E } | Size: 01
|0AADC6| db $91, $6C, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 24, 1B } | Size: 04
|0AADC9| db $91, $47, $61 ; OBJ 061 - Wall (top, west) ↕ | { 24, 11 } | Size: 07
|0AADCC| db $FE, $43, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 24, 0E }
|0AADCF| db $AA, $97, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 25 } | Size: 0B
|0AADD2| db $FE, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 2A, 3A }
|0AADD5| db $FF, $21, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 32, 04 }
|0AADD8| db $CB, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 08 } | Size: 0F
|0AADDB| db $CA, $9A, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 26 } | Size: 0A
|0AADDE| db $FF, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 32, 3A }
|0AADE1| db $FE, $E1, $39 ; OBJ 139 - Interroom spiral stairs down (top) | { 2E, 04 }
|0AADE4| db $AD, $48, $A4 ; OBJ 0A4 - Pit ⇲ | { 2B, 12 } | Size: 04
|0AADE7| db $9F, $47, $FA ; OBJ 22F - Pot | { 27, 11 }
|0AADEA| db $A7, $47, $FA ; OBJ 22F - Pot | { 29, 11 }
|0AADED| db $B3, $73, $FA ; OBJ 22F - Pot | { 2C, 1C }
|0AADF0| db $BB, $73, $FA ; OBJ 22F - Pot | { 2E, 1C }
|0AADF3| db $C3, $73, $FA ; OBJ 22F - Pot | { 30, 1C }
|0AADF6| db $B8, $78, $A4 ; OBJ 0A4 - Pit ⇲ | { 2E, 1E } | Size: 00
|0AADF9| db $89, $0A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 02 } | Size: 06
|0AADFC| db $88, $00, $60 ; OBJ 060 - Ceiling ↕ | { 22, 00 } | Size: 00
|0AADFF| db $90, $82, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 24, 20 } | Size: 02
|0AAE02| db $89, $9B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 26 } | Size: 07
|0AAE05| db $89, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 36 } | Size: 05
|0AAE08| db $D9, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 04 } | Size: 07
|0AAE0B| db $D9, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 14 } | Size: 07
|0AAE0E| db $D9, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 24 } | Size: 07
|0AAE11| db $D9, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 34 } | Size: 06
|0AAE14| db $FF, $FF ; Layer 1
|0AAE16| db $FF, $FF ; Layer 2
|0AAE18| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00EB:
|0AAE1A| db $81, $0E ; DOORTYPE 0E | South 10
|0AAE1C| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00FB:
|0AAE1E| db $E1, $1C ; Floors and Layout
|0AAE20| db $FE, $A1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2A, 04 }
|0AAE23| db $91, $54, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 24, 15 } | Size: 04
|0AAE26| db $A9, $20, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 08 } | Size: 04
|0AAE29| db $6A, $C4, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 1A, 31 } | Size: 08
|0AAE2C| db $92, $59, $61 ; OBJ 061 - Wall (top, west) ↕ | { 24, 16 } | Size: 09
|0AAE2F| db $69, $C8, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1A, 32 } | Size: 04
|0AAE32| db $FD, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 1A, 3A }
|0AAE35| db $FE, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 22, 3A }
|0AAE38| db $88, $D6, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 22, 35 } | Size: 02
|0AAE3B| db $88, $DA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 22, 36 } | Size: 02
|0AAE3E| db $A8, $BA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2A, 2E } | Size: 02
|0AAE41| db $FE, $EB, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 2E, 2E }
|0AAE44| db $BA, $9C, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 2E, 27 } | Size: 08
|0AAE47| db $B8, $A3, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2E, 28 } | Size: 03
|0AAE4A| db $C9, $30, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 32, 0C } | Size: 04
|0AAE4D| db $E1, $58, $62 ; OBJ 062 - Wall (top, east) ↕ | { 38, 16 } | Size: 04
|0AAE50| db $C9, $20, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 08 } | Size: 04
|0AAE53| db $FF, $21, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 32, 04 }
|0AAE56| db $FE, $E1, $38 ; OBJ 138 - Interroom spiral stairs up (top) | { 2E, 04 }
|0AAE59| db $9C, $60, $A4 ; OBJ 0A4 - Pit ⇲ | { 27, 18 } | Size: 00
|0AAE5C| db $D4, $60, $A4 ; OBJ 0A4 - Pit ⇲ | { 35, 18 } | Size: 00
|0AAE5F| db $13, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 04, 04 } | Size: 0F
|0AAE62| db $53, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 14, 04 } | Size: 0F
|0AAE65| db $89, $12, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 04 } | Size: 06
|0AAE68| db $90, $41, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 24, 10 } | Size: 01
|0AAE6B| db $13, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 04, 14 } | Size: 0F
|0AAE6E| db $53, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 14, 14 } | Size: 0F
|0AAE71| db $13, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 04, 24 } | Size: 0F
|0AAE74| db $13, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 04, 34 } | Size: 0E
|0AAE77| db $69, $A1, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 1A, 28 } | Size: 05
|0AAE7A| db $53, $90, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 14, 24 } | Size: 0C
|0AAE7D| db $49, $A3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 28 } | Size: 07
|0AAE80| db $49, $E1, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 38 } | Size: 05
|0AAE83| db $9C, $D4, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 27, 35 } | Size: 00
|0AAE86| db $9B, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 26, 36 } | Size: 0D
|0AAE89| db $AF, $C9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2B, 32 } | Size: 0D
|0AAE8C| db $CA, $A3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 28 } | Size: 0B
|0AAE8F| db $D9, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 36 } | Size: 05
|0AAE92| db $CD, $9D, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 33, 27 } | Size: 05
|0AAE95| db $DC, $41, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 37, 10 } | Size: 01
|0AAE98| db $D9, $12, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 04 } | Size: 06
|0AAE9B| db $F3, $40, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 10 } | Size: 0C
|0AAE9E| db $FF, $FF ; Layer 1
|0AAEA0| db $FF, $FF ; Layer 2
|0AAEA2| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00FB:
|0AAEA4| db $71, $0E ; DOORTYPE 0E | South 0E
|0AAEA6| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00EE:
|0AAEA8| db $81, $1C ; Floors and Layout
|0AAEAA| db $09, $34, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 02, 0D } | Size: 04
|0AAEAD| db $08, $3A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 0E } | Size: 02
|0AAEB0| db $09, $C0, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 02, 30 } | Size: 04
|0AAEB3| db $08, $C2, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 30 } | Size: 02
|0AAEB6| db $FF, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 32, 3A }
|0AAEB9| db $C8, $E1, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 38 } | Size: 01
|0AAEBC| db $B4, $D3, $01 ; OBJ 001 - Wall (top, north) ↔ | { 2D, 34 } | Size: 03
|0AAEBF| db $FF, $2D, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 32, 34 }
|0AAEC2| db $20, $B5, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 08, 2D } | Size: 01
|0AAEC5| db $3F, $D3, $01 ; OBJ 001 - Wall (top, north) ↔ | { 0F, 34 } | Size: 0F
|0AAEC8| db $20, $41, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 08, 10 } | Size: 01
|0AAECB| db $23, $47, $62 ; OBJ 062 - Wall (top, east) ↕ | { 08, 11 } | Size: 0F
|0AAECE| db $20, $BD, $62 ; OBJ 062 - Wall (top, east) ↕ | { 08, 2F } | Size: 01
|0AAED1| db $3F, $2B, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0F, 0A } | Size: 0F
|0AAED4| db $D1, $10, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 34, 04 } | Size: 04
|0AAED7| db $D1, $A4, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 34, 29 } | Size: 04
|0AAEDA| db $EA, $3B, $62 ; OBJ 062 - Wall (top, east) ↕ | { 3A, 0E } | Size: 0B
|0AAEDD| db $B4, $2A, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2D, 0A } | Size: 02
|0AAEE0| db $C4, $29, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 31, 0A } | Size: 01
|0AAEE3| db $C4, $8D, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 31, 23 } | Size: 01
|0AAEE6| db $D2, $44, $61 ; OBJ 061 - Wall (top, west) ↕ | { 34, 11 } | Size: 08
|0AAEE9| db $73, $A8, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1C, 2A } | Size: 0C
|0AAEEC| db $49, $80, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 12, 20 } | Size: 04
|0AAEEF| db $FD, $25, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 12, 14 }
|0AAEF2| db $49, $62, $61 ; OBJ 061 - Wall (top, west) ↕ | { 12, 18 } | Size: 06
|0AAEF5| db $5A, $52, $01 ; OBJ 001 - Wall (top, north) ↔ | { 16, 14 } | Size: 0A
|0AAEF8| db $FE, $A5, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 2A, 14 }
|0AAEFB| db $A8, $61, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2A, 18 } | Size: 01
|0AAEFE| db $FE, $A6, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 2A, 1A }
|0AAF01| db $71, $6B, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1C, 1A } | Size: 07
|0AAF04| db $60, $75, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 18, 1D } | Size: 01
|0AAF07| db $FD, $86, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 18, 1A }
|0AAF0A| db $60, $7D, $62 ; OBJ 062 - Wall (top, east) ↕ | { 18, 1F } | Size: 01
|0AAF0D| db $60, $79, $62 ; OBJ 062 - Wall (top, east) ↕ | { 18, 1E } | Size: 01
|0AAF10| db $7E, $91, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1F, 24 } | Size: 09
|0AAF13| db $9C, $5C, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 27, 17 } | Size: 00
|0AAF16| db $9C, $5D, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 27, 17 } | Size: 01
|0AAF19| db $9C, $69, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 27, 1A } | Size: 01
|0AAF1C| db $9C, $61, $6A ; OBJ 06A - Pit edge (west) ↕ | { 27, 18 } | Size: 01
|0AAF1F| db $A8, $61, $6B ; OBJ 06B - Pit edge (east) ↕ | { 2A, 18 } | Size: 01
|0AAF22| db $09, $11, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 02, 04 } | Size: 05
|0AAF25| db $09, $D5, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 02, 35 } | Size: 05
|0AAF28| db $D5, $11, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 35, 04 } | Size: 05
|0AAF2B| db $D5, $B5, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 35, 2D } | Size: 05
|0AAF2E| db $D9, $BB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 2E } | Size: 07
|0AAF31| db $30, $C0, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 0C, 30 } | Size: 00
|0AAF34| db $73, $B9, $00 ; OBJ 000 - Ceiling ↔ | { 1C, 2E } | Size: 0D
|0AAF37| db $9B, $C0, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 26, 30 } | Size: 0C
|0AAF3A| db $5B, $C0, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 30 } | Size: 0C
|0AAF3D| db $49, $95, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 12, 25 } | Size: 05
|0AAF40| db $41, $B1, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 10, 2C } | Size: 05
|0AAF43| db $60, $BA, $00 ; OBJ 000 - Ceiling ↔ | { 18, 2E } | Size: 02
|0AAF46| db $30, $44, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 0C, 11 } | Size: 00
|0AAF49| db $43, $3B, $60 ; OBJ 060 - Ceiling ↕ | { 10, 0E } | Size: 0F
|0AAF4C| db $30, $4B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 0C, 12 } | Size: 03
|0AAF4F| db $30, $83, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 0C, 20 } | Size: 03
|0AAF52| db $C0, $38, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 30, 0E } | Size: 00
|0AAF55| db $C0, $80, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 30, 20 } | Size: 00
|0AAF58| db $C9, $4B, $60 ; OBJ 060 - Ceiling ↕ | { 32, 12 } | Size: 07
|0AAF5B| db $B8, $4B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 12 } | Size: 03
|0AAF5E| db $4B, $3B, $00 ; OBJ 000 - Ceiling ↔ | { 12, 0E } | Size: 0F
|0AAF61| db $4B, $40, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 10 } | Size: 0C
|0AAF64| db $83, $40, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 20, 10 } | Size: 0C
|0AAF67| db $70, $80, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 1C, 20 } | Size: 00
|0AAF6A| db $72, $79, $00 ; OBJ 000 - Ceiling ↔ | { 1C, 1E } | Size: 09
|0AAF6D| db $83, $80, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 20, 20 } | Size: 0C
|0AAF70| db $FF, $FF ; Layer 1
|0AAF72| db $FF, $FF ; Layer 2
|0AAF74| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00EE:
|0AAF76| db $81, $0E ; DOORTYPE 0E | South 10
|0AAF78| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00FE:
|0AAF7A| db $E5, $1C ; Floors and Layout
|0AAF7C| db $FE, $04, $C0 ; OBJ 100 - Corner (top, concave) ▛ | { 20, 13 }
|0AAF7F| db $81, $BA, $0A ; OBJ 00A - Diagonal wall A ◣ (top) | { 20, 2E } | Size: 06
|0AAF82| db $D1, $E4, $0C ; OBJ 00C - Diagonal wall A ◢ (top) | { 34, 39 } | Size: 04
|0AAF85| db $80, $C1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 20, 30 } | Size: 01
|0AAF88| db $83, $5D, $61 ; OBJ 061 - Wall (top, west) ↕ | { 20, 17 } | Size: 0D
|0AAF8B| db $E8, $C2, $62 ; OBJ 062 - Wall (top, east) ↕ | { 3A, 30 } | Size: 02
|0AAF8E| db $FF, $A4, $C2 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 13 }
|0AAF91| db $92, $4F, $01 ; OBJ 001 - Wall (top, north) ↔ | { 24, 13 } | Size: 0B
|0AAF94| db $FE, $37, $08 ; OBJ 108 - Corner (bottom, concave) ▛ | { 23, 1C }
|0AAF97| db $FF, $17, $0C ; OBJ 10C - Corner (bottom, convex) ▟ | { 31, 1C }
|0AAF9A| db $9D, $70, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 27, 1C } | Size: 04
|0AAF9D| db $FF, $15, $88 ; OBJ 108 - Corner (bottom, concave) ▛ | { 31, 16 }
|0AAFA0| db $C4, $68, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 31, 1A } | Size: 00
|0AAFA3| db $D4, $58, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 35, 16 } | Size: 00
|0AAFA6| db $FF, $75, $8A ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 16 }
|0AAFA9| db $D0, $D9, $1C ; OBJ 01C - Diagonal wall B ◢ (bottom) | { 34, 36 } | Size: 01
|0AAFAC| db $8C, $BB, $1A ; OBJ 01A - Diagonal wall B ◣ (bottom) | { 23, 2E } | Size: 03
|0AAFAF| db $B0, $DF, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2C, 37 } | Size: 03
|0AAFB2| db $8E, $80, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 23, 20 } | Size: 08
|0AAFB5| db $DF, $68, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 1A } | Size: 0C
|0AAFB8| db $8C, $6C, $22 ; OBJ 022 - Rail ↔ | { 23, 1B } | Size: 00
|0AAFBB| db $C0, $5A, $69 ; OBJ 069 - Rail ↕ | { 30, 16 } | Size: 02
|0AAFBE| db $B1, $A1, $DD ; OBJ 0DD - Table / Rock ⇲| { 2C, 28 } | Size: 05
|0AAFC1| db $B1, $62, $F9 ; OBJ 219 - Chest | { 2C, 18 }
|0AAFC4| db $FC, $A1, $72 ; OBJ 132 - Intraroom stairs north (merged layers) | { 0A, 05 }
|0AAFC7| db $0B, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 0F
|0AAFCA| db $0B, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 14 } | Size: 0F
|0AAFCD| db $0B, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 24 } | Size: 0F
|0AAFD0| db $0B, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 34 } | Size: 0E
|0AAFD3| db $43, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 10, 04 } | Size: 0F
|0AAFD6| db $43, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 10, 14 } | Size: 0F
|0AAFD9| db $43, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 10, 24 } | Size: 0F
|0AAFDC| db $43, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 10, 34 } | Size: 0E
|0AAFDF| db $81, $CF, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 20, 33 } | Size: 07
|0AAFE2| db $D5, $F5, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 35, 3D } | Size: 05
|0AAFE5| db $83, $0F, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 20, 03 } | Size: 0F
|0AAFE8| db $C3, $0F, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 30, 03 } | Size: 0F
|0AAFEB| db $FF, $FF ; Layer 1
|0AAFED| db $FF, $FF ; Layer 2
|0AAFEF| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00FE:
|0AAFF1| db $B1, $10 ; DOORTYPE 10 | South 16
|0AAFF3| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00F9:
|0AAFF5| db $E1, $1C ; Floors and Layout
|0AAFF7| db $2B, $D7, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 0A, 35 } | Size: 0F
|0AAFFA| db $7E, $83, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 1F, 20 } | Size: 0B
|0AAFFD| db $B1, $22, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2C, 08 } | Size: 06
|0AB000| db $FE, $C1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2C, 04 }
|0AB003| db $E1, $20, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 38, 08 } | Size: 04
|0AB006| db $E8, $13, $01 ; OBJ 001 - Wall (top, north) ↔ | { 3A, 04 } | Size: 03
|0AB009| db $F0, $2A, $02 ; OBJ 002 - Wall (top, south) ↔ | { 3C, 0A } | Size: 02
|0AB00C| db $C9, $4C, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 32, 13 } | Size: 04
|0AB00F| db $28, $DA, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0A, 36 } | Size: 02
|0AB012| db $FC, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0A, 3A }
|0AB015| db $53, $E7, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 14, 39 } | Size: 0F
|0AB018| db $A5, $93, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 29, 24 } | Size: 07
|0AB01B| db $C9, $50, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 14 } | Size: 04
|0AB01E| db $2B, $8B, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 0A, 22 } | Size: 0F
|0AB021| db $7A, $51, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 1E, 14 } | Size: 09
|0AB024| db $0B, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 0F
|0AB027| db $4B, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 04 } | Size: 0F
|0AB02A| db $82, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 20, 04 } | Size: 0B
|0AB02D| db $0B, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 14 } | Size: 0F
|0AB030| db $4A, $4B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 12 } | Size: 0B
|0AB033| db $09, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 24 } | Size: 07
|0AB036| db $09, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 34 } | Size: 06
|0AB039| db $57, $F7, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 15, 3D } | Size: 0F
|0AB03C| db $A6, $A5, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 29, 29 } | Size: 09
|0AB03F| db $A3, $AB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 28, 2A } | Size: 0F
|0AB042| db $A3, $E8, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 28, 3A } | Size: 0C
|0AB045| db $DC, $4D, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 37, 13 } | Size: 01
|0AB048| db $F0, $3B, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 0E } | Size: 03
|0AB04B| db $D9, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 14 } | Size: 07
|0AB04E| db $D9, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 24 } | Size: 07
|0AB051| db $D9, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 34 } | Size: 06
|0AB054| db $FF, $FF ; Layer 1
|0AB056| db $FF, $FF ; Layer 2
|0AB058| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00F9:
|0AB05A| db $61, $0E ; DOORTYPE 0E | South 0C
|0AB05C| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00FA:
|0AB05E| db $51, $1C ; Floors and Layout
|0AB060| db $01, $20, $C4 ; OBJ 0C4 - Floor 1 ⇲ | { 00, 08 } | Size: 04
|0AB063| db $00, $13, $01 ; OBJ 001 - Wall (top, north) ↔ | { 00, 04 } | Size: 03
|0AB066| db $FC, $22, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 02, 0A }
|0AB069| db $00, $29, $02 ; OBJ 002 - Wall (top, south) ↔ | { 00, 0A } | Size: 01
|0AB06C| db $FD, $A1, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 1A, 04 }
|0AB06F| db $6A, $22, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1A, 08 } | Size: 0A
|0AB072| db $FD, $A6, $C6 ; OBJ 106 - Corner (top, convex) ▙ | { 1A, 1B }
|0AB075| db $FC, $B2, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 0B, 0B }
|0AB078| db $3C, $2F, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 0F, 0B } | Size: 03
|0AB07B| db $FD, $72, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 17, 0B }
|0AB07E| db $2D, $3E, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0B, 0F } | Size: 06
|0AB081| db $5D, $3E, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 17, 0F } | Size: 06
|0AB084| db $FC, $C6, $94 ; OBJ 114 - Kinked corner west (bottom) ▙ | { 0C, 1A }
|0AB087| db $FD, $66, $96 ; OBJ 116 - Kinked corner east (bottom) ▟ | { 16, 1A }
|0AB08A| db $2C, $9E, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0B, 27 } | Size: 02
|0AB08D| db $FC, $BB, $0C ; OBJ 10C - Corner (bottom, convex) ▟ | { 0B, 2C }
|0AB090| db $09, $C0, $0A ; OBJ 00A - Diagonal wall A ◣ (top) | { 02, 30 } | Size: 04
|0AB093| db $51, $E4, $0C ; OBJ 00C - Diagonal wall A ◢ (top) | { 14, 39 } | Size: 04
|0AB096| db $08, $BB, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 2E } | Size: 03
|0AB099| db $69, $A2, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1A, 28 } | Size: 06
|0AB09C| db $FD, $A9, $47 ; OBJ 107 - Corner (top, convex) ▛ | { 1A, 25 }
|0AB09F| db $14, $C1, $1A ; OBJ 01A - Diagonal wall B ◣ (bottom) | { 05, 30 } | Size: 01
|0AB0A2| db $50, $D9, $1C ; OBJ 01C - Diagonal wall B ◢ (bottom) | { 14, 36 } | Size: 01
|0AB0A5| db $30, $DF, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0C, 37 } | Size: 03
|0AB0A8| db $FC, $5B, $08 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 2C }
|0AB0AB| db $24, $B0, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 09, 2C } | Size: 00
|0AB0AE| db $14, $C1, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 30 } | Size: 01
|0AB0B1| db $5C, $C8, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 17, 32 } | Size: 00
|0AB0B4| db $5D, $9D, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 17, 27 } | Size: 05
|0AB0B7| db $FC, $C9, $D5 ; OBJ 115 - Kinked corner west (bottom) ▛ | { 0C, 27 }
|0AB0BA| db $FD, $69, $D7 ; OBJ 117 - Kinked corner east (bottom) ▜ | { 16, 27 }
|0AB0BD| db $2C, $76, $2F ; OBJ 02F - Rail wall (north) ↔ | { 0B, 1D } | Size: 02
|0AB0C0| db $2C, $96, $30 ; OBJ 030 - Rail wall (south) ↔ | { 0B, 25 } | Size: 02
|0AB0C3| db $14, $AE, $22 ; OBJ 022 - Rail ↔ | { 05, 2B } | Size: 02
|0AB0C6| db $28, $97, $69 ; OBJ 069 - Rail ↕ | { 0A, 25 } | Size: 03
|0AB0C9| db $2B, $95, $22 ; OBJ 022 - Rail ↔ | { 0A, 25 } | Size: 0D
|0AB0CC| db $2B, $79, $22 ; OBJ 022 - Rail ↔ | { 0A, 1E } | Size: 0D
|0AB0CF| db $2B, $1F, $69 ; OBJ 069 - Rail ↕ | { 0A, 07 } | Size: 0F
|0AB0D2| db $28, $63, $69 ; OBJ 069 - Rail ↕ | { 0A, 18 } | Size: 03
|0AB0D5| db $28, $29, $22 ; OBJ 022 - Rail ↔ | { 0A, 0A } | Size: 01
|0AB0D8| db $58, $29, $22 ; OBJ 022 - Rail ↔ | { 16, 0A } | Size: 01
|0AB0DB| db $FC, $E1, $38 ; OBJ 138 - Interroom spiral stairs up (top) | { 0E, 04 }
|0AB0DE| db $FD, $22, $F1 ; OBJ 131 - Intraroom stairs north (separate layers) | { 12, 0B }
|0AB0E1| db $09, $D5, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 02, 35 } | Size: 05
|0AB0E4| db $55, $F5, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 15, 3D } | Size: 05
|0AB0E7| db $78, $6E, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1E, 1B } | Size: 02
|0AB0EA| db $88, $62, $61 ; OBJ 061 - Wall (top, west) ↕ | { 22, 18 } | Size: 02
|0AB0ED| db $FE, $26, $C4 ; OBJ 104 - Corner (top, convex) ▟ | { 22, 1B }
|0AB0F0| db $FE, $25, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 14 }
|0AB0F3| db $99, $53, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 14 } | Size: 07
|0AB0F6| db $FF, $45, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 34, 14 }
|0AB0F9| db $D1, $63, $62 ; OBJ 062 - Wall (top, east) ↕ | { 34, 18 } | Size: 07
|0AB0FC| db $FF, $49, $43 ; OBJ 103 - Corner (top, concave) ▟ | { 34, 25 }
|0AB0FF| db $7A, $97, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1E, 25 } | Size: 0B
|0AB102| db $A2, $62, $C8 ; OBJ 0C8 - Water floor ⇲ | { 28, 18 } | Size: 0A
|0AB105| db $9E, $62, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 27, 18 } | Size: 0A
|0AB108| db $9E, $66, $79 ; OBJ 079 - Water edge (west) ↕ | { 27, 19 } | Size: 0A
|0AB10B| db $9E, $92, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 27, 24 } | Size: 0A
|0AB10E| db $CE, $66, $7A ; OBJ 07A - Water edge (east) ↕ | { 33, 19 } | Size: 0A
|0AB111| db $7B, $0C, $60 ; OBJ 060 - Ceiling ↕ | { 1E, 03 } | Size: 0C
|0AB114| db $83, $0C, $60 ; OBJ 060 - Ceiling ↕ | { 20, 03 } | Size: 0C
|0AB117| db $8B, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 04 } | Size: 0F
|0AB11A| db $CA, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 04 } | Size: 0B
|0AB11D| db $E1, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 38, 14 } | Size: 07
|0AB120| db $E1, $91, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 38, 24 } | Size: 05
|0AB123| db $7B, $A7, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1E, 29 } | Size: 0F
|0AB126| db $BB, $A7, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 29 } | Size: 0F
|0AB129| db $7B, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1E, 36 } | Size: 0D
|0AB12C| db $BB, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 36 } | Size: 0D
|0AB12F| db $FF, $FF ; Layer 1
|0AB131| db $31, $75, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0C, 1D } | Size: 05
|0AB134| db $59, $75, $62 ; OBJ 062 - Wall (top, east) ↕ | { 16, 1D } | Size: 05
|0AB137| db $30, $EE, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0C, 3B } | Size: 02
|0AB13A| db $40, $EE, $62 ; OBJ 062 - Wall (top, east) ↕ | { 10, 3B } | Size: 02
|0AB13D| db $3D, $49, $DD ; OBJ 0DD - Table / Rock ⇲| { 0F, 12 } | Size: 05
|0AB140| db $40, $B1, $DD ; OBJ 0DD - Table / Rock ⇲| { 10, 2C } | Size: 01
|0AB143| db $FF, $FF ; Layer 2
|0AB145| db $2F, $33, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0B, 0C } | Size: 0F
|0AB148| db $2F, $64, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0B, 19 } | Size: 0C
|0AB14B| db $2F, $9E, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0B, 27 } | Size: 0E
|0AB14E| db $17, $B1, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 05, 2C } | Size: 0D
|0AB151| db $4D, $C0, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 13, 30 } | Size: 04
|0AB154| db $31, $CD, $C6 ; OBJ 0C6 - Layer 2 mask (large) ⇲ | { 0C, 33 } | Size: 05
|0AB157| db $14, $D3, $AB ; OBJ 0AB - Diagonal layer 2 mask B ◥ | { 05, 34 } | Size: 03
|0AB15A| db $50, $D3, $A9 ; OBJ 0A9 - Diagonal layer 2 mask B ◤ | { 14, 34 } | Size: 03
|0AB15D| db $35, $72, $31 ; OBJ 031 - Nothing | { 0D, 1C } | Size: 06
|0AB160| db $35, $9E, $32 ; OBJ 032 - Nothing | { 0D, 27 } | Size: 06
|0AB163| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00FA:
|0AB165| db $91, $04 ; DOORTYPE 04 | South 12
|0AB167| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00EA:
|0AB169| db $81, $1C ; Floors and Layout
|0AB16B| db $FC, $A1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 0A, 04 }
|0AB16E| db $28, $22, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0A, 08 } | Size: 02
|0AB171| db $FC, $A3, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 0A, 0C }
|0AB174| db $39, $33, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0E, 0C } | Size: 07
|0AB177| db $FD, $C3, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 1C, 0C }
|0AB17A| db $70, $41, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1C, 10 } | Size: 01
|0AB17D| db $FD, $C4, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 1C, 12 }
|0AB180| db $51, $48, $01 ; OBJ 001 - Wall (top, north) ↔ | { 14, 12 } | Size: 04
|0AB183| db $FD, $04, $80 ; OBJ 100 - Corner (top, concave) ▛ | { 10, 12 }
|0AB186| db $40, $5B, $61 ; OBJ 061 - Wall (top, west) ↕ | { 10, 16 } | Size: 03
|0AB189| db $FD, $07, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 10, 1C }
|0AB18C| db $28, $73, $01 ; OBJ 001 - Wall (top, north) ↔ | { 0A, 1C } | Size: 03
|0AB18F| db $FC, $67, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 06, 1C }
|0AB192| db $1B, $81, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 20 } | Size: 0D
|0AB195| db $FC, $6E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 06, 3A }
|0AB198| db $50, $E4, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 14, 39 } | Size: 00
|0AB19B| db $5A, $8B, $62 ; OBJ 062 - Wall (top, east) ↕ | { 16, 22 } | Size: 0B
|0AB19E| db $FD, $67, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 16, 1E }
|0AB1A1| db $69, $79, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1A, 1E } | Size: 05
|0AB1A4| db $FE, $47, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 24, 1E }
|0AB1A7| db $92, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 24, 08 } | Size: 0B
|0AB1AA| db $FE, $41, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 24, 04 }
|0AB1AD| db $FC, $E1, $39 ; OBJ 139 - Interroom spiral stairs down (top) | { 0E, 04 }
|0AB1B0| db $39, $80, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 0E, 20 } | Size: 04
|0AB1B3| db $39, $7E, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 0E, 1F } | Size: 06
|0AB1B6| db $39, $92, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 0E, 24 } | Size: 06
|0AB1B9| db $38, $83, $6A ; OBJ 06A - Pit edge (west) ↕ | { 0E, 20 } | Size: 03
|0AB1BC| db $58, $83, $6B ; OBJ 06B - Pit edge (east) ↕ | { 16, 20 } | Size: 03
|0AB1BF| db $08, $00, $60 ; OBJ 060 - Ceiling ↕ | { 02, 00 } | Size: 00
|0AB1C2| db $10, $00, $60 ; OBJ 060 - Ceiling ↕ | { 04, 00 } | Size: 00
|0AB1C5| db $18, $0B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 06, 02 } | Size: 03
|0AB1C8| db $12, $42, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 04, 10 } | Size: 0A
|0AB1CB| db $2A, $41, $00 ; OBJ 000 - Ceiling ↔ | { 0A, 10 } | Size: 09
|0AB1CE| db $54, $F5, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 15, 3D } | Size: 01
|0AB1D1| db $5B, $4C, $F9 ; OBJ 213 - Telepathy tile | { 16, 13 }
|0AB1D4| db $48, $A8, $DD ; OBJ 0DD - Table / Rock ⇲| { 12, 2A } | Size: 00
|0AB1D7| db $FD, $C6, $20 ; OBJ 120 - Small torch (lit) | { 1C, 18 }
|0AB1DA| db $FE, $06, $20 ; OBJ 120 - Small torch (lit) | { 20, 18 }
|0AB1DD| db $6B, $8B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1A, 22 } | Size: 0F
|0AB1E0| db $6B, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1A, 32 } | Size: 0E
|0AB1E3| db $A3, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 28, 04 } | Size: 0F
|0AB1E6| db $A3, $53, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 28, 14 } | Size: 0F
|0AB1E9| db $A3, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 28, 24 } | Size: 0F
|0AB1EC| db $A3, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 28, 34 } | Size: 0E
|0AB1EF| db $FF, $FF ; Layer 1
|0AB1F1| db $FF, $FF ; Layer 2
|0AB1F3| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00EA:
|0AB1F5| db $61, $0E ; DOORTYPE 0E | South 0C
|0AB1F7| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00E6:
|0AB1F9| db $E5, $1C ; Floors and Layout
|0AB1FB| db $23, $CF, $09 ; OBJ 009 - Diagonal wall A ◤ (top) | { 08, 33 } | Size: 0F
|0AB1FE| db $76, $7B, $09 ; OBJ 009 - Diagonal wall A ◤ (top) | { 1D, 1E } | Size: 0B
|0AB201| db $B8, $34, $09 ; OBJ 009 - Diagonal wall A ◤ (top) | { 2E, 0D } | Size: 00
|0AB204| db $D0, $23, $01 ; OBJ 001 - Wall (top, north) ↔ | { 34, 08 } | Size: 03
|0AB207| db $20, $D3, $61 ; OBJ 061 - Wall (top, west) ↕ | { 08, 34 } | Size: 03
|0AB20A| db $FC, $8E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 08, 3A }
|0AB20D| db $FD, $8E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 18, 3A }
|0AB210| db $60, $E1, $62 ; OBJ 062 - Wall (top, east) ↕ | { 18, 38 } | Size: 01
|0AB213| db $FD, $8D, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 18, 34 }
|0AB216| db $70, $D2, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1C, 34 } | Size: 02
|0AB219| db $FE, $0D, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 20, 34 }
|0AB21C| db $80, $C2, $62 ; OBJ 062 - Wall (top, east) ↕ | { 20, 30 } | Size: 02
|0AB21F| db $FE, $0B, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 20, 2C }
|0AB222| db $90, $B2, $02 ; OBJ 002 - Wall (top, south) ↔ | { 24, 2C } | Size: 02
|0AB225| db $FE, $8B, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 28, 2C }
|0AB228| db $A0, $A2, $62 ; OBJ 062 - Wall (top, east) ↕ | { 28, 28 } | Size: 02
|0AB22B| db $FE, $89, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 28, 24 }
|0AB22E| db $B0, $92, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2C, 24 } | Size: 02
|0AB231| db $FF, $09, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 30, 24 }
|0AB234| db $C0, $82, $62 ; OBJ 062 - Wall (top, east) ↕ | { 30, 20 } | Size: 02
|0AB237| db $FF, $07, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 30, 1C }
|0AB23A| db $FF, $A7, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 1C }
|0AB23D| db $FF, $A2, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 08 }
|0AB240| db $D0, $73, $02 ; OBJ 002 - Wall (top, south) ↔ | { 34, 1C } | Size: 03
|0AB243| db $2F, $CF, $19 ; OBJ 019 - Diagonal wall B ◤ (bottom) | { 0B, 33 } | Size: 0F
|0AB246| db $83, $7A, $19 ; OBJ 019 - Diagonal wall B ◤ (bottom) | { 20, 1E } | Size: 0E
|0AB249| db $D0, $2D, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 34, 0B } | Size: 01
|0AB24C| db $FF, $72, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 37, 0B }
|0AB24F| db $2C, $D1, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 0B, 34 } | Size: 01
|0AB252| db $FC, $BD, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 0B, 37 }
|0AB255| db $3C, $DE, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0F, 37 } | Size: 02
|0AB258| db $FD, $5D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 15, 37 }
|0AB25B| db $54, $D4, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 15, 35 } | Size: 00
|0AB25E| db $FD, $5C, $4F ; OBJ 10F - Corner (bottom, convex) ▛ | { 15, 31 }
|0AB261| db $64, $C5, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 19, 31 } | Size: 01
|0AB264| db $FD, $DC, $4B ; OBJ 10B - Corner (bottom, concave) ▟ | { 1D, 31 }
|0AB267| db $74, $B5, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 1D, 2D } | Size: 01
|0AB26A| db $FD, $DA, $4F ; OBJ 10F - Corner (bottom, convex) ▛ | { 1D, 29 }
|0AB26D| db $84, $A5, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 21, 29 } | Size: 01
|0AB270| db $FE, $5A, $4B ; OBJ 10B - Corner (bottom, concave) ▟ | { 25, 29 }
|0AB273| db $94, $95, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 25, 25 } | Size: 01
|0AB276| db $FE, $58, $4F ; OBJ 10F - Corner (bottom, convex) ▛ | { 25, 21 }
|0AB279| db $A4, $85, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 29, 21 } | Size: 01
|0AB27C| db $FE, $D8, $4B ; OBJ 10B - Corner (bottom, concave) ▟ | { 2D, 21 }
|0AB27F| db $B4, $75, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 2D, 1D } | Size: 01
|0AB282| db $FE, $D6, $4F ; OBJ 10F - Corner (bottom, convex) ▛ | { 2D, 19 }
|0AB285| db $C4, $66, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 31, 19 } | Size: 02
|0AB288| db $FF, $76, $4B ; OBJ 10B - Corner (bottom, concave) ▟ | { 37, 19 }
|0AB28B| db $DD, $3C, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 37, 0F } | Size: 04
|0AB28E| db $48, $D0, $A4 ; OBJ 0A4 - Pit ⇲ | { 12, 34 } | Size: 00
|0AB291| db $68, $B0, $A4 ; OBJ 0A4 - Pit ⇲ | { 1A, 2C } | Size: 00
|0AB294| db $88, $90, $A4 ; OBJ 0A4 - Pit ⇲ | { 22, 24 } | Size: 00
|0AB297| db $A8, $70, $A4 ; OBJ 0A4 - Pit ⇲ | { 2A, 1C } | Size: 00
|0AB29A| db $D0, $50, $A4 ; OBJ 0A4 - Pit ⇲ | { 34, 14 } | Size: 00
|0AB29D| db $DB, $63, $FA ; OBJ 22F - Pot | { 36, 18 }
|0AB2A0| db $B3, $83, $FA ; OBJ 22F - Pot | { 2C, 20 }
|0AB2A3| db $93, $A3, $FA ; OBJ 22F - Pot | { 24, 28 }
|0AB2A6| db $73, $C3, $FA ; OBJ 22F - Pot | { 1C, 30 }
|0AB2A9| db $23, $83, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 08, 20 } | Size: 0F
|0AB2AC| db $73, $33, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 1C, 0C } | Size: 0F
|0AB2AF| db $BC, $20, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 2F, 08 } | Size: 00
|0AB2B2| db $00, $10, $00 ; OBJ 000 - Ceiling ↔ | { 00, 04 } | Size: 00
|0AB2B5| db $00, $18, $00 ; OBJ 000 - Ceiling ↔ | { 00, 06 } | Size: 00
|0AB2B8| db $72, $22, $00 ; OBJ 000 - Ceiling ↔ | { 1C, 08 } | Size: 0A
|0AB2BB| db $72, $2A, $00 ; OBJ 000 - Ceiling ↔ | { 1C, 0A } | Size: 0A
|0AB2BE| db $0B, $23, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 08 } | Size: 0F
|0AB2C1| db $42, $23, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 10, 08 } | Size: 0B
|0AB2C4| db $0B, $61, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 18 } | Size: 0D
|0AB2C7| db $42, $61, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 10, 18 } | Size: 09
|0AB2CA| db $01, $83, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 20 } | Size: 07
|0AB2CD| db $01, $C3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 00, 30 } | Size: 07
|0AB2D0| db $73, $E1, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1C, 38 } | Size: 0D
|0AB2D3| db $93, $C3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 24, 30 } | Size: 0F
|0AB2D6| db $D2, $E1, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 34, 38 } | Size: 09
|0AB2D9| db $B3, $A3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2C, 28 } | Size: 0F
|0AB2DC| db $D2, $83, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 34, 20 } | Size: 0B
|0AB2DF| db $F1, $C0, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 30 } | Size: 04
|0AB2E2| db $FF, $FF ; Layer 1
|0AB2E4| db $2B, $14, $FF ; OBJ 273 - Layer 2 mask (full) | { 0A, 05 }
|0AB2E7| db $2A, $16, $FA ; OBJ 22A - Lamp cones | { 0A, 05 }
|0AB2EA| db $FF, $FF ; Layer 2
|0AB2EC| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E6:
|0AB2EE| db $91, $10 ; DOORTYPE 10 | South 12
|0AB2F0| db $93, $02 ; DOORTYPE 02 | East 12
|0AB2F2| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00E7:
|0AB2F4| db $E5, $1C ; Floors and Layout
|0AB2F6| db $FC, $22, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 02, 08 }
|0AB2F9| db $19, $20, $01 ; OBJ 001 - Wall (top, north) ↔ | { 06, 08 } | Size: 04
|0AB2FC| db $38, $20, $0B ; OBJ 00B - Diagonal wall A ◥ (top) | { 0E, 08 } | Size: 00
|0AB2FF| db $50, $3B, $01 ; OBJ 001 - Wall (top, north) ↔ | { 14, 0E } | Size: 03
|0AB302| db $FD, $A3, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 1A, 0E }
|0AB305| db $68, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1A, 08 } | Size: 03
|0AB308| db $FD, $A1, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 1A, 04 }
|0AB30B| db $FE, $A1, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 2A, 04 }
|0AB30E| db $AA, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 2A, 08 } | Size: 0B
|0AB311| db $FE, $A7, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 2A, 1E }
|0AB314| db $B8, $7B, $01 ; OBJ 001 - Wall (top, north) ↔ | { 2E, 1E } | Size: 03
|0AB317| db $FF, $47, $82 ; OBJ 102 - Corner (top, concave) ▜ | { 34, 1E }
|0AB31A| db $D3, $88, $62 ; OBJ 062 - Wall (top, east) ↕ | { 34, 22 } | Size: 0C
|0AB31D| db $FF, $4E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 34, 3A }
|0AB320| db $09, $4A, $0A ; OBJ 00A - Diagonal wall A ◣ (top) | { 02, 12 } | Size: 06
|0AB323| db $08, $4A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 12 } | Size: 02
|0AB326| db $3A, $78, $02 ; OBJ 002 - Wall (top, south) ↔ | { 0E, 1E } | Size: 08
|0AB329| db $FD, $E7, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 1E, 1E }
|0AB32C| db $7A, $88, $0A ; OBJ 00A - Diagonal wall A ◣ (top) | { 1E, 22 } | Size: 08
|0AB32F| db $78, $8A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1E, 22 } | Size: 02
|0AB332| db $A1, $C1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 28, 30 } | Size: 05
|0AB335| db $FE, $8E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 28, 3A }
|0AB338| db $20, $2E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 08, 0B } | Size: 02
|0AB33B| db $38, $2C, $1B ; OBJ 01B - Diagonal wall B ◥ (bottom) | { 0E, 0B } | Size: 00
|0AB33E| db $51, $44, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 14, 11 } | Size: 04
|0AB341| db $FD, $D4, $4C ; OBJ 10C - Corner (bottom, convex) ▟ | { 1D, 11 }
|0AB344| db $74, $2E, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 1D, 0B } | Size: 02
|0AB347| db $FD, $D1, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 1D, 07 }
|0AB34A| db $84, $1E, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 21, 07 } | Size: 02
|0AB34D| db $FE, $71, $CA ; OBJ 10A - Corner (bottom, concave) ▜ | { 27, 07 }
|0AB350| db $9E, $2E, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 27, 0B } | Size: 0A
|0AB353| db $FE, $78, $4E ; OBJ 10E - Corner (bottom, convex) ▙ | { 27, 21 }
|0AB356| db $AC, $86, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 2B, 21 } | Size: 02
|0AB359| db $FF, $18, $4A ; OBJ 10A - Corner (bottom, concave) ▜ | { 31, 21 }
|0AB35C| db $C6, $94, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 31, 25 } | Size: 08
|0AB35F| db $FF, $1D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 31, 37 }
|0AB362| db $14, $4B, $1A ; OBJ 01A - Diagonal wall B ◣ (bottom) | { 05, 12 } | Size: 03
|0AB365| db $14, $3B, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 0E } | Size: 03
|0AB368| db $FC, $52, $C8 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 0B }
|0AB36B| db $3A, $6D, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 0E, 1B } | Size: 09
|0AB36E| db $86, $88, $1A ; OBJ 01A - Diagonal wall B ◣ (bottom) | { 21, 22 } | Size: 08
|0AB371| db $84, $7B, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 21, 1E } | Size: 03
|0AB374| db $FE, $16, $CD ; OBJ 10D - Corner (bottom, convex) ▜ | { 21, 1B }
|0AB377| db $AC, $C3, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 2B, 30 } | Size: 03
|0AB37A| db $FE, $BD, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 2B, 37 }
|0AB37D| db $BC, $DC, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 2F, 37 } | Size: 00
|0AB380| db $50, $50, $A4 ; OBJ 0A4 - Pit ⇲ | { 14, 14 } | Size: 00
|0AB383| db $80, $60, $A4 ; OBJ 0A4 - Pit ⇲ | { 20, 18 } | Size: 00
|0AB386| db $88, $30, $A4 ; OBJ 0A4 - Pit ⇲ | { 22, 0C } | Size: 00
|0AB389| db $8B, $2B, $FA ; OBJ 22F - Pot | { 22, 0A }
|0AB38C| db $93, $2B, $FA ; OBJ 22F - Pot | { 24, 0A }
|0AB38F| db $B8, $90, $A4 ; OBJ 0A4 - Pit ⇲ | { 2E, 24 } | Size: 00
|0AB392| db $3C, $21, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 0F, 08 } | Size: 01
|0AB395| db $58, $0A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 02 } | Size: 02
|0AB398| db $51, $11, $60 ; OBJ 060 - Ceiling ↕ | { 14, 04 } | Size: 05
|0AB39B| db $0A, $11, $00 ; OBJ 000 - Ceiling ↔ | { 02, 04 } | Size: 09
|0AB39E| db $0A, $19, $00 ; OBJ 000 - Ceiling ↔ | { 02, 06 } | Size: 09
|0AB3A1| db $0B, $8B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 22 } | Size: 0F
|0AB3A4| db $0B, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 32 } | Size: 0E
|0AB3A7| db $4A, $8B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 22 } | Size: 0B
|0AB3AA| db $4A, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 32 } | Size: 0A
|0AB3AD| db $79, $9D, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 1E, 27 } | Size: 05
|0AB3B0| db $72, $C3, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1C, 30 } | Size: 0B
|0AB3B3| db $BB, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 04 } | Size: 0F
|0AB3B6| db $BB, $4A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2E, 12 } | Size: 0E
|0AB3B9| db $E1, $7B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 38, 1E } | Size: 07
|0AB3BC| db $E1, $BB, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 38, 2E } | Size: 07
|0AB3BF| db $09, $5F, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 02, 17 } | Size: 07
|0AB3C2| db $FF, $FF ; Layer 1
|0AB3C4| db $2B, $14, $FF ; OBJ 273 - Layer 2 mask (full) | { 0A, 05 }
|0AB3C7| db $2A, $16, $FA ; OBJ 22A - Lamp cones | { 0A, 05 }
|0AB3CA| db $FF, $FF ; Layer 2
|0AB3CC| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E7:
|0AB3CE| db $B1, $10 ; DOORTYPE 10 | South 16
|0AB3D0| db $32, $02 ; DOORTYPE 02 | West 06
|0AB3D2| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00E4:
|0AB3D4| db $51, $04 ; Floors and Layout
|0AB3D6| db $0A, $7C, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 02, 1F } | Size: 08
|0AB3D9| db $08, $82, $61 ; OBJ 061 - Wall (top, west) ↕ | { 02, 20 } | Size: 02
|0AB3DC| db $30, $4A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0C, 12 } | Size: 02
|0AB3DF| db $FC, $C3, $C0 ; OBJ 100 - Corner (top, concave) ▛ | { 0C, 0F }
|0AB3E2| db $40, $3F, $01 ; OBJ 001 - Wall (top, north) ↔ | { 10, 0F } | Size: 03
|0AB3E5| db $54, $38, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 15, 0E } | Size: 00
|0AB3E8| db $60, $31, $01 ; OBJ 001 - Wall (top, north) ↔ | { 18, 0C } | Size: 01
|0AB3EB| db $FD, $A3, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 1A, 0C }
|0AB3EE| db $5C, $61, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 17, 18 } | Size: 01
|0AB3F1| db $68, $4A, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1A, 12 } | Size: 02
|0AB3F4| db $5C, $65, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 17, 19 } | Size: 01
|0AB3F7| db $68, $82, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1A, 20 } | Size: 02
|0AB3FA| db $5C, $66, $62 ; OBJ 062 - Wall (top, east) ↕ | { 17, 19 } | Size: 02
|0AB3FD| db $23, $A3, $DB ; OBJ 0DB - Floor 2 ⇲ | { 08, 28 } | Size: 0F
|0AB400| db $FC, $59, $48 ; OBJ 108 - Corner (bottom, concave) ▛ | { 05, 25 }
|0AB403| db $25, $96, $03 ; OBJ 003 - Wall (bottom, north) ↔ | { 09, 25 } | Size: 06
|0AB406| db $FD, $79, $4A ; OBJ 10A - Corner (bottom, concave) ▜ | { 17, 25 }
|0AB409| db $15, $A6, $63 ; OBJ 063 - Wall (bottom, west) ↕ | { 05, 29 } | Size: 06
|0AB40C| db $FC, $5D, $C9 ; OBJ 109 - Corner (bottom, concave) ▙ | { 05, 37 }
|0AB40F| db $25, $DE, $04 ; OBJ 004 - Wall (bottom, south) ↔ | { 09, 37 } | Size: 06
|0AB412| db $FD, $7D, $CB ; OBJ 10B - Corner (bottom, concave) ▟ | { 17, 37 }
|0AB415| db $5D, $A6, $64 ; OBJ 064 - Wall (bottom, east) ↕ | { 17, 29 } | Size: 06
|0AB418| db $41, $B8, $DD ; OBJ 0DD - Table / Rock ⇲| { 10, 2E } | Size: 04
|0AB41B| db $15, $91, $22 ; OBJ 022 - Rail ↔ | { 05, 24 } | Size: 05
|0AB41E| db $58, $91, $22 ; OBJ 022 - Rail ↔ | { 16, 24 } | Size: 01
|0AB421| db $FC, $E8, $20 ; OBJ 120 - Small torch (lit) | { 0E, 20 }
|0AB424| db $FD, $48, $20 ; OBJ 120 - Small torch (lit) | { 14, 20 }
|0AB427| db $FD, $09, $72 ; OBJ 132 - Intraroom stairs north (merged layers) | { 10, 25 }
|0AB42A| db $43, $4B, $FA ; OBJ 22F - Pot | { 10, 12 }
|0AB42D| db $FE, $23, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 0C }
|0AB430| db $9A, $32, $01 ; OBJ 001 - Wall (top, north) ↔ | { 26, 0C } | Size: 0A
|0AB433| db $FF, $A3, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 0C }
|0AB436| db $89, $8A, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 22, 22 } | Size: 06
|0AB439| db $88, $8A, $61 ; OBJ 061 - Wall (top, west) ↕ | { 22, 22 } | Size: 02
|0AB43C| db $B9, $BA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2E, 2E } | Size: 06
|0AB43F| db $FF, $AB, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 2E }
|0AB442| db $FF, $A7, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 1C }
|0AB445| db $E0, $71, $01 ; OBJ 001 - Wall (top, north) ↔ | { 38, 1C } | Size: 01
|0AB448| db $FF, $47, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 34, 1C }
|0AB44B| db $D1, $80, $61 ; OBJ 061 - Wall (top, west) ↕ | { 34, 20 } | Size: 04
|0AB44E| db $FF, $4A, $04 ; OBJ 104 - Corner (top, convex) ▟ | { 34, 28 }
|0AB451| db $C0, $A2, $01 ; OBJ 001 - Wall (top, north) ↔ | { 30, 28 } | Size: 02
|0AB454| db $A0, $82, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 28, 20 } | Size: 02
|0AB457| db $A1, $5B, $62 ; OBJ 062 - Wall (top, east) ↕ | { 28, 16 } | Size: 07
|0AB45A| db $FE, $84, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 28, 12 }
|0AB45D| db $B1, $48, $02 ; OBJ 002 - Wall (top, south) ↔ | { 2C, 12 } | Size: 04
|0AB460| db $FF, $44, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 34, 12 }
|0AB463| db $FF, $45, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 34, 16 }
|0AB466| db $E0, $59, $02 ; OBJ 002 - Wall (top, south) ↔ | { 38, 16 } | Size: 01
|0AB469| db $FF, $A5, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 16 }
|0AB46C| db $E3, $53, $FA ; OBJ 22F - Pot | { 38, 14 }
|0AB46F| db $09, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 07
|0AB472| db $09, $59, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 02, 16 } | Size: 05
|0AB475| db $09, $51, $00 ; OBJ 000 - Ceiling ↔ | { 02, 14 } | Size: 05
|0AB478| db $28, $3F, $60 ; OBJ 060 - Ceiling ↕ | { 0A, 0F } | Size: 03
|0AB47B| db $26, $0E, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 09, 03 } | Size: 0A
|0AB47E| db $54, $25, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 15, 09 } | Size: 01
|0AB481| db $4A, $11, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 12, 04 } | Size: 09
|0AB484| db $6C, $64, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1B, 19 } | Size: 00
|0AB487| db $70, $60, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 1C, 18 } | Size: 00
|0AB48A| db $70, $74, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 1C, 1D } | Size: 00
|0AB48D| db $8B, $11, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 04 } | Size: 0D
|0AB490| db $CA, $11, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 04 } | Size: 09
|0AB493| db $D1, $69, $00 ; OBJ 000 - Ceiling ↔ | { 34, 1A } | Size: 05
|0AB496| db $B4, $90, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 2D, 24 } | Size: 00
|0AB499| db $B1, $5A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2C, 16 } | Size: 06
|0AB49C| db $C0, $90, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 30, 24 } | Size: 00
|0AB49F| db $B1, $88, $00 ; OBJ 000 - Ceiling ↔ | { 2C, 22 } | Size: 04
|0AB4A2| db $89, $9F, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 22, 27 } | Size: 07
|0AB4A5| db $8B, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 32 } | Size: 0E
|0AB4A8| db $CA, $CA, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 32, 32 } | Size: 0A
|0AB4AB| db $FF, $FF ; Layer 1
|0AB4AD| db $FF, $FF ; Layer 2
|0AB4AF| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E4:
|0AB4B1| db $91, $10 ; DOORTYPE 10 | South 12
|0AB4B3| db $62, $00 ; DOORTYPE 00 | West 0C
|0AB4B5| db $73, $00 ; DOORTYPE 00 | East 0E
|0AB4B7| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_00E5:
|0AB4B9| db $E1, $1C ; Floors and Layout
|0AB4BB| db $15, $70, $01 ; OBJ 001 - Wall (top, north) ↔ | { 05, 1C } | Size: 04
|0AB4BE| db $FC, $27, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 02, 1C }
|0AB4C1| db $35, $6D, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 0D, 1B } | Size: 05
|0AB4C4| db $51, $1F, $61 ; OBJ 061 - Wall (top, west) ↕ | { 14, 07 } | Size: 07
|0AB4C7| db $FD, $41, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 14, 04 }
|0AB4CA| db $FD, $A1, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 1A, 04 }
|0AB4CD| db $68, $23, $62 ; OBJ 062 - Wall (top, east) ↕ | { 1A, 08 } | Size: 03
|0AB4D0| db $FD, $A3, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 1A, 0E }
|0AB4D3| db $78, $3A, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1E, 0E } | Size: 02
|0AB4D6| db $FE, $23, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 22, 0E }
|0AB4D9| db $88, $23, $61 ; OBJ 061 - Wall (top, west) ↕ | { 22, 08 } | Size: 03
|0AB4DC| db $FE, $21, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 22, 04 }
|0AB4DF| db $A1, $45, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 28, 11 } | Size: 05
|0AB4E2| db $A1, $1F, $62 ; OBJ 062 - Wall (top, east) ↕ | { 28, 07 } | Size: 07
|0AB4E5| db $FE, $81, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 28, 04 }
|0AB4E8| db $CD, $70, $01 ; OBJ 001 - Wall (top, north) ↔ | { 33, 1C } | Size: 04
|0AB4EB| db $FF, $A7, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 3A, 1C }
|0AB4EE| db $FF, $A8, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 22 }
|0AB4F1| db $A2, $BC, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 28, 2F } | Size: 08
|0AB4F4| db $D8, $8A, $02 ; OBJ 002 - Wall (top, south) ↔ | { 36, 22 } | Size: 02
|0AB4F7| db $90, $C2, $02 ; OBJ 002 - Wall (top, south) ↔ | { 24, 30 } | Size: 02
|0AB4FA| db $FE, $1C, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 21, 30 }
|0AB4FD| db $84, $D3, $62 ; OBJ 062 - Wall (top, east) ↕ | { 21, 34 } | Size: 03
|0AB500| db $FE, $1E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 21, 3A }
|0AB503| db $FD, $BE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 1B, 3A }
|0AB506| db $6C, $D3, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1B, 34 } | Size: 03
|0AB509| db $60, $C2, $02 ; OBJ 002 - Wall (top, south) ↔ | { 18, 30 } | Size: 02
|0AB50C| db $FD, $BC, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 1B, 30 }
|0AB50F| db $FC, $28, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 22 }
|0AB512| db $18, $8A, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 22 } | Size: 02
|0AB515| db $2A, $88, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 0A, 22 } | Size: 08
|0AB518| db $41, $79, $10 ; OBJ 010 - Diagonal wall B ◢ (top) | { 10, 1E } | Size: 05
|0AB51B| db $41, $7D, $0F ; OBJ 00F - Diagonal wall B ◥ (top) | { 10, 1F } | Size: 05
|0AB51E| db $40, $7E, $62 ; OBJ 062 - Wall (top, east) ↕ | { 10, 1F } | Size: 02
|0AB521| db $6C, $A9, $01 ; OBJ 001 - Wall (top, north) ↔ | { 1B, 2A } | Size: 01
|0AB524| db $FD, $DA, $84 ; OBJ 104 - Corner (top, convex) ▟ | { 1D, 2A }
|0AB527| db $74, $93, $61 ; OBJ 061 - Wall (top, west) ↕ | { 1D, 24 } | Size: 03
|0AB52A| db $FD, $D8, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 1D, 20 }
|0AB52D| db $FE, $18, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 21, 20 }
|0AB530| db $84, $93, $62 ; OBJ 062 - Wall (top, east) ↕ | { 21, 24 } | Size: 03
|0AB533| db $FE, $1A, $86 ; OBJ 106 - Corner (top, convex) ▙ | { 21, 2A }
|0AB536| db $94, $A9, $01 ; OBJ 001 - Wall (top, north) ↔ | { 25, 2A } | Size: 01
|0AB539| db $9C, $A7, $0D ; OBJ 00D - Diagonal wall B ◤ (top) | { 27, 29 } | Size: 03
|0AB53C| db $95, $51, $0E ; OBJ 00E - Diagonal wall B ◣ (top) | { 25, 14 } | Size: 05
|0AB53F| db $B0, $7F, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2C, 1F } | Size: 03
|0AB542| db $6D, $51, $02 ; OBJ 002 - Wall (top, south) ↔ | { 1B, 14 } | Size: 05
|0AB545| db $63, $23, $FA ; OBJ 22F - Pot | { 18, 08 }
|0AB548| db $9B, $23, $FA ; OBJ 22F - Pot | { 26, 08 }
|0AB54B| db $E3, $83, $FA ; OBJ 22F - Pot | { 38, 20 }
|0AB54E| db $83, $93, $FA ; OBJ 22F - Pot | { 20, 24 }
|0AB551| db $4A, $0D, $60 ; OBJ 060 - Ceiling ↕ | { 12, 03 } | Size: 09
|0AB554| db $34, $56, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 0D, 15 } | Size: 02
|0AB557| db $0B, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 04 } | Size: 0F
|0AB55A| db $06, $51, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 01, 14 } | Size: 09
|0AB55D| db $34, $4F, $00 ; OBJ 000 - Ceiling ↔ | { 0D, 13 } | Size: 03
|0AB560| db $09, $9B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 26 } | Size: 07
|0AB563| db $2A, $9D, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 0A, 27 } | Size: 09
|0AB566| db $0B, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 36 } | Size: 0D
|0AB569| db $3E, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 0F, 36 } | Size: 09
|0AB56C| db $26, $D1, $00 ; OBJ 000 - Ceiling ↔ | { 09, 34 } | Size: 09
|0AB56F| db $78, $0A, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1E, 02 } | Size: 02
|0AB572| db $B3, $13, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 2C, 04 } | Size: 0F
|0AB575| db $F3, $10, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 04 } | Size: 0C
|0AB578| db $B4, $56, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 2D, 15 } | Size: 02
|0AB57B| db $B1, $4C, $00 ; OBJ 000 - Ceiling ↔ | { 2C, 13 } | Size: 04
|0AB57E| db $CE, $51, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 33, 14 } | Size: 09
|0AB581| db $97, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 25, 34 } | Size: 0E
|0AB584| db $D5, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 35, 34 } | Size: 06
|0AB587| db $A6, $CD, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 29, 33 } | Size: 09
|0AB58A| db $D9, $9B, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 26 } | Size: 07
|0AB58D| db $F1, $D8, $60 ; OBJ 060 - Ceiling ↕ | { 3C, 36 } | Size: 04
|0AB590| db $51, $7C, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 14, 1F } | Size: 04
|0AB593| db $54, $7A, $A3 ; OBJ 0A3 - Diagonal ceiling A ◢ | { 15, 1E } | Size: 02
|0AB596| db $54, $8E, $A2 ; OBJ 0A2 - Diagonal ceiling A ◥ | { 15, 23 } | Size: 02
|0AB599| db $94, $66, $A1 ; OBJ 0A1 - Diagonal ceiling A ◣ | { 25, 19 } | Size: 02
|0AB59C| db $9C, $94, $A0 ; OBJ 0A0 - Diagonal ceiling A ◤ | { 27, 25 } | Size: 00
|0AB59F| db $75, $61, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1D, 18 } | Size: 05
|0AB5A2| db $6E, $61, $60 ; OBJ 060 - Ceiling ↕ | { 1B, 18 } | Size: 09
|0AB5A5| db $95, $7A, $60 ; OBJ 060 - Ceiling ↕ | { 25, 1E } | Size: 06
|0AB5A8| db $98, $7F, $00 ; OBJ 000 - Ceiling ↔ | { 26, 1F } | Size: 03
|0AB5AB| db $98, $87, $00 ; OBJ 000 - Ceiling ↔ | { 26, 21 } | Size: 03
|0AB5AE| db $98, $8F, $00 ; OBJ 000 - Ceiling ↔ | { 26, 23 } | Size: 03
|0AB5B1| db $FF, $FF ; Layer 1
|0AB5B3| db $2A, $16, $FA ; OBJ 22A - Lamp cones | { 0A, 05 }
|0AB5B6| db $FF, $FF ; Layer 2
|0AB5B8| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_00E5:
|0AB5BA| db $12, $00 ; DOORTYPE 00 | West 02
|0AB5BC| db $71, $0E ; DOORTYPE 0E | South 0E
|0AB5BE| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0124:
|0AB5C0| db $E1, $00 ; Floors and Layout
|0AB5C2| db $2B, $A3, $FA ; OBJ 22F - Pot | { 0A, 28 }
|0AB5C5| db $2B, $AB, $FA ; OBJ 22F - Pot | { 0A, 2A }
|0AB5C8| db $2B, $B3, $FA ; OBJ 22F - Pot | { 0A, 2C }
|0AB5CB| db $28, $B8, $3D ; OBJ 03D - Tall torches ↔ | { 0A, 2E } | Size: 00
|0AB5CE| db $33, $C3, $FA ; OBJ 22F - Pot | { 0C, 30 }
|0AB5D1| db $3B, $C3, $FA ; OBJ 22F - Pot | { 0E, 30 }
|0AB5D4| db $43, $C3, $FA ; OBJ 22F - Pot | { 10, 30 }
|0AB5D7| db $4B, $C3, $FA ; OBJ 22F - Pot | { 12, 30 }
|0AB5DA| db $50, $B8, $3D ; OBJ 03D - Tall torches ↔ | { 14, 2E } | Size: 00
|0AB5DD| db $53, $B3, $FA ; OBJ 22F - Pot | { 14, 2C }
|0AB5E0| db $53, $AB, $FA ; OBJ 22F - Pot | { 14, 2A }
|0AB5E3| db $53, $A3, $FA ; OBJ 22F - Pot | { 14, 28 }
|0AB5E6| db $A9, $9E, $DC ; OBJ 0DC - Chest platform (short) ⇲ | { 2A, 27 } | Size: 06
|0AB5E9| db $A0, $C8, $3D ; OBJ 03D - Tall torches ↔ | { 28, 32 } | Size: 00
|0AB5EC| db $D8, $C8, $3D ; OBJ 03D - Tall torches ↔ | { 36, 32 } | Size: 00
|0AB5EF| db $BD, $AA, $F9 ; OBJ 219 - Chest | { 2F, 2A }
|0AB5F2| db $FF, $FF ; Layer 1
|0AB5F4| db $FF, $FF ; Layer 2
|0AB5F6| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0124:
|0AB5F8| db $61, $0E ; DOORTYPE 0E | South 0C
|0AB5FA| db $81, $0E ; DOORTYPE 0E | South 10
|0AB5FC| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0125:
RoomDataTiles_0127:
|0AB5FE| db $E1, $00 ; Floors and Layout
|0AB600| db $FE, $89, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 28, 24 }
|0AB603| db $A2, $A1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 28, 28 } | Size: 09
|0AB606| db $FE, $8E, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 28, 3A }
|0AB609| db $FF, $49, $02 ; OBJ 102 - Corner (top, concave) ▜ | { 34, 24 }
|0AB60C| db $D2, $A1, $62 ; OBJ 062 - Wall (top, east) ↕ | { 34, 28 } | Size: 09
|0AB60F| db $FF, $4E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 34, 3A }
|0AB612| db $20, $B3, $DD ; OBJ 0DD - Table / Rock ⇲| { 08, 2C } | Size: 03
|0AB615| db $50, $B3, $DD ; OBJ 0DD - Table / Rock ⇲| { 14, 2C } | Size: 03
|0AB618| db $33, $CB, $FA ; OBJ 22F - Pot | { 0C, 32 }
|0AB61B| db $3B, $CB, $FA ; OBJ 22F - Pot | { 0E, 32 }
|0AB61E| db $43, $CB, $FA ; OBJ 22F - Pot | { 10, 32 }
|0AB621| db $4B, $CB, $FA ; OBJ 22F - Pot | { 12, 32 }
|0AB624| db $BF, $94, $F9 ; OBJ 213 - Telepathy tile | { 2F, 25 }
|0AB627| db $B3, $B3, $FA ; OBJ 22F - Pot | { 2C, 2C }
|0AB62A| db $CB, $B3, $FA ; OBJ 22F - Pot | { 32, 2C }
|0AB62D| db $AD, $C8, $DF ; OBJ 0DF - Spiked floor ⇲ | { 2B, 32 } | Size: 04
|0AB630| db $C4, $C8, $DF ; OBJ 0DF - Spiked floor ⇲ | { 31, 32 } | Size: 00
|0AB633| db $B3, $E3, $FA ; OBJ 22F - Pot | { 2C, 38 }
|0AB636| db $CB, $E3, $FA ; OBJ 22F - Pot | { 32, 38 }
|0AB639| db $81, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 20, 24 } | Size: 07
|0AB63C| db $81, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 20, 34 } | Size: 06
|0AB63F| db $E1, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 38, 24 } | Size: 07
|0AB642| db $E1, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 38, 34 } | Size: 06
|0AB645| db $FF, $FF ; Layer 1
|0AB647| db $FF, $FF ; Layer 2
|0AB649| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0125:
RoomDataDoors_0127:
|0AB64B| db $61, $0E ; DOORTYPE 0E | South 0C
|0AB64D| db $81, $0E ; DOORTYPE 0E | South 10
|0AB64F| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0126:
|0AB651| db $E1, $00 ; Floors and Layout
|0AB653| db $FC, $2C, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 32 }
|0AB656| db $18, $CA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 06, 32 } | Size: 02
|0AB659| db $FC, $AC, $85 ; OBJ 105 - Corner (top, convex) ▜ | { 0A, 32 }
|0AB65C| db $28, $DA, $61 ; OBJ 061 - Wall (top, west) ↕ | { 0A, 36 } | Size: 02
|0AB65F| db $FD, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 12, 3A }
|0AB662| db $48, $DA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 12, 36 } | Size: 02
|0AB665| db $FD, $2C, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 12, 32 }
|0AB668| db $58, $CA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 16, 32 } | Size: 02
|0AB66B| db $FD, $AC, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 1A, 32 }
|0AB66E| db $FC, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 0A, 3A }
|0AB671| db $FE, $A9, $00 ; OBJ 100 - Corner (top, concave) ▛ | { 2A, 24 }
|0AB674| db $AA, $A1, $61 ; OBJ 061 - Wall (top, west) ↕ | { 2A, 28 } | Size: 09
|0AB677| db $FE, $AE, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 2A, 3A }
|0AB67A| db $FF, $AC, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 3A, 32 }
|0AB67D| db $D8, $CA, $02 ; OBJ 002 - Wall (top, south) ↔ | { 36, 32 } | Size: 02
|0AB680| db $FF, $2C, $87 ; OBJ 107 - Corner (top, convex) ▛ | { 32, 32 }
|0AB683| db $C8, $DA, $62 ; OBJ 062 - Wall (top, east) ↕ | { 32, 36 } | Size: 02
|0AB686| db $FF, $2E, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 32, 3A }
|0AB689| db $31, $A1, $C8 ; OBJ 0C8 - Water floor ⇲ | { 0C, 28 } | Size: 05
|0AB68C| db $2D, $A3, $3F ; OBJ 03F - Water edge ┏━┓ (concave) ↔ | { 0B, 28 } | Size: 07
|0AB68F| db $2D, $A6, $79 ; OBJ 079 - Water edge (west) ↕ | { 0B, 29 } | Size: 06
|0AB692| db $2D, $C3, $40 ; OBJ 040 - Water edge ┗━┛ (concave) ↔ | { 0B, 30 } | Size: 07
|0AB695| db $51, $A6, $7A ; OBJ 07A - Water edge (east) ↕ | { 14, 29 } | Size: 06
|0AB698| db $FC, $6A, $A4 ; OBJ 124 - Fairy statue | { 06, 2A }
|0AB69B| db $FD, $6A, $A4 ; OBJ 124 - Fairy statue | { 16, 2A }
|0AB69E| db $D8, $B8, $5E ; OBJ 05E - Blocks ↔ | { 36, 2E } | Size: 00
|0AB6A1| db $C8, $A9, $89 ; OBJ 089 - Blocks ↕ | { 32, 2A } | Size: 01
|0AB6A4| db $E0, $C0, $5E ; OBJ 05E - Blocks ↔ | { 38, 30 } | Size: 00
|0AB6A7| db $B7, $9E, $69 ; OBJ 069 - Rail ↕ | { 2D, 27 } | Size: 0E
|0AB6AA| db $B4, $DC, $69 ; OBJ 069 - Rail ↕ | { 2D, 37 } | Size: 00
|0AB6AD| db $B6, $9E, $22 ; OBJ 022 - Rail ↔ | { 2D, 27 } | Size: 0A
|0AB6B0| db $EA, $9C, $69 ; OBJ 069 - Rail ↕ | { 3A, 27 } | Size: 08
|0AB6B3| db $C9, $C9, $22 ; OBJ 022 - Rail ↔ | { 32, 32 } | Size: 05
|0AB6B6| db $89, $93, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 24 } | Size: 07
|0AB6B9| db $89, $D2, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 22, 34 } | Size: 06
|0AB6BC| db $D9, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 36, 36 } | Size: 05
|0AB6BF| db $09, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 36 } | Size: 05
|0AB6C2| db $59, $D9, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 16, 36 } | Size: 05
|0AB6C5| db $FF, $FF ; Layer 1
|0AB6C7| db $FF, $FF ; Layer 2
|0AB6C9| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0126:
|0AB6CB| db $61, $0E ; DOORTYPE 0E | South 0C
|0AB6CD| db $81, $0E ; DOORTYPE 0E | South 10
|0AB6CF| db $FF, $FF ; End

;===================================================================================================

RoomDataTiles_0123:
|0AB6D1| db $E1, $00 ; Floors and Layout
|0AB6D3| db $FC, $25, $01 ; OBJ 101 - Corner (top, concave) ▙ | { 02, 14 }
|0AB6D6| db $FC, $65, $05 ; OBJ 105 - Corner (top, convex) ▜ | { 06, 14 }
|0AB6D9| db $18, $61, $61 ; OBJ 061 - Wall (top, west) ↕ | { 06, 18 } | Size: 01
|0AB6DC| db $FC, $66, $81 ; OBJ 101 - Corner (top, concave) ▙ | { 06, 1A }
|0AB6DF| db $FD, $66, $83 ; OBJ 103 - Corner (top, concave) ▟ | { 16, 1A }
|0AB6E2| db $58, $61, $62 ; OBJ 062 - Wall (top, east) ↕ | { 16, 18 } | Size: 01
|0AB6E5| db $FD, $65, $07 ; OBJ 107 - Corner (top, convex) ▛ | { 16, 14 }
|0AB6E8| db $FD, $A5, $03 ; OBJ 103 - Corner (top, concave) ▟ | { 1A, 14 }
|0AB6EB| db $19, $2A, $F9 ; OBJ 219 - Chest | { 06, 0A }
|0AB6EE| db $29, $22, $F9 ; OBJ 219 - Chest | { 0A, 08 }
|0AB6F1| db $51, $22, $F9 ; OBJ 219 - Chest | { 14, 08 }
|0AB6F4| db $61, $2A, $F9 ; OBJ 219 - Chest | { 18, 0A }
|0AB6F7| db $30, $41, $3D ; OBJ 03D - Tall torches ↔ | { 0C, 10 } | Size: 01
|0AB6FA| db $28, $A7, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 0A, 29 } | Size: 03
|0AB6FD| db $48, $A7, $C2 ; OBJ 0C2 - Layer 2 pit mask (large) ⇲ | { 12, 29 } | Size: 03
|0AB700| db $28, $A1, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 0A, 28 } | Size: 01
|0AB703| db $2B, $A7, $6A ; OBJ 06A - Pit edge (west) ↕ | { 0A, 29 } | Size: 0F
|0AB706| db $28, $E5, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 0A, 39 } | Size: 01
|0AB709| db $37, $A7, $6B ; OBJ 06B - Pit edge (east) ↕ | { 0D, 29 } | Size: 0F
|0AB70C| db $48, $A1, $27 ; OBJ 027 - Pit edge ┏━┓ E (north) ↔ | { 12, 28 } | Size: 01
|0AB70F| db $4B, $A7, $6A ; OBJ 06A - Pit edge (west) ↕ | { 12, 29 } | Size: 0F
|0AB712| db $48, $E5, $28 ; OBJ 028 - Pit edge ┗━┛ (south) ↔ | { 12, 39 } | Size: 01
|0AB715| db $57, $A7, $6B ; OBJ 06B - Pit edge (east) ↕ | { 15, 29 } | Size: 0F
|0AB718| db $08, $61, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 02, 18 } | Size: 01
|0AB71B| db $68, $61, $C0 ; OBJ 0C0 - Ceiling (large) ⇲ | { 1A, 18 } | Size: 01
|0AB71E| db $FF, $FF ; Layer 1
|0AB720| db $FF, $FF ; Layer 2
|0AB722| db $F0, $FF ; Doors

;---------------------------------------------------------------------------------------------------

RoomDataDoors_0123:
|0AB724| db $60, $36 ; DOORTYPE 36 | North 0C
|0AB726| db $61, $0E ; DOORTYPE 0E | South 0C
|0AB728| db $FF, $FF ; End

;===================================================================================================
; END OF ROOM DATA
;===================================================================================================
; FREE ROM: 0x26
;===================================================================================================
NULL_0AB72A:
|0AB72A| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AB732| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AB73A| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AB742| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AB74A| db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

Module0E_0A_FluteMenu:
|0AB750| LDA.w $0200
|0AB753| JSL JumpTableLocal
|0AB757| dw WorldMap_FadeOut
|0AB759| dw FluteMenu_LoadMap
|0AB75B| dw WorldMap_LoadSpriteGFX
|0AB75D| dw WorldMap_Brighten
|0AB75F| dw FluteMenu_AdvanceMode
|0AB761| dw FluteMenu_HandleSelection
|0AB763| dw WorldMap_RestoreGraphics
|0AB765| dw FluteMenu_LoadSelectedScreen
|0AB767| dw Overworld_LoadOverlayAndMap
|0AB769| dw FluteMenu_FadeInAndQuack

;===================================================================================================

FluteMenu_LoadMap:
|0AB76B| STZ.w $1AF0

|0AB76E| JSL WorldMap_LoadLightWorldMap

|0AB772| RTL

;===================================================================================================
; Why does this need its own mode?
FluteMenu_AdvanceMode:
|0AB773| LDA.b #$10
|0AB775| STA.b $C8

|0AB777| INC.w $0200

|0AB77A| RTL

;===================================================================================================

FluteMenuNumbers:
.char
|0AB77B| db $7F
|0AB77C| db $79
|0AB77D| db $6C
|0AB77E| db $6D
|0AB77F| db $6E
|0AB780| db $6F
|0AB781| db $7C
|0AB782| db $7D

.pos_x_low
|0AB783| db $80
|0AB784| db $CF
|0AB785| db $10
|0AB786| db $B8
|0AB787| db $30
|0AB788| db $70
|0AB789| db $70
|0AB78A| db $F0

.pos_x_high
|0AB78B| db $06
|0AB78C| db $0C
|0AB78D| db $02
|0AB78E| db $08
|0AB78F| db $0F
|0AB790| db $00
|0AB791| db $07
|0AB792| db $0E

.pos_y_low
|0AB793| db $5B
|0AB794| db $98
|0AB795| db $C0
|0AB796| db $20
|0AB797| db $50
|0AB798| db $B0
|0AB799| db $30
|0AB79A| db $80

.pos_y_high
|0AB79B| db $03
|0AB79C| db $05
|0AB79D| db $07
|0AB79E| db $0B
|0AB79F| db $0B
|0AB7A0| db $0F
|0AB7A1| db $0F
|0AB7A2| db $0F

; seems unused
; locking of locations?
.bits
|0AB7A3| db $80
|0AB7A4| db $40
|0AB7A5| db $20
|0AB7A6| db $10
|0AB7A7| db $08
|0AB7A8| db $04
|0AB7A9| db $02
|0AB7AA| db $01

;---------------------------------------------------------------------------------------------------

FluteMenu_HandleSelection:
|0AB7AB| LDA.b $C8
|0AB7AD| BNE .delay

|0AB7AF| LDA.b $F2
|0AB7B1| ORA.b $F0
|0AB7B3| AND.b #$C0
|0AB7B5| BEQ .no_selection_made

|0AB7B7| INC.w $0200

|0AB7BA| RTL

;---------------------------------------------------------------------------------------------------

.delay
|0AB7BB| DEC.b $C8

.no_selection_made
|0AB7BD| LDY.b #$07
|0AB7BF| LDX.w $1AF0

.continue_from_unreachable
|0AB7C2| BRA .continue

;---------------------------------------------------------------------------------------------------

; just some unused increment?
.unreachable
|0AB7C4| TXA
|0AB7C5| INC A
|0AB7C6| AND.b #$07
|0AB7C8| TAX

|0AB7C9| DEY
|0AB7CA| BPL .continue_from_unreachable

;---------------------------------------------------------------------------------------------------

.continue
|0AB7CC| STX.w $1AF0

|0AB7CF| LDA.b $F4
|0AB7D1| AND.b #$0A
|0AB7D3| BEQ .pressed_up_or_left

|0AB7D5| DEC.w $1AF0

|0AB7D8| LDA.b #$20 ; SFX3.20
|0AB7DA| STA.w $012F

.pressed_up_or_left
|0AB7DD| LDA.b $F4
|0AB7DF| AND.b #$05
|0AB7E1| BEQ .pressed_down_or_right

|0AB7E3| INC.w $1AF0

|0AB7E6| LDA.b #$20 ; SFX3.20
|0AB7E8| STA.w $012F

.pressed_down_or_right
|0AB7EB| LDA.w $1AF0
|0AB7EE| AND.b #$07
|0AB7F0| STA.w $1AF0

|0AB7F3| LDA.b $1A
|0AB7F5| AND.b #$10
|0AB7F7| BEQ .dont_draw_link

;---------------------------------------------------------------------------------------------------

|0AB7F9| JSR WorldMap_CalculateOAMCoordinates
|0AB7FC| BCC .dont_draw_link

|0AB7FE| LDA.b $0E
|0AB800| SEC
|0AB801| SBC.b #$04
|0AB803| STA.b $0E

|0AB805| LDA.b $0F
|0AB807| SEC
|0AB808| SBC.b #$04
|0AB80A| STA.b $0F

|0AB80C| LDA.b #$00
|0AB80E| STA.b $0D

|0AB810| LDA.b #$3E
|0AB812| STA.b $0C

|0AB814| LDA.b #$02
|0AB816| STA.b $0B

|0AB818| LDX.b #$10
|0AB81A| JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.dont_draw_link
|0AB81D| LDA.l $7EC108
|0AB821| PHA

|0AB822| LDA.l $7EC109
|0AB826| PHA

|0AB827| LDA.l $7EC10A
|0AB82B| PHA

|0AB82C| LDA.l $7EC10B
|0AB830| PHA

|0AB831| LDX.b #$07

;---------------------------------------------------------------------------------------------------

.next_numeral
|0AB833| CPX.w $1AF0
|0AB836| BNE .not_selected

.selected
|0AB838| LDA.l FluteMenuNumbers.pos_x_low,X
|0AB83C| STA.w $1AB0,X
|0AB83F| STA.l $7EC10A

|0AB843| LDA.l FluteMenuNumbers.pos_x_high,X
|0AB847| STA.w $1AC0,X
|0AB84A| STA.l $7EC10B

|0AB84E| LDA.l FluteMenuNumbers.pos_y_low,X
|0AB852| STA.w $1AD0,X
|0AB855| STA.l $7EC108

|0AB859| LDA.l FluteMenuNumbers.pos_y_high,X
|0AB85D| STA.w $1AE0,X
|0AB860| STA.l $7EC109

|0AB864| PHX
|0AB865| JSR WorldMap_CalculateOAMCoordinates
|0AB868| PLX

|0AB869| BCC .to_next_numeral

|0AB86B| LDA.l FluteMenuNumbers.char,X
|0AB86F| STA.b $0D

|0AB871| LDA.b $1A
|0AB873| AND.b #$06
|0AB875| ORA.b #$30
|0AB877| STA.b $0C

|0AB879| LDA.b #$00
|0AB87B| STA.b $0B

|0AB87D| PHX
|0AB87E| JSR WorldMap_HandleSpriteBlink
|0AB881| PLX

|0AB882| BRA .to_next_numeral

;---------------------------------------------------------------------------------------------------

.not_selected
|0AB884| LDA.l FluteMenuNumbers.pos_x_low,X
|0AB888| STA.w $1AB0,X
|0AB88B| STA.l $7EC10A

|0AB88F| LDA.l FluteMenuNumbers.pos_x_high,X
|0AB893| STA.w $1AC0,X
|0AB896| STA.l $7EC10B

|0AB89A| LDA.l FluteMenuNumbers.pos_y_low,X
|0AB89E| STA.w $1AD0,X
|0AB8A1| STA.l $7EC108

|0AB8A5| LDA.l FluteMenuNumbers.pos_y_high,X
|0AB8A9| STA.w $1AE0,X
|0AB8AC| STA.l $7EC109

|0AB8B0| PHX

|0AB8B1| JSR WorldMap_CalculateOAMCoordinates

|0AB8B4| PLX

|0AB8B5| BCC .to_next_numeral

|0AB8B7| LDA.l FluteMenuNumbers.char,X
|0AB8BB| STA.b $0D

|0AB8BD| LDA.b #$32
|0AB8BF| STA.b $0C

|0AB8C1| LDA.b #$00
|0AB8C3| STA.b $0B

|0AB8C5| PHX

|0AB8C6| JSR WorldMap_HandleSpriteBlink

|0AB8C9| PLX

;---------------------------------------------------------------------------------------------------

.to_next_numeral
|0AB8CA| DEX
|0AB8CB| BMI .done

|0AB8CD| JMP.w .next_numeral

;---------------------------------------------------------------------------------------------------

.done
|0AB8D0| PLA
|0AB8D1| STA.l $7EC10B

|0AB8D5| PLA
|0AB8D6| STA.l $7EC10A

|0AB8DA| PLA
|0AB8DB| STA.l $7EC109

|0AB8DF| PLA
|0AB8E0| STA.l $7EC108

|0AB8E4| RTL

;===================================================================================================

FluteMenu_LoadSelectedScreen:
; disable dam drain
|0AB8E5| LDA.l $7EF2BB
|0AB8E9| AND.b #$DF
|0AB8EB| STA.l $7EF2BB

; disable swamp flood
|0AB8EF| LDA.l $7EF2FB
|0AB8F3| AND.b #$DF
|0AB8F5| STA.l $7EF2FB

; disable dam flood
|0AB8F9| LDA.l $7EF216
|0AB8FD| AND.b #$7F
|0AB8FF| STA.l $7EF216

; disable swamp entrance flood
|0AB903| LDA.l $7EF051
|0AB907| AND.b #$FE
|0AB909| STA.l $7EF051

|0AB90D| JSL LoadFluteSpot
|0AB911| JSL LoadLandingScreenPalettes

;---------------------------------------------------------------------------------------------------

|0AB915| LDY.b #$58

|0AB917| LDA.b $8A
|0AB919| AND.b #$BF
|0AB91B| CMP.b #$03 ; OW 03, OW 43
|0AB91D| BEQ .death_mountain

|0AB91F| CMP.b #$05 ; OW 05, OW 45
|0AB921| BEQ .death_mountain

|0AB923| CMP.b #$07 ; OW 07, OW 47
|0AB925| BEQ .death_mountain

|0AB927| LDY.b #$5A

.death_mountain
|0AB929| JSL DecompressAnimatedOverworldTiles
|0AB92D| JSL Overworld_SetFixedColAndScroll

|0AB931| STZ.w $0AA9
|0AB934| STZ.w $0AB2

|0AB937| JSL InitializeTilesets

|0AB93B| INC.w $0200

|0AB93E| STZ.b $B2

|0AB940| JSL ReloadSubscreenOverlayAndAdvance_long

;---------------------------------------------------------------------------------------------------

|0AB944| LDA.b #$10 ; SFX3.10
|0AB946| STA.w $012F

|0AB949| LDA.b $8A
|0AB94B| AND.b #$BF

|0AB94D| LDX.b #$02 ; SONG 02

; are we in kak?
|0AB94F| CMP.b #$18 ; OW 18, OW 58
|0AB951| BNE .use_this_song

; is aga dead?
|0AB953| LDA.l $7EF3C5
|0AB957| CMP.b #$03
|0AB959| BCS .use_this_song

|0AB95B| LDX.b #$07 ; SONG 07

.use_this_song
|0AB95D| CPX.w $0130
|0AB960| BNE .songs_differ

|0AB962| LDX.b #$F3 ; SONG F3 - max volume
|0AB964| STX.w $012C

|0AB967| RTL

.songs_differ
|0AB968| STX.w $012C

|0AB96B| RTL

;===================================================================================================

Overworld_LoadOverlayAndMap:
|0AB96C| REP #$20

|0AB96E| LDA.b $10
|0AB970| PHA

|0AB971| LDA.w $0200
|0AB974| PHA

|0AB975| SEP #$20

|0AB977| JSL LoadAndBuildOverworldScreen_long

|0AB97B| REP #$20

|0AB97D| PLA
|0AB97E| INC A
|0AB97F| STA.w $0200

|0AB982| PLA
|0AB983| STA.b $10

|0AB985| SEP #$20

|0AB987| RTL

;===================================================================================================

FluteMenu_FadeInAndQuack:
|0AB988| INC.b $13

|0AB98A| LDA.b $13
|0AB98C| CMP.b #$0F
|0AB98E| BNE .delay

;===================================================================================================

#SpawnLandingDuck:
|0AB990| STZ.w $0200
|0AB993| STZ.b $B0

|0AB995| LDA.w $010C
|0AB998| STA.b $10
|0AB99A| STZ.b $11

|0AB99C| LDA.l $7EC229
|0AB9A0| STA.b $9B

|0AB9A2| LDY.b #$04
|0AB9A4| LDA.b #$27 ; ANCILLA 27
|0AB9A6| JSL AncillaAdd_Duck_drop_off

.delay
|0AB9AA| JSL HandleAllSprites

|0AB9AE| RTL

;===================================================================================================

Module0E_07_OverworldMap:
|0AB9AF| LDA.w $0200
|0AB9B2| JSL JumpTableLocal
|0AB9B6| dw WorldMap_FadeOut
|0AB9B8| dw WorldMap_LoadLightWorldMap
|0AB9BA| dw WorldMap_LoadDarkWorldMap
|0AB9BC| dw WorldMap_LoadSpriteGFX
|0AB9BE| dw WorldMap_Brighten
|0AB9C0| dw WorldMap_PlayerControl
|0AB9C2| dw WorldMap_RestoreGraphics
|0AB9C4| dw WorldMap_ExitMap

;===================================================================================================

#EXIT_0AB9C6:
|0AB9C6| RTL

;---------------------------------------------------------------------------------------------------

WorldMap_FadeOut:
|0AB9C7| DEC.b $13
|0AB9C9| BNE EXIT_0AB9C6

|0AB9CB| LDA.b $9B
|0AB9CD| STA.l $7EC229

|0AB9D1| JSL EnableForceBlank

|0AB9D5| LDA.b #$03
|0AB9D7| STA.b $95

|0AB9D9| INC.w $0200

|0AB9DC| REP #$20

|0AB9DE| LDA.b $1C
|0AB9E0| STA.l $7EC211

|0AB9E4| LDA.b $E0
|0AB9E6| STA.l $7EC200

|0AB9EA| LDA.b $E2
|0AB9EC| STA.l $7EC202

|0AB9F0| LDA.b $E6
|0AB9F2| STA.l $7EC204

|0AB9F6| LDA.b $E8
|0AB9F8| STA.l $7EC206

|0AB9FC| STZ.b $E0
|0AB9FE| STZ.b $E2

|0ABA00| STZ.b $E4
|0ABA02| STZ.b $E6

|0ABA04| STZ.b $E8
|0ABA06| STZ.b $EA

|0ABA08| LDA.b $99
|0ABA0A| STA.l $7EC225

|0ABA0E| LDA.w #$01FC
|0ABA11| STA.w $0100

;---------------------------------------------------------------------------------------------------

|0ABA14| LDX.b $8A
|0ABA16| CPX.b #$80 ; SPOW
|0ABA18| BCS .special_overworld

|0ABA1A| LDA.b $20
|0ABA1C| STA.l $7EC108

|0ABA20| LDA.b $22
|0ABA22| STA.l $7EC10A

.special_overworld
|0ABA26| SEP #$20

|0ABA28| LDA.l $7EF3C5
|0ABA2C| CMP.b #$02
|0ABA2E| BCS .zelda_rescured

; clip to black inside color window
|0ABA30| LDA.b #$80
|0ABA32| STA.b $99

; half color math, enabled for BG1 and CG0
|0ABA34| LDA.b #$61
|0ABA36| STA.b $9A

.zelda_rescured
|0ABA38| LDA.b #$10 ; SFX3.10
|0ABA3A| STA.w $012F

|0ABA3D| LDA.b #$F2 ; SONG F2 - half volume
|0ABA3F| STA.w $012C

|0ABA42| LDA.b #$07
|0ABA44| STA.w BGMODE
|0ABA47| STA.b $94

|0ABA49| LDA.b #$80
|0ABA4B| STA.w M7SEL

|0ABA4E| RTL

;===================================================================================================

WorldMap_LoadLightWorldMap:
|0ABA4F| JSR WorldMap_FillTilemapWithEF

|0ABA52| LDA.b #$11
|0ABA54| STA.b $1C
|0ABA56| STZ.b $1D

|0ABA58| JSL TransferMode7Characters
|0ABA5C| JSR WorldMap_SetUpHDMA

|0ABA5F| PHB

|0ABA60| LDA.b #^Palettes_OWMAP
|0ABA62| PHA
|0ABA63| PLB

|0ABA64| REP #$30

|0ABA66| LDX.w #$00FE
|0ABA69| LDY.w #$00FE

|0ABA6C| LDA.b $8A
|0ABA6E| AND.w #$0040
|0ABA71| BEQ .next_color

|0ABA73| LDY.w #$01FE

.next_color
|0ABA76| LDA.w Palettes_OWMAP,Y
|0ABA79| STA.l $7EC500,X

|0ABA7D| DEY
|0ABA7E| DEY

|0ABA7F| DEX
|0ABA80| DEX
|0ABA81| BPL .next_color

|0ABA83| SEP #$30

|0ABA85| PLB

|0ABA86| JSL RefreshEquipmentPalettes_sword_and_mail

|0ABA8A| INC.b $15

|0ABA8C| LDA.b #$07
|0ABA8E| STA.b $17

|0ABA90| STZ.b $13

|0ABA92| INC.w $0710
|0ABA95| INC.w $0200

|0ABA98| RTL

;===================================================================================================

WorldMap_LoadDarkWorldMap:
|0ABA99| LDA.b $8A
|0ABA9B| AND.b #$40
|0ABA9D| BEQ .light_world

|0ABA9F| REP #$30

|0ABAA1| LDX.w #$03FE

.copy_next
|0ABAA4| LDA.l WorldMap_DarkWorldTilemap,X
|0ABAA8| STA.w $1000,X

|0ABAAB| DEX
|0ABAAC| DEX
|0ABAAD| BPL .copy_next

|0ABAAF| SEP #$30

; Trigger dark world tile map update
|0ABAB1| LDA.b #$15
|0ABAB3| STA.b $17

.light_world
|0ABAB5| INC.w $0200

|0ABAB8| RTL

;===================================================================================================

WorldMap_LoadSpriteGFX:
|0ABAB9| LDA.b #$10
|0ABABB| STA.w $0AAA

|0ABABE| JSL LoadChrHalfSlot

|0ABAC2| STZ.w $0AAA

|0ABAC5| INC.w $0200

|0ABAC8| RTL

;===================================================================================================

WorldMap_Brighten:
|0ABAC9| INC.b $13

|0ABACB| LDA.b $13
|0ABACD| CMP.b #$0F
|0ABACF| BNE .exit

|0ABAD1| INC.w $0200

.exit
|0ABAD4| RTL

;===================================================================================================

UNREACHABLE_0ABAD5:
|0ABAD5| db $1E, $00, $1E, $02, $FE, $02, $00, $80
|0ABADD| db $02, $80, $00, $01, $FF, $01

;===================================================================================================

WorldMap_BaseZoom:
|0ABAE3| db $21 ; zoomed out
|0ABAE4| db $0C ; zoomed in

;===================================================================================================

WorldMap_PanMovements:
|0ABAE5| dw $0000 ; none
|0ABAE7| dw $0000 ; none
|0ABAE9| dw $0001 ; down
|0ABAEB| dw $0002 ; right
|0ABAED| dw $FFFF ; up
|0ABAEF| dw $FFFE ; left
|0ABAF1| dw $0001 ; never used, but handles UD
|0ABAF3| dw $0002 ; never used, but handles LR

;===================================================================================================

WorldMap_PanBoundaries:
|0ABAF5| db $00, $00 ; none
|0ABAF7| db $00, $00 ; none
|0ABAF9| db $E0, $00 ; down
|0ABAFB| db $E0, $01 ; right
|0ABAFD| db $B8, $FF ; up
|0ABAFF| db $20, $FF ; left

;===================================================================================================

WorldMapHDMA_ZoomPointers:
|0ABB01| dw WorldMapHDMA_ZoomedOut
|0ABB03| dw WorldMapHDMA_ZoomedIn

;===================================================================================================

WorldMap_PlayerControl:
|0ABB05| LDA.w $0636
|0ABB08| ASL A
|0ABB09| BCC .no_zoom_change

|0ABB0B| TAX

|0ABB0C| LSR A
|0ABB0D| STA.w $0636

|0ABB10| LDA.l WorldMapHDMA_ZoomPointers,X
|0ABB14| STA.w DMA6ADDRL
|0ABB17| STA.w DMA7ADDRL

.no_zoom_change
|0ABB1A| LDA.w $0636
|0ABB1D| BNE .ignore_change

; check for X
|0ABB1F| LDA.b $F6
|0ABB21| AND.b #$40
|0ABB23| BEQ .ignore_change

|0ABB25| INC.w $0200

|0ABB28| RTL

;---------------------------------------------------------------------------------------------------

.ignore_change
; short timer to prevent fast changing
|0ABB29| LDA.b $B2
|0ABB2B| BEQ .not_switching

|0ABB2D| DEC.b $B2
|0ABB2F| JMP.w .continue

;---------------------------------------------------------------------------------------------------

.not_switching
; check for lr
|0ABB32| LDA.b $F6
|0ABB34| AND.b #$70
|0ABB36| BEQ .continue

|0ABB38| LDA.b #$24 ; SFX3.24
|0ABB3A| STA.w $012F

|0ABB3D| LDA.b #$08
|0ABB3F| STA.b $B2

|0ABB41| LDA.w $0636
|0ABB44| EOR.b #$01
|0ABB46| TAX

|0ABB47| ORA.b #$80
|0ABB49| STA.w $0636

|0ABB4C| LDA.l WorldMap_BaseZoom,X
|0ABB50| STA.w $0637

|0ABB53| CMP.b #$0C
|0ABB55| BNE .not_zoomed_in

;---------------------------------------------------------------------------------------------------

.zoomed_in
|0ABB57| REP #$20

|0ABB59| LDA.l $7EC108

|0ABB5D| LSR A
|0ABB5E| LSR A
|0ABB5F| LSR A
|0ABB60| LSR A

|0ABB61| SEC
|0ABB62| SBC.w #$0048
|0ABB65| AND.w #$FFFE
|0ABB68| STA.b $E6

|0ABB6A| CLC
|0ABB6B| ADC.w #$0100
|0ABB6E| STA.w $063A

|0ABB71| LDA.l $7EC10A

|0ABB75| LSR A
|0ABB76| LSR A
|0ABB77| LSR A
|0ABB78| LSR A

|0ABB79| SEC
|0ABB7A| SBC.w #$0080
|0ABB7D| STA.b $02
|0ABB7F| BPL .x_positive_a

|0ABB81| EOR.w #$FFFF
|0ABB84| INC A

.x_positive_a
|0ABB85| STA.b $00

|0ABB87| ASL A
|0ABB88| ASL A

|0ABB89| CLC
|0ABB8A| ADC.b $00

|0ABB8C| LSR A

|0ABB8D| LDX.b $03
|0ABB8F| BPL .x_positive_b

|0ABB91| EOR.w #$FFFF
|0ABB94| INC A

.x_positive_b
|0ABB95| CLC
|0ABB96| ADC.w #$0080
|0ABB99| BRA .set_scroll

;---------------------------------------------------------------------------------------------------

.not_zoomed_in
|0ABB9B| REP #$21

|0ABB9D| LDA.w #$00C8
|0ABBA0| STA.b $E6

|0ABBA2| ADC.w #$0100
|0ABBA5| STA.w $063A

|0ABBA8| LDA.w #$0080

;---------------------------------------------------------------------------------------------------

.set_scroll
|0ABBAB| AND.w #$FFFE
|0ABBAE| STA.b $E0

;---------------------------------------------------------------------------------------------------

.continue
|0ABBB0| SEP #$20

|0ABBB2| LDA.w $0636
|0ABBB5| BEQ .map_zoomed_out

|0ABBB7| LDA.b $F0
|0ABBB9| AND.b #$0C
|0ABBBB| TAX

|0ABBBC| REP #$20

|0ABBBE| LDA.b $E6
|0ABBC0| CMP.l WorldMap_PanBoundaries,X
|0ABBC4| BEQ .at_vertical_boundary

|0ABBC6| CLC
|0ABBC7| ADC.l WorldMap_PanMovements,X
|0ABBCB| STA.b $E6

|0ABBCD| CLC
|0ABBCE| ADC.w #$0100
|0ABBD1| STA.w $063A

.at_vertical_boundary
|0ABBD4| SEP #$20

;---------------------------------------------------------------------------------------------------

; check for lr
|0ABBD6| LDA.b $F0
|0ABBD8| AND.b #$03
|0ABBDA| ASL A

|0ABBDB| INC A
|0ABBDC| ASL A
|0ABBDD| TAX

|0ABBDE| REP #$20

|0ABBE0| LDA.b $E0
|0ABBE2| CMP.l WorldMap_PanBoundaries,X
|0ABBE6| BEQ .at_horizontal_boundary

|0ABBE8| CLC
|0ABBE9| ADC.l WorldMap_PanMovements,X
|0ABBED| STA.b $E0

.at_horizontal_boundary
|0ABBEF| SEP #$20

.map_zoomed_out
|0ABBF1| JSR WorldMap_HandleSprites

;---------------------------------------------------------------------------------------------------

#EXIT_0ABBF4:
|0ABBF4| RTL

;===================================================================================================

WorldMap_RestoreGraphics:
|0ABBF5| DEC.b $13
|0ABBF7| BNE EXIT_0ABBF4

|0ABBF9| JSL EnableForceBlank

|0ABBFD| INC.w $0200

;---------------------------------------------------------------------------------------------------

|0ABC00| REP #$20

|0ABC02| LDX.b #$00

.next_color
|0ABC04| LDA.l $7EC300,X
|0ABC08| STA.l $7EC500,X

|0ABC0C| LDA.l $7EC380,X
|0ABC10| STA.l $7EC580,X

|0ABC14| LDA.l $7EC400,X
|0ABC18| STA.l $7EC600,X

|0ABC1C| LDA.l $7EC480,X
|0ABC20| STA.l $7EC680,X

|0ABC24| INX
|0ABC25| INX
|0ABC26| CPX.b #$80
|0ABC28| BNE .next_color

;---------------------------------------------------------------------------------------------------

|0ABC2A| LDA.l $7EC225
|0ABC2E| STA.b $99

|0ABC30| STZ.b $E4
|0ABC32| STZ.b $EA

|0ABC34| LDA.l $7EC200
|0ABC38| STA.b $E0

|0ABC3A| LDA.l $7EC202
|0ABC3E| STA.b $E2

|0ABC40| LDA.l $7EC204
|0ABC44| STA.b $E6

|0ABC46| LDA.l $7EC206
|0ABC4A| STA.b $E8

|0ABC4C| LDA.l $7EC211
|0ABC50| STA.b $1C

;===================================================================================================

Attract_SetUpConclusionHDMA:
|0ABC52| LDA.w #WorldMapHDMA_AttractMode
|0ABC55| STA.w DMA7ADDRL

|0ABC58| LDX.b #^WorldMapHDMA_AttractMode
|0ABC5A| STX.w DMA7ADDRB

|0ABC5D| LDX.b #$00
|0ABC5F| STX.w HDMA7ITBLB

|0ABC62| SEP #$30

|0ABC64| LDA.b #$80
|0ABC66| STA.b $9B

|0ABC68| LDA.b #$09
|0ABC6A| STA.w BGMODE
|0ABC6D| STA.b $94

|0ABC6F| STZ.w $0710

|0ABC72| RTL

;===================================================================================================

WorldMap_ExitMap:
|0ABC73| STZ.w $0AA9
|0ABC76| STZ.w $0AB2

|0ABC79| JSL InitializeTilesets

|0ABC7D| INC.b $15

|0ABC7F| STZ.b $B2
|0ABC81| STZ.w $0200
|0ABC84| STZ.b $B0

|0ABC86| LDA.w $010C
|0ABC89| STA.b $10

|0ABC8B| LDA.b #$20
|0ABC8D| STA.b $11

|0ABC8F| STZ.w $1000
|0ABC92| STZ.w $1001

|0ABC95| LDA.l $7EC229
|0ABC99| STA.b $9B

|0ABC9B| SEP #$20

|0ABC9D| LDA.b #$10 ; SFX3.10
|0ABC9F| STA.w $012F

|0ABCA2| LDA.b #$F3 ; SONG F3 - max volume
|0ABCA4| STA.w $012C

|0ABCA7| RTL

;===================================================================================================

WorldMap_SetUpHDMA:
|0ABCA8| REP #$20

|0ABCAA| LDA.w #$0080
|0ABCAD| STA.b $E0

|0ABCAF| LDA.w #$00C8
|0ABCB2| STA.b $E6

|0ABCB4| ADC.w #$0100
|0ABCB7| STA.w $063A

|0ABCBA| LDA.w #$0100
|0ABCBD| STA.w $0638

; HDMA mode 2: 1 register write twice
; Indirect HDMA table
; register: $211B - M7A
|0ABCC0| LDA.w #$1B42
|0ABCC3| STA.w DMA6MODE

; HDMA mode 2: 1 register write twice
; Indirect HDMA table
; register: $211E - M7D
|0ABCC6| LDA.w #$1E42
|0ABCC9| STA.w DMA7MODE

;---------------------------------------------------------------------------------------------------

|0ABCCC| SEP #$20

|0ABCCE| STZ.b $96
|0ABCD0| STZ.b $97
|0ABCD2| STZ.b $98
|0ABCD4| STZ.b $1E
|0ABCD6| STZ.b $1F

|0ABCD8| STZ.w M7B
|0ABCDB| STZ.w M7B
|0ABCDE| STZ.w M7C
|0ABCE1| STZ.w M7C

|0ABCE4| STZ.w M7X
|0ABCE7| LDA.b #$01
|0ABCE9| STA.w M7X

|0ABCEC| STZ.w M7Y
|0ABCEF| STA.w M7Y

;---------------------------------------------------------------------------------------------------

|0ABCF2| LDA.b $10
|0ABCF4| CMP.b #$14
|0ABCF6| BEQ .attract_mode

|0ABCF8| LDA.b $11
|0ABCFA| CMP.b #$0A
|0ABCFC| BNE .not_flute_map

|0ABCFE| JMP.w .flute_map

;---------------------------------------------------------------------------------------------------

.not_flute_map
|0ABD01| LDA.b #$04
|0ABD03| STA.w $0635

|0ABD06| LDA.b #$0C
|0ABD08| STA.w $0637

|0ABD0B| LDA.b #$01
|0ABD0D| STA.w $0636

|0ABD10| REP #$21

; Get link's position on overworld
|0ABD12| LDA.l $7EC108

|0ABD16| LSR A
|0ABD17| LSR A
|0ABD18| LSR A
|0ABD19| LSR A

|0ABD1A| SEC
|0ABD1B| SBC.w #$0048

|0ABD1E| AND.w #$FFFE
|0ABD21| CLC
|0ABD22| ADC.l WorldMap_PanMovements
|0ABD26| STA.b $E6

|0ABD28| CLC
|0ABD29| ADC.w #$0100
|0ABD2C| STA.w $063A

;---------------------------------------------------------------------------------------------------

|0ABD2F| LDA.l $7EC10A

|0ABD33| LSR A
|0ABD34| LSR A
|0ABD35| LSR A
|0ABD36| LSR A

|0ABD37| SEC
|0ABD38| SBC.w #$0080
|0ABD3B| STA.b $02
|0ABD3D| BPL .x_positive_a

|0ABD3F| EOR.w #$FFFF
|0ABD42| INC A

.x_positive_a
|0ABD43| STA.b $00

|0ABD45| ASL A
|0ABD46| ASL A
|0ABD47| CLC
|0ABD48| ADC.b $00

|0ABD4A| LSR A
|0ABD4B| LDX.b $03
|0ABD4D| BPL .x_positive_b

|0ABD4F| EOR.w #$FFFF
|0ABD52| INC A

.x_positive_b
|0ABD53| CLC
|0ABD54| ADC.w #$0080
|0ABD57| AND.w #$FFFE
|0ABD5A| STA.b $E0

;---------------------------------------------------------------------------------------------------

.normal_map
|0ABD5C| LDA.w #WorldMapHDMA_ZoomedIn
|0ABD5F| STA.w DMA6ADDRL
|0ABD62| STA.w DMA7ADDRL

|0ABD65| LDX.b #^WorldMapHDMA_ZoomedIn
|0ABD67| STX.w DMA6ADDRB
|0ABD6A| STX.w DMA7ADDRB

|0ABD6D| LDX.b #^WorldMapHDMA_ZoomedIn
|0ABD6F| BRA .continue

;---------------------------------------------------------------------------------------------------

.attract_mode
|0ABD71| REP #$21

|0ABD73| LDA.w #WorldMapHDMA_AttractMode
|0ABD76| STA.w DMA6ADDRL
|0ABD79| STA.w DMA7ADDRL

|0ABD7C| LDX.b #^WorldMapHDMA_AttractMode
|0ABD7E| STX.w DMA6ADDRB
|0ABD81| STX.w DMA7ADDRB

|0ABD84| LDX.b #$00
|0ABD86| BRA .continue

;---------------------------------------------------------------------------------------------------

.flute_map
|0ABD88| LDA.b #$04
|0ABD8A| STA.w $0635

|0ABD8D| LDA.b #$21
|0ABD8F| STA.w $0637
|0ABD92| STZ.w $0636

|0ABD95| REP #$21

|0ABD97| LDA.w #WorldMapHDMA_ZoomedOut
|0ABD9A| STA.w DMA6ADDRL
|0ABD9D| STA.w DMA7ADDRL

|0ABDA0| LDX.b #^WorldMapHDMA_ZoomedOut
|0ABDA2| STX.w DMA6ADDRB
|0ABDA5| STX.w DMA7ADDRB

|0ABDA8| LDX.b #^WorldMapHDMA_ZoomedOut

;---------------------------------------------------------------------------------------------------

.continue
|0ABDAA| STX.w HDMA6ITBLB
|0ABDAD| STX.w HDMA7ITBLB

|0ABDB0| SEP #$20

; Enable HDMA channels 6 and 7
|0ABDB2| LDA.b #$C0
|0ABDB4| STA.b $9B

|0ABDB6| RTS

;===================================================================================================

WorldMap_FillTilemapWithEF:
|0ABDB7| REP #$20

; Use this character to empty everything
|0ABDB9| LDA.w #$00EF
|0ABDBC| STA.b $00

|0ABDBE| STZ.w VMAIN
|0ABDC1| STZ.w VMADDR ; VRAM $0000

|0ABDC4| LDA.w #$1808
|0ABDC7| STA.w DMA1MODE
|0ABDCA| STZ.w DMA1ADDRB

|0ABDCD| LDA.w #$0000
|0ABDD0| STA.w DMA1ADDRL

|0ABDD3| LDA.w #$4000
|0ABDD6| STA.w DMA1SIZE

|0ABDD9| LDY.b #$02
|0ABDDB| STY.w MDMAEN

|0ABDDE| SEP #$20

|0ABDE0| RTS

;===================================================================================================

WorldMapHDMA_ZoomedOut:
|0ABDE1| db $F0 : dw WorldMapHDMA_ZoomedOut_Part1 ; 112 lines, continuous
|0ABDE4| db $F0 : dw WorldMapHDMA_ZoomedOut_Part2 ; 112 lines, continuous
|0ABDE7| db $00 ; end

;===================================================================================================

WorldMapHDMA_ZoomedIn:
|0ABDE8| db $F0 : dw WorldMapHDMA_ZoomedIn_Part1 ; 112 lines, continuous
|0ABDEB| db $F0 : dw WorldMapHDMA_ZoomedIn_Part2 ; 112 lines, continuous
|0ABDEE| db $00 ; end

;===================================================================================================

WorldMapHDMA_AttractMode:
|0ABDEF| db $F0 : dw $1B00 ; 112 lines, continuous
|0ABDF2| db $F0 : dw $1BE0 ; 112 lines, continuous
|0ABDF5| db $00 ; end

;===================================================================================================
; Numbers in comments are the value of $7EF3C7
; TODO document what's being displayed for each
;===================================================================================================
WorldMapIcon_posx_spr0:
|0ABDF6| dw $07FF ; 0x00
|0ABDF8| dw $02C0 ; 0x01
|0ABDFA| dw $0D00 ; 0x02
|0ABDFC| dw $0F31 ; 0x03
|0ABDFE| dw $006D ; 0x04
|0ABE00| dw $07E0 ; 0x05
|0ABE02| dw $0F40 ; 0x06
|0ABE04| dw $0F40 ; 0x07
|0ABE06| dw $08DC ; 0x08

WorldMapIcon_posy_spr0:
|0ABE08| dw $0730 ; 0x00
|0ABE0A| dw $06A0 ; 0x01
|0ABE0C| dw $0710 ; 0x02
|0ABE0E| dw $0620 ; 0x03
|0ABE10| dw $0070 ; 0x04
|0ABE12| dw $0640 ; 0x05
|0ABE14| dw $0620 ; 0x06
|0ABE16| dw $0620 ; 0x07
|0ABE18| dw $0030 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_posx_spr1:
|0ABE1A| dw $FF00 ; 0x00
|0ABE1C| dw $FF00 ; 0x01
|0ABE1E| dw $FF00 ; 0x02
|0ABE20| dw $08D0 ; 0x03
|0ABE22| dw $FF00 ; 0x04
|0ABE24| dw $FF00 ; 0x05
|0ABE26| dw $FF00 ; 0x06
|0ABE28| dw $0082 ; 0x07
|0ABE2A| dw $FF00 ; 0x08

WorldMapIcon_posy_spr1:
|0ABE2C| dw $FF00 ; 0x00
|0ABE2E| dw $FF00 ; 0x01
|0ABE30| dw $FF00 ; 0x02
|0ABE32| dw $0080 ; 0x03
|0ABE34| dw $FF00 ; 0x04
|0ABE36| dw $FF00 ; 0x05
|0ABE38| dw $FF00 ; 0x06
|0ABE3A| dw $00B0 ; 0x07
|0ABE3C| dw $FF00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_posx_spr2:
|0ABE3E| dw $FF00 ; 0x00
|0ABE40| dw $FF00 ; 0x01
|0ABE42| dw $FF00 ; 0x02
|0ABE44| dw $0108 ; 0x03
|0ABE46| dw $FF00 ; 0x04
|0ABE48| dw $FF00 ; 0x05
|0ABE4A| dw $FF00 ; 0x06
|0ABE4C| dw $0F11 ; 0x07
|0ABE4E| dw $FF00 ; 0x08

WorldMapIcon_posy_spr2:
|0ABE50| dw $FF00 ; 0x00
|0ABE52| dw $FF00 ; 0x01
|0ABE54| dw $FF00 ; 0x02
|0ABE56| dw $0D70 ; 0x03
|0ABE58| dw $FF00 ; 0x04
|0ABE5A| dw $FF00 ; 0x05
|0ABE5C| dw $FF00 ; 0x06
|0ABE5E| dw $0103 ; 0x07
|0ABE60| dw $FF00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_posx_spr3:
|0ABE62| dw $FF00 ; 0x00
|0ABE64| dw $FF00 ; 0x01
|0ABE66| dw $FF00 ; 0x02
|0ABE68| dw $006D ; 0x03
|0ABE6A| dw $FF00 ; 0x04
|0ABE6C| dw $FF00 ; 0x05
|0ABE6E| dw $FF00 ; 0x06
|0ABE70| dw $01D0 ; 0x07
|0ABE72| dw $FF00 ; 0x08

WorldMapIcon_posy_spr3:
|0ABE74| dw $FF00 ; 0x00
|0ABE76| dw $FF00 ; 0x01
|0ABE78| dw $FF00 ; 0x02
|0ABE7A| dw $0070 ; 0x03
|0ABE7C| dw $FF00 ; 0x04
|0ABE7E| dw $FF00 ; 0x05
|0ABE80| dw $FF00 ; 0x06
|0ABE82| dw $0780 ; 0x07
|0ABE84| dw $FF00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_posx_spr4:
|0ABE86| dw $FF00 ; 0x00
|0ABE88| dw $FF00 ; 0x01
|0ABE8A| dw $FF00 ; 0x02
|0ABE8C| dw $FF00 ; 0x03
|0ABE8E| dw $FF00 ; 0x04
|0ABE90| dw $FF00 ; 0x05
|0ABE92| dw $FF00 ; 0x06
|0ABE94| dw $0100 ; 0x07
|0ABE96| dw $FF00 ; 0x08

WorldMapIcon_posy_spr4:
|0ABE98| dw $FF00 ; 0x00
|0ABE9A| dw $FF00 ; 0x01
|0ABE9C| dw $FF00 ; 0x02
|0ABE9E| dw $FF00 ; 0x03
|0ABEA0| dw $FF00 ; 0x04
|0ABEA2| dw $FF00 ; 0x05
|0ABEA4| dw $FF00 ; 0x06
|0ABEA6| dw $0CA0 ; 0x07
|0ABEA8| dw $FF00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_posx_spr5:
|0ABEAA| dw $FF00 ; 0x00
|0ABEAC| dw $FF00 ; 0x01
|0ABEAE| dw $FF00 ; 0x02
|0ABEB0| dw $FF00 ; 0x03
|0ABEB2| dw $FF00 ; 0x04
|0ABEB4| dw $FF00 ; 0x05
|0ABEB6| dw $FF00 ; 0x06
|0ABEB8| dw $0CA0 ; 0x07
|0ABEBA| dw $FF00 ; 0x08

WorldMapIcon_posy_spr5:
|0ABEBC| dw $FF00 ; 0x00
|0ABEBE| dw $FF00 ; 0x01
|0ABEC0| dw $FF00 ; 0x02
|0ABEC2| dw $FF00 ; 0x03
|0ABEC4| dw $FF00 ; 0x04
|0ABEC6| dw $FF00 ; 0x05
|0ABEC8| dw $FF00 ; 0x06
|0ABECA| dw $0DA0 ; 0x07
|0ABECC| dw $FF00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_posx_spr6:
|0ABECE| dw $FF00 ; 0x00
|0ABED0| dw $FF00 ; 0x01
|0ABED2| dw $FF00 ; 0x02
|0ABED4| dw $FF00 ; 0x03
|0ABED6| dw $FF00 ; 0x04
|0ABED8| dw $FF00 ; 0x05
|0ABEDA| dw $FF00 ; 0x06
|0ABEDC| dw $0759 ; 0x07
|0ABEDE| dw $FF00 ; 0x08

WorldMapIcon_posy_spr6:
|0ABEE0| dw $FF00 ; 0x00
|0ABEE2| dw $FF00 ; 0x01
|0ABEE4| dw $FF00 ; 0x02
|0ABEE6| dw $FF00 ; 0x03
|0ABEE8| dw $FF00 ; 0x04
|0ABEEA| dw $FF00 ; 0x05
|0ABEEC| dw $FF00 ; 0x06
|0ABEEE| dw $0ED0 ; 0x07
|0ABEF0| dw $FF00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr0:
|0ABEF2| db $00, $00 ; 0x00
|0ABEF4| db $00, $00 ; 0x01
|0ABEF6| db $00, $00 ; 0x02
|0ABEF8| db $38, $60 ; 0x03
|0ABEFA| db $34, $62 ; 0x04
|0ABEFC| db $32, $66 ; 0x05
|0ABEFE| db $34, $64 ; 0x06
|0ABF00| db $34, $64 ; 0x07
|0ABF02| db $32, $66 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr1:
|0ABF04| db $00, $00 ; 0x00
|0ABF06| db $00, $00 ; 0x01
|0ABF08| db $00, $00 ; 0x02
|0ABF0A| db $32, $60 ; 0x03
|0ABF0C| db $00, $00 ; 0x04
|0ABF0E| db $00, $00 ; 0x05
|0ABF10| db $00, $00 ; 0x06
|0ABF12| db $34, $64 ; 0x07
|0ABF14| db $00, $00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr2:
|0ABF16| db $00, $00 ; 0x00
|0ABF18| db $00, $00 ; 0x01
|0ABF1A| db $00, $00 ; 0x02
|0ABF1C| db $34, $60 ; 0x03
|0ABF1E| db $00, $00 ; 0x04
|0ABF20| db $00, $00 ; 0x05
|0ABF22| db $00, $00 ; 0x06
|0ABF24| db $34, $64 ; 0x07
|0ABF26| db $00, $00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr3:
|0ABF28| db $00, $00 ; 0x00
|0ABF2A| db $00, $00 ; 0x01
|0ABF2C| db $00, $00 ; 0x02
|0ABF2E| db $34, $62 ; 0x03
|0ABF30| db $00, $00 ; 0x04
|0ABF32| db $00, $00 ; 0x05
|0ABF34| db $00, $00 ; 0x06
|0ABF36| db $34, $64 ; 0x07
|0ABF38| db $00, $00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr4:
|0ABF3A| db $00, $00 ; 0x00
|0ABF3C| db $00, $00 ; 0x01
|0ABF3E| db $00, $00 ; 0x02
|0ABF40| db $00, $00 ; 0x03
|0ABF42| db $00, $00 ; 0x04
|0ABF44| db $00, $00 ; 0x05
|0ABF46| db $00, $00 ; 0x06
|0ABF48| db $34, $64 ; 0x07
|0ABF4A| db $00, $00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr5:
|0ABF4C| db $00, $00 ; 0x00
|0ABF4E| db $00, $00 ; 0x01
|0ABF50| db $00, $00 ; 0x02
|0ABF52| db $00, $00 ; 0x03
|0ABF54| db $00, $00 ; 0x04
|0ABF56| db $00, $00 ; 0x05
|0ABF58| db $00, $00 ; 0x06
|0ABF5A| db $34, $64 ; 0x07
|0ABF5C| db $00, $00 ; 0x08

;---------------------------------------------------------------------------------------------------

WorldMapIcon_tile_spr6:
|0ABF5E| db $00, $00 ; 0x00
|0ABF60| db $00, $00 ; 0x01
|0ABF62| db $00, $00 ; 0x02
|0ABF64| db $00, $00 ; 0x03
|0ABF66| db $00, $00 ; 0x04
|0ABF68| db $00, $00 ; 0x05
|0ABF6A| db $00, $00 ; 0x06
|0ABF6C| db $34, $64 ; 0x07
|0ABF6E| db $00, $00 ; 0x08

;===================================================================================================

WorldMap_RedXChars:
|0ABF70| db $68, $69, $78, $69

;===================================================================================================

WorldMap_PortalProps:
|0ABF74| db $34, $74, $F4, $B4

;===================================================================================================

WorldMap_HandleSprites:
|0ABF78| LDA.b $1A
|0ABF7A| AND.b #$10
|0ABF7C| BEQ .dont_draw_link

|0ABF7E| JSR WorldMap_CalculateOAMCoordinates
|0ABF81| BCC .dont_draw_link

;---------------------------------------------------------------------------------------------------

|0ABF83| LDA.b $0E
|0ABF85| SEC
|0ABF86| SBC.b #$04
|0ABF88| STA.b $0E

|0ABF8A| LDA.b $0F
|0ABF8C| SEC
|0ABF8D| SBC.b #$04
|0ABF8F| STA.b $0F

|0ABF91| LDA.b #$00
|0ABF93| STA.b $0D

|0ABF95| LDA.b #$3E
|0ABF97| STA.b $0C

|0ABF99| LDA.b #$02
|0ABF9B| STA.b $0B

|0ABF9D| LDX.b #$00
|0ABF9F| JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.dont_draw_link
|0ABFA2| LDA.l $7EC108
|0ABFA6| PHA

|0ABFA7| LDA.l $7EC109
|0ABFAB| PHA

|0ABFAC| LDA.l $7EC10A
|0ABFB0| PHA

|0ABFB1| LDA.l $7EC10B
|0ABFB5| PHA

;---------------------------------------------------------------------------------------------------

|0ABFB6| LDA.w $008A
|0ABFB9| CMP.b #$40
|0ABFBB| BCS .dont_draw_mirror_portal

; check for mirror portal
|0ABFBD| LDX.b #$0F

|0ABFBF| LDA.w $1AB0,X
|0ABFC2| ORA.w $1AC0,X
|0ABFC5| ORA.w $1AD0,X
|0ABFC8| ORA.w $1AE0,X
|0ABFCB| BEQ .dont_draw_mirror_portal

|0ABFCD| LDA.b $1A
|0ABFCF| BNE .dont_swap_portal_char

|0ABFD1| LDA.w $1AF0,X
|0ABFD4| INC A
|0ABFD5| STA.w $1AF0,X

.dont_swap_portal_char
|0ABFD8| LDA.w $1AB0,X
|0ABFDB| STA.l $7EC10A

|0ABFDF| LDA.w $1AC0,X
|0ABFE2| STA.l $7EC10B

|0ABFE6| LDA.w $1AD0,X
|0ABFE9| STA.l $7EC108

|0ABFED| LDA.w $1AE0,X
|0ABFF0| STA.l $7EC109

|0ABFF4| JSR WorldMap_CalculateOAMCoordinates
|0ABFF7| BCC .dont_draw_mirror_portal

|0ABFF9| LDA.b #$6A
|0ABFFB| STA.b $0D

|0ABFFD| LDA.b $1A
|0ABFFF| LSR A
|0AC000| AND.b #$03
|0AC002| TAX

|0AC003| LDA.l WorldMap_PortalProps,X
|0AC007| STA.b $0C

|0AC009| LDA.b #$02
|0AC00B| STA.b $0B

|0AC00D| LDX.b #$0F
|0AC00F| JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.dont_draw_mirror_portal
|0AC012| LDA.l $7EF2DB
|0AC016| AND.b #$20
|0AC018| BNE .pyramid_open

|0AC01A| LDA.l $7EF3C7
|0AC01E| CMP.b #$06

|0AC020| ROL A
|0AC021| EOR.w $0FFF
|0AC024| AND.b #$01
|0AC026| BEQ .draw_prizes

.pyramid_open
|0AC028| JMP.w .restore_coords_and_exit

;---------------------------------------------------------------------------------------------------

.draw_prizes
; checks for green pendant or crystal 1
|0AC02B| LDX.b #$00
|0AC02D| JSR OverworldMap_CheckForPendant
|0AC030| BCS .skip_draw_0

|0AC032| JSR OverworldMap_CheckForCrystal
|0AC035| BCS .skip_draw_0

|0AC037| LDA.l $7EF3C7
|0AC03B| ASL A
|0AC03C| TAX

|0AC03D| LDA.l WorldMapIcon_posx_spr0+1,X
|0AC041| BMI .skip_draw_0

|0AC043| STA.l $7EC10B

|0AC047| LDA.l WorldMapIcon_posx_spr0+0,X
|0AC04B| STA.l $7EC10A

|0AC04F| LDA.l WorldMapIcon_posy_spr0+1,X
|0AC053| STA.l $7EC109

|0AC057| LDA.l WorldMapIcon_posy_spr0+0,X
|0AC05B| STA.l $7EC108

;---------------------------------------------------------------------------------------------------

|0AC05F| LDA.l WorldMapIcon_tile_spr0+1,X
|0AC063| BEQ .dont_adjust_0

; crystals will be based on pendant number
|0AC065| CMP.b #$64
|0AC067| BEQ .is_crystal_1

|0AC069| LDA.b $1A
|0AC06B| AND.b #$10
|0AC06D| BNE .skip_draw_0

.is_crystal_1
|0AC06F| JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_0
|0AC072| LDX.b #$0E
|0AC074| JSR WorldMap_CalculateOAMCoordinates
|0AC077| BCC .skip_draw_0

|0AC079| LDA.l $7EF3C7
|0AC07D| ASL A
|0AC07E| TAX

|0AC07F| LDA.l WorldMapIcon_tile_spr0+1,X
|0AC083| BEQ .is_red_x_0

|0AC085| STA.b $0D

|0AC087| LDA.l WorldMapIcon_tile_spr0+0,X
|0AC08B| STA.b $0C

|0AC08D| LDA.b #$02
|0AC08F| BRA .continue_0

;---------------------------------------------------------------------------------------------------

.is_red_x_0
|0AC091| LDA.b $1A

|0AC093| LSR A
|0AC094| LSR A
|0AC095| LSR A

|0AC096| AND.b #$03
|0AC098| TAX

|0AC099| LDA.l WorldMap_RedXChars,X
|0AC09D| STA.b $0D

|0AC09F| LDA.b #$32
|0AC0A1| STA.b $0C

|0AC0A3| LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_0
|0AC0A5| STA.b $0B

|0AC0A7| LDX.b #$0E
|0AC0A9| JSR WorldMap_HandleSpriteBlink

;===================================================================================================

.skip_draw_0
; checks for red pendant or crystal 3
|0AC0AC| LDX.b #$01
|0AC0AE| JSR OverworldMap_CheckForPendant
|0AC0B1| BCS .skip_draw_1

|0AC0B3| JSR OverworldMap_CheckForCrystal
|0AC0B6| BCS .skip_draw_1

|0AC0B8| LDA.l $7EF3C7
|0AC0BC| ASL A
|0AC0BD| TAX

|0AC0BE| LDA.l WorldMapIcon_posx_spr1+1,X
|0AC0C2| BMI .skip_draw_1

|0AC0C4| STA.l $7EC10B

|0AC0C8| LDA.l WorldMapIcon_posx_spr1+0,X
|0AC0CC| STA.l $7EC10A

|0AC0D0| LDA.l WorldMapIcon_posy_spr1+1,X
|0AC0D4| STA.l $7EC109

|0AC0D8| LDA.l WorldMapIcon_posy_spr1+0,X
|0AC0DC| STA.l $7EC108

;---------------------------------------------------------------------------------------------------

|0AC0E0| LDA.l WorldMapIcon_tile_spr1+1,X
|0AC0E4| BEQ .dont_adjust_1

|0AC0E6| CMP.b #$64
|0AC0E8| BEQ .is_crystal_3

|0AC0EA| LDA.b $1A
|0AC0EC| AND.b #$10
|0AC0EE| BNE .skip_draw_1

.is_crystal_3
|0AC0F0| JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_1
|0AC0F3| JSR WorldMap_CalculateOAMCoordinates
|0AC0F6| BCC .skip_draw_1

|0AC0F8| LDA.l $7EF3C7
|0AC0FC| ASL A
|0AC0FD| TAX

|0AC0FE| LDA.l WorldMapIcon_tile_spr1+1,X
|0AC102| BEQ .is_red_x_1

|0AC104| STA.b $0D

|0AC106| LDA.l WorldMapIcon_tile_spr1+0,X
|0AC10A| STA.b $0C

|0AC10C| LDA.b #$02
|0AC10E| BRA .continue_1

;---------------------------------------------------------------------------------------------------

.is_red_x_1
|0AC110| LDA.b $1A

|0AC112| LSR A
|0AC113| LSR A
|0AC114| LSR A

|0AC115| AND.b #$03
|0AC117| TAX

|0AC118| LDA.l WorldMap_RedXChars,X
|0AC11C| STA.b $0D

|0AC11E| LDA.b #$32
|0AC120| STA.b $0C

|0AC122| LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_1
|0AC124| STA.b $0B

|0AC126| LDX.b #$0D
|0AC128| JSR WorldMap_HandleSpriteBlink

;===================================================================================================

.skip_draw_1
; checks for blue pendant or crystal 7
|0AC12B| LDX.b #$02
|0AC12D| JSR OverworldMap_CheckForPendant
|0AC130| BCS .skip_draw_2

|0AC132| JSR OverworldMap_CheckForCrystal
|0AC135| BCS .skip_draw_2

|0AC137| LDA.l $7EF3C7
|0AC13B| ASL A
|0AC13C| TAX

|0AC13D| LDA.l WorldMapIcon_posx_spr2+1,X
|0AC141| BMI .skip_draw_2

|0AC143| STA.l $7EC10B

|0AC147| LDA.l WorldMapIcon_posx_spr2+0,X
|0AC14B| STA.l $7EC10A

|0AC14F| LDA.l WorldMapIcon_posy_spr2+1,X
|0AC153| STA.l $7EC109

|0AC157| LDA.l WorldMapIcon_posy_spr2+0,X
|0AC15B| STA.l $7EC108

;---------------------------------------------------------------------------------------------------

|0AC15F| LDA.l WorldMapIcon_tile_spr2+1,X
|0AC163| BEQ .dont_adjust_2

|0AC165| CMP.b #$64
|0AC167| BEQ .is_crystal_7

|0AC169| LDA.b $1A
|0AC16B| AND.b #$10
|0AC16D| BNE .skip_draw_2

.is_crystal_7
|0AC16F| JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_2
|0AC172| LDX.b #$0C
|0AC174| JSR WorldMap_CalculateOAMCoordinates
|0AC177| BCC .skip_draw_2

|0AC179| LDA.l $7EF3C7
|0AC17D| ASL A
|0AC17E| TAX

|0AC17F| LDA.l WorldMapIcon_tile_spr2+1,X
|0AC183| BEQ .is_red_x_2

|0AC185| STA.b $0D

|0AC187| LDA.l WorldMapIcon_tile_spr2+0,X
|0AC18B| STA.b $0C

|0AC18D| LDA.b #$02
|0AC18F| BRA .continue_2

;---------------------------------------------------------------------------------------------------

.is_red_x_2
|0AC191| LDA.b $1A

|0AC193| LSR A
|0AC194| LSR A
|0AC195| LSR A

|0AC196| AND.b #$03
|0AC198| TAX

|0AC199| LDA.l WorldMap_RedXChars,X
|0AC19D| STA.b $0D

|0AC19F| LDA.b #$32
|0AC1A1| STA.b $0C

|0AC1A3| LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_2
|0AC1A5| STA.b $0B

|0AC1A7| LDX.b #$0C
|0AC1A9| JSR WorldMap_HandleSpriteBlink

;===================================================================================================

.skip_draw_2
; checks for crystal 4
|0AC1AC| LDX.b #$03
|0AC1AE| JSR OverworldMap_CheckForCrystal
|0AC1B1| BCS .skip_draw_3

|0AC1B3| LDA.l $7EF3C7
|0AC1B7| ASL A
|0AC1B8| TAX

|0AC1B9| LDA.l WorldMapIcon_posx_spr3+1,X
|0AC1BD| BMI .skip_draw_3

|0AC1BF| STA.l $7EC10B

|0AC1C3| LDA.l WorldMapIcon_posx_spr3+0,X
|0AC1C7| STA.l $7EC10A

|0AC1CB| LDA.l WorldMapIcon_posy_spr3+1,X
|0AC1CF| STA.l $7EC109

|0AC1D3| LDA.l WorldMapIcon_posy_spr3+0,X
|0AC1D7| STA.l $7EC108

;---------------------------------------------------------------------------------------------------

|0AC1DB| LDA.l WorldMapIcon_tile_spr3+1,X
|0AC1DF| BEQ .dont_adjust_3

|0AC1E1| CMP.b #$64
|0AC1E3| BEQ .is_crystal_4

|0AC1E5| LDA.b $1A
|0AC1E7| AND.b #$10
|0AC1E9| BNE .skip_draw_3

.is_crystal_4
|0AC1EB| JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_3
|0AC1EE| LDX.b #$0B
|0AC1F0| JSR WorldMap_CalculateOAMCoordinates
|0AC1F3| BCC .skip_draw_3

|0AC1F5| LDA.l $7EF3C7
|0AC1F9| ASL A
|0AC1FA| TAX

|0AC1FB| LDA.l WorldMapIcon_tile_spr3+1,X
|0AC1FF| BEQ .is_red_x_3

|0AC201| STA.b $0D

|0AC203| LDA.l WorldMapIcon_tile_spr3+0,X
|0AC207| STA.b $0C

|0AC209| LDA.b #$02
|0AC20B| BRA .continue_3

;---------------------------------------------------------------------------------------------------

.is_red_x_3
|0AC20D| LDA.b $1A

|0AC20F| LSR A
|0AC210| LSR A
|0AC211| LSR A

|0AC212| AND.b #$03
|0AC214| TAX

|0AC215| LDA.l WorldMap_RedXChars,X
|0AC219| STA.b $0D

|0AC21B| LDA.b #$32
|0AC21D| STA.b $0C

|0AC21F| LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_3
|0AC221| STA.b $0B

|0AC223| LDX.b #$0B
|0AC225| JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.skip_draw_3
; checks for crystal 6
|0AC228| LDX.b #$04
|0AC22A| JSR OverworldMap_CheckForCrystal
|0AC22D| BCS .skip_draw_4

|0AC22F| LDA.l $7EF3C7
|0AC233| ASL A
|0AC234| TAX

|0AC235| LDA.l WorldMapIcon_posx_spr4+1,X
|0AC239| BMI .skip_draw_4

|0AC23B| STA.l $7EC10B

|0AC23F| LDA.l WorldMapIcon_posx_spr4+0,X
|0AC243| STA.l $7EC10A

|0AC247| LDA.l WorldMapIcon_posy_spr4+1,X
|0AC24B| STA.l $7EC109

|0AC24F| LDA.l WorldMapIcon_posy_spr4+0,X
|0AC253| STA.l $7EC108

;---------------------------------------------------------------------------------------------------

|0AC257| LDA.l WorldMapIcon_tile_spr4+1,X
|0AC25B| BEQ .dont_adjust_4

|0AC25D| CMP.b #$64
|0AC25F| BEQ .is_crystal_6

|0AC261| LDA.b $1A
|0AC263| AND.b #$10
|0AC265| BNE .skip_draw_4

.is_crystal_6
|0AC267| JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_4
|0AC26A| LDX.b #$0A
|0AC26C| JSR WorldMap_CalculateOAMCoordinates
|0AC26F| BCC .skip_draw_4

|0AC271| LDA.l $7EF3C7
|0AC275| ASL A
|0AC276| TAX

|0AC277| LDA.l WorldMapIcon_tile_spr4+1,X
|0AC27B| BEQ .is_red_x_4

|0AC27D| STA.b $0D

|0AC27F| LDA.l WorldMapIcon_tile_spr4+0,X
|0AC283| STA.b $0C

|0AC285| LDA.b #$02
|0AC287| BRA .continue_4

.is_red_x_4
|0AC289| LDA.b $1A

|0AC28B| LSR A
|0AC28C| LSR A
|0AC28D| LSR A

|0AC28E| AND.b #$03
|0AC290| TAX

|0AC291| LDA.l WorldMap_RedXChars,X
|0AC295| STA.b $0D

|0AC297| LDA.b #$32
|0AC299| STA.b $0C

|0AC29B| LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_4
|0AC29D| STA.b $0B

|0AC29F| LDX.b #$0A
|0AC2A1| JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.skip_draw_4
; checks for crystal 5
|0AC2A4| LDX.b #$05
|0AC2A6| JSR OverworldMap_CheckForCrystal
|0AC2A9| BCS .skip_draw_5

|0AC2AB| LDA.l $7EF3C7
|0AC2AF| ASL A
|0AC2B0| TAX

|0AC2B1| LDA.l WorldMapIcon_posx_spr5+1,X
|0AC2B5| BMI .skip_draw_5

|0AC2B7| STA.l $7EC10B

|0AC2BB| LDA.l WorldMapIcon_posx_spr5+0,X
|0AC2BF| STA.l $7EC10A

|0AC2C3| LDA.l WorldMapIcon_posy_spr5+1,X
|0AC2C7| STA.l $7EC109

|0AC2CB| LDA.l WorldMapIcon_posy_spr5+0,X
|0AC2CF| STA.l $7EC108

;---------------------------------------------------------------------------------------------------

|0AC2D3| LDA.l WorldMapIcon_tile_spr5+1,X
|0AC2D7| BEQ .dont_adjust_5

|0AC2D9| CMP.b #$64
|0AC2DB| BEQ .is_crystal_5

|0AC2DD| LDA.b $1A
|0AC2DF| AND.b #$10
|0AC2E1| BNE .skip_draw_5

.is_crystal_5
|0AC2E3| JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_5
|0AC2E6| LDX.b #$09

|0AC2E8| JSR WorldMap_CalculateOAMCoordinates
|0AC2EB| BCC .skip_draw_5

|0AC2ED| LDA.l $7EF3C7
|0AC2F1| ASL A
|0AC2F2| TAX

|0AC2F3| LDA.l WorldMapIcon_tile_spr5+1,X
|0AC2F7| BEQ .is_red_x_5

|0AC2F9| STA.b $0D

|0AC2FB| LDA.l WorldMapIcon_tile_spr5+0,X
|0AC2FF| STA.b $0C

|0AC301| LDA.b #$02
|0AC303| BRA .continue_5

;---------------------------------------------------------------------------------------------------

.is_red_x_5
|0AC305| LDA.b $1A
|0AC307| LSR A
|0AC308| LSR A
|0AC309| LSR A

|0AC30A| AND.b #$03
|0AC30C| TAX

|0AC30D| LDA.l WorldMap_RedXChars,X
|0AC311| STA.b $0D

|0AC313| LDA.b #$32
|0AC315| STA.b $0C

|0AC317| LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_5
|0AC319| STA.b $0B

|0AC31B| LDX.b #$09
|0AC31D| JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.skip_draw_5
; checks for crystal 2
|0AC320| LDX.b #$06
|0AC322| JSR OverworldMap_CheckForCrystal
|0AC325| BCS .restore_coords_and_exit

|0AC327| LDA.l $7EF3C7
|0AC32B| ASL A
|0AC32C| TAX

|0AC32D| LDA.l WorldMapIcon_posx_spr6+1,X
|0AC331| BMI .restore_coords_and_exit

|0AC333| STA.l $7EC10B

|0AC337| LDA.l WorldMapIcon_posx_spr6+0,X
|0AC33B| STA.l $7EC10A

|0AC33F| LDA.l WorldMapIcon_posy_spr6+1,X
|0AC343| STA.l $7EC109

|0AC347| LDA.l WorldMapIcon_posy_spr6+0,X
|0AC34B| STA.l $7EC108

;---------------------------------------------------------------------------------------------------

|0AC34F| LDA.l WorldMapIcon_tile_spr6+1,X
|0AC353| BEQ .dont_adjust_6

|0AC355| CMP.b #$64
|0AC357| BEQ .is_crystal_2

|0AC359| LDA.b $1A
|0AC35B| AND.b #$10
|0AC35D| BNE .restore_coords_and_exit

.is_crystal_2
|0AC35F| JSR WorldMapIcon_AdjustCoordinate

;---------------------------------------------------------------------------------------------------

.dont_adjust_6
|0AC362| LDX.b #$08
|0AC364| JSR WorldMap_CalculateOAMCoordinates
|0AC367| BCC .restore_coords_and_exit

|0AC369| LDA.l $7EF3C7
|0AC36D| ASL A
|0AC36E| TAX

|0AC36F| LDA.l WorldMapIcon_tile_spr6+1,X
|0AC373| BEQ .is_red_x_6

|0AC375| STA.b $0D

|0AC377| LDA.l WorldMapIcon_tile_spr6+0,X
|0AC37B| STA.b $0C

|0AC37D| LDA.b #$02
|0AC37F| BRA .continue_6

;---------------------------------------------------------------------------------------------------

.is_red_x_6
|0AC381| LDA.b $1A

|0AC383| LSR A
|0AC384| LSR A
|0AC385| LSR A

|0AC386| AND.b #$03
|0AC388| TAX

|0AC389| LDA.l WorldMap_RedXChars,X
|0AC38D| STA.b $0D

|0AC38F| LDA.b #$32
|0AC391| STA.b $0C

|0AC393| LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue_6
|0AC395| STA.b $0B

|0AC397| LDX.b #$08
|0AC399| JSR WorldMap_HandleSpriteBlink

;---------------------------------------------------------------------------------------------------

.restore_coords_and_exit
|0AC39C| PLA
|0AC39D| STA.l $7EC10B

|0AC3A1| PLA
|0AC3A2| STA.l $7EC10A

|0AC3A6| PLA
|0AC3A7| STA.l $7EC109

|0AC3AB| PLA
|0AC3AC| STA.l $7EC108

|0AC3B0| RTS

;===================================================================================================

WorldMap_CalculateOAMCoordinates:
|0AC3B1| LDA.w $0636
|0AC3B4| BNE .zoomed_in

;---------------------------------------------------------------------------------------------------

.zoomed_out
|0AC3B6| REP #$30

|0AC3B8| LDA.l $7EC108

|0AC3BC| LSR A
|0AC3BD| LSR A
|0AC3BE| LSR A
|0AC3BF| LSR A

|0AC3C0| EOR.w #$FFFF
|0AC3C3| INC A

|0AC3C4| ADC.w $063A
|0AC3C7| SEC
|0AC3C8| SBC.w #$00C0
|0AC3CB| TAX

|0AC3CC| SEP #$20

|0AC3CE| LDA.l WorldMap_SpritePositions,X
|0AC3D2| STA.b $0F ; [USELESS] subsequently overwitten

|0AC3D4| SEP #$30

|0AC3D6| XBA

|0AC3D7| LDA.b #$0D
|0AC3D9| JSR WorldMap_MultiplyAxB
|0AC3DC| JSR WorldMap_ShiftNibblesRight

|0AC3DF| STA.b $0F

;---------------------------------------------------------------------------------------------------

|0AC3E1| REP #$30

|0AC3E3| LDA.l $7EC10A

|0AC3E7| LSR A
|0AC3E8| LSR A
|0AC3E9| LSR A
|0AC3EA| LSR A

|0AC3EB| SEP #$30

|0AC3ED| SEC
|0AC3EE| SBC.b #$80
|0AC3F0| PHP

|0AC3F1| BPL .x_positive_a

|0AC3F3| EOR.b #$FF

.x_positive_a
|0AC3F5| PHA

;---------------------------------------------------------------------------------------------------

|0AC3F6| LDA.b $0F
|0AC3F8| CMP.b #$E0
|0AC3FA| BCC .in_range_a

|0AC3FC| LDA.b #$00

.in_range_a
|0AC3FE| XBA

|0AC3FF| LDA.b #$54
|0AC401| JSR WorldMap_MultiplyAxB

|0AC404| XBA
|0AC405| CLC
|0AC406| ADC.b #$B2
|0AC408| XBA

|0AC409| PLA
|0AC40A| JSR WorldMap_MultiplyAxB

|0AC40D| XBA

|0AC40E| PLP
|0AC40F| BCS .in_range_b

|0AC411| STA.b $00

|0AC413| LDA.b #$80
|0AC415| SEC
|0AC416| SBC.b $00
|0AC418| BRA .continue_a

.in_range_b
|0AC41A| CLC
|0AC41B| ADC.b #$80

;---------------------------------------------------------------------------------------------------

.continue_a
|0AC41D| SEC
|0AC41E| SBC.b $E0
|0AC420| STA.b $0E

|0AC422| LDA.b $0E
|0AC424| CLC
|0AC425| ADC.b #$80
|0AC427| STA.b $0E

|0AC429| LDA.b $0F
|0AC42B| CLC
|0AC42C| ADC.b #$0C
|0AC42E| STA.b $0F

|0AC430| JMP.w .exit_successfully

;---------------------------------------------------------------------------------------------------

.zoomed_in
|0AC433| REP #$30

|0AC435| LDA.l $7EC108

|0AC439| LSR A
|0AC43A| LSR A
|0AC43B| LSR A
|0AC43C| LSR A

|0AC43D| EOR.w #$FFFF
|0AC440| INC A

|0AC441| CLC
|0AC442| ADC.w $063A

|0AC445| SEC
|0AC446| SBC.w #$0080
|0AC449| CMP.w #$0100

|0AC44C| BCC .y_in_bounds

|0AC44E| JMP.w .exit_fail

;---------------------------------------------------------------------------------------------------

.y_in_bounds
|0AC451| SEP #$30

|0AC453| XBA

|0AC454| LDA.b #$25
|0AC456| JSR WorldMap_MultiplyAxB
|0AC459| JSR WorldMap_ShiftNibblesRight

|0AC45C| REP #$10

|0AC45E| TAX
|0AC45F| CPX.w #$014D
|0AC462| BCC .x_in_bounds

|0AC464| JMP.w .exit_fail

.x_in_bounds
|0AC467| LDA.l WorldMap_SpritePositions,X
|0AC46B| STA.b $0F

|0AC46D| REP #$20

|0AC46F| LDA.l $7EC10A
|0AC473| SEC
|0AC474| SBC.w #$07F8
|0AC477| PHP

|0AC478| BPL .x_positive_b

|0AC47A| EOR.w #$FFFF
|0AC47D| INC A

.x_positive_b
|0AC47E| PHA

;---------------------------------------------------------------------------------------------------

|0AC47F| SEP #$20

|0AC481| LDA.b $0F
|0AC483| CMP.b #$E2
|0AC485| BCC .in_range_c

|0AC487| LDA.b #$00

.in_range_c
|0AC489| XBA

|0AC48A| LDA.b #$54
|0AC48C| JSR WorldMap_MultiplyAxB

|0AC48F| XBA
|0AC490| CLC
|0AC491| ADC.b #$B2
|0AC493| STA.b $00

|0AC495| XBA

|0AC496| PLA
|0AC497| JSR WorldMap_MultiplyAxB

|0AC49A| XBA
|0AC49B| STA.b $01

|0AC49D| PLA
|0AC49E| XBA

|0AC49F| LDA.b $00
|0AC4A1| JSR WorldMap_MultiplyAxB

|0AC4A4| CLC
|0AC4A5| ADC.b $01

|0AC4A7| XBA
|0AC4A8| ADC.b #$00
|0AC4AA| XBA

|0AC4AB| PLP
|0AC4AC| BCS .do_addition

.do_subtraction
|0AC4AE| STA.b $00

|0AC4B0| LDA.w #$0800
|0AC4B3| SEC
|0AC4B4| SBC.b $00

|0AC4B6| BRA .continue_b

.do_addition
|0AC4B8| CLC
|0AC4B9| ADC.w #$0800

;---------------------------------------------------------------------------------------------------

.continue_b
|0AC4BC| SEC
|0AC4BD| SBC.w #$0800
|0AC4C0| BCS .positive_a

|0AC4C2| EOR.w #$FFFF
|0AC4C5| INC A

.positive_a
|0AC4C6| SEP #$20

|0AC4C8| PHP

|0AC4C9| XBA
|0AC4CA| PHA

|0AC4CB| LDA.b #$2D
|0AC4CD| JSR WorldMap_MultiplyAxB

|0AC4D0| XBA
|0AC4D1| STA.b $00

|0AC4D3| PLA
|0AC4D4| XBA

|0AC4D5| LDA.b #$2D
|0AC4D7| JSR WorldMap_MultiplyAxB

|0AC4DA| CLC
|0AC4DB| ADC.b $00

|0AC4DD| XBA
|0AC4DE| ADC.b #$00
|0AC4E0| XBA

;---------------------------------------------------------------------------------------------------

|0AC4E1| PLP
|0AC4E2| BCS .in_range_d

|0AC4E4| STA.b $00

|0AC4E6| LDA.b #$80
|0AC4E8| SEC
|0AC4E9| SBC.b $00

|0AC4EB| XBA
|0AC4EC| STA.b $00

|0AC4EE| LDA.b #$00
|0AC4F0| SBC.b $00
|0AC4F2| XBA

|0AC4F3| BRA .continue_c

.in_range_d
|0AC4F5| CLC
|0AC4F6| ADC.b #$80

|0AC4F8| XBA
|0AC4F9| ADC.b #$00

|0AC4FB| XBA

;---------------------------------------------------------------------------------------------------

.continue_c
|0AC4FC| PHA

|0AC4FD| SEC
|0AC4FE| SBC.b $E0
|0AC500| STA.b $0E

|0AC502| PLA

;---------------------------------------------------------------------------------------------------

|0AC503| REP #$30

|0AC505| SEC
|0AC506| SBC.w #$FF80

|0AC509| SEC
|0AC50A| SBC.b $E0

|0AC50C| SEP #$30

|0AC50E| XBA
|0AC50F| BNE .exit_fail

|0AC511| LDA.b $0E
|0AC513| CLC
|0AC514| ADC.b #$81
|0AC516| STA.b $0E

|0AC518| LDA.b $0F
|0AC51A| CLC
|0AC51B| ADC.b #$10
|0AC51D| STA.b $0F

;---------------------------------------------------------------------------------------------------

.exit_successfully
|0AC51F| SEP #$30
|0AC521| SEC

|0AC522| RTS

.exit_fail
|0AC523| SEP #$30
|0AC525| CLC

|0AC526| RTS

;===================================================================================================

pool WorldMap_HandleSpriteBlink

.crystal_numbers
|0AC527| db $79 ; 2
|0AC528| db $6E ; 5
|0AC529| db $6F ; 6
|0AC52A| db $6D ; 4
|0AC52B| db $7C ; 7
|0AC52C| db $6C ; 3
|0AC52D| db $7F ; 1

endpool

;---------------------------------------------------------------------------------------------------

; TODO document params
; $0D - char
WorldMap_HandleSpriteBlink:
|0AC52E| LDA.b $1A
|0AC530| LSR A
|0AC531| LSR A
|0AC532| LSR A
|0AC533| LSR A
|0AC534| AND.b #$01
|0AC536| BNE .dont_show_number

; check if character is a crystal
|0AC538| LDA.b $0D
|0AC53A| CMP.b #$64
|0AC53C| BNE .dont_show_number

;---------------------------------------------------------------------------------------------------

|0AC53E| LDA.l .crystal_numbers-8,X
|0AC542| STA.b $0D

|0AC544| LDA.b #$32
|0AC546| STA.b $0C

|0AC548| STZ.w $0A20,X

|0AC54B| TXA
|0AC54C| ASL A
|0AC54D| ASL A
|0AC54E| TAX

|0AC54F| LDA.b $0E
|0AC551| STA.w $0800,X

|0AC554| LDA.b $0F
|0AC556| STA.w $0801,X

|0AC559| BRA .continue

;---------------------------------------------------------------------------------------------------

.dont_show_number
|0AC55B| LDA.b $0B
|0AC55D| STA.w $0A20,X

|0AC560| TXA
|0AC561| ASL A
|0AC562| ASL A
|0AC563| TAX

|0AC564| LDA.b $0E
|0AC566| SEC
|0AC567| SBC.b #$04
|0AC569| STA.w $0800,X

|0AC56C| LDA.b $0F
|0AC56E| SEC
|0AC56F| SBC.b #$04
|0AC571| STA.w $0801,X

;---------------------------------------------------------------------------------------------------

.continue
|0AC574| LDA.b $0D
|0AC576| STA.w $0802,X

|0AC579| LDA.b $0C
|0AC57B| STA.w $0803,X

|0AC57E| RTS

;===================================================================================================
; With A and B being the respective accumulators
;===================================================================================================
WorldMap_MultiplyAxB:
|0AC57F| STA.w WRMPYA
|0AC582| XBA
|0AC583| STA.w WRMPYB

|0AC586| NOP
|0AC587| NOP
|0AC588| NOP
|0AC589| NOP

|0AC58A| LDA.w RDMPYH
|0AC58D| XBA
|0AC58E| LDA.w RDMPYL

|0AC591| RTS

;===================================================================================================

WorldMap_ShiftNibblesRight:
|0AC592| REP #$30

|0AC594| LSR A
|0AC595| LSR A
|0AC596| LSR A
|0AC597| LSR A

|0AC598| SEP #$30

|0AC59A| RTS

;===================================================================================================

WorldMapIcon_AdjustCoordinate:
|0AC59B| REP #$20

|0AC59D| LDA.l $7EC10A
|0AC5A1| SEC
|0AC5A2| SBC.w #$0004
|0AC5A5| STA.l $7EC10A

|0AC5A9| LDA.l $7EC108
|0AC5AD| SEC
|0AC5AE| SBC.w #$0004
|0AC5B1| STA.l $7EC108

|0AC5B5| SEP #$20

|0AC5B7| RTS

;===================================================================================================
; Checks for the ownership of a dungeon prize
; Parameter: X - index of prize to check
; Fails if the current map marker disagrees
;===================================================================================================
pool OverworldMap_CheckForPendant

.bit
|0AC5B8| db $04 ; green
|0AC5B9| db $01 ; red
|0AC5BA| db $02 ; blue

endpool

;---------------------------------------------------------------------------------------------------

OverworldMap_CheckForPendant:
|0AC5BB| LDA.l $7EF3C7 ; check for pendants as map marker
|0AC5BF| CMP.b #$03
|0AC5C1| BNE OverworldMap_PrizeCheckFail

|0AC5C3| LDA.l $7EF374
|0AC5C7| AND.l .bit,X
|0AC5CB| BEQ OverworldMap_PrizeCheckFail

|0AC5CD| SEC

|0AC5CE| RTS

;===================================================================================================

OverworldMap_PrizeCheckFail:
|0AC5CF| CLC

|0AC5D0| RTS

;===================================================================================================

pool OverworldMap_CheckForCrystal

; What a weird order. It doesn't match any other list.
.bit
|0AC5D1| db $02 ; Palace of Darkness
|0AC5D2| db $40 ; Skull Woods
|0AC5D3| db $08 ; Turtle Rock
|0AC5D4| db $20 ; Thieves' Town
|0AC5D5| db $01 ; Misery Mire
|0AC5D6| db $04 ; Ice palace
|0AC5D7| db $10 ; Swamp Palace

endpool

;---------------------------------------------------------------------------------------------------

OverworldMap_CheckForCrystal:
|0AC5D8| LDA.l $7EF3C7 ; check for crystals as map marker
|0AC5DC| CMP.b #$07
|0AC5DE| BNE OverworldMap_PrizeCheckFail

|0AC5E0| LDA.l $7EF37A
|0AC5E4| AND.l .bit,X
|0AC5E8| BEQ OverworldMap_PrizeCheckFail

|0AC5EA| SEC

|0AC5EB| RTS

;===================================================================================================
; TODO needs analysis
;===================================================================================================
WorldMap_SpritePositions:
|0AC5EC| db $E0, $E0, $E0, $E0, $E0, $E0, $E0, $E0
|0AC5F4| db $E0, $E0, $E0, $E0, $E0, $E0, $E0, $DF
|0AC5FC| db $DE, $DD, $DC, $DB, $DA, $D8, $D7, $D6
|0AC604| db $D5, $D4, $D3, $D2, $D1, $D0, $CF, $CE
|0AC60C| db $CD, $CC, $CB, $CA, $C9, $C7, $C6, $C5
|0AC614| db $C4, $C3, $C2, $C1, $C0, $BF, $BE, $BD
|0AC61C| db $BC, $BB, $BA, $B9, $B8, $B7, $B6, $B5
|0AC624| db $B4, $B3, $B2, $B1, $B0, $AF, $AE, $AD
|0AC62C| db $AC, $AB, $AA, $A9, $A8, $A7, $A6, $A5
|0AC634| db $A4, $A3, $A2, $A1, $A0, $9F, $9E, $9D
|0AC63C| db $9C, $9B, $9B, $9A, $99, $98, $97, $96
|0AC644| db $95, $94, $93, $92, $91, $90, $8F, $8E
|0AC64C| db $8D, $8C, $8B, $8B, $8A, $89, $88, $87
|0AC654| db $86, $85, $84, $83, $82, $81, $81, $80
|0AC65C| db $7F, $7E, $7D, $7C, $7B, $7A, $79, $79
|0AC664| db $78, $77, $76, $75, $74, $73, $72, $72
|0AC66C| db $71, $70, $6F, $6E, $6D, $6C, $6C, $6B
|0AC674| db $6A, $69, $68, $67, $67, $66, $65, $64
|0AC67C| db $63, $62, $62, $61, $60, $5F, $5E, $5D
|0AC684| db $5D, $5C, $5B, $5A, $59, $59, $58, $57
|0AC68C| db $56, $55, $55, $54, $53, $52, $51, $51
|0AC694| db $50, $4F, $4E, $4E, $4D, $4C, $4B, $4A
|0AC69C| db $4A, $49, $48, $47, $47, $46, $45, $44
|0AC6A4| db $44, $43, $42, $41, $41, $40, $3F, $3E
|0AC6AC| db $3E, $3D, $3C, $3C, $3B, $3A, $39, $39
|0AC6B4| db $38, $37, $36, $36, $35, $34, $34, $33
|0AC6BC| db $32, $32, $31, $30, $2F, $2F, $2E, $2D
|0AC6C4| db $2D, $2C, $2B, $2B, $2A, $29, $29, $28
|0AC6CC| db $27, $27, $26, $25, $25, $24, $23, $23
|0AC6D4| db $22, $21, $21, $20, $1F, $1F, $1E, $1D
|0AC6DC| db $1D, $1C, $1C, $1B, $1A, $1A, $19, $18
|0AC6E4| db $18, $17, $17, $16, $15, $15, $14, $14
|0AC6EC| db $13, $12, $12, $11, $10, $10, $0F, $0F
|0AC6F4| db $0E, $0E, $0D, $0C, $0C, $0B, $0B, $0A
|0AC6FC| db $09, $09, $08, $08, $07, $07, $06, $05
|0AC704| db $05, $04, $04, $03, $03, $02, $01, $01
|0AC70C| db $00, $00, $00, $00, $FF, $FE, $FE, $FD
|0AC714| db $FC, $FC, $FB, $FB, $FA, $F9, $F9, $F8
|0AC71C| db $F7, $F7, $F6, $F5, $F4, $F4, $F3, $F2
|0AC724| db $F2, $F1, $F0, $EF, $EE, $EE, $ED, $EC
|0AC72C| db $EB, $EA, $E9, $E8, $E8, $E7, $E6, $E5
|0AC734| db $E4, $E3, $E2, $E1, $E0

;===================================================================================================

WorldMap_LightWorldTilemap:
|0AC739| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 00, Strip 0
|0AC741| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 00, Strip 1
|0AC749| db $28, $28, $28, $28, $28, $2C, $09, $08 ; Quadrant 0, Row 00, Strip 2
|0AC751| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 00, Strip 3
|0AC759| db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 0, Row 01, Strip 0
|0AC761| db $29, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 01, Strip 1
|0AC769| db $28, $28, $28, $28, $28, $28, $2A, $28 ; Quadrant 0, Row 01, Strip 2
|0AC771| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 01, Strip 3
|0AC779| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 02, Strip 0
|0AC781| db $2C, $09, $08, $09, $28, $28, $28, $28 ; Quadrant 0, Row 02, Strip 1
|0AC789| db $28, $28, $28, $28, $28, $08, $29, $28 ; Quadrant 0, Row 02, Strip 2
|0AC791| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 02, Strip 3
|0AC799| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 03, Strip 0
|0AC7A1| db $28, $2C, $2D, $2C, $09, $28, $28, $28 ; Quadrant 0, Row 03, Strip 1
|0AC7A9| db $28, $28, $28, $28, $08, $28, $2C, $09 ; Quadrant 0, Row 03, Strip 2
|0AC7B1| db $08, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 0, Row 03, Strip 3
|0AC7B9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 04, Strip 0
|0AC7C1| db $28, $28, $2C, $28, $2B, $09, $28, $28 ; Quadrant 0, Row 04, Strip 1
|0AC7C9| db $28, $28, $28, $08, $28, $28, $28, $2A ; Quadrant 0, Row 04, Strip 2
|0AC7D1| db $28, $28, $28, $28, $28, $28, $08, $28 ; Quadrant 0, Row 04, Strip 3
|0AC7D9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 05, Strip 0
|0AC7E1| db $28, $28, $28, $28, $2B, $2A, $28, $28 ; Quadrant 0, Row 05, Strip 1
|0AC7E9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 05, Strip 2
|0AC7F1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 05, Strip 3
|0AC7F9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 06, Strip 0
|0AC801| db $28, $29, $28, $28, $2A, $28, $28, $28 ; Quadrant 0, Row 06, Strip 1
|0AC809| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 06, Strip 2
|0AC811| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 06, Strip 3
|0AC819| db $28, $28, $08, $29, $28, $28, $28, $28 ; Quadrant 0, Row 07, Strip 0
|0AC821| db $28, $2C, $29, $28, $28, $28, $28, $28 ; Quadrant 0, Row 07, Strip 1
|0AC829| db $28, $08, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 07, Strip 2
|0AC831| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 07, Strip 3
|0AC839| db $28, $08, $28, $2C, $09, $08, $28, $28 ; Quadrant 0, Row 08, Strip 0
|0AC841| db $28, $28, $2B, $09, $08, $29, $08, $29 ; Quadrant 0, Row 08, Strip 1
|0AC849| db $08, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 08, Strip 2
|0AC851| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 08, Strip 3
|0AC859| db $08, $28, $28, $28, $2A, $28, $28, $28 ; Quadrant 0, Row 09, Strip 0
|0AC861| db $28, $28, $2B, $2E, $2D, $2C, $2D, $2C ; Quadrant 0, Row 09, Strip 1
|0AC869| db $2D, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 09, Strip 2
|0AC871| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 09, Strip 3
|0AC879| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0A, Strip 0
|0AC881| db $28, $28, $2C, $2C, $2C, $28, $2C, $28 ; Quadrant 0, Row 0A, Strip 1
|0AC889| db $2C, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0A, Strip 2
|0AC891| db $28, $28, $28, $28, $08, $29, $28, $2F ; Quadrant 0, Row 0A, Strip 3
|0AC899| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0B, Strip 0
|0AC8A1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0B, Strip 1
|0AC8A9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0B, Strip 2
|0AC8B1| db $28, $08, $09, $08, $28, $2C, $09, $1B ; Quadrant 0, Row 0B, Strip 3
|0AC8B9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0C, Strip 0
|0AC8C1| db $28, $28, $28, $29, $28, $28, $28, $28 ; Quadrant 0, Row 0C, Strip 1
|0AC8C9| db $28, $2F, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0C, Strip 2
|0AC8D1| db $08, $28, $2C, $2D, $28, $28, $2B, $19 ; Quadrant 0, Row 0C, Strip 3
|0AC8D9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0D, Strip 0
|0AC8E1| db $28, $28, $28, $2C, $29, $28, $2F, $28 ; Quadrant 0, Row 0D, Strip 1
|0AC8E9| db $2F, $1B, $1A, $28, $2F, $28, $2F, $08 ; Quadrant 0, Row 0D, Strip 2
|0AC8F1| db $28, $28, $28, $2C, $28, $28, $2C, $2E ; Quadrant 0, Row 0D, Strip 3
|0AC8F9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0E, Strip 0
|0AC901| db $28, $28, $28, $28, $2C, $38, $1B, $1C ; Quadrant 0, Row 0E, Strip 1
|0AC909| db $1D, $1F, $1E, $1A, $1B, $1C, $1D, $1A ; Quadrant 0, Row 0E, Strip 2
|0AC911| db $28, $2F, $28, $2F, $28, $28, $28, $2B ; Quadrant 0, Row 0E, Strip 3
|0AC919| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 0F, Strip 0
|0AC921| db $28, $28, $28, $28, $28, $2E, $19, $1E ; Quadrant 0, Row 0F, Strip 1
|0AC929| db $1F, $14, $14, $1E, $1F, $1E, $1F, $1E ; Quadrant 0, Row 0F, Strip 2
|0AC931| db $1A, $1B, $3B, $3C, $3B, $28, $28, $28 ; Quadrant 0, Row 0F, Strip 3
|0AC939| db $28, $28, $28, $28, $08, $29, $08, $29 ; Quadrant 0, Row 10, Strip 0
|0AC941| db $28, $28, $28, $28, $28, $2B, $2E, $0B ; Quadrant 0, Row 10, Strip 1
|0AC949| db $26, $27, $14, $14, $14, $A5, $14, $26 ; Quadrant 0, Row 10, Strip 2
|0AC951| db $24, $25, $56, $35, $5B, $73, $74, $28 ; Quadrant 0, Row 10, Strip 3
|0AC959| db $28, $28, $28, $08, $28, $2C, $28, $2B ; Quadrant 0, Row 11, Strip 0
|0AC961| db $09, $08, $29, $28, $28, $2C, $2E, $1B ; Quadrant 0, Row 11, Strip 1
|0AC969| db $36, $37, $14, $14, $14, $14, $14, $15 ; Quadrant 0, Row 11, Strip 2
|0AC971| db $34, $A7, $64, $5B, $90, $73, $73, $52 ; Quadrant 0, Row 11, Strip 3
|0AC979| db $28, $28, $28, $28, $28, $28, $28, $2C ; Quadrant 0, Row 12, Strip 0
|0AC981| db $2E, $2D, $2C, $09, $28, $2F, $1B, $1F ; Quadrant 0, Row 12, Strip 1
|0AC989| db $14, $14, $14, $14, $14, $14, $14, $15 ; Quadrant 0, Row 12, Strip 2
|0AC991| db $A7, $34, $E4, $90, $82, $83, $83, $83 ; Quadrant 0, Row 12, Strip 3
|0AC999| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 13, Strip 0
|0AC9A1| db $2C, $2E, $2D, $2A, $29, $2C, $19, $14 ; Quadrant 0, Row 13, Strip 1
|0AC9A9| db $A5, $14, $14, $14, $A5, $14, $14, $15 ; Quadrant 0, Row 13, Strip 2
|0AC9B1| db $A7, $B6, $DF, $82, $B2, $93, $D6, $D6 ; Quadrant 0, Row 13, Strip 3
|0AC9B9| db $09, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 14, Strip 0
|0AC9C1| db $28, $2C, $2A, $28, $2C, $09, $1B, $14 ; Quadrant 0, Row 14, Strip 1
|0AC9C9| db $14, $A5, $14, $14, $14, $14, $14, $15 ; Quadrant 0, Row 14, Strip 2
|0AC9D1| db $34, $A7, $82, $B2, $D6, $93, $93, $93 ; Quadrant 0, Row 14, Strip 3
|0AC9D9| db $2B, $09, $08, $29, $28, $28, $28, $28 ; Quadrant 0, Row 15, Strip 0
|0AC9E1| db $28, $28, $28, $28, $28, $2B, $19, $14 ; Quadrant 0, Row 15, Strip 1
|0AC9E9| db $14, $14, $14, $14, $A5, $14, $A5, $36 ; Quadrant 0, Row 15, Strip 2
|0AC9F1| db $05, $34, $B0, $D6, $D6, $82, $83, $83 ; Quadrant 0, Row 15, Strip 3
|0AC9F9| db $2C, $2A, $28, $2B, $2D, $28, $28, $28 ; Quadrant 0, Row 16, Strip 0
|0ACA01| db $28, $28, $28, $28, $28, $2C, $2B, $0B ; Quadrant 0, Row 16, Strip 1
|0ACA09| db $A5, $14, $14, $A5, $14, $A5, $14, $14 ; Quadrant 0, Row 16, Strip 2
|0ACA11| db $15, $33, $33, $33, $90, $B2, $D6, $93 ; Quadrant 0, Row 16, Strip 3
|0ACA19| db $28, $28, $28, $2C, $2E, $2D, $08, $28 ; Quadrant 0, Row 17, Strip 0
|0ACA21| db $28, $28, $28, $28, $28, $28, $2F, $1B ; Quadrant 0, Row 17, Strip 1
|0ACA29| db $14, $14, $A5, $A5, $14, $14, $14, $A5 ; Quadrant 0, Row 17, Strip 2
|0ACA31| db $15, $A6, $FB, $34, $82, $83, $83, $83 ; Quadrant 0, Row 17, Strip 3
|0ACA39| db $28, $28, $28, $28, $2C, $2A, $28, $28 ; Quadrant 0, Row 18, Strip 0
|0ACA41| db $28, $28, $08, $29, $08, $29, $1B, $1F ; Quadrant 0, Row 18, Strip 1
|0ACA49| db $26, $27, $26, $27, $26, $24, $24, $D5 ; Quadrant 0, Row 18, Strip 2
|0ACA51| db $25, $34, $34, $34, $B0, $93, $71, $93 ; Quadrant 0, Row 18, Strip 3
|0ACA59| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 19, Strip 0
|0ACA61| db $28, $2F, $28, $2C, $28, $2C, $19, $14 ; Quadrant 0, Row 19, Strip 1
|0ACA69| db $15, $13, $15, $13, $15, $33, $40, $41 ; Quadrant 0, Row 19, Strip 2
|0ACA71| db $33, $BF, $34, $34, $30, $23, $81, $23 ; Quadrant 0, Row 19, Strip 3
|0ACA79| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 0, Row 1A, Strip 0
|0ACA81| db $2F, $1B, $1A, $28, $28, $2F, $1B, $14 ; Quadrant 0, Row 1A, Strip 1
|0ACA89| db $15, $13, $15, $13, $15, $BC, $BD, $A6 ; Quadrant 0, Row 1A, Strip 2
|0ACA91| db $A7, $34, $41, $33, $40, $34, $C0, $34 ; Quadrant 0, Row 1A, Strip 3
|0ACA99| db $29, $28, $28, $28, $28, $08, $2D, $28 ; Quadrant 0, Row 1B, Strip 0
|0ACAA1| db $28, $19, $0A, $28, $2F, $1B, $1F, $14 ; Quadrant 0, Row 1B, Strip 1
|0ACAA9| db $15, $13, $15, $13, $36, $05, $D0, $D0 ; Quadrant 0, Row 1B, Strip 2
|0ACAB1| db $D0, $D0, $D0, $D0, $D0, $D0, $C3, $D0 ; Quadrant 0, Row 1B, Strip 3
|0ACAB9| db $2C, $09, $28, $28, $08, $28, $2B, $2D ; Quadrant 0, Row 1C, Strip 0
|0ACAC1| db $28, $2C, $28, $2F, $1B, $1F, $14, $14 ; Quadrant 0, Row 1C, Strip 1
|0ACAC9| db $15, $23, $25, $23, $24, $25, $C0, $A6 ; Quadrant 0, Row 1C, Strip 2
|0ACAD1| db $FB, $A7, $A6, $00, $6A, $3D, $6E, $8B ; Quadrant 0, Row 1C, Strip 3
|0ACAD9| db $28, $2C, $09, $08, $28, $28, $2C, $2E ; Quadrant 0, Row 1D, Strip 0
|0ACAE1| db $2D, $08, $29, $1B, $1F, $A5, $14, $26 ; Quadrant 0, Row 1D, Strip 1
|0ACAE9| db $25, $31, $B6, $E4, $FD, $FE, $C0, $10 ; Quadrant 0, Row 1D, Strip 2
|0ACAF1| db $12, $A6, $FB, $10, $12, $4D, $7E, $9B ; Quadrant 0, Row 1D, Strip 3
|0ACAF9| db $28, $28, $2A, $29, $28, $28, $28, $2C ; Quadrant 0, Row 1E, Strip 0
|0ACB01| db $2A, $28, $2C, $19, $14, $14, $A5, $15 ; Quadrant 0, Row 1E, Strip 1
|0ACB09| db $34, $41, $33, $33, $33, $33, $C0, $10 ; Quadrant 0, Row 1E, Strip 2
|0ACB11| db $12, $A7, $FB, $20, $22, $CD, $A7, $3E ; Quadrant 0, Row 1E, Strip 3
|0ACB19| db $28, $28, $28, $2C, $2D, $28, $28, $28 ; Quadrant 0, Row 1F, Strip 0
|0ACB21| db $28, $28, $28, $2B, $0B, $A5, $14, $15 ; Quadrant 0, Row 1F, Strip 1
|0ACB29| db $34, $F6, $89, $6B, $6C, $89, $F6, $10 ; Quadrant 0, Row 1F, Strip 2
|0ACB31| db $12, $FB, $FB, $00, $02, $CD, $34, $3E ; Quadrant 0, Row 1F, Strip 3

;---------------------------------------------------------------------------------------------------

|0ACB39| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 00, Strip 0
|0ACB41| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 00, Strip 1
|0ACB49| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 00, Strip 2
|0ACB51| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 00, Strip 3
|0ACB59| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 01, Strip 0
|0ACB61| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 01, Strip 1
|0ACB69| db $28, $28, $28, $28, $08, $29, $28, $28 ; Quadrant 1, Row 01, Strip 2
|0ACB71| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 01, Strip 3
|0ACB79| db $28, $28, $08, $28, $08, $29, $28, $28 ; Quadrant 1, Row 02, Strip 0
|0ACB81| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 02, Strip 1
|0ACB89| db $28, $28, $28, $08, $28, $2C, $09, $28 ; Quadrant 1, Row 02, Strip 2
|0ACB91| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 02, Strip 3
|0ACB99| db $09, $08, $28, $08, $28, $2C, $09, $28 ; Quadrant 1, Row 03, Strip 0
|0ACBA1| db $28, $28, $28, $28, $28, $29, $08, $29 ; Quadrant 1, Row 03, Strip 1
|0ACBA9| db $08, $29, $08, $28, $28, $28, $2B, $09 ; Quadrant 1, Row 03, Strip 2
|0ACBB1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 03, Strip 3
|0ACBB9| db $2C, $2D, $28, $28, $28, $28, $2B, $09 ; Quadrant 1, Row 04, Strip 0
|0ACBC1| db $28, $28, $08, $28, $28, $2C, $2D, $2C ; Quadrant 1, Row 04, Strip 1
|0ACBC9| db $2D, $2C, $2D, $28, $28, $28, $2C, $2E ; Quadrant 1, Row 04, Strip 2
|0ACBD1| db $09, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 04, Strip 3
|0ACBD9| db $28, $2C, $28, $28, $28, $28, $2C, $2E ; Quadrant 1, Row 05, Strip 0
|0ACBE1| db $09, $08, $28, $28, $28, $28, $2C, $28 ; Quadrant 1, Row 05, Strip 1
|0ACBE9| db $2C, $28, $2C, $28, $28, $28, $28, $2B ; Quadrant 1, Row 05, Strip 2
|0ACBF1| db $2A, $29, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 05, Strip 3
|0ACBF9| db $28, $28, $28, $28, $28, $28, $28, $2B ; Quadrant 1, Row 06, Strip 0
|0ACC01| db $2A, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 06, Strip 1
|0ACC09| db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 1, Row 06, Strip 2
|0ACC11| db $09, $2C, $09, $28, $28, $28, $28, $28 ; Quadrant 1, Row 06, Strip 3
|0ACC19| db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 1, Row 07, Strip 0
|0ACC21| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 07, Strip 1
|0ACC29| db $28, $28, $28, $28, $28, $28, $08, $28 ; Quadrant 1, Row 07, Strip 2
|0ACC31| db $2C, $28, $2B, $09, $28, $28, $28, $28 ; Quadrant 1, Row 07, Strip 3
|0ACC39| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 08, Strip 0
|0ACC41| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 08, Strip 1
|0ACC49| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 08, Strip 2
|0ACC51| db $28, $28, $2C, $2E, $2D, $28, $28, $28 ; Quadrant 1, Row 08, Strip 3
|0ACC59| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 09, Strip 0
|0ACC61| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 09, Strip 1
|0ACC69| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 09, Strip 2
|0ACC71| db $28, $28, $28, $2B, $2A, $2D, $28, $28 ; Quadrant 1, Row 09, Strip 3
|0ACC79| db $28, $28, $28, $28, $28, $28, $2F, $28 ; Quadrant 1, Row 0A, Strip 0
|0ACC81| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0A, Strip 1
|0ACC89| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0A, Strip 2
|0ACC91| db $28, $28, $28, $2A, $28, $2C, $28, $28 ; Quadrant 1, Row 0A, Strip 3
|0ACC99| db $1A, $28, $08, $29, $08, $29, $1B, $1A ; Quadrant 1, Row 0B, Strip 0
|0ACCA1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0B, Strip 1
|0ACCA9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0B, Strip 2
|0ACCB1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0B, Strip 3
|0ACCB9| db $0A, $08, $2D, $2C, $2D, $1B, $1F, $0A ; Quadrant 1, Row 0C, Strip 0
|0ACCC1| db $28, $28, $28, $2F, $28, $28, $28, $28 ; Quadrant 1, Row 0C, Strip 1
|0ACCC9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0C, Strip 2
|0ACCD1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0C, Strip 3
|0ACCD9| db $2D, $28, $2C, $28, $2C, $19, $0A, $28 ; Quadrant 1, Row 0D, Strip 0
|0ACCE1| db $28, $28, $2F, $1B, $1A, $28, $28, $28 ; Quadrant 1, Row 0D, Strip 1
|0ACCE9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0D, Strip 2
|0ACCF1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0D, Strip 3
|0ACCF9| db $2E, $28, $08, $29, $28, $2C, $2D, $28 ; Quadrant 1, Row 0E, Strip 0
|0ACD01| db $28, $28, $2C, $19, $0A, $28, $28, $28 ; Quadrant 1, Row 0E, Strip 1
|0ACD09| db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 1, Row 0E, Strip 2
|0ACD11| db $29, $08, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0E, Strip 3
|0ACD19| db $2C, $98, $42, $2C, $09, $28, $2C, $28 ; Quadrant 1, Row 0F, Strip 0
|0ACD21| db $28, $08, $29, $2C, $28, $28, $28, $28 ; Quadrant 1, Row 0F, Strip 1
|0ACD29| db $28, $28, $28, $28, $28, $28, $08, $28 ; Quadrant 1, Row 0F, Strip 2
|0ACD31| db $2C, $2D, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 0F, Strip 3
|0ACD39| db $72, $99, $63, $73, $73, $74, $2C, $72 ; Quadrant 1, Row 10, Strip 0
|0ACD41| db $73, $73, $73, $A1, $A0, $73, $73, $74 ; Quadrant 1, Row 10, Strip 1
|0ACD49| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 10, Strip 2
|0ACD51| db $28, $2C, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 10, Strip 3
|0ACD59| db $52, $9A, $70, $A0, $73, $91, $09, $90 ; Quadrant 1, Row 11, Strip 0
|0ACD61| db $73, $73, $A1, $84, $90, $73, $73, $91 ; Quadrant 1, Row 11, Strip 1
|0ACD69| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 11, Strip 2
|0ACD71| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 11, Strip 3
|0ACD79| db $83, $83, $84, $82, $83, $52, $52, $83 ; Quadrant 1, Row 12, Strip 0
|0ACD81| db $83, $83, $84, $B3, $90, $A1, $83, $84 ; Quadrant 1, Row 12, Strip 1
|0ACD89| db $3B, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 12, Strip 2
|0ACD91| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 12, Strip 3
|0ACD99| db $93, $93, $94, $92, $93, $94, $72, $93 ; Quadrant 1, Row 13, Strip 0
|0ACDA1| db $93, $93, $B3, $A1, $82, $84, $93, $A2 ; Quadrant 1, Row 13, Strip 1
|0ACDA9| db $4A, $3B, $08, $28, $28, $28, $28, $28 ; Quadrant 1, Row 13, Strip 2
|0ACDB1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 13, Strip 3
|0ACDB9| db $D6, $93, $94, $92, $93, $94, $82, $93 ; Quadrant 1, Row 14, Strip 0
|0ACDC1| db $82, $83, $83, $84, $B4, $94, $06, $54 ; Quadrant 1, Row 14, Strip 1
|0ACDC9| db $35, $4C, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 14, Strip 2
|0ACDD1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 14, Strip 3
|0ACDD9| db $83, $84, $B3, $B2, $93, $94, $B4, $90 ; Quadrant 1, Row 15, Strip 0
|0ACDE1| db $B2, $93, $93, $B3, $CA, $B7, $95, $54 ; Quadrant 1, Row 15, Strip 1
|0ACDE9| db $48, $3B, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 15, Strip 2
|0ACDF1| db $28, $28, $28, $28, $08, $29, $28, $28 ; Quadrant 1, Row 15, Strip 3
|0ACDF9| db $93, $B3, $73, $A1, $83, $52, $62, $90 ; Quadrant 1, Row 16, Strip 0
|0ACE01| db $73, $73, $73, $91, $9F, $06, $22, $54 ; Quadrant 1, Row 16, Strip 1
|0ACE09| db $5C, $4A, $3B, $28, $28, $28, $28, $28 ; Quadrant 1, Row 16, Strip 2
|0ACE11| db $28, $28, $28, $08, $28, $2C, $09, $08 ; Quadrant 1, Row 16, Strip 3
|0ACE19| db $83, $83, $83, $84, $93, $94, $CA, $82 ; Quadrant 1, Row 17, Strip 0
|0ACE21| db $83, $83, $83, $84, $A9, $16, $02, $54 ; Quadrant 1, Row 17, Strip 1
|0ACE29| db $58, $56, $4A, $3B, $08, $28, $28, $28 ; Quadrant 1, Row 17, Strip 2
|0ACE31| db $28, $28, $08, $28, $28, $28, $2B, $2D ; Quadrant 1, Row 17, Strip 3
|0ACE39| db $93, $93, $93, $A4, $93, $A4, $CA, $B4 ; Quadrant 1, Row 18, Strip 0
|0ACE41| db $93, $93, $93, $B7, $11, $11, $12, $54 ; Quadrant 1, Row 18, Strip 1
|0ACE49| db $35, $58, $56, $4C, $29, $28, $28, $28 ; Quadrant 1, Row 18, Strip 2
|0ACE51| db $28, $28, $28, $28, $28, $28, $2C, $2E ; Quadrant 1, Row 18, Strip 3
|0ACE59| db $24, $24, $24, $25, $00, $85, $06, $21 ; Quadrant 1, Row 19, Strip 0
|0ACE61| db $21, $21, $21, $21, $21, $21, $22, $54 ; Quadrant 1, Row 19, Strip 1
|0ACE69| db $39, $3A, $39, $28, $2C, $2D, $28, $28 ; Quadrant 1, Row 19, Strip 2
|0ACE71| db $28, $28, $28, $28, $28, $28, $28, $2C ; Quadrant 1, Row 19, Strip 3
|0ACE79| db $B6, $80, $80, $B6, $20, $07, $95, $A6 ; Quadrant 1, Row 1A, Strip 0
|0ACE81| db $A6, $F6, $A7, $44, $45, $41, $31, $54 ; Quadrant 1, Row 1A, Strip 1
|0ACE89| db $3B, $28, $28, $28, $28, $2C, $28, $28 ; Quadrant 1, Row 1A, Strip 2
|0ACE91| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1A, Strip 3
|0ACE99| db $D0, $D0, $D0, $D0, $D0, $10, $06, $77 ; Quadrant 1, Row 1B, Strip 0
|0ACEA1| db $7B, $7B, $7B, $43, $7A, $7B, $8D, $8E ; Quadrant 1, Row 1B, Strip 1
|0ACEA9| db $4A, $3B, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1B, Strip 2
|0ACEB1| db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 1, Row 1B, Strip 3
|0ACEB9| db $8C, $6E, $3F, $8A, $02, $10, $12, $54 ; Quadrant 1, Row 1C, Strip 0
|0ACEC1| db $57, $9D, $9D, $9D, $9D, $9D, $C8, $C9 ; Quadrant 1, Row 1C, Strip 1
|0ACEC9| db $35, $4C, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1C, Strip 2
|0ACED1| db $28, $28, $28, $28, $28, $28, $08, $28 ; Quadrant 1, Row 1C, Strip 3
|0ACED9| db $9C, $7E, $4F, $10, $12, $10, $12, $54 ; Quadrant 1, Row 1D, Strip 0
|0ACEE1| db $C7, $57, $56, $48, $35, $89, $89, $5C ; Quadrant 1, Row 1D, Strip 1
|0ACEE9| db $35, $3B, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1D, Strip 2
|0ACEF1| db $28, $28, $28, $28, $28, $08, $28, $28 ; Quadrant 1, Row 1D, Strip 3
|0ACEF9| db $5E, $A7, $CE, $10, $12, $52, $52, $54 ; Quadrant 1, Row 1E, Strip 0
|0ACF01| db $C7, $EE, $EF, $58, $9D, $9D, $9D, $5C ; Quadrant 1, Row 1E, Strip 1
|0ACF09| db $48, $4A, $3B, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1E, Strip 2
|0ACF11| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1E, Strip 3
|0ACF19| db $5E, $34, $CE, $10, $F3, $F4, $22, $54 ; Quadrant 1, Row 1F, Strip 0
|0ACF21| db $C7, $89, $49, $56, $57, $9D, $56, $5C ; Quadrant 1, Row 1F, Strip 1
|0ACF29| db $5C, $35, $4C, $28, $29, $28, $28, $28 ; Quadrant 1, Row 1F, Strip 2
|0ACF31| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 1, Row 1F, Strip 3

;---------------------------------------------------------------------------------------------------

|0ACF39| db $28, $28, $28, $28, $2B, $2D, $28, $28 ; Quadrant 2, Row 00, Strip 0
|0ACF41| db $28, $28, $28, $2C, $2A, $0B, $14, $15 ; Quadrant 2, Row 00, Strip 1
|0ACF49| db $34, $B6, $34, $3E, $5E, $88, $88, $10 ; Quadrant 2, Row 00, Strip 2
|0ACF51| db $12, $FB, $A6, $10, $12, $CD, $34, $3E ; Quadrant 2, Row 00, Strip 3
|0ACF59| db $28, $28, $28, $28, $2C, $2E, $2D, $08 ; Quadrant 2, Row 01, Strip 0
|0ACF61| db $09, $28, $28, $28, $2F, $2A, $0B, $15 ; Quadrant 2, Row 01, Strip 1
|0ACF69| db $88, $88, $BC, $BD, $BC, $BD, $F6, $10 ; Quadrant 2, Row 01, Strip 2
|0ACF71| db $12, $BC, $BD, $10, $12, $5D, $4E, $7D ; Quadrant 2, Row 01, Strip 3
|0ACF79| db $28, $28, $28, $28, $28, $2C, $2A, $28 ; Quadrant 2, Row 02, Strip 0
|0ACF81| db $2B, $09, $28, $28, $28, $2F, $1B, $25 ; Quadrant 2, Row 02, Strip 1
|0ACF89| db $34, $A7, $34, $34, $34, $34, $A7, $20 ; Quadrant 2, Row 02, Strip 2
|0ACF91| db $22, $33, $33, $10, $16, $01, $01, $50 ; Quadrant 2, Row 02, Strip 3
|0ACF99| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 03, Strip 0
|0ACFA1| db $2C, $2A, $28, $28, $2F, $3C, $4B, $66 ; Quadrant 2, Row 03, Strip 1
|0ACFA9| db $CF, $04, $04, $CB, $04, $BB, $C0, $03 ; Quadrant 2, Row 03, Strip 2
|0ACFB1| db $04, $04, $04, $DB, $E6, $21, $21, $60 ; Quadrant 2, Row 03, Strip 3
|0ACFB9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 04, Strip 0
|0ACFC1| db $28, $28, $08, $09, $08, $5A, $35, $35 ; Quadrant 2, Row 04, Strip 1
|0ACFC9| db $69, $24, $24, $27, $26, $25, $C0, $13 ; Quadrant 2, Row 04, Strip 2
|0ACFD1| db $26, $24, $24, $27, $15, $A7, $FB, $FB ; Quadrant 2, Row 04, Strip 3
|0ACFD9| db $09, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 05, Strip 0
|0ACFE1| db $28, $28, $28, $2C, $2D, $2B, $3A, $35 ; Quadrant 2, Row 05, Strip 1
|0ACFE9| db $55, $34, $34, $13, $15, $E4, $33, $13 ; Quadrant 2, Row 05, Strip 2
|0ACFF1| db $15, $FB, $A7, $13, $15, $A7, $FB, $FB ; Quadrant 2, Row 05, Strip 3
|0ACFF9| db $2B, $09, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 06, Strip 0
|0AD001| db $28, $28, $28, $28, $2C, $2F, $3C, $35 ; Quadrant 2, Row 06, Strip 1
|0AD009| db $55, $33, $31, $23, $25, $33, $F6, $13 ; Quadrant 2, Row 06, Strip 2
|0AD011| db $15, $A7, $FB, $13, $15, $A7, $A6, $34 ; Quadrant 2, Row 06, Strip 3
|0AD019| db $2C, $2E, $09, $08, $29, $28, $28, $28 ; Quadrant 2, Row 07, Strip 0
|0AD021| db $28, $2C, $09, $28, $2F, $3C, $4B, $35 ; Quadrant 2, Row 07, Strip 1
|0AD029| db $7A, $7B, $7B, $A3, $D2, $7B, $7C, $23 ; Quadrant 2, Row 07, Strip 2
|0AD031| db $36, $05, $03, $37, $15, $A7, $41, $33 ; Quadrant 2, Row 07, Strip 3
|0AD039| db $28, $2C, $2A, $28, $2C, $09, $28, $28 ; Quadrant 2, Row 08, Strip 0
|0AD041| db $28, $28, $2C, $09, $3C, $4B, $35, $57 ; Quadrant 2, Row 08, Strip 1
|0AD049| db $9D, $9D, $C5, $9D, $9D, $56, $55, $A6 ; Quadrant 2, Row 08, Strip 2
|0AD051| db $23, $25, $23, $24, $25, $34, $44, $66 ; Quadrant 2, Row 08, Strip 3
|0AD059| db $28, $28, $28, $28, $28, $2B, $2D, $28 ; Quadrant 2, Row 09, Strip 0
|0AD061| db $28, $28, $28, $2C, $5A, $35, $35, $C7 ; Quadrant 2, Row 09, Strip 1
|0AD069| db $35, $DE, $CC, $DE, $57, $5C, $47, $66 ; Quadrant 2, Row 09, Strip 2
|0AD071| db $45, $D0, $D0, $D0, $C3, $34, $AF, $67 ; Quadrant 2, Row 09, Strip 3
|0AD079| db $28, $28, $28, $28, $28, $2B, $2A, $28 ; Quadrant 2, Row 0A, Strip 0
|0AD081| db $28, $28, $28, $28, $2C, $3A, $35, $C7 ; Quadrant 2, Row 0A, Strip 1
|0AD089| db $57, $9D, $78, $9D, $59, $58, $56, $35 ; Quadrant 2, Row 0A, Strip 2
|0AD091| db $7A, $7B, $7C, $A7, $34, $B1, $AD, $B6 ; Quadrant 2, Row 0A, Strip 3
|0AD099| db $28, $28, $28, $28, $2F, $2A, $28, $28 ; Quadrant 2, Row 0B, Strip 0
|0AD0A1| db $28, $28, $28, $28, $28, $2C, $3A, $C7 ; Quadrant 2, Row 0B, Strip 1
|0AD0A9| db $C7, $86, $DC, $57, $59, $86, $58, $56 ; Quadrant 2, Row 0B, Strip 2
|0AD0B1| db $35, $35, $7A, $7B, $7B, $D3, $AC, $BF ; Quadrant 2, Row 0B, Strip 3
|0AD0B9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 0C, Strip 0
|0AD0C1| db $28, $28, $08, $09, $08, $29, $3C, $C7 ; Quadrant 2, Row 0C, Strip 1
|0AD0C9| db $C7, $86, $58, $59, $86, $86, $86, $5C ; Quadrant 2, Row 0C, Strip 2
|0AD0D1| db $57, $56, $57, $56, $57, $65, $B6, $B6 ; Quadrant 2, Row 0C, Strip 3
|0AD0D9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 0D, Strip 0
|0AD0E1| db $28, $28, $28, $2C, $2D, $3C, $4B, $C7 ; Quadrant 2, Row 0D, Strip 1
|0AD0E9| db $59, $86, $86, $86, $86, $86, $86, $5C ; Quadrant 2, Row 0D, Strip 2
|0AD0F1| db $C7, $64, $65, $54, $55, $B6, $B6, $B6 ; Quadrant 2, Row 0D, Strip 3
|0AD0F9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 0E, Strip 0
|0AD101| db $28, $28, $28, $28, $2C, $5A, $35, $C7 ; Quadrant 2, Row 0E, Strip 1
|0AD109| db $86, $86, $86, $86, $86, $86, $86, $58 ; Quadrant 2, Row 0E, Strip 2
|0AD111| db $C2, $7F, $6F, $C1, $65, $B6, $79, $F5 ; Quadrant 2, Row 0E, Strip 3
|0AD119| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 0F, Strip 0
|0AD121| db $28, $28, $28, $08, $29, $2C, $3A, $C7 ; Quadrant 2, Row 0F, Strip 1
|0AD129| db $66, $49, $86, $86, $86, $86, $86, $86 ; Quadrant 2, Row 0F, Strip 2
|0AD131| db $5C, $47, $46, $55, $B6, $B6, $B6, $B6 ; Quadrant 2, Row 0F, Strip 3
|0AD139| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 10, Strip 0
|0AD141| db $08, $29, $08, $28, $2C, $09, $3C, $47 ; Quadrant 2, Row 10, Strip 1
|0AD149| db $66, $66, $66, $66, $66, $66, $66, $66 ; Quadrant 2, Row 10, Strip 2
|0AD151| db $46, $35, $35, $47, $66, $66, $66, $66 ; Quadrant 2, Row 10, Strip 3
|0AD159| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 11, Strip 0
|0AD161| db $28, $2C, $09, $28, $28, $2B, $5A, $39 ; Quadrant 2, Row 11, Strip 1
|0AD169| db $3A, $39, $3A, $35, $35, $39, $3A, $48 ; Quadrant 2, Row 11, Strip 2
|0AD171| db $66, $66, $49, $39, $3A, $35, $35, $39 ; Quadrant 2, Row 11, Strip 3
|0AD179| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 12, Strip 0
|0AD181| db $28, $28, $2C, $28, $28, $2C, $2C, $2D ; Quadrant 2, Row 12, Strip 1
|0AD189| db $2C, $28, $2C, $3A, $39, $2F, $3C, $5C ; Quadrant 2, Row 12, Strip 2
|0AD191| db $39, $3A, $39, $28, $2C, $3A, $39, $28 ; Quadrant 2, Row 12, Strip 3
|0AD199| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 13, Strip 0
|0AD1A1| db $28, $28, $28, $28, $28, $28, $28, $2C ; Quadrant 2, Row 13, Strip 1
|0AD1A9| db $28, $28, $28, $2C, $28, $2C, $5A, $46 ; Quadrant 2, Row 13, Strip 2
|0AD1B1| db $3B, $2C, $2D, $28, $28, $2C, $2D, $28 ; Quadrant 2, Row 13, Strip 3
|0AD1B9| db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 2, Row 14, Strip 0
|0AD1C1| db $29, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 14, Strip 1
|0AD1C9| db $28, $28, $28, $28, $28, $28, $3C, $35 ; Quadrant 2, Row 14, Strip 2
|0AD1D1| db $4A, $3B, $2C, $2D, $28, $28, $2C, $28 ; Quadrant 2, Row 14, Strip 3
|0AD1D9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 15, Strip 0
|0AD1E1| db $2C, $09, $08, $29, $28, $28, $28, $28 ; Quadrant 2, Row 15, Strip 1
|0AD1E9| db $28, $28, $28, $28, $28, $08, $5A, $35 ; Quadrant 2, Row 15, Strip 2
|0AD1F1| db $35, $4A, $3B, $3C, $3B, $08, $29, $28 ; Quadrant 2, Row 15, Strip 3
|0AD1F9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 16, Strip 0
|0AD201| db $28, $2C, $2D, $2C, $09, $28, $28, $28 ; Quadrant 2, Row 16, Strip 1
|0AD209| db $28, $28, $28, $28, $08, $28, $2C, $3A ; Quadrant 2, Row 16, Strip 2
|0AD211| db $39, $3A, $4A, $4B, $4C, $28, $2C, $09 ; Quadrant 2, Row 16, Strip 3
|0AD219| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 17, Strip 0
|0AD221| db $28, $28, $2C, $28, $2B, $09, $08, $29 ; Quadrant 2, Row 17, Strip 1
|0AD229| db $28, $28, $28, $08, $28, $28, $28, $2A ; Quadrant 2, Row 17, Strip 2
|0AD231| db $28, $2C, $3A, $39, $28, $28, $28, $08 ; Quadrant 2, Row 17, Strip 3
|0AD239| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 18, Strip 0
|0AD241| db $28, $28, $28, $28, $2B, $2A, $28, $2C ; Quadrant 2, Row 18, Strip 1
|0AD249| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 18, Strip 2
|0AD251| db $28, $28, $2B, $2D, $28, $28, $28, $28 ; Quadrant 2, Row 18, Strip 3
|0AD259| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 19, Strip 0
|0AD261| db $28, $28, $28, $28, $2A, $28, $28, $28 ; Quadrant 2, Row 19, Strip 1
|0AD269| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 19, Strip 2
|0AD271| db $28, $28, $2C, $2E, $2D, $28, $28, $28 ; Quadrant 2, Row 19, Strip 3
|0AD279| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1A, Strip 0
|0AD281| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1A, Strip 1
|0AD289| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1A, Strip 2
|0AD291| db $28, $28, $28, $2C, $2E, $28, $28, $28 ; Quadrant 2, Row 1A, Strip 3
|0AD299| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1B, Strip 0
|0AD2A1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1B, Strip 1
|0AD2A9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1B, Strip 2
|0AD2B1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1B, Strip 3
|0AD2B9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1C, Strip 0
|0AD2C1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1C, Strip 1
|0AD2C9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1C, Strip 2
|0AD2D1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1C, Strip 3
|0AD2D9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1D, Strip 0
|0AD2E1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1D, Strip 1
|0AD2E9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1D, Strip 2
|0AD2F1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1D, Strip 3
|0AD2F9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1E, Strip 0
|0AD301| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1E, Strip 1
|0AD309| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1E, Strip 2
|0AD311| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1E, Strip 3
|0AD319| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1F, Strip 0
|0AD321| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1F, Strip 1
|0AD329| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1F, Strip 2
|0AD331| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 2, Row 1F, Strip 3

;---------------------------------------------------------------------------------------------------

|0AD339| db $5E, $34, $CE, $10, $12, $FC, $FC, $5C ; Quadrant 3, Row 00, Strip 0
|0AD341| db $C7, $9D, $59, $58, $59, $89, $58, $5C ; Quadrant 3, Row 00, Strip 1
|0AD349| db $58, $39, $28, $28, $2C, $2D, $28, $28 ; Quadrant 3, Row 00, Strip 2
|0AD351| db $08, $29, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 00, Strip 3
|0AD359| db $6D, $4E, $5F, $20, $22, $FC, $FC, $5C ; Quadrant 3, Row 01, Strip 0
|0AD361| db $C7, $67, $56, $89, $57, $67, $67, $5C ; Quadrant 3, Row 01, Strip 1
|0AD369| db $39, $28, $28, $28, $28, $2B, $2D, $08 ; Quadrant 3, Row 01, Strip 2
|0AD371| db $28, $2C, $2D, $28, $28, $28, $28, $28 ; Quadrant 3, Row 01, Strip 3
|0AD379| db $51, $01, $01, $01, $02, $FC, $FC, $5C ; Quadrant 3, Row 02, Strip 0
|0AD381| db $55, $9E, $64, $67, $65, $FB, $A7, $54 ; Quadrant 3, Row 02, Strip 1
|0AD389| db $3B, $28, $28, $08, $28, $28, $2C, $28 ; Quadrant 3, Row 02, Strip 2
|0AD391| db $28, $28, $2C, $28, $28, $28, $28, $28 ; Quadrant 3, Row 02, Strip 3
|0AD399| db $61, $21, $21, $07, $12, $FC, $FC, $5C ; Quadrant 3, Row 03, Strip 0
|0AD3A1| db $55, $77, $7B, $7B, $7B, $7B, $7C, $54 ; Quadrant 3, Row 03, Strip 1
|0AD3A9| db $4A, $3B, $08, $28, $28, $28, $28, $28 ; Quadrant 3, Row 03, Strip 2
|0AD3B1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 03, Strip 3
|0AD3B9| db $FB, $A7, $C0, $10, $12, $FC, $FC, $5C ; Quadrant 3, Row 04, Strip 0
|0AD3C1| db $55, $64, $67, $56, $57, $67, $65, $54 ; Quadrant 3, Row 04, Strip 1
|0AD3C9| db $48, $4C, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 04, Strip 2
|0AD3D1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 04, Strip 3
|0AD3D9| db $FB, $B6, $C0, $10, $12, $34, $34, $64 ; Quadrant 3, Row 05, Strip 0
|0AD3E1| db $65, $A6, $A6, $54, $55, $31, $44, $46 ; Quadrant 3, Row 05, Strip 1
|0AD3E9| db $58, $3B, $28, $2F, $28, $28, $28, $28 ; Quadrant 3, Row 05, Strip 2
|0AD3F1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 05, Strip 3
|0AD3F9| db $B6, $F6, $C0, $10, $16, $50, $51, $01 ; Quadrant 3, Row 06, Strip 0
|0AD401| db $01, $01, $01, $68, $55, $41, $64, $56 ; Quadrant 3, Row 06, Strip 1
|0AD409| db $48, $4A, $3B, $3C, $3B, $28, $28, $28 ; Quadrant 3, Row 06, Strip 2
|0AD411| db $2F, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 06, Strip 3
|0AD419| db $33, $33, $C3, $20, $21, $60, $61, $AB ; Quadrant 3, Row 07, Strip 0
|0AD421| db $97, $97, $BE, $68, $7A, $7B, $7B, $43 ; Quadrant 3, Row 07, Strip 1
|0AD429| db $5C, $35, $4A, $4B, $4A, $3B, $08, $29 ; Quadrant 3, Row 07, Strip 2
|0AD431| db $3C, $3B, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 07, Strip 3
|0AD439| db $66, $45, $44, $66, $45, $34, $34, $64 ; Quadrant 3, Row 08, Strip 0
|0AD441| db $AE, $AE, $A9, $68, $57, $C6, $67, $56 ; Quadrant 3, Row 08, Strip 1
|0AD449| db $58, $56, $35, $35, $35, $4C, $2F, $3C ; Quadrant 3, Row 08, Strip 2
|0AD451| db $4B, $4C, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 08, Strip 3
|0AD459| db $67, $65, $64, $56, $75, $76, $96, $01 ; Quadrant 3, Row 09, Strip 0
|0AD461| db $17, $11, $11, $B8, $53, $01, $02, $54 ; Quadrant 3, Row 09, Strip 1
|0AD469| db $35, $58, $39, $3A, $39, $28, $28, $5A ; Quadrant 3, Row 09, Strip 2
|0AD471| db $39, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 09, Strip 3
|0AD479| db $B6, $B6, $B6, $54, $55, $10, $06, $07 ; Quadrant 3, Row 0A, Strip 0
|0AD481| db $87, $97, $BE, $8F, $9F, $06, $12, $54 ; Quadrant 3, Row 0A, Strip 1
|0AD489| db $35, $39, $28, $2C, $2D, $28, $28, $2C ; Quadrant 3, Row 0A, Strip 2
|0AD491| db $2D, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 3, Row 0A, Strip 3
|0AD499| db $BF, $B6, $B6, $54, $55, $10, $16, $17 ; Quadrant 3, Row 0B, Strip 0
|0AD4A1| db $B9, $C6, $BA, $8F, $9F, $12, $12, $54 ; Quadrant 3, Row 0B, Strip 1
|0AD4A9| db $35, $3B, $08, $28, $2C, $28, $28, $28 ; Quadrant 3, Row 0B, Strip 2
|0AD4B1| db $2C, $28, $28, $28, $28, $28, $08, $28 ; Quadrant 3, Row 0B, Strip 3
|0AD4B9| db $B6, $B6, $B6, $54, $47, $AA, $11, $11 ; Quadrant 3, Row 0C, Strip 0
|0AD4C1| db $16, $96, $17, $8F, $9F, $12, $22, $54 ; Quadrant 3, Row 0C, Strip 1
|0AD4C9| db $35, $4C, $2D, $28, $28, $28, $28, $28 ; Quadrant 3, Row 0C, Strip 2
|0AD4D1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 0C, Strip 3
|0AD4D9| db $B6, $30, $33, $54, $57, $F2, $11, $11 ; Quadrant 3, Row 0D, Strip 0
|0AD4E1| db $11, $11, $11, $A8, $A9, $95, $02, $54 ; Quadrant 3, Row 0D, Strip 1
|0AD4E9| db $39, $28, $2C, $2D, $28, $28, $08, $29 ; Quadrant 3, Row 0D, Strip 2
|0AD4F1| db $08, $29, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 0D, Strip 3
|0AD4F9| db $B6, $32, $34, $64, $65, $10, $11, $11 ; Quadrant 3, Row 0E, Strip 0
|0AD501| db $06, $21, $07, $11, $11, $06, $22, $54 ; Quadrant 3, Row 0E, Strip 1
|0AD509| db $3B, $28, $28, $2C, $28, $28, $28, $2C ; Quadrant 3, Row 0E, Strip 2
|0AD511| db $28, $2C, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 0E, Strip 3
|0AD519| db $30, $40, $34, $B6, $34, $20, $21, $21 ; Quadrant 3, Row 0F, Strip 0
|0AD521| db $22, $34, $B6, $34, $34, $34, $B6, $54 ; Quadrant 3, Row 0F, Strip 1
|0AD529| db $39, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 0F, Strip 2
|0AD531| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 0F, Strip 3
|0AD539| db $66, $66, $66, $66, $66, $66, $66, $66 ; Quadrant 3, Row 10, Strip 0
|0AD541| db $66, $66, $66, $66, $66, $66, $66, $46 ; Quadrant 3, Row 10, Strip 1
|0AD549| db $3B, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 10, Strip 2
|0AD551| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 10, Strip 3
|0AD559| db $3A, $48, $66, $66, $66, $49, $48, $49 ; Quadrant 3, Row 11, Strip 0
|0AD561| db $39, $3A, $35, $35, $39, $3A, $35, $35 ; Quadrant 3, Row 11, Strip 1
|0AD569| db $39, $2D, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 11, Strip 2
|0AD571| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 11, Strip 3
|0AD579| db $2C, $3A, $39, $3A, $35, $47, $46, $39 ; Quadrant 3, Row 12, Strip 0
|0AD581| db $28, $2C, $3A, $39, $28, $2C, $3A, $39 ; Quadrant 3, Row 12, Strip 1
|0AD589| db $28, $2C, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 12, Strip 2
|0AD591| db $28, $28, $28, $28, $28, $08, $29, $08 ; Quadrant 3, Row 12, Strip 3
|0AD599| db $28, $2C, $2D, $2C, $3A, $35, $39, $28 ; Quadrant 3, Row 13, Strip 0
|0AD5A1| db $28, $28, $2C, $08, $29, $28, $2C, $28 ; Quadrant 3, Row 13, Strip 1
|0AD5A9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 13, Strip 2
|0AD5B1| db $28, $28, $28, $28, $08, $28, $2C, $2D ; Quadrant 3, Row 13, Strip 3
|0AD5B9| db $28, $28, $2C, $28, $2C, $39, $28, $28 ; Quadrant 3, Row 14, Strip 0
|0AD5C1| db $28, $28, $28, $28, $2B, $09, $08, $29 ; Quadrant 3, Row 14, Strip 1
|0AD5C9| db $28, $28, $28, $28, $08, $29, $28, $28 ; Quadrant 3, Row 14, Strip 2
|0AD5D1| db $28, $28, $28, $28, $28, $28, $28, $2C ; Quadrant 3, Row 14, Strip 3
|0AD5D9| db $28, $28, $28, $28, $08, $29, $28, $28 ; Quadrant 3, Row 15, Strip 0
|0AD5E1| db $28, $28, $28, $28, $2C, $2A, $28, $2C ; Quadrant 3, Row 15, Strip 1
|0AD5E9| db $09, $28, $28, $08, $28, $2C, $09, $28 ; Quadrant 3, Row 15, Strip 2
|0AD5F1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 15, Strip 3
|0AD5F9| db $28, $28, $28, $08, $28, $2C, $2D, $28 ; Quadrant 3, Row 16, Strip 0
|0AD601| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 16, Strip 1
|0AD609| db $08, $29, $08, $28, $28, $28, $2B, $09 ; Quadrant 3, Row 16, Strip 2
|0AD611| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 16, Strip 3
|0AD619| db $29, $28, $08, $28, $28, $28, $2C, $28 ; Quadrant 3, Row 17, Strip 0
|0AD621| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 17, Strip 1
|0AD629| db $28, $2C, $2D, $28, $28, $28, $2C, $2E ; Quadrant 3, Row 17, Strip 2
|0AD631| db $09, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 17, Strip 3
|0AD639| db $2C, $2D, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 18, Strip 0
|0AD641| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 18, Strip 1
|0AD649| db $28, $28, $2C, $28, $28, $28, $28, $2B ; Quadrant 3, Row 18, Strip 2
|0AD651| db $2A, $29, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 18, Strip 3
|0AD659| db $28, $2C, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 19, Strip 0
|0AD661| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 19, Strip 1
|0AD669| db $28, $28, $28, $28, $28, $28, $28, $08 ; Quadrant 3, Row 19, Strip 2
|0AD671| db $09, $2C, $09, $28, $28, $28, $28, $28 ; Quadrant 3, Row 19, Strip 3
|0AD679| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1A, Strip 0
|0AD681| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1A, Strip 1
|0AD689| db $28, $28, $28, $28, $28, $28, $08, $28 ; Quadrant 3, Row 1A, Strip 2
|0AD691| db $28, $28, $2B, $09, $28, $28, $28, $28 ; Quadrant 3, Row 1A, Strip 3
|0AD699| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1B, Strip 0
|0AD6A1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1B, Strip 1
|0AD6A9| db $28, $28, $28, $28, $28, $08, $28, $28 ; Quadrant 3, Row 1B, Strip 2
|0AD6B1| db $28, $28, $2C, $2E, $2D, $28, $28, $28 ; Quadrant 3, Row 1B, Strip 3
|0AD6B9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1C, Strip 0
|0AD6C1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1C, Strip 1
|0AD6C9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1C, Strip 2
|0AD6D1| db $28, $28, $28, $2B, $2A, $28, $28, $28 ; Quadrant 3, Row 1C, Strip 3
|0AD6D9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1D, Strip 0
|0AD6E1| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1D, Strip 1
|0AD6E9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1D, Strip 2
|0AD6F1| db $28, $28, $28, $2A, $28, $28, $28, $28 ; Quadrant 3, Row 1D, Strip 3
|0AD6F9| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1E, Strip 0
|0AD701| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1E, Strip 1
|0AD709| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1E, Strip 2
|0AD711| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1E, Strip 3
|0AD719| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1F, Strip 0
|0AD721| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1F, Strip 1
|0AD729| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1F, Strip 2
|0AD731| db $28, $28, $28, $28, $28, $28, $28, $28 ; Quadrant 3, Row 1F, Strip 3

;===================================================================================================

WorldMap_DarkWorldTilemap:
|0AD739| db $26, $27, $14, $14, $14, $A5, $14, $26 ; Row 00, Strip 0
|0AD741| db $24, $25, $56, $35, $5B, $73, $74, $28 ; Row 00, Strip 1
|0AD749| db $72, $99, $63, $73, $73, $74, $2C, $72 ; Row 00, Strip 2
|0AD751| db $73, $73, $73, $A1, $A0, $73, $73, $74 ; Row 00, Strip 3
|0AD759| db $36, $37, $14, $14, $14, $14, $14, $15 ; Row 01, Strip 0
|0AD761| db $34, $A7, $64, $5B, $90, $73, $73, $73 ; Row 01, Strip 1
|0AD769| db $73, $9A, $70, $A0, $73, $91, $09, $90 ; Row 01, Strip 2
|0AD771| db $73, $73, $A1, $84, $90, $73, $FF, $91 ; Row 01, Strip 3
|0AD779| db $14, $14, $14, $14, $14, $14, $14, $15 ; Row 02, Strip 0
|0AD781| db $A7, $34, $E4, $90, $82, $83, $83, $83 ; Row 02, Strip 1
|0AD789| db $83, $83, $84, $82, $83, $83, $83, $83 ; Row 02, Strip 2
|0AD791| db $83, $83, $84, $B3, $82, $83, $83, $84 ; Row 02, Strip 3
|0AD799| db $A5, $14, $14, $14, $A5, $14, $14, $15 ; Row 03, Strip 0
|0AD7A1| db $A7, $B6, $DF, $82, $B2, $93, $93, $93 ; Row 03, Strip 1
|0AD7A9| db $93, $93, $94, $92, $93, $94, $72, $93 ; Row 03, Strip 2
|0AD7B1| db $93, $93, $B3, $91, $B4, $93, $93, $A2 ; Row 03, Strip 3
|0AD7B9| db $14, $A5, $14, $14, $14, $14, $14, $15 ; Row 04, Strip 0
|0AD7C1| db $34, $A7, $82, $B2, $93, $93, $93, $93 ; Row 04, Strip 1
|0AD7C9| db $93, $93, $94, $92, $93, $94, $82, $93 ; Row 04, Strip 2
|0AD7D1| db $82, $83, $83, $84, $CA, $CA, $CA, $8F ; Row 04, Strip 3
|0AD7D9| db $14, $14, $14, $14, $A5, $14, $A5, $36 ; Row 05, Strip 0
|0AD7E1| db $05, $34, $B0, $D6, $93, $82, $83, $83 ; Row 05, Strip 1
|0AD7E9| db $83, $84, $B3, $B2, $93, $B3, $B4, $90 ; Row 05, Strip 2
|0AD7F1| db $B2, $93, $93, $B3, $BE, $11, $95, $54 ; Row 05, Strip 3
|0AD7F9| db $A5, $14, $14, $A5, $14, $A5, $14, $14 ; Row 06, Strip 0
|0AD801| db $15, $33, $33, $33, $90, $B2, $93, $93 ; Row 06, Strip 1
|0AD809| db $93, $B3, $73, $A1, $83, $84, $11, $90 ; Row 06, Strip 2
|0AD811| db $73, $73, $73, $91, $9F, $06, $22, $54 ; Row 06, Strip 3
|0AD819| db $14, $14, $A5, $A5, $14, $14, $14, $A5 ; Row 07, Strip 0
|0AD821| db $15, $A6, $FB, $34, $82, $83, $83, $83 ; Row 07, Strip 1
|0AD829| db $83, $83, $83, $84, $93, $94, $CA, $82 ; Row 07, Strip 2
|0AD831| db $83, $83, $83, $84, $A9, $16, $02, $54 ; Row 07, Strip 3
|0AD839| db $26, $27, $26, $27, $26, $24, $24, $D5 ; Row 08, Strip 0
|0AD841| db $25, $34, $34, $34, $B0, $93, $D6, $93 ; Row 08, Strip 1
|0AD849| db $93, $93, $93, $A4, $93, $A4, $CA, $B4 ; Row 08, Strip 2
|0AD851| db $93, $93, $93, $B7, $11, $11, $12, $54 ; Row 08, Strip 3
|0AD859| db $15, $13, $15, $13, $15, $33, $40, $41 ; Row 09, Strip 0
|0AD861| db $33, $BF, $34, $34, $30, $FB, $C0, $23 ; Row 09, Strip 1
|0AD869| db $24, $24, $24, $25, $00, $17, $06, $21 ; Row 09, Strip 2
|0AD871| db $21, $21, $21, $21, $21, $21, $22, $54 ; Row 09, Strip 3
|0AD879| db $15, $13, $15, $13, $15, $BC, $BD, $A6 ; Row 0A, Strip 0
|0AD881| db $A7, $34, $41, $33, $40, $34, $C0, $34 ; Row 0A, Strip 1
|0AD889| db $B6, $80, $80, $B6, $20, $07, $95, $A6 ; Row 0A, Strip 2
|0AD891| db $A6, $F6, $A7, $44, $45, $34, $41, $54 ; Row 0A, Strip 3
|0AD899| db $15, $13, $15, $13, $36, $05, $D0, $D0 ; Row 0B, Strip 0
|0AD8A1| db $D0, $D0, $D0, $D0, $D0, $D0, $C3, $D0 ; Row 0B, Strip 1
|0AD8A9| db $D0, $D0, $D0, $D0, $D0, $10, $06, $77 ; Row 0B, Strip 2
|0AD8B1| db $7B, $7B, $7B, $43, $7A, $7B, $8D, $8E ; Row 0B, Strip 3
|0AD8B9| db $15, $23, $25, $23, $24, $25, $C0, $A6 ; Row 0C, Strip 0
|0AD8C1| db $FB, $A7, $A6, $00, $EA, $E8, $E8, $E8 ; Row 0C, Strip 1
|0AD8C9| db $E9, $E9, $E9, $EB, $02, $10, $12, $54 ; Row 0C, Strip 2
|0AD8D1| db $57, $9D, $9D, $9D, $9D, $9D, $C8, $C9 ; Row 0C, Strip 3
|0AD8D9| db $25, $31, $B6, $34, $6E, $6E, $C0, $10 ; Row 0D, Strip 0
|0AD8E1| db $12, $A7, $A6, $10, $C4, $D9, $D9, $D7 ; Row 0D, Strip 1
|0AD8E9| db $E7, $DA, $DA, $D4, $12, $10, $12, $54 ; Row 0D, Strip 2
|0AD8F1| db $C7, $E2, $E2, $E2, $E2, $F1, $89, $54 ; Row 0D, Strip 3
|0AD8F9| db $34, $41, $33, $33, $33, $33, $C0, $10 ; Row 0E, Strip 0
|0AD901| db $12, $A6, $F6, $10, $C4, $D9, $D7, $D8 ; Row 0E, Strip 1
|0AD909| db $EC, $E7, $DA, $D4, $12, $10, $12, $54 ; Row 0E, Strip 2
|0AD911| db $C7, $E2, $E2, $E2, $E2, $E1, $F1, $54 ; Row 0E, Strip 3
|0AD919| db $34, $F6, $89, $6B, $6C, $89, $F6, $10 ; Row 0F, Strip 0
|0AD921| db $12, $FB, $FB, $10, $C4, $D7, $EC, $D8 ; Row 0F, Strip 1
|0AD929| db $D8, $D8, $E7, $D4, $F3, $F4, $22, $54 ; Row 0F, Strip 2
|0AD931| db $C7, $E2, $E1, $E1, $E2, $E1, $F1, $54 ; Row 0F, Strip 3
|0AD939| db $34, $B6, $34, $3E, $5E, $88, $88, $10 ; Row 10, Strip 0
|0AD941| db $12, $A6, $A6, $10, $D1, $D8, $D8, $EC ; Row 10, Strip 1
|0AD949| db $EC, $D8, $D8, $E5, $12, $FC, $FC, $5C ; Row 10, Strip 2
|0AD951| db $C7, $E0, $6D, $7D, $E0, $E1, $F1, $54 ; Row 10, Strip 3
|0AD959| db $88, $88, $E3, $BD, $E3, $BD, $F6, $10 ; Row 11, Strip 0
|0AD961| db $12, $E3, $BD, $10, $12, $34, $A7, $89 ; Row 11, Strip 1
|0AD969| db $89, $A7, $34, $20, $22, $FC, $FC, $5C ; Row 11, Strip 2
|0AD971| db $C7, $E2, $E1, $E2, $E2, $F1, $89, $54 ; Row 11, Strip 3
|0AD979| db $34, $A7, $34, $34, $34, $34, $A7, $20 ; Row 12, Strip 0
|0AD981| db $22, $33, $33, $10, $16, $01, $01, $01 ; Row 12, Strip 1
|0AD989| db $01, $01, $01, $01, $02, $FC, $FC, $5C ; Row 12, Strip 2
|0AD991| db $55, $F0, $89, $F0, $F0, $FB, $A7, $54 ; Row 12, Strip 3
|0AD999| db $CF, $04, $04, $CB, $04, $BB, $C0, $03 ; Row 13, Strip 0
|0AD9A1| db $04, $04, $04, $DB, $E6, $21, $21, $21 ; Row 13, Strip 1
|0AD9A9| db $21, $21, $21, $07, $12, $FC, $FC, $5C ; Row 13, Strip 2
|0AD9B1| db $55, $77, $7B, $7B, $7B, $7B, $7C, $54 ; Row 13, Strip 3
|0AD9B9| db $69, $24, $24, $27, $26, $25, $C0, $13 ; Row 14, Strip 0
|0AD9C1| db $26, $24, $24, $27, $15, $A7, $FB, $FB ; Row 14, Strip 1
|0AD9C9| db $FB, $A7, $C0, $10, $12, $FC, $FC, $5C ; Row 14, Strip 2
|0AD9D1| db $55, $64, $67, $56, $57, $67, $65, $54 ; Row 14, Strip 3
|0AD9D9| db $55, $34, $34, $13, $15, $33, $33, $13 ; Row 15, Strip 0
|0AD9E1| db $15, $FB, $A7, $13, $15, $A7, $FB, $FB ; Row 15, Strip 1
|0AD9E9| db $FB, $B6, $C0, $10, $12, $34, $34, $64 ; Row 15, Strip 2
|0AD9F1| db $65, $A6, $A6, $54, $55, $31, $44, $46 ; Row 15, Strip 3
|0AD9F9| db $55, $33, $31, $23, $25, $33, $F6, $13 ; Row 16, Strip 0
|0ADA01| db $15, $A7, $FB, $13, $15, $A7, $A6, $34 ; Row 16, Strip 1
|0ADA09| db $B6, $F6, $C0, $10, $16, $02, $00, $96 ; Row 16, Strip 2
|0ADA11| db $01, $01, $01, $68, $55, $41, $64, $56 ; Row 16, Strip 3
|0ADA19| db $7A, $7B, $7B, $7B, $7B, $7B, $7C, $23 ; Row 17, Strip 0
|0ADA21| db $36, $05, $03, $37, $15, $A7, $41, $33 ; Row 17, Strip 1
|0ADA29| db $33, $33, $C3, $20, $21, $22, $20, $AB ; Row 17, Strip 2
|0ADA31| db $97, $97, $BE, $68, $7A, $7B, $7B, $43 ; Row 17, Strip 3
|0ADA39| db $9D, $9D, $9D, $9D, $9D, $56, $55, $A6 ; Row 18, Strip 0
|0ADA41| db $23, $25, $23, $24, $25, $34, $44, $66 ; Row 18, Strip 1
|0ADA49| db $66, $45, $44, $66, $45, $34, $34, $64 ; Row 18, Strip 2
|0ADA51| db $AE, $AE, $A9, $68, $57, $C6, $67, $56 ; Row 18, Strip 3
|0ADA59| db $9F, $DD, $DD, $DD, $11, $8F, $47, $66 ; Row 19, Strip 0
|0ADA61| db $45, $D0, $D0, $D0, $C3, $34, $AF, $67 ; Row 19, Strip 1
|0ADA69| db $67, $65, $64, $56, $75, $76, $01, $01 ; Row 19, Strip 2
|0ADA71| db $17, $11, $11, $B8, $53, $96, $02, $54 ; Row 19, Strip 3
|0ADA79| db $9F, $11, $11, $11, $11, $A8, $56, $35 ; Row 1A, Strip 0
|0ADA81| db $55, $77, $7C, $A7, $34, $B1, $AD, $B6 ; Row 1A, Strip 1
|0ADA89| db $B6, $B6, $B6, $54, $55, $10, $11, $11 ; Row 1A, Strip 2
|0ADA91| db $11, $11, $11, $8F, $9F, $06, $12, $54 ; Row 1A, Strip 3
|0ADA99| db $9F, $ED, $ED, $11, $ED, $11, $A8, $56 ; Row 1B, Strip 0
|0ADAA1| db $7A, $43, $7A, $7B, $7B, $D3, $AC, $BF ; Row 1B, Strip 1
|0ADAA9| db $BF, $B6, $B6, $54, $55, $10, $11, $11 ; Row 1B, Strip 2
|0ADAB1| db $F7, $F8, $11, $8F, $9F, $12, $22, $54 ; Row 1B, Strip 3
|0ADAB9| db $9F, $ED, $11, $11, $11, $ED, $11, $54 ; Row 1C, Strip 0
|0ADAC1| db $57, $56, $57, $56, $57, $65, $B6, $B6 ; Row 1C, Strip 1
|0ADAC9| db $B6, $B6, $B6, $54, $47, $AA, $11, $11 ; Row 1C, Strip 2
|0ADAD1| db $F9, $FA, $11, $8F, $9F, $12, $34, $54 ; Row 1C, Strip 3
|0ADAD9| db $A9, $11, $11, $ED, $11, $11, $11, $54 ; Row 1D, Strip 0
|0ADAE1| db $55, $64, $65, $54, $55, $B6, $B6, $B6 ; Row 1D, Strip 1
|0ADAE9| db $B6, $30, $33, $54, $57, $F2, $11, $11 ; Row 1D, Strip 2
|0ADAF1| db $11, $11, $11, $A8, $A9, $95, $02, $54 ; Row 1D, Strip 3
|0ADAF9| db $11, $11, $ED, $11, $11, $ED, $11, $54 ; Row 1E, Strip 0
|0ADB01| db $7A, $7F, $6F, $C1, $65, $B6, $79, $F5 ; Row 1E, Strip 1
|0ADB09| db $B6, $32, $34, $64, $65, $20, $07, $11 ; Row 1E, Strip 2
|0ADB11| db $11, $11, $11, $11, $06, $21, $22, $54 ; Row 1E, Strip 3
|0ADB19| db $21, $07, $11, $ED, $11, $ED, $06, $54 ; Row 1F, Strip 0
|0ADB21| db $35, $47, $46, $55, $B6, $B6, $B6, $B6 ; Row 1F, Strip 1
|0ADB29| db $30, $40, $34, $B6, $34, $34, $10, $11 ; Row 1F, Strip 2
|0ADB31| db $11, $11, $06, $21, $22, $34, $B6, $54 ; Row 1F, Strip 3

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
|0ADB39| dw  $0000,  $094B,  $1563,  $1203,  $2995,  $5BDF,  $2191,  $2E37
|0ADB49| dw  $7C1F,  $6F37,  $7359,  $777A,  $7B9B,  $7FBD,  $0000,  $0000
|0ADB59| dw  $0000,  $0100,  $0000,  $0000,  $7B9B,  $11B6,  $1A9B,  $5FFF
|0ADB69| dw  $2995,  $6E94,  $76D6,  $7F39,  $7F7B,  $7FBD,  $0000,  $0000
|0ADB79| dw  $0000,  $0100,  $1D74,  $67F9,  $1EE9,  $338E,  $6144,  $7E6A
|0ADB89| dw  $0A44,  $7C1F,  $6144,  $22EB,  $3DCA,  $5ED2,  $7FDA,  $316A
|0ADB99| dw  $0000,  $0100,  $14CC,  $1910,  $2995,  $3E3A,  $1963,  $15E3
|0ADBA9| dw  $25F5,  $2E37,  $15E3,  $22EB,  $6144,  $7E33,  $5D99,  $771D
|0ADBB9| dw  $0000,  $0CEC,  $22EB,  $2FB1,  $1D70,  $2E37,  $25F5,  $3E77
|0ADBC9| dw  $473A,  $6144,  $7E6A,  $15E3,  $2E0B,  $5354,  $7FFF,  $16A6
|0ADBD9| dw  $0000,  $0100,  $15C5,  $16A6,  $1EE9,  $2F4D,  $25F5,  $3E77
|0ADBE9| dw  $473A,  $5354,  $15E3,  $22EB,  $2918,  $4A1F,  $3F7F,  $7C1F
|0ADBF9| dw  $0000,  $0100,  $1563,  $1203,  $1EE9,  $2FB0,  $1D70,  $2E37
|0ADC09| dw  $473A,  $6144,  $15E3,  $22EB,  $1D70,  $2E37,  $4F3F,  $7FBD
|0ADC19| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $25F5
|0ADC29| dw  $316A,  $5ED2,  $7FFF,  $15E3,  $473A,  $2918,  $771D,  $0000

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
|0ADC39| dw  $0000,  $18C6,  $0948,  $118A,  $25CF,  $57BF,  $1971,  $2A18
|0ADC49| dw  $7C1F,  $52D8,  $5AF9,  $5F1A,  $633B,  $6B5C,  $0000,  $0000
|0ADC59| dw  $0000,  $18C6,  $0005,  $45FC,  $633B,  $1DCE,  $3694,  $4718
|0ADC69| dw  $25CF,  $1D40,  $34EA,  $616F,  $771B,  $26D6,  $2B18,  $2F5A
|0ADC79| dw  $0000,  $18C6,  $2571,  $63DA,  $2A32,  $3A94,  $1D40,  $2580
|0ADC89| dw  $7C1F,  $7C1F,  $0CC0,  $1ECC,  $3135,  $1DCE,  $4718,  $3694
|0ADC99| dw  $0000,  $18C6,  $14E7,  $216C,  $25D0,  $3A75,  $2169,  $2E0E
|0ADCA9| dw  $21D6,  $2A18,  $1971,  $2A32,  $1D40,  $2580,  $597A,  $72FE
|0ADCB9| dw  $0000,  $18C6,  $2A32,  $3A94,  $2171,  $3238,  $29F6,  $4278
|0ADCC9| dw  $4EDB,  $1D40,  $35CD,  $15AB,  $198E,  $3254,  $731F,  $1ED4
|0ADCD9| dw  $0000,  $18C6,  $016A,  $21CE,  $2A32,  $3A94,  $29F6,  $4278
|0ADCE9| dw  $4EDB,  $1D40,  $1971,  $2A32,  $496C,  $5A10,  $3B5F,  $7C1F
|0ADCF9| dw  $0000,  $18C6,  $0948,  $118A,  $222E,  $32F2,  $1951,  $2A18
|0ADD09| dw  $431B,  $1D40,  $1971,  $2A32,  $21D4,  $2A18,  $4B1F,  $7B9D
|0ADD19| dw  $0000,  $7C1F,  $7C1F,  $7C1F,  $7C1F,  $2E31,  $00E4,  $2169
|0ADD29| dw  $2E0E,  $42F1,  $7C1F,  $7C1F,  $7C1F,  $4A1D,  $4E3F,  $5A5F

;===================================================================================================

WorldMapHDMA_ZoomedOut_Part1:
|0ADD39| dw $0177 ; scanline   0
|0ADD3B| dw $0176 ; scanline   1
|0ADD3D| dw $0175 ; scanline   2
|0ADD3F| dw $0175 ; scanline   3
|0ADD41| dw $0174 ; scanline   4
|0ADD43| dw $0173 ; scanline   5
|0ADD45| dw $0173 ; scanline   6
|0ADD47| dw $0172 ; scanline   7
|0ADD49| dw $0171 ; scanline   8
|0ADD4B| dw $0171 ; scanline   9
|0ADD4D| dw $0170 ; scanline  10
|0ADD4F| dw $016F ; scanline  11
|0ADD51| dw $016F ; scanline  12
|0ADD53| dw $016E ; scanline  13
|0ADD55| dw $016D ; scanline  14
|0ADD57| dw $016D ; scanline  15
|0ADD59| dw $016C ; scanline  16
|0ADD5B| dw $016B ; scanline  17
|0ADD5D| dw $016B ; scanline  18
|0ADD5F| dw $0169 ; scanline  19
|0ADD61| dw $0169 ; scanline  20
|0ADD63| dw $0168 ; scanline  21
|0ADD65| dw $0167 ; scanline  22
|0ADD67| dw $0167 ; scanline  23
|0ADD69| dw $0166 ; scanline  24
|0ADD6B| dw $0165 ; scanline  25
|0ADD6D| dw $0165 ; scanline  26
|0ADD6F| dw $0164 ; scanline  27
|0ADD71| dw $0163 ; scanline  28
|0ADD73| dw $0163 ; scanline  29
|0ADD75| dw $0162 ; scanline  30
|0ADD77| dw $0162 ; scanline  31
|0ADD79| dw $0161 ; scanline  32
|0ADD7B| dw $0160 ; scanline  33
|0ADD7D| dw $0160 ; scanline  34
|0ADD7F| dw $015F ; scanline  35
|0ADD81| dw $015F ; scanline  36
|0ADD83| dw $015E ; scanline  37
|0ADD85| dw $015D ; scanline  38
|0ADD87| dw $015D ; scanline  39
|0ADD89| dw $015C ; scanline  40
|0ADD8B| dw $015C ; scanline  41
|0ADD8D| dw $015B ; scanline  42
|0ADD8F| dw $015A ; scanline  43
|0ADD91| dw $015A ; scanline  44
|0ADD93| dw $0159 ; scanline  45
|0ADD95| dw $0159 ; scanline  46
|0ADD97| dw $0158 ; scanline  47
|0ADD99| dw $0157 ; scanline  48
|0ADD9B| dw $0157 ; scanline  49
|0ADD9D| dw $0156 ; scanline  50
|0ADD9F| dw $0156 ; scanline  51
|0ADDA1| dw $0155 ; scanline  52
|0ADDA3| dw $0155 ; scanline  53
|0ADDA5| dw $0154 ; scanline  54
|0ADDA7| dw $0153 ; scanline  55
|0ADDA9| dw $0153 ; scanline  56
|0ADDAB| dw $0152 ; scanline  57
|0ADDAD| dw $0152 ; scanline  58
|0ADDAF| dw $0151 ; scanline  59
|0ADDB1| dw $0151 ; scanline  60
|0ADDB3| dw $0150 ; scanline  61
|0ADDB5| dw $014F ; scanline  62
|0ADDB7| dw $014F ; scanline  63
|0ADDB9| dw $014E ; scanline  64
|0ADDBB| dw $014E ; scanline  65
|0ADDBD| dw $014D ; scanline  66
|0ADDBF| dw $014D ; scanline  67
|0ADDC1| dw $014C ; scanline  68
|0ADDC3| dw $014C ; scanline  69
|0ADDC5| dw $014B ; scanline  70
|0ADDC7| dw $014B ; scanline  71
|0ADDC9| dw $014A ; scanline  72
|0ADDCB| dw $014A ; scanline  73
|0ADDCD| dw $0148 ; scanline  74
|0ADDCF| dw $0147 ; scanline  75
|0ADDD1| dw $0147 ; scanline  76
|0ADDD3| dw $0146 ; scanline  77
|0ADDD5| dw $0146 ; scanline  78
|0ADDD7| dw $0145 ; scanline  79
|0ADDD9| dw $0145 ; scanline  80
|0ADDDB| dw $0144 ; scanline  81
|0ADDDD| dw $0144 ; scanline  82
|0ADDDF| dw $0143 ; scanline  83
|0ADDE1| dw $0143 ; scanline  84
|0ADDE3| dw $0142 ; scanline  85
|0ADDE5| dw $0142 ; scanline  86
|0ADDE7| dw $0141 ; scanline  87
|0ADDE9| dw $0141 ; scanline  88
|0ADDEB| dw $0140 ; scanline  89
|0ADDED| dw $0140 ; scanline  90
|0ADDEF| dw $013F ; scanline  91
|0ADDF1| dw $013F ; scanline  92
|0ADDF3| dw $013E ; scanline  93
|0ADDF5| dw $013E ; scanline  94
|0ADDF7| dw $013D ; scanline  95
|0ADDF9| dw $013D ; scanline  96
|0ADDFB| dw $013C ; scanline  97
|0ADDFD| dw $013C ; scanline  98
|0ADDFF| dw $013B ; scanline  99
|0ADE01| dw $013B ; scanline 100
|0ADE03| dw $013A ; scanline 101
|0ADE05| dw $013A ; scanline 102
|0ADE07| dw $0139 ; scanline 103
|0ADE09| dw $0139 ; scanline 104
|0ADE0B| dw $0138 ; scanline 105
|0ADE0D| dw $0138 ; scanline 106
|0ADE0F| dw $0137 ; scanline 107
|0ADE11| dw $0137 ; scanline 108
|0ADE13| dw $0136 ; scanline 109
|0ADE15| dw $0136 ; scanline 110
|0ADE17| dw $0135 ; scanline 111

;---------------------------------------------------------------------------------------------------

WorldMapHDMA_ZoomedOut_Part2:
|0ADE19| dw $0135 ; scanline 112
|0ADE1B| dw $0135 ; scanline 113
|0ADE1D| dw $0134 ; scanline 114
|0ADE1F| dw $0134 ; scanline 115
|0ADE21| dw $0133 ; scanline 116
|0ADE23| dw $0133 ; scanline 117
|0ADE25| dw $0132 ; scanline 118
|0ADE27| dw $0132 ; scanline 119
|0ADE29| dw $0131 ; scanline 120
|0ADE2B| dw $0131 ; scanline 121
|0ADE2D| dw $0130 ; scanline 122
|0ADE2F| dw $0130 ; scanline 123
|0ADE31| dw $012F ; scanline 124
|0ADE33| dw $012F ; scanline 125
|0ADE35| dw $012F ; scanline 126
|0ADE37| dw $012E ; scanline 127
|0ADE39| dw $012E ; scanline 128
|0ADE3B| dw $012D ; scanline 129
|0ADE3D| dw $012D ; scanline 130
|0ADE3F| dw $012C ; scanline 131
|0ADE41| dw $012C ; scanline 132
|0ADE43| dw $012B ; scanline 133
|0ADE45| dw $012B ; scanline 134
|0ADE47| dw $012B ; scanline 135
|0ADE49| dw $012A ; scanline 136
|0ADE4B| dw $012A ; scanline 137
|0ADE4D| dw $0129 ; scanline 138
|0ADE4F| dw $0129 ; scanline 139
|0ADE51| dw $0127 ; scanline 140
|0ADE53| dw $0127 ; scanline 141
|0ADE55| dw $0126 ; scanline 142
|0ADE57| dw $0126 ; scanline 143
|0ADE59| dw $0126 ; scanline 144
|0ADE5B| dw $0125 ; scanline 145
|0ADE5D| dw $0125 ; scanline 146
|0ADE5F| dw $0124 ; scanline 147
|0ADE61| dw $0124 ; scanline 148
|0ADE63| dw $0124 ; scanline 149
|0ADE65| dw $0123 ; scanline 150
|0ADE67| dw $0123 ; scanline 151
|0ADE69| dw $0122 ; scanline 152
|0ADE6B| dw $0122 ; scanline 153
|0ADE6D| dw $0121 ; scanline 154
|0ADE6F| dw $0121 ; scanline 155
|0ADE71| dw $0121 ; scanline 156
|0ADE73| dw $0120 ; scanline 157
|0ADE75| dw $0120 ; scanline 158
|0ADE77| dw $011F ; scanline 159
|0ADE79| dw $011F ; scanline 160
|0ADE7B| dw $011F ; scanline 161
|0ADE7D| dw $011E ; scanline 162
|0ADE7F| dw $011E ; scanline 163
|0ADE81| dw $011D ; scanline 164
|0ADE83| dw $011D ; scanline 165
|0ADE85| dw $011D ; scanline 166
|0ADE87| dw $011C ; scanline 167
|0ADE89| dw $011C ; scanline 168
|0ADE8B| dw $011B ; scanline 169
|0ADE8D| dw $011B ; scanline 170
|0ADE8F| dw $011B ; scanline 171
|0ADE91| dw $011A ; scanline 172
|0ADE93| dw $011A ; scanline 173
|0ADE95| dw $0119 ; scanline 174
|0ADE97| dw $0119 ; scanline 175
|0ADE99| dw $0119 ; scanline 176
|0ADE9B| dw $0118 ; scanline 177
|0ADE9D| dw $0118 ; scanline 178
|0ADE9F| dw $0117 ; scanline 179
|0ADEA1| dw $0117 ; scanline 180
|0ADEA3| dw $0117 ; scanline 181
|0ADEA5| dw $0116 ; scanline 182
|0ADEA7| dw $0116 ; scanline 183
|0ADEA9| dw $0116 ; scanline 184
|0ADEAB| dw $0115 ; scanline 185
|0ADEAD| dw $0115 ; scanline 186
|0ADEAF| dw $0114 ; scanline 187
|0ADEB1| dw $0114 ; scanline 188
|0ADEB3| dw $0114 ; scanline 189
|0ADEB5| dw $0113 ; scanline 190
|0ADEB7| dw $0113 ; scanline 191
|0ADEB9| dw $0113 ; scanline 192
|0ADEBB| dw $0112 ; scanline 193
|0ADEBD| dw $0112 ; scanline 194
|0ADEBF| dw $0111 ; scanline 195
|0ADEC1| dw $0111 ; scanline 196
|0ADEC3| dw $0111 ; scanline 197
|0ADEC5| dw $0110 ; scanline 198
|0ADEC7| dw $0110 ; scanline 199
|0ADEC9| dw $0110 ; scanline 200
|0ADECB| dw $010F ; scanline 201
|0ADECD| dw $010F ; scanline 202
|0ADECF| dw $010F ; scanline 203
|0ADED1| dw $010E ; scanline 204
|0ADED3| dw $010E ; scanline 205
|0ADED5| dw $010D ; scanline 206
|0ADED7| dw $010D ; scanline 207
|0ADED9| dw $010D ; scanline 208
|0ADEDB| dw $010C ; scanline 209
|0ADEDD| dw $010C ; scanline 210
|0ADEDF| dw $010C ; scanline 211
|0ADEE1| dw $010B ; scanline 212
|0ADEE3| dw $010B ; scanline 213
|0ADEE5| dw $010B ; scanline 214
|0ADEE7| dw $010A ; scanline 215
|0ADEE9| dw $010A ; scanline 216
|0ADEEB| dw $010A ; scanline 217
|0ADEED| dw $0109 ; scanline 218
|0ADEEF| dw $0109 ; scanline 219
|0ADEF1| dw $0109 ; scanline 220
|0ADEF3| dw $0108 ; scanline 221
|0ADEF5| dw $0108 ; scanline 222
|0ADEF7| dw $0108 ; scanline 223

;===================================================================================================

WorldMapHDMA_ZoomedIn_Part1:
|0ADEF9| dw $0088 ; scanline   0
|0ADEFB| dw $0088 ; scanline   1
|0ADEFD| dw $0087 ; scanline   2
|0ADEFF| dw $0087 ; scanline   3
|0ADF01| dw $0087 ; scanline   4
|0ADF03| dw $0087 ; scanline   5
|0ADF05| dw $0087 ; scanline   6
|0ADF07| dw $0086 ; scanline   7
|0ADF09| dw $0086 ; scanline   8
|0ADF0B| dw $0086 ; scanline   9
|0ADF0D| dw $0085 ; scanline  10
|0ADF0F| dw $0085 ; scanline  11
|0ADF11| dw $0085 ; scanline  12
|0ADF13| dw $0085 ; scanline  13
|0ADF15| dw $0084 ; scanline  14
|0ADF17| dw $0084 ; scanline  15
|0ADF19| dw $0084 ; scanline  16
|0ADF1B| dw $0084 ; scanline  17
|0ADF1D| dw $0084 ; scanline  18
|0ADF1F| dw $0083 ; scanline  19
|0ADF21| dw $0083 ; scanline  20
|0ADF23| dw $0083 ; scanline  21
|0ADF25| dw $0082 ; scanline  22
|0ADF27| dw $0082 ; scanline  23
|0ADF29| dw $0082 ; scanline  24
|0ADF2B| dw $0082 ; scanline  25
|0ADF2D| dw $0082 ; scanline  26
|0ADF2F| dw $0081 ; scanline  27
|0ADF31| dw $0081 ; scanline  28
|0ADF33| dw $0081 ; scanline  29
|0ADF35| dw $0081 ; scanline  30
|0ADF37| dw $0081 ; scanline  31
|0ADF39| dw $0080 ; scanline  32
|0ADF3B| dw $0080 ; scanline  33
|0ADF3D| dw $0080 ; scanline  34
|0ADF3F| dw $007F ; scanline  35
|0ADF41| dw $007F ; scanline  36
|0ADF43| dw $007F ; scanline  37
|0ADF45| dw $007F ; scanline  38
|0ADF47| dw $007F ; scanline  39
|0ADF49| dw $007E ; scanline  40
|0ADF4B| dw $007E ; scanline  41
|0ADF4D| dw $007E ; scanline  42
|0ADF4F| dw $007E ; scanline  43
|0ADF51| dw $007E ; scanline  44
|0ADF53| dw $007D ; scanline  45
|0ADF55| dw $007D ; scanline  46
|0ADF57| dw $007D ; scanline  47
|0ADF59| dw $007C ; scanline  48
|0ADF5B| dw $007C ; scanline  49
|0ADF5D| dw $007C ; scanline  50
|0ADF5F| dw $007C ; scanline  51
|0ADF61| dw $007C ; scanline  52
|0ADF63| dw $007C ; scanline  53
|0ADF65| dw $007B ; scanline  54
|0ADF67| dw $007B ; scanline  55
|0ADF69| dw $007B ; scanline  56
|0ADF6B| dw $007B ; scanline  57
|0ADF6D| dw $007B ; scanline  58
|0ADF6F| dw $007A ; scanline  59
|0ADF71| dw $007A ; scanline  60
|0ADF73| dw $007A ; scanline  61
|0ADF75| dw $0079 ; scanline  62
|0ADF77| dw $0079 ; scanline  63
|0ADF79| dw $0079 ; scanline  64
|0ADF7B| dw $0079 ; scanline  65
|0ADF7D| dw $0079 ; scanline  66
|0ADF7F| dw $0079 ; scanline  67
|0ADF81| dw $0078 ; scanline  68
|0ADF83| dw $0078 ; scanline  69
|0ADF85| dw $0078 ; scanline  70
|0ADF87| dw $0078 ; scanline  71
|0ADF89| dw $0078 ; scanline  72
|0ADF8B| dw $0078 ; scanline  73
|0ADF8D| dw $0077 ; scanline  74
|0ADF8F| dw $0077 ; scanline  75
|0ADF91| dw $0077 ; scanline  76
|0ADF93| dw $0076 ; scanline  77
|0ADF95| dw $0076 ; scanline  78
|0ADF97| dw $0076 ; scanline  79
|0ADF99| dw $0076 ; scanline  80
|0ADF9B| dw $0076 ; scanline  81
|0ADF9D| dw $0076 ; scanline  82
|0ADF9F| dw $0075 ; scanline  83
|0ADFA1| dw $0075 ; scanline  84
|0ADFA3| dw $0075 ; scanline  85
|0ADFA5| dw $0075 ; scanline  86
|0ADFA7| dw $0075 ; scanline  87
|0ADFA9| dw $0075 ; scanline  88
|0ADFAB| dw $0074 ; scanline  89
|0ADFAD| dw $0074 ; scanline  90
|0ADFAF| dw $0074 ; scanline  91
|0ADFB1| dw $0074 ; scanline  92
|0ADFB3| dw $0073 ; scanline  93
|0ADFB5| dw $0073 ; scanline  94
|0ADFB7| dw $0073 ; scanline  95
|0ADFB9| dw $0073 ; scanline  96
|0ADFBB| dw $0073 ; scanline  97
|0ADFBD| dw $0073 ; scanline  98
|0ADFBF| dw $0072 ; scanline  99
|0ADFC1| dw $0072 ; scanline 100
|0ADFC3| dw $0072 ; scanline 101
|0ADFC5| dw $0072 ; scanline 102
|0ADFC7| dw $0072 ; scanline 103
|0ADFC9| dw $0072 ; scanline 104
|0ADFCB| dw $0071 ; scanline 105
|0ADFCD| dw $0071 ; scanline 106
|0ADFCF| dw $0071 ; scanline 107
|0ADFD1| dw $0071 ; scanline 108
|0ADFD3| dw $0070 ; scanline 109
|0ADFD5| dw $0070 ; scanline 110
|0ADFD7| dw $0070 ; scanline 111

;---------------------------------------------------------------------------------------------------

WorldMapHDMA_ZoomedIn_Part2:
|0ADFD9| dw $0070 ; scanline 112
|0ADFDB| dw $0070 ; scanline 113
|0ADFDD| dw $0070 ; scanline 114
|0ADFDF| dw $0070 ; scanline 115
|0ADFE1| dw $006F ; scanline 116
|0ADFE3| dw $006F ; scanline 117
|0ADFE5| dw $006F ; scanline 118
|0ADFE7| dw $006F ; scanline 119
|0ADFE9| dw $006F ; scanline 120
|0ADFEB| dw $006F ; scanline 121
|0ADFED| dw $006E ; scanline 122
|0ADFEF| dw $006E ; scanline 123
|0ADFF1| dw $006E ; scanline 124
|0ADFF3| dw $006E ; scanline 125
|0ADFF5| dw $006E ; scanline 126
|0ADFF7| dw $006D ; scanline 127
|0ADFF9| dw $006D ; scanline 128
|0ADFFB| dw $006D ; scanline 129
|0ADFFD| dw $006D ; scanline 130
|0ADFFF| dw $006D ; scanline 131
|0AE001| dw $006D ; scanline 132
|0AE003| dw $006C ; scanline 133
|0AE005| dw $006C ; scanline 134
|0AE007| dw $006C ; scanline 135
|0AE009| dw $006C ; scanline 136
|0AE00B| dw $006C ; scanline 137
|0AE00D| dw $006C ; scanline 138
|0AE00F| dw $006C ; scanline 139
|0AE011| dw $006B ; scanline 140
|0AE013| dw $006B ; scanline 141
|0AE015| dw $006B ; scanline 142
|0AE017| dw $006B ; scanline 143
|0AE019| dw $006B ; scanline 144
|0AE01B| dw $006A ; scanline 145
|0AE01D| dw $006A ; scanline 146
|0AE01F| dw $006A ; scanline 147
|0AE021| dw $006A ; scanline 148
|0AE023| dw $006A ; scanline 149
|0AE025| dw $006A ; scanline 150
|0AE027| dw $006A ; scanline 151
|0AE029| dw $0069 ; scanline 152
|0AE02B| dw $0069 ; scanline 153
|0AE02D| dw $0069 ; scanline 154
|0AE02F| dw $0069 ; scanline 155
|0AE031| dw $0069 ; scanline 156
|0AE033| dw $0069 ; scanline 157
|0AE035| dw $0069 ; scanline 158
|0AE037| dw $0068 ; scanline 159
|0AE039| dw $0068 ; scanline 160
|0AE03B| dw $0068 ; scanline 161
|0AE03D| dw $0068 ; scanline 162
|0AE03F| dw $0068 ; scanline 163
|0AE041| dw $0067 ; scanline 164
|0AE043| dw $0067 ; scanline 165
|0AE045| dw $0067 ; scanline 166
|0AE047| dw $0067 ; scanline 167
|0AE049| dw $0067 ; scanline 168
|0AE04B| dw $0067 ; scanline 169
|0AE04D| dw $0067 ; scanline 170
|0AE04F| dw $0067 ; scanline 171
|0AE051| dw $0066 ; scanline 172
|0AE053| dw $0066 ; scanline 173
|0AE055| dw $0066 ; scanline 174
|0AE057| dw $0066 ; scanline 175
|0AE059| dw $0066 ; scanline 176
|0AE05B| dw $0066 ; scanline 177
|0AE05D| dw $0066 ; scanline 178
|0AE05F| dw $0065 ; scanline 179
|0AE061| dw $0065 ; scanline 180
|0AE063| dw $0065 ; scanline 181
|0AE065| dw $0065 ; scanline 182
|0AE067| dw $0065 ; scanline 183
|0AE069| dw $0065 ; scanline 184
|0AE06B| dw $0064 ; scanline 185
|0AE06D| dw $0064 ; scanline 186
|0AE06F| dw $0064 ; scanline 187
|0AE071| dw $0064 ; scanline 188
|0AE073| dw $0064 ; scanline 189
|0AE075| dw $0064 ; scanline 190
|0AE077| dw $0064 ; scanline 191
|0AE079| dw $0064 ; scanline 192
|0AE07B| dw $0063 ; scanline 193
|0AE07D| dw $0063 ; scanline 194
|0AE07F| dw $0063 ; scanline 195
|0AE081| dw $0063 ; scanline 196
|0AE083| dw $0063 ; scanline 197
|0AE085| dw $0063 ; scanline 198
|0AE087| dw $0063 ; scanline 199
|0AE089| dw $0063 ; scanline 200
|0AE08B| dw $0062 ; scanline 201
|0AE08D| dw $0062 ; scanline 202
|0AE08F| dw $0062 ; scanline 203
|0AE091| dw $0062 ; scanline 204
|0AE093| dw $0062 ; scanline 205
|0AE095| dw $0061 ; scanline 206
|0AE097| dw $0061 ; scanline 207
|0AE099| dw $0061 ; scanline 208
|0AE09B| dw $0061 ; scanline 209
|0AE09D| dw $0061 ; scanline 210
|0AE09F| dw $0061 ; scanline 211
|0AE0A1| dw $0061 ; scanline 212
|0AE0A3| dw $0061 ; scanline 213
|0AE0A5| dw $0061 ; scanline 214
|0AE0A7| dw $0060 ; scanline 215
|0AE0A9| dw $0060 ; scanline 216
|0AE0AB| dw $0060 ; scanline 217
|0AE0AD| dw $0060 ; scanline 218
|0AE0AF| dw $0060 ; scanline 219
|0AE0B1| dw $0060 ; scanline 220
|0AE0B3| dw $0060 ; scanline 221
|0AE0B5| dw $0060 ; scanline 222
|0AE0B7| dw $0060 ; scanline 223

;===================================================================================================
; FREE ROM: 0x06
;===================================================================================================
NULL_0AE0B9:
|0AE0B9| db $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

Module0E_03_UnderworldMap:
|0AE0C0| LDA.w $0200
|0AE0C3| JSL JumpTableLong
|0AE0C7| dl Module0E_03_00_DarkenAndPrep     ; 0x00
|0AE0CA| dl Module0E_03_01_DrawMap           ; 0x01
|0AE0CD| dl Module0E_03_02_BrightenMap       ; 0x02
|0AE0D0| dl DungeonMap_HandleInputAndSprites ; 0x03
|0AE0D3| dl Module0E_03_04_UnusedCrazyScroll ; 0x04
|0AE0D6| dl UnderworldMap_RecoverRegisters   ; 0x05
|0AE0D9| dl UnderworldMap_RecoverGFX         ; 0x06
|0AE0DC| dl ToggleStarTilesAndAdvance        ; 0x07
|0AE0DF| dl UnderworldMap_RecoverLightCone   ; 0x08

;===================================================================================================

pool Module0E_03_01_DrawMap

.vectors
|0AE0E2| dw Module0E_03_01_00_PrepMapGraphics
|0AE0E4| dw Module0E_03_01_01_DrawLEVEL
|0AE0E6| dw Module0E_03_01_02_DrawFloorsBackdrop
|0AE0E8| dw Module0E_03_01_03_DrawRooms
|0AE0EA| dw DungeonMap_DrawRoomMarkers

endpool

;---------------------------------------------------------------------------------------------------

Module0E_03_01_DrawMap:
|0AE0EC| LDA.w $020D
|0AE0EF| ASL A
|0AE0F0| TAX

|0AE0F1| JMP.w (.vectors,X)

;===================================================================================================

Module0E_03_01_00_PrepMapGraphics:
|0AE0F4| LDA.b $9B
|0AE0F6| PHA

|0AE0F7| STZ.w HDMAEN
|0AE0FA| STZ.b $9B

|0AE0FC| LDA.w $0AA1 ; cache tilesets
|0AE0FF| STA.l $7EC20E

|0AE103| LDA.w $0AA3
|0AE106| STA.l $7EC20F

|0AE10A| LDA.w $0AA2
|0AE10D| STA.l $7EC210

|0AE111| LDA.b $1C ; cache TM and TS
|0AE113| STA.l $7EC211

|0AE117| LDA.b $1D
|0AE119| STA.l $7EC212

|0AE11D| LDA.b #$20 ; why are we loading these tilesets?
|0AE11F| STA.w $0AA1

|0AE122| LDA.w $040C ; this here loads map GFX, why dungeon based?
|0AE125| LSR A
|0AE126| ORA.b #$80
|0AE128| STA.w $0AA3

|0AE12B| LDA.b #$40 ; just loads more overworld stuff
|0AE12D| STA.w $0AA2

|0AE130| LDA.b #$16 ; BG2, BG3, OBJ on main screen
|0AE132| STA.b $1C

|0AE134| LDA.b #$01 ; BG1 on subscreen
|0AE136| STA.b $1D

|0AE138| JSL EraseTilemaps_dungeonmap
|0AE13C| JSL InitializeTilesets

|0AE140| LDA.b #$02
|0AE142| STA.w $0AA9
|0AE145| JSL PaletteLoad_DungeonMapBG
|0AE149| JSL PaletteLoad_DungeonMapSprite

|0AE14D| LDA.b #$01
|0AE14F| STA.w $0AB2
|0AE152| JSL PaletteLoad_HUD
|0AE156| JSL RefreshEquipmentPalettes_sword_and_mail

|0AE15A| INC.b $15

|0AE15C| INC.w $020D ; next subsubsubsubsubsubsubsubsubmodule

|0AE15F| PLA ; recover HDMA
|0AE160| STA.b $9B

|0AE162| LDA.b #$09 ; trigger the BG3 tilemap changes
|0AE164| STA.b $14
|0AE166| STA.w $0710

|0AE169| RTL

;===================================================================================================
; These stripes do 12 bytes and leave the last 2 bytes to the routine
;===================================================================================================
pool Module0E_03_01_01_DrawLEVEL

.LEVEL_top
|0AE16A| dw $8460, $0B00 ; VRAM $C108 | 12 bytes | Horizontal
|0AE16E| dw $2132, $2133, $2138, $213A, $207F

.LEVEL_bottom
|0AE178| dw $A460, $0B00 ; VRAM $C148 | 12 bytes | Horizontal
|0AE17C| dw $2142, $2143, $2149, $214A, $207F

.numerals_top
|0AE186| dw $2108, $2109, $2109, $210A
|0AE18E| dw $210B, $210C, $210D, $211D

.numerals_bottom
|0AE196| dw $2118, $2119, $A109, $211A
|0AE19E| dw $211B, $211C, $2118, $A11D

.dungeon_level
|0AE1A6| db $FF ; Sewers
|0AE1A7| db $FF ; Hyrule Castle
|0AE1A8| db $FF ; Eastern Palace
|0AE1A9| db $FF ; Desert Palace
|0AE1AA| db $FF ; Agahnim's Tower
|0AE1AB| db $02 ; Swamp Palace
|0AE1AC| db $00 ; Palace of Darkness
|0AE1AD| db $0A ; Misery Mire
|0AE1AE| db $04 ; Skull Woods
|0AE1AF| db $08 ; Ice Palace
|0AE1B0| db $FF ; Tower of Hera
|0AE1B1| db $06 ; Thieves' Town
|0AE1B2| db $0C ; Turtle Rock
|0AE1B3| db $0E ; Ganon's Tower

endpool

;---------------------------------------------------------------------------------------------------

Module0E_03_01_01_DrawLEVEL:
|0AE1B4| PHB
|0AE1B5| PHK
|0AE1B6| PLB

|0AE1B7| LDA.w $040C
|0AE1BA| LSR A
|0AE1BB| TAX

|0AE1BC| LDY.w .dungeon_level,X
|0AE1BF| BMI .not_darkworld_dungeon

|0AE1C1| LDA.b #$FF
|0AE1C3| STA.w $1022

|0AE1C6| LDX.b #$0E

|0AE1C8| REP #$20

|0AE1CA| LDA.w .numerals_top,Y
|0AE1CD| STA.w $1002,X

|0AE1D0| LDA.w .numerals_bottom,Y
|0AE1D3| STA.w $1012,X

;---------------------------------------------------------------------------------------------------

|0AE1D6| SEP #$20

|0AE1D8| DEX

.next_letter
|0AE1D9| LDA.w .LEVEL_top,X
|0AE1DC| STA.w $1002,X

|0AE1DF| LDA.w .LEVEL_bottom,X
|0AE1E2| STA.w $1012,X

|0AE1E5| DEX
|0AE1E6| BPL .next_letter

|0AE1E8| LDA.b #$01
|0AE1EA| STA.b $14

;---------------------------------------------------------------------------------------------------

.not_darkworld_dungeon
|0AE1EC| INC.w $020D

|0AE1EF| PLB

|0AE1F0| RTL

;===================================================================================================
; VRAM address for the top of the ocean/grounds's surface
; based on the highest floor or lowest floor
; above ground levels take priority in this decision
;===================================================================================================
DungeonMap_BackdropFloorPosition:
|0AE1F1| dw $1223 ; 4B-4F | VRAM $2446
|0AE1F3| dw $1263 ; 5F    | VRAM $24C6
|0AE1F5| dw $12A3 ; 6F    | VRAM $2546
|0AE1F7| dw $12E3 ; 7F    | VRAM $25C6
|0AE1F9| dw $1323 ; 8F    | VRAM $2646

|0AE1FB| dw $11E3 ; 5B    | VRAM $23C6
|0AE1FD| dw $11A3 ; 6B    | VRAM $2346
|0AE1FF| dw $1163 ; 7B    | VRAM $22C6
|0AE201| dw $1123 ; 8B    | VRAM $2246

;===================================================================================================
; Sets up stripes at $1000 for the backdrop behind the floor window that's
; displayed on the left side of the dungeon map screen
;===================================================================================================
Module0E_03_01_02_DrawFloorsBackdrop:
|0AE203| PHB
|0AE204| PHK
|0AE205| PLB

|0AE206| REP #$30

|0AE208| STZ.w $1000

|0AE20B| LDX.w $040C
|0AE20E| PHX

|0AE20F| LDA.w DungeonMapFloorCountData,X

|0AE212| AND.w #$0300 ; why not just check AND #$0100?
|0AE215| BEQ .no_mountain

|0AE217| AND.w #$0100
|0AE21A| BEQ .no_mountain

|0AE21C| LDX.w #$002A
|0AE21F| PHX

; First copy the basic stripes
.next_copy
|0AE220| LDA.w DungeonMap_MountainStripes-2,X
|0AE223| STA.w $1000,X

|0AE226| DEX
|0AE227| DEX
|0AE228| BNE .next_copy

;---------------------------------------------------------------------------------------------------

; Now create a series of stripes for the fill
|0AE22A| PLX ; get back that 2A

|0AE22B| LDA.w #$1123 ; VRAM $2246
|0AE22E| STA.b $00

|0AE230| LDY.w #$0010 ; number of rows

.next_mountain_fill_stripe
|0AE233| LDA.b $00

|0AE235| XBA ; stupid big endian
|0AE236| STA.w $1002,X
|0AE239| XBA

|0AE23A| CLC
|0AE23B| ADC.w #$0020 ; next row
|0AE23E| STA.b $00

|0AE240| LDA.w #$0E40
|0AE243| STA.w $1004,X

|0AE246| LDA.w #$1B2E ; the mountain fill tile
|0AE249| STA.w $1006,X

|0AE24C| INX ; +6
|0AE24D| INX
|0AE24E| INX
|0AE24F| INX
|0AE250| INX
|0AE251| INX

|0AE252| DEY
|0AE253| BNE .next_mountain_fill_stripe

|0AE255| STX.w $1000 ; stripe indexer

.no_mountain
|0AE258| STZ.b $00
|0AE25A| STZ.b $02

; Determine how high the water/ocean
|0AE25C| LDX.w $040C ; get floor count for dungeon

|0AE25F| LDA.w DungeonMapFloorCountData,X
|0AE262| AND.w #$00FF
|0AE265| CMP.w #$0050
|0AE268| BCC .fewer_than_5_above

|0AE26A| LSR A ; /16
|0AE26B| LSR A
|0AE26C| LSR A
|0AE26D| LSR A

|0AE26E| SEC
|0AE26F| SBC.w #$0004 ; -4 to index the height

|0AE272| ASL A
|0AE273| STA.b $00

|0AE275| BRA .done_floor_counting

.fewer_than_5_above
|0AE277| AND.w #$000F ; basement floors are lower priority
|0AE27A| CMP.w #$0005
|0AE27D| BCC .done_floor_counting

|0AE27F| ASL A
|0AE280| STA.b $00

;---------------------------------------------------------------------------------------------------

.done_floor_counting
|0AE282| LDX.b $00
|0AE284| LDY.w $1000

|0AE287| LDA.w DungeonMap_BackdropFloorPosition,X
|0AE28A| STA.b $00
|0AE28C| STA.b $0E

.next_floor_stripe
|0AE28E| LDA.b $00 ; big endian DISGUSTING
|0AE290| XBA

|0AE291| STA.w $1002,Y

|0AE294| INY
|0AE295| INY

|0AE296| LDA.w #$0E40 ; filler stripe 16 bytes
|0AE299| STA.w $1002,Y

|0AE29C| INY
|0AE29D| INY

|0AE29E| LDX.b $02 ; get the next tile in gradient

|0AE2A0| LDA.w DungeonMap_BackdropFloorGradientTiles,X
|0AE2A3| STA.b $04

|0AE2A5| LDX.w $040C ; check for ocean/land based on dungeon

|0AE2A8| LDA.w DungeonMapFloorCountData,X
|0AE2AB| AND.w #$0200
|0AE2AE| BEQ .not_ocean

|0AE2B0| LDA.b $04 ; this just increments the palette
|0AE2B2| CLC
|0AE2B3| ADC.w #$0400
|0AE2B6| STA.b $04

.not_ocean
|0AE2B8| LDA.b $04 ; save tile to stripe
|0AE2BA| STA.w $1002,Y

|0AE2BD| INY
|0AE2BE| INY

|0AE2BF| LDA.b $02
|0AE2C1| CMP.w #$000C ; stop after 6
|0AE2C4| BEQ .gradient_finished

|0AE2C6| INC.b $02 ; next gradient level
|0AE2C8| INC.b $02

.gradient_finished
|0AE2CA| LDA.b $00 ; point address to next row
|0AE2CC| CLC
|0AE2CD| ADC.w #$0020
|0AE2D0| STA.b $00

|0AE2D2| CMP.w #$1360 ; VRAM $26C0
|0AE2D5| BCC .next_floor_stripe

;---------------------------------------------------------------------------------------------------

|0AE2D7| STY.w $1000 ; save stripe buffer position

|0AE2DA| SEP #$20

; this PLX recovers our dungeon ID
; which we were perfectly happy with just LDXing earlier
|0AE2DC| PLX
|0AE2DD| JSR DungeonMap_BuildFloorListBoxes

|0AE2E0| REP #$10 ; we're done, so mark the last stripe as finished

|0AE2E2| LDY.w $1000

|0AE2E5| LDA.b #$FF
|0AE2E7| STA.w $1002,Y

|0AE2EA| SEP #$10

|0AE2EC| INC.w $020D ; next subsubsubsubsubsubsubmodule

|0AE2EF| LDA.b #$01 ; tell NMI to handle stripes
|0AE2F1| STA.b $14

|0AE2F3| PLB

|0AE2F4| RTL

;===================================================================================================
; This builds those blue boxes used by the floor counter
; Starts by positioning the topmost box relative to the backdrop's floor
; then builds 2 stripes for each box
;===================================================================================================
pool DungeonMap_BuildFloorListBoxes

.tiles
|0AE2F5| dw $0F26, $0F27, $4F27, $4F26
|0AE2FD| dw $8F26, $8F27, $CF27, $CF26

endpool

;---------------------------------------------------------------------------------------------------

DungeonMap_BuildFloorListBoxes:
|0AE305| REP #$20

; get the total number of floors
|0AE307| LDA.w DungeonMapFloorCountData,X
|0AE30A| AND.w #$00FF ; cache value
|0AE30D| STA.b $02

|0AE30F| AND.w #$000F ; get basement floors
|0AE312| STA.b $00

|0AE314| LDA.b $02 ; get above ground floors
|0AE316| LSR A
|0AE317| LSR A
|0AE318| LSR A
|0AE319| LSR A
|0AE31A| CLC ; add in basement floors
|0AE31B| ADC.b $00
|0AE31D| STA.b $02

|0AE31F| LDA.b $A4 ; add in the floor we are currently on
|0AE321| CLC
|0AE322| ADC.b $00
|0AE324| AND.w #$00FF
|0AE327| STA.b $0C

|0AE329| STZ.b $0A

|0AE32B| LDA.b $0E ; this will contain the backdrop floor position
|0AE32D| SEC
|0AE32E| SBC.w #$0040 ; bring it down 2 rows
|0AE331| CLC
|0AE332| ADC.w #$0002 ; then right 1 tile
|0AE335| STA.b $0E

|0AE337| LDX.b $00 ; check number of basement floor
|0AE339| BEQ .no_basement

|0AE33B| LDA.b $0E ; this wasn't necessary

.scroll_floors ; move down 2 rows for every basement floor
|0AE33D| CLC
|0AE33E| ADC.w #$0040

|0AE341| DEX
|0AE342| BNE .scroll_floors

|0AE344| STA.b $0E

.no_basement
|0AE346| REP #$10

|0AE348| LDY.w $1000

.next_box
|0AE34B| LDX.w #$0000 ; reset the index for what tile we write

|0AE34E| LDA.b $0E

.do_next_row
|0AE350| XBA ; turn the address big endian
|0AE351| STA.w $1002,Y

|0AE354| INY
|0AE355| INY

|0AE356| LDA.w #$0700 ; transferring 8 bytes, inline
|0AE359| STA.w $1002,Y

|0AE35C| INY
|0AE35D| INY

.next_tile_to_stripe
|0AE35E| LDA.w .tiles,X ; add each tile from that row
|0AE361| STA.w $1002,Y

|0AE364| INY
|0AE365| INY

|0AE366| INX
|0AE367| INX
|0AE368| CPX.w #$0008
|0AE36B| BCC .next_tile_to_stripe
|0AE36D| BEQ .set_up_box_bottom ; at 8, we've only done the first row

|0AE36F| CPX.w #$0010
|0AE372| BNE .next_tile_to_stripe

|0AE374| BRA .box_done ; at 16, we've finished the bottom row too

.set_up_box_bottom
|0AE376| LDA.b $0E
|0AE378| CLC
|0AE379| ADC.w #$0020

|0AE37C| BRA .do_next_row

.box_done
|0AE37E| LDA.b $0E ; move our next address up by 2 tiles
|0AE380| SEC
|0AE381| SBC.w #$0040
|0AE384| STA.b $0E

|0AE386| INC.b $0A ; increment the count of our boxes done

|0AE388| LDA.b $0A
|0AE38A| CMP.b $02 ; coulda just decremented this
|0AE38C| BMI .next_box

|0AE38E| STY.w $1000 ; save our DMA position

|0AE391| SEP #$30

|0AE393| RTS

;===================================================================================================

Module0E_03_01_03_DrawRooms:
|0AE394| PHB
|0AE395| PHK
|0AE396| PLB

|0AE397| STZ.w $0210

|0AE39A| REP #$30

|0AE39C| STZ.b $00
|0AE39E| STZ.b $02
|0AE3A0| STZ.b $04
|0AE3A2| STZ.b $06
|0AE3A4| STZ.b $08
|0AE3A6| STZ.b $0A
|0AE3A8| STZ.b $0C

|0AE3AA| STZ.w $0211

|0AE3AD| LDX.w $040C

|0AE3B0| LDA.w DungeonMapFloorCountData,X
|0AE3B3| AND.w #$000F

|0AE3B6| EOR.w #$00FF
|0AE3B9| INC A

|0AE3BA| AND.w #$00FF

|0AE3BD| CMP.b $A4
|0AE3BF| BEQ .on_this_floor

|0AE3C1| LDA.b $A4
|0AE3C3| AND.w #$00FF
|0AE3C6| STA.w $020E

|0AE3C9| BRA .continue

.on_this_floor
|0AE3CB| LDA.b $A4
|0AE3CD| INC A
|0AE3CE| STA.w $020E

|0AE3D1| INC.w $0211
|0AE3D4| INC.w $0211

.continue
;---------------------------------------------------------------------------------------------------
; Draw the top room
;---------------------------------------------------------------------------------------------------
; This appears to affect the border drawn.
; Perhaps they planned to have it be highlighted for your current location?
; In its current state, this is pointless.
|0AE3D7| LDA.w $020E
|0AE3DA| AND.w #$0050
|0AE3DD| BNE .pointless_check

|0AE3DF| LDA.w #$EFFF
|0AE3E2| STA.b $08
|0AE3E4| BRA .that_was_pointless

.pointless_check
|0AE3E6| LDA.w #$EFFF
|0AE3E9| STA.b $08

.that_was_pointless
|0AE3EB| JSR DungeonMap_DrawFloorNumbersByRoom
|0AE3EE| JSR DungeonMap_DrawBorderForRooms
|0AE3F1| JSR DungeonMap_DrawDungeonLayout

;---------------------------------------------------------------------------------------------------
; Draw the bottom room
;---------------------------------------------------------------------------------------------------
|0AE3F4| DEC.w $020E

|0AE3F7| REP #$30

|0AE3F9| LDA.w #$0300
|0AE3FC| STA.b $06

; WOW! What were they planning here?
|0AE3FE| LDA.w $0211
|0AE401| BNE .very_useless
|0AE403| BRA .very_useless

; More pointless checks
.very_useless
|0AE405| LDA.w $020E
|0AE408| AND.w #$0050
|0AE40B| BNE .more_pointlessness

|0AE40D| LDA.w #$EFFF
|0AE410| STA.b $08
|0AE412| BRA .wow_really_pointless

.more_pointlessness
|0AE414| LDA.w #$EFFF
|0AE417| STA.b $08

.wow_really_pointless
|0AE419| JSR DungeonMap_DrawFloorNumbersByRoom
|0AE41C| JSR DungeonMap_DrawBorderForRooms
|0AE41F| JSR DungeonMap_DrawDungeonLayout

;---------------------------------------------------------------------------------------------------

|0AE422| REP #$30

|0AE424| INC.w $020E

|0AE427| STZ.b $06

|0AE429| SEP #$30

|0AE42B| LDA.b #$08
|0AE42D| STA.b $17

|0AE42F| LDA.b #$22
|0AE431| STA.w $0116

|0AE434| INC.w $020D

|0AE437| PLB

|0AE438| RTL

;===================================================================================================

pool DungeonMap_DrawBorderForRooms

.corner_tiles
|0AE439| dw $1F19, $5F19, $9F19, $DF19

.corner_address
|0AE441| dw $00E2, $00F8, $03A2, $03B8

.horizontal_tiles
|0AE449| dw $1F1A, $9F1A

.horizontal_border_address
|0AE44D| dw $00E4, $03A4

.vertical_tiles
|0AE451| dw $1F1B, $5F1B

.vertical_border_address
|0AE455| dw $0122, $0138

endpool

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawBorderForRooms:
|0AE459| REP #$30

|0AE45B| STZ.b $02

.next_corner
|0AE45D| LDY.b $02

|0AE45F| LDA.w .corner_address,Y
|0AE462| CLC
|0AE463| ADC.b $06
|0AE465| AND.w #$0FFF
|0AE468| TAX

|0AE469| LDA.w #$0F00
|0AE46C| STA.l $7F0000,X

|0AE470| LDA.w .corner_tiles,Y
|0AE473| AND.b $08
|0AE475| STA.l $7F0000,X

|0AE479| INC.b $02
|0AE47B| INC.b $02

|0AE47D| LDA.b $02
|0AE47F| CMP.w #$0008
|0AE482| BNE .next_corner

;---------------------------------------------------------------------------------------------------

|0AE484| LDY.w #$0000

.next_horizontal_segment
|0AE487| STZ.b $02

|0AE489| LDA.w .horizontal_border_address,Y
|0AE48C| CLC
|0AE48D| ADC.b $06
|0AE48F| STA.b $04

.next_horizontal_tile
|0AE491| LDA.b $04
|0AE493| CLC
|0AE494| ADC.b $02
|0AE496| AND.w #$0FFF
|0AE499| TAX

|0AE49A| LDA.w #$0F00
|0AE49D| STA.l $7F0000,X

|0AE4A1| LDA.w .horizontal_tiles,Y
|0AE4A4| AND.b $08
|0AE4A6| STA.l $7F0000,X

|0AE4AA| INC.b $02
|0AE4AC| INC.b $02

|0AE4AE| LDA.b $02
|0AE4B0| CMP.w #$0014
|0AE4B3| BNE .next_horizontal_tile

|0AE4B5| INY
|0AE4B6| INY
|0AE4B7| CPY.w #$0004
|0AE4BA| BNE .next_horizontal_segment

;---------------------------------------------------------------------------------------------------

|0AE4BC| LDY.w #$0000

.next_vertical_segment
|0AE4BF| STZ.b $02

|0AE4C1| LDA.w .vertical_border_address,Y
|0AE4C4| CLC
|0AE4C5| ADC.b $06
|0AE4C7| STA.b $04

.next_vertical_tile
|0AE4C9| LDA.b $04
|0AE4CB| CLC
|0AE4CC| ADC.b $02
|0AE4CE| AND.w #$0FFF
|0AE4D1| TAX

|0AE4D2| LDA.w #$0F00
|0AE4D5| STA.l $7F0000,X

|0AE4D9| LDA.w .vertical_tiles,Y
|0AE4DC| AND.b $08
|0AE4DE| STA.l $7F0000,X

|0AE4E2| LDA.b $02
|0AE4E4| CLC
|0AE4E5| ADC.w #$0040
|0AE4E8| STA.b $02

|0AE4EA| CMP.w #$0280
|0AE4ED| BNE .next_vertical_tile

|0AE4EF| INY
|0AE4F0| INY
|0AE4F1| CPY.w #$0004
|0AE4F4| BNE .next_vertical_segment

;---------------------------------------------------------------------------------------------------

|0AE4F6| SEP #$30

|0AE4F8| RTS

;===================================================================================================

pool DungeonMap_DrawFloorNumbersByRoom

.floor_numbers
|0AE4F9| dw $1F1E ; 1
|0AE4FB| dw $1F1F ; 2
|0AE4FD| dw $1F20 ; 3
|0AE4FF| dw $1F21 ; 4
|0AE501| dw $1F22 ; 5
|0AE503| dw $1F23 ; 6
|0AE505| dw $1F24 ; 7
|0AE507| dw $1F25 ; 8

endpool

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawFloorNumbersByRoom:
|0AE509| REP #$30

|0AE50B| LDA.w #$00DE
|0AE50E| STA.b $00

; Delete the existing characters
.delete_next_letter
|0AE510| LDA.b $00
|0AE512| CLC
|0AE513| ADC.b $06
|0AE515| AND.w #$0FFF
|0AE518| TAX

|0AE519| LDA.w #$0F00
|0AE51C| STA.l $7F0000,X
|0AE520| STA.l $7F0002,X

|0AE524| LDA.b $00
|0AE526| CLC
|0AE527| ADC.w #$0040
|0AE52A| STA.b $00

|0AE52C| CMP.w #$039E
|0AE52F| BNE .delete_next_letter

;---------------------------------------------------------------------------------------------------

; Draw the floor number
|0AE531| LDA.w $020E
|0AE534| AND.w #$0080
|0AE537| BEQ .above_ground_floor

|0AE539| LDA.w #$1F1C ; letter B
|0AE53C| BRA .write_char

; Otherwise, write the floor number
.above_ground_floor
|0AE53E| LDA.w $020E
|0AE541| AND.w #$000F
|0AE544| ASL A
|0AE545| TAY

|0AE546| LDA.w .floor_numbers,Y

; Write first character (digit or B)
.write_char
|0AE549| PHA

|0AE54A| LDA.w #$035E
|0AE54D| CLC
|0AE54E| ADC.b $06

|0AE550| AND.w #$0FFF
|0AE553| TAX

|0AE554| PLA
|0AE555| AND.b $08
|0AE557| STA.l $7F0000,X

;---------------------------------------------------------------------------------------------------

|0AE55B| LDA.w $020E
|0AE55E| AND.w #$0080
|0AE561| BEQ .above_ground_again

; Check floor again for basementitude
|0AE563| LDA.w $020E
|0AE566| AND.w #$00FF
|0AE569| EOR.w #$00FF
|0AE56C| ASL A
|0AE56D| TAY

|0AE56E| LDA.w .floor_numbers,Y
|0AE571| BRA .write_second_character

.above_ground_again
|0AE573| LDA.w #$1F1D ; letter F

.write_second_character
|0AE576| AND.b $08
|0AE578| STA.l $7F0002,X

|0AE57C| SEP #$30

|0AE57E| RTS

;===================================================================================================

pool DungeonMap_DrawDungeonLayout

.row_offset
|0AE57F| dw $0124
|0AE581| dw $01A4
|0AE583| dw $0224
|0AE585| dw $02A4
|0AE587| dw $0324

endpool

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawDungeonLayout:
|0AE589| REP #$30

|0AE58B| STZ.b $00

.next_row_of_rooms
|0AE58D| LDA.b $00
|0AE58F| ASL A
|0AE590| TAX

|0AE591| LDA.w .row_offset,X
|0AE594| CLC
|0AE595| ADC.b $06
|0AE597| AND.w #$0FFF
|0AE59A| TAX

|0AE59B| JSR DungeonMap_DrawSingleRowOfRooms

|0AE59E| INC.b $00

|0AE5A0| LDA.b $00
|0AE5A2| CMP.w #$0005
|0AE5A5| BNE .next_row_of_rooms

|0AE5A7| SEP #$30

|0AE5A9| RTS

;===================================================================================================

pool DungeonMap_DrawSingleRowOfRooms

.row_draw_offset
|0AE5AA| dw $0000
|0AE5AC| dw $0005
|0AE5AE| dw $000A
|0AE5B0| dw $000F
|0AE5B2| dw $0014

.unused
|0AE5B4| dw $0000, $0032, $0064, $0096
|0AE5BC| dw $00C8, $00FA, $012C, $015E
|0AE5C4| dw $0190, $0300, $0B00, $0F00

endpool

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawSingleRowOfRooms:
|0AE5CC| REP #$30

|0AE5CE| STZ.b $02

.next_room
|0AE5D0| STZ.b $0E

|0AE5D2| PHX

; Get row number
|0AE5D3| LDA.b $00
|0AE5D5| ASL A
|0AE5D6| TAX

; Add in room number
|0AE5D7| LDA.b $02
|0AE5D9| ADC.w .row_draw_offset,X
|0AE5DC| STA.b $04

|0AE5DE| SEP #$20

|0AE5E0| LDX.w $040C

; Get number of basement floors in dungeon
|0AE5E3| LDA.w DungeonMapFloorCountData,X
|0AE5E6| AND.b #$0F

; Add in current floor
|0AE5E8| CLC
|0AE5E9| ADC.w $020E

; So (basements+current)*2
|0AE5EC| ASL A
|0AE5ED| STA.b $0E

; So that means the lowest floor is where the data starts
|0AE5EF| TAY

|0AE5F0| REP #$20

|0AE5F2| LDA.w DungeonMapRoomPointers,X
|0AE5F5| STA.b $0C

|0AE5F7| LDA.w DungeonMapFloorToDataOffset,Y
|0AE5FA| CLC
|0AE5FB| ADC.b $04
|0AE5FD| TAY

|0AE5FE| SEP #$20

; 0x0F = empty room
|0AE600| LDA.b ($0C),Y
|0AE602| CMP.b #$0F
|0AE604| BNE .valid_room

|0AE606| REP #$20

|0AE608| LDA.w #$0051
|0AE60B| BRA .shift_empty_room

.valid_room
|0AE60D| REP #$20

; Check SRAM for room visits
|0AE60F| AND.w #$00FF
|0AE612| STA.b $CA

|0AE614| ASL A
|0AE615| PHA

|0AE616| LDA.b $CA
|0AE618| ASL A
|0AE619| TAX

|0AE61A| LDA.l $7EF000,X
|0AE61E| AND.w #$000F

; $0E holds quadrant flags and chests
|0AE621| STA.b $0E

|0AE623| PLA
|0AE624| BRA .is_valid

; Not sure I understand the point of this branch.
; It could have been merged or been further ahead.
.shift_empty_room
|0AE626| ASL A
|0AE627| ASL A
|0AE628| ASL A
|0AE629| TAY

|0AE62A| BRA .continue_with_empty_room

;---------------------------------------------------------------------------------------------------

.is_valid
|0AE62C| STZ.b $C8

|0AE62E| LDY.w #$0000
|0AE631| LDX.w $040C

|0AE634| LDA.w DungeonMapRoomPointers,X
|0AE637| STA.b $0C

.check_next_room
|0AE639| SEP #$20

|0AE63B| LDA.b ($0C),Y
|0AE63D| CMP.b #$0F
|0AE63F| BNE .draw_this_room

|0AE641| INY
|0AE642| BRA .check_next_room

.draw_this_room
; $CA holds the room ID
|0AE644| CMP.b $CA
|0AE646| BEQ .room_matches

; $C8 holds the room index to look for
|0AE648| INC.b $C8

|0AE64A| INY

|0AE64B| BRA .check_next_room

.room_matches
|0AE64D| REP #$20

|0AE64F| LDA.w DungeonMapRoomOrderPointers,X
|0AE652| STA.b $0C

; Get index of room in layout data
|0AE654| LDA.b $C8
|0AE656| TAY

|0AE657| SEP #$20

; get the room's stripe
|0AE659| LDA.b ($0C),Y

|0AE65B| REP #$20

|0AE65D| ASL A ; x8
|0AE65E| ASL A
|0AE65F| ASL A
|0AE660| TAY

.continue_with_empty_room
|0AE661| PLX

; $0C holds the character/properties
|0AE662| LDA.w DungeonMap_RoomTemplates+0,Y
|0AE665| STA.b $0C

|0AE667| PHA

;---------------------------------------------------------------------------------------------------
; NW quadrant
;---------------------------------------------------------------------------------------------------
; Empty character
|0AE668| CMP.w #$0B00
|0AE66B| BEQ .empty_quad_nw

; Quadrant not visited
|0AE66D| LDA.b $0E
|0AE66F| AND.w #$0008
|0AE672| BNE .empty_quad_nw

|0AE674| LDA.b $0C
|0AE676| AND.w #$1000
|0AE679| BNE .visited_pal_nw

|0AE67B| LDA.w #$0400
|0AE67E| STA.b $0C
|0AE680| BRA .check_visit_nw

.visited_pal_nw
|0AE682| PHX

|0AE683| LDX.w $040C

|0AE686| LDA.l $7EF368
|0AE68A| AND.l BitMasks,X
|0AE68E| BEQ .missing_map_nw

|0AE690| PLX
|0AE691| PLA

|0AE692| LDA.b $0C
|0AE694| AND.w #$E3FF
|0AE697| ORA.w #$0C00
|0AE69A| BRA .write_char_nw

.missing_map_nw
|0AE69C| PLX

.empty_quad_nw
|0AE69D| STZ.b $0C

.check_visit_nw
|0AE69F| PLA
|0AE6A0| CLC
|0AE6A1| ADC.b $0C

|0AE6A3| PHX

|0AE6A4| STA.b $0C

|0AE6A6| LDX.w $040C

|0AE6A9| LDA.l $7EF368
|0AE6AD| AND.l BitMasks,X
|0AE6B1| BNE .quadrant_visited_nw

|0AE6B3| LDA.b $0E
|0AE6B5| AND.w #$0008
|0AE6B8| BNE .quadrant_visited_nw

|0AE6BA| LDA.w #$0B00
|0AE6BD| BRA .quadrant_unvisited_nw

.quadrant_visited_nw
|0AE6BF| LDA.b $0C

.quadrant_unvisited_nw
|0AE6C1| PLX

.write_char_nw
|0AE6C2| STA.l $7F0000,X

;---------------------------------------------------------------------------------------------------
; NE quadrant
;---------------------------------------------------------------------------------------------------
|0AE6C6| LDA.w DungeonMap_RoomTemplates+2,Y
|0AE6C9| STA.b $0C

|0AE6CB| PHA

|0AE6CC| CMP.w #$0B00
|0AE6CF| BEQ .empty_quad_ne

|0AE6D1| LDA.b $0E
|0AE6D3| AND.w #$0004
|0AE6D6| BNE .empty_quad_ne

|0AE6D8| LDA.b $0C
|0AE6DA| AND.w #$1000
|0AE6DD| BNE .visited_pal_ne

|0AE6DF| LDA.w #$0400
|0AE6E2| STA.b $0C

|0AE6E4| BRA .check_visit_ne

.visited_pal_ne
|0AE6E6| PHX

|0AE6E7| LDX.w $040C

|0AE6EA| LDA.l $7EF368
|0AE6EE| AND.l BitMasks,X
|0AE6F2| BEQ .missing_map_ne

|0AE6F4| PLX
|0AE6F5| PLA

|0AE6F6| LDA.b $0C
|0AE6F8| AND.w #$E3FF
|0AE6FB| ORA.w #$0C00
|0AE6FE| BRA .write_char_ne

.missing_map_ne
|0AE700| PLX

.empty_quad_ne
|0AE701| STZ.b $0C

.check_visit_ne
|0AE703| PLA
|0AE704| CLC
|0AE705| ADC.b $0C

|0AE707| PHX

|0AE708| STA.b $0C

|0AE70A| LDX.w $040C

|0AE70D| LDA.l $7EF368
|0AE711| AND.l BitMasks,X
|0AE715| BNE .quadrant_visited_ne

|0AE717| LDA.b $0E
|0AE719| AND.w #$0004
|0AE71C| BNE .quadrant_visited_ne

|0AE71E| LDA.w #$0B00

|0AE721| BRA .quadrant_unvisited_ne

.quadrant_visited_ne
|0AE723| LDA.b $0C

.quadrant_unvisited_ne
|0AE725| PLX

.write_char_ne
|0AE726| STA.l $7F0002,X

;---------------------------------------------------------------------------------------------------
; SW quadrant
;---------------------------------------------------------------------------------------------------
|0AE72A| LDA.w DungeonMap_RoomTemplates+4,Y
|0AE72D| STA.b $0C

|0AE72F| PHA

|0AE730| CMP.w #$0B00
|0AE733| BEQ .empty_quad_sw

|0AE735| LDA.b $0E
|0AE737| AND.w #$0002
|0AE73A| BNE .empty_quad_sw

|0AE73C| LDA.b $0C
|0AE73E| AND.w #$1000
|0AE741| BNE .visited_pal_sw

|0AE743| LDA.w #$0400
|0AE746| STA.b $0C

|0AE748| BRA .check_visit_sw

.visited_pal_sw
|0AE74A| PHX

|0AE74B| LDX.w $040C

|0AE74E| LDA.l $7EF368
|0AE752| AND.l BitMasks,X
|0AE756| BEQ .missing_map_sw

|0AE758| PLX
|0AE759| PLA

|0AE75A| LDA.b $0C
|0AE75C| AND.w #$E3FF
|0AE75F| ORA.w #$0C00
|0AE762| BRA .write_char_sw

.missing_map_sw
|0AE764| PLX

.empty_quad_sw
|0AE765| STZ.b $0C

.check_visit_sw
|0AE767| PLA
|0AE768| CLC
|0AE769| ADC.b $0C

|0AE76B| PHX

|0AE76C| STA.b $0C

|0AE76E| LDX.w $040C

|0AE771| LDA.l $7EF368
|0AE775| AND.l BitMasks,X
|0AE779| BNE .quadrant_visited_sw

|0AE77B| LDA.b $0E
|0AE77D| AND.w #$0002
|0AE780| BNE .quadrant_visited_sw

|0AE782| LDA.w #$0B00

|0AE785| BRA .quadrant_unvisited_sw

.quadrant_visited_sw
|0AE787| LDA.b $0C

.quadrant_unvisited_sw
|0AE789| PLX

.write_char_sw
|0AE78A| STA.l $7F0040,X

;---------------------------------------------------------------------------------------------------
; SE quadrant
;---------------------------------------------------------------------------------------------------
|0AE78E| LDA.w DungeonMap_RoomTemplates+6,Y
|0AE791| STA.b $0C

|0AE793| PHA

|0AE794| CMP.w #$0B00
|0AE797| BEQ .empty_quad_se

|0AE799| LDA.b $0E
|0AE79B| AND.w #$0001
|0AE79E| BNE .empty_quad_se

|0AE7A0| LDA.b $0C
|0AE7A2| AND.w #$1000
|0AE7A5| BNE .visited_pal_se

|0AE7A7| LDA.w #$0400
|0AE7AA| STA.b $0C

|0AE7AC| BRA .check_visit_se

.visited_pal_se
|0AE7AE| PHX

|0AE7AF| LDX.w $040C

|0AE7B2| LDA.l $7EF368
|0AE7B6| AND.l BitMasks,X
|0AE7BA| BEQ .missing_map_se

|0AE7BC| PLX
|0AE7BD| PLA

|0AE7BE| LDA.b $0C
|0AE7C0| AND.w #$E3FF
|0AE7C3| ORA.w #$0C00

|0AE7C6| BRA .write_char_se

.missing_map_se
|0AE7C8| PLX

.empty_quad_se
|0AE7C9| STZ.b $0C

.check_visit_se
|0AE7CB| PLA
|0AE7CC| CLC
|0AE7CD| ADC.b $0C

|0AE7CF| PHX

|0AE7D0| STA.b $0C

|0AE7D2| LDX.w $040C

|0AE7D5| LDA.l $7EF368
|0AE7D9| AND.l BitMasks,X
|0AE7DD| BNE .quadrant_visited_se

|0AE7DF| LDA.b $0E
|0AE7E1| AND.w #$0001
|0AE7E4| BNE .quadrant_visited_se

|0AE7E6| LDA.w #$0B00

|0AE7E9| BRA .quadrant_unvisited_se

.quadrant_visited_se
|0AE7EB| LDA.b $0C

.quadrant_unvisited_se
|0AE7ED| PLX

.write_char_se
|0AE7EE| STA.l $7F0042,X

;---------------------------------------------------------------------------------------------------

|0AE7F2| INX ; +4
|0AE7F3| INX
|0AE7F4| INX
|0AE7F5| INX

|0AE7F6| INC.b $02

|0AE7F8| LDA.b $02
|0AE7FA| CMP.w #$0005
|0AE7FD| BEQ .exit

|0AE7FF| JMP.w .next_room

.exit
|0AE802| RTS

;===================================================================================================

DungeonMapRoomMarkerYBase:
|0AE803| dw $001F, $007F

;---------------------------------------------------------------------------------------------------

pool DungeonMap_DrawRoomMarkers

.offset_x_base
|0AE807| dw $0090

.fairy_rooms
|0AE809| dw $0089 ; ROOM 0089 - Eastern fairy room
|0AE80B| dw $00A7 ; ROOM 00A7 - Hera fairy room
|0AE80D| dw $004F ; ROOM 004F - Ice Palace fairy room

.fairy_room_replacements
|0AE80F| dw $00A9 ; ROOM 00A9 - Eastern big chest room
|0AE811| dw $0077 ; ROOM 0077 - Hera lobby
|0AE813| dw $00BE ; ROOM 00BE - Ice Palace block switch room

.fairy_room_count
|0AE815| dw $0004

endpool

;---------------------------------------------------------------------------------------------------

DungeonMapBossRooms:
|0AE817| dw $000F ; ROOM 000F - Sewers: none
|0AE819| dw $000F ; ROOM 000F - Castle: none
|0AE81B| dw $00C8 ; ROOM 00C8 - Eastern
|0AE81D| dw $0033 ; ROOM 0033 - Desert
|0AE81F| dw $0020 ; ROOM 0020 - Agahnim's tower
|0AE821| dw $0006 ; ROOM 0006 - Swamp palace
|0AE823| dw $005A ; ROOM 005A - Palace of Darkness
|0AE825| dw $0090 ; ROOM 0090 - Misery Mire
|0AE827| dw $0029 ; ROOM 0029 - Skull Woods
|0AE829| dw $00DE ; ROOM 00DE - Ice Palace
|0AE82B| dw $0007 ; ROOM 0007 - Tower of Hera
|0AE82D| dw $00AC ; ROOM 00AC - Thieves' Town
|0AE82F| dw $00A4 ; ROOM 00A4 - Turtle Rock
|0AE831| dw $000D ; ROOM 000D - Ganon's tower

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawRoomMarkers:
|0AE833| PHB
|0AE834| PHK
|0AE835| PLB

|0AE836| REP #$10

|0AE838| LDA.b #$00
|0AE83A| XBA

|0AE83B| LDX.w $040C

|0AE83E| LDA.w DungeonMapFloorCountData,X
|0AE841| AND.b #$0F
|0AE843| CLC
|0AE844| ADC.b $A4
|0AE846| ASL A
|0AE847| TAY

|0AE848| STY.b $0C

|0AE84A| REP #$20

|0AE84C| STZ.b $00
|0AE84E| STZ.b $02

;---------------------------------------------------------------------------------------------------

|0AE850| PHY

|0AE851| LDY.w .fairy_room_count

|0AE854| LDA.b $A0

.check_next
|0AE856| CMP.w .fairy_rooms,Y
|0AE859| BEQ .replace_this_room

|0AE85B| DEY
|0AE85C| DEY
|0AE85D| BPL .check_next

|0AE85F| BRA .no_replacements

.replace_this_room
|0AE861| LDA.w .fairy_room_replacements,Y

.no_replacements
|0AE864| STA.b $0E

;---------------------------------------------------------------------------------------------------

|0AE866| PLY

|0AE867| LDA.w DungeonMapRoomPointers,X
|0AE86A| STA.b $04

|0AE86C| LDA.w DungeonMapFloorToDataOffset,Y
|0AE86F| TAY

|0AE870| SEP #$20

.next_room_check
|0AE872| LDA.b ($04),Y

|0AE874| INY

|0AE875| CMP.b $0E
|0AE877| BEQ .is_this_room

|0AE879| LDA.b $00
|0AE87B| CMP.b #$40
|0AE87D| BCC .dont_reset_row

|0AE87F| STZ.b $00

|0AE881| LDA.b $02
|0AE883| CLC
|0AE884| ADC.b #$10
|0AE886| STA.b $02

|0AE888| BRA .next_room_check

.dont_reset_row
|0AE88A| CLC
|0AE88B| ADC.b #$10
|0AE88D| STA.b $00

|0AE88F| BRA .next_room_check

;---------------------------------------------------------------------------------------------------

.is_this_room
|0AE891| REP #$20

|0AE893| LDA.b $00
|0AE895| CLC
|0AE896| ADC.w .offset_x_base
|0AE899| STA.w $0215

|0AE89C| LDA.b $22
|0AE89E| AND.w #$01E0

|0AE8A1| ASL A
|0AE8A2| ASL A
|0AE8A3| ASL A

|0AE8A4| XBA
|0AE8A5| CLC
|0AE8A6| ADC.w $0215
|0AE8A9| STA.w $0215

|0AE8AC| LDY.w $0211

|0AE8AF| LDA.b $02
|0AE8B1| STA.w $0CF5

|0AE8B4| CLC
|0AE8B5| ADC.w DungeonMapRoomMarkerYBase,Y
|0AE8B8| STA.w $0217

|0AE8BB| LDA.b $20
|0AE8BD| AND.w #$01E0

|0AE8C0| ASL A
|0AE8C1| ASL A
|0AE8C2| ASL A

|0AE8C3| XBA
|0AE8C4| CLC
|0AE8C5| ADC.w $0217
|0AE8C8| STA.w $0217

;---------------------------------------------------------------------------------------------------

|0AE8CB| SEP #$20

|0AE8CD| LDA.b #$00
|0AE8CF| XBA

|0AE8D0| LDA.w DungeonMapFloorCountData,X
|0AE8D3| AND.b #$0F
|0AE8D5| CLC
|0AE8D6| ADC.w DungeonMap_BossRoomFloor+0,X

|0AE8D9| REP #$20

|0AE8DB| ASL A
|0AE8DC| TAY

|0AE8DD| LDA.w DungeonMapRoomPointers,X
|0AE8E0| CLC
|0AE8E1| ADC.w DungeonMapFloorToDataOffset,Y
|0AE8E4| STA.b $0E

;---------------------------------------------------------------------------------------------------

|0AE8E6| SEP #$20

|0AE8E8| LDA.b #$40
|0AE8EA| STA.w $0FA8
|0AE8ED| STZ.w $0FA9

|0AE8F0| STA.w $0FAA
|0AE8F3| STZ.w $0FAB

|0AE8F6| LDY.w #$0018

.next_boss_room_check
|0AE8F9| LDA.b ($0E),Y
|0AE8FB| CMP.b #$0F
|0AE8FD| BEQ .invalid_room

|0AE8FF| CMP.w DungeonMapBossRooms,X
|0AE902| BEQ .is_boss_room

.invalid_room
|0AE904| LDA.w $0FA8
|0AE907| SEC
|0AE908| SBC.b #$10
|0AE90A| STA.w $0FA8
|0AE90D| BPL .dont_reset_row_b

|0AE90F| LDA.b #$40
|0AE911| STA.w $0FA8

|0AE914| LDA.w $0FAA
|0AE917| SEC
|0AE918| SBC.b #$10
|0AE91A| STA.w $0FAA

.dont_reset_row_b
|0AE91D| DEY
|0AE91E| BPL .next_boss_room_check

;---------------------------------------------------------------------------------------------------

.is_boss_room
|0AE920| STZ.b $02
|0AE922| STZ.b $0F

|0AE924| LDA.w $020E
|0AE927| SEC
|0AE928| SBC.w DungeonMap_BossRoomFloor+0,X
|0AE92B| STA.b $0E

|0AE92D| BPL .dont_invert

|0AE92F| EOR.b #$FF
|0AE931| INC A
|0AE932| STA.b $0E

|0AE934| INC.b $02
|0AE936| INC.b $02

;---------------------------------------------------------------------------------------------------

.dont_invert
|0AE938| SEP #$10

|0AE93A| LDY.b $02

|0AE93C| REP #$20

.adjust_next
|0AE93E| DEC.b $0E
|0AE940| BMI .done

|0AE942| LDA.w $0FAA
|0AE945| CLC
|0AE946| ADC.w DungeonMap_PanValues,Y
|0AE949| STA.w $0FAA

|0AE94C| BRA .adjust_next

;---------------------------------------------------------------------------------------------------

.done
|0AE94E| LDA.w $0FAA
|0AE951| CLC
|0AE952| ADC.w DungeonMapRoomMarkerYBase
|0AE955| STA.w $0FAA

|0AE958| SEP #$20

|0AE95A| INC.w $0200

|0AE95D| STZ.b $13
|0AE95F| STZ.w $020D

|0AE962| PLB

|0AE963| RTL

;---------------------------------------------------------------------------------------------------

DungeonMap_HandleInputAndSprites:
|0AE964| JSL DungeonMap_HandleInput

|0AE968| JMP.w DungeonMap_DrawSprites

;===================================================================================================

DungeonMap_HandleInput:
|0AE96B| PHB
|0AE96C| PHK
|0AE96D| PLB

|0AE96E| LDA.b $F6
|0AE970| AND.b #$40

|0AE972| BNE .close_map

|0AE974| JSL DungeonMap_HandleMovementInput

|0AE978| PLB

|0AE979| RTL

;---------------------------------------------------------------------------------------------------

.close_map
|0AE97A| INC.w $0200
|0AE97D| INC.w $0200
|0AE980| STZ.w $020D

|0AE983| PLB

|0AE984| RTL

;===================================================================================================

DungeonMap_PanValues:
|0AE985| dw  96
|0AE987| dw -96

;===================================================================================================

DungeonMap_HandleMovementInput:
|0AE989| JSL DungeonMap_HandleFloorSelect

|0AE98D| LDA.w $0210
|0AE990| BEQ .exit

|0AE992| JMP.w DungeonMap_ScrollFloors

.exit
|0AE995| RTL

;===================================================================================================

DungeonMap_HandleFloorSelect:
|0AE996| REP #$30

|0AE998| LDX.w $040C

|0AE99B| LDA.w DungeonMapFloorCountData,X
|0AE99E| AND.w #$00F0
|0AE9A1| LSR A ; /16
|0AE9A2| LSR A
|0AE9A3| LSR A
|0AE9A4| LSR A
|0AE9A5| STA.b $00

|0AE9A7| LDA.w DungeonMapFloorCountData,X
|0AE9AA| AND.w #$000F
|0AE9AD| CLC
|0AE9AE| ADC.b $00

|0AE9B0| CMP.w #$0003
|0AE9B3| BMI .ignore_input

;---------------------------------------------------------------------------------------------------

|0AE9B5| SEP #$30

|0AE9B7| LDA.w $0210
|0AE9BA| BNE .ignore_input

|0AE9BC| LDA.b $F0
|0AE9BE| AND.b #$0C
|0AE9C0| BNE .pressed_up_or_down

;---------------------------------------------------------------------------------------------------

.ignore_input
|0AE9C2| JMP.w .proceed_to_exit

;---------------------------------------------------------------------------------------------------

.pressed_up_or_down
|0AE9C5| STA.b $0A

|0AE9C7| STZ.w $020F

|0AE9CA| AND.b #$08
|0AE9CC| BEQ .didnt_press_up

;---------------------------------------------------------------------------------------------------

|0AE9CE| REP #$30

|0AE9D0| LDX.w $040C

|0AE9D3| LDA.w DungeonMapFloorCountData,X
|0AE9D6| AND.w #$00F0

|0AE9D9| LSR A ; /16
|0AE9DA| LSR A
|0AE9DB| LSR A
|0AE9DC| LSR A

|0AE9DD| DEC A
|0AE9DE| CMP.w $020E
|0AE9E1| BNE .continue_a

|0AE9E3| JMP.w .proceed_to_exit

;---------------------------------------------------------------------------------------------------

.continue_a
|0AE9E6| INC.w $020E

|0AE9E9| LDA.b $06
|0AE9EB| SEC
|0AE9EC| SBC.w #$0300
|0AE9EF| AND.w #$0FFF
|0AE9F2| STA.b $06

|0AE9F4| BRA .continue_b

;---------------------------------------------------------------------------------------------------

.didnt_press_up
|0AE9F6| REP #$30

|0AE9F8| LDX.w $040C

|0AE9FB| LDA.w DungeonMapFloorCountData,X
|0AE9FE| AND.w #$000F
|0AEA01| EOR.w #$00FF

|0AEA04| INC A
|0AEA05| INC A
|0AEA06| AND.w #$00FF

|0AEA09| CMP.w $020E
|0AEA0C| BEQ .proceed_to_exit

|0AEA0E| DEC.w $020E
|0AEA11| DEC.w $020E

|0AEA14| LDA.b $06
|0AEA16| CLC
|0AEA17| ADC.w #$0600
|0AEA1A| AND.w #$0FFF
|0AEA1D| STA.b $06

;---------------------------------------------------------------------------------------------------

.continue_b
|0AEA1F| SEP #$20

|0AEA21| LDA.w $020E
|0AEA24| CMP.b $A4
|0AEA26| BNE .useless_floor_level_check

|0AEA28| REP #$20

|0AEA2A| BRA .check_useless_property

.useless_floor_level_check
|0AEA2C| BMI .useless_bitmode_branch ; [USELESS] this and the BRA that follows could just go.

|0AEA2E| REP #$20

|0AEA30| BRA .check_useless_property

;---------------------------------------------------------------------------------------------------

.useless_bitmode_branch
|0AEA32| REP #$20

.check_useless_property
|0AEA34| LDA.w $020E
|0AEA37| AND.w #$0080
|0AEA3A| BNE .useless_property_change

|0AEA3C| LDA.w #$EFFF
|0AEA3F| STA.b $08

|0AEA41| BRA .ignore_useless_property_change

.useless_property_change
|0AEA43| LDA.w #$EFFF
|0AEA46| STA.b $08

.ignore_useless_property_change
|0AEA48| SEP #$20

|0AEA4A| JSR DungeonMap_DrawFloorNumbersByRoom
|0AEA4D| JSR DungeonMap_DrawBorderForRooms
|0AEA50| JSR DungeonMap_DrawDungeonLayout

|0AEA53| SEP #$20

|0AEA55| INC.w $0210

|0AEA58| LDA.b $0A
|0AEA5A| AND.b #$08
|0AEA5C| LSR A
|0AEA5D| LSR A
|0AEA5E| TAX

|0AEA5F| REP #$30

|0AEA61| LDA.b $E8
|0AEA63| CLC
|0AEA64| ADC.w DungeonMap_PanValues,X
|0AEA67| STA.w $0213

|0AEA6A| LDA.b $0A
|0AEA6C| AND.w #$0008
|0AEA6F| BNE .pressed_up

|0AEA71| LDA.b $06
|0AEA73| SEC
|0AEA74| SBC.w #$0300
|0AEA77| AND.w #$0FFF
|0AEA7A| STA.b $06

|0AEA7C| INC.w $020E

;---------------------------------------------------------------------------------------------------

.pressed_up
|0AEA7F| SEP #$20

|0AEA81| LDA.b #$08
|0AEA83| STA.b $17

.proceed_to_exit
|0AEA85| BRA EXIT_0AEABF

;===================================================================================================

pool DungeonMap_ScrollFloors

.speed_bg
|0AEA87| dw   4 ; down
|0AEA89| dw  -4 ; up

.speed_sprites
|0AEA8B| dw  -4 ; down
|0AEA8D| dw   4 ; up

endpool

;---------------------------------------------------------------------------------------------------

DungeonMap_ScrollFloors:
|0AEA8F| REP #$30

|0AEA91| LDA.b $0A
|0AEA93| AND.w #$0008
|0AEA96| LSR A
|0AEA97| LSR A
|0AEA98| TAX

|0AEA99| LDA.w $0217
|0AEA9C| CLC
|0AEA9D| ADC.w .speed_sprites,X
|0AEAA0| STA.w $0217

|0AEAA3| LDA.w $0FAA
|0AEAA6| CLC
|0AEAA7| ADC.w .speed_sprites,X
|0AEAAA| STA.w $0FAA

|0AEAAD| LDA.b $E8
|0AEAAF| CLC
|0AEAB0| ADC.w .speed_bg,X
|0AEAB3| STA.b $E8

|0AEAB5| CMP.w $0213
|0AEAB8| BNE EXIT_0AEABF

|0AEABA| SEP #$20

|0AEABC| STZ.w $0210

;---------------------------------------------------------------------------------------------------

#EXIT_0AEABF:
|0AEABF| SEP #$30

|0AEAC1| RTL

;===================================================================================================

DungeonMap_DrawSprites:
|0AEAC2| PHB
|0AEAC3| PHK
|0AEAC4| PLB

|0AEAC5| REP #$10

|0AEAC7| LDX.w $040C

|0AEACA| LDA.w DungeonMapFloorCountData,X

|0AEACD| AND.b #$0F
|0AEACF| STA.b $02

|0AEAD1| CLC
|0AEAD2| ADC.b $A4
|0AEAD4| STA.b $01
|0AEAD6| STA.b $03

;---------------------------------------------------------------------------------------------------

|0AEAD8| SEP #$10

|0AEADA| STZ.b $00
|0AEADC| STZ.b $0E

|0AEADE| JSR DungeonMap_DrawLinkPointing

|0AEAE1| INC.b $00

.next_marker
|0AEAE3| JSR DungeonMap_DrawLocationMarker

|0AEAE6| INC.b $0E

|0AEAE8| LDA.b $00
|0AEAEA| CMP.b #$09
|0AEAEC| BNE .next_marker

|0AEAEE| JSR DungeonMap_DrawBlinkingIndicator

|0AEAF1| INC.b $00

|0AEAF3| JSR DungeonMap_DrawBossIcon
|0AEAF6| JSR DungeonMap_DrawFloorNumberObjects
|0AEAF9| JSR DungeonMap_DrawFloorBlinker

|0AEAFC| PLB

|0AEAFD| RTL

;===================================================================================================

LinkPointingPositionX:
|0AEAFE| db $19

BossIconPositionY:
|0AEAFF| db $4C

;===================================================================================================

DungeonMap_DrawLinkPointing:
|0AEB00| REP #$10

|0AEB02| LDA.b #$04
|0AEB04| SEC
|0AEB05| SBC.b $02
|0AEB07| BMI .y_offset_done

|0AEB09| CLC
|0AEB0A| ADC.b $03
|0AEB0C| STA.b $03

|0AEB0E| LDA.w DungeonMapFloorCountData,X

|0AEB11| LSR A ; /16
|0AEB12| LSR A
|0AEB13| LSR A
|0AEB14| LSR A

|0AEB15| SEC
|0AEB16| SBC.b #$04
|0AEB18| BMI .y_offset_done

|0AEB1A| SEC
|0AEB1B| SBC.b $03

|0AEB1D| EOR.b #$FF
|0AEB1F| INC A
|0AEB20| STA.b $03

;---------------------------------------------------------------------------------------------------

.y_offset_done
|0AEB22| SEP #$10

|0AEB24| LDX.b $00

|0AEB26| LDA.b #$02
|0AEB28| STA.w $0A20,X

|0AEB2B| TXA
|0AEB2C| ASL A
|0AEB2D| ASL A
|0AEB2E| TAX

|0AEB2F| LDA.w LinkPointingPositionX
|0AEB32| STA.w $0800,X

|0AEB35| LDY.b $03

|0AEB37| LDA.w FloorIconOffsetY,Y
|0AEB3A| SEC
|0AEB3B| SBC.b #$04

|0AEB3D| STA.w $0801,X
|0AEB40| STZ.w $0802,X

|0AEB43| LDA.b #$3E

|0AEB45| LDY.w $0ABD
|0AEB48| BEQ .set_priority

|0AEB4A| LDA.b #$30

.set_priority
|0AEB4C| STA.w $0803,X

|0AEB4F| RTS

;===================================================================================================

pool DungeonMap_DrawBlinkingIndicator

.tile
|0AEB50| db $34, $35, $36, $34
|0AEB54| db $31, $32, $33, $32

.prop
|0AEB58| db $39, $3B, $3D, $3B
|0AEB5C| db $3B, $3B, $3B, $3B

endpool

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawBlinkingIndicator:
|0AEB60| LDX.b $00

|0AEB62| LDA.b #$00
|0AEB64| STA.w $0A20,X

|0AEB67| TXA
|0AEB68| ASL A
|0AEB69| ASL A
|0AEB6A| TAX

|0AEB6B| LDA.w $0215
|0AEB6E| SEC
|0AEB6F| SBC.b #$03
|0AEB71| STA.w $0800,X

;---------------------------------------------------------------------------------------------------

|0AEB74| LDA.w $0218
|0AEB77| BEQ .on_screen

|0AEB79| LDA.b #$F0
|0AEB7B| BRA .continue

.on_screen
|0AEB7D| LDA.w $0217

;---------------------------------------------------------------------------------------------------

.continue
|0AEB80| SEC
|0AEB81| SBC.b #$03
|0AEB83| STA.w $0801,X

|0AEB86| LDA.b $1A
|0AEB88| AND.b #$0C
|0AEB8A| LSR A
|0AEB8B| LSR A
|0AEB8C| TAY

|0AEB8D| LDA.w .tile
|0AEB90| STA.w $0802,X

|0AEB93| LDA.w .prop,Y
|0AEB96| STA.w $0803,X

|0AEB99| RTS

;===================================================================================================

pool DungeonMap_DrawLocationMarker

.offset_x
|0AEB9A| db  -9 ; top left
|0AEB9B| db   8 ; top right
|0AEB9C| db  -9 ; bottom left
|0AEB9D| db   8 ; bottom right

.offset_y
|0AEB9E| db  -8 ; top left
|0AEB9F| db  -8 ; top right
|0AEBA0| db   9 ; bottom left
|0AEBA1| db   9 ; bottom right

.props
|0AEBA2| db $F1 ; top left
|0AEBA3| db $B1 ; top right
|0AEBA4| db $71 ; bottom left
|0AEBA5| db $31 ; bottom right

.palette_flash
|0AEBA6| db $0C, $0C
|0AEBA8| db $08, $0A

.unsued
|0AEBAA| dw $0000, $0060, $00C0, $0120
|0AEBB2| dw $0180, $01E0, $0240

endpool

;---------------------------------------------------------------------------------------------------

DungeonMap_DrawLocationMarker:
|0AEBB8| LDY.b #$03

.next_object
|0AEBBA| LDA.b $00
|0AEBBC| TAX

|0AEBBD| LDA.b #$02
|0AEBBF| STA.w $0A20,X

|0AEBC2| TXA
|0AEBC3| ASL A
|0AEBC4| ASL A
|0AEBC5| TAX

|0AEBC6| LDA.w $0215
|0AEBC9| AND.b #$F0
|0AEBCB| CLC
|0AEBCC| ADC.w .offset_x,Y
|0AEBCF| STA.w $0800,X

|0AEBD2| PHY

|0AEBD3| LDA.b $0E
|0AEBD5| ASL A
|0AEBD6| TAY

|0AEBD7| LDA.w $0CF5
|0AEBDA| CLC
|0AEBDB| ADC.w DungeonMapRoomMarkerYBase,Y
|0AEBDE| STA.b $0F

|0AEBE0| PLY

|0AEBE1| CLC
|0AEBE2| ADC.w .offset_y,Y
|0AEBE5| STA.w $0801,X

|0AEBE8| STZ.w $0802,X

|0AEBEB| LDA.w .props,Y
|0AEBEE| STA.b $0C

|0AEBF0| PHY

|0AEBF1| LDA.b $1A
|0AEBF3| LSR A
|0AEBF4| LSR A
|0AEBF5| AND.b #$01
|0AEBF7| TAY

|0AEBF8| INC.b $0F

|0AEBFA| LDA.w $0217
|0AEBFD| INC A
|0AEBFE| AND.b #$F0
|0AEC00| CMP.b $0F
|0AEC02| BNE .use_set_a

|0AEC04| LDA.w $0218
|0AEC07| BNE .use_set_a

|0AEC09| INY
|0AEC0A| INY

.use_set_a
|0AEC0B| LDA.b $0C
|0AEC0D| ORA.w .palette_flash,Y
|0AEC10| STA.w $0803,X

|0AEC13| PLY

|0AEC14| INC.b $00

|0AEC16| DEY
|0AEC17| BPL .next_object

|0AEC19| RTS

;===================================================================================================

DungeonMap_DrawFloorNumberObjects:
|0AEC1A| REP #$10

|0AEC1C| LDX.w $040C

|0AEC1F| LDA.w DungeonMapFloorCountData,X
|0AEC22| PHA

; floors above ground
|0AEC23| LSR A
|0AEC24| LSR A
|0AEC25| LSR A
|0AEC26| LSR A
|0AEC27| STA.b $02

; floors below ground
|0AEC29| PLA
|0AEC2A| AND.b #$0F
|0AEC2C| STA.b $03

|0AEC2E| SEP #$10

|0AEC30| LDY.b #$07

; if 8 floors total, just go
|0AEC32| LDA.b $02
|0AEC34| CLC
|0AEC35| ADC.b $03
|0AEC37| CMP.b #$08
|0AEC39| BEQ .start_draw

; if >=4 above, just go
|0AEC3B| LDA.b $02
|0AEC3D| CMP.b #$04
|0AEC3F| BPL .start_draw

|0AEC41| DEY

|0AEC42| LDX.b #$03
|0AEC44| STX.b $04

.count_floors_above
|0AEC46| CMP.b $04
|0AEC48| BEQ .done_floors_above

|0AEC4A| DEY
|0AEC4B| DEC.b $04
|0AEC4D| BNE .count_floors_above

.done_floors_above
|0AEC4F| LDA.b $03
|0AEC51| CMP.b #$05
|0AEC53| BMI .start_draw

|0AEC55| LDX.b #$05
|0AEC57| STX.b $04

.count_floors_below
|0AEC59| CMP.b $04
|0AEC5B| BEQ .start_draw

|0AEC5D| INY

|0AEC5E| INC.b $04
|0AEC60| CMP.b #$08
|0AEC62| BNE .count_floors_below

;---------------------------------------------------------------------------------------------------

.start_draw
|0AEC64| LDA.w FloorIconOffsetY,Y
|0AEC67| INC A
|0AEC68| STA.b $04

|0AEC6A| DEC.b $02

|0AEC6C| LDA.b $03
|0AEC6E| EOR.b #$FF
|0AEC70| INC A
|0AEC71| STA.b $03

;---------------------------------------------------------------------------------------------------

.next
|0AEC73| LDX.b $00

|0AEC75| LDA.b #$00
|0AEC77| STA.w $0A20,X
|0AEC7A| STA.w $0A21,X

|0AEC7D| TXA
|0AEC7E| ASL A
|0AEC7F| ASL A
|0AEC80| TAX

|0AEC81| LDA.b #$30
|0AEC83| STA.w $0800,X

|0AEC86| LDA.b #$38
|0AEC88| STA.w $0804,X

|0AEC8B| LDA.b $04
|0AEC8D| STA.w $0801,X
|0AEC90| STA.w $0805,X

|0AEC93| CLC
|0AEC94| ADC.b #$10
|0AEC96| STA.b $04

|0AEC98| LDA.b #$3D
|0AEC9A| STA.w $0803,X
|0AEC9D| STA.w $0807,X

|0AECA0| LDA.b #$1C
|0AECA2| STA.w $0802,X

|0AECA5| LDA.b #$1D
|0AECA7| STA.w $0806,X

|0AECAA| LDY.b $02
|0AECAC| BMI .negative

|0AECAE| LDA.w FloorNumberOAMChar,Y
|0AECB1| STA.w $0802,X

|0AECB4| BRA .to_next

.negative
|0AECB6| TYA
|0AECB7| EOR.b #$FF
|0AECB9| TAY

|0AECBA| LDA.w FloorNumberOAMChar,Y
|0AECBD| STA.w $0806,X

.to_next
|0AECC0| INC.b $00
|0AECC2| INC.b $00

|0AECC4| DEC.b $02

|0AECC6| LDA.b $02
|0AECC8| INC A
|0AECC9| CMP.b $03
|0AECCB| BNE .next

|0AECCD| RTS

;===================================================================================================

FloorIconOffsetY:
|0AECCE| db $BB ; distance scrolled indexes this table
|0AECCF| db $AB
|0AECD0| db $9B
|0AECD1| db $8B
|0AECD2| db $7B
|0AECD3| db $6B
|0AECD4| db $5B
|0AECD5| db $4B

;---------------------------------------------------------------------------------------------------

FloorNumberOAMChar:
|0AECD6| db $1E ; 1
|0AECD7| db $1F ; 2
|0AECD8| db $20 ; 3
|0AECD9| db $21 ; 4
|0AECDA| db $22 ; 5
|0AECDB| db $23 ; 6
|0AECDC| db $24 ; 7
|0AECDD| db $25 ; 8

;---------------------------------------------------------------------------------------------------

FloorNumberBlinkProps:
|0AECDE| db $3D

;===================================================================================================

DungeonMap_DrawFloorBlinker:
|0AECDF| LDA.b $00
|0AECE1| STA.b $05

|0AECE3| LDA.w $020E
|0AECE6| STA.b $03

|0AECE8| LDY.b #$00

|0AECEA| REP #$10

|0AECEC| LDX.w $040C

; floors above ground
|0AECEF| LDA.w DungeonMapFloorCountData,X
|0AECF2| LSR A ; /16
|0AECF3| LSR A
|0AECF4| LSR A
|0AECF5| LSR A
|0AECF6| STA.b $02

|0AECF8| LDA.w DungeonMapFloorCountData,X
|0AECFB| AND.b #$0F

|0AECFD| SEP #$10

|0AECFF| CLC
|0AED00| ADC.b $02
|0AED02| CMP.b #$01
|0AED04| BEQ .has_floors

|0AED06| INC.b $05
|0AED08| INC.b $05

|0AED0A| DEC.b $03

|0AED0C| LDY.b #$01

.has_floors
|0AED0E| STY.b $02

;---------------------------------------------------------------------------------------------------

.next_check
|0AED10| LDX.b $02

|0AED12| LDA.w FloorNumberBlinkProps
|0AED15| STA.b $0E,X

|0AED17| REP #$10

|0AED19| LDX.w $040C

|0AED1C| LDA.w DungeonMapFloorCountData,X
|0AED1F| AND.b #$0F
|0AED21| STA.b $01

|0AED23| CLC
|0AED24| ADC.b $03
|0AED26| STA.b $00

|0AED28| LDA.b #$04
|0AED2A| SEC
|0AED2B| SBC.b $01
|0AED2D| BMI .to_next

|0AED2F| CLC
|0AED30| ADC.b $00
|0AED32| STA.b $00

|0AED34| LDA.w DungeonMapFloorCountData,X
|0AED37| LSR A ; /16
|0AED38| LSR A
|0AED39| LSR A
|0AED3A| LSR A
|0AED3B| SEC
|0AED3C| SBC.b #$04
|0AED3E| BMI .to_next

|0AED40| SEC
|0AED41| SBC.b $00
|0AED43| EOR.b #$FF
|0AED45| INC A
|0AED46| STA.b $00

.to_next
|0AED48| SEP #$10

|0AED4A| DEC.b $05
|0AED4C| DEC.b $05

|0AED4E| INC.b $03

|0AED50| DEC.b $02
|0AED52| BMI .check_for_blinking

|0AED54| BRL .next_check

;---------------------------------------------------------------------------------------------------

.check_for_blinking
|0AED57| LDA.b $1A
|0AED59| AND.b #$10
|0AED5B| BNE .blink_on

|0AED5D| RTS

;---------------------------------------------------------------------------------------------------

.oam_data_offset
|0AED5E| db $00, $08

.char
|0AED60| db $37, $38, $38, $37

;---------------------------------------------------------------------------------------------------
; Draws 8 objects for each floor level box to highlight
;---------------------------------------------------------------------------------------------------
.blink_on
|0AED64| LDY.b $00

|0AED66| LDA.w FloorIconOffsetY,Y
|0AED69| SEC
|0AED6A| SBC.b #$04
|0AED6C| STA.b $02

|0AED6E| CLC
|0AED6F| ADC.b #$10
|0AED71| STA.b $03

|0AED73| LDY.b #$00

|0AED75| REP #$10

|0AED77| LDX.w $040C

|0AED7A| LDA.w DungeonMapFloorCountData,X
|0AED7D| LSR A ; /16
|0AED7E| LSR A
|0AED7F| LSR A
|0AED80| LSR A
|0AED81| STA.b $0D

|0AED83| LDA.w DungeonMapFloorCountData,X
|0AED86| AND.b #$0F

|0AED88| SEP #$10

|0AED8A| CLC
|0AED8B| ADC.b $0D
|0AED8D| CMP.b #$01
|0AED8F| BEQ .only_one_floor

|0AED91| LDY.b #$01

.only_one_floor
|0AED93| STY.b $0D

;---------------------------------------------------------------------------------------------------

.next_floor_box
|0AED95| LDA.b #$28
|0AED97| STA.b $01

|0AED99| LDA.b #$03
|0AED9B| STA.b $0C

|0AED9D| LDX.b $0D

|0AED9F| LDA.w .oam_data_offset,X
|0AEDA2| TAY

.next_highlight
|0AEDA3| LDA.b #$00
|0AEDA5| STA.w $0A60,Y
|0AEDA8| STA.w $0A64,Y

|0AEDAB| PHY

|0AEDAC| TYA
|0AEDAD| ASL A
|0AEDAE| ASL A
|0AEDAF| TAY

|0AEDB0| LDA.b $01
|0AEDB2| STA.w $0900,Y
|0AEDB5| STA.w $0910,Y

|0AEDB8| LDA.b $02,X
|0AEDBA| STA.w $0901,Y

|0AEDBD| CLC
|0AEDBE| ADC.b #$08
|0AEDC0| STA.w $0911,Y

|0AEDC3| PHX

|0AEDC4| LDX.b $0C

|0AEDC6| LDA.w .char,X
|0AEDC9| STA.w $0902,Y
|0AEDCC| STA.w $0912,Y

|0AEDCF| PLX

|0AEDD0| PHY

|0AEDD1| LDA.b $0E,X

|0AEDD3| LDY.b $0C
|0AEDD5| BNE .no_hflip

|0AEDD7| ORA.b #$40

.no_hflip
|0AEDD9| PLY
|0AEDDA| STA.w $0903,Y

|0AEDDD| ORA.b #$80
|0AEDDF| STA.w $0913,Y

|0AEDE2| PLY
|0AEDE3| INY

|0AEDE4| LDA.b $01
|0AEDE6| CLC
|0AEDE7| ADC.b #$08
|0AEDE9| STA.b $01

|0AEDEB| DEC.b $0C
|0AEDED| BPL .next_highlight

|0AEDEF| DEC.b $0D
|0AEDF1| BPL .next_floor_box

|0AEDF3| RTS

;===================================================================================================

DungeonMap_DrawBossIcon:
|0AEDF4| REP #$10

|0AEDF6| LDX.w $040C

|0AEDF9| REP #$20

|0AEDFB| PHX

|0AEDFC| LDA.w DungeonMapBossRooms,X
|0AEDFF| ASL A
|0AEE00| TAX

|0AEE01| SEP #$20

|0AEE03| LDA.l $7EF001,X
|0AEE07| PLX

|0AEE08| AND.b #$08
|0AEE0A| BNE .exit_a

|0AEE0C| REP #$20

|0AEE0E| LDA.l $7EF364
|0AEE12| AND.l BitMasks,X

|0AEE16| SEP #$20

|0AEE18| BEQ .exit_a

|0AEE1A| LDA.w DungeonMap_BossRoomFloor+1,X
|0AEE1D| BPL .draw_a_skull

.exit_a
|0AEE1F| SEP #$10

|0AEE21| RTS

;---------------------------------------------------------------------------------------------------

.draw_a_skull
|0AEE22| PHX

|0AEE23| JSR DungeonMap_DrawBossIconByFloor

|0AEE26| PLX

|0AEE27| SEP #$10

|0AEE29| LDA.b $1A
|0AEE2B| AND.b #$0F
|0AEE2D| CMP.b #$0A
|0AEE2F| BCS .exit_b

;---------------------------------------------------------------------------------------------------

|0AEE31| LDY.b $00

|0AEE33| LDA.b #$00
|0AEE35| STA.w $0A20,Y

|0AEE38| TYA
|0AEE39| ASL A
|0AEE3A| ASL A
|0AEE3B| TAY

|0AEE3C| LDA.w .offsets+1,X
|0AEE3F| CLC
|0AEE40| ADC.w $0FA8

|0AEE43| CLC
|0AEE44| ADC.b #$90
|0AEE46| STA.w $0800,Y

|0AEE49| LDA.w $0FAB
|0AEE4C| BEQ .on_screen

|0AEE4E| LDA.b #$F0
|0AEE50| BRA .continue

;---------------------------------------------------------------------------------------------------

.on_screen
|0AEE52| LDA.w .offsets+0,X
|0AEE55| CLC
|0AEE56| ADC.w $0FAA

.continue
|0AEE59| STA.w $0801,Y

|0AEE5C| LDA.w DungeonMap_BossSkull_char
|0AEE5F| STA.w $0802,Y

|0AEE62| LDA.w DungeonMap_BossSkull_prop
|0AEE65| STA.w $0803,Y

|0AEE68| INC.b $00

.exit_b
|0AEE6A| RTS

;===================================================================================================

#DungeonMap_BossSkull_char:
|0AEE6B| db $31

#DungeonMap_BossSkull_prop:
|0AEE6C| db $33

;===================================================================================================

.offsets
|0AEE6D| db $FF, $FF, $FF, $FF
|0AEE71| db $08, $08, $08, $00
|0AEE75| db $00, $00, $08, $00
|0AEE79| db $08, $08, $08, $00
|0AEE7D| db $08, $08, $00, $08
|0AEE81| db $04, $04, $08, $08
|0AEE85| db $08, $00, $08, $00

;===================================================================================================

DungeonMap_BossRoomFloor:
|0AEE89| dw $FFFF ; // - Sewers
|0AEE8B| dw $FFFF ; // - Hyrule Castle
|0AEE8D| dw $0001 ; 2F - Eastern Palace
|0AEE8F| dw $0001 ; 2F - Desert Palace
|0AEE91| dw $0006 ; 7F - Agahnim's Tower
|0AEE93| dw $00FF ; B1 - Swamp Palace
|0AEE95| dw $00FF ; B1 - Palace of Darkness
|0AEE97| dw $00FF ; B1 - Misery Mire
|0AEE99| dw $00FE ; B2 - Skull Woods
|0AEE9B| dw $00F9 ; B7 - Ice Palace
|0AEE9D| dw $0005 ; 6F - Tower of Hera
|0AEE9F| dw $00FF ; B1 - Thieves' Town
|0AEEA1| dw $00FD ; B3 - Turtle Rock
|0AEEA3| dw $0006 ; 7F - Ganon's Tower

;===================================================================================================

DungeonMap_DrawBossIconByFloor:
|0AEEA5| LDA.w DungeonMapFloorCountData,X
|0AEEA8| AND.b #$0F
|0AEEAA| STA.b $02

|0AEEAC| CLC
|0AEEAD| ADC.w DungeonMap_BossRoomFloor+0,X
|0AEEB0| STA.b $03

|0AEEB2| LDA.b #$04
|0AEEB4| SEC
|0AEEB5| SBC.b $02
|0AEEB7| BMI .floor_is_fine

|0AEEB9| CLC
|0AEEBA| ADC.b $03
|0AEEBC| STA.b $03

|0AEEBE| LDA.w DungeonMapFloorCountData,X

|0AEEC1| LSR A ; /16
|0AEEC2| LSR A
|0AEEC3| LSR A
|0AEEC4| LSR A

|0AEEC5| SEC
|0AEEC6| SBC.b #$04
|0AEEC8| BMI .floor_is_fine

|0AEECA| SEC
|0AEECB| SBC.b $03

|0AEECD| EOR.b #$FF
|0AEECF| INC A
|0AEED0| STA.b $03

;---------------------------------------------------------------------------------------------------

.floor_is_fine
|0AEED2| SEP #$10

|0AEED4| LDA.b $1A
|0AEED6| AND.b #$0F
|0AEED8| CMP.b #$0A
|0AEEDA| BCS .exit

|0AEEDC| LDX.b $00

|0AEEDE| LDA.b #$00
|0AEEE0| STA.w $0A20,X

|0AEEE3| TXA
|0AEEE4| ASL A
|0AEEE5| ASL A
|0AEEE6| TAX

|0AEEE7| LDA.w BossIconPositionY
|0AEEEA| STA.w $0800,X

|0AEEED| LDY.b $03

|0AEEEF| LDA.w FloorIconOffsetY,Y
|0AEEF2| STA.w $0801,X

|0AEEF5| LDA.w DungeonMap_BossSkull_char
|0AEEF8| STA.w $0802,X

|0AEEFB| LDA.w DungeonMap_BossSkull_prop
|0AEEFE| STA.w $0803,X

|0AEF01| INC.b $00

.exit
|0AEF03| REP #$10

|0AEF05| RTS

;===================================================================================================
; Appears completely unused
;===================================================================================================
Module0E_03_04_UnusedCrazyScroll:
|0AEF06| REP #$30

|0AEF08| LDA.w $0213
|0AEF0B| CLC
|0AEF0C| ADC.b $E8
|0AEF0E| STA.b $E8

|0AEF10| LDA.w $0213
|0AEF13| EOR.w #$FFFF
|0AEF16| INC A

|0AEF17| CLC
|0AEF18| ADC.w $0217
|0AEF1B| STA.w $0217

|0AEF1E| SEP #$30

|0AEF20| DEC.w $0205
|0AEF23| BNE .exit

|0AEF25| DEC.w $0200

.exit
|0AEF28| RTL

;===================================================================================================

UnderworldMap_RecoverGFX:
|0AEF29| LDA.b $9B
|0AEF2B| PHA

|0AEF2C| STZ.w HDMAEN
|0AEF2F| STZ.b $9B

|0AEF31| JSL EraseTilemaps_normal

;---------------------------------------------------------------------------------------------------

|0AEF35| LDA.l $7EC211
|0AEF39| STA.b $1C

|0AEF3B| LDA.l $7EC212
|0AEF3F| STA.l $00001D

|0AEF43| LDA.l $7EC20E
|0AEF47| STA.w $0AA1

|0AEF4A| LDA.l $7EC20F
|0AEF4E| STA.w $0AA3

|0AEF51| LDA.l $7EC210
|0AEF55| STA.w $0AA2

|0AEF58| JSL InitializeTilesets

|0AEF5C| STZ.w $0AA9
|0AEF5F| STZ.w $0AB2

|0AEF62| JSL RebuildHUD_long2

|0AEF66| STZ.w $0418
|0AEF69| STZ.w $045C

.next_quadrant
|0AEF6C| JSL BuildBG1QuadrantForUpload
|0AEF70| JSL NMI_UploadTilemap_long

|0AEF74| JSL BuildBG2QuadrantForUpload
|0AEF78| JSL NMI_UploadTilemap_long

|0AEF7C| LDA.w $045C
|0AEF7F| CMP.b #$10
|0AEF81| BNE .next_quadrant

|0AEF83| STZ.b $17
|0AEF85| STZ.b $B0

|0AEF87| PLA
|0AEF88| STA.b $9B

;---------------------------------------------------------------------------------------------------

|0AEF8A| REP #$20

|0AEF8C| LDX.b #$00

.copy_next_color
|0AEF8E| LDA.l $7FDD80,X
|0AEF92| STA.l $7EC500,X

|0AEF96| LDA.l $7FDE00,X
|0AEF9A| STA.l $7EC580,X

|0AEF9E| LDA.l $7FDE80,X
|0AEFA2| STA.l $7EC600,X

|0AEFA6| LDA.l $7FDF00,X
|0AEFAA| STA.l $7EC680,X

|0AEFAE| INX
|0AEFAF| INX
|0AEFB0| CPX.b #$80
|0AEFB2| BNE .copy_next_color

;---------------------------------------------------------------------------------------------------

|0AEFB4| SEP #$20

|0AEFB6| LDA.l $7EC017
|0AEFBA| TSB.b $9C
|0AEFBC| TSB.b $9D
|0AEFBE| TSB.b $9E

|0AEFC0| LDA.b #$10 ; SFX3.10
|0AEFC2| STA.w $012F

|0AEFC5| LDA.b #$F3 ; SONG F3 - max volume
|0AEFC7| STA.w $012C

|0AEFCA| JSL RecoverPegGFXFromMapping

|0AEFCE| INC.b $15
|0AEFD0| INC.w $0200

|0AEFD3| STZ.b $13
|0AEFD5| STZ.w $0710

|0AEFD8| RTL

;===================================================================================================

ToggleStarTilesAndAdvance:
|0AEFD9| JSL ToggleStarTileGraphics

|0AEFDD| INC.w $0200

|0AEFE0| RTL

;===================================================================================================
; Tiles to use for gradient fill
;===================================================================================================
DungeonMap_BackdropFloorGradientTiles:
|0AEFE1| dw $1B28, $1B29, $1B2A, $1B2B, $1B2C, $1B2D, $1B2E

;===================================================================================================
; Some good ol stripes for the mountain backdrop
;===================================================================================================
DungeonMap_MountainStripes:
|0AEFEF| dw $AA10, $0100 ; VRAM $2154 | 2 bytes | Horizontal
|0AEFF3| dw $1B2F

|0AEFF5| dw $C910, $0300 ; VRAM $2192 | 4 bytes | Horizontal
|0AEFF9| dw $1B2F, $1B2E

|0AEFFD| dw $E510, $0B00 ; VRAM $21CA | 12 bytes | Horizontal
|0AF001| dw $1B2F, $1B2E, $5B2F, $1B2F, $1B2E, $1B2E

|0AF00D| dw $0311, $0100 ; VRAM $2206 | 2 bytes | Horizontal
|0AF011| dw $1B2F

|0AF013| dw $0411, $0C40 ; VRAM $2208 | 14 bytes | Fixed horizontal
|0AF017| dw $1B2E

;===================================================================================================
; Which characters to draw for which quadrant
;===================================================================================================
DungeonMap_RoomTemplates:

;---------------------------------------------------------------------------------------------------
; Sewers
;---------------------------------------------------------------------------------------------------
|0AF019| dw $0B61, $5361, $8B61, $8B62 ; 0x00 - ROOM 0011
|0AF021| dw $0B60, $0B63, $8B60, $0B64 ; 0x01 - ROOM 0021
|0AF029| dw $0B00, $0B00, $0B65, $0B66 ; 0x02 - ROOM 0022
|0AF031| dw $0B67, $4B67, $9367, $D367 ; 0x03 - ROOM 0032
|0AF039| dw $0B60, $5360, $8B60, $CB60 ; 0x04 - ROOM 0002
|0AF041| dw $0B6A, $4B6A, $4B6D, $0B6D ; 0x05 - ROOM 0012
|0AF049| dw $1368, $1369, $0B00, $0B00 ; 0x06 - ROOM 0042
|0AF051| dw $0B6A, $136B, $0B6C, $0B6D ; 0x07 - ROOM 0041

;---------------------------------------------------------------------------------------------------
; Hyrule Castle
;---------------------------------------------------------------------------------------------------
|0AF059| dw $136E, $4B6E, $0B00, $0B00 ; 0x08 - ROOM 0080
|0AF061| dw $136F, $0B00, $0B00, $0B00 ; 0x09 - ROOM 0070
|0AF069| dw $1340, $0B00, $0B78, $1744 ; 0x0A - ROOM 0071
|0AF071| dw $536D, $136D, $4B76, $0B76 ; 0x0B - ROOM 0072
|0AF079| dw $0B70, $0B71, $0B72, $8B71 ; 0x0C - ROOM 0081
|0AF081| dw $0B75, $0B76, $8B75, $8B76 ; 0x0D - ROOM 0082
|0AF089| dw $0B00, $0B53, $0B00, $0B55 ; 0x0E - ROOM 0050
|0AF091| dw $1354, $5354, $0B00, $0B00 ; 0x0F - ROOM 0001
|0AF099| dw $4B53, $0B00, $0B56, $0B57 ; 0x10 - ROOM 0052
|0AF0A1| dw $0B00, $0B59, $0B00, $135E ; 0x11 - ROOM 0060
|0AF0A9| dw $135A, $135B, $135F, $535F ; 0x12 - ROOM 0061
|0AF0B1| dw $0B5C, $0B5D, $535E, $CB58 ; 0x13 - ROOM 0062
|0AF0B9| dw $0B50, $4B50, $1352, $5352 ; 0x14 - ROOM 0051

;---------------------------------------------------------------------------------------------------
; Eastern Palace
;---------------------------------------------------------------------------------------------------
|0AF0C1| dw $0B00, $0B40, $1345, $0B46 ; 0x15 - ROOM 0099
|0AF0C9| dw $8B42, $0B47, $0B42, $0B49 ; 0x16 - ROOM 00A8
|0AF0D1| dw $1348, $5348, $174A, $574A ; 0x17 - ROOM 00A9
|0AF0D9| dw $4B47, $CB42, $4B49, $4B42 ; 0x18 - ROOM 00AA
|0AF0E1| dw $0B00, $0B4B, $0B00, $0B4D ; 0x19 - ROOM 00B8
|0AF0E9| dw $0B4C, $4B4C, $0B4E, $4B4E ; 0x1A - ROOM 00B9
|0AF0F1| dw $0B51, $0B44, $0B00, $0B00 ; 0x1B - ROOM 00BA
|0AF0F9| dw $0B4F, $4B4F, $934F, $D34F ; 0x1C - ROOM 00C9
|0AF101| dw $0B00, $0B00, $0B00, $0B40 ; 0x1D - ROOM 00C8
|0AF109| dw $0B00, $0B41, $0B00, $0B42 ; 0x1E - ROOM 00D8
|0AF111| dw $0B00, $0B00, $0B43, $0B43 ; 0x1F - ROOM 00D9
|0AF119| dw $0B00, $0B00, $9344, $0B00 ; 0x20 - ROOM 00DA

;---------------------------------------------------------------------------------------------------
; Desert Palace
;---------------------------------------------------------------------------------------------------
|0AF121| dw $1340, $0B00, $1341, $0B00 ; 0x21 - ROOM 0063
|0AF129| dw $1740, $0B40, $0B42, $0B7D ; 0x22 - ROOM 0073
|0AF131| dw $4B7A, $0B7A, $0B7E, $4B7E ; 0x23 - ROOM 0074
|0AF139| dw $0B40, $8B4D, $4BBA, $0B55 ; 0x24 - ROOM 0076
|0AF141| dw $0B40, $8B55, $1378, $CB53 ; 0x25 - ROOM 0083
|0AF149| dw $4B76, $4B75, $13BB, $53BB ; 0x26 - ROOM 0084
|0AF151| dw $4B7F, $4B42, $0B83, $13BC ; 0x27 - ROOM 0086
|0AF159| dw $0B00, $0B00, $0B79, $0B00 ; 0x28 - ROOM 0033
|0AF161| dw $0B6E, $4B7C, $0B00, $0B41 ; 0x29 - ROOM 0042
|0AF169| dw $1340, $8B55, $0B42, $0B7B ; 0x2A - ROOM 0053

;---------------------------------------------------------------------------------------------------
; Agahnim's Tower
;---------------------------------------------------------------------------------------------------
|0AF171| dw $8B42, $9344, $1341, $0B00 ; 0x2B - ROOM 00E0
|0AF179| dw $0B53, $9344, $8B53, $9344 ; 0x2C - ROOM 00C0/ROOM 00D0
|0AF181| dw $8B42, $9344, $0B42, $9344 ; 0x2D - ROOM 00B0
|0AF189| dw $934D, $0B00, $8B53, $9344 ; 0x2E - ROOM 0040
|0AF191| dw $0B00, $0B00, $0B40, $0B00 ; 0x2F - ROOM 0020
|0AF199| dw $0B41, $0B00, $1384, $0B00 ; 0x30 - ROOM 0030

;---------------------------------------------------------------------------------------------------
; Swamp Palace
;---------------------------------------------------------------------------------------------------
|0AF1A1| dw $0BB8, $13B9, $4B85, $CB7C ; 0x31 - ROOM 0066
|0AF1A9| dw $0B87, $13B0, $4B7B, $9344 ; 0x32 - ROOM 0076
|0AF1B1| dw $0B00, $0B00, $0B40, $0B00 ; 0x33 - ROOM 0006
|0AF1B9| dw $0B91, $5391, $0B9C, $4B9C ; 0x34 - ROOM 0016
|0AF1C1| dw $8B42, $1392, $0B93, $1394 ; 0x35 - ROOM 0026
|0AF1C9| dw $0B95, $0B96, $9395, $8B96 ; 0x36 - ROOM 0034
|0AF1D1| dw $0B97, $0B98, $8B97, $8B98 ; 0x37 - ROOM 0035
|0AF1D9| dw $1799, $5799, $9799, $D799 ; 0x38 - ROOM 0036
|0AF1E1| dw $4B98, $4B97, $CB98, $CB97 ; 0x39 - ROOM 0037
|0AF1E9| dw $937B, $0B00, $0B7B, $0B00 ; 0x3A - ROOM 0038
|0AF1F1| dw $0BA6, $4BA6, $CB7A, $8B7A ; 0x3B - ROOM 0046
|0AF1F9| dw $0B8E, $4B8E, $938E, $CB8E ; 0x3C - ROOM 0054
|0AF201| dw $934D, $0B8F, $1390, $5390 ; 0x3D - ROOM 0028

;---------------------------------------------------------------------------------------------------
; Palace of Darkness
;---------------------------------------------------------------------------------------------------
|0AF209| dw $0B00, $0B00, $0B00, $8B48 ; 0x3E - ROOM 005A
|0AF211| dw $0B00, $934E, $0B00, $8B4D ; 0x3F - ROOM 006A
|0AF219| dw $8B72, $1346, $0B45, $0B46 ; 0x40 - ROOM 000B
|0AF221| dw $5744, $1744, $0B00, $0B00 ; 0x41 - ROOM 000A
|0AF229| dw $134D, $0B00, $8B54, $0B00 ; 0x42 - ROOM 003B
|0AF231| dw $1349, $1349, $0B00, $0B00 ; 0x43 - ROOM 0009
|0AF239| dw $0B4B, $8B48, $0B72, $4B72 ; 0x44 - ROOM 004B
|0AF241| dw $0B00, $0B74, $0B00, $0BB0 ; 0x45 - ROOM 0019
|0AF249| dw $0B71, $1747, $17AF, $0B4B ; 0x46 - ROOM 001A
|0AF251| dw $0B6F, $1370, $0B4B, $0B00 ; 0x47 - ROOM 001B
|0AF259| dw $0B6B, $8B6C, $8B6B, $0BAD ; 0x48 - ROOM 002A
|0AF261| dw $0B73, $0B00, $13AE, $0B46 ; 0x49 - ROOM 002B
|0AF269| dw $176B, $576B, $0B6A, $4B6A ; 0x4A - ROOM 003A
|0AF271| dw $1368, $5368, $1369, $5369 ; 0x4B - ROOM 004A

;---------------------------------------------------------------------------------------------------
; Stray Turtle Rock ROOMs
;---------------------------------------------------------------------------------------------------
|0AF279| dw $8B4E, $0B00, $9354, $0B00 ; 0x4C - ROOM 00D5
|0AF281| dw $0B00, $0B00, $0B00, $5377 ; 0x4D - ROOM 0023

;---------------------------------------------------------------------------------------------------
; Misery Mire
;---------------------------------------------------------------------------------------------------
|0AF289| dw $0B00, $974D, $0B00, $4B7B ; 0x4E - ROOM 0091
|0AF291| dw $0B40, $8B4D, $0B51, $0B8D ; 0x4F - ROOM 0092
|0AF299| dw $537A, $137A, $4B42, $8B40 ; 0x50 - ROOM 0093
|0AF2A1| dw $0B00, $0B00, $0B00, $0B00 ; 0x51 - UNUSED
|0AF2A9| dw $0B00, $0B00, $0B40, $0B00 ; 0x52 - ROOM 0090
|0AF2B1| dw $CB7A, $576E, $0B00, $0B00 ; 0x53 - ROOM 00A0
|0AF2B9| dw $0B6E, $0B9F, $0B00, $4BA5 ; 0x54 - ROOM 00A1
|0AF2C1| dw $13A0, $13A1, $0BA2, $0BA3 ; 0x55 - ROOM 00A2
|0AF2C9| dw $0BA4, $0B00, $0BA5, $0B00 ; 0x56 - ROOM 00A3
|0AF2D1| dw $0B40, $8B55, $0B42, $CB87 ; 0x57 - ROOM 00B1
|0AF2D9| dw $8B95, $0BA7, $8B42, $0BAF ; 0x58 - ROOM 00B2
|0AF2E1| dw $4B78, $0B00, $4B78, $0B00 ; 0x59 - ROOM 00B3
|0AF2E9| dw $8B42, $0B51, $0B78, $8B51 ; 0x5A - ROOM 00C1
|0AF2F1| dw $0BA8, $0BA9, $0BAC, $8BA9 ; 0x5B - ROOM 00C2
|0AF2F9| dw $0BAA, $17AB, $13B4, $8BAB ; 0x5C - ROOM 00C3
|0AF301| dw $17B1, $0B41, $4B44, $4B42 ; 0x5D - ROOM 00D1
|0AF309| dw $0B00, $0BAD, $0B00, $13AE ; 0x5E - ROOM 00D2
|0AF311| dw $1340, $0BB7, $0B42, $0BB6 ; 0x5F - ROOM 0097
|0AF319| dw $0B00, $0B00, $139D, $139E ; 0x60 - ROOM 0098

;---------------------------------------------------------------------------------------------------
; Skull Woods
;---------------------------------------------------------------------------------------------------
|0AF321| dw $0B00, $0B00, $0B00, $0B79 ; 0x61 - ROOM 0029
|0AF329| dw $0B00, $0B00, $8B42, $0B86 ; 0x62 - ROOM 0039
|0AF331| dw $0B42, $8B7B, $8B42, $0B7B ; 0x63 - ROOM 0049
|0AF339| dw $0B87, $8B7B, $9387, $0B7B ; 0x64 - ROOM 0059
|0AF341| dw $0B40, $13B3, $1378, $0B8D ; 0x65 - ROOM 0056
|0AF349| dw $8B42, $0B88, $5378, $0B40 ; 0x66 - ROOM 0057
|0AF351| dw $4B44, $D342, $97B5, $4B78 ; 0x67 - ROOM 0058
|0AF359| dw $13B3, $8B55, $4B7B, $0B8D ; 0x68 - ROOM 0067
|0AF361| dw $0B89, $138A, $0B8B, $0B8C ; 0x69 - ROOM 0068

;---------------------------------------------------------------------------------------------------
; Ice Palace
;---------------------------------------------------------------------------------------------------
|0AF369| dw $0B00, $0B7C, $0B00, $0B00 ; 0x6A - ROOM 00DE
|0AF371| dw $0B00, $9348, $0B00, $0B56 ; 0x6B - ROOM 00BE
|0AF379| dw $0B00, $0B00, $0B88, $0B00 ; 0x6C - ROOM 00BF
|0AF381| dw $0B00, $0B48, $0B00, $0B00 ; 0x6D - ROOM 00CE
|0AF389| dw $0B00, $9348, $1786, $0B65 ; 0x6E - ROOM 009E
|0AF391| dw $0B00, $0B00, $CB5A, $0B00 ; 0x6F - ROOM 009F
|0AF399| dw $0B00, $5388, $0B00, $0B00 ; 0x70 - ROOM 00AE
|0AF3A1| dw $4B5A, $0B00, $0B00, $0B00 ; 0x71 - ROOM 00AF
|0AF3A9| dw $0B00, $CB5B, $13AB, $0BAC ; 0x72 - ROOM 007E
|0AF3B1| dw $CB5A, $0B00, $137E, $0B00 ; 0x73 - ROOM 007F
|0AF3B9| dw $0B00, $137E, $0B00, $0B00 ; 0x74 - ROOM 008E
|0AF3C1| dw $0B00, $8B48, $1783, $1384 ; 0x75 - ROOM 005E
|0AF3C9| dw $0B00, $0B00, $1385, $0B00 ; 0x76 - ROOM 005F
|0AF3D1| dw $0B00, $537E, $0B00, $0B00 ; 0x77 - ROOM 006E
|0AF3D9| dw $0B00, $8B48, $0B43, $CB43 ; 0x78 - ROOM 003E
|0AF3E1| dw $0B00, $0B00, $1379, $137A ; 0x79 - ROOM 003F
|0AF3E9| dw $0B5A, $137B, $0B00, $0B00 ; 0x7A - ROOM 004E
|0AF3F1| dw $0B00, $8B48, $137F, $1380 ; 0x7B - ROOM 001E
|0AF3F9| dw $0B00, $0B00, $1381, $1382 ; 0x7C - ROOM 001F
|0AF401| dw $0B00, $0B48, $0B00, $0B00 ; 0x7D - ROOM 002E
|0AF409| dw $0B00, $0B00, $1387, $1377 ; 0x7E - ROOM 000E

;---------------------------------------------------------------------------------------------------
; Tower of Hera
;---------------------------------------------------------------------------------------------------
|0AF411| dw $5746, $0B47, $1349, $0B48 ; 0x7F - ROOM 0087
|0AF419| dw $1375, $4B42, $174A, $574A ; 0x80 - ROOM 0077
|0AF421| dw $0B43, $1344, $0B45, $1746 ; 0x81 - ROOM 0031
|0AF429| dw $1742, $5742, $8B42, $CB42 ; 0x82 - ROOM 0027
|0AF431| dw $1375, $5375, $8B42, $CB42 ; 0x83 - ROOM 0017
|0AF439| dw $4B40, $1340, $0B41, $4B41 ; 0x84 - ROOM 0007

;---------------------------------------------------------------------------------------------------
; Thieves' Town
;---------------------------------------------------------------------------------------------------
|0AF441| dw $4B46, $0B71, $1786, $8B71 ; 0x85 - ROOM 0044
|0AF449| dw $1347, $0B4D, $0B65, $0B5B ; 0x86 - ROOM 0045
|0AF451| dw $0B00, $0B00, $9348, $0B00 ; 0x87 - ROOM 00AB
|0AF459| dw $0B00, $0B00, $0B00, $8B48 ; 0x88 - ROOM 00AC
|0AF461| dw $4B66, $8B65, $4B5B, $0B65 ; 0x89 - ROOM 00BB
|0AF469| dw $9365, $0B66, $0B63, $8B66 ; 0x8A - ROOM 00BC
|0AF471| dw $4B51, $0B5F, $CB76, $0B60 ; 0x8B - ROOM 00CB
|0AF479| dw $0B64, $4B4F, $4B60, $8B76 ; 0x8C - ROOM 00CC
|0AF481| dw $4B76, $0B61, $D376, $1362 ; 0x8D - ROOM 00DB
|0AF489| dw $4B61, $0B76, $CB58, $8B51 ; 0x8E - ROOM 00DC
|0AF491| dw $0B00, $0B00, $5746, $0B5E ; 0x8F - ROOM 0064
|0AF499| dw $0B00, $0B00, $0B5E, $0B46 ; 0x90 - ROOM 0065

;---------------------------------------------------------------------------------------------------
; Turtle Rock
;---------------------------------------------------------------------------------------------------
|0AF4A1| dw $0B00, $0B00, $8B48, $0B00 ; 0x91 - ROOM 00A4
|0AF4A9| dw $0B4F, $0B51, $CB76, $8B76 ; 0x92 - ROOM 00B4
|0AF4B1| dw $5351, $0B51, $8B4F, $8B51 ; 0x93 - ROOM 00B5
|0AF4B9| dw $4B76, $0B76, $CB51, $8B58 ; 0x94 - ROOM 00C4
|0AF4C1| dw $0B54, $0B00, $8B66, $0B00 ; 0x95 - ROOM 00C5
|0AF4C9| dw $9348, $8B48, $0B56, $4B45 ; 0x96 - ROOM 0004
|0AF4D1| dw $0B00, $0B57, $0B00, $0B59 ; 0x97 - ROOM 0013
|0AF4D9| dw $4B50, $0B58, $CB50, $8B50 ; 0x98 - ROOM 0014
|0AF4E1| dw $5758, $1751, $CB58, $8B51 ; 0x99 - ROOM 0015
|0AF4E9| dw $0B56, $4B56, $0B65, $5756 ; 0x9A - ROOM 0024
|0AF4F1| dw $9348, $8B48, $0B4C, $0B4B ; 0x9B - ROOM 00B6
|0AF4F9| dw $0B4D, $0B00, $8B54, $0B00 ; 0x9C - ROOM 00B7
|0AF501| dw $0B4F, $0B50, $8B4F, $8B50 ; 0x9D - ROOM 00C6
|0AF509| dw $4B50, $0B51, $CB58, $8B51 ; 0x9E - ROOM 00C7
|0AF511| dw $0B52, $0B54, $0B53, $9354 ; 0x9F - ROOM 00D6

;---------------------------------------------------------------------------------------------------
; Ganon's Tower
;---------------------------------------------------------------------------------------------------
|0AF519| dw $9748, $9748, $138D, $138E ; 0xA0 - ROOM 001C
|0AF521| dw $1391, $1392, $138C, $138F ; 0xA1 - ROOM 007B
|0AF529| dw $1393, $1390, $9393, $138F ; 0xA2 - ROOM 007C
|0AF531| dw $1394, $1395, $138E, $138C ; 0xA3 - ROOM 007D
|0AF539| dw $175D, $1399, $975D, $538F ; 0xA4 - ROOM 008B
|0AF541| dw $1397, $1398, $179A, $138C ; 0xA5 - ROOM 008C
|0AF549| dw $1399, $1766, $138F, $D75D ; 0xA6 - ROOM 008D
|0AF551| dw $538E, $538F, $1391, $1392 ; 0xA7 - ROOM 009B
|0AF559| dw $139B, $539B, $139C, $539C ; 0xA8 - ROOM 009C
|0AF561| dw $138F, $138E, $5392, $5391 ; 0xA9 - ROOM 009D
|0AF569| dw $138A, $538A, $138B, $538B ; 0xAA - ROOM 000C
|0AF571| dw $0B00, $CB5B, $0B00, $8B54 ; 0xAB - ROOM 005B
|0AF579| dw $4B74, $13A6, $0B00, $4B48 ; 0xAC - ROOM 005C
|0AF581| dw $13A0, $13A1, $538E, $138E ; 0xAD - ROOM 006B
|0AF589| dw $D38E, $53A3, $13A4, $0B00 ; 0xAE - ROOM 005D
|0AF591| dw $97AA, $0B00, $538E, $1399 ; 0xAF - ROOM 006C
|0AF599| dw $13A4, $0B00, $138E, $0B00 ; 0xB0 - ROOM 006D
|0AF5A1| dw $0B00, $5393, $0B00, $574E ; 0xB1 - ROOM 0095
|0AF5A9| dw $4B7D, $0B00, $8B7D, $139F ; 0xB2 - ROOM 0096
|0AF5B1| dw $97AA, $13A4, $13A9, $53A9 ; 0xB3 - ROOM 00A5
|0AF5B9| dw $13A5, $13A6, $93A5, $D3A5 ; 0xB4 - ROOM 00A6
|0AF5C1| dw $D38E, $938E, $13A4, $13AA ; 0xB5 - ROOM 0034
|0AF5C9| dw $0B00, $13A6, $0B00, $8B5F ; 0xB6 - ROOM 004C
|0AF5D1| dw $139B, $13A6, $139C, $53A2 ; 0xB7 - ROOM 004D
|0AF5D9| dw $0B00, $0B00, $138C, $0B00 ; 0xB8 - ROOM 000D
|0AF5E1| dw $9394, $139E, $0B00, $0B00 ; 0xB9 - ROOM 001D

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
|0AF5E9| db $21, $00 ; Sewers
|0AF5EB| db $23, $00 ; Hyrule Castle
|0AF5ED| db $20, $00 ; Eastern Palace
|0AF5EF| db $21, $00 ; Desert Palace
|0AF5F1| db $70, $00 ; Agahnim's Tower
|0AF5F3| db $12, $00 ; Swamp Palace
|0AF5F5| db $11, $00 ; Palace of Darkness
|0AF5F7| db $12, $02 ; Misery Mire
|0AF5F9| db $02, $00 ; Skull Woods
|0AF5FB| db $17, $02 ; Ice Palace
|0AF5FD| db $60, $01 ; Tower of Hera
|0AF5FF| db $12, $00 ; Thieves' Town
|0AF601| db $13, $01 ; Turtle Rock
|0AF603| db $71, $01 ; Ganon's Tower

;===================================================================================================

DungeonMapFloorToDataOffset:
|0AF605| dw $0000
|0AF607| dw $0019
|0AF609| dw $0032
|0AF60B| dw $004B
|0AF60D| dw $0064
|0AF60F| dw $007D
|0AF611| dw $0096
|0AF613| dw $00AF

;===================================================================================================

DungeonMapRoomPointers:
|0AF615| dw DungeonMapRoomData_Sewers
|0AF617| dw DungeonMapRoomData_HyruleCastle
|0AF619| dw DungeonMapRoomData_EasternPalace
|0AF61B| dw DungeonMapRoomData_DesertPalace
|0AF61D| dw DungeonMapRoomData_AgahnimsTower
|0AF61F| dw DungeonMapRoomData_SwampPalace
|0AF621| dw DungeonMapRoomData_PalaceofDarkness
|0AF623| dw DungeonMapRoomData_MiseryMire
|0AF625| dw DungeonMapRoomData_SkullWoods
|0AF627| dw DungeonMapRoomData_IcePalace
|0AF629| dw DungeonMapRoomData_TowerofHera
|0AF62B| dw DungeonMapRoomData_ThievesTown
|0AF62D| dw DungeonMapRoomData_TurtleRock
|0AF62F| dw DungeonMapRoomData_GanonsTower

;===================================================================================================

DungeonMapRoomData_Sewers:
; Basement 1
|0AF631| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF636| db $0F, $0F, $11, $0F, $0F ; row 1
|0AF63B| db $0F, $0F, $21, $22, $0F ; row 2
|0AF640| db $0F, $0F, $0F, $32, $0F ; row 3
|0AF645| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 1
|0AF64A| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF64F| db $0F, $0F, $02, $0F, $0F ; row 1
|0AF654| db $0F, $0F, $12, $0F, $0F ; row 2
|0AF659| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF65E| db $0F, $0F, $0F, $42, $0F ; row 4

; Floor 2
|0AF663| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF668| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF66D| db $0F, $0F, $0F, $0F, $0F ; row 2
|0AF672| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF677| db $0F, $0F, $0F, $41, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_HyruleCastle:
; Basement 3
|0AF67C| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF681| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF686| db $0F, $80, $0F, $0F, $0F ; row 2
|0AF68B| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF690| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 2
|0AF695| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF69A| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF69F| db $0F, $70, $0F, $0F, $0F ; row 2
|0AF6A4| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF6A9| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
|0AF6AE| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF6B3| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF6B8| db $0F, $71, $72, $0F, $0F ; row 2
|0AF6BD| db $0F, $81, $82, $0F, $0F ; row 3
|0AF6C2| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 1
|0AF6C7| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF6CC| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF6D1| db $0F, $50, $01, $52, $0F ; row 2
|0AF6D6| db $0F, $60, $61, $62, $0F ; row 3
|0AF6DB| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 2
|0AF6E0| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF6E5| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF6EA| db $0F, $0F, $51, $0F, $0F ; row 2
|0AF6EF| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF6F4| db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_EasternPalace:
; Floor 1
|0AF6F9| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF6FE| db $0F, $0F, $99, $0F, $0F ; row 1
|0AF703| db $0F, $A8, $A9, $AA, $0F ; row 2
|0AF708| db $0F, $B8, $B9, $BA, $0F ; row 3
|0AF70D| db $0F, $0F, $C9, $0F, $0F ; row 4

; Floor 2
|0AF712| db $C8, $0F, $0F, $0F, $0F ; row 0
|0AF717| db $D8, $D9, $DA, $0F, $0F ; row 1
|0AF71C| db $0F, $0F, $0F, $0F, $0F ; row 2
|0AF721| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF726| db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_DesertPalace:
; Basement 1
|0AF72B| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF730| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF735| db $0F, $0F, $0F, $0F, $0F ; row 2
|0AF73A| db $0F, $73, $74, $75, $0F ; row 3
|0AF73F| db $0F, $83, $84, $85, $0F ; row 4

; Floor 1
|0AF744| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF749| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF74E| db $0F, $0F, $63, $0F, $0F ; row 2
|0AF753| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF758| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 2
|0AF75D| db $0F, $0F, $33, $0F, $0F ; row 0
|0AF762| db $0F, $0F, $43, $0F, $0F ; row 1
|0AF767| db $0F, $0F, $53, $0F, $0F ; row 2
|0AF76C| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF771| db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_AgahnimsTower:
; Floor 1
|0AF776| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF77B| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF780| db $0F, $0F, $0F, $0F, $0F ; row 2
|0AF785| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF78A| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 2
|0AF78F| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF794| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF799| db $0F, $0F, $E0, $0F, $0F ; row 2
|0AF79E| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF7A3| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 3
|0AF7A8| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF7AD| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF7B2| db $0F, $0F, $D0, $0F, $0F ; row 2
|0AF7B7| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF7BC| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 4
|0AF7C1| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF7C6| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF7CB| db $0F, $0F, $C0, $0F, $0F ; row 2
|0AF7D0| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF7D5| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 5
|0AF7DA| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF7DF| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF7E4| db $0F, $0F, $B0, $0F, $0F ; row 2
|0AF7E9| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF7EE| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 6
|0AF7F3| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF7F8| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF7FD| db $0F, $0F, $40, $0F, $0F ; row 2
|0AF802| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF807| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 7
|0AF80C| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF811| db $0F, $0F, $20, $0F, $0F ; row 1
|0AF816| db $0F, $0F, $30, $0F, $0F ; row 2
|0AF81B| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF820| db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_SwampPalace:
; Basement 2
|0AF825| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF82A| db $0F, $0F, $66, $0F, $0F ; row 1
|0AF82F| db $0F, $0F, $76, $0F, $0F ; row 2
|0AF834| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF839| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
|0AF83E| db $0F, $0F, $06, $0F, $0F ; row 0
|0AF843| db $0F, $0F, $16, $0F, $0F ; row 1
|0AF848| db $0F, $0F, $26, $0F, $0F ; row 2
|0AF84D| db $34, $35, $36, $37, $38 ; row 3
|0AF852| db $0F, $0F, $46, $0F, $0F ; row 4

; Floor 1
|0AF857| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF85C| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF861| db $0F, $0F, $0F, $0F, $0F ; row 2
|0AF866| db $54, $0F, $0F, $0F, $28 ; row 3
|0AF86B| db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_PalaceofDarkness:
; Basement 1
|0AF870| db $0F, $0F, $5A, $0F, $0F ; row 0
|0AF875| db $0F, $0F, $6A, $0B, $0F ; row 1
|0AF87A| db $0F, $0F, $0F, $0F, $0F ; row 2
|0AF87F| db $0F, $0F, $0A, $3B, $0F ; row 3
|0AF884| db $0F, $0F, $09, $4B, $0F ; row 4

; Floor 1
|0AF889| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF88E| db $0F, $19, $1A, $1B, $0F ; row 1
|0AF893| db $0F, $0F, $2A, $2B, $0F ; row 2
|0AF898| db $0F, $0F, $3A, $0F, $0F ; row 3
|0AF89D| db $0F, $0F, $4A, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_MiseryMire:
; Basement 2
|0AF8A2| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF8A7| db $0F, $91, $92, $93, $0F ; row 1
|0AF8AC| db $0F, $0F, $0F, $0F, $0F ; row 2
|0AF8B1| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF8B6| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
|0AF8BB| db $0F, $90, $0F, $0F, $0F ; row 0
|0AF8C0| db $0F, $A0, $A1, $A2, $A3 ; row 1
|0AF8C5| db $0F, $0F, $B1, $B2, $B3 ; row 2
|0AF8CA| db $0F, $0F, $C1, $C2, $C3 ; row 3
|0AF8CF| db $0F, $0F, $D1, $D2, $0F ; row 4

; Floor 1
|0AF8D4| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF8D9| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF8DE| db $0F, $0F, $0F, $0F, $0F ; row 2
|0AF8E3| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF8E8| db $0F, $0F, $97, $98, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_SkullWoods:
; Basement 2
|0AF8ED| db $29, $0F, $0F, $0F, $0F ; row 0
|0AF8F2| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF8F7| db $0F, $0F, $0F, $0F, $0F ; row 2
|0AF8FC| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF901| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
|0AF906| db $39, $0F, $0F, $0F, $0F ; row 0
|0AF90B| db $49, $0F, $0F, $0F, $0F ; row 1
|0AF910| db $59, $0F, $0F, $0F, $0F ; row 2
|0AF915| db $0F, $56, $57, $58, $0F ; row 3
|0AF91A| db $0F, $0F, $67, $68, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_IcePalace:
; Basement 7
|0AF91F| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF924| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF929| db $0F, $0F, $0F, $0F, $0F ; row 2
|0AF92E| db $0F, $0F, $DE, $0F, $0F ; row 3
|0AF933| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 6
|0AF938| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF93D| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF942| db $0F, $0F, $BE, $BF, $0F ; row 2
|0AF947| db $0F, $0F, $CE, $0F, $0F ; row 3
|0AF94C| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 5
|0AF951| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF956| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF95B| db $0F, $0F, $9E, $9F, $0F ; row 2
|0AF960| db $0F, $0F, $AE, $AF, $0F ; row 3
|0AF965| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 4
|0AF96A| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF96F| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF974| db $0F, $0F, $7E, $7F, $0F ; row 2
|0AF979| db $0F, $0F, $8E, $0F, $0F ; row 3
|0AF97E| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 3
|0AF983| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF988| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF98D| db $0F, $0F, $5E, $5F, $0F ; row 2
|0AF992| db $0F, $0F, $6E, $0F, $0F ; row 3
|0AF997| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 2
|0AF99C| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF9A1| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF9A6| db $0F, $0F, $3E, $3F, $0F ; row 2
|0AF9AB| db $0F, $0F, $4E, $0F, $0F ; row 3
|0AF9B0| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
|0AF9B5| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF9BA| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF9BF| db $0F, $0F, $1E, $1F, $0F ; row 2
|0AF9C4| db $0F, $0F, $2E, $0F, $0F ; row 3
|0AF9C9| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 1
|0AF9CE| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF9D3| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF9D8| db $0F, $0F, $0E, $0F, $0F ; row 2
|0AF9DD| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF9E2| db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_TowerofHera:
; Floor 1
|0AF9E7| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AF9EC| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AF9F1| db $0F, $0F, $87, $0F, $0F ; row 2
|0AF9F6| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AF9FB| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 2
|0AFA00| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFA05| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AFA0A| db $0F, $0F, $77, $0F, $0F ; row 2
|0AFA0F| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFA14| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 3
|0AFA19| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFA1E| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AFA23| db $0F, $0F, $31, $0F, $0F ; row 2
|0AFA28| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFA2D| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 4
|0AFA32| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFA37| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AFA3C| db $0F, $0F, $27, $0F, $0F ; row 2
|0AFA41| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFA46| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 5
|0AFA4B| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFA50| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AFA55| db $0F, $0F, $17, $0F, $0F ; row 2
|0AFA5A| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFA5F| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 6
|0AFA64| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFA69| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AFA6E| db $0F, $0F, $07, $0F, $0F ; row 2
|0AFA73| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFA78| db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_ThievesTown:
; Basement 2
|0AFA7D| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFA82| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AFA87| db $0F, $44, $45, $0F, $0F ; row 2
|0AFA8C| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFA91| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
|0AFA96| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFA9B| db $0F, $AB, $AC, $0F, $0F ; row 1
|0AFAA0| db $0F, $BB, $BC, $0F, $0F ; row 2
|0AFAA5| db $0F, $CB, $CC, $0F, $0F ; row 3
|0AFAAA| db $0F, $DB, $DC, $0F, $0F ; row 4

; Floor 1
|0AFAAF| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFAB4| db $0F, $64, $65, $0F, $0F ; row 1
|0AFAB9| db $0F, $0F, $0F, $0F, $0F ; row 2
|0AFABE| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFAC3| db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_TurtleRock:
; Basement 3
|0AFAC8| db $0F, $A4, $0F, $0F, $0F ; row 0
|0AFACD| db $0F, $B4, $0F, $0F, $0F ; row 1
|0AFAD2| db $0F, $0F, $0F, $0F, $0F ; row 2
|0AFAD7| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFADC| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 2
|0AFAE1| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFAE6| db $0F, $0F, $B5, $0F, $0F ; row 1
|0AFAEB| db $0F, $C4, $C5, $0F, $0F ; row 2
|0AFAF0| db $0F, $0F, $D5, $0F, $0F ; row 3
|0AFAF5| db $0F, $0F, $0F, $0F, $0F ; row 4

; Basement 1
|0AFAFA| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFAFF| db $0F, $0F, $04, $0F, $0F ; row 1
|0AFB04| db $0F, $13, $14, $15, $0F ; row 2
|0AFB09| db $0F, $23, $24, $0F, $0F ; row 3
|0AFB0E| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 1
|0AFB13| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFB18| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AFB1D| db $0F, $0F, $0F, $B6, $B7 ; row 2
|0AFB22| db $0F, $0F, $0F, $C6, $C7 ; row 3
|0AFB27| db $0F, $0F, $0F, $D6, $0F ; row 4

;===================================================================================================

DungeonMapRoomData_GanonsTower:
; Basement 1
|0AFB2C| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFB31| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AFB36| db $0F, $0F, $1C, $0F, $0F ; row 2
|0AFB3B| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFB40| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 1
|0AFB45| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFB4A| db $0F, $7B, $7C, $7D, $0F ; row 1
|0AFB4F| db $0F, $8B, $8C, $8D, $0F ; row 2
|0AFB54| db $0F, $9B, $9C, $9D, $0F ; row 3
|0AFB59| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 2
|0AFB5E| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFB63| db $0F, $0F, $0F, $0F, $0F ; row 1
|0AFB68| db $0F, $0F, $0C, $0F, $0F ; row 2
|0AFB6D| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFB72| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 3
|0AFB77| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFB7C| db $0F, $0F, $5B, $5C, $0F ; row 1
|0AFB81| db $0F, $0F, $6B, $0F, $0F ; row 2
|0AFB86| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFB8B| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 4
|0AFB90| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFB95| db $0F, $0F, $0F, $5D, $0F ; row 1
|0AFB9A| db $0F, $0F, $6C, $6D, $0F ; row 2
|0AFB9F| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFBA4| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 5
|0AFBA9| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFBAE| db $0F, $0F, $95, $96, $0F ; row 1
|0AFBB3| db $0F, $0F, $A5, $A6, $0F ; row 2
|0AFBB8| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFBBD| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 6
|0AFBC2| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFBC7| db $0F, $0F, $0F, $3D, $0F ; row 1
|0AFBCC| db $0F, $0F, $4C, $4D, $0F ; row 2
|0AFBD1| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFBD6| db $0F, $0F, $0F, $0F, $0F ; row 4

; Floor 7
|0AFBDB| db $0F, $0F, $0F, $0F, $0F ; row 0
|0AFBE0| db $0F, $0F, $0D, $0F, $0F ; row 1
|0AFBE5| db $0F, $0F, $1D, $0F, $0F ; row 2
|0AFBEA| db $0F, $0F, $0F, $0F, $0F ; row 3
|0AFBEF| db $0F, $0F, $0F, $0F, $0F ; row 4

;===================================================================================================

DungeonMapRoomOrderPointers:
|0AFBF4| dw DungeonMapRoomOrder_Sewers
|0AFBF6| dw DungeonMapRoomOrder_HyruleCastle
|0AFBF8| dw DungeonMapRoomOrder_EasternPalace
|0AFBFA| dw DungeonMapRoomOrder_DesertPalace
|0AFBFC| dw DungeonMapRoomOrder_AgahnimsTower
|0AFBFE| dw DungeonMapRoomOrder_SwampPalace
|0AFC00| dw DungeonMapRoomOrder_PalaceOfDarkness
|0AFC02| dw DungeonMapRoomOrder_MiseryMire
|0AFC04| dw DungeonMapRoomOrder_SkullWoods
|0AFC06| dw DungeonMapRoomOrder_IcePalace
|0AFC08| dw DungeonMapRoomOrder_TowerOfHera
|0AFC0A| dw DungeonMapRoomOrder_ThievesTown
|0AFC0C| dw DungeonMapRoomOrder_TurtleRock
|0AFC0E| dw DungeonMapRoomOrder_GanonsTower

;===================================================================================================

DungeonMapRoomOrder_Sewers:
|0AFC10| db $00 ; Room 0011
|0AFC11| db $01 ; Room 0021
|0AFC12| db $02 ; Room 0022
|0AFC13| db $03 ; Room 0032
|0AFC14| db $04 ; Room 0002
|0AFC15| db $05 ; Room 0012
|0AFC16| db $06 ; Room 0042
|0AFC17| db $07 ; Room 0041

;===================================================================================================

DungeonMapRoomOrder_HyruleCastle:
|0AFC18| db $08 ; Room 0080
|0AFC19| db $09 ; Room 0070
|0AFC1A| db $0A ; Room 0071
|0AFC1B| db $0B ; Room 0072
|0AFC1C| db $0C ; Room 0081
|0AFC1D| db $0D ; Room 0082
|0AFC1E| db $0E ; Room 0050
|0AFC1F| db $0F ; Room 0001
|0AFC20| db $10 ; Room 0052
|0AFC21| db $11 ; Room 0060
|0AFC22| db $12 ; Room 0061
|0AFC23| db $13 ; Room 0062
|0AFC24| db $14 ; Room 0051

;===================================================================================================

DungeonMapRoomOrder_EasternPalace:
|0AFC25| db $15 ; Room 0099
|0AFC26| db $16 ; Room 00A8
|0AFC27| db $17 ; Room 00A9
|0AFC28| db $18 ; Room 00AA
|0AFC29| db $19 ; Room 00B8
|0AFC2A| db $1A ; Room 00B9
|0AFC2B| db $1B ; Room 00BA
|0AFC2C| db $1C ; Room 00C9
|0AFC2D| db $1D ; Room 00C8
|0AFC2E| db $1E ; Room 00D8
|0AFC2F| db $1F ; Room 00D9
|0AFC30| db $20 ; Room 00DA

;===================================================================================================

DungeonMapRoomOrder_DesertPalace:
|0AFC31| db $22 ; Room 0073
|0AFC32| db $23 ; Room 0074
|0AFC33| db $24 ; Room 0076
|0AFC34| db $25 ; Room 0083
|0AFC35| db $26 ; Room 0084
|0AFC36| db $27 ; Room 0086
|0AFC37| db $21 ; Room 0063
|0AFC38| db $28 ; Room 0033
|0AFC39| db $29 ; Room 0042
|0AFC3A| db $2A ; Room 0053

;===================================================================================================

DungeonMapRoomOrder_AgahnimsTower:
|0AFC3B| db $2B ; Room 00E0
|0AFC3C| db $2C ; Room 00D0
|0AFC3D| db $2C ; Room 00C0
|0AFC3E| db $2D ; Room 00B0
|0AFC3F| db $2E ; Room 0040
|0AFC40| db $2F ; Room 0020
|0AFC41| db $30 ; Room 0030

;===================================================================================================

DungeonMapRoomOrder_SwampPalace:
|0AFC42| db $31 ; Room 0066
|0AFC43| db $32 ; Room 0076
|0AFC44| db $33 ; Room 0006
|0AFC45| db $34 ; Room 0016
|0AFC46| db $35 ; Room 0026
|0AFC47| db $36 ; Room 0034
|0AFC48| db $37 ; Room 0035
|0AFC49| db $38 ; Room 0036
|0AFC4A| db $39 ; Room 0037
|0AFC4B| db $3A ; Room 0038
|0AFC4C| db $3B ; Room 0046
|0AFC4D| db $3C ; Room 0054
|0AFC4E| db $3D ; Room 0028

;===================================================================================================

DungeonMapRoomOrder_PalaceOfDarkness:
|0AFC4F| db $3E ; Room 005A
|0AFC50| db $3F ; Room 006A
|0AFC51| db $40 ; Room 000B
|0AFC52| db $41 ; Room 000A
|0AFC53| db $42 ; Room 003B
|0AFC54| db $43 ; Room 0009
|0AFC55| db $44 ; Room 004B
|0AFC56| db $45 ; Room 0019
|0AFC57| db $46 ; Room 001A
|0AFC58| db $47 ; Room 001B
|0AFC59| db $48 ; Room 002A
|0AFC5A| db $49 ; Room 002B
|0AFC5B| db $4A ; Room 003A
|0AFC5C| db $4B ; Room 004A

;===================================================================================================

DungeonMapRoomOrder_MiseryMire:
|0AFC5D| db $4E ; Room 0091
|0AFC5E| db $4F ; Room 0092
|0AFC5F| db $50 ; Room 0093
|0AFC60| db $52 ; Room 0090
|0AFC61| db $53 ; Room 00A0
|0AFC62| db $54 ; Room 00A1
|0AFC63| db $55 ; Room 00A2
|0AFC64| db $56 ; Room 00A3
|0AFC65| db $57 ; Room 00B1
|0AFC66| db $58 ; Room 00B2
|0AFC67| db $59 ; Room 00B3
|0AFC68| db $5A ; Room 00C1
|0AFC69| db $5B ; Room 00C2
|0AFC6A| db $5C ; Room 00C3
|0AFC6B| db $5D ; Room 00D1
|0AFC6C| db $5E ; Room 00D2
|0AFC6D| db $5F ; Room 0097
|0AFC6E| db $60 ; Room 0098

;===================================================================================================

DungeonMapRoomOrder_SkullWoods:
|0AFC6F| db $61 ; Room 0029
|0AFC70| db $62 ; Room 0039
|0AFC71| db $63 ; Room 0049
|0AFC72| db $64 ; Room 0059
|0AFC73| db $65 ; Room 0056
|0AFC74| db $66 ; Room 0057
|0AFC75| db $67 ; Room 0058
|0AFC76| db $68 ; Room 0067
|0AFC77| db $69 ; Room 0068

;===================================================================================================

DungeonMapRoomOrder_IcePalace:
|0AFC78| db $6A ; Room 00DE
|0AFC79| db $6B ; Room 00BE
|0AFC7A| db $6C ; Room 00BF
|0AFC7B| db $6D ; Room 00CE
|0AFC7C| db $6E ; Room 009E
|0AFC7D| db $6F ; Room 009F
|0AFC7E| db $70 ; Room 00AE
|0AFC7F| db $71 ; Room 00AF
|0AFC80| db $72 ; Room 007E
|0AFC81| db $73 ; Room 007F
|0AFC82| db $74 ; Room 008E
|0AFC83| db $75 ; Room 005E
|0AFC84| db $76 ; Room 005F
|0AFC85| db $77 ; Room 006E
|0AFC86| db $78 ; Room 003E
|0AFC87| db $79 ; Room 003F
|0AFC88| db $7A ; Room 004E
|0AFC89| db $7B ; Room 001E
|0AFC8A| db $7C ; Room 001F
|0AFC8B| db $7D ; Room 002E
|0AFC8C| db $7E ; Room 000E

;===================================================================================================

DungeonMapRoomOrder_TowerOfHera:
|0AFC8D| db $7F ; Room 0087
|0AFC8E| db $80 ; Room 0077
|0AFC8F| db $81 ; Room 0031
|0AFC90| db $82 ; Room 0027
|0AFC91| db $83 ; Room 0017
|0AFC92| db $84 ; Room 0007

;===================================================================================================

DungeonMapRoomOrder_ThievesTown:
|0AFC93| db $85 ; Room 0044
|0AFC94| db $86 ; Room 0045
|0AFC95| db $87 ; Room 00AB
|0AFC96| db $88 ; Room 00AC
|0AFC97| db $89 ; Room 00BB
|0AFC98| db $8A ; Room 00BC
|0AFC99| db $8B ; Room 00CB
|0AFC9A| db $8C ; Room 00CC
|0AFC9B| db $8D ; Room 00DB
|0AFC9C| db $8E ; Room 00DC
|0AFC9D| db $8F ; Room 0064
|0AFC9E| db $90 ; Room 0065

;===================================================================================================

DungeonMapRoomOrder_TurtleRock:
|0AFC9F| db $91 ; Room 00A4
|0AFCA0| db $92 ; Room 00B4
|0AFCA1| db $93 ; Room 00B5
|0AFCA2| db $94 ; Room 00C4
|0AFCA3| db $95 ; Room 00C5
|0AFCA4| db $4C ; Room 00D5
|0AFCA5| db $96 ; Room 0004
|0AFCA6| db $97 ; Room 0013
|0AFCA7| db $98 ; Room 0014
|0AFCA8| db $99 ; Room 0015
|0AFCA9| db $4D ; Room 0023
|0AFCAA| db $9A ; Room 0024
|0AFCAB| db $9B ; Room 00B6
|0AFCAC| db $9C ; Room 00B7
|0AFCAD| db $9D ; Room 00C6
|0AFCAE| db $9E ; Room 00C7
|0AFCAF| db $9F ; Room 00D6

;===================================================================================================

DungeonMapRoomOrder_GanonsTower:
|0AFCB0| db $A0 ; Room 001C
|0AFCB1| db $A1 ; Room 007B
|0AFCB2| db $A2 ; Room 007C
|0AFCB3| db $A3 ; Room 007D
|0AFCB4| db $A4 ; Room 008B
|0AFCB5| db $A5 ; Room 008C
|0AFCB6| db $A6 ; Room 008D
|0AFCB7| db $A7 ; Room 009B
|0AFCB8| db $A8 ; Room 009C
|0AFCB9| db $A9 ; Room 009D
|0AFCBA| db $AA ; Room 000C
|0AFCBB| db $AB ; Room 005B
|0AFCBC| db $AC ; Room 005C
|0AFCBD| db $AD ; Room 006B
|0AFCBE| db $AE ; Room 005D
|0AFCBF| db $AF ; Room 006C
|0AFCC0| db $B0 ; Room 006D
|0AFCC1| db $B1 ; Room 0095
|0AFCC2| db $B2 ; Room 0096
|0AFCC3| db $B3 ; Room 00A5
|0AFCC4| db $B4 ; Room 00A6
|0AFCC5| db $B5 ; Room 0034
|0AFCC6| db $B6 ; Room 004C
|0AFCC7| db $B7 ; Room 004D
|0AFCC8| db $B8 ; Room 000D
|0AFCC9| db $B9 ; Room 001D

;===================================================================================================
; FREE ROM: 0x36
;===================================================================================================
NULL_0AFCCA:
|0AFCCA| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AFCD2| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AFCDA| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AFCE2| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AFCEA| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AFCF2| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AFCFA| db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

HUDBigNumbersTop:
|0AFD00| dw $2508 ; 1
|0AFD02| dw $2509 ; 2
|0AFD04| dw $2509 ; 3
|0AFD06| dw $250A ; 4
|0AFD08| dw $250B ; 5
|0AFD0A| dw $250C ; 6
|0AFD0C| dw $250D ; 7
|0AFD0E| dw $251D ; 8
|0AFD10| dw $E51C ; 9
|0AFD12| dw $250E ; 0
|0AFD14| dw $007F ; -

;---------------------------------------------------------------------------------------------------

HUDBigNumbersBottom:
|0AFD16| dw $2518 ; 1
|0AFD18| dw $2519 ; 2
|0AFD1A| dw $A509 ; 3
|0AFD1C| dw $251A ; 4
|0AFD1E| dw $251B ; 5
|0AFD20| dw $251C ; 6
|0AFD22| dw $2518 ; 7
|0AFD24| dw $A51D ; 8
|0AFD26| dw $E50C ; 9
|0AFD28| dw $A50E ; 0
|0AFD2A| dw $007F ; -

;===================================================================================================

HandleFloorIndicator:
|0AFD2C| REP #$30

|0AFD2E| LDA.w $04A0
|0AFD31| AND.w #$00FF
|0AFD34| BEQ HideHUDTimer

|0AFD36| INC A
|0AFD37| CMP.w #$00C0
|0AFD3A| BNE .dont_clear

|0AFD3C| LDA.w #$0000

.dont_clear
|0AFD3F| STA.w $04A0

;---------------------------------------------------------------------------------------------------

|0AFD42| PHB
|0AFD43| PHK
|0AFD44| PLB

|0AFD45| LDA.w #$251E
|0AFD48| STA.l $7EC7F2

|0AFD4C| INC A
|0AFD4D| STA.l $7EC834

|0AFD51| INC A
|0AFD52| STA.l $7EC832

|0AFD56| LDA.w #$250F
|0AFD59| STA.l $7EC7F4

|0AFD5D| LDX.w #$0000

|0AFD60| LDA.b $A3
|0AFD62| BMI .basement_floors

|0AFD64| LDA.b $A4
|0AFD66| BNE .no_rain_noise

|0AFD68| LDA.b $A0
|0AFD6A| CMP.w #$0002 ; ROOM 0002
|0AFD6D| BEQ .no_rain_noise

|0AFD6F| SEP #$20

|0AFD71| LDA.l $7EF3C5
|0AFD75| CMP.b #$02
|0AFD77| BCS .too_late_for_rain

|0AFD79| LDA.b #$03 ; SFX1.03
|0AFD7B| STA.w $012D

;---------------------------------------------------------------------------------------------------

.too_late_for_rain
|0AFD7E| REP #$20

.no_rain_noise
|0AFD80| LDA.b $A4
|0AFD82| AND.w #$00FF
|0AFD85| BRA .continue

.basement_floors
|0AFD87| SEP #$20

|0AFD89| LDA.b #$05 ; SFX1.05
|0AFD8B| STA.w $012D

|0AFD8E| REP #$20

|0AFD90| INX
|0AFD91| INX

|0AFD92| LDA.b $A4
|0AFD94| ORA.w #$FF00
|0AFD97| EOR.w #$FFFF

;---------------------------------------------------------------------------------------------------

.continue
|0AFD9A| ASL A
|0AFD9B| TAY

|0AFD9C| LDA.w HUDBigNumbersTop,Y
|0AFD9F| STA.l $7EC7F2,X

|0AFDA3| LDA.w HUDBigNumbersBottom,Y
|0AFDA6| STA.l $7EC832,X

|0AFDAA| SEP #$30

|0AFDAC| PLB

|0AFDAD| INC.b $16

|0AFDAF| RTL

;===================================================================================================
; Used for floor indicator and timers
;===================================================================================================
HideHUDTimer:
|0AFDB0| REP #$20

|0AFDB2| LDA.w #$007F
|0AFDB5| STA.l $7EC7F2
|0AFDB9| STA.l $7EC832
|0AFDBD| STA.l $7EC7F4
|0AFDC1| STA.l $7EC834

|0AFDC5| SEP #$30

|0AFDC7| RTL

;===================================================================================================

HandleHUDTimer:
|0AFDC8| LDA.w $04B5
|0AFDCB| BNE .dont_tick

|0AFDCD| LDA.w $04B4
|0AFDD0| BMI .timer_ended

|0AFDD2| DEC.w $04B4

|0AFDD5| LDA.b #$3E
|0AFDD7| STA.w $04B5

.dont_tick
|0AFDDA| DEC.w $04B5

|0AFDDD| LDA.w $04B4
|0AFDE0| BPL .draw_numbers

.timer_ended
|0AFDE2| LDA.b #$FF
|0AFDE4| STA.w $04B4

|0AFDE7| REP #$30

|0AFDE9| BRA HideHUDTimer

;---------------------------------------------------------------------------------------------------

.draw_numbers
|0AFDEB| LDA.w $04B4
|0AFDEE| STA.w WRDIVL

|0AFDF1| STZ.w WRDIVH

|0AFDF4| LDA.b #$0A ; divide by 10
|0AFDF6| STA.w WRDIVB

|0AFDF9| NOP ; 8 NOP
|0AFDFA| NOP
|0AFDFB| NOP
|0AFDFC| NOP
|0AFDFD| NOP
|0AFDFE| NOP
|0AFDFF| NOP
|0AFE00| NOP

|0AFE01| LDA.w RDDIV
|0AFE04| ASL A
|0AFE05| STA.b $00

|0AFE07| LDA.w RDMPY
|0AFE0A| ASL A
|0AFE0B| STA.b $02

;---------------------------------------------------------------------------------------------------

|0AFE0D| PHB
|0AFE0E| PHK
|0AFE0F| PLB

|0AFE10| REP #$20

|0AFE12| LDX.b #$02

.next_number
|0AFE14| LDY.b $00,X

|0AFE16| DEY
|0AFE17| DEY
|0AFE18| BPL .draw_digit

|0AFE1A| LDY.b #$12
|0AFE1C| CPX.b #$00
|0AFE1E| BNE .draw_digit

|0AFE20| LDY.b #$14

.draw_digit
|0AFE22| LDA.w HUDBigNumbersTop,Y
|0AFE25| STA.l $7EC7F2,X

|0AFE29| LDA.w HUDBigNumbersBottom,Y
|0AFE2C| STA.l $7EC832,X

|0AFE30| DEX
|0AFE31| DEX
|0AFE32| BPL .next_number

|0AFE34| SEP #$20

|0AFE36| PLB

|0AFE37| RTL

;===================================================================================================
; FREE ROM: 0x38
;===================================================================================================
NULL_0AFE38:
|0AFE38| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AFE40| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AFE48| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AFE50| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AFE58| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AFE60| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0AFE68| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

pool HandleRoomLayerEffect

.vectors
|0AFE70| dw LayerEffect_Nothing           ; 00
|0AFE72| dw LayerEffect_Nothing           ; 01
|0AFE74| dw LayerEffect_Scroll            ; 02
|0AFE76| dw LayerEffect_WaterRapids       ; 03
|0AFE78| dw LayerEffect_Trinexx           ; 04
|0AFE7A| dw LayerEffect_Agahnim2          ; 05
|0AFE7C| dw LayerEffect_InvisibleFloor    ; 06
|0AFE7E| dw LayerEffect_Ganon             ; 07

endpool

;---------------------------------------------------------------------------------------------------

HandleRoomLayerEffect:
|0AFE80| LDA.b $AD
|0AFE82| ASL A
|0AFE83| TAX

|0AFE84| JMP.w (.vectors,X)

;===================================================================================================

LayerEffect_Nothing:
|0AFE87| RTL

;===================================================================================================

LayerEffect_Scroll:
|0AFE88| LDA.w $0403
|0AFE8B| AND.b #$80
|0AFE8D| BEQ .continue

|0AFE8F| STZ.b $AD

|0AFE91| RTL

;---------------------------------------------------------------------------------------------------

.continue
|0AFE92| REP #$30

|0AFE94| STZ.w $0312
|0AFE97| STZ.w $0310

|0AFE9A| LDA.w $041A
|0AFE9D| LSR A
|0AFE9E| BCS .exit

|0AFEA0| ASL A
|0AFEA1| AND.w #$0002
|0AFEA4| TAX

|0AFEA5| LDA.w $041C
|0AFEA8| CLC
|0AFEA9| ADC.w #$8000
|0AFEAC| STA.w $041C

|0AFEAF| ROL A
|0AFEB0| AND.w #$0001

|0AFEB3| CPX.w #$0002
|0AFEB6| BNE .dont_invert

|0AFEB8| EOR.w #$FFFF
|0AFEBB| INC A

.dont_invert
|0AFEBC| LDX.w $041A
|0AFEBF| CPX.w #$0004
|0AFEC2| BCS .scroll_vertically

|0AFEC4| STA.w $0312

|0AFEC7| LDA.w $0422
|0AFECA| SEC
|0AFECB| SBC.w $0312
|0AFECE| STA.w $0422

|0AFED1| CLC
|0AFED2| ADC.b $E2
|0AFED4| STA.b $E0

|0AFED6| SEP #$30

|0AFED8| RTL

;---------------------------------------------------------------------------------------------------

.scroll_vertically
|0AFED9| STA.w $0310

|0AFEDC| LDA.w $0424
|0AFEDF| SEC
|0AFEE0| SBC.w $0310
|0AFEE3| STA.w $0424

|0AFEE6| CLC
|0AFEE7| ADC.b $E8
|0AFEE9| STA.b $E6

.exit
|0AFEEB| SEP #$30

|0AFEED| RTL

;===================================================================================================

LayerEffect_Trinexx:
|0AFEEE| REP #$20

|0AFEF0| LDA.w $0422
|0AFEF3| CLC
|0AFEF4| ADC.w $0312
|0AFEF7| STA.w $0422

|0AFEFA| LDA.w $0424
|0AFEFD| CLC
|0AFEFE| ADC.w $0310
|0AFF01| STA.w $0424

|0AFF04| STZ.w $0312
|0AFF07| STZ.w $0310

|0AFF0A| SEP #$20

|0AFF0C| RTL

;===================================================================================================

LayerEffect_Agahnim2:
|0AFF0D| LDA.b $1A
|0AFF0F| AND.b #$7F
|0AFF11| CMP.b #$03
|0AFF13| BEQ .flash

|0AFF15| CMP.b #$05
|0AFF17| BEQ .restore

|0AFF19| CMP.b #$24
|0AFF1B| BEQ .flash

|0AFF1D| CMP.b #$26
|0AFF1F| BNE .disable

;---------------------------------------------------------------------------------------------------

.restore
|0AFF21| REP #$20

|0AFF23| LDA.l $7EC3DA
|0AFF27| STA.l $7EC5DA

|0AFF2B| LDA.l $7EC3DC
|0AFF2F| STA.l $7EC5DC

|0AFF33| LDA.l $7EC3DE

;---------------------------------------------------------------------------------------------------

.set_color
|0AFF37| STA.l $7EC5DE
|0AFF3B| STA.l $7EC5EE

|0AFF3F| SEP #$20

|0AFF41| INC.b $15

;---------------------------------------------------------------------------------------------------

.disable
|0AFF43| LDA.b #$02
|0AFF45| STA.b $1D

|0AFF47| RTL

;---------------------------------------------------------------------------------------------------

.flash
|0AFF48| REP #$20

|0AFF4A| LDA.w #$1D59 ; RGB: #C85038
|0AFF4D| STA.l $7EC5DA

|0AFF51| LDA.w #$25FF ; RGB: #F87848
|0AFF54| STA.l $7EC5DC

|0AFF58| LDA.w #$001A ; RGB: #D00000
|0AFF5B| BRA .set_color

;===================================================================================================

LayerEffect_InvisibleFloor:
|0AFF5D| REP #$30

|0AFF5F| LDX.w #$0000
|0AFF62| STX.b $00

.next
|0AFF64| LDA.w $0540,X
|0AFF67| ASL A
|0AFF68| BCC .skip

|0AFF6A| INC.b $00

.skip
|0AFF6C| INX
|0AFF6D| INX
|0AFF6E| CPX.w #$0020
|0AFF71| BNE .next

;---------------------------------------------------------------------------------------------------

|0AFF73| LDX.w #$2940 ; RGB: #005050
|0AFF76| LDY.w #$4E60 ; RGB: #009898

|0AFF79| LDA.b $00
|0AFF7B| BNE .dont_use_black

|0AFF7D| LDX.w #$0000 ; RGB: #000000
|0AFF80| LDY.w #$0000 ; RGB: #000000

.dont_use_black
|0AFF83| TXA

|0AFF84| CMP.l $7EC3F6
|0AFF88| BEQ .already_matches

|0AFF8A| STA.l $7EC3F6
|0AFF8E| STA.l $7EC5F6

|0AFF92| TYA
|0AFF93| STA.l $7EC3F8
|0AFF97| STA.l $7EC5F8

|0AFF9B| INC.b $15

.already_matches
|0AFF9D| SEP #$30

|0AFF9F| LDA.b #$02
|0AFFA1| STA.b $1D

|0AFFA3| RTL

;===================================================================================================

LayerEffect_Ganon:
|0AFFA4| STZ.w $04C5

|0AFFA7| REP #$30

|0AFFA9| LDX.w #$0000

.next_torch_check
|0AFFAC| LDA.w $0540,X
|0AFFAF| ASL A
|0AFFB0| BCC .torch_off

|0AFFB2| INC.w $04C5

.torch_off
|0AFFB5| INX
|0AFFB6| INX
|0AFFB7| CPX.w #$0006
|0AFFBA| BNE .next_torch_check

;---------------------------------------------------------------------------------------------------

|0AFFBC| SEP #$30

|0AFFBE| LDA.w $04C5
|0AFFC1| BNE .not_dark

|0AFFC3| STZ.b $1D

|0AFFC5| LDA.b #$B3
|0AFFC7| STA.b $9A

|0AFFC9| RTL

.not_dark
|0AFFCA| CMP.b #$01
|0AFFCC| BNE .opaque

|0AFFCE| LDA.b #$02
|0AFFD0| STA.b $1D

|0AFFD2| LDA.b #$70
|0AFFD4| STA.b $9A

|0AFFD6| RTL

;---------------------------------------------------------------------------------------------------

.opaque
|0AFFD7| STZ.b $1D

|0AFFD9| LDA.b #$70
|0AFFDB| STA.b $9A

|0AFFDD| RTL

;===================================================================================================

LayerEffect_WaterRapids:
|0AFFDE| REP #$21

|0AFFE0| LDA.w #$8000
|0AFFE3| ADC.w $041C
|0AFFE6| STA.w $041C

|0AFFE9| ROL A
|0AFFEA| AND.w #$0001
|0AFFED| STA.b $00

|0AFFEF| LDA.w #$0000
|0AFFF2| SEC
|0AFFF3| SBC.b $00
|0AFFF5| STA.w $0312

|0AFFF8| SEP #$20

|0AFFFA| RTL

;===================================================================================================
; FREE ROM: 0x05
;===================================================================================================
NULL_0AFFFB:
|0AFFFB| db $FF, $FF, $FF, $FF, $FF

;===================================================================================================

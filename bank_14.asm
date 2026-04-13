org $148000

;===================================================================================================

|148000| db $FC, $FB, $F8, $F7, $F1
|148005| db $EF, $E2, $DE, $C4, $BC, $FF, $FE, $FC
|14800D| db $F8, $F0, $E0, $C1, $83, $89, $79, $12
|148015| db $F3, $25, $E6, $4A, $CD, $94, $9B, $29
|14801D| db $37, $52, $6F, $A4, $DF, $06, $0C, $18
|148025| db $31, $63, $C6, $8D, $1B, $C0, $40, $60
|14802D| db $A0, $B0, $D0, $58, $E8, $2C, $F4, $16
|148035| db $FA, $0B, $FD, $85, $7E, $3F, $9F, $4F
|14803D| db $A7, $D3, $E9, $F4, $7A, $06, $03, $83
|148045| db $81, $41, $C0, $A0, $60, $50, $B0, $28
|14804D| db $D8, $54, $EC, $6A, $F6, $FC, $7E, $3F
|148055| db $1F, $0F, $07, $03, $01, $C8, $07, $64
|14805D| db $03, $FA, $01, $C5, $00, $82, $18, $C4
|148065| db $28, $AB, $14, $D5, $0A, $3F, $9F, $07
|14806D| db $3B, $7D, $7F, $77, $3B, $33, $00, $78
|148075| db $0C, $F8, $3F, $F9, $60, $F8, $3F, $DC
|14807D| db $0E, $F1, $00, $FC, $00, $CD, $BF, $7F
|148085| db $FE, $7F, $3F, $0F, $03, $1E, $01, $ED
|14808D| db $03, $7D, $03, $05, $03, $EF, $00, $13
|148095| db $00, $F5, $08, $7E, $1C, $E3, $F3, $83
|14809D| db $FB, $F1, $EC, $1E, $3D, $52
|1480A3| db $44 ; Repeat word
|1480A4| dw $D600
|1480A6| db $E0, $5D ; EXT Raw block
|1480A8| db $E5, $80, $97, $C0, $DF, $80, $B1, $0E
|1480B0| db $7E, $0F, $3F, $3B, $BB, $DA, $E8, $E0
|1480B8| db $4F, $9F, $FC, $00, $FE, $08, $DF, $1C
|1480C0| db $FF, $14, $BE, $36, $A0, $36, $01, $34
|1480C8| db $49, $14, $0B, $1D, $3E, $3E, $7F, $7F
|1480D0| db $FE, $F7, $8B, $10, $29, $00, $91, $00
|1480D8| db $FF, $00, $F3, $08, $FF, $1C, $76, $1F
|1480E0| db $75, $1B, $FC, $DE, $6E, $00, $BC, $BE
|1480E8| db $BF, $BF, $80, $01, $40, $02, $20, $04
|1480F0| db $10, $08, $08, $10, $04, $20, $02, $40
|1480F8| db $01, $80, $80, $40, $20, $10, $08, $04
|148100| db $02, $01, $00, $00, $FF, $00
|148106| db $44 ; Repeat word
|148107| dw $FF00
|148109| db $85 ; Copy past
|14810A| dw $0109
|14810C| db $22 ; Repeat byte
|14810D| db $FF
|14810E| db $03 ; Raw block
|14810F| db $00, $00, $FF, $FF
|148113| db $29 ; Repeat byte
|148114| db $00
|148115| db $07 ; Raw block
|148116| db $07, $00, $1A, $06, $2C, $0E, $58, $1E
|14811E| db $24 ; Repeat byte
|14811F| db $00
|148120| db $14 ; Raw block
|148121| db $07, $1F, $3F, $1E, $00, $2F, $00, $3E
|148129| db $0F, $3F, $0B, $B4, $0D, $99, $06, $94
|148131| db $03, $8D, $02, $00, $1E
|148136| db $22 ; Repeat byte
|148137| db $1F
|148138| db $02 ; Raw block
|148139| db $0E, $0F, $03
|14813C| db $27 ; Repeat byte
|14813D| db $00
|14813E| db $45 ; Repeat word
|14813F| dw $0007
|148141| db $00 ; Raw block
|148142| db $05
|148143| db $25 ; Repeat byte
|148144| db $00
|148145| db $22 ; Repeat byte
|148146| db $03
|148147| db $17 ; Raw block
|148148| db $0C, $00, $1A, $00, $35, $00, $2E, $00
|148150| db $E5, $00, $9A, $00, $26, $C0, $63, $90
|148158| db $00, $04, $0E, $1F, $1F, $E5, $F9, $FC
|148160| db $4F ; Repeat word
|148161| dw $79BD
|148163| db $27 ; Repeat byte
|148164| db $06
|148165| db $17 ; Raw block
|148166| db $49, $BE, $93, $7D, $26, $FA, $4C, $F4
|14816E| db $98, $E8, $30, $D0, $60, $A0, $C0, $40
|148176| db $36, $6C, $D9, $B3, $67, $CF, $9F, $3F
|14817E| db $22 ; Repeat byte
|14817F| db $FF
|148180| db $83 ; Copy past
|148181| dw $0108
|148183| db $22 ; Repeat byte
|148184| db $FF
|148185| db $02 ; Raw block
|148186| db $10, $10, $01
|148189| db $83 ; Copy past
|14818A| dw $0107
|14818C| db $23 ; Repeat byte
|14818D| db $00
|14818E| db $0C ; Raw block
|14818F| db $EF, $FE, $FF, $A6, $59, $BF, $66, $99
|148197| db $7F, $B6, $49, $BF, $76
|14819C| db $84 ; Copy past
|14819D| dw $0109
|14819F| db $26 ; Repeat byte
|1481A0| db $00
|1481A1| db $1E ; Raw block
|1481A2| db $FF, $00, $34, $03, $4B, $80, $14, $60
|1481AA| db $07, $B0, $C6, $D8, $F5, $E8, $8D, $30
|1481B2| db $7A, $01, $CF, $F7, $FB, $F8, $FD, $EB
|1481BA| db $73, $07, $FF, $00, $F8, $00, $E0
|1481C1| db $44 ; Repeat word
|1481C2| dw $C000
|1481C4| db $45 ; Repeat word
|1481C5| dw $0080
|1481C7| db $27 ; Repeat byte
|1481C8| db $FF
|1481C9| db $2F ; Repeat byte
|1481CA| db $00
|1481CB| db $27 ; Repeat byte
|1481CC| db $FF
|1481CD| db $16 ; Raw block
|1481CE| db $BA, $0B, $5C, $05, $5C, $06, $8D, $62
|1481D6| db $2E, $C1, $50, $87, $A0, $1F, $00, $FF
|1481DE| db $5F, $EF, $EF, $F7, $F3, $EF, $DF
|1481E5| db $4F ; Repeat word
|1481E6| dw $00FF
|1481E8| db $28 ; Repeat byte
|1481E9| db $FF
|1481EA| db $17 ; Raw block
|1481EB| db $65, $18, $D3, $0C, $EC, $03, $7D, $00
|1481F3| db $E4, $03, $D8, $07, $20, $1F, $C0, $3F
|1481FB| db $BF, $3E, $1F, $83, $1F, $3F, $FF, $FF
|148203| db $9B ; Copy past
|148204| dw $00F0
|148206| db $44 ; Repeat word
|148207| dw $FF00
|148209| db $85 ; Copy past
|14820A| dw $0109
|14820C| db $22 ; Repeat byte
|14820D| db $FF
|14820E| db $83 ; Copy past
|14820F| dw $011A
|148211| db $31 ; Repeat byte
|148212| db $00
|148213| db $27 ; Repeat byte
|148214| db $FF
|148215| db $0A ; Raw block
|148216| db $55, $3A, $F0, $37, $FB, $2C, $F5, $38
|14821E| db $BE, $00, $78
|148221| db $22 ; Repeat byte
|148222| db $00
|148223| db $06 ; Raw block
|148224| db $0F, $00, $3B, $7F, $7E, $7E, $78
|14822B| db $22 ; Repeat byte
|14822C| db $00
|14822D| db $E0, $2A ; EXT Raw block
|14822F| db $63, $0C, $C4, $18, $A7, $10, $D1, $0C
|148237| db $7D, $00, $1A, $00, $07, $00, $01, $00
|14823F| db $1F, $3F, $78, $3E, $0E, $07, $00, $00
|148247| db $04, $00, $3F, $00, $7F, $18, $65, $3E
|14824F| db $79, $27, $71, $23, $7D, $00, $3A, $00
|148257| db $03, $00, $3C
|14825A| db $22 ; Repeat byte
|14825B| db $3F
|14825C| db $14 ; Raw block
|14825D| db $1B, $1D, $BD, $79, $B3, $71, $A1, $60
|148265| db $A0, $60, $D0, $30, $A8, $58, $94, $6C
|14826D| db $AA, $76, $06, $0E, $1F
|148272| db $84 ; Copy past
|148273| dw $005B
|148275| db $43 ; Repeat word
|148276| dw $BE45
|148278| db $13 ; Raw block
|148279| db $46, $BD, $4B, $BD, $55, $BB, $54, $BA
|148281| db $4B, $BD, $45, $BE, $3A, $3A, $38, $34
|148289| db $28, $29, $34, $3A
|14828D| db $84 ; Copy past
|14828E| dw $011B
|148290| db $E0, $27 ; EXT Raw block
|148292| db $FF, $30, $FF, $48, $FF, $B7, $CF, $4C
|14829A| db $B3, $DB, $5C, $00, $00, $FF, $CF, $B7
|1482A2| db $48, $83, $20, $6B, $AD, $F5, $66, $FD
|1482AA| db $46, $D5, $46, $DD, $5E, $99, $66, $F7
|1482B2| db $18, $C3, $3C, $10, $18, $38, $38, $20
|1482BA| db $22 ; Repeat byte
|1482BB| db $00
|1482BC| db $03 ; Raw block
|1482BD| db $BF, $7F, $00, $FF
|1482C1| db $23 ; Repeat byte
|1482C2| db $80
|1482C3| db $02 ; Raw block
|1482C4| db $83, $80, $83
|1482C7| db $22 ; Repeat byte
|1482C8| db $80
|1482C9| db $09 ; Raw block
|1482CA| db $40, $40, $00, $00, $7F, $7F, $7C, $7C
|1482D2| db $7F, $BF
|1482D4| db $97 ; Copy past
|1482D5| dw $0078
|1482D7| db $11 ; Raw block
|1482D8| db $E0, $0F, $F4, $73, $5E, $5D, $2F, $66
|1482E0| db $26, $B3, $0E, $91, $02, $DD, $0C, $E3
|1482E8| db $1F, $7B
|1482EA| db $25 ; Repeat byte
|1482EB| db $FF
|1482EC| db $05 ; Raw block
|1482ED| db $00, $FF, $07, $F8, $1F, $E0
|1482F3| db $43 ; Repeat word
|1482F4| dw $C03F
|1482F6| db $45 ; Repeat word
|1482F7| dw $807F
|1482F9| db $28 ; Repeat byte
|1482FA| db $FF
|1482FB| db $4E ; Repeat word
|1482FC| dw $FF00
|1482FE| db $27 ; Repeat byte
|1482FF| db $FF
|148300| db $17 ; Raw block
|148301| db $70, $3A, $B2, $34, $A1, $6C, $A5, $58
|148309| db $C2, $30, $7D, $00, $9A, $01, $6A, $81
|148311| db $3F, $7F, $7E, $5E, $3D, $93, $E7, $F7
|148319| db $22 ; Repeat byte
|14831A| db $FF
|14831B| db $94 ; Copy past
|14831C| dw $0003
|14831E| db $0D ; Raw block
|14831F| db $00, $00, $01, $01, $03, $03, $07, $07
|148327| db $1F, $1F, $07, $07, $01, $01
|14832D| db $29 ; Repeat byte
|14832E| db $00
|14832F| db $05 ; Raw block
|148330| db $80, $80, $C0, $40, $A0, $60
|148336| db $45 ; Repeat word
|148337| dw $A060
|148339| db $06 ; Raw block
|14833A| db $D0, $30, $FE, $02, $7F, $3F, $1F
|148341| db $22 ; Repeat byte
|148342| db $9F
|148343| db $0E ; Raw block
|148344| db $0F, $01, $08, $00, $0C, $07, $0A, $07
|14834C| db $07, $03, $05, $01, $02, $00, $01
|148353| db $22 ; Repeat byte
|148354| db $00
|148355| db $22 ; Repeat byte
|148356| db $07
|148357| db $02 ; Raw block
|148358| db $03, $03, $01
|14835B| db $83 ; Copy past
|14835C| dw $0126
|14835E| db $08 ; Raw block
|14835F| db $0B, $00, $16, $00, $0B, $00, $06, $00
|148367| db $01
|148368| db $25 ; Repeat byte
|148369| db $00
|14836A| db $03 ; Raw block
|14836B| db $07, $0F, $07, $01
|14836F| db $22 ; Repeat byte
|148370| db $00
|148371| db $E0, $47 ; EXT Raw block
|148373| db $31, $00, $1F, $00, $91, $0E, $E2, $1C
|14837B| db $73, $00, $D9, $20, $A3, $00, $3E, $00
|148383| db $0E, $00, $0F, $1F, $BC, $BE, $DC, $C1
|14838B| db $B5, $7B, $DA, $BD, $ED, $DE, $F6, $EF
|148393| db $FB, $F7, $FD, $FB, $FE, $FD, $FF, $FE
|14839B| db $00, $80, $C0, $E0, $F0, $F8, $FC, $FE
|1483A3| db $42, $BF, $21, $DF, $90, $EF, $C8, $77
|1483AB| db $64, $3B, $32, $1D, $19, $0E, $8C, $87
|1483B3| db $3D, $1E, $0F, $87, $C3, $E1, $F0, $78
|1483BB| db $97 ; Copy past
|1483BC| dw $0480
|1483BE| db $09 ; Raw block
|1483BF| db $BD, $00, $DB, $42, $AD, $6E, $C3, $BD
|1483C7| db $FF, $C3
|1483C9| db $25 ; Repeat byte
|1483CA| db $FF
|1483CB| db $04 ; Raw block
|1483CC| db $42, $3C, $10, $81, $C3
|1483D1| db $22 ; Repeat byte
|1483D2| db $FF
|1483D3| db $01 ; Raw block
|1483D4| db $3F, $3F
|1483D6| db $25 ; Repeat byte
|1483D7| db $00
|1483D8| db $01 ; Raw block
|1483D9| db $FF, $00
|1483DB| db $22 ; Repeat byte
|1483DC| db $FF
|1483DD| db $03 ; Raw block
|1483DE| db $00, $80, $7F, $C0
|1483E2| db $23 ; Repeat byte
|1483E3| db $FF
|1483E4| db $22 ; Repeat byte
|1483E5| db $00
|1483E6| db $97 ; Copy past
|1483E7| dw $0090
|1483E9| db $E0, $32 ; EXT Raw block
|1483EB| db $10, $CF, $88, $B7, $78, $67, $F8, $83
|1483F3| db $E4, $03, $8A, $11, $64, $19, $92, $0D
|1483FB| db $FF, $FF, $F7, $E7, $9B, $7D, $FF, $7F
|148403| db $E7, $00, $B5, $70, $CE, $1C, $AF, $06
|14840B| db $74, $03, $7E, $01, $BF, $00, $DF, $00
|148413| db $1F, $7B, $7D, $7E, $BF, $BB, $DD, $E3
|14841B| db $E0, $00, $B4
|14841E| db $88 ; Copy past
|14841F| dw $052B
|148421| db $02 ; Raw block
|148422| db $3F, $00, $1C
|148425| db $88 ; Copy past
|148426| dw $0537
|148428| db $17 ; Raw block
|148429| db $FD, $00, $AF, $00, $46, $20, $84, $50
|148431| db $45, $B0, $AA, $41, $54, $83, $C8, $07
|148439| db $02, $70, $F9, $FB, $BB, $77, $EF, $FF
|148441| db $85 ; Copy past
|148442| dw $040A
|148444| db $09 ; Raw block
|148445| db $0F, $0F, $1F, $1F, $3E, $3E, $7C, $7C
|14844D| db $F8, $F8
|14844F| db $86 ; Copy past
|148450| dw $0011
|148452| db $04 ; Raw block
|148453| db $07, $7F, $7F, $0F, $0F
|148458| db $85 ; Copy past
|148459| dw $0574
|14845B| db $83 ; Copy past
|14845C| dw $0412
|14845E| db $29 ; Repeat byte
|14845F| db $00
|148460| db $23 ; Repeat byte
|148461| db $10
|148462| db $05 ; Raw block
|148463| db $18, $18, $1D, $1D, $1F, $1F
|148469| db $23 ; Repeat byte
|14846A| db $3F
|14846B| db $01 ; Raw block
|14846C| db $7F, $7F
|14846E| db $29 ; Repeat byte
|14846F| db $00
|148470| db $23 ; Repeat byte
|148471| db $10
|148472| db $23 ; Repeat byte
|148473| db $38
|148474| db $05 ; Raw block
|148475| db $7C, $7C, $7E, $7E, $FF, $FF
|14847B| db $2D ; Repeat byte
|14847C| db $00
|14847D| db $08 ; Raw block
|14847E| db $04, $00, $0A, $00, $15, $00, $1F, $00
|148486| db $2B
|148487| db $24 ; Repeat byte
|148488| db $00
|148489| db $12 ; Raw block
|14848A| db $04, $0E, $0E, $1E, $0E, $00, $1B, $00
|148492| db $15, $00, $38, $06, $30, $0B, $56, $09
|14849A| db $65, $00, $DD
|14849D| db $83 ; Copy past
|14849E| dw $05E2
|1484A0| db $04 ; Raw block
|1484A1| db $0F, $1F, $3B, $3B, $23
|1484A6| db $FF ; End of GFX 47

;===================================================================================================

GFX_48:
|1484A7| db $0F ; Raw block
|1484A8| db $E4, $1B, $B4, $4B, $9C, $63, $AE, $31
|1484B0| db $A7, $38, $99, $1E, $CE, $4F, $C6, $47
|1484B8| db $22 ; Repeat byte
|1484B9| db $00
|1484BA| db $14 ; Raw block
|1484BB| db $40, $40, $60, $30, $38, $FE, $FF, $CE
|1484C3| db $FF, $46, $FF, $00, $FF, $81, $7E, $F1
|1484CB| db $0E, $FF, $00, $8F, $70
|1484D0| db $27 ; Repeat byte
|1484D1| db $00
|1484D2| db $4E ; Repeat word
|1484D3| dw $00FF
|1484D5| db $28 ; Repeat byte
|1484D6| db $00
|1484D7| db $43 ; Repeat word
|1484D8| dw $0080
|1484DA| db $43 ; Repeat word
|1484DB| dw $00C0
|1484DD| db $43 ; Repeat word
|1484DE| dw $00E0
|1484E0| db $02 ; Raw block
|1484E1| db $F0, $00, $F0
|1484E4| db $36 ; Repeat byte
|1484E5| db $00
|1484E6| db $00 ; Raw block
|1484E7| db $01
|1484E8| db $27 ; Repeat byte
|1484E9| db $00
|1484EA| db $1A ; Raw block
|1484EB| db $01, $03, $00, $04, $03, $0A, $07, $12
|1484F3| db $0B, $2B, $1B, $50, $31, $C2, $23, $A3
|1484FB| db $63, $02, $04, $08, $14, $24, $4E, $DC
|148503| db $9C, $C9, $39
|148506| db $43 ; Repeat word
|148507| dw $38D8
|148509| db $05 ; Raw block
|14850A| db $C4, $3C, $EE, $1E, $EF, $1F
|148510| db $43 ; Repeat word
|148511| dw $3FDF
|148513| db $1F ; Raw block
|148514| db $46, $47, $47, $43, $61, $20, $00, $00
|14851C| db $72, $F3, $EC, $EF, $18, $1E, $30, $3C
|148524| db $E0, $F9, $C3, $F2, $85, $E6, $25, $E6
|14852C| db $0C, $10, $E1, $C3, $06, $0D, $18, $38
|148534| db $43 ; Repeat word
|148535| dw $00FF
|148537| db $04 ; Raw block
|148538| db $07, $F8, $00, $FF, $F8
|14853D| db $26 ; Repeat byte
|14853E| db $FF
|14853F| db $27 ; Repeat byte
|148540| db $00
|148541| db $45 ; Repeat word
|148542| dw $00FF
|148544| db $09 ; Raw block
|148545| db $7F, $80, $1F, $E0, $87, $F8, $E7, $F8
|14854D| db $F3, $FC
|14854F| db $27 ; Repeat byte
|148550| db $00
|148551| db $08 ; Raw block
|148552| db $F3, $03, $F9, $01, $F8, $00, $FC, $00
|14855A| db $FE
|14855B| db $46 ; Repeat word
|14855C| dw $FF00
|14855E| db $01 ; Raw block
|14855F| db $FC, $FE
|148561| db $25 ; Repeat byte
|148562| db $FF
|148563| db $4E ; Repeat word
|148564| dw $FF00
|148566| db $2C ; Repeat byte
|148567| db $FF
|148568| db $E0, $34 ; EXT Raw block
|14856A| db $F9, $F9, $F8, $F8, $C0, $C0, $EC, $E0
|148572| db $F7, $F0, $FA, $F8, $FF, $FF, $F9, $F8
|14857A| db $C0, $E0, $F0, $F9, $FF, $FF, $CF, $CF
|148582| db $CD, $CD, $88, $88, $22, $00, $63, $00
|14858A| db $94, $00, $08, $23, $FF, $CF, $CD, $88
|148592| db $00, $00, $63, $F7, $FF, $80, $DF, $5F
|14859A| db $AF, $6F, $90, $70, $9F
|14859F| db $46 ; Repeat word
|1485A0| dw $9870
|1485A2| db $02 ; Raw block
|1485A3| db $00, $20, $10
|1485A6| db $24 ; Repeat byte
|1485A7| db $0F
|1485A8| db $1F ; Raw block
|1485A9| db $80, $01, $40, $02, $20, $04, $10, $08
|1485B1| db $08, $10, $04, $20, $02, $40, $01, $80
|1485B9| db $80, $40, $20, $10, $08, $04, $02, $01
|1485C1| db $A1, $62, $92, $76, $98, $7C, $8E, $7A
|1485C9| db $43 ; Repeat word
|1485CA| dw $3BCD
|1485CC| db $07 ; Raw block
|1485CD| db $CC, $3B, $6C, $9B, $1C, $09, $03, $01
|1485D5| db $23 ; Repeat byte
|1485D6| db $00
|1485D7| db $17 ; Raw block
|1485D8| db $E1, $FE, $FF, $FE, $1E, $1F, $01, $01
|1485E0| db $81, $81, $F0, $F1, $DE, $FF, $9E, $FF
|1485E8| db $00, $00, $E0, $FE, $7E, $0E, $00, $00
|1485F0| db $97 ; Copy past
|1485F1| dw $0168
|1485F3| db $43 ; Repeat word
|1485F4| dw $00F8
|1485F6| db $43 ; Repeat word
|1485F7| dw $00FC
|1485F9| db $43 ; Repeat word
|1485FA| dw $00FE
|1485FC| db $02 ; Raw block
|1485FD| db $FF, $00, $FF
|148600| db $28 ; Repeat byte
|148601| db $00
|148602| db $E0, $2F ; EXT Raw block
|148604| db $02, $01, $05, $03, $0E, $02, $1A, $06
|14860C| db $34, $0C, $6C, $1C, $C8, $38, $D9, $39
|148614| db $02, $04, $0D, $19, $33, $63, $C7, $46
|14861C| db $40, $C1, $92, $93, $03, $23, $60, $61
|148624| db $22, $63, $C3, $C3, $40, $C1, $42, $C3
|14862C| db $3E, $6C, $DC, $9E, $9C, $3C, $3E, $3C
|148634| db $97 ; Copy past
|148635| dw $0168
|148637| db $97 ; Copy past
|148638| dw $0168
|14863A| db $23 ; Repeat byte
|14863B| db $FF
|14863C| db $04 ; Raw block
|14863D| db $07, $07, $00, $00, $F8
|148642| db $45 ; Repeat word
|148643| dw $FF00
|148645| db $22 ; Repeat byte
|148646| db $00
|148647| db $00 ; Raw block
|148648| db $F8
|148649| db $2A ; Repeat byte
|14864A| db $FF
|14864B| db $09 ; Raw block
|14864C| db $7F, $7F, $1F, $1F, $87, $07, $E7, $07
|148654| db $F3, $03
|148656| db $22 ; Repeat byte
|148657| db $00
|148658| db $1C ; Raw block
|148659| db $80, $E0, $F8, $F8, $FC, $67, $E4, $EB
|148661| db $EC, $CF, $C8, $97, $98, $6F, $70, $9F
|148669| db $E0, $3E, $C0, $F8, $00, $7A, $F0, $F4
|148671| db $E0, $88, $10, $20, $00
|148676| db $4E ; Repeat word
|148677| dw $FF00
|148679| db $28 ; Repeat byte
|14867A| db $FF
|14867B| db $43 ; Repeat word
|14867C| dw $8082
|14867E| db $E0, $2B ; EXT Raw block
|148680| db $F2, $C0, $5C, $41, $18, $01, $90, $03
|148688| db $E0, $07, $00, $1F, $81, $81, $C1, $43
|148690| db $07, $0F, $1F, $FF, $8E, $80, $E4, $E1
|148698| db $F2, $F0, $82, $80, $CA, $C0, $E4, $E0
|1486A0| db $E2, $E1, $C2, $C0, $81, $E3, $F1, $81
|1486A8| db $C1, $E3, $E1, $C1
|1486AC| db $4F ; Repeat word
|1486AD| dw $7098
|1486AF| db $27 ; Repeat byte
|1486B0| db $0F
|1486B1| db $97 ; Copy past
|1486B2| dw $0168
|1486B4| db $13 ; Raw block
|1486B5| db $41, $8E, $22, $CD, $34, $CB, $05, $FA
|1486BD| db $0B, $F0, $05, $F8, $02, $FC, $01, $FE
|1486C5| db $FE, $FD, $FB, $FE
|1486C9| db $83 ; Copy past
|1486CA| dw $0100
|1486CC| db $E0, $2F ; EXT Raw block
|1486CE| db $78, $87, $84, $03, $02, $31, $3A, $41
|1486D6| db $33, $40, $25, $02, $88, $07, $72, $8F
|1486DE| db $00, $78, $CC, $84, $8C, $D8, $70, $00
|1486E6| db $CE, $3F, $C4, $3F, $C0, $3E, $E8, $14
|1486EE| db $F0, $08, $FF, $1F, $C0, $3F, $FF, $00
|1486F6| db $40, $40, $41, $6B, $77, $60, $00, $00
|1486FE| db $45 ; Repeat word
|1486FF| dw $3EC1
|148701| db $43 ; Repeat word
|148702| dw $02FD
|148704| db $06 ; Raw block
|148705| db $ED, $72, $6D, $B2, $DD, $62, $80
|14870C| db $22 ; Repeat byte
|14870D| db $00
|14870E| db $03 ; Raw block
|14870F| db $F0, $F0, $B0, $70
|148713| db $97 ; Copy past
|148714| dw $0168
|148716| db $06 ; Raw block
|148717| db $F3, $FC, $F9, $FE, $FC, $FF, $FE
|14871E| db $28 ; Repeat byte
|14871F| db $FF
|148720| db $27 ; Repeat byte
|148721| db $00
|148722| db $14 ; Raw block
|148723| db $01, $02, $0F, $04, $3C, $1B, $7B, $27
|14872B| db $F7, $4F, $EF, $1E, $FF, $00, $FD, $9E
|148733| db $03, $0C, $38, $60, $C0
|148738| db $22 ; Repeat byte
|148739| db $80
|14873A| db $11 ; Raw block
|14873B| db $FF, $00, $F9, $06, $33, $CC, $FF, $E3
|148743| db $F7, $0F, $97, $6F, $17, $EF, $38, $C7
|14874B| db $F1, $20
|14874D| db $25 ; Repeat byte
|14874E| db $00
|14874F| db $0D ; Raw block
|148750| db $64, $9B, $34, $4B, $1C, $23, $0E, $11
|148758| db $07, $08, $01, $06, $00, $01
|14875E| db $29 ; Repeat byte
|14875F| db $00
|148760| db $04 ; Raw block
|148761| db $FE, $FF, $4E, $FF, $06
|148766| db $86 ; Copy past
|148767| dw $001D
|148769| db $03 ; Raw block
|14876A| db $7F, $80, $0F, $70
|14876E| db $27 ; Repeat byte
|14876F| db $00
|148770| db $43 ; Repeat word
|148771| dw $7098
|148773| db $06 ; Raw block
|148774| db $94, $70, $8A, $78, $85, $7C, $83
|14877B| db $44 ; Repeat word
|14877C| dw $827F
|14877E| db $22 ; Repeat byte
|14877F| db $0F
|148780| db $01 ; Raw block
|148781| db $07, $03
|148783| db $22 ; Repeat byte
|148784| db $00
|148785| db $17 ; Raw block
|148786| db $80, $0F, $F0, $07, $08, $03, $98, $81
|14878E| db $3E, $01, $01, $00, $39, $38, $F2, $F0
|148796| db $7F, $0F, $07, $87, $00, $00, $38, $F1
|14879E| db $43 ; Repeat word
|14879F| dw $00FF
|1487A1| db $0D ; Raw block
|1487A2| db $97, $58, $E0, $60, $DF, $5F, $E0, $00
|1487AA| db $9F, $60, $80, $7F, $00, $00
|1487B0| db $43 ; Repeat word
|1487B1| dw $1F20
|1487B3| db $00 ; Raw block
|1487B4| db $00
|1487B5| db $4F ; Repeat word
|1487B6| dw $FF00
|1487B8| db $28 ; Repeat byte
|1487B9| db $00
|1487BA| db $06 ; Raw block
|1487BB| db $80, $00, $C0, $40, $E0, $60, $80
|1487C2| db $44 ; Repeat word
|1487C3| dw $BF7F
|1487C5| db $83 ; Copy past
|1487C6| dw $0456
|1487C8| db $02 ; Raw block
|1487C9| db $7F, $3F, $1F
|1487CC| db $24 ; Repeat byte
|1487CD| db $00
|1487CE| db $4F ; Repeat word
|1487CF| dw $00FF
|1487D1| db $27 ; Repeat byte
|1487D2| db $FF
|1487D3| db $49 ; Repeat word
|1487D4| dw $FF02
|1487D6| db $45 ; Repeat word
|1487D7| dw $FF06
|1487D9| db $27 ; Repeat byte
|1487DA| db $00
|1487DB| db $0F ; Raw block
|1487DC| db $18, $FF, $1C, $FF, $8D, $7E, $42, $BD
|1487E4| db $3D, $C3, $9E, $7F, $C1, $3E, $7E, $81
|1487EC| db $27 ; Repeat byte
|1487ED| db $00
|1487EE| db $97 ; Copy past
|1487EF| dw $0168
|1487F1| db $01 ; Raw block
|1487F2| db $39, $C6
|1487F4| db $43 ; Repeat word
|1487F5| dw $06F9
|1487F7| db $11 ; Raw block
|1487F8| db $95, $62, $2B, $C0, $DB, $00, $A5, $18
|148800| db $89, $34, $E0, $C0, $80, $08, $1C, $3C
|148808| db $7E, $76
|14880A| db $4F ; Repeat word
|14880B| dw $00FF
|14880D| db $37 ; Repeat byte
|14880E| db $FF
|14880F| db $27 ; Repeat byte
|148810| db $00
|148811| db $07 ; Raw block
|148812| db $9F, $6F, $EF, $16, $77, $88, $31, $CE
|14881A| db $43 ; Repeat word
|14881B| dw $4EB1
|14881D| db $05 ; Raw block
|14881E| db $F1, $0E, $E1, $1E, $00, $00
|148824| db $22 ; Repeat byte
|148825| db $E0
|148826| db $0D ; Raw block
|148827| db $60, $E0, $C0, $FF, $00, $EF, $F0, $3E
|14882F| db $3F, $C0, $20, $3F, $C0, $00
|148835| db $44 ; Repeat word
|148836| dw $02FF
|148838| db $03 ; Raw block
|148839| db $00, $00, $C0, $1F
|14883D| db $23 ; Repeat byte
|14883E| db $00
|14883F| db $E0, $2F ; EXT Raw block
|148841| db $31, $00, $7B, $05, $66, $19, $33, $4C
|148849| db $7F, $80, $F3, $30, $FE, $00, $7A, $81
|148851| db $00, $30, $21, $00, $02, $4D, $71, $0D
|148859| db $73, $85, $67, $09, $CE, $10, $DE, $60
|148861| db $7F, $81, $06, $79, $03, $0C, $01, $02
|148869| db $18, $34, $69, $11, $08, $04, $01, $00
|148871| db $43 ; Repeat word
|148872| dw $7F82
|148874| db $0B ; Raw block
|148875| db $C2, $BF, $62, $5F, $32, $2F, $1B, $17
|14887D| db $0D, $0B, $07, $04
|148881| db $22 ; Repeat byte
|148882| db $00
|148883| db $0C ; Raw block
|148884| db $80, $C0, $E0, $F0, $F8, $E7, $E0, $F0
|14888C| db $F0, $E0, $E0, $E7, $E7
|148891| db $27 ; Repeat byte
|148892| db $FF
|148893| db $03 ; Raw block
|148894| db $E0, $F0, $E0, $E7
|148898| db $23 ; Repeat byte
|148899| db $FF
|14889A| db $47 ; Repeat word
|14889B| dw $7F90
|14889D| db $47 ; Repeat word
|14889E| dw $3FD8
|1488A0| db $27 ; Repeat byte
|1488A1| db $00
|1488A2| db $11 ; Raw block
|1488A3| db $FF, $00, $33, $CC, $FF, $00, $DF, $EF
|1488AB| db $D7, $EF, $37, $CF, $F8, $07, $FF, $00
|1488B3| db $33, $01
|1488B5| db $25 ; Repeat byte
|1488B6| db $00
|1488B7| db $97 ; Copy past
|1488B8| dw $0168
|1488BA| db $47 ; Repeat word
|1488BB| dw $7F90
|1488BD| db $47 ; Repeat word
|1488BE| dw $3FD8
|1488C0| db $27 ; Repeat byte
|1488C1| db $00
|1488C2| db $FF ; End of GFX 48

;===================================================================================================

GFX_49:
|1488C3| db $4B ; Repeat word
|1488C4| dw $7EBE
|1488C6| db $03 ; Raw block
|1488C7| db $BC, $7C, $B9, $79
|1488CB| db $25 ; Repeat byte
|1488CC| db $01
|1488CD| db $03 ; Raw block
|1488CE| db $03, $06, $FF, $FF
|1488D2| db $2A ; Repeat byte
|1488D3| db $00
|1488D4| db $01 ; Raw block
|1488D5| db $FF, $7F
|1488D7| db $26 ; Repeat byte
|1488D8| db $FF
|1488D9| db $01 ; Raw block
|1488DA| db $00, $7F
|1488DC| db $23 ; Repeat byte
|1488DD| db $FF
|1488DE| db $03 ; Raw block
|1488DF| db $B3, $B3, $F3, $F3
|1488E3| db $23 ; Repeat byte
|1488E4| db $FF
|1488E5| db $01 ; Raw block
|1488E6| db $DF, $DF
|1488E8| db $2A ; Repeat byte
|1488E9| db $FF
|1488EA| db $0E ; Raw block
|1488EB| db $00, $00, $FF, $EF, $10, $DC, $27, $B2
|1488F3| db $4F, $61, $9F, $C0, $3F, $80, $7F
|1488FA| db $27 ; Repeat byte
|1488FB| db $00
|1488FC| db $83 ; Copy past
|1488FD| dw $0048
|1488FF| db $01 ; Raw block
|148900| db $FF, $00
|148902| db $46 ; Repeat word
|148903| dw $FF00
|148905| db $22 ; Repeat byte
|148906| db $FF
|148907| db $27 ; Repeat byte
|148908| db $00
|148909| db $43 ; Repeat word
|14890A| dw $00FF
|14890C| db $0A ; Raw block
|14890D| db $BF, $00, $9F, $00, $CF, $00, $E0, $00
|148915| db $7F, $00, $F5
|148918| db $22 ; Repeat byte
|148919| db $00
|14891A| db $05 ; Raw block
|14891B| db $7B, $7B, $3B, $1F, $80, $8A
|148921| db $45 ; Repeat word
|148922| dw $FF7F
|148924| db $05 ; Raw block
|148925| db $78, $F8, $B7, $7F, $C0, $3F
|14892B| db $43 ; Repeat word
|14892C| dw $00FF
|14892E| db $03 ; Raw block
|14892F| db $3F, $1F, $0F, $07
|148933| db $23 ; Repeat byte
|148934| db $00
|148935| db $05 ; Raw block
|148936| db $FF, $00, $80, $7F, $FF, $7F
|14893C| db $43 ; Repeat word
|14893D| dw $0080
|14893F| db $02 ; Raw block
|148940| db $FF, $00, $00
|148943| db $22 ; Repeat byte
|148944| db $FF
|148945| db $22 ; Repeat byte
|148946| db $00
|148947| db $01 ; Raw block
|148948| db $7F, $7F
|14894A| db $22 ; Repeat byte
|14894B| db $00
|14894C| db $0B ; Raw block
|14894D| db $70, $8F, $70, $90, $E3, $23, $C7, $44
|148955| db $8F, $88, $9F, $90
|148959| db $43 ; Repeat word
|14895A| dw $A0BF
|14895C| db $E0, $27 ; EXT Raw block
|14895E| db $00, $0F, $1C, $38, $72, $66, $46, $46
|148966| db $4A, $B5, $B1, $FB, $41, $73, $BD, $BF
|14896E| db $F4, $75, $FB, $0B, $FF, $47, $FF, $40
|148976| db $00, $84, $CC, $7C, $0E, $07, $20, $30
|14897E| db $7F, $80, $5F, $A0, $9F, $60, $7F, $E0
|148986| db $47 ; Repeat word
|148987| dw $809F
|148989| db $23 ; Repeat byte
|14898A| db $00
|14898B| db $23 ; Repeat byte
|14898C| db $60
|14898D| db $2C ; Repeat byte
|14898E| db $FF
|14898F| db $02 ; Raw block
|148990| db $FE, $FF, $FC
|148993| db $27 ; Repeat byte
|148994| db $00
|148995| db $2A ; Repeat byte
|148996| db $FF
|148997| db $43 ; Repeat word
|148998| dw $FFFE
|14899A| db $00 ; Raw block
|14899B| db $1E
|14899C| db $27 ; Repeat byte
|14899D| db $00
|14899E| db $0F ; Raw block
|14899F| db $60, $9F, $4C, $B3, $AE, $71, $7E, $E1
|1489A7| db $B6, $A9, $BA, $AD, $BD, $AE, $AC, $BF
|1489AF| db $23 ; Repeat byte
|1489B0| db $00
|1489B1| db $23 ; Repeat byte
|1489B2| db $40
|1489B3| db $E0, $26 ; EXT Raw block
|1489B5| db $07, $00, $0C, $04, $19, $08, $3B, $18
|1489BD| db $73, $30, $F1, $70, $B0, $30, $BC, $3C
|1489C5| db $00, $03, $07, $07, $0F, $0F, $4F, $43
|1489CD| db $02, $00, $22, $00, $1C, $00, $18, $00
|1489D5| db $1C, $00, $24, $00, $62, $00, $02
|1489DC| db $28 ; Repeat byte
|1489DD| db $00
|1489DE| db $07 ; Raw block
|1489DF| db $B3, $73, $A7, $67, $8F, $4F, $9F, $5F
|1489E7| db $43 ; Repeat word
|1489E8| dw $7FBF
|1489EA| db $0D ; Raw block
|1489EB| db $9E, $7E, $CE, $3E, $0C, $18, $30, $20
|1489F3| db $00, $00, $01, $01, $DF, $DE
|1489F9| db $43 ; Repeat word
|1489FA| dw $5E5F
|1489FC| db $01 ; Raw block
|1489FD| db $3F, $3E
|1489FF| db $43 ; Repeat word
|148A00| dw $2E2F
|148A02| db $03 ; Raw block
|148A03| db $1F, $1E, $17, $16
|148A07| db $23 ; Repeat byte
|148A08| db $E0
|148A09| db $22 ; Repeat byte
|148A0A| db $F0
|148A0B| db $02 ; Raw block
|148A0C| db $F8, $FF, $FF
|148A0F| db $2D ; Repeat byte
|148A10| db $00
|148A11| db $27 ; Repeat byte
|148A12| db $FF
|148A13| db $05 ; Raw block
|148A14| db $9B, $67, $CD, $33, $EB, $14
|148A1A| db $45 ; Repeat word
|148A1B| dw $17E9
|148A1D| db $03 ; Raw block
|148A1E| db $69, $97, $B9, $C7
|148A22| db $25 ; Repeat byte
|148A23| db $70
|148A24| db $0D ; Raw block
|148A25| db $30, $10, $80, $7F, $0F, $FF, $E0, $F1
|148A2D| db $01, $F2, $03, $84, $05, $C8
|148A33| db $43 ; Repeat word
|148A34| dw $CA87
|148A36| db $07 ; Raw block
|148A37| db $00, $00, $0E, $0C, $78, $32, $30, $30
|148A3F| db $49 ; Repeat word
|148A40| dw $00FF
|148A42| db $0F ; Raw block
|148A43| db $BF, $00, $DF, $00, $E0, $00, $8A, $80
|148A4B| db $1B, $3B, $3B, $7B, $3B, $1F, $24, $3C
|148A53| db $43 ; Repeat word
|148A54| dw $6642
|148A56| db $04 ; Raw block
|148A57| db $5A, $7E, $DB, $FF, $E7
|148A5C| db $83 ; Copy past
|148A5D| dw $006B
|148A5F| db $04 ; Raw block
|148A60| db $00, $C3, $99, $99, $81
|148A65| db $23 ; Repeat byte
|148A66| db $00
|148A67| db $07 ; Raw block
|148A68| db $80, $00, $80, $7F, $C0, $40, $9F, $1F
|148A70| db $43 ; Repeat word
|148A71| dw $27A6
|148A73| db $0D ; Raw block
|148A74| db $BF, $3F, $8F, $3F, $7F, $00, $3F, $60
|148A7C| db $58, $58, $40, $40, $6F, $A0
|148A82| db $43 ; Repeat word
|148A83| dw $B07F
|148A85| db $0C ; Raw block
|148A86| db $77, $B8, $7F, $9F, $7F, $80, $40, $BF
|148A8E| db $FF, $3F, $16, $07, $07
|148A93| db $24 ; Repeat byte
|148A94| db $00
|148A95| db $07 ; Raw block
|148A96| db $FF, $41, $FF, $21, $FF, $23, $FF, $07
|148A9E| db $62 ; Increment fill
|148A9F| db $FD
|148AA0| db $01 ; Raw block
|148AA1| db $00, $00
|148AA3| db $22 ; Repeat byte
|148AA4| db $FF
|148AA5| db $02 ; Raw block
|148AA6| db $3C, $1C, $18
|148AA9| db $24 ; Repeat byte
|148AAA| db $00
|148AAB| db $05 ; Raw block
|148AAC| db $9F, $80, $FF, $E0, $FF, $00
|148AB2| db $43 ; Repeat word
|148AB3| dw $201F
|148AB5| db $0D ; Raw block
|148AB6| db $9F, $A0, $DF, $60, $DF, $20, $60, $00
|148ABE| db $00, $C0, $C0, $40, $00, $00
|148AC4| db $2F ; Repeat byte
|148AC5| db $FF
|148AC6| db $27 ; Repeat byte
|148AC7| db $00
|148AC8| db $0F ; Raw block
|148AC9| db $FF, $8E, $FF, $C6, $FF, $E4, $FF, $F4
|148AD1| db $FF, $E4, $FF, $CF, $FF, $F8, $FF, $C0
|148AD9| db $27 ; Repeat byte
|148ADA| db $00
|148ADB| db $05 ; Raw block
|148ADC| db $A9, $BE, $F2, $ED, $F6, $09
|148AE2| db $43 ; Repeat word
|148AE3| dw $A19E
|148AE5| db $06 ; Raw block
|148AE6| db $BE, $A1, $FE, $61, $FC, $23, $40
|148AED| db $83 ; Copy past
|148AEE| dw $014A
|148AF0| db $08 ; Raw block
|148AF1| db $48, $08, $00, $9E, $1E, $87, $07, $C3
|148AF9| db $43
|148AFA| db $43 ; Repeat word
|148AFB| dw $78F8
|148AFD| db $0F ; Raw block
|148AFE| db $7C, $3C, $3F, $0F, $7F, $07, $61, $78
|148B06| db $3C, $07, $07, $03, $00, $00, $E8, $F7
|148B0E| db $43 ; Repeat word
|148B0F| dw $EFF0
|148B11| db $01 ; Raw block
|148B12| db $D0, $EF
|148B14| db $43 ; Repeat word
|148B15| dw $DFE0
|148B17| db $43 ; Repeat word
|148B18| dw $DFA0
|148B1A| db $27 ; Repeat byte
|148B1B| db $00
|148B1C| db $0F ; Raw block
|148B1D| db $F6, $CF, $D6, $EF, $FE, $E7, $EA, $F7
|148B25| db $FD, $F3, $FE, $F9, $FF, $FC, $FF, $FE
|148B2D| db $2B ; Repeat byte
|148B2E| db $00
|148B2F| db $03 ; Raw block
|148B30| db $FF, $FF, $00, $FF
|148B34| db $43 ; Repeat word
|148B35| dw $00FF
|148B37| db $00 ; Raw block
|148B38| db $00
|148B39| db $24 ; Repeat byte
|148B3A| db $FF
|148B3B| db $29 ; Repeat byte
|148B3C| db $00
|148B3D| db $10 ; Raw block
|148B3E| db $FD, $FE, $02, $FC, $FE, $00, $FF, $01
|148B46| db $02, $FD, $FF, $FC, $FF, $FF, $00, $01
|148B4E| db $01
|148B4F| db $22 ; Repeat byte
|148B50| db $00
|148B51| db $03 ; Raw block
|148B52| db $BE, $7E, $FE, $3E
|148B56| db $43 ; Repeat word
|148B57| dw $5E3E
|148B59| db $03 ; Raw block
|148B5A| db $BE, $DE, $DE, $3E
|148B5E| db $43 ; Repeat word
|148B5F| dw $7EBE
|148B61| db $03 ; Raw block
|148B62| db $01, $01, $81, $81
|148B66| db $24 ; Repeat byte
|148B67| db $01
|148B68| db $00 ; Raw block
|148B69| db $FE
|148B6A| db $83 ; Copy past
|148B6B| dw $0062
|148B6D| db $46 ; Repeat word
|148B6E| dw $FF00
|148B70| db $22 ; Repeat byte
|148B71| db $FF
|148B72| db $27 ; Repeat byte
|148B73| db $00
|148B74| db $4F ; Repeat word
|148B75| dw $7EBE
|148B77| db $27 ; Repeat byte
|148B78| db $01
|148B79| db $05 ; Raw block
|148B7A| db $FF, $FF, $0F, $0F, $03, $03
|148B80| db $23 ; Repeat byte
|148B81| db $01
|148B82| db $25 ; Repeat byte
|148B83| db $00
|148B84| db $27 ; Repeat byte
|148B85| db $FF
|148B86| db $03 ; Raw block
|148B87| db $8E, $3E, $C0, $40
|148B8B| db $43 ; Repeat word
|148B8C| dw $7F80
|148B8E| db $02 ; Raw block
|148B8F| db $FF, $00, $FF
|148B92| db $84 ; Copy past
|148B93| dw $03AD
|148B95| db $01 ; Raw block
|148B96| db $41, $3F
|148B98| db $25 ; Repeat byte
|148B99| db $00
|148B9A| db $E0, $2F ; EXT Raw block
|148B9C| db $BF, $B8, $F7, $F4, $FB, $0A, $3C, $04
|148BA4| db $BE, $82, $9F, $87, $CF, $40, $EF, $20
|148BAC| db $7A, $0C, $06, $C3, $49, $60, $30, $16
|148BB4| db $7F, $01, $BF, $81, $5F, $41, $2F, $21
|148BBC| db $17, $11, $F3, $F1, $FF, $01, $FF, $41
|148BC4| db $B8, $DC, $EC, $F4, $F8, $0C, $00, $3C
|148BCC| db $47 ; Repeat word
|148BCD| dw $A05F
|148BCF| db $03 ; Raw block
|148BD0| db $7A, $85, $60, $9F
|148BD4| db $83 ; Copy past
|148BD5| dw $024C
|148BD7| db $27 ; Repeat byte
|148BD8| db $00
|148BD9| db $22 ; Repeat byte
|148BDA| db $FF
|148BDB| db $0C ; Raw block
|148BDC| db $FC, $FF, $F0, $FF, $C0, $FF, $83, $FF
|148BE4| db $0F, $FF, $3F, $FF, $7F
|148BE9| db $27 ; Repeat byte
|148BEA| db $00
|148BEB| db $44 ; Repeat word
|148BEC| dw $00FF
|148BEE| db $04 ; Raw block
|148BEF| db $1F, $FF, $FC, $FF, $F1
|148BF4| db $44 ; Repeat word
|148BF5| dw $E1FF
|148BF7| db $00 ; Raw block
|148BF8| db $C1
|148BF9| db $27 ; Repeat byte
|148BFA| db $00
|148BFB| db $0B ; Raw block
|148BFC| db $7A, $A7, $75, $AE, $6B, $BC, $77, $B8
|148C04| db $4A, $B5, $70, $8F
|148C08| db $83 ; Copy past
|148C09| dw $024C
|148C0B| db $27 ; Repeat byte
|148C0C| db $00
|148C0D| db $0B ; Raw block
|148C0E| db $50, $60, $F0, $D0, $A0, $C0, $60, $A0
|148C16| db $C0, $40, $80, $80
|148C1A| db $23 ; Repeat byte
|148C1B| db $00
|148C1C| db $19 ; Raw block
|148C1D| db $8F, $0F, $1F, $1F, $3F, $7F, $FF, $FF
|148C25| db $66, $9E, $32, $CE, $99, $E7, $CC, $F3
|148C2D| db $E7, $F8, $F3, $FC, $F8, $FF, $7F, $FF
|148C35| db $01, $01
|148C37| db $25 ; Repeat byte
|148C38| db $00
|148C39| db $02 ; Raw block
|148C3A| db $3F, $FF, $1F
|148C3D| db $44 ; Repeat word
|148C3E| dw $0FFF
|148C40| db $00 ; Raw block
|148C41| db $9F
|148C42| db $24 ; Repeat byte
|148C43| db $FF
|148C44| db $01 ; Raw block
|148C45| db $7F, $FF
|148C47| db $27 ; Repeat byte
|148C48| db $00
|148C49| db $2F ; Repeat byte
|148C4A| db $FF
|148C4B| db $27 ; Repeat byte
|148C4C| db $00
|148C4D| db $45 ; Repeat word
|148C4E| dw $7EBD
|148C50| db $45 ; Repeat word
|148C51| dw $7EA1
|148C53| db $43 ; Repeat word
|148C54| dw $7EBD
|148C56| db $27 ; Repeat byte
|148C57| db $00
|148C58| db $07 ; Raw block
|148C59| db $FF, $FF, $01, $01, $02, $02, $06, $06
|148C61| db $23 ; Repeat byte
|148C62| db $0E
|148C63| db $23 ; Repeat byte
|148C64| db $1E
|148C65| db $14 ; Raw block
|148C66| db $FF, $FF, $FD, $F9, $F1, $F1, $E1, $E1
|148C6E| db $FF, $00, $03, $FC, $FE, $01, $03, $FD
|148C76| db $02, $FC, $01, $FE, $00
|148C7B| db $22 ; Repeat byte
|148C7C| db $FF
|148C7D| db $23 ; Repeat byte
|148C7E| db $00
|148C7F| db $00 ; Raw block
|148C80| db $01
|148C81| db $22 ; Repeat byte
|148C82| db $00
|148C83| db $0B ; Raw block
|148C84| db $FF, $FE, $FD, $FE, $FE, $FD, $FA, $FD
|148C8C| db $FC, $FB, $F4, $FB
|148C90| db $43 ; Repeat word
|148C91| dw $F7F8
|148C93| db $27 ; Repeat byte
|148C94| db $00
|148C95| db $13 ; Raw block
|148C96| db $DD, $E3, $DE, $E9, $D5, $E6, $F2, $EB
|148C9E| db $E8, $F7, $EF, $F0, $EF, $F2, $EC, $F3
|148CA6| db $00, $00, $08, $04
|148CAA| db $23 ; Repeat byte
|148CAB| db $00
|148CAC| db $83 ; Copy past
|148CAD| dw $048C
|148CAF| db $0B ; Raw block
|148CB0| db $9F, $7F, $E0, $1F, $1F, $E0, $80, $7F
|148CB8| db $E7, $1F, $F2, $0E
|148CBC| db $26 ; Repeat byte
|148CBD| db $00
|148CBE| db $01 ; Raw block
|148CBF| db $61, $FD
|148CC1| db $44 ; Repeat word
|148CC2| dw $F1DE
|148CC4| db $03 ; Raw block
|148CC5| db $FD, $DE, $01, $00
|148CC9| db $43 ; Repeat word
|148CCA| dw $FE01
|148CCC| db $00 ; Raw block
|148CCD| db $FF
|148CCE| db $24 ; Repeat byte
|148CCF| db $00
|148CD0| db $00 ; Raw block
|148CD1| db $FE
|148CD2| db $22 ; Repeat byte
|148CD3| db $00
|148CD4| db $E0, $2C ; EXT Raw block
|148CD6| db $E0, $61, $A3, $62, $71, $B2, $59, $BA
|148CDE| db $BC, $DD, $AE, $DE, $D7, $EF, $DB, $E7
|148CE6| db $1E, $1C, $0C, $04, $02, $01, $00, $00
|148CEE| db $87, $3F, $A7, $3F, $97, $5F, $8F, $6F
|148CF6| db $80, $70, $C0, $3F, $E0, $1F, $FF, $00
|148CFE| db $40, $40, $20, $10, $0F
|148D03| db $22 ; Repeat byte
|148D04| db $00
|148D05| db $0B ; Raw block
|148D06| db $FD, $FE, $FB, $FC, $F6, $F9, $ED, $F3
|148D0E| db $FB, $E7, $DF, $E7
|148D12| db $43 ; Repeat word
|148D13| dw $CFF7
|148D15| db $27 ; Repeat byte
|148D16| db $00
|148D17| db $02 ; Raw block
|148D18| db $FF, $FF, $03
|148D1B| db $83 ; Copy past
|148D1C| dw $0161
|148D1E| db $1C ; Raw block
|148D1F| db $0C, $0C, $0B, $05, $03, $05, $FB, $FD
|148D27| db $FA, $FF, $FF, $FC, $F8, $FB, $FB, $03
|148D2F| db $FB, $FD, $FA, $FC, $FB, $FE, $F9, $03
|148D37| db $00, $F8, $F8, $00, $FF
|148D3C| db $43 ; Repeat word
|148D3D| dw $00FF
|148D3F| db $22 ; Repeat byte
|148D40| db $FB
|148D41| db $01 ; Raw block
|148D42| db $FC, $07
|148D44| db $22 ; Repeat byte
|148D45| db $00
|148D46| db $43 ; Repeat word
|148D47| dw $7EBE
|148D49| db $0B ; Raw block
|148D4A| db $FE, $3E, $3E, $DE, $1E, $EE, $0E, $F6
|148D52| db $06, $FE, $FD, $FD
|148D56| db $26 ; Repeat byte
|148D57| db $01
|148D58| db $00 ; Raw block
|148D59| db $03
|148D5A| db $23 ; Repeat byte
|148D5B| db $3E
|148D5C| db $03 ; Raw block
|148D5D| db $FE, $FE, $3E, $FE
|148D61| db $47 ; Repeat word
|148D62| dw $7EBE
|148D64| db $01 ; Raw block
|148D65| db $C1, $C1
|148D67| db $25 ; Repeat byte
|148D68| db $01
|148D69| db $FF ; End of GFX 49

;===================================================================================================

GFX_4A:
|148D6A| db $06 ; Raw block
|148D6B| db $FF, $00, $80, $7F, $BF, $40, $A0
|148D72| db $43 ; Repeat word
|148D73| dw $BF5F
|148D75| db $44 ; Repeat word
|148D76| dw $B850
|148D78| db $24 ; Repeat byte
|148D79| db $00
|148D7A| db $22 ; Repeat byte
|148D7B| db $0F
|148D7C| db $00 ; Raw block
|148D7D| db $FF
|148D7E| db $44 ; Repeat word
|148D7F| dw $FE00
|148D81| db $43 ; Repeat word
|148D82| dw $00CF
|148D84| db $05 ; Raw block
|148D85| db $FF, $00, $7B, $00, $FF, $00
|148D8B| db $27 ; Repeat byte
|148D8C| db $FF
|148D8D| db $11 ; Raw block
|148D8E| db $6A, $10, $8A, $80, $F8, $70, $F4, $87
|148D96| db $76, $E2, $9E, $6A, $7D, $04, $B1, $A8
|148D9E| db $E5, $75
|148DA0| db $62 ; Increment fill
|148DA1| db $07
|148DA2| db $14 ; Raw block
|148DA3| db $01, $83, $47, $3F, $C0, $48, $B7, $87
|148DAB| db $78, $E3, $7D, $F3, $1D, $9A, $6C, $5E
|148DB3| db $A2, $EF, $1B, $C0, $80
|148DB8| db $22 ; Repeat byte
|148DB9| db $00
|148DBA| db $0A ; Raw block
|148DBB| db $01, $81, $00, $FF, $00, $F0, $0F, $3F
|148DC3| db $C0, $78, $87
|148DC6| db $87 ; Copy past
|148DC7| dw $004C
|148DC9| db $03 ; Raw block
|148DCA| db $00, $0F, $C0, $80
|148DCE| db $22 ; Repeat byte
|148DCF| db $00
|148DD0| db $0A ; Raw block
|148DD1| db $01, $5F, $E0, $F8, $DF, $EC, $DF, $E7
|148DD9| db $DF, $E6, $DE
|148DDC| db $43 ; Repeat word
|148DDD| dw $DCE4
|148DDF| db $02 ; Raw block
|148DE0| db $E6, $DE, $E0
|148DE3| db $22 ; Repeat byte
|148DE4| db $C0
|148DE5| db $05 ; Raw block
|148DE6| db $C1, $C3, $C3, $C1, $67, $78
|148DEC| db $43 ; Repeat word
|148DED| dw $3F20
|148DEF| db $03 ; Raw block
|148DF0| db $7F, $7F, $60, $60
|148DF4| db $25 ; Repeat byte
|148DF5| db $00
|148DF6| db $04 ; Raw block
|148DF7| db $80, $C0, $C0, $80, $9F
|148DFC| db $22 ; Repeat byte
|148DFD| db $FF
|148DFE| db $0B ; Raw block
|148DFF| db $FC, $03, $07, $F8, $00, $FF, $03, $03
|148E07| db $63, $63, $60, $60
|148E0B| db $23 ; Repeat byte
|148E0C| db $0C
|148E0D| db $22 ; Repeat byte
|148E0E| db $00
|148E0F| db $14 ; Raw block
|148E10| db $FC, $9C, $9F, $F3, $F3, $0D, $00, $C5
|148E18| db $00, $61, $00, $A5, $84, $D2, $42, $6B
|148E20| db $A3, $34, $57, $99, $2C
|148E25| db $22 ; Repeat byte
|148E26| db $FF
|148E27| db $13 ; Raw block
|148E28| db $7B, $3D, $1C, $88, $C3, $FF, $00, $FB
|148E30| db $04, $C8, $37, $CF, $30, $CC, $33, $CF
|148E38| db $3F, $C0, $3F, $FF
|148E3C| db $28 ; Repeat byte
|148E3D| db $00
|148E3E| db $0F ; Raw block
|148E3F| db $C5, $3A, $C4, $3B, $C7, $38, $C7, $3F
|148E47| db $E0, $1F, $E1, $1F, $E6, $19, $BF, $40
|148E4F| db $27 ; Repeat byte
|148E50| db $00
|148E51| db $49 ; Repeat word
|148E52| dw $00C7
|148E54| db $05 ; Raw block
|148E55| db $CF, $00, $DF, $00, $F0, $07
|148E5B| db $26 ; Repeat byte
|148E5C| db $FF
|148E5D| db $00 ; Raw block
|148E5E| db $F8
|148E5F| db $23 ; Repeat byte
|148E60| db $00
|148E61| db $0A ; Raw block
|148E62| db $39, $00, $7F, $00, $FF, $00, $FE, $01
|148E6A| db $BB, $00, $BB
|148E6D| db $23 ; Repeat byte
|148E6E| db $00
|148E6F| db $05 ; Raw block
|148E70| db $39, $7D, $FE, $FF, $FF, $07
|148E76| db $84 ; Copy past
|148E77| dw $001F
|148E79| db $05 ; Raw block
|148E7A| db $FB, $03, $C4, $C4, $00, $FF
|148E80| db $43 ; Repeat word
|148E81| dw $00FF
|148E83| db $07 ; Raw block
|148E84| db $00, $07, $CF, $FC, $3B, $00, $FF, $FF
|148E8C| db $E4, $2F ; EXT Repeat byte
|148E8E| db $00
|148E8F| db $13 ; Raw block
|148E90| db $AC, $58, $A6, $50, $B4, $50, $B2, $52
|148E98| db $B0, $50, $B4, $50, $A6, $50, $AF, $5F
|148EA0| db $07, $0F, $0F, $0D
|148EA4| db $22 ; Repeat byte
|148EA5| db $0F
|148EA6| db $00 ; Raw block
|148EA7| db $00
|148EA8| db $43 ; Repeat word
|148EA9| dw $2497
|148EAB| db $0D ; Raw block
|148EAC| db $DF, $6C, $DF, $24, $FE, $01, $FC, $03
|148EB4| db $8C, $73, $85, $7B, $48, $48
|148EBA| db $25 ; Repeat byte
|148EBB| db $00
|148EBC| db $11 ; Raw block
|148EBD| db $74, $4B, $73, $4C, $F9, $C7, $DB, $64
|148EC5| db $0D, $F3, $07, $F8, $C7, $F8, $64, $7B
|148ECD| db $80, $80
|148ECF| db $24 ; Repeat byte
|148ED0| db $00
|148ED1| db $10 ; Raw block
|148ED2| db $80, $97, $78, $D4, $7B, $E8, $77, $D0
|148EDA| db $6F, $A1, $5E, $7F, $80, $03, $FF, $0F
|148EE2| db $FF
|148EE3| db $24 ; Repeat byte
|148EE4| db $00
|148EE5| db $02 ; Raw block
|148EE6| db $80, $FF, $FF
|148EE9| db $83 ; Copy past
|148EEA| dw $0054
|148EEC| db $01 ; Raw block
|148EED| db $94, $7B
|148EEF| db $87 ; Copy past
|148EF0| dw $01CA
|148EF2| db $62 ; Increment fill
|148EF3| db $7F
|148EF4| db $25 ; Repeat byte
|148EF5| db $00
|148EF6| db $10 ; Raw block
|148EF7| db $80, $E7, $DF, $EC, $DF, $F8, $DF, $F0
|148EFF| db $DF, $F1, $CE, $DE, $E1, $7C, $FF, $3C
|148F07| db $FF
|148F08| db $24 ; Repeat byte
|148F09| db $C0
|148F0A| db $0E ; Raw block
|148F0B| db $E0, $FF, $FF, $0F, $0F, $10, $1F, $30
|148F13| db $2F, $38, $27, $2F, $30, $26, $39
|148F1A| db $43 ; Repeat word
|148F1B| dw $3B24
|148F1D| db $01 ; Raw block
|148F1E| db $F0, $E0
|148F20| db $22 ; Repeat byte
|148F21| db $C0
|148F22| db $13 ; Raw block
|148F23| db $C1, $C3, $C3, $FF, $FF, $21, $DE, $01
|148F2B| db $FE, $C0, $3F, $C1, $3E, $3F, $C0, $07
|148F33| db $FF, $3F, $FF, $00
|148F37| db $83 ; Copy past
|148F38| dw $00B6
|148F3A| db $00 ; Raw block
|148F3B| db $C0
|148F3C| db $22 ; Repeat byte
|148F3D| db $FF
|148F3E| db $0E ; Raw block
|148F3F| db $00, $FF, $00, $AF, $70, $9F, $50, $87
|148F47| db $48, $92, $45, $AB, $62, $D5, $31
|148F4E| db $22 ; Repeat byte
|148F4F| db $00
|148F50| db $04 ; Raw block
|148F51| db $20, $30, $38, $1C, $0E
|148F56| db $45 ; Repeat word
|148F57| dw $00FF
|148F59| db $09 ; Raw block
|148F5A| db $80, $7F, $3F, $FF, $60, $FF, $4F, $FF
|148F62| db $18, $F8
|148F64| db $26 ; Repeat byte
|148F65| db $00
|148F66| db $00 ; Raw block
|148F67| db $07
|148F68| db $43 ; Repeat word
|148F69| dw $00FF
|148F6B| db $01 ; Raw block
|148F6C| db $99, $66
|148F6E| db $43 ; Repeat word
|148F6F| dw $6996
|148F71| db $05 ; Raw block
|148F72| db $99, $67, $9E, $7F, $C1, $3E
|148F78| db $27 ; Repeat byte
|148F79| db $00
|148F7A| db $09 ; Raw block
|148F7B| db $E3, $0C, $C7, $18, $89, $36, $11, $EE
|148F83| db $E0, $1F
|148F85| db $83 ; Copy past
|148F86| dw $0143
|148F88| db $04 ; Raw block
|148F89| db $FF, $00, $F0, $E0, $C0
|148F8E| db $24 ; Repeat byte
|148F8F| db $00
|148F90| db $4D ; Repeat word
|148F91| dw $00B8
|148F93| db $01 ; Raw block
|148F94| db $FE, $00
|148F96| db $27 ; Repeat byte
|148F97| db $FF
|148F98| db $2F ; Repeat byte
|148F99| db $00
|148F9A| db $27 ; Repeat byte
|148F9B| db $FF
|148F9C| db $E4, $2F ; EXT Repeat byte
|148F9E| db $00
|148F9F| db $0A ; Raw block
|148FA0| db $EF, $1F, $ED, $1F, $E8, $1F, $E9, $1F
|148FA8| db $E8, $1F, $EC
|148FAB| db $84 ; Copy past
|148FAC| dw $0303
|148FAE| db $27 ; Repeat byte
|148FAF| db $00
|148FB0| db $14 ; Raw block
|148FB1| db $C1, $01, $5E, $20, $47, $38, $27, $18
|148FB9| db $35, $0A, $7C, $03, $FE, $21, $FE, $71
|148FC1| db $3E, $1F, $03, $03, $01
|148FC6| db $22 ; Repeat byte
|148FC7| db $00
|148FC8| db $17 ; Raw block
|148FC9| db $30, $30, $F8, $C8, $FC, $84, $DC, $24
|148FD1| db $9F, $63, $2F, $D0, $27, $D8, $20, $DF
|148FD9| db $CF, $37, $7B, $DB, $9C, $0F, $07, $00
|148FE1| db $43 ; Repeat word
|148FE2| dw $D62E
|148FE4| db $0F ; Raw block
|148FE5| db $24, $DC, $25, $DD, $27, $DF, $28, $DF
|148FED| db $30, $DF, $3F, $C0, $C1, $C1, $C3, $C2
|148FF5| db $23 ; Repeat byte
|148FF6| db $C0
|148FF7| db $43 ; Repeat word
|148FF8| dw $7B67
|148FFA| db $01 ; Raw block
|148FFB| db $27, $3B
|148FFD| db $43 ; Repeat word
|148FFE| dw $B3AF
|149000| db $01 ; Raw block
|149001| db $27, $3B
|149003| db $43 ; Repeat word
|149004| dw $2B37
|149006| db $04 ; Raw block
|149007| db $83, $83, $C3, $43, $43
|14900C| db $22 ; Repeat byte
|14900D| db $C3
|14900E| db $0B ; Raw block
|14900F| db $07, $F8, $20, $FF, $5F, $E0, $F0, $CF
|149017| db $E8, $DF, $E7, $DF
|14901B| db $43 ; Repeat word
|14901C| dw $DCE4
|14901E| db $02 ; Raw block
|14901F| db $F8, $FF, $E0
|149022| db $22 ; Repeat byte
|149023| db $C0
|149024| db $01 ; Raw block
|149025| db $C3, $C3
|149027| db $43 ; Repeat word
|149028| dw $3B24
|14902A| db $83 ; Copy past
|14902B| dw $0090
|14902D| db $03 ; Raw block
|14902E| db $30, $3F, $1F, $1F
|149032| db $23 ; Repeat byte
|149033| db $00
|149034| db $02 ; Raw block
|149035| db $C3, $C3, $80
|149038| db $85 ; Copy past
|149039| dw $020B
|14903B| db $04 ; Raw block
|14903C| db $F0, $00, $FF, $F8, $07
|149041| db $89 ; Copy past
|149042| dw $00AA
|149044| db $01 ; Raw block
|149045| db $F0, $FF
|149047| db $22 ; Repeat byte
|149048| db $00
|149049| db $0C ; Raw block
|14904A| db $FC, $9C, $9F, $E8, $18, $F7, $0F, $CA
|149052| db $37, $A9, $76, $56, $D9
|149057| db $43 ; Repeat word
|149058| dw $CD4A
|14905A| db $02 ; Raw block
|14905B| db $46, $C5, $07
|14905E| db $22 ; Repeat byte
|14905F| db $00
|149060| db $1B ; Raw block
|149061| db $20, $30, $30, $38, $F1, $F0, $03, $00
|149069| db $73, $F0, $99, $78, $4D, $3C, $27, $1E
|149071| db $D3, $8E, $DB, $D6, $0F, $FF, $0F, $07
|149079| db $83, $C1, $61, $21
|14907D| db $47 ; Repeat word
|14907E| dw $5F9F
|149080| db $01 ; Raw block
|149081| db $80, $40
|149083| db $43 ; Repeat word
|149084| dw $7F80
|149086| db $01 ; Raw block
|149087| db $FF, $00
|149089| db $23 ; Repeat byte
|14908A| db $20
|14908B| db $00 ; Raw block
|14908C| db $3F
|14908D| db $22 ; Repeat byte
|14908E| db $00
|14908F| db $03 ; Raw block
|149090| db $FF, $FF, $81, $81
|149094| db $23 ; Repeat byte
|149095| db $B1
|149096| db $1A ; Raw block
|149097| db $81, $81, $89, $89, $81, $81, $FF, $FF
|14909F| db $00, $7E, $4E, $4E, $7E, $76, $7E, $00
|1490A7| db $FF, $00, $01, $7C, $7C, $82, $C6, $39
|1490AF| db $83, $7C, $FF
|1490B2| db $84 ; Copy past
|1490B3| dw $03FB
|1490B5| db $02 ; Raw block
|1490B6| db $FF, $83, $01
|1490B9| db $26 ; Repeat byte
|1490BA| db $00
|1490BB| db $43 ; Repeat word
|1490BC| dw $00FF
|1490BE| db $84 ; Copy past
|1490BF| dw $0142
|1490C1| db $84 ; Copy past
|1490C2| dw $0293
|1490C4| db $22 ; Repeat byte
|1490C5| db $FF
|1490C6| db $24 ; Repeat byte
|1490C7| db $00
|1490C8| db $17 ; Raw block
|1490C9| db $1C, $DD, $0C, $8D, $60, $60, $72, $76
|1490D1| db $60, $6E, $08, $0E, $00, $C0, $1C, $DD
|1490D9| db $22, $72, $9F, $89, $91, $F1, $3F, $22
|1490E1| db $27 ; Repeat byte
|1490E2| db $00
|1490E3| db $45 ; Repeat word
|1490E4| dw $00FF
|1490E6| db $00 ; Raw block
|1490E7| db $00
|1490E8| db $27 ; Repeat byte
|1490E9| db $FF
|1490EA| db $E0, $28 ; EXT Raw block
|1490EC| db $00, $37, $18, $67, $08, $8F, $88, $2F
|1490F4| db $28, $6F, $48, $2F, $08, $57, $18, $F7
|1490FC| db $F8, $E0, $F0, $70, $D0, $B0, $F0, $E0
|149104| db $00, $CB, $74, $89, $76, $89, $77, $88
|14910C| db $76, $8D, $73, $8E, $71, $8D, $72, $8D
|149114| db $73
|149115| db $22 ; Repeat byte
|149116| db $00
|149117| db $00 ; Raw block
|149118| db $01
|149119| db $23 ; Repeat byte
|14911A| db $00
|14911B| db $0F ; Raw block
|14911C| db $30, $CF, $F8, $07, $3F, $C0, $4F, $70
|149124| db $30, $3F, $80, $80, $60, $E0, $9F, $7F
|14912C| db $22 ; Repeat byte
|14912D| db $00
|14912E| db $03 ; Raw block
|14912F| db $80, $C0, $7F, $1F
|149133| db $22 ; Repeat byte
|149134| db $00
|149135| db $43 ; Repeat word
|149136| dw $00FF
|149138| db $84 ; Copy past
|149139| dw $043B
|14913B| db $43 ; Repeat word
|14913C| dw $00FF
|14913E| db $23 ; Repeat byte
|14913F| db $FF
|149140| db $01 ; Raw block
|149141| db $00, $FF
|149143| db $22 ; Repeat byte
|149144| db $00
|149145| db $0F ; Raw block
|149146| db $D7, $BB, $B7, $5B, $1F, $EB, $9F, $EB
|14914E| db $CF, $73, $6F, $B3, $6B, $B7, $B3, $4F
|149156| db $25 ; Repeat byte
|149157| db $03
|149158| db $03 ; Raw block
|149159| db $07, $4F, $E4, $DC
|14915D| db $43 ; Repeat word
|14915E| dw $DFE7
|149160| db $04 ; Raw block
|149161| db $E8, $DF, $F0, $DF, $E0
|149166| db $84 ; Copy past
|149167| dw $01FF
|149169| db $00 ; Raw block
|14916A| db $C3
|14916B| db $25 ; Repeat byte
|14916C| db $C0
|14916D| db $00 ; Raw block
|14916E| db $E0
|14916F| db $23 ; Repeat byte
|149170| db $00
|149171| db $01 ; Raw block
|149172| db $3F, $3F
|149174| db $43 ; Repeat word
|149175| dw $2F30
|149177| db $07 ; Raw block
|149178| db $28, $37, $24, $3B, $27, $38, $FF, $FF
|149180| db $25 ; Repeat byte
|149181| db $C0
|149182| db $23 ; Repeat byte
|149183| db $0C
|149184| db $10 ; Raw block
|149185| db $FF, $FF, $84, $7B, $81, $7E, $01, $FE
|14918D| db $83, $7C, $FC, $03, $F3, $F3, $00, $30
|149195| db $30
|149196| db $22 ; Repeat byte
|149197| db $00
|149198| db $10 ; Raw block
|149199| db $67, $E4, $3D, $FE, $0F, $F0, $10, $EF
|1491A1| db $28, $D8, $50, $B0, $87, $78, $C1, $31
|1491A9| db $18
|1491AA| db $22 ; Repeat byte
|1491AB| db $00
|1491AC| db $13 ; Raw block
|1491AD| db $07, $0F, $00, $0E, $7A, $F6, $9A, $76
|1491B5| db $EA, $16, $3A, $C6, $5A, $66, $2B, $36
|1491BD| db $5B, $D6, $BA, $76
|1491C1| db $23 ; Repeat byte
|1491C2| db $01
|1491C3| db $E0, $25 ; EXT Raw block
|1491C5| db $81, $C1, $21, $01, $FF, $FC, $FE, $F1
|1491CD| db $F9, $E7, $F2, $CE, $E5, $9C, $C9, $B8
|1491D5| db $D3, $30, $95, $70, $FC, $F0, $E0, $C1
|1491DD| db $82, $86, $0C, $0B, $F8, $F8, $F2, $F2
|1491E5| db $F0, $F0, $FC, $FC, $FD, $FD
|1491EB| db $26 ; Repeat byte
|1491EC| db $FF
|1491ED| db $00 ; Raw block
|1491EE| db $FD
|1491EF| db $25 ; Repeat byte
|1491F0| db $FF
|1491F1| db $0B ; Raw block
|1491F2| db $07, $00, $0F, $00, $9F, $00, $FF, $00
|1491FA| db $B7, $40, $67, $80
|1491FE| db $43 ; Repeat word
|1491FF| dw $00C7
|149201| db $05 ; Raw block
|149202| db $00, $07, $0F, $9F, $BF, $7F
|149208| db $22 ; Repeat byte
|149209| db $FF
|14920A| db $01 ; Raw block
|14920B| db $00, $FF
|14920D| db $2D ; Repeat byte
|14920E| db $00
|14920F| db $26 ; Repeat byte
|149210| db $FF
|149211| db $E0, $21 ; EXT Raw block
|149213| db $FC, $3D, $AC, $6D, $40, $A0, $52, $B6
|14921B| db $40, $AE, $28, $EE, $E0, $20, $FC, $3D
|149223| db $02, $12, $1F, $09, $11, $11, $1F, $02
|14922B| db $FF, $00, $7A, $FD, $4A, $CD, $B6, $79
|149233| db $F8, $07
|149235| db $84 ; Copy past
|149236| dw $0292
|149238| db $22 ; Repeat byte
|149239| db $00
|14923A| db $00 ; Raw block
|14923B| db $30
|14923C| db $24 ; Repeat byte
|14923D| db $00
|14923E| db $FF ; End of GFX 4A

;===================================================================================================

GFX_4B:
|14923F| db $43 ; Repeat word
|149240| dw $23C4
|149242| db $01 ; Raw block
|149243| db $C7, $24
|149245| db $43 ; Repeat word
|149246| dw $26C5
|149248| db $01 ; Raw block
|149249| db $C6, $25
|14924B| db $43 ; Repeat word
|14924C| dw $23C4
|14924E| db $01 ; Raw block
|14924F| db $1B, $1B
|149251| db $22 ; Repeat byte
|149252| db $18
|149253| db $16 ; Raw block
|149254| db $19, $1B, $1B, $0F, $F0, $3C, $C3, $F1
|14925C| db $0F, $C7, $3F, $1C, $FF, $70, $FF, $C0
|149264| db $FF, $03, $FC, $F0, $C3, $0F, $3F
|14926B| db $22 ; Repeat byte
|14926C| db $FF
|14926D| db $00 ; Raw block
|14926E| db $FC
|14926F| db $43 ; Repeat word
|149270| dw $00FF
|149272| db $0E ; Raw block
|149273| db $F3, $0C, $E1, $1E, $C3, $3C, $87, $78
|14927B| db $0F, $F0, $1F, $E0, $F0, $F0, $FE
|149282| db $24 ; Repeat byte
|149283| db $FF
|149284| db $0B ; Raw block
|149285| db $C1, $21, $E2, $03, $E5, $06, $EB, $0C
|14928D| db $F7, $18, $EF, $10
|149291| db $43 ; Repeat word
|149292| dw $00FF
|149294| db $17 ; Raw block
|149295| db $1E, $1C, $18, $10, $80, $C0, $C1, $C7
|14929D| db $E7, $5F, $E3, $5F, $E0, $5F, $F0, $4F
|1492A5| db $DC, $63, $A7, $38, $80, $00, $FF, $7F
|1492AD| db $24 ; Repeat byte
|1492AE| db $00
|1492AF| db $0C ; Raw block
|1492B0| db $40, $7F, $00, $FF, $00, $FB, $04, $F9
|1492B8| db $06, $F8, $07, $B9, $46
|1492BD| db $43 ; Repeat word
|1492BE| dw $7E81
|1492C0| db $01 ; Raw block
|1492C1| db $B8, $47
|1492C3| db $27 ; Repeat byte
|1492C4| db $00
|1492C5| db $10 ; Raw block
|1492C6| db $EF, $10, $ED, $13, $CC, $33, $0C, $F3
|1492CE| db $C6, $39, $6B, $DC, $35, $EE, $97, $6F
|1492D6| db $00
|1492D7| db $22 ; Repeat byte
|1492D8| db $03
|1492D9| db $13 ; Raw block
|1492DA| db $01, $C0, $E0, $60, $1F, $00, $E0, $1F
|1492E2| db $1E, $FF, $FD, $FF, $FE, $FF, $3F, $7F
|1492EA| db $7F, $FF, $E0, $E0
|1492EE| db $24 ; Repeat byte
|1492EF| db $00
|1492F0| db $0C ; Raw block
|1492F1| db $80, $00, $1F, $E0, $1F, $D1, $31, $A7
|1492F9| db $6F, $DB, $5F, $FF, $1C
|1492FE| db $45 ; Repeat word
|1492FF| dw $5BB8
|149301| db $04 ; Raw block
|149302| db $00, $0E, $10, $20, $00
|149307| db $22 ; Repeat byte
|149308| db $04
|149309| db $09 ; Raw block
|14930A| db $00, $FF, $10, $11, $6E, $FF, $B6, $FF
|149312| db $FE, $03
|149314| db $44 ; Repeat word
|149315| dw $FB06
|149317| db $02 ; Raw block
|149318| db $BB, $00, $EE
|14931B| db $24 ; Repeat byte
|14931C| db $00
|14931D| db $00 ; Raw block
|14931E| db $40
|14931F| db $43 ; Repeat word
|149320| dw $708F
|149322| db $43 ; Repeat word
|149323| dw $109F
|149325| db $01 ; Raw block
|149326| db $FF, $10
|149328| db $45 ; Repeat word
|149329| dw $50BF
|14932B| db $03 ; Raw block
|14932C| db $00, $00, $60, $60
|149330| db $23 ; Repeat byte
|149331| db $00
|149332| db $17 ; Raw block
|149333| db $C0, $3F, $8D, $6F, $84, $4F, $9B, $1C
|14933B| db $FC, $1B, $B8, $5F, $B8, $5E, $B9, $59
|149343| db $00, $10, $30, $60, $00, $00, $01, $06
|14934B| db $43 ; Repeat word
|14934C| dw $E01F
|14934E| db $01 ; Raw block
|14934F| db $FF, $20
|149351| db $47 ; Repeat word
|149352| dw $A07F
|149354| db $01 ; Raw block
|149355| db $FF, $A0
|149357| db $27 ; Repeat byte
|149358| db $00
|149359| db $0F ; Raw block
|14935A| db $C0, $3F, $A0, $6F, $C2, $4D, $9E, $19
|149362| db $FE, $19, $BE, $59, $BE, $5B, $BE, $5F
|14936A| db $83 ; Copy past
|14936B| dw $0118
|14936D| db $E4, $33 ; EXT Repeat byte
|14936F| db $00
|149370| db $43 ; Repeat word
|149371| dw $23C4
|149373| db $83 ; Copy past
|149374| dw $0004
|149376| db $00 ; Raw block
|149377| db $C6
|149378| db $44 ; Repeat word
|149379| dw $C727
|14937B| db $03 ; Raw block
|14937C| db $D3, $33, $1B, $1B
|149380| db $24 ; Repeat byte
|149381| db $18
|149382| db $06 ; Raw block
|149383| db $0C, $EF, $03, $F7, $13, $FB, $0B
|14938A| db $43 ; Repeat word
|14938B| dw $05FD
|14938D| db $0F ; Raw block
|14938E| db $FF, $02, $FF, $F2, $0F, $08, $12, $0A
|149396| db $86, $C2, $C3, $02, $00, $F0, $3F, $C0
|14939E| db $43 ; Repeat word
|14939F| dw $807F
|1493A1| db $E0, $24 ; EXT Raw block
|1493A3| db $BE, $00, $9F, $43, $EC, $2E, $F6, $1F
|1493AB| db $FF, $00, $FF, $FF, $BE, $5D, $21, $95
|1493B3| db $80, $80, $BF, $40, $8D, $71, $C4, $38
|1493BB| db $24, $DB, $96, $E9, $CF, $F0, $E7, $F8
|1493C3| db $65, $FA, $00, $02, $03
|1493C8| db $24 ; Repeat byte
|1493C9| db $00
|1493CA| db $43 ; Repeat word
|1493CB| dw $7F80
|1493CD| db $0B ; Raw block
|1493CE| db $FF, $00, $CC, $33, $E9, $27, $DA, $36
|1493D6| db $EB, $17, $B5, $4B
|1493DA| db $23 ; Repeat byte
|1493DB| db $00
|1493DC| db $0B ; Raw block
|1493DD| db $10, $01, $00, $00, $B5, $5B, $2A, $DD
|1493E5| db $25, $DE, $F1, $0E
|1493E9| db $83 ; Copy past
|1493EA| dw $01BE
|1493EC| db $07 ; Raw block
|1493ED| db $80, $FF, $7F, $80, $18, $1C, $1E, $0E
|1493F5| db $23 ; Repeat byte
|1493F6| db $00
|1493F7| db $0A ; Raw block
|1493F8| db $4B, $BC, $B5, $DB, $5A, $F7, $A8, $77
|149400| db $AF, $70, $FF
|149403| db $83 ; Copy past
|149404| dw $01BE
|149406| db $04 ; Raw block
|149407| db $00, $00, $03, $07, $07
|14940C| db $23 ; Repeat byte
|14940D| db $00
|14940E| db $06 ; Raw block
|14940F| db $80, $80, $1F, $1F, $60, $7F, $80
|149416| db $44 ; Repeat word
|149417| dw $00FF
|149419| db $00 ; Raw block
|14941A| db $0F
|14941B| db $83 ; Copy past
|14941C| dw $01AF
|14941E| db $01 ; Raw block
|14941F| db $E0, $80
|149421| db $24 ; Repeat byte
|149422| db $00
|149423| db $10 ; Raw block
|149424| db $B8, $58, $BE, $5F, $BC, $5F, $BB, $5C
|14942C| db $BA, $5D, $FA, $1D, $DF, $3F, $C0, $3F
|149434| db $07
|149435| db $26 ; Repeat byte
|149436| db $00
|149437| db $10 ; Raw block
|149438| db $46, $5B, $FE, $F3, $16, $EB, $A6, $5B
|149440| db $46, $BB, $06, $FB, $FE, $FF, $01, $FE
|149448| db $A0
|149449| db $26 ; Repeat byte
|14944A| db $00
|14944B| db $49 ; Repeat word
|14944C| dw $50BF
|14944E| db $05 ; Raw block
|14944F| db $FA, $15, $D8, $37, $CF, $37
|149455| db $27 ; Repeat byte
|149456| db $00
|149457| db $00 ; Raw block
|149458| db $BF
|149459| db $84 ; Copy past
|14945A| dw $0243
|14945C| db $43 ; Repeat word
|14945D| dw $5BBC
|14945F| db $05 ; Raw block
|149460| db $FB, $1F, $DD, $3E, $C6, $39
|149466| db $27 ; Repeat byte
|149467| db $00
|149468| db $03 ; Raw block
|149469| db $7F, $A0, $FF, $20
|14946D| db $43 ; Repeat word
|14946E| dw $A07F
|149470| db $07 ; Raw block
|149471| db $DF, $E0, $6A, $95, $80, $7F, $3F, $FF
|149479| db $27 ; Repeat byte
|14947A| db $00
|14947B| db $0F ; Raw block
|14947C| db $BC, $5F, $B8, $5F, $BA, $5D, $BE, $59
|149484| db $BC, $5B, $FD, $1E, $DA, $3D, $C4, $3B
|14948C| db $E4, $37 ; EXT Repeat byte
|14948E| db $00
|14948F| db $03 ; Raw block
|149490| db $C9, $39, $C4, $3C
|149494| db $43 ; Repeat word
|149495| dw $3FC3
|149497| db $43 ; Repeat word
|149498| dw $3FC2
|14949A| db $05 ; Raw block
|14949B| db $E2, $1F, $F0, $0F, $06, $03
|1494A1| db $25 ; Repeat byte
|1494A2| db $00
|1494A3| db $11 ; Raw block
|1494A4| db $8C, $8F, $30, $3F, $C0, $FF, $00, $FF
|1494AC| db $01, $FE, $07, $F8, $1F, $E0, $7F, $80
|1494B4| db $70, $C0
|1494B6| db $25 ; Repeat byte
|1494B7| db $00
|1494B8| db $87 ; Copy past
|1494B9| dw $0320
|1494BB| db $46 ; Repeat word
|1494BC| dw $00FF
|1494BE| db $28 ; Repeat byte
|1494BF| db $00
|1494C0| db $43 ; Repeat word
|1494C1| dw $7FB8
|1494C3| db $0B ; Raw block
|1494C4| db $BC, $7F, $B6, $77, $93, $73, $89, $79
|1494CC| db $84, $7C, $82, $7E
|1494D0| db $22 ; Repeat byte
|1494D1| db $00
|1494D2| db $E0, $22 ; EXT Raw block
|1494D4| db $08, $0C, $06, $03, $01, $0F, $FF, $1D
|1494DC| db $FD, $38, $F9, $72, $F3, $E4, $E7, $C8
|1494E4| db $CF, $10, $1F, $20, $3F, $00, $02, $06
|1494EC| db $0C, $18, $30, $E0, $C0, $4F, $B0, $D7
|1494F4| db $B8, $D8, $BF
|1494F7| db $43 ; Repeat word
|1494F8| dw $B8D8
|1494FA| db $05 ; Raw block
|1494FB| db $C8, $B8, $64, $DC, $B2, $6E
|149501| db $22 ; Repeat byte
|149502| db $00
|149503| db $22 ; Repeat byte
|149504| db $07
|149505| db $05 ; Raw block
|149506| db $03, $01, $F7, $08, $E7, $18
|14950C| db $43 ; Repeat word
|14950D| dw $10EF
|14950F| db $45 ; Repeat word
|149510| dw $00FF
|149512| db $01 ; Raw block
|149513| db $0F, $00
|149515| db $24 ; Repeat byte
|149516| db $FF
|149517| db $02 ; Raw block
|149518| db $7F, $0F, $F7
|14951B| db $4F ; Repeat word
|14951C| dw $00FF
|14951E| db $28 ; Repeat byte
|14951F| db $FF
|149520| db $E0, $30 ; EXT Raw block
|149522| db $00, $83, $00, $FD, $00, $E0, $1E, $F4
|14952A| db $0B, $EA, $15, $C5, $3A, $8A, $7D, $00
|149532| db $7E, $3F, $01, $04, $12, $39, $7C, $E3
|14953A| db $1C, $C7, $38, $CE, $30, $FE, $00, $7F
|149542| db $00, $36, $89, $17, $C9, $87, $69, $1C
|14954A| db $38, $33, $C7, $E6, $75, $35, $95, $FF
|149552| db $00
|149553| db $45 ; Repeat word
|149554| dw $3CC3
|149556| db $47 ; Repeat word
|149557| dw $00FF
|149559| db $00 ; Raw block
|14955A| db $C3
|14955B| db $22 ; Repeat byte
|14955C| db $BD
|14955D| db $07 ; Raw block
|14955E| db $C3, $7E, $42, $81, $CF, $40, $CF, $48
|149566| db $45 ; Repeat word
|149567| dw $60E7
|149569| db $01 ; Raw block
|14956A| db $CF, $48
|14956C| db $43 ; Repeat word
|14956D| dw $40CF
|14956F| db $01 ; Raw block
|149570| db $37, $33
|149572| db $22 ; Repeat byte
|149573| db $1B
|149574| db $03 ; Raw block
|149575| db $33, $37, $37, $03
|149579| db $43 ; Repeat word
|14957A| dw $0700
|14957C| db $00 ; Raw block
|14957D| db $02
|14957E| db $49 ; Repeat word
|14957F| dw $0607
|149581| db $00 ; Raw block
|149582| db $02
|149583| db $26 ; Repeat byte
|149584| db $06
|149585| db $01 ; Raw block
|149586| db $7F, $00
|149588| db $47 ; Repeat word
|149589| dw $3E41
|14958B| db $01 ; Raw block
|14958C| db $FF, $00
|14958E| db $43 ; Repeat word
|14958F| dw $7B84
|149591| db $09 ; Raw block
|149592| db $7F, $43, $4F, $5D, $7D, $9F, $9D, $BF
|14959A| db $7E, $00
|14959C| db $43 ; Repeat word
|14959D| dw $3C42
|14959F| db $05 ; Raw block
|1495A0| db $7E, $00, $3F, $00, $E1, $1E
|1495A6| db $43 ; Repeat word
|1495A7| dw $DE21
|1495A9| db $07 ; Raw block
|1495AA| db $7E, $72, $7A, $7E, $01, $E1, $E9, $FD
|1495B2| db $37 ; Repeat byte
|1495B3| db $00
|1495B4| db $0A ; Raw block
|1495B5| db $B9, $46, $9F, $60, $8F, $70, $87, $78
|1495BD| db $83, $7C, $80
|1495C0| db $44 ; Repeat word
|1495C1| dw $827F
|1495C3| db $27 ; Repeat byte
|1495C4| db $00
|1495C5| db $0F ; Raw block
|1495C6| db $FE, $01, $FD, $03, $FB, $07, $F7, $0E
|1495CE| db $EF, $1C, $3F, $D8, $37, $D8, $35, $DA
|1495D6| db $23 ; Repeat byte
|1495D7| db $00
|1495D8| db $04 ; Raw block
|1495D9| db $01, $01, $00, $02, $00
|1495DE| db $22 ; Repeat byte
|1495DF| db $FF
|1495E0| db $01 ; Raw block
|1495E1| db $C3, $C3
|1495E3| db $43 ; Repeat word
|1495E4| dw $00FF
|1495E6| db $84 ; Copy past
|1495E7| dw $03F6
|1495E9| db $22 ; Repeat byte
|1495EA| db $00
|1495EB| db $05 ; Raw block
|1495EC| db $3C, $00, $00, $BD, $C3, $7E
|1495F2| db $87 ; Copy past
|1495F3| dw $0020
|1495F5| db $83 ; Copy past
|1495F6| dw $0018
|1495F8| db $03 ; Raw block
|1495F9| db $F0, $0F, $C3, $3F
|1495FD| db $22 ; Repeat byte
|1495FE| db $FF
|1495FF| db $84 ; Copy past
|149600| dw $0027
|149602| db $0F ; Raw block
|149603| db $00, $00, $07, $00, $0B, $07, $76, $0E
|14960B| db $AD, $5C, $ED, $5C, $EE, $5E, $EF, $5F
|149613| db $22 ; Repeat byte
|149614| db $00
|149615| db $18 ; Raw block
|149616| db $01, $03, $03, $01, $00, $AF, $67, $57
|14961E| db $B3, $EB, $98, $B4, $CC, $BB, $C7, $17
|149626| db $E8, $10, $EF, $18, $E7, $10, $08, $04
|14962E| db $03
|14962F| db $23 ; Repeat byte
|149630| db $00
|149631| db $12 ; Raw block
|149632| db $07, $00, $F3, $F0, $F8, $F8, $3F, $FF
|14963A| db $87, $7F, $E0, $1F, $FF, $00, $DF, $20
|149642| db $FB, $0C, $07
|149645| db $24 ; Repeat byte
|149646| db $00
|149647| db $43 ; Repeat word
|149648| dw $01FE
|14964A| db $43 ; Repeat word
|14964B| dw $03FC
|14964D| db $43 ; Repeat word
|14964E| dw $06F9
|149650| db $43 ; Repeat word
|149651| dw $0CF3
|149653| db $27 ; Repeat byte
|149654| db $FF
|149655| db $03 ; Raw block
|149656| db $89, $7E, $81, $7E
|14965A| db $83 ; Copy past
|14965B| dw $03F6
|14965D| db $03 ; Raw block
|14965E| db $E0, $1F, $20, $E0
|149662| db $43 ; Repeat word
|149663| dw $4F0F
|149665| db $E0, $20 ; EXT Raw block
|149667| db $7E, $7E, $3C, $00, $00, $1F, $B0, $B0
|14966F| db $46, $B1, $A2, $59, $D3, $2C, $E9, $16
|149677| db $14, $EB, $7B, $54, $CD, $A2, $CF, $A0
|14967F| db $4D, $25, $12, $09, $04, $83, $11, $14
|149687| db $00
|149688| db $23 ; Repeat byte
|149689| db $FF
|14968A| db $43 ; Repeat word
|14968B| dw $FF00
|14968D| db $44 ; Repeat word
|14968E| dw $00FF
|149690| db $00 ; Raw block
|149691| db $FF
|149692| db $28 ; Repeat byte
|149693| db $00
|149694| db $47 ; Repeat word
|149695| dw $00FF
|149697| db $E0, $2F ; EXT Raw block
|149699| db $FE, $00, $FE, $02, $F9, $05, $F8, $07
|1496A1| db $F0, $F0, $F8, $FC, $FD, $F9, $F2, $F0
|1496A9| db $91, $9E, $CF, $48, $97, $10, $37, $38
|1496B1| db $43, $7C, $04, $07, $C0, $C6, $20, $E4
|1496B9| db $60, $30, $68, $C0, $80, $F8, $39, $1B
|1496C1| db $84, $7B, $A4, $5B, $DF, $00, $08, $07
|1496C9| db $45 ; Repeat word
|1496CA| dw $6708
|1496CC| db $11 ; Raw block
|1496CD| db $0F, $00, $FF, $7F, $D3, $0E, $6E, $6B
|1496D5| db $69, $0F, $21, $DE, $BF, $40, $C0, $00
|1496DD| db $7E, $80
|1496DF| db $45 ; Repeat word
|1496E0| dw $BC42
|1496E2| db $09 ; Raw block
|1496E3| db $BE, $00, $FF, $E0, $40, $7E, $62, $F2
|1496EB| db $FA, $BE
|1496ED| db $37 ; Repeat byte
|1496EE| db $00
|1496EF| db $FF ; End of GFX 4B

;===================================================================================================

GFX_4C:
|1496F0| db $0F ; Raw block
|1496F1| db $70, $8F, $4F, $BF, $B8, $7F, $63, $FF
|1496F9| db $DC, $EF, $9E, $F1, $A7, $F8, $A3, $FC
|149701| db $27 ; Repeat byte
|149702| db $00
|149703| db $00 ; Raw block
|149704| db $95
|149705| db $44 ; Repeat word
|149706| dw $55FE
|149708| db $09 ; Raw block
|149709| db $A3, $FC, $A7, $F8, $96, $F9, $5D, $F3
|149711| db $D8, $6F
|149713| db $27 ; Repeat byte
|149714| db $00
|149715| db $07 ; Raw block
|149716| db $A4, $7B, $47, $B8, $2F, $D3, $3F, $C7
|14971E| db $44 ; Repeat word
|14971F| dw $0FFF
|149721| db $1C ; Raw block
|149722| db $1E, $FF, $9E, $00, $00, $03, $07, $0F
|14972A| db $0F, $1F, $9F, $FF, $00, $FF, $3F, $FF
|149732| db $F8, $FF, $E0, $FF, $80, $FF, $07, $FF
|14973A| db $0F, $FF, $1F, $00, $3F
|14973F| db $25 ; Repeat byte
|149740| db $FF
|149741| db $05 ; Raw block
|149742| db $1F, $00, $7F, $1F, $FF, $78
|149748| db $84 ; Copy past
|149749| dw $004E
|14974B| db $00 ; Raw block
|14974C| db $03
|14974D| db $83 ; Copy past
|14974E| dw $0052
|149750| db $02 ; Raw block
|149751| db $00, $1F, $7F
|149754| db $24 ; Repeat byte
|149755| db $FF
|149756| db $12 ; Raw block
|149757| db $FC, $03, $FE, $01, $FF, $00, $F8, $07
|14975F| db $F7, $0F, $F1, $0F, $FC, $03, $FA, $05
|149767| db $00, $80, $C0
|14976A| db $23 ; Repeat byte
|14976B| db $E0
|14976C| db $0C ; Raw block
|14976D| db $F0, $24, $FB, $86, $79, $87, $78, $CF
|149775| db $30, $FF, $00, $FF, $80
|14977A| db $22 ; Repeat byte
|14977B| db $FF
|14977C| db $00 ; Raw block
|14977D| db $07
|14977E| db $24 ; Repeat byte
|14977F| db $00
|149780| db $12 ; Raw block
|149781| db $80, $FF, $FF, $30, $CF, $60, $9F, $C7
|149789| db $3F, $CF, $3F, $C0, $3F, $C7, $38, $EC
|149791| db $13, $FC, $83
|149794| db $26 ; Repeat byte
|149795| db $00
|149796| db $00 ; Raw block
|149797| db $80
|149798| db $43 ; Repeat word
|149799| dw $00FF
|14979B| db $04 ; Raw block
|14979C| db $07, $F8, $00, $FF, $F8
|1497A1| db $26 ; Repeat byte
|1497A2| db $FF
|1497A3| db $27 ; Repeat byte
|1497A4| db $00
|1497A5| db $45 ; Repeat word
|1497A6| dw $00FF
|1497A8| db $09 ; Raw block
|1497A9| db $7F, $80, $1F, $E0, $87, $F8, $E7, $F8
|1497B1| db $F3, $FC
|1497B3| db $27 ; Repeat byte
|1497B4| db $00
|1497B5| db $08 ; Raw block
|1497B6| db $F3, $03, $F9, $01, $F8, $00, $FC, $00
|1497BE| db $FE
|1497BF| db $46 ; Repeat word
|1497C0| dw $FF00
|1497C2| db $01 ; Raw block
|1497C3| db $FC, $FE
|1497C5| db $26 ; Repeat byte
|1497C6| db $FF
|1497C7| db $00 ; Raw block
|1497C8| db $1E
|1497C9| db $44 ; Repeat word
|1497CA| dw $1CFF
|1497CC| db $08 ; Raw block
|1497CD| db $1E, $FF, $1F, $FF, $0F, $FF, $07, $FF
|1497D5| db $03
|1497D6| db $27 ; Repeat byte
|1497D7| db $FF
|1497D8| db $43 ; Repeat word
|1497D9| dw $BF5C
|1497DB| db $43 ; Repeat word
|1497DC| dw $3FD8
|1497DE| db $47 ; Repeat word
|1497DF| dw $7F90
|1497E1| db $27 ; Repeat byte
|1497E2| db $00
|1497E3| db $4B ; Repeat word
|1497E4| dw $00FF
|1497E6| db $03 ; Raw block
|1497E7| db $FC, $03, $09, $F7
|1497EB| db $27 ; Repeat byte
|1497EC| db $00
|1497ED| db $13 ; Raw block
|1497EE| db $50, $20, $58, $20, $50, $AC, $D0, $2E
|1497F6| db $A4, $5B, $A6, $59, $CE, $31, $DF, $31
|1497FE| db $0F, $07, $83, $01
|149802| db $3B ; Repeat byte
|149803| db $00
|149804| db $07 ; Raw block
|149805| db $70, $80, $E1, $00, $C6, $01, $0C, $03
|14980D| db $43 ; Repeat word
|14980E| dw $0B14
|149810| db $43 ; Repeat word
|149811| dw $1B24
|149813| db $0B ; Raw block
|149814| db $0F, $1E, $38, $F0, $E0, $E0, $C0, $C0
|14981C| db $44, $3B, $C4, $3B
|149820| db $47 ; Repeat word
|149821| dw $BB44
|149823| db $04 ; Raw block
|149824| db $56, $A9, $5F, $A0, $80
|149829| db $26 ; Repeat byte
|14982A| db $00
|14982B| db $4C ; Repeat word
|14982C| dw $9CFF
|14982E| db $02 ; Raw block
|14982F| db $9E, $FF, $8E
|149832| db $26 ; Repeat byte
|149833| db $9F
|149834| db $00 ; Raw block
|149835| db $8F
|149836| db $47 ; Repeat word
|149837| dw $7F90
|149839| db $43 ; Repeat word
|14983A| dw $3FD8
|14983C| db $43 ; Repeat word
|14983D| dw $BF5C
|14983F| db $27 ; Repeat byte
|149840| db $00
|149841| db $0F ; Raw block
|149842| db $37, $CF, $38, $C7, $4F, $B0, $C7, $38
|14984A| db $C1, $3F, $C0, $3F, $E3, $1C, $FC, $83
|149852| db $26 ; Repeat byte
|149853| db $00
|149854| db $10 ; Raw block
|149855| db $80, $79, $96, $78, $97, $3C, $D3, $3F
|14985D| db $C8, $3F, $CC, $1F, $E7, $0F, $F3, $07
|149865| db $F8
|149866| db $22 ; Repeat byte
|149867| db $F0
|149868| db $01 ; Raw block
|149869| db $F8, $FC
|14986B| db $22 ; Repeat byte
|14986C| db $FF
|14986D| db $E0, $27 ; EXT Raw block
|14986F| db $78, $87, $84, $03, $02, $31, $3A, $41
|149877| db $33, $40, $25, $02, $88, $07, $72, $8F
|14987F| db $00, $78, $CC, $84, $8C, $D8, $70, $00
|149887| db $18, $FF, $1C, $FF, $8D, $7E, $42, $BD
|14988F| db $3D, $C3, $9E, $7F, $C1, $3E, $7E, $81
|149897| db $27 ; Repeat byte
|149898| db $00
|149899| db $23 ; Repeat byte
|14989A| db $FF
|14989B| db $04 ; Raw block
|14989C| db $07, $07, $00, $00, $F8
|1498A1| db $45 ; Repeat word
|1498A2| dw $FF00
|1498A4| db $22 ; Repeat byte
|1498A5| db $00
|1498A6| db $00 ; Raw block
|1498A7| db $F8
|1498A8| db $2A ; Repeat byte
|1498A9| db $FF
|1498AA| db $09 ; Raw block
|1498AB| db $7F, $7F, $1F, $1F, $87, $07, $E7, $07
|1498B3| db $F3, $03
|1498B5| db $22 ; Repeat byte
|1498B6| db $00
|1498B7| db $06 ; Raw block
|1498B8| db $80, $E0, $F8, $F8, $FC, $FF, $3E
|1498BF| db $44 ; Repeat word
|1498C0| dw $3FFF
|1498C2| db $08 ; Raw block
|1498C3| db $1F, $FF, $1F, $7F, $9F, $7F, $8F, $3F
|1498CB| db $CF
|1498CC| db $22 ; Repeat byte
|1498CD| db $3F
|1498CE| db $04 ; Raw block
|1498CF| db $1F, $1F, $9F, $8F, $CF
|1498D4| db $45 ; Repeat word
|1498D5| dw $FF00
|1498D7| db $09 ; Raw block
|1498D8| db $01, $FE, $03, $FC, $07, $F8, $0F, $F3
|1498E0| db $1F, $E7
|1498E2| db $22 ; Repeat byte
|1498E3| db $FF
|1498E4| db $13 ; Raw block
|1498E5| db $FE, $FC, $F8, $F3, $E7, $80, $7F, $9F
|1498ED| db $60, $E0, $00, $9F, $1F, $F0, $70, $E7
|1498F5| db $68, $FF, $00, $FF
|1498F9| db $22 ; Repeat byte
|1498FA| db $00
|1498FB| db $06 ; Raw block
|1498FC| db $1F, $60, $0F, $10, $00, $00, $6B
|149903| db $46 ; Repeat word
|149904| dw $EBF7
|149906| db $07 ; Raw block
|149907| db $FB, $07, $FF, $F0, $FB, $75, $79, $86
|14990F| db $25 ; Repeat byte
|149910| db $00
|149911| db $01 ; Raw block
|149912| db $04, $86
|149914| db $43 ; Repeat word
|149915| dw $719F
|149917| db $0B ; Raw block
|149918| db $97, $79, $CF, $3B, $EE, $57, $FC, $67
|149920| db $B9, $66, $D9, $A6
|149924| db $26 ; Repeat byte
|149925| db $00
|149926| db $00 ; Raw block
|149927| db $80
|149928| db $37 ; Repeat byte
|149929| db $00
|14992A| db $43 ; Repeat word
|14992B| dw $DB24
|14992D| db $0B ; Raw block
|14992E| db $64, $9B, $E5, $1A, $25, $5A, $27, $18
|149936| db $35, $0A, $37, $28
|14993A| db $23 ; Repeat byte
|14993B| db $00
|14993C| db $00 ; Raw block
|14993D| db $80
|14993E| db $22 ; Repeat byte
|14993F| db $C0
|149940| db $0F ; Raw block
|149941| db $49, $B6, $CF, $31, $67, $9B, $35, $CB
|149949| db $9F, $E1, $CF, $F0, $E7, $F8, $64, $FB
|149951| db $27 ; Repeat byte
|149952| db $00
|149953| db $44 ; Repeat word
|149954| dw $87FF
|149956| db $E0, $22 ; EXT Raw block
|149958| db $C3, $FF, $C3, $FB, $E5, $F9, $66, $7C
|149960| db $B3, $3E, $F9, $87, $87, $C3, $C3, $E1
|149968| db $E0, $F0, $F8, $FF, $00, $FF, $C0, $FF
|149970| db $E0, $FF, $F0, $FF, $FC, $FF, $7F, $FF
|149978| db $1F, $7F, $80
|14997B| db $24 ; Repeat byte
|14997C| db $FF
|14997D| db $12 ; Raw block
|14997E| db $7F, $1F, $00, $02, $FF, $03, $FE, $02
|149986| db $FD, $0E, $F1, $F0, $01, $CE, $4F, $31
|14998E| db $B0, $A9, $6E
|149991| db $23 ; Repeat byte
|149992| db $00
|149993| db $0A ; Raw block
|149994| db $0E, $30, $4E, $10, $F3, $FC, $F9, $FE
|14999C| db $FC, $FF, $FE
|14999F| db $28 ; Repeat byte
|1499A0| db $FF
|1499A1| db $27 ; Repeat byte
|1499A2| db $00
|1499A3| db $E0, $29 ; EXT Raw block
|1499A5| db $3F, $C6, $7F, $8C, $FF, $10, $F3, $2C
|1499AD| db $F3, $4C, $F3, $8C, $C3, $BC, $C5, $3A
|1499B5| db $FE, $FC, $F0, $E0, $C0, $80, $80, $00
|1499BD| db $DF, $AF, $CF, $B6, $C7, $38, $C1, $3E
|1499C5| db $F1, $0E, $F9, $06, $FD, $C2, $FD, $32
|1499CD| db $80, $80
|1499CF| db $23 ; Repeat byte
|1499D0| db $00
|1499D1| db $16 ; Raw block
|1499D2| db $C0, $F0, $01, $02, $0F, $04, $3C, $1B
|1499DA| db $7B, $27, $F7, $4F, $EF, $1E, $FF, $00
|1499E2| db $FD, $9E, $03, $0C, $38, $60, $C0
|1499E9| db $22 ; Repeat byte
|1499EA| db $80
|1499EB| db $11 ; Raw block
|1499EC| db $FF, $00, $F9, $06, $33, $CC, $FF, $E3
|1499F4| db $F7, $0F, $97, $6F, $17, $EF, $38, $C7
|1499FC| db $F1, $20
|1499FE| db $25 ; Repeat byte
|1499FF| db $00
|149A00| db $1B ; Raw block
|149A01| db $3F, $CF, $3F, $C7, $1F, $E7, $1F, $E3
|149A09| db $0F, $F1, $0F, $F0, $07, $F8, $03, $FC
|149A11| db $CF, $C7, $E7, $E3, $F1, $F0, $F8, $FC
|149A19| db $3F, $C7, $3F, $CF
|149A1D| db $43 ; Repeat word
|149A1E| dw $9F7F
|149A20| db $01 ; Raw block
|149A21| db $FF, $3F
|149A23| db $44 ; Repeat word
|149A24| dw $3EFF
|149A26| db $04 ; Raw block
|149A27| db $3C, $C7, $CF, $9F, $9F
|149A2C| db $23 ; Repeat byte
|149A2D| db $3F
|149A2E| db $22 ; Repeat byte
|149A2F| db $00
|149A30| db $13 ; Raw block
|149A31| db $F0, $00, $EC, $00, $52, $00, $4A, $00
|149A39| db $47, $00, $21, $00, $1F, $00, $00, $10
|149A41| db $2C, $34, $38, $1E
|149A45| db $4F ; Repeat word
|149A46| dw $FF00
|149A48| db $28 ; Repeat byte
|149A49| db $00
|149A4A| db $11 ; Raw block
|149A4B| db $FF, $00, $CC, $33, $FF, $00, $FB, $F7
|149A53| db $EB, $F7, $EC, $F3, $1F, $E0, $FF, $00
|149A5B| db $CC, $80
|149A5D| db $25 ; Repeat byte
|149A5E| db $00
|149A5F| db $43 ; Repeat word
|149A60| dw $BF5C
|149A62| db $43 ; Repeat word
|149A63| dw $3FD8
|149A65| db $47 ; Repeat word
|149A66| dw $7F90
|149A68| db $27 ; Repeat byte
|149A69| db $00
|149A6A| db $14 ; Raw block
|149A6B| db $97, $88, $9F, $10, $CF, $48, $67, $A4
|149A73| db $71, $96, $71, $8E, $70, $8F, $58, $A7
|149A7B| db $60, $60, $30, $18, $08
|149A80| db $22 ; Repeat byte
|149A81| db $00
|149A82| db $02 ; Raw block
|149A83| db $FF, $00, $FF
|149A86| db $8C ; Copy past
|149A87| dw $0063
|149A89| db $02 ; Raw block
|149A8A| db $E0, $9F, $7F
|149A8D| db $24 ; Repeat byte
|149A8E| db $FF
|149A8F| db $43 ; Repeat word
|149A90| dw $09FE
|149A92| db $03 ; Raw block
|149A93| db $7E, $8D, $3F, $C4
|149A97| db $47 ; Repeat word
|149A98| dw $E21F
|149A9A| db $03 ; Raw block
|149A9B| db $F8, $F8, $FC, $FC
|149A9F| db $23 ; Repeat byte
|149AA0| db $FE
|149AA1| db $49 ; Repeat word
|149AA2| dw $FF02
|149AA4| db $45 ; Repeat word
|149AA5| dw $FF06
|149AA7| db $27 ; Repeat byte
|149AA8| db $00
|149AA9| db $4F ; Repeat word
|149AAA| dw $00FF
|149AAC| db $37 ; Repeat byte
|149AAD| db $FF
|149AAE| db $27 ; Repeat byte
|149AAF| db $00
|149AB0| db $E0, $22 ; EXT Raw block
|149AB2| db $C8, $31, $D4, $27, $E3, $07, $E7, $0F
|149ABA| db $C6, $0F, $C7, $0E, $D7, $9E, $F3, $BE
|149AC2| db $06, $08, $18, $10, $30, $30, $A0, $80
|149ACA| db $FF, $00, $EF, $F0, $3E, $3F, $C0, $20
|149AD2| db $3F, $C0, $00
|149AD5| db $44 ; Repeat word
|149AD6| dw $02FF
|149AD8| db $03 ; Raw block
|149AD9| db $00, $00, $C0, $1F
|149ADD| db $23 ; Repeat byte
|149ADE| db $00
|149ADF| db $0F ; Raw block
|149AE0| db $DB, $BE, $EF, $1D, $F5, $0B, $FE, $43
|149AE8| db $FB, $25, $79, $1E, $39, $06, $00, $07
|149AF0| db $22 ; Repeat byte
|149AF1| db $80
|149AF2| db $14 ; Raw block
|149AF3| db $C0, $E4, $7E, $3E, $07, $CE, $39, $CC
|149AFB| db $3B, $E5, $9B, $FD, $E3, $3F, $F4, $D7
|149B03| db $6B, $63, $9C, $02, $FD
|149B08| db $24 ; Repeat byte
|149B09| db $00
|149B0A| db $02 ; Raw block
|149B0B| db $08, $9C, $FD
|149B0E| db $47 ; Repeat word
|149B0F| dw $FF00
|149B11| db $07 ; Raw block
|149B12| db $07, $F8, $1F, $E0, $3F, $C7, $7F, $8F
|149B1A| db $23 ; Repeat byte
|149B1B| db $FF
|149B1C| db $E0, $2D ; EXT Raw block
|149B1E| db $F8, $E0, $C7, $8F, $03, $FC, $0F, $F0
|149B26| db $1F, $E7, $3F, $CF, $FF, $1E, $FF, $3C
|149B2E| db $FF, $F8, $FF, $F0, $FC, $F0, $E7, $CF
|149B36| db $1F, $3F, $FF, $FF, $79, $C6, $3D, $6A
|149B3E| db $3B, $2C, $14, $2F, $17, $2F, $08, $17
|149B46| db $0F, $08, $07, $07, $C0, $60
|149B4C| db $22 ; Repeat byte
|149B4D| db $20
|149B4E| db $02 ; Raw block
|149B4F| db $10, $08, $07
|149B52| db $22 ; Repeat byte
|149B53| db $FF
|149B54| db $14 ; Raw block
|149B55| db $C3, $FF, $ED, $FF, $F0, $FF, $1F, $73
|149B5D| db $AC, $37, $CA, $06, $F9, $FF, $C3, $E1
|149B65| db $F0, $1F, $8C, $C8, $F9
|149B6A| db $43 ; Repeat word
|149B6B| dw $00FF
|149B6D| db $0D ; Raw block
|149B6E| db $97, $58, $E0, $60, $DF, $5F, $E0, $00
|149B76| db $9F, $60, $80, $7F, $00, $00
|149B7C| db $43 ; Repeat word
|149B7D| dw $1F20
|149B7F| db $83 ; Copy past
|149B80| dw $00D6
|149B82| db $15 ; Raw block
|149B83| db $7F, $80, $3F, $C1, $3F, $D7, $BA, $DF
|149B8B| db $70, $BF, $C0, $78, $80, $C0, $00, $00
|149B93| db $01, $17, $1F, $3F, $78, $C0
|149B99| db $FF ; End of GFX 4C

;===================================================================================================

GFX_4D:
|149B9A| db $19 ; Raw block
|149B9B| db $07, $F8, $07, $FB, $FF, $F7, $FF, $EF
|149BA3| db $FE, $1F, $FF, $FE, $FD, $FE, $F9, $FE
|149BAB| db $F8, $FB, $02, $05, $0A, $F4, $08, $F0
|149BB3| db $F5, $16
|149BB5| db $46 ; Repeat word
|149BB6| dw $F6F5
|149BB8| db $45 ; Repeat word
|149BB9| dw $F536
|149BBB| db $00 ; Raw block
|149BBC| db $F6
|149BBD| db $22 ; Repeat byte
|149BBE| db $08
|149BBF| db $00 ; Raw block
|149BC0| db $E8
|149BC1| db $22 ; Repeat byte
|149BC2| db $28
|149BC3| db $08 ; Raw block
|149BC4| db $E8, $FF, $00, $03, $FC, $E9, $EE, $F5
|149BCC| db $F6
|149BCD| db $46 ; Repeat word
|149BCE| dw $36F5
|149BD0| db $04 ; Raw block
|149BD1| db $F6, $00, $00, $10, $E8
|149BD6| db $22 ; Repeat byte
|149BD7| db $28
|149BD8| db $09 ; Raw block
|149BD9| db $E8, $00, $00, $1E, $00, $21, $1E, $4C
|149BE1| db $3F, $5E
|149BE3| db $46 ; Repeat word
|149BE4| dw $5F3F
|149BE6| db $02 ; Raw block
|149BE7| db $00, $00, $1E
|149BEA| db $24 ; Repeat byte
|149BEB| db $3F
|149BEC| db $06 ; Raw block
|149BED| db $0F, $70, $72, $8C, $FC, $78, $E8
|149BF4| db $45 ; Repeat word
|149BF5| dw $8874
|149BF7| db $04 ; Raw block
|149BF8| db $77, $8C, $73, $70, $81
|149BFD| db $23 ; Repeat byte
|149BFE| db $03
|149BFF| db $01 ; Raw block
|149C00| db $00, $00
|149C02| db $43 ; Repeat word
|149C03| dw $7E99
|149C05| db $06 ; Raw block
|149C06| db $A9, $7E, $AD, $7E, $9D, $7E, $99
|149C0D| db $44 ; Repeat word
|149C0E| dw $A97E
|149C10| db $27 ; Repeat byte
|149C11| db $00
|149C12| db $05 ; Raw block
|149C13| db $07, $F8, $FE, $03, $1D, $E7
|149C19| db $43 ; Repeat word
|149C1A| dw $EFD8
|149C1C| db $00 ; Raw block
|149C1D| db $DF
|149C1E| db $44 ; Repeat word
|149C1F| dw $D9EF
|149C21| db $11 ; Raw block
|149C22| db $00, $05, $0A, $07, $07, $00, $06, $06
|149C2A| db $FF, $00, $10, $FF, $18, $FF, $E7, $FF
|149C32| db $BF, $C0
|149C34| db $45 ; Repeat word
|149C35| dw $807F
|149C37| db $1B ; Raw block
|149C38| db $00, $EF, $E7, $18, $71, $D1, $C9, $C6
|149C40| db $03, $00, $03, $01, $02, $3C, $02, $7C
|149C48| db $3E, $F8, $7A, $F4, $72, $EC, $F3, $0D
|149C50| db $FC, $FC, $C1, $81
|149C54| db $22 ; Repeat byte
|149C55| db $01
|149C56| db $13 ; Raw block
|149C57| db $00, $F3, $0D, $F5, $0E, $F6, $0E, $7B
|149C5F| db $F7, $7C, $FB, $7F, $FC, $3F, $7F, $00
|149C67| db $3F, $00, $00, $01
|149C6B| db $22 ; Repeat byte
|149C6C| db $00
|149C6D| db $01 ; Raw block
|149C6E| db $80, $C0
|149C70| db $24 ; Repeat byte
|149C71| db $00
|149C72| db $02 ; Raw block
|149C73| db $FF, $00, $FF
|149C76| db $43 ; Repeat word
|149C77| dw $00FF
|149C79| db $02 ; Raw block
|149C7A| db $00, $FF, $6D
|149C7D| db $22 ; Repeat byte
|149C7E| db $FF
|149C7F| db $25 ; Repeat byte
|149C80| db $00
|149C81| db $E0, $21 ; EXT Raw block
|149C83| db $18, $00, $3C, $18, $6A, $28, $EB, $6A
|149C8B| db $CB, $4A, $DB, $5A, $E7, $24, $BF, $40
|149C93| db $00, $08, $1C, $1C, $3C, $3C, $18, $00
|149C9B| db $03, $00, $05, $01, $0B, $03, $15, $05
|149CA3| db $E5, $05
|149CA5| db $43 ; Repeat word
|149CA6| dw $A727
|149CA8| db $E0, $29 ; EXT Raw block
|149CAA| db $2B, $AF, $00, $03, $05, $0B, $1B, $5B
|149CB2| db $5C, $58, $FF, $00, $8C, $8C, $11, $11
|149CBA| db $22, $22, $24, $24, $BB, $BB, $DD, $FF
|149CC2| db $EE, $FF, $00, $73, $EE, $DD, $DB, $FF
|149CCA| db $00, $00, $01, $FE, $03, $84, $BB, $FC
|149CD2| db $C7, $F8
|149CD4| db $43 ; Repeat word
|149CD5| dw $F0EF
|149CD7| db $E0, $3D ; EXT Raw block
|149CD9| db $0F, $F0, $2F, $70, $00, $78, $B8, $C0
|149CE1| db $E0, $E0, $00, $A0, $1F, $E0, $20, $C0
|149CE9| db $5F, $90, $BF, $27, $FC, $4C, $F3, $50
|149CF1| db $E1, $40, $E4, $40, $E0, $DF, $A0, $47
|149CF9| db $0F, $1C, $1E, $1B, $F9, $FE, $99, $FE
|149D01| db $FB, $FD, $1F, $FB, $FF, $F7, $1F, $E8
|149D09| db $F9, $D6, $39, $CE, $00, $00, $01, $03
|149D11| db $07, $08, $10, $00, $F5, $16
|149D17| db $43 ; Repeat word
|149D18| dw $F6F5
|149D1A| db $01 ; Raw block
|149D1B| db $09, $0E
|149D1D| db $43 ; Repeat word
|149D1E| dw $FE01
|149D20| db $03 ; Raw block
|149D21| db $03, $FC, $FF, $00
|149D25| db $22 ; Repeat byte
|149D26| db $08
|149D27| db $00 ; Raw block
|149D28| db $F0
|149D29| db $23 ; Repeat byte
|149D2A| db $00
|149D2B| db $01 ; Raw block
|149D2C| db $DF, $DF
|149D2E| db $23 ; Repeat byte
|149D2F| db $FF
|149D30| db $08 ; Raw block
|149D31| db $FC, $FF, $C4, $FF, $87, $FF, $8F, $FF
|149D39| db $9F
|149D3A| db $28 ; Repeat byte
|149D3B| db $FF
|149D3C| db $0F ; Raw block
|149D3D| db $8F, $7F, $87, $7F, $83, $7F, $81, $7F
|149D45| db $C1, $3F, $63, $1F, $6F, $1F, $4F, $3F
|149D4D| db $23 ; Repeat byte
|149D4E| db $7F
|149D4F| db $09 ; Raw block
|149D50| db $3F, $1F, $1F, $3F, $8C, $73, $4C, $B3
|149D58| db $5C, $A0
|149D5A| db $47 ; Repeat word
|149D5B| dw $44B8
|149D5D| db $04 ; Raw block
|149D5E| db $88, $74, $00, $80, $83
|149D63| db $24 ; Repeat byte
|149D64| db $03
|149D65| db $E0, $2B ; EXT Raw block
|149D67| db $E0, $1F, $E0, $DF, $FF, $EC, $FF, $F2
|149D6F| db $7F, $F6, $FF, $6E, $BF, $5E, $FF, $3D
|149D77| db $1F, $DF, $40, $A2, $56, $28, $1E, $31
|149D7F| db $0F, $00, $10, $0F, $23, $1C, $47, $3B
|149D87| db $48, $37, $4F, $37, $48, $37, $4F, $B7
|149D8F| db $00, $0F, $1C, $38
|149D93| db $22 ; Repeat byte
|149D94| db $30
|149D95| db $0B ; Raw block
|149D96| db $B0, $0F, $00, $7F, $0F, $FE, $7F, $84
|149D9E| db $FF, $80, $FF, $C1
|149DA2| db $44 ; Repeat word
|149DA3| dw $0FFF
|149DA5| db $02 ; Raw block
|149DA6| db $00, $0F, $7F
|149DA9| db $24 ; Repeat byte
|149DAA| db $FF
|149DAB| db $E0, $2F ; EXT Raw block
|149DAD| db $CF, $30, $30, $00, $CF, $48, $FD, $00
|149DB5| db $ED, $80, $77, $00, $FC, $00, $58, $03
|149DBD| db $30, $CF, $30, $02, $92, $88, $03, $A7
|149DC5| db $F0, $06, $70, $06, $D0, $07, $F0, $07
|149DCD| db $F8, $03, $EC, $F0, $E0, $1F, $FF, $00
|149DD5| db $0F, $8F, $2F, $0F, $07, $03, $00, $40
|149DDD| db $43 ; Repeat word
|149DDE| dw $7E9D
|149DE0| db $00 ; Raw block
|149DE1| db $8D
|149DE2| db $44 ; Repeat word
|149DE3| dw $B97E
|149DE5| db $05 ; Raw block
|149DE6| db $81, $7E, $C3, $BD, $7E, $42
|149DEC| db $25 ; Repeat byte
|149DED| db $00
|149DEE| db $01 ; Raw block
|149DEF| db $81, $42
|149DF1| db $43 ; Repeat word
|149DF2| dw $7E99
|149DF4| db $86 ; Copy past
|149DF5| dw $007C
|149DF7| db $44 ; Repeat word
|149DF8| dw $A97E
|149DFA| db $27 ; Repeat byte
|149DFB| db $00
|149DFC| db $11 ; Raw block
|149DFD| db $3D, $BE, $FA, $FD, $54, $FB, $68, $F7
|149E05| db $10, $EF, $E0, $1F, $80, $7C, $83, $7B
|149E0D| db $50, $60
|149E0F| db $23 ; Repeat byte
|149E10| db $00
|149E11| db $0B ; Raw block
|149E12| db $03, $04, $FF, $00, $D9, $FF, $C0, $E6
|149E1A| db $00, $6C, $00, $65
|149E1E| db $83 ; Copy past
|149E1F| dw $00F9
|149E21| db $E0, $2D ; EXT Raw block
|149E23| db $33, $FF, $00, $00, $19, $93, $9A, $00
|149E2B| db $FF, $00, $17, $38, $13, $3C, $05, $3E
|149E33| db $05, $0E, $C1, $C6, $01, $FE, $01, $00
|149E3B| db $FF, $00, $D0, $D0, $C4, $F4, $38, $00
|149E43| db $FE, $00, $E3, $40, $E8, $40, $F7, $50
|149E4B| db $F8, $48, $9F, $60, $CE, $31
|149E51| db $83 ; Copy past
|149E52| dw $0264
|149E54| db $03 ; Raw block
|149E55| db $1C, $17, $08, $07
|149E59| db $83 ; Copy past
|149E5A| dw $00EC
|149E5C| db $18 ; Raw block
|149E5D| db $3F, $00, $7F, $00, $70, $00, $C0, $00
|149E65| db $F6, $00, $E6, $00, $C4, $00, $E0, $00
|149E6D| db $00, $1F, $30, $40, $76, $26, $44, $60
|149E75| db $FB
|149E76| db $44 ; Repeat word
|149E77| dw $FF00
|149E79| db $02 ; Raw block
|149E7A| db $5C, $00, $08
|149E7D| db $43 ; Repeat word
|149E7E| dw $3000
|149E80| db $22 ; Repeat byte
|149E81| db $00
|149E82| db $07 ; Raw block
|149E83| db $4A, $B1, $FF, $5C, $08, $30, $B0, $00
|149E8B| db $43 ; Repeat word
|149E8C| dw $7F8E
|149E8E| db $00 ; Raw block
|149E8F| db $84
|149E90| db $46 ; Repeat word
|149E91| dw $807F
|149E93| db $03 ; Raw block
|149E94| db $C0, $3F, $E9, $16
|149E98| db $25 ; Repeat byte
|149E99| db $7F
|149E9A| db $06 ; Raw block
|149E9B| db $3F, $16, $7E, $FF, $3E, $FF, $38
|149EA2| db $44 ; Repeat word
|149EA3| dw $01FF
|149EA5| db $05 ; Raw block
|149EA6| db $40, $BF, $C4, $3B, $EE, $11
|149EAC| db $24 ; Repeat byte
|149EAD| db $FF
|149EAE| db $15 ; Raw block
|149EAF| db $BF, $3B, $11, $88, $76, $48, $B7, $4C
|149EB7| db $B3, $86, $79, $87, $7C, $85, $7E, $4D
|149EBF| db $BE, $59, $BE, $01, $80, $80
|149EC5| db $22 ; Repeat byte
|149EC6| db $00
|149EC7| db $16 ; Raw block
|149EC8| db $80, $80, $FF, $7D, $FD, $FB, $FF, $FB
|149ED0| db $F8, $F7, $FF, $F7, $F8, $0F, $9F, $7F
|149ED8| db $94, $7F, $7C, $C0, $F8, $00, $F0
|149EDF| db $22 ; Repeat byte
|149EE0| db $00
|149EE1| db $18 ; Raw block
|149EE2| db $C4, $3B, $E3, $1C, $B0, $4F, $B9, $47
|149EEA| db $BE, $41, $9F, $60, $CF, $30, $E0, $1F
|149EF2| db $B8, $3C, $5F, $6F, $77, $78, $7F, $7F
|149EFA| db $1E
|149EFB| db $44 ; Repeat word
|149EFC| dw $9CFF
|149EFE| db $00 ; Raw block
|149EFF| db $1E
|149F00| db $44 ; Repeat word
|149F01| dw $0FFF
|149F03| db $02 ; Raw block
|149F04| db $03, $FF, $C1
|149F07| db $28 ; Repeat byte
|149F08| db $FF
|149F09| db $04 ; Raw block
|149F0A| db $19, $EF, $FF, $0F, $18
|149F0F| db $44 ; Repeat word
|149F10| dw $D8EF
|149F12| db $07 ; Raw block
|149F13| db $D4, $EF, $DB, $E7, $DD, $E3, $06, $00
|149F1B| db $22 ; Repeat byte
|149F1C| db $07
|149F1D| db $E0, $47 ; EXT Raw block
|149F1F| db $0B, $0C, $0E, $7F, $80, $BF, $C0, $5F
|149F27| db $E0, $79, $FF, $4F, $FF, $86, $FF, $FC
|149F2F| db $FF, $04, $FF, $C2, $62, $B0, $86, $B0
|149F37| db $79, $03, $FB, $FF, $F8, $F8, $F6, $F3
|149F3F| db $EC, $D7, $E8, $F7, $C8, $B7, $C8, $FB
|149F47| db $84, $7C, $82, $00, $07, $0E, $0C, $08
|149F4F| db $0C, $2F, $37, $F1, $0F, $FC, $03, $CF
|149F57| db $30, $CE, $31, $44, $3B, $60, $1F, $18
|149F5F| db $07, $0F, $00, $7F, $7F, $4F, $0E, $04
|149F67| db $22 ; Repeat byte
|149F68| db $00
|149F69| db $0C ; Raw block
|149F6A| db $86, $77, $85, $6E, $9E, $58, $94, $B8
|149F72| db $58, $E0, $10, $E0, $E0
|149F77| db $22 ; Repeat byte
|149F78| db $00
|149F79| db $03 ; Raw block
|149F7A| db $08, $10, $20, $40
|149F7E| db $23 ; Repeat byte
|149F7F| db $00
|149F80| db $06 ; Raw block
|149F81| db $66, $99, $FF, $00, $02, $00, $01
|149F88| db $34 ; Repeat byte
|149F89| db $00
|149F8A| db $03 ; Raw block
|149F8B| db $01, $00, $03, $01
|149F8F| db $43 ; Repeat word
|149F90| dw $0306
|149F92| db $03 ; Raw block
|149F93| db $05, $03, $02, $01
|149F97| db $22 ; Repeat byte
|149F98| db $00
|149F99| db $03 ; Raw block
|149F9A| db $01, $02, $02, $01
|149F9E| db $27 ; Repeat byte
|149F9F| db $00
|149FA0| db $43 ; Repeat word
|149FA1| dw $000F
|149FA3| db $43 ; Repeat word
|149FA4| dw $0006
|149FA6| db $08 ; Raw block
|149FA7| db $07, $00, $3E, $7F, $70, $70, $79, $79
|149FAF| db $38
|149FB0| db $43 ; Repeat word
|149FB1| dw $00F0
|149FB3| db $04 ; Raw block
|149FB4| db $E0, $00, $E7, $00, $EF
|149FB9| db $46 ; Repeat word
|149FBA| dw $FF00
|149FBC| db $06 ; Raw block
|149FBD| db $70, $50, $20, $67, $6F, $3F, $19
|149FC4| db $22 ; Repeat byte
|149FC5| db $00
|149FC6| db $43 ; Repeat word
|149FC7| dw $00C0
|149FC9| db $02 ; Raw block
|149FCA| db $11, $00, $9B
|149FCD| db $46 ; Repeat word
|149FCE| dw $FF00
|149FD0| db $08 ; Raw block
|149FD1| db $00, $C4, $C0, $11, $9B, $FF, $EF, $46
|149FD9| db $0F
|149FDA| db $44 ; Repeat word
|149FDB| dw $6700
|149FDD| db $00 ; Raw block
|149FDE| db $01
|149FDF| db $22 ; Repeat byte
|149FE0| db $00
|149FE1| db $02 ; Raw block
|149FE2| db $18, $00, $18
|149FE5| db $22 ; Repeat byte
|149FE6| db $00
|149FE7| db $14 ; Raw block
|149FE8| db $0E, $67, $67, $01, $00, $18, $98, $00
|149FF0| db $38, $00, $44, $38, $83, $7C, $38, $FF
|149FF8| db $7C, $FF, $DF, $FF, $9F
|149FFD| db $22 ; Repeat byte
|149FFE| db $FF
|149FFF| db $02 ; Raw block
|14A000| db $00, $38, $7C
|14A003| db $24 ; Repeat byte
|14A004| db $FF
|14A005| db $03 ; Raw block
|14A006| db $CF, $2F, $F0, $1F
|14A00A| db $49 ; Repeat word
|14A00B| dw $00FF
|14A00D| db $0D ; Raw block
|14A00E| db $FE, $06, $10, $80, $C0, $E0, $FF, $FF
|14A016| db $F0, $E1, $FB, $FC, $07, $F8
|14A01C| db $49 ; Repeat word
|14A01D| dw $00FF
|14A01F| db $01 ; Raw block
|14A020| db $08, $08
|14A022| db $83 ; Copy past
|14A023| dw $0191
|14A025| db $03 ; Raw block
|14A026| db $FF, $FF, $00, $F7
|14A02A| db $83 ; Copy past
|14A02B| dw $0308
|14A02D| db $02 ; Raw block
|14A02E| db $E1, $00, $F9
|14A031| db $84 ; Copy past
|14A032| dw $0481
|14A034| db $1B ; Raw block
|14A035| db $F0, $00, $F8, $00, $76, $66, $21, $39
|14A03D| db $30, $24, $70, $78, $80, $FF, $84, $FF
|14A045| db $8C, $FF, $DC, $FF, $FE, $7F, $FF, $1F
|14A04D| db $7F, $87, $5F, $E0
|14A051| db $23 ; Repeat byte
|14A052| db $FF
|14A053| db $0B ; Raw block
|14A054| db $7F, $1F, $07, $00, $1E, $E1, $FC, $03
|14A05C| db $10, $EF, $DE, $E1
|14A060| db $43 ; Repeat word
|14A061| dw $E0DF
|14A063| db $03 ; Raw block
|14A064| db $CF, $F0, $E7, $F8
|14A068| db $24 ; Repeat byte
|14A069| db $0F
|14A06A| db $0A ; Raw block
|14A06B| db $07, $00, $00, $FB, $04, $F3, $0C, $E1
|14A073| db $1E, $0C, $F3
|14A076| db $43 ; Repeat word
|14A077| dw $C33C
|14A079| db $43 ; Repeat word
|14A07A| dw $00FF
|14A07C| db $25 ; Repeat byte
|14A07D| db $FF
|14A07E| db $16 ; Raw block
|14A07F| db $00, $00, $77, $88, $58, $A7, $5C, $A3
|14A087| db $2F, $D4, $B7, $CE, $98, $E7, $CF, $F0
|14A08F| db $E0, $FF, $38, $1F, $1F, $0B, $01
|14A096| db $22 ; Repeat byte
|14A097| db $00
|14A098| db $0F ; Raw block
|14A099| db $06, $FF, $79, $FF, $46, $FF, $40, $FF
|14A0A1| db $4C, $FF, $AF, $FF, $A7, $FF, $47, $FF
|14A0A9| db $27 ; Repeat byte
|14A0AA| db $00
|14A0AB| db $83 ; Copy past
|14A0AC| dw $00AC
|14A0AE| db $04 ; Raw block
|14A0AF| db $7E, $FF, $00, $FF, $99
|14A0B4| db $26 ; Repeat byte
|14A0B5| db $FF
|14A0B6| db $27 ; Repeat byte
|14A0B7| db $00
|14A0B8| db $00 ; Raw block
|14A0B9| db $4F
|14A0BA| db $44 ; Repeat word
|14A0BB| dw $67FF
|14A0BD| db $43 ; Repeat word
|14A0BE| dw $FFAF
|14A0C0| db $43 ; Repeat word
|14A0C1| dw $FF67
|14A0C3| db $01 ; Raw block
|14A0C4| db $4F, $FF
|14A0C6| db $27 ; Repeat byte
|14A0C7| db $00
|14A0C8| db $47 ; Repeat word
|14A0C9| dw $00FF
|14A0CB| db $04 ; Raw block
|14A0CC| db $AA, $55, $00, $FF, $00
|14A0D1| db $22 ; Repeat byte
|14A0D2| db $FF
|14A0D3| db $27 ; Repeat byte
|14A0D4| db $00
|14A0D5| db $2F ; Repeat byte
|14A0D6| db $FF
|14A0D7| db $27 ; Repeat byte
|14A0D8| db $00
|14A0D9| db $FF ; End of GFX 4D

;===================================================================================================

GFX_4E:
|14A0DA| db $04 ; Raw block
|14A0DB| db $07, $FF, $C1, $FF, $F8
|14A0E0| db $26 ; Repeat byte
|14A0E1| db $FF
|14A0E2| db $29 ; Repeat byte
|14A0E3| db $00
|14A0E4| db $0D ; Raw block
|14A0E5| db $FF, $FF, $64, $EB, $0B, $F7, $F7, $0F
|14A0ED| db $FF, $FF, $7F, $7F, $0F, $0F
|14A0F3| db $23 ; Repeat byte
|14A0F4| db $00
|14A0F5| db $00 ; Raw block
|14A0F6| db $10
|14A0F7| db $22 ; Repeat byte
|14A0F8| db $00
|14A0F9| db $03 ; Raw block
|14A0FA| db $80, $F0, $FF, $FF
|14A0FE| db $25 ; Repeat byte
|14A0FF| db $00
|14A100| db $25 ; Repeat byte
|14A101| db $FF
|14A102| db $03 ; Raw block
|14A103| db $00, $FF, $FF, $00
|14A107| db $22 ; Repeat byte
|14A108| db $FF
|14A109| db $24 ; Repeat byte
|14A10A| db $00
|14A10B| db $01 ; Raw block
|14A10C| db $A9, $61
|14A10E| db $43 ; Repeat word
|14A10F| dw $73BB
|14A111| db $01 ; Raw block
|14A112| db $A9, $61
|14A114| db $43 ; Repeat word
|14A115| dw $60A8
|14A117| db $0D ; Raw block
|14A118| db $A0, $5F, $E8, $20, $1E, $0C, $0C, $1E
|14A120| db $1F, $1F, $00, $1F, $D4, $30
|14A126| db $43 ; Repeat word
|14A127| dw $66AE
|14A129| db $43 ; Repeat word
|14A12A| dw $60A8
|14A12C| db $43 ; Repeat word
|14A12D| dw $66AE
|14A12F| db $1B ; Raw block
|14A130| db $A8, $60, $0F, $19, $19, $1F, $1F, $19
|14A138| db $19, $1F, $CF, $38, $E0, $58, $B0, $6F
|14A140| db $DF, $30, $AF, $5F, $94, $6F, $CD, $36
|14A148| db $A1, $5E, $00, $07
|14A14C| db $25 ; Repeat byte
|14A14D| db $00
|14A14E| db $13 ; Raw block
|14A14F| db $FE, $FE, $18, $18, $01, $01, $C3, $C3
|14A157| db $FF, $FF, $F7, $FF, $E1, $FF, $C0, $FF
|14A15F| db $01, $E7, $FE, $3C
|14A163| db $23 ; Repeat byte
|14A164| db $00
|14A165| db $06 ; Raw block
|14A166| db $FC, $03, $0F, $F0, $00, $FF, $70
|14A16D| db $22 ; Repeat byte
|14A16E| db $FF
|14A16F| db $05 ; Raw block
|14A170| db $80, $80, $18, $18, $3F, $3F
|14A176| db $24 ; Repeat byte
|14A177| db $00
|14A178| db $08 ; Raw block
|14A179| db $7F, $E7, $C0, $A0, $DF, $A0, $DC, $A0
|14A181| db $D8
|14A182| db $44 ; Repeat word
|14A183| dw $D1A0
|14A185| db $12 ; Raw block
|14A186| db $D8, $20, $DC, $E0, $9F, $00, $03, $07
|14A18E| db $0E, $0E, $07, $03, $00, $00, $FE, $00
|14A196| db $0E, $00, $C6
|14A199| db $44 ; Repeat word
|14A19A| dw $2200
|14A19C| db $1F ; Raw block
|14A19D| db $C6, $00, $0E, $00, $FE, $01, $F1, $39
|14A1A5| db $DD, $DD, $39, $F1, $01, $07, $07, $0F
|14A1AD| db $0F, $3F, $3F, $FE, $FF, $FC, $FF, $F9
|14A1B5| db $FE, $03, $FC, $FF, $00, $F8, $F0, $C0
|14A1BD| db $24 ; Repeat byte
|14A1BE| db $00
|14A1BF| db $01 ; Raw block
|14A1C0| db $FF, $00
|14A1C2| db $22 ; Repeat byte
|14A1C3| db $FF
|14A1C4| db $0A ; Raw block
|14A1C5| db $7F, $7B, $07, $A4, $1B, $DA, $8D, $FA
|14A1CD| db $6D, $6A, $9D
|14A1D0| db $22 ; Repeat byte
|14A1D1| db $00
|14A1D2| db $02 ; Raw block
|14A1D3| db $80, $C0, $60
|14A1D6| db $22 ; Repeat byte
|14A1D7| db $00
|14A1D8| db $0E ; Raw block
|14A1D9| db $FF, $00, $FF, $06, $F9, $07, $F8, $3F
|14A1E1| db $C0, $1F, $E0, $0F, $F0, $07, $F8
|14A1E8| db $24 ; Repeat byte
|14A1E9| db $FF
|14A1EA| db $08 ; Raw block
|14A1EB| db $F3, $F8, $FC, $30, $CF, $32, $CD, $77
|14A1F3| db $88
|14A1F4| db $45 ; Repeat word
|14A1F5| dw $00FF
|14A1F7| db $02 ; Raw block
|14A1F8| db $9C, $63, $23
|14A1FB| db $23 ; Repeat byte
|14A1FC| db $FF
|14A1FD| db $15 ; Raw block
|14A1FE| db $DD, $9C, $08, $00, $23, $07, $07, $3E
|14A206| db $3F, $20, $3F, $27, $38, $13, $1C, $0B
|14A20E| db $0C, $8B, $8C, $D3, $DC, $F8
|14A214| db $22 ; Repeat byte
|14A215| db $C0
|14A216| db $07 ; Raw block
|14A217| db $E0, $F0, $70, $20, $00, $00, $03, $03
|14A21F| db $83 ; Copy past
|14A220| dw $00F2
|14A222| db $23 ; Repeat byte
|14A223| db $FF
|14A224| db $05 ; Raw block
|14A225| db $FE, $FE, $FC, $FC, $FF, $FC
|14A22B| db $83 ; Copy past
|14A22C| dw $0101
|14A22E| db $07 ; Raw block
|14A22F| db $01, $03, $C0, $C0, $F0, $F0, $7E, $FE
|14A237| db $25 ; Repeat byte
|14A238| db $FF
|14A239| db $23 ; Repeat byte
|14A23A| db $00
|14A23B| db $02 ; Raw block
|14A23C| db $3F, $0F, $01
|14A23F| db $22 ; Repeat byte
|14A240| db $00
|14A241| db $01 ; Raw block
|14A242| db $FF, $FF
|14A244| db $2F ; Repeat byte
|14A245| db $00
|14A246| db $27 ; Repeat byte
|14A247| db $FF
|14A248| db $09 ; Raw block
|14A249| db $A3, $03, $A7, $07, $80, $3F, $A3, $63
|14A251| db $E7, $47
|14A253| db $43 ; Repeat word
|14A254| dw $0FAF
|14A256| db $0B ; Raw block
|14A257| db $A7, $07, $7C, $78, $40, $1C, $38, $70
|14A25F| db $70, $78, $A0, $60
|14A263| db $43 ; Repeat word
|14A264| dw $63A3
|14A266| db $43 ; Repeat word
|14A267| dw $60A8
|14A269| db $0F ; Raw block
|14A26A| db $A9, $61, $AB, $62, $A9, $60, $1F, $1C
|14A272| db $1C, $1F, $1F, $1E, $1C, $1E, $44, $7B
|14A27A| db $43 ; Repeat word
|14A27B| dw $0400
|14A27D| db $07 ; Raw block
|14A27E| db $3F, $40, $5F, $BF, $AF, $6F, $46, $C6
|14A286| db $22 ; Repeat byte
|14A287| db $80
|14A288| db $1F ; Raw block
|14A289| db $FB, $FB, $80, $00, $10, $39, $7F, $40
|14A291| db $2D, $40, $21, $40, $3F, $40, $12, $C0
|14A299| db $32, $E0, $1F, $1F, $00, $B0, $80, $92
|14A2A1| db $9E, $80, $AD, $8D, $C0, $E0, $7F, $FF
|14A2A9| db $44 ; Repeat word
|14A2AA| dw $8000
|14A2AC| db $11 ; Raw block
|14A2AD| db $FF, $7F, $BF, $3F, $FF, $20, $FF, $6F
|14A2B5| db $F0, $6F, $00, $7F, $7F, $00, $40, $00
|14A2BD| db $0F, $00
|14A2BF| db $23 ; Repeat byte
|14A2C0| db $FE
|14A2C1| db $23 ; Repeat byte
|14A2C2| db $E0
|14A2C3| db $E0, $23 ; EXT Raw block
|14A2C5| db $C3, $C3, $8F, $8F, $9F, $9F, $3C, $3F
|14A2CD| db $01, $01, $1F, $1F, $3C, $70, $60, $C0
|14A2D5| db $A0, $DE, $A0, $D8, $A8, $D8, $BC, $DD
|14A2DD| db $BC, $DF, $B8, $DF, $10, $EF, $8F, $F0
|14A2E5| db $01, $07, $07, $02
|14A2E9| db $28 ; Repeat byte
|14A2EA| db $00
|14A2EB| db $05 ; Raw block
|14A2EC| db $07, $00, $C7, $00, $C3, $7F
|14A2F2| db $86 ; Copy past
|14A2F3| dw $003B
|14A2F5| db $02 ; Raw block
|14A2F6| db $F8, $38, $3C
|14A2F9| db $22 ; Repeat byte
|14A2FA| db $00
|14A2FB| db $02 ; Raw block
|14A2FC| db $C0, $FF, $80
|14A2FF| db $46 ; Repeat word
|14A300| dw $00FF
|14A302| db $83 ; Copy past
|14A303| dw $00FC
|14A305| db $01 ; Raw block
|14A306| db $FC, $03
|14A308| db $27 ; Repeat byte
|14A309| db $00
|14A30A| db $02 ; Raw block
|14A30B| db $FC, $FF, $E0
|14A30E| db $44 ; Repeat word
|14A30F| dw $C0FF
|14A311| db $45 ; Repeat word
|14A312| dw $FF80
|14A314| db $05 ; Raw block
|14A315| db $00, $FF, $FC, $E0, $C0, $C0
|14A31B| db $22 ; Repeat byte
|14A31C| db $80
|14A31D| db $00 ; Raw block
|14A31E| db $00
|14A31F| db $43 ; Repeat word
|14A320| dw $817E
|14A322| db $19 ; Raw block
|14A323| db $3E, $C1, $BD, $43, $F9, $07, $F3, $0F
|14A32B| db $E7, $1F, $1F, $FF, $FC, $FC, $CC, $E1
|14A333| db $E1, $63, $07, $1F, $7E, $81, $1D, $E3
|14A33B| db $0E, $F1
|14A33D| db $83 ; Copy past
|14A33E| dw $02A2
|14A340| db $1D ; Raw block
|14A341| db $1C, $E3, $1F, $E1, $3E, $C1, $F0, $F9
|14A349| db $FC, $FC, $F4, $F8, $FD, $FC, $E7, $F8
|14A351| db $C9, $F6, $E1, $FE, $71, $FE, $03, $FC
|14A359| db $06, $F9, $1C, $E3, $F1, $0E
|14A35F| db $26 ; Repeat byte
|14A360| db $00
|14A361| db $04 ; Raw block
|14A362| db $01, $F8, $F8, $F0, $F0
|14A367| db $83 ; Copy past
|14A368| dw $029A
|14A36A| db $23 ; Repeat byte
|14A36B| db $00
|14A36C| db $0B ; Raw block
|14A36D| db $01, $01, $03, $03, $07, $0F, $3F, $7F
|14A375| db $FF, $FF, $FE, $FC
|14A379| db $25 ; Repeat byte
|14A37A| db $00
|14A37B| db $01 ; Raw block
|14A37C| db $80, $80
|14A37E| db $85 ; Copy past
|14A37F| dw $02EC
|14A381| db $01 ; Raw block
|14A382| db $03, $03
|14A384| db $22 ; Repeat byte
|14A385| db $FF
|14A386| db $1E ; Raw block
|14A387| db $7F, $3F, $7F, $FF, $FC, $1F, $1F, $F0
|14A38F| db $0F, $48, $37, $B4, $1B, $F7, $DB, $D7
|14A397| db $3B, $C7, $DB, $0F, $F7, $E0, $00, $80
|14A39F| db $C0, $00, $00, $20, $00, $08, $F7
|14A3A6| db $43 ; Repeat word
|14A3A7| dw $0800
|14A3A9| db $83 ; Copy past
|14A3AA| dw $003B
|14A3AC| db $01 ; Raw block
|14A3AD| db $18, $18
|14A3AF| db $83 ; Copy past
|14A3B0| dw $02F2
|14A3B2| db $0E ; Raw block
|14A3B3| db $00, $F7, $F7, $00, $00, $E7, $FF, $FE
|14A3BB| db $A5, $60, $B3, $70, $B9, $78, $9F
|14A3C2| db $44 ; Repeat word
|14A3C3| dw $8F7E
|14A3C5| db $43 ; Repeat word
|14A3C6| dw $7E99
|14A3C8| db $02 ; Raw block
|14A3C9| db $1E, $0E, $06
|14A3CC| db $24 ; Repeat byte
|14A3CD| db $00
|14A3CE| db $23 ; Repeat byte
|14A3CF| db $80
|14A3D0| db $07 ; Raw block
|14A3D1| db $9F, $80, $A0, $80, $DF, $9F, $BC, $BF
|14A3D9| db $43 ; Repeat word
|14A3DA| dw $FFF8
|14A3DC| db $23 ; Repeat byte
|14A3DD| db $7F
|14A3DE| db $15 ; Raw block
|14A3DF| db $60, $40, $00, $00, $DF, $C0, $E0, $E0
|14A3E7| db $3F, $FF, $23, $FF, $A1, $7F, $C0, $3F
|14A3EF| db $3F, $C0, $D0, $2F, $3F, $1F
|14A3F5| db $25 ; Repeat byte
|14A3F6| db $00
|14A3F7| db $10 ; Raw block
|14A3F8| db $8E, $8F, $FC, $FF, $F8, $FF, $E3, $FF
|14A400| db $06, $FF, $3C, $FF, $19, $FE, $43, $BC
|14A408| db $70
|14A409| db $26 ; Repeat byte
|14A40A| db $00
|14A40B| db $10 ; Raw block
|14A40C| db $71, $F1, $3F, $FF, $1F, $FF, $C7, $FF
|14A414| db $60, $FF, $3C, $FF, $98, $7F, $C2, $3D
|14A41C| db $0E
|14A41D| db $26 ; Repeat byte
|14A41E| db $00
|14A41F| db $13 ; Raw block
|14A420| db $D7, $47, $EB, $63, $B7, $70, $98, $78
|14A428| db $CF, $3F, $E4, $5F, $B4, $6F, $98, $77
|14A430| db $38, $1C, $0F, $07
|14A434| db $23 ; Repeat byte
|14A435| db $00
|14A436| db $25 ; Repeat byte
|14A437| db $E0
|14A438| db $83 ; Copy past
|14A439| dw $029A
|14A43B| db $25 ; Repeat byte
|14A43C| db $00
|14A43D| db $22 ; Repeat byte
|14A43E| db $1F
|14A43F| db $01 ; Raw block
|14A440| db $3F, $7F
|14A442| db $22 ; Repeat byte
|14A443| db $FF
|14A444| db $29 ; Repeat byte
|14A445| db $00
|14A446| db $85 ; Copy past
|14A447| dw $003A
|14A449| db $24 ; Repeat byte
|14A44A| db $FF
|14A44B| db $22 ; Repeat byte
|14A44C| db $00
|14A44D| db $83 ; Copy past
|14A44E| dw $012A
|14A450| db $03 ; Raw block
|14A451| db $1F, $E0, $18, $E7
|14A455| db $47 ; Repeat word
|14A456| dw $FF00
|14A458| db $00 ; Raw block
|14A459| db $F8
|14A45A| db $26 ; Repeat byte
|14A45B| db $FF
|14A45C| db $1B ; Raw block
|14A45D| db $8F, $7F, $F7, $0F, $FB, $07, $79, $87
|14A465| db $FE, $01, $FF, $00, $C7, $38, $0E, $F1
|14A46D| db $0F, $07, $F3, $E1, $C0, $FE, $FE, $FC
|14A475| db $AB, $77, $9C, $63
|14A479| db $43 ; Repeat word
|14A47A| dw $00FF
|14A47C| db $0B ; Raw block
|14A47D| db $77, $88, $32, $CD, $30, $CF, $00, $FF
|14A485| db $23, $08, $9C, $DD
|14A489| db $24 ; Repeat byte
|14A48A| db $FF
|14A48B| db $00 ; Raw block
|14A48C| db $00
|14A48D| db $23 ; Repeat byte
|14A48E| db $FF
|14A48F| db $09 ; Raw block
|14A490| db $C0, $C0, $E0, $E0, $70, $F0, $38, $F8
|14A498| db $1E, $FE
|14A49A| db $22 ; Repeat byte
|14A49B| db $00
|14A49C| db $E0, $30 ; EXT Raw block
|14A49E| db $3F, $1F, $0F, $07, $01, $3F, $00, $60
|14A4A6| db $20, $DF, $40, $27, $88, $58, $04, $A0
|14A4AE| db $1E, $C0, $33, $40, $2D, $00, $1F, $3F
|14A4B6| db $70, $E3, $C1, $8C, $92, $01, $00, $23
|14A4BE| db $20, $3F, $30, $32, $2C, $2B, $1D, $6B
|14A4C6| db $5D, $69, $5E, $E4, $DF, $FE, $DD, $C1
|14A4CE| db $C1
|14A4CF| db $83 ; Copy past
|14A4D0| dw $02ED
|14A4D2| db $01 ; Raw block
|14A4D3| db $FF, $0F
|14A4D5| db $23 ; Repeat byte
|14A4D6| db $00
|14A4D7| db $25 ; Repeat byte
|14A4D8| db $FF
|14A4D9| db $84 ; Copy past
|14A4DA| dw $0195
|14A4DC| db $01 ; Raw block
|14A4DD| db $FF, $FF
|14A4DF| db $24 ; Repeat byte
|14A4E0| db $00
|14A4E1| db $04 ; Raw block
|14A4E2| db $63, $63, $E0, $E0, $BF
|14A4E7| db $22 ; Repeat byte
|14A4E8| db $00
|14A4E9| db $0B ; Raw block
|14A4EA| db $FF, $FF, $FC, $FF, $78, $FF, $00, $FF
|14A4F2| db $9C, $1F, $FF, $FF
|14A4F6| db $23 ; Repeat byte
|14A4F7| db $00
|14A4F8| db $47 ; Repeat word
|14A4F9| dw $7E81
|14A4FB| db $07 ; Raw block
|14A4FC| db $41, $BE, $B1, $CE, $CF, $F0, $F3, $FC
|14A504| db $27 ; Repeat byte
|14A505| db $00
|14A506| db $05 ; Raw block
|14A507| db $C0, $FF, $81, $FE, $83, $FC
|14A50D| db $43 ; Repeat word
|14A50E| dw $F887
|14A510| db $00 ; Raw block
|14A511| db $C7
|14A512| db $44 ; Repeat word
|14A513| dw $67F8
|14A515| db $27 ; Repeat byte
|14A516| db $00
|14A517| db $0F ; Raw block
|14A518| db $F7, $2F, $B2, $6E, $DE, $EE, $EC, $1C
|14A520| db $66, $5E, $BB, $C7, $7F, $90, $E9, $36
|14A528| db $83 ; Copy past
|14A529| dw $02F3
|14A52B| db $00 ; Raw block
|14A52C| db $81
|14A52D| db $22 ; Repeat byte
|14A52E| db $00
|14A52F| db $E0, $44 ; EXT Raw block
|14A531| db $3B, $47, $28, $18, $F0, $B0, $20, $E0
|14A539| db $28, $E8, $74, $F4, $7B, $FB, $7C, $FC
|14A541| db $80, $C7, $0F, $1F, $1F, $0F, $07, $03
|14A549| db $FE, $C2, $28, $34, $15, $1B, $0A, $0D
|14A551| db $15, $16, $2C, $2F, $DE, $DF, $3E, $3F
|14A559| db $01, $C3, $E0, $F0, $F8, $F0, $E0, $C0
|14A561| db $00, $08, $01, $09, $77, $0B, $87, $0F
|14A569| db $77, $7F, $E0, $FF, $CF, $F0, $90, $EF
|14A571| db $F7, $F6, $F4, $F0, $80
|14A576| db $23 ; Repeat byte
|14A577| db $00
|14A578| db $04 ; Raw block
|14A579| db $08, $81, $89, $F3, $CB
|14A57E| db $43 ; Repeat word
|14A57F| dw $FFF7
|14A581| db $85 ; Copy past
|14A582| dw $04A4
|14A584| db $02 ; Raw block
|14A585| db $F7, $76, $34
|14A588| db $24 ; Repeat byte
|14A589| db $00
|14A58A| db $0B ; Raw block
|14A58B| db $E2, $DE, $10, $0F, $08, $07, $0F, $08
|14A593| db $0E, $0E, $0C, $0C
|14A597| db $23 ; Repeat byte
|14A598| db $18
|14A599| db $07 ; Raw block
|14A59A| db $01, $E0, $F0, $F0, $F1, $F3, $E7, $E7
|14A5A2| db $23 ; Repeat byte
|14A5A3| db $FF
|14A5A4| db $02 ; Raw block
|14A5A5| db $FC, $FF, $F0
|14A5A8| db $83 ; Copy past
|14A5A9| dw $028D
|14A5AB| db $43 ; Repeat word
|14A5AC| dw $00FF
|14A5AE| db $22 ; Repeat byte
|14A5AF| db $FF
|14A5B0| db $03 ; Raw block
|14A5B1| db $FC, $F0, $C0, $80
|14A5B5| db $83 ; Copy past
|14A5B6| dw $0286
|14A5B8| db $00 ; Raw block
|14A5B9| db $F8
|14A5BA| db $44 ; Repeat word
|14A5BB| dw $F0FF
|14A5BD| db $43 ; Repeat word
|14A5BE| dw $FFE0
|14A5C0| db $43 ; Repeat word
|14A5C1| dw $FFC0
|14A5C3| db $03 ; Raw block
|14A5C4| db $FC, $F8, $F0, $F0
|14A5C8| db $83 ; Copy past
|14A5C9| dw $03DC
|14A5CB| db $01 ; Raw block
|14A5CC| db $FF, $00
|14A5CE| db $23 ; Repeat byte
|14A5CF| db $FF
|14A5D0| db $2C ; Repeat byte
|14A5D1| db $00
|14A5D2| db $25 ; Repeat byte
|14A5D3| db $FF
|14A5D4| db $44 ; Repeat word
|14A5D5| dw $FF00
|14A5D7| db $09 ; Raw block
|14A5D8| db $9F, $60, $67, $F8, $5B, $DD, $A0, $67
|14A5E0| db $C3, $3C
|14A5E2| db $24 ; Repeat byte
|14A5E3| db $00
|14A5E4| db $17 ; Raw block
|14A5E5| db $20, $98, $C3, $3C, $00, $62, $20, $61
|14A5ED| db $20, $50, $30, $48, $38, $54, $2C, $59
|14A5F5| db $24, $5F, $24, $00, $1C, $1E, $0F, $07
|14A5FD| db $22 ; Repeat byte
|14A5FE| db $03
|14A5FF| db $FF ; End of GFX 4E

;===================================================================================================

GFX_4F:
|14A600| db $4F ; Repeat word
|14A601| dw $48C8
|14A603| db $27 ; Repeat byte
|14A604| db $37
|14A605| db $09 ; Raw block
|14A606| db $00, $00, $20, $20, $00, $00, $01, $01
|14A60E| db $00, $00
|14A610| db $23 ; Repeat byte
|14A611| db $60
|14A612| db $09 ; Raw block
|14A613| db $04, $04, $FF, $DF, $FF, $FE, $FF, $9F
|14A61B| db $9F, $FB
|14A61D| db $45 ; Repeat word
|14A61E| dw $EF10
|14A620| db $01 ; Raw block
|14A621| db $EE, $FF
|14A623| db $27 ; Repeat byte
|14A624| db $11
|14A625| db $23 ; Repeat byte
|14A626| db $00
|14A627| db $23 ; Repeat byte
|14A628| db $EE
|14A629| db $05 ; Raw block
|14A62A| db $FF, $00, $80, $7F, $7F, $FF
|14A630| db $47 ; Repeat word
|14A631| dw $7F80
|14A633| db $00 ; Raw block
|14A634| db $FF
|14A635| db $29 ; Repeat byte
|14A636| db $00
|14A637| db $08 ; Raw block
|14A638| db $FF, $04, $F7, $00, $0E, $F8, $F9, $FE
|14A640| db $FE
|14A641| db $26 ; Repeat byte
|14A642| db $FF
|14A643| db $02 ; Raw block
|14A644| db $0F, $F1, $FE
|14A647| db $23 ; Repeat byte
|14A648| db $FF
|14A649| db $0B ; Raw block
|14A64A| db $00, $FF, $C0, $3F, $30, $0F, $08, $07
|14A652| db $E4, $E3, $F2, $F1
|14A656| db $43 ; Repeat word
|14A657| dw $FBF8
|14A659| db $0F ; Raw block
|14A65A| db $FF, $3F, $CF, $F7, $FB, $FD, $FD, $FC
|14A662| db $AF, $6F, $77, $97, $48, $B8, $87, $47
|14A66A| db $43 ; Repeat word
|14A66B| dw $7F80
|14A66D| db $07 ; Raw block
|14A66E| db $C0, $3F, $FF, $00, $10, $08, $07, $38
|14A676| db $23 ; Repeat byte
|14A677| db $00
|14A678| db $07 ; Raw block
|14A679| db $FF, $FF, $F3, $FF, $61, $61, $9E, $9E
|14A681| db $43 ; Repeat word
|14A682| dw $FF00
|14A684| db $02 ; Raw block
|14A685| db $F0, $0F, $FF
|14A688| db $22 ; Repeat byte
|14A689| db $00
|14A68A| db $01 ; Raw block
|14A68B| db $9E, $61
|14A68D| db $23 ; Repeat byte
|14A68E| db $00
|14A68F| db $0E ; Raw block
|14A690| db $FF, $FF, $7F, $FF, $3C, $FF, $18, $FF
|14A698| db $00, $FF, $80, $7F, $C3, $3C, $FF
|14A69F| db $28 ; Repeat byte
|14A6A0| db $00
|14A6A1| db $01 ; Raw block
|14A6A2| db $33, $3F
|14A6A4| db $43 ; Repeat word
|14A6A5| dw $FFF0
|14A6A7| db $43 ; Repeat word
|14A6A8| dw $FF90
|14A6AA| db $06 ; Raw block
|14A6AB| db $F1, $FE, $E1, $FE, $C3, $FC, $C0
|14A6B2| db $26 ; Repeat byte
|14A6B3| db $00
|14A6B4| db $00 ; Raw block
|14A6B5| db $F3
|14A6B6| db $46 ; Repeat word
|14A6B7| dw $F0FF
|14A6B9| db $00 ; Raw block
|14A6BA| db $D0
|14A6BB| db $86 ; Copy past
|14A6BC| dw $00E1
|14A6BE| db $27 ; Repeat byte
|14A6BF| db $00
|14A6C0| db $4E ; Repeat word
|14A6C1| dw $00FF
|14A6C3| db $28 ; Repeat byte
|14A6C4| db $00
|14A6C5| db $45 ; Repeat word
|14A6C6| dw $00FF
|14A6C8| db $09 ; Raw block
|14A6C9| db $F9, $06, $F3, $0C, $E6, $19, $CC, $33
|14A6D1| db $DC, $23
|14A6D3| db $27 ; Repeat byte
|14A6D4| db $00
|14A6D5| db $0F ; Raw block
|14A6D6| db $FF, $00, $F0, $0F, $CF, $30, $F0, $0F
|14A6DE| db $00, $FF, $0F, $F0, $1C, $E3, $E0, $1F
|14A6E6| db $27 ; Repeat byte
|14A6E7| db $00
|14A6E8| db $05 ; Raw block
|14A6E9| db $0F, $0F, $07, $07, $0F, $08
|14A6EF| db $45 ; Repeat word
|14A6F0| dw $1817
|14A6F2| db $06 ; Raw block
|14A6F3| db $93, $9C, $88, $8F, $FF, $F8, $F0
|14A6FA| db $22 ; Repeat byte
|14A6FB| db $E0
|14A6FC| db $01 ; Raw block
|14A6FD| db $60, $70
|14A6FF| db $37 ; Repeat byte
|14A700| db $00
|14A701| db $17 ; Raw block
|14A702| db $C4, $44, $E3, $63, $B0, $70, $D8, $38
|14A70A| db $EF, $9F, $F7, $CF, $F8, $C7, $FF, $C0
|14A712| db $3B, $1C, $0F, $07, $80, $C0, $E0, $F0
|14A71A| db $83 ; Copy past
|14A71B| dw $00A6
|14A71D| db $23 ; Repeat byte
|14A71E| db $00
|14A71F| db $23 ; Repeat byte
|14A720| db $FF
|14A721| db $01 ; Raw block
|14A722| db $00, $FF
|14A724| db $44 ; Repeat word
|14A725| dw $00FF
|14A727| db $00 ; Raw block
|14A728| db $FF
|14A729| db $23 ; Repeat byte
|14A72A| db $00
|14A72B| db $07 ; Raw block
|14A72C| db $21, $21, $C1, $C1, $01, $01, $03, $03
|14A734| db $23 ; Repeat byte
|14A735| db $FF
|14A736| db $07 ; Raw block
|14A737| db $1F, $FF, $EF, $1F, $DE, $3E, $FE, $FC
|14A73F| db $23 ; Repeat byte
|14A740| db $00
|14A741| db $01 ; Raw block
|14A742| db $FF, $00
|14A744| db $43 ; Repeat word
|14A745| dw $3EC1
|14A747| db $02 ; Raw block
|14A748| db $FF, $00, $DD
|14A74B| db $44 ; Repeat word
|14A74C| dw $C13E
|14A74E| db $00 ; Raw block
|14A74F| db $FF
|14A750| db $28 ; Repeat byte
|14A751| db $00
|14A752| db $0F ; Raw block
|14A753| db $FE, $E0, $FE, $00, $FE, $C0, $3E, $20
|14A75B| db $DE, $D0, $EE, $E8, $F7, $F5, $F7, $F4
|14A763| db $22 ; Repeat byte
|14A764| db $01
|14A765| db $14 ; Raw block
|14A766| db $C1, $E1, $F1, $F8, $F8, $FF, $60, $FF
|14A76E| db $00, $FF, $E0, $3F, $30, $DF, $D8, $EF
|14A776| db $EC, $F7, $F6, $FB, $FA
|14A77B| db $22 ; Repeat byte
|14A77C| db $00
|14A77D| db $0E ; Raw block
|14A77E| db $C0, $E0, $F0, $F8, $FC, $07, $F8, $FC
|14A786| db $04, $7B, $6B, $F7, $D7, $EF, $AF
|14A78D| db $43 ; Repeat word
|14A78E| dw $6FAF
|14A790| db $05 ; Raw block
|14A791| db $B7, $77, $F8, $03, $84, $08
|14A797| db $22 ; Repeat byte
|14A798| db $10
|14A799| db $10 ; Raw block
|14A79A| db $08, $D8, $3F, $9F, $7F, $EF, $1F, $DC
|14A7A2| db $3C, $A0, $63, $40, $BF, $BF, $7F, $B9
|14A7AA| db $7F
|14A7AB| db $22 ; Repeat byte
|14A7AC| db $00
|14A7AD| db $01 ; Raw block
|14A7AE| db $03, $1C
|14A7B0| db $22 ; Repeat byte
|14A7B1| db $00
|14A7B2| db $06 ; Raw block
|14A7B3| db $1C, $E3, $83, $FF, $7F, $FF, $38
|14A7BA| db $84 ; Copy past
|14A7BB| dw $00C7
|14A7BD| db $03 ; Raw block
|14A7BE| db $C0, $3F, $F0, $0F
|14A7C2| db $27 ; Repeat byte
|14A7C3| db $00
|14A7C4| db $0F ; Raw block
|14A7C5| db $0E, $F1, $38, $C7, $70, $8F, $E1, $1E
|14A7CD| db $C7, $38, $8F, $70, $9F, $60, $3C, $C3
|14A7D5| db $27 ; Repeat byte
|14A7D6| db $00
|14A7D7| db $07 ; Raw block
|14A7D8| db $FF, $00, $0F, $F0, $F3, $0C, $0F, $F0
|14A7E0| db $83 ; Copy past
|14A7E1| dw $00B2
|14A7E3| db $02 ; Raw block
|14A7E4| db $F8, $07, $FF
|14A7E7| db $28 ; Repeat byte
|14A7E8| db $00
|14A7E9| db $43 ; Repeat word
|14A7EA| dw $00FF
|14A7EC| db $01 ; Raw block
|14A7ED| db $FD, $02
|14A7EF| db $83 ; Copy past
|14A7F0| dw $0128
|14A7F2| db $01 ; Raw block
|14A7F3| db $EC, $13
|14A7F5| db $83 ; Copy past
|14A7F6| dw $012C
|14A7F8| db $27 ; Repeat byte
|14A7F9| db $00
|14A7FA| db $0F ; Raw block
|14A7FB| db $F3, $0C, $E7, $18, $CE, $31, $8C, $73
|14A803| db $19, $E7, $73, $8F, $F7, $0F, $E7, $1F
|14A80B| db $27 ; Repeat byte
|14A80C| db $00
|14A80D| db $0B ; Raw block
|14A80E| db $87, $7F, $30, $F0, $60, $EF, $C0, $D8
|14A816| db $87, $97, $8F, $AF
|14A81A| db $43 ; Repeat word
|14A81B| dw $2F0F
|14A81D| db $1B ; Raw block
|14A81E| db $00, $0F, $10, $27, $68, $50, $D0, $D0
|14A826| db $97, $97, $C8, $C8, $E7, $E7, $70, $F0
|14A82E| db $3F, $FF, $00, $FF, $07, $F8, $FF, $00
|14A836| db $78, $3F, $1F, $0F
|14A83A| db $22 ; Repeat byte
|14A83B| db $00
|14A83C| db $00 ; Raw block
|14A83D| db $07
|14A83E| db $37 ; Repeat byte
|14A83F| db $00
|14A840| db $43 ; Repeat word
|14A841| dw $00FF
|14A843| db $0B ; Raw block
|14A844| db $DF, $20, $EF, $10, $F7, $08, $FB, $04
|14A84C| db $FD, $02, $DE, $21
|14A850| db $27 ; Repeat byte
|14A851| db $00
|14A852| db $45 ; Repeat word
|14A853| dw $00FF
|14A855| db $47 ; Repeat word
|14A856| dw $20DF
|14A858| db $01 ; Raw block
|14A859| db $00, $FF
|14A85B| db $23 ; Repeat byte
|14A85C| db $00
|14A85D| db $22 ; Repeat byte
|14A85E| db $DF
|14A85F| db $00 ; Raw block
|14A860| db $00
|14A861| db $4F ; Repeat word
|14A862| dw $0FFF
|14A864| db $27 ; Repeat byte
|14A865| db $00
|14A866| db $00 ; Raw block
|14A867| db $DD
|14A868| db $44 ; Repeat word
|14A869| dw $C13E
|14A86B| db $02 ; Raw block
|14A86C| db $FF, $00, $DD
|14A86F| db $44 ; Repeat word
|14A870| dw $C13E
|14A872| db $00 ; Raw block
|14A873| db $FF
|14A874| db $29 ; Repeat byte
|14A875| db $00
|14A876| db $03 ; Raw block
|14A877| db $FF, $0F, $F0, $01
|14A87B| db $84 ; Copy past
|14A87C| dw $0065
|14A87E| db $25 ; Repeat byte
|14A87F| db $FF
|14A880| db $03 ; Raw block
|14A881| db $00, $00, $F0, $FE
|14A885| db $24 ; Repeat byte
|14A886| db $FF
|14A887| db $45 ; Repeat word
|14A888| dw $FF00
|14A88A| db $08 ; Raw block
|14A88B| db $80, $9F, $80, $CF, $C0, $E5, $E2, $F2
|14A893| db $F1
|14A894| db $22 ; Repeat byte
|14A895| db $00
|14A896| db $00 ; Raw block
|14A897| db $80
|14A898| db $83 ; Copy past
|14A899| dw $020C
|14A89B| db $11 ; Raw block
|14A89C| db $CB, $7B, $C4, $7C, $C7, $BF, $E4, $DF
|14A8A4| db $F4, $EF, $68, $77, $0F, $18, $E7, $F7
|14A8AC| db $04, $03
|14A8AE| db $22 ; Repeat byte
|14A8AF| db $00
|14A8B0| db $0F ; Raw block
|14A8B1| db $80, $E0, $08, $FF, $FF, $F7, $FF, $E3
|14A8B9| db $FF, $F3, $F3, $00, $0C, $00, $FF, $1F
|14A8C1| db $22 ; Repeat byte
|14A8C2| db $FF
|14A8C3| db $22 ; Repeat byte
|14A8C4| db $00
|14A8C5| db $01 ; Raw block
|14A8C6| db $0C, $F3
|14A8C8| db $22 ; Repeat byte
|14A8C9| db $00
|14A8CA| db $03 ; Raw block
|14A8CB| db $FF, $00, $8F, $70
|14A8CF| db $83 ; Copy past
|14A8D0| dw $024C
|14A8D2| db $46 ; Repeat word
|14A8D3| dw $00FF
|14A8D5| db $28 ; Repeat byte
|14A8D6| db $00
|14A8D7| db $07 ; Raw block
|14A8D8| db $33, $CC, $27, $D8, $6F, $90, $CF, $30
|14A8E0| db $43 ; Repeat word
|14A8E1| dw $609F
|14A8E3| db $03 ; Raw block
|14A8E4| db $3F, $C0, $7F, $80
|14A8E8| db $27 ; Repeat byte
|14A8E9| db $00
|14A8EA| db $43 ; Repeat word
|14A8EB| dw $00FF
|14A8ED| db $0B ; Raw block
|14A8EE| db $BF, $40, $CF, $30, $67, $98, $37, $C8
|14A8F6| db $33, $CC, $3B, $C4
|14A8FA| db $27 ; Repeat byte
|14A8FB| db $00
|14A8FC| db $01 ; Raw block
|14A8FD| db $D9, $26
|14A8FF| db $49 ; Repeat word
|14A900| dw $6699
|14A902| db $03 ; Raw block
|14A903| db $8C, $73, $CC, $33
|14A907| db $27 ; Repeat byte
|14A908| db $00
|14A909| db $01 ; Raw block
|14A90A| db $C7, $3F
|14A90C| db $43 ; Repeat word
|14A90D| dw $7F83
|14A90F| db $45 ; Repeat word
|14A910| dw $7F87
|14A912| db $03 ; Raw block
|14A913| db $83, $7F, $C3, $3F
|14A917| db $27 ; Repeat byte
|14A918| db $00
|14A919| db $17 ; Raw block
|14A91A| db $0F, $2F, $07, $27, $03, $23, $20, $30
|14A922| db $90, $9F, $C4, $C7, $E0, $E0, $F8, $F8
|14A92A| db $D0, $D8, $DC, $CF, $60, $38, $1F, $07
|14A932| db $E4, $2F ; EXT Repeat byte
|14A934| db $FF
|14A935| db $85 ; Copy past
|14A936| dw $0306
|14A938| db $09 ; Raw block
|14A939| db $DD, $22, $EE, $11, $F7, $08, $DB, $24
|14A941| db $ED, $12
|14A943| db $27 ; Repeat byte
|14A944| db $00
|14A945| db $47 ; Repeat word
|14A946| dw $04FB
|14A948| db $01 ; Raw block
|14A949| db $00, $FF
|14A94B| db $45 ; Repeat word
|14A94C| dw $20DF
|14A94E| db $23 ; Repeat byte
|14A94F| db $FB
|14A950| db $00 ; Raw block
|14A951| db $00
|14A952| db $22 ; Repeat byte
|14A953| db $DF
|14A954| db $09 ; Raw block
|14A955| db $E8, $17, $EC, $13, $EE, $11, $E6, $19
|14A95D| db $F2, $0D
|14A95F| db $43 ; Repeat word
|14A960| dw $07F8
|14A962| db $01 ; Raw block
|14A963| db $E8, $17
|14A965| db $27 ; Repeat byte
|14A966| db $00
|14A967| db $00 ; Raw block
|14A968| db $3F
|14A969| db $44 ; Repeat word
|14A96A| dw $7FFF
|14A96C| db $45 ; Repeat word
|14A96D| dw $FF78
|14A96F| db $03 ; Raw block
|14A970| db $FF, $7F, $8F, $7F
|14A974| db $27 ; Repeat byte
|14A975| db $00
|14A976| db $8F ; Copy past
|14A977| dw $01E0
|14A979| db $22 ; Repeat byte
|14A97A| db $01
|14A97B| db $94 ; Copy past
|14A97C| dw $01F3
|14A97E| db $22 ; Repeat byte
|14A97F| db $00
|14A980| db $84 ; Copy past
|14A981| dw $020B
|14A983| db $E0, $34 ; EXT Raw block
|14A985| db $10, $E8, $14, $EF, $FC, $07, $9C, $DB
|14A98D| db $6F, $AC, $57, $B7, $C8, $38, $68, $DF
|14A995| db $07, $00, $00, $20, $10, $08, $07, $00
|14A99D| db $1E, $1E, $03, $02, $47, $44, $7E, $79
|14A9A5| db $0C, $33, $A8, $B7, $E8, $F7, $C8, $F7
|14A9AD| db $FF, $FC, $B8, $80, $C0, $40, $00, $00
|14A9B5| db $8F, $F0, $8E, $F1, $87
|14A9BA| db $44 ; Repeat word
|14A9BB| dw $C7F8
|14A9BD| db $45 ; Repeat word
|14A9BE| dw $FCE3
|14A9C0| db $27 ; Repeat byte
|14A9C1| db $00
|14A9C2| db $43 ; Repeat word
|14A9C3| dw $00FF
|14A9C5| db $03 ; Raw block
|14A9C6| db $7F, $80, $2F, $D0
|14A9CA| db $47 ; Repeat word
|14A9CB| dw $C837
|14A9CD| db $27 ; Repeat byte
|14A9CE| db $00
|14A9CF| db $1C ; Raw block
|14A9D0| db $03, $FC, $FC, $83, $83, $7F, $DF, $3F
|14A9D8| db $CF, $3F, $9F, $7F, $81, $61, $60, $9F
|14A9E0| db $00, $83, $7C, $20, $30, $60, $3E, $1F
|14A9E8| db $FF, $1F, $1F, $E0, $E0
|14A9ED| db $22 ; Repeat byte
|14A9EE| db $FF
|14A9EF| db $0F ; Raw block
|14A9F0| db $F3, $FF, $1F, $1F, $10, $F1, $01, $FF
|14A9F8| db $1F, $E0, $1F, $00, $0C, $E0, $EE, $FE
|14AA00| db $48 ; Repeat word
|14AA01| dw $00FF
|14AA03| db $06 ; Raw block
|14AA04| db $1F, $FF, $7F, $FF, $FF, $CE, $FF
|14AA0B| db $23 ; Repeat byte
|14AA0C| db $00
|14AA0D| db $01 ; Raw block
|14AA0E| db $1F, $7F
|14AA10| db $83 ; Copy past
|14AA11| dw $00C0
|14AA13| db $06 ; Raw block
|14AA14| db $3F, $FF, $1F, $FF, $0F, $FF, $07
|14AA1B| db $45 ; Repeat word
|14AA1C| dw $00FF
|14AA1E| db $32 ; Repeat byte
|14AA1F| db $FF
|14AA20| db $44 ; Repeat word
|14AA21| dw $FF00
|14AA23| db $29 ; Repeat byte
|14AA24| db $FF
|14AA25| db $4E ; Repeat word
|14AA26| dw $FF00
|14AA28| db $27 ; Repeat byte
|14AA29| db $FF
|14AA2A| db $FF ; End of GFX 4F

;===================================================================================================

GFX_50:
|14AA2B| db $23 ; Repeat byte
|14AA2C| db $00
|14AA2D| db $05 ; Raw block
|14AA2E| db $7F, $80, $8C, $0B, $FB, $77
|14AA34| db $45 ; Repeat word
|14AA35| dw $6FF7
|14AA37| db $22 ; Repeat byte
|14AA38| db $00
|14AA39| db $00 ; Raw block
|14AA3A| db $70
|14AA3B| db $27 ; Repeat byte
|14AA3C| db $00
|14AA3D| db $05 ; Raw block
|14AA3E| db $03, $00, $04, $03, $0B, $07
|14AA44| db $45 ; Repeat word
|14AA45| dw $0F17
|14AA47| db $27 ; Repeat byte
|14AA48| db $00
|14AA49| db $0F ; Raw block
|14AA4A| db $7D, $83, $75, $BB, $AB, $5D, $94, $6F
|14AA52| db $8A, $77, $85, $7B, $FE, $01, $C1, $3E
|14AA5A| db $27 ; Repeat byte
|14AA5B| db $00
|14AA5C| db $17 ; Raw block
|14AA5D| db $E1, $1F, $87, $7F, $1C, $FF, $70, $FF
|14AA65| db $C1, $FE, $07, $F8, $1E, $E1, $78, $87
|14AA6D| db $1F, $7F, $FF, $FF, $FE, $F8, $E1, $87
|14AA75| db $4F ; Repeat word
|14AA76| dw $7F82
|14AA78| db $27 ; Repeat byte
|14AA79| db $00
|14AA7A| db $01 ; Raw block
|14AA7B| db $35, $DA
|14AA7D| db $47 ; Repeat word
|14AA7E| dw $D837
|14AA80| db $08 ; Raw block
|14AA81| db $2B, $DC, $35, $CE, $1A, $E7, $02, $00
|14AA89| db $07
|14AA8A| db $24 ; Repeat byte
|14AA8B| db $00
|14AA8C| db $10 ; Raw block
|14AA8D| db $80, $7E, $C1, $3F, $E1, $1F, $D1, $2F
|14AA95| db $C9, $37, $C5, $3B, $C3, $3D, $E0, $1F
|14AA9D| db $01
|14AA9E| db $26 ; Repeat byte
|14AA9F| db $00
|14AAA0| db $1C ; Raw block
|14AAA1| db $0F, $00, $19, $08, $31, $16, $65, $2A
|14AAA9| db $CD, $52, $B5, $22, $95, $22, $E5, $42
|14AAB1| db $00, $06, $08, $10, $20, $40, $40, $00
|14AAB9| db $3F, $00, $40, $3F, $BF
|14AABE| db $46 ; Repeat word
|14AABF| dw $FF7F
|14AAC1| db $02 ; Raw block
|14AAC2| db $C0, $40, $80
|14AAC5| db $26 ; Repeat byte
|14AAC6| db $00
|14AAC7| db $07 ; Raw block
|14AAC8| db $3F, $7F, $30, $F1, $22, $E2, $27, $E7
|14AAD0| db $43 ; Repeat word
|14AAD1| dw $EF2F
|14AAD3| db $43 ; Repeat word
|14AAD4| dw $FF3E
|14AAD6| db $06 ; Raw block
|14AAD7| db $3C, $FF, $0E, $1D, $18, $10, $10
|14AADE| db $3A ; Repeat byte
|14AADF| db $00
|14AAE0| db $05 ; Raw block
|14AAE1| db $44, $44, $23, $23, $90, $90
|14AAE7| db $43 ; Repeat word
|14AAE8| dw $FF00
|14AAEA| db $01 ; Raw block
|14AAEB| db $FF, $00
|14AAED| db $43 ; Repeat word
|14AAEE| dw $0CFB
|14AAF0| db $02 ; Raw block
|14AAF1| db $BB, $DC, $6F
|14AAF4| db $24 ; Repeat byte
|14AAF5| db $00
|14AAF6| db $43 ; Repeat word
|14AAF7| dw $9F80
|14AAF9| db $03 ; Raw block
|14AAFA| db $7F, $E0, $9F, $60
|14AAFE| db $43 ; Repeat word
|14AAFF| dw $9F80
|14AB01| db $02 ; Raw block
|14AB02| db $7F, $E0, $9F
|14AB05| db $22 ; Repeat byte
|14AB06| db $60
|14AB07| db $01 ; Raw block
|14AB08| db $00, $00
|14AB0A| db $83 ; Copy past
|14AB0B| dw $0130
|14AB0D| db $11 ; Raw block
|14AB0E| db $EF, $60, $A3, $60, $F9, $38, $79, $38
|14AB16| db $59, $38, $79, $18, $2C, $1C, $36, $0E
|14AB1E| db $13, $1D
|14AB20| db $23 ; Repeat byte
|14AB21| db $06
|14AB22| db $01 ; Raw block
|14AB23| db $03, $01
|14AB25| db $43 ; Repeat word
|14AB26| dw $00FF
|14AB28| db $E0, $2F ; EXT Raw block
|14AB2A| db $FE, $00, $FC, $FC, $15, $55, $B3, $FB
|14AB32| db $F6, $07, $EF, $07, $FF, $FE, $01, $BB
|14AB3A| db $BB, $07, $0E, $16, $AF, $50, $7C, $83
|14AB42| db $18, $E4, $B0, $48, $6B, $98, $6D, $9C
|14AB4A| db $AE, $5A, $6F, $99, $00, $00, $03, $07
|14AB52| db $07, $03, $01, $00, $F7, $6F, $F6, $6E
|14AB5A| db $43 ; Repeat word
|14AB5B| dw $6CF4
|14AB5D| db $03 ; Raw block
|14AB5E| db $F1, $69, $F2, $6B
|14AB62| db $43 ; Repeat word
|14AB63| dw $6FF4
|14AB65| db $0B ; Raw block
|14AB66| db $00, $01, $03, $03, $06, $04, $00, $00
|14AB6E| db $17, $0F, $16, $0E
|14AB72| db $43 ; Repeat word
|14AB73| dw $0C14
|14AB75| db $03 ; Raw block
|14AB76| db $11, $09, $12, $0B
|14AB7A| db $43 ; Repeat word
|14AB7B| dw $0F14
|14AB7D| db $87 ; Copy past
|14AB7E| dw $0190
|14AB80| db $E0, $3E ; EXT Raw block
|14AB82| db $81, $7E, $87, $78, $8E, $71, $D8, $27
|14AB8A| db $F1, $0F, $E7, $1F, $C4, $3F, $C0, $3F
|14AB92| db $7E, $78, $71, $27, $0F, $1F, $3F, $3F
|14AB9A| db $C2, $3F, $0E, $FF, $38, $FF, $E1, $FE
|14ABA2| db $83, $FC, $0F, $F0, $3C, $C3, $F0, $0C
|14ABAA| db $3F, $FF, $FF, $FE, $FC, $F0, $C0, $03
|14ABB2| db $82, $7F, $92, $7F, $CA, $3F, $66, $1F
|14ABBA| db $33, $0F, $18, $07, $0C, $03, $07
|14ABC1| db $28 ; Repeat byte
|14ABC2| db $00
|14ABC3| db $08 ; Raw block
|14ABC4| db $0D, $F3, $06, $F9, $03, $FC, $01, $FE
|14ABCC| db $FF
|14ABCD| db $44 ; Repeat word
|14ABCE| dw $00FF
|14ABD0| db $00 ; Raw block
|14ABD1| db $FF
|14ABD2| db $28 ; Repeat byte
|14ABD3| db $00
|14ABD4| db $85 ; Copy past
|14ABD5| dw $0096
|14ABD7| db $09 ; Raw block
|14ABD8| db $83, $7D, $60, $FF, $71, $FF, $59, $DF
|14ABE0| db $D5, $57
|14ABE2| db $25 ; Repeat byte
|14ABE3| db $00
|14ABE4| db $11 ; Raw block
|14ABE5| db $20, $28, $A7, $40, $A7, $42, $AF, $44
|14ABED| db $BD, $4A, $FD, $12, $F5, $42, $A7, $42
|14ABF5| db $AD, $46
|14ABF7| db $27 ; Repeat byte
|14ABF8| db $00
|14ABF9| db $07 ; Raw block
|14ABFA| db $9F, $1F, $A0, $3F, $C7, $78, $CC, $73
|14AC02| db $43 ; Repeat word
|14AC03| dw $74CB
|14AC05| db $05 ; Raw block
|14AC06| db $CF, $73, $7C, $0C, $60, $40
|14AC0C| db $23 ; Repeat byte
|14AC0D| db $00
|14AC0E| db $02 ; Raw block
|14AC0F| db $03, $0C, $BC
|14AC12| db $4E ; Repeat word
|14AC13| dw $B87F
|14AC15| db $3F ; Repeat byte
|14AC16| db $00
|14AC17| db $05 ; Raw block
|14AC18| db $80, $12, $F3, $7F, $FF, $00
|14AC1E| db $43 ; Repeat word
|14AC1F| dw $0CFB
|14AC21| db $06 ; Raw block
|14AC22| db $D2, $12, $C0, $BF, $FF, $80, $6D
|14AC29| db $23 ; Repeat byte
|14AC2A| db $00
|14AC2B| db $02 ; Raw block
|14AC2C| db $2D, $80, $80
|14AC2F| db $23 ; Repeat byte
|14AC30| db $FF
|14AC31| db $83 ; Copy past
|14AC32| dw $0110
|14AC34| db $23 ; Repeat byte
|14AC35| db $FF
|14AC36| db $02 ; Raw block
|14AC37| db $00, $FF, $FF
|14AC3A| db $28 ; Repeat byte
|14AC3B| db $00
|14AC3C| db $07 ; Raw block
|14AC3D| db $53, $2F, $89, $17, $E4, $4B, $B2, $5D
|14AC45| db $43 ; Repeat word
|14AC46| dw $5EB1
|14AC48| db $06 ; Raw block
|14AC49| db $C7, $38, $79, $00, $00, $60, $10
|14AC50| db $24 ; Repeat byte
|14AC51| db $00
|14AC52| db $0A ; Raw block
|14AC53| db $FB, $8C, $D4, $94, $FF, $80, $FB, $4C
|14AC5B| db $7F, $20, $3F
|14AC5E| db $24 ; Repeat byte
|14AC5F| db $00
|14AC60| db $11 ; Raw block
|14AC61| db $80, $AB, $80, $C0, $61, $3F, $00, $00
|14AC69| db $B7, $4D, $FA, $27, $FD, $62, $DF, $30
|14AC71| db $6F, $98
|14AC73| db $43 ; Repeat word
|14AC74| dw $00FF
|14AC76| db $01 ; Raw block
|14AC77| db $00, $FF
|14AC79| db $27 ; Repeat byte
|14AC7A| db $00
|14AC7B| db $4B ; Repeat word
|14AC7C| dw $6FF4
|14AC7E| db $03 ; Raw block
|14AC7F| db $EC, $77, $F7, $78
|14AC83| db $27 ; Repeat byte
|14AC84| db $00
|14AC85| db $43 ; Repeat word
|14AC86| dw $0F14
|14AC88| db $01 ; Raw block
|14AC89| db $74, $0F
|14AC8B| db $45 ; Repeat word
|14AC8C| dw $6FF4
|14AC8E| db $83 ; Copy past
|14AC8F| dw $030C
|14AC91| db $27 ; Repeat byte
|14AC92| db $00
|14AC93| db $14 ; Raw block
|14AC94| db $83, $7C, $87, $78, $8C, $73, $D8, $24
|14AC9C| db $F1, $0D, $E1, $15, $D1, $35, $B1, $75
|14ACA4| db $7C, $78, $70, $23, $02
|14ACA9| db $22 ; Repeat byte
|14ACAA| db $0A
|14ACAB| db $05 ; Raw block
|14ACAC| db $C3, $33, $0F, $CF, $3F, $3F
|14ACB2| db $27 ; Repeat byte
|14ACB3| db $FF
|14ACB4| db $04 ; Raw block
|14ACB5| db $FE, $FE, $0C, $30, $C0
|14ACBA| db $23 ; Repeat byte
|14ACBB| db $00
|14ACBC| db $00 ; Raw block
|14ACBD| db $01
|14ACBE| db $4D ; Repeat word
|14ACBF| dw $4F0F
|14ACC1| db $01 ; Raw block
|14ACC2| db $00, $40
|14ACC4| db $26 ; Repeat byte
|14ACC5| db $B0
|14ACC6| db $14 ; Raw block
|14ACC7| db $BF, $CF, $A0, $CF, $A8, $D7, $B4, $C8
|14ACCF| db $B8, $E7, $DF, $F0, $EF, $FF, $F0, $00
|14ACD7| db $00, $17, $13, $08, $07
|14ACDC| db $22 ; Repeat byte
|14ACDD| db $00
|14ACDE| db $04 ; Raw block
|14ACDF| db $FF, $DB, $5B, $DC, $5C
|14ACE4| db $43 ; Repeat word
|14ACE5| dw $5FDF
|14ACE7| db $0C ; Raw block
|14ACE8| db $C0, $40, $BF, $7F, $82, $7D, $FD, $00
|14ACF0| db $24, $23, $20, $20, $3F
|14ACF5| db $22 ; Repeat byte
|14ACF6| db $00
|14ACF7| db $0A ; Raw block
|14ACF8| db $FB, $0C, $B6, $58, $AC, $50, $B8, $40
|14AD00| db $B0, $40, $E0
|14AD03| db $2C ; Repeat byte
|14AD04| db $00
|14AD05| db $0F ; Raw block
|14AD06| db $9C, $63, $C6, $79, $C3, $7C, $B8, $3F
|14AD0E| db $9F, $5F, $C4, $3C, $F8, $87, $FF, $F8
|14AD16| db $22 ; Repeat byte
|14AD17| db $00
|14AD18| db $0E ; Raw block
|14AD19| db $40, $20, $03, $80, $F8, $70, $7F, $63
|14AD21| db $FC, $87, $F8, $8F, $F0, $1F, $E0
|14AD28| db $43 ; Repeat word
|14AD29| dw $609F
|14AD2B| db $02 ; Raw block
|14AD2C| db $93, $6C, $80
|14AD2F| db $28 ; Repeat byte
|14AD30| db $00
|14AD31| db $E0, $25 ; EXT Raw block
|14AD33| db $1C, $00, $22, $10, $29, $18, $25, $1C
|14AD3B| db $22, $1D, $35, $0B, $1A, $06, $00, $00
|14AD43| db $0C, $06, $02, $00, $00, $01, $03, $00
|14AD4B| db $1C, $03, $67, $1F, $90, $70, $77, $F0
|14AD53| db $C7, $C0, $0F, $00, $FC, $03
|14AD59| db $22 ; Repeat byte
|14AD5A| db $00
|14AD5B| db $0B ; Raw block
|14AD5C| db $0F, $08, $3B, $F7, $0F, $FF, $00, $CF
|14AD64| db $CF, $30, $08, $7F
|14AD68| db $46 ; Repeat word
|14AD69| dw $FF00
|14AD6B| db $06 ; Raw block
|14AD6C| db $3F, $C0, $00, $30, $C7, $B0, $7F
|14AD73| db $23 ; Repeat byte
|14AD74| db $FF
|14AD75| db $04 ; Raw block
|14AD76| db $00, $C7, $C7, $38, $44
|14AD7B| db $49 ; Repeat word
|14AD7C| dw $00FF
|14AD7E| db $03 ; Raw block
|14AD7F| db $00, $38, $83, $38
|14AD83| db $24 ; Repeat byte
|14AD84| db $FF
|14AD85| db $48 ; Repeat word
|14AD86| dw $FF7F
|14AD88| db $05 ; Raw block
|14AD89| db $C0, $40, $AC, $53, $FF, $2C
|14AD8F| db $24 ; Repeat byte
|14AD90| db $00
|14AD91| db $06 ; Raw block
|14AD92| db $3F, $00, $2C, $FF, $FF, $C0, $C0
|14AD99| db $22 ; Repeat byte
|14AD9A| db $3F
|14AD9B| db $0B ; Raw block
|14AD9C| db $40, $30, $4F, $2F, $5F, $26, $D9, $FF
|14ADA4| db $26, $00, $3F, $C0
|14ADA8| db $22 ; Repeat byte
|14ADA9| db $80
|14ADAA| db $13 ; Raw block
|14ADAB| db $00, $26, $0E, $F1, $39, $C7, $E7, $1F
|14ADB3| db $9F, $7F, $7F, $FF, $FE, $FE, $F8, $F8
|14ADBB| db $E3, $E3, $F0, $C0
|14ADBF| db $22 ; Repeat byte
|14ADC0| db $00
|14ADC1| db $02 ; Raw block
|14ADC2| db $01, $07, $1C
|14ADC5| db $87 ; Copy past
|14ADC6| dw $0488
|14ADC8| db $04 ; Raw block
|14ADC9| db $8C, $8F, $30, $3F, $C0
|14ADCE| db $43 ; Repeat word
|14ADCF| dw $00FF
|14ADD1| db $07 ; Raw block
|14ADD2| db $01, $07, $1C, $70, $C0, $00, $00, $71
|14ADDA| db $48 ; Repeat word
|14ADDB| dw $F1F5
|14ADDD| db $44 ; Repeat word
|14ADDE| dw $F4F0
|14ADE0| db $00 ; Raw block
|14ADE1| db $F2
|14ADE2| db $24 ; Repeat byte
|14ADE3| db $0A
|14ADE4| db $18 ; Raw block
|14ADE5| db $0B, $0B, $0D, $FC, $FC, $F0, $F0, $C3
|14ADED| db $C3, $8F, $8F, $3F, $3F, $7F, $7F, $FF
|14ADF5| db $FF, $FC, $FF, $03, $0F, $3C, $70, $C0
|14ADFD| db $80
|14ADFE| db $22 ; Repeat byte
|14ADFF| db $00
|14AE00| db $00 ; Raw block
|14AE01| db $40
|14AE02| db $43 ; Repeat word
|14AE03| dw $5F1F
|14AE05| db $0E ; Raw block
|14AE06| db $0F, $6F, $90, $BF, $D0, $EF, $0F, $F0
|14AE0E| db $3F, $C0, $BF, $A0, $A0, $90, $40
|14AE15| db $24 ; Repeat byte
|14AE16| db $00
|14AE17| db $25 ; Repeat byte
|14AE18| db $FF
|14AE19| db $43 ; Repeat word
|14AE1A| dw $FF00
|14AE1C| db $44 ; Repeat word
|14AE1D| dw $00FF
|14AE1F| db $26 ; Repeat byte
|14AE20| db $00
|14AE21| db $83 ; Copy past
|14AE22| dw $004C
|14AE24| db $03 ; Raw block
|14AE25| db $C0, $FF, $03, $FC
|14AE29| db $87 ; Copy past
|14AE2A| dw $0480
|14AE2C| db $22 ; Repeat byte
|14AE2D| db $FF
|14AE2E| db $00 ; Raw block
|14AE2F| db $FC
|14AE30| db $83 ; Copy past
|14AE31| dw $0490
|14AE33| db $4F ; Repeat word
|14AE34| dw $7CFB
|14AE36| db $27 ; Repeat byte
|14AE37| db $00
|14AE38| db $4D ; Repeat word
|14AE39| dw $7CFB
|14AE3B| db $01 ; Raw block
|14AE3C| db $F8, $7F
|14AE3E| db $27 ; Repeat byte
|14AE3F| db $00
|14AE40| db $0F ; Raw block
|14AE41| db $D9, $26, $4C, $B3, $66, $99, $33, $CC
|14AE49| db $19, $E6, $0D, $F3, $03, $FF, $07, $FF
|14AE51| db $27 ; Repeat byte
|14AE52| db $00
|14AE53| db $0F ; Raw block
|14AE54| db $35, $0C, $2D, $1C, $7D, $1C, $59, $38
|14AE5C| db $73, $32, $E7, $20, $8F, $40, $CF, $40
|14AE64| db $22 ; Repeat byte
|14AE65| db $02
|14AE66| db $04 ; Raw block
|14AE67| db $06, $0C, $19, $37, $37
|14AE6C| db $4F ; Repeat word
|14AE6D| dw $00FF
|14AE6F| db $27 ; Repeat byte
|14AE70| db $FF
|14AE71| db $09 ; Raw block
|14AE72| db $0F, $F0, $C3, $3C, $E1, $1E, $F0, $0F
|14AE7A| db $FB, $04
|14AE7C| db $43 ; Repeat word
|14AE7D| dw $02FE
|14AE7F| db $01 ; Raw block
|14AE80| db $FF, $01
|14AE82| db $23 ; Repeat byte
|14AE83| db $FF
|14AE84| db $E0, $20 ; EXT Raw block
|14AE86| db $FC, $F9, $F9, $FC, $FF, $00, $FE, $01
|14AE8E| db $FC, $02, $F8, $04, $F1, $09, $03, $03
|14AE96| db $7B, $7B, $2E, $3F, $FE, $FC, $F9, $F3
|14AE9E| db $06, $FC, $84, $C0, $C0, $3F, $FF, $00
|14AEA6| db $FF
|14AEA7| db $46 ; Repeat word
|14AEA8| dw $80FF
|14AEAA| db $83 ; Copy past
|14AEAB| dw $02F4
|14AEAD| db $27 ; Repeat byte
|14AEAE| db $00
|14AEAF| db $49 ; Repeat word
|14AEB0| dw $00FF
|14AEB2| db $05 ; Raw block
|14AEB3| db $F0, $0F, $FF, $00, $C0, $3F
|14AEB9| db $27 ; Repeat byte
|14AEBA| db $00
|14AEBB| db $FF ; End of GFX 50

;===================================================================================================

GFX_51:
|14AEBC| db $E0, $21 ; EXT Raw block
|14AEBE| db $0F, $00, $1C, $04, $3F, $0F, $77, $17
|14AEC6| db $E0, $20, $C7, $47, $CD, $4E, $BB, $7C
|14AECE| db $00, $03, $07, $0F, $1F, $38, $30, $00
|14AED6| db $FF, $00, $07, $07, $F1, $F1, $7C, $7C
|14AEDE| db $C0, $C0
|14AEE0| db $22 ; Repeat byte
|14AEE1| db $FF
|14AEE2| db $07 ; Raw block
|14AEE3| db $00, $BD, $7E, $00, $F8, $FF, $FF, $3F
|14AEEB| db $22 ; Repeat byte
|14AEEC| db $00
|14AEED| db $17 ; Raw block
|14AEEE| db $BF, $40, $DD, $22, $ED, $12, $F0, $0F
|14AEF6| db $B7, $48, $97, $68, $C7, $38, $E7, $18
|14AEFE| db $40, $22, $12, $0F, $4F, $6F, $3F, $1F
|14AF06| db $43 ; Repeat word
|14AF07| dw $5FF7
|14AF09| db $1F ; Raw block
|14AF0A| db $F3, $5B, $F4, $5C, $B3, $5F, $B8, $6F
|14AF12| db $DF, $37, $AF, $58, $20, $20, $24, $23
|14AF1A| db $20, $10, $08, $07, $E0, $7F, $DF, $70
|14AF22| db $BF, $67, $F8, $4F, $F0, $5F, $F0, $5C
|14AF2A| db $43 ; Repeat word
|14AF2B| dw $5BF3
|14AF2D| db $1F ; Raw block
|14AF2E| db $00, $0F, $18, $30, $20, $23, $24, $24
|14AF36| db $4E, $34, $4F, $34, $36, $04, $27, $04
|14AF3E| db $4D, $04, $9A, $0E, $95, $1B, $EC, $73
|14AF46| db $03, $03, $0B, $1B, $3B, $71, $60, $00
|14AF4E| db $43 ; Repeat word
|14AF4F| dw $FE7E
|14AF51| db $0D ; Raw block
|14AF52| db $0F, $FF, $07, $FF, $42, $BF, $E0, $1F
|14AF5A| db $F0, $0F, $FF, $00, $01, $01
|14AF60| db $23 ; Repeat byte
|14AF61| db $00
|14AF62| db $01 ; Raw block
|14AF63| db $C0, $E0
|14AF65| db $43 ; Repeat word
|14AF66| dw $FFFE
|14AF68| db $0A ; Raw block
|14AF69| db $FC, $FF, $78, $FF, $32, $FD, $07, $F8
|14AF71| db $1F, $E0, $FF
|14AF74| db $26 ; Repeat byte
|14AF75| db $00
|14AF76| db $0B ; Raw block
|14AF77| db $03, $0F, $3D, $3E, $25, $3E, $29, $36
|14AF7F| db $4D, $72, $47, $78
|14AF83| db $43 ; Repeat word
|14AF84| dw $7D62
|14AF86| db $01 ; Raw block
|14AF87| db $22, $3D
|14AF89| db $22 ; Repeat byte
|14AF8A| db $C0
|14AF8B| db $23 ; Repeat byte
|14AF8C| db $80
|14AF8D| db $0A ; Raw block
|14AF8E| db $C0, $E6, $65, $E7, $66, $E3, $63, $F1
|14AF96| db $71, $F0, $70
|14AF99| db $45 ; Repeat word
|14AF9A| dw $78F8
|14AF9C| db $04 ; Raw block
|14AF9D| db $18, $18, $1C, $0E, $0F
|14AFA2| db $22 ; Repeat byte
|14AFA3| db $07
|14AFA4| db $29 ; Repeat byte
|14AFA5| db $00
|14AFA6| db $04 ; Raw block
|14AFA7| db $03, $03, $1F, $1F, $F3
|14AFAC| db $25 ; Repeat byte
|14AFAD| db $FF
|14AFAE| db $00 ; Raw block
|14AFAF| db $FC
|14AFB0| db $46 ; Repeat word
|14AFB1| dw $00E0
|14AFB3| db $01 ; Raw block
|14AFB4| db $1F, $FF
|14AFB6| db $45 ; Repeat word
|14AFB7| dw $E000
|14AFB9| db $05 ; Raw block
|14AFBA| db $1F, $FF, $00, $1F, $1F, $00
|14AFC0| db $83 ; Copy past
|14AFC1| dw $0117
|14AFC3| db $04 ; Raw block
|14AFC4| db $00, $80, $80, $00, $00
|14AFC9| db $23 ; Repeat byte
|14AFCA| db $0C
|14AFCB| db $0B ; Raw block
|14AFCC| db $00, $00, $10, $10, $32, $32, $FF, $FF
|14AFD4| db $7F, $FF, $F3, $F3
|14AFD8| db $23 ; Repeat byte
|14AFD9| db $FF
|14AFDA| db $2D ; Repeat byte
|14AFDB| db $00
|14AFDC| db $28 ; Repeat byte
|14AFDD| db $FF
|14AFDE| db $10 ; Raw block
|14AFDF| db $00, $03, $00, $0D, $03, $17, $0E, $2F
|14AFE7| db $1C, $5B, $39, $75, $36, $A6, $65, $E6
|14AFEF| db $65
|14AFF0| db $22 ; Repeat byte
|14AFF1| db $00
|14AFF2| db $05 ; Raw block
|14AFF3| db $01, $04, $08, $18, $18, $FF
|14AFF9| db $45 ; Repeat word
|14AFFA| dw $8FFF
|14AFFC| db $28 ; Repeat byte
|14AFFD| db $FF
|14AFFE| db $27 ; Repeat byte
|14AFFF| db $00
|14B000| db $0F ; Raw block
|14B001| db $FF, $70, $FC, $64, $FF, $4F, $F7, $17
|14B009| db $E0, $20, $87, $47, $8D, $4E, $9B, $5C
|14B011| db $86 ; Copy past
|14B012| dw $0010
|14B014| db $00 ; Raw block
|14B015| db $20
|14B016| db $43 ; Repeat word
|14B017| dw $00FF
|14B019| db $43 ; Repeat word
|14B01A| dw $44BB
|14B01C| db $0A ; Raw block
|14B01D| db $7D, $82, $7C, $83, $21, $DE, $8B, $74
|14B025| db $00, $48, $44
|14B028| db $24 ; Repeat byte
|14B029| db $FF
|14B02A| db $0B ; Raw block
|14B02B| db $E0, $FF, $DF, $F0, $BF, $E7, $78, $CF
|14B033| db $70, $DF, $F0, $5C
|14B037| db $43 ; Repeat word
|14B038| dw $5BF3
|14B03A| db $02 ; Raw block
|14B03B| db $E0, $CF, $98
|14B03E| db $84 ; Copy past
|14B03F| dw $0073
|14B041| db $10 ; Raw block
|14B042| db $B8, $47, $BF, $58, $AE, $5C, $D2, $2C
|14B04A| db $EE, $11, $FB, $44, $FD, $C3, $FF, $E8
|14B052| db $00
|14B053| db $83 ; Copy past
|14B054| dw $009F
|14B056| db $05 ; Raw block
|14B057| db $40, $C0, $E8, $F3, $5B, $E3
|14B05D| db $46 ; Repeat word
|14B05E| dw $D34B
|14B060| db $01 ; Raw block
|14B061| db $E3, $4B
|14B063| db $43 ; Repeat word
|14B064| dw $5BF3
|14B066| db $00 ; Raw block
|14B067| db $24
|14B068| db $24 ; Repeat byte
|14B069| db $34
|14B06A| db $01 ; Raw block
|14B06B| db $24, $24
|14B06D| db $43 ; Repeat word
|14B06E| dw $639C
|14B070| db $0B ; Raw block
|14B071| db $CE, $31, $67, $18, $F3, $2C, $B3, $2C
|14B079| db $BA, $0D, $B7, $1A
|14B07D| db $24 ; Repeat byte
|14B07E| db $00
|14B07F| db $22 ; Repeat byte
|14B080| db $40
|14B081| db $13 ; Raw block
|14B082| db $A1, $69, $94, $60, $9A, $68, $DD, $2C
|14B08A| db $FF, $0F, $93, $6F, $9B, $77, $CC, $3B
|14B092| db $16, $0F, $07, $03
|14B096| db $23 ; Repeat byte
|14B097| db $00
|14B098| db $07 ; Raw block
|14B099| db $40, $BF, $BF, $C0, $10, $10, $EF, $10
|14B0A1| db $43 ; Repeat word
|14B0A2| dw $EFFF
|14B0A4| db $07 ; Raw block
|14B0A5| db $34, $EF, $10, $EF, $00, $00, $EF, $EF
|14B0AD| db $23 ; Repeat byte
|14B0AE| db $00
|14B0AF| db $01 ; Raw block
|14B0B0| db $FF, $00
|14B0B2| db $43 ; Repeat word
|14B0B3| dw $F708
|14B0B5| db $45 ; Repeat word
|14B0B6| dw $07F8
|14B0B8| db $02 ; Raw block
|14B0B9| db $FC, $03, $FF
|14B0BC| db $28 ; Repeat byte
|14B0BD| db $00
|14B0BE| db $43 ; Repeat word
|14B0BF| dw $78F8
|14B0C1| db $4B ; Repeat word
|14B0C2| dw $7CFC
|14B0C4| db $01 ; Raw block
|14B0C5| db $07, $07
|14B0C7| db $25 ; Repeat byte
|14B0C8| db $03
|14B0C9| db $04 ; Raw block
|14B0CA| db $C7, $FF, $0F, $FF, $3F
|14B0CF| db $22 ; Repeat byte
|14B0D0| db $FF
|14B0D1| db $07 ; Raw block
|14B0D2| db $FE, $FE, $FC, $FC, $F0, $F0, $C0, $C0
|14B0DA| db $23 ; Repeat byte
|14B0DB| db $00
|14B0DC| db $03 ; Raw block
|14B0DD| db $01, $03, $0F, $3F
|14B0E1| db $24 ; Repeat byte
|14B0E2| db $00
|14B0E3| db $01 ; Raw block
|14B0E4| db $FF, $FF
|14B0E6| db $25 ; Repeat byte
|14B0E7| db $00
|14B0E8| db $01 ; Raw block
|14B0E9| db $FF, $FF
|14B0EB| db $84 ; Copy past
|14B0EC| dw $028C
|14B0EE| db $83 ; Copy past
|14B0EF| dw $0136
|14B0F1| db $05 ; Raw block
|14B0F2| db $C1, $C1, $C8, $C8, $8C, $8C
|14B0F8| db $23 ; Repeat byte
|14B0F9| db $80
|14B0FA| db $03 ; Raw block
|14B0FB| db $C2, $C2, $DB, $DB
|14B0FF| db $22 ; Repeat byte
|14B100| db $FF
|14B101| db $01 ; Raw block
|14B102| db $F7, $F3
|14B104| db $24 ; Repeat byte
|14B105| db $FF
|14B106| db $23 ; Repeat byte
|14B107| db $80
|14B108| db $05 ; Raw block
|14B109| db $98, $98, $90, $90, $82, $82
|14B10F| db $23 ; Repeat byte
|14B110| db $80
|14B111| db $1C ; Raw block
|14B112| db $FF, $FF, $7F, $7F, $67, $6F, $7D, $7F
|14B11A| db $7F, $00, $C8, $38, $89, $79, $8B, $7B
|14B122| db $88, $78, $A8, $58, $EA, $1A, $FE, $0E
|14B12A| db $FF, $0F, $07, $06, $04
|14B12F| db $23 ; Repeat byte
|14B130| db $07
|14B131| db $00 ; Raw block
|14B132| db $0F
|14B133| db $4F ; Repeat word
|14B134| dw $3FDF
|14B136| db $27 ; Repeat byte
|14B137| db $00
|14B138| db $07 ; Raw block
|14B139| db $BB, $44, $D8, $27, $E3, $1C, $F7, $08
|14B141| db $43 ; Repeat word
|14B142| dw $00FF
|14B144| db $06 ; Raw block
|14B145| db $70, $0F, $3F, $00, $4F, $2F, $1F
|14B14C| db $83 ; Copy past
|14B14D| dw $0044
|14B14F| db $04 ; Raw block
|14B150| db $00, $FF, $3C, $FF, $00
|14B155| db $43 ; Repeat word
|14B156| dw $8100
|14B158| db $06 ; Raw block
|14B159| db $7E, $FF, $FF, $7E, $FF, $3C, $FF
|14B160| db $22 ; Repeat byte
|14B161| db $00
|14B162| db $22 ; Repeat byte
|14B163| db $7E
|14B164| db $22 ; Repeat byte
|14B165| db $00
|14B166| db $43 ; Repeat word
|14B167| dw $7E81
|14B169| db $43 ; Repeat word
|14B16A| dw $8100
|14B16C| db $86 ; Copy past
|14B16D| dw $0320
|14B16F| db $22 ; Repeat byte
|14B170| db $00
|14B171| db $22 ; Repeat byte
|14B172| db $7E
|14B173| db $22 ; Repeat byte
|14B174| db $00
|14B175| db $0B ; Raw block
|14B176| db $BB, $44, $7B, $84, $38, $C7, $93, $6C
|14B17E| db $C7, $38, $CF, $30
|14B182| db $83 ; Copy past
|14B183| dw $028C
|14B185| db $26 ; Repeat byte
|14B186| db $FF
|14B187| db $15 ; Raw block
|14B188| db $00, $E1, $49, $A8, $4C, $B4, $67, $DB
|14B190| db $33, $EF, $18, $F7, $0F, $98, $67, $EF
|14B198| db $70, $36, $33, $18, $0C, $07
|14B19E| db $22 ; Repeat byte
|14B19F| db $00
|14B1A0| db $0F ; Raw block
|14B1A1| db $AF, $12, $AE, $13, $AB, $15, $AB, $16
|14B1A9| db $9A, $26, $A9, $37, $E4, $4B, $D3, $44
|14B1B1| db $23 ; Repeat byte
|14B1B2| db $40
|14B1B3| db $1F ; Raw block
|14B1B4| db $41, $40, $30, $38, $E7, $1C, $F1, $0F
|14B1BC| db $6A, $95, $36, $C9, $53, $EC, $EE, $F1
|14B1C4| db $E3, $FC, $FC, $FF, $00, $00, $80, $C0
|14B1CC| db $E0, $F0, $FC, $FF, $FF, $00, $FE, $FF
|14B1D4| db $43 ; Repeat word
|14B1D5| dw $FE01
|14B1D7| db $07 ; Raw block
|14B1D8| db $FF, $00, $38, $C7, $F9, $16, $FF, $B9
|14B1E0| db $25 ; Repeat byte
|14B1E1| db $00
|14B1E2| db $04 ; Raw block
|14B1E3| db $10, $B9, $FD, $02, $81
|14B1E8| db $45 ; Repeat word
|14B1E9| dw $FF7E
|14B1EB| db $05 ; Raw block
|14B1EC| db $26, $7F, $02, $27, $00, $03
|14B1F2| db $28 ; Repeat byte
|14B1F3| db $00
|14B1F4| db $09 ; Raw block
|14B1F5| db $F3, $70, $F6, $70, $F7, $72, $E3, $65
|14B1FD| db $E5, $62
|14B1FF| db $43 ; Repeat word
|14B200| dw $63E4
|14B202| db $04 ; Raw block
|14B203| db $E6, $65, $0C, $0B, $09
|14B208| db $24 ; Repeat byte
|14B209| db $18
|14B20A| db $05 ; Raw block
|14B20B| db $BD, $7E, $DB, $3C, $BD, $42
|14B211| db $49 ; Repeat word
|14B212| dw $C342
|14B214| db $22 ; Repeat byte
|14B215| db $00
|14B216| db $24 ; Repeat byte
|14B217| db $7C
|14B218| db $45 ; Repeat word
|14B219| dw $7E81
|14B21B| db $49 ; Repeat word
|14B21C| dw $C342
|14B21E| db $22 ; Repeat byte
|14B21F| db $00
|14B220| db $24 ; Repeat byte
|14B221| db $7C
|14B222| db $23 ; Repeat byte
|14B223| db $FF
|14B224| db $00 ; Raw block
|14B225| db $E0
|14B226| db $4A ; Repeat word
|14B227| dw $C0FF
|14B229| db $27 ; Repeat byte
|14B22A| db $00
|14B22B| db $06 ; Raw block
|14B22C| db $C7, $38, $F9, $06, $80, $7F, $84
|14B233| db $48 ; Repeat word
|14B234| dw $FC7D
|14B236| db $22 ; Repeat byte
|14B237| db $00
|14B238| db $24 ; Repeat byte
|14B239| db $02
|14B23A| db $03 ; Raw block
|14B23B| db $01, $FE, $03, $FC
|14B23F| db $43 ; Repeat word
|14B240| dw $FD03
|14B242| db $07 ; Raw block
|14B243| db $06, $F8, $0E, $F2, $3D, $C5, $F3, $13
|14B24B| db $23 ; Repeat byte
|14B24C| db $00
|14B24D| db $03 ; Raw block
|14B24E| db $01, $01, $02, $0C
|14B252| db $47 ; Repeat word
|14B253| dw $FF00
|14B255| db $83 ; Copy past
|14B256| dw $00B2
|14B258| db $03 ; Raw block
|14B259| db $78, $88, $E7, $27
|14B25D| db $25 ; Repeat byte
|14B25E| db $00
|14B25F| db $01 ; Raw block
|14B260| db $07, $18
|14B262| db $83 ; Copy past
|14B263| dw $0150
|14B265| db $07 ; Raw block
|14B266| db $14, $0C, $20, $10, $48, $20, $73, $23
|14B26E| db $43 ; Repeat word
|14B26F| dw $43E3
|14B271| db $83 ; Copy past
|14B272| dw $00BC
|14B274| db $1B ; Raw block
|14B275| db $1F, $1C, $3C, $3C, $FF, $00, $FB, $FF
|14B27D| db $00, $04, $09, $0D, $7B, $7F, $DF, $E0
|14B285| db $B7, $CF, $68, $98, $00, $00, $FB, $F2
|14B28D| db $80, $00, $00, $07
|14B291| db $83 ; Copy past
|14B292| dw $03A8
|14B294| db $0F ; Raw block
|14B295| db $00, $01, $C2, $C3, $FE, $FF, $FF, $00
|14B29D| db $F7, $FF, $00, $08, $00, $00, $FE, $3C
|14B2A5| db $22 ; Repeat byte
|14B2A6| db $00
|14B2A7| db $06 ; Raw block
|14B2A8| db $F7, $27, $F8, $07, $F8, $83, $7C
|14B2AF| db $47 ; Repeat word
|14B2B0| dw $3EC1
|14B2B2| db $00 ; Raw block
|14B2B3| db $FF
|14B2B4| db $28 ; Repeat byte
|14B2B5| db $00
|14B2B6| db $0F ; Raw block
|14B2B7| db $91, $6F, $C0, $3F, $E0, $1F, $F0, $4F
|14B2BF| db $FE, $C1, $FF, $E4, $FF, $EE, $FF, $FF
|14B2C7| db $22 ; Repeat byte
|14B2C8| db $00
|14B2C9| db $0D ; Raw block
|14B2CA| db $40, $C0, $E4, $EE, $FF, $31, $3E, $71
|14B2D2| db $7E, $F9, $FE, $FD, $FE, $CD
|14B2D8| db $44 ; Repeat word
|14B2D9| dw $85FE
|14B2DB| db $03 ; Raw block
|14B2DC| db $83, $FC, $C0, $80
|14B2E0| db $25 ; Repeat byte
|14B2E1| db $00
|14B2E2| db $14 ; Raw block
|14B2E3| db $B0, $27, $F8, $2B, $FC, $65, $F6, $6A
|14B2EB| db $B6, $2A, $F3, $2D, $F3, $6D, $FB, $75
|14B2F3| db $48, $04, $02, $01, $41
|14B2F8| db $22 ; Repeat byte
|14B2F9| db $00
|14B2FA| db $09 ; Raw block
|14B2FB| db $FF, $39, $FE, $1D, $FF, $0E, $FF, $07
|14B303| db $FF, $03
|14B305| db $44 ; Repeat word
|14B306| dw $00FF
|14B308| db $26 ; Repeat byte
|14B309| db $00
|14B30A| db $01 ; Raw block
|14B30B| db $78, $FF
|14B30D| db $89 ; Copy past
|14B30E| dw $0018
|14B310| db $22 ; Repeat byte
|14B311| db $FF
|14B312| db $83 ; Copy past
|14B313| dw $0535
|14B315| db $83 ; Copy past
|14B316| dw $0029
|14B318| db $22 ; Repeat byte
|14B319| db $00
|14B31A| db $0B ; Raw block
|14B31B| db $F3, $72, $F8, $78, $BE, $7E, $BF, $7F
|14B323| db $9F, $7F, $CF, $3F
|14B327| db $83 ; Copy past
|14B328| dw $010C
|14B32A| db $02 ; Raw block
|14B32B| db $0C, $07, $01
|14B32E| db $24 ; Repeat byte
|14B32F| db $00
|14B330| db $83 ; Copy past
|14B331| dw $0450
|14B333| db $05 ; Raw block
|14B334| db $07, $F9, $0F, $F3, $0D, $F5
|14B33A| db $45 ; Repeat word
|14B33B| dw $F30B
|14B33D| db $23 ; Repeat byte
|14B33E| db $00
|14B33F| db $00 ; Raw block
|14B340| db $02
|14B341| db $22 ; Repeat byte
|14B342| db $04
|14B343| db $4F ; Repeat word
|14B344| dw $C342
|14B346| db $27 ; Repeat byte
|14B347| db $7C
|14B348| db $0F ; Raw block
|14B349| db $7F, $FF, $47, $FF, $50, $FF, $5F, $FF
|14B351| db $50, $FF, $47, $FF, $7F, $FF, $00, $FF
|14B359| db $27 ; Repeat byte
|14B35A| db $00
|14B35B| db $4F ; Repeat word
|14B35C| dw $7DFC
|14B35E| db $27 ; Repeat byte
|14B35F| db $02
|14B360| db $02 ; Raw block
|14B361| db $7F, $80, $40
|14B364| db $48 ; Repeat word
|14B365| dw $5FBF
|14B367| db $43 ; Repeat word
|14B368| dw $807F
|14B36A| db $27 ; Repeat byte
|14B36B| db $00
|14B36C| db $43 ; Repeat word
|14B36D| dw $00FF
|14B36F| db $43 ; Repeat word
|14B370| dw $0FF0
|14B372| db $02 ; Raw block
|14B373| db $FF, $00, $E0
|14B376| db $44 ; Repeat word
|14B377| dw $EF1F
|14B379| db $27 ; Repeat byte
|14B37A| db $00
|14B37B| db $FF ; End of GFX 51

;===================================================================================================

GFX_52:
|14B37C| db $02 ; Raw block
|14B37D| db $C0, $7F, $C1
|14B380| db $46 ; Repeat word
|14B381| dw $C37F
|14B383| db $00 ; Raw block
|14B384| db $C1
|14B385| db $44 ; Repeat word
|14B386| dw $C07F
|14B388| db $27 ; Repeat byte
|14B389| db $00
|14B38A| db $0B ; Raw block
|14B38B| db $FF, $00, $F8, $0F, $F4, $1B, $E9, $36
|14B393| db $D3, $6C, $C3, $7C
|14B397| db $43 ; Repeat word
|14B398| dw $7FC0
|14B39A| db $02 ; Raw block
|14B39B| db $E0, $C0, $80
|14B39E| db $24 ; Repeat byte
|14B39F| db $00
|14B3A0| db $4F ; Repeat word
|14B3A1| dw $DEDF
|14B3A3| db $27 ; Repeat byte
|14B3A4| db $E0
|14B3A5| db $23 ; Repeat byte
|14B3A6| db $FF
|14B3A7| db $07 ; Raw block
|14B3A8| db $F0, $F0, $EF, $EF, $DF, $DB, $DF, $DD
|14B3B0| db $43 ; Repeat word
|14B3B1| dw $DEDF
|14B3B3| db $22 ; Repeat byte
|14B3B4| db $FF
|14B3B5| db $00 ; Raw block
|14B3B6| db $F0
|14B3B7| db $23 ; Repeat byte
|14B3B8| db $E0
|14B3B9| db $23 ; Repeat byte
|14B3BA| db $FF
|14B3BB| db $01 ; Raw block
|14B3BC| db $00, $00
|14B3BE| db $26 ; Repeat byte
|14B3BF| db $FF
|14B3C0| db $02 ; Raw block
|14B3C1| db $00, $FF, $00
|14B3C4| db $22 ; Repeat byte
|14B3C5| db $FF
|14B3C6| db $24 ; Repeat byte
|14B3C7| db $00
|14B3C8| db $43 ; Repeat word
|14B3C9| dw $DEDF
|14B3CB| db $07 ; Raw block
|14B3CC| db $0F, $0E, $E7, $E6, $F3, $F2, $FF, $FC
|14B3D4| db $43 ; Repeat word
|14B3D5| dw $00FF
|14B3D7| db $04 ; Raw block
|14B3D8| db $E0, $E0, $F0, $18, $0C
|14B3DD| db $22 ; Repeat byte
|14B3DE| db $00
|14B3DF| db $0B ; Raw block
|14B3E0| db $03, $00, $0C, $03, $10, $0F, $20, $1F
|14B3E8| db $40, $3F, $41, $3F
|14B3EC| db $43 ; Repeat word
|14B3ED| dw $7F83
|14B3EF| db $07 ; Raw block
|14B3F0| db $00, $03, $0F, $1F, $3F, $3F, $7F, $7F
|14B3F8| db $43 ; Repeat word
|14B3F9| dw $12E1
|14B3FB| db $43 ; Repeat word
|14B3FC| dw $20C3
|14B3FE| db $0F ; Raw block
|14B3FF| db $03, $C0, $01, $02, $80, $81, $F0, $F0
|14B407| db $0C, $0C, $1C, $1C, $3C, $FC, $7E, $0F
|14B40F| db $27 ; Repeat byte
|14B410| db $FF
|14B411| db $00 ; Raw block
|14B412| db $A0
|14B413| db $46 ; Repeat word
|14B414| dw $20E0
|14B416| db $23 ; Repeat byte
|14B417| db $00
|14B418| db $23 ; Repeat byte
|14B419| db $1F
|14B41A| db $45 ; Repeat word
|14B41B| dw $F3ED
|14B41D| db $09 ; Raw block
|14B41E| db $EF, $F5, $0F, $05, $4D, $C6, $AA, $63
|14B426| db $AD, $65
|14B428| db $23 ; Repeat byte
|14B429| db $00
|14B42A| db $0B ; Raw block
|14B42B| db $F0, $30, $14, $12, $FF, $00, $24, $24
|14B433| db $DB, $FF, $00, $FF
|14B437| db $43 ; Repeat word
|14B438| dw $00FF
|14B43A| db $00 ; Raw block
|14B43B| db $00
|14B43C| db $22 ; Repeat byte
|14B43D| db $FF
|14B43E| db $01 ; Raw block
|14B43F| db $00, $DB
|14B441| db $25 ; Repeat byte
|14B442| db $00
|14B443| db $44 ; Repeat word
|14B444| dw $00E0
|14B446| db $01 ; Raw block
|14B447| db $1F, $FF
|14B449| db $45 ; Repeat word
|14B44A| dw $E000
|14B44C| db $04 ; Raw block
|14B44D| db $1F, $FF, $00, $1F, $1F
|14B452| db $83 ; Copy past
|14B453| dw $00D2
|14B455| db $00 ; Raw block
|14B456| db $00
|14B457| db $4F ; Repeat word
|14B458| dw $FF00
|14B45A| db $28 ; Repeat byte
|14B45B| db $00
|14B45C| db $04 ; Raw block
|14B45D| db $FF, $FF, $F9, $FF, $F6
|14B462| db $43 ; Repeat word
|14B463| dw $F7FF
|14B465| db $06 ; Raw block
|14B466| db $F7, $FB, $FB, $FD, $FD, $FE, $FE
|14B46D| db $23 ; Repeat byte
|14B46E| db $00
|14B46F| db $09 ; Raw block
|14B470| db $08, $04, $02, $01, $DD, $DD, $8D, $8D
|14B478| db $70, $70
|14B47A| db $23 ; Repeat byte
|14B47B| db $7B
|14B47C| db $0D ; Raw block
|14B47D| db $3A, $3A, $C1, $C1, $DD, $DD, $22, $72
|14B485| db $8F, $84, $84, $C5, $3E, $22
|14B48B| db $2F ; Repeat byte
|14B48C| db $FF
|14B48D| db $27 ; Repeat byte
|14B48E| db $00
|14B48F| db $06 ; Raw block
|14B490| db $C8, $7F, $CC, $7F, $CE, $7F, $C7
|14B497| db $84 ; Copy past
|14B498| dw $0007
|14B49A| db $03 ; Raw block
|14B49B| db $D0, $7F, $D8, $7F
|14B49F| db $27 ; Repeat byte
|14B4A0| db $00
|14B4A1| db $43 ; Repeat word
|14B4A2| dw $7FC0
|14B4A4| db $01 ; Raw block
|14B4A5| db $C1, $7E
|14B4A7| db $46 ; Repeat word
|14B4A8| dw $7DC3
|14B4AA| db $02 ; Raw block
|14B4AB| db $7C, $C0, $7F
|14B4AE| db $27 ; Repeat byte
|14B4AF| db $00
|14B4B0| db $4F ; Repeat word
|14B4B1| dw $7FC0
|14B4B3| db $27 ; Repeat byte
|14B4B4| db $00
|14B4B5| db $01 ; Raw block
|14B4B6| db $80, $41
|14B4B8| db $45 ; Repeat word
|14B4B9| dw $5D9C
|14B4BB| db $08 ; Raw block
|14B4BC| db $80, $41, $BE, $7F, $80, $7F, $FF, $00
|14B4C4| db $3E
|14B4C5| db $22 ; Repeat byte
|14B4C6| db $22
|14B4C7| db $00 ; Raw block
|14B4C8| db $3E
|14B4C9| db $22 ; Repeat byte
|14B4CA| db $00
|14B4CB| db $0B ; Raw block
|14B4CC| db $BE, $3F, $9E, $1F, $C0, $40, $80, $7F
|14B4D4| db $C0, $40, $9F, $1F
|14B4D8| db $43 ; Repeat word
|14B4D9| dw $27A7
|14B4DB| db $09 ; Raw block
|14B4DC| db $40, $60, $3F, $00, $3F, $60, $58, $58
|14B4E4| db $FF, $00
|14B4E6| db $83 ; Copy past
|14B4E7| dw $01E6
|14B4E9| db $43 ; Repeat word
|14B4EA| dw $3EB2
|14B4EC| db $01 ; Raw block
|14B4ED| db $BF, $3F
|14B4EF| db $43 ; Repeat word
|14B4F0| dw $27A6
|14B4F2| db $09 ; Raw block
|14B4F3| db $00, $00, $3F, $41, $41, $40, $58, $58
|14B4FB| db $83, $7F
|14B4FD| db $43 ; Repeat word
|14B4FE| dw $3FC3
|14B500| db $0E ; Raw block
|14B501| db $E1, $1F, $A0, $5F, $F0, $0F, $70, $0F
|14B509| db $31, $0F, $7F, $3F, $3F, $1F, $1F
|14B510| db $22 ; Repeat byte
|14B511| db $0F
|14B512| db $17 ; Raw block
|14B513| db $07, $88, $05, $08, $07, $0A, $07, $CA
|14B51B| db $C7, $EA, $C3, $E4, $41, $E2, $C0, $79
|14B523| db $70, $F2, $F0, $30, $10, $18, $1C, $06
|14B52B| db $4F ; Repeat word
|14B52C| dw $60A0
|14B52E| db $27 ; Repeat byte
|14B52F| db $1F
|14B530| db $0B ; Raw block
|14B531| db $AA, $66, $AF, $6B, $A5, $63, $A6, $65
|14B539| db $A3, $62, $A1, $61
|14B53D| db $43 ; Repeat word
|14B53E| dw $60A0
|14B540| db $07 ; Raw block
|14B541| db $11, $10, $18, $18, $1C, $1E, $1F, $1F
|14B549| db $43 ; Repeat word
|14B54A| dw $0607
|14B54C| db $03 ; Raw block
|14B54D| db $FD, $FE, $03, $FC
|14B551| db $43 ; Repeat word
|14B552| dw $00FF
|14B554| db $00 ; Raw block
|14B555| db $00
|14B556| db $22 ; Repeat byte
|14B557| db $FF
|14B558| db $01 ; Raw block
|14B559| db $F8, $F8
|14B55B| db $2A ; Repeat byte
|14B55C| db $00
|14B55D| db $01 ; Raw block
|14B55E| db $FF, $FF
|14B560| db $25 ; Repeat byte
|14B561| db $00
|14B562| db $83 ; Copy past
|14B563| dw $006B
|14B565| db $84 ; Copy past
|14B566| dw $0063
|14B568| db $07 ; Raw block
|14B569| db $00, $00, $DD, $2D, $9D, $6D, $E0, $10
|14B571| db $43 ; Repeat word
|14B572| dw $0BFB
|14B574| db $0D ; Raw block
|14B575| db $BA, $4A, $C1, $31, $DD, $2D, $02, $02
|14B57D| db $0F, $04, $04, $05, $0E, $02
|14B583| db $37 ; Repeat byte
|14B584| db $FF
|14B585| db $0E ; Raw block
|14B586| db $07, $F8, $03, $FC, $43, $BC, $03, $FC
|14B58E| db $0B, $F4, $03, $FC, $07, $F8, $FF
|14B595| db $28 ; Repeat byte
|14B596| db $00
|14B597| db $09 ; Raw block
|14B598| db $07, $07, $03, $03, $43, $43, $03, $03
|14B5A0| db $0B, $0B
|14B5A2| db $23 ; Repeat byte
|14B5A3| db $03
|14B5A4| db $19 ; Raw block
|14B5A5| db $07, $FF, $F9, $FD, $BD, $FD, $F5, $FD
|14B5AD| db $FD, $01, $CC, $7F, $C6, $7F, $C3, $7F
|14B5B5| db $D1, $7F, $D9, $7F, $CD, $7F, $C7, $7F
|14B5BD| db $83, $3F
|14B5BF| db $26 ; Repeat byte
|14B5C0| db $00
|14B5C1| db $00 ; Raw block
|14B5C2| db $40
|14B5C3| db $22 ; Repeat byte
|14B5C4| db $FF
|14B5C5| db $06 ; Raw block
|14B5C6| db $F8, $F9, $F7, $F1, $EF, $F3, $ED
|14B5CD| db $43 ; Repeat word
|14B5CE| dw $ECF3
|14B5D0| db $01 ; Raw block
|14B5D1| db $71, $6E
|14B5D3| db $23 ; Repeat byte
|14B5D4| db $FF
|14B5D5| db $23 ; Repeat byte
|14B5D6| db $EF
|14B5D7| db $83 ; Copy past
|14B5D8| dw $01F8
|14B5DA| db $0B ; Raw block
|14B5DB| db $9F, $60, $BF, $5F, $E0, $20, $CF, $4F
|14B5E3| db $93, $13, $B3, $33
|14B5E7| db $23 ; Repeat byte
|14B5E8| db $00
|14B5E9| db $1B ; Raw block
|14B5EA| db $1F, $30, $6C, $4C, $D9, $E7, $79, $77
|14B5F2| db $BC, $BB, $CF, $CC, $30, $F0, $9F, $7F
|14B5FA| db $E0, $9F, $1F, $20, $00, $80, $40, $30
|14B602| db $0F, $00, $00, $C0
|14B606| db $83 ; Copy past
|14B607| dw $01E0
|14B609| db $0F ; Raw block
|14B60A| db $8F, $4F, $A0, $60, $9F, $7F, $C0, $3F
|14B612| db $E0, $1F, $BF, $40, $40, $60, $30, $1F
|14B61A| db $23 ; Repeat byte
|14B61B| db $00
|14B61C| db $05 ; Raw block
|14B61D| db $B1, $7E, $91, $7E, $D1, $BE
|14B623| db $43 ; Repeat word
|14B624| dw $DEFD
|14B626| db $43 ; Repeat word
|14B627| dw $DEF1
|14B629| db $01 ; Raw block
|14B62A| db $FD, $DE
|14B62C| db $27 ; Repeat byte
|14B62D| db $00
|14B62E| db $05 ; Raw block
|14B62F| db $63, $1F, $43, $3F, $C7, $3F
|14B635| db $45 ; Repeat word
|14B636| dw $7F87
|14B638| db $06 ; Raw block
|14B639| db $83, $7F, $81, $7F, $1F, $3F, $3F
|14B640| db $24 ; Repeat byte
|14B641| db $7F
|14B642| db $02 ; Raw block
|14B643| db $F0, $79, $F0
|14B646| db $43 ; Repeat word
|14B647| dw $E078
|14B649| db $04 ; Raw block
|14B64A| db $70, $E0, $7C, $F8, $7C
|14B64F| db $83 ; Copy past
|14B650| dw $01D4
|14B652| db $0B ; Raw block
|14B653| db $06, $07, $07, $0F, $03, $03, $00, $00
|14B65B| db $A0, $60, $B0, $70
|14B65F| db $47 ; Repeat word
|14B660| dw $7FBF
|14B662| db $05 ; Raw block
|14B663| db $C0, $3F, $FF, $00, $1F, $0F
|14B669| db $29 ; Repeat byte
|14B66A| db $00
|14B66B| db $27 ; Repeat byte
|14B66C| db $FF
|14B66D| db $85 ; Copy past
|14B66E| dw $0294
|14B670| db $25 ; Repeat byte
|14B671| db $00
|14B672| db $83 ; Copy past
|14B673| dw $01F8
|14B675| db $01 ; Raw block
|14B676| db $FF, $7F
|14B678| db $43 ; Repeat word
|14B679| dw $0080
|14B67B| db $02 ; Raw block
|14B67C| db $FF, $00, $00
|14B67F| db $22 ; Repeat byte
|14B680| db $FF
|14B681| db $22 ; Repeat byte
|14B682| db $00
|14B683| db $01 ; Raw block
|14B684| db $7F, $7F
|14B686| db $22 ; Repeat byte
|14B687| db $00
|14B688| db $17 ; Raw block
|14B689| db $83, $1F, $83, $4F, $83, $67, $C3, $33
|14B691| db $60, $98, $30, $CF, $18, $E7, $0F, $F0
|14B699| db $60, $30, $18, $0C, $87, $C0, $E0, $F0
|14B6A1| db $22 ; Repeat byte
|14B6A2| db $00
|14B6A3| db $14 ; Raw block
|14B6A4| db $07, $87, $88, $8F, $90, $CE, $51, $CC
|14B6AC| db $52, $D0, $5C, $C0, $40, $FF, $F8, $70
|14B6B4| db $60, $20, $21, $23, $3F
|14B6B9| db $4F ; Repeat word
|14B6BA| dw $1FFF
|14B6BC| db $27 ; Repeat byte
|14B6BD| db $00
|14B6BE| db $0F ; Raw block
|14B6BF| db $DD, $22, $8D, $72, $70, $8F, $7B, $84
|14B6C7| db $77, $88, $B7, $48, $C0, $3F, $DD, $22
|14B6CF| db $27 ; Repeat byte
|14B6D0| db $00
|14B6D1| db $01 ; Raw block
|14B6D2| db $BF, $BF
|14B6D4| db $25 ; Repeat byte
|14B6D5| db $80
|14B6D6| db $27 ; Repeat byte
|14B6D7| db $00
|14B6D8| db $23 ; Repeat byte
|14B6D9| db $7F
|14B6DA| db $23 ; Repeat byte
|14B6DB| db $FF
|14B6DC| db $17 ; Raw block
|14B6DD| db $78, $67, $7C, $73, $3F, $B8, $3F, $BF
|14B6E5| db $1F, $1F, $07, $07, $20, $50, $71, $80
|14B6ED| db $EF, $E7, $70, $78, $FF, $FF, $8F, $0E
|14B6F5| db $27 ; Repeat byte
|14B6F6| db $FF
|14B6F7| db $22 ; Repeat byte
|14B6F8| db $00
|14B6F9| db $83 ; Copy past
|14B6FA| dw $006E
|14B6FC| db $24 ; Repeat byte
|14B6FD| db $00
|14B6FE| db $00 ; Raw block
|14B6FF| db $FF
|14B700| db $22 ; Repeat byte
|14B701| db $00
|14B702| db $09 ; Raw block
|14B703| db $EF, $50, $E7, $58, $D4, $6C, $E8, $77
|14B70B| db $F7, $78
|14B70D| db $83 ; Copy past
|14B70E| dw $01E4
|14B710| db $00 ; Raw block
|14B711| db $FF
|14B712| db $22 ; Repeat byte
|14B713| db $00
|14B714| db $05 ; Raw block
|14B715| db $03, $00, $00, $3F, $00, $00
|14B71B| db $43 ; Repeat word
|14B71C| dw $BF40
|14B71E| db $05 ; Raw block
|14B71F| db $41, $BE, $43, $BD, $83, $FD
|14B725| db $85 ; Copy past
|14B726| dw $01A2
|14B728| db $27 ; Repeat byte
|14B729| db $00
|14B72A| db $1A ; Raw block
|14B72B| db $E3, $7F, $B3, $3F, $9B, $5F, $8F, $6F
|14B733| db $C0, $B0, $E0, $DF, $F0, $EF, $FF, $F0
|14B73B| db $00, $40, $20, $10, $8F, $C0, $E0, $F0
|14B743| db $7F, $00, $F5
|14B746| db $46 ; Repeat word
|14B747| dw $FF00
|14B749| db $00 ; Raw block
|14B74A| db $80
|14B74B| db $44 ; Repeat word
|14B74C| dw $FF00
|14B74E| db $07 ; Raw block
|14B74F| db $80, $8A, $80, $1B, $3B, $7F, $00, $00
|14B757| db $43 ; Repeat word
|14B758| dw $3FC0
|14B75A| db $0F ; Raw block
|14B75B| db $E0, $1F, $F8, $07, $6F, $10, $65, $1A
|14B763| db $39, $06, $1F, $00, $3F, $3F, $1F, $07
|14B76B| db $23 ; Repeat byte
|14B76C| db $00
|14B76D| db $03 ; Raw block
|14B76E| db $C3, $00, $3C, $C3
|14B772| db $43 ; Repeat word
|14B773| dw $FF00
|14B775| db $00 ; Raw block
|14B776| db $66
|14B777| db $26 ; Repeat byte
|14B778| db $FF
|14B779| db $01 ; Raw block
|14B77A| db $00, $C3
|14B77C| db $25 ; Repeat byte
|14B77D| db $FF
|14B77E| db $43 ; Repeat word
|14B77F| dw $FF00
|14B781| db $0F ; Raw block
|14B782| db $18, $E7, $3C, $C3, $FF, $00, $5A, $A5
|14B78A| db $3C, $C3, $E7, $00, $FF, $FF, $E7, $C3
|14B792| db $23 ; Repeat byte
|14B793| db $00
|14B794| db $24 ; Repeat byte
|14B795| db $FF
|14B796| db $43 ; Repeat word
|14B797| dw $FF9F
|14B799| db $43 ; Repeat word
|14B79A| dw $F9FF
|14B79C| db $2A ; Repeat byte
|14B79D| db $FF
|14B79E| db $23 ; Repeat byte
|14B79F| db $00
|14B7A0| db $05 ; Raw block
|14B7A1| db $C0, $C0, $60, $E0, $3F, $FF
|14B7A7| db $83 ; Copy past
|14B7A8| dw $0368
|14B7AA| db $83 ; Copy past
|14B7AB| dw $006E
|14B7AD| db $01 ; Raw block
|14B7AE| db $3F, $1F
|14B7B0| db $23 ; Repeat byte
|14B7B1| db $00
|14B7B2| db $08 ; Raw block
|14B7B3| db $6F, $13, $67, $18, $3C, $03, $1E, $01
|14B7BB| db $0B
|14B7BC| db $32 ; Repeat byte
|14B7BD| db $00
|14B7BE| db $83 ; Copy past
|14B7BF| dw $006B
|14B7C1| db $48 ; Repeat word
|14B7C2| dw $00FF
|14B7C4| db $00 ; Raw block
|14B7C5| db $FF
|14B7C6| db $25 ; Repeat byte
|14B7C7| db $00
|14B7C8| db $02 ; Raw block
|14B7C9| db $FF, $00, $00
|14B7CC| db $22 ; Repeat byte
|14B7CD| db $FF
|14B7CE| db $23 ; Repeat byte
|14B7CF| db $00
|14B7D0| db $02 ; Raw block
|14B7D1| db $FF, $00, $00
|14B7D4| db $22 ; Repeat byte
|14B7D5| db $FF
|14B7D6| db $22 ; Repeat byte
|14B7D7| db $00
|14B7D8| db $01 ; Raw block
|14B7D9| db $FF, $FF
|14B7DB| db $22 ; Repeat byte
|14B7DC| db $00
|14B7DD| db $09 ; Raw block
|14B7DE| db $80, $7F, $9E, $7F, $B7, $7F, $A3, $7F
|14B7E6| db $A2, $7F
|14B7E8| db $84 ; Copy past
|14B7E9| dw $01D2
|14B7EB| db $28 ; Repeat byte
|14B7EC| db $00
|14B7ED| db $43 ; Repeat word
|14B7EE| dw $1FE0
|14B7F0| db $0A ; Raw block
|14B7F1| db $FF, $00, $C0, $3F, $C7, $3F, $DE, $3F
|14B7F9| db $D3, $3F, $FF
|14B7FC| db $28 ; Repeat byte
|14B7FD| db $00
|14B7FE| db $FF ; End of GFX 52

;===================================================================================================

GFX_53:
|14B7FF| db $0F ; Raw block
|14B800| db $FF, $00, $B6, $59, $A3, $5D, $EE, $11
|14B808| db $9D, $6E, $51, $AE, $AE, $D1, $D1, $FF
|14B810| db $24 ; Repeat byte
|14B811| db $00
|14B812| db $0A ; Raw block
|14B813| db $80, $D1, $FF, $FF, $00, $B6, $D9, $23
|14B81B| db $DD, $6E, $91
|14B81E| db $84 ; Copy past
|14B81F| dw $0008
|14B821| db $02 ; Raw block
|14B822| db $51, $51, $FF
|14B825| db $25 ; Repeat byte
|14B826| db $00
|14B827| db $E0, $24 ; EXT Raw block
|14B829| db $51, $FF, $BF, $40, $DD, $22, $ED, $12
|14B831| db $F0, $0F, $B7, $48, $97, $68, $C7, $38
|14B839| db $E7, $18, $40, $22, $12, $0F, $4F, $6F
|14B841| db $3F, $1F, $FF, $00, $BF, $40, $96, $69
|14B849| db $C1, $7F, $C2, $7F, $BC
|14B84E| db $44 ; Repeat word
|14B84F| dw $847F
|14B851| db $27 ; Repeat byte
|14B852| db $00
|14B853| db $43 ; Repeat word
|14B854| dw $00FF
|14B856| db $03 ; Raw block
|14B857| db $60, $9F, $CF, $B0
|14B85B| db $47 ; Repeat word
|14B85C| dw $B24D
|14B85E| db $28 ; Repeat byte
|14B85F| db $00
|14B860| db $01 ; Raw block
|14B861| db $FF, $00
|14B863| db $25 ; Repeat byte
|14B864| db $FF
|14B865| db $08 ; Raw block
|14B866| db $00, $FF, $7F, $BF, $3F, $9F, $3F, $FF
|14B86E| db $FF
|14B86F| db $22 ; Repeat byte
|14B870| db $00
|14B871| db $E0, $4B ; EXT Raw block
|14B873| db $7F, $40, $5F, $3F, $C0, $60, $A0, $CF
|14B87B| db $4F, $D8, $58, $52, $92, $57, $97, $55
|14B883| db $95, $57, $97, $C0, $9F, $30, $27, $2D
|14B88B| db $28, $AA, $A8, $C3, $3C, $FE, $C2, $28
|14B893| db $38, $C1, $C1, $66, $66, $39, $39, $83
|14B89B| db $83, $39, $39, $3C, $01, $C7, $3E, $99
|14B8A3| db $C6, $7C, $C6, $7F, $7C, $7C, $7B, $7A
|14B8AB| db $76, $74, $6C, $68, $58, $50, $30, $51
|14B8B3| db $31, $50, $B1, $7C, $78, $71, $63, $47
|14B8BB| db $0F, $0E, $8E, $FF
|14B8BF| db $83 ; Copy past
|14B8C0| dw $005E
|14B8C2| db $22 ; Repeat byte
|14B8C3| db $21
|14B8C4| db $01 ; Raw block
|14B8C5| db $23, $23
|14B8C7| db $84 ; Copy past
|14B8C8| dw $007F
|14B8CA| db $05 ; Raw block
|14B8CB| db $80, $00, $00, $DE, $DE, $DC
|14B8D1| db $22 ; Repeat byte
|14B8D2| db $00
|14B8D3| db $17 ; Raw block
|14B8D4| db $0F, $F0, $10, $E0, $EF, $CF, $DB, $9B
|14B8DC| db $B7, $36, $EE, $6D, $DD, $5B, $B8, $37
|14B8E4| db $F0, $EF, $1F, $3C, $78, $70, $61, $40
|14B8EC| db $23 ; Repeat byte
|14B8ED| db $FF
|14B8EE| db $03 ; Raw block
|14B8EF| db $00, $FF, $FF, $00
|14B8F3| db $23 ; Repeat byte
|14B8F4| db $FF
|14B8F5| db $02 ; Raw block
|14B8F6| db $00, $FF, $FF
|14B8F9| db $28 ; Repeat byte
|14B8FA| db $00
|14B8FB| db $00 ; Raw block
|14B8FC| db $07
|14B8FD| db $44 ; Repeat word
|14B8FE| dw $6FFF
|14B900| db $02 ; Raw block
|14B901| db $63, $FF, $0C
|14B904| db $44 ; Repeat word
|14B905| dw $EEFF
|14B907| db $01 ; Raw block
|14B908| db $E0, $FF
|14B90A| db $2B ; Repeat byte
|14B90B| db $00
|14B90C| db $0B ; Raw block
|14B90D| db $1E, $00, $21, $1E, $40, $31, $8E, $60
|14B915| db $9F, $40, $9B, $3C
|14B919| db $22 ; Repeat byte
|14B91A| db $00
|14B91B| db $04 ; Raw block
|14B91C| db $1E, $3F, $7F, $7F, $5B
|14B921| db $23 ; Repeat byte
|14B922| db $00
|14B923| db $0B ; Raw block
|14B924| db $70, $00, $90, $60, $11, $80, $72, $01
|14B92C| db $E4, $03, $F8, $06
|14B930| db $22 ; Repeat byte
|14B931| db $00
|14B932| db $04 ; Raw block
|14B933| db $60, $E0, $E1, $C3, $C7
|14B938| db $23 ; Repeat byte
|14B939| db $00
|14B93A| db $0B ; Raw block
|14B93B| db $FF, $00, $81, $7E, $01, $C0, $3F, $80
|14B943| db $7F, $00, $FF, $01
|14B947| db $22 ; Repeat byte
|14B948| db $00
|14B949| db $00 ; Raw block
|14B94A| db $7E
|14B94B| db $22 ; Repeat byte
|14B94C| db $FE
|14B94D| db $02 ; Raw block
|14B94E| db $C1, $85, $46
|14B951| db $49 ; Repeat word
|14B952| dw $7EB9
|14B954| db $04 ; Raw block
|14B955| db $81, $7E, $FF, $00, $38
|14B95A| db $26 ; Repeat byte
|14B95B| db $00
|14B95C| db $43 ; Repeat word
|14B95D| dw $00FF
|14B95F| db $43 ; Repeat word
|14B960| dw $44BB
|14B962| db $0A ; Raw block
|14B963| db $7D, $82, $7C, $83, $21, $DE, $8B, $74
|14B96B| db $00, $48, $44
|14B96E| db $24 ; Repeat byte
|14B96F| db $FF
|14B970| db $03 ; Raw block
|14B971| db $1F, $00, $32, $0D
|14B975| db $4B ; Repeat word
|14B976| dw $2D52
|14B978| db $01 ; Raw block
|14B979| db $00, $1F
|14B97B| db $25 ; Repeat byte
|14B97C| db $3F
|14B97D| db $0F ; Raw block
|14B97E| db $84, $7F, $C7, $7F, $A4, $7F, $9C, $7F
|14B986| db $B2, $4F, $49, $B6, $B6, $F9, $F1, $FF
|14B98E| db $24 ; Repeat byte
|14B98F| db $00
|14B990| db $12 ; Raw block
|14B991| db $B0, $F9, $FF, $4D, $B2, $CF, $BD, $60
|14B999| db $9F, $3F, $C0, $00, $FF, $45, $BA, $EA
|14B9A1| db $55, $75, $EF
|14B9A4| db $25 ; Repeat byte
|14B9A5| db $00
|14B9A6| db $05 ; Raw block
|14B9A7| db $45, $EF, $8F, $2F, $88, $2F
|14B9AD| db $83 ; Copy past
|14B9AE| dw $01F8
|14B9B0| db $07 ; Raw block
|14B9B1| db $8F, $2F, $89, $2F, $8F, $2F, $C8, $6F
|14B9B9| db $26 ; Repeat byte
|14B9BA| db $50
|14B9BB| db $10 ; Raw block
|14B9BC| db $10, $B1, $7E, $E1, $7F, $C0, $7F, $CC
|14B9C4| db $7F, $8C, $7F, $98, $67, $67, $00, $00
|14B9CC| db $27
|14B9CD| db $26 ; Repeat byte
|14B9CE| db $00
|14B9CF| db $03 ; Raw block
|14B9D0| db $27, $6D, $92, $00
|14B9D4| db $22 ; Repeat byte
|14B9D5| db $FF
|14B9D6| db $09 ; Raw block
|14B9D7| db $01, $FF, $00, $FF, $89, $76, $76, $89
|14B9DF| db $00, $76
|14B9E1| db $25 ; Repeat byte
|14B9E2| db $00
|14B9E3| db $03 ; Raw block
|14B9E4| db $89, $76, $4E, $BF
|14B9E8| db $45 ; Repeat word
|14B9E9| dw $B150
|14B9EB| db $08 ; Raw block
|14B9EC| db $52, $B3, $50, $B1, $4E, $BF, $58, $B9
|14B9F4| db $80
|14B9F5| db $22 ; Repeat byte
|14B9F6| db $8E
|14B9F7| db $05 ; Raw block
|14B9F8| db $8C, $8E, $80, $86, $FF, $FF
|14B9FE| db $25 ; Repeat byte
|14B9FF| db $21
|14BA00| db $08 ; Raw block
|14BA01| db $DE, $FF, $00, $FF, $C4, $3B, $7B, $C4
|14BA09| db $00
|14BA0A| db $22 ; Repeat byte
|14BA0B| db $DE
|14BA0C| db $22 ; Repeat byte
|14BA0D| db $00
|14BA0E| db $E0, $32 ; EXT Raw block
|14BA10| db $C4, $A0, $6F, $F0, $37, $D0, $37, $F8
|14BA18| db $1B, $E8, $18, $FF, $0F, $F6, $0F, $FF
|14BA20| db $00, $10, $08, $88, $84, $C7, $C0, $E0
|14BA28| db $E0, $E1, $1E, $C8, $3F, $FF, $00, $C3
|14BA30| db $3C, $96, $7F, $C0, $3F, $73, $8C, $CD
|14BA38| db $F3, $1E, $3F, $00, $3C, $7F, $3F, $8C
|14BA40| db $F3, $C1, $C1
|14BA43| db $29 ; Repeat byte
|14BA44| db $80
|14BA45| db $04 ; Raw block
|14BA46| db $C9, $C9, $FF, $FF, $3E
|14BA4B| db $24 ; Repeat byte
|14BA4C| db $7F
|14BA4D| db $0D ; Raw block
|14BA4E| db $36, $00, $FF, $24, $DB, $3C, $FF, $40
|14BA56| db $F1, $60, $F8, $68, $E8, $40
|14BA5C| db $43 ; Repeat word
|14BA5D| dw $44EC
|14BA5F| db $18 ; Raw block
|14BA60| db $67, $1B, $5F, $6F, $47, $47, $43, $43
|14BA68| db $E1, $1C, $E3, $00, $FF, $00, $C0, $00
|14BA70| db $BF, $00, $FF, $00, $E3, $1D, $FE, $82
|14BA78| db $DF
|14BA79| db $23 ; Repeat byte
|14BA7A| db $FF
|14BA7B| db $E0, $22 ; EXT Raw block
|14BA7D| db $60, $7C, $39, $C3, $3D, $BF, $40, $FE
|14BA85| db $00, $FC, $00, $F0, $00, $E0, $40, $A0
|14BA8D| db $80, $60, $40, $BD, $7C, $FC, $F0, $E0
|14BA95| db $80, $40, $80, $BB, $44, $D8, $27, $E3
|14BA9D| db $1C, $F7, $08
|14BAA0| db $43 ; Repeat word
|14BAA1| dw $00FF
|14BAA3| db $06 ; Raw block
|14BAA4| db $70, $0F, $3F, $00, $4F, $2F, $1F
|14BAAB| db $83 ; Copy past
|14BAAC| dw $0044
|14BAAE| db $23 ; Repeat byte
|14BAAF| db $00
|14BAB0| db $04 ; Raw block
|14BAB1| db $FF, $3C, $C3, $24, $C3
|14BAB6| db $45 ; Repeat word
|14BAB7| dw $18F7
|14BAB9| db $43 ; Repeat word
|14BABA| dw $00FF
|14BABC| db $0B ; Raw block
|14BABD| db $00, $18, $00, $C3, $C3, $81, $52, $20
|14BAC5| db $5F, $00, $7F, $0F
|14BAC9| db $43 ; Repeat word
|14BACA| dw $183F
|14BACC| db $07 ; Raw block
|14BACD| db $38, $18, $3F, $00, $02, $01, $3F, $20
|14BAD5| db $22 ; Repeat byte
|14BAD6| db $00
|14BAD7| db $0E ; Raw block
|14BAD8| db $07, $00, $00, $BB, $44, $7B, $84, $38
|14BAE0| db $C7, $93, $6C, $C7, $38, $CF, $30
|14BAE7| db $83 ; Copy past
|14BAE8| dw $010C
|14BAEA| db $26 ; Repeat byte
|14BAEB| db $FF
|14BAEC| db $26 ; Repeat byte
|14BAED| db $00
|14BAEE| db $09 ; Raw block
|14BAEF| db $03, $00, $07, $03, $0F, $07, $0E, $07
|14BAF7| db $1C, $0F
|14BAF9| db $23 ; Repeat byte
|14BAFA| db $00
|14BAFB| db $18 ; Raw block
|14BAFC| db $03, $07, $07, $0F, $7F, $07, $5F, $33
|14BB04| db $4F, $31, $6F, $10, $3D, $02, $1C, $03
|14BB0C| db $1E, $01, $1F, $00, $47, $03, $01, $40
|14BB14| db $20
|14BB15| db $22 ; Repeat byte
|14BB16| db $18
|14BB17| db $1D ; Raw block
|14BB18| db $FF, $00, $B1, $31, $98, $18, $80, $1F
|14BB20| db $C0, $5F, $EF, $70, $AF, $30, $8F, $10
|14BB28| db $00, $4E, $67, $60, $20, $0F, $4F, $6F
|14BB30| db $FF, $00, $8C, $8C, $C7, $C7
|14BB36| db $43 ; Repeat word
|14BB37| dw $FF00
|14BB39| db $45 ; Repeat word
|14BB3A| dw $00FF
|14BB3C| db $04 ; Raw block
|14BB3D| db $00, $73, $38, $00, $00
|14BB42| db $22 ; Repeat byte
|14BB43| db $FF
|14BB44| db $1A ; Raw block
|14BB45| db $50, $B0, $48, $B8, $44, $BC, $22, $DE
|14BB4D| db $39, $47, $28, $17, $04, $7B, $03, $0C
|14BB55| db $8F, $87, $83, $C1, $40, $10, $78, $0C
|14BB5D| db $4D, $FF, $49
|14BB60| db $43 ; Repeat word
|14BB61| dw $00FF
|14BB63| db $04 ; Raw block
|14BB64| db $00, $FF, $FF, $7F, $80
|14BB69| db $43 ; Repeat word
|14BB6A| dw $00FF
|14BB6C| db $03 ; Raw block
|14BB6D| db $4D, $49, $00, $FF
|14BB71| db $22 ; Repeat byte
|14BB72| db $00
|14BB73| db $0E ; Raw block
|14BB74| db $7F, $80, $7F, $FF, $B0, $E9, $D0, $FF
|14BB7C| db $C6, $FF, $F6, $5F, $50, $0B, $0B
|14BB83| db $22 ; Repeat byte
|14BB84| db $00
|14BB85| db $07 ; Raw block
|14BB86| db $80, $C6, $C0, $F0, $50, $0B, $00, $00
|14BB8E| db $22 ; Repeat byte
|14BB8F| db $FF
|14BB90| db $85 ; Copy past
|14BB91| dw $010C
|14BB93| db $01 ; Raw block
|14BB94| db $A5, $A5
|14BB96| db $27 ; Repeat byte
|14BB97| db $00
|14BB98| db $06 ; Raw block
|14BB99| db $FF, $A5, $00, $00, $12, $ED, $FF
|14BBA0| db $22 ; Repeat byte
|14BBA1| db $00
|14BBA2| db $83 ; Copy past
|14BBA3| dw $0080
|14BBA5| db $04 ; Raw block
|14BBA6| db $40, $3F, $8C, $7F, $FF
|14BBAB| db $28 ; Repeat byte
|14BBAC| db $00
|14BBAD| db $04 ; Raw block
|14BBAE| db $E6, $42, $C3, $01, $01
|14BBB3| db $2A ; Repeat byte
|14BBB4| db $00
|14BBB5| db $00 ; Raw block
|14BBB6| db $01
|14BBB7| db $26 ; Repeat byte
|14BBB8| db $00
|14BBB9| db $E0, $26 ; EXT Raw block
|14BBBB| db $7D, $45, $3B, $3A, $87, $85, $FF, $79
|14BBC3| db $7E, $03, $05, $03, $02, $01, $03, $00
|14BBCB| db $82, $C4, $78, $00, $02, $01, $00, $00
|14BBD3| db $C0, $80, $C0, $00, $C0, $80, $E0, $80
|14BBDB| db $60, $C0, $A0, $C0, $40, $80, $C0
|14BBE2| db $24 ; Repeat byte
|14BBE3| db $00
|14BBE4| db $04 ; Raw block
|14BBE5| db $40, $80, $00, $00, $FF
|14BBEA| db $22 ; Repeat byte
|14BBEB| db $00
|14BBEC| db $24 ; Repeat byte
|14BBED| db $FF
|14BBEE| db $05 ; Raw block
|14BBEF| db $00, $00, $FF, $CA, $FF, $8C
|14BBF5| db $83 ; Copy past
|14BBF6| dw $0079
|14BBF8| db $22 ; Repeat byte
|14BBF9| db $00
|14BBFA| db $03 ; Raw block
|14BBFB| db $CA, $8C, $43, $80
|14BBFF| db $43 ; Repeat word
|14BC00| dw $817E
|14BC02| db $05 ; Raw block
|14BC03| db $B4, $5B, $BC, $43, $7E, $81
|14BC09| db $83 ; Copy past
|14BC0A| dw $010C
|14BC0C| db $0B ; Raw block
|14BC0D| db $BD, $81, $81, $C3, $C3, $FF, $FF, $00
|14BC15| db $16, $15, $3F, $3D
|14BC19| db $43 ; Repeat word
|14BC1A| dw $3B3D
|14BC1C| db $01 ; Raw block
|14BC1D| db $3F, $3C
|14BC1F| db $23 ; Repeat byte
|14BC20| db $3F
|14BC21| db $11 ; Raw block
|14BC22| db $16, $16, $14, $3C, $38, $38, $3C, $3F
|14BC2A| db $3F, $16, $EF, $78, $A9, $7E, $8E, $7D
|14BC32| db $E5, $1B
|14BC34| db $43 ; Repeat word
|14BC35| dw $03FD
|14BC37| db $02 ; Raw block
|14BC38| db $3E, $01, $03
|14BC3B| db $24 ; Repeat byte
|14BC3C| db $00
|14BC3D| db $04 ; Raw block
|14BC3E| db $C0, $F8, $3C, $02, $1C
|14BC43| db $44 ; Repeat word
|14BC44| dw $1F0F
|14BC46| db $02 ; Raw block
|14BC47| db $3F, $0F, $3E
|14BC4A| db $44 ; Repeat word
|14BC4B| dw $3C0F
|14BC4D| db $01 ; Raw block
|14BC4E| db $3F, $07
|14BC50| db $22 ; Repeat byte
|14BC51| db $0F
|14BC52| db $23 ; Repeat byte
|14BC53| db $2F
|14BC54| db $09 ; Raw block
|14BC55| db $27, $0C, $03, $0A, $07, $0C, $07, $0F
|14BC5D| db $00, $07
|14BC5F| db $26 ; Repeat byte
|14BC60| db $00
|14BC61| db $00 ; Raw block
|14BC62| db $08
|14BC63| db $22 ; Repeat byte
|14BC64| db $00
|14BC65| db $00 ; Raw block
|14BC66| db $07
|14BC67| db $22 ; Repeat byte
|14BC68| db $00
|14BC69| db $17 ; Raw block
|14BC6A| db $CE, $51, $EE, $71, $AE, $31, $8E, $11
|14BC72| db $CE, $51, $EF, $70, $87, $07, $8C, $0C
|14BC7A| db $2F, $0F, $4F, $6F, $2F, $0F, $78, $73
|14BC82| db $49 ; Repeat word
|14BC83| dw $FF00
|14BC85| db $05 ; Raw block
|14BC86| db $FF, $00, $18, $18, $31, $31
|14BC8C| db $25 ; Repeat byte
|14BC8D| db $FF
|14BC8E| db $E0, $2D ; EXT Raw block
|14BC90| db $E7, $CE, $52, $92, $D8, $58, $CF, $4F
|14BC98| db $E0, $20, $BF, $40, $A2, $5D, $62, $9D
|14BCA0| db $3F, $C0, $2D, $27, $30, $1F, $00, $00
|14BCA8| db $80, $C0, $64, $64, $C3, $C3, $18, $18
|14BCB0| db $5A, $66, $E7, $18, $24, $DB, $3C, $C3
|14BCB8| db $E7, $3C, $9B, $3C, $E7, $81
|14BCBE| db $22 ; Repeat byte
|14BCBF| db $00
|14BCC0| db $00 ; Raw block
|14BCC1| db $3C
|14BCC2| db $28 ; Repeat byte
|14BCC3| db $00
|14BCC4| db $43 ; Repeat word
|14BCC5| dw $001C
|14BCC7| db $0A ; Raw block
|14BCC8| db $0C, $00, $0D, $00, $3E, $7F, $7F, $63
|14BCD0| db $63, $73, $32
|14BCD3| db $44 ; Repeat word
|14BCD4| dw $0F00
|14BCD6| db $02 ; Raw block
|14BCD7| db $1E, $00, $1C
|14BCDA| db $27 ; Repeat byte
|14BCDB| db $00
|14BCDC| db $06 ; Raw block
|14BCDD| db $30, $70, $61, $63, $7F, $7F, $3E
|14BCE4| db $27 ; Repeat byte
|14BCE5| db $00
|14BCE6| db $02 ; Raw block
|14BCE7| db $07, $00, $0F
|14BCEA| db $44 ; Repeat word
|14BCEB| dw $0C00
|14BCED| db $08 ; Raw block
|14BCEE| db $0F, $00, $3E, $7F, $78, $70, $73, $73
|14BCF6| db $30
|14BCF7| db $26 ; Repeat byte
|14BCF8| db $00
|14BCF9| db $04 ; Raw block
|14BCFA| db $E0, $00, $F0, $00, $30
|14BCFF| db $22 ; Repeat byte
|14BD00| db $00
|14BD01| db $09 ; Raw block
|14BD02| db $E0, $00, $7C, $FE, $1E, $0E, $CE, $FE
|14BD0A| db $1C, $3E
|14BD0C| db $4A ; Repeat word
|14BD0D| dw $7FFF
|14BD0F| db $02 ; Raw block
|14BD10| db $36, $FF, $00
|14BD13| db $28 ; Repeat byte
|14BD14| db $FF
|14BD15| db $26 ; Repeat byte
|14BD16| db $00
|14BD17| db $02 ; Raw block
|14BD18| db $E0, $00, $E0
|14BD1B| db $24 ; Repeat byte
|14BD1C| db $00
|14BD1D| db $00 ; Raw block
|14BD1E| db $C0
|14BD1F| db $83 ; Copy past
|14BD20| dw $05C8
|14BD22| db $03 ; Raw block
|14BD23| db $1E, $FE, $FE, $3C
|14BD27| db $FF ; End of GFX 53

;===================================================================================================

GFX_54:
|14BD28| db $11 ; Raw block
|14BD29| db $3F, $C0, $7F, $80, $8F, $70, $87, $78
|14BD31| db $83, $7C, $C0, $BF, $C3, $BD, $E7, $DB
|14BD39| db $C0, $80
|14BD3B| db $22 ; Repeat byte
|14BD3C| db $00
|14BD3D| db $06 ; Raw block
|14BD3E| db $80, $80, $C0, $0F, $F0, $37, $C8
|14BD45| db $45 ; Repeat word
|14BD46| dw $08F7
|14BD48| db $05 ; Raw block
|14BD49| db $08, $F7, $08, $08, $2A, $2A
|14BD4F| db $25 ; Repeat byte
|14BD50| db $00
|14BD51| db $11 ; Raw block
|14BD52| db $F7, $D5, $D1, $2F, $E1, $1F, $F1, $0F
|14BD5A| db $F9, $07, $FD, $03, $09, $F7, $08, $08
|14BD62| db $89, $89
|14BD64| db $25 ; Repeat byte
|14BD65| db $00
|14BD66| db $13 ; Raw block
|14BD67| db $F7, $76, $71, $B1, $74, $AC, $7C, $A3
|14BD6F| db $5F, $B0, $AF, $DF, $18, $27, $17, $78
|14BD77| db $30, $F0, $0E, $03
|14BD7B| db $22 ; Repeat byte
|14BD7C| db $00
|14BD7D| db $04 ; Raw block
|14BD7E| db $C0, $80, $0F, $37, $CF
|14BD83| db $47 ; Repeat word
|14BD84| dw $C939
|14BD86| db $06 ; Raw block
|14BD87| db $35, $CD, $33, $CF, $30, $CF, $C0
|14BD8E| db $23 ; Repeat byte
|14BD8F| db $C6
|14BD90| db $13 ; Raw block
|14BD91| db $C2, $40, $C0, $84, $7F, $82, $7E, $8C
|14BD99| db $74, $B6, $4E, $C4, $3C, $A6, $7E, $63
|14BDA1| db $FF, $71, $FF, $00
|14BDA5| db $44 ; Repeat word
|14BDA6| dw $0301
|14BDA8| db $11 ; Raw block
|14BDA9| db $00, $00, $CE, $3F, $1D, $FE, $39, $FE
|14BDB1| db $71, $FE, $E9, $F6, $FD, $E2, $DF, $E0
|14BDB9| db $D8, $E7
|14BDBB| db $27 ; Repeat byte
|14BDBC| db $00
|14BDBD| db $01 ; Raw block
|14BDBE| db $17, $EF
|14BDC0| db $49 ; Repeat word
|14BDC1| dw $E9D9
|14BDC3| db $04 ; Raw block
|14BDC4| db $39, $C9, $F9, $09, $00
|14BDC9| db $26 ; Repeat byte
|14BDCA| db $06
|14BDCB| db $E0, $3F ; EXT Raw block
|14BDCD| db $DF, $30, $B9, $69, $78, $E8, $FC, $EC
|14BDD5| db $F6, $EE, $FB, $E7, $FC, $C3, $E6, $99
|14BDDD| db $30, $66, $E7, $E3, $E1, $E0, $C0, $80
|14BDE5| db $FF, $FC, $FE, $71, $F8, $87, $71, $4F
|14BDED| db $1F, $20, $3A, $36, $4A, $CE, $C1, $C7
|14BDF5| db $FC, $70, $00, $80, $C0, $C1, $31, $38
|14BDFD| db $C6, $39, $2E, $D5, $B3, $CE, $C2, $3E
|14BE05| db $07, $FF, $9F, $7F, $5F, $3F, $6F, $5F
|14BE0D| db $22 ; Repeat byte
|14BE0E| db $00
|14BE0F| db $00 ; Raw block
|14BE10| db $01
|14BE11| db $83 ; Copy past
|14BE12| dw $0013
|14BE14| db $37 ; Repeat byte
|14BE15| db $00
|14BE16| db $07 ; Raw block
|14BE17| db $FF, $E3, $FF, $DC, $F3, $D2, $F9, $D9
|14BE1F| db $83 ; Copy past
|14BE20| dw $00C6
|14BE22| db $1B ; Raw block
|14BE23| db $F8, $F7, $FD, $F3, $E3, $C0, $CC, $C6
|14BE2B| db $E3, $E1, $F0, $F0, $9A, $7D, $B6, $79
|14BE33| db $69, $F6, $89, $77, $7D, $83, $6F, $DD
|14BE3B| db $B7, $AE, $9B, $92
|14BE3F| db $25 ; Repeat byte
|14BE40| db $00
|14BE41| db $04 ; Raw block
|14BE42| db $40, $64, $0C, $FF, $1F
|14BE47| db $44 ; Repeat word
|14BE48| dw $7FFF
|14BE4A| db $01 ; Raw block
|14BE4B| db $38, $78
|14BE4D| db $43 ; Repeat word
|14BE4E| dw $E0C0
|14BE50| db $01 ; Raw block
|14BE51| db $91, $91
|14BE53| db $23 ; Repeat byte
|14BE54| db $00
|14BE55| db $E0, $2D ; EXT Raw block
|14BE57| db $87, $1F, $1F, $6E, $FF, $98, $DE, $82
|14BE5F| db $FE, $8E, $E0, $C2, $F0, $11, $BC, $2D
|14BE67| db $F2, $72, $E4, $A6, $00, $27, $0F, $1D
|14BE6F| db $3E, $7A, $3D, $39, $ED, $D7, $D9, $AF
|14BE77| db $B1, $5F, $A1, $7F, $82, $7F, $87, $7D
|14BE7F| db $8F, $7B, $9D, $77, $C0, $80
|14BE85| db $25 ; Repeat byte
|14BE86| db $00
|14BE87| db $17 ; Raw block
|14BE88| db $11, $11, $20, $20, $47, $47, $8B, $8F
|14BE90| db $0B, $0F, $0D, $0F, $2C, $2F, $0D, $0E
|14BE98| db $EE, $DF, $B8, $70, $F0, $F0, $D0, $F0
|14BEA0| db $23 ; Repeat byte
|14BEA1| db $10
|14BEA2| db $01 ; Raw block
|14BEA3| db $C7, $D7
|14BEA5| db $45 ; Repeat word
|14BEA6| dw $FFEF
|14BEA8| db $06 ; Raw block
|14BEA9| db $00, $FF, $FF, $00, $EF, $EF, $28
|14BEB0| db $24 ; Repeat byte
|14BEB1| db $00
|14BEB2| db $43 ; Repeat word
|14BEB3| dw $0E0D
|14BEB5| db $01 ; Raw block
|14BEB6| db $F5, $F6
|14BEB8| db $43 ; Repeat word
|14BEB9| dw $FAF9
|14BEBB| db $0A ; Raw block
|14BEBC| db $FD, $FE, $01, $FE, $FF, $00, $F0, $F0
|14BEC4| db $08, $04, $04
|14BEC7| db $22 ; Repeat byte
|14BEC8| db $00
|14BEC9| db $07 ; Raw block
|14BECA| db $78, $87, $74, $8B, $73, $8C, $73, $8F
|14BED2| db $47 ; Repeat word
|14BED3| dw $0FF0
|14BED5| db $23 ; Repeat byte
|14BED6| db $80
|14BED7| db $23 ; Repeat byte
|14BED8| db $00
|14BED9| db $0F ; Raw block
|14BEDA| db $70, $FF, $58, $FF, $79, $FE, $7A, $FD
|14BEE2| db $36, $FA, $0C, $F4, $19, $E9, $2B, $DB
|14BEEA| db $23 ; Repeat byte
|14BEEB| db $00
|14BEEC| db $13 ; Raw block
|14BEED| db $01, $03, $06, $04, $62, $E3, $61, $E2
|14BEF5| db $23, $E1, $33, $F1, $13, $F1, $9B, $79
|14BEFD| db $CA, $B9, $E5, $DC
|14BF01| db $22 ; Repeat byte
|14BF02| db $1C
|14BF03| db $19 ; Raw block
|14BF04| db $0C, $0C, $04, $04, $02, $C1, $41, $81
|14BF0C| db $81, $88, $88, $60, $A0, $50, $B0, $AF
|14BF14| db $DF, $DF, $E0, $6F, $F0, $3E, $7E, $77
|14BF1C| db $1F, $0F
|14BF1E| db $22 ; Repeat byte
|14BF1F| db $00
|14BF20| db $13 ; Raw block
|14BF21| db $65, $E7, $BD, $7F, $D9, $3F, $7E, $82
|14BF29| db $47, $FF, $7F, $FF, $3E, $FF, $03, $FC
|14BF31| db $18, $00, $00, $01
|14BF35| db $23 ; Repeat byte
|14BF36| db $00
|14BF37| db $01 ; Raw block
|14BF38| db $6E, $5E
|14BF3A| db $43 ; Repeat word
|14BF3B| dw $5D6D
|14BF3D| db $0C ; Raw block
|14BF3E| db $E8, $D8, $B8, $D8, $58, $B8, $B0, $70
|14BF46| db $71, $F1, $81, $82, $82
|14BF4B| db $22 ; Repeat byte
|14BF4C| db $07
|14BF4D| db $01 ; Raw block
|14BF4E| db $0F, $0E
|14BF50| db $22 ; Repeat byte
|14BF51| db $FF
|14BF52| db $E0, $25 ; EXT Raw block
|14BF54| db $FE, $FF, $F8, $FC, $F3, $F8, $E7, $F1
|14BF5C| db $CF, $E2, $9F, $C5, $3E, $FF, $FE, $F8
|14BF64| db $F0, $E0, $C0, $80, $00, $FF, $80, $D0
|14BF6C| db $2F, $10, $EF, $17, $EF, $D0, $EF, $3F
|14BF74| db $C0, $C0, $3F, $00, $FF, $80
|14BF7A| db $26 ; Repeat byte
|14BF7B| db $00
|14BF7C| db $05 ; Raw block
|14BF7D| db $FE, $E1, $F2, $CD, $F3, $CC
|14BF83| db $45 ; Repeat word
|14BF84| dw $CDF6
|14BF86| db $04 ; Raw block
|14BF87| db $F7, $CC, $F5, $CE, $E0
|14BF8C| db $26 ; Repeat byte
|14BF8D| db $C0
|14BF8E| db $E0, $57 ; EXT Raw block
|14BF90| db $DB, $D2, $7B, $F2, $1B, $EA, $F5, $16
|14BF98| db $3F, $FD, $3E, $FA, $0C, $F4, $F4, $0C
|14BFA0| db $24, $04, $04, $08, $00, $01, $03, $03
|14BFA8| db $11, $11, $10, $10, $90, $90, $0F, $1F
|14BFB0| db $2F, $30, $57, $6F, $B8, $D8, $60, $A0
|14BFB8| db $EE, $EF, $6F, $E0, $C0, $80, $07, $1F
|14BFC0| db $DE, $A0, $EE, $9C, $FF, $08, $98, $1F
|14BFC8| db $DC, $9B, $FF, $90, $FE, $A2, $FF, $23
|14BFD0| db $21, $3D, $3E, $7F, $3F, $17, $37, $36
|14BFD8| db $99, $6F, $B1, $5F, $E1, $BF, $C1, $BF
|14BFE0| db $E1, $DF, $E2, $DF, $E7, $DD, $EF, $DB
|14BFE8| db $83 ; Copy past
|14BFE9| dw $0013
|14BFEB| db $23 ; Repeat byte
|14BFEC| db $C0
|14BFED| db $19 ; Raw block
|14BFEE| db $4D, $4E, $0D, $0E, $1D, $1E, $0D, $0E
|14BFF6| db $FD, $FE, $05, $0E, $01, $06, $0F, $0C
|14BFFE| db $B0, $F0, $E0, $F0, $00, $F0, $F8, $F0
|14C006| db $FF, $00
|14C008| db $45 ; Repeat word
|14C009| dw $F708
|14C00B| db $07 ; Raw block
|14C00C| db $F7, $FF, $08, $08, $48, $48, $0A, $0A
|14C014| db $24 ; Repeat byte
|14C015| db $00
|14C016| db $0A ; Raw block
|14C017| db $F7, $B7, $F5, $0C, $F4, $1C, $F4, $28
|14C01F| db $F7, $4F, $F0
|14C022| db $44 ; Repeat word
|14C023| dw $7408
|14C025| db $10 ; Raw block
|14C026| db $77, $0F, $70, $03, $03, $00, $00, $83
|14C02E| db $83, $80, $80, $F0, $0F, $F6, $0F, $F7
|14C036| db $0F
|14C037| db $45 ; Repeat word
|14C038| dw $0DF5
|14C03A| db $03 ; Raw block
|14C03B| db $75, $0D, $35, $0D
|14C03F| db $22 ; Repeat byte
|14C040| db $00
|14C041| db $22 ; Repeat byte
|14C042| db $02
|14C043| db $12 ; Raw block
|14C044| db $82, $C2, $E0, $FF, $C7, $F8, $8F, $F0
|14C04C| db $1B, $E7, $34, $CF, $6F, $98, $64, $9A
|14C054| db $EA, $14, $FF
|14C057| db $84 ; Copy past
|14C058| dw $0282
|14C05A| db $E0, $29 ; EXT Raw block
|14C05C| db $83, $05, $EB, $14, $EB, $16, $65, $9B
|14C064| db $33, $CC, $18, $E7, $0F, $F0, $C7, $F8
|14C06C| db $F0, $FF, $04, $06, $83, $C0, $E0, $F0
|14C074| db $F8, $FF, $B0, $7F, $5F, $3F, $67, $5F
|14C07C| db $10, $2F, $9F, $D0, $87, $07, $E0, $E0
|14C084| db $3F, $FF
|14C086| db $83 ; Copy past
|14C087| dw $0014
|14C089| db $11 ; Raw block
|14C08A| db $20, $78, $1F, $00, $1E, $E1, $E2, $1D
|14C092| db $1A, $FD, $7A, $FD, $FF, $00, $7E, $FF
|14C09A| db $81, $81
|14C09C| db $27 ; Repeat byte
|14C09D| db $00
|14C09E| db $01 ; Raw block
|14C09F| db $7E, $FF
|14C0A1| db $8F ; Copy past
|14C0A2| dw $0210
|14C0A4| db $22 ; Repeat byte
|14C0A5| db $1C
|14C0A6| db $84 ; Copy past
|14C0A7| dw $0223
|14C0A9| db $09 ; Raw block
|14C0AA| db $41, $7E, $09, $0E, $85, $86, $C5, $C6
|14C0B2| db $65, $E6
|14C0B4| db $45 ; Repeat word
|14C0B5| dw $66A5
|14C0B7| db $03 ; Raw block
|14C0B8| db $80, $F0, $78, $38
|14C0BC| db $23 ; Repeat byte
|14C0BD| db $18
|14C0BE| db $43 ; Repeat word
|14C0BF| dw $3DCE
|14C0C1| db $0B ; Raw block
|14C0C2| db $CF, $3C, $CD, $3E, $CC, $3F, $CE, $3F
|14C0CA| db $C5, $3D, $C4, $3C
|14C0CE| db $25 ; Repeat byte
|14C0CF| db $00
|14C0D0| db $08 ; Raw block
|14C0D1| db $02, $03, $C3, $3C, $81, $7E, $80, $7F
|14C0D9| db $BC
|14C0DA| db $48 ; Repeat word
|14C0DB| dw $BE7F
|14C0DD| db $27 ; Repeat byte
|14C0DE| db $00
|14C0DF| db $1E ; Raw block
|14C0E0| db $9F, $00, $DF, $90, $7F, $98, $FE, $1A
|14C0E8| db $FF, $0B, $7F, $82, $DF, $E1, $F7, $F8
|14C0F0| db $7A, $3B, $1B, $1B, $0A, $02, $01, $00
|14C0F8| db $FF, $00, $C1, $3E, $80, $7F, $BC
|14C0FF| db $48 ; Repeat word
|14C100| dw $BE7F
|14C102| db $27 ; Repeat byte
|14C103| db $00
|14C104| db $03 ; Raw block
|14C105| db $83, $7C, $93, $7C
|14C109| db $4B ; Repeat word
|14C10A| dw $79B6
|14C10C| db $27 ; Repeat byte
|14C10D| db $00
|14C10E| db $86 ; Copy past
|14C10F| dw $0180
|14C111| db $44 ; Repeat word
|14C112| dw $817F
|14C114| db $05 ; Raw block
|14C115| db $83, $7F, $87, $7F, $C0, $80
|14C11B| db $25 ; Repeat byte
|14C11C| db $00
|14C11D| db $1F ; Raw block
|14C11E| db $0D, $0E, $2C, $2F, $08, $0F, $00, $0F
|14C126| db $4F, $4F, $80, $80, $40, $40, $20, $20
|14C12E| db $F0, $D0, $F0, $F0, $B0, $7F, $BF, $DF
|14C136| db $28, $28, $0A, $0A, $08, $08, $C3, $CB
|14C13E| db $47 ; Repeat word
|14C13F| dw $FFF7
|14C141| db $03 ; Raw block
|14C142| db $D7, $F5, $F7, $34
|14C146| db $23 ; Repeat byte
|14C147| db $00
|14C148| db $43 ; Repeat word
|14C149| dw $720E
|14C14B| db $04 ; Raw block
|14C14C| db $0C, $73, $CF, $F0, $CA
|14C151| db $43 ; Repeat word
|14C152| dw $EAF4
|14C154| db $0A ; Raw block
|14C155| db $F5, $FB, $F4, $81, $81, $80, $00, $01
|14C15D| db $01, $00, $00
|14C160| db $43 ; Repeat word
|14C161| dw $0D35
|14C163| db $E0, $28 ; EXT Raw block
|14C165| db $34, $0C, $36, $0E, $FB, $07, $3D, $03
|14C16D| db $1E, $01, $0F, $00, $C2, $C2, $C3, $C1
|14C175| db $00, $C0, $E0, $F0, $9F, $90, $CB, $CC
|14C17D| db $E5, $E6, $31, $F1, $3C, $FC, $3F, $FF
|14C185| db $C7, $3F, $70, $8F, $60, $30, $18, $0E
|14C18D| db $03
|14C18E| db $22 ; Repeat byte
|14C18F| db $00
|14C190| db $02 ; Raw block
|14C191| db $03, $F2, $F7
|14C194| db $43 ; Repeat word
|14C195| dw $FD0E
|14C197| db $09 ; Raw block
|14C198| db $FE, $0A, $0D, $F5, $FB, $CA, $F6, $37
|14C1A0| db $CF, $0C
|14C1A2| db $22 ; Repeat byte
|14C1A3| db $00
|14C1A4| db $13 ; Raw block
|14C1A5| db $F0, $00, $01, $00, $80, $7F, $FF, $00
|14C1AD| db $9F, $7F, $60, $E0, $80, $80, $3F, $7F
|14C1B5| db $C0, $FF, $7F, $80
|14C1B9| db $22 ; Repeat byte
|14C1BA| db $00
|14C1BB| db $00 ; Raw block
|14C1BC| db $1F
|14C1BD| db $83 ; Copy past
|14C1BE| dw $0536
|14C1C0| db $4B ; Repeat word
|14C1C1| dw $3DCE
|14C1C3| db $43 ; Repeat word
|14C1C4| dw $3DC6
|14C1C6| db $27 ; Repeat byte
|14C1C7| db $00
|14C1C8| db $0F ; Raw block
|14C1C9| db $F1, $CE, $F5, $CE, $FD, $CE, $ED, $9E
|14C1D1| db $CD, $BE, $CD, $3E, $DD, $3E, $DE, $3D
|14C1D9| db $22 ; Repeat byte
|14C1DA| db $C0
|14C1DB| db $01 ; Raw block
|14C1DC| db $80, $80
|14C1DE| db $22 ; Repeat byte
|14C1DF| db $00
|14C1E0| db $10 ; Raw block
|14C1E1| db $B5, $76, $9D, $7E, $8D, $7E, $81, $7E
|14C1E9| db $C1, $3E, $E1, $9E, $F1, $CE, $FF, $E0
|14C1F1| db $08
|14C1F2| db $23 ; Repeat byte
|14C1F3| db $00
|14C1F4| db $13 ; Raw block
|14C1F5| db $80, $C0, $E0, $C6, $3E, $C3, $3F, $E0
|14C1FD| db $9F, $F0, $CF, $F8, $E7, $FC, $F3, $FF
|14C205| db $F8, $FF, $FC, $01
|14C209| db $83 ; Copy past
|14C20A| dw $0584
|14C20C| db $02 ; Raw block
|14C20D| db $F0, $F8, $FC
|14C210| db $4F ; Repeat word
|14C211| dw $7FBE
|14C213| db $27 ; Repeat byte
|14C214| db $00
|14C215| db $0A ; Raw block
|14C216| db $9F, $7F, $90, $70, $CF, $3F, $60, $9F
|14C21E| db $BF, $C0, $C0
|14C221| db $84 ; Copy past
|14C222| dw $01BB
|14C224| db $01 ; Raw block
|14C225| db $00, $0F
|14C227| db $25 ; Repeat byte
|14C228| db $00
|14C229| db $05 ; Raw block
|14C22A| db $BE, $7F, $BA, $7B, $A2, $63
|14C230| db $43 ; Repeat word
|14C231| dw $7FBE
|14C233| db $43 ; Repeat word
|14C234| dw $7F80
|14C236| db $04 ; Raw block
|14C237| db $FF, $00, $00, $04, $1C
|14C23C| db $24 ; Repeat byte
|14C23D| db $00
|14C23E| db $0F ; Raw block
|14C23F| db $B7, $78, $A5, $7A, $94, $7B, $B4, $7B
|14C247| db $B5, $7A, $A7, $78, $A6, $79, $BD, $73
|14C24F| db $27 ; Repeat byte
|14C250| db $00
|14C251| db $FF ; End of GFX 54

;===================================================================================================

GFX_55:
|14C252| db $E0, $2B ; EXT Raw block
|14C254| db $D9, $39, $CC, $3C, $E6, $9E, $E3, $9F
|14C25C| db $F9, $C7, $FC, $E3, $FC, $FB, $FF, $F8
|14C264| db $06, $03, $81, $80, $C0, $E0, $F8, $F8
|14C26C| db $1F, $E0, $81, $FE, $62, $7D, $16, $19
|14C274| db $F4, $FB, $74, $FB, $06, $F9, $85, $7A
|14C27C| db $00, $00, $80, $E0
|14C280| db $23 ; Repeat byte
|14C281| db $00
|14C282| db $22 ; Repeat byte
|14C283| db $FF
|14C284| db $E0, $24 ; EXT Raw block
|14C286| db $E0, $E9, $D9, $DB, $B2, $F6, $A1, $88
|14C28E| db $47, $93, $4F, $A7, $5F, $00, $00, $06
|14C296| db $0C, $18, $30, $20, $00, $FD, $C2, $C2
|14C29E| db $3D, $9D, $7F, $66, $E6, $C3, $C2, $4D
|14C2A6| db $C0, $0D, $C0, $ED, $E0
|14C2AB| db $22 ; Repeat byte
|14C2AC| db $00
|14C2AD| db $13 ; Raw block
|14C2AE| db $19, $3D, $3F, $3F, $1F, $DF, $FF, $AF
|14C2B6| db $DF, $B3, $EF, $DC, $F7, $FF, $E8, $8C
|14C2BE| db $F4, $C7, $F8, $F0
|14C2C2| db $22 ; Repeat byte
|14C2C3| db $FF
|14C2C4| db $E0, $2D ; EXT Raw block
|14C2C6| db $DF, $EB, $E7, $F3, $F8, $FF, $E1, $FF
|14C2CE| db $D9, $FD, $3F, $E4, $ED, $88, $9E, $10
|14C2D6| db $7E, $70, $FF, $11, $3E, $D0, $FF, $E6
|14C2DE| db $DB, $77, $EF, $8B, $02, $C7, $8D, $73
|14C2E6| db $8C, $73, $8E, $71, $86, $79, $83, $7C
|14C2EE| db $9C, $7F, $B3, $73, $B1, $71
|14C2F4| db $25 ; Repeat byte
|14C2F5| db $00
|14C2F6| db $11 ; Raw block
|14C2F7| db $0C, $0E, $E0, $9F, $FF, $A0, $7F, $BB
|14C2FF| db $5F, $BB, $2D, $DB, $AD, $5B, $65, $9B
|14C307| db $A4, $DB
|14C309| db $27 ; Repeat byte
|14C30A| db $00
|14C30B| db $43 ; Repeat word
|14C30C| dw $00F7
|14C30E| db $47 ; Repeat word
|14C30F| dw $00FB
|14C311| db $43 ; Repeat word
|14C312| dw $00F7
|14C314| db $27 ; Repeat byte
|14C315| db $3F
|14C316| db $14 ; Raw block
|14C317| db $92, $41, $A9, $60, $B4, $70, $9B, $78
|14C31F| db $CC, $3C, $E7, $9F, $F0, $CF, $FF, $E0
|14C327| db $3C, $1E, $0F, $07, $03
|14C32C| db $3A ; Repeat byte
|14C32D| db $00
|14C32E| db $43 ; Repeat word
|14C32F| dw $7090
|14C331| db $03 ; Raw block
|14C332| db $E0, $1F, $FF, $00
|14C336| db $43 ; Repeat word
|14C337| dw $7090
|14C339| db $83 ; Copy past
|14C33A| dw $010C
|14C33C| db $02 ; Raw block
|14C33D| db $0F, $0F, $00
|14C340| db $83 ; Copy past
|14C341| dw $0117
|14C343| db $03 ; Raw block
|14C344| db $00, $FC, $FF, $F8
|14C348| db $43 ; Repeat word
|14C349| dw $F0FE
|14C34B| db $07 ; Raw block
|14C34C| db $FC, $F0, $FC, $F8, $FE, $F8, $FF, $FC
|14C354| db $2E ; Repeat byte
|14C355| db $FF
|14C356| db $09 ; Raw block
|14C357| db $E3, $FF, $C1, $FF, $80, $FF, $00, $C3
|14C35F| db $00, $81
|14C361| db $27 ; Repeat byte
|14C362| db $FF
|14C363| db $01 ; Raw block
|14C364| db $00, $01
|14C366| db $44 ; Repeat word
|14C367| dw $0300
|14C369| db $43 ; Repeat word
|14C36A| dw $0007
|14C36C| db $43 ; Repeat word
|14C36D| dw $000F
|14C36F| db $00 ; Raw block
|14C370| db $1E
|14C371| db $27 ; Repeat byte
|14C372| db $FF
|14C373| db $07 ; Raw block
|14C374| db $00, $FC, $00, $F0, $00, $E0, $00, $C0
|14C37C| db $43 ; Repeat word
|14C37D| dw $8000
|14C37F| db $23 ; Repeat byte
|14C380| db $00
|14C381| db $27 ; Repeat byte
|14C382| db $FF
|14C383| db $43 ; Repeat word
|14C384| dw $76BA
|14C386| db $45 ; Repeat word
|14C387| dw $77BB
|14C389| db $07 ; Raw block
|14C38A| db $BA, $76, $98, $76, $99, $77, $01, $01
|14C392| db $22 ; Repeat byte
|14C393| db $00
|14C394| db $08 ; Raw block
|14C395| db $01, $01, $00, $C5, $3B, $FD, $83, $FD
|14C39D| db $C3
|14C39E| db $43 ; Repeat word
|14C39F| dw $FBFD
|14C3A1| db $08 ; Raw block
|14C3A2| db $FC, $FB, $FE, $FD, $FF, $FE, $00, $80
|14C3AA| db $C0
|14C3AB| db $22 ; Repeat byte
|14C3AC| db $F8
|14C3AD| db $13 ; Raw block
|14C3AE| db $FC, $FE, $A0, $58, $AE, $5E, $A9, $5F
|14C3B6| db $AF, $58, $AB, $5C, $AA, $5D, $A2, $5C
|14C3BE| db $A6, $58, $07, $01
|14C3C2| db $23 ; Repeat byte
|14C3C3| db $00
|14C3C4| db $11 ; Raw block
|14C3C5| db $01, $01, $B7, $49, $9D, $62, $AD, $73
|14C3CD| db $9E, $55, $9D, $54, $9E, $56, $8B, $47
|14C3D5| db $9D, $4B
|14C3D7| db $22 ; Repeat byte
|14C3D8| db $00
|14C3D9| db $0A ; Raw block
|14C3DA| db $20, $22, $21, $30, $30, $36, $D2, $DF
|14C3E2| db $ED, $EF, $F1
|14C3E5| db $43 ; Repeat word
|14C3E6| dw $F8F6
|14C3E8| db $E0, $41 ; EXT Raw block
|14C3EA| db $F7, $F9, $F7, $FA, $FA, $FD, $CD, $E2
|14C3F2| db $F2, $FB, $FB, $FA, $F8, $FD, $F1, $FE
|14C3FA| db $ED, $F1, $DF, $EE, $BD, $D0, $B1, $E1
|14C402| db $23, $CE, $6D, $90, $53, $A1, $FF, $FE
|14C40A| db $F1, $EF, $DE, $FD, $FF, $FE, $98, $78
|14C412| db $CC, $3C, $C6, $3E, $E3, $9F, $F1, $AF
|14C41A| db $F8, $E7, $FD, $E2, $FF, $F8, $07, $03
|14C422| db $01, $80, $A0, $E0, $E0, $F8, $DF, $E0
|14C42A| db $7F, $7F
|14C42C| db $23 ; Repeat byte
|14C42D| db $00
|14C42E| db $10 ; Raw block
|14C42F| db $FF, $FF, $08, $F7, $9D, $6A, $FF, $99
|14C437| db $00, $80, $FF, $FF, $00, $00, $08, $99
|14C43F| db $F0
|14C440| db $44 ; Repeat word
|14C441| dw $FF00
|14C443| db $04 ; Raw block
|14C444| db $C0, $3F, $C0, $00, $FF
|14C449| db $43 ; Repeat word
|14C44A| dw $C03F
|14C44C| db $23 ; Repeat byte
|14C44D| db $3F
|14C44E| db $01 ; Raw block
|14C44F| db $00, $3F
|14C451| db $22 ; Repeat byte
|14C452| db $00
|14C453| db $14 ; Raw block
|14C454| db $15, $EC, $F3, $0E, $08, $06, $FC, $02
|14C45C| db $03, $05, $FE, $FD, $01, $FE, $FF, $00
|14C464| db $03, $01, $F1, $F9, $F8
|14C469| db $22 ; Repeat byte
|14C46A| db $00
|14C46B| db $05 ; Raw block
|14C46C| db $9E, $5F, $A0, $61, $DE, $3F
|14C472| db $43 ; Repeat word
|14C473| dw $3EC1
|14C475| db $07 ; Raw block
|14C476| db $61, $9E, $3F, $C0, $1F, $E0, $20, $1E
|14C47E| db $22 ; Repeat byte
|14C47F| db $00
|14C480| db $02 ; Raw block
|14C481| db $80, $C0, $E0
|14C484| db $23 ; Repeat byte
|14C485| db $08
|14C486| db $03 ; Raw block
|14C487| db $00, $FF, $FF, $00
|14C48B| db $24 ; Repeat byte
|14C48C| db $80
|14C48D| db $06 ; Raw block
|14C48E| db $7F, $FF, $00, $F7, $F7, $00, $00
|14C495| db $83 ; Copy past
|14C496| dw $022A
|14C498| db $2B ; Repeat byte
|14C499| db $FF
|14C49A| db $02 ; Raw block
|14C49B| db $FE, $FF, $FC
|14C49E| db $28 ; Repeat byte
|14C49F| db $FF
|14C4A0| db $05 ; Raw block
|14C4A1| db $C0, $FF, $80, $FE, $00, $E0
|14C4A7| db $48 ; Repeat word
|14C4A8| dw $C000
|14C4AA| db $00 ; Raw block
|14C4AB| db $80
|14C4AC| db $27 ; Repeat byte
|14C4AD| db $FF
|14C4AE| db $03 ; Raw block
|14C4AF| db $00, $3E, $00, $7E
|14C4B3| db $44 ; Repeat word
|14C4B4| dw $FC00
|14C4B6| db $06 ; Raw block
|14C4B7| db $F8, $00, $F0, $00, $C0, $00, $00
|14C4BE| db $27 ; Repeat byte
|14C4BF| db $FF
|14C4C0| db $26 ; Repeat byte
|14C4C1| db $00
|14C4C2| db $08 ; Raw block
|14C4C3| db $01, $00, $07, $00, $1F, $00, $7F, $00
|14C4CB| db $FE
|14C4CC| db $27 ; Repeat byte
|14C4CD| db $FF
|14C4CE| db $01 ; Raw block
|14C4CF| db $B9, $77
|14C4D1| db $43 ; Repeat word
|14C4D2| dw $7BB4
|14C4D4| db $09 ; Raw block
|14C4D5| db $B2, $7D, $AA, $7D, $9D, $7E, $B6, $77
|14C4DD| db $92, $73
|14C4DF| db $25 ; Repeat byte
|14C4E0| db $00
|14C4E1| db $11 ; Raw block
|14C4E2| db $08, $0C, $2E, $DF, $31, $CE, $2F, $D0
|14C4EA| db $A3, $5C, $E3, $1C, $63, $9C, $37, $C8
|14C4F2| db $9D, $E2
|14C4F4| db $27 ; Repeat byte
|14C4F5| db $00
|14C4F6| db $85 ; Copy past
|14C4F7| dw $01E0
|14C4F9| db $43 ; Repeat word
|14C4FA| dw $F8F6
|14C4FC| db $8D ; Copy past
|14C4FD| dw $01EA
|14C4FF| db $17 ; Raw block
|14C500| db $3C, $C3, $5A, $BD, $AD, $6E, $ED, $6E
|14C508| db $D5, $6E, $A9, $46, $E5, $22, $E7, $20
|14C510| db $C3, $81, $10, $10, $00, $10, $18, $18
|14C518| db $43 ; Repeat word
|14C519| dw $00FF
|14C51B| db $47 ; Repeat word
|14C51C| dw $00C0
|14C51E| db $04 ; Raw block
|14C51F| db $FF, $00, $FF, $7F, $00
|14C524| db $25 ; Repeat byte
|14C525| db $7F
|14C526| db $E0, $22 ; EXT Raw block
|14C528| db $00, $A3, $CE, $05, $9C, $4D, $B1, $5E
|14C530| db $A6, $98, $2F, $50, $9F, $F8, $97, $B7
|14C538| db $CF, $FD, $FB, $FE, $F9, $77, $AF, $A7
|14C540| db $CF, $B5, $3B, $BD, $3B, $BC, $3B, $BB
|14C548| db $3C, $80, $00
|14C54B| db $43 ; Repeat word
|14C54C| dw $7F80
|14C54E| db $01 ; Raw block
|14C54F| db $FF, $00
|14C551| db $23 ; Repeat byte
|14C552| db $40
|14C553| db $00 ; Raw block
|14C554| db $7F
|14C555| db $22 ; Repeat byte
|14C556| db $00
|14C557| db $07 ; Raw block
|14C558| db $68, $77, $D7, $EF, $AF, $DF, $DF, $3F
|14C560| db $22 ; Repeat byte
|14C561| db $00
|14C562| db $00 ; Raw block
|14C563| db $FF
|14C564| db $84 ; Copy past
|14C565| dw $028C
|14C567| db $22 ; Repeat byte
|14C568| db $00
|14C569| db $00 ; Raw block
|14C56A| db $FF
|14C56B| db $22 ; Repeat byte
|14C56C| db $00
|14C56D| db $02 ; Raw block
|14C56E| db $E0, $00, $EF
|14C571| db $44 ; Repeat word
|14C572| dw $DF00
|14C574| db $43 ; Repeat word
|14C575| dw $01DE
|14C577| db $43 ; Repeat word
|14C578| dw $01EE
|14C57A| db $22 ; Repeat byte
|14C57B| db $FF
|14C57C| db $24 ; Repeat byte
|14C57D| db $FC
|14C57E| db $E0, $2F ; EXT Raw block
|14C580| db $8C, $7C, $C6, $BE, $C3, $BF, $E1, $DF
|14C588| db $B0, $AF, $98, $97, $8E, $89, $FD, $FE
|14C590| db $03, $01, $00, $00, $40, $60, $70, $00
|14C598| db $80, $7F, $2B, $D4, $7E, $81, $33, $CC
|14C5A0| db $7A, $85, $5F, $A0, $7B, $84, $2E, $D1
|14C5A8| db $80, $29, $7E, $13, $7A, $5D, $7B, $2E
|14C5B0| db $4F ; Repeat word
|14C5B1| dw $00FF
|14C5B3| db $08 ; Raw block
|14C5B4| db $DD, $C8, $03, $37, $77, $36, $81, $DB
|14C5BC| db $00
|14C5BD| db $22 ; Repeat byte
|14C5BE| db $FF
|14C5BF| db $0B ; Raw block
|14C5C0| db $BF, $BF, $9F, $9F, $8F, $8F, $87, $87
|14C5C8| db $83, $83, $81, $81
|14C5CC| db $84 ; Copy past
|14C5CD| dw $03EA
|14C5CF| db $0E ; Raw block
|14C5D0| db $78, $7C, $7E, $FF, $FF, $E4, $E4, $C0
|14C5D8| db $C0, $81, $81, $DD, $DD, $98, $98
|14C5DF| db $83 ; Copy past
|14C5E0| dw $043C
|14C5E2| db $22 ; Repeat byte
|14C5E3| db $FF
|14C5E4| db $13 ; Raw block
|14C5E5| db $FE, $E2, $E7, $FF, $FE, $ED, $12, $F3
|14C5ED| db $0C, $DE, $61, $C3, $7C, $FF, $FF, $00
|14C5F5| db $FF, $63, $9C, $FF
|14C5F9| db $28 ; Repeat byte
|14C5FA| db $00
|14C5FB| db $0E ; Raw block
|14C5FC| db $FF, $FF, $F1, $FF, $E5, $F3, $8B, $E7
|14C604| db $55, $8F, $6A, $9D, $AA, $DD, $DD
|14C60B| db $28 ; Repeat byte
|14C60C| db $FF
|14C60D| db $01 ; Raw block
|14C60E| db $FB, $F4
|14C610| db $43 ; Repeat word
|14C611| dw $FCF3
|14C613| db $45 ; Repeat word
|14C614| dw $FCFB
|14C616| db $02 ; Raw block
|14C617| db $03, $FC, $FF
|14C61A| db $28 ; Repeat byte
|14C61B| db $00
|14C61C| db $00 ; Raw block
|14C61D| db $87
|14C61E| db $44 ; Repeat word
|14C61F| dw $8F7F
|14C621| db $43 ; Repeat word
|14C622| dw $7F9F
|14C624| db $05 ; Raw block
|14C625| db $CF, $BF, $E0, $DF, $FF, $E0
|14C62B| db $24 ; Repeat byte
|14C62C| db $00
|14C62D| db $02 ; Raw block
|14C62E| db $80, $C0, $E0
|14C631| db $47 ; Repeat word
|14C632| dw $FFEF
|14C634| db $07 ; Raw block
|14C635| db $E8, $FF, $C7, $F8, $1F, $E7, $FF, $1F
|14C63D| db $25 ; Repeat byte
|14C63E| db $00
|14C63F| db $13 ; Raw block
|14C640| db $07, $1F, $C7, $24, $D7, $34, $ED, $1E
|14C648| db $75, $8E, $3B, $C6, $9D, $E2, $CF, $F0
|14C650| db $67, $F8, $18, $08
|14C654| db $83 ; Copy past
|14C655| dw $0284
|14C657| db $E0, $5D ; EXT Raw block
|14C659| db $F0, $F8, $00, $00, $06, $06, $C2, $C2
|14C661| db $C0, $20, $E0, $10, $F0, $88, $78, $44
|14C669| db $3D, $23, $FF, $F9, $3D, $1F, $0F, $07
|14C671| db $83, $C0, $74, $6C, $3A, $36, $3D, $3B
|14C679| db $0F, $0D, $06, $05, $03, $02, $0B, $0A
|14C681| db $03, $02, $83, $C1, $C0, $F0, $F8, $FC
|14C689| db $F4, $FC, $C0, $20, $CA, $0E, $94, $18
|14C691| db $A9, $31, $B2, $23, $95, $26, $97, $64
|14C699| db $BB, $2C, $1F, $31, $63, $46, $4C, $48
|14C6A1| db $08, $40, $CA, $B6, $6B, $57, $29, $17
|14C6A9| db $28, $97, $6C, $53, $4E, $71, $57, $68
|14C6B1| db $B7, $C8, $01, $80, $C0, $40
|14C6B7| db $22 ; Repeat byte
|14C6B8| db $80
|14C6B9| db $00 ; Raw block
|14C6BA| db $00
|14C6BB| db $43 ; Repeat word
|14C6BC| dw $58AA
|14C6BE| db $07 ; Raw block
|14C6BF| db $AB, $58, $A8, $58, $AF, $5F, $BF, $40
|14C6C7| db $83 ; Copy past
|14C6C8| dw $0294
|14C6CA| db $23 ; Repeat byte
|14C6CB| db $07
|14C6CC| db $23 ; Repeat byte
|14C6CD| db $00
|14C6CE| db $00 ; Raw block
|14C6CF| db $FF
|14C6D0| db $84 ; Copy past
|14C6D1| dw $0229
|14C6D3| db $02 ; Raw block
|14C6D4| db $80, $80, $FF
|14C6D7| db $44 ; Repeat word
|14C6D8| dw $00FF
|14C6DA| db $05 ; Raw block
|14C6DB| db $FF, $00, $00, $80, $FF, $7F
|14C6E1| db $23 ; Repeat byte
|14C6E2| db $00
|14C6E3| db $45 ; Repeat word
|14C6E4| dw $00FF
|14C6E6| db $00 ; Raw block
|14C6E7| db $F8
|14C6E8| db $44 ; Repeat word
|14C6E9| dw $FB00
|14C6EB| db $43 ; Repeat word
|14C6EC| dw $00F7
|14C6EE| db $00 ; Raw block
|14C6EF| db $00
|14C6F0| db $26 ; Repeat byte
|14C6F1| db $3F
|14C6F2| db $44 ; Repeat word
|14C6F3| dw $00FF
|14C6F5| db $22 ; Repeat byte
|14C6F6| db $00
|14C6F7| db $04 ; Raw block
|14C6F8| db $CF, $00, $FF, $00, $7B
|14C6FD| db $83 ; Copy past
|14C6FE| dw $03BB
|14C700| db $26 ; Repeat byte
|14C701| db $FF
|14C702| db $E0, $23 ; EXT Raw block
|14C704| db $7F, $FF, $7E, $FE, $7C, $FC, $78, $F8
|14C70C| db $70, $F0, $60, $E0, $40, $C0, $7F, $FF
|14C714| db $00, $01, $03, $07, $0F, $1F, $3F, $00
|14C71C| db $E3, $E3, $D8, $D8, $9C, $9C, $CD, $CD
|14C724| db $C0, $C0, $E4, $E4
|14C728| db $23 ; Repeat byte
|14C729| db $FF
|14C72A| db $06 ; Raw block
|14C72B| db $FC, $E7, $E3, $F2, $BF, $BF, $E6
|14C732| db $4C ; Repeat word
|14C733| dw $7FFF
|14C735| db $03 ; Raw block
|14C736| db $1D, $FF, $00, $FF
|14C73A| db $27 ; Repeat byte
|14C73B| db $00
|14C73C| db $2B ; Repeat byte
|14C73D| db $80
|14C73E| db $03 ; Raw block
|14C73F| db $C0, $C0, $FF, $FF
|14C743| db $25 ; Repeat byte
|14C744| db $7F
|14C745| db $01 ; Raw block
|14C746| db $3F, $00
|14C748| db $FF ; End of GFX 55

;===================================================================================================

GFX_56:
|14C749| db $E0, $23 ; EXT Raw block
|14C74B| db $00, $FF, $03, $FC, $05, $FB, $0A, $F6
|14C753| db $15, $ED, $35, $CD, $72, $AE, $50, $8E
|14C75B| db $FF, $FC, $F8, $F1, $E2, $C2, $81, $21
|14C763| db $8F, $6F, $80, $70, $40, $BF, $2C, $D3
|14C76B| db $13, $EC, $02, $FD
|14C76F| db $43 ; Repeat word
|14C770| dw $FF00
|14C772| db $07 ; Raw block
|14C773| db $10, $0F, $80, $C0, $EC, $FD, $FF, $FF
|14C77B| db $4F ; Repeat word
|14C77C| dw $3F20
|14C77E| db $27 ; Repeat byte
|14C77F| db $C0
|14C780| db $09 ; Raw block
|14C781| db $30, $3F, $18, $1F, $0C, $0F, $07, $07
|14C789| db $00, $00
|14C78B| db $23 ; Repeat byte
|14C78C| db $0E
|14C78D| db $11 ; Raw block
|14C78E| db $00, $00, $C0, $E0, $F0, $F8, $FF, $F1
|14C796| db $F1, $FF, $C7, $00, $28, $28, $D7, $FF
|14C79E| db $EF, $10
|14C7A0| db $47 ; Repeat word
|14C7A1| dw $00EF
|14C7A3| db $03 ; Raw block
|14C7A4| db $38, $D7, $00, $00
|14C7A8| db $23 ; Repeat byte
|14C7A9| db $10
|14C7AA| db $01 ; Raw block
|14C7AB| db $C7, $C7
|14C7AD| db $85 ; Copy past
|14C7AE| dw $0062
|14C7B0| db $46 ; Repeat word
|14C7B1| dw $C7EF
|14C7B3| db $04 ; Raw block
|14C7B4| db $83, $FF, $D7, $00, $00
|14C7B9| db $22 ; Repeat byte
|14C7BA| db $D7
|14C7BB| db $01 ; Raw block
|14C7BC| db $93, $00
|14C7BE| db $86 ; Copy past
|14C7BF| dw $0061
|14C7C1| db $45 ; Repeat word
|14C7C2| dw $0028
|14C7C4| db $00 ; Raw block
|14C7C5| db $6C
|14C7C6| db $84 ; Copy past
|14C7C7| dw $006F
|14C7C9| db $23 ; Repeat byte
|14C7CA| db $10
|14C7CB| db $11 ; Raw block
|14C7CC| db $7C, $FC, $3E, $FE, $BF, $7F, $5F, $BF
|14C7D4| db $69, $9F, $B1, $CF, $F8, $C7, $5C, $63
|14C7DC| db $03, $01
|14C7DE| db $24 ; Repeat byte
|14C7DF| db $00
|14C7E0| db $13 ; Raw block
|14C7E1| db $80, $7C, $FC, $7E, $FE, $26, $FE, $83
|14C7E9| db $7F, $C3, $3F, $E1, $1F, $F0, $0F, $F8
|14C7F1| db $07, $03, $01, $01
|14C7F5| db $24 ; Repeat byte
|14C7F6| db $00
|14C7F7| db $09 ; Raw block
|14C7F8| db $61, $E1, $33, $F3, $DF, $3F, $E7, $1F
|14C800| db $FC, $03
|14C802| db $45 ; Repeat word
|14C803| dw $00FF
|14C805| db $01 ; Raw block
|14C806| db $1E, $0C
|14C808| db $27 ; Repeat byte
|14C809| db $00
|14C80A| db $1B ; Raw block
|14C80B| db $F0, $F0, $18, $18, $0C, $0C, $C6, $C6
|14C813| db $E3, $E3, $31, $F1, $18, $F8, $FF, $0F
|14C81B| db $E7, $F3, $39, $1C, $0E, $07, $FF, $00
|14C823| db $E0, $1F, $FF, $3F
|14C827| db $43 ; Repeat word
|14C828| dw $00FF
|14C82A| db $84 ; Copy past
|14C82B| dw $010A
|14C82D| db $28 ; Repeat byte
|14C82E| db $00
|14C82F| db $09 ; Raw block
|14C830| db $F0, $3F, $78, $98, $3F, $C7, $1F, $E0
|14C838| db $07, $F8
|14C83A| db $45 ; Repeat word
|14C83B| dw $FF00
|14C83D| db $03 ; Raw block
|14C83E| db $80, $C7, $E0, $F8
|14C842| db $23 ; Repeat byte
|14C843| db $FF
|14C844| db $43 ; Repeat word
|14C845| dw $286C
|14C847| db $0F ; Raw block
|14C848| db $92, $92, $39, $45, $C7, $38, $6C, $38
|14C850| db $4C, $38, $5C, $38, $10, $10, $6C, $82
|14C858| db $23 ; Repeat byte
|14C859| db $00
|14C85A| db $43 ; Repeat word
|14C85B| dw $ABEF
|14C85D| db $01 ; Raw block
|14C85E| db $93, $93
|14C860| db $83 ; Copy past
|14C861| dw $013E
|14C863| db $0A ; Raw block
|14C864| db $EF, $BB, $CF, $BB, $DF, $BB, $93, $93
|14C86C| db $6D, $82, $00
|14C86F| db $22 ; Repeat byte
|14C870| db $83
|14C871| db $43 ; Repeat word
|14C872| dw $6CAB
|14C874| db $00 ; Raw block
|14C875| db $93
|14C876| db $84 ; Copy past
|14C877| dw $013D
|14C879| db $05 ; Raw block
|14C87A| db $AB, $7C, $8B, $7C, $9B, $7C
|14C880| db $83 ; Copy past
|14C881| dw $0148
|14C883| db $23 ; Repeat byte
|14C884| db $00
|14C885| db $0B ; Raw block
|14C886| db $95, $49, $8D, $55, $AD, $65, $8D, $65
|14C88E| db $CA, $26, $49, $97
|14C892| db $43 ; Repeat word
|14C893| dw $8F51
|14C895| db $1F ; Raw block
|14C896| db $22, $22, $12, $12, $11, $20, $A0, $A0
|14C89E| db $78, $EF, $3F, $B0, $5F, $DF, $AF, $6F
|14C8A6| db $90, $70, $90, $7F, $5E, $B1, $31, $CE
|14C8AE| db $00, $40, $20, $10, $0F, $00, $80, $CE
|14C8B6| db $44 ; Repeat word
|14C8B7| dw $FF00
|14C8B9| db $22 ; Repeat byte
|14C8BA| db $FF
|14C8BB| db $01 ; Raw block
|14C8BC| db $00, $00
|14C8BE| db $23 ; Repeat byte
|14C8BF| db $18
|14C8C0| db $01 ; Raw block
|14C8C1| db $01, $01
|14C8C3| db $23 ; Repeat byte
|14C8C4| db $00
|14C8C5| db $13 ; Raw block
|14C8C6| db $FF, $E7, $E7, $FE, $E0, $DF, $F0, $CF
|14C8CE| db $F2, $CD, $FB, $E4, $FF, $F0, $1F, $F8
|14C8D6| db $07, $FC, $00, $FF
|14C8DA| db $22 ; Repeat byte
|14C8DB| db $C0
|14C8DC| db $05 ; Raw block
|14C8DD| db $E0, $F0, $F8, $FC, $FF, $B3
|14C8E3| db $43 ; Repeat word
|14C8E4| dw $837C
|14C8E6| db $22 ; Repeat byte
|14C8E7| db $44
|14C8E8| db $03 ; Raw block
|14C8E9| db $BB, $FF, $EF, $10
|14C8ED| db $43 ; Repeat word
|14C8EE| dw $6C83
|14C8F0| db $03 ; Raw block
|14C8F1| db $00, $00, $38, $BB
|14C8F5| db $83 ; Copy past
|14C8F6| dw $0072
|14C8F8| db $04 ; Raw block
|14C8F9| db $D7, $38, $FF, $00, $83
|14C8FE| db $22 ; Repeat byte
|14C8FF| db $44
|14C900| db $83 ; Copy past
|14C901| dw $01E8
|14C903| db $43 ; Repeat word
|14C904| dw $28C7
|14C906| db $01 ; Raw block
|14C907| db $83, $83
|14C909| db $83 ; Copy past
|14C90A| dw $01F2
|14C90C| db $06 ; Raw block
|14C90D| db $93, $93, $54, $38, $7C, $00, $83
|14C914| db $22 ; Repeat byte
|14C915| db $44
|14C916| db $83 ; Copy past
|14C917| dw $01E8
|14C919| db $43 ; Repeat word
|14C91A| dw $2844
|14C91C| db $87 ; Copy past
|14C91D| dw $01F0
|14C91F| db $E0, $20 ; EXT Raw block
|14C921| db $2E, $31, $1F, $10, $17, $18, $0F, $08
|14C929| db $0B, $0C, $87, $84, $C5, $C6, $C2, $C3
|14C931| db $C0, $E0, $E0, $F0, $F0, $78, $38, $3C
|14C939| db $FE, $01, $FF, $00, $7F, $80, $27, $D8
|14C941| db $1B
|14C942| db $62 ; Increment fill
|14C943| db $FC
|14C944| db $03 ; Raw block
|14C945| db $E2, $E3, $01, $01
|14C949| db $25 ; Repeat byte
|14C94A| db $00
|14C94B| db $E0, $21 ; EXT Raw block
|14C94D| db $1C, $FE, $BF, $C0, $5F, $60, $27, $38
|14C955| db $18, $1F, $07, $07, $C0, $C0, $E3, $E3
|14C95D| db $FF, $FF, $00, $80, $C0, $E0, $F8, $3F
|14C965| db $1C, $00, $8E, $7E, $83, $7F, $C5, $3B
|14C96D| db $C4, $3B
|14C96F| db $43 ; Repeat word
|14C970| dw $1DE2
|14C972| db $04 ; Raw block
|14C973| db $F9, $0E, $FD, $0E, $01
|14C978| db $26 ; Repeat byte
|14C979| db $00
|14C97A| db $07 ; Raw block
|14C97B| db $FF, $00, $DF, $3F, $FF, $3F, $C0, $3F
|14C983| db $87 ; Copy past
|14C984| dw $0288
|14C986| db $27 ; Repeat byte
|14C987| db $00
|14C988| db $43 ; Repeat word
|14C989| dw $7EC3
|14C98B| db $03 ; Raw block
|14C98C| db $7E, $BD, $3C, $C3
|14C990| db $47 ; Repeat word
|14C991| dw $FF00
|14C993| db $03 ; Raw block
|14C994| db $5A, $42, $BD, $C3
|14C998| db $23 ; Repeat byte
|14C999| db $FF
|14C99A| db $02 ; Raw block
|14C99B| db $74, $38, $64
|14C99E| db $84 ; Copy past
|14C99F| dw $0143
|14C9A1| db $00 ; Raw block
|14C9A2| db $74
|14C9A3| db $86 ; Copy past
|14C9A4| dw $0141
|14C9A6| db $27 ; Repeat byte
|14C9A7| db $00
|14C9A8| db $02 ; Raw block
|14C9A9| db $F7, $BB, $E7
|14C9AC| db $83 ; Copy past
|14C9AD| dw $015B
|14C9AF| db $08 ; Raw block
|14C9B0| db $38, $F7, $38, $EF, $38, $CF, $38, $DF
|14C9B8| db $38
|14C9B9| db $27 ; Repeat byte
|14C9BA| db $83
|14C9BB| db $02 ; Raw block
|14C9BC| db $B3, $7C, $A3
|14C9BF| db $84 ; Copy past
|14C9C0| dw $0173
|14C9C2| db $01 ; Raw block
|14C9C3| db $B3, $7C
|14C9C5| db $85 ; Copy past
|14C9C6| dw $0172
|14C9C8| db $27 ; Repeat byte
|14C9C9| db $00
|14C9CA| db $13 ; Raw block
|14C9CB| db $59, $97, $6D, $AB, $57, $B4, $CB, $3B
|14C9D3| db $A4, $1F, $B4, $2F, $BC, $37, $9F, $58
|14C9DB| db $A0, $90, $08, $04
|14C9DF| db $22 ; Repeat byte
|14C9E0| db $40
|14C9E1| db $10 ; Raw block
|14C9E2| db $20, $D9, $66, $EB, $F5, $BF, $F3, $1E
|14C9EA| db $F7, $8C, $77, $E8, $97, $7F, $E0, $18
|14C9F2| db $F8
|14C9F3| db $26 ; Repeat byte
|14C9F4| db $00
|14C9F5| db $18 ; Raw block
|14C9F6| db $07, $C4, $44, $E3, $63, $B0, $70, $D8
|14C9FE| db $38, $EF, $9F, $77, $4F, $38, $27, $2F
|14CA06| db $30, $3B, $1C, $0F, $07, $00, $80, $C0
|14CA0E| db $C0
|14CA0F| db $43 ; Repeat word
|14CA10| dw $EFFF
|14CA12| db $02 ; Raw block
|14CA13| db $F0, $E0, $FF
|14CA16| db $44 ; Repeat word
|14CA17| dw $F0EF
|14CA19| db $02 ; Raw block
|14CA1A| db $70, $EF, $3F
|14CA1D| db $22 ; Repeat byte
|14CA1E| db $E0
|14CA1F| db $00 ; Raw block
|14CA20| db $EF
|14CA21| db $24 ; Repeat byte
|14CA22| db $E0
|14CA23| db $11 ; Raw block
|14CA24| db $81, $00, $3C, $42, $63, $BC, $9B, $7C
|14CA2C| db $BB, $7C, $93, $54, $83, $7C, $FF, $00
|14CA34| db $7E, $81
|14CA36| db $22 ; Repeat byte
|14CA37| db $00
|14CA38| db $07 ; Raw block
|14CA39| db $28, $00, $00, $81, $00, $00, $7E, $C7
|14CA41| db $44 ; Repeat word
|14CA42| dw $FF38
|14CA44| db $03 ; Raw block
|14CA45| db $D7, $10, $C7, $38
|14CA49| db $84 ; Copy past
|14CA4A| dw $036E
|14CA4C| db $10 ; Raw block
|14CA4D| db $83, $83, $AB, $83, $83, $00, $FF, $0F
|14CA55| db $F0, $17, $E7, $28, $CF, $55, $9D, $AD
|14CA5D| db $3D
|14CA5E| db $43 ; Repeat word
|14CA5F| dw $3CAC
|14CA61| db $04 ; Raw block
|14CA62| db $FF, $F0, $EF, $D8, $B3
|14CA67| db $22 ; Repeat byte
|14CA68| db $63
|14CA69| db $05 ; Raw block
|14CA6A| db $FE, $01, $FC, $03, $F9, $07
|14CA70| db $43 ; Repeat word
|14CA71| dw $0FF3
|14CA73| db $43 ; Repeat word
|14CA74| dw $1FE3
|14CA76| db $01 ; Raw block
|14CA77| db $F1, $0F
|14CA79| db $27 ; Repeat byte
|14CA7A| db $00
|14CA7B| db $04 ; Raw block
|14CA7C| db $FF, $00, $FF, $3C, $E7
|14CA81| db $4A ; Repeat word
|14CA82| dw $C37E
|14CA84| db $0C ; Raw block
|14CA85| db $00, $3C, $66, $4A, $4A, $52, $52, $4A
|14CA8D| db $FF, $00, $C7, $38, $83
|14CA92| db $22 ; Repeat byte
|14CA93| db $44
|14CA94| db $01 ; Raw block
|14CA95| db $BB, $FF
|14CA97| db $44 ; Repeat word
|14CA98| dw $00EF
|14CA9A| db $22 ; Repeat byte
|14CA9B| db $00
|14CA9C| db $02 ; Raw block
|14CA9D| db $38, $BB, $00
|14CAA0| db $22 ; Repeat byte
|14CAA1| db $10
|14CAA2| db $05 ; Raw block
|14CAA3| db $00, $00, $40, $40, $00, $00
|14CAA9| db $23 ; Repeat byte
|14CAAA| db $0C
|14CAAB| db $E0, $22 ; EXT Raw block
|14CAAD| db $80, $80, $E0, $E0, $7F, $7F, $FF, $BF
|14CAB5| db $FF, $F3, $F3, $7F, $1F, $80, $04, $FF
|14CABD| db $10, $FF, $23, $FF, $46, $FF, $4D, $FF
|14CAC5| db $CC, $FF, $CE, $FF, $C7, $FF, $F8, $E0
|14CACD| db $C0, $80, $80
|14CAD0| db $22 ; Repeat byte
|14CAD1| db $00
|14CAD2| db $06 ; Raw block
|14CAD3| db $0E, $FF, $18, $3F, $33, $7F, $66
|14CADA| db $88 ; Copy past
|14CADB| dw $040F
|14CADD| db $02 ; Raw block
|14CADE| db $00, $C0, $80
|14CAE1| db $24 ; Repeat byte
|14CAE2| db $00
|14CAE3| db $08 ; Raw block
|14CAE4| db $1C, $FF, $30, $FF, $63, $FF, $46, $FF
|14CAEC| db $CD
|14CAED| db $86 ; Copy past
|14CAEE| dw $0411
|14CAF0| db $27 ; Repeat byte
|14CAF1| db $00
|14CAF2| db $43 ; Repeat word
|14CAF3| dw $00FF
|14CAF5| db $01 ; Raw block
|14CAF6| db $D5, $2A
|14CAF8| db $43 ; Repeat word
|14CAF9| dw $3FC0
|14CAFB| db $84 ; Copy past
|14CAFC| dw $028C
|14CAFE| db $29 ; Repeat byte
|14CAFF| db $00
|14CB00| db $4D ; Repeat word
|14CB01| dw $00FF
|14CB03| db $28 ; Repeat byte
|14CB04| db $FF
|14CB05| db $0F ; Raw block
|14CB06| db $20, $DF, $30, $CF, $32, $CD, $DB, $E4
|14CB0E| db $0F, $10, $07, $08, $03, $04, $02, $03
|14CB16| db $23 ; Repeat byte
|14CB17| db $00
|14CB18| db $83 ; Copy past
|14CB19| dw $01DB
|14CB1B| db $02 ; Raw block
|14CB1C| db $8F, $7F, $0C
|14CB1F| db $44 ; Repeat word
|14CB20| dw $7CFF
|14CB22| db $43 ; Repeat word
|14CB23| dw $7F8F
|14CB25| db $02 ; Raw block
|14CB26| db $80, $7F, $FF
|14CB29| db $28 ; Repeat byte
|14CB2A| db $00
|14CB2B| db $0F ; Raw block
|14CB2C| db $F6, $09, $FB, $04, $7D, $82, $3E, $C1
|14CB34| db $1F, $E0, $0F, $F0, $07, $F8, $03, $FC
|14CB3C| db $28 ; Repeat byte
|14CB3D| db $00
|14CB3E| db $00 ; Raw block
|14CB3F| db $FF
|14CB40| db $43 ; Repeat word
|14CB41| dw $04FB
|14CB43| db $01 ; Raw block
|14CB44| db $00, $FF
|14CB46| db $47 ; Repeat word
|14CB47| dw $00FF
|14CB49| db $02 ; Raw block
|14CB4A| db $00, $FB, $FB
|14CB4D| db $83 ; Copy past
|14CB4E| dw $04CE
|14CB50| db $84 ; Copy past
|14CB51| dw $04AF
|14CB53| db $0C ; Raw block
|14CB54| db $FD, $82, $FE, $C1, $FF, $E0, $FF, $F0
|14CB5C| db $FF, $F8, $FF, $FC, $00
|14CB61| db $83 ; Copy past
|14CB62| dw $0268
|14CB64| db $14 ; Raw block
|14CB65| db $F0, $F8, $FC, $00, $81, $3C, $42, $C7
|14CB6D| db $38, $5C, $38, $7C, $38, $54, $10, $44
|14CB75| db $38, $7C, $00, $7E, $81
|14CB7A| db $22 ; Repeat byte
|14CB7B| db $00
|14CB7C| db $E0, $29 ; EXT Raw block
|14CB7E| db $28, $00, $00, $AF, $3F, $B7, $3F, $98
|14CB86| db $5F, $CF, $6F, $E3, $73, $A0, $6C, $D0
|14CB8E| db $73, $EC, $7C, $60, $70, $38, $1F, $0F
|14CB96| db $13, $0C, $03, $08, $F7, $C8, $F7, $CC
|14CB9E| db $FB, $06, $F5, $03, $FA, $01, $FD, $00
|14CBA6| db $FE, $FF
|14CBA8| db $23 ; Repeat byte
|14CBA9| db $00
|14CBAA| db $04 ; Raw block
|14CBAB| db $08, $04, $02, $01, $00
|14CBB0| db $4F ; Repeat word
|14CBB1| dw $7EC3
|14CBB3| db $03 ; Raw block
|14CBB4| db $4A, $62, $6A, $6A
|14CBB8| db $22 ; Repeat byte
|14CBB9| db $52
|14CBBA| db $0B ; Raw block
|14CBBB| db $4A, $F7, $0E, $EB, $16, $ED, $1A, $E7
|14CBC3| db $1C, $E3, $1E, $E1
|14CBC7| db $44 ; Repeat word
|14CBC8| dw $E01F
|14CBCA| db $29 ; Repeat byte
|14CBCB| db $00
|14CBCC| db $05 ; Raw block
|14CBCD| db $80, $80, $FF, $FF, $6F, $FF
|14CBD3| db $45 ; Repeat word
|14CBD4| dw $EF10
|14CBD6| db $03 ; Raw block
|14CBD7| db $70, $8F, $FF, $7F
|14CBDB| db $25 ; Repeat byte
|14CBDC| db $00
|14CBDD| db $08 ; Raw block
|14CBDE| db $80, $C3, $00, $C0, $40, $FC, $0C, $FE
|14CBE6| db $06
|14CBE7| db $46 ; Repeat word
|14CBE8| dw $00FF
|14CBEA| db $04 ; Raw block
|14CBEB| db $3C, $BF, $83, $F1, $F8
|14CBF0| db $22 ; Repeat byte
|14CBF1| db $FF
|14CBF2| db $0F ; Raw block
|14CBF3| db $E3, $FF, $F0, $FF, $78, $FF, $3C, $FF
|14CBFB| db $1F, $FF, $07, $BF, $03, $9F, $00, $8F
|14CC03| db $24 ; Repeat byte
|14CC04| db $00
|14CC05| db $05 ; Raw block
|14CC06| db $40, $60, $70, $E3, $FF, $70
|14CC0C| db $86 ; Copy past
|14CC0D| dw $05A3
|14CC0F| db $05 ; Raw block
|14CC10| db $0F, $FF, $03, $FF, $E0, $FF
|14CC16| db $27 ; Repeat byte
|14CC17| db $00
|14CC18| db $02 ; Raw block
|14CC19| db $7F, $FF, $3F
|14CC1C| db $84 ; Copy past
|14CC1D| dw $05BF
|14CC1F| db $00 ; Raw block
|14CC20| db $07
|14CC21| db $45 ; Repeat word
|14CC22| dw $00FF
|14CC24| db $32 ; Repeat byte
|14CC25| db $FF
|14CC26| db $44 ; Repeat word
|14CC27| dw $FF00
|14CC29| db $28 ; Repeat byte
|14CC2A| db $FF
|14CC2B| db $FF ; End of GFX 56

;===================================================================================================

GFX_57:
|14CC2C| db $4E ; Repeat word
|14CC2D| dw $FF00
|14CC2F| db $28 ; Repeat byte
|14CC30| db $FF
|14CC31| db $0E ; Raw block
|14CC32| db $00, $FF, $C0, $3F, $E3, $1C, $67, $98
|14CC3A| db $0F, $F0, $0E, $F1, $0C, $F3, $00
|14CC41| db $28 ; Repeat byte
|14CC42| db $FF
|14CC43| db $45 ; Repeat word
|14CC44| dw $FF00
|14CC46| db $03 ; Raw block
|14CC47| db $38, $C7, $FC, $03
|14CC4B| db $45 ; Repeat word
|14CC4C| dw $00FF
|14CC4E| db $27 ; Repeat byte
|14CC4F| db $FF
|14CC50| db $0F ; Raw block
|14CC51| db $00, $FF, $0C, $F3, $0E, $F1, $1F, $E0
|14CC59| db $3F, $C0, $FF, $00, $CF, $30, $37, $C8
|14CC61| db $26 ; Repeat byte
|14CC62| db $FF
|14CC63| db $06 ; Raw block
|14CC64| db $CF, $00, $FF, $3C, $C3, $1E, $E1
|14CC6B| db $46 ; Repeat word
|14CC6C| dw $F00F
|14CC6E| db $02 ; Raw block
|14CC6F| db $F1, $0F, $F3
|14CC72| db $27 ; Repeat byte
|14CC73| db $FF
|14CC74| db $0F ; Raw block
|14CC75| db $00, $FF, $0F, $F0, $7F, $80, $FF, $03
|14CC7D| db $FF, $1F, $FF, $7C, $FC, $E3, $FC, $1F
|14CC85| db $24 ; Repeat byte
|14CC86| db $FF
|14CC87| db $01 ; Raw block
|14CC88| db $FC, $E0
|14CC8A| db $24 ; Repeat byte
|14CC8B| db $00
|14CC8C| db $0B ; Raw block
|14CC8D| db $01, $00, $03, $01, $07, $03, $0F, $03
|14CC95| db $3F, $06, $5F, $A4
|14CC99| db $22 ; Repeat byte
|14CC9A| db $00
|14CC9B| db $1C ; Raw block
|14CC9C| db $01, $03, $03, $07, $87, $00, $3F, $7F
|14CCA4| db $00, $BB, $7C, $87, $44, $93, $70, $CE
|14CCAC| db $3C, $C2, $3C, $62, $1C, $3F, $00, $00
|14CCB4| db $38, $0C, $01, $81, $41
|14CCB9| db $44 ; Repeat word
|14CCBA| dw $FE07
|14CCBC| db $43 ; Repeat word
|14CCBD| dw $07FC
|14CCBF| db $18 ; Raw block
|14CCC0| db $FE, $07, $FA, $07, $FB, $03, $FD, $FE
|14CCC8| db $FE, $FC, $FC, $FE, $FE, $FF, $FF, $3F
|14CCD0| db $DC, $0F, $FC, $0F, $F6, $07, $FB, $03
|14CCD8| db $FC
|14CCD9| db $45 ; Repeat word
|14CCDA| dw $FF00
|14CCDC| db $02 ; Raw block
|14CCDD| db $FC, $FC, $FE
|14CCE0| db $24 ; Repeat byte
|14CCE1| db $FF
|14CCE2| db $37 ; Repeat byte
|14CCE3| db $00
|14CCE4| db $0E ; Raw block
|14CCE5| db $7F, $80, $3F, $C0, $9F, $E0, $20, $7F
|14CCED| db $5F, $7F, $2F, $3F, $90, $1F, $C0
|14CCF4| db $23 ; Repeat byte
|14CCF5| db $00
|14CCF6| db $12 ; Raw block
|14CCF7| db $80, $80, $C0, $60, $3F, $FF, $FF, $F7
|14CCFF| db $F7, $E7, $E7, $C3, $C3, $81, $81, $E3
|14CD07| db $E3, $F7, $F7
|14CD0A| db $22 ; Repeat byte
|14CD0B| db $FF
|14CD0C| db $05 ; Raw block
|14CD0D| db $F7, $E7, $C3, $81, $E3, $F7
|14CD13| db $22 ; Repeat byte
|14CD14| db $FF
|14CD15| db $23 ; Repeat byte
|14CD16| db $EF
|14CD17| db $23 ; Repeat byte
|14CD18| db $C7
|14CD19| db $06 ; Raw block
|14CD1A| db $83, $83, $81, $81, $00, $00, $FF
|14CD21| db $83 ; Copy past
|14CD22| dw $013C
|14CD24| db $06 ; Raw block
|14CD25| db $83, $81, $00, $F0, $F0, $F8, $F8
|14CD2C| db $23 ; Repeat byte
|14CD2D| db $FC
|14CD2E| db $0F ; Raw block
|14CD2F| db $7E, $7E, $3E, $3E, $0E, $0E, $00, $00
|14CD37| db $F0, $F8, $FC, $FC, $7E, $3E, $0E, $00
|14CD3F| db $83 ; Copy past
|14CD40| dw $00D0
|14CD42| db $09 ; Raw block
|14CD43| db $F9, $F9, $E1, $E1, $81, $81, $E1, $E1
|14CD4B| db $F8, $F8
|14CD4D| db $22 ; Repeat byte
|14CD4E| db $FE
|14CD4F| db $12 ; Raw block
|14CD50| db $FC, $F9, $E1, $81, $E1, $F8, $FE, $0F
|14CD58| db $00, $3F, $00, $7F, $00, $FF, $00, $F8
|14CD60| db $07, $C7, $38
|14CD63| db $83 ; Copy past
|14CD64| dw $0050
|14CD66| db $0F ; Raw block
|14CD67| db $0F, $38, $60, $C0, $07, $3F, $FF, $FF
|14CD6F| db $F3, $0C, $CF, $30, $BF, $40, $73, $8C
|14CD77| db $43 ; Repeat word
|14CD78| dw $9F60
|14CD7A| db $43 ; Repeat word
|14CD7B| dw $1FE0
|14CD7D| db $02 ; Raw block
|14CD7E| db $0F, $3F, $7F
|14CD81| db $25 ; Repeat byte
|14CD82| db $FF
|14CD83| db $16 ; Raw block
|14CD84| db $80, $8F, $70, $F7, $08, $DB, $24, $FB
|14CD8C| db $24, $FD, $22, $CD, $32, $FD, $02, $FF
|14CD94| db $7F, $0F, $07, $07, $03, $83, $C3
|14CD9B| db $45 ; Repeat word
|14CD9C| dw $1FE0
|14CD9E| db $01 ; Raw block
|14CD9F| db $F0, $0F
|14CDA1| db $47 ; Repeat word
|14CDA2| dw $07F8
|14CDA4| db $27 ; Repeat byte
|14CDA5| db $FF
|14CDA6| db $05 ; Raw block
|14CDA7| db $70, $8F, $7E, $81, $3F, $C0
|14CDAD| db $44 ; Repeat word
|14CDAE| dw $E01F
|14CDB0| db $04 ; Raw block
|14CDB1| db $E1, $1F, $E3, $1F, $E2
|14CDB6| db $26 ; Repeat byte
|14CDB7| db $FF
|14CDB8| db $10 ; Raw block
|14CDB9| db $FE, $1F, $E2, $3F, $C6, $FF, $06, $FE
|14CDC1| db $0D, $FE, $FB, $FE, $87, $C6, $3F, $86
|14CDC9| db $7F
|14CDCA| db $22 ; Repeat byte
|14CDCB| db $FE
|14CDCC| db $05 ; Raw block
|14CDCD| db $FC, $F8, $80, $00, $00, $7F
|14CDD3| db $44 ; Repeat word
|14CDD4| dw $5FAC
|14CDD6| db $01 ; Raw block
|14CDD7| db $7F, $CC
|14CDD9| db $43 ; Repeat word
|14CDDA| dw $6C3F
|14CDDC| db $03 ; Raw block
|14CDDD| db $7F, $CE, $FF, $AE
|14CDE1| db $22 ; Repeat byte
|14CDE2| db $8F
|14CDE3| db $15 ; Raw block
|14CDE4| db $CF, $6F, $6F, $CF, $8F, $7E, $00, $FA
|14CDEC| db $65, $F2, $6D, $F3, $6C, $F2, $6C, $FE
|14CDF4| db $40, $E3, $5D, $CD, $BE, $41
|14CDFA| db $22 ; Repeat byte
|14CDFB| db $E0
|14CDFC| db $19 ; Raw block
|14CDFD| db $E1, $C1, $C0, $80, $03, $FC, $0F, $F0
|14CE05| db $1F, $E0, $3F, $C1, $3F, $C3, $7F, $87
|14CE0D| db $7F, $8F, $7F, $8E, $FF, $FF, $FC, $F1
|14CE15| db $E3, $E7
|14CE17| db $22 ; Repeat byte
|14CE18| db $CF
|14CE19| db $16 ; Raw block
|14CE1A| db $30, $C2, $3D, $E5, $9B, $FE, $C1, $FF
|14CE22| db $30, $7F, $9C, $3F, $CF, $1F, $E0, $00
|14CE2A| db $00, $80, $C0, $F0, $FC, $FF, $FF
|14CE31| db $37 ; Repeat byte
|14CE32| db $00
|14CE33| db $10 ; Raw block
|14CE34| db $60, $80, $3F, $C0, $18, $E7, $F3, $0F
|14CE3C| db $E0, $1F, $E7, $18, $E8, $97, $F3, $CF
|14CE44| db $1F
|14CE45| db $24 ; Repeat byte
|14CE46| db $00
|14CE47| db $03 ; Raw block
|14CE48| db $80, $C0, $FF, $FF
|14CE4C| db $83 ; Copy past
|14CE4D| dw $00D0
|14CE4F| db $03 ; Raw block
|14CE50| db $F8, $F8, $E0, $E0
|14CE54| db $83 ; Copy past
|14CE55| dw $0174
|14CE57| db $22 ; Repeat byte
|14CE58| db $FF
|14CE59| db $08 ; Raw block
|14CE5A| db $FE, $FC, $F8, $E0, $F8, $FE, $FF, $80
|14CE62| db $80
|14CE63| db $83 ; Copy past
|14CE64| dw $0150
|14CE66| db $01 ; Raw block
|14CE67| db $F0, $F0
|14CE69| db $87 ; Copy past
|14CE6A| dw $02A8
|14CE6C| db $03 ; Raw block
|14CE6D| db $80, $F0, $F8, $F0
|14CE71| db $83 ; Copy past
|14CE72| dw $02B4
|14CE74| db $23 ; Repeat byte
|14CE75| db $EF
|14CE76| db $05 ; Raw block
|14CE77| db $E7, $E7, $E2, $E2, $E0, $E0
|14CE7D| db $23 ; Repeat byte
|14CE7E| db $C0
|14CE7F| db $0F ; Raw block
|14CE80| db $80, $80, $EF, $EF, $E7, $E2, $E0, $C0
|14CE88| db $C0, $80, $3C, $3C, $81, $81, $C1, $C1
|14CE90| db $23 ; Repeat byte
|14CE91| db $E3
|14CE92| db $23 ; Repeat byte
|14CE93| db $F7
|14CE94| db $04 ; Raw block
|14CE95| db $FF, $FF, $3C, $81, $C1
|14CE9A| db $85 ; Copy past
|14CE9B| dw $012A
|14CE9D| db $06 ; Raw block
|14CE9E| db $00, $FC, $03, $F8, $07, $30, $CF
|14CEA5| db $46 ; Repeat word
|14CEA6| dw $FF00
|14CEA8| db $28 ; Repeat byte
|14CEA9| db $FF
|14CEAA| db $45 ; Repeat word
|14CEAB| dw $3FC0
|14CEAD| db $01 ; Raw block
|14CEAE| db $E0, $1F
|14CEB0| db $43 ; Repeat word
|14CEB1| dw $07F8
|14CEB3| db $02 ; Raw block
|14CEB4| db $80, $7F, $00
|14CEB7| db $28 ; Repeat byte
|14CEB8| db $FF
|14CEB9| db $0A ; Raw block
|14CEBA| db $10, $00, $10, $01, $20, $03, $21, $12
|14CEC2| db $73, $0C, $6E
|14CEC5| db $43 ; Repeat word
|14CEC6| dw $6201
|14CEC8| db $0A ; Raw block
|14CEC9| db $05, $0F, $0E, $1C, $0C, $00, $10, $1C
|14CED1| db $18, $FF, $80
|14CED4| db $43 ; Repeat word
|14CED5| dw $00FF
|14CED7| db $09 ; Raw block
|14CED8| db $7F, $80, $BF, $40, $5F, $A0, $61, $9E
|14CEE0| db $DE, $21
|14CEE2| db $23 ; Repeat byte
|14CEE3| db $FF
|14CEE4| db $16 ; Raw block
|14CEE5| db $7F, $3F, $1F, $01, $1D, $02, $3B, $04
|14CEED| db $77, $08, $F7, $08, $D7, $28, $F7, $28
|14CEF5| db $FB, $24, $FD, $12, $13, $27, $4F
|14CEFC| db $22 ; Repeat byte
|14CEFD| db $8F
|14CEFE| db $05 ; Raw block
|14CEFF| db $87, $83, $F0, $0F, $80, $7F
|14CF05| db $45 ; Repeat word
|14CF06| dw $FF00
|14CF08| db $01 ; Raw block
|14CF09| db $80, $7F
|14CF0B| db $83 ; Copy past
|14CF0C| dw $01CC
|14CF0E| db $27 ; Repeat byte
|14CF0F| db $FF
|14CF10| db $0F ; Raw block
|14CF11| db $BF, $67, $AF, $77, $9F, $73, $FF, $03
|14CF19| db $7F, $21, $3F, $10, $1B, $04, $11, $0E
|14CF21| db $83 ; Copy past
|14CF22| dw $01C3
|14CF24| db $0E ; Raw block
|14CF25| db $61, $30, $10, $00, $CD, $3E, $E6, $DF
|14CF2D| db $D6, $EF, $D2, $EF, $8A, $F7, $0A
|14CF34| db $44 ; Repeat word
|14CF35| dw $08F7
|14CF37| db $27 ; Repeat byte
|14CF38| db $00
|14CF39| db $1F ; Raw block
|14CF3A| db $E7, $3F, $70, $0F, $2F, $50, $40, $A0
|14CF42| db $40, $80, $40, $B0, $40, $BF, $67, $98
|14CF4A| db $00, $80, $80, $1F, $3F, $0F, $00, $00
|14CF52| db $7E, $A1, $3F, $D0, $1F, $EF, $0F, $F0
|14CF5A| db $47 ; Repeat word
|14CF5B| dw $FF00
|14CF5D| db $01 ; Raw block
|14CF5E| db $E0, $F0
|14CF60| db $25 ; Repeat byte
|14CF61| db $FF
|14CF62| db $25 ; Repeat byte
|14CF63| db $00
|14CF64| db $87 ; Copy past
|14CF65| dw $0180
|14CF67| db $01 ; Raw block
|14CF68| db $FC, $03
|14CF6A| db $22 ; Repeat byte
|14CF6B| db $00
|14CF6C| db $09 ; Raw block
|14CF6D| db $0F, $3F, $70, $C0, $83, $0D, $02, $1D
|14CF75| db $02, $3D
|14CF77| db $44 ; Repeat word
|14CF78| dw $FD02
|14CF7A| db $0D ; Raw block
|14CF7B| db $FB, $04, $F7, $08, $0F, $F0, $0B, $1B
|14CF83| db $33, $E3, $C3, $07, $0F, $FF
|14CF89| db $27 ; Repeat byte
|14CF8A| db $00
|14CF8B| db $43 ; Repeat word
|14CF8C| dw $0001
|14CF8E| db $02 ; Raw block
|14CF8F| db $07, $00, $08
|14CF92| db $27 ; Repeat byte
|14CF93| db $00
|14CF94| db $00 ; Raw block
|14CF95| db $07
|14CF96| db $25 ; Repeat byte
|14CF97| db $00
|14CF98| db $09 ; Raw block
|14CF99| db $7E, $00, $81, $00, $00, $01, $01, $9E
|14CFA1| db $0F, $F0
|14CFA3| db $23 ; Repeat byte
|14CFA4| db $00
|14CFA5| db $1A ; Raw block
|14CFA6| db $7E, $FE, $60, $00, $E6, $AE, $E3, $A7
|14CFAE| db $C0, $A3, $C0, $B0, $E0, $D8, $F0, $EF
|14CFB6| db $FF, $F0, $FF, $FF, $91, $98, $9C, $8F
|14CFBE| db $C7, $E0, $F0
|14CFC1| db $25 ; Repeat byte
|14CFC2| db $FF
|14CFC3| db $12 ; Raw block
|14CFC4| db $F0, $F8, $E8, $F0, $D3, $E2, $A6, $E5
|14CFCC| db $AC, $E4, $AC, $FF, $FF, $F0, $E7, $CC
|14CFD4| db $99, $92, $93
|14CFD7| db $83 ; Copy past
|14CFD8| dw $0052
|14CFDA| db $01 ; Raw block
|14CFDB| db $82, $7D
|14CFDD| db $48 ; Repeat word
|14CFDE| dw $FF00
|14CFE0| db $28 ; Repeat byte
|14CFE1| db $FF
|14CFE2| db $01 ; Raw block
|14CFE3| db $00, $FF
|14CFE5| db $44 ; Repeat word
|14CFE6| dw $C700
|14CFE8| db $43 ; Repeat word
|14CFE9| dw $0039
|14CFEB| db $43 ; Repeat word
|14CFEC| dw $00C7
|14CFEE| db $28 ; Repeat byte
|14CFEF| db $FF
|14CFF0| db $48 ; Repeat word
|14CFF1| dw $45A2
|14CFF3| db $06 ; Raw block
|14CFF4| db $41, $A2, $41, $A3, $4C, $51, $A8
|14CFFB| db $23 ; Repeat byte
|14CFFC| db $18
|14CFFD| db $03 ; Raw block
|14CFFE| db $1C, $1C, $10, $86
|14D002| db $4B ; Repeat word
|14D003| dw $00FF
|14D005| db $03 ; Raw block
|14D006| db $F7, $08, $E7, $18
|14D00A| db $27 ; Repeat byte
|14D00B| db $00
|14D00C| db $03 ; Raw block
|14D00D| db $FE, $01, $FA, $05
|14D011| db $43 ; Repeat word
|14D012| dw $047F
|14D014| db $13 ; Raw block
|14D015| db $3B, $04, $1D, $02, $1F, $00, $1E, $01
|14D01D| db $81, $81, $40, $40, $20, $10, $10, $11
|14D025| db $F0, $0F, $E0, $1F
|14D029| db $45 ; Repeat word
|14D02A| dw $9F60
|14D02C| db $43 ; Repeat word
|14D02D| dw $8F70
|14D02F| db $01 ; Raw block
|14D030| db $F0, $0F
|14D032| db $27 ; Repeat byte
|14D033| db $FF
|14D034| db $08 ; Raw block
|14D035| db $16, $0F, $14, $0F, $10, $0F, $0F, $00
|14D03D| db $01
|14D03E| db $2A ; Repeat byte
|14D03F| db $00
|14D040| db $00 ; Raw block
|14D041| db $01
|14D042| db $22 ; Repeat byte
|14D043| db $00
|14D044| db $0F ; Raw block
|14D045| db $C3, $3C, $65, $9B, $F9, $07, $F9, $06
|14D04D| db $FA, $65, $7D, $1B, $1E, $05, $03, $02
|14D055| db $23 ; Repeat byte
|14D056| db $00
|14D057| db $03 ; Raw block
|14D058| db $E0, $78, $1C, $02
|14D05C| db $23 ; Repeat byte
|14D05D| db $00
|14D05E| db $0B ; Raw block
|14D05F| db $1E, $00, $21, $1E, $4C, $3F, $4F, $BE
|14D067| db $46, $B8, $58, $A0
|14D06B| db $24 ; Repeat byte
|14D06C| db $00
|14D06D| db $12 ; Raw block
|14D06E| db $80, $81, $87, $03, $00, $06, $01, $0D
|14D076| db $03, $1F, $00, $E0, $18, $80, $0C, $0F
|14D07E| db $00, $3C, $03
|14D081| db $23 ; Repeat byte
|14D082| db $00
|14D083| db $14 ; Raw block
|14D084| db $07, $73, $F0, $C0, $E8, $17, $BF, $50
|14D08C| db $FA, $55, $AE, $75, $DE, $33, $E7, $19
|14D094| db $FF, $00, $3F, $00, $07
|14D099| db $24 ; Repeat byte
|14D09A| db $00
|14D09B| db $0E ; Raw block
|14D09C| db $C0, $3F, $D9, $36, $DD, $36, $EE, $13
|14D0A4| db $7E, $03, $3F, $00, $1F, $00, $0F
|14D0AB| db $22 ; Repeat byte
|14D0AC| db $00
|14D0AD| db $22 ; Repeat byte
|14D0AE| db $80
|14D0AF| db $02 ; Raw block
|14D0B0| db $40, $20, $18
|14D0B3| db $83 ; Copy past
|14D0B4| dw $0516
|14D0B6| db $00 ; Raw block
|14D0B7| db $03
|14D0B8| db $44 ; Repeat word
|14D0B9| dw $0700
|14D0BB| db $43 ; Repeat word
|14D0BC| dw $000F
|14D0BE| db $43 ; Repeat word
|14D0BF| dw $010E
|14D0C1| db $07 ; Raw block
|14D0C2| db $01, $02, $04, $04, $08, $08, $09, $09
|14D0CA| db $43 ; Repeat word
|14D0CB| dw $011E
|14D0CD| db $43 ; Repeat word
|14D0CE| dw $021F
|14D0D0| db $0F ; Raw block
|14D0D1| db $0E, $03, $0F, $01, $07, $00, $03, $00
|14D0D9| db $11, $11, $10, $10, $08, $08, $04, $03
|14D0E1| db $37 ; Repeat byte
|14D0E2| db $FF
|14D0E3| db $37 ; Repeat byte
|14D0E4| db $00
|14D0E5| db $FF ; End of GFX 57

;===================================================================================================

GFX_58:
|14D0E6| db $0F ; Raw block
|14D0E7| db $FF, $00, $FF, $10, $BB, $54, $C7, $28
|14D0EF| db $D7, $D6, $C7, $28, $BB, $54, $FF, $10
|14D0F7| db $22 ; Repeat byte
|14D0F8| db $00
|14D0F9| db $03 ; Raw block
|14D0FA| db $10, $38, $10, $00
|14D0FE| db $44 ; Repeat word
|14D0FF| dw $FF00
|14D101| db $43 ; Repeat word
|14D102| dw $10EF
|14D104| db $01 ; Raw block
|14D105| db $93, $7C
|14D107| db $43 ; Repeat word
|14D108| dw $10EF
|14D10A| db $00 ; Raw block
|14D10B| db $FF
|14D10C| db $E4, $50 ; EXT Repeat byte
|14D10E| db $00
|14D10F| db $48 ; Repeat word
|14D110| dw $01FF
|14D112| db $06 ; Raw block
|14D113| db $81, $FF, $01, $FF, $41, $FF, $03
|14D11A| db $23 ; Repeat byte
|14D11B| db $FF
|14D11C| db $03 ; Raw block
|14D11D| db $7F, $7F, $3F, $3F
|14D121| db $47 ; Repeat word
|14D122| dw $00FF
|14D124| db $06 ; Raw block
|14D125| db $FC, $03, $F0, $0F, $C0, $3F, $00
|14D12C| db $28 ; Repeat byte
|14D12D| db $FF
|14D12E| db $45 ; Repeat word
|14D12F| dw $01FE
|14D131| db $43 ; Repeat word
|14D132| dw $03FC
|14D134| db $04 ; Raw block
|14D135| db $F8, $07, $E0, $1F, $00
|14D13A| db $29 ; Repeat byte
|14D13B| db $FF
|14D13C| db $02 ; Raw block
|14D13D| db $3F, $FF, $07
|14D140| db $4B ; Repeat word
|14D141| dw $00FF
|14D143| db $2C ; Repeat byte
|14D144| db $FF
|14D145| db $43 ; Repeat word
|14D146| dw $FFFE
|14D148| db $06 ; Raw block
|14D149| db $FC, $FF, $F8, $FF, $F0, $FF, $C0
|14D150| db $27 ; Repeat byte
|14D151| db $FF
|14D152| db $04 ; Raw block
|14D153| db $C0, $FF, $F0, $FF, $FC
|14D158| db $32 ; Repeat byte
|14D159| db $FF
|14D15A| db $02 ; Raw block
|14D15B| db $F0, $FF, $FC
|14D15E| db $43 ; Repeat word
|14D15F| dw $FEFF
|14D161| db $37 ; Repeat byte
|14D162| db $FF
|14D163| db $43 ; Repeat word
|14D164| dw $FFFE
|14D166| db $04 ; Raw block
|14D167| db $FC, $FF, $F8, $FE, $E1
|14D16C| db $27 ; Repeat byte
|14D16D| db $FF
|14D16E| db $01 ; Raw block
|14D16F| db $FC, $03
|14D171| db $43 ; Repeat word
|14D172| dw $07F8
|14D174| db $01 ; Raw block
|14D175| db $FC, $03
|14D177| db $43 ; Repeat word
|14D178| dw $01FE
|14D17A| db $43 ; Repeat word
|14D17B| dw $00FF
|14D17D| db $27 ; Repeat byte
|14D17E| db $FF
|14D17F| db $E4, $2F ; EXT Repeat byte
|14D181| db $00
|14D182| db $03 ; Raw block
|14D183| db $FF, $10, $FF, $04
|14D187| db $44 ; Repeat word
|14D188| dw $00FF
|14D18A| db $00 ; Raw block
|14D18B| db $7E
|14D18C| db $25 ; Repeat byte
|14D18D| db $FF
|14D18E| db $01 ; Raw block
|14D18F| db $E0, $F8
|14D191| db $26 ; Repeat byte
|14D192| db $FF
|14D193| db $02 ; Raw block
|14D194| db $08, $FF, $20
|14D197| db $46 ; Repeat word
|14D198| dw $00FF
|14D19A| db $00 ; Raw block
|14D19B| db $81
|14D19C| db $23 ; Repeat byte
|14D19D| db $FF
|14D19E| db $01 ; Raw block
|14D19F| db $07, $1F
|14D1A1| db $26 ; Repeat byte
|14D1A2| db $FF
|14D1A3| db $43 ; Repeat word
|14D1A4| dw $FF01
|14D1A6| db $43 ; Repeat word
|14D1A7| dw $FF03
|14D1A9| db $00 ; Raw block
|14D1AA| db $0F
|14D1AB| db $2D ; Repeat byte
|14D1AC| db $FF
|14D1AD| db $E0, $23 ; EXT Raw block
|14D1AF| db $1F, $E0, $3F, $C0, $7F, $82, $FF, $00
|14D1B7| db $FF, $04, $FF, $08, $FF, $21, $FF, $01
|14D1BF| db $00, $01, $01, $03, $03, $07, $1F, $7F
|14D1C7| db $FF, $03, $FF, $07, $FF, $47, $FF, $07
|14D1CF| db $FF, $87, $FF, $07
|14D1D3| db $43 ; Repeat word
|14D1D4| dw $03FF
|14D1D6| db $22 ; Repeat byte
|14D1D7| db $3F
|14D1D8| db $01 ; Raw block
|14D1D9| db $7F, $7F
|14D1DB| db $22 ; Repeat byte
|14D1DC| db $FF
|14D1DD| db $02 ; Raw block
|14D1DE| db $40, $7F, $C0
|14D1E1| db $44 ; Repeat word
|14D1E2| dw $00FF
|14D1E4| db $02 ; Raw block
|14D1E5| db $04, $F7, $0C
|14D1E8| db $44 ; Repeat word
|14D1E9| dw $00FF
|14D1EB| db $07 ; Raw block
|14D1EC| db $BF, $3F, $FF, $F3, $E9, $E1, $F3, $FF
|14D1F4| db $47 ; Repeat word
|14D1F5| dw $00FF
|14D1F7| db $04 ; Raw block
|14D1F8| db $FC, $00, $F0, $00, $C0
|14D1FD| db $22 ; Repeat byte
|14D1FE| db $00
|14D1FF| db $23 ; Repeat byte
|14D200| db $FF
|14D201| db $02 ; Raw block
|14D202| db $FC, $F0, $C0
|14D205| db $46 ; Repeat word
|14D206| dw $FE00
|14D208| db $43 ; Repeat word
|14D209| dw $00FC
|14D20B| db $02 ; Raw block
|14D20C| db $F8, $00, $E0
|14D20F| db $22 ; Repeat byte
|14D210| db $00
|14D211| db $22 ; Repeat byte
|14D212| db $FE
|14D213| db $04 ; Raw block
|14D214| db $FC, $FC, $F8, $E0, $00
|14D219| db $83 ; Copy past
|14D21A| dw $00C0
|14D21C| db $4B ; Repeat word
|14D21D| dw $00FF
|14D21F| db $2C ; Repeat byte
|14D220| db $FF
|14D221| db $43 ; Repeat word
|14D222| dw $FFFE
|14D224| db $86 ; Copy past
|14D225| dw $00E1
|14D227| db $27 ; Repeat byte
|14D228| db $FF
|14D229| db $05 ; Raw block
|14D22A| db $C0, $C0, $F0, $F0, $FC, $FC
|14D230| db $29 ; Repeat byte
|14D231| db $FF
|14D232| db $02 ; Raw block
|14D233| db $C0, $F0, $FC
|14D236| db $24 ; Repeat byte
|14D237| db $FF
|14D238| db $83 ; Copy past
|14D239| dw $0272
|14D23B| db $23 ; Repeat byte
|14D23C| db $FE
|14D23D| db $27 ; Repeat byte
|14D23E| db $FF
|14D23F| db $03 ; Raw block
|14D240| db $F0, $FC, $FE, $FE
|14D244| db $2A ; Repeat byte
|14D245| db $FF
|14D246| db $43 ; Repeat word
|14D247| dw $FFFE
|14D249| db $83 ; Copy past
|14D24A| dw $012B
|14D24C| db $00 ; Raw block
|14D24D| db $E0
|14D24E| db $26 ; Repeat byte
|14D24F| db $FF
|14D250| db $01 ; Raw block
|14D251| db $FE, $FC
|14D253| db $44 ; Repeat word
|14D254| dw $F800
|14D256| db $00 ; Raw block
|14D257| db $FC
|14D258| db $44 ; Repeat word
|14D259| dw $FE00
|14D25B| db $43 ; Repeat word
|14D25C| dw $00FF
|14D25E| db $02 ; Raw block
|14D25F| db $FC, $F8, $F8
|14D262| db $83 ; Copy past
|14D263| dw $0299
|14D265| db $45 ; Repeat word
|14D266| dw $00FF
|14D268| db $07 ; Raw block
|14D269| db $E3, $04, $C5, $0A, $CB, $1C, $DD, $1C
|14D271| db $83 ; Copy past
|14D272| dw $00CE
|14D274| db $1E ; Raw block
|14D275| db $E3, $DD, $BA, $B4, $A2, $C1, $E3, $FF
|14D27D| db $00, $C8, $78, $95, $77, $A8, $6E, $D2
|14D285| db $5E, $A5, $3D, $8A, $3B, $A5, $27, $00
|14D28D| db $07, $08, $11, $21, $42, $44, $58
|14D294| db $43 ; Repeat word
|14D295| dw $00FF
|14D297| db $43 ; Repeat word
|14D298| dw $10EF
|14D29A| db $01 ; Raw block
|14D29B| db $93, $7C
|14D29D| db $43 ; Repeat word
|14D29E| dw $10EF
|14D2A0| db $00 ; Raw block
|14D2A1| db $FF
|14D2A2| db $28 ; Repeat byte
|14D2A3| db $00
|14D2A4| db $43 ; Repeat word
|14D2A5| dw $00FF
|14D2A7| db $0A ; Raw block
|14D2A8| db $BB, $44, $FF, $28, $EF, $00, $FF, $28
|14D2B0| db $BB, $44, $FF
|14D2B3| db $24 ; Repeat byte
|14D2B4| db $00
|14D2B5| db $00 ; Raw block
|14D2B6| db $10
|14D2B7| db $E4, $4A ; EXT Repeat byte
|14D2B9| db $00
|14D2BA| db $84 ; Copy past
|14D2BB| dw $0080
|14D2BD| db $02 ; Raw block
|14D2BE| db $43, $FF, $03
|14D2C1| db $44 ; Repeat word
|14D2C2| dw $07FF
|14D2C4| db $04 ; Raw block
|14D2C5| db $47, $FF, $03, $7F, $7F
|14D2CA| db $24 ; Repeat byte
|14D2CB| db $3F
|14D2CC| db $00 ; Raw block
|14D2CD| db $7F
|14D2CE| db $47 ; Repeat word
|14D2CF| dw $00FF
|14D2D1| db $83 ; Copy past
|14D2D2| dw $00AC
|14D2D4| db $02 ; Raw block
|14D2D5| db $E0, $1F, $00
|14D2D8| db $28 ; Repeat byte
|14D2D9| db $FF
|14D2DA| db $01 ; Raw block
|14D2DB| db $FE, $01
|14D2DD| db $43 ; Repeat word
|14D2DE| dw $03FC
|14D2E0| db $08 ; Raw block
|14D2E1| db $F8, $07, $F0, $0F, $E0, $1F, $80, $7F
|14D2E9| db $00
|14D2EA| db $2B ; Repeat byte
|14D2EB| db $FF
|14D2EC| db $06 ; Raw block
|14D2ED| db $7F, $FF, $3F, $FF, $0F, $FF, $03
|14D2F4| db $45 ; Repeat word
|14D2F5| dw $00FF
|14D2F7| db $28 ; Repeat byte
|14D2F8| db $FF
|14D2F9| db $00 ; Raw block
|14D2FA| db $FE
|14D2FB| db $44 ; Repeat word
|14D2FC| dw $FCFF
|14D2FE| db $83 ; Copy past
|14D2FF| dw $00E3
|14D301| db $04 ; Raw block
|14D302| db $E0, $FF, $80, $FF, $00
|14D307| db $27 ; Repeat byte
|14D308| db $FF
|14D309| db $02 ; Raw block
|14D30A| db $F0, $FF, $FE
|14D30D| db $34 ; Repeat byte
|14D30E| db $FF
|14D30F| db $83 ; Copy past
|14D310| dw $00F0
|14D312| db $02 ; Raw block
|14D313| db $F8, $FF, $FC
|14D316| db $43 ; Repeat word
|14D317| dw $FEFF
|14D319| db $2D ; Repeat byte
|14D31A| db $FF
|14D31B| db $47 ; Repeat word
|14D31C| dw $FFFE
|14D31E| db $84 ; Copy past
|14D31F| dw $012B
|14D321| db $01 ; Raw block
|14D322| db $FE, $81
|14D324| db $27 ; Repeat byte
|14D325| db $FF
|14D326| db $83 ; Copy past
|14D327| dw $00B0
|14D329| db $01 ; Raw block
|14D32A| db $FC, $03
|14D32C| db $49 ; Repeat word
|14D32D| dw $01FE
|14D32F| db $27 ; Repeat byte
|14D330| db $FF
|14D331| db $E4, $2F ; EXT Repeat byte
|14D333| db $00
|14D334| db $03 ; Raw block
|14D335| db $FF, $20, $FF, $C0
|14D339| db $44 ; Repeat word
|14D33A| dw $00FF
|14D33C| db $02 ; Raw block
|14D33D| db $07, $FF, $1F
|14D340| db $23 ; Repeat byte
|14D341| db $FF
|14D342| db $01 ; Raw block
|14D343| db $1F, $3F
|14D345| db $26 ; Repeat byte
|14D346| db $FF
|14D347| db $02 ; Raw block
|14D348| db $40, $FF, $11
|14D34B| db $44 ; Repeat word
|14D34C| dw $00FF
|14D34E| db $02 ; Raw block
|14D34F| db $E0, $FF, $F8
|14D352| db $23 ; Repeat byte
|14D353| db $FF
|14D354| db $01 ; Raw block
|14D355| db $80, $E0
|14D357| db $26 ; Repeat byte
|14D358| db $FF
|14D359| db $83 ; Copy past
|14D35A| dw $01B3
|14D35C| db $00 ; Raw block
|14D35D| db $3F
|14D35E| db $43 ; Repeat word
|14D35F| dw $7FFF
|14D361| db $2D ; Repeat byte
|14D362| db $FF
|14D363| db $84 ; Copy past
|14D364| dw $01C8
|14D366| db $02 ; Raw block
|14D367| db $84, $FF, $10
|14D36A| db $84 ; Copy past
|14D36B| dw $019A
|14D36D| db $01 ; Raw block
|14D36E| db $40, $FF
|14D370| db $22 ; Repeat byte
|14D371| db $00
|14D372| db $02 ; Raw block
|14D373| db $03, $0F, $1F
|14D376| db $83 ; Copy past
|14D377| dw $038D
|14D379| db $00 ; Raw block
|14D37A| db $83
|14D37B| db $44 ; Repeat word
|14D37C| dw $01FF
|14D37E| db $48 ; Repeat word
|14D37F| dw $FF00
|14D381| db $00 ; Raw block
|14D382| db $7F
|14D383| db $26 ; Repeat byte
|14D384| db $FF
|14D385| db $02 ; Raw block
|14D386| db $40, $7F, $C0
|14D389| db $44 ; Repeat word
|14D38A| dw $00FF
|14D38C| db $43 ; Repeat word
|14D38D| dw $FF0C
|14D38F| db $43 ; Repeat word
|14D390| dw $FF00
|14D392| db $83 ; Copy past
|14D393| dw $0208
|14D395| db $03 ; Raw block
|14D396| db $E1, $E1, $F3, $FF
|14D39A| db $47 ; Repeat word
|14D39B| dw $00FF
|14D39D| db $83 ; Copy past
|14D39E| dw $022C
|14D3A0| db $00 ; Raw block
|14D3A1| db $E0
|14D3A2| db $22 ; Repeat byte
|14D3A3| db $00
|14D3A4| db $23 ; Repeat byte
|14D3A5| db $FF
|14D3A6| db $04 ; Raw block
|14D3A7| db $FE, $FC, $E0, $00, $FE
|14D3AC| db $44 ; Repeat word
|14D3AD| dw $FC00
|14D3AF| db $06 ; Raw block
|14D3B0| db $F8, $00, $F0, $00, $E0, $00, $80
|14D3B7| db $22 ; Repeat byte
|14D3B8| db $00
|14D3B9| db $83 ; Copy past
|14D3BA| dw $023A
|14D3BC| db $03 ; Raw block
|14D3BD| db $F0, $E0, $80, $00
|14D3C1| db $22 ; Repeat byte
|14D3C2| db $FF
|14D3C3| db $86 ; Copy past
|14D3C4| dw $03C3
|14D3C6| db $45 ; Repeat word
|14D3C7| dw $00FF
|14D3C9| db $28 ; Repeat byte
|14D3CA| db $FF
|14D3CB| db $00 ; Raw block
|14D3CC| db $FE
|14D3CD| db $44 ; Repeat word
|14D3CE| dw $FCFF
|14D3D0| db $88 ; Copy past
|14D3D1| dw $03DF
|14D3D3| db $27 ; Repeat byte
|14D3D4| db $FF
|14D3D5| db $03 ; Raw block
|14D3D6| db $F0, $F0, $FE, $FE
|14D3DA| db $2B ; Repeat byte
|14D3DB| db $FF
|14D3DC| db $01 ; Raw block
|14D3DD| db $F0, $FE
|14D3DF| db $25 ; Repeat byte
|14D3E0| db $FF
|14D3E1| db $83 ; Copy past
|14D3E2| dw $0270
|14D3E4| db $03 ; Raw block
|14D3E5| db $F8, $F8, $FC, $FC
|14D3E9| db $23 ; Repeat byte
|14D3EA| db $FE
|14D3EB| db $23 ; Repeat byte
|14D3EC| db $FF
|14D3ED| db $01 ; Raw block
|14D3EE| db $C0, $F0
|14D3F0| db $83 ; Copy past
|14D3F1| dw $02CA
|14D3F3| db $22 ; Repeat byte
|14D3F4| db $FF
|14D3F5| db $47 ; Repeat word
|14D3F6| dw $FFFE
|14D3F8| db $84 ; Copy past
|14D3F9| dw $02AB
|14D3FB| db $01 ; Raw block
|14D3FC| db $FE, $80
|14D3FE| db $25 ; Repeat byte
|14D3FF| db $FF
|14D400| db $00 ; Raw block
|14D401| db $FE
|14D402| db $84 ; Copy past
|14D403| dw $02B7
|14D405| db $00 ; Raw block
|14D406| db $FC
|14D407| db $4A ; Repeat word
|14D408| dw $FE00
|14D40A| db $02 ; Raw block
|14D40B| db $FC, $F8, $FC
|14D40E| db $24 ; Repeat byte
|14D40F| db $FE
|14D410| db $43 ; Repeat word
|14D411| dw $FF00
|14D413| db $08 ; Raw block
|14D414| db $04, $E7, $0A, $CF, $14, $DF, $32, $FF
|14D41C| db $10
|14D41D| db $84 ; Copy past
|14D41E| dw $02DD
|14D420| db $03 ; Raw block
|14D421| db $D9, $B0, $A0, $80
|14D425| db $83 ; Copy past
|14D426| dw $02E6
|14D428| db $01 ; Raw block
|14D429| db $A6, $66
|14D42B| db $83 ; Copy past
|14D42C| dw $02F0
|14D42E| db $0F ; Raw block
|14D42F| db $84, $3D, $DA, $7B, $E5, $67, $92, $1E
|14D437| db $00, $19, $21, $42, $42, $04, $18, $61
|14D43F| db $FF ; End of GFX 58

;===================================================================================================

GFX_59:
|14D440| db $43 ; Repeat word
|14D441| dw $00FF
|14D443| db $0A ; Raw block
|14D444| db $BB, $44, $FF, $28, $EF, $00, $FF, $28
|14D44C| db $BB, $44, $FF
|14D44F| db $24 ; Repeat byte
|14D450| db $00
|14D451| db $00 ; Raw block
|14D452| db $10
|14D453| db $22 ; Repeat byte
|14D454| db $00
|14D455| db $0F ; Raw block
|14D456| db $FF, $00, $FF, $10, $BB, $54, $C7, $28
|14D45E| db $D7, $D6, $C7, $28, $BB, $54, $FF, $10
|14D466| db $22 ; Repeat byte
|14D467| db $00
|14D468| db $02 ; Raw block
|14D469| db $10, $38, $10
|14D46C| db $E4, $49 ; EXT Repeat byte
|14D46E| db $00
|14D46F| db $09 ; Raw block
|14D470| db $FF, $07, $FF, $47, $FF, $03, $FF, $83
|14D478| db $FF, $81
|14D47A| db $45 ; Repeat word
|14D47B| dw $01FF
|14D47D| db $01 ; Raw block
|14D47E| db $3F, $3F
|14D480| db $22 ; Repeat byte
|14D481| db $7F
|14D482| db $23 ; Repeat byte
|14D483| db $FF
|14D484| db $4A ; Repeat word
|14D485| dw $FF00
|14D487| db $03 ; Raw block
|14D488| db $F8, $07, $E0, $1F
|14D48C| db $28 ; Repeat byte
|14D48D| db $FF
|14D48E| db $46 ; Repeat word
|14D48F| dw $FF00
|14D491| db $43 ; Repeat word
|14D492| dw $01FE
|14D494| db $03 ; Raw block
|14D495| db $FC, $03, $F0, $0F
|14D499| db $28 ; Repeat byte
|14D49A| db $FF
|14D49B| db $04 ; Raw block
|14D49C| db $3F, $FF, $0F, $FF, $03
|14D4A1| db $49 ; Repeat word
|14D4A2| dw $00FF
|14D4A4| db $32 ; Repeat byte
|14D4A5| db $FF
|14D4A6| db $04 ; Raw block
|14D4A7| db $FE, $FF, $FC, $FF, $F8
|14D4AC| db $27 ; Repeat byte
|14D4AD| db $FF
|14D4AE| db $06 ; Raw block
|14D4AF| db $00, $FF, $F0, $FF, $FC, $FF, $FE
|14D4B6| db $30 ; Repeat byte
|14D4B7| db $FF
|14D4B8| db $08 ; Raw block
|14D4B9| db $00, $FF, $80, $FF, $E0, $FF, $F0, $FF
|14D4C1| db $F8
|14D4C2| db $44 ; Repeat word
|14D4C3| dw $FCFF
|14D4C5| db $00 ; Raw block
|14D4C6| db $FE
|14D4C7| db $29 ; Repeat byte
|14D4C8| db $FF
|14D4C9| db $43 ; Repeat word
|14D4CA| dw $FFFE
|14D4CC| db $0A ; Raw block
|14D4CD| db $FC, $FE, $E1, $FE, $C1, $FC, $83, $F8
|14D4D5| db $87, $F0, $0F
|14D4D8| db $27 ; Repeat byte
|14D4D9| db $FF
|14D4DA| db $03 ; Raw block
|14D4DB| db $F0, $0F, $F8, $07
|14D4DF| db $43 ; Repeat word
|14D4E0| dw $03FC
|14D4E2| db $47 ; Repeat word
|14D4E3| dw $01FE
|14D4E5| db $27 ; Repeat byte
|14D4E6| db $FF
|14D4E7| db $E4, $2F ; EXT Repeat byte
|14D4E9| db $00
|14D4EA| db $03 ; Raw block
|14D4EB| db $FF, $04, $FF, $10
|14D4EF| db $46 ; Repeat word
|14D4F0| dw $00FF
|14D4F2| db $83 ; Copy past
|14D4F3| dw $010A
|14D4F5| db $02 ; Raw block
|14D4F6| db $FF, $03, $0F
|14D4F9| db $26 ; Repeat byte
|14D4FA| db $FF
|14D4FB| db $02 ; Raw block
|14D4FC| db $08, $FF, $02
|14D4FF| db $46 ; Repeat word
|14D500| dw $00FF
|14D502| db $06 ; Raw block
|14D503| db $1F, $FF, $7F, $FF, $FF, $F0, $FC
|14D50A| db $26 ; Repeat byte
|14D50B| db $FF
|14D50C| db $00 ; Raw block
|14D50D| db $07
|14D50E| db $46 ; Repeat word
|14D50F| dw $0FFF
|14D511| db $00 ; Raw block
|14D512| db $1F
|14D513| db $25 ; Repeat byte
|14D514| db $FF
|14D515| db $00 ; Raw block
|14D516| db $3F
|14D517| db $26 ; Repeat byte
|14D518| db $FF
|14D519| db $07 ; Raw block
|14D51A| db $1F, $E0, $3F, $C1, $7F, $84, $FF, $08
|14D522| db $83 ; Copy past
|14D523| dw $0018
|14D525| db $0B ; Raw block
|14D526| db $FF, $00, $FF, $03, $00, $00, $03, $07
|14D52E| db $0F, $0F, $1F, $1F
|14D532| db $46 ; Repeat word
|14D533| dw $01FF
|14D535| db $04 ; Raw block
|14D536| db $83, $FF, $03, $FF, $43
|14D53B| db $43 ; Repeat word
|14D53C| dw $07FF
|14D53E| db $22 ; Repeat byte
|14D53F| db $FF
|14D540| db $01 ; Raw block
|14D541| db $7F, $7F
|14D543| db $22 ; Repeat byte
|14D544| db $3F
|14D545| db $02 ; Raw block
|14D546| db $40, $7F, $C0
|14D549| db $45 ; Repeat word
|14D54A| dw $00FF
|14D54C| db $01 ; Raw block
|14D54D| db $F3, $0C
|14D54F| db $44 ; Repeat word
|14D550| dw $00FF
|14D552| db $07 ; Raw block
|14D553| db $BF, $3F, $FF, $F3, $ED, $E1, $F3, $FF
|14D55B| db $4B ; Repeat word
|14D55C| dw $00FF
|14D55E| db $03 ; Raw block
|14D55F| db $F8, $00, $E0, $00
|14D563| db $25 ; Repeat byte
|14D564| db $FF
|14D565| db $01 ; Raw block
|14D566| db $F8, $E0
|14D568| db $47 ; Repeat word
|14D569| dw $00FF
|14D56B| db $43 ; Repeat word
|14D56C| dw $00FE
|14D56E| db $03 ; Raw block
|14D56F| db $FC, $00, $F0, $00
|14D573| db $23 ; Repeat byte
|14D574| db $FF
|14D575| db $03 ; Raw block
|14D576| db $FE, $FE, $FC, $F0
|14D57A| db $85 ; Copy past
|14D57B| dw $00C0
|14D57D| db $49 ; Repeat word
|14D57E| dw $00FF
|14D580| db $32 ; Repeat byte
|14D581| db $FF
|14D582| db $84 ; Copy past
|14D583| dw $00E3
|14D585| db $27 ; Repeat byte
|14D586| db $FF
|14D587| db $07 ; Raw block
|14D588| db $00, $00, $F0, $F0, $FC, $FC, $FE, $FE
|14D590| db $27 ; Repeat byte
|14D591| db $FF
|14D592| db $03 ; Raw block
|14D593| db $00, $F0, $FC, $FE
|14D597| db $23 ; Repeat byte
|14D598| db $FF
|14D599| db $09 ; Raw block
|14D59A| db $00, $00, $80, $80, $E0, $E0, $F0, $F0
|14D5A2| db $F8, $F8
|14D5A4| db $23 ; Repeat byte
|14D5A5| db $FC
|14D5A6| db $08 ; Raw block
|14D5A7| db $FE, $FE, $00, $80, $E0, $F0, $F8, $FC
|14D5AF| db $FC
|14D5B0| db $45 ; Repeat word
|14D5B1| dw $FFFE
|14D5B3| db $0A ; Raw block
|14D5B4| db $FC, $FE, $E0, $FE, $C0, $FC, $80, $F8
|14D5BC| db $80, $F0, $00
|14D5BF| db $22 ; Repeat byte
|14D5C0| db $FF
|14D5C1| db $07 ; Raw block
|14D5C2| db $FE, $FE, $FC, $F8, $F0, $F0, $00, $F8
|14D5CA| db $44 ; Repeat word
|14D5CB| dw $FC00
|14D5CD| db $47 ; Repeat word
|14D5CE| dw $00FE
|14D5D0| db $83 ; Copy past
|14D5D1| dw $029B
|14D5D3| db $23 ; Repeat byte
|14D5D4| db $FE
|14D5D5| db $43 ; Repeat word
|14D5D6| dw $FF00
|14D5D8| db $43 ; Repeat word
|14D5D9| dw $FF08
|14D5DB| db $02 ; Raw block
|14D5DC| db $1C, $FF, $22
|14D5DF| db $44 ; Repeat word
|14D5E0| dw $00FF
|14D5E2| db $02 ; Raw block
|14D5E3| db $FF, $E3, $C1
|14D5E6| db $22 ; Repeat byte
|14D5E7| db $80
|14D5E8| db $19 ; Raw block
|14D5E9| db $C1, $E3, $FF, $00, $CE, $4E, $A5, $3D
|14D5F1| db $8A, $3B, $D5, $77, $EA, $6E, $D5, $5D
|14D5F9| db $AA, $3B, $00, $31, $42, $44, $08, $11
|14D601| db $22, $44
|14D603| db $4B ; Repeat word
|14D604| dw $00FF
|14D606| db $03 ; Raw block
|14D607| db $1F, $E0, $0F, $F0
|14D60B| db $27 ; Repeat byte
|14D60C| db $00
|14D60D| db $0B ; Raw block
|14D60E| db $F8, $FF, $E3, $FC, $C7, $FB, $9F, $F7
|14D616| db $BF, $ED, $3F, $EB
|14D61A| db $43 ; Repeat word
|14D61B| dw $E33F
|14D61D| db $83 ; Copy past
|14D61E| dw $01D8
|14D620| db $22 ; Repeat byte
|14D621| db $0F
|14D622| db $07 ; Raw block
|14D623| db $07, $0F, $F2, $37, $F8, $18, $FF, $0E
|14D62B| db $48 ; Repeat word
|14D62C| dw $00FF
|14D62E| db $00 ; Raw block
|14D62F| db $27
|14D630| db $3E ; Repeat byte
|14D631| db $00
|14D632| db $2F ; Repeat byte
|14D633| db $FF
|14D634| db $27 ; Repeat byte
|14D635| db $00
|14D636| db $17 ; Raw block
|14D637| db $A0, $60, $90, $70, $D8, $39, $C8, $3F
|14D63F| db $EC, $1F, $E4, $1F, $F6, $0F, $F2, $0F
|14D647| db $1F, $0F, $07, $07, $03, $03, $01, $01
|14D64F| db $43 ; Repeat word
|14D650| dw $FF70
|14D652| db $43 ; Repeat word
|14D653| dw $7FB8
|14D655| db $03 ; Raw block
|14D656| db $D8, $3F, $DC, $3F
|14D65A| db $43 ; Repeat word
|14D65B| dw $1FEC
|14D65D| db $23 ; Repeat byte
|14D65E| db $00
|14D65F| db $22 ; Repeat byte
|14D660| db $80
|14D661| db $04 ; Raw block
|14D662| db $C0, $FF, $00, $BF, $3C
|14D667| db $49 ; Repeat word
|14D668| dw $3DBE
|14D66A| db $02 ; Raw block
|14D66B| db $BF, $3C, $00
|14D66E| db $26 ; Repeat byte
|14D66F| db $40
|14D670| db $43 ; Repeat word
|14D671| dw $00FF
|14D673| db $00 ; Raw block
|14D674| db $00
|14D675| db $26 ; Repeat byte
|14D676| db $FF
|14D677| db $03 ; Raw block
|14D678| db $01, $01, $03, $03
|14D67C| db $25 ; Repeat byte
|14D67D| db $00
|14D67E| db $12 ; Raw block
|14D67F| db $FE, $FC, $A5, $66, $DB, $3C, $E7, $98
|14D687| db $FF, $80, $DB, $A4, $C3, $BC, $BF, $C0
|14D68F| db $87, $78, $18
|14D692| db $26 ; Repeat byte
|14D693| db $00
|14D694| db $0E ; Raw block
|14D695| db $7C, $FF, $7E, $FF, $03, $83, $00, $80
|14D69D| db $78, $F8, $87, $7F, $F8, $07, $FF
|14D6A4| db $22 ; Repeat byte
|14D6A5| db $00
|14D6A6| db $02 ; Raw block
|14D6A7| db $7C, $7F, $07
|14D6AA| db $22 ; Repeat byte
|14D6AB| db $00
|14D6AC| db $12 ; Raw block
|14D6AD| db $0C, $0F, $18, $1F, $31, $3E, $E1, $FE
|14D6B5| db $C3, $FC, $07, $F8, $1F, $E0, $CF, $F0
|14D6BD| db $F0, $E0, $C0
|14D6C0| db $24 ; Repeat byte
|14D6C1| db $00
|14D6C2| db $4B ; Repeat word
|14D6C3| dw $00FF
|14D6C5| db $01 ; Raw block
|14D6C6| db $80, $7F
|14D6C8| db $83 ; Copy past
|14D6C9| dw $0309
|14D6CB| db $00 ; Raw block
|14D6CC| db $7F
|14D6CD| db $25 ; Repeat byte
|14D6CE| db $FF
|14D6CF| db $43 ; Repeat word
|14D6D0| dw $FF01
|14D6D2| db $43 ; Repeat word
|14D6D3| dw $FF02
|14D6D5| db $43 ; Repeat word
|14D6D6| dw $FF04
|14D6D8| db $02 ; Raw block
|14D6D9| db $08, $FF, $08
|14D6DC| db $27 ; Repeat byte
|14D6DD| db $00
|14D6DE| db $4E ; Repeat word
|14D6DF| dw $00FF
|14D6E1| db $28 ; Repeat byte
|14D6E2| db $00
|14D6E3| db $4E ; Repeat word
|14D6E4| dw $00FF
|14D6E6| db $28 ; Repeat byte
|14D6E7| db $00
|14D6E8| db $02 ; Raw block
|14D6E9| db $0F, $FF, $C0
|14D6EC| db $84 ; Copy past
|14D6ED| dw $010B
|14D6EF| db $07 ; Raw block
|14D6F0| db $72, $7E, $24, $3C, $44, $7C, $82, $FE
|14D6F8| db $22 ; Repeat byte
|14D6F9| db $00
|14D6FA| db $10 ; Raw block
|14D6FB| db $80, $C1, $C3, $83, $01, $00, $FF, $03
|14D703| db $FC, $07, $FB, $0F, $F7, $1F, $ED, $1F
|14D70B| db $EB
|14D70C| db $43 ; Repeat word
|14D70D| dw $E31F
|14D70F| db $03 ; Raw block
|14D710| db $00, $00, $03, $17
|14D714| db $22 ; Repeat byte
|14D715| db $2F
|14D716| db $13 ; Raw block
|14D717| db $27, $7E, $79, $7F, $78, $BF, $B0, $1E
|14D71F| db $E1, $FD, $03, $3D, $FB, $66, $E5, $4F
|14D727| db $CC, $80, $80, $40
|14D72B| db $22 ; Repeat byte
|14D72C| db $00
|14D72D| db $01 ; Raw block
|14D72E| db $18, $30
|14D730| db $43 ; Repeat word
|14D731| dw $7F40
|14D733| db $43 ; Repeat word
|14D734| dw $FFE0
|14D736| db $09 ; Raw block
|14D737| db $F0, $FF, $B9, $BF, $9F, $1F, $CE, $4E
|14D73F| db $80, $80
|14D741| db $22 ; Repeat byte
|14D742| db $00
|14D743| db $03 ; Raw block
|14D744| db $40, $60, $31, $78
|14D748| db $44 ; Repeat word
|14D749| dw $70FF
|14D74B| db $45 ; Repeat word
|14D74C| dw $FFB0
|14D74E| db $43 ; Repeat word
|14D74F| dw $FFD0
|14D751| db $22 ; Repeat byte
|14D752| db $80
|14D753| db $22 ; Repeat byte
|14D754| db $40
|14D755| db $09 ; Raw block
|14D756| db $20, $20, $FB, $07, $F9, $07, $FD, $03
|14D75E| db $FC, $03
|14D760| db $43 ; Repeat word
|14D761| dw $01FE
|14D763| db $43 ; Repeat word
|14D764| dw $00FF
|14D766| db $04 ; Raw block
|14D767| db $C0, $C0, $E0, $F0, $F0
|14D76C| db $22 ; Repeat byte
|14D76D| db $F8
|14D76E| db $03 ; Raw block
|14D76F| db $F6, $0F, $F7, $0F
|14D773| db $43 ; Repeat word
|14D774| dw $07FB
|14D776| db $43 ; Repeat word
|14D777| dw $03FD
|14D779| db $43 ; Repeat word
|14D77A| dw $01FE
|14D77C| db $23 ; Repeat byte
|14D77D| db $C0
|14D77E| db $03 ; Raw block
|14D77F| db $E0, $F8, $FC, $FC
|14D783| db $4B ; Repeat word
|14D784| dw $3EBD
|14D786| db $03 ; Raw block
|14D787| db $9F, $1E, $83, $02
|14D78B| db $25 ; Repeat byte
|14D78C| db $40
|14D78D| db $04 ; Raw block
|14D78E| db $60, $7C, $7C, $FF, $7E
|14D793| db $44 ; Repeat word
|14D794| dw $7FFF
|14D796| db $07 ; Raw block
|14D797| db $3F, $FF, $1F, $FF, $3F, $FF, $7E, $FF
|14D79F| db $27 ; Repeat byte
|14D7A0| db $00
|14D7A1| db $09 ; Raw block
|14D7A2| db $18, $F8, $0C, $FC, $E7, $FF, $10, $1F
|14D7AA| db $0F, $0F
|14D7AC| db $23 ; Repeat byte
|14D7AD| db $07
|14D7AE| db $06 ; Raw block
|14D7AF| db $06, $07, $07, $03, $00, $E0, $F0
|14D7B6| db $22 ; Repeat byte
|14D7B7| db $F8
|14D7B8| db $11 ; Raw block
|14D7B9| db $18, $1F, $30, $3F, $C7, $FF, $07, $FF
|14D7C1| db $C3, $FF, $88, $F7, $0C, $F3, $1F, $E0
|14D7C9| db $E0, $C0
|14D7CB| db $25 ; Repeat byte
|14D7CC| db $00
|14D7CD| db $01 ; Raw block
|14D7CE| db $67, $78
|14D7D0| db $43 ; Repeat word
|14D7D1| dw $3827
|14D7D3| db $01 ; Raw block
|14D7D4| db $67, $78
|14D7D6| db $43 ; Repeat word
|14D7D7| dw $F8E7
|14D7D9| db $07 ; Raw block
|14D7DA| db $CF, $F0, $DF, $E0, $80, $C0, $C0, $80
|14D7E2| db $23 ; Repeat byte
|14D7E3| db $00
|14D7E4| db $0F ; Raw block
|14D7E5| db $8F, $F0, $C7, $F8, $E7, $F8, $67, $78
|14D7ED| db $6F, $70, $DF, $E0, $BF, $C0, $FE, $01
|14D7F5| db $22 ; Repeat byte
|14D7F6| db $00
|14D7F7| db $14 ; Raw block
|14D7F8| db $81, $83, $07, $0F, $1F, $FF, $81, $FF
|14D800| db $00, $FF, $18, $FF, $42, $FF, $00, $FF
|14D808| db $81, $FF, $42, $EF, $08
|14D80D| db $26 ; Repeat byte
|14D80E| db $00
|14D80F| db $00 ; Raw block
|14D810| db $10
|14D811| db $2F ; Repeat byte
|14D812| db $FF
|14D813| db $27 ; Repeat byte
|14D814| db $00
|14D815| db $4E ; Repeat word
|14D816| dw $00FF
|14D818| db $28 ; Repeat byte
|14D819| db $00
|14D81A| db $FF ; End of GFX 59

;===================================================================================================

GFX_5A:
|14D81B| db $07 ; Raw block
|14D81C| db $2F, $30, $4D, $CE, $10, $F0, $04, $FC
|14D824| db $45 ; Repeat word
|14D825| dw $FF00
|14D827| db $05 ; Raw block
|14D828| db $10, $FF, $C0, $30, $0F, $03
|14D82E| db $23 ; Repeat byte
|14D82F| db $00
|14D830| db $E0, $47 ; EXT Raw block
|14D832| db $C0, $0F, $80, $4F, $D0, $5F, $C0, $5F
|14D83A| db $21, $BF, $80, $BF, $40, $7F, $00, $7F
|14D842| db $30, $30, $20, $20, $40, $40, $80, $80
|14D84A| db $F4, $0C, $F1, $11, $E4, $27, $C8, $4F
|14D852| db $15, $9F, $88, $9F, $20, $3F, $08, $3F
|14D85A| db $E3, $CE, $98, $30, $60, $60, $C0, $C0
|14D862| db $FF, $FF, $FE, $FF, $FC, $FE, $F8, $FC
|14D86A| db $F0, $F9, $E3, $E7, $8F, $DF, $FF, $FF
|14D872| db $00, $01, $03, $07, $0F, $1C, $70, $00
|14D87A| db $25 ; Repeat byte
|14D87B| db $FF
|14D87C| db $83 ; Copy past
|14D87D| dw $004A
|14D87F| db $05 ; Raw block
|14D880| db $F0, $F9, $C3, $E7, $0F, $9F
|14D886| db $22 ; Repeat byte
|14D887| db $00
|14D888| db $04 ; Raw block
|14D889| db $01, $03, $0F, $3C, $F0
|14D88E| db $2D ; Repeat byte
|14D88F| db $FF
|14D890| db $01 ; Raw block
|14D891| db $80, $E3
|14D893| db $26 ; Repeat byte
|14D894| db $00
|14D895| db $E0, $2C ; EXT Raw block
|14D897| db $7F, $50, $FF, $52, $DE, $8C, $DE, $00
|14D89F| db $00, $8E, $8E, $71, $FF, $04, $FC, $80
|14D8A7| db $FF, $21, $21, $73, $FF, $71, $00, $83
|14D8AF| db $40, $33, $FF, $5E, $FF, $41, $FF, $23
|14D8B7| db $FF, $1E, $FF, $00, $FF, $40, $FF, $60
|14D8BF| db $FF, $40, $21, $3E, $1C
|14D8C4| db $23 ; Repeat byte
|14D8C5| db $00
|14D8C6| db $00 ; Raw block
|14D8C7| db $01
|14D8C8| db $44 ; Repeat word
|14D8C9| dw $00FF
|14D8CB| db $09 ; Raw block
|14D8CC| db $01, $FF, $03, $FF, $86, $FE, $CD, $FD
|14D8D4| db $7B, $7B
|14D8D6| db $24 ; Repeat byte
|14D8D7| db $00
|14D8D8| db $14 ; Raw block
|14D8D9| db $01, $02, $84, $40, $EF, $30, $F0, $1F
|14D8E1| db $FF, $80, $FF, $60, $FF, $18, $FF, $C0
|14D8E9| db $FF, $F0, $FF, $30, $0F
|14D8EE| db $22 ; Repeat byte
|14D8EF| db $00
|14D8F0| db $12 ; Raw block
|14D8F1| db $07, $00, $00, $FF, $FF, $7F, $FF, $39
|14D8F9| db $FF, $80, $FF, $C0, $FF, $61, $7F, $B3
|14D901| db $BF, $DE, $DE
|14D904| db $24 ; Repeat byte
|14D905| db $00
|14D906| db $07 ; Raw block
|14D907| db $80, $40, $21, $61, $E1, $32, $F3, $1C
|14D90F| db $84 ; Copy past
|14D910| dw $00B1
|14D912| db $07 ; Raw block
|14D913| db $41, $FF, $61, $FF, $73, $FF, $1E, $0C
|14D91B| db $25 ; Repeat byte
|14D91C| db $00
|14D91D| db $93 ; Copy past
|14D91E| dw $00A8
|14D920| db $23 ; Repeat byte
|14D921| db $00
|14D922| db $97 ; Copy past
|14D923| dw $0090
|14D925| db $1F ; Raw block
|14D926| db $08, $3F, $20, $3F, $88, $9F, $15, $9F
|14D92E| db $C8, $4F, $E4, $27, $F1, $11, $F4, $0C
|14D936| db $C0, $C0, $60, $60, $30, $98, $CE, $E3
|14D93E| db $0F, $D2, $27, $E8, $17, $F7, $88, $F8
|14D946| db $83 ; Copy past
|14D947| dw $00F6
|14D949| db $07 ; Raw block
|14D94A| db $E0, $FF, $F8, $FF, $27, $10, $08, $07
|14D952| db $23 ; Repeat byte
|14D953| db $00
|14D954| db $04 ; Raw block
|14D955| db $0C, $FF, $06, $FF, $03
|14D95A| db $46 ; Repeat word
|14D95B| dw $00FF
|14D95D| db $83 ; Copy past
|14D95E| dw $00E4
|14D960| db $01 ; Raw block
|14D961| db $00, $01
|14D963| db $25 ; Repeat byte
|14D964| db $00
|14D965| db $06 ; Raw block
|14D966| db $20, $FF, $60, $FF, $C0, $FF, $80
|14D96D| db $44 ; Repeat word
|14D96E| dw $01FF
|14D970| db $43 ; Repeat word
|14D971| dw $FF03
|14D973| db $00 ; Raw block
|14D974| db $40
|14D975| db $26 ; Repeat byte
|14D976| db $00
|14D977| db $13 ; Raw block
|14D978| db $50, $7F, $A0, $FF, $40, $FF, $82, $FF
|14D980| db $02, $FF, $04, $FF, $19, $FF, $03, $FF
|14D988| db $80, $10, $20, $40
|14D98C| db $23 ; Repeat byte
|14D98D| db $00
|14D98E| db $43 ; Repeat word
|14D98F| dw $FF07
|14D991| db $43 ; Repeat word
|14D992| dw $FF0F
|14D994| db $02 ; Raw block
|14D995| db $1F, $FF, $7F
|14D998| db $24 ; Repeat byte
|14D999| db $FF
|14D99A| db $27 ; Repeat byte
|14D99B| db $00
|14D99C| db $0F ; Raw block
|14D99D| db $03, $FF, $19, $FF, $04, $FF, $02, $FF
|14D9A5| db $82, $FF, $40, $FF, $A0, $FF, $50, $7F
|14D9AD| db $23 ; Repeat byte
|14D9AE| db $00
|14D9AF| db $04 ; Raw block
|14D9B0| db $40, $20, $10, $80, $87
|14D9B5| db $46 ; Repeat word
|14D9B6| dw $C3FF
|14D9B8| db $00 ; Raw block
|14D9B9| db $3C
|14D9BA| db $46 ; Repeat word
|14D9BB| dw $78FF
|14D9BD| db $27 ; Repeat byte
|14D9BE| db $00
|14D9BF| db $18 ; Raw block
|14D9C0| db $E3, $FF, $60, $FF, $00, $FF, $1C, $FF
|14D9C8| db $26, $FF, $4E, $EF, $7E, $FF, $24, $FF
|14D9D0| db $1C, $9F, $FF, $E3, $D9, $B1, $81, $C3
|14D9D8| db $00
|14D9D9| db $44 ; Repeat word
|14D9DA| dw $30FF
|14D9DC| db $43 ; Repeat word
|14D9DD| dw $FF00
|14D9DF| db $00 ; Raw block
|14D9E0| db $18
|14D9E1| db $43 ; Repeat word
|14D9E2| dw $00FF
|14D9E4| db $06 ; Raw block
|14D9E5| db $FD, $FF, $CF, $CF, $FF, $FF, $E7
|14D9EC| db $2D ; Repeat byte
|14D9ED| db $FF
|14D9EE| db $03 ; Raw block
|14D9EF| db $F8, $FF, $C0, $FF
|14D9F3| db $25 ; Repeat byte
|14D9F4| db $00
|14D9F5| db $01 ; Raw block
|14D9F6| db $07, $3F
|14D9F8| db $83 ; Copy past
|14D9F9| dw $0048
|14D9FB| db $04 ; Raw block
|14D9FC| db $F8, $FF, $F0, $FF, $E0
|14DA01| db $44 ; Repeat word
|14DA02| dw $C0FF
|14DA04| db $09 ; Raw block
|14DA05| db $80, $FF, $00, $01, $07, $0F, $1F, $3F
|14DA0D| db $3F, $7F
|14DA0F| db $23 ; Repeat byte
|14DA10| db $FF
|14DA11| db $45 ; Repeat word
|14DA12| dw $FFFE
|14DA14| db $45 ; Repeat word
|14DA15| dw $FFFC
|14DA17| db $01 ; Raw block
|14DA18| db $00, $00
|14DA1A| db $22 ; Repeat byte
|14DA1B| db $01
|14DA1C| db $22 ; Repeat byte
|14DA1D| db $03
|14DA1E| db $0B ; Raw block
|14DA1F| db $00, $FF, $00, $E3, $00, $A2, $00, $9C
|14DA27| db $41, $9C, $63, $80
|14DA2B| db $43 ; Repeat word
|14DA2C| dw $E31C
|14DA2E| db $22 ; Repeat byte
|14DA2F| db $FF
|14DA30| db $01 ; Raw block
|14DA31| db $E3, $E3
|14DA33| db $22 ; Repeat byte
|14DA34| db $FF
|14DA35| db $00 ; Raw block
|14DA36| db $04
|14DA37| db $84 ; Copy past
|14DA38| dw $0181
|14DA3A| db $00 ; Raw block
|14DA3B| db $01
|14DA3C| db $44 ; Repeat word
|14DA3D| dw $80FF
|14DA3F| db $43 ; Repeat word
|14DA40| dw $FFC0
|14DA42| db $00 ; Raw block
|14DA43| db $02
|14DA44| db $27 ; Repeat byte
|14DA45| db $00
|14DA46| db $0D ; Raw block
|14DA47| db $FF, $00, $FF, $38, $C7, $4C, $B3, $7C
|14DA4F| db $83, $38, $C7, $00, $FF, $00
|14DA55| db $28 ; Repeat byte
|14DA56| db $FF
|14DA57| db $E0, $3A ; EXT Raw block
|14DA59| db $00, $00, $0C, $00, $14, $00, $2C, $08
|14DA61| db $3C, $10, $14, $00, $67, $00, $A7, $03
|14DA69| db $00, $00, $08, $10, $00, $08, $18, $58
|14DA71| db $FF, $00, $C8, $78, $95, $77, $A8, $6E
|14DA79| db $D2, $5E, $A5, $3D, $8A, $3B, $A5, $27
|14DA81| db $00, $07, $08, $11, $21, $42, $44, $58
|14DA89| db $BF, $C0, $2F, $30, $8B, $8C, $20, $E0
|14DA91| db $0C, $FC, $01
|14DA94| db $45 ; Repeat word
|14DA95| dw $00FF
|14DA97| db $03 ; Raw block
|14DA98| db $C0, $70, $1F, $03
|14DA9C| db $22 ; Repeat byte
|14DA9D| db $00
|14DA9E| db $07 ; Raw block
|14DA9F| db $E4, $07, $E0, $07, $C8, $2F, $E8, $2F
|14DAA7| db $83 ; Copy past
|14DAA8| dw $001A
|14DAAA| db $0D ; Raw block
|14DAAB| db $00, $9F, $A0, $BF, $18, $18, $10, $10
|14DAB3| db $30, $20, $60, $40, $FD, $03
|14DAB9| db $85 ; Copy past
|14DABA| dw $0030
|14DABC| db $08 ; Raw block
|14DABD| db $88, $4F, $D2, $5F, $04, $9F, $A0, $BF
|14DAC5| db $F0
|14DAC6| db $83 ; Copy past
|14DAC7| dw $0040
|14DAC9| db $02 ; Raw block
|14DACA| db $20, $60, $40
|14DACD| db $25 ; Repeat byte
|14DACE| db $FF
|14DACF| db $89 ; Copy past
|14DAD0| dw $0066
|14DAD2| db $22 ; Repeat byte
|14DAD3| db $00
|14DAD4| db $84 ; Copy past
|14DAD5| dw $0073
|14DAD7| db $2B ; Repeat byte
|14DAD8| db $FF
|14DAD9| db $03 ; Raw block
|14DADA| db $FC, $FC, $80, $C3
|14DADE| db $25 ; Repeat byte
|14DADF| db $00
|14DAE0| db $01 ; Raw block
|14DAE1| db $03, $7F
|14DAE3| db $27 ; Repeat byte
|14DAE4| db $FF
|14DAE5| db $07 ; Raw block
|14DAE6| db $E7, $E7, $C3, $DB, $18, $BD, $FF, $FF
|14DAEE| db $23 ; Repeat byte
|14DAEF| db $00
|14DAF0| db $1F ; Raw block
|14DAF1| db $18, $3C, $E7, $00, $54, $FF, $A0, $B7
|14DAF9| db $02, $A2, $00, $00, $26, $26, $D9, $FF
|14DB01| db $18, $FB, $04, $FC, $08, $5D, $FD, $FF
|14DB09| db $D9, $00, $04, $03, $40, $FF, $61, $FF
|14DB11| db $83 ; Copy past
|14DB12| dw $00A8
|14DB14| db $04 ; Raw block
|14DB15| db $20, $FF, $13, $FF, $0E
|14DB1A| db $43 ; Repeat word
|14DB1B| dw $00FF
|14DB1D| db $07 ; Raw block
|14DB1E| db $00, $40, $21, $1F, $0C, $00, $00, $01
|14DB26| db $46 ; Repeat word
|14DB27| dw $00FF
|14DB29| db $87 ; Copy past
|14DB2A| dw $00C6
|14DB2C| db $25 ; Repeat byte
|14DB2D| db $00
|14DB2E| db $62 ; Increment fill
|14DB2F| db $01
|14DB30| db $10 ; Raw block
|14DB31| db $FF, $00, $BF, $4F, $CF, $B0, $F0, $4F
|14DB39| db $FF, $B0, $FF, $CE, $FF, $F8, $FF, $80
|14DB41| db $40
|14DB42| db $83 ; Copy past
|14DB43| dw $00E8
|14DB45| db $00 ; Raw block
|14DB46| db $01
|14DB47| db $84 ; Copy past
|14DB48| dw $00EF
|14DB4A| db $02 ; Raw block
|14DB4B| db $3B, $FF, $11
|14DB4E| db $88 ; Copy past
|14DB4F| dw $00F5
|14DB51| db $25 ; Repeat byte
|14DB52| db $00
|14DB53| db $16 ; Raw block
|14DB54| db $80, $40, $9E, $9E, $CC, $CD, $41, $E1
|14DB5C| db $61, $F3, $73, $FF, $3F, $FF, $1F, $FF
|14DB64| db $0F, $FF, $61, $33, $3E, $1E, $0C
|14DB6B| db $22 ; Repeat byte
|14DB6C| db $00
|14DB6D| db $8C ; Copy past
|14DB6E| dw $03A8
|14DB70| db $43 ; Repeat word
|14DB71| dw $00FF
|14DB73| db $86 ; Copy past
|14DB74| dw $03B9
|14DB76| db $97 ; Copy past
|14DB77| dw $0390
|14DB79| db $06 ; Raw block
|14DB7A| db $A0, $BF, $04, $9F, $D2, $5F, $88
|14DB81| db $86 ; Copy past
|14DB82| dw $0159
|14DB84| db $04 ; Raw block
|14DB85| db $FD, $03, $40, $60, $20
|14DB8A| db $83 ; Copy past
|14DB8B| dw $0164
|14DB8D| db $08 ; Raw block
|14DB8E| db $F0, $1F, $D2, $2F, $E8, $93, $F3, $84
|14DB96| db $FC
|14DB97| db $83 ; Copy past
|14DB98| dw $0172
|14DB9A| db $07 ; Raw block
|14DB9B| db $F0, $FF, $FC, $FF, $27, $10, $0C, $03
|14DBA3| db $24 ; Repeat byte
|14DBA4| db $00
|14DBA5| db $03 ; Raw block
|14DBA6| db $FF, $10, $FF, $0C
|14DBAA| db $84 ; Copy past
|14DBAB| dw $0183
|14DBAD| db $02 ; Raw block
|14DBAE| db $C0, $FF, $F8
|14DBB1| db $22 ; Repeat byte
|14DBB2| db $FF
|14DBB3| db $27 ; Repeat byte
|14DBB4| db $00
|14DBB5| db $43 ; Repeat word
|14DBB6| dw $FF11
|14DBB8| db $06 ; Raw block
|14DBB9| db $21, $FF, $23, $FF, $43, $FF, $03
|14DBC0| db $44 ; Repeat word
|14DBC1| dw $07FF
|14DBC3| db $27 ; Repeat byte
|14DBC4| db $00
|14DBC5| db $0A ; Raw block
|14DBC6| db $08, $3F, $08, $7F, $18, $FF, $20, $FF
|14DBCE| db $E0, $FF, $00
|14DBD1| db $84 ; Copy past
|14DBD2| dw $04A1
|14DBD4| db $03 ; Raw block
|14DBD5| db $C0, $80, $00, $10
|14DBD9| db $23 ; Repeat byte
|14DBDA| db $00
|14DBDB| db $00 ; Raw block
|14DBDC| db $07
|14DBDD| db $44 ; Repeat word
|14DBDE| dw $0FFF
|14DBE0| db $02 ; Raw block
|14DBE1| db $1F, $FF, $3F
|14DBE4| db $26 ; Repeat byte
|14DBE5| db $FF
|14DBE6| db $27 ; Repeat byte
|14DBE7| db $00
|14DBE8| db $00 ; Raw block
|14DBE9| db $07
|14DBEA| db $84 ; Copy past
|14DBEB| dw $0183
|14DBED| db $09 ; Raw block
|14DBEE| db $E0, $FF, $20, $FF, $18, $FF, $08, $7F
|14DBF6| db $08, $3F
|14DBF8| db $23 ; Repeat byte
|14DBF9| db $00
|14DBFA| db $03 ; Raw block
|14DBFB| db $10, $00, $80, $C0
|14DBFF| db $45 ; Repeat word
|14DC00| dw $FF87
|14DC02| db $00 ; Raw block
|14DC03| db $C3
|14DC04| db $46 ; Repeat word
|14DC05| dw $3CFF
|14DC07| db $01 ; Raw block
|14DC08| db $78, $FF
|14DC0A| db $27 ; Repeat byte
|14DC0B| db $00
|14DC0C| db $1C ; Raw block
|14DC0D| db $61, $FF, $C0, $FF, $0C, $FF, $3E, $FF
|14DC15| db $22, $FF, $46, $FF, $3C, $FF, $46, $FF
|14DC1D| db $9E, $3F, $F3, $C1, $DD, $B9, $C3, $81
|14DC25| db $00, $FF, $70, $FF, $30
|14DC2A| db $44 ; Repeat word
|14DC2B| dw $00FF
|14DC2D| db $00 ; Raw block
|14DC2E| db $38
|14DC2F| db $43 ; Repeat word
|14DC30| dw $00FF
|14DC32| db $06 ; Raw block
|14DC33| db $FA, $FF, $8F, $CF, $FF, $FF, $C7
|14DC3A| db $2B ; Repeat byte
|14DC3B| db $FF
|14DC3C| db $00 ; Raw block
|14DC3D| db $FC
|14DC3E| db $84 ; Copy past
|14DC3F| dw $04B7
|14DC41| db $24 ; Repeat byte
|14DC42| db $00
|14DC43| db $01 ; Raw block
|14DC44| db $03, $1F
|14DC46| db $84 ; Copy past
|14DC47| dw $0277
|14DC49| db $02 ; Raw block
|14DC4A| db $F0, $FF, $E0
|14DC4D| db $44 ; Repeat word
|14DC4E| dw $C0FF
|14DC50| db $00 ; Raw block
|14DC51| db $80
|14DC52| db $83 ; Copy past
|14DC53| dw $00C3
|14DC55| db $00 ; Raw block
|14DC56| db $03
|14DC57| db $84 ; Copy past
|14DC58| dw $026B
|14DC5A| db $46 ; Repeat word
|14DC5B| dw $FEFF
|14DC5D| db $45 ; Repeat word
|14DC5E| dw $FFFC
|14DC60| db $43 ; Repeat word
|14DC61| dw $FFF8
|14DC63| db $22 ; Repeat byte
|14DC64| db $01
|14DC65| db $22 ; Repeat byte
|14DC66| db $03
|14DC67| db $03 ; Raw block
|14DC68| db $07, $07, $00, $FF
|14DC6C| db $44 ; Repeat word
|14DC6D| dw $E300
|14DC6F| db $08 ; Raw block
|14DC70| db $9C, $00, $9C, $63, $80, $00, $E3, $1C
|14DC78| db $E3
|14DC79| db $22 ; Repeat byte
|14DC7A| db $FF
|14DC7B| db $01 ; Raw block
|14DC7C| db $E3, $E3
|14DC7E| db $22 ; Repeat byte
|14DC7F| db $FF
|14DC80| db $43 ; Repeat word
|14DC81| dw $FF88
|14DC83| db $06 ; Raw block
|14DC84| db $84, $FF, $C4, $FF, $C2, $FF, $C0
|14DC8B| db $44 ; Repeat word
|14DC8C| dw $E0FF
|14DC8E| db $28 ; Repeat byte
|14DC8F| db $00
|14DC90| db $8D ; Copy past
|14DC91| dw $02B9
|14DC93| db $28 ; Repeat byte
|14DC94| db $FF
|14DC95| db $86 ; Copy past
|14DC96| dw $02D0
|14DC98| db $0A ; Raw block
|14DC99| db $00, $34, $00, $2C, $08, $7F, $18, $BF
|14DCA1| db $0B, $00, $00
|14DCA4| db $43 ; Repeat word
|14DCA5| dw $1008
|14DCA7| db $05 ; Raw block
|14DCA8| db $00, $40, $FF, $00, $A6, $66
|14DCAE| db $83 ; Copy past
|14DCAF| dw $02F0
|14DCB1| db $0F ; Raw block
|14DCB2| db $84, $3D, $DA, $7B, $E5, $67, $92, $1E
|14DCBA| db $00, $19, $21, $42, $42, $04, $18, $61
|14DCC2| db $FF ; End of GFX 5A

;===================================================================================================

GFX_5B:
|14DCC3| db $12 ; Raw block
|14DCC4| db $1B, $1C, $62, $E3, $08, $F8, $23, $FF
|14DCCC| db $10, $FF, $0F, $FF, $02, $FF, $00, $FF
|14DCD4| db $E0, $1C, $07
|14DCD7| db $22 ; Repeat byte
|14DCD8| db $00
|14DCD9| db $16 ; Raw block
|14DCDA| db $01, $00, $94, $5F, $D6, $5F, $04, $9F
|14DCE2| db $A4, $BF, $88, $BF, $50, $7F, $40, $7F
|14DCEA| db $00, $7F, $22, $20, $60, $40, $40
|14DCF1| db $22 ; Repeat byte
|14DCF2| db $80
|14DCF3| db $17 ; Raw block
|14DCF4| db $FA, $06, $E8, $18, $E2, $23, $C8, $4F
|14DCFC| db $10, $9F, $80, $9F, $21, $3F, $42, $7F
|14DD04| db $F1, $C7, $9C, $30, $60, $60, $C0, $80
|14DD0C| db $2B ; Repeat byte
|14DD0D| db $FF
|14DD0E| db $03 ; Raw block
|14DD0F| db $FC, $FC, $80, $C3
|14DD13| db $25 ; Repeat byte
|14DD14| db $00
|14DD15| db $19 ; Raw block
|14DD16| db $03, $7F, $FF, $FF, $FE, $FF, $FC, $FE
|14DD1E| db $F8, $FC, $F0, $F9, $E3, $E7, $8F, $DF
|14DD26| db $FF, $FF, $00, $01, $03, $07, $0F, $1C
|14DD2E| db $70, $00
|14DD30| db $29 ; Repeat byte
|14DD31| db $FF
|14DD32| db $05 ; Raw block
|14DD33| db $F7, $F7, $E3, $EB, $9C, $FF
|14DD39| db $24 ; Repeat byte
|14DD3A| db $00
|14DD3B| db $1D ; Raw block
|14DD3C| db $08, $1C, $63, $20, $FD, $54, $DD, $88
|14DD44| db $DD, $80, $80, $E3, $E3, $5C, $FF, $20
|14DD4C| db $EF, $13, $F3, $0F, $22, $77, $7F, $1C
|14DD54| db $00, $10, $0C, $13, $FF, $0E
|14DD5A| db $44 ; Repeat word
|14DD5B| dw $40FF
|14DD5D| db $08 ; Raw block
|14DD5E| db $21, $FF, $12, $FF, $4C, $FF, $21, $FF
|14DD66| db $0C
|14DD67| db $22 ; Repeat byte
|14DD68| db $00
|14DD69| db $04 ; Raw block
|14DD6A| db $40, $61, $33, $1E, $01
|14DD6F| db $48 ; Repeat word
|14DD70| dw $00FF
|14DD72| db $05 ; Raw block
|14DD73| db $01, $FF, $86, $FE, $4D, $7D
|14DD79| db $25 ; Repeat byte
|14DD7A| db $00
|14DD7B| db $0E ; Raw block
|14DD7C| db $01, $82, $1C, $FC, $47, $FF, $00, $FF
|14DD84| db $4C, $FF, $10, $FF, $87, $FF, $E0
|14DD8B| db $22 ; Repeat byte
|14DD8C| db $FF
|14DD8D| db $04 ; Raw block
|14DD8E| db $03, $80, $40, $30, $0F
|14DD93| db $22 ; Repeat byte
|14DD94| db $00
|14DD95| db $23 ; Repeat byte
|14DD96| db $FF
|14DD97| db $0B ; Raw block
|14DD98| db $7B, $FF, $79, $FF, $31, $FF, $80, $FF
|14DDA0| db $61, $7F, $B2, $BE
|14DDA4| db $25 ; Repeat byte
|14DDA5| db $00
|14DDA6| db $1C ; Raw block
|14DDA7| db $80, $41, $CC, $CC, $61, $E1, $32, $F3
|14DDAF| db $1C, $FF, $41, $FF, $33, $FF, $1F, $FF
|14DDB7| db $4F, $FF, $33, $1E, $0C, $00, $00, $40
|14DDBF| db $60, $30, $13, $FF, $0E
|14DDC4| db $44 ; Repeat word
|14DDC5| dw $40FF
|14DDC7| db $88 ; Copy past
|14DDC8| dw $00B0
|14DDCA| db $22 ; Repeat byte
|14DDCB| db $00
|14DDCC| db $83 ; Copy past
|14DDCD| dw $00BC
|14DDCF| db $97 ; Copy past
|14DDD0| dw $0090
|14DDD2| db $E0, $24 ; EXT Raw block
|14DDD4| db $42, $7F, $21, $3F, $80, $9F, $10, $9F
|14DDDC| db $C8, $4F, $E2, $23, $E8, $18, $FA, $06
|14DDE4| db $80, $C0, $60, $60, $30, $9C, $C7, $F1
|14DDEC| db $2F, $E2, $17, $F0, $88, $F8, $87, $FF
|14DDF4| db $C0, $FF, $E0, $FF, $F8
|14DDF9| db $22 ; Repeat byte
|14DDFA| db $FF
|14DDFB| db $02 ; Raw block
|14DDFC| db $17, $08, $07
|14DDFF| db $25 ; Repeat byte
|14DE00| db $00
|14DE01| db $44 ; Repeat word
|14DE02| dw $00FF
|14DE04| db $06 ; Raw block
|14DE05| db $04, $FF, $03, $FF, $C0, $FF, $FC
|14DE0C| db $22 ; Repeat byte
|14DE0D| db $FF
|14DE0E| db $27 ; Repeat byte
|14DE0F| db $00
|14DE10| db $43 ; Repeat word
|14DE11| dw $FF09
|14DE13| db $00 ; Raw block
|14DE14| db $13
|14DE15| db $46 ; Repeat word
|14DE16| dw $03FF
|14DE18| db $43 ; Repeat word
|14DE19| dw $FF07
|14DE1B| db $27 ; Repeat byte
|14DE1C| db $00
|14DE1D| db $0A ; Raw block
|14DE1E| db $20, $7F, $44, $FF, $84, $FF, $08, $FF
|14DE26| db $10, $FF, $63
|14DE29| db $44 ; Repeat word
|14DE2A| dw $07FF
|14DE2C| db $00 ; Raw block
|14DE2D| db $80
|14DE2E| db $26 ; Repeat byte
|14DE2F| db $00
|14DE30| db $06 ; Raw block
|14DE31| db $07, $FF, $0F, $FF, $1F, $FF, $3F
|14DE38| db $28 ; Repeat byte
|14DE39| db $FF
|14DE3A| db $27 ; Repeat byte
|14DE3B| db $00
|14DE3C| db $43 ; Repeat word
|14DE3D| dw $FF07
|14DE3F| db $0B ; Raw block
|14DE40| db $63, $FF, $10, $FF, $08, $FF, $84, $FF
|14DE48| db $44, $FF, $20, $7F
|14DE4C| db $26 ; Repeat byte
|14DE4D| db $00
|14DE4E| db $00 ; Raw block
|14DE4F| db $80
|14DE50| db $43 ; Repeat word
|14DE51| dw $FFC3
|14DE53| db $43 ; Repeat word
|14DE54| dw $FF87
|14DE56| db $43 ; Repeat word
|14DE57| dw $FF78
|14DE59| db $43 ; Repeat word
|14DE5A| dw $FF3C
|14DE5C| db $27 ; Repeat byte
|14DE5D| db $00
|14DE5E| db $1C ; Raw block
|14DE5F| db $C2, $FF, $C0, $FF, $08, $FF, $1C, $FF
|14DE67| db $66, $FF, $24, $F7, $7E, $FF, $10, $FF
|14DE6F| db $3D, $3F, $F7, $E3, $99, $DB, $81, $C3
|14DE77| db $00, $FF, $18, $FF, $30
|14DE7C| db $44 ; Repeat word
|14DE7D| dw $00FF
|14DE7F| db $00 ; Raw block
|14DE80| db $30
|14DE81| db $43 ; Repeat word
|14DE82| dw $00FF
|14DE84| db $06 ; Raw block
|14DE85| db $F9, $FF, $E7, $CF, $FF, $FF, $CF
|14DE8C| db $29 ; Repeat byte
|14DE8D| db $FF
|14DE8E| db $07 ; Raw block
|14DE8F| db $FC, $FF, $F0, $FF, $C0, $FF, $00, $FF
|14DE97| db $23 ; Repeat byte
|14DE98| db $00
|14DE99| db $08 ; Raw block
|14DE9A| db $03, $0F, $3F, $FF, $FE, $FF, $F8, $FF
|14DEA2| db $E0
|14DEA3| db $44 ; Repeat word
|14DEA4| dw $C0FF
|14DEA6| db $43 ; Repeat word
|14DEA7| dw $FF80
|14DEA9| db $08 ; Raw block
|14DEAA| db $00, $FF, $01, $07, $1F, $3F, $3F, $7F
|14DEB2| db $7F
|14DEB3| db $44 ; Repeat word
|14DEB4| dw $FEFF
|14DEB6| db $43 ; Repeat word
|14DEB7| dw $FFFC
|14DEB9| db $43 ; Repeat word
|14DEBA| dw $FFF8
|14DEBC| db $43 ; Repeat word
|14DEBD| dw $FFF0
|14DEBF| db $07 ; Raw block
|14DEC0| db $01, $01, $03, $03, $07, $07, $0F, $0F
|14DEC8| db $44 ; Repeat word
|14DEC9| dw $E300
|14DECB| db $02 ; Raw block
|14DECC| db $9C, $00, $9C
|14DECF| db $43 ; Repeat word
|14DED0| dw $8063
|14DED2| db $43 ; Repeat word
|14DED3| dw $E31C
|14DED5| db $03 ; Raw block
|14DED6| db $FF, $FF, $E3, $E3
|14DEDA| db $23 ; Repeat byte
|14DEDB| db $FF
|14DEDC| db $43 ; Repeat word
|14DEDD| dw $FF90
|14DEDF| db $00 ; Raw block
|14DEE0| db $C8
|14DEE1| db $46 ; Repeat word
|14DEE2| dw $C0FF
|14DEE4| db $43 ; Repeat word
|14DEE5| dw $FFE0
|14DEE7| db $28 ; Repeat byte
|14DEE8| db $00
|14DEE9| db $0D ; Raw block
|14DEEA| db $FF, $00, $FF, $38, $C7, $4C, $B3, $7C
|14DEF2| db $83, $38, $C7, $00, $FF, $00
|14DEF8| db $28 ; Repeat byte
|14DEF9| db $FF
|14DEFA| db $02 ; Raw block
|14DEFB| db $0C, $00, $14
|14DEFE| db $44 ; Repeat word
|14DEFF| dw $2400
|14DF01| db $E0, $27 ; EXT Raw block
|14DF03| db $1C, $08, $1C, $00, $77, $00, $A7, $03
|14DF0B| db $00, $08, $18, $18, $00, $00, $08, $58
|14DF13| db $FF, $00, $CE, $4E, $A5, $3D, $8A, $3B
|14DF1B| db $D5, $77, $EA, $6E, $D5, $5D, $AA, $3B
|14DF23| db $00, $31, $42, $44, $08, $11, $22, $44
|14DF2B| db $4B ; Repeat word
|14DF2C| dw $00FF
|14DF2E| db $03 ; Raw block
|14DF2F| db $1F, $E0, $0F, $F0
|14DF33| db $27 ; Repeat byte
|14DF34| db $00
|14DF35| db $0B ; Raw block
|14DF36| db $F8, $FF, $E3, $FC, $C7, $FB, $9F, $F7
|14DF3E| db $BF, $ED, $3F, $EB
|14DF42| db $43 ; Repeat word
|14DF43| dw $E33F
|14DF45| db $03 ; Raw block
|14DF46| db $00, $00, $03, $07
|14DF4A| db $22 ; Repeat byte
|14DF4B| db $0F
|14DF4C| db $07 ; Raw block
|14DF4D| db $07, $0F, $F2, $37, $F8, $18, $FF, $0E
|14DF55| db $48 ; Repeat word
|14DF56| dw $00FF
|14DF58| db $00 ; Raw block
|14DF59| db $27
|14DF5A| db $3E ; Repeat byte
|14DF5B| db $00
|14DF5C| db $2F ; Repeat byte
|14DF5D| db $FF
|14DF5E| db $27 ; Repeat byte
|14DF5F| db $00
|14DF60| db $17 ; Raw block
|14DF61| db $A0, $60, $90, $70, $D8, $39, $C8, $3F
|14DF69| db $EC, $1F, $E4, $1F, $F6, $0F, $F2, $0F
|14DF71| db $1F, $0F, $07, $07, $03, $03, $01, $01
|14DF79| db $43 ; Repeat word
|14DF7A| dw $FF70
|14DF7C| db $43 ; Repeat word
|14DF7D| dw $7FB8
|14DF7F| db $03 ; Raw block
|14DF80| db $D8, $3F, $DC, $3F
|14DF84| db $43 ; Repeat word
|14DF85| dw $1FEC
|14DF87| db $23 ; Repeat byte
|14DF88| db $00
|14DF89| db $22 ; Repeat byte
|14DF8A| db $80
|14DF8B| db $05 ; Raw block
|14DF8C| db $C0, $FF, $00, $BF, $7C, $FE
|14DF92| db $44 ; Repeat word
|14DF93| dw $E67D
|14DF95| db $43 ; Repeat word
|14DF96| dw $7DFE
|14DF98| db $01 ; Raw block
|14DF99| db $9D, $7E
|14DF9B| db $27 ; Repeat byte
|14DF9C| db $00
|14DF9D| db $43 ; Repeat word
|14DF9E| dw $00FF
|14DFA0| db $46 ; Repeat word
|14DFA1| dw $FF00
|14DFA3| db $24 ; Repeat byte
|14DFA4| db $FF
|14DFA5| db $27 ; Repeat byte
|14DFA6| db $00
|14DFA7| db $01 ; Raw block
|14DFA8| db $8D, $0E
|14DFAA| db $43 ; Repeat word
|14DFAB| dw $7E81
|14DFAD| db $01 ; Raw block
|14DFAE| db $FF, $80
|14DFB0| db $43 ; Repeat word
|14DFB1| dw $BCC3
|14DFB3| db $04 ; Raw block
|14DFB4| db $BD, $C2, $FF, $7C, $70
|14DFB9| db $27 ; Repeat byte
|14DFBA| db $00
|14DFBB| db $84 ; Copy past
|14DFBC| dw $022B
|14DFBE| db $00 ; Raw block
|14DFBF| db $07
|14DFC0| db $22 ; Repeat byte
|14DFC1| db $FF
|14DFC2| db $04 ; Raw block
|14DFC3| db $00, $FF, $FF, $00, $FF
|14DFC8| db $28 ; Repeat byte
|14DFC9| db $00
|14DFCA| db $83 ; Copy past
|14DFCB| dw $0276
|14DFCD| db $43 ; Repeat word
|14DFCE| dw $FE01
|14DFD0| db $07 ; Raw block
|14DFD1| db $03, $FC, $83, $FC, $C7, $F8, $67, $78
|14DFD9| db $26 ; Repeat byte
|14DFDA| db $00
|14DFDB| db $00 ; Raw block
|14DFDC| db $80
|14DFDD| db $4B ; Repeat word
|14DFDE| dw $00FF
|14DFE0| db $01 ; Raw block
|14DFE1| db $80, $7F
|14DFE3| db $83 ; Copy past
|14DFE4| dw $0309
|14DFE6| db $00 ; Raw block
|14DFE7| db $7F
|14DFE8| db $24 ; Repeat byte
|14DFE9| db $FF
|14DFEA| db $0F ; Raw block
|14DFEB| db $FE, $01, $FF, $01, $FD, $02, $FF, $02
|14DFF3| db $FB, $04, $FF, $04, $F7, $08, $FF, $08
|14DFFB| db $27 ; Repeat byte
|14DFFC| db $00
|14DFFD| db $4E ; Repeat word
|14DFFE| dw $00FF
|14E000| db $28 ; Repeat byte
|14E001| db $00
|14E002| db $4E ; Repeat word
|14E003| dw $00FF
|14E005| db $28 ; Repeat byte
|14E006| db $00
|14E007| db $00 ; Raw block
|14E008| db $E0
|14E009| db $83 ; Copy past
|14E00A| dw $03F3
|14E00C| db $0A ; Raw block
|14E00D| db $F8, $0C, $F3, $1B, $E7, $F7, $0F, $E6
|14E015| db $1F, $F2, $0F
|14E018| db $28 ; Repeat byte
|14E019| db $00
|14E01A| db $0A ; Raw block
|14E01B| db $FF, $03, $FC, $07, $FB, $0F, $F7, $1F
|14E023| db $ED, $1F, $EB
|14E026| db $43 ; Repeat word
|14E027| dw $E31F
|14E029| db $03 ; Raw block
|14E02A| db $00, $00, $03, $17
|14E02E| db $22 ; Repeat byte
|14E02F| db $2F
|14E030| db $00 ; Raw block
|14E031| db $27
|14E032| db $43 ; Repeat word
|14E033| dw $FCE3
|14E035| db $43 ; Repeat word
|14E036| dw $FCC3
|14E038| db $03 ; Raw block
|14E039| db $83, $FC, $87, $F8
|14E03D| db $43 ; Repeat word
|14E03E| dw $F08F
|14E040| db $27 ; Repeat byte
|14E041| db $00
|14E042| db $43 ; Repeat word
|14E043| dw $7F40
|14E045| db $43 ; Repeat word
|14E046| dw $FFE0
|14E048| db $09 ; Raw block
|14E049| db $F0, $FF, $B9, $BF, $9F, $1F, $CE, $4E
|14E051| db $80, $80
|14E053| db $22 ; Repeat byte
|14E054| db $00
|14E055| db $03 ; Raw block
|14E056| db $40, $60, $31, $78
|14E05A| db $44 ; Repeat word
|14E05B| dw $70FF
|14E05D| db $45 ; Repeat word
|14E05E| dw $FFB0
|14E060| db $43 ; Repeat word
|14E061| dw $FFD0
|14E063| db $22 ; Repeat byte
|14E064| db $80
|14E065| db $22 ; Repeat byte
|14E066| db $40
|14E067| db $09 ; Raw block
|14E068| db $20, $20, $FB, $07, $F9, $07, $FD, $03
|14E070| db $FC, $03
|14E072| db $43 ; Repeat word
|14E073| dw $01FE
|14E075| db $43 ; Repeat word
|14E076| dw $00FF
|14E078| db $04 ; Raw block
|14E079| db $C0, $C0, $E0, $F0, $F0
|14E07E| db $22 ; Repeat byte
|14E07F| db $F8
|14E080| db $03 ; Raw block
|14E081| db $F6, $0F, $F7, $0F
|14E085| db $43 ; Repeat word
|14E086| dw $07FB
|14E088| db $43 ; Repeat word
|14E089| dw $03FD
|14E08B| db $43 ; Repeat word
|14E08C| dw $01FE
|14E08E| db $23 ; Repeat byte
|14E08F| db $C0
|14E090| db $03 ; Raw block
|14E091| db $E0, $F8, $FC, $FC
|14E095| db $43 ; Repeat word
|14E096| dw $7E9D
|14E098| db $00 ; Raw block
|14E099| db $FD
|14E09A| db $44 ; Repeat word
|14E09B| dw $E57E
|14E09D| db $45 ; Repeat word
|14E09E| dw $7EFD
|14E0A0| db $28 ; Repeat byte
|14E0A1| db $00
|14E0A2| db $01 ; Raw block
|14E0A3| db $FF, $00
|14E0A5| db $44 ; Repeat word
|14E0A6| dw $0CFF
|14E0A8| db $47 ; Repeat word
|14E0A9| dw $FF00
|14E0AB| db $27 ; Repeat byte
|14E0AC| db $00
|14E0AD| db $03 ; Raw block
|14E0AE| db $C7, $C7, $C3, $C3
|14E0B2| db $85 ; Copy past
|14E0B3| dw $0280
|14E0B5| db $23 ; Repeat byte
|14E0B6| db $0F
|14E0B7| db $0D ; Raw block
|14E0B8| db $1E, $1F, $38, $3C, $FE, $FC, $F8, $F0
|14E0C0| db $F0, $E0, $E1, $E1, $F1, $F1
|14E0C6| db $23 ; Repeat byte
|14E0C7| db $FF
|14E0C8| db $00 ; Raw block
|14E0C9| db $E0
|14E0CA| db $84 ; Copy past
|14E0CB| dw $0263
|14E0CD| db $03 ; Raw block
|14E0CE| db $1F, $E0, $1E, $0E
|14E0D2| db $25 ; Repeat byte
|14E0D3| db $00
|14E0D4| db $45 ; Repeat word
|14E0D5| dw $3827
|14E0D7| db $01 ; Raw block
|14E0D8| db $67, $78
|14E0DA| db $43 ; Repeat word
|14E0DB| dw $F8E7
|14E0DD| db $43 ; Repeat word
|14E0DE| dw $F8C7
|14E0E0| db $22 ; Repeat byte
|14E0E1| db $C0
|14E0E2| db $00 ; Raw block
|14E0E3| db $80
|14E0E4| db $23 ; Repeat byte
|14E0E5| db $00
|14E0E6| db $09 ; Raw block
|14E0E7| db $87, $F8, $07, $F8, $0F, $F0, $1F, $E0
|14E0EF| db $3F, $C0
|14E0F1| db $43 ; Repeat word
|14E0F2| dw $00FF
|14E0F4| db $01 ; Raw block
|14E0F5| db $FE, $01
|14E0F7| db $22 ; Repeat byte
|14E0F8| db $00
|14E0F9| db $07 ; Raw block
|14E0FA| db $01, $03, $07, $1F, $FF, $FF, $81, $FF
|14E102| db $83 ; Copy past
|14E103| dw $0228
|14E105| db $08 ; Raw block
|14E106| db $42, $FF, $00, $FF, $81, $FF, $42, $EF
|14E10E| db $08
|14E10F| db $26 ; Repeat byte
|14E110| db $00
|14E111| db $00 ; Raw block
|14E112| db $10
|14E113| db $2F ; Repeat byte
|14E114| db $FF
|14E115| db $27 ; Repeat byte
|14E116| db $00
|14E117| db $4E ; Repeat word
|14E118| dw $00FF
|14E11A| db $28 ; Repeat byte
|14E11B| db $00
|14E11C| db $FF ; End of GFX 5B

;===================================================================================================

GFX_5C:
|14E11D| db $03 ; Raw block
|14E11E| db $C0, $C0, $8F, $9F
|14E122| db $43 ; Repeat word
|14E123| dw $BF1F
|14E125| db $00 ; Raw block
|14E126| db $1C
|14E127| db $43 ; Repeat word
|14E128| dw $18BF
|14E12A| db $03 ; Raw block
|14E12B| db $BE, $18, $BE, $3F
|14E12F| db $26 ; Repeat byte
|14E130| db $7F
|14E131| db $1E ; Raw block
|14E132| db $18, $BF, $0F, $9F, $40, $C0, $3F, $FF
|14E13A| db $06, $FF, $4F, $D9, $39, $A6, $FF, $C0
|14E142| db $7F, $7F, $3F, $00, $00, $20, $40, $00
|14E14A| db $7F, $80, $C0, $40, $8F, $1F, $97
|14E151| db $44 ; Repeat word
|14E152| dw $9F3F
|14E154| db $05 ; Raw block
|14E155| db $9E, $3F, $9C, $3F, $00, $3F
|14E15B| db $25 ; Repeat byte
|14E15C| db $7F
|14E15D| db $0E ; Raw block
|14E15E| db $98, $3F, $88, $1E, $80, $00, $C0, $40
|14E166| db $BF, $7F, $A0, $7F, $BC, $7E, $AF
|14E16D| db $23 ; Repeat byte
|14E16E| db $7F
|14E16F| db $04 ; Raw block
|14E170| db $3F, $00, $00, $1F, $1F
|14E175| db $43 ; Repeat word
|14E176| dw $00FF
|14E178| db $07 ; Raw block
|14E179| db $EF, $08, $C7, $04, $9B, $10, $B7, $30
|14E181| db $43 ; Repeat word
|14E182| dw $02A7
|14E184| db $04 ; Raw block
|14E185| db $FF, $E7, $DB, $BD, $7C
|14E18A| db $22 ; Repeat byte
|14E18B| db $7E
|14E18C| db $09 ; Raw block
|14E18D| db $AF, $0A, $BF, $18, $DF, $58, $FF, $30
|14E195| db $FF, $10
|14E197| db $45 ; Repeat word
|14E198| dw $00FF
|14E19A| db $23 ; Repeat byte
|14E19B| db $7E
|14E19C| db $0B ; Raw block
|14E19D| db $BD, $18, $00, $81, $FF, $00, $FF, $FF
|14E1A5| db $28, $38, $EF, $FF
|14E1A9| db $43 ; Repeat word
|14E1AA| dw $EFC7
|14E1AC| db $16 ; Raw block
|14E1AD| db $00, $EF, $44, $C7, $00, $00, $FF, $38
|14E1B5| db $7C, $7C, $FE, $FE, $DC, $5F, $DD, $5F
|14E1BD| db $F0, $7E, $C0, $70, $F0, $7E, $DD
|14E1C4| db $44 ; Repeat word
|14E1C5| dw $DC5F
|14E1C7| db $01 ; Raw block
|14E1C8| db $23, $2F
|14E1CA| db $22 ; Repeat byte
|14E1CB| db $3F
|14E1CC| db $06 ; Raw block
|14E1CD| db $2F, $23, $20, $83, $01, $8F, $01
|14E1D4| db $49 ; Repeat word
|14E1D5| dw $61E3
|14E1D7| db $03 ; Raw block
|14E1D8| db $9F, $7F, $7E, $7E
|14E1DC| db $24 ; Repeat byte
|14E1DD| db $1E
|14E1DE| db $02 ; Raw block
|14E1DF| db $00, $FF, $00
|14E1E2| db $43 ; Repeat word
|14E1E3| dw $3F3E
|14E1E5| db $00 ; Raw block
|14E1E6| db $01
|14E1E7| db $44 ; Repeat word
|14E1E8| dw $4101
|14E1EA| db $06 ; Raw block
|14E1EB| db $FF, $01, $FF, $FF, $00, $C0, $C0
|14E1F2| db $23 ; Repeat byte
|14E1F3| db $FE
|14E1F4| db $02 ; Raw block
|14E1F5| db $00, $9F, $00
|14E1F8| db $45 ; Repeat word
|14E1F9| dw $60E3
|14E1FB| db $08 ; Raw block
|14E1FC| db $FF, $0E, $FD, $7C, $87, $7E, $81, $7E
|14E204| db $7E
|14E205| db $22 ; Repeat byte
|14E206| db $1E
|14E207| db $05 ; Raw block
|14E208| db $00, $02, $00, $00, $FF, $00
|14E20E| db $43 ; Repeat word
|14E20F| dw $777C
|14E211| db $0C ; Raw block
|14E212| db $8C, $07, $8C, $0F, $8E, $0F, $FA, $0B
|14E21A| db $FF, $00, $00, $80, $80
|14E21F| db $22 ; Repeat byte
|14E220| db $F0
|14E221| db $00 ; Raw block
|14E222| db $F4
|14E223| db $45 ; Repeat word
|14E224| dw $FF00
|14E226| db $0A ; Raw block
|14E227| db $04, $F1, $4A, $B5, $0E, $1F, $AE, $5F
|14E22F| db $E0, $FF, $E0
|14E232| db $22 ; Repeat byte
|14E233| db $00
|14E234| db $02 ; Raw block
|14E235| db $04, $40, $40
|14E238| db $83 ; Copy past
|14E239| dw $0106
|14E23B| db $E0, $26 ; EXT Raw block
|14E23D| db $FB, $17, $F7, $2F, $EE, $5A, $F6, $5C
|14E245| db $FB, $57, $F9, $53, $F8, $51, $C0, $B0
|14E24D| db $60, $41, $41, $40, $44, $46, $FE, $50
|14E255| db $FF, $58, $EF, $5C, $E7, $5F, $F0, $4F
|14E25D| db $FF, $20, $FF, $1F, $FF, $00, $41
|14E264| db $22 ; Repeat byte
|14E265| db $40
|14E266| db $14 ; Raw block
|14E267| db $60, $70, $BF, $C0, $FF, $00, $F8, $4F
|14E26F| db $F7, $1D, $EE, $39, $DE, $73, $BD, $67
|14E277| db $BB, $4E, $A7, $7D, $00
|14E27C| db $26 ; Repeat byte
|14E27D| db $7F
|14E27E| db $83 ; Copy past
|14E27F| dw $0000
|14E281| db $00 ; Raw block
|14E282| db $1E
|14E283| db $83 ; Copy past
|14E284| dw $0007
|14E286| db $43 ; Repeat word
|14E287| dw $10BE
|14E289| db $03 ; Raw block
|14E28A| db $BC, $10, $BE, $3F
|14E28E| db $26 ; Repeat byte
|14E28F| db $7F
|14E290| db $9D ; Copy past
|14E291| dw $0018
|14E293| db $00 ; Raw block
|14E294| db $9E
|14E295| db $44 ; Repeat word
|14E296| dw $9C3F
|14E298| db $05 ; Raw block
|14E299| db $94, $3F, $98, $3E, $00, $3F
|14E29F| db $25 ; Repeat byte
|14E2A0| db $7F
|14E2A1| db $03 ; Raw block
|14E2A2| db $98, $3E, $88, $1C
|14E2A6| db $8A ; Copy past
|14E2A7| dw $004C
|14E2A9| db $23 ; Repeat byte
|14E2AA| db $7F
|14E2AB| db $84 ; Copy past
|14E2AC| dw $005B
|14E2AE| db $44 ; Repeat word
|14E2AF| dw $00FF
|14E2B1| db $06 ; Raw block
|14E2B2| db $10, $FF, $24, $FF, $46, $FD, $48
|14E2B9| db $43 ; Repeat word
|14E2BA| dw $18FD
|14E2BC| db $83 ; Copy past
|14E2BD| dw $0070
|14E2BF| db $23 ; Repeat byte
|14E2C0| db $7E
|14E2C1| db $0B ; Raw block
|14E2C2| db $F5, $10, $ED, $08, $FD, $54, $FB, $6A
|14E2CA| db $D7, $14, $EF, $08
|14E2CE| db $43 ; Repeat word
|14E2CF| dw $00FF
|14E2D1| db $23 ; Repeat byte
|14E2D2| db $7E
|14E2D3| db $84 ; Copy past
|14E2D4| dw $008C
|14E2D6| db $04 ; Raw block
|14E2D7| db $10, $C7, $FF, $44, $7C
|14E2DC| db $45 ; Repeat word
|14E2DD| dw $EFC7
|14E2DF| db $08 ; Raw block
|14E2E0| db $00, $C7, $44, $C7, $10, $38, $FF, $7C
|14E2E8| db $7C
|14E2E9| db $22 ; Repeat byte
|14E2EA| db $FE
|14E2EB| db $0B ; Raw block
|14E2EC| db $DC, $5F, $FD, $7F, $80, $7C, $80, $E0
|14E2F4| db $80, $7C, $FD, $7F
|14E2F8| db $43 ; Repeat word
|14E2F9| dw $5FDC
|14E2FB| db $0A ; Raw block
|14E2FC| db $27, $3F, $7F, $FF, $7F, $3F, $27, $20
|14E304| db $83, $01, $BF
|14E307| db $4A ; Repeat word
|14E308| dw $8301
|14E30A| db $01 ; Raw block
|14E30B| db $BF, $7F
|14E30D| db $26 ; Repeat byte
|14E30E| db $7E
|14E30F| db $03 ; Raw block
|14E310| db $00, $FF, $00, $00
|14E314| db $48 ; Repeat word
|14E315| dw $4101
|14E317| db $84 ; Copy past
|14E318| dw $00E4
|14E31A| db $25 ; Repeat byte
|14E31B| db $FE
|14E31C| db $01 ; Raw block
|14E31D| db $00, $FF
|14E31F| db $44 ; Repeat word
|14E320| dw $8300
|14E322| db $09 ; Raw block
|14E323| db $C3, $40, $FF, $3E, $E3, $60, $93, $70
|14E32B| db $8D, $7C
|14E32D| db $22 ; Repeat byte
|14E32E| db $7E
|14E32F| db $0C ; Raw block
|14E330| db $3E, $00, $1E, $0E, $02, $FF, $00, $9C
|14E338| db $17, $8C, $0F, $8A, $0B
|14E33D| db $43 ; Repeat word
|14E33E| dw $0989
|14E340| db $0D ; Raw block
|14E341| db $FE, $08, $FF, $00, $00, $E0, $F0, $F4
|14E349| db $F6, $F6, $F7, $00, $FF, $04
|14E34F| db $43 ; Repeat word
|14E350| dw $00FB
|14E352| db $03 ; Raw block
|14E353| db $F1, $0A, $F5, $4E
|14E357| db $86 ; Copy past
|14E358| dw $012A
|14E35A| db $22 ; Repeat byte
|14E35B| db $04
|14E35C| db $02 ; Raw block
|14E35D| db $00, $40, $00
|14E360| db $43 ; Repeat word
|14E361| dw $FF00
|14E363| db $06 ; Raw block
|14E364| db $1F, $FF, $20, $FB, $47, $F7, $4F
|14E36B| db $85 ; Copy past
|14E36C| dw $013E
|14E36E| db $07 ; Raw block
|14E36F| db $C0, $BF, $78, $60, $40, $41, $41, $40
|14E377| db $83 ; Copy past
|14E378| dw $0144
|14E37A| db $05 ; Raw block
|14E37B| db $EE, $50, $E7, $58, $F3, $4C
|14E381| db $85 ; Copy past
|14E382| dw $015A
|14E384| db $02 ; Raw block
|14E385| db $44, $46, $41
|14E388| db $86 ; Copy past
|14E389| dw $0163
|14E38B| db $01 ; Raw block
|14E38C| db $E6, $3F
|14E38E| db $83 ; Copy past
|14E38F| dw $0170
|14E391| db $08 ; Raw block
|14E392| db $BD, $46, $FB, $5E, $E7, $7D, $9E, $73
|14E39A| db $00
|14E39B| db $26 ; Repeat byte
|14E39C| db $7F
|14E39D| db $83 ; Copy past
|14E39E| dw $0000
|14E3A0| db $45 ; Repeat word
|14E3A1| dw $BF1F
|14E3A3| db $00 ; Raw block
|14E3A4| db $1C
|14E3A5| db $43 ; Repeat word
|14E3A6| dw $18BF
|14E3A8| db $01 ; Raw block
|14E3A9| db $BE, $3F
|14E3AB| db $26 ; Repeat byte
|14E3AC| db $7F
|14E3AD| db $9C ; Copy past
|14E3AE| dw $0018
|14E3B0| db $00 ; Raw block
|14E3B1| db $0F
|14E3B2| db $43 ; Repeat word
|14E3B3| dw $1F9F
|14E3B5| db $00 ; Raw block
|14E3B6| db $9B
|14E3B7| db $44 ; Repeat word
|14E3B8| dw $9F1F
|14E3BA| db $01 ; Raw block
|14E3BB| db $00, $3F
|14E3BD| db $25 ; Repeat byte
|14E3BE| db $7F
|14E3BF| db $03 ; Raw block
|14E3C0| db $9E, $1F, $8C, $0F
|14E3C4| db $88 ; Copy past
|14E3C5| dw $004C
|14E3C7| db $01 ; Raw block
|14E3C8| db $7F, $AF
|14E3CA| db $23 ; Repeat byte
|14E3CB| db $7F
|14E3CC| db $84 ; Copy past
|14E3CD| dw $005B
|14E3CF| db $44 ; Repeat word
|14E3D0| dw $00FF
|14E3D2| db $06 ; Raw block
|14E3D3| db $18, $FF, $30, $FF, $60, $FF, $40
|14E3DA| db $44 ; Repeat word
|14E3DB| dw $62FF
|14E3DD| db $02 ; Raw block
|14E3DE| db $E7, $DB, $BD
|14E3E1| db $23 ; Repeat byte
|14E3E2| db $7E
|14E3E3| db $09 ; Raw block
|14E3E4| db $FF, $42, $FF, $40, $FF, $64, $FF, $08
|14E3EC| db $FF, $10
|14E3EE| db $45 ; Repeat word
|14E3EF| dw $00FF
|14E3F1| db $23 ; Repeat byte
|14E3F2| db $7E
|14E3F3| db $87 ; Copy past
|14E3F4| dw $008C
|14E3F6| db $02 ; Raw block
|14E3F7| db $00, $00, $EF
|14E3FA| db $44 ; Repeat word
|14E3FB| dw $C7FF
|14E3FD| db $01 ; Raw block
|14E3FE| db $00, $FF
|14E400| db $8D ; Copy past
|14E401| dw $009E
|14E403| db $06 ; Raw block
|14E404| db $D0, $5E, $C0, $5E, $D0, $5E, $DD
|14E40B| db $44 ; Repeat word
|14E40C| dw $DC5F
|14E40E| db $01 ; Raw block
|14E40F| db $23, $2F
|14E411| db $22 ; Repeat byte
|14E412| db $3F
|14E413| db $02 ; Raw block
|14E414| db $2F, $23, $20
|14E417| db $43 ; Repeat word
|14E418| dw $0183
|14E41A| db $01 ; Raw block
|14E41B| db $FB, $79
|14E41D| db $47 ; Repeat word
|14E41E| dw $71F3
|14E420| db $04 ; Raw block
|14E421| db $8F, $7F, $7E, $7E, $06
|14E426| db $23 ; Repeat byte
|14E427| db $0E
|14E428| db $02 ; Raw block
|14E429| db $00, $FF, $00
|14E42C| db $45 ; Repeat word
|14E42D| dw $3F3E
|14E42F| db $02 ; Raw block
|14E430| db $21, $21, $01
|14E433| db $43 ; Repeat word
|14E434| dw $FF01
|14E436| db $01 ; Raw block
|14E437| db $FF, $00
|14E439| db $22 ; Repeat byte
|14E43A| db $C0
|14E43B| db $0E ; Raw block
|14E43C| db $DE, $FE, $FE, $00, $8F, $00, $F3, $70
|14E444| db $F9, $78, $FD, $7C, $FD, $02, $FF
|14E44B| db $44 ; Repeat word
|14E44C| dw $817E
|14E44E| db $03 ; Raw block
|14E44F| db $7E, $0E, $06, $02
|14E453| db $23 ; Repeat byte
|14E454| db $00
|14E455| db $01 ; Raw block
|14E456| db $FF, $00
|14E458| db $45 ; Repeat word
|14E459| dw $777C
|14E45B| db $08 ; Raw block
|14E45C| db $BC, $37, $9C, $17, $C4, $0F, $FF, $00
|14E464| db $00
|14E465| db $22 ; Repeat byte
|14E466| db $80
|14E467| db $02 ; Raw block
|14E468| db $C0, $E0, $F0
|14E46B| db $43 ; Repeat word
|14E46C| dw $FF00
|14E46E| db $04 ; Raw block
|14E46F| db $04, $FB, $40, $B1, $0A
|14E474| db $89 ; Copy past
|14E475| dw $0128
|14E477| db $04 ; Raw block
|14E478| db $04, $44, $40, $40, $00
|14E47D| db $43 ; Repeat word
|14E47E| dw $FF00
|14E480| db $02 ; Raw block
|14E481| db $1F, $FF, $20
|14E484| db $43 ; Repeat word
|14E485| dw $40FF
|14E487| db $85 ; Copy past
|14E488| dw $02BE
|14E48A| db $07 ; Raw block
|14E48B| db $C0, $BF, $7F, $70, $60, $40, $40, $41
|14E493| db $83 ; Copy past
|14E494| dw $0140
|14E496| db $05 ; Raw block
|14E497| db $E9, $53, $E8, $51, $FE, $40
|14E49D| db $87 ; Copy past
|14E49E| dw $015A
|14E4A0| db $02 ; Raw block
|14E4A1| db $44, $46, $61
|14E4A4| db $84 ; Copy past
|14E4A5| dw $0165
|14E4A7| db $01 ; Raw block
|14E4A8| db $CE, $7F
|14E4AA| db $83 ; Copy past
|14E4AB| dw $0172
|14E4AD| db $08 ; Raw block
|14E4AE| db $F7, $5D, $EE, $7B, $DD, $77, $BB, $6E
|14E4B6| db $00
|14E4B7| db $26 ; Repeat byte
|14E4B8| db $7F
|14E4B9| db $E5, $7F ; EXT Repeat byte
|14E4BB| db $00
|14E4BC| db $FF ; End of GFX 5C

;===================================================================================================

GFX_5D:
|14E4BD| db $04 ; Raw block
|14E4BE| db $0E, $FF, $1E, $FF, $3C
|14E4C3| db $46 ; Repeat word
|14E4C4| dw $78FF
|14E4C6| db $06 ; Raw block
|14E4C7| db $3C, $FF, $1E, $FF, $00, $00, $10
|14E4CE| db $22 ; Repeat byte
|14E4CF| db $20
|14E4D0| db $04 ; Raw block
|14E4D1| db $10, $10, $1C, $FF, $3C
|14E4D6| db $46 ; Repeat word
|14E4D7| dw $78FF
|14E4D9| db $00 ; Raw block
|14E4DA| db $3C
|14E4DB| db $44 ; Repeat word
|14E4DC| dw $1EFF
|14E4DE| db $01 ; Raw block
|14E4DF| db $00, $10
|14E4E1| db $22 ; Repeat byte
|14E4E2| db $20
|14E4E3| db $12 ; Raw block
|14E4E4| db $10, $08, $08, $80, $7F, $81, $7E, $DB
|14E4EC| db $24, $7E, $81, $8D, $F3, $3A, $BF, $D5
|14E4F4| db $74, $B1, $4E
|14E4F7| db $26 ; Repeat byte
|14E4F8| db $FF
|14E4F9| db $06 ; Raw block
|14E4FA| db $7E, $FF, $00, $3C, $C3, $E3, $1C
|14E501| db $49 ; Repeat word
|14E502| dw $00FF
|14E504| db $05 ; Raw block
|14E505| db $C3, $FF, $1C, $FF, $00, $1C
|14E50B| db $43 ; Repeat word
|14E50C| dw $00FF
|14E50E| db $03 ; Raw block
|14E50F| db $99, $66, $7E, $81
|14E513| db $43 ; Repeat word
|14E514| dw $00FF
|14E516| db $01 ; Raw block
|14E517| db $E7, $18
|14E519| db $43 ; Repeat word
|14E51A| dw $00FF
|14E51C| db $18 ; Raw block
|14E51D| db $00, $67, $FF, $00, $C3, $3C, $C3, $38
|14E525| db $FF, $22, $DB, $FF, $34, $B7, $92, $7D
|14E52D| db $27, $D8, $DE, $63, $FF, $3C, $7E, $81
|14E535| db $33
|14E536| db $26 ; Repeat byte
|14E537| db $FF
|14E538| db $43 ; Repeat word
|14E539| dw $FF38
|14E53B| db $04 ; Raw block
|14E53C| db $1C, $FF, $3F, $FF, $78
|14E541| db $44 ; Repeat word
|14E542| dw $E0FF
|14E544| db $05 ; Raw block
|14E545| db $C0, $FF, $00, $10, $08, $10
|14E54B| db $22 ; Repeat byte
|14E54C| db $00
|14E54D| db $0F ; Raw block
|14E54E| db $80, $18, $FF, $38, $FF, $78, $FF, $F8
|14E556| db $FF, $38, $FF, $0C, $FF, $06, $FF, $07
|14E55E| db $83 ; Copy past
|14E55F| dw $000F
|14E561| db $14 ; Raw block
|14E562| db $30, $08, $00, $00, $02, $E0, $FF, $70
|14E56A| db $FF, $18, $FF, $0C, $FF, $0F, $FF, $1F
|14E572| db $FF, $3C, $FF, $30, $FF
|14E577| db $23 ; Repeat byte
|14E578| db $00
|14E579| db $03 ; Raw block
|14E57A| db $06, $08, $00, $00
|14E57E| db $43 ; Repeat word
|14E57F| dw $FF07
|14E581| db $0E ; Raw block
|14E582| db $0E, $FF, $0C, $FF, $98, $FF, $F8, $FF
|14E58A| db $70, $FF, $30, $FF, $01, $02, $04
|14E591| db $83 ; Copy past
|14E592| dw $0010
|14E594| db $10 ; Raw block
|14E595| db $00, $81, $FE, $83, $FC, $87, $7B, $EC
|14E59D| db $97, $7C, $E7, $1E, $FB, $02, $FD, $1F
|14E5A5| db $E0
|14E5A6| db $27 ; Repeat byte
|14E5A7| db $FF
|14E5A8| db $09 ; Raw block
|14E5A9| db $81, $FE, $81, $7E, $E3, $9C, $7F, $E3
|14E5B1| db $1E, $FB
|14E5B3| db $43 ; Repeat word
|14E5B4| dw $FD03
|14E5B6| db $01 ; Raw block
|14E5B7| db $06, $FB
|14E5B9| db $27 ; Repeat byte
|14E5BA| db $FF
|14E5BB| db $0F ; Raw block
|14E5BC| db $3F, $DE, $61, $BF, $C0, $7F, $00, $FF
|14E5C4| db $01, $FE, $E3, $1D, $FE, $E3, $87, $F9
|14E5CC| db $27 ; Repeat byte
|14E5CD| db $FF
|14E5CE| db $0F ; Raw block
|14E5CF| db $06, $FB, $84, $7B, $5E, $A1, $7F, $9E
|14E5D7| db $E3, $7E, $83, $FE, $03, $FD, $01, $FE
|14E5DF| db $28 ; Repeat byte
|14E5E0| db $FF
|14E5E1| db $10 ; Raw block
|14E5E2| db $00, $DB, $24, $24, $DB, $5A, $E7, $A5
|14E5EA| db $7E, $DB, $3C, $67, $98, $3E, $C1, $18
|14E5F2| db $A5
|14E5F3| db $25 ; Repeat byte
|14E5F4| db $FF
|14E5F5| db $05 ; Raw block
|14E5F6| db $CC, $33, $D6, $39, $AB, $5C
|14E5FC| db $43 ; Repeat word
|14E5FD| dw $2ED5
|14E5FF| db $0D ; Raw block
|14E600| db $AB, $5C, $D7, $38, $CE, $31, $7F, $3F
|14E608| db $7F, $BF, $BF, $7F, $3F, $7F
|14E60E| db $83 ; Copy past
|14E60F| dw $00AA
|14E611| db $00 ; Raw block
|14E612| db $F1
|14E613| db $44 ; Repeat word
|14E614| dw $E3FF
|14E616| db $10 ; Raw block
|14E617| db $E1, $FF, $F0, $FF, $78, $FF, $10, $20
|14E61F| db $40, $81, $81, $80, $40, $00, $60, $FF
|14E627| db $E0
|14E628| db $46 ; Repeat word
|14E629| dw $C1FF
|14E62B| db $00 ; Raw block
|14E62C| db $E0
|14E62D| db $84 ; Copy past
|14E62E| dw $018B
|14E630| db $24 ; Repeat byte
|14E631| db $00
|14E632| db $12 ; Raw block
|14E633| db $80, $40, $20, $01, $FE, $81, $7E, $E7
|14E63B| db $18, $3E, $C1, $C9, $FF, $B6, $77, $E3
|14E643| db $1C, $F7, $08
|14E646| db $26 ; Repeat byte
|14E647| db $FF
|14E648| db $00 ; Raw block
|14E649| db $7E
|14E64A| db $45 ; Repeat word
|14E64B| dw $00FF
|14E64D| db $03 ; Raw block
|14E64E| db $1C, $E3, $E7, $18
|14E652| db $45 ; Repeat word
|14E653| dw $00FF
|14E655| db $07 ; Raw block
|14E656| db $0F, $C0, $3F, $E3, $FF, $38, $07, $F8
|14E65E| db $43 ; Repeat word
|14E65F| dw $00FF
|14E661| db $83 ; Copy past
|14E662| dw $0062
|14E664| db $43 ; Repeat word
|14E665| dw $00FF
|14E667| db $1C ; Raw block
|14E668| db $76, $89, $FF, $00, $E3, $00, $77, $FF
|14E670| db $00, $E3, $DD, $00, $F7, $4A, $AB, $BF
|14E678| db $55, $F5, $A9, $FF, $C4, $3B, $6F, $90
|14E680| db $7F, $C1, $A7, $7E, $6B
|14E685| db $26 ; Repeat byte
|14E686| db $FF
|14E687| db $08 ; Raw block
|14E688| db $E0, $FF, $78, $FF, $3F, $FF, $3C, $FF
|14E690| db $38
|14E691| db $44 ; Repeat word
|14E692| dw $30FF
|14E694| db $00 ; Raw block
|14E695| db $18
|14E696| db $83 ; Copy past
|14E697| dw $000F
|14E699| db $01 ; Raw block
|14E69A| db $08, $10
|14E69C| db $22 ; Repeat byte
|14E69D| db $00
|14E69E| db $0A ; Raw block
|14E69F| db $0C, $FF, $18, $FF, $F8, $FF, $78, $FF
|14E6A7| db $30, $FF, $10
|14E6AA| db $84 ; Copy past
|14E6AB| dw $00A9
|14E6AD| db $84 ; Copy past
|14E6AE| dw $00EB
|14E6B0| db $02 ; Raw block
|14E6B1| db $00, $10, $20
|14E6B4| db $43 ; Repeat word
|14E6B5| dw $FF1F
|14E6B7| db $06 ; Raw block
|14E6B8| db $0E, $FF, $18, $FF, $F0, $FF, $E0
|14E6BF| db $44 ; Repeat word
|14E6C0| dw $C0FF
|14E6C2| db $0E ; Raw block
|14E6C3| db $08, $04, $08, $00, $00, $40, $80, $00
|14E6CB| db $F8, $FF, $9C, $FF, $0C, $FF, $0E
|14E6D2| db $48 ; Repeat word
|14E6D3| dw $07FF
|14E6D5| db $00 ; Raw block
|14E6D6| db $50
|14E6D7| db $22 ; Repeat byte
|14E6D8| db $00
|14E6D9| db $02 ; Raw block
|14E6DA| db $02, $01, $00
|14E6DD| db $84 ; Copy past
|14E6DE| dw $00EF
|14E6E0| db $0B ; Raw block
|14E6E1| db $07, $FB, $CC, $37, $F8, $CF, $38, $EF
|14E6E9| db $08, $F7, $1E, $E1
|14E6ED| db $27 ; Repeat byte
|14E6EE| db $FF
|14E6EF| db $87 ; Copy past
|14E6F0| dw $0108
|14E6F2| db $00 ; Raw block
|14E6F3| db $1C
|14E6F4| db $46 ; Repeat word
|14E6F5| dw $0CF7
|14E6F7| db $27 ; Repeat byte
|14E6F8| db $FF
|14E6F9| db $87 ; Copy past
|14E6FA| dw $0120
|14E6FC| db $07 ; Raw block
|14E6FD| db $80, $7F, $F8, $87, $FD, $7A, $C3, $7C
|14E705| db $27 ; Repeat byte
|14E706| db $FF
|14E707| db $85 ; Copy past
|14E708| dw $0138
|14E70A| db $85 ; Copy past
|14E70B| dw $0120
|14E70D| db $02 ; Raw block
|14E70E| db $80, $FF, $80
|14E711| db $29 ; Repeat byte
|14E712| db $FF
|14E713| db $10 ; Raw block
|14E714| db $00, $DB, $24, $66, $BD, $3E, $D9, $5C
|14E71C| db $E3, $A3, $7E, $DD, $3E, $63, $9C, $18
|14E724| db $66
|14E725| db $25 ; Repeat byte
|14E726| db $FF
|14E727| db $05 ; Raw block
|14E728| db $C6, $39, $EB, $1C, $B5, $6E
|14E72E| db $43 ; Repeat word
|14E72F| dw $37DA
|14E731| db $07 ; Raw block
|14E732| db $BA, $67, $F5, $0E, $C7, $38, $3F, $7F
|14E73A| db $83 ; Copy past
|14E73B| dw $017A
|14E73D| db $06 ; Raw block
|14E73E| db $7F, $3F, $F0, $FF, $E3, $FF, $C7
|14E745| db $46 ; Repeat word
|14E746| dw $87FF
|14E748| db $04 ; Raw block
|14E749| db $C3, $FF, $E1, $FF, $00
|14E74E| db $62 ; Increment fill
|14E74F| db $00
|14E750| db $83 ; Copy past
|14E751| dw $026C
|14E753| db $43 ; Repeat word
|14E754| dw $FFE3
|14E756| db $00 ; Raw block
|14E757| db $E7
|14E758| db $44 ; Repeat word
|14E759| dw $C7FF
|14E75B| db $83 ; Copy past
|14E75C| dw $030C
|14E75E| db $03 ; Raw block
|14E75F| db $F0, $FF, $01, $01
|14E763| db $22 ; Repeat byte
|14E764| db $02
|14E765| db $12 ; Raw block
|14E766| db $01, $80, $40, $01, $FE, $83, $7C, $C3
|14E76E| db $3C, $D6, $29, $7D, $83, $A2, $FF, $D5
|14E776| db $56, $DB, $2C
|14E779| db $28 ; Repeat byte
|14E77A| db $FF
|14E77B| db $4A ; Repeat word
|14E77C| dw $FF00
|14E77E| db $84 ; Copy past
|14E77F| dw $004A
|14E781| db $06 ; Raw block
|14E782| db $C1, $1C, $FF, $00, $E7, $FF, $1C
|14E789| db $45 ; Repeat word
|14E78A| dw $00FF
|14E78C| db $83 ; Copy past
|14E78D| dw $0062
|14E78F| db $43 ; Repeat word
|14E790| dw $00FF
|14E792| db $1A ; Raw block
|14E793| db $66, $99, $81, $E7, $00, $F7, $99, $00
|14E79B| db $99, $DB, $EF, $52, $D5, $FD, $AA, $AF
|14E7A3| db $A3, $DD, $DF, $62, $FD, $3E, $7E, $81
|14E7AB| db $DB, $66, $D6
|14E7AE| db $26 ; Repeat byte
|14E7AF| db $FF
|14E7B0| db $00 ; Raw block
|14E7B1| db $70
|14E7B2| db $46 ; Repeat word
|14E7B3| dw $E0FF
|14E7B5| db $0A ; Raw block
|14E7B6| db $60, $FF, $30, $FF, $3C, $FF, $1F, $FF
|14E7BE| db $00, $40, $80
|14E7C1| db $22 ; Repeat byte
|14E7C2| db $00
|14E7C3| db $02 ; Raw block
|14E7C4| db $10, $08, $18
|14E7C7| db $83 ; Copy past
|14E7C8| dw $025D
|14E7CA| db $44 ; Repeat word
|14E7CB| dw $03FF
|14E7CD| db $05 ; Raw block
|14E7CE| db $07, $FF, $1E, $FF, $FC, $FF
|14E7D4| db $22 ; Repeat byte
|14E7D5| db $00
|14E7D6| db $00 ; Raw block
|14E7D7| db $01
|14E7D8| db $22 ; Repeat byte
|14E7D9| db $00
|14E7DA| db $01 ; Raw block
|14E7DB| db $08, $38
|14E7DD| db $44 ; Repeat word
|14E7DE| dw $30FF
|14E7E0| db $85 ; Copy past
|14E7E1| dw $0092
|14E7E3| db $04 ; Raw block
|14E7E4| db $73, $FF, $E0, $FF, $10
|14E7E9| db $83 ; Copy past
|14E7EA| dw $0220
|14E7EC| db $03 ; Raw block
|14E7ED| db $14, $00, $00, $1C
|14E7F1| db $44 ; Repeat word
|14E7F2| dw $0EFF
|14E7F4| db $0B ; Raw block
|14E7F5| db $06, $FF, $0E, $FF, $F8, $FF, $F0, $FF
|14E7FD| db $30, $FF, $08, $04
|14E801| db $22 ; Repeat byte
|14E802| db $00
|14E803| db $08 ; Raw block
|14E804| db $10, $60, $00, $03, $FD, $0F, $F0, $0F
|14E80C| db $F7
|14E80D| db $87 ; Copy past
|14E80E| dw $0276
|14E810| db $01 ; Raw block
|14E811| db $1F, $E0
|14E813| db $27 ; Repeat byte
|14E814| db $FF
|14E815| db $83 ; Copy past
|14E816| dw $0114
|14E818| db $04 ; Raw block
|14E819| db $E6, $19, $FF, $E3, $1C
|14E81E| db $44 ; Repeat word
|14E81F| dw $0CF7
|14E821| db $01 ; Raw block
|14E822| db $06, $FB
|14E824| db $27 ; Repeat byte
|14E825| db $FF
|14E826| db $09 ; Raw block
|14E827| db $1F, $EF, $30, $DF, $70, $9F, $80, $7F
|14E82F| db $C0, $BF
|14E831| db $83 ; Copy past
|14E832| dw $02AA
|14E834| db $01 ; Raw block
|14E835| db $83, $FC
|14E837| db $27 ; Repeat byte
|14E838| db $FF
|14E839| db $0F ; Raw block
|14E83A| db $83, $7D, $E2, $9D, $1F, $E0, $1F, $EF
|14E842| db $70, $9F, $E0, $7F, $80, $FF, $81, $FE
|14E84A| db $28 ; Repeat byte
|14E84B| db $FF
|14E84C| db $10 ; Raw block
|14E84D| db $00, $BD, $42, $99, $66, $E7, $3C, $7E
|14E855| db $99, $3C, $C3, $81, $7E, $43, $BC, $18
|14E85D| db $66
|14E85E| db $25 ; Repeat byte
|14E85F| db $FF
|14E860| db $05 ; Raw block
|14E861| db $F2, $0D, $99, $66, $DC, $33
|14E867| db $43 ; Repeat word
|14E868| dw $1BEC
|14E86A| db $05 ; Raw block
|14E86B| db $DC, $33, $99, $66, $F3, $0C
|14E871| db $87 ; Copy past
|14E872| dw $02F8
|14E874| db $E5, $7F ; EXT Repeat byte
|14E876| db $00
|14E877| db $FF ; End of GFX 5D

;===================================================================================================

GFX_5E:
|14E878| db $05 ; Raw block
|14E879| db $FF, $00, $D7, $EF, $EB, $F7
|14E87F| db $43 ; Repeat word
|14E880| dw $FBF5
|14E882| db $0F ; Raw block
|14E883| db $EB, $F7, $D7, $EF, $AF, $DF, $00, $EF
|14E88B| db $F7, $FB, $FB, $F7, $EF, $DF, $FF, $00
|14E893| db $83 ; Copy past
|14E894| dw $000A
|14E896| db $43 ; Repeat word
|14E897| dw $DFAF
|14E899| db $85 ; Copy past
|14E89A| dw $0002
|14E89C| db $0C ; Raw block
|14E89D| db $00, $F7, $EF, $DF, $DF, $EF, $F7, $FB
|14E8A5| db $FF, $18, $24, $FF, $42
|14E8AA| db $43 ; Repeat word
|14E8AB| dw $C366
|14E8AD| db $08 ; Raw block
|14E8AE| db $7E, $E7, $FF, $FF, $E7, $FF, $DB, $18
|14E8B6| db $3C
|14E8B7| db $22 ; Repeat byte
|14E8B8| db $FF
|14E8B9| db $E0, $2A ; EXT Raw block
|14E8BB| db $3C, $3C, $18, $FF, $20, $FF, $07, $FF
|14E8C3| db $5B, $FF, $17, $FC, $7F, $F8, $5E, $C0
|14E8CB| db $FC, $80, $CC, $20, $07, $5B, $17, $7F
|14E8D3| db $5F, $FF, $FF, $84, $CE, $84, $FF, $C0
|14E8DB| db $FF, $E2, $FF, $F4, $7E, $E0, $7C, $E4
|14E8E3| db $FE, $C2, $E7
|14E8E6| db $23 ; Repeat byte
|14E8E7| db $FF
|14E8E8| db $01 ; Raw block
|14E8E9| db $7F, $7F
|14E8EB| db $22 ; Repeat byte
|14E8EC| db $FF
|14E8ED| db $0E ; Raw block
|14E8EE| db $38, $C7, $7C, $83, $FE, $81, $FE, $83
|14E8F6| db $FC, $86, $7B, $8C, $77, $F9, $06
|14E8FD| db $27 ; Repeat byte
|14E8FE| db $FF
|14E8FF| db $05 ; Raw block
|14E900| db $1E, $1F, $33, $33, $61, $61
|14E906| db $23 ; Repeat byte
|14E907| db $C0
|14E908| db $0D ; Raw block
|14E909| db $61, $E1, $73, $F3, $3F, $FF, $E0, $CC
|14E911| db $9E, $3F, $3F, $1E, $0C, $00
|14E917| db $43 ; Repeat word
|14E918| dw $F070
|14E91A| db $0E ; Raw block
|14E91B| db $F8, $F8, $FF, $FF, $9F, $FF, $BF, $FF
|14E923| db $FC, $FF, $CC, $CF, $0F, $0F, $07
|14E92A| db $23 ; Repeat byte
|14E92B| db $00
|14E92C| db $05 ; Raw block
|14E92D| db $30, $39, $FF, $6D, $EF, $47
|14E933| db $22 ; Repeat byte
|14E934| db $C7
|14E935| db $E0, $22 ; EXT Raw block
|14E937| db $CF, $CF, $FE, $FF, $7C, $7F, $3C, $3F
|14E93F| db $00, $10, $38, $38, $30, $00, $80, $C0
|14E947| db $86, $87, $06, $07, $0C, $0F, $FC, $FF
|14E94F| db $FB, $FF, $1F, $FF, $38, $F8, $30, $F0
|14E957| db $78, $F8, $F0
|14E95A| db $22 ; Repeat byte
|14E95B| db $00
|14E95C| db $09 ; Raw block
|14E95D| db $07, $0F, $00, $FF, $40, $C0, $1F, $9F
|14E965| db $2F, $AF
|14E967| db $47 ; Repeat word
|14E968| dw $BF3F
|14E96A| db $03 ; Raw block
|14E96B| db $00, $3F, $60, $50
|14E96F| db $23 ; Repeat byte
|14E970| db $40
|14E971| db $05 ; Raw block
|14E972| db $00, $FF, $02, $03, $F8, $F9
|14E978| db $43 ; Repeat word
|14E979| dw $DDDC
|14E97B| db $01 ; Raw block
|14E97C| db $04, $05
|14E97E| db $43 ; Repeat word
|14E97F| dw $DDDC
|14E981| db $07 ; Raw block
|14E982| db $00, $FC, $06, $22, $22, $FA, $22, $22
|14E98A| db $47 ; Repeat word
|14E98B| dw $BF3F
|14E98D| db $07 ; Raw block
|14E98E| db $3B, $BB, $1F, $9F, $40, $C0, $00, $FF
|14E996| db $23 ; Repeat byte
|14E997| db $40
|14E998| db $03 ; Raw block
|14E999| db $44, $60, $3F, $00
|14E99D| db $49 ; Repeat word
|14E99E| dw $FDFC
|14E9A0| db $05 ; Raw block
|14E9A1| db $F8, $F9, $02, $03, $00, $FF
|14E9A7| db $24 ; Repeat byte
|14E9A8| db $02
|14E9A9| db $11 ; Raw block
|14E9AA| db $06, $FC, $00, $FF, $7F, $E7, $7F, $DB
|14E9B2| db $67, $A5, $5B, $DA, $3D, $BD, $7E, $FE
|14E9BA| db $7F, $FF
|14E9BC| db $22 ; Repeat byte
|14E9BD| db $7F
|14E9BE| db $14 ; Raw block
|14E9BF| db $67, $5B, $3D, $7E, $7F, $7F, $FF, $7F
|14E9C7| db $FE, $7F, $BD, $7E, $DA, $3D, $A5, $5B
|14E9CF| db $DB, $67, $E7, $7F, $FF
|14E9D4| db $22 ; Repeat byte
|14E9D5| db $7F
|14E9D6| db $0B ; Raw block
|14E9D7| db $7E, $3D, $5B, $67, $7F, $7F, $FF, $00
|14E9DF| db $FA, $FD, $7D, $FE
|14E9E3| db $43 ; Repeat word
|14E9E4| dw $7FBE
|14E9E6| db $13 ; Raw block
|14E9E7| db $7D, $FE, $FA, $FD, $F5, $FB, $00, $FD
|14E9EF| db $FE, $7F, $7F, $FE, $FD, $FB, $FF, $00
|14E9F7| db $5F, $BF, $BE, $7F
|14E9FB| db $43 ; Repeat word
|14E9FC| dw $FE7D
|14E9FE| db $18 ; Raw block
|14E9FF| db $BE, $7F, $5F, $BF, $AF, $DF, $00, $BF
|14EA07| db $7F, $FE, $FE, $7F, $BF, $DF, $FF, $00
|14EA0F| db $18, $FF, $24, $3C, $E7, $24, $C3, $66
|14EA17| db $C3
|14EA18| db $84 ; Copy past
|14EA19| dw $003B
|14EA1B| db $01 ; Raw block
|14EA1C| db $00, $18
|14EA1E| db $22 ; Repeat byte
|14EA1F| db $FF
|14EA20| db $E0, $2D ; EXT Raw block
|14EA22| db $7E, $3C, $18, $FF, $02, $FF, $40, $FF
|14EA2A| db $13, $FF, $8F, $F6, $1F, $FC, $3E, $D8
|14EA32| db $7C, $88, $FC, $02, $40, $13, $8F, $1F
|14EA3A| db $3F, $7F, $FF, $88, $DE, $DC, $FF, $E3
|14EA42| db $7F, $E2, $F7, $E0, $FF, $C0, $FE, $80
|14EA4A| db $E7, $80, $C3, $FF, $FF, $7F
|14EA50| db $24 ; Repeat byte
|14EA51| db $FF
|14EA52| db $03 ; Raw block
|14EA53| db $F7, $38, $C3, $7C
|14EA57| db $43 ; Repeat word
|14EA58| dw $FE81
|14EA5A| db $07 ; Raw block
|14EA5B| db $83, $FC, $C4, $7B, $A8, $77, $FF, $06
|14EA63| db $27 ; Repeat byte
|14EA64| db $FF
|14EA65| db $17 ; Raw block
|14EA66| db $36, $3F, $7F, $7F, $E3, $E3, $C3, $C3
|14EA6E| db $43, $C3, $67, $E7, $7E, $FF, $3C, $FF
|14EA76| db $C0, $80, $1C, $3C, $3C, $18, $00, $00
|14EA7E| db $43 ; Repeat word
|14EA7F| dw $F070
|14EA81| db $0E ; Raw block
|14EA82| db $F9, $F9, $FF, $FF, $BF, $FF, $1F, $FF
|14EA8A| db $78, $FF, $FC, $FF, $0F, $0F, $06
|14EA91| db $24 ; Repeat byte
|14EA92| db $00
|14EA93| db $03 ; Raw block
|14EA94| db $19, $FF, $6D, $EF
|14EA98| db $43 ; Repeat word
|14EA99| dw $C7C5
|14EA9B| db $06 ; Raw block
|14EA9C| db $6C, $EF, $F8, $FF, $60, $7F, $30
|14EAA3| db $84 ; Copy past
|14EAA4| dw $00CF
|14EAA6| db $03 ; Raw block
|14EAA7| db $10, $00, $80, $C0
|14EAAB| db $43 ; Repeat word
|14EAAC| dw $8F8E
|14EAAE| db $0D ; Raw block
|14EAAF| db $FC, $FF, $F8, $FF, $E7, $FF, $1F, $FF
|14EAB7| db $3C, $FC, $38, $F8, $70, $70
|14EABD| db $23 ; Repeat byte
|14EABE| db $00
|14EABF| db $01 ; Raw block
|14EAC0| db $03, $07
|14EAC2| db $85 ; Copy past
|14EAC3| dw $00F0
|14EAC5| db $49 ; Repeat word
|14EAC6| dw $BF3F
|14EAC8| db $02 ; Raw block
|14EAC9| db $00, $3F, $60
|14EACC| db $24 ; Repeat byte
|14EACD| db $40
|14EACE| db $85 ; Copy past
|14EACF| dw $0108
|14EAD1| db $11 ; Raw block
|14EAD2| db $FC, $FD, $AC, $AD, $DC, $DD, $AC, $AD
|14EADA| db $FC, $FD, $00, $FC, $06, $02, $52, $22
|14EAE2| db $52, $02
|14EAE4| db $45 ; Repeat word
|14EAE5| dw $BF3F
|14EAE7| db $05 ; Raw block
|14EAE8| db $3A, $BA, $3D, $BD, $1A, $9A
|14EAEE| db $83 ; Copy past
|14EAEF| dw $012C
|14EAF1| db $22 ; Repeat byte
|14EAF2| db $40
|14EAF3| db $04 ; Raw block
|14EAF4| db $45, $42, $65, $3F, $00
|14EAF9| db $49 ; Repeat word
|14EAFA| dw $FDFC
|14EAFC| db $85 ; Copy past
|14EAFD| dw $0142
|14EAFF| db $24 ; Repeat byte
|14EB00| db $02
|14EB01| db $02 ; Raw block
|14EB02| db $06, $FC, $00
|14EB05| db $86 ; Copy past
|14EB06| dw $0156
|14EB08| db $44 ; Repeat word
|14EB09| dw $FF7F
|14EB0B| db $83 ; Copy past
|14EB0C| dw $0152
|14EB0E| db $02 ; Raw block
|14EB0F| db $5B, $3D, $7E
|14EB12| db $23 ; Repeat byte
|14EB13| db $7F
|14EB14| db $03 ; Raw block
|14EB15| db $67, $DB, $67, $E7
|14EB19| db $44 ; Repeat word
|14EB1A| dw $FF7F
|14EB1C| db $87 ; Copy past
|14EB1D| dw $016A
|14EB1F| db $00 ; Raw block
|14EB20| db $67
|14EB21| db $23 ; Repeat byte
|14EB22| db $7F
|14EB23| db $04 ; Raw block
|14EB24| db $7E, $3D, $5B, $FF, $00
|14EB29| db $83 ; Copy past
|14EB2A| dw $01A2
|14EB2C| db $43 ; Repeat word
|14EB2D| dw $DFAF
|14EB2F| db $85 ; Copy past
|14EB30| dw $019A
|14EB32| db $09 ; Raw block
|14EB33| db $00, $7F, $BF, $DF, $DF, $BF, $7F, $FE
|14EB3B| db $FF, $00
|14EB3D| db $83 ; Copy past
|14EB3E| dw $018A
|14EB40| db $43 ; Repeat word
|14EB41| dw $FBF5
|14EB43| db $85 ; Copy past
|14EB44| dw $0182
|14EB46| db $11 ; Raw block
|14EB47| db $00, $FE, $FD, $FB, $FB, $FD, $FE, $7F
|14EB4F| db $FF, $00, $00, $FF, $00, $00, $FF, $18
|14EB57| db $E7, $24
|14EB59| db $85 ; Copy past
|14EB5A| dw $003A
|14EB5C| db $01 ; Raw block
|14EB5D| db $00, $00
|14EB5F| db $22 ; Repeat byte
|14EB60| db $FF
|14EB61| db $83 ; Copy past
|14EB62| dw $0045
|14EB64| db $E0, $24 ; EXT Raw block
|14EB66| db $00, $FF, $05, $FF, $2F, $FF, $9F, $E7
|14EB6E| db $3F, $E6, $7F, $FC, $7E, $DC, $FE, $00
|14EB76| db $05, $2F, $9F, $3F, $7F, $7F, $FF, $8C
|14EB7E| db $FF, $D3, $FF, $C1, $77, $C0, $E3, $E0
|14EB86| db $F6, $C0, $FC, $C0, $E6
|14EB8B| db $84 ; Copy past
|14EB8C| dw $01EE
|14EB8E| db $24 ; Repeat byte
|14EB8F| db $FF
|14EB90| db $0F ; Raw block
|14EB91| db $DF, $38, $87, $7C, $03, $FE, $01, $FE
|14EB99| db $83, $FC, $CF, $7B, $B8, $77, $F9, $06
|14EBA1| db $27 ; Repeat byte
|14EBA2| db $FF
|14EBA3| db $E0, $29 ; EXT Raw block
|14EBA5| db $60, $7F, $CE, $FF, $9E, $FF, $33, $F3
|14EBAD| db $63, $E3, $76, $F7, $3C, $FF, $18, $FF
|14EBB5| db $80, $00, $00, $0C, $1C, $08, $00, $00
|14EBBD| db $78, $F8, $7C, $FC, $3F, $FF, $1F, $FF
|14EBC5| db $0F, $FF, $00, $FF, $70, $FF, $FC, $FF
|14EBCD| db $07, $03
|14EBCF| db $25 ; Repeat byte
|14EBD0| db $00
|14EBD1| db $03 ; Raw block
|14EBD2| db $01, $FF, $39, $FF
|14EBD6| db $43 ; Repeat word
|14EBD7| dw $E765
|14EBD9| db $0B ; Raw block
|14EBDA| db $38, $FF, $00, $FF, $C0, $FF, $60, $7F
|14EBE2| db $00, $00, $18, $18
|14EBE6| db $22 ; Repeat byte
|14EBE7| db $00
|14EBE8| db $00 ; Raw block
|14EBE9| db $80
|14EBEA| db $43 ; Repeat word
|14EBEB| dw $9F9C
|14EBED| db $83 ; Copy past
|14EBEE| dw $025C
|14EBF0| db $00 ; Raw block
|14EBF1| db $E0
|14EBF2| db $86 ; Copy past
|14EBF3| dw $0261
|14EBF5| db $01 ; Raw block
|14EBF6| db $60, $60
|14EBF8| db $23 ; Repeat byte
|14EBF9| db $00
|14EBFA| db $87 ; Copy past
|14EBFB| dw $026E
|14EBFD| db $49 ; Repeat word
|14EBFE| dw $BF3F
|14EC00| db $02 ; Raw block
|14EC01| db $00, $3F, $60
|14EC04| db $24 ; Repeat byte
|14EC05| db $40
|14EC06| db $85 ; Copy past
|14EC07| dw $0108
|14EC09| db $43 ; Repeat word
|14EC0A| dw $FDFC
|14EC0C| db $01 ; Raw block
|14EC0D| db $DC, $DD
|14EC0F| db $43 ; Repeat word
|14EC10| dw $FDFC
|14EC12| db $83 ; Copy past
|14EC13| dw $0298
|14EC15| db $03 ; Raw block
|14EC16| db $02, $22, $02, $02
|14EC1A| db $45 ; Repeat word
|14EC1B| dw $BF3F
|14EC1D| db $05 ; Raw block
|14EC1E| db $3D, $BD, $38, $B8, $1D, $9D
|14EC24| db $83 ; Copy past
|14EC25| dw $012C
|14EC27| db $22 ; Repeat byte
|14EC28| db $40
|14EC29| db $04 ; Raw block
|14EC2A| db $42, $47, $62, $3F, $00
|14EC2F| db $49 ; Repeat word
|14EC30| dw $FDFC
|14EC32| db $85 ; Copy past
|14EC33| dw $0142
|14EC35| db $24 ; Repeat byte
|14EC36| db $02
|14EC37| db $05 ; Raw block
|14EC38| db $06, $FC, $00, $BD, $7E, $FE
|14EC3E| db $44 ; Repeat word
|14EC3F| dw $FF7F
|14EC41| db $85 ; Copy past
|14EC42| dw $0152
|14EC44| db $02 ; Raw block
|14EC45| db $DB, $3D, $7E
|14EC48| db $23 ; Repeat byte
|14EC49| db $7F
|14EC4A| db $02 ; Raw block
|14EC4B| db $67, $5B, $3D
|14EC4E| db $86 ; Copy past
|14EC4F| dw $016E
|14EC51| db $44 ; Repeat word
|14EC52| dw $FF7F
|14EC54| db $83 ; Copy past
|14EC55| dw $016A
|14EC57| db $02 ; Raw block
|14EC58| db $3D, $5B, $67
|14EC5B| db $23 ; Repeat byte
|14EC5C| db $7F
|14EC5D| db $00 ; Raw block
|14EC5E| db $7E
|14EC5F| db $E5, $7F ; EXT Repeat byte
|14EC61| db $00
|14EC62| db $FF ; End of GFX 5E

;===================================================================================================

GFX_5F:
|14EC63| db $05 ; Raw block
|14EC64| db $FF, $00, $D7, $EF, $EB, $F7
|14EC6A| db $43 ; Repeat word
|14EC6B| dw $FBF5
|14EC6D| db $0F ; Raw block
|14EC6E| db $EB, $F7, $D7, $EF, $AF, $DF, $00, $EF
|14EC76| db $F7, $FB, $FB, $F7, $EF, $DF, $FF, $00
|14EC7E| db $83 ; Copy past
|14EC7F| dw $000A
|14EC81| db $43 ; Repeat word
|14EC82| dw $DFAF
|14EC84| db $85 ; Copy past
|14EC85| dw $0002
|14EC87| db $0F ; Raw block
|14EC88| db $00, $F7, $EF, $DF, $DF, $EF, $F7, $FB
|14EC90| db $1F, $00, $E0, $1F, $1F, $EF, $FF, $1F
|14EC98| db $27 ; Repeat byte
|14EC99| db $FF
|14EC9A| db $03 ; Raw block
|14EC9B| db $E0, $00, $10, $E0
|14EC9F| db $23 ; Repeat byte
|14ECA0| db $00
|14ECA1| db $43 ; Repeat word
|14ECA2| dw $3F5F
|14ECA4| db $44 ; Repeat word
|14ECA5| dw $5FBF
|14ECA7| db $43 ; Repeat word
|14ECA8| dw $BF7F
|14ECAA| db $08 ; Raw block
|14ECAB| db $5F, $BF, $5F, $80, $80, $20, $20, $00
|14ECB3| db $00
|14ECB4| db $83 ; Copy past
|14ECB5| dw $005A
|14ECB7| db $07 ; Raw block
|14ECB8| db $03, $00, $04, $03, $0B, $07, $17, $0F
|14ECC0| db $43 ; Repeat word
|14ECC1| dw $1F2F
|14ECC3| db $0F ; Raw block
|14ECC4| db $5F, $3F, $FF, $FC, $F8, $F0, $E0, $C0
|14ECCC| db $C0, $80, $BF, $7F, $7F, $FF, $FF, $7F
|14ECD4| db $29 ; Repeat byte
|14ECD5| db $FF
|14ECD6| db $02 ; Raw block
|14ECD7| db $00, $00, $80
|14ECDA| db $26 ; Repeat byte
|14ECDB| db $00
|14ECDC| db $15 ; Raw block
|14ECDD| db $01, $00, $02, $01, $05, $03, $0B, $07
|14ECE5| db $33, $0F, $4F, $3F, $5F, $3F, $FF, $FE
|14ECED| db $FC, $F8, $F0, $C0, $80, $80
|14ECF3| db $25 ; Repeat byte
|14ECF4| db $00
|14ECF5| db $09 ; Raw block
|14ECF6| db $01, $00, $0E, $01, $11, $0F, $2F, $11
|14ECFE| db $5F, $2F
|14ED00| db $22 ; Repeat byte
|14ED01| db $FF
|14ED02| db $04 ; Raw block
|14ED03| db $FE, $F0, $E0, $CE, $90
|14ED08| db $25 ; Repeat byte
|14ED09| db $00
|14ED0A| db $07 ; Raw block
|14ED0B| db $F8, $00, $07, $F8, $F8, $E7, $FF, $F8
|14ED13| db $24 ; Repeat byte
|14ED14| db $FF
|14ED15| db $03 ; Raw block
|14ED16| db $07, $00, $18, $07
|14ED1A| db $22 ; Repeat byte
|14ED1B| db $00
|14ED1C| db $83 ; Copy past
|14ED1D| dw $00AE
|14ED1F| db $05 ; Raw block
|14ED20| db $31, $0E, $CF, $3F, $3F, $CF
|14ED26| db $24 ; Repeat byte
|14ED27| db $FF
|14ED28| db $16 ; Raw block
|14ED29| db $FE, $F0, $C1, $00, $30, $00, $00, $81
|14ED31| db $FE, $83, $FC, $87, $7B, $EC, $97, $7C
|14ED39| db $E7, $1E, $FB, $02, $FD, $1F, $E0
|14ED40| db $27 ; Repeat byte
|14ED41| db $FF
|14ED42| db $09 ; Raw block
|14ED43| db $81, $FE, $81, $7E, $E3, $9C, $7F, $E3
|14ED4B| db $1E, $FB
|14ED4D| db $43 ; Repeat word
|14ED4E| dw $FD03
|14ED50| db $01 ; Raw block
|14ED51| db $06, $FB
|14ED53| db $27 ; Repeat byte
|14ED54| db $FF
|14ED55| db $0F ; Raw block
|14ED56| db $3F, $DE, $61, $BF, $C0, $7F, $00, $FF
|14ED5E| db $01, $FE, $E3, $1D, $FE, $E3, $87, $F9
|14ED66| db $27 ; Repeat byte
|14ED67| db $FF
|14ED68| db $0F ; Raw block
|14ED69| db $06, $FB, $84, $7B, $5E, $A1, $7F, $9E
|14ED71| db $E3, $7E, $83, $FE, $03, $FD, $01, $FE
|14ED79| db $28 ; Repeat byte
|14ED7A| db $FF
|14ED7B| db $0D ; Raw block
|14ED7C| db $7F, $E7, $7F, $DB, $67, $A5, $5B, $DA
|14ED84| db $3D, $BD, $7E, $FE, $7F, $FF
|14ED8A| db $22 ; Repeat byte
|14ED8B| db $7F
|14ED8C| db $14 ; Raw block
|14ED8D| db $67, $5B, $3D, $7E, $7F, $7F, $FF, $7F
|14ED95| db $FE, $7F, $BD, $7E, $DA, $3D, $A5, $5B
|14ED9D| db $DB, $67, $E7, $7F, $FF
|14EDA2| db $22 ; Repeat byte
|14EDA3| db $7F
|14EDA4| db $0B ; Raw block
|14EDA5| db $7E, $3D, $5B, $67, $7F, $7F, $FF, $00
|14EDAD| db $FA, $FD, $7D, $FE
|14EDB1| db $43 ; Repeat word
|14EDB2| dw $7FBE
|14EDB4| db $13 ; Raw block
|14EDB5| db $7D, $FE, $FA, $FD, $F5, $FB, $00, $FD
|14EDBD| db $FE, $7F, $7F, $FE, $FD, $FB, $FF, $00
|14EDC5| db $5F, $BF, $BE, $7F
|14EDC9| db $43 ; Repeat word
|14EDCA| dw $FE7D
|14EDCC| db $0F ; Raw block
|14EDCD| db $BE, $7F, $5F, $BF, $AF, $DF, $00, $BF
|14EDD5| db $7F, $FE, $FE, $7F, $BF, $DF, $00, $00
|14EDDD| db $84 ; Copy past
|14EDDE| dw $0030
|14EDE0| db $00 ; Raw block
|14EDE1| db $F8
|14EDE2| db $28 ; Repeat byte
|14EDE3| db $FF
|14EDE4| db $02 ; Raw block
|14EDE5| db $E0, $00, $07
|14EDE8| db $23 ; Repeat byte
|14EDE9| db $00
|14EDEA| db $43 ; Repeat word
|14EDEB| dw $1F2F
|14EDED| db $01 ; Raw block
|14EDEE| db $5F, $2F
|14EDF0| db $44 ; Repeat word
|14EDF1| dw $3F5F
|14EDF3| db $00 ; Raw block
|14EDF4| db $2F
|14EDF5| db $43 ; Repeat word
|14EDF6| dw $3F5F
|14EDF8| db $05 ; Raw block
|14EDF9| db $C0, $C0, $90, $80, $80, $90
|14EDFF| db $83 ; Copy past
|14EE00| dw $00A6
|14EE02| db $87 ; Copy past
|14EE03| dw $0092
|14EE05| db $01 ; Raw block
|14EE06| db $17, $0B
|14EE08| db $83 ; Copy past
|14EE09| dw $0068
|14EE0B| db $84 ; Copy past
|14EE0C| dw $00A0
|14EE0E| db $07 ; Raw block
|14EE0F| db $E4, $E0, $C0, $5F, $2F, $BF, $5F, $7F
|14EE17| db $2A ; Repeat byte
|14EE18| db $FF
|14EE19| db $01 ; Raw block
|14EE1A| db $90, $20
|14EE1C| db $29 ; Repeat byte
|14EE1D| db $00
|14EE1E| db $85 ; Copy past
|14EE1F| dw $0092
|14EE21| db $06 ; Raw block
|14EE22| db $1B, $05, $27, $1B, $2F, $1F, $FF
|14EE29| db $83 ; Copy past
|14EE2A| dw $00A0
|14EE2C| db $02 ; Raw block
|14EE2D| db $E2, $C4, $C0
|14EE30| db $27 ; Repeat byte
|14EE31| db $00
|14EE32| db $84 ; Copy past
|14EE33| dw $00AE
|14EE35| db $02 ; Raw block
|14EE36| db $0E, $2F, $1F
|14EE39| db $23 ; Repeat byte
|14EE3A| db $FF
|14EE3B| db $03 ; Raw block
|14EE3C| db $FE, $F0, $E1, $C0
|14EE40| db $27 ; Repeat byte
|14EE41| db $00
|14EE42| db $84 ; Copy past
|14EE43| dw $00C6
|14EE45| db $00 ; Raw block
|14EE46| db $1F
|14EE47| db $25 ; Repeat byte
|14EE48| db $FF
|14EE49| db $02 ; Raw block
|14EE4A| db $07, $00, $E0
|14EE4D| db $24 ; Repeat byte
|14EE4E| db $00
|14EE4F| db $06 ; Raw block
|14EE50| db $0F, $00, $30, $0F, $CF, $33, $3F
|14EE57| db $26 ; Repeat byte
|14EE58| db $FF
|14EE59| db $02 ; Raw block
|14EE5A| db $F0, $C0, $0C
|14EE5D| db $22 ; Repeat byte
|14EE5E| db $00
|14EE5F| db $83 ; Copy past
|14EE60| dw $00F0
|14EE62| db $0B ; Raw block
|14EE63| db $07, $FB, $CC, $37, $F8, $CF, $38, $EF
|14EE6B| db $08, $F7, $1E, $E1
|14EE6F| db $27 ; Repeat byte
|14EE70| db $FF
|14EE71| db $87 ; Copy past
|14EE72| dw $0108
|14EE74| db $00 ; Raw block
|14EE75| db $1C
|14EE76| db $46 ; Repeat word
|14EE77| dw $0CF7
|14EE79| db $27 ; Repeat byte
|14EE7A| db $FF
|14EE7B| db $87 ; Copy past
|14EE7C| dw $0120
|14EE7E| db $07 ; Raw block
|14EE7F| db $80, $7F, $F8, $87, $FD, $7A, $C3, $7C
|14EE87| db $27 ; Repeat byte
|14EE88| db $FF
|14EE89| db $85 ; Copy past
|14EE8A| dw $0138
|14EE8C| db $85 ; Copy past
|14EE8D| dw $0120
|14EE8F| db $02 ; Raw block
|14EE90| db $80, $FF, $80
|14EE93| db $28 ; Repeat byte
|14EE94| db $FF
|14EE95| db $86 ; Copy past
|14EE96| dw $0156
|14EE98| db $44 ; Repeat word
|14EE99| dw $FF7F
|14EE9B| db $83 ; Copy past
|14EE9C| dw $0152
|14EE9E| db $02 ; Raw block
|14EE9F| db $5B, $3D, $7E
|14EEA2| db $23 ; Repeat byte
|14EEA3| db $7F
|14EEA4| db $03 ; Raw block
|14EEA5| db $67, $DB, $67, $E7
|14EEA9| db $44 ; Repeat word
|14EEAA| dw $FF7F
|14EEAC| db $87 ; Copy past
|14EEAD| dw $016A
|14EEAF| db $00 ; Raw block
|14EEB0| db $67
|14EEB1| db $23 ; Repeat byte
|14EEB2| db $7F
|14EEB3| db $04 ; Raw block
|14EEB4| db $7E, $3D, $5B, $FF, $00
|14EEB9| db $83 ; Copy past
|14EEBA| dw $01A2
|14EEBC| db $43 ; Repeat word
|14EEBD| dw $DFAF
|14EEBF| db $85 ; Copy past
|14EEC0| dw $019A
|14EEC2| db $09 ; Raw block
|14EEC3| db $00, $7F, $BF, $DF, $DF, $BF, $7F, $FE
|14EECB| db $FF, $00
|14EECD| db $83 ; Copy past
|14EECE| dw $018A
|14EED0| db $43 ; Repeat word
|14EED1| dw $FBF5
|14EED3| db $85 ; Copy past
|14EED4| dw $0182
|14EED6| db $07 ; Raw block
|14EED7| db $00, $FE, $FD, $FB, $FB, $FD, $FE, $7F
|14EEDF| db $23 ; Repeat byte
|14EEE0| db $00
|14EEE1| db $84 ; Copy past
|14EEE2| dw $0030
|14EEE4| db $00 ; Raw block
|14EEE5| db $FB
|14EEE6| db $27 ; Repeat byte
|14EEE7| db $FF
|14EEE8| db $02 ; Raw block
|14EEE9| db $E0, $00, $04
|14EEEC| db $22 ; Repeat byte
|14EEED| db $00
|14EEEE| db $03 ; Raw block
|14EEEF| db $17, $0F, $17, $0B
|14EEF3| db $4B ; Repeat word
|14EEF4| dw $1F2F
|14EEF6| db $01 ; Raw block
|14EEF7| db $E0, $E4
|14EEF9| db $25 ; Repeat byte
|14EEFA| db $C0
|14EEFB| db $23 ; Repeat byte
|14EEFC| db $00
|14EEFD| db $85 ; Copy past
|14EEFE| dw $0092
|14EF00| db $43 ; Repeat word
|14EF01| dw $070B
|14EF03| db $01 ; Raw block
|14EF04| db $17, $0F
|14EF06| db $84 ; Copy past
|14EF07| dw $0220
|14EF09| db $02 ; Raw block
|14EF0A| db $F0, $F0, $E0
|14EF0D| db $83 ; Copy past
|14EF0E| dw $004A
|14EF10| db $01 ; Raw block
|14EF11| db $7F, $BF
|14EF13| db $29 ; Repeat byte
|14EF14| db $FF
|14EF15| db $02 ; Raw block
|14EF16| db $80, $20, $40
|14EF19| db $2A ; Repeat byte
|14EF1A| db $00
|14EF1B| db $83 ; Copy past
|14EF1C| dw $0092
|14EF1E| db $05 ; Raw block
|14EF1F| db $0C, $03, $13, $0D, $2F, $1F
|14EF25| db $22 ; Repeat byte
|14EF26| db $FF
|14EF27| db $04 ; Raw block
|14EF28| db $FE, $FC, $F0, $E2, $C0
|14EF2D| db $29 ; Repeat byte
|14EF2E| db $00
|14EF2F| db $85 ; Copy past
|14EF30| dw $00AE
|14EF32| db $24 ; Repeat byte
|14EF33| db $FF
|14EF34| db $02 ; Raw block
|14EF35| db $FE, $F0, $E0
|14EF38| db $29 ; Repeat byte
|14EF39| db $00
|14EF3A| db $84 ; Copy past
|14EF3B| dw $00C6
|14EF3D| db $00 ; Raw block
|14EF3E| db $EF
|14EF3F| db $24 ; Repeat byte
|14EF40| db $FF
|14EF41| db $02 ; Raw block
|14EF42| db $07, $00, $10
|14EF45| db $25 ; Repeat byte
|14EF46| db $00
|14EF47| db $84 ; Copy past
|14EF48| dw $025C
|14EF4A| db $02 ; Raw block
|14EF4B| db $3F, $3F, $E7
|14EF4E| db $24 ; Repeat byte
|14EF4F| db $FF
|14EF50| db $0A ; Raw block
|14EF51| db $F0, $C0, $00, $18, $00, $03, $FD, $0F
|14EF59| db $F0, $0F, $F7
|14EF5C| db $87 ; Copy past
|14EF5D| dw $0276
|14EF5F| db $01 ; Raw block
|14EF60| db $1F, $E0
|14EF62| db $27 ; Repeat byte
|14EF63| db $FF
|14EF64| db $83 ; Copy past
|14EF65| dw $0114
|14EF67| db $04 ; Raw block
|14EF68| db $E6, $19, $FF, $E3, $1C
|14EF6D| db $44 ; Repeat word
|14EF6E| dw $0CF7
|14EF70| db $01 ; Raw block
|14EF71| db $06, $FB
|14EF73| db $27 ; Repeat byte
|14EF74| db $FF
|14EF75| db $09 ; Raw block
|14EF76| db $1F, $EF, $30, $DF, $70, $9F, $80, $7F
|14EF7E| db $C0, $BF
|14EF80| db $83 ; Copy past
|14EF81| dw $02AA
|14EF83| db $01 ; Raw block
|14EF84| db $83, $FC
|14EF86| db $27 ; Repeat byte
|14EF87| db $FF
|14EF88| db $0F ; Raw block
|14EF89| db $83, $7D, $E2, $9D, $1F, $E0, $1F, $EF
|14EF91| db $70, $9F, $E0, $7F, $80, $FF, $81, $FE
|14EF99| db $27 ; Repeat byte
|14EF9A| db $FF
|14EF9B| db $02 ; Raw block
|14EF9C| db $BD, $7E, $FE
|14EF9F| db $44 ; Repeat word
|14EFA0| dw $FF7F
|14EFA2| db $85 ; Copy past
|14EFA3| dw $0152
|14EFA5| db $02 ; Raw block
|14EFA6| db $DB, $3D, $7E
|14EFA9| db $23 ; Repeat byte
|14EFAA| db $7F
|14EFAB| db $02 ; Raw block
|14EFAC| db $67, $5B, $3D
|14EFAF| db $86 ; Copy past
|14EFB0| dw $016E
|14EFB2| db $44 ; Repeat word
|14EFB3| dw $FF7F
|14EFB5| db $83 ; Copy past
|14EFB6| dw $016A
|14EFB8| db $02 ; Raw block
|14EFB9| db $3D, $5B, $67
|14EFBC| db $23 ; Repeat byte
|14EFBD| db $7F
|14EFBE| db $00 ; Raw block
|14EFBF| db $7E
|14EFC0| db $E5, $7F ; EXT Repeat byte
|14EFC2| db $00
|14EFC3| db $FF ; End of GFX 5F

;===================================================================================================

GFX_60:
|14EFC4| db $0F ; Raw block
|14EFC5| db $FF, $00, $FC, $03, $F8, $07, $F3, $0F
|14EFCD| db $E7, $1F, $CF, $3F, $98, $7F, $B7, $78
|14EFD5| db $27 ; Repeat byte
|14EFD6| db $00
|14EFD7| db $01 ; Raw block
|14EFD8| db $DC, $3F
|14EFDA| db $43 ; Repeat word
|14EFDB| dw $E323
|14EFDD| db $43 ; Repeat word
|14EFDE| dw $C0DC
|14EFE0| db $08 ; Raw block
|14EFE1| db $CE, $C0, $27, $E0, $D3, $30, $00, $1C
|14EFE9| db $1C
|14EFEA| db $22 ; Repeat byte
|14EFEB| db $3F
|14EFEC| db $11 ; Raw block
|14EFED| db $1F, $0F, $7F, $80, $BF, $C0, $9F, $E0
|14EFF5| db $4F, $70, $67, $78, $30, $3F, $18, $1F
|14EFFD| db $8F, $0F
|14EFFF| db $22 ; Repeat byte
|14F000| db $00
|14F001| db $17 ; Raw block
|14F002| db $80, $80, $C0, $E0, $F0, $F7, $4A, $F7
|14F00A| db $4C, $DA, $66, $EC, $73, $B7, $78, $98
|14F012| db $7F, $CF, $3F, $E7, $1F, $00, $00, $01
|14F01A| db $24 ; Repeat byte
|14F01B| db $00
|14F01C| db $E0, $21 ; EXT Raw block
|14F01E| db $E2, $0E, $C4, $1C, $49, $79, $13, $F3
|14F026| db $A7, $67, $4F, $CF, $9E, $9E, $3C, $3C
|14F02E| db $11, $23, $86, $0C, $18, $30, $61, $C3
|14F036| db $70, $70, $F7, $F0, $E7, $E0, $CF, $C0
|14F03E| db $9F, $80
|14F040| db $45 ; Repeat word
|14F041| dw $003F
|14F043| db $04 ; Raw block
|14F044| db $8F, $0F, $1F, $3F, $7F
|14F049| db $22 ; Repeat byte
|14F04A| db $FF
|14F04B| db $09 ; Raw block
|14F04C| db $B0, $4F, $18, $E7, $3C, $F3, $7F, $F0
|14F054| db $2F, $F0
|14F056| db $43 ; Repeat word
|14F057| dw $F30C
|14F059| db $E0, $21 ; EXT Raw block
|14F05B| db $F8, $07, $4F, $E7, $C3, $80, $D0, $E0
|14F063| db $01, $03, $08, $F7, $0C, $F3, $1F, $E0
|14F06B| db $FF, $00, $83, $7C, $01, $FE, $3F, $FF
|14F073| db $7F, $FF, $F7, $F3, $E0, $00, $7C, $FE
|14F07B| db $C0, $80
|14F07D| db $43 ; Repeat word
|14F07E| dw $BE41
|14F080| db $0F ; Raw block
|14F081| db $C1, $3E, $E3, $1C, $FF, $00, $C7, $38
|14F089| db $9F, $7C, $9F, $FE, $BE, $BE, $3E, $1C
|14F091| db $23 ; Repeat byte
|14F092| db $00
|14F093| db $1B ; Raw block
|14F094| db $FF, $00, $0F, $F0, $E0, $FF, $1F, $1F
|14F09C| db $80, $80, $06, $06, $F9, $00, $FF, $FF
|14F0A4| db $00, $F0, $1F, $E0, $7F, $F9, $FF, $00
|14F0AC| db $A0, $60, $C7, $40
|14F0B0| db $47 ; Repeat word
|14F0B1| dw $42C7
|14F0B3| db $05 ; Raw block
|14F0B4| db $BF, $02, $BD, $3C, $1F, $3F
|14F0BA| db $23 ; Repeat byte
|14F0BB| db $3C
|14F0BC| db $02 ; Raw block
|14F0BD| db $7C, $42, $C0
|14F0C0| db $43 ; Repeat word
|14F0C1| dw $FF7F
|14F0C3| db $05 ; Raw block
|14F0C4| db $3F, $FF, $00, $C0, $7F, $FE
|14F0CA| db $43 ; Repeat word
|14F0CB| dw $FF7F
|14F0CD| db $E0, $30 ; EXT Raw block
|14F0CF| db $00, $40, $40, $3F, $00, $40, $41, $7F
|14F0D7| db $00, $18, $E6, $1D, $E7, $18, $E5, $0E
|14F0DF| db $F2, $07, $F9, $03, $FC, $01, $FE, $00
|14F0E7| db $FF, $E1, $E0, $E2, $F1, $F8, $FC, $FE
|14F0EF| db $FF, $FD, $C3, $86, $F9, $33, $FC, $71
|14F0F7| db $7E, $E4, $FB, $0E, $F1, $FF, $00, $03
|14F0FF| db $FC
|14F100| db $22 ; Repeat byte
|14F101| db $00
|14F102| db $00 ; Raw block
|14F103| db $80
|14F104| db $22 ; Repeat byte
|14F105| db $00
|14F106| db $E0, $3A ; EXT Raw block
|14F108| db $FC, $C3, $C3, $E0, $E0, $70, $F0, $B8
|14F110| db $78, $DC, $3C, $66, $9E, $33, $CF, $FF
|14F118| db $00, $3C, $1F, $0F, $07, $03, $01, $00
|14F120| db $00, $03, $FC, $07, $F8, $08, $F2, $0A
|14F128| db $F3, $0D, $F5, $0A, $F6, $05, $FB, $0E
|14F130| db $F2, $FC, $F9, $F5, $F4, $F2, $F1, $F0
|14F138| db $F1, $AF, $70, $9B, $67, $B7, $48, $AF
|14F140| db $50, $BF, $43
|14F143| db $45 ; Repeat word
|14F144| dw $44BF
|14F146| db $27 ; Repeat byte
|14F147| db $00
|14F148| db $E0, $28 ; EXT Raw block
|14F14A| db $E9, $18, $94, $AC, $CA, $56, $F7, $3B
|14F152| db $7F, $1B, $7F, $0B, $FF, $83, $7F, $0B
|14F15A| db $07, $43, $21, $00, $80, $C0, $40, $80
|14F162| db $C7, $07, $E0, $00, $70, $00, $3F, $00
|14F16A| db $1F, $00, $5F, $40, $6F, $60, $70, $70
|14F172| db $F8
|14F173| db $23 ; Repeat byte
|14F174| db $FF
|14F175| db $04 ; Raw block
|14F176| db $BF, $9F, $8F, $E3, $1F
|14F17B| db $43 ; Repeat word
|14F17C| dw $679B
|14F17E| db $43 ; Repeat word
|14F17F| dw $07F8
|14F181| db $45 ; Repeat word
|14F182| dw $E01F
|14F184| db $24 ; Repeat byte
|14F185| db $00
|14F186| db $22 ; Repeat byte
|14F187| db $01
|14F188| db $E0, $51 ; EXT Raw block
|14F18A| db $F8, $F8, $88, $F8, $28, $D8, $48, $98
|14F192| db $AC, $3C, $0E, $3E, $77, $4F, $7B, $47
|14F19A| db $07, $07, $27, $67, $C3, $C1, $80, $80
|14F1A2| db $3F, $00, $01, $00, $3C, $24, $7E, $42
|14F1AA| db $7E, $52, $2E, $2A, $06, $06, $87, $87
|14F1B2| db $FF, $FF, $C3, $81, $81, $D1, $F9, $78
|14F1BA| db $F0, $0F, $61, $9F, $4F, $BF, $D3, $33
|14F1C2| db $C9, $39, $C4, $3C, $E2, $1E, $63, $9F
|14F1CA| db $07, $9E, $B0, $2C, $36, $3B, $1D, $1C
|14F1D2| db $FC, $FC, $F8, $F8, $F0, $F0, $E0, $E0
|14F1DA| db $C0, $C0
|14F1DC| db $83 ; Copy past
|14F1DD| dw $0149
|14F1DF| db $06 ; Raw block
|14F1E0| db $40, $00, $03, $07, $0F, $1F, $3F
|14F1E7| db $22 ; Repeat byte
|14F1E8| db $FF
|14F1E9| db $07 ; Raw block
|14F1EA| db $F7, $66, $F6, $67, $F7, $67, $F4, $64
|14F1F2| db $43 ; Repeat word
|14F1F3| dw $60F0
|14F1F5| db $07 ; Raw block
|14F1F6| db $F1, $60, $FE, $60, $18, $19, $18, $1B
|14F1FE| db $23 ; Repeat byte
|14F1FF| db $1F
|14F200| db $17 ; Raw block
|14F201| db $E0, $1F, $E0, $9F, $F0, $CF, $B8, $A7
|14F209| db $1C, $13, $8C, $8B, $CE, $C9, $EE, $E9
|14F211| db $1F, $1F, $0F, $47, $E3, $73, $31, $15
|14F219| db $37 ; Repeat byte
|14F21A| db $00
|14F21B| db $06 ; Raw block
|14F21C| db $DF, $7F, $A0, $60, $C0, $7F, $FF
|14F223| db $87 ; Copy past
|14F224| dw $0287
|14F226| db $03 ; Raw block
|14F227| db $00, $40, $1F, $40
|14F22B| db $83 ; Copy past
|14F22C| dw $0297
|14F22E| db $0A ; Raw block
|14F22F| db $00, $DF, $0E, $EF, $26, $77, $93, $3B
|14F237| db $C9, $1D, $E4
|14F23A| db $85 ; Copy past
|14F23B| dw $0126
|14F23D| db $E0, $27 ; EXT Raw block
|14F23F| db $30, $18, $8C, $C6, $E3, $F1, $F8, $FC
|14F247| db $6F, $CE, $4F, $CE, $EF, $6E, $F7, $B6
|14F24F| db $FB, $DA, $FD, $6C, $FF, $F0, $F8, $07
|14F257| db $30, $30, $10, $08, $04, $82, $00, $07
|14F25F| db $FF, $00, $FF, $70, $FC, $63, $F0, $4F
|14F267| db $43 ; Repeat word
|14F268| dw $1FE0
|14F26A| db $13 ; Raw block
|14F26B| db $C6, $39, $CF, $30, $00, $03, $0C, $10
|14F273| db $20, $20, $46, $4F, $FF, $00, $FF, $0E
|14F27B| db $3F, $C6, $0F, $F2
|14F27F| db $43 ; Repeat word
|14F280| dw $F807
|14F282| db $1D ; Raw block
|14F283| db $13, $EC, $3B, $C4, $00, $C0, $30, $08
|14F28B| db $04, $04, $12, $3A, $34, $DC, $34, $D4
|14F293| db $31, $D0, $39, $C8, $1D, $E4, $1E, $E6
|14F29B| db $1A, $EA, $28, $D8, $C3, $CB
|14F2A1| db $83 ; Copy past
|14F2A2| dw $0162
|14F2A4| db $18 ; Raw block
|14F2A5| db $05, $07, $05, $05, $FF, $00, $FF, $7F
|14F2AD| db $F7, $FF, $88, $88, $F7, $80, $F7, $7F
|14F2B5| db $FF, $C0, $FA, $FF, $7F, $80, $77, $7F
|14F2BD| db $80
|14F2BE| db $30 ; Repeat byte
|14F2BF| db $00
|14F2C0| db $27 ; Repeat byte
|14F2C1| db $FF
|14F2C2| db $45 ; Repeat word
|14F2C3| dw $5BAA
|14F2C5| db $00 ; Raw block
|14F2C6| db $AE
|14F2C7| db $46 ; Repeat word
|14F2C8| dw $A05F
|14F2CA| db $01 ; Raw block
|14F2CB| db $BF, $40
|14F2CD| db $22 ; Repeat byte
|14F2CE| db $04
|14F2CF| db $24 ; Repeat byte
|14F2D0| db $00
|14F2D1| db $E0, $29 ; EXT Raw block
|14F2D3| db $16, $EA, $1A, $EE, $1A, $EA, $08, $F0
|14F2DB| db $09, $F4, $1B, $E6, $2A, $D6, $2E, $D6
|14F2E3| db $E1, $E1, $E5, $E7, $E3, $E1, $C1, $C1
|14F2EB| db $CE, $3C, $8D, $7C, $C9, $78, $CB, $78
|14F2F3| db $EB, $78, $DF, $5C, $8D, $4C, $A5, $64
|14F2FB| db $03, $03
|14F2FD| db $22 ; Repeat byte
|14F2FE| db $07
|14F2FF| db $02 ; Raw block
|14F300| db $23, $33, $1B
|14F303| db $43 ; Repeat word
|14F304| dw $9F63
|14F306| db $10 ; Raw block
|14F307| db $DF, $3F, $BF, $7F, $B0, $70, $E0, $60
|14F30F| db $EF, $60, $E0, $60, $1C, $1C, $20, $40
|14F317| db $4F
|14F318| db $22 ; Repeat byte
|14F319| db $1F
|14F31A| db $45 ; Repeat word
|14F31B| dw $0040
|14F31D| db $09 ; Raw block
|14F31E| db $7C, $00, $7F, $00, $83, $00, $78, $78
|14F326| db $FC, $FC
|14F328| db $25 ; Repeat byte
|14F329| db $FF
|14F32A| db $01 ; Raw block
|14F32B| db $87, $03
|14F32D| db $23 ; Repeat byte
|14F32E| db $F3
|14F32F| db $00 ; Raw block
|14F330| db $F7
|14F331| db $48 ; Repeat word
|14F332| dw $76F3
|14F334| db $01 ; Raw block
|14F335| db $F6, $73
|14F337| db $22 ; Repeat byte
|14F338| db $0C
|14F339| db $00 ; Raw block
|14F33A| db $8C
|14F33B| db $23 ; Repeat byte
|14F33C| db $0C
|14F33D| db $0A ; Raw block
|14F33E| db $FF, $FE, $C1, $FE, $81, $FE, $1F, $FC
|14F346| db $33, $F0, $F3
|14F349| db $44 ; Repeat word
|14F34A| dw $FB70
|14F34C| db $03 ; Raw block
|14F34D| db $00, $1C, $1C, $00
|14F351| db $23 ; Repeat byte
|14F352| db $0C
|14F353| db $0F ; Raw block
|14F354| db $FB, $7C, $F7, $78, $F7, $7A, $B1, $72
|14F35C| db $5D, $BE, $ED, $1E, $AD, $1E, $CD, $4E
|14F364| db $22 ; Repeat byte
|14F365| db $00
|14F366| db $18 ; Raw block
|14F367| db $0C, $00, $00, $40, $30, $05, $FF, $1C
|14F36F| db $FF, $3E, $FF, $7F, $FF, $FD, $FF, $FA
|14F377| db $FE, $F9, $FF, $FC, $FF, $F8, $E0, $C0
|14F37F| db $80
|14F380| db $83 ; Copy past
|14F381| dw $0059
|14F383| db $E0, $21 ; EXT Raw block
|14F385| db $01, $FF, $30, $FF, $26, $EF, $0F, $7F
|14F38D| db $3C, $FE, $BA, $FE, $59, $7F, $5C, $7F
|14F395| db $00, $00, $10, $80, $01, $01, $80, $80
|14F39D| db $01, $FF, $14, $DF, $36, $FF, $0F, $FF
|14F3A5| db $7D, $FF
|14F3A7| db $86 ; Copy past
|14F3A8| dw $042A
|14F3AA| db $00 ; Raw block
|14F3AB| db $20
|14F3AC| db $22 ; Repeat byte
|14F3AD| db $00
|14F3AE| db $1A ; Raw block
|14F3AF| db $01, $80, $80, $03, $FC, $07, $F9, $0E
|14F3B7| db $F2, $1D, $E4, $3B, $C9, $77, $93, $EF
|14F3BF| db $26, $DF, $0E, $00, $00, $01, $03, $06
|14F3C7| db $0C, $18, $30
|14F3CA| db $4E ; Repeat word
|14F3CB| dw $FF00
|14F3CD| db $28 ; Repeat byte
|14F3CE| db $FF
|14F3CF| db $0F ; Raw block
|14F3D0| db $48, $B8, $4B, $B8, $6B, $B8, $7B, $B8
|14F3D8| db $69, $A8, $44, $A4, $DA, $32, $CC, $38
|14F3E0| db $23 ; Repeat byte
|14F3E1| db $07
|14F3E2| db $18 ; Raw block
|14F3E3| db $17, $1B, $0D, $07, $B0, $C3, $AB, $C0
|14F3EB| db $AD, $C0, $BD, $D2, $9A, $E8, $FF, $F3
|14F3F3| db $FF, $7C, $FF, $00, $1C, $17, $12, $00
|14F3FB| db $05
|14F3FC| db $22 ; Repeat byte
|14F3FD| db $00
|14F3FE| db $46 ; Repeat word
|14F3FF| dw $00FF
|14F401| db $08 ; Raw block
|14F402| db $0E, $FF, $1F, $FB, $1F, $F1, $1F, $F5
|14F40A| db $1F
|14F40B| db $22 ; Repeat byte
|14F40C| db $00
|14F40D| db $04 ; Raw block
|14F40E| db $0E, $1F, $1B, $11, $11
|14F413| db $4F ; Repeat word
|14F414| dw $5BAA
|14F416| db $27 ; Repeat byte
|14F417| db $04
|14F418| db $4D ; Repeat word
|14F419| dw $1FF5
|14F41B| db $01 ; Raw block
|14F41C| db $BB, $5B
|14F41E| db $26 ; Repeat byte
|14F41F| db $11
|14F420| db $06 ; Raw block
|14F421| db $15, $89, $60, $97, $70, $BB, $78
|14F428| db $43 ; Repeat word
|14F429| dw $7CBD
|14F42B| db $05 ; Raw block
|14F42C| db $9E, $7E, $C6, $3E, $F0, $0F
|14F432| db $83 ; Copy past
|14F433| dw $0161
|14F435| db $02 ; Raw block
|14F436| db $03, $01, $01
|14F439| db $44 ; Repeat word
|14F43A| dw $0200
|14F43C| db $0B ; Raw block
|14F43D| db $04, $00, $0B, $03, $14, $07, $2C, $0F
|14F445| db $5C, $1F, $B9, $BE
|14F449| db $22 ; Repeat byte
|14F44A| db $FF
|14F44B| db $0E ; Raw block
|14F44C| db $FC, $FB, $F3, $E3, $46, $FF, $00, $BF
|14F454| db $3F, $DF, $5F, $FF, $60, $F0, $60
|14F45B| db $43 ; Repeat word
|14F45C| dw $67F7
|14F45E| db $11 ; Raw block
|14F45F| db $F6, $66, $00, $40, $20, $1F, $1F, $18
|14F467| db $18, $19, $E0, $1F, $F7, $08, $FF, $00
|14F46F| db $CF, $30
|14F471| db $43 ; Repeat word
|14F472| dw $18E7
|14F474| db $05 ; Raw block
|14F475| db $EE, $11, $FF, $00, $1F, $08
|14F47B| db $25 ; Repeat byte
|14F47C| db $00
|14F47D| db $0B ; Raw block
|14F47E| db $73, $FC, $87, $78, $FF, $00, $F3, $0C
|14F486| db $F1, $0E, $71, $8E
|14F48A| db $43 ; Repeat word
|14F48B| dw $C03F
|14F48D| db $01 ; Raw block
|14F48E| db $8C, $78
|14F490| db $25 ; Repeat byte
|14F491| db $00
|14F492| db $05 ; Raw block
|14F493| db $FD, $7E, $FD, $46, $FD, $56
|14F499| db $45 ; Repeat word
|14F49A| dw $46FD
|14F49C| db $02 ; Raw block
|14F49D| db $B9, $46, $FF
|14F4A0| db $23 ; Repeat byte
|14F4A1| db $00
|14F4A2| db $23 ; Repeat byte
|14F4A3| db $10
|14F4A4| db $07 ; Raw block
|14F4A5| db $00, $AC, $EF, $3F, $FF, $02, $FE, $01
|14F4AD| db $48 ; Repeat word
|14F4AE| dw $00FF
|14F4B0| db $04 ; Raw block
|14F4B1| db $10, $80, $C1, $FC, $FE
|14F4B6| db $22 ; Repeat byte
|14F4B7| db $FF
|14F4B8| db $0F ; Raw block
|14F4B9| db $9E, $FF, $1F, $FF, $0F, $FF, $80, $FF
|14F4C1| db $A9, $EF, $3A, $FE, $01, $BF, $00, $C7
|14F4C9| db $23 ; Repeat byte
|14F4CA| db $00
|14F4CB| db $13 ; Raw block
|14F4CC| db $10, $01, $40, $38, $9E, $FF, $3F, $FF
|14F4D4| db $0F, $FF, $26, $FF, $51, $DF, $32, $FE
|14F4DC| db $01, $FF, $C0, $FF
|14F4E0| db $23 ; Repeat byte
|14F4E1| db $00
|14F4E2| db $03 ; Raw block
|14F4E3| db $20, $01, $00, $00
|14F4E7| db $49 ; Repeat word
|14F4E8| dw $FBE4
|14F4EA| db $05 ; Raw block
|14F4EB| db $CC, $F3, $18, $E7, $F0, $0F
|14F4F1| db $24 ; Repeat byte
|14F4F2| db $18
|14F4F3| db $01 ; Raw block
|14F4F4| db $30, $E0
|14F4F6| db $30 ; Repeat byte
|14F4F7| db $00
|14F4F8| db $27 ; Repeat byte
|14F4F9| db $FF
|14F4FA| db $FF ; End of GFX 60

;===================================================================================================

GFX_61:
|14F4FB| db $E7, $FF ; EXT Repeat byte
|14F4FD| db $00
|14F4FE| db $E5, $FF ; EXT Repeat byte
|14F500| db $00
|14F501| db $FF ; End of GFX 61

;===================================================================================================

GFX_62:
|14F502| db $E7, $FF ; EXT Repeat byte
|14F504| db $00
|14F505| db $E5, $FF ; EXT Repeat byte
|14F507| db $00
|14F508| db $FF ; End of GFX 62

;===================================================================================================

GFX_63:
|14F509| db $E7, $FF ; EXT Repeat byte
|14F50B| db $00
|14F50C| db $E5, $FF ; EXT Repeat byte
|14F50E| db $00
|14F50F| db $FF ; End of GFX 63

;===================================================================================================

GFX_64:
|14F510| db $E7, $FF ; EXT Repeat byte
|14F512| db $00
|14F513| db $E5, $FF ; EXT Repeat byte
|14F515| db $00
|14F516| db $FF ; End of GFX 64

;===================================================================================================

GFX_65:
|14F517| db $E7, $FF ; EXT Repeat byte
|14F519| db $00
|14F51A| db $E5, $FF ; EXT Repeat byte
|14F51C| db $00
|14F51D| db $FF ; End of GFX 65

;===================================================================================================

GFX_66:
|14F51E| db $E7, $FF ; EXT Repeat byte
|14F520| db $00
|14F521| db $E5, $FF ; EXT Repeat byte
|14F523| db $00
|14F524| db $FF ; End of GFX 66

;===================================================================================================

GFX_67:
|14F525| db $E7, $FF ; EXT Repeat byte
|14F527| db $00
|14F528| db $E5, $FF ; EXT Repeat byte
|14F52A| db $00
|14F52B| db $FF ; End of GFX 67

;===================================================================================================

GFX_68:
|14F52C| db $E7, $FF ; EXT Repeat byte
|14F52E| db $00
|14F52F| db $E5, $FF ; EXT Repeat byte
|14F531| db $00
|14F532| db $FF ; End of GFX 68

;===================================================================================================

GFX_69:
|14F533| db $E7, $FF ; EXT Repeat byte
|14F535| db $00
|14F536| db $E5, $FF ; EXT Repeat byte
|14F538| db $00
|14F539| db $FF ; End of GFX 69

;===================================================================================================

GFX_6A:
|14F53A| db $E7, $FF ; EXT Repeat byte
|14F53C| db $00
|14F53D| db $E5, $FF ; EXT Repeat byte
|14F53F| db $00
|14F540| db $FF ; End of GFX 6A

;===================================================================================================

GFX_6B:
|14F541| db $E7, $FF ; EXT Repeat byte
|14F543| db $00
|14F544| db $E5, $FF ; EXT Repeat byte
|14F546| db $00
|14F547| db $FF ; End of GFX 6B

;===================================================================================================

GFX_6C:
|14F548| db $E7, $FF ; EXT Repeat byte
|14F54A| db $00
|14F54B| db $E5, $FF ; EXT Repeat byte
|14F54D| db $00
|14F54E| db $FF ; End of GFX 6C

;===================================================================================================

GFX_6D:
|14F54F| db $E7, $FF ; EXT Repeat byte
|14F551| db $00
|14F552| db $E5, $FF ; EXT Repeat byte
|14F554| db $00
|14F555| db $FF ; End of GFX 6D

;===================================================================================================

GFX_6E:
|14F556| db $E7, $FF ; EXT Repeat byte
|14F558| db $00
|14F559| db $E5, $FF ; EXT Repeat byte
|14F55B| db $00
|14F55C| db $FF ; End of GFX 6E

;===================================================================================================

GFX_6F:
|14F55D| db $E7, $FF ; EXT Repeat byte
|14F55F| db $00
|14F560| db $E5, $FF ; EXT Repeat byte
|14F562| db $00
|14F563| db $FF ; End of GFX 6F

;===================================================================================================

GFX_70:
|14F564| db $E7, $FF ; EXT Repeat byte
|14F566| db $00
|14F567| db $E5, $FF ; EXT Repeat byte
|14F569| db $00
|14F56A| db $FF ; End of GFX 70

;===================================================================================================

GFX_7F:
|14F56B| db $E0, $2F ; EXT Raw block
|14F56D| db $07, $00, $0F, $07, $1D, $0C, $19, $08
|14F575| db $1C, $0C, $1F, $0F, $7F, $0F, $EF, $43
|14F57D| db $07, $08, $12, $16, $13, $10, $70, $BC
|14F585| db $E0, $00, $F0, $E0, $B8, $30, $98, $10
|14F58D| db $38, $30, $F8, $F0, $FE, $F0, $F7, $C2
|14F595| db $E0, $10, $48, $68, $C8, $08, $0E, $3D
|14F59D| db $83 ; Copy past
|14F59E| dw $0000
|14F5A0| db $08 ; Raw block
|14F5A1| db $1E, $0E, $1C, $0C, $1E, $0E, $5F, $0F
|14F5A9| db $BF
|14F5AA| db $84 ; Copy past
|14F5AB| dw $000D
|14F5AD| db $04 ; Raw block
|14F5AE| db $11, $13, $11, $50, $F0
|14F5B3| db $84 ; Copy past
|14F5B4| dw $0017
|14F5B6| db $13 ; Raw block
|14F5B7| db $D8, $10, $C8, $00, $18, $10, $F8, $F0
|14F5BF| db $F6, $E0, $F5, $C0, $E0, $10, $28, $38
|14F5C7| db $E8, $08, $1E, $3F
|14F5CB| db $23 ; Repeat byte
|14F5CC| db $00
|14F5CD| db $10 ; Raw block
|14F5CE| db $03, $00, $04, $03, $0B, $04, $08, $07
|14F5D6| db $0C, $07, $0F, $04, $00, $00, $03, $07
|14F5DE| db $0D
|14F5DF| db $22 ; Repeat byte
|14F5E0| db $0F
|14F5E1| db $23 ; Repeat byte
|14F5E2| db $00
|14F5E3| db $0F ; Raw block
|14F5E4| db $C0, $00, $E0, $C0, $70, $E0, $70, $C0
|14F5EC| db $F0, $60, $F0, $C0, $00, $00, $C0, $E0
|14F5F4| db $23 ; Repeat byte
|14F5F5| db $F0
|14F5F6| db $0C ; Raw block
|14F5F7| db $00, $00, $30, $00, $78, $30, $68, $30
|14F5FF| db $3C, $00, $09, $00, $01
|14F604| db $23 ; Repeat byte
|14F605| db $00
|14F606| db $E0, $7E ; EXT Raw block
|14F608| db $30, $78, $78, $34, $09, $01, $00, $10
|14F610| db $00, $28, $10, $10, $00, $08, $00, $9C
|14F618| db $08, $DD, $88, $F7, $DD, $EA, $77, $10
|14F620| db $38, $10, $08, $9C, $DD, $FF, $F7, $10
|14F628| db $13, $27, $2B, $19, $7E, $26, $FB, $4F
|14F630| db $FF, $35, $DE, $29, $5E, $49, $B6, $10
|14F638| db $23, $5A, $B3, $7F, $56, $4E, $A7, $40
|14F640| db $A0, $30, $F8, $C8, $3D, $34, $CE, $80
|14F648| db $FE, $F4, $3A, $16, $ED, $8C, $7F, $A0
|14F650| db $30, $19, $CC, $8C, $32, $E4, $FE, $21
|14F658| db $00, $78, $80, $98, $E1, $4E, $73, $62
|14F660| db $7D, $1B, $3D, $0D, $0E, $04, $0F, $00
|14F668| db $80, $E1, $73, $7D, $3D, $0E, $0F, $00
|14F670| db $00, $18, $00, $7C, $40, $70, $4C, $C3
|14F678| db $B0, $42, $A1, $04, $E3, $04, $C2, $00
|14F680| db $00, $40, $4C, $B0, $A1, $E3, $C2
|14F687| db $27 ; Repeat byte
|14F688| db $00
|14F689| db $07 ; Raw block
|14F68A| db $03, $00, $06, $02, $0F, $07, $0E, $06
|14F692| db $23 ; Repeat byte
|14F693| db $00
|14F694| db $03 ; Raw block
|14F695| db $03, $05, $08, $09
|14F699| db $23 ; Repeat byte
|14F69A| db $00
|14F69B| db $0A ; Raw block
|14F69C| db $3C, $00, $FF, $3C, $BD, $BD, $C3, $C3
|14F6A4| db $18, $00, $3C
|14F6A7| db $22 ; Repeat byte
|14F6A8| db $00
|14F6A9| db $18 ; Raw block
|14F6AA| db $3C, $C3, $42, $3C, $E7, $C3, $03, $00
|14F6B2| db $0C, $03, $1F, $0C, $0F, $07, $0F, $01
|14F6BA| db $0F, $04, $05, $03, $03, $00, $03, $0F
|14F6C2| db $1C
|14F6C3| db $22 ; Repeat byte
|14F6C4| db $0F
|14F6C5| db $E0, $7C ; EXT Raw block
|14F6C7| db $07, $03, $80, $00, $40, $80, $20, $C0
|14F6CF| db $A0, $40, $BC, $E0, $FE, $40, $D3, $AC
|14F6D7| db $EB, $D5, $80, $C0, $E0, $60, $FC, $F2
|14F6DF| db $F3, $FA, $53, $00, $BC, $20, $EF, $48
|14F6E7| db $5F, $1B, $5F, $11, $2F, $09, $1B, $01
|14F6EF| db $01, $00, $7F, $DF, $B7, $64, $6E, $36
|14F6F7| db $1A, $01, $CE, $04, $3D, $04, $F7, $12
|14F6FF| db $BA, $98, $7A, $08, $74, $10, $58, $00
|14F707| db $80, $00, $FA, $FB, $ED, $66, $F6, $EC
|14F70F| db $D8, $80, $F3, $60, $FC, $00, $6F, $08
|14F717| db $AE, $08, $DF, $50, $79, $20, $32, $00
|14F71F| db $01, $00, $9F, $FF, $77, $F7, $AF, $59
|14F727| db $33, $01, $CF, $04, $3A, $08, $ED, $20
|14F72F| db $F3, $D2, $7E, $4C, $6C, $40, $C0, $80
|14F737| db $80, $00, $FB, $F6, $DF, $2D, $B2, $AC
|14F73F| db $40, $80, $07, $03, $03
|14F744| db $22 ; Repeat byte
|14F745| db $00
|14F746| db $00 ; Raw block
|14F747| db $03
|14F748| db $44 ; Repeat word
|14F749| dw $0F00
|14F74B| db $00 ; Raw block
|14F74C| db $03
|14F74D| db $22 ; Repeat byte
|14F74E| db $00
|14F74F| db $00 ; Raw block
|14F750| db $07
|14F751| db $83 ; Copy past
|14F752| dw $015E
|14F754| db $05 ; Raw block
|14F755| db $0F, $03, $00, $E0, $00, $C0
|14F75B| db $22 ; Repeat byte
|14F75C| db $00
|14F75D| db $00 ; Raw block
|14F75E| db $C0
|14F75F| db $44 ; Repeat word
|14F760| dw $F000
|14F762| db $00 ; Raw block
|14F763| db $C0
|14F764| db $22 ; Repeat byte
|14F765| db $00
|14F766| db $06 ; Raw block
|14F767| db $E0, $C0, $00, $C0, $F0, $F0, $C0
|14F76E| db $22 ; Repeat byte
|14F76F| db $00
|14F770| db $19 ; Raw block
|14F771| db $63, $00, $F7, $43, $63, $01, $01, $00
|14F779| db $07, $01, $1C, $07, $06, $03, $00, $63
|14F781| db $D7, $63, $01, $07, $1F, $07, $DD, $62
|14F789| db $BF, $C0
|14F78B| db $43 ; Repeat word
|14F78C| dw $807F
|14F78E| db $83 ; Copy past
|14F78F| dw $022A
|14F791| db $43 ; Repeat word
|14F792| dw $00FF
|14F794| db $E0, $80 ; EXT Raw block
|14F796| db $E2, $C0, $80, $80, $C0, $80, $00, $00
|14F79E| db $09, $F6, $AF, $D9, $A5, $DF, $92, $6F
|14F7A6| db $0F, $77, $46, $7F, $11, $1E, $08, $07
|14F7AE| db $E7, $C9, $DF, $2F, $27, $47, $10, $06
|14F7B6| db $C9, $3E, $A9, $DF, $B7, $CE, $6A, $94
|14F7BE| db $92, $EE, $E4, $1A, $B0, $7C, $20, $E0
|14F7C6| db $BC, $DD, $CE, $80, $86, $18, $78, $20
|14F7CE| db $18, $06, $16, $18, $0A, $0C, $06, $04
|14F7D6| db $20, $02, $00, $20, $04, $78, $03, $00
|14F7DE| db $06, $18, $0C, $04, $02, $20, $78, $00
|14F7E6| db $13, $C1, $12, $80, $10, $80, $20, $10
|14F7EE| db $22, $10, $40, $38, $14, $60, $E0, $00
|14F7F6| db $C1, $80, $80, $10, $10, $38, $60, $00
|14F7FE| db $1A, $0A, $1D, $0D, $3A, $1A, $3D, $1D
|14F806| db $3E, $1E, $3F, $17, $3F, $0B, $1F, $05
|14F80E| db $15, $12, $25, $22, $21, $28, $34, $1A
|14F816| db $18
|14F817| db $22 ; Repeat byte
|14F818| db $00
|14F819| db $07 ; Raw block
|14F81A| db $C3, $C3, $5A, $5A, $A5, $A5, $DB, $DB
|14F822| db $22 ; Repeat byte
|14F823| db $FF
|14F824| db $08 ; Raw block
|14F825| db $42, $E7, $FF, $3C, $A5, $5A, $24, $00
|14F82D| db $BD
|14F82E| db $29 ; Repeat byte
|14F82F| db $00
|14F830| db $00 ; Raw block
|14F831| db $01
|14F832| db $29 ; Repeat byte
|14F833| db $00
|14F834| db $0F ; Raw block
|14F835| db $01, $00, $00, $FB, $15, $3F, $0A, $79
|14F83D| db $18, $DB, $28, $B9, $70, $76, $E0, $E1
|14F845| db $22 ; Repeat byte
|14F846| db $00
|14F847| db $0F ; Raw block
|14F848| db $FA, $35, $67, $B4, $FE, $F7, $E1, $00
|14F850| db $03, $00, $07, $03, $0C, $04, $0B, $00
|14F858| db $83 ; Copy past
|14F859| dw $0008
|14F85B| db $0B ; Raw block
|14F85C| db $1F, $07, $2F, $01, $03, $04, $0B, $0C
|14F864| db $13, $10, $18, $3E
|14F868| db $83 ; Copy past
|14F869| dw $0018
|14F86B| db $13 ; Raw block
|14F86C| db $78, $70, $3C, $38, $7C, $78, $FC, $F0
|14F874| db $F8, $F0, $F4, $C0, $E0, $10, $88, $C4
|14F87C| db $84, $0C, $08, $3C
|14F880| db $83 ; Copy past
|14F881| dw $0300
|14F883| db $05 ; Raw block
|14F884| db $0E, $06, $0D, $04, $1E, $0E
|14F88A| db $87 ; Copy past
|14F88B| dw $030A
|14F88D| db $02 ; Raw block
|14F88E| db $09, $0A, $11
|14F891| db $86 ; Copy past
|14F892| dw $0315
|14F894| db $05 ; Raw block
|14F895| db $38, $30, $9C, $18, $3C, $38
|14F89B| db $87 ; Copy past
|14F89C| dw $0322
|14F89E| db $E0, $4F ; EXT Raw block
|14F8A0| db $C8, $64, $C4, $0C, $08, $3C, $61, $00
|14F8A8| db $93, $61, $6E, $13, $56, $2B, $6D, $35
|14F8B0| db $9E, $68, $7F, $09, $9F, $61, $61, $F3
|14F8B8| db $7C, $5C, $6A, $F7, $72, $98, $86, $00
|14F8C0| db $C9, $86, $F6, $C8, $6A, $D4, $B6, $AC
|14F8C8| db $79, $16, $7E, $10, $F9, $86, $86, $CF
|14F8D0| db $BE, $3A, $56, $EF, $CE, $19, $00, $00
|14F8D8| db $61, $00, $92, $61, $6F, $13, $7F, $21
|14F8E0| db $5F, $28, $9F, $67, $BB, $4C, $00, $61
|14F8E8| db $F2, $6C, $7A, $57, $FF, $BA, $00, $00
|14F8F0| db $85 ; Copy past
|14F8F1| dw $0378
|14F8F3| db $E0, $34 ; EXT Raw block
|14F8F5| db $7E, $04, $FA, $14, $F9, $E6, $FD, $32
|14F8FD| db $00, $86, $CF, $36, $DE, $EA, $FF, $7D
|14F905| db $06, $20, $3C, $57, $68, $3E, $66, $BB
|14F90D| db $23, $DD, $19, $76, $75, $6E, $6C, $1E
|14F915| db $00, $17, $38, $B2, $5D, $12, $66, $0C
|14F91D| db $00, $00, $60, $00, $9A, $60, $A7, $58
|14F925| db $87, $78, $9B, $60, $60
|14F92A| db $23 ; Repeat byte
|14F92B| db $00
|14F92C| db $05 ; Raw block
|14F92D| db $60, $9A, $86, $84, $9B, $60
|14F933| db $22 ; Repeat byte
|14F934| db $00
|14F935| db $03 ; Raw block
|14F936| db $E7, $18, $5A, $24
|14F93A| db $43 ; Repeat word
|14F93B| dw $42BD
|14F93D| db $02 ; Raw block
|14F93E| db $42, $3C, $3C
|14F941| db $22 ; Repeat byte
|14F942| db $00
|14F943| db $E0, $2C ; EXT Raw block
|14F945| db $3C, $24, $5A, $BD, $BD, $42, $3C, $00
|14F94D| db $60, $00, $50, $20, $5E, $20, $5F, $20
|14F955| db $4E, $30, $4C, $30, $50, $20, $60, $00
|14F95D| db $60, $52, $4D, $49, $4A, $4C, $50, $60
|14F965| db $1F, $02, $0F, $04, $0E, $04, $06, $00
|14F96D| db $0B, $02, $07, $00, $01
|14F972| db $22 ; Repeat byte
|14F973| db $00
|14F974| db $14 ; Raw block
|14F975| db $1D, $0B, $0B, $07, $0D, $07, $01, $00
|14F97D| db $C3, $00, $38, $00, $FF, $00, $E7, $18
|14F985| db $C3, $BD, $66, $5A, $DB
|14F98A| db $22 ; Repeat byte
|14F98B| db $00
|14F98C| db $06 ; Raw block
|14F98D| db $FF, $FF, $99, $A5, $42, $A5, $DB
|14F994| db $84 ; Copy past
|14F995| dw $0063
|14F997| db $00 ; Raw block
|14F998| db $02
|14F999| db $43 ; Repeat word
|14F99A| dw $0301
|14F99C| db $02 ; Raw block
|14F99D| db $00, $07, $00
|14F9A0| db $84 ; Copy past
|14F9A1| dw $015A
|14F9A3| db $00 ; Raw block
|14F9A4| db $07
|14F9A5| db $22 ; Repeat byte
|14F9A6| db $03
|14F9A7| db $E0, $22 ; EXT Raw block
|14F9A9| db $07, $0F, $07, $C0, $00, $A0, $40, $50
|14F9B1| db $A0, $90, $E0, $F0, $E0, $FC, $20, $FE
|14F9B9| db $00, $D3, $AC, $C0, $60, $B0, $F0, $F0
|14F9C1| db $FC, $F2, $F3, $11, $00, $3A, $04, $5B
|14F9C9| db $12, $3B, $02
|14F9CC| db $43 ; Repeat word
|14F9CD| dw $0416
|14F9CF| db $00 ; Raw block
|14F9D0| db $0D
|14F9D1| db $22 ; Repeat byte
|14F9D2| db $00
|14F9D3| db $E0, $2C ; EXT Raw block
|14F9D5| db $1F, $3B, $6D, $3D, $1B, $1B, $0D, $00
|14F9DD| db $CC, $00, $3A, $00, $EE, $24, $76, $50
|14F9E5| db $F4, $90, $DA, $88, $6C, $40, $C0, $00
|14F9ED| db $FC, $FE, $DA, $AE, $6C, $56, $AC, $C0
|14F9F5| db $71, $00, $EA, $44, $FF, $36, $77, $05
|14F9FD| db $17, $04, $1B, $02, $06
|14FA02| db $22 ; Repeat byte
|14FA03| db $00
|14FA04| db $14 ; Raw block
|14FA05| db $7F, $BB, $C9, $7A, $1B, $1D, $06, $00
|14FA0D| db $CE, $00, $3D, $04, $F7, $22, $EE, $84
|14FA15| db $9C, $90, $F0, $60, $60
|14FA1A| db $22 ; Repeat byte
|14FA1B| db $00
|14FA1C| db $E0, $39 ; EXT Raw block
|14FA1E| db $FE, $FB, $DD, $7A, $6C, $90, $60, $00
|14FA26| db $7F, $18, $2F, $1B, $2C, $1B, $17, $08
|14FA2E| db $3C, $03, $3F, $0C, $2F, $0B, $03, $00
|14FA36| db $7F, $2B, $28, $13, $1C, $23, $00, $00
|14FA3E| db $FE, $18, $FC, $D8, $34, $D8, $E8, $10
|14FA46| db $38, $C0, $DC, $10, $32, $00, $C4, $00
|14FA4E| db $FE, $DC, $14, $C8, $38, $E4, $C0, $00
|14FA56| db $67, $18
|14FA58| db $43 ; Repeat word
|14FA59| dw $102F
|14FA5B| db $13 ; Raw block
|14FA5C| db $27, $18, $34, $0B, $3C, $03, $4F, $08
|14FA64| db $27, $00, $67, $2F, $2F, $23, $10, $2C
|14FA6C| db $03, $04, $FE, $18
|14FA70| db $43 ; Repeat word
|14FA71| dw $08FC
|14FA73| db $E0, $29 ; EXT Raw block
|14FA75| db $E4, $18, $2C, $D0, $3C, $C0, $F1, $10
|14FA7D| db $C2, $00, $FE, $FC, $FC, $C4, $08, $34
|14FA85| db $C0, $00, $30, $00, $6C, $20, $C6, $44
|14FA8D| db $EE, $6C, $7D, $38, $7D, $34, $3F, $0E
|14FA95| db $0E, $00, $30, $5C, $BA, $92, $47, $4B
|14FA9D| db $31, $0E
|14FA9F| db $43 ; Repeat word
|14FAA0| dw $00FF
|14FAA2| db $03 ; Raw block
|14FAA3| db $66, $18, $4A, $34
|14FAA7| db $43 ; Repeat word
|14FAA8| dw $6699
|14FAAA| db $83 ; Copy past
|14FAAB| dw $03FA
|14FAAD| db $08 ; Raw block
|14FAAE| db $18, $BD, $66, $42, $99, $99, $42, $3C
|14FAB6| db $00
|14FAB7| db $84 ; Copy past
|14FAB8| dw $043B
|14FABA| db $01 ; Raw block
|14FABB| db $4A, $34
|14FABD| db $43 ; Repeat word
|14FABE| dw $42BD
|14FAC0| db $84 ; Copy past
|14FAC1| dw $03FA
|14FAC3| db $02 ; Raw block
|14FAC4| db $18, $A5, $42
|14FAC7| db $84 ; Copy past
|14FAC8| dw $0403
|14FACA| db $0B ; Raw block
|14FACB| db $00, $60, $00, $94, $60, $AE, $50, $8E
|14FAD3| db $70, $96, $60, $60
|14FAD7| db $23 ; Repeat byte
|14FAD8| db $00
|14FAD9| db $13 ; Raw block
|14FADA| db $60, $94, $8C, $88, $96, $60, $00, $30
|14FAE2| db $00, $58, $30, $78, $30, $30, $00, $04
|14FAEA| db $00, $0A, $04, $44
|14FAEE| db $22 ; Repeat byte
|14FAEF| db $00
|14FAF0| db $E0, $20 ; EXT Raw block
|14FAF2| db $30, $78, $78, $30, $04, $0E, $44, $00
|14FAFA| db $3C, $00, $62, $20, $F7, $76, $FF, $18
|14FB02| db $66, $18, $C2, $7C, $FF, $66, $7E, $1C
|14FB0A| db $3C, $5E, $89, $81, $3C, $BE, $BD, $7A
|14FB12| db $03
|14FB13| db $22 ; Repeat byte
|14FB14| db $00
|14FB15| db $08 ; Raw block
|14FB16| db $01, $00, $02, $01, $07, $01, $0B, $07
|14FB1E| db $07
|14FB1F| db $22 ; Repeat byte
|14FB20| db $00
|14FB21| db $02 ; Raw block
|14FB22| db $03, $00, $01
|14FB25| db $83 ; Copy past
|14FB26| dw $0464
|14FB28| db $18 ; Raw block
|14FB29| db $00, $CB, $75, $FB, $35, $FF, $0A, $39
|14FB31| db $D8, $FB, $58, $F9, $00, $06, $00, $01
|14FB39| db $00, $FA, $FA, $75, $E7, $E4, $FE, $07
|14FB41| db $01
|14FB42| db $FF ; End of GFX 7F

;===================================================================================================

GFX_80:
|14FB43| db $E0, $2F ; EXT Raw block
|14FB45| db $00, $00, $44, $00, $CF, $00, $DF, $08
|14FB4D| db $FE, $05, $7E, $0F, $3F, $13, $7F, $21
|14FB55| db $00, $00, $09, $1D, $0F, $1F, $1F, $77
|14FB5D| db $00, $00, $22, $00, $F3, $00, $FB, $10
|14FB65| db $7F, $A0, $9E, $70, $3C, $C8, $7E, $84
|14FB6D| db $00, $00, $90, $B8, $F0, $78, $F8, $EE
|14FB75| db $23 ; Repeat byte
|14FB76| db $00
|14FB77| db $E0, $2B ; EXT Raw block
|14FB79| db $01, $00, $03, $01, $06, $03, $06, $01
|14FB81| db $0C, $07, $3F, $0C, $00, $00, $01, $03
|14FB89| db $07, $05, $0F, $3F, $00, $00, $40, $00
|14FB91| db $E8, $00, $98, $60, $7C, $80, $78, $C4
|14FB99| db $F0, $8C, $E4, $58, $00, $00, $80, $F0
|14FBA1| db $F0, $E4, $CC, $FC
|14FBA5| db $83 ; Copy past
|14FBA6| dw $0000
|14FBA8| db $03 ; Raw block
|14FBA9| db $C3, $04, $CF, $03
|14FBAD| db $43 ; Repeat word
|14FBAE| dw $07FE
|14FBB0| db $0B ; Raw block
|14FBB1| db $7F, $0B, $7F, $0F, $00, $00, $07, $0F
|14FBB9| db $1F, $0F, $1B, $7F
|14FBBD| db $83 ; Copy past
|14FBBE| dw $0018
|14FBC0| db $E0, $2F ; EXT Raw block
|14FBC2| db $C3, $20, $33, $C0, $5F, $A0, $FF, $00
|14FBCA| db $5E, $B0, $BE, $F0, $00, $00, $E0, $F0
|14FBD2| db $B8, $10, $B8, $FE, $00, $00, $07, $00
|14FBDA| db $1F, $05, $3F, $1D, $37, $16, $6F, $2A
|14FBE2| db $4F, $0C, $6F, $29, $00, $07, $1A, $22
|14FBEA| db $29, $55, $73, $57, $7E, $00, $FF, $42
|14FBF2| db $44 ; Repeat word
|14FBF3| dw $81FF
|14FBF5| db $03 ; Raw block
|14FBF6| db $C3, $FF, $7E, $FF
|14FBFA| db $45 ; Repeat word
|14FBFB| dw $7EBD
|14FBFD| db $04 ; Raw block
|14FBFE| db $7E, $3C, $81, $C3, $C3
|14FC03| db $23 ; Repeat byte
|14FC04| db $00
|14FC05| db $87 ; Copy past
|14FC06| dw $0092
|14FC08| db $04 ; Raw block
|14FC09| db $2F, $0A, $4F, $0C, $00
|14FC0E| db $84 ; Copy past
|14FC0F| dw $00A0
|14FC11| db $03 ; Raw block
|14FC12| db $35, $73, $00, $00
|14FC16| db $83 ; Copy past
|14FC17| dw $00A8
|14FC19| db $44 ; Repeat word
|14FC1A| dw $81FF
|14FC1C| db $84 ; Copy past
|14FC1D| dw $00B1
|14FC1F| db $00 ; Raw block
|14FC20| db $00
|14FC21| db $86 ; Copy past
|14FC22| dw $00B8
|14FC24| db $23 ; Repeat byte
|14FC25| db $00
|14FC26| db $13 ; Raw block
|14FC27| db $E0, $00, $F8, $A0, $FC, $B8, $EC, $68
|14FC2F| db $F4, $50, $F2, $30, $00, $00, $E0, $58
|14FC37| db $44, $94, $AC, $CE
|14FC3B| db $23 ; Repeat byte
|14FC3C| db $00
|14FC3D| db $83 ; Copy past
|14FC3E| dw $0034
|14FC40| db $08 ; Raw block
|14FC41| db $0F, $01, $1F, $0C, $33, $12, $37, $16
|14FC49| db $00
|14FC4A| db $62 ; Increment fill
|14FC4B| db $00
|14FC4C| db $03 ; Raw block
|14FC4D| db $0E, $13, $2D, $29
|14FC51| db $85 ; Copy past
|14FC52| dw $00D8
|14FC54| db $44 ; Repeat word
|14FC55| dw $81FF
|14FC57| db $8C ; Copy past
|14FC58| dw $00E3
|14FC5A| db $E4, $21 ; EXT Repeat byte
|14FC5C| db $00
|14FC5D| db $05 ; Raw block
|14FC5E| db $18, $00, $2F, $08, $3B, $16
|14FC64| db $24 ; Repeat byte
|14FC65| db $00
|14FC66| db $02 ; Raw block
|14FC67| db $18, $37, $2F
|14FC6A| db $29 ; Repeat byte
|14FC6B| db $00
|14FC6C| db $05 ; Raw block
|14FC6D| db $18, $00, $E4, $18, $FC, $C8
|14FC73| db $24 ; Repeat byte
|14FC74| db $00
|14FC75| db $E0, $36 ; EXT Raw block
|14FC77| db $18, $FC, $3C, $7F, $01, $7F, $20, $3F
|14FC7F| db $11, $1E, $0E, $1C, $0C, $1E, $0C, $0F
|14FC87| db $07, $07, $00, $63, $51, $2E, $11, $13
|14FC8F| db $13, $08, $07, $7E, $80, $F6, $04, $EC
|14FC97| db $88, $68, $60, $18, $10, $58, $10, $F0
|14FC9F| db $E0, $E0, $00, $CE, $9A, $74, $98, $E8
|14FCA7| db $E8, $10, $E0, $5F, $12, $8F, $08
|14FCAE| db $43 ; Repeat word
|14FCAF| dw $44E7
|14FCB1| db $E0, $33 ; EXT Raw block
|14FCB3| db $E1, $61, $7B, $3B, $3F, $0F, $3F, $00
|14FCBB| db $6C, $F0, $B8, $BB, $9E, $44, $30, $0F
|14FCC3| db $FC, $20, $FE, $0C, $CE, $0C, $9E, $1C
|14FCCB| db $9C, $98, $FC, $38, $F8, $80, $C0, $00
|14FCD3| db $7C, $72, $F2, $E2, $64, $C4, $78, $C0
|14FCDB| db $3F, $13, $7F, $3C, $7B, $3B, $7C, $3C
|14FCE3| db $7E, $2E, $3F, $0F
|14FCE7| db $83 ; Copy past
|14FCE8| dw $018C
|14FCEA| db $13 ; Raw block
|14FCEB| db $2F, $43, $44, $43, $51, $30, $08, $07
|14FCF3| db $FC, $C8, $EE, $2C, $CE, $CC, $0E, $0C
|14FCFB| db $3E, $34, $9C, $90
|14FCFF| db $83 ; Copy past
|14FD00| dw $01A4
|14FD02| db $E0, $2F ; EXT Raw block
|14FD04| db $F4, $D2, $32, $F2, $CA, $6C, $10, $E0
|14FD0C| db $7F, $31, $35, $0A, $1B, $05, $07, $01
|14FD14| db $03, $00, $03, $01, $02, $00, $01, $00
|14FD1C| db $4B, $3B, $1E, $06, $03, $02, $03, $01
|14FD24| db $BD, $C3, $C3, $FF, $E7, $3C, $7E, $42
|14FD2C| db $FF, $E7, $E7, $00, $E7, $C3, $E7, $00
|14FD34| db $22 ; Repeat byte
|14FD35| db $FF
|14FD36| db $1E ; Raw block
|14FD37| db $BD, $18, $E7, $24, $E7, $4F, $09, $6F
|14FD3F| db $29, $3F, $10, $1D, $02, $17, $08, $0D
|14FD47| db $01, $07, $00, $03, $00, $77, $57, $2B
|14FD4F| db $13, $1F, $0E, $07, $03, $7E, $BD
|14FD56| db $85 ; Copy past
|14FD57| dw $0228
|14FD59| db $08 ; Raw block
|14FD5A| db $FF, $43, $FF, $A3, $E3, $40, $E0, $00
|14FD62| db $C3
|14FD63| db $22 ; Repeat byte
|14FD64| db $FF
|14FD65| db $10 ; Raw block
|14FD66| db $BC, $5C, $A3, $E0, $F2, $B0, $F6, $94
|14FD6E| db $FC, $08, $B8, $40, $C8, $B0, $F0, $00
|14FD76| db $80
|14FD77| db $22 ; Repeat byte
|14FD78| db $00
|14FD79| db $1F ; Raw block
|14FD7A| db $CE, $EA, $D4, $C8, $78, $F0, $80, $00
|14FD82| db $6F, $2A, $6F, $2D, $2F, $0C, $27, $04
|14FD8A| db $1F, $01, $3B, $04, $3B, $05, $1F, $00
|14FD92| db $55, $53, $33, $3B, $1E, $27, $26, $1F
|14FD9A| db $88 ; Copy past
|14FD9B| dw $0258
|14FD9D| db $07 ; Raw block
|14FD9E| db $81, $FF, $60, $E0, $80, $C0, $00, $C3
|14FDA6| db $22 ; Repeat byte
|14FDA7| db $FF
|14FDA8| db $03 ; Raw block
|14FDA9| db $7E, $9F, $60, $C0
|14FDAD| db $37 ; Repeat byte
|14FDAE| db $00
|14FDAF| db $17 ; Raw block
|14FDB0| db $37, $0D, $3F, $0D, $1C, $00, $1E, $00
|14FDB8| db $1F, $01, $1F, $00, $09, $01, $07, $00
|14FDC0| db $3E, $3E, $1F, $13, $12, $1F, $0E, $07
|14FDC8| db $43 ; Repeat word
|14FDC9| dw $687C
|14FDCB| db $13 ; Raw block
|14FDCC| db $F6, $DC, $E6, $BC, $FC, $58, $F8, $10
|14FDD4| db $F0, $C0, $E0, $00, $9C, $9C, $3E, $7E
|14FDDC| db $BC, $F8, $30, $E0
|14FDE0| db $29 ; Repeat byte
|14FDE1| db $00
|14FDE2| db $85 ; Copy past
|14FDE3| dw $015A
|14FDE5| db $24 ; Repeat byte
|14FDE6| db $00
|14FDE7| db $02 ; Raw block
|14FDE8| db $18, $37, $2F
|14FDEB| db $29 ; Repeat byte
|14FDEC| db $00
|14FDED| db $85 ; Copy past
|14FDEE| dw $0172
|14FDF0| db $24 ; Repeat byte
|14FDF1| db $00
|14FDF2| db $02 ; Raw block
|14FDF3| db $18, $FC, $3C
|14FDF6| db $29 ; Repeat byte
|14FDF7| db $00
|14FDF8| db $05 ; Raw block
|14FDF9| db $10, $00, $2F, $10, $39, $01
|14FDFF| db $24 ; Repeat byte
|14FE00| db $00
|14FE01| db $02 ; Raw block
|14FE02| db $10, $3F, $3E
|14FE05| db $29 ; Repeat byte
|14FE06| db $00
|14FE07| db $05 ; Raw block
|14FE08| db $70, $00, $E8, $30, $F8, $B0
|14FE0E| db $24 ; Repeat byte
|14FE0F| db $00
|14FE10| db $02 ; Raw block
|14FE11| db $70, $F8, $78
|14FE14| db $23 ; Repeat byte
|14FE15| db $00
|14FE16| db $13 ; Raw block
|14FE17| db $0C, $00, $1E, $0C, $37, $16, $6F, $29
|14FE1F| db $4F, $0A, $6F, $2C, $00, $00, $0C, $12
|14FE27| db $29, $57, $75, $53
|14FE2B| db $27 ; Repeat byte
|14FE2C| db $00
|14FE2D| db $01 ; Raw block
|14FE2E| db $7E, $00
|14FE30| db $83 ; Copy past
|14FE31| dw $00B2
|14FE33| db $01 ; Raw block
|14FE34| db $BD, $C3
|14FE36| db $23 ; Repeat byte
|14FE37| db $00
|14FE38| db $03 ; Raw block
|14FE39| db $7E, $81, $C3, $FF
|14FE3D| db $27 ; Repeat byte
|14FE3E| db $00
|14FE3F| db $07 ; Raw block
|14FE40| db $1E, $00, $37, $16, $6F, $2D, $4F, $08
|14FE48| db $23 ; Repeat byte
|14FE49| db $00
|14FE4A| db $03 ; Raw block
|14FE4B| db $1E, $29, $53, $77
|14FE4F| db $29 ; Repeat byte
|14FE50| db $00
|14FE51| db $85 ; Copy past
|14FE52| dw $0380
|14FE54| db $24 ; Repeat byte
|14FE55| db $00
|14FE56| db $02 ; Raw block
|14FE57| db $7E, $81, $C3
|14FE5A| db $27 ; Repeat byte
|14FE5B| db $00
|14FE5C| db $07 ; Raw block
|14FE5D| db $78, $00, $EC, $68, $F6, $B4, $F2, $10
|14FE65| db $23 ; Repeat byte
|14FE66| db $00
|14FE67| db $1B ; Raw block
|14FE68| db $78, $94, $CA, $EE, $38, $00, $3C, $00
|14FE70| db $7C, $38, $5E, $18, $5F, $1E, $2F, $0E
|14FE78| db $2F, $0D, $1F, $01, $20, $3C, $44, $66
|14FE80| db $61, $31, $33, $1F
|14FE84| db $27 ; Repeat byte
|14FE85| db $00
|14FE86| db $07 ; Raw block
|14FE87| db $FE, $00, $DF, $7E, $8D, $FF, $81, $FF
|14FE8F| db $23 ; Repeat byte
|14FE90| db $00
|14FE91| db $00 ; Raw block
|14FE92| db $FE
|14FE93| db $22 ; Repeat byte
|14FE94| db $FF
|14FE95| db $83 ; Copy past
|14FE96| dw $0338
|14FE98| db $00 ; Raw block
|14FE99| db $7C
|14FE9A| db $4A ; Repeat word
|14FE9B| dw $FE00
|14FE9D| db $02 ; Raw block
|14FE9E| db $00, $10, $6C
|14FEA1| db $24 ; Repeat byte
|14FEA2| db $AA
|14FEA3| db $02 ; Raw block
|14FEA4| db $00, $00, $1F
|14FEA7| db $44 ; Repeat word
|14FEA8| dw $3F00
|14FEAA| db $00 ; Raw block
|14FEAB| db $7F
|14FEAC| db $44 ; Repeat word
|14FEAD| dw $3F00
|14FEAF| db $09 ; Raw block
|14FEB0| db $1F, $00, $00, $1F, $20, $3F, $40, $3F
|14FEB8| db $20, $1F
|14FEBA| db $37 ; Repeat byte
|14FEBB| db $00
|14FEBC| db $17 ; Raw block
|14FEBD| db $38, $00, $5C, $00, $9E, $00, $4C, $00
|14FEC5| db $28, $00, $6C, $00, $EE, $00, $7C, $00
|14FECD| db $38, $64, $E2, $74, $38, $54, $BA, $6C
|14FED5| db $83 ; Copy past
|14FED6| dw $0018
|14FED8| db $13 ; Raw block
|14FED9| db $77, $00, $FF, $00, $E1, $00, $8F, $00
|14FEE1| db $57, $00, $22, $00, $00, $22, $55, $8B
|14FEE9| db $9E, $FB, $75, $22
|14FEED| db $8A ; Copy past
|14FEEE| dw $02D0
|14FEF0| db $24 ; Repeat byte
|14FEF1| db $00
|14FEF2| db $85 ; Copy past
|14FEF3| dw $02E0
|14FEF5| db $E0, $3E ; EXT Raw block
|14FEF7| db $00, $00, $7C, $68, $7E, $6C, $FE, $C4
|14FEFF| db $FE, $98, $CE, $00, $FE, $0C, $9E, $18
|14FF07| db $7C, $00, $9C, $9E, $3E, $66, $FE, $F2
|14FF0F| db $E6, $7C, $63, $03, $EF, $0F, $FF, $18
|14FF17| db $7F, $04, $3D, $11, $7F, $0D, $4F, $0E
|14FF1F| db $3E, $00, $7C, $B0, $A7, $7B, $3E, $72
|14FF27| db $71, $3E, $F8, $B0, $CC, $78, $DC, $F8
|14FF2F| db $BE, $E4, $FE, $5C, $FC, $80, $80
|14FF36| db $22 ; Repeat byte
|14FF37| db $00
|14FF38| db $1C ; Raw block
|14FF39| db $78, $FC, $FC, $FA, $E2, $7C, $80, $00
|14FF41| db $3F, $19, $1F, $01, $07, $00, $07, $03
|14FF49| db $03, $01, $03, $00, $02, $00, $03, $00
|14FF51| db $27, $1F, $07, $04, $02
|14FF56| db $22 ; Repeat byte
|14FF57| db $03
|14FF58| db $03 ; Raw block
|14FF59| db $81, $7E, $C3, $FF
|14FF5D| db $84 ; Copy past
|14FF5E| dw $00B2
|14FF60| db $06 ; Raw block
|14FF61| db $42, $B0, $A0, $E0, $C0, $E0, $00
|14FF68| db $22 ; Repeat byte
|14FF69| db $FF
|14FF6A| db $0D ; Raw block
|14FF6B| db $7E, $BC, $50, $20, $E0, $47, $05, $6F
|14FF73| db $2D, $3F, $1A, $1F, $01, $03
|14FF79| db $26 ; Repeat byte
|14FF7A| db $00
|14FF7B| db $04 ; Raw block
|14FF7C| db $7B, $53, $25, $1E, $03
|14FF81| db $22 ; Repeat byte
|14FF82| db $00
|14FF83| db $0F ; Raw block
|14FF84| db $BD, $C3, $81, $FF, $C3, $FE, $FF, $7D
|14FF8C| db $FF, $3B, $7E, $00, $07, $03, $07, $00
|14FF94| db $22 ; Repeat byte
|14FF95| db $FF
|14FF96| db $E0, $25 ; EXT Raw block
|14FF98| db $FE, $FC, $7F, $04, $07, $E2, $A0, $F6
|14FFA0| db $B4, $FC, $18, $F8, $80, $60, $40, $E0
|14FFA8| db $C0, $20, $00, $C0, $00, $DE, $CA, $E4
|14FFB0| db $78, $A0, $20, $E0, $C0, $07, $00, $07
|14FFB8| db $02, $07, $01, $03, $01, $01
|14FFBE| db $26 ; Repeat byte
|14FFBF| db $00
|14FFC0| db $04 ; Raw block
|14FFC1| db $07, $05, $06, $02, $01
|14FFC6| db $22 ; Repeat byte
|14FFC7| db $00
|14FFC8| db $0B ; Raw block
|14FFC9| db $C1, $FE, $E3, $FF, $FF, $7F, $FF, $BE
|14FFD1| db $FE, $18, $1D, $05
|14FFD5| db $83 ; Copy past
|14FFD6| dw $0534
|14FFD8| db $22 ; Repeat byte
|14FFD9| db $FF
|14FFDA| db $08 ; Raw block
|14FFDB| db $7F, $FF, $1A, $04, $07, $BA, $44, $54
|14FFE3| db $28
|14FFE4| db $43 ; Repeat word
|14FFE5| dw $1028
|14FFE7| db $1C ; Raw block
|14FFE8| db $6C, $10, $54, $28, $44, $38, $38, $00
|14FFF0| db $C6, $6C, $38, $38, $7C, $54, $44, $38
|14FFF8| db $00, $00, $80, $00, $4E, $80, $B9, $46

;===================================================================================================

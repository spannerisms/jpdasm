org $128000

;===================================================================================================

|128000| db $07, $D7, $0F, $22 ; Repeat byte
|128004| db $FF
|128005| db $1F ; Raw block
|128006| db $FE, $FC, $F8, $F0, $E0, $AE, $1E, $5D
|12800E| db $3C, $B9, $79, $73, $F3, $E7, $E7, $CF
|128016| db $CF, $9F, $9F, $3F, $3F, $C1, $83, $06
|12801E| db $0C, $18, $30, $60, $C0, $FF, $00, $FF
|128026| db $22 ; Repeat byte
|128027| db $00
|128028| db $09 ; Raw block
|128029| db $FF, $00, $73, $90, $E7, $20, $CD, $42
|128031| db $9C, $0C
|128033| db $22 ; Repeat byte
|128034| db $FF
|128035| db $07 ; Raw block
|128036| db $00, $0C, $18, $30, $63, $FF, $00, $FF
|12803E| db $22 ; Repeat byte
|12803F| db $00
|128040| db $09 ; Raw block
|128041| db $FF, $00, $76, $89, $BF, $C9, $DB, $6D
|128049| db $92, $92
|12804B| db $22 ; Repeat byte
|12804C| db $FF
|12804D| db $23 ; Repeat byte
|12804E| db $00
|12804F| db $E0, $22 ; EXT Raw block
|128051| db $6D, $D7, $08, $DE, $02, $DC, $04, $D9
|128059| db $08, $D3, $01, $D7, $01, $DC, $02, $DE
|128061| db $00, $E0, $E1, $E3, $E6, $EC, $E8, $E1
|128069| db $E1, $D7, $0D, $DA, $06, $DC, $02, $DF
|128071| db $01, $D6, $0E
|128074| db $85 ; Copy past
|128075| dw $007C
|128077| db $0A ; Raw block
|128078| db $E0, $E1, $E1, $E0, $E1, $E1, $E0, $E1
|128080| db $FF, $00, $FF
|128083| db $22 ; Repeat byte
|128084| db $00
|128085| db $09 ; Raw block
|128086| db $FF, $00, $00, $FF, $DC, $FF, $EF, $FE
|12808E| db $E7, $FE
|128090| db $22 ; Repeat byte
|128091| db $FF
|128092| db $24 ; Repeat byte
|128093| db $00
|128094| db $02 ; Raw block
|128095| db $FF, $00, $FF
|128098| db $22 ; Repeat byte
|128099| db $00
|12809A| db $83 ; Copy past
|12809B| dw $0096
|12809D| db $05 ; Raw block
|12809E| db $EF, $FF, $EB, $F7, $DC, $63
|1280A4| db $22 ; Repeat byte
|1280A5| db $FF
|1280A6| db $24 ; Repeat byte
|1280A7| db $00
|1280A8| db $02 ; Raw block
|1280A9| db $FF, $00, $FF
|1280AC| db $22 ; Repeat byte
|1280AD| db $00
|1280AE| db $09 ; Raw block
|1280AF| db $FF, $00, $82, $7D, $85, $02, $80, $02
|1280B7| db $FF, $00
|1280B9| db $22 ; Repeat byte
|1280BA| db $FF
|1280BB| db $03 ; Raw block
|1280BC| db $00, $00, $7D, $7D
|1280C0| db $43 ; Repeat word
|1280C1| dw $FF00
|1280C3| db $22 ; Repeat byte
|1280C4| db $00
|1280C5| db $09 ; Raw block
|1280C6| db $FF, $00, $08, $F7, $14, $08, $00, $08
|1280CE| db $FF, $00
|1280D0| db $22 ; Repeat byte
|1280D1| db $FF
|1280D2| db $06 ; Raw block
|1280D3| db $00, $00, $F7, $F7, $00, $DF, $00
|1280DA| db $47 ; Repeat word
|1280DB| dw $08D1
|1280DD| db $06 ; Raw block
|1280DE| db $D5, $08, $D9, $06, $D5, $08, $E0
|1280E5| db $24 ; Repeat byte
|1280E6| db $E6
|1280E7| db $01 ; Raw block
|1280E8| db $E0, $E6
|1280EA| db $45 ; Repeat word
|1280EB| dw $08D1
|1280ED| db $84 ; Copy past
|1280EE| dw $00FA
|1280F0| db $44 ; Repeat word
|1280F1| dw $D108
|1280F3| db $23 ; Repeat byte
|1280F4| db $E6
|1280F5| db $00 ; Raw block
|1280F6| db $E0
|1280F7| db $22 ; Repeat byte
|1280F8| db $E6
|1280F9| db $03 ; Raw block
|1280FA| db $00, $00, $41, $01
|1280FE| db $45 ; Repeat word
|1280FF| dw $FE7E
|128101| db $43 ; Repeat word
|128102| dw $FF7F
|128104| db $03 ; Raw block
|128105| db $01, $FE, $FF, $FE
|128109| db $22 ; Repeat byte
|12810A| db $01
|12810B| db $22 ; Repeat byte
|12810C| db $00
|12810D| db $05 ; Raw block
|12810E| db $80, $80, $40, $C0, $BF, $7F
|128114| db $45 ; Repeat word
|128115| dw $BFDF
|128117| db $05 ; Raw block
|128118| db $6F, $9F, $F0, $0F, $7F, $3F
|12811E| db $25 ; Repeat byte
|12811F| db $00
|128120| db $E0, $29 ; EXT Raw block
|128122| db $03, $04, $03, $FD, $06, $F8, $0E, $F1
|12812A| db $F9, $06, $F3, $83, $30, $CF, $10, $EF
|128132| db $F8, $00, $01, $00, $00, $0C, $00, $00
|12813A| db $B8, $A0, $7C, $73, $9E, $F9, $0E, $F9
|128142| db $FF, $00, $FB, $CB, $30, $D7, $30, $DF
|12814A| db $47, $80
|12814C| db $22 ; Repeat byte
|12814D| db $00
|12814E| db $01 ; Raw block
|12814F| db $04, $08
|128151| db $43 ; Repeat word
|128152| dw $FF00
|128154| db $22 ; Repeat byte
|128155| db $00
|128156| db $02 ; Raw block
|128157| db $FF, $00, $00
|12815A| db $29 ; Repeat byte
|12815B| db $FF
|12815C| db $24 ; Repeat byte
|12815D| db $00
|12815E| db $02 ; Raw block
|12815F| db $FF, $00, $FF
|128162| db $22 ; Repeat byte
|128163| db $00
|128164| db $02 ; Raw block
|128165| db $FF, $00, $00
|128168| db $29 ; Repeat byte
|128169| db $FF
|12816A| db $24 ; Repeat byte
|12816B| db $00
|12816C| db $4F ; Repeat word
|12816D| dw $0FD7
|12816F| db $27 ; Repeat byte
|128170| db $E0
|128171| db $4F ; Repeat word
|128172| dw $0FD7
|128174| db $27 ; Repeat byte
|128175| db $E0
|128176| db $43 ; Repeat word
|128177| dw $00FF
|128179| db $0E ; Raw block
|12817A| db $C0, $20, $DF, $00, $D8, $07, $D5, $0B
|128182| db $D2, $0D, $D5, $0E, $FF, $FF, $DF
|128189| db $24 ; Repeat byte
|12818A| db $E0
|12818B| db $43 ; Repeat word
|12818C| dw $0FD7
|12818E| db $08 ; Raw block
|12818F| db $17, $0F, $F7, $0F, $07, $F7, $FB, $FB
|128197| db $FD
|128198| db $62 ; Increment fill
|128199| db $FD
|12819A| db $22 ; Repeat byte
|12819B| db $E0
|12819C| db $03 ; Raw block
|12819D| db $00, $08, $04, $02
|1281A1| db $22 ; Repeat byte
|1281A2| db $00
|1281A3| db $01 ; Raw block
|1281A4| db $40, $00
|1281A6| db $47 ; Repeat word
|1281A7| dw $BF3F
|1281A9| db $02 ; Raw block
|1281AA| db $7F, $FF, $00
|1281AD| db $22 ; Repeat byte
|1281AE| db $FF
|1281AF| db $23 ; Repeat byte
|1281B0| db $40
|1281B1| db $25 ; Repeat byte
|1281B2| db $00
|1281B3| db $29 ; Repeat byte
|1281B4| db $FF
|1281B5| db $00 ; Raw block
|1281B6| db $00
|1281B7| db $22 ; Repeat byte
|1281B8| db $FF
|1281B9| db $25 ; Repeat byte
|1281BA| db $00
|1281BB| db $4F ; Repeat word
|1281BC| dw $3F3E
|1281BE| db $27 ; Repeat byte
|1281BF| db $C0
|1281C0| db $4B ; Repeat word
|1281C1| dw $3F3E
|1281C3| db $03 ; Raw block
|1281C4| db $42, $03, $00, $3F
|1281C8| db $25 ; Repeat byte
|1281C9| db $C0
|1281CA| db $E0, $29 ; EXT Raw block
|1281CC| db $FC, $C0, $7E, $FF, $BC, $7E, $98, $BD
|1281D4| db $C0, $DB, $E0, $F7, $C1, $EE, $83, $DD
|1281DC| db $04, $BB, $00, $81, $42, $24, $08, $10
|1281E4| db $20, $40, $8C, $F3, $9B, $6C, $73, $9C
|1281EC| db $67, $B9, $CE, $73, $9E, $E3, $3F, $C9
|1281F4| db $77, $9C
|1281F6| db $23 ; Repeat byte
|1281F7| db $00
|1281F8| db $13 ; Raw block
|1281F9| db $01, $01, $00, $08, $BF, $40, $EA, $14
|128201| db $D5, $28, $BA, $41, $D5, $23, $AD, $43
|128209| db $D6, $09, $AB, $1C
|12820D| db $23 ; Repeat byte
|12820E| db $00
|12820F| db $83 ; Copy past
|128210| dw $029C
|128212| db $17 ; Raw block
|128213| db $FF, $04, $0F, $08, $FE, $00, $FC, $C0
|12821B| db $F8, $80, $FC, $00, $0C, $00, $FC, $00
|128223| db $F9, $F3, $07, $CF, $9F, $03, $F3, $03
|12822B| db $23 ; Repeat byte
|12822C| db $00
|12822D| db $0D ; Raw block
|12822E| db $2F, $1F, $17, $2F, $2B, $37, $35, $3B
|128236| db $3A, $3D, $3C, $3F, $FF, $FF
|12823C| db $25 ; Repeat byte
|12823D| db $C0
|12823E| db $43 ; Repeat word
|12823F| dw $3F3E
|128241| db $05 ; Raw block
|128242| db $DE, $DF, $EE, $EF, $F6, $F7
|128248| db $63 ; Increment fill
|128249| db $FA
|12824A| db $05 ; Raw block
|12824B| db $01, $FE, $C0, $C0, $20, $10
|128251| db $83 ; Copy past
|128252| dw $020C
|128254| db $43 ; Repeat word
|128255| dw $0FD7
|128257| db $06 ; Raw block
|128258| db $D3, $0F, $D4, $0F, $D6, $0F, $D7
|12825F| db $43 ; Repeat word
|128260| dw $D30F
|128262| db $00 ; Raw block
|128263| db $0C
|128264| db $27 ; Repeat byte
|128265| db $E0
|128266| db $0B ; Raw block
|128267| db $D7, $0E, $D7, $0F, $D6, $0F, $D1, $0E
|12826F| db $D7, $0C, $D5, $0E
|128273| db $43 ; Repeat word
|128274| dw $0FD6
|128276| db $27 ; Repeat byte
|128277| db $E0
|128278| db $22 ; Repeat byte
|128279| db $00
|12827A| db $44 ; Repeat word
|12827B| dw $00FF
|12827D| db $08 ; Raw block
|12827E| db $FF, $00, $FF, $7F, $C0, $7F, $80, $7F
|128286| db $FF
|128287| db $26 ; Repeat byte
|128288| db $00
|128289| db $06 ; Raw block
|12828A| db $C0, $80, $00, $BF, $80, $3F, $C0
|128291| db $83 ; Copy past
|128292| dw $021C
|128294| db $44 ; Repeat word
|128295| dw $00FF
|128297| db $02 ; Raw block
|128298| db $7F, $40, $40
|12829B| db $24 ; Repeat byte
|12829C| db $00
|12829D| db $4B ; Repeat word
|12829E| dw $770C
|1282A0| db $03 ; Raw block
|1282A1| db $9C, $17, $FC, $87
|1282A5| db $25 ; Repeat byte
|1282A6| db $80
|1282A7| db $01 ; Raw block
|1282A8| db $E0, $00
|1282AA| db $4B ; Repeat word
|1282AB| dw $770C
|1282AD| db $03 ; Raw block
|1282AE| db $0A, $73, $0B, $74
|1282B2| db $25 ; Repeat byte
|1282B3| db $80
|1282B4| db $12 ; Raw block
|1282B5| db $84, $80, $00, $00, $40, $3F, $20, $5F
|1282BD| db $10, $6F, $0F, $70, $0F, $77, $0E, $75
|1282C5| db $0D, $76, $FF
|1282C8| db $26 ; Repeat byte
|1282C9| db $80
|1282CA| db $10 ; Raw block
|1282CB| db $8C, $77, $4C, $F7, $2C, $F7, $1C, $F7
|1282D3| db $FC, $0F, $F8, $FB, $02, $FF, $01, $FF
|1282DB| db $80
|1282DC| db $23 ; Repeat byte
|1282DD| db $00
|1282DE| db $04 ; Raw block
|1282DF| db $04, $00, $00, $D7, $0E
|1282E4| db $43 ; Repeat word
|1282E5| dw $0DD6
|1282E7| db $47 ; Repeat word
|1282E8| dw $0BD5
|1282EA| db $01 ; Raw block
|1282EB| db $D4, $0B
|1282ED| db $27 ; Repeat byte
|1282EE| db $E0
|1282EF| db $0A ; Raw block
|1282F0| db $0E, $12, $1C, $F3, $0E, $F1, $0F, $F0
|1282F8| db $FF, $04, $FF
|1282FB| db $43 ; Repeat word
|1282FC| dw $07FC
|1282FE| db $01 ; Raw block
|1282FF| db $F8, $E1
|128301| db $26 ; Repeat byte
|128302| db $00
|128303| db $45 ; Repeat word
|128304| dw $770C
|128306| db $09 ; Raw block
|128307| db $4C, $F7, $FC, $07, $FF, $0E, $BF, $C0
|12830F| db $1F, $60
|128311| db $22 ; Repeat byte
|128312| db $80
|128313| db $23 ; Repeat byte
|128314| db $00
|128315| db $18 ; Raw block
|128316| db $80, $DD, $3E, $BB, $7C, $76, $F8, $ED
|12831E| db $F1, $DB, $E3, $B7, $C7, $6F, $8F, $DF
|128326| db $1F, $3E, $7C, $F9, $F2, $E4, $C8, $90
|12832E| db $20
|12832F| db $43 ; Repeat word
|128330| dw $00FF
|128332| db $00 ; Raw block
|128333| db $08
|128334| db $46 ; Repeat word
|128335| dw $EBF7
|128337| db $02 ; Raw block
|128338| db $08, $F7, $FF
|12833B| db $22 ; Repeat byte
|12833C| db $00
|12833D| db $24 ; Repeat byte
|12833E| db $F7
|12833F| db $00 ; Raw block
|128340| db $00
|128341| db $45 ; Repeat word
|128342| dw $3EDD
|128344| db $04 ; Raw block
|128345| db $C1, $3E, $FF, $00, $C1
|12834A| db $43 ; Repeat word
|12834B| dw $DD3E
|12834D| db $24 ; Repeat byte
|12834E| db $3E
|12834F| db $00 ; Raw block
|128350| db $00
|128351| db $22 ; Repeat byte
|128352| db $3E
|128353| db $43 ; Repeat word
|128354| dw $00FF
|128356| db $00 ; Raw block
|128357| db $C0
|128358| db $46 ; Repeat word
|128359| dw $DF3F
|12835B| db $05 ; Raw block
|12835C| db $DC, $3F, $DD, $3E, $00, $00
|128362| db $24 ; Repeat byte
|128363| db $3F
|128364| db $44 ; Repeat word
|128365| dw $DD3E
|128367| db $00 ; Raw block
|128368| db $1D
|128369| db $46 ; Repeat word
|12836A| dw $FDFE
|12836C| db $05 ; Raw block
|12836D| db $01, $FE, $FF, $00, $3E, $3E
|128373| db $24 ; Repeat byte
|128374| db $FE
|128375| db $0C ; Raw block
|128376| db $00, $FF, $00, $06, $FA, $0C, $F4, $F9
|12837E| db $09, $33, $D0, $67, $A0
|128383| db $83 ; Copy past
|128384| dw $003C
|128386| db $02 ; Raw block
|128387| db $00, $01, $03
|12838A| db $83 ; Copy past
|12838B| dw $002A
|12838D| db $83 ; Copy past
|12838E| dw $0047
|128390| db $22 ; Repeat byte
|128391| db $00
|128392| db $89 ; Copy past
|128393| dw $004E
|128395| db $02 ; Raw block
|128396| db $00, $FF, $FF
|128399| db $23 ; Repeat byte
|12839A| db $00
|12839B| db $10 ; Raw block
|12839C| db $6D, $93, $6C, $96, $6A, $9C, $64, $99
|1283A4| db $68, $B3, $51, $E7, $21, $CC, $42, $9E
|1283AC| db $10
|1283AD| db $85 ; Copy past
|1283AE| dw $0490
|1283B0| db $01 ; Raw block
|1283B1| db $31, $61
|1283B3| db $8F ; Copy past
|1283B4| dw $0078
|1283B6| db $0A ; Raw block
|1283B7| db $60, $61, $61, $60, $61, $61, $60, $61
|1283BF| db $FF, $00, $FF
|1283C2| db $22 ; Repeat byte
|1283C3| db $00
|1283C4| db $84 ; Copy past
|1283C5| dw $0186
|1283C7| db $04 ; Raw block
|1283C8| db $E0, $E0, $9F, $9E, $7F
|1283CD| db $22 ; Repeat byte
|1283CE| db $FF
|1283CF| db $24 ; Repeat byte
|1283D0| db $00
|1283D1| db $1A ; Raw block
|1283D2| db $FF, $00, $20, $C0, $4F, $88, $9F, $13
|1283DA| db $BF, $27, $BF, $20, $80, $00, $FF, $00
|1283E2| db $0F, $1F, $30, $63, $47, $40, $7F, $00
|1283EA| db $FF, $00, $04
|1283ED| db $43 ; Repeat word
|1283EE| dw $FC00
|1283F0| db $10 ; Raw block
|1283F1| db $C0, $F0, $C0, $F8, $00, $0C, $00, $FE
|1283F9| db $00, $FB, $FB, $03, $DF, $CF, $07, $F3
|128401| db $01
|128402| db $97 ; Copy past
|128403| dw $02B8
|128405| db $09 ; Raw block
|128406| db $EF, $10, $C0, $20, $8F, $C8, $9F, $17
|12840E| db $BF, $2F
|128410| db $85 ; Copy past
|128411| dw $0502
|128413| db $04 ; Raw block
|128414| db $EF, $DF, $30, $67, $4F
|128419| db $85 ; Copy past
|12841A| dw $050D
|12841C| db $43 ; Repeat word
|12841D| dw $FC00
|12841F| db $90 ; Copy past
|128420| dw $0517
|128422| db $43 ; Repeat word
|128423| dw $0300
|128425| db $03 ; Raw block
|128426| db $FA, $FC, $F6, $F8
|12842A| db $43 ; Repeat word
|12842B| dw $F1FD
|12842D| db $0B ; Raw block
|12842E| db $FF, $F3, $0C, $F3, $FC, $FC, $01, $01
|128436| db $02, $02, $00, $00
|12843A| db $47 ; Repeat word
|12843B| dw $3F3E
|12843D| db $07 ; Raw block
|12843E| db $2F, $30, $1F, $20, $32, $C3, $0E, $CF
|128446| db $25 ; Repeat byte
|128447| db $C0
|128448| db $04 ; Raw block
|128449| db $0C, $30, $00, $3F, $7E
|12844E| db $4A ; Repeat word
|12844F| dw $3E3F
|128451| db $01 ; Raw block
|128452| db $47, $46
|128454| db $26 ; Repeat byte
|128455| db $C0
|128456| db $05 ; Raw block
|128457| db $B8, $BD, $DE, $5F, $60, $23
|12845D| db $62 ; Increment fill
|12845E| db $3C
|12845F| db $47 ; Repeat word
|128460| dw $3F3E
|128462| db $01 ; Raw block
|128463| db $00, $80
|128465| db $25 ; Repeat byte
|128466| db $C0
|128467| db $0F ; Raw block
|128468| db $0C, $77, $0C, $73, $0E, $71, $0F, $70
|128470| db $18, $63, $30, $CB, $F4, $0F, $CC, $57
|128478| db $23 ; Repeat byte
|128479| db $80
|12847A| db $1B ; Raw block
|12847B| db $84, $04, $00, $20, $AC, $B7, $4C, $77
|128483| db $CF, $F0, $EF, $73, $FC, $35, $78, $03
|12848B| db $3C, $47, $0C, $77, $40, $80, $00, $00
|128493| db $02, $84, $80, $80
|128497| db $FF ; End of GFX 10

;===================================================================================================

GFX_11:
|128498| db $E0, $2B ; EXT Raw block
|12849A| db $03, $00, $07, $00, $0F, $00, $1F, $01
|1284A2| db $3C, $03, $78, $00, $F2, $08, $F1, $18
|1284AA| db $FF, $FF, $FE, $FC, $F8, $F7, $E5, $C6
|1284B2| db $79, $0F, $DB, $46, $87, $2C, $DE, $09
|1284BA| db $FD, $93, $BB, $67, $F3, $4F, $6F, $DF
|1284C2| db $C0, $A0, $50, $20
|1284C6| db $23 ; Repeat byte
|1284C7| db $00
|1284C8| db $13 ; Raw block
|1284C9| db $BE, $82, $7B, $38, $FF, $42, $66, $18
|1284D1| db $43, $3D, $42, $3D, $66, $19, $BE, $80
|1284D9| db $7D, $C6, $81, $81
|1284DD| db $22 ; Repeat byte
|1284DE| db $80
|1284DF| db $1E ; Raw block
|1284E0| db $41, $FF, $00, $64, $1B, $3E, $C0, $E5
|1284E8| db $01, $83, $43, $26, $33, $35, $42, $4B
|1284F0| db $B0, $FF, $E4, $21, $9A, $BC, $CC, $8C
|1284F8| db $04, $A1, $81, $7E, $20, $F3, $4C
|1284FF| db $43 ; Repeat word
|128500| dw $5EE1
|128502| db $07 ; Raw block
|128503| db $B3, $0C, $FF, $A0, $68, $0E, $7E, $C1
|12850B| db $22 ; Repeat byte
|12850C| db $80
|12850D| db $E0, $2C ; EXT Raw block
|12850F| db $C0, $40, $B1, $98, $21, $D1, $2A, $F6
|128517| db $05, $A2, $45, $A1, $40, $F6, $00, $AD
|12851F| db $4E, $9B, $5C, $DE, $C4, $E8, $98, $9E
|128527| db $CF, $90, $A0, $FF, $80, $59, $00, $BF
|12852F| db $80, $1A, $A6, $18, $BD, $11, $BF, $0B
|128537| db $BE, $07, $DC, $7F, $FF
|12853C| db $62 ; Increment fill
|12853D| db $40
|12853E| db $16 ; Raw block
|12853F| db $40, $40, $20, $FF, $01, $9A, $00, $FD
|128547| db $01, $59, $64, $BB, $FE, $F3, $9E, $FF
|12854F| db $0C, $FF, $00, $FE, $FF, $02, $82
|128556| db $23 ; Repeat byte
|128557| db $00
|128558| db $85 ; Copy past
|128559| dw $0090
|12855B| db $0B ; Raw block
|12855C| db $82, $BE, $98, $BD, $C0, $C0, $00, $FF
|128564| db $FF, $00, $7F, $FF
|128568| db $62 ; Increment fill
|128569| db $40
|12856A| db $02 ; Raw block
|12856B| db $3F, $00, $00
|12856E| db $85 ; Copy past
|12856F| dw $00A8
|128571| db $05 ; Raw block
|128572| db $41, $7D, $19, $BD, $03, $03
|128578| db $83 ; Copy past
|128579| dw $00CC
|12857B| db $83 ; Copy past
|12857C| dw $00B8
|12857E| db $08 ; Raw block
|12857F| db $42, $FC, $00, $00, $BD, $BE, $C5, $06
|128587| db $A1
|128588| db $44 ; Repeat word
|128589| dw $E91A
|12858B| db $07 ; Raw block
|12858C| db $A1, $1A, $B1, $12, $E1, $0A, $40, $F8
|128594| db $23 ; Repeat byte
|128595| db $C4
|128596| db $06 ; Raw block
|128597| db $CC, $D4, $E1, $0A, $B1, $12, $A1
|12859E| db $44 ; Repeat word
|12859F| dw $E91A
|1285A1| db $07 ; Raw block
|1285A2| db $A1, $1A, $C5, $06, $BD, $BE, $D4, $CC
|1285AA| db $23 ; Repeat byte
|1285AB| db $C4
|1285AC| db $07 ; Raw block
|1285AD| db $F8, $40, $FF, $F8, $FF, $00, $18, $F8
|1285B5| db $43 ; Repeat word
|1285B6| dw $FE7E
|1285B8| db $43 ; Repeat word
|1285B9| dw $FF7F
|1285BB| db $06 ; Raw block
|1285BC| db $01, $FE, $00, $00, $07, $01, $01
|1285C3| db $22 ; Repeat byte
|1285C4| db $00
|1285C5| db $06 ; Raw block
|1285C6| db $FF, $1F, $FF, $00, $E0, $1F, $D9
|1285CD| db $44 ; Repeat word
|1285CE| dw $DFBF
|1285D0| db $03 ; Raw block
|1285D1| db $6F, $9F, $F0, $0F
|1285D5| db $27 ; Repeat byte
|1285D6| db $00
|1285D7| db $E0, $29 ; EXT Raw block
|1285D9| db $03, $04, $03, $FD, $86, $F8, $8E, $F1
|1285E1| db $F9, $06, $F3, $83, $30, $CF, $10, $EF
|1285E9| db $F8, $00, $01, $00, $00, $0C, $00, $00
|1285F1| db $B8, $A0, $7C, $73, $9E, $F9, $0E, $F9
|1285F9| db $FF, $00, $FB, $CB, $30, $D7, $30, $DF
|128601| db $47, $80
|128603| db $22 ; Repeat byte
|128604| db $00
|128605| db $01 ; Raw block
|128606| db $04, $08
|128608| db $86 ; Copy past
|128609| dw $00BF
|12860B| db $01 ; Raw block
|12860C| db $1A, $A6
|12860E| db $43 ; Repeat word
|12860F| dw $BD18
|128611| db $05 ; Raw block
|128612| db $02, $BE, $98, $5F, $7F, $FF
|128618| db $62 ; Increment fill
|128619| db $40
|12861A| db $01 ; Raw block
|12861B| db $42, $41
|12861D| db $87 ; Copy past
|12861E| dw $00A7
|128620| db $08 ; Raw block
|128621| db $65, $19, $BD, $18, $BD, $40, $7D, $19
|128629| db $FA
|12862A| db $84 ; Copy past
|12862B| dw $00E8
|12862D| db $08 ; Raw block
|12862E| db $42, $82, $04, $A1, $BE, $C0, $01, $A0
|128636| db $1E
|128637| db $43 ; Repeat word
|128638| dw $0FFD
|12863A| db $08 ; Raw block
|12863B| db $A0, $1F, $B2, $13, $E0, $0D, $40, $FE
|128643| db $C1
|128644| db $22 ; Repeat byte
|128645| db $C0
|128646| db $07 ; Raw block
|128647| db $CC, $D2, $E0, $0D, $B2, $13, $A0, $1F
|12864F| db $43 ; Repeat word
|128650| dw $0FFD
|128652| db $07 ; Raw block
|128653| db $A0, $1E, $C0, $01, $B9, $BE, $D2, $CC
|12865B| db $22 ; Repeat byte
|12865C| db $C0
|12865D| db $E0, $37 ; EXT Raw block
|12865F| db $C1, $FE, $40, $FF, $00, $BD, $66, $C0
|128667| db $7F, $DC, $22, $DF, $20, $DE, $61, $97
|12866F| db $78, $CB, $24, $FF, $99, $80, $C1, $C0
|128677| db $80, $80, $D0, $E0, $01, $FE, $01, $E7
|12867F| db $01, $4F, $0D, $57, $15, $7B, $19, $7F
|128687| db $01, $3E, $FE, $FE, $E0, $F8, $B0, $A8
|12868F| db $84, $80, $01, $FF, $0F, $FF, $00, $80
|128697| db $44 ; Repeat word
|128698| dw $CF7F
|12869A| db $05 ; Raw block
|12869B| db $FE, $7F, $FC, $7F, $00, $FF
|1286A1| db $27 ; Repeat byte
|1286A2| db $00
|1286A3| db $0F ; Raw block
|1286A4| db $FF, $F0, $FF, $00, $00, $FF, $8C, $FE
|1286AC| db $DE, $FE, $7E, $FE, $3B, $FF, $80, $7F
|1286B4| db $22 ; Repeat byte
|1286B5| db $00
|1286B6| db $22 ; Repeat byte
|1286B7| db $01
|1286B8| db $12 ; Raw block
|1286B9| db $00, $00, $C2, $23, $CE, $3F, $DC, $3F
|1286C1| db $DE, $3F, $CE, $3F, $C6, $BF, $CC, $BF
|1286C9| db $D9, $BE, $1C
|1286CC| db $26 ; Repeat byte
|1286CD| db $00
|1286CE| db $02 ; Raw block
|1286CF| db $D8, $BF, $DC
|1286D2| db $43 ; Repeat word
|1286D3| dw $DEBF
|1286D5| db $44 ; Repeat word
|1286D6| dw $C63F
|1286D8| db $03 ; Raw block
|1286D9| db $DE, $3F, $FE, $01
|1286DD| db $27 ; Repeat byte
|1286DE| db $00
|1286DF| db $E0, $27 ; EXT Raw block
|1286E1| db $EE, $9F, $D0, $3E, $B8, $1D, $50, $CB
|1286E9| db $E0, $F7, $C3, $EC, $87, $D9, $04, $BB
|1286F1| db $00, $01, $42, $24, $08, $10, $20, $40
|1286F9| db $8C, $F3, $9B, $6C, $73, $9C, $66, $B9
|128701| db $CC, $73, $98, $E7, $30, $CF, $61, $9F
|128709| db $22 ; Repeat byte
|12870A| db $00
|12870B| db $14 ; Raw block
|12870C| db $01, $03, $07, $0F, $1E, $BF, $40, $EA
|128714| db $14, $DD, $20, $AB, $51, $F7, $03, $AF
|12871C| db $47, $DF, $0F, $BE, $1F
|128721| db $22 ; Repeat byte
|128722| db $00
|128723| db $84 ; Copy past
|128724| dw $029B
|128726| db $E0, $27 ; EXT Raw block
|128728| db $FF, $04, $0F, $08, $FE, $00, $FC, $C0
|128730| db $F8, $80, $FC, $00, $0C, $00, $FC, $00
|128738| db $F9, $F3, $07, $CF, $9F, $03, $F3, $03
|128740| db $FF, $00, $C7, $38, $A0, $5F, $97, $6F
|128748| db $8F, $77, $DD, $3B, $DA, $3D, $DC, $3F
|128750| db $27 ; Repeat byte
|128751| db $00
|128752| db $19 ; Raw block
|128753| db $DC, $3F, $9C, $5F, $0E, $8F, $CC, $CF
|12875B| db $F6, $F7, $FA, $FB, $34, $FD, $01, $FE
|128763| db $00, $20, $70, $30, $08, $04, $02, $00
|12876B| db $A0, $BF
|12876D| db $83 ; Copy past
|12876E| dw $01B2
|128770| db $0C ; Raw block
|128771| db $FC, $0F, $FA, $0F, $A1, $1F, $B3, $16
|128779| db $E7, $0C, $40, $FE, $C1
|12877E| db $22 ; Repeat byte
|12877F| db $C0
|128780| db $07 ; Raw block
|128781| db $C8, $D0, $EF, $00, $BF, $18, $A7, $1C
|128789| db $43 ; Repeat word
|12878A| dw $0EF3
|12878C| db $06 ; Raw block
|12878D| db $A3, $1E, $CF, $0C, $A7, $B8, $D0
|128794| db $24 ; Repeat byte
|128795| db $C0
|128796| db $03 ; Raw block
|128797| db $F0, $40, $BF, $BF
|12879B| db $43 ; Repeat word
|12879C| dw $FF00
|12879E| db $0A ; Raw block
|12879F| db $10, $EF, $FF, $00, $EF, $7F, $C0, $7F
|1287A7| db $86, $79, $40
|1287AA| db $26 ; Repeat byte
|1287AB| db $00
|1287AC| db $10 ; Raw block
|1287AD| db $3D, $BD, $D8, $67, $D0, $6F, $C0, $7F
|1287B5| db $FF, $00, $FF, $FF, $08, $F7, $0C, $F3
|1287BD| db $42
|1287BE| db $26 ; Repeat byte
|1287BF| db $00
|1287C0| db $43 ; Repeat word
|1287C1| dw $770C
|1287C3| db $0F ; Raw block
|1287C4| db $8C, $F7, $8D, $F6, $0D, $76, $0C, $77
|1287CC| db $EC, $F7, $7C, $87, $80, $80, $00, $00
|1287D4| db $83 ; Copy past
|1287D5| dw $0370
|1287D7| db $07 ; Raw block
|1287D8| db $9C, $E7, $0C, $77, $0D, $76, $8D, $F6
|1287E0| db $43 ; Repeat word
|1287E1| dw $E79C
|1287E3| db $06 ; Raw block
|1287E4| db $8E, $F7, $8B, $F4, $00, $80, $80
|1287EB| db $24 ; Repeat byte
|1287EC| db $00
|1287ED| db $10 ; Raw block
|1287EE| db $D9, $D9, $C8, $B7, $24, $5B, $90, $EF
|1287F6| db $0F, $70, $0F, $77, $CE, $B5, $8D, $F6
|1287FE| db $26
|1287FF| db $43 ; Repeat word
|128800| dw $8000
|128802| db $00 ; Raw block
|128803| db $80
|128804| db $83 ; Copy past
|128805| dw $035E
|128807| db $0E ; Raw block
|128808| db $4C, $F7, $2C, $F7, $1C, $F7, $FC, $0F
|128810| db $F8, $FB, $02, $FF, $01, $FF, $80
|128817| db $23 ; Repeat byte
|128818| db $00
|128819| db $08 ; Raw block
|12881A| db $04, $00, $00, $E0, $0F, $B1, $12, $A3
|128822| db $1C
|128823| db $43 ; Repeat word
|128824| dw $0DFB
|128826| db $07 ; Raw block
|128827| db $A3, $1D, $CA, $0D, $BB, $BC, $D0, $CC
|12882F| db $23 ; Repeat byte
|128830| db $C0
|128831| db $0C ; Raw block
|128832| db $F0, $40, $0E, $12, $1C, $F3, $0E, $F1
|12883A| db $0F, $F0, $FF, $04, $FF
|12883F| db $43 ; Repeat word
|128840| dw $07FC
|128842| db $01 ; Raw block
|128843| db $F8, $E1
|128845| db $26 ; Repeat byte
|128846| db $00
|128847| db $45 ; Repeat word
|128848| dw $770C
|12884A| db $09 ; Raw block
|12884B| db $4C, $F7, $FC, $07, $FF, $0E, $BF, $C0
|128853| db $1F, $60
|128855| db $22 ; Repeat byte
|128856| db $80
|128857| db $23 ; Repeat byte
|128858| db $00
|128859| db $17 ; Raw block
|12885A| db $80, $FD, $0E, $8B, $75, $A7, $5B, $9F
|128862| db $67, $DF, $AF, $BF, $DF, $7F, $BF, $FF
|12886A| db $7F, $0E, $74, $58, $60, $A0, $C0, $80
|128872| db $45 ; Repeat word
|128873| dw $FF00
|128875| db $02 ; Raw block
|128876| db $E3, $E3, $DD
|128879| db $43 ; Repeat word
|12887A| dw $D5EB
|12887C| db $02 ; Raw block
|12887D| db $08, $E3, $FF
|128880| db $22 ; Repeat byte
|128881| db $00
|128882| db $11 ; Raw block
|128883| db $E3, $DD, $D5, $D5, $F7, $00, $FD, $3E
|12888B| db $FD, $22, $E1, $1C, $EF, $10, $E1, $1C
|128893| db $FD, $22
|128895| db $43 ; Repeat word
|128896| dw $3EFD
|128898| db $07 ; Raw block
|128899| db $3E, $22, $1E, $10, $1E, $22, $3E, $3E
|1288A1| db $44 ; Repeat word
|1288A2| dw $00FF
|1288A4| db $00 ; Raw block
|1288A5| db $1F
|1288A6| db $45 ; Repeat word
|1288A7| dw $3FFF
|1288A9| db $06 ; Raw block
|1288AA| db $FC, $3D, $FD, $3E, $00, $00, $1F
|1288B1| db $23 ; Repeat byte
|1288B2| db $3F
|1288B3| db $45 ; Repeat word
|1288B4| dw $FD3E
|1288B6| db $03 ; Raw block
|1288B7| db $FE, $E5, $FE, $E9
|1288BB| db $62 ; Increment fill
|1288BC| db $F6
|1288BD| db $1E ; Raw block
|1288BE| db $07, $F8, $FF, $00, $3E, $3E, $FE, $FE
|1288C6| db $F6, $F8, $F8, $00, $00, $FF, $0C, $C1
|1288CE| db $1C, $9C, $3F, $A1, $33, $8C, $21, $9E
|1288D6| db $33, $8C, $1F, $80, $00, $3E, $63
|1288DD| db $23 ; Repeat byte
|1288DE| db $40
|1288DF| db $E0, $20 ; EXT Raw block
|1288E1| db $60, $00, $FF, $20, $C0, $00, $1B, $1E
|1288E9| db $C0, $65, $01, $22, $33, $31, $42, $4B
|1288F1| db $B0, $00, $3F, $E4, $21, $9A, $CC, $8C
|1288F9| db $04, $00, $FF, $00, $C0, $1E, $90, $3B
|128901| db $A4
|128902| db $43 ; Repeat word
|128903| dw $AE71
|128905| db $06 ; Raw block
|128906| db $1B, $84, $1F, $D0, $00, $3F, $61
|12890D| db $22 ; Repeat byte
|12890E| db $40
|12890F| db $19 ; Raw block
|128910| db $60, $20, $00, $D1, $09, $D2, $4E, $85
|128918| db $12, $A5, $11, $A0, $18, $80, $15, $A6
|128920| db $0B, $AC, $2E, $24, $70, $48, $4E, $67
|128928| db $48, $50
|12892A| db $87 ; Copy past
|12892B| dw $0198
|12892D| db $07 ; Raw block
|12892E| db $1B, $BF, $00, $BF, $3F, $C0, $7D, $9E
|128936| db $83 ; Copy past
|128937| dw $00B8
|128939| db $0F ; Raw block
|12893A| db $40, $40, $00, $00, $FF, $00, $20, $C0
|128942| db $4F, $88, $9F, $13, $BF, $27, $BF, $20
|12894A| db $83 ; Copy past
|12894B| dw $041E
|12894D| db $05 ; Raw block
|12894E| db $0F, $1F, $30, $63, $47, $40
|128954| db $83 ; Copy past
|128955| dw $021D
|128957| db $00 ; Raw block
|128958| db $04
|128959| db $43 ; Repeat word
|12895A| dw $FC00
|12895C| db $10 ; Raw block
|12895D| db $C0, $F0, $C0, $F8, $00, $0C, $00, $FE
|128965| db $00, $FB, $FB, $03, $DF, $CF, $07, $F3
|12896D| db $01
|12896E| db $97 ; Copy past
|12896F| dw $02B8
|128971| db $09 ; Raw block
|128972| db $EF, $10, $C0, $20, $8F, $C8, $9F, $17
|12897A| db $BF, $2F
|12897C| db $85 ; Copy past
|12897D| dw $0502
|12897F| db $04 ; Raw block
|128980| db $EF, $DF, $30, $67, $4F
|128985| db $85 ; Copy past
|128986| dw $050D
|128988| db $43 ; Repeat word
|128989| dw $FC00
|12898B| db $91 ; Copy past
|12898C| dw $0517
|12898E| db $06 ; Raw block
|12898F| db $1F, $FF, $00, $03, $FC, $F6, $F8
|128996| db $43 ; Repeat word
|128997| dw $F1FD
|128999| db $03 ; Raw block
|12899A| db $EF, $F3, $0C, $F3
|12899E| db $22 ; Repeat byte
|12899F| db $00
|1289A0| db $04 ; Raw block
|1289A1| db $01, $02, $02, $00, $00
|1289A6| db $45 ; Repeat word
|1289A7| dw $3FDE
|1289A9| db $09 ; Raw block
|1289AA| db $DC, $BF, $CF, $B0, $DF, $A0, $F2, $83
|1289B2| db $EE, $8F
|1289B4| db $25 ; Repeat byte
|1289B5| db $00
|1289B6| db $02 ; Raw block
|1289B7| db $0C, $10, $C0
|1289BA| db $44 ; Repeat word
|1289BB| dw $DEBF
|1289BD| db $43 ; Repeat word
|1289BE| dw $BFFE
|1289C0| db $43 ; Repeat word
|1289C1| dw $1FDE
|1289C3| db $01 ; Raw block
|1289C4| db $C7, $06
|1289C6| db $24 ; Repeat byte
|1289C7| db $00
|1289C8| db $0B ; Raw block
|1289C9| db $20, $20, $38, $FD, $1E, $FF, $00, $E3
|1289D1| db $1C, $DD, $BE, $DE
|1289D5| db $44 ; Repeat word
|1289D6| dw $CEBF
|1289D8| db $01 ; Raw block
|1289D9| db $DE, $BF
|1289DB| db $27 ; Repeat byte
|1289DC| db $00
|1289DD| db $0F ; Raw block
|1289DE| db $0C, $77, $0C, $73, $0E, $71, $0F, $70
|1289E6| db $18, $63, $30, $CB, $F4, $0F, $CC, $57
|1289EE| db $23 ; Repeat byte
|1289EF| db $80
|1289F0| db $1B ; Raw block
|1289F1| db $84, $04, $00, $20, $AC, $B7, $4C, $77
|1289F9| db $CF, $F0, $EF, $73, $FC, $35, $78, $03
|128A01| db $3C, $47, $0C, $77, $40, $80, $00, $00
|128A09| db $02, $84, $80, $80
|128A0D| db $FF ; End of GFX 11

;===================================================================================================

GFX_12:
|128A0E| db $11 ; Raw block
|128A0F| db $DE, $00, $A3, $00, $41, $00, $03, $00
|128A17| db $1C, $00, $13, $03, $1B, $0F, $31, $1F
|128A1F| db $3F, $7F
|128A21| db $22 ; Repeat byte
|128A22| db $FF
|128A23| db $0D ; Raw block
|128A24| db $FC, $F0, $E0, $30, $1F, $73, $1D, $D2
|128A2C| db $1F, $10, $1F, $E8, $EF, $F8
|128A32| db $44 ; Repeat word
|128A33| dw $FCFF
|128A35| db $23 ; Repeat byte
|128A36| db $E0
|128A37| db $00 ; Raw block
|128A38| db $10
|128A39| db $22 ; Repeat byte
|128A3A| db $00
|128A3B| db $E0, $2C ; EXT Raw block
|128A3D| db $FF, $04, $87, $03, $83, $01, $D3, $01
|128A45| db $77, $03, $BA, $83, $D5, $C6, $CB, $CC
|128A4D| db $F8, $FC, $FE, $FE, $FC, $7C, $38, $30
|128A55| db $C1, $80, $A2, $00, $AD, $01, $72, $03
|128A5D| db $8C, $8F, $71, $FE, $83, $7C, $FF, $00
|128A65| db $7F, $FF, $FE, $FC, $70
|128A6A| db $22 ; Repeat byte
|128A6B| db $00
|128A6C| db $1F ; Raw block
|128A6D| db $F7, $07, $9B, $03, $8C, $00, $9E, $00
|128A75| db $85, $01, $CA, $83, $FD, $4E, $FB, $7C
|128A7D| db $F8, $FC, $FF, $FF, $FE, $7C, $30, $00
|128A85| db $EB, $8C, $95, $06, $75, $06, $15, $06
|128A8D| db $43 ; Repeat word
|128A8E| dw $0E29
|128A90| db $04 ; Raw block
|128A91| db $53, $1C, $A7, $38, $70
|128A96| db $22 ; Repeat byte
|128A97| db $F8
|128A98| db $03 ; Raw block
|128A99| db $F0, $F0, $E0, $C0
|128A9D| db $F0, $2C ; EXT Copy past
|128A9F| dw $0030
|128AA1| db $22 ; Repeat byte
|128AA2| db $00
|128AA3| db $F0, $2C ; EXT Copy past
|128AA5| dw $0030
|128AA7| db $22 ; Repeat byte
|128AA8| db $00
|128AA9| db $83 ; Copy past
|128AAA| dw $0060
|128AAC| db $04 ; Raw block
|128AAD| db $BC, $00, $86, $00, $8D
|128AB2| db $8E ; Copy past
|128AB3| dw $0069
|128AB5| db $09 ; Raw block
|128AB6| db $E9, $8E, $94, $07, $74, $07, $14, $07
|128ABE| db $28, $0F
|128AC0| db $86 ; Copy past
|128AC1| dw $0082
|128AC3| db $22 ; Repeat byte
|128AC4| db $F8
|128AC5| db $83 ; Copy past
|128AC6| dw $008C
|128AC8| db $13 ; Raw block
|128AC9| db $34, $CB, $7A, $9D, $D5, $36, $C4, $37
|128AD1| db $CC, $3F, $C9, $3E, $EB, $1C, $FC, $C3
|128AD9| db $00, $00, $08, $08
|128ADD| db $23 ; Repeat byte
|128ADE| db $00
|128ADF| db $09 ; Raw block
|128AE0| db $14, $EB, $2E, $C9, $EF, $2C, $AD, $6E
|128AE8| db $99, $7E
|128AEA| db $43 ; Repeat word
|128AEB| dw $3ED1
|128AED| db $02 ; Raw block
|128AEE| db $53, $BF, $00
|128AF1| db $22 ; Repeat byte
|128AF2| db $10
|128AF3| db $23 ; Repeat byte
|128AF4| db $00
|128AF5| db $E0, $2C ; EXT Raw block
|128AF7| db $58, $64, $28, $30, $2D, $34, $6B, $37
|128AFF| db $A9, $37, $68, $77, $CC, $F3, $9F, $E0
|128B07| db $83, $C7, $C3, $C0, $C0, $80, $00, $00
|128B0F| db $24, $5C, $50, $60, $7C, $68, $DB, $E8
|128B17| db $94, $EC, $13, $EF, $39, $C7, $FC, $03
|128B1F| db $83, $8F, $87, $07, $03
|128B24| db $22 ; Repeat byte
|128B25| db $00
|128B26| db $0F ; Raw block
|128B27| db $FE, $00, $80, $00, $A1, $00, $E2, $00
|128B2F| db $6F, $03, $BA, $83, $D4, $C7, $C8, $CF
|128B37| db $23 ; Repeat byte
|128B38| db $FF
|128B39| db $83 ; Copy past
|128B3A| dw $0044
|128B3C| db $13 ; Raw block
|128B3D| db $BF, $C2, $5D, $64, $7A, $6A, $96, $F6
|128B45| db $0F, $FF, $4F, $BF, $4D, $FF, $0E, $FF
|128B4D| db $01, $83, $85, $09
|128B51| db $23 ; Repeat byte
|128B52| db $00
|128B53| db $89 ; Copy past
|128B54| dw $00F0
|128B56| db $05 ; Raw block
|128B57| db $8A, $03, $9C, $0F, $28, $0F
|128B5D| db $84 ; Copy past
|128B5E| dw $0070
|128B60| db $13 ; Raw block
|128B61| db $FC, $F0, $F0, $90, $9F, $E6, $7B, $E0
|128B69| db $3F, $F0, $1F, $EF, $2F, $DF, $5F, $BD
|128B71| db $BF, $CE, $0F, $60
|128B75| db $22 ; Repeat byte
|128B76| db $00
|128B77| db $E0, $27 ; EXT Raw block
|128B79| db $10, $20, $40, $F0, $FF, $1F, $E0, $20
|128B81| db $C2, $40, $82, $80, $86, $80, $FD, $81
|128B89| db $FB, $83, $87, $87, $00, $1F, $3F, $7F
|128B91| db $7F, $7E, $7C, $78, $37, $07, $1B, $03
|128B99| db $98, $00, $F7, $07, $6C, $0F, $98, $9F
|128BA1| db $43 ; Repeat word
|128BA2| dw $DFD0
|128BA4| db $07 ; Raw block
|128BA5| db $F8, $FC, $FF, $F8, $F0, $60, $20, $20
|128BAD| db $45 ; Repeat word
|128BAE| dw $EFE0
|128BB0| db $09 ; Raw block
|128BB1| db $E2, $EF, $F0, $FF, $E0, $FF, $C3, $FC
|128BB9| db $07, $FB
|128BBB| db $23 ; Repeat byte
|128BBC| db $10
|128BBD| db $23 ; Repeat byte
|128BBE| db $00
|128BBF| db $11 ; Raw block
|128BC0| db $0D, $FD, $6E, $9E, $6F, $BF, $4F, $FF
|128BC8| db $07, $FF, $03, $FB, $E1, $11, $F8, $F0
|128BD0| db $02, $01
|128BD2| db $22 ; Repeat byte
|128BD3| db $00
|128BD4| db $02 ; Raw block
|128BD5| db $04, $0E, $0F
|128BD8| db $45 ; Repeat word
|128BD9| dw $FFFE
|128BDB| db $09 ; Raw block
|128BDC| db $3C, $3F, $40, $CF, $01, $FE, $13, $FD
|128BE4| db $03, $FD
|128BE6| db $22 ; Repeat byte
|128BE7| db $00
|128BE8| db $01 ; Raw block
|128BE9| db $C0, $30
|128BEB| db $22 ; Repeat byte
|128BEC| db $00
|128BED| db $0F ; Raw block
|128BEE| db $03, $FD, $73, $9D, $63, $BD, $01, $FF
|128BF6| db $F1, $FC, $F8, $F8, $7C, $7C, $BE, $BE
|128BFE| db $23 ; Repeat byte
|128BFF| db $00
|128C00| db $E0, $2D ; EXT Raw block
|128C02| db $03, $07, $83, $41, $FC, $FE, $3C, $FC
|128C0A| db $40, $C0, $88, $88, $04, $00, $4D, $00
|128C12| db $C1, $01, $FD, $81, $01, $03, $3F, $77
|128C1A| db $FF, $FF, $FE, $7E, $FD, $FD, $9E, $FE
|128C22| db $8F, $FF, $80, $FF, $8F, $F0, $8E, $F1
|128C2A| db $CC, $F3, $E8, $F7, $02, $01
|128C30| db $25 ; Repeat byte
|128C31| db $00
|128C32| db $09 ; Raw block
|128C33| db $87, $78, $4F, $B5, $7A, $8D, $7B, $BC
|128C3B| db $47, $B8
|128C3D| db $43 ; Repeat word
|128C3E| dw $00FF
|128C40| db $01 ; Raw block
|128C41| db $DF, $60
|128C43| db $27 ; Repeat byte
|128C44| db $00
|128C45| db $0B ; Raw block
|128C46| db $FF, $80, $E7, $00, $3F, $00, $1E, $01
|128C4E| db $BC, $83, $78, $87
|128C52| db $43 ; Repeat word
|128C53| dw $03FC
|128C55| db $13 ; Raw block
|128C56| db $7C, $F9, $F3, $E7, $4F, $1F, $03, $03
|128C5E| db $0F, $FF, $1F, $FF, $37, $FF, $67, $FF
|128C66| db $C3, $FF, $F1, $FF
|128C6A| db $83 ; Copy past
|128C6B| dw $0022
|128C6D| db $27 ; Repeat byte
|128C6E| db $00
|128C6F| db $17 ; Raw block
|128C70| db $01, $0F, $10, $06, $1A, $03, $7B, $03
|128C78| db $33, $83, $43, $C3, $3E, $FF, $9C, $BF
|128C80| db $F0, $F9, $FC, $FC, $7C, $3C, $00, $40
|128C88| db $9F ; Copy past
|128C89| dw $0060
|128C8B| db $43 ; Repeat word
|128C8C| dw $0E29
|128C8E| db $84 ; Copy past
|128C8F| dw $0084
|128C91| db $22 ; Repeat byte
|128C92| db $F8
|128C93| db $83 ; Copy past
|128C94| dw $008C
|128C96| db $E0, $23 ; EXT Raw block
|128C98| db $0C, $74, $00, $10, $01, $11, $08, $10
|128CA0| db $2C, $38, $4F, $7C, $CE, $FE, $C6, $FE
|128CA8| db $83, $EF, $EE, $EF, $C7, $83, $01, $01
|128CB0| db $0C, $10, $1C, $10, $5D, $10, $DF, $10
|128CB8| db $2E, $38, $4F, $7C
|128CBC| db $43 ; Repeat word
|128CBD| dw $FECE
|128CBF| db $23 ; Repeat byte
|128CC0| db $EF
|128CC1| db $83 ; Copy past
|128CC2| dw $0344
|128CC4| db $09 ; Raw block
|128CC5| db $03, $03, $07, $87, $08, $8F, $00, $FF
|128CCD| db $9E, $0F
|128CCF| db $83 ; Copy past
|128CD0| dw $0179
|128CD2| db $E0, $21 ; EXT Raw block
|128CD4| db $24, $20, $FC, $78, $70, $00, $70, $78
|128CDC| db $FC, $DF, $13, $03, $37, $07, $08, $0F
|128CE4| db $70, $FF, $FF, $0F, $FF, $07, $1F, $03
|128CEC| db $34, $00, $FC, $F8, $F0, $00, $F0, $F8
|128CF4| db $FC, $FF
|128CF6| db $43 ; Repeat word
|128CF7| dw $E020
|128CF9| db $E0, $2B ; EXT Raw block
|128CFB| db $F0, $F0, $38, $38, $1E, $1E, $0F, $0F
|128D03| db $0C, $0F, $04, $07, $1F, $1F, $0F, $C7
|128D0B| db $E1, $F0, $F0, $F8, $47, $C7, $BF, $FF
|128D13| db $58, $7F, $60, $7F, $61, $71, $42, $72
|128D1B| db $C7, $F7, $CB, $FB, $38, $00, $80, $80
|128D23| db $8E, $8D, $08, $04
|128D27| db $87 ; Copy past
|128D28| dw $0078
|128D2A| db $43 ; Repeat word
|128D2B| dw $0E29
|128D2D| db $84 ; Copy past
|128D2E| dw $0084
|128D30| db $22 ; Repeat byte
|128D31| db $F8
|128D32| db $83 ; Copy past
|128D33| dw $008C
|128D35| db $E0, $29 ; EXT Raw block
|128D37| db $E4, $D8, $78, $64, $39, $21, $2C, $30
|128D3F| db $6B, $70, $6C, $74, $CA, $F6, $9A, $E6
|128D47| db $03, $83, $C6, $C7, $87, $83, $01, $01
|128D4F| db $83, $83, $CE, $CF, $FC, $7F, $61, $9E
|128D57| db $7F, $80, $94, $47, $0B, $03, $28, $20
|128D5F| db $7C, $30
|128D61| db $22 ; Repeat byte
|128D62| db $00
|128D63| db $0E ; Raw block
|128D64| db $38, $FC, $DF, $FF, $33, $FF, $73, $FF
|128D6C| db $E3, $FF, $C3, $FF, $07, $FF, $0F
|128D73| db $23 ; Repeat byte
|128D74| db $FF
|128D75| db $22 ; Repeat byte
|128D76| db $F8
|128D77| db $01 ; Raw block
|128D78| db $F0, $E0
|128D7A| db $22 ; Repeat byte
|128D7B| db $00
|128D7C| db $1D ; Raw block
|128D7D| db $FF, $83, $FF, $C7, $7D, $C7, $FE, $C7
|128D85| db $FF, $C3, $FF, $81, $FF, $18, $FF, $3C
|128D8D| db $FF, $FF, $EF, $EF, $C7, $C3, $81, $00
|128D95| db $EF, $FC, $DF, $F8, $FF, $71
|128D9B| db $44 ; Repeat word
|128D9C| dw $03FF
|128D9E| db $0E ; Raw block
|128D9F| db $01, $FF, $78, $DF, $FC, $FE, $FC, $F8
|128DA7| db $F0, $C0, $F0, $FC, $FE, $FF, $07
|128DAE| db $43 ; Repeat word
|128DAF| dw $0FFB
|128DB1| db $05 ; Raw block
|128DB2| db $FC, $0F, $FF, $77, $DF, $FB
|128DB8| db $43 ; Repeat word
|128DB9| dw $FCEF
|128DBB| db $25 ; Repeat byte
|128DBC| db $FF
|128DBD| db $11 ; Raw block
|128DBE| db $FC, $FD, $FF, $79, $EF, $F9, $EF, $F8
|128DC6| db $9F, $F8, $FF, $F1, $FF, $01, $FF, $03
|128DCE| db $FF, $CF
|128DD0| db $24 ; Repeat byte
|128DD1| db $FC
|128DD2| db $E0, $25 ; EXT Raw block
|128DD4| db $F8, $00, $00, $FE, $E6, $C7, $C3, $85
|128DDC| db $81, $05, $01, $0D, $01, $7A, $03, $B5
|128DE4| db $86, $CB, $CC, $19, $3C, $7E, $FE, $FE
|128DEC| db $FC, $78, $30, $C6, $C6, $A3, $83, $A3
|128DF4| db $01, $7D, $01, $82, $83, $7D
|128DFA| db $84 ; Copy past
|128DFB| dw $0053
|128DFD| db $04 ; Raw block
|128DFE| db $39, $7C, $FE, $FE, $7C
|128E03| db $22 ; Repeat byte
|128E04| db $00
|128E05| db $05 ; Raw block
|128E06| db $E3, $E3, $C5, $C1, $86, $80
|128E0C| db $83 ; Copy past
|128E0D| dw $00F6
|128E0F| db $12 ; Raw block
|128E10| db $FA, $83, $C5, $C6, $7B, $7C, $1C, $3E
|128E18| db $7F, $FF, $FE, $7C, $38, $80, $EB, $CC
|128E20| db $95, $86, $75
|128E23| db $44 ; Repeat word
|128E24| dw $1506
|128E26| db $07 ; Raw block
|128E27| db $95, $86, $EB, $CC, $77, $78, $30, $78
|128E2F| db $22 ; Repeat byte
|128E30| db $F8
|128E31| db $02 ; Raw block
|128E32| db $78, $30, $80
|128E35| db $94 ; Copy past
|128E36| dw $0048
|128E38| db $22 ; Repeat byte
|128E39| db $00
|128E3A| db $0F ; Raw block
|128E3B| db $E7, $FF, $E0, $FF, $CF, $FF, $10, $F0
|128E43| db $28, $E0, $25, $E0, $23, $E0, $3F, $FF
|128E4B| db $22 ; Repeat byte
|128E4C| db $00
|128E4D| db $00 ; Raw block
|128E4E| db $0F
|128E4F| db $22 ; Repeat byte
|128E50| db $1F
|128E51| db $E0, $22 ; EXT Raw block
|128E53| db $00, $FF, $E8, $DF, $E0, $3C, $C3, $BC
|128E5B| db $C3, $70, $4F, $38, $07, $7C, $03, $FE
|128E63| db $01, $00, $03, $03, $1F, $8F, $C7, $83
|128E6B| db $01, $FF, $EC, $FF, $08, $FF, $C0, $7E
|128E73| db $61, $3C, $23
|128E76| db $83 ; Copy past
|128E77| dw $051A
|128E79| db $09 ; Raw block
|128E7A| db $FC, $03, $00, $01, $03, $87, $CF, $DF
|128E82| db $83, $03
|128E84| db $97 ; Copy past
|128E85| dw $0030
|128E87| db $E0, $35 ; EXT Raw block
|128E89| db $F7, $80, $F7, $00, $7C, $43, $BC, $C3
|128E91| db $B0, $CF, $58, $E7, $9C, $63, $FE, $01
|128E99| db $7B, $FB, $83, $1F, $0F, $07, $03, $01
|128EA1| db $C1, $FE, $9E, $FF, $22, $E1, $44, $C1
|128EA9| db $5A, $C3, $45, $C6, $39, $FE, $47, $B9
|128EB1| db $00, $00, $1E, $3E, $3C, $38, $00, $00
|128EB9| db $C0, $FF, $9D, $FE, $22, $E3
|128EBF| db $43 ; Repeat word
|128EC0| dw $C34A
|128EC2| db $1D ; Raw block
|128EC3| db $55, $C6, $69, $CE, $87, $79, $00, $00
|128ECB| db $1C, $3C, $3C, $38, $30, $00, $3F, $C1
|128ED3| db $7F, $81, $C3, $3C, $E1, $7E, $4F, $CE
|128EDB| db $B9, $7E, $42, $BD, $26, $D9
|128EE1| db $23 ; Repeat byte
|128EE2| db $00
|128EE3| db $00 ; Raw block
|128EE4| db $30
|128EE5| db $22 ; Repeat byte
|128EE6| db $00
|128EE7| db $0F ; Raw block
|128EE8| db $3E, $C1, $27, $D8, $70, $BF, $8F, $0F
|128EF0| db $78, $FF, $F0, $3F, $61, $9F, $3F, $C1
|128EF8| db $22 ; Repeat byte
|128EF9| db $00
|128EFA| db $00 ; Raw block
|128EFB| db $70
|128EFC| db $23 ; Repeat byte
|128EFD| db $00
|128EFE| db $11 ; Raw block
|128EFF| db $0B, $03, $96, $87, $7C, $FF, $81, $7E
|128F07| db $FF, $00, $23, $BC, $11, $1E, $39, $1E
|128F0F| db $FC, $78
|128F11| db $22 ; Repeat byte
|128F12| db $00
|128F13| db $13 ; Raw block
|128F14| db $40, $E0, $E0, $19, $1E, $71, $FE, $A3
|128F1C| db $7C, $7F, $80, $33, $BC, $A9, $8E, $14
|128F24| db $07, $16, $07, $E0
|128F28| db $22 ; Repeat byte
|128F29| db $00
|128F2A| db $03 ; Raw block
|128F2B| db $40, $70, $F8, $F8
|128F2F| db $FF ; End of GFX 12

;===================================================================================================

GFX_13:
|128F30| db $43 ; Repeat word
|128F31| dw $00FF
|128F33| db $E0, $41 ; EXT Raw block
|128F35| db $FE, $00, $FC, $00, $F9, $01, $F9, $09
|128F3D| db $E9, $09, $CA, $0B, $01, $03, $07, $0F
|128F45| db $1E, $36, $76, $F4, $95, $16, $93, $94
|128F4D| db $96, $99, $AE, $B1, $10, $2F, $30, $4F
|128F55| db $70, $8F, $80, $7F, $E9, $6B, $67, $4F
|128F5D| db $DF, $BF, $7F, $FF, $E0, $00, $DF, $20
|128F65| db $B4, $C4, $62, $82, $41, $81, $C0, $BF
|128F6D| db $7F, $80, $FF, $00, $FF, $DF, $3B, $7D
|128F75| db $7E, $40
|128F77| db $23 ; Repeat byte
|128F78| db $00
|128F79| db $E0, $35 ; EXT Raw block
|128F7B| db $FF, $00, $47, $40, $2C, $28, $91, $99
|128F83| db $04, $FC, $FC, $03, $FF, $00, $FF, $FF
|128F8B| db $BF, $D7, $66, $03, $00, $00, $D1, $12
|128F93| db $E5, $26, $ED, $2E, $C9, $0A, $D9, $1A
|128F9B| db $D1, $12, $D5, $16, $E5, $26, $EC, $D8
|128FA3| db $D0, $F4, $E4, $EC, $E8, $D8, $E9, $2A
|128FAB| db $C9, $0A, $D1, $12, $E1, $22
|128FB1| db $85 ; Copy past
|128FB2| dw $0062
|128FB4| db $09 ; Raw block
|128FB5| db $D1, $12, $D4, $F4, $EC, $DC, $D8, $D0
|128FBD| db $F4, $EC
|128FBF| db $43 ; Repeat word
|128FC0| dw $00FF
|128FC2| db $09 ; Raw block
|128FC3| db $86, $86, $71, $71, $1C, $1C, $D8, $F7
|128FCB| db $FF, $E3
|128FCD| db $83 ; Copy past
|128FCE| dw $0056
|128FD0| db $04 ; Raw block
|128FD1| db $79, $8E, $E3, $10, $E3
|128FD6| db $44 ; Repeat word
|128FD7| dw $FF00
|128FD9| db $93 ; Copy past
|128FDA| dw $0094
|128FDC| db $95 ; Copy past
|128FDD| dw $0030
|128FDF| db $23 ; Repeat byte
|128FE0| db $00
|128FE1| db $95 ; Copy past
|128FE2| dw $004A
|128FE4| db $97 ; Copy past
|128FE5| dw $0078
|128FE7| db $97 ; Copy past
|128FE8| dw $0078
|128FEA| db $44 ; Repeat word
|128FEB| dw $7B00
|128FED| db $05 ; Raw block
|128FEE| db $3F, $01, $DF, $13, $FF, $04
|128FF4| db $43 ; Repeat word
|128FF5| dw $00FF
|128FF7| db $08 ; Raw block
|128FF8| db $00, $FF, $FF, $FC, $F8, $E0, $E0, $C0
|129000| db $FF
|129001| db $44 ; Repeat word
|129002| dw $FB00
|129004| db $05 ; Raw block
|129005| db $F7, $80, $FF, $C8, $FF, $F8
|12900B| db $43 ; Repeat word
|12900C| dw $00FF
|12900E| db $08 ; Raw block
|12900F| db $80, $FF, $FF, $7F, $07, $03, $03, $01
|129017| db $7F
|129018| db $22 ; Repeat byte
|129019| db $00
|12901A| db $07 ; Raw block
|12901B| db $FF, $01, $FE, $03, $FC, $FF, $00, $FF
|129023| db $44 ; Repeat word
|129024| dw $807F
|129026| db $00 ; Raw block
|129027| db $FF
|129028| db $27 ; Repeat byte
|129029| db $00
|12902A| db $00 ; Raw block
|12902B| db $80
|12902C| db $43 ; Repeat word
|12902D| dw $3F80
|12902F| db $0C ; Raw block
|129030| db $C0, $3F, $FF, $00, $FF, $3F, $C0, $BF
|129038| db $60, $DF, $7F, $40, $40
|12903D| db $24 ; Repeat byte
|12903E| db $00
|12903F| db $43 ; Repeat word
|129040| dw $00FF
|129042| db $85 ; Copy past
|129043| dw $0094
|129045| db $03 ; Raw block
|129046| db $C6, $C6, $00, $FF
|12904A| db $86 ; Copy past
|12904B| dw $009E
|12904D| db $02 ; Raw block
|12904E| db $39, $00, $FF
|129051| db $43 ; Repeat word
|129052| dw $00FF
|129054| db $07 ; Raw block
|129055| db $39, $39, $84, $84, $63, $63, $30, $30
|12905D| db $85 ; Copy past
|12905E| dw $018C
|129060| db $05 ; Raw block
|129061| db $C6, $7B, $9C, $CF, $00, $FF
|129067| db $8F ; Copy past
|129068| dw $0060
|12906A| db $07 ; Raw block
|12906B| db $ED, $D9, $D1, $F5, $E5, $ED, $E9, $D9
|129073| db $97 ; Copy past
|129074| dw $01B0
|129076| db $43 ; Repeat word
|129077| dw $00FF
|129079| db $13 ; Raw block
|12907A| db $D0, $30, $EB, $3B, $D4, $1C, $CA, $0E
|129082| db $CC, $0F, $D0, $13, $FF, $FF, $CF, $C4
|12908A| db $E3, $F1, $F0, $EC
|12908E| db $43 ; Repeat word
|12908F| dw $02C1
|129091| db $0B ; Raw block
|129092| db $21, $02, $11, $02, $09, $02, $05, $02
|12909A| db $01, $FE, $FF, $00
|12909E| db $25 ; Repeat byte
|12909F| db $FD
|1290A0| db $05 ; Raw block
|1290A1| db $01, $FF, $1C, $E3, $08, $F7
|1290A7| db $83 ; Copy past
|1290A8| dw $0154
|1290AA| db $43 ; Repeat word
|1290AB| dw $FF00
|1290AD| db $03 ; Raw block
|1290AE| db $18, $E7, $00, $00
|1290B2| db $27 ; Repeat byte
|1290B3| db $FF
|1290B4| db $01 ; Raw block
|1290B5| db $10, $EF
|1290B7| db $4C ; Repeat word
|1290B8| dw $FF00
|1290BA| db $00 ; Raw block
|1290BB| db $00
|1290BC| db $27 ; Repeat byte
|1290BD| db $FF
|1290BE| db $0F ; Raw block
|1290BF| db $00, $FE, $80, $7E, $C0, $3E, $82, $7C
|1290C7| db $02, $FC, $00, $FE, $18, $E6, $00, $FE
|1290CF| db $27 ; Repeat byte
|1290D0| db $FF
|1290D1| db $47 ; Repeat word
|1290D2| dw $FE00
|1290D4| db $01 ; Raw block
|1290D5| db $80, $7E
|1290D7| db $45 ; Repeat word
|1290D8| dw $FE00
|1290DA| db $27 ; Repeat byte
|1290DB| db $FF
|1290DC| db $84 ; Copy past
|1290DD| dw $0001
|1290DF| db $00 ; Raw block
|1290E0| db $FD
|1290E1| db $83 ; Copy past
|1290E2| dw $013A
|1290E4| db $1D ; Raw block
|1290E5| db $01, $EE, $03, $DD, $04, $BB, $FE, $FD
|1290ED| db $FA, $F4, $E8, $D0, $A0, $40, $8C, $F3
|1290F5| db $9B, $6C, $73, $9C, $67, $B9, $CF, $73
|1290FD| db $9F, $E7, $3F, $CF, $7F, $9F
|129103| db $22 ; Repeat byte
|129104| db $00
|129105| db $14 ; Raw block
|129106| db $01, $03, $07, $0E, $1C, $BF, $40, $EB
|12910E| db $14, $DF, $20, $AF, $50, $FF, $00, $BF
|129116| db $40, $FE, $01, $FC, $03
|12911B| db $27 ; Repeat byte
|12911C| db $00
|12911D| db $0B ; Raw block
|12911E| db $06, $05, $FC, $0B, $08, $06, $10, $0C
|129126| db $20, $18, $3C, $C0
|12912A| db $43 ; Repeat word
|12912B| dw $00FC
|12912D| db $04 ; Raw block
|12912E| db $F9, $F3, $F7, $EF, $DF
|129133| db $22 ; Repeat byte
|129134| db $03
|129135| db $E0, $27 ; EXT Raw block
|129137| db $30, $8F, $23, $DC, $12, $2D, $C0, $3F
|12913F| db $34, $CB, $18, $E5, $0D, $F2, $02, $FD
|129147| db $7F, $3F, $DF, $CF, $F7, $FB, $FD, $FE
|12914F| db $80, $7E, $40, $BE, $20, $DE, $10, $EE
|129157| db $08, $F6, $04, $FA, $02, $FC, $00, $00
|12915F| db $27 ; Repeat byte
|129160| db $FF
|129161| db $17 ; Raw block
|129162| db $E5, $26, $D5, $16, $D1, $16, $DB, $1C
|12916A| db $CF, $08, $EB, $2C, $E1, $26, $D1, $16
|129172| db $D8, $E8, $E8, $E0, $F0, $D0, $D8, $E8
|12917A| db $97 ; Copy past
|12917B| dw $0300
|12917D| db $22 ; Repeat byte
|12917E| db $00
|12917F| db $44 ; Repeat word
|129180| dw $00FF
|129182| db $83 ; Copy past
|129183| dw $0158
|129185| db $00 ; Raw block
|129186| db $C0
|129187| db $83 ; Copy past
|129188| dw $015D
|12918A| db $26 ; Repeat byte
|12918B| db $00
|12918C| db $0A ; Raw block
|12918D| db $C0, $80, $00, $BF, $80, $3F, $C0, $7F
|129195| db $FF, $00, $FF
|129198| db $44 ; Repeat word
|129199| dw $00FF
|12919B| db $02 ; Raw block
|12919C| db $7F, $40, $40
|12919F| db $24 ; Repeat byte
|1291A0| db $00
|1291A1| db $4B ; Repeat word
|1291A2| dw $770C
|1291A4| db $03 ; Raw block
|1291A5| db $9C, $17, $FC, $87
|1291A9| db $25 ; Repeat byte
|1291AA| db $80
|1291AB| db $01 ; Raw block
|1291AC| db $E0, $00
|1291AE| db $4B ; Repeat word
|1291AF| dw $770C
|1291B1| db $03 ; Raw block
|1291B2| db $0A, $73, $0B, $74
|1291B6| db $25 ; Repeat byte
|1291B7| db $80
|1291B8| db $12 ; Raw block
|1291B9| db $84, $80, $00, $00, $40, $3F, $20, $5F
|1291C1| db $10, $6F, $0F, $70, $0F, $77, $0E, $75
|1291C9| db $0D, $76, $FF
|1291CC| db $26 ; Repeat byte
|1291CD| db $80
|1291CE| db $10 ; Raw block
|1291CF| db $8C, $77, $4C, $F7, $2C, $F7, $1C, $F7
|1291D7| db $FC, $0F, $F8, $FB, $02, $FF, $01, $FF
|1291DF| db $80
|1291E0| db $23 ; Repeat byte
|1291E1| db $00
|1291E2| db $14 ; Raw block
|1291E3| db $04, $00, $00, $E4, $27, $D4, $17, $D8
|1291EB| db $1F, $D2, $1D, $D6, $19, $F6, $39, $EA
|1291F3| db $2D, $D0, $17, $D8, $E9
|1291F8| db $22 ; Repeat byte
|1291F9| db $E1
|1291FA| db $13 ; Raw block
|1291FB| db $C1, $D1, $E9, $3C, $00, $18, $E7, $0C
|129203| db $F3, $06, $F9, $FF, $00, $FF, $C7, $38
|12920B| db $CF, $30, $DF, $E7
|12920F| db $26 ; Repeat byte
|129210| db $00
|129211| db $43 ; Repeat word
|129212| dw $770C
|129214| db $0B ; Raw block
|129215| db $8F, $70, $CF, $31, $EE, $13, $BC, $47
|12921D| db $1C, $67, $0C, $77
|129221| db $22 ; Repeat byte
|129222| db $80
|129223| db $01 ; Raw block
|129224| db $00, $00
|129226| db $22 ; Repeat byte
|129227| db $80
|129228| db $16 ; Raw block
|129229| db $F9, $3E, $F3, $7C, $E6, $F9, $CE, $F3
|129231| db $9E, $E7, $3E, $CF, $7E, $9F, $C0, $3F
|129239| db $3E, $7C, $F8, $F0, $E0, $C0, $80
|129240| db $44 ; Repeat word
|129241| dw $FF00
|129243| db $27 ; Repeat byte
|129244| db $FF
|129245| db $02 ; Raw block
|129246| db $00, $FF, $FF
|129249| db $22 ; Repeat byte
|12924A| db $00
|12924B| db $24 ; Repeat byte
|12924C| db $FF
|12924D| db $00 ; Raw block
|12924E| db $00
|12924F| db $4E ; Repeat word
|129250| dw $3EFD
|129252| db $28 ; Repeat byte
|129253| db $3E
|129254| db $44 ; Repeat word
|129255| dw $00FF
|129257| db $46 ; Repeat word
|129258| dw $FF3F
|12925A| db $05 ; Raw block
|12925B| db $FC, $3F, $FD, $3E, $00, $00
|129261| db $24 ; Repeat byte
|129262| db $3F
|129263| db $45 ; Repeat word
|129264| dw $FD3E
|129266| db $46 ; Repeat word
|129267| dw $FDFE
|129269| db $83 ; Copy past
|12926A| dw $0204
|12926C| db $01 ; Raw block
|12926D| db $3E, $3E
|12926F| db $24 ; Repeat byte
|129270| db $FE
|129271| db $E4, $60 ; EXT Repeat byte
|129273| db $00
|129274| db $43 ; Repeat word
|129275| dw $00FF
|129277| db $0A ; Raw block
|129278| db $86, $86, $7D, $7D, $22, $3E, $CC, $F3
|129280| db $1E, $E1, $00
|129283| db $22 ; Repeat byte
|129284| db $FF
|129285| db $05 ; Raw block
|129286| db $79, $82, $C1, $00, $00, $7F
|12928C| db $E4, $47 ; EXT Repeat byte
|12928E| db $00
|12928F| db $97 ; Copy past
|129290| dw $0030
|129292| db $0B ; Raw block
|129293| db $08, $07, $FF, $00, $3F, $40, $27, $58
|12929B| db $5F, $60, $0F, $F0
|12929F| db $43 ; Repeat word
|1292A0| dw $00FF
|1292A2| db $1F ; Raw block
|1292A3| db $F7, $F7, $87, $9F, $8F, $07, $03, $01
|1292AB| db $58, $A7, $16, $EF, $2C, $DF, $0C, $FF
|1292B3| db $2C, $FF, $36, $FF, $08, $FF, $24, $18
|1292BB| db $F8, $F0, $E1, $C1, $81, $80, $C0, $E7
|1292C3| db $83 ; Copy past
|1292C4| dw $0240
|1292C6| db $08 ; Raw block
|1292C7| db $2D, $DE, $C4, $3F, $BA, $7F, $7D, $FE
|1292CF| db $44
|1292D0| db $83 ; Copy past
|1292D1| dw $0265
|1292D3| db $E0, $21 ; EXT Raw block
|1292D5| db $F3, $E1, $C0, $80, $01, $01, $39, $00
|1292DD| db $1E, $00, $DE, $00, $EE, $08, $FE, $00
|1292E5| db $FE, $04, $3E, $08, $FE, $18, $FE, $FF
|1292ED| db $FF, $FD, $F1, $F1, $E1, $C1, $C1, $1C
|1292F5| db $FF, $0C
|1292F7| db $44 ; Repeat word
|1292F8| dw $04FE
|1292FA| db $03 ; Raw block
|1292FB| db $0C, $DE, $00, $3E
|1292FF| db $43 ; Repeat word
|129300| dw $FE00
|129302| db $00 ; Raw block
|129303| db $C0
|129304| db $23 ; Repeat byte
|129305| db $E1
|129306| db $04 ; Raw block
|129307| db $F1, $FD, $FF, $0F, $70
|12930C| db $49 ; Repeat word
|12930D| dw $770C
|12930F| db $03 ; Raw block
|129310| db $1C, $67, $3C, $47
|129314| db $27 ; Repeat byte
|129315| db $80
|129316| db $05 ; Raw block
|129317| db $7E, $83, $1F, $01, $0D, $76
|12931D| db $49 ; Repeat word
|12931E| dw $770C
|129320| db $01 ; Raw block
|129321| db $00, $E0
|129323| db $25 ; Repeat byte
|129324| db $80
|129325| db $FF ; End of GFX 13

;===================================================================================================

GFX_14:
|129326| db $02 ; Raw block
|129327| db $03, $00, $07
|12932A| db $44 ; Repeat word
|12932B| dw $0600
|12932D| db $07 ; Raw block
|12932E| db $7E, $00, $FC, $00, $E1, $00, $CE, $0E
|129336| db $26 ; Repeat byte
|129337| db $FF
|129338| db $E0, $28 ; EXT Raw block
|12933A| db $F1, $88, $0F, $A8, $0F, $02, $07, $0D
|129342| db $07, $C1, $C3, $96, $F3, $45, $7D, $3A
|12934A| db $3E, $F0, $F0, $F8, $F8, $3C, $0C, $82
|129352| db $C1, $99, $00, $FF, $00, $77, $00, $AA
|12935A| db $88, $85, $8D, $50, $DD, $52, $D2, $10
|129362| db $DF
|129363| db $22 ; Repeat byte
|129364| db $FF
|129365| db $0C ; Raw block
|129366| db $77, $72, $22, $2D, $20, $CC, $00, $DE
|12936E| db $00, $73, $00, $AD, $8C
|129373| db $43 ; Repeat word
|129374| dw $DE52
|129376| db $03 ; Raw block
|129377| db $12, $12, $01, $DF
|12937B| db $22 ; Repeat byte
|12937C| db $FF
|12937D| db $E0, $24 ; EXT Raw block
|12937F| db $73, $21, $21, $ED, $20, $D8, $1F, $66
|129387| db $07, $70, $00, $E7, $07, $D0, $1D, $68
|12938F| db $0D, $72, $03, $E8, $0D, $E0, $F8, $FF
|129397| db $F8, $E2, $F2, $FC, $F2, $D0, $1D, $EC
|12939F| db $0D, $30, $00, $6E, $0F
|1293A4| db $43 ; Repeat word
|1293A5| dw $1DD0
|1293A7| db $1F ; Raw block
|1293A8| db $6E, $0F, $31, $01, $E2, $F2, $FF, $F0
|1293B0| db $E2, $E2, $F0, $FE, $FF, $00, $C8, $00
|1293B8| db $75, $75, $F6, $01, $FF, $00, $F3, $4E
|1293C0| db $B9, $67, $FF, $F0, $FF, $FF, $8A, $08
|1293C8| db $23 ; Repeat byte
|1293C9| db $00
|1293CA| db $83 ; Copy past
|1293CB| dw $0090
|1293CD| db $0B ; Raw block
|1293CE| db $50, $75, $A1, $D6, $77, $80, $74, $AB
|1293D6| db $9E, $71, $DF, $20
|1293DA| db $83 ; Copy past
|1293DB| dw $00A0
|1293DD| db $00 ; Raw block
|1293DE| db $08
|1293DF| db $22 ; Repeat byte
|1293E0| db $00
|1293E1| db $8F ; Copy past
|1293E2| dw $0030
|1293E4| db $22 ; Repeat byte
|1293E5| db $FF
|1293E6| db $8C ; Copy past
|1293E7| dw $0043
|1293E9| db $43 ; Repeat word
|1293EA| dw $DE52
|1293EC| db $83 ; Copy past
|1293ED| dw $0054
|1293EF| db $22 ; Repeat byte
|1293F0| db $FF
|1293F1| db $F0, $24 ; EXT Copy past
|1293F3| dw $005B
|1293F5| db $43 ; Repeat word
|1293F6| dw $1DD0
|1293F8| db $8B ; Copy past
|1293F9| dw $0084
|1293FB| db $E0, $59 ; EXT Raw block
|1293FD| db $D1, $5E, $00, $D3, $28, $F1, $5E, $FC
|129405| db $7E, $FE, $4E, $CE, $7F, $FF, $01, $FE
|12940D| db $20, $2C, $0E, $03, $01, $31, $00, $00
|129415| db $E6, $1E, $C8, $30, $4F, $AF, $5F, $BF
|12941D| db $DD, $BD, $D9, $B9, $6F, $9F, $F0, $0F
|129425| db $01, $0F, $10, $00, $02, $06, $00, $00
|12942D| db $03, $04, $B3, $FD, $26, $F8, $0E, $F1
|129435| db $F9, $06, $F3, $83, $30, $CF, $10, $EF
|12943D| db $F8, $00, $01, $00, $00, $0C, $00, $00
|129445| db $B8, $A0, $6D, $63, $9E, $F9, $0E, $F9
|12944D| db $FF, $00, $FB, $CB, $30, $D7, $30, $DF
|129455| db $47, $90
|129457| db $22 ; Repeat byte
|129458| db $00
|129459| db $12 ; Raw block
|12945A| db $04, $08, $00, $C7, $00, $EF, $00, $7C
|129462| db $00, $BA, $82, $43, $C3, $55, $C7, $00
|12946A| db $C7, $10, $C7
|12946D| db $22 ; Repeat byte
|12946E| db $FF
|12946F| db $01 ; Raw block
|129470| db $7D, $3C
|129472| db $22 ; Repeat byte
|129473| db $38
|129474| db $0F ; Raw block
|129475| db $87, $00, $CF, $00, $FE, $00, $70, $00
|12947D| db $02, $00, $65, $05, $0D, $0D, $A8, $8D
|129485| db $24 ; Repeat byte
|129486| db $FF
|129487| db $14 ; Raw block
|129488| db $FA, $F2, $72, $D0, $1F, $EC, $0F, $70
|129490| db $00, $35, $00, $70, $00, $E4, $07, $D8
|129498| db $1F, $CC, $0F, $E0, $F0
|12949D| db $22 ; Repeat byte
|12949E| db $FF
|12949F| db $13 ; Raw block
|1294A0| db $F8, $E0, $F0, $E1, $01, $74, $00, $35
|1294A8| db $00, $30, $00, $63, $03, $E6, $07, $E8
|1294B0| db $00, $C6, $07, $FE
|1294B4| db $22 ; Repeat byte
|1294B5| db $FF
|1294B6| db $1D ; Raw block
|1294B7| db $FC, $F8, $FF, $F8, $3F, $00, $7F, $00
|1294BF| db $EB, $18, $D5, $2C, $EA, $36, $D5, $1B
|1294C7| db $CA, $0D, $E5, $06, $FF, $FF, $E7, $C3
|1294CF| db $C1, $E0, $F0, $F8, $F8, $0F
|1294D5| db $43 ; Repeat word
|1294D6| dw $07E4
|1294D8| db $E0, $2C ; EXT Raw block
|1294DA| db $92, $03, $C8, $C1, $25, $E1, $12, $F0
|1294E2| db $04, $FC, $F0, $F8, $F8, $FC, $3E, $1E
|1294EA| db $0F, $03, $28, $EF, $00, $EF, $D0, $F9
|1294F2| db $EB, $FB, $FF, $FF, $BF, $BF, $9F, $9F
|1294FA| db $00, $FF, $10, $10, $06, $04, $00, $40
|129502| db $60, $00, $82, $8F, $F0
|129507| db $44 ; Repeat word
|129508| dw $57DF
|12950A| db $08 ; Raw block
|12950B| db $07, $DF, $AD, $FD, $DF, $FF, $00, $FF
|129513| db $70
|129514| db $23 ; Repeat byte
|129515| db $20
|129516| db $02 ; Raw block
|129517| db $02, $00, $00
|12951A| db $43 ; Repeat word
|12951B| dw $FF3E
|12951D| db $0B ; Raw block
|12951E| db $9E, $FF, $2E, $3F, $9E, $FF, $0E, $CF
|129526| db $1E, $DF, $1E, $FF
|12952A| db $22 ; Repeat byte
|12952B| db $00
|12952C| db $E0, $44 ; EXT Raw block
|12952E| db $C0, $00, $30, $20, $00, $8E, $FF, $72
|129536| db $7F, $44, $07, $72, $7F, $0E, $FF, $3E
|12953E| db $FF, $B6, $F7, $32, $F3, $00, $80, $F8
|129546| db $80, $00, $00, $08, $0C, $9E, $BF, $2C
|12954E| db $FE, $C8, $FD, $F0, $FB, $62, $77, $C3
|129556| db $EE, $83, $DD, $04, $BB, $40, $01, $02
|12955E| db $04, $88, $10, $20, $40, $8C, $F3, $9B
|129566| db $6C, $73, $9C, $67, $B9, $CF, $73, $9F
|12956E| db $E7, $3E, $CF, $7D, $9F
|129573| db $22 ; Repeat byte
|129574| db $00
|129575| db $14 ; Raw block
|129576| db $01, $03, $07, $0F, $1F, $BD, $42, $EB
|12957E| db $14, $DF, $20, $AF, $51, $DF, $23, $BF
|129586| db $47, $FE, $0F, $FD, $1F
|12958B| db $22 ; Repeat byte
|12958C| db $00
|12958D| db $84 ; Copy past
|12958E| dw $029B
|129590| db $E0, $28 ; EXT Raw block
|129592| db $FF, $04, $0F, $08, $FE, $00, $FC, $C0
|12959A| db $F8, $80, $FC, $00, $0C, $00, $FC, $00
|1295A2| db $F9, $F3, $07, $CF, $9F, $03, $F3, $03
|1295AA| db $B4, $77, $59, $BF, $A3, $DF, $D3, $EF
|1295B2| db $49, $77, $84, $FB, $32, $FD, $79, $FE
|1295BA| db $08
|1295BB| db $22 ; Repeat byte
|1295BC| db $00
|1295BD| db $00 ; Raw block
|1295BE| db $80
|1295BF| db $22 ; Repeat byte
|1295C0| db $00
|1295C1| db $E0, $28 ; EXT Raw block
|1295C3| db $AA, $2B, $76, $37, $5E, $5F, $AE, $AF
|1295CB| db $76, $77, $BA, $BB, $FC, $FD, $01, $FE
|1295D3| db $D4, $C8, $A0, $50, $88, $44, $02, $00
|1295DB| db $DF, $01, $FD, $27, $BF, $23, $BF, $21
|1295E3| db $CB, $04, $B9, $26, $9D, $06, $AF, $32
|1295EB| db $E0
|1295EC| db $22 ; Repeat byte
|1295ED| db $C0
|1295EE| db $14 ; Raw block
|1295EF| db $F0, $C0, $E0, $C0, $D3, $1C, $ED, $32
|1295F7| db $9C, $27, $AF, $32, $C3, $04, $8F, $30
|1295FF| db $8B, $14, $99, $26, $E0
|129604| db $22 ; Repeat byte
|129605| db $C0
|129606| db $14 ; Raw block
|129607| db $F8, $C0, $E0, $C0, $00, $00, $5C, $FF
|12960F| db $08, $FF, $00, $FF, $FF, $00, $FF, $7F
|129617| db $C6, $7F, $80, $7F, $FF
|12961C| db $26 ; Repeat byte
|12961D| db $00
|12961E| db $03 ; Raw block
|12961F| db $80, $80, $7C, $FF
|129623| db $43 ; Repeat word
|129624| dw $7FC0
|129626| db $83 ; Copy past
|129627| dw $0335
|129629| db $00 ; Raw block
|12962A| db $14
|12962B| db $83 ; Copy past
|12962C| dw $0338
|12962E| db $26 ; Repeat byte
|12962F| db $00
|129630| db $0B ; Raw block
|129631| db $0F, $70, $4E, $77, $0C, $77, $4C, $77
|129639| db $6C, $77, $6E, $77
|12963D| db $83 ; Copy past
|12963E| dw $0362
|129640| db $27 ; Repeat byte
|129641| db $80
|129642| db $06 ; Raw block
|129643| db $BC, $C7, $4C, $77, $0C, $77, $0E
|12964A| db $84 ; Copy past
|12964B| dw $0365
|12964D| db $83 ; Copy past
|12964E| dw $037A
|129650| db $00 ; Raw block
|129651| db $00
|129652| db $26 ; Repeat byte
|129653| db $80
|129654| db $10 ; Raw block
|129655| db $00, $00, $46, $3F, $60, $5F, $50, $6F
|12965D| db $0F, $70, $0F, $77, $0E, $75, $0D, $76
|129665| db $FF
|129666| db $26 ; Repeat byte
|129667| db $80
|129668| db $10 ; Raw block
|129669| db $8C, $77, $4E, $F7, $2E, $F7, $1C, $F7
|129671| db $FC, $0F, $F8, $FB, $42, $FF, $01, $FF
|129679| db $80
|12967A| db $23 ; Repeat byte
|12967B| db $00
|12967C| db $E0, $25 ; EXT Raw block
|12967E| db $04, $00, $00, $D9, $1E, $E3, $03, $70
|129686| db $00, $33, $03, $76, $07, $E5, $06, $C9
|12968E| db $0E, $F3, $03, $E0, $FC, $FF, $FC, $F8
|129696| db $F8, $F0, $FC, $1E, $12, $1C, $FB, $0E
|12969E| db $F9, $0F, $F0, $FF, $04, $FF
|1296A4| db $43 ; Repeat word
|1296A5| dw $07FC
|1296A7| db $01 ; Raw block
|1296A8| db $F8, $E1
|1296AA| db $26 ; Repeat byte
|1296AB| db $00
|1296AC| db $45 ; Repeat word
|1296AD| dw $770C
|1296AF| db $09 ; Raw block
|1296B0| db $CC, $F7, $FC, $67, $FF, $0E, $BF, $C0
|1296B8| db $1F, $60
|1296BA| db $22 ; Repeat byte
|1296BB| db $80
|1296BC| db $23 ; Repeat byte
|1296BD| db $00
|1296BE| db $17 ; Raw block
|1296BF| db $80, $FB, $3E, $FA, $7D, $FB, $FD, $F3
|1296C7| db $FD, $E5, $FB, $0B, $F7, $F7, $8F, $BF
|1296CF| db $7F, $3E, $7C, $FC, $FC, $F8, $F0, $80
|1296D7| db $45 ; Repeat word
|1296D8| dw $FF00
|1296DA| db $0C ; Raw block
|1296DB| db $FF, $F7, $FF, $F0, $FF, $E7, $FF, $0F
|1296E3| db $F8, $F8, $07, $00, $00
|1296E8| db $23 ; Repeat byte
|1296E9| db $FF
|1296EA| db $01 ; Raw block
|1296EB| db $F8, $00
|1296ED| db $45 ; Repeat word
|1296EE| dw $3EFD
|1296F0| db $03 ; Raw block
|1296F1| db $F9, $3E, $E3, $3E
|1296F5| db $45 ; Repeat word
|1296F6| dw $3DF6
|1296F8| db $24 ; Repeat byte
|1296F9| db $3E
|1296FA| db $22 ; Repeat byte
|1296FB| db $3C
|1296FC| db $44 ; Repeat word
|1296FD| dw $00FF
|1296FF| db $00 ; Raw block
|129700| db $1F
|129701| db $45 ; Repeat word
|129702| dw $3FFF
|129704| db $06 ; Raw block
|129705| db $FC, $3F, $FD, $3E, $00, $00, $1F
|12970C| db $23 ; Repeat byte
|12970D| db $3F
|12970E| db $04 ; Raw block
|12970F| db $3E, $F4, $3B, $FA, $3D
|129714| db $43 ; Repeat word
|129715| dw $FEFD
|129717| db $09 ; Raw block
|129718| db $7D, $FE, $B9, $7E, $41, $BE, $3F, $C0
|129720| db $38, $3C
|129722| db $22 ; Repeat byte
|129723| db $FE
|129724| db $01 ; Raw block
|129725| db $7E, $3E
|129727| db $E4, $60 ; EXT Repeat byte
|129729| db $00
|12972A| db $83 ; Copy past
|12972B| dw $0180
|12972D| db $0B ; Raw block
|12972E| db $7D, $00, $B9, $80, $82, $82, $0C, $8E
|129736| db $59, $DF, $D7, $59
|12973A| db $22 ; Repeat byte
|12973B| db $FF
|12973C| db $04 ; Raw block
|12973D| db $7F, $7D, $71, $20, $20
|129742| db $E4, $47 ; EXT Repeat byte
|129744| db $00
|129745| db $0B ; Raw block
|129746| db $EF, $10, $C0, $20, $8F, $C8, $9F, $17
|12974E| db $BF, $2F, $BF, $20
|129752| db $83 ; Copy past
|129753| dw $041E
|129755| db $0A ; Raw block
|129756| db $EF, $DF, $30, $67, $4F, $40, $7F, $00
|12975E| db $FF, $00, $04
|129761| db $43 ; Repeat word
|129762| dw $FC00
|129764| db $1A ; Raw block
|129765| db $C0, $F0, $C0, $F8, $00, $0C, $00, $FE
|12976D| db $00, $FB, $FB, $03, $DF, $CF, $07, $F3
|129775| db $01, $07, $F0, $E7, $F1, $EE, $F2, $CC
|12977D| db $F0, $DD, $E1
|129780| db $43 ; Repeat word
|129781| dw $E3DF
|129783| db $06 ; Raw block
|129784| db $1C, $E3, $08, $08, $01, $03, $02
|12978B| db $22 ; Repeat byte
|12978C| db $00
|12978D| db $43 ; Repeat word
|12978E| dw $FF7E
|129790| db $0B ; Raw block
|129791| db $60, $FF, $0F, $F0, $3F, $00, $FF, $00
|129799| db $E6, $27, $CE, $4F
|12979D| db $23 ; Repeat byte
|12979E| db $00
|12979F| db $0C ; Raw block
|1297A0| db $C0, $00, $18, $30, $80, $7F, $9E, $FF
|1297A8| db $2A, $3B, $9A, $FB, $3E
|1297AD| db $43 ; Repeat word
|1297AE| dw $1E9F
|1297B0| db $1A ; Raw block
|1297B1| db $CF, $83, $62, $00, $00, $C4, $04, $60
|1297B9| db $60, $30, $1C, $CD, $3E, $FF, $00, $83
|1297C1| db $7C, $1D, $DE, $7E, $BF, $BA, $BB, $B2
|1297C9| db $B3, $3E, $3F
|1297CC| db $22 ; Repeat byte
|1297CD| db $00
|1297CE| db $14 ; Raw block
|1297CF| db $20, $40, $44, $4C, $C0, $4C, $77, $0C
|1297D7| db $73, $6E, $71, $4F, $70, $18, $63, $30
|1297DF| db $CB, $F4, $0F, $CC, $57
|1297E4| db $23 ; Repeat byte
|1297E5| db $80
|1297E6| db $1B ; Raw block
|1297E7| db $84, $04, $00, $20, $AC, $B7, $4C, $77
|1297EF| db $CF, $F0, $AF, $33, $FC, $35, $78, $03
|1297F7| db $3C, $47, $4C, $77, $40, $80, $00, $40
|1297FF| db $02, $84, $80, $80
|129803| db $FF ; End of GFX 14

;===================================================================================================

GFX_15:
|129804| db $0F ; Raw block
|129805| db $00, $00, $03, $00, $07, $00, $0E, $00
|12980D| db $1D, $01, $3A, $03, $75, $06, $6A, $0C
|129815| db $23 ; Repeat byte
|129816| db $FF
|129817| db $1A ; Raw block
|129818| db $FE, $FC, $F8, $F1, $65, $09, $E5, $09
|129820| db $D5, $19, $25, $39, $0B, $F3, $F7, $07
|129828| db $0F, $0F, $FE, $FF, $F2, $F2, $E2, $C2
|129830| db $04, $08, $F0
|129833| db $44 ; Repeat word
|129834| dw $FF00
|129836| db $E0, $2D ; EXT Raw block
|129838| db $FD, $01, $03, $82, $07, $85, $0B, $8D
|129840| db $16, $99, $67, $F8, $FF, $FF, $FE, $7C
|129848| db $78, $70, $60, $00, $FF, $00, $1A, $01
|129850| db $FC, $22, $EE, $A3, $FB, $51, $E5, $50
|129858| db $F3, $88, $7A, $E6, $FF, $FD, $1B, $1B
|129860| db $8D, $8E, $47, $01, $E0, $1F
|129866| db $43 ; Repeat word
|129867| dw $01E1
|129869| db $E0, $39 ; EXT Raw block
|12986B| db $E2, $03, $E4, $07, $EB, $0C, $DF, $10
|129873| db $FD, $2E, $E0, $FE, $FE, $FC, $F8, $F0
|12987B| db $E0, $C0, $BE, $13, $BF, $0D, $BF, $31
|129883| db $EB, $0C, $F9, $02, $B4, $01, $DB, $31
|12988B| db $AE, $58, $CC, $C2, $C0, $F0, $FC, $CE
|129893| db $B6, $FB, $C3, $00, $E7, $00, $7E, $00
|12989B| db $FF, $C3, $66, $E7, $BD, $7E, $43, $3C
|1298A3| db $3F, $00
|1298A5| db $22 ; Repeat byte
|1298A6| db $FF
|1298A7| db $04 ; Raw block
|1298A8| db $3C, $18, $00, $80, $C0
|1298AD| db $83 ; Copy past
|1298AE| dw $0090
|1298B0| db $10 ; Raw block
|1298B1| db $7F, $01, $FE, $C3, $64, $E7, $B9, $7E
|1298B9| db $C3, $3C, $FF, $00, $FF, $FF, $FE, $3C
|1298C1| db $18
|1298C2| db $22 ; Repeat byte
|1298C3| db $00
|1298C4| db $43 ; Repeat word
|1298C5| dw $00FF
|1298C7| db $09 ; Raw block
|1298C8| db $38, $20, $77, $47, $EF, $08, $DF, $10
|1298D0| db $A0, $20
|1298D2| db $83 ; Copy past
|1298D3| dw $00B6
|1298D5| db $04 ; Raw block
|1298D6| db $DF, $B8, $70, $60, $5F
|1298DB| db $44 ; Repeat word
|1298DC| dw $FF00
|1298DE| db $0B ; Raw block
|1298DF| db $30, $00, $CF, $C0, $C9, $06, $CC, $07
|1298E7| db $27, $20, $F0, $10
|1298EB| db $22 ; Repeat byte
|1298EC| db $FF
|1298ED| db $19 ; Raw block
|1298EE| db $30, $37, $37, $D8, $0F, $CF, $00, $DD
|1298F6| db $10, $FB, $22, $F7, $06, $ED, $08, $ED
|1298FE| db $04, $E9, $04, $ED, $04, $F0, $EE, $DC
|129906| db $F8, $F2
|129908| db $22 ; Repeat byte
|129909| db $F6
|12990A| db $09 ; Raw block
|12990B| db $EF, $02, $CF, $0C, $D9, $19, $DC, $04
|129913| db $DE, $02
|129915| db $43 ; Repeat word
|129916| dw $0CD2
|129918| db $06 ; Raw block
|129919| db $DA, $04, $F0, $F0, $E6, $E3, $E1
|129920| db $22 ; Repeat byte
|129921| db $ED
|129922| db $05 ; Raw block
|129923| db $8F, $89, $C7, $C4, $F9, $F8
|129929| db $23 ; Repeat byte
|12992A| db $FE
|12992B| db $0A ; Raw block
|12992C| db $F8, $FF, $77, $FF, $89, $FE, $70, $38
|129934| db $06, $01, $01
|129937| db $22 ; Repeat byte
|129938| db $00
|129939| db $14 ; Raw block
|12993A| db $0D, $09, $FD, $E1, $F3, $43, $EF, $0F
|129942| db $DF, $1F, $C7, $3F, $50, $BF, $FF, $0F
|12994A| db $F2, $02, $0C, $10, $20
|12994F| db $22 ; Repeat byte
|129950| db $00
|129951| db $E0, $29 ; EXT Raw block
|129953| db $73, $FC, $87, $79, $7E, $80, $0E, $F1
|12995B| db $F9, $06, $F3, $83, $30, $CF, $10, $EF
|129963| db $00, $00, $01, $00, $00, $0C, $00, $00
|12996B| db $B8, $A7, $7F, $70, $9C, $FB, $0E, $F9
|129973| db $FF, $00, $FB, $CB, $30, $D7, $30, $DF
|12997B| db $40, $80
|12997D| db $22 ; Repeat byte
|12997E| db $00
|12997F| db $02 ; Raw block
|129980| db $04, $08, $00
|129983| db $8B ; Copy past
|129984| dw $0090
|129986| db $03 ; Raw block
|129987| db $42, $3C, $3C, $00
|12998B| db $22 ; Repeat byte
|12998C| db $FF
|12998D| db $04 ; Raw block
|12998E| db $3C, $18, $00, $81, $C3
|129993| db $8D ; Copy past
|129994| dw $0180
|129996| db $01 ; Raw block
|129997| db $3D, $01
|129999| db $22 ; Repeat byte
|12999A| db $FF
|12999B| db $83 ; Copy past
|12999C| dw $0193
|12999E| db $06 ; Raw block
|12999F| db $C2, $D4, $18, $FA, $1C, $7D, $0E
|1299A6| db $43 ; Repeat word
|1299A7| dw $0635
|1299A9| db $0D ; Raw block
|1299AA| db $7D, $0E, $FA, $1C, $D4, $18, $E3, $E1
|1299B2| db $F0, $F8, $F8, $F0, $E1, $E3
|1299B8| db $85 ; Copy past
|1299B9| dw $01B0
|1299BB| db $43 ; Repeat word
|1299BC| dw $0635
|1299BE| db $8D ; Copy past
|1299BF| dw $01BA
|1299C1| db $43 ; Repeat word
|1299C2| dw $00FF
|1299C4| db $0B ; Raw block
|1299C5| db $FC, $00, $E3, $03, $E0, $0F, $E7, $08
|1299CD| db $D7, $19, $D7, $1A
|1299D1| db $22 ; Repeat byte
|1299D2| db $FF
|1299D3| db $17 ; Raw block
|1299D4| db $FC, $F0, $F0, $E0, $E0, $D5, $19, $D2
|1299DC| db $1C, $11, $1E, $F1, $FE, $09, $FE, $85
|1299E4| db $7E, $43, $3C, $BF, $80, $E2, $E1, $E0
|1299EC| db $22 ; Repeat byte
|1299ED| db $00
|1299EE| db $05 ; Raw block
|1299EF| db $80, $41, $81, $81, $C3, $C3
|1299F5| db $27 ; Repeat byte
|1299F6| db $FF
|1299F7| db $05 ; Raw block
|1299F8| db $78, $FF, $B7, $FF, $7E, $3C
|1299FE| db $25 ; Repeat byte
|1299FF| db $00
|129A00| db $01 ; Raw block
|129A01| db $80, $80
|129A03| db $83 ; Copy past
|129A04| dw $0212
|129A06| db $0B ; Raw block
|129A07| db $E7, $FF, $DB, $FF, $A5, $FF, $5A, $E7
|129A0F| db $A5, $DB, $7F, $3C
|129A13| db $25 ; Repeat byte
|129A14| db $00
|129A15| db $03 ; Raw block
|129A16| db $FD, $FF, $7E, $7F
|129A1A| db $23 ; Repeat byte
|129A1B| db $3F
|129A1C| db $09 ; Raw block
|129A1D| db $3E, $3F, $3D, $3F, $7D, $7F, $FD, $FF
|129A25| db $00, $80
|129A27| db $23 ; Repeat byte
|129A28| db $C0
|129A29| db $07 ; Raw block
|129A2A| db $80, $00, $FD, $FF, $7A, $7F, $35, $3E
|129A32| db $43 ; Repeat word
|129A33| dw $3D2A
|129A35| db $02 ; Raw block
|129A36| db $35, $3E, $7A
|129A39| db $84 ; Copy past
|129A3A| dw $024D
|129A3C| db $23 ; Repeat byte
|129A3D| db $C0
|129A3E| db $07 ; Raw block
|129A3F| db $80, $00, $C1, $FF, $DF, $FE, $DE, $F1
|129A47| db $43 ; Repeat word
|129A48| dw $F7D8
|129A4A| db $05 ; Raw block
|129A4B| db $D9, $F6, $1B, $F5, $FE, $F3
|129A51| db $27 ; Repeat byte
|129A52| db $00
|129A53| db $0F ; Raw block
|129A54| db $FC, $07, $19, $EE, $33, $DC, $66, $B9
|129A5C| db $CC, $73, $98, $E7, $30, $CF, $61, $9F
|129A64| db $22 ; Repeat byte
|129A65| db $00
|129A66| db $14 ; Raw block
|129A67| db $01, $03, $07, $0F, $1E, $BD, $42, $EA
|129A6F| db $14, $DD, $20, $AB, $51, $D7, $23, $AF
|129A77| db $47, $DF, $0F, $BE, $1F
|129A7C| db $22 ; Repeat byte
|129A7D| db $00
|129A7E| db $84 ; Copy past
|129A7F| dw $029B
|129A81| db $E0, $29 ; EXT Raw block
|129A83| db $FF, $04, $0F, $08, $FE, $00, $FC, $C0
|129A8B| db $F8, $80, $FC, $00, $0C, $00, $FC, $00
|129A93| db $F9, $F3, $07, $CF, $9F, $03, $F3, $03
|129A9B| db $83, $43, $5F, $BF, $2F, $5F, $57, $6F
|129AA3| db $6B, $77, $75, $7B, $FA, $FD, $FD, $FE
|129AAB| db $3C, $00
|129AAD| db $23 ; Repeat byte
|129AAE| db $80
|129AAF| db $19 ; Raw block
|129AB0| db $00, $00, $7D, $7F, $BD, $BF, $DD, $DF
|129AB8| db $ED, $EF, $F6, $F7, $FB, $FB, $1C, $FD
|129AC0| db $EC, $FE, $80, $40, $20, $10, $08, $04
|129AC8| db $02, $01
|129ACA| db $85 ; Copy past
|129ACB| dw $01B0
|129ACD| db $43 ; Repeat word
|129ACE| dw $0635
|129AD0| db $04 ; Raw block
|129AD1| db $7D, $0E, $FB, $1C, $D7
|129AD6| db $86 ; Copy past
|129AD7| dw $01BF
|129AD9| db $07 ; Raw block
|129ADA| db $E0, $E0, $D7, $18, $FB, $1C, $7D, $0E
|129AE2| db $43 ; Repeat word
|129AE3| dw $0635
|129AE5| db $07 ; Raw block
|129AE6| db $79, $0E, $F3, $1C, $E7, $38, $E0, $E0
|129AEE| db $84 ; Copy past
|129AEF| dw $0312
|129AF1| db $0B ; Raw block
|129AF2| db $C0, $48, $FF, $B7, $78, $49, $B7, $31
|129AFA| db $CF, $FF, $00, $FF
|129AFE| db $44 ; Repeat word
|129AFF| dw $00FF
|129B01| db $27 ; Repeat byte
|129B02| db $00
|129B03| db $03 ; Raw block
|129B04| db $42, $BD, $C1, $7E
|129B08| db $43 ; Repeat word
|129B09| dw $7FC0
|129B0B| db $07 ; Raw block
|129B0C| db $FF, $00, $FF, $FE, $03, $FE, $01, $FE
|129B14| db $27 ; Repeat byte
|129B15| db $00
|129B16| db $03 ; Raw block
|129B17| db $4C, $B7, $AC, $D7
|129B1B| db $43 ; Repeat word
|129B1C| dw $E75C
|129B1E| db $01 ; Raw block
|129B1F| db $AC, $D7
|129B21| db $43 ; Repeat word
|129B22| dw $B74C
|129B24| db $01 ; Raw block
|129B25| db $7C, $B7
|129B27| db $27 ; Repeat byte
|129B28| db $00
|129B29| db $03 ; Raw block
|129B2A| db $7C, $87, $FC, $77
|129B2E| db $47 ; Repeat word
|129B2F| dw $F70C
|129B31| db $03 ; Raw block
|129B32| db $8E, $77, $4F, $B0
|129B36| db $27 ; Repeat byte
|129B37| db $00
|129B38| db $0F ; Raw block
|129B39| db $80, $7F, $7F, $80, $60, $9F, $50, $AF
|129B41| db $4F, $B0, $4F, $B3, $4E, $B5, $4D, $B6
|129B49| db $27 ; Repeat byte
|129B4A| db $00
|129B4B| db $0F ; Raw block
|129B4C| db $CC, $37, $CC, $77, $2C, $F7, $1C, $F7
|129B54| db $FC, $0F, $F8, $FB, $02, $FF, $01, $FF
|129B5C| db $24 ; Repeat byte
|129B5D| db $00
|129B5E| db $04 ; Raw block
|129B5F| db $04, $00, $00, $D7, $1A
|129B64| db $83 ; Copy past
|129B65| dw $031A
|129B67| db $43 ; Repeat word
|129B68| dw $0635
|129B6A| db $85 ; Copy past
|129B6B| dw $01BA
|129B6D| db $85 ; Copy past
|129B6E| dw $0328
|129B70| db $11 ; Raw block
|129B71| db $E1, $E3, $78, $F7, $8F, $70, $7C, $83
|129B79| db $06, $F9, $FF, $00, $FF, $F8, $07, $FC
|129B81| db $01, $FE
|129B83| db $27 ; Repeat byte
|129B84| db $00
|129B85| db $01 ; Raw block
|129B86| db $4C, $B7
|129B88| db $45 ; Repeat word
|129B89| dw $D7AC
|129B8B| db $07 ; Raw block
|129B8C| db $EC, $17, $7E, $83, $5E, $A1, $4F, $B0
|129B94| db $27 ; Repeat byte
|129B95| db $00
|129B96| db $16 ; Raw block
|129B97| db $C1, $3E, $BF, $40, $77, $B9, $6F, $B3
|129B9F| db $5F, $A7, $7F, $8F, $7F, $9F, $FF, $3F
|129BA7| db $3E, $40, $B8, $B0, $A0, $80, $80
|129BAE| db $43 ; Repeat word
|129BAF| dw $FF00
|129BB1| db $0C ; Raw block
|129BB2| db $FF, $7E, $FF, $BD, $7E, $DB, $BD, $E7
|129BBA| db $DB, $1C, $E7, $FF, $00
|129BBF| db $83 ; Copy past
|129BC0| dw $0421
|129BC2| db $09 ; Raw block
|129BC3| db $BD, $DB, $E7, $00, $ED, $76, $F5, $7A
|129BCB| db $FB, $7C
|129BCD| db $43 ; Repeat word
|129BCE| dw $7EFD
|129BD0| db $E0, $27 ; EXT Raw block
|129BD2| db $FB, $7C, $F5, $7A, $ED, $76, $76, $7A
|129BDA| db $7C, $7E, $7E, $7C, $7A, $76, $FF, $00
|129BE2| db $FF, $7F, $FE, $7F, $FD, $7E, $FB, $7D
|129BEA| db $F7, $7B, $EC, $77, $DD, $6E, $00, $7F
|129BF2| db $7F, $7E, $7D, $7B, $77, $6E, $ED, $76
|129BFA| db $43 ; Repeat word
|129BFB| dw $F6ED
|129BFD| db $0A ; Raw block
|129BFE| db $0D, $F6, $FD, $06, $FD, $FE, $01, $FE
|129C06| db $FF, $00, $76
|129C09| db $22 ; Repeat byte
|129C0A| db $F6
|129C0B| db $18 ; Raw block
|129C0C| db $06, $FE, $FE, $00, $FF, $00, $18, $E0
|129C14| db $31, $C1, $62, $83, $C5, $07, $8B, $0D
|129C1C| db $97, $18, $F7, $78, $03, $07, $0E, $1C
|129C24| db $38
|129C25| db $84 ; Copy past
|129C26| dw $0045
|129C28| db $0D ; Raw block
|129C29| db $12, $01, $25, $E2, $E6, $A3, $F7, $51
|129C31| db $B3, $10, $B9, $88, $DC, $64
|129C37| db $83 ; Copy past
|129C38| dw $0058
|129C3A| db $15 ; Raw block
|129C3B| db $89, $CC, $46, $03, $8F, $70, $99, $61
|129C43| db $B1, $41, $E3, $03, $C4, $07, $8B, $0C
|129C4B| db $97, $18, $AF, $3C, $00, $06
|129C51| db $83 ; Copy past
|129C52| dw $0492
|129C54| db $19 ; Raw block
|129C55| db $E0, $C0, $9F, $32, $99, $29, $BE, $31
|129C5D| db $CF, $0C, $83, $02, $B9, $01, $DC, $30
|129C65| db $AE, $58, $CC, $C6, $C0, $F0, $FC, $C6
|129C6D| db $B3, $F9
|129C6F| db $8B ; Copy past
|129C70| dw $0090
|129C72| db $03 ; Raw block
|129C73| db $C2, $BC, $FC, $00
|129C77| db $22 ; Repeat byte
|129C78| db $FF
|129C79| db $10 ; Raw block
|129C7A| db $3C, $18, $00, $01, $03, $FF, $00, $20
|129C82| db $C0, $4F, $88, $9F, $13, $BF, $27, $BF
|129C8A| db $20
|129C8B| db $83 ; Copy past
|129C8C| dw $041E
|129C8E| db $0A ; Raw block
|129C8F| db $0F, $1F, $30, $63, $47, $40, $7F, $00
|129C97| db $FF, $00, $04
|129C9A| db $43 ; Repeat word
|129C9B| dw $FC00
|129C9D| db $10 ; Raw block
|129C9E| db $C0, $F0, $C0, $F8, $00, $0C, $00, $FE
|129CA6| db $00, $FB, $FB, $03, $DF, $CF, $07, $F3
|129CAE| db $01
|129CAF| db $97 ; Copy past
|129CB0| dw $02B8
|129CB2| db $09 ; Raw block
|129CB3| db $EF, $10, $C0, $20, $8F, $C8, $9F, $17
|129CBB| db $BF, $2F
|129CBD| db $85 ; Copy past
|129CBE| dw $0502
|129CC0| db $04 ; Raw block
|129CC1| db $EF, $DF, $30, $67, $4F
|129CC6| db $85 ; Copy past
|129CC7| dw $050D
|129CC9| db $43 ; Repeat word
|129CCA| dw $FC00
|129CCC| db $90 ; Copy past
|129CCD| dw $0517
|129CCF| db $11 ; Raw block
|129CD0| db $81, $80, $FF, $FE, $FD, $FE, $FA, $FC
|129CD8| db $F5, $F9, $FB, $F3, $78, $F7, $8F, $F7
|129CE0| db $7E, $00
|129CE2| db $62 ; Increment fill
|129CE3| db $00
|129CE4| db $00 ; Raw block
|129CE5| db $04
|129CE6| db $83 ; Copy past
|129CE7| dw $023E
|129CE9| db $45 ; Repeat word
|129CEA| dw $7F7E
|129CEC| db $08 ; Raw block
|129CED| db $77, $78, $69, $73, $55, $67, $ED, $0F
|129CF5| db $00
|129CF6| db $23 ; Repeat byte
|129CF7| db $80
|129CF8| db $02 ; Raw block
|129CF9| db $84, $88, $10
|129CFC| db $83 ; Copy past
|129CFD| dw $0240
|129CFF| db $43 ; Repeat word
|129D00| dw $3F3E
|129D02| db $07 ; Raw block
|129D03| db $BD, $BF, $DA, $5F, $DA, $1F, $E3, $86
|129D0B| db $83 ; Copy past
|129D0C| dw $0250
|129D0E| db $1A ; Raw block
|129D0F| db $40, $20, $20, $18, $7D, $42, $7F, $60
|129D17| db $71, $46, $6B, $0E, $D9, $9F, $DD, $1F
|129D1F| db $3D, $3F, $FD, $FF, $80, $80, $88, $90
|129D27| db $20, $20, $C0
|129D2A| db $83 ; Copy past
|129D2B| dw $035F
|129D2D| db $0C ; Raw block
|129D2E| db $D3, $AE, $D1, $AF, $D0, $38, $C3, $70
|129D36| db $8B, $F4, $0F, $CC, $57
|129D3B| db $23 ; Repeat byte
|129D3C| db $00
|129D3D| db $13 ; Raw block
|129D3E| db $04, $04, $00, $20, $AC, $B7, $4C, $77
|129D46| db $CF, $F0, $EF, $73, $FC, $35, $78, $83
|129D4E| db $5C, $A7, $4C, $B7
|129D52| db $83 ; Copy past
|129D53| dw $0178
|129D55| db $03 ; Raw block
|129D56| db $02, $04, $00, $00
|129D5A| db $FF ; End of GFX 15

;===================================================================================================

GFX_16:
|129D5B| db $43 ; Repeat word
|129D5C| dw $00FF
|129D5E| db $00 ; Raw block
|129D5F| db $00
|129D60| db $22 ; Repeat byte
|129D61| db $FF
|129D62| db $06 ; Raw block
|129D63| db $08, $08, $00, $00, $F7, $00, $FF
|129D6A| db $24 ; Repeat byte
|129D6B| db $00
|129D6C| db $00 ; Raw block
|129D6D| db $F7
|129D6E| db $23 ; Repeat byte
|129D6F| db $FF
|129D70| db $0E ; Raw block
|129D71| db $00, $FF, $00, $E0, $1F, $D7, $2F, $C4
|129D79| db $3C, $DC, $3C, $D1, $30, $D2, $30
|129D80| db $23 ; Repeat byte
|129D81| db $00
|129D82| db $03 ; Raw block
|129D83| db $03, $03, $0F, $0F
|129D87| db $43 ; Repeat word
|129D88| dw $0CCB
|129D8A| db $03 ; Raw block
|129D8B| db $C8, $0F, $CF, $0F
|129D8F| db $43 ; Repeat word
|129D90| dw $00C0
|129D92| db $03 ; Raw block
|129D93| db $BF, $00, $7F, $00
|129D97| db $23 ; Repeat byte
|129D98| db $F0
|129D99| db $24 ; Repeat byte
|129D9A| db $FF
|129D9B| db $0E ; Raw block
|129D9C| db $00, $FF, $00, $07, $F8, $EB, $F4, $23
|129DA4| db $3C, $3B, $3C, $8B, $0C, $4B, $0C
|129DAB| db $23 ; Repeat byte
|129DAC| db $00
|129DAD| db $03 ; Raw block
|129DAE| db $C0, $C0, $F0, $F0
|129DB2| db $43 ; Repeat word
|129DB3| dw $30D3
|129DB5| db $03 ; Raw block
|129DB6| db $13, $F0, $F3, $F0
|129DBA| db $43 ; Repeat word
|129DBB| dw $0003
|129DBD| db $03 ; Raw block
|129DBE| db $FD, $00, $FE, $00
|129DC2| db $23 ; Repeat byte
|129DC3| db $0F
|129DC4| db $23 ; Repeat byte
|129DC5| db $FF
|129DC6| db $0E ; Raw block
|129DC7| db $E2, $1F, $8D, $7F, $7B, $FF, $D4, $DC
|129DCF| db $08, $08, $0B, $08, $E7, $00, $F7
|129DD6| db $23 ; Repeat byte
|129DD7| db $00
|129DD8| db $1F ; Raw block
|129DD9| db $23, $F7, $F7, $FF, $FF, $D3, $30, $B3
|129DE1| db $70, $A3, $60, $31, $F0, $6C, $FC, $53
|129DE9| db $F0, $A7, $E0, $67, $E0, $0F, $0F, $1F
|129DF1| db $0F, $03, $0F, $1F, $1F, $DC, $3C, $94
|129DF9| db $44 ; Repeat word
|129DFA| dw $8C7C
|129DFC| db $02 ; Raw block
|129DFD| db $9C, $7C, $8C
|129E00| db $44 ; Repeat word
|129E01| dw $9C7C
|129E03| db $27 ; Repeat byte
|129E04| db $03
|129E05| db $43 ; Repeat word
|129E06| dw $009D
|129E08| db $0B ; Raw block
|129E09| db $FD, $00, $E2, $00, $DD, $01, $EA, $00
|129E11| db $F5, $00, $FE, $00
|129E15| db $23 ; Repeat byte
|129E16| db $FF
|129E17| db $00 ; Raw block
|129E18| db $FE
|129E19| db $25 ; Repeat byte
|129E1A| db $FF
|129E1B| db $10 ; Raw block
|129E1C| db $FC, $FE, $F1, $F8, $C7, $E3, $1F, $8F
|129E24| db $7F, $3F, $FF, $7C, $FC, $FF, $FC, $F0
|129E2C| db $C0
|129E2D| db $22 ; Repeat byte
|129E2E| db $00
|129E2F| db $09 ; Raw block
|129E30| db $03, $FF, $00, $80, $7F, $00, $FF, $CB
|129E38| db $FF, $BF
|129E3A| db $22 ; Repeat byte
|129E3B| db $FF
|129E3C| db $29 ; Repeat byte
|129E3D| db $00
|129E3E| db $22 ; Repeat byte
|129E3F| db $FF
|129E40| db $0E ; Raw block
|129E41| db $00, $00, $FF, $01, $FF, $9E, $FE, $3C
|129E49| db $FC, $F8, $F8, $09, $01, $0C, $01
|129E50| db $22 ; Repeat byte
|129E51| db $00
|129E52| db $19 ; Raw block
|129E53| db $01, $03, $07, $FE, $FE, $FF, $00, $BF
|129E5B| db $BF, $10, $1F, $2F, $30, $5F, $60, $BF
|129E63| db $C0, $7F, $80, $FF, $00, $00, $40, $E0
|129E6B| db $C0, $80
|129E6D| db $22 ; Repeat byte
|129E6E| db $00
|129E6F| db $07 ; Raw block
|129E70| db $C5, $46, $8B, $0C, $D7, $58, $EF, $70
|129E78| db $47 ; Repeat word
|129E79| dw $60DF
|129E7B| db $02 ; Raw block
|129E7C| db $38, $70, $20
|129E7F| db $28 ; Repeat byte
|129E80| db $00
|129E81| db $00 ; Raw block
|129E82| db $FF
|129E83| db $24 ; Repeat byte
|129E84| db $00
|129E85| db $05 ; Raw block
|129E86| db $81, $81, $C3, $42, $66, $24
|129E8C| db $22 ; Repeat byte
|129E8D| db $00
|129E8E| db $0A ; Raw block
|129E8F| db $FF, $FF, $7E, $3C, $18, $66, $24, $C3
|129E97| db $42, $81, $81
|129E9A| db $23 ; Repeat byte
|129E9B| db $00
|129E9C| db $00 ; Raw block
|129E9D| db $FF
|129E9E| db $24 ; Repeat byte
|129E9F| db $00
|129EA0| db $04 ; Raw block
|129EA1| db $18, $3C, $7E, $FF, $FF
|129EA6| db $22 ; Repeat byte
|129EA7| db $00
|129EA8| db $47 ; Repeat word
|129EA9| dw $30D3
|129EAB| db $01 ; Raw block
|129EAC| db $D9, $38
|129EAE| db $45 ; Repeat word
|129EAF| dw $30D3
|129EB1| db $23 ; Repeat byte
|129EB2| db $0F
|129EB3| db $00 ; Raw block
|129EB4| db $07
|129EB5| db $22 ; Repeat byte
|129EB6| db $0F
|129EB7| db $02 ; Raw block
|129EB8| db $7F, $00, $BF
|129EBB| db $44 ; Repeat word
|129EBC| dw $C000
|129EBE| db $03 ; Raw block
|129EBF| db $CF, $0F, $C8, $0F
|129EC3| db $43 ; Repeat word
|129EC4| dw $0CCB
|129EC6| db $23 ; Repeat byte
|129EC7| db $FF
|129EC8| db $23 ; Repeat byte
|129EC9| db $F0
|129ECA| db $0B ; Raw block
|129ECB| db $D2, $30, $D1, $30, $DC, $3C, $C4, $3C
|129ED3| db $D7, $2F, $E0, $1F
|129ED7| db $43 ; Repeat word
|129ED8| dw $00FF
|129EDA| db $03 ; Raw block
|129EDB| db $0F, $0F, $03, $03
|129EDF| db $23 ; Repeat byte
|129EE0| db $00
|129EE1| db $02 ; Raw block
|129EE2| db $FE, $00, $FD
|129EE5| db $44 ; Repeat word
|129EE6| dw $0300
|129EE8| db $03 ; Raw block
|129EE9| db $F3, $F0, $13, $F0
|129EED| db $43 ; Repeat word
|129EEE| dw $30D3
|129EF0| db $23 ; Repeat byte
|129EF1| db $FF
|129EF2| db $23 ; Repeat byte
|129EF3| db $0F
|129EF4| db $0B ; Raw block
|129EF5| db $4B, $0C, $8B, $0C, $3B, $3C, $23, $3C
|129EFD| db $EB, $F4, $07, $F8
|129F01| db $43 ; Repeat word
|129F02| dw $00FF
|129F04| db $03 ; Raw block
|129F05| db $F0, $F0, $C0, $C0
|129F09| db $23 ; Repeat byte
|129F0A| db $00
|129F0B| db $1F ; Raw block
|129F0C| db $FC, $F3, $F9, $F7, $FB, $E7, $F3, $EF
|129F14| db $F7, $CF, $E7, $DF, $EE, $9E, $CE, $BE
|129F1C| db $F0, $F0, $E0, $E0, $C0, $C0, $81, $81
|129F24| db $CF, $C0, $CE, $C0, $9D, $80, $9E, $80
|129F2C| db $43 ; Repeat word
|129F2D| dw $003D
|129F2F| db $43 ; Repeat word
|129F30| dw $007D
|129F32| db $03 ; Raw block
|129F33| db $3F, $3F, $7F, $7F
|129F37| db $23 ; Repeat byte
|129F38| db $FF
|129F39| db $02 ; Raw block
|129F3A| db $94, $7C, $84
|129F3D| db $84 ; Copy past
|129F3E| dw $00AD
|129F40| db $07 ; Raw block
|129F41| db $9F, $7C, $99, $78, $90, $70, $A2, $63
|129F49| db $24 ; Repeat byte
|129F4A| db $03
|129F4B| db $07 ; Raw block
|129F4C| db $07, $0F, $1C, $FF, $00, $DD, $00, $88
|129F54| db $22 ; Repeat byte
|129F55| db $00
|129F56| db $02 ; Raw block
|129F57| db $FF, $00, $FF
|129F5A| db $22 ; Repeat byte
|129F5B| db $00
|129F5C| db $01 ; Raw block
|129F5D| db $3F, $C0
|129F5F| db $26 ; Repeat byte
|129F60| db $FF
|129F61| db $07 ; Raw block
|129F62| db $00, $F0, $F0, $C3, $C0, $0F, $00, $3F
|129F6A| db $44 ; Repeat word
|129F6B| dw $FF00
|129F6D| db $05 ; Raw block
|129F6E| db $D0, $00, $AF, $00, $0F, $3F
|129F74| db $26 ; Repeat byte
|129F75| db $FF
|129F76| db $0E ; Raw block
|129F77| db $00, $3F, $00, $37, $00, $EB, $00, $ED
|129F7F| db $00, $EB, $00, $15, $00, $EA, $08
|129F86| db $26 ; Repeat byte
|129F87| db $FF
|129F88| db $0C ; Raw block
|129F89| db $F7, $EC, $01, $CC, $01, $8D, $00, $CD
|129F91| db $00, $ED, $00, $CD, $00
|129F96| db $83 ; Copy past
|129F97| dw $028C
|129F99| db $27 ; Repeat byte
|129F9A| db $FE
|129F9B| db $4E ; Repeat word
|129F9C| dw $00FF
|129F9E| db $28 ; Repeat byte
|129F9F| db $00
|129FA0| db $47 ; Repeat word
|129FA1| dw $30D3
|129FA3| db $01 ; Raw block
|129FA4| db $D9, $38
|129FA6| db $45 ; Repeat word
|129FA7| dw $30D3
|129FA9| db $23 ; Repeat byte
|129FAA| db $0F
|129FAB| db $00 ; Raw block
|129FAC| db $07
|129FAD| db $22 ; Repeat byte
|129FAE| db $0F
|129FAF| db $05 ; Raw block
|129FB0| db $26, $04, $23, $02, $21, $01
|129FB6| db $43 ; Repeat word
|129FB7| dw $0020
|129FB9| db $13 ; Raw block
|129FBA| db $21, $01, $23, $02, $26, $04, $18, $1C
|129FC2| db $1E, $1F, $1F, $1E, $1C, $18, $64, $20
|129FCA| db $C4, $40, $84, $80
|129FCE| db $43 ; Repeat word
|129FCF| dw $0004
|129FD1| db $0D ; Raw block
|129FD2| db $84, $80, $C4, $40, $64, $20, $18, $38
|129FDA| db $78, $F8, $F8, $78, $38, $18
|129FE0| db $24 ; Repeat byte
|129FE1| db $FF
|129FE2| db $43 ; Repeat word
|129FE3| dw $FFFE
|129FE5| db $0E ; Raw block
|129FE6| db $FC, $FE, $FD, $FE, $F9, $FC, $FB, $FF
|129FEE| db $FF, $FE, $FE, $FC, $FC, $F8, $F8
|129FF5| db $2A ; Repeat byte
|129FF6| db $FF
|129FF7| db $84 ; Copy past
|129FF8| dw $00DB
|129FFA| db $24 ; Repeat byte
|129FFB| db $FF
|129FFC| db $E0, $24 ; EXT Raw block
|129FFE| db $FC, $F0, $C0, $AF, $60, $A7, $60, $D0
|12A006| db $30, $D8, $38, $EF, $1F, $F0, $0F, $CF
|12A00E| db $30, $C7, $38, $1F, $1F, $0F, $07, $00
|12A016| db $00, $30, $38, $FF, $00, $FC, $03, $33
|12A01E| db $CF, $2C, $DC, $59, $B8
|12A023| db $45 ; Repeat word
|12A024| dw $30D3
|12A026| db $04 ; Raw block
|12A027| db $00, $00, $C0, $C3, $87
|12A02C| db $22 ; Repeat byte
|12A02D| db $0F
|12A02E| db $14 ; Raw block
|12A02F| db $FF, $1F, $FF, $8F, $FF, $E7, $DF, $33
|12A037| db $E7, $19, $F3, $0C, $0B, $F4, $87, $78
|12A03F| db $1F, $0F, $07, $03, $01
|12A044| db $22 ; Repeat byte
|12A045| db $00
|12A046| db $03 ; Raw block
|12A047| db $9B, $7E, $DB, $3E
|12A04B| db $83 ; Copy past
|12A04C| dw $0378
|12A04E| db $85 ; Copy past
|12A04F| dw $0378
|12A051| db $01 ; Raw block
|12A052| db $C3, $3E
|12A054| db $27 ; Repeat byte
|12A055| db $00
|12A056| db $0F ; Raw block
|12A057| db $FD, $62, $FC, $23, $EC, $33, $F4, $9B
|12A05F| db $F2, $CD, $F9, $E6, $FF, $F0, $FF, $F8
|12A067| db $22 ; Repeat byte
|12A068| db $00
|12A069| db $09 ; Raw block
|12A06A| db $80, $C0, $E0, $F0, $F8, $FF, $00, $AA
|12A072| db $55, $00
|12A074| db $44 ; Repeat word
|12A075| dw $7FFF
|12A077| db $00 ; Raw block
|12A078| db $00
|12A079| db $23 ; Repeat byte
|12A07A| db $FF
|12A07B| db $28 ; Repeat byte
|12A07C| db $00
|12A07D| db $02 ; Raw block
|12A07E| db $3C, $00, $24
|12A081| db $48 ; Repeat word
|12A082| dw $A500
|12A084| db $04 ; Raw block
|12A085| db $24, $00, $3C, $00, $00
|12A08A| db $25 ; Repeat byte
|12A08B| db $18
|12A08C| db $10 ; Raw block
|12A08D| db $00, $C3, $04, $81, $3A, $99, $22, $F1
|12A095| db $06, $E3, $0C, $E7, $08, $FF, $00, $E7
|12A09D| db $08
|12A09E| db $27 ; Repeat byte
|12A09F| db $FF
|12A0A0| db $37 ; Repeat byte
|12A0A1| db $00
|12A0A2| db $06 ; Raw block
|12A0A3| db $BC, $43, $74, $0B, $3A, $05, $07
|12A0AA| db $28 ; Repeat byte
|12A0AB| db $00
|12A0AC| db $03 ; Raw block
|12A0AD| db $FF, $7F, $3F, $07
|12A0B1| db $24 ; Repeat byte
|12A0B2| db $00
|12A0B3| db $0B ; Raw block
|12A0B4| db $FF, $18, $FF, $09, $FE, $02, $FD, $E7
|12A0BC| db $19, $1E, $01, $01
|12A0C0| db $22 ; Repeat byte
|12A0C1| db $00
|12A0C2| db $22 ; Repeat byte
|12A0C3| db $FF
|12A0C4| db $11 ; Raw block
|12A0C5| db $FE, $FF, $1F, $01, $00, $50, $BF, $E0
|12A0CD| db $5F, $F1, $EE, $7E, $F0, $C2, $FC, $02
|12A0D5| db $FC, $FC
|12A0D7| db $22 ; Repeat byte
|12A0D8| db $00
|12A0D9| db $0A ; Raw block
|12A0DA| db $FF, $BF, $7F, $7E, $FE, $FE, $FC, $00
|12A0E2| db $40, $80, $80
|12A0E5| db $2C ; Repeat byte
|12A0E6| db $00
|12A0E7| db $01 ; Raw block
|12A0E8| db $C0, $80
|12A0EA| db $25 ; Repeat byte
|12A0EB| db $00
|12A0EC| db $0F ; Raw block
|12A0ED| db $39, $C6, $7F, $81, $F9, $07, $39, $F7
|12A0F5| db $E4, $FB, $24, $FB, $06, $F9, $F9, $00
|12A0FD| db $22 ; Repeat byte
|12A0FE| db $FF
|12A0FF| db $00 ; Raw block
|12A100| db $3F
|12A101| db $22 ; Repeat byte
|12A102| db $FF
|12A103| db $00 ; Raw block
|12A104| db $F9
|12A105| db $E5, $7F ; EXT Repeat byte
|12A107| db $00
|12A108| db $FF ; End of GFX 16

;===================================================================================================

GFX_17:
|12A109| db $0F ; Raw block
|12A10A| db $C3, $00, $E7, $00, $EC, $00, $FB, $83
|12A112| db $F7, $04, $EC, $0A, $98, $14, $F1, $68
|12A11A| db $22 ; Repeat byte
|12A11B| db $FF
|12A11C| db $14 ; Raw block
|12A11D| db $7C, $78, $71, $63, $07, $E1, $00, $F3
|12A125| db $00, $1E, $00, $ED, $E1, $F3, $12, $3F
|12A12D| db $2D, $DE, $12, $8A, $0E
|12A132| db $22 ; Repeat byte
|12A133| db $FF
|12A134| db $04 ; Raw block
|12A135| db $1E, $0C, $C0, $E1, $F1
|12A13A| db $43 ; Repeat word
|12A13B| dw $00FF
|12A13D| db $0B ; Raw block
|12A13E| db $01, $00, $FE, $02, $87, $85, $7F, $02
|12A146| db $C1, $01, $80, $3F
|12A14A| db $22 ; Repeat byte
|12A14B| db $FF
|12A14C| db $14 ; Raw block
|12A14D| db $01, $78, $FC, $FE, $C0, $00, $00, $80
|12A155| db $00, $C0, $00, $FF, $00, $7F, $00, $83
|12A15D| db $83, $FD, $7C, $EA, $18
|12A162| db $24 ; Repeat byte
|12A163| db $FF
|12A164| db $12 ; Raw block
|12A165| db $7C, $03, $07, $E0, $00, $F0, $00, $F8
|12A16D| db $00, $3C, $00, $9F, $80, $8F, $80, $87
|12A175| db $80, $E3, $E0
|12A178| db $23 ; Repeat byte
|12A179| db $FF
|12A17A| db $22 ; Repeat byte
|12A17B| db $7F
|12A17C| db $10 ; Raw block
|12A17D| db $1F, $1F, $00, $2F, $00, $77, $00, $F0
|12A185| db $00, $E4, $04, $C7, $07, $8F, $0F, $1F
|12A18D| db $10
|12A18E| db $23 ; Repeat byte
|12A18F| db $FF
|12A190| db $03 ; Raw block
|12A191| db $FB, $F8, $F0, $E0
|12A195| db $44 ; Repeat word
|12A196| dw $00FF
|12A198| db $24 ; Repeat byte
|12A199| db $00
|12A19A| db $24 ; Repeat byte
|12A19B| db $FF
|12A19C| db $00 ; Raw block
|12A19D| db $00
|12A19E| db $24 ; Repeat byte
|12A19F| db $FF
|12A1A0| db $22 ; Repeat byte
|12A1A1| db $00
|12A1A2| db $0F ; Raw block
|12A1A3| db $FC, $00, $FE, $00, $E7, $00, $73, $00
|12A1AB| db $39, $00, $99, $80, $C0, $C0, $FF, $7F
|12A1B3| db $24 ; Repeat byte
|12A1B4| db $FF
|12A1B5| db $01 ; Raw block
|12A1B6| db $7F, $3F
|12A1B8| db $4D ; Repeat word
|12A1B9| dw $FF00
|12A1BB| db $22 ; Repeat byte
|12A1BC| db $00
|12A1BD| db $28 ; Repeat byte
|12A1BE| db $FF
|12A1BF| db $00 ; Raw block
|12A1C0| db $00
|12A1C1| db $23 ; Repeat byte
|12A1C2| db $FF
|12A1C3| db $83 ; Copy past
|12A1C4| dw $0093
|12A1C6| db $24 ; Repeat byte
|12A1C7| db $FF
|12A1C8| db $01 ; Raw block
|12A1C9| db $00, $FF
|12A1CB| db $22 ; Repeat byte
|12A1CC| db $00
|12A1CD| db $00 ; Raw block
|12A1CE| db $FF
|12A1CF| db $22 ; Repeat byte
|12A1D0| db $00
|12A1D1| db $0F ; Raw block
|12A1D2| db $FF, $FF, $80, $FF, $BF, $FC, $BF, $F8
|12A1DA| db $B7, $F8, $BF, $F0, $BF, $E0, $9F, $E0
|12A1E2| db $27 ; Repeat byte
|12A1E3| db $FF
|12A1E4| db $01 ; Raw block
|12A1E5| db $BD, $FE
|12A1E7| db $8B ; Copy past
|12A1E8| dw $00F4
|12A1EA| db $01 ; Raw block
|12A1EB| db $C0, $C0
|12A1ED| db $27 ; Repeat byte
|12A1EE| db $FF
|12A1EF| db $00 ; Raw block
|12A1F0| db $3F
|12A1F1| db $44 ; Repeat word
|12A1F2| dw $301F
|12A1F4| db $02 ; Raw block
|12A1F5| db $3F, $00, $3F
|12A1F8| db $44 ; Repeat word
|12A1F9| dw $301F
|12A1FB| db $00 ; Raw block
|12A1FC| db $3F
|12A1FD| db $28 ; Repeat byte
|12A1FE| db $00
|12A1FF| db $05 ; Raw block
|12A200| db $DF, $E0, $BF, $C0, $7F, $80
|12A206| db $46 ; Repeat word
|12A207| dw $00FF
|12A209| db $22 ; Repeat byte
|12A20A| db $00
|12A20B| db $03 ; Raw block
|12A20C| db $EF, $DF, $BF, $7F
|12A210| db $23 ; Repeat byte
|12A211| db $FF
|12A212| db $09 ; Raw block
|12A213| db $C5, $44, $D5, $54, $D1, $50, $D9, $58
|12A21B| db $CD, $4C
|12A21D| db $85 ; Copy past
|12A21E| dw $0150
|12A220| db $0B ; Raw block
|12A221| db $3A, $2A, $2E, $26, $32, $3A, $2A, $2E
|12A229| db $FF, $00, $FF, $7E
|12A22D| db $8B ; Copy past
|12A22E| dw $0154
|12A230| db $01 ; Raw block
|12A231| db $00, $00
|12A233| db $85 ; Copy past
|12A234| dw $0162
|12A236| db $05 ; Raw block
|12A237| db $F3, $00, $3A, $28, $FC, $EC
|12A23D| db $43 ; Repeat word
|12A23E| dw $EDFD
|12A240| db $08 ; Raw block
|12A241| db $ED, $DD, $D5, $BD, $AB, $6F, $0F, $C7
|12A249| db $03
|12A24A| db $23 ; Repeat byte
|12A24B| db $02
|12A24C| db $E0, $29 ; EXT Raw block
|12A24E| db $10, $3A, $3E, $42, $7E, $89, $FF, $25
|12A256| db $DF, $22, $DF, $51, $EF, $6F, $F0, $3F
|12A25E| db $FF, $C1, $81, $38, $7C, $7E, $7F, $7F
|12A266| db $3F, $03, $7E, $23, $DE, $53, $EE, $6B
|12A26E| db $F6, $77, $FA, $FB, $3E, $BF, $4E, $8F
|12A276| db $70, $BE
|12A278| db $23 ; Repeat byte
|12A279| db $7E
|12A27A| db $E0, $2F ; EXT Raw block
|12A27C| db $3E, $0E, $00, $D5, $30, $AB, $60, $57
|12A284| db $C3, $AF, $87, $5F, $0F, $BF, $1F, $40
|12A28C| db $3F, $FF, $00, $0E, $1D, $3B, $77, $EF
|12A294| db $DF, $BF, $60, $BB, $7A, $9B, $3A, $CB
|12A29C| db $5A, $E1, $6E, $B1, $70, $9F, $7E, $8F
|12A2A4| db $7E, $81, $7E, $04, $44, $24, $10, $0E
|12A2AC| db $22 ; Repeat byte
|12A2AD| db $00
|12A2AE| db $14 ; Raw block
|12A2AF| db $DD, $41, $CE, $40, $C7, $40, $E0, $60
|12A2B7| db $F0, $70, $BF, $7F, $9F, $7F, $FF, $00
|12A2BF| db $3E, $3F, $3F, $1F, $0F
|12A2C4| db $22 ; Repeat byte
|12A2C5| db $00
|12A2C6| db $E0, $2E ; EXT Raw block
|12A2C8| db $28, $D8, $A5, $DD, $13, $6F, $09, $77
|12A2D0| db $E4, $BB, $F2, $BD, $B9, $DF, $FF, $00
|12A2D8| db $27, $32, $B8, $BC, $3E, $3F, $1F, $00
|12A2E0| db $EF, $8F, $D9, $1F, $91, $1F, $00, $1E
|12A2E8| db $A0, $8E, $5E, $C0, $20, $E0, $FF, $00
|12A2F0| db $70, $E0, $E0, $E1, $71, $3F, $1F
|12A2F7| db $46 ; Repeat word
|12A2F8| dw $FF00
|12A2FA| db $22 ; Repeat byte
|12A2FB| db $FF
|12A2FC| db $25 ; Repeat byte
|12A2FD| db $00
|12A2FE| db $23 ; Repeat byte
|12A2FF| db $FF
|12A300| db $00 ; Raw block
|12A301| db $00
|12A302| db $22 ; Repeat byte
|12A303| db $FF
|12A304| db $23 ; Repeat byte
|12A305| db $00
|12A306| db $83 ; Copy past
|12A307| dw $009E
|12A309| db $23 ; Repeat byte
|12A30A| db $00
|12A30B| db $84 ; Copy past
|12A30C| dw $025B
|12A30E| db $00 ; Raw block
|12A30F| db $FF
|12A310| db $22 ; Repeat byte
|12A311| db $00
|12A312| db $00 ; Raw block
|12A313| db $FF
|12A314| db $22 ; Repeat byte
|12A315| db $00
|12A316| db $0F ; Raw block
|12A317| db $FF, $FF, $01, $FF, $FD, $FF, $FC, $FE
|12A31F| db $DE, $FC, $EA, $FC, $FE, $F8, $FE, $F0
|12A327| db $27 ; Repeat byte
|12A328| db $FF
|12A329| db $01 ; Raw block
|12A32A| db $80, $80
|12A32C| db $4D ; Repeat word
|12A32D| dw $007F
|12A32F| db $29 ; Repeat byte
|12A330| db $FF
|12A331| db $43 ; Repeat word
|12A332| dw $FF00
|12A334| db $02 ; Raw block
|12A335| db $FF, $00, $FF
|12A338| db $44 ; Repeat word
|12A339| dw $00FF
|12A33B| db $00 ; Raw block
|12A33C| db $FF
|12A33D| db $E4, $20 ; EXT Repeat byte
|12A33F| db $00
|12A340| db $09 ; Raw block
|12A341| db $D4, $54, $D6, $56, $C0, $40, $C6, $46
|12A349| db $F0, $40
|12A34B| db $44 ; Repeat word
|12A34C| dw $7FFF
|12A34E| db $05 ; Raw block
|12A34F| db $00, $2B, $29, $3F, $39, $3F
|12A355| db $24 ; Repeat byte
|12A356| db $00
|12A357| db $07 ; Raw block
|12A358| db $73, $73, $18, $18, $CE, $CE, $00, $00
|12A360| db $24 ; Repeat byte
|12A361| db $FF
|12A362| db $05 ; Raw block
|12A363| db $00, $FF, $8C, $E7, $31, $FF
|12A369| db $22 ; Repeat byte
|12A36A| db $00
|12A36B| db $E0, $38 ; EXT Raw block
|12A36D| db $C3, $43, $C6, $43, $EC, $67, $F4, $77
|12A375| db $F5, $77, $BD, $7F, $40, $BF, $FF, $00
|12A37D| db $3C, $3C, $19, $09, $09, $01, $00, $00
|12A385| db $0F, $F0, $2F, $F0, $1F, $F0, $8F, $78
|12A38D| db $47, $BC, $BB, $C6, $FF, $FE, $FF, $00
|12A395| db $00, $E0, $F0, $F8, $FC, $FE, $FE, $00
|12A39D| db $35, $D0, $6B, $A1, $D7, $43, $A8, $07
|12A3A5| db $80
|12A3A6| db $85 ; Copy past
|12A3A7| dw $00DE
|12A3A9| db $84 ; Copy past
|12A3AA| dw $01D7
|12A3AC| db $00 ; Raw block
|12A3AD| db $7F
|12A3AE| db $22 ; Repeat byte
|12A3AF| db $00
|12A3B0| db $07 ; Raw block
|12A3B1| db $FF, $F0, $FF, $F8, $FF, $FC, $01, $FE
|12A3B9| db $84 ; Copy past
|12A3BA| dw $00EA
|12A3BC| db $02 ; Raw block
|12A3BD| db $FF, $FF, $00
|12A3C0| db $83 ; Copy past
|12A3C1| dw $032A
|12A3C3| db $00 ; Raw block
|12A3C4| db $FF
|12A3C5| db $22 ; Repeat byte
|12A3C6| db $00
|12A3C7| db $E0, $37 ; EXT Raw block
|12A3C9| db $38, $E7, $7E, $CF, $FF, $8F, $EF, $07
|12A3D1| db $97, $00, $8F, $80, $C3, $E0, $80, $D0
|12A3D9| db $E7, $CF, $8F, $37, $78, $7F, $1F, $2F
|12A3E1| db $3F, $E4, $7B, $C8, $E8, $98, $EF, $1F
|12A3E9| db $EB, $18, $DF, $10, $B8, $20, $77, $47
|12A3F1| db $E3, $C7, $87, $00, $07, $EF, $DF, $B8
|12A3F9| db $F8, $F8, $0E, $F0, $FE, $E0, $DE, $E0
|12A401| db $43 ; Repeat word
|12A402| dw $C0FE
|12A404| db $02 ; Raw block
|12A405| db $DE, $E0, $FD
|12A408| db $28 ; Repeat byte
|12A409| db $FF
|12A40A| db $00 ; Raw block
|12A40B| db $00
|12A40C| db $4C ; Repeat word
|12A40D| dw $7F00
|12A40F| db $00 ; Raw block
|12A410| db $BF
|12A411| db $28 ; Repeat byte
|12A412| db $FF
|12A413| db $43 ; Repeat word
|12A414| dw $FFFD
|12A416| db $03 ; Raw block
|12A417| db $ED, $FF, $DD, $FF
|12A41B| db $43 ; Repeat word
|12A41C| dw $FEFC
|12A41E| db $03 ; Raw block
|12A41F| db $02, $FC, $F8, $F8
|12A423| db $27 ; Repeat byte
|12A424| db $FF
|12A425| db $02 ; Raw block
|12A426| db $BF, $C0, $FF
|12A429| db $43 ; Repeat word
|12A42A| dw $7F80
|12A42C| db $45 ; Repeat word
|12A42D| dw $7F00
|12A42F| db $22 ; Repeat byte
|12A430| db $00
|12A431| db $27 ; Repeat byte
|12A432| db $FF
|12A433| db $03 ; Raw block
|12A434| db $EE, $F0, $DE, $E0
|12A438| db $43 ; Repeat word
|12A439| dw $C0FE
|12A43B| db $83 ; Copy past
|12A43C| dw $039C
|12A43E| db $00 ; Raw block
|12A43F| db $01
|12A440| db $2A ; Repeat byte
|12A441| db $FF
|12A442| db $49 ; Repeat word
|12A443| dw $007F
|12A445| db $02 ; Raw block
|12A446| db $BF, $FF, $80
|12A449| db $2A ; Repeat byte
|12A44A| db $FF
|12A44B| db $0B ; Raw block
|12A44C| db $D0, $30, $88, $98, $44, $CC, $60, $E7
|12A454| db $71, $F0, $79, $F8
|12A458| db $43 ; Repeat word
|12A459| dw $FA7B
|12A45B| db $E0, $3F ; EXT Raw block
|12A45D| db $0F, $67, $33, $18, $0E, $06, $04, $04
|12A465| db $33, $EF, $62, $DE, $CA, $BE, $9A, $7E
|12A46D| db $B3, $77, $E3, $67, $CD, $47, $DA, $43
|12A475| db $E0, $C1, $81, $01, $08, $18, $38, $3C
|12A47D| db $60, $3F, $BE, $1F, $5F, $0F, $2F, $07
|12A485| db $17, $00, $8F, $80, $C7, $E0, $80, $F0
|12A48D| db $BF, $DF, $EF, $F7, $F8, $7F, $1F, $2F
|12A495| db $D7, $B0, $6B, $D8, $28, $F8, $8F, $FF
|12A49D| db $87 ; Copy past
|12A49E| dw $0380
|12A4A0| db $03 ; Raw block
|12A4A1| db $8F, $C7, $E7, $E0
|12A4A5| db $83 ; Copy past
|12A4A6| dw $038C
|12A4A8| db $E5, $7F ; EXT Repeat byte
|12A4AA| db $00
|12A4AB| db $FF ; End of GFX 17

;===================================================================================================

GFX_18:
|12A4AC| db $19 ; Raw block
|12A4AD| db $FF, $00, $7F, $80, $60, $90, $60, $98
|12A4B5| db $E0, $0C, $F0, $07, $FC, $00, $8F, $70
|12A4BD| db $00, $60, $6F, $67, $73, $78, $7F, $0F
|12A4C5| db $8F, $70
|12A4C7| db $43 ; Repeat word
|12A4C8| dw $01FE
|12A4CA| db $04 ; Raw block
|12A4CB| db $C6, $31, $C3, $08, $C3
|12A4D0| db $44 ; Repeat word
|12A4D1| dw $C104
|12A4D3| db $04 ; Raw block
|12A4D4| db $00, $7E, $7E, $0E, $37
|12A4D9| db $22 ; Repeat byte
|12A4DA| db $3B
|12A4DB| db $E0, $2F ; EXT Raw block
|12A4DD| db $4F, $48, $9F, $F8, $5F, $B8, $0F, $C8
|12A4E5| db $0C, $08, $09, $0F, $05, $06, $3E, $3F
|12A4ED| db $B0, $00, $00, $30, $F3, $F0, $F8, $C0
|12A4F5| db $FF, $00, $FF, $38, $CF, $67, $7F, $8F
|12A4FD| db $FC, $FF, $EB, $EC, $88, $EC, $6B, $AF
|12A505| db $00, $38, $70, $00, $00, $10, $13, $10
|12A50D| db $4F ; Repeat word
|12A50E| dw $0FF0
|12A510| db $27 ; Repeat byte
|12A511| db $70
|12A512| db $09 ; Raw block
|12A513| db $7C, $83, $E0, $F1, $F0, $F8, $F8, $FC
|12A51B| db $00, $02
|12A51D| db $45 ; Repeat word
|12A51E| dw $FEFC
|12A520| db $04 ; Raw block
|12A521| db $7C, $0E, $07, $03, $FD
|12A526| db $22 ; Repeat byte
|12A527| db $01
|12A528| db $01 ; Raw block
|12A529| db $77, $F7
|12A52B| db $43 ; Repeat word
|12A52C| dw $77F7
|12A52E| db $0A ; Raw block
|12A52F| db $B7, $77, $97, $37, $87, $17, $00, $8F
|12A537| db $00, $C0, $08
|12A53A| db $22 ; Repeat byte
|12A53B| db $88
|12A53C| db $03 ; Raw block
|12A53D| db $C8, $E8, $70, $3F
|12A541| db $48 ; Repeat word
|12A542| dw $00FF
|12A544| db $02 ; Raw block
|12A545| db $80, $FF, $C0
|12A548| db $43 ; Repeat word
|12A549| dw $00FF
|12A54B| db $23 ; Repeat byte
|12A54C| db $7F
|12A54D| db $03 ; Raw block
|12A54E| db $3F, $1F, $1F, $3F
|12A552| db $4F ; Repeat word
|12A553| dw $00FF
|12A555| db $02 ; Raw block
|12A556| db $C0, $F0, $FC
|12A559| db $22 ; Repeat byte
|12A55A| db $FE
|12A55B| db $0D ; Raw block
|12A55C| db $0E, $F2, $FF, $00, $F9, $07, $42, $BE
|12A564| db $F8, $C7, $58, $F8, $DF, $3F
|12A56A| db $83 ; Copy past
|12A56B| dw $00B0
|12A56D| db $04 ; Raw block
|12A56E| db $00, $00, $01, $00, $07
|12A573| db $22 ; Repeat byte
|12A574| db $00
|12A575| db $19 ; Raw block
|12A576| db $FF, $00, $DF, $50, $AF, $69, $DB, $3E
|12A57E| db $E2, $1B, $D5, $2F, $8B, $77, $BE, $76
|12A586| db $00, $20, $10, $00, $04, $00, $00, $01
|12A58E| db $BB, $77
|12A590| db $45 ; Repeat word
|12A591| dw $76BA
|12A593| db $43 ; Repeat word
|12A594| dw $77BB
|12A596| db $04 ; Raw block
|12A597| db $BA, $76, $AE, $76, $00
|12A59C| db $22 ; Repeat byte
|12A59D| db $01
|12A59E| db $1A ; Raw block
|12A59F| db $00, $00, $01, $01, $BF, $C0, $DF, $E0
|12A5A7| db $EF, $F0, $6F, $F0, $60, $F0, $A0, $B0
|12A5AF| db $40, $7F, $91, $EF, $1F, $0F, $00, $00
|12A5B7| db $0F, $4F, $80
|12A5BA| db $47 ; Repeat word
|12A5BB| dw $FF00
|12A5BD| db $23 ; Repeat byte
|12A5BE| db $00
|12A5BF| db $16 ; Raw block
|12A5C0| db $C0, $C0, $FF, $20, $3F, $F8, $E0, $00
|12A5C8| db $00, $FF, $3F, $00, $C0, $C4, $45, $D4
|12A5D0| db $55, $D0, $51, $D8, $59, $CC, $4D
|12A5D7| db $85 ; Copy past
|12A5D8| dw $0150
|12A5DA| db $0B ; Raw block
|12A5DB| db $3A, $2A, $2E, $26, $32, $3A, $2A, $2E
|12A5E3| db $FF, $00, $FE, $7F
|12A5E7| db $8B ; Copy past
|12A5E8| dw $0154
|12A5EA| db $01 ; Raw block
|12A5EB| db $00, $00
|12A5ED| db $85 ; Copy past
|12A5EE| dw $0162
|12A5F0| db $0B ; Raw block
|12A5F1| db $6D, $FE, $ED, $3F, $BD, $4F, $D1, $6F
|12A5F9| db $EE, $71, $F1, $7E
|12A5FD| db $43 ; Repeat word
|12A5FE| dw $77F7
|12A600| db $00 ; Raw block
|12A601| db $01
|12A602| db $24 ; Repeat byte
|12A603| db $00
|12A604| db $11 ; Raw block
|12A605| db $08, $08, $FF, $00, $DF, $BF, $EF, $DF
|12A60D| db $37, $CF, $D0, $E8, $EB, $F7, $0B, $F7
|12A615| db $F7, $7B
|12A617| db $23 ; Repeat byte
|12A618| db $00
|12A619| db $E0, $33 ; EXT Raw block
|12A61B| db $07, $00, $00, $80, $7F, $7F, $C1, $FF
|12A623| db $80, $E7, $83, $DE, $87, $FE, $BE, $FD
|12A62B| db $FD, $C3, $FF, $FF, $80, $00, $1C, $3E
|12A633| db $3E, $3C, $00, $00, $C9, $CE, $8B, $8C
|12A63B| db $4F, $48, $8F, $E8, $48, $AC, $0B, $CF
|12A643| db $09, $0E, $8B, $8C, $30, $70, $B0, $10
|12A64B| db $13, $30, $F0, $70
|12A64F| db $47 ; Repeat word
|12A650| dw $00FF
|12A652| db $48 ; Repeat word
|12A653| dw $FF00
|12A655| db $22 ; Repeat byte
|12A656| db $FF
|12A657| db $23 ; Repeat byte
|12A658| db $00
|12A659| db $44 ; Repeat word
|12A65A| dw $00FF
|12A65C| db $23 ; Repeat byte
|12A65D| db $00
|12A65E| db $44 ; Repeat word
|12A65F| dw $00FF
|12A661| db $02 ; Raw block
|12A662| db $FF, $00, $00
|12A665| db $22 ; Repeat byte
|12A666| db $FF
|12A667| db $23 ; Repeat byte
|12A668| db $00
|12A669| db $4F ; Repeat word
|12A66A| dw $0EE1
|12A66C| db $27 ; Repeat byte
|12A66D| db $70
|12A66E| db $48 ; Repeat word
|12A66F| dw $00FF
|12A671| db $02 ; Raw block
|12A672| db $80, $DF, $E0
|12A675| db $83 ; Copy past
|12A676| dw $0000
|12A678| db $23 ; Repeat byte
|12A679| db $7F
|12A67A| db $03 ; Raw block
|12A67B| db $1F, $0F, $0F, $3F
|12A67F| db $4F ; Repeat word
|12A680| dw $00FF
|12A682| db $00 ; Raw block
|12A683| db $FC
|12A684| db $25 ; Repeat byte
|12A685| db $FE
|12A686| db $00 ; Raw block
|12A687| db $FC
|12A688| db $37 ; Repeat byte
|12A689| db $FF
|12A68A| db $45 ; Repeat word
|12A68B| dw $77BB
|12A68D| db $43 ; Repeat word
|12A68E| dw $76BA
|12A690| db $01 ; Raw block
|12A691| db $BE, $76
|12A693| db $43 ; Repeat word
|12A694| dw $6FB7
|12A696| db $22 ; Repeat byte
|12A697| db $00
|12A698| db $22 ; Repeat byte
|12A699| db $01
|12A69A| db $17 ; Raw block
|12A69B| db $00, $00, $B7, $6F, $B3, $6F, $B9, $6B
|12A6A3| db $94, $6D, $B2, $57, $E2, $27, $FA, $7F
|12A6AB| db $F1, $0E, $00, $00, $04, $02, $08, $18
|12A6B3| db $84 ; Copy past
|12A6B4| dw $00EE
|12A6B6| db $06 ; Raw block
|12A6B7| db $E0, $68, $77, $08, $F7, $00, $00
|12A6BE| db $22 ; Repeat byte
|12A6BF| db $FF
|12A6C0| db $01 ; Raw block
|12A6C1| db $00, $FF
|12A6C3| db $22 ; Repeat byte
|12A6C4| db $00
|12A6C5| db $02 ; Raw block
|12A6C6| db $80, $00, $FF
|12A6C9| db $22 ; Repeat byte
|12A6CA| db $00
|12A6CB| db $E0, $21 ; EXT Raw block
|12A6CD| db $F8, $C0, $CF, $CF, $D0, $50, $D6, $56
|12A6D5| db $C4, $44, $C5, $45, $D0, $51, $D4, $55
|12A6DD| db $3F, $30, $2F, $29, $3B, $3A, $2E, $2A
|12A6E5| db $D4, $54, $D6, $56, $C0, $40, $C6, $46
|12A6ED| db $F0, $40
|12A6EF| db $44 ; Repeat word
|12A6F0| dw $7FFF
|12A6F2| db $05 ; Raw block
|12A6F3| db $00, $2B, $29, $3F, $39, $3F
|12A6F9| db $24 ; Repeat byte
|12A6FA| db $00
|12A6FB| db $07 ; Raw block
|12A6FC| db $73, $73, $18, $18, $CE, $CE, $00, $00
|12A704| db $24 ; Repeat byte
|12A705| db $FF
|12A706| db $05 ; Raw block
|12A707| db $00, $FF, $8C, $E7, $31, $FF
|12A70D| db $22 ; Repeat byte
|12A70E| db $00
|12A70F| db $0E ; Raw block
|12A710| db $DE, $21, $AC, $73, $B6, $79, $BB, $7C
|12A718| db $9C, $7C, $CF, $3F, $E0, $1F, $FF
|12A71F| db $24 ; Repeat byte
|12A720| db $00
|12A721| db $00 ; Raw block
|12A722| db $03
|12A723| db $22 ; Repeat byte
|12A724| db $00
|12A725| db $01 ; Raw block
|12A726| db $63, $E3
|12A728| db $43 ; Repeat word
|12A729| dw $FF00
|12A72B| db $00 ; Raw block
|12A72C| db $FF
|12A72D| db $22 ; Repeat byte
|12A72E| db $00
|12A72F| db $83 ; Copy past
|12A730| dw $02AB
|12A732| db $02 ; Raw block
|12A733| db $FF, $00, $1C
|12A736| db $22 ; Repeat byte
|12A737| db $00
|12A738| db $00 ; Raw block
|12A739| db $FF
|12A73A| db $22 ; Repeat byte
|12A73B| db $00
|12A73C| db $14 ; Raw block
|12A73D| db $1D, $E1, $32, $CB, $D7, $36, $4D, $CE
|12A745| db $1B, $1C, $F7, $F8, $0F, $F0, $FF, $00
|12A74D| db $02, $04, $08, $30, $E0
|12A752| db $22 ; Repeat byte
|12A753| db $00
|12A754| db $10 ; Raw block
|12A755| db $1F, $10, $EC, $FB, $76, $FD, $BA, $7D
|12A75D| db $EA, $1D, $6E, $19, $FF, $F0, $FF, $00
|12A765| db $E0
|12A766| db $23 ; Repeat byte
|12A767| db $00
|12A768| db $E0, $21 ; EXT Raw block
|12A76A| db $80, $00, $00, $FF, $FE, $FF, $FC, $FF
|12A772| db $F8, $FF, $F0, $FF, $E0, $FE, $C1, $FC
|12A77A| db $83, $F8, $07, $FE, $FD, $FB, $F7, $EF
|12A782| db $DF, $BF, $7F, $63, $9E, $33, $CE, $1B
|12A78A| db $E6, $7B
|12A78C| db $48 ; Repeat word
|12A78D| dw $0B76
|12A78F| db $02 ; Raw block
|12A790| db $1C, $0C, $04
|12A793| db $24 ; Repeat byte
|12A794| db $84
|12A795| db $0A ; Raw block
|12A796| db $00, $E0, $90, $7F, $D0, $3F, $70, $9F
|12A79E| db $3F, $C0, $00
|12A7A1| db $23 ; Repeat byte
|12A7A2| db $FF
|12A7A3| db $05 ; Raw block
|12A7A4| db $00, $1F, $00, $00, $80, $C0
|12A7AA| db $83 ; Copy past
|12A7AB| dw $01E6
|12A7AD| db $88 ; Copy past
|12A7AE| dw $0361
|12A7B0| db $05 ; Raw block
|12A7B1| db $FF, $C0, $FE, $81, $FC, $03
|12A7B7| db $87 ; Copy past
|12A7B8| dw $0370
|12A7BA| db $0F ; Raw block
|12A7BB| db $F9, $06, $F3, $0D, $E7, $1B, $CF, $37
|12A7C3| db $9F, $6F, $3F, $DF, $7F, $BF, $FF, $7F
|12A7CB| db $87 ; Copy past
|12A7CC| dw $0370
|12A7CE| db $37 ; Repeat byte
|12A7CF| db $FF
|12A7D0| db $E4, $2F ; EXT Repeat byte
|12A7D2| db $00
|12A7D3| db $13 ; Raw block
|12A7D4| db $FF, $78, $FF, $8F, $FF, $70, $FF, $1F
|12A7DC| db $FF, $00, $BF, $40, $81, $7E, $FF, $00
|12A7E4| db $78, $8F, $70, $1F
|12A7E8| db $23 ; Repeat byte
|12A7E9| db $00
|12A7EA| db $4F ; Repeat word
|12A7EB| dw $7E81
|12A7ED| db $27 ; Repeat byte
|12A7EE| db $00
|12A7EF| db $E0, $2F ; EXT Raw block
|12A7F1| db $9F, $18, $B9, $CF, $DE, $73, $E7, $BC
|12A7F9| db $B3, $DF, $B9, $6F, $DC, $77, $DE, $77
|12A801| db $68, $CF, $73, $BC, $DF, $6F, $77, $77
|12A809| db $BE, $B3, $F7, $3C, $7B, $CF, $BD, $F7
|12A811| db $DE, $7B, $EF, $BD, $F7, $DE, $73, $EE
|12A819| db $D0, $3C, $CF, $F7, $7B, $BD, $DE, $EE
|12A821| db $E5, $7F ; EXT Repeat byte
|12A823| db $00
|12A824| db $FF ; End of GFX 18

;===================================================================================================

GFX_19:
|12A825| db $18 ; Raw block
|12A826| db $FF, $01, $FE, $02, $04, $04, $F0, $08
|12A82E| db $20, $D0, $41, $A0, $82, $40, $E5, $61
|12A836| db $FE, $FD, $FB, $07, $0F, $1F, $3F, $1E
|12A83E| db $FF
|12A83F| db $26 ; Repeat byte
|12A840| db $80
|12A841| db $00 ; Raw block
|12A842| db $FF
|12A843| db $22 ; Repeat byte
|12A844| db $80
|12A845| db $03 ; Raw block
|12A846| db $FF, $FF, $00, $FF
|12A84A| db $25 ; Repeat byte
|12A84B| db $7F
|12A84C| db $E0, $21 ; EXT Raw block
|12A84E| db $00, $00, $D3, $0C, $D5, $0B, $D9, $05
|12A856| db $D0, $08, $C0, $10, $E1, $20, $C2, $40
|12A85E| db $85, $81, $E0, $E0, $E2, $E7, $EF, $DF
|12A866| db $BF, $7E, $FF, $00, $60, $FF, $B8, $FF
|12A86E| db $DC, $FF
|12A870| db $43 ; Repeat word
|12A871| dw $7B6B
|12A873| db $03 ; Raw block
|12A874| db $BF, $C0, $7F, $80
|12A878| db $23 ; Repeat byte
|12A879| db $00
|12A87A| db $15 ; Raw block
|12A87B| db $84, $84, $00, $00, $FF, $00, $04, $F8
|12A883| db $08, $F0, $F0, $00, $20, $C0, $41, $80
|12A88B| db $C2, $40, $A5, $61, $00, $03
|12A891| db $83 ; Copy past
|12A892| dw $0013
|12A894| db $01 ; Raw block
|12A895| db $3F, $1E
|12A897| db $E4, $2F ; EXT Repeat byte
|12A899| db $00
|12A89A| db $07 ; Raw block
|12A89B| db $FF, $00, $98, $70, $B0, $60, $B1, $61
|12A8A3| db $47 ; Repeat word
|12A8A4| dw $62B2
|12A8A6| db $03 ; Raw block
|12A8A7| db $00, $07, $0F, $0E
|12A8AB| db $23 ; Repeat byte
|12A8AC| db $0D
|12A8AD| db $00 ; Raw block
|12A8AE| db $FF
|12A8AF| db $24 ; Repeat byte
|12A8B0| db $00
|12A8B1| db $03 ; Raw block
|12A8B2| db $E0, $E0, $3F, $3F
|12A8B6| db $26 ; Repeat byte
|12A8B7| db $00
|12A8B8| db $03 ; Raw block
|12A8B9| db $FF, $FF, $1F, $C0
|12A8BD| db $22 ; Repeat byte
|12A8BE| db $FF
|12A8BF| db $47 ; Repeat word
|12A8C0| dw $62B2
|12A8C2| db $07 ; Raw block
|12A8C3| db $B1, $61, $B8, $68, $BC, $6C, $B7, $6F
|12A8CB| db $23 ; Repeat byte
|12A8CC| db $0D
|12A8CD| db $02 ; Raw block
|12A8CE| db $0E, $07, $03
|12A8D1| db $22 ; Repeat byte
|12A8D2| db $00
|12A8D3| db $07 ; Raw block
|12A8D4| db $40, $40, $00, $00, $1F, $1F, $E0, $E0
|12A8DC| db $23 ; Repeat byte
|12A8DD| db $00
|12A8DE| db $22 ; Repeat byte
|12A8DF| db $FF
|12A8E0| db $04 ; Raw block
|12A8E1| db $BF, $FF, $E0, $1F, $FF
|12A8E6| db $43 ; Repeat word
|12A8E7| dw $00FF
|12A8E9| db $44 ; Repeat word
|12A8EA| dw $FF00
|12A8EC| db $23 ; Repeat byte
|12A8ED| db $FF
|12A8EE| db $05 ; Raw block
|12A8EF| db $51, $FF, $5D, $FF, $55, $00
|12A8F5| db $27 ; Repeat byte
|12A8F6| db $FF
|12A8F7| db $02 ; Raw block
|12A8F8| db $10, $FF, $F0
|12A8FB| db $83 ; Copy past
|12A8FC| dw $0120
|12A8FE| db $03 ; Raw block
|12A8FF| db $FF, $90, $FF, $D0
|12A903| db $83 ; Copy past
|12A904| dw $0120
|12A906| db $27 ; Repeat byte
|12A907| db $FF
|12A908| db $0B ; Raw block
|12A909| db $83, $7C, $FF, $00, $83, $7C, $BF, $40
|12A911| db $A3, $5C, $FB, $04
|12A915| db $83 ; Copy past
|12A916| dw $0138
|12A918| db $11 ; Raw block
|12A919| db $7E, $02, $7E, $42, $5E, $06, $7E, $00
|12A921| db $C5, $44, $D5, $54, $D1, $50, $D9, $58
|12A929| db $CD, $4C
|12A92B| db $85 ; Copy past
|12A92C| dw $0150
|12A92E| db $0B ; Raw block
|12A92F| db $3A, $2A, $2E, $26, $32, $3A, $2A, $2E
|12A937| db $FF, $00, $FF, $7E
|12A93B| db $8B ; Copy past
|12A93C| dw $0154
|12A93E| db $01 ; Raw block
|12A93F| db $00, $00
|12A941| db $85 ; Copy past
|12A942| dw $0162
|12A944| db $0B ; Raw block
|12A945| db $B2, $73, $DD, $7E, $EF, $7C, $B3, $7C
|12A94D| db $BF, $7C, $93, $70
|12A951| db $43 ; Repeat word
|12A952| dw $7C8F
|12A954| db $00 ; Raw block
|12A955| db $0C
|12A956| db $23 ; Repeat byte
|12A957| db $00
|12A958| db $01 ; Raw block
|12A959| db $0C, $00
|12A95B| db $4F ; Repeat word
|12A95C| dw $FF00
|12A95E| db $28 ; Repeat byte
|12A95F| db $00
|12A960| db $01 ; Raw block
|12A961| db $FE, $FF
|12A963| db $4D ; Repeat word
|12A964| dw $038A
|12A966| db $00 ; Raw block
|12A967| db $00
|12A968| db $26 ; Repeat byte
|12A969| db $FC
|12A96A| db $4E ; Repeat word
|12A96B| dw $00FF
|12A96D| db $28 ; Repeat byte
|12A96E| db $00
|12A96F| db $01 ; Raw block
|12A970| db $FF, $00
|12A972| db $25 ; Repeat byte
|12A973| db $80
|12A974| db $00 ; Raw block
|12A975| db $FF
|12A976| db $22 ; Repeat byte
|12A977| db $80
|12A978| db $00 ; Raw block
|12A979| db $FF
|12A97A| db $43 ; Repeat word
|12A97B| dw $00FF
|12A97D| db $24 ; Repeat byte
|12A97E| db $7F
|12A97F| db $E4, $31 ; EXT Repeat byte
|12A981| db $00
|12A982| db $43 ; Repeat word
|12A983| dw $62B2
|12A985| db $47 ; Repeat word
|12A986| dw $61B1
|12A988| db $43 ; Repeat word
|12A989| dw $62B2
|12A98B| db $01 ; Raw block
|12A98C| db $0D, $0D
|12A98E| db $23 ; Repeat byte
|12A98F| db $0E
|12A990| db $05 ; Raw block
|12A991| db $0D, $0D, $42, $42, $00, $00
|12A997| db $23 ; Repeat byte
|12A998| db $18
|12A999| db $1F ; Raw block
|12A99A| db $00, $00, $06, $06, $46, $46, $00, $00
|12A9A2| db $BD, $FF, $E7, $E7, $FF, $F9, $B9, $FF
|12A9AA| db $BB, $77, $AF, $78, $A7, $7F, $80, $5F
|12A9B2| db $A0, $6F, $90, $70, $C0, $3F, $7F, $80
|12A9BA| db $22 ; Repeat byte
|12A9BB| db $00
|12A9BC| db $1B ; Raw block
|12A9BD| db $20, $10, $0F, $00, $00, $EF, $F0, $F0
|12A9C5| db $08, $EB, $DC, $36, $DA, $76, $BB, $24
|12A9CD| db $3B, $02, $FD, $FF, $00, $00, $07, $00
|12A9D5| db $01, $00, $C0, $00
|12A9D9| db $50 ; Repeat word
|12A9DA| dw $FF00
|12A9DC| db $26 ; Repeat byte
|12A9DD| db $FF
|12A9DE| db $12 ; Raw block
|12A9DF| db $00, $FE, $11, $FC, $F3, $FF, $1F, $FF
|12A9E7| db $F5, $FF, $95, $FF, $BD, $FF, $21, $FF
|12A9EF| db $FF, $FD, $FB
|12A9F2| db $25 ; Repeat byte
|12A9F3| db $FF
|12A9F4| db $05 ; Raw block
|12A9F5| db $03, $FE, $05, $FE, $FF, $FC
|12A9FB| db $44 ; Repeat word
|12A9FC| dw $ACFF
|12A9FE| db $04 ; Raw block
|12A9FF| db $BC, $FF, $84, $FF, $FC
|12AA04| db $27 ; Repeat byte
|12AA05| db $FE
|12AA06| db $09 ; Raw block
|12AA07| db $D4, $54, $D6, $56, $C0, $40, $C6, $46
|12AA0F| db $F0, $40
|12AA11| db $44 ; Repeat word
|12AA12| dw $7FFF
|12AA14| db $05 ; Raw block
|12AA15| db $00, $2B, $29, $3F, $39, $3F
|12AA1B| db $24 ; Repeat byte
|12AA1C| db $00
|12AA1D| db $07 ; Raw block
|12AA1E| db $73, $73, $18, $18, $CE, $CE, $00, $00
|12AA26| db $24 ; Repeat byte
|12AA27| db $FF
|12AA28| db $05 ; Raw block
|12AA29| db $00, $FF, $8C, $E7, $31, $FF
|12AA2F| db $22 ; Repeat byte
|12AA30| db $00
|12AA31| db $0F ; Raw block
|12AA32| db $CF, $3C, $EE, $1D, $FE, $2D, $FF, $31
|12AA3A| db $DF, $3D, $CE, $3C, $C3, $3D, $E2, $1D
|12AA42| db $24 ; Repeat byte
|12AA43| db $00
|12AA44| db $07 ; Raw block
|12AA45| db $01, $00, $00, $5D, $A2, $A2, $5D, $00
|12AA4D| db $44 ; Repeat word
|12AA4E| dw $F7FF
|12AA50| db $05 ; Raw block
|12AA51| db $08, $00, $FF, $F7, $08, $F7
|12AA57| db $24 ; Repeat byte
|12AA58| db $00
|12AA59| db $01 ; Raw block
|12AA5A| db $F7, $00
|12AA5C| db $44 ; Repeat word
|12AA5D| dw $FF00
|12AA5F| db $03 ; Raw block
|12AA60| db $71, $BE, $38, $DF
|12AA64| db $43 ; Repeat word
|12AA65| dw $EFFC
|12AA67| db $03 ; Raw block
|12AA68| db $FF, $00, $9A, $7B
|12AA6C| db $26 ; Repeat byte
|12AA6D| db $00
|12AA6E| db $04 ; Raw block
|12AA6F| db $04, $5A, $BB, $9A, $7B
|12AA74| db $83 ; Copy past
|12AA75| dw $0348
|12AA77| db $01 ; Raw block
|12AA78| db $87, $78
|12AA7A| db $85 ; Copy past
|12AA7B| dw $034A
|12AA7D| db $23 ; Repeat byte
|12AA7E| db $04
|12AA7F| db $00 ; Raw block
|12AA80| db $00
|12AA81| db $22 ; Repeat byte
|12AA82| db $04
|12AA83| db $37 ; Repeat byte
|12AA84| db $00
|12AA85| db $83 ; Copy past
|12AA86| dw $0025
|12AA88| db $06 ; Raw block
|12AA89| db $C8, $7F, $CF, $7F, $F8, $7F, $D7
|12AA90| db $44 ; Repeat word
|12AA91| dw $D47F
|12AA93| db $27 ; Repeat byte
|12AA94| db $00
|12AA95| db $83 ; Copy past
|12AA96| dw $010D
|12AA98| db $04 ; Raw block
|12AA99| db $48, $FF, $CB, $FF, $2A
|12AA9E| db $22 ; Repeat byte
|12AA9F| db $FF
|12AAA0| db $43 ; Repeat word
|12AAA1| dw $FF00
|12AAA3| db $27 ; Repeat byte
|12AAA4| db $00
|12AAA5| db $0F ; Raw block
|12AAA6| db $D4, $7F, $DC, $7F, $C4, $7F, $FC, $7F
|12AAAE| db $C4, $7F, $CC, $7F, $F4, $7F, $D4, $7F
|12AAB6| db $27 ; Repeat byte
|12AAB7| db $00
|12AAB8| db $16 ; Raw block
|12AAB9| db $07, $FF, $0D, $FF, $11, $FF, $22, $FF
|12AAC1| db $7F, $FF, $C4, $FF, $A8, $FF, $90, $FF
|12AAC9| db $03, $0F, $1F, $3F, $7F, $7F, $FF
|12AAD0| db $50 ; Repeat word
|12AAD1| dw $00FF
|12AAD3| db $27 ; Repeat byte
|12AAD4| db $00
|12AAD5| db $09 ; Raw block
|12AAD6| db $FF, $00, $A0, $7F, $98, $7F, $8C, $7F
|12AADE| db $87, $7F
|12AAE0| db $44 ; Repeat word
|12AAE1| dw $7E83
|12AAE3| db $01 ; Raw block
|12AAE4| db $7F, $00
|12AAE6| db $26 ; Repeat byte
|12AAE7| db $7F
|12AAE8| db $0B ; Raw block
|12AAE9| db $85, $7E, $8B, $7C, $97, $78, $AF, $70
|12AAF1| db $9F, $60, $BF, $40
|12AAF5| db $43 ; Repeat word
|12AAF6| dw $00FF
|12AAF8| db $26 ; Repeat byte
|12AAF9| db $7F
|12AAFA| db $00 ; Raw block
|12AAFB| db $00
|12AAFC| db $83 ; Copy past
|12AAFD| dw $03FC
|12AAFF| db $46 ; Repeat word
|12AB00| dw $7E83
|12AB02| db $83 ; Copy past
|12AB03| dw $03F9
|12AB05| db $28 ; Repeat byte
|12AB06| db $7F
|12AB07| db $01 ; Raw block
|12AB08| db $FF, $51
|12AB0A| db $22 ; Repeat byte
|12AB0B| db $FF
|12AB0C| db $8C ; Copy past
|12AB0D| dw $0125
|12AB0F| db $04 ; Raw block
|12AB10| db $F7, $F7, $FB, $FD, $FE
|12AB15| db $43 ; Repeat word
|12AB16| dw $00FF
|12AB18| db $23 ; Repeat byte
|12AB19| db $FF
|12AB1A| db $06 ; Raw block
|12AB1B| db $45, $FF, $55, $FF, $5D, $FF, $51
|12AB22| db $2A ; Repeat byte
|12AB23| db $FF
|12AB24| db $00 ; Raw block
|12AB25| db $45
|12AB26| db $22 ; Repeat byte
|12AB27| db $FF
|12AB28| db $4A ; Repeat word
|12AB29| dw $FF00
|12AB2B| db $26 ; Repeat byte
|12AB2C| db $FF
|12AB2D| db $E5, $80 ; EXT Repeat byte
|12AB2F| db $00
|12AB30| db $FF ; End of GFX 19

;===================================================================================================

GFX_1A:
|12AB31| db $05 ; Raw block
|12AB32| db $FF, $F0, $FF, $EF, $EF, $DF
|12AB38| db $43 ; Repeat word
|12AB39| dw $BECE
|12AB3B| db $45 ; Repeat word
|12AB3C| dw $7E8E
|12AB3E| db $04 ; Raw block
|12AB3F| db $F0, $E0, $C0, $81, $81
|12AB44| db $22 ; Repeat byte
|12AB45| db $01
|12AB46| db $01 ; Raw block
|12AB47| db $FF, $00
|12AB49| db $43 ; Repeat word
|12AB4A| dw $FFFE
|12AB4C| db $43 ; Repeat word
|12AB4D| dw $0100
|12AB4F| db $05 ; Raw block
|12AB50| db $7E, $7F, $7F, $7E, $61, $7E
|12AB56| db $22 ; Repeat byte
|12AB57| db $00
|12AB58| db $01 ; Raw block
|12AB59| db $FE, $FE
|12AB5B| db $22 ; Repeat byte
|12AB5C| db $80
|12AB5D| db $E0, $23 ; EXT Raw block
|12AB5F| db $FF, $00, $F7, $E3, $EF, $CB, $5F, $10
|12AB67| db $B0, $20, $EF, $48, $D8, $10, $B4, $27
|12AB6F| db $00, $08, $10, $A0, $4F, $10, $27, $48
|12AB77| db $FF, $00, $F8, $E8, $E0, $C7, $CF, $90
|12AB7F| db $98, $27, $B3, $0C
|12AB83| db $43 ; Repeat word
|12AB84| dw $1FA0
|12AB86| db $17 ; Raw block
|12AB87| db $00, $07, $18, $20, $47, $4F, $5F, $5F
|12AB8F| db $EE, $22, $EE, $68, $CE, $6C, $8A, $6C
|12AB97| db $92, $7C, $96, $7A, $97, $7B, $93, $7D
|12AB9F| db $23 ; Repeat byte
|12ABA0| db $11
|12ABA1| db $09 ; Raw block
|12ABA2| db $01, $01, $00, $00, $FF, $C0, $7F, $6F
|12ABAA| db $70, $6F
|12ABAC| db $43 ; Repeat word
|12ABAD| dw $303F
|12ABAF| db $E0, $68 ; EXT Raw block
|12ABB1| db $7F, $70, $FF, $F0, $FF, $E0, $00, $80
|12ABB9| db $80, $C0, $C0, $80, $00, $00, $E1, $47
|12ABC1| db $A1, $43, $F2, $11, $DB, $49, $EE, $62
|12ABC9| db $BC, $74, $9F, $69, $B3, $52, $18, $1C
|12ABD1| db $0C, $24, $11, $03, $00, $0C, $FF, $FE
|12ABD9| db $FF, $FC, $FF, $F0, $F0, $EF, $E7, $DF
|12ABE1| db $C1, $BF, $83, $7F, $82, $7E, $FE, $FC
|12ABE9| db $F0, $E8, $D0, $A0, $40, $41, $FF, $03
|12ABF1| db $03, $FC, $10, $FF, $24, $EF, $C4, $CC
|12ABF9| db $A5, $AD, $72, $76, $B1, $F3, $03, $FC
|12AC01| db $80, $10, $33, $52, $89, $0C, $85, $7D
|12AC09| db $84, $7C, $86, $7E, $8F, $7F, $88, $7F
|12AC11| db $90, $7F, $A0, $7F, $80, $7F, $42, $43
|12AC19| db $41
|12AC1A| db $23 ; Repeat byte
|12AC1B| db $40
|12AC1C| db $1A ; Raw block
|12AC1D| db $41, $E8, $EC, $D3, $DB, $27, $37, $CF
|12AC25| db $EF, $2D, $EF, $23, $E3, $6C, $EC, $53
|12AC2D| db $DF, $13, $24, $C8, $10, $10, $1C, $93
|12AC35| db $A0, $FF, $00
|12AC38| db $44 ; Repeat word
|12AC39| dw $FF00
|12AC3B| db $23 ; Repeat byte
|12AC3C| db $FF
|12AC3D| db $05 ; Raw block
|12AC3E| db $51, $FF, $5D, $FF, $55, $00
|12AC44| db $27 ; Repeat byte
|12AC45| db $FF
|12AC46| db $02 ; Raw block
|12AC47| db $10, $FF, $F0
|12AC4A| db $83 ; Copy past
|12AC4B| dw $0120
|12AC4D| db $03 ; Raw block
|12AC4E| db $FF, $90, $FF, $D0
|12AC52| db $83 ; Copy past
|12AC53| dw $0120
|12AC55| db $27 ; Repeat byte
|12AC56| db $FF
|12AC57| db $0B ; Raw block
|12AC58| db $83, $7C, $FF, $00, $83, $7C, $BF, $40
|12AC60| db $A3, $5C, $FB, $04
|12AC64| db $83 ; Copy past
|12AC65| dw $0138
|12AC67| db $11 ; Raw block
|12AC68| db $7E, $02, $7E, $42, $5E, $06, $7E, $00
|12AC70| db $C5, $44, $D5, $54, $D1, $50, $D9, $58
|12AC78| db $CD, $4C
|12AC7A| db $85 ; Copy past
|12AC7B| dw $0150
|12AC7D| db $0B ; Raw block
|12AC7E| db $3A, $2A, $2E, $26, $32, $3A, $2A, $2E
|12AC86| db $FF, $00, $FF, $7E
|12AC8A| db $8B ; Copy past
|12AC8B| dw $0154
|12AC8D| db $01 ; Raw block
|12AC8E| db $00, $00
|12AC90| db $85 ; Copy past
|12AC91| dw $0162
|12AC93| db $13 ; Raw block
|12AC94| db $C4, $3F, $AA, $6E, $44, $C6, $6C, $EE
|12AC9C| db $7C, $FE, $BA, $7E, $C6, $3A, $FE, $06
|12ACA4| db $00, $11, $39, $11
|12ACA8| db $23 ; Repeat byte
|12ACA9| db $01
|12ACAA| db $12 ; Raw block
|12ACAB| db $8C, $1F, $C2, $4E, $EA, $6E, $B4, $7C
|12ACB3| db $CC, $3C, $BC, $7C, $CE, $7E, $E3, $5F
|12ACBB| db $60, $31, $11
|12ACBE| db $22 ; Repeat byte
|12ACBF| db $03
|12ACC0| db $E0, $47 ; EXT Raw block
|12ACC2| db $01, $00, $AF, $08, $D8, $50, $D4, $07
|12ACCA| db $EF, $28, $EF, $0C, $F6, $17, $FB, $0B
|12ACD2| db $FD, $05, $50, $27, $28, $10, $10, $08
|12ACDA| db $04, $02, $B0, $2F, $98, $57, $07, $60
|12ACE2| db $A8, $78, $90, $7F, $CE, $3E, $67, $9F
|12ACEA| db $B8, $C7, $4F, $27, $98, $07, $00, $01
|12ACF2| db $00, $00, $99, $7E, $8C, $6F, $8F, $6F
|12ACFA| db $80, $60, $90, $5F, $A0, $3F, $C0, $7F
|12AD02| db $FF, $00, $00, $10, $10, $1F, $20, $40
|12AD0A| db $83 ; Copy past
|12AD0B| dw $0109
|12AD0D| db $00 ; Raw block
|12AD0E| db $00
|12AD0F| db $22 ; Repeat byte
|12AD10| db $FF
|12AD11| db $22 ; Repeat byte
|12AD12| db $00
|12AD13| db $44 ; Repeat word
|12AD14| dw $00FF
|12AD16| db $00 ; Raw block
|12AD17| db $FF
|12AD18| db $23 ; Repeat byte
|12AD19| db $00
|12AD1A| db $00 ; Raw block
|12AD1B| db $FF
|12AD1C| db $23 ; Repeat byte
|12AD1D| db $00
|12AD1E| db $E0, $47 ; EXT Raw block
|12AD20| db $F8, $50, $FF, $68, $B7, $63, $D4, $23
|12AD28| db $BB, $4F, $DF, $60, $9F, $1F, $FF, $00
|12AD30| db $07, $00, $08, $08, $00, $00, $60, $00
|12AD38| db $86, $7E, $8B, $7F, $92, $7F, $81, $7F
|12AD40| db $82, $7E, $C5, $BD, $ED, $9D, $FD, $BD
|12AD48| db $41, $40, $42, $4C, $79, $BA, $92, $A2
|12AD50| db $E8, $EF, $10, $1C, $03, $FB, $03, $1B
|12AD58| db $E3, $EB, $E5, $ED, $F2, $F6, $B0, $F7
|12AD60| db $10, $E3, $04, $E4, $14, $12, $09, $08
|12AD68| db $43 ; Repeat word
|12AD69| dw $7F80
|12AD6B| db $07 ; Raw block
|12AD6C| db $C1, $3E, $E1, $9E, $FF, $C0, $FF, $F8
|12AD74| db $23 ; Repeat byte
|12AD75| db $FF
|12AD76| db $07 ; Raw block
|12AD77| db $63, $77, $3E, $9E, $C0, $F8, $FF, $FF
|12AD7F| db $43 ; Repeat word
|12AD80| dw $BF20
|12AD82| db $13 ; Raw block
|12AD83| db $41, $FF, $01, $FF, $00, $FF, $80, $7F
|12AD8B| db $C0, $3F, $FF, $80, $C0, $C0, $91, $B1
|12AD93| db $B8, $7F, $3F, $80
|12AD97| db $4F ; Repeat word
|12AD98| dw $00FF
|12AD9A| db $26 ; Repeat byte
|12AD9B| db $FF
|12AD9C| db $12 ; Raw block
|12AD9D| db $00, $FE, $11, $FC, $F3, $FF, $1F, $FF
|12ADA5| db $F5, $FF, $95, $FF, $BD, $FF, $21, $FF
|12ADAD| db $FF, $FD, $FB
|12ADB0| db $25 ; Repeat byte
|12ADB1| db $FF
|12ADB2| db $05 ; Raw block
|12ADB3| db $03, $FE, $05, $FE, $FF, $FC
|12ADB9| db $44 ; Repeat word
|12ADBA| dw $ACFF
|12ADBC| db $04 ; Raw block
|12ADBD| db $BC, $FF, $84, $FF, $FC
|12ADC2| db $27 ; Repeat byte
|12ADC3| db $FE
|12ADC4| db $09 ; Raw block
|12ADC5| db $D4, $54, $D6, $56, $C0, $40, $C6, $46
|12ADCD| db $F0, $40
|12ADCF| db $44 ; Repeat word
|12ADD0| dw $7FFF
|12ADD2| db $05 ; Raw block
|12ADD3| db $00, $2B, $29, $3F, $39, $3F
|12ADD9| db $24 ; Repeat byte
|12ADDA| db $00
|12ADDB| db $07 ; Raw block
|12ADDC| db $73, $73, $18, $18, $CE, $CE, $00, $00
|12ADE4| db $24 ; Repeat byte
|12ADE5| db $FF
|12ADE6| db $05 ; Raw block
|12ADE7| db $00, $FF, $8C, $E7, $31, $FF
|12ADED| db $22 ; Repeat byte
|12ADEE| db $00
|12ADEF| db $1D ; Raw block
|12ADF0| db $BC, $FD, $7C, $7D, $78, $79, $F8, $79
|12ADF8| db $60, $61, $3B, $01, $BF, $E1, $8E, $E2
|12AE00| db $02, $82, $86, $86, $9E, $FE, $1E, $1D
|12AE08| db $6E, $FA, $67, $6A, $77, $76
|12AE0E| db $43 ; Repeat word
|12AE0F| dw $7277
|12AE11| db $E0, $20 ; EXT Raw block
|12AE13| db $3B, $39, $1D, $1C, $0E, $0E, $05, $95
|12AE1B| db $89, $8D, $8D, $C6, $E3, $F1, $D3, $C3
|12AE23| db $D9, $C1, $B5, $81, $63, $00, $C3, $00
|12AE2B| db $83, $01, $87, $03, $FF, $04, $3C, $3E
|12AE33| db $7E
|12AE34| db $22 ; Repeat byte
|12AE35| db $FE
|12AE36| db $E0, $21 ; EXT Raw block
|12AE38| db $FC, $F8, $C3, $80, $80, $78, $F8, $7E
|12AE40| db $85, $87, $62, $03, $F8, $01, $8D, $01
|12AE48| db $87, $00, $3F, $07, $01, $78, $FC, $FE
|12AE50| db $FE, $FF, $FF, $7E, $FF, $F6, $FF, $FC
|12AE58| db $FF, $BC
|12AE5A| db $44 ; Repeat word
|12AE5B| dw $FEFF
|12AE5D| db $09 ; Raw block
|12AE5E| db $76, $FF, $00, $7E, $F6, $FC, $BC, $FE
|12AE66| db $FE, $76
|12AE68| db $43 ; Repeat word
|12AE69| dw $FF00
|12AE6B| db $07 ; Raw block
|12AE6C| db $7F, $C8, $7F, $CF, $7F, $F8, $7F, $D7
|12AE74| db $44 ; Repeat word
|12AE75| dw $D47F
|12AE77| db $27 ; Repeat byte
|12AE78| db $00
|12AE79| db $83 ; Copy past
|12AE7A| dw $010D
|12AE7C| db $04 ; Raw block
|12AE7D| db $48, $FF, $CB, $FF, $2A
|12AE82| db $22 ; Repeat byte
|12AE83| db $FF
|12AE84| db $43 ; Repeat word
|12AE85| dw $FF00
|12AE87| db $27 ; Repeat byte
|12AE88| db $00
|12AE89| db $0F ; Raw block
|12AE8A| db $D4, $7F, $DC, $7F, $C4, $7F, $FC, $7F
|12AE92| db $C4, $7F, $CC, $7F, $F4, $7F, $D4, $7F
|12AE9A| db $27 ; Repeat byte
|12AE9B| db $00
|12AE9C| db $16 ; Raw block
|12AE9D| db $07, $FF, $0D, $FF, $11, $FF, $22, $FF
|12AEA5| db $7F, $FF, $C4, $FF, $A8, $FF, $90, $FF
|12AEAD| db $03, $0F, $1F, $3F, $7F, $7F, $FF
|12AEB4| db $50 ; Repeat word
|12AEB5| dw $00FF
|12AEB7| db $27 ; Repeat byte
|12AEB8| db $00
|12AEB9| db $09 ; Raw block
|12AEBA| db $FF, $00, $A0, $7F, $98, $7F, $8C, $7F
|12AEC2| db $87, $7F
|12AEC4| db $44 ; Repeat word
|12AEC5| dw $7E83
|12AEC7| db $01 ; Raw block
|12AEC8| db $7F, $00
|12AECA| db $26 ; Repeat byte
|12AECB| db $7F
|12AECC| db $0B ; Raw block
|12AECD| db $85, $7E, $8B, $7C, $97, $78, $AF, $70
|12AED5| db $9F, $60, $BF, $40
|12AED9| db $43 ; Repeat word
|12AEDA| dw $00FF
|12AEDC| db $26 ; Repeat byte
|12AEDD| db $7F
|12AEDE| db $00 ; Raw block
|12AEDF| db $00
|12AEE0| db $83 ; Copy past
|12AEE1| dw $03FC
|12AEE3| db $46 ; Repeat word
|12AEE4| dw $7E83
|12AEE6| db $83 ; Copy past
|12AEE7| dw $03F9
|12AEE9| db $28 ; Repeat byte
|12AEEA| db $7F
|12AEEB| db $01 ; Raw block
|12AEEC| db $FF, $51
|12AEEE| db $22 ; Repeat byte
|12AEEF| db $FF
|12AEF0| db $8C ; Copy past
|12AEF1| dw $0125
|12AEF3| db $04 ; Raw block
|12AEF4| db $F7, $F7, $FB, $FD, $FE
|12AEF9| db $43 ; Repeat word
|12AEFA| dw $00FF
|12AEFC| db $23 ; Repeat byte
|12AEFD| db $FF
|12AEFE| db $06 ; Raw block
|12AEFF| db $45, $FF, $55, $FF, $5D, $FF, $51
|12AF06| db $2A ; Repeat byte
|12AF07| db $FF
|12AF08| db $00 ; Raw block
|12AF09| db $45
|12AF0A| db $22 ; Repeat byte
|12AF0B| db $FF
|12AF0C| db $4A ; Repeat word
|12AF0D| dw $FF00
|12AF0F| db $26 ; Repeat byte
|12AF10| db $FF
|12AF11| db $E5, $80 ; EXT Repeat byte
|12AF13| db $00
|12AF14| db $FF ; End of GFX 1A

;===================================================================================================

GFX_1B:
|12AF15| db $02 ; Raw block
|12AF16| db $FF, $04, $F8
|12AF19| db $22 ; Repeat byte
|12AF1A| db $08
|12AF1B| db $E0, $2B ; EXT Raw block
|12AF1D| db $FA, $06, $77, $99, $69, $A6, $CA, $45
|12AF25| db $4B, $C4, $FB, $F7, $F7, $01, $00, $16
|12AF2D| db $37, $35, $DB, $18, $ED, $0C, $75, $04
|12AF35| db $31, $00, $19, $00, $99, $80, $C9, $40
|12AF3D| db $49, $80, $E7, $F3, $FB, $FF, $FF, $7F
|12AF45| db $3F, $BF, $FB, $00
|12AF49| db $43 ; Repeat word
|12AF4A| dw $C03B
|12AF4C| db $09 ; Raw block
|12AF4D| db $FB, $00, $2B, $C0, $23, $C1, $F3, $10
|12AF55| db $33, $D0
|12AF57| db $23 ; Repeat byte
|12AF58| db $1C
|12AF59| db $07 ; Raw block
|12AF5A| db $1D, $1C, $0C, $0C, $FF, $00, $00, $FF
|12AF62| db $45 ; Repeat word
|12AF63| dw $00FF
|12AF65| db $22 ; Repeat byte
|12AF66| db $FF
|12AF67| db $01 ; Raw block
|12AF68| db $00, $FF
|12AF6A| db $24 ; Repeat byte
|12AF6B| db $00
|12AF6C| db $00 ; Raw block
|12AF6D| db $FF
|12AF6E| db $23 ; Repeat byte
|12AF6F| db $00
|12AF70| db $83 ; Copy past
|12AF71| dw $004B
|12AF73| db $00 ; Raw block
|12AF74| db $FF
|12AF75| db $25 ; Repeat byte
|12AF76| db $80
|12AF77| db $22 ; Repeat byte
|12AF78| db $FF
|12AF79| db $83 ; Copy past
|12AF7A| dw $005A
|12AF7C| db $22 ; Repeat byte
|12AF7D| db $7F
|12AF7E| db $43 ; Repeat word
|12AF7F| dw $FF00
|12AF81| db $15 ; Raw block
|12AF82| db $FF, $00, $FF, $F9, $0D, $09, $15, $11
|12AF8A| db $25, $21, $E5, $E1, $E5, $21, $00, $FF
|12AF92| db $06, $F6, $EE, $DE, $1E, $DE
|12AF98| db $84 ; Copy past
|12AF99| dw $004A
|12AF9B| db $E0, $22 ; EXT Raw block
|12AF9D| db $FE, $03, $82, $83, $C2, $C3, $E2, $EF
|12AFA5| db $FE, $EF, $F0, $00, $FF, $01, $7D, $3D
|12AFAD| db $1D, $01, $0F, $40, $BF, $B9, $7F, $F7
|12AFB5| db $7F, $EF, $7F, $DE, $7F, $85, $27, $80
|12AFBD| db $7F, $9B, $7F
|12AFC0| db $24 ; Repeat byte
|12AFC1| db $00
|12AFC2| db $00 ; Raw block
|12AFC3| db $58
|12AFC4| db $22 ; Repeat byte
|12AFC5| db $00
|12AFC6| db $0E ; Raw block
|12AFC7| db $FF, $E7, $FF, $9F, $FF, $7E, $FF, $FC
|12AFCF| db $FF, $08, $0C, $00, $FF, $3B, $FF
|12AFD6| db $24 ; Repeat byte
|12AFD7| db $00
|12AFD8| db $02 ; Raw block
|12AFD9| db $F3, $00, $00
|12AFDC| db $43 ; Repeat word
|12AFDD| dw $3FAD
|12AFDF| db $0B ; Raw block
|12AFE0| db $9B, $3F, $A0, $68, $80, $7F, $B6, $7F
|12AFE8| db $F6, $7F, $B7, $3F
|12AFEC| db $22 ; Repeat byte
|12AFED| db $40
|12AFEE| db $00 ; Raw block
|12AFEF| db $17
|12AFF0| db $22 ; Repeat byte
|12AFF1| db $00
|12AFF2| db $10 ; Raw block
|12AFF3| db $40, $DD, $FF, $EE, $FF, $ED, $FF, $1A
|12AFFB| db $7E, $00, $FF, $F7, $FF, $EF, $FF, $1E
|12B003| db $FF
|12B004| db $22 ; Repeat byte
|12B005| db $00
|12B006| db $00 ; Raw block
|12B007| db $81
|12B008| db $23 ; Repeat byte
|12B009| db $00
|12B00A| db $17 ; Raw block
|12B00B| db $75, $0A, $B5, $8A, $5D, $C2, $AD, $62
|12B013| db $D7, $30, $A3, $60, $F5, $0C, $FA, $06
|12B01B| db $80, $40, $20, $10, $08, $1C, $02, $01
|12B023| db $37 ; Repeat byte
|12B024| db $00
|12B025| db $00 ; Raw block
|12B026| db $DF
|12B027| db $4A ; Repeat word
|12B028| dw $FF00
|12B02A| db $05 ; Raw block
|12B02B| db $DF, $1F, $DF, $00, $E0, $FF
|12B031| db $22 ; Repeat byte
|12B032| db $00
|12B033| db $02 ; Raw block
|12B034| db $FF, $E0, $E0
|12B037| db $4B ; Repeat word
|12B038| dw $00FF
|12B03A| db $22 ; Repeat byte
|12B03B| db $FF
|12B03C| db $02 ; Raw block
|12B03D| db $00, $00, $FF
|12B040| db $22 ; Repeat byte
|12B041| db $00
|12B042| db $84 ; Copy past
|12B043| dw $006E
|12B045| db $06 ; Raw block
|12B046| db $40, $00, $3F, $1F, $1F, $0F, $0F
|12B04D| db $26 ; Repeat byte
|12B04E| db $00
|12B04F| db $01 ; Raw block
|12B050| db $7F, $3F
|12B052| db $25 ; Repeat byte
|12B053| db $00
|12B054| db $E0, $39 ; EXT Raw block
|12B056| db $49, $C6, $44, $C3, $23, $E0, $B8, $78
|12B05E| db $FC, $1C, $F7, $6F, $99, $07, $9F, $10
|12B066| db $36, $3B, $1C, $07, $03, $00, $60, $60
|12B06E| db $63, $A0, $67, $A0, $EB, $20, $E1, $A0
|12B076| db $65, $6C, $09, $0C, $C4, $C4, $0E, $FE
|12B07E| db $9F, $9F, $1F, $1F, $93, $F3, $3B, $01
|12B086| db $3B, $D8, $EB, $19, $2B, $D8, $EB, $18
|12B08E| db $3B, $C8
|12B090| db $85 ; Copy past
|12B091| dw $0048
|12B093| db $24 ; Repeat byte
|12B094| db $04
|12B095| db $22 ; Repeat byte
|12B096| db $00
|12B097| db $00 ; Raw block
|12B098| db $FF
|12B099| db $22 ; Repeat byte
|12B09A| db $00
|12B09B| db $43 ; Repeat word
|12B09C| dw $00FF
|12B09E| db $05 ; Raw block
|12B09F| db $04, $FB, $FF, $00, $20, $DF
|12B0A5| db $83 ; Copy past
|12B0A6| dw $0048
|12B0A8| db $25 ; Repeat byte
|12B0A9| db $00
|12B0AA| db $E0, $47 ; EXT Raw block
|12B0AC| db $7F, $80, $E0, $FF, $71, $7F, $38, $3E
|12B0B4| db $9C, $9E, $4D, $CE, $65, $A7, $32, $D3
|12B0BC| db $00, $00, $80, $C1, $61, $31, $18, $0C
|12B0C4| db $CE, $40, $9F, $8E, $3F, $11, $7F, $2E
|12B0CC| db $F9, $59, $F6, $B0, $FC, $70, $FE, $70
|12B0D4| db $3F, $71, $E0, $CE, $9F, $3F, $73, $71
|12B0DC| db $FF, $E0, $78, $77, $BC, $3B, $DE, $9D
|12B0E4| db $EF, $4E, $F7, $A7, $7B, $53, $35, $21
|12B0EC| db $00, $80, $C0, $60, $30, $98, $CC, $EE
|12B0F4| db $43 ; Repeat word
|12B0F5| dw $3FAD
|12B0F7| db $8B ; Copy past
|12B0F8| dw $00DC
|12B0FA| db $22 ; Repeat byte
|12B0FB| db $40
|12B0FC| db $00 ; Raw block
|12B0FD| db $17
|12B0FE| db $22 ; Repeat byte
|12B0FF| db $00
|12B100| db $90 ; Copy past
|12B101| dw $00EF
|12B103| db $22 ; Repeat byte
|12B104| db $00
|12B105| db $00 ; Raw block
|12B106| db $81
|12B107| db $23 ; Repeat byte
|12B108| db $00
|12B109| db $11 ; Raw block
|12B10A| db $BB, $3F, $80, $42, $80, $7F, $C0, $3F
|12B112| db $ED, $12, $EC, $1F, $F0, $0F, $F9, $06
|12B11A| db $40, $3D
|12B11C| db $25 ; Repeat byte
|12B11D| db $00
|12B11E| db $03 ; Raw block
|12B11F| db $F9, $FF, $00, $18
|12B123| db $43 ; Repeat word
|12B124| dw $FF00
|12B126| db $47 ; Repeat word
|12B127| dw $00FF
|12B129| db $01 ; Raw block
|12B12A| db $00, $E7
|12B12C| db $25 ; Repeat byte
|12B12D| db $00
|12B12E| db $0F ; Raw block
|12B12F| db $7D, $03, $BE, $01, $DF, $00, $6F, $80
|12B137| db $77, $80, $7B, $80, $5D, $A0, $56, $A8
|12B13F| db $84 ; Copy past
|12B140| dw $0118
|12B142| db $0E ; Raw block
|12B143| db $04, $02, $01, $16, $23, $D6, $C3, $D6
|12B14B| db $C5, $D3, $CA, $59, $C4, $9D, $42
|12B152| db $22 ; Repeat byte
|12B153| db $FF
|12B154| db $07 ; Raw block
|12B155| db $00, $C8, $28, $28, $24, $22, $20, $00
|12B15D| db $43 ; Repeat word
|12B15E| dw $FF00
|12B160| db $07 ; Raw block
|12B161| db $F8, $07, $00, $04, $07, $FF, $00, $FF
|12B169| db $43 ; Repeat word
|12B16A| dw $00FF
|12B16C| db $05 ; Raw block
|12B16D| db $00, $02, $02, $FA, $F8, $FF
|12B173| db $22 ; Repeat byte
|12B174| db $00
|12B175| db $00 ; Raw block
|12B176| db $05
|12B177| db $43 ; Repeat word
|12B178| dw $0702
|12B17A| db $48 ; Repeat word
|12B17B| dw $0700
|12B17D| db $00 ; Raw block
|12B17E| db $FD
|12B17F| db $22 ; Repeat byte
|12B180| db $00
|12B181| db $25 ; Repeat byte
|12B182| db $02
|12B183| db $00 ; Raw block
|12B184| db $FF
|12B185| db $22 ; Repeat byte
|12B186| db $00
|12B187| db $24 ; Repeat byte
|12B188| db $FF
|12B189| db $46 ; Repeat word
|12B18A| dw $0700
|12B18C| db $01 ; Raw block
|12B18D| db $FF, $FF
|12B18F| db $22 ; Repeat byte
|12B190| db $00
|12B191| db $22 ; Repeat byte
|12B192| db $02
|12B193| db $43 ; Repeat word
|12B194| dw $189F
|12B196| db $0D ; Raw block
|12B197| db $DF, $58, $AF, $68, $D7, $34, $6B, $9A
|12B19F| db $35, $CD, $2F, $D0, $60, $60
|12B1A5| db $84 ; Copy past
|12B1A6| dw $029A
|12B1A8| db $0F ; Raw block
|12B1A9| db $00, $2F, $D0, $B7, $C8, $B8, $C7, $DF
|12B1B1| db $E0, $60, $FF, $BF, $7F, $C0, $3F, $FF
|12B1B9| db $28 ; Repeat byte
|12B1BA| db $00
|12B1BB| db $00 ; Raw block
|12B1BC| db $FF
|12B1BD| db $46 ; Repeat word
|12B1BE| dw $BF00
|12B1C0| db $03 ; Raw block
|12B1C1| db $9F, $3F, $9F, $3E
|12B1C5| db $43 ; Repeat word
|12B1C6| dw $3C9F
|12B1C8| db $02 ; Raw block
|12B1C9| db $00, $7F, $7F
|12B1CC| db $24 ; Repeat byte
|12B1CD| db $40
|12B1CE| db $01 ; Raw block
|12B1CF| db $9D, $3C
|12B1D1| db $44 ; Repeat word
|12B1D2| dw $3E9F
|12B1D4| db $43 ; Repeat word
|12B1D5| dw $9F37
|12B1D7| db $E0, $64 ; EXT Raw block
|12B1D9| db $20, $FF, $7F, $FF, $00, $42, $40, $41
|12B1E1| db $40, $48, $5F, $00, $00, $19, $E9, $54
|12B1E9| db $FC, $F2, $FE, $F9, $FF, $A8, $AB, $FE
|12B1F1| db $AB, $FF, $7F, $40, $3F, $06, $03, $01
|12B1F9| db $00, $54, $00, $00, $80, $FF, $78, $EF
|12B201| db $AC, $77, $57, $39, $29, $9F, $90, $4F
|12B209| db $CF, $30, $F0, $00, $FF, $78, $3C, $9F
|12B211| db $CF, $60, $30, $0F, $00, $FB, $68, $F9
|12B219| db $68, $F8, $E8, $E5, $D6, $E2, $14, $E5
|12B221| db $F0, $15, $11, $04, $F1, $67, $67, $E7
|12B229| db $C8, $09, $0B, $EA, $0A, $80, $BF, $CE
|12B231| db $5F, $E6, $2F, $73, $97, $79, $8B, $3C
|12B239| db $C5, $1E, $E2, $17, $E9
|12B23E| db $86 ; Copy past
|12B23F| dw $0299
|12B241| db $00 ; Raw block
|12B242| db $00
|12B243| db $89 ; Copy past
|12B244| dw $03A8
|12B246| db $05 ; Raw block
|12B247| db $7C, $85, $5E, $A2, $57, $A9
|12B24D| db $87 ; Copy past
|12B24E| dw $03B8
|12B250| db $0B ; Raw block
|12B251| db $23, $E5, $FB, $B9, $DA, $B9, $FB, $D8
|12B259| db $EB, $D8, $33, $C8
|12B25D| db $22 ; Repeat byte
|12B25E| db $FF
|12B25F| db $01 ; Raw block
|12B260| db $00, $18
|12B262| db $24 ; Repeat byte
|12B263| db $04
|12B264| db $E4, $31 ; EXT Repeat byte
|12B266| db $00
|12B267| db $E0, $22 ; EXT Raw block
|12B269| db $7E, $81, $C1, $36, $03, $6C, $06, $E9
|12B271| db $C1, $36, $F1, $0A, $EF, $30, $7F, $BE
|12B279| db $00, $1C, $F8, $F0, $1C, $0C, $00, $80
|12B281| db $D9, $3E, $CC, $3F, $46, $BF, $4E, $BF
|12B289| db $DE, $3F, $CE
|12B28C| db $44 ; Repeat word
|12B28D| dw $C63F
|12B28F| db $22 ; Repeat byte
|12B290| db $00
|12B291| db $00 ; Raw block
|12B292| db $80
|12B293| db $23 ; Repeat byte
|12B294| db $00
|12B295| db $E0, $2F ; EXT Raw block
|12B297| db $7F, $80, $E0, $1F, $00, $7F, $03, $EC
|12B29F| db $C1, $36, $F0, $0B, $08, $F7, $00, $CE
|12B2A7| db $00, $0F, $FF, $F8, $1C, $0E, $07, $FB
|12B2AF| db $E4, $1F, $15, $EE, $0E, $31, $80, $5E
|12B2B7| db $C0, $1D, $88, $76, $57, $AC, $37, $CC
|12B2BF| db $00, $C0, $E1, $7F, $3F, $63, $00, $80
|12B2C7| db $E5, $7F ; EXT Repeat byte
|12B2C9| db $00
|12B2CA| db $FF ; End of GFX 1B

;===================================================================================================

GFX_1C:
|12B2CB| db $43 ; Repeat word
|12B2CC| dw $00FF
|12B2CE| db $0E ; Raw block
|12B2CF| db $70, $80, $7F, $88, $0F, $88, $03, $8C
|12B2D7| db $04, $88, $05, $49, $FF, $FF, $7F
|12B2DE| db $23 ; Repeat byte
|12B2DF| db $77
|12B2E0| db $04 ; Raw block
|12B2E1| db $B6, $C0, $3E, $F0, $01
|12B2E6| db $43 ; Repeat word
|12B2E7| dw $00F0
|12B2E9| db $0F ; Raw block
|12B2EA| db $D8, $1F, $DB, $04, $DC, $00, $DD, $01
|12B2F2| db $C1, $FE, $FF, $FF, $E0, $FF, $FF, $FE
|12B2FA| db $E4, $2F ; EXT Repeat byte
|12B2FC| db $00
|12B2FD| db $47 ; Repeat word
|12B2FE| dw $7FBF
|12B300| db $06 ; Raw block
|12B301| db $B7, $7F, $BF, $7F, $80, $40, $FF
|12B308| db $26 ; Repeat byte
|12B309| db $00
|12B30A| db $01 ; Raw block
|12B30B| db $3F, $00
|12B30D| db $27 ; Repeat byte
|12B30E| db $FF
|12B30F| db $00 ; Raw block
|12B310| db $F7
|12B311| db $22 ; Repeat byte
|12B312| db $FF
|12B313| db $02 ; Raw block
|12B314| db $00, $00, $FF
|12B317| db $26 ; Repeat byte
|12B318| db $00
|12B319| db $02 ; Raw block
|12B31A| db $FF, $00, $FF
|12B31D| db $22 ; Repeat byte
|12B31E| db $00
|12B31F| db $07 ; Raw block
|12B320| db $F7, $78, $EF, $30, $BC, $43, $FB, $44
|12B328| db $43 ; Repeat word
|12B329| dw $48F7
|12B32B| db $01 ; Raw block
|12B32C| db $00, $FF
|12B32E| db $25 ; Repeat byte
|12B32F| db $00
|12B330| db $0F ; Raw block
|12B331| db $40, $BF, $B9, $7F, $F7, $7F, $EF, $7F
|12B339| db $DE, $7F, $85, $27, $80, $7F, $9B, $7F
|12B341| db $24 ; Repeat byte
|12B342| db $00
|12B343| db $00 ; Raw block
|12B344| db $58
|12B345| db $22 ; Repeat byte
|12B346| db $00
|12B347| db $0E ; Raw block
|12B348| db $FF, $E7, $FF, $9F, $FF, $7E, $FF, $FC
|12B350| db $FF, $08, $0C, $00, $FF, $3B, $FF
|12B357| db $24 ; Repeat byte
|12B358| db $00
|12B359| db $02 ; Raw block
|12B35A| db $F3, $00, $00
|12B35D| db $43 ; Repeat word
|12B35E| dw $3FAD
|12B360| db $0B ; Raw block
|12B361| db $9B, $3F, $A0, $68, $80, $7F, $B6, $7F
|12B369| db $F6, $7F, $B7, $3F
|12B36D| db $22 ; Repeat byte
|12B36E| db $40
|12B36F| db $00 ; Raw block
|12B370| db $17
|12B371| db $22 ; Repeat byte
|12B372| db $00
|12B373| db $10 ; Raw block
|12B374| db $40, $DD, $FF, $EE, $FF, $ED, $FF, $1A
|12B37C| db $7E, $00, $FF, $F7, $FF, $EF, $FF, $1E
|12B384| db $FF
|12B385| db $22 ; Repeat byte
|12B386| db $00
|12B387| db $00 ; Raw block
|12B388| db $81
|12B389| db $23 ; Repeat byte
|12B38A| db $00
|12B38B| db $43 ; Repeat word
|12B38C| dw $7F80
|12B38E| db $10 ; Raw block
|12B38F| db $BF, $7F, $C0, $40, $80, $3F, $80, $7F
|12B397| db $83, $7C, $FF, $00, $7F, $40, $00, $3F
|12B39F| db $40
|12B3A0| db $22 ; Repeat byte
|12B3A1| db $00
|12B3A2| db $01 ; Raw block
|12B3A3| db $FF, $00
|12B3A5| db $87 ; Copy past
|12B3A6| dw $010C
|12B3A8| db $06 ; Raw block
|12B3A9| db $8E, $71, $9F, $7F, $BF, $7F, $00
|12B3B0| db $84 ; Copy past
|12B3B1| dw $011A
|12B3B3| db $05 ; Raw block
|12B3B4| db $1F, $3F, $FF, $00, $FF, $FF
|12B3BA| db $22 ; Repeat byte
|12B3BB| db $00
|12B3BC| db $07 ; Raw block
|12B3BD| db $FF, $73, $8C, $70, $BF, $47, $FF, $DF
|12B3C5| db $85 ; Copy past
|12B3C6| dw $0083
|12B3C8| db $0C ; Raw block
|12B3C9| db $3F, $7F, $FF, $C5, $44, $D5, $54, $D1
|12B3D1| db $50, $D9, $58, $CD, $4C
|12B3D6| db $85 ; Copy past
|12B3D7| dw $0150
|12B3D9| db $0B ; Raw block
|12B3DA| db $3A, $2A, $2E, $26, $32, $3A, $2A, $2E
|12B3E2| db $FF, $00, $FF, $7E
|12B3E6| db $8B ; Copy past
|12B3E7| dw $0154
|12B3E9| db $01 ; Raw block
|12B3EA| db $00, $00
|12B3EC| db $85 ; Copy past
|12B3ED| dw $0162
|12B3EF| db $E0, $36 ; EXT Raw block
|12B3F1| db $41, $B9, $28, $C4, $00, $EF, $15, $ED
|12B3F9| db $14, $EC, $06, $FE, $0D, $FD, $00, $04
|12B401| db $C6, $F3, $F0, $F2, $F3, $F1, $F2, $FB
|12B409| db $00, $FE, $80, $7E, $40, $BE, $18, $86
|12B411| db $42, $BE, $1E, $7F, $04, $24, $92, $B2
|12B419| db $FF, $FF, $7F, $7F, $01, $80, $DB, $4D
|12B421| db $FF, $E7, $FF, $18, $EF, $08, $E7
|12B428| db $44 ; Repeat word
|12B429| dw $EF18
|12B42B| db $00 ; Raw block
|12B42C| db $FF
|12B42D| db $43 ; Repeat word
|12B42E| dw $E724
|12B430| db $03 ; Raw block
|12B431| db $C3, $D3, $C3, $DB
|12B435| db $22 ; Repeat byte
|12B436| db $BD
|12B437| db $37 ; Repeat byte
|12B438| db $00
|12B439| db $11 ; Raw block
|12B43A| db $A7, $68, $B0, $70, $BB, $7F, $D1, $3F
|12B442| db $A0, $5F, $DF, $60, $BF, $20, $FF, $00
|12B44A| db $10, $0F
|12B44C| db $23 ; Repeat byte
|12B44D| db $00
|12B44E| db $02 ; Raw block
|12B44F| db $40, $00, $FF
|12B452| db $22 ; Repeat byte
|12B453| db $00
|12B454| db $05 ; Raw block
|12B455| db $E7, $FF, $C3, $FF, $00, $FF
|12B45B| db $45 ; Repeat word
|12B45C| dw $00FF
|12B45E| db $01 ; Raw block
|12B45F| db $00, $FF
|12B461| db $25 ; Repeat byte
|12B462| db $00
|12B463| db $0E ; Raw block
|12B464| db $B7, $48, $F7, $88, $D7, $E8, $DB, $E4
|12B46C| db $84, $9B, $4B, $AC, $E0, $40, $FF
|12B473| db $24 ; Repeat byte
|12B474| db $00
|12B475| db $03 ; Raw block
|12B476| db $60, $10, $1F, $00
|12B47A| db $43 ; Repeat word
|12B47B| dw $3FAD
|12B47D| db $8B ; Copy past
|12B47E| dw $00DC
|12B480| db $22 ; Repeat byte
|12B481| db $40
|12B482| db $00 ; Raw block
|12B483| db $17
|12B484| db $22 ; Repeat byte
|12B485| db $00
|12B486| db $90 ; Copy past
|12B487| dw $00EF
|12B489| db $22 ; Repeat byte
|12B48A| db $00
|12B48B| db $00 ; Raw block
|12B48C| db $81
|12B48D| db $23 ; Repeat byte
|12B48E| db $00
|12B48F| db $11 ; Raw block
|12B490| db $BB, $3F, $80, $42, $80, $7F, $C0, $3F
|12B498| db $ED, $12, $EC, $1F, $F0, $0F, $F9, $06
|12B4A0| db $40, $3D
|12B4A2| db $25 ; Repeat byte
|12B4A3| db $00
|12B4A4| db $03 ; Raw block
|12B4A5| db $F9, $FF, $00, $18
|12B4A9| db $43 ; Repeat word
|12B4AA| dw $FF00
|12B4AC| db $47 ; Repeat word
|12B4AD| dw $00FF
|12B4AF| db $01 ; Raw block
|12B4B0| db $00, $E7
|12B4B2| db $26 ; Repeat byte
|12B4B3| db $00
|12B4B4| db $01 ; Raw block
|12B4B5| db $FF, $00
|12B4B7| db $22 ; Repeat byte
|12B4B8| db $FF
|12B4B9| db $22 ; Repeat byte
|12B4BA| db $00
|12B4BB| db $02 ; Raw block
|12B4BC| db $FF, $00, $FF
|12B4BF| db $45 ; Repeat word
|12B4C0| dw $00FF
|12B4C2| db $01 ; Raw block
|12B4C3| db $00, $FF
|12B4C5| db $23 ; Repeat byte
|12B4C6| db $00
|12B4C7| db $00 ; Raw block
|12B4C8| db $F8
|12B4C9| db $44 ; Repeat word
|12B4CA| dw $F07F
|12B4CC| db $04 ; Raw block
|12B4CD| db $FC, $7F, $FF, $7F, $FC
|12B4D2| db $43 ; Repeat word
|12B4D3| dw $F87F
|12B4D5| db $28 ; Repeat byte
|12B4D6| db $7F
|12B4D7| db $43 ; Repeat word
|12B4D8| dw $FF00
|12B4DA| db $04 ; Raw block
|12B4DB| db $1F, $FF, $F8, $FF, $80
|12B4E0| db $45 ; Repeat word
|12B4E1| dw $00FF
|12B4E3| db $28 ; Repeat byte
|12B4E4| db $FF
|12B4E5| db $09 ; Raw block
|12B4E6| db $D4, $54, $D6, $56, $C0, $40, $C6, $46
|12B4EE| db $F0, $40
|12B4F0| db $44 ; Repeat word
|12B4F1| dw $7FFF
|12B4F3| db $05 ; Raw block
|12B4F4| db $00, $2B, $29, $3F, $39, $3F
|12B4FA| db $24 ; Repeat byte
|12B4FB| db $00
|12B4FC| db $07 ; Raw block
|12B4FD| db $73, $73, $18, $18, $CE, $CE, $00, $00
|12B505| db $24 ; Repeat byte
|12B506| db $FF
|12B507| db $05 ; Raw block
|12B508| db $00, $FF, $8C, $E7, $31, $FF
|12B50E| db $22 ; Repeat byte
|12B50F| db $00
|12B510| db $07 ; Raw block
|12B511| db $3F, $C0, $57, $B7, $A8, $6F, $A7, $68
|12B519| db $43 ; Repeat word
|12B51A| dw $60AF
|12B51C| db $43 ; Repeat word
|12B51D| dw $63AC
|12B51F| db $03 ; Raw block
|12B520| db $00, $08, $10, $10
|12B524| db $23 ; Repeat byte
|12B525| db $17
|12B526| db $85 ; Copy past
|12B527| dw $01FF
|12B529| db $45 ; Repeat word
|12B52A| dw $00FF
|12B52C| db $43 ; Repeat word
|12B52D| dw $FF00
|12B52F| db $23 ; Repeat byte
|12B530| db $00
|12B531| db $23 ; Repeat byte
|12B532| db $FF
|12B533| db $4F ; Repeat word
|12B534| dw $63AC
|12B536| db $27 ; Repeat byte
|12B537| db $17
|12B538| db $4E ; Repeat word
|12B539| dw $FF00
|12B53B| db $28 ; Repeat byte
|12B53C| db $FF
|12B53D| db $E4, $30 ; EXT Repeat byte
|12B53F| db $00
|12B540| db $09 ; Raw block
|12B541| db $77, $55, $FF, $FF, $AA, $AA, $55, $AA
|12B549| db $BB, $AA
|12B54B| db $43 ; Repeat word
|12B54C| dw $FF55
|12B54E| db $01 ; Raw block
|12B54F| db $AA, $88
|12B551| db $22 ; Repeat byte
|12B552| db $00
|12B553| db $00 ; Raw block
|12B554| db $44
|12B555| db $22 ; Repeat byte
|12B556| db $00
|12B557| db $07 ; Raw block
|12B558| db $FC, $97, $C6, $6B, $FC, $96, $CE, $7B
|12B560| db $87 ; Copy past
|12B561| dw $03A8
|12B563| db $03 ; Raw block
|12B564| db $00, $10, $01, $00
|12B568| db $83 ; Copy past
|12B569| dw $03B8
|12B56B| db $14 ; Raw block
|12B56C| db $FC, $96, $C4, $53, $FB, $94, $D7, $69
|12B574| db $ED, $81, $F5, $2B, $FF, $8A, $FF, $D5
|12B57C| db $01, $28, $00, $00, $12
|12B581| db $22 ; Repeat byte
|12B582| db $00
|12B583| db $02 ; Raw block
|12B584| db $FF, $FF, $DF
|12B587| db $26 ; Repeat byte
|12B588| db $FF
|12B589| db $00 ; Raw block
|12B58A| db $FB
|12B58B| db $24 ; Repeat byte
|12B58C| db $FF
|12B58D| db $27 ; Repeat byte
|12B58E| db $00
|12B58F| db $43 ; Repeat word
|12B590| dw $3CEF
|12B592| db $01 ; Raw block
|12B593| db $FF, $18
|12B595| db $43 ; Repeat word
|12B596| dw $00FF
|12B598| db $22 ; Repeat byte
|12B599| db $FF
|12B59A| db $02 ; Raw block
|12B59B| db $00, $FF, $00
|12B59E| db $22 ; Repeat byte
|12B59F| db $BD
|12B5A0| db $00 ; Raw block
|12B5A1| db $C3
|12B5A2| db $22 ; Repeat byte
|12B5A3| db $FF
|12B5A4| db $00 ; Raw block
|12B5A5| db $00
|12B5A6| db $4F ; Repeat word
|12B5A7| dw $40FF
|12B5A9| db $27 ; Repeat byte
|12B5AA| db $7F
|12B5AB| db $01 ; Raw block
|12B5AC| db $FF, $C0
|12B5AE| db $4D ; Repeat word
|12B5AF| dw $00FF
|12B5B1| db $28 ; Repeat byte
|12B5B2| db $FF
|12B5B3| db $49 ; Repeat word
|12B5B4| dw $FF00
|12B5B6| db $00 ; Raw block
|12B5B7| db $C0
|12B5B8| db $43 ; Repeat word
|12B5B9| dw $40FF
|12B5BB| db $26 ; Repeat byte
|12B5BC| db $FF
|12B5BD| db $11 ; Raw block
|12B5BE| db $7F, $C0, $20, $C7, $2A, $C5, $2A, $E5
|12B5C6| db $0A, $E7, $08, $FF, $1F, $FF, $0F, $FF
|12B5CE| db $00, $1F
|12B5D0| db $22 ; Repeat byte
|12B5D1| db $12
|12B5D2| db $02 ; Raw block
|12B5D3| db $10, $00, $0F
|12B5D6| db $22 ; Repeat byte
|12B5D7| db $00
|12B5D8| db $00 ; Raw block
|12B5D9| db $49
|12B5DA| db $45 ; Repeat word
|12B5DB| dw $FFB6
|12B5DD| db $00 ; Raw block
|12B5DE| db $00
|12B5DF| db $24 ; Repeat byte
|12B5E0| db $FF
|12B5E1| db $07 ; Raw block
|12B5E2| db $00, $FF, $00, $30, $30, $00, $00, $FF
|12B5EA| db $E5, $80 ; EXT Repeat byte
|12B5EC| db $00
|12B5ED| db $FF ; End of GFX 1C

;===================================================================================================

GFX_1D:
|12B5EE| db $E0, $28 ; EXT Raw block
|12B5F0| db $50, $DF, $04, $DF, $AF, $FF, $C0, $FF
|12B5F8| db $85, $E5, $00, $C0, $02, $82, $00, $00
|12B600| db $20, $20, $00, $00, $02, $02, $00, $00
|12B608| db $28, $EF, $12, $FF, $93, $FF, $07, $FF
|12B610| db $53, $DF, $21, $27, $00, $03, $00, $00
|12B618| db $10
|12B619| db $22 ; Repeat byte
|12B61A| db $00
|12B61B| db $00 ; Raw block
|12B61C| db $20
|12B61D| db $22 ; Repeat byte
|12B61E| db $00
|12B61F| db $E0, $27 ; EXT Raw block
|12B621| db $F8, $67, $F0, $6F, $F3, $68, $F3, $64
|12B629| db $93, $64, $B3, $24, $F3, $64, $F9, $6E
|12B631| db $00, $00, $04, $08, $08, $48, $08, $00
|12B639| db $78, $87, $87, $FF, $4C, $FF, $BB, $7C
|12B641| db $87, $48, $97, $58, $DF, $10, $E7, $38
|12B649| db $23 ; Repeat byte
|12B64A| db $00
|12B64B| db $02 ; Raw block
|12B64C| db $30, $20, $20
|12B64F| db $E4, $25 ; EXT Repeat byte
|12B651| db $00
|12B652| db $02 ; Raw block
|12B653| db $01, $00, $03
|12B656| db $23 ; Repeat byte
|12B657| db $00
|12B658| db $03 ; Raw block
|12B659| db $01, $01, $03, $07
|12B65D| db $23 ; Repeat byte
|12B65E| db $00
|12B65F| db $E0, $30 ; EXT Raw block
|12B661| db $1F, $1F, $62, $63, $44, $C6, $38, $FD
|12B669| db $00, $F1, $00, $8D, $00, $1F, $60, $80
|12B671| db $01, $83, $CF, $F3, $00, $00, $7B, $3B
|12B679| db $FD, $DD, $FE, $2E, $DF, $F7, $EF, $FB
|12B681| db $77, $7D, $3B, $3E, $7F, $C4, $22, $D1
|12B689| db $08, $04, $02, $01, $00, $00, $FF, $FD
|12B691| db $01
|12B692| db $24 ; Repeat byte
|12B693| db $00
|12B694| db $1F ; Raw block
|12B695| db $80, $80, $C0, $C0, $E0, $E0, $FF, $02
|12B69D| db $01, $00, $80, $40, $20, $10, $00, $00
|12B6A5| db $F4, $FE, $FA, $FF, $FD, $7F, $7E, $3F
|12B6AD| db $3F, $1F, $1F, $0F, $0F, $07, $FF, $00
|12B6B5| db $84 ; Copy past
|12B6B6| dw $00D3
|12B6B8| db $00 ; Raw block
|12B6B9| db $08
|12B6BA| db $48 ; Repeat word
|12B6BB| dw $0300
|12B6BD| db $E0, $4E ; EXT Raw block
|12B6BF| db $06, $01, $01, $06, $06, $08, $08, $06
|12B6C7| db $06, $07, $07, $0F, $0E, $08, $10, $06
|12B6CF| db $F6, $08, $E8, $10, $90, $60, $61, $80
|12B6D7| db $82, $00, $05, $00, $0A, $00, $14, $08
|12B6DF| db $70, $E8, $88, $05, $02, $04, $08, $00
|12B6E7| db $2D, $00, $58, $01, $B9, $00, $60, $00
|12B6EF| db $D0, $00, $A0, $00, $40, $00, $C0, $16
|12B6F7| db $2F, $5C, $AC, $48, $98, $28, $30, $20
|12B6FF| db $E0, $10, $F0, $08, $F8, $04, $7C, $0F
|12B707| db $1F, $00, $60, $00, $6F, $60, $68
|12B70E| db $83 ; Copy past
|12B70F| dw $00C8
|12B711| db $0D ; Raw block
|12B712| db $60, $1F, $10, $10, $1D, $1A, $1A, $1D
|12B71A| db $1D, $1E, $38, $3F, $E0, $FF
|12B720| db $22 ; Repeat byte
|12B721| db $00
|12B722| db $03 ; Raw block
|12B723| db $FF, $B8, $88, $05
|12B727| db $84 ; Copy past
|12B728| dw $00BE
|12B72A| db $0B ; Raw block
|12B72B| db $00, $30, $F0, $70, $F8, $38, $7C, $9C
|12B733| db $BE, $4E, $5F, $A7
|12B737| db $22 ; Repeat byte
|12B738| db $00
|12B739| db $08 ; Raw block
|12B73A| db $FF, $00, $00, $88, $C4, $62, $B1, $58
|12B742| db $FF
|12B743| db $22 ; Repeat byte
|12B744| db $00
|12B745| db $44 ; Repeat word
|12B746| dw $0080
|12B748| db $09 ; Raw block
|12B749| db $C0, $40, $C0, $E0, $60, $72, $30, $B7
|12B751| db $17, $D7
|12B753| db $24 ; Repeat byte
|12B754| db $00
|12B755| db $03 ; Raw block
|12B756| db $80, $40, $20, $01
|12B75A| db $44 ; Repeat word
|12B75B| dw $0001
|12B75D| db $09 ; Raw block
|12B75E| db $03, $02, $03, $07, $06, $4E, $0C, $ED
|12B766| db $E8, $EB
|12B768| db $24 ; Repeat byte
|12B769| db $00
|12B76A| db $16 ; Raw block
|12B76B| db $01, $02, $04, $F0, $69, $F3, $6F, $99
|12B773| db $67, $AC, $63, $DF, $38, $EE, $1D, $77
|12B77B| db $8E, $33, $CE, $06, $00, $00, $10
|12B782| db $23 ; Repeat byte
|12B783| db $00
|12B784| db $0F ; Raw block
|12B785| db $FF, $18, $EF, $18, $FF, $80, $FF, $C0
|12B78D| db $FF, $00, $70, $EF, $30, $EF, $0F, $FF
|12B795| db $32 ; Repeat byte
|12B796| db $00
|12B797| db $03 ; Raw block
|12B798| db $01, $00, $01, $01
|12B79C| db $23 ; Repeat byte
|12B79D| db $00
|12B79E| db $03 ; Raw block
|12B79F| db $01, $01, $02, $02
|12B7A3| db $84 ; Copy past
|12B7A4| dw $00F7
|12B7A6| db $E0, $33 ; EXT Raw block
|12B7A8| db $0E, $0E, $10, $30, $20, $E0, $46, $C7
|12B7B0| db $78, $FE, $21, $F9, $0F, $1E, $30, $C0
|12B7B8| db $00, $00, $01, $06, $70, $7D, $90, $99
|12B7C0| db $04, $15, $0C, $6D, $1C, $9D, $68, $6D
|12B7C8| db $80, $89, $00, $15, $82, $06, $0A, $12
|12B7D0| db $62, $82, $06, $0A, $1D, $1F, $0E, $0F
|12B7D8| db $07, $07, $03, $03
|12B7DC| db $83 ; Copy past
|12B7DD| dw $01ED
|12B7DF| db $03 ; Raw block
|12B7E0| db $80, $80, $40, $C0
|12B7E4| db $27 ; Repeat byte
|12B7E5| db $00
|12B7E6| db $86 ; Copy past
|12B7E7| dw $0168
|12B7E9| db $10 ; Raw block
|12B7EA| db $CE, $DF, $E7, $EF, $F3, $77, $79, $3B
|12B7F2| db $3C, $88, $C4, $62, $31, $18, $0C, $06
|12B7FA| db $03
|12B7FB| db $84 ; Copy past
|12B7FC| dw $022D
|12B7FE| db $24 ; Repeat byte
|12B7FF| db $00
|12B800| db $85 ; Copy past
|12B801| dw $00CA
|12B803| db $83 ; Copy past
|12B804| dw $00BD
|12B806| db $02 ; Raw block
|12B807| db $80, $40, $20
|12B80A| db $22 ; Repeat byte
|12B80B| db $10
|12B80C| db $43 ; Repeat word
|12B80D| dw $6020
|12B80F| db $0A ; Raw block
|12B810| db $13, $73, $0C, $7F, $00, $7E, $00, $7D
|12B818| db $00, $7A, $60
|12B81B| db $23 ; Repeat byte
|12B81C| db $80
|12B81D| db $1C ; Raw block
|12B81E| db $81, $C2, $CC, $00, $29, $00, $53, $80
|12B826| db $A3, $04, $A6, $39, $7D, $00, $F9, $01
|12B82E| db $C9, $11, $11, $10, $20, $40, $41, $82
|12B836| db $06, $04, $08, $00, $80
|12B83B| db $23 ; Repeat byte
|12B83C| db $00
|12B83D| db $0D ; Raw block
|12B83E| db $01, $01, $81, $81, $02, $03, $3C, $BF
|12B846| db $00, $7F, $50, $90, $A0, $A0
|12B84C| db $22 ; Repeat byte
|12B84D| db $40
|12B84E| db $00 ; Raw block
|12B84F| db $80
|12B850| db $43 ; Repeat word
|12B851| dw $E880
|12B853| db $01 ; Raw block
|12B854| db $84, $EC
|12B856| db $45 ; Repeat word
|12B857| dw $EE02
|12B859| db $43 ; Repeat word
|12B85A| dw $EF01
|12B85C| db $25 ; Repeat byte
|12B85D| db $10
|12B85E| db $11 ; Raw block
|12B85F| db $30, $70, $DC, $C4, $AE, $A2, $17, $11
|12B867| db $0B, $08, $05, $04, $32, $12, $39, $29
|12B86F| db $1C, $14
|12B871| db $83 ; Copy past
|12B872| dw $0254
|12B874| db $03 ; Raw block
|12B875| db $01, $20, $10, $08
|12B879| db $25 ; Repeat byte
|12B87A| db $00
|12B87B| db $09 ; Raw block
|12B87C| db $80, $80, $C0, $40, $E0, $20, $70, $10
|12B884| db $B8, $88
|12B886| db $23 ; Repeat byte
|12B887| db $00
|12B888| db $05 ; Raw block
|12B889| db $80, $C0, $60, $30, $01, $01
|12B88F| db $25 ; Repeat byte
|12B890| db $00
|12B891| db $83 ; Copy past
|12B892| dw $00FA
|12B894| db $1F ; Raw block
|12B895| db $18, $18, $08, $08, $02, $04, $04, $09
|12B89D| db $0E, $18, $20, $10, $98, $98, $00, $00
|12B8A5| db $18, $18, $78, $78, $B0, $B0, $30, $30
|12B8AD| db $70, $70, $64, $6C, $06, $1C, $64, $84
|12B8B5| db $22 ; Repeat byte
|12B8B6| db $08
|12B8B7| db $E0, $44 ; EXT Raw block
|12B8B9| db $10, $00, $13, $00, $12, $00, $18, $01
|12B8C1| db $19, $03, $1A, $03, $19, $26, $32, $44
|12B8C9| db $74, $0F, $0F, $07, $06, $05, $06, $0C
|12B8D1| db $08, $58, $49, $B0, $91, $E0, $A1, $C0
|12B8D9| db $41, $80, $83, $04, $04, $0A, $08, $14
|12B8E1| db $12, $90, $20, $42, $84, $08, $13, $07
|12B8E9| db $0D, $00, $C0, $00, $B0, $04, $A0, $08
|12B8F1| db $40, $20, $60, $20, $E0, $18, $F8, $07
|12B8F9| db $FF, $3F, $40, $44, $88
|12B8FE| db $83 ; Copy past
|12B8FF| dw $0183
|12B901| db $13 ; Raw block
|12B902| db $00, $03, $00, $0D, $20, $05, $10, $02
|12B90A| db $04, $06, $04, $07, $18, $1F, $E0, $FF
|12B912| db $FC, $02, $22, $11
|12B916| db $83 ; Copy past
|12B917| dw $019B
|12B919| db $05 ; Raw block
|12B91A| db $00, $FF, $40, $C0, $1F, $9F
|12B920| db $49 ; Repeat word
|12B921| dw $BF3F
|12B923| db $02 ; Raw block
|12B924| db $00, $3F, $60
|12B927| db $24 ; Repeat byte
|12B928| db $40
|12B929| db $01 ; Raw block
|12B92A| db $0C, $0C
|12B92C| db $23 ; Repeat byte
|12B92D| db $07
|12B92E| db $01 ; Raw block
|12B92F| db $03, $03
|12B931| db $23 ; Repeat byte
|12B932| db $01
|12B933| db $23 ; Repeat byte
|12B934| db $00
|12B935| db $0B ; Raw block
|12B936| db $10, $08, $08, $04, $02, $02, $01, $01
|12B93E| db $63, $6F, $E0, $EF
|12B942| db $47 ; Repeat word
|12B943| dw $DFC0
|12B945| db $43 ; Repeat word
|12B946| dw $BE80
|12B948| db $01 ; Raw block
|12B949| db $10, $10
|12B94B| db $22 ; Repeat byte
|12B94C| db $20
|12B94D| db $04 ; Raw block
|12B94E| db $21, $43, $4F, $00, $30
|12B953| db $2D ; Repeat byte
|12B954| db $00
|12B955| db $01 ; Raw block
|12B956| db $DE, $F0
|12B958| db $26 ; Repeat byte
|12B959| db $00
|12B95A| db $05 ; Raw block
|12B95B| db $74, $00, $68, $03, $53, $0C
|12B961| db $43 ; Repeat word
|12B962| dw $000F
|12B964| db $00 ; Raw block
|12B965| db $03
|12B966| db $23 ; Repeat byte
|12B967| db $00
|12B968| db $E0, $2B ; EXT Raw block
|12B96A| db $F8, $F0, $E0, $60, $10, $0F, $03, $03
|12B972| db $21, $21, $C3, $E3, $02, $C2, $06, $86
|12B97A| db $18, $98, $64, $64, $9C, $9C, $6C, $6C
|12B982| db $10, $10, $21, $41, $C7, $9A, $62, $82
|12B98A| db $00, $03, $1C, $3C, $03, $23, $00, $80
|12B992| db $00, $91, $00, $4F
|12B996| db $43 ; Repeat word
|12B997| dw $2700
|12B999| db $E0, $2F ; EXT Raw block
|12B99B| db $FC, $C3, $C0, $60, $60, $30, $1F, $1F
|12B9A3| db $00, $EF, $00, $0F, $80, $EF, $10, $D3
|12B9AB| db $10, $D1, $22, $A0, $26, $A3, $4C, $45
|12B9B3| db $F8, $F8, $3C, $6E, $63, $C3, $C4, $88
|12B9BB| db $8E, $8A, $87, $85, $43, $C2, $41, $C1
|12B9C3| db $30, $F0, $0C, $FC, $03, $7F, $00, $9F
|12B9CB| db $84 ; Copy past
|12B9CC| dw $00BD
|12B9CE| db $1A ; Raw block
|12B9CF| db $80, $E0, $78, $5D, $45, $29, $21, $92
|12B9D7| db $93, $CE, $4F, $EC, $AF, $70, $5F, $C0
|12B9DF| db $FE, $00, $F9, $18, $08, $00, $80, $40
|12B9E7| db $21, $07, $1E
|12B9EA| db $E5, $7F ; EXT Repeat byte
|12B9EC| db $00
|12B9ED| db $FF ; End of GFX 1D

;===================================================================================================

GFX_1E:
|12B9EE| db $2F ; Repeat byte
|12B9EF| db $00
|12B9F0| db $37 ; Repeat byte
|12B9F1| db $FF
|12B9F2| db $27 ; Repeat byte
|12B9F3| db $00
|12B9F4| db $07 ; Raw block
|12B9F5| db $07, $07, $68, $0F, $57, $18, $28, $30
|12B9FD| db $43 ; Repeat word
|12B9FE| dw $6050
|12BA00| db $43 ; Repeat word
|12BA01| dw $C0A0
|12BA03| db $0D ; Raw block
|12BA04| db $F8, $F0, $E0, $C0, $80, $80, $00, $00
|12BA0C| db $E4, $E0, $16, $F0, $EA, $18
|12BA12| db $43 ; Repeat word
|12BA13| dw $0C14
|12BA15| db $01 ; Raw block
|12BA16| db $0A, $06
|12BA18| db $43 ; Repeat word
|12BA19| dw $0305
|12BA1B| db $0F ; Raw block
|12BA1C| db $1F, $0F, $07, $03, $03, $01, $00, $00
|12BA24| db $38, $00, $C4, $38, $3A, $FC, $C5, $C6
|12BA2C| db $45 ; Repeat word
|12BA2D| dw $0605
|12BA2F| db $01 ; Raw block
|12BA30| db $0A, $0C
|12BA32| db $22 ; Repeat byte
|12BA33| db $00
|12BA34| db $00 ; Raw block
|12BA35| db $38
|12BA36| db $22 ; Repeat byte
|12BA37| db $F8
|12BA38| db $00 ; Raw block
|12BA39| db $F0
|12BA3A| db $25 ; Repeat byte
|12BA3B| db $FF
|12BA3C| db $09 ; Raw block
|12BA3D| db $FE, $FE, $F0, $F1, $C0, $CF, $00, $3F
|12BA45| db $00, $FF
|12BA47| db $22 ; Repeat byte
|12BA48| db $00
|12BA49| db $04 ; Raw block
|12BA4A| db $01, $0E, $30, $C0, $00
|12BA4F| db $25 ; Repeat byte
|12BA50| db $FF
|12BA51| db $22 ; Repeat byte
|12BA52| db $00
|12BA53| db $46 ; Repeat word
|12BA54| dw $00FF
|12BA56| db $22 ; Repeat byte
|12BA57| db $00
|12BA58| db $00 ; Raw block
|12BA59| db $FF
|12BA5A| db $23 ; Repeat byte
|12BA5B| db $00
|12BA5C| db $0F ; Raw block
|12BA5D| db $E3, $3E, $E7, $3C, $FF, $99, $7C, $C3
|12BA65| db $3E, $E3, $1F, $F9, $07, $FC, $03, $FE
|12BA6D| db $27 ; Repeat byte
|12BA6E| db $FF
|12BA6F| db $0F ; Raw block
|12BA70| db $C3, $7E, $87, $FC, $0F, $F9, $DE, $33
|12BA78| db $DE, $F7, $3E, $E3, $FF, $C9, $F7, $1C
|12BA80| db $27 ; Repeat byte
|12BA81| db $FF
|12BA82| db $E4, $A7 ; EXT Repeat byte
|12BA84| db $00
|12BA85| db $0A ; Raw block
|12BA86| db $20, $E0, $CC, $3C, $32, $0E, $0D, $03
|12BA8E| db $02, $01, $01
|12BA91| db $24 ; Repeat byte
|12BA92| db $00
|12BA93| db $02 ; Raw block
|12BA94| db $1F, $03, $01
|12BA97| db $28 ; Repeat byte
|12BA98| db $00
|12BA99| db $0B ; Raw block
|12BA9A| db $C0, $00, $60, $00, $EA, $E2, $1D, $FF
|12BAA2| db $E2, $1D, $1D, $00
|12BAA6| db $23 ; Repeat byte
|12BAA7| db $FF
|12BAA8| db $00 ; Raw block
|12BAA9| db $1D
|12BAAA| db $22 ; Repeat byte
|12BAAB| db $00
|12BAAC| db $43 ; Repeat word
|12BAAD| dw $C0A0
|12BAAF| db $13 ; Raw block
|12BAB0| db $50, $60, $28, $30, $68, $30, $77, $18
|12BAB8| db $38, $0F, $07, $07, $00, $00, $80, $C0
|12BAC0| db $C0, $E0, $F0, $F8
|12BAC4| db $43 ; Repeat word
|12BAC5| dw $0305
|12BAC7| db $09 ; Raw block
|12BAC8| db $1A, $06, $25, $1C, $DE, $38, $2C, $E0
|12BAD0| db $D8, $C0
|12BAD2| db $23 ; Repeat byte
|12BAD3| db $00
|12BAD4| db $05 ; Raw block
|12BAD5| db $01, $03, $07, $1F, $3F, $FF
|12BADB| db $43 ; Repeat word
|12BADC| dw $0C0A
|12BADE| db $0B ; Raw block
|12BADF| db $1A, $0C, $6A, $0C, $1C, $18, $E4, $F8
|12BAE7| db $18, $E0, $E0, $00
|12BAEB| db $23 ; Repeat byte
|12BAEC| db $F0
|12BAED| db $00 ; Raw block
|12BAEE| db $E0
|12BAEF| db $22 ; Repeat byte
|12BAF0| db $00
|12BAF1| db $07 ; Raw block
|12BAF2| db $FC, $FC, $F8, $FB, $E0, $E7, $C0, $DF
|12BAFA| db $43 ; Repeat word
|12BAFB| dw $BF80
|12BAFD| db $43 ; Repeat word
|12BAFE| dw $7F00
|12BB00| db $07 ; Raw block
|12BB01| db $03, $04, $18, $20, $40, $40, $80, $80
|12BB09| db $37 ; Repeat byte
|12BB0A| db $00
|12BB0B| db $0F ; Raw block
|12BB0C| db $C7, $7E, $F7, $3C, $FF, $99, $7E, $C3
|12BB14| db $3C, $E7, $3E, $E3, $7C, $CF, $F1, $9F
|12BB1C| db $27 ; Repeat byte
|12BB1D| db $FF
|12BB1E| db $0F ; Raw block
|12BB1F| db $C1, $3E, $E0, $7F, $E4, $3F, $FC, $9F
|12BB27| db $7E, $C7, $7F, $C3, $FF, $99, $F7, $3C
|12BB2F| db $27 ; Repeat byte
|12BB30| db $FF
|12BB31| db $E4, $A9 ; EXT Repeat byte
|12BB33| db $00
|12BB34| db $12 ; Raw block
|12BB35| db $03, $03, $64, $07, $CB, $0C, $34, $38
|12BB3D| db $C8, $F0, $30, $C0, $C0, $00, $FF, $FC
|12BB45| db $F8, $F0, $C0
|12BB48| db $22 ; Repeat byte
|12BB49| db $00
|12BB4A| db $04 ; Raw block
|12BB4B| db $FC, $FF, $03, $FC, $FC
|12BB50| db $32 ; Repeat byte
|12BB51| db $00
|12BB52| db $E0, $26 ; EXT Raw block
|12BB54| db $18, $18, $24, $3C, $5A, $66, $A5, $C3
|12BB5C| db $AA, $C6, $B4, $CC, $48, $78, $30, $30
|12BB64| db $E7, $C3, $81, $00, $01, $03, $87, $CF
|12BB6C| db $3C, $00, $42, $3C, $BD, $7E, $AD, $66
|12BB74| db $A5, $66, $5D, $3E, $42, $3C, $3E
|12BB7B| db $23 ; Repeat byte
|12BB7C| db $00
|12BB7D| db $01 ; Raw block
|12BB7E| db $18, $18
|12BB80| db $23 ; Repeat byte
|12BB81| db $00
|12BB82| db $4E ; Repeat word
|12BB83| dw $00FF
|12BB85| db $28 ; Repeat byte
|12BB86| db $00
|12BB87| db $02 ; Raw block
|12BB88| db $7F, $80, $BF
|12BB8B| db $43 ; Repeat word
|12BB8C| dw $DFC0
|12BB8E| db $43 ; Repeat word
|12BB8F| dw $EFE0
|12BB91| db $43 ; Repeat word
|12BB92| dw $DFC0
|12BB94| db $07 ; Raw block
|12BB95| db $80, $40, $20, $20, $10, $10, $20, $20
|12BB9D| db $E6, $6F ; EXT Repeat byte
|12BB9F| db $00
|12BBA0| db $FF ; End of GFX 1E

;===================================================================================================

GFX_1F:
|12BBA1| db $09 ; Raw block
|12BBA2| db $68, $B7, $7D, $B2, $37, $DA, $32, $DF
|12BBAA| db $F2, $1F
|12BBAC| db $45 ; Repeat word
|12BBAD| dw $DF2A
|12BBAF| db $27 ; Repeat byte
|12BBB0| db $00
|12BBB1| db $0F ; Raw block
|12BBB2| db $08, $F7, $FF, $00, $BF, $C0, $78, $FF
|12BBBA| db $C7, $3F, $60, $9F, $3F, $FF, $60, $9F
|12BBC2| db $27 ; Repeat byte
|12BBC3| db $00
|12BBC4| db $0F ; Raw block
|12BBC5| db $FC, $00, $FE, $00, $07, $00, $03, $F8
|12BBCD| db $74, $FC, $48, $8F, $47, $87, $7F, $80
|12BBD5| db $22 ; Repeat byte
|12BBD6| db $FF
|12BBD7| db $14 ; Raw block
|12BBD8| db $07, $03, $70, $78, $7F, $1F, $00, $3F
|12BBE0| db $00, $F0, $00, $E0, $0F, $17, $1F, $08
|12BBE8| db $F8, $F0, $F0, $FF, $00
|12BBED| db $22 ; Repeat byte
|12BBEE| db $FF
|12BBEF| db $1C ; Raw block
|12BBF0| db $F0, $E0, $07, $0F, $FF, $D4, $0F, $D2
|12BBF8| db $0E, $D4, $0C, $D9, $08, $D3, $11, $C7
|12BC00| db $03, $BF, $07, $BF, $0E, $E0, $E1, $E3
|12BC08| db $E7, $EE, $FC, $F8, $F0
|12BC0D| db $44 ; Repeat word
|12BC0E| dw $F78C
|12BC10| db $0A ; Raw block
|12BC11| db $77, $4C, $B7, $AC, $D7, $5C, $67, $A8
|12BC19| db $37, $54, $DB
|12BC1C| db $24 ; Repeat byte
|12BC1D| db $00
|12BC1E| db $E0, $98 ; EXT Raw block
|12BC20| db $80, $40, $E0, $DE, $77, $DC, $77, $B9
|12BC28| db $6F, $B3, $DF, $E7, $BC, $DE, $73, $B9
|12BC30| db $CF, $9F, $18, $77, $77, $6F, $DF, $BC
|12BC38| db $73, $CF, $68, $7B, $EE, $3B, $EE, $9D
|12BC40| db $F6, $CD, $FB, $E7, $3D, $7B, $CE, $9D
|12BC48| db $F3, $F9, $18, $EE, $EE, $F6, $FB, $3D
|12BC50| db $CE, $F3, $16, $FF, $58, $33, $6F, $5C
|12BC58| db $37, $EF, $BB, $E7, $DC, $B3, $5F, $B9
|12BC60| db $6F, $DC, $6F, $58, $EF, $B7, $3B, $DC
|12BC68| db $5F, $6F, $6F, $FF, $1A, $CC, $F6, $3A
|12BC70| db $EC, $F7, $DD, $E7, $3B, $CD, $FA, $9D
|12BC78| db $F6, $3B, $F6, $1A, $F7, $ED, $DC, $3B
|12BC80| db $FA, $F6, $F6, $BE, $00, $9C, $00, $C9
|12BC88| db $41, $E3, $22, $CE, $2D, $DD, $1B, $BF
|12BC90| db $3A, $9E, $78, $5D, $6B, $36, $9D, $93
|12BC98| db $A7, $47, $87, $3C, $00, $19, $01, $C3
|12BCA0| db $C2, $FE, $7D, $C7, $80, $9F, $18, $1F
|12BCA8| db $20, $30, $5F, $DB, $E6, $3D, $83, $FF
|12BCB0| db $E7, $D8, $BF, $B4, $03, $E8, $07, $F0
|12BCB8| db $0F
|12BCB9| db $47 ; Repeat word
|12BCBA| dw $0EF1
|12BCBC| db $04 ; Raw block
|12BCBD| db $FF, $00, $7B, $77, $6F
|12BCC2| db $23 ; Repeat byte
|12BCC3| db $6E
|12BCC4| db $0A ; Raw block
|12BCC5| db $60, $00, $FF, $7E, $81, $81, $7E, $7E
|12BCCD| db $FF, $E7, $E7
|12BCD0| db $43 ; Repeat word
|12BCD1| dw $C3DB
|12BCD3| db $0B ; Raw block
|12BCD4| db $FF, $00, $FF, $81, $00, $00, $18, $3C
|12BCDC| db $3C, $00, $FF, $00
|12BCE0| db $4B ; Repeat word
|12BCE1| dw $FF00
|12BCE3| db $00 ; Raw block
|12BCE4| db $FF
|12BCE5| db $28 ; Repeat byte
|12BCE6| db $00
|12BCE7| db $05 ; Raw block
|12BCE8| db $2D, $C0, $17, $E0, $0F, $F0
|12BCEE| db $43 ; Repeat word
|12BCEF| dw $708F
|12BCF1| db $11 ; Raw block
|12BCF2| db $8E, $70, $8F, $70, $FF, $00, $DE, $EE
|12BCFA| db $F6, $76, $76, $77, $77, $07, $FF, $00
|12BD02| db $FF, $7F
|12BD04| db $45 ; Repeat word
|12BD05| dw $60E0
|12BD07| db $07 ; Raw block
|12BD08| db $B0, $30, $DF, $9F, $70, $C0, $FF, $80
|12BD10| db $22 ; Repeat byte
|12BD11| db $9F
|12BD12| db $0A ; Raw block
|12BD13| db $CF, $60, $3F, $FC, $01, $FB, $79, $FE
|12BD1B| db $7C, $C5, $44
|12BD1E| db $47 ; Repeat word
|12BD1F| dw $42C3
|12BD21| db $03 ; Raw block
|12BD22| db $FE, $86, $83, $BB
|12BD26| db $23 ; Repeat byte
|12BD27| db $BD
|12BD28| db $E0, $33 ; EXT Raw block
|12BD2A| db $CF, $70, $CE, $78, $47, $B9, $63, $BC
|12BD32| db $F1, $1E, $38, $CF, $1C, $E7, $0E, $F3
|12BD3A| db $77, $7B, $3A, $3D, $1E, $0F, $07, $03
|12BD42| db $FF, $78, $7E, $00, $F7, $89, $E3, $1C
|12BD4A| db $C9, $3E, $9C, $77, $36, $EB, $63, $DD
|12BD52| db $02, $87, $6A, $DD, $BE, $77, $E3, $C1
|12BD5A| db $BF, $0C, $BE, $0D
|12BD5E| db $83 ; Copy past
|12BD5F| dw $01E0
|12BD61| db $46 ; Repeat word
|12BD62| dw $0CBF
|12BD64| db $00 ; Raw block
|12BD65| db $0D
|12BD66| db $27 ; Repeat byte
|12BD67| db $F0
|12BD68| db $01 ; Raw block
|12BD69| db $2A, $ED
|12BD6B| db $49 ; Repeat word
|12BD6C| dw $E522
|12BD6E| db $04 ; Raw block
|12BD6F| db $FA, $FD, $F2, $FD, $F0
|12BD74| db $24 ; Repeat byte
|12BD75| db $F8
|12BD76| db $0C ; Raw block
|12BD77| db $E0, $00, $7F, $80, $9F, $60, $CF, $30
|12BD7F| db $EF, $90, $E7, $D8, $77
|12BD84| db $44 ; Repeat word
|12BD85| dw $BFE8
|12BD87| db $04 ; Raw block
|12BD88| db $03, $03, $01, $81, $C1
|12BD8D| db $22 ; Repeat byte
|12BD8E| db $E1
|12BD8F| db $E0, $23 ; EXT Raw block
|12BD91| db $3F, $C0, $CF, $30, $F7, $C8, $FB, $64
|12BD99| db $FF, $F4, $DB, $30, $DB, $F0, $3B, $E0
|12BDA1| db $03, $03, $C1, $61, $F1, $35, $F5, $E5
|12BDA9| db $7E, $AB, $7E, $BB, $B9, $5F, $BF, $4E
|12BDB1| db $DF, $20, $E8, $18
|12BDB5| db $43 ; Repeat word
|12BDB6| dw $00FF
|12BDB8| db $11 ; Raw block
|12BDB9| db $2B, $3B, $1F, $0E, $00, $07, $C0, $FF
|12BDC1| db $7B, $9F, $BC, $4F, $9F, $67, $C7, $38
|12BDC9| db $F3, $0F
|12BDCB| db $45 ; Repeat word
|12BDCC| dw $00FF
|12BDCE| db $02 ; Raw block
|12BDCF| db $1F, $0F, $07
|12BDD2| db $22 ; Repeat byte
|12BDD3| db $00
|12BDD4| db $E0, $2A ; EXT Raw block
|12BDD6| db $C0, $FF, $EC, $1E, $ED, $0F, $DD, $1B
|12BDDE| db $EB, $35, $DF, $36, $EF, $1B, $F3, $0D
|12BDE6| db $FF, $00, $C1, $D0, $A4, $8E, $8F, $C7
|12BDEE| db $C3, $C3, $60, $BF, $CF, $7F, $DF, $77
|12BDF6| db $FF, $3A, $FF, $9C, $FF, $4F, $DF, $20
|12BDFE| db $97, $58, $7F
|12BE01| db $22 ; Repeat byte
|12BE02| db $FF
|12BE03| db $13 ; Raw block
|12BE04| db $7F, $BF, $DF, $A0, $C1, $3E, $4F, $B0
|12BE0C| db $D0, $2F, $EF, $1F, $D8, $38, $B7, $70
|12BE14| db $EF, $60, $DB, $40
|12BE18| db $23 ; Repeat byte
|12BE19| db $00
|12BE1A| db $E0, $25 ; EXT Raw block
|12BE1C| db $07, $0F, $1F, $3C, $BD, $7E, $7E, $FF
|12BE24| db $C3, $C3, $BD, $81, $7E, $00, $C3, $00
|12BE2C| db $BD, $00, $C3, $3C, $00, $00, $3C, $7E
|12BE34| db $FF, $FF, $C3, $3C, $FF, $40, $F9, $A6
|12BE3C| db $FD, $A2, $FD, $B2, $FD, $D2
|12BE42| db $43 ; Repeat word
|12BE43| dw $52FD
|12BE45| db $06 ; Raw block
|12BE46| db $FF, $50, $40, $A0, $A0, $B0, $D0
|12BE4D| db $22 ; Repeat byte
|12BE4E| db $50
|12BE4F| db $0F ; Raw block
|12BE50| db $83, $7C, $F3, $0C, $0B, $F4, $F7, $F8
|12BE58| db $1B, $1C, $ED, $0E, $F7, $06, $DB, $02
|12BE60| db $23 ; Repeat byte
|12BE61| db $00
|12BE62| db $14 ; Raw block
|12BE63| db $E0, $F0, $F8, $3C, $CF, $20, $A7, $5F
|12BE6B| db $E9, $56, $ED, $72, $95, $5A, $AF, $6F
|12BE73| db $50, $B0, $67, $BF, $1F
|12BE78| db $22 ; Repeat byte
|12BE79| db $00
|12BE7A| db $18 ; Raw block
|12BE7B| db $20, $10, $0F, $00, $FC, $03, $B3, $7C
|12BE83| db $74, $97, $8A, $FB, $32, $4B, $5D, $65
|12BE8B| db $4D, $7D, $7F, $45, $00, $00, $08, $04
|12BE93| db $84
|12BE94| db $22 ; Repeat byte
|12BE95| db $82
|12BE96| db $02 ; Raw block
|12BE97| db $FF, $00, $FF
|12BE9A| db $83 ; Copy past
|12BE9B| dw $016F
|12BE9D| db $00 ; Raw block
|12BE9E| db $72
|12BE9F| db $46 ; Repeat word
|12BEA0| dw $718F
|12BEA2| db $04 ; Raw block
|12BEA3| db $70, $00, $70, $74, $71
|12BEA8| db $22 ; Repeat byte
|12BEA9| db $74
|12BEAA| db $00 ; Raw block
|12BEAB| db $76
|12BEAC| db $45 ; Repeat word
|12BEAD| dw $00FF
|12BEAF| db $17 ; Raw block
|12BEB0| db $7F, $40, $7C, $00, $7B, $03, $B7, $87
|12BEB8| db $CF, $CC, $00, $00, $3F, $9C, $BB, $B4
|12BEC0| db $48, $30, $00, $FF, $BD, $BE, $7E, $7F
|12BEC8| db $22 ; Repeat byte
|12BEC9| db $FF
|12BECA| db $1A ; Raw block
|12BECB| db $C1, $FF, $80, $FF, $12, $FF, $24, $00
|12BED3| db $40, $80, $00, $00, $3E, $6D, $DA, $FF
|12BEDB| db $49, $FD, $91, $F9, $25, $F1, $CD, $E1
|12BEE3| db $1D, $01, $FD
|12BEE6| db $23 ; Repeat byte
|12BEE7| db $FF
|12BEE8| db $E0, $6A ; EXT Raw block
|12BEEA| db $B5, $6B, $D7, $2F, $1F, $FF, $FD, $00
|12BEF2| db $73, $EE, $F7, $DE, $EF, $BD, $DE, $7B
|12BEFA| db $BD, $F7, $7B, $CF, $F7, $3C, $BE, $B3
|12BF02| db $EE, $DE, $BD, $7B, $F7, $CF, $3C, $D0
|12BF0A| db $CE, $77, $EF, $7B, $F7, $BD, $7B, $DE
|12BF12| db $BD, $EF, $DE, $F3, $EF, $3C, $7D, $CD
|12BF1A| db $77, $7B, $BD, $DE, $EF, $F3, $3C, $0B
|12BF22| db $DE, $B7, $6F, $3B, $F7, $DD, $FB, $DE
|12BF2A| db $BC, $6F, $DE, $77, $EF, $BB, $77, $BC
|12BF32| db $B7, $BB, $5D, $DE, $6F, $77, $3B, $3C
|12BF3A| db $7B, $ED, $F6, $DC, $EF, $BB, $DF, $7B
|12BF42| db $3D, $F6, $7B, $EE, $F7, $DD, $EE, $3D
|12BF4A| db $ED, $DD, $BA, $7B, $F6, $EE, $DC, $3C
|12BF52| db $C1, $22, $DD
|12BF55| db $46 ; Repeat word
|12BF56| dw $D51C
|12BF58| db $06 ; Raw block
|12BF59| db $DD, $1C, $E3, $22, $DD, $3E, $9C
|12BF60| db $24 ; Repeat byte
|12BF61| db $BE
|12BF62| db $0C ; Raw block
|12BF63| db $9C, $80, $AF, $3F, $18, $3F, $10, $3F
|12BF6B| db $15, $3F, $16, $3F, $13
|12BF70| db $44 ; Repeat word
|12BF71| dw $113F
|12BF73| db $00 ; Raw block
|12BF74| db $4F
|12BF75| db $26 ; Repeat byte
|12BF76| db $DF
|12BF77| db $13 ; Raw block
|12BF78| db $CF, $08, $DE, $17, $76, $AF, $E1, $19
|12BF80| db $4F, $B8, $DE, $37, $76, $AF, $66, $9F
|12BF88| db $30, $20, $00, $06
|12BF8C| db $23 ; Repeat byte
|12BF8D| db $00
|12BF8E| db $07 ; Raw block
|12BF8F| db $3E, $FF, $41, $C1, $FF, $80, $BE, $7F
|12BF97| db $43 ; Repeat word
|12BF98| dw $FF3E
|12BF9A| db $84 ; Copy past
|12BF9B| dw $015C
|12BF9D| db $00 ; Raw block
|12BF9E| db $3E
|12BF9F| db $25 ; Repeat byte
|12BFA0| db $00
|12BFA1| db $12 ; Raw block
|12BFA2| db $18, $18, $08, $08, $42, $42, $00, $00
|12BFAA| db $C3, $00, $3C, $00, $C3, $C3, $DB, $3C
|12BFB2| db $E7, $F7, $BD
|12BFB5| db $22 ; Repeat byte
|12BFB6| db $FF
|12BFB7| db $16 ; Raw block
|12BFB8| db $3C, $00, $39, $C0, $35, $F8, $B3, $FC
|12BFC0| db $F1, $7E, $41, $8E, $39, $CE, $3D, $F6
|12BFC8| db $35, $FA, $06, $02, $00, $00, $30
|12BFCF| db $22 ; Repeat byte
|12BFD0| db $00
|12BFD1| db $0E ; Raw block
|12BFD2| db $FA, $2F, $FA, $37, $9F, $78, $AE, $5E
|12BFDA| db $B3, $6F, $BF, $70, $80, $3F, $FF
|12BFE1| db $22 ; Repeat byte
|12BFE2| db $00
|12BFE3| db $19 ; Raw block
|12BFE4| db $40, $41, $60, $70, $7F, $00, $FF, $00
|12BFEC| db $C1, $3C, $DD, $EE, $ED, $76, $F5, $BA
|12BFF4| db $35, $DA, $FD, $DA, $2D, $CA, $00, $3E
|12BFFC| db $0E, $06
|12BFFE| db $22 ; Repeat byte
|12BFFF| db $02
|12C000| db $01 ; Raw block
|12C001| db $12, $00
|12C003| db $26 ; Repeat byte
|12C004| db $FF
|12C005| db $00 ; Raw block
|12C006| db $00
|12C007| db $27 ; Repeat byte
|12C008| db $FF
|12C009| db $00 ; Raw block
|12C00A| db $00
|12C00B| db $22 ; Repeat byte
|12C00C| db $FF
|12C00D| db $00 ; Raw block
|12C00E| db $00
|12C00F| db $23 ; Repeat byte
|12C010| db $FF
|12C011| db $02 ; Raw block
|12C012| db $99, $FF, $A5
|12C015| db $44 ; Repeat word
|12C016| dw $DBFF
|12C018| db $02 ; Raw block
|12C019| db $A5, $FF, $99
|12C01C| db $2B ; Repeat byte
|12C01D| db $FF
|12C01E| db $07 ; Raw block
|12C01F| db $00, $7F, $80, $FF, $40, $BF, $00, $7F
|12C027| db $45 ; Repeat word
|12C028| dw $FF00
|12C02A| db $22 ; Repeat byte
|12C02B| db $00
|12C02C| db $09 ; Raw block
|12C02D| db $1F, $5F, $9F, $3F, $7F, $FF, $B7, $40
|12C035| db $EF, $20
|12C037| db $4B ; Repeat word
|12C038| dw $00FF
|12C03A| db $02 ; Raw block
|12C03B| db $09, $13, $07
|12C03E| db $24 ; Repeat byte
|12C03F| db $3F
|12C040| db $03 ; Raw block
|12C041| db $8F, $F0, $8D, $F6
|12C045| db $43 ; Repeat word
|12C046| dw $F78C
|12C048| db $01 ; Raw block
|12C049| db $8F, $F0
|12C04B| db $43 ; Repeat word
|12C04C| dw $F78C
|12C04E| db $01 ; Raw block
|12C04F| db $FC, $07
|12C051| db $27 ; Repeat byte
|12C052| db $00
|12C053| db $00 ; Raw block
|12C054| db $FF
|12C055| db $46 ; Repeat word
|12C056| dw $01FE
|12C058| db $07 ; Raw block
|12C059| db $FF, $00, $FF, $77, $88, $77, $C8, $37
|12C061| db $27 ; Repeat byte
|12C062| db $00
|12C063| db $01 ; Raw block
|12C064| db $FC, $53
|12C066| db $45 ; Repeat word
|12C067| dw $51FE
|12C069| db $43 ; Repeat word
|12C06A| dw $50FF
|12C06C| db $03 ; Raw block
|12C06D| db $7F, $A8, $7F, $AA
|12C071| db $25 ; Repeat byte
|12C072| db $50
|12C073| db $06 ; Raw block
|12C074| db $28, $2A, $FC, $03, $FF, $FC, $FF
|12C07B| db $83 ; Copy past
|12C07C| dw $0559
|12C07E| db $07 ; Raw block
|12C07F| db $03, $FF, $00, $7F, $81, $0F, $F0, $00
|12C087| db $43 ; Repeat word
|12C088| dw $03FC
|12C08A| db $0C ; Raw block
|12C08B| db $00, $01, $00, $E3, $1C, $FE, $01, $F6
|12C093| db $0D, $FB, $06, $FD, $02
|12C098| db $45 ; Repeat word
|12C099| dw $00FF
|12C09B| db $00 ; Raw block
|12C09C| db $80
|12C09D| db $24 ; Repeat byte
|12C09E| db $C0
|12C09F| db $14 ; Raw block
|12C0A0| db $E0, $FC, $88, $9F, $C7, $4F, $60, $A0
|12C0A8| db $3F, $DF, $9F, $E0, $98, $E7, $BF, $C0
|12C0B0| db $FF, $00, $6F, $37, $1F
|12C0B5| db $23 ; Repeat byte
|12C0B6| db $00
|12C0B7| db $1B ; Raw block
|12C0B8| db $1F, $FF, $00, $FF, $FC, $1E, $E1, $30
|12C0C0| db $CF, $6C, $9F, $DC, $3E, $F0, $30, $E1
|12C0C8| db $21, $00, $00, $E0, $C0, $80, $01, $0F
|12C0D0| db $1E, $FF, $00, $00
|12C0D4| db $24 ; Repeat byte
|12C0D5| db $FF
|12C0D6| db $00 ; Raw block
|12C0D7| db $80
|12C0D8| db $22 ; Repeat byte
|12C0D9| db $00
|12C0DA| db $83 ; Copy past
|12C0DB| dw $043C
|12C0DD| db $23 ; Repeat byte
|12C0DE| db $00
|12C0DF| db $83 ; Copy past
|12C0E0| dw $015D
|12C0E2| db $E0, $2F ; EXT Raw block
|12C0E4| db $0B, $02, $2B, $22, $04, $01, $C5, $C1
|12C0EC| db $85, $81, $04, $01, $2B, $22, $0B, $02
|12C0F4| db $FC, $DC, $FE, $3E, $7E, $FE, $DC, $FC
|12C0FC| db $E0, $1F, $30, $CF, $DC, $E3, $8F, $B0
|12C104| db $43, $3C, $0D, $1E, $C7, $46, $63, $A2
|12C10C| db $1F, $0F, $03, $40, $C0, $E0, $38, $1C
|12C114| db $FF ; End of GFX 1F

;===================================================================================================

GFX_20:
|12C115| db $0F ; Raw block
|12C116| db $CF, $3F, $EF, $5F, $B0, $6F, $9F, $70
|12C11E| db $88, $78, $47, $BF, $67, $9F, $77, $AF
|12C126| db $23 ; Repeat byte
|12C127| db $00
|12C128| db $00 ; Raw block
|12C129| db $07
|12C12A| db $22 ; Repeat byte
|12C12B| db $00
|12C12C| db $09 ; Raw block
|12C12D| db $FC, $03, $C7, $78, $63, $BD, $31, $DE
|12C135| db $98, $EF
|12C137| db $45 ; Repeat word
|12C138| dw $E7D6
|12C13A| db $24 ; Repeat byte
|12C13B| db $00
|12C13C| db $22 ; Repeat byte
|12C13D| db $08
|12C13E| db $43 ; Repeat word
|12C13F| dw $00FF
|12C141| db $0B ; Raw block
|12C142| db $7F, $00, $7E, $00, $7D, $01, $7B, $02
|12C14A| db $77, $05, $6E, $0A
|12C14E| db $23 ; Repeat byte
|12C14F| db $FF
|12C150| db $03 ; Raw block
|12C151| db $FE, $FC, $F8, $F1
|12C155| db $43 ; Repeat word
|12C156| dw $00FF
|12C158| db $14 ; Raw block
|12C159| db $7F, $7F, $FF, $80, $E7, $20, $8F, $80
|12C161| db $3B, $38, $7D, $64, $FF, $FF, $80, $00
|12C169| db $1F, $7F, $C7, $83, $C0
|12C16E| db $44 ; Repeat word
|12C16F| dw $FF00
|12C171| db $09 ; Raw block
|12C172| db $FE, $00, $FD, $01, $FB, $02, $F7, $05
|12C17A| db $EE, $0A
|12C17C| db $23 ; Repeat byte
|12C17D| db $FF
|12C17E| db $83 ; Copy past
|12C17F| dw $0044
|12C181| db $1A ; Raw block
|12C182| db $F0, $0F, $FF, $C0, $CB, $EC, $CF, $EF
|12C18A| db $9F, $5F, $70, $8F, $8F, $D0, $4B, $6C
|12C192| db $00, $00, $10, $10, $20, $00, $20, $90
|12C19A| db $FF, $00, $FF
|12C19D| db $22 ; Repeat byte
|12C19E| db $00
|12C19F| db $08 ; Raw block
|12C1A0| db $FF, $00, $00, $FF, $E0, $FF, $B0, $FF
|12C1A8| db $19
|12C1A9| db $23 ; Repeat byte
|12C1AA| db $FF
|12C1AB| db $24 ; Repeat byte
|12C1AC| db $00
|12C1AD| db $02 ; Raw block
|12C1AE| db $FF, $00, $FF
|12C1B1| db $22 ; Repeat byte
|12C1B2| db $00
|12C1B3| db $83 ; Copy past
|12C1B4| dw $0096
|12C1B6| db $02 ; Raw block
|12C1B7| db $71, $FF, $FB
|12C1BA| db $25 ; Repeat byte
|12C1BB| db $FF
|12C1BC| db $24 ; Repeat byte
|12C1BD| db $00
|12C1BE| db $08 ; Raw block
|12C1BF| db $D6, $0F, $D4, $0F, $D6, $0F, $D3, $0F
|12C1C7| db $D1
|12C1C8| db $44 ; Repeat word
|12C1C9| dw $D00F
|12C1CB| db $01 ; Raw block
|12C1CC| db $D1, $0F
|12C1CE| db $27 ; Repeat byte
|12C1CF| db $E0
|12C1D0| db $00 ; Raw block
|12C1D1| db $D3
|12C1D2| db $46 ; Repeat word
|12C1D3| dw $D70F
|12C1D5| db $83 ; Copy past
|12C1D6| dw $00C6
|12C1D8| db $83 ; Copy past
|12C1D9| dw $00D8
|12C1DB| db $27 ; Repeat byte
|12C1DC| db $E0
|12C1DD| db $12 ; Raw block
|12C1DE| db $FF, $00, $FF, $03, $FE, $77, $FC, $6A
|12C1E6| db $D4, $6A, $DA, $6D, $DF, $66, $CF, $72
|12C1EE| db $00, $03, $07
|12C1F1| db $23 ; Repeat byte
|12C1F2| db $0F
|12C1F3| db $12 ; Raw block
|12C1F4| db $07, $FF, $00, $FF, $83, $3C, $6F, $38
|12C1FC| db $2E, $70, $EC, $F0, $DC, $E7, $B8, $EC
|12C204| db $76, $00, $C7
|12C207| db $22 ; Repeat byte
|12C208| db $EF
|12C209| db $03 ; Raw block
|12C20A| db $DF, $BB, $77, $63
|12C20E| db $43 ; Repeat word
|12C20F| dw $FF00
|12C211| db $00 ; Raw block
|12C212| db $1F
|12C213| db $43 ; Repeat word
|12C214| dw $20E0
|12C216| db $01 ; Raw block
|12C217| db $E1, $21
|12C219| db $43 ; Repeat word
|12C21A| dw $20E0
|12C21C| db $08 ; Raw block
|12C21D| db $FF, $FF, $E0, $DF, $DF, $DE, $DF, $DF
|12C225| db $8E
|12C226| db $43 ; Repeat word
|12C227| dw $FF00
|12C229| db $00 ; Raw block
|12C22A| db $FF
|12C22B| db $23 ; Repeat byte
|12C22C| db $00
|12C22D| db $01 ; Raw block
|12C22E| db $10, $10
|12C230| db $23 ; Repeat byte
|12C231| db $00
|12C232| db $00 ; Raw block
|12C233| db $FF
|12C234| db $83 ; Copy past
|12C235| dw $013A
|12C237| db $03 ; Raw block
|12C238| db $EF, $FF, $FF, $80
|12C23C| db $44 ; Repeat word
|12C23D| dw $C000
|12C23F| db $0B ; Raw block
|12C240| db $D0, $00, $D0, $08, $D4, $0C, $D6, $0E
|12C248| db $D7, $0F, $80, $C0
|12C24C| db $25 ; Repeat byte
|12C24D| db $E0
|12C24E| db $17 ; Raw block
|12C24F| db $59, $1C, $EC, $0E, $F6, $C7, $3B, $23
|12C257| db $1D, $11, $0E, $08, $87, $84, $03, $02
|12C25F| db $E3, $F1, $38, $DC, $EE, $F7, $7B, $FD
|12C267| db $83 ; Copy past
|12C268| dw $012A
|12C26A| db $01 ; Raw block
|12C26B| db $E4, $24
|12C26D| db $83 ; Copy past
|12C26E| dw $0128
|12C270| db $E0, $31 ; EXT Raw block
|12C272| db $50, $10, $AF, $8F, $DF, $40, $DE, $DF
|12C27A| db $DB, $DF, $DE, $EF, $70, $3F, $F9, $02
|12C282| db $F4, $F1, $0A, $08, $05, $04, $03, $02
|12C28A| db $23, $22, $03, $02, $8B, $8A, $FC, $0E
|12C292| db $F7, $FB, $FD, $DD, $FD, $75, $FA, $76
|12C29A| db $F5, $7B, $C5, $32, $CC, $0A, $7B, $BD
|12C2A2| db $5A, $BD
|12C2A4| db $43 ; Repeat word
|12C2A5| dw $9C7B
|12C2A7| db $03 ; Raw block
|12C2A8| db $01, $00, $08, $31
|12C2AC| db $23 ; Repeat byte
|12C2AD| db $00
|12C2AE| db $14 ; Raw block
|12C2AF| db $0A, $36, $F5, $FB, $F2, $FD, $07, $F4
|12C2B7| db $0C, $0E, $FD, $FF, $79, $FF, $86, $79
|12C2BF| db $C1, $00, $00, $08, $F1
|12C2C4| db $22 ; Repeat byte
|12C2C5| db $00
|12C2C6| db $1B ; Raw block
|12C2C7| db $DC, $14, $F9, $21, $FB, $2B, $F3, $22
|12C2CF| db $F7, $22, $FD, $21, $FE, $20, $FF, $20
|12C2D7| db $E3, $C6, $C4, $CC, $CC, $CE, $CF, $CF
|12C2DF| db $65, $76, $66, $77
|12C2E3| db $43 ; Repeat word
|12C2E4| dw $F766
|12C2E6| db $16 ; Raw block
|12C2E7| db $8E, $6F, $5D, $BE, $A1, $DE, $56, $67
|12C2EF| db $88, $88, $08, $08, $10, $00, $00, $88
|12C2F7| db $00, $01, $06, $FF, $02, $FF, $40
|12C2FE| db $83 ; Copy past
|12C2FF| dw $0148
|12C301| db $05 ; Raw block
|12C302| db $7F, $C0, $7F, $80, $7F, $FE
|12C308| db $27 ; Repeat byte
|12C309| db $00
|12C30A| db $09 ; Raw block
|12C30B| db $80, $8E, $3F, $C4, $7F, $C0, $7F, $FF
|12C313| db $00, $FF
|12C315| db $44 ; Repeat word
|12C316| dw $00FF
|12C318| db $01 ; Raw block
|12C319| db $7F, $40
|12C31B| db $25 ; Repeat byte
|12C31C| db $00
|12C31D| db $02 ; Raw block
|12C31E| db $0F, $70, $1E
|12C321| db $46 ; Repeat word
|12C322| dw $0C77
|12C324| db $05 ; Raw block
|12C325| db $4C, $77, $6C, $77, $0C, $F7
|12C32B| db $26 ; Repeat byte
|12C32C| db $80
|12C32D| db $04 ; Raw block
|12C32E| db $00, $7C, $87, $3C, $37
|12C333| db $43 ; Repeat word
|12C334| dw $770C
|12C336| db $83 ; Copy past
|12C337| dw $024A
|12C339| db $05 ; Raw block
|12C33A| db $4C, $77, $0C, $77, $00, $C0
|12C340| db $25 ; Repeat byte
|12C341| db $80
|12C342| db $E0, $5F ; EXT Raw block
|12C344| db $CF, $70, $DF, $60, $BF, $4A, $F7, $1A
|12C34C| db $E7, $3B, $EE, $3B, $FF, $61, $FF, $60
|12C354| db $02, $09, $1B, $3B, $7B, $7B, $73, $63
|12C35C| db $D0, $EC, $E7, $D8, $EF, $B0, $FC, $A4
|12C364| db $F8, $28, $E3, $93, $64, $96, $EF, $9C
|12C36C| db $EF, $DF, $B8, $B3, $A7, $CC, $C9, $C0
|12C374| db $AC, $1D, $9A, $39, $B6, $73, $EF, $66
|12C37C| db $BF, $0C, $9D, $18, $BF, $00, $9C, $9C
|12C384| db $62, $46, $0C, $18, $72, $66, $40, $63
|12C38C| db $B1, $9F, $E1, $BE, $C5, $B2, $5A, $25
|12C394| db $C5, $3B, $7E, $3A, $FF, $00, $71, $71
|12C39C| db $5F, $3E, $3E, $BC, $B8, $B9, $00, $8E
|12C3A4| db $23 ; Repeat byte
|12C3A5| db $00
|12C3A6| db $0C ; Raw block
|12C3A7| db $20, $20, $30, $30, $38, $38, $3C, $3C
|12C3AF| db $3E, $3E, $3F, $3F, $80
|12C3B4| db $26 ; Repeat byte
|12C3B5| db $C0
|12C3B6| db $E0, $23 ; EXT Raw block
|12C3B8| db $8C, $0F, $84, $77, $50, $DB, $98, $9F
|12C3C0| db $FC, $0F, $0C, $07, $84, $73, $92, $99
|12C3C8| db $70, $08, $24, $60, $F0, $F8, $0C, $66
|12C3D0| db $E0, $A0, $7F, $5F, $B0, $AF, $DF, $50
|12C3D8| db $AF, $6F, $90, $70
|12C3DC| db $43 ; Repeat word
|12C3DD| dw $7F8F
|12C3DF| db $0F ; Raw block
|12C3E0| db $1F, $80, $40, $20, $10, $0F, $00, $00
|12C3E8| db $BF, $A0, $D0, $5F, $68, $AF, $34, $57
|12C3F0| db $47 ; Repeat word
|12C3F1| dw $6B5B
|12C3F3| db $03 ; Raw block
|12C3F4| db $40, $20, $10, $88
|12C3F8| db $23 ; Repeat byte
|12C3F9| db $84
|12C3FA| db $E0, $31 ; EXT Raw block
|12C3FC| db $14, $98, $7C, $F4, $7E, $F6, $6B, $F7
|12C404| db $8D, $63, $9A, $11, $FB, $72, $FD, $75
|12C40C| db $63, $03, $01, $00, $10, $64, $04, $02
|12C414| db $67, $5A, $72, $5C, $3A, $1C, $1E, $0C
|12C41C| db $8E, $80, $63, $E2, $D9, $38, $34, $CC
|12C424| db $99, $9D, $DD, $ED, $71, $1D, $07, $03
|12C42C| db $0F, $F0
|12C42E| db $43 ; Repeat word
|12C42F| dw $7B73
|12C431| db $E0, $2D ; EXT Raw block
|12C433| db $E7, $F7, $7F, $80, $E9, $71, $36, $3A
|12C43B| db $1B, $1D, $00, $84, $84, $08, $00, $06
|12C443| db $C1, $E0, $0A, $0D, $C6, $C5, $E5, $06
|12C44B| db $73, $E2, $3A, $F3, $99, $71, $FC, $84
|12C453| db $86, $00, $F0, $38, $18, $EC, $F4, $76
|12C45B| db $03, $FF, $00, $00, $40, $00
|12C461| db $45 ; Repeat word
|12C462| dw $BF3F
|12C464| db $04 ; Raw block
|12C465| db $6F, $FF, $46, $FF, $00
|12C46A| db $22 ; Repeat byte
|12C46B| db $FF
|12C46C| db $22 ; Repeat byte
|12C46D| db $40
|12C46E| db $26 ; Repeat byte
|12C46F| db $00
|12C470| db $02 ; Raw block
|12C471| db $F8, $FF, $FD
|12C474| db $44 ; Repeat word
|12C475| dw $1FFF
|12C477| db $02 ; Raw block
|12C478| db $0F, $FF, $00
|12C47B| db $22 ; Repeat byte
|12C47C| db $FF
|12C47D| db $26 ; Repeat byte
|12C47E| db $00
|12C47F| db $07 ; Raw block
|12C480| db $3F, $46, $07, $3C, $3F, $38, $3F, $3C
|12C488| db $44 ; Repeat word
|12C489| dw $3E3F
|12C48B| db $03 ; Raw block
|12C48C| db $3C, $3F, $C0, $F8
|12C490| db $25 ; Repeat byte
|12C491| db $C0
|12C492| db $45 ; Repeat word
|12C493| dw $3F30
|12C495| db $83 ; Copy past
|12C496| dw $03C8
|12C498| db $05 ; Raw block
|12C499| db $1E, $3F, $0E, $3F, $1E, $3F
|12C49F| db $27 ; Repeat byte
|12C4A0| db $C0
|12C4A1| db $01 ; Raw block
|12C4A2| db $F7, $4C
|12C4A4| db $43 ; Repeat word
|12C4A5| dw $4EFD
|12C4A7| db $1B ; Raw block
|12C4A8| db $F8, $47, $F1, $0F, $FE, $0D, $FF, $4C
|12C4B0| db $DF, $66, $61, $60, $60, $61, $2F, $0F
|12C4B8| db $0D, $0E, $F5, $0E, $FB, $07, $EF, $38
|12C4C0| db $F7, $3C, $F8, $1C
|12C4C4| db $84 ; Copy past
|12C4C5| dw $03B3
|12C4C7| db $E0, $38 ; EXT Raw block
|12C4C9| db $07, $C0, $30, $78, $7F, $7F, $3F, $0F
|12C4D1| db $70, $C3, $3F, $9A, $7E, $B8, $7A, $F4
|12C4D9| db $73, $C9, $47, $83, $3F, $A6, $6E, $D4
|12C4E1| db $4D, $00, $01, $05, $0C, $38, $40, $11
|12C4E9| db $32, $03, $4F, $06, $7F, $3E, $FF, $CD
|12C4F1| db $CF, $83, $BF, $2E, $60, $5E, $C0, $BF
|12C4F9| db $8E, $B0, $80, $00, $30, $40, $9F, $31
|12C501| db $6E
|12C502| db $22 ; Repeat byte
|12C503| db $00
|12C504| db $0C ; Raw block
|12C505| db $40, $00, $60, $00, $70, $08, $70, $0C
|12C50D| db $74, $0C, $76, $0C, $77
|12C512| db $27 ; Repeat byte
|12C513| db $80
|12C514| db $E0, $26 ; EXT Raw block
|12C516| db $4E, $DB, $8B, $9D, $89, $9E, $84, $97
|12C51E| db $06, $1F, $4B, $3F, $9D, $7F, $AC, $6F
|12C526| db $20, $60, $60, $68, $E0, $C0, $80, $10
|12C52E| db $DF, $30, $C8, $38, $E7, $1F, $F0, $6F
|12C536| db $FF, $70, $FF, $7F, $BF, $3F, $FF
|12C53D| db $83 ; Copy past
|12C53E| dw $0012
|12C540| db $0E ; Raw block
|12C541| db $20, $30, $3F, $40, $00, $7F, $80, $FD
|12C549| db $3C, $3F, $DE, $9F, $EE, $CF, $76
|12C550| db $45 ; Repeat word
|12C551| dw $36AF
|12C553| db $04 ; Raw block
|12C554| db $00, $02, $1C, $0C, $04
|12C559| db $22 ; Repeat byte
|12C55A| db $44
|12C55B| db $01 ; Raw block
|12C55C| db $FF, $FF
|12C55E| db $22 ; Repeat byte
|12C55F| db $00
|12C560| db $84 ; Copy past
|12C561| dw $0148
|12C563| db $22 ; Repeat byte
|12C564| db $00
|12C565| db $83 ; Copy past
|12C566| dw $00A1
|12C568| db $00 ; Raw block
|12C569| db $FF
|12C56A| db $22 ; Repeat byte
|12C56B| db $00
|12C56C| db $13 ; Raw block
|12C56D| db $FF, $00, $00, $7E, $81, $E7, $7E, $91
|12C575| db $7E, $B1, $7E, $85, $7E, $83, $3E, $C3
|12C57D| db $5A, $7E, $81, $00
|12C581| db $25 ; Repeat byte
|12C582| db $7E
|12C583| db $E4, $30 ; EXT Repeat byte
|12C585| db $00
|12C586| db $0E ; Raw block
|12C587| db $28, $10, $EF, $10, $FF, $EF, $07, $FF
|12C58F| db $10, $EF, $FF, $D7, $EF, $10, $28
|12C596| db $22 ; Repeat byte
|12C597| db $10
|12C598| db $14 ; Raw block
|12C599| db $EF, $FF, $EF, $D7, $10, $10, $14, $08
|12C5A1| db $F7, $08, $FF, $EB, $1C, $F7, $68, $FF
|12C5A9| db $FF, $F7, $F7, $08, $14
|12C5AE| db $22 ; Repeat byte
|12C5AF| db $08
|12C5B0| db $05 ; Raw block
|12C5B1| db $EB, $F7, $FF, $F7, $08, $08
|12C5B7| db $84 ; Copy past
|12C5B8| dw $0510
|12C5BA| db $03 ; Raw block
|12C5BB| db $D7, $10, $EF, $07
|12C5BF| db $83 ; Copy past
|12C5C0| dw $014B
|12C5C2| db $01 ; Raw block
|12C5C3| db $10, $28
|12C5C5| db $22 ; Repeat byte
|12C5C6| db $10
|12C5C7| db $06 ; Raw block
|12C5C8| db $D7, $EF, $FF, $EF, $10, $10, $14
|12C5CF| db $43 ; Repeat word
|12C5D0| dw $FF08
|12C5D2| db $09 ; Raw block
|12C5D3| db $F6, $23, $FE, $81, $FE, $FF, $EA, $F7
|12C5DB| db $08, $14
|12C5DD| db $22 ; Repeat byte
|12C5DE| db $08
|12C5DF| db $05 ; Raw block
|12C5E0| db $F6, $FE, $FE, $EA, $08, $08
|12C5E6| db $43 ; Repeat word
|12C5E7| dw $60DF
|12C5E9| db $06 ; Raw block
|12C5EA| db $CF, $70, $C3, $7C, $E1, $7E, $F0
|12C5F1| db $84 ; Copy past
|12C5F2| dw $048B
|12C5F4| db $00 ; Raw block
|12C5F5| db $06
|12C5F6| db $22 ; Repeat byte
|12C5F7| db $01
|12C5F8| db $83 ; Copy past
|12C5F9| dw $0390
|12C5FB| db $0A ; Raw block
|12C5FC| db $BC, $73, $3F, $F0, $3F, $E0, $F8, $C7
|12C604| db $F0, $0F, $00
|12C607| db $23 ; Repeat byte
|12C608| db $FF
|12C609| db $04 ; Raw block
|12C60A| db $00, $F8, $F8, $F0, $E0
|12C60F| db $23 ; Repeat byte
|12C610| db $00
|12C611| db $11 ; Raw block
|12C612| db $FF, $00, $80, $00, $C0, $7F, $CF, $70
|12C61A| db $D7, $6F, $AC, $5C, $D2, $33, $C9, $2F
|12C622| db $00, $7F
|12C624| db $22 ; Repeat byte
|12C625| db $00
|12C626| db $03 ; Raw block
|12C627| db $03, $0C, $10, $FF
|12C62B| db $22 ; Repeat byte
|12C62C| db $00
|12C62D| db $13 ; Raw block
|12C62E| db $07, $F8, $FA, $06, $C4, $FC, $00, $71
|12C636| db $30, $FB, $81, $CF, $00, $FF, $00, $01
|12C63E| db $03, $8E, $04, $30
|12C642| db $37 ; Repeat byte
|12C643| db $00
|12C644| db $17 ; Raw block
|12C645| db $FF, $00, $03, $00, $F9, $00, $04, $78
|12C64D| db $3A, $FC, $56, $F4, $AB, $EC, $55, $DE
|12C655| db $00, $FC, $06, $83, $01, $09, $10, $20
|12C65D| db $FF ; End of GFX 20

;===================================================================================================

GFX_21:
|12C65E| db $0F ; Raw block
|12C65F| db $7F, $80, $B7, $7F, $EC, $7F, $DB, $7F
|12C667| db $B7, $7F, $EE, $7F, $ED, $7F, $DB, $7F
|12C66F| db $27 ; Repeat byte
|12C670| db $00
|12C671| db $0F ; Raw block
|12C672| db $FE, $01, $ED, $FE, $36, $FF, $DA, $FF
|12C67A| db $EC, $FF, $76, $FF, $B6, $FF, $DA, $FF
|12C682| db $27 ; Repeat byte
|12C683| db $00
|12C684| db $09 ; Raw block
|12C685| db $E3, $1F, $D3, $2F, $FB, $17, $EF, $1B
|12C68D| db $E7, $1C
|12C68F| db $45 ; Repeat word
|12C690| dw $1FE3
|12C692| db $23 ; Repeat byte
|12C693| db $01
|12C694| db $00 ; Raw block
|12C695| db $00
|12C696| db $22 ; Repeat byte
|12C697| db $01
|12C698| db $43 ; Repeat word
|12C699| dw $00FF
|12C69B| db $0A ; Raw block
|12C69C| db $F0, $0F, $90, $0F, $18, $07, $08, $07
|12C6A4| db $0F, $00, $08
|12C6A7| db $22 ; Repeat byte
|12C6A8| db $00
|12C6A9| db $09 ; Raw block
|12C6AA| db $0F, $6F, $E7, $F7, $F0, $F7, $FF, $0C
|12C6B2| db $FF, $06
|12C6B4| db $4B ; Repeat word
|12C6B5| dw $03FF
|12C6B7| db $01 ; Raw block
|12C6B8| db $F0, $F8
|12C6BA| db $25 ; Repeat byte
|12C6BB| db $FC
|12C6BC| db $0F ; Raw block
|12C6BD| db $38, $C7, $1C, $E3, $CE, $F1, $E7, $78
|12C6C5| db $F3, $3C, $F9, $1F, $FC, $0F, $9E, $07
|12C6CD| db $26 ; Repeat byte
|12C6CE| db $00
|12C6CF| db $02 ; Raw block
|12C6D0| db $60, $93, $6C
|12C6D3| db $43 ; Repeat word
|12C6D4| dw $00FF
|12C6D6| db $09 ; Raw block
|12C6D7| db $F8, $77, $E8, $F7, $CF, $F0, $8F, $F0
|12C6DF| db $1F, $E0
|12C6E1| db $26 ; Repeat byte
|12C6E2| db $00
|12C6E3| db $00 ; Raw block
|12C6E4| db $0F
|12C6E5| db $46 ; Repeat word
|12C6E6| dw $807F
|12C6E8| db $00 ; Raw block
|12C6E9| db $8C
|12C6EA| db $47 ; Repeat word
|12C6EB| dw $9E7F
|12C6ED| db $03 ; Raw block
|12C6EE| db $1F, $1F, $01, $0C
|12C6F2| db $23 ; Repeat byte
|12C6F3| db $1E
|12C6F4| db $01 ; Raw block
|12C6F5| db $00, $00
|12C6F7| db $29 ; Repeat byte
|12C6F8| db $7F
|12C6F9| db $04 ; Raw block
|12C6FA| db $3F, $3F, $1F, $1F, $FF
|12C6FF| db $24 ; Repeat byte
|12C700| db $80
|12C701| db $05 ; Raw block
|12C702| db $C0, $E0, $7F, $00, $00, $40
|12C708| db $45 ; Repeat word
|12C709| dw $7F3F
|12C70B| db $83 ; Copy past
|12C70C| dw $00C0
|12C70E| db $03 ; Raw block
|12C70F| db $FF, $80, $80, $BF
|12C713| db $22 ; Repeat byte
|12C714| db $80
|12C715| db $E0, $89 ; EXT Raw block
|12C717| db $FF, $80, $00, $FF, $87, $C7, $43, $FB
|12C71F| db $79, $FD, $7C, $BE, $7E, $DF, $BF, $EF
|12C727| db $DF, $F7, $EF, $87, $3B, $05, $02, $01
|12C72F| db $80, $C0, $E0, $FF, $FC, $FE, $FA, $FD
|12C737| db $F5, $F0, $E8, $F9, $49, $69, $1A, $EB
|12C73F| db $9D, $CD, $BB, $FC, $F9, $F2, $E7, $46
|12C747| db $84, $00, $00, $EF, $28, $D8, $57, $90
|12C74F| db $0C, $B7, $08, $A0, $00, $DF, $40, $60
|12C757| db $A0, $3E, $C1, $10, $27, $6F, $60, $7F
|12C75F| db $3F, $1F, $00, $EA, $23, $55, $06, $BA
|12C767| db $0D, $74, $1B, $EF, $30, $50, $6F, $A0
|12C76F| db $DF, $FF, $00, $1C, $B8, $70, $E0, $C0
|12C777| db $80, $00, $00, $C3, $80, $80, $78, $F8
|12C77F| db $7E, $85, $87, $62, $03, $F8, $01, $8D
|12C787| db $01, $87, $00, $3F, $07, $01, $78, $FC
|12C78F| db $FE, $FE, $FF, $BF, $40, $FF, $1F, $20
|12C797| db $C0, $20, $DF, $FF, $00, $20, $C0, $2F
|12C79F| db $C0, $EF
|12C7A1| db $22 ; Repeat byte
|12C7A2| db $00
|12C7A3| db $02 ; Raw block
|12C7A4| db $1F, $00, $00
|12C7A7| db $22 ; Repeat byte
|12C7A8| db $1F
|12C7A9| db $09 ; Raw block
|12C7AA| db $D6, $7F, $D5, $7F, $80, $7F, $FF, $00
|12C7B2| db $FF, $7F
|12C7B4| db $44 ; Repeat word
|12C7B5| dw $0080
|12C7B7| db $00 ; Raw block
|12C7B8| db $7F
|12C7B9| db $24 ; Repeat byte
|12C7BA| db $00
|12C7BB| db $0C ; Raw block
|12C7BC| db $7F, $7F, $00, $6A, $FF, $AA, $FF, $00
|12C7C4| db $FF, $FF, $00, $FF, $FF
|12C7C9| db $23 ; Repeat byte
|12C7CA| db $01
|12C7CB| db $01 ; Raw block
|12C7CC| db $00, $FF
|12C7CE| db $24 ; Repeat byte
|12C7CF| db $00
|12C7D0| db $02 ; Raw block
|12C7D1| db $FE, $FE, $00
|12C7D4| db $47 ; Repeat word
|12C7D5| dw $0FF3
|12C7D7| db $07 ; Raw block
|12C7D8| db $D3, $6F, $E8, $77, $B7, $38, $BF, $3F
|12C7E0| db $24 ; Repeat byte
|12C7E1| db $01
|12C7E2| db $08 ; Raw block
|12C7E3| db $00, $40, $40, $FF, $70, $FC, $7B, $FC
|12C7EB| db $3B
|12C7EC| db $43 ; Repeat word
|12C7ED| dw $00FF
|12C7EF| db $45 ; Repeat word
|12C7F0| dw $FF00
|12C7F2| db $02 ; Raw block
|12C7F3| db $70, $7B, $3B
|12C7F6| db $24 ; Repeat byte
|12C7F7| db $00
|12C7F8| db $4F ; Repeat word
|12C7F9| dw $03FF
|12C7FB| db $27 ; Repeat byte
|12C7FC| db $FC
|12C7FD| db $02 ; Raw block
|12C7FE| db $8F, $01, $C7
|12C801| db $43 ; Repeat word
|12C802| dw $E701
|12C804| db $00 ; Raw block
|12C805| db $81
|12C806| db $44 ; Repeat word
|12C807| dw $C1FF
|12C809| db $0C ; Raw block
|12C80A| db $01, $FF, $01, $72, $3A, $1A, $9A, $C2
|12C812| db $C2, $1A, $3A, $5F, $A0
|12C817| db $43 ; Repeat word
|12C818| dw $AA55
|12C81A| db $09 ; Raw block
|12C81B| db $D5, $2A, $F7, $08, $1D, $E2, $0D, $F2
|12C823| db $C7, $38
|12C825| db $27 ; Repeat byte
|12C826| db $00
|12C827| db $0A ; Raw block
|12C828| db $C5, $3A, $F5, $1A, $75, $9A, $37, $D8
|12C830| db $F7, $18, $F5
|12C833| db $44 ; Repeat word
|12C834| dw $351A
|12C836| db $19 ; Raw block
|12C837| db $00, $00, $80, $C0, $00, $00, $C0, $C0
|12C83F| db $80, $80, $C0, $40, $7F, $BF, $3F, $C0
|12C847| db $A0, $FF, $60, $FF, $9F, $5F, $C0, $3F
|12C84F| db $7F, $3F
|12C851| db $23 ; Repeat byte
|12C852| db $00
|12C853| db $00 ; Raw block
|12C854| db $20
|12C855| db $83 ; Copy past
|12C856| dw $018D
|12C858| db $0C ; Raw block
|12C859| db $FF, $7F, $FF, $80, $FF, $7F, $80, $FE
|12C861| db $01, $BF, $40, $1F, $E0
|12C866| db $24 ; Repeat byte
|12C867| db $00
|12C868| db $0E ; Raw block
|12C869| db $1D, $4E, $E7, $FB, $E7, $ED, $DB, $D6
|12C871| db $B5, $C5, $A6, $C3, $A4, $DB, $BC
|12C878| db $43 ; Repeat word
|12C879| dw $A4C3
|12C87B| db $19 ; Raw block
|12C87C| db $E0, $C0, $88, $98, $98, $81, $99, $99
|12C884| db $87, $5B, $A5, $6B, $D6, $B9, $65, $DA
|12C88C| db $BE, $47, $FD, $15, $FA, $16, $EC, $33
|12C894| db $20, $10
|12C896| db $22 ; Repeat byte
|12C897| db $00
|12C898| db $E0, $45 ; EXT Raw block
|12C89A| db $02, $81, $80, $FB, $0A, $36, $C1, $F7
|12C8A2| db $00, $3B, $C8, $FC, $04, $1F, $E0, $FF
|12C8AA| db $0F, $70, $90, $04, $0D, $0C, $07, $03
|12C8B2| db $00, $00, $0F, $F9, $13, $32, $86, $E5
|12C8BA| db $0D, $CB, $1B, $16, $36, $ED, $2C, $DA
|12C8C2| db $D8, $35, $31, $0C, $D9, $32, $E4, $C9
|12C8CA| db $13, $27, $CE, $D3, $C3, $D9, $C1, $B5
|12C8D2| db $81, $63, $00, $C3, $00, $83, $01, $87
|12C8DA| db $03, $FF, $04, $3C, $3E, $7E
|12C8E0| db $22 ; Repeat byte
|12C8E1| db $FE
|12C8E2| db $13 ; Raw block
|12C8E3| db $FC, $F8, $2A, $15, $DE, $81, $75, $2B
|12C8EB| db $BF, $03, $EB, $57, $77, $0F, $DF, $AF
|12C8F3| db $F0, $00, $E0, $60
|12C8F7| db $83 ; Copy past
|12C8F8| dw $023E
|12C8FA| db $16 ; Raw block
|12C8FB| db $00, $0F, $00, $80, $0F, $8F, $10, $9F
|12C903| db $2F, $B0, $5B, $E8, $33, $CE, $7D, $83
|12C90B| db $FF, $01, $7F, $70, $60, $40, $04
|12C912| db $24 ; Repeat byte
|12C913| db $00
|12C914| db $84 ; Copy past
|12C915| dw $019D
|12C917| db $09 ; Raw block
|12C918| db $00, $32, $A0, $BF, $6D, $F2, $2D, $DF
|12C920| db $20, $FF
|12C922| db $22 ; Repeat byte
|12C923| db $00
|12C924| db $00 ; Raw block
|12C925| db $4D
|12C926| db $22 ; Repeat byte
|12C927| db $00
|12C928| db $43 ; Repeat word
|12C929| dw $1FE3
|12C92B| db $07 ; Raw block
|12C92C| db $F3, $0F, $FB, $07, $FD, $0B, $F7, $0C
|12C934| db $43 ; Repeat word
|12C935| dw $0FF3
|12C937| db $24 ; Repeat byte
|12C938| db $01
|12C939| db $05 ; Raw block
|12C93A| db $00, $01, $01, $08, $00, $18
|12C940| db $45 ; Repeat word
|12C941| dw $FE00
|12C943| db $45 ; Repeat word
|12C944| dw $FEE0
|12C946| db $04 ; Raw block
|12C947| db $60, $F7, $E7, $01, $0D
|12C94C| db $22 ; Repeat byte
|12C94D| db $ED
|12C94E| db $06 ; Raw block
|12C94F| db $65, $00, $FF, $C0, $FF, $FF, $7F
|12C956| db $43 ; Repeat word
|12C957| dw $00FF
|12C959| db $45 ; Repeat word
|12C95A| dw $07F8
|12C95C| db $24 ; Repeat byte
|12C95D| db $00
|12C95E| db $02 ; Raw block
|12C95F| db $17, $37, $37
|12C962| db $43 ; Repeat word
|12C963| dw $00FF
|12C965| db $07 ; Raw block
|12C966| db $E3, $1D, $C3, $3D, $C7, $39, $CF, $30
|12C96E| db $43 ; Repeat word
|12C96F| dw $20DF
|12C971| db $07 ; Raw block
|12C972| db $20, $00, $1D, $3D, $39, $30, $26, $2F
|12C97A| db $83 ; Copy past
|12C97B| dw $0214
|12C97D| db $0B ; Raw block
|12C97E| db $F5, $0A, $3F, $C0, $0F, $F0, $83, $7C
|12C986| db $E0, $1F, $F8, $07
|12C98A| db $26 ; Repeat byte
|12C98B| db $00
|12C98C| db $02 ; Raw block
|12C98D| db $80, $EF, $10
|12C990| db $43 ; Repeat word
|12C991| dw $1FE0
|12C993| db $01 ; Raw block
|12C994| db $FF, $00
|12C996| db $44 ; Repeat word
|12C997| dw $0EFF
|12C999| db $0C ; Raw block
|12C99A| db $00, $FF, $00, $D0, $DF, $DF, $00, $0E
|12C9A2| db $6E, $60, $7E, $FF, $00
|12C9A7| db $4D ; Repeat word
|12C9A8| dw $3FC3
|12C9AA| db $00 ; Raw block
|12C9AB| db $00
|12C9AC| db $26 ; Repeat byte
|12C9AD| db $01
|12C9AE| db $17 ; Raw block
|12C9AF| db $3F, $C0, $F3, $00, $E3, $01, $E7, $01
|12C9B7| db $FF, $01, $E7, $19, $E3, $1D, $FF, $00
|12C9BF| db $C0, $0C, $9D, $D9, $C1, $59, $1D, $00
|12C9C7| db $47 ; Repeat word
|12C9C8| dw $A4C3
|12C9CA| db $01 ; Raw block
|12C9CB| db $DB, $BC
|12C9CD| db $43 ; Repeat word
|12C9CE| dw $A4C3
|12C9D0| db $1F ; Raw block
|12C9D1| db $D1, $B2, $99, $98, $98, $99, $81, $99
|12C9D9| db $99, $8C, $DB, $64, $B4, $CA, $F7, $0C
|12C9E1| db $FB, $07, $7C, $03, $EF, $00, $F7, $00
|12C9E9| db $B8, $00, $00, $01, $20, $E0, $F0, $F8
|12C9F1| db $22 ; Repeat byte
|12C9F2| db $FF
|12C9F3| db $84 ; Copy past
|12C9F4| dw $0318
|12C9F6| db $83 ; Copy past
|12C9F7| dw $019C
|12C9F9| db $05 ; Raw block
|12C9FA| db $03, $FC, $FE, $01, $1C, $E4
|12CA00| db $26 ; Repeat byte
|12CA01| db $00
|12CA02| db $1E ; Raw block
|12CA03| db $03, $FB, $01, $0F, $F1, $FD, $03, $3A
|12CA0B| db $C6, $F4, $0C, $E8, $18, $37, $F5, $0C
|12CA13| db $09, $04, $00, $00, $01, $03, $07, $0A
|12CA1B| db $F6, $6E, $FA, $67, $6A, $77, $76
|12CA22| db $43 ; Repeat word
|12CA23| dw $7277
|12CA25| db $0F ; Raw block
|12CA26| db $3B, $39, $1D, $1C, $0E, $0E, $05, $95
|12CA2E| db $89, $8D, $8D, $C6, $E3, $F1, $FD, $B8
|12CA36| db $43 ; Repeat word
|12CA37| dw $682F
|12CA39| db $1B ; Raw block
|12CA3A| db $0F, $48, $8F, $C8, $47, $C8, $0F, $80
|12CA42| db $BF, $90, $02, $90, $90, $B0, $30, $30
|12CA4A| db $70, $60, $FF, $00, $FF, $01, $C2, $03
|12CA52| db $E1, $7E, $FF, $41
|12CA56| db $85 ; Copy past
|12CA57| dw $0484
|12CA59| db $E0, $22 ; EXT Raw block
|12CA5B| db $00, $00, $3C, $00, $00, $3C, $00, $00
|12CA63| db $F8, $07, $E7, $1F, $CC, $3C, $9A, $7B
|12CA6B| db $BC, $7E, $B9, $7D, $93, $7B, $87, $77
|12CA73| db $00, $00, $03, $04, $01, $02, $04, $08
|12CA7B| db $FF, $00, $00
|12CA7E| db $25 ; Repeat byte
|12CA7F| db $FF
|12CA80| db $01 ; Raw block
|12CA81| db $00, $00
|12CA83| db $24 ; Repeat byte
|12CA84| db $FF
|12CA85| db $86 ; Copy past
|12CA86| dw $0421
|12CA88| db $4F ; Repeat word
|12CA89| dw $81FF
|12CA8B| db $28 ; Repeat byte
|12CA8C| db $FF
|12CA8D| db $E4, $2F ; EXT Repeat byte
|12CA8F| db $00
|12CA90| db $07 ; Raw block
|12CA91| db $84, $03, $84, $4B, $87, $78, $84, $7B
|12CA99| db $43 ; Repeat word
|12CA9A| dw $7887
|12CA9C| db $05 ; Raw block
|12CA9D| db $CF, $30, $FF, $00, $78, $30
|12CAA3| db $25 ; Repeat byte
|12CAA4| db $00
|12CAA5| db $07 ; Raw block
|12CAA6| db $04, $F8, $04, $FA, $FC, $03, $04, $FB
|12CAAE| db $43 ; Repeat word
|12CAAF| dw $03FC
|12CAB1| db $05 ; Raw block
|12CAB2| db $FE, $01, $FF, $00, $03, $01
|12CAB8| db $25 ; Repeat byte
|12CAB9| db $00
|12CABA| db $84 ; Copy past
|12CABB| dw $0484
|12CABD| db $06 ; Raw block
|12CABE| db $40, $FD, $06, $FB, $0D, $E4, $09
|12CAC5| db $43 ; Repeat word
|12CAC6| dw $1BF6
|12CAC8| db $00 ; Raw block
|12CAC9| db $3C
|12CACA| db $23 ; Repeat byte
|12CACB| db $00
|12CACC| db $13 ; Raw block
|12CACD| db $12, $00, $00, $8F, $6F, $DF, $20, $E0
|12CAD5| db $1F, $F8, $87, $7F, $A0, $9F, $20, $D2
|12CADD| db $6D, $DF, $6D, $10
|12CAE1| db $23 ; Repeat byte
|12CAE2| db $00
|12CAE3| db $E0, $2E ; EXT Raw block
|12CAE5| db $40, $00, $00, $C8, $B9, $C4, $BC, $E2
|12CAED| db $9E, $F1, $CF, $F8, $E7, $FC, $F3, $FE
|12CAF5| db $F9, $FF, $FC, $86, $83, $81, $C0, $E0
|12CAFD| db $F0, $F8, $FC, $DF, $00, $60, $80, $3F
|12CB05| db $40, $08, $08, $F7, $FF, $88, $F7, $08
|12CB0D| db $F7, $FF, $00, $7F, $3F, $80, $F7
|12CB14| db $23 ; Repeat byte
|12CB15| db $00
|12CB16| db $01 ; Raw block
|12CB17| db $FF, $00
|12CB19| db $49 ; Repeat word
|12CB1A| dw $EF10
|12CB1C| db $43 ; Repeat word
|12CB1D| dw $00FF
|12CB1F| db $01 ; Raw block
|12CB20| db $00, $EF
|12CB22| db $22 ; Repeat byte
|12CB23| db $28
|12CB24| db $00 ; Raw block
|12CB25| db $EF
|12CB26| db $83 ; Copy past
|12CB27| dw $01D1
|12CB29| db $43 ; Repeat word
|12CB2A| dw $F708
|12CB2C| db $01 ; Raw block
|12CB2D| db $0F, $F0
|12CB2F| db $43 ; Repeat word
|12CB30| dw $F70F
|12CB32| db $E0, $25 ; EXT Raw block
|12CB34| db $F8, $00, $FB, $00, $00, $F7, $14, $10
|12CB3C| db $10, $F0, $07, $04, $BC, $FD, $7C, $7D
|12CB44| db $78, $79, $F8, $79, $60, $61, $3B, $01
|12CB4C| db $BF, $E1, $8E, $E2, $02, $82, $86, $86
|12CB54| db $9E, $FE, $1E, $1D, $FF, $00
|12CB5A| db $43 ; Repeat word
|12CB5B| dw $F708
|12CB5D| db $01 ; Raw block
|12CB5E| db $FF, $00
|12CB60| db $43 ; Repeat word
|12CB61| dw $FEFF
|12CB63| db $02 ; Raw block
|12CB64| db $01, $00, $FD
|12CB67| db $83 ; Copy past
|12CB68| dw $05C7
|12CB6A| db $22 ; Repeat byte
|12CB6B| db $00
|12CB6C| db $01 ; Raw block
|12CB6D| db $FE, $02
|12CB6F| db $FF ; End of GFX 21

;===================================================================================================

GFX_22:
|12CB70| db $09 ; Raw block
|12CB71| db $68, $B7, $7D, $B2, $37, $DA, $32, $DF
|12CB79| db $F2, $1F
|12CB7B| db $45 ; Repeat word
|12CB7C| dw $DF2A
|12CB7E| db $27 ; Repeat byte
|12CB7F| db $00
|12CB80| db $0F ; Raw block
|12CB81| db $08, $F7, $FF, $00, $BF, $C0, $78, $FF
|12CB89| db $C7, $3F, $60, $9F, $3F, $FF, $60, $9F
|12CB91| db $27 ; Repeat byte
|12CB92| db $00
|12CB93| db $13 ; Raw block
|12CB94| db $FE, $80, $58, $01, $BD, $83, $1E, $A2
|12CB9C| db $1C, $B8, $1D, $B8, $06, $B8, $9D, $59
|12CBA4| db $7F, $FE, $40, $41
|12CBA8| db $22 ; Repeat byte
|12CBA9| db $43
|12CBAA| db $E0, $42 ; EXT Raw block
|12CBAC| db $22, $50, $D0, $90, $90, $2F, $00, $50
|12CBB4| db $10, $AF, $3F, $7F, $60, $FF, $C0, $FF
|12CBBC| db $80, $2F, $6F, $FF, $EF, $C0, $80, $00
|12CBC4| db $00, $A1, $BE, $C0, $01, $A0, $1E, $FD
|12CBCC| db $0F, $BF, $00, $92, $30, $25, $61, $4B
|12CBD4| db $C3, $40, $FE, $C1, $C0, $C0, $CF, $9E
|12CBDC| db $3C, $8F, $F0, $0E, $77, $8C, $F7, $98
|12CBE4| db $E7, $8C, $F7, $8D, $F6, $8D, $76, $CC
|12CBEC| db $B7, $00, $80
|12CBEF| db $E4, $35 ; EXT Repeat byte
|12CBF1| db $00
|12CBF2| db $45 ; Repeat word
|12CBF3| dw $00FF
|12CBF5| db $45 ; Repeat word
|12CBF6| dw $01FE
|12CBF8| db $06 ; Raw block
|12CBF9| db $FC, $03, $F8, $07, $0C, $01, $03
|12CC00| db $25 ; Repeat byte
|12CC01| db $FF
|12CC02| db $48 ; Repeat word
|12CC03| dw $FF00
|12CC05| db $83 ; Copy past
|12CC06| dw $00CA
|12CC08| db $00 ; Raw block
|12CC09| db $E0
|12CC0A| db $24 ; Repeat byte
|12CC0B| db $1F
|12CC0C| db $E0, $34 ; EXT Raw block
|12CC0E| db $9F, $9F, $3F, $7F, $FF, $00, $FF, $7F
|12CC16| db $FF, $6F, $EF, $56, $FE, $59, $EF, $4D
|12CC1E| db $E5, $47, $F7, $57, $00, $7F, $6F, $46
|12CC26| db $40, $50, $58, $48, $FF, $00, $E0, $DF
|12CC2E| db $DC, $3C, $70, $F0, $E0, $E0, $C0, $C0
|12CC36| db $C2, $C3, $D5, $D7, $00, $C0, $03, $0F
|12CC3E| db $1F, $3F, $3C, $28, $63
|12CC43| db $43 ; Repeat word
|12CC44| dw $FF00
|12CC46| db $00 ; Raw block
|12CC47| db $1F
|12CC48| db $43 ; Repeat word
|12CC49| dw $20E0
|12CC4B| db $01 ; Raw block
|12CC4C| db $E1, $21
|12CC4E| db $43 ; Repeat word
|12CC4F| dw $20E0
|12CC51| db $08 ; Raw block
|12CC52| db $FF, $FF, $E0, $DF, $DF, $DE, $DF, $DF
|12CC5A| db $8E
|12CC5B| db $43 ; Repeat word
|12CC5C| dw $FF00
|12CC5E| db $00 ; Raw block
|12CC5F| db $FF
|12CC60| db $23 ; Repeat byte
|12CC61| db $00
|12CC62| db $01 ; Raw block
|12CC63| db $10, $10
|12CC65| db $23 ; Repeat byte
|12CC66| db $00
|12CC67| db $83 ; Copy past
|12CC68| dw $00D7
|12CC6A| db $03 ; Raw block
|12CC6B| db $FF, $EF, $FF, $FF
|12CC6F| db $37 ; Repeat byte
|12CC70| db $00
|12CC71| db $17 ; Raw block
|12CC72| db $59, $1C, $EC, $0E, $F6, $C7, $3B, $23
|12CC7A| db $1D, $11, $0E, $08, $87, $84, $03, $02
|12CC82| db $E3, $F1, $38, $DC, $EE, $F7, $7B, $FD
|12CC8A| db $83 ; Copy past
|12CC8B| dw $00F0
|12CC8D| db $45 ; Repeat word
|12CC8E| dw $60E0
|12CC90| db $07 ; Raw block
|12CC91| db $B0, $30, $DF, $9F, $70, $C0, $FF, $80
|12CC99| db $22 ; Repeat byte
|12CC9A| db $9F
|12CC9B| db $0A ; Raw block
|12CC9C| db $CF, $60, $3F, $FC, $01, $FB, $79, $FE
|12CCA4| db $7C, $C5, $44
|12CCA7| db $47 ; Repeat word
|12CCA8| dw $42C3
|12CCAA| db $03 ; Raw block
|12CCAB| db $FE, $86, $83, $BB
|12CCAF| db $23 ; Repeat byte
|12CCB0| db $BD
|12CCB1| db $01 ; Raw block
|12CCB2| db $BF, $BE
|12CCB4| db $43 ; Repeat word
|12CCB5| dw $FF00
|12CCB7| db $0A ; Raw block
|12CCB8| db $10, $EF, $FF, $00, $EF, $7F, $C0, $7F
|12CCC0| db $86, $79, $40
|12CCC3| db $26 ; Repeat byte
|12CCC4| db $00
|12CCC5| db $07 ; Raw block
|12CCC6| db $CF, $DF, $E0, $70, $6F, $9F, $3F, $C0
|12CCCE| db $83 ; Copy past
|12CCCF| dw $013A
|12CCD1| db $05 ; Raw block
|12CCD2| db $08, $F7, $0C, $F3, $20, $0F
|12CCD8| db $25 ; Repeat byte
|12CCD9| db $00
|12CCDA| db $05 ; Raw block
|12CCDB| db $97, $86, $2F, $0C, $D7, $D8
|12CCE1| db $49 ; Repeat word
|12CCE2| dw $082F
|12CCE4| db $02 ; Raw block
|12CCE5| db $78, $F0, $20
|12CCE8| db $24 ; Repeat byte
|12CCE9| db $F0
|12CCEA| db $0B ; Raw block
|12CCEB| db $EC, $D7, $7C, $47, $1C, $E7, $BC, $A7
|12CCF3| db $BF, $A4, $BD, $A6
|12CCF7| db $43 ; Repeat word
|12CCF8| dw $A7BC
|12CCFA| db $02 ; Raw block
|12CCFB| db $00, $80, $00
|12CCFE| db $24 ; Repeat byte
|12CCFF| db $40
|12CD00| db $03 ; Raw block
|12CD01| db $8F, $70, $88, $77
|12CD05| db $43 ; Repeat word
|12CD06| dw $708F
|12CD08| db $03 ; Raw block
|12CD09| db $CF, $78, $E6, $3B
|12CD0D| db $43 ; Repeat word
|12CD0E| dw $1CF3
|12CD10| db $0B ; Raw block
|12CD11| db $70, $77, $70, $70, $78, $3B, $1C, $1C
|12CD19| db $E7, $18, $24, $E7
|12CD1D| db $43 ; Repeat word
|12CD1E| dw $18FF
|12CD20| db $85 ; Copy past
|12CD21| dw $0228
|12CD23| db $03 ; Raw block
|12CD24| db $E7, $18, $18, $FF
|12CD28| db $22 ; Repeat byte
|12CD29| db $18
|12CD2A| db $19 ; Raw block
|12CD2B| db $FF, $18, $18, $FF, $00, $0F, $F8, $07
|12CD33| db $FC, $03, $FF, $F8, $0F, $BC, $43, $BF
|12CD3B| db $44, $BB, $44, $00, $F8, $FC, $FF, $0F
|12CD43| db $43, $44
|12CD45| db $44 ; Repeat word
|12CD46| dw $BB44
|12CD48| db $01 ; Raw block
|12CD49| db $FF, $44
|12CD4B| db $43 ; Repeat word
|12CD4C| dw $BB32
|12CD4E| db $00 ; Raw block
|12CD4F| db $FF
|12CD50| db $43 ; Repeat word
|12CD51| dw $BB44
|12CD53| db $23 ; Repeat byte
|12CD54| db $44
|12CD55| db $01 ; Raw block
|12CD56| db $FF, $FF
|12CD58| db $22 ; Repeat byte
|12CD59| db $44
|12CD5A| db $03 ; Raw block
|12CD5B| db $E7, $57, $E5, $57
|12CD5F| db $43 ; Repeat word
|12CD60| dw $5FED
|12CD62| db $0B ; Raw block
|12CD63| db $FD, $4F, $F5, $4F, $F8, $47, $E4, $5B
|12CD6B| db $48, $48, $40, $40
|12CD6F| db $22 ; Repeat byte
|12CD70| db $60
|12CD71| db $E0, $48 ; EXT Raw block
|12CD73| db $40, $D2, $D6, $F3, $F7, $E5, $F7, $EA
|12CD7B| db $FB, $80, $FC, $45, $C7, $BA, $83, $ED
|12CD83| db $A9, $29, $08, $08, $04, $03, $38, $44
|12CD8B| db $12, $AC, $1D, $9A, $39, $B6, $73, $EF
|12CD93| db $66, $BF, $0C, $9D, $18, $BF, $00, $9C
|12CD9B| db $9C, $62, $46, $0C, $18, $72, $66, $40
|12CDA3| db $63, $B1, $9F, $E1, $BE, $C5, $B2, $5A
|12CDAB| db $25, $C5, $3B, $7E, $3A, $FF, $00, $71
|12CDB3| db $71, $5F, $3E, $3E, $BC, $B8, $B9, $00
|12CDBB| db $8E
|12CDBC| db $37 ; Repeat byte
|12CDBD| db $00
|12CDBE| db $E0, $28 ; EXT Raw block
|12CDC0| db $8C, $0F, $84, $77, $50, $DB, $98, $9F
|12CDC8| db $FC, $0F, $0C, $07, $84, $73, $92, $99
|12CDD0| db $70, $08, $24, $60, $F0, $F8, $0C, $66
|12CDD8| db $CF, $20, $A7, $5F, $E9, $56, $ED, $72
|12CDE0| db $95, $5A, $AF, $6F, $50, $B0, $67, $BF
|12CDE8| db $1F
|12CDE9| db $22 ; Repeat byte
|12CDEA| db $00
|12CDEB| db $18 ; Raw block
|12CDEC| db $20, $10, $0F, $00, $FC, $03, $B3, $7C
|12CDF4| db $74, $97, $8A, $FB, $32, $4B, $5D, $65
|12CDFC| db $4D, $7D, $7F, $45, $00, $00, $08, $04
|12CE04| db $84
|12CE05| db $22 ; Repeat byte
|12CE06| db $82
|12CE07| db $04 ; Raw block
|12CE08| db $FF, $00, $FC, $00, $87
|12CE0D| db $44 ; Repeat word
|12CE0E| dw $C77B
|12CE10| db $07 ; Raw block
|12CE11| db $FC, $7B, $FE, $7A, $03, $FD, $00, $03
|12CE19| db $23 ; Repeat byte
|12CE1A| db $00
|12CE1B| db $05 ; Raw block
|12CE1C| db $01, $00, $FF, $00, $7F, $00
|12CE22| db $45 ; Repeat word
|12CE23| dw $80FF
|12CE25| db $07 ; Raw block
|12CE26| db $3F, $C0, $5F, $60, $B0, $AF, $00, $80
|12CE2E| db $23 ; Repeat byte
|12CE2F| db $00
|12CE30| db $04 ; Raw block
|12CE31| db $80, $40, $FE, $01, $DE
|12CE36| db $44 ; Repeat word
|12CE37| dw $C63F
|12CE39| db $03 ; Raw block
|12CE3A| db $FE, $01, $BB, $3E
|12CE3E| db $43 ; Repeat word
|12CE3F| dw $3DB9
|12CE41| db $24 ; Repeat byte
|12CE42| db $00
|12CE43| db $08 ; Raw block
|12CE44| db $40, $42, $42, $FA, $06, $FD, $03, $FF
|12CE4C| db $00
|12CE4D| db $49 ; Repeat word
|12CE4E| dw $01FE
|12CE50| db $00 ; Raw block
|12CE51| db $01
|12CE52| db $26 ; Repeat byte
|12CE53| db $00
|12CE54| db $09 ; Raw block
|12CE55| db $FF, $00, $C0, $3F, $80, $73, $80, $7F
|12CE5D| db $8F, $7F
|12CE5F| db $45 ; Repeat word
|12CE60| dw $709F
|12CE62| db $01 ; Raw block
|12CE63| db $00, $3F
|12CE65| db $22 ; Repeat byte
|12CE66| db $7F
|12CE67| db $22 ; Repeat byte
|12CE68| db $70
|12CE69| db $06 ; Raw block
|12CE6A| db $FF, $00, $00, $F7, $20, $7B, $20
|12CE71| db $23 ; Repeat byte
|12CE72| db $FF
|12CE73| db $00 ; Raw block
|12CE74| db $00
|12CE75| db $43 ; Repeat word
|12CE76| dw $18E7
|12CE78| db $00 ; Raw block
|12CE79| db $00
|12CE7A| db $23 ; Repeat byte
|12CE7B| db $FF
|12CE7C| db $00 ; Raw block
|12CE7D| db $00
|12CE7E| db $83 ; Copy past
|12CE7F| dw $023E
|12CE81| db $05 ; Raw block
|12CE82| db $C0, $3F, $80, $7F, $87, $7F
|12CE88| db $44 ; Repeat word
|12CE89| dw $588F
|12CE8B| db $02 ; Raw block
|12CE8C| db $78, $8F, $78
|12CE8F| db $83 ; Copy past
|12CE90| dw $03A0
|12CE92| db $23 ; Repeat byte
|12CE93| db $78
|12CE94| db $83 ; Copy past
|12CE95| dw $03CA
|12CE97| db $05 ; Raw block
|12CE98| db $BF, $78, $8C, $7B, $8C, $3B
|12CE9E| db $84 ; Copy past
|12CE9F| dw $03CA
|12CEA1| db $23 ; Repeat byte
|12CEA2| db $78
|12CEA3| db $01 ; Raw block
|12CEA4| db $7B, $7B
|12CEA6| db $22 ; Repeat byte
|12CEA7| db $78
|12CEA8| db $01 ; Raw block
|12CEA9| db $EF, $58
|12CEAB| db $43 ; Repeat word
|12CEAC| dw $5AEC
|12CEAE| db $E0, $26 ; EXT Raw block
|12CEB0| db $EB, $5D, $EF, $5D, $F7, $4E, $FB, $57
|12CEB8| db $FD, $5A, $40, $41, $41, $40, $40, $60
|12CEC0| db $40, $40, $FE, $3C, $5F, $3D, $BE, $82
|12CEC8| db $CF, $4C, $50, $B0, $BF, $C0, $FB, $67
|12CED0| db $59, $B7, $01, $80, $41, $30, $0F
|12CED7| db $22 ; Repeat byte
|12CED8| db $00
|12CED9| db $E0, $2F ; EXT Raw block
|12CEDB| db $C3, $3F, $9A, $7E, $B8, $7A, $F4, $73
|12CEE3| db $C9, $47, $83, $3F, $A6, $6E, $D4, $4D
|12CEEB| db $00, $01, $05, $0C, $38, $40, $11, $32
|12CEF3| db $03, $4F, $06, $7F, $3E, $FF, $CD, $CF
|12CEFB| db $83, $BF, $2E, $60, $5E, $C0, $BF, $8E
|12CF03| db $B0, $80, $00, $30, $40, $9F, $31, $6E
|12CF0B| db $37 ; Repeat byte
|12CF0C| db $00
|12CF0D| db $E0, $26 ; EXT Raw block
|12CF0F| db $4E, $DB, $8B, $9D, $89, $9E, $84, $97
|12CF17| db $06, $1F, $4B, $3F, $9D, $7F, $AC, $6F
|12CF1F| db $20, $60, $60, $68, $E0, $C0, $80, $10
|12CF27| db $FA, $2F, $FA, $37, $9F, $78, $AE, $5E
|12CF2F| db $B3, $6F, $BF, $70, $80, $3F, $FF
|12CF36| db $22 ; Repeat byte
|12CF37| db $00
|12CF38| db $19 ; Raw block
|12CF39| db $40, $41, $60, $70, $7F, $00, $FF, $00
|12CF41| db $C1, $3C, $DD, $EE, $ED, $76, $F5, $BA
|12CF49| db $35, $DA, $FD, $DA, $2D, $CA, $00, $3E
|12CF51| db $0E, $06
|12CF53| db $22 ; Repeat byte
|12CF54| db $02
|12CF55| db $02 ; Raw block
|12CF56| db $12, $FF, $FF
|12CF59| db $22 ; Repeat byte
|12CF5A| db $00
|12CF5B| db $84 ; Copy past
|12CF5C| dw $0148
|12CF5E| db $22 ; Repeat byte
|12CF5F| db $00
|12CF60| db $83 ; Copy past
|12CF61| dw $013C
|12CF63| db $00 ; Raw block
|12CF64| db $FF
|12CF65| db $22 ; Repeat byte
|12CF66| db $00
|12CF67| db $13 ; Raw block
|12CF68| db $FF, $00, $00, $7E, $81, $E7, $7E, $91
|12CF70| db $7E, $B1, $7E, $85, $7E, $83, $3E, $C3
|12CF78| db $5A, $7E, $81, $00
|12CF7C| db $25 ; Repeat byte
|12CF7D| db $7E
|12CF7E| db $83 ; Copy past
|12CF7F| dw $038F
|12CF81| db $02 ; Raw block
|12CF82| db $7F, $9F, $7F
|12CF85| db $43 ; Repeat word
|12CF86| dw $60BF
|12CF88| db $01 ; Raw block
|12CF89| db $B0, $7F
|12CF8B| db $43 ; Repeat word
|12CF8C| dw $60BF
|12CF8E| db $06 ; Raw block
|12CF8F| db $00, $7F, $7F, $60, $60, $7F, $60
|12CF96| db $44 ; Repeat word
|12CF97| dw $BF60
|12CF99| db $01 ; Raw block
|12CF9A| db $B0, $7F
|12CF9C| db $43 ; Repeat word
|12CF9D| dw $60BF
|12CF9F| db $05 ; Raw block
|12CFA0| db $9F, $7F, $C0, $7F, $FF, $00
|12CFA6| db $84 ; Copy past
|12CFA7| dw $04F3
|12CFA9| db $09 ; Raw block
|12CFAA| db $7F, $7F, $00, $28, $10, $EF, $10, $FF
|12CFB2| db $EF, $07
|12CFB4| db $83 ; Copy past
|12CFB5| dw $01B5
|12CFB7| db $03 ; Raw block
|12CFB8| db $D7, $EF, $10, $28
|12CFBC| db $22 ; Repeat byte
|12CFBD| db $10
|12CFBE| db $14 ; Raw block
|12CFBF| db $EF, $FF, $EF, $D7, $10, $10, $14, $08
|12CFC7| db $F7, $08, $FF, $EB, $1C, $F7, $68, $FF
|12CFCF| db $FF, $F7, $F7, $08, $14
|12CFD4| db $22 ; Repeat byte
|12CFD5| db $08
|12CFD6| db $05 ; Raw block
|12CFD7| db $EB, $F7, $FF, $F7, $08, $08
|12CFDD| db $84 ; Copy past
|12CFDE| dw $0510
|12CFE0| db $03 ; Raw block
|12CFE1| db $D7, $10, $EF, $07
|12CFE5| db $83 ; Copy past
|12CFE6| dw $014B
|12CFE8| db $01 ; Raw block
|12CFE9| db $10, $28
|12CFEB| db $22 ; Repeat byte
|12CFEC| db $10
|12CFED| db $06 ; Raw block
|12CFEE| db $D7, $EF, $FF, $EF, $10, $10, $14
|12CFF5| db $43 ; Repeat word
|12CFF6| dw $FF08
|12CFF8| db $09 ; Raw block
|12CFF9| db $F6, $23, $FE, $81, $FE, $FF, $EA, $F7
|12D001| db $08, $14
|12D003| db $22 ; Repeat byte
|12D004| db $08
|12D005| db $19 ; Raw block
|12D006| db $F6, $FE, $FE, $EA, $08, $08, $EF, $5D
|12D00E| db $F7, $4D, $FA, $65, $FF, $70, $FF, $7C
|12D016| db $FF, $7F, $80, $7F, $FF, $00, $40, $60
|12D01E| db $70, $78
|12D020| db $22 ; Repeat byte
|12D021| db $7F
|12D022| db $E0, $2A ; EXT Raw block
|12D024| db $00, $EA, $D7, $3B, $27, $D9, $D7, $7A
|12D02C| db $F7, $FB, $07, $F8, $F6, $04, $FB, $FF
|12D034| db $00, $00, $C0, $20, $00, $00, $F1, $F8
|12D03C| db $00, $FF, $00, $80, $00, $C0, $7F, $CF
|12D044| db $70, $D7, $6F, $AC, $5C, $D2, $33, $C9
|12D04C| db $2F, $00, $7F
|12D04F| db $22 ; Repeat byte
|12D050| db $00
|12D051| db $03 ; Raw block
|12D052| db $03, $0C, $10, $FF
|12D056| db $22 ; Repeat byte
|12D057| db $00
|12D058| db $13 ; Raw block
|12D059| db $07, $F8, $FA, $06, $C4, $FC, $00, $71
|12D061| db $30, $FB, $81, $CF, $00, $FF, $00, $01
|12D069| db $03, $8E, $04, $30
|12D06D| db $37 ; Repeat byte
|12D06E| db $00
|12D06F| db $17 ; Raw block
|12D070| db $FF, $00, $03, $00, $F9, $00, $04, $78
|12D078| db $3A, $FC, $56, $F4, $AB, $EC, $55, $DE
|12D080| db $00, $FC, $06, $83, $01, $09, $10, $20
|12D088| db $FF ; End of GFX 22

;===================================================================================================

GFX_23:
|12D089| db $43 ; Repeat word
|12D08A| dw $00FF
|12D08C| db $12 ; Raw block
|12D08D| db $81, $81, $7F, $71, $1A, $11, $CF, $C1
|12D095| db $04, $FB, $FF, $00, $FF, $FF, $7E, $80
|12D09D| db $E4, $30, $00
|12D0A0| db $83 ; Copy past
|12D0A1| dw $000D
|12D0A3| db $22 ; Repeat byte
|12D0A4| db $00
|12D0A5| db $09 ; Raw block
|12D0A6| db $38, $00, $6C, $28, $54, $00, $6C, $BB
|12D0AE| db $7F, $10
|12D0B0| db $22 ; Repeat byte
|12D0B1| db $FF
|12D0B2| db $04 ; Raw block
|12D0B3| db $C7, $93, $AB, $10, $83
|12D0B8| db $43 ; Repeat word
|12D0B9| dw $00FF
|12D0BB| db $03 ; Raw block
|12D0BC| db $31, $31, $EC, $EC
|12D0C0| db $22 ; Repeat byte
|12D0C1| db $FF
|12D0C2| db $0C ; Raw block
|12D0C3| db $00, $FF, $00, $3F, $3F, $FF, $FF, $CE
|12D0CB| db $13, $00, $FF, $FF, $C0
|12D0D0| db $43 ; Repeat word
|12D0D1| dw $00FF
|12D0D3| db $03 ; Raw block
|12D0D4| db $86, $86, $41, $41
|12D0D8| db $22 ; Repeat byte
|12D0D9| db $FF
|12D0DA| db $02 ; Raw block
|12D0DB| db $00, $FF, $00
|12D0DE| db $23 ; Repeat byte
|12D0DF| db $FF
|12D0E0| db $05 ; Raw block
|12D0E1| db $79, $BE, $00, $FF, $FF, $00
|12D0E7| db $43 ; Repeat word
|12D0E8| dw $18DF
|12D0EA| db $03 ; Raw block
|12D0EB| db $FF, $38, $EF, $28
|12D0EF| db $43 ; Repeat word
|12D0F0| dw $18DF
|12D0F2| db $15 ; Raw block
|12D0F3| db $CF, $08, $EF, $28, $E7, $E7, $C7, $D7
|12D0FB| db $E7, $E7, $F7, $D7, $8C, $F7, $4C, $B7
|12D103| db $AC, $D7, $5C, $67, $BC, $A7
|12D109| db $45 ; Repeat word
|12D10A| dw $57CC
|12D10C| db $22 ; Repeat byte
|12D10D| db $00
|12D10E| db $01 ; Raw block
|12D10F| db $80, $40
|12D111| db $22 ; Repeat byte
|12D112| db $20
|12D113| db $01 ; Raw block
|12D114| db $FF, $7F
|12D116| db $4D ; Repeat word
|12D117| dw $40FF
|12D119| db $27 ; Repeat byte
|12D11A| db $7F
|12D11B| db $22 ; Repeat byte
|12D11C| db $FF
|12D11D| db $4C ; Repeat word
|12D11E| dw $FF00
|12D120| db $27 ; Repeat byte
|12D121| db $FF
|12D122| db $E0, $2A ; EXT Raw block
|12D124| db $7F, $80, $D0, $37, $A0, $7F, $95, $7D
|12D12C| db $82, $73, $C1, $3B, $C0, $3A, $8A, $7B
|12D134| db $00, $0F, $18, $22, $2C, $14, $15, $24
|12D13C| db $94, $7C, $D8, $3F, $A0, $5B, $9F, $64
|12D144| db $84, $7B, $CD, $3B, $E4, $1B, $7F, $80
|12D14C| db $23, $20, $1F
|12D14F| db $24 ; Repeat byte
|12D150| db $00
|12D151| db $1D ; Raw block
|12D152| db $C0, $C0, $9F, $9F, $BE, $BE, $BD, $BD
|12D15A| db $F9, $F9, $F1, $F0, $F9, $F8, $BD, $3C
|12D162| db $7F, $E0, $C1, $C2, $87, $AE, $A6, $42
|12D16A| db $40, $40, $FF, $FF, $00, $00
|12D170| db $29 ; Repeat byte
|12D171| db $FF
|12D172| db $03 ; Raw block
|12D173| db $BF, $40, $FF, $00
|12D177| db $24 ; Repeat byte
|12D178| db $FF
|12D179| db $1C ; Raw block
|12D17A| db $F0, $FD, $C0, $FA, $91, $F1, $26, $F5
|12D182| db $4A, $F5, $3A, $F5, $4A, $F5, $4E, $F0
|12D18A| db $C3, $8C, $19, $35, $05, $35, $31, $9F
|12D192| db $50, $FD, $40, $FA, $11
|12D197| db $89 ; Copy past
|12D198| dw $0126
|12D19A| db $02 ; Raw block
|12D19B| db $20, $03, $0C
|12D19E| db $84 ; Copy past
|12D19F| dw $0133
|12D1A1| db $02 ; Raw block
|12D1A2| db $FF, $00, $DF
|12D1A5| db $4A ; Repeat word
|12D1A6| dw $C01F
|12D1A8| db $01 ; Raw block
|12D1A9| db $FF, $00
|12D1AB| db $27 ; Repeat byte
|12D1AC| db $7F
|12D1AD| db $02 ; Raw block
|12D1AE| db $FF, $00, $FF
|12D1B1| db $4A ; Repeat word
|12D1B2| dw $00FF
|12D1B4| db $01 ; Raw block
|12D1B5| db $FF, $00
|12D1B7| db $28 ; Repeat byte
|12D1B8| db $FF
|12D1B9| db $0A ; Raw block
|12D1BA| db $7F, $FF, $00, $7F, $80, $5F, $A0, $E0
|12D1C2| db $3F, $7F, $BF
|12D1C5| db $43 ; Repeat word
|12D1C6| dw $807F
|12D1C8| db $25 ; Repeat byte
|12D1C9| db $00
|12D1CA| db $01 ; Raw block
|12D1CB| db $3F, $00
|12D1CD| db $22 ; Repeat byte
|12D1CE| db $FF
|12D1CF| db $0B ; Raw block
|12D1D0| db $00, $9C, $63, $A2, $7F, $D5, $B6, $FF
|12D1D8| db $C1, $FF, $00, $FF
|12D1DC| db $24 ; Repeat byte
|12D1DD| db $00
|12D1DE| db $0E ; Raw block
|12D1DF| db $88, $00, $FF, $00, $AB, $EC, $57, $B7
|12D1E7| db $28, $D8, $18, $E7, $FF, $00, $FF
|12D1EE| db $44 ; Repeat word
|12D1EF| dw $00FF
|12D1F1| db $02 ; Raw block
|12D1F2| db $10, $08, $07
|12D1F5| db $24 ; Repeat byte
|12D1F6| db $00
|12D1F7| db $05 ; Raw block
|12D1F8| db $FF, $A2, $5D, $FF, $A2, $A2
|12D1FE| db $84 ; Copy past
|12D1FF| dw $0169
|12D201| db $44 ; Repeat word
|12D202| dw $807F
|12D204| db $02 ; Raw block
|12D205| db $00, $00, $5D
|12D208| db $24 ; Repeat byte
|12D209| db $00
|12D20A| db $83 ; Copy past
|12D20B| dw $0066
|12D20D| db $45 ; Repeat word
|12D20E| dw $08CF
|12D210| db $43 ; Repeat word
|12D211| dw $28EF
|12D213| db $03 ; Raw block
|12D214| db $DF, $18, $D7, $E7
|12D218| db $22 ; Repeat byte
|12D219| db $F7
|12D21A| db $08 ; Raw block
|12D21B| db $D7, $D7, $E7, $AF, $F0, $CC, $57, $AC
|12D223| db $F7
|12D224| db $45 ; Repeat word
|12D225| dw $57CC
|12D227| db $83 ; Copy past
|12D228| dw $01FC
|12D22A| db $02 ; Raw block
|12D22B| db $00, $20, $00
|12D22E| db $22 ; Repeat byte
|12D22F| db $20
|12D230| db $01 ; Raw block
|12D231| db $00, $20
|12D233| db $4A ; Repeat word
|12D234| dw $40FF
|12D236| db $00 ; Raw block
|12D237| db $7F
|12D238| db $43 ; Repeat word
|12D239| dw $00FF
|12D23B| db $26 ; Repeat byte
|12D23C| db $7F
|12D23D| db $4A ; Repeat word
|12D23E| dw $FF00
|12D240| db $22 ; Repeat byte
|12D241| db $FF
|12D242| db $02 ; Raw block
|12D243| db $00, $FF, $00
|12D246| db $26 ; Repeat byte
|12D247| db $FF
|12D248| db $04 ; Raw block
|12D249| db $00, $1D, $17, $0D, $F7
|12D24E| db $43 ; Repeat word
|12D24F| dw $FB06
|12D251| db $08 ; Raw block
|12D252| db $FE, $03, $FA, $FC, $03, $FC, $00, $FF
|12D25A| db $E0
|12D25B| db $23 ; Repeat byte
|12D25C| db $00
|12D25D| db $0C ; Raw block
|12D25E| db $01, $00, $00, $C6, $48, $DC, $05, $EC
|12D266| db $80, $F7, $80, $00, $7F
|12D26B| db $22 ; Repeat byte
|12D26C| db $FF
|12D26D| db $07 ; Raw block
|12D26E| db $00, $00, $FF, $39, $23, $13, $08, $80
|12D276| db $22 ; Repeat byte
|12D277| db $00
|12D278| db $01 ; Raw block
|12D279| db $9D, $1C
|12D27B| db $43 ; Repeat word
|12D27C| dw $3CBD
|12D27E| db $03 ; Raw block
|12D27F| db $99, $18, $E7, $00
|12D283| db $45 ; Repeat word
|12D284| dw $7EFF
|12D286| db $1F ; Raw block
|12D287| db $62, $4E, $42, $66, $7E, $3C, $3C, $3E
|12D28F| db $FF, $55, $FF, $00, $FF, $F0, $FF, $60
|12D297| db $FD, $42, $FB, $FF, $04, $FB, $FF, $40
|12D29F| db $55, $00, $F0, $60, $43, $04, $04, $44
|12D2A7| db $37 ; Repeat byte
|12D2A8| db $00
|12D2A9| db $E0, $21 ; EXT Raw block
|12D2AB| db $F9, $67, $FF, $78, $BF, $3C, $BF, $3F
|12D2B3| db $9F, $5F, $C7, $67, $E0, $78, $F0, $7F
|12D2BB| db $18, $07, $47, $48, $28, $18, $07, $00
|12D2C3| db $80, $00, $FF, $7F, $BF, $70, $9F, $56
|12D2CB| db $99, $56
|12D2CD| db $45 ; Repeat word
|12D2CE| dw $16D9
|12D2D0| db $02 ; Raw block
|12D2D1| db $7F, $00, $00
|12D2D4| db $24 ; Repeat byte
|12D2D5| db $26
|12D2D6| db $83 ; Copy past
|12D2D7| dw $010C
|12D2D9| db $05 ; Raw block
|12D2DA| db $7F, $80, $5F, $36, $F9, $B2
|12D2E0| db $45 ; Repeat word
|12D2E1| dw $B6F9
|12D2E3| db $03 ; Raw block
|12D2E4| db $FF, $00, $00, $B6
|12D2E8| db $23 ; Repeat byte
|12D2E9| db $36
|12D2EA| db $01 ; Raw block
|12D2EB| db $84, $7B
|12D2ED| db $43 ; Repeat word
|12D2EE| dw $00C4
|12D2F0| db $E0, $39 ; EXT Raw block
|12D2F2| db $CE, $00, $DF, $00, $DB, $00, $C3, $03
|12D2FA| db $FF, $00, $00, $7B, $7B, $75, $60, $64
|12D302| db $7C, $7F, $EE, $7D, $D6, $54, $82, $54
|12D30A| db $BA, $7C, $C6, $BA, $7C, $44, $00, $00
|12D312| db $FF, $00, $44, $29, $39, $01, $01, $83
|12D31A| db $FF, $FF, $38, $07, $3F, $0D, $3F, $18
|12D322| db $1F, $30, $2F, $38, $37, $2D, $5A, $47
|12D32A| db $0F, $D5
|12D32C| db $25 ; Repeat byte
|12D32D| db $C0
|12D32E| db $11 ; Raw block
|12D32F| db $A0, $20, $E3, $1C, $FF, $B6, $FF, $E3
|12D337| db $FF, $41, $BE, $E3, $5D, $B6, $EB, $1C
|12D33F| db $FF, $14
|12D341| db $27 ; Repeat byte
|12D342| db $00
|12D343| db $12 ; Raw block
|12D344| db $02, $02, $01, $01, $EC, $9C, $F4, $BB
|12D34C| db $BB, $EC, $BD, $C7, $FF, $82, $BD, $C7
|12D354| db $FD, $FE, $03
|12D357| db $24 ; Repeat byte
|12D358| db $00
|12D359| db $03 ; Raw block
|12D35A| db $BB, $EC, $F7, $B8
|12D35E| db $87 ; Copy past
|12D35F| dw $0368
|12D361| db $83 ; Copy past
|12D362| dw $0378
|12D364| db $E4, $37 ; EXT Repeat byte
|12D366| db $00
|12D367| db $00 ; Raw block
|12D368| db $10
|12D369| db $43 ; Repeat word
|12D36A| dw $1CF0
|12D36C| db $02 ; Raw block
|12D36D| db $EB, $18, $EC
|12D370| db $43 ; Repeat word
|12D371| dw $EE1B
|12D373| db $07 ; Raw block
|12D374| db $0D, $F7, $0D, $17, $EF, $EF, $E0, $E3
|12D37C| db $23 ; Repeat byte
|12D37D| db $E0
|12D37E| db $24 ; Repeat byte
|12D37F| db $00
|12D380| db $22 ; Repeat byte
|12D381| db $FF
|12D382| db $07 ; Raw block
|12D383| db $FD, $1D, $FC, $3C, $FD, $3D, $D7, $59
|12D38B| db $83 ; Copy past
|12D38C| dw $010A
|12D38E| db $03 ; Raw block
|12D38F| db $1F, $3F, $3F, $38
|12D393| db $44 ; Repeat word
|12D394| dw $7EFF
|12D396| db $00 ; Raw block
|12D397| db $00
|12D398| db $46 ; Repeat word
|12D399| dw $3EFF
|12D39B| db $1A ; Raw block
|12D39C| db $00, $FF, $3E, $7E, $7E, $00, $00, $3E
|12D3A4| db $3E, $00, $00, $F8, $0B, $F0, $1B, $E3
|12D3AC| db $38, $EB, $30, $DB, $00, $CB, $10, $E3
|12D3B4| db $29, $FD, $3B
|12D3B7| db $23 ; Repeat byte
|12D3B8| db $04
|12D3B9| db $E0, $3D ; EXT Raw block
|12D3BB| db $24, $24, $35, $34, $00, $FF, $E7, $F8
|12D3C3| db $98, $E0, $70, $D3, $E7, $A8, $4D, $12
|12D3CB| db $9F, $20, $9D, $22, $00, $00, $07, $0C
|12D3D3| db $10, $A0, $41, $49, $97, $5F, $C7, $67
|12D3DB| db $B0, $68, $DC, $33, $EB, $37, $78, $97
|12D3E3| db $3F, $CB, $1F, $E0, $20, $18, $07, $00
|12D3EB| db $20, $10, $0B, $00, $DF, $10, $C0, $00
|12D3F3| db $E0, $2F, $ED, $22, $ED, $20
|12D3F9| db $44 ; Repeat word
|12D3FA| dw $22EF
|12D3FC| db $05 ; Raw block
|12D3FD| db $20, $20, $3F, $10, $10, $12
|12D403| db $22 ; Repeat byte
|12D404| db $10
|12D405| db $00 ; Raw block
|12D406| db $FF
|12D407| db $23 ; Repeat byte
|12D408| db $00
|12D409| db $04 ; Raw block
|12D40A| db $FF, $4F, $B6, $59, $12
|12D40F| db $43 ; Repeat word
|12D410| dw $3679
|12D412| db $83 ; Copy past
|12D413| dw $010B
|12D415| db $0C ; Raw block
|12D416| db $00, $06, $A6, $86, $86, $00, $FF, $00
|12D41E| db $EF, $10, $F0, $DF, $E0
|12D423| db $44 ; Repeat word
|12D424| dw $FFC0
|12D426| db $22 ; Repeat byte
|12D427| db $FF
|12D428| db $22 ; Repeat byte
|12D429| db $00
|12D42A| db $0C ; Raw block
|12D42B| db $C0, $DF, $C0, $C0, $00, $00, $BB, $44
|12D433| db $BB, $7D, $FF, $83, $00
|12D438| db $44 ; Repeat word
|12D439| dw $FF00
|12D43B| db $22 ; Repeat byte
|12D43C| db $FF
|12D43D| db $04 ; Raw block
|12D43E| db $00, $00, $01, $83, $FF
|12D443| db $23 ; Repeat byte
|12D444| db $00
|12D445| db $01 ; Raw block
|12D446| db $FF, $FF
|12D448| db $22 ; Repeat byte
|12D449| db $00
|12D44A| db $84 ; Copy past
|12D44B| dw $0175
|12D44D| db $22 ; Repeat byte
|12D44E| db $00
|12D44F| db $84 ; Copy past
|12D450| dw $010A
|12D452| db $22 ; Repeat byte
|12D453| db $00
|12D454| db $00 ; Raw block
|12D455| db $FF
|12D456| db $22 ; Repeat byte
|12D457| db $00
|12D458| db $01 ; Raw block
|12D459| db $FF, $7E
|12D45B| db $48 ; Repeat word
|12D45C| dw $42FF
|12D45E| db $83 ; Copy past
|12D45F| dw $03F3
|12D461| db $E4, $37 ; EXT Repeat byte
|12D463| db $00
|12D464| db $00 ; Raw block
|12D465| db $C1
|12D466| db $43 ; Repeat word
|12D467| dw $FF7E
|12D469| db $01 ; Raw block
|12D46A| db $00, $C0
|12D46C| db $43 ; Repeat word
|12D46D| dw $FF7F
|12D46F| db $83 ; Copy past
|12D470| dw $0279
|12D472| db $09 ; Raw block
|12D473| db $00, $7E, $7E, $00, $7F, $7F, $00, $7E
|12D47B| db $00, $01
|12D47D| db $43 ; Repeat word
|12D47E| dw $FFFE
|12D480| db $01 ; Raw block
|12D481| db $00, $10
|12D483| db $43 ; Repeat word
|12D484| dw $FFEF
|12D486| db $00 ; Raw block
|12D487| db $00
|12D488| db $83 ; Copy past
|12D489| dw $052A
|12D48B| db $0D ; Raw block
|12D48C| db $FE, $FE, $00, $EF, $EF, $00, $FE, $00
|12D494| db $7F, $80, $BF, $00, $FC, $03
|12D49A| db $43 ; Repeat word
|12D49B| dw $02FD
|12D49D| db $0A ; Raw block
|12D49E| db $FF, $00, $D4, $2B, $FF, $00, $00, $7C
|12D4A6| db $53, $52, $52
|12D4A9| db $22 ; Repeat byte
|12D4AA| db $54
|12D4AB| db $01 ; Raw block
|12D4AC| db $FF, $00
|12D4AE| db $44 ; Repeat word
|12D4AF| dw $54FF
|12D4B1| db $00 ; Raw block
|12D4B2| db $57
|12D4B3| db $44 ; Repeat word
|12D4B4| dw $54FF
|12D4B6| db $03 ; Raw block
|12D4B7| db $7F, $7F, $80, $7F
|12D4BB| db $26 ; Repeat byte
|12D4BC| db $00
|12D4BD| db $0B ; Raw block
|12D4BE| db $FF, $3E, $FF, $1E, $FF, $80, $FF, $9E
|12D4C6| db $FF, $DE, $FF, $E0
|12D4CA| db $22 ; Repeat byte
|12D4CB| db $FF
|12D4CC| db $14 ; Raw block
|12D4CD| db $00, $3E, $1E, $80, $80, $DE, $E0, $00
|12D4D5| db $00, $FD, $5F, $FF, $4F, $FF, $63, $FF
|12D4DD| db $74, $BF, $36, $FF, $00
|12D4E2| db $22 ; Repeat byte
|12D4E3| db $FF
|12D4E4| db $05 ; Raw block
|12D4E5| db $00, $58, $4F, $63, $34, $40
|12D4EB| db $22 ; Repeat byte
|12D4EC| db $00
|12D4ED| db $E0, $2C ; EXT Raw block
|12D4EF| db $9D, $22, $96, $49, $8F, $50, $C3, $A4
|12D4F7| db $48, $B8, $E6, $DE, $F8, $E7, $17, $F8
|12D4FF| db $41, $20, $22, $18, $0F, $07, $00, $00
|12D507| db $FD, $C3, $DA, $BD, $BD, $66, $99, $66
|12D50F| db $A5, $7E, $42, $BD, $BD, $C3, $02, $FF
|12D517| db $00, $18, $24, $24, $3C
|12D51C| db $22 ; Repeat byte
|12D51D| db $00
|12D51E| db $0E ; Raw block
|12D51F| db $FF, $40, $E0, $3F, $BE, $41, $82, $7D
|12D527| db $C2, $7D, $BE, $7D, $C0, $3F, $FF
|12D52E| db $28 ; Repeat byte
|12D52F| db $00
|12D530| db $83 ; Copy past
|12D531| dw $010B
|12D533| db $01 ; Raw block
|12D534| db $7E, $81
|12D536| db $43 ; Repeat word
|12D537| dw $BD42
|12D539| db $04 ; Raw block
|12D53A| db $7E, $BD, $00, $FF, $FF
|12D53F| db $28 ; Repeat byte
|12D540| db $00
|12D541| db $FF ; End of GFX 23

;===================================================================================================

GFX_24:
|12D542| db $0F ; Raw block
|12D543| db $CF, $3F, $E6, $5F, $B0, $6F, $9F, $70
|12D54B| db $88, $78, $47, $BF, $66, $9F, $73, $AF
|12D553| db $23 ; Repeat byte
|12D554| db $00
|12D555| db $00 ; Raw block
|12D556| db $07
|12D557| db $22 ; Repeat byte
|12D558| db $00
|12D559| db $0F ; Raw block
|12D55A| db $F8, $07, $C7, $78, $63, $BD, $31, $DE
|12D562| db $98, $EF, $D6, $E7, $D7, $E7, $95, $E7
|12D56A| db $24 ; Repeat byte
|12D56B| db $00
|12D56C| db $22 ; Repeat byte
|12D56D| db $08
|12D56E| db $09 ; Raw block
|12D56F| db $4F, $80, $5F, $80, $7F, $87, $75, $88
|12D577| db $6B, $90
|12D579| db $43 ; Repeat word
|12D57A| dw $E070
|12D57C| db $E0, $39 ; EXT Raw block
|12D57E| db $73, $E3, $7F, $7F, $78, $73, $67, $0F
|12D586| db $0F, $0C, $FC, $00, $FE, $00, $FB, $F8
|12D58E| db $F5, $1C, $FA, $0E, $3D, $07, $1E, $03
|12D596| db $ED, $E1, $FF, $FF, $07, $E3, $F1, $F8
|12D59E| db $FC, $1E, $00, $FF, $FF, $07, $3F, $07
|12D5A6| db $77, $08, $E8, $10, $F0, $20, $E9, $21
|12D5AE| db $F9, $21, $00, $F8, $F8, $F0, $E7, $CF
|12D5B6| db $DE, $DE
|12D5B8| db $45 ; Repeat word
|12D5B9| dw $F78C
|12D5BB| db $09 ; Raw block
|12D5BC| db $CC, $37, $7F, $80, $63, $9E, $C7, $BC
|12D5C4| db $CE, $B9
|12D5C6| db $24 ; Repeat byte
|12D5C7| db $00
|12D5C8| db $0A ; Raw block
|12D5C9| db $1E, $3C, $38, $FF, $80, $59, $00, $BF
|12D5D1| db $80, $1A, $A6
|12D5D4| db $43 ; Repeat word
|12D5D5| dw $BD18
|12D5D7| db $05 ; Raw block
|12D5D8| db $02, $BE, $98, $5F, $7F, $FF
|12D5DE| db $62 ; Increment fill
|12D5DF| db $40
|12D5E0| db $E0, $20 ; EXT Raw block
|12D5E2| db $42, $41, $20, $FF, $01, $9A, $00, $FD
|12D5EA| db $01, $59, $65, $19, $BD, $18, $BD, $40
|12D5F2| db $7D, $19, $FA, $FE, $FF, $02, $82, $42
|12D5FA| db $42, $82, $04, $A1, $BE, $C0, $01, $A0
|12D602| db $1E
|12D603| db $43 ; Repeat word
|12D604| dw $0FFD
|12D606| db $08 ; Raw block
|12D607| db $A0, $1F, $B2, $13, $E0, $0D, $40, $FE
|12D60F| db $C1
|12D610| db $22 ; Repeat byte
|12D611| db $C0
|12D612| db $07 ; Raw block
|12D613| db $CC, $D2, $E0, $0D, $B2, $13, $A0, $1F
|12D61B| db $43 ; Repeat word
|12D61C| dw $0FFD
|12D61E| db $07 ; Raw block
|12D61F| db $A0, $1E, $C0, $01, $B9, $BE, $D2, $CC
|12D627| db $22 ; Repeat byte
|12D628| db $C0
|12D629| db $15 ; Raw block
|12D62A| db $C1, $FE, $40, $FF, $00, $FF, $03, $FE
|12D632| db $77, $FC, $6A, $D4, $6A, $DA, $6D, $DF
|12D63A| db $66, $CF, $72, $00, $03, $07
|12D640| db $23 ; Repeat byte
|12D641| db $0F
|12D642| db $12 ; Raw block
|12D643| db $07, $FF, $00, $FF, $83, $3C, $6F, $38
|12D64B| db $2E, $70, $EC, $F0, $DC, $E7, $B8, $EC
|12D653| db $76, $00, $C7
|12D656| db $22 ; Repeat byte
|12D657| db $EF
|12D658| db $15 ; Raw block
|12D659| db $DF, $BB, $77, $7E, $FF, $7B, $83, $7D
|12D661| db $81, $6E, $80, $67, $80, $63, $80, $61
|12D669| db $80, $60, $80, $00, $7C, $7E
|12D66F| db $24 ; Repeat byte
|12D670| db $7F
|12D671| db $0B ; Raw block
|12D672| db $40, $7F, $BF, $3F, $40, $00, $BF, $80
|12D67A| db $40, $40, $BF, $3F
|12D67E| db $43 ; Repeat word
|12D67F| dw $00FF
|12D681| db $17 ; Raw block
|12D682| db $80, $C0, $FF, $7F, $BF, $C0, $FF, $FF
|12D68A| db $80, $00, $80, $40, $C0, $60, $D0, $20
|12D692| db $D8, $20, $DC, $60, $96, $78, $CB, $24
|12D69A| db $22 ; Repeat byte
|12D69B| db $80
|12D69C| db $10 ; Raw block
|12D69D| db $C0, $C0, $80, $80, $D0, $DC, $C1, $BA
|12D6A5| db $83, $75, $07, $EB, $0F, $1C, $1C, $FB
|12D6AD| db $F8
|12D6AE| db $43 ; Repeat word
|12D6AF| dw $00FF
|12D6B1| db $E0, $67 ; EXT Raw block
|12D6B3| db $3E, $7C, $F8, $F0, $E3, $07, $FF, $FF
|12D6BB| db $E1, $21, $E0, $20, $E4, $24, $F0, $30
|12D6C3| db $D9, $19, $6F, $0F, $B0, $80, $DF, $40
|12D6CB| db $DE, $DF, $DB, $CF, $E6, $F0, $7F, $3F
|12D6D3| db $FB, $02, $FD, $01, $F6, $F0, $1B, $18
|12D6DB| db $0D, $0C, $25, $24, $05, $04, $8D, $8C
|12D6E3| db $FC, $FE, $0F, $E7, $F3, $DB, $FB, $73
|12D6EB| db $F3, $EF, $1F, $E0, $0C, $F3, $08, $F7
|12D6F3| db $F9, $07, $FB, $F6, $0F, $F4, $0E, $F1
|12D6FB| db $00, $00, $03, $07, $07, $06, $04, $00
|12D703| db $92, $98, $C8, $4C, $C5, $45, $E1, $21
|12D70B| db $BF, $1F, $DF, $40, $A0, $60, $C0, $3F
|12D713| db $65, $33, $3A, $1E, $40, $20, $1F, $00
|12D71B| db $43 ; Repeat word
|12D71C| dw $21F9
|12D71E| db $0B ; Raw block
|12D71F| db $FD, $21, $FE, $30, $EF, $38, $D7, $1C
|12D727| db $6A, $0E, $35, $07
|12D72B| db $22 ; Repeat byte
|12D72C| db $DE
|12D72D| db $E0, $46 ; EXT Raw block
|12D72F| db $CF, $C7, $E3, $F1, $F8, $FF, $80, $75
|12D737| db $66, $1A, $13, $8C, $89, $4C, $C9, $2C
|12D73F| db $69, $8C, $09, $3C, $39, $00, $88, $E4
|12D747| db $72, $32, $92, $72, $C2, $03, $04, $03
|12D74F| db $FD, $86, $F8, $8E, $F1, $F9, $06, $F3
|12D757| db $83, $30, $CF, $10, $EF, $F8, $00, $01
|12D75F| db $00, $00, $0C, $00, $00, $B8, $A0, $7C
|12D767| db $73, $9E, $F9, $0E, $F9, $FF, $00, $FB
|12D76F| db $CB, $30, $D7, $30, $DF, $47, $80
|12D776| db $22 ; Repeat byte
|12D777| db $00
|12D778| db $12 ; Raw block
|12D779| db $04, $08, $00, $3C, $77, $0C, $73, $0E
|12D781| db $71, $0F, $70, $18, $63, $30, $CB, $F4
|12D789| db $0F, $CC, $57
|12D78C| db $23 ; Repeat byte
|12D78D| db $80
|12D78E| db $E0, $4E ; EXT Raw block
|12D790| db $84, $04, $00, $20, $AC, $B7, $4C, $77
|12D798| db $CF, $F0, $EF, $73, $FC, $35, $78, $03
|12D7A0| db $3C, $47, $0C, $77, $40, $80, $00, $00
|12D7A8| db $02, $84, $80, $80, $CF, $70, $DF, $60
|12D7B0| db $BF, $4A, $F7, $1A, $E7, $3B, $EE, $3B
|12D7B8| db $FF, $61, $FF, $60, $02, $09, $1B, $3B
|12D7C0| db $7B, $7B, $73, $63, $D0, $EC, $E7, $D8
|12D7C8| db $EF, $B0, $FC, $A4, $F8, $28, $E3, $93
|12D7D0| db $64, $96, $EF, $9C, $EF, $DF, $B8, $B3
|12D7D8| db $A7, $CC, $C9, $C0, $D7, $5E, $D2
|12D7DF| db $46 ; Repeat word
|12D7E0| dw $DA5E
|12D7E2| db $05 ; Raw block
|12D7E3| db $D2, $5E, $80, $7E, $7C, $FF
|12D7E9| db $25 ; Repeat byte
|12D7EA| db $21
|12D7EB| db $E0, $29 ; EXT Raw block
|12D7ED| db $01, $00, $5E, $7F, $B0, $E7, $67, $CF
|12D7F5| db $0C, $9F, $18, $BF, $11, $BE, $56, $F9
|12D7FD| db $00, $FF, $80, $18, $37, $6F, $5F, $5F
|12D805| db $1F, $00, $80, $00, $C0, $00, $A0, $40
|12D80D| db $90, $60, $88, $70, $DC, $38, $DA, $3C
|12D815| db $DC, $3F
|12D817| db $27 ; Repeat byte
|12D818| db $00
|12D819| db $E0, $79 ; EXT Raw block
|12D81B| db $46, $01, $3C, $83, $80, $FF, $06, $FF
|12D823| db $88, $79, $48, $F9, $96, $F1, $2E, $E1
|12D82B| db $FE, $7C, $80, $C0, $C6, $C6, $8E, $1E
|12D833| db $E0, $A0, $7B, $5B, $B2, $AB, $DF, $56
|12D83B| db $AF, $6F, $90, $70, $8F, $7F, $89, $7F
|12D843| db $1F, $84, $44, $20, $10, $0F, $00, $00
|12D84B| db $BF, $A0, $D0, $5F, $E8, $AF, $74, $57
|12D853| db $5B, $6B, $1A, $1B, $7A, $7B, $5B, $6B
|12D85B| db $40, $20, $10, $88, $84, $E4, $84, $84
|12D863| db $F5, $66, $FF, $0D, $1B, $ED, $F5, $EC
|12D86B| db $F4, $E4, $F2, $E2, $F9, $E9, $14, $EC
|12D873| db $08, $01, $01, $02, $0B, $0D, $06, $03
|12D87B| db $F6, $00, $1A, $F0, $EE, $F8, $F6, $FA
|12D883| db $FF, $71, $7D, $01, $83, $94, $07, $10
|12D88B| db $0F, $F7, $FB, $F9, $70, $8E, $6B, $E9
|12D893| db $DE, $3F
|12D895| db $43 ; Repeat word
|12D896| dw $BFDE
|12D898| db $09 ; Raw block
|12D899| db $FF, $00, $62, $73, $D9, $F9, $64, $84
|12D8A1| db $F2, $62
|12D8A3| db $23 ; Repeat byte
|12D8A4| db $00
|12D8A5| db $05 ; Raw block
|12D8A6| db $8C, $06, $1B, $6D, $BA, $72
|12D8AC| db $43 ; Repeat word
|12D8AD| dw $78BC
|12D8AF| db $17 ; Raw block
|12D8B0| db $DC, $7B, $6C, $30, $BD, $02, $FB, $10
|12D8B8| db $0F, $0C, $75, $7B, $7B, $78, $B7, $C4
|12D8C0| db $E6, $F3, $FF, $F8, $FF, $00, $18, $F8
|12D8C8| db $43 ; Repeat word
|12D8C9| dw $FE7E
|12D8CB| db $43 ; Repeat word
|12D8CC| dw $FF7F
|12D8CE| db $06 ; Raw block
|12D8CF| db $01, $FE, $00, $00, $07, $01, $01
|12D8D6| db $22 ; Repeat byte
|12D8D7| db $00
|12D8D8| db $06 ; Raw block
|12D8D9| db $FF, $1F, $FF, $00, $E0, $1F, $D9
|12D8E0| db $44 ; Repeat word
|12D8E1| dw $DFBF
|12D8E3| db $03 ; Raw block
|12D8E4| db $6F, $9F, $F0, $0F
|12D8E8| db $27 ; Repeat byte
|12D8E9| db $00
|12D8EA| db $00 ; Raw block
|12D8EB| db $C0
|12D8EC| db $44 ; Repeat word
|12D8ED| dw $DEBF
|12D8EF| db $43 ; Repeat word
|12D8F0| dw $BFFE
|12D8F2| db $43 ; Repeat word
|12D8F3| dw $1FDE
|12D8F5| db $01 ; Raw block
|12D8F6| db $C7, $06
|12D8F8| db $24 ; Repeat byte
|12D8F9| db $00
|12D8FA| db $0B ; Raw block
|12D8FB| db $20, $20, $38, $FD, $1E, $FF, $00, $E3
|12D903| db $1C, $DD, $BE, $DE
|12D907| db $44 ; Repeat word
|12D908| dw $CEBF
|12D90A| db $01 ; Raw block
|12D90B| db $DE, $BF
|12D90D| db $27 ; Repeat byte
|12D90E| db $00
|12D90F| db $01 ; Raw block
|12D910| db $F7, $4C
|12D912| db $43 ; Repeat word
|12D913| dw $4EFD
|12D915| db $E0, $6A ; EXT Raw block
|12D917| db $F8, $47, $F1, $0F, $FE, $0D, $FF, $4C
|12D91F| db $DF, $66, $61, $60, $60, $61, $2F, $0F
|12D927| db $0D, $0E, $F5, $0E, $FB, $07, $EF, $38
|12D92F| db $F7, $3C, $F8, $1C, $FF, $0F, $FF, $00
|12D937| db $FF, $07, $C0, $30, $78, $7F, $7F, $3F
|12D93F| db $0F, $70, $99, $1E, $82, $6F, $E5, $7D
|12D947| db $F4, $7C, $F5, $7C, $96, $1C, $87, $6D
|12D94F| db $E5, $7D, $60, $10, $02, $03, $03, $63
|12D957| db $12, $02, $B4, $AC, $E8, $18, $19, $F8
|12D95F| db $93, $F0, $56, $70, $94, $B1, $44, $31
|12D967| db $A0, $39, $43, $07, $07, $0F, $8F, $4E
|12D96F| db $CE, $C6, $80, $80, $C0, $80, $20, $40
|12D977| db $90, $E0, $08, $70, $0C, $74, $CE, $B4
|12D97F| db $8D, $F6, $00
|12D982| db $43 ; Repeat word
|12D983| dw $8000
|12D985| db $12 ; Raw block
|12D986| db $80, $00, $00, $7C, $01, $FC, $01, $80
|12D98E| db $01, $2C, $6D, $52, $DD, $AA, $B5, $76
|12D996| db $0D, $4A, $39
|12D999| db $22 ; Repeat byte
|12D99A| db $FE
|12D99B| db $13 ; Raw block
|12D99C| db $92, $22, $42, $C2, $C6, $DF, $30, $CF
|12D9A4| db $3F, $E7, $1F, $D0, $6F, $CF, $70, $E0
|12D9AC| db $7F, $BF, $3F, $FF
|12D9B0| db $26 ; Repeat byte
|12D9B1| db $00
|12D9B2| db $0A ; Raw block
|12D9B3| db $40, $00, $FF, $00, $FD, $1C, $27, $DE
|12D9BB| db $93, $EE, $CB
|12D9BE| db $46 ; Repeat word
|12D9BF| dw $EB76
|12D9C1| db $01 ; Raw block
|12D9C2| db $00, $02
|12D9C4| db $25 ; Repeat byte
|12D9C5| db $00
|12D9C6| db $01 ; Raw block
|12D9C7| db $FF, $FF
|12D9C9| db $22 ; Repeat byte
|12D9CA| db $00
|12D9CB| db $04 ; Raw block
|12D9CC| db $FF, $FF, $00, $FF, $FF
|12D9D1| db $22 ; Repeat byte
|12D9D2| db $00
|12D9D3| db $83 ; Copy past
|12D9D4| dw $04B0
|12D9D6| db $00 ; Raw block
|12D9D7| db $FF
|12D9D8| db $22 ; Repeat byte
|12D9D9| db $00
|12D9DA| db $13 ; Raw block
|12D9DB| db $FF, $00, $00, $7E, $81, $E7, $7E, $91
|12D9E3| db $7E, $B1, $7E, $85, $7E, $83, $3E, $C3
|12D9EB| db $5A, $7E, $81, $00
|12D9EF| db $25 ; Repeat byte
|12D9F0| db $7E
|12D9F1| db $E4, $31 ; EXT Repeat byte
|12D9F3| db $00
|12D9F4| db $01 ; Raw block
|12D9F5| db $FF, $7F
|12D9F7| db $43 ; Repeat word
|12D9F8| dw $44FF
|12D9FA| db $08 ; Raw block
|12D9FB| db $FE, $48, $FC, $50, $F8, $60, $F0, $40
|12DA03| db $E6
|12DA04| db $22 ; Repeat byte
|12DA05| db $00
|12DA06| db $0B ; Raw block
|12DA07| db $01, $03, $07, $0F, $19, $40, $CE, $40
|12DA0F| db $FE, $70, $FE, $48
|12DA13| db $43 ; Repeat word
|12DA14| dw $44FE
|12DA16| db $05 ; Raw block
|12DA17| db $FF, $7F, $FF, $00, $FF, $31
|12DA1D| db $23 ; Repeat byte
|12DA1E| db $01
|12DA1F| db $23 ; Repeat byte
|12DA20| db $00
|12DA21| db $03 ; Raw block
|12DA22| db $FF, $7F, $FF, $42
|12DA26| db $84 ; Copy past
|12DA27| dw $0515
|12DA29| db $05 ; Raw block
|12DA2A| db $70, $F9, $40, $F1, $40, $E0
|12DA30| db $22 ; Repeat byte
|12DA31| db $00
|12DA32| db $08 ; Raw block
|12DA33| db $01, $03, $06, $0E, $1F, $00, $FF, $FE
|12DA3B| db $FF
|12DA3C| db $43 ; Repeat word
|12DA3D| dw $7F22
|12DA3F| db $02 ; Raw block
|12DA40| db $12, $FF, $0E
|12DA43| db $43 ; Repeat word
|12DA44| dw $02FF
|12DA46| db $04 ; Raw block
|12DA47| db $07, $00, $00, $80, $80
|12DA4C| db $22 ; Repeat byte
|12DA4D| db $00
|12DA4E| db $00 ; Raw block
|12DA4F| db $F8
|12DA50| db $43 ; Repeat word
|12DA51| dw $60DF
|12DA53| db $0C ; Raw block
|12DA54| db $CF, $70, $C3, $7C, $E1, $7E, $F0, $7F
|12DA5C| db $9F, $1F, $FF, $00, $06
|12DA61| db $22 ; Repeat byte
|12DA62| db $01
|12DA63| db $0E ; Raw block
|12DA64| db $00, $00, $60, $00, $BC, $73, $3F, $F0
|12DA6C| db $3F, $E0, $F8, $C7, $F0, $0F, $00
|12DA73| db $23 ; Repeat byte
|12DA74| db $FF
|12DA75| db $83 ; Copy past
|12DA76| dw $0070
|12DA78| db $00 ; Raw block
|12DA79| db $E0
|12DA7A| db $23 ; Repeat byte
|12DA7B| db $00
|12DA7C| db $0F ; Raw block
|12DA7D| db $FF, $00, $BF, $7F, $E3, $7C, $C3, $7D
|12DA85| db $FF, $01, $8F, $71, $F7, $79, $FB, $7D
|12DA8D| db $27 ; Repeat byte
|12DA8E| db $00
|12DA8F| db $83 ; Copy past
|12DA90| dw $04B6
|12DA92| db $0B ; Raw block
|12DA93| db $87, $78, $CB, $37, $F4, $8C, $78, $4B
|12DA9B| db $B9, $2F, $5A, $16
|12DA9F| db $23 ; Repeat byte
|12DAA0| db $00
|12DAA1| db $03 ; Raw block
|12DAA2| db $03, $84, $C0, $E1
|12DAA6| db $37 ; Repeat byte
|12DAA7| db $00
|12DAA8| db $00 ; Raw block
|12DAA9| db $FF
|12DAAA| db $83 ; Copy past
|12DAAB| dw $0558
|12DAAD| db $04 ; Raw block
|12DAAE| db $03, $FE, $FC, $02, $00
|12DAB3| db $83 ; Copy past
|12DAB4| dw $0558
|12DAB6| db $01 ; Raw block
|12DAB7| db $00, $01
|12DAB9| db $22 ; Repeat byte
|12DABA| db $00
|12DABB| db $04 ; Raw block
|12DABC| db $01, $FD, $00, $00, $FE
|12DAC1| db $FF ; End of GFX 24

;===================================================================================================

GFX_25:
|12DAC2| db $09 ; Raw block
|12DAC3| db $68, $B7, $7D, $B2, $37, $DA, $32, $DF
|12DACB| db $F2, $1F
|12DACD| db $45 ; Repeat word
|12DACE| dw $DF2A
|12DAD0| db $27 ; Repeat byte
|12DAD1| db $00
|12DAD2| db $0F ; Raw block
|12DAD3| db $08, $F7, $FF, $00, $BF, $C0, $78, $FF
|12DADB| db $C7, $3F, $60, $9F, $3F, $FF, $60, $9F
|12DAE3| db $27 ; Repeat byte
|12DAE4| db $00
|12DAE5| db $E0, $83 ; EXT Raw block
|12DAE7| db $C7, $00, $9B, $00, $27, $18, $E7, $18
|12DAEF| db $49, $B4, $DC, $A2, $BF, $44, $BE, $49
|12DAF7| db $FF, $E7, $D8, $1A, $33, $25, $48, $51
|12DAFF| db $83, $00, $7D, $00, $E6, $3C, $C7, $2C
|12DB07| db $C4, $10, $9D, $24, $37, $C0, $7F, $80
|12DB0F| db $FF, $83, $3D, $3C, $3B, $63, $CF, $8F
|12DB17| db $D7, $0C, $9C, $03, $33, $0C, $47, $38
|12DB1F| db $4F, $31, $B7, $0A, $F3, $04, $FA, $01
|12DB27| db $E0, $E3, $CC, $B9, $B2, $C4, $D8, $CD
|12DB2F| db $DF, $20, $E7, $5E, $FF, $21, $F3, $0C
|12DB37| db $F7, $AB, $FF, $06, $EE, $1D, $DC, $33
|12DB3F| db $20, $9E, $41, $20, $03, $86, $9C, $30
|12DB47| db $00, $F7, $00, $FB, $F8, $07, $FC, $02
|12DB4F| db $18, $E5, $00, $7F, $81, $66, $FF, $00
|12DB57| db $FD, $0E, $05, $03, $C7, $FE, $7C, $00
|12DB5F| db $00, $EF, $00, $DF, $1F, $E0, $3F, $40
|12DB67| db $18, $A7, $00, $FE
|12DB6B| db $83 ; Copy past
|12DB6C| dw $009C
|12DB6E| db $17 ; Raw block
|12DB6F| db $BF, $70, $A0, $C0, $E3, $7F, $3E, $00
|12DB77| db $4C, $93, $CC, $33, $C4, $3A, $84, $6A
|12DB7F| db $82, $75, $80, $7B, $90, $6F, $98, $66
|12DB87| db $22 ; Repeat byte
|12DB88| db $31
|12DB89| db $06 ; Raw block
|12DB8A| db $39, $7D, $6E, $67, $63, $33, $C8
|12DB91| db $43 ; Repeat word
|12DB92| dw $CE31
|12DB94| db $E0, $21 ; EXT Raw block
|12DB96| db $39, $C4, $39, $44, $11, $AE, $01, $F6
|12DB9E| db $03, $EC, $8C, $8E, $86, $86, $C6, $EE
|12DBA6| db $5C, $B8, $00, $FF, $FF, $00, $CC, $73
|12DBAE| db $9B, $67, $B6, $4E, $ED, $1D, $DA, $3B
|12DBB6| db $C2, $3F
|12DBB8| db $23 ; Repeat byte
|12DBB9| db $00
|12DBBA| db $13 ; Raw block
|12DBBB| db $01, $02, $04, $00, $FF, $00, $78, $F7
|12DBC3| db $F3, $EF, $67, $5F, $AC, $DC, $44, $BC
|12DBCB| db $E2, $62, $C0, $40
|12DBCF| db $22 ; Repeat byte
|12DBD0| db $00
|12DBD1| db $E0, $45 ; EXT Raw block
|12DBD3| db $80, $03, $03, $1D, $3F, $9D, $30, $81
|12DBDB| db $1E, $BC, $01, $BA, $03, $FA, $43, $FE
|12DBE3| db $01, $F6, $06, $FF, $00, $4E, $60, $7E
|12DBEB| db $7C, $3C, $00, $F9, $FF, $FF, $31, $EE
|12DBF3| db $71, $6F, $31, $BF, $12, $5F, $01, $BF
|12DBFB| db $80, $E0, $E0, $FF, $00, $31, $71, $BD
|12DC03| db $DE, $E0, $7F, $1F, $FF, $F3, $0C, $FF
|12DC0B| db $00, $00, $FF, $11, $FF, $3B, $FF, $FE
|12DC13| db $FF, $FC, $FF, $01, $FE, $08
|12DC19| db $26 ; Repeat byte
|12DC1A| db $00
|12DC1B| db $1B ; Raw block
|12DC1C| db $EE, $81, $EF, $81, $DC, $42, $BE, $82
|12DC24| db $54, $00, $AC, $38, $DB, $D8, $FF, $00
|12DC2C| db $98, $98, $29, $69, $EB, $C3, $27, $FF
|12DC34| db $FF, $00, $FF, $7F
|12DC38| db $45 ; Repeat word
|12DC39| dw $60E0
|12DC3B| db $07 ; Raw block
|12DC3C| db $B0, $30, $DF, $9F, $70, $C0, $FF, $80
|12DC44| db $22 ; Repeat byte
|12DC45| db $9F
|12DC46| db $0A ; Raw block
|12DC47| db $CF, $60, $3F, $FC, $01, $FB, $79, $FE
|12DC4F| db $7C, $C5, $44
|12DC52| db $47 ; Repeat word
|12DC53| dw $42C3
|12DC55| db $03 ; Raw block
|12DC56| db $FE, $86, $83, $BB
|12DC5A| db $23 ; Repeat byte
|12DC5B| db $BD
|12DC5C| db $E0, $83 ; EXT Raw block
|12DC5E| db $FF, $08, $FF, $40, $7E, $A9, $3D, $C3
|12DC66| db $A3, $DE, $EB, $56, $F6, $4D, $FC, $2B
|12DC6E| db $46, $20, $91, $C3, $C6, $46, $4C, $28
|12DC76| db $5B, $80, $4F, $80, $51, $80, $4C, $A1
|12DC7E| db $62, $91, $BF, $C0, $D2, $6D, $6F, $B1
|12DC86| db $B7, $B9, $AF, $92, $8C, $C0, $61, $31
|12DC8E| db $BC, $03, $79, $02, $63, $34, $47, $28
|12DC96| db $45, $30, $7F, $34, $B3, $00, $D7, $00
|12DC9E| db $C3, $86, $BC, $B8, $BB, $B3, $CF, $EF
|12DCA6| db $06, $FD, $FB, $06, $0D, $13, $A6, $09
|12DCAE| db $D5, $02, $55, $02, $CF, $00, $E5, $1B
|12DCB6| db $FC, $06, $E3, $D1, $68, $A8, $B0, $E3
|12DCBE| db $FF, $06, $0F, $F6, $07, $7A, $27, $DA
|12DCC6| db $77, $88, $1F, $E6, $0F, $F6, $CF, $36
|12DCCE| db $04, $E4, $F0, $88, $00, $C4, $E4, $24
|12DCD6| db $FD, $02, $C3, $3C, $01, $FE, $01, $FA
|12DCDE| db $01, $F6, $01, $CE
|12DCE2| db $43 ; Repeat word
|12DCE3| dw $FE01
|12DCE5| db $07 ; Raw block
|12DCE6| db $00, $1C, $A6, $CE, $FC, $78, $80, $EC
|12DCEE| db $43 ; Repeat word
|12DCEF| dw $3FC0
|12DCF1| db $44 ; Repeat word
|12DCF2| dw $7B80
|12DCF4| db $E0, $39 ; EXT Raw block
|12DCF6| db $77, $80, $6E, $40, $BF, $FF, $00, $3B
|12DCFE| db $1D, $2D, $4E, $5F, $7B, $31, $00, $81
|12DD06| db $5E, $89, $76, $98, $67, $8C, $73, $C7
|12DD0E| db $38, $FF, $C7, $FF, $F7, $FF, $00, $76
|12DD16| db $66, $63, $20, $10, $C7, $00, $00, $8B
|12DD1E| db $6E, $CB, $6C, $C2, $7D, $D5, $73, $95
|12DD26| db $73, $D5, $73, $DC, $7B, $D6, $79, $10
|12DD2E| db $10, $00
|12DD30| db $22 ; Repeat byte
|12DD31| db $08
|12DD32| db $E0, $29 ; EXT Raw block
|12DD34| db $00, $00, $82, $0E, $1E, $90, $BE, $A0
|12DD3C| db $1E, $20, $1E, $22, $3C, $24, $98, $98
|12DD44| db $C0, $C0, $71, $61, $41, $C1, $C1, $C3
|12DD4C| db $67, $3F, $FD, $2B, $FB, $07, $DF, $37
|12DD54| db $BC, $74, $E5, $6C, $CA, $4C, $CD, $47
|12DD5C| db $BF, $62
|12DD5E| db $22 ; Repeat byte
|12DD5F| db $00
|12DD60| db $E0, $31 ; EXT Raw block
|12DD62| db $03, $13, $33, $38, $1C, $FF, $DC, $23
|12DD6A| db $01, $2A, $00, $B7, $24, $3F, $28, $7F
|12DD72| db $40, $FF, $80, $FF, $1F, $00, $DC, $DD
|12DD7A| db $C9, $C1, $80, $00, $1F, $CE, $31, $87
|12DD82| db $78, $87, $4B, $83, $35, $83, $79, $93
|12DD8A| db $6D, $6E, $91, $00, $FF, $31, $30, $78
|12DD92| db $7C, $6C
|12DD94| db $22 ; Repeat byte
|12DD95| db $00
|12DD96| db $E0, $28 ; EXT Raw block
|12DD98| db $F7, $24, $FB, $10, $FD, $88, $FF, $C4
|12DDA0| db $BF, $A4, $DD, $90, $AD, $08, $D7, $02
|12DDA8| db $18, $0C, $06, $02, $42, $62, $72, $38
|12DDB0| db $CF, $20, $A7, $5F, $E9, $56, $ED, $72
|12DDB8| db $95, $5A, $AF, $6F, $50, $B0, $67, $BF
|12DDC0| db $1F
|12DDC1| db $22 ; Repeat byte
|12DDC2| db $00
|12DDC3| db $18 ; Raw block
|12DDC4| db $20, $10, $0F, $00, $FC, $03, $B3, $7C
|12DDCC| db $74, $97, $8A, $FB, $32, $4B, $5D, $65
|12DDD4| db $4D, $7D, $7F, $45, $00, $00, $08, $04
|12DDDC| db $84
|12DDDD| db $22 ; Repeat byte
|12DDDE| db $82
|12DDDF| db $43 ; Repeat word
|12DDE0| dw $03EC
|12DDE2| db $E0, $33 ; EXT Raw block
|12DDE4| db $FE, $01, $DE, $11, $BE, $21, $DE, $41
|12DDEC| db $BF, $20, $BF, $10, $33, $13, $21, $69
|12DDF4| db $45, $21, $50, $48, $FB, $00, $96, $00
|12DDFC| db $D6, $40, $FA, $29, $7C, $81, $7C, $80
|12DE04| db $7D, $80, $57, $80, $4D, $69, $29, $06
|12DE0C| db $82, $93, $BA, $AC, $FF, $00, $F4, $04
|12DE14| db $EB, $0A, $3F, $11
|12DE18| db $43 ; Repeat word
|12DE19| dw $00FF
|12DE1B| db $E0, $29 ; EXT Raw block
|12DE1D| db $3F, $C0, $03, $FC, $00, $1B, $B4, $C2
|12DE25| db $11, $08, $C0, $FC, $F0, $0F, $BF, $20
|12DE2D| db $9E, $10, $FF, $00, $9E, $10, $6F, $00
|12DE35| db $F1, $00, $83, $18, $0F, $C0, $63, $06
|12DE3D| db $E3, $91, $1E, $E4, $0C, $73, $00, $3F
|12DE45| db $00, $7F
|12DE47| db $43 ; Repeat word
|12DE48| dw $CF30
|12DE4A| db $13 ; Raw block
|12DE4B| db $00, $BE, $86, $59, $FF, $00, $C1, $FB
|12DE53| db $FC, $8E, $47, $FB, $71, $00, $30, $CE
|12DE5B| db $00, $FC, $00, $FE
|12DE5F| db $43 ; Repeat word
|12DE60| dw $F30C
|12DE62| db $E0, $20 ; EXT Raw block
|12DE64| db $00, $7D, $61, $9A, $FF, $00, $83, $DF
|12DE6C| db $3F, $71, $E2, $DF, $8E, $00, $9C, $43
|12DE74| db $8A, $55, $81, $66, $43, $BC, $24, $DB
|12DE7C| db $E3, $DF, $23, $D4, $43, $A8, $61, $74
|12DE84| db $3C
|12DE85| db $22 ; Repeat byte
|12DE86| db $18
|12DE87| db $E0, $2E ; EXT Raw block
|12DE89| db $1C, $3C, $03, $1C, $01, $BA, $19, $E4
|12DE91| db $19, $E6, $81, $7E, $83, $7C, $03, $FC
|12DE99| db $01, $FA, $F4, $EE, $66, $66, $74, $38
|12DEA1| db $5C, $CE, $C2, $75, $D3, $70, $99, $7E
|12DEA9| db $E2, $7B, $F5, $7D, $E3, $3F, $A9, $5E
|12DEB1| db $97, $6E, $08, $0C, $00, $04, $02
|12DEB8| db $22 ; Repeat byte
|12DEB9| db $00
|12DEBA| db $10 ; Raw block
|12DEBB| db $63, $E3, $36, $F5, $97, $75, $D7, $35
|12DEC3| db $41, $A3, $A2, $63, $61, $E1, $B4, $B4
|12DECB| db $1C
|12DECC| db $22 ; Repeat byte
|12DECD| db $08
|12DECE| db $14 ; Raw block
|12DECF| db $1C, $1C, $1E, $4B, $18, $EE, $1C, $EF
|12DED7| db $FF, $C0, $F5, $0B, $4A, $BE, $D2, $B6
|12DEDF| db $E2, $A6, $E7, $A4, $01
|12DEE4| db $22 ; Repeat byte
|12DEE5| db $00
|12DEE6| db $13 ; Raw block
|12DEE7| db $01, $09, $19, $18, $86, $FF, $7F, $80
|12DEEF| db $FD, $1F, $E1, $C3, $84, $A6, $02, $24
|12DEF7| db $FF, $00, $E3, $1C
|12DEFB| db $22 ; Repeat byte
|12DEFC| db $00
|12DEFD| db $02 ; Raw block
|12DEFE| db $1C, $59, $D9
|12DF01| db $85 ; Copy past
|12DF02| dw $002E
|12DF04| db $E0, $3A ; EXT Raw block
|12DF06| db $24, $18, $E7, $08, $26, $C9, $C6, $A9
|12DF0E| db $C4, $9A, $C4, $9B, $FF, $E7, $DB, $18
|12DF16| db $19, $39, $39, $31, $37, $B8, $EB, $2C
|12DF1E| db $F5, $16, $FB, $8A, $FD, $C4, $BF, $A2
|12DF26| db $DF, $92, $EF, $48, $40, $10, $08, $04
|12DF2E| db $02, $40, $60, $30, $FA, $2F, $FA, $37
|12DF36| db $9F, $78, $AE, $5E, $B3, $6F, $BF, $70
|12DF3E| db $80, $3F, $FF
|12DF41| db $22 ; Repeat byte
|12DF42| db $00
|12DF43| db $19 ; Raw block
|12DF44| db $40, $41, $60, $70, $7F, $00, $FF, $00
|12DF4C| db $C1, $3C, $DD, $EE, $ED, $76, $F5, $BA
|12DF54| db $35, $DA, $FD, $DA, $2D, $CA, $00, $3E
|12DF5C| db $0E, $06
|12DF5E| db $22 ; Repeat byte
|12DF5F| db $02
|12DF60| db $02 ; Raw block
|12DF61| db $12, $FF, $FF
|12DF64| db $22 ; Repeat byte
|12DF65| db $00
|12DF66| db $83 ; Copy past
|12DF67| dw $017F
|12DF69| db $00 ; Raw block
|12DF6A| db $FF
|12DF6B| db $22 ; Repeat byte
|12DF6C| db $00
|12DF6D| db $83 ; Copy past
|12DF6E| dw $04B0
|12DF70| db $00 ; Raw block
|12DF71| db $FF
|12DF72| db $22 ; Repeat byte
|12DF73| db $00
|12DF74| db $13 ; Raw block
|12DF75| db $FF, $00, $00, $7E, $81, $E7, $7E, $91
|12DF7D| db $7E, $B1, $7E, $85, $7E, $83, $3E, $C3
|12DF85| db $5A, $7E, $81, $00
|12DF89| db $25 ; Repeat byte
|12DF8A| db $7E
|12DF8B| db $1E ; Raw block
|12DF8C| db $00, $7F, $80, $01, $E6, $00, $7B, $00
|12DF94| db $BD, $00, $FB, $00, $07, $00, $9B, $FF
|12DF9C| db $00, $00, $BC, $CE, $E6, $0E, $FC, $FE
|12DFA4| db $00, $01, $DA, $81, $68, $81, $78
|12DFAB| db $44 ; Repeat word
|12DFAC| dw $3A81
|12DFAE| db $16 ; Raw block
|12DFAF| db $54, $81, $6E, $C1, $3E, $76, $36, $56
|12DFB7| db $46, $6E, $7E, $3A, $00, $FC, $07, $CC
|12DFBF| db $F7, $8C, $F7, $EC, $97, $CC, $B7
|12DFC6| db $43 ; Repeat word
|12DFC7| dw $F78C
|12DFC9| db $01 ; Raw block
|12DFCA| db $8F, $F0
|12DFCC| db $27 ; Repeat byte
|12DFCD| db $00
|12DFCE| db $0A ; Raw block
|12DFCF| db $FF, $FE, $1B, $E6, $09, $F6, $01, $FE
|12DFD7| db $FF, $00, $FF
|12DFDA| db $44 ; Repeat word
|12DFDB| dw $807F
|12DFDD| db $27 ; Repeat byte
|12DFDE| db $00
|12DFDF| db $0F ; Raw block
|12DFE0| db $FF, $FF, $3B, $C7, $01, $FF, $8C, $73
|12DFE8| db $FF, $00, $87, $DF, $05, $AB, $84, $4B
|12DFF0| db $24 ; Repeat byte
|12DFF1| db $00
|12DFF2| db $16 ; Raw block
|12DFF3| db $70, $50, $70, $9D, $E6, $88, $F5, $C8
|12DFFB| db $B2, $C8, $B4, $D8, $A7, $9F, $E4, $CC
|12E003| db $F7, $EE, $F7, $00, $07, $05, $07
|12E00A| db $23 ; Repeat byte
|12E00B| db $00
|12E00C| db $0E ; Raw block
|12E00D| db $A9, $76, $D7, $38, $E7, $1E, $B1, $4E
|12E015| db $9F, $60, $CF, $70, $E1, $7E, $FF
|12E01C| db $28 ; Repeat byte
|12E01D| db $00
|12E01E| db $13 ; Raw block
|12E01F| db $D1, $D9, $32, $FE, $50, $7B, $6A, $58
|12E027| db $BF, $C1, $A1, $DE, $C0, $BF, $FF, $00
|12E02F| db $26, $01, $84, $85
|12E033| db $23 ; Repeat byte
|12E034| db $00
|12E035| db $11 ; Raw block
|12E036| db $FF, $00, $E0, $20, $E0, $BF, $E7, $B8
|12E03E| db $EC, $B3, $F9, $E7, $FA, $06, $F0, $0C
|12E046| db $00, $1F
|12E048| db $23 ; Repeat byte
|12E049| db $00
|12E04A| db $02 ; Raw block
|12E04B| db $01, $03, $FF
|12E04E| db $23 ; Repeat byte
|12E04F| db $00
|12E050| db $0C ; Raw block
|12E051| db $FF, $FF, $00, $88, $77, $7F, $F7, $20
|12E059| db $A8, $01, $89, $00, $FF
|12E05E| db $23 ; Repeat byte
|12E05F| db $00
|12E060| db $E0, $31 ; EXT Raw block
|12E062| db $57, $76, $D7, $0F, $97, $08, $38, $04
|12E06A| db $40, $23, $40, $3F, $BF, $00, $DC, $03
|12E072| db $D0, $0C, $E0, $E0, $C7, $BF, $BE, $C0
|12E07A| db $E0, $EF, $FF, $00, $08, $07, $14, $F3
|12E082| db $CA, $39, $E5, $1C, $B2, $4E, $59, $E7
|12E08A| db $2C, $B3, $00, $F0, $08, $04, $02, $01
|12E092| db $00, $40
|12E094| db $FF ; End of GFX 25

;===================================================================================================

GFX_26:
|12E095| db $09 ; Raw block
|12E096| db $68, $B7, $7D, $B2, $37, $DA, $32, $DF
|12E09E| db $F2, $1F
|12E0A0| db $45 ; Repeat word
|12E0A1| dw $DF2A
|12E0A3| db $27 ; Repeat byte
|12E0A4| db $00
|12E0A5| db $0F ; Raw block
|12E0A6| db $08, $F7, $FF, $00, $BF, $C0, $78, $FF
|12E0AE| db $C7, $3F, $60, $9F, $3F, $FF, $60, $9F
|12E0B6| db $27 ; Repeat byte
|12E0B7| db $00
|12E0B8| db $0A ; Raw block
|12E0B9| db $FF, $00, $C7, $18, $D8, $00, $C0, $1B
|12E0C1| db $C0, $00, $FF
|12E0C4| db $43 ; Repeat word
|12E0C5| dw $8000
|12E0C7| db $04 ; Raw block
|12E0C8| db $1F, $7F, $60, $67, $64
|12E0CD| db $22 ; Repeat byte
|12E0CE| db $7F
|12E0CF| db $0B ; Raw block
|12E0D0| db $60, $FF, $00, $80, $7F, $00, $7C, $38
|12E0D8| db $7D, $00, $00, $FF
|12E0DC| db $23 ; Repeat byte
|12E0DD| db $00
|12E0DE| db $04 ; Raw block
|12E0DF| db $FF, $FF, $00, $83, $82
|12E0E4| db $22 ; Repeat byte
|12E0E5| db $FF
|12E0E6| db $07 ; Raw block
|12E0E7| db $00, $7C, $00, $C2, $3C, $BD, $7E, $BE
|12E0EF| db $44 ; Repeat word
|12E0F0| dw $BF7F
|12E0F2| db $03 ; Raw block
|12E0F3| db $DF, $3F, $5F, $3F
|12E0F7| db $27 ; Repeat byte
|12E0F8| db $00
|12E0F9| db $06 ; Raw block
|12E0FA| db $3C, $00, $43, $3C, $A0, $7F, $61
|12E101| db $48 ; Repeat word
|12E102| dw $E1FF
|12E104| db $27 ; Repeat byte
|12E105| db $00
|12E106| db $07 ; Raw block
|12E107| db $FF, $80, $59, $00, $BF, $80, $1A, $A6
|12E10F| db $43 ; Repeat word
|12E110| dw $BC19
|12E112| db $05 ; Raw block
|12E113| db $06, $BA, $8A, $75, $7F, $FF
|12E119| db $62 ; Increment fill
|12E11A| db $40
|12E11B| db $E0, $20 ; EXT Raw block
|12E11D| db $42, $41, $04, $FF, $01, $9A, $00, $FD
|12E125| db $01, $58, $67, $9A, $3F, $8B, $36, $55
|12E12D| db $6A, $13, $EC, $FE, $FF, $02, $80, $40
|12E135| db $40, $88, $0C, $A1, $BE, $C0, $03, $A0
|12E13D| db $1D
|12E13E| db $43 ; Repeat word
|12E13F| dw $0FFD
|12E141| db $08 ; Raw block
|12E142| db $A1, $1F, $B2, $13, $EC, $01, $40, $FC
|12E14A| db $C2
|12E14B| db $22 ; Repeat byte
|12E14C| db $C0
|12E14D| db $07 ; Raw block
|12E14E| db $CC, $D2, $EC, $01, $B2, $13, $A1, $1F
|12E156| db $43 ; Repeat word
|12E157| dw $0FF9
|12E159| db $07 ; Raw block
|12E15A| db $A0, $1D, $C0, $03, $A7, $B8, $D2, $CC
|12E162| db $22 ; Repeat byte
|12E163| db $C0
|12E164| db $0A ; Raw block
|12E165| db $C2, $FC, $40, $07, $F8, $7F, $81, $BE
|12E16D| db $72, $BC, $65
|12E170| db $44 ; Repeat word
|12E171| dw $6DBC
|12E173| db $05 ; Raw block
|12E174| db $6C, $BB, $6F, $00, $03, $07
|12E17A| db $24 ; Repeat byte
|12E17B| db $0F
|12E17C| db $01 ; Raw block
|12E17D| db $FF, $00
|12E17F| db $22 ; Repeat byte
|12E180| db $08
|12E181| db $0B ; Raw block
|12E182| db $EB, $08, $E8, $0F, $EF, $18, $D8, $10
|12E18A| db $17, $F0, $F7, $00
|12E18E| db $26 ; Repeat byte
|12E18F| db $FF
|12E190| db $1D ; Raw block
|12E191| db $58, $9F, $6F, $8F, $78, $88, $37, $80
|12E199| db $57, $C0, $E7, $E0, $FF, $1F, $FF, $00
|12E1A1| db $60, $70, $77, $7F, $3F, $1F, $E0, $FF
|12E1A9| db $04, $FC, $F9, $F8, $0B, $08
|12E1AF| db $45 ; Repeat word
|12E1B0| dw $00F7
|12E1B2| db $22 ; Repeat byte
|12E1B3| db $FF
|12E1B4| db $03 ; Raw block
|12E1B5| db $00, $03, $07, $F7
|12E1B9| db $22 ; Repeat byte
|12E1BA| db $FF
|12E1BB| db $01 ; Raw block
|12E1BC| db $00, $FF
|12E1BE| db $37 ; Repeat byte
|12E1BF| db $00
|12E1C0| db $0B ; Raw block
|12E1C1| db $B4, $07, $AB, $0F, $90, $18, $AF, $3F
|12E1C9| db $C0, $7F, $80, $80
|12E1CD| db $43 ; Repeat word
|12E1CE| dw $00FF
|12E1D0| db $05 ; Raw block
|12E1D1| db $F8, $F0, $E7, $C0, $80, $7F
|12E1D7| db $22 ; Repeat byte
|12E1D8| db $FF
|12E1D9| db $02 ; Raw block
|12E1DA| db $00, $FF, $7F
|12E1DD| db $45 ; Repeat word
|12E1DE| dw $60E0
|12E1E0| db $07 ; Raw block
|12E1E1| db $B0, $30, $DF, $9F, $70, $C0, $FF, $80
|12E1E9| db $22 ; Repeat byte
|12E1EA| db $9F
|12E1EB| db $0A ; Raw block
|12E1EC| db $CF, $60, $3F, $FC, $01, $FB, $79, $FE
|12E1F4| db $7C, $C5, $44
|12E1F7| db $47 ; Repeat word
|12E1F8| dw $42C3
|12E1FA| db $03 ; Raw block
|12E1FB| db $FE, $86, $83, $BB
|12E1FF| db $23 ; Repeat byte
|12E200| db $BD
|12E201| db $43 ; Repeat word
|12E202| dw $20A0
|12E204| db $01 ; Raw block
|12E205| db $7F, $FF
|12E207| db $43 ; Repeat word
|12E208| dw $00FF
|12E20A| db $07 ; Raw block
|12E20B| db $EF, $7F, $C0, $7F, $86, $79, $5F, $5F
|12E213| db $25 ; Repeat byte
|12E214| db $00
|12E215| db $23 ; Repeat byte
|12E216| db $78
|12E217| db $22 ; Repeat byte
|12E218| db $FF
|12E219| db $43 ; Repeat word
|12E21A| dw $FF00
|12E21C| db $06 ; Raw block
|12E21D| db $FF, $08, $F7, $0C, $F3, $87, $87
|12E224| db $25 ; Repeat byte
|12E225| db $00
|12E226| db $45 ; Repeat word
|12E227| dw $3F5F
|12E229| db $45 ; Repeat word
|12E22A| dw $7FBF
|12E22C| db $03 ; Raw block
|12E22D| db $5F, $3F, $2F, $1F
|12E231| db $27 ; Repeat byte
|12E232| db $00
|12E233| db $4F ; Repeat word
|12E234| dw $FFE1
|12E236| db $27 ; Repeat byte
|12E237| db $00
|12E238| db $04 ; Raw block
|12E239| db $BE, $7D, $F6, $7D, $77
|12E23E| db $44 ; Repeat word
|12E23F| dw $57B9
|12E241| db $43 ; Repeat word
|12E242| dw $BA7D
|12E244| db $03 ; Raw block
|12E245| db $78, $B7, $7D, $7D
|12E249| db $22 ; Repeat byte
|12E24A| db $39
|12E24B| db $02 ; Raw block
|12E24C| db $38, $38, $30
|12E24F| db $43 ; Repeat word
|12E250| dw $EEFD
|12E252| db $E0, $47 ; EXT Raw block
|12E254| db $FB, $CE, $FB, $C6, $EF, $D6, $A6, $D9
|12E25C| db $E0, $DF, $EC, $53, $EE, $EE, $CE, $C6
|12E264| db $C6, $C0, $C0, $40, $FF, $00, $4C, $BF
|12E26C| db $4F, $BF, $97, $73, $BF, $7F, $E3, $7F
|12E274| db $FF, $80, $F0, $8F, $00, $3F, $3F, $7B
|12E27C| db $7F, $7F, $00, $0F, $E7, $9F, $E5, $9C
|12E284| db $F3, $0F, $FF, $00, $87, $7F, $8F, $67
|12E28C| db $DC, $3F, $FF, $00, $1F, $1E, $0F, $00
|12E294| db $7F, $77, $3F, $00, $BC, $68, $BC, $65
|12E29C| db $46 ; Repeat word
|12E29D| dw $6DBC
|12E29F| db $04 ; Raw block
|12E2A0| db $6E, $BA, $6F, $BE, $67
|12E2A5| db $27 ; Repeat byte
|12E2A6| db $0F
|12E2A7| db $07 ; Raw block
|12E2A8| db $10, $1B, $08, $DC, $0F, $EF, $08, $E8
|12E2B0| db $43 ; Repeat word
|12E2B1| dw $D710
|12E2B3| db $03 ; Raw block
|12E2B4| db $00, $10, $F7, $EF
|12E2B8| db $27 ; Repeat byte
|12E2B9| db $FF
|12E2BA| db $E0, $2F ; EXT Raw block
|12E2BC| db $E6, $2F, $CF, $9F, $C8, $98, $C3, $90
|12E2C4| db $C7, $90, $87, $70, $43, $F8, $20, $BC
|12E2CC| db $10, $20, $27, $2F, $2F, $0F, $07, $43
|12E2D4| db $78, $7B, $00, $86, $81, $FC, $7B, $78
|12E2DC| db $FE, $00, $FC, $01, $F9, $03, $02, $06
|12E2E4| db $84, $79, $03, $87, $FF, $FE, $FC, $F9
|12E2EC| db $37 ; Repeat byte
|12E2ED| db $00
|12E2EE| db $E0, $28 ; EXT Raw block
|12E2F0| db $62, $13, $C8, $11, $9C, $39, $26, $65
|12E2F8| db $4A, $C1, $D9, $C2, $79, $42, $39, $02
|12E300| db $EC, $EE, $C6, $9A, $3E, $3C, $BC, $FC
|12E308| db $CF, $20, $A7, $5F, $E9, $56, $ED, $72
|12E310| db $95, $5A, $AF, $6F, $50, $B0, $67, $BF
|12E318| db $1F
|12E319| db $22 ; Repeat byte
|12E31A| db $00
|12E31B| db $18 ; Raw block
|12E31C| db $20, $10, $0F, $00, $FC, $03, $B3, $7C
|12E324| db $74, $97, $8A, $FB, $32, $4B, $5D, $65
|12E32C| db $4D, $7D, $7F, $45, $00, $00, $08, $04
|12E334| db $84
|12E335| db $22 ; Repeat byte
|12E336| db $82
|12E337| db $4B ; Repeat word
|12E338| dw $20AF
|12E33A| db $03 ; Raw block
|12E33B| db $B8, $38, $B0, $30
|12E33F| db $25 ; Repeat byte
|12E340| db $5F
|12E341| db $03 ; Raw block
|12E342| db $47, $4F, $B7, $00
|12E346| db $49 ; Repeat word
|12E347| dw $3087
|12E349| db $03 ; Raw block
|12E34A| db $48, $78, $78, $48
|12E34E| db $25 ; Repeat byte
|12E34F| db $CF
|12E350| db $01 ; Raw block
|12E351| db $87, $87
|12E353| db $4F ; Repeat word
|12E354| dw $7FBF
|12E356| db $27 ; Repeat byte
|12E357| db $00
|12E358| db $4F ; Repeat word
|12E359| dw $DFAF
|12E35B| db $27 ; Repeat byte
|12E35C| db $00
|12E35D| db $0B ; Raw block
|12E35E| db $F2, $0D, $E7, $1C, $8F, $7C, $BB, $7C
|12E366| db $EA, $6D, $FA, $6D
|12E36A| db $43 ; Repeat word
|12E36B| dw $7DBE
|12E36D| db $17 ; Raw block
|12E36E| db $0C, $1C, $7C, $7C, $7D, $6D, $7D, $7D
|12E376| db $11, $EE, $F5, $0E, $F7, $0E, $33, $CA
|12E37E| db $17, $EA, $DF, $EE, $BD, $AE, $FD, $AE
|12E386| db $22 ; Repeat byte
|12E387| db $0E
|12E388| db $08 ; Raw block
|12E389| db $CE, $EA, $EE, $EE, $AE, $F8, $07, $3F
|12E391| db $C0
|12E392| db $43 ; Repeat word
|12E393| dw $FEFF
|12E395| db $E0, $2D ; EXT Raw block
|12E397| db $CE, $FD, $FC, $C3, $F8, $07, $3C, $F3
|12E39F| db $00, $C0, $FE, $FE, $FC, $C0, $00, $F0
|12E3A7| db $FF, $FC, $FF, $FE, $FF, $C0, $F8, $07
|12E3AF| db $F9, $C6, $DD, $F2, $3C, $FB, $F8, $07
|12E3B7| db $FC, $FE, $C0, $00, $C0, $F0, $F8, $00
|12E3BF| db $BE, $63, $BF, $68, $BF, $64
|12E3C5| db $43 ; Repeat word
|12E3C6| dw $62BF
|12E3C8| db $E0, $3E ; EXT Raw block
|12E3CA| db $BE, $67, $BF, $65, $BF, $64, $07, $0B
|12E3D2| db $0C, $0E, $0E, $0F, $0F, $0C, $FF, $E8
|12E3DA| db $F8, $03, $F8, $05, $0C, $01, $84, $80
|12E3E2| db $FF, $7B, $7F, $83, $DF, $B9, $FF, $FF
|12E3EA| db $0F, $F7, $7B, $03, $83, $FB, $E3, $64
|12E3F2| db $C6, $41, $CD, $4B, $DB, $57, $76, $AE
|12E3FA| db $2C, $DD, $58, $BB, $72, $B7, $18, $38
|12E402| db $30, $20, $01, $02, $04, $08, $00
|12E409| db $22 ; Repeat byte
|12E40A| db $FF
|12E40B| db $13 ; Raw block
|12E40C| db $80, $80, $00, $7F, $07, $FF, $66, $FE
|12E414| db $E6, $FE, $E4, $FD, $00, $00, $7F, $80
|12E41C| db $00, $01, $01, $02
|12E420| db $37 ; Repeat byte
|12E421| db $00
|12E422| db $E0, $26 ; EXT Raw block
|12E424| db $C1, $D9, $80, $BC, $24, $7E, $22, $FB
|12E42C| db $65, $F9, $4A, $DC, $45, $D6, $22, $93
|12E434| db $26, $43, $81, $04, $06, $23, $29, $6C
|12E43C| db $FA, $2F, $FA, $37, $9F, $78, $AE, $5E
|12E444| db $B3, $6F, $BF, $70, $80, $3F, $FF
|12E44B| db $22 ; Repeat byte
|12E44C| db $00
|12E44D| db $19 ; Raw block
|12E44E| db $40, $41, $60, $70, $7F, $00, $FF, $00
|12E456| db $C1, $3C, $DD, $EE, $ED, $76, $F5, $BA
|12E45E| db $35, $DA, $FD, $DA, $2D, $CA, $00, $3E
|12E466| db $0E, $06
|12E468| db $22 ; Repeat byte
|12E469| db $02
|12E46A| db $02 ; Raw block
|12E46B| db $12, $FF, $FF
|12E46E| db $22 ; Repeat byte
|12E46F| db $00
|12E470| db $83 ; Copy past
|12E471| dw $014C
|12E473| db $00 ; Raw block
|12E474| db $FF
|12E475| db $22 ; Repeat byte
|12E476| db $00
|12E477| db $83 ; Copy past
|12E478| dw $04B0
|12E47A| db $00 ; Raw block
|12E47B| db $FF
|12E47C| db $22 ; Repeat byte
|12E47D| db $00
|12E47E| db $13 ; Raw block
|12E47F| db $FF, $00, $00, $7E, $81, $E7, $7E, $91
|12E487| db $7E, $B1, $7E, $85, $7E, $83, $3E, $C3
|12E48F| db $5A, $7E, $81, $00
|12E493| db $25 ; Repeat byte
|12E494| db $7E
|12E495| db $00 ; Raw block
|12E496| db $00
|12E497| db $49 ; Repeat word
|12E498| dw $7FBF
|12E49A| db $04 ; Raw block
|12E49B| db $9F, $7F, $00, $7F, $3F
|12E4A0| db $28 ; Repeat byte
|12E4A1| db $00
|12E4A2| db $4B ; Repeat word
|12E4A3| dw $DFAF
|12E4A5| db $02 ; Raw block
|12E4A6| db $60, $9F, $FF
|12E4A9| db $28 ; Repeat byte
|12E4AA| db $00
|12E4AB| db $83 ; Copy past
|12E4AC| dw $0078
|12E4AE| db $02 ; Raw block
|12E4AF| db $BC, $7F, $7F
|12E4B2| db $28 ; Repeat byte
|12E4B3| db $FF
|12E4B4| db $E4, $4F ; EXT Repeat byte
|12E4B6| db $00
|12E4B7| db $43 ; Repeat word
|12E4B8| dw $60BE
|12E4BA| db $1A ; Raw block
|12E4BB| db $AF, $71, $B7, $78, $BB, $7C, $BD, $7E
|12E4C3| db $8F, $4F, $7F, $80, $0D, $0D, $04, $02
|12E4CB| db $01, $00, $30, $00, $FF, $00, $31, $11
|12E4D3| db $7B, $4A, $7B
|12E4D6| db $44 ; Repeat word
|12E4D7| dw $FF00
|12E4D9| db $22 ; Repeat byte
|12E4DA| db $FF
|12E4DB| db $05 ; Raw block
|12E4DC| db $00, $00, $CE, $84, $84, $FF
|12E4E2| db $22 ; Repeat byte
|12E4E3| db $00
|12E4E4| db $0F ; Raw block
|12E4E5| db $FF, $00, $3F, $FF, $60, $FF, $DF, $E0
|12E4ED| db $37, $CF, $6C, $9C, $D8, $39, $B1, $72
|12E4F5| db $24 ; Repeat byte
|12E4F6| db $00
|12E4F7| db $02 ; Raw block
|12E4F8| db $03, $06, $0C
|12E4FB| db $84 ; Copy past
|12E4FC| dw $04B6
|12E4FE| db $09 ; Raw block
|12E4FF| db $FF, $FF, $00, $74, $4C, $52, $B3, $A5
|12E507| db $66, $FF
|12E509| db $24 ; Repeat byte
|12E50A| db $00
|12E50B| db $02 ; Raw block
|12E50C| db $83, $0C, $18
|12E50F| db $38 ; Repeat byte
|12E510| db $00
|12E511| db $0F ; Raw block
|12E512| db $FF, $00, $FE, $FF, $03, $FF, $FF, $01
|12E51A| db $E1, $9E, $D1, $37, $B3, $77, $67, $EF
|12E522| db $24 ; Repeat byte
|12E523| db $00
|12E524| db $02 ; Raw block
|12E525| db $08, $08, $10
|12E528| db $FF ; End of GFX 26

;===================================================================================================

GFX_27:
|12E529| db $0F ; Raw block
|12E52A| db $CF, $3D, $EF, $5E, $B7, $6F, $9F, $70
|12E532| db $88, $78, $C7, $3F, $67, $9F, $70, $AF
|12E53A| db $23 ; Repeat byte
|12E53B| db $00
|12E53C| db $00 ; Raw block
|12E53D| db $07
|12E53E| db $22 ; Repeat byte
|12E53F| db $00
|12E540| db $0F ; Raw block
|12E541| db $FC, $03, $C7, $78, $63, $BD, $31, $DE
|12E549| db $D8, $EF, $F6, $E7, $F6, $67, $F6, $A7
|12E551| db $24 ; Repeat byte
|12E552| db $00
|12E553| db $22 ; Repeat byte
|12E554| db $08
|12E555| db $0F ; Raw block
|12E556| db $C0, $00, $E0, $00, $7F, $00, $BF, $80
|12E55E| db $B8, $00, $B7, $07, $A8, $0F, $9F, $10
|12E566| db $22 ; Repeat byte
|12E567| db $FF
|12E568| db $04 ; Raw block
|12E569| db $7F, $7F, $78, $70, $60
|12E56E| db $23 ; Repeat byte
|12E56F| db $00
|12E570| db $0B ; Raw block
|12E571| db $1C, $00, $BE, $00, $E3, $00, $5D, $1C
|12E579| db $A2, $BE, $FF, $40
|12E57D| db $24 ; Repeat byte
|12E57E| db $FF
|12E57F| db $0C ; Raw block
|12E580| db $E3, $41, $00, $DF, $10, $E0, $00, $7E
|12E588| db $00, $3D, $01, $3B, $02
|12E58D| db $45 ; Repeat word
|12E58E| dw $0635
|12E590| db $04 ; Raw block
|12E591| db $E0, $FF, $FF, $FE, $FC
|12E596| db $22 ; Repeat byte
|12E597| db $F8
|12E598| db $0F ; Raw block
|12E599| db $FC, $03, $CE, $F1, $D7, $F8, $EB, $0C
|12E5A1| db $FC, $CF, $1E, $E7, $FF, $FB, $3F, $C0
|12E5A9| db $22 ; Repeat byte
|12E5AA| db $00
|12E5AB| db $1C ; Raw block
|12E5AC| db $10, $C0, $00, $F8, $00, $F7, $07, $EF
|12E5B4| db $0F, $EE, $0E, $6C, $0C, $B7, $87, $BB
|12E5BC| db $83, $DF, $C0, $BF, $E0, $F8, $F0, $F1
|12E5C4| db $F3, $78, $7C, $3F, $1F
|12E5C9| db $43 ; Repeat word
|12E5CA| dw $000F
|12E5CC| db $E0, $2D ; EXT Raw block
|12E5CE| db $67, $60, $64, $60, $09, $01, $9B, $83
|12E5D6| db $F5, $07, $E9, $0F, $FF, $FF, $9F, $9F
|12E5DE| db $FE, $7C, $F8, $F0, $EF, $0F, $F2, $03
|12E5E6| db $FD, $01, $8F, $00, $77, $70, $FB, $F8
|12E5EE| db $EF, $EC, $CF, $CC, $F0, $FC, $FE, $FF
|12E5F6| db $8F, $07, $13, $33, $07, $04
|12E5FC| db $43 ; Repeat word
|12E5FD| dw $3033
|12E5FF| db $0C ; Raw block
|12E600| db $06, $00, $CD, $01, $F2, $03, $E4, $07
|12E608| db $EF, $0F, $FB, $CF, $CF
|12E60D| db $83 ; Copy past
|12E60E| dw $0072
|12E610| db $E0, $43 ; EXT Raw block
|12E612| db $F0, $FF, $00, $FF, $7F, $FF, $6F, $EF
|12E61A| db $56, $FE, $59, $EF, $4D, $E5, $47, $F7
|12E622| db $57, $00, $7F, $6F, $46, $40, $50, $58
|12E62A| db $48, $FF, $00, $E0, $DF, $DC, $3C, $70
|12E632| db $F0, $E0, $E0, $C0, $C0, $C2, $C3, $D5
|12E63A| db $D7, $00, $C0, $03, $0F, $1F, $3F, $3C
|12E642| db $28, $65, $E7, $C3, $C3, $9E, $80, $3F
|12E64A| db $00, $7F, $00, $E3, $00, $C1, $00, $80
|12E652| db $00, $18, $3C, $7F
|12E656| db $24 ; Repeat byte
|12E657| db $FF
|12E658| db $0B ; Raw block
|12E659| db $54, $1C, $E8, $0F, $F7, $87, $7E, $40
|12E661| db $BD, $21, $DF, $1F
|12E665| db $43 ; Repeat word
|12E666| dw $00FF
|12E668| db $09 ; Raw block
|12E669| db $E3, $F0, $78, $BF, $DE, $E0, $FF, $FF
|12E671| db $88, $E8
|12E673| db $43 ; Repeat word
|12E674| dw $D010
|12E676| db $E0, $59 ; EXT Raw block
|12E678| db $11, $B1, $12, $B2, $0D, $7C, $03, $79
|12E680| db $04, $13, $10, $20, $20, $40, $C1, $83
|12E688| db $86, $EC, $57, $6E, $2A, $DB, $D5, $B1
|12E690| db $24, $E0, $CC, $C0, $9E, $80, $FB, $00
|12E698| db $F1, $00, $80, $04, $0E, $1F, $3F, $7F
|12E6A0| db $FF, $FF, $E1, $21, $E0, $20, $F4, $34
|12E6A8| db $F0, $30, $D8, $18, $6F, $0F, $BC, $80
|12E6B0| db $DF, $C0, $DE, $DF, $CB, $CF, $E7, $F0
|12E6B8| db $7F, $3F, $FB, $03, $FD, $01, $F6, $F0
|12E6C0| db $3B, $38, $0F, $0C, $27, $24, $05, $04
|12E6C8| db $85, $84, $FC, $FE, $0F, $C7, $F3, $DB
|12E6D0| db $FB, $7B
|12E6D2| db $43 ; Repeat word
|12E6D3| dw $6FFA
|12E6D5| db $10 ; Raw block
|12E6D6| db $9B, $66, $AF, $62, $DF, $3A, $EF, $1C
|12E6DE| db $77, $8E, $33, $CE, $0A, $0A, $02, $12
|12E6E6| db $02
|12E6E7| db $22 ; Repeat byte
|12E6E8| db $00
|12E6E9| db $1D ; Raw block
|12E6EA| db $46, $F9, $01, $FF, $01, $FE, $A1, $EE
|12E6F2| db $90, $F7, $61, $DF, $30, $EF, $98, $6F
|12E6FA| db $F7, $13, $1A, $B8, $BC, $1F, $03, $00
|12E702| db $1B, $02, $0D, $01, $1B, $02
|12E708| db $45 ; Repeat word
|12E709| dw $0635
|12E70B| db $06 ; Raw block
|12E70C| db $1B, $02, $0D, $00, $FC, $FE, $FC
|12E713| db $22 ; Repeat byte
|12E714| db $F8
|12E715| db $0B ; Raw block
|12E716| db $FC, $FE, $19, $FE, $84, $FF, $16, $FB
|12E71E| db $0B, $EC, $01, $F7
|12E722| db $43 ; Repeat word
|12E723| dw $7F80
|12E725| db $E0, $31 ; EXT Raw block
|12E727| db $74, $CF, $98, $80, $98, $FC, $3C, $8C
|12E72F| db $E6, $C6, $C9, $B9, $52, $BB, $28, $CB
|12E737| db $32, $D3, $31, $D9, $E8, $1C, $B7, $CF
|12E73F| db $1B, $E7, $06, $04, $14, $0C, $06, $03
|12E747| db $00, $00, $CB, $DD, $CE, $D9, $5C, $DB
|12E74F| db $BC, $BB, $54, $7B, $AF, $F0, $5B, $E7
|12E757| db $30, $CF
|12E759| db $22 ; Repeat byte
|12E75A| db $20
|12E75B| db $01 ; Raw block
|12E75C| db $40, $80
|12E75E| db $22 ; Repeat byte
|12E75F| db $00
|12E760| db $0F ; Raw block
|12E761| db $86, $FB, $C4, $3B, $3E, $C1, $5B, $DC
|12E769| db $A5, $EE, $02, $07, $53, $73, $8B, $FB
|12E771| db $22 ; Repeat byte
|12E772| db $00
|12E773| db $17 ; Raw block
|12E774| db $20, $10, $F8, $8C, $04, $D4, $F7, $EA
|12E77C| db $EF, $15, $1E, $3B, $FC, $F6, $F9, $7C
|12E784| db $83, $C6, $3B, $86, $FB, $08, $10, $E0
|12E78C| db $24 ; Repeat byte
|12E78D| db $00
|12E78E| db $03 ; Raw block
|12E78F| db $E7, $57, $E5, $57
|12E793| db $43 ; Repeat word
|12E794| dw $5FED
|12E796| db $0B ; Raw block
|12E797| db $FD, $4F, $F5, $4F, $F8, $47, $E4, $5B
|12E79F| db $48, $48, $40, $40
|12E7A3| db $22 ; Repeat byte
|12E7A4| db $60
|12E7A5| db $1B ; Raw block
|12E7A6| db $40, $D2, $D6, $F3, $F7, $E5, $F7, $EA
|12E7AE| db $FB, $80, $FC, $45, $C7, $BA, $83, $ED
|12E7B6| db $A9, $29, $08, $08, $04, $03, $38, $44
|12E7BE| db $12, $AB, $6E, $AA
|12E7C2| db $46 ; Repeat word
|12E7C3| dw $AB6D
|12E7C5| db $05 ; Raw block
|12E7C6| db $BB, $6D, $9B, $55, $AB, $6D
|12E7CC| db $25 ; Repeat byte
|12E7CD| db $10
|12E7CE| db $1F ; Raw block
|12E7CF| db $28, $10, $32, $EE, $6C, $DC, $DA, $FB
|12E7D7| db $90, $B7, $11, $37, $14, $36, $13, $32
|12E7DF| db $29, $39, $01, $03, $04, $48, $C8, $C9
|12E7E7| db $CD, $C6, $00, $0F, $00, $03, $00, $01
|12E7EF| db $29 ; Repeat byte
|12E7F0| db $00
|12E7F1| db $03 ; Raw block
|12E7F2| db $10, $0C, $03, $01
|12E7F6| db $23 ; Repeat byte
|12E7F7| db $00
|12E7F8| db $E0, $2A ; EXT Raw block
|12E7FA| db $4F, $66, $BF, $E6, $19, $CA, $67, $F4
|12E802| db $53, $34, $ED, $2A, $D7, $5A, $AB, $B6
|12E80A| db $98, $18, $34, $08, $C8, $D0, $A0, $40
|12E812| db $43, $C0, $89, $48, $9C, $5C, $9E, $52
|12E81A| db $8E, $52, $9C, $4A, $BC, $6A, $AE, $5C
|12E822| db $3F, $37, $23
|12E825| db $22 ; Repeat byte
|12E826| db $21
|12E827| db $10 ; Raw block
|12E828| db $01, $01, $7F, $80, $80, $FF, $03, $02
|12E830| db $36, $39, $7F, $67, $3F, $21, $99, $1E
|12E838| db $C0
|12E839| db $22 ; Repeat byte
|12E83A| db $00
|12E83B| db $06 ; Raw block
|12E83C| db $FC, $C0, $80, $C0, $E0, $FF, $F0
|12E843| db $44 ; Repeat word
|12E844| dw $FA6F
|12E846| db $05 ; Raw block
|12E847| db $F0, $6E, $90, $6F, $B0, $2F
|12E84D| db $43 ; Repeat word
|12E84E| dw $6FF8
|12E850| db $E0, $3C ; EXT Raw block
|12E852| db $00, $0A, $0A, $01, $0D, $42, $0B, $09
|12E85A| db $38, $C7, $00, $7F, $03, $FF, $84, $FC
|12E862| db $06, $FE, $21, $FF, $A0, $FF, $46, $7B
|12E86A| db $00, $83, $07, $CF, $8F, $47, $83, $E6
|12E872| db $FF, $00, $F3, $FB, $F7, $FF, $FF, $00
|12E87A| db $63, $FF, $00, $FF, $60, $FF, $00, $EF
|12E882| db $00, $04, $00, $00, $6B, $08, $66, $1B
|12E88A| db $12, $BE, $01, $FF, $86
|12E88F| db $44 ; Repeat word
|12E890| dw $807F
|12E892| db $E0, $29 ; EXT Raw block
|12E894| db $19, $FE, $29, $EF, $24, $E7, $5B, $15
|12E89C| db $01, $00, $18, $3D, $7F, $7E, $C8, $E0
|12E8A4| db $5B, $F3, $D4, $77, $E4, $77, $94, $57
|12E8AC| db $A8, $6B, $72, $B3, $DE, $38, $1F, $0C
|12E8B4| db $08, $08, $28, $14, $0C, $07, $03, $0F
|12E8BC| db $E2, $EF
|12E8BE| db $43 ; Repeat word
|12E8BF| dw $EE67
|12E8C1| db $08 ; Raw block
|12E8C2| db $ED, $EE, $4D, $CE, $96, $9D, $2B, $3C
|12E8CA| db $F0
|12E8CB| db $23 ; Repeat byte
|12E8CC| db $10
|12E8CD| db $E0, $2E ; EXT Raw block
|12E8CF| db $30, $60, $C0, $BD, $C2, $F3, $FC, $16
|12E8D7| db $F7, $6B, $7B, $C5, $05, $39, $38, $43
|12E8DF| db $7E, $40, $7E, $00, $00, $08, $84, $FA
|12E8E7| db $C7, $81, $81, $4A, $7E, $7C, $7C, $79
|12E8EF| db $79, $02, $03, $0D, $FF, $3E, $FF, $F3
|12E8F7| db $FC, $BD, $C2, $81, $83, $86, $FC
|12E8FE| db $23 ; Repeat byte
|12E8FF| db $00
|12E900| db $01 ; Raw block
|12E901| db $EF, $58
|12E903| db $43 ; Repeat word
|12E904| dw $5AEC
|12E906| db $E0, $26 ; EXT Raw block
|12E908| db $EB, $5D, $EF, $5D, $F7, $4E, $FB, $57
|12E910| db $FD, $5A, $40, $41, $41, $40, $40, $60
|12E918| db $40, $40, $FE, $3C, $5F, $3D, $BE, $82
|12E920| db $CF, $4C, $50, $B0, $BF, $C0, $FB, $67
|12E928| db $59, $B7, $01, $80, $41, $30, $0F
|12E92F| db $22 ; Repeat byte
|12E930| db $00
|12E931| db $0F ; Raw block
|12E932| db $2E, $D9, $3A, $D5, $B0, $CF, $E7, $1F
|12E93A| db $4C, $BC, $5A, $B8, $64, $B0, $F1, $39
|12E942| db $23 ; Repeat byte
|12E943| db $00
|12E944| db $E0, $5A ; EXT Raw block
|12E946| db $03, $07, $0F, $06, $A7, $E5, $BD, $FA
|12E94E| db $5B, $7E, $63, $3E, $B5, $86, $4B, $4C
|12E956| db $FE, $81, $8D, $73, $18, $00, $80, $C0
|12E95E| db $78, $B0, $00, $00, $28, $25, $51, $44
|12E966| db $A0, $85, $48, $0D, $90, $1D, $60, $7D
|12E96E| db $80, $FD, $00, $FD, $1B, $33, $62, $C2
|12E976| db $82, $02, $06, $06, $37, $CE, $AB, $DA
|12E97E| db $FB, $9A, $D7, $36, $AB, $6E, $53, $DE
|12E986| db $A7, $BE, $07, $36, $00, $04, $04, $08
|12E98E| db $10, $20, $40, $C8, $DF, $30, $C8, $38
|12E996| db $E7, $5F, $F0, $6F, $FF, $70, $FF, $7F
|12E99E| db $BF, $3F, $FF
|12E9A1| db $83 ; Copy past
|12E9A2| dw $0012
|12E9A4| db $0E ; Raw block
|12E9A5| db $20, $30, $3F, $40, $00, $FF, $00, $FD
|12E9AD| db $3C, $3F, $DE, $9F, $EE, $CF, $76
|12E9B4| db $45 ; Repeat word
|12E9B5| dw $36AF
|12E9B7| db $04 ; Raw block
|12E9B8| db $00, $02, $1C, $0C, $04
|12E9BD| db $22 ; Repeat byte
|12E9BE| db $44
|12E9BF| db $01 ; Raw block
|12E9C0| db $07, $03
|12E9C2| db $83 ; Copy past
|12E9C3| dw $02E2
|12E9C5| db $E0, $22 ; EXT Raw block
|12E9C7| db $01, $01, $02, $02, $00, $06, $00, $F6
|12E9CF| db $06, $16, $04, $02, $01, $02, $84, $F8
|12E9D7| db $08, $08, $7E, $81, $E7, $7E, $91, $7E
|12E9DF| db $B1, $7E, $85, $7E, $83, $3E, $C3, $5A
|12E9E7| db $7E, $81, $00
|12E9EA| db $25 ; Repeat byte
|12E9EB| db $7E
|12E9EC| db $0E ; Raw block
|12E9ED| db $00, $10, $90, $38, $A8, $1C, $94, $0E
|12E9F5| db $CA, $07, $E5, $03, $F2, $01, $FF
|12E9FC| db $22 ; Repeat byte
|12E9FD| db $00
|12E9FE| db $E0, $33 ; EXT Raw block
|12EA00| db $10, $08, $04, $02, $81, $C0, $FF, $5C
|12EA08| db $44, $2E, $23, $17, $11, $0B, $08, $05
|12EA10| db $06, $82, $8F, $C0, $7F, $00, $00, $18
|12EA18| db $0C, $06, $03, $01, $01, $83, $FF, $00
|12EA20| db $FF, $C0, $00, $17, $F9, $0B, $08, $05
|12EA28| db $04, $02, $02, $01, $01, $00, $00, $F0
|12EA30| db $FF, $06, $03, $01
|12EA34| db $23 ; Repeat byte
|12EA35| db $00
|12EA36| db $E0, $3E ; EXT Raw block
|12EA38| db $FF, $03, $00, $00, $FF, $80, $80, $C0
|12EA40| db $40, $E0, $20, $70, $10, $B8, $88, $0F
|12EA48| db $FF, $00, $00, $80, $C0, $60, $30, $00
|12EA50| db $00, $0E, $EE, $03, $73, $00, $BC, $80
|12EA58| db $DF, $40, $EF, $A0, $F7, $D0, $FB, $FE
|12EA60| db $31, $1C, $0F, $07, $03, $01, $00, $E8
|12EA68| db $FD, $F4, $FE, $FA, $FF, $FD, $7F, $7E
|12EA70| db $3F, $3F, $1F, $1F, $0F, $0F, $07
|12EA77| db $22 ; Repeat byte
|12EA78| db $00
|12EA79| db $18 ; Raw block
|12EA7A| db $80, $40, $20, $10, $08, $EF, $5D, $F7
|12EA82| db $4D, $FA, $65, $FF, $70, $FF, $7C, $FF
|12EA8A| db $7F, $80, $7F, $FF, $00, $40, $60, $70
|12EA92| db $78
|12EA93| db $22 ; Repeat byte
|12EA94| db $7F
|12EA95| db $E0, $2C ; EXT Raw block
|12EA97| db $00, $EA, $D7, $3B, $27, $D9, $D7, $7A
|12EA9F| db $F7, $FB, $07, $F8, $F6, $04, $FB, $FF
|12EAA7| db $00, $00, $C0, $20, $00, $00, $F1, $F8
|12EAAF| db $00, $FF, $00, $90, $70, $AF, $6F, $DB
|12EAB7| db $5C, $B4, $3B, $A9, $37, $F3, $0F, $E7
|12EABF| db $1C, $00, $0F, $1F, $38
|12EAC4| db $83 ; Copy past
|12EAC5| dw $0046
|12EAC7| db $00 ; Raw block
|12EAC8| db $FF
|12EAC9| db $22 ; Repeat byte
|12EACA| db $00
|12EACB| db $22 ; Repeat byte
|12EACC| db $FF
|12EACD| db $0B ; Raw block
|12EACE| db $00, $18, $E7, $2F, $DF, $D8, $B8, $F3
|12EAD6| db $32, $00, $FF, $FF
|12EADA| db $22 ; Repeat byte
|12EADB| db $00
|12EADC| db $01 ; Raw block
|12EADD| db $07, $0C
|12EADF| db $46 ; Repeat word
|12EAE0| dw $FD00
|12EAE2| db $04 ; Raw block
|12EAE3| db $7D, $00, $1D, $00, $0D
|12EAE8| db $83 ; Copy past
|12EAE9| dw $02D4
|12EAEB| db $1F ; Raw block
|12EAEC| db $06, $06, $8F, $FF, $7F, $1F, $0F, $07
|12EAF4| db $FF, $00, $05, $06, $FB, $F8, $BF, $78
|12EAFC| db $5D, $B2, $AB, $D6, $5B, $66, $F7, $0E
|12EB04| db $00, $F8, $FC, $38, $10, $00, $80, $00
|12EB0C| db $FF ; End of GFX 27

;===================================================================================================

GFX_28:
|12EB0D| db $0F ; Raw block
|12EB0E| db $CF, $3F, $E6, $5F, $B0, $6F, $9F, $70
|12EB16| db $88, $78, $47, $BF, $66, $9F, $73, $AF
|12EB1E| db $23 ; Repeat byte
|12EB1F| db $00
|12EB20| db $00 ; Raw block
|12EB21| db $07
|12EB22| db $22 ; Repeat byte
|12EB23| db $00
|12EB24| db $0F ; Raw block
|12EB25| db $F8, $07, $C7, $78, $63, $BD, $31, $DE
|12EB2D| db $98, $EF, $D6, $E7, $D7, $E7, $95, $E7
|12EB35| db $24 ; Repeat byte
|12EB36| db $00
|12EB37| db $22 ; Repeat byte
|12EB38| db $08
|12EB39| db $0F ; Raw block
|12EB3A| db $C3, $00, $C7, $00, $FE, $00, $7B, $03
|12EB42| db $B5, $06, $CF, $49, $F6, $7A, $EC, $74
|12EB4A| db $22 ; Repeat byte
|12EB4B| db $FF
|12EB4C| db $E0, $34 ; EXT Raw block
|12EB4E| db $FC, $78, $30, $01, $03, $FF, $00, $AF
|12EB56| db $30, $B9, $C8, $E3, $20, $23, $E0, $03
|12EB5E| db $60, $91, $30, $41, $10, $FF, $C0, $07
|12EB66| db $1F, $1F, $9F, $CF, $EF, $EF, $00, $F7
|12EB6E| db $07, $3B, $03, $3A, $03, $35, $06, $6F
|12EB76| db $09, $F6, $1A, $DC, $14, $F0, $F8, $FC
|12EB7E| db $FC, $F8, $F0, $E1, $E3
|12EB83| db $43 ; Repeat word
|12EB84| dw $F70C
|12EB86| db $0B ; Raw block
|12EB87| db $EC, $17, $7C, $87, $78, $A7, $6C, $B3
|12EB8F| db $66, $B9, $63, $BC
|12EB93| db $27 ; Repeat byte
|12EB94| db $00
|12EB95| db $E0, $59 ; EXT Raw block
|12EB97| db $FF, $80, $DB, $81, $BF, $83, $DB, $25
|12EB9F| db $F9, $5C, $B8, $6D, $B2, $4E, $D8, $4F
|12EBA7| db $7E, $7D, $43, $01, $42, $62, $61, $60
|12EBAF| db $FF, $F8, $87, $FC, $1B, $E6, $BF, $E2
|12EBB7| db $DF, $E2, $CB, $7A, $C6, $7D, $E6, $79
|12EBBF| db $FB, $FD, $FE, $E6, $E6, $7E, $7C, $78
|12EBC7| db $FC, $03, $FF, $3C, $CB, $62, $9C, $C7
|12EBCF| db $B8, $C7, $91, $FF, $8F, $FF, $DF, $F8
|12EBD7| db $C0, $BC, $7E, $E7, $E7, $FF, $FF, $F8
|12EBDF| db $F8, $75, $F2, $23, $A0, $1F, $FD, $0F
|12EBE7| db $FF, $08, $AE, $14, $D9, $0F, $FF, $E0
|12EBEF| db $72, $AC
|12EBF1| db $22 ; Repeat byte
|12EBF2| db $C0
|12EBF3| db $01 ; Raw block
|12EBF4| db $C7, $EF
|12EBF6| db $43 ; Repeat word
|12EBF7| dw $FF00
|12EBF9| db $0F ; Raw block
|12EBFA| db $03, $FE, $77, $FC, $6A, $D4, $6A, $DA
|12EC02| db $6D, $DF, $66, $CF, $72, $00, $03, $07
|12EC0A| db $23 ; Repeat byte
|12EC0B| db $0F
|12EC0C| db $12 ; Raw block
|12EC0D| db $07, $FF, $00, $FF, $83, $3C, $6F, $38
|12EC15| db $2E, $70, $EC, $F0, $DC, $E7, $B8, $EC
|12EC1D| db $76, $00, $C7
|12EC20| db $22 ; Repeat byte
|12EC21| db $EF
|12EC22| db $0D ; Raw block
|12EC23| db $DF, $BB, $77, $FF, $3F, $DF, $40, $BF
|12EC2B| db $00, $FF, $0F, $F8, $98, $70
|12EC31| db $44 ; Repeat word
|12EC32| dw $F010
|12EC34| db $04 ; Raw block
|12EC35| db $00, $3F, $7F, $70, $67
|12EC3A| db $22 ; Repeat byte
|12EC3B| db $EF
|12EC3C| db $0B ; Raw block
|12EC3D| db $FF, $90, $7F, $4F, $B0, $30, $CF, $00
|12EC45| db $FF, $86, $79, $79
|12EC49| db $24 ; Repeat byte
|12EC4A| db $00
|12EC4B| db $16 ; Raw block
|12EC4C| db $80, $CF, $FF, $79, $86, $FF, $FF, $80
|12EC54| db $00, $80, $40, $C0, $60, $D0, $20, $D8
|12EC5C| db $20, $DC, $60, $96, $78, $CB, $24
|12EC63| db $22 ; Repeat byte
|12EC64| db $80
|12EC65| db $E0, $5C ; EXT Raw block
|12EC67| db $C0, $C0, $80, $80, $D0, $B3, $12, $BF
|12EC6F| db $2C, $DD, $90, $63, $42, $BF, $20, $DF
|12EC77| db $1F, $FF, $80, $7F, $40, $4C, $40, $22
|12EC7F| db $9C, $C0, $E0, $7F, $BF, $E1, $21, $E0
|12EC87| db $20, $E4, $24, $F0, $30, $D9, $19, $6F
|12EC8F| db $0F, $B0, $80, $DF, $40, $DE, $DF, $DB
|12EC97| db $CF, $E6, $F0, $7F, $3F, $FB, $02, $FD
|12EC9F| db $01, $F6, $F0, $1B, $18, $0D, $0C, $25
|12ECA7| db $24, $05, $04, $8D, $8C, $FC, $FE, $0F
|12ECAF| db $E7, $F3, $DB, $FB, $73, $20, $DF, $3F
|12ECB7| db $C0, $3F, $CF, $18, $E7, $FC, $03, $F6
|12ECBF| db $F9, $03, $FC, $01, $FE
|12ECC4| db $27 ; Repeat byte
|12ECC5| db $00
|12ECC6| db $13 ; Raw block
|12ECC7| db $F0, $9F, $E0, $1F, $F0, $8F, $FF, $C0
|12ECCF| db $7F, $E0, $3F, $DE, $C3, $3E, $FD, $02
|12ECD7| db $3F, $3F, $1F, $0F
|12ECDB| db $23 ; Repeat byte
|12ECDC| db $00
|12ECDD| db $14 ; Raw block
|12ECDE| db $F2, $28, $91, $2C, $F8, $5E, $A2, $43
|12ECE6| db $E0, $20, $C0, $00, $DC, $00, $FF, $00
|12ECEE| db $C7, $C3, $81, $9C, $9F
|12ECF3| db $22 ; Repeat byte
|12ECF4| db $BF
|12ECF5| db $07 ; Raw block
|12ECF6| db $F3, $BC, $FB, $1C, $FD, $0A, $BD, $C6
|12ECFE| db $43 ; Repeat word
|12ECFF| dw $E61D
|12ED01| db $07 ; Raw block
|12ED02| db $1E, $E7, $1F, $E0, $00, $00, $C0, $E0
|12ED0A| db $23 ; Repeat byte
|12ED0B| db $F0
|12ED0C| db $E0, $29 ; EXT Raw block
|12ED0E| db $DD, $77, $DD, $7F, $C9, $7E, $E3, $3E
|12ED16| db $FF, $3C, $FF, $99, $3C, $C3, $00, $FF
|12ED1E| db $77, $7F, $7E, $3E, $3C, $18, $00, $00
|12ED26| db $FF, $7F, $8E, $71, $9F, $6E, $9B, $6A
|12ED2E| db $FB, $0E, $FB, $EE, $1F, $E4, $0E, $F1
|12ED36| db $00, $00
|12ED38| db $23 ; Repeat byte
|12ED39| db $0E
|12ED3A| db $03 ; Raw block
|12ED3B| db $04, $00, $FC, $07
|12ED3F| db $43 ; Repeat word
|12ED40| dw $F78C
|12ED42| db $09 ; Raw block
|12ED43| db $BE, $C1, $FF, $BC, $E3, $AE, $FF, $BC
|12ED4B| db $3E, $C1
|12ED4D| db $23 ; Repeat byte
|12ED4E| db $00
|12ED4F| db $15 ; Raw block
|12ED50| db $3C, $3E, $3C, $00, $FC, $07, $FC, $E3
|12ED58| db $1E, $F9, $CE, $FD, $EE, $FD, $0E, $F9
|12ED60| db $FC, $F3, $FC, $07, $00, $E0
|12ED66| db $84 ; Copy past
|12ED67| dw $0071
|12ED69| db $E0, $4C ; EXT Raw block
|12ED6B| db $00, $CF, $70, $DF, $60, $BF, $4A, $F7
|12ED73| db $1A, $E7, $3B, $EE, $3B, $FF, $61, $FF
|12ED7B| db $60, $02, $09, $1B, $3B, $7B, $7B, $73
|12ED83| db $63, $D0, $EC, $E7, $D8, $EF, $B0, $FC
|12ED8B| db $A4, $F8, $28, $E3, $93, $64, $96, $EF
|12ED93| db $9C, $EF, $DF, $B8, $B3, $A7, $CC, $C9
|12ED9B| db $C0, $9E, $61, $CD, $32, $A3, $1D, $BE
|12EDA3| db $22, $DC, $1C, $E0, $40, $FF, $6F, $FF
|12EDAB| db $00, $6D, $3E, $5C, $41, $23, $1F, $00
|12EDB3| db $00, $A7, $13, $B6, $92
|12EDB8| db $43 ; Repeat word
|12EDB9| dw $082D
|12EDBB| db $1F ; Raw block
|12EDBC| db $66, $44, $F3, $B2, $D8, $18, $EF, $2F
|12EDC4| db $48, $49, $D3, $D3, $99, $0C, $27, $10
|12EDCC| db $80, $00, $C0, $00, $A0, $40, $90, $60
|12EDD4| db $88, $70, $DC, $38, $DA, $3C, $DC, $3F
|12EDDC| db $27 ; Repeat byte
|12EDDD| db $00
|12EDDE| db $E0, $59 ; EXT Raw block
|12EDE0| db $5F, $00, $DF, $06, $DD, $04, $B9, $08
|12EDE8| db $79, $18, $F5, $50, $6D, $40, $AD, $80
|12EDF0| db $E0, $E0, $E2, $C6, $86, $0E, $9E, $5E
|12EDF8| db $E0, $A0, $7B, $5B, $B2, $AB, $DF, $56
|12EE00| db $AF, $6F, $90, $70, $8F, $7F, $89, $7F
|12EE08| db $1F, $84, $44, $20, $10, $0F, $00, $00
|12EE10| db $BF, $A0, $D0, $5F, $E8, $AF, $74, $57
|12EE18| db $5B, $6B, $1A, $1B, $7A, $7B, $5B, $6B
|12EE20| db $40, $20, $10, $88, $84, $E4, $84, $84
|12EE28| db $9C, $6C, $FE, $06, $2F, $DB, $AF, $DD
|12EE30| db $A7, $DE, $A3, $DF, $A1, $DF, $E0, $1F
|12EE38| db $03, $01
|12EE3A| db $25 ; Repeat byte
|12EE3B| db $00
|12EE3C| db $E0, $27 ; EXT Raw block
|12EE3E| db $10, $18, $17, $1F, $10, $1F, $AF, $B0
|12EE46| db $D7, $EF, $AF, $5F, $F8, $9F, $F0, $9F
|12EE4E| db $E7, $E0, $E0, $40, $0F, $1F, $3F, $3F
|12EE56| db $DF, $3E, $41, $BE, $7F, $80, $C0, $3F
|12EE5E| db $F0, $BF, $F8, $DF, $7C, $6F, $3E, $37
|12EE66| db $25 ; Repeat byte
|12EE67| db $00
|12EE68| db $0B ; Raw block
|12EE69| db $80, $C0, $1F, $1B, $0B, $0C, $17, $18
|12EE71| db $EB, $F7, $16, $EF
|12EE75| db $45 ; Repeat word
|12EE76| dw $6F5C
|12EE78| db $04 ; Raw block
|12EE79| db $E0, $F0, $E3, $07, $0F
|12EE7E| db $22 ; Repeat byte
|12EE7F| db $8F
|12EE80| db $83 ; Copy past
|12EE81| dw $02AC
|12EE83| db $07 ; Raw block
|12EE84| db $FF, $3F, $E7, $73, $CB, $79, $DF, $75
|12EE8C| db $43 ; Repeat word
|12EE8D| dw $77DD
|12EE8F| db $04 ; Raw block
|12EE90| db $60, $00, $3F, $7F, $7F
|12EE95| db $22 ; Repeat byte
|12EE96| db $77
|12EE97| db $02 ; Raw block
|12EE98| db $FE, $7D, $EE
|12EE9B| db $43 ; Repeat word
|12EE9C| dw $F625
|12EE9E| db $E0, $38 ; EXT Raw block
|12EEA0| db $AD, $E6, $BD, $FE, $BD, $FC, $9B, $98
|12EEA8| db $67, $7C, $3C, $2C, $AC, $BC, $BC, $98
|12EEB0| db $00, $00, $FF, $FC, $03, $FE, $FD, $C7
|12EEB8| db $9E, $B7, $8E, $FE, $FD, $FE, $81, $FF
|12EEC0| db $1E, $00, $00, $FC, $FE, $CE, $FC, $80
|12EEC8| db $1E, $FF, $BF, $F8, $B1, $F7, $A7, $6F
|12EED0| db $A8, $E7, $3F, $F0, $BF, $FF, $9F, $FF
|12EED8| db $00
|12EED9| db $22 ; Repeat byte
|12EEDA| db $3F
|12EEDB| db $06 ; Raw block
|12EEDC| db $38, $3F, $BF, $9F, $00, $F7, $4C
|12EEE3| db $43 ; Repeat word
|12EEE4| dw $4EFD
|12EEE6| db $E0, $6A ; EXT Raw block
|12EEE8| db $F8, $47, $F1, $0F, $FE, $0D, $FF, $4C
|12EEF0| db $DF, $66, $61, $60, $60, $61, $2F, $0F
|12EEF8| db $0D, $0E, $F5, $0E, $FB, $07, $EF, $38
|12EF00| db $F7, $3C, $F8, $1C, $FF, $0F, $FF, $00
|12EF08| db $FF, $07, $C0, $30, $78, $7F, $7F, $3F
|12EF10| db $0F, $70, $3F, $D0, $3F, $CF, $71, $9F
|12EF18| db $E0, $3F, $CE, $7B, $DE, $71, $DE, $61
|12EF20| db $9E, $61, $00, $0F, $1F, $3F, $7B, $71
|12EF28| db $61, $6D, $DD, $53, $EE, $21, $EF, $80
|12EF30| db $EF, $A0, $CF, $80, $D5, $4C, $9B, $0A
|12EF38| db $B7, $25, $20, $10, $90, $90, $B0, $22
|12EF40| db $64, $48, $80, $80, $C0, $80, $20, $40
|12EF48| db $90, $E0, $08, $70, $0C, $74, $CE, $B4
|12EF50| db $8D, $F6, $00
|12EF53| db $43 ; Repeat word
|12EF54| dw $8000
|12EF56| db $06 ; Raw block
|12EF57| db $80, $00, $00, $F3, $32, $FF, $00
|12EF5E| db $83 ; Copy past
|12EF5F| dw $0412
|12EF61| db $08 ; Raw block
|12EF62| db $F0, $0F, $F0, $6F, $D8, $C7, $98, $80
|12EF6A| db $0C
|12EF6B| db $24 ; Repeat byte
|12EF6C| db $00
|12EF6D| db $10 ; Raw block
|12EF6E| db $20, $67, $DF, $30, $CF, $3F, $E7, $1F
|12EF76| db $D0, $6F, $CF, $70, $E0, $7F, $BF, $3F
|12EF7E| db $FF
|12EF7F| db $26 ; Repeat byte
|12EF80| db $00
|12EF81| db $0A ; Raw block
|12EF82| db $40, $00, $FF, $00, $FD, $1C, $27, $DE
|12EF8A| db $93, $EE, $CB
|12EF8D| db $46 ; Repeat word
|12EF8E| dw $EB76
|12EF90| db $01 ; Raw block
|12EF91| db $00, $02
|12EF93| db $25 ; Repeat byte
|12EF94| db $00
|12EF95| db $01 ; Raw block
|12EF96| db $FF, $FF
|12EF98| db $22 ; Repeat byte
|12EF99| db $00
|12EF9A| db $04 ; Raw block
|12EF9B| db $FF, $FF, $00, $FF, $FF
|12EFA0| db $22 ; Repeat byte
|12EFA1| db $00
|12EFA2| db $83 ; Copy past
|12EFA3| dw $04B0
|12EFA5| db $00 ; Raw block
|12EFA6| db $FF
|12EFA7| db $22 ; Repeat byte
|12EFA8| db $00
|12EFA9| db $13 ; Raw block
|12EFAA| db $FF, $00, $00, $7E, $81, $E7, $7E, $91
|12EFB2| db $7E, $B1, $7E, $85, $7E, $83, $3E, $C3
|12EFBA| db $5A, $7E, $81, $00
|12EFBE| db $25 ; Repeat byte
|12EFBF| db $7E
|12EFC0| db $E4, $30 ; EXT Repeat byte
|12EFC2| db $00
|12EFC3| db $0E ; Raw block
|12EFC4| db $28, $10, $EF, $10, $FF, $EF, $07, $FF
|12EFCC| db $10, $EF, $FF, $D7, $EF, $10, $28
|12EFD3| db $22 ; Repeat byte
|12EFD4| db $10
|12EFD5| db $14 ; Raw block
|12EFD6| db $EF, $FF, $EF, $D7, $10, $10, $14, $08
|12EFDE| db $F7, $08, $FF, $EB, $1C, $F7, $68, $FF
|12EFE6| db $FF, $F7, $F7, $08, $14
|12EFEB| db $22 ; Repeat byte
|12EFEC| db $08
|12EFED| db $05 ; Raw block
|12EFEE| db $EB, $F7, $FF, $F7, $08, $08
|12EFF4| db $84 ; Copy past
|12EFF5| dw $0510
|12EFF7| db $09 ; Raw block
|12EFF8| db $D7, $10, $EF, $07, $FF, $FF, $EF, $FF
|12F000| db $10, $28
|12F002| db $22 ; Repeat byte
|12F003| db $10
|12F004| db $06 ; Raw block
|12F005| db $D7, $EF, $FF, $EF, $10, $10, $14
|12F00C| db $43 ; Repeat word
|12F00D| dw $FF08
|12F00F| db $09 ; Raw block
|12F010| db $F6, $23, $FE, $81, $FE, $FF, $EA, $F7
|12F018| db $08, $14
|12F01A| db $22 ; Repeat byte
|12F01B| db $08
|12F01C| db $05 ; Raw block
|12F01D| db $F6, $FE, $FE, $EA, $08, $08
|12F023| db $43 ; Repeat word
|12F024| dw $60DF
|12F026| db $0C ; Raw block
|12F027| db $CF, $70, $C3, $7C, $E1, $7E, $F0, $7F
|12F02F| db $9F, $1F, $FF, $00, $06
|12F034| db $22 ; Repeat byte
|12F035| db $01
|12F036| db $0E ; Raw block
|12F037| db $00, $00, $60, $00, $BC, $73, $3F, $F0
|12F03F| db $3F, $E0, $F8, $C7, $F0, $0F, $00
|12F046| db $23 ; Repeat byte
|12F047| db $FF
|12F048| db $04 ; Raw block
|12F049| db $00, $F8, $F8, $F0, $E0
|12F04E| db $23 ; Repeat byte
|12F04F| db $00
|12F050| db $0F ; Raw block
|12F051| db $FF, $00, $80, $7F, $BF, $7F, $E0, $60
|12F059| db $DF, $50, $B8, $27, $F4, $4C, $EB, $1B
|12F061| db $22 ; Repeat byte
|12F062| db $00
|12F063| db $04 ; Raw block
|12F064| db $1F, $20, $40, $03, $04
|12F069| db $83 ; Copy past
|12F06A| dw $04BE
|12F06C| db $0B ; Raw block
|12F06D| db $FD, $FE, $02, $01, $C5, $47, $6F, $AB
|12F075| db $7F, $43, $BD, $A3
|12F079| db $22 ; Repeat byte
|12F07A| db $00
|12F07B| db $04 ; Raw block
|12F07C| db $FC, $38, $10, $80, $40
|12F081| db $37 ; Repeat byte
|12F082| db $00
|12F083| db $0F ; Raw block
|12F084| db $FF, $00, $87, $78, $7B, $FC, $C5, $C6
|12F08C| db $BB, $82, $75, $38, $CB, $4C, $C5, $46
|12F094| db $22 ; Repeat byte
|12F095| db $00
|12F096| db $04 ; Raw block
|12F097| db $38, $44, $82, $30, $38
|12F09C| db $FF ; End of GFX 28

;===================================================================================================

GFX_29:
|12F09D| db $23 ; Repeat byte
|12F09E| db $00
|12F09F| db $0B ; Raw block
|12F0A0| db $03, $00, $06, $02, $0C, $04, $19, $09
|12F0A8| db $33, $12, $26, $04
|12F0AC| db $22 ; Repeat byte
|12F0AD| db $00
|12F0AE| db $04 ; Raw block
|12F0AF| db $01, $03, $06, $0C, $18
|12F0B4| db $23 ; Repeat byte
|12F0B5| db $00
|12F0B6| db $0B ; Raw block
|12F0B7| db $C0, $00, $60, $40, $30, $20, $98, $90
|12F0BF| db $CC, $48, $64, $20
|12F0C3| db $22 ; Repeat byte
|12F0C4| db $00
|12F0C5| db $05 ; Raw block
|12F0C6| db $80, $C0, $60, $30, $18, $3C
|12F0CC| db $4C ; Repeat word
|12F0CD| dw $2400
|12F0CF| db $02 ; Raw block
|12F0D0| db $3C, $00, $00
|12F0D3| db $25 ; Repeat byte
|12F0D4| db $18
|12F0D5| db $06 ; Raw block
|12F0D6| db $00, $E7, $24, $C3, $42, $81, $81
|12F0DD| db $23 ; Repeat byte
|12F0DE| db $00
|12F0DF| db $15 ; Raw block
|12F0E0| db $81, $81, $C3, $42, $E7, $24, $18, $3C
|12F0E8| db $7E, $FF, $FF, $7E, $3C, $18, $00, $00
|12F0F0| db $01, $00, $06, $00, $09, $01
|12F0F6| db $43 ; Repeat word
|12F0F7| dw $070F
|12F0F9| db $E0, $37 ; EXT Raw block
|12F0FB| db $1F, $0F, $1E, $0F, $00, $01, $07, $0E
|12F103| db $08, $08, $10, $10, $D8, $1F, $0C, $0F
|12F10B| db $EA, $EF, $F9, $FF, $FB, $FF, $FE, $FF
|12F113| db $FD, $FF, $FE, $FF, $F8, $FC, $1A, $09
|12F11B| db $0B, $0E, $0D, $0E, $37, $CE, $16, $EF
|12F123| db $50, $EF, $5D, $E2, $DF, $E0, $CB, $F6
|12F12B| db $8D, $F2, $87, $F8, $3F, $3F, $7F, $7F
|12F133| db $24 ; Repeat byte
|12F134| db $FF
|12F135| db $06 ; Raw block
|12F136| db $07, $F3, $0F, $F0, $0F, $FE, $01
|12F13D| db $47 ; Repeat word
|12F13E| dw $00FF
|12F140| db $27 ; Repeat byte
|12F141| db $FF
|12F142| db $14 ; Raw block
|12F143| db $9A, $7E, $95, $7C, $AA, $78, $CB, $39
|12F14B| db $D5, $3F, $ED, $1F, $B5, $4F, $15, $EF
|12F153| db $F9, $F2, $E5, $E4, $F0
|12F158| db $22 ; Repeat byte
|12F159| db $FC
|12F15A| db $43 ; Repeat word
|12F15B| dw $070A
|12F15D| db $00 ; Raw block
|12F15E| db $05
|12F15F| db $44 ; Repeat word
|12F160| dw $0403
|12F162| db $02 ; Raw block
|12F163| db $02, $01, $01
|12F166| db $22 ; Repeat byte
|12F167| db $00
|12F168| db $01 ; Raw block
|12F169| db $0F, $0F
|12F16B| db $22 ; Repeat byte
|12F16C| db $07
|12F16D| db $01 ; Raw block
|12F16E| db $03, $01
|12F170| db $43 ; Repeat word
|12F171| dw $FF00
|12F173| db $E0, $37 ; EXT Raw block
|12F175| db $7F, $FF, $6F, $EF, $56, $FE, $59, $EF
|12F17D| db $4D, $E5, $47, $F7, $57, $00, $7F, $6F
|12F185| db $46, $40, $50, $58, $48, $FF, $00, $E0
|12F18D| db $DF, $DC, $3C, $70, $F0, $E0, $E0, $C0
|12F195| db $C0, $C2, $C3, $D5, $D7, $00, $C0, $03
|12F19D| db $0F, $1F, $3F, $3C, $28, $92, $82, $14
|12F1A5| db $04, $3B, $00, $7F, $00, $E3, $00, $C1
|12F1AD| db $44 ; Repeat word
|12F1AE| dw $8000
|12F1B0| db $01 ; Raw block
|12F1B1| db $7D, $FB
|12F1B3| db $25 ; Repeat byte
|12F1B4| db $FF
|12F1B5| db $0A ; Raw block
|12F1B6| db $44, $44, $DD, $44, $BB, $00, $FF, $00
|12F1BE| db $C7, $00, $83
|12F1C1| db $24 ; Repeat byte
|12F1C2| db $00
|12F1C3| db $01 ; Raw block
|12F1C4| db $BB, $BB
|12F1C6| db $25 ; Repeat byte
|12F1C7| db $FF
|12F1C8| db $E0, $2C ; EXT Raw block
|12F1CA| db $C3, $80, $80, $78, $F8, $7E, $85, $87
|12F1D2| db $62, $03, $F8, $01, $8D, $01, $87, $00
|12F1DA| db $3F, $07, $01, $78, $FC, $FE, $FE, $FF
|12F1E2| db $9B, $96, $4D, $4A, $E7, $04, $F3, $02
|12F1EA| db $B9, $01, $1C, $00, $0F, $00, $07, $00
|12F1F2| db $60, $B0, $F8, $FC, $FE
|12F1F7| db $22 ; Repeat byte
|12F1F8| db $FF
|12F1F9| db $0A ; Raw block
|12F1FA| db $26, $04, $33, $12, $19, $09, $0C, $04
|12F202| db $06, $02, $03
|12F205| db $24 ; Repeat byte
|12F206| db $00
|12F207| db $04 ; Raw block
|12F208| db $18, $0C, $06, $03, $01
|12F20D| db $22 ; Repeat byte
|12F20E| db $00
|12F20F| db $0A ; Raw block
|12F210| db $64, $20, $CC, $48, $98, $90, $30, $20
|12F218| db $60, $40, $C0
|12F21B| db $24 ; Repeat byte
|12F21C| db $00
|12F21D| db $04 ; Raw block
|12F21E| db $18, $30, $60, $C0, $80
|12F223| db $26 ; Repeat byte
|12F224| db $00
|12F225| db $00 ; Raw block
|12F226| db $FF
|12F227| db $44 ; Repeat word
|12F228| dw $8100
|12F22A| db $00 ; Raw block
|12F22B| db $FF
|12F22C| db $27 ; Repeat byte
|12F22D| db $00
|12F22E| db $01 ; Raw block
|12F22F| db $7E, $7E
|12F231| db $22 ; Repeat byte
|12F232| db $00
|12F233| db $0F ; Raw block
|12F234| db $C3, $04, $81, $3A, $99, $22, $F1, $06
|12F23C| db $E3, $0C, $E7, $08, $FF, $00, $E7, $08
|12F244| db $27 ; Repeat byte
|12F245| db $FF
|12F246| db $17 ; Raw block
|12F247| db $15, $0F, $10, $0F, $12, $0F, $32, $1F
|12F24F| db $37, $1F, $3E, $1F, $3C, $1F, $20, $1F
|12F257| db $10, $10, $12, $32, $36, $3D, $33, $3F
|12F25F| db $43 ; Repeat word
|12F260| dw $FF3F
|12F262| db $02 ; Raw block
|12F263| db $C4, $FF, $86
|12F266| db $43 ; Repeat word
|12F267| dw $03FF
|12F269| db $08 ; Raw block
|12F26A| db $FE, $07, $F8, $0F, $F1, $17, $1B, $3D
|12F272| db $7E
|12F273| db $23 ; Repeat byte
|12F274| db $FF
|12F275| db $0E ; Raw block
|12F276| db $87, $F8, $8F, $F0, $3F, $CC, $7F, $BE
|12F27E| db $CF, $7F, $C7, $FF, $E0, $FF, $F0
|12F285| db $23 ; Repeat byte
|12F286| db $FF
|12F287| db $04 ; Raw block
|12F288| db $DF, $8F, $87, $C3, $E7
|12F28D| db $49 ; Repeat word
|12F28E| dw $00FF
|12F290| db $05 ; Raw block
|12F291| db $FC, $83, $70, $8F, $38, $DF
|12F297| db $24 ; Repeat byte
|12F298| db $FF
|12F299| db $02 ; Raw block
|12F29A| db $FC, $F0, $F8
|12F29D| db $45 ; Repeat word
|12F29E| dw $EF55
|12F2A0| db $05 ; Raw block
|12F2A1| db $95, $6F, $15, $EF, $0C, $F7
|12F2A7| db $43 ; Repeat word
|12F2A8| dw $FB04
|12F2AA| db $23 ; Repeat byte
|12F2AB| db $FC
|12F2AC| db $0D ; Raw block
|12F2AD| db $1C, $0C, $04, $0C, $80, $7F, $B2, $7F
|12F2B5| db $A1, $7E, $83, $7C, $86, $79
|12F2BB| db $43 ; Repeat word
|12F2BC| dw $738C
|12F2BE| db $04 ; Raw block
|12F2BF| db $98, $67, $F0, $FA, $FD
|12F2C4| db $24 ; Repeat byte
|12F2C5| db $FF
|12F2C6| db $03 ; Raw block
|12F2C7| db $E7, $57, $E5, $57
|12F2CB| db $43 ; Repeat word
|12F2CC| dw $5FED
|12F2CE| db $0B ; Raw block
|12F2CF| db $FD, $4F, $F5, $4F, $F8, $47, $E4, $5B
|12F2D7| db $48, $48, $40, $40
|12F2DB| db $22 ; Repeat byte
|12F2DC| db $60
|12F2DD| db $E0, $3D ; EXT Raw block
|12F2DF| db $40, $D2, $D6, $F3, $F7, $E5, $F7, $EA
|12F2E7| db $FB, $80, $FC, $45, $C7, $BA, $83, $ED
|12F2EF| db $A9, $29, $08, $08, $04, $03, $38, $44
|12F2F7| db $12, $AE, $E4, $E3, $6A, $E3, $69, $D1
|12F2FF| db $44, $A0, $02, $DF, $00, $AF, $1F, $A3
|12F307| db $63, $13, $15, $16, $3B, $7D, $60, $40
|12F30F| db $1C, $BA, $C6, $45, $7C, $BB, $39, $D6
|12F317| db $92, $ED, $44, $FF, $44, $55
|12F31D| db $22 ; Repeat byte
|12F31E| db $45
|12F31F| db $04 ; Raw block
|12F320| db $01, $83, $C6, $6D, $BB
|12F325| db $22 ; Repeat byte
|12F326| db $BA
|12F327| db $12 ; Raw block
|12F328| db $D3, $C3, $D9, $C1, $B5, $81, $63, $00
|12F330| db $C3, $00, $83, $01, $87, $03, $FF, $04
|12F338| db $3C, $3E, $7E
|12F33B| db $22 ; Repeat byte
|12F33C| db $FE
|12F33D| db $E0, $31 ; EXT Raw block
|12F33F| db $FC, $F8, $C4, $66, $A2, $B3, $70, $39
|12F347| db $A8, $2D, $50, $45, $EC, $25, $F4, $D5
|12F34F| db $B8, $AD, $99, $4C, $C6, $D2, $BA, $1A
|12F357| db $0A, $42, $BC, $FD, $7C, $7D, $78, $79
|12F35F| db $F8, $79, $60, $61, $3B, $01, $BF, $E1
|12F367| db $8E, $E2, $02, $82, $86, $86, $9E, $FE
|12F36F| db $1E, $1D
|12F371| db $25 ; Repeat byte
|12F372| db $00
|12F373| db $09 ; Raw block
|12F374| db $01, $00, $03, $01, $06, $03, $0C, $07
|12F37C| db $1E, $0F
|12F37E| db $22 ; Repeat byte
|12F37F| db $00
|12F380| db $19 ; Raw block
|12F381| db $01, $02, $04, $0C, $1E, $00, $00, $07
|12F389| db $00, $79, $00, $F2, $72, $AF, $EF, $17
|12F391| db $FF, $24, $FF, $01, $FF, $00, $07, $7E
|12F399| db $8D, $10
|12F39B| db $22 ; Repeat byte
|12F39C| db $00
|12F39D| db $17 ; Raw block
|12F39E| db $01, $00, $C7, $01, $FB, $07, $75, $0F
|12F3A6| db $A9, $97, $C9, $D7, $6A, $F6, $8A, $F6
|12F3AE| db $01, $C6, $3C, $9C, $5C, $3C, $1D, $7D
|12F3B6| db $43 ; Repeat word
|12F3B7| dw $1F20
|12F3B9| db $05 ; Raw block
|12F3BA| db $31, $0E, $12, $0D, $13, $0D
|12F3C0| db $43 ; Repeat word
|12F3C1| dw $0B17
|12F3C3| db $01 ; Raw block
|12F3C4| db $15, $0B
|12F3C6| db $22 ; Repeat byte
|12F3C7| db $3F
|12F3C8| db $00 ; Raw block
|12F3C9| db $1E
|12F3CA| db $22 ; Repeat byte
|12F3CB| db $1F
|12F3CC| db $17 ; Raw block
|12F3CD| db $1D, $3F, $C1, $77, $9B, $F7, $7B, $CB
|12F3D5| db $F7, $0B, $F7, $8D, $F3, $86, $F9, $87
|12F3DD| db $F8, $FF, $E7, $87, $0F, $0F, $BF, $FF
|12F3E5| db $44 ; Repeat word
|12F3E6| dw $E0FF
|12F3E8| db $0B ; Raw block
|12F3E9| db $C0, $FF, $C9, $FE, $82, $FD, $84, $FB
|12F3F1| db $08, $F7, $D1, $2F
|12F3F5| db $23 ; Repeat byte
|12F3F6| db $FF
|12F3F7| db $00 ; Raw block
|12F3F8| db $F7
|12F3F9| db $22 ; Repeat byte
|12F3FA| db $FD
|12F3FB| db $14 ; Raw block
|12F3FC| db $3C, $DF, $7E, $BF, $7C, $BF, $F8, $3F
|12F404| db $78, $BF, $39, $DF, $D0, $EF, $E8, $F7
|12F40C| db $FC, $FE, $FD, $FB, $FB
|12F411| db $22 ; Repeat byte
|12F412| db $FF
|12F413| db $43 ; Repeat word
|12F414| dw $FB06
|12F416| db $01 ; Raw block
|12F417| db $07, $FB
|12F419| db $43 ; Repeat word
|12F41A| dw $F78B
|12F41C| db $07 ; Raw block
|12F41D| db $13, $EF, $11, $EF, $21, $DF, $1E, $FE
|12F425| db $25 ; Repeat byte
|12F426| db $FF
|12F427| db $19 ; Raw block
|12F428| db $70, $8F, $E8, $17, $84, $7B, $62, $FD
|12F430| db $79, $FE, $3D, $FE, $1C, $FF, $10, $FF
|12F438| db $7F, $FF, $BF, $7F, $7F, $3F, $5F, $FF
|12F440| db $EF, $58
|12F442| db $43 ; Repeat word
|12F443| dw $5AEC
|12F445| db $E0, $26 ; EXT Raw block
|12F447| db $EB, $5D, $EF, $5D, $F7, $4E, $FB, $57
|12F44F| db $FD, $5A, $40, $41, $41, $40, $40, $60
|12F457| db $40, $40, $FE, $3C, $5F, $3D, $BE, $82
|12F45F| db $CF, $4C, $50, $B0, $BF, $C0, $FB, $67
|12F467| db $59, $B7, $01, $80, $41, $30, $0F
|12F46E| db $22 ; Repeat byte
|12F46F| db $00
|12F470| db $12 ; Raw block
|12F471| db $0C, $25, $29, $23, $2B, $26, $86, $0C
|12F479| db $E6, $0C, $36, $0C, $2E, $34, $5E, $74
|12F481| db $D2, $D4, $D1
|12F484| db $22 ; Repeat byte
|12F485| db $F3
|12F486| db $09 ; Raw block
|12F487| db $C3, $83, $C6, $83, $BB, $01, $45, $38
|12F48F| db $BA, $7C
|12F491| db $45 ; Repeat word
|12F492| dw $44FE
|12F494| db $04 ; Raw block
|12F495| db $7D, $A3, $7C, $C6, $83
|12F49A| db $22 ; Repeat byte
|12F49B| db $01
|12F49C| db $07 ; Raw block
|12F49D| db $19, $18, $6E, $FA, $67, $6A, $77, $76
|12F4A5| db $43 ; Repeat word
|12F4A6| dw $7277
|12F4A8| db $E0, $25 ; EXT Raw block
|12F4AA| db $3B, $39, $1D, $1C, $0E, $0E, $05, $95
|12F4B2| db $89, $8D, $8D, $C6, $E3, $F1, $45, $7C
|12F4BA| db $54, $FC, $8A, $EE, $C5, $67, $C2, $73
|12F4C2| db $C1, $69, $C8, $6C, $C8, $6E, $82, $03
|12F4CA| db $11, $98, $8C, $96, $93, $91
|12F4D0| db $83 ; Copy past
|12F4D1| dw $0002
|12F4D3| db $01 ; Raw block
|12F4D4| db $07, $03
|12F4D6| db $43 ; Repeat word
|12F4D7| dw $070C
|12F4D9| db $13 ; Raw block
|12F4DA| db $1C, $0F, $1F, $0C, $3C, $03, $00, $03
|12F4E2| db $04, $08, $08, $18, $1F, $3C, $7E, $1F
|12F4EA| db $FF, $3F, $DF, $3F
|12F4EE| db $43 ; Repeat word
|12F4EF| dw $9F6F
|12F4F1| db $08 ; Raw block
|12F4F2| db $33, $CF, $9C, $63, $5F, $A4, $7E, $FF
|12F4FA| db $FF
|12F4FB| db $22 ; Repeat byte
|12F4FC| db $7F
|12F4FD| db $15 ; Raw block
|12F4FE| db $FF, $7F, $00, $FF, $80, $FF, $C0, $FF
|12F506| db $D4, $FF, $C8, $FF, $80, $FF, $81, $FE
|12F50E| db $0F, $F1, $01, $87, $DF, $FF
|12F514| db $83 ; Copy past
|12F515| dw $03BB
|12F517| db $10 ; Raw block
|12F518| db $7E, $81, $E7, $7E, $91, $7E, $B1, $7E
|12F520| db $85, $7E, $93, $7E, $C3, $7E, $7E, $81
|12F528| db $00
|12F529| db $25 ; Repeat byte
|12F52A| db $7E
|12F52B| db $00 ; Raw block
|12F52C| db $00
|12F52D| db $43 ; Repeat word
|12F52E| dw $070F
|12F530| db $0A ; Raw block
|12F531| db $1E, $0F, $1E, $07, $3C, $03, $3F, $00
|12F539| db $15, $0E, $12
|12F53C| db $22 ; Repeat byte
|12F53D| db $0F
|12F53E| db $15 ; Raw block
|12F53F| db $1F, $1F, $3F, $3F, $17, $1B, $07, $F8
|12F547| db $0F, $F0, $1F, $E0, $38, $C7, $F3, $1F
|12F54F| db $F9, $3F, $9A, $7F, $88, $7F
|12F555| db $23 ; Repeat byte
|12F556| db $FF
|12F557| db $13 ; Raw block
|12F558| db $F3, $F9, $D8, $E8, $F3, $0F, $F7, $0F
|12F560| db $A5, $5F, $2D, $DF, $2E, $DF, $EE, $DF
|12F568| db $EC, $DF, $68, $9F
|12F56C| db $23 ; Repeat byte
|12F56D| db $FD
|12F56E| db $06 ; Raw block
|12F56F| db $FE, $FE, $FD, $7B, $F7, $F8, $F8
|12F576| db $22 ; Repeat byte
|12F577| db $FF
|12F578| db $08 ; Raw block
|12F579| db $DE, $FF, $B9, $FF, $02, $FB, $0C, $FF
|12F581| db $32
|12F582| db $23 ; Repeat byte
|12F583| db $FF
|12F584| db $0C ; Raw block
|12F585| db $DE, $99, $07, $FD, $FF, $E1, $1F, $60
|12F58D| db $9F, $22, $DF, $23, $DF
|12F592| db $83 ; Copy past
|12F593| dw $03CA
|12F595| db $06 ; Raw block
|12F596| db $10, $EF, $18, $E7, $FF, $FF, $7F
|12F59D| db $24 ; Repeat byte
|12F59E| db $FF
|12F59F| db $10 ; Raw block
|12F5A0| db $A1, $FF, $C1, $FF, $10, $FF, $33, $FC
|12F5A8| db $FF, $01, $FA, $1D, $ED, $3E, $48, $BF
|12F5B0| db $BF
|12F5B1| db $23 ; Repeat byte
|12F5B2| db $FF
|12F5B3| db $16 ; Raw block
|12F5B4| db $EF, $CF, $CF, $EF, $5D, $F7, $4D, $FA
|12F5BC| db $65, $FF, $70, $FF, $7C, $FF, $7F, $80
|12F5C4| db $7F, $FF, $00, $40, $60, $70, $78
|12F5CB| db $22 ; Repeat byte
|12F5CC| db $7F
|12F5CD| db $E0, $32 ; EXT Raw block
|12F5CF| db $00, $EA, $D7, $3B, $27, $D9, $D7, $7A
|12F5D7| db $F7, $FB, $07, $F8, $F6, $04, $FB, $FF
|12F5DF| db $00, $00, $C0, $20, $00, $00, $F1, $F8
|12F5E7| db $00, $FF, $00, $37, $ED, $4B, $D9, $91
|12F5EF| db $B3, $20, $64, $40, $49, $01, $13, $02
|12F5F7| db $26, $00, $00, $24, $4C, $9B, $B6, $EC
|12F5FF| db $D9, $FF, $00
|12F602| db $43 ; Repeat word
|12F603| dw $57FE
|12F605| db $09 ; Raw block
|12F606| db $56, $FF, $02, $AB, $80, $A9, $29, $6D
|12F60E| db $7C, $C6
|12F610| db $23 ; Repeat byte
|12F611| db $00
|12F612| db $E0, $33 ; EXT Raw block
|12F614| db $54, $56, $92, $39, $0A, $F6, $08, $F4
|12F61C| db $14, $EC, $2A, $DA, $4E, $BE, $C2, $3E
|12F624| db $D3, $3F, $CA, $3E, $FD, $FF, $FB, $F5
|12F62C| db $E1, $E1, $F0, $F9, $FC, $03, $AE, $61
|12F634| db $AF, $64, $41, $CA, $89, $9A, $91, $B2
|12F63C| db $21, $E6, $A1, $EE, $00, $10, $10, $34
|12F644| db $64, $4C, $18, $10
|12F648| db $FF ; End of GFX 29

;===================================================================================================

GFX_2A:
|12F649| db $0A ; Raw block
|12F64A| db $30, $D6, $FA, $0A, $10, $E8, $1C, $E4
|12F652| db $FA, $06, $F7
|12F655| db $44 ; Repeat word
|12F656| dw $05FB
|12F658| db $04 ; Raw block
|12F659| db $09, $05, $07, $03, $01
|12F65E| db $22 ; Repeat byte
|12F65F| db $00
|12F660| db $43 ; Repeat word
|12F661| dw $B74C
|12F663| db $0B ; Raw block
|12F664| db $CC, $37, $FC, $87, $58, $67, $17, $98
|12F66C| db $4C, $CF, $07, $07
|12F670| db $23 ; Repeat byte
|12F671| db $00
|12F672| db $03 ; Raw block
|12F673| db $80, $60, $30, $F8
|12F677| db $43 ; Repeat word
|12F678| dw $00FF
|12F67A| db $0B ; Raw block
|12F67B| db $1F, $00, $30, $00, $69, $0F, $D6, $19
|12F683| db $AF, $3E, $5F, $7F
|12F687| db $23 ; Repeat byte
|12F688| db $FF
|12F689| db $13 ; Raw block
|12F68A| db $F0, $E0, $C0, $80, $00, $00, $80, $00
|12F692| db $C0, $00, $FF, $00, $7F, $00, $83, $82
|12F69A| db $7F, $FC, $87, $78
|12F69E| db $24 ; Repeat byte
|12F69F| db $FF
|12F6A0| db $13 ; Raw block
|12F6A1| db $7C, $01, $03, $DF, $00, $F2, $02, $F9
|12F6A9| db $01, $7C, $00, $3C, $00, $39, $01, $72
|12F6B1| db $03, $E4, $06, $E0
|12F6B5| db $62 ; Increment fill
|12F6B6| db $FD
|12F6B7| db $1B ; Raw block
|12F6B8| db $FF, $FE, $FC, $F9, $FC, $07, $4C, $73
|12F6C0| db $36, $B9, $3B, $BC, $FD, $1E, $DF, $EE
|12F6C8| db $6F, $76, $37, $38, $00, $80, $40, $40
|12F6D0| db $00, $00, $80, $C0
|12F6D4| db $4F ; Repeat word
|12F6D5| dw $45C6
|12F6D7| db $27 ; Repeat byte
|12F6D8| db $38
|12F6D9| db $2F ; Repeat byte
|12F6DA| db $FF
|12F6DB| db $27 ; Repeat byte
|12F6DC| db $00
|12F6DD| db $07 ; Raw block
|12F6DE| db $FF, $4F, $FF, $63, $FF, $30, $FF, $1C
|12F6E6| db $86 ; Copy past
|12F6E7| dw $00C0
|12F6E9| db $00 ; Raw block
|12F6EA| db $5C
|12F6EB| db $28 ; Repeat byte
|12F6EC| db $FF
|12F6ED| db $87 ; Copy past
|12F6EE| dw $00C1
|12F6F0| db $02 ; Raw block
|12F6F1| db $0F, $FF, $03
|12F6F4| db $43 ; Repeat word
|12F6F5| dw $00FF
|12F6F7| db $23 ; Repeat byte
|12F6F8| db $FF
|12F6F9| db $E0, $33 ; EXT Raw block
|12F6FB| db $7F, $3F, $1F, $00, $00, $FF, $EF, $10
|12F703| db $FF, $40, $BF, $0C, $92, $4D, $CB, $61
|12F70B| db $FA, $30, $F2, $40, $00, $00, $0E, $5E
|12F713| db $7C, $7C, $3D, $7D, $E3, $1C, $F4, $6B
|12F71B| db $5B, $D7, $96, $9E, $2C, $3C, $5C, $7C
|12F723| db $3E, $7E, $E7, $B7, $00, $00, $20, $61
|12F72B| db $C3, $83, $81, $08
|12F72F| db $45 ; Repeat word
|12F730| dw $807F
|12F732| db $45 ; Repeat word
|12F733| dw $8060
|12F735| db $43 ; Repeat word
|12F736| dw $00E0
|12F738| db $25 ; Repeat byte
|12F739| db $7F
|12F73A| db $22 ; Repeat byte
|12F73B| db $FF
|12F73C| db $43 ; Repeat word
|12F73D| dw $FF00
|12F73F| db $2A ; Repeat byte
|12F740| db $00
|12F741| db $27 ; Repeat byte
|12F742| db $FF
|12F743| db $37 ; Repeat byte
|12F744| db $00
|12F745| db $14 ; Raw block
|12F746| db $EC, $3D, $D6, $1F, $EA, $0F, $F4, $07
|12F74E| db $7B, $03, $3F, $00, $1F, $00, $0F, $00
|12F756| db $C2, $E0, $F0, $F8, $FC
|12F75B| db $22 ; Repeat byte
|12F75C| db $FF
|12F75D| db $0F ; Raw block
|12F75E| db $C0, $00, $E0, $00, $FF, $00, $3F, $00
|12F766| db $83, $80, $4F, $CC, $29, $6C, $1A, $3E
|12F76E| db $23 ; Repeat byte
|12F76F| db $FF
|12F770| db $E0, $27 ; EXT Raw block
|12F772| db $7F, $33, $93, $C1, $E8, $0C, $E4, $06
|12F77A| db $72, $03, $31, $01, $37, $07, $34, $07
|12F782| db $3D, $01, $3E, $00, $F3, $F9, $FC, $FE
|12F78A| db $F8, $F8, $FE, $FF, $0D, $F0, $FB, $01
|12F792| db $37, $C3, $68, $87, $40, $80, $7F, $80
|12F79A| db $43 ; Repeat word
|12F79B| dw $FF00
|12F79D| db $04 ; Raw block
|12F79E| db $06, $0D, $1B, $37, $3F
|12F7A3| db $22 ; Repeat byte
|12F7A4| db $00
|12F7A5| db $19 ; Raw block
|12F7A6| db $EF, $00, $F7, $E0, $FB, $F0, $05, $F8
|12F7AE| db $00, $00, $FE, $02, $07, $F9, $03, $FC
|12F7B6| db $D8, $EC, $F6, $FB, $FF, $01, $00, $00
|12F7BE| db $EB, $0F
|12F7C0| db $43 ; Repeat word
|12F7C1| dw $0CE9
|12F7C3| db $05 ; Raw block
|12F7C4| db $75, $06, $3A, $03, $1D, $01
|12F7CA| db $43 ; Repeat word
|12F7CB| dw $000C
|12F7CD| db $01 ; Raw block
|12F7CE| db $F0, $F3
|12F7D0| db $83 ; Copy past
|12F7D1| dw $01A8
|12F7D3| db $1F ; Raw block
|12F7D4| db $FF, $FF, $A1, $BE, $5B, $62, $25, $30
|12F7DC| db $41, $7C, $A5, $E6, $8F, $8E, $33, $1E
|12F7E4| db $7F, $1E, $40, $9C, $CE, $82, $18, $70
|12F7EC| db $E0, $E0, $C6, $45, $C7, $44, $C7, $47
|12F7F4| db $47 ; Repeat word
|12F7F5| dw $40C0
|12F7F7| db $01 ; Raw block
|12F7F8| db $FF, $7F
|12F7FA| db $22 ; Repeat byte
|12F7FB| db $38
|12F7FC| db $23 ; Repeat byte
|12F7FD| db $3F
|12F7FE| db $00 ; Raw block
|12F7FF| db $00
|12F800| db $22 ; Repeat byte
|12F801| db $FF
|12F802| db $02 ; Raw block
|12F803| db $00, $FF, $FF
|12F806| db $27 ; Repeat byte
|12F807| db $00
|12F808| db $01 ; Raw block
|12F809| db $FF, $FF
|12F80B| db $22 ; Repeat byte
|12F80C| db $00
|12F80D| db $23 ; Repeat byte
|12F80E| db $FF
|12F80F| db $00 ; Raw block
|12F810| db $00
|12F811| db $22 ; Repeat byte
|12F812| db $FF
|12F813| db $45 ; Repeat word
|12F814| dw $FF7F
|12F816| db $05 ; Raw block
|12F817| db $00, $FF, $70, $8F, $7F, $FF
|12F81D| db $25 ; Repeat byte
|12F81E| db $00
|12F81F| db $02 ; Raw block
|12F820| db $7F, $7F, $70
|12F823| db $28 ; Repeat byte
|12F824| db $FF
|12F825| db $02 ; Raw block
|12F826| db $00, $FF, $00
|12F829| db $22 ; Repeat byte
|12F82A| db $FF
|12F82B| db $25 ; Repeat byte
|12F82C| db $00
|12F82D| db $E0, $42 ; EXT Raw block
|12F82F| db $FF, $FF, $00, $C2, $64, $E7, $7D, $FF
|12F837| db $3C, $FF, $18, $FF, $00, $DD, $22, $A1
|12F83F| db $66, $C5, $46, $7D, $7C, $7C, $7E, $3C
|12F847| db $00, $18, $38, $AA, $72, $A7, $79, $EA
|12F84F| db $7D, $50, $DE, $5E, $FE, $B5, $6D, $8B
|12F857| db $41, $CF, $05, $05, $08, $0C, $21, $01
|12F85F| db $02, $34, $30, $56, $DE, $5A, $DE, $58
|12F867| db $DE, $59, $DE, $01, $FF, $7D, $FF, $7A
|12F86F| db $83, $7D, $81
|12F872| db $22 ; Repeat byte
|12F873| db $21
|12F874| db $11 ; Raw block
|12F875| db $20, $01, $01, $7C, $7E, $31, $1F, $41
|12F87D| db $3E, $83, $7C, $06, $F9, $7C, $83, $F8
|12F885| db $87, $00
|12F887| db $22 ; Repeat byte
|12F888| db $FF
|12F889| db $05 ; Raw block
|12F88A| db $DF, $BF, $7F, $FF, $FE, $FC
|12F890| db $39 ; Repeat byte
|12F891| db $00
|12F892| db $E0, $6F ; EXT Raw block
|12F894| db $7C, $B1, $6E, $AF, $3A, $E3, $50, $C1
|12F89C| db $B0, $81, $C0, $C1, $30, $F1, $D8, $F9
|12F8A4| db $8E, $90, $9C, $3E, $7E, $3E, $0E, $06
|12F8AC| db $88, $9E, $55, $CF, $A4, $ED, $93, $F9
|12F8B4| db $86, $D0, $C2, $98, $4D, $A0, $ED, $8A
|12F8BC| db $61, $30, $12, $06, $2F, $27, $13, $11
|12F8C4| db $BD, $FF, $47, $78, $21, $32, $50, $9C
|12F8CC| db $83, $F5, $6B, $E0, $1C, $C1, $53, $70
|12F8D4| db $00, $80, $CC, $63, $08, $1C, $3E, $8F
|12F8DC| db $81, $FF, $BE, $D1, $D9, $E8, $EC, $F4
|12F8E4| db $E5, $FB, $EA, $FD, $1B, $FC, $F6, $F8
|12F8EC| db $00, $0E, $07, $03, $00, $00, $01, $03
|12F8F4| db $FD, $80, $DB, $E0, $37, $C3, $EF, $87
|12F8FC| db $D0, $0F, $80, $00, $3F, $00, $DF, $00
|12F904| db $83 ; Copy past
|12F905| dw $01C0
|12F907| db $E0, $42 ; EXT Raw block
|12F909| db $EF, $FF, $E0, $30, $FF, $00, $FE, $FF
|12F911| db $7F, $7F, $BF, $BF, $FF, $80, $00, $80
|12F919| db $5E, $1E, $A1, $39, $00, $00, $80, $40
|12F921| db $00, $7F, $E1, $C6, $D8, $FC, $5C, $7E
|12F929| db $4E, $7F, $A6, $3F, $D2, $1F, $69, $8F
|12F931| db $33, $82, $19, $80, $1B, $9D, $9E, $CE
|12F939| db $E6, $70, $7D, $7F, $8F, $70, $A8, $57
|12F941| db $AF, $50, $A8, $57, $8F, $70, $8F, $77
|12F949| db $88, $77, $FF
|12F94C| db $28 ; Repeat byte
|12F94D| db $00
|12F94E| db $8E ; Copy past
|12F94F| dw $0390
|12F951| db $28 ; Repeat byte
|12F952| db $00
|12F953| db $85 ; Copy past
|12F954| dw $024A
|12F956| db $85 ; Copy past
|12F957| dw $024A
|12F959| db $02 ; Raw block
|12F95A| db $FF, $70, $8F
|12F95D| db $22 ; Repeat byte
|12F95E| db $7F
|12F95F| db $07 ; Raw block
|12F960| db $70, $7F, $7F, $70, $7F, $7F, $FF, $00
|12F968| db $22 ; Repeat byte
|12F969| db $FF
|12F96A| db $02 ; Raw block
|12F96B| db $00, $FF, $00
|12F96E| db $22 ; Repeat byte
|12F96F| db $FF
|12F970| db $02 ; Raw block
|12F971| db $00, $FF, $00
|12F974| db $23 ; Repeat byte
|12F975| db $FF
|12F976| db $83 ; Copy past
|12F977| dw $022B
|12F979| db $E0, $61 ; EXT Raw block
|12F97B| db $FF, $FF, $CD, $4E, $D1, $5E, $E5, $66
|12F983| db $A5, $66, $9D, $7F, $C8, $3C, $A5, $5D
|12F98B| db $BB, $47, $30, $20, $18, $18, $00, $03
|12F993| db $02, $00, $EB, $27, $FF, $18, $FE, $00
|12F99B| db $FC, $01, $78, $83, $F7, $C0, $63, $CC
|12F9A3| db $41, $9E, $90, $C0, $C1, $4B, $17, $0F
|12F9AB| db $1F, $3F, $DB, $5F, $CA, $6E, $A9, $7D
|12F9B3| db $F4, $7C, $F5, $7C, $D6, $5C, $C7, $6D
|12F9BB| db $25, $FD, $20, $11, $02, $03, $03, $23
|12F9C3| db $12, $02, $E2, $26, $CB, $CB, $71, $11
|12F9CB| db $FF, $FF, $40, $40, $BF, $80, $40, $00
|12F9D3| db $9F, $00, $D9, $34, $EE, $00, $BF, $7F
|12F9DB| db $FF, $E0
|12F9DD| db $37 ; Repeat byte
|12F9DE| db $00
|12F9DF| db $E0, $27 ; EXT Raw block
|12F9E1| db $3B, $42, $83, $3A, $42, $03, $BE, $83
|12F9E9| db $9E, $83, $6E, $63, $BE, $3F, $E0, $21
|12F9F1| db $84, $C4, $FC, $7C, $7C, $9C, $C0, $1E
|12F9F9| db $D7, $18, $D3, $5C, $D9, $5E, $EF, $6F
|12FA01| db $B0, $70, $DF, $3F, $60, $9F, $3F, $C0
|12FA09| db $22 ; Repeat byte
|12FA0A| db $20
|12FA0B| db $01 ; Raw block
|12FA0C| db $10, $0F
|12FA0E| db $22 ; Repeat byte
|12FA0F| db $00
|12FA10| db $13 ; Raw block
|12FA11| db $FC, $03, $F6, $79, $1B, $1C, $ED, $EE
|12FA19| db $35, $F6, $95, $76, $D5, $36, $F5, $16
|12FA21| db $00, $00, $E0, $10
|12FA25| db $23 ; Repeat byte
|12FA26| db $08
|12FA27| db $01 ; Raw block
|12FA28| db $FF, $FF
|12FA2A| db $22 ; Repeat byte
|12FA2B| db $00
|12FA2C| db $84 ; Copy past
|12FA2D| dw $0229
|12FA2F| db $22 ; Repeat byte
|12FA30| db $00
|12FA31| db $83 ; Copy past
|12FA32| dw $00B6
|12FA34| db $00 ; Raw block
|12FA35| db $FF
|12FA36| db $22 ; Repeat byte
|12FA37| db $00
|12FA38| db $13 ; Raw block
|12FA39| db $FF, $00, $00, $7E, $81, $C3, $7E, $A5
|12FA41| db $7E, $A3, $7E, $89, $7E, $A1, $7E, $C3
|12FA49| db $7E, $7E, $81, $00
|12FA4D| db $25 ; Repeat byte
|12FA4E| db $7E
|12FA4F| db $E4, $30 ; EXT Repeat byte
|12FA51| db $00
|12FA52| db $06 ; Raw block
|12FA53| db $FF, $FF, $FC, $FF, $F0, $FF, $E0
|12FA5A| db $44 ; Repeat word
|12FA5B| dw $C0FF
|12FA5D| db $02 ; Raw block
|12FA5E| db $81, $FF, $83
|12FA61| db $28 ; Repeat byte
|12FA62| db $FF
|12FA63| db $08 ; Raw block
|12FA64| db $80, $FF, $01, $FF, $07, $FF, $1F, $FF
|12FA6C| db $7F
|12FA6D| db $2E ; Repeat byte
|12FA6E| db $FF
|12FA6F| db $00 ; Raw block
|12FA70| db $87
|12FA71| db $44 ; Repeat word
|12FA72| dw $0FFF
|12FA74| db $43 ; Repeat word
|12FA75| dw $FF1F
|12FA77| db $43 ; Repeat word
|12FA78| dw $FF3F
|12FA7A| db $00 ; Raw block
|12FA7B| db $7F
|12FA7C| db $2C ; Repeat byte
|12FA7D| db $FF
|12FA7E| db $43 ; Repeat word
|12FA7F| dw $FFFE
|12FA81| db $06 ; Raw block
|12FA82| db $FC, $FF, $F8, $FF, $F0, $FF, $C0
|12FA89| db $28 ; Repeat byte
|12FA8A| db $FF
|12FA8B| db $11 ; Raw block
|12FA8C| db $FD, $43, $FB, $44, $D2, $6D, $D4, $6B
|12FA94| db $DC, $6B, $EF, $70, $87, $07, $FF, $00
|12FA9C| db $00, $0C
|12FA9E| db $22 ; Repeat byte
|12FA9F| db $0F
|12FAA0| db $06 ; Raw block
|12FAA1| db $00, $78, $00, $FF, $C0, $FF, $00
|12FAA8| db $43 ; Repeat word
|12FAA9| dw $C07F
|12FAAB| db $03 ; Raw block
|12FAAC| db $F0, $8F, $E7, $1F
|12FAB0| db $22 ; Repeat byte
|12FAB1| db $FF
|12FAB2| db $05 ; Raw block
|12FAB3| db $00, $00, $13, $F0, $E0, $C0
|12FAB9| db $22 ; Repeat byte
|12FABA| db $00
|12FABB| db $0F ; Raw block
|12FABC| db $FF, $00, $BF, $7F, $E3, $7C, $C2, $7C
|12FAC4| db $FF, $00, $8D, $72, $F5, $7A, $F8, $7E
|12FACC| db $22 ; Repeat byte
|12FACD| db $00
|12FACE| db $24 ; Repeat byte
|12FACF| db $01
|12FAD0| db $83 ; Copy past
|12FAD1| dw $00E6
|12FAD3| db $0B ; Raw block
|12FAD4| db $80, $7F, $47, $B8, $3C, $43, $53, $6F
|12FADC| db $AA, $3E, $9A, $1E
|12FAE0| db $23 ; Repeat byte
|12FAE1| db $00
|12FAE2| db $03 ; Raw block
|12FAE3| db $80, $80, $C1, $E1
|12FAE7| db $37 ; Repeat byte
|12FAE8| db $00
|12FAE9| db $0F ; Raw block
|12FAEA| db $FF, $00, $FD, $FE, $07, $FE, $FB, $06
|12FAF2| db $05, $FA, $8B, $8C, $85, $F6, $FB, $82
|12FAFA| db $24 ; Repeat byte
|12FAFB| db $00
|12FAFC| db $02 ; Raw block
|12FAFD| db $70, $08, $04
|12FB00| db $FF ; End of GFX 2A

;===================================================================================================

GFX_2B:
|12FB01| db $0F ; Raw block
|12FB02| db $9D, $66, $DA, $3D, $EC, $1B, $C5, $36
|12FB0A| db $C3, $72, $B0, $D4, $68, $8F, $EF, $08
|12FB12| db $22 ; Repeat byte
|12FB13| db $00
|12FB14| db $14 ; Raw block
|12FB15| db $08, $0C, $0B, $10, $10, $39, $C6, $73
|12FB1D| db $8C, $A7, $D8, $D3, $6C, $6D, $B6, $DA
|12FB25| db $B7, $77, $5A, $3E, $93
|12FB2A| db $25 ; Repeat byte
|12FB2B| db $00
|12FB2C| db $01 ; Raw block
|12FB2D| db $80, $40
|12FB2F| db $47 ; Repeat word
|12FB30| dw $00C0
|12FB32| db $01 ; Raw block
|12FB33| db $FF, $00
|12FB35| db $43 ; Repeat word
|12FB36| dw $7FC0
|12FB38| db $01 ; Raw block
|12FB39| db $FF, $00
|12FB3B| db $24 ; Repeat byte
|12FB3C| db $7F
|12FB3D| db $22 ; Repeat byte
|12FB3E| db $00
|12FB3F| db $0B ; Raw block
|12FB40| db $EF, $08, $DB, $13, $A7, $34, $A7, $30
|12FB48| db $A6, $32, $A7, $33
|12FB4C| db $43 ; Repeat word
|12FB4D| dw $32A6
|12FB4F| db $02 ; Raw block
|12FB50| db $F7, $EC, $C8
|12FB53| db $43 ; Repeat word
|12FB54| dw $C9C8
|12FB56| db $08 ; Raw block
|12FB57| db $C9, $FF, $00, $E3, $1C, $C1, $3E, $BD
|12FB5F| db $72
|12FB60| db $43 ; Repeat word
|12FB61| dw $61AE
|12FB63| db $03 ; Raw block
|12FB64| db $A7, $60, $93, $70
|12FB68| db $23 ; Repeat byte
|12FB69| db $00
|12FB6A| db $1F ; Raw block
|12FB6B| db $10, $10, $18, $0C, $FE, $7F, $FD, $BF
|12FB73| db $FB, $DF, $F7, $EF, $EF, $F7, $DF, $FB
|12FB7B| db $BF, $FD, $7F, $FE, $FE, $FD, $FB, $F7
|12FB83| db $EF, $DF, $BF, $7F, $11, $EE, $2E, $FF
|12FB8B| db $43 ; Repeat word
|12FB8C| dw $D151
|12FB8E| db $E0, $5B ; EXT Raw block
|12FB90| db $5D, $DD, $55, $D5, $53, $D3, $57, $D6
|12FB98| db $00, $00, $2E, $2E, $22, $2A, $2C, $29
|12FBA0| db $57, $D6, $53, $D3, $55, $D5, $5D, $DD
|12FBA8| db $51, $C1, $4F, $C0, $61, $E1, $00, $FF
|12FBB0| db $29, $2C, $2A, $22, $3E, $3F, $1E, $00
|12FBB8| db $FF, $00, $80, $7F, $98, $60, $97, $67
|12FBC0| db $88, $68, $88, $6A, $88, $68, $87, $67
|12FBC8| db $00, $00, $1F, $18, $17, $15, $17, $18
|12FBD0| db $FF, $00, $00, $FF, $03, $03, $10, $1F
|12FBD8| db $E7, $F8, $88, $B7, $93, $EF, $26, $5E
|12FBE0| db $00, $00, $FC, $E0, $00, $40, $00, $81
|12FBE8| db $80, $7F, $FF, $00
|12FBEC| db $43 ; Repeat word
|12FBED| dw $7F80
|12FBEF| db $01 ; Raw block
|12FBF0| db $FF, $00
|12FBF2| db $43 ; Repeat word
|12FBF3| dw $7F80
|12FBF5| db $00 ; Raw block
|12FBF6| db $FF
|12FBF7| db $43 ; Repeat word
|12FBF8| dw $7F00
|12FBFA| db $05 ; Raw block
|12FBFB| db $7F, $00, $7F, $7F, $00, $FF
|12FC01| db $83 ; Copy past
|12FC02| dw $00D8
|12FC04| db $07 ; Raw block
|12FC05| db $00, $2E, $FF, $20, $FE, $0D, $FF, $26
|12FC0D| db $85 ; Copy past
|12FC0E| dw $0108
|12FC10| db $04 ; Raw block
|12FC11| db $80, $81, $80, $80, $00
|12FC16| db $27 ; Repeat byte
|12FC17| db $FF
|12FC18| db $07 ; Raw block
|12FC19| db $FE, $FF, $FC, $FF, $F8, $FF, $F1, $FE
|12FC21| db $24 ; Repeat byte
|12FC22| db $FF
|12FC23| db $12 ; Raw block
|12FC24| db $FE, $FC, $F8, $6F, $9C, $35, $CE, $5B
|12FC2C| db $E4, $7E, $E1, $BD, $73, $C7, $21, $E9
|12FC34| db $1B, $7D, $83
|12FC37| db $23 ; Repeat byte
|12FC38| db $00
|12FC39| db $E0, $43 ; EXT Raw block
|12FC3B| db $01, $19, $05, $01, $81, $60, $42, $EC
|12FC43| db $80, $EF, $00, $ED, $00, $DE, $00, $AF
|12FC4B| db $00, $77, $03, $FF, $1E, $11, $14, $36
|12FC53| db $73, $55, $8A, $27, $DB, $6C, $9F, $64
|12FC5B| db $2D, $53, $4C, $B4, $08, $FB, $10, $7F
|12FC63| db $3C, $FF, $FE, $FF, $08, $04, $80, $13
|12FC6B| db $34, $B9, $7F, $FF, $F7, $38, $4E, $B1
|12FC73| db $76, $99, $AE, $D9, $EB, $1C, $F7, $08
|12FC7B| db $3C, $C3, $1D, $E3
|12FC7F| db $24 ; Repeat byte
|12FC80| db $00
|12FC81| db $02 ; Raw block
|12FC82| db $03, $07, $03
|12FC85| db $43 ; Repeat word
|12FC86| dw $4CB3
|12FC88| db $0B ; Raw block
|12FC89| db $9F, $60, $C8, $37, $25, $DB, $2C, $DB
|12FC91| db $F7, $10, $EF, $08
|12FC95| db $25 ; Repeat byte
|12FC96| db $00
|12FC97| db $10 ; Raw block
|12FC98| db $08, $10, $FF, $00, $FF, $FF, $7E, $81
|12FCA0| db $81, $00, $7E, $7E, $C3, $FF, $04, $E3
|12FCA8| db $FF
|12FCA9| db $83 ; Copy past
|12FCAA| dw $00D7
|12FCAC| db $03 ; Raw block
|12FCAD| db $7E, $81, $00, $18
|12FCB1| db $48 ; Repeat word
|12FCB2| dw $C000
|12FCB4| db $01 ; Raw block
|12FCB5| db $FF, $00
|12FCB7| db $43 ; Repeat word
|12FCB8| dw $7FC0
|12FCBA| db $01 ; Raw block
|12FCBB| db $CF, $70
|12FCBD| db $24 ; Repeat byte
|12FCBE| db $7F
|12FCBF| db $22 ; Repeat byte
|12FCC0| db $00
|12FCC1| db $0F ; Raw block
|12FCC2| db $0E, $F1, $1C, $E3, $1B, $E5, $B5, $6F
|12FCCA| db $79, $EB, $70, $CB, $79, $C7, $BE, $42
|12FCD2| db $23 ; Repeat byte
|12FCD3| db $00
|12FCD4| db $05 ; Raw block
|12FCD5| db $04, $04, $00, $01, $CB, $26
|12FCDB| db $47 ; Repeat word
|12FCDC| dw $25CE
|12FCDE| db $06 ; Raw block
|12FCDF| db $FE, $55, $BF, $24, $9A, $17, $10
|12FCE6| db $23 ; Repeat byte
|12FCE7| db $12
|12FCE8| db $02 ; Raw block
|12FCE9| db $02, $42, $60
|12FCEC| db $43 ; Repeat word
|12FCED| dw $00FF
|12FCEF| db $1F ; Raw block
|12FCF0| db $FD, $02, $FA, $05, $F7, $08, $FB, $05
|12FCF8| db $FB, $04, $FD, $02, $00, $00, $02, $07
|12FD00| db $0F, $07, $07, $03, $FF, $00, $DF, $20
|12FD08| db $FB, $04, $6F, $B0, $FD, $66, $FE, $7F
|12FD10| db $23 ; Repeat byte
|12FD11| db $FF
|12FD12| db $04 ; Raw block
|12FD13| db $00, $20, $24, $F4, $FE
|12FD18| db $22 ; Repeat byte
|12FD19| db $FF
|12FD1A| db $1E ; Raw block
|12FD1B| db $FC, $03, $EE, $11, $A7, $58, $97, $68
|12FD23| db $B7, $48, $7B, $94, $FD, $7A, $FD, $FA
|12FD2B| db $03, $11, $58, $78, $78, $FC, $FE, $FE
|12FD33| db $00, $3F, $1F, $40, $6F, $C0, $6F
|12FD3A| db $46 ; Repeat word
|12FD3B| dw $6CD0
|12FD3D| db $04 ; Raw block
|12FD3E| db $6F, $D0, $C0, $BF, $30
|12FD43| db $24 ; Repeat byte
|12FD44| db $27
|12FD45| db $43 ; Repeat word
|12FD46| dw $7F80
|12FD48| db $83 ; Copy past
|12FD49| dw $00C0
|12FD4B| db $00 ; Raw block
|12FD4C| db $FF
|12FD4D| db $44 ; Repeat word
|12FD4E| dw $807F
|12FD50| db $00 ; Raw block
|12FD51| db $FF
|12FD52| db $22 ; Repeat byte
|12FD53| db $7F
|12FD54| db $05 ; Raw block
|12FD55| db $00, $7F, $00, $00, $7F, $00
|12FD5B| db $43 ; Repeat word
|12FD5C| dw $7F80
|12FD5E| db $83 ; Copy past
|12FD5F| dw $0278
|12FD61| db $47 ; Repeat word
|12FD62| dw $00FF
|12FD64| db $01 ; Raw block
|12FD65| db $00, $7F
|12FD67| db $25 ; Repeat byte
|12FD68| db $00
|12FD69| db $00 ; Raw block
|12FD6A| db $EE
|12FD6B| db $22 ; Repeat byte
|12FD6C| db $CC
|12FD6D| db $00 ; Raw block
|12FD6E| db $BB
|12FD6F| db $22 ; Repeat byte
|12FD70| db $33
|12FD71| db $00 ; Raw block
|12FD72| db $EE
|12FD73| db $22 ; Repeat byte
|12FD74| db $CC
|12FD75| db $00 ; Raw block
|12FD76| db $BB
|12FD77| db $24 ; Repeat byte
|12FD78| db $33
|12FD79| db $01 ; Raw block
|12FD7A| db $CC, $CC
|12FD7C| db $83 ; Copy past
|12FD7D| dw $02B0
|12FD7F| db $47 ; Repeat word
|12FD80| dw $00FF
|12FD82| db $45 ; Repeat word
|12FD83| dw $7F80
|12FD85| db $00 ; Raw block
|12FD86| db $FF
|12FD87| db $26 ; Repeat byte
|12FD88| db $00
|12FD89| db $01 ; Raw block
|12FD8A| db $7F, $00
|12FD8C| db $27 ; Repeat byte
|12FD8D| db $FF
|12FD8E| db $07 ; Raw block
|12FD8F| db $C7, $FF, $0B, $E7, $2C, $C3, $DC, $33
|12FD97| db $24 ; Repeat byte
|12FD98| db $FF
|12FD99| db $12 ; Raw block
|12FD9A| db $D7, $13, $01, $FF, $FF, $FB, $FF, $31
|12FDA2| db $FB, $11, $FB, $25, $BF, $8E, $57, $78
|12FDAA| db $B7, $FD, $12
|12FDAD| db $22 ; Repeat byte
|12FDAE| db $FF
|12FDAF| db $0B ; Raw block
|12FDB0| db $75, $51, $20, $00, $00, $E7, $FE, $E7
|12FDB8| db $3E, $E7, $BE, $67
|12FDBC| db $44 ; Repeat word
|12FDBD| dw $E73E
|12FDBF| db $43 ; Repeat word
|12FDC0| dw $BE67
|12FDC2| db $22 ; Repeat byte
|12FDC3| db $18
|12FDC4| db $E0, $20 ; EXT Raw block
|12FDC6| db $98, $18, $18, $98, $98, $E5, $FF, $E7
|12FDCE| db $3F, $E7, $BF, $65, $3D, $E6, $3E, $E7
|12FDD6| db $3F, $67, $BF, $66, $BF, $1A, $18, $18
|12FDDE| db $9A, $19, $18, $98, $99, $D1, $72, $89
|12FDE6| db $6A
|12FDE7| db $43 ; Repeat word
|12FDE8| dw $3AD9
|12FDEA| db $43 ; Repeat word
|12FDEB| dw $3BD8
|12FDED| db $05 ; Raw block
|12FDEE| db $DA, $3B, $4D, $BD, $0C, $14
|12FDF4| db $24 ; Repeat byte
|12FDF5| db $04
|12FDF6| db $15 ; Raw block
|12FDF7| db $02, $A1, $6C, $2E, $E8, $27, $E5, $94
|12FDFF| db $70, $D7, $2C, $6D, $93, $33, $CC, $1C
|12FE07| db $E3, $13, $11, $18, $0F, $03
|12FE0D| db $22 ; Repeat byte
|12FE0E| db $00
|12FE0F| db $11 ; Raw block
|12FE10| db $7E, $00, $2F, $91, $7B, $C4, $79, $C6
|12FE18| db $6C, $D3, $76, $C9, $7B, $C4, $B9, $46
|12FE20| db $81, $40
|12FE22| db $25 ; Repeat byte
|12FE23| db $00
|12FE24| db $83 ; Copy past
|12FE25| dw $01BE
|12FE27| db $08 ; Raw block
|12FE28| db $DF, $20, $FB, $24, $2F, $F4, $FD, $FE
|12FE30| db $FE
|12FE31| db $22 ; Repeat byte
|12FE32| db $FF
|12FE33| db $00 ; Raw block
|12FE34| db $00
|12FE35| db $86 ; Copy past
|12FE36| dw $0238
|12FE38| db $17 ; Raw block
|12FE39| db $DF, $20, $E6, $19, $EB, $1C, $EF, $15
|12FE41| db $F7, $0B, $FB, $05, $D7, $2B, $DF, $27
|12FE49| db $20, $19, $1D, $1F, $0F, $07, $2F, $3F
|12FE51| db $83 ; Copy past
|12FE52| dw $0126
|12FE54| db $07 ; Raw block
|12FE55| db $FD, $FE, $6F, $F4, $FB, $64, $9F, $60
|12FE5D| db $44 ; Repeat word
|12FE5E| dw $00FF
|12FE60| db $0E ; Raw block
|12FE61| db $FF, $FE, $F4, $64, $60, $00, $00, $FD
|12FE69| db $FE, $BB, $7C, $DB, $3C, $EF, $10
|12FE70| db $47 ; Repeat word
|12FE71| dw $00FF
|12FE73| db $03 ; Raw block
|12FE74| db $FE, $7C, $3C, $10
|12FE78| db $23 ; Repeat byte
|12FE79| db $00
|12FE7A| db $1B ; Raw block
|12FE7B| db $EF, $10, $E8, $F0, $FF, $07, $F8, $07
|12FE83| db $0F, $00, $F0, $F0, $1F, $FF, $FF, $00
|12FE8B| db $E7, $07, $00, $00, $F0, $0F, $00, $00
|12FE93| db $68, $A8, $69, $A9
|12FE97| db $43 ; Repeat word
|12FE98| dw $AB6B
|12FE9A| db $01 ; Raw block
|12FE9B| db $69, $A9
|12FE9D| db $45 ; Repeat word
|12FE9E| dw $A868
|12FEA0| db $04 ; Raw block
|12FEA1| db $57, $56, $54, $54, $56
|12FEA6| db $22 ; Repeat byte
|12FEA7| db $57
|12FEA8| db $17 ; Raw block
|12FEA9| db $68, $A8, $58, $98, $44, $84, $43, $83
|12FEB1| db $3F, $80, $C0, $40, $FF, $7F, $FF, $00
|12FEB9| db $57, $67, $7B, $7C, $7F, $3F, $00, $00
|12FEC1| db $22 ; Repeat byte
|12FEC2| db $FF
|12FEC3| db $0C ; Raw block
|12FEC4| db $AF, $FF, $CB, $FF, $8B, $FF, $F3, $FF
|12FECC| db $C2, $FF, $FE, $FF, $F8
|12FED1| db $27 ; Repeat byte
|12FED2| db $FF
|12FED3| db $1C ; Raw block
|12FED4| db $3F, $FF, $B3, $B3, $E3, $E3, $E6, $E6
|12FEDC| db $3D, $3F, $19, $19, $99, $99, $FF, $FF
|12FEE4| db $3F, $B3, $E3, $E6, $3D, $19, $99, $FF
|12FEEC| db $3F, $FF, $BF, $BF, $F7
|12FEF1| db $22 ; Repeat byte
|12FEF2| db $FF
|12FEF3| db $E0, $27 ; EXT Raw block
|12FEF5| db $FD, $FF, $F9, $FF, $BF, $FF, $FB, $FB
|12FEFD| db $3F, $BF, $F7, $FF, $FD, $F9, $BF, $FB
|12FF05| db $97, $EC, $A9, $DE, $67, $E0, $8B, $F8
|12FF0D| db $CF, $F7, $CB, $FC, $A5, $FE, $AF, $C2
|12FF15| db $80, $C0, $98, $E4, $E0, $E0, $C0, $D0
|12FF1D| db $22 ; Repeat byte
|12FF1E| db $FF
|12FF1F| db $08 ; Raw block
|12FF20| db $4E, $FF, $04, $3C, $C3, $10, $EF, $86
|12FF28| db $79
|12FF29| db $83 ; Copy past
|12FF2A| dw $03C6
|12FF2C| db $24 ; Repeat byte
|12FF2D| db $FF
|12FF2E| db $12 ; Raw block
|12FF2F| db $79, $10, $00, $FF, $FC, $FF, $38, $FF
|12FF37| db $10, $7C, $83, $10, $EF, $07, $F8, $6F
|12FF3F| db $90, $FF, $00
|12FF42| db $24 ; Repeat byte
|12FF43| db $FF
|12FF44| db $14 ; Raw block
|12FF45| db $F8, $90, $00, $E6, $1E, $72, $8E, $39
|12FF4D| db $C7, $9C, $63, $CC, $33, $EE, $11, $9D
|12FF55| db $63, $0C, $F3, $01, $01
|12FF5A| db $25 ; Repeat byte
|12FF5B| db $00
|12FF5C| db $0F ; Raw block
|12FF5D| db $8F, $F0, $89, $F6, $09, $F6, $0B, $F4
|12FF65| db $0E, $F1, $2C, $F3, $CE, $F1, $5F, $E0
|12FF6D| db $27 ; Repeat byte
|12FF6E| db $00
|12FF6F| db $09 ; Raw block
|12FF70| db $BE, $43, $9D, $63, $DE, $21, $EB, $14
|12FF78| db $F9, $06
|12FF7A| db $43 ; Repeat word
|12FF7B| dw $02FD
|12FF7D| db $01 ; Raw block
|12FF7E| db $D5, $2A
|12FF80| db $27 ; Repeat byte
|12FF81| db $00
|12FF82| db $11 ; Raw block
|12FF83| db $EF, $18, $E7, $18, $F7, $08, $7E, $83
|12FF8B| db $7D, $C3, $BE, $C1, $77, $98, $DB, $3C
|12FF93| db $08, $08
|12FF95| db $25 ; Repeat byte
|12FF96| db $00
|12FF97| db $17 ; Raw block
|12FF98| db $F7, $0B, $EA, $17, $F4, $0B, $FD, $02
|12FFA0| db $EF, $15, $FB, $05, $FD, $02, $FE, $01
|12FFA8| db $0F, $1F, $0B, $03, $1F, $07, $03, $01
|12FFB0| db $97 ; Copy past
|12FFB1| dw $0078
|12FFB3| db $85 ; Copy past
|12FFB4| dw $00CA
|12FFB6| db $E0, $29 ; EXT Raw block
|12FFB8| db $90, $60, $9C, $60, $8B, $4F, $9B, $1F
|12FFC0| db $FF, $00, $15, $17, $18, $1F, $1F, $30
|12FFC8| db $60, $00, $9A, $96, $FD, $F4, $07, $00
|12FFD0| db $70, $03, $AC, $70, $AF, $DF, $DE, $AF
|12FFD8| db $FF, $00, $61, $02, $F8, $FC, $8F, $21
|12FFE0| db $06, $00
|12FFE2| db $43 ; Repeat word
|12FFE3| dw $40FF
|12FFE5| db $0B ; Raw block
|12FFE6| db $EA, $55, $98, $37, $B5, $3F, $EA, $2A
|12FFEE| db $E8, $28, $68, $A8
|12FFF2| db $22 ; Repeat byte
|12FFF3| db $00
|12FFF4| db $04 ; Raw block
|12FFF5| db $40, $40, $55, $57, $57
|12FFFA| db $45 ; Repeat word
|12FFFB| dw $7F80
|12FFFD| db $01 ; Raw block
|12FFFE| db $FF, $00

;===================================================================================================

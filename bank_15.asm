org $158000

;===================================================================================================

|158000| db $C5, $3A, $B9, $46, $4E
|158005| db $83 ; Copy past
|158006| dw $04D3
|158008| db $06 ; Raw block
|158009| db $80, $CE, $79, $3D, $79, $CE, $80
|158010| db $37 ; Repeat byte
|158011| db $00
|158012| db $50 ; Repeat word
|158013| dw $0038
|158015| db $26 ; Repeat byte
|158016| db $28
|158017| db $25 ; Repeat byte
|158018| db $00
|158019| db $44 ; Repeat word
|15801A| dw $00FF
|15801C| db $27 ; Repeat byte
|15801D| db $00
|15801E| db $04 ; Raw block
|15801F| db $FF, $80, $FF, $00, $00
|158024| db $FF ; End of GFX 80

;===================================================================================================

GFX_81:
|158025| db $E0, $50 ; EXT Raw block
|158027| db $07, $00, $18, $07, $23, $1F, $4F, $3F
|15802F| db $5F, $3B, $BF, $74, $BF, $6B, $BE, $68
|158037| db $07, $1F, $3F, $7F, $7F, $FB, $F4, $F3
|15803F| db $C0, $00, $30, $C0, $C8, $F0, $F4, $F8
|158047| db $FC, $98, $FC, $60, $BC, $90, $7A, $10
|15804F| db $C0, $F0, $F8, $FC, $FC, $9C, $6C, $CE
|158057| db $07, $00, $08, $07, $1E, $0F, $3F, $17
|15805F| db $3F, $0B, $27, $00, $1F, $03, $3F, $13
|158067| db $07, $0F, $1F, $3F, $37, $3F, $18, $20
|15806F| db $E0, $00, $18, $E0, $04, $F8, $02, $FC
|158077| db $B2
|158078| db $43 ; Repeat word
|158079| dw $FAFC
|15807B| db $05 ; Raw block
|15807C| db $5C, $D4, $08, $E0, $F8, $FC
|158082| db $23 ; Repeat byte
|158083| db $FE
|158084| db $00 ; Raw block
|158085| db $FC
|158086| db $83 ; Copy past
|158087| dw $0000
|158089| db $0F ; Raw block
|15808A| db $20, $1F, $21, $1F, $4F, $3F, $4E, $3F
|158092| db $40, $3F, $63, $3F, $07, $1F, $3F, $3F
|15809A| db $23 ; Repeat byte
|15809B| db $7F
|15809C| db $83 ; Copy past
|15809D| dw $0018
|15809F| db $03 ; Raw block
|1580A0| db $08, $F0, $E8, $F0
|1580A4| db $43 ; Repeat word
|1580A5| dw $F8FC
|1580A7| db $43 ; Repeat word
|1580A8| dw $F0FA
|1580AA| db $0A ; Raw block
|1580AB| db $C0, $F0, $F8, $F8, $FC, $FC, $FE, $FE
|1580B3| db $1F, $00, $27
|1580B6| db $83 ; Copy past
|1580B7| dw $0005
|1580B9| db $08 ; Raw block
|1580BA| db $39, $99, $76, $B8, $77, $FC, $73, $FE
|1580C2| db $01
|1580C3| db $83 ; Copy past
|1580C4| dw $0011
|1580C6| db $15 ; Raw block
|1580C7| db $FF, $FF, $FB, $F9, $FC, $00, $E2, $FC
|1580CF| db $F1, $FE, $F9, $8E, $9F, $60, $1D, $E4
|1580D7| db $0E, $F0, $6C, $90, $FC, $FE
|1580DD| db $22 ; Repeat byte
|1580DE| db $FF
|1580DF| db $02 ; Raw block
|1580E0| db $FB, $FE, $9C
|1580E3| db $23 ; Repeat byte
|1580E4| db $00
|1580E5| db $05 ; Raw block
|1580E6| db $03, $00, $07, $03, $0C, $07
|1580EC| db $45 ; Repeat word
|1580ED| dw $0F18
|1580EF| db $04 ; Raw block
|1580F0| db $00, $00, $03, $07, $0F
|1580F5| db $23 ; Repeat byte
|1580F6| db $1F
|1580F7| db $0F ; Raw block
|1580F8| db $00, $FF, $1F, $E1, $FF, $02, $FF, $01
|158100| db $FF, $C0, $7F, $80, $FF, $1F, $E0, $1F
|158108| db $23 ; Repeat byte
|158109| db $FF
|15810A| db $02 ; Raw block
|15810B| db $7F, $FF, $E0
|15810E| db $25 ; Repeat byte
|15810F| db $00
|158110| db $05 ; Raw block
|158111| db $07, $00, $0E, $01, $1E, $01
|158117| db $43 ; Repeat word
|158118| dw $051A
|15811A| db $22 ; Repeat byte
|15811B| db $00
|15811C| db $04 ; Raw block
|15811D| db $07, $0B, $13, $17, $17
|158122| db $25 ; Repeat byte
|158123| db $00
|158124| db $03 ; Raw block
|158125| db $F0, $00, $F8, $D0
|158129| db $43 ; Repeat word
|15812A| dw $D87C
|15812C| db $01 ; Raw block
|15812D| db $7E, $DC
|15812F| db $22 ; Repeat byte
|158130| db $00
|158131| db $83 ; Copy past
|158132| dw $0029
|158134| db $00 ; Raw block
|158135| db $FE
|158136| db $E4, $35 ; EXT Repeat byte
|158138| db $00
|158139| db $09 ; Raw block
|15813A| db $07, $00, $0F, $00, $1E, $01, $1C, $03
|158142| db $25, $03
|158144| db $22 ; Repeat byte
|158145| db $00
|158146| db $04 ; Raw block
|158147| db $07, $09, $13, $1F, $3F
|15814C| db $25 ; Repeat byte
|15814D| db $00
|15814E| db $09 ; Raw block
|15814F| db $F0, $00, $18, $F0, $38, $F0, $7C, $F0
|158157| db $BC, $E8
|158159| db $22 ; Repeat byte
|15815A| db $00
|15815B| db $84 ; Copy past
|15815C| dw $0089
|15815E| db $0A ; Raw block
|15815F| db $5F, $28, $5C, $2C, $B9, $68, $BE, $74
|158167| db $5F, $23, $23
|15816A| db $24 ; Repeat byte
|15816B| db $00
|15816C| db $12 ; Raw block
|15816D| db $71, $73, $F7, $FB, $7C, $23, $00, $00
|158175| db $FA, $10, $3C, $30, $98, $10, $70, $20
|15817D| db $E0, $C0, $C0
|158180| db $24 ; Repeat byte
|158181| db $00
|158182| db $12 ; Raw block
|158183| db $8E, $CC, $E8, $D0, $20, $C0, $00, $00
|15818B| db $5C, $1C, $40, $00, $39, $01, $35, $11
|158193| db $1F, $0E, $0E
|158196| db $24 ; Repeat byte
|158197| db $00
|158198| db $14 ; Raw block
|158199| db $63, $7F, $3E, $2E, $11, $0E, $00, $00
|1581A1| db $94, $08, $FA, $EC, $F1, $9E, $F9, $1E
|1581A9| db $FD, $1E, $1E, $0C, $0C
|1581AE| db $22 ; Repeat byte
|1581AF| db $00
|1581B0| db $14 ; Raw block
|1581B1| db $FC, $1E, $7F, $FF, $FF, $1E, $0C, $00
|1581B9| db $3F, $1D, $3F, $03, $6D, $3F, $63, $3F
|1581C1| db $77, $3F, $3F, $1C, $3C
|1581C6| db $22 ; Repeat byte
|1581C7| db $00
|1581C8| db $01 ; Raw block
|1581C9| db $3F, $3F
|1581CB| db $22 ; Repeat byte
|1581CC| db $7F
|1581CD| db $0D ; Raw block
|1581CE| db $3F, $3C, $00, $FE, $EC, $FC, $C8, $FC
|1581D6| db $88, $F8, $80, $F0, $00, $C0
|1581DC| db $24 ; Repeat byte
|1581DD| db $00
|1581DE| db $10 ; Raw block
|1581DF| db $F2, $F4, $F4, $F8, $F0, $C0, $00, $00
|1581E7| db $CF, $40, $FB, $74, $7C, $03, $27, $18
|1581EF| db $1C
|1581F0| db $26 ; Repeat byte
|1581F1| db $00
|1581F2| db $04 ; Raw block
|1581F3| db $BC, $8B, $7C, $27, $1C
|1581F8| db $22 ; Repeat byte
|1581F9| db $00
|1581FA| db $0C ; Raw block
|1581FB| db $F4, $08, $CC, $30, $3C, $C8, $FE, $38
|158203| db $7A, $24, $62, $1C, $3C
|158208| db $22 ; Repeat byte
|158209| db $00
|15820A| db $0B ; Raw block
|15820B| db $34, $CC, $3C, $FE, $7A, $62, $3C, $00
|158213| db $18, $0F, $19, $0E
|158217| db $43 ; Repeat word
|158218| dw $0C1B
|15821A| db $03 ; Raw block
|15821B| db $1E, $09, $1D, $0B
|15821F| db $43 ; Repeat word
|158220| dw $0F1B
|158222| db $0E ; Raw block
|158223| db $1F, $1E, $1C, $1C, $19, $1B, $1F, $1F
|15822B| db $7F, $80, $E0, $1F, $9F, $7F, $7F
|158232| db $25 ; Repeat byte
|158233| db $FF
|158234| db $05 ; Raw block
|158235| db $F0, $FF, $C0, $80, $1F, $7F
|15823B| db $24 ; Repeat byte
|15823C| db $FF
|15823D| db $E0, $2F ; EXT Raw block
|15823F| db $3B, $04, $32, $0C, $2E, $10, $11, $0E
|158247| db $0F, $00, $07, $01, $08, $07, $0F, $00
|15824F| db $27, $3F, $2F, $11, $0F, $07, $08, $0F
|158257| db $FE, $1C, $7E, $50, $72, $4C, $C4, $38
|15825F| db $F8, $00, $E0, $C0, $20, $C0, $E0, $00
|158267| db $FE, $BE, $B2, $C4, $F8, $E0, $20, $E0
|15826F| db $E4, $2F ; EXT Repeat byte
|158271| db $00
|158272| db $0A ; Raw block
|158273| db $2F, $0B, $3F, $1B, $3B, $04, $4C, $33
|15827B| db $47, $38, $3C
|15827E| db $24 ; Repeat byte
|15827F| db $00
|158280| db $14 ; Raw block
|158281| db $37, $27, $3B, $4C, $47, $3C, $00, $00
|158289| db $FE, $90, $F2, $6C, $E7, $18, $0D, $F2
|158291| db $F9, $06, $22, $1C, $3C
|158296| db $22 ; Repeat byte
|158297| db $00
|158298| db $18 ; Raw block
|158299| db $FE, $F2, $E7, $0D, $F9, $22, $3C, $00
|1582A1| db $0F, $00, $37, $0F, $7F, $2F, $7F, $21
|1582A9| db $D1, $6E, $D0, $6F, $D4, $6B, $FF, $70
|1582B1| db $0F
|1582B2| db $85 ; Copy past
|1582B3| dw $00A1
|1582B5| db $1D ; Raw block
|1582B6| db $F8, $F0, $00, $EC, $F0, $FE, $F4, $FE
|1582BE| db $84, $8B, $76, $0B, $F6, $2B, $D6, $FF
|1582C6| db $0E, $F0, $FC, $FE, $FE, $FF, $FF, $DF
|1582CE| db $1F, $0F, $00, $1F, $0F, $2F
|1582D4| db $83 ; Copy past
|1582D5| dw $0005
|1582D7| db $05 ; Raw block
|1582D8| db $37, $9B, $77, $FC, $17, $9E
|1582DE| db $83 ; Copy past
|1582DF| dw $0040
|1582E1| db $01 ; Raw block
|1582E2| db $7F, $7F
|1582E4| db $22 ; Repeat byte
|1582E5| db $FF
|1582E6| db $05 ; Raw block
|1582E7| db $F0, $00, $FC, $F0, $FA, $F4
|1582ED| db $43 ; Repeat word
|1582EE| dw $F6FD
|1582F0| db $08 ; Raw block
|1582F1| db $DF, $F0, $3B, $F2, $7F, $F0, $F0, $FC
|1582F9| db $FE
|1582FA| db $22 ; Repeat byte
|1582FB| db $FF
|1582FC| db $0A ; Raw block
|1582FD| db $FD, $FF, $0F, $00, $3F, $0F, $7F, $3F
|158305| db $7F, $37, $B9
|158308| db $43 ; Repeat word
|158309| dw $BC77
|15830B| db $02 ; Raw block
|15830C| db $6F, $FE, $27
|15830F| db $83 ; Copy past
|158310| dw $0310
|158312| db $23 ; Repeat byte
|158313| db $FF
|158314| db $83 ; Copy past
|158315| dw $0348
|158317| db $04 ; Raw block
|158318| db $FE, $FC, $FE, $EC, $9D
|15831D| db $43 ; Repeat word
|15831E| dw $3DEE
|158320| db $02 ; Raw block
|158321| db $F6, $7F, $E4
|158324| db $83 ; Copy past
|158325| dw $0328
|158327| db $23 ; Repeat byte
|158328| db $FF
|158329| db $12 ; Raw block
|15832A| db $03, $00, $07, $00, $0A, $00, $0F, $00
|158332| db $17, $08, $35, $0A, $5D, $02, $5F, $10
|15833A| db $03, $04, $0F
|15833D| db $84 ; Copy past
|15833E| dw $0340
|158340| db $17 ; Raw block
|158341| db $E4, $00, $DE, $00, $EC, $00, $44, $00
|158349| db $88, $00, $8C, $00, $F4, $00, $DA, $00
|158351| db $E4, $3A, $14, $BC, $F8, $FC, $FC, $E6
|158359| db $4B ; Repeat word
|15835A| dw $0F1B
|15835C| db $03 ; Raw block
|15835D| db $0B, $07, $07, $00
|158361| db $25 ; Repeat byte
|158362| db $1F
|158363| db $11 ; Raw block
|158364| db $0F, $07, $FE, $83, $CE, $BB, $F6, $5D
|15836C| db $FB, $6F, $FD, $77, $FE, $7B, $FF, $01
|158374| db $C1, $00
|158376| db $26 ; Repeat byte
|158377| db $FF
|158378| db $E0, $44 ; EXT Raw block
|15837A| db $C1, $FE, $7F, $FD, $BF, $FB, $DF, $F7
|158382| db $EF, $EF, $F7, $DF, $FB, $BF, $FD, $7F
|15838A| db $FE, $FE, $FD, $FB, $F7, $EF, $DF, $BF
|158392| db $7F, $00, $00, $3C, $3C, $7A, $46, $F1
|15839A| db $8F, $E1, $9F, $A1, $DF, $41, $7F, $F1
|1583A2| db $BF, $00, $3C, $46, $8F, $9F, $DF, $7F
|1583AA| db $BF, $0F, $00, $1B, $07, $3F, $17, $3F
|1583B2| db $13, $67, $38, $66, $38, $69, $36, $73
|1583BA| db $3F, $0F, $1F, $3F, $3F
|1583BF| db $23 ; Repeat byte
|1583C0| db $7F
|1583C1| db $03 ; Raw block
|1583C2| db $F0, $00, $F8, $E0
|1583C6| db $43 ; Repeat word
|1583C7| dw $E8FC
|1583C9| db $07 ; Raw block
|1583CA| db $F6, $6C, $76, $0C, $C6, $BC, $8E, $7C
|1583D2| db $84 ; Copy past
|1583D3| dw $011B
|1583D5| db $02 ; Raw block
|1583D6| db $FE, $7E, $FE
|1583D9| db $99 ; Copy past
|1583DA| dw $03F0
|1583DC| db $0A ; Raw block
|1583DD| db $08, $00, $3C, $00, $3E, $00, $1C, $00
|1583E5| db $3C, $00, $08
|1583E8| db $2A ; Repeat byte
|1583E9| db $00
|1583EA| db $0C ; Raw block
|1583EB| db $FF, $00, $B3, $0C, $BC, $13, $7F, $1C
|1583F3| db $5E, $24, $46, $38, $3C
|1583F8| db $22 ; Repeat byte
|1583F9| db $00
|1583FA| db $0C ; Raw block
|1583FB| db $FC, $F3, $FC, $7F, $5E, $46, $3C, $00
|158403| db $FF, $00, $CD, $30, $3D
|158408| db $87 ; Copy past
|158409| dw $022D
|15840B| db $22 ; Repeat byte
|15840C| db $00
|15840D| db $02 ; Raw block
|15840E| db $3F, $CF, $3F
|158411| db $84 ; Copy past
|158412| dw $023B
|158414| db $01 ; Raw block
|158415| db $CF, $43
|158417| db $86 ; Copy past
|158418| dw $0212
|15841A| db $26 ; Repeat byte
|15841B| db $00
|15841C| db $00 ; Raw block
|15841D| db $BF
|15841E| db $83 ; Copy past
|15841F| dw $0221
|158421| db $22 ; Repeat byte
|158422| db $00
|158423| db $0C ; Raw block
|158424| db $F4, $C8, $C8, $30, $3C, $C8, $FC, $38
|15842C| db $FA, $04, $46, $38, $3C
|158431| db $22 ; Repeat byte
|158432| db $00
|158433| db $04 ; Raw block
|158434| db $F4, $C8, $3C, $FC, $FA
|158439| db $83 ; Copy past
|15843A| dw $0495
|15843C| db $03 ; Raw block
|15843D| db $43, $B3, $0C, $7C
|158441| db $83 ; Copy past
|158442| dw $0485
|158444| db $03 ; Raw block
|158445| db $20, $22, $1C, $1C
|158449| db $22 ; Repeat byte
|15844A| db $00
|15844B| db $0C ; Raw block
|15844C| db $BF, $F3, $7C, $7F, $5E, $22, $1C, $00
|158454| db $FF, $C2, $CD, $30, $3E
|158459| db $83 ; Copy past
|15845A| dw $022D
|15845C| db $03 ; Raw block
|15845D| db $04, $44, $38, $38
|158461| db $22 ; Repeat byte
|158462| db $00
|158463| db $E0, $37 ; EXT Raw block
|158465| db $FD, $CF, $3E, $FE, $7A, $44, $38, $00
|15846D| db $74, $00, $5F, $2C, $5F, $20, $8C, $70
|158475| db $72, $00, $FA, $00, $89, $70, $70, $00
|15847D| db $7F, $5E, $5E, $8F, $73, $8B, $89, $70
|158485| db $3A, $00, $C1, $00, $3A, $00, $62, $20
|15848D| db $E4, $60, $F2, $30, $3D, $0C, $0E, $00
|158495| db $C6, $3F, $F6, $DE, $9C, $CE, $33, $0E
|15849D| db $23 ; Repeat byte
|15849E| db $00
|15849F| db $10 ; Raw block
|1584A0| db $38, $38, $7C, $44, $6C, $54, $54, $7C
|1584A8| db $6C, $7C, $54, $7C, $00, $00, $38, $44
|1584B0| db $54
|1584B1| db $22 ; Repeat byte
|1584B2| db $7C
|1584B3| db $43 ; Repeat word
|1584B4| dw $7848
|1584B6| db $43 ; Repeat word
|1584B7| dw $3828
|1584B9| db $03 ; Raw block
|1584BA| db $14, $1C, $08, $08
|1584BE| db $23 ; Repeat byte
|1584BF| db $00
|1584C0| db $0B ; Raw block
|1584C1| db $78, $78, $38, $38, $1C, $08, $00, $00
|1584C9| db $F2, $8E, $A4, $DC
|1584CD| db $43 ; Repeat word
|1584CE| dw $7848
|1584D0| db $02 ; Raw block
|1584D1| db $2C, $3C, $12
|1584D4| db $84 ; Copy past
|1584D5| dw $01D2
|1584D7| db $06 ; Raw block
|1584D8| db $8E, $DC, $78, $78, $3C, $1E, $0C
|1584DF| db $22 ; Repeat byte
|1584E0| db $00
|1584E1| db $09 ; Raw block
|1584E2| db $01, $01, $06, $07, $01, $7E, $06, $07
|1584EA| db $01, $01
|1584EC| db $24 ; Repeat byte
|1584ED| db $00
|1584EE| db $0C ; Raw block
|1584EF| db $01, $07, $7E, $07, $01, $00, $00, $3F
|1584F7| db $1C, $7F, $20, $7C, $33
|1584FC| db $86 ; Copy past
|1584FD| dw $0486
|1584FF| db $22 ; Repeat byte
|158500| db $00
|158501| db $02 ; Raw block
|158502| db $3F, $7F, $7C
|158505| db $84 ; Copy past
|158506| dw $0493
|158508| db $05 ; Raw block
|158509| db $FC, $F8, $FE, $04, $3E, $CC
|15850F| db $86 ; Copy past
|158510| dw $022E
|158512| db $22 ; Repeat byte
|158513| db $00
|158514| db $02 ; Raw block
|158515| db $FC, $FE, $3E
|158518| db $84 ; Copy past
|158519| dw $023B
|15851B| db $97 ; Copy past
|15851C| dw $03F0
|15851E| db $23 ; Repeat byte
|15851F| db $00
|158520| db $08 ; Raw block
|158521| db $10, $00, $04, $00, $40, $00, $02, $00
|158529| db $10
|15852A| db $2A ; Repeat byte
|15852B| db $00
|15852C| db $FF ; End of GFX 81

;===================================================================================================

GFX_82:
|15852D| db $E4, $21 ; EXT Repeat byte
|15852F| db $00
|158530| db $05 ; Raw block
|158531| db $0F, $00, $18, $07, $30, $0F
|158537| db $24 ; Repeat byte
|158538| db $00
|158539| db $03 ; Raw block
|15853A| db $0F, $18, $30, $01
|15853E| db $86 ; Copy past
|15853F| dw $0021
|158541| db $11 ; Raw block
|158542| db $61, $1F, $C3, $3F, $07, $FF, $0F, $FF
|15854A| db $01, $0F, $18, $30, $61, $C3, $07, $0F
|158552| db $FF, $00
|158554| db $43 ; Repeat word
|158555| dw $FF00
|158557| db $00 ; Raw block
|158558| db $7F
|158559| db $22 ; Repeat byte
|15855A| db $FF
|15855B| db $0E ; Raw block
|15855C| db $F0, $FF, $C0, $FF, $80, $FF, $FF, $00
|158564| db $00, $7F, $FF, $F0, $C0, $80, $41
|15856B| db $44 ; Repeat word
|15856C| dw $403F
|15856E| db $00 ; Raw block
|15856F| db $60
|158570| db $44 ; Repeat word
|158571| dw $201F
|158573| db $12 ; Raw block
|158574| db $30, $0F, $10, $0F, $41, $40, $40, $60
|15857C| db $20, $20, $30, $10, $FC, $FF, $FE, $FF
|158584| db $7F, $FF, $3F
|158587| db $44 ; Repeat word
|158588| dw $1FFF
|15858A| db $43 ; Repeat word
|15858B| dw $FF0F
|15858D| db $07 ; Raw block
|15858E| db $FC, $FE, $7F, $3F, $1F, $1F, $0F, $0F
|158596| db $43 ; Repeat word
|158597| dw $FF00
|158599| db $08 ; Raw block
|15859A| db $80, $FF, $E0, $FF, $F8, $FF, $FC, $FF
|1585A2| db $FE
|1585A3| db $22 ; Repeat byte
|1585A4| db $FF
|1585A5| db $06 ; Raw block
|1585A6| db $00, $00, $80, $E0, $F8, $FC, $FE
|1585AD| db $84 ; Copy past
|1585AE| dw $0081
|1585B0| db $00 ; Raw block
|1585B1| db $07
|1585B2| db $4A ; Repeat word
|1585B3| dw $00FF
|1585B5| db $02 ; Raw block
|1585B6| db $1F, $0F, $07
|1585B9| db $2A ; Repeat byte
|1585BA| db $00
|1585BB| db $09 ; Raw block
|1585BC| db $09, $00, $96, $09, $F3, $0C, $B8, $6F
|1585C4| db $DC, $77
|1585C6| db $22 ; Repeat byte
|1585C7| db $00
|1585C8| db $1C ; Raw block
|1585C9| db $09, $97, $F7, $BB, $DC, $10, $00, $28
|1585D1| db $10, $68, $30, $98, $70, $3B, $F0, $F7
|1585D9| db $62, $FD, $A6, $FD, $CE, $10, $28, $68
|1585E1| db $D8, $BB, $F7, $FD, $FD
|1585E6| db $25 ; Repeat byte
|1585E7| db $00
|1585E8| db $09 ; Raw block
|1585E9| db $03, $00, $0F, $00, $3C, $00, $7B, $03
|1585F1| db $5F, $14
|1585F3| db $22 ; Repeat byte
|1585F4| db $00
|1585F5| db $04 ; Raw block
|1585F6| db $03, $0F, $3F, $7C, $6B
|1585FB| db $25 ; Repeat byte
|1585FC| db $00
|1585FD| db $09 ; Raw block
|1585FE| db $C0, $00, $F0, $00, $3C, $00, $DA, $C0
|158606| db $FD, $0C
|158608| db $22 ; Repeat byte
|158609| db $00
|15860A| db $04 ; Raw block
|15860B| db $C0, $F0, $FC, $3E, $F3
|158610| db $27 ; Repeat byte
|158611| db $00
|158612| db $83 ; Copy past
|158613| dw $00F6
|158615| db $03 ; Raw block
|158616| db $1F, $03, $3C, $04
|15861A| db $23 ; Repeat byte
|15861B| db $00
|15861C| db $03 ; Raw block
|15861D| db $03, $0F, $1C, $3B
|158621| db $27 ; Repeat byte
|158622| db $00
|158623| db $83 ; Copy past
|158624| dw $010E
|158626| db $03 ; Raw block
|158627| db $F8, $C0, $3C, $30
|15862B| db $23 ; Repeat byte
|15862C| db $00
|15862D| db $E0, $33 ; EXT Raw block
|15862F| db $C0, $F0, $38, $CC, $03, $00, $06, $03
|158637| db $0C, $07, $2F, $04, $5F, $08, $5F, $00
|15863F| db $9F, $01, $DF, $49, $03, $07, $0F, $2C
|158647| db $7B, $77, $F8, $B2, $C0, $00, $60, $C0
|15864F| db $30, $E0, $F4, $20, $FA, $10, $FA, $00
|158657| db $F9, $80, $FB, $92, $C0, $E0, $F0, $34
|15865F| db $DE, $EE, $1F, $4D
|158663| db $27 ; Repeat byte
|158664| db $00
|158665| db $07 ; Raw block
|158666| db $01, $00, $03, $00, $04, $03, $08, $07
|15866E| db $23 ; Repeat byte
|15866F| db $00
|158670| db $0D ; Raw block
|158671| db $01, $03, $04, $08, $60, $1F, $43, $3F
|158679| db $47, $3F, $CF, $3F, $8F, $7F
|15867F| db $43 ; Repeat word
|158680| dw $FF0F
|158682| db $E0, $46 ; EXT Raw block
|158684| db $0E, $FF, $60, $43, $47, $CF, $8F, $0F
|15868C| db $0F, $0E, $3F, $FF, $FE, $FF, $FC, $FF
|158694| db $F8, $FF, $F0, $FF, $E0, $FF, $80, $FF
|15869C| db $01, $FF, $3F, $FE, $FC, $F8, $F0, $E0
|1586A4| db $80, $01, $00, $FF, $03, $FF, $0F, $FF
|1586AC| db $1F, $FF, $3F, $FF, $7F, $FF, $F8, $FF
|1586B4| db $E0, $FF, $00, $03, $0F, $1F, $3F, $7F
|1586BC| db $F8, $E0, $10, $0F, $18, $07, $08, $07
|1586C4| db $0C, $03, $06, $01, $03, $00, $01
|1586CB| db $22 ; Repeat byte
|1586CC| db $00
|1586CD| db $08 ; Raw block
|1586CE| db $10, $18, $08, $0C, $06, $03, $01, $00
|1586D6| db $0F
|1586D7| db $46 ; Repeat word
|1586D8| dw $07FF
|1586DA| db $08 ; Raw block
|1586DB| db $03, $FF, $01, $FF, $80, $7F, $C0, $3F
|1586E3| db $0F
|1586E4| db $22 ; Repeat byte
|1586E5| db $07
|1586E6| db $03 ; Raw block
|1586E7| db $03, $01, $80, $C0
|1586EB| db $2D ; Repeat byte
|1586EC| db $FF
|1586ED| db $00 ; Raw block
|1586EE| db $3F
|1586EF| db $27 ; Repeat byte
|1586F0| db $FF
|1586F1| db $00 ; Raw block
|1586F2| db $3F
|1586F3| db $83 ; Copy past
|1586F4| dw $0092
|1586F6| db $02 ; Raw block
|1586F7| db $C0, $FF, $F0
|1586FA| db $28 ; Repeat byte
|1586FB| db $FF
|1586FC| db $03 ; Raw block
|1586FD| db $00, $80, $C0, $F0
|158701| db $23 ; Repeat byte
|158702| db $FF
|158703| db $E0, $6C ; EXT Raw block
|158705| db $6F, $39, $3D, $02, $17, $0E, $23, $1D
|15870D| db $4F, $3C, $5C, $38, $98, $60, $60, $00
|158715| db $6F, $3D, $1F, $33, $6F, $5C, $98, $60
|15871D| db $1A, $F4, $F4, $08, $F8, $E0, $90, $E0
|158725| db $C8, $F0, $E8, $70, $64, $18, $18, $00
|15872D| db $1A, $F4, $F8, $B0, $D8, $E8, $64, $18
|158735| db $BC, $30, $FE, $0E, $9B, $0B, $BD, $15
|15873D| db $FF, $27, $67, $03, $03, $01, $01, $00
|158745| db $CF, $F1, $F4, $EA, $98, $64, $02, $01
|15874D| db $3D, $28, $7F, $72, $DA, $D0, $BE, $A8
|158755| db $FD, $C4, $FD, $80, $E7, $C0, $C2, $00
|15875D| db $D7, $8D, $2E, $56, $3B, $7F, $25, $C2
|158765| db $7E, $0E, $7B, $1B, $BD, $15, $BF, $27
|15876D| db $EF, $03, $47, $01, $01
|158772| db $22 ; Repeat byte
|158773| db $00
|158774| db $19 ; Raw block
|158775| db $71, $64, $EA, $D8, $AC, $46, $01, $00
|15877D| db $7C, $70, $D6, $C0, $AE, $88, $FA, $D0
|158785| db $FA, $88, $EA, $C0, $CE, $00, $04, $00
|15878D| db $8C, $3E
|15878F| db $43 ; Repeat word
|158790| dw $2E76
|158792| db $E0, $31 ; EXT Raw block
|158794| db $CA, $04, $FE, $78, $64, $24, $2F, $07
|15879C| db $2F, $00, $17, $00, $1B, $08, $0F, $03
|1587A4| db $03, $00, $83, $5B, $38, $3C, $1F, $17
|1587AC| db $0C, $03, $7F, $1E, $26, $24, $F4, $E0
|1587B4| db $F4, $00, $E8, $00, $D8, $10, $F0, $C0
|1587BC| db $C0, $00, $C1, $DA, $1C, $3C, $F8, $E8
|1587C4| db $30, $C0
|1587C6| db $83 ; Copy past
|1587C7| dw $0024
|1587C9| db $04 ; Raw block
|1587CA| db $20, $1F, $60, $1F, $40
|1587CF| db $44 ; Repeat word
|1587D0| dw $413F
|1587D2| db $0E ; Raw block
|1587D3| db $43, $3F, $18, $30, $20, $60, $40, $41
|1587DB| db $41, $43, $1C, $FF, $38, $FF, $78
|1587E2| db $44 ; Repeat word
|1587E3| dw $F0FF
|1587E5| db $45 ; Repeat word
|1587E6| dw $FFE0
|1587E8| db $04 ; Raw block
|1587E9| db $1C, $38, $78, $F0, $F0
|1587EE| db $22 ; Repeat byte
|1587EF| db $E0
|1587F0| db $00 ; Raw block
|1587F1| db $07
|1587F2| db $44 ; Repeat word
|1587F3| dw $0FFF
|1587F5| db $49 ; Repeat word
|1587F6| dw $FF1F
|1587F8| db $02 ; Raw block
|1587F9| db $07, $0F, $0F
|1587FC| db $24 ; Repeat byte
|1587FD| db $1F
|1587FE| db $43 ; Repeat word
|1587FF| dw $FFC0
|158801| db $00 ; Raw block
|158802| db $83
|158803| db $46 ; Repeat word
|158804| dw $87FF
|158806| db $00 ; Raw block
|158807| db $83
|158808| db $43 ; Repeat word
|158809| dw $C0FF
|15880B| db $01 ; Raw block
|15880C| db $C0, $83
|15880E| db $22 ; Repeat byte
|15880F| db $87
|158810| db $01 ; Raw block
|158811| db $83, $C0
|158813| db $37 ; Repeat byte
|158814| db $00
|158815| db $00 ; Raw block
|158816| db $60
|158817| db $44 ; Repeat word
|158818| dw $201F
|15881A| db $06 ; Raw block
|15881B| db $30, $0F, $18, $07, $0E, $01, $03
|158822| db $22 ; Repeat byte
|158823| db $00
|158824| db $83 ; Copy past
|158825| dw $0073
|158827| db $03 ; Raw block
|158828| db $18, $0E, $03, $00
|15882C| db $4B ; Repeat word
|15882D| dw $FF00
|15882F| db $02 ; Raw block
|158830| db $FF, $00, $01
|158833| db $26 ; Repeat byte
|158834| db $00
|158835| db $01 ; Raw block
|158836| db $FF, $01
|158838| db $83 ; Copy past
|158839| dw $007E
|15883B| db $00 ; Raw block
|15883C| db $07
|15883D| db $48 ; Repeat word
|15883E| dw $00FF
|158840| db $04 ; Raw block
|158841| db $C0, $3F, $3F, $1F, $07
|158846| db $23 ; Repeat byte
|158847| db $00
|158848| db $00 ; Raw block
|158849| db $C0
|15884A| db $25 ; Repeat byte
|15884B| db $00
|15884C| db $09 ; Raw block
|15884D| db $10, $00, $2C, $10, $12, $0C, $19, $0E
|158855| db $0F, $03
|158857| db $22 ; Repeat byte
|158858| db $00
|158859| db $04 ; Raw block
|15885A| db $10, $2C, $16, $1B, $0F
|15885F| db $23 ; Repeat byte
|158860| db $00
|158861| db $0A ; Raw block
|158862| db $04, $00, $1A, $04, $26, $1C, $5C, $38
|15886A| db $78, $00, $80
|15886D| db $22 ; Repeat byte
|15886E| db $00
|15886F| db $05 ; Raw block
|158870| db $04, $1A, $36, $7C, $78, $80
|158876| db $84 ; Copy past
|158877| dw $0186
|158879| db $09 ; Raw block
|15887A| db $01, $01, $00, $20, $00, $70, $20, $58
|158882| db $30, $30
|158884| db $83 ; Copy past
|158885| dw $0192
|158887| db $04 ; Raw block
|158888| db $01, $20, $70, $58, $30
|15888D| db $23 ; Repeat byte
|15888E| db $00
|15888F| db $00 ; Raw block
|158890| db $80
|158891| db $22 ; Repeat byte
|158892| db $00
|158893| db $06 ; Raw block
|158894| db $08, $00, $1C, $08, $28, $10, $10
|15889B| db $22 ; Repeat byte
|15889C| db $00
|15889D| db $1D ; Raw block
|15889E| db $80, $00, $08, $1C, $38, $10, $FE, $7F
|1588A6| db $FD, $BF, $FB, $DF, $F7, $EF, $EF, $F7
|1588AE| db $DF, $FB, $BF, $FD, $7F, $FE, $FE, $FD
|1588B6| db $FB, $F7, $EF, $DF, $BF, $7F
|1588BC| db $97 ; Copy past
|1588BD| dw $0420
|1588BF| db $F0, $2F ; EXT Copy past
|1588C1| dw $0420
|1588C3| db $4D ; Repeat word
|1588C4| dw $3F43
|1588C6| db $01 ; Raw block
|1588C7| db $41, $3F
|1588C9| db $26 ; Repeat byte
|1588CA| db $43
|1588CB| db $00 ; Raw block
|1588CC| db $41
|1588CD| db $47 ; Repeat word
|1588CE| dw $FFE0
|1588D0| db $00 ; Raw block
|1588D1| db $F0
|1588D2| db $44 ; Repeat word
|1588D3| dw $F8FF
|1588D5| db $01 ; Raw block
|1588D6| db $FC, $FF
|1588D8| db $23 ; Repeat byte
|1588D9| db $E0
|1588DA| db $03 ; Raw block
|1588DB| db $F0, $F8, $F8, $FC
|1588DF| db $43 ; Repeat word
|1588E0| dw $FF0F
|1588E2| db $02 ; Raw block
|1588E3| db $07, $FF, $03
|1588E6| db $48 ; Repeat word
|1588E7| dw $00FF
|1588E9| db $03 ; Raw block
|1588EA| db $0F, $0F, $07, $03
|1588EE| db $23 ; Repeat byte
|1588EF| db $00
|1588F0| db $00 ; Raw block
|1588F1| db $C0
|1588F2| db $84 ; Copy past
|1588F3| dw $049D
|1588F5| db $00 ; Raw block
|1588F6| db $FC
|1588F7| db $22 ; Repeat byte
|1588F8| db $FF
|1588F9| db $85 ; Copy past
|1588FA| dw $007C
|1588FC| db $07 ; Raw block
|1588FD| db $C0, $E0, $F0, $FC, $FF, $7F, $3F, $1F
|158905| db $E4, $47 ; EXT Repeat byte
|158907| db $00
|158908| db $00 ; Raw block
|158909| db $7F
|15890A| db $2E ; Repeat byte
|15890B| db $00
|15890C| db $00 ; Raw block
|15890D| db $7F
|15890E| db $26 ; Repeat byte
|15890F| db $00
|158910| db $08 ; Raw block
|158911| db $03, $00, $04, $00, $0F, $04, $0C, $07
|158919| db $06
|15891A| db $83 ; Copy past
|15891B| dw $027B
|15891D| db $22 ; Repeat byte
|15891E| db $00
|15891F| db $06 ; Raw block
|158920| db $03, $04, $0F, $0D, $06, $03, $01
|158927| db $22 ; Repeat byte
|158928| db $00
|158929| db $83 ; Copy past
|15892A| dw $0410
|15892C| db $06 ; Raw block
|15892D| db $88, $00, $40, $80, $60, $C0, $C0
|158934| db $23 ; Repeat byte
|158935| db $00
|158936| db $05 ; Raw block
|158937| db $08, $1C, $88, $C0, $60, $C0
|15893D| db $24 ; Repeat byte
|15893E| db $00
|15893F| db $83 ; Copy past
|158940| dw $0410
|158942| db $02 ; Raw block
|158943| db $34, $18, $18
|158946| db $26 ; Repeat byte
|158947| db $00
|158948| db $03 ; Raw block
|158949| db $08, $1C, $34, $18
|15894D| db $23 ; Repeat byte
|15894E| db $00
|15894F| db $06 ; Raw block
|158950| db $20, $00, $58, $20, $7C, $38, $38
|158957| db $27 ; Repeat byte
|158958| db $00
|158959| db $03 ; Raw block
|15895A| db $20, $78, $7C, $38
|15895E| db $22 ; Repeat byte
|15895F| db $00
|158960| db $F0, $5E ; EXT Copy past
|158962| dw $0420
|158964| db $00 ; Raw block
|158965| db $7F
|158966| db $FF ; End of GFX 82

;===================================================================================================

GFX_83:
|158967| db $03 ; Raw block
|158968| db $00, $00, $20, $00
|15896C| db $43 ; Repeat word
|15896D| dw $2050
|15896F| db $12 ; Raw block
|158970| db $93, $60, $EF, $53, $D7, $6B, $66, $3B
|158978| db $00, $20, $70, $70, $F3, $DF, $EF, $7F
|158980| db $00, $00, $04
|158983| db $44 ; Repeat word
|158984| dw $0E00
|158986| db $E0, $41 ; EXT Raw block
|158988| db $CD, $02, $F3, $CE, $F3, $DE, $7E, $DC
|158990| db $00, $04, $0A, $0A, $CB, $FF, $FF, $FE
|158998| db $03, $00, $0F, $03, $1C, $0C, $34, $10
|1589A0| db $6C, $20, $5E, $02, $9E, $02, $FD, $7D
|1589A8| db $03, $0C, $13, $2F, $5B, $79, $F1, $82
|1589B0| db $80, $00, $CC, $80, $7A, $44, $3E, $20
|1589B8| db $7F, $60, $FE, $E0, $FA, $C4, $EE, $90
|1589C0| db $80, $4C, $B2, $D6, $99, $12, $22, $66
|1589C8| db $00, $00
|1589CA| db $8D ; Copy past
|1589CB| dw $0030
|1589CD| db $00 ; Raw block
|1589CE| db $00
|1589CF| db $86 ; Copy past
|1589D0| dw $0040
|1589D2| db $17 ; Raw block
|1589D3| db $00, $00, $80, $00, $F0, $80, $78, $40
|1589DB| db $38, $20, $78, $40, $F8, $C0, $F4, $C8
|1589E3| db $00, $80, $70, $A8, $D8, $A8, $28, $24
|1589EB| db $83 ; Copy past
|1589EC| dw $0060
|1589EE| db $13 ; Raw block
|1589EF| db $07, $03, $0E, $07, $1D, $0E, $7A, $0F
|1589F7| db $99, $7F, $7F, $37, $00, $03, $07, $0F
|1589FF| db $1E, $7F, $FF, $7F
|158A03| db $83 ; Copy past
|158A04| dw $0078
|158A06| db $14 ; Raw block
|158A07| db $E0, $80, $70, $E0, $B8, $70, $5E, $F0
|158A0F| db $B9, $DE, $FE, $EC, $00, $80, $E0, $F0
|158A17| db $78, $FE, $DF, $FE, $00
|158A1C| db $44 ; Repeat word
|158A1D| dw $0100
|158A1F| db $01 ; Raw block
|158A20| db $02, $00
|158A22| db $43 ; Repeat word
|158A23| dw $0103
|158A25| db $E0, $23 ; EXT Raw block
|158A27| db $07, $00, $0F, $06, $00, $01, $01, $03
|158A2F| db $02, $02, $07, $09, $C0, $00, $E0, $C0
|158A37| db $33, $20, $DF, $D1, $FE, $67, $FD, $1E
|158A3F| db $FA, $7F, $E5, $FE, $C0, $20, $D3, $2F
|158A47| db $9F, $FE, $FF, $FE
|158A4B| db $23 ; Repeat byte
|158A4C| db $00
|158A4D| db $83 ; Copy past
|158A4E| dw $00C4
|158A50| db $17 ; Raw block
|158A51| db $05, $01, $07, $02, $07, $00, $05, $01
|158A59| db $00, $00, $01, $03, $06, $05, $07, $06
|158A61| db $03, $00, $0F, $01, $DE, $07, $FD, $9E
|158A69| db $83 ; Copy past
|158A6A| dw $00E4
|158A6C| db $0B ; Raw block
|158A6D| db $F7, $5F, $FF, $64, $03, $0F, $DF, $7E
|158A75| db $FF, $FE, $FF, $FF
|158A79| db $25 ; Repeat byte
|158A7A| db $00
|158A7B| db $09 ; Raw block
|158A7C| db $01, $00, $02, $01, $04, $03, $08, $07
|158A84| db $09, $07
|158A86| db $22 ; Repeat byte
|158A87| db $00
|158A88| db $19 ; Raw block
|158A89| db $01, $02, $04, $08, $09, $03, $00, $1C
|158A91| db $03, $F2, $0F, $1D, $EF, $6A, $FF, $F5
|158A99| db $FF, $BA, $FF, $1D, $FF, $03, $1C, $F3
|158AA1| db $1F, $6F
|158AA3| db $22 ; Repeat byte
|158AA4| db $FF
|158AA5| db $13 ; Raw block
|158AA6| db $F0, $00, $0C, $F0, $94, $F8, $0A, $FC
|158AAE| db $85, $FE, $02, $FF, $87, $FF, $56, $FF
|158AB6| db $F0, $0C, $F4, $FA
|158ABA| db $62 ; Increment fill
|158ABB| db $FD
|158ABC| db $00 ; Raw block
|158ABD| db $FE
|158ABE| db $27 ; Repeat byte
|158ABF| db $00
|158AC0| db $07 ; Raw block
|158AC1| db $C0, $00, $60, $80, $B0, $C0, $50, $E0
|158AC9| db $23 ; Repeat byte
|158ACA| db $00
|158ACB| db $18 ; Raw block
|158ACC| db $C0, $60, $B0, $50, $7C, $37, $3E, $0F
|158AD4| db $3F, $13, $7F, $19, $F7, $1D, $9A, $6F
|158ADC| db $FE, $63, $FF, $1D, $7F, $3F, $3F, $7B
|158AE4| db $BD
|158AE5| db $22 ; Repeat byte
|158AE6| db $FF
|158AE7| db $14 ; Raw block
|158AE8| db $3E, $E8, $7E, $F0, $FE, $C0, $FE, $90
|158AF0| db $EF, $B0, $57, $E0, $77, $E0, $F7, $80
|158AF8| db $FE, $FA, $FA, $DA, $BB
|158AFD| db $22 ; Repeat byte
|158AFE| db $F9
|158AFF| db $E0, $3C ; EXT Raw block
|158B01| db $7F, $1F, $1E, $00, $12, $0C, $0B, $05
|158B09| db $09, $06, $04, $00, $0B, $03, $07, $00
|158B11| db $60, $1F, $1F, $0E, $0F, $07, $0C, $07
|158B19| db $72, $4C, $64, $58, $7C, $40, $EC, $C8
|158B21| db $EC, $08, $F8, $D0, $F0, $C0, $E0, $00
|158B29| db $A2, $A4, $BC, $34, $F4, $28, $30, $E0
|158B31| db $FF, $7D, $7C, $10, $19, $09, $1F, $0E
|158B39| db $3F, $11, $3D, $03, $07
|158B3E| db $22 ; Repeat byte
|158B3F| db $00
|158B40| db $E0, $31 ; EXT Raw block
|158B42| db $82, $6F, $16, $11, $2E, $3E, $07, $00
|158B4A| db $F4, $88, $C4, $B8, $EC, $50, $EC, $D0
|158B52| db $DE, $88, $DE, $1C, $9C, $18, $78, $00
|158B5A| db $54, $44, $AC, $2C, $76, $E2, $E4, $78
|158B62| db $7E, $29, $3C, $07, $7F, $23, $7F, $10
|158B6A| db $7E, $2B, $3F, $17, $1F, $03, $07, $00
|158B72| db $7F, $3F
|158B74| db $22 ; Repeat byte
|158B75| db $7F
|158B76| db $14 ; Raw block
|158B77| db $3F, $1F, $07, $7E, $94, $3C, $C8, $F6
|158B7F| db $D8, $E2, $3C, $76, $BC, $FC, $B8, $F8
|158B87| db $A0, $E0, $00, $FE, $FC
|158B8C| db $22 ; Repeat byte
|158B8D| db $FE
|158B8E| db $04 ; Raw block
|158B8F| db $FC, $F8, $E0, $0B, $03
|158B94| db $43 ; Repeat word
|158B95| dw $0109
|158B97| db $11 ; Raw block
|158B98| db $05, $00, $05, $01, $1B, $03, $37, $06
|158BA0| db $1E, $00, $0C, $0E, $0E, $07, $06, $1C
|158BA8| db $29, $1E
|158BAA| db $83 ; Copy past
|158BAB| dw $0114
|158BAD| db $17 ; Raw block
|158BAE| db $FF, $B0, $FF, $A2, $FE, $05, $FF, $04
|158BB6| db $3F, $02, $07, $00, $FF, $FF, $7C, $73
|158BBE| db $E7, $F7, $3B, $07, $05, $01, $09, $00
|158BC6| db $44 ; Repeat word
|158BC7| dw $020B
|158BC9| db $00 ; Raw block
|158BCA| db $03
|158BCB| db $85 ; Copy past
|158BCC| dw $024A
|158BCE| db $12 ; Raw block
|158BCF| db $06, $0F, $0D, $0D, $0C, $1C, $29, $1E
|158BD7| db $FF, $30, $7F, $22, $7E, $05, $3F, $04
|158BDF| db $9F, $02, $87
|158BE2| db $24 ; Repeat byte
|158BE3| db $00
|158BE4| db $E0, $4C ; EXT Raw block
|158BE6| db $FC, $73, $67, $37, $9B, $87, $00, $00
|158BEE| db $11, $0F, $14, $0F, $2E, $1D, $2B, $1E
|158BF6| db $41, $3F, $51, $3F, $AA, $7F, $95, $7F
|158BFE| db $11, $14, $2E, $2F, $5F, $5F, $BF, $BF
|158C06| db $AA, $FF, $5D, $FF, $BE, $FF, $1F, $FF
|158C0E| db $9F, $7F, $8F, $7F, $C3, $3F, $F0, $0F
|158C16| db $FF, $FF, $BF, $1F, $9F, $8F, $C3, $F0
|158C1E| db $AC, $FF, $7B, $FC, $B3, $FD, $C7, $F8
|158C26| db $9F, $E1, $FF, $FD, $FA, $FF, $D5, $FF
|158C2E| db $FC, $FB, $F3, $C7, $9F
|158C33| db $22 ; Repeat byte
|158C34| db $FF
|158C35| db $07 ; Raw block
|158C36| db $E8, $70, $F4, $F8, $84, $F8, $04, $F8
|158C3E| db $43 ; Repeat word
|158C3F| dw $FC02
|158C41| db $07 ; Raw block
|158C42| db $8A, $FC, $52, $FC, $E8, $F4, $F4, $FC
|158C4A| db $23 ; Repeat byte
|158C4B| db $FA
|158C4C| db $05 ; Raw block
|158C4D| db $7F, $22, $E3, $5D, $DD, $7F
|158C53| db $44 ; Repeat word
|158C54| dw $77FF
|158C56| db $00 ; Raw block
|158C57| db $63
|158C58| db $43 ; Repeat word
|158C59| dw $77FF
|158C5B| db $02 ; Raw block
|158C5C| db $63, $DD, $E3
|158C5F| db $24 ; Repeat byte
|158C60| db $C1
|158C61| db $E0, $5F ; EXT Raw block
|158C63| db $F3, $20, $B3, $60, $DB, $70, $FB, $30
|158C6B| db $FF, $0A, $F9, $48, $FF, $20, $FD, $6E
|158C73| db $FD, $FD, $FF, $FF, $F5, $B7, $FF, $FF
|158C7B| db $7D, $00, $BF, $41, $5E, $26, $3C, $08
|158C83| db $3E, $08, $7E, $38, $77, $31, $7A, $28
|158C8B| db $7D, $86, $49, $37, $33, $41, $4E, $57
|158C93| db $80, $00, $FE, $80, $7D, $62, $3A, $14
|158C9B| db $7C, $10, $7E, $1C, $EF, $8C, $5D, $14
|158CA3| db $80, $7E, $91, $EA, $CC, $82, $73, $EB
|158CAB| db $01, $00, $07, $01, $0E, $06, $3C, $0C
|158CB3| db $7C, $04, $5E, $22, $2F, $11, $2D, $13
|158CBB| db $01, $06, $09, $33, $5B, $45, $22, $20
|158CC3| db $84 ; Copy past
|158CC4| dw $00AA
|158CC6| db $12 ; Raw block
|158CC7| db $60, $38, $30, $3E, $30, $7F, $40, $FE
|158CCF| db $80, $FD, $80, $80, $60, $90, $C8, $CE
|158CD7| db $B9, $42, $07
|158CDA| db $27 ; Repeat byte
|158CDB| db $00
|158CDC| db $07 ; Raw block
|158CDD| db $01, $00, $17, $01, $2F, $04, $5C, $10
|158CE5| db $23 ; Repeat byte
|158CE6| db $00
|158CE7| db $03 ; Raw block
|158CE8| db $01, $16, $3B, $6F
|158CEC| db $27 ; Repeat byte
|158CED| db $00
|158CEE| db $07 ; Raw block
|158CEF| db $98, $00, $F4, $90, $FA, $28, $3E, $04
|158CF7| db $23 ; Repeat byte
|158CF8| db $00
|158CF9| db $03 ; Raw block
|158CFA| db $98, $6C, $D6, $FA
|158CFE| db $23 ; Repeat byte
|158CFF| db $00
|158D00| db $05 ; Raw block
|158D01| db $01, $00, $03, $01, $16, $02
|158D07| db $83 ; Copy past
|158D08| dw $039C
|158D0A| db $02 ; Raw block
|158D0B| db $7E, $2E, $00
|158D0E| db $62 ; Increment fill
|158D0F| db $00
|158D10| db $03 ; Raw block
|158D11| db $15, $3B, $6F, $51
|158D15| db $23 ; Repeat byte
|158D16| db $00
|158D17| db $13 ; Raw block
|158D18| db $80, $00, $C0, $80, $68, $40, $F4, $20
|158D20| db $3A, $08, $7E, $74, $00, $00, $80, $40
|158D28| db $A8, $DC, $F6, $8A
|158D2C| db $23 ; Repeat byte
|158D2D| db $00
|158D2E| db $88 ; Copy past
|158D2F| dw $00F4
|158D31| db $00 ; Raw block
|158D32| db $01
|158D33| db $87 ; Copy past
|158D34| dw $00FE
|158D36| db $00 ; Raw block
|158D37| db $06
|158D38| db $84 ; Copy past
|158D39| dw $0107
|158D3B| db $00 ; Raw block
|158D3C| db $FE
|158D3D| db $8C ; Copy past
|158D3E| dw $010D
|158D40| db $00 ; Raw block
|158D41| db $FF
|158D42| db $84 ; Copy past
|158D43| dw $011B
|158D45| db $E0, $3F ; EXT Raw block
|158D47| db $AA, $7F, $B5, $7F, $5B, $3F, $57, $3F
|158D4F| db $2F, $1E, $21, $1E, $27, $18, $1C, $03
|158D57| db $BF, $BF, $5F, $5F, $2F, $21, $27, $1C
|158D5F| db $FC, $83, $FF, $80, $DC, $A3, $84, $7B
|158D67| db $EC, $7B, $CE, $F9, $8E, $F9, $57, $FC
|158D6F| db $FC, $FF, $DC, $84, $FC, $FE, $FE, $FF
|158D77| db $6A, $FF, $B5, $7F, $7E, $FF, $BF, $FF
|158D7F| db $5F, $FF, $2F, $FF, $1A, $FF, $05, $FF
|158D87| db $43 ; Repeat word
|158D88| dw $BF7F
|158D8A| db $E0, $2E ; EXT Raw block
|158D8C| db $5F, $2F, $1A, $05, $AA, $FC, $52, $FC
|158D94| db $EA, $FC, $D4, $F8, $C4, $B8, $C8, $B0
|158D9C| db $D0, $A0, $60, $80, $FA, $FA, $EA, $D4
|158DA4| db $C4, $C8, $D0, $60, $FF, $3E, $FF, $5C
|158DAC| db $FF, $40, $7F, $38, $77, $3F, $38, $1F
|158DB4| db $1F, $07, $07, $00, $E3, $FF, $FF
|158DBB| db $84 ; Copy past
|158DBC| dw $0223
|158DBE| db $E0, $3A ; EXT Raw block
|158DC0| db $FF, $70, $DF, $34, $FF, $02, $FE, $1C
|158DC8| db $CE, $FC, $6C, $98, $F8, $C0, $E0, $00
|158DD0| db $FF, $FB, $FF, $FE, $FE, $9C, $D8, $E0
|158DD8| db $3F, $07, $1F, $0B, $1F, $00, $26, $05
|158DE0| db $2F, $0F, $47, $06, $7F, $0E, $3E, $00
|158DE8| db $38, $14, $1F, $3B, $30, $79, $71, $3E
|158DF0| db $F9, $E8, $FA, $C8, $FC, $20, $3C, $F8
|158DF8| db $78, $F0, $F0
|158DFB| db $24 ; Repeat byte
|158DFC| db $00
|158DFD| db $E0, $2A ; EXT Raw block
|158DFF| db $17, $36, $DC, $C4, $88, $F0, $00, $00
|158E07| db $21, $1F, $13, $0D, $1E, $02, $3F, $1F
|158E0F| db $2F, $0F, $27, $06, $3F, $06, $1E, $00
|158E17| db $20, $12, $1D, $20, $30, $39, $39, $1E
|158E1F| db $BD, $C4, $8D, $F4, $4F, $36, $7E, $40
|158E27| db $FC, $F0, $F8
|158E2A| db $24 ; Repeat byte
|158E2B| db $00
|158E2C| db $14 ; Raw block
|158E2D| db $0B, $0B, $C9, $BE, $0C, $F8, $00, $00
|158E35| db $FE, $4E, $FB, $1B, $BD, $15, $BF, $21
|158E3D| db $EE, $00, $47, $01, $01
|158E42| db $22 ; Repeat byte
|158E43| db $00
|158E44| db $E0, $2C ; EXT Raw block
|158E46| db $B1, $E4, $EA, $D8, $AB, $46, $01, $00
|158E4E| db $7E, $74, $D4, $C0, $AE, $88, $FA, $90
|158E56| db $7A, $08, $EA, $80, $8E, $00, $04, $00
|158E5E| db $8A, $3C, $76, $2E, $F6, $6E, $8A, $04
|158E66| db $7B, $0B, $5D, $15, $7F, $11, $BE, $20
|158E6E| db $A7, $01, $E1, $00, $40
|158E73| db $22 ; Repeat byte
|158E74| db $00
|158E75| db $14 ; Raw block
|158E76| db $74, $6A, $68, $DB, $E6, $A1, $40, $00
|158E7E| db $DE, $D0, $BA, $A8, $FE, $88, $7D, $04
|158E86| db $E5, $80, $87, $00, $02
|158E8B| db $22 ; Repeat byte
|158E8C| db $00
|158E8D| db $06 ; Raw block
|158E8E| db $2E, $56, $16, $DB, $67, $85, $02
|158E95| db $83 ; Copy past
|158E96| dw $0019
|158E98| db $07 ; Raw block
|158E99| db $02, $0E, $04, $0A, $00, $06, $00, $01
|158EA1| db $24 ; Repeat byte
|158EA2| db $00
|158EA3| db $07 ; Raw block
|158EA4| db $07, $0D, $0B, $0F, $07, $01, $00, $00
|158EAC| db $84 ; Copy past
|158EAD| dw $025C
|158EAF| db $14 ; Raw block
|158EB0| db $85, $FF, $84, $FF, $C2, $67, $40, $E0
|158EB8| db $00, $40, $00, $7C, $73, $67, $77, $3B
|158EC0| db $A7, $A0, $40, $1E, $01
|158EC5| db $43 ; Repeat word
|158EC6| dw $0007
|158EC8| db $00 ; Raw block
|158EC9| db $03
|158ECA| db $28 ; Repeat byte
|158ECB| db $00
|158ECC| db $03 ; Raw block
|158ECD| db $1E, $07, $07, $03
|158ED1| db $23 ; Repeat byte
|158ED2| db $00
|158ED3| db $03 ; Raw block
|158ED4| db $AF, $FC, $57, $FF
|158ED8| db $43 ; Repeat word
|158ED9| dw $3FCF
|158EDB| db $04 ; Raw block
|158EDC| db $E7, $1F, $38, $07, $07
|158EE1| db $22 ; Repeat byte
|158EE2| db $00
|158EE3| db $14 ; Raw block
|158EE4| db $FF, $7F, $DF, $CF, $E7, $38, $07, $00
|158EEC| db $E2, $1F, $F0, $0F, $3F, $C0, $80, $FF
|158EF4| db $07, $F8, $38, $C0, $C0
|158EF9| db $22 ; Repeat byte
|158EFA| db $00
|158EFB| db $05 ; Raw block
|158EFC| db $E2, $F0, $3F, $80, $07, $38
|158F02| db $43 ; Repeat word
|158F03| dw $00C0
|158F05| db $04 ; Raw block
|158F06| db $40, $80, $C0, $00, $80
|158F0B| db $28 ; Repeat byte
|158F0C| db $00
|158F0D| db $03 ; Raw block
|158F0E| db $C0, $40, $C0, $80
|158F12| db $23 ; Repeat byte
|158F13| db $00
|158F14| db $FF ; End of GFX 83

;===================================================================================================

GFX_84:
|158F15| db $E0, $65 ; EXT Raw block
|158F17| db $1C, $00, $3E, $1C, $13, $0E, $09, $03
|158F1F| db $06, $03, $6E, $03, $D7, $4B, $FB, $2D
|158F27| db $1C, $3E, $13, $0D, $07, $6F, $BB, $9D
|158F2F| db $38, $00, $7C, $38, $C8, $60, $90, $C0
|158F37| db $60, $C0, $36, $C0, $6D, $D4, $CF, $B4
|158F3F| db $38, $7C, $D8, $B0, $E0, $F6, $DB, $B9
|158F47| db $38, $00, $64, $38, $77, $3C, $37, $18
|158F4F| db $3F, $18, $3A, $0D, $79, $1E, $6F, $28
|158F57| db $38, $7C, $7F, $3C, $3C, $1D, $5F, $5E
|158F5F| db $00, $00, $30, $00, $F8, $00, $FC, $20
|158F67| db $B4, $58, $1C, $E0, $9C, $78, $FE, $18
|158F6F| db $00, $30, $F8, $7C, $7C, $FC, $FC, $7C
|158F77| db $6D, $00, $73, $04, $FB, $04
|158F7D| db $43 ; Repeat word
|158F7E| dw $00FF
|158F80| db $43 ; Repeat word
|158F81| dw $007F
|158F83| db $09 ; Raw block
|158F84| db $3F, $00, $60, $50, $E9, $F7, $F6, $76
|158F8C| db $7B, $3F
|158F8E| db $43 ; Repeat word
|158F8F| dw $0080
|158F91| db $00 ; Raw block
|158F92| db $F0
|158F93| db $44 ; Repeat word
|158F94| dw $F800
|158F96| db $1C ; Raw block
|158F97| db $E4, $18, $CA, $34, $86, $78, $80, $80
|158F9F| db $F0, $F8, $F8, $7C, $76, $FA, $10, $00
|158FA7| db $08, $00, $47, $08, $1B, $24, $07, $18
|158FAF| db $23, $04, $0F, $00, $0F
|158FB4| db $23 ; Repeat byte
|158FB5| db $00
|158FB6| db $04 ; Raw block
|158FB7| db $01, $03, $02, $0E, $0F
|158FBC| db $25 ; Repeat byte
|158FBD| db $00
|158FBE| db $00 ; Raw block
|158FBF| db $F0
|158FC0| db $44 ; Repeat word
|158FC1| dw $F800
|158FC3| db $83 ; Copy past
|158FC4| dw $0082
|158FC6| db $22 ; Repeat byte
|158FC7| db $00
|158FC8| db $84 ; Copy past
|158FC9| dw $008A
|158FCB| db $03 ; Raw block
|158FCC| db $0D, $02, $19, $66
|158FD0| db $83 ; Copy past
|158FD1| dw $0098
|158FD3| db $06 ; Raw block
|158FD4| db $07, $00, $47, $00, $DF, $00, $FF
|158FDB| db $84 ; Copy past
|158FDC| dw $00A1
|158FDE| db $06 ; Raw block
|158FDF| db $06, $47, $DF, $FF, $00, $00, $E0
|158FE6| db $84 ; Copy past
|158FE7| dw $007B
|158FE9| db $83 ; Copy past
|158FEA| dw $0082
|158FEC| db $0B ; Raw block
|158FED| db $85, $7A, $F3, $0C, $00, $E0, $F0, $F8
|158FF5| db $7C, $76, $FB, $FD
|158FF9| db $43 ; Repeat word
|158FFA| dw $0F5C
|158FFC| db $43 ; Repeat word
|158FFD| dw $0D1E
|158FFF| db $0B ; Raw block
|159000| db $5E, $0D, $1E, $0D, $1F, $0F, $2F, $07
|159008| db $1F, $1F, $1D, $1D
|15900C| db $22 ; Repeat byte
|15900D| db $1F
|15900E| db $04 ; Raw block
|15900F| db $0F, $3A, $F0, $1A, $F0
|159014| db $43 ; Repeat word
|159015| dw $B058
|159017| db $0B ; Raw block
|159018| db $5A, $B0, $58, $B0, $78, $F0, $B4, $E0
|159020| db $F8, $F8, $B8, $B8
|159024| db $22 ; Repeat byte
|159025| db $F8
|159026| db $15 ; Raw block
|159027| db $F0, $70, $3F, $72, $3D, $7A, $35, $B9
|15902F| db $16, $7D, $1A, $5C, $0B, $1E, $0F, $1F
|159037| db $0F, $7F, $7D, $75, $37, $3F
|15903D| db $22 ; Repeat byte
|15903E| db $1F
|15903F| db $03 ; Raw block
|159040| db $D0, $80, $C8, $80
|159044| db $43 ; Repeat word
|159045| dw $C068
|159047| db $06 ; Raw block
|159048| db $60, $C0, $64, $C0, $E4, $C0, $68
|15904F| db $22 ; Repeat byte
|159050| db $C0
|159051| db $25 ; Repeat byte
|159052| db $E0
|159053| db $0B ; Raw block
|159054| db $0F, $00, $1F, $0F, $38, $1F, $32, $1D
|15905C| db $38, $1F, $1D, $0E
|159060| db $43 ; Repeat word
|159061| dw $070E
|159063| db $1C ; Raw block
|159064| db $0F, $1F, $3F, $3D, $3F, $1E, $0F, $0F
|15906C| db $00, $00, $C0, $00, $E0, $C0, $30, $E0
|159074| db $70, $A0, $38, $D0, $B8, $50, $98, $70
|15907C| db $00, $C0, $E0, $F0, $B0
|159081| db $22 ; Repeat byte
|159082| db $F8
|159083| db $E0, $3C ; EXT Raw block
|159085| db $7F, $17, $7F, $18, $1D, $0E, $3E, $1D
|15908D| db $2F, $18, $1F, $0C, $2C, $18, $18, $00
|159095| db $3F, $3E, $1F, $3D, $3E, $1F, $3C, $18
|15909D| db $9E, $E8, $FE, $18, $A8, $70, $74, $B8
|1590A5| db $F4, $18, $F8, $30, $34, $18, $18, $00
|1590AD| db $FC, $7C, $F8, $BC, $7C, $F8, $3C, $18
|1590B5| db $7B, $27, $76, $0D, $7F, $2F, $BF, $43
|1590BD| db $C7, $26, $27, $1E, $1E
|1590C2| db $22 ; Repeat byte
|1590C3| db $00
|1590C4| db $1E ; Raw block
|1590C5| db $5F, $7F, $7F, $FD, $79, $3F, $1E, $00
|1590CD| db $DF, $E4, $6D, $B4, $FE, $F0, $FD, $C2
|1590D5| db $E2, $64, $E4, $78, $78, $00, $40, $00
|1590DD| db $F9, $BB, $FE, $BF, $9E, $FC, $70
|1590E4| db $44 ; Repeat word
|1590E5| dw $3F00
|1590E7| db $08 ; Raw block
|1590E8| db $1B, $00, $1C, $00, $17, $00, $12, $00
|1590F0| db $0C
|1590F1| db $22 ; Repeat byte
|1590F2| db $00
|1590F3| db $12 ; Raw block
|1590F4| db $3F, $3C, $1C, $1F, $1F, $1E, $0C, $00
|1590FC| db $B5, $4A, $C9, $36, $65, $1A, $FD, $02
|159104| db $A2, $00, $C0
|159107| db $24 ; Repeat byte
|159108| db $00
|159109| db $00 ; Raw block
|15910A| db $FB
|15910B| db $22 ; Repeat byte
|15910C| db $FF
|15910D| db $06 ; Raw block
|15910E| db $E2, $C0, $00, $00, $1F, $00, $7F
|159115| db $44 ; Repeat word
|159116| dw $FF00
|159118| db $00 ; Raw block
|159119| db $7C
|15911A| db $86 ; Copy past
|15911B| dw $01E7
|15911D| db $09 ; Raw block
|15911E| db $1F, $7F, $FD, $E2, $7F, $1F, $1E, $0C
|159126| db $86, $78
|159128| db $8A ; Copy past
|159129| dw $01F8
|15912B| db $22 ; Repeat byte
|15912C| db $00
|15912D| db $01 ; Raw block
|15912E| db $FA, $FB
|159130| db $22 ; Repeat byte
|159131| db $FF
|159132| db $E0, $25 ; EXT Raw block
|159134| db $E2, $C0, $00, $7F, $00, $7E, $00, $FF
|15913C| db $00, $7D, $00, $3C, $00, $1B, $00, $11
|159144| db $00, $0E, $00, $7F, $5B, $E6, $7E, $3F
|15914C| db $1F, $1F, $0E, $9D, $62, $CA, $30, $70
|159154| db $00, $E0, $00, $D0, $00, $E0
|15915A| db $24 ; Repeat byte
|15915B| db $00
|15915C| db $19 ; Raw block
|15915D| db $FF, $FA, $F0, $60, $70, $E0, $00, $00
|159165| db $2F, $07, $4F, $07, $27, $03, $0F, $03
|15916D| db $1D, $07, $3D, $1F, $3B, $1C, $1C, $00
|159175| db $0F, $0F
|159177| db $83 ; Copy past
|159178| dw $015F
|15917A| db $1A ; Raw block
|15917B| db $3F, $1C, $34, $E0, $B2, $E0, $E4, $C0
|159183| db $F0, $C0, $98, $E0, $E4, $F8, $F4, $38
|15918B| db $38, $00, $F0, $F0, $E0, $F0, $F8, $FC
|159193| db $FC, $38, $0E
|159196| db $44 ; Repeat word
|159197| dw $2F07
|159199| db $09 ; Raw block
|15919A| db $0F, $03, $19, $07, $35, $1F, $3F, $1E
|1591A2| db $1E, $00
|1591A4| db $23 ; Repeat byte
|1591A5| db $0F
|1591A6| db $16 ; Raw block
|1591A7| db $1F, $3F, $3F, $1E, $60, $C0, $E8, $C0
|1591AF| db $F0, $C0, $EC, $D0, $8A, $F0, $E8, $F0
|1591B7| db $F8, $20, $30, $00, $E0, $E0, $F0
|1591BE| db $23 ; Repeat byte
|1591BF| db $F8
|1591C0| db $00 ; Raw block
|1591C1| db $30
|1591C2| db $43 ; Repeat word
|1591C3| dw $0307
|1591C5| db $1F ; Raw block
|1591C6| db $1F, $01, $27, $19, $73, $0F, $7F, $0F
|1591CE| db $3F, $00, $38, $00, $07, $07, $1F, $3F
|1591D6| db $7F, $7F, $3F, $38, $18, $F0, $D8, $F0
|1591DE| db $F8, $F0, $F0, $E0, $30, $C0, $C8, $F0
|1591E6| db $83 ; Copy past
|1591E7| dw $01D2
|1591E9| db $22 ; Repeat byte
|1591EA| db $F8
|1591EB| db $11 ; Raw block
|1591EC| db $F0, $F0, $F8, $FC, $78, $00, $00, $3C
|1591F4| db $00, $42, $3C, $BD, $42, $E7, $7E, $7E
|1591FC| db $3C, $3C
|1591FE| db $23 ; Repeat byte
|1591FF| db $00
|159200| db $06 ; Raw block
|159201| db $3C, $7E, $FF, $FF, $7E, $3C, $00
|159208| db $43 ; Repeat word
|159209| dw $0F1C
|15920B| db $47 ; Repeat word
|15920C| dw $0D1E
|15920E| db $02 ; Raw block
|15920F| db $1F, $0F, $0F
|159212| db $84 ; Copy past
|159213| dw $00FF
|159215| db $22 ; Repeat byte
|159216| db $1F
|159217| db $04 ; Raw block
|159218| db $0F, $38, $F0, $98, $70
|15921D| db $47 ; Repeat word
|15921E| dw $B058
|159220| db $07 ; Raw block
|159221| db $78, $F0, $B0, $E0, $F8, $78, $B8, $B8
|159229| db $22 ; Repeat byte
|15922A| db $F8
|15922B| db $00 ; Raw block
|15922C| db $F0
|15922D| db $23 ; Repeat byte
|15922E| db $00
|15922F| db $0B ; Raw block
|159230| db $01, $00, $04, $00, $01, $00, $07, $01
|159238| db $2F, $07, $8E, $07
|15923C| db $23 ; Repeat byte
|15923D| db $00
|15923E| db $01 ; Raw block
|15923F| db $01, $07
|159241| db $83 ; Copy past
|159242| dw $0166
|159244| db $0D ; Raw block
|159245| db $02, $00, $0C, $00, $21, $00, $5C, $00
|15924D| db $BF, $1C, $BF, $1F, $79, $3F
|159253| db $23 ; Repeat byte
|159254| db $00
|159255| db $03 ; Raw block
|159256| db $1C, $3F, $3F, $7F
|15925A| db $25 ; Repeat byte
|15925B| db $00
|15925C| db $02 ; Raw block
|15925D| db $08, $00, $30
|159260| db $22 ; Repeat byte
|159261| db $00
|159262| db $02 ; Raw block
|159263| db $80, $00, $80
|159266| db $26 ; Repeat byte
|159267| db $00
|159268| db $01 ; Raw block
|159269| db $80, $80
|15926B| db $27 ; Repeat byte
|15926C| db $00
|15926D| db $07 ; Raw block
|15926E| db $01, $00, $17, $01, $2F, $04, $5C, $10
|159276| db $23 ; Repeat byte
|159277| db $00
|159278| db $03 ; Raw block
|159279| db $01, $16, $3B, $6F
|15927D| db $27 ; Repeat byte
|15927E| db $00
|15927F| db $07 ; Raw block
|159280| db $98, $00, $F4, $90, $FA, $28, $3E, $04
|159288| db $23 ; Repeat byte
|159289| db $00
|15928A| db $03 ; Raw block
|15928B| db $98, $6C, $D6, $FA
|15928F| db $23 ; Repeat byte
|159290| db $00
|159291| db $05 ; Raw block
|159292| db $01, $00, $03, $01, $16, $02
|159298| db $83 ; Copy past
|159299| dw $039C
|15929B| db $02 ; Raw block
|15929C| db $7E, $2E, $00
|15929F| db $62 ; Increment fill
|1592A0| db $00
|1592A1| db $03 ; Raw block
|1592A2| db $15, $3B, $6F, $51
|1592A6| db $23 ; Repeat byte
|1592A7| db $00
|1592A8| db $18 ; Raw block
|1592A9| db $80, $00, $C0, $80, $68, $40, $F4, $20
|1592B1| db $3A, $08, $7E, $74, $00, $00, $80, $40
|1592B9| db $A8, $DC, $F6, $8A, $00, $00, $0E, $00
|1592C1| db $1F
|1592C2| db $46 ; Repeat word
|1592C3| dw $3F00
|1592C5| db $10 ; Raw block
|1592C6| db $7F, $00, $BF, $00, $00, $0E, $1B, $3C
|1592CE| db $3F, $3F, $7F, $FF, $00, $00, $70, $00
|1592D6| db $F8
|1592D7| db $46 ; Repeat word
|1592D8| dw $FC00
|1592DA| db $0B ; Raw block
|1592DB| db $FE, $40, $BD, $A0, $00, $70, $D8, $BC
|1592E3| db $FC, $FC, $BE, $5F
|1592E7| db $23 ; Repeat byte
|1592E8| db $00
|1592E9| db $13 ; Raw block
|1592EA| db $07, $00, $0F, $00, $3F, $00, $6F, $10
|1592F2| db $CF, $30, $97, $6C, $00, $00, $07, $0F
|1592FA| db $3F, $4F, $8F, $9F
|1592FE| db $23 ; Repeat byte
|1592FF| db $00
|159300| db $83 ; Copy past
|159301| dw $00DA
|159303| db $E0, $24 ; EXT Raw block
|159305| db $FC, $00, $F6, $08, $F3, $0C, $E9, $36
|15930D| db $00, $00, $E0, $F0, $FC, $F2, $F1, $F9
|159315| db $03, $00, $07, $03, $0E, $07, $3E, $07
|15931D| db $7C, $37, $FC, $6F, $C4, $7F, $BA, $47
|159325| db $03, $07, $0F, $3F, $7F
|15932A| db $22 ; Repeat byte
|15932B| db $FF
|15932C| db $83 ; Copy past
|15932D| dw $016A
|15932F| db $13 ; Raw block
|159330| db $70, $E0, $30, $E0, $3C, $F0, $1E, $F4
|159338| db $1F, $FE, $3F, $FE, $C0, $E0, $F0, $F0
|159340| db $FC, $FE, $FF, $FF
|159344| db $27 ; Repeat byte
|159345| db $00
|159346| db $83 ; Copy past
|159347| dw $0350
|159349| db $03 ; Raw block
|15934A| db $0F, $07, $0E, $07
|15934E| db $23 ; Repeat byte
|15934F| db $00
|159350| db $01 ; Raw block
|159351| db $01, $07
|159353| db $22 ; Repeat byte
|159354| db $0F
|159355| db $03 ; Raw block
|159356| db $07, $0F, $07, $07
|15935A| db $92 ; Copy past
|15935B| dw $0275
|15935D| db $04 ; Raw block
|15935E| db $30, $E0, $B0, $E0, $E0
|159363| db $92 ; Copy past
|159364| dw $028D
|159366| db $04 ; Raw block
|159367| db $1C, $00, $02, $00, $3E
|15936C| db $44 ; Repeat word
|15936D| dw $7F00
|15936F| db $02 ; Raw block
|159370| db $3E, $00, $1C
|159373| db $22 ; Repeat byte
|159374| db $00
|159375| db $08 ; Raw block
|159376| db $1C, $02, $3E, $41, $47, $22, $1C, $00
|15937E| db $18
|15937F| db $43 ; Repeat word
|159380| dw $2400
|159382| db $12 ; Raw block
|159383| db $18, $66, $18, $BD, $00, $99, $42, $BD
|15938B| db $42, $7E, $18, $18, $3C, $24, $66, $E7
|159393| db $BD, $BD, $7E
|159396| db $43 ; Repeat word
|159397| dw $1824
|159399| db $43 ; Repeat word
|15939A| dw $102C
|15939C| db $01 ; Raw block
|15939D| db $24, $18
|15939F| db $43 ; Repeat word
|1593A0| dw $102C
|1593A2| db $16 ; Raw block
|1593A3| db $18, $00, $3C, $3C, $34, $34, $3C, $34
|1593AB| db $34, $18, $FE, $4E, $FB, $1B, $BD, $15
|1593B3| db $BF, $21, $EE, $00, $47, $01, $01
|1593BA| db $22 ; Repeat byte
|1593BB| db $00
|1593BC| db $E0, $2C ; EXT Raw block
|1593BE| db $B1, $E4, $EA, $D8, $AB, $46, $01, $00
|1593C6| db $7E, $74, $D4, $C0, $AE, $88, $FA, $90
|1593CE| db $7A, $08, $EA, $80, $8E, $00, $04, $00
|1593D6| db $8A, $3C, $76, $2E, $F6, $6E, $8A, $04
|1593DE| db $7B, $0B, $5D, $15, $7F, $11, $BE, $20
|1593E6| db $A7, $01, $E1, $00, $40
|1593EB| db $22 ; Repeat byte
|1593EC| db $00
|1593ED| db $14 ; Raw block
|1593EE| db $74, $6A, $68, $DB, $E6, $A1, $40, $00
|1593F6| db $DE, $D0, $BA, $A8, $FE, $88, $7D, $04
|1593FE| db $E5, $80, $87, $00, $02
|159403| db $22 ; Repeat byte
|159404| db $00
|159405| db $E0, $44 ; EXT Raw block
|159407| db $2E, $56, $16, $DB, $67, $85, $02, $00
|15940F| db $BF, $10, $FF, $57, $FB, $59, $6A, $08
|159417| db $3F, $10, $3F, $00, $1F, $01, $07, $00
|15941F| db $EF, $A8, $A6, $77, $2F, $3F, $1E, $07
|159427| db $BD, $90, $3F, $2A, $DF, $9A, $56, $10
|15942F| db $FC, $08, $FC, $00, $F8, $80, $E0, $00
|159437| db $6F, $D5, $65, $EE, $F4, $FC, $78, $E0
|15943F| db $DA, $2D, $7F, $58, $D9, $A1, $CB, $72
|159447| db $FF, $76, $7F, $1A, $1E
|15944C| db $22 ; Repeat byte
|15944D| db $00
|15944E| db $14 ; Raw block
|15944F| db $DE, $BF, $7E, $FD, $F9, $7D, $1E, $00
|159457| db $5B, $B4, $7E, $AA, $BB, $05, $73, $5E
|15945F| db $FF, $DE, $FE, $58, $78
|159464| db $22 ; Repeat byte
|159465| db $00
|159466| db $E0, $37 ; EXT Raw block
|159468| db $7B, $7D, $FE, $BF, $3F, $BE, $78, $00
|159470| db $7D, $2B, $3E, $19, $1F, $02, $3F, $1F
|159478| db $3C, $1C, $1E, $0E, $0F, $03, $03, $00
|159480| db $77, $3F, $1D, $20, $23, $11, $0C, $03
|159488| db $FB, $FC, $06, $F8, $98, $60, $F0, $80
|159490| db $58, $50, $38, $30, $F0, $E0, $E0, $00
|159498| db $FF, $FE, $F8, $70, $A8, $C8, $10, $E0
|1594A0| db $FF ; End of GFX 84

;===================================================================================================

GFX_85:
|1594A1| db $E0, $2F ; EXT Raw block
|1594A3| db $00, $00, $07, $00, $19, $06, $27, $18
|1594AB| db $5F, $20, $BF, $40, $FF, $00, $3F, $00
|1594B3| db $00, $07, $19, $27, $5F, $BF, $FF, $3F
|1594BB| db $00, $00, $03, $00, $C5, $02, $FE, $00
|1594C3| db $FC, $00, $FE, $02, $FD, $03, $F7, $09
|1594CB| db $00, $03, $C5, $FB, $F7, $F5, $F6, $F4
|1594D3| db $23 ; Repeat byte
|1594D4| db $00
|1594D5| db $0C ; Raw block
|1594D6| db $01, $00, $02, $01, $03, $00, $05, $02
|1594DE| db $07, $00, $0B, $04, $00
|1594E3| db $63 ; Increment fill
|1594E4| db $00
|1594E5| db $0A ; Raw block
|1594E6| db $05, $07, $0B, $00, $00, $63, $00, $F5
|1594EE| db $02, $FF, $00
|1594F1| db $85 ; Copy past
|1594F2| dw $001E
|1594F4| db $09 ; Raw block
|1594F5| db $F5, $0B, $00, $63, $F5, $FB, $F7, $F7
|1594FD| db $F5, $F6
|1594FF| db $29 ; Repeat byte
|159500| db $00
|159501| db $44 ; Repeat word
|159502| dw $0001
|159504| db $25 ; Repeat byte
|159505| db $00
|159506| db $22 ; Repeat byte
|159507| db $01
|159508| db $17 ; Raw block
|159509| db $00, $00, $33, $00, $7D, $02, $FE, $00
|159511| db $BD, $40, $FE, $00, $7C, $80, $76, $8A
|159519| db $00, $33, $7D, $FB, $B7, $F7, $77, $75
|159521| db $37 ; Repeat byte
|159522| db $00
|159523| db $02 ; Raw block
|159524| db $1C, $00, $3F
|159527| db $8C ; Copy past
|159528| dw $007B
|15952A| db $01 ; Raw block
|15952B| db $1C, $3F
|15952D| db $85 ; Copy past
|15952E| dw $008A
|159530| db $E4, $33 ; EXT Repeat byte
|159532| db $00
|159533| db $07 ; Raw block
|159534| db $07, $00, $0F, $07, $18, $0F, $19, $0F
|15953C| db $43 ; Repeat word
|15953D| dw $0E1B
|15953F| db $03 ; Raw block
|159540| db $00, $00, $07, $0F
|159544| db $23 ; Repeat byte
|159545| db $1F
|159546| db $23 ; Repeat byte
|159547| db $00
|159548| db $13 ; Raw block
|159549| db $80, $00, $E0, $80, $78, $E0, $3E, $E8
|159551| db $BF, $EE, $DD, $76, $00, $00, $80, $E0
|159559| db $F8, $FE, $FF, $FF
|15955D| db $23 ; Repeat byte
|15955E| db $00
|15955F| db $04 ; Raw block
|159560| db $03, $00, $07, $03, $0E
|159565| db $46 ; Repeat word
|159566| dw $0C07
|159568| db $03 ; Raw block
|159569| db $00, $00, $03, $07
|15956D| db $23 ; Repeat byte
|15956E| db $0F
|15956F| db $23 ; Repeat byte
|159570| db $00
|159571| db $02 ; Raw block
|159572| db $FF, $00, $FF
|159575| db $49 ; Repeat word
|159576| dw $00FF
|159578| db $00 ; Raw block
|159579| db $00
|15957A| db $25 ; Repeat byte
|15957B| db $FF
|15957C| db $00 ; Raw block
|15957D| db $03
|15957E| db $83 ; Copy past
|15957F| dw $00F3
|159581| db $E0, $2D ; EXT Raw block
|159583| db $00, $1C, $03, $38, $07, $70, $0F, $61
|15958B| db $1F, $C7, $38, $03, $07, $0F, $1C, $38
|159593| db $70, $61, $C7, $FF, $00, $E0, $1F, $1F
|15959B| db $EF, $3F, $E0, $70, $CF, $C3, $BF, $C7
|1595A3| db $3F, $EF, $5F, $FF, $E0, $1F, $3F, $70
|1595AB| db $C3, $C7, $EF, $0F, $00, $01
|1595B1| db $2C ; Repeat byte
|1595B2| db $00
|1595B3| db $01 ; Raw block
|1595B4| db $0F, $01
|1595B6| db $25 ; Repeat byte
|1595B7| db $00
|1595B8| db $07 ; Raw block
|1595B9| db $FF, $01, $FE, $01, $0F, $01, $17, $08
|1595C1| db $43 ; Repeat word
|1595C2| dw $142A
|1595C4| db $00 ; Raw block
|1595C5| db $14
|1595C6| db $22 ; Repeat byte
|1595C7| db $00
|1595C8| db $09 ; Raw block
|1595C9| db $FE, $FF, $0F, $1F, $3E, $3E, $14, $00
|1595D1| db $0B, $04
|1595D3| db $43 ; Repeat word
|1595D4| dw $000F
|1595D6| db $02 ; Raw block
|1595D7| db $0E, $00, $04
|1595DA| db $26 ; Repeat byte
|1595DB| db $00
|1595DC| db $04 ; Raw block
|1595DD| db $0B, $0F, $0F, $0E, $04
|1595E2| db $22 ; Repeat byte
|1595E3| db $00
|1595E4| db $0A ; Raw block
|1595E5| db $FF, $01, $BF, $01, $1E, $09, $3F, $15
|1595ED| db $2B, $14, $12
|1595F0| db $24 ; Repeat byte
|1595F1| db $00
|1595F2| db $06 ; Raw block
|1595F3| db $FC, $BE, $1F, $3F, $3F, $12, $00
|1595FA| db $47 ; Repeat word
|1595FB| dw $0100
|1595FD| db $28 ; Repeat byte
|1595FE| db $00
|1595FF| db $23 ; Repeat byte
|159600| db $01
|159601| db $23 ; Repeat byte
|159602| db $00
|159603| db $17 ; Raw block
|159604| db $FD, $03, $FF, $09, $FF, $15, $FE, $15
|15960C| db $F7, $01, $E1, $00, $60, $00, $20, $00
|159614| db $FE, $FC, $FE, $FF, $F7, $E1, $60, $20
|15961C| db $37 ; Repeat byte
|15961D| db $00
|15961E| db $01 ; Raw block
|15961F| db $FD, $03
|159621| db $43 ; Repeat word
|159622| dw $017F
|159624| db $11 ; Raw block
|159625| db $3E, $01, $3F, $01, $1F, $00, $0A, $04
|15962D| db $15, $0A, $FE, $7C, $7E, $3F, $3F, $1F
|159635| db $0E, $1F
|159637| db $E4, $2F ; EXT Repeat byte
|159639| db $00
|15963A| db $0C ; Raw block
|15963B| db $1F, $05, $17, $09, $11, $0E, $15, $0F
|159643| db $0B, $04, $09, $06, $07
|159648| db $22 ; Repeat byte
|159649| db $00
|15964A| db $17 ; Raw block
|15964B| db $1F, $17, $11, $15, $0B, $09, $07, $00
|159653| db $9D, $F6, $8A, $FD, $E7, $79, $7F, $9E
|15965B| db $9F, $E6, $EF, $F0, $F5, $7B, $7B, $00
|159663| db $22 ; Repeat byte
|159664| db $FF
|159665| db $04 ; Raw block
|159666| db $7F, $9F, $EF, $F5, $7B
|15966B| db $43 ; Repeat word
|15966C| dw $070C
|15966E| db $05 ; Raw block
|15966F| db $0E, $03, $0B, $05, $0B, $04
|159675| db $45 ; Repeat word
|159676| dw $050A
|159678| db $22 ; Repeat byte
|159679| db $0F
|15967A| db $01 ; Raw block
|15967B| db $0B, $0B
|15967D| db $22 ; Repeat byte
|15967E| db $0A
|15967F| db $43 ; Repeat word
|159680| dw $FF00
|159682| db $0B ; Raw block
|159683| db $0F, $FF, $FF, $F0, $F9, $06, $01, $FE
|15968B| db $E2, $FD, $DD, $E3
|15968F| db $23 ; Repeat byte
|159690| db $FF
|159691| db $1C ; Raw block
|159692| db $F9, $01, $E3, $DF, $CC, $33, $96, $6B
|15969A| db $B3, $4C, $F9, $27, $B7, $68, $B3, $6F
|1596A2| db $B7, $68, $BB, $67, $CF, $97, $B3, $F9
|1596AA| db $B7, $B3, $B7, $BB, $EE
|1596AF| db $43 ; Repeat word
|1596B0| dw $EC5F
|1596B2| db $0A ; Raw block
|1596B3| db $DF, $D8, $BF, $B3, $7F, $F4, $FF, $B9
|1596BB| db $7E, $DB, $BD
|1596BE| db $22 ; Repeat byte
|1596BF| db $EF
|1596C0| db $04 ; Raw block
|1596C1| db $DF, $BF, $FF, $BF, $DE
|1596C6| db $29 ; Repeat byte
|1596C7| db $00
|1596C8| db $44 ; Repeat word
|1596C9| dw $0001
|1596CB| db $25 ; Repeat byte
|1596CC| db $00
|1596CD| db $22 ; Repeat byte
|1596CE| db $01
|1596CF| db $27 ; Repeat byte
|1596D0| db $00
|1596D1| db $07 ; Raw block
|1596D2| db $80, $00, $41, $80, $43, $81, $EF, $C3
|1596DA| db $23 ; Repeat byte
|1596DB| db $00
|1596DC| db $E0, $33 ; EXT Raw block
|1596DE| db $80, $C1, $C3, $EF, $03, $00, $04, $03
|1596E6| db $0A, $07, $16, $0F, $F5, $0B, $EE, $D9
|1596EE| db $6F, $D8, $2F, $FD, $03, $04, $0B, $17
|1596F6| db $F5, $EA, $E9, $ED, $C0, $00, $20, $C0
|1596FE| db $5E, $E0, $6B, $F6, $AD, $D3, $76, $9B
|159706| db $F7, $1B, $F5, $BF, $C0, $20, $DE, $EB
|15970E| db $AD, $57, $97, $B5
|159712| db $23 ; Repeat byte
|159713| db $00
|159714| db $13 ; Raw block
|159715| db $02, $00, $85, $02, $C5, $82, $EF, $C6
|15971D| db $7D, $C6, $3C, $CB, $00, $00, $02, $87
|159725| db $C7, $EF, $FD, $BC
|159729| db $2B ; Repeat byte
|15972A| db $00
|15972B| db $03 ; Raw block
|15972C| db $E0, $00, $90, $E0
|159730| db $25 ; Repeat byte
|159731| db $00
|159732| db $E0, $31 ; EXT Raw block
|159734| db $E0, $F0, $00, $0C, $04, $06, $82, $82
|15973C| db $01, $40, $02, $01, $81, $88, $00, $1C
|159744| db $19, $64, $0C, $06, $82, $41, $03, $81
|15974C| db $08, $39, $40, $44, $00, $0E, $1D, $4E
|159754| db $0C, $E7, $9E, $C1, $B4, $DB, $9F, $75
|15975C| db $CF, $FA, $40, $04, $1F, $0C, $9F, $B5
|159764| db $FF, $EB
|159766| db $E4, $31 ; EXT Repeat byte
|159768| db $00
|159769| db $15 ; Raw block
|15976A| db $18, $00, $24, $18, $4F, $34, $5F, $2D
|159772| db $67, $1E, $47, $3E, $39, $06, $00, $18
|15977A| db $3C, $7F, $7F, $67, $47, $39
|159780| db $83 ; Copy past
|159781| dw $03F2
|159783| db $0E ; Raw block
|159784| db $66, $3C, $FE, $0C, $0E, $F4, $86, $F8
|15978C| db $8F, $F4, $CC, $F3, $18, $3C, $7E
|159793| db $22 ; Repeat byte
|159794| db $FE
|159795| db $01 ; Raw block
|159796| db $FF, $CF
|159798| db $4F ; Repeat word
|159799| dw $050A
|15979B| db $27 ; Repeat byte
|15979C| db $0A
|15979D| db $08 ; Raw block
|15979E| db $E5, $FB, $FE, $FD, $FD, $FE, $FD, $AE
|1597A6| db $AE
|1597A7| db $23 ; Repeat byte
|1597A8| db $FF
|1597A9| db $03 ; Raw block
|1597AA| db $D5, $D5, $FF, $E5
|1597AE| db $83 ; Copy past
|1597AF| dw $043A
|1597B1| db $22 ; Repeat byte
|1597B2| db $FF
|1597B3| db $0F ; Raw block
|1597B4| db $B3, $6C, $B7, $6B, $B6, $6A, $97, $6B
|1597BC| db $FB, $35, $AB, $74, $A4, $7B, $93, $7C
|1597C4| db $62 ; Increment fill
|1597C5| db $B3
|1597C6| db $E0, $89 ; EXT Raw block
|1597C8| db $94, $FA, $BB, $BC, $9F, $6A, $DC, $B5
|1597D0| db $6E, $DA, $B7, $78, $57, $FB, $D7, $EC
|1597D8| db $33, $D7, $EF, $E0, $1F, $6F, $B7, $5B
|1597E0| db $B8, $3B, $EC, $D7, $EF, $0F, $00, $12
|1597E8| db $0F, $08, $07, $06, $01, $06, $03, $0F
|1597F0| db $06, $0B, $04, $06, $00, $0F, $1E, $08
|1597F8| db $06, $06, $0F, $0F, $06, $72, $CF, $79
|159800| db $A7, $F5, $7B, $EF, $7B, $DA, $E7, $26
|159808| db $DF, $F1, $0E, $0E, $01, $73, $79, $FD
|159810| db $EF, $DA, $26, $F1, $0E, $F2, $FF, $AD
|159818| db $FE, $12, $FF, $48, $BF, $E9, $1F, $CE
|159820| db $3F, $6A, $97, $BE, $69, $F2, $BD, $1E
|159828| db $4F, $EF, $CE, $6A, $BE, $4D, $FF, $B0
|159830| db $7F, $4A, $FD, $16, $F9, $93, $FC, $73
|159838| db $FC, $55, $EB, $7F, $84, $4D, $B8, $7A
|159840| db $F6, $F3, $73, $55, $7F, $DE, $BD, $EE
|159848| db $BD, $F6, $8F, $39, $F6, $6F, $F0, $88
|159850| db $70, $F0
|159852| db $22 ; Repeat byte
|159853| db $00
|159854| db $12 ; Raw block
|159855| db $FE, $EE, $F6, $79, $6F, $88, $F0, $00
|15985D| db $20, $C0, $C0, $00, $C0, $80, $E0, $C0
|159865| db $A0, $40, $C0
|159868| db $24 ; Repeat byte
|159869| db $00
|15986A| db $E0, $43 ; EXT Raw block
|15986C| db $20, $C0, $C0, $E0, $E0, $C0, $00, $00
|159874| db $48, $3E, $24, $1E, $47, $EA, $03, $7C
|15987C| db $01, $10, $07, $03, $09, $07, $00, $04
|159884| db $4C, $24, $67, $13, $01, $07, $09, $00
|15988C| db $87, $79, $82, $7D, $17, $FE, $E4, $DB
|159894| db $5F, $EA, $A1, $7E, $59, $37, $30, $03
|15989C| db $B1, $92, $17, $EE, $7F, $B1, $59, $30
|1598A4| db $00, $00, $18, $18, $24, $3C, $66, $18
|1598AC| db $FF, $00, $FF, $18
|1598B0| db $24 ; Repeat byte
|1598B1| db $00
|1598B2| db $04 ; Raw block
|1598B3| db $18, $3C, $7E, $18, $5C
|1598B8| db $39 ; Repeat byte
|1598B9| db $00
|1598BA| db $0C ; Raw block
|1598BB| db $1F, $00, $20, $1F, $70, $2F, $78, $37
|1598C3| db $7F, $30, $31, $0E, $1E
|1598C8| db $22 ; Repeat byte
|1598C9| db $00
|1598CA| db $01 ; Raw block
|1598CB| db $1F, $3F
|1598CD| db $22 ; Repeat byte
|1598CE| db $7F
|1598CF| db $1A ; Raw block
|1598D0| db $31, $1E, $00, $90, $EF, $98, $6F, $5F
|1598D8| db $A4, $BC, $5B, $FC, $1B, $FE, $35, $3D
|1598E0| db $02, $07, $00, $9F, $9F, $DF, $BC, $FC
|1598E8| db $FE, $3D, $07
|1598EB| db $43 ; Repeat word
|1598EC| dw $050A
|1598EE| db $03 ; Raw block
|1598EF| db $1A, $05, $0A, $05
|1598F3| db $43 ; Repeat word
|1598F4| dw $011E
|1598F6| db $83 ; Copy past
|1598F7| dw $0180
|1598F9| db $07 ; Raw block
|1598FA| db $0A, $0A, $1A, $0A, $1E, $1E, $0F, $01
|159902| db $22 ; Repeat byte
|159903| db $FF
|159904| db $01 ; Raw block
|159905| db $EA, $EA
|159907| db $24 ; Repeat byte
|159908| db $FF
|159909| db $01 ; Raw block
|15990A| db $00, $FF
|15990C| db $43 ; Repeat word
|15990D| dw $00FF
|15990F| db $24 ; Repeat byte
|159910| db $FF
|159911| db $0F ; Raw block
|159912| db $00, $FF, $FF, $C9, $3F, $64, $1F, $33
|15991A| db $0F, $18, $07, $0F, $00, $03, $00, $01
|159922| db $22 ; Repeat byte
|159923| db $00
|159924| db $1F ; Raw block
|159925| db $CF, $67, $33, $18, $0F, $03, $01, $00
|15992D| db $A0, $FF, $44, $FF, $57, $F8, $7F, $F0
|159935| db $77, $F8, $B8, $7F, $CF, $3F, $FF, $00
|15993D| db $BF, $7C, $77, $7F, $77, $B8, $CF, $FF
|159945| db $FF ; End of GFX 85

;===================================================================================================

GFX_86:
|159946| db $E0, $BC ; EXT Raw block
|159948| db $21, $00, $76, $01, $5F, $26, $5F, $20
|159950| db $2E, $15, $3F, $0E, $7F, $3C, $7E, $2D
|159958| db $21, $57, $6F, $66, $3F, $3F, $7E, $7F
|159960| db $84, $00, $6E, $80, $DE, $60, $EA, $14
|159968| db $F4, $28, $9C, $70, $CE, $3C, $5E, $B4
|159970| db $84, $EA, $F2, $76, $7C, $FC, $7E, $FE
|159978| db $01, $00, $07, $00, $0D, $02, $1F, $01
|159980| db $3E, $07, $68, $17, $79, $2E, $3D, $16
|159988| db $01, $07, $0B, $1F, $2F, $7F, $7F, $2F
|159990| db $C0, $00, $A0, $40, $78, $C0, $F4, $08
|159998| db $FC, $80, $FC, $08, $96, $6C, $26, $DC
|1599A0| db $C0, $60, $F8, $DC, $DC, $9C, $7E, $FE
|1599A8| db $20, $00, $71, $00, $6E, $11, $5E, $2D
|1599B0| db $77, $1C, $6F, $3C, $6E, $3D, $77, $1C
|1599B8| db $20, $51, $5F, $7F, $7F, $7E, $7F, $7F
|1599C0| db $04, $00, $8E, $00, $F6, $08, $7A, $B4
|1599C8| db $CE, $38, $C6, $3C, $46, $BC, $CE, $38
|1599D0| db $04, $8A, $7A, $FE, $FE, $7E, $FE, $FE
|1599D8| db $40, $00, $A0, $40, $90, $60, $48, $30
|1599E0| db $E7, $58, $FF, $00, $8F, $01, $FB, $08
|1599E8| db $40, $A0, $90, $48, $E7, $FF, $F3, $F7
|1599F0| db $02, $00, $05, $00, $09, $02, $12, $0C
|1599F8| db $E7, $18, $FD, $6E, $31, $EE, $FF, $C0
|159A00| db $02, $07, $0D, $12, $E7
|159A05| db $22 ; Repeat byte
|159A06| db $FF
|159A07| db $8B ; Copy past
|159A08| dw $0090
|159A0A| db $03 ; Raw block
|159A0B| db $8E, $01, $FB, $09
|159A0F| db $91 ; Copy past
|159A10| dw $00A0
|159A12| db $05 ; Raw block
|159A13| db $BD, $6E, $91, $EE, $FF, $40
|159A19| db $84 ; Copy past
|159A1A| dw $00B8
|159A1C| db $22 ; Repeat byte
|159A1D| db $FF
|159A1E| db $43 ; Repeat word
|159A1F| dw $0020
|159A21| db $04 ; Raw block
|159A22| db $28, $00, $2E, $10, $2F
|159A27| db $43 ; Repeat word
|159A28| dw $2E14
|159A2A| db $0A ; Raw block
|159A2B| db $11, $2F, $12, $20, $20, $38, $2E, $2B
|159A33| db $2B, $2E, $2F
|159A36| db $23 ; Repeat byte
|159A37| db $00
|159A38| db $13 ; Raw block
|159A39| db $30, $00, $CC, $00, $02, $30, $73, $8C
|159A41| db $F9, $26, $9D, $72, $00, $00, $30, $FC
|159A49| db $CE, $73, $F9, $FD
|159A4D| db $43 ; Repeat word
|159A4E| dw $0020
|159A50| db $84 ; Copy past
|159A51| dw $00F4
|159A53| db $43 ; Repeat word
|159A54| dw $2E14
|159A56| db $8A ; Copy past
|159A57| dw $00FD
|159A59| db $23 ; Repeat byte
|159A5A| db $00
|159A5B| db $85 ; Copy past
|159A5C| dw $010C
|159A5E| db $00 ; Raw block
|159A5F| db $72
|159A60| db $89 ; Copy past
|159A61| dw $0113
|159A63| db $1C ; Raw block
|159A64| db $72, $F9, $FD, $E0, $00, $90, $60, $90
|159A6C| db $40, $8C, $60, $E7, $18, $F7, $6B, $BF
|159A74| db $77, $FC, $67, $60, $10, $30, $9C, $E7
|159A7C| db $F7, $FF, $FF, $06, $00
|159A81| db $43 ; Repeat word
|159A82| dw $0409
|159A84| db $E0, $69 ; EXT Raw block
|159A86| db $31, $08, $E7, $10, $EF, $D6, $FD, $EE
|159A8E| db $39, $E6, $06, $0B, $0B, $37, $EF, $EF
|159A96| db $FF, $FF, $7E, $15, $7F, $28, $7F, $29
|159A9E| db $6F, $30, $36, $19, $1F, $0B, $0F, $03
|159AA6| db $07, $00, $6F, $77, $72, $79, $3F, $1F
|159AAE| db $0F, $07, $7E, $A8, $FE, $14, $6A, $04
|159AB6| db $F6, $0C, $64, $98, $38, $D0, $30, $C0
|159ABE| db $E0, $00, $F6, $EE, $DE, $9E, $FC, $F8
|159AC6| db $F0, $E0, $3F, $03, $3F, $04, $5B, $23
|159ACE| db $4D, $31, $6B, $34, $2C, $17, $1D, $07
|159AD6| db $07, $00, $3F, $23, $7C, $7E, $7F, $3F
|159ADE| db $1F, $07, $F6, $0C, $FE, $84, $CE, $30
|159AE6| db $B4, $48, $7C, $B8, $78, $F0, $F0, $C0
|159AEE| db $C0, $00
|159AF0| db $22 ; Repeat byte
|159AF1| db $FE
|159AF2| db $14 ; Raw block
|159AF3| db $FC, $FC, $F8, $F0, $C0, $7F, $1E, $7F
|159AFB| db $2F, $6F, $33, $3B, $14, $3E, $07, $3F
|159B03| db $17, $1F, $03, $03, $00
|159B08| db $22 ; Repeat byte
|159B09| db $7F
|159B0A| db $22 ; Repeat byte
|159B0B| db $3F
|159B0C| db $11 ; Raw block
|159B0D| db $1F, $03, $DE, $78, $BA, $F4, $F2, $CC
|159B15| db $DE, $2C, $1C, $E0, $1C, $E8, $F8, $C0
|159B1D| db $C0, $00
|159B1F| db $23 ; Repeat byte
|159B20| db $FE
|159B21| db $E0, $33 ; EXT Raw block
|159B23| db $FC, $FC, $F8, $C0, $9B, $78, $9A, $79
|159B2B| db $9F, $7D, $8B, $7D, $47, $38, $3F, $00
|159B33| db $3F, $1E, $1E, $00, $87, $87, $83, $83
|159B3B| db $47, $3F, $21, $1E, $E1, $1E, $2D, $D2
|159B43| db $BF, $C0, $FC, $B0, $CC, $30, $3C, $00
|159B4B| db $0C, $00, $04, $00, $E1, $ED, $F3, $F0
|159B53| db $F0, $30, $00, $00
|159B57| db $89 ; Copy past
|159B58| dw $0210
|159B5A| db $00 ; Raw block
|159B5B| db $3C
|159B5C| db $24 ; Repeat byte
|159B5D| db $00
|159B5E| db $84 ; Copy past
|159B5F| dw $0220
|159B61| db $02 ; Raw block
|159B62| db $3C, $00, $00
|159B65| db $87 ; Copy past
|159B66| dw $0228
|159B68| db $06 ; Raw block
|159B69| db $EC, $70, $FC, $00, $FC, $70, $7C
|159B70| db $83 ; Copy past
|159B71| dw $0237
|159B73| db $22 ; Repeat byte
|159B74| db $F0
|159B75| db $0E ; Raw block
|159B76| db $80, $78, $3B, $04, $3D, $02, $FE, $01
|159B7E| db $7E, $01, $05, $02, $03, $00, $01
|159B85| db $22 ; Repeat byte
|159B86| db $00
|159B87| db $1F ; Raw block
|159B88| db $3F, $3D, $02, $02, $05, $03, $01, $00
|159B90| db $BF, $70, $FB, $34, $FD, $06, $BF, $5A
|159B98| db $FE, $30, $FC, $00, $FC, $F8, $F8, $00
|159BA0| db $FF, $FF, $BF, $FF, $FE, $FC, $04, $F8
|159BA8| db $87 ; Copy past
|159BA9| dw $0270
|159BAB| db $02 ; Raw block
|159BAC| db $0D, $02, $07
|159BAF| db $24 ; Repeat byte
|159BB0| db $00
|159BB1| db $83 ; Copy past
|159BB2| dw $0280
|159BB4| db $02 ; Raw block
|159BB5| db $0D, $07, $00
|159BB8| db $88 ; Copy past
|159BB9| dw $0287
|159BBB| db $06 ; Raw block
|159BBC| db $FF, $30, $FF, $06, $3E, $1C, $1C
|159BC3| db $84 ; Copy past
|159BC4| dw $0297
|159BC6| db $0F ; Raw block
|159BC7| db $FF, $F9, $22, $1C, $7E, $17, $6F, $39
|159BCF| db $79, $26, $36, $1B, $37, $1D, $3F, $00
|159BD7| db $83 ; Copy past
|159BD8| dw $02C4
|159BDA| db $22 ; Repeat byte
|159BDB| db $7F
|159BDC| db $22 ; Repeat byte
|159BDD| db $3F
|159BDE| db $0C ; Raw block
|159BDF| db $22, $1C, $7E, $E8, $FA, $9C, $9A, $64
|159BE7| db $7C, $D8, $FC, $A0, $F8
|159BEC| db $24 ; Repeat byte
|159BED| db $00
|159BEE| db $22 ; Repeat byte
|159BEF| db $FE
|159BF0| db $04 ; Raw block
|159BF1| db $FC, $DC, $F8, $00, $00
|159BF6| db $99 ; Copy past
|159BF7| dw $0150
|159BF9| db $43 ; Repeat word
|159BFA| dw $0409
|159BFC| db $91 ; Copy past
|159BFD| dw $016E
|159BFF| db $10 ; Raw block
|159C00| db $7F, $00, $80, $7F, $C0, $7F, $FF, $7F
|159C08| db $7F, $00, $03, $01, $07, $01, $0F, $06
|159C10| db $7F
|159C11| db $22 ; Repeat byte
|159C12| db $FF
|159C13| db $1B ; Raw block
|159C14| db $7F, $03, $07, $0F, $FE, $00, $01, $FE
|159C1C| db $F7, $0A, $FF, $FE, $FE, $00, $C0, $80
|159C24| db $E0, $80, $90, $60, $FE, $FF, $0B, $FF
|159C2C| db $FE, $C0, $E0, $F0
|159C30| db $27 ; Repeat byte
|159C31| db $00
|159C32| db $02 ; Raw block
|159C33| db $78, $00, $F8
|159C36| db $44 ; Repeat word
|159C37| dw $F070
|159C39| db $23 ; Repeat byte
|159C3A| db $00
|159C3B| db $03 ; Raw block
|159C3C| db $78, $F8, $F0, $F0
|159C40| db $27 ; Repeat byte
|159C41| db $00
|159C42| db $02 ; Raw block
|159C43| db $1E, $00, $1D
|159C46| db $44 ; Repeat word
|159C47| dw $0D0E
|159C49| db $23 ; Repeat byte
|159C4A| db $00
|159C4B| db $15 ; Raw block
|159C4C| db $1E, $1F, $0F, $0F, $6F, $30, $3F, $10
|159C54| db $3F, $18, $1B, $0C, $0E, $03, $07, $00
|159C5C| db $05, $02, $06, $01, $7F, $3C
|159C62| db $83 ; Copy past
|159C63| dw $0194
|159C65| db $E0, $31 ; EXT Raw block
|159C67| db $06, $07, $EE, $19, $DD, $02, $9E, $11
|159C6F| db $7E, $AB, $FA, $9D, $F3, $0D, $BD, $52
|159C77| db $46, $BD, $FD, $FB, $EF, $DF, $FF, $BF
|159C7F| db $7F, $FF, $00, $00, $80, $00, $E0, $80
|159C87| db $70, $E0, $F8, $30, $EF, $10, $FD, $0A
|159C8F| db $F6, $09, $00, $80, $E0, $F0, $F8, $FF
|159C97| db $BF, $BD
|159C99| db $25 ; Repeat byte
|159C9A| db $00
|159C9B| db $09 ; Raw block
|159C9C| db $60, $00, $F0, $00, $50, $20, $60, $40
|159CA4| db $E0, $40
|159CA6| db $22 ; Repeat byte
|159CA7| db $00
|159CA8| db $E0, $34 ; EXT Raw block
|159CAA| db $60, $90, $F0, $A0, $A0, $36, $00, $7F
|159CB2| db $06, $BB, $45, $8F, $70, $67, $18, $FF
|159CBA| db $60, $FF, $41, $7F, $23, $36, $4F, $CF
|159CC2| db $F7, $7D, $FF, $F6, $7C, $00, $00, $8C
|159CCA| db $00, $DE, $80, $62, $84, $5C, $A8, $E8
|159CD2| db $10, $FE, $00, $DB, $34, $00, $8C, $D2
|159CDA| db $FE, $F4, $D8, $BE, $FB
|159CDF| db $23 ; Repeat byte
|159CE0| db $00
|159CE1| db $13 ; Raw block
|159CE2| db $1B, $00, $3F, $03, $27, $18, $17, $08
|159CEA| db $3F, $10, $3F, $11, $00, $00, $1B, $27
|159CF2| db $3B, $1F, $3F, $3E
|159CF6| db $25 ; Repeat byte
|159CF7| db $00
|159CF8| db $09 ; Raw block
|159CF9| db $90, $00, $F8, $80, $78, $90, $F8, $00
|159D01| db $D4, $38
|159D03| db $22 ; Repeat byte
|159D04| db $00
|159D05| db $E0, $21 ; EXT Raw block
|159D07| db $90, $E8, $A8, $B8, $F4, $00, $00, $03
|159D0F| db $00, $1E, $03, $3F, $00, $2E, $11, $23
|159D17| db $1C, $78, $27, $4D, $3A, $00, $03, $1F
|159D1F| db $22, $33, $3D, $7F, $7F, $60, $C0, $E0
|159D27| db $C0, $C0
|159D29| db $2A ; Repeat byte
|159D2A| db $00
|159D2B| db $02 ; Raw block
|159D2C| db $E0, $E0, $C0
|159D2F| db $24 ; Repeat byte
|159D30| db $00
|159D31| db $85 ; Copy past
|159D32| dw $02D0
|159D34| db $04 ; Raw block
|159D35| db $3E, $1B, $3F, $05, $1F
|159D3A| db $24 ; Repeat byte
|159D3B| db $00
|159D3C| db $22 ; Repeat byte
|159D3D| db $7F
|159D3E| db $04 ; Raw block
|159D3F| db $3F, $3B, $1F, $00, $00
|159D44| db $85 ; Copy past
|159D45| dw $02E8
|159D47| db $09 ; Raw block
|159D48| db $74, $D8, $F4, $B8, $FC, $00, $7C, $38
|159D50| db $38, $00
|159D52| db $22 ; Repeat byte
|159D53| db $FE
|159D54| db $22 ; Repeat byte
|159D55| db $FC
|159D56| db $05 ; Raw block
|159D57| db $44, $38, $0F, $03, $0F, $07
|159D5D| db $83 ; Copy past
|159D5E| dw $04B0
|159D60| db $87 ; Copy past
|159D61| dw $04B0
|159D63| db $27 ; Repeat byte
|159D64| db $0F
|159D65| db $01 ; Raw block
|159D66| db $10, $E0
|159D68| db $43 ; Repeat word
|159D69| dw $A0D0
|159D6B| db $49 ; Repeat word
|159D6C| dw $E090
|159D6E| db $02 ; Raw block
|159D6F| db $F0, $B0, $B0
|159D72| db $24 ; Repeat byte
|159D73| db $F0
|159D74| db $08 ; Raw block
|159D75| db $F8, $70, $FC, $70, $FF, $78, $FF, $7C
|159D7D| db $FF
|159D7E| db $44 ; Repeat word
|159D7F| dw $807F
|159D81| db $03 ; Raw block
|159D82| db $FF, $00, $F8, $FC
|159D86| db $25 ; Repeat byte
|159D87| db $FF
|159D88| db $11 ; Raw block
|159D89| db $1D, $0E, $3D, $0E, $FD, $1E, $FD, $3E
|159D91| db $FD, $FE, $0D, $F2, $01, $FE, $FF, $00
|159D99| db $1F, $3F
|159D9B| db $22 ; Repeat byte
|159D9C| db $FF
|159D9D| db $09 ; Raw block
|159D9E| db $F3, $FF, $FF, $09, $00, $1F, $03, $1B
|159DA6| db $04, $0C
|159DA8| db $28 ; Repeat byte
|159DA9| db $00
|159DAA| db $03 ; Raw block
|159DAB| db $0F, $14, $17, $0C
|159DAF| db $23 ; Repeat byte
|159DB0| db $00
|159DB1| db $0C ; Raw block
|159DB2| db $EC, $3B, $BF, $05, $4F, $32, $87, $7A
|159DBA| db $BA, $44, $7E, $00, $1C
|159DBF| db $22 ; Repeat byte
|159DC0| db $00
|159DC1| db $07 ; Raw block
|159DC2| db $FF, $BF, $4F, $87, $BA, $7E, $1C, $00
|159DCA| db $97 ; Copy past
|159DCB| dw $03A8
|159DCD| db $E0, $52 ; EXT Raw block
|159DCF| db $D8, $00, $A4, $18, $CC, $B0, $4E, $B0
|159DD7| db $EE, $90, $F6, $48, $7C, $B0, $70, $C0
|159DDF| db $D8, $A4, $CC, $CE, $EE, $F6, $FC, $F0
|159DE7| db $67, $38, $3F, $00, $16, $09, $2B, $05
|159DEF| db $6F, $08, $6E, $11, $33, $00, $01, $00
|159DF7| db $7F, $3D, $1B, $3F, $57, $5E, $33, $01
|159DFF| db $FB, $54, $F9, $E6, $DE, $68, $F4, $98
|159E07| db $E4, $38, $38, $C0, $A0, $40, $C0, $00
|159E0F| db $FB, $F9, $FE, $FC, $FC, $38, $A0, $C0
|159E17| db $1B, $0C, $0F, $00, $0E, $01, $1F, $05
|159E1F| db $0E, $01, $01
|159E22| db $24 ; Repeat byte
|159E23| db $00
|159E24| db $14 ; Raw block
|159E25| db $1F, $09, $0F, $13, $0E, $01, $00, $00
|159E2D| db $F2, $5C, $BC, $C0, $F8, $10, $F8, $B0
|159E35| db $70, $80, $40, $80, $80
|159E3A| db $22 ; Repeat byte
|159E3B| db $00
|159E3C| db $1F ; Raw block
|159E3D| db $F2, $FC, $F8, $F8, $70, $40, $80, $00
|159E45| db $74, $00, $FE, $30, $FE, $68, $FE, $44
|159E4D| db $79, $2E, $F6, $1C, $74, $08, $08, $00
|159E55| db $74, $BA, $FE, $FE, $7D, $BE, $74, $08
|159E5D| db $37 ; Repeat byte
|159E5E| db $00
|159E5F| db $FF ; End of GFX 86

;===================================================================================================

GFX_87:
|159E60| db $1F ; Raw block
|159E61| db $00, $00, $07, $00, $08, $07, $19, $07
|159E69| db $33, $0F, $73, $0F, $41, $3F, $80, $7F
|159E71| db $00, $07, $08, $11, $23, $43, $41, $80
|159E79| db $00, $00, $E0, $00, $F0, $E0, $98, $F0
|159E81| db $43 ; Repeat word
|159E82| dw $986C
|159E84| db $13 ; Raw block
|159E85| db $9A, $FC, $F2, $FC, $00, $E0, $F0, $F8
|159E8D| db $9C, $9C, $FA, $F2, $00, $00, $0F, $00
|159E95| db $10, $0F, $29, $17
|159E99| db $43 ; Repeat word
|159E9A| dw $0F73
|159E9C| db $13 ; Raw block
|159E9D| db $81, $7F, $80, $7F, $00, $0F, $10, $21
|159EA5| db $43, $43, $81, $80, $00, $00, $C0, $00
|159EAD| db $E0, $C0, $90, $E0
|159EB1| db $43 ; Repeat word
|159EB2| dw $9068
|159EB4| db $0B ; Raw block
|159EB5| db $94, $F8, $F4, $F8, $00, $C0, $E0, $F0
|159EBD| db $98, $98, $F4, $F4
|159EC1| db $29 ; Repeat byte
|159EC2| db $00
|159EC3| db $05 ; Raw block
|159EC4| db $10, $00, $3F, $00, $7F, $30
|159ECA| db $24 ; Repeat byte
|159ECB| db $00
|159ECC| db $02 ; Raw block
|159ECD| db $10, $3F, $7F
|159ED0| db $27 ; Repeat byte
|159ED1| db $00
|159ED2| db $07 ; Raw block
|159ED3| db $08, $00, $3C, $00, $E2, $1C, $FD, $DE
|159EDB| db $23 ; Repeat byte
|159EDC| db $00
|159EDD| db $E0, $4E ; EXT Raw block
|159EDF| db $08, $3C, $FE, $3F, $03, $00, $0C, $00
|159EE7| db $13, $00, $2D, $00, $5D, $00, $5E, $00
|159EEF| db $EF, $00, $55, $00, $03, $0F, $1E, $33
|159EF7| db $63, $61, $B0, $6A, $C0, $00, $30, $00
|159EFF| db $C8, $00, $B4, $00, $BA, $00, $7A, $00
|159F07| db $F7, $00, $AA, $00, $C0, $F0, $78, $CC
|159F0F| db $C6, $86, $0D, $56, $00, $00, $03, $00
|159F17| db $0F, $00, $1F, $00, $35, $00, $3B, $00
|159F1F| db $7C, $00, $3E, $1C, $00, $03, $0C, $10
|159F27| db $2A, $26, $5F, $3F, $00, $00, $80
|159F2E| db $83 ; Copy past
|159F2F| dw $0019
|159F31| db $44 ; Repeat word
|159F32| dw $F800
|159F34| db $01 ; Raw block
|159F35| db $DE, $00
|159F37| db $83 ; Copy past
|159F38| dw $00D7
|159F3A| db $E0, $35 ; EXT Raw block
|159F3C| db $60, $10, $08, $08, $26, $C1, $03, $00
|159F44| db $05, $03, $1B, $04, $3F, $00, $7D, $00
|159F4C| db $6E, $00, $7F, $00, $EB, $00, $03, $05
|159F54| db $1B, $3D, $42, $71, $40, $DC, $E0, $00
|159F5C| db $90, $E0, $E8, $10, $FC, $00, $BE, $00
|159F64| db $77, $02, $FF, $00, $D7, $00, $E0, $90
|159F6C| db $E8, $9C, $42, $8F, $03, $3B
|159F72| db $83 ; Copy past
|159F73| dw $0000
|159F75| db $13 ; Raw block
|159F76| db $1F, $00, $3F, $00, $6B, $00, $77, $00
|159F7E| db $F9, $10, $6D, $18, $00, $07, $18, $20
|159F86| db $54, $5C, $BE, $7F
|159F8A| db $87 ; Copy past
|159F8B| dw $00D8
|159F8D| db $06 ; Raw block
|159F8E| db $FC, $00, $FE, $00, $BC, $00, $68
|159F95| db $84 ; Copy past
|159F96| dw $00E7
|159F98| db $E0, $63 ; EXT Raw block
|159F9A| db $0C, $0A, $44, $98, $07, $00, $09, $07
|159FA2| db $33, $0C, $7F, $00, $7B, $00, $ED, $40
|159FAA| db $FE, $00, $FF, $00, $07, $09, $33, $5C
|159FB2| db $64, $F3, $C1, $C0, $C0, $00, $A0, $C0
|159FBA| db $DC, $20, $FE, $00, $DE, $00, $B7, $00
|159FC2| db $7F, $00, $FF, $00, $C0, $A0, $DC, $3A
|159FCA| db $26, $CF, $83, $03, $91, $6E, $AA, $55
|159FD2| db $80, $7F, $40, $3F, $30, $0F, $0F, $00
|159FDA| db $0E, $00, $07, $00, $91, $AA, $80, $40
|159FE2| db $30, $0F, $09, $07, $62, $FC, $82, $7C
|159FEA| db $02, $FC, $04, $F8, $08, $F0, $F0, $00
|159FF2| db $40, $00, $80, $00, $62, $82, $02, $04
|159FFA| db $08, $F0, $C0, $80
|159FFE| db $89 ; Copy past
|159FFF| dw $0180
|15A001| db $04 ; Raw block
|15A002| db $1F, $00, $39, $00, $1F
|15A007| db $85 ; Copy past
|15A008| dw $018F
|15A00A| db $06 ; Raw block
|15A00B| db $1F, $27, $1F, $64, $F8, $84, $78
|15A012| db $83 ; Copy past
|15A013| dw $019E
|15A015| db $E0, $F4 ; EXT Raw block
|15A017| db $10, $E0, $E0, $00, $70, $00, $E0, $00
|15A01F| db $64, $84, $04, $08, $10, $E0, $90, $E0
|15A027| db $7E, $30, $3D, $01, $1F, $01, $13, $02
|15A02F| db $33, $03, $49, $31, $2F, $18, $12, $0C
|15A037| db $7F, $3E, $18, $1C, $3C, $5E, $2F, $12
|15A03F| db $FD, $E6, $FD, $F6, $FF, $EE, $FE, $10
|15A047| db $FC, $F8, $FE, $F4, $FA, $0C, $24, $18
|15A04F| db $1F, $0F, $1F, $0E, $04, $0E, $FA, $34
|15A057| db $65, $00, $7B, $00, $9E, $00, $4D, $00
|15A05F| db $71, $00, $FF, $11, $13, $E3, $98, $E8
|15A067| db $7A, $54, $E1, $7B, $7F, $EE, $1C, $97
|15A06F| db $A6, $00, $DE, $00, $79, $00, $B2, $00
|15A077| db $8C, $00, $FE, $88, $CD, $CA, $19, $17
|15A07F| db $5E, $2A, $87, $DE, $FC, $76, $35, $E9
|15A087| db $3F, $12, $5F, $22, $7D, $3E, $7F, $06
|15A08F| db $7F, $00, $3F, $03, $10, $0F, $0F, $00
|15A097| db $3F, $73, $7F, $77, $77, $3F, $10, $0F
|15A09F| db $F6, $00, $E2, $00, $3C, $00, $FE, $00
|15A0A7| db $3F, $00, $9A, $00, $CC, $00, $30, $00
|15A0AF| db $8E, $1E, $C4, $82, $C1, $EE, $FC, $30
|15A0B7| db $9C, $08, $DF, $08, $F7, $0D, $B6, $0B
|15A0BF| db $5F, $08, $3F, $04, $07, $03, $03, $00
|15A0C7| db $FF, $BB, $BD, $DB, $7B, $3F, $07, $03
|15A0CF| db $39, $10, $FB, $10, $EF, $B0, $6D, $D0
|15A0D7| db $FA, $10, $FC, $20, $E0, $C0, $C0, $00
|15A0DF| db $FF, $DD, $BD, $DB, $DE, $FC, $E0, $C0
|15A0E7| db $2E, $14, $7E, $24, $9E, $6C, $FF, $7E
|15A0EF| db $FF, $02, $7E, $2F, $39, $06, $16, $00
|15A0F7| db $3F, $77, $EF, $FF, $FF, $6E, $29, $16
|15A0FF| db $C4, $00, $FE, $00, $BF, $00, $7D, $00
|15A107| db $62, $00, $8C, $00, $F0
|15A10C| db $22 ; Repeat byte
|15A10D| db $00
|15A10E| db $E0, $67 ; EXT Raw block
|15A110| db $3C, $1E, $C5, $83, $9E, $FC, $F0, $00
|15A118| db $AF, $00, $DF, $00, $FF, $0A, $FF, $09
|15A120| db $BF, $0C, $5E, $0B, $2F, $03, $0F, $00
|15A128| db $D4, $FE, $BF, $DB, $DD, $7F, $2B, $0B
|15A130| db $F5, $00, $FB, $00, $FF, $50, $FF, $90
|15A138| db $FD, $30, $7A, $D0, $F4, $C0, $F0, $00
|15A140| db $2B, $7F, $FD, $DB, $BB, $FE, $D4, $D0
|15A148| db $00, $00, $21, $00, $76, $01, $59, $07
|15A150| db $2F, $03, $5F, $27, $EE, $7F, $DD, $3E
|15A158| db $00, $21, $57, $6F, $37, $7F, $FE, $9C
|15A160| db $00, $00, $F0, $00, $1C, $F0, $FA, $F4
|15A168| db $F3, $EC, $73, $EC, $2B, $FC, $A3, $7C
|15A170| db $00, $F0, $FC, $FE, $FF, $7F, $3F, $37
|15A178| db $29 ; Repeat byte
|15A179| db $00
|15A17A| db $43 ; Repeat word
|15A17B| dw $0007
|15A17D| db $00 ; Raw block
|15A17E| db $0E
|15A17F| db $25 ; Repeat byte
|15A180| db $00
|15A181| db $02 ; Raw block
|15A182| db $07, $07, $0F
|15A185| db $25 ; Repeat byte
|15A186| db $00
|15A187| db $09 ; Raw block
|15A188| db $08, $00, $78, $00, $EC, $18, $EC, $98
|15A190| db $EC, $58
|15A192| db $22 ; Repeat byte
|15A193| db $00
|15A194| db $1C ; Raw block
|15A195| db $08, $78, $FC, $7C, $FC, $07, $00, $0F
|15A19D| db $06, $17, $0E, $25, $1E, $2B, $1D, $2D
|15A1A5| db $18, $1B, $02, $1E, $01, $07, $0F, $1F
|15A1AD| db $3D, $3A, $2F, $1D, $1F
|15A1B2| db $83 ; Copy past
|15A1B3| dw $001A
|15A1B5| db $07 ; Raw block
|15A1B6| db $1F, $10, $EC, $0B, $DF, $6B, $F5, $A3
|15A1BE| db $43 ; Repeat word
|15A1BF| dw $F52E
|15A1C1| db $1F ; Raw block
|15A1C2| db $E0, $10, $EF, $F4, $D7, $FD, $EA, $EA
|15A1CA| db $08, $00, $14, $08, $1A, $04, $D2, $0C
|15A1D2| db $36, $CC, $D6, $EC, $AA, $F4, $96, $F8
|15A1DA| db $08, $1C, $1E, $DE, $3E, $D6, $EA, $F6
|15A1E2| db $83 ; Copy past
|15A1E3| dw $0000
|15A1E5| db $86 ; Copy past
|15A1E6| dw $0362
|15A1E8| db $05 ; Raw block
|15A1E9| db $1C, $2D, $1B, $78, $07, $00
|15A1EF| db $83 ; Copy past
|15A1F0| dw $0370
|15A1F2| db $02 ; Raw block
|15A1F3| db $3B, $2F, $7F
|15A1F6| db $85 ; Copy past
|15A1F7| dw $0018
|15A1F9| db $83 ; Copy past
|15A1FA| dw $037C
|15A1FC| db $06 ; Raw block
|15A1FD| db $BF, $DB, $D5, $63, $D6, $E5, $00
|15A204| db $83 ; Copy past
|15A205| dw $0388
|15A207| db $02 ; Raw block
|15A208| db $A7, $DD, $DA
|15A20B| db $23 ; Repeat byte
|15A20C| db $00
|15A20D| db $E0, $37 ; EXT Raw block
|15A20F| db $18, $00, $24, $18, $DA, $0C, $36, $CC
|15A217| db $DE, $E4, $AA, $F4, $00, $00, $18, $3C
|15A21F| db $DE, $36, $DE, $EA, $00, $00, $01, $00
|15A227| db $0F, $01, $17, $0B, $3B, $1D, $33, $1D
|15A22F| db $79, $3E, $7D, $1E, $00, $01, $0E, $14
|15A237| db $3A, $32, $79, $7D, $3C, $00, $FF, $3C
|15A23F| db $FF, $66, $FF, $42, $DB, $66, $E7, $7E
|15A247| db $43 ; Repeat word
|15A248| dw $BDFF
|15A24A| db $00 ; Raw block
|15A24B| db $3C
|15A24C| db $22 ; Repeat byte
|15A24D| db $FF
|15A24E| db $03 ; Raw block
|15A24F| db $DB, $E7, $7E, $7E
|15A253| db $83 ; Copy past
|15A254| dw $0318
|15A256| db $E0, $68 ; EXT Raw block
|15A258| db $C8, $B0, $F4, $D8, $DC, $B8, $CE, $B8
|15A260| db $DE, $B0, $F6, $9C, $00, $F0, $48, $34
|15A268| db $5C, $4E, $5E, $7E, $29, $1E, $55, $3E
|15A270| db $67, $3D, $6D, $3E, $7B, $3C, $36, $19
|15A278| db $1D, $03, $0A, $07, $29, $5D, $7E, $7D
|15A280| db $7B, $36, $1D, $0B, $81, $81, $C3, $C3
|15A288| db $81, $FF, $FF, $00, $01, $FE, $CE, $FF
|15A290| db $31, $FF, $54, $EF, $7E, $3C, $00, $FF
|15A298| db $01, $FE, $FF, $D7, $98, $70, $9C, $78
|15A2A0| db $CC, $B8, $C6, $BC, $D6, $3C, $CE, $3C
|15A2A8| db $64, $98, $F8, $A0, $98, $9C, $5C, $5E
|15A2B0| db $DE, $CE, $64, $F8, $EB, $1C, $A7, $58
|15A2B8| db $88, $7F, $5F, $3E, $3E, $01, $10, $0F
|15A2C0| db $0F
|15A2C1| db $22 ; Repeat byte
|15A2C2| db $00
|15A2C3| db $14 ; Raw block
|15A2C4| db $AA, $80, $98, $5E, $2A, $10, $0F, $00
|15A2CC| db $87, $78, $0E, $F0, $44, $B8, $88, $70
|15A2D4| db $18, $E0, $70, $80, $80
|15A2D9| db $22 ; Repeat byte
|15A2DA| db $00
|15A2DB| db $08 ; Raw block
|15A2DC| db $0F, $0E, $04, $88, $18, $70, $80, $00
|15A2E4| db $0D
|15A2E5| db $84 ; Copy past
|15A2E6| dw $01E3
|15A2E8| db $12 ; Raw block
|15A2E9| db $13, $03, $09, $01, $07, $00, $02, $01
|15A2F1| db $01, $00, $0E, $18, $1C, $1C, $0E, $07
|15A2F9| db $03, $01, $CC
|15A2FC| db $43 ; Repeat word
|15A2FD| dw $FC78
|15A2FF| db $E0, $49 ; EXT Raw block
|15A301| db $00, $FC, $F8, $F8, $F0, $F0, $00, $F0
|15A309| db $E0, $E0, $00, $FC, $FC, $7C, $04, $08
|15A311| db $F0, $F0, $E0, $12, $0D, $33, $1F, $3E
|15A319| db $1F, $13, $0C, $1E, $03, $1A, $0F, $3C
|15A321| db $07, $1F, $00, $1F, $3F, $3E, $13, $1E
|15A329| db $1E, $24, $1F, $CD, $F3, $13, $EF, $67
|15A331| db $9D, $9F, $7D, $C3, $3C, $BF, $00, $83
|15A339| db $00, $01, $00, $CD, $13, $67, $9F, $C3
|15A341| db $BF, $82, $01, $14, $F8, $B4, $F8, $54
|15A349| db $E8, $68
|15A34B| db $43 ; Repeat word
|15A34C| dw $E8F0
|15A34E| db $E0, $3E ; EXT Raw block
|15A350| db $70, $C8, $70, $F0, $00, $F4, $F4, $D4
|15A358| db $E8, $E8, $68, $48, $F0, $C8, $37, $87
|15A360| db $7F, $D8, $7F, $67, $38, $3F, $07, $0D
|15A368| db $03, $0F, $01, $07, $00, $FF, $FF, $F8
|15A370| db $67, $3F, $0F, $09, $07, $BE, $DD, $6D
|15A378| db $A3, $D3, $4D, $E7, $9B, $5E, $BB, $AD
|15A380| db $D7, $1E, $E3, $EF, $00, $A2, $5D, $B3
|15A388| db $E7, $5F, $AF, $12, $EF, $96, $F8
|15A38F| db $83 ; Copy past
|15A390| dw $0510
|15A392| db $05 ; Raw block
|15A393| db $D4, $E8, $94, $E8, $28, $D0
|15A399| db $83 ; Copy past
|15A39A| dw $04A2
|15A39C| db $14 ; Raw block
|15A39D| db $F6, $F4, $F4, $D4, $94, $28, $70, $80
|15A3A5| db $6D, $3A, $43, $3C, $6B, $3D, $37, $18
|15A3AD| db $1D, $07, $0D, $03, $07
|15A3B2| db $22 ; Repeat byte
|15A3B3| db $00
|15A3B4| db $E0, $28 ; EXT Raw block
|15A3B6| db $7D, $7B, $7B, $37, $1F, $09, $07, $00
|15A3BE| db $FF, $DB, $DB, $C3, $E7, $24, $FF, $C3
|15A3C6| db $DB, $3C, $FD, $83, $85, $02, $03, $00
|15A3CE| db $3C, $3C, $DB, $FF, $DB, $FD, $84, $03
|15A3D6| db $C2, $BC, $D6, $3C, $EC, $D8, $78, $C0
|15A3DE| db $F0
|15A3DF| db $43 ; Repeat word
|15A3E0| dw $30E0
|15A3E2| db $15 ; Raw block
|15A3E3| db $C0, $E0, $00, $5E, $DE, $EC, $78, $F0
|15A3EB| db $F0, $10, $E0, $0A, $07, $09, $07, $07
|15A3F3| db $02, $0B, $05, $0E, $07, $0F
|15A3F9| db $24 ; Repeat byte
|15A3FA| db $00
|15A3FB| db $E0, $20 ; EXT Raw block
|15A3FD| db $0B, $09, $07, $0F, $0E, $0F, $00, $00
|15A405| db $AA, $D7, $E5, $BB, $FB, $B7, $6D, $9B
|15A40D| db $55, $8B, $CC, $03, $07, $00, $03, $00
|15A415| db $AB, $E5, $FB, $7D, $5D, $CC, $07, $03
|15A41D| db $B0
|15A41E| db $44 ; Repeat word
|15A41F| dw $A0C0
|15A421| db $11 ; Raw block
|15A422| db $60, $80, $E0, $C0, $D0, $A0, $F0, $20
|15A42A| db $E0, $00, $B0, $A0, $A0, $60, $E0, $F0
|15A432| db $F0, $E0
|15A434| db $FF ; End of GFX 87

;===================================================================================================

GFX_88:
|15A435| db $E0, $2F ; EXT Raw block
|15A437| db $00, $00, $78, $00, $E4, $78, $F3, $1C
|15A43F| db $DF, $6D, $4E, $17, $5C, $17, $7E, $2F
|15A447| db $00, $78, $FC, $FF, $9F, $6F, $6F, $5F
|15A44F| db $00, $00, $1E, $00, $27, $1E, $CF, $38
|15A457| db $FB, $B6, $72, $E8, $3A, $E8, $7E, $F4
|15A45F| db $00, $1E, $3F, $FF, $F9, $F6, $F6, $FA
|15A467| db $25 ; Repeat byte
|15A468| db $00
|15A469| db $09 ; Raw block
|15A46A| db $03, $00, $07, $03, $0B, $07, $09, $07
|15A472| db $37, $09
|15A474| db $22 ; Repeat byte
|15A475| db $00
|15A476| db $1C ; Raw block
|15A477| db $03, $07, $0F, $0F, $3F, $38, $00, $64
|15A47F| db $38, $FC, $40, $E6, $3C, $DE, $70, $B2
|15A487| db $6C, $EC, $D8, $F4, $D0, $38, $7C, $FC
|15A48F| db $FE, $FE, $F2, $E4, $EC
|15A494| db $83 ; Copy past
|15A495| dw $0000
|15A497| db $0D ; Raw block
|15A498| db $CF, $78, $E7, $7D, $FF, $3D, $7F, $1B
|15A4A0| db $7D, $27, $3E, $0F, $00, $78
|15A4A6| db $22 ; Repeat byte
|15A4A7| db $FF
|15A4A8| db $02 ; Raw block
|15A4A9| db $7F, $5F, $3F
|15A4AC| db $83 ; Copy past
|15A4AD| dw $0018
|15A4AF| db $0D ; Raw block
|15A4B0| db $F3, $1E, $E7, $BE, $FF, $BC, $FE, $D8
|15A4B8| db $BE, $E4, $7C, $F0, $00, $1E
|15A4BE| db $22 ; Repeat byte
|15A4BF| db $FF
|15A4C0| db $02 ; Raw block
|15A4C1| db $FE, $FA, $FC
|15A4C4| db $27 ; Repeat byte
|15A4C5| db $00
|15A4C6| db $07 ; Raw block
|15A4C7| db $30, $00, $5C, $10, $BE, $3C, $FB, $08
|15A4CF| db $23 ; Repeat byte
|15A4D0| db $00
|15A4D1| db $03 ; Raw block
|15A4D2| db $30, $6C, $C2, $F7
|15A4D6| db $25 ; Repeat byte
|15A4D7| db $00
|15A4D8| db $09 ; Raw block
|15A4D9| db $04, $00, $0E, $04, $32, $00, $7E, $2C
|15A4E1| db $DC, $10
|15A4E3| db $22 ; Repeat byte
|15A4E4| db $00
|15A4E5| db $05 ; Raw block
|15A4E6| db $04, $0A, $3E, $52, $EC, $0E
|15A4EC| db $45 ; Repeat word
|15A4ED| dw $1F00
|15A4EF| db $11 ; Raw block
|15A4F0| db $01, $2F, $13, $2F, $1C, $3F, $10, $17
|15A4F8| db $08, $0E, $11, $15, $12, $2C, $23, $2C
|15A500| db $10, $70
|15A502| db $45 ; Repeat word
|15A503| dw $F800
|15A505| db $10 ; Raw block
|15A506| db $80, $F4, $C8, $F4, $38, $FC, $08, $E8
|15A50E| db $10, $70, $88, $A8, $48, $34, $C4, $34
|15A516| db $08
|15A517| db $27 ; Repeat byte
|15A518| db $00
|15A519| db $06 ; Raw block
|15A51A| db $04, $00, $0F, $04, $1F, $09, $1E
|15A521| db $24 ; Repeat byte
|15A522| db $00
|15A523| db $03 ; Raw block
|15A524| db $04, $0B, $16, $1B
|15A528| db $27 ; Repeat byte
|15A529| db $00
|15A52A| db $07 ; Raw block
|15A52B| db $30, $00, $F8, $30, $F8, $D0, $FC, $D8
|15A533| db $23 ; Repeat byte
|15A534| db $00
|15A535| db $03 ; Raw block
|15A536| db $30, $C8, $28, $24
|15A53A| db $23 ; Repeat byte
|15A53B| db $00
|15A53C| db $05 ; Raw block
|15A53D| db $04, $00, $0A, $04, $0E, $04
|15A543| db $43 ; Repeat word
|15A544| dw $0C1A
|15A546| db $09 ; Raw block
|15A547| db $34, $18, $00, $00, $04, $0E, $0E, $1E
|15A54F| db $1E, $3C
|15A551| db $85 ; Copy past
|15A552| dw $0018
|15A554| db $04 ; Raw block
|15A555| db $19, $07, $06, $01, $01
|15A55A| db $25 ; Repeat byte
|15A55B| db $00
|15A55C| db $04 ; Raw block
|15A55D| db $1E, $27, $1F, $07, $01
|15A562| db $2B ; Repeat byte
|15A563| db $00
|15A564| db $83 ; Copy past
|15A565| dw $00F8
|15A567| db $01 ; Raw block
|15A568| db $1C, $08
|15A56A| db $24 ; Repeat byte
|15A56B| db $00
|15A56C| db $02 ; Raw block
|15A56D| db $04, $0B, $17
|15A570| db $29 ; Repeat byte
|15A571| db $00
|15A572| db $05 ; Raw block
|15A573| db $20, $00, $F0, $20, $F8, $B0
|15A579| db $24 ; Repeat byte
|15A57A| db $00
|15A57B| db $0F ; Raw block
|15A57C| db $20, $D0, $48, $3F, $1B, $3F, $19, $3F
|15A584| db $1D, $1C, $07, $06, $03, $03, $01, $01
|15A58C| db $22 ; Repeat byte
|15A58D| db $00
|15A58E| db $14 ; Raw block
|15A58F| db $3F, $3B, $3D, $1F, $07, $03, $01, $00
|15A597| db $FC, $D8, $FC, $98, $FC, $B8, $38, $E0
|15A59F| db $60, $C0, $C0, $80, $80
|15A5A4| db $22 ; Repeat byte
|15A5A5| db $00
|15A5A6| db $12 ; Raw block
|15A5A7| db $FC, $DC, $BC, $F8, $E0, $C0, $80, $00
|15A5AF| db $5F, $33, $7E, $37, $3C, $1F, $1E, $0F
|15A5B7| db $0F, $03, $03
|15A5BA| db $24 ; Repeat byte
|15A5BB| db $00
|15A5BC| db $12 ; Raw block
|15A5BD| db $7B, $77, $3F, $1F, $0F, $03, $00, $00
|15A5C5| db $6C, $C0, $38, $E0, $38, $F0, $F8, $F0
|15A5CD| db $F0, $C0, $C0
|15A5D0| db $24 ; Repeat byte
|15A5D1| db $00
|15A5D2| db $00 ; Raw block
|15A5D3| db $FC
|15A5D4| db $22 ; Repeat byte
|15A5D5| db $F8
|15A5D6| db $0A ; Raw block
|15A5D7| db $F0, $C0, $00, $00, $3B, $1F, $38, $1F
|15A5DF| db $3C, $1F, $1F
|15A5E2| db $83 ; Copy past
|15A5E3| dw $01B7
|15A5E5| db $24 ; Repeat byte
|15A5E6| db $00
|15A5E7| db $22 ; Repeat byte
|15A5E8| db $3F
|15A5E9| db $84 ; Copy past
|15A5EA| dw $01C3
|15A5EC| db $05 ; Raw block
|15A5ED| db $DC, $F8, $1C, $F8, $3C, $F8
|15A5F3| db $84 ; Copy past
|15A5F4| dw $01CE
|15A5F6| db $24 ; Repeat byte
|15A5F7| db $00
|15A5F8| db $22 ; Repeat byte
|15A5F9| db $FC
|15A5FA| db $84 ; Copy past
|15A5FB| dw $01DB
|15A5FD| db $0A ; Raw block
|15A5FE| db $FF, $08, $9B, $68, $7F, $08, $3E, $14
|15A606| db $1F, $01, $01
|15A609| db $24 ; Repeat byte
|15A60A| db $00
|15A60B| db $14 ; Raw block
|15A60C| db $95, $F6, $75, $3B, $1E, $01, $00, $00
|15A614| db $F8, $10, $D8, $10, $FC, $10, $7C, $28
|15A61C| db $FA, $DC, $E6, $38, $3C
|15A621| db $22 ; Repeat byte
|15A622| db $00
|15A623| db $E0, $38 ; EXT Raw block
|15A625| db $A8, $68, $AC, $DC, $3E, $FA, $3C, $00
|15A62D| db $29, $00, $5E, $18, $5F, $16, $7D, $37
|15A635| db $3E, $03, $17, $05, $2F, $0C, $1E, $00
|15A63D| db $3E, $67, $6F, $4F, $3F, $1B, $33, $1E
|15A645| db $94, $00, $7A, $18, $FA, $68, $BE, $EC
|15A64D| db $7C, $C0, $E8, $A0, $F4, $30, $78, $00
|15A655| db $7C, $E6, $F6, $F2, $FC, $D8, $CC, $78
|15A65D| db $1E
|15A65E| db $43 ; Repeat word
|15A65F| dw $1F00
|15A661| db $07 ; Raw block
|15A662| db $08, $0D, $00, $0B, $05, $0D, $03, $07
|15A66A| db $22 ; Repeat byte
|15A66B| db $00
|15A66C| db $14 ; Raw block
|15A66D| db $17, $19, $16, $0F, $0F, $0B, $07, $00
|15A675| db $34, $10, $FA, $08, $BC, $40, $F0, $00
|15A67D| db $E0, $80, $E0, $C0, $C0
|15A682| db $22 ; Repeat byte
|15A683| db $00
|15A684| db $09 ; Raw block
|15A685| db $EC, $F6, $7C, $F0, $E0, $E0, $C0, $00
|15A68D| db $34, $18
|15A68F| db $43 ; Repeat word
|15A690| dw $3068
|15A692| db $43 ; Repeat word
|15A693| dw $2050
|15A695| db $00 ; Raw block
|15A696| db $20
|15A697| db $24 ; Repeat byte
|15A698| db $00
|15A699| db $05 ; Raw block
|15A69A| db $3C, $78, $78, $50, $50, $20
|15A6A0| db $25 ; Repeat byte
|15A6A1| db $00
|15A6A2| db $08 ; Raw block
|15A6A3| db $80, $00, $E0, $80, $78, $E0, $94, $78
|15A6AB| db $78
|15A6AC| db $24 ; Repeat byte
|15A6AD| db $00
|15A6AE| db $10 ; Raw block
|15A6AF| db $80, $E0, $F8, $FC, $78, $00, $19, $01
|15A6B7| db $3F, $03, $27, $18, $1F, $05, $3D, $18
|15A6BF| db $1F
|15A6C0| db $24 ; Repeat byte
|15A6C1| db $00
|15A6C2| db $1F ; Raw block
|15A6C3| db $1E, $24, $3F, $1A, $3F, $1F, $00, $00
|15A6CB| db $DE, $58, $95, $10, $3E, $28, $3C, $20
|15A6D3| db $FE, $4C, $EE, $1C, $6C, $18, $38, $00
|15A6DB| db $A6, $EF, $D6, $DC, $BE, $FE, $5C, $38
|15A6E3| db $25 ; Repeat byte
|15A6E4| db $00
|15A6E5| db $83 ; Copy past
|15A6E6| dw $0098
|15A6E8| db $05 ; Raw block
|15A6E9| db $9E, $1C, $BB, $28, $FF, $68
|15A6EF| db $22 ; Repeat byte
|15A6F0| db $00
|15A6F1| db $04 ; Raw block
|15A6F2| db $30, $6C, $E2, $D7, $95
|15A6F7| db $25 ; Repeat byte
|15A6F8| db $00
|15A6F9| db $09 ; Raw block
|15A6FA| db $0C, $00, $32, $00, $79, $38, $DD, $14
|15A702| db $FF, $16
|15A704| db $22 ; Repeat byte
|15A705| db $00
|15A706| db $04 ; Raw block
|15A707| db $0C, $3E, $47, $EB, $A9
|15A70C| db $25 ; Repeat byte
|15A70D| db $00
|15A70E| db $09 ; Raw block
|15A70F| db $20, $00, $50, $00, $BC, $20, $FF, $6C
|15A717| db $7F, $1F
|15A719| db $22 ; Repeat byte
|15A71A| db $00
|15A71B| db $04 ; Raw block
|15A71C| db $20, $70, $DC, $93, $60
|15A721| db $27 ; Repeat byte
|15A722| db $00
|15A723| db $07 ; Raw block
|15A724| db $0C, $00, $3A, $08, $FD, $34, $FF, $F0
|15A72C| db $23 ; Repeat byte
|15A72D| db $00
|15A72E| db $03 ; Raw block
|15A72F| db $0C, $36, $CB, $0F
|15A733| db $25 ; Repeat byte
|15A734| db $00
|15A735| db $83 ; Copy past
|15A736| dw $0098
|15A738| db $05 ; Raw block
|15A739| db $9F, $1C, $BB, $2B, $F8, $28
|15A73F| db $22 ; Repeat byte
|15A740| db $00
|15A741| db $04 ; Raw block
|15A742| db $30, $6C, $E3, $D4, $D7
|15A747| db $25 ; Repeat byte
|15A748| db $00
|15A749| db $83 ; Copy past
|15A74A| dw $0350
|15A74C| db $05 ; Raw block
|15A74D| db $F9, $38, $DD, $D4, $1F, $14
|15A753| db $22 ; Repeat byte
|15A754| db $00
|15A755| db $E0, $4C ; EXT Raw block
|15A757| db $0C, $36, $C7, $2B, $EB, $07, $00, $1E
|15A75F| db $01, $2F, $10, $5C, $23, $5E, $21, $FE
|15A767| db $01, $FC, $03, $99, $66, $07, $19, $30
|15A76F| db $63, $61, $A9, $AB, $EF, $E0, $00, $70
|15A777| db $80, $58, $A0, $30, $C0, $B8, $F0, $58
|15A77F| db $F0, $3C, $F8, $FC, $18, $E0, $90, $E8
|15A787| db $F0, $F8, $F8, $FC, $FC, $4F, $38, $9C
|15A78F| db $73, $9B, $67, $B6, $4F, $AC, $5F, $A8
|15A797| db $5F, $DF, $3F, $BF, $78, $4F, $9C, $9B
|15A79F| db $B7, $AF, $AF, $DF, $BF
|15A7A4| db $25 ; Repeat byte
|15A7A5| db $00
|15A7A6| db $23 ; Repeat byte
|15A7A7| db $30
|15A7A8| db $28 ; Repeat byte
|15A7A9| db $00
|15A7AA| db $01 ; Raw block
|15A7AB| db $30, $30
|15A7AD| db $26 ; Repeat byte
|15A7AE| db $00
|15A7AF| db $13 ; Raw block
|15A7B0| db $0E, $00, $19, $06, $35, $0E, $6F, $12
|15A7B8| db $4C, $13, $5D, $12, $00, $00, $0E, $17
|15A7C0| db $2E, $5E, $7F, $63
|15A7C4| db $27 ; Repeat byte
|15A7C5| db $00
|15A7C6| db $45 ; Repeat word
|15A7C7| dw $0080
|15A7C9| db $00 ; Raw block
|15A7CA| db $C0
|15A7CB| db $24 ; Repeat byte
|15A7CC| db $00
|15A7CD| db $22 ; Repeat byte
|15A7CE| db $80
|15A7CF| db $01 ; Raw block
|15A7D0| db $40, $04
|15A7D2| db $44 ; Repeat word
|15A7D3| dw $0E00
|15A7D5| db $89 ; Copy past
|15A7D6| dw $03F6
|15A7D8| db $01 ; Raw block
|15A7D9| db $04, $0A
|15A7DB| db $85 ; Copy past
|15A7DC| dw $0402
|15A7DE| db $23 ; Repeat byte
|15A7DF| db $00
|15A7E0| db $18 ; Raw block
|15A7E1| db $1E, $00, $3F, $00, $EE, $10, $D8, $30
|15A7E9| db $F4, $08, $AA, $44, $00, $00, $1E, $21
|15A7F1| db $DE, $B8, $BC, $6E, $00, $00, $7F, $00
|15A7F9| db $77
|15A7FA| db $44 ; Repeat word
|15A7FB| dw $542B
|15A7FD| db $07 ; Raw block
|15A7FE| db $7F, $00, $5C, $23, $55, $2B, $00, $7F
|15A806| db $22 ; Repeat byte
|15A807| db $77
|15A808| db $07 ; Raw block
|15A809| db $54, $77, $77, $00, $00, $FE, $00, $EE
|15A811| db $44 ; Repeat word
|15A812| dw $2AD4
|15A814| db $07 ; Raw block
|15A815| db $FE, $00, $3A, $C4, $6A, $D4, $00, $FE
|15A81D| db $22 ; Repeat byte
|15A81E| db $EE
|15A81F| db $0D ; Raw block
|15A820| db $2A, $EE, $EE, $FB, $08, $DF, $28, $BE
|15A828| db $54, $6F, $1B, $37, $0C, $1C
|15A82E| db $24 ; Repeat byte
|15A82F| db $00
|15A830| db $12 ; Raw block
|15A831| db $F6, $B5, $FB, $7C, $2F, $1C, $00, $00
|15A839| db $DF, $10, $FB, $14, $7D, $2A, $F6, $D8
|15A841| db $EC, $30, $78
|15A844| db $24 ; Repeat byte
|15A845| db $00
|15A846| db $12 ; Raw block
|15A847| db $6F, $AD, $DF, $3E, $F4, $78, $00, $00
|15A84F| db $3B, $1B, $38, $18, $3C, $0C, $3F, $16
|15A857| db $1F, $00, $01
|15A85A| db $24 ; Repeat byte
|15A85B| db $00
|15A85C| db $14 ; Raw block
|15A85D| db $24, $27, $33, $39, $1F, $01, $00, $00
|15A865| db $DF, $D0, $19, $16, $3E, $38, $7C, $40
|15A86D| db $E4, $B8, $FC, $40, $78
|15A872| db $22 ; Repeat byte
|15A873| db $00
|15A874| db $12 ; Raw block
|15A875| db $29, $EF, $C6, $BC, $7C, $FC, $78, $00
|15A87D| db $BC, $4C, $DE, $2E, $7F, $07, $3F, $12
|15A885| db $27, $1C, $1E
|15A888| db $24 ; Repeat byte
|15A889| db $00
|15A88A| db $12 ; Raw block
|15A88B| db $F3, $B1, $78, $3D, $3F, $1E, $00, $00
|15A893| db $3D, $32, $7B, $74, $FE, $E0, $FC, $48
|15A89B| db $E4, $38, $78
|15A89E| db $24 ; Repeat byte
|15A89F| db $00
|15A8A0| db $E0, $44 ; EXT Raw block
|15A8A2| db $CF, $8D, $1E, $BC, $FC, $78, $00, $00
|15A8AA| db $E3, $1C, $FF, $00, $53, $22, $8F, $70
|15A8B2| db $7F, $00, $FE, $01, $8F, $70, $77, $00
|15A8BA| db $BE, $AF, $5D, $8E, $7A, $8B, $89, $77
|15A8C2| db $FC, $08, $BC, $48, $88, $70, $A6, $58
|15A8CA| db $71, $AE, $5E, $BC, $BC, $70, $F0, $00
|15A8D2| db $1C, $4C, $78, $7E, $FF, $FE, $FC, $F0
|15A8DA| db $BF, $70, $7F, $20, $6F, $30, $77, $38
|15A8E2| db $38, $1F, $1F, $07, $07
|15A8E7| db $22 ; Repeat byte
|15A8E8| db $00
|15A8E9| db $06 ; Raw block
|15A8EA| db $BF, $7F, $6F, $77, $38, $1F, $07
|15A8F1| db $38 ; Repeat byte
|15A8F2| db $00
|15A8F3| db $E0, $3C ; EXT Raw block
|15A8F5| db $5F, $01, $3F, $08, $2F, $12, $73, $01
|15A8FD| db $71, $00, $21, $00, $02, $01, $01, $00
|15A905| db $7F, $3F, $3F, $53, $51, $21, $03, $01
|15A90D| db $60, $80, $F0, $00, $F8, $00, $FE, $80
|15A915| db $F7, $08, $BE, $40, $DC, $A0, $F8, $00
|15A91D| db $A0, $B0, $A8, $D6, $DD, $AE, $F4, $F8
|15A925| db $5F, $00, $21, $00, $01, $00, $02, $01
|15A92D| db $0F, $00, $13, $06, $0F
|15A932| db $22 ; Repeat byte
|15A933| db $00
|15A934| db $E0, $4F ; EXT Raw block
|15A936| db $7E, $21, $01, $03, $0D, $1F, $0F, $00
|15A93E| db $6A, $84, $F4, $00, $F8, $80, $FE, $20
|15A946| db $37, $08, $EE, $10, $70, $00, $C0, $00
|15A94E| db $EE, $D4, $A8, $F6, $3D, $DE, $B0, $C0
|15A956| db $77, $2B, $77, $2A, $41, $3E, $7F, $00
|15A95E| db $77, $2A, $77, $2B, $40, $3F, $7F, $00
|15A966| db $77, $77, $40, $7E, $77, $77, $40, $7F
|15A96E| db $EE, $D4, $EE, $54, $82, $7C, $FE, $00
|15A976| db $EE, $54, $EE, $D4, $02, $FC, $FE, $00
|15A97E| db $EE, $EE, $02, $7E, $EE, $EE, $02, $FE
|15A986| db $FF ; End of GFX 88

;===================================================================================================

GFX_89:
|15A987| db $E0, $8F ; EXT Raw block
|15A989| db $01, $00, $03, $00, $0F, $00, $1E, $0D
|15A991| db $3A, $19, $79, $18, $BE, $1E, $DF, $5E
|15A999| db $01, $02, $0F, $12, $26, $67, $E1, $A1
|15A9A1| db $80, $00, $C0, $00, $F0, $00, $78, $B0
|15A9A9| db $7C, $98, $FE, $08, $2D, $08, $8B, $0A
|15A9B1| db $80, $40, $F0, $48, $44, $86, $D7, $F5
|15A9B9| db $00, $00, $07, $00, $1F, $07, $3B, $1A
|15A9C1| db $6B, $22, $7F, $23, $E9, $61, $F0, $30
|15A9C9| db $00, $07, $18, $25, $55, $40, $96, $CF
|15A9D1| db $00, $00, $80, $00, $FD, $00, $3F, $C0
|15A9D9| db $1F, $E0, $BF, $40, $FF, $A0, $7F, $70
|15A9E1| db $00, $80, $FD, $22, $11, $BB, $5A, $8D
|15A9E9| db $03, $00, $06, $01, $0D, $02, $1F, $08
|15A9F1| db $3F, $1C, $7F, $18, $BF, $10, $DF, $58
|15A9F9| db $03, $06, $0D, $16, $22, $65, $E8, $A4
|15AA01| db $C0, $00, $60, $80, $B0, $40, $F8, $10
|15AA09| db $EC, $28, $EE, $08, $F5, $00, $F3, $02
|15AA11| db $C0, $60, $B0, $68, $54, $36, $1F, $5D
|15AA19| db $27 ; Repeat byte
|15AA1A| db $00
|15AA1B| db $07 ; Raw block
|15AA1C| db $30, $00, $6F, $10, $F8, $47, $FF, $68
|15AA24| db $23 ; Repeat byte
|15AA25| db $00
|15AA26| db $03 ; Raw block
|15AA27| db $30, $6F, $B8, $9F
|15AA2B| db $27 ; Repeat byte
|15AA2C| db $00
|15AA2D| db $07 ; Raw block
|15AA2E| db $0C, $00, $F4, $08, $1E, $E0, $FF, $14
|15AA36| db $23 ; Repeat byte
|15AA37| db $00
|15AA38| db $E0, $63 ; EXT Raw block
|15AA3A| db $0C, $F4, $1E, $FB, $0F, $06, $1F, $03
|15AA42| db $23, $1C, $4E, $37, $5F, $28, $7C, $27
|15AA4A| db $79, $2E, $7B, $2D, $0F, $1F, $3F, $7E
|15AA52| db $77, $7F, $7F, $7E, $D2, $3C, $BE, $6C
|15AA5A| db $FC, $48, $58, $A0, $4E, $F0, $E9, $36
|15AA62| db $F7, $BE, $FE, $D8, $FE, $FE, $FC, $78
|15AA6A| db $7E, $FF, $7F, $3E, $3F, $06, $47, $3B
|15AA72| db $B4, $7F, $FE, $61, $FE, $6B, $FD, $56
|15AA7A| db $FD, $46, $7D, $16, $3F, $7F, $FC, $FE
|15AA82| db $F7, $EF, $FF, $6F, $BF, $76, $F6, $40
|15AA8A| db $68, $B0, $64, $F8, $F2, $9C, $FA, $6C
|15AA92| db $FE, $EC, $BE, $AC, $FF, $F6, $78, $7C
|15AA9A| db $FE, $9E, $1E, $5E
|15AA9E| db $2D ; Repeat byte
|15AA9F| db $00
|15AAA0| db $00 ; Raw block
|15AAA1| db $07
|15AAA2| db $27 ; Repeat byte
|15AAA3| db $00
|15AAA4| db $00 ; Raw block
|15AAA5| db $07
|15AAA6| db $27 ; Repeat byte
|15AAA7| db $00
|15AAA8| db $07 ; Raw block
|15AAA9| db $70, $00, $58, $30, $EC, $38, $E6, $B8
|15AAB1| db $23 ; Repeat byte
|15AAB2| db $00
|15AAB3| db $03 ; Raw block
|15AAB4| db $70, $78, $FC, $FE
|15AAB8| db $E4, $21 ; EXT Repeat byte
|15AABA| db $00
|15AABB| db $85 ; Copy past
|15AABC| dw $0140
|15AABE| db $24 ; Repeat byte
|15AABF| db $00
|15AAC0| db $E0, $3F ; EXT Raw block
|15AAC2| db $70, $78, $FC, $FF, $7C, $6F, $2C, $27
|15AACA| db $04, $3B, $12, $1F, $03, $0F, $03, $07
|15AAD2| db $00, $03, $00, $82, $50, $39, $25, $10
|15AADA| db $0C, $07, $03, $FF, $3E, $EE, $2C, $C4
|15AAE2| db $00, $9C, $08, $38, $00, $F0, $C0, $E0
|15AAEA| db $00, $C0, $00, $41, $12, $BC, $E4, $C8
|15AAF2| db $30, $E0, $C0, $F9, $18, $FA, $1A, $FF
|15AAFA| db $1F, $FF, $7E, $7F, $16, $3F, $07, $1F
|15AB02| db $22 ; Repeat byte
|15AB03| db $00
|15AB04| db $14 ; Raw block
|15AB05| db $A7, $85, $C0, $81, $61, $20, $1F, $00
|15AB0D| db $FA, $70, $78, $30, $F8, $B0, $F8, $70
|15AB15| db $F0, $E0, $E0, $80, $80
|15AB1A| db $22 ; Repeat byte
|15AB1B| db $00
|15AB1C| db $14 ; Raw block
|15AB1D| db $8A, $C8, $48, $88, $10, $60, $80, $00
|15AB25| db $F7, $74, $67, $24, $37, $14, $3B, $1A
|15AB2D| db $1F, $0F, $0F, $03, $03
|15AB32| db $22 ; Repeat byte
|15AB33| db $00
|15AB34| db $14 ; Raw block
|15AB35| db $8A, $5A, $2A, $25, $10, $0C, $03, $00
|15AB3D| db $E7, $06, $E6, $04, $EC, $28, $DC, $D8
|15AB45| db $F8, $F0, $F0, $C0, $C0
|15AB4A| db $22 ; Repeat byte
|15AB4B| db $00
|15AB4C| db $10 ; Raw block
|15AB4D| db $39, $BA, $D4, $24, $08, $30, $C0, $00
|15AB55| db $FE, $6D, $FC, $27, $FF, $13, $DF, $58
|15AB5D| db $FC
|15AB5E| db $26 ; Repeat byte
|15AB5F| db $00
|15AB60| db $04 ; Raw block
|15AB61| db $9F, $DF, $EF, $A7, $FC
|15AB66| db $22 ; Repeat byte
|15AB67| db $00
|15AB68| db $E0, $49 ; EXT Raw block
|15AB6A| db $7F, $A6, $3F, $EE, $FF, $DE, $EF, $0C
|15AB72| db $7F, $2E, $79, $38, $7F, $30, $3E, $00
|15AB7A| db $F9, $F1, $E1, $F3, $51, $47, $4F, $3E
|15AB82| db $FF, $4D, $FF, $4E, $FF, $66, $FF, $59
|15AB8A| db $FF, $5F, $7F, $0E, $1F, $04, $07, $00
|15AB92| db $FE, $FF, $9F, $A6, $A0, $71, $1B, $07
|15AB9A| db $BC, $A0, $9E, $9C, $99, $90, $0D, $08
|15ABA2| db $CF, $CA, $FE, $70, $F8, $20, $E0, $00
|15ABAA| db $5C, $62, $6F, $F7, $35, $8E, $D8, $E0
|15ABB2| db $3D, $16
|15ABB4| db $44 ; Repeat word
|15ABB5| dw $367F
|15ABB7| db $E0, $5A ; EXT Raw block
|15ABB9| db $29, $7F, $2E, $3F, $04, $1F, $00, $07
|15ABC1| db $00, $2F, $4F, $4F, $56, $51, $3B, $1F
|15ABC9| db $07, $9C, $90, $8E, $8C, $86, $84, $DA
|15ABD1| db $D0, $DE, $54, $FC, $20, $F8, $00, $E0
|15ABD9| db $00, $6C, $72, $7A, $2E, $AA, $DC, $F8
|15ABE1| db $E0, $19, $07, $3F, $10, $3B, $0B, $33
|15ABE9| db $13, $3B, $0B, $6D, $2D, $47, $05, $4F
|15ABF1| db $0C, $1F, $3F, $34, $2C, $34, $52, $7A
|15ABF9| db $73, $EE, $F8, $5E, $F4, $FF, $7E, $F7
|15AC01| db $BA, $EF, $BC, $FD, $32, $F3, $2C, $EF
|15AC09| db $12, $FE, $FE, $FF, $7F, $7F, $FD, $F3
|15AC11| db $EF, $07, $00
|15AC14| db $8D ; Copy past
|15AC15| dw $02A0
|15AC17| db $00 ; Raw block
|15AC18| db $07
|15AC19| db $86 ; Copy past
|15AC1A| dw $02B0
|15AC1C| db $01 ; Raw block
|15AC1D| db $E6, $B8
|15AC1F| db $8D ; Copy past
|15AC20| dw $02B8
|15AC22| db $22 ; Repeat byte
|15AC23| db $FE
|15AC24| db $84 ; Copy past
|15AC25| dw $02CA
|15AC27| db $E0, $2A ; EXT Raw block
|15AC29| db $00, $00, $13, $00, $3F, $13, $6E, $26
|15AC31| db $CD, $45, $FF, $77, $7D, $2D, $39, $19
|15AC39| db $00, $13, $2C, $59, $BA, $88, $52, $26
|15AC41| db $47, $00, $FF, $47, $FE, $6F, $DB, $BF
|15AC49| db $C7, $BC, $EF, $BB, $EC, $BF, $F8, $3F
|15AC51| db $47, $FF, $FF
|15AC54| db $23 ; Repeat byte
|15AC55| db $7F
|15AC56| db $1C ; Raw block
|15AC57| db $FF, $38, $00, $4F, $08, $8F, $05, $DF
|15AC5F| db $5D, $F6, $32, $67, $05, $73, $33, $7F
|15AC67| db $1E, $38, $77, $FA, $A2, $CD, $7A, $4C
|15AC6F| db $61, $2E, $38, $5E, $74
|15AC74| db $86 ; Copy past
|15AC75| dw $02BC
|15AC77| db $0C ; Raw block
|15AC78| db $B2, $F3, $6C, $EF, $12, $3E, $7E, $FF
|15AC80| db $7F, $7F, $7D, $F3, $EF
|15AC85| db $23 ; Repeat byte
|15AC86| db $00
|15AC87| db $13 ; Raw block
|15AC88| db $03, $00, $07, $03, $0C, $04, $19, $09
|15AC90| db $1B, $0B, $1F, $0F, $00, $00, $03, $04
|15AC98| db $0B, $16, $14, $10
|15AC9C| db $84 ; Copy past
|15AC9D| dw $0318
|15AC9F| db $02 ; Raw block
|15ACA0| db $2F, $DB, $7F
|15ACA3| db $84 ; Copy past
|15ACA4| dw $0320
|15ACA6| db $03 ; Raw block
|15ACA7| db $DF, $78, $5F, $47
|15ACAB| db $22 ; Repeat byte
|15ACAC| db $FF
|15ACAD| db $03 ; Raw block
|15ACAE| db $7F, $7F, $3F, $BF
|15ACB2| db $23 ; Repeat byte
|15ACB3| db $00
|15ACB4| db $13 ; Raw block
|15ACB5| db $18, $00, $34, $18, $32, $1C, $1A, $0C
|15ACBD| db $19, $0E, $0D, $06, $00, $00, $18, $3C
|15ACC5| db $3E, $1E, $1F, $0F
|15ACC9| db $2B ; Repeat byte
|15ACCA| db $00
|15ACCB| db $03 ; Raw block
|15ACCC| db $18, $00, $24, $18
|15ACD0| db $25 ; Repeat byte
|15ACD1| db $00
|15ACD2| db $0B ; Raw block
|15ACD3| db $18, $3C, $18, $00, $23, $00, $5F, $00
|15ACDB| db $5C, $00, $3F, $00
|15ACDF| db $83 ; Copy past
|15ACE0| dw $027C
|15ACE2| db $12 ; Raw block
|15ACE3| db $0F, $00, $1F, $3C, $60, $7F, $2F, $1F
|15ACEB| db $05, $0D, $1F, $01, $E7, $02, $EB, $00
|15ACF3| db $15, $00, $C9
|15ACF6| db $44 ; Repeat word
|15ACF7| dw $FF00
|15ACF9| db $E0, $21 ; EXT Raw block
|15ACFB| db $BF, $40, $FF, $1F, $17, $EB, $77, $6D
|15AD03| db $ED, $AE, $F8, $C0, $C4, $38, $1E, $FC
|15AD0B| db $FC, $C0, $C4, $38, $FA, $64, $E4, $18
|15AD13| db $FA, $1C, $F8, $FC, $FE, $FC, $FC, $FE
|15AD1B| db $FC, $7E
|15AD1D| db $27 ; Repeat byte
|15AD1E| db $00
|15AD1F| db $07 ; Raw block
|15AD20| db $1C, $00, $63, $1C, $BE, $59, $FC, $13
|15AD28| db $23 ; Repeat byte
|15AD29| db $00
|15AD2A| db $E0, $68 ; EXT Raw block
|15AD2C| db $1C, $7F, $FF, $FF, $6F, $2C, $FF, $39
|15AD34| db $DF, $51, $BF, $20, $FF, $6B, $7C, $30
|15AD3C| db $32, $00, $01, $00, $53, $C6, $AE, $DF
|15AD44| db $94, $4F, $33, $01, $FE, $EC, $3E, $34
|15AD4C| db $3C, $28, $DC, $D0, $DC, $10, $BC, $B8
|15AD54| db $FC, $F0, $F8, $00, $1E, $CE, $D4, $2C
|15AD5C| db $EC, $44, $0C, $F8, $4F, $0C, $EF, $6D
|15AD64| db $FE, $38, $DF, $50, $BF, $23, $FE, $6A
|15AD6C| db $7D, $35, $37, $00, $73, $92, $C7, $AF
|15AD74| db $DC, $95, $4A, $37, $EF, $D2, $3E, $2C
|15AD7C| db $7F, $6C, $7F, $62, $FD, $CC, $EE, $80
|15AD84| db $C0, $80, $80, $00, $2F, $DE, $9F, $9D
|15AD8C| db $33, $6E, $40, $80, $3B, $1B, $1F, $0E
|15AD94| db $0E
|15AD95| db $2A ; Repeat byte
|15AD96| db $00
|15AD97| db $02 ; Raw block
|15AD98| db $24, $11, $0E
|15AD9B| db $24 ; Repeat byte
|15AD9C| db $00
|15AD9D| db $06 ; Raw block
|15AD9E| db $6D, $3F, $7F, $1F, $1F, $07, $07
|15ADA5| db $28 ; Repeat byte
|15ADA6| db $00
|15ADA7| db $03 ; Raw block
|15ADA8| db $7F, $7F, $1F, $07
|15ADAC| db $23 ; Repeat byte
|15ADAD| db $00
|15ADAE| db $16 ; Raw block
|15ADAF| db $3F, $0C, $1F, $01, $0F, $05, $07, $00
|15ADB7| db $07, $03, $04, $00, $02, $00, $01, $00
|15ADBF| db $33, $1E, $0E, $07, $04, $07, $03
|15ADC6| db $98 ; Copy past
|15ADC7| dw $0437
|15ADC9| db $1E ; Raw block
|15ADCA| db $39, $11, $33, $12, $35, $15, $37, $16
|15ADD2| db $1F, $0D, $17, $06, $0B, $03, $07, $00
|15ADDA| db $2E, $2D, $2A, $29, $12, $19, $0C, $07
|15ADE2| db $ED, $BF, $FF, $1F, $9F, $07, $07
|15ADE9| db $45 ; Repeat word
|15ADEA| dw $8000
|15ADEC| db $22 ; Repeat byte
|15ADED| db $00
|15ADEE| db $03 ; Raw block
|15ADEF| db $7F, $FF, $9F, $07
|15ADF3| db $22 ; Repeat byte
|15ADF4| db $80
|15ADF5| db $26 ; Repeat byte
|15ADF6| db $00
|15ADF7| db $09 ; Raw block
|15ADF8| db $38, $00, $64, $38, $F2, $7C, $FA, $6C
|15AE00| db $7D, $26
|15AE02| db $22 ; Repeat byte
|15AE03| db $00
|15AE04| db $04 ; Raw block
|15AE05| db $38, $7C, $FE, $FE, $7F
|15AE0A| db $29 ; Repeat byte
|15AE0B| db $00
|15AE0C| db $05 ; Raw block
|15AE0D| db $1C, $00, $22, $1C, $4D, $3E
|15AE13| db $24 ; Repeat byte
|15AE14| db $00
|15AE15| db $0F ; Raw block
|15AE16| db $1C, $3E, $7F, $1F, $00, $1E, $01, $1D
|15AE1E| db $02, $3B, $04, $3F, $00, $1E, $00, $0F
|15AE26| db $22 ; Repeat byte
|15AE27| db $00
|15AE28| db $14 ; Raw block
|15AE29| db $17, $16, $15, $2A, $2E, $11, $0F, $00
|15AE31| db $17, $E8, $3D, $C0, $3B, $C0, $F4, $00
|15AE39| db $C8, $00, $30, $00, $C0
|15AE3E| db $22 ; Repeat byte
|15AE3F| db $00
|15AE40| db $14 ; Raw block
|15AE41| db $16, $2B, $27, $CC, $38, $F0, $C0, $00
|15AE49| db $FD, $02, $FA, $10, $FC, $08, $78, $00
|15AE51| db $7C, $30, $FE, $7C, $FC
|15AE56| db $22 ; Repeat byte
|15AE57| db $00
|15AE58| db $06 ; Raw block
|15AE59| db $3F, $BA, $DC, $78, $4C, $82, $FC
|15AE60| db $2A ; Repeat byte
|15AE61| db $00
|15AE62| db $05 ; Raw block
|15AE63| db $E0, $00, $10, $E0, $68, $F0
|15AE69| db $24 ; Repeat byte
|15AE6A| db $00
|15AE6B| db $02 ; Raw block
|15AE6C| db $E0, $F0, $F8
|15AE6F| db $27 ; Repeat byte
|15AE70| db $00
|15AE71| db $83 ; Copy past
|15AE72| dw $0002
|15AE74| db $02 ; Raw block
|15AE75| db $15, $00, $2B
|15AE78| db $24 ; Repeat byte
|15AE79| db $00
|15AE7A| db $03 ; Raw block
|15AE7B| db $03, $0C, $1A, $34
|15AE7F| db $27 ; Repeat byte
|15AE80| db $00
|15AE81| db $06 ; Raw block
|15AE82| db $F0, $00, $CC, $00, $F2, $00, $FD
|15AE89| db $24 ; Repeat byte
|15AE8A| db $00
|15AE8B| db $03 ; Raw block
|15AE8C| db $F0, $3C, $0E, $03
|15AE90| db $27 ; Repeat byte
|15AE91| db $00
|15AE92| db $06 ; Raw block
|15AE93| db $03, $00, $01, $00, $02, $00, $06
|15AE9A| db $24 ; Repeat byte
|15AE9B| db $00
|15AE9C| db $03 ; Raw block
|15AE9D| db $01, $01, $03, $03
|15AEA1| db $25 ; Repeat byte
|15AEA2| db $00
|15AEA3| db $08 ; Raw block
|15AEA4| db $E0, $00, $18, $00, $A4, $00, $7A, $00
|15AEAC| db $BD
|15AEAD| db $23 ; Repeat byte
|15AEAE| db $00
|15AEAF| db $04 ; Raw block
|15AEB0| db $E0, $F8, $5C, $86, $43
|15AEB5| db $FF ; End of GFX 89

;===================================================================================================

GFX_8A:
|15AEB6| db $23 ; Repeat byte
|15AEB7| db $00
|15AEB8| db $08 ; Raw block
|15AEB9| db $1C, $00, $45, $00, $FF, $00, $45, $00
|15AEC1| db $1C
|15AEC2| db $25 ; Repeat byte
|15AEC3| db $00
|15AEC4| db $02 ; Raw block
|15AEC5| db $01, $00, $01
|15AEC8| db $27 ; Repeat byte
|15AEC9| db $00
|15AECA| db $04 ; Raw block
|15AECB| db $F0, $00, $08, $F0, $F0
|15AED0| db $27 ; Repeat byte
|15AED1| db $00
|15AED2| db $02 ; Raw block
|15AED3| db $F0, $08, $F0
|15AED6| db $27 ; Repeat byte
|15AED7| db $00
|15AED8| db $09 ; Raw block
|15AED9| db $20, $00, $50, $20, $FF, $30, $B7, $1F
|15AEE1| db $B8, $2F
|15AEE3| db $22 ; Repeat byte
|15AEE4| db $00
|15AEE5| db $05 ; Raw block
|15AEE6| db $20, $70, $FF, $FF, $DF, $06
|15AEEC| db $44 ; Repeat word
|15AEED| dw $0900
|15AEEF| db $E0, $A1 ; EXT Raw block
|15AEF1| db $0F, $02, $1F, $04, $FD, $12, $EE, $F4
|15AEF9| db $1C, $F8, $06, $0F, $0F, $0D, $1B, $FF
|15AF01| db $FE, $FC, $00, $00, $10, $00, $2B, $00
|15AF09| db $47, $03, $FA, $7A, $FF, $77, $7E, $16
|15AF11| db $1E, $0E, $00, $10, $3B, $7C, $85, $88
|15AF19| db $69, $11, $00, $00, $08, $00, $D4, $00
|15AF21| db $E2, $C0, $39, $38, $3D, $2C, $5E, $08
|15AF29| db $18, $10, $00, $08, $DC, $3E, $C7, $D3
|15AF31| db $B6, $E8, $00, $00, $30, $00, $4B, $00
|15AF39| db $77, $33, $FA, $6A, $7C, $04, $1E, $0E
|15AF41| db $3F, $13, $00, $30, $7B, $4C, $95, $7B
|15AF49| db $11, $2C, $00, $00, $0C, $00, $D2, $00
|15AF51| db $FA, $D8, $3D, $34, $5E, $00, $38, $30
|15AF59| db $7C, $48, $00, $0C, $DE, $26, $CB, $BE
|15AF61| db $C8, $B4, $00, $00, $03, $00, $07, $03
|15AF69| db $0C, $04, $0A, $00, $18, $08, $1F, $0F
|15AF71| db $3F, $0C, $00, $03, $04, $0B, $0D, $17
|15AF79| db $10, $33, $00, $00, $C0, $00, $E0, $C0
|15AF81| db $F8, $E0, $64, $40, $E4, $C0, $CE, $CC
|15AF89| db $FE, $CC, $00, $C0, $20, $18, $BC, $3C
|15AF91| db $32, $32
|15AF93| db $25 ; Repeat byte
|15AF94| db $00
|15AF95| db $09 ; Raw block
|15AF96| db $20, $00, $58, $28, $EF, $58, $B4, $18
|15AF9E| db $72, $0C
|15AFA0| db $22 ; Repeat byte
|15AFA1| db $00
|15AFA2| db $04 ; Raw block
|15AFA3| db $20, $78, $BF, $FF, $7F
|15AFA8| db $25 ; Repeat byte
|15AFA9| db $00
|15AFAA| db $09 ; Raw block
|15AFAB| db $06, $00, $1D, $16, $FF, $1A, $2F, $14
|15AFB3| db $5F, $36
|15AFB5| db $22 ; Repeat byte
|15AFB6| db $00
|15AFB7| db $E0, $4C ; EXT Raw block
|15AFB9| db $06, $1F, $FF, $FB, $F9, $08, $00, $0F
|15AFC1| db $00, $1C, $00, $3B, $10, $77, $20, $EF
|15AFC9| db $40, $6F, $00, $5F, $00, $00, $03, $17
|15AFD1| db $2C, $58, $B0, $70, $60, $FF, $0F, $0F
|15AFD9| db $00, $F7, $05, $EB, $01, $F3, $02, $EB
|15AFE1| db $02, $D3, $02, $A7, $04, $FF, $FF, $0B
|15AFE9| db $17, $0D, $15, $2D, $5B, $FC, $00, $86
|15AFF1| db $7C, $1C, $F0, $7C, $E8, $FE, $98, $FD
|15AFF9| db $02, $E2, $1C, $FC, $10, $FC, $FE, $FC
|15B001| db $FC, $FE, $BF, $BE, $3C
|15B006| db $25 ; Repeat byte
|15B007| db $00
|15B008| db $09 ; Raw block
|15B009| db $0C, $00, $12, $0C, $6D, $18, $AE, $59
|15B011| db $B8, $57
|15B013| db $22 ; Repeat byte
|15B014| db $00
|15B015| db $09 ; Raw block
|15B016| db $0C, $1E, $7D, $FF, $FF, $08, $00, $1C
|15B01E| db $00, $08
|15B020| db $44 ; Repeat word
|15B021| dw $2A00
|15B023| db $04 ; Raw block
|15B024| db $3E, $00, $08, $00, $1C
|15B029| db $27 ; Repeat byte
|15B02A| db $00
|15B02B| db $00 ; Raw block
|15B02C| db $14
|15B02D| db $47 ; Repeat word
|15B02E| dw $0814
|15B030| db $00 ; Raw block
|15B031| db $08
|15B032| db $26 ; Repeat byte
|15B033| db $00
|15B034| db $23 ; Repeat byte
|15B035| db $14
|15B036| db $00 ; Raw block
|15B037| db $08
|15B038| db $22 ; Repeat byte
|15B039| db $00
|15B03A| db $0C ; Raw block
|15B03B| db $BC, $2F, $EF, $14, $34, $18, $3D, $08
|15B043| db $3F, $13, $2F, $08, $1E
|15B048| db $22 ; Repeat byte
|15B049| db $00
|15B04A| db $14 ; Raw block
|15B04B| db $DF, $EF, $37, $3F, $2C, $37, $1E, $00
|15B053| db $3C, $F0, $F4, $E8, $EC, $18, $1C, $F0
|15B05B| db $FC, $A8, $F4, $10, $78
|15B060| db $22 ; Repeat byte
|15B061| db $00
|15B062| db $14 ; Raw block
|15B063| db $FC, $F4, $EC, $1C, $74, $EC, $78, $00
|15B06B| db $3F, $13, $7F, $3F, $7C, $3C, $3C, $1C
|15B073| db $3E, $1E, $1F, $07, $07
|15B078| db $22 ; Repeat byte
|15B079| db $00
|15B07A| db $14 ; Raw block
|15B07B| db $2C, $40, $43, $23, $21, $18, $07, $00
|15B083| db $3C, $38, $EE, $EC, $0E, $0C, $0C, $08
|15B08B| db $1C, $18, $F8, $E0, $E0
|15B090| db $22 ; Repeat byte
|15B091| db $00
|15B092| db $07 ; Raw block
|15B093| db $C4, $12, $F2, $F4, $E4, $18, $E0, $00
|15B09B| db $43 ; Repeat word
|15B09C| dw $317F
|15B09E| db $13 ; Raw block
|15B09F| db $6F, $29, $77, $34, $3E, $12, $1F, $05
|15B0A7| db $1F, $03, $0B, $00, $46, $42, $50, $4B
|15B0AF| db $2D, $12, $14, $0B
|15B0B3| db $43 ; Repeat word
|15B0B4| dw $8CFE
|15B0B6| db $E0, $2F ; EXT Raw block
|15B0B8| db $F2, $90, $E6, $24, $3C, $08, $58, $00
|15B0C0| db $F8, $C0, $D0, $00, $62, $42, $0E, $DA
|15B0C8| db $F4, $E8, $28, $D0, $7F, $21, $4F, $01
|15B0D0| db $5F, $11, $7E, $3E, $7E, $0E, $3F, $03
|15B0D8| db $3F, $00, $10, $00, $5E, $78, $60, $41
|15B0E0| db $71, $2C, $2F, $10, $FC, $E8, $BC, $B0
|15B0E8| db $43 ; Repeat word
|15B0E9| dw $181C
|15B0EB| db $04 ; Raw block
|15B0EC| db $3C, $38, $F8, $E0, $E0
|15B0F1| db $22 ; Repeat byte
|15B0F2| db $00
|15B0F3| db $E0, $2A ; EXT Raw block
|15B0F5| db $14, $4C, $E4, $E4, $C4, $18, $E0, $00
|15B0FD| db $19, $0E, $2F, $1F, $37, $18, $39, $0E
|15B105| db $3F, $13, $2F, $0C, $36, $04, $1C, $00
|15B10D| db $1F, $2F, $36, $38, $2F, $33, $2A, $1C
|15B115| db $9D, $6C, $F9, $E8, $EA, $10, $9E, $70
|15B11D| db $FC, $C8, $F8
|15B120| db $24 ; Repeat byte
|15B121| db $00
|15B122| db $0E ; Raw block
|15B123| db $F3, $F7, $6E, $1E, $F4, $F8, $00, $00
|15B12B| db $5D, $00, $BA, $00, $B0, $00, $41
|15B132| db $46 ; Repeat word
|15B133| dw $3F00
|15B135| db $E0, $2E ; EXT Raw block
|15B137| db $17, $00, $62, $C5, $CF, $7F, $3E, $2E
|15B13F| db $29, $17, $0F, $08, $3F, $30, $FD, $C0
|15B147| db $FB, $00, $F4, $00, $C9, $00, $31, $00
|15B14F| db $C0, $00, $F6, $CE, $2B, $EF, $DC, $B9
|15B157| db $F1, $C0, $F0, $00, $F8, $00, $FC, $18
|15B15F| db $F8, $00, $F8, $60, $FC, $F8, $F8
|15B166| db $22 ; Repeat byte
|15B167| db $00
|15B168| db $06 ; Raw block
|15B169| db $30, $B8, $BC, $F8, $98, $04, $F8
|15B170| db $2A ; Repeat byte
|15B171| db $00
|15B172| db $05 ; Raw block
|15B173| db $E0, $00, $30, $E0, $E0, $80
|15B179| db $24 ; Repeat byte
|15B17A| db $00
|15B17B| db $02 ; Raw block
|15B17C| db $E0, $F0, $E0
|15B17F| db $25 ; Repeat byte
|15B180| db $00
|15B181| db $09 ; Raw block
|15B182| db $70, $00, $B8, $60, $FF, $28, $F7, $4F
|15B18A| db $F8, $5F
|15B18C| db $22 ; Repeat byte
|15B18D| db $00
|15B18E| db $04 ; Raw block
|15B18F| db $70, $F8, $FF, $BF, $BF
|15B194| db $25 ; Repeat byte
|15B195| db $00
|15B196| db $09 ; Raw block
|15B197| db $0C, $00, $1A, $04, $FF, $1A, $EF, $F6
|15B19F| db $1D, $E4
|15B1A1| db $22 ; Repeat byte
|15B1A2| db $00
|15B1A3| db $04 ; Raw block
|15B1A4| db $0C, $1E, $FD, $F9, $FB
|15B1A9| db $27 ; Repeat byte
|15B1AA| db $00
|15B1AB| db $07 ; Raw block
|15B1AC| db $0C, $00, $0F, $04, $13, $02, $17, $05
|15B1B4| db $23 ; Repeat byte
|15B1B5| db $00
|15B1B6| db $1B ; Raw block
|15B1B7| db $0C, $0B, $1D, $1B, $70, $00, $98, $10
|15B1BF| db $B8, $30, $F0, $40, $F8, $70, $F8, $10
|15B1C7| db $B8, $60, $FC, $68, $70, $E8, $C8, $B0
|15B1CF| db $88, $E8, $F8, $FC
|15B1D3| db $29 ; Repeat byte
|15B1D4| db $00
|15B1D5| db $05 ; Raw block
|15B1D6| db $0C, $00, $1F, $0C, $16, $05
|15B1DC| db $24 ; Repeat byte
|15B1DD| db $00
|15B1DE| db $02 ; Raw block
|15B1DF| db $0C, $13, $1B
|15B1E2| db $29 ; Repeat byte
|15B1E3| db $00
|15B1E4| db $05 ; Raw block
|15B1E5| db $30, $00, $F8, $30, $E8, $B0
|15B1EB| db $24 ; Repeat byte
|15B1EC| db $00
|15B1ED| db $02 ; Raw block
|15B1EE| db $30, $F8, $F8
|15B1F1| db $27 ; Repeat byte
|15B1F2| db $00
|15B1F3| db $83 ; Copy past
|15B1F4| dw $036A
|15B1F6| db $03 ; Raw block
|15B1F7| db $13, $02, $17, $04
|15B1FB| db $23 ; Repeat byte
|15B1FC| db $00
|15B1FD| db $03 ; Raw block
|15B1FE| db $0C, $13, $1D, $1B
|15B202| db $27 ; Repeat byte
|15B203| db $00
|15B204| db $84 ; Copy past
|15B205| dw $0382
|15B207| db $02 ; Raw block
|15B208| db $D0, $6C, $D8
|15B20B| db $23 ; Repeat byte
|15B20C| db $00
|15B20D| db $1B ; Raw block
|15B20E| db $30, $F8, $F8, $FC, $70, $00, $88, $00
|15B216| db $98, $10, $D0, $40, $70, $20, $77, $00
|15B21E| db $54, $38, $3A, $14, $70, $F8, $E8, $B0
|15B226| db $50, $77, $7F, $3F
|15B22A| db $25 ; Repeat byte
|15B22B| db $00
|15B22C| db $09 ; Raw block
|15B22D| db $04, $00, $0A, $04, $E7, $0A, $2D, $14
|15B235| db $49, $30
|15B237| db $22 ; Repeat byte
|15B238| db $00
|15B239| db $1C ; Raw block
|15B23A| db $04, $0E, $ED, $FB, $FF, $47, $00, $4B
|15B242| db $00, $45, $00, $60, $00, $51, $00, $2B
|15B24A| db $00, $2F, $00, $17, $00, $78, $74, $7A
|15B252| db $7F, $7F, $3E, $36, $1A
|15B257| db $43 ; Repeat word
|15B258| dw $00FE
|15B25A| db $13 ; Raw block
|15B25B| db $FF, $00, $FD, $00, $54, $00, $AB, $00
|15B263| db $D7, $43, $E6, $21, $01, $01, $00, $02
|15B26B| db $AB, $D7, $AF, $5F
|15B26F| db $43 ; Repeat word
|15B270| dw $0080
|15B272| db $0E ; Raw block
|15B273| db $4C, $00, $72, $0C, $8C, $70, $F2, $7C
|15B27B| db $FC, $88, $1E, $E0, $80, $80, $CC
|15B282| db $44 ; Repeat word
|15B283| dw $FCFE
|15B285| db $0B ; Raw block
|15B286| db $02, $00, $0E, $00, $1E, $00, $3F, $00
|15B28E| db $59, $06, $5D, $02
|15B292| db $43 ; Repeat word
|15B293| dw $032C
|15B295| db $1F ; Raw block
|15B296| db $03, $0F, $13, $2F, $69, $69, $30, $34
|15B29E| db $7E, $00, $5E, $00, $2F, $00, $5F, $00
|15B2A6| db $2B, $00, $16, $00, $A9, $00, $93, $01
|15B2AE| db $81, $A1, $D0, $A0, $D4, $E9, $D7, $EF
|15B2B6| db $43 ; Repeat word
|15B2B7| dw $0080
|15B2B9| db $45 ; Repeat word
|15B2BA| dw $0040
|15B2BC| db $07 ; Raw block
|15B2BD| db $78, $00, $D4, $28, $EA, $74, $80, $80
|15B2C5| db $22 ; Repeat byte
|15B2C6| db $C0
|15B2C7| db $E0, $25 ; EXT Raw block
|15B2C9| db $F8, $FC, $FE, $7C, $0F, $2F, $17, $77
|15B2D1| db $38, $79, $0E, $6F, $21, $73, $30, $7E
|15B2D9| db $04, $3C, $00, $7F, $2F, $77, $79, $5E
|15B2E1| db $4F, $7A, $3C, $39, $F0, $EB, $32, $3E
|15B2E9| db $18, $3C, $10, $78, $00, $E0
|15B2EF| db $24 ; Repeat byte
|15B2F0| db $00
|15B2F1| db $E0, $27 ; EXT Raw block
|15B2F3| db $FF, $ED, $FE, $FC, $F8, $E0, $00, $00
|15B2FB| db $1C, $0B, $28, $17, $31, $1F, $1C, $0F
|15B303| db $0F, $03, $07, $00, $05, $01, $03, $00
|15B30B| db $17, $2F, $33, $1C, $0F, $07, $06, $03
|15B313| db $FC, $98, $7A, $F4, $E6, $FC, $1C, $F8
|15B31B| db $83 ; Copy past
|15B31C| dw $0202
|15B31E| db $16 ; Raw block
|15B31F| db $E0, $C0, $C0, $00, $FC, $FA, $E6, $1C
|15B327| db $F8, $E0, $20, $C0, $1D, $00, $27, $03
|15B32F| db $27, $05, $7F, $0C, $7F, $33, $3F
|15B336| db $24 ; Repeat byte
|15B337| db $00
|15B338| db $E0, $29 ; EXT Raw block
|15B33A| db $1F, $3C, $3A, $73, $4F, $3F, $00, $00
|15B342| db $EC, $B8, $FC, $30, $E2, $FC, $1E, $F8
|15B34A| db $FE, $E4, $FE, $1C, $4C, $08, $38, $00
|15B352| db $FC, $FC, $E2, $1E, $FA, $E2, $74, $38
|15B35A| db $1F, $0A, $2B, $16, $33, $1E, $1D, $0E
|15B362| db $0F, $02
|15B364| db $88 ; Copy past
|15B365| dw $04BA
|15B367| db $00 ; Raw block
|15B368| db $1D
|15B369| db $83 ; Copy past
|15B36A| dw $04C4
|15B36C| db $09 ; Raw block
|15B36D| db $FA, $14, $76, $5C, $EC, $18, $38, $10
|15B375| db $70, $40
|15B377| db $85 ; Copy past
|15B378| dw $04D2
|15B37A| db $0B ; Raw block
|15B37B| db $FA, $B6, $EC, $F8, $B0, $E0, $20, $C0
|15B383| db $19, $0E, $2F, $17
|15B387| db $85 ; Copy past
|15B388| dw $0274
|15B38A| db $02 ; Raw block
|15B38B| db $37, $04, $1E
|15B38E| db $22 ; Repeat byte
|15B38F| db $00
|15B390| db $84 ; Copy past
|15B391| dw $0280
|15B393| db $0F ; Raw block
|15B394| db $2B, $1E, $00, $9B, $72, $F6, $E8, $EC
|15B39C| db $18, $9C, $70, $FC, $C8, $EC, $20, $78
|15B3A4| db $22 ; Repeat byte
|15B3A5| db $00
|15B3A6| db $0A ; Raw block
|15B3A7| db $FD, $F6, $6C, $1C, $F4, $D4, $78, $00
|15B3AF| db $0B, $00, $07
|15B3B2| db $44 ; Repeat word
|15B3B3| dw $0300
|15B3B5| db $04 ; Raw block
|15B3B6| db $0F, $03, $1F, $0F, $0F
|15B3BB| db $22 ; Repeat byte
|15B3BC| db $00
|15B3BD| db $14 ; Raw block
|15B3BE| db $0E, $06, $02, $03, $0C, $10, $0F, $00
|15B3C6| db $EB, $06, $F9, $17, $FD, $33, $F6, $0D
|15B3CE| db $97, $0C, $C9, $86, $C6
|15B3D3| db $22 ; Repeat byte
|15B3D4| db $00
|15B3D5| db $14 ; Raw block
|15B3D6| db $3F, $AF, $CF, $FF, $9F, $4F, $C6, $00
|15B3DE| db $8F, $76, $FE, $00, $FC, $18, $7C, $B8
|15B3E6| db $F8, $40, $E0, $C0, $C0
|15B3EB| db $22 ; Repeat byte
|15B3EC| db $00
|15B3ED| db $08 ; Raw block
|15B3EE| db $FF, $FE, $FC, $FC, $F8, $E0, $C0, $00
|15B3F6| db $17
|15B3F7| db $84 ; Copy past
|15B3F8| dw $056F
|15B3FA| db $06 ; Raw block
|15B3FB| db $0F, $00, $3E, $0C, $7F, $3E, $3F
|15B402| db $22 ; Repeat byte
|15B403| db $00
|15B404| db $E0, $37 ; EXT Raw block
|15B406| db $1B, $0E, $05, $0F, $32, $41, $3F, $00
|15B40E| db $C6, $03, $EB, $05, $F9, $16, $FD, $36
|15B416| db $7D, $0A, $15, $0A, $17, $08, $0D, $00
|15B41E| db $7F, $3F, $AF, $CF, $7F, $1F, $1F, $0D
|15B426| db $74, $98, $3C, $C0, $BE, $DC, $BC, $C0
|15B42E| db $F8, $10, $F8, $B0, $F0, $80, $80, $00
|15B436| db $FC, $FC, $FE, $FC, $F8, $F8, $F0, $80
|15B43E| db $FF ; End of GFX 8A

;===================================================================================================

GFX_8B:
|15B43F| db $E0, $47 ; EXT Raw block
|15B441| db $38, $00, $44, $38, $6F, $38, $7B, $3D
|15B449| db $37, $0D, $0F, $07, $3E, $06, $5C, $2C
|15B451| db $38, $7C, $7F, $5A, $32, $08, $3D, $5F
|15B459| db $1C, $00, $22, $1C, $F6, $1C, $DE, $BC
|15B461| db $EC, $B0, $F0, $E0, $7C, $60, $3A, $34
|15B469| db $1C, $3E, $FE, $5A, $4C, $10, $BC, $FA
|15B471| db $00, $00, $70, $00, $8B, $70, $DF, $73
|15B479| db $FF, $77, $67, $13, $3E, $06, $3E, $0E
|15B481| db $00, $70, $FB, $FC, $B8, $6C, $3D, $39
|15B489| db $83 ; Copy past
|15B48A| dw $0000
|15B48C| db $13 ; Raw block
|15B48D| db $EC, $38, $DC, $B8, $A8, $30, $30, $20
|15B495| db $3E, $20, $7F, $76, $38, $7C, $FC, $54
|15B49D| db $C8, $D0, $FE, $FF
|15B4A1| db $23 ; Repeat byte
|15B4A2| db $00
|15B4A3| db $10 ; Raw block
|15B4A4| db $03, $00, $04, $03, $0B, $04, $08, $07
|15B4AC| db $0C, $07, $0F, $04, $00, $00, $03, $07
|15B4B4| db $0D
|15B4B5| db $22 ; Repeat byte
|15B4B6| db $0F
|15B4B7| db $23 ; Repeat byte
|15B4B8| db $00
|15B4B9| db $0F ; Raw block
|15B4BA| db $C0, $00, $E0, $C0, $70, $E0, $70, $C0
|15B4C2| db $F0, $60, $F0, $C0, $00, $00, $C0, $E0
|15B4CA| db $23 ; Repeat byte
|15B4CB| db $F0
|15B4CC| db $04 ; Raw block
|15B4CD| db $38, $00, $7C, $00, $3E
|15B4D2| db $46 ; Repeat word
|15B4D3| dw $0700
|15B4D5| db $43 ; Repeat word
|15B4D6| dw $000F
|15B4D8| db $02 ; Raw block
|15B4D9| db $38, $44, $3A
|15B4DC| db $22 ; Repeat byte
|15B4DD| db $05
|15B4DE| db $E0, $C1 ; EXT Raw block
|15B4E0| db $0B, $0B, $07, $00, $18, $07, $27, $1F
|15B4E8| db $5E, $33, $5E, $23, $BF, $60, $3F, $E3
|15B4F0| db $78, $98, $07, $18, $27, $53, $47, $A7
|15B4F8| db $3C, $67, $10, $17, $67, $7B, $99, $FE
|15B500| db $26, $FB, $4F, $FF, $35, $DE, $2C, $5B
|15B508| db $49, $B6, $10, $63, $DA, $B3, $7F, $56
|15B510| db $4B, $A7, $00, $C2, $30, $F9, $C8, $3D
|15B518| db $34, $CE, $84, $FF, $F0, $7F, $14, $EF
|15B520| db $8C, $7F, $C2, $31, $19, $CC, $8D, $75
|15B528| db $E7, $FF, $21, $00, $78, $80, $98, $E1
|15B530| db $4E, $73, $62, $7D, $1B, $3D, $0D, $0E
|15B538| db $04, $0F, $00, $80, $E1, $73, $7D, $3D
|15B540| db $0E, $0F, $00, $00, $18, $00, $7C, $40
|15B548| db $70, $4C, $C3, $B0, $42, $A1, $04, $E3
|15B550| db $04, $C2, $00, $00, $40, $4C, $B0, $A1
|15B558| db $E3, $C2, $03, $00, $07, $03, $0B, $03
|15B560| db $1D, $01, $1D, $00, $39, $10, $32, $11
|15B568| db $3D, $1A, $03, $04, $0C, $1E, $1F, $2F
|15B570| db $2E, $25, $FF, $00, $8E, $70, $81, $7E
|15B578| db $B8, $4F, $7E, $8F, $73, $FD, $E7, $F8
|15B580| db $E2, $3D, $F0, $8E, $81, $88, $6E, $7D
|15B588| db $F8, $BD, $C0, $00, $F8, $00, $9C, $00
|15B590| db $CA, $00, $A2, $40, $54, $E0, $D8, $E0
|15B598| db $68, $F0, $40, $B8, $E4, $F6, $BE, $5C
|15B5A0| db $D8, $E8
|15B5A2| db $37 ; Repeat byte
|15B5A3| db $00
|15B5A4| db $E0, $62 ; EXT Raw block
|15B5A6| db $9C, $6C, $7F, $1F, $3F, $0F, $7F, $37
|15B5AE| db $CF, $76, $BE, $4D, $4F, $01, $01, $00
|15B5B6| db $93, $61, $33, $79, $C9, $B2, $4F, $01
|15B5BE| db $39, $36, $FE, $F8, $FC, $F0, $FE, $EC
|15B5C6| db $F3, $6E, $7D, $B2, $F2, $80, $80, $00
|15B5CE| db $C9, $86, $CC, $9E, $93, $4D, $F2, $80
|15B5D6| db $5F, $2F, $BF, $5F, $7F, $0F, $3F, $17
|15B5DE| db $67, $3A, $6E, $35, $2F, $10, $11, $00
|15B5E6| db $52, $A7, $72, $38, $65, $6A, $2F, $11
|15B5EE| db $3A, $34, $FC, $F8, $FE, $F0, $FF, $EE
|15B5F6| db $F2, $6C, $FC, $B0, $70, $C0, $E0, $00
|15B5FE| db $EA, $04, $0E, $1F, $92, $CC, $70, $E0
|15B606| db $07, $03, $03
|15B609| db $22 ; Repeat byte
|15B60A| db $00
|15B60B| db $00 ; Raw block
|15B60C| db $03
|15B60D| db $44 ; Repeat word
|15B60E| dw $0F00
|15B610| db $00 ; Raw block
|15B611| db $03
|15B612| db $22 ; Repeat byte
|15B613| db $00
|15B614| db $0A ; Raw block
|15B615| db $07, $03, $00, $03, $0F, $0F, $03, $00
|15B61D| db $E0, $00, $C0
|15B620| db $22 ; Repeat byte
|15B621| db $00
|15B622| db $00 ; Raw block
|15B623| db $C0
|15B624| db $44 ; Repeat word
|15B625| dw $F000
|15B627| db $00 ; Raw block
|15B628| db $C0
|15B629| db $22 ; Repeat byte
|15B62A| db $00
|15B62B| db $0E ; Raw block
|15B62C| db $E0, $C0, $00, $C0, $F0, $F0, $C0, $00
|15B634| db $0F, $00, $07, $00, $03, $00, $09
|15B63B| db $44 ; Repeat word
|15B63C| dw $1300
|15B63E| db $08 ; Raw block
|15B63F| db $08, $00, $07, $00, $08, $05, $03, $01
|15B647| db $01
|15B648| db $22 ; Repeat byte
|15B649| db $00
|15B64A| db $E0, $77 ; EXT Raw block
|15B64C| db $E0, $60, $DF, $D7, $BF, $A0, $FF, $E0
|15B654| db $FF, $C0, $FF, $20, $FF, $28, $3F, $00
|15B65C| db $9F, $28, $5F, $1C, $37, $CF, $47, $33
|15B664| db $0B, $F4, $A9, $DE, $A5, $DF, $92, $EF
|15B66C| db $8F, $77, $C6, $7F, $30, $3F, $0E, $09
|15B674| db $E7, $DF, $DF, $AF, $27, $47, $31, $08
|15B67C| db $EA, $1C, $E8, $3E, $B4, $ED, $62, $DD
|15B684| db $82, $FF, $E4, $1E, $B2, $7C, $0C, $F0
|15B68C| db $DC, $BC, $EC, $C8, $D6, $1C, $70, $00
|15B694| db $18, $06, $16, $18, $0A, $0C, $06, $04
|15B69C| db $20, $02, $00, $20, $04, $78, $03, $00
|15B6A4| db $06, $18, $0C, $04, $02, $20, $78, $00
|15B6AC| db $13, $C1, $12, $80, $10, $80, $20, $10
|15B6B4| db $22, $10, $40, $38, $14, $60, $E0, $00
|15B6BC| db $C1, $80, $80, $10, $10, $38, $60, $00
|15B6C4| db $43 ; Repeat word
|15B6C5| dw $0619
|15B6C7| db $13 ; Raw block
|15B6C8| db $3C, $03, $38, $07, $74, $03, $73, $00
|15B6D0| db $72, $00, $75, $00, $19, $18, $24, $28
|15B6D8| db $54, $53, $53, $56
|15B6DC| db $43 ; Repeat word
|15B6DD| dw $3FE0
|15B6DF| db $13 ; Raw block
|15B6E0| db $F0, $FF, $3E, $FF, $8D, $7F, $42, $3F
|15B6E8| db $F2, $0F, $F3, $0F, $BF, $3F, $FF, $3F
|15B6F0| db $8D, $C3, $33, $33
|15B6F4| db $47 ; Repeat word
|15B6F5| dw $F028
|15B6F7| db $01 ; Raw block
|15B6F8| db $68, $F0
|15B6FA| db $43 ; Repeat word
|15B6FB| dw $E050
|15B6FD| db $01 ; Raw block
|15B6FE| db $A0, $C0
|15B700| db $24 ; Repeat byte
|15B701| db $E8
|15B702| db $02 ; Raw block
|15B703| db $D0, $D0, $A0
|15B706| db $37 ; Repeat byte
|15B707| db $00
|15B708| db $17 ; Raw block
|15B709| db $1C, $00, $26, $1C, $3F, $00, $23, $1D
|15B711| db $35, $1E, $3A, $1E, $1F, $01, $1F, $0D
|15B719| db $1C, $3E, $3F, $3E, $3D, $39, $1E, $12
|15B721| db $23 ; Repeat byte
|15B722| db $00
|15B723| db $E0, $2B ; EXT Raw block
|15B725| db $80, $00, $C0, $80, $E0, $C0, $E0, $40
|15B72D| db $F0, $E0, $B0, $A0, $00, $00, $80, $40
|15B735| db $20, $A0, $10, $70, $0E, $00, $17, $0E
|15B73D| db $1F, $0C, $1F, $01, $23, $1C, $34, $1E
|15B745| db $3B, $1F, $1F, $01, $0E, $1F, $1F, $1E
|15B74D| db $3F, $3D, $38, $1E
|15B751| db $23 ; Repeat byte
|15B752| db $00
|15B753| db $93 ; Copy past
|15B754| dw $031C
|15B756| db $E0, $2F ; EXT Raw block
|15B758| db $01, $00, $07, $01, $0E, $06, $18, $08
|15B760| db $5B, $0B, $BF, $1C, $DF, $48, $FF, $50
|15B768| db $01, $06, $09, $17, $54, $E3, $B7, $AC
|15B770| db $80, $00, $E0, $80, $70, $60, $18, $10
|15B778| db $DA, $D0, $FD, $38, $FB, $12, $FF, $0A
|15B780| db $80, $60, $90, $E8, $2A, $C7, $ED, $35
|15B788| db $83 ; Copy past
|15B789| dw $0062
|15B78B| db $13 ; Raw block
|15B78C| db $0E, $02, $1F, $0C, $3F, $18, $7F, $10
|15B794| db $BF, $10, $FF, $40, $00, $03, $0D, $13
|15B79C| db $24, $69, $E9, $B8
|15B7A0| db $83 ; Copy past
|15B7A1| dw $007A
|15B7A3| db $E0, $38 ; EXT Raw block
|15B7A5| db $70, $40, $F8, $30, $FC, $18, $FE, $08
|15B7AD| db $FD, $08, $FF, $02, $00, $C0, $B0, $C8
|15B7B5| db $24, $96, $97, $1D, $06, $20, $3C, $57
|15B7BD| db $68, $3E, $66, $BB, $23, $DD, $19, $76
|15B7C5| db $75, $6E, $6C, $1E, $00, $17, $38, $B2
|15B7CD| db $5D, $12, $66, $0C, $00, $00, $40, $00
|15B7D5| db $B0, $00, $88, $00, $B8, $30, $F0, $40
|15B7DD| db $40
|15B7DE| db $23 ; Repeat byte
|15B7DF| db $00
|15B7E0| db $11 ; Raw block
|15B7E1| db $40, $F0, $F8, $C8, $B0, $40, $00, $3C
|15B7E9| db $00, $42, $00, $99, $00, $FF, $66, $7E
|15B7F1| db $3C, $3C
|15B7F3| db $24 ; Repeat byte
|15B7F4| db $00
|15B7F5| db $0A ; Raw block
|15B7F6| db $3C, $7E, $FF, $99, $42, $3C, $00, $00
|15B7FE| db $60, $00, $50
|15B801| db $44 ; Repeat word
|15B802| dw $4800
|15B804| db $18 ; Raw block
|15B805| db $58, $10, $78, $30, $70, $20, $60, $00
|15B80D| db $60, $70, $78, $78, $68, $48, $50, $60
|15B815| db $3C, $00, $3A, $00, $39, $00, $70, $00
|15B81D| db $20
|15B81E| db $26 ; Repeat byte
|15B81F| db $00
|15B820| db $04 ; Raw block
|15B821| db $2F, $2B, $29, $50, $20
|15B826| db $22 ; Repeat byte
|15B827| db $00
|15B828| db $17 ; Raw block
|15B829| db $EB, $07, $49, $07, $95, $03, $3A, $01
|15B831| db $3D, $00, $3E, $00, $18, $00, $07, $00
|15B839| db $2B, $C9, $9D, $26, $23, $21, $1F, $07
|15B841| db $43 ; Repeat word
|15B842| dw $8040
|15B844| db $13 ; Raw block
|15B845| db $A0, $00, $90, $00, $10, $00, $90, $00
|15B84D| db $20, $00, $C0, $00, $40, $40, $E0, $F0
|15B855| db $F0, $70, $E0, $C0
|15B859| db $37 ; Repeat byte
|15B85A| db $00
|15B85B| db $E0, $2F ; EXT Raw block
|15B85D| db $1F, $0F, $3E, $1E, $3C, $1C, $3F, $17
|15B865| db $3F, $0A, $37, $1A, $6F, $31, $39, $00
|15B86D| db $10, $21, $23, $28, $3D, $35, $6F, $39
|15B875| db $B8, $B0, $78, $70, $34, $28, $F2, $2C
|15B87D| db $BA, $D4, $B4, $C0, $20, $C0, $C0, $00
|15B885| db $78, $F8, $F4, $D2, $AA, $B4, $20, $C0
|15B88D| db $84 ; Copy past
|15B88E| dw $0480
|15B890| db $07 ; Raw block
|15B891| db $0C, $7F, $37, $C7, $7A, $6F, $10, $10
|15B899| db $22 ; Repeat byte
|15B89A| db $00
|15B89B| db $14 ; Raw block
|15B89C| db $10, $21, $33, $78, $C5, $6F, $10, $00
|15B8A4| db $B8, $B0, $7E, $68, $67, $1E, $F6, $48
|15B8AC| db $38, $E0, $98, $70, $F0
|15B8B1| db $22 ; Repeat byte
|15B8B2| db $00
|15B8B3| db $E0, $63 ; EXT Raw block
|15B8B5| db $78, $FE, $E7, $F6, $38, $98, $F0, $00
|15B8BD| db $DF, $20, $5F, $38, $28, $1F, $13, $0C
|15B8C5| db $3F, $00, $3F, $0C, $2F, $0B, $03, $00
|15B8CD| db $D9, $5F, $28, $13, $1C, $23, $00, $00
|15B8D5| db $FB, $04, $FA, $1C, $34, $F8, $C8, $30
|15B8DD| db $F8, $00, $DC, $10, $32, $00, $C4, $00
|15B8E5| db $9B, $FA, $34, $C8, $38, $E4, $C0, $00
|15B8ED| db $FF, $58, $4B, $3F, $23, $1C, $17, $08
|15B8F5| db $7C, $13, $3F, $0C, $4F, $0B, $27, $00
|15B8FD| db $BF, $4B, $23, $14, $0C, $23, $00, $04
|15B905| db $FF, $1A, $F2, $FC, $C4, $38, $E8, $10
|15B90D| db $3C, $C0, $DC, $10, $31, $10, $C2, $00
|15B915| db $FD, $F2, $C4, $28
|15B919| db $83 ; Copy past
|15B91A| dw $050C
|15B91C| db $17 ; Raw block
|15B91D| db $30, $00, $6C, $20, $C6, $44, $EE, $6C
|15B925| db $7D, $38, $7D, $34, $3F, $0E, $0E, $00
|15B92D| db $30, $5C, $BA, $92, $47, $4B, $31, $0E
|15B935| db $83 ; Copy past
|15B936| dw $0108
|15B938| db $00 ; Raw block
|15B939| db $24
|15B93A| db $8B ; Copy past
|15B93B| dw $03F1
|15B93D| db $00 ; Raw block
|15B93E| db $18
|15B93F| db $85 ; Copy past
|15B940| dw $0400
|15B942| db $85 ; Copy past
|15B943| dw $055A
|15B945| db $06 ; Raw block
|15B946| db $BD, $00, $FF, $42, $FF, $3C, $7E
|15B94D| db $22 ; Repeat byte
|15B94E| db $00
|15B94F| db $83 ; Copy past
|15B950| dw $0569
|15B952| db $02 ; Raw block
|15B953| db $BD, $C3, $7E
|15B956| db $22 ; Repeat byte
|15B957| db $00
|15B958| db $01 ; Raw block
|15B959| db $40, $00
|15B95B| db $83 ; Copy past
|15B95C| dw $0454
|15B95E| db $04 ; Raw block
|15B95F| db $B0, $20, $E0, $40, $40
|15B964| db $23 ; Repeat byte
|15B965| db $00
|15B966| db $13 ; Raw block
|15B967| db $40, $E0, $F0, $D0, $A0, $40, $00, $30
|15B96F| db $00, $58, $30, $78, $30, $30, $00, $04
|15B977| db $00, $0A, $04, $44
|15B97B| db $22 ; Repeat byte
|15B97C| db $00
|15B97D| db $07 ; Raw block
|15B97E| db $30, $78, $78, $30, $04, $0E, $44, $00
|15B986| db $85 ; Copy past
|15B987| dw $00A8
|15B989| db $E0, $29 ; EXT Raw block
|15B98B| db $4F, $3F, $9E, $7F, $CE, $3B, $FF, $08
|15B993| db $7F, $00, $07, $18, $27, $0F, $1F, $4B
|15B99B| db $BC, $4E, $E0, $00, $18, $E0, $E4, $F8
|15B9A3| db $F2, $FC, $79, $FE, $73, $DC, $FF, $10
|15B9AB| db $FE, $00, $E0, $18, $E4, $F0, $F8, $D2
|15B9B3| db $3D, $72
|15B9B5| db $37 ; Repeat byte
|15B9B6| db $00
|15B9B7| db $FF ; End of GFX 8B

;===================================================================================================

GFX_8C:
|15B9B8| db $27 ; Repeat byte
|15B9B9| db $00
|15B9BA| db $07 ; Raw block
|15B9BB| db $03, $00, $05, $03, $0A, $07, $0C, $06
|15B9C3| db $23 ; Repeat byte
|15B9C4| db $00
|15B9C5| db $03 ; Raw block
|15B9C6| db $03, $05, $0B, $0F
|15B9CA| db $27 ; Repeat byte
|15B9CB| db $00
|15B9CC| db $07 ; Raw block
|15B9CD| db $C0, $00, $A0, $C0, $50, $E0, $30, $60
|15B9D5| db $23 ; Repeat byte
|15B9D6| db $00
|15B9D7| db $03 ; Raw block
|15B9D8| db $C0, $A0, $D0, $F0
|15B9DC| db $29 ; Repeat byte
|15B9DD| db $00
|15B9DE| db $05 ; Raw block
|15B9DF| db $01, $00, $02, $01, $05, $03
|15B9E5| db $24 ; Repeat byte
|15B9E6| db $00
|15B9E7| db $02 ; Raw block
|15B9E8| db $01, $02, $05
|15B9EB| db $29 ; Repeat byte
|15B9EC| db $00
|15B9ED| db $05 ; Raw block
|15B9EE| db $80, $00, $40, $80, $A0, $C0
|15B9F4| db $24 ; Repeat byte
|15B9F5| db $00
|15B9F6| db $E0, $22 ; EXT Raw block
|15B9F8| db $80, $40, $A0, $07, $00, $78, $07, $88
|15BA00| db $04, $84, $62, $44, $33, $42, $31, $42
|15BA08| db $39, $21, $1C, $07, $78, $FB, $9D, $4C
|15BA10| db $4E, $46, $23, $84, $00, $6E, $80, $1E
|15BA18| db $60, $BA, $04
|15BA1B| db $43 ; Repeat word
|15BA1C| dw $18E4
|15BA1E| db $E0, $25 ; EXT Raw block
|15BA20| db $62, $94, $02, $E0, $84, $6A, $92, $E6
|15BA28| db $7C, $24, $2A, $1E, $00, $00, $0F, $00
|15BA30| db $10, $0F, $08, $04, $04, $02, $0C, $03
|15BA38| db $12, $0D, $62, $1D, $00, $0F, $10, $0B
|15BA40| db $05, $0C, $12, $62, $00, $00
|15BA46| db $87 ; Copy past
|15BA47| dw $0078
|15BA49| db $43 ; Repeat word
|15BA4A| dw $18E4
|15BA4C| db $02 ; Raw block
|15BA4D| db $62, $94, $00
|15BA50| db $86 ; Copy past
|15BA51| dw $0088
|15BA53| db $E0, $2F ; EXT Raw block
|15BA55| db $1F, $00, $20, $1F, $41, $30, $21, $18
|15BA5D| db $19, $04, $18, $07, $7C, $02, $B4, $4B
|15BA65| db $1F, $20, $4F, $26, $1A, $18, $7D, $B4
|15BA6D| db $88, $00, $7C, $80, $34, $48, $C8, $30
|15BA75| db $F4, $08, $C2, $34, $02, $C0, $71, $88
|15BA7D| db $88, $74, $AC, $F8, $74, $4A, $3E, $77
|15BA85| db $27 ; Repeat byte
|15BA86| db $00
|15BA87| db $07 ; Raw block
|15BA88| db $03, $00, $0F, $03, $1E, $0F, $1C, $0F
|15BA90| db $23 ; Repeat byte
|15BA91| db $00
|15BA92| db $10 ; Raw block
|15BA93| db $03, $0F, $1F, $1F, $FF, $18, $9F, $08
|15BA9B| db $FB, $60, $7C, $18, $2F, $0C, $23, $01
|15BAA3| db $1D
|15BAA4| db $22 ; Repeat byte
|15BAA5| db $00
|15BAA6| db $1F ; Raw block
|15BAA7| db $FB, $F8, $9C, $7F, $33, $3F, $1D, $00
|15BAAF| db $7A, $08, $DD, $45, $FC, $64, $DF, $3B
|15BAB7| db $EB, $78, $7C, $18, $3F, $08, $6B, $18
|15BABF| db $77, $BA, $9B, $FC, $FF, $7B, $38, $7C
|15BAC7| db $39 ; Repeat byte
|15BAC8| db $00
|15BAC9| db $87 ; Copy past
|15BACA| dw $00F8
|15BACC| db $05 ; Raw block
|15BACD| db $3C, $1F, $3E, $1F, $37, $1F
|15BAD3| db $84 ; Copy past
|15BAD4| dw $0103
|15BAD6| db $22 ; Repeat byte
|15BAD7| db $3F
|15BAD8| db $83 ; Copy past
|15BAD9| dw $001E
|15BADB| db $1A ; Raw block
|15BADC| db $E0, $C0, $30, $E0, $18, $F0, $18, $E0
|15BAE4| db $24, $E0, $EE, $E8, $00, $C0, $E0, $F0
|15BAEC| db $F8, $F8, $FC, $F6, $0C, $06, $0A, $07
|15BAF4| db $05, $03, $03
|15BAF7| db $28 ; Repeat byte
|15BAF8| db $00
|15BAF9| db $03 ; Raw block
|15BAFA| db $0F, $0B, $05, $03
|15BAFE| db $23 ; Repeat byte
|15BAFF| db $00
|15BB00| db $06 ; Raw block
|15BB01| db $30, $60, $50, $E0, $A0, $C0, $C0
|15BB08| db $28 ; Repeat byte
|15BB09| db $00
|15BB0A| db $03 ; Raw block
|15BB0B| db $F0, $D0, $A0, $C0
|15BB0F| db $23 ; Repeat byte
|15BB10| db $00
|15BB11| db $04 ; Raw block
|15BB12| db $05, $03, $02, $01, $01
|15BB17| db $2A ; Repeat byte
|15BB18| db $00
|15BB19| db $02 ; Raw block
|15BB1A| db $05, $02, $01
|15BB1D| db $24 ; Repeat byte
|15BB1E| db $00
|15BB1F| db $04 ; Raw block
|15BB20| db $A0, $C0, $40, $80, $80
|15BB25| db $2A ; Repeat byte
|15BB26| db $00
|15BB27| db $02 ; Raw block
|15BB28| db $A0, $40, $80
|15BB2B| db $24 ; Repeat byte
|15BB2C| db $00
|15BB2D| db $0C ; Raw block
|15BB2E| db $39, $06, $21, $1D, $12, $08, $3F, $10
|15BB36| db $1F, $08, $1F, $0A, $0A
|15BB3B| db $22 ; Repeat byte
|15BB3C| db $00
|15BB3D| db $12 ; Raw block
|15BB3E| db $39, $22, $15, $2C, $17, $15, $0A, $00
|15BB46| db $61, $90, $F1, $08, $C9, $A4, $FD, $02
|15BB4E| db $E2, $40, $40
|15BB51| db $24 ; Repeat byte
|15BB52| db $00
|15BB53| db $0F ; Raw block
|15BB54| db $6F, $B7, $5B, $FD, $A2, $40, $00, $00
|15BB5C| db $81, $7C, $81, $50, $63, $01, $3C, $00
|15BB64| db $87 ; Copy past
|15BB65| dw $01E6
|15BB67| db $03 ; Raw block
|15BB68| db $83, $AF, $7E, $3F
|15BB6C| db $83 ; Copy past
|15BB6D| dw $01F3
|15BB6F| db $01 ; Raw block
|15BB70| db $02, $E0
|15BB72| db $8A ; Copy past
|15BB73| dw $01F8
|15BB75| db $22 ; Repeat byte
|15BB76| db $00
|15BB77| db $00 ; Raw block
|15BB78| db $1E
|15BB79| db $86 ; Copy past
|15BB7A| dw $0208
|15BB7C| db $E0, $24 ; EXT Raw block
|15BB7E| db $C3, $3C, $83, $79, $83, $20, $47, $02
|15BB86| db $3C, $00, $1F, $04, $1F, $0F, $0F, $00
|15BB8E| db $C3, $86, $DE, $7C, $3F, $1B, $10, $0F
|15BB96| db $7D, $80, $F6, $00, $F8, $80, $B0, $00
|15BB9E| db $78, $30, $F0, $00, $80
|15BBA3| db $22 ; Repeat byte
|15BBA4| db $00
|15BBA5| db $1F ; Raw block
|15BBA6| db $5F, $DE, $78, $70, $C8, $F0, $80, $00
|15BBAE| db $3E, $0B, $5F, $05, $5F, $0E, $6C, $28
|15BBB6| db $7A, $08, $4D, $35, $9C, $74, $BF, $7B
|15BBBE| db $3F, $7B, $71, $57, $77, $7A, $FB, $FC
|15BBC6| db $87 ; Copy past
|15BBC7| dw $00F8
|15BBC9| db $87 ; Copy past
|15BBCA| dw $0270
|15BBCC| db $84 ; Copy past
|15BBCD| dw $0161
|15BBCF| db $0B ; Raw block
|15BBD0| db $7B, $71, $57, $9C, $08, $FF, $30, $73
|15BBD8| db $01, $03, $01, $01
|15BBDC| db $26 ; Repeat byte
|15BBDD| db $00
|15BBDE| db $04 ; Raw block
|15BBDF| db $FF, $CF, $73, $03, $01
|15BBE4| db $22 ; Repeat byte
|15BBE5| db $00
|15BBE6| db $0A ; Raw block
|15BBE7| db $39, $10, $FF, $0C, $9E, $00, $E8, $90
|15BBEF| db $90, $E0, $E0
|15BBF2| db $24 ; Repeat byte
|15BBF3| db $00
|15BBF4| db $10 ; Raw block
|15BBF5| db $FF, $F3, $9E, $F8, $F0, $E0, $00, $00
|15BBFD| db $39, $1F, $3F, $1F, $1F, $0F, $1F, $07
|15BC05| db $07
|15BC06| db $26 ; Repeat byte
|15BC07| db $00
|15BC08| db $04 ; Raw block
|15BC09| db $3F, $3F, $1F, $1F, $07
|15BC0E| db $22 ; Repeat byte
|15BC0F| db $00
|15BC10| db $08 ; Raw block
|15BC11| db $FE, $D8, $FE, $E4, $F4, $D0, $F8, $B0
|15BC19| db $F0
|15BC1A| db $26 ; Repeat byte
|15BC1B| db $00
|15BC1C| db $04 ; Raw block
|15BC1D| db $E6, $FA, $EC, $C8, $F0
|15BC22| db $22 ; Repeat byte
|15BC23| db $00
|15BC24| db $E0, $2F ; EXT Raw block
|15BC26| db $04, $00, $0E, $00, $1F, $00, $3D, $03
|15BC2E| db $3F, $03, $2F, $00, $32, $01, $5D, $13
|15BC36| db $04, $0A, $17, $25, $26, $33, $3E, $6D
|15BC3E| db $20, $00, $70, $00, $F8, $00, $BC, $C0
|15BC46| db $FC, $C0, $F4, $00, $4C, $80, $BA, $C8
|15BC4E| db $20, $50, $E8, $A4, $64, $CC, $7C, $B6
|15BC56| db $83 ; Copy past
|15BC57| dw $0302
|15BC59| db $13 ; Raw block
|15BC5A| db $0F, $00, $47, $00, $EB, $04, $F6, $0C
|15BC62| db $FF, $02, $7A, $01, $0E, $11, $0C, $46
|15BC6A| db $AA, $B3, $9F, $46
|15BC6E| db $23 ; Repeat byte
|15BC6F| db $00
|15BC70| db $13 ; Raw block
|15BC71| db $B0, $00, $68, $20, $78, $30, $B8, $40
|15BC79| db $48, $F0, $F4, $F8, $00, $00, $B0, $D8
|15BC81| db $C8, $B8, $48, $F4
|15BC85| db $83 ; Copy past
|15BC86| dw $0038
|15BC88| db $13 ; Raw block
|15BC89| db $1E, $00, $3B, $01, $7D, $00, $FD, $00
|15BC91| db $6E, $19, $3D, $1B, $00, $01, $1F, $26
|15BC99| db $43, $BB, $6E, $35
|15BC9D| db $83 ; Copy past
|15BC9E| dw $0050
|15BCA0| db $13 ; Raw block
|15BCA1| db $C0, $80, $F0, $80, $88, $70, $68, $F0
|15BCA9| db $B4, $F8, $94, $F8, $00, $80, $40, $70
|15BCB1| db $88, $68, $F4, $F4
|15BCB5| db $23 ; Repeat byte
|15BCB6| db $00
|15BCB7| db $13 ; Raw block
|15BCB8| db $1E, $00, $3D, $00, $1E, $00, $0E, $00
|15BCC0| db $93, $0C, $D6, $0C, $00, $00, $1E, $23
|15BCC8| db $19, $0D, $93, $57
|15BCCC| db $23 ; Repeat byte
|15BCCD| db $00
|15BCCE| db $E0, $2E ; EXT Raw block
|15BCD0| db $C0, $00, $B0, $00, $F8, $20, $A8, $50
|15BCD8| db $F4, $78, $54, $F8, $00, $00, $C0, $F0
|15BCE0| db $D8, $A8, $F4, $74, $03, $00, $01, $00
|15BCE8| db $10, $00, $3B, $00, $3C, $03, $3D, $03
|15BCF0| db $2F, $00, $12, $00, $02, $01, $10, $2B
|15BCF8| db $2C, $25, $33, $1F, $C0, $00, $E0
|15BCFF| db $44 ; Repeat word
|15BD00| dw $F000
|15BD02| db $0F ; Raw block
|15BD03| db $98, $00, $FC, $08, $0C, $30, $34, $78
|15BD0B| db $C0, $20, $90, $90, $F8, $F4, $CC, $B4
|15BD13| db $25 ; Repeat byte
|15BD14| db $00
|15BD15| db $09 ; Raw block
|15BD16| db $03, $00, $04, $03, $0F, $07, $14, $0F
|15BD1E| db $14, $0E
|15BD20| db $22 ; Repeat byte
|15BD21| db $00
|15BD22| db $04 ; Raw block
|15BD23| db $03, $04, $09, $11, $17
|15BD28| db $25 ; Repeat byte
|15BD29| db $00
|15BD2A| db $09 ; Raw block
|15BD2B| db $C0, $00, $20, $C0, $F0, $E0, $28, $F0
|15BD33| db $28, $70
|15BD35| db $22 ; Repeat byte
|15BD36| db $00
|15BD37| db $04 ; Raw block
|15BD38| db $C0, $20, $90, $88, $E8
|15BD3D| db $25 ; Repeat byte
|15BD3E| db $00
|15BD3F| db $09 ; Raw block
|15BD40| db $10, $00, $3F, $10, $77, $3F, $70, $3F
|15BD48| db $FD, $7F
|15BD4A| db $22 ; Repeat byte
|15BD4B| db $00
|15BD4C| db $18 ; Raw block
|15BD4D| db $10, $3F, $7F, $7F, $FF, $00, $00, $06
|15BD55| db $00, $0A, $00, $1E, $08, $F4, $18, $EC
|15BD5D| db $78, $FC, $B0, $F6, $C0, $00, $06, $0E
|15BD65| db $1E
|15BD66| db $22 ; Repeat byte
|15BD67| db $FC
|15BD68| db $00 ; Raw block
|15BD69| db $FE
|15BD6A| db $25 ; Repeat byte
|15BD6B| db $00
|15BD6C| db $09 ; Raw block
|15BD6D| db $08, $00, $5F, $08, $BB, $47, $BC, $5F
|15BD75| db $DB, $67
|15BD77| db $22 ; Repeat byte
|15BD78| db $00
|15BD79| db $04 ; Raw block
|15BD7A| db $08, $5F, $FF, $FF, $FB
|15BD7F| db $84 ; Copy past
|15BD80| dw $0006
|15BD82| db $1D ; Raw block
|15BD83| db $00, $0F, $04, $FA, $0C, $F6, $FC, $FC
|15BD8B| db $D8, $F8, $E0, $00, $03, $07, $0F, $FE
|15BD93| db $FE, $FC, $F8, $7B, $37, $34, $0F, $16
|15BD9B| db $0F, $13, $0F, $0C, $03, $03
|15BDA1| db $24 ; Repeat byte
|15BDA2| db $00
|15BDA3| db $12 ; Raw block
|15BDA4| db $4B, $37, $17, $13, $0C, $03, $00, $00
|15BDAC| db $DE, $EC, $2C, $F0, $68, $F0, $C8, $F0
|15BDB4| db $30, $C0, $C0
|15BDB7| db $24 ; Repeat byte
|15BDB8| db $00
|15BDB9| db $12 ; Raw block
|15BDBA| db $D2, $EC, $E8, $C8, $30, $C0, $00, $00
|15BDC2| db $25, $03, $1B, $07, $2D, $0B, $3D, $1B
|15BDCA| db $1E, $01, $01
|15BDCD| db $24 ; Repeat byte
|15BDCE| db $00
|15BDCF| db $12 ; Raw block
|15BDD0| db $3D, $1B, $35, $25, $1E, $01, $00, $00
|15BDD8| db $D4, $F8, $94, $F8, $34, $F8, $E8, $F0
|15BDE0| db $18, $E0, $E0
|15BDE3| db $24 ; Repeat byte
|15BDE4| db $00
|15BDE5| db $22 ; Repeat byte
|15BDE6| db $F4
|15BDE7| db $02 ; Raw block
|15BDE8| db $E8, $18, $E0
|15BDEB| db $83 ; Copy past
|15BDEC| dw $04BE
|15BDEE| db $0A ; Raw block
|15BDEF| db $6E, $19, $FD, $00, $7D, $00, $3B, $01
|15BDF7| db $1E, $00, $01
|15BDFA| db $22 ; Repeat byte
|15BDFB| db $00
|15BDFC| db $14 ; Raw block
|15BDFD| db $35, $6E, $BB, $43, $26, $1F, $01, $00
|15BE05| db $94, $F8, $B4, $F8, $68, $F0, $88, $70
|15BE0D| db $F0, $80, $C0, $80, $80
|15BE12| db $22 ; Repeat byte
|15BE13| db $00
|15BE14| db $12 ; Raw block
|15BE15| db $F4, $F4, $68, $88, $70, $40, $80, $00
|15BE1D| db $FC, $00, $F4, $01, $75, $03, $3D, $03
|15BE25| db $0E, $05, $07
|15BE28| db $24 ; Repeat byte
|15BE29| db $00
|15BE2A| db $0C ; Raw block
|15BE2B| db $BF, $8E, $4D, $3D, $0A, $07, $00, $00
|15BE33| db $14, $F8, $94, $F8, $28
|15BE38| db $85 ; Copy past
|15BE39| dw $049D
|15BE3B| db $24 ; Repeat byte
|15BE3C| db $00
|15BE3D| db $01 ; Raw block
|15BE3E| db $74, $F4
|15BE40| db $85 ; Copy past
|15BE41| dw $04AA
|15BE43| db $0A ; Raw block
|15BE44| db $3E, $01, $2B, $07, $1E, $0B, $0D, $03
|15BE4C| db $04, $03, $03
|15BE4F| db $24 ; Repeat byte
|15BE50| db $00
|15BE51| db $0A ; Raw block
|15BE52| db $3E, $3B, $17, $0D, $04, $03, $00, $00
|15BE5A| db $54, $F8, $14
|15BE5D| db $87 ; Copy past
|15BE5E| dw $052B
|15BE60| db $24 ; Repeat byte
|15BE61| db $00
|15BE62| db $87 ; Copy past
|15BE63| dw $0538
|15BE65| db $08 ; Raw block
|15BE66| db $14, $0E, $14, $0F, $0F, $07, $04, $03
|15BE6E| db $03
|15BE6F| db $26 ; Repeat byte
|15BE70| db $00
|15BE71| db $04 ; Raw block
|15BE72| db $17, $11, $09, $04, $03
|15BE77| db $22 ; Repeat byte
|15BE78| db $00
|15BE79| db $08 ; Raw block
|15BE7A| db $28, $70, $28, $F0, $F0, $E0, $20, $C0
|15BE82| db $C0
|15BE83| db $26 ; Repeat byte
|15BE84| db $00
|15BE85| db $04 ; Raw block
|15BE86| db $E8, $88, $90, $20, $C0
|15BE8B| db $22 ; Repeat byte
|15BE8C| db $00
|15BE8D| db $0C ; Raw block
|15BE8E| db $CB, $77, $DC, $6B, $7C, $1B, $39, $16
|15BE96| db $2E, $10, $28, $10, $10
|15BE9B| db $22 ; Repeat byte
|15BE9C| db $00
|15BE9D| db $0E ; Raw block
|15BE9E| db $CB, $DC, $7C, $39, $3E, $38, $10, $00
|15BEA6| db $CA, $F8, $FC, $F8, $F8, $C0, $C0
|15BEAD| db $28 ; Repeat byte
|15BEAE| db $00
|15BEAF| db $03 ; Raw block
|15BEB0| db $F6, $F4, $F8, $C0
|15BEB4| db $23 ; Repeat byte
|15BEB5| db $00
|15BEB6| db $0A ; Raw block
|15BEB7| db $79, $37, $77, $09, $FF, $22, $DD, $45
|15BEBF| db $BB, $09, $7F
|15BEC2| db $24 ; Repeat byte
|15BEC3| db $00
|15BEC4| db $12 ; Raw block
|15BEC5| db $79, $77, $DD, $BA, $F7, $7F, $00, $00
|15BECD| db $B8, $F0, $B8, $70, $F0, $60, $F0, $E0
|15BED5| db $E0, $80, $80
|15BED8| db $24 ; Repeat byte
|15BED9| db $00
|15BEDA| db $07 ; Raw block
|15BEDB| db $F8, $F8, $F0, $F0, $E0, $80, $00, $00
|15BEE3| db $FF ; End of GFX 8C

;===================================================================================================

GFX_8D:
|15BEE4| db $23 ; Repeat byte
|15BEE5| db $00
|15BEE6| db $03 ; Raw block
|15BEE7| db $01, $00, $02, $01
|15BEEB| db $45 ; Repeat word
|15BEEC| dw $0205
|15BEEE| db $0F ; Raw block
|15BEEF| db $0D, $02, $00, $00, $01, $03, $06, $06
|15BEF7| db $07, $0F, $03, $00, $FC, $03, $77, $88
|15BEFF| db $43 ; Repeat word
|15BF00| dw $06F9
|15BF02| db $E0, $22 ; EXT Raw block
|15BF04| db $D1, $2E, $69, $94, $0B, $F2, $03, $FF
|15BF0C| db $8F, $07, $07, $3F, $9F, $FD, $F8, $00
|15BF14| db $7F, $80, $FB, $04, $FF, $00, $87, $78
|15BF1C| db $F8, $07, $86, $79, $82, $7D, $F8, $87
|15BF24| db $FC, $04, $F8
|15BF27| db $22 ; Repeat byte
|15BF28| db $FF
|15BF29| db $02 ; Raw block
|15BF2A| db $00, $00, $C0
|15BF2D| db $44 ; Repeat word
|15BF2E| dw $F000
|15BF30| db $0F ; Raw block
|15BF31| db $D8, $20, $DC, $28, $5C, $A8, $76, $CC
|15BF39| db $00, $C0, $B0, $90, $78, $7C, $FC, $FE
|15BF41| db $2B ; Repeat byte
|15BF42| db $00
|15BF43| db $02 ; Raw block
|15BF44| db $01, $00, $01
|15BF47| db $26 ; Repeat byte
|15BF48| db $00
|15BF49| db $19 ; Raw block
|15BF4A| db $01, $01, $04, $00, $0A, $04, $1B, $06
|15BF52| db $34, $19, $7F, $2B, $EE, $55, $FD, $AE
|15BF5A| db $EC, $B7, $04, $0E, $1B, $36, $7E, $EF
|15BF62| db $FF, $EF
|15BF64| db $2D ; Repeat byte
|15BF65| db $00
|15BF66| db $00 ; Raw block
|15BF67| db $03
|15BF68| db $27 ; Repeat byte
|15BF69| db $00
|15BF6A| db $E0, $3D ; EXT Raw block
|15BF6C| db $03, $01, $00, $03, $00, $07, $00, $C7
|15BF74| db $01, $BF, $41, $9E, $63, $8E, $77, $87
|15BF7C| db $78, $01, $02, $04, $C5, $F9, $EA, $FE
|15BF84| db $FF, $E3, $00, $F4, $23, $BB, $F7, $9B
|15BF8C| db $FE, $5F, $B6, $F7, $5B, $BB, $07, $F4
|15BF94| db $23, $E3, $34, $BB, $9A, $56, $B3, $F3
|15BF9C| db $F8, $00, $00, $0C, $00, $0B, $04, $05
|15BFA4| db $02, $05, $03, $0D, $02, $03
|15BFAA| db $83 ; Copy past
|15BFAB| dw $006D
|15BFAD| db $06 ; Raw block
|15BFAE| db $0C, $0B, $05, $05, $0D, $03, $01
|15BFB5| db $27 ; Repeat byte
|15BFB6| db $00
|15BFB7| db $43 ; Repeat word
|15BFB8| dw $00C0
|15BFBA| db $03 ; Raw block
|15BFBB| db $B0, $C0, $70, $C0
|15BFBF| db $23 ; Repeat byte
|15BFC0| db $00
|15BFC1| db $0A ; Raw block
|15BFC2| db $C0, $C0, $B0, $70, $00, $00, $7C, $00
|15BFCA| db $0E, $00, $06
|15BFCD| db $45 ; Repeat word
|15BFCE| dw $0200
|15BFD0| db $23 ; Repeat byte
|15BFD1| db $00
|15BFD2| db $02 ; Raw block
|15BFD3| db $7C, $0E, $06
|15BFD6| db $22 ; Repeat byte
|15BFD7| db $02
|15BFD8| db $22 ; Repeat byte
|15BFD9| db $00
|15BFDA| db $15 ; Raw block
|15BFDB| db $07, $00, $09, $07, $07, $00, $02, $01
|15BFE3| db $01, $00, $03, $01, $07, $02, $00, $07
|15BFEB| db $0F, $07, $02, $01, $03, $07
|15BFF1| db $23 ; Repeat byte
|15BFF2| db $00
|15BFF3| db $E0, $2B ; EXT Raw block
|15BFF5| db $C4, $00, $BB, $C4, $FC, $79, $FF, $83
|15BFFD| db $1F, $F5, $9D, $76, $00, $00, $C4, $FF
|15C005| db $FE, $FE, $1E, $9F, $E0, $00, $58, $20
|15C00D| db $2C, $18, $16, $0C, $1B, $06, $1D, $03
|15C015| db $1E, $01, $13, $0C, $E0, $58, $2C, $16
|15C01D| db $1B, $1D, $1E, $13
|15C021| db $29 ; Repeat byte
|15C022| db $00
|15C023| db $05 ; Raw block
|15C024| db $80, $00, $C0, $80, $20, $C0
|15C02A| db $24 ; Repeat byte
|15C02B| db $00
|15C02C| db $E0, $2D ; EXT Raw block
|15C02E| db $80, $C0, $60, $17, $0C, $2E, $18, $5F
|15C036| db $38, $7F, $38, $F8, $00, $B7, $27, $7F
|15C03E| db $13, $3F, $00, $1F, $3F, $7F, $7F, $FF
|15C046| db $D8, $6C, $3F, $D6, $24, $2D, $08, $3A
|15C04E| db $E1, $FD, $03, $F3, $0F, $7F, $0F, $FF
|15C056| db $1E, $FF, $00, $FB, $F7, $1F
|15C05C| db $24 ; Repeat byte
|15C05D| db $FF
|15C05E| db $0F ; Raw block
|15C05F| db $9F, $7E, $2F, $FE, $37, $FE, $DF, $F4
|15C067| db $DF, $74, $FE, $79, $FF, $00, $F8, $00
|15C06F| db $24 ; Repeat byte
|15C070| db $FF
|15C071| db $0F ; Raw block
|15C072| db $FE, $FF, $F8, $F6, $1C, $FE, $3C, $FA
|15C07A| db $7C, $FC, $18, $18, $E0, $10, $E0, $E0
|15C082| db $22 ; Repeat byte
|15C083| db $00
|15C084| db $22 ; Repeat byte
|15C085| db $FE
|15C086| db $04 ; Raw block
|15C087| db $FC, $18, $10, $E0, $00
|15C08C| db $43 ; Repeat word
|15C08D| dw $0103
|15C08F| db $43 ; Repeat word
|15C090| dw $0207
|15C092| db $03 ; Raw block
|15C093| db $0E, $05, $0F, $04
|15C097| db $43 ; Repeat word
|15C098| dw $0004
|15C09A| db $10 ; Raw block
|15C09B| db $03, $03, $07, $07, $0E, $0F, $04, $04
|15C0A3| db $9F, $73, $B5, $53, $56, $81, $49, $84
|15C0AB| db $89
|15C0AC| db $26 ; Repeat byte
|15C0AD| db $00
|15C0AE| db $04 ; Raw block
|15C0AF| db $9F, $B5, $56, $49, $89
|15C0B4| db $22 ; Repeat byte
|15C0B5| db $00
|15C0B6| db $06 ; Raw block
|15C0B7| db $0C, $03, $14, $0B, $16, $0D, $23
|15C0BE| db $43 ; Repeat word
|15C0BF| dw $2F1F
|15C0C1| db $00 ; Raw block
|15C0C2| db $1E
|15C0C3| db $43 ; Repeat word
|15C0C4| dw $1B2F
|15C0C6| db $E0, $38 ; EXT Raw block
|15C0C8| db $0C, $14, $16, $23, $2F, $2F, $2B, $2B
|15C0D0| db $43, $BC, $22, $DC, $F3, $EE, $EF, $72
|15C0D8| db $E7, $9A, $6F, $F6, $FF, $0E, $7B, $9A
|15C0E0| db $7E, $3F, $FD, $6D, $85, $69, $F1, $65
|15C0E8| db $BA, $71, $BD, $7E, $CB, $3D, $B3, $0F
|15C0F0| db $3F, $05, $FF, $03, $6F, $80, $79, $80
|15C0F8| db $BC, $BC, $C9, $63, $EF, $DF, $DF, $FE
|15C100| db $01
|15C101| db $2E ; Repeat byte
|15C102| db $00
|15C103| db $00 ; Raw block
|15C104| db $01
|15C105| db $26 ; Repeat byte
|15C106| db $00
|15C107| db $06 ; Raw block
|15C108| db $FC, $10, $44, $38, $3A, $04, $26
|15C10F| db $28 ; Repeat byte
|15C110| db $00
|15C111| db $03 ; Raw block
|15C112| db $FC, $44, $3A, $26
|15C116| db $25 ; Repeat byte
|15C117| db $00
|15C118| db $43 ; Repeat word
|15C119| dw $00C0
|15C11B| db $08 ; Raw block
|15C11C| db $40, $00, $E0, $00, $70, $00, $7E, $00
|15C124| db $16
|15C125| db $83 ; Copy past
|15C126| dw $0102
|15C128| db $05 ; Raw block
|15C129| db $40, $E0, $70, $7E, $16, $02
|15C12F| db $2E ; Repeat byte
|15C130| db $00
|15C131| db $00 ; Raw block
|15C132| db $02
|15C133| db $26 ; Repeat byte
|15C134| db $00
|15C135| db $06 ; Raw block
|15C136| db $57, $3A, $3D, $13, $12, $01, $01
|15C13D| db $28 ; Repeat byte
|15C13E| db $00
|15C13F| db $03 ; Raw block
|15C140| db $56, $3D, $12, $01
|15C144| db $23 ; Repeat byte
|15C145| db $00
|15C146| db $10 ; Raw block
|15C147| db $19, $0E, $14, $0F, $13, $0F, $10, $0F
|15C14F| db $20, $1F, $3C, $03, $7F, $3C, $FE, $02
|15C157| db $11
|15C158| db $22 ; Repeat byte
|15C159| db $10
|15C15A| db $E0, $23 ; EXT Raw block
|15C15C| db $20, $3C, $7F, $FD, $E0, $40, $90, $60
|15C164| db $B0, $60, $48, $B0, $58, $B0, $54, $A8
|15C16C| db $DF, $24, $DA, $A7, $E0, $B0, $B0, $58
|15C174| db $58, $5C, $DF, $5B, $7C, $00, $FF, $7C
|15C17C| db $7F, $03, $13, $0C
|15C180| db $43 ; Repeat word
|15C181| dw $0708
|15C183| db $0B ; Raw block
|15C184| db $05, $03, $0A, $07, $7C, $FF, $7F, $13
|15C18C| db $08, $08, $05, $0A
|15C190| db $23 ; Repeat byte
|15C191| db $00
|15C192| db $13 ; Raw block
|15C193| db $84, $00, $EA, $84, $FB, $66, $F4, $B9
|15C19B| db $3F, $CB, $0E, $F5, $00, $00, $84, $EE
|15C1A3| db $FB, $F6, $3E, $0F
|15C1A7| db $27 ; Repeat byte
|15C1A8| db $00
|15C1A9| db $07 ; Raw block
|15C1AA| db $07, $00, $1F, $07, $7F, $18, $F9, $67
|15C1B2| db $23 ; Repeat byte
|15C1B3| db $00
|15C1B4| db $05 ; Raw block
|15C1B5| db $07, $1F, $7F, $F9, $00, $00
|15C1BB| db $83 ; Copy past
|15C1BC| dw $0078
|15C1BE| db $11 ; Raw block
|15C1BF| db $FB, $06, $E4, $F9, $FF, $0B, $0E, $F5
|15C1C7| db $1D, $EE, $00, $04, $0E, $FB, $E6, $FE
|15C1CF| db $0F, $1F
|15C1D1| db $29 ; Repeat byte
|15C1D2| db $00
|15C1D3| db $04 ; Raw block
|15C1D4| db $0F, $00, $13, $0E, $3F
|15C1D9| db $25 ; Repeat byte
|15C1DA| db $00
|15C1DB| db $02 ; Raw block
|15C1DC| db $0F, $13, $3F
|15C1DF| db $27 ; Repeat byte
|15C1E0| db $00
|15C1E1| db $00 ; Raw block
|15C1E2| db $40
|15C1E3| db $84 ; Copy past
|15C1E4| dw $00F9
|15C1E6| db $01 ; Raw block
|15C1E7| db $60, $C0
|15C1E9| db $23 ; Repeat byte
|15C1EA| db $00
|15C1EB| db $E0, $2E ; EXT Raw block
|15C1ED| db $40, $C0, $B0, $60, $3C, $1F, $38, $1F
|15C1F5| db $39, $1F, $3B, $1C, $1B, $0C, $1C, $0F
|15C1FD| db $1E, $03, $1F, $04, $3C, $38, $39, $3B
|15C205| db $1B, $1C, $1A, $14, $FE, $0C, $FC, $B1
|15C20D| db $FC, $D1, $B0, $C3, $A1, $DE, $FF, $00
|15C215| db $7F, $9E, $F1, $51, $F3, $CF, $EF
|15C21C| db $22 ; Repeat byte
|15C21D| db $FF
|15C21E| db $03 ; Raw block
|15C21F| db $61, $EE, $73, $80
|15C223| db $43 ; Repeat word
|15C224| dw $00F7
|15C226| db $0E ; Raw block
|15C227| db $F8, $40, $7F, $20, $7F, $30, $BF, $18
|15C22F| db $DF, $02, $FC, $FC, $FE, $FF, $F9
|15C236| db $22 ; Repeat byte
|15C237| db $FF
|15C238| db $00 ; Raw block
|15C239| db $2C
|15C23A| db $84 ; Copy past
|15C23B| dw $0391
|15C23D| db $43 ; Repeat word
|15C23E| dw $1C3B
|15C240| db $E0, $26 ; EXT Raw block
|15C242| db $1C, $0F, $1E, $0B, $0F, $04, $2C, $38
|15C24A| db $39, $3B, $3B, $1C, $1A, $0C, $DF, $2C
|15C252| db $CF, $B1, $EF, $D4, $F6, $84, $E3, $82
|15C25A| db $ED, $01, $76, $90, $F9, $49, $F3, $FE
|15C262| db $FE, $BB, $BD, $F2, $69, $F6, $F3
|15C269| db $83 ; Copy past
|15C26A| dw $03C1
|15C26C| db $0B ; Raw block
|15C26D| db $40, $F0, $60, $FF, $30, $BF, $00, $C2
|15C275| db $80, $7F, $80, $7C
|15C279| db $84 ; Copy past
|15C27A| dw $03D1
|15C27C| db $01 ; Raw block
|15C27D| db $7D, $7F
|15C27F| db $3B ; Repeat byte
|15C280| db $00
|15C281| db $1B ; Raw block
|15C282| db $04, $00, $0B, $04, $1C, $09, $3F, $13
|15C28A| db $7F, $25, $FD, $56, $00, $00, $04, $0F
|15C292| db $1E, $3E, $7E, $FF, $0B, $04, $08, $07
|15C29A| db $05, $02, $07, $01
|15C29E| db $83 ; Copy past
|15C29F| dw $01E6
|15C2A1| db $05 ; Raw block
|15C2A2| db $1C, $0B, $1F, $00, $0B, $08
|15C2A8| db $62 ; Increment fill
|15C2A9| db $05
|15C2AA| db $1F ; Raw block
|15C2AB| db $0E, $1C, $1F, $D9, $27, $EE, $15, $6A
|15C2B3| db $57, $ED, $1B, $EB, $1D, $69, $9C, $34
|15C2BB| db $CE, $92, $6F, $D9, $EC, $AA, $EC, $EE
|15C2C3| db $6F, $37, $93, $0C, $07, $1F, $08, $18
|15C2CB| db $2A ; Repeat byte
|15C2CC| db $00
|15C2CD| db $02 ; Raw block
|15C2CE| db $0C, $1F, $18
|15C2D1| db $24 ; Repeat byte
|15C2D2| db $00
|15C2D3| db $0C ; Raw block
|15C2D4| db $1D, $EE, $0C, $F7, $EF, $33, $75, $23
|15C2DC| db $26, $01, $09, $04, $09
|15C2E1| db $22 ; Repeat byte
|15C2E2| db $00
|15C2E3| db $0E ; Raw block
|15C2E4| db $1F, $0F, $EF, $75, $26, $09, $09, $00
|15C2EC| db $61, $1F, $1A, $07, $07, $02, $02
|15C2F3| db $28 ; Repeat byte
|15C2F4| db $00
|15C2F5| db $03 ; Raw block
|15C2F6| db $61, $1A, $07, $02
|15C2FA| db $23 ; Repeat byte
|15C2FB| db $00
|15C2FC| db $8A ; Copy past
|15C2FD| dw $049A
|15C2FF| db $24 ; Repeat byte
|15C300| db $00
|15C301| db $86 ; Copy past
|15C302| dw $04A9
|15C304| db $01 ; Raw block
|15C305| db $00, $05
|15C307| db $22 ; Repeat byte
|15C308| db $00
|15C309| db $00 ; Raw block
|15C30A| db $01
|15C30B| db $2A ; Repeat byte
|15C30C| db $00
|15C30D| db $02 ; Raw block
|15C30E| db $05, $00, $01
|15C311| db $24 ; Repeat byte
|15C312| db $00
|15C313| db $02 ; Raw block
|15C314| db $E0, $00, $E0
|15C317| db $44 ; Repeat word
|15C318| dw $A040
|15C31A| db $02 ; Raw block
|15C31B| db $C0, $00, $80
|15C31E| db $24 ; Repeat byte
|15C31F| db $00
|15C320| db $0B ; Raw block
|15C321| db $E0, $E0, $A0, $A0, $C0, $80, $00, $00
|15C329| db $1F, $00, $1B, $04
|15C32D| db $47 ; Repeat word
|15C32E| dw $0F30
|15C330| db $05 ; Raw block
|15C331| db $18, $07, $07, $00, $17, $17
|15C337| db $23 ; Repeat byte
|15C338| db $2F
|15C339| db $E0, $38 ; EXT Raw block
|15C33B| db $1F, $07, $F6, $B0, $B7, $50, $3B, $C8
|15C343| db $BF, $7B, $BF, $78, $BF, $63, $FE, $67
|15C34B| db $80, $7F, $C9, $E8, $F4, $BC, $BB, $A3
|15C353| db $E6, $80, $E7, $80, $78, $40, $3F, $20
|15C35B| db $FE, $0C, $3D, $C4, $16, $EA, $6B, $95
|15C363| db $FF, $00, $7F, $BF, $DF, $F1, $3A, $1D
|15C36B| db $7E, $FF, $0F, $00, $07, $00, $03, $00
|15C373| db $01
|15C374| db $28 ; Repeat byte
|15C375| db $00
|15C376| db $03 ; Raw block
|15C377| db $0F, $07, $03, $01
|15C37B| db $23 ; Repeat byte
|15C37C| db $00
|15C37D| db $E0, $23 ; EXT Raw block
|15C37F| db $FF, $B6, $BF, $68, $9E, $77, $EC, $9F
|15C387| db $F0, $4F, $7B, $64, $3F, $39, $0C, $0C
|15C38F| db $F9, $AF, $96, $EC, $F0, $7B, $3F, $0C
|15C397| db $F9, $08, $CC, $34, $87, $7B, $BF, $41
|15C39F| db $E1, $20, $C0, $C0
|15C3A3| db $23 ; Repeat byte
|15C3A4| db $00
|15C3A5| db $05 ; Raw block
|15C3A6| db $F6, $FB, $FC, $FE, $E1, $C0
|15C3AC| db $23 ; Repeat byte
|15C3AD| db $00
|15C3AE| db $43 ; Repeat word
|15C3AF| dw $0001
|15C3B1| db $43 ; Repeat word
|15C3B2| dw $0102
|15C3B4| db $00 ; Raw block
|15C3B5| db $01
|15C3B6| db $25 ; Repeat byte
|15C3B7| db $00
|15C3B8| db $02 ; Raw block
|15C3B9| db $01, $01, $03
|15C3BC| db $83 ; Copy past
|15C3BD| dw $00EE
|15C3BF| db $08 ; Raw block
|15C3C0| db $EF, $5A, $DD, $AB, $6A, $81, $C1, $00
|15C3C8| db $80
|15C3C9| db $26 ; Repeat byte
|15C3CA| db $00
|15C3CB| db $04 ; Raw block
|15C3CC| db $EE, $DD, $EA, $C1, $80
|15C3D1| db $3A ; Repeat byte
|15C3D2| db $00
|15C3D3| db $0A ; Raw block
|15C3D4| db $79, $07, $0D, $03, $04, $03, $02, $01
|15C3DC| db $03, $00, $01
|15C3DF| db $24 ; Repeat byte
|15C3E0| db $00
|15C3E1| db $07 ; Raw block
|15C3E2| db $79, $0D, $04, $02, $03, $01, $00, $00
|15C3EA| db $FF ; End of GFX 8D

;===================================================================================================

GFX_8E:
|15C3EB| db $09 ; Raw block
|15C3EC| db $01, $00, $03, $00, $07, $00, $0E, $01
|15C3F4| db $0D, $02
|15C3F6| db $43 ; Repeat word
|15C3F7| dw $041B
|15C3F9| db $E0, $21 ; EXT Raw block
|15C3FB| db $0B, $04, $01, $02, $04, $09, $0B, $16
|15C403| db $16, $0E, $E0, $00, $F3, $00, $7F, $83
|15C40B| db $1C, $E7, $B8, $4F, $78, $BF, $EC, $7F
|15C413| db $C7, $7F, $E0, $13, $8F, $EF, $7E, $FC
|15C41B| db $EE, $C7
|15C41D| db $27 ; Repeat byte
|15C41E| db $00
|15C41F| db $00 ; Raw block
|15C420| db $01
|15C421| db $2A ; Repeat byte
|15C422| db $00
|15C423| db $00 ; Raw block
|15C424| db $01
|15C425| db $22 ; Repeat byte
|15C426| db $00
|15C427| db $1D ; Raw block
|15C428| db $18, $00, $3C, $00, $73, $0C, $F7, $0B
|15C430| db $CC, $37, $B8, $4F, $78, $3F, $EC, $7F
|15C438| db $18, $24, $4F, $AF, $7F, $FE, $7C, $EE
|15C440| db $00, $00, $07, $00, $0F, $07
|15C446| db $43 ; Repeat word
|15C447| dw $0F10
|15C449| db $15 ; Raw block
|15C44A| db $70, $1F, $B8, $7F, $90, $7F, $00, $07
|15C452| db $0F, $17, $17, $7F, $F9, $B0, $00, $00
|15C45A| db $80, $00, $D8, $80, $EC, $90
|15C460| db $43 ; Repeat word
|15C461| dw $C07E
|15C463| db $0B ; Raw block
|15C464| db $FE, $80, $F7, $88, $00, $80, $D8, $F4
|15C46C| db $FA, $E6, $C2, $C9
|15C470| db $83 ; Copy past
|15C471| dw $0062
|15C473| db $43 ; Repeat word
|15C474| dw $0F10
|15C476| db $85 ; Copy past
|15C477| dw $006A
|15C479| db $01 ; Raw block
|15C47A| db $D9, $3F
|15C47C| db $86 ; Copy past
|15C47D| dw $0071
|15C47F| db $02 ; Raw block
|15C480| db $D9, $80, $00
|15C483| db $43 ; Repeat word
|15C484| dw $80C0
|15C486| db $E0, $41 ; EXT Raw block
|15C488| db $60, $C0, $58, $E0, $E4, $D8, $FC, $88
|15C490| db $FC, $00, $80, $C0, $C0, $E0, $D8, $E4
|15C498| db $DC, $DC, $07, $00, $0C, $07, $1B, $0E
|15C4A0| db $2E, $1D, $2E, $1B, $5E, $3B, $5F, $37
|15C4A8| db $DB, $37, $07, $0E, $1F, $2F, $2F, $5F
|15C4B0| db $5F, $DB, $E0, $00, $10, $E0, $E8, $70
|15C4B8| db $54, $B8, $34, $D8, $AA, $5C, $1A, $EC
|15C4C0| db $1B, $EC, $E0, $70, $F8, $DC, $FC, $6E
|15C4C8| db $FE, $FF
|15C4CA| db $83 ; Copy past
|15C4CB| dw $0036
|15C4CD| db $13 ; Raw block
|15C4CE| db $06, $01, $1B, $04, $37, $1C, $6E, $3B
|15C4D6| db $6C, $3B, $BA, $77, $00, $01, $06, $1F
|15C4DE| db $3F, $7F, $7F, $BB
|15C4E2| db $83 ; Copy past
|15C4E3| dw $0078
|15C4E5| db $13 ; Raw block
|15C4E6| db $60, $80, $D8, $20, $E4, $38, $32, $DC
|15C4EE| db $FA, $1C, $19, $EE, $00, $80, $60, $F8
|15C4F6| db $FC, $FE, $3E, $FF
|15C4FA| db $39 ; Repeat byte
|15C4FB| db $00
|15C4FC| db $15 ; Raw block
|15C4FD| db $1C, $00, $2A, $1C, $54, $38, $6A, $34
|15C505| db $AB, $76, $AC, $73, $BE, $71, $00, $1C
|15C50D| db $2E, $5C, $7A, $BB, $BC, $BE
|15C513| db $23 ; Repeat byte
|15C514| db $00
|15C515| db $43 ; Repeat word
|15C516| dw $0001
|15C518| db $03 ; Raw block
|15C519| db $03, $01, $02, $01
|15C51D| db $83 ; Copy past
|15C51E| dw $0158
|15C520| db $03 ; Raw block
|15C521| db $00, $00, $01, $01
|15C525| db $22 ; Repeat byte
|15C526| db $03
|15C527| db $1D ; Raw block
|15C528| db $02, $00, $00, $C0, $00, $70, $C0, $78
|15C530| db $B0, $6C, $98, $77, $8C, $78, $87, $BE
|15C538| db $C1, $00, $C0, $F0, $F8, $EC, $F7, $F8
|15C540| db $FE, $07, $00, $03, $00, $01
|15C546| db $22 ; Repeat byte
|15C547| db $00
|15C548| db $02 ; Raw block
|15C549| db $01, $00, $01
|15C54C| db $24 ; Repeat byte
|15C54D| db $00
|15C54E| db $14 ; Raw block
|15C54F| db $06, $02, $01, $00, $01, $01, $00, $00
|15C557| db $EF, $3F, $BC, $1F, $7E, $01, $FF, $68
|15C55F| db $3B, $2B, $DC, $14, $77
|15C564| db $22 ; Repeat byte
|15C565| db $00
|15C566| db $06 ; Raw block
|15C567| db $EF, $BC, $7E, $95, $D4, $EB, $77
|15C56E| db $2A ; Repeat byte
|15C56F| db $00
|15C570| db $02 ; Raw block
|15C571| db $01, $00, $01
|15C574| db $27 ; Repeat byte
|15C575| db $00
|15C576| db $07 ; Raw block
|15C577| db $01, $01, $00, $C7, $7F, $6F, $3F, $3C
|15C57F| db $88 ; Copy past
|15C580| dw $019B
|15C582| db $04 ; Raw block
|15C583| db $7F, $00, $C7, $6F, $3C
|15C588| db $83 ; Copy past
|15C589| dw $01AA
|15C58B| db $E0, $25 ; EXT Raw block
|15C58D| db $7F, $D9, $3F, $7F, $1F, $7F, $07, $7F
|15C595| db $30, $7B, $39, $27, $06, $3F, $06, $0E
|15C59D| db $00, $D9, $7F, $5F, $4F, $46, $39, $39
|15C5A5| db $0E, $FB, $04, $DB, $24, $AD, $52, $A6
|15C5AD| db $58, $F4, $88, $F4, $C8, $C8
|15C5B3| db $22 ; Repeat byte
|15C5B4| db $00
|15C5B5| db $07 ; Raw block
|15C5B6| db $8D, $AD, $F7, $FE, $7C, $3C, $C8, $00
|15C5BE| db $8B ; Copy past
|15C5BF| dw $01E2
|15C5C1| db $00 ; Raw block
|15C5C2| db $0F
|15C5C3| db $22 ; Repeat byte
|15C5C4| db $00
|15C5C5| db $85 ; Copy past
|15C5C6| dw $01F1
|15C5C8| db $E0, $79 ; EXT Raw block
|15C5CA| db $0F, $00, $F8, $00, $D8, $20, $C8, $30
|15C5D2| db $B4, $48, $D8, $A0, $F0, $80, $F0, $00
|15C5DA| db $60, $00, $88, $A8, $B8, $DC, $78, $50
|15C5E2| db $D0, $60, $DB, $B7, $C9, $37, $A4, $1B
|15C5EA| db $DC, $43, $6F, $28, $3F, $1B, $1E, $00
|15C5F2| db $01, $00, $5B, $C9, $E4, $BC, $57, $24
|15C5FA| db $1F, $01, $BB, $ED, $F3, $EC, $E5, $D8
|15C602| db $3B, $C2, $F6, $14, $F4, $C0, $78, $00
|15C60A| db $80, $00, $FA, $F3, $E7, $3D, $EA, $3C
|15C612| db $F8, $80, $B9, $77, $88, $77, $C8, $B7
|15C61A| db $A7, $18, $5A, $04, $6F, $2B, $FF, $72
|15C622| db $72, $00, $B9, $88, $48, $A7, $7B, $54
|15C62A| db $8D, $72, $BB, $EE, $D5, $EE, $13, $ED
|15C632| db $E5, $18, $5A, $20, $FA, $D8, $FF, $4E
|15C63A| db $4E, $00, $FF, $D5, $12, $E5, $DE, $26
|15C642| db $B1, $4E
|15C644| db $29 ; Repeat byte
|15C645| db $00
|15C646| db $00 ; Raw block
|15C647| db $01
|15C648| db $29 ; Repeat byte
|15C649| db $00
|15C64A| db $1B ; Raw block
|15C64B| db $01, $00, $00, $9F, $70, $5E, $39, $3C
|15C653| db $07, $66, $1F, $F3, $4F, $B8, $87, $FF
|15C65B| db $60, $77, $00, $9F, $5F, $3F, $67, $B3
|15C663| db $78, $9F, $77, $01
|15C667| db $28 ; Repeat byte
|15C668| db $00
|15C669| db $00 ; Raw block
|15C66A| db $01
|15C66B| db $24 ; Repeat byte
|15C66C| db $00
|15C66D| db $00 ; Raw block
|15C66E| db $01
|15C66F| db $23 ; Repeat byte
|15C670| db $00
|15C671| db $1A ; Raw block
|15C672| db $01, $00, $00, $3F, $F0, $DD, $36, $3B
|15C67A| db $0C, $77, $18, $FE, $59, $AD, $9F, $FA
|15C682| db $67, $77, $00, $3F, $DD, $3B, $77, $BF
|15C68A| db $6F, $9A, $77
|15C68D| db $23 ; Repeat byte
|15C68E| db $00
|15C68F| db $02 ; Raw block
|15C690| db $01, $00, $03
|15C693| db $44 ; Repeat word
|15C694| dw $0700
|15C696| db $43 ; Repeat word
|15C697| dw $010E
|15C699| db $00 ; Raw block
|15C69A| db $00
|15C69B| db $62 ; Increment fill
|15C69C| db $00
|15C69D| db $09 ; Raw block
|15C69E| db $04, $04, $09, $09, $00, $00, $E3, $00
|15C6A6| db $F7, $03
|15C6A8| db $43 ; Repeat word
|15C6A9| dw $07FC
|15C6AB| db $0D ; Raw block
|15C6AC| db $34, $CB, $54, $AB, $E2, $1D, $00, $E3
|15C6B4| db $17, $0F, $0E, $CC, $EE, $9F
|15C6BA| db $27 ; Repeat byte
|15C6BB| db $00
|15C6BC| db $02 ; Raw block
|15C6BD| db $01, $00, $01
|15C6C0| db $28 ; Repeat byte
|15C6C1| db $00
|15C6C2| db $83 ; Copy past
|15C6C3| dw $0194
|15C6C5| db $17 ; Raw block
|15C6C6| db $30, $00, $78, $00, $FF, $00, $DF, $23
|15C6CE| db $BE, $41, $76, $89, $D6, $29, $B4, $4B
|15C6D6| db $30, $48, $87, $A7, $63, $CA, $BA, $FE
|15C6DE| db $27 ; Repeat byte
|15C6DF| db $00
|15C6E0| db $00 ; Raw block
|15C6E1| db $01
|15C6E2| db $2A ; Repeat byte
|15C6E3| db $00
|15C6E4| db $00 ; Raw block
|15C6E5| db $01
|15C6E6| db $22 ; Repeat byte
|15C6E7| db $00
|15C6E8| db $0B ; Raw block
|15C6E9| db $18, $00, $3F, $00, $77, $0B, $FC, $07
|15C6F1| db $F8, $0F, $F8, $3F
|15C6F5| db $83 ; Copy past
|15C6F6| dw $0024
|15C6F8| db $03 ; Raw block
|15C6F9| db $18, $27, $4F, $AF
|15C6FD| db $85 ; Copy past
|15C6FE| dw $002C
|15C700| db $83 ; Copy past
|15C701| dw $0156
|15C703| db $03 ; Raw block
|15C704| db $0C, $03, $38, $0F
|15C708| db $43 ; Repeat word
|15C709| dw $3F58
|15C70B| db $09 ; Raw block
|15C70C| db $7C, $3F, $00, $01, $03, $0D, $3B, $7F
|15C714| db $7C, $7C
|15C716| db $83 ; Copy past
|15C717| dw $0168
|15C719| db $03 ; Raw block
|15C71A| db $F8, $C0, $EC, $D0
|15C71E| db $43 ; Repeat word
|15C71F| dw $C07E
|15C721| db $06 ; Raw block
|15C722| db $FE, $80, $77, $88, $00, $C0, $F8
|15C729| db $83 ; Copy past
|15C72A| dw $008B
|15C72C| db $18 ; Raw block
|15C72D| db $49, $4F, $38, $9C, $73, $9B, $67, $B6
|15C735| db $4F, $AC, $5F, $A8, $5F, $DF, $3F, $BF
|15C73D| db $78, $4F, $9C, $9B, $B7, $AF, $AF, $DF
|15C745| db $BF
|15C746| db $25 ; Repeat byte
|15C747| db $00
|15C748| db $23 ; Repeat byte
|15C749| db $30
|15C74A| db $28 ; Repeat byte
|15C74B| db $00
|15C74C| db $01 ; Raw block
|15C74D| db $30, $30
|15C74F| db $28 ; Repeat byte
|15C750| db $00
|15C751| db $05 ; Raw block
|15C752| db $07, $00, $0C, $03, $0B, $07
|15C758| db $43 ; Repeat word
|15C759| dw $0F17
|15C75B| db $22 ; Repeat byte
|15C75C| db $00
|15C75D| db $04 ; Raw block
|15C75E| db $07, $0C, $0B, $17, $17
|15C763| db $25 ; Repeat byte
|15C764| db $00
|15C765| db $05 ; Raw block
|15C766| db $F0, $00, $18, $E0, $E8, $F0
|15C76C| db $43 ; Repeat word
|15C76D| dw $F8F4
|15C76F| db $22 ; Repeat byte
|15C770| db $00
|15C771| db $04 ; Raw block
|15C772| db $F0, $38, $F8, $FC, $FC
|15C777| db $29 ; Repeat byte
|15C778| db $00
|15C779| db $00 ; Raw block
|15C77A| db $42
|15C77B| db $43 ; Repeat word
|15C77C| dw $FF00
|15C77E| db $25 ; Repeat byte
|15C77F| db $00
|15C780| db $02 ; Raw block
|15C781| db $42, $BD, $81
|15C784| db $43 ; Repeat word
|15C785| dw $1034
|15C787| db $43 ; Repeat word
|15C788| dw $1032
|15C78A| db $01 ; Raw block
|15C78B| db $34, $10
|15C78D| db $43 ; Repeat word
|15C78E| dw $3074
|15C790| db $09 ; Raw block
|15C791| db $34, $10, $2C, $2C, $2E, $2E, $2C, $4C
|15C799| db $4C, $2C
|15C79B| db $83 ; Copy past
|15C79C| dw $0346
|15C79E| db $00 ; Raw block
|15C79F| db $CF
|15C7A0| db $22 ; Repeat byte
|15C7A1| db $00
|15C7A2| db $22 ; Repeat byte
|15C7A3| db $FF
|15C7A4| db $01 ; Raw block
|15C7A5| db $06, $06
|15C7A7| db $23 ; Repeat byte
|15C7A8| db $00
|15C7A9| db $E0, $23 ; EXT Raw block
|15C7AB| db $30, $FF, $FF, $00, $F9, $06, $00, $FE
|15C7B3| db $7F, $FD, $BF, $FB, $DF, $F7, $EF, $EF
|15C7BB| db $F7, $DF, $FB, $BF, $FD, $7F, $FE, $FE
|15C7C3| db $FD, $FB, $F7, $EF, $DF, $BF, $7F, $0C
|15C7CB| db $03, $05, $02, $03
|15C7CF| db $43 ; Repeat word
|15C7D0| dw $0100
|15C7D2| db $26 ; Repeat byte
|15C7D3| db $00
|15C7D4| db $04 ; Raw block
|15C7D5| db $0B, $07, $03, $01, $01
|15C7DA| db $22 ; Repeat byte
|15C7DB| db $00
|15C7DC| db $0C ; Raw block
|15C7DD| db $C3, $3D, $A2, $5D, $FB, $05, $FF, $28
|15C7E5| db $7B, $6B, $FC, $34, $37
|15C7EA| db $22 ; Repeat byte
|15C7EB| db $00
|15C7EC| db $06 ; Raw block
|15C7ED| db $BF, $7F, $7F, $D7, $94, $CB, $37
|15C7F4| db $2A ; Repeat byte
|15C7F5| db $00
|15C7F6| db $00 ; Raw block
|15C7F7| db $01
|15C7F8| db $29 ; Repeat byte
|15C7F9| db $00
|15C7FA| db $0A ; Raw block
|15C7FB| db $01, $00, $00, $CA, $35, $6B, $35, $3E
|15C803| db $1B, $3F, $07
|15C806| db $87 ; Copy past
|15C807| dw $049E
|15C809| db $03 ; Raw block
|15C80A| db $CF, $6F, $3F, $3F
|15C80E| db $83 ; Copy past
|15C80F| dw $04AB
|15C811| db $2B ; Repeat byte
|15C812| db $00
|15C813| db $02 ; Raw block
|15C814| db $01, $00, $01
|15C817| db $26 ; Repeat byte
|15C818| db $00
|15C819| db $E0, $31 ; EXT Raw block
|15C81B| db $01, $01, $6F, $3F, $3F, $18, $3F, $00
|15C823| db $7F, $0E, $FF, $6C, $FB, $30, $1D, $14
|15C82B| db $FF, $00, $6F, $3F, $3D, $71, $93, $CF
|15C833| db $EB, $FF, $7E, $0F, $7F, $07, $7F, $11
|15C83B| db $7F, $0C, $77, $03, $2B, $03, $37, $07
|15C843| db $0F, $00, $7E, $5F, $6F, $73, $7C, $3C
|15C84B| db $38, $0F
|15C84D| db $88 ; Copy past
|15C84E| dw $01F8
|15C850| db $05 ; Raw block
|15C851| db $08, $F4, $48, $C8, $00, $80
|15C857| db $84 ; Copy past
|15C858| dw $0207
|15C85A| db $10 ; Raw block
|15C85B| db $FC, $BC, $C8, $80, $BF, $70, $7F, $20
|15C863| db $6F, $30, $77, $38, $38, $1F, $1F, $07
|15C86B| db $07
|15C86C| db $22 ; Repeat byte
|15C86D| db $00
|15C86E| db $06 ; Raw block
|15C86F| db $BF, $7F, $6F, $77, $38, $1F, $07
|15C876| db $38 ; Repeat byte
|15C877| db $00
|15C878| db $00 ; Raw block
|15C879| db $15
|15C87A| db $44 ; Repeat word
|15C87B| dw $160F
|15C87D| db $43 ; Repeat word
|15C87E| dw $070B
|15C880| db $02 ; Raw block
|15C881| db $04, $03, $03
|15C884| db $22 ; Repeat byte
|15C885| db $00
|15C886| db $14 ; Raw block
|15C887| db $1D, $16, $17, $0B, $0B, $04, $03, $00
|15C88F| db $D4, $F8, $B4, $F8, $34, $F8, $68, $F0
|15C897| db $E8, $F0, $10, $E0, $E0
|15C89C| db $22 ; Repeat byte
|15C89D| db $00
|15C89E| db $08 ; Raw block
|15C89F| db $D4, $B4, $74, $E8, $E8, $10, $E0, $00
|15C8A7| db $FF
|15C8A8| db $46 ; Repeat word
|15C8A9| dw $E73C
|15C8AB| db $04 ; Raw block
|15C8AC| db $7E, $18, $3C, $00, $18
|15C8B1| db $22 ; Repeat byte
|15C8B2| db $00
|15C8B3| db $23 ; Repeat byte
|15C8B4| db $BD
|15C8B5| db $E0, $21 ; EXT Raw block
|15C8B7| db $5A, $24, $18, $00, $A0, $80, $D8, $C0
|15C8BF| db $E4, $60, $74, $30, $3A, $18, $1D, $0C
|15C8C7| db $1E, $0E, $0F, $03, $60, $38, $9C, $4C
|15C8CF| db $26, $13, $11, $0C, $04, $00, $7A, $00
|15C8D7| db $9A, $18
|15C8D9| db $43 ; Repeat word
|15C8DA| dw $2466
|15C8DC| db $0D ; Raw block
|15C8DD| db $59, $18, $5E, $00, $20, $00, $04, $7E
|15C8E5| db $E6, $5A, $5A, $67, $7E, $20
|15C8EB| db $83 ; Copy past
|15C8EC| dw $0046
|15C8EE| db $08 ; Raw block
|15C8EF| db $34, $18, $62, $3C, $76, $3C, $3C, $18
|15C8F7| db $18
|15C8F8| db $23 ; Repeat byte
|15C8F9| db $00
|15C8FA| db $06 ; Raw block
|15C8FB| db $18, $3C, $7E, $7E, $3C, $18, $00
|15C902| db $FF ; End of GFX 8E

;===================================================================================================

GFX_8F:
|15C903| db $23 ; Repeat byte
|15C904| db $00
|15C905| db $13 ; Raw block
|15C906| db $08, $00, $14, $08, $2F, $0C, $3F, $0B
|15C90E| db $5E, $23, $5F, $31, $00, $00, $08, $1C
|15C916| db $37, $37, $7F, $7B
|15C91A| db $23 ; Repeat byte
|15C91B| db $00
|15C91C| db $13 ; Raw block
|15C91D| db $10, $00, $28, $10, $F4, $30, $FC, $D0
|15C925| db $7A, $C4, $FA, $8C, $00, $00, $10, $38
|15C92D| db $EC, $EC, $FE, $DE
|15C931| db $25 ; Repeat byte
|15C932| db $00
|15C933| db $85 ; Copy past
|15C934| dw $0004
|15C936| db $03 ; Raw block
|15C937| db $1F, $0B, $1E, $03
|15C93B| db $22 ; Repeat byte
|15C93C| db $00
|15C93D| db $04 ; Raw block
|15C93E| db $08, $1C, $37, $17, $1F
|15C943| db $25 ; Repeat byte
|15C944| db $00
|15C945| db $85 ; Copy past
|15C946| dw $001C
|15C948| db $03 ; Raw block
|15C949| db $F8, $D0, $78, $C0
|15C94D| db $22 ; Repeat byte
|15C94E| db $00
|15C94F| db $04 ; Raw block
|15C950| db $10, $38, $EC, $E8, $F8
|15C955| db $89 ; Copy past
|15C956| dw $0034
|15C958| db $05 ; Raw block
|15C959| db $0E, $03, $0F, $01, $1F, $05
|15C95F| db $84 ; Copy past
|15C960| dw $0042
|15C962| db $02 ; Raw block
|15C963| db $0F, $0B, $1D
|15C966| db $89 ; Copy past
|15C967| dw $004C
|15C969| db $05 ; Raw block
|15C96A| db $70, $C0, $F0, $80, $F8, $A0
|15C970| db $84 ; Copy past
|15C971| dw $005A
|15C973| db $1A ; Raw block
|15C974| db $F0, $D0, $B8, $10, $00, $2F, $00, $17
|15C97C| db $06, $0F, $01, $0F, $07, $1D, $0F, $1E
|15C984| db $07, $37, $0B, $10, $3F, $19, $0F, $0F
|15C98C| db $1F, $1F, $3F
|15C98F| db $23 ; Repeat byte
|15C990| db $00
|15C991| db $13 ; Raw block
|15C992| db $80, $00, $E0, $80, $B0, $E0, $B8, $F0
|15C99A| db $F8, $E0, $EC, $D0, $00, $00, $80, $E0
|15C9A2| db $F0, $F8, $F8, $FC
|15C9A6| db $23 ; Repeat byte
|15C9A7| db $00
|15C9A8| db $13 ; Raw block
|15C9A9| db $03, $00, $05, $03, $0B, $06, $1E, $01
|15C9B1| db $3D, $1B, $7F, $36, $00, $00, $03, $07
|15C9B9| db $0F, $1F, $3F, $7F
|15C9BD| db $23 ; Repeat byte
|15C9BE| db $00
|15C9BF| db $02 ; Raw block
|15C9C0| db $82, $00, $C5
|15C9C3| db $43 ; Repeat word
|15C9C4| dw $FA00
|15C9C6| db $0C ; Raw block
|15C9C7| db $B0, $FD, $B8, $6D, $38, $00, $00, $82
|15C9CF| db $C7, $FE, $FE, $7F, $FF
|15C9D4| db $23 ; Repeat byte
|15C9D5| db $00
|15C9D6| db $93 ; Copy past
|15C9D7| dw $00C4
|15C9D9| db $23 ; Repeat byte
|15C9DA| db $00
|15C9DB| db $05 ; Raw block
|15C9DC| db $E2, $00, $FD, $60, $FA, $30
|15C9E2| db $83 ; Copy past
|15C9E3| dw $00E2
|15C9E5| db $05 ; Raw block
|15C9E6| db $7D, $38, $00, $00, $E2, $FF
|15C9EC| db $85 ; Copy past
|15C9ED| dw $00EC
|15C9EF| db $15 ; Raw block
|15C9F0| db $0E, $00, $17, $06, $2F, $01, $1F, $06
|15C9F8| db $1C, $0F, $2F, $14, $37, $1B, $00, $0E
|15CA00| db $19, $3E, $1F, $1F, $3F, $2F
|15CA06| db $25 ; Repeat byte
|15CA07| db $00
|15CA08| db $09 ; Raw block
|15CA09| db $E0, $00, $70, $E0, $38, $F0, $F4, $28
|15CA11| db $EC, $D8
|15CA13| db $22 ; Repeat byte
|15CA14| db $00
|15CA15| db $15 ; Raw block
|15CA16| db $E0, $F0, $F8, $FC, $F4, $01, $00, $02
|15CA1E| db $01, $05, $03, $0F, $00, $1E, $0D, $3F
|15CA26| db $1B, $3F, $13, $7E, $37, $01
|15CA2C| db $84 ; Copy past
|15CA2D| dw $00D2
|15CA2F| db $12 ; Raw block
|15CA30| db $3B, $77, $C0, $00, $E0, $80, $E0, $00
|15CA38| db $60, $C0, $E0, $C0, $B0, $00, $F8, $90
|15CA40| db $EC, $B0, $C0
|15CA43| db $22 ; Repeat byte
|15CA44| db $E0
|15CA45| db $10 ; Raw block
|15CA46| db $A0, $F0, $F8, $FC, $AF, $6D, $D7, $43
|15CA4E| db $AF, $05, $AE, $02, $4B, $00, $0E, $00
|15CA56| db $04
|15CA57| db $22 ; Repeat byte
|15CA58| db $00
|15CA59| db $14 ; Raw block
|15CA5A| db $FD, $FF, $E9, $ED, $4F, $0A, $04, $00
|15CA62| db $F5, $B6, $EB, $C2, $F5, $A0, $75, $40
|15CA6A| db $D2, $00, $70, $00, $20
|15CA6F| db $22 ; Repeat byte
|15CA70| db $00
|15CA71| db $19 ; Raw block
|15CA72| db $BF, $FF, $97, $B7, $F2, $50, $20, $00
|15CA7A| db $3F, $11, $27, $19, $27, $1B, $33, $1D
|15CA82| db $36, $1C, $1F, $0C, $1E, $08, $0C, $00
|15CA8A| db $3B, $3D
|15CA8C| db $22 ; Repeat byte
|15CA8D| db $3F
|15CA8E| db $14 ; Raw block
|15CA8F| db $1F, $1E, $0C, $FC, $88, $E4, $98, $E4
|15CA97| db $D8, $CC, $B8, $6C, $38, $F8, $30, $78
|15CA9F| db $10, $30, $00, $DC, $BC
|15CAA4| db $22 ; Repeat byte
|15CAA5| db $FC
|15CAA6| db $0F ; Raw block
|15CAA7| db $F8, $78, $30, $37, $1B, $33, $1D, $19
|15CAAF| db $0E, $1D, $0E, $1F, $0C, $0E, $04, $04
|15CAB7| db $22 ; Repeat byte
|15CAB8| db $00
|15CAB9| db $01 ; Raw block
|15CABA| db $3F, $3F
|15CABC| db $22 ; Repeat byte
|15CABD| db $1F
|15CABE| db $0F ; Raw block
|15CABF| db $0E, $04, $00, $EC, $D8, $CC, $B8, $98
|15CAC7| db $70, $B8, $70, $F8, $30, $70, $20, $20
|15CACF| db $22 ; Repeat byte
|15CAD0| db $00
|15CAD1| db $01 ; Raw block
|15CAD2| db $FC, $FC
|15CAD4| db $22 ; Repeat byte
|15CAD5| db $F8
|15CAD6| db $E0, $3D ; EXT Raw block
|15CAD8| db $70, $20, $00, $3B, $0C, $37, $07, $1F
|15CAE0| db $03, $1F, $09, $0F, $05, $07, $03, $03
|15CAE8| db $01, $01, $00, $37, $3F, $1F, $1B, $0D
|15CAF0| db $07, $03, $01, $DC, $30, $EC, $E0, $78
|15CAF8| db $C0, $F8, $90, $F0, $A0, $E0, $C0, $C0
|15CB00| db $80, $80, $00, $EC, $FC, $F8, $D8, $B0
|15CB08| db $E0, $C0, $80, $7F, $27, $FD, $6F, $F9
|15CB10| db $7E, $7F, $0F, $0F, $01, $01
|15CB16| db $24 ; Repeat byte
|15CB17| db $00
|15CB18| db $12 ; Raw block
|15CB19| db $77, $EF, $FF, $7F, $0F, $01, $00, $00
|15CB21| db $F6, $3C, $DE, $7C, $9E, $FC, $CC, $F8
|15CB29| db $F8, $F0, $F0
|15CB2C| db $24 ; Repeat byte
|15CB2D| db $00
|15CB2E| db $22 ; Repeat byte
|15CB2F| db $FE
|15CB30| db $04 ; Raw block
|15CB31| db $FC, $F8, $F0, $00, $00
|15CB36| db $86 ; Copy past
|15CB37| dw $0240
|15CB39| db $01 ; Raw block
|15CB3A| db $0E, $0E
|15CB3C| db $26 ; Repeat byte
|15CB3D| db $00
|15CB3E| db $83 ; Copy past
|15CB3F| dw $0250
|15CB41| db $00 ; Raw block
|15CB42| db $0E
|15CB43| db $22 ; Repeat byte
|15CB44| db $00
|15CB45| db $08 ; Raw block
|15CB46| db $FF, $3C, $DF, $7E, $9E, $FC, $FC, $38
|15CB4E| db $38
|15CB4F| db $26 ; Repeat byte
|15CB50| db $00
|15CB51| db $04 ; Raw block
|15CB52| db $FF, $FF, $FE, $FC, $38
|15CB57| db $22 ; Repeat byte
|15CB58| db $00
|15CB59| db $01 ; Raw block
|15CB5A| db $2E, $0B
|15CB5C| db $44 ; Repeat word
|15CB5D| dw $093F
|15CB5F| db $05 ; Raw block
|15CB60| db $15, $1F, $0B, $0B, $01, $01
|15CB66| db $22 ; Repeat byte
|15CB67| db $00
|15CB68| db $0A ; Raw block
|15CB69| db $3F, $3B, $39, $2D, $17, $0B, $01, $00
|15CB71| db $74, $D0, $F8
|15CB74| db $43 ; Repeat word
|15CB75| dw $FC90
|15CB77| db $1D ; Raw block
|15CB78| db $A8, $F8, $D0, $F8, $B0, $D0, $00, $20
|15CB80| db $00, $FC, $D8, $9C, $BC, $E8, $C8, $F0
|15CB88| db $20, $7C, $3F, $3F, $07, $0F, $00, $0B
|15CB90| db $03, $07, $03, $03, $00, $01
|15CB96| db $22 ; Repeat byte
|15CB97| db $00
|15CB98| db $02 ; Raw block
|15CB99| db $7F, $3F, $0F
|15CB9C| db $83 ; Copy past
|15CB9D| dw $0224
|15CB9F| db $18 ; Raw block
|15CBA0| db $00, $C4, $78, $E6, $FC, $FF, $DA, $EF
|15CBA8| db $DA, $DD, $B8, $FA, $10, $74, $60, $FC
|15CBB0| db $00, $FC, $FE, $FD, $FD, $FF, $FE, $FC
|15CBB8| db $FC
|15CBB9| db $E4, $2F ; EXT Repeat byte
|15CBBB| db $00
|15CBBC| db $F0, $28 ; EXT Copy past
|15CBBE| dw $0150
|15CBC0| db $22 ; Repeat byte
|15CBC1| db $E0
|15CBC2| db $83 ; Copy past
|15CBC3| dw $017C
|15CBC5| db $17 ; Raw block
|15CBC6| db $0F, $00, $13, $0F, $0F, $00, $07, $03
|15CBCE| db $0C, $07, $1E, $0B, $37, $19, $27, $19
|15CBD6| db $0F, $1F, $0F, $07, $0F, $1F, $3B, $39
|15CBDE| db $83 ; Copy past
|15CBDF| dw $00AA
|15CBE1| db $14 ; Raw block
|15CBE2| db $F8, $00, $F4, $D8, $3A, $EC, $7E, $D4
|15CBEA| db $EE, $98, $E4, $98, $00, $80, $F8, $FC
|15CBF2| db $FE, $FE, $DE, $9C, $03
|15CBF7| db $85 ; Copy past
|15CBF8| dw $0365
|15CBFA| db $08 ; Raw block
|15CBFB| db $07, $2E, $1F, $27, $1F, $2F, $1E, $1E
|15CC03| db $0F
|15CC04| db $83 ; Copy past
|15CC05| dw $00D2
|15CC07| db $22 ; Repeat byte
|15CC08| db $3F
|15CC09| db $14 ; Raw block
|15CC0A| db $1F, $C0, $00, $E0, $C0, $70, $E0, $38
|15CC12| db $E0, $74, $F8, $E4, $F8, $F4, $78, $78
|15CC1A| db $B0, $C0, $E0, $F0, $F8
|15CC1F| db $22 ; Repeat byte
|15CC20| db $FC
|15CC21| db $18 ; Raw block
|15CC22| db $F8, $0E, $00, $1F, $0E, $3F, $1F, $7F
|15CC2A| db $32, $FE, $63, $FE, $67, $7C, $3F, $7E
|15CC32| db $0F, $0E, $1F, $3F, $7F, $F3, $E7, $7F
|15CC3A| db $7F
|15CC3B| db $23 ; Repeat byte
|15CC3C| db $00
|15CC3D| db $43 ; Repeat word
|15CC3E| dw $0080
|15CC40| db $45 ; Repeat word
|15CC41| dw $8040
|15CC43| db $00 ; Raw block
|15CC44| db $C0
|15CC45| db $22 ; Repeat byte
|15CC46| db $00
|15CC47| db $01 ; Raw block
|15CC48| db $80, $80
|15CC4A| db $23 ; Repeat byte
|15CC4B| db $C0
|15CC4C| db $0F ; Raw block
|15CC4D| db $07, $00, $0F, $07, $1F, $0F, $3F, $19
|15CC55| db $7F, $31, $7F, $33, $3E, $1F, $3F, $07
|15CC5D| db $83 ; Copy past
|15CC5E| dw $00D3
|15CC60| db $03 ; Raw block
|15CC61| db $79, $73, $3F, $3F
|15CC65| db $83 ; Copy past
|15CC66| dw $00AA
|15CC68| db $03 ; Raw block
|15CC69| db $C0, $80, $C0, $00
|15CC6D| db $45 ; Repeat word
|15CC6E| dw $C020
|15CC70| db $05 ; Raw block
|15CC71| db $40, $80, $00, $80, $C0, $C0
|15CC77| db $22 ; Repeat byte
|15CC78| db $E0
|15CC79| db $00 ; Raw block
|15CC7A| db $C0
|15CC7B| db $83 ; Copy past
|15CC7C| dw $00C2
|15CC7E| db $E0, $2B ; EXT Raw block
|15CC80| db $0F, $03, $3C, $0C, $78, $08, $F8, $18
|15CC88| db $F8, $08, $FC, $0C, $00, $03, $0C, $33
|15CC90| db $57, $A7, $97, $93, $00, $00, $C0, $00
|15CC98| db $F0, $C0, $7C, $30, $FE, $10, $4F, $08
|15CCA0| db $1F, $00, $0F, $00, $00, $C0, $30, $8C
|15CCA8| db $0A, $B5, $E9, $F9
|15CCAC| db $25 ; Repeat byte
|15CCAD| db $00
|15CCAE| db $01 ; Raw block
|15CCAF| db $60, $00
|15CCB1| db $43 ; Repeat word
|15CCB2| dw $60B0
|15CCB4| db $03 ; Raw block
|15CCB5| db $F7, $40, $7F, $15
|15CCB9| db $22 ; Repeat byte
|15CCBA| db $00
|15CCBB| db $04 ; Raw block
|15CCBC| db $60, $F0, $F0, $F7, $7F
|15CCC1| db $25 ; Repeat byte
|15CCC2| db $00
|15CCC3| db $01 ; Raw block
|15CCC4| db $06, $00
|15CCC6| db $43 ; Repeat word
|15CCC7| dw $060D
|15CCC9| db $03 ; Raw block
|15CCCA| db $EF, $02, $FE, $A8
|15CCCE| db $22 ; Repeat byte
|15CCCF| db $00
|15CCD0| db $04 ; Raw block
|15CCD1| db $06, $0F, $0F, $EF, $FE
|15CCD6| db $E4, $2F ; EXT Repeat byte
|15CCD8| db $00
|15CCD9| db $07 ; Raw block
|15CCDA| db $7C, $3F, $3F, $00, $05, $01, $03, $00
|15CCE2| db $43 ; Repeat word
|15CCE3| dw $0103
|15CCE5| db $00 ; Raw block
|15CCE6| db $01
|15CCE7| db $22 ; Repeat byte
|15CCE8| db $00
|15CCE9| db $02 ; Raw block
|15CCEA| db $7F, $3F, $06
|15CCED| db $22 ; Repeat byte
|15CCEE| db $03
|15CCEF| db $84 ; Copy past
|15CCF0| dw $02E6
|15CCF2| db $06 ; Raw block
|15CCF3| db $7C, $FF, $AA, $EF, $DA, $DD, $38
|15CCFA| db $8D ; Copy past
|15CCFB| dw $02F2
|15CCFD| db $E0, $53 ; EXT Raw block
|15CCFF| db $2F, $15, $2E, $1B, $1F, $01, $0F, $00
|15CD07| db $0E, $02, $0D, $04, $05, $00, $03, $00
|15CD0F| db $3D, $3F, $1B, $0B, $0D, $0B, $06, $03
|15CD17| db $F4, $A8, $74, $D8, $F8, $80, $F0, $00
|15CD1F| db $70, $40, $B0, $20, $A0, $00, $C0, $00
|15CD27| db $BC, $FC, $D8, $D0, $B0, $D0, $60, $C0
|15CD2F| db $1C, $07, $1F, $0F, $0F, $06, $0F, $01
|15CD37| db $1C, $0F, $37, $1C, $19, $0F, $0F, $00
|15CD3F| db $1F, $1F, $0F, $0F, $1F, $3F, $1F, $0F
|15CD47| db $78, $D0, $70, $80, $B8, $F0, $38, $F0
|15CD4F| db $70, $E0, $E0, $00
|15CD53| db $83 ; Copy past
|15CD54| dw $0234
|15CD56| db $04 ; Raw block
|15CD57| db $F8, $F0, $F8, $F8, $F0
|15CD5C| db $83 ; Copy past
|15CD5D| dw $023D
|15CD5F| db $E0, $23 ; EXT Raw block
|15CD61| db $0E, $7F, $1C, $7F, $1E, $4F, $07, $7E
|15CD69| db $0F, $3F, $03, $1B, $02, $0E, $00, $5F
|15CD71| db $7F, $4F, $7F, $77, $27, $1D, $0E, $F0
|15CD79| db $00, $F0, $E0, $8A, $F0, $6D, $F2, $F5
|15CD81| db $9A, $9F, $0E, $0E
|15CD85| db $22 ; Repeat byte
|15CD86| db $00
|15CD87| db $E0, $72 ; EXT Raw block
|15CD89| db $F0, $F0, $FA, $FF, $FF, $9F, $0E, $00
|15CD91| db $3F, $07, $1F, $0E, $3F, $0E, $27, $03
|15CD99| db $3E, $07, $1F, $01, $0D, $01, $07, $00
|15CDA1| db $2F, $1F, $27, $3F, $3B, $13, $0E, $07
|15CDA9| db $B8, $00, $7C, $38, $6E, $3C, $DE, $74
|15CDB1| db $9F, $F2, $35, $E2, $E2, $C0, $C0, $00
|15CDB9| db $B8, $7C, $7E, $FE, $FF, $F7, $E2, $C0
|15CDC1| db $FF, $1F, $77, $35, $3A, $10, $3B, $1A
|15CDC9| db $1F, $08, $1F, $01, $1F, $00, $08, $00
|15CDD1| db $A0, $4A, $2F, $24, $10, $10, $17, $08
|15CDD9| db $1F, $18, $E6, $A4, $54, $00, $9C, $18
|15CDE1| db $F8, $10, $F8, $80, $F8, $00, $10, $00
|15CDE9| db $E5, $5A, $FC, $64, $08, $08, $E8, $10
|15CDF1| db $6E, $3D, $6E, $3B, $3E, $17, $38, $0F
|15CDF9| db $0F, $07, $07
|15CDFC| db $24 ; Repeat byte
|15CDFD| db $00
|15CDFE| db $10 ; Raw block
|15CDFF| db $7F, $7F, $3F, $38, $0F, $07, $00, $00
|15CE07| db $76, $BC, $76, $DC, $3C, $E8, $F8, $E0
|15CE0F| db $E0
|15CE10| db $26 ; Repeat byte
|15CE11| db $00
|15CE12| db $04 ; Raw block
|15CE13| db $FE, $FE, $3C, $F8, $E0
|15CE18| db $22 ; Repeat byte
|15CE19| db $00
|15CE1A| db $FF ; End of GFX 8F

;===================================================================================================

GFX_90:
|15CE1B| db $01 ; Raw block
|15CE1C| db $02, $00
|15CE1E| db $43 ; Repeat word
|15CE1F| dw $0205
|15CE21| db $0C ; Raw block
|15CE22| db $0D, $06, $0C, $07, $0E, $03, $12, $01
|15CE2A| db $1F, $01, $02, $07, $07
|15CE2F| db $22 ; Repeat byte
|15CE30| db $0F
|15CE31| db $01 ; Raw block
|15CE32| db $1F, $13
|15CE34| db $23 ; Repeat byte
|15CE35| db $00
|15CE36| db $13 ; Raw block
|15CE37| db $07, $00, $0F, $07, $9C, $0F, $F9, $0E
|15CE3F| db $3B, $EC, $7B, $EC, $00, $00, $07, $0F
|15CE47| db $9F, $FE, $FC, $FC
|15CE4B| db $23 ; Repeat byte
|15CE4C| db $00
|15CE4D| db $15 ; Raw block
|15CE4E| db $E0, $00, $F0, $E0, $39, $F0, $9F, $70
|15CE56| db $DC, $37, $DE, $37, $00, $00, $E0, $F0
|15CE5E| db $F9, $7F, $3F, $3F, $40, $00
|15CE64| db $43 ; Repeat word
|15CE65| dw $40A0
|15CE67| db $02 ; Raw block
|15CE68| db $B0, $60, $30
|15CE6B| db $44 ; Repeat word
|15CE6C| dw $70E0
|15CE6E| db $04 ; Raw block
|15CE6F| db $F0, $C0, $40, $E0, $E0
|15CE74| db $24 ; Repeat byte
|15CE75| db $F0
|15CE76| db $02 ; Raw block
|15CE77| db $00, $00, $20
|15CE7A| db $22 ; Repeat byte
|15CE7B| db $60
|15CE7C| db $0E ; Raw block
|15CE7D| db $00, $11, $90, $B3, $D8, $FF, $A1, $FF
|15CE85| db $81, $FF, $00, $60, $60, $11, $B3
|15CE8C| db $22 ; Repeat byte
|15CE8D| db $FF
|15CE8E| db $83 ; Copy past
|15CE8F| dw $0060
|15CE91| db $E0, $37 ; EXT Raw block
|15CE93| db $20, $E0, $40, $C0, $C4, $CC, $8C, $8C
|15CE9B| db $00, $01, $01, $37, $00, $60, $E0, $C0
|15CEA3| db $CC, $8C, $01, $37, $00, $00, $60, $64
|15CEAB| db $44, $6D, $20, $3F, $29, $3F, $00, $30
|15CEB3| db $01, $63, $01, $07, $00, $64, $6D, $3F
|15CEBB| db $3F, $30, $63, $07, $10, $30, $10, $F0
|15CEC3| db $60, $E0, $80, $80, $0C, $0C, $08, $0C
|15CECB| db $83 ; Copy past
|15CECC| dw $0084
|15CECE| db $08 ; Raw block
|15CECF| db $30, $F0, $E0, $80, $0C, $0C, $01, $37
|15CED7| db $08
|15CED8| db $43 ; Repeat word
|15CED9| dw $000C
|15CEDB| db $02 ; Raw block
|15CEDC| db $1A, $00, $01
|15CEDF| db $24 ; Repeat byte
|15CEE0| db $00
|15CEE1| db $E0, $26 ; EXT Raw block
|15CEE3| db $03, $00, $05, $0C, $0C, $1A, $01, $00
|15CEEB| db $00, $03, $05, $00, $60, $02, $82, $40
|15CEF3| db $40, $88, $88, $0C, $0C, $40, $C0, $80
|15CEFB| db $9B, $49, $DB, $60, $82, $40, $88, $0C
|15CF03| db $C0, $9B, $DB, $1C, $00, $22, $1C
|15CF0A| db $43 ; Repeat word
|15CF0B| dw $324D
|15CF0D| db $0C ; Raw block
|15CF0E| db $41, $3E, $22, $1C, $3E, $00, $22, $00
|15CF16| db $1C, $3E, $73, $73, $7F
|15CF1B| db $22 ; Repeat byte
|15CF1C| db $3E
|15CF1D| db $03 ; Raw block
|15CF1E| db $1C, $00, $2E, $1C
|15CF22| db $43 ; Repeat word
|15CF23| dw $3E53
|15CF25| db $00 ; Raw block
|15CF26| db $4D
|15CF27| db $84 ; Copy past
|15CF28| dw $00F9
|15CF2A| db $11 ; Raw block
|15CF2B| db $3E, $1C, $1C, $2E, $5F, $5F, $4D, $22
|15CF33| db $3E, $22, $00, $00, $01, $00, $03, $00
|15CF3B| db $02, $01
|15CF3D| db $45 ; Repeat word
|15CF3E| dw $0314
|15CF40| db $01 ; Raw block
|15CF41| db $2E, $11
|15CF43| db $22 ; Repeat byte
|15CF44| db $00
|15CF45| db $04 ; Raw block
|15CF46| db $01, $03, $03, $07, $17
|15CF4B| db $23 ; Repeat byte
|15CF4C| db $00
|15CF4D| db $43 ; Repeat word
|15CF4E| dw $0080
|15CF50| db $45 ; Repeat word
|15CF51| dw $8050
|15CF53| db $01 ; Raw block
|15CF54| db $E8, $10
|15CF56| db $23 ; Repeat byte
|15CF57| db $00
|15CF58| db $03 ; Raw block
|15CF59| db $80, $80, $C0, $D0
|15CF5D| db $E4, $2F ; EXT Repeat byte
|15CF5F| db $00
|15CF60| db $E0, $5F ; EXT Raw block
|15CF62| db $1F, $01, $3F, $00, $5F, $00, $BF, $20
|15CF6A| db $AD, $00, $ED, $40, $ED, $00, $6D, $00
|15CF72| db $13, $33, $73, $D3, $F3, $B3, $F3, $73
|15CF7A| db $F9, $EE, $FC, $DF, $FF, $3E, $DF, $7E
|15CF82| db $DE, $F6, $D7, $F3, $8B, $7B, $CE, $3F
|15CF8A| db $FE, $FF, $FE, $FE, $F7, $FB, $FF, $FF
|15CF92| db $9F, $77, $3F, $FB, $FF, $7C, $FB, $7E
|15CF9A| db $7B, $6F, $EB, $CF, $DF, $C0, $70, $C0
|15CFA2| db $7F, $FF, $7F, $7F, $EF, $DF, $FF, $FF
|15CFAA| db $F0, $C0, $FC, $00, $F2, $30, $AD, $60
|15CFB2| db $A5, $60, $CF, $3E, $FB, $04, $06, $00
|15CFBA| db $F0, $FC, $CE, $93, $9B, $C1, $FB, $FE
|15CFC2| db $43 ; Repeat word
|15CFC3| dw $CF43
|15CFC5| db $E0, $4F ; EXT Raw block
|15CFC7| db $20, $2F, $48, $FF, $3E, $FF, $0D, $3F
|15CFCF| db $0B, $7F, $05, $9D, $CF, $CF, $2F, $FF
|15CFD7| db $FF, $3F, $7F, $9D, $92, $FE, $24, $FC
|15CFDF| db $74, $FE, $42, $FE, $8C, $FC, $98, $F8
|15CFE7| db $80, $AC, $3C, $7F, $FE, $FC, $FE, $FE
|15CFEF| db $FC, $F8, $AC, $7F, $08, $0B, $10, $3F
|15CFF7| db $03, $3F, $01, $0F, $03, $1F, $00, $27
|15CFFF| db $01, $01, $00, $00, $0B, $3F, $3F, $0F
|15D007| db $1F, $27, $01, $00, $92, $FE, $34, $FC
|15D00F| db $34, $FE, $A2, $FE, $C2, $CE, $84, $9C
|15D017| db $23 ; Repeat byte
|15D018| db $00
|15D019| db $83 ; Copy past
|15D01A| dw $0208
|15D01C| db $0D ; Raw block
|15D01D| db $CE, $9C, $00, $00, $08, $1A, $01, $19
|15D025| db $00, $01, $00, $0C, $00, $11
|15D02B| db $25 ; Repeat byte
|15D02C| db $00
|15D02D| db $04 ; Raw block
|15D02E| db $1A, $19, $01, $0C, $11
|15D033| db $22 ; Repeat byte
|15D034| db $00
|15D035| db $0B ; Raw block
|15D036| db $92, $92, $0A, $0B, $01, $07, $61, $E7
|15D03E| db $42, $CE, $80, $80
|15D042| db $23 ; Repeat byte
|15D043| db $00
|15D044| db $06 ; Raw block
|15D045| db $92, $0B, $07, $E7, $CE, $80, $00
|15D04C| db $44 ; Repeat word
|15D04D| dw $1400
|15D04F| db $13 ; Raw block
|15D050| db $3E, $08, $5D, $08, $7F, $00, $49, $00
|15D058| db $7F, $1C, $3E, $00, $1C, $1C, $36, $77
|15D060| db $5D, $7F, $63, $3E
|15D064| db $43 ; Repeat word
|15D065| dw $081C
|15D067| db $8B ; Copy past
|15D068| dw $0274
|15D06A| db $01 ; Raw block
|15D06B| db $14, $14
|15D06D| db $85 ; Copy past
|15D06E| dw $0282
|15D070| db $05 ; Raw block
|15D071| db $42, $3D, $48, $37, $54, $23
|15D077| db $43 ; Repeat word
|15D078| dw $0122
|15D07A| db $02 ; Raw block
|15D07B| db $01, $00, $01
|15D07E| db $22 ; Repeat byte
|15D07F| db $00
|15D080| db $04 ; Raw block
|15D081| db $3F, $37, $23, $01, $01
|15D086| db $22 ; Repeat byte
|15D087| db $00
|15D088| db $08 ; Raw block
|15D089| db $84, $78, $24, $D8, $54, $88, $88, $00
|15D091| db $88
|15D092| db $26 ; Repeat byte
|15D093| db $00
|15D094| db $02 ; Raw block
|15D095| db $F8, $D8, $88
|15D098| db $E4, $34 ; EXT Repeat byte
|15D09A| db $00
|15D09B| db $43 ; Repeat word
|15D09C| dw $006D
|15D09E| db $00 ; Raw block
|15D09F| db $ED
|15D0A0| db $43 ; Repeat word
|15D0A1| dw $FF40
|15D0A3| db $05 ; Raw block
|15D0A4| db $73, $FF, $1E, $BF, $61, $DE
|15D0AA| db $22 ; Repeat byte
|15D0AB| db $73
|15D0AC| db $1A ; Raw block
|15D0AD| db $B3, $B3, $8C, $E1, $FF, $FF, $F9, $1E
|15D0B5| db $FB, $0C, $FF, $94, $FF, $98, $F7, $9F
|15D0BD| db $F3, $5F, $38, $CF, $FD, $C6, $FF, $FF
|15D0C5| db $7D, $7F, $7F
|15D0C8| db $22 ; Repeat byte
|15D0C9| db $FF
|15D0CA| db $E0, $2F ; EXT Raw block
|15D0CC| db $B7, $47, $EF, $08, $DF, $90, $FF, $B4
|15D0D4| db $FB, $B0, $FB, $B3, $FF, $34, $FE, $30
|15D0DC| db $E8, $D7, $EF, $CB, $CF, $CC, $CB, $CF
|15D0E4| db $FA, $F8, $FD, $8C, $FF, $86, $FF, $96
|15D0EC| db $EF, $86, $6F, $66, $FF, $96, $3F, $06
|15D0F4| db $06, $73, $79, $69, $79, $99, $69, $F9
|15D0FC| db $23 ; Repeat byte
|15D0FD| db $00
|15D0FE| db $02 ; Raw block
|15D0FF| db $01, $00, $07
|15D102| db $44 ; Repeat word
|15D103| dw $0F00
|15D105| db $02 ; Raw block
|15D106| db $1F, $00, $1F
|15D109| db $22 ; Repeat byte
|15D10A| db $00
|15D10B| db $08 ; Raw block
|15D10C| db $01, $07, $0F, $0F, $1F, $1F, $00, $00
|15D114| db $3F
|15D115| db $4C ; Repeat word
|15D116| dw $FF00
|15D118| db $01 ; Raw block
|15D119| db $00, $3F
|15D11B| db $25 ; Repeat byte
|15D11C| db $FF
|15D11D| db $24 ; Repeat byte
|15D11E| db $00
|15D11F| db $12 ; Raw block
|15D120| db $10, $00, $28, $00, $00, $04, $10, $18
|15D128| db $64, $F4, $0B, $00, $00, $10, $28, $00
|15D130| db $10, $64, $0B
|15D133| db $24 ; Repeat byte
|15D134| db $00
|15D135| db $13 ; Raw block
|15D136| db $40, $00, $20, $00, $0C, $0C, $50, $50
|15D13E| db $A3, $A3, $4C, $00, $00, $40, $20, $0C
|15D146| db $50, $A3, $4C, $01
|15D14A| db $83 ; Copy past
|15D14B| dw $0120
|15D14D| db $12 ; Raw block
|15D14E| db $83, $01, $83, $03, $C7, $42, $F7, $64
|15D156| db $FB, $7E, $F9, $00, $01, $83, $83, $C7
|15D15E| db $F6, $F8, $F8
|15D161| db $24 ; Repeat byte
|15D162| db $00
|15D163| db $E0, $44 ; EXT Raw block
|15D165| db $82, $00, $82, $80, $C6, $84, $DE, $5C
|15D16D| db $BE, $FC, $3E, $00, $00, $82, $82, $C6
|15D175| db $DE, $3E, $3E, $38, $00, $44, $00, $7A
|15D17D| db $00, $A5, $00, $96, $02, $9F, $01, $DF
|15D185| db $4C, $EE, $6E, $38, $7C, $7E, $E7, $F5
|15D18D| db $FA, $B1, $91, $1C, $00, $22, $00, $5E
|15D195| db $00, $A5, $00, $69, $40, $F9, $80, $FB
|15D19D| db $32, $77, $76, $1C, $3E, $7E, $E7, $AF
|15D1A5| db $5F, $8D, $89, $00, $00
|15D1AA| db $83 ; Copy past
|15D1AB| dw $03F0
|15D1AD| db $13 ; Raw block
|15D1AE| db $3A, $00, $05, $00, $17, $01, $3F, $11
|15D1B6| db $6F, $28, $00, $38, $7C, $3E, $07, $16
|15D1BE| db $2A, $55, $00, $00
|15D1C2| db $83 ; Copy past
|15D1C3| dw $0408
|15D1C5| db $11 ; Raw block
|15D1C6| db $5C, $00, $A0, $00, $E8, $80, $FC, $88
|15D1CE| db $F6, $14, $00, $1C, $3E, $7C, $E0, $68
|15D1D6| db $54, $AA
|15D1D8| db $E4, $2F ; EXT Repeat byte
|15D1DA| db $00
|15D1DB| db $0F ; Raw block
|15D1DC| db $ED, $33, $FF, $12, $FF, $40, $CF, $78
|15D1E4| db $FF, $03, $38, $07, $07, $03, $03, $00
|15D1EC| db $24 ; Repeat byte
|15D1ED| db $FF
|15D1EE| db $12 ; Raw block
|15D1EF| db $3F, $07, $03, $FF, $00, $FF, $27, $DC
|15D1F7| db $37, $FC, $37, $CE, $FB, $0F, $F9, $FF
|15D1FF| db $F0, $F9, $00
|15D202| db $26 ; Repeat byte
|15D203| db $FF
|15D204| db $E0, $30 ; EXT Raw block
|15D206| db $F9, $FF, $31, $FB, $B0, $7F, $B6, $7F
|15D20E| db $9A, $7F, $CC, $7F, $E7, $FF, $E6, $FF
|15D216| db $00, $CE, $CF, $C9, $E5, $F3, $F8, $F9
|15D21E| db $FF, $7F, $46, $EF, $86, $FF, $B6, $FF
|15D226| db $AC, $FE, $98, $FC, $F0, $D8, $10, $F8
|15D22E| db $00, $B9, $79, $49, $53, $66, $0C, $E8
|15D236| db $F8
|15D237| db $43 ; Repeat word
|15D238| dw $001F
|15D23A| db $43 ; Repeat word
|15D23B| dw $000F
|15D23D| db $02 ; Raw block
|15D23E| db $07, $00, $01
|15D241| db $24 ; Repeat byte
|15D242| db $00
|15D243| db $06 ; Raw block
|15D244| db $1F, $1F, $0F, $0F, $07, $01, $00
|15D24B| db $4C ; Repeat word
|15D24C| dw $FF00
|15D24E| db $00 ; Raw block
|15D24F| db $3F
|15D250| db $22 ; Repeat byte
|15D251| db $00
|15D252| db $25 ; Repeat byte
|15D253| db $FF
|15D254| db $07 ; Raw block
|15D255| db $3F, $00, $13, $E4, $27, $10, $00, $27
|15D25D| db $22 ; Repeat byte
|15D25E| db $00
|15D25F| db $02 ; Raw block
|15D260| db $04, $00, $02
|15D263| db $23 ; Repeat byte
|15D264| db $00
|15D265| db $13 ; Raw block
|15D266| db $E4, $10, $27, $00, $04, $02, $00, $00
|15D26E| db $AE, $11, $32, $8C, $80, $32, $00, $80
|15D276| db $00, $30, $00, $02
|15D27A| db $23 ; Repeat byte
|15D27B| db $00
|15D27C| db $0F ; Raw block
|15D27D| db $11, $8C, $32, $80, $30, $02, $00, $00
|15D285| db $3A, $FD, $14, $BF, $02, $97, $02, $17
|15D28D| db $43 ; Repeat word
|15D28E| dw $0301
|15D290| db $13 ; Raw block
|15D291| db $00, $01, $01, $00, $F8, $BC, $96, $16
|15D299| db $03, $03, $01, $00, $B8, $7E, $50, $FA
|15D2A1| db $80, $D2, $80, $D0
|15D2A5| db $43 ; Repeat word
|15D2A6| dw $8000
|15D2A8| db $23 ; Repeat byte
|15D2A9| db $00
|15D2AA| db $03 ; Raw block
|15D2AB| db $3E, $7A, $D2, $D0
|15D2AF| db $83 ; Copy past
|15D2B0| dw $0262
|15D2B2| db $E0, $5F ; EXT Raw block
|15D2B4| db $FF, $78, $FF, $6D, $FB, $4B, $7C, $00
|15D2BC| db $3F, $18, $3E, $0C, $7C, $00, $20, $00
|15D2C4| db $85, $91, $B4, $7F, $27, $22, $5C, $20
|15D2CC| db $FF, $1E, $FF, $B6, $DF, $D2, $3E, $00
|15D2D4| db $FC, $18, $7C, $30, $3E, $00, $04, $00
|15D2DC| db $A1, $89, $2D, $FE, $E4, $44, $3A, $04
|15D2E4| db $46, $02, $67, $20, $77, $31, $3F, $1B
|15D2EC| db $3C, $08, $1F, $08, $3E, $08, $7C, $00
|15D2F4| db $7D, $5D, $4D, $24, $37, $17, $36, $5C
|15D2FC| db $62, $40, $E6, $04, $EE, $8C, $FC, $D8
|15D304| db $3C, $10, $F8, $10, $7C, $10, $3E, $00
|15D30C| db $BE, $BA, $B2, $24, $EC, $E8, $6C, $3A
|15D314| db $38 ; Repeat byte
|15D315| db $00
|15D316| db $16 ; Raw block
|15D317| db $04, $00, $18, $00, $30, $00, $78, $00
|15D31F| db $1E, $00, $0C, $00, $18, $00, $20, $04
|15D327| db $18, $30, $78, $1E, $0C, $18, $20
|15D32E| db $FF ; End of GFX 90

;===================================================================================================

GFX_91:
|15D32F| db $09 ; Raw block
|15D330| db $01, $00, $07, $01, $0F, $07, $1E, $0F
|15D338| db $1C, $0F
|15D33A| db $43 ; Repeat word
|15D33B| dw $1F3C
|15D33D| db $E0, $21 ; EXT Raw block
|15D33F| db $7E, $0F, $01, $07, $0F, $1F, $1F, $3F
|15D347| db $3F, $5F, $80, $00, $E0, $80, $F0, $E0
|15D34F| db $18, $F0, $48, $B0, $EC, $18, $4C, $B8
|15D357| db $1E, $F0, $80, $E0, $F0, $F8, $B8, $1C
|15D35F| db $BC, $FA
|15D361| db $27 ; Repeat byte
|15D362| db $00
|15D363| db $06 ; Raw block
|15D364| db $E0, $00, $F8, $00, $9C, $00, $BE
|15D36B| db $24 ; Repeat byte
|15D36C| db $00
|15D36D| db $03 ; Raw block
|15D36E| db $E0, $D8, $7C, $E6
|15D372| db $27 ; Repeat byte
|15D373| db $00
|15D374| db $06 ; Raw block
|15D375| db $07, $00, $1F, $00, $39, $00, $7D
|15D37C| db $24 ; Repeat byte
|15D37D| db $00
|15D37E| db $03 ; Raw block
|15D37F| db $07, $1B, $3E, $67
|15D383| db $25 ; Repeat byte
|15D384| db $00
|15D385| db $08 ; Raw block
|15D386| db $20, $00, $58, $00, $D8, $00, $F6, $00
|15D38E| db $B3
|15D38F| db $23 ; Repeat byte
|15D390| db $00
|15D391| db $04 ; Raw block
|15D392| db $20, $78, $B8, $BE, $EF
|15D397| db $25 ; Repeat byte
|15D398| db $00
|15D399| db $08 ; Raw block
|15D39A| db $04, $00, $1A, $00, $1B, $00, $6F, $00
|15D3A2| db $CD
|15D3A3| db $23 ; Repeat byte
|15D3A4| db $00
|15D3A5| db $08 ; Raw block
|15D3A6| db $04, $1E, $1D, $7D, $F7, $03, $00, $0F
|15D3AE| db $03
|15D3AF| db $45 ; Repeat word
|15D3B0| dw $0F1E
|15D3B2| db $07 ; Raw block
|15D3B3| db $DF, $0F, $FF, $07, $FF, $00, $03, $0F
|15D3BB| db $22 ; Repeat byte
|15D3BC| db $1F
|15D3BD| db $1A ; Raw block
|15D3BE| db $DF, $3F, $A7, $C0, $00, $30, $C0, $78
|15D3C6| db $90, $38, $D0, $18, $F0, $3B, $F0, $FF
|15D3CE| db $E0, $FF, $00, $C0, $F0, $98, $D8, $F8
|15D3D6| db $FB, $FC, $E5
|15D3D9| db $23 ; Repeat byte
|15D3DA| db $00
|15D3DB| db $03 ; Raw block
|15D3DC| db $03, $00, $07, $03
|15D3E0| db $43 ; Repeat word
|15D3E1| dw $070E
|15D3E3| db $02 ; Raw block
|15D3E4| db $3F, $07, $7F
|15D3E7| db $22 ; Repeat byte
|15D3E8| db $00
|15D3E9| db $05 ; Raw block
|15D3EA| db $03, $07, $0F, $0F, $3F, $4F
|15D3F0| db $23 ; Repeat byte
|15D3F1| db $00
|15D3F2| db $0A ; Raw block
|15D3F3| db $C0, $00, $20, $C0, $50, $A0, $10, $E0
|15D3FB| db $3C, $E0, $FE
|15D3FE| db $22 ; Repeat byte
|15D3FF| db $00
|15D400| db $05 ; Raw block
|15D401| db $C0, $E0, $B0, $F0, $FC, $F2
|15D407| db $25 ; Repeat byte
|15D408| db $00
|15D409| db $08 ; Raw block
|15D40A| db $01, $00, $03, $01, $06, $03, $0F, $03
|15D412| db $1F
|15D413| db $23 ; Repeat byte
|15D414| db $00
|15D415| db $04 ; Raw block
|15D416| db $01, $03, $07, $0F, $17
|15D41B| db $25 ; Repeat byte
|15D41C| db $00
|15D41D| db $08 ; Raw block
|15D41E| db $80, $00, $40, $80, $20, $C0, $70, $C0
|15D426| db $F8
|15D427| db $23 ; Repeat byte
|15D428| db $00
|15D429| db $11 ; Raw block
|15D42A| db $80, $C0, $E0, $F0, $E8, $00, $00, $18
|15D432| db $00, $34, $18, $76, $18, $BD, $00, $5A
|15D43A| db $00, $3C
|15D43C| db $23 ; Repeat byte
|15D43D| db $00
|15D43E| db $05 ; Raw block
|15D43F| db $18, $3C, $7E, $E7, $7E, $3C
|15D445| db $22 ; Repeat byte
|15D446| db $00
|15D447| db $02 ; Raw block
|15D448| db $18, $00, $3C
|15D44B| db $44 ; Repeat word
|15D44C| dw $7E00
|15D44E| db $02 ; Raw block
|15D44F| db $3C, $00, $18
|15D452| db $23 ; Repeat byte
|15D453| db $00
|15D454| db $05 ; Raw block
|15D455| db $18, $24, $5A, $5A, $24, $18
|15D45B| db $26 ; Repeat byte
|15D45C| db $00
|15D45D| db $09 ; Raw block
|15D45E| db $01, $00, $0F, $01, $17, $03, $17, $00
|15D466| db $1F, $07
|15D468| db $22 ; Repeat byte
|15D469| db $00
|15D46A| db $04 ; Raw block
|15D46B| db $01, $0F, $1F, $1F, $18
|15D470| db $27 ; Repeat byte
|15D471| db $00
|15D472| db $07 ; Raw block
|15D473| db $C0, $00, $E0, $C0, $B0, $E0, $F0, $60
|15D47B| db $23 ; Repeat byte
|15D47C| db $00
|15D47D| db $E0, $3A ; EXT Raw block
|15D47F| db $C0, $E0, $F0, $F0, $FF, $0F, $FF, $07
|15D487| db $7F, $03, $3F, $00, $1F, $00, $13, $08
|15D48F| db $09, $04, $06, $00, $BF, $BF, $47, $2B
|15D497| db $1C, $17, $0B, $06, $3F, $F0, $7F, $E0
|15D49F| db $FE, $C0, $FC, $00, $F8, $00, $C8, $10
|15D4A7| db $90, $20, $60, $00, $FD, $FD, $E2, $D4
|15D4AF| db $38, $E8, $D0, $60, $FB, $00, $F3, $00
|15D4B7| db $C6, $00, $49
|15D4BA| db $84 ; Copy past
|15D4BB| dw $013F
|15D4BD| db $00 ; Raw block
|15D4BE| db $0F
|15D4BF| db $22 ; Repeat byte
|15D4C0| db $00
|15D4C1| db $14 ; Raw block
|15D4C2| db $E7, $4F, $BF, $7F, $7F, $3F, $0F, $00
|15D4CA| db $DF, $00, $CF, $00, $E3, $00, $D2, $00
|15D4D2| db $FE, $00, $7C, $00, $F0
|15D4D7| db $22 ; Repeat byte
|15D4D8| db $00
|15D4D9| db $14 ; Raw block
|15D4DA| db $E7, $F2, $7D, $BE, $7E, $BC, $F0, $00
|15D4E2| db $F7, $00, $E6, $00, $ED, $00, $9C, $00
|15D4EA| db $7E, $00, $3E, $00, $0F
|15D4EF| db $22 ; Repeat byte
|15D4F0| db $00
|15D4F1| db $03 ; Raw block
|15D4F2| db $CF, $DF, $DE, $FF
|15D4F6| db $83 ; Copy past
|15D4F7| dw $01C4
|15D4F9| db $06 ; Raw block
|15D4FA| db $EF, $00, $E7, $00, $F7, $00, $B9
|15D501| db $85 ; Copy past
|15D502| dw $01CF
|15D504| db $22 ; Repeat byte
|15D505| db $00
|15D506| db $E0, $44 ; EXT Raw block
|15D508| db $F3, $7B, $3B, $7F, $7E, $FC, $F0, $00
|15D510| db $BF, $00, $9F, $00, $D9, $04, $F9, $06
|15D518| db $F6, $00, $65, $00, $23, $00, $1C, $00
|15D520| db $D0, $EF, $FB, $39, $EF, $5E, $3F, $1C
|15D528| db $FD, $00, $F9, $00, $9B, $20, $9F, $60
|15D530| db $EF, $00, $E6, $00, $C4, $00, $B8, $00
|15D538| db $0B, $F7, $DF, $9C, $77, $3A, $7C, $B8
|15D540| db $2F, $00, $27, $00, $35, $02, $6F, $00
|15D548| db $3A, $00, $13, $00, $0D
|15D54D| db $22 ; Repeat byte
|15D54E| db $00
|15D54F| db $14 ; Raw block
|15D550| db $38, $3F, $3D, $5F, $37, $1E, $0D, $00
|15D558| db $F4, $00, $E4, $00, $AC, $40, $F6, $00
|15D560| db $5C, $00, $C8, $00, $B0
|15D565| db $22 ; Repeat byte
|15D566| db $00
|15D567| db $12 ; Raw block
|15D568| db $1C, $FC, $BC, $FA, $EC, $78, $B0, $00
|15D570| db $17, $00, $0B, $00, $16, $01, $0A, $00
|15D578| db $0B, $00, $04
|15D57B| db $24 ; Repeat byte
|15D57C| db $00
|15D57D| db $12 ; Raw block
|15D57E| db $1C, $0F, $1E, $0F, $0F, $04, $00, $00
|15D586| db $E8, $00, $D0, $00, $68, $80, $50, $00
|15D58E| db $D0, $00, $20
|15D591| db $24 ; Repeat byte
|15D592| db $00
|15D593| db $1F ; Raw block
|15D594| db $38, $F0, $78, $F0, $F0, $20, $00, $00
|15D59C| db $2C, $00, $7E, $2C, $7F, $06, $BF, $1A
|15D5A4| db $7E, $18, $1F, $02, $16, $00, $08, $00
|15D5AC| db $2C, $5E, $7F, $E7, $66, $1D, $1E, $08
|15D5B4| db $84 ; Copy past
|15D5B5| dw $0138
|15D5B7| db $00 ; Raw block
|15D5B8| db $18
|15D5B9| db $43 ; Repeat word
|15D5BA| dw $2466
|15D5BC| db $02 ; Raw block
|15D5BD| db $3C, $18, $18
|15D5C0| db $23 ; Repeat byte
|15D5C1| db $00
|15D5C2| db $86 ; Copy past
|15D5C3| dw $0149
|15D5C5| db $43 ; Repeat word
|15D5C6| dw $042C
|15D5C8| db $06 ; Raw block
|15D5C9| db $1F, $07, $07, $00, $04, $00, $03
|15D5D0| db $24 ; Repeat byte
|15D5D1| db $00
|15D5D2| db $10 ; Raw block
|15D5D3| db $3B, $3B, $18, $07, $07, $03, $00, $00
|15D5DB| db $F8, $B0, $F0, $A0, $F0, $80, $90, $00
|15D5E3| db $E0
|15D5E4| db $26 ; Repeat byte
|15D5E5| db $00
|15D5E6| db $04 ; Raw block
|15D5E7| db $78, $70, $70, $F0, $E0
|15D5EC| db $22 ; Repeat byte
|15D5ED| db $00
|15D5EE| db $01 ; Raw block
|15D5EF| db $02, $00
|15D5F1| db $83 ; Copy past
|15D5F2| dw $0090
|15D5F4| db $E0, $29 ; EXT Raw block
|15D5F6| db $1F, $07, $3C, $04, $3C, $1C, $F1, $30
|15D5FE| db $73, $30, $00, $03, $0C, $18, $3B, $23
|15D606| db $4E, $4C, $40, $00, $C0, $00, $F0, $C0
|15D60E| db $F8, $E0, $3C, $20, $3C, $38, $8F, $0C
|15D616| db $CE, $0C, $00, $C0, $30, $18, $DC, $C4
|15D61E| db $72, $32
|15D620| db $23 ; Repeat byte
|15D621| db $00
|15D622| db $83 ; Copy past
|15D623| dw $0300
|15D625| db $07 ; Raw block
|15D626| db $07, $03, $0E, $06, $3D, $0C, $1B, $09
|15D62E| db $22 ; Repeat byte
|15D62F| db $00
|15D630| db $04 ; Raw block
|15D631| db $03, $04, $09, $12, $15
|15D636| db $23 ; Repeat byte
|15D637| db $00
|15D638| db $83 ; Copy past
|15D639| dw $0318
|15D63B| db $07 ; Raw block
|15D63C| db $E0, $C0, $70, $60, $BC, $30, $D8, $90
|15D644| db $22 ; Repeat byte
|15D645| db $00
|15D646| db $04 ; Raw block
|15D647| db $C0, $20, $90, $48, $A8
|15D64C| db $83 ; Copy past
|15D64D| dw $0000
|15D64F| db $E0, $2B ; EXT Raw block
|15D651| db $3C, $04, $7B, $2B, $BF, $1C, $FC, $53
|15D659| db $59, $26, $E3, $3C, $01, $06, $3B, $54
|15D661| db $E3, $AF, $7E, $FC, $80, $00, $EC, $80
|15D669| db $3A, $28, $DD, $CC, $FF, $36, $3F, $CA
|15D671| db $9B, $64, $C7, $3C, $80, $6C, $D6, $33
|15D679| db $C9, $F5, $7F, $3F
|15D67D| db $23 ; Repeat byte
|15D67E| db $00
|15D67F| db $0C ; Raw block
|15D680| db $03, $00, $0E, $03, $11, $0F, $29, $17
|15D688| db $5D, $23, $4B, $37, $00
|15D68D| db $83 ; Copy past
|15D68E| dw $009F
|15D690| db $02 ; Raw block
|15D691| db $37, $63, $77
|15D694| db $25 ; Repeat byte
|15D695| db $00
|15D696| db $09 ; Raw block
|15D697| db $80, $00, $F0, $80, $FC, $B0, $CE, $4C
|15D69F| db $C6, $44
|15D6A1| db $22 ; Repeat byte
|15D6A2| db $00
|15D6A3| db $04 ; Raw block
|15D6A4| db $80, $F0, $CC, $B2, $BA
|15D6A9| db $25 ; Repeat byte
|15D6AA| db $00
|15D6AB| db $89 ; Copy past
|15D6AC| dw $0394
|15D6AE| db $22 ; Repeat byte
|15D6AF| db $00
|15D6B0| db $84 ; Copy past
|15D6B1| dw $03A2
|15D6B3| db $27 ; Repeat byte
|15D6B4| db $00
|15D6B5| db $87 ; Copy past
|15D6B6| dw $03AE
|15D6B8| db $23 ; Repeat byte
|15D6B9| db $00
|15D6BA| db $83 ; Copy past
|15D6BB| dw $03BB
|15D6BD| db $83 ; Copy past
|15D6BE| dw $00C2
|15D6C0| db $13 ; Raw block
|15D6C1| db $0F, $03, $3C, $0F, $59, $0E, $5C, $07
|15D6C9| db $53, $0C, $DF, $03, $00, $03, $0F, $3F
|15D6D1| db $7E, $7F, $7F, $BC
|15D6D5| db $83 ; Copy past
|15D6D6| dw $00DA
|15D6D8| db $E0, $25 ; EXT Raw block
|15D6DA| db $F0, $C0, $38, $F0, $9C, $78, $3C, $E8
|15D6E2| db $CA, $30, $F6, $C0, $00, $C0, $F0, $F8
|15D6EA| db $7C, $FC, $FE, $3E, $00, $00, $1F, $00
|15D6F2| db $27, $03, $2F, $07, $27, $00, $67, $03
|15D6FA| db $9C, $04, $9A, $08, $00, $1F
|15D700| db $22 ; Repeat byte
|15D701| db $3F
|15D702| db $1A ; Raw block
|15D703| db $7C, $FB, $F5, $E0, $00, $F8, $C0, $3C
|15D70B| db $E8, $C6, $FC, $E6, $38, $F7, $1C, $FB
|15D713| db $8E, $7B, $4E, $E0, $F8, $FC, $FE, $FE
|15D71B| db $FF, $7F, $BF
|15D71E| db $23 ; Repeat byte
|15D71F| db $00
|15D720| db $87 ; Copy past
|15D721| dw $0156
|15D723| db $03 ; Raw block
|15D724| db $37, $03, $4E, $04
|15D728| db $85 ; Copy past
|15D729| dw $0161
|15D72B| db $01 ; Raw block
|15D72C| db $3C, $79
|15D72E| db $23 ; Repeat byte
|15D72F| db $00
|15D730| db $83 ; Copy past
|15D731| dw $031A
|15D733| db $08 ; Raw block
|15D734| db $B8, $F0, $D8, $70, $EC, $38, $FC, $98
|15D73C| db $00
|15D73D| db $83 ; Copy past
|15D73E| dw $0418
|15D740| db $E0, $39 ; EXT Raw block
|15D742| db $F8, $FC, $7C, $73, $30, $F1, $30, $3C
|15D74A| db $1C, $3C, $04, $1F, $07, $0F, $03, $03
|15D752| db $00, $02, $00, $4C, $4E, $23, $3B, $18
|15D75A| db $0C, $03, $00, $CE, $0C, $8F, $0C, $3C
|15D762| db $38, $3C, $20, $F8, $E0, $F0, $C0, $C0
|15D76A| db $00, $40, $00, $32, $72, $C4, $DC, $18
|15D772| db $30, $C0, $00, $1B, $09, $3D, $0C, $0E
|15D77A| db $06, $07
|15D77C| db $83 ; Copy past
|15D77D| dw $048B
|15D77F| db $24 ; Repeat byte
|15D780| db $00
|15D781| db $04 ; Raw block
|15D782| db $15, $12, $09, $04, $03
|15D787| db $22 ; Repeat byte
|15D788| db $00
|15D789| db $06 ; Raw block
|15D78A| db $D8, $90, $BC, $30, $70, $60, $E0
|15D791| db $83 ; Copy past
|15D792| dw $04A3
|15D794| db $24 ; Repeat byte
|15D795| db $00
|15D796| db $04 ; Raw block
|15D797| db $A8, $48, $90, $20, $C0
|15D79C| db $22 ; Repeat byte
|15D79D| db $00
|15D79E| db $0C ; Raw block
|15D79F| db $E1, $3E, $78, $3F, $7E, $1F, $F7, $19
|15D7A7| db $7B, $0D, $0C, $03, $03
|15D7AC| db $22 ; Repeat byte
|15D7AD| db $00
|15D7AE| db $14 ; Raw block
|15D7AF| db $FE, $7F, $7F, $BF, $7F, $0F, $03, $00
|15D7B7| db $86, $7C, $1F, $FC, $7D, $F8, $EF, $9A
|15D7BF| db $DE, $B4, $3B, $C8, $DE
|15D7C4| db $22 ; Repeat byte
|15D7C5| db $00
|15D7C6| db $14 ; Raw block
|15D7C7| db $7E, $FF, $FF, $FD, $FA, $F5, $DE, $00
|15D7CF| db $C3, $7E, $F3, $7C, $FD, $48, $FC, $08
|15D7D7| db $4D, $30, $3B, $01, $0F
|15D7DC| db $22 ; Repeat byte
|15D7DD| db $00
|15D7DE| db $23 ; Repeat byte
|15D7DF| db $FF
|15D7E0| db $10 ; Raw block
|15D7E1| db $7B, $37, $0F, $00, $8F, $8E, $DF, $D2
|15D7E9| db $FB, $60, $72, $20, $7A, $20, $F9, $00
|15D7F1| db $8E
|15D7F2| db $22 ; Repeat byte
|15D7F3| db $00
|15D7F4| db $18 ; Raw block
|15D7F5| db $71, $2D, $97, $DE, $DE, $F7, $8E, $00
|15D7FD| db $4B, $37, $C3, $7E, $F3, $7E, $FF, $4E
|15D805| db $FE, $0C, $4F, $3E, $33, $0E, $0F, $00
|15D80D| db $77
|15D80E| db $23 ; Repeat byte
|15D80F| db $FF
|15D810| db $E0, $27 ; EXT Raw block
|15D812| db $7F, $3F, $0F, $C6, $44, $8F, $8E, $FF
|15D81A| db $26, $37, $02, $26, $00, $AC, $00, $A8
|15D822| db $00, $F0, $00, $BA, $71, $D9, $ED, $FE
|15D82A| db $FC, $78, $F0, $7C, $0C, $38, $08, $4C
|15D832| db $04, $4E, $06, $5F, $07, $D7, $01, $61
|15D83A| db $22 ; Repeat byte
|15D83B| db $00
|15D83C| db $14 ; Raw block
|15D83D| db $73, $37, $7B, $79, $78, $B6, $61, $00
|15D845| db $3B, $20, $32, $20, $3A, $20, $7B, $70
|15D84D| db $FE, $E0, $E0, $80, $80
|15D852| db $22 ; Repeat byte
|15D853| db $00
|15D854| db $0F ; Raw block
|15D855| db $DF, $DE, $DE, $8D, $1E, $60, $80, $00
|15D85D| db $B9, $18, $BC, $18, $5A, $08, $1F, $0F
|15D865| db $83 ; Copy past
|15D866| dw $048A
|15D868| db $83 ; Copy past
|15D869| dw $02D8
|15D86B| db $E0, $26 ; EXT Raw block
|15D86D| db $E6, $E3, $55, $10, $0C, $03, $07, $03
|15D875| db $3E, $2C, $BE, $2C, $7E, $48, $CA, $80
|15D87D| db $C2, $00, $3C, $00, $20, $00, $C0, $00
|15D885| db $DE, $5E, $BE, $7E, $FE, $FC, $E0, $C0
|15D88D| db $59, $08, $5C, $08, $3A, $08, $0F
|15D894| db $85 ; Copy past
|15D895| dw $02D5
|15D897| db $22 ; Repeat byte
|15D898| db $00
|15D899| db $03 ; Raw block
|15D89A| db $76, $73, $35, $08
|15D89E| db $83 ; Copy past
|15D89F| dw $02E3
|15D8A1| db $0C ; Raw block
|15D8A2| db $7C, $58, $F8, $50, $F8, $80, $88, $00
|15D8AA| db $70, $00, $40, $00, $80
|15D8AF| db $22 ; Repeat byte
|15D8B0| db $00
|15D8B1| db $07 ; Raw block
|15D8B2| db $BC, $38, $78, $F8, $F0, $C0, $80, $00
|15D8BA| db $FF ; End of GFX 91

;===================================================================================================

GFX_92:
|15D8BB| db $E0, $4F ; EXT Raw block
|15D8BD| db $00, $00, $03, $00, $0C, $03, $13, $0C
|15D8C5| db $17, $08, $26, $19, $2E, $11, $2F, $10
|15D8CD| db $00, $03, $0F, $1C, $18, $39, $31, $30
|15D8D5| db $00, $00, $C0, $00, $30, $C0, $A8, $50
|15D8DD| db $68, $90, $F4, $08, $94, $68, $74, $88
|15D8E5| db $00, $C0, $F0, $78, $D8, $EC, $FC, $8C
|15D8ED| db $00, $00, $01, $00, $06, $01, $09, $06
|15D8F5| db $13, $0C, $16, $09, $25, $1A, $2F, $10
|15D8FD| db $00, $01, $07, $0F, $1D, $1B, $3A, $30
|15D905| db $00, $00, $80, $00, $60, $80, $10, $E0
|15D90D| db $83 ; Copy past
|15D90E| dw $001E
|15D910| db $0B ; Raw block
|15D911| db $A4, $58, $E4, $18, $00, $80, $E0, $F0
|15D919| db $D8, $D8, $5C, $1C
|15D91D| db $85 ; Copy past
|15D91E| dw $0000
|15D920| db $11 ; Raw block
|15D921| db $15, $0A, $16, $09, $2D, $12, $2F, $10
|15D929| db $2B, $14, $00, $03, $0F, $1E, $1B, $32
|15D931| db $30, $34
|15D933| db $85 ; Copy past
|15D934| dw $0018
|15D936| db $03 ; Raw block
|15D937| db $C8, $30, $E8, $10
|15D93B| db $43 ; Repeat word
|15D93C| dw $08F4
|15D93E| db $09 ; Raw block
|15D93F| db $D4, $28, $00, $C0, $F0, $38, $18, $0C
|15D947| db $0C, $2C
|15D949| db $83 ; Copy past
|15D94A| dw $0030
|15D94C| db $07 ; Raw block
|15D94D| db $2B, $00, $7F, $00, $BF, $40, $4F, $30
|15D955| db $43 ; Repeat word
|15D956| dw $007F
|15D958| db $07 ; Raw block
|15D959| db $00, $01, $2A, $56, $D8, $7E, $78, $56
|15D961| db $23 ; Repeat byte
|15D962| db $00
|15D963| db $0A ; Raw block
|15D964| db $94, $00, $FE, $00, $FD, $02, $FB, $04
|15D96C| db $FF, $00, $FF
|15D96F| db $22 ; Repeat byte
|15D970| db $00
|15D971| db $08 ; Raw block
|15D972| db $94, $EA, $1B, $EF, $1D, $FD, $00, $00
|15D97A| db $07
|15D97B| db $44 ; Repeat word
|15D97C| dw $0F00
|15D97E| db $45 ; Repeat word
|15D97F| dw $001F
|15D981| db $13 ; Raw block
|15D982| db $6F, $00, $00, $07, $09, $0E, $16, $18
|15D98A| db $16, $68, $80, $00, $E0, $00, $D0, $20
|15D992| db $7C, $80, $CE, $30
|15D996| db $45 ; Repeat word
|15D997| dw $00FE
|15D999| db $E0, $37 ; EXT Raw block
|15D99B| db $80, $60, $70, $CC, $F2, $3A, $F2, $32
|15D9A3| db $00, $00, $21, $00, $73, $00, $EF, $10
|15D9AB| db $D7, $08, $CF, $00, $FF, $00, $7F, $80
|15D9B3| db $00, $21, $52, $BC, $5E, $48, $36, $B8
|15D9BB| db $00, $00, $04, $00, $8E, $00, $D7, $08
|15D9C3| db $EB, $10, $F3, $00, $FF, $00, $FE, $01
|15D9CB| db $00, $04, $8A, $5D, $FA, $12, $EC, $1D
|15D9D3| db $89 ; Copy past
|15D9D4| dw $0090
|15D9D6| db $01 ; Raw block
|15D9D7| db $DF, $20
|15D9D9| db $43 ; Repeat word
|15D9DA| dw $00FF
|15D9DC| db $84 ; Copy past
|15D9DD| dw $00A0
|15D9DF| db $02 ; Raw block
|15D9E0| db $F6, $B8, $BE
|15D9E3| db $23 ; Repeat byte
|15D9E4| db $00
|15D9E5| db $8A ; Copy past
|15D9E6| dw $00AC
|15D9E8| db $22 ; Repeat byte
|15D9E9| db $00
|15D9EA| db $85 ; Copy past
|15D9EB| dw $00BA
|15D9ED| db $25 ; Repeat byte
|15D9EE| db $00
|15D9EF| db $00 ; Raw block
|15D9F0| db $07
|15D9F1| db $44 ; Repeat word
|15D9F2| dw $0F00
|15D9F4| db $02 ; Raw block
|15D9F5| db $07, $00, $1F
|15D9F8| db $23 ; Repeat byte
|15D9F9| db $00
|15D9FA| db $04 ; Raw block
|15D9FB| db $07, $09, $0E, $07, $1C
|15DA00| db $23 ; Repeat byte
|15DA01| db $00
|15DA02| db $02 ; Raw block
|15DA03| db $80, $00, $E0
|15DA06| db $44 ; Repeat word
|15DA07| dw $F000
|15DA09| db $02 ; Raw block
|15DA0A| db $F8, $00, $F8
|15DA0D| db $22 ; Repeat byte
|15DA0E| db $00
|15DA0F| db $05 ; Raw block
|15DA10| db $80, $60, $50, $30, $68, $98
|15DA16| db $45 ; Repeat word
|15DA17| dw $102F
|15DA19| db $06 ; Raw block
|15DA1A| db $37, $08, $18, $07, $0F, $00, $07
|15DA21| db $22 ; Repeat byte
|15DA22| db $00
|15DA23| db $07 ; Raw block
|15DA24| db $30, $3C, $3E, $3E, $17, $09, $07, $00
|15DA2C| db $45 ; Repeat word
|15DA2D| dw $08F4
|15DA2F| db $06 ; Raw block
|15DA30| db $EC, $10, $18, $E0, $F0, $00, $E0
|15DA37| db $22 ; Repeat byte
|15DA38| db $00
|15DA39| db $09 ; Raw block
|15DA3A| db $0C, $3C, $7C, $7C, $E8, $90, $E0, $00
|15DA42| db $2F, $10
|15DA44| db $43 ; Repeat word
|15DA45| dw $112E
|15DA47| db $06 ; Raw block
|15DA48| db $3F, $00, $37, $08, $24, $1B, $1F
|15DA4F| db $22 ; Repeat byte
|15DA50| db $00
|15DA51| db $14 ; Raw block
|15DA52| db $30, $37, $3F, $2E, $28, $3F, $1F, $00
|15DA5A| db $E4, $18, $C4, $38, $B8, $70, $70, $C0
|15DA62| db $60, $80, $40, $80, $80
|15DA67| db $22 ; Repeat byte
|15DA68| db $00
|15DA69| db $14 ; Raw block
|15DA6A| db $1C, $3C, $78, $F0, $E0, $C0, $80, $00
|15DA72| db $2C, $13, $2F, $10, $27, $18, $33, $0C
|15DA7A| db $11, $0F, $0F, $03, $03
|15DA7F| db $22 ; Repeat byte
|15DA80| db $00
|15DA81| db $14 ; Raw block
|15DA82| db $33, $30, $38, $3C, $1F, $0F, $03, $00
|15DA8A| db $34, $C8, $F4, $08, $E4, $18, $CC, $30
|15DA92| db $88, $F0, $F0, $C0, $C0
|15DA97| db $22 ; Repeat byte
|15DA98| db $00
|15DA99| db $06 ; Raw block
|15DA9A| db $CC, $0C, $1C, $3C, $F8, $F0, $C0
|15DAA1| db $46 ; Repeat word
|15DAA2| dw $7F00
|15DAA4| db $43 ; Repeat word
|15DAA5| dw $003F
|15DAA7| db $00 ; Raw block
|15DAA8| db $1E
|15DAA9| db $24 ; Repeat byte
|15DAAA| db $00
|15DAAB| db $0A ; Raw block
|15DAAC| db $58, $4E, $49, $3A, $2D, $1E, $00, $00
|15DAB4| db $FE, $00, $FC
|15DAB7| db $44 ; Repeat word
|15DAB8| dw $F800
|15DABA| db $00 ; Raw block
|15DABB| db $FC
|15DABC| db $44 ; Repeat word
|15DABD| dw $7C00
|15DABF| db $E0, $23 ; EXT Raw block
|15DAC1| db $38, $00, $1E, $F4, $88, $68, $DC, $44
|15DAC9| db $44, $38, $FF, $00, $9E, $61, $7F, $00
|15DAD1| db $7D, $02, $FE, $01, $9D, $60, $7C, $00
|15DAD9| db $08, $00, $9E, $E9, $7F, $73, $97, $ED
|15DAE1| db $74, $08, $DC, $20
|15DAE5| db $43 ; Repeat word
|15DAE6| dw $00F8
|15DAE8| db $04 ; Raw block
|15DAE9| db $E8, $10, $30, $C0, $C0
|15DAEE| db $24 ; Repeat byte
|15DAEF| db $00
|15DAF0| db $06 ; Raw block
|15DAF1| db $FC, $E8, $88, $D8, $F0, $C0, $00
|15DAF8| db $83 ; Copy past
|15DAF9| dw $00FB
|15DAFB| db $09 ; Raw block
|15DAFC| db $00, $FF, $00, $EB, $14, $F6, $09, $FF
|15DB04| db $00, $70
|15DB06| db $22 ; Repeat byte
|15DB07| db $00
|15DB08| db $06 ; Raw block
|15DB09| db $F6, $48, $9E, $DF, $AF, $8F, $70
|15DB10| db $83 ; Copy past
|15DB11| dw $0113
|15DB13| db $09 ; Raw block
|15DB14| db $00, $FF, $00, $D7, $28, $6F, $90, $FF
|15DB1C| db $00, $0E
|15DB1E| db $22 ; Repeat byte
|15DB1F| db $00
|15DB20| db $06 ; Raw block
|15DB21| db $EF, $12, $F9, $FB, $F5, $F1, $0E
|15DB28| db $44 ; Repeat word
|15DB29| dw $FF00
|15DB2B| db $02 ; Raw block
|15DB2C| db $7A, $05, $1F
|15DB2F| db $44 ; Repeat word
|15DB30| dw $3E00
|15DB32| db $00 ; Raw block
|15DB33| db $1C
|15DB34| db $22 ; Repeat byte
|15DB35| db $00
|15DB36| db $06 ; Raw block
|15DB37| db $98, $9E, $77, $17, $2A, $22, $1C
|15DB3E| db $44 ; Repeat word
|15DB3F| dw $FF00
|15DB41| db $02 ; Raw block
|15DB42| db $5E, $A0, $F8
|15DB45| db $44 ; Repeat word
|15DB46| dw $7C00
|15DB48| db $00 ; Raw block
|15DB49| db $38
|15DB4A| db $22 ; Repeat byte
|15DB4B| db $00
|15DB4C| db $06 ; Raw block
|15DB4D| db $19, $F9, $EE, $E8, $54, $44, $38
|15DB54| db $46 ; Repeat word
|15DB55| dw $3F00
|15DB57| db $43 ; Repeat word
|15DB58| dw $007F
|15DB5A| db $00 ; Raw block
|15DB5B| db $38
|15DB5C| db $24 ; Repeat byte
|15DB5D| db $00
|15DB5E| db $08 ; Raw block
|15DB5F| db $23, $27, $3B, $5E, $4F, $38, $00, $00
|15DB67| db $F8
|15DB68| db $44 ; Repeat word
|15DB69| dw $F000
|15DB6B| db $83 ; Copy past
|15DB6C| dw $022E
|15DB6E| db $01 ; Raw block
|15DB6F| db $7A, $04
|15DB71| db $83 ; Copy past
|15DB72| dw $0234
|15DB74| db $E0, $2E ; EXT Raw block
|15DB76| db $68, $10, $70, $28, $EC, $56, $44, $38
|15DB7E| db $00, $00, $3C, $00, $5A, $3C, $42, $3C
|15DB86| db $66, $18, $7E, $00, $5A, $00, $24, $00
|15DB8E| db $00, $3C, $5A, $42, $42, $66, $7E, $24
|15DB96| db $88, $00, $79, $00, $3E, $10, $6E, $30
|15DB9E| db $42, $3C, $26, $18, $FA, $00, $21
|15DBA5| db $22 ; Repeat byte
|15DBA6| db $00
|15DBA7| db $03 ; Raw block
|15DBA8| db $10, $30, $3C, $18
|15DBAC| db $23 ; Repeat byte
|15DBAD| db $00
|15DBAE| db $83 ; Copy past
|15DBAF| dw $0002
|15DBB1| db $E0, $29 ; EXT Raw block
|15DBB3| db $11, $0F, $22, $1F, $25, $1B, $66, $39
|15DBBB| db $56, $39, $00, $03, $0C, $11, $23, $25
|15DBC3| db $62, $70, $07, $00, $18, $07, $21, $1F
|15DBCB| db $46, $3F, $47, $3B, $87, $79, $C6, $79
|15DBD3| db $A2, $7D, $07, $18, $21, $47, $47, $83
|15DBDB| db $C0, $E0
|15DBDD| db $23 ; Repeat byte
|15DBDE| db $00
|15DBDF| db $00 ; Raw block
|15DBE0| db $07
|15DBE1| db $44 ; Repeat word
|15DBE2| dw $0F00
|15DBE4| db $00 ; Raw block
|15DBE5| db $07
|15DBE6| db $43 ; Repeat word
|15DBE7| dw $0F00
|15DBE9| db $22 ; Repeat byte
|15DBEA| db $00
|15DBEB| db $83 ; Copy past
|15DBEC| dw $0163
|15DBEE| db $01 ; Raw block
|15DBEF| db $08, $0F
|15DBF1| db $84 ; Copy past
|15DBF2| dw $016A
|15DBF4| db $44 ; Repeat word
|15DBF5| dw $F000
|15DBF7| db $83 ; Copy past
|15DBF8| dw $02E8
|15DBFA| db $00 ; Raw block
|15DBFB| db $F8
|15DBFC| db $86 ; Copy past
|15DBFD| dw $0178
|15DBFF| db $0B ; Raw block
|15DC00| db $10, $68, $0F, $00, $9F, $03, $7A, $1D
|15DC08| db $61, $1E, $73, $2C
|15DC0C| db $45 ; Repeat word
|15DC0D| dw $78C7
|15DC0F| db $E0, $4F ; EXT Raw block
|15DC11| db $07, $1B, $3D, $5E, $6C, $FC, $FE, $FA
|15DC19| db $E0, $00, $F9, $E0, $1E, $F8, $86, $78
|15DC21| db $CE, $34, $E3, $1E, $E3, $1C, $E7, $1A
|15DC29| db $E0, $F8, $FC, $7A, $36, $3E, $7D, $5B
|15DC31| db $01, $01, $00, $03, $43, $4F, $0C, $1F
|15DC39| db $0C, $3F, $15, $3A, $1F, $78, $1F, $7C
|15DC41| db $01, $00, $43, $0D, $0F, $12, $58, $1C
|15DC49| db $00, $02, $00, $80, $E0, $E0, $50, $F0
|15DC51| db $E8, $F8, $48, $F8, $C8, $3C, $E8, $1C
|15DC59| db $02, $00, $E0, $F0, $F8, $F8, $3C, $1C
|15DC61| db $27 ; Repeat byte
|15DC62| db $00
|15DC63| db $03 ; Raw block
|15DC64| db $0F, $00, $51, $0E
|15DC68| db $43 ; Repeat word
|15DC69| dw $10EF
|15DC6B| db $23 ; Repeat byte
|15DC6C| db $00
|15DC6D| db $03 ; Raw block
|15DC6E| db $0F, $5F, $B1, $B2
|15DC72| db $25 ; Repeat byte
|15DC73| db $00
|15DC74| db $09 ; Raw block
|15DC75| db $E0, $00, $30, $E0, $9E, $70, $9F, $70
|15DC7D| db $9D, $72
|15DC7F| db $22 ; Repeat byte
|15DC80| db $00
|15DC81| db $09 ; Raw block
|15DC82| db $E0, $F0, $7E, $7D, $7B, $60, $00, $F1
|15DC8A| db $00, $FB
|15DC8C| db $44 ; Repeat word
|15DC8D| dw $FF00
|15DC8F| db $12 ; Raw block
|15DC90| db $BF, $40, $5F, $20, $2F, $00, $60, $91
|15DC98| db $9A, $B6, $B8, $D6, $78, $2E, $06, $00
|15DCA0| db $0F, $00, $9F
|15DCA3| db $44 ; Repeat word
|15DCA4| dw $FF00
|15DCA6| db $0E ; Raw block
|15DCA7| db $FD, $02, $FA, $04, $FC, $00, $06, $09
|15DCAF| db $99, $ED, $1D, $EB, $1E, $FC, $10
|15DCB6| db $44 ; Repeat word
|15DCB7| dw $3800
|15DCB9| db $45 ; Repeat word
|15DCBA| dw $0078
|15DCBC| db $00 ; Raw block
|15DCBD| db $38
|15DCBE| db $22 ; Repeat byte
|15DCBF| db $00
|15DCC0| db $06 ; Raw block
|15DCC1| db $10, $28, $28, $68, $48, $48, $38
|15DCC8| db $84 ; Copy past
|15DCC9| dw $0031
|15DCCB| db $05 ; Raw block
|15DCCC| db $3F, $00, $7C, $03, $5B, $24
|15DCD2| db $43 ; Repeat word
|15DCD3| dw $003C
|15DCD5| db $E0, $25 ; EXT Raw block
|15DCD7| db $18, $00, $01, $07, $38, $43, $67, $34
|15DCDF| db $24, $18, $3C, $00, $42, $3C, $99, $7E
|15DCE7| db $C3, $7E, $FF, $3C, $FF, $00, $BD, $00
|15DCEF| db $66, $00, $3C, $42, $99, $C3, $BD, $C3
|15DCF7| db $FF, $7E, $3C, $00, $4A, $3C
|15DCFD| db $43 ; Repeat word
|15DCFE| dw $4EB5
|15DD00| db $E0, $3F ; EXT Raw block
|15DD02| db $C9, $7E, $B1, $7E, $42, $3C, $3C, $00
|15DD0A| db $3C, $7A, $CD, $CD, $F9, $B1, $42, $3C
|15DD12| db $6E, $1D, $7F, $03, $3F, $00, $3F, $10
|15DD1A| db $2F, $00, $19, $00, $05, $00, $02, $00
|15DD22| db $5C, $43, $30, $28, $3F, $1F, $07, $02
|15DD2A| db $50, $3F, $7C, $0F, $3F, $03, $7F, $20
|15DD32| db $AF, $08, $53, $00, $16, $00, $09, $00
|15DD3A| db $70, $4C, $23, $58, $F4, $5F, $1F, $09
|15DD42| db $45 ; Repeat word
|15DD43| dw $000F
|15DD45| db $02 ; Raw block
|15DD46| db $07, $00, $03
|15DD49| db $44 ; Repeat word
|15DD4A| dw $0700
|15DD4C| db $0A ; Raw block
|15DD4D| db $03, $00, $08, $0F, $08, $07, $03, $05
|15DD55| db $04, $03, $F8
|15DD58| db $44 ; Repeat word
|15DD59| dw $F000
|15DD5B| db $05 ; Raw block
|15DD5C| db $E0, $00, $A0, $40, $D0, $20
|15DD62| db $83 ; Copy past
|15DD63| dw $01A2
|15DD65| db $E0, $43 ; EXT Raw block
|15DD67| db $18, $70, $10, $60, $60, $30, $90, $E0
|15DD6F| db $63, $3C, $F0, $0F, $78, $1F, $BC, $47
|15DD77| db $4F, $33, $37, $08, $2D, $12, $12, $00
|15DD7F| db $7C, $0F, $7F, $FF, $7F, $3F, $3F, $12
|15DD87| db $C6, $3C, $26, $DC, $1E, $E8, $3D, $E2
|15DD8F| db $FE, $C0, $EC, $10, $B4, $48, $48, $00
|15DD97| db $3E, $DE, $EE, $F7, $FA, $FC, $FC, $48
|15DD9F| db $1D, $7E, $8F, $FC, $0F, $7F, $07, $3F
|15DDA7| db $01, $1F, $00, $3F
|15DDAB| db $83 ; Copy past
|15DDAC| dw $018B
|15DDAE| db $E0, $37 ; EXT Raw block
|15DDB0| db $1C, $8C, $0F, $07, $01, $20, $00, $00
|15DDB8| db $A8, $5C, $30, $F8, $F0, $F8, $E0, $F0
|15DDC0| db $C0, $F0, $02, $E2, $00, $80, $00, $08
|15DDC8| db $1C, $F8, $F8, $F0, $C0, $02, $00, $00
|15DDD0| db $57, $28, $EA, $15, $FF, $00, $F6, $09
|15DDD8| db $57, $2B, $6F, $10, $3B, $04, $0F, $00
|15DDE0| db $7A, $FF, $BC, $8D, $6F, $7F, $3C, $0F
|15DDE8| db $43 ; Repeat word
|15DDE9| dw $709E
|15DDEB| db $13 ; Raw block
|15DDEC| db $3F, $E0, $E3, $DC, $F9, $06, $76, $88
|15DDF4| db $24, $D8, $F8, $00, $7A, $7E, $F9, $FF
|15DDFC| db $DF, $EE, $FC, $F8
|15DE00| db $43 ; Repeat word
|15DE01| dw $000F
|15DE03| db $02 ; Raw block
|15DE04| db $1A, $05, $1F
|15DE07| db $44 ; Repeat word
|15DE08| dw $3E00
|15DE0A| db $00 ; Raw block
|15DE0B| db $1C
|15DE0C| db $22 ; Repeat byte
|15DE0D| db $00
|15DE0E| db $02 ; Raw block
|15DE0F| db $08, $0E, $17
|15DE12| db $83 ; Copy past
|15DE13| dw $02B3
|15DE15| db $44 ; Repeat word
|15DE16| dw $F000
|15DE18| db $02 ; Raw block
|15DE19| db $58, $A0, $F8
|15DE1C| db $44 ; Repeat word
|15DE1D| dw $7C00
|15DE1F| db $00 ; Raw block
|15DE20| db $38
|15DE21| db $22 ; Repeat byte
|15DE22| db $00
|15DE23| db $02 ; Raw block
|15DE24| db $10, $F0, $E8
|15DE27| db $83 ; Copy past
|15DE28| dw $02CB
|15DE2A| db $22 ; Repeat byte
|15DE2B| db $00
|15DE2C| db $00 ; Raw block
|15DE2D| db $18
|15DE2E| db $48 ; Repeat word
|15DE2F| dw $3C00
|15DE31| db $09 ; Raw block
|15DE32| db $24, $18, $18, $00, $00, $18, $24, $24
|15DE3A| db $34, $34
|15DE3C| db $83 ; Copy past
|15DE3D| dw $032C
|15DE3F| db $03 ; Raw block
|15DE40| db $18, $00, $6C, $10
|15DE44| db $43 ; Repeat word
|15DE45| dw $00FC
|15DE47| db $0D ; Raw block
|15DE48| db $6E, $10, $16, $08, $15, $0A, $00, $18
|15DE50| db $74, $A4, $84, $72, $1A, $1B
|15DE56| db $FF ; End of GFX 92

;===================================================================================================

GFX_93:
|15DE57| db $2B ; Repeat byte
|15DE58| db $00
|15DE59| db $03 ; Raw block
|15DE5A| db $03, $00, $07, $01
|15DE5E| db $25 ; Repeat byte
|15DE5F| db $00
|15DE60| db $01 ; Raw block
|15DE61| db $03, $07
|15DE63| db $2B ; Repeat byte
|15DE64| db $00
|15DE65| db $03 ; Raw block
|15DE66| db $C0, $00, $E0, $80
|15DE6A| db $25 ; Repeat byte
|15DE6B| db $00
|15DE6C| db $01 ; Raw block
|15DE6D| db $C0, $E0
|15DE6F| db $23 ; Repeat byte
|15DE70| db $00
|15DE71| db $0B ; Raw block
|15DE72| db $03, $00, $07, $03, $0E, $07, $0D, $06
|15DE7A| db $0E, $05, $18, $0F
|15DE7E| db $83 ; Copy past
|15DE7F| dw $0014
|15DE81| db $03 ; Raw block
|15DE82| db $0F, $0E, $0D, $1F
|15DE86| db $23 ; Repeat byte
|15DE87| db $00
|15DE88| db $03 ; Raw block
|15DE89| db $C0, $00, $E0, $C0
|15DE8D| db $43 ; Repeat word
|15DE8E| dw $E070
|15DE90| db $03 ; Raw block
|15DE91| db $78, $F0, $38, $F0
|15DE95| db $83 ; Copy past
|15DE96| dw $002C
|15DE98| db $03 ; Raw block
|15DE99| db $F0, $F0, $F8, $F8
|15DE9D| db $29 ; Repeat byte
|15DE9E| db $00
|15DE9F| db $05 ; Raw block
|15DEA0| db $07, $00, $0F, $07, $1A, $0D
|15DEA6| db $24 ; Repeat byte
|15DEA7| db $00
|15DEA8| db $02 ; Raw block
|15DEA9| db $07, $0F, $1D
|15DEAC| db $29 ; Repeat byte
|15DEAD| db $00
|15DEAE| db $05 ; Raw block
|15DEAF| db $C0, $00, $F0, $C0, $38, $F0
|15DEB5| db $24 ; Repeat byte
|15DEB6| db $00
|15DEB7| db $05 ; Raw block
|15DEB8| db $C0, $F0, $F8, $07, $00, $1B
|15DEBE| db $44 ; Repeat word
|15DEBF| dw $2700
|15DEC1| db $12 ; Raw block
|15DEC2| db $47, $00, $43, $00, $41, $00, $4E, $00
|15DECA| db $07, $1C, $38, $38, $78, $7C, $7E, $7F
|15DED2| db $E0, $00, $F8
|15DED5| db $44 ; Repeat word
|15DED6| dw $FC00
|15DED8| db $19 ; Raw block
|15DED9| db $FE, $00, $EE, $00, $CE, $00, $FE, $00
|15DEE1| db $E0, $18, $04, $04, $02, $12, $32, $72
|15DEE9| db $00, $00, $79, $00, $86, $78, $82, $7C
|15DEF1| db $84, $78
|15DEF3| db $45 ; Repeat word
|15DEF4| dw $3844
|15DEF6| db $04 ; Raw block
|15DEF7| db $00, $79, $87, $83, $87
|15DEFC| db $22 ; Repeat byte
|15DEFD| db $47
|15DEFE| db $02 ; Raw block
|15DEFF| db $7E, $00, $BF
|15DF02| db $46 ; Repeat word
|15DF03| dw $7F00
|15DF05| db $07 ; Raw block
|15DF06| db $3E, $00, $1C, $00, $EF, $00, $7E, $C1
|15DF0E| db $22 ; Repeat byte
|15DF0F| db $80
|15DF10| db $05 ; Raw block
|15DF11| db $C1, $E3, $F7, $00, $00, $80
|15DF17| db $44 ; Repeat word
|15DF18| dw $C000
|15DF1A| db $47 ; Repeat word
|15DF1B| dw $00E0
|15DF1D| db $03 ; Raw block
|15DF1E| db $00, $80, $40, $40
|15DF22| db $23 ; Repeat byte
|15DF23| db $20
|15DF24| db $E0, $4A ; EXT Raw block
|15DF26| db $17, $08, $0B, $04, $7B, $04, $FD, $02
|15DF2E| db $5D, $12, $36, $05, $0E, $05, $1D, $02
|15DF36| db $1B, $0D, $7D, $86, $6E, $3B, $0B, $1F
|15DF3E| db $FD, $00, $FF, $00, $BF, $00, $DE, $00
|15DF46| db $FF, $1E, $DE, $00, $E1, $00, $61, $80
|15DF4E| db $3F, $CE, $F1, $BF, $E1, $5E, $61, $A1
|15DF56| db $FC, $00, $F8, $00, $7E, $00, $FF, $00
|15DF5E| db $EA, $00, $CC, $00, $50, $80, $30, $C0
|15DF66| db $7C, $98, $FE, $81, $F6, $FC, $F0, $F0
|15DF6E| db $04, $00, $02
|15DF71| db $4C ; Repeat word
|15DF72| dw $0300
|15DF74| db $01 ; Raw block
|15DF75| db $04, $02
|15DF77| db $25 ; Repeat byte
|15DF78| db $03
|15DF79| db $27 ; Repeat byte
|15DF7A| db $00
|15DF7B| db $43 ; Repeat word
|15DF7C| dw $0080
|15DF7E| db $02 ; Raw block
|15DF7F| db $C0, $00, $C0
|15DF82| db $24 ; Repeat byte
|15DF83| db $00
|15DF84| db $08 ; Raw block
|15DF85| db $80, $80, $C0, $C0, $0E, $03, $0F, $00
|15DF8D| db $1F
|15DF8E| db $44 ; Repeat word
|15DF8F| dw $3F00
|15DF91| db $02 ; Raw block
|15DF92| db $1F, $00, $07
|15DF95| db $22 ; Repeat byte
|15DF96| db $00
|15DF97| db $0D ; Raw block
|15DF98| db $0F, $0C, $1C, $3F, $3F, $1F, $07, $00
|15DFA0| db $70, $C0, $F0, $80, $F8, $80
|15DFA6| db $43 ; Repeat word
|15DFA7| dw $00FC
|15DFA9| db $02 ; Raw block
|15DFAA| db $F8, $00, $E0
|15DFAD| db $22 ; Repeat byte
|15DFAE| db $00
|15DFAF| db $0C ; Raw block
|15DFB0| db $F0, $B0, $B8, $FC, $FC, $F8, $E0, $00
|15DFB8| db $19, $0E, $31, $1E, $39
|15DFBD| db $44 ; Repeat word
|15DFBE| dw $3F1F
|15DFC0| db $07 ; Raw block
|15DFC1| db $1F, $0F, $0F, $03, $03, $00, $1E, $3E
|15DFC9| db $22 ; Repeat byte
|15DFCA| db $3F
|15DFCB| db $04 ; Raw block
|15DFCC| db $1F, $0F, $03, $F8, $50
|15DFD1| db $44 ; Repeat word
|15DFD2| dw $58FC
|15DFD4| db $00 ; Raw block
|15DFD5| db $F8
|15DFD6| db $43 ; Repeat word
|15DFD7| dw $F0F8
|15DFD9| db $06 ; Raw block
|15DFDA| db $F0, $C0, $C0, $00, $58, $5C, $5C
|15DFE1| db $83 ; Copy past
|15DFE2| dw $01CE
|15DFE4| db $1C ; Raw block
|15DFE5| db $C0, $18, $0F, $31, $1E, $61, $3E, $73
|15DFED| db $3F, $7F, $3F, $3F, $1F, $1F, $03, $03
|15DFF5| db $00, $1F, $3E, $7E, $7F, $7F, $3F, $1F
|15DFFD| db $03, $1C, $F8, $FC, $58
|15E002| db $44 ; Repeat word
|15E003| dw $5CFE
|15E005| db $E0, $3E ; EXT Raw block
|15E007| db $FC, $FC, $F8, $F8, $C0, $C0, $00, $FC
|15E00F| db $5C, $5E, $5E, $FE, $FC, $F8, $C0, $2A
|15E017| db $04, $2D, $00, $31, $00, $1F, $00, $0F
|15E01F| db $00, $07, $00, $04, $00, $03, $00, $3B
|15E027| db $3E, $2F, $18, $0A, $05, $07, $03, $DC
|15E02F| db $20, $B4, $00, $CC, $00, $F8, $00, $F0
|15E037| db $00, $D0, $00, $20, $00, $C0, $00, $54
|15E03F| db $7C, $B4, $18, $50, $70, $E0, $C0
|15E046| db $43 ; Repeat word
|15E047| dw $003E
|15E049| db $18 ; Raw block
|15E04A| db $7F, $00, $5D, $00, $5C, $00, $3E, $00
|15E052| db $3F, $00, $36, $08, $3F, $2F, $5E, $7F
|15E05A| db $77, $23, $2D, $3B, $AD, $42, $DB, $00
|15E062| db $1C
|15E063| db $46 ; Repeat word
|15E064| dw $FF00
|15E066| db $13 ; Raw block
|15E067| db $7D, $00, $C3, $00, $B5, $E7, $FB, $81
|15E06F| db $E5, $AF, $D7, $FF, $F0, $00, $48, $30
|15E077| db $C4, $38, $82, $7C
|15E07B| db $45 ; Repeat word
|15E07C| dw $FE01
|15E07E| db $05 ; Raw block
|15E07F| db $82, $7C, $70, $C8, $44, $82
|15E085| db $22 ; Repeat byte
|15E086| db $01
|15E087| db $05 ; Raw block
|15E088| db $82, $39, $06, $42, $3C, $7C
|15E08E| db $2A ; Repeat byte
|15E08F| db $00
|15E090| db $02 ; Raw block
|15E091| db $27, $7E, $7C
|15E094| db $24 ; Repeat byte
|15E095| db $00
|15E096| db $09 ; Raw block
|15E097| db $71, $80, $B1, $40, $B9, $40, $58, $20
|15E09F| db $5C, $20
|15E0A1| db $43 ; Repeat word
|15E0A2| dw $102C
|15E0A4| db $12 ; Raw block
|15E0A5| db $18, $00, $B1, $D1, $D9, $68, $6C, $34
|15E0AD| db $34, $18, $10, $E0, $30, $C0, $70, $80
|15E0B5| db $90, $60, $60
|15E0B8| db $26 ; Repeat byte
|15E0B9| db $00
|15E0BA| db $04 ; Raw block
|15E0BB| db $F0, $D0, $90, $F0, $60
|15E0C0| db $22 ; Repeat byte
|15E0C1| db $00
|15E0C2| db $43 ; Repeat word
|15E0C3| dw $0007
|15E0C5| db $43 ; Repeat word
|15E0C6| dw $000F
|15E0C8| db $10 ; Raw block
|15E0C9| db $4F, $00, $6F, $00, $7F, $00, $5F, $00
|15E0D1| db $07, $07, $0F, $0F, $4F, $6F, $7F, $5F
|15E0D9| db $C0
|15E0DA| db $48 ; Repeat word
|15E0DB| dw $E000
|15E0DD| db $45 ; Repeat word
|15E0DE| dw $00F0
|15E0E0| db $00 ; Raw block
|15E0E1| db $C0
|15E0E2| db $23 ; Repeat byte
|15E0E3| db $E0
|15E0E4| db $22 ; Repeat byte
|15E0E5| db $F0
|15E0E6| db $83 ; Copy past
|15E0E7| dw $000C
|15E0E9| db $00 ; Raw block
|15E0EA| db $1F
|15E0EB| db $44 ; Repeat word
|15E0EC| dw $3F00
|15E0EE| db $02 ; Raw block
|15E0EF| db $1F, $00, $07
|15E0F2| db $22 ; Repeat byte
|15E0F3| db $00
|15E0F4| db $03 ; Raw block
|15E0F5| db $03, $07, $1C, $3C
|15E0F9| db $83 ; Copy past
|15E0FA| dw $0194
|15E0FC| db $03 ; Raw block
|15E0FD| db $2F, $10, $6C, $13
|15E101| db $43 ; Repeat word
|15E102| dw $6996
|15E104| db $0F ; Raw block
|15E105| db $56, $29, $76, $09, $7B, $24, $5B, $04
|15E10D| db $37, $74, $9A, $9A, $5A, $7A, $5D, $7D
|15E115| db $43 ; Repeat word
|15E116| dw $00FF
|15E118| db $43 ; Repeat word
|15E119| dw $00BD
|15E11B| db $07 ; Raw block
|15E11C| db $E7, $24, $BD, $18, $66, $00, $BD, $00
|15E124| db $23 ; Repeat byte
|15E125| db $FF
|15E126| db $43 ; Repeat word
|15E127| dw $E7DB
|15E129| db $03 ; Raw block
|15E12A| db $F8, $00, $06, $F8
|15E12E| db $43 ; Repeat word
|15E12F| dw $FE01
|15E131| db $13 ; Raw block
|15E132| db $02, $FC, $04, $F8, $FC, $00, $34, $00
|15E13A| db $F8, $06, $01, $01, $02, $04, $FC, $FC
|15E142| db $00, $00, $30, $00
|15E146| db $47 ; Repeat word
|15E147| dw $2058
|15E149| db $43 ; Repeat word
|15E14A| dw $102C
|15E14C| db $01 ; Raw block
|15E14D| db $00, $30
|15E14F| db $23 ; Repeat byte
|15E150| db $68
|15E151| db $1C ; Raw block
|15E152| db $34, $34, $31, $00, $7E, $00, $36, $00
|15E15A| db $19, $00, $25, $18, $61, $1E, $41, $3E
|15E162| db $3E, $00, $2F, $5E, $2E, $1F, $3F, $5F
|15E16A| db $7F, $3E, $01, $00, $07
|15E16F| db $44 ; Repeat word
|15E170| dw $0F00
|15E172| db $43 ; Repeat word
|15E173| dw $001F
|15E175| db $12 ; Raw block
|15E176| db $13, $00, $1F, $00, $01, $06, $08, $08
|15E17E| db $10, $10, $1C, $1E, $F0, $00, $CC, $00
|15E186| db $E2, $00, $F1
|15E189| db $44 ; Repeat word
|15E18A| dw $F900
|15E18C| db $E0, $74 ; EXT Raw block
|15E18E| db $39, $00, $F1, $00, $F0, $3C, $1E, $0F
|15E196| db $07, $07, $C7, $4F, $C2, $00, $E7, $00
|15E19E| db $B7, $40, $5D, $20, $2D, $10, $77, $08
|15E1A6| db $5B, $04, $3D, $02, $C2, $A5, $D5, $6F
|15E1AE| db $37, $5B, $6D, $3E, $40, $00, $EE, $00
|15E1B6| db $77, $00, $EB, $00, $F7, $00, $7B, $00
|15E1BE| db $7F, $00, $FF, $00, $40, $AE, $59, $BF
|15E1C6| db $9E, $CF, $B7, $FC, $40, $00, $EC, $00
|15E1CE| db $52, $0C, $E2, $1C, $C1, $3E, $43, $3C
|15E1D6| db $FD, $00, $DF, $00, $40, $AC, $72, $E2
|15E1DE| db $41, $C3, $BF, $75, $02, $00, $07, $00
|15E1E6| db $02, $00, $01, $00, $1F, $00, $37, $08
|15E1EE| db $6F, $10, $7F, $00, $02, $07, $02, $01
|15E1F6| db $1F, $37, $6F, $7F, $00, $00, $F0, $00
|15E1FE| db $60, $00, $C0, $00, $FC
|15E203| db $46 ; Repeat word
|15E204| dw $FF00
|15E206| db $04 ; Raw block
|15E207| db $00, $F0, $60, $C0, $FC
|15E20C| db $22 ; Repeat byte
|15E20D| db $FF
|15E20E| db $29 ; Repeat byte
|15E20F| db $00
|15E210| db $04 ; Raw block
|15E211| db $01, $00, $FE, $00, $FC
|15E216| db $25 ; Repeat byte
|15E217| db $00
|15E218| db $0F ; Raw block
|15E219| db $01, $FE, $FC, $5F, $00, $EF, $00, $4F
|15E221| db $00, $0B, $04, $0D, $02, $07, $00, $03
|15E229| db $22 ; Repeat byte
|15E22A| db $00
|15E22B| db $06 ; Raw block
|15E22C| db $5F, $EF, $4F, $0B, $0D, $07, $03
|15E233| db $84 ; Copy past
|15E234| dw $00A9
|15E236| db $13 ; Raw block
|15E237| db $F6, $00, $D6, $20, $B2, $40, $EA, $00
|15E23F| db $C4, $00, $0C, $00, $F8, $FC, $F6, $D6
|15E247| db $B2, $EA, $C4, $0C
|15E24B| db $83 ; Copy past
|15E24C| dw $0024
|15E24E| db $00 ; Raw block
|15E24F| db $F8
|15E250| db $44 ; Repeat word
|15E251| dw $FC00
|15E253| db $02 ; Raw block
|15E254| db $F8, $00, $E0
|15E257| db $22 ; Repeat byte
|15E258| db $00
|15E259| db $03 ; Raw block
|15E25A| db $C0, $E0, $98, $9C
|15E25E| db $83 ; Copy past
|15E25F| dw $01AC
|15E261| db $0A ; Raw block
|15E262| db $5B, $04, $7B, $04, $7F, $00, $3F, $00
|15E26A| db $1D, $00, $0F
|15E26D| db $44 ; Repeat word
|15E26E| dw $0700
|15E270| db $E0, $26 ; EXT Raw block
|15E272| db $7D, $5D, $56, $28, $1E, $08, $07, $05
|15E27A| db $C3, $00, $FF, $00, $7F, $00, $3C, $00
|15E282| db $7E, $00, $C3, $00, $7E, $00, $99, $00
|15E28A| db $3C, $A5, $FF, $C3, $FF, $FF, $E7, $FF
|15E292| db $64, $00, $E8, $00, $D0, $00, $E0
|15E299| db $46 ; Repeat word
|15E29A| dw $C000
|15E29C| db $09 ; Raw block
|15E29D| db $E0, $00, $FC, $D8, $B0, $20, $C0, $C0
|15E2A5| db $40, $A0
|15E2A7| db $43 ; Repeat word
|15E2A8| dw $000E
|15E2AA| db $13 ; Raw block
|15E2AB| db $0A, $00, $7A, $00, $D2, $20, $C2, $3C
|15E2B3| db $82, $7C, $7C, $00, $0A, $0A, $0E, $7E
|15E2BB| db $FE, $BE, $FE, $7C
|15E2BF| db $27 ; Repeat byte
|15E2C0| db $00
|15E2C1| db $00 ; Raw block
|15E2C2| db $08
|15E2C3| db $2A ; Repeat byte
|15E2C4| db $00
|15E2C5| db $00 ; Raw block
|15E2C6| db $08
|15E2C7| db $22 ; Repeat byte
|15E2C8| db $00
|15E2C9| db $E0, $24 ; EXT Raw block
|15E2CB| db $1A, $04, $37, $00, $33, $00, $2F, $00
|15E2D3| db $3F, $00, $1C, $00, $3B, $00, $3E, $00
|15E2DB| db $1B, $2E, $2C, $31, $35, $0B, $27, $3E
|15E2E3| db $E1, $00, $2A, $00, $5A, $00, $94, $00
|15E2EB| db $38, $00, $70, $00, $C0
|15E2F0| db $22 ; Repeat byte
|15E2F1| db $00
|15E2F2| db $E0, $38 ; EXT Raw block
|15E2F4| db $5F, $F6, $B6, $6C, $F8, $F0, $C0, $00
|15E2FC| db $26, $19, $43, $3C, $83, $7C, $87, $78
|15E304| db $7C, $00, $6F, $10, $46, $38, $3F, $00
|15E30C| db $27, $43, $83, $84, $7B, $5F, $7D, $3F
|15E314| db $DF, $00, $6F, $80, $BF, $40, $5F, $20
|15E31C| db $E7, $18, $E3, $1C, $53, $0C, $8C, $00
|15E324| db $63, $BD, $D3, $FC, $A7, $62, $D3, $8C
|15E32C| db $FF
|15E32D| db $84 ; Copy past
|15E32E| dw $00B3
|15E330| db $1E ; Raw block
|15E331| db $EC, $00, $D4, $08, $A6, $18, $C2, $3C
|15E339| db $FE, $00, $FD, $FA, $7A, $DC, $BC, $7A
|15E341| db $FE, $FE, $7F, $00, $6F, $10, $37, $08
|15E349| db $1F, $00, $A3, $00, $CE, $00, $3C
|15E350| db $22 ; Repeat byte
|15E351| db $00
|15E352| db $06 ; Raw block
|15E353| db $7F, $6F, $37, $1F, $A3, $CE, $3C
|15E35A| db $44 ; Repeat word
|15E35B| dw $FF00
|15E35D| db $02 ; Raw block
|15E35E| db $FE, $00, $E0
|15E361| db $28 ; Repeat byte
|15E362| db $00
|15E363| db $03 ; Raw block
|15E364| db $FF, $FF, $FE, $E0
|15E368| db $23 ; Repeat byte
|15E369| db $00
|15E36A| db $02 ; Raw block
|15E36B| db $F0, $00, $C0
|15E36E| db $2C ; Repeat byte
|15E36F| db $00
|15E370| db $01 ; Raw block
|15E371| db $F0, $C0
|15E373| db $25 ; Repeat byte
|15E374| db $00
|15E375| db $00 ; Raw block
|15E376| db $18
|15E377| db $44 ; Repeat word
|15E378| dw $7E00
|15E37A| db $43 ; Repeat word
|15E37B| dw $00FF
|15E37D| db $43 ; Repeat word
|15E37E| dw $007E
|15E380| db $09 ; Raw block
|15E381| db $18, $00, $18, $7E, $7E, $FF, $FF, $56
|15E389| db $7E, $18
|15E38B| db $23 ; Repeat byte
|15E38C| db $00
|15E38D| db $83 ; Copy past
|15E38E| dw $04B6
|15E390| db $00 ; Raw block
|15E391| db $3C
|15E392| db $44 ; Repeat word
|15E393| dw $7E00
|15E395| db $00 ; Raw block
|15E396| db $3C
|15E397| db $22 ; Repeat byte
|15E398| db $00
|15E399| db $43 ; Repeat word
|15E39A| dw $7E3C
|15E39C| db $01 ; Raw block
|15E39D| db $56, $3C
|15E39F| db $FF ; End of GFX 93

;===================================================================================================

GFX_94:
|15E3A0| db $05 ; Raw block
|15E3A1| db $00, $00, $01, $00, $02, $01
|15E3A7| db $43 ; Repeat word
|15E3A8| dw $0304
|15E3AA| db $E0, $3D ; EXT Raw block
|15E3AC| db $09, $07, $08, $07, $0E, $07, $00, $01
|15E3B4| db $03, $07, $07, $0F, $0E, $0E, $00, $00
|15E3BC| db $E3, $00, $34, $E3, $1B, $F7, $98, $FF
|15E3C4| db $54, $BF, $F2, $5F, $BB, $07, $00, $E3
|15E3CC| db $F4, $BB, $9B, $5F, $B7, $F3, $00, $00
|15E3D4| db $60, $00, $9F, $00, $81, $01, $D8, $40
|15E3DC| db $C0, $40, $E3, $62, $7F, $3C, $00, $60
|15E3E4| db $FF, $FE, $A7, $BF, $9D, $43
|15E3EA| db $23 ; Repeat byte
|15E3EB| db $00
|15E3EC| db $13 ; Raw block
|15E3ED| db $E0, $00, $FF, $80, $9F, $60, $97, $68
|15E3F5| db $F8, $07, $BC, $53, $00, $00, $E0, $7F
|15E3FD| db $9F, $9F, $FF, $2F
|15E401| db $25 ; Repeat byte
|15E402| db $00
|15E403| db $09 ; Raw block
|15E404| db $03, $00, $07, $03, $0F, $04, $1C, $00
|15E40C| db $39, $09
|15E40E| db $22 ; Repeat byte
|15E40F| db $00
|15E410| db $04 ; Raw block
|15E411| db $03, $07, $0F, $1F, $36
|15E416| db $23 ; Repeat byte
|15E417| db $00
|15E418| db $03 ; Raw block
|15E419| db $78, $00, $FF, $78
|15E41D| db $22 ; Repeat byte
|15E41E| db $FF
|15E41F| db $07 ; Raw block
|15E420| db $F0, $FF, $40, $9F, $60, $00, $00, $78
|15E428| db $23 ; Repeat byte
|15E429| db $FF
|15E42A| db $E0, $2C ; EXT Raw block
|15E42C| db $9F, $00, $00, $07, $00, $0F, $06, $1C
|15E434| db $07, $36, $1B, $3B, $1D, $71, $3E, $6D
|15E43C| db $36, $00, $07, $0F, $1F, $3F, $3F, $77
|15E444| db $6F, $00, $00, $C0, $00, $A0, $C0, $A0
|15E44C| db $40, $70, $A0, $90, $60, $30, $E0, $50
|15E454| db $E0, $00, $C0, $E0, $A0
|15E459| db $22 ; Repeat byte
|15E45A| db $F0
|15E45B| db $00 ; Raw block
|15E45C| db $D0
|15E45D| db $27 ; Repeat byte
|15E45E| db $00
|15E45F| db $07 ; Raw block
|15E460| db $01, $00, $03, $01, $02, $01, $07, $03
|15E468| db $23 ; Repeat byte
|15E469| db $00
|15E46A| db $18 ; Raw block
|15E46B| db $01, $03, $03, $07, $1C, $00, $3E, $1C
|15E473| db $73, $32, $BF, $4E, $8F, $F6, $17, $FA
|15E47B| db $37, $FA, $B7, $FA, $1C, $22, $4D, $B1
|15E483| db $C9
|15E484| db $22 ; Repeat byte
|15E485| db $F5
|15E486| db $83 ; Copy past
|15E487| dw $0090
|15E489| db $1D ; Raw block
|15E48A| db $0B, $05, $09, $06, $12, $0F, $16, $0F
|15E492| db $17, $0F, $2D, $1F, $00, $07, $0A, $09
|15E49A| db $12, $16, $17, $2D, $C0, $00, $E0, $C0
|15E4A2| db $30, $20, $F0, $E0, $F0, $60
|15E4A8| db $43 ; Repeat word
|15E4A9| dw $A070
|15E4AB| db $13 ; Raw block
|15E4AC| db $60, $80, $C0, $20, $D0, $10, $90, $50
|15E4B4| db $50, $60, $03, $00, $07, $00, $0C, $07
|15E4BC| db $1A, $0F, $1C, $0F
|15E4C0| db $43 ; Repeat word
|15E4C1| dw $1C3B
|15E4C3| db $13 ; Raw block
|15E4C4| db $39, $1F, $03, $07, $0F, $1E, $1C, $3B
|15E4CC| db $3B, $39, $80, $00, $C0, $80, $E0, $40
|15E4D4| db $60, $80, $E0, $00
|15E4D8| db $43 ; Repeat word
|15E4D9| dw $C0A0
|15E4DB| db $05 ; Raw block
|15E4DC| db $E0, $C0, $80, $C0, $E0, $60
|15E4E2| db $23 ; Repeat byte
|15E4E3| db $E0
|15E4E4| db $17 ; Raw block
|15E4E5| db $00, $00, $40, $00, $BF, $00, $9F, $07
|15E4ED| db $C7, $47, $E1, $20, $FF, $3C, $7E, $1D
|15E4F5| db $00, $40, $FF, $E0, $B8, $DF, $C2, $62
|15E4FD| db $23 ; Repeat byte
|15E4FE| db $00
|15E4FF| db $01 ; Raw block
|15E500| db $E0, $00
|15E502| db $43 ; Repeat word
|15E503| dw $609F
|15E505| db $0E ; Raw block
|15E506| db $F7, $08, $78, $87, $7C, $93, $00, $00
|15E50E| db $E0, $9F, $9F, $FF, $7F, $6F, $07
|15E515| db $2E ; Repeat byte
|15E516| db $00
|15E517| db $00 ; Raw block
|15E518| db $07
|15E519| db $26 ; Repeat byte
|15E51A| db $00
|15E51B| db $E0, $29 ; EXT Raw block
|15E51D| db $F4, $23, $AA, $71, $B0, $7F, $48, $3F
|15E525| db $31, $0F, $3F, $05, $1F, $03, $03, $00
|15E52D| db $F8, $BC, $BD, $4B, $23, $2F, $1F, $03
|15E535| db $3F, $1C, $1F, $0E, $1F, $00, $1F, $0E
|15E53D| db $1F, $0F, $3B, $1F, $7D, $3B, $78, $37
|15E545| db $23, $11
|15E547| db $22 ; Repeat byte
|15E548| db $1F
|15E549| db $0C ; Raw block
|15E54A| db $3F, $7F, $7F, $3F, $D8, $EE, $09, $D7
|15E552| db $24, $97, $64, $F7, $04
|15E557| db $83 ; Copy past
|15E558| dw $01CC
|15E55A| db $E0, $7A ; EXT Raw block
|15E55C| db $FF, $80, $27, $F6, $9B, $9B, $FB, $9B
|15E564| db $9B, $FF, $59, $19, $8D, $0C, $B3, $02
|15E56C| db $83, $02, $43, $02, $3F, $1E, $3F, $0F
|15E574| db $7F, $10, $66, $F3, $CD, $FD, $7D, $21
|15E57C| db $30, $7F, $FF, $00, $37, $C8, $38, $C7
|15E584| db $FC, $03, $BF, $48, $37, $C4, $F7, $04
|15E58C| db $DF, $2C, $FF, $3F, $3F, $FF, $37, $3B
|15E594| db $FB, $93, $5F, $22, $6E, $31, $38, $1F
|15E59C| db $37, $1F, $2A, $1F, $28, $1F, $14, $0F
|15E5A4| db $15, $0F, $5F, $6E, $38, $3F, $2F, $2F
|15E5AC| db $17, $17, $AC, $C0, $DE, $0C, $7B, $9A
|15E5B4| db $BF, $CE, $CF, $B6, $C7, $BA, $B7, $FA
|15E5BC| db $DF, $FA, $AC, $D2, $65, $B1, $C9, $C5
|15E5C4| db $B5, $FD, $06, $03, $0E, $07, $0D, $07
|15E5CC| db $0F, $07, $0C, $07, $0B, $04, $07, $03
|15E5D4| db $0D, $03, $07
|15E5D7| db $22 ; Repeat byte
|15E5D8| db $0F
|15E5D9| db $1C ; Raw block
|15E5DA| db $0C, $0B, $07, $0D, $AE, $F0, $48, $B0
|15E5E2| db $B8, $C0, $18, $E0, $D0, $20, $30, $C0
|15E5EA| db $58, $B0, $74, $98, $AE, $48, $B8, $18
|15E5F2| db $D0, $30, $58, $FC, $2D
|15E5F7| db $43 ; Repeat word
|15E5F8| dw $2B1F
|15E5FA| db $02 ; Raw block
|15E5FB| db $1C, $2E, $1F
|15E5FE| db $83 ; Copy past
|15E5FF| dw $00FA
|15E601| db $03 ; Raw block
|15E602| db $0B, $07, $05, $03
|15E606| db $22 ; Repeat byte
|15E607| db $2F
|15E608| db $04 ; Raw block
|15E609| db $2E, $17, $17, $0B, $05
|15E60E| db $83 ; Copy past
|15E60F| dw $013E
|15E611| db $16 ; Raw block
|15E612| db $60, $80, $30, $C0, $BC, $C0, $D2, $EC
|15E61A| db $AF, $DC, $9F, $FA, $60, $E0, $60, $B0
|15E622| db $BC, $DE, $FF, $FF, $38, $1F, $2C
|15E629| db $44 ; Repeat word
|15E62A| dw $2B1F
|15E62C| db $09 ; Raw block
|15E62D| db $2F, $1E, $27, $1F, $13, $0F, $16, $0D
|15E635| db $38, $2C
|15E637| db $22 ; Repeat byte
|15E638| db $2F
|15E639| db $04 ; Raw block
|15E63A| db $27, $13, $16, $CC, $80
|15E63F| db $83 ; Copy past
|15E640| dw $022A
|15E642| db $E0, $5F ; EXT Raw block
|15E644| db $FF, $0E, $6F, $F6, $87, $FA, $67, $FA
|15E64C| db $F7, $FA, $CC, $D2, $65, $F1, $69, $E5
|15E654| db $E5, $F5, $3F, $0C, $1F, $00, $1F, $08
|15E65C| db $3F, $1D, $76, $3C, $F6, $7C, $EE, $5C
|15E664| db $FD, $39, $33, $1F, $1F, $3E, $7F, $FF
|15E66C| db $FF, $FE, $FF, $38, $AE, $49, $3F, $C4
|15E674| db $FF, $00, $EF, $90, $EC, $93, $F9, $86
|15E67C| db $F3, $0C, $C7, $36, $3B, $FF, $4F, $4C
|15E684| db $78, $F0, $03, $00, $05, $03, $0B, $07
|15E68C| db $17, $0F, $14, $0F, $18, $0F, $0D, $03
|15E694| db $0B, $04, $03, $05, $0B, $17, $17, $1F
|15E69C| db $0F, $0F, $F0, $00, $C8, $F0, $E4, $F8
|15E6A4| db $43 ; Repeat word
|15E6A5| dw $FC62
|15E6A7| db $E0, $21 ; EXT Raw block
|15E6A9| db $CC, $F0, $38, $C0, $D8, $E0, $F0, $C8
|15E6B1| db $E4, $E2, $E2, $CC, $38, $D8, $7D, $17
|15E6B9| db $5F, $07, $E7, $03, $FB, $08, $FE, $02
|15E6C1| db $FF, $01, $FF, $18, $FF, $1E, $7F, $7F
|15E6C9| db $FF, $F7
|15E6CB| db $62 ; Increment fill
|15E6CC| db $FD
|15E6CD| db $1B ; Raw block
|15E6CE| db $FF, $F7, $88, $A4, $1B, $B9, $26, $73
|15E6D6| db $6C, $F7, $C8, $F7, $88, $F8, $27, $CF
|15E6DE| db $70, $E7, $E4, $D8, $90, $34, $76, $F8
|15E6E6| db $F9, $7F, $1A, $7F
|15E6EA| db $43 ; Repeat word
|15E6EB| dw $FF2F
|15E6ED| db $E0, $2D ; EXT Raw block
|15E6EF| db $17, $FF, $1B, $FF, $0C, $FF, $17, $FF
|15E6F7| db $31, $7F, $5F, $DF, $EF, $E7, $F3, $F8
|15E6FF| db $FE, $9F, $68, $FF, $80, $F7, $88, $E7
|15E707| db $38, $FC, $63, $F8, $67, $E8, $C7, $FE
|15E70F| db $81, $97, $FF, $E7, $C7, $9C, $98, $38
|15E717| db $7C, $08, $07, $04, $03, $03
|15E71D| db $2A ; Repeat byte
|15E71E| db $00
|15E71F| db $02 ; Raw block
|15E720| db $08, $04, $03
|15E723| db $24 ; Repeat byte
|15E724| db $00
|15E725| db $06 ; Raw block
|15E726| db $8A, $FC, $74, $F8, $08, $F0, $F0
|15E72D| db $28 ; Repeat byte
|15E72E| db $00
|15E72F| db $03 ; Raw block
|15E730| db $FA, $74, $08, $F0
|15E734| db $23 ; Repeat byte
|15E735| db $00
|15E736| db $0A ; Raw block
|15E737| db $0E, $05, $0D, $06, $06, $03, $0F, $04
|15E73F| db $05, $03, $03
|15E742| db $24 ; Repeat byte
|15E743| db $00
|15E744| db $12 ; Raw block
|15E745| db $0E, $0F, $07, $0F, $05, $03, $00, $00
|15E74D| db $B4, $D8, $38, $C0, $C8, $30, $90, $60
|15E755| db $E0, $80, $C0
|15E758| db $24 ; Repeat byte
|15E759| db $00
|15E75A| db $0A ; Raw block
|15E75B| db $FC, $38, $C8, $90, $E0, $C0, $00, $00
|15E763| db $02, $01, $01
|15E766| db $2C ; Repeat byte
|15E767| db $00
|15E768| db $01 ; Raw block
|15E769| db $02, $01
|15E76B| db $25 ; Repeat byte
|15E76C| db $00
|15E76D| db $06 ; Raw block
|15E76E| db $DD, $FE, $32, $FC, $C4, $38, $38
|15E775| db $28 ; Repeat byte
|15E776| db $00
|15E777| db $03 ; Raw block
|15E778| db $FD, $32, $C4, $38
|15E77C| db $23 ; Repeat byte
|15E77D| db $00
|15E77E| db $04 ; Raw block
|15E77F| db $0C, $03, $04, $03, $03
|15E784| db $2A ; Repeat byte
|15E785| db $00
|15E786| db $02 ; Raw block
|15E787| db $0C, $04, $03
|15E78A| db $24 ; Repeat byte
|15E78B| db $00
|15E78C| db $02 ; Raw block
|15E78D| db $22, $FC, $04
|15E790| db $83 ; Copy past
|15E791| dw $03AB
|15E793| db $28 ; Repeat byte
|15E794| db $00
|15E795| db $03 ; Raw block
|15E796| db $22, $04, $08, $F0
|15E79A| db $23 ; Repeat byte
|15E79B| db $00
|15E79C| db $13 ; Raw block
|15E79D| db $FD, $51, $71, $21, $7F, $1E, $7F, $00
|15E7A5| db $FF, $1E, $F5, $3F, $F0, $3F, $F8, $1F
|15E7AD| db $BE, $5E, $61, $7F
|15E7B1| db $23 ; Repeat byte
|15E7B2| db $FF
|15E7B3| db $13 ; Raw block
|15E7B4| db $F7, $08, $F7, $48, $78, $27, $7F, $30
|15E7BC| db $BF, $10, $DF, $02, $E7, $80, $78, $C0
|15E7C4| db $F4, $F6, $F8, $F9
|15E7C8| db $23 ; Repeat byte
|15E7C9| db $FF
|15E7CA| db $0A ; Raw block
|15E7CB| db $15, $0F, $1D, $0B, $2B, $14, $3D, $02
|15E7D3| db $1F, $00, $05
|15E7D6| db $24 ; Repeat byte
|15E7D7| db $00
|15E7D8| db $14 ; Raw block
|15E7D9| db $1F, $1F, $3F, $2B, $1B, $05, $00, $00
|15E7E1| db $A8, $F0, $28, $F0, $48, $B0, $B0, $40
|15E7E9| db $A0, $40, $C0, $00, $80
|15E7EE| db $22 ; Repeat byte
|15E7EF| db $00
|15E7F0| db $10 ; Raw block
|15E7F1| db $E8, $E8, $C8, $F0, $60, $40, $80, $00
|15E7F9| db $FF, $0F, $FE, $07, $FF, $03, $F3, $00
|15E801| db $C0
|15E802| db $26 ; Repeat byte
|15E803| db $00
|15E804| db $22 ; Repeat byte
|15E805| db $FF
|15E806| db $01 ; Raw block
|15E807| db $F3, $C0
|15E809| db $22 ; Repeat byte
|15E80A| db $00
|15E80B| db $0C ; Raw block
|15E80C| db $BF, $E0, $FD, $CF, $FC, $07, $1E, $07
|15E814| db $1F, $03, $0F, $01, $07
|15E819| db $22 ; Repeat byte
|15E81A| db $00
|15E81B| db $22 ; Repeat byte
|15E81C| db $FF
|15E81D| db $0F ; Raw block
|15E81E| db $1F, $1F, $0F, $07, $00, $FF, $18, $FF
|15E826| db $0E, $FE, $03, $E5, $03, $E7, $02, $82
|15E82E| db $24 ; Repeat byte
|15E82F| db $00
|15E830| db $22 ; Repeat byte
|15E831| db $FF
|15E832| db $0F ; Raw block
|15E833| db $E7, $E7, $82, $00, $00, $FF, $40, $F8
|15E83B| db $47, $FD, $CA, $FF, $04, $3F, $03, $1F
|15E843| db $24 ; Repeat byte
|15E844| db $00
|15E845| db $05 ; Raw block
|15E846| db $FE, $F8, $FD, $FF, $3F, $1F
|15E84C| db $23 ; Repeat byte
|15E84D| db $00
|15E84E| db $0F ; Raw block
|15E84F| db $0E, $00, $1D, $0E, $3E, $11, $79, $3E
|15E857| db $7E, $23, $F3, $7C, $C9, $7E, $00, $0E
|15E85F| db $83 ; Copy past
|15E860| dw $01C4
|15E862| db $01 ; Raw block
|15E863| db $FF, $CF
|15E865| db $25 ; Repeat byte
|15E866| db $00
|15E867| db $09 ; Raw block
|15E868| db $80, $00, $40, $80, $E0, $40, $20, $C0
|15E870| db $60, $C0
|15E872| db $22 ; Repeat byte
|15E873| db $00
|15E874| db $01 ; Raw block
|15E875| db $80, $40
|15E877| db $22 ; Repeat byte
|15E878| db $E0
|15E879| db $25 ; Repeat byte
|15E87A| db $00
|15E87B| db $03 ; Raw block
|15E87C| db $03, $00, $04, $03
|15E880| db $43 ; Repeat word
|15E881| dw $070B
|15E883| db $01 ; Raw block
|15E884| db $16, $0F
|15E886| db $22 ; Repeat byte
|15E887| db $00
|15E888| db $19 ; Raw block
|15E889| db $03, $04, $0B, $0B, $17, $0C, $00, $3E
|15E891| db $0C, $F3, $12, $1F, $EE, $EF, $F6, $B7
|15E899| db $FA, $17, $FA, $F7, $FA, $0C, $32, $ED
|15E8A1| db $11, $E9
|15E8A3| db $22 ; Repeat byte
|15E8A4| db $F5
|15E8A5| db $12 ; Raw block
|15E8A6| db $07, $00, $0F, $01, $1D, $0E, $3E, $03
|15E8AE| db $37, $1C, $3B, $1D, $77, $3D, $6F, $33
|15E8B6| db $07, $0F, $1F
|15E8B9| db $22 ; Repeat byte
|15E8BA| db $3F
|15E8BB| db $83 ; Copy past
|15E8BC| dw $00A6
|15E8BE| db $83 ; Copy past
|15E8BF| dw $0138
|15E8C1| db $44 ; Repeat word
|15E8C2| dw $00C0
|15E8C4| db $00 ; Raw block
|15E8C5| db $80
|15E8C6| db $43 ; Repeat word
|15E8C7| dw $C060
|15E8C9| db $01 ; Raw block
|15E8CA| db $00, $80
|15E8CC| db $23 ; Repeat byte
|15E8CD| db $C0
|15E8CE| db $01 ; Raw block
|15E8CF| db $E0, $E0
|15E8D1| db $29 ; Repeat byte
|15E8D2| db $00
|15E8D3| db $44 ; Repeat word
|15E8D4| dw $0001
|15E8D6| db $25 ; Repeat byte
|15E8D7| db $00
|15E8D8| db $22 ; Repeat byte
|15E8D9| db $01
|15E8DA| db $E0, $20 ; EXT Raw block
|15E8DC| db $0E, $00, $1F, $0E, $79, $19, $FF, $27
|15E8E4| db $E7, $7B, $CB, $FD, $9B, $FD, $7B, $FD
|15E8EC| db $0E, $11, $66, $F8, $E4, $FA, $FA, $7A
|15E8F4| db $FC, $0F, $FF, $07, $FF, $03, $E3, $00
|15E8FC| db $80
|15E8FD| db $26 ; Repeat byte
|15E8FE| db $00
|15E8FF| db $22 ; Repeat byte
|15E900| db $FF
|15E901| db $01 ; Raw block
|15E902| db $E3, $80
|15E904| db $22 ; Repeat byte
|15E905| db $00
|15E906| db $00 ; Raw block
|15E907| db $FF
|15E908| db $8B ; Copy past
|15E909| dw $04C9
|15E90B| db $22 ; Repeat byte
|15E90C| db $00
|15E90D| db $22 ; Repeat byte
|15E90E| db $FF
|15E90F| db $83 ; Copy past
|15E910| dw $04DB
|15E912| db $00 ; Raw block
|15E913| db $00
|15E914| db $FF ; End of GFX 94

;===================================================================================================

GFX_95:
|15E915| db $E0, $34 ; EXT Raw block
|15E917| db $00, $00, $08, $00, $1C, $00, $7F, $00
|15E91F| db $99, $69, $FF, $0F, $9F, $67, $9F, $62
|15E927| db $00, $08, $14, $7F, $F6, $F0, $F8, $F5
|15E92F| db $00, $00, $40, $00, $E6, $00, $EF, $06
|15E937| db $FD, $0E, $D9, $3E, $E2, $1C, $F4, $08
|15E93F| db $00, $40, $A6, $2F, $FD, $D9, $A2, $54
|15E947| db $00, $00, $04, $00, $0F
|15E94C| db $87 ; Copy past
|15E94D| dw $0005
|15E94F| db $E0, $25 ; EXT Raw block
|15E951| db $68, $9F, $60, $00, $04, $0B, $7F, $F6
|15E959| db $F0, $F7, $F9, $00, $00, $80, $00, $C6
|15E961| db $00, $DF, $06, $FD, $0E, $99, $7E, $C2
|15E969| db $3C, $E4, $18, $00, $80, $46, $5F, $FD
|15E971| db $99, $42, $24, $18, $00, $3C
|15E977| db $8A ; Copy past
|15E978| dw $0005
|15E97A| db $04 ; Raw block
|15E97B| db $7F, $00, $18, $24, $6F
|15E980| db $83 ; Copy past
|15E981| dw $0014
|15E983| db $00 ; Raw block
|15E984| db $6A
|15E985| db $83 ; Copy past
|15E986| dw $001A
|15E988| db $00 ; Raw block
|15E989| db $FF
|15E98A| db $88 ; Copy past
|15E98B| dw $001F
|15E98D| db $04 ; Raw block
|15E98E| db $F8, $00, $40, $A6, $5F
|15E993| db $83 ; Copy past
|15E994| dw $002C
|15E996| db $00 ; Raw block
|15E997| db $D8
|15E998| db $24 ; Repeat byte
|15E999| db $00
|15E99A| db $11 ; Raw block
|15E99B| db $40, $76, $FF, $34, $7E, $3C, $7E, $18
|15E9A3| db $3C, $00, $18, $00, $00, $40, $7E, $3C
|15E9AB| db $3C, $18
|15E9AD| db $24 ; Repeat byte
|15E9AE| db $00
|15E9AF| db $06 ; Raw block
|15E9B0| db $41, $00, $63, $00, $77, $00, $36
|15E9B7| db $2F ; Repeat byte
|15E9B8| db $00
|15E9B9| db $14 ; Raw block
|15E9BA| db $03, $03, $0F, $07, $1F, $0C, $1F, $19
|15E9C2| db $3E, $18, $3F, $1C, $7F, $00, $00, $03
|15E9CA| db $07, $0F, $1E, $1F, $1F
|15E9CF| db $22 ; Repeat byte
|15E9D0| db $00
|15E9D1| db $14 ; Raw block
|15E9D2| db $C0, $C0, $F0, $E0, $F8, $30, $F8, $98
|15E9DA| db $7C, $18, $FC, $38, $FE, $00, $00, $C0
|15E9E2| db $E0, $F0, $78, $F8, $F8
|15E9E7| db $22 ; Repeat byte
|15E9E8| db $00
|15E9E9| db $14 ; Raw block
|15E9EA| db $03, $01, $07, $02, $1D, $08, $7F, $2D
|15E9F2| db $FF, $67, $FF, $2B, $FF, $00, $00, $03
|15E9FA| db $05, $0F, $6F, $6F, $2F
|15E9FF| db $22 ; Repeat byte
|15EA00| db $00
|15EA01| db $0C ; Raw block
|15EA02| db $C0, $C0, $E0, $E0, $F8, $F0, $FE, $F4
|15EA0A| db $FF, $F0, $FF, $F4, $FF
|15EA0F| db $84 ; Copy past
|15EA10| dw $00E8
|15EA12| db $03 ; Raw block
|15EA13| db $F6, $F6, $F4, $01
|15EA17| db $83 ; Copy past
|15EA18| dw $00F2
|15EA1A| db $00 ; Raw block
|15EA1B| db $03
|15EA1C| db $43 ; Repeat word
|15EA1D| dw $060E
|15EA1F| db $45 ; Repeat word
|15EA20| dw $0C1C
|15EA22| db $04 ; Raw block
|15EA23| db $01, $02, $04, $09, $09
|15EA28| db $22 ; Repeat byte
|15EA29| db $13
|15EA2A| db $05 ; Raw block
|15EA2B| db $C0, $00, $E0, $C0, $40, $00
|15EA31| db $43 ; Repeat word
|15EA32| dw $80C0
|15EA34| db $E0, $4A ; EXT Raw block
|15EA36| db $E0, $C0, $60, $40, $70, $60, $C0, $20
|15EA3E| db $C0, $40, $40, $20, $A0, $90, $01, $00
|15EA46| db $22, $05, $0D, $2E, $13, $7D, $37, $18
|15EA4E| db $77, $28, $7F, $25, $4E, $35, $00, $05
|15EA56| db $2E, $7D, $38, $29, $23, $3B, $00, $00
|15EA5E| db $C0, $6C, $E8, $24, $F4, $D2, $FC, $3A
|15EA66| db $F8, $08, $FC, $0C, $FC, $44, $00, $6C
|15EA6E| db $24, $D2, $3A, $08, $CC, $A4, $7F, $00
|15EA76| db $77, $00, $70, $00, $74, $00, $A3, $00
|15EA7E| db $84, $00, $78
|15EA81| db $22 ; Repeat byte
|15EA82| db $00
|15EA83| db $04 ; Raw block
|15EA84| db $6A, $57, $50, $50, $20
|15EA89| db $22 ; Repeat byte
|15EA8A| db $00
|15EA8B| db $00 ; Raw block
|15EA8C| db $F8
|15EA8D| db $44 ; Repeat word
|15EA8E| dw $3800
|15EA90| db $02 ; Raw block
|15EA91| db $BC, $00, $12
|15EA94| db $83 ; Copy past
|15EA95| dw $0189
|15EA97| db $22 ; Repeat byte
|15EA98| db $00
|15EA99| db $00 ; Raw block
|15EA9A| db $D8
|15EA9B| db $22 ; Repeat byte
|15EA9C| db $28
|15EA9D| db $00 ; Raw block
|15EA9E| db $10
|15EA9F| db $22 ; Repeat byte
|15EAA0| db $00
|15EAA1| db $00 ; Raw block
|15EAA2| db $7F
|15EAA3| db $44 ; Repeat word
|15EAA4| dw $1C00
|15EAA6| db $06 ; Raw block
|15EAA7| db $1E, $00, $48, $00, $43, $00, $3C
|15EAAE| db $22 ; Repeat byte
|15EAAF| db $00
|15EAB0| db $00 ; Raw block
|15EAB1| db $7B
|15EAB2| db $22 ; Repeat byte
|15EAB3| db $14
|15EAB4| db $00 ; Raw block
|15EAB5| db $08
|15EAB6| db $22 ; Repeat byte
|15EAB7| db $00
|15EAB8| db $00 ; Raw block
|15EAB9| db $F8
|15EABA| db $46 ; Repeat word
|15EABB| dw $E000
|15EABD| db $04 ; Raw block
|15EABE| db $68, $00, $08, $00, $F0
|15EAC3| db $22 ; Repeat byte
|15EAC4| db $00
|15EAC5| db $00 ; Raw block
|15EAC6| db $B8
|15EAC7| db $22 ; Repeat byte
|15EAC8| db $A0
|15EAC9| db $00 ; Raw block
|15EACA| db $40
|15EACB| db $22 ; Repeat byte
|15EACC| db $00
|15EACD| db $00 ; Raw block
|15EACE| db $3F
|15EACF| db $44 ; Repeat word
|15EAD0| dw $7000
|15EAD2| db $04 ; Raw block
|15EAD3| db $74, $00, $64, $00, $38
|15EAD8| db $24 ; Repeat byte
|15EAD9| db $00
|15EADA| db $00 ; Raw block
|15EADB| db $2F
|15EADC| db $22 ; Repeat byte
|15EADD| db $50
|15EADE| db $00 ; Raw block
|15EADF| db $20
|15EAE0| db $22 ; Repeat byte
|15EAE1| db $00
|15EAE2| db $00 ; Raw block
|15EAE3| db $70
|15EAE4| db $44 ; Repeat word
|15EAE5| dw $3800
|15EAE7| db $04 ; Raw block
|15EAE8| db $7C, $00, $54, $00, $38
|15EAED| db $24 ; Repeat byte
|15EAEE| db $00
|15EAEF| db $00 ; Raw block
|15EAF0| db $50
|15EAF1| db $22 ; Repeat byte
|15EAF2| db $28
|15EAF3| db $00 ; Raw block
|15EAF4| db $10
|15EAF5| db $22 ; Repeat byte
|15EAF6| db $00
|15EAF7| db $1E ; Raw block
|15EAF8| db $10, $10, $38, $28, $28, $38, $10, $10
|15EB00| db $00, $00, $08, $48, $14, $1C, $08, $08
|15EB08| db $10, $28, $38, $10, $00, $48, $1C, $08
|15EB10| db $00, $00, $1C, $00, $38, $00, $30
|15EB17| db $22 ; Repeat byte
|15EB18| db $00
|15EB19| db $04 ; Raw block
|15EB1A| db $30, $00, $38, $00, $1C
|15EB1F| db $28 ; Repeat byte
|15EB20| db $00
|15EB21| db $0B ; Raw block
|15EB22| db $1F, $7F, $0B, $7F, $20, $7F, $1B, $7F
|15EB2A| db $0E, $3F, $00, $1E
|15EB2E| db $23 ; Repeat byte
|15EB2F| db $00
|15EB30| db $04 ; Raw block
|15EB31| db $1F, $0F, $23, $1B, $0E
|15EB36| db $22 ; Repeat byte
|15EB37| db $00
|15EB38| db $0B ; Raw block
|15EB39| db $F8, $FE, $D0, $FE, $04, $FE, $D8, $FE
|15EB41| db $70, $FC, $00, $78
|15EB45| db $23 ; Repeat byte
|15EB46| db $00
|15EB47| db $04 ; Raw block
|15EB48| db $F8, $F0, $C4, $D8, $70
|15EB4D| db $22 ; Repeat byte
|15EB4E| db $00
|15EB4F| db $0B ; Raw block
|15EB50| db $1C, $7F, $0B, $7F, $14, $6F, $26, $7F
|15EB58| db $1C, $3E, $00, $1C
|15EB5C| db $23 ; Repeat byte
|15EB5D| db $00
|15EB5E| db $04 ; Raw block
|15EB5F| db $1F, $3B, $2C, $3E, $1C
|15EB64| db $22 ; Repeat byte
|15EB65| db $00
|15EB66| db $0B ; Raw block
|15EB67| db $F8, $FE, $C4, $FE, $14, $EE, $4C, $FE
|15EB6F| db $38, $7C, $00, $38
|15EB73| db $23 ; Repeat byte
|15EB74| db $00
|15EB75| db $04 ; Raw block
|15EB76| db $F8, $DC, $2C, $7C, $38
|15EB7B| db $22 ; Repeat byte
|15EB7C| db $00
|15EB7D| db $03 ; Raw block
|15EB7E| db $1B, $0B, $3F, $1A
|15EB82| db $43 ; Repeat word
|15EB83| dw $1D3F
|15EB85| db $09 ; Raw block
|15EB86| db $3E, $1D, $1C, $0B, $0E, $03, $03, $00
|15EB8E| db $14, $25
|15EB90| db $22 ; Repeat byte
|15EB91| db $23
|15EB92| db $E0, $4A ; EXT Raw block
|15EB94| db $17, $0F, $03, $B0, $A0, $F8, $B0, $F8
|15EB9C| db $70, $B8, $30, $F8, $70, $70, $A0, $E0
|15EBA4| db $80, $80, $00, $50, $48, $88, $C8, $88
|15EBAC| db $D0, $E0, $80, $1A, $69, $3B, $59, $BD
|15EBB4| db $90, $9E, $80, $1F, $2B, $2C, $04, $17
|15EBBC| db $03, $03, $00, $77, $67, $A7, $93, $30
|15EBC4| db $0B, $04, $03, $B8, $24, $BC, $34, $70
|15EBCC| db $18, $F0, $08, $F2, $A2, $62, $42, $C8
|15EBD4| db $84, $90, $08, $D4, $C4, $C8, $98, $12
|15EBDC| db $A2, $44, $88
|15EBDF| db $2C ; Repeat byte
|15EBE0| db $00
|15EBE1| db $02 ; Raw block
|15EBE2| db $01, $01, $03
|15EBE5| db $26 ; Repeat byte
|15EBE6| db $00
|15EBE7| db $00 ; Raw block
|15EBE8| db $01
|15EBE9| db $2C ; Repeat byte
|15EBEA| db $00
|15EBEB| db $02 ; Raw block
|15EBEC| db $80, $80, $C0
|15EBEF| db $26 ; Repeat byte
|15EBF0| db $00
|15EBF1| db $00 ; Raw block
|15EBF2| db $80
|15EBF3| db $24 ; Repeat byte
|15EBF4| db $00
|15EBF5| db $84 ; Copy past
|15EBF6| dw $00C3
|15EBF8| db $01 ; Raw block
|15EBF9| db $0E, $1F
|15EBFB| db $43 ; Repeat word
|15EBFC| dw $3F0C
|15EBFE| db $22 ; Repeat byte
|15EBFF| db $00
|15EC00| db $01 ; Raw block
|15EC01| db $03, $07
|15EC03| db $22 ; Repeat byte
|15EC04| db $0F
|15EC05| db $24 ; Repeat byte
|15EC06| db $00
|15EC07| db $06 ; Raw block
|15EC08| db $C0, $C0, $F0, $F0, $F8, $10, $F8
|15EC0F| db $43 ; Repeat word
|15EC10| dw $9C68
|15EC12| db $22 ; Repeat byte
|15EC13| db $00
|15EC14| db $04 ; Raw block
|15EC15| db $C0, $F0, $F0, $98, $98
|15EC1A| db $22 ; Repeat byte
|15EC1B| db $00
|15EC1C| db $0A ; Raw block
|15EC1D| db $03, $03, $07, $06, $0F, $04, $0F, $06
|15EC25| db $0F, $03, $07
|15EC28| db $83 ; Copy past
|15EC29| dw $030E
|15EC2B| db $00 ; Raw block
|15EC2C| db $03
|15EC2D| db $22 ; Repeat byte
|15EC2E| db $07
|15EC2F| db $01 ; Raw block
|15EC30| db $03, $01
|15EC32| db $22 ; Repeat byte
|15EC33| db $00
|15EC34| db $E0, $2C ; EXT Raw block
|15EC36| db $C0, $40, $E0, $A0, $70, $00, $F0, $20
|15EC3E| db $F0, $40, $E0, $00, $C0, $00, $00, $C0
|15EC46| db $60, $E0, $E0, $C0, $80, $00, $00, $02
|15EC4E| db $01, $05, $0A, $0A, $15, $15, $2A, $2A
|15EC56| db $55, $55, $2A, $2A, $15, $00, $02, $05
|15EC5E| db $0A, $15, $2A, $55, $2A
|15EC63| db $23 ; Repeat byte
|15EC64| db $00
|15EC65| db $13 ; Raw block
|15EC66| db $40, $80, $A0, $40, $50, $A8, $A8, $54
|15EC6E| db $54, $A8, $AA, $54, $00, $00, $40, $A0
|15EC76| db $50, $A8, $54, $AA
|15EC7A| db $22 ; Repeat byte
|15EC7B| db $00
|15EC7C| db $83 ; Copy past
|15EC7D| dw $0363
|15EC7F| db $07 ; Raw block
|15EC80| db $3F, $0D, $7E, $2C, $7F, $0E, $7F, $2B
|15EC88| db $84 ; Copy past
|15EC89| dw $00CF
|15EC8B| db $03 ; Raw block
|15EC8C| db $2E, $2F, $0F, $2F
|15EC90| db $22 ; Repeat byte
|15EC91| db $00
|15EC92| db $0B ; Raw block
|15EC93| db $C0, $C0, $E0, $60, $FC, $B0, $7E, $34
|15EC9B| db $FE, $70, $FE, $D4
|15EC9F| db $84 ; Copy past
|15ECA0| dw $00E7
|15ECA2| db $03 ; Raw block
|15ECA3| db $74, $F4, $F0, $F4
|15ECA7| db $23 ; Repeat byte
|15ECA8| db $00
|15ECA9| db $13 ; Raw block
|15ECAA| db $1E, $00, $3F, $1E, $7F, $3F, $7E, $1C
|15ECB2| db $DF, $63, $8F, $7D, $00, $00, $1E, $21
|15ECBA| db $40, $63, $FC, $FE
|15ECBE| db $25 ; Repeat byte
|15ECBF| db $00
|15ECC0| db $09 ; Raw block
|15ECC1| db $E0, $00, $F8, $E0, $FC, $F8, $1E, $1C
|15ECC9| db $07, $06
|15ECCB| db $22 ; Repeat byte
|15ECCC| db $00
|15ECCD| db $E0, $34 ; EXT Raw block
|15ECCF| db $E0, $18, $04, $E2, $F9, $0C, $0C, $00
|15ECD7| db $03, $26, $11, $5F, $06, $3F, $13, $7C
|15ECDF| db $20, $DB, $50, $D6, $53, $0C, $03, $17
|15ECE7| db $19, $20, $47, $AF, $AF, $00, $00, $E0
|15ECEF| db $08, $72, $EC, $58, $B8, $A4, $5C, $D4
|15ECF7| db $EE, $DA, $24, $7D, $CA, $00, $08, $FC
|15ECFF| db $B8, $DC, $2E, $E4, $EA
|15ED04| db $83 ; Copy past
|15ED05| dw $0315
|15ED07| db $13 ; Raw block
|15ED08| db $07, $01, $0F, $07, $1E, $0E, $5E, $0A
|15ED10| db $BF, $18, $5E, $00, $00, $01, $06, $08
|15ED18| db $11, $55, $E3, $73
|15ED1C| db $83 ; Copy past
|15ED1D| dw $040C
|15ED1F| db $E0, $4F ; EXT Raw block
|15ED21| db $38, $20, $24, $18, $74, $38, $DE, $74
|15ED29| db $BE, $EC, $E6, $44, $00, $E0, $D8, $E4
|15ED31| db $F4, $FA, $F2, $FA, $02, $07, $07, $1F
|15ED39| db $1B, $3F, $3B, $7F, $37, $7F, $19, $3F
|15ED41| db $07, $1F, $00, $07, $03, $07, $1F, $3F
|15ED49| db $3F, $1F, $07, $00, $40, $E0, $60, $B8
|15ED51| db $78, $BC, $3C, $DE, $0C, $FE, $98, $FC
|15ED59| db $E0, $F8, $00, $E0, $C0, $A0, $B8, $DC
|15ED61| db $FC, $F8, $E0, $00, $0C, $3F, $0A, $3F
|15ED69| db $07, $1F, $03, $1F, $00, $0F, $00, $03
|15ED71| db $23 ; Repeat byte
|15ED72| db $00
|15ED73| db $03 ; Raw block
|15ED74| db $0F, $0F, $07, $03
|15ED78| db $23 ; Repeat byte
|15ED79| db $00
|15ED7A| db $0B ; Raw block
|15ED7B| db $08, $FC, $18, $FC, $F0, $F8, $E0, $F8
|15ED83| db $00, $F0, $00, $C0
|15ED87| db $23 ; Repeat byte
|15ED88| db $00
|15ED89| db $03 ; Raw block
|15ED8A| db $F8, $F8, $F0, $E0
|15ED8E| db $24 ; Repeat byte
|15ED8F| db $00
|15ED90| db $00 ; Raw block
|15ED91| db $03
|15ED92| db $44 ; Repeat word
|15ED93| dw $0703
|15ED95| db $02 ; Raw block
|15ED96| db $1F, $17, $3F
|15ED99| db $85 ; Copy past
|15ED9A| dw $048A
|15ED9C| db $09 ; Raw block
|15ED9D| db $01, $03, $03, $07, $1F, $1F, $07, $00
|15EDA5| db $00, $C0
|15EDA7| db $43 ; Repeat word
|15EDA8| dw $A040
|15EDAA| db $03 ; Raw block
|15EDAB| db $20, $D8, $08, $FC
|15EDAF| db $85 ; Copy past
|15EDB0| dw $04A2
|15EDB2| db $22 ; Repeat byte
|15EDB3| db $80
|15EDB4| db $05 ; Raw block
|15EDB5| db $C0, $F8, $F8, $E0, $00, $15
|15EDBB| db $85 ; Copy past
|15EDBC| dw $0395
|15EDBE| db $04 ; Raw block
|15EDBF| db $15, $15, $2A, $0A, $15
|15EDC4| db $23 ; Repeat byte
|15EDC5| db $00
|15EDC6| db $11 ; Raw block
|15EDC7| db $15, $0A, $15, $2A, $15, $0A, $00, $00
|15EDCF| db $54, $AA, $AA, $54, $54, $A8, $A8, $54
|15EDD7| db $10, $28
|15EDD9| db $25 ; Repeat byte
|15EDDA| db $00
|15EDDB| db $04 ; Raw block
|15EDDC| db $54, $AA, $54, $A8, $10
|15EDE1| db $22 ; Repeat byte
|15EDE2| db $00
|15EDE3| db $0B ; Raw block
|15EDE4| db $5C, $FF, $2B, $DF, $5C, $FF, $36, $7F
|15EDEC| db $02, $37, $01, $03
|15EDF0| db $83 ; Copy past
|15EDF1| dw $0316
|15EDF3| db $03 ; Raw block
|15EDF4| db $7F, $5B, $7C, $37
|15EDF8| db $83 ; Copy past
|15EDF9| dw $0376
|15EDFB| db $0B ; Raw block
|15EDFC| db $3A, $FF, $D4, $FB, $3A, $FF, $6C, $FE
|15EE04| db $C0, $6C, $80, $C0
|15EE08| db $83 ; Copy past
|15EE09| dw $032E
|15EE0B| db $10 ; Raw block
|15EE0C| db $FE, $DA, $3E, $EC, $40, $80, $00, $00
|15EE14| db $DF, $63, $76, $14, $7F, $3F, $3F, $1E
|15EE1C| db $1E
|15EE1D| db $26 ; Repeat byte
|15EE1E| db $00
|15EE1F| db $04 ; Raw block
|15EE20| db $FC, $6B, $40, $21, $1E
|15EE25| db $22 ; Repeat byte
|15EE26| db $00
|15EE27| db $06 ; Raw block
|15EE28| db $3B, $3A, $FF, $E2, $E2, $80, $80
|15EE2F| db $28 ; Repeat byte
|15EE30| db $00
|15EE31| db $03 ; Raw block
|15EE32| db $C5, $1D, $62, $80
|15EE36| db $23 ; Repeat byte
|15EE37| db $00
|15EE38| db $E0, $23 ; EXT Raw block
|15EE3A| db $DB, $50, $7C, $20, $3F, $13, $9F, $06
|15EE42| db $43, $8C, $02, $43, $30, $30, $00, $00
|15EE4A| db $AF, $47, $20, $19, $8C, $43, $30, $00
|15EE52| db $DE, $28, $DE, $AA, $BC, $56, $78, $98
|15EE5A| db $F4, $72, $D8, $C6
|15EE5E| db $83 ; Copy past
|15EE5F| dw $009E
|15EE61| db $E0, $37 ; EXT Raw block
|15EE63| db $E8, $6A, $D6, $98, $72, $C6, $18, $00
|15EE6B| db $5F, $01, $5F, $06, $73, $12, $93, $00
|15EE73| db $7F, $14, $14, $00, $17, $00, $08, $00
|15EE7B| db $72, $79, $6C, $FE, $6B, $1F, $1F, $08
|15EE83| db $4E, $0C, $FC, $38, $FC, $18, $F8, $70
|15EE8B| db $F0, $40, $40, $00, $A0, $00, $40, $00
|15EE93| db $F2, $C4, $24, $08, $B0, $C0, $E0, $40
|15EE9B| db $FF ; End of GFX 95

;===================================================================================================

GFX_96:
|15EE9C| db $E0, $38 ; EXT Raw block
|15EE9E| db $03, $00, $0C, $00, $15, $00, $17, $00
|15EEA6| db $2F, $00, $37, $00, $3B, $10, $34, $18
|15EEAE| db $03, $0F, $1E, $1C, $33, $38, $3C, $3F
|15EEB6| db $C0, $00, $E2, $00, $B7, $60, $DE, $30
|15EEBE| db $69, $90, $EA, $10, $FE, $00, $FA, $00
|15EEC6| db $C0, $62, $F5, $BA, $9F, $FE, $1E, $16
|15EECE| db $03, $00, $05, $02, $0E, $05, $1F, $08
|15EED6| db $28
|15EED7| db $43 ; Repeat word
|15EED8| dw $2F07
|15EEDA| db $E0, $41 ; EXT Raw block
|15EEDC| db $00, $37, $00, $03, $07, $0D, $18, $3F
|15EEE4| db $3F, $37, $38, $C0, $00, $30, $00, $D8
|15EEEC| db $00, $78, $C0, $6C, $C0, $CC, $80, $EC
|15EEF4| db $00, $BC, $08, $C0, $F0, $F8, $F8, $F4
|15EEFC| db $F4, $BC, $F4, $03, $00, $0F, $00, $1B
|15EF04| db $0E, $1F, $09, $35, $1B, $37, $1C, $7F
|15EF0C| db $18, $F8, $00, $03, $0E, $1F, $19, $3B
|15EF14| db $3F, $7C, $9F, $C0, $00, $F0, $00, $58
|15EF1C| db $00, $A8
|15EF1E| db $44 ; Repeat word
|15EF1F| dw $F400
|15EF21| db $E0, $23 ; EXT Raw block
|15EF23| db $EC, $00, $3C, $00, $C0, $30, $B8, $F8
|15EF2B| db $EC, $8C, $1C, $F4, $03, $00, $05, $00
|15EF33| db $0B, $00, $1E, $01, $2D, $06, $2E, $01
|15EF3B| db $37, $00, $33, $00, $03, $06, $0D, $1F
|15EF43| db $3E, $37, $39, $3C
|15EF47| db $83 ; Copy past
|15EF48| dw $0078
|15EF4A| db $E0, $2B ; EXT Raw block
|15EF4C| db $D8, $20, $38, $D0, $FC, $20, $7C, $E0
|15EF54| db $EA, $00, $36, $00, $C0, $30, $F8, $D8
|15EF5C| db $34, $F4, $FE, $FE, $03, $00, $0F, $02
|15EF64| db $19, $0F, $1A, $0D, $26, $19, $31, $0F
|15EF6C| db $6B, $06, $76, $00, $03, $0F, $1F, $1D
|15EF74| db $39, $3F, $7F, $5F
|15EF78| db $83 ; Copy past
|15EF79| dw $0078
|15EF7B| db $E0, $2E ; EXT Raw block
|15EF7D| db $B8, $00, $C8, $80, $D4, $80, $E4, $80
|15EF85| db $94, $00, $6C, $00, $C0, $30, $D8, $F8
|15EF8D| db $FC, $FC, $EC, $9C, $20, $00, $40, $00
|15EF95| db $F0, $00, $D0, $00, $F8, $00, $CF, $00
|15EF9D| db $C9, $00, $FC, $00, $20, $60, $B0, $F0
|15EFA5| db $B8, $FF, $BF, $FF, $04, $00, $02
|15EFAC| db $44 ; Repeat word
|15EFAD| dw $0F00
|15EFAF| db $0F ; Raw block
|15EFB0| db $1F, $00, $F7, $00, $93, $00, $3F, $00
|15EFB8| db $04, $06, $0D, $0B, $1D, $FB, $FD, $FF
|15EFC0| db $23 ; Repeat byte
|15EFC1| db $00
|15EFC2| db $0A ; Raw block
|15EFC3| db $3C, $00, $7C, $00, $D0, $00, $BF, $00
|15EFCB| db $FF, $00, $EF
|15EFCE| db $22 ; Repeat byte
|15EFCF| db $00
|15EFD0| db $05 ; Raw block
|15EFD1| db $3C, $50, $BC, $FF, $C5, $95
|15EFD7| db $27 ; Repeat byte
|15EFD8| db $00
|15EFD9| db $06 ; Raw block
|15EFDA| db $04, $00, $EC, $00, $FC, $00, $74
|15EFE1| db $24 ; Repeat byte
|15EFE2| db $00
|15EFE3| db $03 ; Raw block
|15EFE4| db $0C, $9C, $54, $EC
|15EFE8| db $25 ; Repeat byte
|15EFE9| db $00
|15EFEA| db $88 ; Copy past
|15EFEB| dw $0124
|15EFED| db $23 ; Repeat byte
|15EFEE| db $00
|15EFEF| db $84 ; Copy past
|15EFF0| dw $0132
|15EFF2| db $29 ; Repeat byte
|15EFF3| db $00
|15EFF4| db $84 ; Copy past
|15EFF5| dw $0140
|15EFF7| db $25 ; Repeat byte
|15EFF8| db $00
|15EFF9| db $0F ; Raw block
|15EFFA| db $0C, $9C, $54, $3B, $04, $3C, $13, $3E
|15F002| db $01, $3F, $00, $13, $00, $0C, $00, $03
|15F00A| db $22 ; Repeat byte
|15F00B| db $00
|15F00C| db $09 ; Raw block
|15F00D| db $37, $2F, $3F, $2F, $1C, $0F, $03, $00
|15F015| db $16, $04
|15F017| db $43 ; Repeat word
|15F018| dw $00EC
|15F01A| db $06 ; Raw block
|15F01B| db $DC, $08, $68, $00, $B0, $00, $C0
|15F022| db $22 ; Repeat byte
|15F023| db $00
|15F024| db $14 ; Raw block
|15F025| db $FA, $FC, $DC, $34, $F8, $F0, $C0, $00
|15F02D| db $29, $10, $3F, $10, $7E, $00, $7F, $00
|15F035| db $3F, $00, $12, $00, $0F
|15F03A| db $22 ; Repeat byte
|15F03B| db $00
|15F03C| db $06 ; Raw block
|15F03D| db $3F, $3E, $7F, $5D, $21, $1F, $0F
|15F044| db $43 ; Repeat word
|15F045| dw $5C00
|15F047| db $09 ; Raw block
|15F048| db $08, $FC, $88, $F8, $10, $D8, $10, $30
|15F050| db $00, $C0
|15F052| db $22 ; Repeat byte
|15F053| db $00
|15F054| db $0E ; Raw block
|15F055| db $FC, $F4, $64, $C8, $28, $F0, $C0, $00
|15F05D| db $5F, $00, $2F, $00, $2C, $00, $37
|15F064| db $85 ; Copy past
|15F065| dw $0187
|15F067| db $22 ; Repeat byte
|15F068| db $00
|15F069| db $03 ; Raw block
|15F06A| db $7F, $34, $3F, $3B
|15F06E| db $83 ; Copy past
|15F06F| dw $0194
|15F071| db $0C ; Raw block
|15F072| db $F4, $00, $BC, $00, $5C, $00, $A4, $00
|15F07A| db $A8, $00, $30, $00, $C0
|15F07F| db $22 ; Repeat byte
|15F080| db $00
|15F081| db $0D ; Raw block
|15F082| db $FC, $CC, $E4, $FC, $78, $F0, $C0, $00
|15F08A| db $3D, $10, $3F, $08, $36, $09
|15F090| db $83 ; Copy past
|15F091| dw $0008
|15F093| db $02 ; Raw block
|15F094| db $18, $00, $07
|15F097| db $22 ; Repeat byte
|15F098| db $00
|15F099| db $00 ; Raw block
|15F09A| db $3E
|15F09B| db $22 ; Repeat byte
|15F09C| db $3F
|15F09D| db $10 ; Raw block
|15F09E| db $38, $1F, $07, $00, $6A, $00, $5C, $10
|15F0A6| db $FC, $08, $AC, $08, $58, $10, $B0, $00
|15F0AE| db $C0
|15F0AF| db $22 ; Repeat byte
|15F0B0| db $00
|15F0B1| db $0E ; Raw block
|15F0B2| db $DE, $EC, $F4, $74, $E8, $F0, $C0, $00
|15F0BA| db $2D, $00, $3A, $00, $37, $04, $2E
|15F0C1| db $85 ; Copy past
|15F0C2| dw $0187
|15F0C4| db $22 ; Repeat byte
|15F0C5| db $00
|15F0C6| db $03 ; Raw block
|15F0C7| db $3E, $37, $3B, $3D
|15F0CB| db $83 ; Copy past
|15F0CC| dw $0194
|15F0CE| db $08 ; Raw block
|15F0CF| db $FC, $00, $EC, $00, $14, $00, $F4, $00
|15F0D7| db $18
|15F0D8| db $83 ; Copy past
|15F0D9| dw $0201
|15F0DB| db $22 ; Repeat byte
|15F0DC| db $00
|15F0DD| db $03 ; Raw block
|15F0DE| db $74, $B4, $FC, $FC
|15F0E2| db $83 ; Copy past
|15F0E3| dw $01AC
|15F0E5| db $0A ; Raw block
|15F0E6| db $EB, $00, $CC, $00, $6B, $00, $3F, $00
|15F0EE| db $2C, $08, $18
|15F0F1| db $24 ; Repeat byte
|15F0F2| db $00
|15F0F3| db $E0, $24 ; EXT Raw block
|15F0F5| db $9F, $BF, $7F, $3F, $34, $18, $00, $00
|15F0FD| db $D7, $00, $33, $00, $D6, $00, $EE, $00
|15F105| db $7A, $00, $72, $00, $5A, $00, $3C, $00
|15F10D| db $F9, $FD, $FE, $DE, $7E, $4E, $66, $3C
|15F115| db $D5, $00, $BF, $00, $48
|15F11A| db $46 ; Repeat word
|15F11B| dw $0700
|15F11D| db $E0, $48 ; EXT Raw block
|15F11F| db $03, $00, $01, $00, $BF, $FF, $4F, $07
|15F127| db $05, $04, $02, $01, $8C, $00, $7C, $08
|15F12F| db $A8, $00, $98, $00, $D8, $00, $E8, $00
|15F137| db $90, $00, $E0, $00, $FC, $F4, $F8, $78
|15F13F| db $38, $F8, $70, $E0, $EF, $00, $D5, $00
|15F147| db $BE, $00, $4F, $00, $1F, $00, $3E, $00
|15F14F| db $19, $00, $0F, $00, $95, $BF, $FF, $4C
|15F157| db $14, $23, $17, $0F, $74, $00, $9C, $00
|15F15F| db $76, $00, $AE, $04, $56, $00, $FC, $00
|15F167| db $80
|15F168| db $22 ; Repeat byte
|15F169| db $00
|15F16A| db $0A ; Raw block
|15F16B| db $EC, $FC, $EE, $7A, $FE, $FC, $80, $00
|15F173| db $40, $00, $E0
|15F176| db $44 ; Repeat word
|15F177| dw $F000
|15F179| db $12 ; Raw block
|15F17A| db $CC, $00, $EB, $00, $5C, $00, $27, $00
|15F182| db $40, $A0, $90, $D0, $BC, $BF, $7B, $3C
|15F18A| db $02, $00, $07
|15F18D| db $44 ; Repeat word
|15F18E| dw $0F00
|15F190| db $E0, $3F ; EXT Raw block
|15F192| db $33, $00, $D7, $00, $3A, $00, $E4, $00
|15F19A| db $02, $05, $09, $0B, $3D, $FD, $DE, $3C
|15F1A2| db $07, $00, $09, $00, $17, $00, $3D, $00
|15F1AA| db $6A, $00, $F4, $00, $CD, $00, $9F, $00
|15F1B2| db $07, $0F, $1B, $23, $77, $9F, $BF, $FE
|15F1BA| db $80, $00, $FC, $00, $F2, $00, $EF, $00
|15F1C2| db $6D, $00, $F1, $00, $EA, $00, $CE, $00
|15F1CA| db $80, $FC, $FE, $F9, $F7, $BF, $1E, $FE
|15F1D2| db $23 ; Repeat byte
|15F1D3| db $00
|15F1D4| db $02 ; Raw block
|15F1D5| db $3B, $00, $77
|15F1D8| db $84 ; Copy past
|15F1D9| dw $012B
|15F1DB| db $02 ; Raw block
|15F1DC| db $AE, $00, $66
|15F1DF| db $22 ; Repeat byte
|15F1E0| db $00
|15F1E1| db $08 ; Raw block
|15F1E2| db $3B, $4F, $9F, $B3, $F5, $7D, $3C, $00
|15F1EA| db $FE
|15F1EB| db $46 ; Repeat word
|15F1EC| dw $FD00
|15F1EE| db $0D ; Raw block
|15F1EF| db $FE, $00, $94, $00, $FC, $00, $3C, $FA
|15F1F7| db $FB, $F7, $E7, $0E, $FC, $EC
|15F1FD| db $23 ; Repeat byte
|15F1FE| db $00
|15F1FF| db $13 ; Raw block
|15F200| db $03, $00, $05, $03, $0E, $05, $1F, $00
|15F208| db $30, $0F, $47, $3F, $00, $00, $03, $05
|15F210| db $0E, $1F, $37, $77
|15F214| db $23 ; Repeat byte
|15F215| db $00
|15F216| db $E0, $43 ; EXT Raw block
|15F218| db $C0, $00, $F8, $C0, $1F, $F8, $EF, $1F
|15F220| db $10, $FF, $E8, $FF, $00, $00, $C0, $F8
|15F228| db $1F, $EF, $FF, $EF, $02, $FF, $F3, $0F
|15F230| db $09, $FF, $F5, $FF, $07, $FF, $FB, $07
|15F238| db $46, $3F, $8D, $7E, $0F, $FF, $FF, $F7
|15F240| db $07, $FF, $7E, $FD, $24, $F8, $16, $F8
|15F248| db $12, $FC, $22, $FC, $0A, $F4, $06, $F8
|15F250| db $62, $BC, $A2, $7C, $E4, $F6, $F2, $62
|15F258| db $0A, $06, $62, $A2
|15F25C| db $25 ; Repeat byte
|15F25D| db $00
|15F25E| db $09 ; Raw block
|15F25F| db $E0, $00, $10, $E0, $C8, $F0, $68, $F0
|15F267| db $2C, $F0
|15F269| db $22 ; Repeat byte
|15F26A| db $00
|15F26B| db $04 ; Raw block
|15F26C| db $E0, $10, $C8, $E8, $EC
|15F271| db $29 ; Repeat byte
|15F272| db $00
|15F273| db $05 ; Raw block
|15F274| db $01, $00, $03, $01, $07, $02
|15F27A| db $24 ; Repeat byte
|15F27B| db $00
|15F27C| db $02 ; Raw block
|15F27D| db $01, $03, $07
|15F280| db $23 ; Repeat byte
|15F281| db $00
|15F282| db $E0, $22 ; EXT Raw block
|15F284| db $30, $00, $7C, $30, $FA, $04, $7D, $FA
|15F28C| db $0E, $FF, $F1, $0F, $00, $00, $30, $7C
|15F294| db $FA, $7D, $0E, $F7, $38, $F7, $8C, $FF
|15F29C| db $32, $FF, $CC, $33, $FA, $0F, $E0, $7F
|15F2A4| db $47, $FF, $4C
|15F2A7| db $22 ; Repeat byte
|15F2A8| db $FF
|15F2A9| db $1D ; Raw block
|15F2AA| db $33, $CD, $FF, $FF, $DF, $CC, $12, $FC
|15F2B2| db $8A, $FC, $C1, $FE, $41, $FE, $49, $FE
|15F2BA| db $D9, $FE, $13, $FC, $C2, $3C, $F2, $FA
|15F2C2| db $F9, $F9, $D9, $D9, $13, $C2
|15F2C8| db $27 ; Repeat byte
|15F2C9| db $00
|15F2CA| db $07 ; Raw block
|15F2CB| db $70, $00, $88, $70, $64, $F8, $94, $F8
|15F2D3| db $23 ; Repeat byte
|15F2D4| db $00
|15F2D5| db $04 ; Raw block
|15F2D6| db $70, $88, $64, $F4, $33
|15F2DB| db $84 ; Copy past
|15F2DC| dw $0007
|15F2DE| db $04 ; Raw block
|15F2DF| db $2A, $00, $37, $00, $1E
|15F2E4| db $24 ; Repeat byte
|15F2E5| db $00
|15F2E6| db $06 ; Raw block
|15F2E7| db $3F, $3C, $3B, $3D, $2F, $1E, $00
|15F2EE| db $84 ; Copy past
|15F2EF| dw $0141
|15F2F1| db $1E ; Raw block
|15F2F2| db $D4, $00, $2E, $00, $EE, $00, $56, $00
|15F2FA| db $42, $00, $3C, $00, $DC, $3C, $FC, $F6
|15F302| db $F6, $7A, $7E, $3C, $67, $00, $07, $00
|15F30A| db $0A, $00, $19, $00, $1D, $00, $0F
|15F311| db $24 ; Repeat byte
|15F312| db $00
|15F313| db $17 ; Raw block
|15F314| db $64, $04, $0F, $17, $13, $0F, $00, $00
|15F31C| db $32, $00, $46, $00, $7A, $00, $C4, $00
|15F324| db $E2, $00, $F2, $00, $E4, $00, $78, $00
|15F32C| db $22 ; Repeat byte
|15F32D| db $FE
|15F32E| db $04 ; Raw block
|15F32F| db $FC, $DE, $BE, $9C, $78
|15F334| db $83 ; Copy past
|15F335| dw $02DC
|15F337| db $0C ; Raw block
|15F338| db $0A, $00, $0D, $00, $1E, $00, $1F, $00
|15F340| db $08, $00, $07, $00, $1F
|15F345| db $22 ; Repeat byte
|15F346| db $0F
|15F347| db $10 ; Raw block
|15F348| db $15, $13, $0F, $07, $74, $00, $EC, $00
|15F350| db $1C, $00, $F4, $00, $64, $00, $78, $00
|15F358| db $80
|15F359| db $22 ; Repeat byte
|15F35A| db $00
|15F35B| db $00 ; Raw block
|15F35C| db $9C
|15F35D| db $23 ; Repeat byte
|15F35E| db $FC
|15F35F| db $0E ; Raw block
|15F360| db $F8, $80, $00, $57, $38, $A9, $70, $DF
|15F368| db $60, $F4, $4F, $53, $0F, $28, $1F
|15F36F| db $83 ; Copy past
|15F370| dw $0510
|15F372| db $07 ; Raw block
|15F373| db $77, $E9, $DF, $F7, $5B, $38, $77, $E9
|15F37B| db $97 ; Copy past
|15F37C| dw $03C0
|15F37E| db $06 ; Raw block
|15F37F| db $BB, $FC, $C4, $F8, $38, $C0, $C0
|15F386| db $22 ; Repeat byte
|15F387| db $00
|15F388| db $83 ; Copy past
|15F389| dw $0412
|15F38B| db $E0, $49 ; EXT Raw block
|15F38D| db $01, $00, $FB, $C4, $38, $C0, $00, $01
|15F395| db $03, $01, $B2, $7C, $51, $3E, $69, $1E
|15F39D| db $49, $3E, $92, $7C, $34, $F8, $C8, $F0
|15F3A5| db $F0, $00, $B2, $71, $79, $79, $F2, $F4
|15F3AD| db $C8, $F0, $B3, $60, $D4, $63, $59, $27
|15F3B5| db $32, $0F, $15, $0E, $1E, $0C, $0A, $04
|15F3BD| db $04, $00, $F3, $D7, $5F, $3E, $1D, $1E
|15F3C5| db $0A, $04, $07, $01, $06, $01, $05, $03
|15F3CD| db $04, $03, $0A, $07, $0B, $06, $0D, $06
|15F3D5| db $0A, $05
|15F3D7| db $22 ; Repeat byte
|15F3D8| db $07
|15F3D9| db $04 ; Raw block
|15F3DA| db $06, $0E, $0F, $0D, $0B
|15F3DF| db $8E ; Copy past
|15F3E0| dw $0438
|15F3E2| db $22 ; Repeat byte
|15F3E3| db $FF
|15F3E4| db $85 ; Copy past
|15F3E5| dw $044A
|15F3E7| db $0C ; Raw block
|15F3E8| db $B3, $CC, $7F, $80, $4B, $84, $6B, $87
|15F3F0| db $A8, $C7, $EC, $03, $07
|15F3F5| db $22 ; Repeat byte
|15F3F6| db $00
|15F3F7| db $12 ; Raw block
|15F3F8| db $B3, $7F, $4B, $6F, $AB, $EC, $07, $00
|15F400| db $E6, $38, $F4, $78, $94, $F8, $24, $F8
|15F408| db $08, $F0, $F0
|15F40B| db $24 ; Repeat byte
|15F40C| db $00
|15F40D| db $0A ; Raw block
|15F40E| db $E6, $F4, $F4, $E4, $08, $F0, $00, $00
|15F416| db $0A, $05, $06
|15F419| db $44 ; Repeat word
|15F41A| dw $0301
|15F41C| db $00 ; Raw block
|15F41D| db $01
|15F41E| db $26 ; Repeat byte
|15F41F| db $00
|15F420| db $04 ; Raw block
|15F421| db $0B, $07, $03, $03, $01
|15F426| db $22 ; Repeat byte
|15F427| db $00
|15F428| db $FF ; End of GFX 96

;===================================================================================================

GFX_97:
|15F429| db $27 ; Repeat byte
|15F42A| db $00
|15F42B| db $07 ; Raw block
|15F42C| db $18, $00, $34, $18, $4E, $0C, $B7, $06
|15F434| db $23 ; Repeat byte
|15F435| db $00
|15F436| db $03 ; Raw block
|15F437| db $18, $3C, $76, $FB
|15F43B| db $27 ; Repeat byte
|15F43C| db $00
|15F43D| db $07 ; Raw block
|15F43E| db $18, $00, $2C, $18, $72, $30, $ED, $60
|15F446| db $23 ; Repeat byte
|15F447| db $00
|15F448| db $06 ; Raw block
|15F449| db $18, $3C, $6E, $DF, $0C, $00, $14
|15F450| db $44 ; Repeat word
|15F451| dw $2C08
|15F453| db $12 ; Raw block
|15F454| db $26, $04, $16, $04, $1E, $0C, $0D, $06
|15F45C| db $0C, $1C, $3C, $3C, $3E, $1E, $16, $0F
|15F464| db $30, $00, $28
|15F467| db $44 ; Repeat word
|15F468| dw $3410
|15F46A| db $0F ; Raw block
|15F46B| db $64, $20, $68, $20, $78, $30, $B0, $60
|15F473| db $30, $38, $3C, $3C, $7C, $78, $68, $F0
|15F47B| db $27 ; Repeat byte
|15F47C| db $00
|15F47D| db $07 ; Raw block
|15F47E| db $0C, $00, $16, $0C, $2F, $1C, $3F, $1C
|15F486| db $23 ; Repeat byte
|15F487| db $00
|15F488| db $03 ; Raw block
|15F489| db $0C, $1E, $3B, $3B
|15F48D| db $27 ; Repeat byte
|15F48E| db $00
|15F48F| db $07 ; Raw block
|15F490| db $30, $00, $68, $30, $F4, $38, $FC, $38
|15F498| db $23 ; Repeat byte
|15F499| db $00
|15F49A| db $E0, $2B ; EXT Raw block
|15F49C| db $30, $78, $DC, $DC, $00, $00, $21, $00
|15F4A4| db $73, $21, $3E, $13, $3F, $12, $2F, $16
|15F4AC| db $1C, $07, $0C, $07, $00, $21, $73, $3F
|15F4B4| db $3E, $3E, $1F, $0F, $E0, $00, $A0, $C0
|15F4BC| db $60, $C0, $E4, $40, $EE, $44, $7C, $E8
|15F4C4| db $3C, $E8, $B4, $E8
|15F4C8| db $22 ; Repeat byte
|15F4C9| db $E0
|15F4CA| db $01 ; Raw block
|15F4CB| db $64, $6E
|15F4CD| db $22 ; Repeat byte
|15F4CE| db $FC
|15F4CF| db $E0, $38 ; EXT Raw block
|15F4D1| db $00, $00, $40, $00, $B8, $40, $74, $38
|15F4D9| db $3F, $00, $3E, $17, $5F, $0B, $F9, $77
|15F4E1| db $00, $40, $F8, $7C, $3F, $27, $6F, $FF
|15F4E9| db $00, $00, $04, $00, $3E, $04, $5C, $38
|15F4F1| db $F8, $00, $F8, $E0, $3C, $F8, $36, $CC
|15F4F9| db $00, $04, $3E, $7C, $F8, $F8, $FC, $CE
|15F501| db $00, $00, $10, $00, $2E, $10, $1D, $0E
|15F509| db $1F
|15F50A| db $87 ; Copy past
|15F50B| dw $00C9
|15F50D| db $03 ; Raw block
|15F50E| db $10, $3E, $1F, $1F
|15F512| db $84 ; Copy past
|15F513| dw $00D5
|15F515| db $19 ; Raw block
|15F516| db $10, $00, $F8, $10, $70, $E0, $E0, $00
|15F51E| db $FF, $E0, $3D, $FE, $9B, $E6, $00, $10
|15F526| db $F8, $F0, $E0, $FF, $FF, $E7, $01, $00
|15F52E| db $23, $01
|15F530| db $8B ; Copy past
|15F531| dw $0094
|15F533| db $01 ; Raw block
|15F534| db $01, $23
|15F536| db $85 ; Copy past
|15F537| dw $00A2
|15F539| db $1F ; Raw block
|15F53A| db $80, $00, $C4, $80, $CE, $84, $7C, $C8
|15F542| db $FC, $48, $F4, $68, $38, $E0, $30, $E0
|15F54A| db $80, $C4, $CE, $FC, $7C, $7C, $F8, $F0
|15F552| db $20, $00, $50, $20, $BC, $40, $72, $3C
|15F55A| db $87 ; Copy past
|15F55B| dw $00C8
|15F55D| db $03 ; Raw block
|15F55E| db $20, $70, $FC, $7E
|15F562| db $8F ; Copy past
|15F563| dw $00D4
|15F565| db $03 ; Raw block
|15F566| db $3E, $F8, $37, $CE
|15F56A| db $85 ; Copy past
|15F56B| dw $00E8
|15F56D| db $07 ; Raw block
|15F56E| db $FE, $CF, $CF, $04, $8C, $03, $13, $0C
|15F576| db $43 ; Repeat word
|15F577| dw $102F
|15F579| db $13 ; Raw block
|15F57A| db $13, $0C, $0D, $02, $03, $00, $CB, $8F
|15F582| db $1C, $31, $32, $1F, $0F, $03, $F3, $20
|15F58A| db $31, $C0, $C8, $30
|15F58E| db $43 ; Repeat word
|15F58F| dw $08F4
|15F591| db $13 ; Raw block
|15F592| db $C8, $30, $B0, $40, $C0, $00, $D3, $F1
|15F59A| db $38, $8C, $CC, $F8, $F0, $C0, $0F, $04
|15F5A2| db $0C, $03, $13, $0C
|15F5A6| db $43 ; Repeat word
|15F5A7| dw $102F
|15F5A9| db $85 ; Copy past
|15F5AA| dw $018A
|15F5AC| db $01 ; Raw block
|15F5AD| db $0F, $0F
|15F5AF| db $85 ; Copy past
|15F5B0| dw $0192
|15F5B2| db $05 ; Raw block
|15F5B3| db $F0, $20, $30, $C0, $C8, $30
|15F5B9| db $43 ; Repeat word
|15F5BA| dw $08F4
|15F5BC| db $85 ; Copy past
|15F5BD| dw $01A2
|15F5BF| db $01 ; Raw block
|15F5C0| db $F0, $F0
|15F5C2| db $85 ; Copy past
|15F5C3| dw $01AA
|15F5C5| db $01 ; Raw block
|15F5C6| db $5C, $3B
|15F5C8| db $44 ; Repeat word
|15F5C9| dw $387F
|15F5CB| db $12 ; Raw block
|15F5CC| db $30, $3B, $14, $3D, $12, $1B, $00, $10
|15F5D4| db $00, $77, $74, $75, $7A, $3F, $3F, $1B
|15F5DC| db $10, $3A, $DC
|15F5DF| db $44 ; Repeat word
|15F5E0| dw $1CFE
|15F5E2| db $E0, $4D ; EXT Raw block
|15F5E4| db $0C, $DC, $28, $BC, $48, $D8, $00, $08
|15F5EC| db $00, $EE, $2E, $AE, $DE, $FC, $FC, $D8
|15F5F4| db $08, $0B, $07, $0E, $07, $1E, $05, $2F
|15F5FC| db $12, $7F, $15, $BD, $51, $53, $21, $21
|15F604| db $00, $0F, $0F, $1F, $3B, $79, $FF, $73
|15F60C| db $21, $D8, $E0, $74, $E8, $7C, $A8, $FC
|15F614| db $48, $FA, $A4, $B4, $88, $C8, $80, $80
|15F61C| db $00, $F8, $FC, $FC, $DC, $9E, $FC, $C8
|15F624| db $80, $F9, $77, $5F, $0B, $3E, $17, $1F
|15F62C| db $00, $1D, $0E, $2E, $10, $10
|15F632| db $22 ; Repeat byte
|15F633| db $00
|15F634| db $14 ; Raw block
|15F635| db $FF, $6F, $27, $1F, $1F, $3E, $10, $00
|15F63D| db $9B, $E6, $3D, $FE, $FF, $E0, $E0, $00
|15F645| db $70, $E0, $F8, $10, $10
|15F64A| db $22 ; Repeat byte
|15F64B| db $00
|15F64C| db $07 ; Raw block
|15F64D| db $E7, $FF, $FF, $E0, $F0, $F8, $10, $00
|15F655| db $85 ; Copy past
|15F656| dw $0240
|15F658| db $06 ; Raw block
|15F659| db $3F, $00, $74, $38, $B8, $40, $40
|15F660| db $22 ; Repeat byte
|15F661| db $00
|15F662| db $14 ; Raw block
|15F663| db $FF, $6F, $27, $3F, $7C, $F8, $40, $00
|15F66B| db $36, $CC, $3C, $F8, $F8, $E0, $F8, $00
|15F673| db $5C, $38, $3E, $04, $04
|15F678| db $22 ; Repeat byte
|15F679| db $00
|15F67A| db $0D ; Raw block
|15F67B| db $CE, $FC, $F8, $F8, $7C, $3E, $04, $00
|15F683| db $0B, $07, $1E, $07, $2E, $15
|15F689| db $8A ; Copy past
|15F68A| dw $0216
|15F68C| db $01 ; Raw block
|15F68D| db $1F, $3F
|15F68F| db $84 ; Copy past
|15F690| dw $0223
|15F692| db $17 ; Raw block
|15F693| db $D0, $E0, $78, $E0, $74, $A8, $F4, $48
|15F69B| db $FE, $A8, $BD, $8A, $CA, $84, $84, $00
|15F6A3| db $F0, $F8, $FC, $DC, $9E, $FF, $CE, $84
|15F6AB| db $87 ; Copy past
|15F6AC| dw $0270
|15F6AE| db $06 ; Raw block
|15F6AF| db $72, $3C, $BC, $40, $50, $20, $20
|15F6B6| db $84 ; Copy past
|15F6B7| dw $027F
|15F6B9| db $06 ; Raw block
|15F6BA| db $7E, $FC, $70, $20, $37, $CE, $3E
|15F6C1| db $89 ; Copy past
|15F6C2| dw $028B
|15F6C4| db $22 ; Repeat byte
|15F6C5| db $00
|15F6C6| db $01 ; Raw block
|15F6C7| db $CF, $FE
|15F6C9| db $85 ; Copy past
|15F6CA| dw $029A
|15F6CC| db $F0, $2F ; EXT Copy past
|15F6CE| dw $0150
|15F6D0| db $F0, $2F ; EXT Copy past
|15F6D2| dw $0150
|15F6D4| db $0A ; Raw block
|15F6D5| db $3C, $00, $6F, $38, $38, $00, $13, $00
|15F6DD| db $17, $00, $27
|15F6E0| db $44 ; Repeat word
|15F6E1| dw $2F00
|15F6E3| db $12 ; Raw block
|15F6E4| db $3C, $7F, $3F, $1C, $18, $38, $3C, $3E
|15F6EC| db $00, $00, $E0, $00, $10, $00, $CC, $00
|15F6F4| db $EE, $04, $E7
|15F6F7| db $44 ; Repeat word
|15F6F8| dw $F702
|15F6FA| db $0C ; Raw block
|15F6FB| db $00, $E0, $F0, $3C, $1E, $1F, $3F, $7F
|15F703| db $07, $00, $08, $00, $17
|15F708| db $43 ; Repeat word
|15F709| dw $2F00
|15F70B| db $0E ; Raw block
|15F70C| db $01, $27, $02, $27, $04, $17, $03, $07
|15F714| db $0F, $18, $30, $30, $39, $3B, $1F
|15F71B| db $83 ; Copy past
|15F71C| dw $037A
|15F71E| db $00 ; Raw block
|15F71F| db $E8
|15F720| db $43 ; Repeat word
|15F721| dw $F400
|15F723| db $18 ; Raw block
|15F724| db $80, $E4, $40, $E4, $20, $68, $80, $E0
|15F72C| db $F0, $18, $0C, $0C, $9C, $DC, $F8, $1F
|15F734| db $00, $20, $00, $5E, $00, $BC, $00, $B8
|15F73C| db $00
|15F73D| db $43 ; Repeat word
|15F73E| dw $01F9
|15F740| db $0D ; Raw block
|15F741| db $F7, $07, $1F, $3F, $61, $C3, $C7, $9E
|15F749| db $BE, $B8, $00, $00, $80, $00
|15F74F| db $43 ; Repeat word
|15F750| dw $80C0
|15F752| db $01 ; Raw block
|15F753| db $F0, $80
|15F755| db $43 ; Repeat word
|15F756| dw $B0F8
|15F758| db $12 ; Raw block
|15F759| db $F4, $38, $00, $80, $40, $40, $70, $78
|15F761| db $78, $FC, $0F, $00, $10, $00, $2F, $00
|15F769| db $5E, $00, $5C
|15F76C| db $44 ; Repeat word
|15F76D| dw $7C00
|15F76F| db $E0, $21 ; EXT Raw block
|15F771| db $7B, $03, $0F, $1F, $30, $61, $63, $4F
|15F779| db $5F, $5C, $80, $00, $40, $00, $60, $40
|15F781| db $6C, $40, $7E, $4C, $FE, $CC, $FC, $D8
|15F789| db $FC, $98, $80, $C0, $A0, $AC, $BE, $3E
|15F791| db $3C, $7C
|15F793| db $E4, $5F ; EXT Repeat byte
|15F795| db $00
|15F796| db $F0, $24 ; EXT Copy past
|15F798| dw $02D0
|15F79A| db $22 ; Repeat byte
|15F79B| db $00
|15F79C| db $87 ; Copy past
|15F79D| dw $02F8
|15F79F| db $F0, $24 ; EXT Copy past
|15F7A1| dw $02D0
|15F7A3| db $22 ; Repeat byte
|15F7A4| db $00
|15F7A5| db $87 ; Copy past
|15F7A6| dw $02F8
|15F7A8| db $12 ; Raw block
|15F7A9| db $37, $10, $19, $08, $0D, $00, $0C, $00
|15F7B1| db $0F, $04, $0D, $07, $04, $03, $03, $00
|15F7B9| db $2E, $16, $0E
|15F7BC| db $22 ; Repeat byte
|15F7BD| db $0F
|15F7BE| db $E0, $3F ; EXT Raw block
|15F7C0| db $07, $03, $EF, $0A, $9D, $16, $BA, $0C
|15F7C8| db $3A, $0C, $F4, $28, $A8, $F0, $30, $C0
|15F7D0| db $C0, $00, $77, $6F, $7E, $FE, $FC, $F8
|15F7D8| db $F0, $C0, $1D, $07, $18, $0F, $0E, $07
|15F7E0| db $0F, $00, $10, $0F, $37, $1C, $19, $0F
|15F7E8| db $0F, $00, $1F, $1F, $0F, $0F, $1F, $3F
|15F7F0| db $1F, $0F, $E8, $C0, $F0, $00, $38, $F0
|15F7F8| db $B8, $70, $70, $E0, $F0, $00, $F8, $F0
|15F800| db $83 ; Copy past
|15F801| dw $0532
|15F803| db $0A ; Raw block
|15F804| db $F8, $F8, $F0, $F0, $F8, $F0, $CF, $00
|15F80C| db $DF, $0E, $6E
|15F80F| db $43 ; Repeat word
|15F810| dw $271C
|15F812| db $0F ; Raw block
|15F813| db $1F, $13, $0F, $08, $07, $07, $00, $BF
|15F81B| db $BF, $7E, $3F, $3F, $1F, $0F, $07, $B4
|15F823| db $44 ; Repeat word
|15F824| dw $3418
|15F826| db $E0, $23 ; EXT Raw block
|15F828| db $F4, $38, $F4, $F8, $E8, $F0, $10, $E0
|15F830| db $E0, $00, $BC, $3C, $3C, $FC, $FC, $F8
|15F838| db $F0, $E0, $67, $00, $6E, $04, $7F, $08
|15F840| db $5F, $3B, $4F, $3F, $24, $1F, $13, $0C
|15F848| db $0C, $00, $5F, $5E
|15F84C| db $22 ; Repeat byte
|15F84D| db $7F
|15F84E| db $05 ; Raw block
|15F84F| db $3F, $1F, $0C, $F8, $30, $78
|15F855| db $43 ; Repeat word
|15F856| dw $E830
|15F858| db $0A ; Raw block
|15F859| db $B0, $F8, $F0, $D0, $E0, $20, $C0, $C0
|15F861| db $00, $F8, $78
|15F864| db $22 ; Repeat byte
|15F865| db $F8
|15F866| db $02 ; Raw block
|15F867| db $F0, $E0, $C0
|15F86A| db $E4, $5F ; EXT Repeat byte
|15F86C| db $00
|15F86D| db $FF ; End of GFX 97

;===================================================================================================

GFX_98:
|15F86E| db $E0, $BF ; EXT Raw block
|15F870| db $18, $00, $2F, $10, $35, $1B, $1F, $0B
|15F878| db $1C, $07, $1E, $0F, $14, $07, $3F, $1E
|15F880| db $18, $37, $3D, $1F, $1F, $17, $1B, $37
|15F888| db $18, $00, $F4, $08, $AC, $D8, $78, $D0
|15F890| db $58, $C0, $78, $F0, $38, $F0, $8C, $78
|15F898| db $18, $EC, $BC, $F8, $B8, $D8, $F8, $FC
|15F8A0| db $06, $00, $0D, $02, $0B, $04, $05, $03
|15F8A8| db $0A, $07, $15, $0E, $1C, $0B, $1F, $0F
|15F8B0| db $06, $0B, $0F, $05, $0B, $16, $1F, $1F
|15F8B8| db $0C, $00, $1A, $04, $F6, $0C, $2C, $D8
|15F8C0| db $58, $B0, $34, $CC, $04, $F8, $1C, $F8
|15F8C8| db $0C, $16, $FE, $3C, $F8, $B0, $C4, $F4
|15F8D0| db $18, $00, $35, $08, $2E, $19, $1F, $0D
|15F8D8| db $0E, $03, $15, $0E, $19, $0E, $1C, $0B
|15F8E0| db $18, $2D, $3E, $1F, $0F, $17, $1F, $1F
|15F8E8| db $18, $00, $AC, $10, $74, $98, $F8, $B0
|15F8F0| db $78, $C0, $A8, $70, $98, $70, $38, $D0
|15F8F8| db $18, $B4, $7C, $F8, $F8, $E8, $F8, $F8
|15F900| db $FF, $7F, $7E, $1F, $9F, $67, $AF, $40
|15F908| db $CF, $00, $4F, $08, $6F, $24, $67, $20
|15F910| db $FF, $7F, $FF, $FD, $FD, $77, $53, $58
|15F918| db $87, $FE, $0E, $F8, $F9, $E6, $F5, $02
|15F920| db $FB, $00, $FA, $00, $D6, $04, $F6, $04
|15F928| db $FF, $FE, $FF, $BF, $B7, $E6, $EA, $0A
|15F930| db $83 ; Copy past
|15F931| dw $0090
|15F933| db $01 ; Raw block
|15F934| db $1F, $07
|15F936| db $43 ; Repeat word
|15F937| dw $103F
|15F939| db $0D ; Raw block
|15F93A| db $77, $20, $DB, $40, $FF, $00, $FF, $7F
|15F942| db $1F, $2D, $2D, $4F, $A7, $E8
|15F948| db $83 ; Copy past
|15F949| dw $00A8
|15F94B| db $01 ; Raw block
|15F94C| db $F8, $E0
|15F94E| db $43 ; Repeat word
|15F94F| dw $00F4
|15F951| db $0E ; Raw block
|15F952| db $EA, $00, $DD, $00, $B7, $00, $FF, $FE
|15F95A| db $F8, $BC, $BC, $F6, $E3, $5F, $FC
|15F961| db $84 ; Copy past
|15F962| dw $00C1
|15F964| db $45 ; Repeat word
|15F965| dw $001F
|15F967| db $1D ; Raw block
|15F968| db $26, $00, $2E, $10, $FF, $7F, $1F, $17
|15F970| db $17, $1F, $3F, $21, $0F, $FE, $3E, $F8
|15F978| db $F8, $C0, $C8, $30, $48, $30, $78, $00
|15F980| db $F0, $00, $B8, $20, $FF, $FE
|15F986| db $23 ; Repeat byte
|15F987| db $F8
|15F988| db $01 ; Raw block
|15F989| db $30, $58
|15F98B| db $85 ; Copy past
|15F98C| dw $00F0
|15F98E| db $01 ; Raw block
|15F98F| db $7F, $00
|15F991| db $43 ; Repeat word
|15F992| dw $40BF
|15F994| db $0B ; Raw block
|15F995| db $5F, $11, $7F, $16, $FF, $7F, $1F, $77
|15F99D| db $F7, $FF, $6E, $68
|15F9A1| db $84 ; Copy past
|15F9A2| dw $0108
|15F9A4| db $09 ; Raw block
|15F9A5| db $E0, $F0, $00, $D8, $10, $98, $10, $58
|15F9AD| db $10, $D8
|15F9AF| db $83 ; Copy past
|15F9B0| dw $00E7
|15F9B2| db $E0, $2C ; EXT Raw block
|15F9B4| db $F0, $E8, $E8, $A8, $38, $F9, $7F, $FC
|15F9BC| db $1F, $FF, $67, $DF, $50, $CF, $4C, $63
|15F9C4| db $23, $64, $20, $37, $10, $FF, $FF, $9F
|15F9CC| db $AF, $B3, $5C, $5B, $28, $8F, $FE, $3F
|15F9D4| db $F8, $F9, $E0, $FB, $0A, $F7, $32, $DE
|15F9DC| db $C4, $36, $04, $CC, $08
|15F9E1| db $22 ; Repeat byte
|15F9E2| db $FF
|15F9E3| db $E0, $6F ; EXT Raw block
|15F9E5| db $F5, $C9, $22, $CA, $34, $3E, $1F, $75
|15F9ED| db $3C, $47, $3D, $5E, $3B, $2F, $1F, $27
|15F9F5| db $1F, $18, $07, $07, $00, $3C, $53, $43
|15F9FD| db $5F, $2F, $27, $18, $07, $1C, $F8, $DA
|15FA05| db $3C, $3E, $DC, $0E, $FC, $34, $F8, $E4
|15FA0D| db $F8, $18, $E0, $E0, $00, $3C, $D2, $F2
|15FA15| db $FA, $F4, $E4, $18, $E0, $0E, $01, $19
|15FA1D| db $07, $24, $1F, $2A, $1D, $28, $1F, $26
|15FA25| db $1F, $19, $07, $07, $00, $0E, $19, $27
|15FA2D| db $2D, $2F, $27, $19, $07, $D6, $F4, $0A
|15FA35| db $FC, $12, $FC, $6E, $F0, $CD, $FE, $19
|15FA3D| db $FE, $E6, $F8, $F8, $00, $EA, $F2, $F2
|15FA45| db $EE, $D1, $F9, $E6, $F8, $2B, $0C, $30
|15FA4D| db $1F, $55, $3F, $7A, $3F, $3D, $1F, $22
|15FA55| db $84 ; Copy past
|15FA56| dw $018B
|15FA58| db $02 ; Raw block
|15FA59| db $33, $24, $5F
|15FA5C| db $84 ; Copy past
|15FA5D| dw $0193
|15FA5F| db $0A ; Raw block
|15FA60| db $D4, $30, $1C, $F8, $8A, $FC, $0E, $FC
|15FA68| db $1C, $F8, $64
|15FA6B| db $84 ; Copy past
|15FA6C| dw $01A3
|15FA6E| db $02 ; Raw block
|15FA6F| db $CC, $34, $FA
|15FA72| db $84 ; Copy past
|15FA73| dw $01AB
|15FA75| db $E0, $3B ; EXT Raw block
|15FA77| db $32, $15, $78, $1F, $78, $2B, $70, $31
|15FA7F| db $79, $38, $3C, $14, $1F, $07, $07, $00
|15FA87| db $28, $60, $54, $4E, $46, $2B, $18, $07
|15FA8F| db $4C, $A8, $0E, $E8, $1A, $D0, $2A, $88
|15FA97| db $E2, $20, $34, $10, $F8, $E0, $E0, $00
|15FA9F| db $14, $16, $2E, $56, $1E, $EC, $18, $E0
|15FAA7| db $9B, $60, $90, $65, $F8, $0F, $74, $37
|15FAAF| db $78, $39, $7C, $18
|15FAB3| db $83 ; Copy past
|15FAB4| dw $021C
|15FAB6| db $13 ; Raw block
|15FAB7| db $FC, $FA, $F0, $48, $46, $67, $18, $07
|15FABF| db $F9, $06, $59, $B6, $1F, $F0, $3E, $CC
|15FAC7| db $6E, $8C, $1E, $18
|15FACB| db $83 ; Copy past
|15FACC| dw $0234
|15FACE| db $13 ; Raw block
|15FACF| db $1F, $0F, $0F, $02, $12, $E6, $18, $E0
|15FAD7| db $4B, $34, $43, $3C, $5E, $20, $7C, $00
|15FADF| db $4F, $00, $20, $00
|15FAE3| db $83 ; Copy past
|15FAE4| dw $021C
|15FAE6| db $E0, $29 ; EXT Raw block
|15FAE8| db $40, $40, $41, $43, $70, $3F, $18, $07
|15FAF0| db $BC, $28, $7C, $68, $F6, $D4, $6E, $64
|15FAF8| db $3E, $0C, $3C, $30, $F0, $C0, $C0, $00
|15FB00| db $54, $94, $2A, $92, $C2, $CC, $30, $C0
|15FB08| db $97, $60, $57, $20, $7C, $0C, $5F, $07
|15FB10| db $4D, $04
|15FB12| db $85 ; Copy past
|15FB13| dw $027A
|15FB15| db $04 ; Raw block
|15FB16| db $F8, $78, $73, $78, $7A
|15FB1B| db $84 ; Copy past
|15FB1C| dw $0285
|15FB1E| db $06 ; Raw block
|15FB1F| db $5C, $48, $F6, $D4, $EE, $A4, $FE
|15FB26| db $87 ; Copy past
|15FB27| dw $0291
|15FB29| db $E0, $38 ; EXT Raw block
|15FB2B| db $B4, $2A, $12, $02, $CC, $30, $C0, $31
|15FB33| db $00, $7C, $24, $7F, $2F, $7B, $3B, $3C
|15FB3B| db $18, $3F, $1C, $1F, $03, $03, $00, $3E
|15FB43| db $5B, $50, $44, $23, $20, $1C, $03, $8C
|15FB4B| db $00, $CE, $04, $0E, $0C, $D6, $C4, $0C
|15FB53| db $08, $FC, $38, $F8, $C0, $C0, $00, $7C
|15FB5B| db $3A, $F2, $2A, $F4, $04, $38, $C0, $00
|15FB63| db $00
|15FB64| db $83 ; Copy past
|15FB65| dw $0000
|15FB67| db $11 ; Raw block
|15FB68| db $3D, $13, $3E, $07, $16, $07, $1F, $0E
|15FB70| db $3F, $1F, $00, $18, $37, $3D, $3F, $1B
|15FB78| db $17, $3D
|15FB7A| db $83 ; Copy past
|15FB7B| dw $0300
|15FB7D| db $E0, $38 ; EXT Raw block
|15FB7F| db $F4, $08, $BC, $C8, $7C, $E0, $58, $D0
|15FB87| db $B8, $70, $FC, $F8, $00, $18, $EC, $BC
|15FB8F| db $DC, $A8, $D8, $FC, $00, $18, $B0, $31
|15FB97| db $0A, $48, $04, $68, $41, $48, $10, $10
|15FB9F| db $20, $24, $20, $20, $18, $31, $48, $68
|15FBA7| db $48, $10, $24, $20, $08, $42, $04, $80
|15FBAF| db $60, $14, $00, $08, $08, $0A, $20, $74
|15FBB7| db $90
|15FBB8| db $22 ; Repeat byte
|15FBB9| db $10
|15FBBA| db $0A ; Raw block
|15FBBB| db $42, $80, $14, $08, $0A, $74, $10, $10
|15FBC3| db $F9, $7F, $7C
|15FBC6| db $84 ; Copy past
|15FBC7| dw $00C3
|15FBC9| db $05 ; Raw block
|15FBCA| db $67, $24, $C3, $43, $CE, $40
|15FBD0| db $83 ; Copy past
|15FBD1| dw $009E
|15FBD3| db $06 ; Raw block
|15FBD4| db $1F, $2F, $5B, $BC, $B1, $58, $8F
|15FBDB| db $84 ; Copy past
|15FBDC| dw $0139
|15FBDE| db $08 ; Raw block
|15FBDF| db $FC, $08, $F2, $30, $CB, $C2, $3B, $02
|15FBE7| db $DA
|15FBE8| db $83 ; Copy past
|15FBE9| dw $00E7
|15FBEB| db $E0, $25 ; EXT Raw block
|15FBED| db $F4, $CE, $35, $C5, $26, $00, $03, $46
|15FBF5| db $08, $00, $37, $03, $DF, $08, $7F, $86
|15FBFD| db $39, $56, $39, $D0, $3F, $03, $08, $34
|15FC05| db $D3, $6F, $29, $19, $1F, $40, $41, $50
|15FC0D| db $02, $08, $F7, $84, $FD, $C2
|15FC13| db $43 ; Repeat word
|15FC14| dw $60FC
|15FC16| db $E0, $22 ; EXT Raw block
|15FC18| db $FE, $60, $FF, $41, $02, $37, $8D, $C4
|15FC20| db $E4, $E2, $E3, $00, $00, $01, $00, $00
|15FC28| db $21, $03, $11, $04, $0B, $0B, $07, $16
|15FC30| db $0D, $34, $1F, $00, $00, $21, $11, $08
|15FC38| db $03, $05, $17
|15FC3B| db $23 ; Repeat byte
|15FC3C| db $00
|15FC3D| db $00 ; Raw block
|15FC3E| db $04
|15FC3F| db $22 ; Repeat byte
|15FC40| db $00
|15FC41| db $07 ; Raw block
|15FC42| db $28, $C0, $80, $F0, $C0, $F0, $40, $F8
|15FC4A| db $24 ; Repeat byte
|15FC4B| db $00
|15FC4C| db $E0, $32 ; EXT Raw block
|15FC4E| db $90, $C0, $C8, $18, $00, $2D, $18, $3F
|15FC56| db $00, $42, $3D, $72, $2D, $45, $3A, $78
|15FC5E| db $3F, $38, $1F, $18, $3D, $3F, $43, $7F
|15FC66| db $59, $7E, $3F, $C0, $00, $60, $80, $A0
|15FC6E| db $C0, $C0, $80, $E0, $80, $A0, $60, $10
|15FC76| db $D0, $D0, $E0, $C0, $A0, $E0, $C0, $E0
|15FC7E| db $80, $20, $50
|15FC81| db $23 ; Repeat byte
|15FC82| db $00
|15FC83| db $02 ; Raw block
|15FC84| db $18, $00, $37
|15FC87| db $84 ; Copy past
|15FC88| dw $0063
|15FC8A| db $0B ; Raw block
|15FC8B| db $2F, $15, $26, $1B, $00, $00, $18, $2F
|15FC93| db $3E, $1F, $2F, $27
|15FC97| db $23 ; Repeat byte
|15FC98| db $00
|15FC99| db $02 ; Raw block
|15FC9A| db $18, $00, $EC
|15FC9D| db $84 ; Copy past
|15FC9E| dw $007B
|15FCA0| db $E0, $6D ; EXT Raw block
|15FCA2| db $F4, $A8, $64, $D8, $00, $00, $18, $F4
|15FCAA| db $7C, $F8, $F4, $E4, $38, $00, $64, $18
|15FCB2| db $4F, $38, $5C, $3B, $2F, $1D, $35, $0E
|15FCBA| db $4B, $35, $77, $3B, $38, $5C, $7F, $7C
|15FCC2| db $2F, $35, $4B, $57, $1C, $00, $26, $18
|15FCCA| db $F2, $1C, $3A, $DC, $F4, $B8, $AC, $70
|15FCD2| db $D2, $AC, $EE, $DC, $1C, $3A, $FE, $3E
|15FCDA| db $F4, $AC, $D2, $EA, $3D, $1D, $5F, $1F
|15FCE2| db $67, $3F, $4F, $3C, $2E, $1B, $11, $0F
|15FCEA| db $0C, $03, $03, $00, $3A, $6D, $47, $4F
|15FCF2| db $2F, $11, $0C, $03, $3C, $D8, $2A, $EC
|15FCFA| db $DA, $3C, $3A, $CC, $14, $F8, $A8, $F0
|15FD02| db $30, $C0, $C0, $00, $EC, $12, $CA, $FA
|15FD0A| db $F4, $E8, $30, $C0, $01, $00
|15FD10| db $45 ; Repeat word
|15FD11| dw $0103
|15FD13| db $08 ; Raw block
|15FD14| db $06, $03, $0E, $07, $3E, $07, $7C, $3B
|15FD1C| db $01
|15FD1D| db $22 ; Repeat byte
|15FD1E| db $03
|15FD1F| db $06 ; Raw block
|15FD20| db $07, $0F, $3F, $7F, $80, $00, $C0
|15FD27| db $44 ; Repeat word
|15FD28| dw $4080
|15FD2A| db $08 ; Raw block
|15FD2B| db $20, $C0, $B0, $60, $3C, $E0, $6E, $DC
|15FD33| db $80
|15FD34| db $22 ; Repeat byte
|15FD35| db $C0
|15FD36| db $0E ; Raw block
|15FD37| db $E0, $70, $FC, $FE, $7B, $38, $78, $10
|15FD3F| db $7E, $12, $7B, $3B, $74, $30, $3B
|15FD46| db $84 ; Copy past
|15FD47| dw $024B
|15FD49| db $12 ; Raw block
|15FD4A| db $44, $6F, $6D, $44, $4B, $24, $18, $07
|15FD52| db $C6, $04, $EE, $08, $46, $00, $DA, $00
|15FD5A| db $92, $80, $DC
|15FD5D| db $84 ; Copy past
|15FD5E| dw $0263
|15FD60| db $E0, $41 ; EXT Raw block
|15FD62| db $3A, $16, $BE, $E6, $6E, $24, $18, $E0
|15FD6A| db $58, $7F, $0F, $BF, $07, $7F, $60, $BF
|15FD72| db $00, $7F, $20, $1F, $4B, $19, $80, $05
|15FD7A| db $5F, $8F, $67, $A0, $70, $1C, $19, $05
|15FD82| db $E2, $FD, $C2, $FC, $80, $FC, $04, $FE
|15FD8A| db $00, $FD, $0C, $F2, $90, $22, $08, $00
|15FD92| db $E1, $C0, $84, $06, $0D, $32, $22, $00
|15FD9A| db $16, $8F, $03, $1F, $08, $0F, $04, $0B
|15FDA2| db $02, $09
|15FDA4| db $25 ; Repeat byte
|15FDA5| db $00
|15FDA6| db $04 ; Raw block
|15FDA7| db $87, $13, $08, $08, $09
|15FDAC| db $22 ; Repeat byte
|15FDAD| db $00
|15FDAE| db $0A ; Raw block
|15FDAF| db $CB, $FC, $80, $F0, $00, $E0, $20, $C0
|15FDB7| db $48, $00, $80
|15FDBA| db $24 ; Repeat byte
|15FDBB| db $00
|15FDBC| db $01 ; Raw block
|15FDBD| db $CC, $80
|15FDBF| db $25 ; Repeat byte
|15FDC0| db $00
|15FDC1| db $E0, $3A ; EXT Raw block
|15FDC3| db $35, $0F, $40, $3F, $A8, $77, $A1, $7F
|15FDCB| db $B1, $7F, $44, $3F, $39, $07, $07, $00
|15FDD3| db $36, $4F, $B7, $BF, $BF, $47, $39, $07
|15FDDB| db $50, $60, $DC, $E0, $BA, $C8, $73, $F6
|15FDE3| db $1D, $9E, $22, $FC, $DC, $E0, $E0, $00
|15FDEB| db $90, $5C, $B6, $1F, $FD, $E2, $DC, $E0
|15FDF3| db $59, $1E, $7D, $3E, $56, $3B, $73, $3C
|15FDFB| db $78, $3F, $25
|15FDFE| db $84 ; Copy past
|15FDFF| dw $018B
|15FE01| db $11 ; Raw block
|15FE02| db $6F, $5F, $5F, $5B, $4C, $27, $18, $07
|15FE0A| db $9A, $78, $BE, $7C, $6A, $DC, $CE, $3C
|15FE12| db $1E, $FC
|15FE14| db $85 ; Copy past
|15FE15| dw $0202
|15FE17| db $12 ; Raw block
|15FE18| db $F6, $FA, $FA, $DA, $32, $E4, $18, $E0
|15FE20| db $DB, $5F, $B9, $7F, $88, $7F, $5C, $3F
|15FE28| db $6F, $2F, $3B
|15FE2B| db $84 ; Copy past
|15FE2C| dw $018B
|15FE2E| db $12 ; Raw block
|15FE2F| db $AF, $8F, $8F, $4F, $57, $23, $18, $07
|15FE37| db $DB, $FA, $9D, $FE, $11, $FE, $3A, $FC
|15FE3F| db $F6, $F4, $DC
|15FE42| db $84 ; Copy past
|15FE43| dw $01A3
|15FE45| db $07 ; Raw block
|15FE46| db $F5, $F1, $F1, $F2, $EA, $C4, $18, $E0
|15FE4E| db $FF ; End of GFX 98

;===================================================================================================

GFX_99:
|15FE4F| db $E0, $2F ; EXT Raw block
|15FE51| db $13, $00, $7F, $03, $FE, $0F, $7C, $0F
|15FE59| db $3C, $1B, $36, $1B, $3F, $19, $3F, $08
|15FE61| db $13, $6F, $BF, $5F, $3F, $3F, $3B, $39
|15FE69| db $DC, $00, $FC, $C0, $7E, $F0, $3F, $F0
|15FE71| db $3E, $D8, $6C, $D8, $FC, $98, $FC, $10
|15FE79| db $D4, $FC, $FE, $F9, $FE, $FC, $DC, $9C
|15FE81| db $23 ; Repeat byte
|15FE82| db $00
|15FE83| db $0A ; Raw block
|15FE84| db $01, $00, $03, $01, $06, $03, $05, $02
|15FE8C| db $07, $00, $0F
|15FE8F| db $22 ; Repeat byte
|15FE90| db $00
|15FE91| db $E0, $7A ; EXT Raw block
|15FE93| db $01, $03, $07, $07, $06, $0C, $00, $00
|15FE9B| db $E0, $00, $F8, $E0, $1C, $F0, $7C, $A0
|15FEA3| db $FE, $60, $FE, $40, $FF, $E0, $00, $E0
|15FEAB| db $F8, $FC, $F4, $F6, $6E, $F3, $00, $00
|15FEB3| db $03, $00, $0F, $03, $7C, $0F, $F8, $0F
|15FEBB| db $78, $07, $78, $0F, $FC, $1F, $00, $03
|15FEC3| db $0F, $7F, $9F, $6F, $5F, $BF, $00, $00
|15FECB| db $C0, $00, $F0, $C0, $3C, $F0, $1E, $F0
|15FED3| db $1F, $E0, $1E, $F0, $3E, $F0, $00, $C0
|15FEDB| db $F0, $FC, $FA, $F5, $FA, $FA, $07, $00
|15FEE3| db $3F, $07, $7F, $3F, $DB, $7F, $F4, $7B
|15FEEB| db $67, $38, $5F, $28, $3F, $10, $07, $3F
|15FEF3| db $7F, $FF, $FB, $78, $78, $30, $E0, $00
|15FEFB| db $FC, $E0, $FE, $FC, $DE, $FC, $2B, $DE
|15FF03| db $EB, $1E, $EF, $1E, $F7, $0C, $E0, $FC
|15FF0B| db $FE, $FE, $DF
|15FF0E| db $22 ; Repeat byte
|15FF0F| db $1F
|15FF10| db $23 ; Repeat byte
|15FF11| db $00
|15FF12| db $83 ; Copy past
|15FF13| dw $0034
|15FF15| db $01 ; Raw block
|15FF16| db $04, $03
|15FF18| db $43 ; Repeat word
|15FF19| dw $0007
|15FF1B| db $00 ; Raw block
|15FF1C| db $0F
|15FF1D| db $22 ; Repeat byte
|15FF1E| db $00
|15FF1F| db $05 ; Raw block
|15FF20| db $01, $03, $07, $04, $04, $08
|15FF26| db $23 ; Repeat byte
|15FF27| db $00
|15FF28| db $83 ; Copy past
|15FF29| dw $007A
|15FF2B| db $0F ; Raw block
|15FF2C| db $F8, $A0, $F8, $30, $7C, $E8, $BE, $74
|15FF34| db $00, $00, $C0, $F0, $F8, $F8, $FC, $FE
|15FF3C| db $25 ; Repeat byte
|15FF3D| db $00
|15FF3E| db $88 ; Copy past
|15FF3F| dw $00C4
|15FF41| db $23 ; Repeat byte
|15FF42| db $00
|15FF43| db $84 ; Copy past
|15FF44| dw $00D2
|15FF46| db $25 ; Repeat byte
|15FF47| db $00
|15FF48| db $83 ; Copy past
|15FF49| dw $007A
|15FF4B| db $05 ; Raw block
|15FF4C| db $FC, $A0, $FA, $7C, $E4, $F8
|15FF52| db $22 ; Repeat byte
|15FF53| db $00
|15FF54| db $17 ; Raw block
|15FF55| db $C0, $F0, $FC, $FE, $FC, $18, $00, $3F
|15FF5D| db $18, $5F, $3B, $9F, $7F, $BF, $7F, $FF
|15FF65| db $7F, $7B, $0F, $38, $1F, $18, $3F, $7F
|15FF6D| db $22 ; Repeat byte
|15FF6E| db $FF
|15FF6F| db $01 ; Raw block
|15FF70| db $7F, $3F
|15FF72| db $83 ; Copy past
|15FF73| dw $0048
|15FF75| db $0C ; Raw block
|15FF76| db $FC, $E0, $FA, $EC, $F2, $DC, $FB, $FE
|15FF7E| db $CF, $FE, $16, $EC, $00
|15FF83| db $83 ; Copy past
|15FF84| dw $00B8
|15FF86| db $02 ; Raw block
|15FF87| db $FF, $FF, $FE
|15FF8A| db $39 ; Repeat byte
|15FF8B| db $00
|15FF8C| db $E0, $50 ; EXT Raw block
|15FF8E| db $78, $00, $9C, $78, $BF, $70, $FE, $4F
|15FF96| db $78, $2F, $3F, $04, $7F, $02, $00, $78
|15FF9E| db $FC, $FF, $FF, $7F, $2F, $6F, $3F, $11
|15FFA6| db $1F, $0C, $1D, $0D, $0C, $04, $06, $02
|15FFAE| db $02, $00, $03, $01, $01, $00, $2D, $13
|15FFB6| db $12, $0B, $05, $03, $02, $01, $FC, $88
|15FFBE| db $F8, $30, $B8, $B0, $30, $20, $60, $40
|15FFC6| db $40, $00, $C0, $80, $80, $00, $B4, $C8
|15FFCE| db $48, $D0, $A0, $C0, $40, $80, $33, $00
|15FFD6| db $40, $00, $FC, $7C, $7F, $01, $07, $03
|15FFDE| db $03
|15FFDF| db $24 ; Repeat byte
|15FFE0| db $00
|15FFE1| db $12 ; Raw block
|15FFE2| db $3F, $7F, $83, $7E, $04, $03, $00, $00
|15FFEA| db $FF, $32, $73, $5E, $F6, $EC, $FE, $EC
|15FFF2| db $FC, $D0, $E0
|15FFF5| db $24 ; Repeat byte
|15FFF6| db $00
|15FFF7| db $11 ; Raw block
|15FFF8| db $FF, $BF, $1E, $1E, $3C, $E0, $00, $00

;===================================================================================================

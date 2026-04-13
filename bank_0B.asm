org $0B8000

;===================================================================================================

OverworldMap32_Screen00_High:
|0B8000| db $E4, $FF ; EXT Repeat byte
|0B8002| db $00
|0B8003| db $FF ; End of Map 00

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen00_Low:
|0B8004| db $62 ; Increment fill
|0B8005| db $00
|0B8006| db $00 ; Raw block
|0B8007| db $00
|0B8008| db $65 ; Increment fill
|0B8009| db $03
|0B800A| db $62 ; Increment fill
|0B800B| db $06
|0B800C| db $65 ; Increment fill
|0B800D| db $06
|0B800E| db $00 ; Raw block
|0B800F| db $09
|0B8010| db $62 ; Increment fill
|0B8011| db $0C
|0B8012| db $02 ; Raw block
|0B8013| db $02, $00, $03
|0B8016| db $62 ; Increment fill
|0B8017| db $0F
|0B8018| db $62 ; Increment fill
|0B8019| db $0F
|0B801A| db $83 ; Copy past
|0B801B| dw $0800
|0B801D| db $62 ; Increment fill
|0B801E| db $12
|0B801F| db $01 ; Raw block
|0B8020| db $0B, $09
|0B8022| db $63 ; Increment fill
|0B8023| db $15
|0B8024| db $62 ; Increment fill
|0B8025| db $16
|0B8026| db $84 ; Copy past
|0B8027| dw $0000
|0B8029| db $02 ; Raw block
|0B802A| db $19, $05, $06
|0B802D| db $63 ; Increment fill
|0B802E| db $1A
|0B802F| db $63 ; Increment fill
|0B8030| db $1D
|0B8031| db $83 ; Copy past
|0B8032| dw $1000
|0B8034| db $6A ; Increment fill
|0B8035| db $21
|0B8036| db $02 ; Raw block
|0B8037| db $27, $07, $08
|0B803A| db $63 ; Increment fill
|0B803B| db $2C
|0B803C| db $02 ; Raw block
|0B803D| db $0D, $30, $09
|0B8040| db $64 ; Increment fill
|0B8041| db $31
|0B8042| db $03 ; Raw block
|0B8043| db $13, $32, $00, $03
|0B8047| db $65 ; Increment fill
|0B8048| db $36
|0B8049| db $02 ; Raw block
|0B804A| db $2D, $3C, $32
|0B804D| db $64 ; Increment fill
|0B804E| db $3D
|0B804F| db $03 ; Raw block
|0B8050| db $09, $0C, $42, $29
|0B8054| db $63 ; Increment fill
|0B8055| db $43
|0B8056| db $02 ; Raw block
|0B8057| db $37, $47, $32
|0B805A| db $63 ; Increment fill
|0B805B| db $48
|0B805C| db $09 ; Raw block
|0B805D| db $41, $07, $35, $13, $4C, $4D, $29, $4E
|0B8065| db $1D, $20
|0B8067| db $62 ; Increment fill
|0B8068| db $4F
|0B8069| db $06 ; Raw block
|0B806A| db $34, $52, $53, $32, $00, $01, $40
|0B8071| db $63 ; Increment fill
|0B8072| db $54
|0B8073| db $0A ; Raw block
|0B8074| db $1C, $20, $1D, $1D, $58, $59, $03, $36
|0B807C| db $50, $09, $0A
|0B807F| db $64 ; Increment fill
|0B8080| db $5A
|0B8081| db $0B ; Raw block
|0B8082| db $27, $5F, $2A, $60, $61, $09, $15, $62
|0B808A| db $20, $07, $08, $53
|0B808E| db $63 ; Increment fill
|0B808F| db $63
|0B8090| db $0B ; Raw block
|0B8091| db $32, $3D, $34, $35, $67, $1A, $68, $69
|0B8099| db $1D, $00, $01, $40
|0B809D| db $63 ; Increment fill
|0B809E| db $6A
|0B809F| db $04 ; Raw block
|0B80A0| db $41, $6E, $3E, $3F, $02
|0B80A5| db $63 ; Increment fill
|0B80A6| db $6F
|0B80A7| db $07 ; Raw block
|0B80A8| db $09, $0A, $5A, $6A, $6B, $73, $74, $41
|0B80B0| db $62 ; Increment fill
|0B80B1| db $48
|0B80B2| db $17 ; Raw block
|0B80B3| db $0B, $09, $75, $20, $1D, $07, $08, $76
|0B80BB| db $77, $39, $37, $37, $50, $78, $79, $05
|0B80C3| db $7A, $07, $7B, $7C, $1D, $00, $03, $7D
|0B80CB| db $25 ; Repeat byte
|0B80CC| db $1D
|0B80CD| db $06 ; Raw block
|0B80CE| db $7E, $0E, $02, $00, $01, $7F, $1D
|0B80D5| db $FF ; End of Map 00

;===================================================================================================

OverworldMap32_Screen01_High:
|0B80D6| db $E4, $FF ; EXT Repeat byte
|0B80D8| db $00
|0B80D9| db $FF ; End of Map 01

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen01_Low:
|0B80DA| db $62 ; Increment fill
|0B80DB| db $06
|0B80DC| db $62 ; Increment fill
|0B80DD| db $06
|0B80DE| db $04 ; Raw block
|0B80DF| db $53, $80, $81, $3B, $82
|0B80E4| db $83 ; Copy past
|0B80E5| dw $0200
|0B80E7| db $06 ; Raw block
|0B80E8| db $06, $0F, $10, $3F, $83, $84, $11
|0B80EF| db $64 ; Increment fill
|0B80F0| db $85
|0B80F1| db $01 ; Raw block
|0B80F2| db $3F, $02
|0B80F4| db $62 ; Increment fill
|0B80F5| db $00
|0B80F6| db $02 ; Raw block
|0B80F7| db $8A, $8B, $4A
|0B80FA| db $62 ; Increment fill
|0B80FB| db $8C
|0B80FC| db $06 ; Raw block
|0B80FD| db $1D, $8F, $90, $1D, $91, $92, $0B
|0B8104| db $62 ; Increment fill
|0B8105| db $09
|0B8106| db $01 ; Raw block
|0B8107| db $7E, $34
|0B8109| db $66 ; Increment fill
|0B810A| db $93
|0B810B| db $01 ; Raw block
|0B810C| db $1D, $1F
|0B810E| db $63 ; Increment fill
|0B810F| db $9A
|0B8110| db $08 ; Raw block
|0B8111| db $9B, $9E, $59, $01, $7F, $9F, $9F, $1D
|0B8119| db $1D
|0B811A| db $66 ; Increment fill
|0B811B| db $9F
|0B811C| db $03 ; Raw block
|0B811D| db $9F, $A6, $09, $0A
|0B8121| db $62 ; Increment fill
|0B8122| db $A7
|0B8123| db $01 ; Raw block
|0B8124| db $97, $98
|0B8126| db $63 ; Increment fill
|0B8127| db $AA
|0B8128| db $01 ; Raw block
|0B8129| db $1F, $1F
|0B812B| db $62 ; Increment fill
|0B812C| db $AE
|0B812D| db $02 ; Raw block
|0B812E| db $82, $08, $76
|0B8131| db $62 ; Increment fill
|0B8132| db $B1
|0B8133| db $00 ; Raw block
|0B8134| db $1D
|0B8135| db $66 ; Increment fill
|0B8136| db $B4
|0B8137| db $0A ; Raw block
|0B8138| db $09, $BB, $BC, $11, $BD, $1D, $BE, $BF
|0B8140| db $1C, $C0, $C1
|0B8143| db $62 ; Increment fill
|0B8144| db $09
|0B8145| db $05 ; Raw block
|0B8146| db $09, $C2, $2D, $C3, $C4, $18
|0B814C| db $64 ; Increment fill
|0B814D| db $C5
|0B814E| db $04 ; Raw block
|0B814F| db $12, $CA, $07, $08, $2C
|0B8154| db $64 ; Increment fill
|0B8155| db $CB
|0B8156| db $09 ; Raw block
|0B8157| db $A5, $1D, $D0, $1D, $B5, $D1, $01, $02
|0B815F| db $00, $03
|0B8161| db $62 ; Increment fill
|0B8162| db $D2
|0B8163| db $00 ; Raw block
|0B8164| db $02
|0B8165| db $62 ; Increment fill
|0B8166| db $D5
|0B8167| db $00 ; Raw block
|0B8168| db $27
|0B8169| db $62 ; Increment fill
|0B816A| db $D8
|0B816B| db $83 ; Copy past
|0B816C| dw $7A00
|0B816E| db $16 ; Raw block
|0B816F| db $15, $DB, $DC, $14, $0B, $DD, $DE, $7E
|0B8177| db $41, $DF, $6B, $3B, $82, $08, $2C, $CB
|0B817F| db $1B, $E0, $DC, $05, $7A, $E1, $1D
|0B8186| db $83 ; Copy past
|0B8187| dw $B200
|0B8189| db $05 ; Raw block
|0B818A| db $E2, $E3, $03, $E4, $E5, $62
|0B8190| db $62 ; Increment fill
|0B8191| db $E6
|0B8192| db $0D ; Raw block
|0B8193| db $02, $E6, $E9, $EA, $41, $DF, $EB, $EC
|0B819B| db $09, $15, $62, $B2, $C0, $ED
|0B81A1| db $62 ; Increment fill
|0B81A2| db $09
|0B81A3| db $03 ; Raw block
|0B81A4| db $EE, $09, $EF, $86
|0B81A8| db $62 ; Increment fill
|0B81A9| db $F0
|0B81AA| db $0C ; Raw block
|0B81AB| db $2D, $1B, $1D, $1D, $F3, $F4, $07, $93
|0B81B3| db $06, $F5, $9C, $F6, $8F
|0B81B8| db $62 ; Increment fill
|0B81B9| db $F7
|0B81BA| db $00 ; Raw block
|0B81BB| db $37
|0B81BC| db $63 ; Increment fill
|0B81BD| db $FA
|0B81BE| db $83 ; Copy past
|0B81BF| dw $1C00
|0B81C1| db $FF ; End of Map 01

;===================================================================================================

OverworldMap32_Screen02_High:
|0B81C2| db $28 ; Repeat byte
|0B81C3| db $00
|0B81C4| db $26 ; Repeat byte
|0B81C5| db $01
|0B81C6| db $26 ; Repeat byte
|0B81C7| db $00
|0B81C8| db $28 ; Repeat byte
|0B81C9| db $01
|0B81CA| db $26 ; Repeat byte
|0B81CB| db $00
|0B81CC| db $2A ; Repeat byte
|0B81CD| db $01
|0B81CE| db $23 ; Repeat byte
|0B81CF| db $00
|0B81D0| db $29 ; Repeat byte
|0B81D1| db $01
|0B81D2| db $03 ; Raw block
|0B81D3| db $00, $01, $01, $00
|0B81D7| db $2B ; Repeat byte
|0B81D8| db $01
|0B81D9| db $83 ; Copy past
|0B81DA| dw $4000
|0B81DC| db $22 ; Repeat byte
|0B81DD| db $01
|0B81DE| db $01 ; Raw block
|0B81DF| db $00, $00
|0B81E1| db $26 ; Repeat byte
|0B81E2| db $01
|0B81E3| db $00 ; Raw block
|0B81E4| db $00
|0B81E5| db $23 ; Repeat byte
|0B81E6| db $01
|0B81E7| db $22 ; Repeat byte
|0B81E8| db $00
|0B81E9| db $27 ; Repeat byte
|0B81EA| db $01
|0B81EB| db $00 ; Raw block
|0B81EC| db $00
|0B81ED| db $24 ; Repeat byte
|0B81EE| db $01
|0B81EF| db $00 ; Raw block
|0B81F0| db $00
|0B81F1| db $28 ; Repeat byte
|0B81F2| db $01
|0B81F3| db $83 ; Copy past
|0B81F4| dw $4000
|0B81F6| db $00 ; Raw block
|0B81F7| db $00
|0B81F8| db $23 ; Repeat byte
|0B81F9| db $01
|0B81FA| db $00 ; Raw block
|0B81FB| db $00
|0B81FC| db $25 ; Repeat byte
|0B81FD| db $01
|0B81FE| db $00 ; Raw block
|0B81FF| db $00
|0B8200| db $22 ; Repeat byte
|0B8201| db $01
|0B8202| db $00 ; Raw block
|0B8203| db $00
|0B8204| db $22 ; Repeat byte
|0B8205| db $01
|0B8206| db $00 ; Raw block
|0B8207| db $00
|0B8208| db $26 ; Repeat byte
|0B8209| db $01
|0B820A| db $00 ; Raw block
|0B820B| db $00
|0B820C| db $27 ; Repeat byte
|0B820D| db $01
|0B820E| db $01 ; Raw block
|0B820F| db $00, $00
|0B8211| db $24 ; Repeat byte
|0B8212| db $01
|0B8213| db $00 ; Raw block
|0B8214| db $00
|0B8215| db $23 ; Repeat byte
|0B8216| db $01
|0B8217| db $00 ; Raw block
|0B8218| db $00
|0B8219| db $29 ; Repeat byte
|0B821A| db $01
|0B821B| db $00 ; Raw block
|0B821C| db $00
|0B821D| db $23 ; Repeat byte
|0B821E| db $01
|0B821F| db $01 ; Raw block
|0B8220| db $00, $00
|0B8222| db $28 ; Repeat byte
|0B8223| db $01
|0B8224| db $00 ; Raw block
|0B8225| db $00
|0B8226| db $22 ; Repeat byte
|0B8227| db $01
|0B8228| db $00 ; Raw block
|0B8229| db $00
|0B822A| db $2A ; Repeat byte
|0B822B| db $01
|0B822C| db $22 ; Repeat byte
|0B822D| db $00
|0B822E| db $2C ; Repeat byte
|0B822F| db $01
|0B8230| db $03 ; Raw block
|0B8231| db $00, $00, $01, $00
|0B8235| db $2B ; Repeat byte
|0B8236| db $01
|0B8237| db $FF ; End of Map 02

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen02_Low:
|0B8238| db $01 ; Raw block
|0B8239| db $07, $08
|0B823B| db $62 ; Increment fill
|0B823C| db $06
|0B823D| db $05 ; Raw block
|0B823E| db $06, $07, $FE, $FF, $00, $01
|0B8244| db $22 ; Repeat byte
|0B8245| db $02
|0B8246| db $01 ; Raw block
|0B8247| db $03, $03
|0B8249| db $62 ; Increment fill
|0B824A| db $00
|0B824B| db $62 ; Increment fill
|0B824C| db $00
|0B824D| db $03 ; Raw block
|0B824E| db $00, $04, $05, $00
|0B8252| db $23 ; Repeat byte
|0B8253| db $06
|0B8254| db $01 ; Raw block
|0B8255| db $01, $03
|0B8257| db $62 ; Increment fill
|0B8258| db $09
|0B8259| db $62 ; Increment fill
|0B825A| db $09
|0B825B| db $00 ; Raw block
|0B825C| db $09
|0B825D| db $62 ; Increment fill
|0B825E| db $07
|0B825F| db $22 ; Repeat byte
|0B8260| db $0A
|0B8261| db $64 ; Increment fill
|0B8262| db $0B
|0B8263| db $83 ; Copy past
|0B8264| dw $0200
|0B8266| db $65 ; Increment fill
|0B8267| db $10
|0B8268| db $63 ; Increment fill
|0B8269| db $15
|0B826A| db $04 ; Raw block
|0B826B| db $1D, $19, $1A, $00, $04
|0B8270| db $6A ; Increment fill
|0B8271| db $1B
|0B8272| db $0A ; Raw block
|0B8273| db $B6, $26, $27, $09, $07, $28, $29, $99
|0B827B| db $99, $2A, $2B
|0B827E| db $63 ; Increment fill
|0B827F| db $2B
|0B8280| db $01 ; Raw block
|0B8281| db $25, $09
|0B8283| db $63 ; Increment fill
|0B8284| db $2F
|0B8285| db $02 ; Raw block
|0B8286| db $7C, $1D, $99
|0B8289| db $62 ; Increment fill
|0B828A| db $33
|0B828B| db $62 ; Increment fill
|0B828C| db $35
|0B828D| db $03 ; Raw block
|0B828E| db $2E, $25, $07, $32
|0B8292| db $63 ; Increment fill
|0B8293| db $38
|0B8294| db $02 ; Raw block
|0B8295| db $1D, $3C, $33
|0B8298| db $64 ; Increment fill
|0B8299| db $3D
|0B829A| db $06 ; Raw block
|0B829B| db $2E, $25, $00, $04, $3B, $91, $8E
|0B82A2| db $63 ; Increment fill
|0B82A3| db $42
|0B82A4| db $03 ; Raw block
|0B82A5| db $1D, $46, $47, $41
|0B82A9| db $62 ; Increment fill
|0B82AA| db $48
|0B82AB| db $04 ; Raw block
|0B82AC| db $09, $07, $4B, $4C, $1D
|0B82B1| db $62 ; Increment fill
|0B82B2| db $4D
|0B82B3| db $02 ; Raw block
|0B82B4| db $99, $50, $51
|0B82B7| db $64 ; Increment fill
|0B82B8| db $51
|0B82B9| db $04 ; Raw block
|0B82BA| db $07, $32, $56, $43, $44
|0B82BF| db $63 ; Increment fill
|0B82C0| db $57
|0B82C1| db $02 ; Raw block
|0B82C2| db $1D, $1D, $41
|0B82C5| db $63 ; Increment fill
|0B82C6| db $5B
|0B82C7| db $16 ; Raw block
|0B82C8| db $00, $04, $5F, $4E, $4F, $1D, $60, $1E
|0B82D0| db $61, $62, $41, $48, $49, $63, $64, $00
|0B82D8| db $09, $07, $57, $58, $65, $1D, $1D
|0B82DF| db $62 ; Increment fill
|0B82E0| db $66
|0B82E1| db $0D ; Raw block
|0B82E2| db $52, $53, $63, $69, $49, $6A, $07, $32
|0B82EA| db $6B, $6C, $98, $6D, $2D, $2D
|0B82F0| db $63 ; Increment fill
|0B82F1| db $6E
|0B82F2| db $0A ; Raw block
|0B82F3| db $69, $49, $6A, $06, $00, $01, $7F, $3C
|0B82FB| db $72, $4B, $4B
|0B82FE| db $22 ; Repeat byte
|0B82FF| db $6D
|0B8300| db $10 ; Raw block
|0B8301| db $70, $71, $73, $00, $06, $06, $09, $0A
|0B8309| db $74, $1D, $75, $76, $72, $76, $1D, $72
|0B8311| db $77
|0B8312| db $84 ; Copy past
|0B8313| dw $EB00
|0B8315| db $FF ; End of Map 02

;===================================================================================================

OverworldMap32_Screen03_High:
|0B8316| db $E4, $22 ; EXT Repeat byte
|0B8318| db $01
|0B8319| db $00 ; Raw block
|0B831A| db $00
|0B831B| db $E4, $91 ; EXT Repeat byte
|0B831D| db $01
|0B831E| db $02 ; Raw block
|0B831F| db $00, $01, $00
|0B8322| db $3B ; Repeat byte
|0B8323| db $01
|0B8324| db $00 ; Raw block
|0B8325| db $02
|0B8326| db $25 ; Repeat byte
|0B8327| db $01
|0B8328| db $01 ; Raw block
|0B8329| db $02, $02
|0B832B| db $26 ; Repeat byte
|0B832C| db $01
|0B832D| db $83 ; Copy past
|0B832E| dw $DC00
|0B8330| db $03 ; Raw block
|0B8331| db $00, $01, $01, $02
|0B8335| db $27 ; Repeat byte
|0B8336| db $01
|0B8337| db $25 ; Repeat byte
|0B8338| db $02
|0B8339| db $00 ; Raw block
|0B833A| db $01
|0B833B| db $22 ; Repeat byte
|0B833C| db $02
|0B833D| db $00 ; Raw block
|0B833E| db $01
|0B833F| db $FF ; End of Map 03

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen03_Low:
|0B8340| db $68 ; Increment fill
|0B8341| db $78
|0B8342| db $03 ; Raw block
|0B8343| db $7E, $81, $82, $78
|0B8347| db $68 ; Increment fill
|0B8348| db $83
|0B8349| db $62 ; Increment fill
|0B834A| db $89
|0B834B| db $00 ; Raw block
|0B834C| db $89
|0B834D| db $68 ; Increment fill
|0B834E| db $8C
|0B834F| db $02 ; Raw block
|0B8350| db $1D, $95, $96
|0B8353| db $66 ; Increment fill
|0B8354| db $96
|0B8355| db $22 ; Repeat byte
|0B8356| db $9D
|0B8357| db $64 ; Increment fill
|0B8358| db $9E
|0B8359| db $04 ; Raw block
|0B835A| db $95, $96, $A2, $A1, $99
|0B835F| db $62 ; Increment fill
|0B8360| db $A3
|0B8361| db $22 ; Repeat byte
|0B8362| db $A6
|0B8363| db $63 ; Increment fill
|0B8364| db $A7
|0B8365| db $24 ; Repeat byte
|0B8366| db $AB
|0B8367| db $63 ; Increment fill
|0B8368| db $AC
|0B8369| db $22 ; Repeat byte
|0B836A| db $78
|0B836B| db $03 ; Raw block
|0B836C| db $B0, $B1, $A8, $B2
|0B8370| db $24 ; Repeat byte
|0B8371| db $B3
|0B8372| db $62 ; Increment fill
|0B8373| db $B4
|0B8374| db $01 ; Raw block
|0B8375| db $91, $79
|0B8377| db $65 ; Increment fill
|0B8378| db $B7
|0B8379| db $24 ; Repeat byte
|0B837A| db $BD
|0B837B| db $62 ; Increment fill
|0B837C| db $BE
|0B837D| db $00 ; Raw block
|0B837E| db $B7
|0B837F| db $6A ; Increment fill
|0B8380| db $C1
|0B8381| db $24 ; Repeat byte
|0B8382| db $C3
|0B8383| db $02 ; Raw block
|0B8384| db $8A, $CC, $A2
|0B8387| db $62 ; Increment fill
|0B8388| db $CD
|0B8389| db $06 ; Raw block
|0B838A| db $B7, $B7, $B8, $D0, $D1, $95, $A2
|0B8391| db $63 ; Increment fill
|0B8392| db $D2
|0B8393| db $03 ; Raw block
|0B8394| db $95, $D2, $D6, $D7
|0B8398| db $23 ; Repeat byte
|0B8399| db $C3
|0B839A| db $6B ; Increment fill
|0B839B| db $D8
|0B839C| db $04 ; Raw block
|0B839D| db $96, $A1, $A2, $A2, $94
|0B83A2| db $6E ; Increment fill
|0B83A3| db $E4
|0B83A4| db $02 ; Raw block
|0B83A5| db $1D, $A1, $1D
|0B83A8| db $64 ; Increment fill
|0B83A9| db $F3
|0B83AA| db $03 ; Raw block
|0B83AB| db $0A, $0B, $ED, $ED
|0B83AF| db $63 ; Increment fill
|0B83B0| db $F8
|0B83B1| db $09 ; Raw block
|0B83B2| db $F2, $A2, $94, $FC, $03, $09, $FD, $FE
|0B83BA| db $14, $16
|0B83BC| db $83 ; Copy past
|0B83BD| dw $C000
|0B83BF| db $0B ; Raw block
|0B83C0| db $FF, $00, $FB, $F2, $95, $96, $E4, $13
|0B83C8| db $01, $02, $20, $23
|0B83CC| db $84 ; Copy past
|0B83CD| dw $D000
|0B83CF| db $0A ; Raw block
|0B83D0| db $03, $00, $FB, $F2, $1D, $A1, $1F, $04
|0B83D8| db $95, $A2, $A1
|0B83DB| db $85 ; Copy past
|0B83DC| dw $E000
|0B83DE| db $01 ; Raw block
|0B83DF| db $03, $00
|0B83E1| db $62 ; Increment fill
|0B83E2| db $05
|0B83E3| db $04 ; Raw block
|0B83E4| db $DA, $08, $08, $09, $DA
|0B83E9| db $FF ; End of Map 03

;===================================================================================================

OverworldMap32_Screen04_High:
|0B83EA| db $22 ; Repeat byte
|0B83EB| db $01
|0B83EC| db $2B ; Repeat byte
|0B83ED| db $02
|0B83EE| db $00 ; Raw block
|0B83EF| db $01
|0B83F0| db $2D ; Repeat byte
|0B83F1| db $02
|0B83F2| db $00 ; Raw block
|0B83F3| db $01
|0B83F4| db $3C ; Repeat byte
|0B83F5| db $02
|0B83F6| db $03 ; Raw block
|0B83F7| db $01, $01, $02, $01
|0B83FB| db $2B ; Repeat byte
|0B83FC| db $02
|0B83FD| db $00 ; Raw block
|0B83FE| db $01
|0B83FF| db $24 ; Repeat byte
|0B8400| db $02
|0B8401| db $00 ; Raw block
|0B8402| db $01
|0B8403| db $28 ; Repeat byte
|0B8404| db $02
|0B8405| db $25 ; Repeat byte
|0B8406| db $01
|0B8407| db $00 ; Raw block
|0B8408| db $00
|0B8409| db $28 ; Repeat byte
|0B840A| db $02
|0B840B| db $22 ; Repeat byte
|0B840C| db $01
|0B840D| db $03 ; Raw block
|0B840E| db $02, $00, $01, $01
|0B8412| db $29 ; Repeat byte
|0B8413| db $02
|0B8414| db $02 ; Raw block
|0B8415| db $01, $01, $02
|0B8418| db $23 ; Repeat byte
|0B8419| db $01
|0B841A| db $02 ; Raw block
|0B841B| db $02, $02, $01
|0B841E| db $22 ; Repeat byte
|0B841F| db $02
|0B8420| db $24 ; Repeat byte
|0B8421| db $01
|0B8422| db $2B ; Repeat byte
|0B8423| db $02
|0B8424| db $83 ; Copy past
|0B8425| dw $7000
|0B8427| db $00 ; Raw block
|0B8428| db $01
|0B8429| db $2B ; Repeat byte
|0B842A| db $02
|0B842B| db $83 ; Copy past
|0B842C| dw $8300
|0B842E| db $23 ; Repeat byte
|0B842F| db $02
|0B8430| db $03 ; Raw block
|0B8431| db $01, $02, $02, $00
|0B8435| db $27 ; Repeat byte
|0B8436| db $02
|0B8437| db $22 ; Repeat byte
|0B8438| db $01
|0B8439| db $01 ; Raw block
|0B843A| db $02, $01
|0B843C| db $22 ; Repeat byte
|0B843D| db $02
|0B843E| db $01 ; Raw block
|0B843F| db $00, $01
|0B8441| db $23 ; Repeat byte
|0B8442| db $02
|0B8443| db $22 ; Repeat byte
|0B8444| db $01
|0B8445| db $83 ; Copy past
|0B8446| dw $3A00
|0B8448| db $25 ; Repeat byte
|0B8449| db $02
|0B844A| db $01 ; Raw block
|0B844B| db $01, $01
|0B844D| db $22 ; Repeat byte
|0B844E| db $02
|0B844F| db $83 ; Copy past
|0B8450| dw $8300
|0B8452| db $26 ; Repeat byte
|0B8453| db $02
|0B8454| db $84 ; Copy past
|0B8455| dw $7D00
|0B8457| db $22 ; Repeat byte
|0B8458| db $02
|0B8459| db $22 ; Repeat byte
|0B845A| db $01
|0B845B| db $26 ; Repeat byte
|0B845C| db $02
|0B845D| db $22 ; Repeat byte
|0B845E| db $01
|0B845F| db $FF ; End of Map 04

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen04_Low:
|0B8460| db $02 ; Raw block
|0B8461| db $78, $79, $C1
|0B8464| db $6B ; Increment fill
|0B8465| db $0A
|0B8466| db $00 ; Raw block
|0B8467| db $84
|0B8468| db $63 ; Increment fill
|0B8469| db $16
|0B846A| db $00 ; Raw block
|0B846B| db $0B
|0B846C| db $68 ; Increment fill
|0B846D| db $1A
|0B846E| db $00 ; Raw block
|0B846F| db $C6
|0B8470| db $73 ; Increment fill
|0B8471| db $23
|0B8472| db $00 ; Raw block
|0B8473| db $27
|0B8474| db $66 ; Increment fill
|0B8475| db $37
|0B8476| db $04 ; Raw block
|0B8477| db $2F, $94, $96, $3E, $C3
|0B847C| db $6B ; Increment fill
|0B847D| db $3F
|0B847E| db $02 ; Raw block
|0B847F| db $41, $4B, $4C
|0B8482| db $62 ; Increment fill
|0B8483| db $4C
|0B8484| db $00 ; Raw block
|0B8485| db $CC
|0B8486| db $66 ; Increment fill
|0B8487| db $4F
|0B8488| db $08 ; Raw block
|0B8489| db $52, $56, $48, $49, $EB, $EB, $8A, $CC
|0B8491| db $1C
|0B8492| db $63 ; Increment fill
|0B8493| db $57
|0B8494| db $23 ; Repeat byte
|0B8495| db $5B
|0B8496| db $07 ; Raw block
|0B8497| db $5C, $2E, $00, $06, $5D, $AA, $94, $A2
|0B849F| db $62 ; Increment fill
|0B84A0| db $5E
|0B84A1| db $24 ; Repeat byte
|0B84A2| db $61
|0B84A3| db $04 ; Raw block
|0B84A4| db $62, $63, $17, $0C, $64
|0B84A9| db $62 ; Increment fill
|0B84AA| db $D3
|0B84AB| db $03 ; Raw block
|0B84AC| db $A1, $65, $02, $22
|0B84B0| db $62 ; Increment fill
|0B84B1| db $66
|0B84B2| db $04 ; Raw block
|0B84B3| db $22, $23, $03, $03, $17
|0B84B8| db $6B ; Increment fill
|0B84B9| db $69
|0B84BA| db $04 ; Raw block
|0B84BB| db $1D, $E4, $03, $75, $71
|0B84C0| db $68 ; Increment fill
|0B84C1| db $76
|0B84C2| db $06 ; Raw block
|0B84C3| db $5E, $7F, $80, $95, $81, $82, $71
|0B84CA| db $63 ; Increment fill
|0B84CB| db $83
|0B84CC| db $03 ; Raw block
|0B84CD| db $94, $87, $88, $1D
|0B84D1| db $67 ; Increment fill
|0B84D2| db $89
|0B84D3| db $04 ; Raw block
|0B84D4| db $09, $FD, $ED, $91, $96
|0B84D9| db $62 ; Increment fill
|0B84DA| db $92
|0B84DB| db $01 ; Raw block
|0B84DC| db $1D, $A2
|0B84DE| db $63 ; Increment fill
|0B84DF| db $95
|0B84E0| db $06 ; Raw block
|0B84E1| db $53, $6A, $13, $01, $7A, $95, $A1
|0B84E8| db $65 ; Increment fill
|0B84E9| db $99
|0B84EA| db $09 ; Raw block
|0B84EB| db $A2, $2E, $82, $9F, $A0, $1F, $04, $A1
|0B84F3| db $DA, $09
|0B84F5| db $65 ; Increment fill
|0B84F6| db $A2
|0B84F7| db $0B ; Raw block
|0B84F8| db $95, $2E, $A8, $03, $F8, $08, $A9, $AA
|0B8500| db $F8, $F8, $FA, $AB
|0B8504| db $22 ; Repeat byte
|0B8505| db $08
|0B8506| db $05 ; Raw block
|0B8507| db $A9, $07, $AC, $03, $03, $F8
|0B850D| db $FF ; End of Map 04

;===================================================================================================

OverworldMap32_Screen05_High:
|0B850E| db $26 ; Repeat byte
|0B850F| db $02
|0B8510| db $22 ; Repeat byte
|0B8511| db $01
|0B8512| db $07 ; Raw block
|0B8513| db $02, $02, $01, $02, $02, $01, $02, $02
|0B851B| db $22 ; Repeat byte
|0B851C| db $01
|0B851D| db $23 ; Repeat byte
|0B851E| db $02
|0B851F| db $00 ; Raw block
|0B8520| db $01
|0B8521| db $43 ; Repeat word
|0B8522| dw $0201
|0B8524| db $43 ; Repeat word
|0B8525| dw $0102
|0B8527| db $22 ; Repeat byte
|0B8528| db $02
|0B8529| db $01 ; Raw block
|0B852A| db $01, $01
|0B852C| db $22 ; Repeat byte
|0B852D| db $02
|0B852E| db $86 ; Copy past
|0B852F| dw $0900
|0B8531| db $22 ; Repeat byte
|0B8532| db $02
|0B8533| db $02 ; Raw block
|0B8534| db $01, $02, $02
|0B8537| db $22 ; Repeat byte
|0B8538| db $01
|0B8539| db $24 ; Repeat byte
|0B853A| db $02
|0B853B| db $00 ; Raw block
|0B853C| db $01
|0B853D| db $22 ; Repeat byte
|0B853E| db $02
|0B853F| db $00 ; Raw block
|0B8540| db $01
|0B8541| db $43 ; Repeat word
|0B8542| dw $0201
|0B8544| db $23 ; Repeat byte
|0B8545| db $01
|0B8546| db $00 ; Raw block
|0B8547| db $02
|0B8548| db $22 ; Repeat byte
|0B8549| db $01
|0B854A| db $22 ; Repeat byte
|0B854B| db $02
|0B854C| db $00 ; Raw block
|0B854D| db $01
|0B854E| db $23 ; Repeat byte
|0B854F| db $02
|0B8550| db $22 ; Repeat byte
|0B8551| db $01
|0B8552| db $84 ; Copy past
|0B8553| dw $0B00
|0B8555| db $23 ; Repeat byte
|0B8556| db $02
|0B8557| db $00 ; Raw block
|0B8558| db $00
|0B8559| db $29 ; Repeat byte
|0B855A| db $02
|0B855B| db $00 ; Raw block
|0B855C| db $00
|0B855D| db $22 ; Repeat byte
|0B855E| db $02
|0B855F| db $00 ; Raw block
|0B8560| db $00
|0B8561| db $2A ; Repeat byte
|0B8562| db $02
|0B8563| db $00 ; Raw block
|0B8564| db $01
|0B8565| db $29 ; Repeat byte
|0B8566| db $02
|0B8567| db $84 ; Copy past
|0B8568| dw $0800
|0B856A| db $25 ; Repeat byte
|0B856B| db $02
|0B856C| db $01 ; Raw block
|0B856D| db $01, $01
|0B856F| db $25 ; Repeat byte
|0B8570| db $02
|0B8571| db $22 ; Repeat byte
|0B8572| db $03
|0B8573| db $01 ; Raw block
|0B8574| db $02, $02
|0B8576| db $22 ; Repeat byte
|0B8577| db $03
|0B8578| db $05 ; Raw block
|0B8579| db $01, $01, $03, $03, $01, $02
|0B857F| db $43 ; Repeat word
|0B8580| dw $0302
|0B8582| db $22 ; Repeat byte
|0B8583| db $02
|0B8584| db $87 ; Copy past
|0B8585| dw $A300
|0B8587| db $22 ; Repeat byte
|0B8588| db $01
|0B8589| db $01 ; Raw block
|0B858A| db $03, $03
|0B858C| db $22 ; Repeat byte
|0B858D| db $02
|0B858E| db $01 ; Raw block
|0B858F| db $03, $03
|0B8591| db $83 ; Copy past
|0B8592| dw $A600
|0B8594| db $43 ; Repeat word
|0B8595| dw $0201
|0B8597| db $03 ; Raw block
|0B8598| db $03, $02, $01, $02
|0B859C| db $2F ; Repeat byte
|0B859D| db $03
|0B859E| db $2F ; Repeat byte
|0B859F| db $01
|0B85A0| db $2F ; Repeat byte
|0B85A1| db $03
|0B85A2| db $FF ; End of Map 05

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen05_Low:
|0B85A3| db $66 ; Increment fill
|0B85A4| db $AD
|0B85A5| db $0A ; Raw block
|0B85A6| db $B8, $84, $84, $B4, $AE, $78, $B5, $B6
|0B85AE| db $84, $B7, $B8
|0B85B1| db $22 ; Repeat byte
|0B85B2| db $78
|0B85B3| db $63 ; Increment fill
|0B85B4| db $B9
|0B85B5| db $10 ; Raw block
|0B85B6| db $84, $84, $BD, $78, $B9, $BB, $84, $BE
|0B85BE| db $B8, $B3, $AE, $BF, $78, $78, $C0, $C1
|0B85C6| db $15
|0B85C7| db $83 ; Copy past
|0B85C8| dw $0900
|0B85CA| db $02 ; Raw block
|0B85CB| db $C0, $C2, $C3
|0B85CE| db $62 ; Increment fill
|0B85CF| db $C3
|0B85D0| db $05 ; Raw block
|0B85D1| db $84, $AD, $C6, $78, $78, $8F
|0B85D7| db $64 ; Increment fill
|0B85D8| db $C7
|0B85D9| db $08 ; Raw block
|0B85DA| db $B7, $CC, $CD, $31, $C3, $C3, $CE, $84
|0B85E2| db $CF
|0B85E3| db $22 ; Repeat byte
|0B85E4| db $78
|0B85E5| db $04 ; Raw block
|0B85E6| db $8F, $D0, $CB, $C3, $C3
|0B85EB| db $62 ; Increment fill
|0B85EC| db $D1
|0B85ED| db $00 ; Raw block
|0B85EE| db $A1
|0B85EF| db $63 ; Increment fill
|0B85F0| db $D4
|0B85F1| db $22 ; Repeat byte
|0B85F2| db $78
|0B85F3| db $04 ; Raw block
|0B85F4| db $D8, $D0, $D9, $DA, $98
|0B85F9| db $63 ; Increment fill
|0B85FA| db $DB
|0B85FB| db $00 ; Raw block
|0B85FC| db $AA
|0B85FD| db $62 ; Increment fill
|0B85FE| db $DF
|0B85FF| db $22 ; Repeat byte
|0B8600| db $E2
|0B8601| db $63 ; Increment fill
|0B8602| db $E3
|0B8603| db $04 ; Raw block
|0B8604| db $1D, $E7, $DC, $E8, $1D
|0B8609| db $63 ; Increment fill
|0B860A| db $E9
|0B860B| db $22 ; Repeat byte
|0B860C| db $ED
|0B860D| db $63 ; Increment fill
|0B860E| db $EE
|0B860F| db $12 ; Raw block
|0B8610| db $95, $F2, $DC, $F3, $F4, $07, $AA, $F5
|0B8618| db $B4, $AE, $B2, $81, $84, $F6, $F7, $F2
|0B8620| db $F8, $F2, $DC
|0B8623| db $62 ; Increment fill
|0B8624| db $F9
|0B8625| db $01 ; Raw block
|0B8626| db $B5, $BF
|0B8628| db $62 ; Increment fill
|0B8629| db $FC
|0B862A| db $02 ; Raw block
|0B862B| db $BB, $B7, $FF
|0B862E| db $62 ; Increment fill
|0B862F| db $00
|0B8630| db $01 ; Raw block
|0B8631| db $F2, $DC
|0B8633| db $62 ; Increment fill
|0B8634| db $03
|0B8635| db $19 ; Raw block
|0B8636| db $BF, $84, $06, $07, $78, $C0, $C1, $08
|0B863E| db $FF, $09, $69, $F2, $DC, $0A, $0B, $84
|0B8646| db $84, $0C, $0D, $79, $AE, $78, $78, $8F
|0B864E| db $0E, $0F
|0B8650| db $85 ; Copy past
|0B8651| dw $AF00
|0B8653| db $0A ; Raw block
|0B8654| db $10, $11, $78, $83, $C9, $78, $16, $12
|0B865C| db $33, $9E, $69
|0B865F| db $66 ; Increment fill
|0B8660| db $13
|0B8661| db $62 ; Increment fill
|0B8662| db $19
|0B8663| db $05 ; Raw block
|0B8664| db $19, $1C, $1D, $17, $1E, $1F
|0B866A| db $2F ; Repeat byte
|0B866B| db $06
|0B866C| db $2E ; Repeat byte
|0B866D| db $20
|0B866E| db $00 ; Raw block
|0B866F| db $21
|0B8670| db $FF ; End of Map 05

;===================================================================================================

OverworldMap32_Screen06_High:
|0B8671| db $62 ; Increment fill
|0B8672| db $01
|0B8673| db $00 ; Raw block
|0B8674| db $01
|0B8675| db $43 ; Repeat word
|0B8676| dw $0302
|0B8678| db $04 ; Raw block
|0B8679| db $03, $02, $02, $01, $01
|0B867E| db $83 ; Copy past
|0B867F| dw $0800
|0B8681| db $23 ; Repeat byte
|0B8682| db $03
|0B8683| db $01 ; Raw block
|0B8684| db $01, $03
|0B8686| db $22 ; Repeat byte
|0B8687| db $01
|0B8688| db $02 ; Raw block
|0B8689| db $03, $03, $01
|0B868C| db $44 ; Repeat word
|0B868D| dw $0302
|0B868F| db $06 ; Raw block
|0B8690| db $02, $03, $01, $01, $03, $00, $00
|0B8697| db $22 ; Repeat byte
|0B8698| db $03
|0B8699| db $02 ; Raw block
|0B869A| db $01, $02, $02
|0B869D| db $26 ; Repeat byte
|0B869E| db $03
|0B869F| db $00 ; Raw block
|0B86A0| db $02
|0B86A1| db $22 ; Repeat byte
|0B86A2| db $01
|0B86A3| db $05 ; Raw block
|0B86A4| db $03, $03, $01, $00, $02, $02
|0B86AA| db $62 ; Increment fill
|0B86AB| db $01
|0B86AC| db $43 ; Repeat word
|0B86AD| dw $0203
|0B86AF| db $22 ; Repeat byte
|0B86B0| db $01
|0B86B1| db $83 ; Copy past
|0B86B2| dw $0700
|0B86B4| db $03 ; Raw block
|0B86B5| db $03, $03, $00, $02
|0B86B9| db $24 ; Repeat byte
|0B86BA| db $03
|0B86BB| db $83 ; Copy past
|0B86BC| dw $1800
|0B86BE| db $22 ; Repeat byte
|0B86BF| db $01
|0B86C0| db $22 ; Repeat byte
|0B86C1| db $03
|0B86C2| db $00 ; Raw block
|0B86C3| db $01
|0B86C4| db $83 ; Copy past
|0B86C5| dw $0200
|0B86C7| db $22 ; Repeat byte
|0B86C8| db $01
|0B86C9| db $01 ; Raw block
|0B86CA| db $03, $00
|0B86CC| db $84 ; Copy past
|0B86CD| dw $5500
|0B86CF| db $22 ; Repeat byte
|0B86D0| db $01
|0B86D1| db $01 ; Raw block
|0B86D2| db $00, $02
|0B86D4| db $43 ; Repeat word
|0B86D5| dw $0302
|0B86D7| db $01 ; Raw block
|0B86D8| db $03, $00
|0B86DA| db $28 ; Repeat byte
|0B86DB| db $03
|0B86DC| db $02 ; Raw block
|0B86DD| db $01, $02, $01
|0B86E0| db $44 ; Repeat word
|0B86E1| dw $0301
|0B86E3| db $23 ; Repeat byte
|0B86E4| db $03
|0B86E5| db $02 ; Raw block
|0B86E6| db $01, $01, $03
|0B86E9| db $25 ; Repeat byte
|0B86EA| db $02
|0B86EB| db $00 ; Raw block
|0B86EC| db $01
|0B86ED| db $22 ; Repeat byte
|0B86EE| db $02
|0B86EF| db $84 ; Copy past
|0B86F0| dw $6300
|0B86F2| db $24 ; Repeat byte
|0B86F3| db $03
|0B86F4| db $23 ; Repeat byte
|0B86F5| db $01
|0B86F6| db $01 ; Raw block
|0B86F7| db $03, $03
|0B86F9| db $23 ; Repeat byte
|0B86FA| db $01
|0B86FB| db $25 ; Repeat byte
|0B86FC| db $03
|0B86FD| db $23 ; Repeat byte
|0B86FE| db $01
|0B86FF| db $01 ; Raw block
|0B8700| db $03, $03
|0B8702| db $22 ; Repeat byte
|0B8703| db $01
|0B8704| db $25 ; Repeat byte
|0B8705| db $03
|0B8706| db $84 ; Copy past
|0B8707| dw $2200
|0B8709| db $84 ; Copy past
|0B870A| dw $2100
|0B870C| db $2D ; Repeat byte
|0B870D| db $03
|0B870E| db $01 ; Raw block
|0B870F| db $01, $01
|0B8711| db $24 ; Repeat byte
|0B8712| db $03
|0B8713| db $22 ; Repeat byte
|0B8714| db $01
|0B8715| db $01 ; Raw block
|0B8716| db $03, $03
|0B8718| db $24 ; Repeat byte
|0B8719| db $01
|0B871A| db $25 ; Repeat byte
|0B871B| db $03
|0B871C| db $83 ; Copy past
|0B871D| dw $4900
|0B871F| db $00 ; Raw block
|0B8720| db $03
|0B8721| db $25 ; Repeat byte
|0B8722| db $01
|0B8723| db $FF ; End of Map 06

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen06_Low:
|0B8724| db $10 ; Raw block
|0B8725| db $84, $FC, $22, $91, $3F, $23, $0A, $24
|0B872D| db $25, $B4, $AE, $79, $B7, $26, $AE, $AF
|0B8735| db $84
|0B8736| db $63 ; Increment fill
|0B8737| db $27
|0B8738| db $13 ; Raw block
|0B8739| db $88, $2B, $8B, $89, $8C, $2C, $2D, $C2
|0B8741| db $C3, $2E, $AE, $2F, $C5, $B7, $30, $93
|0B8749| db $F2, $31, $1D, $1D
|0B874D| db $62 ; Increment fill
|0B874E| db $32
|0B874F| db $02 ; Raw block
|0B8750| db $CC, $30, $21
|0B8753| db $66 ; Increment fill
|0B8754| db $35
|0B8755| db $1D ; Raw block
|0B8756| db $07, $AA, $AC, $AD, $3C, $3D, $A1, $1D
|0B875E| db $30, $31, $C3, $32, $3E, $3F, $FF, $40
|0B8766| db $FB, $B2, $B4, $B5, $41, $42, $4B, $4C
|0B876E| db $43, $44, $1D, $3E, $45, $24
|0B8774| db $62 ; Increment fill
|0B8775| db $46
|0B8776| db $06 ; Raw block
|0B8777| db $BC, $BE, $41, $49, $52, $53, $EB
|0B877E| db $62 ; Increment fill
|0B877F| db $4A
|0B8780| db $19 ; Raw block
|0B8781| db $98, $4D, $8B, $21, $4E, $8F, $CA, $D0
|0B8789| db $4F, $1D, $50, $51, $0A, $0A, $52, $97
|0B8791| db $96, $95, $1D, $30, $21, $53, $0A, $54
|0B8799| db $55, $1D
|0B879B| db $65 ; Increment fill
|0B879C| db $56
|0B879D| db $62 ; Increment fill
|0B879E| db $5B
|0B879F| db $08 ; Raw block
|0B87A0| db $A1, $30, $8B, $8B, $5E, $98, $5F, $95
|0B87A8| db $56
|0B87A9| db $62 ; Increment fill
|0B87AA| db $60
|0B87AB| db $04 ; Raw block
|0B87AC| db $06, $06, $63, $F3, $F4
|0B87B1| db $43 ; Repeat word
|0B87B2| dw $0607
|0B87B4| db $08 ; Raw block
|0B87B5| db $EF, $09, $07, $07, $EF, $09, $64, $06
|0B87BD| db $06
|0B87BE| db $64 ; Increment fill
|0B87BF| db $65
|0B87C0| db $23 ; Repeat byte
|0B87C1| db $F8
|0B87C2| db $01 ; Raw block
|0B87C3| db $68, $69
|0B87C5| db $22 ; Repeat byte
|0B87C6| db $F8
|0B87C7| db $00 ; Raw block
|0B87C8| db $06
|0B87C9| db $65 ; Increment fill
|0B87CA| db $6A
|0B87CB| db $23 ; Repeat byte
|0B87CC| db $F8
|0B87CD| db $01 ; Raw block
|0B87CE| db $70, $6F
|0B87D0| db $22 ; Repeat byte
|0B87D1| db $F8
|0B87D2| db $62 ; Increment fill
|0B87D3| db $6A
|0B87D4| db $0D ; Raw block
|0B87D5| db $6C, $6D, $71, $09, $72, $F8, $F8, $73
|0B87DD| db $07, $07, $72, $F8, $F8, $74
|0B87E3| db $22 ; Repeat byte
|0B87E4| db $6C
|0B87E5| db $00 ; Raw block
|0B87E6| db $6D
|0B87E7| db $62 ; Increment fill
|0B87E8| db $75
|0B87E9| db $08 ; Raw block
|0B87EA| db $68, $69, $78, $76, $76, $77, $F8, $F8
|0B87F2| db $74
|0B87F3| db $22 ; Repeat byte
|0B87F4| db $6C
|0B87F5| db $00 ; Raw block
|0B87F6| db $6D
|0B87F7| db $22 ; Repeat byte
|0B87F8| db $F8
|0B87F9| db $01 ; Raw block
|0B87FA| db $70, $79
|0B87FC| db $24 ; Repeat byte
|0B87FD| db $F8
|0B87FE| db $01 ; Raw block
|0B87FF| db $7A, $74
|0B8801| db $22 ; Repeat byte
|0B8802| db $6C
|0B8803| db $05 ; Raw block
|0B8804| db $6D, $F8, $7B, $73, $06, $64
|0B880A| db $24 ; Repeat byte
|0B880B| db $F8
|0B880C| db $00 ; Raw block
|0B880D| db $03
|0B880E| db $FF ; End of Map 06

;===================================================================================================

OverworldMap32_Screen07_High:
|0B880F| db $02 ; Raw block
|0B8810| db $02, $01, $01
|0B8813| db $22 ; Repeat byte
|0B8814| db $03
|0B8815| db $05 ; Raw block
|0B8816| db $02, $02, $01, $02, $02, $03
|0B881C| db $43 ; Repeat word
|0B881D| dw $0102
|0B881F| db $83 ; Copy past
|0B8820| dw $0400
|0B8822| db $00 ; Raw block
|0B8823| db $03
|0B8824| db $62 ; Increment fill
|0B8825| db $01
|0B8826| db $83 ; Copy past
|0B8827| dw $0B00
|0B8829| db $01 ; Raw block
|0B882A| db $02, $03
|0B882C| db $22 ; Repeat byte
|0B882D| db $01
|0B882E| db $01 ; Raw block
|0B882F| db $02, $02
|0B8831| db $27 ; Repeat byte
|0B8832| db $01
|0B8833| db $22 ; Repeat byte
|0B8834| db $02
|0B8835| db $23 ; Repeat byte
|0B8836| db $01
|0B8837| db $01 ; Raw block
|0B8838| db $03, $03
|0B883A| db $22 ; Repeat byte
|0B883B| db $00
|0B883C| db $00 ; Raw block
|0B883D| db $03
|0B883E| db $22 ; Repeat byte
|0B883F| db $00
|0B8840| db $00 ; Raw block
|0B8841| db $02
|0B8842| db $62 ; Increment fill
|0B8843| db $01
|0B8844| db $00 ; Raw block
|0B8845| db $02
|0B8846| db $22 ; Repeat byte
|0B8847| db $03
|0B8848| db $03 ; Raw block
|0B8849| db $00, $03, $00, $01
|0B884D| db $43 ; Repeat word
|0B884E| dw $0301
|0B8850| db $02 ; Raw block
|0B8851| db $00, $00, $02
|0B8854| db $24 ; Repeat byte
|0B8855| db $03
|0B8856| db $02 ; Raw block
|0B8857| db $00, $00, $01
|0B885A| db $26 ; Repeat byte
|0B885B| db $03
|0B885C| db $01 ; Raw block
|0B885D| db $02, $01
|0B885F| db $23 ; Repeat byte
|0B8860| db $03
|0B8861| db $03 ; Raw block
|0B8862| db $00, $00, $03, $03
|0B8866| db $22 ; Repeat byte
|0B8867| db $00
|0B8868| db $02 ; Raw block
|0B8869| db $03, $03, $00
|0B886C| db $44 ; Repeat word
|0B886D| dw $0103
|0B886F| db $01 ; Raw block
|0B8870| db $03, $00
|0B8872| db $22 ; Repeat byte
|0B8873| db $03
|0B8874| db $22 ; Repeat byte
|0B8875| db $00
|0B8876| db $25 ; Repeat byte
|0B8877| db $03
|0B8878| db $84 ; Copy past
|0B8879| dw $3100
|0B887B| db $83 ; Copy past
|0B887C| dw $3200
|0B887E| db $23 ; Repeat byte
|0B887F| db $03
|0B8880| db $01 ; Raw block
|0B8881| db $02, $02
|0B8883| db $22 ; Repeat byte
|0B8884| db $03
|0B8885| db $02 ; Raw block
|0B8886| db $01, $00, $01
|0B8889| db $22 ; Repeat byte
|0B888A| db $03
|0B888B| db $00 ; Raw block
|0B888C| db $01
|0B888D| db $25 ; Repeat byte
|0B888E| db $03
|0B888F| db $00 ; Raw block
|0B8890| db $02
|0B8891| db $22 ; Repeat byte
|0B8892| db $03
|0B8893| db $22 ; Repeat byte
|0B8894| db $00
|0B8895| db $86 ; Copy past
|0B8896| dw $7E00
|0B8898| db $22 ; Repeat byte
|0B8899| db $02
|0B889A| db $00 ; Raw block
|0B889B| db $01
|0B889C| db $83 ; Copy past
|0B889D| dw $9000
|0B889F| db $00 ; Raw block
|0B88A0| db $00
|0B88A1| db $22 ; Repeat byte
|0B88A2| db $03
|0B88A3| db $22 ; Repeat byte
|0B88A4| db $00
|0B88A5| db $03 ; Raw block
|0B88A6| db $03, $02, $01, $01
|0B88AA| db $23 ; Repeat byte
|0B88AB| db $03
|0B88AC| db $01 ; Raw block
|0B88AD| db $01, $01
|0B88AF| db $22 ; Repeat byte
|0B88B0| db $02
|0B88B1| db $02 ; Raw block
|0B88B2| db $01, $00, $01
|0B88B5| db $22 ; Repeat byte
|0B88B6| db $03
|0B88B7| db $00 ; Raw block
|0B88B8| db $02
|0B88B9| db $23 ; Repeat byte
|0B88BA| db $03
|0B88BB| db $01 ; Raw block
|0B88BC| db $01, $01
|0B88BE| db $22 ; Repeat byte
|0B88BF| db $02
|0B88C0| db $22 ; Repeat byte
|0B88C1| db $01
|0B88C2| db $22 ; Repeat byte
|0B88C3| db $03
|0B88C4| db $00 ; Raw block
|0B88C5| db $01
|0B88C6| db $83 ; Copy past
|0B88C7| dw $1400
|0B88C9| db $01 ; Raw block
|0B88CA| db $01, $01
|0B88CC| db $22 ; Repeat byte
|0B88CD| db $03
|0B88CE| db $22 ; Repeat byte
|0B88CF| db $01
|0B88D0| db $01 ; Raw block
|0B88D1| db $03, $03
|0B88D3| db $43 ; Repeat word
|0B88D4| dw $0102
|0B88D6| db $02 ; Raw block
|0B88D7| db $01, $03, $02
|0B88DA| db $22 ; Repeat byte
|0B88DB| db $03
|0B88DC| db $23 ; Repeat byte
|0B88DD| db $01
|0B88DE| db $03 ; Raw block
|0B88DF| db $03, $02, $03, $01
|0B88E3| db $FF ; End of Map 07

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen07_Low:
|0B88E4| db $1C ; Raw block
|0B88E5| db $BB, $84, $84, $7C, $7D, $11, $CA, $AE
|0B88ED| db $78, $BF, $C0, $7E, $C6, $8F, $23, $84
|0B88F5| db $7F, $80, $4D, $0A, $53, $7D, $0A, $81
|0B88FD| db $12, $4D, $7B, $B6, $B7
|0B8902| db $62 ; Increment fill
|0B8903| db $82
|0B8904| db $02 ; Raw block
|0B8905| db $81, $4D, $4E
|0B8908| db $23 ; Repeat byte
|0B8909| db $8B
|0B890A| db $0C ; Raw block
|0B890B| db $89, $C3, $8A, $89, $CE, $BE, $C6, $8F
|0B8913| db $C9, $C3, $8A, $83, $4C
|0B8918| db $22 ; Repeat byte
|0B8919| db $1D
|0B891A| db $00 ; Raw block
|0B891B| db $84
|0B891C| db $22 ; Repeat byte
|0B891D| db $1D
|0B891E| db $1A ; Raw block
|0B891F| db $3E, $C3, $C3, $85, $AE, $44, $44, $86
|0B8927| db $1D, $87, $1D, $D2, $D3, $88, $D4, $89
|0B892F| db $1D, $1D, $30, $8A, $8B, $4B, $8C, $8D
|0B8937| db $1D, $1D, $D2
|0B893A| db $65 ; Increment fill
|0B893B| db $8E
|0B893C| db $0A ; Raw block
|0B893D| db $4C, $A1, $AD, $0B, $20, $94, $95, $1D
|0B8945| db $1D, $96, $97
|0B8948| db $22 ; Repeat byte
|0B8949| db $1D
|0B894A| db $09 ; Raw block
|0B894B| db $98, $99, $1D, $9A, $B5, $9B, $F8, $9C
|0B8953| db $9D, $1D
|0B8955| db $62 ; Increment fill
|0B8956| db $9E
|0B8957| db $22 ; Repeat byte
|0B8958| db $1D
|0B8959| db $65 ; Increment fill
|0B895A| db $A1
|0B895B| db $08 ; Raw block
|0B895C| db $F8, $A7, $A8, $1D, $1D, $50, $A9, $1D
|0B8964| db $1D
|0B8965| db $62 ; Increment fill
|0B8966| db $AA
|0B8967| db $02 ; Raw block
|0B8968| db $87, $3E, $CE
|0B896B| db $62 ; Increment fill
|0B896C| db $AD
|0B896D| db $02 ; Raw block
|0B896E| db $F2, $1D, $95
|0B8971| db $62 ; Increment fill
|0B8972| db $B0
|0B8973| db $03 ; Raw block
|0B8974| db $F0, $B3, $B4, $A8
|0B8978| db $62 ; Increment fill
|0B8979| db $B5
|0B897A| db $03 ; Raw block
|0B897B| db $D6, $B8, $00, $B9
|0B897F| db $22 ; Repeat byte
|0B8980| db $1D
|0B8981| db $12 ; Raw block
|0B8982| db $56, $BA, $F9, $BB, $A8, $1D, $1D, $A1
|0B898A| db $AA, $F5, $84, $0F, $BC, $F2, $1D, $1D
|0B8992| db $4C, $BD, $BE
|0B8995| db $22 ; Repeat byte
|0B8996| db $1D
|0B8997| db $02 ; Raw block
|0B8998| db $BF, $AA, $B5
|0B899B| db $62 ; Increment fill
|0B899C| db $BF
|0B899D| db $03 ; Raw block
|0B899E| db $3A, $B9, $AB, $AC
|0B89A2| db $22 ; Repeat byte
|0B89A3| db $07
|0B89A4| db $06 ; Raw block
|0B89A5| db $A0, $1D, $94, $C2, $C3, $9B, $B0
|0B89AC| db $63 ; Increment fill
|0B89AD| db $C4
|0B89AE| db $01 ; Raw block
|0B89AF| db $B3, $B4
|0B89B1| db $22 ; Repeat byte
|0B89B2| db $FB
|0B89B3| db $62 ; Increment fill
|0B89B4| db $A9
|0B89B5| db $62 ; Increment fill
|0B89B6| db $C8
|0B89B7| db $19 ; Raw block
|0B89B8| db $78, $CB, $90, $C8, $C6, $BD, $BE, $05
|0B89C0| db $CC, $48, $A8, $B2, $B3, $CD, $CE, $C9
|0B89C8| db $79, $AE, $78, $8F, $CF, $C2, $D0, $D1
|0B89D0| db $11, $8F
|0B89D2| db $62 ; Increment fill
|0B89D3| db $BB
|0B89D4| db $03 ; Raw block
|0B89D5| db $D2, $B0, $11, $83
|0B89D9| db $FF ; End of Map 07

;===================================================================================================

OverworldMap32_Screen08_High:
|0B89DA| db $00 ; Raw block
|0B89DB| db $00
|0B89DC| db $22 ; Repeat byte
|0B89DD| db $03
|0B89DE| db $24 ; Repeat byte
|0B89DF| db $00
|0B89E0| db $00 ; Raw block
|0B89E1| db $03
|0B89E2| db $23 ; Repeat byte
|0B89E3| db $00
|0B89E4| db $04 ; Raw block
|0B89E5| db $01, $01, $00, $00, $03
|0B89EA| db $2B ; Repeat byte
|0B89EB| db $00
|0B89EC| db $03 ; Raw block
|0B89ED| db $03, $00, $00, $03
|0B89F1| db $23 ; Repeat byte
|0B89F2| db $00
|0B89F3| db $00 ; Raw block
|0B89F4| db $03
|0B89F5| db $24 ; Repeat byte
|0B89F6| db $00
|0B89F7| db $01 ; Raw block
|0B89F8| db $01, $01
|0B89FA| db $83 ; Copy past
|0B89FB| dw $1F00
|0B89FD| db $23 ; Repeat byte
|0B89FE| db $00
|0B89FF| db $23 ; Repeat byte
|0B8A00| db $03
|0B8A01| db $83 ; Copy past
|0B8A02| dw $3500
|0B8A04| db $22 ; Repeat byte
|0B8A05| db $00
|0B8A06| db $01 ; Raw block
|0B8A07| db $03, $03
|0B8A09| db $26 ; Repeat byte
|0B8A0A| db $00
|0B8A0B| db $83 ; Copy past
|0B8A0C| dw $1F00
|0B8A0E| db $22 ; Repeat byte
|0B8A0F| db $00
|0B8A10| db $01 ; Raw block
|0B8A11| db $03, $00
|0B8A13| db $48 ; Repeat word
|0B8A14| dw $0300
|0B8A16| db $01 ; Raw block
|0B8A17| db $00, $03
|0B8A19| db $24 ; Repeat byte
|0B8A1A| db $00
|0B8A1B| db $00 ; Raw block
|0B8A1C| db $03
|0B8A1D| db $23 ; Repeat byte
|0B8A1E| db $00
|0B8A1F| db $00 ; Raw block
|0B8A20| db $03
|0B8A21| db $27 ; Repeat byte
|0B8A22| db $00
|0B8A23| db $03 ; Raw block
|0B8A24| db $03, $00, $03, $03
|0B8A28| db $22 ; Repeat byte
|0B8A29| db $00
|0B8A2A| db $00 ; Raw block
|0B8A2B| db $03
|0B8A2C| db $22 ; Repeat byte
|0B8A2D| db $00
|0B8A2E| db $01 ; Raw block
|0B8A2F| db $03, $03
|0B8A31| db $23 ; Repeat byte
|0B8A32| db $00
|0B8A33| db $02 ; Raw block
|0B8A34| db $03, $03, $00
|0B8A37| db $23 ; Repeat byte
|0B8A38| db $03
|0B8A39| db $00 ; Raw block
|0B8A3A| db $00
|0B8A3B| db $24 ; Repeat byte
|0B8A3C| db $03
|0B8A3D| db $01 ; Raw block
|0B8A3E| db $00, $00
|0B8A40| db $23 ; Repeat byte
|0B8A41| db $03
|0B8A42| db $03 ; Raw block
|0B8A43| db $04, $01, $04, $04
|0B8A47| db $23 ; Repeat byte
|0B8A48| db $00
|0B8A49| db $01 ; Raw block
|0B8A4A| db $01, $03
|0B8A4C| db $22 ; Repeat byte
|0B8A4D| db $00
|0B8A4E| db $05 ; Raw block
|0B8A4F| db $04, $03, $00, $04, $01, $04
|0B8A55| db $23 ; Repeat byte
|0B8A56| db $00
|0B8A57| db $22 ; Repeat byte
|0B8A58| db $04
|0B8A59| db $83 ; Copy past
|0B8A5A| dw $AB00
|0B8A5C| db $00 ; Raw block
|0B8A5D| db $03
|0B8A5E| db $23 ; Repeat byte
|0B8A5F| db $04
|0B8A60| db $01 ; Raw block
|0B8A61| db $00, $00
|0B8A63| db $22 ; Repeat byte
|0B8A64| db $04
|0B8A65| db $23 ; Repeat byte
|0B8A66| db $00
|0B8A67| db $00 ; Raw block
|0B8A68| db $04
|0B8A69| db $23 ; Repeat byte
|0B8A6A| db $00
|0B8A6B| db $00 ; Raw block
|0B8A6C| db $04
|0B8A6D| db $23 ; Repeat byte
|0B8A6E| db $00
|0B8A6F| db $01 ; Raw block
|0B8A70| db $04, $04
|0B8A72| db $25 ; Repeat byte
|0B8A73| db $00
|0B8A74| db $01 ; Raw block
|0B8A75| db $03, $04
|0B8A77| db $22 ; Repeat byte
|0B8A78| db $00
|0B8A79| db $03 ; Raw block
|0B8A7A| db $04, $03, $00, $03
|0B8A7E| db $24 ; Repeat byte
|0B8A7F| db $00
|0B8A80| db $04 ; Raw block
|0B8A81| db $04, $04, $00, $04, $04
|0B8A86| db $22 ; Repeat byte
|0B8A87| db $00
|0B8A88| db $23 ; Repeat byte
|0B8A89| db $04
|0B8A8A| db $23 ; Repeat byte
|0B8A8B| db $00
|0B8A8C| db $83 ; Copy past
|0B8A8D| dw $A700
|0B8A8F| db $00 ; Raw block
|0B8A90| db $04
|0B8A91| db $23 ; Repeat byte
|0B8A92| db $00
|0B8A93| db $01 ; Raw block
|0B8A94| db $01, $04
|0B8A96| db $22 ; Repeat byte
|0B8A97| db $00
|0B8A98| db $FF ; End of Map 08

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen08_Low:
|0B8A99| db $00 ; Raw block
|0B8A9A| db $09
|0B8A9B| db $62 ; Increment fill
|0B8A9C| db $D3
|0B8A9D| db $16 ; Raw block
|0B8A9E| db $C7, $C8, $1D, $96, $D7, $D6, $14, $0B
|0B8AA6| db $09, $0A, $74, $61, $07, $35, $D7, $1D
|0B8AAE| db $96, $D7, $29, $43, $7E, $34, $93
|0B8AB5| db $62 ; Increment fill
|0B8AB6| db $06
|0B8AB7| db $18 ; Raw block
|0B8AB8| db $94, $D8, $00, $03, $D9, $1F, $1D, $7E
|0B8AC0| db $0D, $DA, $7E, $3E, $11, $24, $00, $04
|0B8AC8| db $3B, $DB, $09, $0C, $D4, $C7, $C8, $55
|0B8AD0| db $37
|0B8AD1| db $63 ; Increment fill
|0B8AD2| db $DC
|0B8AD3| db $E0, $24 ; EXT Raw block
|0B8AD5| db $30, $09, $E0, $E1, $D9, $07, $35, $D7
|0B8ADD| db $E2, $D7, $4E, $A5, $96, $BF, $1D, $4F
|0B8AE5| db $E3, $82, $35, $E4, $6B, $00, $01, $E5
|0B8AED| db $B9, $EA, $E6, $27, $E7, $5C, $E1, $D9
|0B8AF5| db $E8, $E3, $03, $E9, $6B
|0B8AFA| db $62 ; Increment fill
|0B8AFB| db $09
|0B8AFC| db $E0, $22 ; EXT Raw block
|0B8AFE| db $09, $EA, $0D, $32, $DF, $64, $EB, $6B
|0B8B06| db $EC, $09, $21, $63, $6B, $07, $08, $EC
|0B8B0E| db $1A, $ED, $EE, $86, $F0, $F1, $EF, $6B
|0B8B16| db $3B, $2D, $F0, $F1, $39, $00, $01, $83
|0B8B1E| db $F2, $F3, $C5
|0B8B21| db $63 ; Increment fill
|0B8B22| db $F4
|0B8B23| db $00 ; Raw block
|0B8B24| db $6B
|0B8B25| db $64 ; Increment fill
|0B8B26| db $F8
|0B8B27| db $1C ; Raw block
|0B8B28| db $09, $0A, $FD, $FE, $DC, $FF, $00, $43
|0B8B30| db $01, $02, $EB, $EC, $09, $0A, $74, $FC
|0B8B38| db $07, $08, $53, $03, $FC, $C0, $04, $4E
|0B8B40| db $05, $63, $6B, $3B, $CB
|0B8B45| db $62 ; Increment fill
|0B8B46| db $06
|0B8B47| db $04 ; Raw block
|0B8B48| db $00, $01, $09, $03, $FC
|0B8B4D| db $63 ; Increment fill
|0B8B4E| db $0A
|0B8B4F| db $01 ; Raw block
|0B8B50| db $38, $39
|0B8B52| db $62 ; Increment fill
|0B8B53| db $0E
|0B8B54| db $E0, $2B ; EXT Raw block
|0B8B56| db $24, $00, $09, $0A, $11, $FA, $20, $D7
|0B8B5E| db $29, $12, $29, $29, $43, $BE, $0A, $13
|0B8B66| db $30, $09, $07, $08, $94, $20, $FC, $14
|0B8B6E| db $34, $35, $67, $15, $DA, $20, $FC, $F3
|0B8B76| db $F4, $07, $00, $01, $16, $17, $B8, $18
|0B8B7E| db $19, $3F, $02, $6F
|0B8B82| db $63 ; Increment fill
|0B8B83| db $1A
|0B8B84| db $83 ; Copy past
|0B8B85| dw $BE00
|0B8B87| db $05 ; Raw block
|0B8B88| db $74, $1E, $0B, $09, $1F, $4A
|0B8B8E| db $83 ; Copy past
|0B8B8F| dw $0B00
|0B8B91| db $03 ; Raw block
|0B8B92| db $1E, $4B, $30, $09
|0B8B96| db $FF ; End of Map 08

;===================================================================================================

OverworldMap32_Screen09_High:
|0B8B97| db $22 ; Repeat byte
|0B8B98| db $01
|0B8B99| db $23 ; Repeat byte
|0B8B9A| db $00
|0B8B9B| db $03 ; Raw block
|0B8B9C| db $04, $00, $00, $04
|0B8BA0| db $24 ; Repeat byte
|0B8BA1| db $00
|0B8BA2| db $08 ; Raw block
|0B8BA3| db $04, $03, $04, $02, $04, $03, $00, $01
|0B8BAB| db $04
|0B8BAC| db $26 ; Repeat byte
|0B8BAD| db $00
|0B8BAE| db $07 ; Raw block
|0B8BAF| db $04, $03, $04, $00, $04, $01, $00, $04
|0B8BB7| db $27 ; Repeat byte
|0B8BB8| db $00
|0B8BB9| db $01 ; Raw block
|0B8BBA| db $04, $00
|0B8BBC| db $45 ; Repeat word
|0B8BBD| dw $0400
|0B8BBF| db $02 ; Raw block
|0B8BC0| db $03, $00, $04
|0B8BC3| db $25 ; Repeat byte
|0B8BC4| db $00
|0B8BC5| db $02 ; Raw block
|0B8BC6| db $01, $00, $00
|0B8BC9| db $23 ; Repeat byte
|0B8BCA| db $04
|0B8BCB| db $01 ; Raw block
|0B8BCC| db $00, $00
|0B8BCE| db $22 ; Repeat byte
|0B8BCF| db $04
|0B8BD0| db $22 ; Repeat byte
|0B8BD1| db $00
|0B8BD2| db $29 ; Repeat byte
|0B8BD3| db $04
|0B8BD4| db $25 ; Repeat byte
|0B8BD5| db $00
|0B8BD6| db $29 ; Repeat byte
|0B8BD7| db $04
|0B8BD8| db $00 ; Raw block
|0B8BD9| db $01
|0B8BDA| db $84 ; Copy past
|0B8BDB| dw $2500
|0B8BDD| db $22 ; Repeat byte
|0B8BDE| db $04
|0B8BDF| db $01 ; Raw block
|0B8BE0| db $03, $00
|0B8BE2| db $24 ; Repeat byte
|0B8BE3| db $04
|0B8BE4| db $01 ; Raw block
|0B8BE5| db $01, $04
|0B8BE7| db $24 ; Repeat byte
|0B8BE8| db $00
|0B8BE9| db $22 ; Repeat byte
|0B8BEA| db $04
|0B8BEB| db $00 ; Raw block
|0B8BEC| db $00
|0B8BED| db $28 ; Repeat byte
|0B8BEE| db $04
|0B8BEF| db $83 ; Copy past
|0B8BF0| dw $4200
|0B8BF2| db $01 ; Raw block
|0B8BF3| db $00, $03
|0B8BF5| db $23 ; Repeat byte
|0B8BF6| db $04
|0B8BF7| db $01 ; Raw block
|0B8BF8| db $00, $04
|0B8BFA| db $26 ; Repeat byte
|0B8BFB| db $00
|0B8BFC| db $01 ; Raw block
|0B8BFD| db $03, $04
|0B8BFF| db $84 ; Copy past
|0B8C00| dw $4000
|0B8C02| db $22 ; Repeat byte
|0B8C03| db $00
|0B8C04| db $02 ; Raw block
|0B8C05| db $04, $00, $04
|0B8C08| db $22 ; Repeat byte
|0B8C09| db $00
|0B8C0A| db $02 ; Raw block
|0B8C0B| db $03, $04, $04
|0B8C0E| db $26 ; Repeat byte
|0B8C0F| db $00
|0B8C10| db $01 ; Raw block
|0B8C11| db $01, $04
|0B8C13| db $22 ; Repeat byte
|0B8C14| db $00
|0B8C15| db $01 ; Raw block
|0B8C16| db $03, $03
|0B8C18| db $23 ; Repeat byte
|0B8C19| db $00
|0B8C1A| db $43 ; Repeat word
|0B8C1B| dw $0004
|0B8C1D| db $01 ; Raw block
|0B8C1E| db $00, $04
|0B8C20| db $24 ; Repeat byte
|0B8C21| db $00
|0B8C22| db $00 ; Raw block
|0B8C23| db $04
|0B8C24| db $25 ; Repeat byte
|0B8C25| db $00
|0B8C26| db $83 ; Copy past
|0B8C27| dw $9100
|0B8C29| db $01 ; Raw block
|0B8C2A| db $00, $04
|0B8C2C| db $22 ; Repeat byte
|0B8C2D| db $00
|0B8C2E| db $23 ; Repeat byte
|0B8C2F| db $04
|0B8C30| db $25 ; Repeat byte
|0B8C31| db $00
|0B8C32| db $01 ; Raw block
|0B8C33| db $04, $04
|0B8C35| db $2E ; Repeat byte
|0B8C36| db $00
|0B8C37| db $00 ; Raw block
|0B8C38| db $04
|0B8C39| db $22 ; Repeat byte
|0B8C3A| db $00
|0B8C3B| db $FF ; End of Map 09

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen09_Low:
|0B8C3C| db $0C ; Raw block
|0B8C3D| db $62, $61, $62, $A5, $96, $1D, $1D, $20
|0B8C45| db $1F, $D7, $21, $14, $0B
|0B8C4A| db $62 ; Increment fill
|0B8C4B| db $09
|0B8C4C| db $0B ; Raw block
|0B8C4D| db $22, $D8, $22, $DE, $23, $FB, $B3, $4B
|0B8C55| db $24, $7E, $34, $93
|0B8C59| db $62 ; Increment fill
|0B8C5A| db $06
|0B8C5B| db $0D ; Raw block
|0B8C5C| db $06, $25, $DB, $25, $AA, $1E, $74, $BF
|0B8C64| db $26, $BF, $7E, $3E, $3F, $02
|0B8C6A| db $62 ; Increment fill
|0B8C6B| db $00
|0B8C6C| db $0B ; Raw block
|0B8C6D| db $27, $A8, $C7, $28, $9A, $29, $A5, $2A
|0B8C75| db $E2, $7E, $2B, $4A
|0B8C79| db $83 ; Copy past
|0B8C7A| dw $0C00
|0B8C7C| db $03 ; Raw block
|0B8C7D| db $65, $62, $43, $1D
|0B8C81| db $63 ; Increment fill
|0B8C82| db $2C
|0B8C83| db $01 ; Raw block
|0B8C84| db $1D, $7E
|0B8C86| db $62 ; Increment fill
|0B8C87| db $30
|0B8C88| db $02 ; Raw block
|0B8C89| db $82, $08, $06
|0B8C8C| db $69 ; Increment fill
|0B8C8D| db $33
|0B8C8E| db $07 ; Raw block
|0B8C8F| db $37, $37, $47, $3E, $3F, $02, $3D, $39
|0B8C97| db $67 ; Increment fill
|0B8C98| db $3E
|0B8C99| db $05 ; Raw block
|0B8C9A| db $43, $44, $55, $46, $4A, $0B
|0B8CA0| db $62 ; Increment fill
|0B8CA1| db $47
|0B8CA2| db $02 ; Raw block
|0B8CA3| db $DA, $7E, $33
|0B8CA6| db $64 ; Increment fill
|0B8CA7| db $4A
|0B8CA8| db $05 ; Raw block
|0B8CA9| db $4E, $9F, $7E, $05, $06, $7E
|0B8CAF| db $62 ; Increment fill
|0B8CB0| db $4F
|0B8CB1| db $02 ; Raw block
|0B8CB2| db $7E, $3D, $39
|0B8CB5| db $62 ; Increment fill
|0B8CB6| db $52
|0B8CB7| db $00 ; Raw block
|0B8CB8| db $0C
|0B8CB9| db $62 ; Increment fill
|0B8CBA| db $55
|0B8CBB| db $05 ; Raw block
|0B8CBC| db $E8, $02, $14, $58, $46, $DC
|0B8CC2| db $63 ; Increment fill
|0B8CC3| db $59
|0B8CC4| db $04 ; Raw block
|0B8CC5| db $62, $5D, $4E, $1D, $EE
|0B8CCA| db $62 ; Increment fill
|0B8CCB| db $09
|0B8CCC| db $E0, $2B ; EXT Raw block
|0B8CCE| db $12, $D7, $5E, $B3, $2D, $F9, $37, $5F
|0B8CD6| db $1D, $F3, $CD, $60, $F5, $61, $93, $06
|0B8CDE| db $03, $D9, $62, $63, $C7, $C8, $1D, $1D
|0B8CE6| db $FC, $FD, $83, $1C, $56, $D1, $01, $02
|0B8CEE| db $D3, $D4, $20, $96, $D7, $29, $64, $60
|0B8CF6| db $65, $14, $8C, $66
|0B8CFA| db $84 ; Copy past
|0B8CFB| dw $9C00
|0B8CFD| db $0F ; Raw block
|0B8CFE| db $67, $43, $20, $7E, $34, $12, $F4, $68
|0B8D06| db $08, $EC, $60, $F5, $61, $08, $06, $01
|0B8D0E| db $63 ; Increment fill
|0B8D0F| db $69
|0B8D10| db $01 ; Raw block
|0B8D11| db $59, $01
|0B8D13| db $83 ; Copy past
|0B8D14| dw $2C00
|0B8D16| db $05 ; Raw block
|0B8D17| db $6D, $6E, $D1, $01, $02, $0A
|0B8D1D| db $83 ; Copy past
|0B8D1E| dw $0C00
|0B8D20| db $00 ; Raw block
|0B8D21| db $09
|0B8D22| db $85 ; Copy past
|0B8D23| dw $F000
|0B8D25| db $00 ; Raw block
|0B8D26| db $6F
|0B8D27| db $62 ; Increment fill
|0B8D28| db $09
|0B8D29| db $FF ; End of Map 09

;===================================================================================================

OverworldMap32_Screen0B_High:
|0B8D2A| db $04 ; Raw block
|0B8D2B| db $01, $01, $04, $01, $01
|0B8D30| db $22 ; Repeat byte
|0B8D31| db $02
|0B8D32| db $02 ; Raw block
|0B8D33| db $03, $01, $03
|0B8D36| db $24 ; Repeat byte
|0B8D37| db $01
|0B8D38| db $44 ; Repeat word
|0B8D39| dw $0104
|0B8D3B| db $22 ; Repeat byte
|0B8D3C| db $02
|0B8D3D| db $02 ; Raw block
|0B8D3E| db $03, $01, $04
|0B8D41| db $22 ; Repeat byte
|0B8D42| db $01
|0B8D43| db $0B ; Raw block
|0B8D44| db $03, $01, $01, $02, $04, $00, $03, $03
|0B8D4C| db $02, $02, $04, $01
|0B8D50| db $83 ; Copy past
|0B8D51| dw $1700
|0B8D53| db $83 ; Copy past
|0B8D54| dw $0200
|0B8D56| db $22 ; Repeat byte
|0B8D57| db $00
|0B8D58| db $03 ; Raw block
|0B8D59| db $03, $03, $02, $04
|0B8D5D| db $22 ; Repeat byte
|0B8D5E| db $03
|0B8D5F| db $01 ; Raw block
|0B8D60| db $01, $03
|0B8D62| db $62 ; Increment fill
|0B8D63| db $02
|0B8D64| db $00 ; Raw block
|0B8D65| db $02
|0B8D66| db $22 ; Repeat byte
|0B8D67| db $01
|0B8D68| db $00 ; Raw block
|0B8D69| db $00
|0B8D6A| db $22 ; Repeat byte
|0B8D6B| db $03
|0B8D6C| db $23 ; Repeat byte
|0B8D6D| db $01
|0B8D6E| db $23 ; Repeat byte
|0B8D6F| db $03
|0B8D70| db $83 ; Copy past
|0B8D71| dw $1200
|0B8D73| db $03 ; Raw block
|0B8D74| db $04, $01, $03, $03
|0B8D78| db $26 ; Repeat byte
|0B8D79| db $01
|0B8D7A| db $01 ; Raw block
|0B8D7B| db $03, $03
|0B8D7D| db $25 ; Repeat byte
|0B8D7E| db $01
|0B8D7F| db $23 ; Repeat byte
|0B8D80| db $00
|0B8D81| db $01 ; Raw block
|0B8D82| db $04, $02
|0B8D84| db $83 ; Copy past
|0B8D85| dw $4400
|0B8D87| db $84 ; Copy past
|0B8D88| dw $2C00
|0B8D8A| db $03 ; Raw block
|0B8D8B| db $04, $00, $01, $00
|0B8D8F| db $84 ; Copy past
|0B8D90| dw $2D00
|0B8D92| db $22 ; Repeat byte
|0B8D93| db $04
|0B8D94| db $83 ; Copy past
|0B8D95| dw $4700
|0B8D97| db $0A ; Raw block
|0B8D98| db $04, $01, $01, $00, $04, $03, $00, $01
|0B8DA0| db $01, $04, $03
|0B8DA3| db $23 ; Repeat byte
|0B8DA4| db $00
|0B8DA5| db $02 ; Raw block
|0B8DA6| db $01, $04, $00
|0B8DA9| db $23 ; Repeat byte
|0B8DAA| db $04
|0B8DAB| db $00 ; Raw block
|0B8DAC| db $02
|0B8DAD| db $44 ; Repeat word
|0B8DAE| dw $0001
|0B8DB0| db $22 ; Repeat byte
|0B8DB1| db $00
|0B8DB2| db $02 ; Raw block
|0B8DB3| db $04, $04, $03
|0B8DB6| db $23 ; Repeat byte
|0B8DB7| db $04
|0B8DB8| db $03 ; Raw block
|0B8DB9| db $01, $02, $01, $01
|0B8DBD| db $22 ; Repeat byte
|0B8DBE| db $00
|0B8DBF| db $02 ; Raw block
|0B8DC0| db $01, $00, $04
|0B8DC3| db $83 ; Copy past
|0B8DC4| dw $0700
|0B8DC6| db $05 ; Raw block
|0B8DC7| db $03, $04, $04, $03, $01, $03
|0B8DCD| db $22 ; Repeat byte
|0B8DCE| db $01
|0B8DCF| db $01 ; Raw block
|0B8DD0| db $04, $00
|0B8DD2| db $22 ; Repeat byte
|0B8DD3| db $03
|0B8DD4| db $01 ; Raw block
|0B8DD5| db $01, $03
|0B8DD7| db $22 ; Repeat byte
|0B8DD8| db $04
|0B8DD9| db $86 ; Copy past
|0B8DDA| dw $7100
|0B8DDC| db $02 ; Raw block
|0B8DDD| db $01, $00, $03
|0B8DE0| db $26 ; Repeat byte
|0B8DE1| db $04
|0B8DE2| db $00 ; Raw block
|0B8DE3| db $01
|0B8DE4| db $25 ; Repeat byte
|0B8DE5| db $04
|0B8DE6| db $01 ; Raw block
|0B8DE7| db $02, $01
|0B8DE9| db $22 ; Repeat byte
|0B8DEA| db $04
|0B8DEB| db $22 ; Repeat byte
|0B8DEC| db $01
|0B8DED| db $01 ; Raw block
|0B8DEE| db $04, $01
|0B8DF0| db $27 ; Repeat byte
|0B8DF1| db $04
|0B8DF2| db $02 ; Raw block
|0B8DF3| db $02, $02, $04
|0B8DF6| db $22 ; Repeat byte
|0B8DF7| db $01
|0B8DF8| db $01 ; Raw block
|0B8DF9| db $04, $04
|0B8DFB| db $FF ; End of Map 0B

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen0B_Low:
|0B8DFC| db $04 ; Raw block
|0B8DFD| db $ED, $ED, $70, $F9, $FF
|0B8E02| db $22 ; Repeat byte
|0B8E03| db $03
|0B8E04| db $02 ; Raw block
|0B8E05| db $5A, $F8, $7B
|0B8E08| db $24 ; Repeat byte
|0B8E09| db $F8
|0B8E0A| db $04 ; Raw block
|0B8E0B| db $71, $ED, $72, $F9, $73
|0B8E10| db $22 ; Repeat byte
|0B8E11| db $03
|0B8E12| db $02 ; Raw block
|0B8E13| db $5A, $E5, $74
|0B8E16| db $22 ; Repeat byte
|0B8E17| db $F8
|0B8E18| db $13 ; Raw block
|0B8E19| db $7B, $F8, $D6, $86, $75, $1D, $56, $57
|0B8E21| db $03, $03, $76, $DA, $A9, $72, $F8, $77
|0B8E29| db $74, $F8, $D6, $DD
|0B8E2D| db $22 ; Repeat byte
|0B8E2E| db $1D
|0B8E2F| db $13 ; Raw block
|0B8E30| db $56, $57, $03, $78, $76, $76, $77, $F8
|0B8E38| db $71, $09, $72, $79, $F3, $AB, $F2, $A2
|0B8E40| db $1D, $56, $57, $5A
|0B8E44| db $23 ; Repeat byte
|0B8E45| db $F8
|0B8E46| db $62 ; Increment fill
|0B8E47| db $75
|0B8E48| db $08 ; Raw block
|0B8E49| db $6C, $7A, $B3, $7B, $61, $7C, $DB, $56
|0B8E51| db $BA
|0B8E52| db $26 ; Repeat byte
|0B8E53| db $E5
|0B8E54| db $01 ; Raw block
|0B8E55| db $6C, $6C
|0B8E57| db $22 ; Repeat byte
|0B8E58| db $15
|0B8E59| db $1A ; Raw block
|0B8E5A| db $16, $E6, $DB, $1D, $1D, $9F, $1D, $7D
|0B8E62| db $08, $DB, $B2, $6C, $6C, $15, $7E, $7F
|0B8E6A| db $16, $03, $80, $1D, $A2, $1D, $81, $82
|0B8E72| db $E5, $E6, $08
|0B8E75| db $62 ; Increment fill
|0B8E76| db $83
|0B8E77| db $15 ; Raw block
|0B8E78| db $60, $61, $23, $24, $86, $A2, $A2, $1D
|0B8E80| db $87, $A8, $1D, $E4, $E5, $88, $A8, $1D
|0B8E88| db $B2, $1D, $1D, $2E, $86, $1D
|0B8E8E| db $63 ; Increment fill
|0B8E8F| db $89
|0B8E90| db $05 ; Raw block
|0B8E91| db $A2, $F2, $1D, $E3, $1D, $A2
|0B8E97| db $22 ; Repeat byte
|0B8E98| db $1D
|0B8E99| db $02 ; Raw block
|0B8E9A| db $8D, $8E, $B2
|0B8E9D| db $63 ; Increment fill
|0B8E9E| db $8F
|0B8E9F| db $13 ; Raw block
|0B8EA0| db $FA, $AB, $F0, $E3, $1D, $1C, $1D, $A2
|0B8EA8| db $1D, $93, $03, $5A, $F8, $9C, $6C, $94
|0B8EB0| db $73, $5A, $F9, $95
|0B8EB4| db $22 ; Repeat byte
|0B8EB5| db $AB
|0B8EB6| db $00 ; Raw block
|0B8EB7| db $95
|0B8EB8| db $84 ; Copy past
|0B8EB9| dw $4500
|0B8EBB| db $0D ; Raw block
|0B8EBC| db $9C, $84, $96, $97, $BA, $F9, $98, $99
|0B8EC4| db $B3, $B3, $9A, $A0, $1D, $56
|0B8ECA| db $66 ; Increment fill
|0B8ECB| db $9B
|0B8ECC| db $00 ; Raw block
|0B8ECD| db $AB
|0B8ECE| db $62 ; Increment fill
|0B8ECF| db $A2
|0B8ED0| db $62 ; Increment fill
|0B8ED1| db $A4
|0B8ED2| db $01 ; Raw block
|0B8ED3| db $07, $A0
|0B8ED5| db $62 ; Increment fill
|0B8ED6| db $A7
|0B8ED7| db $22 ; Repeat byte
|0B8ED8| db $AB
|0B8ED9| db $01 ; Raw block
|0B8EDA| db $AA, $B3
|0B8EDC| db $66 ; Increment fill
|0B8EDD| db $AB
|0B8EDE| db $03 ; Raw block
|0B8EDF| db $A6, $07, $07, $B2
|0B8EE3| db $23 ; Repeat byte
|0B8EE4| db $B3
|0B8EE5| db $00 ; Raw block
|0B8EE6| db $A4
|0B8EE7| db $FF ; End of Map 0B

;===================================================================================================

OverworldMap32_Screen0C_High:
|0B8EE8| db $25 ; Repeat byte
|0B8EE9| db $01
|0B8EEA| db $00 ; Raw block
|0B8EEB| db $03
|0B8EEC| db $2E ; Repeat byte
|0B8EED| db $01
|0B8EEE| db $00 ; Raw block
|0B8EEF| db $03
|0B8EF0| db $2E ; Repeat byte
|0B8EF1| db $01
|0B8EF2| db $02 ; Raw block
|0B8EF3| db $03, $01, $04
|0B8EF6| db $2A ; Repeat byte
|0B8EF7| db $01
|0B8EF8| db $44 ; Repeat word
|0B8EF9| dw $0103
|0B8EFB| db $01 ; Raw block
|0B8EFC| db $02, $03
|0B8EFE| db $28 ; Repeat byte
|0B8EFF| db $01
|0B8F00| db $03 ; Raw block
|0B8F01| db $04, $04, $03, $01
|0B8F05| db $22 ; Repeat byte
|0B8F06| db $03
|0B8F07| db $26 ; Repeat byte
|0B8F08| db $01
|0B8F09| db $04 ; Raw block
|0B8F0A| db $02, $04, $04, $03, $03
|0B8F0F| db $28 ; Repeat byte
|0B8F10| db $01
|0B8F11| db $01 ; Raw block
|0B8F12| db $00, $00
|0B8F14| db $22 ; Repeat byte
|0B8F15| db $04
|0B8F16| db $24 ; Repeat byte
|0B8F17| db $00
|0B8F18| db $01 ; Raw block
|0B8F19| db $01, $00
|0B8F1B| db $23 ; Repeat byte
|0B8F1C| db $01
|0B8F1D| db $22 ; Repeat byte
|0B8F1E| db $02
|0B8F1F| db $05 ; Raw block
|0B8F20| db $04, $00, $01, $04, $04, $00
|0B8F26| db $22 ; Repeat byte
|0B8F27| db $01
|0B8F28| db $00 ; Raw block
|0B8F29| db $04
|0B8F2A| db $24 ; Repeat byte
|0B8F2B| db $01
|0B8F2C| db $05 ; Raw block
|0B8F2D| db $02, $00, $00, $04, $02, $04
|0B8F33| db $83 ; Copy past
|0B8F34| dw $4200
|0B8F36| db $01 ; Raw block
|0B8F37| db $02, $00
|0B8F39| db $83 ; Copy past
|0B8F3A| dw $4200
|0B8F3C| db $24 ; Repeat byte
|0B8F3D| db $02
|0B8F3E| db $03 ; Raw block
|0B8F3F| db $00, $01, $00, $00
|0B8F43| db $22 ; Repeat byte
|0B8F44| db $04
|0B8F45| db $04 ; Raw block
|0B8F46| db $00, $00, $04, $03, $04
|0B8F4B| db $83 ; Copy past
|0B8F4C| dw $8000
|0B8F4E| db $45 ; Repeat word
|0B8F4F| dw $0204
|0B8F51| db $03 ; Raw block
|0B8F52| db $01, $00, $00, $03
|0B8F56| db $22 ; Repeat byte
|0B8F57| db $04
|0B8F58| db $83 ; Copy past
|0B8F59| dw $8300
|0B8F5B| db $00 ; Raw block
|0B8F5C| db $01
|0B8F5D| db $22 ; Repeat byte
|0B8F5E| db $04
|0B8F5F| db $23 ; Repeat byte
|0B8F60| db $01
|0B8F61| db $23 ; Repeat byte
|0B8F62| db $03
|0B8F63| db $07 ; Raw block
|0B8F64| db $02, $02, $04, $02, $00, $03, $03, $04
|0B8F6C| db $25 ; Repeat byte
|0B8F6D| db $01
|0B8F6E| db $03 ; Raw block
|0B8F6F| db $00, $03, $01, $01
|0B8F73| db $22 ; Repeat byte
|0B8F74| db $02
|0B8F75| db $02 ; Raw block
|0B8F76| db $01, $03, $01
|0B8F79| db $23 ; Repeat byte
|0B8F7A| db $04
|0B8F7B| db $23 ; Repeat byte
|0B8F7C| db $01
|0B8F7D| db $04 ; Raw block
|0B8F7E| db $00, $00, $02, $04, $04
|0B8F83| db $22 ; Repeat byte
|0B8F84| db $02
|0B8F85| db $25 ; Repeat byte
|0B8F86| db $04
|0B8F87| db $23 ; Repeat byte
|0B8F88| db $02
|0B8F89| db $29 ; Repeat byte
|0B8F8A| db $04
|0B8F8B| db $FF ; End of Map 0C

;---------------------------------------------------------------------------------------------------


OverworldMap32_Screen0C_Low:
|0B8F8C| db $06 ; Raw block
|0B8F8D| db $F8, $F8, $ED, $F8, $F8, $FF, $5A
|0B8F94| db $24 ; Repeat byte
|0B8F95| db $F8
|0B8F96| db $22 ; Repeat byte
|0B8F97| db $03
|0B8F98| db $22 ; Repeat byte
|0B8F99| db $F8
|0B8F9A| db $84 ; Copy past
|0B8F9B| dw $0200
|0B8F9D| db $24 ; Repeat byte
|0B8F9E| db $F8
|0B8F9F| db $22 ; Repeat byte
|0B8FA0| db $03
|0B8FA1| db $22 ; Repeat byte
|0B8FA2| db $F8
|0B8FA3| db $85 ; Copy past
|0B8FA4| dw $0200
|0B8FA6| db $03 ; Raw block
|0B8FA7| db $77, $E5, $F8, $F8
|0B8FAB| db $22 ; Repeat byte
|0B8FAC| db $03
|0B8FAD| db $22 ; Repeat byte
|0B8FAE| db $F8
|0B8FAF| db $09 ; Raw block
|0B8FB0| db $ED, $F8, $7B, $FF, $5A, $F8, $71, $A9
|0B8FB8| db $72, $F8
|0B8FBA| db $22 ; Repeat byte
|0B8FBB| db $03
|0B8FBC| db $22 ; Repeat byte
|0B8FBD| db $F8
|0B8FBE| db $05 ; Raw block
|0B8FBF| db $ED, $E5, $B4, $73, $5A, $F8
|0B8FC5| db $62 ; Increment fill
|0B8FC6| db $75
|0B8FC7| db $00 ; Raw block
|0B8FC8| db $F8
|0B8FC9| db $22 ; Repeat byte
|0B8FCA| db $03
|0B8FCB| db $07 ; Raw block
|0B8FCC| db $F8, $E5, $E5, $7A, $B5, $B6, $56, $BA
|0B8FD4| db $24 ; Repeat byte
|0B8FD5| db $E5
|0B8FD6| db $22 ; Repeat byte
|0B8FD7| db $03
|0B8FD8| db $05 ; Raw block
|0B8FD9| db $F8, $1D, $1D, $B5, $B7, $B8
|0B8FDF| db $24 ; Repeat byte
|0B8FE0| db $1D
|0B8FE1| db $0E ; Raw block
|0B8FE2| db $A2, $1D, $E4, $03, $03, $F8, $08, $08
|0B8FEA| db $79, $B9, $1D, $A2, $B5, $BA, $1D
|0B8FF1| db $22 ; Repeat byte
|0B8FF2| db $A2
|0B8FF3| db $01 ; Raw block
|0B8FF4| db $BB, $E4
|0B8FF6| db $84 ; Copy past
|0B8FF7| dw $4E00
|0B8FF9| db $0E ; Raw block
|0B8FFA| db $1D, $1D, $B5, $79, $BC, $A2, $A2, $BD
|0B9002| db $BE, $8A, $1D, $E4, $E5, $8A, $BF
|0B9009| db $22 ; Repeat byte
|0B900A| db $08
|0B900B| db $0D ; Raw block
|0B900C| db $79, $7A, $1D, $A2, $1D, $1D, $C0, $C1
|0B9014| db $BB, $1D, $1D, $90, $67, $77
|0B901A| db $83 ; Copy past
|0B901B| dw $8000
|0B901D| db $0C ; Raw block
|0B901E| db $B5, $08, $C2, $8A, $BB, $8A, $A2, $1D
|0B9026| db $1D, $9C, $94, $C3, $C4
|0B902B| db $83 ; Copy past
|0B902C| dw $8300
|0B902E| db $03 ; Raw block
|0B902F| db $E5, $C3, $C4, $8A
|0B9033| db $23 ; Repeat byte
|0B9034| db $AB
|0B9035| db $0B ; Raw block
|0B9036| db $BB, $A8, $56, $B1, $61, $61, $C5, $7A
|0B903E| db $1D, $56, $B1, $C6
|0B9042| db $23 ; Repeat byte
|0B9043| db $B3
|0B9044| db $1C ; Raw block
|0B9045| db $AB, $F2, $1D, $56, $22, $22, $04, $A1
|0B904D| db $A2, $F2, $56, $22, $C7, $C8, $A4, $A4
|0B9055| db $B3, $FB, $F2, $A2, $1D, $1D, $A1, $C9
|0B905D| db $CA, $05, $07, $07, $C9
|0B9062| db $62 ; Increment fill
|0B9063| db $CB
|0B9064| db $02 ; Raw block
|0B9065| db $A4, $CE, $05
|0B9068| db $22 ; Repeat byte
|0B9069| db $07
|0B906A| db $06 ; Raw block
|0B906B| db $C9, $AB, $CF, $D0, $B1, $B1, $AB
|0B9072| db $62 ; Increment fill
|0B9073| db $D1
|0B9074| db $FF ; End of Map 0C

;===================================================================================================

OverworldMap32_Screen0D_High:
|0B9075| db $03 ; Raw block
|0B9076| db $01, $02, $01, $01
|0B907A| db $27 ; Repeat byte
|0B907B| db $04
|0B907C| db $00 ; Raw block
|0B907D| db $03
|0B907E| db $23 ; Repeat byte
|0B907F| db $01
|0B9080| db $02 ; Raw block
|0B9081| db $02, $01, $01
|0B9084| db $26 ; Repeat byte
|0B9085| db $04
|0B9086| db $01 ; Raw block
|0B9087| db $02, $03
|0B9089| db $22 ; Repeat byte
|0B908A| db $01
|0B908B| db $03 ; Raw block
|0B908C| db $03, $04, $01, $01
|0B9090| db $26 ; Repeat byte
|0B9091| db $04
|0B9092| db $01 ; Raw block
|0B9093| db $02, $03
|0B9095| db $24 ; Repeat byte
|0B9096| db $01
|0B9097| db $01 ; Raw block
|0B9098| db $04, $01
|0B909A| db $27 ; Repeat byte
|0B909B| db $04
|0B909C| db $00 ; Raw block
|0B909D| db $03
|0B909E| db $25 ; Repeat byte
|0B909F| db $01
|0B90A0| db $29 ; Repeat byte
|0B90A1| db $04
|0B90A2| db $26 ; Repeat byte
|0B90A3| db $01
|0B90A4| db $28 ; Repeat byte
|0B90A5| db $04
|0B90A6| db $02 ; Raw block
|0B90A7| db $01, $00, $04
|0B90AA| db $22 ; Repeat byte
|0B90AB| db $01
|0B90AC| db $01 ; Raw block
|0B90AD| db $02, $00
|0B90AF| db $23 ; Repeat byte
|0B90B0| db $04
|0B90B1| db $24 ; Repeat byte
|0B90B2| db $05
|0B90B3| db $01 ; Raw block
|0B90B4| db $00, $03
|0B90B6| db $83 ; Copy past
|0B90B7| dw $0F00
|0B90B9| db $00 ; Raw block
|0B90BA| db $00
|0B90BB| db $28 ; Repeat byte
|0B90BC| db $05
|0B90BD| db $01 ; Raw block
|0B90BE| db $00, $00
|0B90C0| db $83 ; Copy past
|0B90C1| dw $0000
|0B90C3| db $27 ; Repeat byte
|0B90C4| db $05
|0B90C5| db $04 ; Raw block
|0B90C6| db $02, $00, $05, $01, $00
|0B90CB| db $23 ; Repeat byte
|0B90CC| db $01
|0B90CD| db $43 ; Repeat word
|0B90CE| dw $0405
|0B90D0| db $23 ; Repeat byte
|0B90D1| db $05
|0B90D2| db $08 ; Raw block
|0B90D3| db $01, $04, $01, $00, $01, $04, $02, $02
|0B90DB| db $04
|0B90DC| db $25 ; Repeat byte
|0B90DD| db $05
|0B90DE| db $83 ; Copy past
|0B90DF| dw $3200
|0B90E1| db $04 ; Raw block
|0B90E2| db $01, $01, $04, $05, $04
|0B90E7| db $27 ; Repeat byte
|0B90E8| db $05
|0B90E9| db $05 ; Raw block
|0B90EA| db $04, $04, $05, $01, $01, $04
|0B90F0| db $23 ; Repeat byte
|0B90F1| db $05
|0B90F2| db $01 ; Raw block
|0B90F3| db $04, $04
|0B90F5| db $22 ; Repeat byte
|0B90F6| db $05
|0B90F7| db $00 ; Raw block
|0B90F8| db $04
|0B90F9| db $22 ; Repeat byte
|0B90FA| db $05
|0B90FB| db $22 ; Repeat byte
|0B90FC| db $04
|0B90FD| db $02 ; Raw block
|0B90FE| db $05, $05, $03
|0B9101| db $83 ; Copy past
|0B9102| dw $CA00
|0B9104| db $83 ; Copy past
|0B9105| dw $0200
|0B9107| db $26 ; Repeat byte
|0B9108| db $05
|0B9109| db $00 ; Raw block
|0B910A| db $03
|0B910B| db $83 ; Copy past
|0B910C| dw $9700
|0B910E| db $01 ; Raw block
|0B910F| db $04, $04
|0B9111| db $22 ; Repeat byte
|0B9112| db $05
|0B9113| db $24 ; Repeat byte
|0B9114| db $04
|0B9115| db $01 ; Raw block
|0B9116| db $05, $05
|0B9118| db $26 ; Repeat byte
|0B9119| db $04
|0B911A| db $02 ; Raw block
|0B911B| db $05, $05, $04
|0B911E| db $FF ; End of Map 0D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen0D_Low:
|0B911F| db $05 ; Raw block
|0B9120| db $06, $DC, $D6, $D6, $D4, $D5
|0B9126| db $65 ; Increment fill
|0B9127| db $D5
|0B9128| db $03 ; Raw block
|0B9129| db $5A, $F8, $F8, $09
|0B912D| db $83 ; Copy past
|0B912E| dw $0000
|0B9130| db $02 ; Raw block
|0B9131| db $DB, $D5, $D5
|0B9134| db $62 ; Increment fill
|0B9135| db $DC
|0B9136| db $0C ; Raw block
|0B9137| db $DA, $03, $5A, $F8, $F8, $13, $20, $DF
|0B913F| db $D6, $D6, $DB, $D6, $D7
|0B9144| db $63 ; Increment fill
|0B9145| db $E0
|0B9146| db $84 ; Copy past
|0B9147| dw $1B00
|0B9149| db $03 ; Raw block
|0B914A| db $F8, $ED, $E4, $D6
|0B914E| db $62 ; Increment fill
|0B914F| db $DB
|0B9150| db $63 ; Increment fill
|0B9151| db $E5
|0B9152| db $00 ; Raw block
|0B9153| db $E3
|0B9154| db $85 ; Copy past
|0B9155| dw $2C00
|0B9157| db $01 ; Raw block
|0B9158| db $ED, $E4
|0B915A| db $68 ; Increment fill
|0B915B| db $E9
|0B915C| db $03 ; Raw block
|0B915D| db $E5, $E5, $13, $F8
|0B9161| db $22 ; Repeat byte
|0B9162| db $ED
|0B9163| db $68 ; Increment fill
|0B9164| db $F2
|0B9165| db $07 ; Raw block
|0B9166| db $CC, $1D, $FB, $F8, $ED, $ED, $7A, $1D
|0B916E| db $63 ; Increment fill
|0B916F| db $FC
|0B9170| db $64 ; Increment fill
|0B9171| db $00
|0B9172| db $08 ; Raw block
|0B9173| db $1D, $BD, $F8, $ED, $7A, $97, $1D, $05
|0B917B| db $06
|0B917C| db $66 ; Increment fill
|0B917D| db $06
|0B917E| db $05 ; Raw block
|0B917F| db $1D, $1D, $E5, $7A, $94, $A2
|0B9185| db $67 ; Increment fill
|0B9186| db $0D
|0B9187| db $0C ; Raw block
|0B9188| db $36, $1D, $15, $AB, $1D, $94, $A2, $A2
|0B9190| db $98, $16, $DB, $17, $D5
|0B9195| db $63 ; Increment fill
|0B9196| db $18
|0B9197| db $0B ; Raw block
|0B9198| db $AB, $AA, $B3, $1D, $95, $8A, $F4, $07
|0B91A0| db $C9, $1C, $18, $19
|0B91A4| db $62 ; Increment fill
|0B91A5| db $1D
|0B91A6| db $0C ; Raw block
|0B91A7| db $CE, $B3, $B3, $A4, $AB, $AB, $AA, $20
|0B91AF| db $B1, $21, $22, $1D, $1E
|0B91B4| db $63 ; Increment fill
|0B91B5| db $23
|0B91B6| db $02 ; Raw block
|0B91B7| db $A4, $F7, $18
|0B91BA| db $22 ; Repeat byte
|0B91BB| db $B3
|0B91BC| db $63 ; Increment fill
|0B91BD| db $27
|0B91BE| db $01 ; Raw block
|0B91BF| db $D5, $D5
|0B91C1| db $62 ; Increment fill
|0B91C2| db $2B
|0B91C3| db $00 ; Raw block
|0B91C4| db $E7
|0B91C5| db $62 ; Increment fill
|0B91C6| db $2E
|0B91C7| db $0D ; Raw block
|0B91C8| db $A4, $A4, $F7, $31, $32, $8F, $33, $34
|0B91D0| db $D5, $35, $0A, $0A, $EE, $EF
|0B91D6| db $66 ; Increment fill
|0B91D7| db $36
|0B91D8| db $11 ; Raw block
|0B91D9| db $B3, $3D, $EF, $3E, $3F, $A4, $A4, $40
|0B91E1| db $2F, $41, $D5, $D2, $D3, $D5, $F5, $42
|0B91E9| db $43, $F7
|0B91EB| db $25 ; Repeat byte
|0B91EC| db $D5
|0B91ED| db $02 ; Raw block
|0B91EE| db $36, $37, $D5
|0B91F1| db $FF ; End of Map 0D

;===================================================================================================

OverworldMap32_Screen0E_High:
|0B91F2| db $23 ; Repeat byte
|0B91F3| db $03
|0B91F4| db $05 ; Raw block
|0B91F5| db $04, $01, $04, $03, $05, $05
|0B91FB| db $25 ; Repeat byte
|0B91FC| db $01
|0B91FD| db $22 ; Repeat byte
|0B91FE| db $03
|0B91FF| db $07 ; Raw block
|0B9200| db $04, $03, $05, $01, $05, $03, $03, $01
|0B9208| db $22 ; Repeat byte
|0B9209| db $03
|0B920A| db $83 ; Copy past
|0B920B| dw $0E00
|0B920D| db $07 ; Raw block
|0B920E| db $04, $03, $02, $04, $01, $02, $00, $02
|0B9216| db $24 ; Repeat byte
|0B9217| db $05
|0B9218| db $14 ; Raw block
|0B9219| db $01, $03, $04, $03, $01, $03, $02, $05
|0B9221| db $00, $05, $02, $02, $05, $02, $02, $05
|0B9229| db $05, $04, $03, $01, $01
|0B922E| db $22 ; Repeat byte
|0B922F| db $05
|0B9230| db $05 ; Raw block
|0B9231| db $00, $05, $02, $01, $01, $00
|0B9237| db $22 ; Repeat byte
|0B9238| db $01
|0B9239| db $0A ; Raw block
|0B923A| db $03, $05, $01, $04, $02, $00, $05, $03
|0B9242| db $02, $02, $00
|0B9245| db $83 ; Copy past
|0B9246| dw $2800
|0B9248| db $0E ; Raw block
|0B9249| db $01, $00, $05, $05, $04, $02, $05, $03
|0B9251| db $03, $02, $05, $02, $01, $02, $04
|0B9258| db $24 ; Repeat byte
|0B9259| db $01
|0B925A| db $09 ; Raw block
|0B925B| db $02, $00, $05, $04, $01, $04, $04, $01
|0B9263| db $05, $02
|0B9265| db $27 ; Repeat byte
|0B9266| db $01
|0B9267| db $05 ; Raw block
|0B9268| db $05, $03, $02, $03, $03, $01
|0B926E| db $22 ; Repeat byte
|0B926F| db $05
|0B9270| db $01 ; Raw block
|0B9271| db $03, $03
|0B9273| db $24 ; Repeat byte
|0B9274| db $01
|0B9275| db $03 ; Raw block
|0B9276| db $00, $03, $01, $05
|0B927A| db $83 ; Copy past
|0B927B| dw $4E00
|0B927D| db $02 ; Raw block
|0B927E| db $03, $01, $01
|0B9281| db $22 ; Repeat byte
|0B9282| db $04
|0B9283| db $02 ; Raw block
|0B9284| db $05, $05, $00
|0B9287| db $22 ; Repeat byte
|0B9288| db $02
|0B9289| db $01 ; Raw block
|0B928A| db $05, $01
|0B928C| db $23 ; Repeat byte
|0B928D| db $03
|0B928E| db $00 ; Raw block
|0B928F| db $01
|0B9290| db $23 ; Repeat byte
|0B9291| db $05
|0B9292| db $01 ; Raw block
|0B9293| db $02, $05
|0B9295| db $22 ; Repeat byte
|0B9296| db $04
|0B9297| db $83 ; Copy past
|0B9298| dw $9300
|0B929A| db $01 ; Raw block
|0B929B| db $03, $04
|0B929D| db $24 ; Repeat byte
|0B929E| db $05
|0B929F| db $00 ; Raw block
|0B92A0| db $01
|0B92A1| db $23 ; Repeat byte
|0B92A2| db $05
|0B92A3| db $01 ; Raw block
|0B92A4| db $04, $01
|0B92A6| db $83 ; Copy past
|0B92A7| dw $4500
|0B92A9| db $83 ; Copy past
|0B92AA| dw $C800
|0B92AC| db $02 ; Raw block
|0B92AD| db $01, $04, $03
|0B92B0| db $23 ; Repeat byte
|0B92B1| db $05
|0B92B2| db $00 ; Raw block
|0B92B3| db $04
|0B92B4| db $22 ; Repeat byte
|0B92B5| db $01
|0B92B6| db $07 ; Raw block
|0B92B7| db $04, $04, $05, $04, $02, $02, $05, $04
|0B92BF| db $83 ; Copy past
|0B92C0| dw $B200
|0B92C2| db $03 ; Raw block
|0B92C3| db $05, $04, $04, $01
|0B92C7| db $44 ; Repeat word
|0B92C8| dw $0504
|0B92CA| db $00 ; Raw block
|0B92CB| db $04
|0B92CC| db $23 ; Repeat byte
|0B92CD| db $05
|0B92CE| db $00 ; Raw block
|0B92CF| db $03
|0B92D0| db $23 ; Repeat byte
|0B92D1| db $05
|0B92D2| db $02 ; Raw block
|0B92D3| db $04, $05, $05
|0B92D6| db $FF ; End of Map 0E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen0E_Low:
|0B92D7| db $00 ; Raw block
|0B92D8| db $6B
|0B92D9| db $22 ; Repeat byte
|0B92DA| db $6C
|0B92DB| db $05 ; Raw block
|0B92DC| db $94, $E5, $74, $78, $44, $45
|0B92E2| db $24 ; Repeat byte
|0B92E3| db $F8
|0B92E4| db $00 ; Raw block
|0B92E5| db $03
|0B92E6| db $22 ; Repeat byte
|0B92E7| db $6C
|0B92E8| db $0A ; Raw block
|0B92E9| db $84, $A8, $46, $AC, $47, $70, $6F, $F8
|0B92F1| db $68, $69, $7B
|0B92F4| db $83 ; Copy past
|0B92F5| dw $0E00
|0B92F7| db $07 ; Raw block
|0B92F8| db $84, $A8, $A1, $B2, $B4, $7A, $1D, $A1
|0B9300| db $64 ; Increment fill
|0B9301| db $47
|0B9302| db $14 ; Raw block
|0B9303| db $03, $6C, $84, $A8, $97, $9A, $02, $4C
|0B930B| db $1D, $4D, $AA, $7A, $4E, $59, $5A, $4F
|0B9313| db $50, $84, $A8, $95, $A2
|0B9318| db $62 ; Increment fill
|0B9319| db $51
|0B931A| db $E0, $38 ; EXT Raw block
|0B931C| db $1D, $54, $86, $95, $A2, $1D, $A2, $41
|0B9324| db $5B, $A8, $55, $DB, $B5, $6E, $1D, $56
|0B932C| db $B2, $79, $91, $1D, $1D, $8D, $57, $58
|0B9334| db $49, $1D, $59, $5A, $C5, $7A, $5B, $56
|0B933C| db $BA, $7A, $5C, $07, $AA, $97, $E6, $EB
|0B9344| db $6A, $A2, $A1, $1F, $04, $1D, $5D, $C4
|0B934C| db $98, $81, $82, $E5, $5E, $82, $00, $06
|0B9354| db $06
|0B9355| db $22 ; Repeat byte
|0B9356| db $AB
|0B9357| db $0C ; Raw block
|0B9358| db $F2, $A2, $5F, $B1, $61, $B4, $A8, $97
|0B9360| db $50, $60, $61, $20, $20
|0B9365| db $22 ; Repeat byte
|0B9366| db $B3
|0B9367| db $0C ; Raw block
|0B9368| db $FB, $F2, $1D, $56, $22, $62, $94, $A2
|0B9370| db $50, $63, $5A, $F8, $F8
|0B9375| db $22 ; Repeat byte
|0B9376| db $A4
|0B9377| db $0D ; Raw block
|0B9378| db $64, $65, $1D, $A1, $07, $A2, $66, $A2
|0B9380| db $56, $57, $5A, $7B, $F8, $19
|0B9386| db $62 ; Increment fill
|0B9387| db $67
|0B9388| db $0A ; Raw block
|0B9389| db $41, $4D, $C9, $B1, $CA, $FB, $F2, $AA
|0B9391| db $56, $BA, $74
|0B9394| db $64 ; Increment fill
|0B9395| db $6A
|0B9396| db $00 ; Raw block
|0B9397| db $CC
|0B9398| db $63 ; Increment fill
|0B9399| db $6F
|0B939A| db $0C ; Raw block
|0B939B| db $CE, $FB, $73, $66, $AA, $74, $75, $D8
|0B93A3| db $D1, $76, $A2, $8A, $C8
|0B93A8| db $62 ; Increment fill
|0B93A9| db $77
|0B93AA| db $E0, $26 ; EXT Raw block
|0B93AC| db $26, $CE, $B3, $FB, $AB, $AA, $B3, $7A
|0B93B4| db $A6, $07, $07, $7B, $B3, $7C, $2B, $D1
|0B93BC| db $7D, $26, $A4, $CE, $B3, $B3, $7E, $F5
|0B93C4| db $42, $B1, $B1, $43, $7F, $3B, $80, $20
|0B93CC| db $81, $82, $41, $26, $A4, $7F, $36
|0B93D3| db $FF ; End of Map 0E

;===================================================================================================

OverworldMap32_Screen0F_High:
|0B93D4| db $24 ; Repeat byte
|0B93D5| db $05
|0B93D6| db $00 ; Raw block
|0B93D7| db $01
|0B93D8| db $25 ; Repeat byte
|0B93D9| db $05
|0B93DA| db $22 ; Repeat byte
|0B93DB| db $02
|0B93DC| db $00 ; Raw block
|0B93DD| db $01
|0B93DE| db $24 ; Repeat byte
|0B93DF| db $05
|0B93E0| db $02 ; Raw block
|0B93E1| db $03, $01, $01
|0B93E4| db $23 ; Repeat byte
|0B93E5| db $05
|0B93E6| db $22 ; Repeat byte
|0B93E7| db $02
|0B93E8| db $01 ; Raw block
|0B93E9| db $01, $03
|0B93EB| db $23 ; Repeat byte
|0B93EC| db $05
|0B93ED| db $02 ; Raw block
|0B93EE| db $02, $02, $01
|0B93F1| db $22 ; Repeat byte
|0B93F2| db $05
|0B93F3| db $22 ; Repeat byte
|0B93F4| db $02
|0B93F5| db $02 ; Raw block
|0B93F6| db $05, $05, $04
|0B93F9| db $24 ; Repeat byte
|0B93FA| db $05
|0B93FB| db $00 ; Raw block
|0B93FC| db $02
|0B93FD| db $23 ; Repeat byte
|0B93FE| db $05
|0B93FF| db $03 ; Raw block
|0B9400| db $02, $02, $05, $03
|0B9404| db $2B ; Repeat byte
|0B9405| db $05
|0B9406| db $03 ; Raw block
|0B9407| db $02, $05, $05, $02
|0B940B| db $2D ; Repeat byte
|0B940C| db $05
|0B940D| db $22 ; Repeat byte
|0B940E| db $02
|0B940F| db $26 ; Repeat byte
|0B9410| db $05
|0B9411| db $00 ; Raw block
|0B9412| db $00
|0B9413| db $23 ; Repeat byte
|0B9414| db $05
|0B9415| db $22 ; Repeat byte
|0B9416| db $02
|0B9417| db $2D ; Repeat byte
|0B9418| db $05
|0B9419| db $00 ; Raw block
|0B941A| db $02
|0B941B| db $29 ; Repeat byte
|0B941C| db $05
|0B941D| db $02 ; Raw block
|0B941E| db $03, $05, $01
|0B9421| db $24 ; Repeat byte
|0B9422| db $05
|0B9423| db $01 ; Raw block
|0B9424| db $01, $01
|0B9426| db $26 ; Repeat byte
|0B9427| db $05
|0B9428| db $00 ; Raw block
|0B9429| db $03
|0B942A| db $24 ; Repeat byte
|0B942B| db $05
|0B942C| db $22 ; Repeat byte
|0B942D| db $01
|0B942E| db $2B ; Repeat byte
|0B942F| db $05
|0B9430| db $03 ; Raw block
|0B9431| db $01, $01, $05, $01
|0B9435| db $2B ; Repeat byte
|0B9436| db $05
|0B9437| db $01 ; Raw block
|0B9438| db $01, $01
|0B943A| db $24 ; Repeat byte
|0B943B| db $05
|0B943C| db $27 ; Repeat byte
|0B943D| db $06
|0B943E| db $04 ; Raw block
|0B943F| db $05, $01, $01, $03, $05
|0B9444| db $22 ; Repeat byte
|0B9445| db $06
|0B9446| db $00 ; Raw block
|0B9447| db $01
|0B9448| db $28 ; Repeat byte
|0B9449| db $06
|0B944A| db $02 ; Raw block
|0B944B| db $01, $03, $03
|0B944E| db $23 ; Repeat byte
|0B944F| db $06
|0B9450| db $02 ; Raw block
|0B9451| db $01, $06, $01
|0B9454| db $22 ; Repeat byte
|0B9455| db $06
|0B9456| db $05 ; Raw block
|0B9457| db $05, $06, $01, $06, $03, $05
|0B945D| db $24 ; Repeat byte
|0B945E| db $06
|0B945F| db $03 ; Raw block
|0B9460| db $01, $02, $01, $03
|0B9464| db $83 ; Copy past
|0B9465| dw $EB00
|0B9467| db $00 ; Raw block
|0B9468| db $01
|0B9469| db $FF ; End of Map 0F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen0F_Low:
|0B946A| db $64 ; Increment fill
|0B946B| db $83
|0B946C| db $00 ; Raw block
|0B946D| db $71
|0B946E| db $65 ; Increment fill
|0B946F| db $88
|0B9470| db $22 ; Repeat byte
|0B9471| db $82
|0B9472| db $02 ; Raw block
|0B9473| db $71, $8E, $83
|0B9476| db $62 ; Increment fill
|0B9477| db $8F
|0B9478| db $02 ; Raw block
|0B9479| db $51, $FD, $ED
|0B947C| db $63 ; Increment fill
|0B947D| db $92
|0B947E| db $22 ; Repeat byte
|0B947F| db $82
|0B9480| db $02 ; Raw block
|0B9481| db $71, $6C, $8E
|0B9484| db $62 ; Increment fill
|0B9485| db $96
|0B9486| db $02 ; Raw block
|0B9487| db $03, $01, $ED
|0B948A| db $62 ; Increment fill
|0B948B| db $99
|0B948C| db $05 ; Raw block
|0B948D| db $8E, $8F, $8F, $9C, $9D, $83
|0B9493| db $64 ; Increment fill
|0B9494| db $9E
|0B9495| db $01 ; Raw block
|0B9496| db $01, $99
|0B9498| db $62 ; Increment fill
|0B9499| db $A3
|0B949A| db $03 ; Raw block
|0B949B| db $82, $82, $60, $51
|0B949F| db $63 ; Increment fill
|0B94A0| db $A6
|0B94A1| db $00 ; Raw block
|0B94A2| db $A4
|0B94A3| db $66 ; Increment fill
|0B94A4| db $AA
|0B94A5| db $09 ; Raw block
|0B94A6| db $82, $60, $63, $03, $B1, $8A, $B2, $B3
|0B94AE| db $A4, $A4
|0B94B0| db $66 ; Increment fill
|0B94B1| db $B4
|0B94B2| db $00 ; Raw block
|0B94B3| db $63
|0B94B4| db $22 ; Repeat byte
|0B94B5| db $03
|0B94B6| db $00 ; Raw block
|0B94B7| db $8A
|0B94B8| db $62 ; Increment fill
|0B94B9| db $BB
|0B94BA| db $03 ; Raw block
|0B94BB| db $A4, $BE, $BF, $1D
|0B94BF| db $63 ; Increment fill
|0B94C0| db $C0
|0B94C1| db $22 ; Repeat byte
|0B94C2| db $03
|0B94C3| db $01 ; Raw block
|0B94C4| db $C4, $8A
|0B94C6| db $6B ; Increment fill
|0B94C7| db $C5
|0B94C8| db $01 ; Raw block
|0B94C9| db $03, $C4
|0B94CB| db $68 ; Increment fill
|0B94CC| db $D1
|0B94CD| db $02 ; Raw block
|0B94CE| db $56, $DA, $23
|0B94D1| db $62 ; Increment fill
|0B94D2| db $DB
|0B94D3| db $03 ; Raw block
|0B94D4| db $D1, $DE, $CD, $CD
|0B94D8| db $66 ; Increment fill
|0B94D9| db $DF
|0B94DA| db $00 ; Raw block
|0B94DB| db $D5
|0B94DC| db $64 ; Increment fill
|0B94DD| db $E6
|0B94DE| db $02 ; Raw block
|0B94DF| db $03, $D6, $D6
|0B94E2| db $6A ; Increment fill
|0B94E3| db $EB
|0B94E4| db $04 ; Raw block
|0B94E5| db $E9, $71, $01, $83, $D6
|0B94EA| db $64 ; Increment fill
|0B94EB| db $F6
|0B94EC| db $0D ; Raw block
|0B94ED| db $F5, $FB, $C1, $FC, $FD, $C1, $E9, $71
|0B94F5| db $06, $8E, $83, $84, $FE, $FF
|0B94FB| db $67 ; Increment fill
|0B94FC| db $00
|0B94FD| db $04 ; Raw block
|0B94FE| db $E9, $71, $06, $6C, $8E
|0B9503| db $62 ; Increment fill
|0B9504| db $08
|0B9505| db $00 ; Raw block
|0B9506| db $03
|0B9507| db $63 ; Increment fill
|0B9508| db $0B
|0B9509| db $00 ; Raw block
|0B950A| db $04
|0B950B| db $63 ; Increment fill
|0B950C| db $0F
|0B950D| db $02 ; Raw block
|0B950E| db $0C, $6C, $6C
|0B9511| db $63 ; Increment fill
|0B9512| db $13
|0B9513| db $0B ; Raw block
|0B9514| db $03, $17, $17, $18, $0E, $19, $DC, $1A
|0B951C| db $03, $1B, $6C, $9E
|0B9520| db $63 ; Increment fill
|0B9521| db $1C
|0B9522| db $09 ; Raw block
|0B9523| db $16, $03, $75, $00, $63, $20, $FB, $21
|0B952B| db $F3, $71
|0B952D| db $FF ; End of Map 0F

;===================================================================================================

OverworldMap32_Screen10_High:
|0B952E| db $03 ; Raw block
|0B952F| db $00, $00, $06, $06
|0B9533| db $26 ; Repeat byte
|0B9534| db $00
|0B9535| db $01 ; Raw block
|0B9536| db $06, $06
|0B9538| db $24 ; Repeat byte
|0B9539| db $00
|0B953A| db $01 ; Raw block
|0B953B| db $06, $06
|0B953D| db $26 ; Repeat byte
|0B953E| db $00
|0B953F| db $01 ; Raw block
|0B9540| db $06, $06
|0B9542| db $23 ; Repeat byte
|0B9543| db $00
|0B9544| db $03 ; Raw block
|0B9545| db $01, $06, $06, $01
|0B9549| db $23 ; Repeat byte
|0B954A| db $00
|0B954B| db $00 ; Raw block
|0B954C| db $03
|0B954D| db $84 ; Copy past
|0B954E| dw $2100
|0B9550| db $05 ; Raw block
|0B9551| db $03, $00, $04, $06, $05, $01
|0B9557| db $24 ; Repeat byte
|0B9558| db $00
|0B9559| db $02 ; Raw block
|0B955A| db $01, $02, $06
|0B955D| db $24 ; Repeat byte
|0B955E| db $00
|0B955F| db $01 ; Raw block
|0B9560| db $01, $06
|0B9562| db $25 ; Repeat byte
|0B9563| db $00
|0B9564| db $00 ; Raw block
|0B9565| db $01
|0B9566| db $25 ; Repeat byte
|0B9567| db $00
|0B9568| db $04 ; Raw block
|0B9569| db $01, $06, $01, $01, $06
|0B956E| db $22 ; Repeat byte
|0B956F| db $00
|0B9570| db $04 ; Raw block
|0B9571| db $03, $04, $00, $06, $01
|0B9576| db $22 ; Repeat byte
|0B9577| db $00
|0B9578| db $00 ; Raw block
|0B9579| db $04
|0B957A| db $22 ; Repeat byte
|0B957B| db $01
|0B957C| db $00 ; Raw block
|0B957D| db $06
|0B957E| db $23 ; Repeat byte
|0B957F| db $00
|0B9580| db $03 ; Raw block
|0B9581| db $01, $04, $03, $01
|0B9585| db $23 ; Repeat byte
|0B9586| db $00
|0B9587| db $03 ; Raw block
|0B9588| db $01, $03, $01, $04
|0B958C| db $23 ; Repeat byte
|0B958D| db $00
|0B958E| db $02 ; Raw block
|0B958F| db $01, $04, $01
|0B9592| db $25 ; Repeat byte
|0B9593| db $00
|0B9594| db $00 ; Raw block
|0B9595| db $01
|0B9596| db $24 ; Repeat byte
|0B9597| db $00
|0B9598| db $03 ; Raw block
|0B9599| db $04, $04, $06, $06
|0B959D| db $26 ; Repeat byte
|0B959E| db $00
|0B959F| db $00 ; Raw block
|0B95A0| db $01
|0B95A1| db $22 ; Repeat byte
|0B95A2| db $00
|0B95A3| db $22 ; Repeat byte
|0B95A4| db $01
|0B95A5| db $02 ; Raw block
|0B95A6| db $06, $06, $01
|0B95A9| db $24 ; Repeat byte
|0B95AA| db $00
|0B95AB| db $00 ; Raw block
|0B95AC| db $01
|0B95AD| db $23 ; Repeat byte
|0B95AE| db $00
|0B95AF| db $00 ; Raw block
|0B95B0| db $01
|0B95B1| db $24 ; Repeat byte
|0B95B2| db $06
|0B95B3| db $24 ; Repeat byte
|0B95B4| db $00
|0B95B5| db $02 ; Raw block
|0B95B6| db $06, $00, $06
|0B95B9| db $23 ; Repeat byte
|0B95BA| db $00
|0B95BB| db $02 ; Raw block
|0B95BC| db $06, $02, $06
|0B95BF| db $24 ; Repeat byte
|0B95C0| db $00
|0B95C1| db $04 ; Raw block
|0B95C2| db $01, $01, $00, $01, $01
|0B95C7| db $83 ; Copy past
|0B95C8| dw $C100
|0B95CA| db $01 ; Raw block
|0B95CB| db $04, $06
|0B95CD| db $24 ; Repeat byte
|0B95CE| db $00
|0B95CF| db $24 ; Repeat byte
|0B95D0| db $06
|0B95D1| db $83 ; Copy past
|0B95D2| dw $2000
|0B95D4| db $00 ; Raw block
|0B95D5| db $04
|0B95D6| db $26 ; Repeat byte
|0B95D7| db $00
|0B95D8| db $03 ; Raw block
|0B95D9| db $06, $03, $06, $06
|0B95DD| db $23 ; Repeat byte
|0B95DE| db $00
|0B95DF| db $00 ; Raw block
|0B95E0| db $06
|0B95E1| db $26 ; Repeat byte
|0B95E2| db $00
|0B95E3| db $02 ; Raw block
|0B95E4| db $06, $03, $06
|0B95E7| db $24 ; Repeat byte
|0B95E8| db $00
|0B95E9| db $00 ; Raw block
|0B95EA| db $06
|0B95EB| db $23 ; Repeat byte
|0B95EC| db $00
|0B95ED| db $FF ; End of Map 10

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen10_Low:
|0B95EE| db $03 ; Raw block
|0B95EF| db $02, $00, $22, $23
|0B95F3| db $62 ; Increment fill
|0B95F4| db $00
|0B95F5| db $01 ; Raw block
|0B95F6| db $00, $01
|0B95F8| db $86 ; Copy past
|0B95F9| dw $0000
|0B95FB| db $03 ; Raw block
|0B95FC| db $0B, $09, $24, $25
|0B9600| db $62 ; Increment fill
|0B9601| db $09
|0B9602| db $01 ; Raw block
|0B9603| db $09, $0A
|0B9605| db $86 ; Copy past
|0B9606| dw $1000
|0B9608| db $05 ; Raw block
|0B9609| db $06, $10, $26, $27, $31, $93
|0B960F| db $62 ; Increment fill
|0B9610| db $06
|0B9611| db $00 ; Raw block
|0B9612| db $EC
|0B9613| db $84 ; Copy past
|0B9614| dw $2100
|0B9616| db $0E ; Raw block
|0B9617| db $EC, $02, $6D, $28, $4F, $39, $3F, $02
|0B961F| db $00, $01, $83, $1C, $5E, $29, $D1
|0B9626| db $83 ; Copy past
|0B9627| dw $0E00
|0B9629| db $0A ; Raw block
|0B962A| db $2F, $2A, $91, $92, $0B, $09, $0A, $8C
|0B9632| db $29, $1D, $EE
|0B9635| db $84 ; Copy past
|0B9636| dw $1D00
|0B9638| db $13 ; Raw block
|0B9639| db $2B, $61, $62, $2C, $7A, $07, $08, $EC
|0B9641| db $60, $1D, $2D, $31, $93, $06, $02, $6D
|0B9649| db $26, $67, $68, $2E
|0B964D| db $84 ; Copy past
|0B964E| dw $3600
|0B9650| db $03 ; Raw block
|0B9651| db $23, $FB, $39, $3F
|0B9655| db $83 ; Copy past
|0B9656| dw $3F00
|0B9658| db $02 ; Raw block
|0B9659| db $DB, $6F, $1E
|0B965C| db $84 ; Copy past
|0B965D| dw $4600
|0B965F| db $18 ; Raw block
|0B9660| db $1E, $74, $91, $92, $0B, $7A, $07, $FE
|0B9668| db $38, $C9, $93, $7A, $07, $93, $07, $60
|0B9670| db $2F, $30, $C9, $93, $06, $02, $00, $01
|0B9678| db $7F
|0B9679| db $83 ; Copy past
|0B967A| dw $3400
|0B967C| db $04 ; Raw block
|0B967D| db $04, $1B, $1C, $31, $32
|0B9682| db $84 ; Copy past
|0B9683| dw $6D00
|0B9685| db $00 ; Raw block
|0B9686| db $0A
|0B9687| db $83 ; Copy past
|0B9688| dw $7C00
|0B968A| db $01 ; Raw block
|0B968B| db $09, $07
|0B968D| db $64 ; Increment fill
|0B968E| db $33
|0B968F| db $83 ; Copy past
|0B9690| dw $7E00
|0B9692| db $1A ; Raw block
|0B9693| db $93, $38, $1D, $2C, $7A, $07, $FE, $7C
|0B969B| db $39, $8A, $3A, $C9, $93, $7A, $02, $00
|0B96A3| db $04, $3B, $1C, $19, $1A, $00, $04, $3B
|0B96AB| db $1D, $23, $3B
|0B96AE| db $84 ; Copy past
|0B96AF| dw $3D00
|0B96B1| db $64 ; Increment fill
|0B96B2| db $3C
|0B96B3| db $03 ; Raw block
|0B96B4| db $09, $07, $41, $42
|0B96B8| db $83 ; Copy past
|0B96B9| dw $7500
|0B96BB| db $83 ; Copy past
|0B96BC| dw $7F00
|0B96BE| db $06 ; Raw block
|0B96BF| db $43, $D5, $44, $45, $07, $FE, $7C
|0B96C6| db $83 ; Copy past
|0B96C7| dw $B400
|0B96C9| db $83 ; Copy past
|0B96CA| dw $BE00
|0B96CC| db $03 ; Raw block
|0B96CD| db $01, $46, $D5, $47
|0B96D1| db $83 ; Copy past
|0B96D2| dw $9000
|0B96D4| db $00 ; Raw block
|0B96D5| db $1D
|0B96D6| db $83 ; Copy past
|0B96D7| dw $6500
|0B96D9| db $00 ; Raw block
|0B96DA| db $02
|0B96DB| db $FF ; End of Map 10

;===================================================================================================

OverworldMap32_Screen13_High:
|0B96DC| db $01 ; Raw block
|0B96DD| db $04, $06
|0B96DF| db $22 ; Repeat byte
|0B96E0| db $01
|0B96E1| db $00 ; Raw block
|0B96E2| db $06
|0B96E3| db $22 ; Repeat byte
|0B96E4| db $00
|0B96E5| db $23 ; Repeat byte
|0B96E6| db $06
|0B96E7| db $22 ; Repeat byte
|0B96E8| db $00
|0B96E9| db $01 ; Raw block
|0B96EA| db $04, $03
|0B96EC| db $22 ; Repeat byte
|0B96ED| db $01
|0B96EE| db $03 ; Raw block
|0B96EF| db $06, $01, $00, $01
|0B96F3| db $23 ; Repeat byte
|0B96F4| db $06
|0B96F5| db $07 ; Raw block
|0B96F6| db $01, $00, $00, $03, $03, $05, $01, $02
|0B96FE| db $83 ; Copy past
|0B96FF| dw $1500
|0B9701| db $23 ; Repeat byte
|0B9702| db $06
|0B9703| db $0A ; Raw block
|0B9704| db $01, $00, $00, $02, $02, $04, $02, $00
|0B970C| db $06, $01, $01
|0B970F| db $25 ; Repeat byte
|0B9710| db $06
|0B9711| db $08 ; Raw block
|0B9712| db $01, $06, $01, $01, $03, $00, $00, $06
|0B971A| db $00
|0B971B| db $28 ; Repeat byte
|0B971C| db $06
|0B971D| db $04 ; Raw block
|0B971E| db $00, $06, $06, $01, $01
|0B9723| db $29 ; Repeat byte
|0B9724| db $06
|0B9725| db $22 ; Repeat byte
|0B9726| db $00
|0B9727| db $02 ; Raw block
|0B9728| db $06, $01, $01
|0B972B| db $22 ; Repeat byte
|0B972C| db $06
|0B972D| db $83 ; Copy past
|0B972E| dw $0700
|0B9730| db $83 ; Copy past
|0B9731| dw $0700
|0B9733| db $22 ; Repeat byte
|0B9734| db $00
|0B9735| db $03 ; Raw block
|0B9736| db $03, $04, $06, $01
|0B973A| db $28 ; Repeat byte
|0B973B| db $06
|0B973C| db $04 ; Raw block
|0B973D| db $02, $04, $00, $00, $01
|0B9742| db $43 ; Repeat word
|0B9743| dw $0006
|0B9745| db $00 ; Raw block
|0B9746| db $04
|0B9747| db $83 ; Copy past
|0B9748| dw $1B00
|0B974A| db $07 ; Raw block
|0B974B| db $06, $06, $01, $04, $04, $06, $02, $02
|0B9753| db $89 ; Copy past
|0B9754| dw $8600
|0B9756| db $02 ; Raw block
|0B9757| db $00, $03, $03
|0B975A| db $83 ; Copy past
|0B975B| dw $3100
|0B975D| db $28 ; Repeat byte
|0B975E| db $06
|0B975F| db $05 ; Raw block
|0B9760| db $00, $06, $03, $01, $02, $00
|0B9766| db $23 ; Repeat byte
|0B9767| db $06
|0B9768| db $00 ; Raw block
|0B9769| db $02
|0B976A| db $34 ; Repeat byte
|0B976B| db $06
|0B976C| db $01 ; Raw block
|0B976D| db $01, $01
|0B976F| db $24 ; Repeat byte
|0B9770| db $06
|0B9771| db $24 ; Repeat byte
|0B9772| db $01
|0B9773| db $22 ; Repeat byte
|0B9774| db $06
|0B9775| db $30 ; Repeat byte
|0B9776| db $01
|0B9777| db $2F ; Repeat byte
|0B9778| db $06
|0B9779| db $FF ; End of Map 13

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen13_Low:
|0B977A| db $05 ; Raw block
|0B977B| db $8D, $48, $F8, $ED, $E2, $49
|0B9781| db $62 ; Increment fill
|0B9782| db $06
|0B9783| db $63 ; Increment fill
|0B9784| db $4A
|0B9785| db $62 ; Increment fill
|0B9786| db $06
|0B9787| db $08 ; Raw block
|0B9788| db $93, $5A, $F8, $ED, $ED, $4E, $1A, $00
|0B9790| db $04
|0B9791| db $63 ; Increment fill
|0B9792| db $4F
|0B9793| db $0B ; Raw block
|0B9794| db $1A, $00, $01, $56, $BA, $6A, $ED, $7A
|0B979C| db $53, $27, $09, $07
|0B97A0| db $63 ; Increment fill
|0B97A1| db $54
|0B97A2| db $0A ; Raw block
|0B97A3| db $27, $09, $0A, $61, $61, $82, $7A, $99
|0B97AB| db $58, $30, $0E
|0B97AE| db $63 ; Increment fill
|0B97AF| db $59
|0B97B0| db $0A ; Raw block
|0B97B1| db $5A, $5D, $0E, $5E, $22, $22, $A8, $99
|0B97B9| db $1D, $58, $1D
|0B97BC| db $64 ; Increment fill
|0B97BD| db $5F
|0B97BE| db $00 ; Raw block
|0B97BF| db $61
|0B97C0| db $62 ; Increment fill
|0B97C1| db $64
|0B97C2| db $06 ; Raw block
|0B97C3| db $FB, $67, $68, $61, $62, $58, $66
|0B97CA| db $64 ; Increment fill
|0B97CB| db $69
|0B97CC| db $1A ; Raw block
|0B97CD| db $6B, $6E, $65, $1D, $1D, $1C, $6F, $67
|0B97D5| db $68, $58, $70, $71, $1D, $1D, $72, $73
|0B97DD| db $1D, $1D, $71, $74, $AA, $AA, $1D, $DB
|0B97E5| db $25, $58, $1E
|0B97E8| db $65 ; Increment fill
|0B97E9| db $75
|0B97EA| db $19 ; Raw block
|0B97EB| db $76, $7B, $7C, $08, $C2, $1D, $9F, $2D
|0B97F3| db $58, $FB, $7D, $1F, $20, $7E, $7F, $37
|0B97FB| db $1F, $80, $7C, $E5, $C3, $C4, $81, $6D
|0B9803| db $6E, $1D
|0B9805| db $86 ; Copy past
|0B9806| dw $8700
|0B9808| db $0A ; Raw block
|0B9809| db $82, $83, $1D, $56, $B1, $61, $C5, $7A
|0B9811| db $1D, $84, $85
|0B9814| db $62 ; Increment fill
|0B9815| db $85
|0B9816| db $0A ; Raw block
|0B9817| db $85, $85, $88, $89, $A0, $8A, $56, $22
|0B981F| db $04, $1D, $66
|0B9822| db $62 ; Increment fill
|0B9823| db $8B
|0B9824| db $02 ; Raw block
|0B9825| db $4F, $8E, $8B
|0B9828| db $67 ; Increment fill
|0B9829| db $8F
|0B982A| db $00 ; Raw block
|0B982B| db $95
|0B982C| db $62 ; Increment fill
|0B982D| db $97
|0B982E| db $09 ; Raw block
|0B982F| db $93, $92, $93, $9A, $9B, $97, $9C, $AB
|0B9837| db $AB, $9D
|0B9839| db $22 ; Repeat byte
|0B983A| db $9E
|0B983B| db $00 ; Raw block
|0B983C| db $9F
|0B983D| db $24 ; Repeat byte
|0B983E| db $AB
|0B983F| db $62 ; Increment fill
|0B9840| db $9D
|0B9841| db $00 ; Raw block
|0B9842| db $AB
|0B9843| db $2F ; Repeat byte
|0B9844| db $B3
|0B9845| db $2F ; Repeat byte
|0B9846| db $A0
|0B9847| db $FF ; End of Map 13

;===================================================================================================

OverworldMap32_Screen14_High:
|0B9848| db $23 ; Repeat byte
|0B9849| db $00
|0B984A| db $01 ; Raw block
|0B984B| db $06, $01
|0B984D| db $23 ; Repeat byte
|0B984E| db $06
|0B984F| db $01 ; Raw block
|0B9850| db $02, $06
|0B9852| db $27 ; Repeat byte
|0B9853| db $00
|0B9854| db $07 ; Raw block
|0B9855| db $06, $06, $01, $01, $06, $01, $02, $06
|0B985D| db $27 ; Repeat byte
|0B985E| db $00
|0B985F| db $00 ; Raw block
|0B9860| db $06
|0B9861| db $22 ; Repeat byte
|0B9862| db $01
|0B9863| db $23 ; Repeat byte
|0B9864| db $06
|0B9865| db $23 ; Repeat byte
|0B9866| db $00
|0B9867| db $83 ; Copy past
|0B9868| dw $0400
|0B986A| db $02 ; Raw block
|0B986B| db $00, $01, $01
|0B986E| db $23 ; Repeat byte
|0B986F| db $06
|0B9870| db $05 ; Raw block
|0B9871| db $03, $06, $06, $01, $06, $00
|0B9877| db $22 ; Repeat byte
|0B9878| db $06
|0B9879| db $02 ; Raw block
|0B987A| db $00, $01, $01
|0B987D| db $27 ; Repeat byte
|0B987E| db $06
|0B987F| db $03 ; Raw block
|0B9880| db $00, $00, $04, $06
|0B9884| db $83 ; Copy past
|0B9885| dw $2300
|0B9887| db $03 ; Raw block
|0B9888| db $03, $01, $01, $03
|0B988C| db $33 ; Repeat byte
|0B988D| db $06
|0B988E| db $00 ; Raw block
|0B988F| db $00
|0B9890| db $2E ; Repeat byte
|0B9891| db $06
|0B9892| db $00 ; Raw block
|0B9893| db $00
|0B9894| db $2E ; Repeat byte
|0B9895| db $06
|0B9896| db $00 ; Raw block
|0B9897| db $00
|0B9898| db $24 ; Repeat byte
|0B9899| db $06
|0B989A| db $01 ; Raw block
|0B989B| db $01, $01
|0B989D| db $28 ; Repeat byte
|0B989E| db $06
|0B989F| db $00 ; Raw block
|0B98A0| db $00
|0B98A1| db $32 ; Repeat byte
|0B98A2| db $06
|0B98A3| db $00 ; Raw block
|0B98A4| db $02
|0B98A5| db $29 ; Repeat byte
|0B98A6| db $06
|0B98A7| db $01 ; Raw block
|0B98A8| db $00, $06
|0B98AA| db $23 ; Repeat byte
|0B98AB| db $07
|0B98AC| db $22 ; Repeat byte
|0B98AD| db $06
|0B98AE| db $02 ; Raw block
|0B98AF| db $07, $06, $07
|0B98B2| db $24 ; Repeat byte
|0B98B3| db $06
|0B98B4| db $00 ; Raw block
|0B98B5| db $01
|0B98B6| db $22 ; Repeat byte
|0B98B7| db $06
|0B98B8| db $23 ; Repeat byte
|0B98B9| db $01
|0B98BA| db $02 ; Raw block
|0B98BB| db $07, $06, $07
|0B98BE| db $22 ; Repeat byte
|0B98BF| db $01
|0B98C0| db $01 ; Raw block
|0B98C1| db $07, $07
|0B98C3| db $2F ; Repeat byte
|0B98C4| db $01
|0B98C5| db $2F ; Repeat byte
|0B98C6| db $06
|0B98C7| db $FF ; End of Map 14

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen14_Low:
|0B98C8| db $62 ; Increment fill
|0B98C9| db $06
|0B98CA| db $02 ; Raw block
|0B98CB| db $06, $A1, $71
|0B98CE| db $43 ; Repeat word
|0B98CF| dw $A3A2
|0B98D1| db $02 ; Raw block
|0B98D2| db $DC, $A4, $08
|0B98D5| db $62 ; Increment fill
|0B98D6| db $06
|0B98D7| db $17 ; Raw block
|0B98D8| db $02, $00, $01, $83, $A5, $12, $0C, $06
|0B98E0| db $A3, $06, $DC, $A6, $3F, $02, $00, $01
|0B98E8| db $0B, $09, $0A, $8C, $A7, $03, $09, $0A
|0B98F0| db $63 ; Increment fill
|0B98F1| db $A8
|0B98F2| db $0A ; Raw block
|0B98F3| db $92, $0B, $09, $0A, $AC, $0E, $5E, $30
|0B98FB| db $1D, $E4, $13
|0B98FE| db $63 ; Increment fill
|0B98FF| db $AD
|0B9900| db $05 ; Raw block
|0B9901| db $A8, $2F, $AC, $0E, $5E, $1D
|0B9907| db $62 ; Increment fill
|0B9908| db $B1
|0B9909| db $04 ; Raw block
|0B990A| db $1F, $2D, $1F, $B4, $B5
|0B990F| db $65 ; Increment fill
|0B9910| db $B5
|0B9911| db $0B ; Raw block
|0B9912| db $1D, $1D, $20, $BB, $1F, $BC, $37, $1E
|0B991A| db $56, $22, $22, $A8
|0B991E| db $63 ; Increment fill
|0B991F| db $BD
|0B9920| db $00 ; Raw block
|0B9921| db $66
|0B9922| db $64 ; Increment fill
|0B9923| db $C1
|0B9924| db $00 ; Raw block
|0B9925| db $C4
|0B9926| db $62 ; Increment fill
|0B9927| db $C6
|0B9928| db $00 ; Raw block
|0B9929| db $C6
|0B992A| db $63 ; Increment fill
|0B992B| db $C9
|0B992C| db $01 ; Raw block
|0B992D| db $C0, $1D
|0B992F| db $68 ; Increment fill
|0B9930| db $CD
|0B9931| db $00 ; Raw block
|0B9932| db $C5
|0B9933| db $64 ; Increment fill
|0B9934| db $D6
|0B9935| db $03 ; Raw block
|0B9936| db $1D, $7C, $DB, $D2
|0B993A| db $65 ; Increment fill
|0B993B| db $DC
|0B993C| db $00 ; Raw block
|0B993D| db $D1
|0B993E| db $64 ; Increment fill
|0B993F| db $E2
|0B9940| db $0A ; Raw block
|0B9941| db $1D, $66, $CE, $E7, $E8, $DF, $37, $3C
|0B9949| db $E9, $DC, $D3
|0B994C| db $62 ; Increment fill
|0B994D| db $EA
|0B994E| db $04 ; Raw block
|0B994F| db $E5, $DA, $ED, $1D, $C2
|0B9954| db $63 ; Increment fill
|0B9955| db $EE
|0B9956| db $0E ; Raw block
|0B9957| db $EC, $F2, $E8, $DF, $F3, $DF, $F4, $E5
|0B995F| db $DA, $7C, $F5, $95, $95, $F6, $9B
|0B9966| db $67 ; Increment fill
|0B9967| db $F7
|0B9968| db $03 ; Raw block
|0B9969| db $F8, $FF, $1D, $92
|0B996D| db $63 ; Increment fill
|0B996E| db $00
|0B996F| db $22 ; Repeat byte
|0B9970| db $9C
|0B9971| db $02 ; Raw block
|0B9972| db $04, $95, $05
|0B9975| db $24 ; Repeat byte
|0B9976| db $9C
|0B9977| db $00 ; Raw block
|0B9978| db $AB
|0B9979| db $62 ; Increment fill
|0B997A| db $9D
|0B997B| db $23 ; Repeat byte
|0B997C| db $AB
|0B997D| db $02 ; Raw block
|0B997E| db $06, $9E, $07
|0B9981| db $22 ; Repeat byte
|0B9982| db $AB
|0B9983| db $01 ; Raw block
|0B9984| db $08, $09
|0B9986| db $2F ; Repeat byte
|0B9987| db $B3
|0B9988| db $2F ; Repeat byte
|0B9989| db $A0
|0B998A| db $FF ; End of Map 14

;===================================================================================================

OverworldMap32_Screen15_High:
|0B998B| db $03 ; Raw block
|0B998C| db $00, $00, $01, $00
|0B9990| db $22 ; Repeat byte
|0B9991| db $01
|0B9992| db $00 ; Raw block
|0B9993| db $03
|0B9994| db $23 ; Repeat byte
|0B9995| db $07
|0B9996| db $07 ; Raw block
|0B9997| db $06, $07, $01, $03, $00, $00, $01, $07
|0B999F| db $24 ; Repeat byte
|0B99A0| db $01
|0B99A1| db $22 ; Repeat byte
|0B99A2| db $07
|0B99A3| db $05 ; Raw block
|0B99A4| db $01, $03, $01, $01, $00, $00
|0B99AA| db $24 ; Repeat byte
|0B99AB| db $01
|0B99AC| db $04 ; Raw block
|0B99AD| db $02, $01, $07, $07, $06
|0B99B2| db $83 ; Copy past
|0B99B3| dw $1C00
|0B99B5| db $02 ; Raw block
|0B99B6| db $06, $01, $07
|0B99B9| db $22 ; Repeat byte
|0B99BA| db $01
|0B99BB| db $02 ; Raw block
|0B99BC| db $07, $07, $05
|0B99BF| db $22 ; Repeat byte
|0B99C0| db $07
|0B99C1| db $03 ; Raw block
|0B99C2| db $06, $07, $07, $02
|0B99C6| db $22 ; Repeat byte
|0B99C7| db $00
|0B99C8| db $02 ; Raw block
|0B99C9| db $06, $00, $01
|0B99CC| db $29 ; Repeat byte
|0B99CD| db $07
|0B99CE| db $06 ; Raw block
|0B99CF| db $00, $06, $00, $04, $04, $01, $07
|0B99D6| db $22 ; Repeat byte
|0B99D7| db $05
|0B99D8| db $00 ; Raw block
|0B99D9| db $06
|0B99DA| db $24 ; Repeat byte
|0B99DB| db $07
|0B99DC| db $08 ; Raw block
|0B99DD| db $03, $04, $00, $04, $02, $07, $07, $05
|0B99E5| db $05
|0B99E6| db $22 ; Repeat byte
|0B99E7| db $07
|0B99E8| db $04 ; Raw block
|0B99E9| db $00, $04, $03, $03, $00
|0B99EE| db $25 ; Repeat byte
|0B99EF| db $07
|0B99F0| db $0D ; Raw block
|0B99F1| db $05, $07, $03, $07, $06, $06, $04, $01
|0B99F9| db $02, $00, $07, $06, $03, $05
|0B99FF| db $84 ; Copy past
|0B9A00| dw $3600
|0B9A02| db $08 ; Raw block
|0B9A03| db $01, $01, $05, $06, $06, $03, $07, $04
|0B9A0B| db $00
|0B9A0C| db $24 ; Repeat byte
|0B9A0D| db $07
|0B9A0E| db $00 ; Raw block
|0B9A0F| db $05
|0B9A10| db $22 ; Repeat byte
|0B9A11| db $07
|0B9A12| db $07 ; Raw block
|0B9A13| db $01, $04, $03, $01, $06, $07, $06, $02
|0B9A1B| db $83 ; Copy past
|0B9A1C| dw $0A00
|0B9A1E| db $00 ; Raw block
|0B9A1F| db $05
|0B9A20| db $23 ; Repeat byte
|0B9A21| db $07
|0B9A22| db $02 ; Raw block
|0B9A23| db $04, $01, $01
|0B9A26| db $43 ; Repeat word
|0B9A27| dw $0706
|0B9A29| db $01 ; Raw block
|0B9A2A| db $07, $03
|0B9A2C| db $26 ; Repeat byte
|0B9A2D| db $07
|0B9A2E| db $00 ; Raw block
|0B9A2F| db $06
|0B9A30| db $43 ; Repeat word
|0B9A31| dw $0706
|0B9A33| db $00 ; Raw block
|0B9A34| db $01
|0B9A35| db $83 ; Copy past
|0B9A36| dw $8800
|0B9A38| db $25 ; Repeat byte
|0B9A39| db $07
|0B9A3A| db $00 ; Raw block
|0B9A3B| db $06
|0B9A3C| db $83 ; Copy past
|0B9A3D| dw $0600
|0B9A3F| db $84 ; Copy past
|0B9A40| dw $C200
|0B9A42| db $03 ; Raw block
|0B9A43| db $06, $07, $07, $05
|0B9A47| db $22 ; Repeat byte
|0B9A48| db $07
|0B9A49| db $02 ; Raw block
|0B9A4A| db $01, $07, $04
|0B9A4D| db $23 ; Repeat byte
|0B9A4E| db $07
|0B9A4F| db $86 ; Copy past
|0B9A50| dw $3400
|0B9A52| db $00 ; Raw block
|0B9A53| db $03
|0B9A54| db $25 ; Repeat byte
|0B9A55| db $07
|0B9A56| db $0C ; Raw block
|0B9A57| db $02, $06, $00, $00, $07, $03, $05, $07
|0B9A5F| db $03, $04, $01, $04, $00
|0B9A64| db $FF ; End of Map 15

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen15_Low:
|0B9A65| db $07 ; Raw block
|0B9A66| db $06, $07, $32, $FF, $00, $06, $06, $63
|0B9A6E| db $63 ; Increment fill
|0B9A6F| db $0A
|0B9A70| db $0C ; Raw block
|0B9A71| db $12, $0E, $0B, $20, $02, $00, $04, $0F
|0B9A79| db $09, $0A, $0A, $FD, $E2
|0B9A7E| db $62 ; Increment fill
|0B9A7F| db $10
|0B9A80| db $07 ; Raw block
|0B9A81| db $03, $9C, $16, $F8, $0B, $09, $07, $E4
|0B9A89| db $62 ; Increment fill
|0B9A8A| db $13
|0B9A8B| db $04 ; Raw block
|0B9A8C| db $01, $ED, $13, $14, $16
|0B9A91| db $83 ; Copy past
|0B9A92| dw $1C00
|0B9A94| db $02 ; Raw block
|0B9A95| db $AC, $0E, $15
|0B9A98| db $62 ; Increment fill
|0B9A99| db $1E
|0B9A9A| db $02 ; Raw block
|0B9A9B| db $16, $17, $99
|0B9A9E| db $62 ; Increment fill
|0B9A9F| db $18
|0B9AA0| db $02 ; Raw block
|0B9AA1| db $16, $1B, $1C
|0B9AA4| db $43 ; Repeat word
|0B9AA5| dw $1DFB
|0B9AA7| db $02 ; Raw block
|0B9AA8| db $66, $FB, $3C
|0B9AAB| db $67 ; Increment fill
|0B9AAC| db $1D
|0B9AAD| db $0C ; Raw block
|0B9AAE| db $23, $25, $1D, $66, $1D, $8A, $BF, $F0
|0B9AB6| db $26, $96, $E1, $E2, $1D
|0B9ABB| db $24 ; Repeat byte
|0B9ABC| db $27
|0B9ABD| db $08 ; Raw block
|0B9ABE| db $E2, $BE, $1D, $AA, $FA, $28, $1B, $9F
|0B9AC6| db $E2
|0B9AC7| db $62 ; Increment fill
|0B9AC8| db $29
|0B9AC9| db $04 ; Raw block
|0B9ACA| db $1D, $23, $FB, $E2, $1D
|0B9ACF| db $65 ; Increment fill
|0B9AD0| db $2C
|0B9AD1| db $1B ; Raw block
|0B9AD2| db $E1, $32, $97, $33, $70, $66, $1E, $74
|0B9ADA| db $DE, $1D, $34, $83, $32, $C5, $35, $36
|0B9AE2| db $E1, $37, $38, $F0, $F1, $66, $2F, $30
|0B9AEA| db $E2, $39, $2C, $FB
|0B9AEE| db $64 ; Increment fill
|0B9AEF| db $3A
|0B9AF0| db $E0, $21 ; EXT Raw block
|0B9AF2| db $AB, $3F, $28, $40, $FB, $23, $FB, $61
|0B9AFA| db $83, $41, $66, $30, $3A, $42, $1E, $43
|0B9B02| db $E1, $44, $30, $45, $46, $1E, $74, $67
|0B9B0A| db $8B, $47, $9C, $04, $48, $5E, $49, $4A
|0B9B12| db $43, $35
|0B9B14| db $62 ; Increment fill
|0B9B15| db $4B
|0B9B16| db $09 ; Raw block
|0B9B17| db $2F, $30, $4E, $98, $4F, $43, $50, $51
|0B9B1F| db $43, $44
|0B9B21| db $65 ; Increment fill
|0B9B22| db $52
|0B9B23| db $0D ; Raw block
|0B9B24| db $66, $41, $44, $09, $58, $4E, $59, $5A
|0B9B2C| db $4E, $4F, $7C, $5B, $5C, $E1
|0B9B32| db $62 ; Increment fill
|0B9B33| db $5D
|0B9B34| db $02 ; Raw block
|0B9B35| db $48, $60, $9A
|0B9B38| db $63 ; Increment fill
|0B9B39| db $61
|0B9B3A| db $07 ; Raw block
|0B9B3B| db $58, $65, $65, $66, $C5, $67, $68, $49
|0B9B43| db $62 ; Increment fill
|0B9B44| db $69
|0B9B45| db $0F ; Raw block
|0B9B46| db $1C, $6C, $6D, $4F, $8E, $1D, $1D, $34
|0B9B4E| db $32, $C5, $6E, $4F, $2C, $77, $86, $1D
|0B9B56| db $FF ; End of Map 15

;===================================================================================================

OverworldMap32_Screen16_High:
|0B9B57| db $01 ; Raw block
|0B9B58| db $03, $07
|0B9B5A| db $22 ; Repeat byte
|0B9B5B| db $01
|0B9B5C| db $02 ; Raw block
|0B9B5D| db $07, $01, $01
|0B9B60| db $27 ; Repeat byte
|0B9B61| db $07
|0B9B62| db $22 ; Repeat byte
|0B9B63| db $01
|0B9B64| db $04 ; Raw block
|0B9B65| db $02, $02, $07, $02, $01
|0B9B6A| db $23 ; Repeat byte
|0B9B6B| db $07
|0B9B6C| db $00 ; Raw block
|0B9B6D| db $03
|0B9B6E| db $22 ; Repeat byte
|0B9B6F| db $07
|0B9B70| db $02 ; Raw block
|0B9B71| db $01, $01, $05
|0B9B74| db $23 ; Repeat byte
|0B9B75| db $07
|0B9B76| db $00 ; Raw block
|0B9B77| db $06
|0B9B78| db $27 ; Repeat byte
|0B9B79| db $07
|0B9B7A| db $01 ; Raw block
|0B9B7B| db $02, $05
|0B9B7D| db $24 ; Repeat byte
|0B9B7E| db $07
|0B9B7F| db $00 ; Raw block
|0B9B80| db $06
|0B9B81| db $29 ; Repeat byte
|0B9B82| db $07
|0B9B83| db $00 ; Raw block
|0B9B84| db $06
|0B9B85| db $23 ; Repeat byte
|0B9B86| db $07
|0B9B87| db $07 ; Raw block
|0B9B88| db $06, $07, $05, $07, $07, $05, $07, $03
|0B9B90| db $23 ; Repeat byte
|0B9B91| db $07
|0B9B92| db $03 ; Raw block
|0B9B93| db $00, $00, $07, $01
|0B9B97| db $22 ; Repeat byte
|0B9B98| db $07
|0B9B99| db $01 ; Raw block
|0B9B9A| db $05, $05
|0B9B9C| db $24 ; Repeat byte
|0B9B9D| db $07
|0B9B9E| db $83 ; Copy past
|0B9B9F| dw $5300
|0B9BA1| db $01 ; Raw block
|0B9BA2| db $00, $00
|0B9BA4| db $25 ; Repeat byte
|0B9BA5| db $07
|0B9BA6| db $03 ; Raw block
|0B9BA7| db $02, $07, $07, $00
|0B9BAB| db $25 ; Repeat byte
|0B9BAC| db $01
|0B9BAD| db $25 ; Repeat byte
|0B9BAE| db $07
|0B9BAF| db $01 ; Raw block
|0B9BB0| db $02, $03
|0B9BB2| db $83 ; Copy past
|0B9BB3| dw $5200
|0B9BB5| db $00 ; Raw block
|0B9BB6| db $06
|0B9BB7| db $27 ; Repeat byte
|0B9BB8| db $07
|0B9BB9| db $08 ; Raw block
|0B9BBA| db $00, $01, $03, $03, $01, $01, $04, $00
|0B9BC2| db $00
|0B9BC3| db $24 ; Repeat byte
|0B9BC4| db $07
|0B9BC5| db $0A ; Raw block
|0B9BC6| db $00, $07, $07, $01, $03, $07, $01, $00
|0B9BCE| db $06, $00, $01
|0B9BD1| db $22 ; Repeat byte
|0B9BD2| db $07
|0B9BD3| db $00 ; Raw block
|0B9BD4| db $01
|0B9BD5| db $22 ; Repeat byte
|0B9BD6| db $07
|0B9BD7| db $08 ; Raw block
|0B9BD8| db $00, $01, $01, $07, $04, $06, $01, $01
|0B9BE0| db $04
|0B9BE1| db $22 ; Repeat byte
|0B9BE2| db $07
|0B9BE3| db $02 ; Raw block
|0B9BE4| db $00, $07, $03
|0B9BE7| db $84 ; Copy past
|0B9BE8| dw $AB00
|0B9BEA| db $08 ; Raw block
|0B9BEB| db $07, $03, $03, $01, $00, $01, $06, $07
|0B9BF3| db $02
|0B9BF4| db $28 ; Repeat byte
|0B9BF5| db $07
|0B9BF6| db $01 ; Raw block
|0B9BF7| db $03, $07
|0B9BF9| db $83 ; Copy past
|0B9BFA| dw $C500
|0B9BFC| db $27 ; Repeat byte
|0B9BFD| db $07
|0B9BFE| db $00 ; Raw block
|0B9BFF| db $00
|0B9C00| db $22 ; Repeat byte
|0B9C01| db $07
|0B9C02| db $22 ; Repeat byte
|0B9C03| db $02
|0B9C04| db $83 ; Copy past
|0B9C05| dw $A600
|0B9C07| db $00 ; Raw block
|0B9C08| db $03
|0B9C09| db $83 ; Copy past
|0B9C0A| dw $5500
|0B9C0C| db $00 ; Raw block
|0B9C0D| db $00
|0B9C0E| db $26 ; Repeat byte
|0B9C0F| db $07
|0B9C10| db $00 ; Raw block
|0B9C11| db $01
|0B9C12| db $22 ; Repeat byte
|0B9C13| db $07
|0B9C14| db $03 ; Raw block
|0B9C15| db $03, $03, $07, $05
|0B9C19| db $FF ; End of Map 16

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen16_Low:
|0B9C1A| db $E0, $32 ; EXT Raw block
|0B9C1C| db $20, $6F, $ED, $F8, $F8, $70, $F8, $17
|0B9C24| db $71, $72, $72, $71, $0E, $73, $74, $74
|0B9C2C| db $F8, $ED, $ED, $FB, $FB, $70, $FB, $03
|0B9C34| db $75, $76, $76, $75, $9C, $77, $78, $78
|0B9C3C| db $F8, $ED, $99, $79, $79, $7A, $79, $16
|0B9C44| db $7B, $7C, $7C, $7B, $1B, $7D, $7E, $7E
|0B9C4C| db $FB, $99, $7F
|0B9C4F| db $23 ; Repeat byte
|0B9C50| db $22
|0B9C51| db $05 ; Raw block
|0B9C52| db $15, $80, $81, $81, $80, $31
|0B9C58| db $62 ; Increment fill
|0B9C59| db $82
|0B9C5A| db $02 ; Raw block
|0B9C5B| db $25, $85, $1D
|0B9C5E| db $62 ; Increment fill
|0B9C5F| db $86
|0B9C60| db $17 ; Raw block
|0B9C61| db $27, $1E, $43, $E1, $89, $36, $E2, $29
|0B9C69| db $8F, $8A, $27, $8B, $2A, $EE, $09, $8C
|0B9C71| db $1E, $8D, $8E, $20, $E1, $E2, $29, $2A
|0B9C79| db $62 ; Increment fill
|0B9C7A| db $8F
|0B9C7B| db $05 ; Raw block
|0B9C7C| db $C9, $FE, $92, $31, $7B, $7C
|0B9C82| db $62 ; Increment fill
|0B9C83| db $93
|0B9C84| db $06 ; Raw block
|0B9C85| db $84, $96, $2A, $8D, $97, $98, $1D
|0B9C8C| db $62 ; Increment fill
|0B9C8D| db $39
|0B9C8E| db $62 ; Increment fill
|0B9C8F| db $39
|0B9C90| db $65 ; Increment fill
|0B9C91| db $99
|0B9C92| db $06 ; Raw block
|0B9C93| db $97, $97, $9F, $FB, $91, $A0, $3B
|0B9C9A| db $67 ; Increment fill
|0B9C9B| db $A1
|0B9C9C| db $08 ; Raw block
|0B9C9D| db $1D, $2E, $A0, $96, $62, $4B, $1E, $0B
|0B9CA5| db $09
|0B9CA6| db $64 ; Increment fill
|0B9CA7| db $A9
|0B9CA8| db $0A ; Raw block
|0B9CA9| db $1F, $AE, $AF, $2E, $A0, $B0, $68, $BE
|0B9CB1| db $2C, $06, $10
|0B9CB4| db $62 ; Increment fill
|0B9CB5| db $B1
|0B9CB6| db $00 ; Raw block
|0B9CB7| db $58
|0B9CB8| db $62 ; Increment fill
|0B9CB9| db $B4
|0B9CBA| db $08 ; Raw block
|0B9CBB| db $1D, $08, $E6, $B7, $25, $66, $19, $1A
|0B9CC3| db $6D
|0B9CC4| db $62 ; Increment fill
|0B9CC5| db $B8
|0B9CC6| db $12 ; Raw block
|0B9CC7| db $B2, $8F, $44, $BB, $9F, $E4, $24, $BC
|0B9CCF| db $90, $44, $86, $27, $09, $2F, $B3, $BD
|0B9CD7| db $8D, $97, $98
|0B9CDA| db $64 ; Increment fill
|0B9CDB| db $BE
|0B9CDC| db $07 ; Raw block
|0B9CDD| db $98, $C3, $8D, $C4, $0E, $2B, $C5, $8D
|0B9CE5| db $67 ; Increment fill
|0B9CE6| db $C6
|0B9CE7| db $03 ; Raw block
|0B9CE8| db $A9, $49, $CE, $CF
|0B9CEC| db $22 ; Repeat byte
|0B9CED| db $4C
|0B9CEE| db $05 ; Raw block
|0B9CEF| db $D0, $C7, $48, $D1, $8D, $D2
|0B9CF5| db $62 ; Increment fill
|0B9CF6| db $D2
|0B9CF7| db $08 ; Raw block
|0B9CF8| db $A9, $D5, $49, $D6, $D7, $D6, $D6, $D8
|0B9D00| db $48
|0B9D01| db $62 ; Increment fill
|0B9D02| db $D9
|0B9D03| db $03 ; Raw block
|0B9D04| db $8D, $96, $DC, $FB
|0B9D08| db $FF ; End of Map 16

;===================================================================================================

OverworldMap32_Screen18_High:
|0B9D09| db $22 ; Repeat byte
|0B9D0A| db $00
|0B9D0B| db $02 ; Raw block
|0B9D0C| db $01, $07, $04
|0B9D0F| db $22 ; Repeat byte
|0B9D10| db $00
|0B9D11| db $02 ; Raw block
|0B9D12| db $01, $04, $04
|0B9D15| db $26 ; Repeat byte
|0B9D16| db $00
|0B9D17| db $07 ; Raw block
|0B9D18| db $06, $07, $06, $06, $01, $06, $06, $04
|0B9D20| db $84 ; Copy past
|0B9D21| dw $1500
|0B9D23| db $03 ; Raw block
|0B9D24| db $00, $00, $01, $01
|0B9D28| db $2B ; Repeat byte
|0B9D29| db $07
|0B9D2A| db $04 ; Raw block
|0B9D2B| db $00, $00, $07, $06, $07
|0B9D30| db $22 ; Repeat byte
|0B9D31| db $06
|0B9D32| db $2A ; Repeat byte
|0B9D33| db $07
|0B9D34| db $09 ; Raw block
|0B9D35| db $02, $01, $01, $00, $04, $04, $07, $06
|0B9D3D| db $01, $01
|0B9D3F| db $25 ; Repeat byte
|0B9D40| db $07
|0B9D41| db $83 ; Copy past
|0B9D42| dw $2200
|0B9D44| db $05 ; Raw block
|0B9D45| db $04, $04, $07, $00, $01, $01
|0B9D4B| db $22 ; Repeat byte
|0B9D4C| db $07
|0B9D4D| db $0C ; Raw block
|0B9D4E| db $00, $00, $07, $07, $01, $03, $03, $04
|0B9D56| db $00, $07, $06, $03, $04
|0B9D5B| db $83 ; Copy past
|0B9D5C| dw $2E00
|0B9D5E| db $01 ; Raw block
|0B9D5F| db $01, $06
|0B9D61| db $26 ; Repeat byte
|0B9D62| db $07
|0B9D63| db $02 ; Raw block
|0B9D64| db $05, $01, $06
|0B9D67| db $22 ; Repeat byte
|0B9D68| db $07
|0B9D69| db $02 ; Raw block
|0B9D6A| db $00, $04, $01
|0B9D6D| db $24 ; Repeat byte
|0B9D6E| db $07
|0B9D6F| db $0A ; Raw block
|0B9D70| db $08, $07, $05, $05, $02, $08, $08, $02
|0B9D78| db $00, $00, $01
|0B9D7B| db $2C ; Repeat byte
|0B9D7C| db $08
|0B9D7D| db $04 ; Raw block
|0B9D7E| db $00, $01, $06, $08, $01
|0B9D83| db $2A ; Repeat byte
|0B9D84| db $08
|0B9D85| db $02 ; Raw block
|0B9D86| db $00, $04, $01
|0B9D89| db $2C ; Repeat byte
|0B9D8A| db $08
|0B9D8B| db $02 ; Raw block
|0B9D8C| db $00, $00, $01
|0B9D8F| db $23 ; Repeat byte
|0B9D90| db $08
|0B9D91| db $00 ; Raw block
|0B9D92| db $06
|0B9D93| db $27 ; Repeat byte
|0B9D94| db $08
|0B9D95| db $83 ; Copy past
|0B9D96| dw $A000
|0B9D98| db $03 ; Raw block
|0B9D99| db $08, $06, $08, $01
|0B9D9D| db $27 ; Repeat byte
|0B9D9E| db $08
|0B9D9F| db $83 ; Copy past
|0B9DA0| dw $B000
|0B9DA2| db $00 ; Raw block
|0B9DA3| db $07
|0B9DA4| db $2A ; Repeat byte
|0B9DA5| db $08
|0B9DA6| db $02 ; Raw block
|0B9DA7| db $00, $00, $01
|0B9DAA| db $22 ; Repeat byte
|0B9DAB| db $08
|0B9DAC| db $00 ; Raw block
|0B9DAD| db $07
|0B9DAE| db $28 ; Repeat byte
|0B9DAF| db $08
|0B9DB0| db $FF ; End of Map 18

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen18_Low:
|0B9DB1| db $05 ; Raw block
|0B9DB2| db $0B, $09, $0A, $74, $DD, $1E
|0B9DB8| db $83 ; Copy past
|0B9DB9| dw $0000
|0B9DBB| db $00 ; Raw block
|0B9DBC| db $2C
|0B9DBD| db $83 ; Copy past
|0B9DBE| dw $0500
|0B9DC0| db $00 ; Raw block
|0B9DC1| db $0B
|0B9DC2| db $62 ; Increment fill
|0B9DC3| db $06
|0B9DC4| db $07 ; Raw block
|0B9DC5| db $38, $41, $2F, $AC, $0E, $5E, $30, $37
|0B9DCD| db $83 ; Copy past
|0B9DCE| dw $1500
|0B9DD0| db $05 ; Raw block
|0B9DD1| db $AC, $02, $00, $04, $3B, $41
|0B9DD7| db $23 ; Repeat byte
|0B9DD8| db $DE
|0B9DD9| db $62 ; Increment fill
|0B9DDA| db $DF
|0B9DDB| db $62 ; Increment fill
|0B9DDC| db $E1
|0B9DDD| db $05 ; Raw block
|0B9DDE| db $E0, $0B, $09, $E4, $66, $E5
|0B9DE4| db $22 ; Repeat byte
|0B9DE5| db $9C
|0B9DE6| db $63 ; Increment fill
|0B9DE7| db $E6
|0B9DE8| db $62 ; Increment fill
|0B9DE9| db $E9
|0B9DEA| db $00 ; Raw block
|0B9DEB| db $E8
|0B9DEC| db $62 ; Increment fill
|0B9DED| db $EC
|0B9DEE| db $0B ; Raw block
|0B9DEF| db $09, $A0, $1E, $FB, $B5, $B6, $E7, $3E
|0B9DF7| db $61, $62, $EF, $EB
|0B9DFB| db $63 ; Increment fill
|0B9DFC| db $F0
|0B9DFD| db $E0, $20 ; EXT Raw block
|0B9DFF| db $E5, $D9, $F4, $F5, $B7, $B8, $E7, $1D
|0B9E07| db $67, $68, $EF, $EB, $F6, $0B, $09, $F7
|0B9E0F| db $F8, $E4, $70, $6F, $B9, $1D, $E7, $66
|0B9E17| db $DB, $25, $EF, $EB, $1D, $06, $10, $2B
|0B9E1F| db $F9
|0B9E20| db $24 ; Repeat byte
|0B9E21| db $FA
|0B9E22| db $0B ; Raw block
|0B9E23| db $E7, $55, $DB, $3A, $FB, $EB, $FC, $02
|0B9E2B| db $6D, $26, $FD, $FE
|0B9E2F| db $22 ; Repeat byte
|0B9E30| db $FF
|0B9E31| db $0A ; Raw block
|0B9E32| db $00, $E7, $59, $5A, $61, $01, $02, $61
|0B9E3A| db $0B, $09, $2F
|0B9E3D| db $6B ; Increment fill
|0B9E3E| db $03
|0B9E3F| db $05 ; Raw block
|0B9E40| db $0C, $06, $10, $2B, $03, $37
|0B9E46| db $6A ; Increment fill
|0B9E47| db $0F
|0B9E48| db $03 ; Raw block
|0B9E49| db $02, $6D, $26, $03
|0B9E4D| db $64 ; Increment fill
|0B9E4E| db $1A
|0B9E4F| db $00 ; Raw block
|0B9E50| db $13
|0B9E51| db $65 ; Increment fill
|0B9E52| db $1F
|0B9E53| db $83 ; Copy past
|0B9E54| dw $9000
|0B9E56| db $62 ; Increment fill
|0B9E57| db $25
|0B9E58| db $02 ; Raw block
|0B9E59| db $66, $08, $13
|0B9E5C| db $62 ; Increment fill
|0B9E5D| db $28
|0B9E5E| db $02 ; Raw block
|0B9E5F| db $22, $04, $2B
|0B9E62| db $83 ; Copy past
|0B9E63| dw $A000
|0B9E65| db $05 ; Raw block
|0B9E66| db $2C, $70, $2D, $1E, $2E, $13
|0B9E6C| db $62 ; Increment fill
|0B9E6D| db $2F
|0B9E6E| db $02 ; Raw block
|0B9E6F| db $22, $32, $33
|0B9E72| db $83 ; Copy past
|0B9E73| dw $B000
|0B9E75| db $00 ; Raw block
|0B9E76| db $E0
|0B9E77| db $64 ; Increment fill
|0B9E78| db $34
|0B9E79| db $83 ; Copy past
|0B9E7A| dw $DA00
|0B9E7C| db $01 ; Raw block
|0B9E7D| db $25, $39
|0B9E7F| db $83 ; Copy past
|0B9E80| dw $9000
|0B9E82| db $04 ; Raw block
|0B9E83| db $23, $3A, $DD, $3B, $3C
|0B9E88| db $84 ; Copy past
|0B9E89| dw $D900
|0B9E8B| db $01 ; Raw block
|0B9E8C| db $3D, $3E
|0B9E8E| db $FF ; End of Map 18

;===================================================================================================

OverworldMap32_Screen19_High:
|0B9E8F| db $26 ; Repeat byte
|0B9E90| db $00
|0B9E91| db $04 ; Raw block
|0B9E92| db $01, $08, $08, $01, $01
|0B9E97| db $23 ; Repeat byte
|0B9E98| db $08
|0B9E99| db $0A ; Raw block
|0B9E9A| db $01, $06, $06, $01, $06, $06, $01, $06
|0B9EA2| db $08, $08, $01
|0B9EA5| db $24 ; Repeat byte
|0B9EA6| db $08
|0B9EA7| db $26 ; Repeat byte
|0B9EA8| db $07
|0B9EA9| db $06 ; Raw block
|0B9EAA| db $08, $07, $08, $08, $04, $01, $00
|0B9EB1| db $83 ; Copy past
|0B9EB2| dw $1E00
|0B9EB4| db $25 ; Repeat byte
|0B9EB5| db $08
|0B9EB6| db $02 ; Raw block
|0B9EB7| db $07, $08, $07
|0B9EBA| db $22 ; Repeat byte
|0B9EBB| db $06
|0B9EBC| db $01 ; Raw block
|0B9EBD| db $08, $01
|0B9EBF| db $2A ; Repeat byte
|0B9EC0| db $08
|0B9EC1| db $02 ; Raw block
|0B9EC2| db $07, $00, $02
|0B9EC5| db $2C ; Repeat byte
|0B9EC6| db $08
|0B9EC7| db $02 ; Raw block
|0B9EC8| db $00, $00, $03
|0B9ECB| db $43 ; Repeat word
|0B9ECC| dw $0608
|0B9ECE| db $00 ; Raw block
|0B9ECF| db $07
|0B9ED0| db $22 ; Repeat byte
|0B9ED1| db $08
|0B9ED2| db $09 ; Raw block
|0B9ED3| db $01, $06, $04, $04, $07, $07, $06, $03
|0B9EDB| db $05, $05
|0B9EDD| db $22 ; Repeat byte
|0B9EDE| db $08
|0B9EDF| db $00 ; Raw block
|0B9EE0| db $06
|0B9EE1| db $22 ; Repeat byte
|0B9EE2| db $08
|0B9EE3| db $03 ; Raw block
|0B9EE4| db $02, $04, $04, $07
|0B9EE8| db $83 ; Copy past
|0B9EE9| dw $0600
|0B9EEB| db $00 ; Raw block
|0B9EEC| db $05
|0B9EED| db $25 ; Repeat byte
|0B9EEE| db $02
|0B9EEF| db $09 ; Raw block
|0B9EF0| db $04, $02, $02, $06, $07, $07, $06, $02
|0B9EF8| db $08, $07
|0B9EFA| db $2D ; Repeat byte
|0B9EFB| db $08
|0B9EFC| db $00 ; Raw block
|0B9EFD| db $02
|0B9EFE| db $2F ; Repeat byte
|0B9EFF| db $08
|0B9F00| db $00 ; Raw block
|0B9F01| db $03
|0B9F02| db $43 ; Repeat word
|0B9F03| dw $0708
|0B9F05| db $03 ; Raw block
|0B9F06| db $07, $08, $08, $07
|0B9F0A| db $26 ; Repeat byte
|0B9F0B| db $08
|0B9F0C| db $00 ; Raw block
|0B9F0D| db $03
|0B9F0E| db $22 ; Repeat byte
|0B9F0F| db $08
|0B9F10| db $04 ; Raw block
|0B9F11| db $07, $06, $00, $07, $07
|0B9F16| db $25 ; Repeat byte
|0B9F17| db $08
|0B9F18| db $00 ; Raw block
|0B9F19| db $04
|0B9F1A| db $23 ; Repeat byte
|0B9F1B| db $08
|0B9F1C| db $84 ; Copy past
|0B9F1D| dw $B300
|0B9F1F| db $00 ; Raw block
|0B9F20| db $01
|0B9F21| db $29 ; Repeat byte
|0B9F22| db $08
|0B9F23| db $01 ; Raw block
|0B9F24| db $07, $00
|0B9F26| db $83 ; Copy past
|0B9F27| dw $C500
|0B9F29| db $06 ; Raw block
|0B9F2A| db $06, $08, $00, $07, $08, $07, $05
|0B9F31| db $22 ; Repeat byte
|0B9F32| db $08
|0B9F33| db $85 ; Copy past
|0B9F34| dw $B300
|0B9F36| db $01 ; Raw block
|0B9F37| db $00, $00
|0B9F39| db $22 ; Repeat byte
|0B9F3A| db $08
|0B9F3B| db $01 ; Raw block
|0B9F3C| db $07, $05
|0B9F3E| db $FF ; End of Map 19

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen19_Low:
|0B9F3F| db $62 ; Increment fill
|0B9F40| db $09
|0B9F41| db $62 ; Increment fill
|0B9F42| db $09
|0B9F43| db $05 ; Raw block
|0B9F44| db $09, $2F, $3F, $40, $4D, $4E
|0B9F4A| db $63 ; Increment fill
|0B9F4B| db $41
|0B9F4C| db $0A ; Raw block
|0B9F4D| db $0E, $5E, $AC, $0E, $5E, $AC, $0E, $2B
|0B9F55| db $45, $46, $57
|0B9F58| db $64 ; Increment fill
|0B9F59| db $47
|0B9F5A| db $26 ; Repeat byte
|0B9F5B| db $E1
|0B9F5C| db $0B ; Raw block
|0B9F5D| db $37, $E3, $35, $4C, $1E, $74, $1D, $4D
|0B9F65| db $4E, $E9, $E9, $4F
|0B9F69| db $22 ; Repeat byte
|0B9F6A| db $50
|0B9F6B| db $0C ; Raw block
|0B9F6C| db $51, $52, $E7, $2D, $E7, $2F, $30, $66
|0B9F74| db $53, $67, $54, $55, $0F
|0B9F79| db $22 ; Repeat byte
|0B9F7A| db $10
|0B9F7B| db $07 ; Raw block
|0B9F7C| db $11, $56, $09, $57, $58, $DE, $1D, $A1
|0B9F84| db $64 ; Increment fill
|0B9F85| db $59
|0B9F86| db $03 ; Raw block
|0B9F87| db $1C, $5E, $1C, $1D
|0B9F8B| db $63 ; Increment fill
|0B9F8C| db $5F
|0B9F8D| db $14 ; Raw block
|0B9F8E| db $1D, $1D, $9A, $63, $A0, $64, $70, $C5
|0B9F96| db $27, $65, $27, $1E, $3E, $B5, $BA, $E7
|0B9F9E| db $DE, $66, $32, $C5, $E1
|0B9FA3| db $22 ; Repeat byte
|0B9FA4| db $66
|0B9FA5| db $00 ; Raw block
|0B9FA6| db $B3
|0B9FA7| db $62 ; Increment fill
|0B9FA8| db $66
|0B9FA9| db $08 ; Raw block
|0B9FAA| db $60, $C5, $BC, $E7, $1D, $1E, $69, $6A
|0B9FB2| db $E1
|0B9FB3| db $25 ; Repeat byte
|0B9FB4| db $61
|0B9FB5| db $09 ; Raw block
|0B9FB6| db $C5, $02, $04, $66, $E7, $DE, $70, $3E
|0B9FBE| db $6B, $43
|0B9FC0| db $25 ; Repeat byte
|0B9FC1| db $0C
|0B9FC2| db $00 ; Raw block
|0B9FC3| db $6C
|0B9FC4| db $22 ; Repeat byte
|0B9FC5| db $0A
|0B9FC6| db $04 ; Raw block
|0B9FC7| db $6D, $0A, $0A, $6E, $3E
|0B9FCC| db $65 ; Increment fill
|0B9FCD| db $6F
|0B9FCE| db $63 ; Increment fill
|0B9FCF| db $74
|0B9FD0| db $22 ; Repeat byte
|0B9FD1| db $78
|0B9FD2| db $62 ; Increment fill
|0B9FD3| db $79
|0B9FD4| db $09 ; Raw block
|0B9FD5| db $32, $7C, $E9, $7D, $EB, $DE, $7E, $7F
|0B9FDD| db $EB, $25
|0B9FDF| db $62 ; Increment fill
|0B9FE0| db $05
|0B9FE1| db $62 ; Increment fill
|0B9FE2| db $80
|0B9FE3| db $00 ; Raw block
|0B9FE4| db $32
|0B9FE5| db $62 ; Increment fill
|0B9FE6| db $83
|0B9FE7| db $05 ; Raw block
|0B9FE8| db $EB, $66, $1D, $EF, $EB, $04
|0B9FEE| db $62 ; Increment fill
|0B9FEF| db $0F
|0B9FF0| db $02 ; Raw block
|0B9FF1| db $86, $87, $AA
|0B9FF4| db $63 ; Increment fill
|0B9FF5| db $88
|0B9FF6| db $84 ; Copy past
|0B9FF7| dw $B300
|0B9FF9| db $00 ; Raw block
|0B9FFA| db $37
|0B9FFB| db $62 ; Increment fill
|0B9FFC| db $1B
|0B9FFD| db $66 ; Increment fill
|0B9FFE| db $8C
|0B9FFF| db $0C ; Raw block
|0BA000| db $EB, $1D, $1D, $EF, $EB, $1A, $66, $27
|0BA008| db $1F, $EF, $93, $5B, $C5
|0BA00D| db $62 ; Increment fill
|0BA00E| db $94
|0BA00F| db $84 ; Copy past
|0BA010| dw $B300
|0BA012| db $07 ; Raw block
|0BA013| db $04, $1D, $1D, $97, $98, $93, $5B, $C5
|0BA01B| db $FF ; End of Map 19

;===================================================================================================

OverworldMap32_Screen1A_High:
|0BA01C| db $00 ; Raw block
|0BA01D| db $04
|0BA01E| db $22 ; Repeat byte
|0BA01F| db $08
|0BA020| db $01 ; Raw block
|0BA021| db $00, $00
|0BA023| db $22 ; Repeat byte
|0BA024| db $08
|0BA025| db $00 ; Raw block
|0BA026| db $00
|0BA027| db $43 ; Repeat word
|0BA028| dw $0801
|0BA02A| db $02 ; Raw block
|0BA02B| db $07, $07, $04
|0BA02E| db $22 ; Repeat byte
|0BA02F| db $08
|0BA030| db $03 ; Raw block
|0BA031| db $00, $08, $00, $01
|0BA035| db $83 ; Copy past
|0BA036| dw $0400
|0BA038| db $03 ; Raw block
|0BA039| db $01, $08, $07, $05
|0BA03D| db $23 ; Repeat byte
|0BA03E| db $08
|0BA03F| db $03 ; Raw block
|0BA040| db $00, $08, $00, $07
|0BA044| db $22 ; Repeat byte
|0BA045| db $01
|0BA046| db $11 ; Raw block
|0BA047| db $00, $00, $08, $07, $08, $08, $04, $04
|0BA04F| db $00, $00, $08, $01, $00, $01, $08, $00
|0BA057| db $01, $01
|0BA059| db $84 ; Copy past
|0BA05A| dw $2D00
|0BA05C| db $22 ; Repeat byte
|0BA05D| db $01
|0BA05E| db $43 ; Repeat word
|0BA05F| dw $0800
|0BA061| db $84 ; Copy past
|0BA062| dw $3100
|0BA064| db $00 ; Raw block
|0BA065| db $07
|0BA066| db $62 ; Increment fill
|0BA067| db $05
|0BA068| db $01 ; Raw block
|0BA069| db $01, $08
|0BA06B| db $83 ; Copy past
|0BA06C| dw $2900
|0BA06E| db $05 ; Raw block
|0BA06F| db $01, $00, $04, $01, $01, $08
|0BA075| db $22 ; Repeat byte
|0BA076| db $07
|0BA077| db $22 ; Repeat byte
|0BA078| db $08
|0BA079| db $84 ; Copy past
|0BA07A| dw $5200
|0BA07C| db $24 ; Repeat byte
|0BA07D| db $08
|0BA07E| db $01 ; Raw block
|0BA07F| db $07, $08
|0BA081| db $22 ; Repeat byte
|0BA082| db $07
|0BA083| db $08 ; Raw block
|0BA084| db $03, $03, $04, $04, $03, $00, $08, $08
|0BA08C| db $04
|0BA08D| db $22 ; Repeat byte
|0BA08E| db $08
|0BA08F| db $03 ; Raw block
|0BA090| db $07, $08, $08, $03
|0BA094| db $22 ; Repeat byte
|0BA095| db $01
|0BA096| db $02 ; Raw block
|0BA097| db $04, $01, $00
|0BA09A| db $23 ; Repeat byte
|0BA09B| db $08
|0BA09C| db $00 ; Raw block
|0BA09D| db $02
|0BA09E| db $43 ; Repeat word
|0BA09F| dw $0807
|0BA0A1| db $43 ; Repeat word
|0BA0A2| dw $0801
|0BA0A4| db $02 ; Raw block
|0BA0A5| db $06, $08, $00
|0BA0A8| db $43 ; Repeat word
|0BA0A9| dw $0100
|0BA0AB| db $0A ; Raw block
|0BA0AC| db $04, $02, $01, $07, $06, $07, $01, $01
|0BA0B4| db $08, $04, $00
|0BA0B7| db $22 ; Repeat byte
|0BA0B8| db $01
|0BA0B9| db $04 ; Raw block
|0BA0BA| db $04, $03, $03, $02, $02
|0BA0BF| db $22 ; Repeat byte
|0BA0C0| db $07
|0BA0C1| db $00 ; Raw block
|0BA0C2| db $03
|0BA0C3| db $84 ; Copy past
|0BA0C4| dw $5400
|0BA0C6| db $0E ; Raw block
|0BA0C7| db $08, $00, $04, $01, $05, $02, $02, $08
|0BA0CF| db $08, $03, $00, $01, $08, $08, $04
|0BA0D6| db $22 ; Repeat byte
|0BA0D7| db $08
|0BA0D8| db $02 ; Raw block
|0BA0D9| db $06, $08, $05
|0BA0DC| db $22 ; Repeat byte
|0BA0DD| db $07
|0BA0DE| db $03 ; Raw block
|0BA0DF| db $08, $00, $06, $03
|0BA0E3| db $22 ; Repeat byte
|0BA0E4| db $04
|0BA0E5| db $22 ; Repeat byte
|0BA0E6| db $08
|0BA0E7| db $84 ; Copy past
|0BA0E8| dw $4B00
|0BA0EA| db $05 ; Raw block
|0BA0EB| db $08, $08, $01, $04, $04, $01
|0BA0F1| db $83 ; Copy past
|0BA0F2| dw $D600
|0BA0F4| db $06 ; Raw block
|0BA0F5| db $04, $01, $04, $08, $07, $05, $07
|0BA0FC| db $22 ; Repeat byte
|0BA0FD| db $08
|0BA0FE| db $83 ; Copy past
|0BA0FF| dw $E700
|0BA101| db $02 ; Raw block
|0BA102| db $08, $08, $04
|0BA105| db $22 ; Repeat byte
|0BA106| db $08
|0BA107| db $01 ; Raw block
|0BA108| db $07, $05
|0BA10A| db $FF ; End of Map 1A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen1A_Low:
|0BA10B| db $05 ; Raw block
|0BA10C| db $4A, $99, $44, $9A, $1D, $1C
|0BA112| db $62 ; Increment fill
|0BA113| db $9B
|0BA114| db $16 ; Raw block
|0BA115| db $B2, $67, $42, $4E, $9E, $8E, $36, $39
|0BA11D| db $9F, $4B, $A0, $B2, $A1, $B6, $26, $1D
|0BA125| db $1D, $A2, $49, $58, $A3, $8E, $E1
|0BA12C| db $63 ; Increment fill
|0BA12D| db $A4
|0BA12E| db $E0, $3C ; EXT Raw block
|0BA130| db $B6, $A8, $09, $8C, $61, $62, $2D, $C9
|0BA138| db $FE, $A9, $8E, $AA, $AB, $95, $BE, $EE
|0BA140| db $09, $AC, $0E, $F6, $67, $AD, $1C, $39
|0BA148| db $3A, $AE, $8E, $AA, $AF, $9A, $A0, $30
|0BA150| db $0E, $F6, $B0, $B6, $B1, $25, $20, $91
|0BA158| db $8E, $B2, $8E, $E1, $A0, $1C, $D9, $B3
|0BA160| db $61, $62, $EE, $09, $2F, $99, $20, $42
|0BA168| db $43, $B4, $8E, $36, $19
|0BA16D| db $62 ; Increment fill
|0BA16E| db $B5
|0BA16F| db $04 ; Raw block
|0BA170| db $67, $AD, $30, $0E, $F6
|0BA175| db $64 ; Increment fill
|0BA176| db $B8
|0BA177| db $0D ; Raw block
|0BA178| db $8E, $AA, $36, $67, $68, $55, $DB, $25
|0BA180| db $23, $FB, $AA, $BD, $4B, $39
|0BA186| db $62 ; Increment fill
|0BA187| db $BE
|0BA188| db $03 ; Raw block
|0BA189| db $3C, $C1, $C2, $49
|0BA18D| db $62 ; Increment fill
|0BA18E| db $42
|0BA18F| db $12 ; Raw block
|0BA190| db $1E, $74, $AA, $4D, $A6, $9C, $9D, $30
|0BA198| db $3A, $C3, $4C, $C4, $A0, $C5, $4E, $C6
|0BA1A0| db $2F, $C7, $1C
|0BA1A3| db $43 ; Repeat word
|0BA1A4| dw $4B9F
|0BA1A6| db $E0, $2A ; EXT Raw block
|0BA1A8| db $C1, $30, $8B, $14, $16, $6C, $57, $58
|0BA1B0| db $C8, $BB, $1D, $61, $62, $4B, $23, $FB
|0BA1B8| db $FF, $A1, $07, $36, $5D, $5E, $FF, $61
|0BA1C0| db $62, $97, $98, $67, $AD, $B2, $1E, $74
|0BA1C8| db $4D, $AA, $FB, $C1, $C2, $49, $B2, $67
|0BA1D0| db $AD, $C9, $2E
|0BA1D3| db $62 ; Increment fill
|0BA1D4| db $CA
|0BA1D5| db $16 ; Raw block
|0BA1D6| db $2F, $C7, $6F, $1E, $79, $4C, $CD, $99
|0BA1DE| db $3A, $DB, $25, $38, $39, $9F, $4B, $CE
|0BA1E6| db $1D, $97, $CF, $8E, $E1, $D0, $D1
|0BA1ED| db $62 ; Increment fill
|0BA1EE| db $43
|0BA1EF| db $13 ; Raw block
|0BA1F0| db $43, $44, $42, $D2, $D3, $45, $43, $44
|0BA1F8| db $D4, $8E, $E1, $4C, $D5, $43, $44, $4A
|0BA200| db $99, $44, $4A, $99
|0BA204| db $83 ; Copy past
|0BA205| dw $F300
|0BA207| db $02 ; Raw block
|0BA208| db $D6, $8E, $E1
|0BA20B| db $FF ; End of Map 1A

;===================================================================================================

OverworldMap32_Screen1B_High:
|0BA20C| db $03 ; Raw block
|0BA20D| db $05, $05, $08, $07
|0BA211| db $2B ; Repeat byte
|0BA212| db $08
|0BA213| db $04 ; Raw block
|0BA214| db $07, $07, $08, $07, $07
|0BA219| db $2A ; Repeat byte
|0BA21A| db $08
|0BA21B| db $83 ; Copy past
|0BA21C| dw $1300
|0BA21E| db $00 ; Raw block
|0BA21F| db $00
|0BA220| db $2A ; Repeat byte
|0BA221| db $08
|0BA222| db $04 ; Raw block
|0BA223| db $07, $07, $08, $01, $01
|0BA228| db $2B ; Repeat byte
|0BA229| db $08
|0BA22A| db $03 ; Raw block
|0BA22B| db $07, $08, $00, $07
|0BA22F| db $24 ; Repeat byte
|0BA230| db $08
|0BA231| db $01 ; Raw block
|0BA232| db $09, $09
|0BA234| db $22 ; Repeat byte
|0BA235| db $08
|0BA236| db $05 ; Raw block
|0BA237| db $09, $05, $07, $08, $07, $06
|0BA23D| db $25 ; Repeat byte
|0BA23E| db $09
|0BA23F| db $22 ; Repeat byte
|0BA240| db $08
|0BA241| db $22 ; Repeat byte
|0BA242| db $09
|0BA243| db $04 ; Raw block
|0BA244| db $07, $09, $02, $06, $06
|0BA249| db $22 ; Repeat byte
|0BA24A| db $09
|0BA24B| db $00 ; Raw block
|0BA24C| db $06
|0BA24D| db $27 ; Repeat byte
|0BA24E| db $09
|0BA24F| db $03 ; Raw block
|0BA250| db $02, $09, $06, $06
|0BA254| db $22 ; Repeat byte
|0BA255| db $09
|0BA256| db $02 ; Raw block
|0BA257| db $00, $09, $09
|0BA25A| db $22 ; Repeat byte
|0BA25B| db $08
|0BA25C| db $22 ; Repeat byte
|0BA25D| db $09
|0BA25E| db $03 ; Raw block
|0BA25F| db $01, $09, $06, $06
|0BA263| db $22 ; Repeat byte
|0BA264| db $09
|0BA265| db $00 ; Raw block
|0BA266| db $06
|0BA267| db $25 ; Repeat byte
|0BA268| db $09
|0BA269| db $22 ; Repeat byte
|0BA26A| db $01
|0BA26B| db $02 ; Raw block
|0BA26C| db $09, $06, $06
|0BA26F| db $22 ; Repeat byte
|0BA270| db $09
|0BA271| db $03 ; Raw block
|0BA272| db $06, $04, $00, $01
|0BA276| db $22 ; Repeat byte
|0BA277| db $09
|0BA278| db $04 ; Raw block
|0BA279| db $02, $01, $06, $09, $06
|0BA27E| db $23 ; Repeat byte
|0BA27F| db $09
|0BA280| db $22 ; Repeat byte
|0BA281| db $00
|0BA282| db $00 ; Raw block
|0BA283| db $01
|0BA284| db $22 ; Repeat byte
|0BA285| db $09
|0BA286| db $04 ; Raw block
|0BA287| db $02, $01, $08, $09, $06
|0BA28C| db $24 ; Repeat byte
|0BA28D| db $09
|0BA28E| db $02 ; Raw block
|0BA28F| db $01, $01, $06
|0BA292| db $23 ; Repeat byte
|0BA293| db $09
|0BA294| db $06 ; Raw block
|0BA295| db $08, $09, $07, $06, $09, $08, $08
|0BA29C| db $22 ; Repeat byte
|0BA29D| db $09
|0BA29E| db $00 ; Raw block
|0BA29F| db $01
|0BA2A0| db $24 ; Repeat byte
|0BA2A1| db $09
|0BA2A2| db $83 ; Copy past
|0BA2A3| dw $6100
|0BA2A5| db $25 ; Repeat byte
|0BA2A6| db $09
|0BA2A7| db $00 ; Raw block
|0BA2A8| db $06
|0BA2A9| db $23 ; Repeat byte
|0BA2AA| db $09
|0BA2AB| db $04 ; Raw block
|0BA2AC| db $07, $07, $09, $06, $00
|0BA2B1| db $25 ; Repeat byte
|0BA2B2| db $09
|0BA2B3| db $00 ; Raw block
|0BA2B4| db $00
|0BA2B5| db $23 ; Repeat byte
|0BA2B6| db $09
|0BA2B7| db $04 ; Raw block
|0BA2B8| db $05, $07, $09, $00, $03
|0BA2BD| db $25 ; Repeat byte
|0BA2BE| db $09
|0BA2BF| db $00 ; Raw block
|0BA2C0| db $00
|0BA2C1| db $23 ; Repeat byte
|0BA2C2| db $09
|0BA2C3| db $FF ; End of Map 1B

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen1B_Low:
|0BA2C4| db $03 ; Raw block
|0BA2C5| db $E1, $E0, $D7, $22
|0BA2C9| db $63 ; Increment fill
|0BA2CA| db $D8
|0BA2CB| db $03 ; Raw block
|0BA2CC| db $DB, $DC, $DB, $DB
|0BA2D0| db $62 ; Increment fill
|0BA2D1| db $DD
|0BA2D2| db $05 ; Raw block
|0BA2D3| db $DF, $36, $67, $E0, $86, $87
|0BA2D9| db $68 ; Increment fill
|0BA2DA| db $E1
|0BA2DB| db $08 ; Raw block
|0BA2DC| db $E3, $EA, $20, $6E, $EB, $EC, $09, $ED
|0BA2E4| db $EE
|0BA2E5| db $44 ; Repeat word
|0BA2E6| dw $F0EF
|0BA2E8| db $63 ; Increment fill
|0BA2E9| db $F1
|0BA2EA| db $06 ; Raw block
|0BA2EB| db $89, $6E, $F5, $30, $0E, $F6, $EE
|0BA2F2| db $24 ; Repeat byte
|0BA2F3| db $EF
|0BA2F4| db $63 ; Increment fill
|0BA2F5| db $F7
|0BA2F6| db $04 ; Raw block
|0BA2F7| db $AA, $6E, $F5, $1F, $AF
|0BA2FC| db $64 ; Increment fill
|0BA2FD| db $FB
|0BA2FE| db $01 ; Raw block
|0BA2FF| db $00, $01
|0BA301| db $22 ; Repeat byte
|0BA302| db $EF
|0BA303| db $05 ; Raw block
|0BA304| db $02, $E1, $6E, $F5, $AF, $7C
|0BA30A| db $65 ; Increment fill
|0BA30B| db $03
|0BA30C| db $02 ; Raw block
|0BA30D| db $EE, $EF, $EF
|0BA310| db $62 ; Increment fill
|0BA311| db $09
|0BA312| db $08 ; Raw block
|0BA313| db $6E, $0C, $DE, $7C, $7C, $0D, $05, $0E
|0BA31B| db $7C
|0BA31C| db $62 ; Increment fill
|0BA31D| db $0F
|0BA31E| db $64 ; Increment fill
|0BA31F| db $11
|0BA320| db $01 ; Raw block
|0BA321| db $41, $16
|0BA323| db $84 ; Copy past
|0BA324| dw $6400
|0BA326| db $05 ; Raw block
|0BA327| db $1F, $17, $18, $F3, $F2, $F3
|0BA32D| db $62 ; Increment fill
|0BA32E| db $19
|0BA32F| db $01 ; Raw block
|0BA330| db $CC, $1C
|0BA332| db $84 ; Copy past
|0BA333| dw $6400
|0BA335| db $00 ; Raw block
|0BA336| db $66
|0BA337| db $62 ; Increment fill
|0BA338| db $1D
|0BA339| db $05 ; Raw block
|0BA33A| db $1E, $20, $21, $8B, $CC, $1E
|0BA340| db $85 ; Copy past
|0BA341| dw $8300
|0BA343| db $03 ; Raw block
|0BA344| db $70, $56, $B6, $26
|0BA348| db $62 ; Increment fill
|0BA349| db $22
|0BA34A| db $0C ; Raw block
|0BA34B| db $07, $A0, $66, $1C, $7C, $25, $0D, $05
|0BA353| db $0E, $FB, $EE, $09, $2F
|0BA358| db $62 ; Increment fill
|0BA359| db $26
|0BA35A| db $04 ; Raw block
|0BA35B| db $FB, $D9, $B3, $1C, $7C
|0BA360| db $64 ; Increment fill
|0BA361| db $29
|0BA362| db $0D ; Raw block
|0BA363| db $30, $0E, $2B, $2E, $27, $28, $2F, $B6
|0BA36B| db $30, $34, $83, $31, $EE, $EF
|0BA371| db $62 ; Increment fill
|0BA372| db $32
|0BA373| db $0A ; Raw block
|0BA374| db $1E, $35, $22, $27, $28, $36, $6E, $37
|0BA37C| db $DE, $66, $31
|0BA37F| db $62 ; Increment fill
|0BA380| db $38
|0BA381| db $E0, $22 ; EXT Raw block
|0BA383| db $33, $3B, $66, $3C, $2E, $27, $28, $20
|0BA38B| db $6E, $37, $66, $1C, $17, $3D, $05, $3E
|0BA393| db $33, $3B, $1D, $3C, $22, $27, $28, $E1
|0BA39B| db $6E, $37, $1D, $D5, $1D, $3F, $05, $40
|0BA3A3| db $41, $3B, $1D
|0BA3A6| db $83 ; Copy past
|0BA3A7| dw $DC00
|0BA3A9| db $FF ; End of Map 1B

;===================================================================================================

OverworldMap32_Screen1C_High:
|0BA3AA| db $03 ; Raw block
|0BA3AB| db $08, $08, $09, $09
|0BA3AF| db $24 ; Repeat byte
|0BA3B0| db $08
|0BA3B1| db $26 ; Repeat byte
|0BA3B2| db $09
|0BA3B3| db $01 ; Raw block
|0BA3B4| db $08, $08
|0BA3B6| db $22 ; Repeat byte
|0BA3B7| db $09
|0BA3B8| db $23 ; Repeat byte
|0BA3B9| db $08
|0BA3BA| db $22 ; Repeat byte
|0BA3BB| db $09
|0BA3BC| db $01 ; Raw block
|0BA3BD| db $07, $07
|0BA3BF| db $25 ; Repeat byte
|0BA3C0| db $09
|0BA3C1| db $24 ; Repeat byte
|0BA3C2| db $08
|0BA3C3| db $06 ; Raw block
|0BA3C4| db $09, $09, $08, $00, $09, $07, $06
|0BA3CB| db $23 ; Repeat byte
|0BA3CC| db $09
|0BA3CD| db $24 ; Repeat byte
|0BA3CE| db $08
|0BA3CF| db $07 ; Raw block
|0BA3D0| db $09, $09, $01, $01, $09, $07, $05, $09
|0BA3D8| db $22 ; Repeat byte
|0BA3D9| db $08
|0BA3DA| db $01 ; Raw block
|0BA3DB| db $09, $08
|0BA3DD| db $27 ; Repeat byte
|0BA3DE| db $09
|0BA3DF| db $01 ; Raw block
|0BA3E0| db $07, $05
|0BA3E2| db $84 ; Copy past
|0BA3E3| dw $0E00
|0BA3E5| db $43 ; Repeat word
|0BA3E6| dw $0809
|0BA3E8| db $24 ; Repeat byte
|0BA3E9| db $09
|0BA3EA| db $01 ; Raw block
|0BA3EB| db $07, $05
|0BA3ED| db $27 ; Repeat byte
|0BA3EE| db $09
|0BA3EF| db $00 ; Raw block
|0BA3F0| db $08
|0BA3F1| db $24 ; Repeat byte
|0BA3F2| db $09
|0BA3F3| db $00 ; Raw block
|0BA3F4| db $07
|0BA3F5| db $28 ; Repeat byte
|0BA3F6| db $09
|0BA3F7| db $00 ; Raw block
|0BA3F8| db $08
|0BA3F9| db $2E ; Repeat byte
|0BA3FA| db $09
|0BA3FB| db $00 ; Raw block
|0BA3FC| db $08
|0BA3FD| db $24 ; Repeat byte
|0BA3FE| db $09
|0BA3FF| db $01 ; Raw block
|0BA400| db $08, $07
|0BA402| db $22 ; Repeat byte
|0BA403| db $09
|0BA404| db $05 ; Raw block
|0BA405| db $08, $00, $01, $09, $09, $08
|0BA40B| db $23 ; Repeat byte
|0BA40C| db $09
|0BA40D| db $01 ; Raw block
|0BA40E| db $07, $05
|0BA410| db $23 ; Repeat byte
|0BA411| db $09
|0BA412| db $05 ; Raw block
|0BA413| db $00, $00, $01, $00, $09, $08
|0BA419| db $23 ; Repeat byte
|0BA41A| db $09
|0BA41B| db $02 ; Raw block
|0BA41C| db $07, $05, $05
|0BA41F| db $22 ; Repeat byte
|0BA420| db $09
|0BA421| db $03 ; Raw block
|0BA422| db $01, $01, $06, $07
|0BA426| db $25 ; Repeat byte
|0BA427| db $09
|0BA428| db $02 ; Raw block
|0BA429| db $07, $05, $07
|0BA42C| db $22 ; Repeat byte
|0BA42D| db $09
|0BA42E| db $03 ; Raw block
|0BA42F| db $06, $09, $06, $06
|0BA433| db $25 ; Repeat byte
|0BA434| db $09
|0BA435| db $01 ; Raw block
|0BA436| db $07, $05
|0BA438| db $22 ; Repeat byte
|0BA439| db $09
|0BA43A| db $00 ; Raw block
|0BA43B| db $00
|0BA43C| db $22 ; Repeat byte
|0BA43D| db $09
|0BA43E| db $00 ; Raw block
|0BA43F| db $00
|0BA440| db $25 ; Repeat byte
|0BA441| db $09
|0BA442| db $00 ; Raw block
|0BA443| db $07
|0BA444| db $83 ; Copy past
|0BA445| dw $4E00
|0BA447| db $00 ; Raw block
|0BA448| db $00
|0BA449| db $22 ; Repeat byte
|0BA44A| db $09
|0BA44B| db $02 ; Raw block
|0BA44C| db $00, $09, $08
|0BA44F| db $23 ; Repeat byte
|0BA450| db $09
|0BA451| db $01 ; Raw block
|0BA452| db $07, $06
|0BA454| db $22 ; Repeat byte
|0BA455| db $09
|0BA456| db $00 ; Raw block
|0BA457| db $00
|0BA458| db $22 ; Repeat byte
|0BA459| db $09
|0BA45A| db $02 ; Raw block
|0BA45B| db $00, $09, $08
|0BA45E| db $23 ; Repeat byte
|0BA45F| db $09
|0BA460| db $02 ; Raw block
|0BA461| db $07, $05, $05
|0BA464| db $FF ; End of Map 1C

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen1C_Low:
|0BA465| db $08 ; Raw block
|0BA466| db $DF, $DF, $42, $43, $DB, $DB, $DC, $DB
|0BA46E| db $DB
|0BA46F| db $66 ; Increment fill
|0BA470| db $44
|0BA471| db $01 ; Raw block
|0BA472| db $EA, $E3
|0BA474| db $62 ; Increment fill
|0BA475| db $4B
|0BA476| db $62 ; Increment fill
|0BA477| db $E4
|0BA478| db $00 ; Raw block
|0BA479| db $E3
|0BA47A| db $62 ; Increment fill
|0BA47B| db $4E
|0BA47C| db $01 ; Raw block
|0BA47D| db $87, $88
|0BA47F| db $65 ; Increment fill
|0BA480| db $51
|0BA481| db $44 ; Repeat word
|0BA482| dw $F0EF
|0BA484| db $06 ; Raw block
|0BA485| db $57, $58, $EC, $09, $59, $5B, $09
|0BA48C| db $63 ; Increment fill
|0BA48D| db $5A
|0BA48E| db $24 ; Repeat byte
|0BA48F| db $EF
|0BA490| db $07 ; Raw block
|0BA491| db $57, $0E, $30, $0E, $5E, $5B, $C5, $5F
|0BA499| db $22 ; Repeat byte
|0BA49A| db $EF
|0BA49B| db $04 ; Raw block
|0BA49C| db $60, $FE, $61, $00, $01
|0BA4A1| db $64 ; Increment fill
|0BA4A2| db $62
|0BA4A3| db $0A ; Raw block
|0BA4A4| db $5B, $C5, $67, $68, $EF, $EF, $57, $69
|0BA4AC| db $EA, $6A, $EE
|0BA4AF| db $64 ; Increment fill
|0BA4B0| db $6B
|0BA4B1| db $0C ; Raw block
|0BA4B2| db $5B, $C5, $70, $71, $11, $11, $72, $0E
|0BA4BA| db $73, $74, $EE, $32, $33
|0BA4BF| db $62 ; Increment fill
|0BA4C0| db $75
|0BA4C1| db $00 ; Raw block
|0BA4C2| db $5B
|0BA4C3| db $62 ; Increment fill
|0BA4C4| db $78
|0BA4C5| db $00 ; Raw block
|0BA4C6| db $55
|0BA4C7| db $63 ; Increment fill
|0BA4C8| db $7B
|0BA4C9| db $03 ; Raw block
|0BA4CA| db $0F, $EE, $32, $33
|0BA4CE| db $68 ; Increment fill
|0BA4CF| db $7F
|0BA4D0| db $00 ; Raw block
|0BA4D1| db $86
|0BA4D2| db $62 ; Increment fill
|0BA4D3| db $88
|0BA4D4| db $83 ; Copy past
|0BA4D5| dw $7800
|0BA4D7| db $03 ; Raw block
|0BA4D8| db $66, $8B, $8F, $89
|0BA4DC| db $62 ; Increment fill
|0BA4DD| db $8C
|0BA4DE| db $03 ; Raw block
|0BA4DF| db $A1, $B6, $26, $89
|0BA4E3| db $84 ; Copy past
|0BA4E4| dw $7700
|0BA4E6| db $02 ; Raw block
|0BA4E7| db $8F, $5B, $C5
|0BA4EA| db $63 ; Increment fill
|0BA4EB| db $90
|0BA4EC| db $03 ; Raw block
|0BA4ED| db $EE, $09, $2F, $1F
|0BA4F1| db $83 ; Copy past
|0BA4F2| dw $7700
|0BA4F4| db $04 ; Raw block
|0BA4F5| db $94, $95, $5B, $C5, $E1
|0BA4FA| db $62 ; Increment fill
|0BA4FB| db $91
|0BA4FC| db $03 ; Raw block
|0BA4FD| db $30, $0E, $2B, $C5
|0BA501| db $63 ; Increment fill
|0BA502| db $96
|0BA503| db $17 ; Raw block
|0BA504| db $94, $66, $5B, $C5, $36, $91, $92, $9A
|0BA50C| db $B3, $9B, $B3, $B3, $0D, $9C, $57, $0E
|0BA514| db $7F, $6F, $5B, $C5, $9D, $91, $92, $1F
|0BA51C| db $62 ; Increment fill
|0BA51D| db $9E
|0BA51E| db $00 ; Raw block
|0BA51F| db $1F
|0BA520| db $62 ; Increment fill
|0BA521| db $A1
|0BA522| db $08 ; Raw block
|0BA523| db $0E, $94, $A4, $5B, $5C, $E1, $91, $92
|0BA52B| db $1F
|0BA52C| db $62 ; Increment fill
|0BA52D| db $A5
|0BA52E| db $08 ; Raw block
|0BA52F| db $1F, $A8, $EE, $A9, $7D, $94, $8F, $5B
|0BA537| db $09
|0BA538| db $62 ; Increment fill
|0BA539| db $90
|0BA53A| db $00 ; Raw block
|0BA53B| db $1F
|0BA53C| db $62 ; Increment fill
|0BA53D| db $AA
|0BA53E| db $09 ; Raw block
|0BA53F| db $1F, $AD, $EE, $AE, $AF, $94, $6F, $5B
|0BA547| db $C5, $E1
|0BA549| db $FF ; End of Map 1C

;===================================================================================================

OverworldMap32_Screen1D_High:
|0BA54A| db $04 ; Raw block
|0BA54B| db $07, $01, $07, $09, $06
|0BA550| db $22 ; Repeat byte
|0BA551| db $00
|0BA552| db $0C ; Raw block
|0BA553| db $03, $05, $07, $09, $04, $01, $04, $00
|0BA55B| db $07, $01, $09, $09, $02
|0BA560| db $23 ; Repeat byte
|0BA561| db $09
|0BA562| db $03 ; Raw block
|0BA563| db $06, $07, $09, $01
|0BA567| db $86 ; Copy past
|0BA568| dw $0D00
|0BA56A| db $22 ; Repeat byte
|0BA56B| db $01
|0BA56C| db $03 ; Raw block
|0BA56D| db $09, $01, $05, $07
|0BA571| db $22 ; Repeat byte
|0BA572| db $09
|0BA573| db $85 ; Copy past
|0BA574| dw $0E00
|0BA576| db $22 ; Repeat byte
|0BA577| db $01
|0BA578| db $02 ; Raw block
|0BA579| db $03, $05, $09
|0BA57C| db $87 ; Copy past
|0BA57D| dw $1A00
|0BA57F| db $22 ; Repeat byte
|0BA580| db $09
|0BA581| db $02 ; Raw block
|0BA582| db $01, $01, $03
|0BA585| db $23 ; Repeat byte
|0BA586| db $09
|0BA587| db $0A ; Raw block
|0BA588| db $01, $09, $04, $04, $07, $01, $00, $09
|0BA590| db $09, $06, $00
|0BA593| db $28 ; Repeat byte
|0BA594| db $09
|0BA595| db $02 ; Raw block
|0BA596| db $07, $01, $00
|0BA599| db $22 ; Repeat byte
|0BA59A| db $09
|0BA59B| db $00 ; Raw block
|0BA59C| db $07
|0BA59D| db $25 ; Repeat byte
|0BA59E| db $09
|0BA59F| db $05 ; Raw block
|0BA5A0| db $00, $01, $04, $09, $01, $02
|0BA5A6| db $22 ; Repeat byte
|0BA5A7| db $09
|0BA5A8| db $00 ; Raw block
|0BA5A9| db $02
|0BA5AA| db $25 ; Repeat byte
|0BA5AB| db $09
|0BA5AC| db $01 ; Raw block
|0BA5AD| db $00, $01
|0BA5AF| db $83 ; Copy past
|0BA5B0| dw $4F00
|0BA5B2| db $03 ; Raw block
|0BA5B3| db $02, $09, $00, $00
|0BA5B7| db $22 ; Repeat byte
|0BA5B8| db $09
|0BA5B9| db $02 ; Raw block
|0BA5BA| db $07, $08, $07
|0BA5BD| db $85 ; Copy past
|0BA5BE| dw $7D00
|0BA5C0| db $0C ; Raw block
|0BA5C1| db $09, $06, $09, $04, $09, $09, $05, $07
|0BA5C9| db $08, $07, $07, $09, $04
|0BA5CE| db $62 ; Increment fill
|0BA5CF| db $07
|0BA5D0| db $83 ; Copy past
|0BA5D1| dw $5100
|0BA5D3| db $0A ; Raw block
|0BA5D4| db $05, $08, $07, $07, $03, $09, $02, $07
|0BA5DC| db $07, $09, $06
|0BA5DF| db $23 ; Repeat byte
|0BA5E0| db $09
|0BA5E1| db $23 ; Repeat byte
|0BA5E2| db $07
|0BA5E3| db $05 ; Raw block
|0BA5E4| db $03, $00, $09, $07, $07, $01
|0BA5EA| db $24 ; Repeat byte
|0BA5EB| db $09
|0BA5EC| db $0C ; Raw block
|0BA5ED| db $05, $07, $09, $07, $03, $00, $00, $09
|0BA5F5| db $04, $01, $07, $09, $09
|0BA5FA| db $24 ; Repeat byte
|0BA5FB| db $07
|0BA5FC| db $03 ; Raw block
|0BA5FD| db $09, $07, $09, $03
|0BA601| db $22 ; Repeat byte
|0BA602| db $07
|0BA603| db $06 ; Raw block
|0BA604| db $01, $09, $05, $05, $09, $05, $05
|0BA60B| db $22 ; Repeat byte
|0BA60C| db $0A
|0BA60D| db $01 ; Raw block
|0BA60E| db $03, $01
|0BA610| db $22 ; Repeat byte
|0BA611| db $07
|0BA612| db $06 ; Raw block
|0BA613| db $00, $01, $0A, $07, $0A, $01, $00
|0BA61A| db $22 ; Repeat byte
|0BA61B| db $0A
|0BA61C| db $03 ; Raw block
|0BA61D| db $06, $00, $01, $03
|0BA621| db $22 ; Repeat byte
|0BA622| db $00
|0BA623| db $01 ; Raw block
|0BA624| db $01, $0A
|0BA626| db $FF ; End of Map 1D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen1D_Low:
|0BA627| db $04 ; Raw block
|0BA628| db $4C, $93, $6D, $B0, $8E
|0BA62D| db $22 ; Repeat byte
|0BA62E| db $1D
|0BA62F| db $0D ; Raw block
|0BA630| db $32, $C5, $6E, $B1, $37, $77, $86, $1D
|0BA638| db $4C, $93, $B2, $B3, $96, $B4
|0BA63E| db $62 ; Increment fill
|0BA63F| db $B4
|0BA640| db $0A ; Raw block
|0BA641| db $09, $6E, $B7, $37, $70, $86, $1D, $56
|0BA649| db $93, $B8, $B9
|0BA64C| db $62 ; Increment fill
|0BA64D| db $42
|0BA64E| db $03 ; Raw block
|0BA64F| db $BA, $AD, $C5, $6E
|0BA653| db $62 ; Increment fill
|0BA654| db $BB
|0BA655| db $83 ; Copy past
|0BA656| dw $0E00
|0BA658| db $01 ; Raw block
|0BA659| db $B0, $BE
|0BA65B| db $62 ; Increment fill
|0BA65C| db $4D
|0BA65D| db $05 ; Raw block
|0BA65E| db $9A, $99, $BF, $6E, $C0, $62
|0BA664| db $84 ; Copy past
|0BA665| dw $0D00
|0BA667| db $62 ; Increment fill
|0BA668| db $C1
|0BA669| db $02 ; Raw block
|0BA66A| db $58, $65, $32
|0BA66D| db $63 ; Increment fill
|0BA66E| db $C4
|0BA66F| db $0A ; Raw block
|0BA670| db $68, $C8, $8E, $C4, $4C, $93, $1D, $C9
|0BA678| db $CA, $8F, $1D
|0BA67B| db $68 ; Increment fill
|0BA67C| db $CB
|0BA67D| db $02 ; Raw block
|0BA67E| db $4C, $93, $1D
|0BA681| db $62 ; Increment fill
|0BA682| db $D4
|0BA683| db $01 ; Raw block
|0BA684| db $04, $D7
|0BA686| db $22 ; Repeat byte
|0BA687| db $D8
|0BA688| db $0B ; Raw block
|0BA689| db $D9, $DA, $A5, $77, $86, $DB, $93, $DE
|0BA691| db $C1, $DC, $DD, $5E
|0BA695| db $65 ; Increment fill
|0BA696| db $DE
|0BA697| db $09 ; Raw block
|0BA698| db $A5, $77, $86, $4C, $93, $1D, $DE, $E4
|0BA6A0| db $A5, $1D
|0BA6A2| db $62 ; Increment fill
|0BA6A3| db $E5
|0BA6A4| db $03 ; Raw block
|0BA6A5| db $6E, $B7, $41, $1D
|0BA6A9| db $84 ; Copy past
|0BA6AA| dw $7E00
|0BA6AC| db $1E ; Raw block
|0BA6AD| db $E8, $9C, $E9, $81, $82, $EA, $E1, $6E
|0BA6B5| db $B7, $41, $91, $EB, $86, $4C, $C4, $EC
|0BA6BD| db $F2, $1D, $ED, $EE, $9F, $AA, $67, $68
|0BA6C5| db $55, $E4, $8D, $C6, $C7, $EF, $16
|0BA6CC| db $63 ; Increment fill
|0BA6CD| db $F0
|0BA6CE| db $09 ; Raw block
|0BA6CF| db $13, $36, $67, $68, $49, $1D, $F4, $C6
|0BA6D7| db $C7, $48
|0BA6D9| db $64 ; Increment fill
|0BA6DA| db $F5
|0BA6DB| db $0D ; Raw block
|0BA6DC| db $AC, $18, $90, $6E, $4F, $1D, $1D, $EB
|0BA6E4| db $86, $48, $D9, $FA, $FB, $83
|0BA6EA| db $23 ; Repeat byte
|0BA6EB| db $84
|0BA6EC| db $0D ; Raw block
|0BA6ED| db $FC, $68, $FD, $44, $C0, $C6, $2A, $2E
|0BA6F5| db $FE, $E2, $EE, $FF, $6D, $6D
|0BA6FB| db $62 ; Increment fill
|0BA6FC| db $00
|0BA6FD| db $17 ; Raw block
|0BA6FE| db $49, $48, $60, $CB, $2A, $1D, $2E, $03
|0BA706| db $4C, $04, $CC, $A0, $05, $06, $06, $8F
|0BA70E| db $1D, $2E, $A0, $A5, $1D, $A5, $2E, $03
|0BA716| db $FF ; End of Map 1D

;===================================================================================================

OverworldMap32_Screen1E_High:
|0BA717| db $2E ; Repeat byte
|0BA718| db $0A
|0BA719| db $02 ; Raw block
|0BA71A| db $01, $0A, $0A
|0BA71D| db $22 ; Repeat byte
|0BA71E| db $05
|0BA71F| db $02 ; Raw block
|0BA720| db $0A, $05, $05
|0BA723| db $83 ; Copy past
|0BA724| dw $1000
|0BA726| db $01 ; Raw block
|0BA727| db $0A, $05
|0BA729| db $26 ; Repeat byte
|0BA72A| db $0A
|0BA72B| db $22 ; Repeat byte
|0BA72C| db $06
|0BA72D| db $E4, $31 ; EXT Repeat byte
|0BA72F| db $0A
|0BA730| db $00 ; Raw block
|0BA731| db $06
|0BA732| db $E4, $8E ; EXT Repeat byte
|0BA734| db $0A
|0BA735| db $04 ; Raw block
|0BA736| db $04, $01, $01, $0A, $01
|0BA73B| db $23 ; Repeat byte
|0BA73C| db $0A
|0BA73D| db $00 ; Raw block
|0BA73E| db $06
|0BA73F| db $25 ; Repeat byte
|0BA740| db $0A
|0BA741| db $05 ; Raw block
|0BA742| db $01, $0A, $03, $03, $07, $0A
|0BA748| db $FF ; End of Map 1E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen1E_Low:
|0BA749| db $00 ; Raw block
|0BA74A| db $07
|0BA74B| db $2D ; Repeat byte
|0BA74C| db $08
|0BA74D| db $11 ; Raw block
|0BA74E| db $F8, $09, $0A, $FB, $FB, $E8, $0B, $FB
|0BA756| db $E8, $0B, $0C, $FB, $E8, $0D, $E8, $0E
|0BA75E| db $0F, $09
|0BA760| db $63 ; Increment fill
|0BA761| db $10
|0BA762| db $22 ; Repeat byte
|0BA763| db $B5
|0BA764| db $63 ; Increment fill
|0BA765| db $14
|0BA766| db $00 ; Raw block
|0BA767| db $13
|0BA768| db $62 ; Increment fill
|0BA769| db $18
|0BA76A| db $03 ; Raw block
|0BA76B| db $09, $10, $19, $1B
|0BA76F| db $44 ; Repeat word
|0BA770| dw $1D1C
|0BA772| db $00 ; Raw block
|0BA773| db $1C
|0BA774| db $64 ; Increment fill
|0BA775| db $1E
|0BA776| db $04 ; Raw block
|0BA777| db $1A, $09, $0A, $23, $1A
|0BA77C| db $62 ; Increment fill
|0BA77D| db $24
|0BA77E| db $04 ; Raw block
|0BA77F| db $25, $27, $28, $25, $27
|0BA784| db $62 ; Increment fill
|0BA785| db $29
|0BA786| db $04 ; Raw block
|0BA787| db $1A, $09, $10, $2C, $1A
|0BA78C| db $62 ; Increment fill
|0BA78D| db $11
|0BA78E| db $15 ; Raw block
|0BA78F| db $2D, $17, $2E, $B5, $18, $2F, $30, $08
|0BA797| db $31, $09, $10, $19, $1A, $32, $1B, $33
|0BA79F| db $1E, $1F, $34, $35, $21, $36
|0BA7A5| db $22 ; Repeat byte
|0BA7A6| db $37
|0BA7A7| db $04 ; Raw block
|0BA7A8| db $09, $38, $39, $1A, $19
|0BA7AD| db $6A ; Increment fill
|0BA7AE| db $3A
|0BA7AF| db $03 ; Raw block
|0BA7B0| db $09, $10, $39, $1A
|0BA7B4| db $67 ; Increment fill
|0BA7B5| db $45
|0BA7B6| db $01 ; Raw block
|0BA7B7| db $29, $4D
|0BA7B9| db $83 ; Copy past
|0BA7BA| dw $2E00
|0BA7BC| db $03 ; Raw block
|0BA7BD| db $4E, $1A, $39, $46
|0BA7C1| db $65 ; Increment fill
|0BA7C2| db $4F
|0BA7C3| db $08 ; Raw block
|0BA7C4| db $29, $40, $22, $55, $09, $38, $4E, $1A
|0BA7CC| db $39
|0BA7CD| db $66 ; Increment fill
|0BA7CE| db $56
|0BA7CF| db $09 ; Raw block
|0BA7D0| db $29, $4C, $5D, $5E, $09, $10, $23, $1A
|0BA7D8| db $5F, $55
|0BA7DA| db $65 ; Increment fill
|0BA7DB| db $60
|0BA7DC| db $09 ; Raw block
|0BA7DD| db $29, $2A, $66, $66, $09, $0A, $2C, $1A
|0BA7E5| db $67, $68
|0BA7E7| db $22 ; Repeat byte
|0BA7E8| db $69
|0BA7E9| db $0A ; Raw block
|0BA7EA| db $6A, $6A, $6B, $2F, $30, $08, $08, $09
|0BA7F2| db $10, $6C, $55
|0BA7F5| db $22 ; Repeat byte
|0BA7F6| db $6D
|0BA7F7| db $63 ; Increment fill
|0BA7F8| db $6E
|0BA7F9| db $23 ; Repeat byte
|0BA7FA| db $6D
|0BA7FB| db $05 ; Raw block
|0BA7FC| db $72, $09, $0A, $5D, $73, $69
|0BA802| db $64 ; Increment fill
|0BA803| db $74
|0BA804| db $04 ; Raw block
|0BA805| db $E6, $EB, $EB, $79, $EB
|0BA80A| db $62 ; Increment fill
|0BA80B| db $7A
|0BA80C| db $04 ; Raw block
|0BA80D| db $2E, $B5, $7D, $7D, $14
|0BA812| db $62 ; Increment fill
|0BA813| db $7E
|0BA814| db $05 ; Raw block
|0BA815| db $17, $81, $20, $20, $0E, $82
|0BA81B| db $FF ; End of Map 1E

;===================================================================================================

OverworldMap32_Screen1F_High:
|0BA81C| db $04 ; Raw block
|0BA81D| db $01, $01, $0A, $0A, $01
|0BA822| db $29 ; Repeat byte
|0BA823| db $0A
|0BA824| db $00 ; Raw block
|0BA825| db $02
|0BA826| db $2E ; Repeat byte
|0BA827| db $0A
|0BA828| db $00 ; Raw block
|0BA829| db $02
|0BA82A| db $22 ; Repeat byte
|0BA82B| db $0A
|0BA82C| db $00 ; Raw block
|0BA82D| db $06
|0BA82E| db $2A ; Repeat byte
|0BA82F| db $0A
|0BA830| db $00 ; Raw block
|0BA831| db $02
|0BA832| db $E4, $42 ; EXT Repeat byte
|0BA834| db $0A
|0BA835| db $00 ; Raw block
|0BA836| db $05
|0BA837| db $E4, $2A ; EXT Repeat byte
|0BA839| db $0A
|0BA83A| db $00 ; Raw block
|0BA83B| db $02
|0BA83C| db $23 ; Repeat byte
|0BA83D| db $0A
|0BA83E| db $00 ; Raw block
|0BA83F| db $05
|0BA840| db $24 ; Repeat byte
|0BA841| db $0A
|0BA842| db $00 ; Raw block
|0BA843| db $01
|0BA844| db $2C ; Repeat byte
|0BA845| db $0A
|0BA846| db $00 ; Raw block
|0BA847| db $05
|0BA848| db $29 ; Repeat byte
|0BA849| db $0A
|0BA84A| db $01 ; Raw block
|0BA84B| db $05, $05
|0BA84D| db $22 ; Repeat byte
|0BA84E| db $0A
|0BA84F| db $00 ; Raw block
|0BA850| db $06
|0BA851| db $37 ; Repeat byte
|0BA852| db $0A
|0BA853| db $00 ; Raw block
|0BA854| db $05
|0BA855| db $27 ; Repeat byte
|0BA856| db $0A
|0BA857| db $01 ; Raw block
|0BA858| db $05, $05
|0BA85A| db $22 ; Repeat byte
|0BA85B| db $0A
|0BA85C| db $00 ; Raw block
|0BA85D| db $02
|0BA85E| db $27 ; Repeat byte
|0BA85F| db $0A
|0BA860| db $01 ; Raw block
|0BA861| db $05, $06
|0BA863| db $24 ; Repeat byte
|0BA864| db $0A
|0BA865| db $00 ; Raw block
|0BA866| db $02
|0BA867| db $FF ; End of Map 1F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen1F_Low:
|0BA868| db $05 ; Raw block
|0BA869| db $FE, $15, $83, $84, $F8, $08
|0BA86F| db $65 ; Increment fill
|0BA870| db $85
|0BA871| db $03 ; Raw block
|0BA872| db $87, $88, $8B, $82
|0BA876| db $62 ; Increment fill
|0BA877| db $8C
|0BA878| db $01 ; Raw block
|0BA879| db $08, $85
|0BA87B| db $66 ; Increment fill
|0BA87C| db $8F
|0BA87D| db $0A ; Raw block
|0BA87E| db $92, $93, $96, $82, $97, $98, $54, $05
|0BA886| db $99, $9A, $90
|0BA889| db $63 ; Increment fill
|0BA88A| db $9B
|0BA88B| db $62 ; Increment fill
|0BA88C| db $9B
|0BA88D| db $01 ; Raw block
|0BA88E| db $9F, $82
|0BA890| db $62 ; Increment fill
|0BA891| db $A0
|0BA892| db $03 ; Raw block
|0BA893| db $63, $A3, $A4, $90
|0BA897| db $68 ; Increment fill
|0BA898| db $A5
|0BA899| db $00 ; Raw block
|0BA89A| db $99
|0BA89B| db $64 ; Increment fill
|0BA89C| db $AE
|0BA89D| db $0A ; Raw block
|0BA89E| db $90, $9A, $A6, $AB, $B3, $B4, $A6, $AB
|0BA8A6| db $90, $B5, $99
|0BA8A9| db $64 ; Increment fill
|0BA8AA| db $B6
|0BA8AB| db $02 ; Raw block
|0BA8AC| db $90, $BB, $BC
|0BA8AF| db $23 ; Repeat byte
|0BA8B0| db $A7
|0BA8B1| db $62 ; Increment fill
|0BA8B2| db $BD
|0BA8B3| db $04 ; Raw block
|0BA8B4| db $99, $84, $08, $08, $85
|0BA8B9| db $63 ; Increment fill
|0BA8BA| db $C0
|0BA8BB| db $0D ; Raw block
|0BA8BC| db $15, $C4, $C5, $15, $C6, $C7, $83, $80
|0BA8C4| db $85, $C8, $FB, $99, $9A, $C9
|0BA8CA| db $22 ; Repeat byte
|0BA8CB| db $CA
|0BA8CC| db $0B ; Raw block
|0BA8CD| db $CB, $CC, $CA, $CA, $CD, $CE, $97, $99
|0BA8D5| db $CF, $D0, $99, $A4
|0BA8D9| db $27 ; Repeat byte
|0BA8DA| db $AB
|0BA8DB| db $08 ; Raw block
|0BA8DC| db $D1, $D2, $63, $A3, $D3, $D0, $D4, $D5
|0BA8E4| db $15
|0BA8E5| db $83 ; Copy past
|0BA8E6| dw $6900
|0BA8E8| db $09 ; Raw block
|0BA8E9| db $15, $C4, $C5, $D6, $82, $D7, $D7, $D8
|0BA8F1| db $D0, $DC
|0BA8F3| db $22 ; Repeat byte
|0BA8F4| db $1C
|0BA8F5| db $07 ; Raw block
|0BA8F6| db $CB, $D9, $15, $DA, $CB, $DB, $DC, $AD
|0BA8FE| db $65 ; Increment fill
|0BA8FF| db $DD
|0BA900| db $1C ; Raw block
|0BA901| db $E1, $E3, $FB, $E4, $E5, $DC, $C8, $0C
|0BA909| db $99, $E6, $08, $85, $E7, $FB, $E8, $D0
|0BA911| db $0C, $E8, $05, $E9, $10, $99, $EA, $0C
|0BA919| db $EB, $EC, $E0, $D4, $D5
|0BA91E| db $62 ; Increment fill
|0BA91F| db $15
|0BA920| db $07 ; Raw block
|0BA921| db $15, $13, $14, $7E, $ED, $D4, $D5, $C4
|0BA929| db $62 ; Increment fill
|0BA92A| db $EE
|0BA92B| db $01 ; Raw block
|0BA92C| db $DC, $1D
|0BA92E| db $62 ; Increment fill
|0BA92F| db $F1
|0BA930| db $14 ; Raw block
|0BA931| db $DA, $F4, $1D, $F5, $FB, $DC, $1D, $CB
|0BA939| db $F6, $82, $F7, $E8, $0C, $F8, $F9, $1F
|0BA941| db $DC, $FA, $FB, $05, $97
|0BA946| db $22 ; Repeat byte
|0BA947| db $E8
|0BA948| db $01 ; Raw block
|0BA949| db $99, $82
|0BA94B| db $FF ; End of Map 1F

;===================================================================================================

OverworldMap32_Screen20_High:
|0BA94C| db $09 ; Raw block
|0BA94D| db $00, $01, $06, $08, $0A, $00, $07, $00
|0BA955| db $0A, $08
|0BA957| db $25 ; Repeat byte
|0BA958| db $0A
|0BA959| db $02 ; Raw block
|0BA95A| db $00, $04, $01
|0BA95D| db $85 ; Copy past
|0BA95E| dw $0300
|0BA960| db $00 ; Raw block
|0BA961| db $0A
|0BA962| db $45 ; Repeat word
|0BA963| dw $0B08
|0BA965| db $01 ; Raw block
|0BA966| db $00, $00
|0BA968| db $86 ; Copy past
|0BA969| dw $1200
|0BA96B| db $01 ; Raw block
|0BA96C| db $07, $08
|0BA96E| db $23 ; Repeat byte
|0BA96F| db $0B
|0BA970| db $00 ; Raw block
|0BA971| db $08
|0BA972| db $88 ; Copy past
|0BA973| dw $0000
|0BA975| db $01 ; Raw block
|0BA976| db $07, $08
|0BA978| db $24 ; Repeat byte
|0BA979| db $0B
|0BA97A| db $83 ; Copy past
|0BA97B| dw $1000
|0BA97D| db $06 ; Raw block
|0BA97E| db $0B, $0B, $04, $0B, $0B, $07, $08
|0BA985| db $24 ; Repeat byte
|0BA986| db $0B
|0BA987| db $83 ; Copy past
|0BA988| dw $2000
|0BA98A| db $06 ; Raw block
|0BA98B| db $0B, $0B, $08, $0B, $0B, $08, $08
|0BA992| db $23 ; Repeat byte
|0BA993| db $0B
|0BA994| db $83 ; Copy past
|0BA995| dw $2F00
|0BA997| db $27 ; Repeat byte
|0BA998| db $08
|0BA999| db $01 ; Raw block
|0BA99A| db $0B, $00
|0BA99C| db $83 ; Copy past
|0BA99D| dw $1D00
|0BA99F| db $02 ; Raw block
|0BA9A0| db $04, $01, $08
|0BA9A3| db $25 ; Repeat byte
|0BA9A4| db $0B
|0BA9A5| db $24 ; Repeat byte
|0BA9A6| db $07
|0BA9A7| db $03 ; Raw block
|0BA9A8| db $08, $00, $00, $01
|0BA9AC| db $25 ; Repeat byte
|0BA9AD| db $0B
|0BA9AE| db $02 ; Raw block
|0BA9AF| db $07, $0B, $0B
|0BA9B2| db $22 ; Repeat byte
|0BA9B3| db $07
|0BA9B4| db $83 ; Copy past
|0BA9B5| dw $2F00
|0BA9B7| db $25 ; Repeat byte
|0BA9B8| db $0B
|0BA9B9| db $03 ; Raw block
|0BA9BA| db $05, $0B, $0B, $06
|0BA9BE| db $22 ; Repeat byte
|0BA9BF| db $0B
|0BA9C0| db $01 ; Raw block
|0BA9C1| db $00, $04
|0BA9C3| db $22 ; Repeat byte
|0BA9C4| db $0B
|0BA9C5| db $22 ; Repeat byte
|0BA9C6| db $00
|0BA9C7| db $04 ; Raw block
|0BA9C8| db $08, $07, $0B, $0B, $00
|0BA9CD| db $22 ; Repeat byte
|0BA9CE| db $0B
|0BA9CF| db $01 ; Raw block
|0BA9D0| db $00, $00
|0BA9D2| db $25 ; Repeat byte
|0BA9D3| db $0B
|0BA9D4| db $86 ; Copy past
|0BA9D5| dw $A800
|0BA9D7| db $02 ; Raw block
|0BA9D8| db $08, $06, $01
|0BA9DB| db $22 ; Repeat byte
|0BA9DC| db $0B
|0BA9DD| db $00 ; Raw block
|0BA9DE| db $08
|0BA9DF| db $43 ; Repeat word
|0BA9E0| dw $0B08
|0BA9E2| db $23 ; Repeat byte
|0BA9E3| db $00
|0BA9E4| db $09 ; Raw block
|0BA9E5| db $06, $08, $03, $03, $0B, $0B, $01, $0B
|0BA9ED| db $08, $01
|0BA9EF| db $2C ; Repeat byte
|0BA9F0| db $0B
|0BA9F1| db $00 ; Raw block
|0BA9F2| db $08
|0BA9F3| db $2D ; Repeat byte
|0BA9F4| db $0B
|0BA9F5| db $05 ; Raw block
|0BA9F6| db $04, $08, $08, $04, $08, $08
|0BA9FC| db $85 ; Copy past
|0BA9FD| dw $F400
|0BA9FF| db $FF ; End of Map 20

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen20_Low:
|0BAA00| db $09 ; Raw block
|0BAA01| db $06, $10, $2B, $03, $FB, $1F, $41, $1F
|0BAA09| db $FC, $13
|0BAA0B| db $23 ; Repeat byte
|0BAA0C| db $FD
|0BAA0D| db $04 ; Raw block
|0BAA0E| db $FE, $FE, $02, $6D, $26
|0BAA13| db $85 ; Copy past
|0BAA14| dw $0300
|0BAA16| db $09 ; Raw block
|0BAA17| db $FF, $77, $00, $61, $01, $78, $02, $0B
|0BAA1F| db $09, $2F
|0BAA21| db $85 ; Copy past
|0BAA22| dw $0300
|0BAA24| db $01 ; Raw block
|0BAA25| db $E7, $25
|0BAA27| db $63 ; Increment fill
|0BAA28| db $03
|0BAA29| db $00 ; Raw block
|0BAA2A| db $08
|0BAA2B| db $88 ; Copy past
|0BAA2C| dw $0000
|0BAA2E| db $01 ; Raw block
|0BAA2F| db $E7, $25
|0BAA31| db $64 ; Increment fill
|0BAA32| db $07
|0BAA33| db $83 ; Copy past
|0BAA34| dw $1000
|0BAA36| db $06 ; Raw block
|0BAA37| db $0C, $0D, $37, $0E, $0F, $E7, $25
|0BAA3E| db $64 ; Increment fill
|0BAA3F| db $10
|0BAA40| db $83 ; Copy past
|0BAA41| dw $2000
|0BAA43| db $06 ; Raw block
|0BAA44| db $15, $16, $0A, $17, $18, $58, $25
|0BAA4B| db $63 ; Increment fill
|0BAA4C| db $19
|0BAA4D| db $84 ; Copy past
|0BAA4E| dw $2F00
|0BAA50| db $62 ; Increment fill
|0BAA51| db $2F
|0BAA52| db $08 ; Raw block
|0BAA53| db $2F, $30, $22, $3D, $1D, $1D, $1E, $95
|0BAA5B| db $1F
|0BAA5C| db $83 ; Copy past
|0BAA5D| dw $1000
|0BAA5F| db $00 ; Raw block
|0BAA60| db $20
|0BAA61| db $24 ; Repeat byte
|0BAA62| db $21
|0BAA63| db $24 ; Repeat byte
|0BAA64| db $E1
|0BAA65| db $05 ; Raw block
|0BAA66| db $37, $0B, $09, $2F, $22, $23
|0BAA6C| db $22 ; Repeat byte
|0BAA6D| db $24
|0BAA6E| db $03 ; Raw block
|0BAA6F| db $25, $E9, $26, $26
|0BAA73| db $22 ; Repeat byte
|0BAA74| db $E9
|0BAA75| db $04 ; Raw block
|0BAA76| db $24, $06, $10, $2B, $27
|0BAA7B| db $23 ; Repeat byte
|0BAA7C| db $28
|0BAA7D| db $04 ; Raw block
|0BAA7E| db $29, $04, $2A, $2B, $66
|0BAA83| db $62 ; Increment fill
|0BAA84| db $2C
|0BAA85| db $01 ; Raw block
|0BAA86| db $02, $6D
|0BAA88| db $62 ; Increment fill
|0BAA89| db $2F
|0BAA8A| db $22 ; Repeat byte
|0BAA8B| db $1F
|0BAA8C| db $09 ; Raw block
|0BAA8D| db $03, $6D, $32, $33, $1D, $34, $35, $14
|0BAA95| db $0B, $09
|0BAA97| db $65 ; Increment fill
|0BAA98| db $36
|0BAA99| db $09 ; Raw block
|0BAA9A| db $03, $6D, $3C, $3D, $1D, $3E, $3F, $08
|0BAAA2| db $AC, $0E
|0BAAA4| db $62 ; Increment fill
|0BAAA5| db $40
|0BAAA6| db $04 ; Raw block
|0BAAA7| db $BD, $4B, $43, $03, $44
|0BAAAC| db $23 ; Repeat byte
|0BAAAD| db $1F
|0BAAAE| db $0A ; Raw block
|0BAAAF| db $70, $08, $4B, $4B, $45, $46, $42, $47
|0BAAB7| db $D3, $62, $22
|0BAABA| db $24 ; Repeat byte
|0BAABB| db $48
|0BAABC| db $66 ; Increment fill
|0BAABD| db $49
|0BAABE| db $00 ; Raw block
|0BAABF| db $99
|0BAAC0| db $65 ; Increment fill
|0BAAC1| db $50
|0BAAC2| db $62 ; Increment fill
|0BAAC3| db $53
|0BAAC4| db $01 ; Raw block
|0BAAC5| db $53, $4C
|0BAAC7| db $62 ; Increment fill
|0BAAC8| db $56
|0BAAC9| db $05 ; Raw block
|0BAACA| db $39, $9F, $4B, $39, $9F, $4B
|0BAAD0| db $85 ; Copy past
|0BAAD1| dw $F400
|0BAAD3| db $FF ; End of Map 20

;===================================================================================================

OverworldMap32_Screen21_High:
|0BAAD4| db $07 ; Raw block
|0BAAD5| db $0A, $0A, $0B, $0B, $0A, $0A, $0B, $0B
|0BAADD| db $23 ; Repeat byte
|0BAADE| db $07
|0BAADF| db $05 ; Raw block
|0BAAE0| db $0B, $08, $07, $05, $0B, $0B
|0BAAE6| db $23 ; Repeat byte
|0BAAE7| db $08
|0BAAE8| db $26 ; Repeat byte
|0BAAE9| db $0B
|0BAAEA| db $03 ; Raw block
|0BAAEB| db $08, $07, $05, $08
|0BAAEF| db $24 ; Repeat byte
|0BAAF0| db $0B
|0BAAF1| db $01 ; Raw block
|0BAAF2| db $08, $08
|0BAAF4| db $24 ; Repeat byte
|0BAAF5| db $0B
|0BAAF6| db $83 ; Copy past
|0BAAF7| dw $1D00
|0BAAF9| db $24 ; Repeat byte
|0BAAFA| db $0B
|0BAAFB| db $01 ; Raw block
|0BAAFC| db $08, $08
|0BAAFE| db $24 ; Repeat byte
|0BAAFF| db $0B
|0BAB00| db $83 ; Copy past
|0BAB01| dw $1D00
|0BAB03| db $24 ; Repeat byte
|0BAB04| db $0B
|0BAB05| db $01 ; Raw block
|0BAB06| db $08, $08
|0BAB08| db $26 ; Repeat byte
|0BAB09| db $0B
|0BAB0A| db $01 ; Raw block
|0BAB0B| db $05, $08
|0BAB0D| db $25 ; Repeat byte
|0BAB0E| db $0B
|0BAB0F| db $01 ; Raw block
|0BAB10| db $08, $0A
|0BAB12| db $22 ; Repeat byte
|0BAB13| db $00
|0BAB14| db $04 ; Raw block
|0BAB15| db $0B, $08, $03, $05, $08
|0BAB1A| db $2B ; Repeat byte
|0BAB1B| db $0B
|0BAB1C| db $83 ; Copy past
|0BAB1D| dw $5D00
|0BAB1F| db $2B ; Repeat byte
|0BAB20| db $0B
|0BAB21| db $03 ; Raw block
|0BAB22| db $08, $07, $0B, $08
|0BAB26| db $25 ; Repeat byte
|0BAB27| db $0B
|0BAB28| db $0B ; Raw block
|0BAB29| db $07, $07, $0B, $0B, $00, $0B, $0B, $02
|0BAB31| db $0B, $08, $0B, $01
|0BAB35| db $22 ; Repeat byte
|0BAB36| db $0B
|0BAB37| db $00 ; Raw block
|0BAB38| db $09
|0BAB39| db $23 ; Repeat byte
|0BAB3A| db $0B
|0BAB3B| db $02 ; Raw block
|0BAB3C| db $00, $0B, $0B
|0BAB3F| db $22 ; Repeat byte
|0BAB40| db $08
|0BAB41| db $01 ; Raw block
|0BAB42| db $0B, $01
|0BAB44| db $22 ; Repeat byte
|0BAB45| db $0B
|0BAB46| db $01 ; Raw block
|0BAB47| db $09, $0B
|0BAB49| db $85 ; Copy past
|0BAB4A| dw $8F00
|0BAB4C| db $22 ; Repeat byte
|0BAB4D| db $08
|0BAB4E| db $01 ; Raw block
|0BAB4F| db $0B, $01
|0BAB51| db $22 ; Repeat byte
|0BAB52| db $0B
|0BAB53| db $01 ; Raw block
|0BAB54| db $09, $0B
|0BAB56| db $46 ; Repeat word
|0BAB57| dw $080B
|0BAB59| db $83 ; Copy past
|0BAB5A| dw $8F00
|0BAB5C| db $25 ; Repeat byte
|0BAB5D| db $0B
|0BAB5E| db $00 ; Raw block
|0BAB5F| db $08
|0BAB60| db $83 ; Copy past
|0BAB61| dw $2500
|0BAB63| db $01 ; Raw block
|0BAB64| db $08, $08
|0BAB66| db $22 ; Repeat byte
|0BAB67| db $0B
|0BAB68| db $23 ; Repeat byte
|0BAB69| db $07
|0BAB6A| db $27 ; Repeat byte
|0BAB6B| db $0B
|0BAB6C| db $00 ; Raw block
|0BAB6D| db $08
|0BAB6E| db $2D ; Repeat byte
|0BAB6F| db $0B
|0BAB70| db $07 ; Raw block
|0BAB71| db $08, $0B, $04, $08, $08, $04, $08, $08
|0BAB79| db $83 ; Copy past
|0BAB7A| dw $F000
|0BAB7C| db $01 ; Raw block
|0BAB7D| db $04, $02
|0BAB7F| db $83 ; Copy past
|0BAB80| dw $EF00
|0BAB82| db $FF ; End of Map 21

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen21_Low:
|0BAB83| db $07 ; Raw block
|0BAB84| db $FE, $FE, $59, $5A, $FE, $FE, $59, $5B
|0BAB8C| db $23 ; Repeat byte
|0BAB8D| db $E3
|0BAB8E| db $05 ; Raw block
|0BAB8F| db $5C, $93, $5B, $C5, $5D, $5E
|0BAB95| db $23 ; Repeat byte
|0BAB96| db $78
|0BAB97| db $02 ; Raw block
|0BAB98| db $5F, $60, $61
|0BAB9B| db $22 ; Repeat byte
|0BAB9C| db $62
|0BAB9D| db $04 ; Raw block
|0BAB9E| db $63, $93, $5B, $C5, $13
|0BABA3| db $64 ; Increment fill
|0BABA4| db $64
|0BABA5| db $01 ; Raw block
|0BABA6| db $92, $22
|0BABA8| db $64 ; Increment fill
|0BABA9| db $69
|0BABAA| db $83 ; Copy past
|0BABAB| dw $1D00
|0BABAD| db $64 ; Increment fill
|0BABAE| db $6E
|0BABAF| db $01 ; Raw block
|0BABB0| db $92, $22
|0BABB2| db $63 ; Increment fill
|0BABB3| db $73
|0BABB4| db $85 ; Copy past
|0BABB5| dw $2C00
|0BABB7| db $63 ; Increment fill
|0BABB8| db $77
|0BABB9| db $01 ; Raw block
|0BABBA| db $92, $22
|0BABBC| db $63 ; Increment fill
|0BABBD| db $7B
|0BABBE| db $0C ; Raw block
|0BABBF| db $6D, $7F, $80, $C5, $13, $81, $82, $3E
|0BABC7| db $3F, $83, $84, $22, $FB
|0BABCC| db $22 ; Repeat byte
|0BABCD| db $1F
|0BABCE| db $09 ; Raw block
|0BABCF| db $85, $87, $32, $C5, $13, $86, $18, $87
|0BABD7| db $88, $15
|0BABD9| db $62 ; Increment fill
|0BABDA| db $89
|0BABDB| db $03 ; Raw block
|0BABDC| db $87, $88, $8C, $8D
|0BABE0| db $83 ; Copy past
|0BABE1| dw $5D00
|0BABE3| db $04 ; Raw block
|0BABE4| db $8E, $21, $8F, $90, $20
|0BABE9| db $22 ; Repeat byte
|0BABEA| db $21
|0BABEB| db $07 ; Raw block
|0BABEC| db $91, $92, $90, $93, $87, $3A, $94, $13
|0BABF4| db $65 ; Increment fill
|0BABF5| db $95
|0BABF6| db $0B ; Raw block
|0BABF7| db $E9, $E9, $9B, $9C, $B6, $9D, $9E, $30
|0BABFF| db $9F, $13, $A0, $37
|0BAC03| db $62 ; Increment fill
|0BAC04| db $A1
|0BAC05| db $01 ; Raw block
|0BAC06| db $33, $A4
|0BAC08| db $62 ; Increment fill
|0BAC09| db $A4
|0BAC0A| db $07 ; Raw block
|0BAC0B| db $09, $A7, $A8, $0A, $0A, $13, $A9, $37
|0BAC13| db $62 ; Increment fill
|0BAC14| db $07
|0BAC15| db $1C ; Raw block
|0BAC16| db $33, $AA, $AA, $92, $AB, $0E, $AC, $AD
|0BAC1E| db $61, $61, $13, $A9, $37, $10, $AE, $12
|0BAC26| db $33, $A4, $A4, $92, $A8, $0A, $AF, $87
|0BAC2E| db $B0, $B1, $13, $A9, $37
|0BAC33| db $63 ; Increment fill
|0BAC34| db $19
|0BAC35| db $08 ; Raw block
|0BAC36| db $AA, $AA, $85, $AD, $61, $61, $B2, $BD
|0BAC3E| db $4B
|0BAC3F| db $62 ; Increment fill
|0BAC40| db $B3
|0BAC41| db $23 ; Repeat byte
|0BAC42| db $FA
|0BAC43| db $00 ; Raw block
|0BAC44| db $B5
|0BAC45| db $65 ; Increment fill
|0BAC46| db $B5
|0BAC47| db $03 ; Raw block
|0BAC48| db $47, $D3, $54, $55
|0BAC4C| db $62 ; Increment fill
|0BAC4D| db $53
|0BAC4E| db $00 ; Raw block
|0BAC4F| db $53
|0BAC50| db $83 ; Copy past
|0BAC51| dw $E000
|0BAC53| db $63 ; Increment fill
|0BAC54| db $BB
|0BAC55| db $07 ; Raw block
|0BAC56| db $99, $50, $39, $9F, $4B, $39, $9F, $4B
|0BAC5E| db $83 ; Copy past
|0BAC5F| dw $F000
|0BAC61| db $05 ; Raw block
|0BAC62| db $3A, $4F, $BF, $39, $9F, $4B
|0BAC68| db $FF ; End of Map 21

;===================================================================================================

OverworldMap32_Screen22_High:
|0BAC69| db $01 ; Raw block
|0BAC6A| db $0B, $04
|0BAC6C| db $2A ; Repeat byte
|0BAC6D| db $00
|0BAC6E| db $04 ; Raw block
|0BAC6F| db $0B, $05, $06, $0B, $06
|0BAC74| db $22 ; Repeat byte
|0BAC75| db $00
|0BAC76| db $07 ; Raw block
|0BAC77| db $0B, $01, $06, $06, $01, $00, $00, $01
|0BAC7F| db $83 ; Copy past
|0BAC80| dw $0D00
|0BAC82| db $05 ; Raw block
|0BAC83| db $01, $01, $00, $01, $0B, $0B
|0BAC89| db $25 ; Repeat byte
|0BAC8A| db $01
|0BAC8B| db $07 ; Raw block
|0BAC8C| db $05, $05, $07, $0B, $08, $01, $00, $01
|0BAC94| db $23 ; Repeat byte
|0BAC95| db $0B
|0BAC96| db $0A ; Raw block
|0BAC97| db $00, $00, $06, $01, $05, $05, $06, $04
|0BAC9F| db $03, $0B, $07
|0BACA2| db $24 ; Repeat byte
|0BACA3| db $0B
|0BACA4| db $01 ; Raw block
|0BACA5| db $00, $03
|0BACA7| db $22 ; Repeat byte
|0BACA8| db $02
|0BACA9| db $22 ; Repeat byte
|0BACAA| db $05
|0BACAB| db $26 ; Repeat byte
|0BACAC| db $0B
|0BACAD| db $07 ; Raw block
|0BACAE| db $08, $0B, $01, $02, $0B, $01, $05, $07
|0BACB6| db $22 ; Repeat byte
|0BACB7| db $0B
|0BACB8| db $10 ; Raw block
|0BACB9| db $00, $0B, $03, $08, $0B, $0B, $04, $01
|0BACC1| db $02, $05, $07, $07, $0B, $0B, $09, $01
|0BACC9| db $01
|0BACCA| db $23 ; Repeat byte
|0BACCB| db $0B
|0BACCC| db $09 ; Raw block
|0BACCD| db $01, $0B, $02, $00, $0B, $08, $07, $07
|0BACD5| db $05, $01
|0BACD7| db $25 ; Repeat byte
|0BACD8| db $0B
|0BACD9| db $08 ; Raw block
|0BACDA| db $00, $0B, $03, $00, $00, $02, $08, $07
|0BACE2| db $08
|0BACE3| db $26 ; Repeat byte
|0BACE4| db $0B
|0BACE5| db $01 ; Raw block
|0BACE6| db $01, $07
|0BACE8| db $22 ; Repeat byte
|0BACE9| db $00
|0BACEA| db $05 ; Raw block
|0BACEB| db $0B, $03, $06, $08, $0B, $0B
|0BACF1| db $22 ; Repeat byte
|0BACF2| db $08
|0BACF3| db $00 ; Raw block
|0BACF4| db $05
|0BACF5| db $22 ; Repeat byte
|0BACF6| db $0B
|0BACF7| db $04 ; Raw block
|0BACF8| db $00, $06, $01, $0B, $07
|0BACFD| db $22 ; Repeat byte
|0BACFE| db $0B
|0BACFF| db $0F ; Raw block
|0BAD00| db $08, $0B, $00, $00, $07, $00, $0B, $06
|0BAD08| db $08, $08, $04, $0B, $0B, $0C, $04, $08
|0BAD10| db $83 ; Copy past
|0BAD11| dw $B200
|0BAD13| db $0B ; Raw block
|0BAD14| db $09, $0B, $0C, $03, $08, $08, $04, $08
|0BAD1C| db $08, $04, $04, $08
|0BAD20| db $83 ; Copy past
|0BAD21| dw $3100
|0BAD23| db $03 ; Raw block
|0BAD24| db $01, $06, $00, $01
|0BAD28| db $88 ; Copy past
|0BAD29| dw $CA00
|0BAD2B| db $28 ; Repeat byte
|0BAD2C| db $0C
|0BAD2D| db $86 ; Copy past
|0BAD2E| dw $CC00
|0BAD30| db $83 ; Copy past
|0BAD31| dw $CC00
|0BAD33| db $88 ; Copy past
|0BAD34| dw $F100
|0BAD36| db $FF ; End of Map 22

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen22_Low:
|0BAD37| db $02 ; Raw block
|0BAD38| db $C0, $1E, $0B
|0BAD3B| db $62 ; Increment fill
|0BAD3C| db $09
|0BAD3D| db $01 ; Raw block
|0BAD3E| db $09, $0A
|0BAD40| db $84 ; Copy past
|0BAD41| dw $0200
|0BAD43| db $04 ; Raw block
|0BAD44| db $C1, $8A, $09, $C0, $2C
|0BAD49| db $62 ; Increment fill
|0BAD4A| db $06
|0BAD4B| db $1F ; Raw block
|0BAD4C| db $C2, $0E, $5E, $AC, $31, $08, $06, $10
|0BAD54| db $C3, $8A, $09, $C0, $19, $1A, $00, $04
|0BAD5C| db $C4, $C5, $2B, $2C, $39, $3A, $1B, $1C
|0BAD64| db $6F, $8A, $5C, $C6, $53, $27, $09, $07
|0BAD6C| db $62 ; Increment fill
|0BAD6D| db $C7
|0BAD6E| db $0B ; Raw block
|0BAD6F| db $38, $91, $8E, $33, $29, $16, $8A, $09
|0BAD77| db $8E, $B2, $CA, $ED
|0BAD7B| db $64 ; Increment fill
|0BAD7C| db $CB
|0BAD7D| db $07 ; Raw block
|0BAD7E| db $1F, $FF, $A1, $07, $AA, $92, $C5, $A2
|0BAD86| db $66 ; Increment fill
|0BAD87| db $D0
|0BAD88| db $07 ; Raw block
|0BAD89| db $66, $D7, $AC, $AA, $D8, $ED, $99, $1F
|0BAD91| db $62 ; Increment fill
|0BAD92| db $D9
|0BAD93| db $10 ; Raw block
|0BAD94| db $09, $DC, $B1, $01, $DD, $DE, $C6, $B4
|0BAD9C| db $7A, $6F, $1E, $1F, $DF, $E0, $1B, $30
|0BADA4| db $0E
|0BADA5| db $63 ; Increment fill
|0BADA6| db $E1
|0BADA7| db $0B ; Raw block
|0BADA8| db $20, $E5, $04, $1D, $E6, $6B, $43, $20
|0BADB0| db $6E, $CC, $E7, $E8
|0BADB4| db $63 ; Increment fill
|0BADB5| db $E8
|0BADB6| db $08 ; Raw block
|0BADB7| db $1F, $EC, $5F, $1D, $A5, $3E, $6F, $54
|0BADBF| db $0A
|0BADC0| db $62 ; Increment fill
|0BADC1| db $ED
|0BADC2| db $63 ; Increment fill
|0BADC3| db $EF
|0BADC4| db $0E ; Raw block
|0BADC5| db $1E, $C5, $1D, $1D, $FB, $F3, $32, $09
|0BADCD| db $61, $F4, $F5, $97, $66, $66, $04
|0BADD4| db $62 ; Increment fill
|0BADD5| db $F6
|0BADD6| db $E0, $38 ; EXT Raw block
|0BADD8| db $1D, $66, $1E, $F9, $3A, $94, $FA, $FB
|0BADE0| db $B9, $FC, $1F, $1F, $6D, $1F, $FD, $66
|0BADE8| db $B8, $B9, $2E, $FE, $FF, $00, $39, $9F
|0BADF0| db $4B, $43, $1F, $1F, $B2, $F6, $01, $FF
|0BADF8| db $BD, $4B, $39, $9F, $4B, $39, $42, $D2
|0BAE00| db $D3, $62, $1F, $61, $62, $70, $99, $1E
|0BAE08| db $4D, $4E, $42, $D2, $D3, $42, $4A, $99
|0BAE10| db $44
|0BAE11| db $62 ; Increment fill
|0BAE12| db $02
|0BAE13| db $00 ; Raw block
|0BAE14| db $02
|0BAE15| db $62 ; Increment fill
|0BAE16| db $05
|0BAE17| db $05 ; Raw block
|0BAE18| db $05, $04, $4A, $99, $44, $4A
|0BAE1E| db $83 ; Copy past
|0BAE1F| dw $CC00
|0BAE21| db $00 ; Raw block
|0BAE22| db $9F
|0BAE23| db $84 ; Copy past
|0BAE24| dw $CB00
|0BAE26| db $85 ; Copy past
|0BAE27| dw $F100
|0BAE29| db $FF ; End of Map 22

;===================================================================================================

OverworldMap32_Screen23_High:
|0BAE2A| db $05 ; Raw block
|0BAE2B| db $07, $07, $09, $02, $0B, $00
|0BAE31| db $22 ; Repeat byte
|0BAE32| db $09
|0BAE33| db $00 ; Raw block
|0BAE34| db $06
|0BAE35| db $43 ; Repeat word
|0BAE36| dw $000C
|0BAE38| db $09 ; Raw block
|0BAE39| db $09, $09, $07, $07, $09, $0B, $00, $0C
|0BAE41| db $0C, $09
|0BAE43| db $26 ; Repeat byte
|0BAE44| db $0C
|0BAE45| db $06 ; Raw block
|0BAE46| db $09, $05, $07, $09, $03, $06, $09
|0BAE4D| db $29 ; Repeat byte
|0BAE4E| db $0C
|0BAE4F| db $00 ; Raw block
|0BAE50| db $08
|0BAE51| db $83 ; Copy past
|0BAE52| dw $1100
|0BAE54| db $2A ; Repeat byte
|0BAE55| db $0C
|0BAE56| db $06 ; Raw block
|0BAE57| db $05, $07, $09, $06, $06, $0C, $0C
|0BAE5E| db $24 ; Repeat byte
|0BAE5F| db $08
|0BAE60| db $24 ; Repeat byte
|0BAE61| db $0C
|0BAE62| db $05 ; Raw block
|0BAE63| db $07, $09, $08, $06, $0C, $07
|0BAE69| db $24 ; Repeat byte
|0BAE6A| db $06
|0BAE6B| db $00 ; Raw block
|0BAE6C| db $08
|0BAE6D| db $84 ; Copy past
|0BAE6E| dw $1D00
|0BAE70| db $05 ; Raw block
|0BAE71| db $0C, $0C, $01, $06, $0C, $0C
|0BAE77| db $23 ; Repeat byte
|0BAE78| db $06
|0BAE79| db $23 ; Repeat byte
|0BAE7A| db $0C
|0BAE7B| db $01 ; Raw block
|0BAE7C| db $05, $05
|0BAE7E| db $2D ; Repeat byte
|0BAE7F| db $0C
|0BAE80| db $03 ; Raw block
|0BAE81| db $07, $05, $05, $07
|0BAE85| db $29 ; Repeat byte
|0BAE86| db $02
|0BAE87| db $01 ; Raw block
|0BAE88| db $0C, $0C
|0BAE8A| db $22 ; Repeat byte
|0BAE8B| db $05
|0BAE8C| db $03 ; Raw block
|0BAE8D| db $07, $0C, $07, $09
|0BAE91| db $22 ; Repeat byte
|0BAE92| db $07
|0BAE93| db $02 ; Raw block
|0BAE94| db $09, $07, $07
|0BAE97| db $22 ; Repeat byte
|0BAE98| db $0C
|0BAE99| db $03 ; Raw block
|0BAE9A| db $08, $07, $07, $09
|0BAE9E| db $22 ; Repeat byte
|0BAE9F| db $07
|0BAEA0| db $01 ; Raw block
|0BAEA1| db $0C, $07
|0BAEA3| db $84 ; Copy past
|0BAEA4| dw $A000
|0BAEA6| db $22 ; Repeat byte
|0BAEA7| db $0C
|0BAEA8| db $2C ; Repeat byte
|0BAEA9| db $07
|0BAEAA| db $02 ; Raw block
|0BAEAB| db $0C, $0C, $04
|0BAEAE| db $2D ; Repeat byte
|0BAEAF| db $0C
|0BAEB0| db $03 ; Raw block
|0BAEB1| db $02, $04, $04, $01
|0BAEB5| db $22 ; Repeat byte
|0BAEB6| db $06
|0BAEB7| db $29 ; Repeat byte
|0BAEB8| db $0C
|0BAEB9| db $0E ; Raw block
|0BAEBA| db $08, $0C, $0C, $04, $00, $0C, $08, $08
|0BAEC2| db $04, $08, $08, $04, $08, $08, $04
|0BAEC9| db $22 ; Repeat byte
|0BAECA| db $08
|0BAECB| db $04 ; Raw block
|0BAECC| db $04, $04, $07, $01, $0B
|0BAED1| db $88 ; Copy past
|0BAED2| dw $E700
|0BAED4| db $FF ; End of Map 23

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen23_Low:
|0BAED5| db $18 ; Raw block
|0BAED6| db $36, $6E, $37, $DE, $F9, $AA, $0D, $05
|0BAEDE| db $0E, $66, $08, $1D, $09, $1F, $27, $28
|0BAEE6| db $19, $6E, $37, $F3, $1D, $0A, $0B, $05
|0BAEEE| db $0C
|0BAEEF| db $24 ; Repeat byte
|0BAEF0| db $0D
|0BAEF1| db $09 ; Raw block
|0BAEF2| db $0E, $28, $E0, $6E, $37, $E2, $66, $31
|0BAEFA| db $0F, $10
|0BAEFC| db $24 ; Repeat byte
|0BAEFD| db $11
|0BAEFE| db $62 ; Increment fill
|0BAEFF| db $12
|0BAF00| db $06 ; Raw block
|0BAF01| db $AA, $6E, $37, $F3, $FB, $15, $16
|0BAF08| db $24 ; Repeat byte
|0BAF09| db $17
|0BAF0A| db $63 ; Increment fill
|0BAF0B| db $18
|0BAF0C| db $06 ; Raw block
|0BAF0D| db $E1, $6E, $37, $66, $66, $1C, $1D
|0BAF14| db $23 ; Repeat byte
|0BAF15| db $E3
|0BAF16| db $00 ; Raw block
|0BAF17| db $E7
|0BAF18| db $64 ; Increment fill
|0BAF19| db $1E
|0BAF1A| db $05 ; Raw block
|0BAF1B| db $6E, $37, $2D, $70, $23, $65
|0BAF21| db $24 ; Repeat byte
|0BAF22| db $7C
|0BAF23| db $0F ; Raw block
|0BAF24| db $F1, $24, $25, $28, $E1, $37, $26, $27
|0BAF2C| db $1E, $66, $28, $29, $B3, $90, $7C, $83
|0BAF34| db $63 ; Increment fill
|0BAF35| db $2A
|0BAF36| db $03 ; Raw block
|0BAF37| db $E1, $AB, $2E, $2F
|0BAF3B| db $29 ; Repeat byte
|0BAF3C| db $30
|0BAF3D| db $05 ; Raw block
|0BAF3E| db $31, $2D, $89, $E1, $AB, $3F
|0BAF44| db $29 ; Repeat byte
|0BAF45| db $FB
|0BAF46| db $08 ; Raw block
|0BAF47| db $32, $2D, $E1, $E0, $E1, $44, $33, $79
|0BAF4F| db $2F
|0BAF50| db $22 ; Repeat byte
|0BAF51| db $79
|0BAF52| db $09 ; Raw block
|0BAF53| db $2F, $79, $79, $33, $32, $2D, $D8, $22
|0BAF5B| db $22, $48
|0BAF5D| db $22 ; Repeat byte
|0BAF5E| db $22
|0BAF5F| db $01 ; Raw block
|0BAF60| db $34, $22
|0BAF62| db $84 ; Copy past
|0BAF63| dw $A000
|0BAF65| db $02 ; Raw block
|0BAF66| db $32, $2D, $35
|0BAF69| db $2C ; Repeat byte
|0BAF6A| db $27
|0BAF6B| db $02 ; Raw block
|0BAF6C| db $36, $2D, $3A
|0BAF6F| db $62 ; Increment fill
|0BAF70| db $37
|0BAF71| db $00 ; Raw block
|0BAF72| db $39
|0BAF73| db $28 ; Repeat byte
|0BAF74| db $3A
|0BAF75| db $00 ; Raw block
|0BAF76| db $3B
|0BAF77| db $62 ; Increment fill
|0BAF78| db $42
|0BAF79| db $03 ; Raw block
|0BAF7A| db $62, $39, $B3, $90
|0BAF7E| db $63 ; Increment fill
|0BAF7F| db $3C
|0BAF80| db $62 ; Increment fill
|0BAF81| db $3D
|0BAF82| db $E0, $22 ; EXT Raw block
|0BAF84| db $3D, $40, $41, $99, $42, $43, $2F, $1D
|0BAF8C| db $28, $BD, $4B, $39, $9F, $4B, $39, $9F
|0BAF94| db $4B, $39, $9F, $9F, $4B, $39, $3A, $9E
|0BAF9C| db $42, $47, $D3, $42, $D2, $D3, $42, $D2
|0BAFA4| db $D3, $42, $D2
|0BAFA7| db $FF ; End of Map 23

;===================================================================================================

OverworldMap32_Screen24_High:
|0BAFA8| db $0F ; Raw block
|0BAFA9| db $09, $09, $0C, $00, $00, $06, $01, $09
|0BAFB1| db $08, $09, $09, $0C, $0C, $07, $06, $07
|0BAFB9| db $27 ; Repeat byte
|0BAFBA| db $0C
|0BAFBB| db $06 ; Raw block
|0BAFBC| db $08, $0C, $0C, $09, $09, $07, $05
|0BAFC3| db $2A ; Repeat byte
|0BAFC4| db $0C
|0BAFC5| db $00 ; Raw block
|0BAFC6| db $09
|0BAFC7| db $22 ; Repeat byte
|0BAFC8| db $0C
|0BAFC9| db $04 ; Raw block
|0BAFCA| db $09, $08, $0C, $0C, $08
|0BAFCF| db $22 ; Repeat byte
|0BAFD0| db $0C
|0BAFD1| db $00 ; Raw block
|0BAFD2| db $08
|0BAFD3| db $22 ; Repeat byte
|0BAFD4| db $0C
|0BAFD5| db $02 ; Raw block
|0BAFD6| db $09, $0C, $05
|0BAFD9| db $24 ; Repeat byte
|0BAFDA| db $0C
|0BAFDB| db $00 ; Raw block
|0BAFDC| db $09
|0BAFDD| db $83 ; Copy past
|0BAFDE| dw $2D00
|0BAFE0| db $08 ; Raw block
|0BAFE1| db $09, $08, $08, $09, $0C, $06, $0C, $0C
|0BAFE9| db $01
|0BAFEA| db $24 ; Repeat byte
|0BAFEB| db $0C
|0BAFEC| db $0B ; Raw block
|0BAFED| db $01, $06, $04, $01, $06, $03, $0C, $02
|0BAFF5| db $0C, $0C, $01, $09
|0BAFF9| db $2C ; Repeat byte
|0BAFFA| db $0C
|0BAFFB| db $02 ; Raw block
|0BAFFC| db $01, $01, $09
|0BAFFF| db $2C ; Repeat byte
|0BB000| db $0C
|0BB001| db $03 ; Raw block
|0BB002| db $06, $06, $09, $0C
|0BB006| db $29 ; Repeat byte
|0BB007| db $02
|0BB008| db $00 ; Raw block
|0BB009| db $07
|0BB00A| db $22 ; Repeat byte
|0BB00B| db $05
|0BB00C| db $01 ; Raw block
|0BB00D| db $09, $0C
|0BB00F| db $43 ; Repeat word
|0BB010| dw $070C
|0BB012| db $01 ; Raw block
|0BB013| db $07, $09
|0BB015| db $24 ; Repeat byte
|0BB016| db $07
|0BB017| db $00 ; Raw block
|0BB018| db $05
|0BB019| db $22 ; Repeat byte
|0BB01A| db $09
|0BB01B| db $02 ; Raw block
|0BB01C| db $0C, $08, $07
|0BB01F| db $62 ; Increment fill
|0BB020| db $07
|0BB021| db $00 ; Raw block
|0BB022| db $09
|0BB023| db $24 ; Repeat byte
|0BB024| db $07
|0BB025| db $00 ; Raw block
|0BB026| db $05
|0BB027| db $22 ; Repeat byte
|0BB028| db $09
|0BB029| db $00 ; Raw block
|0BB02A| db $0C
|0BB02B| db $27 ; Repeat byte
|0BB02C| db $07
|0BB02D| db $06 ; Raw block
|0BB02E| db $0C, $0C, $06, $07, $0C, $08, $06
|0BB035| db $28 ; Repeat byte
|0BB036| db $0C
|0BB037| db $05 ; Raw block
|0BB038| db $04, $01, $0C, $0C, $07, $05
|0BB03E| db $24 ; Repeat byte
|0BB03F| db $0C
|0BB040| db $43 ; Repeat word
|0BB041| dw $0C02
|0BB043| db $02 ; Raw block
|0BB044| db $0C, $06, $06
|0BB047| db $22 ; Repeat byte
|0BB048| db $0C
|0BB049| db $08 ; Raw block
|0BB04A| db $07, $08, $04, $08, $08, $0B, $06, $07
|0BB052| db $01
|0BB053| db $22 ; Repeat byte
|0BB054| db $0C
|0BB055| db $04 ; Raw block
|0BB056| db $06, $06, $01, $03, $05
|0BB05B| db $83 ; Copy past
|0BB05C| dw $E000
|0BB05E| db $0B ; Raw block
|0BB05F| db $01, $00, $00, $06, $00, $02, $0C, $05
|0BB067| db $00, $00, $03, $05
|0BB06B| db $FF ; End of Map 24

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen24_Low:
|0BB06C| db $11 ; Raw block
|0BB06D| db $91, $92, $44, $1D, $1D, $B3, $2D, $31
|0BB075| db $EE, $32, $33, $45, $46, $5B, $09, $3E
|0BB07D| db $47, $48
|0BB07F| db $24 ; Repeat byte
|0BB080| db $0D
|0BB081| db $07 ; Raw block
|0BB082| db $49, $EE, $4A, $4B, $94, $6F, $5B, $C5
|0BB08A| db $63 ; Increment fill
|0BB08B| db $4C
|0BB08C| db $24 ; Repeat byte
|0BB08D| db $11
|0BB08E| db $14 ; Raw block
|0BB08F| db $50, $51, $0E, $45, $46, $52, $46, $D8
|0BB097| db $1B, $53, $EE, $54, $17, $17, $FF, $17
|0BB09F| db $17, $55, $63, $45, $0D
|0BB0A4| db $64 ; Increment fill
|0BB0A5| db $56
|0BB0A6| db $0D ; Raw block
|0BB0A7| db $10, $5B, $4D, $E7, $5C, $4D, $E3, $E7
|0BB0AF| db $6C, $45, $66, $5D, $5E, $8B
|0BB0B5| db $64 ; Increment fill
|0BB0B6| db $5F
|0BB0B7| db $0B ; Raw block
|0BB0B8| db $4C, $3A, $20, $4C, $3A, $D5, $64, $DE
|0BB0C0| db $65, $66, $AB, $91
|0BB0C4| db $66 ; Increment fill
|0BB0C5| db $67
|0BB0C6| db $02 ; Raw block
|0BB0C7| db $6B, $6C, $64
|0BB0CA| db $62 ; Increment fill
|0BB0CB| db $6E
|0BB0CC| db $03 ; Raw block
|0BB0CD| db $B3, $B3, $91, $71
|0BB0D1| db $29 ; Repeat byte
|0BB0D2| db $72
|0BB0D3| db $05 ; Raw block
|0BB0D4| db $73, $74, $A0, $A0, $91, $75
|0BB0DA| db $29 ; Repeat byte
|0BB0DB| db $FB
|0BB0DC| db $0B ; Raw block
|0BB0DD| db $1B, $9F, $E1, $E1, $91, $75, $76, $79
|0BB0E5| db $33, $79, $79, $2F
|0BB0E9| db $23 ; Repeat byte
|0BB0EA| db $79
|0BB0EB| db $0B ; Raw block
|0BB0EC| db $31, $E1, $36, $36, $91, $75, $D8, $22
|0BB0F4| db $22, $D8, $47, $47
|0BB0F8| db $23 ; Repeat byte
|0BB0F9| db $22
|0BB0FA| db $00 ; Raw block
|0BB0FB| db $3D
|0BB0FC| db $83 ; Copy past
|0BB0FD| dw $9D00
|0BB0FF| db $00 ; Raw block
|0BB100| db $77
|0BB101| db $27 ; Repeat byte
|0BB102| db $27
|0BB103| db $08 ; Raw block
|0BB104| db $78, $79, $1E, $43, $4C, $AA, $9B, $7A
|0BB10C| db $7B
|0BB10D| db $25 ; Repeat byte
|0BB10E| db $7C
|0BB10F| db $06 ; Raw block
|0BB110| db $7D, $1E, $74, $7E, $7F, $43, $E1
|0BB117| db $62 ; Increment fill
|0BB118| db $80
|0BB119| db $01 ; Raw block
|0BB11A| db $80, $83
|0BB11C| db $43 ; Repeat word
|0BB11D| dw $845B
|0BB11F| db $02 ; Raw block
|0BB120| db $85, $2F, $30
|0BB123| db $62 ; Increment fill
|0BB124| db $86
|0BB125| db $08 ; Raw block
|0BB126| db $54, $4B, $39, $9F, $4B, $43, $3E, $C5
|0BB12E| db $1E
|0BB12F| db $62 ; Increment fill
|0BB130| db $89
|0BB131| db $14 ; Raw block
|0BB132| db $8A, $66, $1E, $32, $C5, $D3, $42, $D2
|0BB13A| db $D3, $62, $1D, $1D, $66, $AA, $5E, $8C
|0BB142| db $4F, $1D, $FB, $32, $C5
|0BB147| db $FF ; End of Map 24

;===================================================================================================

OverworldMap32_Screen26_High:
|0BB148| db $00 ; Raw block
|0BB149| db $01
|0BB14A| db $26 ; Repeat byte
|0BB14B| db $0A
|0BB14C| db $0B ; Raw block
|0BB14D| db $0C, $06, $0C, $0C, $01, $01, $0C, $0C
|0BB155| db $01, $0A, $05, $0C
|0BB159| db $44 ; Repeat word
|0BB15A| dw $0A0C
|0BB15C| db $04 ; Raw block
|0BB15D| db $0C, $06, $0C, $0A, $0A
|0BB162| db $84 ; Copy past
|0BB163| dw $0E00
|0BB165| db $26 ; Repeat byte
|0BB166| db $0C
|0BB167| db $00 ; Raw block
|0BB168| db $0A
|0BB169| db $83 ; Copy past
|0BB16A| dw $1300
|0BB16C| db $00 ; Raw block
|0BB16D| db $05
|0BB16E| db $83 ; Copy past
|0BB16F| dw $1000
|0BB171| db $03 ; Raw block
|0BB172| db $05, $05, $0C, $05
|0BB176| db $43 ; Repeat word
|0BB177| dw $0C05
|0BB179| db $04 ; Raw block
|0BB17A| db $0A, $0A, $0C, $0A, $01
|0BB17F| db $83 ; Copy past
|0BB180| dw $3C00
|0BB182| db $22 ; Repeat byte
|0BB183| db $0C
|0BB184| db $44 ; Repeat word
|0BB185| dw $0C0A
|0BB187| db $85 ; Copy past
|0BB188| dw $2D00
|0BB18A| db $26 ; Repeat byte
|0BB18B| db $0C
|0BB18C| db $01 ; Raw block
|0BB18D| db $05, $0C
|0BB18F| db $22 ; Repeat byte
|0BB190| db $0A
|0BB191| db $01 ; Raw block
|0BB192| db $05, $01
|0BB194| db $2A ; Repeat byte
|0BB195| db $0C
|0BB196| db $22 ; Repeat byte
|0BB197| db $0A
|0BB198| db $02 ; Raw block
|0BB199| db $06, $01, $0A
|0BB19C| db $84 ; Copy past
|0BB19D| dw $0C00
|0BB19F| db $01 ; Raw block
|0BB1A0| db $0C, $0A
|0BB1A2| db $23 ; Repeat byte
|0BB1A3| db $0C
|0BB1A4| db $83 ; Copy past
|0BB1A5| dw $3D00
|0BB1A7| db $43 ; Repeat word
|0BB1A8| dw $0C01
|0BB1AA| db $04 ; Raw block
|0BB1AB| db $0C, $01, $0C, $06, $0C
|0BB1B0| db $43 ; Repeat word
|0BB1B1| dw $0A0C
|0BB1B3| db $83 ; Copy past
|0BB1B4| dw $1D00
|0BB1B6| db $00 ; Raw block
|0BB1B7| db $02
|0BB1B8| db $24 ; Repeat byte
|0BB1B9| db $0C
|0BB1BA| db $02 ; Raw block
|0BB1BB| db $06, $05, $0C
|0BB1BE| db $22 ; Repeat byte
|0BB1BF| db $0A
|0BB1C0| db $00 ; Raw block
|0BB1C1| db $05
|0BB1C2| db $83 ; Copy past
|0BB1C3| dw $8F00
|0BB1C5| db $24 ; Repeat byte
|0BB1C6| db $0C
|0BB1C7| db $85 ; Copy past
|0BB1C8| dw $2A00
|0BB1CA| db $04 ; Raw block
|0BB1CB| db $06, $0C, $01, $0C, $02
|0BB1D0| db $2C ; Repeat byte
|0BB1D1| db $0C
|0BB1D2| db $02 ; Raw block
|0BB1D3| db $00, $0C, $02
|0BB1D6| db $24 ; Repeat byte
|0BB1D7| db $0C
|0BB1D8| db $83 ; Copy past
|0BB1D9| dw $0C00
|0BB1DB| db $22 ; Repeat byte
|0BB1DC| db $01
|0BB1DD| db $01 ; Raw block
|0BB1DE| db $0C, $00
|0BB1E0| db $25 ; Repeat byte
|0BB1E1| db $0C
|0BB1E2| db $07 ; Raw block
|0BB1E3| db $06, $0C, $03, $03, $0C, $07, $00, $07
|0BB1EB| db $23 ; Repeat byte
|0BB1EC| db $0C
|0BB1ED| db $01 ; Raw block
|0BB1EE| db $02, $06
|0BB1F0| db $43 ; Repeat word
|0BB1F1| dw $0502
|0BB1F3| db $83 ; Copy past
|0BB1F4| dw $D800
|0BB1F6| db $01 ; Raw block
|0BB1F7| db $02, $0C
|0BB1F9| db $22 ; Repeat byte
|0BB1FA| db $03
|0BB1FB| db $04 ; Raw block
|0BB1FC| db $0C, $0C, $00, $02, $04
|0BB201| db $83 ; Copy past
|0BB202| dw $0C00
|0BB204| db $00 ; Raw block
|0BB205| db $06
|0BB206| db $22 ; Repeat byte
|0BB207| db $01
|0BB208| db $00 ; Raw block
|0BB209| db $0C
|0BB20A| db $FF ; End of Map 26

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen26_Low:
|0BB20B| db $01 ; Raw block
|0BB20C| db $D6, $1B
|0BB20E| db $24 ; Repeat byte
|0BB20F| db $1D
|0BB210| db $1B ; Raw block
|0BB211| db $F5, $8D, $05, $8E, $8F, $F8, $F8, $90
|0BB219| db $91, $D6, $1A, $FB, $92, $93, $E2, $92
|0BB221| db $E2, $93, $92, $05, $94, $08, $85, $95
|0BB229| db $96, $D6, $1A, $FB
|0BB22D| db $62 ; Increment fill
|0BB22E| db $97
|0BB22F| db $E0, $3A ; EXT Raw block
|0BB231| db $97, $99, $99, $97, $E8, $9A, $9B, $99
|0BB239| db $9C, $FB, $D6, $1A, $FB, $9D, $FB, $FB
|0BB241| db $9E, $FB, $FB, $9D, $FB, $9F, $77, $99
|0BB249| db $A0, $E8, $D6, $1A, $E8, $A1, $E2, $93
|0BB251| db $A1, $93, $E2, $A1, $E8, $A2, $77, $99
|0BB259| db $A3, $E8, $D6, $1A, $FB, $A4, $99, $98
|0BB261| db $A4, $98, $99, $A4, $FB, $A5, $77, $99
|0BB269| db $D3, $FB, $D6
|0BB26C| db $6A ; Increment fill
|0BB26D| db $A6
|0BB26E| db $0D ; Raw block
|0BB26F| db $77, $99, $FA, $05, $D6, $07, $F8, $F8
|0BB277| db $B1, $B2, $F8, $B3, $08, $B1
|0BB27D| db $62 ; Increment fill
|0BB27E| db $B4
|0BB27F| db $15 ; Raw block
|0BB280| db $99, $B7, $66, $D6, $D6, $B8, $E5, $B1
|0BB288| db $B9, $E5, $BA, $05, $BB, $BC, $27, $BD
|0BB290| db $80, $08, $8F, $BE, $D6, $DD
|0BB296| db $64 ; Increment fill
|0BB297| db $BF
|0BB298| db $0A ; Raw block
|0BB299| db $05, $FB, $C4, $D0, $E8, $0C, $FB, $C5
|0BB2A1| db $C6, $D6, $DD
|0BB2A4| db $63 ; Increment fill
|0BB2A5| db $C7
|0BB2A6| db $0B ; Raw block
|0BB2A7| db $C3, $E8, $9E, $C4, $D0, $9E, $E8, $05
|0BB2AF| db $CB, $E5, $CC, $DD
|0BB2B3| db $64 ; Increment fill
|0BB2B4| db $CD
|0BB2B5| db $01 ; Raw block
|0BB2B6| db $AB, $A7
|0BB2B8| db $62 ; Increment fill
|0BB2B9| db $D2
|0BB2BA| db $62 ; Increment fill
|0BB2BB| db $D4
|0BB2BC| db $01 ; Raw block
|0BB2BD| db $1D, $D7
|0BB2BF| db $83 ; Copy past
|0BB2C0| dw $A200
|0BB2C2| db $05 ; Raw block
|0BB2C3| db $D8, $D9, $E5, $E5, $DA, $DB
|0BB2C9| db $22 ; Repeat byte
|0BB2CA| db $E5
|0BB2CB| db $01 ; Raw block
|0BB2CC| db $DC, $1D
|0BB2CE| db $65 ; Increment fill
|0BB2CF| db $DD
|0BB2D0| db $07 ; Raw block
|0BB2D1| db $66, $E3, $44, $44, $E4, $BB, $1D, $8F
|0BB2D9| db $63 ; Increment fill
|0BB2DA| db $E4
|0BB2DB| db $14 ; Raw block
|0BB2DC| db $D3, $66, $8D, $57, $4C, $58, $E8, $4B
|0BB2E4| db $4B, $E9, $4C, $EA, $4B, $8D, $D5, $DD
|0BB2EC| db $EB, $B2, $97, $E6, $EB
|0BB2F1| db $62 ; Increment fill
|0BB2F2| db $EB
|0BB2F3| db $00 ; Raw block
|0BB2F4| db $A3
|0BB2F5| db $62 ; Increment fill
|0BB2F6| db $EA
|0BB2F7| db $00 ; Raw block
|0BB2F8| db $EE
|0BB2F9| db $FF ; End of Map 26

;===================================================================================================

OverworldMap32_Screen27_High:
|0BB2FA| db $0F ; Raw block
|0BB2FB| db $0A, $05, $06, $0C, $0A, $05, $0A, $0A
|0BB303| db $05, $06, $05, $05, $0A, $0A, $0C, $0A
|0BB30B| db $43 ; Repeat word
|0BB30C| dw $0C05
|0BB30E| db $43 ; Repeat word
|0BB30F| dw $0C0A
|0BB311| db $01 ; Raw block
|0BB312| db $06, $0C
|0BB314| db $23 ; Repeat byte
|0BB315| db $0A
|0BB316| db $00 ; Raw block
|0BB317| db $0C
|0BB318| db $83 ; Copy past
|0BB319| dw $0700
|0BB31B| db $01 ; Raw block
|0BB31C| db $0C, $0A
|0BB31E| db $83 ; Copy past
|0BB31F| dw $0400
|0BB321| db $02 ; Raw block
|0BB322| db $0C, $0C, $01
|0BB325| db $44 ; Repeat word
|0BB326| dw $0A0C
|0BB328| db $02 ; Raw block
|0BB329| db $0C, $0A, $0A
|0BB32C| db $22 ; Repeat byte
|0BB32D| db $0C
|0BB32E| db $02 ; Raw block
|0BB32F| db $05, $05, $0A
|0BB332| db $23 ; Repeat byte
|0BB333| db $0C
|0BB334| db $23 ; Repeat byte
|0BB335| db $0D
|0BB336| db $83 ; Copy past
|0BB337| dw $2400
|0BB339| db $02 ; Raw block
|0BB33A| db $0D, $0C, $0C
|0BB33D| db $24 ; Repeat byte
|0BB33E| db $0D
|0BB33F| db $08 ; Raw block
|0BB340| db $0A, $0D, $0D, $0A, $05, $05, $06, $0A
|0BB348| db $0D
|0BB349| db $22 ; Repeat byte
|0BB34A| db $01
|0BB34B| db $22 ; Repeat byte
|0BB34C| db $0D
|0BB34D| db $01 ; Raw block
|0BB34E| db $0C, $0A
|0BB350| db $22 ; Repeat byte
|0BB351| db $0D
|0BB352| db $23 ; Repeat byte
|0BB353| db $0A
|0BB354| db $00 ; Raw block
|0BB355| db $0D
|0BB356| db $44 ; Repeat word
|0BB357| dw $060D
|0BB359| db $00 ; Raw block
|0BB35A| db $0C
|0BB35B| db $22 ; Repeat byte
|0BB35C| db $0D
|0BB35D| db $0A ; Raw block
|0BB35E| db $0A, $0D, $0D, $04, $01, $04, $02, $0D
|0BB366| db $07, $0D, $06
|0BB369| db $84 ; Copy past
|0BB36A| dw $5B00
|0BB36C| db $00 ; Raw block
|0BB36D| db $01
|0BB36E| db $26 ; Repeat byte
|0BB36F| db $0D
|0BB370| db $83 ; Copy past
|0BB371| dw $7800
|0BB373| db $05 ; Raw block
|0BB374| db $05, $0D, $0A, $0D, $01, $0C
|0BB37A| db $25 ; Repeat byte
|0BB37B| db $0D
|0BB37C| db $01 ; Raw block
|0BB37D| db $01, $01
|0BB37F| db $85 ; Copy past
|0BB380| dw $7A00
|0BB382| db $01 ; Raw block
|0BB383| db $0D, $06
|0BB385| db $22 ; Repeat byte
|0BB386| db $0D
|0BB387| db $00 ; Raw block
|0BB388| db $06
|0BB389| db $23 ; Repeat byte
|0BB38A| db $0D
|0BB38B| db $03 ; Raw block
|0BB38C| db $05, $0D, $0D, $0C
|0BB390| db $22 ; Repeat byte
|0BB391| db $0D
|0BB392| db $01 ; Raw block
|0BB393| db $06, $06
|0BB395| db $22 ; Repeat byte
|0BB396| db $0D
|0BB397| db $02 ; Raw block
|0BB398| db $06, $0D, $0C
|0BB39B| db $27 ; Repeat byte
|0BB39C| db $0D
|0BB39D| db $01 ; Raw block
|0BB39E| db $06, $06
|0BB3A0| db $22 ; Repeat byte
|0BB3A1| db $0D
|0BB3A2| db $10 ; Raw block
|0BB3A3| db $06, $0D, $0C, $01, $01, $0D, $0A, $01
|0BB3AB| db $0D, $02, $03, $03, $07, $03, $0D, $0D
|0BB3B3| db $07
|0BB3B4| db $22 ; Repeat byte
|0BB3B5| db $03
|0BB3B6| db $00 ; Raw block
|0BB3B7| db $07
|0BB3B8| db $83 ; Copy past
|0BB3B9| dw $8600
|0BB3BB| db $00 ; Raw block
|0BB3BC| db $02
|0BB3BD| db $29 ; Repeat byte
|0BB3BE| db $03
|0BB3BF| db $02 ; Raw block
|0BB3C0| db $0B, $02, $09
|0BB3C3| db $23 ; Repeat byte
|0BB3C4| db $0D
|0BB3C5| db $23 ; Repeat byte
|0BB3C6| db $01
|0BB3C7| db $07 ; Raw block
|0BB3C8| db $0D, $01, $01, $0C, $01, $02, $0D, $0D
|0BB3D0| db $22 ; Repeat byte
|0BB3D1| db $01
|0BB3D2| db $FF ; End of Map 27

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen27_Low:
|0BB3D3| db $E0, $39 ; EXT Raw block
|0BB3D5| db $E8, $FB, $05, $EF, $38, $FB, $99, $E7
|0BB3DD| db $FB, $05, $FB, $E8, $E8, $0C, $F0, $BF
|0BB3E5| db $E8, $9E, $FB, $9F, $10, $F1, $D4, $F2
|0BB3ED| db $B5, $F3, $15, $15, $2E, $C4, $F4, $83
|0BB3F5| db $FB, $05, $E8, $9A, $10, $D0, $DC, $1D
|0BB3FD| db $1C, $F5, $F6, $15, $F7, $CB, $F8, $CE
|0BB405| db $F9, $FA, $17, $7E, $FB, $F1, $9E, $FB
|0BB40D| db $E8, $19
|0BB40F| db $63 ; Increment fill
|0BB410| db $FC
|0BB411| db $63 ; Increment fill
|0BB412| db $00
|0BB413| db $06 ; Raw block
|0BB414| db $1F, $F5, $FB, $D0, $04, $AC, $AD
|0BB41B| db $64 ; Increment fill
|0BB41C| db $05
|0BB41D| db $08 ; Raw block
|0BB41E| db $29, $01, $02, $1A, $E8, $FB, $05, $0C
|0BB426| db $0A
|0BB427| db $22 ; Repeat byte
|0BB428| db $E5
|0BB429| db $07 ; Raw block
|0BB42A| db $0B, $07, $0C, $C4, $29, $01, $02, $0D
|0BB432| db $62 ; Increment fill
|0BB433| db $13
|0BB434| db $1B ; Raw block
|0BB435| db $15, $0E, $0F, $66, $10, $5A, $11, $C3
|0BB43D| db $09, $00, $01, $2B, $12, $13, $85, $22
|0BB445| db $85, $04, $14, $A5, $15, $61, $16, $17
|0BB44D| db $C4, $29, $01, $F8
|0BB451| db $66 ; Increment fill
|0BB452| db $18
|0BB453| db $09 ; Raw block
|0BB454| db $AC, $1F, $6B, $20, $C0, $09, $29, $01
|0BB45C| db $E5, $DC
|0BB45E| db $65 ; Increment fill
|0BB45F| db $21
|0BB460| db $09 ; Raw block
|0BB461| db $58, $65, $66, $07, $27, $C4, $29, $01
|0BB469| db $28, $5A
|0BB46B| db $62 ; Increment fill
|0BB46C| db $29
|0BB46D| db $00 ; Raw block
|0BB46E| db $61
|0BB46F| db $63 ; Increment fill
|0BB470| db $2C
|0BB471| db $08 ; Raw block
|0BB472| db $F2, $30, $31, $C4, $00, $01, $32, $61
|0BB47A| db $64
|0BB47B| db $62 ; Increment fill
|0BB47C| db $33
|0BB47D| db $02 ; Raw block
|0BB47E| db $6E, $07, $D1
|0BB481| db $65 ; Increment fill
|0BB482| db $36
|0BB483| db $03 ; Raw block
|0BB484| db $01, $3C, $6B, $6E
|0BB488| db $62 ; Increment fill
|0BB489| db $3D
|0BB48A| db $10 ; Raw block
|0BB48B| db $66, $40, $D9, $E5, $E5, $41, $F3, $E5
|0BB493| db $42, $82, $44, $44, $90, $44, $43, $44
|0BB49B| db $90
|0BB49C| db $22 ; Repeat byte
|0BB49D| db $44
|0BB49E| db $05 ; Raw block
|0BB49F| db $BB, $45, $46, $8F, $47, $82
|0BB4A5| db $29 ; Repeat byte
|0BB4A6| db $4B
|0BB4A7| db $02 ; Raw block
|0BB4A8| db $45, $D3, $F4
|0BB4AB| db $63 ; Increment fill
|0BB4AC| db $48
|0BB4AD| db $23 ; Repeat byte
|0BB4AE| db $06
|0BB4AF| db $0A ; Raw block
|0BB4B0| db $4C, $06, $06, $ED, $06, $DC, $4D, $4E
|0BB4B8| db $71, $06, $06
|0BB4BB| db $FF ; End of Map 27

;===================================================================================================

OverworldMap32_Screen28_High:
|0BB4BC| db $0A ; Raw block
|0BB4BD| db $0D, $0D, $0A, $01, $0D, $08, $08, $04
|0BB4C5| db $08, $08, $04
|0BB4C8| db $84 ; Copy past
|0BB4C9| dw $0500
|0BB4CB| db $24 ; Repeat byte
|0BB4CC| db $0D
|0BB4CD| db $8A ; Copy past
|0BB4CE| dw $0500
|0BB4D0| db $03 ; Raw block
|0BB4D1| db $0B, $0D, $0A, $0B
|0BB4D5| db $88 ; Copy past
|0BB4D6| dw $0700
|0BB4D8| db $06 ; Raw block
|0BB4D9| db $04, $08, $08, $03, $0A, $0D, $01
|0BB4E0| db $28 ; Repeat byte
|0BB4E1| db $08
|0BB4E2| db $00 ; Raw block
|0BB4E3| db $0D
|0BB4E4| db $85 ; Copy past
|0BB4E5| dw $2E00
|0BB4E7| db $01 ; Raw block
|0BB4E8| db $0D, $07
|0BB4EA| db $25 ; Repeat byte
|0BB4EB| db $0D
|0BB4EC| db $83 ; Copy past
|0BB4ED| dw $3C00
|0BB4EF| db $22 ; Repeat byte
|0BB4F0| db $0D
|0BB4F1| db $05 ; Raw block
|0BB4F2| db $01, $00, $00, $0D, $0D, $05
|0BB4F8| db $23 ; Repeat byte
|0BB4F9| db $0D
|0BB4FA| db $83 ; Copy past
|0BB4FB| dw $2D00
|0BB4FD| db $03 ; Raw block
|0BB4FE| db $0D, $0D, $03, $00
|0BB502| db $28 ; Repeat byte
|0BB503| db $0D
|0BB504| db $05 ; Raw block
|0BB505| db $08, $08, $0C, $0D, $0D, $03
|0BB50B| db $23 ; Repeat byte
|0BB50C| db $0D
|0BB50D| db $00 ; Raw block
|0BB50E| db $09
|0BB50F| db $24 ; Repeat byte
|0BB510| db $0D
|0BB511| db $83 ; Copy past
|0BB512| dw $0E00
|0BB514| db $05 ; Raw block
|0BB515| db $04, $0D, $0D, $07, $0D, $09
|0BB51B| db $25 ; Repeat byte
|0BB51C| db $0D
|0BB51D| db $03 ; Raw block
|0BB51E| db $08, $08, $03, $04
|0BB522| db $25 ; Repeat byte
|0BB523| db $0D
|0BB524| db $00 ; Raw block
|0BB525| db $00
|0BB526| db $26 ; Repeat byte
|0BB527| db $0D
|0BB528| db $02 ; Raw block
|0BB529| db $03, $03, $04
|0BB52C| db $25 ; Repeat byte
|0BB52D| db $02
|0BB52E| db $00 ; Raw block
|0BB52F| db $0B
|0BB530| db $23 ; Repeat byte
|0BB531| db $0D
|0BB532| db $00 ; Raw block
|0BB533| db $08
|0BB534| db $83 ; Copy past
|0BB535| dw $7200
|0BB537| db $25 ; Repeat byte
|0BB538| db $01
|0BB539| db $01 ; Raw block
|0BB53A| db $03, $0B
|0BB53C| db $23 ; Repeat byte
|0BB53D| db $0D
|0BB53E| db $0B ; Raw block
|0BB53F| db $08, $0D, $0D, $0C, $01, $08, $01, $03
|0BB547| db $06, $00, $03, $03
|0BB54B| db $24 ; Repeat byte
|0BB54C| db $0D
|0BB54D| db $0B ; Raw block
|0BB54E| db $01, $0D, $02, $07, $0D, $0D, $07, $03
|0BB556| db $03, $07, $03, $03
|0BB55A| db $25 ; Repeat byte
|0BB55B| db $01
|0BB55C| db $01 ; Raw block
|0BB55D| db $0D, $0D
|0BB55F| db $24 ; Repeat byte
|0BB560| db $03
|0BB561| db $01 ; Raw block
|0BB562| db $0B, $07
|0BB564| db $24 ; Repeat byte
|0BB565| db $03
|0BB566| db $05 ; Raw block
|0BB567| db $01, $0B, $01, $01, $0D, $01
|0BB56D| db $24 ; Repeat byte
|0BB56E| db $0D
|0BB56F| db $24 ; Repeat byte
|0BB570| db $03
|0BB571| db $FF ; End of Map 28

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen28_Low:
|0BB572| db $0A ; Raw block
|0BB573| db $4F, $50, $39, $E3, $51, $D2, $D3, $42
|0BB57B| db $D2, $D3, $42
|0BB57E| db $84 ; Copy past
|0BB57F| dw $0500
|0BB581| db $01 ; Raw block
|0BB582| db $52, $4F
|0BB584| db $62 ; Increment fill
|0BB585| db $53
|0BB586| db $05 ; Raw block
|0BB587| db $99, $44, $4A, $99, $44, $4A
|0BB58D| db $84 ; Copy past
|0BB58E| dw $1500
|0BB590| db $09 ; Raw block
|0BB591| db $4D, $56, $39, $58, $39, $9F, $4B, $39
|0BB599| db $9F, $4B
|0BB59B| db $85 ; Copy past
|0BB59C| dw $2400
|0BB59E| db $0F ; Raw block
|0BB59F| db $63, $09, $53, $E3, $9C, $A5, $A6, $9C
|0BB5A7| db $A5, $A6, $9C, $A5, $A6, $51, $D2, $D3
|0BB5AF| db $83 ; Copy past
|0BB5B0| dw $3000
|0BB5B2| db $01 ; Raw block
|0BB5B3| db $57, $09
|0BB5B5| db $63 ; Increment fill
|0BB5B6| db $58
|0BB5B7| db $0E ; Raw block
|0BB5B8| db $5B, $5A, $C9, $55, $99, $44, $5C, $5D
|0BB5C0| db $53, $E3, $1F, $99, $5E, $5F, $0D
|0BB5C7| db $63 ; Increment fill
|0BB5C8| db $60
|0BB5C9| db $07 ; Raw block
|0BB5CA| db $39, $9F, $4B, $9C, $64, $65, $95, $1F
|0BB5D2| db $67 ; Increment fill
|0BB5D3| db $66
|0BB5D4| db $0B ; Raw block
|0BB5D5| db $51, $D2, $D3, $90, $6E, $6F, $9D, $70
|0BB5DD| db $71, $62, $72, $6F
|0BB5E1| db $64 ; Increment fill
|0BB5E2| db $73
|0BB5E3| db $09 ; Raw block
|0BB5E4| db $43, $44, $78, $6F, $84, $79, $7A, $09
|0BB5EC| db $7B, $6F
|0BB5EE| db $65 ; Increment fill
|0BB5EF| db $7C
|0BB5F0| db $05 ; Raw block
|0BB5F1| db $4A, $4B, $9C, $84, $82, $83
|0BB5F7| db $22 ; Repeat byte
|0BB5F8| db $84
|0BB5F9| db $01 ; Raw block
|0BB5FA| db $85, $1D
|0BB5FC| db $66 ; Increment fill
|0BB5FD| db $86
|0BB5FE| db $02 ; Raw block
|0BB5FF| db $BB, $A8, $81
|0BB602| db $25 ; Repeat byte
|0BB603| db $61
|0BB604| db $01 ; Raw block
|0BB605| db $D4, $86
|0BB607| db $62 ; Increment fill
|0BB608| db $8D
|0BB609| db $04 ; Raw block
|0BB60A| db $10, $90, $5C, $91, $92
|0BB60F| db $25 ; Repeat byte
|0BB610| db $22
|0BB611| db $01 ; Raw block
|0BB612| db $B1, $D4
|0BB614| db $63 ; Increment fill
|0BB615| db $93
|0BB616| db $0B ; Raw block
|0BB617| db $5E, $97, $98, $DE, $60, $2D, $1E, $D5
|0BB61F| db $66, $1D, $56, $B1
|0BB623| db $64 ; Increment fill
|0BB624| db $99
|0BB625| db $0B ; Raw block
|0BB626| db $06, $9E, $D2, $BF, $9F, $A0, $90, $44
|0BB62E| db $44, $BB, $56, $BA
|0BB632| db $23 ; Repeat byte
|0BB633| db $E5
|0BB634| db $03 ; Raw block
|0BB635| db $06, $06, $9E, $A1
|0BB639| db $24 ; Repeat byte
|0BB63A| db $4B
|0BB63B| db $01 ; Raw block
|0BB63C| db $45, $BF
|0BB63E| db $24 ; Repeat byte
|0BB63F| db $44
|0BB640| db $02 ; Raw block
|0BB641| db $06, $4B, $06
|0BB644| db $43 ; Repeat word
|0BB645| dw $A206
|0BB647| db $03 ; Raw block
|0BB648| db $A3, $4B, $9E, $A1
|0BB64C| db $24 ; Repeat byte
|0BB64D| db $4B
|0BB64E| db $FF ; End of Map 28

;===================================================================================================

OverworldMap32_Screen29_High:
|0BB64F| db $06 ; Raw block
|0BB650| db $04, $08, $08, $04, $08, $08, $04
|0BB657| db $23 ; Repeat byte
|0BB658| db $08
|0BB659| db $22 ; Repeat byte
|0BB65A| db $0D
|0BB65B| db $02 ; Raw block
|0BB65C| db $08, $08, $04
|0BB65F| db $22 ; Repeat byte
|0BB660| db $08
|0BB661| db $01 ; Raw block
|0BB662| db $01, $08
|0BB664| db $43 ; Repeat word
|0BB665| dw $0108
|0BB667| db $24 ; Repeat byte
|0BB668| db $0D
|0BB669| db $02 ; Raw block
|0BB66A| db $08, $04, $08
|0BB66D| db $23 ; Repeat byte
|0BB66E| db $0D
|0BB66F| db $04 ; Raw block
|0BB670| db $08, $01, $0D, $04, $06
|0BB675| db $24 ; Repeat byte
|0BB676| db $0D
|0BB677| db $01 ; Raw block
|0BB678| db $08, $08
|0BB67A| db $23 ; Repeat byte
|0BB67B| db $0D
|0BB67C| db $00 ; Raw block
|0BB67D| db $04
|0BB67E| db $23 ; Repeat byte
|0BB67F| db $02
|0BB680| db $24 ; Repeat byte
|0BB681| db $0D
|0BB682| db $01 ; Raw block
|0BB683| db $01, $00
|0BB685| db $23 ; Repeat byte
|0BB686| db $0D
|0BB687| db $01 ; Raw block
|0BB688| db $02, $02
|0BB68A| db $22 ; Repeat byte
|0BB68B| db $01
|0BB68C| db $00 ; Raw block
|0BB68D| db $03
|0BB68E| db $22 ; Repeat byte
|0BB68F| db $0D
|0BB690| db $09 ; Raw block
|0BB691| db $08, $0D, $02, $02, $0D, $04, $01, $02
|0BB699| db $06, $04
|0BB69B| db $23 ; Repeat byte
|0BB69C| db $02
|0BB69D| db $23 ; Repeat byte
|0BB69E| db $0D
|0BB69F| db $06 ; Raw block
|0BB6A0| db $01, $01, $0D, $02, $00, $00, $09
|0BB6A7| db $27 ; Repeat byte
|0BB6A8| db $0D
|0BB6A9| db $09 ; Raw block
|0BB6AA| db $0C, $04, $06, $05, $0D, $09, $07, $03
|0BB6B2| db $03, $06
|0BB6B4| db $23 ; Repeat byte
|0BB6B5| db $0D
|0BB6B6| db $0B ; Raw block
|0BB6B7| db $08, $08, $04, $04, $07, $06, $05, $02
|0BB6BF| db $02, $03, $03, $0D
|0BB6C3| db $22 ; Repeat byte
|0BB6C4| db $08
|0BB6C5| db $02 ; Raw block
|0BB6C6| db $0D, $08, $08
|0BB6C9| db $23 ; Repeat byte
|0BB6CA| db $0D
|0BB6CB| db $00 ; Raw block
|0BB6CC| db $03
|0BB6CD| db $84 ; Copy past
|0BB6CE| dw $4900
|0BB6D0| db $22 ; Repeat byte
|0BB6D1| db $08
|0BB6D2| db $01 ; Raw block
|0BB6D3| db $0D, $08
|0BB6D5| db $43 ; Repeat word
|0BB6D6| dw $0D08
|0BB6D8| db $03 ; Raw block
|0BB6D9| db $0D, $07, $06, $05
|0BB6DD| db $25 ; Repeat byte
|0BB6DE| db $0D
|0BB6DF| db $03 ; Raw block
|0BB6E0| db $04, $06, $01, $08
|0BB6E4| db $22 ; Repeat byte
|0BB6E5| db $0D
|0BB6E6| db $05 ; Raw block
|0BB6E7| db $05, $0D, $05, $03, $03, $04
|0BB6ED| db $22 ; Repeat byte
|0BB6EE| db $01
|0BB6EF| db $02 ; Raw block
|0BB6F0| db $04, $01, $03
|0BB6F3| db $22 ; Repeat byte
|0BB6F4| db $0D
|0BB6F5| db $03 ; Raw block
|0BB6F6| db $02, $02, $0D, $05
|0BB6FA| db $22 ; Repeat byte
|0BB6FB| db $03
|0BB6FC| db $01 ; Raw block
|0BB6FD| db $00, $07
|0BB6FF| db $23 ; Repeat byte
|0BB700| db $06
|0BB701| db $23 ; Repeat byte
|0BB702| db $01
|0BB703| db $02 ; Raw block
|0BB704| db $02, $0D, $01
|0BB707| db $83 ; Copy past
|0BB708| dw $8700
|0BB70A| db $04 ; Raw block
|0BB70B| db $00, $00, $06, $00, $00
|0BB710| db $25 ; Repeat byte
|0BB711| db $03
|0BB712| db $03 ; Raw block
|0BB713| db $01, $0C, $03, $03
|0BB717| db $25 ; Repeat byte
|0BB718| db $00
|0BB719| db $25 ; Repeat byte
|0BB71A| db $03
|0BB71B| db $22 ; Repeat byte
|0BB71C| db $0D
|0BB71D| db $01 ; Raw block
|0BB71E| db $06, $06
|0BB720| db $24 ; Repeat byte
|0BB721| db $00
|0BB722| db $FF ; End of Map 29

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen29_Low:
|0BB723| db $19 ; Raw block
|0BB724| db $42, $D2, $D3, $42, $D2, $D3, $42, $D2
|0BB72C| db $D3, $A4, $9D, $A4, $A5, $51, $D2, $D3
|0BB734| db $4A, $BB, $41, $42, $4E, $41, $42, $4E
|0BB73C| db $41, $68
|0BB73E| db $64 ; Increment fill
|0BB73F| db $A6
|0BB740| db $02 ; Raw block
|0BB741| db $41, $39, $BE
|0BB744| db $63 ; Increment fill
|0BB745| db $AB
|0BB746| db $04 ; Raw block
|0BB747| db $49, $58, $AF, $25, $66
|0BB74C| db $64 ; Increment fill
|0BB74D| db $B0
|0BB74E| db $01 ; Raw block
|0BB74F| db $A4, $9D
|0BB751| db $63 ; Increment fill
|0BB752| db $B5
|0BB753| db $01 ; Raw block
|0BB754| db $B5, $60
|0BB756| db $22 ; Repeat byte
|0BB757| db $61
|0BB758| db $64 ; Increment fill
|0BB759| db $B9
|0BB75A| db $01 ; Raw block
|0BB75B| db $68, $99
|0BB75D| db $63 ; Increment fill
|0BB75E| db $BE
|0BB75F| db $01 ; Raw block
|0BB760| db $79, $02
|0BB762| db $22 ; Repeat byte
|0BB763| db $22
|0BB764| db $0D ; Raw block
|0BB765| db $A8, $C2, $C3, $AA, $41, $C4, $61, $61
|0BB76D| db $C5, $C5, $E5, $7A, $66, $81
|0BB773| db $23 ; Repeat byte
|0BB774| db $61
|0BB775| db $0C ; Raw block
|0BB776| db $C6, $B3, $B4, $C7, $22, $22, $C8, $04
|0BB77E| db $1D, $FB, $ED, $92, $C9
|0BB783| db $22 ; Repeat byte
|0BB784| db $CA
|0BB785| db $0C ; Raw block
|0BB786| db $CB, $BC, $BD, $43, $2F, $B3, $52, $CC
|0BB78E| db $E8, $E6, $AB, $AC, $7C
|0BB793| db $63 ; Increment fill
|0BB794| db $CD
|0BB795| db $0B ; Raw block
|0BB796| db $43, $44, $39, $3A, $C5, $66, $56, $61
|0BB79E| db $61, $B4, $A8, $D1
|0BB7A2| db $62 ; Increment fill
|0BB7A3| db $0F
|0BB7A4| db $0C ; Raw block
|0BB7A5| db $D2, $4A, $4B, $D3, $8B, $D4, $D5, $56
|0BB7AD| db $22, $22, $A8, $D6, $D7
|0BB7B2| db $62 ; Increment fill
|0BB7B3| db $1B
|0BB7B4| db $09 ; Raw block
|0BB7B5| db $D8, $4D, $4E, $D9, $10, $DA, $DB, $6D
|0BB7BD| db $66, $5B
|0BB7BF| db $65 ; Increment fill
|0BB7C0| db $DC
|0BB7C1| db $03 ; Raw block
|0BB7C2| db $BA, $66, $67, $5E
|0BB7C6| db $62 ; Increment fill
|0BB7C7| db $E2
|0BB7C8| db $17 ; Raw block
|0BB7C9| db $0C, $E5, $5D, $B2, $B3, $82, $E5, $F9
|0BB7D1| db $E5, $BC, $1E, $DB, $9D, $9B, $9C, $08
|0BB7D9| db $60, $E6, $5F, $BA, $BB, $A8, $1D, $E5
|0BB7E1| db $23 ; Repeat byte
|0BB7E2| db $9C
|0BB7E3| db $23 ; Repeat byte
|0BB7E4| db $E5
|0BB7E5| db $0B ; Raw block
|0BB7E6| db $02, $E7, $41, $44, $44, $E8, $A1, $B6
|0BB7EE| db $B7, $3B, $B6, $B7
|0BB7F2| db $25 ; Repeat byte
|0BB7F3| db $44
|0BB7F4| db $04 ; Raw block
|0BB7F5| db $48, $E8, $8C, $8D, $EE
|0BB7FA| db $62 ; Increment fill
|0BB7FB| db $09
|0BB7FC| db $01 ; Raw block
|0BB7FD| db $09, $0A
|0BB7FF| db $25 ; Repeat byte
|0BB800| db $4B
|0BB801| db $62 ; Increment fill
|0BB802| db $E9
|0BB803| db $03 ; Raw block
|0BB804| db $49, $45, $07, $08
|0BB808| db $62 ; Increment fill
|0BB809| db $06
|0BB80A| db $FF ; End of Map 29

;===================================================================================================

OverworldMap32_Screen2D_High:
|0BB80B| db $18 ; Raw block
|0BB80C| db $07, $01, $00, $00, $0D, $06, $01, $0D
|0BB814| db $01, $09, $0B, $09, $01, $0D, $0D, $01
|0BB81C| db $09, $01, $06, $00, $0D, $0C, $06, $01
|0BB824| db $0B
|0BB825| db $23 ; Repeat byte
|0BB826| db $02
|0BB827| db $04 ; Raw block
|0BB828| db $0D, $04, $0D, $07, $01
|0BB82D| db $23 ; Repeat byte
|0BB82E| db $0D
|0BB82F| db $03 ; Raw block
|0BB830| db $06, $01, $0D, $06
|0BB834| db $22 ; Repeat byte
|0BB835| db $0D
|0BB836| db $04 ; Raw block
|0BB837| db $03, $03, $0D, $07, $01
|0BB83C| db $22 ; Repeat byte
|0BB83D| db $0D
|0BB83E| db $03 ; Raw block
|0BB83F| db $02, $0D, $0E, $06
|0BB843| db $23 ; Repeat byte
|0BB844| db $0E
|0BB845| db $03 ; Raw block
|0BB846| db $00, $0E, $0E, $07
|0BB84A| db $23 ; Repeat byte
|0BB84B| db $0E
|0BB84C| db $04 ; Raw block
|0BB84D| db $01, $0E, $0E, $02, $02
|0BB852| db $23 ; Repeat byte
|0BB853| db $0E
|0BB854| db $0B ; Raw block
|0BB855| db $02, $02, $07, $06, $01, $01, $06, $06
|0BB85D| db $0E, $0E, $00, $06
|0BB861| db $23 ; Repeat byte
|0BB862| db $0E
|0BB863| db $05 ; Raw block
|0BB864| db $00, $06, $05, $07, $06, $01
|0BB86A| db $22 ; Repeat byte
|0BB86B| db $02
|0BB86C| db $23 ; Repeat byte
|0BB86D| db $0E
|0BB86E| db $24 ; Repeat byte
|0BB86F| db $02
|0BB870| db $03 ; Raw block
|0BB871| db $05, $05, $08, $06
|0BB875| db $2C ; Repeat byte
|0BB876| db $0E
|0BB877| db $01 ; Raw block
|0BB878| db $05, $0C
|0BB87A| db $22 ; Repeat byte
|0BB87B| db $07
|0BB87C| db $25 ; Repeat byte
|0BB87D| db $0E
|0BB87E| db $06 ; Raw block
|0BB87F| db $07, $0E, $07, $07, $09, $07, $05
|0BB886| db $43 ; Repeat word
|0BB887| dw $0805
|0BB889| db $23 ; Repeat byte
|0BB88A| db $0E
|0BB88B| db $04 ; Raw block
|0BB88C| db $07, $0E, $0E, $05, $05
|0BB891| db $26 ; Repeat byte
|0BB892| db $07
|0BB893| db $25 ; Repeat byte
|0BB894| db $0E
|0BB895| db $02 ; Raw block
|0BB896| db $05, $0E, $0E
|0BB899| db $26 ; Repeat byte
|0BB89A| db $05
|0BB89B| db $24 ; Repeat byte
|0BB89C| db $0E
|0BB89D| db $03 ; Raw block
|0BB89E| db $07, $09, $05, $09
|0BB8A2| db $23 ; Repeat byte
|0BB8A3| db $06
|0BB8A4| db $0F ; Raw block
|0BB8A5| db $0E, $0A, $0E, $06, $02, $0E, $06, $02
|0BB8AD| db $07, $0B, $07, $07, $02, $02, $0E, $03
|0BB8B5| db $22 ; Repeat byte
|0BB8B6| db $0E
|0BB8B7| db $00 ; Raw block
|0BB8B8| db $06
|0BB8B9| db $43 ; Repeat word
|0BB8BA| dw $0100
|0BB8BC| db $24 ; Repeat byte
|0BB8BD| db $0E
|0BB8BE| db $08 ; Raw block
|0BB8BF| db $01, $0E, $03, $00, $0E, $0E, $00, $00
|0BB8C7| db $02
|0BB8C8| db $22 ; Repeat byte
|0BB8C9| db $01
|0BB8CA| db $09 ; Raw block
|0BB8CB| db $0E, $03, $0E, $0D, $01, $0B, $01, $00
|0BB8D3| db $00, $07
|0BB8D5| db $22 ; Repeat byte
|0BB8D6| db $00
|0BB8D7| db $22 ; Repeat byte
|0BB8D8| db $01
|0BB8D9| db $02 ; Raw block
|0BB8DA| db $0E, $0B, $0E
|0BB8DD| db $FF ; End of Map 2D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen2D_Low:
|0BB8DE| db $E0, $21 ; EXT Raw block
|0BB8E0| db $4C, $93, $FB, $1D, $EC, $A2, $06, $ED
|0BB8E8| db $06, $D5, $4B, $D5, $06, $EE, $EF, $FC
|0BB8F0| db $DB, $93, $66, $A9, $F0, $ED, $A2, $06
|0BB8F8| db $4B, $58, $59, $59, $5A, $F1, $8E, $F2
|0BB900| db $4C, $93
|0BB902| db $63 ; Increment fill
|0BB903| db $F3
|0BB904| db $03 ; Raw block
|0BB905| db $A2, $06, $F7, $8E
|0BB909| db $62 ; Increment fill
|0BB90A| db $F8
|0BB90B| db $04 ; Raw block
|0BB90C| db $56, $57, $FB, $4C, $93
|0BB911| db $62 ; Increment fill
|0BB912| db $FC
|0BB913| db $03 ; Raw block
|0BB914| db $5E, $FF, $00, $A2
|0BB918| db $63 ; Increment fill
|0BB919| db $01
|0BB91A| db $03 ; Raw block
|0BB91B| db $A1, $05, $06, $4C
|0BB91F| db $63 ; Increment fill
|0BB920| db $07
|0BB921| db $04 ; Raw block
|0BB922| db $1E, $0B, $0C, $5B, $5B
|0BB927| db $62 ; Increment fill
|0BB928| db $0D
|0BB929| db $0D ; Raw block
|0BB92A| db $0D, $5B, $5B, $14, $16, $D9, $A0, $66
|0BB932| db $70, $10, $11, $B2, $66, $12
|0BB938| db $62 ; Increment fill
|0BB939| db $10
|0BB93A| db $05 ; Raw block
|0BB93B| db $FB, $66, $E1, $14, $16, $D9
|0BB941| db $22 ; Repeat byte
|0BB942| db $07
|0BB943| db $63 ; Increment fill
|0BB944| db $13
|0BB945| db $24 ; Repeat byte
|0BB946| db $07
|0BB947| db $03 ; Raw block
|0BB948| db $E0, $E1, $B5, $16
|0BB94C| db $22 ; Repeat byte
|0BB94D| db $17
|0BB94E| db $63 ; Increment fill
|0BB94F| db $18
|0BB950| db $24 ; Repeat byte
|0BB951| db $17
|0BB952| db $12 ; Raw block
|0BB953| db $1C, $E1, $4C, $14, $79, $79, $1D, $1E
|0BB95B| db $19, $1A, $1F, $20, $79, $21, $79, $79
|0BB963| db $36, $20, $E1
|0BB966| db $43 ; Repeat word
|0BB967| dw $AAE1
|0BB969| db $08 ; Raw block
|0BB96A| db $1E, $19, $1A, $22, $20, $23, $24, $AA
|0BB972| db $E1
|0BB973| db $26 ; Repeat byte
|0BB974| db $84
|0BB975| db $02 ; Raw block
|0BB976| db $25, $19, $1A
|0BB979| db $62 ; Increment fill
|0BB97A| db $26
|0BB97B| db $02 ; Raw block
|0BB97C| db $C9, $29, $2A
|0BB97F| db $26 ; Repeat byte
|0BB980| db $6D
|0BB981| db $64 ; Increment fill
|0BB982| db $2B
|0BB983| db $03 ; Raw block
|0BB984| db $3B, $52, $E1, $9D
|0BB988| db $23 ; Repeat byte
|0BB989| db $9C
|0BB98A| db $0F ; Raw block
|0BB98B| db $30, $06, $31, $92, $59, $32, $66, $30
|0BB993| db $3A, $94, $84, $84, $4C, $4C, $33, $86
|0BB99B| db $62 ; Increment fill
|0BB99C| db $34
|0BB99D| db $04 ; Raw block
|0BB99E| db $3E, $FB, $1E, $FB, $41
|0BB9A3| db $64 ; Increment fill
|0BB9A4| db $37
|0BB9A5| db $1E ; Raw block
|0BB9A6| db $EB, $3C, $8D, $1D, $34, $3D, $1D, $AA
|0BB9AE| db $DE, $41, $48, $49, $3B, $4A, $3E, $F7
|0BB9B6| db $06, $57, $E3, $1D, $A9, $41, $1C, $1D
|0BB9BE| db $1D, $52, $53, $6A, $3F, $56, $40
|0BB9C5| db $FF ; End of Map 2D

;===================================================================================================

OverworldMap32_Screen30_High:
|0BB9C6| db $26 ; Repeat byte
|0BB9C7| db $0E
|0BB9C8| db $02 ; Raw block
|0BB9C9| db $01, $01, $0E
|0BB9CC| db $22 ; Repeat byte
|0BB9CD| db $01
|0BB9CE| db $24 ; Repeat byte
|0BB9CF| db $0E
|0BB9D0| db $00 ; Raw block
|0BB9D1| db $04
|0BB9D2| db $22 ; Repeat byte
|0BB9D3| db $01
|0BB9D4| db $01 ; Raw block
|0BB9D5| db $03, $01
|0BB9D7| db $22 ; Repeat byte
|0BB9D8| db $0E
|0BB9D9| db $84 ; Copy past
|0BB9DA| dw $0700
|0BB9DC| db $02 ; Raw block
|0BB9DD| db $0E, $03, $0E
|0BB9E0| db $22 ; Repeat byte
|0BB9E1| db $01
|0BB9E2| db $45 ; Repeat word
|0BB9E3| dw $010E
|0BB9E5| db $29 ; Repeat byte
|0BB9E6| db $0E
|0BB9E7| db $01 ; Raw block
|0BB9E8| db $06, $06
|0BB9EA| db $22 ; Repeat byte
|0BB9EB| db $0E
|0BB9EC| db $00 ; Raw block
|0BB9ED| db $06
|0BB9EE| db $33 ; Repeat byte
|0BB9EF| db $0E
|0BB9F0| db $00 ; Raw block
|0BB9F1| db $02
|0BB9F2| db $2E ; Repeat byte
|0BB9F3| db $0E
|0BB9F4| db $00 ; Raw block
|0BB9F5| db $02
|0BB9F6| db $2E ; Repeat byte
|0BB9F7| db $0E
|0BB9F8| db $00 ; Raw block
|0BB9F9| db $02
|0BB9FA| db $24 ; Repeat byte
|0BB9FB| db $0E
|0BB9FC| db $0A ; Raw block
|0BB9FD| db $07, $0A, $01, $0E, $02, $0A, $0A, $0E
|0BBA05| db $01, $0E, $02
|0BBA08| db $23 ; Repeat byte
|0BBA09| db $0E
|0BBA0A| db $00 ; Raw block
|0BBA0B| db $07
|0BBA0C| db $29 ; Repeat byte
|0BBA0D| db $0E
|0BBA0E| db $00 ; Raw block
|0BBA0F| db $02
|0BBA10| db $22 ; Repeat byte
|0BBA11| db $0E
|0BBA12| db $00 ; Raw block
|0BBA13| db $07
|0BBA14| db $2A ; Repeat byte
|0BBA15| db $0E
|0BBA16| db $00 ; Raw block
|0BBA17| db $02
|0BBA18| db $2C ; Repeat byte
|0BBA19| db $0E
|0BBA1A| db $01 ; Raw block
|0BBA1B| db $07, $01
|0BBA1D| db $3C ; Repeat byte
|0BBA1E| db $0E
|0BBA1F| db $00 ; Raw block
|0BBA20| db $0C
|0BBA21| db $2E ; Repeat byte
|0BBA22| db $0E
|0BBA23| db $00 ; Raw block
|0BBA24| db $0C
|0BBA25| db $2E ; Repeat byte
|0BBA26| db $0E
|0BBA27| db $00 ; Raw block
|0BBA28| db $0C
|0BBA29| db $2E ; Repeat byte
|0BBA2A| db $0E
|0BBA2B| db $02 ; Raw block
|0BBA2C| db $0C, $0E, $0E
|0BBA2F| db $FF ; End of Map 30

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen30_Low:
|0BBA30| db $02 ; Raw block
|0BBA31| db $41, $42, $43
|0BBA34| db $22 ; Repeat byte
|0BBA35| db $44
|0BBA36| db $03 ; Raw block
|0BBA37| db $45, $0A, $0A, $46
|0BBA3B| db $22 ; Repeat byte
|0BBA3C| db $0A
|0BBA3D| db $05 ; Raw block
|0BBA3E| db $47, $48, $42, $49, $4A, $92
|0BBA44| db $22 ; Repeat byte
|0BBA45| db $F8
|0BBA46| db $01 ; Raw block
|0BBA47| db $9C, $15
|0BBA49| db $62 ; Increment fill
|0BBA4A| db $4B
|0BBA4B| db $07 ; Raw block
|0BBA4C| db $15, $15, $4E, $0A, $0A, $4A, $6B, $4F
|0BBA54| db $22 ; Repeat byte
|0BBA55| db $02
|0BBA56| db $06 ; Raw block
|0BBA57| db $50, $22, $51, $20, $52, $22, $53
|0BBA5E| db $22 ; Repeat byte
|0BBA5F| db $54
|0BBA60| db $02 ; Raw block
|0BBA61| db $55, $56, $48
|0BBA64| db $62 ; Increment fill
|0BBA65| db $57
|0BBA66| db $01 ; Raw block
|0BBA67| db $8E, $66
|0BBA69| db $62 ; Increment fill
|0BBA6A| db $5A
|0BBA6B| db $01 ; Raw block
|0BBA6C| db $F5, $5D
|0BBA6E| db $62 ; Increment fill
|0BBA6F| db $57
|0BBA70| db $01 ; Raw block
|0BBA71| db $5E, $48
|0BBA73| db $69 ; Increment fill
|0BBA74| db $5F
|0BBA75| db $83 ; Copy past
|0BBA76| dw $4200
|0BBA78| db $02 ; Raw block
|0BBA79| db $F2, $5F, $5F
|0BBA7C| db $62 ; Increment fill
|0BBA7D| db $69
|0BBA7E| db $00 ; Raw block
|0BBA7F| db $5F
|0BBA80| db $64 ; Increment fill
|0BBA81| db $6C
|0BBA82| db $06 ; Raw block
|0BBA83| db $5F, $69, $71, $6B, $F2, $5F, $5F
|0BBA8A| db $68 ; Increment fill
|0BBA8B| db $72
|0BBA8C| db $00 ; Raw block
|0BBA8D| db $44
|0BBA8E| db $62 ; Increment fill
|0BBA8F| db $7B
|0BBA90| db $01 ; Raw block
|0BBA91| db $F2, $5F
|0BBA93| db $63 ; Increment fill
|0BBA94| db $7E
|0BBA95| db $0F ; Raw block
|0BBA96| db $6F, $08, $13, $82, $01, $08, $08, $83
|0BBA9E| db $15, $84, $F2, $5F, $85, $86, $75, $6F
|0BBAA6| db $64 ; Increment fill
|0BBAA7| db $87
|0BBAA8| db $01 ; Raw block
|0BBAA9| db $88, $88
|0BBAAB| db $62 ; Increment fill
|0BBAAC| db $8C
|0BBAAD| db $05 ; Raw block
|0BBAAE| db $F2, $8F, $85, $90, $6F, $87
|0BBAB4| db $64 ; Increment fill
|0BBAB5| db $91
|0BBAB6| db $00 ; Raw block
|0BBAB7| db $92
|0BBAB8| db $63 ; Increment fill
|0BBAB9| db $96
|0BBABA| db $06 ; Raw block
|0BBABB| db $F2, $5F, $85, $9A, $9B, $88, $9C
|0BBAC2| db $24 ; Repeat byte
|0BBAC3| db $9D
|0BBAC4| db $03 ; Raw block
|0BBAC5| db $9E, $9F, $6F, $02
|0BBAC9| db $62 ; Increment fill
|0BBACA| db $A0
|0BBACB| db $04 ; Raw block
|0BBACC| db $9A, $A3, $88, $9C, $9D
|0BBAD1| db $22 ; Repeat byte
|0BBAD2| db $A4
|0BBAD3| db $04 ; Raw block
|0BBAD4| db $9D, $A5, $A6, $87, $88
|0BBAD9| db $62 ; Increment fill
|0BBADA| db $A7
|0BBADB| db $85 ; Copy past
|0BBADC| dw $B300
|0BBADE| db $06 ; Raw block
|0BBADF| db $AA, $A4, $9D, $AB, $A2, $88, $88
|0BBAE6| db $62 ; Increment fill
|0BBAE7| db $AC
|0BBAE8| db $84 ; Copy past
|0BBAE9| dw $B300
|0BBAEB| db $22 ; Repeat byte
|0BBAEC| db $A4
|0BBAED| db $84 ; Copy past
|0BBAEE| dw $CB00
|0BBAF0| db $01 ; Raw block
|0BBAF1| db $AF, $B0
|0BBAF3| db $84 ; Copy past
|0BBAF4| dw $D200
|0BBAF6| db $24 ; Repeat byte
|0BBAF7| db $9D
|0BBAF8| db $83 ; Copy past
|0BBAF9| dw $CC00
|0BBAFB| db $63 ; Increment fill
|0BBAFC| db $B1
|0BBAFD| db $01 ; Raw block
|0BBAFE| db $A3, $88
|0BBB00| db $64 ; Increment fill
|0BBB01| db $B5
|0BBB02| db $04 ; Raw block
|0BBB03| db $B6, $BA, $A2, $88, $88
|0BBB08| db $FF ; End of Map 30

;===================================================================================================

OverworldMap32_Screen31_High:
|0BBB09| db $2F ; Repeat byte
|0BBB0A| db $0E
|0BBB0B| db $27 ; Repeat byte
|0BBB0C| db $01
|0BBB0D| db $29 ; Repeat byte
|0BBB0E| db $0E
|0BBB0F| db $00 ; Raw block
|0BBB10| db $01
|0BBB11| db $22 ; Repeat byte
|0BBB12| db $0E
|0BBB13| db $01 ; Raw block
|0BBB14| db $01, $01
|0BBB16| db $2D ; Repeat byte
|0BBB17| db $0E
|0BBB18| db $01 ; Raw block
|0BBB19| db $07, $00
|0BBB1B| db $30 ; Repeat byte
|0BBB1C| db $0E
|0BBB1D| db $00 ; Raw block
|0BBB1E| db $02
|0BBB1F| db $3B ; Repeat byte
|0BBB20| db $0E
|0BBB21| db $00 ; Raw block
|0BBB22| db $02
|0BBB23| db $E4, $20 ; EXT Repeat byte
|0BBB25| db $0E
|0BBB26| db $02 ; Raw block
|0BBB27| db $01, $0E, $01
|0BBB2A| db $24 ; Repeat byte
|0BBB2B| db $0E
|0BBB2C| db $00 ; Raw block
|0BBB2D| db $07
|0BBB2E| db $25 ; Repeat byte
|0BBB2F| db $0E
|0BBB30| db $00 ; Raw block
|0BBB31| db $0A
|0BBB32| db $43 ; Repeat word
|0BBB33| dw $0E0A
|0BBB35| db $00 ; Raw block
|0BBB36| db $05
|0BBB37| db $3F ; Repeat byte
|0BBB38| db $0E
|0BBB39| db $00 ; Raw block
|0BBB3A| db $06
|0BBB3B| db $2E ; Repeat byte
|0BBB3C| db $0E
|0BBB3D| db $01 ; Raw block
|0BBB3E| db $01, $01
|0BBB40| db $2F ; Repeat byte
|0BBB41| db $0E
|0BBB42| db $00 ; Raw block
|0BBB43| db $01
|0BBB44| db $3F ; Repeat byte
|0BBB45| db $0E
|0BBB46| db $FF ; End of Map 31

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen31_Low:
|0BBB47| db $02 ; Raw block
|0BBB48| db $BB, $5F, $BB
|0BBB4B| db $2C ; Repeat byte
|0BBB4C| db $5F
|0BBB4D| db $27 ; Repeat byte
|0BBB4E| db $0A
|0BBB4F| db $00 ; Raw block
|0BBB50| db $BC
|0BBB51| db $26 ; Repeat byte
|0BBB52| db $5F
|0BBB53| db $09 ; Raw block
|0BBB54| db $54, $BD, $15, $BE, $54, $BF, $22, $22
|0BBB5C| db $C0, $BC
|0BBB5E| db $25 ; Repeat byte
|0BBB5F| db $5F
|0BBB60| db $09 ; Raw block
|0BBB61| db $C1, $C2, $8D, $C3, $BC, $C4, $AF, $1D
|0BBB69| db $C5, $C6
|0BBB6B| db $25 ; Repeat byte
|0BBB6C| db $5F
|0BBB6D| db $03 ; Raw block
|0BBB6E| db $B2, $A3, $88, $8C
|0BBB72| db $62 ; Increment fill
|0BBB73| db $C7
|0BBB74| db $02 ; Raw block
|0BBB75| db $C9, $CA, $69
|0BBB78| db $25 ; Repeat byte
|0BBB79| db $5F
|0BBB7A| db $03 ; Raw block
|0BBB7B| db $B2, $A3, $88, $88
|0BBB7F| db $65 ; Increment fill
|0BBB80| db $CB
|0BBB81| db $25 ; Repeat byte
|0BBB82| db $5F
|0BBB83| db $06 ; Raw block
|0BBB84| db $D1, $D2, $88, $D3, $CB, $D4, $69
|0BBB8B| db $28 ; Repeat byte
|0BBB8C| db $5F
|0BBB8D| db $03 ; Raw block
|0BBB8E| db $D5, $D6, $88, $88
|0BBB92| db $65 ; Increment fill
|0BBB93| db $D7
|0BBB94| db $0A ; Raw block
|0BBB95| db $44, $DD, $5F, $DE, $5F, $5F, $DF, $E0
|0BBB9D| db $D3, $88, $8C
|0BBBA0| db $62 ; Increment fill
|0BBBA1| db $E1
|0BBBA2| db $E0, $27 ; EXT Raw block
|0BBBA4| db $F8, $E4, $F8, $E5, $BC, $5F, $5F, $DE
|0BBBAC| db $6F, $E6, $88, $E7, $88, $8C, $E8, $08
|0BBBB4| db $08, $E9, $08, $83, $B1, $BC, $BB, $5F
|0BBBBC| db $87, $88, $D3, $EA, $EA, $88, $EB, $88
|0BBBC4| db $D3, $88, $EC, $8C, $ED, $EE, $5F, $5F
|0BBBCC| db $25 ; Repeat byte
|0BBBCD| db $88
|0BBBCE| db $00 ; Raw block
|0BBBCF| db $EF
|0BBBD0| db $22 ; Repeat byte
|0BBBD1| db $88
|0BBBD2| db $0E ; Raw block
|0BBBD3| db $D3, $88, $CB, $12, $F0, $BB, $88, $88
|0BBBDB| db $EC, $88, $88, $E7, $88, $88, $E7
|0BBBE2| db $22 ; Repeat byte
|0BBBE3| db $88
|0BBBE4| db $03 ; Raw block
|0BBBE5| db $F1, $03, $17, $44
|0BBBE9| db $2C ; Repeat byte
|0BBBEA| db $88
|0BBBEB| db $04 ; Raw block
|0BBBEC| db $F2, $F3, $02, $88, $F4
|0BBBF1| db $22 ; Repeat byte
|0BBBF2| db $88
|0BBBF3| db $03 ; Raw block
|0BBBF4| db $EC, $88, $88, $EC
|0BBBF8| db $24 ; Repeat byte
|0BBBF9| db $88
|0BBBFA| db $03 ; Raw block
|0BBBFB| db $F5, $5F, $88, $F6
|0BBBFF| db $24 ; Repeat byte
|0BBC00| db $88
|0BBC01| db $00 ; Raw block
|0BBC02| db $EC
|0BBC03| db $25 ; Repeat byte
|0BBC04| db $88
|0BBC05| db $01 ; Raw block
|0BBC06| db $F5, $5F
|0BBC08| db $FF ; End of Map 31

;===================================================================================================

OverworldMap32_Screen32_High:
|0BBC09| db $03 ; Raw block
|0BBC0A| db $00, $01, $07, $01
|0BBC0E| db $22 ; Repeat byte
|0BBC0F| db $08
|0BBC10| db $08 ; Raw block
|0BBC11| db $02, $0E, $04, $08, $08, $04, $08, $08
|0BBC19| db $04
|0BBC1A| db $83 ; Copy past
|0BBC1B| dw $0000
|0BBC1D| db $22 ; Repeat byte
|0BBC1E| db $08
|0BBC1F| db $00 ; Raw block
|0BBC20| db $06
|0BBC21| db $86 ; Copy past
|0BBC22| dw $0800
|0BBC24| db $22 ; Repeat byte
|0BBC25| db $04
|0BBC26| db $06 ; Raw block
|0BBC27| db $07, $06, $08, $08, $01, $00, $01
|0BBC2E| db $26 ; Repeat byte
|0BBC2F| db $08
|0BBC30| db $0A ; Raw block
|0BBC31| db $01, $01, $0C, $06, $00, $01, $01, $06
|0BBC39| db $01, $01, $06
|0BBC3C| db $83 ; Copy past
|0BBC3D| dw $0E00
|0BBC3F| db $00 ; Raw block
|0BBC40| db $03
|0BBC41| db $23 ; Repeat byte
|0BBC42| db $0E
|0BBC43| db $1F ; Raw block
|0BBC44| db $06, $03, $04, $00, $03, $04, $0E, $01
|0BBC4C| db $00, $00, $01, $06, $01, $02, $02, $0E
|0BBC54| db $0E, $0F, $0F, $00, $0C, $00, $07, $03
|0BBC5C| db $06, $01, $06, $07, $01, $01, $02, $02
|0BBC64| db $26 ; Repeat byte
|0BBC65| db $0F
|0BBC66| db $01 ; Raw block
|0BBC67| db $07, $0F
|0BBC69| db $22 ; Repeat byte
|0BBC6A| db $00
|0BBC6B| db $01 ; Raw block
|0BBC6C| db $0E, $01
|0BBC6E| db $23 ; Repeat byte
|0BBC6F| db $0F
|0BBC70| db $22 ; Repeat byte
|0BBC71| db $02
|0BBC72| db $02 ; Raw block
|0BBC73| db $0F, $0F, $06
|0BBC76| db $83 ; Copy past
|0BBC77| dw $7400
|0BBC79| db $24 ; Repeat byte
|0BBC7A| db $0F
|0BBC7B| db $00 ; Raw block
|0BBC7C| db $05
|0BBC7D| db $83 ; Copy past
|0BBC7E| dw $7900
|0BBC80| db $05 ; Raw block
|0BBC81| db $00, $00, $01, $01, $00, $06
|0BBC87| db $22 ; Repeat byte
|0BBC88| db $0F
|0BBC89| db $01 ; Raw block
|0BBC8A| db $0C, $05
|0BBC8C| db $23 ; Repeat byte
|0BBC8D| db $0F
|0BBC8E| db $01 ; Raw block
|0BBC8F| db $03, $03
|0BBC91| db $83 ; Copy past
|0BBC92| dw $8B00
|0BBC94| db $02 ; Raw block
|0BBC95| db $02, $0F, $0C
|0BBC98| db $24 ; Repeat byte
|0BBC99| db $05
|0BBC9A| db $01 ; Raw block
|0BBC9B| db $0F, $0F
|0BBC9D| db $23 ; Repeat byte
|0BBC9E| db $03
|0BBC9F| db $03 ; Raw block
|0BBCA0| db $04, $06, $00, $0F
|0BBCA4| db $25 ; Repeat byte
|0BBCA5| db $05
|0BBCA6| db $0A ; Raw block
|0BBCA7| db $0F, $05, $0F, $0E, $03, $03, $01, $01
|0BBCAF| db $02, $0F, $0F
|0BBCB2| db $23 ; Repeat byte
|0BBCB3| db $05
|0BBCB4| db $09 ; Raw block
|0BBCB5| db $0F, $0E, $0C, $01, $03, $01, $00, $03
|0BBCBD| db $03, $00
|0BBCBF| db $22 ; Repeat byte
|0BBCC0| db $0F
|0BBCC1| db $01 ; Raw block
|0BBCC2| db $05, $05
|0BBCC4| db $26 ; Repeat byte
|0BBCC5| db $0F
|0BBCC6| db $03 ; Raw block
|0BBCC7| db $0B, $03, $00, $03
|0BBCCB| db $26 ; Repeat byte
|0BBCCC| db $0F
|0BBCCD| db $00 ; Raw block
|0BBCCE| db $01
|0BBCCF| db $24 ; Repeat byte
|0BBCD0| db $0F
|0BBCD1| db $22 ; Repeat byte
|0BBCD2| db $02
|0BBCD3| db $03 ; Raw block
|0BBCD4| db $0E, $0F, $0F, $0B
|0BBCD8| db $83 ; Copy past
|0BBCD9| dw $7000
|0BBCDB| db $00 ; Raw block
|0BBCDC| db $01
|0BBCDD| db $43 ; Repeat word
|0BBCDE| dw $0F0B
|0BBCE0| db $02 ; Raw block
|0BBCE1| db $0F, $01, $0A
|0BBCE4| db $FF ; End of Map 32

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen32_Low:
|0BBCE5| db $E0, $28 ; EXT Raw block
|0BBCE7| db $83, $1C, $41, $4D, $43, $44, $9A, $DE
|0BBCEF| db $F7, $4A, $99, $44, $4A, $99, $44, $4A
|0BBCF7| db $8C, $29, $41, $57, $4A, $4B, $A0, $66
|0BBCFF| db $F8, $39, $9F, $4B, $39, $9F, $4B, $39
|0BBD07| db $07, $60, $41, $66, $4D, $4E, $62, $1D
|0BBD0F| db $61
|0BBD10| db $62 ; Increment fill
|0BBD11| db $A4
|0BBD12| db $13 ; Raw block
|0BBD13| db $9C, $A5, $A6, $9C, $1B, $1C, $8A, $8F
|0BBD1B| db $1D, $67, $68, $B3, $67, $68, $70, $2D
|0BBD23| db $56, $B6, $26, $D5
|0BBD27| db $63 ; Increment fill
|0BBD28| db $F9
|0BBD29| db $1F ; Raw block
|0BBD2A| db $8F, $DB, $25, $1F, $DB, $25, $FD, $1E
|0BBD32| db $EE, $09, $2F, $66, $EB, $D1, $D2, $FE
|0BBD3A| db $FF, $00, $01, $1F, $29, $1C, $C5, $FF
|0BBD42| db $2D, $0E, $2B, $2B, $06, $06, $DC, $DD
|0BBD4A| db $66 ; Increment fill
|0BBD4B| db $02
|0BBD4C| db $01 ; Raw block
|0BBD4D| db $C5, $09
|0BBD4F| db $22 ; Repeat byte
|0BBD50| db $A1
|0BBD51| db $01 ; Raw block
|0BBD52| db $40, $06
|0BBD54| db $63 ; Increment fill
|0BBD55| db $0A
|0BBD56| db $22 ; Repeat byte
|0BBD57| db $5B
|0BBD58| db $06 ; Raw block
|0BBD59| db $0E, $0F, $9C, $10, $11, $5A, $5B
|0BBD60| db $64 ; Increment fill
|0BBD61| db $12
|0BBD62| db $0A ; Raw block
|0BBD63| db $B8, $17, $18, $66, $19, $A5, $1D, $61
|0BBD6B| db $62, $B2, $66
|0BBD6E| db $62 ; Increment fill
|0BBD6F| db $1A
|0BBD70| db $01 ; Raw block
|0BBD71| db $91, $FB
|0BBD73| db $63 ; Increment fill
|0BBD74| db $1D
|0BBD75| db $08 ; Raw block
|0BBD76| db $44, $86, $1D, $67, $68, $1D, $DE, $21
|0BBD7E| db $91
|0BBD7F| db $24 ; Repeat byte
|0BBD80| db $FB
|0BBD81| db $09 ; Raw block
|0BBD82| db $22, $23, $8C, $8D, $86, $DB, $25, $66
|0BBD8A| db $1D, $24
|0BBD8C| db $25 ; Repeat byte
|0BBD8D| db $FB
|0BBD8E| db $0A ; Raw block
|0BBD8F| db $25, $9D, $26, $3C, $8D, $E2, $4B, $1E
|0BBD97| db $DE, $24, $27
|0BBD9A| db $23 ; Repeat byte
|0BBD9B| db $FB
|0BBD9C| db $10 ; Raw block
|0BBD9D| db $28, $F5, $ED, $06, $63, $E3, $1D, $FF
|0BBDA5| db $FF, $1C, $29, $2A, $27, $FB, $FB, $28
|0BBDAD| db $25
|0BBDAE| db $64 ; Increment fill
|0BBDAF| db $2B
|0BBDB0| db $0B ; Raw block
|0BBDB1| db $46, $E2, $1D, $D5, $30, $29, $31, $32
|0BBDB9| db $32, $33, $2B, $69
|0BBDBD| db $64 ; Increment fill
|0BBDBE| db $34
|0BBDBF| db $22 ; Repeat byte
|0BBDC0| db $4C
|0BBDC1| db $0F ; Raw block
|0BBDC2| db $3C, $30, $39, $4B, $40, $06, $3A, $3B
|0BBDCA| db $6A, $4D, $3C, $4B, $3D, $3E, $EB, $79
|0BBDD2| db $FF ; End of Map 32

;===================================================================================================

OverworldMap32_Screen35_High:
|0BBDD3| db $0D ; Raw block
|0BBDD4| db $0D, $0B, $03, $01, $00, $00, $07, $00
|0BBDDC| db $00, $06, $03, $03, $0F, $0F
|0BBDE2| db $25 ; Repeat byte
|0BBDE3| db $03
|0BBDE4| db $00 ; Raw block
|0BBDE5| db $00
|0BBDE6| db $44 ; Repeat word
|0BBDE7| dw $0706
|0BBDE9| db $01 ; Raw block
|0BBDEA| db $03, $03
|0BBDEC| db $26 ; Repeat byte
|0BBDED| db $0F
|0BBDEE| db $08 ; Raw block
|0BBDEF| db $03, $00, $0F, $0F, $00, $02, $0F, $00
|0BBDF7| db $03
|0BBDF8| db $22 ; Repeat byte
|0BBDF9| db $0F
|0BBDFA| db $19 ; Raw block
|0BBDFB| db $01, $0F, $07, $03, $03, $0F, $07, $0F
|0BBE03| db $0F, $07, $09, $0C, $0F, $05, $04, $0F
|0BBE0B| db $0F, $03, $02, $00, $00, $0F, $07, $0F
|0BBE13| db $06, $00
|0BBE15| db $22 ; Repeat byte
|0BBE16| db $0F
|0BBE17| db $03 ; Raw block
|0BBE18| db $02, $04, $0C, $06
|0BBE1C| db $24 ; Repeat byte
|0BBE1D| db $0F
|0BBE1E| db $83 ; Copy past
|0BBE1F| dw $3D00
|0BBE21| db $22 ; Repeat byte
|0BBE22| db $0F
|0BBE23| db $02 ; Raw block
|0BBE24| db $02, $07, $05
|0BBE27| db $27 ; Repeat byte
|0BBE28| db $0F
|0BBE29| db $00 ; Raw block
|0BBE2A| db $02
|0BBE2B| db $23 ; Repeat byte
|0BBE2C| db $0F
|0BBE2D| db $03 ; Raw block
|0BBE2E| db $07, $0F, $0F, $05
|0BBE32| db $23 ; Repeat byte
|0BBE33| db $0F
|0BBE34| db $03 ; Raw block
|0BBE35| db $03, $0F, $02, $05
|0BBE39| db $83 ; Copy past
|0BBE3A| dw $6C00
|0BBE3C| db $02 ; Raw block
|0BBE3D| db $09, $07, $08
|0BBE40| db $23 ; Repeat byte
|0BBE41| db $0F
|0BBE42| db $06 ; Raw block
|0BBE43| db $08, $08, $0F, $07, $07, $0E, $0F
|0BBE4A| db $83 ; Copy past
|0BBE4B| dw $8500
|0BBE4D| db $04 ; Raw block
|0BBE4E| db $09, $0C, $0F, $0D, $0F
|0BBE53| db $83 ; Copy past
|0BBE54| dw $4200
|0BBE56| db $01 ; Raw block
|0BBE57| db $0E, $05
|0BBE59| db $25 ; Repeat byte
|0BBE5A| db $0F
|0BBE5B| db $02 ; Raw block
|0BBE5C| db $09, $0F, $0B
|0BBE5F| db $84 ; Copy past
|0BBE60| dw $8200
|0BBE62| db $83 ; Copy past
|0BBE63| dw $6A00
|0BBE65| db $04 ; Raw block
|0BBE66| db $05, $0F, $06, $0F, $05
|0BBE6B| db $22 ; Repeat byte
|0BBE6C| db $0F
|0BBE6D| db $04 ; Raw block
|0BBE6E| db $00, $00, $0F, $08, $09
|0BBE73| db $83 ; Copy past
|0BBE74| dw $6E00
|0BBE76| db $1D ; Raw block
|0BBE77| db $0C, $0D, $0F, $09, $0F, $07, $02, $00
|0BBE7F| db $03, $02, $04, $05, $09, $07, $05, $07
|0BBE87| db $02, $07, $05, $05, $0F, $02, $05, $01
|0BBE8F| db $0D, $0F, $05, $07, $05, $08
|0BBE95| db $23 ; Repeat byte
|0BBE96| db $07
|0BBE97| db $0A ; Raw block
|0BBE98| db $05, $08, $0F, $0F, $04, $04, $0D, $06
|0BBEA0| db $05, $07, $05
|0BBEA3| db $22 ; Repeat byte
|0BBEA4| db $0F
|0BBEA5| db $0A ; Raw block
|0BBEA6| db $09, $05, $0F, $0C, $0F, $0F, $02, $01
|0BBEAE| db $03, $00, $0F
|0BBEB1| db $83 ; Copy past
|0BBEB2| dw $5D00
|0BBEB4| db $00 ; Raw block
|0BBEB5| db $05
|0BBEB6| db $23 ; Repeat byte
|0BBEB7| db $0F
|0BBEB8| db $FF ; End of Map 35

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen35_Low:
|0BBEB9| db $0E ; Raw block
|0BBEBA| db $4B, $56, $63, $E3, $1D, $1C, $41, $1D
|0BBEC2| db $1D, $66, $50, $51, $3F, $3F, $52
|0BBEC9| db $22 ; Repeat byte
|0BBECA| db $20
|0BBECB| db $09 ; Raw block
|0BBECC| db $94, $95, $1D, $8B, $47, $9C, $04, $8F
|0BBED4| db $56, $57
|0BBED6| db $64 ; Increment fill
|0BBED7| db $40
|0BBED8| db $0A ; Raw block
|0BBED9| db $44, $45, $9D, $1D, $46, $47, $1D, $5E
|0BBEE1| db $48, $1D, $56
|0BBEE4| db $62 ; Increment fill
|0BBEE5| db $49
|0BBEE6| db $19 ; Raw block
|0BBEE7| db $02, $4C, $6F, $BB, $A8, $4D, $41, $4E
|0BBEEF| db $4F, $09, $B2, $39, $50, $0C, $8A, $51
|0BBEF7| db $52, $63, $86, $1D, $1D, $4D, $41, $4E
|0BBEFF| db $3E, $1D
|0BBF01| db $62 ; Increment fill
|0BBF02| db $53
|0BBF03| db $03 ; Raw block
|0BBF04| db $08, $90, $74, $A0
|0BBF08| db $64 ; Increment fill
|0BBF09| db $56
|0BBF0A| db $03 ; Raw block
|0BBF0B| db $37, $5B, $5C, $B3
|0BBF0F| db $62 ; Increment fill
|0BBF10| db $5D
|0BBF11| db $02 ; Raw block
|0BBF12| db $FB, $1B, $9F
|0BBF15| db $65 ; Increment fill
|0BBF16| db $60
|0BBF17| db $02 ; Raw block
|0BBF18| db $5B, $66, $79
|0BBF1B| db $63 ; Increment fill
|0BBF1C| db $67
|0BBF1D| db $04 ; Raw block
|0BBF1E| db $79, $6B, $6C, $BD, $61
|0BBF23| db $62 ; Increment fill
|0BBF24| db $6D
|0BBF25| db $0A ; Raw block
|0BBF26| db $FF, $66, $79, $99, $31, $70, $71, $E1
|0BBF2E| db $36, $36, $AA
|0BBF31| db $63 ; Increment fill
|0BBF32| db $72
|0BBF33| db $15 ; Raw block
|0BBF34| db $2D, $2D, $76, $1E, $18, $23, $77, $78
|0BBF3C| db $83, $84, $27, $52, $4C, $79, $9E, $7A
|0BBF44| db $1D, $1D, $7B, $8E, $23, $BC
|0BBF4A| db $65 ; Increment fill
|0BBF4B| db $7C
|0BBF4C| db $E0, $5C ; EXT Raw block
|0BBF4E| db $52, $82, $56, $83, $2D, $2D, $84, $8E
|0BBF56| db $85, $86, $4C, $87, $FB, $88, $05, $89
|0BBF5E| db $C5, $8A, $4C, $8B, $1D, $1D, $8C, $C0
|0BBF66| db $52, $8D, $97, $8E, $8F, $AD, $78, $90
|0BBF6E| db $83, $91, $6F, $7A, $1D, $FF, $30, $F3
|0BBF76| db $DF, $36, $20, $AB, $3F, $FB, $1B, $9F
|0BBF7E| db $E1, $61, $86, $46, $F2, $B0, $92, $6F
|0BBF86| db $8E, $E1, $AA, $20, $44, $79, $31, $E1
|0BBF8E| db $AA, $61, $93, $B2, $7B, $B9, $3A, $6F
|0BBF96| db $8E, $E1, $70, $60, $94, $90, $E1, $95
|0BBF9E| db $4C, $61, $96, $02, $22, $A8, $1C, $97
|0BBFA6| db $8E, $E1, $98, $99, $A4
|0BBFAB| db $63 ; Increment fill
|0BBFAC| db $9A
|0BBFAD| db $FF ; End of Map 35

;===================================================================================================

OverworldMap32_Screen36_High:
|0BBFAE| db $17 ; Raw block
|0BBFAF| db $03, $06, $0F, $03, $03, $01, $0B, $02
|0BBFB7| db $0F, $07, $05, $07, $08, $0F, $02, $02
|0BBFBF| db $0F, $03, $07, $0F, $0F, $01, $07, $06
|0BBFC7| db $84 ; Copy past
|0BBFC8| dw $0800
|0BBFCA| db $04 ; Raw block
|0BBFCB| db $01, $02, $02, $0F, $0F
|0BBFD0| db $23 ; Repeat byte
|0BBFD1| db $01
|0BBFD2| db $09 ; Raw block
|0BBFD3| db $0F, $0E, $0F, $07, $05, $09, $02, $0F
|0BBFDB| db $02, $02
|0BBFDD| db $27 ; Repeat byte
|0BBFDE| db $0F
|0BBFDF| db $14 ; Raw block
|0BBFE0| db $05, $0F, $05, $09, $0F, $01, $02, $02
|0BBFE8| db $07, $01, $0F, $06, $06, $0F, $01, $05
|0BBFF0| db $07, $07, $04, $01, $06
|0BBFF5| db $83 ; Copy past
|0BBFF6| dw $1D00
|0BBFF8| db $00 ; Raw block
|0BBFF9| db $09
|0BBFFA| db $24 ; Repeat byte
|0BBFFB| db $05
|0BBFFC| db $22 ; Repeat byte
|0BBFFD| db $07
|0BBFFE| db $01 ; Raw block
|0BBFFF| db $09, $06
|0BC001| db $62 ; Increment fill
|0BC002| db $00
|0BC003| db $22 ; Repeat byte
|0BC004| db $0F
|0BC005| db $00 ; Raw block
|0BC006| db $05
|0BC007| db $43 ; Repeat word
|0BC008| dw $0905
|0BC00A| db $06 ; Raw block
|0BC00B| db $08, $0F, $07, $07, $01, $04, $01
|0BC012| db $22 ; Repeat byte
|0BC013| db $0F
|0BC014| db $01 ; Raw block
|0BC015| db $05, $07
|0BC017| db $22 ; Repeat byte
|0BC018| db $05
|0BC019| db $06 ; Raw block
|0BC01A| db $09, $07, $07, $05, $07, $07, $0F
|0BC021| db $43 ; Repeat word
|0BC022| dw $050F
|0BC024| db $43 ; Repeat word
|0BC025| dw $0709
|0BC027| db $08 ; Raw block
|0BC028| db $05, $07, $05, $09, $05, $0F, $07, $0F
|0BC030| db $05
|0BC031| db $85 ; Copy past
|0BC032| dw $6000
|0BC034| db $23 ; Repeat byte
|0BC035| db $0F
|0BC036| db $0A ; Raw block
|0BC037| db $09, $05, $05, $07, $05, $0B, $0F, $02
|0BC03F| db $09, $09, $05
|0BC042| db $24 ; Repeat byte
|0BC043| db $0F
|0BC044| db $00 ; Raw block
|0BC045| db $07
|0BC046| db $23 ; Repeat byte
|0BC047| db $05
|0BC048| db $0B ; Raw block
|0BC049| db $07, $0F, $02, $05, $05, $0F, $01, $0F
|0BC051| db $0F, $06, $0D, $0F
|0BC055| db $22 ; Repeat byte
|0BC056| db $07
|0BC057| db $05 ; Raw block
|0BC058| db $05, $07, $0F, $0F, $07, $07
|0BC05E| db $44 ; Repeat word
|0BC05F| dw $0F01
|0BC061| db $04 ; Raw block
|0BC062| db $01, $0F, $0F, $07, $08
|0BC067| db $84 ; Copy past
|0BC068| dw $7A00
|0BC06A| db $03 ; Raw block
|0BC06B| db $07, $0F, $01, $02
|0BC06F| db $23 ; Repeat byte
|0BC070| db $01
|0BC071| db $00 ; Raw block
|0BC072| db $0F
|0BC073| db $22 ; Repeat byte
|0BC074| db $05
|0BC075| db $00 ; Raw block
|0BC076| db $07
|0BC077| db $83 ; Copy past
|0BC078| dw $C700
|0BC07A| db $03 ; Raw block
|0BC07B| db $0F, $02, $06, $01
|0BC07F| db $83 ; Copy past
|0BC080| dw $5C00
|0BC082| db $43 ; Repeat word
|0BC083| dw $0705
|0BC085| db $83 ; Copy past
|0BC086| dw $6F00
|0BC088| db $0D ; Raw block
|0BC089| db $03, $00, $06, $05, $06, $00, $00, $07
|0BC091| db $05, $0F, $07, $0B, $0F, $01
|0BC097| db $FF ; End of Map 36

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen36_Low:
|0BC098| db $18 ; Raw block
|0BC099| db $21, $A2, $4C, $20, $20, $0C, $4B, $DC
|0BC0A1| db $61, $8E, $E1, $6E, $B7, $9E, $82, $82
|0BC0A9| db $9F, $52, $6F, $43, $43, $17, $0E, $AA
|0BC0B1| db $A0
|0BC0B2| db $83 ; Copy past
|0BC0B3| dw $0900
|0BC0B5| db $12 ; Raw block
|0BC0B6| db $77, $82, $82, $A1, $42, $ED, $02, $02
|0BC0BE| db $03, $45, $56, $A2, $13, $E2, $15, $41
|0BC0C6| db $9E, $82, $82
|0BC0C9| db $62 ; Increment fill
|0BC0CA| db $A3
|0BC0CB| db $E0, $2B ; EXT Raw block
|0BC0CD| db $3F, $3F, $A6, $A7, $A2, $99, $A8, $EE
|0BC0D5| db $1B, $A9, $77, $82, $82, $1C, $09, $AA
|0BC0DD| db $A0, $A0, $AB, $FD, $99, $1F, $32, $FA
|0BC0E5| db $CC, $66, $77, $82, $82, $AC, $F7, $9F
|0BC0ED| db $E1, $E1, $AB, $AC, $18, $36, $6E, $B7
|0BC0F5| db $66, $A9, $77, $82
|0BC0F9| db $62 ; Increment fill
|0BC0FA| db $AD
|0BC0FB| db $E0, $31 ; EXT Raw block
|0BC0FD| db $E1, $E1, $36, $E1, $9D, $AA, $B0, $37
|0BC105| db $38, $F0, $C2, $77, $AD, $B1, $B2, $E1
|0BC10D| db $89, $E1, $E1, $E0, $90, $3E, $36, $AB
|0BC115| db $3F, $28, $B3, $B4, $63, $B5, $E1, $36
|0BC11D| db $36, $9D, $36, $E1, $20, $E1, $36, $E1
|0BC125| db $B6, $30, $B7, $A2, $B8, $B9, $E1, $E1
|0BC12D| db $0B, $E2
|0BC12F| db $22 ; Repeat byte
|0BC130| db $BA
|0BC131| db $0B ; Raw block
|0BC132| db $BB, $36, $E1, $E1, $20, $E1, $D9, $BC
|0BC13A| db $82, $36, $36, $E2
|0BC13E| db $62 ; Increment fill
|0BC13F| db $BD
|0BC140| db $02 ; Raw block
|0BC141| db $BF, $C0, $43
|0BC144| db $23 ; Repeat byte
|0BC145| db $E1
|0BC146| db $E0, $52 ; EXT Raw block
|0BC148| db $4C, $C1, $82, $E1, $E2, $BD, $49, $C2
|0BC150| db $C3, $A3, $9E, $C4, $43, $89, $20, $E1
|0BC158| db $4C, $C1, $C5, $20, $32, $53, $C6, $F7
|0BC160| db $C7, $0B, $0C, $C8, $C9, $54, $AA, $36
|0BC168| db $4C, $C1, $CA, $E1, $6E, $CB, $FD, $02
|0BC170| db $20, $23, $09, $FD, $CC, $C5, $E1, $E1
|0BC178| db $32, $53, $CD, $CE, $6E, $CF, $04, $66
|0BC180| db $4B, $1D, $1F, $04, $D0, $C5, $36, $E1
|0BC188| db $37, $D1, $D2, $E1, $6E, $A0, $1D, $3A
|0BC190| db $76, $3A, $1D, $1D, $5B, $C5, $D3, $3E
|0BC198| db $D9, $BC, $25
|0BC19B| db $FF ; End of Map 36

;===================================================================================================

OverworldMap32_Screen38_High:
|0BC19C| db $02 ; Raw block
|0BC19D| db $0F, $0E, $0F
|0BC1A0| db $24 ; Repeat byte
|0BC1A1| db $0E
|0BC1A2| db $22 ; Repeat byte
|0BC1A3| db $0F
|0BC1A4| db $02 ; Raw block
|0BC1A5| db $0E, $0F, $0F
|0BC1A8| db $22 ; Repeat byte
|0BC1A9| db $0E
|0BC1AA| db $22 ; Repeat byte
|0BC1AB| db $0F
|0BC1AC| db $24 ; Repeat byte
|0BC1AD| db $0E
|0BC1AE| db $23 ; Repeat byte
|0BC1AF| db $0F
|0BC1B0| db $22 ; Repeat byte
|0BC1B1| db $0E
|0BC1B2| db $83 ; Copy past
|0BC1B3| dw $0A00
|0BC1B5| db $26 ; Repeat byte
|0BC1B6| db $0E
|0BC1B7| db $00 ; Raw block
|0BC1B8| db $0A
|0BC1B9| db $25 ; Repeat byte
|0BC1BA| db $0E
|0BC1BB| db $00 ; Raw block
|0BC1BC| db $0F
|0BC1BD| db $2D ; Repeat byte
|0BC1BE| db $0E
|0BC1BF| db $01 ; Raw block
|0BC1C0| db $0F, $0F
|0BC1C2| db $2D ; Repeat byte
|0BC1C3| db $0E
|0BC1C4| db $22 ; Repeat byte
|0BC1C5| db $0F
|0BC1C6| db $2C ; Repeat byte
|0BC1C7| db $0E
|0BC1C8| db $02 ; Raw block
|0BC1C9| db $0F, $0E, $0F
|0BC1CC| db $2B ; Repeat byte
|0BC1CD| db $0E
|0BC1CE| db $22 ; Repeat byte
|0BC1CF| db $0F
|0BC1D0| db $2C ; Repeat byte
|0BC1D1| db $0E
|0BC1D2| db $01 ; Raw block
|0BC1D3| db $0F, $0F
|0BC1D5| db $2D ; Repeat byte
|0BC1D6| db $0E
|0BC1D7| db $00 ; Raw block
|0BC1D8| db $02
|0BC1D9| db $2E ; Repeat byte
|0BC1DA| db $0E
|0BC1DB| db $00 ; Raw block
|0BC1DC| db $02
|0BC1DD| db $2E ; Repeat byte
|0BC1DE| db $0E
|0BC1DF| db $22 ; Repeat byte
|0BC1E0| db $0F
|0BC1E1| db $2A ; Repeat byte
|0BC1E2| db $0E
|0BC1E3| db $22 ; Repeat byte
|0BC1E4| db $0F
|0BC1E5| db $00 ; Raw block
|0BC1E6| db $0C
|0BC1E7| db $25 ; Repeat byte
|0BC1E8| db $0F
|0BC1E9| db $25 ; Repeat byte
|0BC1EA| db $0E
|0BC1EB| db $23 ; Repeat byte
|0BC1EC| db $0F
|0BC1ED| db $02 ; Raw block
|0BC1EE| db $03, $00, $00
|0BC1F1| db $83 ; Copy past
|0BC1F2| dw $C000
|0BC1F4| db $01 ; Raw block
|0BC1F5| db $0E, $0E
|0BC1F7| db $27 ; Repeat byte
|0BC1F8| db $0F
|0BC1F9| db $04 ; Raw block
|0BC1FA| db $06, $0F, $0F, $00, $0C
|0BC1FF| db $27 ; Repeat byte
|0BC200| db $10
|0BC201| db $01 ; Raw block
|0BC202| db $0E, $0F
|0BC204| db $28 ; Repeat byte
|0BC205| db $10
|0BC206| db $24 ; Repeat byte
|0BC207| db $0E
|0BC208| db $FF ; End of Map 38

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen38_Low:
|0BC209| db $04 ; Raw block
|0BC20A| db $D4, $B2, $D5, $B2, $A3
|0BC20F| db $22 ; Repeat byte
|0BC210| db $88
|0BC211| db $62 ; Increment fill
|0BC212| db $D6
|0BC213| db $05 ; Raw block
|0BC214| db $88, $D9, $DA, $88, $88, $AF
|0BC21A| db $62 ; Increment fill
|0BC21B| db $DB
|0BC21C| db $00 ; Raw block
|0BC21D| db $A3
|0BC21E| db $23 ; Repeat byte
|0BC21F| db $88
|0BC220| db $63 ; Increment fill
|0BC221| db $DE
|0BC222| db $07 ; Raw block
|0BC223| db $87, $88, $88, $E2, $C2, $E3, $E4, $A3
|0BC22B| db $23 ; Repeat byte
|0BC22C| db $88
|0BC22D| db $03 ; Raw block
|0BC22E| db $8C, $E8, $08, $87
|0BC232| db $22 ; Repeat byte
|0BC233| db $88
|0BC234| db $04 ; Raw block
|0BC235| db $B2, $A3, $E5, $B2, $A3
|0BC23A| db $2A ; Repeat byte
|0BC23B| db $88
|0BC23C| db $04 ; Raw block
|0BC23D| db $B2, $E6, $E7, $B2, $A3
|0BC242| db $2A ; Repeat byte
|0BC243| db $88
|0BC244| db $04 ; Raw block
|0BC245| db $B2, $E8, $E9, $DB, $D2
|0BC24A| db $2A ; Repeat byte
|0BC24B| db $88
|0BC24C| db $04 ; Raw block
|0BC24D| db $B2, $EA, $4A, $EB, $D6
|0BC252| db $2A ; Repeat byte
|0BC253| db $88
|0BC254| db $03 ; Raw block
|0BC255| db $DB, $EC, $EB, $D6
|0BC259| db $2B ; Repeat byte
|0BC25A| db $88
|0BC25B| db $02 ; Raw block
|0BC25C| db $ED, $EE, $D6
|0BC25F| db $2C ; Repeat byte
|0BC260| db $88
|0BC261| db $01 ; Raw block
|0BC262| db $DC, $A3
|0BC264| db $2D ; Repeat byte
|0BC265| db $88
|0BC266| db $83 ; Copy past
|0BC267| dw $9000
|0BC269| db $00 ; Raw block
|0BC26A| db $E7
|0BC26B| db $2A ; Repeat byte
|0BC26C| db $88
|0BC26D| db $02 ; Raw block
|0BC26E| db $EF, $F0, $F1
|0BC271| db $2A ; Repeat byte
|0BC272| db $88
|0BC273| db $04 ; Raw block
|0BC274| db $F2, $F3, $83, $E6, $F4
|0BC279| db $22 ; Repeat byte
|0BC27A| db $F5
|0BC27B| db $01 ; Raw block
|0BC27C| db $F6, $F1
|0BC27E| db $25 ; Repeat byte
|0BC27F| db $88
|0BC280| db $0E ; Raw block
|0BC281| db $F2, $F7, $83, $75, $B5, $FB, $1D, $F8
|0BC289| db $E6, $F9, $F1, $88, $88, $FA, $FB
|0BC290| db $22 ; Repeat byte
|0BC291| db $FC
|0BC292| db $07 ; Raw block
|0BC293| db $FD, $FE, $75, $66, $FF, $FF, $1D, $E6
|0BC29B| db $64 ; Increment fill
|0BC29C| db $00
|0BC29D| db $22 ; Repeat byte
|0BC29E| db $05
|0BC29F| db $02 ; Raw block
|0BC2A0| db $BB, $FD, $06
|0BC2A3| db $24 ; Repeat byte
|0BC2A4| db $07
|0BC2A5| db $62 ; Increment fill
|0BC2A6| db $08
|0BC2A7| db $01 ; Raw block
|0BC2A8| db $D0, $CD
|0BC2AA| db $22 ; Repeat byte
|0BC2AB| db $CE
|0BC2AC| db $FF ; End of Map 38

;===================================================================================================

OverworldMap32_Screen39_High:
|0BC2AD| db $2E ; Repeat byte
|0BC2AE| db $0E
|0BC2AF| db $00 ; Raw block
|0BC2B0| db $10
|0BC2B1| db $3E ; Repeat byte
|0BC2B2| db $0E
|0BC2B3| db $00 ; Raw block
|0BC2B4| db $10
|0BC2B5| db $2A ; Repeat byte
|0BC2B6| db $0E
|0BC2B7| db $23 ; Repeat byte
|0BC2B8| db $10
|0BC2B9| db $2A ; Repeat byte
|0BC2BA| db $0E
|0BC2BB| db $24 ; Repeat byte
|0BC2BC| db $10
|0BC2BD| db $2A ; Repeat byte
|0BC2BE| db $0E
|0BC2BF| db $25 ; Repeat byte
|0BC2C0| db $10
|0BC2C1| db $29 ; Repeat byte
|0BC2C2| db $0E
|0BC2C3| db $01 ; Raw block
|0BC2C4| db $10, $10
|0BC2C6| db $2D ; Repeat byte
|0BC2C7| db $0E
|0BC2C8| db $01 ; Raw block
|0BC2C9| db $10, $05
|0BC2CB| db $28 ; Repeat byte
|0BC2CC| db $0E
|0BC2CD| db $01 ; Raw block
|0BC2CE| db $10, $10
|0BC2D0| db $23 ; Repeat byte
|0BC2D1| db $0E
|0BC2D2| db $01 ; Raw block
|0BC2D3| db $10, $05
|0BC2D5| db $84 ; Copy past
|0BC2D6| dw $6900
|0BC2D8| db $27 ; Repeat byte
|0BC2D9| db $10
|0BC2DA| db $83 ; Copy past
|0BC2DB| dw $7800
|0BC2DD| db $83 ; Copy past
|0BC2DE| dw $3D00
|0BC2E0| db $23 ; Repeat byte
|0BC2E1| db $10
|0BC2E2| db $00 ; Raw block
|0BC2E3| db $0E
|0BC2E4| db $22 ; Repeat byte
|0BC2E5| db $10
|0BC2E6| db $22 ; Repeat byte
|0BC2E7| db $0E
|0BC2E8| db $02 ; Raw block
|0BC2E9| db $10, $03, $01
|0BC2EC| db $25 ; Repeat byte
|0BC2ED| db $10
|0BC2EE| db $00 ; Raw block
|0BC2EF| db $0E
|0BC2F0| db $22 ; Repeat byte
|0BC2F1| db $10
|0BC2F2| db $24 ; Repeat byte
|0BC2F3| db $0E
|0BC2F4| db $00 ; Raw block
|0BC2F5| db $0A
|0BC2F6| db $2B ; Repeat byte
|0BC2F7| db $10
|0BC2F8| db $23 ; Repeat byte
|0BC2F9| db $0E
|0BC2FA| db $02 ; Raw block
|0BC2FB| db $10, $10, $0F
|0BC2FE| db $2D ; Repeat byte
|0BC2FF| db $10
|0BC300| db $00 ; Raw block
|0BC301| db $0D
|0BC302| db $2E ; Repeat byte
|0BC303| db $10
|0BC304| db $00 ; Raw block
|0BC305| db $0F
|0BC306| db $2A ; Repeat byte
|0BC307| db $10
|0BC308| db $02 ; Raw block
|0BC309| db $0E, $10, $10
|0BC30C| db $FF ; End of Map 39

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen39_Low:
|0BC30D| db $22 ; Repeat byte
|0BC30E| db $88
|0BC30F| db $00 ; Raw block
|0BC310| db $EC
|0BC311| db $29 ; Repeat byte
|0BC312| db $88
|0BC313| db $01 ; Raw block
|0BC314| db $F5, $0B
|0BC316| db $25 ; Repeat byte
|0BC317| db $88
|0BC318| db $00 ; Raw block
|0BC319| db $EC
|0BC31A| db $26 ; Repeat byte
|0BC31B| db $88
|0BC31C| db $01 ; Raw block
|0BC31D| db $F5, $5F
|0BC31F| db $22 ; Repeat byte
|0BC320| db $88
|0BC321| db $00 ; Raw block
|0BC322| db $EC
|0BC323| db $29 ; Repeat byte
|0BC324| db $88
|0BC325| db $01 ; Raw block
|0BC326| db $F5, $0B
|0BC328| db $25 ; Repeat byte
|0BC329| db $88
|0BC32A| db $00 ; Raw block
|0BC32B| db $EC
|0BC32C| db $23 ; Repeat byte
|0BC32D| db $88
|0BC32E| db $04 ; Raw block
|0BC32F| db $0C, $01, $0D, $0E, $5F
|0BC334| db $22 ; Repeat byte
|0BC335| db $88
|0BC336| db $00 ; Raw block
|0BC337| db $EC
|0BC338| db $25 ; Repeat byte
|0BC339| db $88
|0BC33A| db $64 ; Increment fill
|0BC33B| db $0F
|0BC33C| db $00 ; Raw block
|0BC33D| db $58
|0BC33E| db $25 ; Repeat byte
|0BC33F| db $88
|0BC340| db $00 ; Raw block
|0BC341| db $EC
|0BC342| db $22 ; Repeat byte
|0BC343| db $88
|0BC344| db $64 ; Increment fill
|0BC345| db $14
|0BC346| db $00 ; Raw block
|0BC347| db $18
|0BC348| db $22 ; Repeat byte
|0BC349| db $88
|0BC34A| db $00 ; Raw block
|0BC34B| db $EC
|0BC34C| db $25 ; Repeat byte
|0BC34D| db $88
|0BC34E| db $01 ; Raw block
|0BC34F| db $19, $1A
|0BC351| db $23 ; Repeat byte
|0BC352| db $5F
|0BC353| db $25 ; Repeat byte
|0BC354| db $88
|0BC355| db $00 ; Raw block
|0BC356| db $EC
|0BC357| db $22 ; Repeat byte
|0BC358| db $88
|0BC359| db $02 ; Raw block
|0BC35A| db $1B, $B1, $BC
|0BC35D| db $22 ; Repeat byte
|0BC35E| db $5F
|0BC35F| db $22 ; Repeat byte
|0BC360| db $88
|0BC361| db $0E ; Raw block
|0BC362| db $EC, $88, $1C, $1D, $88, $EB, $88, $8C
|0BC36A| db $1E, $B1, $BC, $1F, $0B, $88, $88
|0BC371| db $67 ; Increment fill
|0BC372| db $20
|0BC373| db $83 ; Copy past
|0BC374| dw $8900
|0BC376| db $03 ; Raw block
|0BC377| db $28, $29, $88, $88
|0BC37B| db $63 ; Increment fill
|0BC37C| db $2A
|0BC37D| db $00 ; Raw block
|0BC37E| db $5F
|0BC37F| db $62 ; Increment fill
|0BC380| db $2E
|0BC381| db $05 ; Raw block
|0BC382| db $D3, $88, $8C, $1E, $5A, $F8
|0BC388| db $65 ; Increment fill
|0BC389| db $31
|0BC38A| db $00 ; Raw block
|0BC38B| db $5F
|0BC38C| db $62 ; Increment fill
|0BC38D| db $37
|0BC38E| db $22 ; Repeat byte
|0BC38F| db $88
|0BC390| db $02 ; Raw block
|0BC391| db $8C, $E8, $08
|0BC394| db $63 ; Increment fill
|0BC395| db $3A
|0BC396| db $00 ; Raw block
|0BC397| db $2D
|0BC398| db $66 ; Increment fill
|0BC399| db $3E
|0BC39A| db $00 ; Raw block
|0BC39B| db $D3
|0BC39C| db $22 ; Repeat byte
|0BC39D| db $88
|0BC39E| db $02 ; Raw block
|0BC39F| db $45, $46, $F2
|0BC3A2| db $64 ; Increment fill
|0BC3A3| db $47
|0BC3A4| db $02 ; Raw block
|0BC3A5| db $42, $4C, $4D
|0BC3A8| db $24 ; Repeat byte
|0BC3A9| db $01
|0BC3AA| db $08 ; Raw block
|0BC3AB| db $4E, $52, $4F, $01, $01, $50, $51, $01
|0BC3B3| db $01
|0BC3B4| db $62 ; Increment fill
|0BC3B5| db $52
|0BC3B6| db $23 ; Repeat byte
|0BC3B7| db $09
|0BC3B8| db $02 ; Raw block
|0BC3B9| db $55, $FD, $56
|0BC3BC| db $26 ; Repeat byte
|0BC3BD| db $09
|0BC3BE| db $62 ; Increment fill
|0BC3BF| db $57
|0BC3C0| db $02 ; Raw block
|0BC3C1| db $CE, $55, $5A
|0BC3C4| db $FF ; End of Map 39

;===================================================================================================

OverworldMap32_Screen3A_High:
|0BC3C5| db $00 ; Raw block
|0BC3C6| db $10
|0BC3C7| db $2B ; Repeat byte
|0BC3C8| db $01
|0BC3C9| db $07 ; Raw block
|0BC3CA| db $0E, $10, $0E, $0E, $10, $10, $01, $01
|0BC3D2| db $24 ; Repeat byte
|0BC3D3| db $10
|0BC3D4| db $22 ; Repeat byte
|0BC3D5| db $01
|0BC3D6| db $03 ; Raw block
|0BC3D7| db $05, $0E, $0F, $0E
|0BC3DB| db $23 ; Repeat byte
|0BC3DC| db $10
|0BC3DD| db $00 ; Raw block
|0BC3DE| db $01
|0BC3DF| db $22 ; Repeat byte
|0BC3E0| db $10
|0BC3E1| db $03 ; Raw block
|0BC3E2| db $02, $10, $10, $01
|0BC3E6| db $43 ; Repeat word
|0BC3E7| dw $0E10
|0BC3E9| db $43 ; Repeat word
|0BC3EA| dw $100E
|0BC3EC| db $0B ; Raw block
|0BC3ED| db $0B, $10, $0E, $0F, $01, $06, $00, $04
|0BC3F5| db $01, $01, $0E, $0E
|0BC3F9| db $25 ; Repeat byte
|0BC3FA| db $10
|0BC3FB| db $62 ; Increment fill
|0BC3FC| db $0E
|0BC3FD| db $01 ; Raw block
|0BC3FE| db $00, $02
|0BC400| db $22 ; Repeat byte
|0BC401| db $01
|0BC402| db $00 ; Raw block
|0BC403| db $0E
|0BC404| db $23 ; Repeat byte
|0BC405| db $10
|0BC406| db $06 ; Raw block
|0BC407| db $0E, $03, $10, $01, $10, $02, $02
|0BC40E| db $83 ; Copy past
|0BC40F| dw $1200
|0BC411| db $22 ; Repeat byte
|0BC412| db $0E
|0BC413| db $0C ; Raw block
|0BC414| db $10, $10, $0E, $06, $03, $01, $10, $02
|0BC41C| db $10, $00, $03, $03, $10
|0BC421| db $22 ; Repeat byte
|0BC422| db $0E
|0BC423| db $09 ; Raw block
|0BC424| db $10, $10, $0E, $02, $10, $10, $00, $10
|0BC42C| db $0F, $04
|0BC42E| db $22 ; Repeat byte
|0BC42F| db $03
|0BC430| db $02 ; Raw block
|0BC431| db $01, $0E, $0E
|0BC434| db $22 ; Repeat byte
|0BC435| db $10
|0BC436| db $01 ; Raw block
|0BC437| db $03, $0F
|0BC439| db $22 ; Repeat byte
|0BC43A| db $10
|0BC43B| db $03 ; Raw block
|0BC43C| db $0F, $10, $10, $09
|0BC440| db $83 ; Copy past
|0BC441| dw $7E00
|0BC443| db $22 ; Repeat byte
|0BC444| db $10
|0BC445| db $03 ; Raw block
|0BC446| db $02, $0F, $06, $00
|0BC44A| db $83 ; Copy past
|0BC44B| dw $8900
|0BC44D| db $04 ; Raw block
|0BC44E| db $02, $05, $02, $01, $01
|0BC453| db $22 ; Repeat byte
|0BC454| db $10
|0BC455| db $01 ; Raw block
|0BC456| db $02, $0F
|0BC458| db $22 ; Repeat byte
|0BC459| db $10
|0BC45A| db $02 ; Raw block
|0BC45B| db $0F, $04, $09
|0BC45E| db $22 ; Repeat byte
|0BC45F| db $10
|0BC460| db $03 ; Raw block
|0BC461| db $0A, $0A, $10, $05
|0BC465| db $22 ; Repeat byte
|0BC466| db $10
|0BC467| db $01 ; Raw block
|0BC468| db $0B, $01
|0BC46A| db $83 ; Copy past
|0BC46B| dw $8900
|0BC46D| db $05 ; Raw block
|0BC46E| db $06, $0E, $0E, $0A, $05, $05
|0BC474| db $23 ; Repeat byte
|0BC475| db $10
|0BC476| db $05 ; Raw block
|0BC477| db $0F, $05, $10, $10, $03, $10
|0BC47D| db $22 ; Repeat byte
|0BC47E| db $01
|0BC47F| db $23 ; Repeat byte
|0BC480| db $10
|0BC481| db $01 ; Raw block
|0BC482| db $0E, $0E
|0BC484| db $23 ; Repeat byte
|0BC485| db $10
|0BC486| db $00 ; Raw block
|0BC487| db $0E
|0BC488| db $83 ; Copy past
|0BC489| dw $5400
|0BC48B| db $00 ; Raw block
|0BC48C| db $01
|0BC48D| db $22 ; Repeat byte
|0BC48E| db $10
|0BC48F| db $01 ; Raw block
|0BC490| db $0E, $10
|0BC492| db $24 ; Repeat byte
|0BC493| db $0E
|0BC494| db $83 ; Copy past
|0BC495| dw $D900
|0BC497| db $23 ; Repeat byte
|0BC498| db $10
|0BC499| db $83 ; Copy past
|0BC49A| dw $1E00
|0BC49C| db $02 ; Raw block
|0BC49D| db $0E, $0E, $10
|0BC4A0| db $22 ; Repeat byte
|0BC4A1| db $0E
|0BC4A2| db $00 ; Raw block
|0BC4A3| db $10
|0BC4A4| db $22 ; Repeat byte
|0BC4A5| db $03
|0BC4A6| db $FF ; End of Map 3A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen3A_Low:
|0BC4A7| db $01 ; Raw block
|0BC4A8| db $5B, $09
|0BC4AA| db $2A ; Repeat byte
|0BC4AB| db $0A
|0BC4AC| db $07 ; Raw block
|0BC4AD| db $BC, $5C, $DE, $5F, $5D, $5E, $14, $15
|0BC4B5| db $63 ; Increment fill
|0BC4B6| db $5F
|0BC4B7| db $00 ; Raw block
|0BC4B8| db $5E
|0BC4B9| db $22 ; Repeat byte
|0BC4BA| db $15
|0BC4BB| db $03 ; Raw block
|0BC4BC| db $B1, $BC, $D4, $5F
|0BC4C0| db $63 ; Increment fill
|0BC4C1| db $63
|0BC4C2| db $1B ; Raw block
|0BC4C3| db $23, $67, $68, $63, $02, $69, $6A, $22
|0BC4CB| db $6B, $EE, $1F, $5F, $A0, $6C, $5F, $6D
|0BC4D3| db $F9, $6E, $BB, $83, $1E, $66, $1D, $BB
|0BC4DB| db $77, $71, $8F, $58
|0BC4DF| db $64 ; Increment fill
|0BC4E0| db $6F
|0BC4E1| db $E0, $4B ; EXT Raw block
|0BC4E3| db $6E, $8F, $83, $74, $1D, $8A, $41, $5B
|0BC4EB| db $5C, $5F, $18, $18, $75, $76, $C4, $E2
|0BC4F3| db $77, $0A, $78, $8A, $8A, $79, $52, $53
|0BC4FB| db $7A, $AC, $5F, $5F, $7B, $7C, $C4, $66
|0BC503| db $56, $22, $7D, $F8, $7E, $1D, $50, $51
|0BC50B| db $28, $44, $5F, $5F, $7F, $7C, $C4, $F8
|0BC513| db $7E, $80, $A9, $6E, $83, $C1, $56, $57
|0BC51B| db $5A, $F8, $5F, $5F, $81, $7C, $82, $02
|0BC523| db $83, $83, $84, $6E, $83, $83, $84, $D1
|0BC52B| db $BA, $E5, $44, $44
|0BC52F| db $62 ; Increment fill
|0BC530| db $85
|0BC531| db $0C ; Raw block
|0BC532| db $69, $83, $66, $FB, $6E, $83, $88, $89
|0BC53A| db $8D, $57, $4C, $F8, $F8
|0BC53F| db $62 ; Increment fill
|0BC540| db $8A
|0BC541| db $00 ; Raw block
|0BC542| db $69
|0BC543| db $84 ; Copy past
|0BC544| dw $8600
|0BC546| db $08 ; Raw block
|0BC547| db $BB, $F4, $8D, $04, $8E, $08, $08, $8B
|0BC54F| db $FB
|0BC550| db $62 ; Increment fill
|0BC551| db $8F
|0BC552| db $E0, $36 ; EXT Raw block
|0BC554| db $46, $41, $6E, $83, $92, $93, $12, $F0
|0BC55C| db $8F, $0C, $FB, $FB, $8F, $03, $94, $4E
|0BC564| db $38, $58, $95, $96, $8D, $97, $03, $09
|0BC56C| db $0A, $98, $98, $99, $03, $D0, $5F, $1F
|0BC574| db $9A, $05, $7A, $A7, $3C, $8D, $9B, $13
|0BC57C| db $15, $09, $09, $0A, $D0, $9C, $BB, $5F
|0BC584| db $8F, $DE, $5F, $9D, $A7, $3C, $8D
|0BC58B| db $63 ; Increment fill
|0BC58C| db $9E
|0BC58D| db $0D ; Raw block
|0BC58E| db $BB, $D4, $AF, $A2, $8F, $5F, $9D, $8F
|0BC596| db $AC, $5F, $A3, $4A, $4B, $4B
|0BC59C| db $FF ; End of Map 3A

;===================================================================================================

OverworldMap32_Screen3D_High:
|0BC59D| db $09 ; Raw block
|0BC59E| db $0F, $0F, $0B, $00, $06, $03, $10, $07
|0BC5A6| db $05, $10
|0BC5A8| db $44 ; Repeat word
|0BC5A9| dw $0F05
|0BC5AB| db $22 ; Repeat byte
|0BC5AC| db $10
|0BC5AD| db $11 ; Raw block
|0BC5AE| db $02, $07, $03, $03, $10, $10, $09, $10
|0BC5B6| db $10, $05, $05, $10, $10, $08, $0D, $10
|0BC5BE| db $0D, $0D
|0BC5C0| db $83 ; Copy past
|0BC5C1| dw $1400
|0BC5C3| db $0F ; Raw block
|0BC5C4| db $05, $10, $10, $05, $10, $10, $05, $07
|0BC5CC| db $01, $02, $01, $10, $0E, $10, $10, $02
|0BC5D4| db $22 ; Repeat byte
|0BC5D5| db $05
|0BC5D6| db $01 ; Raw block
|0BC5D7| db $0F, $05
|0BC5D9| db $83 ; Copy past
|0BC5DA| dw $0600
|0BC5DC| db $43 ; Repeat word
|0BC5DD| dw $010E
|0BC5DF| db $00 ; Raw block
|0BC5E0| db $01
|0BC5E1| db $83 ; Copy past
|0BC5E2| dw $3600
|0BC5E4| db $22 ; Repeat byte
|0BC5E5| db $10
|0BC5E6| db $02 ; Raw block
|0BC5E7| db $08, $05, $07
|0BC5EA| db $25 ; Repeat byte
|0BC5EB| db $10
|0BC5EC| db $00 ; Raw block
|0BC5ED| db $0F
|0BC5EE| db $24 ; Repeat byte
|0BC5EF| db $05
|0BC5F0| db $00 ; Raw block
|0BC5F1| db $10
|0BC5F2| db $22 ; Repeat byte
|0BC5F3| db $05
|0BC5F4| db $01 ; Raw block
|0BC5F5| db $10, $03
|0BC5F7| db $22 ; Repeat byte
|0BC5F8| db $10
|0BC5F9| db $01 ; Raw block
|0BC5FA| db $01, $01
|0BC5FC| db $84 ; Copy past
|0BC5FD| dw $1A00
|0BC5FF| db $08 ; Raw block
|0BC600| db $0F, $05, $07, $05, $10, $10, $0D, $10
|0BC608| db $10
|0BC609| db $22 ; Repeat byte
|0BC60A| db $0A
|0BC60B| db $22 ; Repeat byte
|0BC60C| db $05
|0BC60D| db $05 ; Raw block
|0BC60E| db $10, $05, $07, $05, $05, $03
|0BC614| db $22 ; Repeat byte
|0BC615| db $10
|0BC616| db $00 ; Raw block
|0BC617| db $06
|0BC618| db $22 ; Repeat byte
|0BC619| db $10
|0BC61A| db $03 ; Raw block
|0BC61B| db $05, $09, $0E, $0F
|0BC61F| db $22 ; Repeat byte
|0BC620| db $05
|0BC621| db $00 ; Raw block
|0BC622| db $09
|0BC623| db $22 ; Repeat byte
|0BC624| db $10
|0BC625| db $01 ; Raw block
|0BC626| db $0F, $0E
|0BC628| db $22 ; Repeat byte
|0BC629| db $10
|0BC62A| db $09 ; Raw block
|0BC62B| db $07, $07, $10, $05, $10, $09, $05, $07
|0BC633| db $0C, $0F
|0BC635| db $25 ; Repeat byte
|0BC636| db $10
|0BC637| db $07 ; Raw block
|0BC638| db $07, $07, $0F, $0F, $10, $05, $08, $05
|0BC640| db $83 ; Copy past
|0BC641| dw $7300
|0BC643| db $08 ; Raw block
|0BC644| db $06, $0A, $0A, $10, $08, $07, $09, $10
|0BC64C| db $07
|0BC64D| db $83 ; Copy past
|0BC64E| dw $AC00
|0BC650| db $01 ; Raw block
|0BC651| db $05, $0A
|0BC653| db $22 ; Repeat byte
|0BC654| db $05
|0BC655| db $22 ; Repeat byte
|0BC656| db $10
|0BC657| db $00 ; Raw block
|0BC658| db $08
|0BC659| db $25 ; Repeat byte
|0BC65A| db $10
|0BC65B| db $02 ; Raw block
|0BC65C| db $05, $06, $06
|0BC65F| db $22 ; Repeat byte
|0BC660| db $10
|0BC661| db $83 ; Copy past
|0BC662| dw $1B00
|0BC664| db $01 ; Raw block
|0BC665| db $05, $06
|0BC667| db $83 ; Copy past
|0BC668| dw $0C00
|0BC66A| db $22 ; Repeat byte
|0BC66B| db $0F
|0BC66C| db $26 ; Repeat byte
|0BC66D| db $10
|0BC66E| db $00 ; Raw block
|0BC66F| db $0F
|0BC670| db $22 ; Repeat byte
|0BC671| db $10
|0BC672| db $01 ; Raw block
|0BC673| db $0F, $0F
|0BC675| db $23 ; Repeat byte
|0BC676| db $01
|0BC677| db $07 ; Raw block
|0BC678| db $0D, $03, $10, $0D, $03, $10, $10, $02
|0BC680| db $22 ; Repeat byte
|0BC681| db $10
|0BC682| db $00 ; Raw block
|0BC683| db $01
|0BC684| db $FF ; End of Map 3D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen3D_Low:
|0BC685| db $09 ; Raw block
|0BC686| db $73, $2F, $46, $B2, $66, $B6, $A4, $8E
|0BC68E| db $E1, $A5
|0BC690| db $44 ; Repeat word
|0BC691| dw $AEA4
|0BC693| db $62 ; Increment fill
|0BC694| db $A6
|0BC695| db $E0, $3D ; EXT Raw block
|0BC697| db $D2, $BF, $44, $44, $A9, $AA, $52, $AB
|0BC69F| db $AC, $A4, $A4, $AD, $AE, $AA, $9E, $AF
|0BC6A7| db $9E, $A1, $4B, $4B, $B0, $B1, $D3, $B2
|0BC6AF| db $AC, $A4, $B3, $AE, $E1, $20, $06, $F2
|0BC6B7| db $06, $B4, $CE, $B5, $B6, $DC, $8A, $93
|0BC6BF| db $A4, $AE, $A4, $B7, $20, $E1, $B8, $74
|0BC6C7| db $06, $D9, $0A, $FD, $B9, $DC, $8A, $93
|0BC6CF| db $AC, $BA, $BB, $AA, $E1, $20
|0BC6D5| db $65 ; Increment fill
|0BC6D6| db $BC
|0BC6D7| db $06 ; Raw block
|0BC6D8| db $4C, $89, $8A, $93, $BD, $A4, $C2
|0BC6DF| db $22 ; Repeat byte
|0BC6E0| db $E1
|0BC6E1| db $01 ; Raw block
|0BC6E2| db $C3, $6A
|0BC6E4| db $62 ; Increment fill
|0BC6E5| db $C4
|0BC6E6| db $1B ; Raw block
|0BC6E7| db $0A, $FD, $C7, $8A, $93, $AC, $BB, $8D
|0BC6EF| db $E1, $36, $E0, $C8, $C9, $6E, $CA, $CB
|0BC6F7| db $1D, $F5, $39, $8A, $C5, $C6, $CC, $E1
|0BC6FF| db $36, $E1, $E1, $94
|0BC703| db $62 ; Increment fill
|0BC704| db $CD
|0BC705| db $07 ; Raw block
|0BC706| db $B4, $D0, $D0, $D1, $92, $78, $23, $94
|0BC70E| db $22 ; Repeat byte
|0BC70F| db $E1
|0BC710| db $00 ; Raw block
|0BC711| db $36
|0BC712| db $62 ; Increment fill
|0BC713| db $D2
|0BC714| db $01 ; Raw block
|0BC715| db $04, $05
|0BC717| db $62 ; Increment fill
|0BC718| db $D5
|0BC719| db $0B ; Raw block
|0BC71A| db $1E, $18, $D8, $BD, $B7, $36, $E1, $36
|0BC722| db $AD, $E1, $D9, $DA
|0BC726| db $63 ; Increment fill
|0BC727| db $DA
|0BC728| db $1D ; Raw block
|0BC729| db $8E, $20, $85, $86, $DE, $E0, $AA, $E0
|0BC731| db $C5, $8B, $0C, $0C, $05, $E8, $0C, $DF
|0BC739| db $C0, $3C, $47, $E0, $83, $E1, $E1, $D7
|0BC741| db $FB, $E8, $0C, $FB, $E8, $FB
|0BC747| db $62 ; Increment fill
|0BC748| db $E2
|0BC749| db $00 ; Raw block
|0BC74A| db $C3
|0BC74B| db $65 ; Increment fill
|0BC74C| db $E5
|0BC74D| db $02 ; Raw block
|0BC74E| db $FB, $05, $05
|0BC751| db $62 ; Increment fill
|0BC752| db $EB
|0BC753| db $09 ; Raw block
|0BC754| db $FB, $FB, $E3, $EE, $FA, $05, $E8, $1E
|0BC75C| db $F0, $EF
|0BC75E| db $22 ; Repeat byte
|0BC75F| db $FC
|0BC760| db $62 ; Increment fill
|0BC761| db $F0
|0BC762| db $09 ; Raw block
|0BC763| db $EC, $F3, $F4, $99, $FB, $45, $F5, $99
|0BC76B| db $FB, $FC
|0BC76D| db $22 ; Repeat byte
|0BC76E| db $EB
|0BC76F| db $0C ; Raw block
|0BC770| db $EC, $97, $4A, $09, $E9, $4A, $0A, $F6
|0BC778| db $D1, $56, $0A, $F6, $EB
|0BC77D| db $FF ; End of Map 3D

;===================================================================================================

OverworldMap32_Screen3E_High:
|0BC77E| db $18 ; Raw block
|0BC77F| db $07, $06, $01, $02, $02, $10, $10, $03
|0BC787| db $03, $09, $09, $05, $10, $07, $0F, $01
|0BC78F| db $09, $07, $06, $02, $08, $09, $09, $07
|0BC797| db $07
|0BC798| db $23 ; Repeat byte
|0BC799| db $05
|0BC79A| db $0B ; Raw block
|0BC79B| db $0F, $01, $10, $07, $05, $07, $0E, $10
|0BC7A3| db $05, $05, $07, $07
|0BC7A7| db $43 ; Repeat word
|0BC7A8| dw $0F05
|0BC7AA| db $07 ; Raw block
|0BC7AB| db $01, $01, $10, $05, $08, $05, $10, $10
|0BC7B3| db $22 ; Repeat byte
|0BC7B4| db $05
|0BC7B5| db $0A ; Raw block
|0BC7B6| db $10, $10, $05, $07, $0F, $01, $0E, $01
|0BC7BE| db $05, $05, $09
|0BC7C1| db $23 ; Repeat byte
|0BC7C2| db $11
|0BC7C3| db $0A ; Raw block
|0BC7C4| db $05, $08, $07, $09, $07, $11, $11, $01
|0BC7CC| db $0C, $09, $0C
|0BC7CF| db $24 ; Repeat byte
|0BC7D0| db $11
|0BC7D1| db $02 ; Raw block
|0BC7D2| db $05, $05, $07
|0BC7D5| db $24 ; Repeat byte
|0BC7D6| db $05
|0BC7D7| db $00 ; Raw block
|0BC7D8| db $0E
|0BC7D9| db $22 ; Repeat byte
|0BC7DA| db $05
|0BC7DB| db $06 ; Raw block
|0BC7DC| db $10, $05, $11, $10, $07, $09, $08
|0BC7E3| db $24 ; Repeat byte
|0BC7E4| db $05
|0BC7E5| db $06 ; Raw block
|0BC7E6| db $03, $09, $08, $07, $0F, $11, $10
|0BC7ED| db $23 ; Repeat byte
|0BC7EE| db $05
|0BC7EF| db $0A ; Raw block
|0BC7F0| db $07, $05, $08, $05, $05, $0F, $05, $05
|0BC7F8| db $09, $05, $11
|0BC7FB| db $23 ; Repeat byte
|0BC7FC| db $0F
|0BC7FD| db $01 ; Raw block
|0BC7FE| db $09, $07
|0BC800| db $23 ; Repeat byte
|0BC801| db $05
|0BC802| db $44 ; Repeat word
|0BC803| dw $0507
|0BC805| db $24 ; Repeat byte
|0BC806| db $11
|0BC807| db $02 ; Raw block
|0BC808| db $05, $09, $07
|0BC80B| db $22 ; Repeat byte
|0BC80C| db $05
|0BC80D| db $03 ; Raw block
|0BC80E| db $07, $05, $05, $07
|0BC812| db $22 ; Repeat byte
|0BC813| db $11
|0BC814| db $04 ; Raw block
|0BC815| db $05, $05, $0F, $07, $05
|0BC81A| db $24 ; Repeat byte
|0BC81B| db $0F
|0BC81C| db $22 ; Repeat byte
|0BC81D| db $07
|0BC81E| db $01 ; Raw block
|0BC81F| db $11, $05
|0BC821| db $23 ; Repeat byte
|0BC822| db $11
|0BC823| db $00 ; Raw block
|0BC824| db $0F
|0BC825| db $28 ; Repeat byte
|0BC826| db $11
|0BC827| db $00 ; Raw block
|0BC828| db $06
|0BC829| db $83 ; Copy past
|0BC82A| dw $B800
|0BC82C| db $23 ; Repeat byte
|0BC82D| db $05
|0BC82E| db $23 ; Repeat byte
|0BC82F| db $11
|0BC830| db $11 ; Raw block
|0BC831| db $05, $10, $10, $0C, $0A, $10, $05, $06
|0BC839| db $10, $0F, $0F, $10, $10, $05, $11, $11
|0BC841| db $0F, $0F
|0BC843| db $27 ; Repeat byte
|0BC844| db $10
|0BC845| db $01 ; Raw block
|0BC846| db $01, $0E
|0BC848| db $22 ; Repeat byte
|0BC849| db $10
|0BC84A| db $03 ; Raw block
|0BC84B| db $0F, $0F, $11, $11
|0BC84F| db $24 ; Repeat byte
|0BC850| db $10
|0BC851| db $07 ; Raw block
|0BC852| db $11, $06, $0F, $0D, $03, $10, $0D, $11
|0BC85A| db $FF ; End of Map 3E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen3E_Low:
|0BC85B| db $E0, $42 ; EXT Raw block
|0BC85D| db $36, $0A, $E6, $08, $60, $F7, $F8, $B2
|0BC865| db $B3, $82, $83, $E1, $F9, $4C, $C1, $25
|0BC86D| db $9D, $1A, $16, $FB, $63, $F8, $F9, $3F
|0BC875| db $1B, $9F, $E1, $E1, $E2, $BD, $49, $FA
|0BC87D| db $20, $E1, $14, $21, $FB, $E1, $E1, $44
|0BC885| db $31, $E1, $D3, $E2, $BD, $49, $6A, $FC
|0BC88D| db $E1, $AA, $E1, $D8, $FD, $AA, $E1, $E1
|0BC895| db $FE, $FF, $E1, $4C, $C1, $00, $40, $01
|0BC89D| db $E1, $E1, $36
|0BC8A0| db $63 ; Increment fill
|0BC8A1| db $00
|0BC8A2| db $04 ; Raw block
|0BC8A3| db $E1, $AA, $89, $9D, $4C
|0BC8A8| db $62 ; Increment fill
|0BC8A9| db $04
|0BC8AA| db $02 ; Raw block
|0BC8AB| db $ED, $36, $4C
|0BC8AE| db $64 ; Increment fill
|0BC8AF| db $06
|0BC8B0| db $08 ; Raw block
|0BC8B1| db $E1, $E1, $20, $E1, $97, $98, $B1, $A6
|0BC8B9| db $40
|0BC8BA| db $22 ; Repeat byte
|0BC8BB| db $E1
|0BC8BC| db $12 ; Raw block
|0BC8BD| db $D8, $AA, $0B, $A6, $89, $36, $AA, $E1
|0BC8C5| db $E1, $AB, $A2, $B1, $52, $36, $AA, $89
|0BC8CD| db $85, $0C, $AE
|0BC8D0| db $23 ; Repeat byte
|0BC8D1| db $E1
|0BC8D2| db $05 ; Raw block
|0BC8D3| db $36, $E1, $AA, $AB, $A2, $42
|0BC8D9| db $83 ; Copy past
|0BC8DA| dw $7800
|0BC8DC| db $00 ; Raw block
|0BC8DD| db $0D
|0BC8DE| db $23 ; Repeat byte
|0BC8DF| db $BA
|0BC8E0| db $01 ; Raw block
|0BC8E1| db $52, $19
|0BC8E3| db $22 ; Repeat byte
|0BC8E4| db $E1
|0BC8E5| db $05 ; Raw block
|0BC8E6| db $AB, $3F, $E1, $20, $E1, $67
|0BC8EC| db $62 ; Increment fill
|0BC8ED| db $0E
|0BC8EE| db $0B ; Raw block
|0BC8EF| db $10, $11, $D3, $52, $36, $E0, $E0, $E1
|0BC8F7| db $44, $E1, $E1, $67
|0BC8FB| db $62 ; Increment fill
|0BC8FC| db $12
|0BC8FD| db $04 ; Raw block
|0BC8FE| db $FB, $FB, $1E, $DB, $D3
|0BC903| db $24 ; Repeat byte
|0BC904| db $BA
|0BC905| db $04 ; Raw block
|0BC906| db $22, $22, $6E, $15, $FA
|0BC90B| db $63 ; Increment fill
|0BC90C| db $16
|0BC90D| db $01 ; Raw block
|0BC90E| db $1E, $1A
|0BC910| db $24 ; Repeat byte
|0BC911| db $10
|0BC912| db $62 ; Increment fill
|0BC913| db $1B
|0BC914| db $04 ; Raw block
|0BC915| db $00, $1E, $E1, $1F, $20
|0BC91A| db $23 ; Repeat byte
|0BC91B| db $FB
|0BC91C| db $00 ; Raw block
|0BC91D| db $18
|0BC91E| db $22 ; Repeat byte
|0BC91F| db $21
|0BC920| db $13 ; Raw block
|0BC921| db $FB, $E3, $EE, $8E, $08, $8B, $FB, $05
|0BC929| db $8F, $FB, $FC, $F4, $ED, $FB, $22, $23
|0BC931| db $FC, $FC, $45, $F5
|0BC935| db $22 ; Repeat byte
|0BC936| db $EC
|0BC937| db $0C ; Raw block
|0BC938| db $99, $03, $94, $EB, $3C, $F2, $EC, $F3
|0BC940| db $FC, $3E, $24, $25, $56
|0BC945| db $22 ; Repeat byte
|0BC946| db $09
|0BC947| db $08 ; Raw block
|0BC948| db $0A, $26, $A2, $12, $97, $4A, $09, $E9
|0BC950| db $24
|0BC951| db $FF ; End of Map 3E

;===================================================================================================

OverworldMap32_Screen40_High:
|0BC952| db $E4, $3D ; EXT Repeat byte
|0BC954| db $11
|0BC955| db $00 ; Raw block
|0BC956| db $00
|0BC957| db $E4, $C0 ; EXT Repeat byte
|0BC959| db $11
|0BC95A| db $FF ; End of Map 40

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen40_Low:
|0BC95B| db $62 ; Increment fill
|0BC95C| db $27
|0BC95D| db $00 ; Raw block
|0BC95E| db $27
|0BC95F| db $65 ; Increment fill
|0BC960| db $2A
|0BC961| db $62 ; Increment fill
|0BC962| db $2D
|0BC963| db $65 ; Increment fill
|0BC964| db $2D
|0BC965| db $00 ; Raw block
|0BC966| db $30
|0BC967| db $62 ; Increment fill
|0BC968| db $33
|0BC969| db $02 ; Raw block
|0BC96A| db $29, $27, $2A
|0BC96D| db $62 ; Increment fill
|0BC96E| db $36
|0BC96F| db $62 ; Increment fill
|0BC970| db $36
|0BC971| db $08 ; Raw block
|0BC972| db $2E, $2F, $2D, $39, $3A, $34, $3B, $32
|0BC97A| db $30
|0BC97B| db $64 ; Increment fill
|0BC97C| db $3C
|0BC97D| db $03 ; Raw block
|0BC97E| db $3E, $41, $27, $28
|0BC982| db $62 ; Increment fill
|0BC983| db $42
|0BC984| db $03 ; Raw block
|0BC985| db $34, $2C, $2D, $39
|0BC989| db $64 ; Increment fill
|0BC98A| db $45
|0BC98B| db $07 ; Raw block
|0BC98C| db $1F, $4A, $30, $31, $4B, $4C, $34, $34
|0BC994| db $68 ; Increment fill
|0BC995| db $4D
|0BC996| db $01 ; Raw block
|0BC997| db $51, $2E
|0BC999| db $66 ; Increment fill
|0BC99A| db $56
|0BC99B| db $00 ; Raw block
|0BC99C| db $30
|0BC99D| db $65 ; Increment fill
|0BC99E| db $5D
|0BC99F| db $02 ; Raw block
|0BC9A0| db $5E, $27, $2A
|0BC9A3| db $67 ; Increment fill
|0BC9A4| db $63
|0BC9A5| db $01 ; Raw block
|0BC9A6| db $5E, $5F
|0BC9A8| db $62 ; Increment fill
|0BC9A9| db $6B
|0BC9AA| db $01 ; Raw block
|0BC9AB| db $5E, $30
|0BC9AD| db $68 ; Increment fill
|0BC9AE| db $6E
|0BC9AF| db $00 ; Raw block
|0BC9B0| db $5E
|0BC9B1| db $63 ; Increment fill
|0BC9B2| db $77
|0BC9B3| db $04 ; Raw block
|0BC9B4| db $5E, $2E, $61, $7B, $47
|0BC9B9| db $63 ; Increment fill
|0BC9BA| db $7C
|0BC9BB| db $00 ; Raw block
|0BC9BC| db $4A
|0BC9BD| db $62 ; Increment fill
|0BC9BE| db $80
|0BC9BF| db $05 ; Raw block
|0BC9C0| db $60, $56, $57, $5E, $27, $28
|0BC9C6| db $65 ; Increment fill
|0BC9C7| db $83
|0BC9C8| db $09 ; Raw block
|0BC9C9| db $4A, $47, $47, $89, $8A, $2A, $63, $81
|0BC9D1| db $30, $31
|0BC9D3| db $64 ; Increment fill
|0BC9D4| db $8B
|0BC9D5| db $0B ; Raw block
|0BC9D6| db $51, $52, $54, $90, $91, $30, $3C, $92
|0BC9DE| db $4A, $2E, $2F, $57
|0BC9E2| db $63 ; Increment fill
|0BC9E3| db $93
|0BC9E4| db $05 ; Raw block
|0BC9E5| db $5E, $77, $60, $61, $97, $39
|0BC9EB| db $62 ; Increment fill
|0BC9EC| db $98
|0BC9ED| db $0B ; Raw block
|0BC9EE| db $27, $28, $6D, $93, $94, $9B, $9C, $5E
|0BC9F6| db $77, $6B, $6C, $29
|0BC9FA| db $63 ; Increment fill
|0BC9FB| db $9D
|0BC9FC| db $11 ; Raw block
|0BC9FD| db $30, $31, $8B, $93, $94, $A1, $A2, $5E
|0BCA05| db $77, $78, $A3, $32, $30, $A4, $4A, $47
|0BCA0D| db $2E, $2F
|0BCA0F| db $63 ; Increment fill
|0BCA10| db $A5
|0BCA11| db $0C ; Raw block
|0BCA12| db $A8, $81, $A9, $AA, $2C, $AB, $2E, $AC
|0BCA1A| db $AD, $47, $27, $2A, $AE
|0BCA1F| db $23 ; Repeat byte
|0BCA20| db $47
|0BCA21| db $08 ; Raw block
|0BCA22| db $AF, $47, $B0, $35, $29, $27, $28, $B1
|0BCA2A| db $47
|0BCA2B| db $FF ; End of Map 40

;===================================================================================================

OverworldMap32_Screen41_High:
|0BCA2C| db $E4, $39 ; EXT Repeat byte
|0BCA2E| db $11
|0BCA2F| db $00 ; Raw block
|0BCA30| db $00
|0BCA31| db $30 ; Repeat byte
|0BCA32| db $11
|0BCA33| db $00 ; Raw block
|0BCA34| db $00
|0BCA35| db $2C ; Repeat byte
|0BCA36| db $11
|0BCA37| db $03 ; Raw block
|0BCA38| db $00, $11, $00, $00
|0BCA3C| db $E4, $4C ; EXT Repeat byte
|0BCA3E| db $11
|0BCA3F| db $01 ; Raw block
|0BCA40| db $12, $12
|0BCA42| db $22 ; Repeat byte
|0BCA43| db $11
|0BCA44| db $46 ; Repeat word
|0BCA45| dw $1112
|0BCA47| db $28 ; Repeat byte
|0BCA48| db $11
|0BCA49| db $22 ; Repeat byte
|0BCA4A| db $12
|0BCA4B| db $43 ; Repeat word
|0BCA4C| dw $1211
|0BCA4E| db $01 ; Raw block
|0BCA4F| db $12, $11
|0BCA51| db $25 ; Repeat byte
|0BCA52| db $12
|0BCA53| db $00 ; Raw block
|0BCA54| db $11
|0BCA55| db $22 ; Repeat byte
|0BCA56| db $12
|0BCA57| db $46 ; Repeat word
|0BCA58| dw $1211
|0BCA5A| db $02 ; Raw block
|0BCA5B| db $11, $12, $12
|0BCA5E| db $22 ; Repeat byte
|0BCA5F| db $11
|0BCA60| db $46 ; Repeat word
|0BCA61| dw $1112
|0BCA63| db $23 ; Repeat byte
|0BCA64| db $11
|0BCA65| db $00 ; Raw block
|0BCA66| db $12
|0BCA67| db $25 ; Repeat byte
|0BCA68| db $11
|0BCA69| db $02 ; Raw block
|0BCA6A| db $12, $11, $12
|0BCA6D| db $22 ; Repeat byte
|0BCA6E| db $11
|0BCA6F| db $23 ; Repeat byte
|0BCA70| db $12
|0BCA71| db $23 ; Repeat byte
|0BCA72| db $11
|0BCA73| db $FF ; End of Map 41

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen41_Low:
|0BCA74| db $62 ; Increment fill
|0BCA75| db $2D
|0BCA76| db $62 ; Increment fill
|0BCA77| db $2D
|0BCA78| db $89 ; Copy past
|0BCA79| dw $0000
|0BCA7B| db $03 ; Raw block
|0BCA7C| db $36, $37, $6C, $42
|0BCA80| db $62 ; Increment fill
|0BCA81| db $B2
|0BCA82| db $62 ; Increment fill
|0BCA83| db $B2
|0BCA84| db $02 ; Raw block
|0BCA85| db $B2, $6C, $29
|0BCA88| db $62 ; Increment fill
|0BCA89| db $27
|0BCA8A| db $02 ; Raw block
|0BCA8B| db $B5, $B6, $79
|0BCA8E| db $63 ; Increment fill
|0BCA8F| db $B7
|0BCA90| db $62 ; Increment fill
|0BCA91| db $B8
|0BCA92| db $02 ; Raw block
|0BCA93| db $B8, $BB, $32
|0BCA96| db $62 ; Increment fill
|0BCA97| db $30
|0BCA98| db $04 ; Raw block
|0BCA99| db $B0, $60, $BC, $BD, $47
|0BCA9E| db $62 ; Increment fill
|0BCA9F| db $BE
|0BCAA0| db $02 ; Raw block
|0BCAA1| db $BE, $47, $1F
|0BCAA4| db $63 ; Increment fill
|0BCAA5| db $C1
|0BCAA6| db $08 ; Raw block
|0BCAA7| db $C2, $C5, $8A, $28, $B1, $C6, $C6, $47
|0BCAAF| db $47
|0BCAB0| db $63 ; Increment fill
|0BCAB1| db $C6
|0BCAB2| db $06 ; Raw block
|0BCAB3| db $A3, $CA, $47, $C6, $CB, $30, $31
|0BCABA| db $66 ; Increment fill
|0BCABB| db $CC
|0BCABC| db $03 ; Raw block
|0BCABD| db $AC, $D3, $1F, $1F
|0BCAC1| db $63 ; Increment fill
|0BCAC2| db $D4
|0BCAC3| db $01 ; Raw block
|0BCAC4| db $2F, $A5
|0BCAC6| db $62 ; Increment fill
|0BCAC7| db $D8
|0BCAC8| db $00 ; Raw block
|0BCAC9| db $47
|0BCACA| db $66 ; Increment fill
|0BCACB| db $DB
|0BCACC| db $05 ; Raw block
|0BCACD| db $30, $E2, $E3, $38, $E4, $47
|0BCAD3| db $64 ; Increment fill
|0BCAD4| db $E5
|0BCAD5| db $62 ; Increment fill
|0BCAD6| db $30
|0BCAD7| db $03 ; Raw block
|0BCAD8| db $30, $EA, $69, $77
|0BCADC| db $62 ; Increment fill
|0BCADD| db $EB
|0BCADE| db $0B ; Raw block
|0BCADF| db $47, $47, $EE, $60, $EF, $F0, $2E, $2F
|0BCAE7| db $F1, $69, $F2, $97
|0BCAEB| db $63 ; Increment fill
|0BCAEC| db $F3
|0BCAED| db $07 ; Raw block
|0BCAEE| db $A0, $F7, $F8, $8A, $28, $29, $27, $2A
|0BCAF6| db $62 ; Increment fill
|0BCAF7| db $F9
|0BCAF8| db $07 ; Raw block
|0BCAF9| db $29, $B0, $FC, $F6, $FD, $47, $FE, $FF
|0BCB01| db $83 ; Copy past
|0BCB02| dw $7A00
|0BCB04| db $14 ; Raw block
|0BCB05| db $00, $01, $B0, $3B, $32, $02, $FC, $03
|0BCB0D| db $51, $04, $8D, $05, $D7, $2F, $F1, $69
|0BCB15| db $45, $47, $B0, $2C, $AB
|0BCB1A| db $62 ; Increment fill
|0BCB1B| db $06
|0BCB1C| db $05 ; Raw block
|0BCB1D| db $5E, $09, $94, $0A, $0B, $2A
|0BCB23| db $65 ; Increment fill
|0BCB24| db $0C
|0BCB25| db $0D ; Raw block
|0BCB26| db $29, $0F, $12, $13, $5E, $09, $94, $14
|0BCB2E| db $30, $00, $92, $D9, $15, $16
|0BCB34| db $62 ; Increment fill
|0BCB35| db $30
|0BCB36| db $17 ; Raw block
|0BCB37| db $17, $30, $18, $5E, $09, $94, $19, $69
|0BCB3F| db $45, $47, $47, $1A, $F0, $2E, $BC, $2D
|0BCB47| db $68, $69, $1B, $81, $1C, $A7, $A8, $A8
|0BCB4F| db $63 ; Increment fill
|0BCB50| db $1D
|0BCB51| db $83 ; Copy past
|0BCB52| dw $1C00
|0BCB54| db $FF ; End of Map 41

;===================================================================================================

OverworldMap32_Screen42_High:
|0BCB55| db $28 ; Repeat byte
|0BCB56| db $00
|0BCB57| db $01 ; Raw block
|0BCB58| db $01, $12
|0BCB5A| db $24 ; Repeat byte
|0BCB5B| db $01
|0BCB5C| db $26 ; Repeat byte
|0BCB5D| db $00
|0BCB5E| db $26 ; Repeat byte
|0BCB5F| db $01
|0BCB60| db $01 ; Raw block
|0BCB61| db $12, $01
|0BCB63| db $26 ; Repeat byte
|0BCB64| db $00
|0BCB65| db $27 ; Repeat byte
|0BCB66| db $01
|0BCB67| db $02 ; Raw block
|0BCB68| db $12, $01, $01
|0BCB6B| db $23 ; Repeat byte
|0BCB6C| db $00
|0BCB6D| db $29 ; Repeat byte
|0BCB6E| db $01
|0BCB6F| db $03 ; Raw block
|0BCB70| db $00, $01, $01, $00
|0BCB74| db $2B ; Repeat byte
|0BCB75| db $01
|0BCB76| db $83 ; Copy past
|0BCB77| dw $4000
|0BCB79| db $22 ; Repeat byte
|0BCB7A| db $01
|0BCB7B| db $01 ; Raw block
|0BCB7C| db $00, $00
|0BCB7E| db $26 ; Repeat byte
|0BCB7F| db $01
|0BCB80| db $00 ; Raw block
|0BCB81| db $00
|0BCB82| db $23 ; Repeat byte
|0BCB83| db $01
|0BCB84| db $22 ; Repeat byte
|0BCB85| db $00
|0BCB86| db $04 ; Raw block
|0BCB87| db $12, $12, $0B, $0B, $12
|0BCB8C| db $22 ; Repeat byte
|0BCB8D| db $01
|0BCB8E| db $00 ; Raw block
|0BCB8F| db $00
|0BCB90| db $24 ; Repeat byte
|0BCB91| db $01
|0BCB92| db $02 ; Raw block
|0BCB93| db $00, $12, $01
|0BCB96| db $24 ; Repeat byte
|0BCB97| db $12
|0BCB98| db $84 ; Copy past
|0BCB99| dw $3E00
|0BCB9B| db $23 ; Repeat byte
|0BCB9C| db $00
|0BCB9D| db $01 ; Raw block
|0BCB9E| db $01, $01
|0BCBA0| db $22 ; Repeat byte
|0BCBA1| db $00
|0BCBA2| db $23 ; Repeat byte
|0BCBA3| db $01
|0BCBA4| db $00 ; Raw block
|0BCBA5| db $00
|0BCBA6| db $22 ; Repeat byte
|0BCBA7| db $01
|0BCBA8| db $22 ; Repeat byte
|0BCBA9| db $00
|0BCBAA| db $01 ; Raw block
|0BCBAB| db $01, $00
|0BCBAD| db $26 ; Repeat byte
|0BCBAE| db $01
|0BCBAF| db $00 ; Raw block
|0BCBB0| db $00
|0BCBB1| db $23 ; Repeat byte
|0BCBB2| db $01
|0BCBB3| db $01 ; Raw block
|0BCBB4| db $00, $00
|0BCBB6| db $83 ; Copy past
|0BCBB7| dw $1E00
|0BCBB9| db $24 ; Repeat byte
|0BCBBA| db $01
|0BCBBB| db $00 ; Raw block
|0BCBBC| db $00
|0BCBBD| db $23 ; Repeat byte
|0BCBBE| db $01
|0BCBBF| db $00 ; Raw block
|0BCBC0| db $00
|0BCBC1| db $29 ; Repeat byte
|0BCBC2| db $01
|0BCBC3| db $00 ; Raw block
|0BCBC4| db $00
|0BCBC5| db $23 ; Repeat byte
|0BCBC6| db $01
|0BCBC7| db $01 ; Raw block
|0BCBC8| db $00, $00
|0BCBCA| db $28 ; Repeat byte
|0BCBCB| db $01
|0BCBCC| db $00 ; Raw block
|0BCBCD| db $00
|0BCBCE| db $22 ; Repeat byte
|0BCBCF| db $01
|0BCBD0| db $00 ; Raw block
|0BCBD1| db $00
|0BCBD2| db $2A ; Repeat byte
|0BCBD3| db $01
|0BCBD4| db $22 ; Repeat byte
|0BCBD5| db $00
|0BCBD6| db $2C ; Repeat byte
|0BCBD7| db $01
|0BCBD8| db $83 ; Copy past
|0BCBD9| dw $9500
|0BCBDB| db $2B ; Repeat byte
|0BCBDC| db $01
|0BCBDD| db $FF ; End of Map 42

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen42_Low:
|0BCBDE| db $01 ; Raw block
|0BCBDF| db $07, $08
|0BCBE1| db $62 ; Increment fill
|0BCBE2| db $06
|0BCBE3| db $05 ; Raw block
|0BCBE4| db $06, $07, $FE, $FF, $00, $21
|0BCBEA| db $22 ; Repeat byte
|0BCBEB| db $02
|0BCBEC| db $01 ; Raw block
|0BCBED| db $03, $03
|0BCBEF| db $62 ; Increment fill
|0BCBF0| db $00
|0BCBF1| db $62 ; Increment fill
|0BCBF2| db $00
|0BCBF3| db $03 ; Raw block
|0BCBF4| db $00, $04, $05, $00
|0BCBF8| db $23 ; Repeat byte
|0BCBF9| db $06
|0BCBFA| db $01 ; Raw block
|0BCBFB| db $21, $03
|0BCBFD| db $62 ; Increment fill
|0BCBFE| db $09
|0BCBFF| db $62 ; Increment fill
|0BCC00| db $09
|0BCC01| db $00 ; Raw block
|0BCC02| db $09
|0BCC03| db $62 ; Increment fill
|0BCC04| db $07
|0BCC05| db $22 ; Repeat byte
|0BCC06| db $0A
|0BCC07| db $04 ; Raw block
|0BCC08| db $0B, $0C, $22, $0E, $0F
|0BCC0D| db $83 ; Copy past
|0BCC0E| dw $0200
|0BCC10| db $63 ; Increment fill
|0BCC11| db $10
|0BCC12| db $22 ; Repeat byte
|0BCC13| db $15
|0BCC14| db $62 ; Increment fill
|0BCC15| db $16
|0BCC16| db $04 ; Raw block
|0BCC17| db $1D, $19, $1A, $00, $04
|0BCC1C| db $62 ; Increment fill
|0BCC1D| db $1B
|0BCC1E| db $02 ; Raw block
|0BCC1F| db $5A, $1F, $21
|0BCC22| db $64 ; Increment fill
|0BCC23| db $21
|0BCC24| db $0A ; Raw block
|0BCC25| db $B6, $26, $27, $09, $07, $28, $29, $99
|0BCC2D| db $99, $2A, $2B
|0BCC30| db $63 ; Increment fill
|0BCC31| db $2B
|0BCC32| db $01 ; Raw block
|0BCC33| db $25, $09
|0BCC35| db $63 ; Increment fill
|0BCC36| db $2F
|0BCC37| db $0C ; Raw block
|0BCC38| db $7C, $1D, $1D, $23, $24, $C8, $C9, $25
|0BCC40| db $37, $2E, $25, $07, $32
|0BCC45| db $63 ; Increment fill
|0BCC46| db $38
|0BCC47| db $02 ; Raw block
|0BCC48| db $1D, $26, $33
|0BCC4B| db $64 ; Increment fill
|0BCC4C| db $27
|0BCC4D| db $06 ; Raw block
|0BCC4E| db $2E, $25, $00, $04, $3B, $91, $8E
|0BCC55| db $22 ; Repeat byte
|0BCC56| db $1D
|0BCC57| db $00 ; Raw block
|0BCC58| db $45
|0BCC59| db $22 ; Repeat byte
|0BCC5A| db $1D
|0BCC5B| db $00 ; Raw block
|0BCC5C| db $41
|0BCC5D| db $62 ; Increment fill
|0BCC5E| db $48
|0BCC5F| db $04 ; Raw block
|0BCC60| db $09, $07, $4B, $4C, $1D
|0BCC65| db $43 ; Repeat word
|0BCC66| dw $991D
|0BCC68| db $01 ; Raw block
|0BCC69| db $50, $51
|0BCC6B| db $64 ; Increment fill
|0BCC6C| db $51
|0BCC6D| db $0B ; Raw block
|0BCC6E| db $07, $32, $56, $43, $44, $1D, $1D, $2C
|0BCC76| db $5A, $1D, $1D, $41
|0BCC7A| db $63 ; Increment fill
|0BCC7B| db $5B
|0BCC7C| db $16 ; Raw block
|0BCC7D| db $00, $04, $5F, $4E, $4F, $1D, $60, $1E
|0BCC85| db $61, $62, $41, $48, $49, $63, $64, $00
|0BCC8D| db $09, $07, $57, $58, $65, $1D, $1D
|0BCC94| db $62 ; Increment fill
|0BCC95| db $66
|0BCC96| db $0D ; Raw block
|0BCC97| db $52, $53, $63, $69, $49, $6A, $07, $32
|0BCC9F| db $6B, $6C, $98, $6D, $2D, $2D
|0BCCA5| db $63 ; Increment fill
|0BCCA6| db $6E
|0BCCA7| db $0A ; Raw block
|0BCCA8| db $69, $49, $6A, $06, $00, $01, $7F, $3C
|0BCCB0| db $72, $4B, $4B
|0BCCB3| db $22 ; Repeat byte
|0BCCB4| db $6D
|0BCCB5| db $10 ; Raw block
|0BCCB6| db $70, $71, $73, $00, $06, $06, $09, $0A
|0BCCBE| db $74, $1D, $75, $76, $72, $76, $1D, $72
|0BCCC6| db $77
|0BCCC7| db $84 ; Copy past
|0BCCC8| dw $EB00
|0BCCCA| db $FF ; End of Map 42

;===================================================================================================

OverworldMap32_Screen43_High:
|0BCCCB| db $31 ; Repeat byte
|0BCCCC| db $12
|0BCCCD| db $00 ; Raw block
|0BCCCE| db $01
|0BCCCF| db $24 ; Repeat byte
|0BCCD0| db $12
|0BCCD1| db $01 ; Raw block
|0BCCD2| db $01, $01
|0BCCD4| db $26 ; Repeat byte
|0BCCD5| db $12
|0BCCD6| db $03 ; Raw block
|0BCCD7| db $01, $00, $02, $02
|0BCCDB| db $22 ; Repeat byte
|0BCCDC| db $01
|0BCCDD| db $00 ; Raw block
|0BCCDE| db $00
|0BCCDF| db $27 ; Repeat byte
|0BCCE0| db $12
|0BCCE1| db $07 ; Raw block
|0BCCE2| db $01, $01, $00, $03, $00, $00, $03, $00
|0BCCEA| db $28 ; Repeat byte
|0BCCEB| db $12
|0BCCEC| db $28 ; Repeat byte
|0BCCED| db $01
|0BCCEE| db $27 ; Repeat byte
|0BCCEF| db $12
|0BCCF0| db $26 ; Repeat byte
|0BCCF1| db $01
|0BCCF2| db $34 ; Repeat byte
|0BCCF3| db $12
|0BCCF4| db $01 ; Raw block
|0BCCF5| db $01, $01
|0BCCF7| db $26 ; Repeat byte
|0BCCF8| db $12
|0BCCF9| db $26 ; Repeat byte
|0BCCFA| db $01
|0BCCFB| db $02 ; Raw block
|0BCCFC| db $12, $01, $01
|0BCCFF| db $24 ; Repeat byte
|0BCD00| db $12
|0BCD01| db $08 ; Raw block
|0BCD02| db $01, $00, $12, $00, $04, $02, $04, $00
|0BCD0A| db $04
|0BCD0B| db $29 ; Repeat byte
|0BCD0C| db $01
|0BCD0D| db $04 ; Raw block
|0BCD0E| db $04, $12, $01, $12, $02
|0BCD13| db $83 ; Copy past
|0BCD14| dw $3000
|0BCD16| db $06 ; Raw block
|0BCD17| db $00, $12, $12, $00, $01, $01, $05
|0BCD1E| db $25 ; Repeat byte
|0BCD1F| db $12
|0BCD20| db $24 ; Repeat byte
|0BCD21| db $01
|0BCD22| db $23 ; Repeat byte
|0BCD23| db $00
|0BCD24| db $26 ; Repeat byte
|0BCD25| db $12
|0BCD26| db $26 ; Repeat byte
|0BCD27| db $01
|0BCD28| db $03 ; Raw block
|0BCD29| db $12, $00, $00, $07
|0BCD2D| db $24 ; Repeat byte
|0BCD2E| db $12
|0BCD2F| db $24 ; Repeat byte
|0BCD30| db $01
|0BCD31| db $00 ; Raw block
|0BCD32| db $02
|0BCD33| db $83 ; Copy past
|0BCD34| dw $A000
|0BCD36| db $05 ; Raw block
|0BCD37| db $0E, $07, $07, $12, $02, $12
|0BCD3D| db $24 ; Repeat byte
|0BCD3E| db $01
|0BCD3F| db $83 ; Copy past
|0BCD40| dw $2300
|0BCD42| db $06 ; Raw block
|0BCD43| db $00, $00, $0B, $0B, $00, $12, $00
|0BCD4A| db $24 ; Repeat byte
|0BCD4B| db $01
|0BCD4C| db $2A ; Repeat byte
|0BCD4D| db $02
|0BCD4E| db $FF ; End of Map 43

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen43_Low:
|0BCD4F| db $71 ; Increment fill
|0BCD50| db $2D
|0BCD51| db $02 ; Raw block
|0BCD52| db $88, $3F, $30
|0BCD55| db $62 ; Increment fill
|0BCD56| db $40
|0BCD57| db $01 ; Raw block
|0BCD58| db $8B, $89
|0BCD5A| db $66 ; Increment fill
|0BCD5B| db $43
|0BCD5C| db $07 ; Raw block
|0BCD5D| db $93, $B2, $30, $31, $C3, $8A, $CC, $AA
|0BCD65| db $63 ; Increment fill
|0BCD66| db $4A
|0BCD67| db $22 ; Repeat byte
|0BCD68| db $4E
|0BCD69| db $09 ; Raw block
|0BCD6A| db $4F, $9F, $A0, $9F, $5F, $1C, $1D, $5F
|0BCD72| db $B2, $4A
|0BCD74| db $62 ; Increment fill
|0BCD75| db $50
|0BCD76| db $22 ; Repeat byte
|0BCD77| db $53
|0BCD78| db $03 ; Raw block
|0BCD79| db $54, $55, $A9, $AA
|0BCD7D| db $24 ; Repeat byte
|0BCD7E| db $AB
|0BCD7F| db $01 ; Raw block
|0BCD80| db $AC, $AD
|0BCD82| db $66 ; Increment fill
|0BCD83| db $56
|0BCD84| db $01 ; Raw block
|0BCD85| db $55, $B2
|0BCD87| db $24 ; Repeat byte
|0BCD88| db $B3
|0BCD89| db $00 ; Raw block
|0BCD8A| db $B4
|0BCD8B| db $69 ; Increment fill
|0BCD8C| db $5D
|0BCD8D| db $24 ; Repeat byte
|0BCD8E| db $67
|0BCD8F| db $65 ; Increment fill
|0BCD90| db $68
|0BCD91| db $01 ; Raw block
|0BCD92| db $C3, $C4
|0BCD94| db $66 ; Increment fill
|0BCD95| db $6E
|0BCD96| db $24 ; Repeat byte
|0BCD97| db $C3
|0BCD98| db $06 ; Raw block
|0BCD99| db $8A, $CC, $75, $CD, $CE, $76, $77
|0BCDA0| db $62 ; Increment fill
|0BCDA1| db $77
|0BCDA2| db $0A ; Raw block
|0BCDA3| db $D1, $9F, $75, $1C, $7D, $08, $C2, $9F
|0BCDAB| db $7D, $D6, $D7
|0BCDAE| db $23 ; Repeat byte
|0BCDAF| db $C3
|0BCDB0| db $63 ; Increment fill
|0BCDB1| db $D8
|0BCDB2| db $0F ; Raw block
|0BCDB3| db $81, $7A, $02, $7B, $61, $7A, $E2, $E3
|0BCDBB| db $1C, $9F, $75, $75, $B2, $E4, $E5, $5A
|0BCDC3| db $65 ; Increment fill
|0BCDC4| db $7C
|0BCDC5| db $64 ; Increment fill
|0BCDC6| db $ED
|0BCDC7| db $07 ; Raw block
|0BCDC8| db $1D, $9F, $1C, $1D, $82, $81, $83, $84
|0BCDD0| db $22 ; Repeat byte
|0BCDD1| db $85
|0BCDD2| db $01 ; Raw block
|0BCDD3| db $ED, $ED
|0BCDD5| db $63 ; Increment fill
|0BCDD6| db $F8
|0BCDD7| db $04 ; Raw block
|0BCDD8| db $F2, $75, $9F, $AB, $00
|0BCDDD| db $24 ; Repeat byte
|0BCDDE| db $85
|0BCDDF| db $83 ; Copy past
|0BCDE0| dw $C000
|0BCDE2| db $0B ; Raw block
|0BCDE3| db $FF, $00, $FB, $F2, $AA, $9F, $34, $00
|0BCDEB| db $02, $86, $5B, $87
|0BCDEF| db $84 ; Copy past
|0BCDF0| dw $D000
|0BCDF2| db $00 ; Raw block
|0BCDF3| db $03
|0BCDF4| db $84 ; Copy past
|0BCDF5| dw $D500
|0BCDF7| db $04 ; Raw block
|0BCDF8| db $3C, $3D, $1C, $75, $B2
|0BCDFD| db $85 ; Copy past
|0BCDFE| dw $E000
|0BCE00| db $02 ; Raw block
|0BCE01| db $03, $00, $05
|0BCE04| db $26 ; Repeat byte
|0BCE05| db $07
|0BCE06| db $FF ; End of Map 43

;===================================================================================================

OverworldMap32_Screen44_High:
|0BCE07| db $E4, $2C ; EXT Repeat byte
|0BCE09| db $12
|0BCE0A| db $00 ; Raw block
|0BCE0B| db $02
|0BCE0C| db $2E ; Repeat byte
|0BCE0D| db $12
|0BCE0E| db $05 ; Raw block
|0BCE0F| db $00, $02, $01, $12, $12, $02
|0BCE15| db $29 ; Repeat byte
|0BCE16| db $12
|0BCE17| db $22 ; Repeat byte
|0BCE18| db $02
|0BCE19| db $03 ; Raw block
|0BCE1A| db $12, $12, $01, $00
|0BCE1E| db $27 ; Repeat byte
|0BCE1F| db $12
|0BCE20| db $25 ; Repeat byte
|0BCE21| db $01
|0BCE22| db $28 ; Repeat byte
|0BCE23| db $00
|0BCE24| db $00 ; Raw block
|0BCE25| db $05
|0BCE26| db $22 ; Repeat byte
|0BCE27| db $01
|0BCE28| db $05 ; Raw block
|0BCE29| db $02, $00, $00, $12, $00, $04
|0BCE2F| db $27 ; Repeat byte
|0BCE30| db $02
|0BCE31| db $09 ; Raw block
|0BCE32| db $01, $01, $12, $02, $04, $00, $00, $02
|0BCE3A| db $02, $01
|0BCE3C| db $22 ; Repeat byte
|0BCE3D| db $02
|0BCE3E| db $24 ; Repeat byte
|0BCE3F| db $01
|0BCE40| db $07 ; Raw block
|0BCE41| db $02, $01, $12, $04, $04, $02, $02, $12
|0BCE49| db $23 ; Repeat byte
|0BCE4A| db $02
|0BCE4B| db $00 ; Raw block
|0BCE4C| db $00
|0BCE4D| db $83 ; Copy past
|0BCE4E| dw $8D00
|0BCE50| db $22 ; Repeat byte
|0BCE51| db $12
|0BCE52| db $00 ; Raw block
|0BCE53| db $04
|0BCE54| db $22 ; Repeat byte
|0BCE55| db $02
|0BCE56| db $04 ; Raw block
|0BCE57| db $01, $03, $12, $02, $02
|0BCE5C| db $83 ; Copy past
|0BCE5D| dw $8300
|0BCE5F| db $23 ; Repeat byte
|0BCE60| db $12
|0BCE61| db $01 ; Raw block
|0BCE62| db $00, $02
|0BCE64| db $43 ; Repeat word
|0BCE65| dw $0612
|0BCE67| db $25 ; Repeat byte
|0BCE68| db $02
|0BCE69| db $02 ; Raw block
|0BCE6A| db $12, $12, $07
|0BCE6D| db $83 ; Copy past
|0BCE6E| dw $B300
|0BCE70| db $03 ; Raw block
|0BCE71| db $12, $0B, $01, $12
|0BCE75| db $22 ; Repeat byte
|0BCE76| db $02
|0BCE77| db $06 ; Raw block
|0BCE78| db $01, $01, $07, $07, $09, $00, $00
|0BCE7F| db $22 ; Repeat byte
|0BCE80| db $02
|0BCE81| db $23 ; Repeat byte
|0BCE82| db $12
|0BCE83| db $05 ; Raw block
|0BCE84| db $01, $02, $02, $03, $0B, $0B
|0BCE8A| db $25 ; Repeat byte
|0BCE8B| db $02
|0BCE8C| db $83 ; Copy past
|0BCE8D| dw $A900
|0BCE8F| db $03 ; Raw block
|0BCE90| db $01, $02, $01, $01
|0BCE94| db $22 ; Repeat byte
|0BCE95| db $02
|0BCE96| db $22 ; Repeat byte
|0BCE97| db $01
|0BCE98| db $02 ; Raw block
|0BCE99| db $02, $02, $01
|0BCE9C| db $23 ; Repeat byte
|0BCE9D| db $02
|0BCE9E| db $22 ; Repeat byte
|0BCE9F| db $01
|0BCEA0| db $FF ; End of Map 44

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen44_Low:
|0BCEA1| db $00 ; Raw block
|0BCEA2| db $2D
|0BCEA3| db $EC, $2B ; EXT Increment fill
|0BCEA5| db $88
|0BCEA6| db $00 ; Raw block
|0BCEA7| db $31
|0BCEA8| db $6E ; Increment fill
|0BCEA9| db $B4
|0BCEAA| db $05 ; Raw block
|0BCEAB| db $1D, $3E, $C3, $C3, $C4, $41
|0BCEB1| db $69 ; Increment fill
|0BCEB2| db $C5
|0BCEB3| db $06 ; Raw block
|0BCEB4| db $4B, $4C, $4C, $CF, $42, $CC, $AA
|0BCEBB| db $67 ; Increment fill
|0BCEBC| db $D0
|0BCEBD| db $19 ; Raw block
|0BCEBE| db $48, $49, $EB, $EB, $8A, $CC, $1C, $1D
|0BCEC6| db $9F, $1D, $1D, $AA, $1D, $B2, $1C, $46
|0BCECE| db $2E, $00, $06, $5D, $AA, $1D, $75, $AA
|0BCED6| db $B5, $60
|0BCED8| db $24 ; Repeat byte
|0BCED9| db $61
|0BCEDA| db $0B ; Raw block
|0BCEDB| db $62, $63, $17, $0C, $D8, $08, $C2, $AA
|0BCEE3| db $1D, $65, $02, $22
|0BCEE7| db $62 ; Increment fill
|0BCEE8| db $66
|0BCEE9| db $0C ; Raw block
|0BCEEA| db $22, $23, $03, $03, $17, $69, $02, $7B
|0BCEF2| db $C4, $B5, $6E, $6F, $D9
|0BCEF7| db $63 ; Increment fill
|0BCEF8| db $71
|0BCEF9| db $04 ; Raw block
|0BCEFA| db $B2, $E4, $03, $75, $71
|0BCEFF| db $62 ; Increment fill
|0BCF00| db $DA
|0BCF01| db $00 ; Raw block
|0BCF02| db $C5
|0BCF03| db $62 ; Increment fill
|0BCF04| db $7A
|0BCF05| db $12 ; Raw block
|0BCF06| db $2D, $FF, $DD, $7F, $80, $1D, $81, $82
|0BCF0E| db $71, $83, $84, $DE, $DF, $9F, $87, $E0
|0BCF16| db $F5, $E1, $3A
|0BCF19| db $85 ; Copy past
|0BCF1A| dw $0400
|0BCF1C| db $0A ; Raw block
|0BCF1D| db $85, $85, $02, $E2, $B2, $92, $E3, $DD
|0BCF25| db $3D, $2D, $E4
|0BCF28| db $62 ; Increment fill
|0BCF29| db $96
|0BCF2A| db $06 ; Raw block
|0BCF2B| db $53, $6A, $00, $02, $DD, $9F, $1D
|0BCF32| db $62 ; Increment fill
|0BCF33| db $99
|0BCF34| db $62 ; Increment fill
|0BCF35| db $E5
|0BCF36| db $09 ; Raw block
|0BCF37| db $75, $2E, $82, $9F, $20, $3C, $3D, $A1
|0BCF3F| db $07, $07
|0BCF41| db $62 ; Increment fill
|0BCF42| db $A2
|0BCF43| db $17 ; Raw block
|0BCF44| db $E8, $A6, $A7, $9F, $2E, $A8, $03, $F8
|0BCF4C| db $07, $07, $AA, $F8, $F8, $FA, $05, $07
|0BCF54| db $EF, $09, $07, $07, $AC, $03, $03, $F8
|0BCF5C| db $FF ; End of Map 44

;===================================================================================================

OverworldMap32_Screen45_High:
|0BCF5D| db $3B ; Repeat byte
|0BCF5E| db $12
|0BCF5F| db $03 ; Raw block
|0BCF60| db $13, $13, $12, $12
|0BCF64| db $29 ; Repeat byte
|0BCF65| db $13
|0BCF66| db $01 ; Raw block
|0BCF67| db $12, $12
|0BCF69| db $23 ; Repeat byte
|0BCF6A| db $13
|0BCF6B| db $00 ; Raw block
|0BCF6C| db $01
|0BCF6D| db $22 ; Repeat byte
|0BCF6E| db $13
|0BCF6F| db $00 ; Raw block
|0BCF70| db $12
|0BCF71| db $2A ; Repeat byte
|0BCF72| db $13
|0BCF73| db $22 ; Repeat byte
|0BCF74| db $02
|0BCF75| db $01 ; Raw block
|0BCF76| db $01, $01
|0BCF78| db $28 ; Repeat byte
|0BCF79| db $13
|0BCF7A| db $01 ; Raw block
|0BCF7B| db $01, $01
|0BCF7D| db $22 ; Repeat byte
|0BCF7E| db $02
|0BCF7F| db $01 ; Raw block
|0BCF80| db $00, $02
|0BCF82| db $28 ; Repeat byte
|0BCF83| db $13
|0BCF84| db $01 ; Raw block
|0BCF85| db $00, $00
|0BCF87| db $23 ; Repeat byte
|0BCF88| db $02
|0BCF89| db $00 ; Raw block
|0BCF8A| db $00
|0BCF8B| db $28 ; Repeat byte
|0BCF8C| db $13
|0BCF8D| db $02 ; Raw block
|0BCF8E| db $00, $00, $13
|0BCF91| db $83 ; Copy past
|0BCF92| dw $5100
|0BCF94| db $28 ; Repeat byte
|0BCF95| db $13
|0BCF96| db $01 ; Raw block
|0BCF97| db $00, $00
|0BCF99| db $25 ; Repeat byte
|0BCF9A| db $02
|0BCF9B| db $00 ; Raw block
|0BCF9C| db $13
|0BCF9D| db $22 ; Repeat byte
|0BCF9E| db $12
|0BCF9F| db $22 ; Repeat byte
|0BCFA0| db $13
|0BCFA1| db $01 ; Raw block
|0BCFA2| db $02, $01
|0BCFA4| db $25 ; Repeat byte
|0BCFA5| db $02
|0BCFA6| db $22 ; Repeat byte
|0BCFA7| db $12
|0BCFA8| db $01 ; Raw block
|0BCFA9| db $13, $12
|0BCFAB| db $22 ; Repeat byte
|0BCFAC| db $13
|0BCFAD| db $22 ; Repeat byte
|0BCFAE| db $03
|0BCFAF| db $02 ; Raw block
|0BCFB0| db $02, $02, $03
|0BCFB3| db $83 ; Copy past
|0BCFB4| dw $1C00
|0BCFB6| db $26 ; Repeat byte
|0BCFB7| db $13
|0BCFB8| db $00 ; Raw block
|0BCFB9| db $03
|0BCFBA| db $22 ; Repeat byte
|0BCFBB| db $02
|0BCFBC| db $03 ; Raw block
|0BCFBD| db $03, $13, $12, $12
|0BCFC1| db $26 ; Repeat byte
|0BCFC2| db $13
|0BCFC3| db $01 ; Raw block
|0BCFC4| db $12, $13
|0BCFC6| db $22 ; Repeat byte
|0BCFC7| db $02
|0BCFC8| db $00 ; Raw block
|0BCFC9| db $03
|0BCFCA| db $83 ; Copy past
|0BCFCB| dw $3300
|0BCFCD| db $00 ; Raw block
|0BCFCE| db $12
|0BCFCF| db $24 ; Repeat byte
|0BCFD0| db $13
|0BCFD1| db $02 ; Raw block
|0BCFD2| db $12, $12, $02
|0BCFD5| db $22 ; Repeat byte
|0BCFD6| db $03
|0BCFD7| db $2B ; Repeat byte
|0BCFD8| db $13
|0BCFD9| db $00 ; Raw block
|0BCFDA| db $03
|0BCFDB| db $2F ; Repeat byte
|0BCFDC| db $01
|0BCFDD| db $2F ; Repeat byte
|0BCFDE| db $03
|0BCFDF| db $FF ; End of Map 45

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen45_Low:
|0BCFE0| db $67 ; Increment fill
|0BCFE1| db $E9
|0BCFE2| db $01 ; Raw block
|0BCFE3| db $3B, $3B
|0BCFE5| db $65 ; Increment fill
|0BCFE6| db $F1
|0BCFE7| db $00 ; Raw block
|0BCFE8| db $95
|0BCFE9| db $67 ; Increment fill
|0BCFEA| db $F7
|0BCFEB| db $06 ; Raw block
|0BCFEC| db $3B, $3B, $FF, $00, $01, $96, $F6
|0BCFF3| db $64 ; Increment fill
|0BCFF4| db $02
|0BCFF5| db $01 ; Raw block
|0BCFF6| db $00, $00
|0BCFF8| db $62 ; Increment fill
|0BCFF9| db $07
|0BCFFA| db $06 ; Raw block
|0BCFFB| db $3B, $F1, $0A, $00, $0B, $0C, $C3
|0BD002| db $62 ; Increment fill
|0BD003| db $0D
|0BD004| db $04 ; Raw block
|0BD005| db $F6, $10, $11, $00, $00
|0BD00A| db $66 ; Increment fill
|0BD00B| db $12
|0BD00C| db $04 ; Raw block
|0BD00D| db $CC, $CD, $31, $C3, $C3
|0BD012| db $68 ; Increment fill
|0BD013| db $19
|0BD014| db $01 ; Raw block
|0BD015| db $C3, $C3
|0BD017| db $62 ; Increment fill
|0BD018| db $D1
|0BD019| db $05 ; Raw block
|0BD01A| db $1D, $D4, $22, $23, $00, $24
|0BD020| db $22 ; Repeat byte
|0BD021| db $00
|0BD022| db $03 ; Raw block
|0BD023| db $25, $26, $9F, $A9
|0BD027| db $63 ; Increment fill
|0BD028| db $DB
|0BD029| db $02 ; Raw block
|0BD02A| db $AA, $27, $28
|0BD02D| db $24 ; Repeat byte
|0BD02E| db $29
|0BD02F| db $08 ; Raw block
|0BD030| db $2A, $2B, $9F, $B2, $2C, $DC, $E8, $1D
|0BD038| db $E9
|0BD039| db $68 ; Increment fill
|0BD03A| db $2D
|0BD03B| db $0B ; Raw block
|0BD03C| db $AA, $9F, $F2, $DC, $F3, $F4, $07, $AA
|0BD044| db $36, $38, $3A, $3B
|0BD048| db $62 ; Increment fill
|0BD049| db $37
|0BD04A| db $04 ; Raw block
|0BD04B| db $F7, $F2, $F8, $F2, $DC
|0BD050| db $62 ; Increment fill
|0BD051| db $F9
|0BD052| db $04 ; Raw block
|0BD053| db $5D, $69, $95, $3A, $47
|0BD058| db $62 ; Increment fill
|0BD059| db $3B
|0BD05A| db $62 ; Increment fill
|0BD05B| db $00
|0BD05C| db $07 ; Raw block
|0BD05D| db $F2, $DC, $03, $3E, $3F, $69, $F6, $40
|0BD065| db $22 ; Repeat byte
|0BD066| db $41
|0BD067| db $0A ; Raw block
|0BD068| db $00, $42, $3D, $09, $69, $F2, $DC, $0A
|0BD070| db $43, $F6, $F6
|0BD073| db $66 ; Increment fill
|0BD074| db $44
|0BD075| db $01 ; Raw block
|0BD076| db $A6, $4B
|0BD078| db $85 ; Copy past
|0BD079| dw $AF00
|0BD07B| db $02 ; Raw block
|0BD07C| db $4C, $45, $39
|0BD07F| db $64 ; Increment fill
|0BD080| db $4D
|0BD081| db $02 ; Raw block
|0BD082| db $B5, $4F, $69
|0BD085| db $62 ; Increment fill
|0BD086| db $13
|0BD087| db $63 ; Increment fill
|0BD088| db $52
|0BD089| db $62 ; Increment fill
|0BD08A| db $55
|0BD08B| db $05 ; Raw block
|0BD08C| db $55, $58, $59, $53, $5A, $1F
|0BD092| db $2F ; Repeat byte
|0BD093| db $06
|0BD094| db $2E ; Repeat byte
|0BD095| db $20
|0BD096| db $00 ; Raw block
|0BD097| db $21
|0BD098| db $FF ; End of Map 45

;===================================================================================================

OverworldMap32_Screen46_High:
|0BD099| db $22 ; Repeat byte
|0BD09A| db $13
|0BD09B| db $00 ; Raw block
|0BD09C| db $12
|0BD09D| db $22 ; Repeat byte
|0BD09E| db $13
|0BD09F| db $00 ; Raw block
|0BD0A0| db $12
|0BD0A1| db $2B ; Repeat byte
|0BD0A2| db $13
|0BD0A3| db $04 ; Raw block
|0BD0A4| db $12, $01, $13, $01, $01
|0BD0A9| db $22 ; Repeat byte
|0BD0AA| db $13
|0BD0AB| db $00 ; Raw block
|0BD0AC| db $12
|0BD0AD| db $23 ; Repeat byte
|0BD0AE| db $13
|0BD0AF| db $01 ; Raw block
|0BD0B0| db $12, $13
|0BD0B2| db $83 ; Copy past
|0BD0B3| dw $1600
|0BD0B5| db $07 ; Raw block
|0BD0B6| db $00, $00, $03, $13, $03, $01, $02, $12
|0BD0BE| db $24 ; Repeat byte
|0BD0BF| db $13
|0BD0C0| db $01 ; Raw block
|0BD0C1| db $03, $03
|0BD0C3| db $43 ; Repeat word
|0BD0C4| dw $0102
|0BD0C6| db $07 ; Raw block
|0BD0C7| db $13, $03, $00, $00, $02, $02, $01, $12
|0BD0CF| db $22 ; Repeat byte
|0BD0D0| db $13
|0BD0D1| db $01 ; Raw block
|0BD0D2| db $03, $02
|0BD0D4| db $83 ; Copy past
|0BD0D5| dw $0100
|0BD0D7| db $06 ; Raw block
|0BD0D8| db $03, $02, $02, $03, $03, $00, $02
|0BD0DF| db $27 ; Repeat byte
|0BD0E0| db $13
|0BD0E1| db $00 ; Raw block
|0BD0E2| db $03
|0BD0E3| db $22 ; Repeat byte
|0BD0E4| db $01
|0BD0E5| db $06 ; Raw block
|0BD0E6| db $03, $03, $00, $00, $03, $01, $12
|0BD0ED| db $22 ; Repeat byte
|0BD0EE| db $13
|0BD0EF| db $07 ; Raw block
|0BD0F0| db $12, $03, $00, $03, $03, $01, $01, $03
|0BD0F8| db $23 ; Repeat byte
|0BD0F9| db $00
|0BD0FA| db $01 ; Raw block
|0BD0FB| db $02, $12
|0BD0FD| db $22 ; Repeat byte
|0BD0FE| db $13
|0BD0FF| db $01 ; Raw block
|0BD100| db $03, $00
|0BD102| db $28 ; Repeat byte
|0BD103| db $03
|0BD104| db $01 ; Raw block
|0BD105| db $00, $13
|0BD107| db $83 ; Copy past
|0BD108| dw $6D00
|0BD10A| db $01 ; Raw block
|0BD10B| db $07, $00
|0BD10D| db $23 ; Repeat byte
|0BD10E| db $03
|0BD10F| db $02 ; Raw block
|0BD110| db $01, $01, $03
|0BD113| db $29 ; Repeat byte
|0BD114| db $02
|0BD115| db $62 ; Increment fill
|0BD116| db $01
|0BD117| db $01 ; Raw block
|0BD118| db $01, $01
|0BD11A| db $24 ; Repeat byte
|0BD11B| db $03
|0BD11C| db $23 ; Repeat byte
|0BD11D| db $01
|0BD11E| db $01 ; Raw block
|0BD11F| db $03, $03
|0BD121| db $23 ; Repeat byte
|0BD122| db $01
|0BD123| db $25 ; Repeat byte
|0BD124| db $03
|0BD125| db $23 ; Repeat byte
|0BD126| db $01
|0BD127| db $01 ; Raw block
|0BD128| db $03, $03
|0BD12A| db $22 ; Repeat byte
|0BD12B| db $01
|0BD12C| db $23 ; Repeat byte
|0BD12D| db $03
|0BD12E| db $00 ; Raw block
|0BD12F| db $13
|0BD130| db $27 ; Repeat byte
|0BD131| db $02
|0BD132| db $02 ; Raw block
|0BD133| db $03, $01, $01
|0BD136| db $23 ; Repeat byte
|0BD137| db $03
|0BD138| db $00 ; Raw block
|0BD139| db $13
|0BD13A| db $22 ; Repeat byte
|0BD13B| db $03
|0BD13C| db $01 ; Raw block
|0BD13D| db $05, $13
|0BD13F| db $23 ; Repeat byte
|0BD140| db $03
|0BD141| db $01 ; Raw block
|0BD142| db $01, $01
|0BD144| db $24 ; Repeat byte
|0BD145| db $03
|0BD146| db $22 ; Repeat byte
|0BD147| db $01
|0BD148| db $01 ; Raw block
|0BD149| db $03, $03
|0BD14B| db $24 ; Repeat byte
|0BD14C| db $01
|0BD14D| db $25 ; Repeat byte
|0BD14E| db $03
|0BD14F| db $22 ; Repeat byte
|0BD150| db $01
|0BD151| db $01 ; Raw block
|0BD152| db $13, $03
|0BD154| db $25 ; Repeat byte
|0BD155| db $01
|0BD156| db $FF ; End of Map 46

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen46_Low:
|0BD157| db $62 ; Increment fill
|0BD158| db $5B
|0BD159| db $00 ; Raw block
|0BD15A| db $EB
|0BD15B| db $62 ; Increment fill
|0BD15C| db $5E
|0BD15D| db $00 ; Raw block
|0BD15E| db $35
|0BD15F| db $69 ; Increment fill
|0BD160| db $61
|0BD161| db $06 ; Raw block
|0BD162| db $67, $6B, $3E, $88, $6C, $8B, $89
|0BD169| db $62 ; Increment fill
|0BD16A| db $6D
|0BD16B| db $12 ; Raw block
|0BD16C| db $6D, $0D, $0E, $67, $70, $F6, $4E, $71
|0BD174| db $93, $F2, $72, $1C, $1D, $32, $73, $34
|0BD17C| db $CC, $30, $3F
|0BD17F| db $64 ; Increment fill
|0BD180| db $74
|0BD181| db $1D ; Raw block
|0BD182| db $3A, $3B, $07, $A0, $A1, $AD, $79, $3D
|0BD18A| db $AA, $9F, $30, $31, $C3, $B4, $7A, $7B
|0BD192| db $3D, $40, $FB, $7C, $7D, $5D, $7E, $42
|0BD19A| db $4B, $4C, $43, $44, $1D, $3E
|0BD1A0| db $66 ; Increment fill
|0BD1A1| db $7F
|0BD1A2| db $0B ; Raw block
|0BD1A3| db $7E, $49, $52, $53, $EB, $4A, $4B, $A9
|0BD1AB| db $1C, $4D, $8B, $3F
|0BD1AF| db $62 ; Increment fill
|0BD1B0| db $86
|0BD1B1| db $0D ; Raw block
|0BD1B2| db $79, $4F, $FB, $50, $51, $0A, $0A, $52
|0BD1BA| db $1D, $B2, $1C, $1D, $30, $3F
|0BD1C0| db $62 ; Increment fill
|0BD1C1| db $89
|0BD1C2| db $01 ; Raw block
|0BD1C3| db $55, $9F
|0BD1C5| db $65 ; Increment fill
|0BD1C6| db $56
|0BD1C7| db $62 ; Increment fill
|0BD1C8| db $5B
|0BD1C9| db $08 ; Raw block
|0BD1CA| db $AA, $8C, $8B, $8B, $5E, $1C, $AF, $9F
|0BD1D2| db $56
|0BD1D3| db $62 ; Increment fill
|0BD1D4| db $60
|0BD1D5| db $04 ; Raw block
|0BD1D6| db $06, $06, $63, $F3, $F4
|0BD1DB| db $27 ; Repeat byte
|0BD1DC| db $07
|0BD1DD| db $04 ; Raw block
|0BD1DE| db $EF, $09, $64, $06, $06
|0BD1E3| db $84 ; Copy past
|0BD1E4| dw $0C00
|0BD1E6| db $23 ; Repeat byte
|0BD1E7| db $F8
|0BD1E8| db $01 ; Raw block
|0BD1E9| db $68, $69
|0BD1EB| db $22 ; Repeat byte
|0BD1EC| db $F8
|0BD1ED| db $00 ; Raw block
|0BD1EE| db $06
|0BD1EF| db $63 ; Increment fill
|0BD1F0| db $6A
|0BD1F1| db $01 ; Raw block
|0BD1F2| db $70, $6F
|0BD1F4| db $23 ; Repeat byte
|0BD1F5| db $E5
|0BD1F6| db $01 ; Raw block
|0BD1F7| db $70, $6F
|0BD1F9| db $22 ; Repeat byte
|0BD1FA| db $F8
|0BD1FB| db $62 ; Increment fill
|0BD1FC| db $6A
|0BD1FD| db $01 ; Raw block
|0BD1FE| db $6C, $8D
|0BD200| db $27 ; Repeat byte
|0BD201| db $07
|0BD202| db $03 ; Raw block
|0BD203| db $72, $F8, $F8, $74
|0BD207| db $22 ; Repeat byte
|0BD208| db $6C
|0BD209| db $00 ; Raw block
|0BD20A| db $8E
|0BD20B| db $22 ; Repeat byte
|0BD20C| db $76
|0BD20D| db $01 ; Raw block
|0BD20E| db $44, $8F
|0BD210| db $22 ; Repeat byte
|0BD211| db $76
|0BD212| db $03 ; Raw block
|0BD213| db $77, $F8, $F8, $74
|0BD217| db $22 ; Repeat byte
|0BD218| db $6C
|0BD219| db $00 ; Raw block
|0BD21A| db $6D
|0BD21B| db $22 ; Repeat byte
|0BD21C| db $F8
|0BD21D| db $01 ; Raw block
|0BD21E| db $6E, $79
|0BD220| db $24 ; Repeat byte
|0BD221| db $F8
|0BD222| db $01 ; Raw block
|0BD223| db $7A, $74
|0BD225| db $22 ; Repeat byte
|0BD226| db $6C
|0BD227| db $00 ; Raw block
|0BD228| db $6D
|0BD229| db $22 ; Repeat byte
|0BD22A| db $F8
|0BD22B| db $01 ; Raw block
|0BD22C| db $90, $64
|0BD22E| db $24 ; Repeat byte
|0BD22F| db $F8
|0BD230| db $00 ; Raw block
|0BD231| db $03
|0BD232| db $FF ; End of Map 46

;===================================================================================================

OverworldMap32_Screen47_High:
|0BD233| db $05 ; Raw block
|0BD234| db $12, $12, $13, $13, $12, $12
|0BD23A| db $28 ; Repeat byte
|0BD23B| db $13
|0BD23C| db $83 ; Copy past
|0BD23D| dw $0100
|0BD23F| db $27 ; Repeat byte
|0BD240| db $13
|0BD241| db $02 ; Raw block
|0BD242| db $12, $12, $13
|0BD245| db $24 ; Repeat byte
|0BD246| db $12
|0BD247| db $27 ; Repeat byte
|0BD248| db $01
|0BD249| db $24 ; Repeat byte
|0BD24A| db $13
|0BD24B| db $01 ; Raw block
|0BD24C| db $01, $01
|0BD24E| db $22 ; Repeat byte
|0BD24F| db $13
|0BD250| db $25 ; Repeat byte
|0BD251| db $00
|0BD252| db $01 ; Raw block
|0BD253| db $02, $01
|0BD255| db $22 ; Repeat byte
|0BD256| db $13
|0BD257| db $22 ; Repeat byte
|0BD258| db $03
|0BD259| db $22 ; Repeat byte
|0BD25A| db $00
|0BD25B| db $02 ; Raw block
|0BD25C| db $01, $03, $13
|0BD25F| db $83 ; Copy past
|0BD260| dw $4100
|0BD262| db $02 ; Raw block
|0BD263| db $13, $03, $13
|0BD266| db $22 ; Repeat byte
|0BD267| db $03
|0BD268| db $03 ; Raw block
|0BD269| db $00, $00, $13, $01
|0BD26D| db $22 ; Repeat byte
|0BD26E| db $13
|0BD26F| db $01 ; Raw block
|0BD270| db $03, $13
|0BD272| db $83 ; Copy past
|0BD273| dw $3A00
|0BD275| db $22 ; Repeat byte
|0BD276| db $03
|0BD277| db $03 ; Raw block
|0BD278| db $00, $00, $01, $13
|0BD27C| db $22 ; Repeat byte
|0BD27D| db $01
|0BD27E| db $0B ; Raw block
|0BD27F| db $13, $13, $00, $03, $12, $13, $01, $03
|0BD287| db $03, $13, $13, $01
|0BD28B| db $44 ; Repeat word
|0BD28C| dw $0013
|0BD28E| db $01 ; Raw block
|0BD28F| db $02, $00
|0BD291| db $83 ; Copy past
|0BD292| dw $7200
|0BD294| db $05 ; Raw block
|0BD295| db $03, $03, $00, $13, $03, $04
|0BD29B| db $44 ; Repeat word
|0BD29C| dw $1303
|0BD29E| db $01 ; Raw block
|0BD29F| db $00, $02
|0BD2A1| db $83 ; Copy past
|0BD2A2| dw $3E00
|0BD2A4| db $62 ; Increment fill
|0BD2A5| db $01
|0BD2A6| db $28 ; Repeat byte
|0BD2A7| db $13
|0BD2A8| db $00 ; Raw block
|0BD2A9| db $03
|0BD2AA| db $83 ; Copy past
|0BD2AB| dw $3E00
|0BD2AD| db $01 ; Raw block
|0BD2AE| db $00, $00
|0BD2B0| db $26 ; Repeat byte
|0BD2B1| db $13
|0BD2B2| db $07 ; Raw block
|0BD2B3| db $00, $02, $02, $13, $12, $13, $03, $01
|0BD2BB| db $22 ; Repeat byte
|0BD2BC| db $00
|0BD2BD| db $22 ; Repeat byte
|0BD2BE| db $13
|0BD2BF| db $03 ; Raw block
|0BD2C0| db $00, $00, $05, $02
|0BD2C4| db $83 ; Copy past
|0BD2C5| dw $0000
|0BD2C7| db $00 ; Raw block
|0BD2C8| db $03
|0BD2C9| db $22 ; Repeat byte
|0BD2CA| db $01
|0BD2CB| db $22 ; Repeat byte
|0BD2CC| db $02
|0BD2CD| db $06 ; Raw block
|0BD2CE| db $01, $00, $00, $05, $13, $13, $12
|0BD2D5| db $22 ; Repeat byte
|0BD2D6| db $13
|0BD2D7| db $02 ; Raw block
|0BD2D8| db $03, $01, $01
|0BD2DB| db $22 ; Repeat byte
|0BD2DC| db $02
|0BD2DD| db $22 ; Repeat byte
|0BD2DE| db $01
|0BD2DF| db $00 ; Raw block
|0BD2E0| db $03
|0BD2E1| db $26 ; Repeat byte
|0BD2E2| db $13
|0BD2E3| db $01 ; Raw block
|0BD2E4| db $12, $12
|0BD2E6| db $22 ; Repeat byte
|0BD2E7| db $13
|0BD2E8| db $03 ; Raw block
|0BD2E9| db $12, $01, $01, $03
|0BD2ED| db $22 ; Repeat byte
|0BD2EE| db $13
|0BD2EF| db $00 ; Raw block
|0BD2F0| db $12
|0BD2F1| db $27 ; Repeat byte
|0BD2F2| db $13
|0BD2F3| db $22 ; Repeat byte
|0BD2F4| db $12
|0BD2F5| db $43 ; Repeat word
|0BD2F6| dw $1213
|0BD2F8| db $FF ; End of Map 47

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen47_Low:
|0BD2F9| db $05 ; Raw block
|0BD2FA| db $96, $F6, $91, $92, $47, $EC
|0BD300| db $68 ; Increment fill
|0BD301| db $93
|0BD302| db $13 ; Raw block
|0BD303| db $3B, $9C, $9D, $CF, $9E, $9E, $89, $89
|0BD30B| db $61, $9F, $A0, $61, $F5, $95, $A1, $3A
|0BD313| db $3B, $37, $CF, $42
|0BD317| db $23 ; Repeat byte
|0BD318| db $8B
|0BD319| db $05 ; Raw block
|0BD31A| db $89, $C3, $8A, $89, $A2, $02
|0BD320| db $62 ; Increment fill
|0BD321| db $A3
|0BD322| db $01 ; Raw block
|0BD323| db $C3, $8A
|0BD325| db $62 ; Increment fill
|0BD326| db $A6
|0BD327| db $E0, $21 ; EXT Raw block
|0BD329| db $9F, $AA, $B2, $AA, $1D, $B2, $3E, $C3
|0BD331| db $0D, $A9, $AA, $44, $44, $86, $A9, $1C
|0BD339| db $1D, $41, $44, $AB, $44, $86, $1C, $1C
|0BD341| db $8C, $8A, $AC, $4B, $8C, $8D, $B2, $1D
|0BD349| db $AD, $48
|0BD34B| db $62 ; Increment fill
|0BD34C| db $AE
|0BD34D| db $E0, $3A ; EXT Raw block
|0BD34F| db $8D, $B1, $1C, $A1, $AD, $43, $20, $94
|0BD357| db $95, $1D, $AA, $52, $B2, $88, $8B, $89
|0BD35F| db $B3, $B4, $AA, $9A, $5D, $B5, $F8, $9C
|0BD367| db $9D, $A7, $A8, $77, $B6, $1D, $B7, $1D
|0BD36F| db $B8, $DD, $1C, $A4, $B9, $BA, $F8, $A7
|0BD377| db $A8, $AA, $BB, $50, $8E, $B2, $BC, $B3
|0BD37F| db $BD, $AC, $A9, $3E, $A2, $BE, $AE, $AF
|0BD387| db $F2, $8A, $B6
|0BD38A| db $66 ; Increment fill
|0BD38B| db $BF
|0BD38C| db $08 ; Raw block
|0BD38D| db $A7, $A8, $B7, $C6, $C7, $00, $B9, $9F
|0BD395| db $A9
|0BD396| db $66 ; Increment fill
|0BD397| db $C8
|0BD398| db $0A ; Raw block
|0BD399| db $AA, $A1, $AA, $36, $F6, $4B, $BC, $F2
|0BD3A1| db $9F, $1C, $1D
|0BD3A4| db $62 ; Increment fill
|0BD3A5| db $CF
|0BD3A6| db $0B ; Raw block
|0BD3A7| db $1D, $AA, $4D, $AA, $5D, $69, $D2, $78
|0BD3AF| db $3A, $FB, $AB, $AC
|0BD3B3| db $22 ; Repeat byte
|0BD3B4| db $07
|0BD3B5| db $06 ; Raw block
|0BD3B6| db $A0, $9F, $1D, $6F, $D3, $B5, $5F
|0BD3BD| db $62 ; Increment fill
|0BD3BE| db $D4
|0BD3BF| db $02 ; Raw block
|0BD3C0| db $C7, $B3, $B4
|0BD3C3| db $22 ; Repeat byte
|0BD3C4| db $FB
|0BD3C5| db $62 ; Increment fill
|0BD3C6| db $A9
|0BD3C7| db $00 ; Raw block
|0BD3C8| db $C8
|0BD3C9| db $65 ; Increment fill
|0BD3CA| db $D7
|0BD3CB| db $0D ; Raw block
|0BD3CC| db $D6, $67, $68, $3F, $DD, $83, $55, $B2
|0BD3D4| db $B3, $CD, $DE, $4E, $DF, $3C
|0BD3DA| db $67 ; Increment fill
|0BD3DB| db $E0
|0BD3DC| db $62 ; Increment fill
|0BD3DD| db $65
|0BD3DE| db $03 ; Raw block
|0BD3DF| db $E8, $5F, $E9, $3A
|0BD3E3| db $FF ; End of Map 47

;===================================================================================================

OverworldMap32_Screen48_High:
|0BD3E4| db $00 ; Raw block
|0BD3E5| db $11
|0BD3E6| db $24 ; Repeat byte
|0BD3E7| db $13
|0BD3E8| db $43 ; Repeat word
|0BD3E9| dw $1311
|0BD3EB| db $23 ; Repeat byte
|0BD3EC| db $11
|0BD3ED| db $03 ; Raw block
|0BD3EE| db $13, $13, $11, $11
|0BD3F2| db $23 ; Repeat byte
|0BD3F3| db $13
|0BD3F4| db $01 ; Raw block
|0BD3F5| db $11, $13
|0BD3F7| db $22 ; Repeat byte
|0BD3F8| db $11
|0BD3F9| db $83 ; Copy past
|0BD3FA| dw $0400
|0BD3FC| db $00 ; Raw block
|0BD3FD| db $13
|0BD3FE| db $22 ; Repeat byte
|0BD3FF| db $11
|0BD400| db $23 ; Repeat byte
|0BD401| db $13
|0BD402| db $04 ; Raw block
|0BD403| db $14, $14, $11, $11, $14
|0BD408| db $22 ; Repeat byte
|0BD409| db $11
|0BD40A| db $01 ; Raw block
|0BD40B| db $14, $11
|0BD40D| db $85 ; Copy past
|0BD40E| dw $2700
|0BD410| db $01 ; Raw block
|0BD411| db $13, $11
|0BD413| db $22 ; Repeat byte
|0BD414| db $14
|0BD415| db $02 ; Raw block
|0BD416| db $11, $14, $14
|0BD419| db $23 ; Repeat byte
|0BD41A| db $11
|0BD41B| db $23 ; Repeat byte
|0BD41C| db $14
|0BD41D| db $83 ; Copy past
|0BD41E| dw $3000
|0BD420| db $43 ; Repeat word
|0BD421| dw $1411
|0BD423| db $22 ; Repeat byte
|0BD424| db $11
|0BD425| db $23 ; Repeat byte
|0BD426| db $14
|0BD427| db $01 ; Raw block
|0BD428| db $11, $12
|0BD42A| db $43 ; Repeat word
|0BD42B| dw $1411
|0BD42D| db $02 ; Raw block
|0BD42E| db $14, $11, $14
|0BD431| db $24 ; Repeat byte
|0BD432| db $11
|0BD433| db $03 ; Raw block
|0BD434| db $14, $13, $11, $12
|0BD438| db $45 ; Repeat word
|0BD439| dw $1411
|0BD43B| db $00 ; Raw block
|0BD43C| db $14
|0BD43D| db $22 ; Repeat byte
|0BD43E| db $11
|0BD43F| db $84 ; Copy past
|0BD440| dw $2F00
|0BD442| db $83 ; Copy past
|0BD443| dw $5700
|0BD445| db $03 ; Raw block
|0BD446| db $12, $11, $14, $14
|0BD44A| db $23 ; Repeat byte
|0BD44B| db $11
|0BD44C| db $26 ; Repeat byte
|0BD44D| db $14
|0BD44E| db $00 ; Raw block
|0BD44F| db $11
|0BD450| db $23 ; Repeat byte
|0BD451| db $14
|0BD452| db $23 ; Repeat byte
|0BD453| db $11
|0BD454| db $26 ; Repeat byte
|0BD455| db $14
|0BD456| db $04 ; Raw block
|0BD457| db $11, $12, $11, $11, $13
|0BD45C| db $23 ; Repeat byte
|0BD45D| db $11
|0BD45E| db $25 ; Repeat byte
|0BD45F| db $14
|0BD460| db $03 ; Raw block
|0BD461| db $11, $11, $12, $11
|0BD465| db $22 ; Repeat byte
|0BD466| db $14
|0BD467| db $01 ; Raw block
|0BD468| db $11, $11
|0BD46A| db $27 ; Repeat byte
|0BD46B| db $14
|0BD46C| db $00 ; Raw block
|0BD46D| db $11
|0BD46E| db $22 ; Repeat byte
|0BD46F| db $14
|0BD470| db $23 ; Repeat byte
|0BD471| db $11
|0BD472| db $01 ; Raw block
|0BD473| db $14, $12
|0BD475| db $44 ; Repeat word
|0BD476| dw $1411
|0BD478| db $84 ; Copy past
|0BD479| dw $5A00
|0BD47B| db $25 ; Repeat byte
|0BD47C| db $11
|0BD47D| db $01 ; Raw block
|0BD47E| db $14, $14
|0BD480| db $22 ; Repeat byte
|0BD481| db $11
|0BD482| db $26 ; Repeat byte
|0BD483| db $14
|0BD484| db $01 ; Raw block
|0BD485| db $11, $11
|0BD487| db $24 ; Repeat byte
|0BD488| db $14
|0BD489| db $01 ; Raw block
|0BD48A| db $11, $11
|0BD48C| db $26 ; Repeat byte
|0BD48D| db $14
|0BD48E| db $02 ; Raw block
|0BD48F| db $11, $11, $13
|0BD492| db $83 ; Copy past
|0BD493| dw $2800
|0BD495| db $23 ; Repeat byte
|0BD496| db $11
|0BD497| db $00 ; Raw block
|0BD498| db $13
|0BD499| db $43 ; Repeat word
|0BD49A| dw $1114
|0BD49C| db $FF ; End of Map 48

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen48_Low:
|0BD49D| db $00 ; Raw block
|0BD49E| db $30
|0BD49F| db $64 ; Increment fill
|0BD4A0| db $EA
|0BD4A1| db $0B ; Raw block
|0BD4A2| db $47, $EF, $7E, $F0, $3B, $32, $30, $31
|0BD4AA| db $F1, $F2, $2E, $61
|0BD4AE| db $63 ; Increment fill
|0BD4AF| db $F3
|0BD4B0| db $0C ; Raw block
|0BD4B1| db $53, $F7, $B0, $60, $BC, $F8, $F9, $C4
|0BD4B9| db $FA, $FB, $27, $2A, $63
|0BD4BE| db $63 ; Increment fill
|0BD4BF| db $FC
|0BD4C0| db $11 ; Raw block
|0BD4C1| db $00, $01, $6B, $38, $02, $DA, $47, $C6
|0BD4C9| db $03, $30, $04, $05, $BF, $C0, $06, $A8
|0BD4D1| db $FC, $76
|0BD4D3| db $62 ; Increment fill
|0BD4D4| db $07
|0BD4D5| db $06 ; Raw block
|0BD4D6| db $47, $0A, $0B, $8D, $2E, $61, $7B
|0BD4DD| db $63 ; Increment fill
|0BD4DE| db $0C
|0BD4DF| db $0A ; Raw block
|0BD4E0| db $D0, $10, $11, $47, $47, $12, $61, $13
|0BD4E8| db $94, $27, $28
|0BD4EB| db $63 ; Increment fill
|0BD4EC| db $14
|0BD4ED| db $09 ; Raw block
|0BD4EE| db $51, $04, $8D, $18, $8D, $19, $1A, $2A
|0BD4F6| db $1B, $94
|0BD4F8| db $62 ; Increment fill
|0BD4F9| db $30
|0BD4FA| db $1F ; Raw block
|0BD4FB| db $30, $1C, $FF, $5E, $09, $94, $1D, $94
|0BD503| db $1E, $30, $1F, $20, $94, $2E, $2F, $21
|0BD50B| db $39, $22, $23, $5E, $09, $94, $24, $94
|0BD513| db $19, $69, $25, $26, $A7, $27, $28, $42
|0BD51B| db $66 ; Increment fill
|0BD51C| db $27
|0BD51D| db $00 ; Raw block
|0BD51E| db $94
|0BD51F| db $63 ; Increment fill
|0BD520| db $2E
|0BD521| db $03 ; Raw block
|0BD522| db $47, $30, $31, $4B
|0BD526| db $66 ; Increment fill
|0BD527| db $32
|0BD528| db $08 ; Raw block
|0BD529| db $94, $14, $30, $31, $F1, $47, $2E, $2F
|0BD531| db $57
|0BD532| db $65 ; Increment fill
|0BD533| db $39
|0BD534| db $03 ; Raw block
|0BD535| db $93, $94, $19, $69
|0BD539| db $62 ; Increment fill
|0BD53A| db $3F
|0BD53B| db $04 ; Raw block
|0BD53C| db $27, $28, $42, $39, $3A
|0BD541| db $63 ; Increment fill
|0BD542| db $43
|0BD543| db $01 ; Raw block
|0BD544| db $26, $A7
|0BD546| db $62 ; Increment fill
|0BD547| db $47
|0BD548| db $1A ; Raw block
|0BD549| db $36, $37, $30, $31, $4A, $1D, $4A, $0D
|0BD551| db $53, $4B, $53, $53, $4C, $4D, $47, $4E
|0BD559| db $3D, $3E, $2E, $2F, $BD, $4A, $3A, $4F
|0BD561| db $60, $61, $97
|0BD564| db $66 ; Increment fill
|0BD565| db $50
|0BD566| db $01 ; Raw block
|0BD567| db $27, $28
|0BD569| db $64 ; Increment fill
|0BD56A| db $57
|0BD56B| db $01 ; Raw block
|0BD56C| db $6C, $29
|0BD56E| db $65 ; Increment fill
|0BD56F| db $5C
|0BD570| db $08 ; Raw block
|0BD571| db $15, $30, $31, $F1, $62, $32, $30, $63
|0BD579| db $A3
|0BD57A| db $83 ; Copy past
|0BD57B| dw $0B00
|0BD57D| db $03 ; Raw block
|0BD57E| db $62, $7A, $64, $30
|0BD582| db $FF ; End of Map 48

;===================================================================================================

OverworldMap32_Screen49_High:
|0BD583| db $22 ; Repeat byte
|0BD584| db $14
|0BD585| db $23 ; Repeat byte
|0BD586| db $11
|0BD587| db $03 ; Raw block
|0BD588| db $14, $00, $14, $14
|0BD58C| db $24 ; Repeat byte
|0BD58D| db $11
|0BD58E| db $83 ; Copy past
|0BD58F| dw $0100
|0BD591| db $04 ; Raw block
|0BD592| db $13, $14, $11, $14, $14
|0BD597| db $26 ; Repeat byte
|0BD598| db $11
|0BD599| db $02 ; Raw block
|0BD59A| db $14, $14, $13
|0BD59D| db $44 ; Repeat word
|0BD59E| dw $1114
|0BD5A0| db $27 ; Repeat byte
|0BD5A1| db $11
|0BD5A2| db $03 ; Raw block
|0BD5A3| db $14, $12, $11, $11
|0BD5A7| db $23 ; Repeat byte
|0BD5A8| db $14
|0BD5A9| db $02 ; Raw block
|0BD5AA| db $11, $11, $14
|0BD5AD| db $25 ; Repeat byte
|0BD5AE| db $11
|0BD5AF| db $01 ; Raw block
|0BD5B0| db $14, $11
|0BD5B2| db $24 ; Repeat byte
|0BD5B3| db $14
|0BD5B4| db $01 ; Raw block
|0BD5B5| db $11, $11
|0BD5B7| db $22 ; Repeat byte
|0BD5B8| db $14
|0BD5B9| db $22 ; Repeat byte
|0BD5BA| db $11
|0BD5BB| db $29 ; Repeat byte
|0BD5BC| db $14
|0BD5BD| db $25 ; Repeat byte
|0BD5BE| db $11
|0BD5BF| db $24 ; Repeat byte
|0BD5C0| db $14
|0BD5C1| db $00 ; Raw block
|0BD5C2| db $13
|0BD5C3| db $25 ; Repeat byte
|0BD5C4| db $14
|0BD5C5| db $83 ; Copy past
|0BD5C6| dw $2600
|0BD5C8| db $23 ; Repeat byte
|0BD5C9| db $14
|0BD5CA| db $00 ; Raw block
|0BD5CB| db $11
|0BD5CC| db $26 ; Repeat byte
|0BD5CD| db $14
|0BD5CE| db $24 ; Repeat byte
|0BD5CF| db $11
|0BD5D0| db $2D ; Repeat byte
|0BD5D1| db $14
|0BD5D2| db $00 ; Raw block
|0BD5D3| db $11
|0BD5D4| db $23 ; Repeat byte
|0BD5D5| db $14
|0BD5D6| db $00 ; Raw block
|0BD5D7| db $11
|0BD5D8| db $22 ; Repeat byte
|0BD5D9| db $14
|0BD5DA| db $00 ; Raw block
|0BD5DB| db $12
|0BD5DC| db $43 ; Repeat word
|0BD5DD| dw $1411
|0BD5DF| db $26 ; Repeat byte
|0BD5E0| db $11
|0BD5E1| db $02 ; Raw block
|0BD5E2| db $14, $14, $11
|0BD5E5| db $83 ; Copy past
|0BD5E6| dw $9800
|0BD5E8| db $22 ; Repeat byte
|0BD5E9| db $14
|0BD5EA| db $22 ; Repeat byte
|0BD5EB| db $11
|0BD5EC| db $23 ; Repeat byte
|0BD5ED| db $14
|0BD5EE| db $22 ; Repeat byte
|0BD5EF| db $11
|0BD5F0| db $02 ; Raw block
|0BD5F1| db $12, $12, $11
|0BD5F4| db $22 ; Repeat byte
|0BD5F5| db $14
|0BD5F6| db $84 ; Copy past
|0BD5F7| dw $2E00
|0BD5F9| db $00 ; Raw block
|0BD5FA| db $14
|0BD5FB| db $45 ; Repeat word
|0BD5FC| dw $1114
|0BD5FE| db $02 ; Raw block
|0BD5FF| db $11, $14, $14
|0BD602| db $24 ; Repeat byte
|0BD603| db $11
|0BD604| db $00 ; Raw block
|0BD605| db $13
|0BD606| db $24 ; Repeat byte
|0BD607| db $11
|0BD608| db $01 ; Raw block
|0BD609| db $14, $11
|0BD60B| db $23 ; Repeat byte
|0BD60C| db $14
|0BD60D| db $01 ; Raw block
|0BD60E| db $11, $11
|0BD610| db $24 ; Repeat byte
|0BD611| db $14
|0BD612| db $25 ; Repeat byte
|0BD613| db $11
|0BD614| db $22 ; Repeat byte
|0BD615| db $14
|0BD616| db $2D ; Repeat byte
|0BD617| db $11
|0BD618| db $00 ; Raw block
|0BD619| db $14
|0BD61A| db $22 ; Repeat byte
|0BD61B| db $11
|0BD61C| db $FF ; End of Map 49

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen49_Low:
|0BD61D| db $0C ; Raw block
|0BD61E| db $65, $66, $09, $47, $BE, $47, $47, $67
|0BD626| db $1F, $0D, $68, $3B, $32
|0BD62B| db $62 ; Increment fill
|0BD62C| db $30
|0BD62D| db $0B ; Raw block
|0BD62E| db $69, $6A, $AF, $47, $F2, $6B, $CF, $6C
|0BD636| db $6D, $B0, $60, $BC
|0BD63A| db $62 ; Increment fill
|0BD63B| db $2D
|0BD63C| db $0D ; Raw block
|0BD63D| db $2D, $6E, $6F, $EF, $70, $9B, $69, $DA
|0BD645| db $71, $DA, $B0, $6B, $6C, $29
|0BD64B| db $62 ; Increment fill
|0BD64C| db $27
|0BD64D| db $03 ; Raw block
|0BD64E| db $72, $01, $47, $EE
|0BD652| db $63 ; Increment fill
|0BD653| db $73
|0BD654| db $03 ; Raw block
|0BD655| db $47, $B0, $77, $79
|0BD659| db $83 ; Copy past
|0BD65A| dw $0C00
|0BD65C| db $02 ; Raw block
|0BD65D| db $95, $6B, $7E
|0BD660| db $64 ; Increment fill
|0BD661| db $78
|0BD662| db $01 ; Raw block
|0BD663| db $47, $B0
|0BD665| db $62 ; Increment fill
|0BD666| db $7D
|0BD667| db $02 ; Raw block
|0BD668| db $D7, $2F, $2D
|0BD66B| db $69 ; Increment fill
|0BD66C| db $80
|0BD66D| db $07 ; Raw block
|0BD66E| db $A8, $A8, $76, $6B, $6C, $29, $8A, $86
|0BD676| db $62 ; Increment fill
|0BD677| db $8B
|0BD678| db $00 ; Raw block
|0BD679| db $F2
|0BD67A| db $63 ; Increment fill
|0BD67B| db $8E
|0BD67C| db $05 ; Raw block
|0BD67D| db $36, $92, $80, $93, $79, $32
|0BD683| db $63 ; Increment fill
|0BD684| db $94
|0BD685| db $01 ; Raw block
|0BD686| db $B0, $80
|0BD688| db $63 ; Increment fill
|0BD689| db $98
|0BD68A| db $0C ; Raw block
|0BD68B| db $3D, $9C, $C6, $B0, $2C, $2D, $B0, $7D
|0BD693| db $9D, $9E, $10, $9F, $86
|0BD698| db $62 ; Increment fill
|0BD699| db $A0
|0BD69A| db $00 ; Raw block
|0BD69B| db $45
|0BD69C| db $63 ; Increment fill
|0BD69D| db $A3
|0BD69E| db $00 ; Raw block
|0BD69F| db $29
|0BD6A0| db $63 ; Increment fill
|0BD6A1| db $A7
|0BD6A2| db $00 ; Raw block
|0BD6A3| db $47
|0BD6A4| db $62 ; Increment fill
|0BD6A5| db $AB
|0BD6A6| db $04 ; Raw block
|0BD6A7| db $01, $7E, $AE, $47, $AF
|0BD6AC| db $62 ; Increment fill
|0BD6AD| db $30
|0BD6AE| db $0A ; Raw block
|0BD6AF| db $EF, $7B, $47, $CF, $B0, $B1, $A8, $0E
|0BD6B7| db $47, $B2, $97
|0BD6BA| db $62 ; Increment fill
|0BD6BB| db $B3
|0BD6BC| db $02 ; Raw block
|0BD6BD| db $BC, $2D, $38
|0BD6C0| db $63 ; Increment fill
|0BD6C1| db $B6
|0BD6C2| db $16 ; Raw block
|0BD6C3| db $C0, $47, $47, $1F, $20, $42, $BA, $BB
|0BD6CB| db $1A, $28, $29, $08, $01, $BF, $BC, $0D
|0BD6D3| db $53, $BD, $90, $BE, $3B, $B7, $BF
|0BD6DA| db $83 ; Copy past
|0BD6DB| dw $9C00
|0BD6DD| db $0A ; Raw block
|0BD6DE| db $7E, $53, $F7, $47, $B0, $60, $EF, $F0
|0BD6E6| db $C0, $2F, $21
|0BD6E9| db $62 ; Increment fill
|0BD6EA| db $B3
|0BD6EB| db $01 ; Raw block
|0BD6EC| db $2F, $2D
|0BD6EE| db $64 ; Increment fill
|0BD6EF| db $C1
|0BD6F0| db $01 ; Raw block
|0BD6F1| db $8A, $28
|0BD6F3| db $83 ; Copy past
|0BD6F4| dw $2C00
|0BD6F6| db $05 ; Raw block
|0BD6F7| db $C6, $C7, $1A, $28, $29, $31
|0BD6FD| db $83 ; Copy past
|0BD6FE| dw $0C00
|0BD700| db $00 ; Raw block
|0BD701| db $30
|0BD702| db $85 ; Copy past
|0BD703| dw $F000
|0BD705| db $00 ; Raw block
|0BD706| db $C8
|0BD707| db $62 ; Increment fill
|0BD708| db $30
|0BD709| db $FF ; End of Map 49

;===================================================================================================

OverworldMap32_Screen0A_High:
|0BD70A| db $0A ; Raw block
|0BD70B| db $00, $14, $06, $00, $00, $01, $14, $01
|0BD713| db $01, $00, $01
|0BD716| db $24 ; Repeat byte
|0BD717| db $14
|0BD718| db $22 ; Repeat byte
|0BD719| db $00
|0BD71A| db $02 ; Raw block
|0BD71B| db $06, $01, $00
|0BD71E| db $24 ; Repeat byte
|0BD71F| db $01
|0BD720| db $24 ; Repeat byte
|0BD721| db $14
|0BD722| db $83 ; Copy past
|0BD723| dw $0300
|0BD725| db $00 ; Raw block
|0BD726| db $08
|0BD727| db $22 ; Repeat byte
|0BD728| db $01
|0BD729| db $01 ; Raw block
|0BD72A| db $00, $01
|0BD72C| db $25 ; Repeat byte
|0BD72D| db $14
|0BD72E| db $09 ; Raw block
|0BD72F| db $00, $00, $06, $06, $01, $01, $03, $04
|0BD737| db $00, $01
|0BD739| db $25 ; Repeat byte
|0BD73A| db $14
|0BD73B| db $22 ; Repeat byte
|0BD73C| db $00
|0BD73D| db $03 ; Raw block
|0BD73E| db $01, $01, $04, $04
|0BD742| db $22 ; Repeat byte
|0BD743| db $01
|0BD744| db $25 ; Repeat byte
|0BD745| db $14
|0BD746| db $06 ; Raw block
|0BD747| db $00, $00, $01, $04, $02, $04, $04
|0BD74E| db $25 ; Repeat byte
|0BD74F| db $01
|0BD750| db $0C ; Raw block
|0BD751| db $03, $05, $14, $07, $14, $14, $02, $01
|0BD759| db $04, $14, $01, $06, $00
|0BD75E| db $22 ; Repeat byte
|0BD75F| db $01
|0BD760| db $01 ; Raw block
|0BD761| db $04, $01
|0BD763| db $22 ; Repeat byte
|0BD764| db $14
|0BD765| db $05 ; Raw block
|0BD766| db $01, $02, $00, $00, $14, $14
|0BD76C| db $22 ; Repeat byte
|0BD76D| db $02
|0BD76E| db $08 ; Raw block
|0BD76F| db $04, $07, $08, $01, $05, $00, $01, $03
|0BD777| db $0F
|0BD778| db $22 ; Repeat byte
|0BD779| db $00
|0BD77A| db $00 ; Raw block
|0BD77B| db $14
|0BD77C| db $22 ; Repeat byte
|0BD77D| db $01
|0BD77E| db $08 ; Raw block
|0BD77F| db $04, $03, $02, $14, $05, $00, $00, $04
|0BD787| db $00
|0BD788| db $22 ; Repeat byte
|0BD789| db $08
|0BD78A| db $00 ; Raw block
|0BD78B| db $00
|0BD78C| db $22 ; Repeat byte
|0BD78D| db $04
|0BD78E| db $0C ; Raw block
|0BD78F| db $03, $03, $01, $04, $02, $00, $00, $04
|0BD797| db $01, $08, $08, $0B, $00
|0BD79C| db $22 ; Repeat byte
|0BD79D| db $04
|0BD79E| db $04 ; Raw block
|0BD79F| db $06, $01, $00, $03, $14
|0BD7A4| db $22 ; Repeat byte
|0BD7A5| db $00
|0BD7A6| db $03 ; Raw block
|0BD7A7| db $01, $08, $08, $01
|0BD7AB| db $84 ; Copy past
|0BD7AC| dw $B200
|0BD7AE| db $03 ; Raw block
|0BD7AF| db $14, $00, $00, $14
|0BD7B3| db $24 ; Repeat byte
|0BD7B4| db $00
|0BD7B5| db $0A ; Raw block
|0BD7B6| db $0E, $0C, $0B, $14, $08, $00, $07, $01
|0BD7BE| db $01, $00, $14
|0BD7C1| db $22 ; Repeat byte
|0BD7C2| db $00
|0BD7C3| db $03 ; Raw block
|0BD7C4| db $01, $01, $0E, $04
|0BD7C8| db $22 ; Repeat byte
|0BD7C9| db $08
|0BD7CA| db $01 ; Raw block
|0BD7CB| db $00, $00
|0BD7CD| db $22 ; Repeat byte
|0BD7CE| db $01
|0BD7CF| db $00 ; Raw block
|0BD7D0| db $14
|0BD7D1| db $22 ; Repeat byte
|0BD7D2| db $00
|0BD7D3| db $01 ; Raw block
|0BD7D4| db $01, $00
|0BD7D6| db $23 ; Repeat byte
|0BD7D7| db $08
|0BD7D8| db $06 ; Raw block
|0BD7D9| db $14, $03, $00, $03, $04, $14, $14
|0BD7E0| db $22 ; Repeat byte
|0BD7E1| db $00
|0BD7E2| db $03 ; Raw block
|0BD7E3| db $01, $00, $00, $07
|0BD7E7| db $24 ; Repeat byte
|0BD7E8| db $00
|0BD7E9| db $03 ; Raw block
|0BD7EA| db $03, $00, $14, $00
|0BD7EE| db $FF ; End of Map 0A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen0A_Low:
|0BD7EF| db $0A ; Raw block
|0BD7F0| db $07, $C9, $38, $1D, $1D, $3C, $CA, $3C
|0BD7F8| db $1D, $1D, $77
|0BD7FB| db $63 ; Increment fill
|0BD7FC| db $CB
|0BD7FD| db $0B ; Raw block
|0BD7FE| db $CE, $00, $01, $7F, $70, $72, $1D, $61
|0BD806| db $62, $5A, $41, $5B
|0BD80A| db $63 ; Increment fill
|0BD80B| db $CF
|0BD80C| db $0A ; Raw block
|0BD80D| db $CE, $09, $0A, $74, $D3, $2D, $1E, $67
|0BD815| db $68, $1D, $48
|0BD818| db $65 ; Increment fill
|0BD819| db $D4
|0BD81A| db $0B ; Raw block
|0BD81B| db $07, $08, $38, $70, $1D, $5A, $DB, $25
|0BD823| db $1D, $2E, $DA, $CE
|0BD827| db $63 ; Increment fill
|0BD828| db $DB
|0BD829| db $09 ; Raw block
|0BD82A| db $00, $01, $7F, $3C, $5A, $B5, $B6, $1D
|0BD832| db $1E, $08
|0BD834| db $62 ; Increment fill
|0BD835| db $DF
|0BD836| db $62 ; Increment fill
|0BD837| db $E1
|0BD838| db $1E ; Raw block
|0BD839| db $09, $0A, $74, $B5, $08, $B7, $B8, $3C
|0BD841| db $1D, $E4, $03, $F8, $F8, $7B, $5E, $E4
|0BD849| db $ED, $E5, $E6, $79, $E5, $B9, $E7, $DB
|0BD851| db $3E, $1D, $E4, $E5, $E5, $74, $03
|0BD858| db $62 ; Increment fill
|0BD859| db $E8
|0BD85A| db $05 ; Raw block
|0BD85B| db $E5, $7A, $1D, $A5, $EB, $EC
|0BD861| db $22 ; Repeat byte
|0BD862| db $08
|0BD863| db $0C ; Raw block
|0BD864| db $C2, $AF, $2D, $F3, $60, $0A, $74, $D5
|0BD86C| db $19, $1D, $1C, $1D, $ED
|0BD871| db $22 ; Repeat byte
|0BD872| db $E5
|0BD873| db $0C ; Raw block
|0BD874| db $C3, $B2, $08, $EE, $63, $93, $06, $60
|0BD87C| db $1D, $B8, $B9, $CC, $AA
|0BD881| db $62 ; Increment fill
|0BD882| db $2D
|0BD883| db $0C ; Raw block
|0BD884| db $56, $BA, $E5, $73, $03, $01, $02, $6D
|0BD88C| db $26, $BD, $4B, $43, $AA
|0BD891| db $62 ; Increment fill
|0BD892| db $38
|0BD893| db $E0, $4B ; EXT Raw block
|0BD895| db $70, $5A, $1D, $56, $EF, $0A, $0B, $09
|0BD89D| db $2F, $4D, $4E, $62, $1D, $61, $A4, $9D
|0BD8A5| db $3C, $F0, $1C, $1D, $F1, $08, $06, $07
|0BD8AD| db $FE, $7C, $F7, $43, $FE, $F2, $9A, $AA
|0BD8B5| db $2B, $61, $62, $AA, $F1, $01, $02, $00
|0BD8BD| db $04, $3B, $F8, $39, $9F, $4B, $A0, $1C
|0BD8C5| db $1D, $67, $68, $D2, $F1, $0A, $0B, $09
|0BD8CD| db $07, $1D, $9B, $9C, $A5, $A6, $F3, $D5
|0BD8D5| db $AA, $DB, $25, $F4, $F5, $08, $06, $07
|0BD8DD| db $32, $7C, $1D, $91
|0BD8E1| db $24 ; Repeat byte
|0BD8E2| db $1D
|0BD8E3| db $03 ; Raw block
|0BD8E4| db $E2, $1D, $F1, $1D
|0BD8E8| db $FF ; End of Map 0A

;===================================================================================================

OverworldMap32_Screen4B_High:
|0BD8E9| db $24 ; Repeat byte
|0BD8EA| db $01
|0BD8EB| db $22 ; Repeat byte
|0BD8EC| db $02
|0BD8ED| db $00 ; Raw block
|0BD8EE| db $03
|0BD8EF| db $26 ; Repeat byte
|0BD8F0| db $01
|0BD8F1| db $00 ; Raw block
|0BD8F2| db $04
|0BD8F3| db $22 ; Repeat byte
|0BD8F4| db $01
|0BD8F5| db $00 ; Raw block
|0BD8F6| db $04
|0BD8F7| db $22 ; Repeat byte
|0BD8F8| db $02
|0BD8F9| db $00 ; Raw block
|0BD8FA| db $03
|0BD8FB| db $27 ; Repeat byte
|0BD8FC| db $01
|0BD8FD| db $07 ; Raw block
|0BD8FE| db $02, $00, $00, $03, $03, $02, $02, $03
|0BD906| db $27 ; Repeat byte
|0BD907| db $01
|0BD908| db $01 ; Raw block
|0BD909| db $02, $03
|0BD90B| db $84 ; Copy past
|0BD90C| dw $2200
|0BD90E| db $00 ; Raw block
|0BD90F| db $03
|0BD910| db $26 ; Repeat byte
|0BD911| db $01
|0BD912| db $05 ; Raw block
|0BD913| db $04, $02, $01, $01, $12, $00
|0BD919| db $22 ; Repeat byte
|0BD91A| db $03
|0BD91B| db $26 ; Repeat byte
|0BD91C| db $01
|0BD91D| db $08 ; Raw block
|0BD91E| db $03, $04, $01, $04, $02, $04, $01, $03
|0BD926| db $03
|0BD927| db $26 ; Repeat byte
|0BD928| db $01
|0BD929| db $04 ; Raw block
|0BD92A| db $03, $03, $01, $14, $14
|0BD92F| db $22 ; Repeat byte
|0BD930| db $01
|0BD931| db $23 ; Repeat byte
|0BD932| db $00
|0BD933| db $05 ; Raw block
|0BD934| db $04, $02, $01, $00, $03, $03
|0BD93A| db $84 ; Copy past
|0BD93B| dw $5600
|0BD93D| db $08 ; Raw block
|0BD93E| db $04, $00, $12, $00, $04, $04, $01, $01
|0BD946| db $02
|0BD947| db $22 ; Repeat byte
|0BD948| db $04
|0BD949| db $84 ; Copy past
|0BD94A| dw $7300
|0BD94C| db $08 ; Raw block
|0BD94D| db $12, $12, $00, $04, $03, $00, $01, $01
|0BD955| db $04
|0BD956| db $83 ; Copy past
|0BD957| dw $3200
|0BD959| db $06 ; Raw block
|0BD95A| db $00, $01, $04, $03, $14, $14, $04
|0BD961| db $83 ; Copy past
|0BD962| dw $6C00
|0BD964| db $02 ; Raw block
|0BD965| db $01, $03, $12
|0BD968| db $22 ; Repeat byte
|0BD969| db $00
|0BD96A| db $03 ; Raw block
|0BD96B| db $04, $04, $03, $14
|0BD96F| db $22 ; Repeat byte
|0BD970| db $04
|0BD971| db $03 ; Raw block
|0BD972| db $01, $02, $01, $01
|0BD976| db $22 ; Repeat byte
|0BD977| db $00
|0BD978| db $03 ; Raw block
|0BD979| db $12, $00, $04, $02
|0BD97D| db $83 ; Copy past
|0BD97E| dw $7100
|0BD980| db $04 ; Raw block
|0BD981| db $04, $04, $03, $01, $03
|0BD986| db $22 ; Repeat byte
|0BD987| db $01
|0BD988| db $01 ; Raw block
|0BD989| db $04, $00
|0BD98B| db $22 ; Repeat byte
|0BD98C| db $03
|0BD98D| db $01 ; Raw block
|0BD98E| db $01, $03
|0BD990| db $22 ; Repeat byte
|0BD991| db $04
|0BD992| db $01 ; Raw block
|0BD993| db $03, $01
|0BD995| db $83 ; Copy past
|0BD996| dw $7B00
|0BD998| db $00 ; Raw block
|0BD999| db $04
|0BD99A| db $85 ; Copy past
|0BD99B| dw $6E00
|0BD99D| db $04 ; Raw block
|0BD99E| db $04, $14, $04, $04, $01
|0BD9A3| db $25 ; Repeat byte
|0BD9A4| db $04
|0BD9A5| db $04 ; Raw block
|0BD9A6| db $02, $01, $00, $00, $05
|0BD9AB| db $22 ; Repeat byte
|0BD9AC| db $01
|0BD9AD| db $02 ; Raw block
|0BD9AE| db $04, $01, $05
|0BD9B1| db $23 ; Repeat byte
|0BD9B2| db $14
|0BD9B3| db $05 ; Raw block
|0BD9B4| db $05, $04, $04, $02, $02, $04
|0BD9BA| db $22 ; Repeat byte
|0BD9BB| db $01
|0BD9BC| db $01 ; Raw block
|0BD9BD| db $04, $04
|0BD9BF| db $FF ; End of Map 4B

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen4B_Low:
|0BD9C0| db $04 ; Raw block
|0BD9C1| db $ED, $ED, $F8, $F9, $FF
|0BD9C6| db $22 ; Repeat byte
|0BD9C7| db $03
|0BD9C8| db $00 ; Raw block
|0BD9C9| db $5A
|0BD9CA| db $26 ; Repeat byte
|0BD9CB| db $F8
|0BD9CC| db $04 ; Raw block
|0BD9CD| db $71, $ED, $E5, $F9, $73
|0BD9D2| db $22 ; Repeat byte
|0BD9D3| db $03
|0BD9D4| db $00 ; Raw block
|0BD9D5| db $5A
|0BD9D6| db $26 ; Repeat byte
|0BD9D7| db $F8
|0BD9D8| db $08 ; Raw block
|0BD9D9| db $D6, $86, $1D, $9F, $56, $57, $03, $03
|0BD9E1| db $5A
|0BD9E2| db $26 ; Repeat byte
|0BD9E3| db $F8
|0BD9E4| db $08 ; Raw block
|0BD9E5| db $D6, $DD, $FF, $B2, $1D, $56, $57, $03
|0BD9ED| db $5A
|0BD9EE| db $26 ; Repeat byte
|0BD9EF| db $F8
|0BD9F0| db $08 ; Raw block
|0BD9F1| db $79, $F3, $AB, $F2, $75, $1D, $56, $57
|0BD9F9| db $5A
|0BD9FA| db $26 ; Repeat byte
|0BD9FB| db $F8
|0BD9FC| db $08 ; Raw block
|0BD9FD| db $6C, $7A, $B3, $7B, $61, $7C, $DB, $56
|0BDA05| db $BA
|0BDA06| db $26 ; Repeat byte
|0BDA07| db $E5
|0BDA08| db $1F ; Raw block
|0BDA09| db $6C, $6C, $15, $F6, $F7, $16, $E6, $DB
|0BDA11| db $1D, $1D, $9F, $1D, $7D, $08, $DB, $B2
|0BDA19| db $6C, $6C, $15, $58, $59, $16, $03, $80
|0BDA21| db $1D, $75, $1D, $81, $82, $E5, $E6, $08
|0BDA29| db $62 ; Increment fill
|0BDA2A| db $83
|0BDA2B| db $1F ; Raw block
|0BDA2C| db $60, $61, $23, $24, $86, $75, $75, $1D
|0BDA34| db $87, $A8, $B2, $E4, $E5, $88, $A8, $1D
|0BDA3C| db $B2, $FF, $1D, $2E, $86, $FF, $F8, $F9
|0BDA44| db $8B, $8C, $A2, $F2, $1D, $E3, $FF, $75
|0BDA4C| db $22 ; Repeat byte
|0BDA4D| db $1D
|0BDA4E| db $03 ; Raw block
|0BDA4F| db $8D, $8E, $B2, $FA
|0BDA53| db $62 ; Increment fill
|0BDA54| db $90
|0BDA55| db $13 ; Raw block
|0BDA56| db $FA, $AB, $F0, $E3, $1D, $9F, $1D, $75
|0BDA5E| db $1D, $93, $03, $5A, $F8, $9C, $6C, $94
|0BDA66| db $73, $5A, $F9, $95
|0BDA6A| db $22 ; Repeat byte
|0BDA6B| db $AB
|0BDA6C| db $01 ; Raw block
|0BDA6D| db $95, $9F
|0BDA6F| db $83 ; Copy past
|0BDA70| dw $4600
|0BDA72| db $15 ; Raw block
|0BDA73| db $9C, $84, $96, $97, $BA, $F9, $98, $99
|0BDA7B| db $B3, $B3, $9A, $A0, $1D, $56, $BA, $E5
|0BDA83| db $BB, $9E, $FB, $A0, $A1, $AB
|0BDA89| db $62 ; Increment fill
|0BDA8A| db $A2
|0BDA8B| db $62 ; Increment fill
|0BDA8C| db $A4
|0BDA8D| db $04 ; Raw block
|0BDA8E| db $07, $A0, $1D, $1D, $46
|0BDA93| db $22 ; Repeat byte
|0BDA94| db $AB
|0BDA95| db $02 ; Raw block
|0BDA96| db $AA, $B3, $21
|0BDA99| db $63 ; Increment fill
|0BDA9A| db $FC
|0BDA9B| db $05 ; Raw block
|0BDA9C| db $42, $B1, $A6, $07, $07, $B2
|0BDAA2| db $23 ; Repeat byte
|0BDAA3| db $B3
|0BDAA4| db $00 ; Raw block
|0BDAA5| db $A4
|0BDAA6| db $FF ; End of Map 4B

;===================================================================================================

OverworldMap32_Screen4C_High:
|0BDAA7| db $25 ; Repeat byte
|0BDAA8| db $01
|0BDAA9| db $00 ; Raw block
|0BDAAA| db $03
|0BDAAB| db $2E ; Repeat byte
|0BDAAC| db $01
|0BDAAD| db $03 ; Raw block
|0BDAAE| db $03, $01, $01, $0E
|0BDAB2| db $2B ; Repeat byte
|0BDAB3| db $01
|0BDAB4| db $03 ; Raw block
|0BDAB5| db $03, $01, $04, $04
|0BDAB9| db $2B ; Repeat byte
|0BDABA| db $01
|0BDABB| db $04 ; Raw block
|0BDABC| db $03, $01, $03, $02, $03
|0BDAC1| db $29 ; Repeat byte
|0BDAC2| db $01
|0BDAC3| db $02 ; Raw block
|0BDAC4| db $04, $03, $01
|0BDAC7| db $22 ; Repeat byte
|0BDAC8| db $03
|0BDAC9| db $26 ; Repeat byte
|0BDACA| db $01
|0BDACB| db $04 ; Raw block
|0BDACC| db $02, $04, $04, $03, $03
|0BDAD1| db $28 ; Repeat byte
|0BDAD2| db $01
|0BDAD3| db $01 ; Raw block
|0BDAD4| db $03, $00
|0BDAD6| db $22 ; Repeat byte
|0BDAD7| db $04
|0BDAD8| db $06 ; Raw block
|0BDAD9| db $00, $00, $03, $00, $00, $12, $00
|0BDAE0| db $23 ; Repeat byte
|0BDAE1| db $01
|0BDAE2| db $22 ; Repeat byte
|0BDAE3| db $02
|0BDAE4| db $09 ; Raw block
|0BDAE5| db $04, $00, $12, $04, $04, $00, $12, $12
|0BDAED| db $00, $00
|0BDAEF| db $24 ; Repeat byte
|0BDAF0| db $01
|0BDAF1| db $07 ; Raw block
|0BDAF2| db $02, $00, $00, $04, $02, $04, $12, $12
|0BDAFA| db $23 ; Repeat byte
|0BDAFB| db $00
|0BDAFC| db $03 ; Raw block
|0BDAFD| db $01, $01, $04, $04
|0BDB01| db $24 ; Repeat byte
|0BDB02| db $02
|0BDB03| db $01 ; Raw block
|0BDB04| db $00, $12
|0BDB06| db $26 ; Repeat byte
|0BDB07| db $00
|0BDB08| db $02 ; Raw block
|0BDB09| db $04, $03, $04
|0BDB0C| db $83 ; Copy past
|0BDB0D| dw $8000
|0BDB0F| db $02 ; Raw block
|0BDB10| db $04, $04, $05
|0BDB13| db $22 ; Repeat byte
|0BDB14| db $00
|0BDB15| db $03 ; Raw block
|0BDB16| db $12, $03, $00, $03
|0BDB1A| db $22 ; Repeat byte
|0BDB1B| db $04
|0BDB1C| db $01 ; Raw block
|0BDB1D| db $00, $00
|0BDB1F| db $22 ; Repeat byte
|0BDB20| db $04
|0BDB21| db $02 ; Raw block
|0BDB22| db $05, $04, $04
|0BDB25| db $23 ; Repeat byte
|0BDB26| db $01
|0BDB27| db $23 ; Repeat byte
|0BDB28| db $03
|0BDB29| db $07 ; Raw block
|0BDB2A| db $02, $02, $04, $04, $00, $05, $03, $04
|0BDB32| db $25 ; Repeat byte
|0BDB33| db $01
|0BDB34| db $83 ; Copy past
|0BDB35| dw $4900
|0BDB37| db $22 ; Repeat byte
|0BDB38| db $02
|0BDB39| db $02 ; Raw block
|0BDB3A| db $01, $03, $01
|0BDB3D| db $23 ; Repeat byte
|0BDB3E| db $04
|0BDB3F| db $22 ; Repeat byte
|0BDB40| db $01
|0BDB41| db $05 ; Raw block
|0BDB42| db $12, $03, $00, $02, $04, $04
|0BDB48| db $22 ; Repeat byte
|0BDB49| db $02
|0BDB4A| db $05 ; Raw block
|0BDB4B| db $04, $15, $05, $15, $04, $04
|0BDB51| db $23 ; Repeat byte
|0BDB52| db $02
|0BDB53| db $02 ; Raw block
|0BDB54| db $04, $05, $05
|0BDB57| db $22 ; Repeat byte
|0BDB58| db $04
|0BDB59| db $83 ; Copy past
|0BDB5A| dw $EE00
|0BDB5C| db $FF ; End of Map 4C

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen4C_Low:
|0BDB5D| db $06 ; Raw block
|0BDB5E| db $F8, $F8, $ED, $F8, $F8, $FF, $5A
|0BDB65| db $24 ; Repeat byte
|0BDB66| db $F8
|0BDB67| db $22 ; Repeat byte
|0BDB68| db $03
|0BDB69| db $22 ; Repeat byte
|0BDB6A| db $F8
|0BDB6B| db $86 ; Copy past
|0BDB6C| dw $0200
|0BDB6E| db $02 ; Raw block
|0BDB6F| db $E4, $F8, $F8
|0BDB72| db $22 ; Repeat byte
|0BDB73| db $03
|0BDB74| db $22 ; Repeat byte
|0BDB75| db $F8
|0BDB76| db $85 ; Copy past
|0BDB77| dw $0200
|0BDB79| db $03 ; Raw block
|0BDB7A| db $77, $74, $F8, $F8
|0BDB7E| db $22 ; Repeat byte
|0BDB7F| db $03
|0BDB80| db $22 ; Repeat byte
|0BDB81| db $F8
|0BDB82| db $85 ; Copy past
|0BDB83| dw $0200
|0BDB85| db $03 ; Raw block
|0BDB86| db $71, $A9, $72, $F8
|0BDB8A| db $22 ; Repeat byte
|0BDB8B| db $03
|0BDB8C| db $22 ; Repeat byte
|0BDB8D| db $F8
|0BDB8E| db $05 ; Raw block
|0BDB8F| db $ED, $E5, $E5, $73, $5A, $F8
|0BDB95| db $62 ; Increment fill
|0BDB96| db $75
|0BDB97| db $00 ; Raw block
|0BDB98| db $F8
|0BDB99| db $22 ; Repeat byte
|0BDB9A| db $03
|0BDB9B| db $07 ; Raw block
|0BDB9C| db $F8, $E5, $E5, $7A, $B5, $B6, $56, $BA
|0BDBA4| db $24 ; Repeat byte
|0BDBA5| db $E5
|0BDBA6| db $22 ; Repeat byte
|0BDBA7| db $03
|0BDBA8| db $1E ; Raw block
|0BDBA9| db $F8, $FF, $A9, $B5, $B7, $B8, $B2, $1C
|0BDBB1| db $FF, $B2, $1C, $75, $9F, $E4, $03, $03
|0BDBB9| db $F8, $08, $08, $79, $B9, $9F, $75, $B5
|0BDBC1| db $BA, $1C, $75, $75, $9F, $1D, $E4
|0BDBC8| db $84 ; Copy past
|0BDBC9| dw $4E00
|0BDBCB| db $04 ; Raw block
|0BDBCC| db $9F, $AA, $B5, $79, $BC
|0BDBD1| db $83 ; Copy past
|0BDBD2| dw $7900
|0BDBD4| db $05 ; Raw block
|0BDBD5| db $1C, $1D, $E4, $E5, $8A, $BF
|0BDBDB| db $22 ; Repeat byte
|0BDBDC| db $08
|0BDBDD| db $E0, $26 ; EXT Raw block
|0BDBDF| db $79, $7A, $1D, $75, $B2, $AA, $1C, $1D
|0BDBE7| db $AA, $1D, $B2, $90, $67, $77, $E5, $E5
|0BDBEF| db $7A, $1D, $B5, $B6, $5B, $9F, $AA, $1C
|0BDBF7| db $75, $FF, $9F, $9C, $94, $C3, $C4, $9F
|0BDBFF| db $1C, $B5, $B7, $B8, $5D, $C4, $8A
|0BDC06| db $23 ; Repeat byte
|0BDC07| db $AB
|0BDC08| db $0B ; Raw block
|0BDC09| db $BB, $A8, $56, $B1, $61, $61, $C5, $B9
|0BDC11| db $AA, $5F, $B1, $C6
|0BDC15| db $23 ; Repeat byte
|0BDC16| db $B3
|0BDC17| db $E0, $22 ; EXT Raw block
|0BDC19| db $AB, $F2, $FF, $56, $22, $22, $04, $A1
|0BDC21| db $A2, $F2, $56, $22, $C7, $C8, $A4, $A4
|0BDC29| db $B3, $FB, $F2, $75, $FF, $FB, $A1, $C9
|0BDC31| db $CA, $05, $07, $07, $C9, $00, $38, $01
|0BDC39| db $A4, $CE, $05
|0BDC3C| db $22 ; Repeat byte
|0BDC3D| db $07
|0BDC3E| db $09 ; Raw block
|0BDC3F| db $C9, $21, $72, $D0, $B1, $B1, $21, $02
|0BDC47| db $D2, $D3
|0BDC49| db $FF ; End of Map 4C

;===================================================================================================

OverworldMap32_Screen4D_High:
|0BDC4A| db $02 ; Raw block
|0BDC4B| db $01, $02, $15
|0BDC4E| db $43 ; Repeat word
|0BDC4F| dw $0415
|0BDC51| db $05 ; Raw block
|0BDC52| db $04, $15, $15, $04, $04, $03
|0BDC58| db $23 ; Repeat byte
|0BDC59| db $01
|0BDC5A| db $83 ; Copy past
|0BDC5B| dw $0100
|0BDC5D| db $24 ; Repeat byte
|0BDC5E| db $15
|0BDC5F| db $02 ; Raw block
|0BDC60| db $04, $02, $03
|0BDC63| db $22 ; Repeat byte
|0BDC64| db $01
|0BDC65| db $00 ; Raw block
|0BDC66| db $03
|0BDC67| db $22 ; Repeat byte
|0BDC68| db $15
|0BDC69| db $01 ; Raw block
|0BDC6A| db $04, $04
|0BDC6C| db $23 ; Repeat byte
|0BDC6D| db $15
|0BDC6E| db $02 ; Raw block
|0BDC6F| db $04, $02, $03
|0BDC72| db $24 ; Repeat byte
|0BDC73| db $01
|0BDC74| db $02 ; Raw block
|0BDC75| db $15, $15, $04
|0BDC78| db $22 ; Repeat byte
|0BDC79| db $15
|0BDC7A| db $83 ; Copy past
|0BDC7B| dw $0700
|0BDC7D| db $00 ; Raw block
|0BDC7E| db $03
|0BDC7F| db $25 ; Repeat byte
|0BDC80| db $01
|0BDC81| db $83 ; Copy past
|0BDC82| dw $1300
|0BDC84| db $22 ; Repeat byte
|0BDC85| db $04
|0BDC86| db $02 ; Raw block
|0BDC87| db $15, $15, $04
|0BDC8A| db $26 ; Repeat byte
|0BDC8B| db $01
|0BDC8C| db $85 ; Copy past
|0BDC8D| dw $0600
|0BDC8F| db $83 ; Copy past
|0BDC90| dw $4A00
|0BDC92| db $00 ; Raw block
|0BDC93| db $00
|0BDC94| db $23 ; Repeat byte
|0BDC95| db $01
|0BDC96| db $03 ; Raw block
|0BDC97| db $02, $00, $15, $04
|0BDC9B| db $25 ; Repeat byte
|0BDC9C| db $15
|0BDC9D| db $22 ; Repeat byte
|0BDC9E| db $00
|0BDC9F| db $83 ; Copy past
|0BDCA0| dw $6100
|0BDCA2| db $04 ; Raw block
|0BDCA3| db $00, $05, $04, $05, $05
|0BDCA8| db $22 ; Repeat byte
|0BDCA9| db $15
|0BDCAA| db $00 ; Raw block
|0BDCAB| db $08
|0BDCAC| db $22 ; Repeat byte
|0BDCAD| db $00
|0BDCAE| db $08 ; Raw block
|0BDCAF| db $01, $02, $00, $12, $00, $15, $04, $05
|0BDCB7| db $05
|0BDCB8| db $83 ; Copy past
|0BDCB9| dw $0600
|0BDCBB| db $0B ; Raw block
|0BDCBC| db $00, $04, $01, $00, $00, $12, $12, $00
|0BDCC4| db $05, $04, $15, $15
|0BDCC8| db $83 ; Copy past
|0BDCC9| dw $8700
|0BDCCB| db $09 ; Raw block
|0BDCCC| db $02, $05, $01, $00, $00, $04, $02, $02
|0BDCD4| db $04, $15
|0BDCD6| db $22 ; Repeat byte
|0BDCD7| db $05
|0BDCD8| db $01 ; Raw block
|0BDCD9| db $15, $15
|0BDCDB| db $43 ; Repeat word
|0BDCDC| dw $0405
|0BDCDE| db $01 ; Raw block
|0BDCDF| db $01, $01
|0BDCE1| db $44 ; Repeat word
|0BDCE2| dw $0504
|0BDCE4| db $02 ; Raw block
|0BDCE5| db $15, $15, $05
|0BDCE8| db $22 ; Repeat byte
|0BDCE9| db $15
|0BDCEA| db $05 ; Raw block
|0BDCEB| db $05, $15, $05, $01, $01, $04
|0BDCF1| db $23 ; Repeat byte
|0BDCF2| db $05
|0BDCF3| db $01 ; Raw block
|0BDCF4| db $15, $04
|0BDCF6| db $22 ; Repeat byte
|0BDCF7| db $05
|0BDCF8| db $22 ; Repeat byte
|0BDCF9| db $15
|0BDCFA| db $00 ; Raw block
|0BDCFB| db $05
|0BDCFC| db $22 ; Repeat byte
|0BDCFD| db $04
|0BDCFE| db $05 ; Raw block
|0BDCFF| db $15, $05, $03, $15, $15, $04
|0BDD05| db $83 ; Copy past
|0BDD06| dw $BF00
|0BDD08| db $00 ; Raw block
|0BDD09| db $04
|0BDD0A| db $23 ; Repeat byte
|0BDD0B| db $05
|0BDD0C| db $04 ; Raw block
|0BDD0D| db $15, $05, $05, $03, $05
|0BDD12| db $22 ; Repeat byte
|0BDD13| db $15
|0BDD14| db $22 ; Repeat byte
|0BDD15| db $04
|0BDD16| db $03 ; Raw block
|0BDD17| db $15, $05, $15, $04
|0BDD1B| db $22 ; Repeat byte
|0BDD1C| db $15
|0BDD1D| db $00 ; Raw block
|0BDD1E| db $05
|0BDD1F| db $85 ; Copy past
|0BDD20| dw $7500
|0BDD22| db $83 ; Copy past
|0BDD23| dw $A500
|0BDD25| db $00 ; Raw block
|0BDD26| db $15
|0BDD27| db $FF ; End of Map 4D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen4D_Low:
|0BDD28| db $0F ; Raw block
|0BDD29| db $06, $F2, $03, $03, $D4, $04, $D5, $D6
|0BDD31| db $05, $06, $D9, $DA, $5A, $F8, $F8, $09
|0BDD39| db $84 ; Copy past
|0BDD3A| dw $0000
|0BDD3C| db $64 ; Increment fill
|0BDD3D| db $07
|0BDD3E| db $0B ; Raw block
|0BDD3F| db $DA, $03, $5A, $F8, $F8, $13, $20, $0C
|0BDD47| db $03, $03, $D4, $D6
|0BDD4B| db $63 ; Increment fill
|0BDD4C| db $0D
|0BDD4D| db $00 ; Raw block
|0BDD4E| db $E3
|0BDD4F| db $84 ; Copy past
|0BDD50| dw $1B00
|0BDD52| db $04 ; Raw block
|0BDD53| db $F8, $ED, $11, $03, $D4
|0BDD58| db $62 ; Increment fill
|0BDD59| db $12
|0BDD5A| db $03 ; Raw block
|0BDD5B| db $E6, $15, $16, $E3
|0BDD5F| db $85 ; Copy past
|0BDD60| dw $2C00
|0BDD62| db $04 ; Raw block
|0BDD63| db $ED, $11, $E9, $17, $18
|0BDD68| db $62 ; Increment fill
|0BDD69| db $EC
|0BDD6A| db $06 ; Raw block
|0BDD6B| db $19, $1A, $F1, $E5, $E5, $13, $F8
|0BDD72| db $22 ; Repeat byte
|0BDD73| db $ED
|0BDD74| db $12 ; Raw block
|0BDD75| db $F2, $F3, $1B, $1C, $F6, $F7, $1D, $1E
|0BDD7D| db $FA, $CC, $AA, $1F, $F8, $ED, $ED, $7A
|0BDD85| db $1D, $1F, $D4
|0BDD88| db $63 ; Increment fill
|0BDD89| db $20
|0BDD8A| db $E0, $4E ; EXT Raw block
|0BDD8C| db $06, $24, $AA, $1C, $1C, $F8, $ED, $7A
|0BDD94| db $1C, $9F, $6F, $D4, $18, $19, $25, $26
|0BDD9C| db $06, $B7, $9F, $AA, $B2, $E5, $7A, $9F
|0BDDA4| db $75, $9F, $1F, $D4, $1D, $1E, $D5, $D5
|0BDDAC| db $06, $24, $AA, $8A, $AB, $1C, $9F, $75
|0BDDB4| db $75, $AA, $16, $D4, $27, $28, $18, $19
|0BDDBC| db $EC, $A6, $07, $7B, $B3, $9F, $B2, $8A
|0BDDC4| db $F4, $07, $C9, $29, $18, $19, $1D, $2A
|0BDDCC| db $2B, $42, $B1, $43, $A4, $AB, $AB, $AA
|0BDDD4| db $20, $B1, $21, $DD, $2C, $2D, $23
|0BDDDB| db $62 ; Increment fill
|0BDDDC| db $2E
|0BDDDD| db $02 ; Raw block
|0BDDDE| db $28, $31, $18
|0BDDE1| db $22 ; Repeat byte
|0BDDE2| db $B3
|0BDDE3| db $62 ; Increment fill
|0BDDE4| db $27
|0BDDE5| db $02 ; Raw block
|0BDDE6| db $24, $32, $D5
|0BDDE9| db $62 ; Increment fill
|0BDDEA| db $2B
|0BDDEB| db $11 ; Raw block
|0BDDEC| db $15, $33, $34, $30, $A4, $A4, $F7, $35
|0BDDF4| db $32, $8F, $36, $37, $D5, $35, $0A, $0A
|0BDDFC| db $EE, $EF
|0BDDFE| db $63 ; Increment fill
|0BDDFF| db $36
|0BDE00| db $04 ; Raw block
|0BDE01| db $38, $3B, $3C, $B3, $3D
|0BDE06| db $62 ; Increment fill
|0BDE07| db $39
|0BDE08| db $06 ; Raw block
|0BDE09| db $A4, $A4, $F7, $3C, $41, $04, $D2
|0BDE10| db $62 ; Increment fill
|0BDE11| db $3D
|0BDE12| db $0B ; Raw block
|0BDE13| db $42, $43, $F7, $18, $19, $40, $41, $D5
|0BDE1B| db $42, $36, $37, $43
|0BDE1F| db $FF ; End of Map 4D

;===================================================================================================

OverworldMap32_Screen4E_High:
|0BDE20| db $23 ; Repeat byte
|0BDE21| db $03
|0BDE22| db $00 ; Raw block
|0BDE23| db $04
|0BDE24| db $22 ; Repeat byte
|0BDE25| db $01
|0BDE26| db $01 ; Raw block
|0BDE27| db $03, $15
|0BDE29| db $25 ; Repeat byte
|0BDE2A| db $01
|0BDE2B| db $22 ; Repeat byte
|0BDE2C| db $03
|0BDE2D| db $04 ; Raw block
|0BDE2E| db $04, $03, $05, $01, $05
|0BDE33| db $22 ; Repeat byte
|0BDE34| db $01
|0BDE35| db $22 ; Repeat byte
|0BDE36| db $03
|0BDE37| db $83 ; Copy past
|0BDE38| dw $0E00
|0BDE3A| db $07 ; Raw block
|0BDE3B| db $04, $03, $02, $04, $01, $02, $00, $02
|0BDE43| db $24 ; Repeat byte
|0BDE44| db $05
|0BDE45| db $0B ; Raw block
|0BDE46| db $01, $03, $04, $03, $00, $03, $02, $15
|0BDE4E| db $00, $05, $02, $02
|0BDE52| db $83 ; Copy past
|0BDE53| dw $3800
|0BDE55| db $06 ; Raw block
|0BDE56| db $05, $04, $03, $00, $12, $05, $05
|0BDE5D| db $83 ; Copy past
|0BDE5E| dw $3600
|0BDE60| db $43 ; Repeat word
|0BDE61| dw $1200
|0BDE63| db $0C ; Raw block
|0BDE64| db $01, $01, $03, $05, $01, $04, $02, $00
|0BDE6C| db $05, $03, $02, $02, $00
|0BDE71| db $83 ; Copy past
|0BDE72| dw $2800
|0BDE74| db $11 ; Raw block
|0BDE75| db $01, $00, $05, $05, $04, $02, $05, $03
|0BDE7D| db $03, $02, $05, $02, $01, $02, $04, $01
|0BDE85| db $01, $12
|0BDE87| db $62 ; Increment fill
|0BDE88| db $00
|0BDE89| db $08 ; Raw block
|0BDE8A| db $00, $05, $04, $00, $04, $04, $01, $05
|0BDE92| db $02
|0BDE93| db $26 ; Repeat byte
|0BDE94| db $01
|0BDE95| db $06 ; Raw block
|0BDE96| db $12, $05, $03, $02, $03, $03, $00
|0BDE9D| db $22 ; Repeat byte
|0BDE9E| db $05
|0BDE9F| db $01 ; Raw block
|0BDEA0| db $03, $03
|0BDEA2| db $24 ; Repeat byte
|0BDEA3| db $01
|0BDEA4| db $0A ; Raw block
|0BDEA5| db $00, $03, $01, $05, $00, $12, $03, $05
|0BDEAD| db $03, $01, $01
|0BDEB0| db $22 ; Repeat byte
|0BDEB1| db $04
|0BDEB2| db $02 ; Raw block
|0BDEB3| db $05, $05, $00
|0BDEB6| db $22 ; Repeat byte
|0BDEB7| db $02
|0BDEB8| db $01 ; Raw block
|0BDEB9| db $05, $12
|0BDEBB| db $22 ; Repeat byte
|0BDEBC| db $03
|0BDEBD| db $02 ; Raw block
|0BDEBE| db $01, $01, $05
|0BDEC1| db $22 ; Repeat byte
|0BDEC2| db $15
|0BDEC3| db $01 ; Raw block
|0BDEC4| db $02, $05
|0BDEC6| db $22 ; Repeat byte
|0BDEC7| db $04
|0BDEC8| db $83 ; Copy past
|0BDEC9| dw $9300
|0BDECB| db $01 ; Raw block
|0BDECC| db $03, $01
|0BDECE| db $24 ; Repeat byte
|0BDECF| db $05
|0BDED0| db $11 ; Raw block
|0BDED1| db $01, $05, $05, $15, $05, $04, $01, $05
|0BDED9| db $05, $00, $05, $05, $15, $01, $00, $12
|0BDEE1| db $04, $03
|0BDEE3| db $22 ; Repeat byte
|0BDEE4| db $15
|0BDEE5| db $01 ; Raw block
|0BDEE6| db $05, $04
|0BDEE8| db $22 ; Repeat byte
|0BDEE9| db $01
|0BDEEA| db $10 ; Raw block
|0BDEEB| db $04, $04, $15, $04, $02, $02, $05, $04
|0BDEF3| db $15, $05, $02, $15, $15, $04, $04, $01
|0BDEFB| db $04
|0BDEFC| db $83 ; Copy past
|0BDEFD| dw $D700
|0BDEFF| db $00 ; Raw block
|0BDF00| db $04
|0BDF01| db $83 ; Copy past
|0BDF02| dw $E400
|0BDF04| db $01 ; Raw block
|0BDF05| db $03, $05
|0BDF07| db $22 ; Repeat byte
|0BDF08| db $15
|0BDF09| db $02 ; Raw block
|0BDF0A| db $04, $04, $15
|0BDF0D| db $FF ; End of Map 4E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen4E_Low:
|0BDF0E| db $00 ; Raw block
|0BDF0F| db $6B
|0BDF10| db $22 ; Repeat byte
|0BDF11| db $6C
|0BDF12| db $05 ; Raw block
|0BDF13| db $94, $E5, $E5, $F8, $75, $44
|0BDF19| db $24 ; Repeat byte
|0BDF1A| db $F8
|0BDF1B| db $00 ; Raw block
|0BDF1C| db $03
|0BDF1D| db $22 ; Repeat byte
|0BDF1E| db $6C
|0BDF1F| db $0A ; Raw block
|0BDF20| db $84, $A8, $46, $AC, $47, $E5, $E5, $F8
|0BDF28| db $68, $69, $7B
|0BDF2B| db $83 ; Copy past
|0BDF2C| dw $0E00
|0BDF2E| db $07 ; Raw block
|0BDF2F| db $84, $A8, $A1, $B2, $B4, $7A, $AA, $A1
|0BDF37| db $64 ; Increment fill
|0BDF38| db $47
|0BDF39| db $E0, $50 ; EXT Raw block
|0BDF3B| db $03, $6C, $84, $A8, $9F, $9A, $02, $45
|0BDF43| db $1D, $4D, $AA, $7A, $4E, $59, $5A, $4F
|0BDF4B| db $50, $84, $A8, $1C, $75, $51, $52, $46
|0BDF53| db $1C, $54, $86, $1C, $75, $9F, $75, $41
|0BDF5B| db $5B, $A8, $55, $DB, $B5, $6E, $1D, $56
|0BDF63| db $B2, $79, $91, $A9, $1C, $8D, $57, $58
|0BDF6B| db $49, $AA, $59, $5A, $C5, $7A, $5B, $56
|0BDF73| db $BA, $7A, $5C, $07, $AA, $97, $E6, $EB
|0BDF7B| db $6A, $75, $9F, $1F, $04, $9F, $5D, $C4
|0BDF83| db $1D, $81, $82, $E5, $5E, $82, $00, $06
|0BDF8B| db $06
|0BDF8C| db $22 ; Repeat byte
|0BDF8D| db $AB
|0BDF8E| db $0C ; Raw block
|0BDF8F| db $F2, $75, $5F, $B1, $61, $B4, $A8, $9F
|0BDF97| db $50, $60, $61, $20, $20
|0BDF9C| db $22 ; Repeat byte
|0BDF9D| db $B3
|0BDF9E| db $0C ; Raw block
|0BDF9F| db $FB, $F2, $9F, $56, $22, $62, $1C, $75
|0BDFA7| db $50, $63, $5A, $F8, $F8
|0BDFAC| db $22 ; Repeat byte
|0BDFAD| db $A4
|0BDFAE| db $0D ; Raw block
|0BDFAF| db $64, $65, $AA, $A1, $07, $A2, $66, $75
|0BDFB7| db $56, $57, $5A, $F8, $F8, $19
|0BDFBD| db $62 ; Increment fill
|0BDFBE| db $47
|0BDFBF| db $0A ; Raw block
|0BDFC0| db $41, $4D, $C9, $B1, $CA, $FB, $F2, $AA
|0BDFC8| db $56, $BA, $E5
|0BDFCB| db $64 ; Increment fill
|0BDFCC| db $6A
|0BDFCD| db $11 ; Raw block
|0BDFCE| db $CC, $6F, $70, $4A, $72, $CE, $FB, $73
|0BDFD6| db $66, $AA, $74, $75, $06, $D1, $1D, $75
|0BDFDE| db $8A, $C8
|0BDFE0| db $62 ; Increment fill
|0BDFE1| db $4B
|0BDFE2| db $E0, $26 ; EXT Raw block
|0BDFE4| db $26, $CE, $B3, $FB, $AB, $AA, $B3, $4E
|0BDFEC| db $A6, $07, $07, $7B, $B3, $4F, $2B, $D1
|0BDFF4| db $50, $51, $A4, $CE, $B3, $B3, $52, $53
|0BDFFC| db $42, $B1, $B1, $43, $F7, $54, $80, $20
|0BE004| db $81, $55, $56, $51, $A4, $F7, $57
|0BE00B| db $FF ; End of Map 4E

;===================================================================================================

OverworldMap32_Screen4F_High:
|0BE00C| db $01 ; Raw block
|0BE00D| db $05, $07
|0BE00F| db $2A ; Repeat byte
|0BE010| db $15
|0BE011| db $02 ; Raw block
|0BE012| db $02, $05, $01
|0BE015| db $22 ; Repeat byte
|0BE016| db $05
|0BE017| db $28 ; Repeat byte
|0BE018| db $15
|0BE019| db $08 ; Raw block
|0BE01A| db $05, $05, $01, $01, $03, $05, $05, $07
|0BE022| db $05
|0BE023| db $22 ; Repeat byte
|0BE024| db $15
|0BE025| db $00 ; Raw block
|0BE026| db $07
|0BE027| db $22 ; Repeat byte
|0BE028| db $15
|0BE029| db $00 ; Raw block
|0BE02A| db $06
|0BE02B| db $22 ; Repeat byte
|0BE02C| db $01
|0BE02D| db $01 ; Raw block
|0BE02E| db $04, $05
|0BE030| db $43 ; Repeat word
|0BE031| dw $0705
|0BE033| db $23 ; Repeat byte
|0BE034| db $15
|0BE035| db $0E ; Raw block
|0BE036| db $0F, $0F, $15, $06, $01, $15, $05, $08
|0BE03E| db $15, $05, $0F, $05, $05, $15, $07
|0BE045| db $23 ; Repeat byte
|0BE046| db $15
|0BE047| db $03 ; Raw block
|0BE048| db $07, $08, $02, $05
|0BE04C| db $22 ; Repeat byte
|0BE04D| db $15
|0BE04E| db $03 ; Raw block
|0BE04F| db $11, $0F, $0F, $06
|0BE053| db $25 ; Repeat byte
|0BE054| db $07
|0BE055| db $02 ; Raw block
|0BE056| db $15, $15, $05
|0BE059| db $22 ; Repeat byte
|0BE05A| db $15
|0BE05B| db $01 ; Raw block
|0BE05C| db $10, $05
|0BE05E| db $22 ; Repeat byte
|0BE05F| db $15
|0BE060| db $06 ; Raw block
|0BE061| db $00, $00, $04, $15, $15, $03, $15
|0BE068| db $83 ; Copy past
|0BE069| dw $4500
|0BE06B| db $22 ; Repeat byte
|0BE06C| db $15
|0BE06D| db $08 ; Raw block
|0BE06E| db $01, $05, $0D, $04, $01, $15, $15, $01
|0BE076| db $01
|0BE077| db $24 ; Repeat byte
|0BE078| db $05
|0BE079| db $83 ; Copy past
|0BE07A| dw $2A00
|0BE07C| db $04 ; Raw block
|0BE07D| db $05, $01, $15, $02, $0C
|0BE082| db $23 ; Repeat byte
|0BE083| db $01
|0BE084| db $04 ; Raw block
|0BE085| db $05, $09, $08, $05, $15
|0BE08A| db $43 ; Repeat word
|0BE08B| dw $0503
|0BE08D| db $83 ; Copy past
|0BE08E| dw $2B00
|0BE090| db $02 ; Raw block
|0BE091| db $15, $01, $01
|0BE094| db $23 ; Repeat byte
|0BE095| db $05
|0BE096| db $01 ; Raw block
|0BE097| db $15, $0A
|0BE099| db $22 ; Repeat byte
|0BE09A| db $15
|0BE09B| db $01 ; Raw block
|0BE09C| db $03, $04
|0BE09E| db $22 ; Repeat byte
|0BE09F| db $01
|0BE0A0| db $01 ; Raw block
|0BE0A1| db $05, $01
|0BE0A3| db $22 ; Repeat byte
|0BE0A4| db $05
|0BE0A5| db $07 ; Raw block
|0BE0A6| db $15, $01, $03, $06, $00, $15, $05, $00
|0BE0AE| db $22 ; Repeat byte
|0BE0AF| db $01
|0BE0B0| db $24 ; Repeat byte
|0BE0B1| db $05
|0BE0B2| db $01 ; Raw block
|0BE0B3| db $15, $01
|0BE0B5| db $22 ; Repeat byte
|0BE0B6| db $15
|0BE0B7| db $02 ; Raw block
|0BE0B8| db $0F, $05, $04
|0BE0BB| db $22 ; Repeat byte
|0BE0BC| db $01
|0BE0BD| db $01 ; Raw block
|0BE0BE| db $03, $05
|0BE0C0| db $22 ; Repeat byte
|0BE0C1| db $06
|0BE0C2| db $0C ; Raw block
|0BE0C3| db $01, $01, $15, $06, $15, $0F, $05, $03
|0BE0CB| db $15, $06, $01, $03, $03
|0BE0D0| db $23 ; Repeat byte
|0BE0D1| db $06
|0BE0D2| db $43 ; Repeat word
|0BE0D3| dw $0601
|0BE0D5| db $23 ; Repeat byte
|0BE0D6| db $15
|0BE0D7| db $03 ; Raw block
|0BE0D8| db $01, $06, $03, $05
|0BE0DC| db $24 ; Repeat byte
|0BE0DD| db $06
|0BE0DE| db $03 ; Raw block
|0BE0DF| db $01, $02, $01, $03
|0BE0E3| db $22 ; Repeat byte
|0BE0E4| db $15
|0BE0E5| db $01 ; Raw block
|0BE0E6| db $01, $01
|0BE0E8| db $FF ; End of Map 4F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen4F_Low:
|0BE0E9| db $02 ; Raw block
|0BE0EA| db $83, $0A, $58
|0BE0ED| db $28 ; Repeat byte
|0BE0EE| db $59
|0BE0EF| db $06 ; Raw block
|0BE0F0| db $5A, $82, $DE, $03, $8E, $83, $8F
|0BE0F7| db $28 ; Repeat byte
|0BE0F8| db $5B
|0BE0F9| db $08 ; Raw block
|0BE0FA| db $FF, $DE, $03, $03, $6C, $8E, $96, $35
|0BE102| db $E1
|0BE103| db $62 ; Increment fill
|0BE104| db $5C
|0BE105| db $00 ; Raw block
|0BE106| db $89
|0BE107| db $62 ; Increment fill
|0BE108| db $5F
|0BE109| db $00 ; Raw block
|0BE10A| db $0A
|0BE10B| db $22 ; Repeat byte
|0BE10C| db $03
|0BE10D| db $05 ; Raw block
|0BE10E| db $83, $9E, $9F, $19, $E1, $19
|0BE114| db $63 ; Increment fill
|0BE115| db $62
|0BE116| db $0E ; Raw block
|0BE117| db $99, $86, $66, $16, $03, $67, $A7, $8F
|0BE11F| db $68, $E1, $70, $E1, $E1, $69, $22
|0BE126| db $63 ; Increment fill
|0BE127| db $6A
|0BE128| db $03 ; Raw block
|0BE129| db $23, $B6, $82, $8A
|0BE12D| db $62 ; Increment fill
|0BE12E| db $6E
|0BE12F| db $03 ; Raw block
|0BE130| db $00, $9A, $94, $1D
|0BE134| db $25 ; Repeat byte
|0BE135| db $27
|0BE136| db $02 ; Raw block
|0BE137| db $71, $72, $8A
|0BE13A| db $62 ; Increment fill
|0BE13B| db $73
|0BE13C| db $01 ; Raw block
|0BE13D| db $AB, $BD
|0BE13F| db $62 ; Increment fill
|0BE140| db $76
|0BE141| db $0A ; Raw block
|0BE142| db $1D, $1D, $BE, $79, $7A, $4D, $7B, $8A
|0BE14A| db $C5, $7C, $20
|0BE14D| db $62 ; Increment fill
|0BE14E| db $7D
|0BE14F| db $08 ; Raw block
|0BE150| db $E4, $5A, $C5, $7C, $DB, $79, $80, $41
|0BE158| db $2E
|0BE159| db $62 ; Increment fill
|0BE15A| db $D2
|0BE15B| db $1E ; Raw block
|0BE15C| db $E1, $E1, $81, $82, $66, $1F, $DA, $23
|0BE164| db $83, $8A, $E3, $48, $49, $CD, $CD, $DF
|0BE16C| db $36, $AA, $E2, $84, $88, $E5, $D5, $E6
|0BE174| db $85, $66, $52, $53, $86, $D6, $D6
|0BE17B| db $63 ; Increment fill
|0BE17C| db $EB
|0BE17D| db $01 ; Raw block
|0BE17E| db $87, $01
|0BE180| db $62 ; Increment fill
|0BE181| db $88
|0BE182| db $06 ; Raw block
|0BE183| db $49, $20, $77, $71, $06, $83, $D6
|0BE18A| db $62 ; Increment fill
|0BE18B| db $F6
|0BE18C| db $11 ; Raw block
|0BE18D| db $8B, $CC, $FF, $66, $A0, $8C, $5B, $1D
|0BE195| db $77, $71, $06, $8E, $83, $84, $FE, $FF
|0BE19D| db $8D, $A0
|0BE19F| db $62 ; Increment fill
|0BE1A0| db $8E
|0BE1A1| db $07 ; Raw block
|0BE1A2| db $48, $5D, $C4, $77, $71, $06, $6C, $8E
|0BE1AA| db $62 ; Increment fill
|0BE1AB| db $08
|0BE1AC| db $0C ; Raw block
|0BE1AD| db $03, $D9, $91, $0D, $92, $18, $5F, $B1
|0BE1B5| db $93, $12, $0C, $6C, $6C
|0BE1BA| db $63 ; Increment fill
|0BE1BB| db $13
|0BE1BC| db $04 ; Raw block
|0BE1BD| db $03, $17, $17, $18, $92
|0BE1C2| db $62 ; Increment fill
|0BE1C3| db $94
|0BE1C4| db $03 ; Raw block
|0BE1C5| db $03, $1B, $6C, $9E
|0BE1C9| db $63 ; Increment fill
|0BE1CA| db $1C
|0BE1CB| db $04 ; Raw block
|0BE1CC| db $16, $03, $75, $00, $63
|0BE1D1| db $62 ; Increment fill
|0BE1D2| db $97
|0BE1D3| db $01 ; Raw block
|0BE1D4| db $F3, $71
|0BE1D6| db $FF ; End of Map 4F

;===================================================================================================

OverworldMap32_Screen50_High:
|0BE1D7| db $03 ; Raw block
|0BE1D8| db $00, $00, $06, $06
|0BE1DC| db $26 ; Repeat byte
|0BE1DD| db $00
|0BE1DE| db $01 ; Raw block
|0BE1DF| db $06, $06
|0BE1E1| db $24 ; Repeat byte
|0BE1E2| db $00
|0BE1E3| db $01 ; Raw block
|0BE1E4| db $06, $06
|0BE1E6| db $26 ; Repeat byte
|0BE1E7| db $00
|0BE1E8| db $01 ; Raw block
|0BE1E9| db $06, $06
|0BE1EB| db $23 ; Repeat byte
|0BE1EC| db $00
|0BE1ED| db $03 ; Raw block
|0BE1EE| db $01, $06, $06, $01
|0BE1F2| db $23 ; Repeat byte
|0BE1F3| db $00
|0BE1F4| db $00 ; Raw block
|0BE1F5| db $03
|0BE1F6| db $84 ; Copy past
|0BE1F7| dw $2100
|0BE1F9| db $05 ; Raw block
|0BE1FA| db $03, $00, $04, $06, $05, $01
|0BE200| db $24 ; Repeat byte
|0BE201| db $00
|0BE202| db $02 ; Raw block
|0BE203| db $01, $02, $06
|0BE206| db $24 ; Repeat byte
|0BE207| db $00
|0BE208| db $01 ; Raw block
|0BE209| db $01, $06
|0BE20B| db $25 ; Repeat byte
|0BE20C| db $00
|0BE20D| db $00 ; Raw block
|0BE20E| db $01
|0BE20F| db $25 ; Repeat byte
|0BE210| db $00
|0BE211| db $04 ; Raw block
|0BE212| db $01, $06, $01, $01, $06
|0BE217| db $22 ; Repeat byte
|0BE218| db $00
|0BE219| db $04 ; Raw block
|0BE21A| db $03, $04, $00, $06, $01
|0BE21F| db $22 ; Repeat byte
|0BE220| db $00
|0BE221| db $00 ; Raw block
|0BE222| db $04
|0BE223| db $24 ; Repeat byte
|0BE224| db $01
|0BE225| db $00 ; Raw block
|0BE226| db $00
|0BE227| db $22 ; Repeat byte
|0BE228| db $01
|0BE229| db $02 ; Raw block
|0BE22A| db $04, $03, $01
|0BE22D| db $23 ; Repeat byte
|0BE22E| db $00
|0BE22F| db $03 ; Raw block
|0BE230| db $15, $03, $15, $06
|0BE234| db $23 ; Repeat byte
|0BE235| db $15
|0BE236| db $02 ; Raw block
|0BE237| db $04, $04, $01
|0BE23A| db $25 ; Repeat byte
|0BE23B| db $00
|0BE23C| db $09 ; Raw block
|0BE23D| db $01, $00, $00, $06, $04, $15, $15, $04
|0BE245| db $06, $06
|0BE247| db $26 ; Repeat byte
|0BE248| db $00
|0BE249| db $00 ; Raw block
|0BE24A| db $01
|0BE24B| db $22 ; Repeat byte
|0BE24C| db $00
|0BE24D| db $22 ; Repeat byte
|0BE24E| db $01
|0BE24F| db $02 ; Raw block
|0BE250| db $15, $15, $01
|0BE253| db $24 ; Repeat byte
|0BE254| db $00
|0BE255| db $00 ; Raw block
|0BE256| db $01
|0BE257| db $23 ; Repeat byte
|0BE258| db $00
|0BE259| db $05 ; Raw block
|0BE25A| db $01, $15, $15, $03, $15, $15
|0BE260| db $24 ; Repeat byte
|0BE261| db $00
|0BE262| db $43 ; Repeat word
|0BE263| dw $0006
|0BE265| db $83 ; Copy past
|0BE266| dw $4900
|0BE268| db $00 ; Raw block
|0BE269| db $01
|0BE26A| db $25 ; Repeat byte
|0BE26B| db $00
|0BE26C| db $02 ; Raw block
|0BE26D| db $01, $15, $00
|0BE270| db $84 ; Copy past
|0BE271| dw $6500
|0BE273| db $02 ; Raw block
|0BE274| db $00, $04, $06
|0BE277| db $24 ; Repeat byte
|0BE278| db $00
|0BE279| db $01 ; Raw block
|0BE27A| db $06, $15
|0BE27C| db $83 ; Copy past
|0BE27D| dw $0100
|0BE27F| db $03 ; Raw block
|0BE280| db $01, $06, $06, $04
|0BE284| db $26 ; Repeat byte
|0BE285| db $00
|0BE286| db $03 ; Raw block
|0BE287| db $06, $03, $06, $06
|0BE28B| db $23 ; Repeat byte
|0BE28C| db $00
|0BE28D| db $00 ; Raw block
|0BE28E| db $06
|0BE28F| db $26 ; Repeat byte
|0BE290| db $00
|0BE291| db $02 ; Raw block
|0BE292| db $06, $03, $06
|0BE295| db $24 ; Repeat byte
|0BE296| db $00
|0BE297| db $00 ; Raw block
|0BE298| db $06
|0BE299| db $23 ; Repeat byte
|0BE29A| db $00
|0BE29B| db $FF ; End of Map 50

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen50_Low:
|0BE29C| db $03 ; Raw block
|0BE29D| db $02, $00, $22, $23
|0BE2A1| db $62 ; Increment fill
|0BE2A2| db $00
|0BE2A3| db $01 ; Raw block
|0BE2A4| db $00, $01
|0BE2A6| db $86 ; Copy past
|0BE2A7| dw $0000
|0BE2A9| db $03 ; Raw block
|0BE2AA| db $0B, $09, $24, $25
|0BE2AE| db $62 ; Increment fill
|0BE2AF| db $09
|0BE2B0| db $01 ; Raw block
|0BE2B1| db $09, $0A
|0BE2B3| db $86 ; Copy past
|0BE2B4| dw $1000
|0BE2B6| db $05 ; Raw block
|0BE2B7| db $06, $10, $26, $27, $31, $93
|0BE2BD| db $62 ; Increment fill
|0BE2BE| db $06
|0BE2BF| db $00 ; Raw block
|0BE2C0| db $EC
|0BE2C1| db $84 ; Copy past
|0BE2C2| dw $2100
|0BE2C4| db $0E ; Raw block
|0BE2C5| db $EC, $02, $6D, $28, $4F, $39, $3F, $02
|0BE2CD| db $00, $01, $83, $1C, $5E, $29, $D1
|0BE2D4| db $83 ; Copy past
|0BE2D5| dw $0E00
|0BE2D7| db $0A ; Raw block
|0BE2D8| db $2F, $2A, $91, $92, $0B, $09, $0A, $8C
|0BE2E0| db $29, $1D, $EE
|0BE2E3| db $84 ; Copy past
|0BE2E4| dw $1D00
|0BE2E6| db $E0, $23 ; EXT Raw block
|0BE2E8| db $2B, $61, $62, $2C, $7A, $07, $08, $EC
|0BE2F0| db $60, $1D, $2D, $31, $93, $06, $02, $6D
|0BE2F8| db $26, $67, $68, $19, $1B, $84, $3A, $1B
|0BE300| db $1C, $23, $FB, $39, $3F, $02, $0B, $09
|0BE308| db $9A, $DB, $9B, $B3
|0BE30C| db $62 ; Increment fill
|0BE30D| db $9C
|0BE30E| db $1A ; Raw block
|0BE30F| db $9C, $66, $1E, $74, $91, $92, $0B, $7A
|0BE317| db $07, $FE, $38, $C9, $FE, $45, $08, $9F
|0BE31F| db $A0, $60, $2F, $30, $C9, $93, $06, $02
|0BE327| db $00, $01, $7F
|0BE32A| db $83 ; Copy past
|0BE32B| dw $3400
|0BE32D| db $04 ; Raw block
|0BE32E| db $04, $1B, $1C, $A1, $A2
|0BE333| db $84 ; Copy past
|0BE334| dw $6D00
|0BE336| db $00 ; Raw block
|0BE337| db $0A
|0BE338| db $83 ; Copy past
|0BE339| dw $7C00
|0BE33B| db $06 ; Raw block
|0BE33C| db $09, $07, $A3, $A4, $FF, $A5, $A6
|0BE343| db $83 ; Copy past
|0BE344| dw $7E00
|0BE346| db $1A ; Raw block
|0BE347| db $93, $38, $1D, $2C, $7A, $07, $32, $7C
|0BE34F| db $B2, $2D, $1D, $C9, $93, $7A, $02, $00
|0BE357| db $04, $A7, $1D, $19, $1A, $00, $04, $3B
|0BE35F| db $1D, $23, $3B
|0BE362| db $84 ; Copy past
|0BE363| dw $3D00
|0BE365| db $09 ; Raw block
|0BE366| db $3C, $A8, $1D, $3F, $40, $09, $07, $41
|0BE36E| db $42, $1E
|0BE370| db $83 ; Copy past
|0BE371| dw $1600
|0BE373| db $09 ; Raw block
|0BE374| db $7A, $07, $FE, $43, $D5, $44, $45, $07
|0BE37C| db $FE, $7C
|0BE37E| db $83 ; Copy past
|0BE37F| dw $B400
|0BE381| db $83 ; Copy past
|0BE382| dw $BE00
|0BE384| db $03 ; Raw block
|0BE385| db $01, $46, $D5, $47
|0BE389| db $83 ; Copy past
|0BE38A| dw $9000
|0BE38C| db $01 ; Raw block
|0BE38D| db $1D, $2E
|0BE38F| db $83 ; Copy past
|0BE390| dw $0600
|0BE392| db $FF ; End of Map 50

;===================================================================================================

OverworldMap32_Screen11_High:
|0BE393| db $2A ; Repeat byte
|0BE394| db $00
|0BE395| db $22 ; Repeat byte
|0BE396| db $15
|0BE397| db $2D ; Repeat byte
|0BE398| db $00
|0BE399| db $00 ; Raw block
|0BE39A| db $15
|0BE39B| db $2D ; Repeat byte
|0BE39C| db $00
|0BE39D| db $04 ; Raw block
|0BE39E| db $06, $04, $06, $06, $01
|0BE3A3| db $23 ; Repeat byte
|0BE3A4| db $00
|0BE3A5| db $0B ; Raw block
|0BE3A6| db $01, $01, $00, $01, $01, $00, $01, $01
|0BE3AE| db $0D, $00, $00, $15
|0BE3B2| db $23 ; Repeat byte
|0BE3B3| db $00
|0BE3B4| db $00 ; Raw block
|0BE3B5| db $01
|0BE3B6| db $25 ; Repeat byte
|0BE3B7| db $15
|0BE3B8| db $0A ; Raw block
|0BE3B9| db $03, $0D, $05, $15, $06, $07, $14, $07
|0BE3C1| db $07, $15, $04
|0BE3C4| db $24 ; Repeat byte
|0BE3C5| db $01
|0BE3C6| db $83 ; Copy past
|0BE3C7| dw $4B00
|0BE3C9| db $06 ; Raw block
|0BE3CA| db $01, $15, $15, $14, $01, $03, $03
|0BE3D1| db $23 ; Repeat byte
|0BE3D2| db $15
|0BE3D3| db $00 ; Raw block
|0BE3D4| db $01
|0BE3D5| db $83 ; Copy past
|0BE3D6| dw $3200
|0BE3D8| db $06 ; Raw block
|0BE3D9| db $15, $00, $00, $01, $00, $00, $0F
|0BE3E0| db $23 ; Repeat byte
|0BE3E1| db $15
|0BE3E2| db $0B ; Raw block
|0BE3E3| db $01, $01, $04, $04, $0B, $14, $00, $14
|0BE3EB| db $04, $04, $03, $06
|0BE3EF| db $22 ; Repeat byte
|0BE3F0| db $15
|0BE3F1| db $06 ; Raw block
|0BE3F2| db $0D, $00, $0C, $04, $04, $08, $08
|0BE3F9| db $22 ; Repeat byte
|0BE3FA| db $00
|0BE3FB| db $02 ; Raw block
|0BE3FC| db $01, $04, $00
|0BE3FF| db $23 ; Repeat byte
|0BE400| db $15
|0BE401| db $01 ; Raw block
|0BE402| db $01, $04
|0BE404| db $23 ; Repeat byte
|0BE405| db $08
|0BE406| db $22 ; Repeat byte
|0BE407| db $00
|0BE408| db $11 ; Raw block
|0BE409| db $01, $07, $06, $15, $0F, $0F, $00, $00
|0BE411| db $15, $06, $15, $04, $01, $00, $00, $04
|0BE419| db $04, $0C
|0BE41B| db $22 ; Repeat byte
|0BE41C| db $15
|0BE41D| db $07 ; Raw block
|0BE41E| db $07, $07, $06, $15, $12, $15, $06, $03
|0BE426| db $22 ; Repeat byte
|0BE427| db $00
|0BE428| db $0C ; Raw block
|0BE429| db $01, $04, $03, $00, $15, $02, $06, $15
|0BE431| db $00, $0B, $0B, $06, $06
|0BE436| db $22 ; Repeat byte
|0BE437| db $00
|0BE438| db $03 ; Raw block
|0BE439| db $15, $04, $01, $0C
|0BE43D| db $23 ; Repeat byte
|0BE43E| db $15
|0BE43F| db $04 ; Raw block
|0BE440| db $08, $08, $04, $0B, $08
|0BE445| db $83 ; Copy past
|0BE446| dw $B000
|0BE448| db $02 ; Raw block
|0BE449| db $00, $04, $04
|0BE44C| db $23 ; Repeat byte
|0BE44D| db $15
|0BE44E| db $04 ; Raw block
|0BE44F| db $08, $08, $04, $08, $08
|0BE454| db $25 ; Repeat byte
|0BE455| db $00
|0BE456| db $05 ; Raw block
|0BE457| db $04, $15, $06, $0F, $01, $0B
|0BE45D| db $83 ; Copy past
|0BE45E| dw $EC00
|0BE460| db $FF ; End of Map 11

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen11_Low:
|0BE461| db $62 ; Increment fill
|0BE462| db $00
|0BE463| db $62 ; Increment fill
|0BE464| db $00
|0BE465| db $84 ; Copy past
|0BE466| dw $0000
|0BE468| db $62 ; Increment fill
|0BE469| db $A9
|0BE46A| db $01 ; Raw block
|0BE46B| db $02, $00
|0BE46D| db $62 ; Increment fill
|0BE46E| db $09
|0BE46F| db $62 ; Increment fill
|0BE470| db $09
|0BE471| db $84 ; Copy past
|0BE472| dw $1000
|0BE474| db $06 ; Raw block
|0BE475| db $8C, $AC, $92, $0B, $09, $07, $08
|0BE47C| db $62 ; Increment fill
|0BE47D| db $06
|0BE47E| db $00 ; Raw block
|0BE47F| db $06
|0BE480| db $84 ; Copy past
|0BE481| dw $2000
|0BE483| db $04 ; Raw block
|0BE484| db $38, $37, $2F, $AC, $0E
|0BE489| db $83 ; Copy past
|0BE48A| dw $0000
|0BE48C| db $0B ; Raw block
|0BE48D| db $04, $1B, $84, $3A, $1B, $84, $3A, $3B
|0BE495| db $E5, $1D, $A0, $AD
|0BE499| db $83 ; Copy past
|0BE49A| dw $1000
|0BE49C| db $00 ; Raw block
|0BE49D| db $07
|0BE49E| db $63 ; Increment fill
|0BE49F| db $AE
|0BE4A0| db $0C ; Raw block
|0BE4A1| db $AF, $B0, $B3, $E6, $55, $B2, $9E, $ED
|0BE4A9| db $E5, $EC, $ED, $B3, $82
|0BE4AE| db $24 ; Repeat byte
|0BE4AF| db $E5
|0BE4B0| db $0A ; Raw block
|0BE4B1| db $BB, $E7, $59, $B4, $B3, $B5, $B6, $EA
|0BE4B9| db $E5, $BB, $A8
|0BE4BC| db $63 ; Increment fill
|0BE4BD| db $B7
|0BE4BE| db $0B ; Raw block
|0BE4BF| db $2D, $1D, $A9, $1E, $1F, $BB, $09, $0A
|0BE4C7| db $74, $1D, $1D, $01
|0BE4CB| db $63 ; Increment fill
|0BE4CC| db $BC
|0BE4CD| db $0B ; Raw block
|0BE4CE| db $4B, $2D, $2D, $2E, $FE, $F2, $07, $C9
|0BE4D6| db $07, $60, $5F, $70
|0BE4DA| db $62 ; Increment fill
|0BE4DB| db $C0
|0BE4DC| db $0C ; Raw block
|0BE4DD| db $B8, $1D, $29, $38, $39, $9F, $4B, $00
|0BE4E5| db $01, $83, $1C, $2C, $A9
|0BE4EA| db $63 ; Increment fill
|0BE4EB| db $C3
|0BE4EC| db $1A ; Raw block
|0BE4ED| db $6D, $2C, $9B, $9C, $A5, $4E, $09, $0A
|0BE4F5| db $8C, $29, $E5, $9C, $C7, $08, $01, $1F
|0BE4FD| db $1F, $C8, $8A, $C9, $BE, $67, $07, $08
|0BE505| db $07, $60, $39
|0BE508| db $62 ; Increment fill
|0BE509| db $CA
|0BE50A| db $07 ; Raw block
|0BE50B| db $04, $05, $9C, $CD, $83, $AD, $8A, $DB
|0BE513| db $83 ; Copy past
|0BE514| dw $9000
|0BE516| db $12 ; Raw block
|0BE517| db $23, $FB, $1F, $CE, $4F, $8E, $CF, $AB
|0BE51F| db $EF, $EF, $93, $9C, $09, $0A, $8C, $D0
|0BE527| db $1E, $74, $28
|0BE52A| db $63 ; Increment fill
|0BE52B| db $D1
|0BE52C| db $04 ; Raw block
|0BE52D| db $B8, $B9, $2E, $FE, $B9
|0BE532| db $43 ; Repeat word
|0BE533| dw $0807
|0BE535| db $02 ; Raw block
|0BE536| db $93, $07, $60
|0BE539| db $63 ; Increment fill
|0BE53A| db $D5
|0BE53B| db $01 ; Raw block
|0BE53C| db $BD, $4B
|0BE53E| db $84 ; Copy past
|0BE53F| dw $8D00
|0BE541| db $83 ; Copy past
|0BE542| dw $0200
|0BE544| db $09 ; Raw block
|0BE545| db $6D, $D9, $F5, $00, $42, $47, $D3, $42
|0BE54D| db $D2, $D3
|0BE54F| db $FF ; End of Map 11

;===================================================================================================

OverworldMap32_Screen12_High:
|0BE550| db $22 ; Repeat byte
|0BE551| db $00
|0BE552| db $01 ; Raw block
|0BE553| db $01, $01
|0BE555| db $27 ; Repeat byte
|0BE556| db $00
|0BE557| db $02 ; Raw block
|0BE558| db $01, $14, $15
|0BE55B| db $22 ; Repeat byte
|0BE55C| db $00
|0BE55D| db $16 ; Raw block
|0BE55E| db $01, $00, $15, $00, $00, $0B, $15, $00
|0BE566| db $06, $01, $03, $15, $00, $06, $06, $01
|0BE56E| db $06, $02, $15, $15, $01, $00, $00
|0BE575| db $22 ; Repeat byte
|0BE576| db $08
|0BE577| db $01 ; Raw block
|0BE578| db $15, $01
|0BE57A| db $22 ; Repeat byte
|0BE57B| db $00
|0BE57C| db $1B ; Raw block
|0BE57D| db $0F, $02, $02, $0F, $0F, $01, $01, $00
|0BE585| db $08, $08, $0B, $01, $05, $02, $06, $15
|0BE58D| db $15, $03, $05, $15, $0F, $06, $07, $01
|0BE595| db $0B, $15, $15, $00
|0BE599| db $22 ; Repeat byte
|0BE59A| db $01
|0BE59B| db $06 ; Raw block
|0BE59C| db $15, $0D, $03, $05, $07, $0C, $07
|0BE5A3| db $22 ; Repeat byte
|0BE5A4| db $01
|0BE5A5| db $83 ; Copy past
|0BE5A6| dw $4C00
|0BE5A8| db $15 ; Raw block
|0BE5A9| db $15, $0D, $01, $0D, $08, $08, $05, $07
|0BE5B1| db $07, $08, $07, $01, $15, $15, $00, $00
|0BE5B9| db $15, $0B, $04, $01, $02, $08
|0BE5BF| db $22 ; Repeat byte
|0BE5C0| db $07
|0BE5C1| db $1A ; Raw block
|0BE5C2| db $06, $01, $08, $14, $15, $04, $15, $00
|0BE5CA| db $04, $04, $01, $00, $02, $08, $07, $05
|0BE5D2| db $07, $08, $08, $00, $15, $01, $01, $02
|0BE5DA| db $04, $04, $15
|0BE5DD| db $84 ; Copy past
|0BE5DE| dw $8200
|0BE5E0| db $09 ; Raw block
|0BE5E1| db $09, $07, $03, $01, $06, $00, $01, $01
|0BE5E9| db $08, $01
|0BE5EB| db $83 ; Copy past
|0BE5EC| dw $1900
|0BE5EE| db $05 ; Raw block
|0BE5EF| db $02, $05, $05, $03, $00, $06
|0BE5F5| db $23 ; Repeat byte
|0BE5F6| db $00
|0BE5F7| db $04 ; Raw block
|0BE5F8| db $08, $01, $01, $00, $01
|0BE5FD| db $24 ; Repeat byte
|0BE5FE| db $15
|0BE5FF| db $00 ; Raw block
|0BE600| db $06
|0BE601| db $23 ; Repeat byte
|0BE602| db $15
|0BE603| db $22 ; Repeat byte
|0BE604| db $06
|0BE605| db $13 ; Raw block
|0BE606| db $15, $15, $07, $06, $0B, $0B, $02, $15
|0BE60E| db $06, $15, $12, $07, $0B, $06, $04, $0B
|0BE616| db $15, $15, $02, $00
|0BE61A| db $43 ; Repeat word
|0BE61B| dw $0600
|0BE61D| db $01 ; Raw block
|0BE61E| db $04, $15
|0BE620| db $83 ; Copy past
|0BE621| dw $6F00
|0BE623| db $09 ; Raw block
|0BE624| db $04, $08, $08, $0B, $00, $00, $04, $04
|0BE62C| db $16, $01
|0BE62E| db $24 ; Repeat byte
|0BE62F| db $04
|0BE630| db $83 ; Copy past
|0BE631| dw $DF00
|0BE633| db $02 ; Raw block
|0BE634| db $01, $00, $00
|0BE637| db $22 ; Repeat byte
|0BE638| db $04
|0BE639| db $06 ; Raw block
|0BE63A| db $00, $01, $04, $04, $16, $16, $06
|0BE641| db $FF ; End of Map 12

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen12_Low:
|0BE642| db $E0, $AC ; EXT Raw block
|0BE644| db $01, $02, $00, $04, $3B, $1D, $B2, $1D
|0BE64C| db $AA, $1D, $A9, $FB, $A9, $D2, $F1, $DA
|0BE654| db $0A, $0B, $09, $07, $1C, $DB, $B2, $1D
|0BE65C| db $F3, $DC, $1D, $70, $1E, $8E, $DD, $9F
|0BE664| db $5E, $AC, $0E, $2B, $A1, $DE, $DF, $A0
|0BE66C| db $1D, $AA, $B8, $B9, $CC, $E0, $DB, $9F
|0BE674| db $A1, $A1, $08, $A1, $AA, $5E, $5F, $D9
|0BE67C| db $A0, $1D, $BD, $4B, $43, $E4, $5A, $61
|0BE684| db $9E, $E1, $E2, $9A, $99, $E3, $6A, $16
|0BE68C| db $6C, $42, $47, $E4, $E5, $FB, $1F, $22
|0BE694| db $B3, $E6, $E6, $32, $C5, $36, $4C, $4C
|0BE69C| db $93, $4D, $4E, $E7, $1F, $1D, $1E, $E8
|0BE6A4| db $C7, $22, $E7, $69, $6A, $E1, $89, $4C
|0BE6AC| db $C4, $61, $58, $E9, $EA, $1C, $1D, $EB
|0BE6B4| db $51, $2F, $2D, $3E, $6B, $43, $36, $14
|0BE6BC| db $16, $D9, $B3, $EB, $EC, $7C, $ED, $FB
|0BE6C4| db $39, $3A, $4C, $1D, $3E, $6B, $43, $E1
|0BE6CC| db $14, $B6, $B7, $FB, $EE, $23, $E6, $08
|0BE6D4| db $42, $43, $EF, $2D, $FB, $3E, $6B, $95
|0BE6DC| db $FC, $68, $55, $1E, $3A, $1D, $E4, $E5
|0BE6E4| db $42, $4E, $E7, $A9, $70, $1E, $3E, $6D
|0BE6EC| db $6D, $49, $A9, $70, $FB
|0BE6F1| db $22 ; Repeat byte
|0BE6F2| db $1D
|0BE6F3| db $04 ; Raw block
|0BE6F4| db $49, $58, $65, $1D, $1E
|0BE6F9| db $64 ; Increment fill
|0BE6FA| db $F0
|0BE6FB| db $01 ; Raw block
|0BE6FC| db $3E, $F0
|0BE6FE| db $62 ; Increment fill
|0BE6FF| db $F5
|0BE700| db $16 ; Raw block
|0BE701| db $8D, $9C, $9C, $F8, $F9, $05, $92, $EF
|0BE709| db $F0, $72, $FA, $9C, $FB, $85, $02, $EF
|0BE711| db $93, $2E, $FE, $FC, $FD, $A7, $1D
|0BE718| db $43 ; Repeat word
|0BE719| dw $B31D
|0BE71B| db $0F ; Raw block
|0BE71C| db $2D, $FE, $FF, $3D, $8A, $AB, $39, $9F
|0BE724| db $4B, $43, $1D, $1D, $2D, $2E, $00, $4B
|0BE72C| db $62 ; Increment fill
|0BE72D| db $38
|0BE72E| db $08 ; Raw block
|0BE72F| db $8A, $AA, $B3, $42, $D2, $D3, $62, $1D
|0BE737| db $1D
|0BE738| db $62 ; Increment fill
|0BE739| db $38
|0BE73A| db $06 ; Raw block
|0BE73B| db $1D, $61, $42, $43, $01, $02, $A0
|0BE742| db $FF ; End of Map 12

;===================================================================================================

OverworldMap32_Screen53_High:
|0BE743| db $01 ; Raw block
|0BE744| db $04, $06
|0BE746| db $22 ; Repeat byte
|0BE747| db $01
|0BE748| db $00 ; Raw block
|0BE749| db $06
|0BE74A| db $23 ; Repeat byte
|0BE74B| db $00
|0BE74C| db $02 ; Raw block
|0BE74D| db $01, $03, $06
|0BE750| db $22 ; Repeat byte
|0BE751| db $00
|0BE752| db $14 ; Raw block
|0BE753| db $04, $03, $01, $01, $16, $16, $01, $00
|0BE75B| db $01, $07, $01, $01, $16, $01, $00, $00
|0BE763| db $03, $03, $01, $16, $02
|0BE768| db $83 ; Copy past
|0BE769| dw $1500
|0BE76B| db $06 ; Raw block
|0BE76C| db $01, $16, $16, $02, $01, $00, $00
|0BE773| db $22 ; Repeat byte
|0BE774| db $02
|0BE775| db $02 ; Raw block
|0BE776| db $04, $02, $06
|0BE779| db $83 ; Copy past
|0BE77A| dw $0300
|0BE77C| db $05 ; Raw block
|0BE77D| db $16, $16, $00, $01, $01, $06
|0BE783| db $22 ; Repeat byte
|0BE784| db $01
|0BE785| db $01 ; Raw block
|0BE786| db $16, $00
|0BE788| db $22 ; Repeat byte
|0BE789| db $06
|0BE78A| db $09 ; Raw block
|0BE78B| db $0D, $07, $16, $16, $07, $16, $01, $06
|0BE793| db $00, $04
|0BE795| db $22 ; Repeat byte
|0BE796| db $00
|0BE797| db $22 ; Repeat byte
|0BE798| db $06
|0BE799| db $00 ; Raw block
|0BE79A| db $16
|0BE79B| db $85 ; Copy past
|0BE79C| dw $4900
|0BE79E| db $05 ; Raw block
|0BE79F| db $00, $00, $02, $16, $04, $00
|0BE7A5| db $43 ; Repeat word
|0BE7A6| dw $0106
|0BE7A8| db $23 ; Repeat byte
|0BE7A9| db $16
|0BE7AA| db $83 ; Copy past
|0BE7AB| dw $0300
|0BE7AD| db $00 ; Raw block
|0BE7AE| db $07
|0BE7AF| db $22 ; Repeat byte
|0BE7B0| db $16
|0BE7B1| db $01 ; Raw block
|0BE7B2| db $02, $00
|0BE7B4| db $27 ; Repeat byte
|0BE7B5| db $16
|0BE7B6| db $0A ; Raw block
|0BE7B7| db $06, $02, $04, $00, $00, $16, $02, $00
|0BE7BF| db $06, $00, $04
|0BE7C2| db $83 ; Copy past
|0BE7C3| dw $1400
|0BE7C5| db $05 ; Raw block
|0BE7C6| db $06, $06, $01, $04, $03, $04
|0BE7CC| db $22 ; Repeat byte
|0BE7CD| db $00
|0BE7CE| db $01 ; Raw block
|0BE7CF| db $06, $00
|0BE7D1| db $23 ; Repeat byte
|0BE7D2| db $16
|0BE7D3| db $06 ; Raw block
|0BE7D4| db $00, $16, $06, $00, $03, $03, $04
|0BE7DB| db $22 ; Repeat byte
|0BE7DC| db $00
|0BE7DD| db $27 ; Repeat byte
|0BE7DE| db $16
|0BE7DF| db $02 ; Raw block
|0BE7E0| db $00, $00, $06
|0BE7E3| db $23 ; Repeat byte
|0BE7E4| db $00
|0BE7E5| db $23 ; Repeat byte
|0BE7E6| db $06
|0BE7E7| db $83 ; Copy past
|0BE7E8| dw $5300
|0BE7EA| db $01 ; Raw block
|0BE7EB| db $00, $00
|0BE7ED| db $2F ; Repeat byte
|0BE7EE| db $06
|0BE7EF| db $01 ; Raw block
|0BE7F0| db $01, $01
|0BE7F2| db $24 ; Repeat byte
|0BE7F3| db $06
|0BE7F4| db $24 ; Repeat byte
|0BE7F5| db $01
|0BE7F6| db $22 ; Repeat byte
|0BE7F7| db $06
|0BE7F8| db $30 ; Repeat byte
|0BE7F9| db $01
|0BE7FA| db $2F ; Repeat byte
|0BE7FB| db $06
|0BE7FC| db $FF ; End of Map 53

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen53_Low:
|0BE7FD| db $05 ; Raw block
|0BE7FE| db $8D, $48, $F8, $ED, $E2, $49
|0BE804| db $62 ; Increment fill
|0BE805| db $06
|0BE806| db $02 ; Raw block
|0BE807| db $FF, $00, $63
|0BE80A| db $83 ; Copy past
|0BE80B| dw $0500
|0BE80D| db $1F ; Raw block
|0BE80E| db $93, $5A, $F8, $ED, $03, $04, $1A, $00
|0BE816| db $04, $0F, $09, $FD, $05, $1A, $00, $01
|0BE81E| db $56, $BA, $E5, $06, $79, $07, $27, $09
|0BE826| db $07, $E4, $08, $09, $7A, $27, $09, $0A
|0BE82E| db $22 ; Repeat byte
|0BE82F| db $61
|0BE830| db $0C ; Raw block
|0BE831| db $C5, $7A, $53, $30, $0E, $2B, $1D, $0A
|0BE839| db $0B, $1D, $30, $0E, $5E
|0BE83E| db $22 ; Repeat byte
|0BE83F| db $22
|0BE840| db $E0, $25 ; EXT Raw block
|0BE842| db $0C, $1D, $58, $66, $5F, $14, $A5, $0D
|0BE84A| db $0E, $A5, $0F, $2D, $66, $FB, $BB, $AA
|0BE852| db $1D, $1D, $58, $70, $69, $10, $AC, $11
|0BE85A| db $12, $AC, $13, $37, $1D, $1D, $8A, $14
|0BE862| db $BB, $1D, $58, $1E, $7D, $57
|0BE868| db $63 ; Increment fill
|0BE869| db $15
|0BE86A| db $04 ; Raw block
|0BE86B| db $65, $37, $74, $AA, $D5
|0BE870| db $62 ; Increment fill
|0BE871| db $19
|0BE872| db $01 ; Raw block
|0BE873| db $6E, $FB
|0BE875| db $65 ; Increment fill
|0BE876| db $1C
|0BE877| db $16 ; Raw block
|0BE878| db $1D, $22, $7C, $08, $C2, $1D, $1D, $23
|0BE880| db $7A, $1D, $7D, $1F, $20, $24, $25, $37
|0BE888| db $1F, $80, $7C, $E5, $C3, $B2, $BA
|0BE88F| db $22 ; Repeat byte
|0BE890| db $1D
|0BE891| db $01 ; Raw block
|0BE892| db $7D, $1F
|0BE894| db $63 ; Increment fill
|0BE895| db $26
|0BE896| db $06 ; Raw block
|0BE897| db $1F, $2A, $83, $1D, $56, $BA, $BC
|0BE89E| db $22 ; Repeat byte
|0BE89F| db $1D
|0BE8A0| db $65 ; Increment fill
|0BE8A1| db $2B
|0BE8A2| db $04 ; Raw block
|0BE8A3| db $2C, $31, $1D, $A0, $8A
|0BE8A8| db $23 ; Repeat byte
|0BE8A9| db $1D
|0BE8AA| db $00 ; Raw block
|0BE8AB| db $66
|0BE8AC| db $62 ; Increment fill
|0BE8AD| db $8B
|0BE8AE| db $05 ; Raw block
|0BE8AF| db $1D, $1D, $8B, $8F, $1D, $1D
|0BE8B5| db $64 ; Increment fill
|0BE8B6| db $92
|0BE8B7| db $00 ; Raw block
|0BE8B8| db $95
|0BE8B9| db $62 ; Increment fill
|0BE8BA| db $97
|0BE8BB| db $09 ; Raw block
|0BE8BC| db $93, $9C, $9C, $9A, $9B, $97, $9C, $AB
|0BE8C4| db $AB, $9D
|0BE8C6| db $22 ; Repeat byte
|0BE8C7| db $9E
|0BE8C8| db $00 ; Raw block
|0BE8C9| db $9F
|0BE8CA| db $24 ; Repeat byte
|0BE8CB| db $AB
|0BE8CC| db $62 ; Increment fill
|0BE8CD| db $9D
|0BE8CE| db $00 ; Raw block
|0BE8CF| db $AB
|0BE8D0| db $2F ; Repeat byte
|0BE8D1| db $B3
|0BE8D2| db $2F ; Repeat byte
|0BE8D3| db $A0
|0BE8D4| db $FF ; End of Map 53

;===================================================================================================

OverworldMap32_Screen54_High:
|0BE8D5| db $23 ; Repeat byte
|0BE8D6| db $00
|0BE8D7| db $01 ; Raw block
|0BE8D8| db $06, $01
|0BE8DA| db $23 ; Repeat byte
|0BE8DB| db $06
|0BE8DC| db $01 ; Raw block
|0BE8DD| db $02, $06
|0BE8DF| db $27 ; Repeat byte
|0BE8E0| db $00
|0BE8E1| db $07 ; Raw block
|0BE8E2| db $06, $06, $01, $01, $06, $01, $02, $06
|0BE8EA| db $27 ; Repeat byte
|0BE8EB| db $00
|0BE8EC| db $00 ; Raw block
|0BE8ED| db $06
|0BE8EE| db $24 ; Repeat byte
|0BE8EF| db $01
|0BE8F0| db $01 ; Raw block
|0BE8F1| db $06, $06
|0BE8F3| db $23 ; Repeat byte
|0BE8F4| db $00
|0BE8F5| db $83 ; Copy past
|0BE8F6| dw $0400
|0BE8F8| db $03 ; Raw block
|0BE8F9| db $00, $01, $01, $06
|0BE8FD| db $22 ; Repeat byte
|0BE8FE| db $16
|0BE8FF| db $07 ; Raw block
|0BE900| db $03, $06, $06, $01, $06, $00, $16, $03
|0BE908| db $86 ; Copy past
|0BE909| dw $3300
|0BE90B| db $04 ; Raw block
|0BE90C| db $06, $09, $16, $16, $07
|0BE911| db $22 ; Repeat byte
|0BE912| db $00
|0BE913| db $04 ; Raw block
|0BE914| db $03, $0C, $06, $16, $06
|0BE919| db $22 ; Repeat byte
|0BE91A| db $16
|0BE91B| db $00 ; Raw block
|0BE91C| db $03
|0BE91D| db $22 ; Repeat byte
|0BE91E| db $16
|0BE91F| db $02 ; Raw block
|0BE920| db $07, $06, $06
|0BE923| db $2C ; Repeat byte
|0BE924| db $16
|0BE925| db $03 ; Raw block
|0BE926| db $07, $00, $06, $0D
|0BE92A| db $26 ; Repeat byte
|0BE92B| db $16
|0BE92C| db $00 ; Raw block
|0BE92D| db $0D
|0BE92E| db $24 ; Repeat byte
|0BE92F| db $16
|0BE930| db $01 ; Raw block
|0BE931| db $00, $06
|0BE933| db $2D ; Repeat byte
|0BE934| db $16
|0BE935| db $02 ; Raw block
|0BE936| db $00, $06, $0D
|0BE939| db $2C ; Repeat byte
|0BE93A| db $16
|0BE93B| db $01 ; Raw block
|0BE93C| db $06, $00
|0BE93E| db $2E ; Repeat byte
|0BE93F| db $16
|0BE940| db $22 ; Repeat byte
|0BE941| db $06
|0BE942| db $01 ; Raw block
|0BE943| db $16, $02
|0BE945| db $24 ; Repeat byte
|0BE946| db $16
|0BE947| db $00 ; Raw block
|0BE948| db $0D
|0BE949| db $23 ; Repeat byte
|0BE94A| db $16
|0BE94B| db $01 ; Raw block
|0BE94C| db $00, $06
|0BE94E| db $23 ; Repeat byte
|0BE94F| db $07
|0BE950| db $22 ; Repeat byte
|0BE951| db $06
|0BE952| db $02 ; Raw block
|0BE953| db $07, $06, $07
|0BE956| db $24 ; Repeat byte
|0BE957| db $06
|0BE958| db $00 ; Raw block
|0BE959| db $01
|0BE95A| db $22 ; Repeat byte
|0BE95B| db $06
|0BE95C| db $23 ; Repeat byte
|0BE95D| db $01
|0BE95E| db $02 ; Raw block
|0BE95F| db $07, $06, $07
|0BE962| db $22 ; Repeat byte
|0BE963| db $01
|0BE964| db $01 ; Raw block
|0BE965| db $07, $07
|0BE967| db $2F ; Repeat byte
|0BE968| db $01
|0BE969| db $2F ; Repeat byte
|0BE96A| db $06
|0BE96B| db $FF ; End of Map 54

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen54_Low:
|0BE96C| db $62 ; Increment fill
|0BE96D| db $06
|0BE96E| db $02 ; Raw block
|0BE96F| db $06, $A1, $71
|0BE972| db $43 ; Repeat word
|0BE973| dw $A3A2
|0BE975| db $02 ; Raw block
|0BE976| db $DC, $A4, $08
|0BE979| db $62 ; Increment fill
|0BE97A| db $06
|0BE97B| db $16 ; Raw block
|0BE97C| db $02, $00, $01, $83, $A5, $12, $0C, $06
|0BE984| db $A3, $06, $DC, $A6, $3F, $02, $00, $01
|0BE98C| db $0B, $09, $0A, $8C, $A7, $03, $09
|0BE993| db $22 ; Repeat byte
|0BE994| db $0A
|0BE995| db $0D ; Raw block
|0BE996| db $AA, $AB, $92, $0B, $09, $0A, $AC, $0E
|0BE99E| db $5E, $30, $1D, $E4, $13, $AD
|0BE9A4| db $62 ; Increment fill
|0BE9A5| db $32
|0BE9A6| db $13 ; Raw block
|0BE9A7| db $A8, $2F, $AC, $0E, $5E, $1D, $35, $E2
|0BE9AF| db $B3, $1F, $2D, $1F, $B4, $36, $37, $B6
|0BE9B7| db $6F, $38, $38, $6D
|0BE9BB| db $22 ; Repeat byte
|0BE9BC| db $1D
|0BE9BD| db $04 ; Raw block
|0BE9BE| db $5F, $28, $BC, $39, $CD
|0BE9C3| db $62 ; Increment fill
|0BE9C4| db $3A
|0BE9C5| db $00 ; Raw block
|0BE9C6| db $A8
|0BE9C7| db $62 ; Increment fill
|0BE9C8| db $3D
|0BE9C9| db $05 ; Raw block
|0BE9CA| db $6D, $66, $C1, $40, $41, $38
|0BE9D0| db $63 ; Increment fill
|0BE9D1| db $42
|0BE9D2| db $01 ; Raw block
|0BE9D3| db $45, $44
|0BE9D5| db $63 ; Increment fill
|0BE9D6| db $46
|0BE9D7| db $04 ; Raw block
|0BE9D8| db $6D, $1D, $CD, $6A, $4A
|0BE9DD| db $65 ; Increment fill
|0BE9DE| db $4A
|0BE9DF| db $01 ; Raw block
|0BE9E0| db $F8, $2F
|0BE9E2| db $63 ; Increment fill
|0BE9E3| db $50
|0BE9E4| db $01 ; Raw block
|0BE9E5| db $1D, $7C
|0BE9E7| db $6D ; Increment fill
|0BE9E8| db $54
|0BE9E9| db $02 ; Raw block
|0BE9EA| db $1D, $66, $6A
|0BE9ED| db $6A ; Increment fill
|0BE9EE| db $62
|0BE9EF| db $03 ; Raw block
|0BE9F0| db $60, $6D, $ED, $1D
|0BE9F4| db $64 ; Increment fill
|0BE9F5| db $6E
|0BE9F6| db $00 ; Raw block
|0BE9F7| db $6C
|0BE9F8| db $63 ; Increment fill
|0BE9F9| db $73
|0BE9FA| db $09 ; Raw block
|0BE9FB| db $75, $77, $60, $6D, $78, $F5, $95, $95
|0BEA03| db $79, $9B
|0BEA05| db $64 ; Increment fill
|0BEA06| db $7A
|0BEA07| db $06 ; Raw block
|0BEA08| db $84, $7E, $7A, $7D, $7F, $1D, $92
|0BEA0F| db $63 ; Increment fill
|0BEA10| db $00
|0BEA11| db $22 ; Repeat byte
|0BEA12| db $9C
|0BEA13| db $02 ; Raw block
|0BEA14| db $04, $95, $05
|0BEA17| db $24 ; Repeat byte
|0BEA18| db $9C
|0BEA19| db $00 ; Raw block
|0BEA1A| db $AB
|0BEA1B| db $62 ; Increment fill
|0BEA1C| db $9D
|0BEA1D| db $23 ; Repeat byte
|0BEA1E| db $AB
|0BEA1F| db $02 ; Raw block
|0BEA20| db $06, $9E, $07
|0BEA23| db $22 ; Repeat byte
|0BEA24| db $AB
|0BEA25| db $01 ; Raw block
|0BEA26| db $08, $09
|0BEA28| db $2F ; Repeat byte
|0BEA29| db $B3
|0BEA2A| db $2F ; Repeat byte
|0BEA2B| db $A0
|0BEA2C| db $FF ; End of Map 54

;===================================================================================================

OverworldMap32_Screen55_High:
|0BEA2D| db $03 ; Raw block
|0BEA2E| db $00, $00, $01, $00
|0BEA32| db $22 ; Repeat byte
|0BEA33| db $01
|0BEA34| db $00 ; Raw block
|0BEA35| db $03
|0BEA36| db $23 ; Repeat byte
|0BEA37| db $07
|0BEA38| db $07 ; Raw block
|0BEA39| db $06, $07, $01, $03, $00, $00, $01, $07
|0BEA41| db $24 ; Repeat byte
|0BEA42| db $01
|0BEA43| db $22 ; Repeat byte
|0BEA44| db $07
|0BEA45| db $05 ; Raw block
|0BEA46| db $01, $03, $01, $01, $00, $00
|0BEA4C| db $24 ; Repeat byte
|0BEA4D| db $01
|0BEA4E| db $04 ; Raw block
|0BEA4F| db $02, $01, $07, $07, $06
|0BEA54| db $83 ; Copy past
|0BEA55| dw $1C00
|0BEA57| db $02 ; Raw block
|0BEA58| db $06, $01, $07
|0BEA5B| db $22 ; Repeat byte
|0BEA5C| db $01
|0BEA5D| db $02 ; Raw block
|0BEA5E| db $07, $07, $05
|0BEA61| db $22 ; Repeat byte
|0BEA62| db $07
|0BEA63| db $03 ; Raw block
|0BEA64| db $06, $07, $07, $02
|0BEA68| db $22 ; Repeat byte
|0BEA69| db $00
|0BEA6A| db $02 ; Raw block
|0BEA6B| db $06, $00, $01
|0BEA6E| db $29 ; Repeat byte
|0BEA6F| db $07
|0BEA70| db $06 ; Raw block
|0BEA71| db $00, $06, $00, $04, $04, $02, $07
|0BEA78| db $22 ; Repeat byte
|0BEA79| db $05
|0BEA7A| db $00 ; Raw block
|0BEA7B| db $06
|0BEA7C| db $24 ; Repeat byte
|0BEA7D| db $07
|0BEA7E| db $04 ; Raw block
|0BEA7F| db $03, $04, $00, $04, $02
|0BEA84| db $83 ; Copy past
|0BEA85| dw $5500
|0BEA87| db $22 ; Repeat byte
|0BEA88| db $07
|0BEA89| db $04 ; Raw block
|0BEA8A| db $00, $04, $03, $03, $00
|0BEA8F| db $25 ; Repeat byte
|0BEA90| db $07
|0BEA91| db $0D ; Raw block
|0BEA92| db $05, $07, $03, $07, $06, $06, $04, $01
|0BEA9A| db $02, $00, $07, $06, $03, $05
|0BEAA0| db $84 ; Copy past
|0BEAA1| dw $3600
|0BEAA3| db $08 ; Raw block
|0BEAA4| db $01, $01, $05, $06, $06, $03, $07, $04
|0BEAAC| db $00
|0BEAAD| db $24 ; Repeat byte
|0BEAAE| db $07
|0BEAAF| db $00 ; Raw block
|0BEAB0| db $05
|0BEAB1| db $22 ; Repeat byte
|0BEAB2| db $07
|0BEAB3| db $07 ; Raw block
|0BEAB4| db $01, $04, $03, $01, $06, $07, $06, $02
|0BEABC| db $83 ; Copy past
|0BEABD| dw $0A00
|0BEABF| db $00 ; Raw block
|0BEAC0| db $05
|0BEAC1| db $23 ; Repeat byte
|0BEAC2| db $07
|0BEAC3| db $02 ; Raw block
|0BEAC4| db $04, $01, $01
|0BEAC7| db $43 ; Repeat word
|0BEAC8| dw $0706
|0BEACA| db $01 ; Raw block
|0BEACB| db $07, $03
|0BEACD| db $26 ; Repeat byte
|0BEACE| db $07
|0BEACF| db $00 ; Raw block
|0BEAD0| db $06
|0BEAD1| db $43 ; Repeat word
|0BEAD2| dw $0706
|0BEAD4| db $00 ; Raw block
|0BEAD5| db $01
|0BEAD6| db $83 ; Copy past
|0BEAD7| dw $8800
|0BEAD9| db $25 ; Repeat byte
|0BEADA| db $07
|0BEADB| db $00 ; Raw block
|0BEADC| db $06
|0BEADD| db $83 ; Copy past
|0BEADE| dw $0600
|0BEAE0| db $84 ; Copy past
|0BEAE1| dw $C200
|0BEAE3| db $03 ; Raw block
|0BEAE4| db $06, $07, $07, $05
|0BEAE8| db $22 ; Repeat byte
|0BEAE9| db $07
|0BEAEA| db $02 ; Raw block
|0BEAEB| db $01, $07, $04
|0BEAEE| db $23 ; Repeat byte
|0BEAEF| db $07
|0BEAF0| db $86 ; Copy past
|0BEAF1| dw $3400
|0BEAF3| db $00 ; Raw block
|0BEAF4| db $03
|0BEAF5| db $25 ; Repeat byte
|0BEAF6| db $07
|0BEAF7| db $0C ; Raw block
|0BEAF8| db $02, $06, $00, $00, $07, $03, $05, $07
|0BEB00| db $03, $04, $01, $04, $00
|0BEB05| db $FF ; End of Map 55

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen55_Low:
|0BEB06| db $07 ; Raw block
|0BEB07| db $06, $07, $32, $FF, $00, $06, $06, $63
|0BEB0F| db $63 ; Increment fill
|0BEB10| db $0A
|0BEB11| db $0C ; Raw block
|0BEB12| db $12, $0E, $0B, $20, $02, $00, $04, $0F
|0BEB1A| db $09, $0A, $0A, $FD, $E2
|0BEB1F| db $62 ; Increment fill
|0BEB20| db $10
|0BEB21| db $0F ; Raw block
|0BEB22| db $03, $9C, $16, $F8, $0B, $09, $07, $E4
|0BEB2A| db $13, $15, $15, $01, $ED, $13, $14, $16
|0BEB32| db $83 ; Copy past
|0BEB33| dw $1C00
|0BEB35| db $08 ; Raw block
|0BEB36| db $AC, $0E, $15, $1E, $1F, $22, $16, $17
|0BEB3E| db $99
|0BEB3F| db $62 ; Increment fill
|0BEB40| db $18
|0BEB41| db $02 ; Raw block
|0BEB42| db $16, $1B, $1C
|0BEB45| db $43 ; Repeat word
|0BEB46| dw $1DFB
|0BEB48| db $02 ; Raw block
|0BEB49| db $66, $FB, $3C
|0BEB4C| db $67 ; Increment fill
|0BEB4D| db $1D
|0BEB4E| db $0C ; Raw block
|0BEB4F| db $23, $25, $1D, $66, $1D, $8A, $BF, $08
|0BEB57| db $26, $96, $E1, $E2, $1D
|0BEB5C| db $24 ; Repeat byte
|0BEB5D| db $27
|0BEB5E| db $08 ; Raw block
|0BEB5F| db $E2, $BE, $1D, $AA, $FA, $FB, $1B, $9F
|0BEB67| db $E2
|0BEB68| db $62 ; Increment fill
|0BEB69| db $29
|0BEB6A| db $04 ; Raw block
|0BEB6B| db $1D, $23, $FB, $E2, $1D
|0BEB70| db $63 ; Increment fill
|0BEB71| db $2C
|0BEB72| db $1D ; Raw block
|0BEB73| db $79, $31, $E1, $32, $97, $33, $70, $66
|0BEB7B| db $1E, $74, $DE, $1D, $34, $83, $32, $C5
|0BEB83| db $35, $36, $E1, $37, $38, $F0, $F1, $66
|0BEB8B| db $2F, $30, $E2, $39, $2C, $FB
|0BEB91| db $64 ; Increment fill
|0BEB92| db $3A
|0BEB93| db $E0, $21 ; EXT Raw block
|0BEB95| db $AB, $3F, $28, $40, $FB, $23, $FB, $61
|0BEB9D| db $83, $41, $66, $30, $3A, $42, $1E, $43
|0BEBA5| db $E1, $44, $30, $45, $46, $1E, $74, $67
|0BEBAD| db $8B, $47, $9C, $04, $48, $5E, $49, $4A
|0BEBB5| db $43, $35
|0BEBB7| db $62 ; Increment fill
|0BEBB8| db $4B
|0BEBB9| db $09 ; Raw block
|0BEBBA| db $2F, $30, $4E, $98, $4F, $43, $50, $51
|0BEBC2| db $43, $44
|0BEBC4| db $65 ; Increment fill
|0BEBC5| db $52
|0BEBC6| db $0D ; Raw block
|0BEBC7| db $66, $41, $44, $09, $58, $4E, $59, $5A
|0BEBCF| db $4E, $4F, $7C, $5B, $5C, $E1
|0BEBD5| db $62 ; Increment fill
|0BEBD6| db $5D
|0BEBD7| db $02 ; Raw block
|0BEBD8| db $48, $60, $9A
|0BEBDB| db $63 ; Increment fill
|0BEBDC| db $61
|0BEBDD| db $07 ; Raw block
|0BEBDE| db $58, $65, $65, $66, $C5, $67, $68, $49
|0BEBE6| db $62 ; Increment fill
|0BEBE7| db $69
|0BEBE8| db $0F ; Raw block
|0BEBE9| db $1C, $6C, $6D, $4F, $8E, $1D, $1D, $34
|0BEBF1| db $32, $C5, $6E, $4F, $2C, $77, $86, $1D
|0BEBF9| db $FF ; End of Map 55

;===================================================================================================

OverworldMap32_Screen56_High:
|0BEBFA| db $01 ; Raw block
|0BEBFB| db $03, $07
|0BEBFD| db $22 ; Repeat byte
|0BEBFE| db $01
|0BEBFF| db $02 ; Raw block
|0BEC00| db $07, $01, $01
|0BEC03| db $27 ; Repeat byte
|0BEC04| db $07
|0BEC05| db $22 ; Repeat byte
|0BEC06| db $01
|0BEC07| db $04 ; Raw block
|0BEC08| db $02, $02, $07, $02, $01
|0BEC0D| db $23 ; Repeat byte
|0BEC0E| db $07
|0BEC0F| db $00 ; Raw block
|0BEC10| db $03
|0BEC11| db $22 ; Repeat byte
|0BEC12| db $07
|0BEC13| db $02 ; Raw block
|0BEC14| db $01, $01, $05
|0BEC17| db $23 ; Repeat byte
|0BEC18| db $07
|0BEC19| db $00 ; Raw block
|0BEC1A| db $06
|0BEC1B| db $27 ; Repeat byte
|0BEC1C| db $07
|0BEC1D| db $01 ; Raw block
|0BEC1E| db $02, $05
|0BEC20| db $24 ; Repeat byte
|0BEC21| db $07
|0BEC22| db $00 ; Raw block
|0BEC23| db $06
|0BEC24| db $29 ; Repeat byte
|0BEC25| db $07
|0BEC26| db $00 ; Raw block
|0BEC27| db $06
|0BEC28| db $23 ; Repeat byte
|0BEC29| db $07
|0BEC2A| db $07 ; Raw block
|0BEC2B| db $06, $07, $05, $07, $07, $05, $07, $03
|0BEC33| db $23 ; Repeat byte
|0BEC34| db $07
|0BEC35| db $03 ; Raw block
|0BEC36| db $00, $00, $07, $01
|0BEC3A| db $22 ; Repeat byte
|0BEC3B| db $07
|0BEC3C| db $01 ; Raw block
|0BEC3D| db $05, $05
|0BEC3F| db $24 ; Repeat byte
|0BEC40| db $07
|0BEC41| db $83 ; Copy past
|0BEC42| dw $5300
|0BEC44| db $01 ; Raw block
|0BEC45| db $00, $00
|0BEC47| db $25 ; Repeat byte
|0BEC48| db $07
|0BEC49| db $03 ; Raw block
|0BEC4A| db $02, $07, $07, $00
|0BEC4E| db $25 ; Repeat byte
|0BEC4F| db $01
|0BEC50| db $25 ; Repeat byte
|0BEC51| db $07
|0BEC52| db $01 ; Raw block
|0BEC53| db $02, $03
|0BEC55| db $83 ; Copy past
|0BEC56| dw $5200
|0BEC58| db $06 ; Raw block
|0BEC59| db $06, $07, $16, $15, $16, $16, $00
|0BEC60| db $83 ; Copy past
|0BEC61| dw $6E00
|0BEC63| db $06 ; Raw block
|0BEC64| db $03, $03, $01, $01, $04, $00, $00
|0BEC6B| db $22 ; Repeat byte
|0BEC6C| db $16
|0BEC6D| db $00 ; Raw block
|0BEC6E| db $15
|0BEC6F| db $83 ; Copy past
|0BEC70| dw $6500
|0BEC72| db $07 ; Raw block
|0BEC73| db $01, $03, $07, $01, $00, $06, $00, $01
|0BEC7B| db $22 ; Repeat byte
|0BEC7C| db $16
|0BEC7D| db $00 ; Raw block
|0BEC7E| db $0D
|0BEC7F| db $84 ; Copy past
|0BEC80| dw $8900
|0BEC82| db $0C ; Raw block
|0BEC83| db $01, $07, $04, $06, $01, $01, $04, $16
|0BEC8B| db $12, $12, $16, $16, $03
|0BEC90| db $84 ; Copy past
|0BEC91| dw $AB00
|0BEC93| db $08 ; Raw block
|0BEC94| db $07, $03, $03, $01, $00, $01, $06, $07
|0BEC9C| db $02
|0BEC9D| db $28 ; Repeat byte
|0BEC9E| db $07
|0BEC9F| db $01 ; Raw block
|0BECA0| db $03, $07
|0BECA2| db $83 ; Copy past
|0BECA3| dw $C500
|0BECA5| db $27 ; Repeat byte
|0BECA6| db $07
|0BECA7| db $00 ; Raw block
|0BECA8| db $00
|0BECA9| db $22 ; Repeat byte
|0BECAA| db $07
|0BECAB| db $22 ; Repeat byte
|0BECAC| db $02
|0BECAD| db $02 ; Raw block
|0BECAE| db $07, $07, $01
|0BECB1| db $83 ; Copy past
|0BECB2| dw $D100
|0BECB4| db $02 ; Raw block
|0BECB5| db $07, $07, $00
|0BECB8| db $26 ; Repeat byte
|0BECB9| db $07
|0BECBA| db $00 ; Raw block
|0BECBB| db $01
|0BECBC| db $22 ; Repeat byte
|0BECBD| db $07
|0BECBE| db $03 ; Raw block
|0BECBF| db $03, $03, $07, $05
|0BECC3| db $FF ; End of Map 56

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen56_Low:
|0BECC4| db $E0, $32 ; EXT Raw block
|0BECC6| db $20, $6F, $ED, $F8, $F8, $70, $F8, $17
|0BECCE| db $71, $72, $72, $71, $0E, $73, $74, $74
|0BECD6| db $F8, $ED, $ED, $FB, $FB, $70, $FB, $03
|0BECDE| db $75, $76, $76, $75, $9C, $77, $78, $78
|0BECE6| db $F8, $ED, $99, $79, $79, $7A, $79, $16
|0BECEE| db $7B, $7C, $7C, $7B, $1B, $7D, $7E, $7E
|0BECF6| db $FB, $99, $7F
|0BECF9| db $23 ; Repeat byte
|0BECFA| db $22
|0BECFB| db $05 ; Raw block
|0BECFC| db $15, $80, $81, $81, $80, $31
|0BED02| db $62 ; Increment fill
|0BED03| db $82
|0BED04| db $02 ; Raw block
|0BED05| db $25, $85, $1D
|0BED08| db $62 ; Increment fill
|0BED09| db $86
|0BED0A| db $17 ; Raw block
|0BED0B| db $27, $1E, $43, $E1, $89, $36, $E2, $29
|0BED13| db $8F, $8A, $27, $8B, $2A, $EE, $09, $8C
|0BED1B| db $1E, $8D, $8E, $20, $E1, $E2, $29, $2A
|0BED23| db $62 ; Increment fill
|0BED24| db $8F
|0BED25| db $05 ; Raw block
|0BED26| db $C9, $FE, $92, $31, $7B, $7C
|0BED2C| db $62 ; Increment fill
|0BED2D| db $93
|0BED2E| db $06 ; Raw block
|0BED2F| db $84, $96, $2A, $8D, $97, $98, $1D
|0BED36| db $62 ; Increment fill
|0BED37| db $39
|0BED38| db $62 ; Increment fill
|0BED39| db $39
|0BED3A| db $65 ; Increment fill
|0BED3B| db $99
|0BED3C| db $17 ; Raw block
|0BED3D| db $97, $97, $9F, $FB, $91, $A0, $3B, $A1
|0BED45| db $80, $B8, $81, $82, $1F, $A7, $A8, $1D
|0BED4D| db $2E, $A0, $96, $62, $4B, $1E, $0B, $09
|0BED55| db $62 ; Increment fill
|0BED56| db $83
|0BED57| db $0C ; Raw block
|0BED58| db $BF, $1F, $1F, $AE, $AF, $2E, $A0, $B0
|0BED60| db $68, $BE, $2C, $06, $10
|0BED65| db $62 ; Increment fill
|0BED66| db $86
|0BED67| db $E0, $22 ; EXT Raw block
|0BED69| db $B8, $1F, $B5, $B6, $1D, $08, $E6, $B7
|0BED71| db $25, $66, $19, $1A, $6D, $89, $28, $29
|0BED79| db $8A, $8B, $44, $BB, $9F, $E4, $24, $BC
|0BED81| db $90, $44, $86, $27, $09, $2F, $B3, $BD
|0BED89| db $8D, $97, $98
|0BED8C| db $64 ; Increment fill
|0BED8D| db $BE
|0BED8E| db $07 ; Raw block
|0BED8F| db $98, $C3, $8D, $C4, $0E, $2B, $C5, $8D
|0BED97| db $67 ; Increment fill
|0BED98| db $C6
|0BED99| db $03 ; Raw block
|0BED9A| db $A9, $49, $CE, $CF
|0BED9E| db $22 ; Repeat byte
|0BED9F| db $4C
|0BEDA0| db $05 ; Raw block
|0BEDA1| db $D0, $C7, $48, $D1, $8D, $D2
|0BEDA7| db $62 ; Increment fill
|0BEDA8| db $D2
|0BEDA9| db $08 ; Raw block
|0BEDAA| db $A9, $D5, $49, $D6, $D7, $D6, $D6, $D8
|0BEDB2| db $48
|0BEDB3| db $62 ; Increment fill
|0BEDB4| db $D9
|0BEDB5| db $03 ; Raw block
|0BEDB6| db $8D, $96, $DC, $FB
|0BEDBA| db $FF ; End of Map 56

;===================================================================================================

OverworldMap32_Screen17_High:
|0BEDBB| db $22 ; Repeat byte
|0BEDBC| db $16
|0BEDBD| db $07 ; Raw block
|0BEDBE| db $0F, $06, $16, $16, $05, $02, $01, $03
|0BEDC6| db $22 ; Repeat byte
|0BEDC7| db $16
|0BEDC8| db $01 ; Raw block
|0BEDC9| db $01, $01
|0BEDCB| db $22 ; Repeat byte
|0BEDCC| db $16
|0BEDCD| db $0B ; Raw block
|0BEDCE| db $01, $05, $16, $09, $07, $05, $16, $16
|0BEDD6| db $0C, $16, $16, $03
|0BEDDA| db $23 ; Repeat byte
|0BEDDB| db $16
|0BEDDC| db $08 ; Raw block
|0BEDDD| db $06, $05, $09, $05, $07, $16, $16, $0C
|0BEDE5| db $05
|0BEDE6| db $22 ; Repeat byte
|0BEDE7| db $16
|0BEDE8| db $00 ; Raw block
|0BEDE9| db $03
|0BEDEA| db $25 ; Repeat byte
|0BEDEB| db $07
|0BEDEC| db $09 ; Raw block
|0BEDED| db $09, $07, $16, $16, $0A, $16, $06, $0C
|0BEDF5| db $01, $16
|0BEDF7| db $43 ; Repeat word
|0BEDF8| dw $070A
|0BEDFA| db $05 ; Raw block
|0BEDFB| db $07, $16, $05, $03, $00, $16
|0BEE01| db $23 ; Repeat byte
|0BEE02| db $05
|0BEE03| db $03 ; Raw block
|0BEE04| db $16, $16, $07, $03
|0BEE08| db $22 ; Repeat byte
|0BEE09| db $02
|0BEE0A| db $E0, $20 ; EXT Raw block
|0BEE0C| db $0B, $00, $00, $16, $05, $06, $05, $16
|0BEE14| db $16, $05, $16, $07, $07, $16, $07, $03
|0BEE1C| db $0C, $02, $00, $16, $16, $05, $05, $0A
|0BEE24| db $0A, $16, $03, $16, $01, $00, $04, $02
|0BEE2C| db $16
|0BEE2D| db $83 ; Copy past
|0BEE2E| dw $6600
|0BEE30| db $03 ; Raw block
|0BEE31| db $0C, $0A, $0A, $06
|0BEE35| db $22 ; Repeat byte
|0BEE36| db $16
|0BEE37| db $06 ; Raw block
|0BEE38| db $03, $04, $16, $0F, $01, $02, $00
|0BEE3F| db $26 ; Repeat byte
|0BEE40| db $16
|0BEE41| db $00 ; Raw block
|0BEE42| db $10
|0BEE43| db $24 ; Repeat byte
|0BEE44| db $16
|0BEE45| db $03 ; Raw block
|0BEE46| db $02, $00, $03, $03
|0BEE4A| db $24 ; Repeat byte
|0BEE4B| db $16
|0BEE4C| db $0A ; Raw block
|0BEE4D| db $07, $06, $16, $16, $04, $10, $06, $00
|0BEE55| db $03, $03, $02
|0BEE58| db $28 ; Repeat byte
|0BEE59| db $16
|0BEE5A| db $83 ; Copy past
|0BEE5B| dw $7100
|0BEE5D| db $22 ; Repeat byte
|0BEE5E| db $0D
|0BEE5F| db $03 ; Raw block
|0BEE60| db $16, $16, $02, $02
|0BEE64| db $43 ; Repeat word
|0BEE65| dw $1601
|0BEE67| db $03 ; Raw block
|0BEE68| db $16, $01, $03, $02
|0BEE6C| db $22 ; Repeat byte
|0BEE6D| db $0A
|0BEE6E| db $22 ; Repeat byte
|0BEE6F| db $16
|0BEE70| db $04 ; Raw block
|0BEE71| db $00, $01, $01, $16, $07
|0BEE76| db $83 ; Copy past
|0BEE77| dw $C000
|0BEE79| db $01 ; Raw block
|0BEE7A| db $16, $0F
|0BEE7C| db $22 ; Repeat byte
|0BEE7D| db $05
|0BEE7E| db $00 ; Raw block
|0BEE7F| db $0F
|0BEE80| db $84 ; Copy past
|0BEE81| dw $0D00
|0BEE83| db $00 ; Raw block
|0BEE84| db $0D
|0BEE85| db $83 ; Copy past
|0BEE86| dw $4E00
|0BEE88| db $02 ; Raw block
|0BEE89| db $16, $16, $0A
|0BEE8C| db $23 ; Repeat byte
|0BEE8D| db $16
|0BEE8E| db $06 ; Raw block
|0BEE8F| db $01, $16, $16, $10, $05, $16, $15
|0BEE96| db $29 ; Repeat byte
|0BEE97| db $16
|0BEE98| db $03 ; Raw block
|0BEE99| db $07, $02, $16, $16
|0BEE9D| db $FF ; End of Map 17

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen17_Low:
|0BEE9E| db $0A ; Raw block
|0BEE9F| db $8C, $8C, $8D, $3F, $AA, $8E, $8F, $FF
|0BEEA7| db $82, $00, $65
|0BEEAA| db $62 ; Increment fill
|0BEEAB| db $90
|0BEEAC| db $E0, $21 ; EXT Raw block
|0BEEAE| db $77, $71, $93, $93, $94, $15, $9E, $95
|0BEEB6| db $9D, $6E, $DE, $96, $97, $91, $98, $92
|0BEEBE| db $50, $99, $9A, $9A, $9B, $A0, $9F, $9D
|0BEEC6| db $E1, $6E, $9C, $9D, $91, $E8, $98, $9E
|0BEECE| db $9F, $57
|0BEED0| db $25 ; Repeat byte
|0BEED1| db $84
|0BEED2| db $09 ; Raw block
|0BEED3| db $FC, $68, $A0, $A1, $0C, $91, $05, $8E
|0BEEDB| db $E6, $9F
|0BEEDD| db $43 ; Repeat word
|0BEEDE| dw $D701
|0BEEE0| db $E0, $39 ; EXT Raw block
|0BEEE2| db $D7, $A2, $6D, $49, $1D, $A3, $FB, $F5
|0BEEEA| db $F5, $FB, $A4, $A5, $C8, $44, $4B, $4C
|0BEEF2| db $CC, $46, $AA, $1D, $A6, $E7, $05, $C1
|0BEEFA| db $A7, $A8, $E9, $A5, $98, $98, $A9, $8A
|0BEF02| db $91, $E7, $D3, $1D, $AA, $AB, $F5, $FB
|0BEF0A| db $0D, $E8, $AC, $A0, $AD, $D5, $B2, $7D
|0BEF12| db $08, $AE, $DD, $9F, $AF, $B0, $96, $0B
|0BEF1A| db $0B, $02
|0BEF1C| db $62 ; Increment fill
|0BEF1D| db $B1
|0BEF1E| db $06 ; Raw block
|0BEF1F| db $99, $81, $B4, $43, $ED, $91, $1D
|0BEF26| db $66 ; Increment fill
|0BEF27| db $B5
|0BEF28| db $00 ; Raw block
|0BEF29| db $8D
|0BEF2A| db $64 ; Increment fill
|0BEF2B| db $BC
|0BEF2C| db $03 ; Raw block
|0BEF2D| db $7A, $1D, $5F, $56
|0BEF31| db $64 ; Increment fill
|0BEF32| db $C1
|0BEF33| db $0A ; Raw block
|0BEF34| db $BC, $12, $BC, $C6, $88, $7D, $3E, $1D
|0BEF3C| db $5F, $5F, $DE
|0BEF3F| db $66 ; Increment fill
|0BEF40| db $C7
|0BEF41| db $17 ; Raw block
|0BEF42| db $BC, $C6, $E3, $1D, $B5, $60, $F2, $F2
|0BEF4A| db $C5, $CE, $CF, $59, $59, $73, $A5, $E4
|0BEF52| db $BC, $C6, $E3, $D5, $65, $8C, $1D, $1D
|0BEF5A| db $62 ; Increment fill
|0BEF5B| db $D0
|0BEF5C| db $1C ; Raw block
|0BEF5D| db $AA, $41, $2E, $A5, $8F, $BC, $C6, $E3
|0BEF65| db $86, $D3, $27, $F5, $C1, $F5, $28, $D4
|0BEF6D| db $41, $48, $D5, $B2, $48, $BC, $D6, $CE
|0BEF75| db $8D, $D7, $D8, $63, $D9
|0BEF7A| db $62 ; Increment fill
|0BEF7B| db $D9
|0BEF7C| db $06 ; Raw block
|0BEF7D| db $48, $D5, $B2, $8D, $9D, $DC, $92
|0BEF84| db $62 ; Increment fill
|0BEF85| db $DD
|0BEF86| db $24 ; Repeat byte
|0BEF87| db $E0
|0BEF88| db $05 ; Raw block
|0BEF89| db $E1, $A9, $6B, $97, $E2, $E3
|0BEF8F| db $FF ; End of Map 17

;===================================================================================================

OverworldMap32_Screen58_High:
|0BEF90| db $22 ; Repeat byte
|0BEF91| db $00
|0BEF92| db $02 ; Raw block
|0BEF93| db $01, $07, $04
|0BEF96| db $22 ; Repeat byte
|0BEF97| db $00
|0BEF98| db $02 ; Raw block
|0BEF99| db $01, $04, $04
|0BEF9C| db $26 ; Repeat byte
|0BEF9D| db $00
|0BEF9E| db $07 ; Raw block
|0BEF9F| db $06, $07, $06, $06, $01, $06, $06, $04
|0BEFA7| db $84 ; Copy past
|0BEFA8| dw $1500
|0BEFAA| db $04 ; Raw block
|0BEFAB| db $00, $00, $01, $01, $07
|0BEFB0| db $23 ; Repeat byte
|0BEFB1| db $03
|0BEFB2| db $26 ; Repeat byte
|0BEFB3| db $07
|0BEFB4| db $04 ; Raw block
|0BEFB5| db $00, $00, $01, $06, $07
|0BEFBA| db $22 ; Repeat byte
|0BEFBB| db $06
|0BEFBC| db $26 ; Repeat byte
|0BEFBD| db $07
|0BEFBE| db $10 ; Raw block
|0BEFBF| db $08, $07, $07, $16, $16, $01, $16, $16
|0BEFC7| db $04, $04, $07, $06, $16, $16, $07, $07
|0BEFCF| db $08
|0BEFD0| db $22 ; Repeat byte
|0BEFD1| db $07
|0BEFD2| db $07 ; Raw block
|0BEFD3| db $01, $01, $02, $01, $04, $04, $07, $00
|0BEFDB| db $84 ; Copy past
|0BEFDC| dw $4B00
|0BEFDE| db $03 ; Raw block
|0BEFDF| db $00, $00, $16, $00
|0BEFE3| db $22 ; Repeat byte
|0BEFE4| db $01
|0BEFE5| db $0B ; Raw block
|0BEFE6| db $04, $00, $07, $06, $03, $04, $07, $07
|0BEFEE| db $16, $00, $01, $06
|0BEFF2| db $26 ; Repeat byte
|0BEFF3| db $07
|0BEFF4| db $00 ; Raw block
|0BEFF5| db $05
|0BEFF6| db $83 ; Copy past
|0BEFF7| dw $7100
|0BEFF9| db $03 ; Raw block
|0BEFFA| db $16, $00, $04, $01
|0BEFFE| db $24 ; Repeat byte
|0BEFFF| db $07
|0BF000| db $0A ; Raw block
|0BF001| db $08, $07, $05, $05, $02, $08, $08, $02
|0BF009| db $00, $00, $01
|0BF00C| db $24 ; Repeat byte
|0BF00D| db $08
|0BF00E| db $00 ; Raw block
|0BF00F| db $16
|0BF010| db $26 ; Repeat byte
|0BF011| db $08
|0BF012| db $04 ; Raw block
|0BF013| db $00, $01, $06, $08, $01
|0BF018| db $22 ; Repeat byte
|0BF019| db $16
|0BF01A| db $01 ; Raw block
|0BF01B| db $08, $08
|0BF01D| db $22 ; Repeat byte
|0BF01E| db $16
|0BF01F| db $22 ; Repeat byte
|0BF020| db $08
|0BF021| db $02 ; Raw block
|0BF022| db $00, $04, $01
|0BF025| db $23 ; Repeat byte
|0BF026| db $08
|0BF027| db $02 ; Raw block
|0BF028| db $16, $08, $08
|0BF02B| db $23 ; Repeat byte
|0BF02C| db $16
|0BF02D| db $01 ; Raw block
|0BF02E| db $08, $08
|0BF030| db $83 ; Copy past
|0BF031| dw $9000
|0BF033| db $43 ; Repeat word
|0BF034| dw $1608
|0BF036| db $01 ; Raw block
|0BF037| db $16, $08
|0BF039| db $23 ; Repeat byte
|0BF03A| db $16
|0BF03B| db $00 ; Raw block
|0BF03C| db $08
|0BF03D| db $83 ; Copy past
|0BF03E| dw $6F00
|0BF040| db $83 ; Copy past
|0BF041| dw $A800
|0BF043| db $00 ; Raw block
|0BF044| db $17
|0BF045| db $24 ; Repeat byte
|0BF046| db $08
|0BF047| db $02 ; Raw block
|0BF048| db $16, $17, $17
|0BF04B| db $83 ; Copy past
|0BF04C| dw $B000
|0BF04E| db $00 ; Raw block
|0BF04F| db $07
|0BF050| db $27 ; Repeat byte
|0BF051| db $08
|0BF052| db $05 ; Raw block
|0BF053| db $16, $08, $17, $00, $00, $01
|0BF059| db $22 ; Repeat byte
|0BF05A| db $08
|0BF05B| db $00 ; Raw block
|0BF05C| db $07
|0BF05D| db $25 ; Repeat byte
|0BF05E| db $08
|0BF05F| db $02 ; Raw block
|0BF060| db $16, $08, $17
|0BF063| db $FF ; End of Map 58

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen58_Low:
|0BF064| db $05 ; Raw block
|0BF065| db $0B, $09, $0A, $74, $DD, $1E
|0BF06B| db $83 ; Copy past
|0BF06C| dw $0000
|0BF06E| db $00 ; Raw block
|0BF06F| db $2C
|0BF070| db $83 ; Copy past
|0BF071| dw $0500
|0BF073| db $00 ; Raw block
|0BF074| db $0B
|0BF075| db $62 ; Increment fill
|0BF076| db $06
|0BF077| db $07 ; Raw block
|0BF078| db $38, $41, $2F, $AC, $0E, $5E, $30, $37
|0BF080| db $83 ; Copy past
|0BF081| dw $1500
|0BF083| db $05 ; Raw block
|0BF084| db $AC, $02, $00, $04, $3B, $41
|0BF08A| db $23 ; Repeat byte
|0BF08B| db $5F
|0BF08C| db $62 ; Increment fill
|0BF08D| db $DF
|0BF08E| db $62 ; Increment fill
|0BF08F| db $E1
|0BF090| db $05 ; Raw block
|0BF091| db $E0, $0B, $09, $07, $66, $E5
|0BF097| db $22 ; Repeat byte
|0BF098| db $9C
|0BF099| db $63 ; Increment fill
|0BF09A| db $E6
|0BF09B| db $62 ; Increment fill
|0BF09C| db $E9
|0BF09D| db $10 ; Raw block
|0BF09E| db $23, $EC, $ED, $E4, $E5, $A0, $E6, $E6
|0BF0A6| db $B5, $B6, $E7, $3E, $E7, $E8, $EF, $EB
|0BF0AE| db $25
|0BF0AF| db $62 ; Increment fill
|0BF0B0| db $F1
|0BF0B1| db $E0, $20 ; EXT Raw block
|0BF0B3| db $E5, $D9, $07, $EF, $B7, $B8, $E7, $1D
|0BF0BB| db $E9, $EA, $EF, $EB, $04, $0B, $09, $EB
|0BF0C3| db $98, $E4, $E5, $E5, $B9, $1D, $E7, $66
|0BF0CB| db $DB, $25, $EF, $EB, $EC, $06, $10, $2B
|0BF0D3| db $F9
|0BF0D4| db $24 ; Repeat byte
|0BF0D5| db $FA
|0BF0D6| db $0B ; Raw block
|0BF0D7| db $E7, $55, $DB, $3A, $FB, $EB, $ED, $02
|0BF0DF| db $6D, $26, $FD, $FE
|0BF0E3| db $22 ; Repeat byte
|0BF0E4| db $FF
|0BF0E5| db $0A ; Raw block
|0BF0E6| db $00, $E7, $59, $5A, $61, $01, $02, $61
|0BF0EE| db $0B, $09, $2F
|0BF0F1| db $64 ; Increment fill
|0BF0F2| db $03
|0BF0F3| db $00 ; Raw block
|0BF0F4| db $EE
|0BF0F5| db $65 ; Increment fill
|0BF0F6| db $09
|0BF0F7| db $05 ; Raw block
|0BF0F8| db $0C, $06, $10, $2B, $03, $37
|0BF0FE| db $62 ; Increment fill
|0BF0FF| db $EF
|0BF100| db $01 ; Raw block
|0BF101| db $12, $13
|0BF103| db $62 ; Increment fill
|0BF104| db $F2
|0BF105| db $62 ; Increment fill
|0BF106| db $17
|0BF107| db $09 ; Raw block
|0BF108| db $02, $6D, $26, $03, $1A, $5D, $1C, $F5
|0BF110| db $1E, $13
|0BF112| db $63 ; Increment fill
|0BF113| db $F6
|0BF114| db $01 ; Raw block
|0BF115| db $23, $24
|0BF117| db $83 ; Copy past
|0BF118| dw $9000
|0BF11A| db $05 ; Raw block
|0BF11B| db $25, $E6, $27, $FA, $EE, $13
|0BF121| db $62 ; Increment fill
|0BF122| db $FB
|0BF123| db $02 ; Raw block
|0BF124| db $F9, $04, $FE
|0BF127| db $83 ; Copy past
|0BF128| dw $A000
|0BF12A| db $05 ; Raw block
|0BF12B| db $2C, $EC, $FF, $00, $2E, $13
|0BF131| db $62 ; Increment fill
|0BF132| db $2F
|0BF133| db $02 ; Raw block
|0BF134| db $F9, $01, $02
|0BF137| db $83 ; Copy past
|0BF138| dw $B000
|0BF13A| db $00 ; Raw block
|0BF13B| db $E0
|0BF13C| db $64 ; Increment fill
|0BF13D| db $34
|0BF13E| db $83 ; Copy past
|0BF13F| dw $DA00
|0BF141| db $01 ; Raw block
|0BF142| db $25, $03
|0BF144| db $83 ; Copy past
|0BF145| dw $9000
|0BF147| db $04 ; Raw block
|0BF148| db $23, $3A, $DD, $3B, $3C
|0BF14D| db $84 ; Copy past
|0BF14E| dw $D900
|0BF150| db $01 ; Raw block
|0BF151| db $3D, $04
|0BF153| db $FF ; End of Map 58

;===================================================================================================

OverworldMap32_Screen59_High:
|0BF154| db $26 ; Repeat byte
|0BF155| db $00
|0BF156| db $04 ; Raw block
|0BF157| db $01, $08, $08, $01, $01
|0BF15C| db $23 ; Repeat byte
|0BF15D| db $08
|0BF15E| db $0A ; Raw block
|0BF15F| db $01, $06, $06, $01, $06, $06, $01, $06
|0BF167| db $08, $08, $01
|0BF16A| db $24 ; Repeat byte
|0BF16B| db $08
|0BF16C| db $26 ; Repeat byte
|0BF16D| db $07
|0BF16E| db $08 ; Raw block
|0BF16F| db $08, $07, $08, $08, $04, $01, $00, $08
|0BF177| db $08
|0BF178| db $26 ; Repeat byte
|0BF179| db $07
|0BF17A| db $43 ; Repeat word
|0BF17B| dw $0708
|0BF17D| db $04 ; Raw block
|0BF17E| db $06, $06, $00, $08, $01
|0BF183| db $27 ; Repeat byte
|0BF184| db $17
|0BF185| db $22 ; Repeat byte
|0BF186| db $08
|0BF187| db $04 ; Raw block
|0BF188| db $07, $00, $02, $08, $08
|0BF18D| db $27 ; Repeat byte
|0BF18E| db $17
|0BF18F| db $22 ; Repeat byte
|0BF190| db $08
|0BF191| db $E0, $24 ; EXT Raw block
|0BF193| db $00, $00, $03, $08, $06, $17, $17, $0B
|0BF19B| db $16, $08, $17, $17, $0B, $04, $04, $07
|0BF1A3| db $07, $16, $03, $05, $05, $07, $07, $0D
|0BF1AB| db $16, $07, $0D, $04, $02, $04, $04, $07
|0BF1B3| db $16, $01, $08, $08, $05
|0BF1B8| db $25 ; Repeat byte
|0BF1B9| db $02
|0BF1BA| db $09 ; Raw block
|0BF1BB| db $04, $02, $02, $17, $07, $07, $06, $02
|0BF1C3| db $08, $07
|0BF1C5| db $2D ; Repeat byte
|0BF1C6| db $08
|0BF1C7| db $02 ; Raw block
|0BF1C8| db $02, $08, $17
|0BF1CB| db $2D ; Repeat byte
|0BF1CC| db $08
|0BF1CD| db $00 ; Raw block
|0BF1CE| db $03
|0BF1CF| db $43 ; Repeat word
|0BF1D0| dw $0708
|0BF1D2| db $03 ; Raw block
|0BF1D3| db $07, $17, $17, $07
|0BF1D7| db $26 ; Repeat byte
|0BF1D8| db $08
|0BF1D9| db $08 ; Raw block
|0BF1DA| db $03, $17, $16, $08, $07, $06, $16, $07
|0BF1E2| db $07
|0BF1E3| db $24 ; Repeat byte
|0BF1E4| db $08
|0BF1E5| db $06 ; Raw block
|0BF1E6| db $17, $04, $08, $17, $17, $08, $07
|0BF1ED| db $22 ; Repeat byte
|0BF1EE| db $08
|0BF1EF| db $01 ; Raw block
|0BF1F0| db $07, $16
|0BF1F2| db $26 ; Repeat byte
|0BF1F3| db $08
|0BF1F4| db $83 ; Copy past
|0BF1F5| dw $D000
|0BF1F7| db $03 ; Raw block
|0BF1F8| db $00, $16, $07, $07
|0BF1FC| db $43 ; Repeat word
|0BF1FD| dw $0008
|0BF1FF| db $03 ; Raw block
|0BF200| db $07, $08, $07, $05
|0BF204| db $22 ; Repeat byte
|0BF205| db $08
|0BF206| db $85 ; Copy past
|0BF207| dw $B300
|0BF209| db $01 ; Raw block
|0BF20A| db $00, $16
|0BF20C| db $22 ; Repeat byte
|0BF20D| db $08
|0BF20E| db $01 ; Raw block
|0BF20F| db $07, $05
|0BF211| db $FF ; End of Map 59

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen59_Low:
|0BF212| db $62 ; Increment fill
|0BF213| db $09
|0BF214| db $62 ; Increment fill
|0BF215| db $09
|0BF216| db $05 ; Raw block
|0BF217| db $09, $2F, $3F, $40, $4D, $4E
|0BF21D| db $63 ; Increment fill
|0BF21E| db $41
|0BF21F| db $0A ; Raw block
|0BF220| db $0E, $5E, $AC, $0E, $5E, $AC, $0E, $2B
|0BF228| db $45, $46, $57
|0BF22B| db $64 ; Increment fill
|0BF22C| db $47
|0BF22D| db $26 ; Repeat byte
|0BF22E| db $E1
|0BF22F| db $08 ; Raw block
|0BF230| db $37, $E3, $35, $4C, $1E, $74, $1D, $4D
|0BF238| db $4E
|0BF239| db $26 ; Repeat byte
|0BF23A| db $E9
|0BF23B| db $08 ; Raw block
|0BF23C| db $3C, $E7, $2D, $E7, $2F, $30, $1D, $53
|0BF244| db $67
|0BF245| db $64 ; Increment fill
|0BF246| db $05
|0BF247| db $0A ; Raw block
|0BF248| db $05, $06, $0A, $09, $57, $58, $DE, $1D
|0BF250| db $A1, $59, $5A
|0BF253| db $64 ; Increment fill
|0BF254| db $0B
|0BF255| db $02 ; Raw block
|0BF256| db $0B, $0C, $10
|0BF259| db $62 ; Increment fill
|0BF25A| db $60
|0BF25B| db $E0, $24 ; EXT Raw block
|0BF25D| db $1D, $1D, $9A, $63, $A0, $11, $12, $1C
|0BF265| db $E6, $65, $11, $12, $1C, $B5, $BA, $E7
|0BF26D| db $DE, $FF, $32, $C5, $E1, $09, $09, $58
|0BF275| db $FA, $09, $58, $B5, $60, $C5, $BC, $E7
|0BF27D| db $FA, $1E, $69, $6A, $E1
|0BF282| db $25 ; Repeat byte
|0BF283| db $61
|0BF284| db $09 ; Raw block
|0BF285| db $C5, $02, $04, $00, $E7, $DE, $3E, $3E
|0BF28D| db $6B, $43
|0BF28F| db $25 ; Repeat byte
|0BF290| db $0C
|0BF291| db $00 ; Raw block
|0BF292| db $6C
|0BF293| db $22 ; Repeat byte
|0BF294| db $0A
|0BF295| db $06 ; Raw block
|0BF296| db $6D, $0A, $0A, $6E, $3E, $6F, $13
|0BF29D| db $63 ; Increment fill
|0BF29E| db $71
|0BF29F| db $63 ; Increment fill
|0BF2A0| db $74
|0BF2A1| db $22 ; Repeat byte
|0BF2A2| db $78
|0BF2A3| db $62 ; Increment fill
|0BF2A4| db $79
|0BF2A5| db $09 ; Raw block
|0BF2A6| db $32, $7C, $E9, $7D, $EB, $DE, $14, $15
|0BF2AE| db $EB, $25
|0BF2B0| db $62 ; Increment fill
|0BF2B1| db $05
|0BF2B2| db $62 ; Increment fill
|0BF2B3| db $80
|0BF2B4| db $09 ; Raw block
|0BF2B5| db $32, $16, $FF, $85, $EB, $66, $E6, $EF
|0BF2BD| db $EB, $04
|0BF2BF| db $62 ; Increment fill
|0BF2C0| db $0F
|0BF2C1| db $0C ; Raw block
|0BF2C2| db $86, $17, $AA, $88, $18, $19, $8B, $EB
|0BF2CA| db $53, $7E, $7F, $EB, $E6
|0BF2CF| db $62 ; Increment fill
|0BF2D0| db $1B
|0BF2D1| db $63 ; Increment fill
|0BF2D2| db $8C
|0BF2D3| db $0F ; Raw block
|0BF2D4| db $1A, $00, $92, $EB, $1D, $FF, $EF, $EB
|0BF2DC| db $1A, $1F, $27, $1F, $EF, $93, $5B, $C5
|0BF2E4| db $62 ; Increment fill
|0BF2E5| db $94
|0BF2E6| db $84 ; Copy past
|0BF2E7| dw $B300
|0BF2E9| db $07 ; Raw block
|0BF2EA| db $04, $1F, $FF, $97, $98, $93, $5B, $C5
|0BF2F2| db $FF ; End of Map 59

;===================================================================================================

OverworldMap32_Screen5A_High:
|0BF2F3| db $00 ; Raw block
|0BF2F4| db $04
|0BF2F5| db $22 ; Repeat byte
|0BF2F6| db $08
|0BF2F7| db $01 ; Raw block
|0BF2F8| db $00, $00
|0BF2FA| db $22 ; Repeat byte
|0BF2FB| db $08
|0BF2FC| db $00 ; Raw block
|0BF2FD| db $00
|0BF2FE| db $43 ; Repeat word
|0BF2FF| dw $0801
|0BF301| db $02 ; Raw block
|0BF302| db $07, $07, $04
|0BF305| db $22 ; Repeat byte
|0BF306| db $08
|0BF307| db $03 ; Raw block
|0BF308| db $00, $08, $00, $01
|0BF30C| db $83 ; Copy past
|0BF30D| dw $0400
|0BF30F| db $03 ; Raw block
|0BF310| db $01, $08, $07, $05
|0BF314| db $23 ; Repeat byte
|0BF315| db $08
|0BF316| db $03 ; Raw block
|0BF317| db $00, $08, $00, $07
|0BF31B| db $22 ; Repeat byte
|0BF31C| db $01
|0BF31D| db $11 ; Raw block
|0BF31E| db $00, $00, $08, $07, $08, $08, $04, $04
|0BF326| db $00, $00, $08, $01, $00, $01, $08, $00
|0BF32E| db $01, $01
|0BF330| db $84 ; Copy past
|0BF331| dw $2D00
|0BF333| db $22 ; Repeat byte
|0BF334| db $01
|0BF335| db $43 ; Repeat word
|0BF336| dw $0800
|0BF338| db $84 ; Copy past
|0BF339| dw $3100
|0BF33B| db $00 ; Raw block
|0BF33C| db $07
|0BF33D| db $62 ; Increment fill
|0BF33E| db $05
|0BF33F| db $01 ; Raw block
|0BF340| db $01, $08
|0BF342| db $83 ; Copy past
|0BF343| dw $2900
|0BF345| db $01 ; Raw block
|0BF346| db $01, $00
|0BF348| db $83 ; Copy past
|0BF349| dw $3200
|0BF34B| db $22 ; Repeat byte
|0BF34C| db $07
|0BF34D| db $22 ; Repeat byte
|0BF34E| db $08
|0BF34F| db $83 ; Copy past
|0BF350| dw $5200
|0BF352| db $22 ; Repeat byte
|0BF353| db $00
|0BF354| db $84 ; Copy past
|0BF355| dw $3B00
|0BF357| db $22 ; Repeat byte
|0BF358| db $07
|0BF359| db $07 ; Raw block
|0BF35A| db $03, $03, $04, $04, $03, $17, $17, $0D
|0BF362| db $22 ; Repeat byte
|0BF363| db $17
|0BF364| db $83 ; Copy past
|0BF365| dw $1E00
|0BF367| db $00 ; Raw block
|0BF368| db $03
|0BF369| db $22 ; Repeat byte
|0BF36A| db $01
|0BF36B| db $01 ; Raw block
|0BF36C| db $04, $01
|0BF36E| db $83 ; Copy past
|0BF36F| dw $7800
|0BF371| db $04 ; Raw block
|0BF372| db $04, $17, $07, $05, $07
|0BF377| db $44 ; Repeat word
|0BF378| dw $0108
|0BF37A| db $02 ; Raw block
|0BF37B| db $06, $08, $17
|0BF37E| db $22 ; Repeat byte
|0BF37F| db $08
|0BF380| db $83 ; Copy past
|0BF381| dw $7C00
|0BF383| db $02 ; Raw block
|0BF384| db $07, $06, $07
|0BF387| db $22 ; Repeat byte
|0BF388| db $01
|0BF389| db $02 ; Raw block
|0BF38A| db $04, $00, $0B
|0BF38D| db $22 ; Repeat byte
|0BF38E| db $08
|0BF38F| db $83 ; Copy past
|0BF390| dw $7C00
|0BF392| db $03 ; Raw block
|0BF393| db $05, $07, $01, $00
|0BF397| db $83 ; Copy past
|0BF398| dw $2900
|0BF39A| db $06 ; Raw block
|0BF39B| db $0B, $06, $17, $06, $0F, $17, $07
|0BF3A2| db $22 ; Repeat byte
|0BF3A3| db $05
|0BF3A4| db $09 ; Raw block
|0BF3A5| db $09, $04, $01, $08, $00, $00, $17, $0B
|0BF3AD| db $0D, $00
|0BF3AF| db $84 ; Copy past
|0BF3B0| dw $9C00
|0BF3B2| db $06 ; Raw block
|0BF3B3| db $08, $17, $0D, $03, $04, $00, $00
|0BF3BA| db $22 ; Repeat byte
|0BF3BB| db $17
|0BF3BC| db $00 ; Raw block
|0BF3BD| db $0D
|0BF3BE| db $85 ; Copy past
|0BF3BF| dw $CC00
|0BF3C1| db $05 ; Raw block
|0BF3C2| db $01, $04, $04, $01, $04, $04
|0BF3C8| db $84 ; Copy past
|0BF3C9| dw $E200
|0BF3CB| db $03 ; Raw block
|0BF3CC| db $08, $07, $05, $07
|0BF3D0| db $22 ; Repeat byte
|0BF3D1| db $08
|0BF3D2| db $06 ; Raw block
|0BF3D3| db $04, $08, $08, $04, $08, $08, $04
|0BF3DA| db $22 ; Repeat byte
|0BF3DB| db $08
|0BF3DC| db $01 ; Raw block
|0BF3DD| db $07, $05
|0BF3DF| db $FF ; End of Map 5A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen5A_Low:
|0BF3E0| db $05 ; Raw block
|0BF3E1| db $4A, $99, $44, $9A, $1D, $1C
|0BF3E7| db $62 ; Increment fill
|0BF3E8| db $9B
|0BF3E9| db $16 ; Raw block
|0BF3EA| db $B2, $67, $42, $4E, $9E, $8E, $36, $39
|0BF3F2| db $9F, $4B, $A0, $B2, $A1, $B6, $26, $1D
|0BF3FA| db $1D, $A2, $49, $58, $A3, $8E, $E1
|0BF401| db $63 ; Increment fill
|0BF402| db $A4
|0BF403| db $E0, $36 ; EXT Raw block
|0BF405| db $B6, $A8, $09, $8C, $61, $62, $2D, $C9
|0BF40D| db $FE, $A9, $8E, $AA, $AB, $95, $BE, $EE
|0BF415| db $09, $AC, $0E, $F6, $67, $AD, $1C, $39
|0BF41D| db $3A, $AE, $8E, $AA, $AF, $9A, $A0, $30
|0BF425| db $0E, $F6, $B0, $B6, $B1, $25, $20, $91
|0BF42D| db $8E, $B2, $8E, $E1, $A0, $1C, $D9, $B3
|0BF435| db $61, $62, $EE, $09, $2F, $99, $20
|0BF43C| db $83 ; Copy past
|0BF43D| dw $2B00
|0BF43F| db $01 ; Raw block
|0BF440| db $36, $19
|0BF442| db $62 ; Increment fill
|0BF443| db $B5
|0BF444| db $06 ; Raw block
|0BF445| db $67, $AD, $30, $0E, $F6, $AA, $1D
|0BF44C| db $84 ; Copy past
|0BF44D| dw $3B00
|0BF44F| db $0A ; Raw block
|0BF450| db $36, $67, $68, $55, $DB, $25, $23, $FB
|0BF458| db $1B, $1C, $6C
|0BF45B| db $62 ; Increment fill
|0BF45C| db $1D
|0BF45D| db $04 ; Raw block
|0BF45E| db $8E, $E1, $C1, $C2, $49
|0BF463| db $62 ; Increment fill
|0BF464| db $42
|0BF465| db $12 ; Raw block
|0BF466| db $1E, $74, $20, $21, $8B, $22, $20, $23
|0BF46E| db $8E, $E1, $4C, $C4, $A0, $C5, $4E, $C6
|0BF476| db $2F, $C7, $24
|0BF479| db $62 ; Increment fill
|0BF47A| db $0F
|0BF47B| db $0C ; Raw block
|0BF47C| db $25, $26, $8E, $E1, $14, $16, $6C, $57
|0BF484| db $58, $65, $BB, $1D, $FD
|0BF489| db $62 ; Increment fill
|0BF48A| db $1B
|0BF48B| db $E0, $2B ; EXT Raw block
|0BF48D| db $27, $28, $8E, $E1, $E1, $4C, $93, $1D
|0BF495| db $61, $62, $97, $98, $FD, $3A, $29, $B3
|0BF49D| db $01, $23, $8E, $E1, $E2, $EE, $1B, $BE
|0BF4A5| db $67, $AD, $1D, $1D, $2A, $44, $84, $1F
|0BF4AD| db $2B, $26, $8E, $E1, $4C, $CD, $2C, $58
|0BF4B5| db $DB, $25, $1D, $1D
|0BF4B9| db $62 ; Increment fill
|0BF4BA| db $2D
|0BF4BB| db $06 ; Raw block
|0BF4BC| db $6C, $30, $31, $8E, $E1, $4C, $D1
|0BF4C3| db $62 ; Increment fill
|0BF4C4| db $43
|0BF4C5| db $62 ; Increment fill
|0BF4C6| db $43
|0BF4C7| db $84 ; Copy past
|0BF4C8| dw $E200
|0BF4CA| db $0B ; Raw block
|0BF4CB| db $D4, $8E, $E1, $4C, $D5, $43, $44, $4A
|0BF4D3| db $99, $44, $4A, $99
|0BF4D7| db $83 ; Copy past
|0BF4D8| dw $F300
|0BF4DA| db $02 ; Raw block
|0BF4DB| db $D6, $8E, $E1
|0BF4DE| db $FF ; End of Map 5A

;===================================================================================================

OverworldMap32_Screen5B_High:
|0BF4DF| db $E4, $4F ; EXT Repeat byte
|0BF4E1| db $17
|0BF4E2| db $01 ; Raw block
|0BF4E3| db $05, $07
|0BF4E5| db $2D ; Repeat byte
|0BF4E6| db $17
|0BF4E7| db $01 ; Raw block
|0BF4E8| db $05, $07
|0BF4EA| db $2D ; Repeat byte
|0BF4EB| db $17
|0BF4EC| db $01 ; Raw block
|0BF4ED| db $05, $07
|0BF4EF| db $2D ; Repeat byte
|0BF4F0| db $17
|0BF4F1| db $01 ; Raw block
|0BF4F2| db $05, $07
|0BF4F4| db $2D ; Repeat byte
|0BF4F5| db $17
|0BF4F6| db $01 ; Raw block
|0BF4F7| db $05, $07
|0BF4F9| db $2D ; Repeat byte
|0BF4FA| db $17
|0BF4FB| db $01 ; Raw block
|0BF4FC| db $05, $07
|0BF4FE| db $2D ; Repeat byte
|0BF4FF| db $17
|0BF500| db $01 ; Raw block
|0BF501| db $05, $07
|0BF503| db $2D ; Repeat byte
|0BF504| db $17
|0BF505| db $01 ; Raw block
|0BF506| db $05, $07
|0BF508| db $2D ; Repeat byte
|0BF509| db $17
|0BF50A| db $01 ; Raw block
|0BF50B| db $05, $07
|0BF50D| db $2D ; Repeat byte
|0BF50E| db $17
|0BF50F| db $01 ; Raw block
|0BF510| db $05, $07
|0BF512| db $2D ; Repeat byte
|0BF513| db $17
|0BF514| db $01 ; Raw block
|0BF515| db $05, $07
|0BF517| db $2D ; Repeat byte
|0BF518| db $17
|0BF519| db $FF ; End of Map 5B

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen5B_Low:
|0BF51A| db $E4, $2C ; EXT Repeat byte
|0BF51C| db $32
|0BF51D| db $02 ; Raw block
|0BF51E| db $33, $34, $35
|0BF521| db $25 ; Repeat byte
|0BF522| db $32
|0BF523| db $02 ; Raw block
|0BF524| db $36, $37, $35
|0BF527| db $66 ; Increment fill
|0BF528| db $38
|0BF529| db $02 ; Raw block
|0BF52A| db $32, $32, $36
|0BF52D| db $65 ; Increment fill
|0BF52E| db $3F
|0BF52F| db $03 ; Raw block
|0BF530| db $3C, $45, $46, $45
|0BF534| db $62 ; Increment fill
|0BF535| db $47
|0BF536| db $01 ; Raw block
|0BF537| db $E1, $6E
|0BF539| db $66 ; Increment fill
|0BF53A| db $4A
|0BF53B| db $03 ; Raw block
|0BF53C| db $47, $3C, $46, $3C
|0BF540| db $62 ; Increment fill
|0BF541| db $51
|0BF542| db $0A ; Raw block
|0BF543| db $E1, $6E, $54, $55, $43, $56, $4B, $4C
|0BF54B| db $50, $45, $47
|0BF54E| db $64 ; Increment fill
|0BF54F| db $57
|0BF550| db $0A ; Raw block
|0BF551| db $E1, $6E, $5C, $4E, $4F, $5D, $55, $43
|0BF559| db $50, $3C, $45
|0BF55C| db $64 ; Increment fill
|0BF55D| db $5E
|0BF55E| db $84 ; Copy past
|0BF55F| dw $5000
|0BF561| db $00 ; Raw block
|0BF562| db $63
|0BF563| db $84 ; Copy past
|0BF564| dw $5600
|0BF566| db $64 ; Increment fill
|0BF567| db $64
|0BF568| db $84 ; Copy past
|0BF569| dw $6000
|0BF56B| db $00 ; Raw block
|0BF56C| db $69
|0BF56D| db $83 ; Copy past
|0BF56E| dw $6600
|0BF570| db $65 ; Increment fill
|0BF571| db $6A
|0BF572| db $84 ; Copy past
|0BF573| dw $7000
|0BF575| db $06 ; Raw block
|0BF576| db $70, $55, $43, $50, $71, $72, $6B
|0BF57D| db $63 ; Increment fill
|0BF57E| db $73
|0BF57F| db $84 ; Copy past
|0BF580| dw $5000
|0BF582| db $00 ; Raw block
|0BF583| db $77
|0BF584| db $62 ; Increment fill
|0BF585| db $4E
|0BF586| db $66 ; Increment fill
|0BF587| db $78
|0BF588| db $84 ; Copy past
|0BF589| dw $6000
|0BF58B| db $01 ; Raw block
|0BF58C| db $7F, $4B
|0BF58E| db $64 ; Increment fill
|0BF58F| db $80
|0BF590| db $62 ; Increment fill
|0BF591| db $84
|0BF592| db $00 ; Raw block
|0BF593| db $86
|0BF594| db $83 ; Copy past
|0BF595| dw $7000
|0BF597| db $05 ; Raw block
|0BF598| db $43, $87, $71, $88, $89, $5B
|0BF59E| db $63 ; Increment fill
|0BF59F| db $8A
|0BF5A0| db $01 ; Raw block
|0BF5A1| db $75, $75
|0BF5A3| db $83 ; Copy past
|0BF5A4| dw $5000
|0BF5A6| db $00 ; Raw block
|0BF5A7| db $4F
|0BF5A8| db $62 ; Increment fill
|0BF5A9| db $8E
|0BF5AA| db $00 ; Raw block
|0BF5AB| db $8F
|0BF5AC| db $66 ; Increment fill
|0BF5AD| db $91
|0BF5AE| db $83 ; Copy past
|0BF5AF| dw $6000
|0BF5B1| db $6A ; Increment fill
|0BF5B2| db $98
|0BF5B3| db $00 ; Raw block
|0BF5B4| db $A2
|0BF5B5| db $FF ; End of Map 5B

;===================================================================================================

OverworldMap32_Screen5C_High:
|0BF5B6| db $E4, $5C ; EXT Repeat byte
|0BF5B8| db $17
|0BF5B9| db $02 ; Raw block
|0BF5BA| db $03, $05, $05
|0BF5BD| db $2C ; Repeat byte
|0BF5BE| db $17
|0BF5BF| db $02 ; Raw block
|0BF5C0| db $03, $05, $05
|0BF5C3| db $2C ; Repeat byte
|0BF5C4| db $17
|0BF5C5| db $02 ; Raw block
|0BF5C6| db $03, $05, $05
|0BF5C9| db $2C ; Repeat byte
|0BF5CA| db $17
|0BF5CB| db $02 ; Raw block
|0BF5CC| db $03, $05, $05
|0BF5CF| db $2C ; Repeat byte
|0BF5D0| db $17
|0BF5D1| db $02 ; Raw block
|0BF5D2| db $03, $05, $05
|0BF5D5| db $2C ; Repeat byte
|0BF5D6| db $17
|0BF5D7| db $02 ; Raw block
|0BF5D8| db $03, $05, $05
|0BF5DB| db $2C ; Repeat byte
|0BF5DC| db $17
|0BF5DD| db $02 ; Raw block
|0BF5DE| db $03, $05, $05
|0BF5E1| db $2C ; Repeat byte
|0BF5E2| db $17
|0BF5E3| db $02 ; Raw block
|0BF5E4| db $03, $05, $05
|0BF5E7| db $2C ; Repeat byte
|0BF5E8| db $17
|0BF5E9| db $02 ; Raw block
|0BF5EA| db $03, $05, $05
|0BF5ED| db $2C ; Repeat byte
|0BF5EE| db $17
|0BF5EF| db $02 ; Raw block
|0BF5F0| db $03, $05, $05
|0BF5F3| db $2C ; Repeat byte
|0BF5F4| db $17
|0BF5F5| db $02 ; Raw block
|0BF5F6| db $03, $05, $05
|0BF5F9| db $FF ; End of Map 5C

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen5C_Low:
|0BF5FA| db $3F ; Repeat byte
|0BF5FB| db $32
|0BF5FC| db $02 ; Raw block
|0BF5FD| db $35, $A3, $A4
|0BF600| db $2C ; Repeat byte
|0BF601| db $32
|0BF602| db $68 ; Increment fill
|0BF603| db $A5
|0BF604| db $26 ; Repeat byte
|0BF605| db $32
|0BF606| db $6B ; Increment fill
|0BF607| db $AE
|0BF608| db $00 ; Raw block
|0BF609| db $AD
|0BF60A| db $22 ; Repeat byte
|0BF60B| db $32
|0BF60C| db $07 ; Raw block
|0BF60D| db $BA, $BB, $B3, $BC, $A6, $BD, $BE, $B5
|0BF615| db $62 ; Increment fill
|0BF616| db $BF
|0BF617| db $04 ; Raw block
|0BF618| db $C0, $B6, $32, $C5, $E1
|0BF61D| db $63 ; Increment fill
|0BF61E| db $C2
|0BF61F| db $0B ; Raw block
|0BF620| db $AF, $B0, $C6, $B5, $C0, $B6, $C1, $B6
|0BF628| db $BF, $32, $C5, $E1
|0BF62C| db $63 ; Increment fill
|0BF62D| db $C7
|0BF62E| db $0B ; Raw block
|0BF62F| db $B2, $B3, $CB, $B5, $B6, $BF, $C1, $BF
|0BF637| db $C0, $32, $C5, $E1
|0BF63B| db $64 ; Increment fill
|0BF63C| db $CC
|0BF63D| db $84 ; Copy past
|0BF63E| dw $5500
|0BF640| db $00 ; Raw block
|0BF641| db $D1
|0BF642| db $84 ; Copy past
|0BF643| dw $5B00
|0BF645| db $01 ; Raw block
|0BF646| db $6E, $6F
|0BF648| db $64 ; Increment fill
|0BF649| db $D2
|0BF64A| db $03 ; Raw block
|0BF64B| db $B5, $C0, $B6, $B5
|0BF64F| db $84 ; Copy past
|0BF650| dw $6B00
|0BF652| db $01 ; Raw block
|0BF653| db $75, $75
|0BF655| db $64 ; Increment fill
|0BF656| db $D7
|0BF657| db $03 ; Raw block
|0BF658| db $B5, $B6, $BF, $B5
|0BF65C| db $84 ; Copy past
|0BF65D| dw $7B00
|0BF65F| db $0A ; Raw block
|0BF660| db $DC, $78, $DD, $DE, $50, $78, $78, $B5
|0BF668| db $BF, $C0, $B5
|0BF66B| db $84 ; Copy past
|0BF66C| dw $5B00
|0BF66E| db $08 ; Raw block
|0BF66F| db $86, $DF, $E0, $E0, $E1, $86, $DF, $E2
|0BF677| db $E3
|0BF678| db $88 ; Copy past
|0BF679| dw $9900
|0BF67B| db $07 ; Raw block
|0BF67C| db $76, $75, $75, $76, $76, $75, $D4, $E4
|0BF684| db $85 ; Copy past
|0BF685| dw $AA00
|0BF687| db $0A ; Raw block
|0BF688| db $E5, $E6, $E5, $E7, $8F, $E8, $E9, $E5
|0BF690| db $E5, $EA, $EB
|0BF693| db $84 ; Copy past
|0BF694| dw $5B00
|0BF696| db $6B ; Increment fill
|0BF697| db $EC
|0BF698| db $83 ; Copy past
|0BF699| dw $6C00
|0BF69B| db $FF ; End of Map 5C

;===================================================================================================

OverworldMap32_Screen5D_High:
|0BF69C| db $04 ; Raw block
|0BF69D| db $07, $01, $07, $09, $06
|0BF6A2| db $22 ; Repeat byte
|0BF6A3| db $00
|0BF6A4| db $12 ; Raw block
|0BF6A5| db $03, $05, $07, $08, $04, $01, $04, $00
|0BF6AD| db $07, $01, $09, $09, $02, $00, $00, $06
|0BF6B5| db $09, $06, $07
|0BF6B8| db $22 ; Repeat byte
|0BF6B9| db $17
|0BF6BA| db $84 ; Copy past
|0BF6BB| dw $0E00
|0BF6BD| db $00 ; Raw block
|0BF6BE| db $17
|0BF6BF| db $22 ; Repeat byte
|0BF6C0| db $01
|0BF6C1| db $06 ; Raw block
|0BF6C2| db $02, $01, $05, $07, $08, $17, $10
|0BF6C9| db $85 ; Copy past
|0BF6CA| dw $1E00
|0BF6CC| db $22 ; Repeat byte
|0BF6CD| db $01
|0BF6CE| db $05 ; Raw block
|0BF6CF| db $03, $05, $07, $07, $17, $07
|0BF6D5| db $85 ; Copy past
|0BF6D6| dw $0D00
|0BF6D8| db $03 ; Raw block
|0BF6D9| db $17, $09, $01, $18
|0BF6DD| db $83 ; Copy past
|0BF6DE| dw $3700
|0BF6E0| db $11 ; Raw block
|0BF6E1| db $18, $06, $18, $04, $04, $07, $01, $00
|0BF6E9| db $18, $18, $06, $00, $18, $18, $15, $18
|0BF6F1| db $08, $06
|0BF6F3| db $22 ; Repeat byte
|0BF6F4| db $09
|0BF6F5| db $03 ; Raw block
|0BF6F6| db $07, $01, $00, $09
|0BF6FA| db $22 ; Repeat byte
|0BF6FB| db $18
|0BF6FC| db $17 ; Raw block
|0BF6FD| db $03, $05, $09, $07, $08, $18, $00, $01
|0BF705| db $04, $09, $01, $02, $09, $18, $09, $00
|0BF70D| db $03, $05, $09, $18, $08, $03, $00, $01
|0BF715| db $84 ; Copy past
|0BF716| dw $4F00
|0BF718| db $05 ; Raw block
|0BF719| db $09, $00, $00, $09, $05, $15
|0BF71F| db $88 ; Copy past
|0BF720| dw $7A00
|0BF722| db $0C ; Raw block
|0BF723| db $09, $06, $09, $04, $09, $09, $05, $07
|0BF72B| db $08, $00, $07, $09, $04
|0BF730| db $62 ; Increment fill
|0BF731| db $07
|0BF732| db $12 ; Raw block
|0BF733| db $01, $00, $09, $09, $05, $08, $07, $07
|0BF73B| db $03, $00, $02, $07, $07, $09, $06, $18
|0BF743| db $04, $02, $04
|0BF746| db $23 ; Repeat byte
|0BF747| db $07
|0BF748| db $05 ; Raw block
|0BF749| db $03, $00, $09, $07, $07, $01
|0BF74F| db $22 ; Repeat byte
|0BF750| db $09
|0BF751| db $0E ; Raw block
|0BF752| db $06, $06, $05, $07, $09, $07, $03, $00
|0BF75A| db $00, $09, $04, $01, $07, $09, $09
|0BF761| db $24 ; Repeat byte
|0BF762| db $07
|0BF763| db $03 ; Raw block
|0BF764| db $09, $07, $09, $03
|0BF768| db $22 ; Repeat byte
|0BF769| db $07
|0BF76A| db $06 ; Raw block
|0BF76B| db $01, $09, $05, $05, $09, $05, $05
|0BF772| db $22 ; Repeat byte
|0BF773| db $0A
|0BF774| db $01 ; Raw block
|0BF775| db $03, $01
|0BF777| db $22 ; Repeat byte
|0BF778| db $07
|0BF779| db $07 ; Raw block
|0BF77A| db $00, $01, $0A, $07, $01, $01, $00, $18
|0BF782| db $22 ; Repeat byte
|0BF783| db $06
|0BF784| db $02 ; Raw block
|0BF785| db $00, $01, $03
|0BF788| db $22 ; Repeat byte
|0BF789| db $00
|0BF78A| db $01 ; Raw block
|0BF78B| db $01, $0A
|0BF78D| db $FF ; End of Map 5D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen5D_Low:
|0BF78E| db $04 ; Raw block
|0BF78F| db $4C, $93, $6D, $B0, $8E
|0BF794| db $22 ; Repeat byte
|0BF795| db $1D
|0BF796| db $12 ; Raw block
|0BF797| db $32, $C5, $6E, $B7, $37, $77, $86, $1D
|0BF79F| db $4C, $93, $B2, $B3, $96, $1D, $1D, $7D
|0BF7A7| db $B6, $09, $6E
|0BF7AA| db $62 ; Increment fill
|0BF7AB| db $F8
|0BF7AC| db $05 ; Raw block
|0BF7AD| db $86, $1D, $56, $93, $B8, $FB
|0BF7B3| db $62 ; Increment fill
|0BF7B4| db $42
|0BF7B5| db $06 ; Raw block
|0BF7B6| db $A1, $AD, $C5, $6E, $B7, $FC, $93
|0BF7BD| db $83 ; Copy past
|0BF7BE| dw $0E00
|0BF7C0| db $01 ; Raw block
|0BF7C1| db $B0, $FD
|0BF7C3| db $62 ; Increment fill
|0BF7C4| db $4D
|0BF7C5| db $05 ; Raw block
|0BF7C6| db $9A, $99, $1F, $6E, $FE, $AF
|0BF7CC| db $84 ; Copy past
|0BF7CD| dw $0D00
|0BF7CF| db $1A ; Raw block
|0BF7D0| db $C1, $FF, $C3, $58, $00, $32, $C5, $36
|0BF7D8| db $6E, $01, $3A, $02, $8E, $C4, $4C, $93
|0BF7E0| db $1D, $03, $04, $8F, $1D, $05, $06, $5C
|0BF7E8| db $07, $B7, $66
|0BF7EB| db $62 ; Increment fill
|0BF7EC| db $D1
|0BF7ED| db $03 ; Raw block
|0BF7EE| db $4C, $93, $1D, $D4
|0BF7F2| db $62 ; Increment fill
|0BF7F3| db $08
|0BF7F4| db $E0, $26 ; EXT Raw block
|0BF7F6| db $32, $C5, $F5, $6E, $B7, $0B, $A5, $77
|0BF7FE| db $86, $DB, $93, $DE, $C1, $0C, $DD, $1D
|0BF806| db $32, $C5, $FA, $0D, $B7, $E2, $A5, $77
|0BF80E| db $86, $4C, $93, $1D, $0E, $E4, $A5, $1D
|0BF816| db $E5, $C5, $62, $0F, $B7, $D5, $1D
|0BF81D| db $84 ; Copy past
|0BF81E| dw $7E00
|0BF820| db $E0, $2C ; EXT Raw block
|0BF822| db $E8, $9C, $E9, $81, $82, $EA, $E1, $6E
|0BF82A| db $B7, $1D, $91, $EB, $86, $4C, $C4, $EC
|0BF832| db $F2, $1D, $ED, $EE, $9F, $AA, $67, $68
|0BF83A| db $55, $1D, $8D, $C6, $C7, $EF, $16, $10
|0BF842| db $7B, $61, $C5, $13, $36, $67, $68, $49
|0BF84A| db $1D, $F4, $C6, $C7, $48
|0BF84F| db $62 ; Increment fill
|0BF850| db $F5
|0BF851| db $0F ; Raw block
|0BF852| db $A0, $A0, $AC, $18, $90, $6E, $4F, $1D
|0BF85A| db $1D, $EB, $86, $48, $D9, $FA, $FB, $83
|0BF862| db $23 ; Repeat byte
|0BF863| db $84
|0BF864| db $0D ; Raw block
|0BF865| db $FC, $68, $FD, $44, $C0, $C6, $2A, $2E
|0BF86D| db $FE, $E2, $EE, $FF, $6D, $6D
|0BF873| db $62 ; Increment fill
|0BF874| db $00
|0BF875| db $17 ; Raw block
|0BF876| db $49, $48, $60, $CB, $2A, $1D, $2E, $03
|0BF87E| db $4C, $93, $CC, $A0, $11, $95, $95, $8F
|0BF886| db $1D, $2E, $A0, $A5, $1D, $A5, $2E, $03
|0BF88E| db $FF ; End of Map 5D

;===================================================================================================

OverworldMap32_Screen5E_High:
|0BF88F| db $23 ; Repeat byte
|0BF890| db $0A
|0BF891| db $23 ; Repeat byte
|0BF892| db $18
|0BF893| db $25 ; Repeat byte
|0BF894| db $0A
|0BF895| db $83 ; Copy past
|0BF896| dw $0600
|0BF898| db $01 ; Raw block
|0BF899| db $05, $05
|0BF89B| db $23 ; Repeat byte
|0BF89C| db $18
|0BF89D| db $83 ; Copy past
|0BF89E| dw $1000
|0BF8A0| db $23 ; Repeat byte
|0BF8A1| db $18
|0BF8A2| db $01 ; Raw block
|0BF8A3| db $0A, $0A
|0BF8A5| db $2D ; Repeat byte
|0BF8A6| db $18
|0BF8A7| db $01 ; Raw block
|0BF8A8| db $0A, $0C
|0BF8AA| db $31 ; Repeat byte
|0BF8AB| db $18
|0BF8AC| db $02 ; Raw block
|0BF8AD| db $05, $0A, $18
|0BF8B0| db $23 ; Repeat byte
|0BF8B1| db $05
|0BF8B2| db $E4, $20 ; EXT Repeat byte
|0BF8B4| db $18
|0BF8B5| db $23 ; Repeat byte
|0BF8B6| db $05
|0BF8B7| db $E4, $4F ; EXT Repeat byte
|0BF8B9| db $18
|0BF8BA| db $00 ; Raw block
|0BF8BB| db $0A
|0BF8BC| db $2E ; Repeat byte
|0BF8BD| db $18
|0BF8BE| db $01 ; Raw block
|0BF8BF| db $0A, $0A
|0BF8C1| db $2D ; Repeat byte
|0BF8C2| db $18
|0BF8C3| db $01 ; Raw block
|0BF8C4| db $0A, $0A
|0BF8C6| db $3D ; Repeat byte
|0BF8C7| db $18
|0BF8C8| db $FF ; End of Map 5E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen5E_Low:
|0BF8C9| db $00 ; Raw block
|0BF8CA| db $07
|0BF8CB| db $22 ; Repeat byte
|0BF8CC| db $08
|0BF8CD| db $03 ; Raw block
|0BF8CE| db $12, $13, $13, $14
|0BF8D2| db $25 ; Repeat byte
|0BF8D3| db $08
|0BF8D4| db $0D ; Raw block
|0BF8D5| db $15, $14, $09, $0A, $FB, $FB, $16, $17
|0BF8DD| db $17, $18, $0B, $0C, $FB, $E8
|0BF8E3| db $63 ; Increment fill
|0BF8E4| db $19
|0BF8E5| db $02 ; Raw block
|0BF8E6| db $09, $10, $1D
|0BF8E9| db $22 ; Repeat byte
|0BF8EA| db $1E
|0BF8EB| db $01 ; Raw block
|0BF8EC| db $1F, $1E
|0BF8EE| db $63 ; Increment fill
|0BF8EF| db $20
|0BF8F0| db $00 ; Raw block
|0BF8F1| db $1E
|0BF8F2| db $62 ; Increment fill
|0BF8F3| db $24
|0BF8F4| db $03 ; Raw block
|0BF8F5| db $09, $FB, $27, $28
|0BF8F9| db $25 ; Repeat byte
|0BF8FA| db $17
|0BF8FB| db $69 ; Increment fill
|0BF8FC| db $29
|0BF8FD| db $02 ; Raw block
|0BF8FE| db $FB, $0C, $33
|0BF901| db $23 ; Repeat byte
|0BF902| db $FB
|0BF903| db $65 ; Increment fill
|0BF904| db $34
|0BF905| db $0A ; Raw block
|0BF906| db $2C, $2D, $3A, $3B, $21, $21, $3C, $3D
|0BF90E| db $21, $21, $3E
|0BF911| db $22 ; Repeat byte
|0BF912| db $17
|0BF913| db $05 ; Raw block
|0BF914| db $18, $3F, $40, $27, $2C, $31
|0BF91A| db $65 ; Increment fill
|0BF91B| db $41
|0BF91C| db $00 ; Raw block
|0BF91D| db $2C
|0BF91E| db $23 ; Repeat byte
|0BF91F| db $FB
|0BF920| db $02 ; Raw block
|0BF921| db $47, $48, $27
|0BF924| db $62 ; Increment fill
|0BF925| db $49
|0BF926| db $00 ; Raw block
|0BF927| db $41
|0BF928| db $6B ; Increment fill
|0BF929| db $4C
|0BF92A| db $09 ; Raw block
|0BF92B| db $38, $2B, $58, $59, $4F, $5A, $4D, $5B
|0BF933| db $32, $27
|0BF935| db $62 ; Increment fill
|0BF936| db $5C
|0BF937| db $01 ; Raw block
|0BF938| db $39, $5F
|0BF93A| db $83 ; Copy past
|0BF93B| dw $6200
|0BF93D| db $62 ; Increment fill
|0BF93E| db $60
|0BF93F| db $0A ; Raw block
|0BF940| db $44, $63, $2E, $37, $1C, $64, $65, $39
|0BF948| db $2C, $66, $2C
|0BF94B| db $65 ; Increment fill
|0BF94C| db $67
|0BF94D| db $03 ; Raw block
|0BF94E| db $41, $6D, $6E, $2C
|0BF952| db $62 ; Increment fill
|0BF953| db $6F
|0BF954| db $00 ; Raw block
|0BF955| db $18
|0BF956| db $66 ; Increment fill
|0BF957| db $72
|0BF958| db $62 ; Increment fill
|0BF959| db $78
|0BF95A| db $04 ; Raw block
|0BF95B| db $5D, $7B, $1F, $1F, $09
|0BF960| db $63 ; Increment fill
|0BF961| db $7C
|0BF962| db $02 ; Raw block
|0BF963| db $70, $80, $81
|0BF966| db $22 ; Repeat byte
|0BF967| db $70
|0BF968| db $01 ; Raw block
|0BF969| db $82, $83
|0BF96B| db $22 ; Repeat byte
|0BF96C| db $17
|0BF96D| db $03 ; Raw block
|0BF96E| db $09, $10, $64, $65
|0BF972| db $22 ; Repeat byte
|0BF973| db $84
|0BF974| db $63 ; Increment fill
|0BF975| db $85
|0BF976| db $00 ; Raw block
|0BF977| db $88
|0BF978| db $22 ; Repeat byte
|0BF979| db $89
|0BF97A| db $06 ; Raw block
|0BF97B| db $8A, $09, $0A, $7F, $8B, $8C, $70
|0BF982| db $63 ; Increment fill
|0BF983| db $8C
|0BF984| db $24 ; Repeat byte
|0BF985| db $90
|0BF986| db $01 ; Raw block
|0BF987| db $91, $2F
|0BF989| db $62 ; Increment fill
|0BF98A| db $92
|0BF98B| db $22 ; Repeat byte
|0BF98C| db $21
|0BF98D| db $63 ; Increment fill
|0BF98E| db $95
|0BF98F| db $43 ; Repeat word
|0BF990| dw $9A99
|0BF992| db $00 ; Raw block
|0BF993| db $9B
|0BF994| db $FF ; End of Map 5E

;===================================================================================================

OverworldMap32_Screen5F_High:
|0BF995| db $03 ; Raw block
|0BF996| db $0A, $18, $18, $0A
|0BF99A| db $2A ; Repeat byte
|0BF99B| db $18
|0BF99C| db $04 ; Raw block
|0BF99D| db $01, $05, $18, $18, $05
|0BF9A2| db $2A ; Repeat byte
|0BF9A3| db $18
|0BF9A4| db $84 ; Copy past
|0BF9A5| dw $0F00
|0BF9A7| db $2A ; Repeat byte
|0BF9A8| db $18
|0BF9A9| db $00 ; Raw block
|0BF9AA| db $01
|0BF9AB| db $2E ; Repeat byte
|0BF9AC| db $18
|0BF9AD| db $00 ; Raw block
|0BF9AE| db $01
|0BF9AF| db $2E ; Repeat byte
|0BF9B0| db $18
|0BF9B1| db $00 ; Raw block
|0BF9B2| db $01
|0BF9B3| db $2E ; Repeat byte
|0BF9B4| db $18
|0BF9B5| db $00 ; Raw block
|0BF9B6| db $01
|0BF9B7| db $2E ; Repeat byte
|0BF9B8| db $18
|0BF9B9| db $00 ; Raw block
|0BF9BA| db $01
|0BF9BB| db $22 ; Repeat byte
|0BF9BC| db $18
|0BF9BD| db $00 ; Raw block
|0BF9BE| db $05
|0BF9BF| db $2A ; Repeat byte
|0BF9C0| db $18
|0BF9C1| db $04 ; Raw block
|0BF9C2| db $01, $0A, $18, $18, $05
|0BF9C7| db $2A ; Repeat byte
|0BF9C8| db $18
|0BF9C9| db $00 ; Raw block
|0BF9CA| db $01
|0BF9CB| db $22 ; Repeat byte
|0BF9CC| db $18
|0BF9CD| db $00 ; Raw block
|0BF9CE| db $05
|0BF9CF| db $2A ; Repeat byte
|0BF9D0| db $18
|0BF9D1| db $00 ; Raw block
|0BF9D2| db $01
|0BF9D3| db $22 ; Repeat byte
|0BF9D4| db $18
|0BF9D5| db $00 ; Raw block
|0BF9D6| db $05
|0BF9D7| db $2A ; Repeat byte
|0BF9D8| db $18
|0BF9D9| db $00 ; Raw block
|0BF9DA| db $01
|0BF9DB| db $2C ; Repeat byte
|0BF9DC| db $18
|0BF9DD| db $06 ; Raw block
|0BF9DE| db $19, $18, $01, $18, $19, $18, $05
|0BF9E5| db $22 ; Repeat byte
|0BF9E6| db $19
|0BF9E7| db $01 ; Raw block
|0BF9E8| db $05, $18
|0BF9EA| db $23 ; Repeat byte
|0BF9EB| db $19
|0BF9EC| db $01 ; Raw block
|0BF9ED| db $18, $19
|0BF9EF| db $83 ; Copy past
|0BF9F0| dw $0F00
|0BF9F2| db $07 ; Raw block
|0BF9F3| db $19, $19, $18, $18, $19, $19, $18, $0A
|0BF9FB| db $22 ; Repeat byte
|0BF9FC| db $18
|0BF9FD| db $00 ; Raw block
|0BF9FE| db $19
|0BF9FF| db $83 ; Copy past
|0BFA00| dw $7F00
|0BFA02| db $24 ; Repeat byte
|0BFA03| db $19
|0BFA04| db $02 ; Raw block
|0BFA05| db $18, $18, $05
|0BFA08| db $22 ; Repeat byte
|0BFA09| db $18
|0BFA0A| db $04 ; Raw block
|0BFA0B| db $19, $01, $05, $0A, $0A
|0BFA10| db $84 ; Copy past
|0BFA11| dw $D200
|0BFA13| db $01 ; Raw block
|0BFA14| db $05, $06
|0BFA16| db $23 ; Repeat byte
|0BFA17| db $0A
|0BFA18| db $01 ; Raw block
|0BFA19| db $19, $01
|0BFA1B| db $FF ; End of Map 5F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen5F_Low:
|0BFA1C| db $04 ; Raw block
|0BFA1D| db $08, $15, $14, $08, $12
|0BFA22| db $62 ; Increment fill
|0BFA23| db $9C
|0BFA24| db $25 ; Repeat byte
|0BFA25| db $90
|0BFA26| db $05 ; Raw block
|0BFA27| db $9F, $71, $FB, $27, $2C, $FB
|0BFA2D| db $6A ; Increment fill
|0BFA2E| db $A0
|0BFA2F| db $03 ; Raw block
|0BFA30| db $71, $FB, $AB, $AC
|0BFA34| db $83 ; Copy past
|0BFA35| dw $1300
|0BFA37| db $67 ; Increment fill
|0BFA38| db $AD
|0BFA39| db $07 ; Raw block
|0BFA3A| db $71, $20, $B5, $65, $84, $B6, $B7, $A2
|0BFA42| db $67 ; Increment fill
|0BFA43| db $B8
|0BFA44| db $02 ; Raw block
|0BFA45| db $71, $2B, $C0
|0BFA48| db $22 ; Repeat byte
|0BFA49| db $70
|0BFA4A| db $01 ; Raw block
|0BFA4B| db $C1, $A2
|0BFA4D| db $67 ; Increment fill
|0BFA4E| db $C2
|0BFA4F| db $08 ; Raw block
|0BFA50| db $71, $27, $49, $CA, $23, $1E, $CB, $A2
|0BFA58| db $C2
|0BFA59| db $65 ; Increment fill
|0BFA5A| db $CC
|0BFA5B| db $08 ; Raw block
|0BFA5C| db $C9, $71, $74, $D2, $D3, $2A, $D4, $A1
|0BFA64| db $D5
|0BFA65| db $22 ; Repeat byte
|0BFA66| db $84
|0BFA67| db $0C ; Raw block
|0BFA68| db $D6, $D7, $84, $84, $D8, $71, $7F, $D9
|0BFA70| db $DA, $FB, $A0, $DB, $DC
|0BFA75| db $22 ; Repeat byte
|0BFA76| db $DD
|0BFA77| db $0B ; Raw block
|0BFA78| db $DE, $DF, $DD, $DD, $E0, $71, $97, $E1
|0BFA80| db $E2, $FB, $E3, $E4
|0BFA84| db $47 ; Repeat word
|0BFA85| dw $E6E5
|0BFA87| db $0C ; Raw block
|0BFA88| db $E7, $71, $84, $B6, $B7, $FB, $E8, $E9
|0BFA90| db $84, $84, $53, $EA, $21
|0BFA95| db $63 ; Increment fill
|0BFA96| db $EB
|0BFA97| db $09 ; Raw block
|0BFA98| db $71, $70, $70, $C1, $FB, $EF, $F0, $70
|0BFAA0| db $70, $5D
|0BFAA2| db $65 ; Increment fill
|0BFAA3| db $F1
|0BFAA4| db $03 ; Raw block
|0BFAA5| db $71, $1E, $1E, $CB
|0BFAA9| db $64 ; Increment fill
|0BFAAA| db $F7
|0BFAAB| db $00 ; Raw block
|0BFAAC| db $27
|0BFAAD| db $63 ; Increment fill
|0BFAAE| db $FC
|0BFAAF| db $06 ; Raw block
|0BFAB0| db $00, $C9, $71, $17, $01, $A1, $FB
|0BFAB7| db $62 ; Increment fill
|0BFAB8| db $02
|0BFAB9| db $01 ; Raw block
|0BFABA| db $FB, $27
|0BFABC| db $63 ; Increment fill
|0BFABD| db $05
|0BFABE| db $15 ; Raw block
|0BFABF| db $FB, $09, $71, $FB, $E8, $E9, $0A, $0B
|0BFAC7| db $84, $85, $0B, $0C, $40, $97, $74, $E9
|0BFACF| db $84, $0D, $71, $0C, $EF, $70
|0BFAD5| db $62 ; Increment fill
|0BFAD6| db $0E
|0BFAD7| db $14 ; Raw block
|0BFAD8| db $0E, $0F, $70, $82, $FB, $7F, $70, $70
|0BFAE0| db $11, $71, $FB, $E8, $0C, $A0, $08, $12
|0BFAE8| db $A0, $A1, $FB, $05, $97
|0BFAED| db $22 ; Repeat byte
|0BFAEE| db $E8
|0BFAEF| db $01 ; Raw block
|0BFAF0| db $13, $71
|0BFAF2| db $FF ; End of Map 5F

;===================================================================================================

OverworldMap32_Screen60_High:
|0BFAF3| db $09 ; Raw block
|0BFAF4| db $00, $01, $06, $08, $0A, $16, $07, $00
|0BFAFC| db $0A, $08
|0BFAFE| db $25 ; Repeat byte
|0BFAFF| db $0A
|0BFB00| db $09 ; Raw block
|0BFB01| db $00, $04, $01, $08, $0A, $00, $07, $16
|0BFB09| db $0A, $0A
|0BFB0B| db $45 ; Repeat word
|0BFB0C| dw $0B08
|0BFB0E| db $02 ; Raw block
|0BFB0F| db $00, $00, $01
|0BFB12| db $84 ; Copy past
|0BFB13| dw $0300
|0BFB15| db $02 ; Raw block
|0BFB16| db $16, $07, $08
|0BFB19| db $22 ; Repeat byte
|0BFB1A| db $19
|0BFB1B| db $01 ; Raw block
|0BFB1C| db $0B, $08
|0BFB1E| db $86 ; Copy past
|0BFB1F| dw $0000
|0BFB21| db $03 ; Raw block
|0BFB22| db $19, $0A, $07, $08
|0BFB26| db $24 ; Repeat byte
|0BFB27| db $19
|0BFB28| db $83 ; Copy past
|0BFB29| dw $1000
|0BFB2B| db $06 ; Raw block
|0BFB2C| db $0B, $0B, $04, $0B, $0B, $07, $08
|0BFB33| db $23 ; Repeat byte
|0BFB34| db $19
|0BFB35| db $00 ; Raw block
|0BFB36| db $16
|0BFB37| db $83 ; Copy past
|0BFB38| dw $2000
|0BFB3A| db $06 ; Raw block
|0BFB3B| db $0B, $0B, $08, $0B, $0B, $08, $08
|0BFB42| db $22 ; Repeat byte
|0BFB43| db $19
|0BFB44| db $00 ; Raw block
|0BFB45| db $16
|0BFB46| db $83 ; Copy past
|0BFB47| dw $2F00
|0BFB49| db $27 ; Repeat byte
|0BFB4A| db $08
|0BFB4B| db $01 ; Raw block
|0BFB4C| db $0B, $16
|0BFB4E| db $83 ; Copy past
|0BFB4F| dw $1D00
|0BFB51| db $02 ; Raw block
|0BFB52| db $04, $01, $08
|0BFB55| db $25 ; Repeat byte
|0BFB56| db $0B
|0BFB57| db $24 ; Repeat byte
|0BFB58| db $07
|0BFB59| db $03 ; Raw block
|0BFB5A| db $08, $00, $00, $01
|0BFB5E| db $25 ; Repeat byte
|0BFB5F| db $0B
|0BFB60| db $02 ; Raw block
|0BFB61| db $07, $0B, $0B
|0BFB64| db $22 ; Repeat byte
|0BFB65| db $07
|0BFB66| db $83 ; Copy past
|0BFB67| dw $2F00
|0BFB69| db $25 ; Repeat byte
|0BFB6A| db $0B
|0BFB6B| db $03 ; Raw block
|0BFB6C| db $05, $0B, $0B, $16
|0BFB70| db $22 ; Repeat byte
|0BFB71| db $0B
|0BFB72| db $01 ; Raw block
|0BFB73| db $00, $04
|0BFB75| db $84 ; Copy past
|0BFB76| dw $4D00
|0BFB78| db $0A ; Raw block
|0BFB79| db $19, $08, $07, $0B, $0B, $16, $19, $19
|0BFB81| db $0B, $00, $00
|0BFB84| db $22 ; Repeat byte
|0BFB85| db $19
|0BFB86| db $22 ; Repeat byte
|0BFB87| db $0B
|0BFB88| db $83 ; Copy past
|0BFB89| dw $A800
|0BFB8B| db $05 ; Raw block
|0BFB8C| db $17, $16, $16, $08, $06, $01
|0BFB92| db $22 ; Repeat byte
|0BFB93| db $19
|0BFB94| db $00 ; Raw block
|0BFB95| db $08
|0BFB96| db $43 ; Repeat word
|0BFB97| dw $0B08
|0BFB99| db $22 ; Repeat byte
|0BFB9A| db $16
|0BFB9B| db $0A ; Raw block
|0BFB9C| db $00, $01, $16, $03, $03, $0B, $0B, $01
|0BFBA4| db $0B, $08, $01
|0BFBA7| db $2C ; Repeat byte
|0BFBA8| db $0B
|0BFBA9| db $00 ; Raw block
|0BFBAA| db $08
|0BFBAB| db $2D ; Repeat byte
|0BFBAC| db $0B
|0BFBAD| db $05 ; Raw block
|0BFBAE| db $04, $08, $08, $04, $08, $08
|0BFBB4| db $85 ; Copy past
|0BFBB5| dw $F400
|0BFBB7| db $FF ; End of Map 60

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen60_Low:
|0BFBB8| db $09 ; Raw block
|0BFBB9| db $06, $10, $2B, $03, $FB, $E6, $41, $1F
|0BFBC1| db $FC, $13
|0BFBC3| db $23 ; Repeat byte
|0BFBC4| db $FD
|0BFBC5| db $14 ; Raw block
|0BFBC6| db $FE, $FE, $02, $6D, $26, $03, $FB, $1F
|0BFBCE| db $41, $FF, $FC, $FF, $77, $00, $61, $01
|0BFBD6| db $78, $02, $0B, $09, $2F
|0BFBDB| db $84 ; Copy past
|0BFBDC| dw $0300
|0BFBDE| db $02 ; Raw block
|0BFBDF| db $EE, $E7, $25
|0BFBE2| db $62 ; Increment fill
|0BFBE3| db $14
|0BFBE4| db $01 ; Raw block
|0BFBE5| db $06, $08
|0BFBE7| db $84 ; Copy past
|0BFBE8| dw $0000
|0BFBEA| db $05 ; Raw block
|0BFBEB| db $EC, $41, $17, $FC, $E7, $25
|0BFBF1| db $64 ; Increment fill
|0BFBF2| db $18
|0BFBF3| db $83 ; Copy past
|0BFBF4| dw $1000
|0BFBF6| db $06 ; Raw block
|0BFBF7| db $0C, $0D, $37, $0E, $0F, $E7, $25
|0BFBFE| db $63 ; Increment fill
|0BFBFF| db $1D
|0BFC00| db $00 ; Raw block
|0BFC01| db $EE
|0BFC02| db $83 ; Copy past
|0BFC03| dw $2000
|0BFC05| db $06 ; Raw block
|0BFC06| db $15, $16, $0A, $17, $18, $58, $25
|0BFC0D| db $62 ; Increment fill
|0BFC0E| db $21
|0BFC0F| db $00 ; Raw block
|0BFC10| db $FA
|0BFC11| db $84 ; Copy past
|0BFC12| dw $2F00
|0BFC14| db $62 ; Increment fill
|0BFC15| db $2F
|0BFC16| db $08 ; Raw block
|0BFC17| db $2F, $30, $22, $3D, $1D, $EC, $1E, $95
|0BFC1F| db $1F
|0BFC20| db $83 ; Copy past
|0BFC21| dw $1000
|0BFC23| db $00 ; Raw block
|0BFC24| db $20
|0BFC25| db $24 ; Repeat byte
|0BFC26| db $21
|0BFC27| db $24 ; Repeat byte
|0BFC28| db $E1
|0BFC29| db $05 ; Raw block
|0BFC2A| db $37, $0B, $09, $2F, $22, $23
|0BFC30| db $22 ; Repeat byte
|0BFC31| db $24
|0BFC32| db $03 ; Raw block
|0BFC33| db $25, $E9, $26, $26
|0BFC37| db $22 ; Repeat byte
|0BFC38| db $E9
|0BFC39| db $04 ; Raw block
|0BFC3A| db $24, $06, $10, $2B, $27
|0BFC3F| db $23 ; Repeat byte
|0BFC40| db $28
|0BFC41| db $04 ; Raw block
|0BFC42| db $29, $04, $2A, $2B, $E6
|0BFC47| db $62 ; Increment fill
|0BFC48| db $2C
|0BFC49| db $14 ; Raw block
|0BFC4A| db $02, $6D, $24, $25, $FA, $1F, $1F, $17
|0BFC52| db $03, $6D, $32, $33, $FF, $26, $27, $14
|0BFC5A| db $0B, $09, $28, $19, $29
|0BFC5F| db $62 ; Increment fill
|0BFC60| db $39
|0BFC61| db $09 ; Raw block
|0BFC62| db $03, $6D, $3C, $3D, $00, $FF, $FA, $08
|0BFC6A| db $AC, $0E
|0BFC6C| db $62 ; Increment fill
|0BFC6D| db $2A
|0BFC6E| db $13 ; Raw block
|0BFC6F| db $BD, $4B, $43, $03, $44, $E6, $EC, $E6
|0BFC77| db $1F, $5A, $EE, $4B, $4B, $45, $46, $42
|0BFC7F| db $47, $D3, $62, $22
|0BFC83| db $24 ; Repeat byte
|0BFC84| db $48
|0BFC85| db $66 ; Increment fill
|0BFC86| db $49
|0BFC87| db $00 ; Raw block
|0BFC88| db $99
|0BFC89| db $65 ; Increment fill
|0BFC8A| db $50
|0BFC8B| db $62 ; Increment fill
|0BFC8C| db $53
|0BFC8D| db $01 ; Raw block
|0BFC8E| db $53, $4C
|0BFC90| db $62 ; Increment fill
|0BFC91| db $56
|0BFC92| db $05 ; Raw block
|0BFC93| db $39, $9F, $4B, $39, $9F, $4B
|0BFC99| db $85 ; Copy past
|0BFC9A| dw $F400
|0BFC9C| db $FF ; End of Map 60

;===================================================================================================

OverworldMap32_Screen61_High:
|0BFC9D| db $07 ; Raw block
|0BFC9E| db $0A, $0A, $0B, $0B, $0A, $0A, $0B, $0B
|0BFCA6| db $23 ; Repeat byte
|0BFCA7| db $07
|0BFCA8| db $05 ; Raw block
|0BFCA9| db $0B, $08, $07, $05, $0B, $0B
|0BFCAF| db $23 ; Repeat byte
|0BFCB0| db $08
|0BFCB1| db $01 ; Raw block
|0BFCB2| db $0B, $0B
|0BFCB4| db $23 ; Repeat byte
|0BFCB5| db $19
|0BFCB6| db $83 ; Copy past
|0BFCB7| dw $0C00
|0BFCB9| db $01 ; Raw block
|0BFCBA| db $08, $08
|0BFCBC| db $23 ; Repeat byte
|0BFCBD| db $19
|0BFCBE| db $01 ; Raw block
|0BFCBF| db $08, $08
|0BFCC1| db $22 ; Repeat byte
|0BFCC2| db $19
|0BFCC3| db $00 ; Raw block
|0BFCC4| db $0D
|0BFCC5| db $84 ; Copy past
|0BFCC6| dw $1C00
|0BFCC8| db $00 ; Raw block
|0BFCC9| db $17
|0BFCCA| db $23 ; Repeat byte
|0BFCCB| db $19
|0BFCCC| db $04 ; Raw block
|0BFCCD| db $08, $08, $19, $16, $16
|0BFCD2| db $86 ; Copy past
|0BFCD3| dw $2B00
|0BFCD5| db $23 ; Repeat byte
|0BFCD6| db $19
|0BFCD7| db $05 ; Raw block
|0BFCD8| db $08, $08, $19, $12, $19, $19
|0BFCDE| db $22 ; Repeat byte
|0BFCDF| db $0B
|0BFCE0| db $00 ; Raw block
|0BFCE1| db $05
|0BFCE2| db $84 ; Copy past
|0BFCE3| dw $1500
|0BFCE5| db $09 ; Raw block
|0BFCE6| db $0B, $0B, $08, $0A, $00, $16, $16, $0B
|0BFCEE| db $08, $03
|0BFCF0| db $85 ; Copy past
|0BFCF1| dw $4F00
|0BFCF3| db $23 ; Repeat byte
|0BFCF4| db $0B
|0BFCF5| db $22 ; Repeat byte
|0BFCF6| db $19
|0BFCF7| db $84 ; Copy past
|0BFCF8| dw $5C00
|0BFCFA| db $2B ; Repeat byte
|0BFCFB| db $0B
|0BFCFC| db $03 ; Raw block
|0BFCFD| db $08, $07, $0B, $08
|0BFD01| db $24 ; Repeat byte
|0BFD02| db $19
|0BFD03| db $0A ; Raw block
|0BFD04| db $0B, $07, $07, $0B, $19, $06, $19, $0B
|0BFD0C| db $02, $0B, $08
|0BFD0F| db $27 ; Repeat byte
|0BFD10| db $19
|0BFD11| db $84 ; Copy past
|0BFD12| dw $8900
|0BFD14| db $22 ; Repeat byte
|0BFD15| db $08
|0BFD16| db $00 ; Raw block
|0BFD17| db $0B
|0BFD18| db $25 ; Repeat byte
|0BFD19| db $19
|0BFD1A| db $01 ; Raw block
|0BFD1B| db $00, $08
|0BFD1D| db $83 ; Copy past
|0BFD1E| dw $8A00
|0BFD20| db $22 ; Repeat byte
|0BFD21| db $08
|0BFD22| db $01 ; Raw block
|0BFD23| db $0B, $01
|0BFD25| db $25 ; Repeat byte
|0BFD26| db $19
|0BFD27| db $45 ; Repeat word
|0BFD28| dw $0B08
|0BFD2A| db $03 ; Raw block
|0BFD2B| db $0B, $08, $0B, $16
|0BFD2F| db $25 ; Repeat byte
|0BFD30| db $19
|0BFD31| db $06 ; Raw block
|0BFD32| db $08, $0B, $08, $08, $0B, $08, $08
|0BFD39| db $23 ; Repeat byte
|0BFD3A| db $0B
|0BFD3B| db $02 ; Raw block
|0BFD3C| db $07, $07, $19
|0BFD3F| db $27 ; Repeat byte
|0BFD40| db $0B
|0BFD41| db $00 ; Raw block
|0BFD42| db $08
|0BFD43| db $2D ; Repeat byte
|0BFD44| db $0B
|0BFD45| db $07 ; Raw block
|0BFD46| db $08, $0B, $04, $08, $08, $04, $08, $08
|0BFD4E| db $83 ; Copy past
|0BFD4F| dw $F000
|0BFD51| db $01 ; Raw block
|0BFD52| db $04, $02
|0BFD54| db $83 ; Copy past
|0BFD55| dw $EF00
|0BFD57| db $FF ; End of Map 61

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen61_Low:
|0BFD58| db $07 ; Raw block
|0BFD59| db $FE, $FE, $59, $5A, $FE, $FE, $59, $5B
|0BFD61| db $23 ; Repeat byte
|0BFD62| db $E3
|0BFD63| db $05 ; Raw block
|0BFD64| db $5C, $93, $5B, $C5, $5D, $5E
|0BFD6A| db $23 ; Repeat byte
|0BFD6B| db $78
|0BFD6C| db $02 ; Raw block
|0BFD6D| db $5F, $60, $2D
|0BFD70| db $22 ; Repeat byte
|0BFD71| db $2E
|0BFD72| db $05 ; Raw block
|0BFD73| db $63, $93, $5B, $C5, $13, $87
|0BFD79| db $63 ; Increment fill
|0BFD7A| db $2F
|0BFD7B| db $01 ; Raw block
|0BFD7C| db $92, $22
|0BFD7E| db $62 ; Increment fill
|0BFD7F| db $33
|0BFD80| db $01 ; Raw block
|0BFD81| db $D5, $6D
|0BFD83| db $83 ; Copy past
|0BFD84| dw $1D00
|0BFD86| db $0A ; Raw block
|0BFD87| db $17, $36, $37, $19, $38, $92, $22, $39
|0BFD8F| db $87, $88, $B8
|0BFD92| db $85 ; Copy past
|0BFD93| dw $2C00
|0BFD95| db $63 ; Increment fill
|0BFD96| db $3A
|0BFD97| db $1F ; Raw block
|0BFD98| db $92, $22, $3E, $28, $3F, $40, $6D, $7F
|0BFDA0| db $80, $C5, $13, $81, $82, $41, $42, $83
|0BFDA8| db $84, $22, $FB, $1F, $FA, $E6, $85, $87
|0BFDB0| db $32, $C5, $13, $86, $18, $43, $44, $15
|0BFDB8| db $62 ; Increment fill
|0BFDB9| db $89
|0BFDBA| db $62 ; Increment fill
|0BFDBB| db $45
|0BFDBC| db $00 ; Raw block
|0BFDBD| db $8D
|0BFDBE| db $83 ; Copy past
|0BFDBF| dw $5D00
|0BFDC1| db $04 ; Raw block
|0BFDC2| db $8E, $21, $8F, $90, $20
|0BFDC7| db $22 ; Repeat byte
|0BFDC8| db $21
|0BFDC9| db $07 ; Raw block
|0BFDCA| db $91, $92, $90, $93, $87, $3A, $94, $13
|0BFDD2| db $64 ; Increment fill
|0BFDD3| db $48
|0BFDD4| db $0E ; Raw block
|0BFDD5| db $9A, $E9, $E9, $9B, $4D, $5A, $4E, $9E
|0BFDDD| db $30, $9F, $13, $4F, $50, $18, $37
|0BFDE4| db $63 ; Increment fill
|0BFDE5| db $51
|0BFDE6| db $0B ; Raw block
|0BFDE7| db $A5, $55, $61, $56, $A8, $0A, $0A, $13
|0BFDEF| db $A9, $57, $58, $19
|0BFDF3| db $62 ; Increment fill
|0BFDF4| db $59
|0BFDF5| db $0A ; Raw block
|0BFDF6| db $98, $92, $5C, $6B, $5D, $AD, $61, $61
|0BFDFE| db $13, $A9, $37
|0BFE01| db $62 ; Increment fill
|0BFE02| db $1D
|0BFE03| db $62 ; Increment fill
|0BFE04| db $5E
|0BFE05| db $0B ; Raw block
|0BFE06| db $92, $A8, $0A, $AF, $87, $B0, $B1, $13
|0BFE0E| db $A9, $FF, $21, $22
|0BFE12| db $63 ; Increment fill
|0BFE13| db $61
|0BFE14| db $0F ; Raw block
|0BFE15| db $85, $AD, $61, $61, $B2, $BD, $4B, $B3
|0BFE1D| db $B4, $48, $49, $FA, $FA, $65, $48, $48
|0BFE25| db $64 ; Increment fill
|0BFE26| db $B6
|0BFE27| db $03 ; Raw block
|0BFE28| db $47, $D3, $54, $55
|0BFE2C| db $62 ; Increment fill
|0BFE2D| db $53
|0BFE2E| db $00 ; Raw block
|0BFE2F| db $53
|0BFE30| db $83 ; Copy past
|0BFE31| dw $E000
|0BFE33| db $63 ; Increment fill
|0BFE34| db $BB
|0BFE35| db $07 ; Raw block
|0BFE36| db $99, $50, $39, $9F, $4B, $39, $9F, $4B
|0BFE3E| db $83 ; Copy past
|0BFE3F| dw $F000
|0BFE41| db $05 ; Raw block
|0BFE42| db $3A, $4F, $BF, $39, $9F, $4B
|0BFE48| db $FF ; End of Map 61

;===================================================================================================
; FREE ROM: 0x27
;===================================================================================================
NULL_0BFE49:
|0BFE49| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0BFE51| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0BFE59| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0BFE61| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0BFE69| db $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

Overworld_SetFixedColAndScroll:
|0BFE70| STZ.b $1D

|0BFE72| REP #$30

|0BFE74| LDX.w #$19C6 ; RGB: #307030

|0BFE77| LDA.b $8A
|0BFE79| CMP.w #$0080 ; OW 80
|0BFE7C| BNE .not_ms_grove

|0BFE7E| LDA.b $A0
|0BFE80| CMP.w #$0181 ; OW 81
|0BFE83| BNE .use_this_color

|0BFE85| INC.b $1D
|0BFE87| BRA .check_world

;---------------------------------------------------------------------------------------------------

.not_ms_grove
|0BFE89| CMP.w #$0081
|0BFE8C| BEQ .use_this_color

|0BFE8E| LDX.w #$0000 ; RGB: #000000
|0BFE91| CMP.w #$005B
|0BFE94| BEQ .use_this_color

|0BFE96| AND.w #$00BF
|0BFE99| CMP.w #$0003
|0BFE9C| BEQ .use_this_color

|0BFE9E| CMP.w #$0005
|0BFEA1| BEQ .use_this_color

|0BFEA3| CMP.w #$0007
|0BFEA6| BEQ .use_this_color

;---------------------------------------------------------------------------------------------------

.check_world
|0BFEA8| LDX.w #$2669 ; RGB: #489848

|0BFEAB| LDA.b $8A
|0BFEAD| AND.w #$0040
|0BFEB0| BEQ .use_this_color

|0BFEB2| LDX.w #$2A32 ; RGB: #908850

;---------------------------------------------------------------------------------------------------

.use_this_color
|0BFEB5| TXA
|0BFEB6| STA.l $7EC500
|0BFEBA| STA.l $7EC300
|0BFEBE| STA.l $7EC540
|0BFEC2| STA.l $7EC340

|0BFEC6| LDA.w #$4020 ; Fixed color RGB: #000000
|0BFEC9| STA.b $9C

|0BFECB| LDA.w #$8040
|0BFECE| STA.b $9D

|0BFED0| LDA.b $8A ; OW 00
|0BFED2| BEQ .is_woods_or_pyramid

|0BFED4| CMP.w #$0070 ; OW 70
|0BFED7| BNE .not_mire

|0BFED9| JMP.w .exit_and_trigger

.not_mire
|0BFEDC| CMP.w #$0040 ; OW 40
|0BFEDF| BEQ .is_woods_or_pyramid

|0BFEE1| CMP.w #$005B ; OW 5B
|0BFEE4| BEQ .is_woods_or_pyramid

|0BFEE6| LDX.w #$4C26 ; Fixed color RGB: #306060
|0BFEE9| LDY.w #$8C4C

|0BFEEC| CMP.w #$0003 ; OW 03
|0BFEEF| BEQ .use_this_fixed_col

|0BFEF1| CMP.w #$0005 ; OW 05
|0BFEF4| BEQ .use_this_fixed_col

|0BFEF6| CMP.w #$0007 ; OW 07
|0BFEF9| BEQ .use_this_fixed_col

|0BFEFB| LDX.w #$4A26 ; Fixed color RGB: #305038
|0BFEFE| LDY.w #$874A

|0BFF01| CMP.w #$0043 ; OW 43
|0BFF04| BEQ .use_this_fixed_col

|0BFF06| CMP.w #$0045 ; OW 45
|0BFF09| BEQ .use_this_fixed_col

|0BFF0B| SEP #$30

|0BFF0D| INC.b $15

|0BFF0F| RTL

;---------------------------------------------------------------------------------------------------

.use_this_fixed_col
|0BFF10| STX.b $9C
|0BFF12| STY.b $9D

.is_woods_or_pyramid
|0BFF14| LDA.b $11
|0BFF16| AND.w #$00FF
|0BFF19| CMP.w #$0004
|0BFF1C| BEQ .transitioning

|0BFF1E| LDA.b $E8
|0BFF20| STA.b $E6

|0BFF22| LDA.b $E2
|0BFF24| STA.b $E0

|0BFF26| LDA.b $8A
|0BFF28| AND.w #$003F
|0BFF2B| CMP.w #$001B ; OW 1B, OW 5B
|0BFF2E| BNE .exit_and_trigger

|0BFF30| LDA.b $E2
|0BFF32| SEC
|0BFF33| SBC.w #$0778
|0BFF36| LSR A
|0BFF37| TAY

|0BFF38| AND.w #$4000
|0BFF3B| BEQ .positive_a

|0BFF3D| TYA
|0BFF3E| ORA.w #$8000
|0BFF41| TAY

.positive_a
|0BFF42| STY.b $00

|0BFF44| LDA.b $E2
|0BFF46| SEC
|0BFF47| SBC.b $00
|0BFF49| STA.b $E0

|0BFF4B| LDA.b $E6
|0BFF4D| CMP.w #$06C0
|0BFF50| BCC .offset_type_c

|0BFF52| SEC
|0BFF53| SBC.w #$0600
|0BFF56| AND.w #$03FF
|0BFF59| CMP.w #$0180
|0BFF5C| BCS .offset_type_b

|0BFF5E| LSR A
|0BFF5F| ORA.w #$0600
|0BFF62| BRA .use_this_bg1vofs

.offset_type_b
|0BFF64| LDA.w #$06C0

|0BFF67| BRA .use_this_bg1vofs

.offset_type_c
|0BFF69| LDA.b $E6
|0BFF6B| AND.w #$00FF
|0BFF6E| LSR A
|0BFF6F| ORA.w #$0600

;---------------------------------------------------------------------------------------------------

.use_this_bg1vofs
|0BFF72| STA.b $E6

|0BFF74| BRA .exit_and_trigger

;---------------------------------------------------------------------------------------------------

.transitioning
|0BFF76| LDA.b $8A
|0BFF78| AND.w #$003F
|0BFF7B| CMP.w #$001B ; OW 1B, OW 5B
|0BFF7E| BNE .exit_and_trigger

|0BFF80| LDA.b $E8
|0BFF82| STA.b $E6

|0BFF84| LDA.b $E2
|0BFF86| STA.b $E0

|0BFF88| LDA.w $0410
|0BFF8B| AND.w #$00FF
|0BFF8E| CMP.w #$0008
|0BFF91| BEQ .do_vertical

|0BFF93| LDA.w #$0838
|0BFF96| STA.b $E0

.do_vertical
|0BFF98| LDA.w #$06C0
|0BFF9B| STA.b $E6

;---------------------------------------------------------------------------------------------------

.exit_and_trigger
|0BFF9D| SEP #$20

|0BFF9F| LDA.b #$01
|0BFFA1| STA.b $1D

|0BFFA3| SEP #$30

|0BFFA5| INC.b $15

|0BFFA7| RTL

;===================================================================================================

DragToLastEntrance:
|0BFFA8| JSL SaveDungeonKeys
|0BFFAC| JSL FullyUpdateRoomFlags
|0BFFB0| JSL ResetAllSprites

|0BFFB4| STZ.w $04AA

|0BFFB7| LDA.b #$11
|0BFFB9| STA.b $10
|0BFFBB| STZ.b $11

|0BFFBD| STZ.b $14

;===================================================================================================

ResetSomeThingsAfterDeath:
|0BFFBF| STZ.w $0345

; [WTF] this is changed to your room ID from $09F538
|0BFFC2| STA.w $005E

|0BFFC5| STZ.w $03F3
|0BFFC8| STZ.w $0322

|0BFFCB| STZ.w $02E4
|0BFFCE| STZ.w $0ABD
|0BFFD1| STZ.w $036B
|0BFFD4| STZ.w $0373

|0BFFD7| STZ.b $27
|0BFFD9| STZ.b $28
|0BFFDB| STZ.b $29
|0BFFDD| STZ.b $24

|0BFFDF| STZ.w $0351
|0BFFE2| STZ.w $0316
|0BFFE5| STZ.w $031F

|0BFFE8| LDA.b #$00 ; LINKSTATE 00
|0BFFEA| STA.b $5D

|0BFFEC| STZ.b $4B

;===================================================================================================

ResetAncillaAndLink:
|0BFFEE| JSL TerminateSelectInteractives

|0BFFF2| JML ResetLinkProperties_A

;===================================================================================================
; FREE ROM: 0x0A
;===================================================================================================
NULL_0BFFF6:
|0BFFF6| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0BFFFE| db $FF, $FF

;===================================================================================================

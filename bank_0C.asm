org $0C8000

;===================================================================================================

OverworldMap32_Screen62_High:
|0C8000| db $01 ; Raw block
|0C8001| db $0B, $04
|0C8003| db $2A ; Repeat byte
|0C8004| db $00
|0C8005| db $04 ; Raw block
|0C8006| db $0B, $05, $06, $0B, $06
|0C800B| db $22 ; Repeat byte
|0C800C| db $00
|0C800D| db $07 ; Raw block
|0C800E| db $0B, $01, $06, $06, $01, $00, $00, $01
|0C8016| db $83 ; Copy past
|0C8017| dw $0D00
|0C8019| db $03 ; Raw block
|0C801A| db $01, $01, $00, $01
|0C801E| db $23 ; Repeat byte
|0C801F| db $19
|0C8020| db $23 ; Repeat byte
|0C8021| db $01
|0C8022| db $03 ; Raw block
|0C8023| db $05, $05, $07, $0B
|0C8027| db $43 ; Repeat word
|0C8028| dw $0100
|0C802A| db $0F ; Raw block
|0C802B| db $15, $19, $19, $0D, $00, $00, $06, $01
|0C8033| db $05, $05, $06, $04, $03, $0B, $07, $0B
|0C803B| db $22 ; Repeat byte
|0C803C| db $19
|0C803D| db $02 ; Raw block
|0C803E| db $0B, $16, $03
|0C8041| db $22 ; Repeat byte
|0C8042| db $02
|0C8043| db $22 ; Repeat byte
|0C8044| db $05
|0C8045| db $25 ; Repeat byte
|0C8046| db $0B
|0C8047| db $1E ; Raw block
|0C8048| db $19, $05, $01, $01, $02, $0B, $01, $05
|0C8050| db $07, $0B, $0B, $00, $00, $0B, $03, $10
|0C8058| db $10, $19, $01, $01, $02, $05, $07, $07
|0C8060| db $0B, $0B, $09, $01, $01, $0B, $0B
|0C8067| db $83 ; Copy past
|0C8068| dw $2700
|0C806A| db $0D ; Raw block
|0C806B| db $02, $17, $0B, $08, $07, $07, $05, $01
|0C8073| db $0F, $0B, $19, $19, $0B, $0B
|0C8079| db $25 ; Repeat byte
|0C807A| db $02
|0C807B| db $02 ; Raw block
|0C807C| db $08, $07, $08
|0C807F| db $22 ; Repeat byte
|0C8080| db $0B
|0C8081| db $02 ; Raw block
|0C8082| db $19, $19, $0B
|0C8085| db $25 ; Repeat byte
|0C8086| db $02
|0C8087| db $09 ; Raw block
|0C8088| db $0B, $03, $06, $08, $0B, $02, $08, $19
|0C8090| db $19, $05
|0C8092| db $25 ; Repeat byte
|0C8093| db $02
|0C8094| db $01 ; Raw block
|0C8095| db $0B, $07
|0C8097| db $22 ; Repeat byte
|0C8098| db $0B
|0C8099| db $04 ; Raw block
|0C809A| db $08, $0B, $16, $19, $07
|0C809F| db $22 ; Repeat byte
|0C80A0| db $02
|0C80A1| db $0C ; Raw block
|0C80A2| db $08, $08, $04, $0B, $0B, $0C, $04, $08
|0C80AA| db $08, $0B, $16, $00, $09
|0C80AF| db $22 ; Repeat byte
|0C80B0| db $02
|0C80B1| db $0F ; Raw block
|0C80B2| db $08, $08, $04, $08, $08, $04, $04, $08
|0C80BA| db $08, $01, $00, $01, $01, $06, $00, $01
|0C80C2| db $88 ; Copy past
|0C80C3| dw $CA00
|0C80C5| db $28 ; Repeat byte
|0C80C6| db $0C
|0C80C7| db $86 ; Copy past
|0C80C8| dw $CC00
|0C80CA| db $83 ; Copy past
|0C80CB| dw $CC00
|0C80CD| db $88 ; Copy past
|0C80CE| dw $F100
|0C80D0| db $FF ; End of Map 62

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen62_Low:
|0C80D1| db $02 ; Raw block
|0C80D2| db $C0, $1E, $0B
|0C80D5| db $62 ; Increment fill
|0C80D6| db $09
|0C80D7| db $01 ; Raw block
|0C80D8| db $09, $0A
|0C80DA| db $84 ; Copy past
|0C80DB| dw $0200
|0C80DD| db $04 ; Raw block
|0C80DE| db $C1, $8A, $09, $C0, $2C
|0C80E3| db $62 ; Increment fill
|0C80E4| db $06
|0C80E5| db $0F ; Raw block
|0C80E6| db $C2, $0E, $5E, $AC, $31, $08, $06, $10
|0C80EE| db $C3, $8A, $09, $C0, $19, $1A, $00, $04
|0C80F6| db $63 ; Increment fill
|0C80F7| db $66
|0C80F8| db $1B ; Raw block
|0C80F9| db $39, $3A, $1B, $1C, $6F, $8A, $5C, $C6
|0C8101| db $99, $27, $09, $07, $C0, $6A, $6B, $B8
|0C8109| db $91, $8E, $33, $29, $16, $8A, $09, $8E
|0C8111| db $B2, $CA, $ED, $CB
|0C8115| db $62 ; Increment fill
|0C8116| db $6C
|0C8117| db $08 ; Raw block
|0C8118| db $42, $E6, $FF, $A1, $07, $AA, $92, $C5
|0C8120| db $A2
|0C8121| db $65 ; Increment fill
|0C8122| db $D0
|0C8123| db $E0, $30 ; EXT Raw block
|0C8125| db $6F, $46, $AB, $AC, $AA, $D8, $ED, $99
|0C812D| db $1F, $D9, $DA, $EE, $09, $DC, $B1, $F7
|0C8135| db $F8, $70, $B3, $B4, $7A, $6F, $1E, $1F
|0C813D| db $DF, $E0, $1B, $30, $0E, $E1, $E2, $71
|0C8145| db $72, $22, $22, $04, $00, $E6, $6B, $43
|0C814D| db $20, $6E, $CC, $09, $E8, $73, $74, $EA
|0C8155| db $EB
|0C8156| db $24 ; Repeat byte
|0C8157| db $E9
|0C8158| db $03 ; Raw block
|0C8159| db $3E, $6F, $54, $0A
|0C815D| db $62 ; Increment fill
|0C815E| db $ED
|0C815F| db $03 ; Raw block
|0C8160| db $75, $76, $F1, $A7
|0C8164| db $24 ; Repeat byte
|0C8165| db $E9
|0C8166| db $09 ; Raw block
|0C8167| db $F3, $32, $09, $61, $F4, $A7, $97, $77
|0C816F| db $78, $04
|0C8171| db $25 ; Repeat byte
|0C8172| db $E9
|0C8173| db $09 ; Raw block
|0C8174| db $F9, $3A, $94, $FA, $FB, $B9, $FC, $E6
|0C817C| db $17, $6D
|0C817E| db $22 ; Repeat byte
|0C817F| db $E9
|0C8180| db $0C ; Raw block
|0C8181| db $B8, $B9, $2E, $FE, $FF, $00, $39, $9F
|0C8189| db $4B, $43, $E6, $1F, $B2
|0C818E| db $22 ; Repeat byte
|0C818F| db $E9
|0C8190| db $18 ; Raw block
|0C8191| db $BD, $4B, $39, $9F, $4B, $39, $42, $D2
|0C8199| db $D3, $62, $1F, $61, $62, $70, $99, $1E
|0C81A1| db $4D, $4E, $42, $D2, $D3, $42, $4A, $99
|0C81A9| db $44
|0C81AA| db $62 ; Increment fill
|0C81AB| db $02
|0C81AC| db $00 ; Raw block
|0C81AD| db $02
|0C81AE| db $62 ; Increment fill
|0C81AF| db $05
|0C81B0| db $05 ; Raw block
|0C81B1| db $05, $04, $4A, $99, $44, $4A
|0C81B7| db $83 ; Copy past
|0C81B8| dw $CC00
|0C81BA| db $00 ; Raw block
|0C81BB| db $9F
|0C81BC| db $84 ; Copy past
|0C81BD| dw $CB00
|0C81BF| db $85 ; Copy past
|0C81C0| dw $F100
|0C81C2| db $FF ; End of Map 62

;===================================================================================================

OverworldMap32_Screen63_High:
|0C81C3| db $04 ; Raw block
|0C81C4| db $05, $07, $17, $19, $17
|0C81C9| db $43 ; Repeat word
|0C81CA| dw $1917
|0C81CC| db $01 ; Raw block
|0C81CD| db $19, $17
|0C81CF| db $24 ; Repeat byte
|0C81D0| db $19
|0C81D1| db $01 ; Raw block
|0C81D2| db $05, $07
|0C81D4| db $22 ; Repeat byte
|0C81D5| db $19
|0C81D6| db $22 ; Repeat byte
|0C81D7| db $17
|0C81D8| db $45 ; Repeat word
|0C81D9| dw $1719
|0C81DB| db $06 ; Raw block
|0C81DC| db $17, $19, $05, $07, $08, $15, $19
|0C81E3| db $23 ; Repeat byte
|0C81E4| db $06
|0C81E5| db $43 ; Repeat word
|0C81E6| dw $0619
|0C81E8| db $22 ; Repeat byte
|0C81E9| db $19
|0C81EA| db $05 ; Raw block
|0C81EB| db $05, $07, $08, $06, $19, $19
|0C81F1| db $23 ; Repeat byte
|0C81F2| db $06
|0C81F3| db $00 ; Raw block
|0C81F4| db $09
|0C81F5| db $22 ; Repeat byte
|0C81F6| db $06
|0C81F7| db $85 ; Copy past
|0C81F8| dw $2E00
|0C81FA| db $01 ; Raw block
|0C81FB| db $06, $09
|0C81FD| db $24 ; Repeat byte
|0C81FE| db $06
|0C81FF| db $02 ; Raw block
|0C8200| db $16, $16, $19
|0C8203| db $83 ; Copy past
|0C8204| dw $1E00
|0C8206| db $04 ; Raw block
|0C8207| db $19, $19, $06, $0C, $07
|0C820C| db $23 ; Repeat byte
|0C820D| db $06
|0C820E| db $01 ; Raw block
|0C820F| db $16, $16
|0C8211| db $22 ; Repeat byte
|0C8212| db $19
|0C8213| db $05 ; Raw block
|0C8214| db $05, $07, $05, $19, $01, $00
|0C821A| db $83 ; Copy past
|0C821B| dw $3400
|0C821D| db $01 ; Raw block
|0C821E| db $09, $07
|0C8220| db $83 ; Copy past
|0C8221| dw $2B00
|0C8223| db $03 ; Raw block
|0C8224| db $05, $05, $19, $19
|0C8228| db $2B ; Repeat byte
|0C8229| db $0C
|0C822A| db $22 ; Repeat byte
|0C822B| db $05
|0C822C| db $00 ; Raw block
|0C822D| db $07
|0C822E| db $2B ; Repeat byte
|0C822F| db $02
|0C8230| db $22 ; Repeat byte
|0C8231| db $05
|0C8232| db $3C ; Repeat byte
|0C8233| db $07
|0C8234| db $00 ; Raw block
|0C8235| db $19
|0C8236| db $2E ; Repeat byte
|0C8237| db $07
|0C8238| db $00 ; Raw block
|0C8239| db $04
|0C823A| db $2D ; Repeat byte
|0C823B| db $0C
|0C823C| db $06 ; Raw block
|0C823D| db $19, $04, $04, $01, $19, $06, $06
|0C8244| db $28 ; Repeat byte
|0C8245| db $0C
|0C8246| db $0F ; Raw block
|0C8247| db $19, $08, $0C, $0C, $04, $00, $0C, $08
|0C824F| db $08, $04, $08, $08, $04, $08, $08, $04
|0C8257| db $22 ; Repeat byte
|0C8258| db $08
|0C8259| db $04 ; Raw block
|0C825A| db $04, $04, $07, $01, $0B
|0C825F| db $88 ; Copy past
|0C8260| dw $E700
|0C8262| db $FF ; End of Map 63

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen63_Low:
|0C8263| db $0C ; Raw block
|0C8264| db $E1, $6E, $5C, $79, $59, $75, $7A, $6F
|0C826C| db $7B, $7C, $D9, $7D, $7C
|0C8271| db $62 ; Increment fill
|0C8272| db $7E
|0C8273| db $07 ; Raw block
|0C8274| db $E1, $6E, $81, $82, $7C, $76, $75, $D9
|0C827C| db $45 ; Repeat word
|0C827D| dw $8F7C
|0C827F| db $06 ; Raw block
|0C8280| db $5B, $80, $E1, $6E, $F5, $DA, $83
|0C8287| db $23 ; Repeat byte
|0C8288| db $7C
|0C8289| db $44 ; Repeat word
|0C828A| dw $7C84
|0C828C| db $07 ; Raw block
|0C828D| db $85, $86, $E1, $6E, $F5, $70, $87, $83
|0C8295| db $23 ; Repeat byte
|0C8296| db $7C
|0C8297| db $04 ; Raw block
|0C8298| db $25, $91, $90, $7C, $86
|0C829D| db $83 ; Copy past
|0C829E| dw $2F00
|0C82A0| db $02 ; Raw block
|0C82A1| db $66, $66, $1C
|0C82A4| db $23 ; Repeat byte
|0C82A5| db $7C
|0C82A6| db $0C ; Raw block
|0C82A7| db $CD, $E7, $E8, $88, $8F, $86, $E1, $6E
|0C82AF| db $89, $8A, $70, $23, $65
|0C82B4| db $23 ; Repeat byte
|0C82B5| db $7C
|0C82B6| db $0A ; Raw block
|0C82B7| db $E9, $EA, $8B, $8C, $86, $E1, $37, $1B
|0C82BF| db $8D, $1E, $AA
|0C82C2| db $83 ; Copy past
|0C82C3| dw $3400
|0C82C5| db $02 ; Raw block
|0C82C6| db $25, $4E, $8E
|0C82C9| db $83 ; Copy past
|0C82CA| dw $3D00
|0C82CC| db $02 ; Raw block
|0C82CD| db $AB, $8F, $90
|0C82D0| db $2B ; Repeat byte
|0C82D1| db $30
|0C82D2| db $03 ; Raw block
|0C82D3| db $E1, $E1, $AB, $3F
|0C82D7| db $2B ; Repeat byte
|0C82D8| db $FB
|0C82D9| db $22 ; Repeat byte
|0C82DA| db $E1
|0C82DB| db $00 ; Raw block
|0C82DC| db $44
|0C82DD| db $2B ; Repeat byte
|0C82DE| db $79
|0C82DF| db $2F ; Repeat byte
|0C82E0| db $22
|0C82E1| db $00 ; Raw block
|0C82E2| db $91
|0C82E3| db $2E ; Repeat byte
|0C82E4| db $27
|0C82E5| db $00 ; Raw block
|0C82E6| db $3A
|0C82E7| db $62 ; Increment fill
|0C82E8| db $37
|0C82E9| db $00 ; Raw block
|0C82EA| db $39
|0C82EB| db $29 ; Repeat byte
|0C82EC| db $3A
|0C82ED| db $06 ; Raw block
|0C82EE| db $92, $43, $44, $62, $93, $B3, $90
|0C82F5| db $63 ; Increment fill
|0C82F6| db $3C
|0C82F7| db $62 ; Increment fill
|0C82F8| db $3D
|0C82F9| db $E0, $22 ; EXT Raw block
|0C82FB| db $3D, $40, $94, $99, $42, $43, $2F, $1D
|0C8303| db $28, $BD, $4B, $39, $9F, $4B, $39, $9F
|0C830B| db $4B, $39, $9F, $9F, $4B, $39, $3A, $9E
|0C8313| db $42, $47, $D3, $42, $D2, $D3, $42, $D2
|0C831B| db $D3, $42, $D2
|0C831E| db $FF ; End of Map 63

;===================================================================================================

OverworldMap32_Screen64_High:
|0C831F| db $2B ; Repeat byte
|0C8320| db $19
|0C8321| db $05 ; Raw block
|0C8322| db $17, $03, $05, $05, $19, $19
|0C8328| db $24 ; Repeat byte
|0C8329| db $17
|0C832A| db $01 ; Raw block
|0C832B| db $19, $19
|0C832D| db $23 ; Repeat byte
|0C832E| db $17
|0C832F| db $02 ; Raw block
|0C8330| db $03, $05, $10
|0C8333| db $22 ; Repeat byte
|0C8334| db $19
|0C8335| db $05 ; Raw block
|0C8336| db $06, $19, $00, $19, $19, $07
|0C833C| db $22 ; Repeat byte
|0C833D| db $06
|0C833E| db $04 ; Raw block
|0C833F| db $19, $08, $09, $07, $19
|0C8344| db $43 ; Repeat word
|0C8345| dw $0619
|0C8347| db $01 ; Raw block
|0C8348| db $06, $19
|0C834A| db $22 ; Repeat byte
|0C834B| db $06
|0C834C| db $02 ; Raw block
|0C834D| db $19, $00, $19
|0C8350| db $22 ; Repeat byte
|0C8351| db $0C
|0C8352| db $04 ; Raw block
|0C8353| db $19, $17, $06, $16, $16
|0C8358| db $22 ; Repeat byte
|0C8359| db $06
|0C835A| db $10 ; Raw block
|0C835B| db $19, $00, $00, $18, $06, $19, $0C, $01
|0C8363| db $19, $19, $06, $16, $16, $19, $06, $19
|0C836B| db $03
|0C836C| db $23 ; Repeat byte
|0C836D| db $00
|0C836E| db $84 ; Copy past
|0C836F| dw $4D00
|0C8371| db $03 ; Raw block
|0C8372| db $00, $03, $04, $00
|0C8376| db $23 ; Repeat byte
|0C8377| db $10
|0C8378| db $05 ; Raw block
|0C8379| db $00, $00, $19, $19, $01, $01
|0C837F| db $2B ; Repeat byte
|0C8380| db $0C
|0C8381| db $03 ; Raw block
|0C8382| db $19, $0C, $06, $06
|0C8386| db $2B ; Repeat byte
|0C8387| db $02
|0C8388| db $05 ; Raw block
|0C8389| db $07, $05, $05, $10, $0C, $07
|0C838F| db $43 ; Repeat word
|0C8390| dw $0C07
|0C8392| db $22 ; Repeat byte
|0C8393| db $07
|0C8394| db $06 ; Raw block
|0C8395| db $0C, $0C, $07, $07, $10, $05, $05
|0C839C| db $2C ; Repeat byte
|0C839D| db $07
|0C839E| db $02 ; Raw block
|0C839F| db $05, $05, $10
|0C83A2| db $29 ; Repeat byte
|0C83A3| db $07
|0C83A4| db $07 ; Raw block
|0C83A5| db $0C, $0C, $19, $07, $05, $05, $0C, $19
|0C83AD| db $27 ; Repeat byte
|0C83AE| db $0C
|0C83AF| db $05 ; Raw block
|0C83B0| db $04, $01, $19, $08, $07, $10
|0C83B6| db $24 ; Repeat byte
|0C83B7| db $0C
|0C83B8| db $43 ; Repeat word
|0C83B9| dw $0C02
|0C83BB| db $0E ; Raw block
|0C83BC| db $0C, $06, $06, $19, $19, $08, $07, $08
|0C83C4| db $04, $08, $08, $0B, $00, $07, $01
|0C83CB| db $22 ; Repeat byte
|0C83CC| db $0C
|0C83CD| db $04 ; Raw block
|0C83CE| db $06, $06, $01, $03, $05
|0C83D3| db $83 ; Copy past
|0C83D4| dw $E000
|0C83D6| db $0B ; Raw block
|0C83D7| db $01, $00, $00, $06, $00, $02, $0C, $05
|0C83DF| db $00, $00, $03, $05
|0C83E3| db $FF ; End of Map 64

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen64_Low:
|0C83E4| db $00 ; Raw block
|0C83E5| db $80
|0C83E6| db $64 ; Increment fill
|0C83E7| db $95
|0C83E8| db $62 ; Increment fill
|0C83E9| db $97
|0C83EA| db $62 ; Increment fill
|0C83EB| db $99
|0C83EC| db $05 ; Raw block
|0C83ED| db $C0, $32, $C5, $E1, $80, $9C
|0C83F3| db $44 ; Repeat word
|0C83F4| dw $728F
|0C83F6| db $01 ; Raw block
|0C83F7| db $9D, $98
|0C83F9| db $22 ; Repeat byte
|0C83FA| db $72
|0C83FB| db $0C ; Raw block
|0C83FC| db $C4, $32, $C5, $FF, $86, $9E, $84, $7C
|0C8404| db $9F, $1D, $A0, $A1, $39
|0C8409| db $22 ; Repeat byte
|0C840A| db $7C
|0C840B| db $0A ; Raw block
|0C840C| db $A2, $69, $46, $22, $86, $86, $7C, $A3
|0C8414| db $91, $74, $A4
|0C8417| db $22 ; Repeat byte
|0C8418| db $7C
|0C8419| db $02 ; Raw block
|0C841A| db $A5, $1C, $A6
|0C841D| db $62 ; Increment fill
|0C841E| db $56
|0C841F| db $04 ; Raw block
|0C8420| db $86, $8F, $7C, $E7, $E8
|0C8425| db $22 ; Repeat byte
|0C8426| db $7C
|0C8427| db $11 ; Raw block
|0C8428| db $A5, $A5, $1D, $0B, $66, $A7, $5E, $8B
|0C8430| db $86, $8C, $83, $E9, $EA, $A8, $7C, $A5
|0C8438| db $E2, $A5
|0C843A| db $22 ; Repeat byte
|0C843B| db $1D
|0C843C| db $08 ; Raw block
|0C843D| db $A9, $66, $AB, $86, $86, $1D, $DB, $25
|0C8445| db $1D
|0C8446| db $43 ; Repeat word
|0C8447| dw $8483
|0C8449| db $05 ; Raw block
|0C844A| db $1D, $1D, $AA, $AB, $B3, $B3
|0C8450| db $2B ; Repeat byte
|0C8451| db $72
|0C8452| db $03 ; Raw block
|0C8453| db $AC, $74, $A0, $A0
|0C8457| db $2B ; Repeat byte
|0C8458| db $FB
|0C8459| db $05 ; Raw block
|0C845A| db $1B, $9F, $E1, $FF, $76, $79
|0C8460| db $43 ; Repeat word
|0C8461| dw $7679
|0C8463| db $22 ; Repeat byte
|0C8464| db $79
|0C8465| db $06 ; Raw block
|0C8466| db $76, $76, $79, $31, $FF, $E1, $E1
|0C846D| db $2B ; Repeat byte
|0C846E| db $22
|0C846F| db $03 ; Raw block
|0C8470| db $3D, $E1, $E1, $FF
|0C8474| db $29 ; Repeat byte
|0C8475| db $27
|0C8476| db $08 ; Raw block
|0C8477| db $78, $79, $AD, $43, $E1, $E1, $7C, $AE
|0C847F| db $7B
|0C8480| db $25 ; Repeat byte
|0C8481| db $7C
|0C8482| db $06 ; Raw block
|0C8483| db $7D, $1E, $74, $AF, $6B, $43, $FF
|0C848A| db $62 ; Increment fill
|0C848B| db $80
|0C848C| db $01 ; Raw block
|0C848D| db $80, $83
|0C848F| db $43 ; Repeat word
|0C8490| dw $845B
|0C8492| db $0E ; Raw block
|0C8493| db $85, $2F, $30, $B0, $B1, $6F, $54, $4B
|0C849B| db $39, $9F, $4B, $43, $1D, $C5, $1E
|0C84A2| db $62 ; Increment fill
|0C84A3| db $89
|0C84A4| db $14 ; Raw block
|0C84A5| db $8A, $66, $1E, $32, $C5, $D3, $42, $D2
|0C84AD| db $D3, $62, $1D, $1D, $66, $AA, $5E, $8C
|0C84B5| db $4F, $1D, $FB, $32, $C5
|0C84BA| db $FF ; End of Map 64

;===================================================================================================

OverworldMap32_Screen25_High:
|0C84BB| db $03 ; Raw block
|0C84BC| db $07, $01, $0F, $02
|0C84C0| db $43 ; Repeat word
|0C84C1| dw $190B
|0C84C3| db $0B ; Raw block
|0C84C4| db $06, $04, $07, $04, $03, $00, $01, $0A
|0C84CC| db $07, $01, $00, $02
|0C84D0| db $25 ; Repeat byte
|0C84D1| db $19
|0C84D2| db $08 ; Raw block
|0C84D3| db $0F, $19, $04, $00, $01, $19, $19, $07
|0C84DB| db $02
|0C84DC| db $24 ; Repeat byte
|0C84DD| db $19
|0C84DE| db $03 ; Raw block
|0C84DF| db $01, $19, $0F, $0F
|0C84E3| db $83 ; Copy past
|0C84E4| dw $2600
|0C84E6| db $01 ; Raw block
|0C84E7| db $19, $03
|0C84E9| db $24 ; Repeat byte
|0C84EA| db $19
|0C84EB| db $00 ; Raw block
|0C84EC| db $10
|0C84ED| db $22 ; Repeat byte
|0C84EE| db $01
|0C84EF| db $22 ; Repeat byte
|0C84F0| db $19
|0C84F1| db $04 ; Raw block
|0C84F2| db $01, $19, $03, $19, $02
|0C84F7| db $22 ; Repeat byte
|0C84F8| db $19
|0C84F9| db $01 ; Raw block
|0C84FA| db $10, $0C
|0C84FC| db $24 ; Repeat byte
|0C84FD| db $19
|0C84FE| db $05 ; Raw block
|0C84FF| db $04, $01, $01, $04, $00, $02
|0C8505| db $22 ; Repeat byte
|0C8506| db $19
|0C8507| db $00 ; Raw block
|0C8508| db $10
|0C8509| db $26 ; Repeat byte
|0C850A| db $19
|0C850B| db $03 ; Raw block
|0C850C| db $01, $01, $19, $01
|0C8510| db $24 ; Repeat byte
|0C8511| db $19
|0C8512| db $00 ; Raw block
|0C8513| db $01
|0C8514| db $24 ; Repeat byte
|0C8515| db $19
|0C8516| db $22 ; Repeat byte
|0C8517| db $01
|0C8518| db $01 ; Raw block
|0C8519| db $07, $07
|0C851B| db $24 ; Repeat byte
|0C851C| db $19
|0C851D| db $00 ; Raw block
|0C851E| db $01
|0C851F| db $23 ; Repeat byte
|0C8520| db $19
|0C8521| db $05 ; Raw block
|0C8522| db $06, $01, $01, $04, $07, $01
|0C8528| db $23 ; Repeat byte
|0C8529| db $19
|0C852A| db $01 ; Raw block
|0C852B| db $10, $01
|0C852D| db $22 ; Repeat byte
|0C852E| db $19
|0C852F| db $07 ; Raw block
|0C8530| db $10, $19, $19, $01, $04, $09, $01, $06
|0C8538| db $84 ; Copy past
|0C8539| dw $8A00
|0C853B| db $01 ; Raw block
|0C853C| db $19, $10
|0C853E| db $24 ; Repeat byte
|0C853F| db $19
|0C8540| db $03 ; Raw block
|0C8541| db $04, $07, $01, $02
|0C8545| db $86 ; Copy past
|0C8546| dw $9300
|0C8548| db $22 ; Repeat byte
|0C8549| db $19
|0C854A| db $05 ; Raw block
|0C854B| db $10, $19, $04, $19, $01, $09
|0C8551| db $23 ; Repeat byte
|0C8552| db $19
|0C8553| db $00 ; Raw block
|0C8554| db $01
|0C8555| db $23 ; Repeat byte
|0C8556| db $19
|0C8557| db $83 ; Copy past
|0C8558| dw $1E00
|0C855A| db $02 ; Raw block
|0C855B| db $09, $01, $09
|0C855E| db $23 ; Repeat byte
|0C855F| db $19
|0C8560| db $00 ; Raw block
|0C8561| db $01
|0C8562| db $23 ; Repeat byte
|0C8563| db $19
|0C8564| db $06 ; Raw block
|0C8565| db $01, $19, $04, $01, $07, $01, $09
|0C856C| db $22 ; Repeat byte
|0C856D| db $19
|0C856E| db $01 ; Raw block
|0C856F| db $10, $01
|0C8571| db $22 ; Repeat byte
|0C8572| db $19
|0C8573| db $00 ; Raw block
|0C8574| db $10
|0C8575| db $85 ; Copy past
|0C8576| dw $CC00
|0C8578| db $05 ; Raw block
|0C8579| db $19, $0E, $0E, $0D, $19, $0D
|0C857F| db $23 ; Repeat byte
|0C8580| db $01
|0C8581| db $83 ; Copy past
|0C8582| dw $4B00
|0C8584| db $08 ; Raw block
|0C8585| db $07, $01, $00, $00, $0B, $0B, $01, $19
|0C858D| db $0B
|0C858E| db $22 ; Repeat byte
|0C858F| db $01
|0C8590| db $03 ; Raw block
|0C8591| db $0B, $19, $04, $01
|0C8595| db $FF ; End of Map 25

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen25_Low:
|0C8596| db $13 ; Raw block
|0C8597| db $4C, $93, $19, $4F, $56, $B2, $56, $B3
|0C859F| db $8F, $8D, $38, $C2, $D5, $A5, $2E, $03
|0C85A7| db $56, $93, $AA, $4F
|0C85AB| db $63 ; Increment fill
|0C85AC| db $B4
|0C85AD| db $0A ; Raw block
|0C85AE| db $B3, $B8, $42, $B9, $C4, $1D, $2E, $BA
|0C85B6| db $BB, $5E, $6F
|0C85B9| db $64 ; Increment fill
|0C85BA| db $BC
|0C85BB| db $0F ; Raw block
|0C85BC| db $06, $C1, $A4, $A1, $C2, $C3, $2E, $C4
|0C85C4| db $C5, $49, $C6, $B4, $C7, $C8, $C1, $C1
|0C85CC| db $22 ; Repeat byte
|0C85CD| db $06
|0C85CE| db $0C ; Raw block
|0C85CF| db $C1, $C9, $CA, $08, $CB, $5E, $CC, $4F
|0C85D7| db $BD, $BE, $CD, $B6, $ED
|0C85DC| db $43 ; Repeat word
|0C85DD| dw $CFCE
|0C85DF| db $06 ; Raw block
|0C85E0| db $D0, $86, $E4, $03, $95, $1D, $4F
|0C85E7| db $62 ; Increment fill
|0C85E8| db $D1
|0C85E9| db $01 ; Raw block
|0C85EA| db $B9, $D4
|0C85EC| db $43 ; Repeat word
|0C85ED| dw $D6D5
|0C85EF| db $06 ; Raw block
|0C85F0| db $D0, $D7, $DB, $E4, $D8, $A0, $D9
|0C85F7| db $83 ; Copy past
|0C85F8| dw $1400
|0C85FA| db $00 ; Raw block
|0C85FB| db $06
|0C85FC| db $83 ; Copy past
|0C85FD| dw $1400
|0C85FF| db $06 ; Raw block
|0C8600| db $D5, $03, $E6, $DB, $1C, $6C, $DA
|0C8607| db $84 ; Copy past
|0C8608| dw $2400
|0C860A| db $83 ; Copy past
|0C860B| dw $2400
|0C860D| db $05 ; Raw block
|0C860E| db $A2, $01, $03, $80, $4C, $93
|0C8614| db $62 ; Increment fill
|0C8615| db $DA
|0C8616| db $12 ; Raw block
|0C8617| db $C1, $C1, $06, $DB, $C8, $C1, $C1, $B6
|0C861F| db $B7, $0D, $86, $DB, $93, $7E, $CD, $B6
|0C8627| db $CE, $CF, $06
|0C862A| db $83 ; Copy past
|0C862B| dw $9300
|0C862D| db $0B ; Raw block
|0C862E| db $BF, $C0, $D0, $86, $56, $93, $4F, $D3
|0C8636| db $B9, $D5, $D6, $06
|0C863A| db $83 ; Copy past
|0C863B| dw $A300
|0C863D| db $07 ; Raw block
|0C863E| db $C1, $C1, $DD, $86, $DE, $93, $B0, $DF
|0C8646| db $87 ; Copy past
|0C8647| dw $6400
|0C8649| db $06 ; Raw block
|0C864A| db $06, $E0, $E1, $C7, $DB, $93, $B0
|0C8651| db $88 ; Copy past
|0C8652| dw $7300
|0C8654| db $07 ; Raw block
|0C8655| db $06, $D0, $86, $52, $4C, $93, $C1, $E2
|0C865D| db $83 ; Copy past
|0C865E| dw $3500
|0C8660| db $83 ; Copy past
|0C8661| dw $8800
|0C8663| db $0B ; Raw block
|0C8664| db $06, $D0, $86, $77, $4C, $93, $E3, $34
|0C866C| db $35, $4C, $E4, $A2
|0C8670| db $23 ; Repeat byte
|0C8671| db $06
|0C8672| db $00 ; Raw block
|0C8673| db $B2
|0C8674| db $84 ; Copy past
|0C8675| dw $DD00
|0C8677| db $06 ; Raw block
|0C8678| db $1D, $AA, $32, $56, $06, $D4, $56
|0C867F| db $22 ; Repeat byte
|0C8680| db $06
|0C8681| db $03 ; Raw block
|0C8682| db $56, $D0, $86, $77
|0C8686| db $FF ; End of Map 25

;===================================================================================================

OverworldMap32_Screen66_High:
|0C8687| db $27 ; Repeat byte
|0C8688| db $18
|0C8689| db $02 ; Raw block
|0C868A| db $19, $19, $18
|0C868D| db $24 ; Repeat byte
|0C868E| db $19
|0C868F| db $01 ; Raw block
|0C8690| db $18, $18
|0C8692| db $2D ; Repeat byte
|0C8693| db $19
|0C8694| db $00 ; Raw block
|0C8695| db $18
|0C8696| db $29 ; Repeat byte
|0C8697| db $19
|0C8698| db $00 ; Raw block
|0C8699| db $18
|0C869A| db $44 ; Repeat word
|0C869B| dw $1A18
|0C869D| db $28 ; Repeat byte
|0C869E| db $1A
|0C869F| db $02 ; Raw block
|0C86A0| db $18, $18, $1A
|0C86A3| db $43 ; Repeat word
|0C86A4| dw $181A
|0C86A6| db $28 ; Repeat byte
|0C86A7| db $1A
|0C86A8| db $83 ; Copy past
|0C86A9| dw $3A00
|0C86AB| db $23 ; Repeat byte
|0C86AC| db $18
|0C86AD| db $02 ; Raw block
|0C86AE| db $1A, $1A, $19
|0C86B1| db $24 ; Repeat byte
|0C86B2| db $1A
|0C86B3| db $01 ; Raw block
|0C86B4| db $18, $18
|0C86B6| db $22 ; Repeat byte
|0C86B7| db $1A
|0C86B8| db $2A ; Repeat byte
|0C86B9| db $18
|0C86BA| db $01 ; Raw block
|0C86BB| db $19, $18
|0C86BD| db $2B ; Repeat byte
|0C86BE| db $1A
|0C86BF| db $23 ; Repeat byte
|0C86C0| db $18
|0C86C1| db $85 ; Copy past
|0C86C2| dw $3800
|0C86C4| db $04 ; Raw block
|0C86C5| db $0B, $1A, $1A, $0B, $07
|0C86CA| db $26 ; Repeat byte
|0C86CB| db $1A
|0C86CC| db $83 ; Copy past
|0C86CD| dw $7F00
|0C86CF| db $23 ; Repeat byte
|0C86D0| db $1A
|0C86D1| db $02 ; Raw block
|0C86D2| db $02, $1A, $18
|0C86D5| db $23 ; Repeat byte
|0C86D6| db $1A
|0C86D7| db $03 ; Raw block
|0C86D8| db $18, $18, $1A, $0C
|0C86DC| db $24 ; Repeat byte
|0C86DD| db $1A
|0C86DE| db $02 ; Raw block
|0C86DF| db $02, $1A, $18
|0C86E2| db $23 ; Repeat byte
|0C86E3| db $1A
|0C86E4| db $03 ; Raw block
|0C86E5| db $18, $18, $1A, $03
|0C86E9| db $84 ; Copy past
|0C86EA| dw $8C00
|0C86EC| db $00 ; Raw block
|0C86ED| db $02
|0C86EE| db $28 ; Repeat byte
|0C86EF| db $1A
|0C86F0| db $01 ; Raw block
|0C86F1| db $03, $0C
|0C86F3| db $24 ; Repeat byte
|0C86F4| db $1A
|0C86F5| db $22 ; Repeat byte
|0C86F6| db $0B
|0C86F7| db $01 ; Raw block
|0C86F8| db $1A, $1A
|0C86FA| db $22 ; Repeat byte
|0C86FB| db $0B
|0C86FC| db $0F ; Raw block
|0C86FD| db $1A, $00, $0C, $0C, $1A, $1A, $00, $00
|0C8705| db $06, $0C, $03, $03, $0C, $1A, $00, $07
|0C870D| db $22 ; Repeat byte
|0C870E| db $0C
|0C870F| db $02 ; Raw block
|0C8710| db $1A, $02, $06
|0C8713| db $43 ; Repeat word
|0C8714| dw $0502
|0C8716| db $05 ; Raw block
|0C8717| db $1A, $03, $03, $1A, $02, $1A
|0C871D| db $22 ; Repeat byte
|0C871E| db $03
|0C871F| db $09 ; Raw block
|0C8720| db $0C, $0C, $00, $02, $04, $01, $01, $0C
|0C8728| db $0C, $06
|0C872A| db $22 ; Repeat byte
|0C872B| db $01
|0C872C| db $00 ; Raw block
|0C872D| db $0C
|0C872E| db $FF ; End of Map 66

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen66_Low:
|0C872F| db $01 ; Raw block
|0C8730| db $39, $96
|0C8732| db $25 ; Repeat byte
|0C8733| db $17
|0C8734| db $09 ; Raw block
|0C8735| db $E5, $E6, $AF, $E7, $E8, $E7, $E9, $EA
|0C873D| db $39, $A1
|0C873F| db $63 ; Increment fill
|0C8740| db $EB
|0C8741| db $02 ; Raw block
|0C8742| db $EC, $EF, $EE
|0C8745| db $63 ; Increment fill
|0C8746| db $F0
|0C8747| db $03 ; Raw block
|0C8748| db $F2, $F4, $F5, $39
|0C874C| db $69 ; Increment fill
|0C874D| db $F6
|0C874E| db $05 ; Raw block
|0C874F| db $52, $D6, $00, $30, $01, $39
|0C8755| db $68 ; Increment fill
|0C8756| db $02
|0C8757| db $06 ; Raw block
|0C8758| db $27, $5C, $0B, $0C, $2C, $0D, $39
|0C875F| db $68 ; Increment fill
|0C8760| db $0E
|0C8761| db $0F ; Raw block
|0C8762| db $27, $2C, $17, $18, $2C, $57, $39, $2C
|0C876A| db $19, $1A, $04, $1B, $1A, $1C, $1B, $1D
|0C8772| db $83 ; Copy past
|0C8773| dw $4A00
|0C8775| db $06 ; Raw block
|0C8776| db $1E, $27, $3F, $65, $84, $D6, $ED
|0C877D| db $24 ; Repeat byte
|0C877E| db $84
|0C877F| db $03 ; Raw block
|0C8780| db $0C, $40, $17, $18
|0C8784| db $63 ; Increment fill
|0C8785| db $1F
|0C8786| db $62 ; Increment fill
|0C8787| db $22
|0C8788| db $02 ; Raw block
|0C8789| db $22, $22, $25
|0C878C| db $22 ; Repeat byte
|0C878D| db $70
|0C878E| db $0B ; Raw block
|0C878F| db $82, $17, $18, $38, $17, $26, $27, $EF
|0C8797| db $28, $29, $EF, $00
|0C879B| db $66 ; Increment fill
|0C879C| db $2A
|0C879D| db $0A ; Raw block
|0C879E| db $2C, $31, $32, $46, $33, $34, $34, $35
|0C87A6| db $27, $36, $2C
|0C87A9| db $63 ; Increment fill
|0C87AA| db $37
|0C87AB| db $03 ; Raw block
|0C87AC| db $A0, $2C, $3B, $E6
|0C87B0| db $64 ; Increment fill
|0C87B1| db $3C
|0C87B2| db $02 ; Raw block
|0C87B3| db $27, $41, $40
|0C87B6| db $62 ; Increment fill
|0C87B7| db $37
|0C87B8| db $0A ; Raw block
|0C87B9| db $42, $16, $18, $43, $D5, $44, $45, $FA
|0C87C1| db $46, $47, $27
|0C87C4| db $68 ; Increment fill
|0C87C5| db $48
|0C87C6| db $01 ; Raw block
|0C87C7| db $D5, $D7
|0C87C9| db $62 ; Increment fill
|0C87CA| db $51
|0C87CB| db $01 ; Raw block
|0C87CC| db $40, $54
|0C87CE| db $22 ; Repeat byte
|0C87CF| db $EF
|0C87D0| db $01 ; Raw block
|0C87D1| db $28, $29
|0C87D3| db $22 ; Repeat byte
|0C87D4| db $EF
|0C87D5| db $0F ; Raw block
|0C87D6| db $55, $1D, $DD, $DE, $56, $57, $1D, $B2
|0C87DE| db $66, $E3, $44, $44, $E4, $58, $1D, $8F
|0C87E6| db $62 ; Increment fill
|0C87E7| db $E4
|0C87E8| db $15 ; Raw block
|0C87E9| db $59, $D3, $66, $8D, $57, $4C, $58, $5A
|0C87F1| db $4B, $4B, $5B, $4C, $5C, $4B, $8D, $D5
|0C87F9| db $DD, $EB, $B2, $97, $E6, $EB
|0C87FF| db $62 ; Increment fill
|0C8800| db $EB
|0C8801| db $00 ; Raw block
|0C8802| db $A3
|0C8803| db $62 ; Increment fill
|0C8804| db $EA
|0C8805| db $00 ; Raw block
|0C8806| db $EE
|0C8807| db $FF ; End of Map 66

;===================================================================================================

OverworldMap32_Screen67_High:
|0C8808| db $15 ; Raw block
|0C8809| db $05, $18, $1A, $18, $18, $05, $18, $18
|0C8811| db $05, $1A, $1A, $05, $1A, $18, $1A, $01
|0C8819| db $19, $1A, $19, $18, $18, $05
|0C881F| db $43 ; Repeat word
|0C8820| dw $181A
|0C8822| db $83 ; Copy past
|0C8823| dw $0400
|0C8825| db $83 ; Copy past
|0C8826| dw $0900
|0C8828| db $00 ; Raw block
|0C8829| db $0A
|0C882A| db $84 ; Copy past
|0C882B| dw $1300
|0C882D| db $00 ; Raw block
|0C882E| db $18
|0C882F| db $25 ; Repeat byte
|0C8830| db $1A
|0C8831| db $01 ; Raw block
|0C8832| db $01, $18
|0C8834| db $22 ; Repeat byte
|0C8835| db $1A
|0C8836| db $00 ; Raw block
|0C8837| db $18
|0C8838| db $26 ; Repeat byte
|0C8839| db $1A
|0C883A| db $03 ; Raw block
|0C883B| db $07, $1A, $1A, $01
|0C883F| db $28 ; Repeat byte
|0C8840| db $1A
|0C8841| db $02 ; Raw block
|0C8842| db $12, $06, $00
|0C8845| db $22 ; Repeat byte
|0C8846| db $1A
|0C8847| db $00 ; Raw block
|0C8848| db $01
|0C8849| db $24 ; Repeat byte
|0C884A| db $18
|0C884B| db $01 ; Raw block
|0C884C| db $1A, $07
|0C884E| db $22 ; Repeat byte
|0C884F| db $0B
|0C8850| db $00 ; Raw block
|0C8851| db $12
|0C8852| db $23 ; Repeat byte
|0C8853| db $1A
|0C8854| db $00 ; Raw block
|0C8855| db $01
|0C8856| db $26 ; Repeat byte
|0C8857| db $1A
|0C8858| db $03 ; Raw block
|0C8859| db $00, $06, $0D, $06
|0C885D| db $23 ; Repeat byte
|0C885E| db $1A
|0C885F| db $01 ; Raw block
|0C8860| db $01, $18
|0C8862| db $22 ; Repeat byte
|0C8863| db $1A
|0C8864| db $0B ; Raw block
|0C8865| db $02, $1A, $0B, $0D, $07, $0D, $06, $06
|0C886D| db $02, $1A, $18, $01
|0C8871| db $23 ; Repeat byte
|0C8872| db $1A
|0C8873| db $23 ; Repeat byte
|0C8874| db $0D
|0C8875| db $02 ; Raw block
|0C8876| db $07, $0D, $06
|0C8879| db $23 ; Repeat byte
|0C887A| db $1A
|0C887B| db $04 ; Raw block
|0C887C| db $01, $0B, $1A, $02, $1A
|0C8881| db $23 ; Repeat byte
|0C8882| db $0D
|0C8883| db $01 ; Raw block
|0C8884| db $01, $01
|0C8886| db $24 ; Repeat byte
|0C8887| db $1A
|0C8888| db $02 ; Raw block
|0C8889| db $01, $0D, $06
|0C888C| db $22 ; Repeat byte
|0C888D| db $0D
|0C888E| db $02 ; Raw block
|0C888F| db $06, $0D, $02
|0C8892| db $26 ; Repeat byte
|0C8893| db $1A
|0C8894| db $00 ; Raw block
|0C8895| db $01
|0C8896| db $22 ; Repeat byte
|0C8897| db $06
|0C8898| db $22 ; Repeat byte
|0C8899| db $0D
|0C889A| db $03 ; Raw block
|0C889B| db $06, $02, $12, $12
|0C889F| db $24 ; Repeat byte
|0C88A0| db $1A
|0C88A1| db $00 ; Raw block
|0C88A2| db $01
|0C88A3| db $22 ; Repeat byte
|0C88A4| db $06
|0C88A5| db $22 ; Repeat byte
|0C88A6| db $0D
|0C88A7| db $00 ; Raw block
|0C88A8| db $06
|0C88A9| db $22 ; Repeat byte
|0C88AA| db $1A
|0C88AB| db $0B ; Raw block
|0C88AC| db $02, $1A, $0B, $0B, $1A, $01, $03, $07
|0C88B4| db $00, $00, $06, $01
|0C88B8| db $27 ; Repeat byte
|0C88B9| db $00
|0C88BA| db $03 ; Raw block
|0C88BB| db $1A, $01, $03, $1A
|0C88BF| db $29 ; Repeat byte
|0C88C0| db $02
|0C88C1| db $01 ; Raw block
|0C88C2| db $09, $05
|0C88C4| db $22 ; Repeat byte
|0C88C5| db $1A
|0C88C6| db $01 ; Raw block
|0C88C7| db $01, $01
|0C88C9| db $22 ; Repeat byte
|0C88CA| db $1A
|0C88CB| db $00 ; Raw block
|0C88CC| db $01
|0C88CD| db $43 ; Repeat word
|0C88CE| dw $1A01
|0C88D0| db $00 ; Raw block
|0C88D1| db $0D
|0C88D2| db $83 ; Copy past
|0C88D3| dw $3D00
|0C88D5| db $FF ; End of Map 67

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen67_Low:
|0C88D6| db $E0, $2B ; EXT Raw block
|0C88D8| db $FB, $F8, $5D, $A0, $A1, $FB, $E3, $A1
|0C88E0| db $FB, $5E, $5F, $FB, $60, $21, $61, $71
|0C88E8| db $02, $03, $02, $A0, $A1, $FB, $62, $E9
|0C88F0| db $63, $7F, $82, $FB, $16, $17, $64, $65
|0C88F8| db $FB, $03, $0C, $E3, $A1, $FB, $66, $70
|0C8900| db $C1, $31, $67, $4E
|0C8904| db $62 ; Increment fill
|0C8905| db $68
|0C8906| db $01 ; Raw block
|0C8907| db $71, $20
|0C8909| db $62 ; Increment fill
|0C890A| db $6B
|0C890B| db $03 ; Raw block
|0C890C| db $8E, $6E, $6F, $5F
|0C8910| db $63 ; Increment fill
|0C8911| db $70
|0C8912| db $03 ; Raw block
|0C8913| db $00, $74, $75, $71
|0C8917| db $66 ; Increment fill
|0C8918| db $76
|0C8919| db $0F ; Raw block
|0C891A| db $49, $71, $85, $8E, $1D, $7D, $2A, $61
|0C8922| db $71, $38, $29, $2A, $17, $17, $7E, $02
|0C892A| db $22 ; Repeat byte
|0C892B| db $EF
|0C892C| db $00 ; Raw block
|0C892D| db $E2
|0C892E| db $63 ; Increment fill
|0C892F| db $7F
|0C8930| db $00 ; Raw block
|0C8931| db $71
|0C8932| db $62 ; Increment fill
|0C8933| db $83
|0C8934| db $07 ; Raw block
|0C8935| db $69, $69, $86, $87, $1D, $66, $10, $5A
|0C893D| db $63 ; Increment fill
|0C893E| db $88
|0C893F| db $01 ; Raw block
|0C8940| db $71, $18
|0C8942| db $62 ; Increment fill
|0C8943| db $8C
|0C8944| db $0F ; Raw block
|0C8945| db $5B, $8F, $3D, $14, $A5, $15, $61, $64
|0C894D| db $42, $90, $E7, $71, $69, $91, $8D, $92
|0C8955| db $63 ; Increment fill
|0C8956| db $1B
|0C8957| db $0B ; Raw block
|0C8958| db $AC, $1F, $6B, $93, $94, $2A, $95, $71
|0C8960| db $EF, $96, $5B, $97
|0C8964| db $63 ; Increment fill
|0C8965| db $23
|0C8966| db $01 ; Raw block
|0C8967| db $58, $65
|0C8969| db $62 ; Increment fill
|0C896A| db $98
|0C896B| db $04 ; Raw block
|0C896C| db $36, $9B, $71, $10, $5A
|0C8971| db $62 ; Increment fill
|0C8972| db $29
|0C8973| db $02 ; Raw block
|0C8974| db $61, $2C, $6F
|0C8977| db $66 ; Increment fill
|0C8978| db $9C
|0C8979| db $03 ; Raw block
|0C897A| db $71, $60, $61, $64
|0C897E| db $62 ; Increment fill
|0C897F| db $33
|0C8980| db $0C ; Raw block
|0C8981| db $6E, $4F, $85, $85, $A3, $A4, $4E, $7C
|0C8989| db $A5, $71, $6A, $6B, $6E
|0C898E| db $62 ; Increment fill
|0C898F| db $3D
|0C8990| db $12 ; Raw block
|0C8991| db $66, $A6, $27, $A7, $5B, $27, $EF, $EF
|0C8999| db $A8, $71, $44, $BB, $1C, $1D, $33, $29
|0C89A1| db $1C, $1D, $9F
|0C89A4| db $24 ; Repeat byte
|0C89A5| db $1D
|0C89A6| db $03 ; Raw block
|0C89A7| db $A9, $71, $4B, $5B
|0C89AB| db $27 ; Repeat byte
|0C89AC| db $4C
|0C89AD| db $03 ; Raw block
|0C89AE| db $CC, $D3, $F4, $57
|0C89B2| db $62 ; Increment fill
|0C89B3| db $AA
|0C89B4| db $01 ; Raw block
|0C89B5| db $EA, $EB
|0C89B7| db $62 ; Increment fill
|0C89B8| db $AD
|0C89B9| db $09 ; Raw block
|0C89BA| db $EB, $EB, $AE, $EB, $B0, $4D, $B1, $B2
|0C89C2| db $EB, $B3
|0C89C4| db $FF ; End of Map 67

;===================================================================================================

OverworldMap32_Screen68_High:
|0C89C5| db $0A ; Raw block
|0C89C6| db $0D, $0D, $0A, $01, $0D, $08, $08, $04
|0C89CE| db $08, $08, $04
|0C89D1| db $84 ; Copy past
|0C89D2| dw $0500
|0C89D4| db $24 ; Repeat byte
|0C89D5| db $0D
|0C89D6| db $8A ; Copy past
|0C89D7| dw $0500
|0C89D9| db $03 ; Raw block
|0C89DA| db $0B, $0D, $0A, $0B
|0C89DE| db $88 ; Copy past
|0C89DF| dw $0700
|0C89E1| db $06 ; Raw block
|0C89E2| db $04, $08, $08, $03, $0A, $0D, $01
|0C89E9| db $28 ; Repeat byte
|0C89EA| db $08
|0C89EB| db $00 ; Raw block
|0C89EC| db $0D
|0C89ED| db $85 ; Copy past
|0C89EE| dw $2E00
|0C89F0| db $03 ; Raw block
|0C89F1| db $1A, $0C, $0C, $1A
|0C89F5| db $22 ; Repeat byte
|0C89F6| db $0C
|0C89F7| db $22 ; Repeat byte
|0C89F8| db $1A
|0C89F9| db $01 ; Raw block
|0C89FA| db $08, $08
|0C89FC| db $22 ; Repeat byte
|0C89FD| db $0D
|0C89FE| db $09 ; Raw block
|0C89FF| db $01, $07, $03, $00, $1A, $02, $1A, $00
|0C8A07| db $06, $04
|0C8A09| db $83 ; Copy past
|0C8A0A| dw $2D00
|0C8A0C| db $05 ; Raw block
|0C8A0D| db $0D, $0A, $01, $07, $03, $06
|0C8A13| db $22 ; Repeat byte
|0C8A14| db $00
|0C8A15| db $0A ; Raw block
|0C8A16| db $1A, $00, $1A, $0D, $08, $08, $0C, $1A
|0C8A1E| db $1A, $03, $07
|0C8A21| db $22 ; Repeat byte
|0C8A22| db $00
|0C8A23| db $03 ; Raw block
|0C8A24| db $1A, $06, $04, $02
|0C8A28| db $83 ; Copy past
|0C8A29| dw $4C00
|0C8A2B| db $05 ; Raw block
|0C8A2C| db $1A, $0D, $0D, $03, $0D, $1A
|0C8A32| db $25 ; Repeat byte
|0C8A33| db $0D
|0C8A34| db $83 ; Copy past
|0C8A35| dw $6C00
|0C8A37| db $04 ; Raw block
|0C8A38| db $01, $03, $04, $03, $00
|0C8A3D| db $22 ; Repeat byte
|0C8A3E| db $0D
|0C8A3F| db $01 ; Raw block
|0C8A40| db $1A, $0D
|0C8A42| db $22 ; Repeat byte
|0C8A43| db $00
|0C8A44| db $E0, $21 ; EXT Raw block
|0C8A46| db $01, $0B, $08, $01, $03, $1A, $02, $02
|0C8A4E| db $10, $10, $02, $02, $0B, $1A, $00, $17
|0C8A56| db $1A, $01, $08, $03, $0D, $0D, $01, $01
|0C8A5E| db $16, $16, $01, $01, $03, $0B, $0D, $1A
|0C8A66| db $1A, $01
|0C8A68| db $22 ; Repeat byte
|0C8A69| db $0D
|0C8A6A| db $19 ; Raw block
|0C8A6B| db $0C, $01, $08, $01, $03, $06, $00, $03
|0C8A73| db $03, $0D, $0D, $02, $0D, $0D, $01, $0D
|0C8A7B| db $02, $07, $0D, $0D, $07, $03, $03, $07
|0C8A83| db $03, $03
|0C8A85| db $25 ; Repeat byte
|0C8A86| db $01
|0C8A87| db $01 ; Raw block
|0C8A88| db $0D, $0D
|0C8A8A| db $24 ; Repeat byte
|0C8A8B| db $03
|0C8A8C| db $01 ; Raw block
|0C8A8D| db $0B, $07
|0C8A8F| db $24 ; Repeat byte
|0C8A90| db $03
|0C8A91| db $05 ; Raw block
|0C8A92| db $01, $0B, $01, $01, $0D, $01
|0C8A98| db $24 ; Repeat byte
|0C8A99| db $0D
|0C8A9A| db $24 ; Repeat byte
|0C8A9B| db $03
|0C8A9C| db $FF ; End of Map 68

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen68_Low:
|0C8A9D| db $0A ; Raw block
|0C8A9E| db $4F, $50, $39, $E3, $51, $D2, $D3, $42
|0C8AA6| db $D2, $D3, $42
|0C8AA9| db $84 ; Copy past
|0C8AAA| dw $0500
|0C8AAC| db $01 ; Raw block
|0C8AAD| db $52, $4F
|0C8AAF| db $62 ; Increment fill
|0C8AB0| db $53
|0C8AB1| db $05 ; Raw block
|0C8AB2| db $99, $44, $4A, $99, $44, $4A
|0C8AB8| db $84 ; Copy past
|0C8AB9| dw $1500
|0C8ABB| db $09 ; Raw block
|0C8ABC| db $4D, $56, $39, $58, $39, $9F, $4B, $39
|0C8AC4| db $9F, $4B
|0C8AC6| db $85 ; Copy past
|0C8AC7| dw $2400
|0C8AC9| db $0F ; Raw block
|0C8ACA| db $63, $09, $53, $E3, $9C, $A5, $A6, $9C
|0C8AD2| db $A5, $A6, $9C, $A5, $A6, $51, $D2, $D3
|0C8ADA| db $83 ; Copy past
|0C8ADB| dw $3000
|0C8ADD| db $03 ; Raw block
|0C8ADE| db $B4, $39, $39, $B5
|0C8AE2| db $22 ; Repeat byte
|0C8AE3| db $39
|0C8AE4| db $62 ; Increment fill
|0C8AE5| db $B6
|0C8AE6| db $18 ; Raw block
|0C8AE7| db $99, $44, $5C, $5D, $53, $E3, $6D, $D5
|0C8AEF| db $1D, $B9, $DE, $BA, $1D, $66, $38, $39
|0C8AF7| db $9F, $4B, $9C, $64, $39, $E3, $6D, $FF
|0C8AFF| db $66
|0C8B00| db $22 ; Repeat byte
|0C8B01| db $1D
|0C8B02| db $0A ; Raw block
|0C8B03| db $BB, $1D, $BC, $51, $D2, $D3, $90, $BD
|0C8B0B| db $BE, $95, $6D
|0C8B0E| db $22 ; Repeat byte
|0C8B0F| db $1D
|0C8B10| db $0F ; Raw block
|0C8B11| db $BB, $66, $BB, $DE, $BF, $C0, $43, $44
|0C8B19| db $C1, $78, $6F, $9D, $7A, $C2, $58, $69
|0C8B21| db $22 ; Repeat byte
|0C8B22| db $6C
|0C8B23| db $09 ; Raw block
|0C8B24| db $7C, $C3, $81, $4A, $4B, $F8, $9C, $84
|0C8B2C| db $A8, $97
|0C8B2E| db $62 ; Increment fill
|0C8B2F| db $83
|0C8B30| db $01 ; Raw block
|0C8B31| db $C4, $86
|0C8B33| db $22 ; Repeat byte
|0C8B34| db $1D
|0C8B35| db $E0, $3E ; EXT Raw block
|0C8B37| db $42, $47, $D3, $E5, $BB, $C5, $61, $61
|0C8B3F| db $F7, $F8, $61, $61, $D4, $C6, $B2, $2A
|0C8B47| db $C7, $4E, $41, $5C, $91, $92, $22, $22
|0C8B4F| db $3B, $3C, $22, $22, $B1, $D4, $86, $C8
|0C8B57| db $C9, $58, $AF, $97, $98, $DE, $60, $2D
|0C8B5F| db $1E, $D5, $66, $1D, $56, $B1, $99, $9D
|0C8B67| db $08, $9D, $9D, $06, $9E, $D2, $BF, $9F
|0C8B6F| db $A0, $90, $44, $44, $BB, $56, $BA
|0C8B76| db $23 ; Repeat byte
|0C8B77| db $E5
|0C8B78| db $03 ; Raw block
|0C8B79| db $06, $06, $9E, $A1
|0C8B7D| db $24 ; Repeat byte
|0C8B7E| db $4B
|0C8B7F| db $01 ; Raw block
|0C8B80| db $45, $BF
|0C8B82| db $24 ; Repeat byte
|0C8B83| db $44
|0C8B84| db $02 ; Raw block
|0C8B85| db $06, $4B, $06
|0C8B88| db $43 ; Repeat word
|0C8B89| dw $A206
|0C8B8B| db $03 ; Raw block
|0C8B8C| db $A3, $4B, $9E, $A1
|0C8B90| db $24 ; Repeat byte
|0C8B91| db $4B
|0C8B92| db $FF ; End of Map 68

;===================================================================================================

OverworldMap32_Screen69_High:
|0C8B93| db $06 ; Raw block
|0C8B94| db $04, $08, $08, $04, $08, $08, $04
|0C8B9B| db $23 ; Repeat byte
|0C8B9C| db $08
|0C8B9D| db $22 ; Repeat byte
|0C8B9E| db $0D
|0C8B9F| db $87 ; Copy past
|0C8BA0| dw $0100
|0C8BA2| db $08 ; Raw block
|0C8BA3| db $1A, $01, $08, $01, $0D, $0D, $12, $01
|0C8BAB| db $01
|0C8BAC| db $88 ; Copy past
|0C8BAD| dw $0F00
|0C8BAF| db $04 ; Raw block
|0C8BB0| db $0D, $04, $06, $04, $02
|0C8BB5| db $22 ; Repeat byte
|0C8BB6| db $0D
|0C8BB7| db $25 ; Repeat byte
|0C8BB8| db $08
|0C8BB9| db $00 ; Raw block
|0C8BBA| db $1A
|0C8BBB| db $23 ; Repeat byte
|0C8BBC| db $02
|0C8BBD| db $0C ; Raw block
|0C8BBE| db $03, $01, $1A, $0D, $0D, $01, $00, $1A
|0C8BC6| db $1A, $05, $16, $02, $02
|0C8BCB| db $22 ; Repeat byte
|0C8BCC| db $01
|0C8BCD| db $43 ; Repeat word
|0C8BCE| dw $011A
|0C8BD0| db $0E ; Raw block
|0C8BD1| db $08, $0D, $02, $04, $1A, $00, $16, $02
|0C8BD9| db $06, $04, $02, $10, $1A, $01, $1A
|0C8BE0| db $22 ; Repeat byte
|0C8BE1| db $0D
|0C8BE2| db $23 ; Repeat byte
|0C8BE3| db $01
|0C8BE4| db $04 ; Raw block
|0C8BE5| db $00, $00, $09, $0D, $0D
|0C8BEA| db $23 ; Repeat byte
|0C8BEB| db $1A
|0C8BEC| db $1A ; Raw block
|0C8BED| db $0D, $0D, $0C, $04, $00, $01, $01, $1A
|0C8BF5| db $07, $03, $1A, $06, $0D, $1A, $1A, $01
|0C8BFD| db $08, $08, $04, $04, $03, $00, $01, $05
|0C8C05| db $02, $03, $1A
|0C8C08| db $45 ; Repeat word
|0C8C09| dw $081A
|0C8C0B| db $0E ; Raw block
|0C8C0C| db $08, $04, $04, $01, $03, $06, $01, $01
|0C8C14| db $03, $0D, $0D, $08, $1A, $08, $0D
|0C8C1B| db $22 ; Repeat byte
|0C8C1C| db $08
|0C8C1D| db $00 ; Raw block
|0C8C1E| db $01
|0C8C1F| db $22 ; Repeat byte
|0C8C20| db $1A
|0C8C21| db $22 ; Repeat byte
|0C8C22| db $0C
|0C8C23| db $0E ; Raw block
|0C8C24| db $0D, $0D, $1A, $0D, $02, $04, $06, $01
|0C8C2C| db $08, $01, $01, $0C, $05, $04, $02
|0C8C33| db $62 ; Increment fill
|0C8C34| db $02
|0C8C35| db $22 ; Repeat byte
|0C8C36| db $01
|0C8C37| db $02 ; Raw block
|0C8C38| db $04, $01, $03
|0C8C3B| db $22 ; Repeat byte
|0C8C3C| db $0D
|0C8C3D| db $08 ; Raw block
|0C8C3E| db $1A, $02, $04, $01, $01, $03, $03, $00
|0C8C46| db $07
|0C8C47| db $23 ; Repeat byte
|0C8C48| db $06
|0C8C49| db $23 ; Repeat byte
|0C8C4A| db $01
|0C8C4B| db $0B ; Raw block
|0C8C4C| db $02, $03, $01, $03, $03, $0D, $08, $00
|0C8C54| db $00, $06, $00, $00
|0C8C58| db $25 ; Repeat byte
|0C8C59| db $03
|0C8C5A| db $03 ; Raw block
|0C8C5B| db $01, $0C, $03, $03
|0C8C5F| db $25 ; Repeat byte
|0C8C60| db $00
|0C8C61| db $25 ; Repeat byte
|0C8C62| db $03
|0C8C63| db $22 ; Repeat byte
|0C8C64| db $0D
|0C8C65| db $01 ; Raw block
|0C8C66| db $06, $06
|0C8C68| db $24 ; Repeat byte
|0C8C69| db $00
|0C8C6A| db $FF ; End of Map 69

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen69_Low:
|0C8C6B| db $E0, $2F ; EXT Raw block
|0C8C6D| db $42, $D2, $D3, $42, $D2, $D3, $42, $D2
|0C8C75| db $D3, $A4, $9D, $A4, $A5, $51, $D2, $D3
|0C8C7D| db $4A, $99, $44, $4A, $99, $44, $CA, $4E
|0C8C85| db $41, $68, $A6, $A7, $E2, $4D, $4E, $41
|0C8C8D| db $39, $9F, $4B, $39, $9F, $4B, $CB, $58
|0C8C95| db $AF, $25, $66, $81, $61, $C6, $B3, $B4
|0C8C9D| db $62 ; Increment fill
|0C8C9E| db $A4
|0C8C9F| db $04 ; Raw block
|0C8CA0| db $9C, $A5, $A6, $CC, $60
|0C8CA5| db $22 ; Repeat byte
|0C8CA6| db $61
|0C8CA7| db $0C ; Raw block
|0C8CA8| db $B4, $22, $CD, $BC, $BD, $68, $99, $CE
|0C8CB0| db $CF, $52, $1B, $79, $02
|0C8CB5| db $22 ; Repeat byte
|0C8CB6| db $22
|0C8CB7| db $1E ; Raw block
|0C8CB8| db $D0, $AB, $D1, $4E, $41, $C4, $61, $7C
|0C8CC0| db $D2, $1D, $23, $7A, $66, $81, $61, $F7
|0C8CC8| db $D3, $B3, $D4, $B3, $B4, $C7, $22, $23
|0C8CD0| db $E6, $DB, $1D, $FB, $ED, $92, $C9
|0C8CD7| db $62 ; Increment fill
|0C8CD8| db $D5
|0C8CD9| db $E0, $22 ; EXT Raw block
|0C8CDB| db $CD, $BC, $BD, $43, $2F, $1D, $E4, $E6
|0C8CE3| db $D8, $E6, $AB, $D9, $7C, $CD, $DA, $DB
|0C8CEB| db $4D, $43, $44, $39, $3A, $FF, $1D, $E4
|0C8CF3| db $5A, $61, $B4, $DC, $DD, $0F, $DE, $11
|0C8CFB| db $DF, $4A, $4B
|0C8CFE| db $62 ; Increment fill
|0C8CFF| db $42
|0C8D00| db $11 ; Raw block
|0C8D01| db $BE, $66, $1F, $22, $A8, $D6, $D7, $1B
|0C8D09| db $E0, $1D, $D8, $4D, $4E, $42, $4E, $E1
|0C8D11| db $E2, $B4
|0C8D13| db $22 ; Repeat byte
|0C8D14| db $39
|0C8D15| db $17 ; Raw block
|0C8D16| db $DD, $DE, $E3, $E0, $08, $BA, $66, $67
|0C8D1E| db $49, $58, $65, $39, $0C, $7D, $08, $08
|0C8D26| db $B3, $82, $E5, $F9, $E5, $BC, $1E, $DB
|0C8D2E| db $22 ; Repeat byte
|0C8D2F| db $9D
|0C8D30| db $08 ; Raw block
|0C8D31| db $E4, $60, $82, $E5, $E5, $BB, $A8, $1D
|0C8D39| db $E5
|0C8D3A| db $23 ; Repeat byte
|0C8D3B| db $9C
|0C8D3C| db $23 ; Repeat byte
|0C8D3D| db $E5
|0C8D3E| db $0B ; Raw block
|0C8D3F| db $02, $A8, $41, $44, $44, $E8, $A1, $B6
|0C8D47| db $B7, $3B, $B6, $B7
|0C8D4B| db $25 ; Repeat byte
|0C8D4C| db $44
|0C8D4D| db $04 ; Raw block
|0C8D4E| db $48, $E8, $8C, $8D, $EE
|0C8D53| db $62 ; Increment fill
|0C8D54| db $09
|0C8D55| db $01 ; Raw block
|0C8D56| db $09, $0A
|0C8D58| db $25 ; Repeat byte
|0C8D59| db $4B
|0C8D5A| db $62 ; Increment fill
|0C8D5B| db $E9
|0C8D5C| db $03 ; Raw block
|0C8D5D| db $49, $45, $07, $08
|0C8D61| db $62 ; Increment fill
|0C8D62| db $06
|0C8D63| db $FF ; End of Map 69

;===================================================================================================

OverworldMap32_Screen2A_High:
|0C8D64| db $05 ; Raw block
|0C8D65| db $04, $08, $08, $04, $08, $08
|0C8D6B| db $89 ; Copy past
|0C8D6C| dw $0000
|0C8D6E| db $85 ; Copy past
|0C8D6F| dw $0000
|0C8D71| db $02 ; Raw block
|0C8D72| db $1A, $01, $1A
|0C8D75| db $97 ; Copy past
|0C8D76| dw $0900
|0C8D78| db $24 ; Repeat byte
|0C8D79| db $08
|0C8D7A| db $02 ; Raw block
|0C8D7B| db $1A, $01, $1A
|0C8D7E| db $22 ; Repeat byte
|0C8D7F| db $08
|0C8D80| db $00 ; Raw block
|0C8D81| db $0D
|0C8D82| db $83 ; Copy past
|0C8D83| dw $0D00
|0C8D85| db $22 ; Repeat byte
|0C8D86| db $08
|0C8D87| db $00 ; Raw block
|0C8D88| db $06
|0C8D89| db $23 ; Repeat byte
|0C8D8A| db $01
|0C8D8B| db $03 ; Raw block
|0C8D8C| db $00, $06, $01, $01
|0C8D90| db $85 ; Copy past
|0C8D91| dw $0D00
|0C8D93| db $09 ; Raw block
|0C8D94| db $1A, $00, $01, $01, $1A, $01, $04, $00
|0C8D9C| db $1A, $1A
|0C8D9E| db $84 ; Copy past
|0C8D9F| dw $0D00
|0C8DA1| db $05 ; Raw block
|0C8DA2| db $15, $1A, $00, $01, $12, $09
|0C8DA8| db $22 ; Repeat byte
|0C8DA9| db $00
|0C8DAA| db $01 ; Raw block
|0C8DAB| db $01, $06
|0C8DAD| db $84 ; Copy past
|0C8DAE| dw $0D00
|0C8DB0| db $22 ; Repeat byte
|0C8DB1| db $01
|0C8DB2| db $02 ; Raw block
|0C8DB3| db $06, $1A, $00
|0C8DB6| db $22 ; Repeat byte
|0C8DB7| db $01
|0C8DB8| db $03 ; Raw block
|0C8DB9| db $06, $08, $01, $0E
|0C8DBD| db $83 ; Copy past
|0C8DBE| dw $0F00
|0C8DC0| db $0B ; Raw block
|0C8DC1| db $01, $1A, $00, $06, $08, $06, $1A, $03
|0C8DC9| db $06, $01, $1A, $0E
|0C8DCD| db $22 ; Repeat byte
|0C8DCE| db $04
|0C8DCF| db $24 ; Repeat byte
|0C8DD0| db $01
|0C8DD1| db $07 ; Raw block
|0C8DD2| db $06, $01, $02, $01, $01, $07, $00, $01
|0C8DDA| db $83 ; Copy past
|0C8DDB| dw $1300
|0C8DDD| db $02 ; Raw block
|0C8DDE| db $1A, $01, $01
|0C8DE1| db $23 ; Repeat byte
|0C8DE2| db $00
|0C8DE3| db $05 ; Raw block
|0C8DE4| db $01, $01, $00, $08, $0C, $04
|0C8DEA| db $22 ; Repeat byte
|0C8DEB| db $08
|0C8DEC| db $01 ; Raw block
|0C8DED| db $1A, $01
|0C8DEF| db $83 ; Copy past
|0C8DF0| dw $4300
|0C8DF2| db $0D ; Raw block
|0C8DF3| db $09, $03, $04, $03, $08, $08, $04, $07
|0C8DFB| db $08, $08, $04, $01, $01, $00
|0C8E01| db $22 ; Repeat byte
|0C8E02| db $01
|0C8E03| db $11 ; Raw block
|0C8E04| db $06, $06, $01, $0B, $08, $04, $03, $00
|0C8E0C| db $01, $08, $08, $1A, $08, $03, $1A, $1A
|0C8E14| db $0B, $1A
|0C8E16| db $83 ; Copy past
|0C8E17| dw $3C00
|0C8E19| db $02 ; Raw block
|0C8E1A| db $01, $00, $03
|0C8E1D| db $22 ; Repeat byte
|0C8E1E| db $08
|0C8E1F| db $01 ; Raw block
|0C8E20| db $0B, $00
|0C8E22| db $86 ; Copy past
|0C8E23| dw $0F00
|0C8E25| db $23 ; Repeat byte
|0C8E26| db $04
|0C8E27| db $03 ; Raw block
|0C8E28| db $01, $0B, $08, $01
|0C8E2C| db $84 ; Copy past
|0C8E2D| dw $9D00
|0C8E2F| db $83 ; Copy past
|0C8E30| dw $0000
|0C8E32| db $FF ; End of Map 2A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen2A_Low:
|0C8E33| db $05 ; Raw block
|0C8E34| db $42, $D2, $D3, $42, $D2, $D3
|0C8E3A| db $89 ; Copy past
|0C8E3B| dw $0000
|0C8E3D| db $08 ; Raw block
|0C8E3E| db $4A, $99, $44, $4A, $99, $44, $CA, $4E
|0C8E46| db $E5
|0C8E47| db $85 ; Copy past
|0C8E48| dw $1000
|0C8E4A| db $09 ; Raw block
|0C8E4B| db $4A, $39, $9F, $4B, $39, $9F, $4B, $CB
|0C8E53| db $58, $E6
|0C8E55| db $85 ; Copy past
|0C8E56| dw $2000
|0C8E58| db $03 ; Raw block
|0C8E59| db $39, $42, $D2, $D3
|0C8E5D| db $62 ; Increment fill
|0C8E5E| db $A4
|0C8E5F| db $06 ; Raw block
|0C8E60| db $E7, $43, $E8, $9C, $A5, $A6, $51
|0C8E67| db $85 ; Copy past
|0C8E68| dw $0D00
|0C8E6A| db $02 ; Raw block
|0C8E6B| db $9A, $70, $1E
|0C8E6E| db $62 ; Increment fill
|0C8E6F| db $4D
|0C8E70| db $04 ; Raw block
|0C8E71| db $1D, $70, $1E, $4D, $43
|0C8E76| db $84 ; Copy past
|0C8E77| dw $1E00
|0C8E79| db $0A ; Raw block
|0C8E7A| db $E9, $B6, $26, $57, $EA, $65, $56, $B6
|0C8E82| db $EB, $EC, $4A
|0C8E85| db $83 ; Copy past
|0C8E86| dw $2E00
|0C8E88| db $E0, $2D ; EXT Raw block
|0C8E8A| db $E4, $ED, $09, $2F, $26, $B4, $1D, $EE
|0C8E92| db $09, $2F, $70, $4D, $4E, $42, $4A, $BB
|0C8E9A| db $4F, $30, $0E, $2B, $EE, $99, $1E, $30
|0C8EA2| db $0E, $2B, $2D, $1E, $F7, $4A, $39, $BE
|0C8EAA| db $C8, $1E, $EF, $9F, $70, $2D, $70, $F0
|0C8EB2| db $E2, $66, $3C, $F1, $F8, $39
|0C8EB8| db $62 ; Increment fill
|0C8EB9| db $42
|0C8EBA| db $62 ; Increment fill
|0C8EBB| db $42
|0C8EBC| db $19 ; Raw block
|0C8EBD| db $3C, $70, $5A, $DE, $61, $62, $9E, $1D
|0C8EC5| db $61, $42, $42, $43, $F2, $F3, $4E, $4F
|0C8ECD| db $1C, $1C, $B2, $AA, $67, $68, $A5, $B8
|0C8ED5| db $04, $4A
|0C8ED7| db $62 ; Increment fill
|0C8ED8| db $49
|0C8ED9| db $E0, $2F ; EXT Raw block
|0C8EDB| db $F4, $58, $C8, $66, $61, $62, $B4, $DB
|0C8EE3| db $25, $D5, $BD, $4B, $39, $E6, $4D, $4E
|0C8EEB| db $45, $43, $44, $1D, $67, $68, $3C, $70
|0C8EF3| db $66, $42, $47, $D3, $42, $FB, $1D, $67
|0C8EFB| db $42, $43, $F5, $CC, $DB, $F6, $F7, $FE
|0C8F03| db $F8, $55, $99, $44, $4A, $74, $1D, $DB
|0C8F0B| db $62 ; Increment fill
|0C8F0C| db $49
|0C8F0D| db $02 ; Raw block
|0C8F0E| db $43, $1D, $38
|0C8F11| db $86 ; Copy past
|0C8F12| dw $2900
|0C8F14| db $08 ; Raw block
|0C8F15| db $07, $60, $2C, $42, $47, $D3, $62, $AA
|0C8F1D| db $61
|0C8F1E| db $86 ; Copy past
|0C8F1F| dw $0000
|0C8F21| db $FF ; End of Map 2A

;===================================================================================================

OverworldMap32_Screen2B_High:
|0C8F22| db $23 ; Repeat byte
|0C8F23| db $08
|0C8F24| db $0A ; Raw block
|0C8F25| db $06, $01, $08, $08, $04, $08, $08, $04
|0C8F2D| db $08, $08, $04
|0C8F30| db $23 ; Repeat byte
|0C8F31| db $08
|0C8F32| db $22 ; Repeat byte
|0C8F33| db $1A
|0C8F34| db $88 ; Copy past
|0C8F35| dw $0600
|0C8F37| db $23 ; Repeat byte
|0C8F38| db $08
|0C8F39| db $02 ; Raw block
|0C8F3A| db $06, $08, $01
|0C8F3D| db $27 ; Repeat byte
|0C8F3E| db $08
|0C8F3F| db $00 ; Raw block
|0C8F40| db $04
|0C8F41| db $22 ; Repeat byte
|0C8F42| db $08
|0C8F43| db $0C ; Raw block
|0C8F44| db $01, $01, $04, $04, $0B, $0B, $1A, $16
|0C8F4C| db $01, $01, $03, $0E, $04
|0C8F51| db $22 ; Repeat byte
|0C8F52| db $08
|0C8F53| db $02 ; Raw block
|0C8F54| db $0C, $1A, $04
|0C8F57| db $83 ; Copy past
|0C8F58| dw $0800
|0C8F5A| db $05 ; Raw block
|0C8F5B| db $04, $03, $1A, $01, $1A, $04
|0C8F61| db $22 ; Repeat byte
|0C8F62| db $08
|0C8F63| db $03 ; Raw block
|0C8F64| db $04, $04, $1B, $0D
|0C8F68| db $84 ; Copy past
|0C8F69| dw $5000
|0C8F6B| db $02 ; Raw block
|0C8F6C| db $1B, $01, $1B
|0C8F6F| db $25 ; Repeat byte
|0C8F70| db $08
|0C8F71| db $00 ; Raw block
|0C8F72| db $1B
|0C8F73| db $22 ; Repeat byte
|0C8F74| db $08
|0C8F75| db $07 ; Raw block
|0C8F76| db $04, $08, $1B, $00, $01, $06, $00, $1B
|0C8F7E| db $22 ; Repeat byte
|0C8F7F| db $08
|0C8F80| db $01 ; Raw block
|0C8F81| db $00, $1B
|0C8F83| db $84 ; Copy past
|0C8F84| dw $0800
|0C8F86| db $01 ; Raw block
|0C8F87| db $1B, $01
|0C8F89| db $23 ; Repeat byte
|0C8F8A| db $1B
|0C8F8B| db $22 ; Repeat byte
|0C8F8C| db $08
|0C8F8D| db $08 ; Raw block
|0C8F8E| db $00, $01, $04, $08, $15, $08, $08, $00
|0C8F96| db $07
|0C8F97| db $22 ; Repeat byte
|0C8F98| db $1B
|0C8F99| db $10 ; Raw block
|0C8F9A| db $06, $08, $08, $01, $08, $14, $04, $08
|0C8FA2| db $1B, $08, $06, $00, $03, $1B, $1B, $06
|0C8FAA| db $00
|0C8FAB| db $24 ; Repeat byte
|0C8FAC| db $08
|0C8FAD| db $06 ; Raw block
|0C8FAE| db $04, $08, $08, $1B, $00, $00, $1B
|0C8FB5| db $62 ; Increment fill
|0C8FB6| db $03
|0C8FB7| db $00 ; Raw block
|0C8FB8| db $1B
|0C8FB9| db $27 ; Repeat byte
|0C8FBA| db $08
|0C8FBB| db $0A ; Raw block
|0C8FBC| db $1B, $00, $0F, $03, $1B, $1B, $05, $1B
|0C8FC4| db $08, $15, $14
|0C8FC7| db $43 ; Repeat word
|0C8FC8| dw $0004
|0C8FCA| db $00 ; Raw block
|0C8FCB| db $06
|0C8FCC| db $22 ; Repeat byte
|0C8FCD| db $1B
|0C8FCE| db $01 ; Raw block
|0C8FCF| db $05, $02
|0C8FD1| db $22 ; Repeat byte
|0C8FD2| db $1B
|0C8FD3| db $05 ; Raw block
|0C8FD4| db $08, $1B, $04, $04, $00, $00
|0C8FDA| db $23 ; Repeat byte
|0C8FDB| db $1B
|0C8FDC| db $01 ; Raw block
|0C8FDD| db $10, $15
|0C8FDF| db $23 ; Repeat byte
|0C8FE0| db $1B
|0C8FE1| db $83 ; Copy past
|0C8FE2| dw $4600
|0C8FE4| db $0A ; Raw block
|0C8FE5| db $02, $1B, $1B, $10, $01, $1B, $01, $0D
|0C8FED| db $01, $1A, $01
|0C8FF0| db $83 ; Copy past
|0C8FF1| dw $0500
|0C8FF3| db $08 ; Raw block
|0C8FF4| db $04, $07, $06, $10, $1B, $0D, $01, $0C
|0C8FFC| db $0B
|0C8FFD| db $22 ; Repeat byte
|0C8FFE| db $01
|0C8FFF| db $00 ; Raw block
|0C9000| db $19
|0C9001| db $FF ; End of Map 2B

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen2B_Low:
|0C9002| db $09 ; Raw block
|0C9003| db $D2, $D3, $A4, $9D, $66, $4D, $43, $44
|0C900B| db $4A, $99
|0C900D| db $85 ; Copy past
|0C900E| dw $0700
|0C9010| db $02 ; Raw block
|0C9011| db $99, $44, $9A
|0C9014| db $62 ; Increment fill
|0C9015| db $F9
|0C9016| db $03 ; Raw block
|0C9017| db $4A, $4B, $39, $9F
|0C901B| db $85 ; Copy past
|0C901C| dw $1700
|0C901E| db $1D ; Raw block
|0C901F| db $9F, $4B, $A0, $70, $2D, $1E, $4D, $A6
|0C9027| db $9C, $A5, $4E, $A4, $A5, $4E, $42, $D2
|0C902F| db $D2, $D3, $62, $1E, $2D, $2E, $FE, $3A
|0C9037| db $FC, $00, $67, $68, $5F, $F7
|0C903D| db $83 ; Copy past
|0C903E| dw $0E00
|0C9040| db $02 ; Raw block
|0C9041| db $43, $FD, $38
|0C9044| db $83 ; Copy past
|0C9045| dw $1800
|0C9047| db $04 ; Raw block
|0C9048| db $3A, $DB, $FE, $1E, $FF
|0C904D| db $83 ; Copy past
|0C904E| dw $1E00
|0C9050| db $0D ; Raw block
|0C9051| db $39, $3A, $00, $51, $D2, $D3, $42, $43
|0C9059| db $01, $02, $26, $03, $9C, $A5
|0C905F| db $83 ; Copy past
|0C9060| dw $0000
|0C9062| db $10 ; Raw block
|0C9063| db $04, $BA, $99, $44, $4A, $BB, $05, $09
|0C906B| db $2F, $66, $9F, $06, $99, $44, $9A, $AA
|0C9073| db $07
|0C9074| db $83 ; Copy past
|0C9075| dw $1800
|0C9077| db $02 ; Raw block
|0C9078| db $BE, $08, $0E
|0C907B| db $63 ; Increment fill
|0C907C| db $09
|0C907D| db $0B ; Raw block
|0C907E| db $9F, $4B, $A0, $B2, $61, $42, $D2, $E4
|0C9086| db $9C, $9D, $AA, $9F
|0C908A| db $62 ; Increment fill
|0C908B| db $0D
|0C908C| db $14 ; Raw block
|0C908D| db $66, $D2, $D3, $62, $B8, $F2, $4A, $99
|0C9095| db $10, $CC, $66, $AA, $8E, $11, $12, $66
|0C909D| db $BE, $99, $44, $9A, $BD
|0C90A2| db $83 ; Copy past
|0C90A3| dw $1700
|0C90A5| db $0A ; Raw block
|0C90A6| db $13, $98, $9F, $14, $B2, $BA, $55, $15
|0C90AE| db $9F, $4B, $A0
|0C90B1| db $83 ; Copy past
|0C90B2| dw $2600
|0C90B4| db $0B ; Raw block
|0C90B5| db $A6, $16, $A1, $08, $56, $17, $18, $59
|0C90BD| db $19, $D2, $E4, $F3
|0C90C1| db $43 ; Repeat word
|0C90C2| dw $1F20
|0C90C4| db $00 ; Raw block
|0C90C5| db $F5
|0C90C6| db $62 ; Increment fill
|0C90C7| db $1A
|0C90C8| db $01 ; Raw block
|0C90C9| db $E5, $57
|0C90CB| db $62 ; Increment fill
|0C90CC| db $1D
|0C90CD| db $05 ; Raw block
|0C90CE| db $99, $20, $2E, $2F, $A0, $A2
|0C90D4| db $63 ; Increment fill
|0C90D5| db $21
|0C90D6| db $01 ; Raw block
|0C90D7| db $F6, $92
|0C90D9| db $63 ; Increment fill
|0C90DA| db $25
|0C90DB| db $83 ; Copy past
|0C90DC| dw $4600
|0C90DE| db $0B ; Raw block
|0C90DF| db $4F, $29, $2A, $F6, $EB, $2B, $06, $97
|0C90E7| db $EB, $AE, $EB, $EB
|0C90EB| db $83 ; Copy past
|0C90EC| dw $5600
|0C90EE| db $07 ; Raw block
|0C90EF| db $50, $8E, $6E, $2C, $4C, $06, $ED, $56
|0C90F7| db $22 ; Repeat byte
|0C90F8| db $06
|0C90F9| db $00 ; Raw block
|0C90FA| db $E4
|0C90FB| db $FF ; End of Map 2B

;===================================================================================================

OverworldMap32_Screen2C_High:
|0C90FC| db $01 ; Raw block
|0C90FD| db $08, $04
|0C90FF| db $22 ; Repeat byte
|0C9100| db $08
|0C9101| db $0C ; Raw block
|0C9102| db $00, $1B, $06, $00, $00, $07, $00, $06
|0C910A| db $04, $03, $06, $08, $04
|0C910F| db $22 ; Repeat byte
|0C9110| db $08
|0C9111| db $0A ; Raw block
|0C9112| db $06, $02, $1B, $06, $00, $0C, $06, $04
|0C911A| db $04, $08, $09
|0C911D| db $23 ; Repeat byte
|0C911E| db $08
|0C911F| db $23 ; Repeat byte
|0C9120| db $1B
|0C9121| db $00 ; Raw block
|0C9122| db $06
|0C9123| db $22 ; Repeat byte
|0C9124| db $1B
|0C9125| db $07 ; Raw block
|0C9126| db $04, $0C, $16, $0C, $08, $08, $00, $0E
|0C912E| db $22 ; Repeat byte
|0C912F| db $03
|0C9130| db $23 ; Repeat byte
|0C9131| db $1B
|0C9132| db $04 ; Raw block
|0C9133| db $05, $1B, $08, $10, $07
|0C9138| db $83 ; Copy past
|0C9139| dw $2200
|0C913B| db $22 ; Repeat byte
|0C913C| db $0A
|0C913D| db $0B ; Raw block
|0C913E| db $03, $03, $1B, $0E, $06, $03, $05, $08
|0C9146| db $07, $08, $14, $01
|0C914A| db $22 ; Repeat byte
|0C914B| db $1B
|0C914C| db $0A ; Raw block
|0C914D| db $15, $16, $03, $03, $07, $01, $08, $08
|0C9155| db $05, $07, $00
|0C9158| db $22 ; Repeat byte
|0C9159| db $1B
|0C915A| db $23 ; Repeat byte
|0C915B| db $15
|0C915C| db $07 ; Raw block
|0C915D| db $03, $02, $07, $00, $02, $08, $07, $09
|0C9165| db $22 ; Repeat byte
|0C9166| db $1B
|0C9167| db $04 ; Raw block
|0C9168| db $0D, $1B, $16, $16, $0D
|0C916D| db $23 ; Repeat byte
|0C916E| db $1B
|0C916F| db $06 ; Raw block
|0C9170| db $00, $03, $05, $07, $02, $1B, $0D
|0C9177| db $23 ; Repeat byte
|0C9178| db $1B
|0C9179| db $01 ; Raw block
|0C917A| db $19, $03
|0C917C| db $43 ; Repeat word
|0C917D| dw $011B
|0C917F| db $16 ; Raw block
|0C9180| db $03, $05, $05, $00, $00, $06, $01, $07
|0C9188| db $1B, $07, $07, $03, $10, $06, $0B, $00
|0C9190| db $07, $07, $1B, $02, $1B, $0F, $05
|0C9197| db $83 ; Copy past
|0C9198| dw $7100
|0C919A| db $07 ; Raw block
|0C919B| db $07, $1B, $0B, $1B, $06, $1B, $07, $0B
|0C91A3| db $24 ; Repeat byte
|0C91A4| db $1B
|0C91A5| db $22 ; Repeat byte
|0C91A6| db $0F
|0C91A7| db $03 ; Raw block
|0C91A8| db $1B, $19, $06, $01
|0C91AC| db $22 ; Repeat byte
|0C91AD| db $1B
|0C91AE| db $09 ; Raw block
|0C91AF| db $0B, $06, $06, $0F, $06, $06, $1B, $01
|0C91B7| db $09, $1B
|0C91B9| db $23 ; Repeat byte
|0C91BA| db $02
|0C91BB| db $22 ; Repeat byte
|0C91BC| db $06
|0C91BD| db $03 ; Raw block
|0C91BE| db $03, $03, $1B, $03
|0C91C2| db $24 ; Repeat byte
|0C91C3| db $1B
|0C91C4| db $26 ; Repeat byte
|0C91C5| db $02
|0C91C6| db $07 ; Raw block
|0C91C7| db $0F, $01, $1B, $0D, $11, $15, $03, $06
|0C91CF| db $22 ; Repeat byte
|0C91D0| db $01
|0C91D1| db $00 ; Raw block
|0C91D2| db $0A
|0C91D3| db $22 ; Repeat byte
|0C91D4| db $01
|0C91D5| db $08 ; Raw block
|0C91D6| db $0E, $01, $01, $0F, $0D, $01, $03, $02
|0C91DE| db $00
|0C91DF| db $84 ; Copy past
|0C91E0| dw $ED00
|0C91E2| db $02 ; Raw block
|0C91E3| db $0D, $01, $01
|0C91E6| db $FF ; End of Map 2C

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen2C_Low:
|0C91E7| db $E0, $20 ; EXT Raw block
|0C91E9| db $44, $4A, $99, $44, $9A, $1C, $2D, $8A
|0C91F1| db $1D, $1D, $41, $1D, $66, $8A, $32, $09
|0C91F9| db $4B, $39, $9F, $4B, $A0, $3A, $4F, $2E
|0C9201| db $3A, $1D, $8A, $8F, $8A, $AA, $88, $83
|0C9209| db $D3
|0C920A| db $62 ; Increment fill
|0C920B| db $A4
|0C920C| db $63 ; Increment fill
|0C920D| db $2F
|0C920E| db $0B ; Raw block
|0C920F| db $8C, $33, $34, $29, $AA, $74, $95, $4C
|0C9217| db $44, $9A, $1D, $5A
|0C921B| db $22 ; Repeat byte
|0C921C| db $88
|0C921D| db $63 ; Increment fill
|0C921E| db $35
|0C921F| db $08 ; Raw block
|0C9220| db $4F, $39, $8F, $F9, $36, $4B, $A0, $3A
|0C9228| db $0E
|0C9229| db $22 ; Repeat byte
|0C922A| db $01
|0C922B| db $0B ; Raw block
|0C922C| db $91, $92, $3B, $3D, $66, $32, $C5, $AA
|0C9234| db $36, $A6, $F3, $77
|0C9238| db $62 ; Increment fill
|0C9239| db $3C
|0C923A| db $0A ; Raw block
|0C923B| db $B9, $82, $98, $99, $41, $1E, $69, $6A
|0C9243| db $E1, $19, $1D
|0C9246| db $62 ; Increment fill
|0C9247| db $3F
|0C9248| db $63 ; Increment fill
|0C9249| db $BC
|0C924A| db $0F ; Raw block
|0C924B| db $A1, $DD, $41, $FB, $3E, $6F, $54, $90
|0C9253| db $0C, $42, $43, $DD, $44, $87, $88, $B8
|0C925B| db $63 ; Increment fill
|0C925C| db $45
|0C925D| db $06 ; Raw block
|0C925E| db $FB, $32, $C5, $89, $DE, $49, $DD
|0C9265| db $63 ; Increment fill
|0C9266| db $4A
|0C9267| db $E0, $29 ; EXT Raw block
|0C9269| db $40, $A1, $4E, $06, $4F, $1E, $32, $C5
|0C9271| db $E1, $A5, $1F, $66, $4B, $C5, $50, $E6
|0C9279| db $C5, $A1, $C3, $A2, $33, $A9, $3A, $3B
|0C9281| db $51, $08, $52, $92, $55, $53, $54, $E1
|0C9289| db $53, $26, $55, $4B, $56, $8A, $57, $3A
|0C9291| db $94, $19
|0C9293| db $62 ; Increment fill
|0C9294| db $58
|0C9295| db $00 ; Raw block
|0C9296| db $19
|0C9297| db $22 ; Repeat byte
|0C9298| db $44
|0C9299| db $10 ; Raw block
|0C929A| db $5B, $C8, $A3, $06, $5C, $5D, $57, $9F
|0C92A2| db $9C, $9C, $10, $93, $9C, $5E, $06, $D5
|0C92AA| db $5F
|0C92AB| db $23 ; Repeat byte
|0C92AC| db $59
|0C92AD| db $06 ; Raw block
|0C92AE| db $93, $9C, $9C, $88, $88, $60, $5C
|0C92B5| db $62 ; Increment fill
|0C92B6| db $61
|0C92B7| db $02 ; Raw block
|0C92B8| db $63, $64, $4B
|0C92BB| db $25 ; Repeat byte
|0C92BC| db $4C
|0C92BD| db $0B ; Raw block
|0C92BE| db $3E, $EB, $65, $97, $24, $92, $5D, $66
|0C92C6| db $48, $49, $EB, $79
|0C92CA| db $22 ; Repeat byte
|0C92CB| db $EB
|0C92CC| db $10 ; Raw block
|0C92CD| db $3B, $06, $06, $12, $4B, $06, $63, $DD
|0C92D5| db $1D, $2E, $00, $40, $06, $06, $A2, $06
|0C92DD| db $06
|0C92DE| db $FF ; End of Map 2C

;===================================================================================================

OverworldMap32_Screen6D_High:
|0C92DF| db $04 ; Raw block
|0C92E0| db $07, $01, $00, $00, $1B
|0C92E5| db $43 ; Repeat word
|0C92E6| dw $121B
|0C92E8| db $18 ; Raw block
|0C92E9| db $18, $1B, $18, $12, $1B, $0D, $01, $07
|0C92F1| db $01, $06, $00, $0D, $1B, $1B, $12, $07
|0C92F9| db $1B, $1B, $0B, $1A, $0D, $04, $02, $07
|0C9301| db $01
|0C9302| db $22 ; Repeat byte
|0C9303| db $1B
|0C9304| db $43 ; Repeat word
|0C9305| dw $1B12
|0C9307| db $00 ; Raw block
|0C9308| db $06
|0C9309| db $22 ; Repeat byte
|0C930A| db $0D
|0C930B| db $08 ; Raw block
|0C930C| db $03, $03, $01, $07, $01, $1B, $10, $1B
|0C9314| db $02
|0C9315| db $22 ; Repeat byte
|0C9316| db $1B
|0C9317| db $23 ; Repeat byte
|0C9318| db $0E
|0C9319| db $03 ; Raw block
|0C931A| db $00, $0E, $0E, $07
|0C931E| db $23 ; Repeat byte
|0C931F| db $1B
|0C9320| db $04 ; Raw block
|0C9321| db $01, $0E, $0E, $02, $02
|0C9326| db $23 ; Repeat byte
|0C9327| db $0E
|0C9328| db $0B ; Raw block
|0C9329| db $02, $02, $07, $06, $01, $01, $06, $00
|0C9331| db $0E, $0E, $00, $06
|0C9335| db $23 ; Repeat byte
|0C9336| db $0E
|0C9337| db $15 ; Raw block
|0C9338| db $00, $06, $05, $07, $06, $01, $02, $02
|0C9340| db $1B, $1B, $00, $1B, $1B, $02, $15, $15
|0C9348| db $02, $02, $05, $05, $08, $06
|0C934E| db $84 ; Copy past
|0C934F| dw $6400
|0C9351| db $09 ; Raw block
|0C9352| db $0D, $03, $02, $0F, $0F, $02, $02, $0E
|0C935A| db $05, $0C
|0C935C| db $22 ; Repeat byte
|0C935D| db $07
|0C935E| db $10 ; Raw block
|0C935F| db $1B, $1B, $02, $1B, $03, $1B, $0F, $1B
|0C9367| db $07, $0C, $09, $07, $05, $05, $08, $05
|0C936F| db $07
|0C9370| db $22 ; Repeat byte
|0C9371| db $1B
|0C9372| db $05 ; Raw block
|0C9373| db $03, $07, $08, $1B, $1B, $0F
|0C9379| db $25 ; Repeat byte
|0C937A| db $07
|0C937B| db $83 ; Copy past
|0C937C| dw $7600
|0C937E| db $00 ; Raw block
|0C937F| db $08
|0C9380| db $22 ; Repeat byte
|0C9381| db $1B
|0C9382| db $27 ; Repeat byte
|0C9383| db $05
|0C9384| db $83 ; Copy past
|0C9385| dw $7600
|0C9387| db $01 ; Raw block
|0C9388| db $1B, $0E
|0C938A| db $43 ; Repeat word
|0C938B| dw $0907
|0C938D| db $22 ; Repeat byte
|0C938E| db $06
|0C938F| db $00 ; Raw block
|0C9390| db $07
|0C9391| db $23 ; Repeat byte
|0C9392| db $1B
|0C9393| db $0F ; Raw block
|0C9394| db $06, $1B, $00, $02, $07, $0B, $07, $07
|0C939C| db $02, $02, $0E, $1B, $12, $1B, $1B, $05
|0C93A4| db $43 ; Repeat word
|0C93A5| dw $0100
|0C93A7| db $00 ; Raw block
|0C93A8| db $0E
|0C93A9| db $83 ; Copy past
|0C93AA| dw $3700
|0C93AC| db $08 ; Raw block
|0C93AD| db $01, $0E, $03, $02, $1B, $05, $00, $00
|0C93B5| db $02
|0C93B6| db $22 ; Repeat byte
|0C93B7| db $01
|0C93B8| db $06 ; Raw block
|0C93B9| db $0E, $03, $0E, $0D, $01, $0B, $01
|0C93C0| db $25 ; Repeat byte
|0C93C1| db $00
|0C93C2| db $22 ; Repeat byte
|0C93C3| db $01
|0C93C4| db $02 ; Raw block
|0C93C5| db $0E, $0B, $0E
|0C93C8| db $FF ; End of Map 6D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen6D_Low:
|0C93C9| db $E0, $21 ; EXT Raw block
|0C93CB| db $4C, $93, $1C, $1D, $66, $67, $85, $68
|0C93D3| db $85, $08, $69, $08, $85, $6A, $EF, $FC
|0C93DB| db $4C, $93, $66, $A9, $F0, $6B, $67, $85
|0C93E3| db $01, $6C, $6D, $EF, $96, $F1, $8E, $61
|0C93EB| db $4C, $93
|0C93ED| db $62 ; Increment fill
|0C93EE| db $6E
|0C93EF| db $04 ; Raw block
|0C93F0| db $7E, $67, $85, $71, $8E
|0C93F5| db $62 ; Increment fill
|0C93F6| db $F8
|0C93F7| db $0B ; Raw block
|0C93F8| db $56, $57, $15, $56, $93, $72, $AD, $73
|0C9400| db $5E, $74, $75, $67
|0C9404| db $63 ; Increment fill
|0C9405| db $01
|0C9406| db $03 ; Raw block
|0C9407| db $A1, $05, $06, $4C
|0C940B| db $63 ; Increment fill
|0C940C| db $76
|0C940D| db $04 ; Raw block
|0C940E| db $1E, $0B, $0C, $5B, $5B
|0C9413| db $62 ; Increment fill
|0C9414| db $0D
|0C9415| db $0D ; Raw block
|0C9416| db $0D, $5B, $5B, $14, $16, $D9, $A0, $66
|0C941E| db $1D, $10, $11, $B2, $66, $12
|0C9424| db $62 ; Increment fill
|0C9425| db $10
|0C9426| db $E0, $41 ; EXT Raw block
|0C9428| db $FB, $66, $E1, $14, $16, $D9, $07, $07
|0C9430| db $7A, $7B, $1D, $7C, $7D, $07, $DE, $DF
|0C9438| db $07, $07, $E0, $E1, $B5, $16, $FB, $FB
|0C9440| db $7E, $7F, $1D, $6A, $9A, $FB, $5E, $5F
|0C9448| db $FB, $FB, $1C, $E1, $4C, $14, $79, $79
|0C9450| db $80, $81, $DA, $82, $32, $83, $69, $84
|0C9458| db $79, $76, $36, $20, $E1, $E1, $AA, $E1
|0C9460| db $6E, $81, $85, $86, $32, $5C, $AA, $87
|0C9468| db $88, $D3
|0C946A| db $25 ; Repeat byte
|0C946B| db $84
|0C946C| db $04 ; Raw block
|0C946D| db $89, $8A, $1D, $6A, $69
|0C9472| db $62 ; Increment fill
|0C9473| db $8B
|0C9474| db $01 ; Raw block
|0C9475| db $D5, $E1
|0C9477| db $25 ; Repeat byte
|0C9478| db $6D
|0C9479| db $09 ; Raw block
|0C947A| db $8E, $8F, $1D, $71, $90, $2F, $3B, $52
|0C9482| db $36, $9D
|0C9484| db $22 ; Repeat byte
|0C9485| db $9C
|0C9486| db $00 ; Raw block
|0C9487| db $04
|0C9488| db $63 ; Increment fill
|0C9489| db $91
|0C948A| db $E0, $37 ; EXT Raw block
|0C948C| db $9C, $95, $A5, $30, $3A, $94, $84, $84
|0C9494| db $4C, $4C, $33, $96, $7E, $97, $98, $4F
|0C949C| db $FB, $1E, $B2, $41, $37, $99, $9A, $3A
|0C94A4| db $3B, $EB, $3C, $8D, $5E, $63, $4F, $1D
|0C94AC| db $AA, $DE, $41, $48, $49, $3B, $4A, $3E
|0C94B4| db $F7, $06, $57, $E3, $1D, $A9, $1D, $1C
|0C94BC| db $1D, $1D, $52, $53, $6A, $3F, $56, $40
|0C94C4| db $FF ; End of Map 6D

;===================================================================================================

OverworldMap32_Screen2E_High:
|0C94C5| db $06 ; Raw block
|0C94C6| db $02, $1B, $16, $02, $06, $04, $05
|0C94CD| db $22 ; Repeat byte
|0C94CE| db $03
|0C94CF| db $02 ; Raw block
|0C94D0| db $1B, $01, $0F
|0C94D3| db $22 ; Repeat byte
|0C94D4| db $01
|0C94D5| db $05 ; Raw block
|0C94D6| db $0D, $09, $01, $02, $06, $04
|0C94DC| db $22 ; Repeat byte
|0C94DD| db $0F
|0C94DE| db $03 ; Raw block
|0C94DF| db $1B, $0F, $01, $0F
|0C94E3| db $22 ; Repeat byte
|0C94E4| db $01
|0C94E5| db $00 ; Raw block
|0C94E6| db $0D
|0C94E7| db $22 ; Repeat byte
|0C94E8| db $1B
|0C94E9| db $00 ; Raw block
|0C94EA| db $08
|0C94EB| db $23 ; Repeat byte
|0C94EC| db $1B
|0C94ED| db $00 ; Raw block
|0C94EE| db $04
|0C94EF| db $84 ; Copy past
|0C94F0| dw $0A00
|0C94F2| db $01 ; Raw block
|0C94F3| db $02, $0E
|0C94F5| db $22 ; Repeat byte
|0C94F6| db $1B
|0C94F7| db $00 ; Raw block
|0C94F8| db $01
|0C94F9| db $22 ; Repeat byte
|0C94FA| db $1B
|0C94FB| db $05 ; Raw block
|0C94FC| db $08, $08, $01, $01, $1B, $01
|0C9502| db $22 ; Repeat byte
|0C9503| db $02
|0C9504| db $05 ; Raw block
|0C9505| db $1B, $09, $01, $01, $1B, $00
|0C950B| db $83 ; Copy past
|0C950C| dw $3300
|0C950E| db $43 ; Repeat word
|0C950F| dw $0201
|0C9511| db $04 ; Raw block
|0C9512| db $02, $10, $00, $00, $01
|0C9517| db $45 ; Repeat word
|0C9518| dw $1B01
|0C951A| db $00 ; Raw block
|0C951B| db $00
|0C951C| db $22 ; Repeat byte
|0C951D| db $1B
|0C951E| db $24 ; Repeat byte
|0C951F| db $02
|0C9520| db $03 ; Raw block
|0C9521| db $01, $1B, $06, $06
|0C9525| db $22 ; Repeat byte
|0C9526| db $1B
|0C9527| db $0A ; Raw block
|0C9528| db $01, $1B, $01, $06, $02, $05, $0E, $0E
|0C9530| db $1B, $01, $01
|0C9533| db $23 ; Repeat byte
|0C9534| db $1B
|0C9535| db $06 ; Raw block
|0C9536| db $01, $04, $03, $06, $1B, $05, $05
|0C953D| db $22 ; Repeat byte
|0C953E| db $07
|0C953F| db $01 ; Raw block
|0C9540| db $06, $09
|0C9542| db $24 ; Repeat byte
|0C9543| db $1B
|0C9544| db $0A ; Raw block
|0C9545| db $19, $01, $03, $03, $05, $0F, $07, $05
|0C954D| db $1B, $07, $09
|0C9550| db $24 ; Repeat byte
|0C9551| db $06
|0C9552| db $19 ; Raw block
|0C9553| db $07, $01, $08, $03, $10, $1B, $05, $09
|0C955B| db $05, $05, $08, $09, $07, $07, $09, $09
|0C9563| db $08, $1B, $1B, $06, $01, $02, $07, $05
|0C956B| db $07, $07
|0C956D| db $24 ; Repeat byte
|0C956E| db $1B
|0C956F| db $01 ; Raw block
|0C9570| db $09, $05
|0C9572| db $22 ; Repeat byte
|0C9573| db $1B
|0C9574| db $04 ; Raw block
|0C9575| db $01, $1B, $07, $07, $09
|0C957A| db $83 ; Copy past
|0C957B| dw $3300
|0C957D| db $03 ; Raw block
|0C957E| db $0F, $0F, $05, $0C
|0C9582| db $22 ; Repeat byte
|0C9583| db $1B
|0C9584| db $01 ; Raw block
|0C9585| db $02, $02
|0C9587| db $22 ; Repeat byte
|0C9588| db $0E
|0C9589| db $07 ; Raw block
|0C958A| db $1B, $01, $10, $02, $1B, $0F, $07, $08
|0C9592| db $83 ; Copy past
|0C9593| dw $4900
|0C9595| db $00 ; Raw block
|0C9596| db $02
|0C9597| db $22 ; Repeat byte
|0C9598| db $0E
|0C9599| db $04 ; Raw block
|0C959A| db $1B, $05, $01, $0B, $02
|0C959F| db $83 ; Copy past
|0C95A0| dw $8F00
|0C95A2| db $06 ; Raw block
|0C95A3| db $09, $01, $02, $02, $01, $06, $01
|0C95AA| db $43 ; Repeat word
|0C95AB| dw $0B01
|0C95AD| db $84 ; Copy past
|0C95AE| dw $E700
|0C95B0| db $03 ; Raw block
|0C95B1| db $08, $01, $02, $02
|0C95B5| db $FF ; End of Map 2E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen2E_Low:
|0C95B6| db $06 ; Raw block
|0C95B7| db $7A, $9B, $AE, $DD, $66, $8D, $61
|0C95BE| db $22 ; Repeat byte
|0C95BF| db $20
|0C95C0| db $02 ; Raw block
|0C95C1| db $9C, $03, $43
|0C95C4| db $22 ; Repeat byte
|0C95C5| db $03
|0C95C6| db $0C ; Raw block
|0C95C7| db $F2, $F3, $ED, $91, $70, $93, $42, $43
|0C95CF| db $43, $9D, $43, $03, $43
|0C95D4| db $22 ; Repeat byte
|0C95D5| db $03
|0C95D6| db $00 ; Raw block
|0C95D7| db $FB
|0C95D8| db $62 ; Increment fill
|0C95D9| db $9E
|0C95DA| db $06 ; Raw block
|0C95DB| db $2D, $A1, $17, $19, $19, $74, $19
|0C95E2| db $83 ; Copy past
|0C95E3| dw $0B00
|0C95E5| db $01 ; Raw block
|0C95E6| db $75, $06
|0C95E8| db $62 ; Increment fill
|0C95E9| db $A2
|0C95EA| db $00 ; Raw block
|0C95EB| db $43
|0C95EC| db $62 ; Increment fill
|0C95ED| db $A5
|0C95EE| db $E0, $22 ; EXT Raw block
|0C95F0| db $2D, $2D, $1E, $E4, $19, $03, $75, $82
|0C95F8| db $5B, $A8, $DD, $4D, $4E, $05, $09, $A9
|0C9600| db $43, $01, $AA, $26, $DE, $F3, $82, $82
|0C9608| db $73, $A5, $1C, $57, $58, $08, $0E, $AB
|0C9610| db $4E, $05, $09
|0C9613| db $62 ; Increment fill
|0C9614| db $AC
|0C9615| db $01 ; Raw block
|0C9616| db $82, $82
|0C9618| db $22 ; Repeat byte
|0C9619| db $07
|0C961A| db $1C ; Raw block
|0C961B| db $A0, $AF, $7C, $7C, $B0, $B1, $08, $0E
|0C9623| db $B2, $1B, $A5, $82, $60, $17, $17, $B3
|0C962B| db $D9, $AA, $B4, $B5, $B5, $B6, $AB, $95
|0C9633| db $D5, $33, $B7, $60, $63
|0C9638| db $22 ; Repeat byte
|0C9639| db $79
|0C963A| db $01 ; Raw block
|0C963B| db $16, $F0
|0C963D| db $24 ; Repeat byte
|0C963E| db $B8
|0C963F| db $0A ; Raw block
|0C9640| db $D8, $A0, $E2, $50, $63, $B8, $36, $E1
|0C9648| db $B9, $14, $F7
|0C964B| db $24 ; Repeat byte
|0C964C| db $A0
|0C964D| db $1A ; Raw block
|0C964E| db $1C, $D9, $B3, $56, $6B, $BA, $E1, $9D
|0C9656| db $E1, $E1, $D7, $47, $22, $22, $49, $90
|0C965E| db $B5, $BB, $BC, $C1, $77, $82, $36, $E1
|0C9666| db $36, $67, $BD
|0C9669| db $22 ; Repeat byte
|0C966A| db $BE
|0C966B| db $02 ; Raw block
|0C966C| db $BF, $52, $E1
|0C966F| db $62 ; Increment fill
|0C9670| db $C0
|0C9671| db $11 ; Raw block
|0C9672| db $5B, $C3, $84, $84, $FC, $C4, $54, $C5
|0C967A| db $C6, $36, $C8, $DF, $4C, $C0, $C1, $C7
|0C9682| db $98, $98
|0C9684| db $22 ; Repeat byte
|0C9685| db $3A
|0C9686| db $0C ; Raw block
|0C9687| db $C8, $55, $F6, $D1, $C9, $56, $8E, $AA
|0C968F| db $C0, $CA, $77, $82, $82
|0C9694| db $22 ; Repeat byte
|0C9695| db $3E
|0C9696| db $0F ; Raw block
|0C9697| db $CB, $9D, $06, $4B, $DC, $61, $8E, $E1
|0C969F| db $C0, $B1, $77, $82, $82, $06, $A2, $06
|0C96A7| db $43 ; Repeat word
|0C96A8| dw $4B06
|0C96AA| db $84 ; Copy past
|0C96AB| dw $E700
|0C96AD| db $03 ; Raw block
|0C96AE| db $B7, $77, $82, $82
|0C96B2| db $FF ; End of Map 2E

;===================================================================================================

OverworldMap32_Screen2F_High:
|0C96B3| db $22 ; Repeat byte
|0C96B4| db $03
|0C96B5| db $22 ; Repeat byte
|0C96B6| db $01
|0C96B7| db $09 ; Raw block
|0C96B8| db $05, $05, $01, $1B, $05, $1B, $1B, $01
|0C96C0| db $01, $1B
|0C96C2| db $22 ; Repeat byte
|0C96C3| db $03
|0C96C4| db $04 ; Raw block
|0C96C5| db $01, $06, $0A, $05, $05
|0C96CA| db $22 ; Repeat byte
|0C96CB| db $01
|0C96CC| db $1E ; Raw block
|0C96CD| db $1B, $1B, $06, $01, $1B, $1B, $03, $04
|0C96D5| db $01, $1B, $1B, $05, $05, $01, $02, $10
|0C96DD| db $05, $1B, $01, $06, $02, $1B, $1B, $03
|0C96E5| db $06, $01, $0A, $0A, $05, $0A, $0A
|0C96EC| db $22 ; Repeat byte
|0C96ED| db $05
|0C96EE| db $0D ; Raw block
|0C96EF| db $1B, $01, $02, $01, $1B, $00, $06, $01
|0C96F7| db $0A, $16, $05, $05, $06, $05
|0C96FD| db $83 ; Copy past
|0C96FE| dw $0A00
|0C9700| db $01 ; Raw block
|0C9701| db $0E, $01
|0C9703| db $84 ; Copy past
|0C9704| dw $0B00
|0C9706| db $22 ; Repeat byte
|0C9707| db $05
|0C9708| db $0F ; Raw block
|0C9709| db $0A, $10, $0F, $1B, $01, $01, $19, $01
|0C9711| db $1B, $1B, $10, $01, $1B, $0C, $05, $05
|0C9719| db $24 ; Repeat byte
|0C971A| db $1B
|0C971B| db $0D ; Raw block
|0C971C| db $01, $0C, $01, $02, $1B, $15, $1B, $1B
|0C9724| db $11, $1B, $06, $1B, $1B, $03
|0C972A| db $22 ; Repeat byte
|0C972B| db $01
|0C972C| db $08 ; Raw block
|0C972D| db $1B, $01, $0C, $02, $07, $12, $1B, $1B
|0C9735| db $16
|0C9736| db $22 ; Repeat byte
|0C9737| db $1B
|0C9738| db $43 ; Repeat word
|0C9739| dw $0103
|0C973B| db $04 ; Raw block
|0C973C| db $01, $05, $1B, $1B, $0D
|0C9741| db $22 ; Repeat byte
|0C9742| db $1B
|0C9743| db $06 ; Raw block
|0C9744| db $05, $1B, $1B, $12, $0F, $01, $1B
|0C974B| db $23 ; Repeat byte
|0C974C| db $01
|0C974D| db $02 ; Raw block
|0C974E| db $02, $02, $1A
|0C9751| db $22 ; Repeat byte
|0C9752| db $1B
|0C9753| db $05 ; Raw block
|0C9754| db $1C, $1C, $0B, $1C, $02, $02
|0C975A| db $23 ; Repeat byte
|0C975B| db $01
|0C975C| db $0C ; Raw block
|0C975D| db $1C, $04, $06, $02, $02, $1C, $1C, $06
|0C9765| db $00, $02, $0F, $02, $00
|0C976A| db $22 ; Repeat byte
|0C976B| db $01
|0C976C| db $00 ; Raw block
|0C976D| db $02
|0C976E| db $23 ; Repeat byte
|0C976F| db $00
|0C9770| db $03 ; Raw block
|0C9771| db $01, $02, $02, $0E
|0C9775| db $22 ; Repeat byte
|0C9776| db $1C
|0C9777| db $07 ; Raw block
|0C9778| db $02, $1C, $01, $01, $0C, $00, $02, $10
|0C9780| db $23 ; Repeat byte
|0C9781| db $01
|0C9782| db $0B ; Raw block
|0C9783| db $0E, $07, $02, $02, $1C, $05, $01, $1C
|0C978B| db $02, $07, $03, $03
|0C978F| db $22 ; Repeat byte
|0C9790| db $01
|0C9791| db $01 ; Raw block
|0C9792| db $1C, $1C
|0C9794| db $23 ; Repeat byte
|0C9795| db $01
|0C9796| db $08 ; Raw block
|0C9797| db $1C, $1C, $10, $1C, $0D, $03, $03, $0D
|0C979F| db $01
|0C97A0| db $24 ; Repeat byte
|0C97A1| db $1C
|0C97A2| db $02 ; Raw block
|0C97A3| db $0F, $1C, $1C
|0C97A6| db $FF ; End of Map 2F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen2F_Low:
|0C97A7| db $22 ; Repeat byte
|0C97A8| db $6C
|0C97A9| db $22 ; Repeat byte
|0C97AA| db $15
|0C97AB| db $09 ; Raw block
|0C97AC| db $B1, $A6, $06, $CC, $89, $CD, $CE, $71
|0C97B4| db $06, $CF
|0C97B6| db $22 ; Repeat byte
|0C97B7| db $6C
|0C97B8| db $E0, $42 ; EXT Raw block
|0C97BA| db $15, $AD, $1D, $D0, $B1, $0A, $FD, $ED
|0C97C2| db $D0, $D1, $12, $0C, $D2, $D3, $6C, $84
|0C97CA| db $22, $D4, $D5, $DC, $D0, $15, $01, $8B
|0C97D2| db $FB, $D6, $03, $1B, $69, $D7, $D8, $A8
|0C97DA| db $66, $77, $CF, $0C, $DC, $1D, $F5, $FB
|0C97E2| db $FB, $E8, $D9, $71, $69, $D6, $DA, $A5
|0C97EA| db $70, $77, $CF, $98, $FB, $E8, $05, $E8
|0C97F2| db $F5, $DB, $DC, $5C, $D9, $D6, $DD, $DE
|0C97FA| db $1E, $77, $DF
|0C97FD| db $22 ; Repeat byte
|0C97FE| db $FB
|0C97FF| db $0F ; Raw block
|0C9800| db $0C, $8F, $FB, $E0, $49, $6A, $C1, $D6
|0C9808| db $E1, $E2, $74, $77, $E3, $96, $E8, $FD
|0C9810| db $64 ; Increment fill
|0C9811| db $E4
|0C9812| db $19 ; Raw block
|0C9813| db $0C, $ED, $D6, $DD, $E9, $F6, $EA, $EB
|0C981B| db $16, $EC, $06, $ED, $EE, $5A, $F8, $F8
|0C9823| db $17, $EF, $D6, $DE, $42, $01, $7F, $F0
|0C982B| db $F1, $C3
|0C982D| db $62 ; Increment fill
|0C982E| db $F2
|0C982F| db $07 ; Raw block
|0C9830| db $5A, $F8, $7B, $03, $17, $D2, $F5, $F6
|0C9838| db $63 ; Increment fill
|0C9839| db $F6
|0C983A| db $0D ; Raw block
|0C983B| db $E8, $FA, $FB, $7F, $A4, $E5, $FC, $03
|0C9843| db $03, $D6, $D6, $DD, $5E, $27
|0C9849| db $62 ; Increment fill
|0C984A| db $FD
|0C984B| db $E0, $22 ; EXT Raw block
|0C984D| db $00, $01, $EF, $02, $DA, $D4, $E4, $24
|0C9855| db $D6, $D6, $03, $BB, $66, $5E, $5B, $04
|0C985D| db $05, $66, $1D, $E6, $FF, $E6, $1D, $2E
|0C9865| db $D6, $D6, $DD, $1D, $FB, $1D, $AA, $41
|0C986D| db $4B, $4C, $33
|0C9870| db $62 ; Increment fill
|0C9871| db $06
|0C9872| db $1C ; Raw block
|0C9873| db $8D, $09, $D6, $D6, $DE, $1D, $8A, $79
|0C987B| db $41, $48, $49, $EB, $3C, $CF, $4C, $4C
|0C9883| db $0A, $9D, $D6, $0B, $D2, $BF, $44, $44
|0C988B| db $48, $49, $6A, $0C, $0D
|0C9890| db $22 ; Repeat byte
|0C9891| db $EB
|0C9892| db $0A ; Raw block
|0C9893| db $EC, $0C, $0E, $70, $0F, $A1, $4B, $4B
|0C989B| db $E9, $6A, $0C
|0C989E| db $63 ; Increment fill
|0C989F| db $10
|0C98A0| db $02 ; Raw block
|0C98A1| db $2C, $14, $15
|0C98A4| db $FF ; End of Map 2F

;===================================================================================================

OverworldMap32_Screen70_High:
|0C98A5| db $02 ; Raw block
|0C98A6| db $1C, $03, $04
|0C98A9| db $22 ; Repeat byte
|0C98AA| db $01
|0C98AB| db $00 ; Raw block
|0C98AC| db $03
|0C98AD| db $25 ; Repeat byte
|0C98AE| db $01
|0C98AF| db $05 ; Raw block
|0C98B0| db $1C, $01, $01, $03, $03, $0E
|0C98B6| db $22 ; Repeat byte
|0C98B7| db $01
|0C98B8| db $00 ; Raw block
|0C98B9| db $03
|0C98BA| db $28 ; Repeat byte
|0C98BB| db $01
|0C98BC| db $06 ; Raw block
|0C98BD| db $1C, $0E, $19, $03, $1C, $0A, $0C
|0C98C4| db $28 ; Repeat byte
|0C98C5| db $0A
|0C98C6| db $03 ; Raw block
|0C98C7| db $1C, $19, $1C, $10
|0C98CB| db $23 ; Repeat byte
|0C98CC| db $1C
|0C98CD| db $23 ; Repeat byte
|0C98CE| db $05
|0C98CF| db $23 ; Repeat byte
|0C98D0| db $1C
|0C98D1| db $02 ; Raw block
|0C98D2| db $02, $06, $03
|0C98D5| db $2C ; Repeat byte
|0C98D6| db $1C
|0C98D7| db $02 ; Raw block
|0C98D8| db $02, $01, $03
|0C98DB| db $25 ; Repeat byte
|0C98DC| db $1C
|0C98DD| db $02 ; Raw block
|0C98DE| db $05, $1C, $05
|0C98E1| db $22 ; Repeat byte
|0C98E2| db $1C
|0C98E3| db $03 ; Raw block
|0C98E4| db $05, $02, $01, $03
|0C98E8| db $22 ; Repeat byte
|0C98E9| db $1C
|0C98EA| db $00 ; Raw block
|0C98EB| db $11
|0C98EC| db $28 ; Repeat byte
|0C98ED| db $1C
|0C98EE| db $06 ; Raw block
|0C98EF| db $02, $0C, $10, $1C, $1C, $10, $07
|0C98F6| db $23 ; Repeat byte
|0C98F7| db $1C
|0C98F8| db $00 ; Raw block
|0C98F9| db $0F
|0C98FA| db $23 ; Repeat byte
|0C98FB| db $1C
|0C98FC| db $06 ; Raw block
|0C98FD| db $02, $01, $0F, $1C, $10, $05, $07
|0C9904| db $25 ; Repeat byte
|0C9905| db $1C
|0C9906| db $04 ; Raw block
|0C9907| db $05, $05, $1C, $02, $06
|0C990C| db $2A ; Repeat byte
|0C990D| db $1C
|0C990E| db $09 ; Raw block
|0C990F| db $05, $11, $05, $02, $01, $0D, $06, $1C
|0C9917| db $1C, $05
|0C9919| db $24 ; Repeat byte
|0C991A| db $1C
|0C991B| db $04 ; Raw block
|0C991C| db $05, $10, $07, $0F, $0F
|0C9921| db $24 ; Repeat byte
|0C9922| db $1C
|0C9923| db $00 ; Raw block
|0C9924| db $05
|0C9925| db $24 ; Repeat byte
|0C9926| db $1C
|0C9927| db $0A ; Raw block
|0C9928| db $10, $05, $0E, $1C, $0D, $1C, $1C, $0E
|0C9930| db $1C, $1C, $05
|0C9933| db $24 ; Repeat byte
|0C9934| db $1C
|0C9935| db $0A ; Raw block
|0C9936| db $11, $07, $1C, $1C, $0C, $03, $1C, $0E
|0C993E| db $06, $1C, $05
|0C9941| db $22 ; Repeat byte
|0C9942| db $1C
|0C9943| db $0A ; Raw block
|0C9944| db $11, $1C, $11, $05, $1C, $1C, $06, $03
|0C994C| db $0E, $0E, $1C
|0C994F| db $46 ; Repeat word
|0C9950| dw $051C
|0C9952| db $05 ; Raw block
|0C9953| db $11, $15, $1C, $1C, $19, $03
|0C9959| db $23 ; Repeat byte
|0C995A| db $1C
|0C995B| db $00 ; Raw block
|0C995C| db $05
|0C995D| db $24 ; Repeat byte
|0C995E| db $1C
|0C995F| db $83 ; Copy past
|0C9960| dw $EC00
|0C9962| db $FF ; End of Map 70

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen70_Low:
|0C9963| db $02 ; Raw block
|0C9964| db $16, $6A, $92
|0C9967| db $22 ; Repeat byte
|0C9968| db $F8
|0C9969| db $00 ; Raw block
|0C996A| db $9C
|0C996B| db $25 ; Repeat byte
|0C996C| db $15
|0C996D| db $09 ; Raw block
|0C996E| db $17, $0A, $0A, $6A, $6B, $4F, $02, $02
|0C9976| db $F8, $9C
|0C9978| db $28 ; Repeat byte
|0C9979| db $15
|0C997A| db $06 ; Raw block
|0C997B| db $18, $56, $C8, $6A, $19, $08, $90
|0C9982| db $28 ; Repeat byte
|0C9983| db $1D
|0C9984| db $07 ; Raw block
|0C9985| db $1A, $C8, $1B, $C9, $1C, $1D, $1D, $1E
|0C998D| db $23 ; Repeat byte
|0C998E| db $FB
|0C998F| db $00 ; Raw block
|0C9990| db $1F
|0C9991| db $22 ; Repeat byte
|0C9992| db $1D
|0C9993| db $02 ; Raw block
|0C9994| db $DC, $A2, $63
|0C9997| db $64 ; Increment fill
|0C9998| db $20
|0C9999| db $23 ; Repeat byte
|0C999A| db $1D
|0C999B| db $06 ; Raw block
|0C999C| db $25, $26, $22, $27, $DC, $06, $63
|0C99A3| db $65 ; Increment fill
|0C99A4| db $28
|0C99A5| db $06 ; Raw block
|0C99A6| db $A4, $2E, $A4, $2F, $29, $2A, $A4
|0C99AD| db $83 ; Copy past
|0C99AE| dw $5000
|0C99B0| db $02 ; Raw block
|0C99B1| db $30, $31, $01
|0C99B4| db $63 ; Increment fill
|0C99B5| db $32
|0C99B6| db $01 ; Raw block
|0C99B7| db $32, $32
|0C99B9| db $62 ; Increment fill
|0C99BA| db $30
|0C99BB| db $06 ; Raw block
|0C99BC| db $DC, $ED, $63, $36, $27, $AE, $89
|0C99C3| db $63 ; Increment fill
|0C99C4| db $37
|0C99C5| db $00 ; Raw block
|0C99C6| db $9A
|0C99C7| db $63 ; Increment fill
|0C99C8| db $3B
|0C99C9| db $06 ; Raw block
|0C99CA| db $DC, $06, $24, $3F, $BB, $E1, $36
|0C99D1| db $65 ; Increment fill
|0C99D2| db $40
|0C99D3| db $04 ; Raw block
|0C99D4| db $A4, $A4, $32, $DC, $A2
|0C99D9| db $69 ; Increment fill
|0C99DA| db $46
|0C99DB| db $0A ; Raw block
|0C99DC| db $2E, $A4, $01, $C9, $DC, $06, $97, $0E
|0C99E4| db $50, $51, $A4
|0C99E7| db $63 ; Increment fill
|0C99E8| db $52
|0C99E9| db $05 ; Raw block
|0C99EA| db $4F, $A4, $AE, $36, $70, $0A
|0C99F0| db $62 ; Increment fill
|0C99F1| db $56
|0C99F2| db $03 ; Raw block
|0C99F3| db $28, $27, $A4, $52
|0C99F7| db $62 ; Increment fill
|0C99F8| db $59
|0C99F9| db $0B ; Raw block
|0C99FA| db $4F, $BB, $E1, $23, $5C, $97, $5D, $5E
|0C9A02| db $9A, $5F, $60, $A4
|0C9A06| db $64 ; Increment fill
|0C9A07| db $61
|0C9A08| db $0A ; Raw block
|0C9A09| db $0A, $89, $66, $67, $ED, $63, $68, $9A
|0C9A11| db $20, $69, $A4
|0C9A14| db $62 ; Increment fill
|0C9A15| db $6A
|0C9A16| db $1C ; Raw block
|0C9A17| db $0B, $6A, $0A, $E1, $6D, $6E, $A2, $63
|0C9A1F| db $AE, $9A, $6F, $70, $A4, $32, $A4, $71
|0C9A27| db $A4, $32, $0A, $64, $72, $73, $B2, $63
|0C9A2F| db $74, $75, $28, $2C, $A4
|0C9A34| db $63 ; Increment fill
|0C9A35| db $76
|0C9A36| db $04 ; Raw block
|0C9A37| db $77, $0A, $7D, $24, $7A
|0C9A3C| db $FF ; End of Map 70

;===================================================================================================

OverworldMap32_Screen71_High:
|0C9A3D| db $26 ; Repeat byte
|0C9A3E| db $01
|0C9A3F| db $00 ; Raw block
|0C9A40| db $05
|0C9A41| db $2E ; Repeat byte
|0C9A42| db $01
|0C9A43| db $01 ; Raw block
|0C9A44| db $05, $05
|0C9A46| db $26 ; Repeat byte
|0C9A47| db $01
|0C9A48| db $26 ; Repeat byte
|0C9A49| db $0A
|0C9A4A| db $01 ; Raw block
|0C9A4B| db $1C, $0E
|0C9A4D| db $26 ; Repeat byte
|0C9A4E| db $01
|0C9A4F| db $23 ; Repeat byte
|0C9A50| db $1C
|0C9A51| db $03 ; Raw block
|0C9A52| db $05, $1B, $10, $1B
|0C9A56| db $27 ; Repeat byte
|0C9A57| db $01
|0C9A58| db $02 ; Raw block
|0C9A59| db $1C, $1C, $10
|0C9A5C| db $22 ; Repeat byte
|0C9A5D| db $1C
|0C9A5E| db $01 ; Raw block
|0C9A5F| db $10, $0D
|0C9A61| db $27 ; Repeat byte
|0C9A62| db $01
|0C9A63| db $04 ; Raw block
|0C9A64| db $05, $1C, $15, $1C, $1C
|0C9A69| db $2A ; Repeat byte
|0C9A6A| db $01
|0C9A6B| db $01 ; Raw block
|0C9A6C| db $10, $15
|0C9A6E| db $22 ; Repeat byte
|0C9A6F| db $1C
|0C9A70| db $2A ; Repeat byte
|0C9A71| db $01
|0C9A72| db $01 ; Raw block
|0C9A73| db $15, $15
|0C9A75| db $22 ; Repeat byte
|0C9A76| db $1C
|0C9A77| db $26 ; Repeat byte
|0C9A78| db $03
|0C9A79| db $23 ; Repeat byte
|0C9A7A| db $01
|0C9A7B| db $07 ; Raw block
|0C9A7C| db $0F, $1C, $05, $1C, $1C, $05, $03, $01
|0C9A84| db $43 ; Repeat word
|0C9A85| dw $0E01
|0C9A87| db $00 ; Raw block
|0C9A88| db $05
|0C9A89| db $22 ; Repeat byte
|0C9A8A| db $01
|0C9A8B| db $22 ; Repeat byte
|0C9A8C| db $1C
|0C9A8D| db $43 ; Repeat word
|0C9A8E| dw $1C05
|0C9A90| db $00 ; Raw block
|0C9A91| db $0A
|0C9A92| db $43 ; Repeat word
|0C9A93| dw $0E0A
|0C9A95| db $83 ; Copy past
|0C9A96| dw $1700
|0C9A98| db $22 ; Repeat byte
|0C9A99| db $1C
|0C9A9A| db $03 ; Raw block
|0C9A9B| db $10, $1C, $1C, $05
|0C9A9F| db $23 ; Repeat byte
|0C9AA0| db $1C
|0C9AA1| db $00 ; Raw block
|0C9AA2| db $05
|0C9AA3| db $83 ; Copy past
|0C9AA4| dw $2700
|0C9AA6| db $00 ; Raw block
|0C9AA7| db $1C
|0C9AA8| db $43 ; Repeat word
|0C9AA9| dw $051C
|0C9AAB| db $22 ; Repeat byte
|0C9AAC| db $1C
|0C9AAD| db $83 ; Copy past
|0C9AAE| dw $8200
|0C9AB0| db $03 ; Raw block
|0C9AB1| db $05, $06, $01, $0F
|0C9AB5| db $23 ; Repeat byte
|0C9AB6| db $1C
|0C9AB7| db $02 ; Raw block
|0C9AB8| db $05, $1C, $05
|0C9ABB| db $25 ; Repeat byte
|0C9ABC| db $1C
|0C9ABD| db $22 ; Repeat byte
|0C9ABE| db $01
|0C9ABF| db $22 ; Repeat byte
|0C9AC0| db $1C
|0C9AC1| db $04 ; Raw block
|0C9AC2| db $10, $1C, $11, $05, $11
|0C9AC7| db $84 ; Copy past
|0C9AC8| dw $4000
|0C9ACA| db $00 ; Raw block
|0C9ACB| db $0C
|0C9ACC| db $84 ; Copy past
|0C9ACD| dw $AE00
|0C9ACF| db $23 ; Repeat byte
|0C9AD0| db $1C
|0C9AD1| db $02 ; Raw block
|0C9AD2| db $15, $1C, $05
|0C9AD5| db $23 ; Repeat byte
|0C9AD6| db $1C
|0C9AD7| db $01 ; Raw block
|0C9AD8| db $0D, $01
|0C9ADA| db $24 ; Repeat byte
|0C9ADB| db $1C
|0C9ADC| db $01 ; Raw block
|0C9ADD| db $0F, $1C
|0C9ADF| db $43 ; Repeat word
|0C9AE0| dw $051C
|0C9AE2| db $04 ; Raw block
|0C9AE3| db $05, $1C, $1C, $0D, $1C
|0C9AE8| db $FF ; End of Map 71

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen71_Low:
|0C9AE9| db $26 ; Repeat byte
|0C9AEA| db $0A
|0C9AEB| db $00 ; Raw block
|0C9AEC| db $A6
|0C9AED| db $27 ; Repeat byte
|0C9AEE| db $06
|0C9AEF| db $26 ; Repeat byte
|0C9AF0| db $15
|0C9AF1| db $01 ; Raw block
|0C9AF2| db $B1, $A6
|0C9AF4| db $26 ; Repeat byte
|0C9AF5| db $06
|0C9AF6| db $26 ; Repeat byte
|0C9AF7| db $1D
|0C9AF8| db $01 ; Raw block
|0C9AF9| db $7B, $EE
|0C9AFB| db $26 ; Repeat byte
|0C9AFC| db $06
|0C9AFD| db $22 ; Repeat byte
|0C9AFE| db $1D
|0C9AFF| db $05 ; Raw block
|0C9B00| db $1E, $FB, $DB, $EC, $DC, $5C
|0C9B06| db $26 ; Repeat byte
|0C9B07| db $06
|0C9B08| db $02 ; Raw block
|0C9B09| db $45, $27, $AE
|0C9B0C| db $62 ; Increment fill
|0C9B0D| db $7C
|0C9B0E| db $02 ; Raw block
|0C9B0F| db $54, $E9, $6A
|0C9B12| db $26 ; Repeat byte
|0C9B13| db $06
|0C9B14| db $05 ; Raw block
|0C9B15| db $A4, $7F, $61, $80, $81, $53
|0C9B1B| db $29 ; Repeat byte
|0C9B1C| db $06
|0C9B1D| db $05 ; Raw block
|0C9B1E| db $AE, $7D, $32, $45, $82, $71
|0C9B24| db $29 ; Repeat byte
|0C9B25| db $06
|0C9B26| db $01 ; Raw block
|0C9B27| db $61, $61
|0C9B29| db $62 ; Increment fill
|0C9B2A| db $83
|0C9B2B| db $01 ; Raw block
|0C9B2C| db $51, $52
|0C9B2E| db $23 ; Repeat byte
|0C9B2F| db $20
|0C9B30| db $00 ; Raw block
|0C9B31| db $21
|0C9B32| db $23 ; Repeat byte
|0C9B33| db $06
|0C9B34| db $0C ; Raw block
|0C9B35| db $86, $86, $A4, $27, $87, $D0, $5A, $F8
|0C9B3D| db $F8, $E4, $F8, $E5, $A6
|0C9B42| db $22 ; Repeat byte
|0C9B43| db $06
|0C9B44| db $0B ; Raw block
|0C9B45| db $88, $80, $71, $A4, $89, $DC, $8A, $08
|0C9B4D| db $08, $E9, $08, $83
|0C9B51| db $83 ; Copy past
|0C9B52| dw $1700
|0C9B54| db $0B ; Raw block
|0C9B55| db $8B, $27, $45, $AD, $24, $1E, $FB, $1F
|0C9B5D| db $1D, $1D, $8C, $DC
|0C9B61| db $83 ; Copy past
|0C9B62| dw $2700
|0C9B64| db $19 ; Raw block
|0C9B65| db $8D, $2F, $A4, $84, $A4, $8E, $1D, $25
|0C9B6D| db $A4, $8F, $90, $FB, $E9, $12, $0C, $12
|0C9B75| db $91, $92, $78, $93, $A4, $2F, $A4, $27
|0C9B7D| db $94, $27
|0C9B7F| db $62 ; Increment fill
|0C9B80| db $95
|0C9B81| db $E0, $2C ; EXT Raw block
|0C9B83| db $03, $17, $0C, $98, $99, $45, $AD, $9A
|0C9B8B| db $01, $C9, $02, $9B, $45, $AD, $9C, $96
|0C9B93| db $8E, $24, $00, $9D, $36, $A4, $84, $2F
|0C9B9B| db $9E, $9F, $7D, $A0, $A4, $84, $27, $9C
|0C9BA3| db $96, $01, $00, $A1, $A2, $27, $45, $84
|0C9BAB| db $9C, $49, $80, $A4, $A3
|0C9BB0| db $22 ; Repeat byte
|0C9BB1| db $A4
|0C9BB2| db $02 ; Raw block
|0C9BB3| db $A5, $01, $A6
|0C9BB6| db $FF ; End of Map 71

;===================================================================================================

OverworldMap32_Screen72_High:
|0C9BB7| db $03 ; Raw block
|0C9BB8| db $00, $01, $07, $01
|0C9BBC| db $22 ; Repeat byte
|0C9BBD| db $08
|0C9BBE| db $08 ; Raw block
|0C9BBF| db $02, $0E, $04, $08, $08, $04, $08, $08
|0C9BC7| db $04
|0C9BC8| db $83 ; Copy past
|0C9BC9| dw $0000
|0C9BCB| db $22 ; Repeat byte
|0C9BCC| db $08
|0C9BCD| db $00 ; Raw block
|0C9BCE| db $06
|0C9BCF| db $86 ; Copy past
|0C9BD0| dw $0800
|0C9BD2| db $22 ; Repeat byte
|0C9BD3| db $04
|0C9BD4| db $06 ; Raw block
|0C9BD5| db $07, $06, $08, $08, $01, $00, $01
|0C9BDC| db $26 ; Repeat byte
|0C9BDD| db $08
|0C9BDE| db $0A ; Raw block
|0C9BDF| db $01, $01, $0C, $06, $00, $01, $01, $06
|0C9BE7| db $01, $01, $06
|0C9BEA| db $83 ; Copy past
|0C9BEB| dw $0E00
|0C9BED| db $00 ; Raw block
|0C9BEE| db $03
|0C9BEF| db $23 ; Repeat byte
|0C9BF0| db $0E
|0C9BF1| db $1F ; Raw block
|0C9BF2| db $06, $03, $04, $00, $03, $04, $0E, $01
|0C9BFA| db $00, $00, $01, $06, $01, $02, $02, $0E
|0C9C02| db $0E, $0F, $0C, $00, $01, $00, $07, $03
|0C9C0A| db $06, $01, $06, $07, $01, $01, $02, $02
|0C9C12| db $26 ; Repeat byte
|0C9C13| db $0F
|0C9C14| db $01 ; Raw block
|0C9C15| db $07, $0F
|0C9C17| db $22 ; Repeat byte
|0C9C18| db $00
|0C9C19| db $03 ; Raw block
|0C9C1A| db $0E, $06, $02, $02
|0C9C1E| db $23 ; Repeat byte
|0C9C1F| db $1C
|0C9C20| db $1C ; Raw block
|0C9C21| db $02, $0F, $0F, $06, $0F, $0F, $02, $02
|0C9C29| db $01, $03, $06, $03, $1B, $10, $15, $03
|0C9C31| db $06, $0F, $00, $00, $01, $01, $00, $06
|0C9C39| db $03, $03, $04, $03, $1C
|0C9C3E| db $22 ; Repeat byte
|0C9C3F| db $03
|0C9C40| db $02 ; Raw block
|0C9C41| db $07, $03, $03
|0C9C44| db $83 ; Copy past
|0C9C45| dw $8B00
|0C9C47| db $09 ; Raw block
|0C9C48| db $02, $0F, $1B, $03, $01, $01, $1B, $1C
|0C9C50| db $1C, $0D
|0C9C52| db $23 ; Repeat byte
|0C9C53| db $03
|0C9C54| db $04 ; Raw block
|0C9C55| db $04, $06, $00, $02, $02
|0C9C5A| db $22 ; Repeat byte
|0C9C5B| db $01
|0C9C5C| db $07 ; Raw block
|0C9C5D| db $00, $09, $10, $05, $0D, $0E, $03, $03
|0C9C65| db $83 ; Copy past
|0C9C66| dw $6000
|0C9C68| db $15 ; Raw block
|0C9C69| db $0C, $06, $1B, $03, $03, $09, $01, $0C
|0C9C71| db $01, $03, $01, $00, $03, $03, $00, $0F
|0C9C79| db $02, $07, $1C, $03, $07, $10
|0C9C7F| db $24 ; Repeat byte
|0C9C80| db $0F
|0C9C81| db $0B ; Raw block
|0C9C82| db $0B, $03, $00, $03, $0F, $0F, $0D, $03
|0C9C8A| db $03, $1C, $0F, $01
|0C9C8E| db $22 ; Repeat byte
|0C9C8F| db $0F
|0C9C90| db $01 ; Raw block
|0C9C91| db $0D, $0F
|0C9C93| db $22 ; Repeat byte
|0C9C94| db $02
|0C9C95| db $08 ; Raw block
|0C9C96| db $0E, $0F, $0F, $0B, $0E, $01, $0F, $0F
|0C9C9E| db $01
|0C9C9F| db $43 ; Repeat word
|0C9CA0| dw $0F0B
|0C9CA2| db $02 ; Raw block
|0C9CA3| db $0F, $01, $0A
|0C9CA6| db $FF ; End of Map 72

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen72_Low:
|0C9CA7| db $E0, $28 ; EXT Raw block
|0C9CA9| db $83, $1C, $41, $4D, $43, $44, $9A, $DE
|0C9CB1| db $F7, $4A, $99, $44, $4A, $99, $44, $4A
|0C9CB9| db $8C, $29, $41, $57, $4A, $4B, $A0, $66
|0C9CC1| db $F8, $39, $9F, $4B, $39, $9F, $4B, $39
|0C9CC9| db $07, $60, $41, $66, $4D, $4E, $62, $1D
|0C9CD1| db $61
|0C9CD2| db $62 ; Increment fill
|0C9CD3| db $A4
|0C9CD4| db $13 ; Raw block
|0C9CD5| db $9C, $A5, $A6, $9C, $1B, $1C, $8A, $8F
|0C9CDD| db $1D, $67, $68, $B3, $67, $68, $70, $2D
|0C9CE5| db $56, $B6, $26, $D5
|0C9CE9| db $63 ; Increment fill
|0C9CEA| db $F9
|0C9CEB| db $1F ; Raw block
|0C9CEC| db $8F, $DB, $25, $1F, $DB, $25, $FD, $1E
|0C9CF4| db $EE, $09, $2F, $66, $EB, $D1, $D2, $FE
|0C9CFC| db $FF, $00, $28, $1F, $4C, $1C, $C5, $FF
|0C9D04| db $2D, $0E, $2B, $2B, $06, $06, $DC, $DD
|0C9D0C| db $66 ; Increment fill
|0C9D0D| db $02
|0C9D0E| db $01 ; Raw block
|0C9D0F| db $C5, $09
|0C9D11| db $22 ; Repeat byte
|0C9D12| db $A1
|0C9D13| db $03 ; Raw block
|0C9D14| db $40, $A3, $DC, $DD
|0C9D18| db $63 ; Increment fill
|0C9D19| db $A7
|0C9D1A| db $E0, $5E ; EXT Raw block
|0C9D1C| db $5B, $0E, $0F, $9C, $10, $11, $5A, $5B
|0C9D24| db $06, $6A, $AA, $AC, $2A, $F6, $92, $5D
|0C9D2C| db $66, $19, $A5, $1D, $61, $62, $B2, $66
|0C9D34| db $6A, $6B, $84, $A8, $AB, $20, $94, $AC
|0C9D3C| db $8F, $44, $86, $1D, $67, $68, $1D, $DE
|0C9D44| db $ED, $D8, $A8, $2D, $E4, $19, $AC, $AD
|0C9D4C| db $48, $8C, $8D, $86, $DB, $25, $66, $1D
|0C9D54| db $DC, $DD, $6D, $4B, $2D, $1D, $F4, $8D
|0C9D5C| db $9D, $97, $3C, $8D, $E2, $4B, $1E, $DE
|0C9D64| db $DC, $DE, $39, $4A, $FF, $E2, $EB, $71
|0C9D6C| db $ED, $06, $63, $E3, $1D, $FF, $FF, $1C
|0C9D74| db $29, $D2, $BF, $AE, $44, $C0, $8D
|0C9D7B| db $64 ; Increment fill
|0C9D7C| db $2B
|0C9D7D| db $0B ; Raw block
|0C9D7E| db $46, $E2, $1D, $D5, $30, $29, $A1, $4B
|0C9D86| db $4B, $AF, $2B, $69
|0C9D8A| db $62 ; Increment fill
|0C9D8B| db $34
|0C9D8C| db $01 ; Raw block
|0C9D8D| db $9E, $38
|0C9D8F| db $22 ; Repeat byte
|0C9D90| db $4C
|0C9D91| db $0F ; Raw block
|0C9D92| db $3C, $30, $39, $4B, $40, $06, $3A, $3B
|0C9D9A| db $6A, $4D, $3C, $4B, $3D, $3E, $EB, $79
|0C9DA2| db $FF ; End of Map 72

;===================================================================================================

OverworldMap32_Screen33_High:
|0C9DA3| db $0B ; Raw block
|0C9DA4| db $08, $08, $04, $08, $07, $06, $10, $01
|0C9DAC| db $01, $10, $1C, $03
|0C9DB0| db $23 ; Repeat byte
|0C9DB1| db $01
|0C9DB2| db $87 ; Copy past
|0C9DB3| dw $0000
|0C9DB5| db $01 ; Raw block
|0C9DB6| db $1C, $1C
|0C9DB8| db $25 ; Repeat byte
|0C9DB9| db $01
|0C9DBA| db $23 ; Repeat byte
|0C9DBB| db $08
|0C9DBC| db $02 ; Raw block
|0C9DBD| db $02, $06, $10
|0C9DC0| db $23 ; Repeat byte
|0C9DC1| db $1C
|0C9DC2| db $11 ; Raw block
|0C9DC3| db $06, $1C, $05, $03, $03, $00, $07, $06
|0C9DCB| db $00, $19, $06, $10, $03, $1B, $06, $1C
|0C9DD3| db $16, $1C
|0C9DD5| db $22 ; Repeat byte
|0C9DD6| db $1B
|0C9DD7| db $08 ; Raw block
|0C9DD8| db $0D, $1C, $09, $0D, $1C, $05, $10, $03
|0C9DE0| db $1B
|0C9DE1| db $22 ; Repeat byte
|0C9DE2| db $1C
|0C9DE3| db $05 ; Raw block
|0C9DE4| db $16, $1C, $1B, $06, $00, $09
|0C9DEA| db $22 ; Repeat byte
|0C9DEB| db $1C
|0C9DEC| db $02 ; Raw block
|0C9DED| db $01, $10, $03
|0C9DF0| db $28 ; Repeat byte
|0C9DF1| db $1C
|0C9DF2| db $06 ; Raw block
|0C9DF3| db $00, $19, $1B, $1C, $03, $01, $03
|0C9DFA| db $27 ; Repeat byte
|0C9DFB| db $1C
|0C9DFC| db $06 ; Raw block
|0C9DFD| db $12, $0E, $1B, $09, $00, $07, $01
|0C9E04| db $26 ; Repeat byte
|0C9E05| db $1C
|0C9E06| db $09 ; Raw block
|0C9E07| db $0E, $05, $06, $1C, $1C, $00, $06, $07
|0C9E0F| db $01, $0F
|0C9E11| db $24 ; Repeat byte
|0C9E12| db $1C
|0C9E13| db $18 ; Raw block
|0C9E14| db $05, $1C, $07, $00, $0B, $02, $1C, $0B
|0C9E1C| db $01, $10, $0F, $1C, $10, $1C, $05, $07
|0C9E24| db $1C, $0C, $05, $03, $00, $02, $16, $1C
|0C9E2C| db $00
|0C9E2D| db $83 ; Copy past
|0C9E2E| dw $5600
|0C9E30| db $00 ; Raw block
|0C9E31| db $05
|0C9E32| db $24 ; Repeat byte
|0C9E33| db $1C
|0C9E34| db $08 ; Raw block
|0C9E35| db $00, $01, $01, $16, $01, $07, $10, $03
|0C9E3D| db $1B
|0C9E3E| db $26 ; Repeat byte
|0C9E3F| db $1C
|0C9E40| db $07 ; Raw block
|0C9E41| db $00, $0E, $01, $16, $01, $00, $10, $03
|0C9E49| db $27 ; Repeat byte
|0C9E4A| db $1C
|0C9E4B| db $84 ; Copy past
|0C9E4C| dw $B000
|0C9E4E| db $03 ; Raw block
|0C9E4F| db $00, $10, $01, $02
|0C9E53| db $26 ; Repeat byte
|0C9E54| db $1C
|0C9E55| db $0F ; Raw block
|0C9E56| db $02, $05, $01, $1C, $01, $06, $03, $02
|0C9E5E| db $1C, $07, $06, $1C, $1D, $07, $1D, $1D
|0C9E66| db $22 ; Repeat byte
|0C9E67| db $01
|0C9E68| db $03 ; Raw block
|0C9E69| db $03, $01, $1D, $07
|0C9E6D| db $24 ; Repeat byte
|0C9E6E| db $06
|0C9E6F| db $03 ; Raw block
|0C9E70| db $1B, $06, $1D, $1D
|0C9E74| db $FF ; End of Map 33

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen33_Low:
|0C9E75| db $0C ; Raw block
|0C9E76| db $99, $44, $4A, $BB, $59, $8E, $6E, $06
|0C9E7E| db $06, $BE, $B0, $20, $0C
|0C9E83| db $22 ; Repeat byte
|0C9E84| db $06
|0C9E85| db $17 ; Raw block
|0C9E86| db $9F, $4B, $39, $BE, $63, $8E, $6E, $06
|0C9E8E| db $B1, $B2, $E5, $E5, $17, $0C, $06, $06
|0C9E96| db $A5, $A6, $9C, $9D, $4F, $8E, $6E, $1B
|0C9E9E| db $62 ; Increment fill
|0C9E9F| db $B3
|0C9EA0| db $E0, $26 ; EXT Raw block
|0C9EA2| db $CD, $B6, $61, $20, $20, $1D, $DD, $66
|0C9EAA| db $A0, $BC, $8E, $6E, $63, $DD, $7C, $B7
|0C9EB2| db $4D, $B8, $17, $19, $19, $A6, $B9, $E9
|0C9EBA| db $A4, $BA, $4F, $6E, $63, $DD, $B7, $BB
|0C9EC2| db $BC, $4D, $BD, $AF, $7C, $B2, $E4
|0C9EC9| db $62 ; Increment fill
|0C9ECA| db $BE
|0C9ECB| db $07 ; Raw block
|0C9ECC| db $D2, $6E, $63, $C1, $BB, $C2, $C3, $BC
|0C9ED4| db $63 ; Increment fill
|0C9ED5| db $C4
|0C9ED6| db $06 ; Raw block
|0C9ED7| db $A1, $BC, $5F, $C8, $96, $5E, $65
|0C9EDE| db $62 ; Increment fill
|0C9EDF| db $C9
|0C9EE0| db $64 ; Increment fill
|0C9EE1| db $CB
|0C9EE2| db $06 ; Raw block
|0C9EE3| db $87, $00, $5F, $DD, $1D, $B0, $00
|0C9EEA| db $63 ; Increment fill
|0C9EEB| db $D0
|0C9EEC| db $62 ; Increment fill
|0C9EED| db $D3
|0C9EEE| db $09 ; Raw block
|0C9EEF| db $29, $C9, $66, $D6, $D7, $1C, $66, $B0
|0C9EF7| db $00, $83
|0C9EF9| db $64 ; Increment fill
|0C9EFA| db $D8
|0C9EFB| db $1F ; Raw block
|0C9EFC| db $E1, $DD, $19, $A5, $F9, $8D, $DE, $46
|0C9F04| db $FC, $67, $C8, $DF, $B7, $E0, $E1, $89
|0C9F0C| db $E1, $4C, $E1, $E2, $FB, $97, $B3, $E2
|0C9F14| db $1D, $6E, $63, $E3, $E4, $D5, $DB, $DC
|0C9F1C| db $62 ; Increment fill
|0C9F1D| db $E5
|0C9F1E| db $08 ; Raw block
|0C9F1F| db $A9, $1E, $2E, $BC, $E3, $AF, $6E, $63
|0C9F27| db $DA
|0C9F28| db $62 ; Increment fill
|0C9F29| db $E8
|0C9F2A| db $63 ; Increment fill
|0C9F2B| db $EA
|0C9F2C| db $07 ; Raw block
|0C9F2D| db $1D, $FD, $2E, $BC, $E3, $1D, $6E, $63
|0C9F35| db $67 ; Increment fill
|0C9F36| db $EE
|0C9F37| db $01 ; Raw block
|0C9F38| db $9F, $41
|0C9F3A| db $83 ; Copy past
|0C9F3B| dw $C200
|0C9F3D| db $02 ; Raw block
|0C9F3E| db $77, $FD, $91
|0C9F41| db $66 ; Increment fill
|0C9F42| db $F6
|0C9F43| db $16 ; Raw block
|0C9F44| db $4C, $58, $49, $FD, $E3, $66, $56, $04
|0C9F4C| db $FE, $39, $CD, $FF, $00, $39, $01, $02
|0C9F54| db $EB, $EB, $6A, $63, $E3, $03, $39
|0C9F5B| db $23 ; Repeat byte
|0C9F5C| db $7C
|0C9F5D| db $04 ; Raw block
|0C9F5E| db $CF, $AF, $7C, $04, $05
|0C9F63| db $FF ; End of Map 33

;===================================================================================================

OverworldMap32_Screen34_High:
|0C9F64| db $0A ; Raw block
|0C9F65| db $0B, $19, $0C, $0C, $19, $03, $02, $06
|0C9F6D| db $01, $01, $0D
|0C9F70| db $43 ; Repeat word
|0C9F71| dw $010E
|0C9F73| db $1F ; Raw block
|0C9F74| db $0D, $19, $1D, $06, $09, $01, $03, $1D
|0C9F7C| db $08, $04, $11, $0E, $0F, $1D, $03, $1B
|0C9F84| db $0E, $03, $1D, $1D, $03, $1D, $1D, $03
|0C9F8C| db $01, $04, $05, $0F, $1D, $1B, $0F, $01
|0C9F94| db $24 ; Repeat byte
|0C9F95| db $1B
|0C9F96| db $07 ; Raw block
|0C9F97| db $1C, $03, $1C, $07, $1C, $03, $0D, $1B
|0C9F9F| db $43 ; Repeat word
|0C9FA0| dw $011D
|0C9FA2| db $0A ; Raw block
|0C9FA3| db $06, $19, $0F, $01, $1C, $06, $1C, $1D
|0C9FAB| db $06, $03, $01
|0C9FAE| db $22 ; Repeat byte
|0C9FAF| db $1D
|0C9FB0| db $00 ; Raw block
|0C9FB1| db $01
|0C9FB2| db $22 ; Repeat byte
|0C9FB3| db $1D
|0C9FB4| db $01 ; Raw block
|0C9FB5| db $19, $06
|0C9FB7| db $23 ; Repeat byte
|0C9FB8| db $1D
|0C9FB9| db $00 ; Raw block
|0C9FBA| db $07
|0C9FBB| db $24 ; Repeat byte
|0C9FBC| db $06
|0C9FBD| db $12 ; Raw block
|0C9FBE| db $05, $01, $1D, $1D, $0D, $06, $1D, $1D
|0C9FC6| db $06, $06, $07, $06, $06, $0D, $06, $06
|0C9FCE| db $1D, $01, $05
|0C9FD1| db $22 ; Repeat byte
|0C9FD2| db $1D
|0C9FD3| db $05 ; Raw block
|0C9FD4| db $0D, $1D, $1C, $16, $06, $0D
|0C9FDA| db $83 ; Copy past
|0C9FDB| dw $6400
|0C9FDD| db $05 ; Raw block
|0C9FDE| db $1D, $01, $07, $1D, $06, $06
|0C9FE4| db $25 ; Repeat byte
|0C9FE5| db $1D
|0C9FE6| db $22 ; Repeat byte
|0C9FE7| db $06
|0C9FE8| db $25 ; Repeat byte
|0C9FE9| db $1D
|0C9FEA| db $00 ; Raw block
|0C9FEB| db $06
|0C9FEC| db $25 ; Repeat byte
|0C9FED| db $1D
|0C9FEE| db $03 ; Raw block
|0C9FEF| db $06, $09, $1D, $1B
|0C9FF3| db $25 ; Repeat byte
|0C9FF4| db $1D
|0C9FF5| db $00 ; Raw block
|0C9FF6| db $0E
|0C9FF7| db $23 ; Repeat byte
|0C9FF8| db $1D
|0C9FF9| db $04 ; Raw block
|0C9FFA| db $0E, $06, $06, $03, $01
|0C9FFF| db $25 ; Repeat byte
|0CA000| db $1D
|0CA001| db $00 ; Raw block
|0CA002| db $06
|0CA003| db $23 ; Repeat byte
|0CA004| db $1D
|0CA005| db $22 ; Repeat byte
|0CA006| db $06
|0CA007| db $05 ; Raw block
|0CA008| db $1D, $11, $19, $10, $00, $07
|0CA00E| db $87 ; Copy past
|0CA00F| dw $7200
|0CA011| db $0C ; Raw block
|0CA012| db $06, $06, $03, $0E, $05, $02, $1D, $06
|0CA01A| db $0D, $06, $1D, $06, $1C
|0CA01F| db $43 ; Repeat word
|0CA020| dw $061D
|0CA022| db $02 ; Raw block
|0CA023| db $0D, $1D, $03
|0CA026| db $24 ; Repeat byte
|0CA027| db $1D
|0CA028| db $27 ; Repeat byte
|0CA029| db $06
|0CA02A| db $06 ; Raw block
|0CA02B| db $1D, $06, $06, $10, $01, $1D, $1D
|0CA032| db $2B ; Repeat byte
|0CA033| db $06
|0CA034| db $01 ; Raw block
|0CA035| db $10, $0E
|0CA037| db $FF ; End of Map 34

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen34_Low:
|0CA038| db $0A ; Raw block
|0CA039| db $56, $B2, $ED, $ED, $B2, $63, $E8, $66
|0CA041| db $2E, $00, $4C
|0CA044| db $43 ; Repeat word
|0CA045| dw $0640
|0CA047| db $E0, $20 ; EXT Raw block
|0CA049| db $4C, $D4, $06, $A3, $D5, $06, $65, $07
|0CA051| db $2D, $8D, $05, $40, $4C, $08, $20, $EF
|0CA059| db $40, $20, $08, $09, $20, $0A, $0B, $A8
|0CA061| db $1E, $93, $B1, $3F, $0C, $9D, $44, $17
|0CA069| db $EF
|0CA06A| db $23 ; Repeat byte
|0CA06B| db $19
|0CA06C| db $16 ; Raw block
|0CA06D| db $AC, $A8, $FE, $39, $B8, $57, $FB, $9E
|0CA075| db $0D, $17, $0E, $17, $7C, $A5, $01, $4C
|0CA07D| db $FE, $C1, $EF, $0F, $7C, $56, $22
|0CA084| db $62 ; Increment fill
|0CA085| db $10
|0CA086| db $00 ; Raw block
|0CA087| db $17
|0CA088| db $62 ; Increment fill
|0CA089| db $13
|0CA08A| db $02 ; Raw block
|0CA08B| db $8B, $7C, $16
|0CA08E| db $62 ; Increment fill
|0CA08F| db $16
|0CA090| db $00 ; Raw block
|0CA091| db $65
|0CA092| db $23 ; Repeat byte
|0CA093| db $7C
|0CA094| db $13 ; Raw block
|0CA095| db $CD, $50, $25, $19, $1A, $F8, $7C, $1B
|0CA09D| db $1B, $7C, $CD, $39, $7C, $7C, $F8, $7C
|0CA0A5| db $7C, $1C, $25, $C9
|0CA0A9| db $62 ; Increment fill
|0CA0AA| db $1D
|0CA0AB| db $07 ; Raw block
|0CA0AC| db $F8, $20, $B7, $4D, $7C, $F8, $1B, $1E
|0CA0B4| db $83 ; Copy past
|0CA0B5| dw $6C00
|0CA0B7| db $04 ; Raw block
|0CA0B8| db $36, $21, $7C, $7C, $1E
|0CA0BD| db $63 ; Increment fill
|0CA0BE| db $22
|0CA0BF| db $00 ; Raw block
|0CA0C0| db $1E
|0CA0C1| db $22 ; Repeat byte
|0CA0C2| db $7C
|0CA0C3| db $63 ; Increment fill
|0CA0C4| db $26
|0CA0C5| db $02 ; Raw block
|0CA0C6| db $21, $2A, $7C
|0CA0C9| db $64 ; Increment fill
|0CA0CA| db $2B
|0CA0CB| db $04 ; Raw block
|0CA0CC| db $2B, $7C, $25, $30, $2A
|0CA0D1| db $65 ; Increment fill
|0CA0D2| db $31
|0CA0D3| db $01 ; Raw block
|0CA0D4| db $12, $2C
|0CA0D6| db $62 ; Increment fill
|0CA0D7| db $37
|0CA0D8| db $04 ; Raw block
|0CA0D9| db $12, $7C, $CD, $96, $5E
|0CA0DE| db $63 ; Increment fill
|0CA0DF| db $3A
|0CA0E0| db $02 ; Raw block
|0CA0E1| db $2C, $3E, $7C
|0CA0E4| db $63 ; Increment fill
|0CA0E5| db $3F
|0CA0E6| db $22 ; Repeat byte
|0CA0E7| db $7C
|0CA0E8| db $09 ; Raw block
|0CA0E9| db $43, $05, $D5, $67, $1D, $39, $44, $45
|0CA0F1| db $F8, $46
|0CA0F3| db $83 ; Copy past
|0CA0F4| dw $7600
|0CA0F6| db $18 ; Raw block
|0CA0F7| db $7C, $7C, $56, $C0, $A6, $69, $46, $7C
|0CA0FF| db $F8, $7C, $47, $7C, $C3, $48, $7C, $1E
|0CA107| db $7C, $F8, $49, $56, $4A, $4B, $02, $4C
|0CA10F| db $1E
|0CA110| db $27 ; Repeat byte
|0CA111| db $7C
|0CA112| db $06 ; Raw block
|0CA113| db $1E, $7C, $C1, $6E, $01, $4D, $4E
|0CA11A| db $2A ; Repeat byte
|0CA11B| db $7C
|0CA11C| db $02 ; Raw block
|0CA11D| db $CD, $6E, $40
|0CA120| db $FF ; End of Map 34

;===================================================================================================

OverworldMap32_Screen75_High:
|0CA121| db $03 ; Raw block
|0CA122| db $0D, $0B, $03, $01
|0CA126| db $25 ; Repeat byte
|0CA127| db $00
|0CA128| db $03 ; Raw block
|0CA129| db $03, $03, $01, $01
|0CA12D| db $25 ; Repeat byte
|0CA12E| db $03
|0CA12F| db $00 ; Raw block
|0CA130| db $00
|0CA131| db $44 ; Repeat word
|0CA132| dw $0706
|0CA134| db $84 ; Copy past
|0CA135| dw $0A00
|0CA137| db $22 ; Repeat byte
|0CA138| db $01
|0CA139| db $0A ; Raw block
|0CA13A| db $03, $03, $00, $0F, $0F, $00, $02, $0F
|0CA142| db $00, $03, $1D
|0CA145| db $43 ; Repeat word
|0CA146| dw $0F01
|0CA148| db $18 ; Raw block
|0CA149| db $07, $03, $03, $0F, $07, $0F, $0F, $07
|0CA151| db $09, $0F, $0F, $05, $04, $1D, $01, $03
|0CA159| db $02, $00, $00, $0F, $07, $0F, $00, $00
|0CA161| db $0F
|0CA162| db $22 ; Repeat byte
|0CA163| db $02
|0CA164| db $01 ; Raw block
|0CA165| db $04, $0C
|0CA167| db $22 ; Repeat byte
|0CA168| db $1D
|0CA169| db $22 ; Repeat byte
|0CA16A| db $01
|0CA16B| db $04 ; Raw block
|0CA16C| db $04, $0F, $0F, $03, $0F
|0CA171| db $22 ; Repeat byte
|0CA172| db $02
|0CA173| db $03 ; Raw block
|0CA174| db $07, $05, $1D, $0F
|0CA178| db $22 ; Repeat byte
|0CA179| db $1D
|0CA17A| db $05 ; Raw block
|0CA17B| db $01, $0F, $0F, $02, $07, $0F
|0CA181| db $23 ; Repeat byte
|0CA182| db $07
|0CA183| db $0D ; Raw block
|0CA184| db $1D, $1D, $0F, $02, $0B, $0B, $00, $0F
|0CA18C| db $02, $05, $07, $05, $15, $1D
|0CA192| db $43 ; Repeat word
|0CA193| dw $0705
|0CA195| db $05 ; Raw block
|0CA196| db $0F, $0F, $01, $08, $08, $0F
|0CA19C| db $22 ; Repeat byte
|0CA19D| db $07
|0CA19E| db $01 ; Raw block
|0CA19F| db $1D, $08
|0CA1A1| db $43 ; Repeat word
|0CA1A2| dw $051D
|0CA1A4| db $02 ; Raw block
|0CA1A5| db $08, $10, $0D
|0CA1A8| db $83 ; Copy past
|0CA1A9| dw $4600
|0CA1AB| db $0C ; Raw block
|0CA1AC| db $07, $0C, $05, $05, $1D, $1D, $1C, $0F
|0CA1B4| db $1D, $05, $0F, $0B, $0F
|0CA1B9| db $83 ; Copy past
|0CA1BA| dw $8300
|0CA1BC| db $08 ; Raw block
|0CA1BD| db $05, $08, $1D, $1D, $05, $10, $05, $11
|0CA1C5| db $07
|0CA1C6| db $22 ; Repeat byte
|0CA1C7| db $0F
|0CA1C8| db $13 ; Raw block
|0CA1C9| db $00, $00, $0F, $08, $09, $07, $1D, $0F
|0CA1D1| db $05, $1D, $05, $10, $07, $0F, $07, $02
|0CA1D9| db $00, $03, $02, $04
|0CA1DD| db $22 ; Repeat byte
|0CA1DE| db $05
|0CA1DF| db $83 ; Copy past
|0CA1E0| dw $B900
|0CA1E2| db $0C ; Raw block
|0CA1E3| db $1D, $07, $0F, $02, $05, $01, $1D, $0F
|0CA1EB| db $05, $07, $07, $0F, $15
|0CA1F0| db $43 ; Repeat word
|0CA1F1| dw $051D
|0CA1F3| db $0C ; Raw block
|0CA1F4| db $08, $0F, $1D, $04, $04, $0D, $00, $05
|0CA1FC| db $07, $0E, $1D, $1D, $0F
|0CA201| db $84 ; Copy past
|0CA202| dw $D500
|0CA204| db $0E ; Raw block
|0CA205| db $0F, $02, $1D, $03, $00, $0F, $07, $10
|0CA20D| db $10, $1D, $05, $11, $07, $07, $05
|0CA214| db $FF ; End of Map 75

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen75_Low:
|0CA215| db $05 ; Raw block
|0CA216| db $4B, $56, $63, $E3, $1D, $1C
|0CA21C| db $23 ; Repeat byte
|0CA21D| db $1D
|0CA21E| db $04 ; Raw block
|0CA21F| db $50, $51, $0A, $0A, $52
|0CA224| db $22 ; Repeat byte
|0CA225| db $20
|0CA226| db $E0, $37 ; EXT Raw block
|0CA228| db $94, $95, $1D, $8B, $05, $9C, $04, $8F
|0CA230| db $56, $57, $15, $15, $5A, $F8, $02, $02
|0CA238| db $9C, $9D, $1D, $46, $47, $1D, $5E, $48
|0CA240| db $1D, $56, $4F, $22, $4B, $02, $4C, $6F
|0CA248| db $BB, $A8, $4D, $41, $4E, $4F, $09, $B2
|0CA250| db $50, $50, $0C, $8A, $50, $0A, $63, $86
|0CA258| db $1D, $1D, $4D, $41, $4E, $1D, $1D, $53
|0CA260| db $22 ; Repeat byte
|0CA261| db $08
|0CA262| db $01 ; Raw block
|0CA263| db $90, $74
|0CA265| db $62 ; Increment fill
|0CA266| db $51
|0CA267| db $07 ; Raw block
|0CA268| db $2B, $2B, $2C, $37, $5B, $5C, $B3, $5D
|0CA270| db $22 ; Repeat byte
|0CA271| db $FB
|0CA272| db $03 ; Raw block
|0CA273| db $1B, $9F, $54, $61
|0CA277| db $62 ; Increment fill
|0CA278| db $55
|0CA279| db $05 ; Raw block
|0CA27A| db $40, $5B, $66, $79, $1B, $68
|0CA280| db $22 ; Repeat byte
|0CA281| db $79
|0CA282| db $E0, $92 ; EXT Raw block
|0CA284| db $31, $58, $59, $61, $DD, $3E, $3F, $1D
|0CA28C| db $66, $79, $99, $31, $E1, $62, $5A, $E1
|0CA294| db $19, $E1, $36, $73, $74, $D5, $2D, $2D
|0CA29C| db $76, $1E, $1F, $89, $5B, $AA, $5C, $E1
|0CA2A4| db $5D, $E0, $AA, $70, $9E, $7A, $1D, $1D
|0CA2AC| db $7B, $8E, $4C, $E1, $E1, $5B, $5E, $E7
|0CA2B4| db $94, $5C, $E1, $82, $56, $83, $2D, $2D
|0CA2BC| db $84, $8E, $E1, $AA, $5F, $60, $BD, $AD
|0CA2C4| db $BD, $03, $4B, $8A, $4C, $8B, $1D, $A5
|0CA2CC| db $8C, $C0, $52, $20, $54, $85, $A4, $61
|0CA2D4| db $A4, $A6, $55, $91, $6F, $7A, $1D, $FF
|0CA2DC| db $30, $F3, $DF, $E1, $E1, $5B, $72, $C9
|0CA2E4| db $62, $5C, $20, $61, $86, $46, $F2, $63
|0CA2EC| db $92, $6F, $8E, $20, $70, $61, $64, $E1
|0CA2F4| db $5B, $E1, $AA, $61, $65, $B2, $7B, $B9
|0CA2FC| db $1D, $6F, $8E, $23, $66, $67, $9C, $9D
|0CA304| db $E1, $19, $89, $61, $96, $02, $68, $A8
|0CA30C| db $1C, $97, $8E, $D8, $AC, $69, $A4, $0A
|0CA314| db $36, $36, $E1
|0CA317| db $FF ; End of Map 75

;===================================================================================================

OverworldMap32_Screen76_High:
|0CA318| db $12 ; Raw block
|0CA319| db $03, $06, $0F, $03, $03, $01, $0B, $02
|0CA321| db $0F, $07, $05, $07, $08, $01, $02, $02
|0CA329| db $0E, $03, $07
|0CA32C| db $22 ; Repeat byte
|0CA32D| db $01
|0CA32E| db $01 ; Raw block
|0CA32F| db $07, $06
|0CA331| db $87 ; Copy past
|0CA332| dw $0800
|0CA334| db $01 ; Raw block
|0CA335| db $0F, $03
|0CA337| db $23 ; Repeat byte
|0CA338| db $01
|0CA339| db $0E ; Raw block
|0CA33A| db $03, $0E, $0F, $07, $05, $09, $02, $01
|0CA342| db $02, $02, $1D, $0F, $0F, $01, $01
|0CA349| db $22 ; Repeat byte
|0CA34A| db $0F
|0CA34B| db $14 ; Raw block
|0CA34C| db $05, $0F, $05, $09, $0F, $01, $02, $02
|0CA354| db $07, $01, $0F, $06, $06, $0F, $01, $05
|0CA35C| db $07, $07, $04, $01, $06
|0CA361| db $83 ; Copy past
|0CA362| dw $3D00
|0CA364| db $00 ; Raw block
|0CA365| db $09
|0CA366| db $24 ; Repeat byte
|0CA367| db $05
|0CA368| db $22 ; Repeat byte
|0CA369| db $07
|0CA36A| db $02 ; Raw block
|0CA36B| db $09, $06, $00
|0CA36E| db $83 ; Copy past
|0CA36F| dw $3D00
|0CA371| db $02 ; Raw block
|0CA372| db $07, $05, $07
|0CA375| db $24 ; Repeat byte
|0CA376| db $05
|0CA377| db $06 ; Raw block
|0CA378| db $07, $07, $01, $04, $01, $0F, $0F
|0CA37F| db $22 ; Repeat byte
|0CA380| db $1D
|0CA381| db $0C ; Raw block
|0CA382| db $05, $0F, $1D, $11, $09, $0B, $05, $07
|0CA38A| db $07, $0F, $1D, $05, $0F
|0CA38F| db $26 ; Repeat byte
|0CA390| db $1D
|0CA391| db $09 ; Raw block
|0CA392| db $1C, $0F, $1C, $1D, $07, $0F, $05, $0F
|0CA39A| db $0F, $05
|0CA39C| db $28 ; Repeat byte
|0CA39D| db $1D
|0CA39E| db $22 ; Repeat byte
|0CA39F| db $0F
|0CA3A0| db $02 ; Raw block
|0CA3A1| db $0B, $0F, $02
|0CA3A4| db $2C ; Repeat byte
|0CA3A5| db $1D
|0CA3A6| db $02 ; Raw block
|0CA3A7| db $07, $0F, $02
|0CA3AA| db $2C ; Repeat byte
|0CA3AB| db $1D
|0CA3AC| db $02 ; Raw block
|0CA3AD| db $07, $0F, $0F
|0CA3B0| db $2B ; Repeat byte
|0CA3B1| db $1D
|0CA3B2| db $02 ; Raw block
|0CA3B3| db $07, $07, $0F
|0CA3B6| db $2C ; Repeat byte
|0CA3B7| db $1D
|0CA3B8| db $03 ; Raw block
|0CA3B9| db $05, $07, $01, $0F
|0CA3BD| db $2B ; Repeat byte
|0CA3BE| db $1D
|0CA3BF| db $03 ; Raw block
|0CA3C0| db $1C, $07, $0F, $0F
|0CA3C4| db $2C ; Repeat byte
|0CA3C5| db $1D
|0CA3C6| db $02 ; Raw block
|0CA3C7| db $0B, $0F, $01
|0CA3CA| db $FF ; End of Map 76

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen76_Low:
|0CA3CB| db $18 ; Raw block
|0CA3CC| db $21, $A2, $4C, $20, $20, $0C, $4B, $DC
|0CA3D4| db $61, $8E, $E1, $6E, $B7, $77, $82, $82
|0CA3DC| db $E5, $52, $6F, $F8, $F8, $17, $0E, $AA
|0CA3E4| db $A0
|0CA3E5| db $86 ; Copy past
|0CA3E6| dw $0900
|0CA3E8| db $E0, $3B ; EXT Raw block
|0CA3EA| db $A1, $5A, $ED, $02, $02, $03, $9C, $56
|0CA3F2| db $A2, $13, $E2, $15, $41, $77, $82, $82
|0CA3FA| db $6A, $A4, $A5, $0A, $0A, $A6, $A7, $A2
|0CA402| db $99, $A8, $EE, $1B, $A9, $77, $82, $82
|0CA40A| db $1C, $09, $AA, $A0, $A0, $AB, $FD, $99
|0CA412| db $1F, $32, $FA, $CC, $66, $77, $82, $82
|0CA41A| db $14, $F7, $9F, $E1, $E1, $AB, $AC, $18
|0CA422| db $36, $6E, $B7, $66
|0CA426| db $83 ; Copy past
|0CA427| dw $3C00
|0CA429| db $03 ; Raw block
|0CA42A| db $89, $20, $E1, $3E
|0CA42E| db $24 ; Repeat byte
|0CA42F| db $E1
|0CA430| db $06 ; Raw block
|0CA431| db $37, $38, $F0, $C2, $77, $AD, $B1
|0CA438| db $62 ; Increment fill
|0CA439| db $6B
|0CA43A| db $0C ; Raw block
|0CA43B| db $E1, $70, $6E, $03, $9D, $DF, $AB, $3F
|0CA443| db $28, $B3, $6F, $63, $B5
|0CA448| db $66 ; Increment fill
|0CA449| db $70
|0CA44A| db $09 ; Raw block
|0CA44B| db $49, $60, $49, $77, $30, $B7, $A2, $B8
|0CA453| db $B9, $E1
|0CA455| db $68 ; Increment fill
|0CA456| db $78
|0CA457| db $05 ; Raw block
|0CA458| db $9C, $94, $95, $D9, $BC, $82
|0CA45E| db $63 ; Increment fill
|0CA45F| db $81
|0CA460| db $02 ; Raw block
|0CA461| db $84, $85, $84
|0CA464| db $65 ; Increment fill
|0CA465| db $86
|0CA466| db $02 ; Raw block
|0CA467| db $4C, $C1, $82
|0CA46A| db $66 ; Increment fill
|0CA46B| db $8C
|0CA46C| db $01 ; Raw block
|0CA46D| db $90, $90
|0CA46F| db $63 ; Increment fill
|0CA470| db $93
|0CA471| db $07 ; Raw block
|0CA472| db $4C, $C1, $C5, $97, $98, $8E, $99, $92
|0CA47A| db $62 ; Increment fill
|0CA47B| db $9A
|0CA47C| db $09 ; Raw block
|0CA47D| db $92, $93, $9D, $9E, $36, $4C, $C1, $9F
|0CA485| db $A0, $8D
|0CA487| db $64 ; Increment fill
|0CA488| db $A1
|0CA489| db $00 ; Raw block
|0CA48A| db $A2
|0CA48B| db $63 ; Increment fill
|0CA48C| db $A6
|0CA48D| db $03 ; Raw block
|0CA48E| db $E1, $32, $53, $CD
|0CA492| db $6B ; Increment fill
|0CA493| db $AA
|0CA494| db $06 ; Raw block
|0CA495| db $9E, $37, $D1, $D2, $B6, $B7, $AC
|0CA49C| db $62 ; Increment fill
|0CA49D| db $B8
|0CA49E| db $62 ; Increment fill
|0CA49F| db $BA
|0CA4A0| db $06 ; Raw block
|0CA4A1| db $AC, $94, $BD, $BE, $D9, $BC, $25
|0CA4A8| db $FF ; End of Map 76

;===================================================================================================

OverworldMap32_Screen37_High:
|0CA4A9| db $01 ; Raw block
|0CA4AA| db $01, $01
|0CA4AC| db $24 ; Repeat byte
|0CA4AD| db $0F
|0CA4AE| db $03 ; Raw block
|0CA4AF| db $1D, $0D, $03, $0D
|0CA4B3| db $22 ; Repeat byte
|0CA4B4| db $01
|0CA4B5| db $E0, $24 ; EXT Raw block
|0CA4B7| db $02, $05, $01, $01, $1B, $0F, $1D, $1D
|0CA4BF| db $0F, $1D, $0D, $04, $01, $01, $02, $02
|0CA4C7| db $05, $1D, $1D, $01, $1D, $1B, $1D, $1D
|0CA4CF| db $1B, $02, $01, $03, $06, $01, $01, $05
|0CA4D7| db $1D, $1B, $01, $02, $19
|0CA4DC| db $23 ; Repeat byte
|0CA4DD| db $06
|0CA4DE| db $11 ; Raw block
|0CA4DF| db $1D, $06, $00, $04, $0E, $04, $1D, $1B
|0CA4E7| db $02, $05, $1D, $00, $07, $06, $09, $06
|0CA4EF| db $01, $08
|0CA4F1| db $23 ; Repeat byte
|0CA4F2| db $1D
|0CA4F3| db $0B ; Raw block
|0CA4F4| db $1B, $02, $05, $0F, $15, $03, $1B, $02
|0CA4FC| db $01, $1D, $01, $01
|0CA500| db $23 ; Repeat byte
|0CA501| db $1D
|0CA502| db $0B ; Raw block
|0CA503| db $02, $05, $01, $10, $1D, $1D, $02, $1B
|0CA50B| db $07, $02, $01, $01
|0CA50F| db $23 ; Repeat byte
|0CA510| db $1D
|0CA511| db $06 ; Raw block
|0CA512| db $05, $01, $01, $10, $03, $1D, $05
|0CA519| db $22 ; Repeat byte
|0CA51A| db $07
|0CA51B| db $00 ; Raw block
|0CA51C| db $06
|0CA51D| db $22 ; Repeat byte
|0CA51E| db $1D
|0CA51F| db $11 ; Raw block
|0CA520| db $1C, $19, $01, $01, $14, $1D, $03, $06
|0CA528| db $09, $07, $05, $07, $07, $1D, $10, $1D
|0CA530| db $09, $06
|0CA532| db $22 ; Repeat byte
|0CA533| db $01
|0CA534| db $0D ; Raw block
|0CA535| db $1D, $1D, $05, $07, $1D, $0E, $09, $05
|0CA53D| db $0F, $06, $1D, $1D, $01, $1C
|0CA543| db $22 ; Repeat byte
|0CA544| db $01
|0CA545| db $22 ; Repeat byte
|0CA546| db $07
|0CA547| db $08 ; Raw block
|0CA548| db $1D, $0F, $0F, $09, $05, $1D, $06, $1D
|0CA550| db $1D
|0CA551| db $23 ; Repeat byte
|0CA552| db $01
|0CA553| db $02 ; Raw block
|0CA554| db $07, $05, $07
|0CA557| db $43 ; Repeat word
|0CA558| dw $051D
|0CA55A| db $00 ; Raw block
|0CA55B| db $07
|0CA55C| db $85 ; Copy past
|0CA55D| dw $A800
|0CA55F| db $03 ; Raw block
|0CA560| db $0F, $01, $07, $07
|0CA564| db $22 ; Repeat byte
|0CA565| db $06
|0CA566| db $06 ; Raw block
|0CA567| db $10, $07, $09, $07, $0B, $1D, $16
|0CA56E| db $83 ; Copy past
|0CA56F| dw $5600
|0CA571| db $00 ; Raw block
|0CA572| db $0F
|0CA573| db $83 ; Copy past
|0CA574| dw $C100
|0CA576| db $0B ; Raw block
|0CA577| db $1D, $10, $07, $07, $19, $1D, $05, $0C
|0CA57F| db $01, $06, $01, $0F
|0CA583| db $83 ; Copy past
|0CA584| dw $D100
|0CA586| db $0C ; Raw block
|0CA587| db $1D, $10, $10, $1D, $1D, $05, $1D, $1D
|0CA58F| db $1B, $01, $0C, $03, $05
|0CA594| db $22 ; Repeat byte
|0CA595| db $1D
|0CA596| db $02 ; Raw block
|0CA597| db $0A, $05, $10
|0CA59A| db $22 ; Repeat byte
|0CA59B| db $05
|0CA59C| db $83 ; Copy past
|0CA59D| dw $6B00
|0CA59F| db $FF ; End of Map 37

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen37_Low:
|0CA5A0| db $01 ; Raw block
|0CA5A1| db $ED, $ED
|0CA5A3| db $24 ; Repeat byte
|0CA5A4| db $43
|0CA5A5| db $E0, $2B ; EXT Raw block
|0CA5A7| db $BF, $FB, $6C, $FB, $16, $03, $24, $82
|0CA5AF| db $60, $ED, $ED, $9D, $43, $C0, $C1, $43
|0CA5B7| db $BF, $FB, $84, $22, $23, $75, $82, $60
|0CA5BF| db $C2, $C3, $ED, $0D, $19, $C4, $C5, $19
|0CA5C7| db $02, $22, $A8, $66, $1E, $2E, $60, $C2
|0CA5CF| db $BA, $D6, $86, $A8
|0CA5D3| db $23 ; Repeat byte
|0CA5D4| db $7C
|0CA5D5| db $11 ; Raw block
|0CA5D6| db $C6, $66, $99, $BE, $FD, $8D, $C2, $BA
|0CA5DE| db $82, $83, $C7, $1D, $AF, $7C, $25, $83
|0CA5E6| db $60, $2D
|0CA5E8| db $63 ; Increment fill
|0CA5E9| db $C8
|0CA5EA| db $0B ; Raw block
|0CA5EB| db $BA, $82, $DE, $8A, $92, $5D, $9B, $08
|0CA5F3| db $F0, $CC, $DB, $75
|0CA5F7| db $63 ; Increment fill
|0CA5F8| db $CD
|0CA5F9| db $0B ; Raw block
|0CA5FA| db $82, $DE, $03, $C3, $D1, $D2, $79, $B3
|0CA602| db $28, $FB, $E6, $DB
|0CA606| db $63 ; Increment fill
|0CA607| db $D3
|0CA608| db $0A ; Raw block
|0CA609| db $DE, $03, $03, $C3, $65, $D7, $99, $79
|0CA611| db $30, $79, $16
|0CA614| db $62 ; Increment fill
|0CA615| db $D8
|0CA616| db $E0, $3D ; EXT Raw block
|0CA618| db $BF, $D5, $03, $03, $E8, $DB, $6B, $13
|0CA620| db $83, $20, $E1, $35, $4C, $DC, $DA, $DD
|0CA628| db $D5, $A2, $01, $24, $73, $DE, $DF, $9F
|0CA630| db $35, $E0, $27, $52, $97, $8E, $07, $E1
|0CA638| db $E2, $06, $13, $73, $73, $D6, $8E, $20
|0CA640| db $67, $E3, $80, $81, $52, $AB, $E4, $07
|0CA648| db $E5, $E6, $69, $49, $73, $D6, $8E, $E1
|0CA650| db $6E, $E7, $FB, $E8, $C5, $35
|0CA656| db $83 ; Copy past
|0CA657| dw $A800
|0CA659| db $E0, $35 ; EXT Raw block
|0CA65B| db $E9, $00, $C5, $D6, $8E, $35, $0A, $0B
|0CA663| db $01, $E4, $3B, $52, $20, $D9, $EA, $98
|0CA66B| db $EB, $17, $01, $EC, $C4, $43, $14, $16
|0CA673| db $0B, $ED, $E4, $3B, $3C, $BB, $EE, $FB
|0CA67B| db $8E, $03, $1B, $06, $C8, $C9, $54, $14
|0CA683| db $16, $EF, $E3, $E4, $F0, $F1, $F4, $F2
|0CA68B| db $F3, $D9, $71, $ED, $63, $8A
|0CA691| db $62 ; Increment fill
|0CA692| db $F4
|0CA693| db $09 ; Raw block
|0CA694| db $04, $FB, $E3, $FA, $FC, $FB, $F7, $F8
|0CA69C| db $E9, $71
|0CA69E| db $FF ; End of Map 37

;===================================================================================================

OverworldMap32_Screen78_High:
|0CA69F| db $07 ; Raw block
|0CA6A0| db $0D, $03, $10, $03, $1C, $05, $1C, $0F
|0CA6A8| db $22 ; Repeat byte
|0CA6A9| db $1D
|0CA6AA| db $08 ; Raw block
|0CA6AB| db $05, $11, $15, $05, $10, $0B, $03, $0F
|0CA6B3| db $0F
|0CA6B4| db $22 ; Repeat byte
|0CA6B5| db $1C
|0CA6B6| db $1D ; Raw block
|0CA6B7| db $11, $05, $07, $1D, $05, $10, $1C, $05
|0CA6BF| db $05, $1D, $10, $1D, $1D, $1C, $1C, $1E
|0CA6C7| db $1E, $0F, $07, $05, $1D, $11, $11, $05
|0CA6CF| db $1C, $03, $06, $1E, $1E, $06
|0CA6D5| db $83 ; Copy past
|0CA6D6| dw $2500
|0CA6D8| db $0D ; Raw block
|0CA6D9| db $1C, $1C, $0F, $1E, $0F, $05, $05, $03
|0CA6E1| db $0F, $1E, $03, $06, $1C, $11
|0CA6E7| db $23 ; Repeat byte
|0CA6E8| db $1E
|0CA6E9| db $E0, $20 ; EXT Raw block
|0CA6EB| db $05, $1C, $10, $11, $05, $03, $1E, $1E
|0CA6F3| db $03, $16, $1E, $05, $15, $1D, $11, $05
|0CA6FB| db $05, $1E, $05, $1C, $1C, $1E, $0F, $03
|0CA703| db $16, $1E, $1E, $15, $10, $11, $0F, $1E
|0CA70B| db $05
|0CA70C| db $22 ; Repeat byte
|0CA70D| db $1E
|0CA70E| db $0A ; Raw block
|0CA70F| db $05, $03, $1E, $16, $1E, $1C, $1D, $15
|0CA717| db $1C, $1E, $05
|0CA71A| db $22 ; Repeat byte
|0CA71B| db $1C
|0CA71C| db $22 ; Repeat byte
|0CA71D| db $05
|0CA71E| db $06 ; Raw block
|0CA71F| db $0F, $1E, $0C, $1E, $05, $05, $15
|0CA726| db $44 ; Repeat word
|0CA727| dw $1C1E
|0CA729| db $0A ; Raw block
|0CA72A| db $1E, $05, $1C, $05, $02, $06, $1E, $1E
|0CA732| db $10, $1C, $05
|0CA735| db $43 ; Repeat word
|0CA736| dw $1E1C
|0CA738| db $0D ; Raw block
|0CA739| db $1E, $1C, $1E, $05, $0F, $02, $06, $1E
|0CA741| db $10, $1C, $1C, $10, $1C, $1C
|0CA747| db $2D ; Repeat byte
|0CA748| db $1E
|0CA749| db $01 ; Raw block
|0CA74A| db $1C, $1C
|0CA74C| db $23 ; Repeat byte
|0CA74D| db $1E
|0CA74E| db $04 ; Raw block
|0CA74F| db $05, $1E, $1E, $0F, $0C
|0CA754| db $23 ; Repeat byte
|0CA755| db $0F
|0CA756| db $84 ; Copy past
|0CA757| dw $9A00
|0CA759| db $24 ; Repeat byte
|0CA75A| db $1E
|0CA75B| db $01 ; Raw block
|0CA75C| db $0F, $01
|0CA75E| db $23 ; Repeat byte
|0CA75F| db $00
|0CA760| db $00 ; Raw block
|0CA761| db $0C
|0CA762| db $24 ; Repeat byte
|0CA763| db $1E
|0CA764| db $23 ; Repeat byte
|0CA765| db $0F
|0CA766| db $03 ; Raw block
|0CA767| db $0D, $0F, $01, $06
|0CA76B| db $22 ; Repeat byte
|0CA76C| db $00
|0CA76D| db $01 ; Raw block
|0CA76E| db $0C, $1E
|0CA770| db $23 ; Repeat byte
|0CA771| db $10
|0CA772| db $04 ; Raw block
|0CA773| db $01, $0A, $1A, $1E, $1E
|0CA778| db $25 ; Repeat byte
|0CA779| db $10
|0CA77A| db $07 ; Raw block
|0CA77B| db $1E, $10, $10, $05, $0B, $0B, $01, $09
|0CA783| db $FF ; End of Map 78

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen78_Low:
|0CA784| db $07 ; Raw block
|0CA785| db $4C, $63, $C3, $63, $28, $A4, $2F, $86
|0CA78D| db $62 ; Increment fill
|0CA78E| db $F9
|0CA78F| db $E0, $3B ; EXT Raw block
|0CA791| db $A4, $0A, $7D, $A4, $AD, $56, $65, $DC
|0CA799| db $DD, $28, $78, $93, $0A, $E1, $4B, $FC
|0CA7A1| db $C9, $CC, $80, $A4, $A4, $FD, $C9, $FE
|0CA7A9| db $FF, $5F, $60, $00, $01, $9D, $55, $E1
|0CA7B1| db $5C, $06, $07, $A4, $27, $63, $20, $02
|0CA7B9| db $03, $20, $69, $04, $05, $9C, $E7, $49
|0CA7C1| db $60, $06, $77, $A4, $A4, $63, $E6, $07
|0CA7C9| db $63, $20, $69, $01
|0CA7CD| db $63 ; Increment fill
|0CA7CE| db $08
|0CA7CF| db $E0, $20 ; EXT Raw block
|0CA7D1| db $A4, $2F, $AD, $0C, $A4, $63, $0C, $0D
|0CA7D9| db $65, $90, $0E, $E1, $61, $FC, $07, $A4
|0CA7E1| db $BD, $0F, $A4, $27, $32, $10, $EA, $6A
|0CA7E9| db $97, $11, $12, $7D, $AD, $03, $77, $13
|0CA7F1| db $A4
|0CA7F2| db $62 ; Increment fill
|0CA7F3| db $14
|0CA7F4| db $E0, $3D ; EXT Raw block
|0CA7F6| db $A4, $65, $17, $97, $11, $A2, $96, $7D
|0CA7FE| db $71, $18, $A4, $78, $93, $32, $A4, $A4
|0CA806| db $BD, $ED, $19, $91, $1A, $A4, $AA, $61
|0CA80E| db $1B, $80, $1C, $27, $1D, $0F, $A4, $71
|0CA816| db $BD, $DC, $20, $1E, $1F, $AD, $27, $A4
|0CA81E| db $3D, $0A, $2F, $1D, $20, $2F, $0F, $A4
|0CA826| db $AE, $DC, $20, $1A, $AD, $32, $27, $AD
|0CA82E| db $2F, $71, $1D, $1D, $21, $21
|0CA834| db $62 ; Increment fill
|0CA835| db $14
|0CA836| db $62 ; Increment fill
|0CA837| db $22
|0CA838| db $23 ; Repeat byte
|0CA839| db $25
|0CA83A| db $0B ; Raw block
|0CA83B| db $60, $2F, $1D, $0F, $26, $26, $A4, $14
|0CA843| db $15, $83, $E6, $F4
|0CA847| db $22 ; Repeat byte
|0CA848| db $F5
|0CA849| db $10 ; Raw block
|0CA84A| db $27, $24, $60, $20, $A4, $28, $29, $25
|0CA852| db $2A, $2B, $83, $D5, $9F, $FB, $1D, $9F
|0CA85A| db $E6
|0CA85B| db $62 ; Increment fill
|0CA85C| db $2C
|0CA85D| db $02 ; Raw block
|0CA85E| db $2E, $2F, $FB
|0CA861| db $22 ; Repeat byte
|0CA862| db $FC
|0CA863| db $12 ; Raw block
|0CA864| db $9E, $7A, $D5, $66, $1C, $1D, $1D, $E6
|0CA86C| db $30, $EC, $99, $03, $F6, $EB, $79, $AD
|0CA874| db $31, $32, $06
|0CA877| db $24 ; Repeat byte
|0CA878| db $07
|0CA879| db $07 ; Raw block
|0CA87A| db $33, $09, $0A, $9D, $4B, $4B, $06, $D5
|0CA882| db $FF ; End of Map 78

;===================================================================================================

OverworldMap32_Screen79_High:
|0CA883| db $08 ; Raw block
|0CA884| db $1C, $05, $05, $1E, $1E, $1C, $05, $1E
|0CA88C| db $05
|0CA88D| db $24 ; Repeat byte
|0CA88E| db $1E
|0CA88F| db $00 ; Raw block
|0CA890| db $01
|0CA891| db $23 ; Repeat byte
|0CA892| db $1E
|0CA893| db $01 ; Raw block
|0CA894| db $1C, $05
|0CA896| db $22 ; Repeat byte
|0CA897| db $1C
|0CA898| db $01 ; Raw block
|0CA899| db $05, $1E
|0CA89B| db $22 ; Repeat byte
|0CA89C| db $10
|0CA89D| db $02 ; Raw block
|0CA89E| db $0D, $01, $01
|0CA8A1| db $83 ; Copy past
|0CA8A2| dw $0300
|0CA8A4| db $07 ; Raw block
|0CA8A5| db $05, $1E, $05, $1C, $1E, $1E, $10, $1E
|0CA8AD| db $23 ; Repeat byte
|0CA8AE| db $01
|0CA8AF| db $23 ; Repeat byte
|0CA8B0| db $1E
|0CA8B1| db $0B ; Raw block
|0CA8B2| db $05, $05, $1E, $10, $1E, $05, $0D, $01
|0CA8BA| db $19, $1E, $1E, $19
|0CA8BE| db $22 ; Repeat byte
|0CA8BF| db $1E
|0CA8C0| db $01 ; Raw block
|0CA8C1| db $1D, $1E
|0CA8C3| db $83 ; Copy past
|0CA8C4| dw $0700
|0CA8C6| db $0A ; Raw block
|0CA8C7| db $05, $0D, $01, $1D, $04, $1E, $1E, $10
|0CA8CF| db $1C, $0F, $05
|0CA8D2| db $84 ; Copy past
|0CA8D3| dw $2200
|0CA8D5| db $0B ; Raw block
|0CA8D6| db $05, $0D, $01, $1E, $01, $03, $10, $0F
|0CA8DE| db $1C, $15, $1C, $0F
|0CA8E2| db $84 ; Copy past
|0CA8E3| dw $5500
|0CA8E5| db $08 ; Raw block
|0CA8E6| db $10, $11, $19, $1E, $01, $10, $1C, $05
|0CA8EE| db $1E
|0CA8EF| db $22 ; Repeat byte
|0CA8F0| db $05
|0CA8F1| db $00 ; Raw block
|0CA8F2| db $1C
|0CA8F3| db $85 ; Copy past
|0CA8F4| dw $5400
|0CA8F6| db $09 ; Raw block
|0CA8F7| db $19, $10, $01, $05, $05, $1C, $10, $05
|0CA8FF| db $1E, $1C
|0CA901| db $23 ; Repeat byte
|0CA902| db $1E
|0CA903| db $22 ; Repeat byte
|0CA904| db $05
|0CA905| db $03 ; Raw block
|0CA906| db $01, $01, $1C, $05
|0CA90A| db $22 ; Repeat byte
|0CA90B| db $1E
|0CA90C| db $22 ; Repeat byte
|0CA90D| db $1C
|0CA90E| db $83 ; Copy past
|0CA90F| dw $0700
|0CA911| db $22 ; Repeat byte
|0CA912| db $05
|0CA913| db $00 ; Raw block
|0CA914| db $01
|0CA915| db $83 ; Copy past
|0CA916| dw $2400
|0CA918| db $43 ; Repeat word
|0CA919| dw $1E1C
|0CA91B| db $02 ; Raw block
|0CA91C| db $1E, $1C, $0F
|0CA91F| db $84 ; Copy past
|0CA920| dw $4400
|0CA922| db $00 ; Raw block
|0CA923| db $1C
|0CA924| db $84 ; Copy past
|0CA925| dw $2500
|0CA927| db $22 ; Repeat byte
|0CA928| db $1C
|0CA929| db $04 ; Raw block
|0CA92A| db $05, $1E, $15, $1E, $05
|0CA92F| db $83 ; Copy past
|0CA930| dw $0D00
|0CA932| db $84 ; Copy past
|0CA933| dw $B200
|0CA935| db $83 ; Copy past
|0CA936| dw $9300
|0CA938| db $84 ; Copy past
|0CA939| dw $4700
|0CA93B| db $00 ; Raw block
|0CA93C| db $10
|0CA93D| db $25 ; Repeat byte
|0CA93E| db $1E
|0CA93F| db $22 ; Repeat byte
|0CA940| db $1C
|0CA941| db $02 ; Raw block
|0CA942| db $1E, $1E, $10
|0CA945| db $22 ; Repeat byte
|0CA946| db $1E
|0CA947| db $01 ; Raw block
|0CA948| db $02, $0D
|0CA94A| db $23 ; Repeat byte
|0CA94B| db $10
|0CA94C| db $23 ; Repeat byte
|0CA94D| db $1E
|0CA94E| db $23 ; Repeat byte
|0CA94F| db $10
|0CA950| db $03 ; Raw block
|0CA951| db $05, $01, $01, $0D
|0CA955| db $28 ; Repeat byte
|0CA956| db $10
|0CA957| db $04 ; Raw block
|0CA958| db $01, $1E, $0D, $01, $01
|0CA95D| db $FF ; End of Map 79

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen79_Low:
|0CA95E| db $0A ; Raw block
|0CA95F| db $32, $A4, $A4, $34, $16, $2B, $A4, $35
|0CA967| db $A4, $36, $2E
|0CA96A| db $62 ; Increment fill
|0CA96B| db $37
|0CA96C| db $01 ; Raw block
|0CA96D| db $49, $3A
|0CA96F| db $62 ; Increment fill
|0CA970| db $14
|0CA971| db $18 ; Raw block
|0CA972| db $2E, $A4, $9A, $2E, $2B, $A4, $3B, $8F
|0CA97A| db $10, $09, $E9, $6A, $06, $3C, $3D, $60
|0CA982| db $A4, $A4, $3E, $A4, $2E, $36, $3F, $14
|0CA98A| db $40
|0CA98B| db $23 ; Repeat byte
|0CA98C| db $06
|0CA98D| db $63 ; Increment fill
|0CA98E| db $41
|0CA98F| db $0B ; Raw block
|0CA990| db $A4, $A4, $45, $BA, $3B, $FB, $01, $00
|0CA998| db $B6, $46, $47, $B5
|0CA99C| db $62 ; Increment fill
|0CA99D| db $48
|0CA99E| db $E0, $21 ; EXT Raw block
|0CA9A0| db $F9, $4B, $4C, $A4, $36, $3F, $FB, $01
|0CA9A8| db $00, $3A, $E6, $4D, $4E, $BB, $D3, $8D
|0CA9B0| db $E1, $37, $A4, $A4, $4F, $FB, $FB, $01
|0CA9B8| db $00, $50, $00, $63, $C3, $9C, $49, $61
|0CA9C0| db $4A, $77
|0CA9C2| db $84 ; Copy past
|0CA9C3| dw $5500
|0CA9C5| db $08 ; Raw block
|0CA9C6| db $19, $05, $D5, $51, $FD, $B9, $2E, $A4
|0CA9CE| db $1C
|0CA9CF| db $22 ; Repeat byte
|0CA9D0| db $A4
|0CA9D1| db $11 ; Raw block
|0CA9D2| db $23, $95, $FB, $FB, $52, $B1, $A6, $DB
|0CA9DA| db $C1, $06, $A4, $A4, $2F, $AD, $A4, $1C
|0CA9E2| db $27, $1D
|0CA9E4| db $62 ; Increment fill
|0CA9E5| db $53
|0CA9E6| db $10 ; Raw block
|0CA9E7| db $D0, $B1, $A6, $06, $06, $2B, $A4, $56
|0CA9EF| db $34, $16, $32, $2F, $32, $57, $A4, $58
|0CA9F7| db $59
|0CA9F8| db $83 ; Copy past
|0CA9F9| dw $8B00
|0CA9FB| db $E0, $3C ; EXT Raw block
|0CA9FD| db $A4, $5A, $A4, $32, $93, $5B, $79, $5C
|0CAA05| db $5D, $32, $86, $5E, $5F, $D0, $60, $61
|0CAA0D| db $93, $62, $A4, $8F, $63, $64, $23, $84
|0CAA15| db $27, $A4, $65, $7D, $66, $DC, $67, $00
|0CAA1D| db $25, $68, $A4, $71, $69, $15, $32, $6A
|0CAA25| db $69, $71, $93, $6B, $6C, $FB, $01, $00
|0CAA2D| db $45, $6D, $6E, $25, $6F, $29, $68, $78
|0CAA35| db $93, $A4, $70, $38, $EC
|0CAA3A| db $62 ; Increment fill
|0CAA3B| db $71
|0CAA3C| db $02 ; Raw block
|0CAA3D| db $D1, $52, $F5
|0CAA40| db $22 ; Repeat byte
|0CAA41| db $EC
|0CAA42| db $0C ; Raw block
|0CAA43| db $74, $75, $75, $38, $53, $54, $09, $0A
|0CAA4B| db $9D, $06, $06, $9E, $56
|0CAA50| db $26 ; Repeat byte
|0CAA51| db $09
|0CAA52| db $05 ; Raw block
|0CAA53| db $57, $06, $76, $4C, $06, $06
|0CAA59| db $FF ; End of Map 79

;===================================================================================================

OverworldMap32_Screen7A_High:
|0CAA5A| db $02 ; Raw block
|0CAA5B| db $01, $01, $03
|0CAA5E| db $29 ; Repeat byte
|0CAA5F| db $01
|0CAA60| db $0C ; Raw block
|0CAA61| db $05, $1E, $06, $01, $03, $03, $01, $01
|0CAA69| db $10, $10, $1E, $1E, $10
|0CAA6E| db $22 ; Repeat byte
|0CAA6F| db $01
|0CAA70| db $04 ; Raw block
|0CAA71| db $05, $05, $01, $01, $02
|0CAA76| db $22 ; Repeat byte
|0CAA77| db $1E
|0CAA78| db $0E ; Raw block
|0CAA79| db $01, $10, $19, $10, $02, $10, $01, $01
|0CAA81| db $10, $0E, $0E, $01, $02, $10, $01
|0CAA88| db $43 ; Repeat word
|0CAA89| dw $0B10
|0CAA8B| db $13 ; Raw block
|0CAA8C| db $0F, $01, $06, $00, $04, $01, $01, $06
|0CAA94| db $0F, $05, $1E, $0E, $1E, $10, $10, $06
|0CAA9C| db $0F, $10, $00, $02
|0CAAA0| db $23 ; Repeat byte
|0CAAA1| db $01
|0CAAA2| db $0B ; Raw block
|0CAAA3| db $07, $01, $02, $1E, $0B, $03, $10, $01
|0CAAAB| db $10, $02, $02, $10
|0CAAAF| db $22 ; Repeat byte
|0CAAB0| db $01
|0CAAB1| db $0C ; Raw block
|0CAAB2| db $0C, $1E, $02, $00, $1E, $0B, $06, $03
|0CAABA| db $01, $10, $02, $10, $00
|0CAABF| db $23 ; Repeat byte
|0CAAC0| db $03
|0CAAC1| db $0B ; Raw block
|0CAAC2| db $01, $1E, $00, $1E, $0B, $02, $10, $10
|0CAACA| db $00, $10, $0F, $04
|0CAACE| db $22 ; Repeat byte
|0CAACF| db $03
|0CAAD0| db $01 ; Raw block
|0CAAD1| db $01, $01
|0CAAD3| db $22 ; Repeat byte
|0CAAD4| db $1E
|0CAAD5| db $02 ; Raw block
|0CAAD6| db $19, $03, $0F
|0CAAD9| db $22 ; Repeat byte
|0CAADA| db $10
|0CAADB| db $0E ; Raw block
|0CAADC| db $0F, $10, $10, $09, $03, $01, $01, $00
|0CAAE4| db $00, $1E, $01, $02, $0F, $06, $00
|0CAAEB| db $83 ; Copy past
|0CAAEC| dw $8900
|0CAAEE| db $0A ; Raw block
|0CAAEF| db $02, $05, $02, $01, $02, $1E, $19, $01
|0CAAF7| db $02, $0F, $00
|0CAAFA| db $83 ; Copy past
|0CAAFB| dw $7800
|0CAAFD| db $0F ; Raw block
|0CAAFE| db $09, $10, $10, $0A, $01, $00, $19, $01
|0CAB06| db $1C, $1E, $10, $0B, $01, $10, $0F, $10
|0CAB0E| db $43 ; Repeat word
|0CAB0F| dw $0601
|0CAB11| db $00 ; Raw block
|0CAB12| db $10
|0CAB13| db $43 ; Repeat word
|0CAB14| dw $011C
|0CAB16| db $07 ; Raw block
|0CAB17| db $10, $02, $0F, $05, $10, $10, $03, $10
|0CAB1F| db $22 ; Repeat byte
|0CAB20| db $01
|0CAB21| db $06 ; Raw block
|0CAB22| db $0E, $10, $1E, $01, $05, $01, $0E
|0CAB29| db $22 ; Repeat byte
|0CAB2A| db $01
|0CAB2B| db $01 ; Raw block
|0CAB2C| db $0D, $0E
|0CAB2E| db $83 ; Copy past
|0CAB2F| dw $CB00
|0CAB31| db $0A ; Raw block
|0CAB32| db $0D, $03, $1B, $05, $01, $0B, $01, $06
|0CAB3A| db $06, $01, $0D
|0CAB3D| db $83 ; Copy past
|0CAB3E| dw $DA00
|0CAB40| db $00 ; Raw block
|0CAB41| db $10
|0CAB42| db $24 ; Repeat byte
|0CAB43| db $01
|0CAB44| db $07 ; Raw block
|0CAB45| db $0E, $06, $01, $0D, $06, $0C, $01, $1E
|0CAB4D| db $22 ; Repeat byte
|0CAB4E| db $03
|0CAB4F| db $FF ; End of Map 7A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen7A_Low:
|0CAB50| db $02 ; Raw block
|0CAB51| db $06, $06, $6A
|0CAB54| db $29 ; Repeat byte
|0CAB55| db $0A
|0CAB56| db $0C ; Raw block
|0CAB57| db $A6, $77, $A3, $06, $6A, $6B, $15, $15
|0CAB5F| db $5F, $60, $78, $79, $5E
|0CAB64| db $22 ; Repeat byte
|0CAB65| db $15
|0CAB66| db $04 ; Raw block
|0CAB67| db $B1, $A6, $06, $06, $DC
|0CAB6C| db $62 ; Increment fill
|0CAB6D| db $7A
|0CAB6E| db $E0, $46 ; EXT Raw block
|0CAB70| db $23, $67, $E4, $63, $02, $69, $22, $22
|0CAB78| db $6B, $EE, $40, $06, $DC, $C3, $06, $6D
|0CAB80| db $F9, $6E, $4B, $83, $1E, $66, $1D, $BB
|0CAB88| db $77, $71, $A2, $4C, $89, $7D, $35, $7E
|0CAB90| db $73, $6E, $A2, $83, $74, $1D, $8A, $41
|0CAB98| db $5B, $5C, $06, $6F, $ED, $91, $7F, $33
|0CABA0| db $E2, $77, $0A, $78, $8A, $8A, $79, $52
|0CABA8| db $53, $6A, $ED, $80, $7A, $1D, $81, $33
|0CABB0| db $66, $56, $22, $7D, $F8, $7E, $1D
|0CABB7| db $62 ; Increment fill
|0CABB8| db $50
|0CABB9| db $E0, $80 ; EXT Raw block
|0CABBB| db $20, $E3, $82, $1D, $81, $33, $F8, $7E
|0CABC3| db $80, $1D, $6E, $83, $C1, $56, $57, $5A
|0CABCB| db $F8, $E3, $83, $83, $81, $B3, $02, $83
|0CABD3| db $83, $84, $6E, $83, $83, $84, $D1, $BA
|0CABDB| db $E5, $E3, $1D, $1D, $81, $06, $69, $83
|0CABE3| db $66, $1D, $6E, $83, $88, $89, $8D, $57
|0CABEB| db $4C, $E3, $D4, $84, $BC, $06, $69, $83
|0CABF3| db $1D, $1D, $6E, $83, $BB, $F4, $8D, $F6
|0CABFB| db $79, $E3, $A1, $BC, $06, $0C, $85, $91
|0CAC03| db $46, $41, $6E, $83, $92, $77, $12, $0C
|0CAC0B| db $A2, $7C, $14, $06, $0C, $55, $94, $D1
|0CAC13| db $38, $58, $95, $96, $8D, $97, $03, $09
|0CAC1B| db $0A, $3C, $76, $86, $55, $9D, $06, $40
|0CAC23| db $EA, $EB, $6A, $97, $3C, $8D, $9B, $13
|0CAC2B| db $15, $97, $4A, $CB, $9D, $06, $4B, $06
|0CAC33| db $A2, $A3, $06, $A2, $97, $3C, $8D, $9E
|0CAC3B| db $9F
|0CAC3C| db $24 ; Repeat byte
|0CAC3D| db $06
|0CAC3E| db $0A ; Raw block
|0CAC3F| db $3F, $A2, $06, $A2, $A2, $ED, $06, $87
|0CAC47| db $4A, $4B, $4B
|0CAC4A| db $FF ; End of Map 7A

;===================================================================================================

OverworldMap32_Screen3B_High:
|0CAC4B| db $06 ; Raw block
|0CAC4C| db $06, $01, $1E, $03, $01, $06, $07
|0CAC53| db $24 ; Repeat byte
|0CAC54| db $06
|0CAC55| db $0A ; Raw block
|0CAC56| db $07, $06, $1E, $1D, $0C, $06, $0F, $07
|0CAC5E| db $1E, $04, $09
|0CAC61| db $24 ; Repeat byte
|0CAC62| db $06
|0CAC63| db $0B ; Raw block
|0CAC64| db $18, $06, $1E, $1E, $06, $0F, $07, $01
|0CAC6C| db $02, $1E, $1E, $07
|0CAC70| db $23 ; Repeat byte
|0CAC71| db $06
|0CAC72| db $1B ; Raw block
|0CAC73| db $00, $00, $09, $06, $01, $03, $1E, $02
|0CAC7B| db $00, $1E, $0B, $00, $19, $06, $06, $1E
|0CAC83| db $05, $00, $07, $07, $0B, $03, $01, $06
|0CAC8B| db $1E, $19, $0B, $00
|0CAC8F| db $26 ; Repeat byte
|0CAC90| db $1E
|0CAC91| db $0A ; Raw block
|0CAC92| db $06, $06, $1E, $01, $00, $09, $02, $09
|0CAC9A| db $1E, $1E, $05
|0CAC9D| db $23 ; Repeat byte
|0CAC9E| db $1E
|0CAC9F| db $0B ; Raw block
|0CACA0| db $1D, $06, $03, $07, $1E, $00, $06, $19
|0CACA8| db $01, $1E, $1E, $11
|0CACAC| db $23 ; Repeat byte
|0CACAD| db $1E
|0CACAE| db $06 ; Raw block
|0CACAF| db $1D, $06, $0F, $01, $02, $09, $1E
|0CACB6| db $83 ; Copy past
|0CACB7| dw $4600
|0CACB9| db $01 ; Raw block
|0CACBA| db $1C, $05
|0CACBC| db $23 ; Repeat byte
|0CACBD| db $1E
|0CACBE| db $08 ; Raw block
|0CACBF| db $19, $1B, $02, $02, $07, $06, $00, $07
|0CACC7| db $06
|0CACC8| db $26 ; Repeat byte
|0CACC9| db $1E
|0CACCA| db $06 ; Raw block
|0CACCB| db $19, $02, $0E, $03, $06, $06, $07
|0CACD2| db $22 ; Repeat byte
|0CACD3| db $06
|0CACD4| db $24 ; Repeat byte
|0CACD5| db $1E
|0CACD6| db $07 ; Raw block
|0CACD7| db $1D, $06, $01, $0E, $03, $00, $02, $19
|0CACDF| db $23 ; Repeat byte
|0CACE0| db $06
|0CACE1| db $E0, $2F ; EXT Raw block
|0CACE3| db $1D, $06, $00, $1E, $06, $06, $19, $1E
|0CACEB| db $03, $00, $00, $06, $19, $07, $06, $06
|0CACF3| db $0E, $06, $00, $0E, $06, $06, $0F, $03
|0CACFB| db $03, $00, $00, $1E, $00, $00, $07, $1E
|0CAD03| db $1E, $03, $03, $07, $19, $06, $0D, $04
|0CAD0B| db $03, $06, $00, $0C, $03, $03, $07, $0D
|0CAD13| db $24 ; Repeat byte
|0CAD14| db $03
|0CAD15| db $10 ; Raw block
|0CAD16| db $07, $10, $1E, $0C, $03, $03, $01, $0C
|0CAD1E| db $03, $1C, $0F, $16, $1B, $1E, $0E, $07
|0CAD26| db $02
|0CAD27| db $24 ; Repeat byte
|0CAD28| db $03
|0CAD29| db $0A ; Raw block
|0CAD2A| db $0D, $01, $16, $1E, $1E, $01, $02, $1B
|0CAD32| db $1E, $01, $01
|0CAD35| db $FF ; End of Map 3B

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen3B_Low:
|0CAD36| db $06 ; Raw block
|0CAD37| db $A2, $06, $88, $63, $E3, $90, $65
|0CAD3E| db $23 ; Repeat byte
|0CAD3F| db $7C
|0CAD40| db $0B ; Raw block
|0CAD41| db $CD, $34, $7C, $89, $4D, $ED, $A3, $4C
|0CAD49| db $6F, $8A, $2C, $1C
|0CAD4D| db $24 ; Repeat byte
|0CAD4E| db $7C
|0CAD4F| db $0B ; Raw block
|0CAD50| db $0B, $66, $8B, $8C, $A2, $4C, $6F, $ED
|0CAD58| db $7A, $8D, $8E, $65
|0CAD5C| db $23 ; Repeat byte
|0CAD5D| db $7C
|0CAD5E| db $1B ; Raw block
|0CAD5F| db $9F, $1D, $1C, $7C, $06, $63, $8F, $7A
|0CAD67| db $1D, $90, $33, $9F, $A8, $7C, $7C, $91
|0CAD6F| db $CB, $1C, $34, $65, $56, $63, $E3, $66
|0CAD77| db $92, $BC, $33, $1D
|0CAD7B| db $66 ; Increment fill
|0CAD7C| db $93
|0CAD7D| db $0A ; Raw block
|0CAD7E| db $74, $A2, $9A, $E3, $A9, $C1, $59, $DD
|0CAD86| db $9B, $9C, $BD
|0CAD89| db $63 ; Increment fill
|0CAD8A| db $9D
|0CAD8B| db $0B ; Raw block
|0CAD8C| db $3E, $7C, $20, $6F, $8A, $1D, $3E, $93
|0CAD94| db $4B, $A1, $A2, $01
|0CAD98| db $63 ; Increment fill
|0CAD99| db $A3
|0CAD9A| db $0C ; Raw block
|0CAD9B| db $2F, $7C, $43, $ED, $7A, $16, $A7, $F9
|0CADA3| db $1D, $A8, $A9, $6B, $E1
|0CADA8| db $63 ; Increment fill
|0CADA9| db $AA
|0CADAA| db $08 ; Raw block
|0CADAB| db $88, $19, $7A, $DE, $39, $7C, $B2, $39
|0CADB3| db $CD
|0CADB4| db $66 ; Increment fill
|0CADB5| db $AE
|0CADB6| db $09 ; Raw block
|0CADB7| db $8B, $4C, $33, $86, $90, $83, $2C, $7C
|0CADBF| db $7C, $ED
|0CADC1| db $64 ; Increment fill
|0CADC2| db $B5
|0CADC3| db $07 ; Raw block
|0CADC4| db $3D, $7C, $EB, $3C, $8D, $1D, $8A, $8B
|0CADCC| db $23 ; Repeat byte
|0CADCD| db $7C
|0CADCE| db $E0, $45 ; EXT Raw block
|0CADD0| db $2B, $89, $1D, $BA, $7C, $7C, $D4, $BB
|0CADD8| db $95, $A5, $1D, $7C, $A3, $65, $7C, $7C
|0CADE0| db $12, $91, $1D, $12, $7C, $7C, $3F, $6B
|0CADE8| db $9D, $1D, $1C, $BC, $9F, $A5, $34, $BD
|0CADF0| db $BE, $44, $44, $D2, $88, $7C, $FB, $84
|0CADF8| db $A8, $66, $AA, $E3, $44, $44, $C0, $48
|0CAE00| db $4B, $4B, $8C, $8D, $86, $65, $9F, $BF
|0CAE08| db $E4, $44, $44, $48, $E8, $4B, $AF, $2B
|0CAE10| db $E3, $C6, $C0, $3C, $CF, $4C
|0CAE16| db $24 ; Repeat byte
|0CAE17| db $4B
|0CAE18| db $0A ; Raw block
|0CAE19| db $E9, $63, $E3, $C1, $C2, $49, $D1, $C9
|0CAE21| db $C0, $EB, $EB
|0CAE24| db $FF ; End of Map 3B

;===================================================================================================

OverworldMap32_Screen3C_High:
|0CAE25| db $01 ; Raw block
|0CAE26| db $1D, $1D
|0CAE28| db $2A ; Repeat byte
|0CAE29| db $06
|0CAE2A| db $07 ; Raw block
|0CAE2B| db $1D, $10, $0D, $1E, $1E, $06, $1D, $1E
|0CAE33| db $43 ; Repeat word
|0CAE34| dw $1D06
|0CAE36| db $23 ; Repeat byte
|0CAE37| db $06
|0CAE38| db $02 ; Raw block
|0CAE39| db $1E, $05, $0B
|0CAE3C| db $22 ; Repeat byte
|0CAE3D| db $06
|0CAE3E| db $11 ; Raw block
|0CAE3F| db $1E, $05, $06, $0E, $0D, $0E, $06, $04
|0CAE47| db $1E, $1B, $10, $0D, $01, $06, $1E, $04
|0CAE4F| db $00, $1D
|0CAE51| db $22 ; Repeat byte
|0CAE52| db $1E
|0CAE53| db $15 ; Raw block
|0CAE54| db $00, $04, $02, $19, $1E, $01, $0B, $01
|0CAE5C| db $1E, $04, $1C, $07, $1E, $1D, $1D, $1E
|0CAE64| db $04, $1E, $0A, $0A, $1E, $01
|0CAE6A| db $22 ; Repeat byte
|0CAE6B| db $06
|0CAE6C| db $1D ; Raw block
|0CAE6D| db $1E, $06, $06, $1E, $1D, $1E, $09, $1E
|0CAE75| db $0C, $0A, $16, $1E, $03, $05, $01, $06
|0CAE7D| db $06, $1E, $1E, $09, $06, $04, $03, $06
|0CAE85| db $0A, $18, $18, $05, $1C, $0E
|0CAE8B| db $84 ; Copy past
|0CAE8C| dw $5F00
|0CAE8E| db $0B ; Raw block
|0CAE8F| db $06, $1E, $01, $03, $06, $0A, $1E, $16
|0CAE97| db $18, $05, $01, $0B
|0CAE9B| db $22 ; Repeat byte
|0CAE9C| db $06
|0CAE9D| db $11 ; Raw block
|0CAE9E| db $04, $04, $1E, $15, $04, $1E, $05, $0A
|0CAEA6| db $1E, $0A, $05, $06, $03, $06, $19, $1E
|0CAEAE| db $04, $04
|0CAEB0| db $22 ; Repeat byte
|0CAEB1| db $1E
|0CAEB2| db $00 ; Raw block
|0CAEB3| db $05
|0CAEB4| db $22 ; Repeat byte
|0CAEB5| db $11
|0CAEB6| db $06 ; Raw block
|0CAEB7| db $05, $05, $1E, $10, $1D, $07, $02
|0CAEBE| db $24 ; Repeat byte
|0CAEBF| db $1E
|0CAEC0| db $01 ; Raw block
|0CAEC1| db $0C, $18
|0CAEC3| db $22 ; Repeat byte
|0CAEC4| db $11
|0CAEC5| db $04 ; Raw block
|0CAEC6| db $1E, $1E, $0C, $06, $00
|0CAECB| db $25 ; Repeat byte
|0CAECC| db $1E
|0CAECD| db $1F ; Raw block
|0CAECE| db $0A, $05, $05, $16, $06, $05, $1E, $10
|0CAED6| db $06, $06, $1E, $0F, $05, $1E, $05, $05
|0CAEDE| db $1E, $0A, $1E, $1E, $0A, $1E, $05, $05
|0CAEE6| db $06, $09, $07, $1E, $0F, $0A, $0A, $1B
|0CAEEE| db $22 ; Repeat byte
|0CAEEF| db $10
|0CAEF0| db $06 ; Raw block
|0CAEF1| db $1E, $05, $0A, $05, $06, $02, $02
|0CAEF8| db $22 ; Repeat byte
|0CAEF9| db $1E
|0CAEFA| db $25 ; Repeat byte
|0CAEFB| db $10
|0CAEFC| db $00 ; Raw block
|0CAEFD| db $1E
|0CAEFE| db $23 ; Repeat byte
|0CAEFF| db $0F
|0CAF00| db $02 ; Raw block
|0CAF01| db $1A, $1A, $01
|0CAF04| db $83 ; Copy past
|0CAF05| dw $E300
|0CAF07| db $08 ; Raw block
|0CAF08| db $0D, $01, $01, $19, $01, $0E, $11, $1E
|0CAF10| db $0E
|0CAF11| db $FF ; End of Map 3C

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen3C_Low:
|0CAF12| db $01 ; Raw block
|0CAF13| db $4D, $4E
|0CAF15| db $2A ; Repeat byte
|0CAF16| db $7C
|0CAF17| db $07 ; Raw block
|0CAF18| db $26, $6E, $A2, $8C, $C3, $7C, $35, $C4
|0CAF20| db $43 ; Repeat word
|0CAF21| dw $2B7C
|0CAF23| db $23 ; Repeat byte
|0CAF24| db $7C
|0CAF25| db $02 ; Raw block
|0CAF26| db $C5, $9D, $4B
|0CAF29| db $22 ; Repeat byte
|0CAF2A| db $7C
|0CAF2B| db $10 ; Raw block
|0CAF2C| db $C6, $B6, $7C, $12, $F8, $12, $83, $BB
|0CAF34| db $C7, $B6, $6E, $A2, $06, $7C, $C8, $BE
|0CAF3C| db $1D
|0CAF3D| db $63 ; Increment fill
|0CAF3E| db $C8
|0CAF3F| db $E0, $5C ; EXT Raw block
|0CAF41| db $1D, $81, $61, $70, $CC, $71, $4B, $06
|0CAF49| db $A7, $BE, $FE, $39, $CD, $4D, $CF, $CE
|0CAF51| db $81, $CF, $1D, $1D, $D0, $71, $A2, $A2
|0CAF59| db $7C, $D1, $7C, $7C, $D2, $D4, $D3, $ED
|0CAF61| db $D4, $91, $0D, $98, $D5, $51, $A6, $06
|0CAF69| db $7C, $7C, $D6, $D7, $25, $39, $BB, $A1
|0CAF71| db $20, $0D, $33, $33, $DC, $7B, $EE, $06
|0CAF79| db $7C, $7C, $D8, $D9, $39, $DA, $DB, $A1
|0CAF81| db $20, $97, $DB, $A7, $33, $E9, $71, $4B
|0CAF89| db $7C, $7C, $CD, $B5, $B6, $DC, $EC, $C5
|0CAF91| db $DD, $FB, $97, $DE, $0B, $E9, $12, $20
|0CAF99| db $7C, $A3, $DF, $B7, $B8
|0CAF9E| db $62 ; Increment fill
|0CAF9F| db $E0
|0CAFA0| db $0A ; Raw block
|0CAFA1| db $FB, $23, $21, $21, $E8, $E9, $E3, $C5
|0CAFA9| db $1F, $AF, $65
|0CAFAC| db $64 ; Increment fill
|0CAFAD| db $E4
|0CAFAE| db $09 ; Raw block
|0CAFAF| db $96, $33, $23, $21, $21, $D5, $E9, $AD
|0CAFB7| db $7C, $1D
|0CAFB9| db $65 ; Increment fill
|0CAFBA| db $EA
|0CAFBB| db $1F ; Raw block
|0CAFBC| db $E8, $FB, $E8, $98, $05, $DC, $F0, $C5
|0CAFC4| db $7C, $CD, $F1, $27, $FB, $F2, $FB, $FB
|0CAFCC| db $F3, $0D, $DB, $F4, $0D, $F5, $E8, $FB
|0CAFD4| db $7C, $25, $3A, $F6, $27, $0B, $0B, $DB
|0CAFDC| db $22 ; Repeat byte
|0CAFDD| db $EC
|0CAFDE| db $06 ; Raw block
|0CAFDF| db $F7, $FB, $0C, $FB, $05, $4C, $4C
|0CAFE6| db $62 ; Increment fill
|0CAFE7| db $F8
|0CAFE8| db $06 ; Raw block
|0CAFE9| db $EC, $EC, $53, $54, $09, $09, $FB
|0CAFF0| db $23 ; Repeat byte
|0CAFF1| db $FC
|0CAFF2| db $0F ; Raw block
|0CAFF3| db $AE, $AE, $EB, $4D, $FC, $09, $09, $E9
|0CAFFB| db $6A, $06, $D4, $EA, $3B, $24, $FD, $3B
|0CB003| db $FF ; End of Map 3C

;===================================================================================================

OverworldMap32_Screen7D_High:
|0CB004| db $E0, $40 ; EXT Raw block
|0CB006| db $0F, $0F, $0B, $00, $06, $03, $10, $1E
|0CB00E| db $1D, $11, $10, $0F, $10, $09, $07, $05
|0CB016| db $10, $10, $02, $07, $03, $03, $1E, $1F
|0CB01E| db $1F, $1B, $1F, $0F, $09, $05, $05, $07
|0CB026| db $0D, $10, $0D, $0D, $03, $03, $10, $10
|0CB02E| db $05, $0F, $1F, $05, $07, $09, $05, $05
|0CB036| db $01, $02, $01, $10, $0E, $10, $10, $02
|0CB03E| db $0A, $1F, $0F, $0F, $05, $0F, $0F, $09
|0CB046| db $10
|0CB047| db $43 ; Repeat word
|0CB048| dw $010E
|0CB04A| db $04 ; Raw block
|0CB04B| db $01, $10, $02, $0A, $1C
|0CB050| db $83 ; Copy past
|0CB051| dw $3900
|0CB053| db $00 ; Raw block
|0CB054| db $05
|0CB055| db $26 ; Repeat byte
|0CB056| db $10
|0CB057| db $14 ; Raw block
|0CB058| db $0F, $05, $0A, $1F, $1C, $11, $1F, $1E
|0CB060| db $1F, $1F, $10, $03, $1C, $0A, $1F, $01
|0CB068| db $01, $1F, $0A, $05, $1F
|0CB06D| db $22 ; Repeat byte
|0CB06E| db $1E
|0CB06F| db $06 ; Raw block
|0CB070| db $1C, $1F, $10, $10, $0D, $06, $10
|0CB077| db $23 ; Repeat byte
|0CB078| db $0A
|0CB079| db $0A ; Raw block
|0CB07A| db $1F, $1F, $0A, $05, $05, $1F, $11, $03
|0CB082| db $10, $1F, $0A
|0CB085| db $22 ; Repeat byte
|0CB086| db $06
|0CB087| db $13 ; Raw block
|0CB088| db $1C, $1F, $1F, $1C, $1C, $05, $1C, $1F
|0CB090| db $10, $0C, $10, $06, $06, $05, $0A, $0A
|0CB098| db $1F, $07, $05, $15
|0CB09C| db $22 ; Repeat byte
|0CB09D| db $1C
|0CB09E| db $08 ; Raw block
|0CB09F| db $11, $05, $0C, $0F, $1E, $05, $06, $05
|0CB0A7| db $05
|0CB0A8| db $83 ; Copy past
|0CB0A9| dw $9700
|0CB0AB| db $0F ; Raw block
|0CB0AC| db $05, $11, $10, $10, $07, $0A, $10, $0A
|0CB0B4| db $0A, $06, $0A, $0A, $10, $08, $09, $0F
|0CB0BC| db $22 ; Repeat byte
|0CB0BD| db $10
|0CB0BE| db $04 ; Raw block
|0CB0BF| db $05, $09, $05, $05, $0A
|0CB0C4| db $22 ; Repeat byte
|0CB0C5| db $05
|0CB0C6| db $22 ; Repeat byte
|0CB0C7| db $10
|0CB0C8| db $09 ; Raw block
|0CB0C9| db $07, $1B, $07, $1C, $05, $05, $09, $05
|0CB0D1| db $06, $06
|0CB0D3| db $22 ; Repeat byte
|0CB0D4| db $10
|0CB0D5| db $83 ; Copy past
|0CB0D6| dw $4D00
|0CB0D8| db $00 ; Raw block
|0CB0D9| db $07
|0CB0DA| db $43 ; Repeat word
|0CB0DB| dw $0509
|0CB0DD| db $00 ; Raw block
|0CB0DE| db $07
|0CB0DF| db $22 ; Repeat byte
|0CB0E0| db $0F
|0CB0E1| db $23 ; Repeat byte
|0CB0E2| db $10
|0CB0E3| db $05 ; Raw block
|0CB0E4| db $1F, $10, $1F, $1F, $05, $0F
|0CB0EA| db $22 ; Repeat byte
|0CB0EB| db $1F
|0CB0EC| db $23 ; Repeat byte
|0CB0ED| db $01
|0CB0EE| db $0B ; Raw block
|0CB0EF| db $0D, $03, $10, $0D, $03, $10, $10, $1F
|0CB0F7| db $0F, $1F, $10, $01
|0CB0FB| db $FF ; End of Map 7D

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen7D_Low:
|0CB0FC| db $E0, $4F ; EXT Raw block
|0CB0FE| db $73, $2F, $46, $B2, $66, $B6, $A4, $FE
|0CB106| db $FC, $07, $AD, $86, $CC, $90, $20, $E1
|0CB10E| db $A7, $A8, $D2, $BF, $44, $44, $FF, $00
|0CB116| db $01, $8D, $02, $8D, $36, $E1, $E1, $19
|0CB11E| db $9E, $AF, $9E, $A1, $4B, $4B, $B0, $B1
|0CB126| db $D3, $60, $03, $E1, $89, $36, $E1, $E1
|0CB12E| db $06, $F2, $06, $B4, $CE, $B5, $B6, $DC
|0CB136| db $09, $04, $9C, $9D, $E1, $60, $94, $4A
|0CB13E| db $B8, $74, $06, $D9, $0A, $FD, $B9, $DC
|0CB146| db $09, $69, $05, $9C, $9B, $A4, $A4, $B7
|0CB14E| db $65 ; Increment fill
|0CB14F| db $BC
|0CB150| db $E0, $6F ; EXT Raw block
|0CB152| db $4C, $89, $09, $06, $60, $0C, $07, $3D
|0CB15A| db $08, $09, $C3, $6A, $19, $08, $0A, $0A
|0CB162| db $FD, $0B, $09, $FB, $0C, $29, $6F, $3F
|0CB16A| db $1F, $0D, $C8, $C9, $6E, $B5, $CB, $1D
|0CB172| db $F5, $39, $09, $0E, $0F, $0C, $FB, $FB
|0CB17A| db $10, $0A, $94, $CD, $11, $1D, $10, $B5
|0CB182| db $B5, $9D, $12, $13, $7C, $1E, $FB, $1F
|0CB18A| db $14, $CC, $90, $D3, $20, $05, $DC, $1D
|0CB192| db $1D, $15, $1E, $E1, $7D, $24, $1D, $25
|0CB19A| db $0A, $E1, $AD, $E1, $DD, $FB, $05, $FB
|0CB1A2| db $E8, $16, $8E, $E1, $7D, $A4, $0C, $BA
|0CB1AA| db $A6, $19, $08, $8B, $0C, $0C, $05, $E8
|0CB1B2| db $0C, $DF, $C0, $52, $B0, $AB, $BA, $AE
|0CB1BA| db $E1, $4A, $FB, $E8, $0C, $FB, $E8, $FB
|0CB1C2| db $62 ; Increment fill
|0CB1C3| db $E2
|0CB1C4| db $09 ; Raw block
|0CB1C5| db $3B, $51, $89, $D3, $E1, $E1, $9D, $FB
|0CB1CD| db $05, $05
|0CB1CF| db $62 ; Increment fill
|0CB1D0| db $EB
|0CB1D1| db $09 ; Raw block
|0CB1D2| db $FB, $FB, $E3, $E4, $3B, $52, $E1, $0B
|0CB1DA| db $E1, $19
|0CB1DC| db $22 ; Repeat byte
|0CB1DD| db $FC
|0CB1DE| db $62 ; Increment fill
|0CB1DF| db $F0
|0CB1E0| db $06 ; Raw block
|0CB1E1| db $EC, $17, $F4, $18, $19, $D3, $BA
|0CB1E8| db $62 ; Increment fill
|0CB1E9| db $1A
|0CB1EA| db $22 ; Repeat byte
|0CB1EB| db $EB
|0CB1EC| db $0C ; Raw block
|0CB1ED| db $EC, $97, $4A, $09, $E9, $4A, $0A, $F6
|0CB1F5| db $1D, $BF, $1E, $F6, $EB
|0CB1FA| db $FF ; End of Map 7D

;===================================================================================================

OverworldMap32_Screen7E_High:
|0CB1FB| db $05 ; Raw block
|0CB1FC| db $1F, $1D, $1F, $1F, $1D, $1F
|0CB202| db $86 ; Copy past
|0CB203| dw $0000
|0CB205| db $04 ; Raw block
|0CB206| db $07, $0F, $01, $1D, $1D
|0CB20B| db $2A ; Repeat byte
|0CB20C| db $1F
|0CB20D| db $03 ; Raw block
|0CB20E| db $0F, $01, $10, $1D
|0CB212| db $2A ; Repeat byte
|0CB213| db $1F
|0CB214| db $05 ; Raw block
|0CB215| db $0F, $01, $01, $10, $07, $10
|0CB21B| db $28 ; Repeat byte
|0CB21C| db $1F
|0CB21D| db $01 ; Raw block
|0CB21E| db $07, $0F
|0CB220| db $43 ; Repeat word
|0CB221| dw $0E01
|0CB223| db $02 ; Raw block
|0CB224| db $1D, $1F, $05
|0CB227| db $24 ; Repeat byte
|0CB228| db $1F
|0CB229| db $0A ; Raw block
|0CB22A| db $1D, $1F, $1F, $11, $11, $01, $0C, $0F
|0CB232| db $1F, $1F, $0F
|0CB235| db $25 ; Repeat byte
|0CB236| db $1F
|0CB237| db $01 ; Raw block
|0CB238| db $11, $1F
|0CB23A| db $22 ; Repeat byte
|0CB23B| db $05
|0CB23C| db $0B ; Raw block
|0CB23D| db $0E, $07, $0F, $11, $10, $05, $09, $1D
|0CB245| db $11, $1F, $10, $11
|0CB249| db $23 ; Repeat byte
|0CB24A| db $05
|0CB24B| db $12 ; Raw block
|0CB24C| db $03, $05, $07, $09, $05, $09, $1F, $09
|0CB254| db $10, $1F, $1F, $0F, $1C, $1F, $05, $05
|0CB25C| db $03, $07, $07
|0CB25F| db $23 ; Repeat byte
|0CB260| db $1F
|0CB261| db $01 ; Raw block
|0CB262| db $10, $1D
|0CB264| db $83 ; Copy past
|0CB265| dw $5A00
|0CB267| db $05 ; Raw block
|0CB268| db $1F, $1C, $1F, $07, $07, $05
|0CB26E| db $22 ; Repeat byte
|0CB26F| db $1F
|0CB270| db $22 ; Repeat byte
|0CB271| db $05
|0CB272| db $09 ; Raw block
|0CB273| db $1D, $05, $05, $10, $1F, $1F, $10, $07
|0CB27B| db $05, $08
|0CB27D| db $23 ; Repeat byte
|0CB27E| db $1F
|0CB27F| db $06 ; Raw block
|0CB280| db $05, $05, $07, $05, $1B, $11, $1F
|0CB287| db $22 ; Repeat byte
|0CB288| db $0F
|0CB289| db $00 ; Raw block
|0CB28A| db $07
|0CB28B| db $22 ; Repeat byte
|0CB28C| db $05
|0CB28D| db $06 ; Raw block
|0CB28E| db $09, $1B, $05, $08, $05, $05, $07
|0CB295| db $24 ; Repeat byte
|0CB296| db $11
|0CB297| db $05 ; Raw block
|0CB298| db $05, $07, $09, $08, $07, $1D
|0CB29E| db $22 ; Repeat byte
|0CB29F| db $05
|0CB2A0| db $00 ; Raw block
|0CB2A1| db $1F
|0CB2A2| db $22 ; Repeat byte
|0CB2A3| db $11
|0CB2A4| db $01 ; Raw block
|0CB2A5| db $05, $1F
|0CB2A7| db $43 ; Repeat word
|0CB2A8| dw $051F
|0CB2AA| db $05 ; Raw block
|0CB2AB| db $05, $1D, $05, $0C, $05, $07
|0CB2B1| db $22 ; Repeat byte
|0CB2B2| db $1F
|0CB2B3| db $03 ; Raw block
|0CB2B4| db $10, $05, $1F, $11
|0CB2B8| db $23 ; Repeat byte
|0CB2B9| db $1F
|0CB2BA| db $22 ; Repeat byte
|0CB2BB| db $0F
|0CB2BC| db $04 ; Raw block
|0CB2BD| db $1F, $1F, $05, $10, $0E
|0CB2C2| db $22 ; Repeat byte
|0CB2C3| db $10
|0CB2C4| db $04 ; Raw block
|0CB2C5| db $0F, $0F, $11, $11, $1F
|0CB2CA| db $22 ; Repeat byte
|0CB2CB| db $0F
|0CB2CC| db $08 ; Raw block
|0CB2CD| db $1F, $05, $05, $06, $0D, $03, $10, $0D
|0CB2D5| db $01
|0CB2D6| db $FF ; End of Map 7E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen7E_Low:
|0CB2D7| db $13 ; Raw block
|0CB2D8| db $1F, $B7, $20, $21, $84, $22, $23, $84
|0CB2E0| db $24, $25, $9D, $26, $27, $4C, $C1, $25
|0CB2E8| db $A0, $8D, $28, $29
|0CB2EC| db $62 ; Increment fill
|0CB2ED| db $29
|0CB2EE| db $01 ; Raw block
|0CB2EF| db $29, $29
|0CB2F1| db $63 ; Increment fill
|0CB2F2| db $2C
|0CB2F3| db $03 ; Raw block
|0CB2F4| db $BD, $49, $FA, $FC
|0CB2F8| db $6A ; Increment fill
|0CB2F9| db $30
|0CB2FA| db $05 ; Raw block
|0CB2FB| db $BD, $49, $6A, $FC, $20, $D8
|0CB301| db $68 ; Increment fill
|0CB302| db $3B
|0CB303| db $08 ; Raw block
|0CB304| db $4C, $C1, $00, $40, $01, $23, $74, $44
|0CB30C| db $A4
|0CB30D| db $64 ; Increment fill
|0CB30E| db $45
|0CB30F| db $02 ; Raw block
|0CB310| db $B5, $4A, $4B
|0CB313| db $62 ; Increment fill
|0CB314| db $04
|0CB315| db $04 ; Raw block
|0CB316| db $ED, $85, $4C, $4D, $86
|0CB31B| db $65 ; Increment fill
|0CB31C| db $4E
|0CB31D| db $E0, $37 ; EXT Raw block
|0CB31F| db $0A, $54, $98, $B1, $A6, $40, $20, $72
|0CB327| db $02, $A6, $E1, $36, $FC, $07, $55, $AD
|0CB32F| db $0A, $E1, $AB, $A2, $B1, $52, $E1, $89
|0CB337| db $4A, $E1, $4A, $56, $36, $D8, $57, $58
|0CB33F| db $9C, $49, $59, $AB, $A2, $5A, $89, $20
|0CB347| db $5A, $59, $5B, $5C, $DE, $FC, $07, $41
|0CB34F| db $A4, $A4, $5D, $E7, $5E, $3F, $20, $E1
|0CB357| db $62 ; Increment fill
|0CB358| db $5F
|0CB359| db $22 ; Repeat byte
|0CB35A| db $E1
|0CB35B| db $09 ; Raw block
|0CB35C| db $FC, $C9, $B3, $BA, $62, $63, $A6, $44
|0CB364| db $E1, $AA
|0CB366| db $63 ; Increment fill
|0CB367| db $64
|0CB368| db $06 ; Raw block
|0CB369| db $E0, $E1, $20, $E1, $8D, $0D, $68
|0CB370| db $22 ; Repeat byte
|0CB371| db $BA
|0CB372| db $00 ; Raw block
|0CB373| db $20
|0CB374| db $22 ; Repeat byte
|0CB375| db $E1
|0CB376| db $08 ; Raw block
|0CB377| db $9D, $B9, $E1, $AA, $E1, $E1, $67, $0E
|0CB37F| db $0F
|0CB380| db $22 ; Repeat byte
|0CB381| db $10
|0CB382| db $05 ; Raw block
|0CB383| db $E1, $89, $90, $AA, $20, $5C
|0CB389| db $22 ; Repeat byte
|0CB38A| db $E1
|0CB38B| db $00 ; Raw block
|0CB38C| db $69
|0CB38D| db $62 ; Increment fill
|0CB38E| db $12
|0CB38F| db $0B ; Raw block
|0CB390| db $FB, $6A, $6B, $E1, $6C, $E1, $E1, $5B
|0CB398| db $E1, $4C, $E1, $67
|0CB39C| db $62 ; Increment fill
|0CB39D| db $6D
|0CB39E| db $04 ; Raw block
|0CB39F| db $ED, $FB, $70, $21, $1C
|0CB3A4| db $62 ; Increment fill
|0CB3A5| db $71
|0CB3A6| db $22 ; Repeat byte
|0CB3A7| db $BA
|0CB3A8| db $0C ; Raw block
|0CB3A9| db $1A, $6D, $9C, $F6, $3C, $F2, $EC, $F3
|0CB3B1| db $FC, $3E, $24, $25, $74
|0CB3B6| db $22 ; Repeat byte
|0CB3B7| db $BF
|0CB3B8| db $08 ; Raw block
|0CB3B9| db $75, $9C, $9D, $A3, $97, $4A, $09, $E9
|0CB3C1| db $EB
|0CB3C2| db $FF ; End of Map 7E

;===================================================================================================

OverworldMap32_Screen3F_High:
|0CB3C3| db $E0, $41 ; EXT Raw block
|0CB3C5| db $01, $03, $05, $1F, $15, $1F, $0A, $05
|0CB3CD| db $11, $11, $1E, $05, $05, $16, $05, $01
|0CB3D5| db $01, $03, $01, $07, $07, $1F, $11, $0A
|0CB3DD| db $11, $11, $1F, $1E, $05, $1B, $1B, $01
|0CB3E5| db $03, $07, $01, $1F, $07, $1F, $11, $05
|0CB3ED| db $1F, $11, $11, $1F, $1B, $10, $01, $01
|0CB3F5| db $0F, $1F, $01, $07, $05, $07, $06, $06
|0CB3FD| db $05, $1F, $1D, $11, $1F, $01, $01, $0C
|0CB405| db $01, $02
|0CB407| db $22 ; Repeat byte
|0CB408| db $07
|0CB409| db $0D ; Raw block
|0CB40A| db $06, $01, $1F, $05, $1F, $06, $05, $05
|0CB412| db $06, $01, $0E, $1F, $02, $07
|0CB418| db $83 ; Copy past
|0CB419| dw $3300
|0CB41B| db $22 ; Repeat byte
|0CB41C| db $01
|0CB41D| db $02 ; Raw block
|0CB41E| db $06, $1F, $1C
|0CB421| db $22 ; Repeat byte
|0CB422| db $01
|0CB423| db $83 ; Copy past
|0CB424| dw $4900
|0CB426| db $0C ; Raw block
|0CB427| db $08, $09, $07, $09, $1F, $07, $01, $1B
|0CB42F| db $16, $0C, $01, $01, $0F
|0CB434| db $23 ; Repeat byte
|0CB435| db $05
|0CB436| db $00 ; Raw block
|0CB437| db $1F
|0CB438| db $22 ; Repeat byte
|0CB439| db $0F
|0CB43A| db $22 ; Repeat byte
|0CB43B| db $1F
|0CB43C| db $08 ; Raw block
|0CB43D| db $05, $10, $1E, $1E, $07, $16, $07, $05
|0CB445| db $07
|0CB446| db $22 ; Repeat byte
|0CB447| db $11
|0CB448| db $07 ; Raw block
|0CB449| db $1F, $1F, $11, $05, $10, $10, $05, $1C
|0CB451| db $22 ; Repeat byte
|0CB452| db $07
|0CB453| db $00 ; Raw block
|0CB454| db $08
|0CB455| db $86 ; Copy past
|0CB456| dw $8800
|0CB458| db $04 ; Raw block
|0CB459| db $0A, $10, $01, $19, $01
|0CB45E| db $22 ; Repeat byte
|0CB45F| db $0F
|0CB460| db $26 ; Repeat byte
|0CB461| db $1F
|0CB462| db $05 ; Raw block
|0CB463| db $11, $05, $0D, $01, $19, $01
|0CB469| db $22 ; Repeat byte
|0CB46A| db $11
|0CB46B| db $83 ; Copy past
|0CB46C| dw $2500
|0CB46E| db $0B ; Raw block
|0CB46F| db $1E, $1F, $11, $05, $0A, $0D, $01, $1F
|0CB477| db $01, $11, $11, $1E
|0CB47B| db $22 ; Repeat byte
|0CB47C| db $05
|0CB47D| db $05 ; Raw block
|0CB47E| db $1D, $1F, $1F, $05, $1F, $1B
|0CB484| db $83 ; Copy past
|0CB485| dw $AC00
|0CB487| db $83 ; Copy past
|0CB488| dw $C800
|0CB48A| db $04 ; Raw block
|0CB48B| db $10, $10, $0D, $05, $1B
|0CB490| db $22 ; Repeat byte
|0CB491| db $10
|0CB492| db $22 ; Repeat byte
|0CB493| db $01
|0CB494| db $00 ; Raw block
|0CB495| db $05
|0CB496| db $22 ; Repeat byte
|0CB497| db $0F
|0CB498| db $04 ; Raw block
|0CB499| db $1B, $01, $11, $1F, $0F
|0CB49E| db $83 ; Copy past
|0CB49F| dw $D300
|0CB4A1| db $13 ; Raw block
|0CB4A2| db $01, $01, $05, $0B, $0A, $0E, $1A, $1E
|0CB4AA| db $1F, $06, $01, $11, $01, $1F, $06, $1C
|0CB4B2| db $01, $11, $0D, $0D
|0CB4B6| db $FF ; End of Map 3F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen3F_Low:
|0CB4B7| db $E0, $41 ; EXT Raw block
|0CB4B9| db $06, $63, $8A, $76, $62, $77, $04, $FB
|0CB4C1| db $18, $21, $DE, $FB, $FB, $98, $E9, $71
|0CB4C9| db $06, $63, $D6, $0B, $0C, $78, $15, $0B
|0CB4D1| db $21, $21, $79, $DE, $FB, $DB, $DC, $5C
|0CB4D9| db $20, $6F, $E2, $7A, $7A, $7B, $15, $FB
|0CB4E1| db $79, $21, $21, $79, $DB, $53, $49, $6A
|0CB4E9| db $44, $7C, $ED, $13, $E1, $6E, $00, $01
|0CB4F1| db $FB, $7D, $F7, $21, $7E, $53, $6A, $ED
|0CB4F9| db $06, $DC
|0CB4FB| db $62 ; Increment fill
|0CB4FC| db $1E
|0CB4FD| db $E0, $30 ; EXT Raw block
|0CB4FF| db $0A, $03, $7F, $CD, $80, $01, $FB, $E9
|0CB507| db $12, $0C, $3F, $81, $DC, $8E, $20, $E1
|0CB50F| db $14, $16, $13, $F9, $16, $0B, $82, $97
|0CB517| db $03, $17, $0C, $83, $AA, $96, $E1, $AA
|0CB51F| db $36, $14, $F7, $84, $1C, $24, $E3, $98
|0CB527| db $8E, $24, $00, $45, $9E, $9F, $E1, $E1
|0CB52F| db $85
|0CB530| db $22 ; Repeat byte
|0CB531| db $BA
|0CB532| db $62 ; Increment fill
|0CB533| db $86
|0CB534| db $08 ; Raw block
|0CB535| db $FB, $8F, $72, $73, $1B, $95, $20, $E1
|0CB53D| db $67
|0CB53E| db $62 ; Increment fill
|0CB53F| db $0E
|0CB540| db $17 ; Raw block
|0CB541| db $89, $8A, $13, $FA, $8F, $03, $9D, $0C
|0CB549| db $31, $20, $36, $C1, $8B, $8C, $14, $FB
|0CB551| db $E3, $EE, $FA, $0D, $14, $5E, $E0, $55
|0CB559| db $22 ; Repeat byte
|0CB55A| db $BA
|0CB55B| db $62 ; Increment fill
|0CB55C| db $86
|0CB55D| db $63 ; Increment fill
|0CB55E| db $8D
|0CB55F| db $05 ; Raw block
|0CB560| db $20, $FB, $01, $00, $D0, $71
|0CB566| db $22 ; Repeat byte
|0CB567| db $10
|0CB568| db $E0, $2C ; EXT Raw block
|0CB56A| db $91, $13, $FA, $92, $E7, $93, $19, $FB
|0CB572| db $0D, $01, $00, $94, $71, $21, $21, $DE
|0CB57A| db $C2, $FA, $FB, $E5, $95, $96, $FB, $97
|0CB582| db $DB, $01, $00, $DD, $71, $98, $FB, $98
|0CB58A| db $DB, $F3, $45, $4F, $FB, $DB, $EC, $EC
|0CB592| db $53, $49, $54, $55, $9D
|0CB597| db $22 ; Repeat byte
|0CB598| db $FC
|0CB599| db $1C ; Raw block
|0CB59A| db $E0, $49, $25, $99, $FC, $E0, $54, $09
|0CB5A2| db $E9, $54, $55, $9D, $4B, $79, $3B, $AD
|0CB5AA| db $FD, $9A, $A3, $EA, $24, $EB, $9A, $A3
|0CB5B2| db $0C, $55, $26, $4B, $4B
|0CB5B7| db $FF ; End of Map 3F

;===================================================================================================

OverworldMap32_Screen9E_High:
|0CB5B8| db $E4, $FF ; EXT Repeat byte
|0CB5BA| db $1F
|0CB5BB| db $FF ; End of Map 9E

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen9E_Low:
|0CB5BC| db $22 ; Repeat byte
|0CB5BD| db $B4
|0CB5BE| db $01 ; Raw block
|0CB5BF| db $B5, $B6
|0CB5C1| db $25 ; Repeat byte
|0CB5C2| db $B4
|0CB5C3| db $01 ; Raw block
|0CB5C4| db $B5, $B6
|0CB5C6| db $25 ; Repeat byte
|0CB5C7| db $B4
|0CB5C8| db $63 ; Increment fill
|0CB5C9| db $B7
|0CB5CA| db $23 ; Repeat byte
|0CB5CB| db $B4
|0CB5CC| db $84 ; Copy past
|0CB5CD| dw $1300
|0CB5CF| db $01 ; Raw block
|0CB5D0| db $B5, $B6
|0CB5D2| db $22 ; Repeat byte
|0CB5D3| db $B4
|0CB5D4| db $01 ; Raw block
|0CB5D5| db $B7, $B8
|0CB5D7| db $62 ; Increment fill
|0CB5D8| db $B4
|0CB5D9| db $22 ; Repeat byte
|0CB5DA| db $B4
|0CB5DB| db $04 ; Raw block
|0CB5DC| db $B7, $B8, $B4, $B7, $B8
|0CB5E1| db $23 ; Repeat byte
|0CB5E2| db $B4
|0CB5E3| db $03 ; Raw block
|0CB5E4| db $B9, $BA, $B7, $B8
|0CB5E8| db $23 ; Repeat byte
|0CB5E9| db $B4
|0CB5EA| db $84 ; Copy past
|0CB5EB| dw $1D00
|0CB5ED| db $22 ; Repeat byte
|0CB5EE| db $B4
|0CB5EF| db $01 ; Raw block
|0CB5F0| db $BB, $BC
|0CB5F2| db $62 ; Increment fill
|0CB5F3| db $B4
|0CB5F4| db $22 ; Repeat byte
|0CB5F5| db $B4
|0CB5F6| db $04 ; Raw block
|0CB5F7| db $BB, $BC, $B4, $B7, $B8
|0CB5FC| db $22 ; Repeat byte
|0CB5FD| db $B4
|0CB5FE| db $84 ; Copy past
|0CB5FF| dw $2D00
|0CB601| db $22 ; Repeat byte
|0CB602| db $B4
|0CB603| db $01 ; Raw block
|0CB604| db $B7, $B8
|0CB606| db $23 ; Repeat byte
|0CB607| db $B4
|0CB608| db $01 ; Raw block
|0CB609| db $B5, $B6
|0CB60B| db $25 ; Repeat byte
|0CB60C| db $B4
|0CB60D| db $01 ; Raw block
|0CB60E| db $B5, $B6
|0CB610| db $25 ; Repeat byte
|0CB611| db $B4
|0CB612| db $01 ; Raw block
|0CB613| db $B7, $B8
|0CB615| db $25 ; Repeat byte
|0CB616| db $B4
|0CB617| db $01 ; Raw block
|0CB618| db $B7, $B8
|0CB61A| db $24 ; Repeat byte
|0CB61B| db $B4
|0CB61C| db $01 ; Raw block
|0CB61D| db $B5, $B6
|0CB61F| db $25 ; Repeat byte
|0CB620| db $B4
|0CB621| db $01 ; Raw block
|0CB622| db $B5, $B6
|0CB624| db $25 ; Repeat byte
|0CB625| db $B4
|0CB626| db $83 ; Copy past
|0CB627| dw $1300
|0CB629| db $23 ; Repeat byte
|0CB62A| db $B4
|0CB62B| db $86 ; Copy past
|0CB62C| dw $1B00
|0CB62E| db $22 ; Repeat byte
|0CB62F| db $B4
|0CB630| db $84 ; Copy past
|0CB631| dw $2500
|0CB633| db $22 ; Repeat byte
|0CB634| db $B4
|0CB635| db $84 ; Copy past
|0CB636| dw $2D00
|0CB638| db $23 ; Repeat byte
|0CB639| db $B4
|0CB63A| db $83 ; Copy past
|0CB63B| dw $3600
|0CB63D| db $23 ; Repeat byte
|0CB63E| db $B4
|0CB63F| db $84 ; Copy past
|0CB640| dw $1D00
|0CB642| db $22 ; Repeat byte
|0CB643| db $B4
|0CB644| db $84 ; Copy past
|0CB645| dw $4600
|0CB647| db $22 ; Repeat byte
|0CB648| db $B4
|0CB649| db $84 ; Copy past
|0CB64A| dw $4E00
|0CB64C| db $22 ; Repeat byte
|0CB64D| db $B4
|0CB64E| db $84 ; Copy past
|0CB64F| dw $2D00
|0CB651| db $22 ; Repeat byte
|0CB652| db $B4
|0CB653| db $01 ; Raw block
|0CB654| db $B7, $B8
|0CB656| db $23 ; Repeat byte
|0CB657| db $B4
|0CB658| db $01 ; Raw block
|0CB659| db $B5, $B6
|0CB65B| db $25 ; Repeat byte
|0CB65C| db $B4
|0CB65D| db $01 ; Raw block
|0CB65E| db $B5, $B6
|0CB660| db $25 ; Repeat byte
|0CB661| db $B4
|0CB662| db $01 ; Raw block
|0CB663| db $B7, $B8
|0CB665| db $25 ; Repeat byte
|0CB666| db $B4
|0CB667| db $83 ; Copy past
|0CB668| dw $3000
|0CB66A| db $FF ; End of Map 9E

;===================================================================================================

OverworldMap32_Screen97_High:
|0CB66B| db $E4, $FF ; EXT Repeat byte
|0CB66D| db $1F
|0CB66E| db $FF ; End of Map 97

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen97_Low:
|0CB66F| db $67 ; Increment fill
|0CB670| db $9B
|0CB671| db $87 ; Copy past
|0CB672| dw $0000
|0CB674| db $66 ; Increment fill
|0CB675| db $A3
|0CB676| db $00 ; Raw block
|0CB677| db $A9
|0CB678| db $87 ; Copy past
|0CB679| dw $1000
|0CB67B| db $62 ; Increment fill
|0CB67C| db $AA
|0CB67D| db $01 ; Raw block
|0CB67E| db $A9, $9B
|0CB680| db $62 ; Increment fill
|0CB681| db $AD
|0CB682| db $87 ; Copy past
|0CB683| dw $2000
|0CB685| db $07 ; Raw block
|0CB686| db $B0, $B1, $A2, $9B, $9C, $B2, $B3, $9C
|0CB68E| db $87 ; Copy past
|0CB68F| dw $3000
|0CB691| db $8B ; Copy past
|0CB692| dw $0400
|0CB694| db $83 ; Copy past
|0CB695| dw $0000
|0CB697| db $8B ; Copy past
|0CB698| dw $1400
|0CB69A| db $83 ; Copy past
|0CB69B| dw $1000
|0CB69D| db $8B ; Copy past
|0CB69E| dw $2400
|0CB6A0| db $83 ; Copy past
|0CB6A1| dw $2000
|0CB6A3| db $8B ; Copy past
|0CB6A4| dw $3400
|0CB6A6| db $83 ; Copy past
|0CB6A7| dw $3000
|0CB6A9| db $F0, $7F ; EXT Copy past
|0CB6AB| dw $0000
|0CB6AD| db $FF ; End of Map 97

;===================================================================================================

OverworldMap32_Screen9F_High:
|0CB6AE| db $E4, $B7 ; EXT Repeat byte
|0CB6B0| db $1F
|0CB6B1| db $01 ; Raw block
|0CB6B2| db $20, $20
|0CB6B4| db $22 ; Repeat byte
|0CB6B5| db $1F
|0CB6B6| db $00 ; Raw block
|0CB6B7| db $20
|0CB6B8| db $22 ; Repeat byte
|0CB6B9| db $1F
|0CB6BA| db $03 ; Raw block
|0CB6BB| db $20, $1F, $1F, $20
|0CB6BF| db $23 ; Repeat byte
|0CB6C0| db $1F
|0CB6C1| db $01 ; Raw block
|0CB6C2| db $20, $1F
|0CB6C4| db $47 ; Repeat word
|0CB6C5| dw $201F
|0CB6C7| db $29 ; Repeat byte
|0CB6C8| db $1F
|0CB6C9| db $00 ; Raw block
|0CB6CA| db $20
|0CB6CB| db $23 ; Repeat byte
|0CB6CC| db $1F
|0CB6CD| db $46 ; Repeat word
|0CB6CE| dw $1F20
|0CB6D0| db $22 ; Repeat byte
|0CB6D1| db $1F
|0CB6D2| db $01 ; Raw block
|0CB6D3| db $20, $20
|0CB6D5| db $24 ; Repeat byte
|0CB6D6| db $1F
|0CB6D7| db $00 ; Raw block
|0CB6D8| db $20
|0CB6D9| db $26 ; Repeat byte
|0CB6DA| db $1F
|0CB6DB| db $00 ; Raw block
|0CB6DC| db $20
|0CB6DD| db $23 ; Repeat byte
|0CB6DE| db $1F
|0CB6DF| db $FF ; End of Map 9F

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen9F_Low:
|0CB6E0| db $66 ; Increment fill
|0CB6E1| db $BD
|0CB6E2| db $06 ; Raw block
|0CB6E3| db $C0, $C2, $C4, $C5, $C3, $C2, $C6
|0CB6EA| db $43 ; Repeat word
|0CB6EB| dw $C3C1
|0CB6ED| db $00 ; Raw block
|0CB6EE| db $C0
|0CB6EF| db $64 ; Increment fill
|0CB6F0| db $C7
|0CB6F1| db $15 ; Raw block
|0CB6F2| db $C2, $CC, $C1, $CD, $C3, $CE, $C1, $CF
|0CB6FA| db $BE, $BF, $BF, $D0, $D1, $C3, $C0, $C0
|0CB702| db $C4, $C5, $CA, $D2, $D3, $BD
|0CB708| db $65 ; Increment fill
|0CB709| db $D4
|0CB70A| db $0C ; Raw block
|0CB70B| db $C9, $DA, $DB, $C6, $CC, $DC, $CD, $C2
|0CB713| db $C2, $DD, $DE, $C0, $C0
|0CB718| db $63 ; Increment fill
|0CB719| db $DF
|0CB71A| db $18 ; Raw block
|0CB71B| db $C0, $E3, $E4, $C3, $E5, $D2, $E6, $E7
|0CB723| db $C7, $E8, $C3, $D6, $E7, $E9, $C4, $EA
|0CB72B| db $CE, $EB, $C2, $D5, $E6, $EC, $C7, $ED
|0CB733| db $CA
|0CB734| db $62 ; Increment fill
|0CB735| db $EE
|0CB736| db $E0, $48 ; EXT Raw block
|0CB738| db $C1, $DC, $C4, $F1, $C7, $F2, $C0, $C3
|0CB740| db $C2, $E7, $E7, $DB, $F3, $F4, $DB, $E7
|0CB748| db $C3, $C3, $F5, $C3, $BD, $C2, $C3, $E6
|0CB750| db $C3, $C7, $F6, $C3, $C3, $CC, $C3, $C3
|0CB758| db $DB, $C2, $C3, $BE, $CA, $C2, $C1, $C3
|0CB760| db $C0, $C6, $DB, $C4, $C1, $C3, $CE, $DB
|0CB768| db $F7, $C2, $CC, $DB, $C0, $C2, $F8, $CA
|0CB770| db $C2, $DB, $F8, $F9, $D4, $DB, $E7, $DB
|0CB778| db $C2, $C1, $FA, $F0, $CE, $C9, $C3, $C0
|0CB780| db $C6
|0CB781| db $62 ; Increment fill
|0CB782| db $FB
|0CB783| db $E0, $48 ; EXT Raw block
|0CB785| db $C0, $CE, $FE, $FF, $C1, $D4, $DB, $C3
|0CB78D| db $C2, $C2, $BE, $00, $01, $C4, $CF, $E6
|0CB795| db $02, $E7, $C4, $C3, $03, $FA, $DF, $02
|0CB79D| db $C5, $CC, $C3, $C6, $04, $FC, $C0, $05
|0CB7A5| db $CE, $06, $D4, $07, $C4, $08, $CD, $C2
|0CB7AD| db $C1, $FA, $F8, $D1, $C3, $CF, $E6, $C1
|0CB7B5| db $09, $C4, $C1, $D4, $D5, $0A, $C3, $0B
|0CB7BD| db $F9, $0C, $C0, $0D, $E7, $D7, $FA, $0E
|0CB7C5| db $0F, $D4, $C6, $FC, $DB, $C3, $10, $C3
|0CB7CD| db $D4
|0CB7CE| db $22 ; Repeat byte
|0CB7CF| db $C3
|0CB7D0| db $06 ; Raw block
|0CB7D1| db $D4, $D4, $11, $C1, $C4, $BD, $C3
|0CB7D8| db $FF ; End of Map 9F

;===================================================================================================

OverworldMap32_Screen80_High:
|0CB7D9| db $27 ; Repeat byte
|0CB7DA| db $20
|0CB7DB| db $07 ; Raw block
|0CB7DC| db $01, $20, $20, $01, $01, $20, $20, $01
|0CB7E4| db $2B ; Repeat byte
|0CB7E5| db $20
|0CB7E6| db $00 ; Raw block
|0CB7E7| db $00
|0CB7E8| db $24 ; Repeat byte
|0CB7E9| db $20
|0CB7EA| db $02 ; Raw block
|0CB7EB| db $00, $20, $00
|0CB7EE| db $23 ; Repeat byte
|0CB7EF| db $20
|0CB7F0| db $06 ; Raw block
|0CB7F1| db $05, $04, $00, $20, $04, $02, $08
|0CB7F8| db $28 ; Repeat byte
|0CB7F9| db $20
|0CB7FA| db $05 ; Raw block
|0CB7FB| db $09, $0C, $10, $10, $0F, $05
|0CB801| db $29 ; Repeat byte
|0CB802| db $20
|0CB803| db $05 ; Raw block
|0CB804| db $05, $05, $09, $09, $0F, $07
|0CB80A| db $29 ; Repeat byte
|0CB80B| db $20
|0CB80C| db $05 ; Raw block
|0CB80D| db $05, $05, $08, $07, $07, $05
|0CB813| db $29 ; Repeat byte
|0CB814| db $20
|0CB815| db $05 ; Raw block
|0CB816| db $07, $09, $1B, $1B, $20, $1F
|0CB81C| db $23 ; Repeat byte
|0CB81D| db $20
|0CB81E| db $22 ; Repeat byte
|0CB81F| db $00
|0CB820| db $2C ; Repeat byte
|0CB821| db $20
|0CB822| db $02 ; Raw block
|0CB823| db $04, $00, $03
|0CB826| db $2B ; Repeat byte
|0CB827| db $20
|0CB828| db $03 ; Raw block
|0CB829| db $06, $20, $00, $00
|0CB82D| db $2B ; Repeat byte
|0CB82E| db $20
|0CB82F| db $02 ; Raw block
|0CB830| db $0E, $20, $06
|0CB833| db $2C ; Repeat byte
|0CB834| db $20
|0CB835| db $03 ; Raw block
|0CB836| db $00, $02, $1A, $00
|0CB83A| db $2D ; Repeat byte
|0CB83B| db $20
|0CB83C| db $01 ; Raw block
|0CB83D| db $1B, $00
|0CB83F| db $2C ; Repeat byte
|0CB840| db $20
|0CB841| db $02 ; Raw block
|0CB842| db $0E, $12, $03
|0CB845| db $E4, $29 ; EXT Repeat byte
|0CB847| db $20
|0CB848| db $FF ; End of Map 80

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen80_Low:
|0CB849| db $01 ; Raw block
|0CB84A| db $12, $13
|0CB84C| db $22 ; Repeat byte
|0CB84D| db $14
|0CB84E| db $02 ; Raw block
|0CB84F| db $15, $12, $12
|0CB852| db $62 ; Increment fill
|0CB853| db $15
|0CB854| db $06 ; Raw block
|0CB855| db $E5, $E5, $18, $19, $15, $13, $1A
|0CB85C| db $22 ; Repeat byte
|0CB85D| db $1B
|0CB85E| db $02 ; Raw block
|0CB85F| db $1C, $15, $12
|0CB862| db $63 ; Increment fill
|0CB863| db $1D
|0CB864| db $00 ; Raw block
|0CB865| db $1D
|0CB866| db $64 ; Increment fill
|0CB867| db $21
|0CB868| db $0D ; Raw block
|0CB869| db $AA, $26, $1D, $27, $1C, $15, $28, $5A
|0CB871| db $C4, $1D, $29, $7D, $79, $63
|0CB877| db $65 ; Increment fill
|0CB878| db $2A
|0CB879| db $08 ; Raw block
|0CB87A| db $27, $1C, $30, $F7, $2E, $F7, $F8, $5D
|0CB882| db $99
|0CB883| db $69 ; Increment fill
|0CB884| db $31
|0CB885| db $07 ; Raw block
|0CB886| db $E1, $AB, $F8, $F9, $68, $1F, $3B, $2A
|0CB88E| db $67 ; Increment fill
|0CB88F| db $3C
|0CB890| db $07 ; Raw block
|0CB891| db $E1, $E1, $D7, $22, $3D, $E1, $3B, $32
|0CB899| db $67 ; Increment fill
|0CB89A| db $44
|0CB89B| db $05 ; Raw block
|0CB89C| db $83, $FC, $BD, $BE, $4C, $73
|0CB8A2| db $63 ; Increment fill
|0CB8A3| db $4D
|0CB8A4| db $22 ; Repeat byte
|0CB8A5| db $1D
|0CB8A6| db $68 ; Increment fill
|0CB8A7| db $51
|0CB8A8| db $00 ; Raw block
|0CB8A9| db $53
|0CB8AA| db $62 ; Increment fill
|0CB8AB| db $5A
|0CB8AC| db $06 ; Raw block
|0CB8AD| db $2C, $1D, $D5, $38, $39, $5D, $5E
|0CB8B4| db $23 ; Repeat byte
|0CB8B5| db $5F
|0CB8B6| db $0B ; Raw block
|0CB8B7| db $60, $5D, $61, $62, $8B, $63, $1D, $1D
|0CB8BF| db $64, $65, $5D, $5D
|0CB8C3| db $24 ; Repeat byte
|0CB8C4| db $5F
|0CB8C5| db $0B ; Raw block
|0CB8C6| db $5D, $66, $67, $34, $68, $8F, $26, $69
|0CB8CE| db $4A, $5D, $5D, $6A
|0CB8D2| db $23 ; Repeat byte
|0CB8D3| db $5F
|0CB8D4| db $62 ; Increment fill
|0CB8D5| db $6B
|0CB8D6| db $09 ; Raw block
|0CB8D7| db $1D, $27, $87, $1D, $51, $52, $5D, $5D
|0CB8DF| db $6E, $6F
|0CB8E1| db $22 ; Repeat byte
|0CB8E2| db $5F
|0CB8E3| db $64 ; Increment fill
|0CB8E4| db $70
|0CB8E5| db $03 ; Raw block
|0CB8E6| db $29, $1D, $38, $39
|0CB8EA| db $22 ; Repeat byte
|0CB8EB| db $5D
|0CB8EC| db $00 ; Raw block
|0CB8ED| db $75
|0CB8EE| db $22 ; Repeat byte
|0CB8EF| db $5F
|0CB8F0| db $00 ; Raw block
|0CB8F1| db $70
|0CB8F2| db $62 ; Increment fill
|0CB8F3| db $76
|0CB8F4| db $04 ; Raw block
|0CB8F5| db $34, $E2, $D5, $79, $65
|0CB8FA| db $22 ; Repeat byte
|0CB8FB| db $5D
|0CB8FC| db $00 ; Raw block
|0CB8FD| db $7A
|0CB8FE| db $22 ; Repeat byte
|0CB8FF| db $5F
|0CB900| db $00 ; Raw block
|0CB901| db $70
|0CB902| db $63 ; Increment fill
|0CB903| db $7B
|0CB904| db $63 ; Increment fill
|0CB905| db $7E
|0CB906| db $03 ; Raw block
|0CB907| db $5D, $5D, $82, $83
|0CB90B| db $22 ; Repeat byte
|0CB90C| db $5F
|0CB90D| db $68 ; Increment fill
|0CB90E| db $84
|0CB90F| db $02 ; Raw block
|0CB910| db $5D, $5D, $8D
|0CB913| db $22 ; Repeat byte
|0CB914| db $5F
|0CB915| db $01 ; Raw block
|0CB916| db $8E, $8F
|0CB918| db $FF ; End of Map 80

;===================================================================================================

OverworldMap32_Screen81_High:
|0CB919| db $E4, $2B ; EXT Repeat byte
|0CB91B| db $20
|0CB91C| db $00 ; Raw block
|0CB91D| db $06
|0CB91E| db $2C ; Repeat byte
|0CB91F| db $20
|0CB920| db $00 ; Raw block
|0CB921| db $1C
|0CB922| db $2A ; Repeat byte
|0CB923| db $20
|0CB924| db $02 ; Raw block
|0CB925| db $06, $06, $07
|0CB928| db $22 ; Repeat byte
|0CB929| db $20
|0CB92A| db $02 ; Raw block
|0CB92B| db $1C, $20, $05
|0CB92E| db $25 ; Repeat byte
|0CB92F| db $20
|0CB930| db $04 ; Raw block
|0CB931| db $07, $20, $20, $05, $05
|0CB936| db $83 ; Copy past
|0CB937| dw $4B00
|0CB939| db $26 ; Repeat byte
|0CB93A| db $20
|0CB93B| db $09 ; Raw block
|0CB93C| db $07, $03, $09, $08, $0E, $20, $20, $0F
|0CB944| db $20, $05
|0CB946| db $25 ; Repeat byte
|0CB947| db $20
|0CB948| db $04 ; Raw block
|0CB949| db $06, $04, $20, $05, $10
|0CB94E| db $23 ; Repeat byte
|0CB94F| db $20
|0CB950| db $00 ; Raw block
|0CB951| db $05
|0CB952| db $23 ; Repeat byte
|0CB953| db $20
|0CB954| db $05 ; Raw block
|0CB955| db $1C, $20, $07, $07, $20, $07
|0CB95B| db $22 ; Repeat byte
|0CB95C| db $20
|0CB95D| db $00 ; Raw block
|0CB95E| db $05
|0CB95F| db $27 ; Repeat byte
|0CB960| db $20
|0CB961| db $83 ; Copy past
|0CB962| dw $8500
|0CB964| db $05 ; Raw block
|0CB965| db $05, $20, $20, $1C, $05, $05
|0CB96B| db $25 ; Repeat byte
|0CB96C| db $20
|0CB96D| db $01 ; Raw block
|0CB96E| db $07, $07
|0CB970| db $83 ; Copy past
|0CB971| dw $9300
|0CB973| db $22 ; Repeat byte
|0CB974| db $20
|0CB975| db $00 ; Raw block
|0CB976| db $05
|0CB977| db $25 ; Repeat byte
|0CB978| db $20
|0CB979| db $04 ; Raw block
|0CB97A| db $07, $07, $20, $0C, $20
|0CB97F| db $22 ; Repeat byte
|0CB980| db $07
|0CB981| db $02 ; Raw block
|0CB982| db $09, $20, $1C
|0CB985| db $22 ; Repeat byte
|0CB986| db $20
|0CB987| db $85 ; Copy past
|0CB988| dw $8300
|0CB98A| db $29 ; Repeat byte
|0CB98B| db $20
|0CB98C| db $04 ; Raw block
|0CB98D| db $05, $20, $07, $20, $02
|0CB992| db $27 ; Repeat byte
|0CB993| db $20
|0CB994| db $85 ; Copy past
|0CB995| dw $5500
|0CB997| db $02 ; Raw block
|0CB998| db $06, $02, $01
|0CB99B| db $27 ; Repeat byte
|0CB99C| db $20
|0CB99D| db $08 ; Raw block
|0CB99E| db $08, $10, $1C, $05, $20, $20, $07, $06
|0CB9A6| db $01
|0CB9A7| db $25 ; Repeat byte
|0CB9A8| db $20
|0CB9A9| db $FF ; End of Map 81

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen81_Low:
|0CB9AA| db $62 ; Increment fill
|0CB9AB| db $12
|0CB9AC| db $62 ; Increment fill
|0CB9AD| db $90
|0CB9AE| db $62 ; Increment fill
|0CB9AF| db $90
|0CB9B0| db $85 ; Copy past
|0CB9B1| dw $0300
|0CB9B3| db $03 ; Raw block
|0CB9B4| db $14, $13, $1A, $1B
|0CB9B8| db $62 ; Increment fill
|0CB9B9| db $93
|0CB9BA| db $62 ; Increment fill
|0CB9BB| db $93
|0CB9BC| db $85 ; Copy past
|0CB9BD| dw $1300
|0CB9BF| db $01 ; Raw block
|0CB9C0| db $1B, $1A
|0CB9C2| db $64 ; Increment fill
|0CB9C3| db $96
|0CB9C4| db $22 ; Repeat byte
|0CB9C5| db $98
|0CB9C6| db $62 ; Increment fill
|0CB9C7| db $9B
|0CB9C8| db $03 ; Raw block
|0CB9C9| db $39, $9E, $9A, $98
|0CB9CD| db $69 ; Increment fill
|0CB9CE| db $9F
|0CB9CF| db $00 ; Raw block
|0CB9D0| db $2D
|0CB9D1| db $62 ; Increment fill
|0CB9D2| db $A9
|0CB9D3| db $00 ; Raw block
|0CB9D4| db $A4
|0CB9D5| db $66 ; Increment fill
|0CB9D6| db $AC
|0CB9D7| db $02 ; Raw block
|0CB9D8| db $1D, $1E, $43
|0CB9DB| db $62 ; Increment fill
|0CB9DC| db $B3
|0CB9DD| db $02 ; Raw block
|0CB9DE| db $2D, $A4, $E1
|0CB9E1| db $63 ; Increment fill
|0CB9E2| db $B6
|0CB9E3| db $0A ; Raw block
|0CB9E4| db $A1, $A4, $5D, $BA, $BB, $96, $E1, $BC
|0CB9EC| db $2D, $BD, $E1
|0CB9EF| db $66 ; Increment fill
|0CB9F0| db $BE
|0CB9F1| db $E0, $2E ; EXT Raw block
|0CB9F3| db $6E, $A0, $8B, $8F, $23, $C5, $BF, $9C
|0CB9FB| db $C6, $A4, $C7, $AD, $AE, $C8, $B5, $C4
|0CBA03| db $0A, $80, $C9, $DF, $D8, $A2, $A3, $CA
|0CBA0B| db $CB, $A4, $CC, $B7, $B8, $AF, $2D, $C4
|0CBA13| db $4C, $4D, $CD, $8E, $CE, $B0, $B1, $AA
|0CBA1B| db $CF, $D0, $A8, $C0, $C1, $B9, $A1
|0CBA22| db $84 ; Copy past
|0CBA23| dw $8400
|0CBA25| db $11 ; Raw block
|0CBA26| db $E1, $D1, $BF, $2D, $A4, $AA, $D2, $AD
|0CBA2E| db $AE, $26, $C8, $C4, $4C, $4D, $D3, $D4
|0CBA36| db $3C, $22
|0CBA38| db $62 ; Increment fill
|0CBA39| db $D5
|0CBA3A| db $0B ; Raw block
|0CBA3B| db $A4, $D8, $B7, $B8, $D9, $DA, $C4, $4C
|0CBA43| db $4D, $26, $E6, $DB
|0CBA47| db $22 ; Repeat byte
|0CBA48| db $27
|0CBA49| db $02 ; Raw block
|0CBA4A| db $51, $DC, $2D
|0CBA4D| db $62 ; Increment fill
|0CBA4E| db $DD
|0CBA4F| db $83 ; Copy past
|0CBA50| dw $8300
|0CBA52| db $03 ; Raw block
|0CBA53| db $26, $9E, $E0, $E1
|0CBA57| db $66 ; Increment fill
|0CBA58| db $E1
|0CBA59| db $05 ; Raw block
|0CBA5A| db $BF, $A4, $C4, $4C, $E8, $08
|0CBA60| db $65 ; Increment fill
|0CBA61| db $E9
|0CBA62| db $0C ; Raw block
|0CBA63| db $E3, $EF, $5B, $F0, $F1, $A4, $AA, $F2
|0CBA6B| db $16, $FB, $E6, $F3, $1C
|0CBA70| db $62 ; Increment fill
|0CBA71| db $F4
|0CBA72| db $11 ; Raw block
|0CBA73| db $EE, $F7, $F8, $6A, $D8, $2D, $A4, $BF
|0CBA7B| db $F9, $79, $16, $E6, $F3, $1C, $15, $F5
|0CBA83| db $F6, $FA
|0CBA85| db $FF ; End of Map 81

;===================================================================================================

OverworldMap32_Screen82_High:
|0CBA86| db $29 ; Repeat byte
|0CBA87| db $20
|0CBA88| db $01 ; Raw block
|0CBA89| db $03, $20
|0CBA8B| db $22 ; Repeat byte
|0CBA8C| db $07
|0CBA8D| db $00 ; Raw block
|0CBA8E| db $1F
|0CBA8F| db $29 ; Repeat byte
|0CBA90| db $20
|0CBA91| db $02 ; Raw block
|0CBA92| db $03, $21, $21
|0CBA95| db $83 ; Copy past
|0CBA96| dw $0D00
|0CBA98| db $00 ; Raw block
|0CBA99| db $01
|0CBA9A| db $22 ; Repeat byte
|0CBA9B| db $20
|0CBA9C| db $06 ; Raw block
|0CBA9D| db $21, $20, $20, $21, $21, $03, $07
|0CBAA4| db $22 ; Repeat byte
|0CBAA5| db $05
|0CBAA6| db $00 ; Raw block
|0CBAA7| db $07
|0CBAA8| db $22 ; Repeat byte
|0CBAA9| db $21
|0CBAAA| db $25 ; Repeat byte
|0CBAAB| db $20
|0CBAAC| db $02 ; Raw block
|0CBAAD| db $21, $05, $09
|0CBAB0| db $22 ; Repeat byte
|0CBAB1| db $21
|0CBAB2| db $04 ; Raw block
|0CBAB3| db $07, $21, $0F, $05, $0E
|0CBAB8| db $83 ; Copy past
|0CBAB9| dw $3100
|0CBABB| db $07 ; Raw block
|0CBABC| db $05, $07, $09, $05, $15, $21, $21, $07
|0CBAC4| db $44 ; Repeat word
|0CBAC5| dw $0F21
|0CBAC7| db $0B ; Raw block
|0CBAC8| db $05, $20, $20, $05, $20, $21, $05, $15
|0CBAD0| db $20, $21, $07, $20
|0CBAD4| db $23 ; Repeat byte
|0CBAD5| db $21
|0CBAD6| db $43 ; Repeat word
|0CBAD7| dw $2120
|0CBAD9| db $03 ; Raw block
|0CBADA| db $21, $0F, $0F, $05
|0CBADE| db $83 ; Copy past
|0CBADF| dw $3D00
|0CBAE1| db $01 ; Raw block
|0CBAE2| db $20, $20
|0CBAE4| db $22 ; Repeat byte
|0CBAE5| db $05
|0CBAE6| db $00 ; Raw block
|0CBAE7| db $20
|0CBAE8| db $83 ; Copy past
|0CBAE9| dw $3100
|0CBAEB| db $00 ; Raw block
|0CBAEC| db $21
|0CBAED| db $83 ; Copy past
|0CBAEE| dw $6C00
|0CBAF0| db $01 ; Raw block
|0CBAF1| db $20, $20
|0CBAF3| db $2A ; Repeat byte
|0CBAF4| db $21
|0CBAF5| db $00 ; Raw block
|0CBAF6| db $0F
|0CBAF7| db $83 ; Copy past
|0CBAF8| dw $6E00
|0CBAFA| db $01 ; Raw block
|0CBAFB| db $21, $1C
|0CBAFD| db $83 ; Copy past
|0CBAFE| dw $6600
|0CBB00| db $23 ; Repeat byte
|0CBB01| db $20
|0CBB02| db $01 ; Raw block
|0CBB03| db $21, $20
|0CBB05| db $83 ; Copy past
|0CBB06| dw $6E00
|0CBB08| db $05 ; Raw block
|0CBB09| db $1C, $21, $20, $1D, $07, $0E
|0CBB0F| db $84 ; Copy past
|0CBB10| dw $6D00
|0CBB12| db $83 ; Copy past
|0CBB13| dw $7D00
|0CBB15| db $22 ; Repeat byte
|0CBB16| db $21
|0CBB17| db $00 ; Raw block
|0CBB18| db $07
|0CBB19| db $22 ; Repeat byte
|0CBB1A| db $21
|0CBB1B| db $05 ; Raw block
|0CBB1C| db $20, $07, $03, $07, $21, $15
|0CBB22| db $24 ; Repeat byte
|0CBB23| db $21
|0CBB24| db $00 ; Raw block
|0CBB25| db $07
|0CBB26| db $24 ; Repeat byte
|0CBB27| db $21
|0CBB28| db $02 ; Raw block
|0CBB29| db $07, $21, $0C
|0CBB2C| db $84 ; Copy past
|0CBB2D| dw $4B00
|0CBB2F| db $01 ; Raw block
|0CBB30| db $07, $09
|0CBB32| db $23 ; Repeat byte
|0CBB33| db $21
|0CBB34| db $03 ; Raw block
|0CBB35| db $20, $21, $05, $03
|0CBB39| db $43 ; Repeat word
|0CBB3A| dw $0721
|0CBB3C| db $2A ; Repeat byte
|0CBB3D| db $21
|0CBB3E| db $83 ; Copy past
|0CBB3F| dw $DA00
|0CBB41| db $83 ; Copy past
|0CBB42| dw $7E00
|0CBB44| db $29 ; Repeat byte
|0CBB45| db $21
|0CBB46| db $83 ; Copy past
|0CBB47| dw $EC00
|0CBB49| db $FF ; End of Map 82

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen82_Low:
|0CBB4A| db $62 ; Increment fill
|0CBB4B| db $90
|0CBB4C| db $62 ; Increment fill
|0CBB4D| db $90
|0CBB4E| db $05 ; Raw block
|0CBB4F| db $FB, $FB, $90, $FC, $A0, $FD
|0CBB55| db $22 ; Repeat byte
|0CBB56| db $0C
|0CBB57| db $00 ; Raw block
|0CBB58| db $78
|0CBB59| db $62 ; Increment fill
|0CBB5A| db $93
|0CBB5B| db $62 ; Increment fill
|0CBB5C| db $93
|0CBB5D| db $19 ; Raw block
|0CBB5E| db $FE, $FE, $93, $FF, $A0, $00, $01, $7A
|0CBB66| db $7A, $7B, $9D, $4B, $D9, $98, $9B, $02
|0CBB6E| db $9C, $9B, $03, $04, $A0, $5B, $C5, $E1
|0CBB76| db $E1, $6E
|0CBB78| db $62 ; Increment fill
|0CBB79| db $05
|0CBB7A| db $25 ; Repeat byte
|0CBB7B| db $AC
|0CBB7C| db $02 ; Raw block
|0CBB7D| db $08, $5A, $82
|0CBB80| db $62 ; Increment fill
|0CBB81| db $09
|0CBB82| db $E0, $21 ; EXT Raw block
|0CBB84| db $6E, $0C, $9D, $D5, $23, $0C, $0D, $CF
|0CBB8C| db $CF, $E1, $14, $F7, $9F, $7D, $0E, $0F
|0CBB94| db $6E, $10, $9C, $11, $77, $12, $A4, $A2
|0CBB9C| db $A3, $AA, $CF, $13, $E1, $7D, $BF, $14
|0CBBA4| db $6E, $A7
|0CBBA6| db $63 ; Increment fill
|0CBBA7| db $15
|0CBBA8| db $0D ; Raw block
|0CBBA9| db $A7, $19, $B1, $1A, $1B, $9C, $9D, $E1
|0CBBB1| db $1C, $1D, $6E, $1E, $CF, $CF
|0CBBB7| db $22 ; Repeat byte
|0CBBB8| db $E1
|0CBBB9| db $E0, $3E ; EXT Raw block
|0CBBBB| db $D2, $1F, $18, $AC, $D1, $20, $E1, $21
|0CBBC3| db $1D, $6E, $A2, $A3, $22, $23, $0C, $0C
|0CBBCB| db $24, $24, $0C, $0C, $0D, $25, $26, $77
|0CBBD3| db $27, $6E, $19, $B1, $28, $80, $0E, $CA
|0CBBDB| db $29, $17, $A8, $BF, $CA, $A8, $0E, $BF
|0CBBE3| db $1D, $6E, $2A, $AC, $80, $2B, $A4, $E0
|0CBBEB| db $84, $27, $2C, $2D, $83, $2E, $AC, $2F
|0CBBF3| db $30, $6E, $BF, $31, $0E, $32, $67
|0CBBFA| db $62 ; Increment fill
|0CBBFB| db $33
|0CBBFC| db $0C ; Raw block
|0CBBFD| db $EF, $96, $8F, $53, $36, $59, $37, $38
|0CBC05| db $17, $17, $39, $67, $33
|0CBC0A| db $63 ; Increment fill
|0CBC0B| db $3A
|0CBC0C| db $16 ; Raw block
|0CBC0D| db $9D, $3E, $DD, $8F, $5B, $3F, $40, $84
|0CBC15| db $84, $FC, $33, $3A, $41, $42, $9F, $3C
|0CBC1D| db $55, $B3, $43, $8E, $44, $4C, $45
|0CBC24| db $22 ; Repeat byte
|0CBC25| db $46
|0CBC26| db $01 ; Raw block
|0CBC27| db $47, $41
|0CBC29| db $64 ; Increment fill
|0CBC2A| db $48
|0CBC2B| db $0C ; Raw block
|0CBC2C| db $BB, $4D, $8E, $4E, $4F, $4D, $FA, $FA
|0CBC34| db $50, $51, $48, $49, $49
|0CBC39| db $64 ; Increment fill
|0CBC3A| db $52
|0CBC3B| db $83 ; Copy past
|0CBC3C| dw $EC00
|0CBC3E| db $FF ; End of Map 82

;===================================================================================================

OverworldMap32_Screen89_High:
|0CBC3F| db $01 ; Raw block
|0CBC40| db $21, $20
|0CBC42| db $23 ; Repeat byte
|0CBC43| db $21
|0CBC44| db $04 ; Raw block
|0CBC45| db $20, $21, $21, $06, $01
|0CBC4A| db $23 ; Repeat byte
|0CBC4B| db $20
|0CBC4C| db $00 ; Raw block
|0CBC4D| db $21
|0CBC4E| db $22 ; Repeat byte
|0CBC4F| db $20
|0CBC50| db $05 ; Raw block
|0CBC51| db $07, $21, $07, $0E, $21, $0F
|0CBC57| db $84 ; Copy past
|0CBC58| dw $0800
|0CBC5A| db $02 ; Raw block
|0CBC5B| db $21, $21, $20
|0CBC5E| db $22 ; Repeat byte
|0CBC5F| db $21
|0CBC60| db $84 ; Copy past
|0CBC61| dw $1D00
|0CBC63| db $03 ; Raw block
|0CBC64| db $0F, $21, $06, $04
|0CBC68| db $22 ; Repeat byte
|0CBC69| db $21
|0CBC6A| db $00 ; Raw block
|0CBC6B| db $20
|0CBC6C| db $26 ; Repeat byte
|0CBC6D| db $21
|0CBC6E| db $05 ; Raw block
|0CBC6F| db $05, $20, $0F, $21, $07, $07
|0CBC75| db $29 ; Repeat byte
|0CBC76| db $21
|0CBC77| db $04 ; Raw block
|0CBC78| db $05, $1C, $21, $21, $20
|0CBC7D| db $2A ; Repeat byte
|0CBC7E| db $21
|0CBC7F| db $00 ; Raw block
|0CBC80| db $05
|0CBC81| db $29 ; Repeat byte
|0CBC82| db $21
|0CBC83| db $00 ; Raw block
|0CBC84| db $02
|0CBC85| db $22 ; Repeat byte
|0CBC86| db $21
|0CBC87| db $06 ; Raw block
|0CBC88| db $05, $1D, $20, $21, $07, $21, $21
|0CBC8F| db $22 ; Repeat byte
|0CBC90| db $20
|0CBC91| db $08 ; Raw block
|0CBC92| db $21, $02, $08, $07, $07, $05, $21, $0F
|0CBC9A| db $1C
|0CBC9B| db $24 ; Repeat byte
|0CBC9C| db $21
|0CBC9D| db $00 ; Raw block
|0CBC9E| db $20
|0CBC9F| db $22 ; Repeat byte
|0CBCA0| db $21
|0CBCA1| db $03 ; Raw block
|0CBCA2| db $05, $07, $21, $1C
|0CBCA6| db $22 ; Repeat byte
|0CBCA7| db $20
|0CBCA8| db $03 ; Raw block
|0CBCA9| db $05, $05, $07, $02
|0CBCAD| db $83 ; Copy past
|0CBCAE| dw $1B00
|0CBCB0| db $83 ; Copy past
|0CBCB1| dw $6B00
|0CBCB3| db $04 ; Raw block
|0CBCB4| db $1C, $20, $20, $21, $1E
|0CBCB9| db $22 ; Repeat byte
|0CBCBA| db $21
|0CBCBB| db $0B ; Raw block
|0CBCBC| db $06, $05, $20, $21, $07, $10, $20, $1C
|0CBCC4| db $20, $21, $1C, $20
|0CBCC8| db $22 ; Repeat byte
|0CBCC9| db $21
|0CBCCA| db $0D ; Raw block
|0CBCCB| db $0F, $21, $09, $21, $21, $07, $20, $11
|0CBCD3| db $21, $1D, $0E, $21, $21, $07
|0CBCD9| db $83 ; Copy past
|0CBCDA| dw $1500
|0CBCDC| db $22 ; Repeat byte
|0CBCDD| db $21
|0CBCDE| db $02 ; Raw block
|0CBCDF| db $20, $08, $10
|0CBCE2| db $22 ; Repeat byte
|0CBCE3| db $21
|0CBCE4| db $01 ; Raw block
|0CBCE5| db $20, $07
|0CBCE7| db $22 ; Repeat byte
|0CBCE8| db $21
|0CBCE9| db $00 ; Raw block
|0CBCEA| db $20
|0CBCEB| db $23 ; Repeat byte
|0CBCEC| db $21
|0CBCED| db $01 ; Raw block
|0CBCEE| db $03, $07
|0CBCF0| db $26 ; Repeat byte
|0CBCF1| db $21
|0CBCF2| db $23 ; Repeat byte
|0CBCF3| db $20
|0CBCF4| db $00 ; Raw block
|0CBCF5| db $07
|0CBCF6| db $83 ; Copy past
|0CBCF7| dw $D000
|0CBCF9| db $00 ; Raw block
|0CBCFA| db $10
|0CBCFB| db $26 ; Repeat byte
|0CBCFC| db $21
|0CBCFD| db $22 ; Repeat byte
|0CBCFE| db $20
|0CBCFF| db $22 ; Repeat byte
|0CBD00| db $21
|0CBD01| db $00 ; Raw block
|0CBD02| db $03
|0CBD03| db $28 ; Repeat byte
|0CBD04| db $21
|0CBD05| db $23 ; Repeat byte
|0CBD06| db $20
|0CBD07| db $FF ; End of Map 89

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen89_Low:
|0CBD08| db $01 ; Raw block
|0CBD09| db $57, $D4
|0CBD0B| db $63 ; Increment fill
|0CBD0C| db $58
|0CBD0D| db $12 ; Raw block
|0CBD0E| db $CB, $0A, $5C, $16, $E6, $F3, $1C, $15
|0CBD16| db $F5, $5D, $EE, $E3, $DB, $27, $5E, $84
|0CBD1E| db $27, $5F, $9C
|0CBD21| db $84 ; Copy past
|0CBD22| dw $0800
|0CBD24| db $02 ; Raw block
|0CBD25| db $60, $61, $F6
|0CBD28| db $62 ; Increment fill
|0CBD29| db $62
|0CBD2A| db $03 ; Raw block
|0CBD2B| db $F7, $65, $66, $E4
|0CBD2F| db $83 ; Copy past
|0CBD30| dw $1700
|0CBD32| db $00 ; Raw block
|0CBD33| db $80
|0CBD34| db $62 ; Increment fill
|0CBD35| db $67
|0CBD36| db $00 ; Raw block
|0CBD37| db $F5
|0CBD38| db $62 ; Increment fill
|0CBD39| db $6A
|0CBD3A| db $00 ; Raw block
|0CBD3B| db $50
|0CBD3C| db $62 ; Increment fill
|0CBD3D| db $6D
|0CBD3E| db $05 ; Raw block
|0CBD3F| db $DF, $D1, $9C, $70, $4D, $6D
|0CBD45| db $69 ; Increment fill
|0CBD46| db $71
|0CBD47| db $04 ; Raw block
|0CBD48| db $96, $80, $22, $7B, $BA
|0CBD4D| db $67 ; Increment fill
|0CBD4E| db $7C
|0CBD4F| db $03 ; Raw block
|0CBD50| db $79, $84, $85, $9F
|0CBD54| db $62 ; Increment fill
|0CBD55| db $86
|0CBD56| db $00 ; Raw block
|0CBD57| db $3A
|0CBD58| db $63 ; Increment fill
|0CBD59| db $89
|0CBD5A| db $0A ; Raw block
|0CBD5B| db $81, $8D, $60, $8E, $8F, $85, $9F, $60
|0CBD63| db $BF, $4F, $4D
|0CBD66| db $62 ; Increment fill
|0CBD67| db $90
|0CBD68| db $10 ; Raw block
|0CBD69| db $F4, $1A, $92, $65, $63, $3F, $1B, $9F
|0CBD71| db $93, $77, $2D, $94, $95, $8E, $96, $97
|0CBD79| db $1C
|0CBD7A| db $62 ; Increment fill
|0CBD7B| db $98
|0CBD7C| db $03 ; Raw block
|0CBD7D| db $C5, $44, $9B, $80
|0CBD81| db $62 ; Increment fill
|0CBD82| db $A2
|0CBD83| db $10 ; Raw block
|0CBD84| db $E1, $AB, $3F, $FB, $E6, $F3, $32, $9C
|0CBD8C| db $1E, $9D, $9E, $BF, $2D, $B0, $B1, $0A
|0CBD94| db $06
|0CBD95| db $62 ; Increment fill
|0CBD96| db $9F
|0CBD97| db $E0, $35 ; EXT Raw block
|0CBD99| db $16, $5A, $2A, $9C, $8E, $D8, $BF, $2D
|0CBDA1| db $CA, $A2, $2D, $BF, $A3, $17, $A2, $9C
|0CBDA9| db $5C, $F7, $A4, $A5, $53, $F0, $07, $A6
|0CBDB1| db $E0, $27, $A7, $A8, $83, $84, $27, $A9
|0CBDB9| db $9C, $0D, $AA, $AB, $F8, $6A, $D8, $AC
|0CBDC1| db $88, $AD, $DB, $8B, $AE, $46, $66, $E4
|0CBDC9| db $AF, $17, $B0, $B1, $A1, $8E
|0CBDCF| db $64 ; Increment fill
|0CBDD0| db $B2
|0CBDD1| db $0C ; Raw block
|0CBDD2| db $55, $B7, $FA, $EE, $E3, $EF, $84, $B8
|0CBDDA| db $B9, $A1, $8E, $D8, $B3
|0CBDDF| db $65 ; Increment fill
|0CBDE0| db $BA
|0CBDE1| db $06 ; Raw block
|0CBDE2| db $F6, $EE, $F7, $46, $AA, $AB, $A1
|0CBDE9| db $64 ; Increment fill
|0CBDEA| db $C0
|0CBDEB| db $00 ; Raw block
|0CBDEC| db $B7
|0CBDED| db $62 ; Increment fill
|0CBDEE| db $C5
|0CBDEF| db $03 ; Raw block
|0CBDF0| db $F5, $F6, $FA, $FA
|0CBDF4| db $FF ; End of Map 89

;===================================================================================================

OverworldMap32_Screen8A_High:
|0CBDF5| db $2B ; Repeat byte
|0CBDF6| db $21
|0CBDF7| db $03 ; Raw block
|0CBDF8| db $07, $21, $21, $07
|0CBDFC| db $2B ; Repeat byte
|0CBDFD| db $21
|0CBDFE| db $00 ; Raw block
|0CBDFF| db $07
|0CBE00| db $22 ; Repeat byte
|0CBE01| db $21
|0CBE02| db $22 ; Repeat byte
|0CBE03| db $20
|0CBE04| db $28 ; Repeat byte
|0CBE05| db $21
|0CBE06| db $03 ; Raw block
|0CBE07| db $05, $21, $21, $07
|0CBE0B| db $22 ; Repeat byte
|0CBE0C| db $20
|0CBE0D| db $07 ; Raw block
|0CBE0E| db $21, $04, $21, $21, $02, $03, $02, $02
|0CBE16| db $23 ; Repeat byte
|0CBE17| db $21
|0CBE18| db $09 ; Raw block
|0CBE19| db $07, $21, $21, $0D, $21, $04, $04, $16
|0CBE21| db $01, $03
|0CBE23| db $25 ; Repeat byte
|0CBE24| db $21
|0CBE25| db $00 ; Raw block
|0CBE26| db $07
|0CBE27| db $22 ; Repeat byte
|0CBE28| db $21
|0CBE29| db $00 ; Raw block
|0CBE2A| db $02
|0CBE2B| db $23 ; Repeat byte
|0CBE2C| db $21
|0CBE2D| db $00 ; Raw block
|0CBE2E| db $20
|0CBE2F| db $25 ; Repeat byte
|0CBE30| db $21
|0CBE31| db $01 ; Raw block
|0CBE32| db $07, $20
|0CBE34| db $28 ; Repeat byte
|0CBE35| db $21
|0CBE36| db $07 ; Raw block
|0CBE37| db $0E, $21, $05, $20, $05, $07, $20, $21
|0CBE3F| db $22 ; Repeat byte
|0CBE40| db $22
|0CBE41| db $22 ; Repeat byte
|0CBE42| db $15
|0CBE43| db $01 ; Raw block
|0CBE44| db $22, $21
|0CBE46| db $22 ; Repeat byte
|0CBE47| db $22
|0CBE48| db $83 ; Copy past
|0CBE49| dw $7700
|0CBE4B| db $03 ; Raw block
|0CBE4C| db $1E, $22, $22, $05
|0CBE50| db $22 ; Repeat byte
|0CBE51| db $15
|0CBE52| db $E0, $28 ; EXT Raw block
|0CBE54| db $05, $19, $07, $22, $05, $15, $21, $22
|0CBE5C| db $04, $02, $22, $22, $05, $21, $20, $21
|0CBE64| db $06, $01, $03, $22, $09, $1F, $07, $0F
|0CBE6C| db $07, $02, $02, $05, $22, $0F, $1C, $22
|0CBE74| db $21, $06, $07, $05, $1C, $1C, $21, $0F
|0CBE7C| db $20
|0CBE7D| db $22 ; Repeat byte
|0CBE7E| db $22
|0CBE7F| db $01 ; Raw block
|0CBE80| db $0F, $05
|0CBE82| db $23 ; Repeat byte
|0CBE83| db $22
|0CBE84| db $05 ; Raw block
|0CBE85| db $21, $1C, $1C, $20, $21, $0F
|0CBE8B| db $2A ; Repeat byte
|0CBE8C| db $21
|0CBE8D| db $04 ; Raw block
|0CBE8E| db $20, $20, $22, $07, $22
|0CBE93| db $2D ; Repeat byte
|0CBE94| db $07
|0CBE95| db $01 ; Raw block
|0CBE96| db $22, $22
|0CBE98| db $2C ; Repeat byte
|0CBE99| db $21
|0CBE9A| db $02 ; Raw block
|0CBE9B| db $22, $22, $21
|0CBE9E| db $2C ; Repeat byte
|0CBE9F| db $20
|0CBEA0| db $02 ; Raw block
|0CBEA1| db $22, $21, $21
|0CBEA4| db $FF ; End of Map 8A

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen8A_Low:
|0CBEA5| db $00 ; Raw block
|0CBEA6| db $C8
|0CBEA7| db $62 ; Increment fill
|0CBEA8| db $C8
|0CBEA9| db $22 ; Repeat byte
|0CBEAA| db $49
|0CBEAB| db $00 ; Raw block
|0CBEAC| db $CB
|0CBEAD| db $63 ; Increment fill
|0CBEAE| db $CB
|0CBEAF| db $03 ; Raw block
|0CBEB0| db $8E, $4E, $4F, $4D
|0CBEB4| db $62 ; Increment fill
|0CBEB5| db $CF
|0CBEB6| db $00 ; Raw block
|0CBEB7| db $CF
|0CBEB8| db $66 ; Increment fill
|0CBEB9| db $D2
|0CBEBA| db $07 ; Raw block
|0CBEBB| db $CE, $8E, $4E, $94, $D9, $91, $92, $90
|0CBEC3| db $67 ; Increment fill
|0CBEC4| db $DA
|0CBEC5| db $1D ; Raw block
|0CBEC6| db $7A, $96, $E2, $14, $6E, $94, $95, $93
|0CBECE| db $E3, $B5, $E4, $E5, $08, $B3, $61, $61
|0CBED6| db $85, $E6, $E7, $27, $6E, $E8, $E9, $69
|0CBEDE| db $EA, $B7, $B8, $23, $E5, $BB
|0CBEE4| db $63 ; Increment fill
|0CBEE5| db $EB
|0CBEE6| db $02 ; Raw block
|0CBEE7| db $2B, $27, $6E
|0CBEEA| db $62 ; Increment fill
|0CBEEB| db $EF
|0CBEEC| db $00 ; Raw block
|0CBEED| db $79
|0CBEEE| db $62 ; Increment fill
|0CBEEF| db $F2
|0CBEF0| db $01 ; Raw block
|0CBEF1| db $02, $9C
|0CBEF3| db $64 ; Increment fill
|0CBEF4| db $F5
|0CBEF5| db $02 ; Raw block
|0CBEF6| db $28, $6E, $71
|0CBEF9| db $63 ; Increment fill
|0CBEFA| db $FA
|0CBEFB| db $0C ; Raw block
|0CBEFC| db $17, $18, $2F, $5B, $FE, $27, $2C, $E1
|0CBF04| db $B3, $E1, $6E, $1A, $FF
|0CBF09| db $62 ; Increment fill
|0CBF0A| db $00
|0CBF0B| db $22 ; Repeat byte
|0CBF0C| db $59
|0CBF0D| db $01 ; Raw block
|0CBF0E| db $03, $88
|0CBF10| db $62 ; Increment fill
|0CBF11| db $04
|0CBF12| db $07 ; Raw block
|0CBF13| db $59, $07, $38, $08, $DC, $09, $0A, $FE
|0CBF1B| db $22 ; Repeat byte
|0CBF1C| db $5B
|0CBF1D| db $E0, $37 ; EXT Raw block
|0CBF1F| db $FF, $D7, $26, $0B, $FE, $5B, $3F, $0C
|0CBF27| db $7C, $08, $0D, $0E, $C5, $44, $CF, $13
|0CBF2F| db $0A, $03, $9C, $0F, $83, $56, $4C, $C1
|0CBF37| db $1C, $FB, $FB, $99, $10, $77, $2D, $11
|0CBF3F| db $5C, $16, $1B, $9F, $80, $2D, $4F, $C1
|0CBF47| db $F2, $12, $12, $13, $77, $A4, $14, $15
|0CBF4F| db $11, $16, $9B, $80, $2D, $BF, $4F, $C1
|0CBF57| db $26 ; Repeat byte
|0CBF58| db $17
|0CBF59| db $08 ; Raw block
|0CBF5A| db $5B, $17, $5B, $5B, $CB, $CA, $17, $29
|0CBF62| db $18
|0CBF63| db $2C ; Repeat byte
|0CBF64| db $84
|0CBF65| db $02 ; Raw block
|0CBF66| db $96, $19, $1A
|0CBF69| db $2C ; Repeat byte
|0CBF6A| db $46
|0CBF6B| db $02 ; Raw block
|0CBF6C| db $1B, $1C, $3B
|0CBF6F| db $2C ; Repeat byte
|0CBF70| db $FA
|0CBF71| db $02 ; Raw block
|0CBF72| db $1D, $41, $C8
|0CBF75| db $FF ; End of Map 8A

;===================================================================================================

OverworldMap32_Screen96_High:
|0CBF76| db $E4, $5F ; EXT Repeat byte
|0CBF78| db $22
|0CBF79| db $E4, $9F ; EXT Repeat byte
|0CBF7B| db $00
|0CBF7C| db $FF ; End of Map 96

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen96_Low:
|0CBF7D| db $27 ; Repeat byte
|0CBF7E| db $1E
|0CBF7F| db $01 ; Raw block
|0CBF80| db $1F, $20
|0CBF82| db $25 ; Repeat byte
|0CBF83| db $1E
|0CBF84| db $66 ; Increment fill
|0CBF85| db $21
|0CBF86| db $00 ; Raw block
|0CBF87| db $24
|0CBF88| db $63 ; Increment fill
|0CBF89| db $28
|0CBF8A| db $03 ; Raw block
|0CBF8B| db $23, $23, $2C, $29
|0CBF8F| db $2F ; Repeat byte
|0CBF90| db $2D
|0CBF91| db $3F ; Repeat byte
|0CBF92| db $2E
|0CBF93| db $2F ; Repeat byte
|0CBF94| db $2F
|0CBF95| db $E4, $9F ; EXT Repeat byte
|0CBF97| db $1D
|0CBF98| db $FF ; End of Map 96

;===================================================================================================

OverworldMap32_Screen95_High:
|0CBF99| db $E4, $20 ; EXT Repeat byte
|0CBF9B| db $22
|0CBF9C| db $01 ; Raw block
|0CBF9D| db $13, $12
|0CBF9F| db $25 ; Repeat byte
|0CBFA0| db $22
|0CBFA1| db $01 ; Raw block
|0CBFA2| db $13, $12
|0CBFA4| db $25 ; Repeat byte
|0CBFA5| db $22
|0CBFA6| db $00 ; Raw block
|0CBFA7| db $13
|0CBFA8| db $26 ; Repeat byte
|0CBFA9| db $22
|0CBFAA| db $00 ; Raw block
|0CBFAB| db $13
|0CBFAC| db $26 ; Repeat byte
|0CBFAD| db $22
|0CBFAE| db $00 ; Raw block
|0CBFAF| db $13
|0CBFB0| db $26 ; Repeat byte
|0CBFB1| db $22
|0CBFB2| db $00 ; Raw block
|0CBFB3| db $13
|0CBFB4| db $26 ; Repeat byte
|0CBFB5| db $22
|0CBFB6| db $00 ; Raw block
|0CBFB7| db $13
|0CBFB8| db $26 ; Repeat byte
|0CBFB9| db $22
|0CBFBA| db $00 ; Raw block
|0CBFBB| db $13
|0CBFBC| db $E4, $46 ; EXT Repeat byte
|0CBFBE| db $22
|0CBFBF| db $01 ; Raw block
|0CBFC0| db $13, $12
|0CBFC2| db $25 ; Repeat byte
|0CBFC3| db $22
|0CBFC4| db $01 ; Raw block
|0CBFC5| db $13, $12
|0CBFC7| db $25 ; Repeat byte
|0CBFC8| db $22
|0CBFC9| db $00 ; Raw block
|0CBFCA| db $13
|0CBFCB| db $26 ; Repeat byte
|0CBFCC| db $22
|0CBFCD| db $00 ; Raw block
|0CBFCE| db $13
|0CBFCF| db $26 ; Repeat byte
|0CBFD0| db $22
|0CBFD1| db $00 ; Raw block
|0CBFD2| db $13
|0CBFD3| db $26 ; Repeat byte
|0CBFD4| db $22
|0CBFD5| db $00 ; Raw block
|0CBFD6| db $13
|0CBFD7| db $26 ; Repeat byte
|0CBFD8| db $22
|0CBFD9| db $00 ; Raw block
|0CBFDA| db $13
|0CBFDB| db $26 ; Repeat byte
|0CBFDC| db $22
|0CBFDD| db $00 ; Raw block
|0CBFDE| db $13
|0CBFDF| db $E4, $25 ; EXT Repeat byte
|0CBFE1| db $22
|0CBFE2| db $FF ; End of Map 95

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen95_Low:
|0CBFE3| db $67 ; Increment fill
|0CBFE4| db $30
|0CBFE5| db $87 ; Copy past
|0CBFE6| dw $0000
|0CBFE8| db $64 ; Increment fill
|0CBFE9| db $38
|0CBFEA| db $02 ; Raw block
|0CBFEB| db $30, $3D, $3E
|0CBFEE| db $87 ; Copy past
|0CBFEF| dw $1000
|0CBFF1| db $07 ; Raw block
|0CBFF2| db $3B, $D9, $59, $3F, $3E, $40, $41, $3B
|0CBFFA| db $87 ; Copy past
|0CBFFB| dw $2000
|0CBFFD| db $07 ; Raw block
|0CBFFE| db $42, $1D, $43, $44, $3B, $37, $45, $46
|0CC006| db $87 ; Copy past
|0CC007| dw $3000
|0CC009| db $07 ; Raw block
|0CC00A| db $3D, $D9, $47, $44, $48, $3E, $38, $34
|0CC012| db $87 ; Copy past
|0CC013| dw $4000
|0CC015| db $07 ; Raw block
|0CC016| db $41, $1D, $49, $44, $4A, $3B, $3B, $4B
|0CC01E| db $87 ; Copy past
|0CC01F| dw $5000
|0CC021| db $07 ; Raw block
|0CC022| db $3B, $3B, $4C, $4D, $45, $46, $42, $48
|0CC02A| db $87 ; Copy past
|0CC02B| dw $6000
|0CC02D| db $01 ; Raw block
|0CC02E| db $4E, $45
|0CC030| db $23 ; Repeat byte
|0CC031| db $30
|0CC032| db $03 ; Raw block
|0CC033| db $3D, $4A, $4E, $45
|0CC037| db $23 ; Repeat byte
|0CC038| db $30
|0CC039| db $01 ; Raw block
|0CC03A| db $3D, $4A
|0CC03C| db $F0, $71 ; EXT Copy past
|0CC03E| dw $0000
|0CC040| db $23 ; Repeat byte
|0CC041| db $30
|0CC042| db $83 ; Copy past
|0CC043| dw $7600
|0CC045| db $23 ; Repeat byte
|0CC046| db $30
|0CC047| db $01 ; Raw block
|0CC048| db $3D, $4A
|0CC04A| db $FF ; End of Map 95

;===================================================================================================

OverworldMap32_Screen9C_High:
|0CC04B| db $E4, $FF ; EXT Repeat byte
|0CC04D| db $22
|0CC04E| db $FF ; End of Map 9C

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen9C_Low:
|0CC04F| db $E4, $FF ; EXT Repeat byte
|0CC051| db $4F
|0CC052| db $FF ; End of Map 9C

;===================================================================================================

OverworldMap32_Screen88_High:
|0CC053| db $E4, $FF ; EXT Repeat byte
|0CC055| db $22
|0CC056| db $FF ; End of Map 88

;---------------------------------------------------------------------------------------------------

OverworldMap32_Screen88_Low:
|0CC057| db $00 ; Raw block
|0CC058| db $50
|0CC059| db $64 ; Increment fill
|0CC05A| db $50
|0CC05B| db $01 ; Raw block
|0CC05C| db $50, $50
|0CC05E| db $63 ; Increment fill
|0CC05F| db $55
|0CC060| db $63 ; Increment fill
|0CC061| db $58
|0CC062| db $09 ; Raw block
|0CC063| db $50, $50, $5C, $58, $58, $5D, $50, $50
|0CC06B| db $55, $5E
|0CC06D| db $23 ; Repeat byte
|0CC06E| db $58
|0CC06F| db $0B ; Raw block
|0CC070| db $5F, $5B, $50, $60, $61, $58, $58, $62
|0CC078| db $60, $50, $63, $64
|0CC07C| db $23 ; Repeat byte
|0CC07D| db $58
|0CC07E| db $63 ; Increment fill
|0CC07F| db $65
|0CC080| db $23 ; Repeat byte
|0CC081| db $58
|0CC082| db $02 ; Raw block
|0CC083| db $68, $67, $5E
|0CC086| db $25 ; Repeat byte
|0CC087| db $58
|0CC088| db $00 ; Raw block
|0CC089| db $5F
|0CC08A| db $27 ; Repeat byte
|0CC08B| db $58
|0CC08C| db $00 ; Raw block
|0CC08D| db $64
|0CC08E| db $25 ; Repeat byte
|0CC08F| db $58
|0CC090| db $00 ; Raw block
|0CC091| db $65
|0CC092| db $66 ; Increment fill
|0CC093| db $69
|0CC094| db $00 ; Raw block
|0CC095| db $69
|0CC096| db $27 ; Repeat byte
|0CC097| db $58
|0CC098| db $65 ; Increment fill
|0CC099| db $70
|0CC09A| db $01 ; Raw block
|0CC09B| db $71, $70
|0CC09D| db $27 ; Repeat byte
|0CC09E| db $58
|0CC09F| db $01 ; Raw block
|0CC0A0| db $70, $70
|0CC0A2| db $63 ; Increment fill
|0CC0A3| db $76
|0CC0A4| db $01 ; Raw block
|0CC0A5| db $70, $70
|0CC0A7| db $E4, $87 ; EXT Repeat byte
|0CC0A9| db $58
|0CC0AA| db $FF ; End of Map 88

;===================================================================================================
; FREE ROM: 0x55
;===================================================================================================
NULL_0CC0AB:
|0CC0AB| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CC0B3| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CC0BB| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CC0C3| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CC0CB| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CC0D3| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CC0DB| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CC0E3| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CC0EB| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CC0F3| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CC0FB| db $FF, $FF, $FF, $FF, $FF

;===================================================================================================

Module00_Intro:
|0CC100| LDA.b $11
|0CC102| CMP.b #$04
|0CC104| BCC .run_submodule

|0CC106| LDA.b $F6
|0CC108| AND.b #$C0

|0CC10A| ORA.b $F4
|0CC10C| AND.b #$D0
|0CC10E| BEQ .run_submodule

|0CC110| JMP.w FadeMusicAndResetSRAMMirror

;---------------------------------------------------------------------------------------------------

.run_submodule
|0CC113| LDA.b $11
|0CC115| JSL JumpTableLong
|0CC119| dl Intro_InitialInitialization
|0CC11C| dl Intro_InitializeMemory
|0CC11F| dl Intro_InitializeTriforcePolyThread
|0CC122| dl Intro_HandleAllTriforceAnimations
|0CC125| dl Intro_HandleAllTriforceAnimations
|0CC128| dl Intro_FadeLogoIn
|0CC12B| dl Intro_PopSubtitleCard
|0CC12E| dl Intro_TrianglesBeforeAttract
|0CC131| dl Intro_InitializeTriforcePolyThread
|0CC134| dl Intro_HandleAllTriforceAnimations

;===================================================================================================

Intro_InitialInitialization:
|0CC137| LDA.b #$80
|0CC139| STA.w $0710

|0CC13C| JSL EnableForceBlank
|0CC140| JSL Intro_SetupScreen

|0CC144| REP #$20

|0CC146| LDX.b #$80
|0CC148| STX.w VMAIN

|0CC14B| LDA.w #$27F0 ; VRAM $4FE0
|0CC14E| STA.w VMADDR

|0CC151| LDX.b #$20

|0CC153| LDA.w #$7FFF ; RGB: #F8F8F8

.clear_next
|0CC156| STZ.w VMDATA

|0CC159| STA.l $7EC620,X

|0CC15D| DEX
|0CC15E| DEX
|0CC15F| BPL .clear_next

;---------------------------------------------------------------------------------------------------

|0CC161| LDA.w #$1FFE
|0CC164| STA.b $C8

|0CC166| LDA.w #$1BFE
|0CC169| STA.b $CA

|0CC16B| SEP #$20

|0CC16D| LDA.b #$0F
|0CC16F| STA.b $13

|0CC171| STZ.b $B0

|0CC173| INC.b $15
|0CC175| INC.b $11

|0CC177| LDA.b #$0A ; SFX3.0A
|0CC179| STA.w $012F

;===================================================================================================

Intro_InitializeMemory:
|0CC17C| JSR Intro_DisplayLogo

|0CC17F| LDA.b $B0

|0CC181| INC.b $B0

|0CC183| CMP.b #$0C
|0CC185| BCS Intro_InitializeMemory_darken

|0CC187| JSL JumpTableLong
|0CC18B| dl Intro_Clear1kbBlocksOfWRAM
|0CC18E| dl Intro_Clear1kbBlocksOfWRAM
|0CC191| dl Intro_Clear1kbBlocksOfWRAM
|0CC194| dl Intro_Clear1kbBlocksOfWRAM
|0CC197| dl Intro_Clear1kbBlocksOfWRAM
|0CC19A| dl Intro_Clear1kbBlocksOfWRAM
|0CC19D| dl Intro_Clear1kbBlocksOfWRAM
|0CC1A0| dl Intro_Clear1kbBlocksOfWRAM
|0CC1A3| dl Intro_CreateTextPointers
|0CC1A6| dl DecompressFontGFX
|0CC1A9| dl LoadItemGFXIntoWRAM4BPPBuffer
|0CC1AC| dl LoadFollowerGraphics

;===================================================================================================
; what a weird way to clear memory
; Every frame it empties 15 1-kilobyte blocks of WRAM
; They could have just done it all at once...
;===================================================================================================
Intro_Clear1kbBlocksOfWRAM:
|0CC1AF| REP #$30

|0CC1B1| LDX.b $C8

|0CC1B3| LDA.w #$0000

.loop
|0CC1B6| STA.l $7E2000,X
|0CC1BA| STA.l $7E4000,X
|0CC1BE| STA.l $7E6000,X

|0CC1C2| STA.l $7E8000,X
|0CC1C6| STA.l $7EA000,X
|0CC1CA| STA.l $7EC000,X
|0CC1CE| STA.l $7EE000,X

|0CC1D2| STA.l $7F0000,X
|0CC1D6| STA.l $7F2000,X
|0CC1DA| STA.l $7F4000,X
|0CC1DE| STA.l $7F6000,X

|0CC1E2| STA.l $7F8000,X
|0CC1E6| STA.l $7FA000,X
|0CC1EA| STA.l $7FC000,X
|0CC1EE| STA.l $7FE000,X

|0CC1F2| DEX
|0CC1F3| DEX
|0CC1F4| CPX.b $CA
|0CC1F6| BNE .loop

;---------------------------------------------------------------------------------------------------

|0CC1F8| STX.b $C8 ; save our place

|0CC1FA| TXA ; -1k
|0CC1FB| SEC
|0CC1FC| SBC.w #$0400
|0CC1FF| STA.b $CA ; save our stopping point

|0CC201| SEP #$30

|0CC203| RTL

;===================================================================================================

Intro_InitializeMemory_darken:
|0CC204| DEC.b $13
|0CC206| BNE .still_darkening

;===================================================================================================

#Intro_InitializeDefaultGFX:
|0CC208| JSL EnableForceBlank
|0CC20C| JSL EraseTilemaps_normal

|0CC210| LDA.b #$02
|0CC212| STA.w OBSEL

|0CC215| LDA.b #$23
|0CC217| STA.w $0AA1

|0CC21A| LDA.b #$7D
|0CC21C| STA.w $0AA3

|0CC21F| LDA.b #$51
|0CC221| STA.w $0AA2

|0CC224| LDA.b #$08
|0CC226| STA.w $0AA4

|0CC229| JSL LoadDefaultGraphics
|0CC22D| JSL InitializeTilesets

|0CC231| LDY.b #$5D
|0CC233| JSL DecompressAnimatedUnderworldTiles

;---------------------------------------------------------------------------------------------------

|0CC237| LDA.b #$02
|0CC239| STA.l $7EC00D

|0CC23D| LDA.b #$00
|0CC23F| STA.l $7EC00E

|0CC243| STZ.b $8A

|0CC245| STZ.w $0AB6
|0CC248| STZ.w $0AB8

|0CC24B| STZ.b $C8
|0CC24D| STZ.b $C9

|0CC24F| STZ.b $CA
|0CC251| STZ.b $CB

|0CC253| LDA.b #$02
|0CC255| STA.l $7EC009

|0CC259| LDA.b #$1F
|0CC25B| STA.l $7EC007

|0CC25F| LDA.b #$00
|0CC261| STA.l $7EC00B

|0CC265| STZ.w $0AA6

|0CC268| INC.b $11

.still_darkening
|0CC26A| RTL

;===================================================================================================

Intro_FadeLogoIn:
|0CC26B| JSL Intro_HandleAllTriforceAnimations

|0CC26F| LDA.b $1A
|0CC271| LSR A
|0CC272| BCC .exit_a

|0CC274| JSL ApplyPaletteFilter

|0CC278| LDA.l $7EC007
|0CC27C| BNE .dont_advance

|0CC27E| LDA.b #$20
|0CC280| STA.b $B0

|0CC282| INC.b $11

.exit_a
|0CC284| RTL

;---------------------------------------------------------------------------------------------------

.dont_advance
|0CC285| CMP.b #$0D
|0CC287| BNE .exit_b

|0CC289| LDA.b #$15
|0CC28B| STA.b $1C
|0CC28D| STZ.b $1D

.exit_b
|0CC28F| RTL

;===================================================================================================

Intro_PopSubtitleCard:
|0CC290| JSL Intro_HandleAllTriforceAnimations

|0CC294| DEC.b $B0
|0CC296| BNE .exit

|0CC298| LDA.b #$01
|0CC29A| STA.w $1E13

|0CC29D| LDA.b #$01
|0CC29F| STA.w $1E1B

|0CC2A2| INC.b $11

.exit
|0CC2A4| RTL

;===================================================================================================

Intro_TrianglesBeforeAttract:
|0CC2A5| JSL Intro_HandleAllTriforceAnimations

|0CC2A9| DEC.b $B0
|0CC2AB| BNE .exit

|0CC2AD| LDA.b #$14
|0CC2AF| STA.b $10

|0CC2B1| STZ.b $11
|0CC2B3| STZ.b $22

.exit
|0CC2B5| RTL

;===================================================================================================

FadeMusicAndResetSRAMMirror:
|0CC2B6| LDA.b #$FF
|0CC2B8| STA.w $0128

|0CC2BB| LDA.b #$15
|0CC2BD| STA.b $1C

|0CC2BF| STZ.b $1D
|0CC2C1| STZ.b $1B

|0CC2C3| LDA.b #$F1 ; SONG F1 - fade
|0CC2C5| STA.w $012C

|0CC2C8| JSL FixedColorBlack

;---------------------------------------------------------------------------------------------------

|0CC2CC| REP #$30

|0CC2CE| LDX.w #$006E

.next_dp
|0CC2D1| STZ.b $20,X

|0CC2D3| DEX
|0CC2D4| DEX
|0CC2D5| BPL .next_dp

;---------------------------------------------------------------------------------------------------

|0CC2D7| LDX.w #$0000
|0CC2DA| TXA

.next_sram
|0CC2DB| STA.l $7EF000,X
|0CC2DF| STA.l $7EF100,X
|0CC2E3| STA.l $7EF200,X
|0CC2E7| STA.l $7EF300,X
|0CC2EB| STA.l $7EF400,X

|0CC2EF| INX
|0CC2F0| INX
|0CC2F1| CPX.w #$0100
|0CC2F4| BNE .next_sram

;---------------------------------------------------------------------------------------------------

|0CC2F6| SEP #$30

|0CC2F8| LDA.b #$01
|0CC2FA| STA.b $10
|0CC2FC| STA.w $04AA

|0CC2FF| STZ.b $11

|0CC301| RTL

;===================================================================================================

Intro_InitializeTriforcePolyThread:
|0CC302| LDA.b #$08
|0CC304| STA.w $0AA4

|0CC307| JSL LoadCommonSprites_long
|0CC30B| JSR TriforceInitializePolyhedralModule

|0CC30E| LDA.b #$01
|0CC310| STA.w $1E10
|0CC313| STA.w $1E11
|0CC316| STA.w $1E12

|0CC319| LDA.b #$00
|0CC31B| STA.w $1E18
|0CC31E| STA.w $1E19
|0CC321| STA.w $1E1A

|0CC324| LDA.b #$01
|0CC326| STA.w $1E14

|0CC329| LDA.b #$02
|0CC32B| STA.w $1E1C

|0CC32E| LDA.b #$0F
|0CC330| STA.b $13

|0CC332| INC.b $11

|0CC334| RTL

;===================================================================================================

TriforceInitializePolyhedralModule:
|0CC335| JSL Polyhedral_InitializeThread
|0CC339| JSR LoadTriforceSpritePalette

|0CC33C| LDA.b #$90
|0CC33E| STA.b $FF

|0CC340| LDA.b #$FF
|0CC342| STA.w $1F02

|0CC345| LDA.b #$01
|0CC347| STA.w $1F01

|0CC34A| LDA.b #$20
|0CC34C| STA.w $1F06

|0CC34F| LDA.b #$20
|0CC351| STA.w $1F07

|0CC354| LDA.b #$20
|0CC356| STA.w $1F08

|0CC359| LDA.b #$01
|0CC35B| STA.w $1F03

|0CC35E| LDA.b #$A0
|0CC360| STA.w $1F04

|0CC363| LDA.b #$60
|0CC365| STA.w $1F05

|0CC368| LDA.b #$01
|0CC36A| STA.w $012A
|0CC36D| STA.w $1F00

;---------------------------------------------------------------------------------------------------

|0CC370| LDX.b #$0F

.clear_next
|0CC372| STZ.w $1E00,X
|0CC375| STZ.w $1E10,X
|0CC378| STZ.w $1E20,X
|0CC37B| STZ.w $1E30,X
|0CC37E| STZ.w $1E40,X
|0CC381| STZ.w $1E50,X
|0CC384| STZ.w $1E60,X

|0CC387| DEX
|0CC388| BPL .clear_next

;---------------------------------------------------------------------------------------------------

|0CC38A| RTS

;===================================================================================================

LoadTriforceSpritePalette:
|0CC38B| REP #$20

|0CC38D| LDA.l Palettes_Triforce+0
|0CC391| STA.l $7EC6A0

|0CC395| LDA.l Palettes_Triforce+2
|0CC399| STA.l $7EC6A2

|0CC39D| LDA.l Palettes_Triforce+4
|0CC3A1| STA.l $7EC6A4

|0CC3A5| LDA.l Palettes_Triforce+6
|0CC3A9| STA.l $7EC6A6

|0CC3AD| LDA.l Palettes_Triforce+8
|0CC3B1| STA.l $7EC6A8

|0CC3B5| LDA.l Palettes_Triforce+10
|0CC3B9| STA.l $7EC6AA

|0CC3BD| LDA.l Palettes_Triforce+12
|0CC3C1| STA.l $7EC6AC

|0CC3C5| LDA.l Palettes_Triforce+14
|0CC3C9| STA.l $7EC6AE

|0CC3CD| SEP #$30

|0CC3CF| INC.b $15

|0CC3D1| RTS

;===================================================================================================

Intro_HandleAllTriforceAnimations:
|0CC3D2| PHB
|0CC3D3| PHK
|0CC3D4| PLB

|0CC3D5| INC.w $1E0A

|0CC3D8| JSR Intro_AnimateTriforce
|0CC3DB| JSR Scene_AnimateEverySprite

|0CC3DE| PLB

|0CC3DF| RTL

;===================================================================================================

Scene_AnimateEverySprite:
|0CC3E0| LDA.b #$00
|0CC3E2| STA.w $1E08

|0CC3E5| LDA.b #$08
|0CC3E7| STA.w $1E09

|0CC3EA| LDX.b #$07

.next
|0CC3EC| JSR Scene_AnimateSingleSprite

|0CC3EF| DEX
|0CC3F0| BPL .next

|0CC3F2| RTS

;===================================================================================================

Palettes_Triforce:
; #RRGGBB :  000000, 685000, 806800, 987800, B09000, C89800, E8B800, F8D000
|0CC3F3| dw  $0000,  $014D,  $01B0,  $01F3,  $0256,  $0279,  $02FD,  $035F

;===================================================================================================

Intro_AnimateTriforce:
|0CC403| LDA.b #$01
|0CC405| STA.w $012A

|0CC408| LDA.w $1F00
|0CC40B| BNE .exit

|0CC40D| JSR Intro_AnimateTriforceDanceMoves

|0CC410| LDA.b #$01
|0CC412| STA.w $1F00

.exit
|0CC415| RTS

;===================================================================================================

Intro_AnimateTriforceDanceMoves:
|0CC416| LDA.w $1E00
|0CC419| JSL JumpTableLocal
|0CC41D| dw Intro_TriforceTinyDancers
|0CC41F| dw Intro_TriforceSpinInwards
|0CC421| dw Intro_TriforceNearingMerge
|0CC423| dw Intro_MergeTriforceSpin
|0CC425| dw Intro_TriforceTerminateSpin
|0CC427| dw Intro_TriforceDoNothing

;===================================================================================================

Intro_TriforceTinyDancers:
|0CC429| INC.w $1E01

|0CC42C| LDA.w $1E01
|0CC42F| CMP.b #$40
|0CC431| BNE .delay

|0CC433| INC.w $1E00

.delay
|0CC436| LDA.w $1F05
|0CC439| CLC
|0CC43A| ADC.b #$05
|0CC43C| STA.w $1F05

|0CC43F| LDA.w $1F04
|0CC442| CLC
|0CC443| ADC.b #$03
|0CC445| STA.w $1F04

|0CC448| RTS

;===================================================================================================
; Spinwards, if you will.
;===================================================================================================
Intro_TriforceSpinInwards:
|0CC449| LDA.w $1F02
|0CC44C| CMP.b #$02
|0CC44E| BCS .delay

|0CC450| STZ.w $1F02

|0CC453| INC.w $1E00

|0CC456| LDA.b #$40
|0CC458| STA.w $1E01

|0CC45B| RTS

;---------------------------------------------------------------------------------------------------

.delay
|0CC45C| SBC.b #$02
|0CC45E| STA.w $1F02

|0CC461| LDA.w $1F05
|0CC464| CLC
|0CC465| ADC.b #$05
|0CC467| STA.w $1F05

|0CC46A| LDA.w $1F04
|0CC46D| CLC
|0CC46E| ADC.b #$03
|0CC470| STA.w $1F04

|0CC473| LDA.w $1F02
|0CC476| CMP.b #$E1
|0CC478| BCS .delay_skippability

|0CC47A| LDX.b #$04
|0CC47C| STX.b $11

.delay_skippability
|0CC47E| CMP.b #$71
|0CC480| BNE .delay_song

|0CC482| LDA.b #$01 ; SONG 01
|0CC484| STA.w $012C

.delay_song
|0CC487| RTS

;===================================================================================================

Intro_TriforceNearingMerge:
|0CC488| DEC.w $1E01
|0CC48B| BNE .delay

|0CC48D| INC.w $1E00

|0CC490| RTS

;---------------------------------------------------------------------------------------------------

.delay
|0CC491| LDA.w $1F05
|0CC494| CLC
|0CC495| ADC.b #$05
|0CC497| STA.w $1F05

|0CC49A| LDA.w $1F04
|0CC49D| CLC
|0CC49E| ADC.b #$03
|0CC4A0| STA.w $1F04

|0CC4A3| RTS

;===================================================================================================

Intro_MergeTriforceSpin:
|0CC4A4| LDA.w $1F05
|0CC4A7| CMP.b #$FA
|0CC4A9| BCC .spinning

|0CC4AB| LDA.w $1F04
|0CC4AE| CMP.b #$FC
|0CC4B0| BCC .spinning

|0CC4B2| INC.w $1E00

|0CC4B5| LDA.b #$20
|0CC4B7| STA.w $1E01

|0CC4BA| RTS

;---------------------------------------------------------------------------------------------------

.spinning
|0CC4BB| LDA.w $1F05
|0CC4BE| CLC
|0CC4BF| ADC.b #$05
|0CC4C1| STA.w $1F05

|0CC4C4| LDA.w $1F04
|0CC4C7| CLC
|0CC4C8| ADC.b #$03
|0CC4CA| STA.w $1F04

|0CC4CD| RTS

;===================================================================================================

Intro_TriforceTerminateSpin:
|0CC4CE| STZ.w $1F05
|0CC4D1| STZ.w $1F04

|0CC4D4| DEC.w $1E01
|0CC4D7| BNE .exit

|0CC4D9| INC.w $1E00

|0CC4DC| LDA.b #$01
|0CC4DE| STA.w $1E15

|0CC4E1| LDA.b #$03
|0CC4E3| STA.w $1E1D

|0CC4E6| LDA.b #$03
|0CC4E8| STA.b $14

|0CC4EA| INC.b $15

|0CC4EC| INC.b $11

|0CC4EE| LDA.b #$10
|0CC4F0| STA.b $1C

|0CC4F2| LDA.b #$05
|0CC4F4| STA.b $1D

|0CC4F6| LDA.b #$02
|0CC4F8| STA.b $99

|0CC4FA| LDA.b #$31
|0CC4FC| STA.b $9A

|0CC4FE| STZ.b $B0

.exit
|0CC500| RTS

;===================================================================================================

Intro_TriforceDoNothing:
|0CC501| RTS

;===================================================================================================

Scene_AnimateSingleSprite:
|0CC502| LDA.w $1E10,X
|0CC505| BEQ .exit

|0CC507| JSL JumpTableLocal
|0CC50B| dw .exit
|0CC50D| dw InitializeSceneSprite
|0CC50F| dw AnimateSceneSprite

;---------------------------------------------------------------------------------------------------

.exit
|0CC511| RTS

;===================================================================================================

InitializeSceneSprite:
|0CC512| LDA.w $1E18,X
|0CC515| JSL JumpTableLocal
|0CC519| dw InitializeSceneSprite_Triangle
|0CC51B| dw InitializeSceneSprite_TitleCard
|0CC51D| dw InitializeSceneSprite_Copyright
|0CC51F| dw InitializeSceneSprite_Sparkle
|0CC521| dw InitializeSceneSprite_TriforceRoomTriangle
|0CC523| dw InitializeSceneSprite_TriforceRoomTriangle
|0CC525| dw InitializeSceneSprite_TriforceRoomTriangle
|0CC527| dw InitializeSceneSprite_CreditsTriangle

;===================================================================================================

AnimateSceneSprite:
|0CC529| LDA.w $1E18,X
|0CC52C| JSL JumpTableLocal
|0CC530| dw AnimateSceneSprite_Triangle
|0CC532| dw AnimateSceneSprite_TitleCard
|0CC534| dw AnimateSceneSprite_Copyright
|0CC536| dw AnimateSceneSprite_Sparkle
|0CC538| dw AnimateSceneSprite_TriforceRoomTriangle
|0CC53A| dw AnimateSceneSprite_TriforceRoomTriangle
|0CC53C| dw AnimateSceneSprite_TriforceRoomTriangle
|0CC53E| dw AnimateSceneSprite_CreditsTriangle

;===================================================================================================

pool InitializeSceneSprite_Triangle

.pos_x_start
|0CC540| dw $FFDA
|0CC542| dw $005F
|0CC544| dw $00E6

.pos_y_start
|0CC546| dw $00C8
|0CC548| dw $FFBD
|0CC54A| dw $00C8

endpool

;---------------------------------------------------------------------------------------------------

InitializeSceneSprite_Triangle:
|0CC54C| TXA
|0CC54D| ASL A
|0CC54E| TAY

|0CC54F| LDA.w .pos_x_start+0,Y
|0CC552| STA.w $1E30,X

|0CC555| LDA.w .pos_x_start+1,Y
|0CC558| STA.w $1E38,X

|0CC55B| LDA.w .pos_y_start+0,Y
|0CC55E| STA.w $1E48,X

|0CC561| LDA.w .pos_y_start+1,Y
|0CC564| STA.w $1E50,X

|0CC567| LDA.w IntroTriangleSpeedX,X
|0CC56A| CLC
|0CC56B| ADC.w $1E58,X
|0CC56E| STA.w $1E58,X

|0CC571| LDA.w IntroTriangleSpeedY,X
|0CC574| CLC
|0CC575| ADC.w $1E60,X
|0CC578| STA.w $1E60,X

|0CC57B| INC.w $1E10,X

|0CC57E| RTS

;===================================================================================================

AnimateSceneSprite_Triangle:
|0CC57F| JSR AnimateSceneSprite_DrawTriangle
|0CC582| JSR AnimateSceneSprite_MoveTriangle

|0CC585| LDA.w $1E00
|0CC588| JSL JumpTableLocal
|0CC58C| dw IntroTriangle_MoveIntoPlace
|0CC58E| dw IntroTriangle_MoveIntoPlace
|0CC590| dw IntroTriangle_MoveIntoPlace
|0CC592| dw IntroTriangle_MoveIntoPlace
|0CC594| dw IntroTriangle_MoveIntoPlace
|0CC596| dw IntroTriangle_StopMoving

;===================================================================================================

IntroTriangleSpeedX:
|0CC598| db   1
|0CC599| db   0
|0CC59A| db  -1

IntroTriangleSpeedY:
|0CC59B| db  -1
|0CC59C| db   1
|0CC59D| db  -1

;===================================================================================================

pool IntroTriangle_MoveIntoPlace

.target_x
|0CC59E| db $4B
|0CC59F| db $5F
|0CC5A0| db $75

.target_y
|0CC5A1| db $50
|0CC5A2| db $28
|0CC5A3| db $50

endpool

;---------------------------------------------------------------------------------------------------

IntroTriangle_MoveIntoPlace:
|0CC5A4| LDA.w $1E0A
|0CC5A7| AND.b #$1F
|0CC5A9| BNE .dont_accel

|0CC5AB| LDA.w IntroTriangleSpeedX,X
|0CC5AE| CLC
|0CC5AF| ADC.w $1E58,X
|0CC5B2| STA.w $1E58,X

|0CC5B5| LDA.w IntroTriangleSpeedY,X
|0CC5B8| CLC
|0CC5B9| ADC.w $1E60,X
|0CC5BC| STA.w $1E60,X

.dont_accel
|0CC5BF| LDA.w .target_x,X
|0CC5C2| CMP.w $1E30,X
|0CC5C5| BNE .dont_reset_speed

|0CC5C7| STZ.w $1E58,X

.dont_reset_speed
|0CC5CA| LDA.w .target_y,X
|0CC5CD| CMP.w $1E48,X
|0CC5D0| BNE .exit

|0CC5D2| STZ.w $1E60,X

.exit
|0CC5D5| RTS

;===================================================================================================

IntroTriangle_StopMoving:
|0CC5D6| STZ.w $1E58,X
|0CC5D9| STZ.w $1E60,X

|0CC5DC| RTS

;===================================================================================================

pool AnimateSceneSprite_DrawTriangle

.rightside_objects
|0CC5DD| dw   0,   0 : db $80, $2B, $00, $02
|0CC5E5| dw  16,   0 : db $82, $2B, $00, $02
|0CC5ED| dw  32,   0 : db $84, $2B, $00, $02
|0CC5F5| dw  48,   0 : db $86, $2B, $00, $02
|0CC5FD| dw   0,  16 : db $A0, $2B, $00, $02
|0CC605| dw  16,  16 : db $A2, $2B, $00, $02
|0CC60D| dw  32,  16 : db $A4, $2B, $00, $02
|0CC615| dw  48,  16 : db $A6, $2B, $00, $02
|0CC61D| dw   0,  32 : db $88, $2B, $00, $02
|0CC625| dw  16,  32 : db $8A, $2B, $00, $02
|0CC62D| dw  32,  32 : db $8C, $2B, $00, $02
|0CC635| dw  48,  32 : db $8E, $2B, $00, $02
|0CC63D| dw   0,  48 : db $A8, $2B, $00, $02
|0CC645| dw  16,  48 : db $AA, $2B, $00, $02
|0CC64D| dw  32,  48 : db $AC, $2B, $00, $02
|0CC655| dw  48,  48 : db $AE, $2B, $00, $02

;---------------------------------------------------------------------------------------------------

.leftside_objects
|0CC65D| dw  48,   0 : db $80, $6B, $00, $02
|0CC665| dw  32,   0 : db $82, $6B, $00, $02
|0CC66D| dw  16,   0 : db $84, $6B, $00, $02
|0CC675| dw   0,   0 : db $86, $6B, $00, $02
|0CC67D| dw  48,  16 : db $A0, $6B, $00, $02
|0CC685| dw  32,  16 : db $A2, $6B, $00, $02
|0CC68D| dw  16,  16 : db $A4, $6B, $00, $02
|0CC695| dw   0,  16 : db $A6, $6B, $00, $02
|0CC69D| dw  48,  32 : db $88, $6B, $00, $02
|0CC6A5| dw  32,  32 : db $8A, $6B, $00, $02
|0CC6AD| dw  16,  32 : db $8C, $6B, $00, $02
|0CC6B5| dw   0,  32 : db $8E, $6B, $00, $02
|0CC6BD| dw  48,  48 : db $A8, $6B, $00, $02
|0CC6C5| dw  32,  48 : db $AA, $6B, $00, $02
|0CC6CD| dw  16,  48 : db $AC, $6B, $00, $02
|0CC6D5| dw   0,  48 : db $AE, $6B, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

AnimateSceneSprite_DrawTriangle:
|0CC6DD| LDA.b #$10
|0CC6DF| STA.b $06
|0CC6E1| STZ.b $07

|0CC6E3| CPX.b #$02
|0CC6E5| BEQ .decrementing

|0CC6E7| LDA.b #<.rightside_objects
|0CC6E9| STA.b $08

|0CC6EB| LDA.b #>.rightside_objects
|0CC6ED| STA.b $09

|0CC6EF| BRA .continue

;---------------------------------------------------------------------------------------------------

.decrementing
|0CC6F1| LDA.b #<.leftside_objects
|0CC6F3| STA.b $08

|0CC6F5| LDA.b #>.leftside_objects
|0CC6F7| STA.b $09

.continue
|0CC6F9| JSR AnimateSceneSprite_AddObjectsToOAMBuffer

|0CC6FC| RTS

;===================================================================================================

InitializeSceneSprite_TitleCard:
|0CC6FD| LDA.b #$80
|0CC6FF| STA.w $1E30,X

|0CC702| STZ.w $1E38,X

|0CC705| LDA.b #$7E
|0CC707| STA.w $1E48,X

|0CC70A| STZ.w $1E50,X

|0CC70D| INC.w $1E10,X

|0CC710| RTS

;===================================================================================================

AnimateSceneSprite_TitleCard:
|0CC711| JSR AnimateSceneSprite_DrawTitleCard

|0CC714| RTS

;===================================================================================================

pool AnimateSceneSprite_DrawTitleCard

.groups
|0CC715| dw   0,   0 : db $46, $0C, $00, $02
|0CC71D| dw  16,   0 : db $48, $0C, $00, $02
|0CC725| dw  32,   0 : db $4A, $0C, $00, $02
|0CC72D| dw  48,   0 : db $4C, $0C, $00, $02
|0CC735| dw  64,   0 : db $4E, $0C, $00, $02
|0CC73D| dw  80,   0 : db $60, $0C, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

AnimateSceneSprite_DrawTitleCard:
|0CC745| LDA.b #$06
|0CC747| STA.b $06
|0CC749| STZ.b $07

|0CC74B| LDA.b #.groups
|0CC74D| STA.b $08

|0CC74F| LDA.b #>.groups
|0CC751| STA.b $09

|0CC753| JSR AnimateSceneSprite_AddObjectsToOAMBuffer

|0CC756| RTS

;===================================================================================================

InitializeSceneSprite_Copyright:
|0CC757| LDA.b #$58
|0CC759| STA.w $1E30,X

|0CC75C| STZ.w $1E38,X

|0CC75F| LDA.b #$B8
|0CC761| STA.w $1E48,X

|0CC764| STZ.w $1E50,X

|0CC767| INC.w $1E10,X

|0CC76A| RTS

;===================================================================================================

AnimateSceneSprite_Copyright:
|0CC76B| JSR AnimateSceneSprite_DrawCopyright

|0CC76E| RTS

;===================================================================================================

pool AnimateSceneSprite_DrawCopyright

.groups
|0CC76F| dw   0,   0 : db $40, $0A, $00, $00
|0CC777| dw   8,   0 : db $41, $0A, $00, $00
|0CC77F| dw  16,   0 : db $42, $0A, $00, $00
|0CC787| dw  24,   0 : db $43, $0A, $00, $00
|0CC78F| dw  32,   0 : db $44, $0A, $00, $00
|0CC797| dw  40,   0 : db $50, $0A, $00, $00
|0CC79F| dw  48,   0 : db $51, $0A, $00, $00
|0CC7A7| dw  56,   0 : db $52, $0A, $00, $00
|0CC7AF| dw  64,   0 : db $53, $0A, $00, $00
|0CC7B7| dw  72,   0 : db $54, $0A, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

AnimateSceneSprite_DrawCopyright:
|0CC7BF| LDA.b #$0A
|0CC7C1| STA.b $06
|0CC7C3| STZ.b $07

|0CC7C5| LDA.b #.groups
|0CC7C7| STA.b $08

|0CC7C9| LDA.b #>.groups
|0CC7CB| STA.b $09

|0CC7CD| JSR AnimateSceneSprite_AddObjectsToOAMBuffer

|0CC7D0| RTS

;===================================================================================================

InitializeSceneSprite_Sparkle:
|0CC7D1| LDA.w $1E0A

|0CC7D4| LSR A ; /32
|0CC7D5| LSR A
|0CC7D6| LSR A
|0CC7D7| LSR A
|0CC7D8| LSR A

|0CC7D9| AND.b #$03
|0CC7DB| TAY

|0CC7DC| LDA.w .position_x,Y
|0CC7DF| STA.w $1E30,X

|0CC7E2| LDA.w .position_y,Y
|0CC7E5| STA.w $1E48,X

|0CC7E8| INC.w $1E10,X

|0CC7EB| RTS

;---------------------------------------------------------------------------------------------------

pool InitializeSceneSprite_Sparkle AnimateSceneSprite_Sparkle

.position_x
|0CC7EC| db $D0, $98, $6E, $2A

.position_y
|0CC7F0| db $6E, $4C, $71, $51

.anim_step
|0CC7F4| db $00, $01, $02, $03, $02, $01, $FF, $FF

endpool

;---------------------------------------------------------------------------------------------------

AnimateSceneSprite_Sparkle:
|0CC7FC| JSR AnimateSceneSprite_DrawSparkle

|0CC7FF| LDA.w $1E0A
|0CC802| LSR A
|0CC803| LSR A
|0CC804| AND.b #$07
|0CC806| TAY

|0CC807| LDA.w .anim_step,Y
|0CC80A| STA.w $1E20,X

|0CC80D| LDA.w $1E0A
|0CC810| LSR A ; /32
|0CC811| LSR A
|0CC812| LSR A
|0CC813| LSR A
|0CC814| LSR A
|0CC815| AND.b #$03
|0CC817| TAY

|0CC818| LDA.w .position_x,Y
|0CC81B| STA.w $1E30,X

|0CC81E| LDA.w .position_y,Y
|0CC821| STA.w $1E48,X

|0CC824| RTS

;===================================================================================================

pool AnimateSceneSprite_DrawSparkle

.groups
|0CC825| dw   0,   0 : db $80, $34, $00, $00
|0CC82D| dw   0,   0 : db $B7, $34, $00, $00
|0CC835| dw  -4,  -3 : db $64, $38, $00, $02
|0CC83D| dw  -4,  -3 : db $62, $34, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

AnimateSceneSprite_DrawSparkle:
|0CC845| LDA.b #$01
|0CC847| STA.b $06
|0CC849| STZ.b $07

|0CC84B| LDA.w $1E20,X
|0CC84E| BMI .exit

|0CC850| ASL A
|0CC851| ASL A
|0CC852| ASL A

|0CC853| ADC.b #.groups
|0CC855| STA.b $08

|0CC857| LDA.b #>.groups
|0CC859| ADC.b #$00
|0CC85B| STA.b $09

|0CC85D| JSR AnimateSceneSprite_AddObjectsToOAMBuffer

.exit
|0CC860| RTS

;===================================================================================================

AnimateSceneSprite_AddObjectsToOAMBuffer:
|0CC861| LDA.w $1E30,X
|0CC864| STA.b $00

|0CC866| LDA.w $1E38,X
|0CC869| STA.b $01

|0CC86B| LDA.w $1E48,X
|0CC86E| STA.b $02

|0CC870| LDA.w $1E50,X
|0CC873| STA.b $03

|0CC875| STZ.b $04
|0CC877| STZ.b $05

;---------------------------------------------------------------------------------------------------

|0CC879| PHX

|0CC87A| REP #$30

|0CC87C| LDY.w #$0000
|0CC87F| LDX.w $1E08

|0CC882| LDA.b $06
|0CC884| ASL A
|0CC885| ASL A
|0CC886| ADC.w $1E08
|0CC889| STA.w $1E08

;---------------------------------------------------------------------------------------------------

.next
|0CC88C| LDA.b ($08),Y
|0CC88E| CLC
|0CC88F| ADC.b $00
|0CC891| STA.w $0000,X

|0CC894| AND.w #$0100
|0CC897| STA.b $0C

|0CC899| INY
|0CC89A| INY

|0CC89B| LDA.b ($08),Y
|0CC89D| CLC
|0CC89E| ADC.b $02
|0CC8A0| STA.w $0001,X

|0CC8A3| CLC
|0CC8A4| ADC.w #$0010
|0CC8A7| CMP.w #$0100
|0CC8AA| BCC .on_screen

|0CC8AC| LDA.w #$00F0
|0CC8AF| STA.w $0001,X

.on_screen
|0CC8B2| INY
|0CC8B3| INY

|0CC8B4| LDA.b ($08),Y
|0CC8B6| EOR.b $04
|0CC8B8| STA.w $0002,X

|0CC8BB| PHX

|0CC8BC| TXA
|0CC8BD| SEC
|0CC8BE| SBC.w #$0800
|0CC8C1| LSR A
|0CC8C2| LSR A
|0CC8C3| TAX

|0CC8C4| SEP #$20

|0CC8C6| INY
|0CC8C7| INY
|0CC8C8| INY

|0CC8C9| LDA.b ($08),Y
|0CC8CB| ORA.b $0D
|0CC8CD| STA.w $0A20,X

|0CC8D0| PLX

|0CC8D1| REP #$20

|0CC8D3| INY

|0CC8D4| INX ; +4
|0CC8D5| INX
|0CC8D6| INX
|0CC8D7| INX

|0CC8D8| DEC.b $06
|0CC8DA| BNE .next

;---------------------------------------------------------------------------------------------------

|0CC8DC| SEP #$30

|0CC8DE| PLX

|0CC8DF| RTS

;===================================================================================================

AnimateSceneSprite_MoveTriangle:
|0CC8E0| LDA.w $1E58,X
|0CC8E3| BEQ .no_x_speed

|0CC8E5| ASL A ; x16
|0CC8E6| ASL A
|0CC8E7| ASL A
|0CC8E8| ASL A

|0CC8E9| CLC
|0CC8EA| ADC.w $1E28,X
|0CC8ED| STA.w $1E28,X

|0CC8F0| LDA.w $1E58,X
|0CC8F3| PHP

|0CC8F4| LSR A ; /16
|0CC8F5| LSR A
|0CC8F6| LSR A
|0CC8F7| LSR A

|0CC8F8| LDY.b #$00

|0CC8FA| PLP
|0CC8FB| BPL .positive_x

|0CC8FD| ORA.b #$F0
|0CC8FF| DEY

.positive_x
|0CC900| ADC.w $1E30,X
|0CC903| STA.w $1E30,X

|0CC906| TYA
|0CC907| ADC.w $1E38,X
|0CC90A| STA.w $1E38,X

;---------------------------------------------------------------------------------------------------

.no_x_speed
|0CC90D| LDA.w $1E60,X
|0CC910| BEQ .exit

|0CC912| ASL A ; x16
|0CC913| ASL A
|0CC914| ASL A
|0CC915| ASL A

|0CC916| CLC
|0CC917| ADC.w $1E40,X
|0CC91A| STA.w $1E40,X

|0CC91D| LDA.w $1E60,X
|0CC920| PHP

|0CC921| LSR A ; /16
|0CC922| LSR A
|0CC923| LSR A
|0CC924| LSR A

|0CC925| LDY.b #$00

|0CC927| PLP
|0CC928| BPL .positive_y

|0CC92A| ORA.b #$F0
|0CC92C| DEY

.positive_y
|0CC92D| ADC.w $1E48,X
|0CC930| STA.w $1E48,X

|0CC933| TYA
|0CC934| ADC.w $1E50,X
|0CC937| STA.w $1E50,X

.exit
|0CC93A| RTS

;===================================================================================================

AnimateSceneSprite_TerminateTriangle:
|0CC93B| LDA.w $1E02
|0CC93E| BEQ .exit

|0CC940| PLA
|0CC941| PLA

.exit
|0CC942| RTS

;===================================================================================================

TriforceRoom_PrepGFXSlotForPoly:
|0CC943| LDA.b #$08
|0CC945| STA.w $0AA4

|0CC948| JSL LoadCommonSprites_long
|0CC94C| JSR TriforceInitializePolyhedralModule

|0CC94F| LDA.b #$01
|0CC951| STA.w $1E10
|0CC954| STA.w $1E11
|0CC957| STA.w $1E12

|0CC95A| LDA.b #$04
|0CC95C| STA.w $1E18

|0CC95F| LDA.b #$05
|0CC961| STA.w $1E19

|0CC964| LDA.b #$06
|0CC966| STA.w $1E1A

|0CC969| LDA.b #$0F
|0CC96B| STA.b $13

|0CC96D| INC.b $11

|0CC96F| RTL

;===================================================================================================

Credits_InitializePolyhedral:
|0CC970| LDA.b #$08
|0CC972| STA.w $0AA4

|0CC975| JSL LoadCommonSprites_long
|0CC979| JSR TriforceInitializePolyhedralModule

|0CC97C| STZ.w $1F02

|0CC97F| LDA.b #$01
|0CC981| STA.w $1E10
|0CC984| STA.w $1E11
|0CC987| STA.w $1E12

|0CC98A| LDA.b #$07
|0CC98C| STA.w $1E18

|0CC98F| LDA.b #$07
|0CC991| STA.w $1E19

|0CC994| LDA.b #$07
|0CC996| STA.w $1E1A

|0CC999| LDA.b #$0F
|0CC99B| STA.b $13

|0CC99D| INC.b $11

|0CC99F| RTL

;===================================================================================================

AdvancePolyhedral:
|0CC9A0| PHB
|0CC9A1| PHK
|0CC9A2| PLB

|0CC9A3| JSR .do_advance
|0CC9A6| JSR Scene_AnimateEverySprite

|0CC9A9| PLB

|0CC9AA| RTL

;===================================================================================================

.do_advance
|0CC9AB| LDA.b #$01
|0CC9AD| STA.w $012A
|0CC9B0| STA.w $1E02

|0CC9B3| LDA.w $1F00
|0CC9B6| BNE .exit

|0CC9B8| JSR .run_sub

|0CC9BB| LDA.b #$01
|0CC9BD| STA.w $1F00

|0CC9C0| STZ.w $1E02

|0CC9C3| INC.w $1E0A

.exit
|0CC9C6| RTS

;---------------------------------------------------------------------------------------------------

.run_sub
|0CC9C7| LDA.w $1E00
|0CC9CA| JSL JumpTableLocal
|0CC9CE| dw IntroPolyhedral_StartUp
|0CC9D0| dw IntroPolyhedral_MoveGrowRotate
|0CC9D2| dw IntroPolyhedral_MoveRotate
|0CC9D4| dw IntroPolyhedral_LockIntoPlace
|0CC9D6| dw EXIT_0CCA90

;===================================================================================================

IntroPolyhedral_StartUp:
|0CC9D8| LDA.w $1F02
|0CC9DB| SEC
|0CC9DC| SBC.b #$02
|0CC9DE| STA.w $1F02

|0CC9E1| CMP.b #$02
|0CC9E3| BCS IntroPolyhedral_MoveGrowRotate

|0CC9E5| STZ.w $1F02

|0CC9E8| INC.w $1E00
|0CC9EB| INC.b $B0

;===================================================================================================

IntroPolyhedral_MoveGrowRotate:
|0CC9ED| LDA.b $B0
|0CC9EF| CMP.b #$0A
|0CC9F1| BCC .delay

|0CC9F3| INC.w $1E00

|0CC9F6| LDA.b #$05
|0CC9F8| STA.w $1E61

.delay
|0CC9FB| LDA.w $1F05
|0CC9FE| CLC
|0CC9FF| ADC.b #$02
|0CCA01| STA.w $1F05

|0CCA04| LDA.w $1F04
|0CCA07| CLC
|0CCA08| ADC.b #$01
|0CCA0A| STA.w $1F04

|0CCA0D| RTS

;===================================================================================================

IntroPolyhedral_MoveRotate:
|0CCA0E| LDA.b #$C0
|0CCA10| STA.w $1E0C

|0CCA13| LDA.b #$01
|0CCA15| STA.w $1E0D

|0CCA18| LDA.w $1F02
|0CCA1B| CMP.b #$80
|0CCA1D| BCS .negative

|0CCA1F| ADC.b #$01
|0CCA21| STA.w $1F02

|0CCA24| BRA .just_spin

;---------------------------------------------------------------------------------------------------

.negative
|0CCA26| LDA.w $1F05
|0CCA29| SEC
|0CCA2A| SBC.b #$0A
|0CCA2C| AND.b #$7F

|0CCA2E| CMP.b #$5C
|0CCA30| BCC .just_spin

|0CCA32| LDA.w $1F04
|0CCA35| SEC
|0CCA36| SBC.b #$0B

|0CCA38| CMP.b #$DC
|0CCA3A| BCC .just_spin

;---------------------------------------------------------------------------------------------------

|0CCA3C| STZ.w $1F04
|0CCA3F| STZ.w $1F05

|0CCA42| INC.b $B0
|0CCA44| INC.w $1E00

|0CCA47| LDA.b #$2C ; SFX2.2C
|0CCA49| STA.w $012E

|0CCA4C| LDA.b #$FF ; RGB: #F8F8F8
|0CCA4E| STA.l $7EC6AE

|0CCA52| LDA.b #$7F
|0CCA54| STA.l $7EC6AF

|0CCA58| INC.b $15

|0CCA5A| LDA.b #$06
|0CCA5C| STA.w $1E01

|0CCA5F| RTS

;---------------------------------------------------------------------------------------------------

.just_spin
|0CCA60| LDA.w $1F05
|0CCA63| CLC
|0CCA64| ADC.b #$05
|0CCA66| STA.w $1F05

|0CCA69| LDA.w $1F04
|0CCA6C| CLC
|0CCA6D| ADC.b #$03
|0CCA6F| STA.w $1F04

|0CCA72| RTS

;===================================================================================================

IntroPolyhedral_LockIntoPlace:
|0CCA73| DEC.w $1E01

|0CCA76| LDA.w $1E01
|0CCA79| BNE EXIT_0CCA90

|0CCA7B| LDA.l Palettes_Triforce+14
|0CCA7F| STA.l $7EC6AE

|0CCA83| LDA.l Palettes_Triforce+15
|0CCA87| STA.l $7EC6AF

|0CCA8B| INC.b $15
|0CCA8D| INC.w $1E00

;---------------------------------------------------------------------------------------------------

#EXIT_0CCA90:
|0CCA90| RTS

;===================================================================================================

Credits_AnimateTheTriangles:
|0CCA91| PHB
|0CCA92| PHK
|0CCA93| PLB

|0CCA94| INC.w $1E0A

|0CCA97| JSR CreditsTriangle_HandleRotation
|0CCA9A| JSR Scene_AnimateEverySprite

|0CCA9D| PLB

|0CCA9E| RTL

;===================================================================================================

CreditsTriangle_HandleRotation:
|0CCA9F| LDA.b #$01
|0CCAA1| STA.w $012A

|0CCAA4| LDA.w $1F00
|0CCAA7| BNE .exit

|0CCAA9| JSR CreditsTriangle_ApplyRotation

|0CCAAC| LDA.b #$01
|0CCAAE| STA.w $1F00

.exit
|0CCAB1| RTS

;===================================================================================================

CreditsTriangle_ApplyRotation:
|0CCAB2| LDA.w $1F05
|0CCAB5| CLC
|0CCAB6| ADC.b #$03
|0CCAB8| STA.w $1F05

|0CCABB| LDA.w $1F04
|0CCABE| CLC
|0CCABF| ADC.b #$01
|0CCAC1| STA.w $1F04

|0CCAC4| RTS

;===================================================================================================

pool InitializeSceneSprite_TriforceRoomTriangle

.position_x
|0CCAC5| dw $004E
|0CCAC7| dw $005F
|0CCAC9| dw $0072

.position_y
|0CCACB| dw $009C
|0CCACD| dw $009C
|0CCACF| dw $009C

.speed_x
|0CCAD1| db $FE
|0CCAD2| db $00
|0CCAD3| db $02

.speed_y
|0CCAD4| db $04
|0CCAD5| db $FC
|0CCAD6| db $04

endpool

;---------------------------------------------------------------------------------------------------

InitializeSceneSprite_TriforceRoomTriangle:
|0CCAD7| TXA
|0CCAD8| ASL A
|0CCAD9| TAY

|0CCADA| LDA.w .position_x+0,Y
|0CCADD| STA.w $1E30,X

|0CCAE0| LDA.w .position_x+1,Y
|0CCAE3| STA.w $1E38,X

|0CCAE6| LDA.w .position_y+0,Y
|0CCAE9| STA.w $1E48,X

|0CCAEC| LDA.w .position_y+1,Y
|0CCAEF| STA.w $1E50,X

|0CCAF2| LDA.w .speed_x,X
|0CCAF5| STA.w $1E58,X

|0CCAF8| LDA.w .speed_y,X
|0CCAFB| STA.w $1E60,X

|0CCAFE| INC.w $1E10,X

|0CCB01| RTS

;===================================================================================================

AnimateSceneSprite_TriforceRoomTriangle:
|0CCB02| JSR AnimateSceneSprite_DrawTriangle
|0CCB05| JSR AnimateSceneSprite_TerminateTriangle
|0CCB08| JSR AnimateSceneSprite_MoveTriangle

|0CCB0B| LDA.w $1E00
|0CCB0E| JSL JumpTableLocal
|0CCB12| dw AnimateTriforceRoomTriangle_Expand
|0CCB14| dw AnimateTriforceRoomTriangle_RotateInPlace
|0CCB16| dw AnimateTriforceRoomTriangle_Contract
|0CCB18| dw AnimateTriforceRoomTriangle_Stopped
|0CCB1A| dw AnimateTriforceRoomTriangle_Stopped

;===================================================================================================

pool AnimateTriforceRoomTriangle_Expand

.speed_x
|0CCB1C| db -1
|0CCB1D| db  0
|0CCB1E| db  1

.speed_y
|0CCB1F| db -1
|0CCB20| db -1
|0CCB21| db -1

endpool

;---------------------------------------------------------------------------------------------------

AnimateTriforceRoomTriangle_Expand:
|0CCB22| LDA.w $1E0A
|0CCB25| AND.b #$07
|0CCB27| BNE .no_x_speed

|0CCB29| LDA.w .speed_x,X
|0CCB2C| CLC
|0CCB2D| ADC.w $1E58,X
|0CCB30| STA.w $1E58,X

.no_x_speed
|0CCB33| LDA.w $1E0A
|0CCB36| AND.b #$03
|0CCB38| BNE .exit

|0CCB3A| LDA.w .speed_y,X
|0CCB3D| CLC
|0CCB3E| ADC.w $1E60,X
|0CCB41| STA.w $1E60,X

.exit
|0CCB44| RTS

;===================================================================================================

AnimateTriforceRoomTriangle_RotateInPlace:
|0CCB45| STZ.w $1E58,X
|0CCB48| STZ.w $1E60,X

|0CCB4B| RTS

;===================================================================================================

pool AnimateTriforceRoomTriangle_Contract AnimateTriforceRoomTriangle_HandleContracting

.speed_negative
|0CCB4C| db $FF
|0CCB4D| db $FF
|0CCB4E| db $FF

.speed_positive
|0CCB4F| db $01
|0CCB50| db $01
|0CCB51| db $01

.limit_a
|0CCB52| db $EF

.limit_b
|0CCB53| db $11

.target_x
|0CCB54| db $59
|0CCB55| db $5F
|0CCB56| db $67

.target_y
|0CCB57| db $74
|0CCB58| db $68
|0CCB59| db $74

endpool

;---------------------------------------------------------------------------------------------------

AnimateTriforceRoomTriangle_Contract:
|0CCB5A| LDA.w $1E0A
|0CCB5D| AND.b #$03
|0CCB5F| BNE .dont_contract

|0CCB61| JSR AnimateTriforceRoomTriangle_HandleContracting

.dont_contract
|0CCB64| LDA.w .target_x,X
|0CCB67| CMP.w $1E30,X
|0CCB6A| BNE .check_y

|0CCB6C| STZ.w $1E58,X

.check_y
|0CCB6F| LDA.w .target_y,X
|0CCB72| CMP.w $1E48,X
|0CCB75| BNE .exit

|0CCB77| STZ.w $1E60,X

.exit
|0CCB7A| RTS

;===================================================================================================

pool AnimateTriforceRoomTriangle_Stopped

.position_y
|0CCB7B| db $72
|0CCB7C| db $66
|0CCB7D| db $72

endpool

;---------------------------------------------------------------------------------------------------

AnimateTriforceRoomTriangle_Stopped:
|0CCB7E| LDA.w $1E0C
|0CCB81| ORA.w $1E0D
|0CCB84| BNE .no_adjust

|0CCB86| LDA.w .position_y,X
|0CCB89| STA.w $1E48,X

|0CCB8C| RTS

;---------------------------------------------------------------------------------------------------

.no_adjust
|0CCB8D| LDA.w $1E0C
|0CCB90| SEC
|0CCB91| SBC.b #$01
|0CCB93| STA.w $1E0C

|0CCB96| LDA.w $1E0D
|0CCB99| SBC.b #$00
|0CCB9B| STA.w $1E0D

|0CCB9E| RTS

;===================================================================================================

AnimateTriforceRoomTriangle_HandleContracting:
|0CCB9F| LDA.w .target_x,X
|0CCBA2| CMP.w $1E30,X
|0CCBA5| BCC .below_x

|0CCBA7| LDA.w .speed_positive,X
|0CCBAA| BRA .continue_x

.below_x
|0CCBAC| LDA.w .speed_negative,X

.continue_x
|0CCBAF| CLC
|0CCBB0| ADC.w $1E58,X
|0CCBB3| STA.w $1E58,X

|0CCBB6| CMP.w .limit_a
|0CCBB9| BNE .unequal_x

|0CCBBB| LDA.w .limit_a
|0CCBBE| INC A

|0CCBBF| BRA .set_x

.unequal_x
|0CCBC1| CMP.w .limit_b
|0CCBC4| BNE .done_x

|0CCBC6| LDA.w .limit_b
|0CCBC9| DEC A

.set_x
|0CCBCA| STA.w $1E58,X

;---------------------------------------------------------------------------------------------------

.done_x
|0CCBCD| LDA.w .target_y,X
|0CCBD0| CMP.w $1E48,X
|0CCBD3| BCC .below_y

|0CCBD5| LDA.w .speed_positive,X
|0CCBD8| BRA .continue_y

.below_y
|0CCBDA| LDA.w .speed_negative,X

.continue_y
|0CCBDD| CLC
|0CCBDE| ADC.w $1E60,X
|0CCBE1| STA.w $1E60,X

|0CCBE4| CMP.w .limit_a
|0CCBE7| BNE .unequal_y

|0CCBE9| LDA.w .limit_a
|0CCBEC| INC A
|0CCBED| BRA .set_y

.unequal_y
|0CCBEF| CMP.w .limit_b
|0CCBF2| BNE .exit

|0CCBF4| LDA.w .limit_b
|0CCBF7| DEC A

.set_y
|0CCBF8| STA.w $1E60,X

.exit
|0CCBFB| RTS

;===================================================================================================

pool InitializeSceneSprite_CreditsTriangle

.position_x
|0CCBFC| dw $0029
|0CCBFE| dw $005F
|0CCC00| dw $0097

.position_y
|0CCC02| dw $0070
|0CCC04| dw $0020
|0CCC06| dw $0070

endpool

;---------------------------------------------------------------------------------------------------

InitializeSceneSprite_CreditsTriangle:
|0CCC08| TXA
|0CCC09| ASL A
|0CCC0A| TAY

|0CCC0B| LDA.w .position_x+0,Y
|0CCC0E| STA.w $1E30,X

|0CCC11| LDA.w .position_x+1,Y
|0CCC14| STA.w $1E38,X

|0CCC17| LDA.w .position_y+0,Y
|0CCC1A| STA.w $1E48,X

|0CCC1D| LDA.w .position_y+1,Y
|0CCC20| STA.w $1E50,X

|0CCC23| INC.w $1E10,X

|0CCC26| RTS

;===================================================================================================

pool AnimateSceneSprite_CreditsTriangle

.speed_x
|0CCC27| db -1
|0CCC28| db  0
|0CCC29| db  1

.speed_y
|0CCC2A| db  1
|0CCC2B| db -1
|0CCC2C| db  1

endpool

;---------------------------------------------------------------------------------------------------

AnimateSceneSprite_CreditsTriangle:
|0CCC2D| JSR LoadTriforceSpritePalette
|0CCC30| JSR AnimateSceneSprite_DrawTriangle
|0CCC33| JSR AnimateSceneSprite_MoveTriangle

|0CCC36| LDA.b $11
|0CCC38| CMP.b #$24
|0CCC3A| BNE .reset

|0CCC3C| LDA.w $1E20,X
|0CCC3F| CMP.b #$50
|0CCC41| BEQ .exit

|0CCC43| INC.w $1E20,X

|0CCC46| LDA.w .speed_x,X
|0CCC49| CLC
|0CCC4A| ADC.w $1E58,X
|0CCC4D| STA.w $1E58,X

|0CCC50| LDA.w .speed_y,X
|0CCC53| CLC
|0CCC54| ADC.w $1E60,X
|0CCC57| STA.w $1E60,X

.exit
|0CCC5A| RTS

;---------------------------------------------------------------------------------------------------

.reset
|0CCC5B| STZ.w $1E20,X

|0CCC5E| RTS

;===================================================================================================

UNREACHABLE_0CCC5F:
|0CCC5F| dw $0000
|0CCC61| dw $0064
|0CCC63| dw $00C8
|0CCC65| dw $FF8F

;===================================================================================================

FileSelect_FairyY:
|0CCC67| db $4A ; File 1
|0CCC68| db $6A ; File 2
|0CCC69| db $8A ; File 3
|0CCC6A| db $A7 ; Copy
|0CCC6B| db $C7 ; KILL

;---------------------------------------------------------------------------------------------------

Module01_FileSelect:
|0CCC6C| STZ.b $E4
|0CCC6E| STZ.b $E5
|0CCC70| STZ.b $EA
|0CCC72| STZ.b $EB

|0CCC74| LDA.b $11
|0CCC76| JSL JumpTableLong
|0CCC7A| dl FileSelect_InitializeGFX
|0CCC7D| dl FileSelect_ReInitSaveFlagsAndGraphics
|0CCC80| dl FileSelect_TriggerStripesAndAdvance
|0CCC83| dl FileSelect_TriggerNameStripesAndAdvance
|0CCC86| dl FileSelect_Main

;===================================================================================================

FileSelect_InitializeGFX:
|0CCC89| JSL EnableForceBlank

|0CCC8D| STZ.w $012A
|0CCC90| STZ.w $1F0C

|0CCC93| LDA.b #$0B ; SONG 0B
|0CCC95| STA.w $012C

|0CCC98| INC.b $11

|0CCC9A| LDA.b #$02
|0CCC9C| STA.w $0AA9

|0CCC9F| STZ.w $0AB6

|0CCCA2| JSL PaletteLoad_UnderworldSet
|0CCCA6| JSL PaletteLoad_OWBG3

|0CCCAA| LDA.b #$01
|0CCCAC| STA.w $0AB2

|0CCCAF| JSL PaletteLoad_HUD

|0CCCB3| STZ.w $0202

|0CCCB6| LDA.b #$01
|0CCCB8| STA.w $0AA4

|0CCCBB| LDA.b #$23
|0CCCBD| STA.w $0AA1

|0CCCC0| JSL LoadDefaultGraphics
|0CCCC4| JSL InitializeTilesets
|0CCCC8| JSL LoadFileSelectGraphics

|0CCCCC| REP #$30

|0CCCCE| STZ.b $00

;---------------------------------------------------------------------------------------------------

.next_file_check
|0CCCD0| LDX.b $00

|0CCCD2| LDA.l SaveFileCopyOffsets,X
|0CCCD6| TAX

|0CCCD7| PHX

|0CCCD8| LDY.w #$0000
|0CCCDB| TYA

.calc_checksum_main
|0CCCDC| CLC
|0CCCDD| ADC.l $700000,X

|0CCCE1| INX
|0CCCE2| INX

|0CCCE3| INY
|0CCCE4| CPY.w #$0280
|0CCCE7| BNE .calc_checksum_main

|0CCCE9| PLX

|0CCCEA| CMP.w #$5A5A
|0CCCED| BEQ .checksum_good

;---------------------------------------------------------------------------------------------------

|0CCCEF| PHX

|0CCCF0| LDY.w #$0000
|0CCCF3| TYA

.calc_checksum_backup
|0CCCF4| CLC
|0CCCF5| ADC.l $700F00,X

|0CCCF9| INX
|0CCCFA| INX

|0CCCFB| INY
|0CCCFC| CPY.w #$0280
|0CCCFF| BNE .calc_checksum_backup

|0CCD01| PLX

|0CCD02| CMP.w #$5A5A
|0CCD05| BNE .delete_file

;---------------------------------------------------------------------------------------------------

|0CCD07| LDY.w #$0000

.copy_from_backup
|0CCD0A| LDA.l $700F00,X
|0CCD0E| STA.l $700000,X

|0CCD12| LDA.l $701000,X
|0CCD16| STA.l $700100,X

|0CCD1A| LDA.l $701100,X
|0CCD1E| STA.l $700200,X

|0CCD22| LDA.l $701200,X
|0CCD26| STA.l $700300,X

|0CCD2A| LDA.l $701300,X
|0CCD2E| STA.l $700400,X

|0CCD32| INX
|0CCD33| INX

|0CCD34| INY
|0CCD35| CPY.w #$0080
|0CCD38| BNE .copy_from_backup

;---------------------------------------------------------------------------------------------------

.checksum_good
|0CCD3A| INC.b $00
|0CCD3C| INC.b $00

|0CCD3E| LDX.b $00
|0CCD40| CPX.w #$0006
|0CCD43| BNE .next_file_check

;---------------------------------------------------------------------------------------------------

|0CCD45| LDX.w #$00FE

.clear_next_sprite_prop
|0CCD48| STZ.w $0D00,X
|0CCD4B| STZ.w $0E00,X
|0CCD4E| STZ.w $0F00,X

|0CCD51| DEX
|0CCD52| DEX
|0CCD53| BPL .clear_next_sprite_prop

|0CCD55| SEP #$30

|0CCD57| JML DecompressEnemyDamageSubclasses

;---------------------------------------------------------------------------------------------------

.delete_file
|0CCD5B| LDY.w #$0000
|0CCD5E| TYA

.delete_next
|0CCD5F| STA.l $700F00,X
|0CCD63| STA.l $700000,X

|0CCD67| STA.l $701000,X
|0CCD6B| STA.l $700100,X

|0CCD6F| STA.l $701100,X
|0CCD73| STA.l $700200,X

|0CCD77| STA.l $701200,X
|0CCD7B| STA.l $700300,X

|0CCD7F| STA.l $701300,X
|0CCD83| STA.l $700400,X

|0CCD87| INX
|0CCD88| INX

|0CCD89| INY
|0CCD8A| CPY.w #$0080
|0CCD8D| BNE .delete_next

|0CCD8F| BRA .checksum_good

;===================================================================================================

FileSelect_ReInitSaveFlagsAndGraphics:
|0CCD91| LDX.b #$05

.clear_next
|0CCD93| STZ.b $BF,X

|0CCD95| DEX
|0CCD96| BPL .clear_next

;===================================================================================================

ReinitializeFileSelectGraphics:
|0CCD98| LDA.b #$80
|0CCD9A| STA.w $0710

|0CCD9D| JSL EnableForceBlank
|0CCDA1| JSL EraseTilemaps_bg3
|0CCDA5| JSL PaletteLoadForFileSelect

|0CCDA9| INC.b $15
|0CCDAB| INC.b $11

|0CCDAD| RTL

;===================================================================================================

FileSelect_TriggerStripesAndAdvance:
|0CCDAE| LDA.w $0B9D
|0CCDB1| STA.b $C8

.advance_submodule
|0CCDB3| INC.b $11

|0CCDB5| LDA.b #$06
|0CCDB7| STA.b $14

|0CCDB9| RTL

;===================================================================================================

#FileSelect_TriggerNameStripesAndAdvance:
|0CCDBA| JSR FileSelect_SetUpNamesStripes

|0CCDBD| LDA.b #$0F
|0CCDBF| STA.b $13

|0CCDC1| STZ.w $0710

|0CCDC4| BRA .advance_submodule

;===================================================================================================

FileSelect_Main:
|0CCDC6| PHB
|0CCDC7| PHK
|0CCDC8| PLB

|0CCDC9| JSL FileSelect_HandleInput

|0CCDCD| JMP.w FileSelect_TriggerTheStripes

;===================================================================================================

FileSelect_SetUpNamesStripes:
|0CCDD0| PHB
|0CCDD1| PHK
|0CCDD2| PLB

|0CCDD3| REP #$10

|0CCDD5| LDX.w #$012D

.next
|0CCDD8| LDA.w FileSelectNamesTilemap-1,X
|0CCDDB| STA.w $1001,X

|0CCDDE| DEX
|0CCDDF| BNE .next

;---------------------------------------------------------------------------------------------------

|0CCDE1| SEP #$10

|0CCDE3| PLB

|0CCDE4| RTS

;===================================================================================================

FileSelect_HandleInput:
|0CCDE5| LDA.b $C8
|0CCDE7| CMP.b #$03
|0CCDE9| BCS .not_on_a_file

|0CCDEB| STA.w $0B9D

.not_on_a_file
|0CCDEE| REP #$30

|0CCDF0| LDX.w #$0000

;---------------------------------------------------------------------------------------------------

.check_next_file
|0CCDF3| STX.b $00

|0CCDF5| LDA.l SaveFileCopyOffsets,X
|0CCDF9| TAX

|0CCDFA| LDA.l $7003E1,X
|0CCDFE| CMP.w #$55AA
|0CCE01| BNE .no_name

|0CCE03| PHX

|0CCE04| LDX.b $00

|0CCE06| LDA.w #$0001
|0CCE09| STA.b $BF,X

|0CCE0B| PLX

|0CCE0C| JSR FileSelect_CopyNameToStripes

.no_name
|0CCE0F| LDX.b $00
|0CCE11| INX
|0CCE12| INX
|0CCE13| CPX.w #$0006
|0CCE16| BCC .check_next_file

;---------------------------------------------------------------------------------------------------

|0CCE18| SEP #$30

|0CCE1A| LDX.b $C8

|0CCE1C| LDA.b #$14
|0CCE1E| STA.b $00

|0CCE20| LDA.w FileSelect_FairyY,X
|0CCE23| STA.b $01

|0CCE25| JSR FileSelect_DrawFairy

|0CCE28| LDY.b #$02

; check for AX
|0CCE2A| LDA.b $F6
|0CCE2C| AND.b #$C0

; check for BYSsud
|0CCE2E| ORA.b $F4
|0CCE30| AND.b #$FC
|0CCE32| BEQ .exit

|0CCE34| AND.b #$2C
|0CCE36| BEQ .didnt_change_selection

|0CCE38| AND.b #$08
|0CCE3A| BEQ .pressed_down

;---------------------------------------------------------------------------------------------------

|0CCE3C| LDA.b #$20 ; SFX3.20
|0CCE3E| STA.w $012F

|0CCE41| DEC.b $C8
|0CCE43| BPL .proceed_to_exit

|0CCE45| LDA.b #$04
|0CCE47| STA.b $C8

|0CCE49| BRA .proceed_to_exit

;---------------------------------------------------------------------------------------------------

.pressed_down
|0CCE4B| LDA.b #$20 ; SFX3.20
|0CCE4D| STA.w $012F

|0CCE50| INC.b $C8

|0CCE52| LDA.b $C8
|0CCE54| CMP.b #$05
|0CCE56| BNE .proceed_to_exit

|0CCE58| STZ.b $C8

.proceed_to_exit
|0CCE5A| BRA .exit

;---------------------------------------------------------------------------------------------------

.didnt_change_selection
|0CCE5C| LDA.b #$2C ; SFX2.2C
|0CCE5E| STA.w $012E

|0CCE61| LDA.b $C8
|0CCE63| CMP.b #$03
|0CCE65| BEQ .copy_file
|0CCE67| BCS .kill_file

|0CCE69| LDA.b $C8
|0CCE6B| ASL A
|0CCE6C| TAX

|0CCE6D| LDA.b $BF,X
|0CCE6F| BEQ .no_file_there

|0CCE71| LDA.b #$F1 ; SONG F1 - fade
|0CCE73| STA.w $012C

|0CCE76| STZ.b $C9

|0CCE78| REP #$20

|0CCE7A| LDA.l SaveFileCopyOffsets,X
|0CCE7E| STA.b $00

|0CCE80| LDA.b $C8
|0CCE82| ASL A
|0CCE83| INC A
|0CCE84| INC A
|0CCE85| STA.l $701FFE

|0CCE89| SEP #$20

|0CCE8B| BRL CopySaveToWRAM

;---------------------------------------------------------------------------------------------------

.no_file_there
|0CCE8E| STZ.b $C9

|0CCE90| LDY.b #$04
|0CCE92| BRA .set_module

;---------------------------------------------------------------------------------------------------

.copy_file
|0CCE94| LDY.b #$02
|0CCE96| BRA .check_for_some_file

.kill_file
|0CCE98| LDY.b #$03

.check_for_some_file
|0CCE9A| LDA.b $BF
|0CCE9C| ORA.b $C1
|0CCE9E| ORA.b $C3
|0CCEA0| BNE .dont_error_beep

|0CCEA2| LDA.b #$3C ; SFX2.3C
|0CCEA4| STA.w $012E

|0CCEA7| BRA .exit

.dont_error_beep
|0CCEA9| STZ.b $C8

;---------------------------------------------------------------------------------------------------

.set_module
|0CCEAB| STY.b $10

|0CCEAD| STZ.b $11
|0CCEAF| STZ.b $B0

.exit
|0CCEB1| RTL

;===================================================================================================

CopySaveToWRAM:
|0CCEB2| LDX.b #$0F

|0CCEB4| LDA.b #$00
|0CCEB6| STA.l $001AC0,X
|0CCEBA| STA.l $001AE0,X

|0CCEBE| LDA.b #$00
|0CCEC0| STA.l $001AB0,X
|0CCEC4| STA.l $001AD0,X
|0CCEC8| STA.l $001AF0,X

|0CCECC| PHB

|0CCECD| LDA.b #$7E
|0CCECF| PHA
|0CCED0| PLB

;---------------------------------------------------------------------------------------------------

|0CCED1| REP #$30

|0CCED3| LDY.w #$0000
|0CCED6| LDX.b $00

.copy_next
|0CCED8| LDA.l $700000,X
|0CCEDC| STA.w $7EF000,Y

|0CCEDF| LDA.l $700100,X
|0CCEE3| STA.w $7EF100,Y

|0CCEE6| LDA.l $700200,X
|0CCEEA| STA.w $7EF200,Y

|0CCEED| LDA.l $700300,X
|0CCEF1| STA.w $7EF300,Y

|0CCEF4| LDA.l $700400,X
|0CCEF8| STA.w $7EF400,Y

|0CCEFB| INX
|0CCEFC| INX

|0CCEFD| INY
|0CCEFE| INY
|0CCEFF| CPY.w #$0100
|0CCF02| BNE .copy_next

;---------------------------------------------------------------------------------------------------

|0CCF04| PLB

|0CCF05| LDA.w #$0007
|0CCF08| STA.l $7EC00D
|0CCF0C| STA.l $7EC013

|0CCF10| LDA.w #$0000
|0CCF13| STA.l $7EC00F
|0CCF17| STA.l $7EC015

|0CCF1B| LDA.w #$6040 ; VRAM $C080
|0CCF1E| STA.w $0219

|0CCF21| LDA.w #$4841
|0CCF24| STA.w $021D

|0CCF27| LDA.w #$007F
|0CCF2A| STA.w $021F

|0CCF2D| LDA.w #$FFFF
|0CCF30| STA.w $0221

;---------------------------------------------------------------------------------------------------

|0CCF33| SEP #$30

|0CCF35| LDA.b #$80
|0CCF37| STA.w $0204

|0CCF3A| LDA.b #$05
|0CCF3C| STA.b $10
|0CCF3E| STZ.b $11

|0CCF40| STZ.w $010E

|0CCF43| STZ.w $0710

|0CCF46| STZ.w $0AB2

|0CCF49| RTL

;===================================================================================================

Module02_CopyFile:
|0CCF4A| STZ.w $0B9D

|0CCF4D| LDA.b $11
|0CCF4F| JSL JumpTableLong
|0CCF53| dl ReinitializeFileSelectGraphics
|0CCF56| dl CopyFile_FindFileIndices
|0CCF59| dl CopyFile_ChooseSelection
|0CCF5C| dl CopyFile_ChooseTarget
|0CCF5F| dl CopyFile_ConfirmSelection

;===================================================================================================

CopyFile_FindFileIndices:
|0CCF62| LDA.b #$07

;===================================================================================================

KILLFile_FindFileIndices:
|0CCF64| STA.b $14

|0CCF66| INC.b $11

|0CCF68| LDA.b #$0F
|0CCF6A| STA.b $13

|0CCF6C| STZ.w $0710

|0CCF6F| LDX.b #$FE

.find_file
|0CCF71| INX
|0CCF72| INX

|0CCF73| LDA.b $BF,X
|0CCF75| BEQ .find_file

;---------------------------------------------------------------------------------------------------

|0CCF77| TXA
|0CCF78| LSR A
|0CCF79| STA.b $C8

|0CCF7B| RTL

;===================================================================================================

CopyFile_ChooseSelection:
|0CCF7C| PHB
|0CCF7D| PHK
|0CCF7E| PLB

|0CCF7F| JSR CopyFile_SelectionAndBlinker

|0CCF82| LDA.b $11
|0CCF84| CMP.b #$02
|0CCF86| BNE FileSelect_TriggerTheStripes

|0CCF88| LDA.b $1A
|0CCF8A| AND.b #$30
|0CCF8C| BNE FileSelect_TriggerTheStripes

|0CCF8E| JSR FilePicker_DeleteHeaderStripe

;===================================================================================================

FileSelect_TriggerTheStripes:
|0CCF91| LDA.b #$01
|0CCF93| STA.b $14

|0CCF95| PLB

|0CCF96| RTL

;===================================================================================================

CopyFile_ChooseTarget:
|0CCF97| PHB
|0CCF98| PHK
|0CCF99| PLB

|0CCF9A| JSR CopyFile_TargetSelectionAndBlink

|0CCF9D| LDA.b $11
|0CCF9F| CMP.b #$03
|0CCFA1| BNE .trigger_stripes

|0CCFA3| LDA.b $1A
|0CCFA5| AND.b #$30
|0CCFA7| BNE FileSelect_TriggerTheStripes

|0CCFA9| JSR FilePicker_DeleteHeaderStripe

.trigger_stripes
|0CCFAC| BRA FileSelect_TriggerTheStripes

;===================================================================================================

CopyFile_ConfirmSelection:
|0CCFAE| PHB
|0CCFAF| PHK
|0CCFB0| PLB

|0CCFB1| JSR CopyFile_HandleConfirmation

|0CCFB4| JMP.w FileSelect_TriggerTheStripes

;===================================================================================================

pool FilePicker_DeleteHeaderStripe

.offset
|0CCFB7| dw $0004, $0016

endpool

;---------------------------------------------------------------------------------------------------

FilePicker_DeleteHeaderStripe:
|0CCFBB| REP #$30

|0CCFBD| LDX.w #$0002

|0CCFC0| LDA.w #$0188

.next_stripe
|0CCFC3| LDY.w #$0007
|0CCFC6| STY.b $00

|0CCFC8| LDY.w .offset,X

.next_byte
|0CCFCB| STA.w $1002,Y

|0CCFCE| INY
|0CCFCF| INY

|0CCFD0| DEC.b $00
|0CCFD2| BNE .next_byte

|0CCFD4| DEX
|0CCFD5| DEX
|0CCFD6| BPL .next_stripe

|0CCFD8| SEP #$30

|0CCFDA| RTS

;===================================================================================================

CopyFile_FairyHeight:
|0CCFDB| db $47 ; File 1
|0CCFDC| db $67 ; File 2
|0CCFDD| db $87 ; File 3
|0CCFDE| db $C7 ; Exit

;===================================================================================================

CopyFile_CopyToMenuStripe:
|0CCFDF| dw $2561, $1040 ; VRAM $C24A | 18 bytes | Fixed horizontal
|0CCFE3| dw $0188

|0CCFE5| dw $4561, $1040 ; VRAM $C28A | 18 bytes | Fixed horizontal
|0CCFE9| dw $0188

|0CCFEB| dw $A561, $1040 ; VRAM $C34A | 18 bytes | Fixed horizontal
|0CCFEF| dw $0188

|0CCFF1| dw $C561, $1040 ; VRAM $C38A | 18 bytes | Fixed horizontal
|0CCFF5| dw $0188

|0CCFF7| dw $F110, $0300 ; VRAM $21E2 | 4 bytes | Horizontal
|0CCFFB| dw $4882, $0881

|0CCFFF| dw $FC10, $0300 ; VRAM $21F8 | 4 bytes | Horizontal
|0CD003| dw $0881, $0882

|0CD007| dw $1111, $0CC0 ; VRAM $2222 | 14 bytes | Fixed vertical
|0CD00B| dw $4883

|0CD00D| dw $1D11, $0CC0 ; VRAM $223A | 14 bytes | Fixed vertical
|0CD011| dw $0883

|0CD013| dw $F111, $0100 ; VRAM $23E2 | 2 bytes | Horizontal
|0CD017| dw $C882

|0CD019| dw $F211, $1440 ; VRAM $23E4 | 22 bytes | Fixed horizontal
|0CD01D| dw $8881

|0CD01F| dw $FD11, $0100 ; VRAM $23FA | 2 bytes | Horizontal
|0CD023| dw $8882

|0CD025| db $FF ; end of stripes data

;===================================================================================================

CopyFile_TargetStripeOffsetAdjuster:
|0CD026| db $00 ; File 1
|0CD027| db $0C ; File 2

;===================================================================================================

CopyFile_NameStripeBufferOffset:
|0CD028| dw $002C ; File 1
|0CD02A| dw $0058 ; File 2
|0CD02C| dw $0084 ; File 3

;===================================================================================================

CopyFile_SelectionAndBlinker:
|0CD02E| REP #$10

|0CD030| LDX.w #$00C0
|0CD033| STX.w $1000

.next_header_stripe
|0CD036| LDA.w CopyFile_HeaderStripe,X
|0CD039| STA.w $1002,X

|0CD03C| DEX
|0CD03D| BPL .next_header_stripe

;---------------------------------------------------------------------------------------------------

|0CD03F| REP #$20

|0CD041| LDX.w #$0000

.next_file_name
|0CD044| STX.b $00

|0CD046| LDA.b $BF,X
|0CD048| AND.w #$0001
|0CD04B| BEQ .skip_this_file

|0CD04D| LDA.l SaveFileCopyOffsets,X
|0CD051| TXY
|0CD052| TAX

|0CD053| LDA.w CopyFile_NameStripeBufferOffset,Y
|0CD056| TAY

|0CD057| LDA.w #$0004
|0CD05A| STA.b $02

.next_letter
|0CD05C| LDA.l $7003D9,X
|0CD060| CLC
|0CD061| ADC.w #$1C00
|0CD064| STA.w $1002,Y

|0CD067| CLC
|0CD068| ADC.w #$0010
|0CD06B| STA.w $1018,Y

|0CD06E| INX
|0CD06F| INX

|0CD070| INY ; +4
|0CD071| INY
|0CD072| INY
|0CD073| INY

|0CD074| DEC.b $02
|0CD076| BNE .next_letter

.skip_this_file
|0CD078| LDX.b $00
|0CD07A| INX
|0CD07B| INX
|0CD07C| CPX.w #$0006
|0CD07F| BCC .next_file_name

;---------------------------------------------------------------------------------------------------

|0CD081| SEP #$30

|0CD083| LDX.b $C8

|0CD085| LDA.b #$14
|0CD087| STA.b $00

|0CD089| LDA.w CopyFile_FairyHeight,X
|0CD08C| STA.b $01

|0CD08E| JSR FileSelect_DrawFairy

; check for AX
|0CD091| LDA.b $F6
|0CD093| AND.b #$C0

; check for BYSsud
|0CD095| ORA.b $F4
|0CD097| AND.b #$FC
|0CD099| BNE .made_input

|0CD09B| BRL .exit

.made_input
|0CD09E| AND.b #$2C
|0CD0A0| BEQ .made_selection

|0CD0A2| AND.b #$08
|0CD0A4| BEQ .didnt_press_up

|0CD0A6| LDX.b $C8
|0CD0A8| DEX
|0CD0A9| BMI .select_exit

;---------------------------------------------------------------------------------------------------

.prev_file_check
|0CD0AB| TXA
|0CD0AC| ASL A
|0CD0AD| TAY

|0CD0AE| LDA.w $00BF,Y
|0CD0B1| BNE .set_new_selection

|0CD0B3| DEX
|0CD0B4| BPL .prev_file_check

.select_exit
|0CD0B6| LDX.b #$03
|0CD0B8| BRA .set_new_selection

;---------------------------------------------------------------------------------------------------

.didnt_press_up
|0CD0BA| LDX.b $C8
|0CD0BC| INX
|0CD0BD| CPX.b #$03
|0CD0BF| BCS .went_too_far

.next_file_check
|0CD0C1| TXA
|0CD0C2| ASL A
|0CD0C3| TAY

|0CD0C4| LDA.w $00BF,Y
|0CD0C7| BNE .set_new_selection

|0CD0C9| INX
|0CD0CA| CPX.b #$03
|0CD0CC| BNE .next_file_check

|0CD0CE| BRA .set_new_selection

.went_too_far
|0CD0D0| CPX.b #$04
|0CD0D2| BNE .set_new_selection

|0CD0D4| LDX.b #$00
|0CD0D6| BRA .next_file_check

.set_new_selection
|0CD0D8| LDA.b #$20 ; SFX3.20
|0CD0DA| STA.w $012F

|0CD0DD| STX.b $C8
|0CD0DF| BRA .exit

;---------------------------------------------------------------------------------------------------

.made_selection
|0CD0E1| LDA.b #$2C ; SFX2.2C
|0CD0E3| STA.w $012E

|0CD0E6| LDA.b $C8
|0CD0E8| CMP.b #$03
|0CD0EA| BEQ ReturnToFileSelect

;---------------------------------------------------------------------------------------------------

|0CD0EC| ASL A
|0CD0ED| STA.b $CC
|0CD0EF| STZ.b $CD

|0CD0F1| LDX.b #$47

.next_target_stripe
|0CD0F3| LDA.w CopyFile_CopyToMenuStripe-1,X
|0CD0F6| STA.w $1025,X

|0CD0F9| DEX
|0CD0FA| BNE .next_target_stripe

;---------------------------------------------------------------------------------------------------

|0CD0FC| LDX.b $C8
|0CD0FE| CPX.b #$02
|0CD100| BEQ .selected_file_3

|0CD102| LDA.w CopyFile_TargetStripeOffsetAdjuster,X
|0CD105| TAX

|0CD106| LDA.b #$62
|0CD108| STA.w $1026,X
|0CD10B| STA.w $102C,X

|0CD10E| LDA.b #$25
|0CD110| STA.w $1027,X

|0CD113| CLC
|0CD114| ADC.b #$20
|0CD116| STA.w $102D,X

.selected_file_3
|0CD119| INC.b $11

|0CD11B| BRA .reset_cursor

;===================================================================================================

#ReturnToFileSelect:
|0CD11D| LDA.b #$01
|0CD11F| STA.b $10

|0CD121| LDA.b #$01
|0CD123| STA.b $11

|0CD125| STZ.b $B0

.reset_cursor
|0CD127| STZ.b $C8

.exit
|0CD129| RTS

;===================================================================================================

CopyFile_ConfirmationStripes:
|0CD12A| dw $3461, $1040 ; VRAM $C268 | 18 bytes | Fixed horizontal
|0CD12E| dw $0188

|0CD130| dw $5461, $1040 ; VRAM $C2A8 | 18 bytes | Fixed horizontal
|0CD134| dw $0188

|0CD136| dw $C562, $1100 ; VRAM $C58A | 18 bytes | Horizontal
|0CD13A| dw $1CAC, $0188, $1D23, $0188, $1D89, $0188, $1D68, $0188
|0CD14A| dw $1D64

|0CD14C| dw $E562, $1100 ; VRAM $C5CA | 18 bytes | Horizontal
|0CD150| dw $1CBC, $0188, $1D33, $0188, $1D99, $0188, $1D78, $0188
|0CD160| dw $1D74

|0CD162| db $FF ; end of stripes data

;===================================================================================================

CopyFile_TargetFairyX:
|0CD163| db $8C ; 1
|0CD164| db $8C ; 2
|0CD165| db $14 ; Exit

CopyFile_TargetFairyY:
|0CD166| db $47 ; 1
|0CD167| db $67 ; 2
|0CD168| db $C7 ; Exit

CopyFile_BufferOffset:
|0CD169| dw $0028
|0CD16B| dw $0054

CopyFile_TargetNumerals:
|0CD16D| dw $1D41 ; 1
|0CD16F| dw $1D42 ; 2
|0CD171| dw $1D43 ; 3

;---------------------------------------------------------------------------------------------------

CopyFile_TargetSelectionAndBlink:
|0CD173| LDA.b #$04
|0CD175| LDX.b #$01

.next_index_setup
|0CD177| CMP.b $CC
|0CD179| BEQ .dont_replace_index

|0CD17B| STA.b $CA,X

|0CD17D| DEX

.dont_replace_index
|0CD17E| DEC A
|0CD17F| DEC A
|0CD180| BPL .next_index_setup

;---------------------------------------------------------------------------------------------------

|0CD182| REP #$10

|0CD184| LDX.w #$007C
|0CD187| STX.b $0E

.next_header_stripe
|0CD189| LDA.w CopyFile_TargetHeaderStripes,X
|0CD18C| STA.w $1002,X

|0CD18F| DEX
|0CD190| BPL .next_header_stripe

;---------------------------------------------------------------------------------------------------

|0CD192| REP #$20

|0CD194| LDX.w #$0000
|0CD197| STX.b $04

.next_filename_stripe
|0CD199| STX.b $00

|0CD19B| CPX.b $CC
|0CD19D| BEQ .skip_this_file

|0CD19F| LDY.b $04

|0CD1A1| LDA.w CopyFile_BufferOffset,Y
|0CD1A4| TAY

|0CD1A5| INC.b $04
|0CD1A7| INC.b $04

|0CD1A9| LDA.w CopyFile_TargetNumerals,X
|0CD1AC| STA.w $1002,Y

|0CD1AF| CLC
|0CD1B0| ADC.w #$0010
|0CD1B3| STA.w $1018,Y

|0CD1B6| LDA.b $BF,X
|0CD1B8| BEQ .skip_this_file

|0CD1BA| LDA.w #$0004
|0CD1BD| STA.b $02

|0CD1BF| LDA.l SaveFileCopyOffsets,X
|0CD1C3| TAX

.next_letter
|0CD1C4| LDA.l $7003D9,X
|0CD1C8| CLC
|0CD1C9| ADC.w #$1C00
|0CD1CC| STA.w $1006,Y

|0CD1CF| CLC
|0CD1D0| ADC.w #$0010
|0CD1D3| STA.w $101C,Y

|0CD1D6| INX
|0CD1D7| INX

|0CD1D8| INY ; +4
|0CD1D9| INY
|0CD1DA| INY
|0CD1DB| INY

|0CD1DC| DEC.b $02
|0CD1DE| BNE .next_letter

.skip_this_file
|0CD1E0| LDX.b $00
|0CD1E2| INX
|0CD1E3| INX
|0CD1E4| CPX.w #$0006
|0CD1E7| BCC .next_filename_stripe

;---------------------------------------------------------------------------------------------------

|0CD1E9| LDX.b $0E
|0CD1EB| STX.w $1000

|0CD1EE| SEP #$30

|0CD1F0| LDX.b $C8

|0CD1F2| LDA.w CopyFile_TargetFairyX,X
|0CD1F5| STA.b $00

|0CD1F7| LDA.w CopyFile_TargetFairyY,X
|0CD1FA| STA.b $01

|0CD1FC| JSR FileSelect_DrawFairy

; check for AX
|0CD1FF| LDA.b $F6
|0CD201| AND.b #$C0

; check for BYSsud
|0CD203| ORA.b $F4
|0CD205| AND.b #$FC
|0CD207| BEQ .exit

|0CD209| AND.b #$2C
|0CD20B| BEQ .made_selection

|0CD20D| AND.b #$08
|0CD20F| BEQ .didnt_press_up

|0CD211| LDX.b $C8
|0CD213| DEX
|0CD214| BPL .select_exit

|0CD216| LDX.b #$02
|0CD218| BRA .select_exit

.didnt_press_up
|0CD21A| LDX.b $C8
|0CD21C| INX
|0CD21D| CPX.b #$03
|0CD21F| BCC .select_exit

|0CD221| LDX.b #$00

;---------------------------------------------------------------------------------------------------

.select_exit
|0CD223| LDA.b #$20 ; SFX3.20
|0CD225| STA.w $012F

|0CD228| STX.b $C8
|0CD22A| BRA .exit

;---------------------------------------------------------------------------------------------------

.made_selection
|0CD22C| LDA.b #$2C ; SFX2.2C
|0CD22E| STA.w $012E

|0CD231| LDX.b $C8
|0CD233| CPX.b #$02
|0CD235| BEQ .selecting_exit

|0CD237| LDA.b $CA,X
|0CD239| STA.b $CA
|0CD23B| STZ.b $CB

|0CD23D| LDX.b #$38

.next_confirm_stripe
|0CD23F| LDA.w CopyFile_ConfirmationStripes,X
|0CD242| STA.w $1026,X

|0CD245| DEX
|0CD246| BPL .next_confirm_stripe

; Which file name is erased on tilemap
|0CD248| LDA.b $C8
|0CD24A| BNE .dont_reposition_deleted_name

|0CD24C| LDA.b #$B4
|0CD24E| STA.w $1027

|0CD251| CLC
|0CD252| ADC.b #$20 ; effectively $D4
|0CD254| STA.w $102D

.dont_reposition_deleted_name
|0CD257| INC.b $11
|0CD259| BRA .reset_selection

;---------------------------------------------------------------------------------------------------

.selecting_exit
|0CD25B| JSR ReturnToFileSelect

.reset_selection
|0CD25E| STZ.b $C8

.exit
|0CD260| RTS

;===================================================================================================

pool CopyFile_HandleConfirmation

.fairy_y
|0CD261| db $AE ; Yes
|0CD262| db $C7 ; No

endpool

;---------------------------------------------------------------------------------------------------

CopyFile_HandleConfirmation:
|0CD263| LDX.b $C8

|0CD265| LDA.b #$14
|0CD267| STA.b $00

|0CD269| LDA.w .fairy_y,X
|0CD26C| STA.b $01

|0CD26E| JSR FileSelect_DrawFairy

; check for AX
|0CD271| LDA.b $F6
|0CD273| AND.b #$C0

; check for BYSsud
|0CD275| ORA.b $F4
|0CD277| AND.b #$FC
|0CD279| BEQ .exit

|0CD27B| AND.b #$2C
|0CD27D| BEQ .made_selection

|0CD27F| AND.b #$24
|0CD281| BEQ .select_or_down

|0CD283| LDA.b #$20 ; SFX3.20
|0CD285| STA.w $012F

|0CD288| INC.b $C8

|0CD28A| LDA.b $C8
|0CD28C| CMP.b #$02
|0CD28E| BCC .exit

|0CD290| STZ.b $C8
|0CD292| BRA .exit

;---------------------------------------------------------------------------------------------------

.select_or_down
|0CD294| LDA.b #$20 ; SFX3.20
|0CD296| STA.w $012F

|0CD299| DEC.b $C8
|0CD29B| BPL .exit

|0CD29D| LDA.b #$01
|0CD29F| STA.b $C8
|0CD2A1| BRA .exit

;---------------------------------------------------------------------------------------------------

.made_selection
|0CD2A3| LDA.b #$2C ; SFX2.2C
|0CD2A5| STA.w $012E

|0CD2A8| LDA.b $C8
|0CD2AA| BNE .decided_against_it

|0CD2AC| REP #$30

|0CD2AE| LDX.b $CA

|0CD2B0| LDA.l SaveFileCopyOffsets,X
|0CD2B4| TAY

|0CD2B5| LDX.b $CC

|0CD2B7| LDA.l SaveFileCopyOffsets,X
|0CD2BB| TAX

|0CD2BC| JSR CopyFile_CopyData

|0CD2BF| LDX.b $CA

|0CD2C1| LDA.w #$0001
|0CD2C4| STA.b $BF,X

|0CD2C6| SEP #$30

;---------------------------------------------------------------------------------------------------

.decided_against_it
|0CD2C8| JSR ReturnToFileSelect

|0CD2CB| STZ.b $C8

.exit
|0CD2CD| RTS

;===================================================================================================

CopyFile_CopyData:
|0CD2CE| SEP #$20

|0CD2D0| PHB

|0CD2D1| LDA.b #$70
|0CD2D3| PHA
|0CD2D4| PLB

|0CD2D5| REP #$20

|0CD2D7| LDA.w #$0080
|0CD2DA| STA.b $00

.next
|0CD2DC| LDA.w $700000,X
|0CD2DF| STA.w $700000,Y

|0CD2E2| LDA.w $700100,X
|0CD2E5| STA.w $700100,Y

|0CD2E8| LDA.w $700200,X
|0CD2EB| STA.w $700200,Y

|0CD2EE| LDA.w $700300,X
|0CD2F1| STA.w $700300,Y

|0CD2F4| LDA.w $700400,X
|0CD2F7| STA.w $700400,Y

|0CD2FA| INY
|0CD2FB| INY

|0CD2FC| INX
|0CD2FD| INX

|0CD2FE| DEC.b $00
|0CD300| BNE .next

;---------------------------------------------------------------------------------------------------

|0CD302| SEP #$20 ; [USELESS]

|0CD304| PLB

|0CD305| REP #$20

|0CD307| RTS

;===================================================================================================

KILLFile_FairyY:
|0CD308| db $4A ; File 1
|0CD309| db $6A ; File 2
|0CD30A| db $8A ; File 3
|0CD30B| db $C7 ; Exit

;---------------------------------------------------------------------------------------------------

KILL_OK_stripes:
; Deletes file names
|0CD30C| dw $2861, $2C40 ; VRAM $C250 | 46 bytes | Fixed horizontal
|0CD310| dw $0188

|0CD312| dw $4861, $2C40 ; VRAM $C290 | 46 bytes | Fixed horizontal
|0CD316| dw $0188

|0CD318| dw $A861, $2C40 ; VRAM $C350 | 46 bytes | Fixed horizontal
|0CD31C| dw $0188

|0CD31E| dw $C861, $2C40 ; VRAM $C390 | 46 bytes | Fixed horizontal
|0CD322| dw $0188

; KILL OK
|0CD324| dw $A562, $1700 ; VRAM $C54A | 24 bytes | Horizontal
|0CD328| dw $1D64, $0188, $1D62, $0188, $1D65, $0188, $1D65, $0188
|0CD338| dw $0188, $1D68, $0188, $1D64

|0CD340| dw $C562, $1700 ; VRAM $C58A | 24 bytes | Horizontal
|0CD344| dw $1D74, $0188, $1D72, $0188, $1D75, $0188, $1D75, $0188
|0CD354| dw $0188, $1D78, $0188, $1D74

|0CD35C| db $FF ; end of stripes data

;===================================================================================================

KILL_OK_FileNameStripesAdjustment:
|0CD35D| db $00 ; File 1
|0CD35E| db $0C ; File 2

;===================================================================================================

Module03_KILLFile:
|0CD35F| LDA.b $11
|0CD361| JSL JumpTableLong
|0CD365| dl ReinitializeFileSelectGraphics
|0CD368| dl KILLFile_SetUp
|0CD36B| dl KILLFile_HandleSelection
|0CD36E| dl KILLFile_HandleConfirmation

;===================================================================================================

KILLFile_SetUp:
|0CD371| LDA.b #$08

|0CD373| JMP.w KILLFile_FindFileIndices

;===================================================================================================

KILLFile_HandleSelection:
|0CD376| PHB
|0CD377| PHK
|0CD378| PLB

|0CD379| LDA.b $C8
|0CD37B| CMP.b #$03
|0CD37D| BCS .selecting_exit

|0CD37F| STA.w $0B9D

.selecting_exit
|0CD382| JSR KILLFile_ChooseTarget

|0CD385| JMP.w FileSelect_TriggerTheStripes

;===================================================================================================

KILLFile_HandleConfirmation:
|0CD388| PHB
|0CD389| PHK
|0CD38A| PLB

|0CD38B| JSR KILLFile_VerifyDeletion

|0CD38E| JMP.w FileSelect_TriggerTheStripes

;===================================================================================================

KILLFile_ChooseTarget:
|0CD391| REP #$10

|0CD393| LDX.w #$012D

.next_blankname_stripe
|0CD396| LDA.w KILLFile_BlankNameStripes-1,X
|0CD399| STA.w $1001,X

|0CD39C| DEX
|0CD39D| BNE .next_blankname_stripe

;---------------------------------------------------------------------------------------------------

|0CD39F| REP #$20

|0CD3A1| LDX.w #$0000

.next_filename_stripe
|0CD3A4| STX.b $00

|0CD3A6| LDA.b $BF,X
|0CD3A8| AND.w #$0001
|0CD3AB| BEQ .skip_this_file

|0CD3AD| LDA.l SaveFileCopyOffsets,X
|0CD3B1| TAX
|0CD3B2| JSR FileSelect_CopyNameToStripes

.skip_this_file
|0CD3B5| LDX.b $00
|0CD3B7| INX
|0CD3B8| INX
|0CD3B9| CPX.w #$0006
|0CD3BC| BCC .next_filename_stripe

;---------------------------------------------------------------------------------------------------

|0CD3BE| SEP #$30

|0CD3C0| LDX.b $C8

|0CD3C2| LDA.b #$14
|0CD3C4| STA.b $00

|0CD3C6| LDA.w KILLFile_FairyY,X
|0CD3C9| STA.b $01

|0CD3CB| JSR FileSelect_DrawFairy

;---------------------------------------------------------------------------------------------------

|0CD3CE| LDY.b #$02

; Check for select
|0CD3D0| LDA.b $F4
|0CD3D2| AND.b #$20
|0CD3D4| BNE .pressed_down_or_select

; Check for up or down
|0CD3D6| LDA.b $F4
|0CD3D8| AND.b #$0C
|0CD3DA| BEQ .check_for_pick

; check for down
|0CD3DC| AND.b #$04
|0CD3DE| BNE .pressed_down_or_select

|0CD3E0| LDA.b #$20 ; SFX3.20
|0CD3E2| STA.w $012F

|0CD3E5| LDY.b #$FE

|0CD3E7| LDX.b $C8
|0CD3E9| DEX
|0CD3EA| BMI .select_exit

.check_prev_file
|0CD3EC| TXA
|0CD3ED| ASL A
|0CD3EE| TAY

|0CD3EF| LDA.w $00BF,Y
|0CD3F2| BNE .check_for_pick

|0CD3F4| DEX
|0CD3F5| BPL .check_prev_file

;---------------------------------------------------------------------------------------------------

.select_exit
|0CD3F7| LDX.b #$03
|0CD3F9| BRA .check_for_pick

;---------------------------------------------------------------------------------------------------

.pressed_down_or_select
|0CD3FB| LDA.b #$20 ; SFX3.20
|0CD3FD| STA.w $012F

|0CD400| LDX.b $C8
|0CD402| INX
|0CD403| CPX.b #$03
|0CD405| BCS .not_on_file

.check_next_file
|0CD407| TXA
|0CD408| ASL A
|0CD409| TAY

|0CD40A| LDA.w $00BF,Y
|0CD40D| BNE .check_for_pick

|0CD40F| INX
|0CD410| CPX.b #$03
|0CD412| BNE .check_next_file

|0CD414| BRA .check_for_pick

.not_on_file
|0CD416| CPX.b #$04
|0CD418| BNE .check_for_pick

|0CD41A| LDX.b #$00
|0CD41C| BRA .check_next_file

;---------------------------------------------------------------------------------------------------

.check_for_pick
|0CD41E| STX.b $C8

; check for AX
|0CD420| LDA.b $F6
|0CD422| AND.b #$C0

; Check for BYS
|0CD424| ORA.b $F4
|0CD426| AND.b #$D0
|0CD428| BEQ .exit

|0CD42A| LDA.b #$2C ; SFX2.2C
|0CD42C| STA.w $012E

|0CD42F| LDA.b $C8
|0CD431| CMP.b #$03
|0CD433| BEQ .picked_exit

|0CD435| LDX.b #$50

.next_ok
|0CD437| LDA.w KILL_OK_stripes,X
|0CD43A| STA.w $1002,X

|0CD43D| DEX
|0CD43E| BPL .next_ok

;---------------------------------------------------------------------------------------------------

|0CD440| INC.b $11

|0CD442| LDX.b $C8
|0CD444| CPX.b #$02
|0CD446| BEQ .no_filename_stripe_adjustment

|0CD448| LDA.w KILL_OK_FileNameStripesAdjustment,X
|0CD44B| TAX

|0CD44C| LDA.b #$62
|0CD44E| STA.w $1002,X
|0CD451| STA.w $1008,X

|0CD454| LDA.b #$28
|0CD456| STA.w $1003,X

|0CD459| CLC
|0CD45A| ADC.b #$20
|0CD45C| STA.w $1009,X

.no_filename_stripe_adjustment
|0CD45F| LDA.b $C8
|0CD461| STA.b $B0

|0CD463| STZ.b $C8
|0CD465| BRA .exit

;---------------------------------------------------------------------------------------------------

.picked_exit
|0CD467| SEP #$30

|0CD469| JSR ReturnToFileSelect

.exit
|0CD46C| RTS

;===================================================================================================

pool KILLFile_VerifyDeletion

.fairy_pos_y
|0CD46D| db $A7
|0CD46E| db $C7

endpool

;---------------------------------------------------------------------------------------------------

KILLFile_VerifyDeletion:
|0CD46F| LDA.b $B0
|0CD471| ASL A
|0CD472| STA.b $00

|0CD474| JSR FileSelect_DrawLink
|0CD477| JSR FileSelect_DrawDeaths

|0CD47A| SEP #$30

|0CD47C| LDX.b $C8

|0CD47E| LDA.b #$14
|0CD480| STA.b $00

|0CD482| LDA.w .fairy_pos_y,X
|0CD485| STA.b $01

|0CD487| JSR FileSelect_DrawFairy

;---------------------------------------------------------------------------------------------------

|0CD48A| LDY.b #$02

; check for select, up, down
|0CD48C| LDA.b $F4
|0CD48E| AND.b #$2C
|0CD490| BEQ .not_selection_change_input

; check for select or down
|0CD492| AND.b #$24
|0CD494| BNE .pressed_select_or_down

|0CD496| DEX
|0CD497| BRA .move_kiss_of_death

.pressed_select_or_down
|0CD499| INX

.move_kiss_of_death
|0CD49A| TXA
|0CD49B| AND.b #$01
|0CD49D| STA.b $C8

|0CD49F| LDA.b #$20 ; SFX3.20
|0CD4A1| STA.w $012F

;---------------------------------------------------------------------------------------------------

.not_selection_change_input
; check for AX
|0CD4A4| LDA.b $F6
|0CD4A6| AND.b #$C0

; check for BYSsud
|0CD4A8| ORA.b $F4
|0CD4AA| AND.b #$D0
|0CD4AC| BEQ .exit

|0CD4AE| LDA.b #$2C ; SFX2.2C
|0CD4B0| STA.w $012E

|0CD4B3| LDA.b $C8
|0CD4B5| BNE .chickened_out

|0CD4B7| LDA.b #$22 ; SFX3.22
|0CD4B9| STA.w $012F
|0CD4BC| STZ.w $012E

|0CD4BF| REP #$30

|0CD4C1| LDA.b $B0
|0CD4C3| AND.w #$00FF
|0CD4C6| ASL A
|0CD4C7| TAX

|0CD4C8| STZ.b $BF,X

|0CD4CA| LDA.l SaveFileCopyOffsets,X
|0CD4CE| TAX

;---------------------------------------------------------------------------------------------------

|0CD4CF| LDY.w #$0000
|0CD4D2| TYA

.clear_next
|0CD4D3| STA.l $700000,X
|0CD4D7| STA.l $700100,X
|0CD4DB| STA.l $700200,X
|0CD4DF| STA.l $700300,X
|0CD4E3| STA.l $700400,X
|0CD4E7| STA.l $700F00,X
|0CD4EB| STA.l $701000,X
|0CD4EF| STA.l $701100,X
|0CD4F3| STA.l $701200,X
|0CD4F7| STA.l $701300,X

|0CD4FB| INX
|0CD4FC| INX

|0CD4FD| INY
|0CD4FE| INY
|0CD4FF| CPY.w #$0100
|0CD502| BNE .clear_next

;---------------------------------------------------------------------------------------------------

|0CD504| SEP #$30

.chickened_out
|0CD506| JSR ReturnToFileSelect

|0CD509| STZ.b $B0

.exit
|0CD50B| RTS

;===================================================================================================

pool FileSelect_CopyNameToStripes

.name_offset
|0CD50C| dw $000A
|0CD50E| dw $006E
|0CD510| dw $00D2

.hearts_offset
|0CD512| dw $001E
|0CD514| dw $0082
|0CD516| dw $00E6

endpool

;---------------------------------------------------------------------------------------------------

FileSelect_CopyNameToStripes:
|0CD518| PHX

|0CD519| JSR FileSelect_DrawLink
|0CD51C| JSR FileSelect_DrawDeaths

|0CD51F| PLX
|0CD520| PHX

|0CD521| LDY.b $00

|0CD523| LDA.w .name_offset,Y
|0CD526| TAY

|0CD527| LDA.w #$0004
|0CD52A| STA.b $02

;---------------------------------------------------------------------------------------------------

.next_character
|0CD52C| LDA.l $7003D9,X
|0CD530| CLC
|0CD531| ADC.w #$1C00
|0CD534| STA.w $1002,Y

|0CD537| CLC
|0CD538| ADC.w #$0010
|0CD53B| STA.w $1034,Y

|0CD53E| INX
|0CD53F| INX

|0CD540| INY ; +4
|0CD541| INY
|0CD542| INY
|0CD543| INY

|0CD544| DEC.b $02
|0CD546| BNE .next_character

;---------------------------------------------------------------------------------------------------

|0CD548| PLX

|0CD549| LDY.w #$0001

|0CD54C| LDA.l $70036C,X
|0CD550| AND.w #$00FF
|0CD553| LSR A
|0CD554| LSR A
|0CD555| LSR A
|0CD556| STA.b $02

|0CD558| LDX.b $00

|0CD55A| LDY.w .hearts_offset,X
|0CD55D| STY.b $04

|0CD55F| LDA.w #$05C0
|0CD562| LDX.w #$000A

;---------------------------------------------------------------------------------------------------

.next_heart
|0CD565| STA.w $1002,Y

|0CD568| INY
|0CD569| INY

|0CD56A| DEX
|0CD56B| BNE .same_row

|0CD56D| PHA

|0CD56E| LDA.b $04
|0CD570| CLC
|0CD571| ADC.w #$0032
|0CD574| TAY

|0CD575| PLA

.same_row
|0CD576| DEC.b $02
|0CD578| BNE .next_heart

|0CD57A| RTS

;===================================================================================================

pool FileSelect_DrawLink

.unused
|0CD57B| db $01, $06, $0B

.offset_y
|0CD57E| db $45 ; file 1
|0CD57F| db $65 ; file 2
|0CD580| db $85 ; file 3

.oam_offset
|0CD581| db $28 ; file 1
|0CD582| db $3C ; file 2
|0CD583| db $50 ; file 3

.sword_gfx
|0CD584| db $85 ; fighter sword
|0CD585| db $A1 ; master sword
|0CD586| db $A1 ; tempered sword
|0CD587| db $A1 ; gold sword

.shield_gfx
|0CD588| db $C4 ; fighter shield
|0CD589| db $CA ; fire shield
|0CD58A| db $E0 ; mirror shield

.sword_props
|0CD58B| db $72 ; file 1
|0CD58C| db $76 ; file 2
|0CD58D| db $7A ; file 3

.shield_props
|0CD58E| db $32 ; file 1
|0CD58F| db $36 ; file 2
|0CD590| db $3A ; file 3

.link_props
|0CD591| db $30 ; file 1
|0CD592| db $34 ; file 2
|0CD593| db $38 ; file 3

endpool

;---------------------------------------------------------------------------------------------------

FileSelect_DrawLink:
|0CD594| REP #$30

|0CD596| LDA.w #$0116
|0CD599| ASL A
|0CD59A| STA.w $0100

|0CD59D| LDA.b $00
|0CD59F| AND.w #$00FF
|0CD5A2| TAX

|0CD5A3| LDA.l SaveFileCopyOffsets,X
|0CD5A7| STA.b $0E

;---------------------------------------------------------------------------------------------------

|0CD5A9| SEP #$30

|0CD5AB| LDA.b $00
|0CD5AD| LSR A
|0CD5AE| TAY

|0CD5AF| LDA.w .oam_offset,Y
|0CD5B2| TAX

|0CD5B3| LDA.b #$34
|0CD5B5| STA.w $0800,X
|0CD5B8| STA.w $0804,X

|0CD5BB| LDA.w .offset_y,Y
|0CD5BE| CLC
|0CD5BF| ADC.b #$FB
|0CD5C1| STA.w $0801,X

|0CD5C4| CLC
|0CD5C5| ADC.b #$08
|0CD5C7| STA.w $0805,X

|0CD5CA| LDA.w .sword_props,Y
|0CD5CD| STA.w $0803,X
|0CD5D0| STA.w $0807,X

;---------------------------------------------------------------------------------------------------

|0CD5D3| PHY
|0CD5D4| PHX

|0CD5D5| REP #$10

|0CD5D7| LDX.b $0E

|0CD5D9| LDA.l $700359,X

|0CD5DD| SEP #$10

|0CD5DF| PLX

|0CD5E0| TAY
|0CD5E1| DEY
|0CD5E2| BPL .have_sword

|0CD5E4| LDA.b #$F0
|0CD5E6| STA.w $0801,X
|0CD5E9| STA.w $0805,X

|0CD5EC| INY

.have_sword
|0CD5ED| LDA.w .sword_gfx,Y
|0CD5F0| STA.w $0802,X

|0CD5F3| CLC
|0CD5F4| ADC.b #$10
|0CD5F6| STA.w $0806,X

;---------------------------------------------------------------------------------------------------

|0CD5F9| PLY

|0CD5FA| PHX
|0CD5FB| TXA

|0CD5FC| LSR A
|0CD5FD| LSR A
|0CD5FE| TAX

|0CD5FF| LDA.b #$00
|0CD601| STA.w $0A20,X
|0CD604| STA.w $0A21,X

|0CD607| PLA
|0CD608| CLC
|0CD609| ADC.b #$08
|0CD60B| TAX

|0CD60C| LDA.b #$23
|0CD60E| STA.w $0800,X

|0CD611| LDA.w .offset_y,Y
|0CD614| CLC
|0CD615| ADC.b #$0A
|0CD617| STA.w $0801,X

|0CD61A| LDA.w .shield_props,Y
|0CD61D| STA.w $0803,X

;---------------------------------------------------------------------------------------------------

|0CD620| PHY
|0CD621| PHX

|0CD622| REP #$10

|0CD624| LDX.b $0E

|0CD626| LDA.l $70035A,X

|0CD62A| SEP #$10

|0CD62C| PLX

|0CD62D| TAY
|0CD62E| DEY
|0CD62F| BPL .have_shield

|0CD631| LDA.b #$F0
|0CD633| STA.w $0801,X

|0CD636| INY

.have_shield
|0CD637| LDA.w .shield_gfx,Y
|0CD63A| STA.w $0802,X

;---------------------------------------------------------------------------------------------------

|0CD63D| PLY

|0CD63E| PHX
|0CD63F| TXA

|0CD640| LSR A
|0CD641| LSR A
|0CD642| TAX

|0CD643| LDA.b #$02
|0CD645| STA.w $0A20,X

|0CD648| PLA
|0CD649| CLC
|0CD64A| ADC.b #$04
|0CD64C| TAX

|0CD64D| LDA.b #$28
|0CD64F| STA.w $0800,X
|0CD652| STA.w $0804,X

|0CD655| LDA.b #$00
|0CD657| STA.w $0802,X

|0CD65A| LDA.b #$02
|0CD65C| STA.w $0806,X

|0CD65F| LDA.w .link_props,Y
|0CD662| STA.w $0803,X

|0CD665| ORA.b #$40
|0CD667| STA.w $0807,X

|0CD66A| LDA.w .offset_y,Y
|0CD66D| STA.w $0801,X

|0CD670| CLC
|0CD671| ADC.b #$08
|0CD673| STA.w $0805,X

|0CD676| TXA
|0CD677| LSR A
|0CD678| LSR A
|0CD679| TAX

|0CD67A| LDA.b #$02
|0CD67C| STA.w $0A20,X
|0CD67F| STA.w $0A21,X

|0CD682| REP #$30

|0CD684| RTS

;===================================================================================================

pool FileSelect_DrawFairy

.char
|0CD685| db $A8
|0CD686| db $AA

endpool

;---------------------------------------------------------------------------------------------------

FileSelect_DrawFairy:
|0CD687| LDA.b $00
|0CD689| STA.w $0800

|0CD68C| LDA.b $01
|0CD68E| STA.w $0801

|0CD691| PHX

|0CD692| LDX.b #$00

|0CD694| LDA.b $1A
|0CD696| AND.b #$08
|0CD698| BEQ .frame_0

|0CD69A| INX

.frame_0
|0CD69B| LDA.w .char,X
|0CD69E| STA.w $0802

|0CD6A1| PLX

|0CD6A2| LDA.b #$7E
|0CD6A4| STA.w $0803

|0CD6A7| LDA.b #$02
|0CD6A9| STA.w $0A20

;---------------------------------------------------------------------------------------------------

#EXIT_0CD6AC:
|0CD6AC| RTS

;===================================================================================================

pool FileSelect_DrawDeaths

.digit_char
|0CD6AD| db $D0 ; 0
|0CD6AE| db $AC ; 1
|0CD6AF| db $AD ; 2
|0CD6B0| db $BC ; 3
|0CD6B1| db $BD ; 4
|0CD6B2| db $AE ; 5
|0CD6B3| db $AF ; 6
|0CD6B4| db $BE ; 7
|0CD6B5| db $BF ; 8
|0CD6B6| db $C0 ; 9

.buffer_offset
|0CD6B7| db $04 ; ..#
|0CD6B8| db $10 ; .#.
|0CD6B9| db $1C ; #..

.digit_position_x
|0CD6BA| db $34 ; ..#
|0CD6BB| db $2C ; .#.
|0CD6BC| db $24 ; #..

.digit_position_y
|0CD6BD| db $59 ; File 1
|0CD6BE| db $79 ; File 2
|0CD6BF| db $99 ; File 3

endpool

;---------------------------------------------------------------------------------------------------

FileSelect_DrawDeaths:
|0CD6C0| REP #$30

|0CD6C2| LDX.b $0E

|0CD6C4| LDA.l $700401,X
|0CD6C8| CMP.w #$FFFF
|0CD6CB| BEQ EXIT_0CD6AC

|0CD6CD| CMP.w #$03E8 ; 1000
|0CD6D0| BCC .calculate_decimal_digits

|0CD6D2| LDA.w #$0009
|0CD6D5| STA.b $02
|0CD6D7| STA.b $04
|0CD6D9| STA.b $06

|0CD6DB| BRA .continue

;---------------------------------------------------------------------------------------------------

.calculate_decimal_digits
|0CD6DD| LDY.w #$0000

.remove_from_ones
|0CD6E0| CMP.w #$000A
|0CD6E3| BCC .sub_ten

|0CD6E5| SEC
|0CD6E6| SBC.w #$000A

|0CD6E9| INY

|0CD6EA| BRA .remove_from_ones

;---------------------------------------------------------------------------------------------------

.sub_ten
|0CD6EC| STA.b $02

|0CD6EE| TYA

|0CD6EF| LDY.w #$0000

.remove_from_tens
|0CD6F2| CMP.w #$000A
|0CD6F5| BCC .sub_hundo

|0CD6F7| SEC
|0CD6F8| SBC.w #$000A

|0CD6FB| INY

|0CD6FC| BRA .remove_from_tens

;---------------------------------------------------------------------------------------------------

.sub_hundo
|0CD6FE| STA.b $04
|0CD700| STY.b $06

;---------------------------------------------------------------------------------------------------

.continue
|0CD702| LDX.w #$0004

|0CD705| LDA.b $06
|0CD707| BNE .skip_digit

|0CD709| DEX
|0CD70A| DEX

|0CD70B| LDA.b $04
|0CD70D| BNE .skip_digit

|0CD70F| DEX
|0CD710| DEX

.skip_digit
|0CD711| SEP #$30

|0CD713| LDA.b $00
|0CD715| LSR A
|0CD716| TAY

|0CD717| LDA.w .buffer_offset,Y
|0CD71A| TAY

;---------------------------------------------------------------------------------------------------

.next_digit
|0CD71B| PHX

|0CD71C| LDA.b $02,X
|0CD71E| TAX

|0CD71F| LDA.w .digit_char,X
|0CD722| STA.w $0802,Y

|0CD725| LDA.b $00
|0CD727| LSR A
|0CD728| TAX

|0CD729| LDA.w .digit_position_y,X
|0CD72C| STA.w $0801,Y

|0CD72F| PLA
|0CD730| PHA

|0CD731| LSR A
|0CD732| TAX

|0CD733| LDA.w .digit_position_x,X
|0CD736| STA.w $0800,Y

|0CD739| LDA.b #$3C
|0CD73B| STA.w $0803,Y

|0CD73E| PHY

|0CD73F| TYA
|0CD740| LSR A
|0CD741| LSR A
|0CD742| TAY

|0CD743| LDA.b #$00
|0CD745| STA.w $0A20,Y

|0CD748| PLY
|0CD749| INY ; +4
|0CD74A| INY
|0CD74B| INY
|0CD74C| INY

|0CD74D| PLX
|0CD74E| DEX ; +2
|0CD74F| DEX
|0CD750| BPL .next_digit

|0CD752| REP #$30

|0CD754| RTS

;===================================================================================================

Module04_NameFile:
|0CD755| LDA.b $11
|0CD757| JSL JumpTableLong
|0CD75B| dl NameFile_EraseSave
|0CD75E| dl NameFile_MakeScreenVisible
|0CD761| dl NameFile_DoTheNaming

;===================================================================================================

NameFile_EraseSave:
|0CD764| JSL ReinitializeFileSelectGraphics

|0CD768| LDA.b #$01
|0CD76A| STA.w $0128

|0CD76D| STZ.w $0B12
|0CD770| STZ.w $0B10
|0CD773| STZ.w $0B15

|0CD776| STZ.w $00CA
|0CD779| STZ.w $00CC

|0CD77C| LDA.b #$3E
|0CD77E| STA.w $0B11

|0CD781| REP #$30

|0CD783| LDA.w #$019C
|0CD786| STA.w $0630

|0CD789| STZ.b $E4

|0CD78B| LDA.b $C8
|0CD78D| ASL A
|0CD78E| TAX

|0CD78F| LDA.l SaveFileCopyOffsets,X
|0CD793| STA.w $0200

|0CD796| TAX

;---------------------------------------------------------------------------------------------------

|0CD797| LDY.w #$0000
|0CD79A| TYA

.next_clear
|0CD79B| STA.l $700000,X
|0CD79F| STA.l $700100,X
|0CD7A3| STA.l $700200,X
|0CD7A7| STA.l $700300,X
|0CD7AB| STA.l $700400,X

|0CD7AF| INX
|0CD7B0| INX

|0CD7B1| INY
|0CD7B2| INY
|0CD7B3| CPY.w #$0100
|0CD7B6| BNE .next_clear

;---------------------------------------------------------------------------------------------------

|0CD7B8| LDX.w $0200

|0CD7BB| LDA.w #$018C
|0CD7BE| STA.l $7003D9,X
|0CD7C2| STA.l $7003DB,X
|0CD7C6| STA.l $7003DD,X
|0CD7CA| STA.l $7003DF,X

|0CD7CE| SEP #$30

|0CD7D0| RTL

;===================================================================================================

NameFile_MakeScreenVisible:
|0CD7D1| LDA.b #$05
|0CD7D3| STA.b $14

|0CD7D5| INC.b $11

|0CD7D7| LDA.b #$0F
|0CD7D9| STA.b $13

|0CD7DB| STZ.w $0710

|0CD7DE| RTL

;===================================================================================================

NameFile_CharacterLayout:
|0CD7DF| db $00, $01, $02, $03, $04, $CC, $CC   ; あ い う え お ␣ ␣
|0CD7E6| db $15, $16, $17, $1D, $1E, $CC        ; が ぎ ぐ げ ご ␣
|0CD7EC| db $50, $51, $52, $53, $54, $CC, $CC   ; ア イ ウ エ オ ␣ ␣
|0CD7F3| db $65, $66, $67, $6D, $6E, $CC        ; ガ ギ グ ゲ ゴ ␣
|0CD7F9| db $AA, $AB, $AC, $AD, $CC, $CC        ; A B C D ␣ ␣

|0CD7FF| db $08, $09, $0A, $0B, $0C, $CC, $CC   ; か き く け こ ␣ ␣
|0CD806| db $1F, $25, $26, $27, $2D, $CC        ; ざ じ ず ぜ ぞ ␣
|0CD80C| db $58, $59, $5A, $5B, $5C, $CC, $CC   ; カ キ ク ケ コ ␣ ␣
|0CD813| db $6F, $75, $76, $77, $7D, $CC        ; ザ ジ ズ ゼ ゾ ␣
|0CD819| db $AE, $AF, $B0, $B1, $CC, $CC        ; E F G H ␣ ␣

|0CD81F| db $10, $11, $12, $13, $14, $CC, $CC   ; さ し す せ そ ␣ ␣
|0CD826| db $2E, $2F, $35, $36, $37, $CC        ; だ ぢ づ で ど ␣
|0CD82C| db $60, $61, $62, $63, $64, $CC, $CC   ; サ シ ス セ ソ ␣ ␣
|0CD833| db $7E, $7F, $85, $86, $87, $CC        ; ダ ヂ ヅ デ ド ␣
|0CD839| db $B2, $B3, $B4, $B5, $CC, $CC        ; I J K L ␣ ␣

|0CD83F| db $18, $19, $1A, $1B, $1C, $CC, $CC   ; た ち つ て と ␣ ␣
|0CD846| db $3D, $3E, $3F, $40, $41, $CC        ; ば び ぶ べ ぼ ␣
|0CD84C| db $68, $69, $6A, $6B, $6C, $CC, $CC   ; タ チ ツ テ ト ␣ ␣
|0CD853| db $8D, $8E, $8F, $90, $91, $CC        ; バ ビ ブ ベ ボ ␣
|0CD859| db $B6, $B7, $B8, $B9, $CC, $CC        ; M N O P ␣ ␣

|0CD85F| db $20, $21, $22, $23, $24, $CC, $CC   ; な に ぬ ね の ␣ ␣
|0CD866| db $42, $43, $44, $45, $46, $CC        ; ぱ ぴ ぷ ぺ ぽ ␣
|0CD86C| db $70, $71, $72, $73, $74, $CC, $CC   ; ナ ニ ヌ ネ ノ ␣ ␣
|0CD873| db $92, $93, $94, $95, $96, $CC        ; パ ピ プ ペ ポ ␣
|0CD879| db $BA, $BB, $BC, $BD, $CC, $CC        ; Q R S T ␣ ␣

|0CD87F| db $28, $29, $2A, $2B, $2C, $CC, $CC   ; は ひ ふ へ ほ ␣ ␣
|0CD886| db $4B, $4C, $4D, $4E, $4F, $CC        ; ぁ ぃ ぅ ぇ ぉ ␣
|0CD88C| db $78, $79, $7A, $7B, $7C, $CC, $CC   ; ハ ヒ フ ヘ ホ ␣ ␣
|0CD893| db $9B, $9C, $9D, $9E, $9F, $CC        ; ァ ィ ゥ ェ ォ ␣
|0CD899| db $BE, $BF, $C0, $C1, $CC, $CC        ; U V W X ␣ ␣

|0CD89F| db $30, $31, $32, $33, $34, $CC, $CC   ; ま み む め も ␣ ␣
|0CD8A6| db $47, $48, $49, $CC, $4A, $CC        ; ゃ ゅ ょ ␣ っ ␣
|0CD8AC| db $80, $81, $82, $83, $84, $CC, $CC   ; マ ミ ム メ モ ␣ ␣
|0CD8B3| db $97, $98, $99, $CC, $9A, $CC        ; ャ ュ ョ ␣ ッ ␣
|0CD8B9| db $C2, $C3, $C9, $CE, $CC, $CC        ; Y Z － 〜 ␣ ␣

|0CD8BF| db $05, $CC, $06, $CC, $07, $CC, $CC   ; や ␣ ゆ ␣ よ ␣ ␣
|0CD8C6| db $CC, $CC, $CC, $CC, $CC, $CC        ; ␣ ␣ ␣ ␣ ␣ ␣
|0CD8CC| db $55, $CC, $56, $CC, $57, $CC, $CC   ; ヤ ␣ ユ ␣ ヨ ␣ ␣
|0CD8D3| db $CC, $CC, $CC, $CC, $CC, $CC        ; ␣ ␣ ␣ ␣ ␣ ␣
|0CD8D9| db $CC, $CC, $CC, $CC, $CC, $CC        ; ␣ ␣ ␣ ␣ ␣ ␣

|0CD8DF| db $38, $39, $3A, $3B, $3C, $CC, $CC   ; ら り る れ ろ ␣ ␣
|0CD8E6| db $CA, $CB, $CD, $CD, $CC, $CC        ; 🡄 🡆 END ␣ ␣
|0CD8EC| db $88, $89, $8A, $8B, $8C, $CC, $CC   ; ラ リ ル レ ロ ␣ ␣
|0CD8F3| db $CC, $CC, $CC, $CC, $CC, $CC        ; ␣ ␣ ␣ ␣ ␣ ␣
|0CD8F9| db $CA, $CB, $CD, $CD, $CC, $CC        ; 🡄 🡆 END ␣ ␣

|0CD8FF| db $0D, $0E, $0F, $CC, $C9, $CC, $CC   ; わ を ん ␣ － ␣ ␣
|0CD906| db $CC, $CC, $CC, $CC, $CC, $CC        ; ␣ ␣ ␣ ␣ ␣ ␣
|0CD90C| db $5D, $5E, $5F, $CC, $C9, $CC, $CC   ; ワ ヲ ン ␣ － ␣ ␣
|0CD913| db $CC, $CC, $CC, $CC, $CC, $CC        ; ␣ ␣ ␣ ␣ ␣ ␣
|0CD919| db $CC, $CC, $CC, $CC, $CC, $CC        ; ␣ ␣ ␣ ␣ ␣ ␣

;===================================================================================================

NameFile_CursorPositionX:
|0CD91F| dw $019C, $01AC, $01BC, $01CC
|0CD927| dw $01DC, $01EC, $01FC, $000C
|0CD92F| dw $001C, $002C, $003C, $004C
|0CD937| dw $005C, $006C, $007C, $008C
|0CD93F| dw $009C, $00AC, $00BC, $00CC
|0CD947| dw $00DC, $00EC, $00FC, $010C
|0CD94F| dw $011C, $012C, $013C, $014C
|0CD957| dw $015C, $016C, $017C, $018C

; Index in the table above
NameFile_CursorIndexMovementX:
|0CD95F| dw $0001 ; Right
|0CD961| dw $00FF ; Left

NameFile_CursorIndexBoundaryX:
|0CD963| dw $0020 ; Right
|0CD965| dw $00FF ; Left

NameFile_CursorIndexWrapX:
|0CD967| dw $0000 ; Right
|0CD969| dw $001F ; Left

;===================================================================================================

NameFile_CursorPositionY:
|0CD96B| db $3E, $4E, $5E, $6E
|0CD96F| db $7E, $8E, $9E, $AE
|0CD973| db $BE, $CE

; Index in the table above
NameFile_CursorIndexMovementY:
|0CD975| db $01, $FF

NameFile_CursorIndexBoundaryY:
|0CD977| db $0A, $FF

NameFile_CursorStickY:
|0CD979| db $00, $09

NameFile_YtoXIndexOffset:
|0CD97B| dw $0000, $0020, $0040, $0060
|0CD983| dw $0080, $00A0, $00C0, $00E0
|0CD98B| dw $0100, $0120

;===================================================================================================

NameFile_HeartXPosition:
|0CD98F| db $A8, $B8, $C8, $D8

;===================================================================================================

NameFile_CursorMovement:
|0CD993| dw  -1,   1
|0CD997| dw  -1,   1
|0CD99B| dw  -1,   1
|0CD99F| dw  -1,   1
|0CD9A3| dw  -1,   1
|0CD9A7| dw  -1,   1
|0CD9AB| dw  -1,   1
|0CD9AF| dw  -1,   1
|0CD9B3| dw  -2,   2
|0CD9B7| dw  -2,   2
|0CD9BB| dw  -2,   2
|0CD9BF| dw  -2,   2
|0CD9C3| dw  -4,   4

;===================================================================================================

NameFile_DoTheNaming:
.check_x_scroll
|0CD9C7| LDY.w $0B13
|0CD9CA| BEQ .not_busy_scrolling_x

|0CD9CC| TYA
|0CD9CD| CMP.b #$31
|0CD9CF| BEQ .hit_target_scroll_x

|0CD9D1| CLC
|0CD9D2| ADC.b #$04
|0CD9D4| STA.w $0B13

.hit_target_scroll_x
|0CD9D7| LDA.w $0B10
|0CD9DA| ASL A
|0CD9DB| TAX

|0CD9DC| REP #$20

|0CD9DE| DEY

|0CD9DF| LDA.w $0630
|0CD9E2| CMP.l NameFile_CursorPositionX,X
|0CD9E6| BNE .not_at_valid_x_position

|0CD9E8| SEP #$20

|0CD9EA| LDA.b #$30
|0CD9EC| STA.w $0B13

|0CD9EF| LDA.b $F0
|0CD9F1| AND.b #$03
|0CD9F3| BNE .had_lr_input

|0CD9F5| STZ.w $0B13

.had_lr_input
|0CD9F8| JSR NameFile_CheckForScrollInputX
|0CD9FB| BRA .check_x_scroll

;---------------------------------------------------------------------------------------------------

.not_at_valid_x_position
|0CD9FD| REP #$20

|0CD9FF| LDX.w $0B16
|0CDA02| BNE .last_move_left

|0CDA04| INY
|0CDA05| INY

.last_move_left
|0CDA06| LDA.w $0630

|0CDA09| TYX

|0CDA0A| CLC
|0CDA0B| ADC.l NameFile_CursorMovement,X
|0CDA0F| AND.w #$01FF
|0CDA12| STA.w $0630

|0CDA15| SEP #$20

|0CDA17| BRA .check_y_scroll

.not_busy_scrolling_x
|0CDA19| JSR NameFile_CheckForScrollInputX

;---------------------------------------------------------------------------------------------------

.check_y_scroll
|0CDA1C| LDA.w $0B14
|0CDA1F| BEQ .not_busy_scrolling_y

|0CDA21| LDX.w $0B15
|0CDA24| LDY.b #$02

|0CDA26| LDA.w $0B11
|0CDA29| CMP.l NameFile_CursorPositionY,X
|0CDA2D| BNE .not_at_valid_y_position

|0CDA2F| STZ.w $0B14

|0CDA32| JSR NameFile_CheckForScrollInputY
|0CDA35| BRA .check_y_scroll

.not_at_valid_y_position
|0CDA37| BMI .scrolling_down

|0CDA39| LDY.b #$FE

.scrolling_down
|0CDA3B| TYA
|0CDA3C| CLC
|0CDA3D| ADC.w $0B11
|0CDA40| STA.w $0B11

|0CDA43| BRA .done_y

.not_busy_scrolling_y
|0CDA45| JSR NameFile_CheckForScrollInputY

;---------------------------------------------------------------------------------------------------

.done_y
|0CDA48| LDX.b #$00
|0CDA4A| TXY

|0CDA4B| LDA.b #$18
|0CDA4D| STA.b $00

.next_horizontal_bar_object
|0CDA4F| LDA.b $00
|0CDA51| STA.w $0800,Y

|0CDA54| CLC
|0CDA55| ADC.b #$08
|0CDA57| STA.b $00

|0CDA59| LDA.w $0B11
|0CDA5C| STA.w $0801,Y

|0CDA5F| LDA.b #$2E
|0CDA61| STA.w $0802,Y

|0CDA64| LDA.b #$3C
|0CDA66| STA.w $0803,Y

|0CDA69| STZ.w $0A20,X

|0CDA6C| INY ; +4
|0CDA6D| INY
|0CDA6E| INY
|0CDA6F| INY

|0CDA70| INX
|0CDA71| CPX.b #$1A
|0CDA73| BNE .next_horizontal_bar_object

;---------------------------------------------------------------------------------------------------

|0CDA75| PHX

|0CDA76| LDX.w $0B12

|0CDA79| LDA.l NameFile_HeartXPosition,X
|0CDA7D| STA.w $0800,Y

|0CDA80| LDA.b #$14
|0CDA82| STA.w $0801,Y

|0CDA85| PLX

|0CDA86| LDA.b #$29
|0CDA88| STA.w $0802,Y

|0CDA8B| LDA.b #$0C
|0CDA8D| STA.w $0803,Y

|0CDA90| STZ.w $0A20,X

|0CDA93| LDA.w $0B13
|0CDA96| ORA.w $0B14
|0CDA99| BNE .busy_scrolling

; check for start
|0CDA9B| LDA.b $F4
|0CDA9D| AND.b #$10
|0CDA9F| BNE .confirm_name

; check for BY
|0CDAA1| LDA.b $F4
|0CDAA3| AND.b #$C0
|0CDAA5| BNE .select_item

; check for AC
|0CDAA7| LDA.b $F6
|0CDAA9| AND.b #$C0
|0CDAAB| BNE .select_item

.busy_scrolling
|0CDAAD| JMP.w .exit

;---------------------------------------------------------------------------------------------------

.select_item
|0CDAB0| LDA.b #$2B ; SFX2.2B
|0CDAB2| STA.w $012E

|0CDAB5| REP #$30

|0CDAB7| LDA.w $0B15
|0CDABA| AND.w #$00FF
|0CDABD| ASL A
|0CDABE| TAX

|0CDABF| LDA.l NameFile_YtoXIndexOffset,X
|0CDAC3| CLC
|0CDAC4| ADC.w $0B10
|0CDAC7| AND.w #$01FF
|0CDACA| TAX

|0CDACB| SEP #$20

|0CDACD| LDA.l NameFile_CharacterLayout,X

|0CDAD1| CMP.b #$CA
|0CDAD3| BEQ .back_arrow

|0CDAD5| CMP.b #$CB
|0CDAD7| BEQ .forward_arrow

|0CDAD9| CMP.b #$CD
|0CDADB| BEQ .confirm_name

|0CDADD| STA.b $00
|0CDADF| STZ.b $01

|0CDAE1| BRA .written_character

;---------------------------------------------------------------------------------------------------

.back_arrow
|0CDAE3| DEC.w $0B12
|0CDAE6| BRA .adjust_cursor

.forward_arrow
|0CDAE8| INC.w $0B12

.adjust_cursor
|0CDAEB| LDA.w $0B12
|0CDAEE| AND.b #$03
|0CDAF0| STA.w $0B12

|0CDAF3| BRA .exit

;---------------------------------------------------------------------------------------------------

.written_character
|0CDAF5| REP #$30

|0CDAF7| AND.w #$000F
|0CDAFA| STA.b $02

|0CDAFC| LDA.w $0B12
|0CDAFF| AND.w #$00FF
|0CDB02| ASL A
|0CDB03| TAY

|0CDB04| CLC
|0CDB05| ADC.w $0200
|0CDB08| TAX

|0CDB09| LDA.b $00
|0CDB0B| AND.w #$FFF0
|0CDB0E| ASL A
|0CDB0F| ORA.b $02
|0CDB11| STA.l $7003D9,X

|0CDB15| JSR NameFile_DrawSelectedCharacter

|0CDB18| BRA .forward_arrow

;---------------------------------------------------------------------------------------------------

.confirm_name
|0CDB1A| REP #$30

|0CDB1C| STZ.b $02

.write_name_to_save
|0CDB1E| LDA.w $0200
|0CDB21| CLC
|0CDB22| ADC.b $02
|0CDB24| TAX

|0CDB25| LDA.l $7003D9,X
|0CDB29| CMP.w #$018C
|0CDB2C| BNE InitializeSaveFile

|0CDB2E| LDA.b $02
|0CDB30| CMP.w #$0006
|0CDB33| BEQ .exit

|0CDB35| INC A
|0CDB36| INC A
|0CDB37| STA.b $02

|0CDB39| BRA .write_name_to_save

.exit
|0CDB3B| SEP #$30

|0CDB3D| RTL

;===================================================================================================

InitializeSaveFile:
|0CDB3E| SEP #$30

|0CDB40| PHB

|0CDB41| LDA.b #^DefaultSaveFileItems
|0CDB43| PHA
|0CDB44| PLB

|0CDB45| REP #$30

|0CDB47| LDA.b $C8
|0CDB49| ASL A
|0CDB4A| INC A
|0CDB4B| INC A
|0CDB4C| STA.l $701FFE

|0CDB50| TAX

|0CDB51| LDA.l SaveFileOffsets,X
|0CDB55| STA.b $00

|0CDB57| TAX

;---------------------------------------------------------------------------------------------------

|0CDB58| LDA.w #$55AA
|0CDB5B| STA.l $7003E1,X

; Open the bomb walls for red rang hut and kak restock hut
|0CDB5F| LDA.w #$F000
|0CDB62| STA.l $70020C,X
|0CDB66| STA.l $70020E,X

|0CDB6A| LDA.w #$FFFF
|0CDB6D| STA.l $700401,X

|0CDB71| LDA.w #$001D
|0CDB74| STA.b $02

;---------------------------------------------------------------------------------------------------

|0CDB76| LDY.w #$003C

|0CDB79| CPX.w #$0000
|0CDB7C| BNE .copy_next

|0CDB7E| LDA.l Player2JoypadReturn
|0CDB82| AND.w #$00FF
|0CDB85| CMP.w #$0060 ; RTS
|0CDB88| BEQ .copy_next

|0CDB8A| LDA.l $7003D9
|0CDB8E| CMP.w #$00AF
|0CDB91| BNE .copy_next

|0CDB93| LDA.w #$00F0 ; mushroom received
|0CDB96| STA.l $700212,X

|0CDB9A| LDA.w #$1502
|0CDB9D| STA.l $7003C5,X

|0CDBA1| LDA.w #$0100
|0CDBA4| STA.l $7003C7,X

|0CDBA8| LDY.w #$0000

;---------------------------------------------------------------------------------------------------

.copy_next
|0CDBAB| LDA.w DefaultSaveFileItems,Y
|0CDBAE| STA.l $700340,X

|0CDBB2| INX
|0CDBB3| INX

|0CDBB4| INY
|0CDBB5| INY

|0CDBB6| DEC.b $02
|0CDBB8| BPL .copy_next

;---------------------------------------------------------------------------------------------------

|0CDBBA| LDX.b $00

|0CDBBC| LDY.w #$0000
|0CDBBF| TYA

.build_checksum
|0CDBC0| CLC
|0CDBC1| ADC.l $700000,X

|0CDBC5| INX
|0CDBC6| INX

|0CDBC7| INY
|0CDBC8| CPY.w #$027F
|0CDBCB| BNE .build_checksum

|0CDBCD| STA.b $02

|0CDBCF| LDX.b $00

|0CDBD1| LDA.w #$5A5A
|0CDBD4| SEC
|0CDBD5| SBC.b $02
|0CDBD7| STA.l $7004FE,X

;---------------------------------------------------------------------------------------------------

|0CDBDB| SEP #$30

|0CDBDD| PLB

|0CDBDE| JSR ReturnToFileSelect

|0CDBE1| LDA.b #$FF
|0CDBE3| STA.w $0128

|0CDBE6| LDA.b #$2C ; SFX2.2C
|0CDBE8| STA.w $012E

|0CDBEB| SEP #$30

|0CDBED| RTL

;===================================================================================================

NameFile_CheckForScrollInputX:
|0CDBEE| SEP #$30

; check for L or R input
|0CDBF0| LDA.b $F0
|0CDBF2| AND.b #$03
|0CDBF4| BEQ .exit

|0CDBF6| INC.w $0B13

|0CDBF9| DEC A
|0CDBFA| STA.w $0B16

|0CDBFD| REP #$30

|0CDBFF| AND.w #$00FF
|0CDC02| ASL A
|0CDC03| TAX

|0CDC04| LDA.w $0B10
|0CDC07| AND.w #$00FF
|0CDC0A| CLC
|0CDC0B| ADC.l NameFile_CursorIndexMovementX,X
|0CDC0F| CMP.l NameFile_CursorIndexBoundaryX,X
|0CDC13| BNE .no_wrap

|0CDC15| LDA.l NameFile_CursorIndexWrapX,X

.no_wrap
|0CDC19| SEP #$30

|0CDC1B| STA.w $0B10

.exit
|0CDC1E| SEP #$30

|0CDC20| RTS

;===================================================================================================

NameFile_CheckForScrollInputY:
|0CDC21| LDA.b $F0
|0CDC23| AND.b #$0C
|0CDC25| BEQ .no_input

|0CDC27| STA.b $02

|0CDC29| ASL A
|0CDC2A| ORA.w $0B15
|0CDC2D| CMP.b #$10
|0CDC2F| BEQ .set_input

|0CDC31| LDA.b $02
|0CDC33| ASL A
|0CDC34| ASL A
|0CDC35| ORA.w $0B15

|0CDC38| LDX.w $0B10

|0CDC3B| CMP.b #$19
|0CDC3D| BEQ .set_input

|0CDC3F| LDA.b $02
|0CDC41| LSR A
|0CDC42| LSR A

.next
|0CDC43| TAX

|0CDC44| LDA.w $0B15
|0CDC47| CLC
|0CDC48| ADC.l NameFile_CursorIndexMovementY-1,X
|0CDC4C| CMP.l NameFile_CursorIndexBoundaryY-1,X
|0CDC50| BNE .no_stick

; I don't think this is reachable through normal gameplay.
|0CDC52| LDA.l NameFile_CursorStickY-1,X

.no_stick
|0CDC56| STA.w $0B15

|0CDC59| STX.b $01

|0CDC5B| LDX.w $0B15

|0CDC5E| LDA.l NameFile_YtoXIndexOffset,X
|0CDC62| CLC
|0CDC63| ADC.w $0B10
|0CDC66| TAX

|0CDC67| LDA.l NameFile_CharacterLayout,X
|0CDC6B| CMP.b #$FF
|0CDC6D| BNE .not_character_that_doesnt_exit

; I don't think this ever happens
|0CDC6F| LDA.b $01
|0CDC71| BRA .next

;---------------------------------------------------------------------------------------------------

.not_character_that_doesnt_exit
|0CDC73| INC.w $0B14

|0CDC76| BRA .set_input

;---------------------------------------------------------------------------------------------------

.no_input
|0CDC78| STZ.w $00CA

.set_input
|0CDC7B| LDA.w $0002
|0CDC7E| STA.w $00CB

|0CDC81| RTS

;===================================================================================================

pool NameFile_DrawSelectedCharacter

.vram_position_low
|0CDC82| dw $0075 ; $C0EA in VRAM
|0CDC84| dw $0077 ; $C0EE in VRAM
|0CDC86| dw $0079 ; $C0F2 in VRAM
|0CDC88| dw $007B ; $C0F6 in VRAM

endpool

;---------------------------------------------------------------------------------------------------

NameFile_DrawSelectedCharacter:
|0CDC8A| PHB
|0CDC8B| PHK
|0CDC8C| PLB

|0CDC8D| LDA.w #$6000
|0CDC90| ORA.w .vram_position_low,Y
|0CDC93| XBA
|0CDC94| STA.w $1002

|0CDC97| XBA
|0CDC98| CLC
|0CDC99| ADC.w #$0020

|0CDC9C| XBA
|0CDC9D| STA.w $1008

|0CDCA0| LDA.w #$0100
|0CDCA3| STA.w $1004
|0CDCA6| STA.w $100A

|0CDCA9| LDA.l $7003D9,X
|0CDCAD| ORA.w #$1C00
|0CDCB0| STA.w $1006

|0CDCB3| CLC
|0CDCB4| ADC.w #$0010
|0CDCB7| STA.w $100C

;---------------------------------------------------------------------------------------------------

|0CDCBA| SEP #$30

|0CDCBC| LDA.b #$FF
|0CDCBE| STA.w $100E

|0CDCC1| LDA.b #$01
|0CDCC3| STA.b $14

|0CDCC5| PLB

|0CDCC6| RTS

;===================================================================================================

IntroLogoTilemap:
|0CDCC7| dw $0010, $7E47 ; VRAM $2000 | 1920 bytes | Fixed horizontal
|0CDCCB| dw $0976

|0CDCCD| dw $A010, $7E43 ; VRAM $2140 | 896 bytes | Fixed horizontal
|0CDCD1| dw $0977

|0CDCD3| dw $2511, $1700 ; VRAM $224A | 24 bytes | Horizontal
|0CDCD7| dw $3900, $3901, $3902, $3903, $3904, $3905, $3906, $3907
|0CDCE7| dw $3908, $3909, $390A, $390B

|0CDCEF| dw $3911, $0300 ; VRAM $2272 | 4 bytes | Horizontal
|0CDCF3| dw $397E, $397F

|0CDCF7| dw $4511, $2B00 ; VRAM $228A | 44 bytes | Horizontal
|0CDCFB| dw $390C, $390D, $390E, $390F, $3910, $3911, $3912, $3977
|0CDD0B| dw $3913, $3914, $3915, $3916, $3977, $3977, $3917, $3918
|0CDD1B| dw $3919, $391A, $391B, $391C, $391D, $391E

|0CDD27| dw $6511, $2B00 ; VRAM $22CA | 44 bytes | Horizontal
|0CDD2B| dw $391F, $3920, $3921, $3922, $3923, $3924, $3925, $3926
|0CDD3B| dw $3927, $3928, $3929, $392A, $392B, $392C, $392D, $392E
|0CDD4B| dw $392F, $3930, $3931, $3932, $3933, $3934

|0CDD57| dw $8511, $2B00 ; VRAM $230A | 44 bytes | Horizontal
|0CDD5B| dw $3935, $3936, $3937, $3938, $3939, $393A, $393B, $393C
|0CDD6B| dw $393D, $393E, $393F, $3940, $3941, $3942, $3943, $3944
|0CDD7B| dw $3945, $3946, $3947, $3948, $3949, $394A

|0CDD87| dw $A511, $2B00 ; VRAM $234A | 44 bytes | Horizontal
|0CDD8B| dw $394B, $394C, $394D, $394E, $394F, $3950, $3951, $3952
|0CDD9B| dw $3953, $3954, $3955, $3956, $3957, $3958, $3959, $395A
|0CDDAB| dw $395B, $395C, $395D, $395E, $395F, $3960

|0CDDB7| dw $C511, $2B00 ; VRAM $238A | 44 bytes | Horizontal
|0CDDBB| dw $3977, $3961, $3962, $3963, $3964, $3965, $3966, $3967
|0CDDCB| dw $3968, $3969, $396A, $396B, $396C, $396D, $396E, $396F
|0CDDDB| dw $3970, $3971, $3972, $3973, $3974, $3975

|0CDDE7| db $FF ; end of stripes data

;===================================================================================================

FileSelectTilemap:
|0CDDE8| dw $6260, $3700 ; VRAM $C0C4 | 56 bytes | Horizontal
|0CDDEC| dw $1D8A, $0188, $1D69, $0188, $1D65, $0188, $1D4A, $0188
|0CDDFC| dw $1D82, $0188, $1D4E, $0188, $1D6B, $0188, $0188, $1D6C
|0CDE0C| dw $0188, $1D4E, $0188, $1D65, $0188, $1D4E, $0188, $1D4C
|0CDE1C| dw $0188, $1D6D, $0188, $1D8B

|0CDE24| dw $8260, $3700 ; VRAM $C104 | 56 bytes | Horizontal
|0CDE28| dw $1D9A, $0188, $1D79, $0188, $1D75, $0188, $1D5A, $0188
|0CDE38| dw $1D92, $0188, $1D5E, $0188, $1D7B, $0188, $0188, $1D7C
|0CDE48| dw $0188, $1D5E, $0188, $1D75, $0188, $1D5E, $0188, $1D5C
|0CDE58| dw $0188, $1D7D, $0188, $1D9B

|0CDE60| dw $A562, $1500 ; VRAM $C54A | 22 bytes | Horizontal
|0CDE64| dw $1CAC, $0188, $1D23, $0188, $1D89, $0188, $1D04, $0188
|0CDE74| dw $1D89, $0188, $1D07

|0CDE7A| dw $C562, $1500 ; VRAM $C58A | 22 bytes | Horizontal
|0CDE7E| dw $1CBC, $0188, $1D33, $0188, $1D99, $0188, $1D14, $0188
|0CDE8E| dw $1D99, $0188, $1D17

|0CDE94| dw $2563, $1900 ; VRAM $C64A | 26 bytes | Horizontal
|0CDE98| dw $1D64, $0188, $1D62, $0188, $1D65, $0188, $1D65, $0188
|0CDEA8| dw $1D04, $0188, $1D89, $0188, $1D07

|0CDEB2| dw $4563, $1900 ; VRAM $C68A | 26 bytes | Horizontal
|0CDEB6| dw $1D74, $0188, $1D72, $0188, $1D75, $0188, $1D75, $0188
|0CDEC6| dw $1D14, $0188, $1D99, $0188, $1D17

|0CDED0| db $FF ; end of stripes data

;===================================================================================================

FileSelectNamesTilemap:
|0CDED1| dw $2861, $2D00 ; VRAM $C250 | 46 bytes | Horizontal
|0CDED5| dw $1D41, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CDEE5| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CDEF5| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

|0CDF03| dw $4861, $2D00 ; VRAM $C290 | 46 bytes | Horizontal
|0CDF07| dw $1D51, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
|0CDF17| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CDF27| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

|0CDF35| dw $A861, $2D00 ; VRAM $C350 | 46 bytes | Horizontal
|0CDF39| dw $1D42, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CDF49| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CDF59| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

|0CDF67| dw $C861, $2D00 ; VRAM $C390 | 46 bytes | Horizontal
|0CDF6B| dw $1D52, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
|0CDF7B| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CDF8B| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

|0CDF99| dw $2862, $2D00 ; VRAM $C450 | 46 bytes | Horizontal
|0CDF9D| dw $1D43, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CDFAD| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CDFBD| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

|0CDFCB| dw $4862, $2D00 ; VRAM $C490 | 46 bytes | Horizontal
|0CDFCF| dw $1D53, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
|0CDFDF| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CDFEF| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

|0CDFFD| db $FF ; end of stripes data

;===================================================================================================

FileSelectKILLFileTilemap:
|0CDFFE| dw $6760, $2100 ; VRAM $C0CE | 34 bytes | Horizontal
|0CE002| dw $1D8A, $0188, $1D64, $0188, $1D62, $0188, $1D65, $0188
|0CE012| dw $1D65, $0188, $1D04, $0188, $1D89, $0188, $1D07, $0188
|0CE022| dw $1D8B

|0CE024| dw $8760, $2100 ; VRAM $C10E | 34 bytes | Horizontal
|0CE028| dw $1D9A, $0188, $1D74, $0188, $1D72, $0188, $1D75, $0188
|0CE038| dw $1D75, $0188, $1D14, $0188, $1D99, $0188, $1D17, $0188
|0CE048| dw $1D9B

|0CE04A| dw $C360, $3100 ; VRAM $C186 | 50 bytes | Horizontal
|0CE04E| dw $0C67, $0188, $0C44, $0188, $0D06, $0188, $0D89, $0188
|0CE05E| dw $0CC8, $0188, $0D89, $0188, $0C0E, $0188, $0C0B, $0188
|0CE06E| dw $0C21, $0188, $0C60, $0188, $0C22, $0188, $0C08, $0188
|0CE07E| dw $0D86

|0CE080| dw $E360, $3100 ; VRAM $C1C6 | 50 bytes | Horizontal
|0CE084| dw $0C77, $0188, $0C54, $0188, $0D16, $0188, $0D99, $0188
|0CE094| dw $0CD8, $0188, $0D99, $0188, $0C1E, $0188, $0C1B, $0188
|0CE0A4| dw $0C31, $0188, $0C70, $0188, $0C32, $0188, $0C18, $0188
|0CE0B4| dw $0D96

|0CE0B6| dw $2563, $1B00 ; VRAM $C64A | 28 bytes | Horizontal
|0CE0BA| dw $1C05, $0188, $1C8A, $0188, $1C82, $0188, $1C69, $0188
|0CE0CA| dw $0188, $1C05, $0188, $1C63, $0188, $1C6A

|0CE0D6| dw $4563, $1B00 ; VRAM $C68A | 28 bytes | Horizontal
|0CE0DA| dw $1C15, $0188, $1C9A, $0188, $1C92, $0188, $1C79, $0188
|0CE0EA| dw $0188, $1C15, $0188, $1C73, $0188, $1C7A

|0CE0F6| db $FF ; end of stripes data

;===================================================================================================

KILLFile_BlankNameStripes:
; File 1
|0CE0F7| dw $2861, $2D00 ; VRAM $C250 | 46 bytes | Horizontal
|0CE0FB| dw $1D41, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE10B| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE11B| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

|0CE129| dw $4861, $2D00 ; VRAM $C290 | 46 bytes | Horizontal
|0CE12D| dw $1D51, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
|0CE13D| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE14D| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

; File 2
|0CE15B| dw $A861, $2D00 ; VRAM $C350 | 46 bytes | Horizontal
|0CE15F| dw $1D42, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE16F| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE17F| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

|0CE18D| dw $C861, $2D00 ; VRAM $C390 | 46 bytes | Horizontal
|0CE191| dw $1D52, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
|0CE1A1| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE1B1| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

; File 3
|0CE1BF| dw $2862, $2D00 ; VRAM $C450 | 46 bytes | Horizontal
|0CE1C3| dw $1D43, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE1D3| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE1E3| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

|0CE1F1| dw $4862, $2D00 ; VRAM $C490 | 46 bytes | Horizontal
|0CE1F5| dw $1D53, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
|0CE205| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE215| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188

|0CE223| db $FF ; end of stripes data

;===================================================================================================

FileSelectCopyFileTilemap:
|0CE224| dw $6860, $1D00 ; VRAM $C0D0 | 30 bytes | Horizontal
|0CE228| dw $1D8A, $0188, $1CAC, $0188, $1D23, $0188, $1D89, $0188
|0CE238| dw $1D04, $0188, $1D89, $0188, $1D07, $0188, $1D8B

|0CE246| dw $8860, $1D00 ; VRAM $C110 | 30 bytes | Horizontal
|0CE24A| dw $1D9A, $0188, $1CBC, $0188, $1D33, $0188, $1D99, $0188
|0CE25A| dw $1D14, $0188, $1D99, $0188, $1D17, $0188, $1D9B

|0CE268| dw $E210, $0300 ; VRAM $21C4 | 4 bytes | Horizontal
|0CE26C| dw $4882, $0881

|0CE270| dw $ED10, $0300 ; VRAM $21DA | 4 bytes | Horizontal
|0CE274| dw $0881, $0882

|0CE278| dw $0211, $14C0 ; VRAM $2204 | 22 bytes | Fixed vertical
|0CE27C| dw $4883

|0CE27E| dw $0E11, $14C0 ; VRAM $221C | 22 bytes | Fixed vertical
|0CE282| dw $0883

|0CE284| dw $6212, $0100 ; VRAM $24C4 | 2 bytes | Horizontal
|0CE288| dw $C882

|0CE28A| dw $6312, $1440 ; VRAM $24C6 | 22 bytes | Fixed horizontal
|0CE28E| dw $8881

|0CE290| dw $6E12, $0100 ; VRAM $24DC | 2 bytes | Horizontal
|0CE294| dw $8882

|0CE296| dw $2563, $1B00 ; VRAM $C64A | 28 bytes | Horizontal
|0CE29A| dw $1C05, $0188, $1C8A, $0188, $1C82, $0188, $1C69, $0188
|0CE2AA| dw $0188, $1C05, $0188, $1C63, $0188, $1C6A

|0CE2B6| dw $4563, $1B00 ; VRAM $C68A | 28 bytes | Horizontal
|0CE2BA| dw $1C15, $0188, $1C9A, $0188, $1C92, $0188, $1C79, $0188
|0CE2CA| dw $0188, $1C15, $0188, $1C73, $0188, $1C7A

|0CE2D6| db $FF ; end of stripes data

;===================================================================================================

CopyFile_HeaderStripe:
|0CE2D7| dw $C560, $0D00 ; VRAM $C18A | 14 bytes | Horizontal
|0CE2DB| dw $0C67, $0188, $0C6B, $0188, $0C0E, $0188, $0D86

|0CE2E9| dw $E560, $0D00 ; VRAM $C1CA | 14 bytes | Horizontal
|0CE2ED| dw $0C77, $0188, $0C7B, $0188, $0C1E, $0188, $0D96

|0CE2FB| dw $2561, $1100 ; VRAM $C24A | 18 bytes | Horizontal
|0CE2FF| dw $1D41, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE30F| dw $0188

|0CE311| dw $4561, $1100 ; VRAM $C28A | 18 bytes | Horizontal
|0CE315| dw $1D51, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
|0CE325| dw $0188

|0CE327| dw $A561, $1100 ; VRAM $C34A | 18 bytes | Horizontal
|0CE32B| dw $1D42, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE33B| dw $0188

|0CE33D| dw $C561, $1100 ; VRAM $C38A | 18 bytes | Horizontal
|0CE341| dw $1D52, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
|0CE351| dw $0188

|0CE353| dw $2562, $1100 ; VRAM $C44A | 18 bytes | Horizontal
|0CE357| dw $1D43, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE367| dw $0188

|0CE369| dw $4562, $1100 ; VRAM $C48A | 18 bytes | Horizontal
|0CE36D| dw $1D53, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
|0CE37D| dw $0188

|0CE37F| dw $F110, $1840 ; VRAM $21E2 | 26 bytes | Fixed horizontal
|0CE383| dw $087F

|0CE385| dw $1111, $0CC0 ; VRAM $2222 | 14 bytes | Fixed vertical
|0CE389| dw $087F

|0CE38B| dw $1D11, $0CC0 ; VRAM $223A | 14 bytes | Fixed vertical
|0CE38F| dw $087F

|0CE391| dw $F111, $1840 ; VRAM $23E2 | 26 bytes | Fixed horizontal
|0CE395| dw $087F

|0CE397| db $FF ; end of stripes data

;===================================================================================================

CopyFile_TargetHeaderStripes:
|0CE398| dw $D460, $0D00 ; VRAM $C1A8 | 14 bytes | Horizontal
|0CE39C| dw $0C67, $0188, $0C0C, $0188, $0C41, $0188, $0D86

|0CE3AA| dw $F460, $0D00 ; VRAM $C1E8 | 14 bytes | Horizontal
|0CE3AE| dw $0C77, $0188, $0C1C, $0188, $0C51, $0188, $0D96

|0CE3BC| dw $3461, $1100 ; VRAM $C268 | 18 bytes | Horizontal
|0CE3C0| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE3D0| dw $0188

|0CE3D2| dw $5461, $1100 ; VRAM $C2A8 | 18 bytes | Horizontal
|0CE3D6| dw $0188, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
|0CE3E6| dw $0188

|0CE3E8| dw $B461, $1100 ; VRAM $C368 | 18 bytes | Horizontal
|0CE3EC| dw $0188, $0188, $0188, $0188, $0188, $0188, $0188, $0188
|0CE3FC| dw $0188

|0CE3FE| dw $D461, $1100 ; VRAM $C3A8 | 18 bytes | Horizontal
|0CE402| dw $0188, $1D98, $0188, $0188, $0188, $0188, $0188, $0188
|0CE412| dw $0188

|0CE414| db $FF ; end of stripes data

;===================================================================================================

NamePlayerTilemap:
|0CE415| dw $0010, $7E41 ; VRAM $2000 | 384 bytes | Fixed horizontal
|0CE419| dw $0890

|0CE41B| dw $C010, $2CC0 ; VRAM $2180 | 46 bytes | Fixed vertical
|0CE41F| dw $0890

|0CE421| dw $C110, $2CC0 ; VRAM $2182 | 46 bytes | Fixed vertical
|0CE425| dw $0890

|0CE427| dw $DE10, $2CC0 ; VRAM $21BC | 46 bytes | Fixed vertical
|0CE42B| dw $0890

|0CE42D| dw $DF10, $2CC0 ; VRAM $21BE | 46 bytes | Fixed vertical
|0CE431| dw $0890

|0CE433| dw $8013, $3E40 ; VRAM $2700 | 64 bytes | Fixed horizontal
|0CE437| dw $0890

|0CE439| dw $3310, $0980 ; VRAM $2066 | 10 bytes | Vertical
|0CE43D| dw $4882, $4883, $4883, $4883, $C882

|0CE447| dw $3410, $1040 ; VRAM $2068 | 18 bytes | Fixed horizontal
|0CE44B| dw $0881

|0CE44D| dw $3D10, $0980 ; VRAM $207A | 10 bytes | Vertical
|0CE451| dw $0882, $0883, $0883, $0883, $8882

|0CE45B| dw $5410, $1040 ; VRAM $20A8 | 18 bytes | Fixed horizontal
|0CE45F| dw $087F

|0CE461| dw $7410, $1040 ; VRAM $20E8 | 18 bytes | Fixed horizontal
|0CE465| dw $087F

|0CE467| dw $9410, $1040 ; VRAM $2128 | 18 bytes | Fixed horizontal
|0CE46B| dw $087F

|0CE46D| dw $B410, $1040 ; VRAM $2168 | 18 bytes | Fixed horizontal
|0CE471| dw $8881

|0CE473| dw $C210, $0100 ; VRAM $2184 | 2 bytes | Horizontal
|0CE477| dw $4885

|0CE479| dw $C310, $3240 ; VRAM $2186 | 52 bytes | Fixed horizontal
|0CE47D| dw $0884

|0CE47F| dw $DD10, $0100 ; VRAM $21BA | 2 bytes | Horizontal
|0CE483| dw $0885

|0CE485| dw $E210, $26C0 ; VRAM $21C4 | 40 bytes | Fixed vertical
|0CE489| dw $4893

|0CE48B| dw $FD10, $26C0 ; VRAM $21FA | 40 bytes | Fixed vertical
|0CE48F| dw $0893

|0CE491| dw $6213, $0100 ; VRAM $26C4 | 2 bytes | Horizontal
|0CE495| dw $C885

|0CE497| dw $6313, $3240 ; VRAM $26C6 | 52 bytes | Fixed horizontal
|0CE49B| dw $8884

|0CE49D| dw $7D13, $0100 ; VRAM $26FA | 2 bytes | Horizontal
|0CE4A1| dw $8885

|0CE4A3| dw $4310, $0F00 ; VRAM $2086 | 16 bytes | Horizontal
|0CE4A7| dw $0886, $0887, $0888, $0889, $088A, $088B, $088C, $088D

|0CE4B7| dw $6310, $0F00 ; VRAM $20C6 | 16 bytes | Horizontal
|0CE4BB| dw $0896, $0897, $0898, $0899, $089A, $089B, $089C, $089D

|0CE4CB| dw $EF10, $26C0 ; VRAM $21DE | 40 bytes | Fixed vertical
|0CE4CF| dw $0495

|0CE4D1| dw $E360, $3900 ; VRAM $C1C6 | 58 bytes | Horizontal
|0CE4D5| dw $1C00, $0188, $1C01, $0188, $1C02, $0188, $1C03, $0188
|0CE4E5| dw $1C04, $0188, $0188, $0188, $0188, $0188, $1C25, $0188
|0CE4F5| dw $1C26, $0188, $1C27, $0188, $1C2D, $0188, $1C2E, $0188
|0CE505| dw $0188, $0188, $1CA0, $0188, $1CA1

|0CE50F| dw $0361, $3900 ; VRAM $C206 | 58 bytes | Horizontal
|0CE513| dw $1C10, $0188, $1C11, $0188, $1C12, $0188, $1C13, $0188
|0CE523| dw $1C14, $0188, $0188, $0188, $0188, $0188, $1C35, $0188
|0CE533| dw $1C36, $0188, $1C37, $0188, $1C3D, $0188, $1C3E, $0188
|0CE543| dw $0188, $0188, $1CB0, $0188, $1CB1

|0CE54D| dw $2361, $3900 ; VRAM $C246 | 58 bytes | Horizontal
|0CE551| dw $1C08, $0188, $1C09, $0188, $1C0A, $0188, $1C0B, $0188
|0CE561| dw $1C0C, $0188, $0188, $0188, $0188, $0188, $1C2F, $0188
|0CE571| dw $1C45, $0188, $1C46, $0188, $1C47, $0188, $1C4D, $0188
|0CE581| dw $0188, $0188, $1CA8, $0188, $1CA9

|0CE58B| dw $4361, $3900 ; VRAM $C286 | 58 bytes | Horizontal
|0CE58F| dw $1C18, $0188, $1C19, $0188, $1C1A, $0188, $1C1B, $0188
|0CE59F| dw $1C1C, $0188, $0188, $0188, $0188, $0188, $1C3F, $0188
|0CE5AF| dw $1C55, $0188, $1C56, $0188, $1C57, $0188, $1C5D, $0188
|0CE5BF| dw $0188, $0188, $1CB8, $0188, $1CB9

|0CE5C9| dw $6361, $3900 ; VRAM $C2C6 | 58 bytes | Horizontal
|0CE5CD| dw $1C20, $0188, $1C21, $0188, $1C22, $0188, $1C23, $0188
|0CE5DD| dw $1C24, $0188, $0188, $0188, $0188, $0188, $1C4E, $0188
|0CE5ED| dw $1C4F, $0188, $1C65, $0188, $1C66, $0188, $1C67, $0188
|0CE5FD| dw $0188, $0188, $1CC0, $0188, $1CC1

|0CE607| dw $8361, $3900 ; VRAM $C306 | 58 bytes | Horizontal
|0CE60B| dw $1C30, $0188, $1C31, $0188, $1C32, $0188, $1C33, $0188
|0CE61B| dw $1C34, $0188, $0188, $0188, $0188, $0188, $1C5E, $0188
|0CE62B| dw $1C5F, $0188, $1C75, $0188, $1C76, $0188, $1C77, $0188
|0CE63B| dw $0188, $0188, $1CD0, $0188, $1CD1

|0CE645| dw $A361, $3900 ; VRAM $C346 | 58 bytes | Horizontal
|0CE649| dw $1C28, $0188, $1C29, $0188, $1C2A, $0188, $1C2B, $0188
|0CE659| dw $1C2C, $0188, $0188, $0188, $0188, $0188, $1C6D, $0188
|0CE669| dw $1C6E, $0188, $1C6F, $0188, $1C80, $0188, $1C81, $0188
|0CE679| dw $0188, $0188, $1CC8, $0188, $1CC9

|0CE683| dw $C361, $3900 ; VRAM $C386 | 58 bytes | Horizontal
|0CE687| dw $1C38, $0188, $1C39, $0188, $1C3A, $0188, $1C3B, $0188
|0CE697| dw $1C3C, $0188, $0188, $0188, $0188, $0188, $1C7D, $0188
|0CE6A7| dw $1C7E, $0188, $1C7F, $0188, $1C90, $0188, $1C91, $0188
|0CE6B7| dw $0188, $0188, $1CD8, $0188, $1CD9

|0CE6C1| dw $E361, $3900 ; VRAM $C3C6 | 58 bytes | Horizontal
|0CE6C5| dw $1C40, $0188, $1C41, $0188, $1C42, $0188, $1C43, $0188
|0CE6D5| dw $1C44, $0188, $0188, $0188, $0188, $0188, $1C82, $0188
|0CE6E5| dw $1C83, $0188, $1C84, $0188, $1C85, $0188, $1C86, $0188
|0CE6F5| dw $0188, $0188, $1CE0, $0188, $1CE1

|0CE6FF| dw $0362, $3900 ; VRAM $C406 | 58 bytes | Horizontal
|0CE703| dw $1C50, $0188, $1C51, $0188, $1C52, $0188, $1C53, $0188
|0CE713| dw $1C54, $0188, $0188, $0188, $0188, $0188, $1C92, $0188
|0CE723| dw $1C93, $0188, $1C94, $0188, $1C95, $0188, $1C96, $0188
|0CE733| dw $0188, $0188, $1CF0, $0188, $1CF1

|0CE73D| dw $2362, $3900 ; VRAM $C446 | 58 bytes | Horizontal
|0CE741| dw $1C48, $0188, $1C49, $0188, $1C4A, $0188, $1C4B, $0188
|0CE751| dw $1C4C, $0188, $0188, $0188, $0188, $0188, $1C8B, $0188
|0CE761| dw $1C8C, $0188, $1C8D, $0188, $1C8E, $0188, $1C8F, $0188
|0CE771| dw $0188, $0188, $1CE8, $0188, $1CE9

|0CE77B| dw $4362, $3900 ; VRAM $C486 | 58 bytes | Horizontal
|0CE77F| dw $1C58, $0188, $1C59, $0188, $1C5A, $0188, $1C5B, $0188
|0CE78F| dw $1C5C, $0188, $0188, $0188, $0188, $0188, $1C9B, $0188
|0CE79F| dw $1C9C, $0188, $1C9D, $0188, $1C9E, $0188, $1C9F, $0188
|0CE7AF| dw $0188, $0188, $1CF8, $0188, $1CF9

|0CE7B9| dw $6362, $3900 ; VRAM $C4C6 | 58 bytes | Horizontal
|0CE7BD| dw $1C60, $0188, $1C61, $0188, $1C62, $0188, $1C63, $0188
|0CE7CD| dw $1C64, $0188, $0188, $0188, $0188, $0188, $1C87, $0188
|0CE7DD| dw $1C88, $0188, $1C89, $0188, $0188, $0188, $1C8A, $0188
|0CE7ED| dw $0188, $0188, $1D00, $0188, $1D01

|0CE7F7| dw $8362, $3900 ; VRAM $C506 | 58 bytes | Horizontal
|0CE7FB| dw $1C70, $0188, $1C71, $0188, $1C72, $0188, $1C73, $0188
|0CE80B| dw $1C74, $0188, $0188, $0188, $0188, $0188, $1C97, $0188
|0CE81B| dw $1C98, $0188, $1C99, $0188, $0188, $0188, $1C9A, $0188
|0CE82B| dw $0188, $0188, $1D10, $0188, $1D11

|0CE835| dw $A362, $1100 ; VRAM $C546 | 18 bytes | Horizontal
|0CE839| dw $1C05, $0188, $0188, $0188, $1C06, $0188, $0188, $0188
|0CE849| dw $1C07

|0CE84B| dw $C362, $1100 ; VRAM $C586 | 18 bytes | Horizontal
|0CE84F| dw $1C15, $0188, $0188, $0188, $1C16, $0188, $0188, $0188
|0CE85F| dw $1C17

|0CE861| dw $BD62, $0100 ; VRAM $C57A | 2 bytes | Horizontal
|0CE865| dw $1CA5

|0CE867| dw $DD62, $0100 ; VRAM $C5BA | 2 bytes | Horizontal
|0CE86B| dw $1CB5

|0CE86D| dw $E362, $1100 ; VRAM $C5C6 | 18 bytes | Horizontal
|0CE871| dw $1C68, $0188, $1C69, $0188, $1C6A, $0188, $1C6B, $0188
|0CE881| dw $1C6C

|0CE883| dw $0363, $1100 ; VRAM $C606 | 18 bytes | Horizontal
|0CE887| dw $1C78, $0188, $1C79, $0188, $1C7A, $0188, $1C7B, $0188
|0CE897| dw $1C7C

|0CE899| dw $2363, $1100 ; VRAM $C646 | 18 bytes | Horizontal
|0CE89D| dw $1C0D, $0188, $1C0E, $0188, $1C0F, $0188, $0188, $0188
|0CE8AD| dw $1D89

|0CE8AF| dw $4363, $1100 ; VRAM $C686 | 18 bytes | Horizontal
|0CE8B3| dw $1C1D, $0188, $1C1E, $0188, $1C1F, $0188, $0188, $0188
|0CE8C3| dw $1D99

|0CE8C5| dw $FD62, $0500 ; VRAM $C5FA | 6 bytes | Horizontal
|0CE8C9| dw $1D08, $0188, $1D09

|0CE8CF| dw $1D63, $0500 ; VRAM $C63A | 6 bytes | Horizontal
|0CE8D3| dw $1D18, $0188, $1D19

|0CE8D9| dw $3D63, $0500 ; VRAM $C67A | 6 bytes | Horizontal
|0CE8DD| dw $1CAD, $0188, $1CAE

|0CE8E3| dw $5D63, $0500 ; VRAM $C6BA | 6 bytes | Horizontal
|0CE8E7| dw $1CBD, $0188, $1CBE

|0CE8ED| dw $F162, $0D00 ; VRAM $C5E2 | 14 bytes | Horizontal
|0CE8F1| dw $1D8A, $0188, $1D8B, $0188, $1D4E, $1D67, $1D4D

|0CE8FF| dw $1163, $0D00 ; VRAM $C622 | 14 bytes | Horizontal
|0CE903| dw $1D9A, $0188, $1D9B, $0188, $1D5E, $1D77, $1D5D

|0CE911| dw $E164, $3900 ; VRAM $C9C2 | 58 bytes | Horizontal
|0CE915| dw $1CA2, $0188, $1CA3, $0188, $1CA4, $0188, $0188, $0188
|0CE925| dw $0188, $0188, $1CC5, $0188, $1CC6, $0188, $1CC7, $0188
|0CE935| dw $1CCD, $0188, $1CCE, $0188, $0188, $0188, $1D4A, $0188
|0CE945| dw $1D4B, $0188, $1D4C, $0188, $1D4D

|0CE94F| dw $0165, $3900 ; VRAM $CA02 | 58 bytes | Horizontal
|0CE953| dw $1CB2, $0188, $1CB3, $0188, $1CB4, $0188, $0188, $0188
|0CE963| dw $0188, $0188, $1CD5, $0188, $1CD6, $0188, $1CD7, $0188
|0CE973| dw $1CDD, $0188, $1CDE, $0188, $0188, $0188, $1D5A, $0188
|0CE983| dw $1D5B, $0188, $1D5C, $0188, $1D5D

|0CE98D| dw $2165, $3900 ; VRAM $CA42 | 58 bytes | Horizontal
|0CE991| dw $1CAA, $0188, $1CAB, $0188, $1CAC, $0188, $0188, $0188
|0CE9A1| dw $0188, $0188, $1CCF, $0188, $1CE5, $0188, $1CE6, $0188
|0CE9B1| dw $1CE7, $0188, $1CED, $0188, $0188, $0188, $1D4E, $0188
|0CE9C1| dw $1D4F, $0188, $1D60, $0188, $1D61

|0CE9CB| dw $4165, $3900 ; VRAM $CA82 | 58 bytes | Horizontal
|0CE9CF| dw $1CBA, $0188, $1CBB, $0188, $1CBC, $0188, $0188, $0188
|0CE9DF| dw $0188, $0188, $1CDF, $0188, $1CF5, $0188, $1CF6, $0188
|0CE9EF| dw $1CF7, $0188, $1CFD, $0188, $0188, $0188, $1D5E, $0188
|0CE9FF| dw $1D5F, $0188, $1D70, $0188, $1D71

|0CEA09| dw $6165, $3900 ; VRAM $CAC2 | 58 bytes | Horizontal
|0CEA0D| dw $1CC2, $0188, $1CC3, $0188, $1CC4, $0188, $0188, $0188
|0CEA1D| dw $0188, $0188, $1CEE, $0188, $1CEF, $0188, $1D05, $0188
|0CEA2D| dw $1D06, $0188, $1D07, $0188, $0188, $0188, $1D62, $0188
|0CEA3D| dw $1D63, $0188, $1D64, $0188, $1D65

|0CEA47| dw $8165, $3900 ; VRAM $CB02 | 58 bytes | Horizontal
|0CEA4B| dw $1CD2, $0188, $1CD3, $0188, $1CD4, $0188, $0188, $0188
|0CEA5B| dw $0188, $0188, $1CFE, $0188, $1CFF, $0188, $1D15, $0188
|0CEA6B| dw $1D16, $0188, $1D17, $0188, $0188, $0188, $1D72, $0188
|0CEA7B| dw $1D73, $0188, $1D74, $0188, $1D75

|0CEA85| dw $A165, $3900 ; VRAM $CB42 | 58 bytes | Horizontal
|0CEA89| dw $1CCA, $0188, $1CCB, $0188, $1CCC, $0188, $0188, $0188
|0CEA99| dw $0188, $0188, $1D0D, $0188, $1D0E, $0188, $1D0F, $0188
|0CEAA9| dw $1D20, $0188, $1D21, $0188, $0188, $0188, $1D66, $0188
|0CEAB9| dw $1D67, $0188, $1D68, $0188, $1D69

|0CEAC3| dw $C165, $3900 ; VRAM $CB82 | 58 bytes | Horizontal
|0CEAC7| dw $1CDA, $0188, $1CDB, $0188, $1CDC, $0188, $0188, $0188
|0CEAD7| dw $0188, $0188, $1D1D, $0188, $1D1E, $0188, $1D1F, $0188
|0CEAE7| dw $1D30, $0188, $1D31, $0188, $0188, $0188, $1D76, $0188
|0CEAF7| dw $1D77, $0188, $1D78, $0188, $1D79

|0CEB01| dw $E165, $3900 ; VRAM $CBC2 | 58 bytes | Horizontal
|0CEB05| dw $1CE2, $0188, $1CE3, $0188, $1CE4, $0188, $0188, $0188
|0CEB15| dw $0188, $0188, $1D22, $0188, $1D23, $0188, $1D24, $0188
|0CEB25| dw $1D25, $0188, $1D26, $0188, $1D88, $0188, $1D6A, $0188
|0CEB35| dw $1D6B, $0188, $1D6C, $0188, $1D6D

|0CEB3F| dw $0166, $3900 ; VRAM $CC02 | 58 bytes | Horizontal
|0CEB43| dw $1CF2, $0188, $1CF3, $0188, $1CF4, $0188, $0188, $0188
|0CEB53| dw $0188, $0188, $1D32, $0188, $1D33, $0188, $1D34, $0188
|0CEB63| dw $1D35, $0188, $1D36, $0188, $1D88, $0188, $1D7A, $0188
|0CEB73| dw $1D7B, $0188, $1D7C, $0188, $1D7D

|0CEB7D| dw $2166, $3900 ; VRAM $CC42 | 58 bytes | Horizontal
|0CEB81| dw $1CEA, $0188, $1CEB, $0188, $1CEC, $0188, $0188, $0188
|0CEB91| dw $0188, $0188, $1D2B, $0188, $1D2C, $0188, $1D2D, $0188
|0CEBA1| dw $1D2E, $0188, $1D2F, $0188, $1D88, $0188, $1D6E, $0188
|0CEBB1| dw $1D6F, $0188, $1D80, $0188, $1D81

|0CEBBB| dw $4166, $3900 ; VRAM $CC82 | 58 bytes | Horizontal
|0CEBBF| dw $1CFA, $0188, $1CFB, $0188, $1CFC, $0188, $0188, $0188
|0CEBCF| dw $0188, $0188, $1D3B, $0188, $1D3C, $0188, $1D3D, $0188
|0CEBDF| dw $1D3E, $0188, $1D3F, $0188, $1D88, $0188, $1D7E, $0188
|0CEBEF| dw $1D7F, $0188, $1D90, $0188, $1D91

|0CEBF9| dw $6166, $3900 ; VRAM $CCC2 | 58 bytes | Horizontal
|0CEBFD| dw $1D02, $0188, $1D03, $0188, $1D04, $0188, $0188, $0188
|0CEC0D| dw $0188, $0188, $1D27, $0188, $1D28, $0188, $1D29, $0188
|0CEC1D| dw $0188, $0188, $1D2A, $1D88, $0188, $0188, $1D82, $0188
|0CEC2D| dw $1D83, $0188, $1D89, $0188, $1D8E

|0CEC37| dw $8166, $3900 ; VRAM $CD02 | 58 bytes | Horizontal
|0CEC3B| dw $1D12, $0188, $1D13, $0188, $1D14, $0188, $0188, $0188
|0CEC4B| dw $0188, $0188, $1D37, $0188, $1D38, $0188, $1D39, $0188
|0CEC5B| dw $0188, $0188, $1D3A, $1D88, $0188, $0188, $1D92, $0188
|0CEC6B| dw $1D93, $0188, $1D99, $0188, $1D9E

|0CEC75| dw $A166, $0900 ; VRAM $CD42 | 10 bytes | Horizontal
|0CEC79| dw $1CA6, $0188, $0188, $0188, $1CA7

|0CEC83| dw $C166, $0900 ; VRAM $CD82 | 10 bytes | Horizontal
|0CEC87| dw $1CB6, $0188, $0188, $0188, $1CB7

|0CEC91| dw $E166, $0900 ; VRAM $CDC2 | 10 bytes | Horizontal
|0CEC95| dw $1D0A, $0188, $1D0B, $0188, $1D0C

|0CEC9F| dw $0167, $0900 ; VRAM $CE02 | 10 bytes | Horizontal
|0CECA3| dw $1D1A, $0188, $1D1B, $0188, $1D1C

|0CECAD| dw $2167, $0900 ; VRAM $CE42 | 10 bytes | Horizontal
|0CECB1| dw $1CAF, $0188, $0188, $0188, $1D89

|0CECBB| dw $4167, $0900 ; VRAM $CE82 | 10 bytes | Horizontal
|0CECBF| dw $1CBF, $0188, $0188, $0188, $1D99

|0CECC9| dw $F766, $0D00 ; VRAM $CDEE | 14 bytes | Horizontal
|0CECCD| dw $1D8A, $0188, $1D8B, $0188, $1D4E, $1D67, $1D4D

|0CECDB| dw $1767, $0D00 ; VRAM $CE2E | 14 bytes | Horizontal
|0CECDF| dw $1D9A, $0188, $1D9B, $0188, $1D5E, $1D77, $1D5D

|0CECED| db $FF ; end of stripes data

;===================================================================================================

pool Intro_DisplayLogo

.object_a
|0CECEE| db $60, $70, $80, $88

.object_b
|0CECF2| db $69, $6B, $6D, $6E

endpool

;---------------------------------------------------------------------------------------------------

Intro_DisplayLogo:
|0CECF6| PHB
|0CECF7| PHK
|0CECF8| PLB

|0CECF9| LDY.b #$03
|0CECFB| LDX.b #$0C

.next
|0CECFD| LDA.b #$02
|0CECFF| STA.w $0A20,Y

|0CED02| LDA.w .object_a,Y
|0CED05| STA.w $0800,X

|0CED08| LDA.b #$68
|0CED0A| STA.w $0801,X

|0CED0D| LDA.w .object_b,Y
|0CED10| STA.w $0802,X

|0CED13| LDA.b #$32
|0CED15| STA.w $0803,X

|0CED18| DEX
|0CED19| DEX
|0CED1A| DEX
|0CED1B| DEX

|0CED1C| DEY
|0CED1D| BPL .next

|0CED1F| PLB

|0CED20| RTS

;===================================================================================================

Module14_Attract:
|0CED21| LDA.b $13
|0CED23| BEQ .continue

|0CED25| CMP.b #$80
|0CED27| BEQ .continue

|0CED29| LDA.b $22
|0CED2B| BEQ .continue

|0CED2D| CMP.b #$02
|0CED2F| BEQ .continue

|0CED31| CMP.b #$06
|0CED33| BEQ .continue

; Check for B or Start
|0CED35| LDA.b $F4
|0CED37| AND.b #$90
|0CED39| BEQ .continue

|0CED3B| LDA.b #$09
|0CED3D| STA.b $22

.continue
|0CED3F| LDA.b $22
|0CED41| ASL A
|0CED42| TAX

|0CED43| JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

.vectors
|0CED46| dw Attract_FadeOut          ; 0x00
|0CED48| dw Attract_Initialize       ; 0x01
|0CED4A| dw Attract_FadeOutSequence  ; 0x02
|0CED4C| dw Attract_LoadNewScene     ; 0x03
|0CED4E| dw Attract_FadeInSequence   ; 0x04
|0CED50| dw Attract_EnactStory       ; 0x05
|0CED52| dw Attract_FadeOutSequence  ; 0x06
|0CED54| dw Attract_LoadNewScene     ; 0x07
|0CED56| dw Attract_EnactStory       ; 0x08
|0CED58| dw Attract_SkipToFileSelect ; 0x09

;===================================================================================================

Attract_FadeOut:
|0CED5A| LDA.b $13
|0CED5C| BEQ .fully_faded

|0CED5E| DEC.b $13

|0CED60| RTL

;---------------------------------------------------------------------------------------------------

.fully_faded
|0CED61| JSL EnableForceBlank

|0CED65| LDA.b #$FF
|0CED67| STA.w $0128

|0CED6A| STZ.w $012A
|0CED6D| STZ.w $1F0C

|0CED70| INC.b $22

|0CED72| RTL

;===================================================================================================

Attract_Initialize:
|0CED73| LDX.b #$50

.next
|0CED75| STZ.b $20,X

|0CED77| DEX
|0CED78| BPL .next

|0CED7A| JSL EraseTilemaps_normal
|0CED7E| JSL TransferAttractPlaques

|0CED82| LDA.b #$01
|0CED84| STA.w $0AB2
|0CED87| STZ.w $0AA9
|0CED8A| JSL PaletteLoad_HUD

|0CED8E| LDA.b #$02
|0CED90| STA.w $0AA9
|0CED93| JSL PaletteLoad_HUD

|0CED97| JSL PaletteLoad_LinkArmorAndGloves

|0CED9B| LDA.b #$00 ; RGB: #000070
|0CED9D| STA.l $7EC53A

|0CEDA1| LDA.b #$38
|0CEDA3| STA.l $7EC53B

|0CEDA7| INC.b $15

;---------------------------------------------------------------------------------------------------

|0CEDA9| LDA.b #$14
|0CEDAB| STA.b $EA

|0CEDAD| JSR Attract_BuildBackgrounds

|0CEDB0| REP #$10

|0CEDB2| STZ.w $1CD8

|0CEDB5| LDX.w #$0110 ; MESSAGE 0110
|0CEDB8| STX.w $1CF0

|0CEDBB| STZ.b $E8
|0CEDBD| STZ.b $E9

|0CEDBF| LDX.w #$0E9C
|0CEDC2| STX.w $0200

|0CEDC5| INC.b $22
|0CEDC7| INC.b $22
|0CEDC9| INC.b $22

|0CEDCB| SEP #$10

|0CEDCD| JSR Attract_SetUpWindowingHDMA

;---------------------------------------------------------------------------------------------------

|0CEDD0| STZ.b $96
|0CEDD2| STZ.b $97

|0CEDD4| LDA.b #$B0
|0CEDD6| STA.b $98

|0CEDD8| LDA.b #$03
|0CEDDA| STA.b $1E
|0CEDDC| STZ.b $1F

|0CEDDE| LDA.b #$25 ; Fixed color RGB: #282828
|0CEDE0| STA.b $9C

|0CEDE2| LDA.b #$45
|0CEDE4| STA.b $9D

|0CEDE6| LDA.b #$85
|0CEDE8| STA.b $9E

|0CEDEA| LDA.b #$10
|0CEDEC| STA.b $99

|0CEDEE| LDA.b #$A3
|0CEDF0| STA.b $9A

|0CEDF2| STZ.w WBGLOG
|0CEDF5| STZ.w WOBJLOG

|0CEDF8| LDA.b #$C0
|0CEDFA| STA.b $9B

|0CEDFC| LDA.b #$06 ; SONG 06
|0CEDFE| STA.w $012C

|0CEE01| INC.b $27

|0CEE03| RTL

;===================================================================================================

Attract_FadeInStep:
|0CEE04| LDA.b $13
|0CEE06| CMP.b #$0F
|0CEE08| BEQ .step

|0CEE0A| DEC.b $5E
|0CEE0C| BPL .exit

|0CEE0E| INC.b $13

|0CEE10| LDA.b #$01
|0CEE12| STA.b $5E

.exit
|0CEE14| RTS

.step
|0CEE15| INC.b $5F

|0CEE17| RTS

;===================================================================================================

Attract_FadeInSequence:
|0CEE18| LDA.b $13
|0CEE1A| CMP.b #$0F
|0CEE1C| BEQ Attract_FadedSequenceAdvance

|0CEE1E| DEC.b $5E
|0CEE20| BPL .exit

|0CEE22| INC.b $13

|0CEE24| LDA.b #$01
|0CEE26| STA.b $5E

.exit
|0CEE28| RTL

;===================================================================================================

Attract_FadeOutSequence:
|0CEE29| LDA.b $13
|0CEE2B| BEQ .advance

|0CEE2D| DEC.b $5E
|0CEE2F| BPL .exit

|0CEE31| DEC.b $13

|0CEE33| LDA.b #$01
|0CEE35| STA.b $5E

.exit
|0CEE37| RTL

.advance
|0CEE38| JSL EnableForceBlank
|0CEE3C| JSL EraseTilemaps_normal

;===================================================================================================

Attract_FadedSequenceAdvance:
|0CEE40| INC.b $22

|0CEE42| RTL

;===================================================================================================

Attract_LoadNewScene:
|0CEE43| LDA.b $23
|0CEE45| ASL A
|0CEE46| TAX

|0CEE47| JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

.vectors
|0CEE4A| dw AttractScene_PolkaDots    ; 0x00
|0CEE4C| dw AttractScene_WorldMap     ; 0x01
|0CEE4E| dw AttractScene_ThroneRoom   ; 0x02
|0CEE50| dw AttractScene_Prison       ; 0x03
|0CEE52| dw AttractScene_AgahnimAltar ; 0x04
|0CEE54| dw AttractScene_EndOfStory   ; 0x05

;===================================================================================================

AttractScene_PolkaDots:
|0CEE56| STZ.b $26

|0CEE58| INC.b $22

|0CEE5A| STZ.b $13

|0CEE5C| RTL

;===================================================================================================

AttractScene_WorldMap:
|0CEE5D| LDA.b #$13
|0CEE5F| STA.w BG1SC

|0CEE62| LDA.b #$03
|0CEE64| STA.w BG2SC

|0CEE67| LDA.b #$80
|0CEE69| STA.b $99

|0CEE6B| LDA.b #$21
|0CEE6D| STA.b $9A

|0CEE6F| LDA.b #$07
|0CEE71| STA.w BGMODE
|0CEE74| STA.b $94

|0CEE76| LDA.b #$80
|0CEE78| STA.w M7SEL

|0CEE7B| JSL WorldMap_LoadLightWorldMap

;---------------------------------------------------------------------------------------------------

|0CEE7F| REP #$20

|0CEE81| LDA.w #$00ED
|0CEE84| STA.w $063A

|0CEE87| LDA.w #$0100
|0CEE8A| STA.w $0638

|0CEE8D| LDA.w #$0080
|0CEE90| STA.w $0120

|0CEE93| LDA.w #$00C0
|0CEE96| STA.w $0124

|0CEE99| SEP #$20

|0CEE9B| LDA.b #$FF
|0CEE9D| STA.w $0637

|0CEEA0| JSR Attract_ControlMapZoom

|0CEEA3| LDA.b #$01
|0CEEA5| STA.b $25

|0CEEA7| INC.b $22

|0CEEA9| STZ.b $13

|0CEEAB| RTL

;===================================================================================================

AttractScene_ThroneRoom:
|0CEEAC| STZ.w HDMAEN
|0CEEAF| STZ.b $9B

|0CEEB1| LDA.b #$02
|0CEEB3| STA.b $99

|0CEEB5| LDA.b #$20
|0CEEB7| STA.b $9A

|0CEEB9| LDA.b #$0A
|0CEEBB| STA.w $0AA4

|0CEEBE| JSL LoadCommonSprites_long

|0CEEC2| REP #$20

|0CEEC4| LDA.b $20
|0CEEC6| PHA

|0CEEC7| LDA.b $22
|0CEEC9| PHA

|0CEECA| SEP #$20

|0CEECC| LDA.b #$74
|0CEECE| JSL LoadRoomForAttract

;---------------------------------------------------------------------------------------------------

|0CEED2| REP #$20

|0CEED4| PLA
|0CEED5| STA.b $22

|0CEED7| PLA
|0CEED8| STA.b $20

|0CEEDA| SEP #$20

|0CEEDC| LDA.b #$00
|0CEEDE| STA.w $0AB6

|0CEEE1| LDA.b #$00
|0CEEE3| STA.w $0AAC

|0CEEE6| LDA.b #$0E
|0CEEE8| STA.w $0AAD

|0CEEEB| LDA.b #$03
|0CEEED| STA.w $0AAE

|0CEEF0| LDX.b #$7E
|0CEEF2| LDA.b #$00
|0CEEF4| JSL SaveAndLoadAttractPalettes

|0CEEF8| LDA.b #$00 ; RGB: #0008C0
|0CEEFA| STA.l $7EC53A

|0CEEFE| LDA.b #$38
|0CEF00| STA.l $7EC53B

;---------------------------------------------------------------------------------------------------

|0CEF04| STZ.w $1CD8

|0CEF07| LDA.b #$11 ; MESSAGE 0111
|0CEF09| STA.w $1CF0

|0CEF0C| LDA.b #$01
|0CEF0E| STA.w $1CF1

|0CEF11| LDA.b #$02
|0CEF13| STA.b $25

|0CEF15| LDA.b #$E0
|0CEF17| STA.b $2C

|0CEF19| LDA.b #$C0
|0CEF1B| STA.b $64

;===================================================================================================

AttractScene_AdvanceFromDungeon:
|0CEF1D| INC.b $22

|0CEF1F| STZ.b $13
|0CEF21| STZ.b $EA

|0CEF23| LDA.w $011F
|0CEF26| AND.b #$01
|0CEF28| STA.w $011F

|0CEF2B| LDA.w $0123
|0CEF2E| AND.b #$01
|0CEF30| STA.w $0123

|0CEF33| LDA.b $E3
|0CEF35| AND.b #$01
|0CEF37| STA.b $E3

|0CEF39| LDA.b $E9
|0CEF3B| AND.b #$01
|0CEF3D| STA.b $E9

|0CEF3F| RTL

;===================================================================================================

AttractScene_Prison:
|0CEF40| STZ.b $99
|0CEF42| STZ.b $9A

|0CEF44| REP #$20

|0CEF46| LDA.b $20
|0CEF48| PHA

|0CEF49| LDA.b $22
|0CEF4B| PHA

|0CEF4C| SEP #$20

|0CEF4E| LDA.b #$73
|0CEF50| JSL LoadRoomForAttract

|0CEF54| REP #$20

|0CEF56| PLA
|0CEF57| STA.b $22

|0CEF59| PLA
|0CEF5A| STA.b $20

|0CEF5C| SEP #$20

|0CEF5E| LDA.b #$02
|0CEF60| STA.w $0AB6

|0CEF63| LDA.b #$00
|0CEF65| STA.w $0AAC

|0CEF68| LDA.b #$0E
|0CEF6A| STA.w $0AAD

|0CEF6D| LDA.b #$03
|0CEF6F| STA.w $0AAE

|0CEF72| LDX.b #$7F
|0CEF74| LDA.b #$01
|0CEF76| JSL SaveAndLoadAttractPalettes

|0CEF7A| LDA.b #$00 ; RGB: #000070
|0CEF7C| STA.l $7EC53A

|0CEF80| LDA.b #$38
|0CEF82| STA.l $7EC53B

;---------------------------------------------------------------------------------------------------

|0CEF86| STZ.w $1CD8

|0CEF89| LDA.b #$12 ; MESSAGE 0112
|0CEF8B| STA.w $1CF0

|0CEF8E| LDA.b #$01
|0CEF90| STA.w $1CF1

|0CEF93| LDA.b #$94
|0CEF95| STA.b $2B

|0CEF97| LDA.b #$68
|0CEF99| STA.b $30

|0CEF9B| STZ.b $31
|0CEF9D| STZ.b $32
|0CEF9F| STZ.b $33

|0CEFA1| STZ.b $40
|0CEFA3| STZ.b $50
|0CEFA5| STZ.b $5F

|0CEFA7| LDA.b #$FF
|0CEFA9| STA.b $25

|0CEFAB| LDA.b #$D0
|0CEFAD| STA.b $64

|0CEFAF| JMP.w AttractScene_AdvanceFromDungeon

;===================================================================================================

AttractScene_AgahnimAltar:
|0CEFB2| REP #$20

|0CEFB4| LDA.b $20
|0CEFB6| PHA

|0CEFB7| LDA.b $22
|0CEFB9| PHA

|0CEFBA| SEP #$20

|0CEFBC| LDA.b #$75
|0CEFBE| JSL LoadRoomForAttract

|0CEFC2| REP #$20

|0CEFC4| PLA
|0CEFC5| STA.b $22

|0CEFC7| PLA
|0CEFC8| STA.b $20

|0CEFCA| SEP #$20

|0CEFCC| LDA.b #$00
|0CEFCE| STA.w $0AB6

|0CEFD1| LDA.b #$00
|0CEFD3| STA.w $0AAC

|0CEFD6| LDA.b #$0E
|0CEFD8| STA.w $0AAD

|0CEFDB| LDA.b #$03
|0CEFDD| STA.w $0AAE

|0CEFE0| STZ.w $0AA9
|0CEFE3| JSL LoadAttractAltarPalettes

|0CEFE7| LDX.b #$7F
|0CEFE9| LDA.b #$02
|0CEFEB| JSL SaveAndLoadAttractPalettes

|0CEFEF| LDA.b #$00 ; RGB: #0008C0
|0CEFF1| STA.l $7EC33A
|0CEFF5| STA.l $7EC53A

|0CEFF9| LDA.b #$38
|0CEFFB| STA.l $7EC33B
|0CEFFF| STA.l $7EC53B

;---------------------------------------------------------------------------------------------------

|0CF003| STZ.w $1CD8

|0CF006| LDA.b #$13 ; MESSAGE 0113
|0CF008| STA.w $1CF0

|0CF00B| LDA.b #$01
|0CF00D| STA.w $1CF1

|0CF010| LDA.b #$FF
|0CF012| STA.b $25

|0CF014| LDA.b #$70
|0CF016| STA.b $30
|0CF018| STA.b $62

|0CF01A| LDA.b #$70
|0CF01C| STA.b $63

|0CF01E| LDA.b #$08
|0CF020| STA.b $32

|0CF022| STZ.b $50
|0CF024| STZ.b $51
|0CF026| STZ.b $52

|0CF028| STZ.b $5F
|0CF02A| STZ.b $60
|0CF02C| STZ.b $61

|0CF02E| LDA.b #$C0
|0CF030| STA.b $64

|0CF032| JMP.w AttractScene_AdvanceFromDungeon

;===================================================================================================

AttractScene_EndOfStory:
|0CF035| REP #$20

|0CF037| JSL Attract_SetUpConclusionHDMA

;===================================================================================================

InitializeTriforceIntro:
|0CF03B| INC.w $0710

|0CF03E| JSL Intro_InitializeDefaultGFX
|0CF042| JSL Intro_LoadAllPalettes_long
|0CF046| JSL DecompressFontGFX

|0CF04A| STZ.b $EA

|0CF04C| REP #$20

|0CF04E| STZ.w $063A
|0CF051| STZ.w $0638

|0CF054| STZ.w $0120
|0CF057| STZ.w $0124

|0CF05A| SEP #$20

|0CF05C| LDA.b #$F1 ; SONG F1 - fade
|0CF05E| STA.w $012C

|0CF061| STZ.b $23
|0CF063| STZ.b $10

|0CF065| LDA.b #$08
|0CF067| STA.b $11
|0CF069| STA.b $B0

|0CF06B| RTL

;===================================================================================================

Attract_EnactStory:
|0CF06C| LDA.b $23
|0CF06E| ASL A
|0CF06F| TAX

|0CF070| JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

.vectors
|0CF073| dw AttractDramatize_PolkaDots    ; 0x00
|0CF075| dw AttractDramatize_WorldMap     ; 0x01
|0CF077| dw AttractDramatize_ThroneRoom   ; 0x02
|0CF079| dw AttractDramatize_Prison       ; 0x03
|0CF07B| dw AttractDramatize_AgahnimAltar ; 0x04

;===================================================================================================

AttractDramatize_PolkaDots:
|0CF07D| LDA.b $1A
|0CF07F| AND.b #$03
|0CF081| BNE .delay_scroll

|0CF083| INC.w $0124
|0CF086| INC.w $0120
|0CF089| INC.w $0122
|0CF08C| DEC.w $011E

.delay_scroll
|0CF08F| LDA.b $27
|0CF091| BEQ .delay_map_update

|0CF093| JSR Attract_BuildNextImageTilemap

|0CF096| STZ.b $27

|0CF098| INC.b $26
|0CF09A| INC.b $26

.delay_map_update
|0CF09C| STZ.b $F2
|0CF09E| STZ.b $F6
|0CF0A0| STZ.b $F4

|0CF0A2| JSL RenderText

|0CF0A6| REP #$20

|0CF0A8| DEC.w $0200
|0CF0AB| BNE .delay_sequence

|0CF0AD| SEP #$20

|0CF0AF| INC.b $23

|0CF0B1| DEC.b $22
|0CF0B3| DEC.b $22
|0CF0B5| DEC.b $22

|0CF0B7| BRA .exit

;---------------------------------------------------------------------------------------------------

.delay_sequence
|0CF0B9| LDA.w $0200
|0CF0BC| CMP.w #$0018
|0CF0BF| BCS .exit

|0CF0C1| AND.w #$0001
|0CF0C4| BEQ .exit

|0CF0C6| SEP #$20

|0CF0C8| DEC.b $13

.exit
|0CF0CA| SEP #$20

|0CF0CC| RTL

;===================================================================================================

AttractDramatize_WorldMap:
|0CF0CD| LDA.w $0637
|0CF0D0| CMP.b #$00
|0CF0D2| BEQ .advance_sequence

|0CF0D4| CMP.b #$0F
|0CF0D6| BCS .skip_fade

|0CF0D8| DEC.b $13

.skip_fade
|0CF0DA| LDY.b #$01

|0CF0DC| DEC.b $25
|0CF0DE| BNE .exit

|0CF0E0| STY.b $25

|0CF0E2| LDA.w $0637
|0CF0E5| SEC
|0CF0E6| SBC.b #$01
|0CF0E8| STA.w $0637

|0CF0EB| JSR Attract_ControlMapZoom

.exit
|0CF0EE| RTL

;---------------------------------------------------------------------------------------------------

.advance_sequence
|0CF0EF| JSL EnableForceBlank

|0CF0F3| LDA.b #$09
|0CF0F5| STA.w BGMODE
|0CF0F8| STA.b $94

|0CF0FA| JSL EraseTilemaps_normal

|0CF0FE| INC.b $23

|0CF100| DEC.b $22
|0CF102| DEC.b $22

|0CF104| RTL

;---------------------------------------------------------------------------------------------------

pool AttractDramatize_ThroneRoom

.pointer_size
|0CF105| dw AttractOAMData.king_size
|0CF107| dw AttractOAMData.mantle_size

.pointer_offset_x
|0CF109| dw AttractOAMData.king_offset_x
|0CF10B| dw AttractOAMData.mantle_offset_x

.pointer_offset_y
|0CF10D| dw AttractOAMData.king_offset_y
|0CF10F| dw AttractOAMData.mantle_offset_y

.pointer_char
|0CF111| dw AttractOAMData.king_char
|0CF113| dw AttractOAMData.mantle_char

.pointer_prop
|0CF115| dw AttractOAMData.king_prop
|0CF117| dw AttractOAMData.mantle_prop

;---------------------------------------------------------------------------------------------------

.offset_x
|0CF119| db $50 ; king
|0CF11A| db $68 ; mantle

.offset_y
|0CF11B| db $58 ; king
|0CF11C| db $20 ; mantle

;---------------------------------------------------------------------------------------------------

.oam_count
|0CF11D| db $03 ; king
|0CF11E| db $05 ; mantle

endpool

;===================================================================================================

AttractDramatize_ThroneRoom:
|0CF11F| STZ.b $2A

; this flags brightness being maxed
|0CF121| LDA.b $52
|0CF123| BNE .continue

|0CF125| LDA.b $13
|0CF127| CMP.b #$0F
|0CF129| BEQ .max_brightness

|0CF12B| INC.b $13

|0CF12D| BRA .continue

.max_brightness
|0CF12F| INC.b $52

;---------------------------------------------------------------------------------------------------

.continue
|0CF131| REP #$20

|0CF133| LDA.w $0122
|0CF136| BNE .scroll_screen

|0CF138| SEP #$20

|0CF13A| JSR Attract_DoTextInDungeonScene

|0CF13D| LDA.b $64
|0CF13F| BNE .continue_dramatization

|0CF141| LDA.b $2C
|0CF143| CMP.b #$1F
|0CF145| BCS .dont_fade_out

|0CF147| AND.b #$01
|0CF149| BNE .dont_fade_out

|0CF14B| DEC.b $13

.dont_fade_out
|0CF14D| DEC.b $2C
|0CF14F| BNE .continue_dramatization

|0CF151| INC.b $23
|0CF153| INC.b $22

|0CF155| RTL

;---------------------------------------------------------------------------------------------------

.scroll_screen
|0CF156| DEC.w $0122
|0CF159| DEC.w $0124

;---------------------------------------------------------------------------------------------------

.continue_dramatization
|0CF15C| SEP #$20

|0CF15E| LDX.b #$02

.next_entity
|0CF160| PHX

|0CF161| REP #$20

|0CF163| LDA.l .pointer_size,X
|0CF167| STA.b $2D

|0CF169| LDA.l .pointer_offset_x,X
|0CF16D| STA.b $02

|0CF16F| LDA.l .pointer_offset_y,X
|0CF173| STA.b $04

|0CF175| LDA.l .pointer_char,X
|0CF179| STA.b $06

|0CF17B| LDA.l .pointer_prop,X
|0CF17F| STA.b $08

|0CF181| TXA
|0CF182| AND.w #$00FF
|0CF185| LSR A
|0CF186| TAX

|0CF187| LDA.l .offset_y,X
|0CF18B| AND.w #$00FF
|0CF18E| SEC
|0CF18F| SBC.w $0122
|0CF192| STA.b $00

|0CF194| CMP.w #$FFE0

|0CF197| SEP #$20
|0CF199| BMI .off_screen

|0CF19B| LDA.l .offset_x,X
|0CF19F| STA.b $28

|0CF1A1| LDA.b $00
|0CF1A3| STA.b $29

|0CF1A5| LDA.l .oam_count,X
|0CF1A9| TAY

|0CF1AA| JSR Attract_DrawPreloadedSprite

.off_screen
|0CF1AD| PLX

|0CF1AE| DEX
|0CF1AF| DEX
|0CF1B0| BPL .next_entity

|0CF1B2| RTL

;===================================================================================================

pool AttractDramatize_Prison

.soldier_offset_x
|0CF1B3| dw  32, -12

.soldier_offset_y
|0CF1B7| db  24,  24

.soldier_direction
|0CF1B9| db $01, $01

.soldier_palette
|0CF1BB| db $09, $07

;---------------------------------------------------------------------------------------------------

.maiden_jab_offset_x
|0CF1BD| db  0,  1,  2,  3
|0CF1C1| db  4,  5,  5,  5
|0CF1C5| db  4,  4,  3,  3
|0CF1C9| db  2,  2,  1,  1

endpool

;---------------------------------------------------------------------------------------------------

AttractDramatize_Prison:
|0CF1CD| STZ.b $2A

|0CF1CF| LDA.b $5F
|0CF1D1| BNE .skip_fade

|0CF1D3| JSR Attract_FadeInStep

.skip_fade
|0CF1D6| LDA.b #$38
|0CF1D8| STA.b $28

|0CF1DA| JSR Attract_DrawZelda

|0CF1DD| LDA.b $25
|0CF1DF| CMP.b #$C0
|0CF1E1| BCS .delay_agahnim

|0CF1E3| JMP.w AttractDramatize_Agahnim

.delay_agahnim
|0CF1E6| LDA.b #$70
|0CF1E8| STA.b $29

|0CF1EA| DEC.b $50
|0CF1EC| BPL .dont_reset_jab

|0CF1EE| LDA.b #$0F
|0CF1F0| STA.b $50

.dont_reset_jab
|0CF1F2| LDX.b $50

|0CF1F4| LDA.b $31
|0CF1F6| STA.b $40

|0CF1F8| LDA.b $30
|0CF1FA| CLC
|0CF1FB| ADC.l .maiden_jab_offset_x,X
|0CF1FF| STA.b $28

|0CF201| BCC .dont_disable_maiden

|0CF203| INC.b $40

.dont_disable_maiden
|0CF205| JSR Attract_DrawKidnappedMaiden

;---------------------------------------------------------------------------------------------------

|0CF208| LDX.b #$01

.next_soldier
|0CF20A| STZ.b $03

|0CF20C| LDA.b $33
|0CF20E| STA.b $06

|0CF210| LDA.b $29
|0CF212| CLC
|0CF213| ADC.l .soldier_offset_y,X
|0CF217| STA.b $02

|0CF219| LDA.l .soldier_direction,X
|0CF21D| STA.b $04

|0CF21F| LDA.l .soldier_palette,X
|0CF223| STA.b $05

|0CF225| PHX

|0CF226| REP #$20

|0CF228| TXA
|0CF229| ASL A
|0CF22A| TAX

|0CF22B| LDA.b $30
|0CF22D| CLC
|0CF22E| ADC.w #$0100

|0CF231| CLC
|0CF232| ADC.l .soldier_offset_x,X
|0CF236| STA.b $00

|0CF238| TAY
|0CF239| STY.b $34

|0CF23B| SEP #$20

|0CF23D| JSL ResetSpriteProperties
|0CF241| JSL PuppetSoldier

|0CF245| PLX
|0CF246| DEX
|0CF247| BPL .next_soldier

;---------------------------------------------------------------------------------------------------

|0CF249| INC.b $32

|0CF24B| LDA.b $32
|0CF24D| AND.b #$07
|0CF24F| BNE AttractDramatize_Agahnim

|0CF251| LDY.b #$FF

|0CF253| LDA.b $33
|0CF255| CMP.b #$02
|0CF257| BNE .delay_sfx

|0CF259| STY.b $33

|0CF25B| LDA.b $31
|0CF25D| BNE .delay_sfx

|0CF25F| LDA.b $32
|0CF261| AND.b #$08
|0CF263| BEQ .delay_sfx

|0CF265| LDA.b #$04 ; SFX3.04
|0CF267| STA.w $012F

.delay_sfx
|0CF26A| INC.b $33

;===================================================================================================

AttractDramatize_Agahnim:
|0CF26C| LDA.b $60
|0CF26E| ASL A
|0CF26F| TAX

|0CF270| JMP.w (.vectors,X)

.vectors
|0CF273| dw Dramaghanim_WaitForCue
|0CF275| dw Dramaghanim_MoveAndSpin

;===================================================================================================

Dramaghanim_AdvanceStory:
|0CF277| INC.b $23

|0CF279| DEC.b $22
|0CF27B| DEC.b $22

|0CF27D| RTL

;===================================================================================================

Dramaghanim_WaitForCue:
|0CF27E| LDA.b $34
|0CF280| BNE .delay

|0CF282| INC.b $60

.delay
|0CF284| REP #$20

|0CF286| LDA.b $1A
|0CF288| AND.w #$0001
|0CF28B| BEQ .delay_tick

|0CF28D| DEC.b $30

.delay_tick
|0CF28F| LDA.w #AttractAgahnimOAM.size
|0CF292| STA.b $2D

|0CF294| LDA.w #AttractAgahnimOAM.offset_x
|0CF297| STA.b $02

|0CF299| LDA.w #AttractAgahnimOAM.offset_y
|0CF29C| STA.b $04

|0CF29E| LDA.w #AttractAgahnimOAM.char_step0
|0CF2A1| STA.b $06

|0CF2A3| LDA.w #AttractAgahnimOAM.prop_step0
|0CF2A6| STA.b $08

|0CF2A8| SEP #$20

|0CF2AA| LDA.b #$58
|0CF2AC| STA.b $28

|0CF2AE| LDA.b $2B
|0CF2B0| STA.b $29

|0CF2B2| LDY.b #$05
|0CF2B4| JSR Attract_DrawPreloadedSprite

|0CF2B7| RTL

;===================================================================================================

pool Dramaghanim_MoveAndSpin

.pointers_char
|0CF2B8| dw AttractAgahnimOAM.char_step0
|0CF2BA| dw AttractAgahnimOAM.char_step1
|0CF2BC| dw AttractAgahnimOAM.char_step2
|0CF2BE| dw AttractAgahnimOAM.char_step3
|0CF2C0| dw AttractAgahnimOAM.char_step4

.pointers_prop
|0CF2C2| dw AttractAgahnimOAM.prop_step0
|0CF2C4| dw AttractAgahnimOAM.prop_step1
|0CF2C6| dw AttractAgahnimOAM.prop_step2
|0CF2C8| dw AttractAgahnimOAM.prop_step0
|0CF2CA| dw AttractAgahnimOAM.prop_step0

endpool

;---------------------------------------------------------------------------------------------------

Dramaghanim_MoveAndSpin:
|0CF2CC| LDA.b $25
|0CF2CE| CMP.b #$80
|0CF2D0| BCS .continue

|0CF2D2| JSR Attract_DoTextInDungeonScene

|0CF2D5| LDA.b $64
|0CF2D7| BEQ .continue

|0CF2D9| LDX.b #$08
|0CF2DB| BRA .animate_agahnim

.continue
|0CF2DD| LDX.b #$00

|0CF2DF| LDA.b $2B
|0CF2E1| CMP.b #$6E
|0CF2E3| BEQ .timer_maxed

|0CF2E5| DEC.b $2B
|0CF2E7| BRA .animate_agahnim

.timer_maxed
|0CF2E9| LDA.b $25
|0CF2EB| CMP.b #$1F
|0CF2ED| BCS .delay_fade

|0CF2EF| AND.b #$01
|0CF2F1| BNE .delay_fade

|0CF2F3| DEC.b $13

.delay_fade
|0CF2F5| DEC.b $25
|0CF2F7| BNE .dont_advance_story

|0CF2F9| JMP.w Dramaghanim_AdvanceStory

;---------------------------------------------------------------------------------------------------

.dont_advance_story
|0CF2FC| LDA.b $25
|0CF2FE| CMP.b #$C0
|0CF300| BCS .animate_agahnim

|0CF302| INX
|0CF303| INX

|0CF304| CMP.b #$B8
|0CF306| BCS .animate_agahnim

|0CF308| INX
|0CF309| INX

|0CF30A| CMP.b #$B0
|0CF30C| BCS .animate_agahnim

|0CF30E| INX
|0CF30F| INX

|0CF310| CMP.b #$A0
|0CF312| BCS .animate_agahnim

|0CF314| INX
|0CF315| INX

;---------------------------------------------------------------------------------------------------

.animate_agahnim
|0CF316| LDA.b #$A8
|0CF318| STA.b $28

|0CF31A| REP #$20

|0CF31C| LDA.b $1A
|0CF31E| AND.w #$0001
|0CF321| BEQ .delay_tick

|0CF323| DEC.b $30

.delay_tick
|0CF325| LDA.w #AttractAgahnimOAM.size
|0CF328| STA.b $2D

|0CF32A| LDA.w #AttractAgahnimOAM.offset_x
|0CF32D| STA.b $02

|0CF32F| LDA.w #AttractAgahnimOAM.offset_y
|0CF332| STA.b $04

|0CF334| LDA.l .pointers_char,X
|0CF338| STA.b $06

|0CF33A| LDA.l .pointers_prop,X
|0CF33E| STA.b $08

|0CF340| SEP #$20

|0CF342| LDA.b #$58
|0CF344| STA.b $28

|0CF346| LDA.b $2B
|0CF348| STA.b $29

|0CF34A| LDY.b #$05
|0CF34C| JSR Attract_DrawPreloadedSprite

|0CF34F| RTL

;===================================================================================================

pool AttractDramatize_AgahnimAltar

.soldier_position_x
|0CF350| db $30, $C0, $30, $C0, $50, $A0

.soldier_position_y
|0CF356| db $70, $70, $98, $98, $C0, $C0

.soldier_direction
|0CF35C| db $00, $01, $00, $01, $03, $03

.soldier_palette
|0CF362| db $09, $09, $09, $09, $07, $09

;---------------------------------------------------------------------------------------------------

.vectors
|0CF368| dw Dramagahnim_RaiseTheRoof
|0CF36A| dw Dramagahnim_ReadySpell
|0CF36C| dw Dramagahnim_CastSpell
|0CF36E| dw Dramagahnim_RealizeWhatJustHappened
|0CF370| dw Dramagahnim_IdleGuiltily

endpool

;---------------------------------------------------------------------------------------------------

AttractDramatize_AgahnimAltar:
|0CF372| LDA.b $5D
|0CF374| BEQ .delay

|0CF376| JMP.w Dramaghanim_AdvanceStory

.delay
|0CF379| STZ.b $2A

|0CF37B| JSL HandleScreenFlash

|0CF37F| LDA.b $5F
|0CF381| BNE .delay_fade

|0CF383| JSR Attract_FadeInStep

.delay_fade
|0CF386| LDA.b $50
|0CF388| CMP.b #$FF
|0CF38A| BEQ .maxed

|0CF38C| INC.b $50

.maxed
|0CF38E| LDA.w $0FF9
|0CF391| BEQ .delay_sfx

|0CF393| AND.b #$04
|0CF395| BEQ .delay_sfx

|0CF397| LDX.b #$2B ; SFX3.2B
|0CF399| STX.w $012F

;---------------------------------------------------------------------------------------------------

.delay_sfx
|0CF39C| LDA.b $60
|0CF39E| ASL A
|0CF39F| TAX

|0CF3A0| JSR (.vectors,X)

;---------------------------------------------------------------------------------------------------

|0CF3A3| LDX.b #$05

.next_soldier
|0CF3A5| STZ.b $01
|0CF3A7| STZ.b $03
|0CF3A9| STZ.b $06

|0CF3AB| LDA.l .soldier_position_x,X
|0CF3AF| STA.b $00

|0CF3B1| LDA.l .soldier_position_y,X
|0CF3B5| STA.b $02

|0CF3B7| LDA.l .soldier_direction,X
|0CF3BB| STA.b $04

|0CF3BD| LDA.l .soldier_palette,X
|0CF3C1| STA.b $05

|0CF3C3| PHX

|0CF3C4| JSL ResetSpriteProperties
|0CF3C8| JSL PuppetSoldier

|0CF3CC| PLX
|0CF3CD| DEX
|0CF3CE| BPL .next_soldier

;---------------------------------------------------------------------------------------------------

|0CF3D0| LDX.b $50
|0CF3D2| CPX.b #$A0
|0CF3D4| BCC .continue

|0CF3D6| LDA.b $30
|0CF3D8| CMP.b #$60
|0CF3DA| BEQ .tick_timer

|0CF3DC| DEC.b $32
|0CF3DE| BNE .continue

|0CF3E0| DEC.b $30

|0CF3E2| LDA.b #$08
|0CF3E4| STA.b $32

|0CF3E6| BRA .continue

.tick_timer
|0CF3E8| INC.b $61

;---------------------------------------------------------------------------------------------------

.continue
|0CF3EA| LDA.b $52
|0CF3EC| BNE .dont_draw_maiden

|0CF3EE| REP #$20

|0CF3F0| LDA.w #AttractAltarMaidenOAM.size
|0CF3F3| STA.b $2D

|0CF3F5| LDA.w #AttractAltarMaidenOAM.offset_x
|0CF3F8| STA.b $02

|0CF3FA| LDA.w #AttractAltarMaidenOAM.offset_y
|0CF3FD| STA.b $04

|0CF3FF| LDX.b #$00

|0CF401| LDA.b $30
|0CF403| AND.w #$00FF
|0CF406| CMP.w #$0070
|0CF409| BEQ .not_airborne

|0CF40B| INX
|0CF40C| INX

.not_airborne
|0CF40D| LDA.l .maiden_char_pointer,X
|0CF411| STA.b $06

|0CF413| LDA.w #AttractAltarMaidenOAM.prop
|0CF416| STA.b $08

|0CF418| SEP #$20

|0CF41A| LDA.b #$74
|0CF41C| STA.b $28

|0CF41E| LDA.b $30
|0CF420| STA.b $29

|0CF422| LDY.b #$01
|0CF424| JSR Attract_DrawPreloadedSprite

;---------------------------------------------------------------------------------------------------

|0CF427| LDX.b #$0E

|0CF429| LDA.b $30
|0CF42B| CMP.b #$68
|0CF42D| BCS .adjust_shadow_index

|0CF42F| SEC
|0CF430| SBC.b #$68

|0CF432| ASL A
|0CF433| AND.b #$0E
|0CF435| TAX

.adjust_shadow_index
|0CF436| REP #$20

|0CF438| LDA.w #AttractAltarMaidenShadowOAM.size
|0CF43B| STA.b $2D

|0CF43D| LDA.l .shadow_offset_x_pointer,X
|0CF441| STA.b $02

|0CF443| LDA.w #AttractAltarMaidenShadowOAM.offset_y
|0CF446| STA.b $04

|0CF448| LDA.w #AttractAltarMaidenShadowOAM.char
|0CF44B| STA.b $06

|0CF44D| LDA.w #AttractAltarMaidenShadowOAM.prop
|0CF450| STA.b $08

|0CF452| SEP #$20

|0CF454| TXA
|0CF455| LSR A
|0CF456| TAX

|0CF457| LDA.b #$74
|0CF459| CLC
|0CF45A| ADC.l .shadow_base_offset_x,X
|0CF45E| STA.b $28

|0CF460| LDA.b #$76
|0CF462| STA.b $29

|0CF464| LDY.b #$01
|0CF466| JSR Attract_DrawPreloadedSprite

;---------------------------------------------------------------------------------------------------

.dont_draw_maiden
|0CF469| LDA.b $50

|0CF46B| LSR A
|0CF46C| LSR A
|0CF46D| LSR A
|0CF46E| LSR A

|0CF46F| AND.b #$0E
|0CF471| TAX

|0CF472| REP #$20

|0CF474| LDA.w #AttractAgahnimOAM.size
|0CF477| STA.b $2D

|0CF479| LDA.w #AttractAgahnimOAM.offset_x
|0CF47C| STA.b $02

|0CF47E| LDA.w #AttractAgahnimOAM.offset_y
|0CF481| STA.b $04

|0CF483| LDA.l .agahnim_char_pointer,X
|0CF487| STA.b $06

|0CF489| LDA.w #AttractAgahnimOAM.prop_step0
|0CF48C| STA.b $08

|0CF48E| SEP #$20

|0CF490| LDA.b #$70
|0CF492| STA.b $28

|0CF494| LDA.b #$46
|0CF496| STA.b $29

|0CF498| LDY.b #$05
|0CF49A| JSR Attract_DrawPreloadedSprite

|0CF49D| RTL

;---------------------------------------------------------------------------------------------------

.shadow_offset_x_pointer
|0CF49E| dw AttractAltarMaidenShadowOAM.offset_x_step0
|0CF4A0| dw AttractAltarMaidenShadowOAM.offset_x_step0
|0CF4A2| dw AttractAltarMaidenShadowOAM.offset_x_step1
|0CF4A4| dw AttractAltarMaidenShadowOAM.offset_x_step1
|0CF4A6| dw AttractAltarMaidenShadowOAM.offset_x_step2
|0CF4A8| dw AttractAltarMaidenShadowOAM.offset_x_step2
|0CF4AA| dw AttractAltarMaidenShadowOAM.offset_x_step3
|0CF4AC| dw AttractAltarMaidenShadowOAM.offset_x_step4

;---------------------------------------------------------------------------------------------------

.shadow_base_offset_x
|0CF4AE| db  4,  4,  3,  3
|0CF4B2| db  2,  2,  1,  0

;---------------------------------------------------------------------------------------------------

.maiden_char_pointer
|0CF4B6| dw AttractAltarMaidenOAM.char_step0
|0CF4B8| dw AttractAltarMaidenOAM.char_step1

;---------------------------------------------------------------------------------------------------

.agahnim_char_pointer
|0CF4BA| dw AttractAgahnimOAM.char_step3
|0CF4BC| dw AttractAgahnimOAM.char_step5
|0CF4BE| dw AttractAgahnimOAM.char_step3
|0CF4C0| dw AttractAgahnimOAM.char_step6
|0CF4C2| dw AttractAgahnimOAM.char_step3
|0CF4C4| dw AttractAgahnimOAM.char_step5
|0CF4C6| dw AttractAgahnimOAM.char_step3
|0CF4C8| dw AttractAgahnimOAM.char_step4

;===================================================================================================

Dramagahnim_RaiseTheRoof:
|0CF4CA| LDA.b $61
|0CF4CC| BEQ .exit

|0CF4CE| INC.b $60

.exit
|0CF4D0| RTS

;===================================================================================================

DramagahnimSpellCharPointer:
|0CF4D1| dw DramagahnimSpellOAM.char_step0
|0CF4D3| dw DramagahnimSpellOAM.char_step1

;---------------------------------------------------------------------------------------------------

DramagahnimSpellPropPointer:
|0CF4D5| dw DramagahnimSpellOAM.prop_step0
|0CF4D7| dw DramagahnimSpellOAM.prop_step1

;---------------------------------------------------------------------------------------------------

pool Dramagahnim_ReadySpell

.oam_count
|0CF4D9| db  1
|0CF4DA| db  1
|0CF4DB| db  1
|0CF4DC| db  5
|0CF4DD| db  5
|0CF4DE| db  9
|0CF4DF| db  9
|0CF4E0| db 13

endpool

;---------------------------------------------------------------------------------------------------

Dramagahnim_ReadySpell:
|0CF4E1| LDA.b $1A
|0CF4E3| LSR A
|0CF4E4| AND.b #$02
|0CF4E6| TAX

|0CF4E7| REP #$20

|0CF4E9| LDA.w #DramagahnimSpellOAM.size
|0CF4EC| STA.b $2D

|0CF4EE| LDA.w #DramagahnimSpellOAM.offset_x
|0CF4F1| STA.b $02

|0CF4F3| LDA.w #DramagahnimSpellOAM.offset_y
|0CF4F6| STA.b $04

|0CF4F8| LDA.l DramagahnimSpellCharPointer,X
|0CF4FC| STA.b $06

|0CF4FE| LDA.l DramagahnimSpellPropPointer,X
|0CF502| STA.b $08

;---------------------------------------------------------------------------------------------------

|0CF504| SEP #$20

|0CF506| LDA.b #$6E
|0CF508| STA.b $28

|0CF50A| LDA.b #$48
|0CF50C| STA.b $29

|0CF50E| LDA.b $51
|0CF510| LSR A
|0CF511| AND.b #$07
|0CF513| TAX

|0CF514| LDA.l .oam_count,X
|0CF518| TAY

|0CF519| JSR Attract_DrawPreloadedSprite

;---------------------------------------------------------------------------------------------------

|0CF51C| LDA.b $51
|0CF51E| BNE .delay_sfx

|0CF520| LDY.b $63
|0CF522| CPY.b #$70
|0CF524| BNE .delay_sfx

|0CF526| LDX.b #$27 ; SFX3.27
|0CF528| STX.w $012F

;---------------------------------------------------------------------------------------------------

.delay_sfx
|0CF52B| CMP.b #$0F
|0CF52D| BEQ .advance

|0CF52F| CMP.b #$06
|0CF531| BNE .delay_other_sfx

|0CF533| LDX.b #$90
|0CF535| STX.w $0FF9

|0CF538| LDX.b #$2B ; SFX3.2B
|0CF53A| STX.w $012F

;---------------------------------------------------------------------------------------------------

.delay_other_sfx
|0CF53D| LDA.b $63
|0CF53F| BEQ .delay_tick

|0CF541| DEC.b $63

|0CF543| RTS

;---------------------------------------------------------------------------------------------------

.delay_tick
|0CF544| INC.b $51

|0CF546| RTS

;---------------------------------------------------------------------------------------------------

.advance
|0CF547| INC.b $60

|0CF549| RTS

;===================================================================================================

pool Dramagahnim_CastSpell

.oam_count
|0CF54A| db  3
|0CF54B| db  3
|0CF54C| db  7
|0CF54D| db  7
|0CF54E| db 11
|0CF54F| db 11
|0CF550| db 13
|0CF551| db 13

;---------------------------------------------------------------------------------------------------

.index_offset
|0CF552| dw 10
|0CF554| dw 10
|0CF556| dw  6
|0CF558| dw  6
|0CF55A| dw  2
|0CF55C| dw  2
|0CF55E| dw  0
|0CF560| dw  0

endpool

;---------------------------------------------------------------------------------------------------

Dramagahnim_CastSpell:
|0CF562| PHB
|0CF563| PHK
|0CF564| PLB

|0CF565| LDA.b $1A
|0CF567| LSR A
|0CF568| AND.b #$02
|0CF56A| TAX

|0CF56B| LDA.b $51
|0CF56D| LSR A
|0CF56E| AND.b #$07
|0CF570| STA.b $00

|0CF572| ASL A
|0CF573| TAY

;---------------------------------------------------------------------------------------------------

|0CF574| REP #$20

|0CF576| LDA.w #DramagahnimSpellOAM.size
|0CF579| CLC
|0CF57A| ADC.w .index_offset,Y
|0CF57D| STA.b $2D

|0CF57F| LDA.w #DramagahnimSpellOAM.offset_x
|0CF582| CLC
|0CF583| ADC.w .index_offset,Y
|0CF586| STA.b $02

|0CF588| LDA.w #DramagahnimSpellOAM.offset_y
|0CF58B| CLC
|0CF58C| ADC.w .index_offset,Y
|0CF58F| STA.b $04

|0CF591| LDA.w DramagahnimSpellCharPointer,X
|0CF594| CLC
|0CF595| ADC.w .index_offset,Y
|0CF598| STA.b $06

|0CF59A| LDA.w DramagahnimSpellPropPointer,X
|0CF59D| CLC
|0CF59E| ADC.w .index_offset,Y
|0CF5A1| STA.b $08

;---------------------------------------------------------------------------------------------------

|0CF5A3| SEP #$20

|0CF5A5| LDA.b #$6E
|0CF5A7| STA.b $28

|0CF5A9| LDA.b #$48
|0CF5AB| STA.b $29

|0CF5AD| LDX.b $00

|0CF5AF| LDA.w .oam_count,X
|0CF5B2| TAY

|0CF5B3| JSR Attract_DrawPreloadedSprite

|0CF5B6| PLB

;---------------------------------------------------------------------------------------------------

|0CF5B7| LDA.b $51
|0CF5B9| BNE .delay_tick

|0CF5BB| DEC.b $62
|0CF5BD| BEQ Dramagahnim_ReadySpell.advance

|0CF5BF| BRA .exit

.delay_tick
|0CF5C1| DEC.b $51

.exit
|0CF5C3| RTS

;===================================================================================================

pool Dramagahnim_RealizeWhatJustHappened

.pointers_offset_x
|0CF5C4| dw AttractTelebubbleOAM.step0_offset_x
|0CF5C6| dw AttractTelebubbleOAM.step1_offset_x

.pointers_offset_y
|0CF5C8| dw AttractTelebubbleOAM.step0_offset_y
|0CF5CA| dw AttractTelebubbleOAM.step1_offset_y

.pointers_char
|0CF5CC| dw AttractTelebubbleOAM.step0_char
|0CF5CE| dw AttractTelebubbleOAM.step1_char

.pointers_prop
|0CF5D0| dw AttractTelebubbleOAM.step0_prop
|0CF5D2| dw AttractTelebubbleOAM.step1_prop

;---------------------------------------------------------------------------------------------------

.position_x
|0CF5D4| db $78
|0CF5D5| db $70

.object_count
|0CF5D6| db $00
|0CF5D7| db $01

endpool

;---------------------------------------------------------------------------------------------------

Dramagahnim_RealizeWhatJustHappened:
|0CF5D8| LDA.b $51
|0CF5DA| CMP.b #$06
|0CF5DC| BNE .delay_sfx

|0CF5DE| INC.b $52

|0CF5E0| LDA.b #$33 ; SFX2.33
|0CF5E2| STA.w $012E

.delay_sfx
|0CF5E5| CMP.b #$40
|0CF5E7| BNE .delay_tick

|0CF5E9| LDA.b #$E0
|0CF5EB| STA.b $51

|0CF5ED| INC.b $60

.delay_tick
|0CF5EF| CMP.b #$0F
|0CF5F1| BCS .skip_draw

|0CF5F3| LSR A
|0CF5F4| LSR A
|0CF5F5| AND.b #$02
|0CF5F7| TAX

|0CF5F8| REP #$20

|0CF5FA| LDA.w #AttractTelebubbleOAM.size
|0CF5FD| STA.b $2D

|0CF5FF| LDA.l .pointers_offset_x,X
|0CF603| STA.b $02

|0CF605| LDA.l .pointers_offset_y,X
|0CF609| STA.b $04

|0CF60B| LDA.l .pointers_char,X
|0CF60F| STA.b $06

|0CF611| LDA.l .pointers_prop,X
|0CF615| STA.b $08

;---------------------------------------------------------------------------------------------------

|0CF617| SEP #$20

|0CF619| TXA
|0CF61A| LSR A
|0CF61B| TAX

|0CF61C| LDA.l .position_x,X
|0CF620| STA.b $28

|0CF622| LDA.b #$60
|0CF624| STA.b $29

|0CF626| LDA.l .object_count,X
|0CF62A| TAY

|0CF62B| JSR Attract_DrawPreloadedSprite

.skip_draw
|0CF62E| INC.b $51

|0CF630| RTS

;===================================================================================================

Dramagahnim_IdleGuiltily:
|0CF631| JSR Attract_DoTextInDungeonScene

|0CF634| LDA.b $64
|0CF636| BNE .exit

|0CF638| LDA.b $51
|0CF63A| CMP.b #$1F
|0CF63C| BCS .delay_fade

|0CF63E| AND.b #$01
|0CF640| BNE .delay_fade

|0CF642| DEC.b $13

.delay_fade
|0CF644| DEC.b $51
|0CF646| BNE .exit

|0CF648| INC.b $5D

.exit
|0CF64A| RTS

;===================================================================================================

Attract_SkipToFileSelect:
|0CF64B| DEC.b $13
|0CF64D| BNE .exit

|0CF64F| JSL EnableForceBlank

|0CF653| LDA.b #$13
|0CF655| STA.w BG1SC

|0CF658| LDA.b #$03
|0CF65A| STA.w BG2SC

|0CF65D| REP #$20

|0CF65F| JSL Attract_SetUpConclusionHDMA

|0CF663| REP #$20

|0CF665| STZ.w $063A
|0CF668| STZ.w $0638

|0CF66B| STZ.w $0120
|0CF66E| STZ.w $0124

|0CF671| STZ.b $EA

|0CF673| SEP #$20

|0CF675| JSL DecompressFontGFX

|0CF679| JMP.w FadeMusicAndResetSRAMMirror

.exit
|0CF67C| RTL

;===================================================================================================

pool Attract_BuildNextImageTilemap

.stripes_pointers
|0CF67D| dw AttractImage0Stripes
|0CF67F| dw AttractImage1Stripes
|0CF681| dw AttractImage2Stripes
|0CF683| dw AttractImage3Stripes

.stripes_sizes
|0CF685| dw $009C
|0CF687| dw $00EC
|0CF689| dw $00C6
|0CF68B| dw $0108

endpool

;---------------------------------------------------------------------------------------------------

Attract_BuildNextImageTilemap:
|0CF68D| REP #$20

|0CF68F| LDX.b $26

|0CF691| LDA.l .stripes_sizes,X
|0CF695| STA.b $00

|0CF697| LDA.l .stripes_pointers,X
|0CF69B| STA.b $02

|0CF69D| LDX.b #^Attract_BuildNextImageTilemap
|0CF69F| STX.b $04

|0CF6A1| REP #$10

|0CF6A3| LDY.b $00

.copy_next
|0CF6A5| LDA.b [$02],Y
|0CF6A7| STA.w $1002,Y

|0CF6AA| DEY
|0CF6AB| DEY
|0CF6AC| BPL .copy_next

|0CF6AE| SEP #$30

|0CF6B0| LDA.b #$01
|0CF6B2| STA.b $14

|0CF6B4| RTS

;===================================================================================================

Attract_DoTextInDungeonScene:
|0CF6B5| LDA.b $E8
|0CF6B7| STA.b $20

|0CF6B9| LDA.b $E9
|0CF6BB| STA.b $21

|0CF6BD| STZ.b $F2
|0CF6BF| STZ.b $F6
|0CF6C1| STZ.b $F4

|0CF6C3| JSL RenderText

|0CF6C7| LDA.b $64
|0CF6C9| BEQ .exit

|0CF6CB| DEC.b $64

.exit
|0CF6CD| RTS

;===================================================================================================

Attract_ControlMapZoom:
|0CF6CE| REP #$10

|0CF6D0| LDA.w $0637
|0CF6D3| STA.w WRMPYA

|0CF6D6| LDX.w #$01BE

.copy_next
|0CF6D9| LDA.l WorldMapHDMA_ZoomedOut_Part1+0,X
|0CF6DD| STA.w WRMPYB

|0CF6E0| NOP
|0CF6E1| NOP
|0CF6E2| NOP
|0CF6E3| NOP

|0CF6E4| LDA.w RDMPYH
|0CF6E7| STA.b $00

|0CF6E9| LDA.l WorldMapHDMA_ZoomedOut_Part1+1,X
|0CF6ED| STA.w WRMPYB

|0CF6F0| NOP

|0CF6F1| LDA.b $00
|0CF6F3| CLC
|0CF6F4| ADC.w RDMPYL
|0CF6F7| STA.w $1B00,X

|0CF6FA| LDA.w RDMPYH
|0CF6FD| ADC.b #$00
|0CF6FF| STA.w $1B01,X

|0CF702| DEX
|0CF703| DEX
|0CF704| BPL .copy_next

|0CF706| SEP #$10

|0CF708| RTS

;===================================================================================================

AttractBG1Tiles:
|0CF709| dw $01A0, $09A6, $89A5, $01A0
|0CF711| dw $09A5, $01A0, $01A0, $89A6
|0CF719| dw $49A5, $01A0, $01A0, $49A5
|0CF721| dw $01A0, $89A5, $C9A5, $01A0

;---------------------------------------------------------------------------------------------------

AttractBG2Tiles:
|0CF729| dw $09A1, $09A2, $09A3, $09A4

;---------------------------------------------------------------------------------------------------

Attract_BuildBackgrounds:
|0CF731| LDA.b #$09
|0CF733| STA.b $94

|0CF735| LDA.b #$17
|0CF737| STA.b $1C
|0CF739| STZ.b $1D

|0CF73B| LDA.b #$10
|0CF73D| STA.w BG1SC

|0CF740| LDA.b #$00
|0CF742| STA.w BG2SC

|0CF745| PHB
|0CF746| PHK
|0CF747| PLB

;---------------------------------------------------------------------------------------------------

|0CF748| REP #$30

|0CF74A| LDX.w #$0000

|0CF74D| LDA.w #AttractBG1Tiles
|0CF750| STA.b $30

.next_stripe_bg1
|0CF752| TXA
|0CF753| AND.w #$0007
|0CF756| TAY

.next_bg1
|0CF757| LDA.b ($30),Y
|0CF759| STA.w $1006,X

|0CF75C| INY
|0CF75D| INY

|0CF75E| INX
|0CF75F| INX

|0CF760| TYA
|0CF761| AND.w #$0007
|0CF764| BNE .next_bg1

|0CF766| TXA
|0CF767| AND.w #$003F
|0CF76A| BNE .next_stripe_bg1

|0CF76C| LDA.b $30
|0CF76E| CLC
|0CF76F| ADC.w #$0008
|0CF772| STA.b $30

|0CF774| CPX.w #$0100
|0CF777| BNE .next_stripe_bg1

;---------------------------------------------------------------------------------------------------

|0CF779| LDA.w #$1000
|0CF77C| STA.b $30

|0CF77E| JSR Attract_TriggerBGDMA

;---------------------------------------------------------------------------------------------------

|0CF781| REP #$30

|0CF783| LDX.w #$0000

|0CF786| LDA.w #AttractBG2Tiles
|0CF789| STA.b $30

.next_stripe_bg2
|0CF78B| TXA
|0CF78C| AND.w #$0003
|0CF78F| TAY

.next_bg2
|0CF790| LDA.b ($30),Y
|0CF792| STA.w $1006,X

|0CF795| INY
|0CF796| INY

|0CF797| INX
|0CF798| INX

|0CF799| TYA
|0CF79A| AND.w #$0003
|0CF79D| BNE .next_bg2

|0CF79F| TXA
|0CF7A0| AND.w #$003F
|0CF7A3| BNE .next_stripe_bg2

|0CF7A5| TXA
|0CF7A6| AND.w #$0040

|0CF7A9| LSR A
|0CF7AA| LSR A
|0CF7AB| LSR A
|0CF7AC| LSR A

|0CF7AD| CLC
|0CF7AE| ADC.w #AttractBG2Tiles
|0CF7B1| STA.b $30

|0CF7B3| CPX.w #$0100
|0CF7B6| BNE .next_stripe_bg2

|0CF7B8| LDA.w #$0000
|0CF7BB| STA.b $30

|0CF7BD| JSR Attract_TriggerBGDMA

|0CF7C0| SEP #$30

|0CF7C2| PLB

|0CF7C3| RTS

;===================================================================================================

Attract_TriggerBGDMA:
|0CF7C4| SEP #$10

|0CF7C6| LDX.b #$07

|0CF7C8| LDA.b $30
|0CF7CA| STA.w VMADDR

.next
|0CF7CD| LDY.b #$80
|0CF7CF| STY.w VMAIN

|0CF7D2| LDA.w #$1801
|0CF7D5| STA.w DMA0MODE

|0CF7D8| LDA.w #$1006
|0CF7DB| STA.w DMA0ADDRL

|0CF7DE| LDY.b #$00
|0CF7E0| STY.w DMA0ADDRB

|0CF7E3| LDA.w #$0100
|0CF7E6| STA.w DMA0SIZE

|0CF7E9| LDY.b #$01
|0CF7EB| STY.w MDMAEN

|0CF7EE| DEX
|0CF7EF| BPL .next

|0CF7F1| RTS

;===================================================================================================

AttractOAMData:

.king_size
|0CF7F2| db $02, $02, $02, $02

.king_offset_x
|0CF7F6| db  16,   0,  16,   0

.king_offset_y
|0CF7FA| db  16,  16,   0,   0

.king_char
|0CF7FE| db $2A, $2A, $0A, $0A

.king_prop
|0CF802| db $7B, $3B, $7B, $3B

;---------------------------------------------------------------------------------------------------

.mantle_size
|0CF806| db $02, $02, $02, $02, $02, $02

.mantle_offset_x
|0CF80C| db   0,  16,  32,   0,  16,  32

.mantle_offset_y
|0CF812| db   0,   0,   0,  16,  16,  16

.mantle_char
|0CF818| db $0C, $0E, $0C, $2C, $2E, $2C

.mantle_prop
|0CF81E| db $31, $31, $71, $31, $31, $71

;---------------------------------------------------------------------------------------------------

AttractAgahnimOAM:

.size
|0CF824| db $02, $02, $02, $02, $02, $02

.offset_x
|0CF82A| db   5,  11,   0,  16,   0,  16

.offset_y
|0CF830| db  25,  25,   0,   0,  16,  16

;---------------------------------------------------------------------------------------------------

.char_step3
|0CF836| db $6C, $6C, $82, $82, $A2, $A2

.char_step5
|0CF83C| db $6C, $6C, $80, $82, $A0, $A2

.char_step6
|0CF842| db $6C, $6C, $82, $80, $A2, $A0

.char_step4
|0CF848| db $6C, $6C, $80, $80, $A0, $A0

.char_step0
|0CF84E| db $6C, $6C, $84, $84, $A4, $A4

.char_step1
|0CF854| db $6C, $6C, $C4, $C2, $E4, $E6

.char_step2
|0CF85A| db $6C, $6C, $88, $8A, $A8, $AA

;---------------------------------------------------------------------------------------------------

.prop_step0
|0CF860| db $38, $38, $3B, $7B, $3B, $7B

.prop_step1
|0CF866| db $38, $38, $3B, $3B, $3B, $3B

.prop_step2
|0CF86C| db $38, $38, $3B, $3B, $3B, $3B

;---------------------------------------------------------------------------------------------------

AttractAltarMaidenOAM:

.size
|0CF872| db $02, $02

.offset_x
|0CF874| db $00, $08

.offset_y
|0CF876| db $00, $00

.char_step0
|0CF878| db $03, $04

.char_step1
|0CF87A| db $00, $01

.prop
|0CF87C| db $3D, $3D

;---------------------------------------------------------------------------------------------------

AttractAltarMaidenShadowOAM:

.size
|0CF87E| db $02, $02

;---------------------------------------------------------------------------------------------------

.offset_x_step4
|0CF880| db $00, $08

.offset_x_step3
|0CF882| db $00, $06

.offset_x_step2
|0CF884| db $00, $04

.offset_x_step1
|0CF886| db $00, $02

.offset_x_step0
|0CF888| db $00, $00

;---------------------------------------------------------------------------------------------------

.offset_y
|0CF88A| db $00, $00

.char
|0CF88C| db $6C, $6C

.prop
|0CF88E| db $38, $38

;===================================================================================================

DramagahnimSpellOAM:

.size
|0CF890| db $00, $00, $00, $00
|0CF894| db $00, $00, $00, $00
|0CF898| db $00, $00, $02, $02
|0CF89C| db $02, $02

.offset_x
|0CF89E| db   0,  28,  -2,  30
|0CF8A2| db  -2,  30,   0,  28
|0CF8A6| db   0,  28,   2,  18
|0CF8AA| db   2,  18

.offset_y
|0CF8AC| db   0,   0,   3,   3
|0CF8B0| db  11,  11,  16,  16
|0CF8B4| db  24,  24,  16,  16
|0CF8B8| db  32,  32

;---------------------------------------------------------------------------------------------------

.char_step0
|0CF8BA| db $CE, $CE, $26, $26
|0CF8BE| db $36, $36, $26, $26
|0CF8C2| db $36, $36, $20, $20
|0CF8C6| db $20, $20

.char_step1
|0CF8C8| db $CE, $CE, $26, $26
|0CF8CC| db $36, $36, $26, $26
|0CF8D0| db $36, $36, $22, $22
|0CF8D4| db $22, $22

;---------------------------------------------------------------------------------------------------

.prop_step0
|0CF8D6| db $35, $35, $75, $35
|0CF8DA| db $75, $35, $75, $35
|0CF8DE| db $75, $35, $35, $75
|0CF8E2| db $B5, $F5

.prop_step1
|0CF8E4| db $37, $37, $77, $37
|0CF8E8| db $77, $37, $77, $37
|0CF8EC| db $77, $37, $37, $77
|0CF8F0| db $B7, $F7

;---------------------------------------------------------------------------------------------------

AttractTelebubbleOAM:

.size
|0CF8F2| db $02, $02

.step0_offset_x
|0CF8F4| db   0

.step0_offset_y
|0CF8F5| db   0

.step0_char
|0CF8F6| db $C6

.step0_prop
|0CF8F7| db $3D

;---------------------------------------------------------------------------------------------------

.step1_offset_x
|0CF8F8| db   0,  16

.step1_offset_y
|0CF8FA| db   0,   0

.step1_char
|0CF8FC| db $24, $24

.step1_prop
|0CF8FE| db $35, $75

;===================================================================================================

Attract_DrawPreloadedSprite:
|0CF900| PHB
|0CF901| PHK
|0CF902| PLB

.next_object
|0CF903| LDX.b $2A

|0CF905| LDA.b ($2D),Y
|0CF907| STA.w $0A60,X

|0CF90A| TXA
|0CF90B| ASL A
|0CF90C| ASL A
|0CF90D| TAX

|0CF90E| LDA.b ($02),Y
|0CF910| CLC
|0CF911| ADC.b $28
|0CF913| STA.w $0900,X

|0CF916| LDA.b ($04),Y
|0CF918| CLC
|0CF919| ADC.b $29
|0CF91B| STA.w $0901,X

|0CF91E| LDA.b ($06),Y
|0CF920| STA.w $0902,X

|0CF923| LDA.b ($08),Y
|0CF925| STA.w $0903,X

|0CF928| INC.b $2A

|0CF92A| DEY
|0CF92B| BPL .next_object

|0CF92D| PLB

|0CF92E| RTS

;===================================================================================================

pool Attract_DrawZelda

.head_char
|0CF92F| db $28

.body_char
|0CF930| db $2A

.head_prop
|0CF931| db $29

.body_prop
|0CF932| db $29

endpool

;---------------------------------------------------------------------------------------------------

Attract_DrawZelda:
|0CF933| LDX.b $2A

|0CF935| LDA.b #$02
|0CF937| STA.w $0A60,X

|0CF93A| TXA
|0CF93B| ASL A
|0CF93C| ASL A
|0CF93D| TAX

|0CF93E| LDA.b #$60
|0CF940| STA.w $0900,X
|0CF943| STA.w $0904,X

|0CF946| LDA.b $28
|0CF948| STA.w $0901,X

|0CF94B| CLC
|0CF94C| ADC.b #$0A
|0CF94E| STA.w $0905,X

|0CF951| LDA.l .head_char
|0CF955| STA.w $0902,X

|0CF958| LDA.l .body_char
|0CF95C| STA.w $0906,X

|0CF95F| LDA.l .head_prop
|0CF963| STA.w $0903,X

|0CF966| LDA.l .body_prop
|0CF96A| STA.w $0907,X

|0CF96D| INC.b $2A
|0CF96F| INC.b $2A

|0CF971| RTS

;===================================================================================================

pool Attract_DrawKidnappedMaiden

.head_char
|0CF972| db $06

.body_char
|0CF973| db $08, $0A

.offset_y
|0CF975| db   0,   1

.body_offset_y
|0CF977| db  10,   9

.head_prop
|0CF979| db $3D

.body_prop
|0CF97A| db $3D

endpool

;---------------------------------------------------------------------------------------------------

Attract_DrawKidnappedMaiden:
|0CF97B| PHB
|0CF97C| PHK
|0CF97D| PLB

|0CF97E| PHY

|0CF97F| LDX.b $2A

|0CF981| LDA.b #$02
|0CF983| LDY.b $40
|0CF985| BEQ .step_0

|0CF987| ORA.b #$01

.step_0
|0CF989| STA.w $0A60,X
|0CF98C| STA.w $0A61,X

|0CF98F| TXA
|0CF990| ASL A
|0CF991| ASL A
|0CF992| TAX

|0CF993| LDA.b $28
|0CF995| STA.w $0900,X
|0CF998| STA.w $0904,X

|0CF99B| LDA.b $32

|0CF99D| LSR A
|0CF99E| LSR A
|0CF99F| LSR A

|0CF9A0| AND.b #$01
|0CF9A2| TAY

|0CF9A3| LDA.b $29
|0CF9A5| CLC
|0CF9A6| ADC.w .offset_y,Y
|0CF9A9| STA.w $0901,X

|0CF9AC| CLC
|0CF9AD| ADC.w .body_offset_y,Y
|0CF9B0| STA.w $0905,X

|0CF9B3| LDA.w .head_char
|0CF9B6| STA.w $0902,X

|0CF9B9| LDA.w .body_char,Y
|0CF9BC| STA.w $0906,X

|0CF9BF| LDA.w .head_prop
|0CF9C2| STA.w $0903,X

|0CF9C5| LDA.w .body_prop
|0CF9C8| STA.w $0907,X

|0CF9CB| INC.b $2A
|0CF9CD| INC.b $2A

|0CF9CF| PLY
|0CF9D0| PLB

|0CF9D1| RTS

;===================================================================================================

Attract_WindowingHDMA:

.table_a
|0CF9D2| db $20 : db $FF, $00
|0CF9D5| db $50 : db $18, $E0
|0CF9D8| db $50 : db $18, $E0
|0CF9DB| db $01 : db $FF, $00
|0CF9DE| db $00

.table_b
|0CF9DF| db $48 : db $FF, $00
|0CF9E2| db $30 : db $30, $D8
|0CF9E5| db $01 : db $FF, $00
|0CF9E8| db $00

;---------------------------------------------------------------------------------------------------

.settings
|0CF9E9| db $01 ; 2 registers, write once
|0CF9EA| db WH0
|0CF9EB| dl .table_a

;===================================================================================================

Attract_SetUpWindowingHDMA:
|0CF9EE| LDX.b #$04

.next
|0CF9F0| LDA.l Attract_WindowingHDMA.settings,X
|0CF9F4| STA.w DMA6MODE,X
|0CF9F7| STA.w DMA7MODE,X

|0CF9FA| DEX
|0CF9FB| BPL .next

; Why even copy both in the same loop if you're just gonna change everything?
|0CF9FD| REP #$20

|0CF9FF| LDA.w #Attract_WindowingHDMA.table_b
|0CFA02| STA.w DMA7ADDRL

|0CFA05| SEP #$20

|0CFA07| LDA.b #WH2
|0CFA09| STA.w DMA7PORT

|0CFA0C| RTS

;===================================================================================================

AttractImage0Stripes:
|0CFA0D| dw $6561, $2840 ; VRAM $C2CA | 42 bytes | Fixed horizontal
|0CFA11| dw $3500

|0CFA13| dw $8561, $2840 ; VRAM $C30A | 42 bytes | Fixed horizontal
|0CFA17| dw $3510

|0CFA19| dw $A561, $2900 ; VRAM $C34A | 42 bytes | Horizontal
|0CFA1D| dw $3501, $3502, $3501, $3502, $3501, $3502, $3501, $3502
|0CFA2D| dw $3501, $3103, $7103, $3502, $3501, $3502, $3501, $3502
|0CFA3D| dw $3501, $3502, $3501, $3502, $3501

|0CFA47| dw $C561, $2900 ; VRAM $C38A | 42 bytes | Horizontal
|0CFA4B| dw $3511, $3512, $3511, $3512, $3511, $3512, $3511, $3512
|0CFA5B| dw $3511, $3513, $7513, $3512, $3511, $3512, $3511, $3512
|0CFA6B| dw $3511, $3512, $3511, $3512, $3511

|0CFA75| dw $E561, $2900 ; VRAM $C3CA | 42 bytes | Horizontal
|0CFA79| dw $3520, $3521, $3520, $3521, $3520, $3521, $3520, $3521
|0CFA89| dw $3520, $3521, $3520, $3521, $3520, $3521, $3520, $3521
|0CFA99| dw $3520, $3521, $3520, $3521, $3520

|0CFAA3| dw $0562, $2840 ; VRAM $C40A | 42 bytes | Fixed horizontal
|0CFAA7| dw $B500

|0CFAA9| db $FF ; end of stripes data

;===================================================================================================

AttractImage1Stripes:
|0CFAAA| dw $6561, $2840 ; VRAM $C2CA | 42 bytes | Fixed horizontal
|0CFAAE| dw $3500

|0CFAB0| dw $8561, $1300 ; VRAM $C30A | 20 bytes | Horizontal
|0CFAB4| dw $3510, $754E, $356E, $3510, $354E, $3510, $354C, $3510
|0CFAC4| dw $754E, $3549

|0CFAC8| dw $8F61, $0840 ; VRAM $C31E | 10 bytes | Fixed horizontal
|0CFACC| dw $3510

|0CFACE| dw $9461, $0B00 ; VRAM $C328 | 12 bytes | Horizontal
|0CFAD2| dw $754E, $356E, $3510, $354E, $3510, $354C

|0CFADE| dw $A561, $2900 ; VRAM $C34A | 42 bytes | Horizontal
|0CFAE2| dw $755F, $755E, $357E, $357F, $355E, $355F, $354D, $755F
|0CFAF2| dw $755E, $354A, $354B, $3510, $7549, $3510, $755F, $755E
|0CFB02| dw $357E, $357F, $355E, $355F, $354D

|0CFB0C| dw $C561, $2900 ; VRAM $C38A | 42 bytes | Horizontal
|0CFB10| dw $3550, $3551, $3552, $3553, $3554, $3555, $3556, $3557
|0CFB20| dw $3558, $3559, $355A, $355B, $355C, $355D, $3550, $3551
|0CFB30| dw $3552, $3553, $3554, $3555, $3556

|0CFB3A| dw $E561, $2900 ; VRAM $C3CA | 42 bytes | Horizontal
|0CFB3E| dw $3560, $3561, $3562, $3563, $3564, $3565, $3566, $3567
|0CFB4E| dw $3568, $3569, $356A, $356B, $356C, $356D, $3560, $3561
|0CFB5E| dw $3562, $3563, $3564, $3565, $3566

|0CFB68| dw $0562, $2900 ; VRAM $C40A | 42 bytes | Horizontal
|0CFB6C| dw $3570, $3571, $3572, $3573, $3574, $3575, $3576, $3577
|0CFB7C| dw $3578, $3579, $357A, $357B, $357C, $357D, $3570, $3571
|0CFB8C| dw $3572, $3573, $3574, $3575, $3576

|0CFB96| db $FF ; end of stripes data

;===================================================================================================

AttractImage2Stripes:
|0CFB97| dw $6561, $2840 ; VRAM $C2CA | 42 bytes | Fixed horizontal
|0CFB9B| dw $3500

|0CFB9D| dw $8561, $2840 ; VRAM $C30A | 42 bytes | Fixed horizontal
|0CFBA1| dw $3510

|0CFBA3| dw $A561, $1D00 ; VRAM $C34A | 30 bytes | Horizontal
|0CFBA7| dw $3522, $3523, $3510, $3522, $3523, $3510, $3522, $3523
|0CFBB7| dw $3510, $3522, $3523, $3510, $7510, $7523, $7522

|0CFBC5| dw $B461, $0640 ; VRAM $C368 | 8 bytes | Fixed horizontal
|0CFBC9| dw $3510

|0CFBCB| dw $B861, $0300 ; VRAM $C370 | 4 bytes | Horizontal
|0CFBCF| dw $7523, $7522

|0CFBD3| dw $C561, $2900 ; VRAM $C38A | 42 bytes | Horizontal
|0CFBD7| dw $3504, $3505, $3506, $3504, $3505, $3506, $3504, $3505
|0CFBE7| dw $3506, $3504, $3505, $3506, $7506, $7505, $7504, $7510
|0CFBF7| dw $7523, $7522, $7506, $7505, $7504

|0CFC01| dw $E561, $2900 ; VRAM $C3CA | 42 bytes | Horizontal
|0CFC05| dw $3514, $3515, $3516, $3514, $3515, $3516, $3514, $3515
|0CFC15| dw $3516, $3514, $3515, $3516, $7516, $7515, $7514, $7506
|0CFC25| dw $7505, $7504, $7516, $7515, $7514

|0CFC2F| dw $0562, $2900 ; VRAM $C40A | 42 bytes | Horizontal
|0CFC33| dw $3524, $3525, $3526, $3524, $3525, $3526, $3524, $3525
|0CFC43| dw $3526, $3524, $3525, $3526, $7526, $7525, $7524, $7526
|0CFC53| dw $7525, $7524, $7526, $7525, $7524

|0CFC5D| db $FF ; end of stripes data

;===================================================================================================

AttractImage3Stripes:
|0CFC5E| dw $6561, $2900 ; VRAM $C2CA | 42 bytes | Horizontal
|0CFC62| dw $3500, $3500, $351B, $3530, $3531, $3532, $3500, $3500
|0CFC72| dw $3500, $3533, $3541, $7541, $7533, $7500, $7500, $7500
|0CFC82| dw $7532, $7531, $7530, $751B, $7500

|0CFC8C| dw $8561, $1E40 ; VRAM $C30A | 32 bytes | Fixed horizontal
|0CFC90| dw $3510

|0CFC92| dw $8661, $0900 ; VRAM $C30C | 10 bytes | Horizontal
|0CFC96| dw $3534, $350B, $3540, $3541, $3542

|0CFCA0| dw $9561, $0900 ; VRAM $C32A | 10 bytes | Horizontal
|0CFCA4| dw $7542, $7541, $7540, $750B, $7534

|0CFCAE| dw $A561, $2900 ; VRAM $C34A | 42 bytes | Horizontal
|0CFCB2| dw $3543, $3544, $3507, $3508, $3509, $350A, $3510, $350C
|0CFCC2| dw $350D, $350E, $350F, $750F, $750E, $750D, $750C, $7510
|0CFCD2| dw $750A, $7509, $7508, $7507, $7544

|0CFCDC| dw $C561, $2900 ; VRAM $C38A | 42 bytes | Horizontal
|0CFCE0| dw $3535, $3536, $3517, $3518, $3519, $351A, $3510, $351C
|0CFCF0| dw $351D, $351E, $351F, $751F, $751E, $751D, $751C, $7510
|0CFD00| dw $751A, $7519, $7518, $7517, $7536

|0CFD0A| dw $E561, $2900 ; VRAM $C3CA | 42 bytes | Horizontal
|0CFD0E| dw $3545, $3546, $3527, $3528, $3529, $352A, $352B, $352C
|0CFD1E| dw $352D, $352E, $352F, $752F, $752E, $752D, $752C, $752B
|0CFD2E| dw $752A, $7529, $7528, $7527, $7546

|0CFD38| dw $0562, $2900 ; VRAM $C40A | 42 bytes | Horizontal
|0CFD3C| dw $3547, $3548, $3537, $3538, $3539, $353A, $353B, $353C
|0CFD4C| dw $353D, $353E, $353F, $753F, $753E, $753D, $753C, $753B
|0CFD5C| dw $753A, $7539, $7538, $7537, $7548

|0CFD66| db $FF ; end of stripes data

;===================================================================================================
; FREE ROM: 0x69
;===================================================================================================
NULL_0CFD67:
|0CFD67| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFD6F| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFD77| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFD7F| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFD87| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFD8F| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFD97| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFD9F| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFDA7| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFDAF| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFDB7| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFDBF| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFDC7| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFDCF| db $FF

;===================================================================================================

UnderworldPaletteSets:
|0CFDD0| db $00, $00, $03, $01 ; 0x00
|0CFDD4| db $02, $00, $03, $01 ; 0x01
|0CFDD8| db $04, $00, $0A, $01 ; 0x02
|0CFDDC| db $06, $00, $01, $07 ; 0x03
|0CFDE0| db $0A, $02, $02, $07 ; 0x04
|0CFDE4| db $04, $04, $03, $0A ; 0x05
|0CFDE8| db $0C, $05, $08, $14 ; 0x06
|0CFDEC| db $0E, $00, $03, $0A ; 0x07
|0CFDF0| db $02, $00, $0F, $14 ; 0x08
|0CFDF4| db $0A, $02, $00, $07 ; 0x09
|0CFDF8| db $02, $00, $0F, $0C ; 0x0A
|0CFDFC| db $06, $00, $06, $07 ; 0x0B
|0CFE00| db $00, $00, $0E, $12 ; 0x0C
|0CFE04| db $12, $05, $05, $0B ; 0x0D
|0CFE08| db $12, $00, $02, $0C ; 0x0E
|0CFE0C| db $10, $05, $0A, $07 ; 0x0F
|0CFE10| db $10, $00, $10, $0C ; 0x10
|0CFE14| db $16, $07, $02, $07 ; 0x11
|0CFE18| db $16, $00, $07, $0F ; 0x12
|0CFE1C| db $08, $00, $04, $0C ; 0x13
|0CFE20| db $08, $00, $04, $09 ; 0x14
|0CFE24| db $04, $00, $03, $01 ; 0x15
|0CFE28| db $14, $00, $04, $04 ; 0x16
|0CFE2C| db $14, $00, $14, $0C ; 0x17
|0CFE30| db $18, $05, $07, $0B ; 0x18
|0CFE34| db $18, $06, $10, $0C ; 0x19
|0CFE38| db $1A, $05, $08, $14 ; 0x1A
|0CFE3C| db $1A, $02, $00, $07 ; 0x1B
|0CFE40| db $06, $00, $03, $0A ; 0x1C
|0CFE44| db $1C, $00, $03, $01 ; 0x1D
|0CFE48| db $1E, $00, $0B, $11 ; 0x1E
|0CFE4C| db $04, $00, $0B, $11 ; 0x1F
|0CFE50| db $0E, $00, $00, $02 ; 0x20
|0CFE54| db $20, $08, $13, $0D ; 0x21
|0CFE58| db $0A, $00, $03, $0A ; 0x22
|0CFE5C| db $14, $00, $04, $04 ; 0x23
|0CFE60| db $1A, $02, $02, $07 ; 0x24
|0CFE64| db $1A, $0A, $00, $00 ; 0x25
|0CFE68| db $00, $00, $03, $02 ; 0x26
|0CFE6C| db $0E, $00, $03, $07 ; 0x27
|0CFE70| db $1A, $05, $05, $0B ; 0x28

;===================================================================================================

OverworldPaletteSet:
|0CFE74| db $00, $FF, $07, $FF ; 0x00
|0CFE78| db $00, $01, $07, $FF ; 0x01
|0CFE7C| db $00, $02, $07, $FF ; 0x02
|0CFE80| db $00, $03, $07, $FF ; 0x03
|0CFE84| db $00, $04, $07, $FF ; 0x04
|0CFE88| db $00, $05, $07, $FF ; 0x05
|0CFE8C| db $00, $06, $07, $FF ; 0x06
|0CFE90| db $07, $06, $05, $FF ; 0x07
|0CFE94| db $00, $08, $07, $FF ; 0x08
|0CFE98| db $00, $09, $07, $FF ; 0x09
|0CFE9C| db $00, $0A, $07, $FF ; 0x0A
|0CFEA0| db $00, $0B, $07, $FF ; 0x0B
|0CFEA4| db $00, $FF, $07, $FF ; 0x0C
|0CFEA8| db $00, $FF, $07, $FF ; 0x0D
|0CFEAC| db $03, $04, $07, $FF ; 0x0E
|0CFEB0| db $04, $04, $03, $FF ; 0x0F
|0CFEB4| db $10, $FF, $06, $FF ; 0x10
|0CFEB8| db $10, $01, $06, $FF ; 0x11
|0CFEBC| db $10, $11, $06, $FF ; 0x12
|0CFEC0| db $10, $03, $06, $FF ; 0x13
|0CFEC4| db $10, $04, $06, $FF ; 0x14
|0CFEC8| db $10, $05, $06, $FF ; 0x15
|0CFECC| db $10, $06, $06, $FF ; 0x16
|0CFED0| db $12, $13, $04, $FF ; 0x17
|0CFED4| db $12, $05, $04, $FF ; 0x18
|0CFED8| db $10, $09, $06, $FF ; 0x19
|0CFEDC| db $10, $0B, $06, $FF ; 0x1A
|0CFEE0| db $10, $0C, $06, $FF ; 0x1B
|0CFEE4| db $10, $0D, $06, $FF ; 0x1C
|0CFEE8| db $10, $0E, $06, $FF ; 0x1D
|0CFEEC| db $10, $0F, $06, $FF ; 0x1E

;===================================================================================================

OverworldSpritesPaletteSet:
|0CFEF0| db $FF, $FF
|0CFEF2| db $03, $0A
|0CFEF4| db $03, $06
|0CFEF6| db $03, $01
|0CFEF8| db $00, $02
|0CFEFA| db $03, $0E
|0CFEFC| db $03, $02
|0CFEFE| db $13, $01
|0CFF00| db $0B, $0C
|0CFF02| db $11, $01
|0CFF04| db $07, $05
|0CFF06| db $11, $00
|0CFF08| db $09, $0B
|0CFF0A| db $0F, $05
|0CFF0C| db $03, $05
|0CFF0E| db $03, $07
|0CFF10| db $0F, $02
|0CFF12| db $0A, $02
|0CFF14| db $05, $01
|0CFF16| db $0C, $0E

;===================================================================================================

OverworldPalettesLoader:
|0CFF18| ASL A
|0CFF19| ASL A
|0CFF1A| TAX

|0CFF1B| STZ.w $0AA9

|0CFF1E| LDA.l OverworldPaletteSet+0,X
|0CFF22| BMI .dont_change_a

|0CFF24| STA.w $0AB4

.dont_change_a
|0CFF27| LDA.l OverworldPaletteSet+1,X
|0CFF2B| BMI .dont_change_b

|0CFF2D| STA.w $0AB5

.dont_change_b
|0CFF30| LDA.l OverworldPaletteSet+2,X
|0CFF34| BMI .dont_change_c

|0CFF36| STA.w $0AB8

.dont_change_c
|0CFF39| LDA.b $00
|0CFF3B| ASL A
|0CFF3C| TAX

|0CFF3D| LDA.l OverworldSpritesPaletteSet+0,X
|0CFF41| BMI .dont_change_d

|0CFF43| STA.w $0AAD

.dont_change_d
|0CFF46| LDA.l OverworldSpritesPaletteSet+1,X
|0CFF4A| BMI .dont_change_e

|0CFF4C| STA.w $0AAE

.dont_change_e
|0CFF4F| JSL PaletteLoad_OWBG1
|0CFF53| JSL PaletteLoad_OWBG2
|0CFF57| JSL PaletteLoad_OWBG3

|0CFF5B| JSL PaletteLoad_SpriteAux1
|0CFF5F| JSL PaletteLoad_SpriteAux2

|0CFF63| RTL

;===================================================================================================

SetBGandFixedColorBlack:
|0CFF64| REP #$20

|0CFF66| LDA.w #$0000 ; RGB #000000

;===================================================================================================

SetBGColorMainBuffer:
|0CFF69| STA.l $7EC500 ; bg color
|0CFF6D| STA.l $7EC540

;===================================================================================================

SetBGColorCacheOnly:
|0CFF71| STA.l $7EC300
|0CFF75| STA.l $7EC340

|0CFF79| SEP #$30

;===================================================================================================

FixedColorBlack:
|0CFF7B| LDA.b #$20 ; Fixed color RGB: #000000
|0CFF7D| STA.b $9C

|0CFF7F| LDA.b #$40
|0CFF81| STA.b $9D

|0CFF83| LDA.b #$80
|0CFF85| STA.b $9E

|0CFF87| RTL

;===================================================================================================

UNREACHABLE_0CFF88:
|0CFF88| db $25, $27, $33, $4F
|0CFF8C| db $54, $4F, $85, $87
|0CFF90| db $89

;===================================================================================================

SetOverworldBackgroundColor:
|0CFF91| REP #$30

|0CFF93| LDX.w #$2669 ; RGB: #489848

|0CFF96| LDA.b $8A
|0CFF98| CMP.w #$0080 ; SPOW
|0CFF9B| BCC .normal_overworld

|0CFF9D| LDA.b $A0
|0CFF9F| CMP.w #$0183 ; OW 83
|0CFFA2| BEQ .special_area

|0CFFA4| CMP.w #$0182 ; OW 82
|0CFFA7| BEQ .special_area

|0CFFA9| CMP.w #$0180 ; OW 80
|0CFFAC| BNE .set_color

.special_area
|0CFFAE| LDX.w #$19C6 ; RGB: #307030
|0CFFB1| BRA .set_color

.normal_overworld
|0CFFB3| LDX.w #$2669 ; RGB: #489848

|0CFFB6| LDA.b $8A

; are we in the dark world?
|0CFFB8| AND.w #$0040
|0CFFBB| BEQ .set_color

|0CFFBD| LDX.w #$2A32 ; RGB: #908850

.set_color
|0CFFC0| TXA
|0CFFC1| BRA SetBGColorMainBuffer

;===================================================================================================

SetOverworldBackgroundColorCacheOnly:
|0CFFC3| REP #$30

|0CFFC5| LDX.w #$2669 ; RGB: #489848

|0CFFC8| LDA.b $8A
|0CFFCA| CMP.w #$0080 ; SPOW
|0CFFCD| BCC .normal_overworld

|0CFFCF| LDA.b $A0
|0CFFD1| CMP.w #$0183 ; OW 83
|0CFFD4| BEQ .special_area

|0CFFD6| CMP.w #$0182 ; OW 82
|0CFFD9| BEQ .special_area

|0CFFDB| CMP.w #$0180 ; OW 80
|0CFFDE| BNE .set_color

.special_area
|0CFFE0| LDX.w #$19C6 ; RGB: #307030
|0CFFE3| BRA .set_color

.normal_overworld
|0CFFE5| LDX.w #$2669 ; RGB: #489848

|0CFFE8| LDA.b $8A

; are we in the dark world?
|0CFFEA| AND.w #$0040
|0CFFED| BEQ .set_color

|0CFFEF| LDX.w #$2A32 ; RGB: #908850

.set_color
|0CFFF2| TXA
|0CFFF3| JMP.w SetBGColorCacheOnly

;===================================================================================================
; FREE ROM: 0x0A
;===================================================================================================
NULL_0CFFF6:
|0CFFF6| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0CFFFE| db $FF, $FF

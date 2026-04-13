org $168000

;===================================================================================================

|168000| db $5F, $0F, $1D, $0F, $1E, $0F, $0F, $07
|168008| db $07, $03
|16800A| db $25 ; Repeat byte
|16800B| db $00
|16800C| db $04 ; Raw block
|16800D| db $5F, $1F, $1F, $0F, $07
|168012| db $22 ; Repeat byte
|168013| db $00
|168014| db $09 ; Raw block
|168015| db $FC, $F0, $B8, $F0, $78, $F0, $F0, $E0
|16801D| db $E0, $C0
|16801F| db $25 ; Repeat byte
|168020| db $00
|168021| db $04 ; Raw block
|168022| db $FC, $F8, $F8, $F0, $E0
|168027| db $22 ; Repeat byte
|168028| db $00
|168029| db $43 ; Repeat word
|16802A| dw $307F
|16802C| db $1E ; Raw block
|16802D| db $77, $38, $7B, $1C, $7C, $17, $5F, $38
|168035| db $4E, $3C, $3C, $00, $70, $70, $78, $7C
|16803D| db $7F, $7F, $7E, $3C, $FA, $04, $FE, $08
|168045| db $EE, $1C, $DE, $38, $3E, $E4, $FC
|16804C| db $24 ; Repeat byte
|16804D| db $00
|16804E| db $06 ; Raw block
|16804F| db $0E, $0E, $1E, $3E, $FE, $FC, $00
|168056| db $44 ; Repeat word
|168057| dw $0F00
|168059| db $08 ; Raw block
|16805A| db $0B, $04, $05, $02, $03, $00, $04, $03
|168062| db $03
|168063| db $22 ; Repeat byte
|168064| db $00
|168065| db $02 ; Raw block
|168066| db $08, $08, $0D
|168069| db $43 ; Repeat word
|16806A| dw $0307
|16806C| db $0D ; Raw block
|16806D| db $00, $9E, $74, $DE, $34, $AE, $D4, $7C
|168075| db $E8, $78, $F0, $F8, $F0, $F0
|16807B| db $22 ; Repeat byte
|16807C| db $00
|16807D| db $22 ; Repeat byte
|16807E| db $FE
|16807F| db $83 ; Copy past
|168080| dw $0208
|168082| db $0C ; Raw block
|168083| db $00, $0F, $00, $0E, $01, $0F, $01, $0C
|16808B| db $03, $11, $0F, $0B, $07
|168090| db $83 ; Copy past
|168091| dw $01B8
|168093| db $14 ; Raw block
|168094| db $08, $09, $0B, $0F, $1F, $0F, $07, $03
|16809C| db $DC, $60, $FE, $98, $FF, $FA, $7F, $D6
|1680A4| db $FA, $8C, $FC, $80, $80
|1680A9| db $22 ; Repeat byte
|1680AA| db $00
|1680AB| db $00 ; Raw block
|1680AC| db $FC
|1680AD| db $83 ; Copy past
|1680AE| dw $014C
|1680B0| db $12 ; Raw block
|1680B1| db $FC, $80, $00, $78, $3F, $7C, $3F, $7E
|1680B9| db $3F, $3F, $1F, $6F, $3F, $4F, $38, $2E
|1680C1| db $1C, $1C, $00
|1680C4| db $22 ; Repeat byte
|1680C5| db $7F
|1680C6| db $0F ; Raw block
|1680C7| db $3F, $7F, $7F, $3E, $1C, $16, $E8, $3E
|1680CF| db $F4, $7E, $FC, $FE, $F8, $FE, $E4, $FC
|1680D7| db $24 ; Repeat byte
|1680D8| db $00
|1680D9| db $24 ; Repeat byte
|1680DA| db $FE
|1680DB| db $00 ; Raw block
|1680DC| db $FC
|1680DD| db $23 ; Repeat byte
|1680DE| db $00
|1680DF| db $01 ; Raw block
|1680E0| db $03, $00
|1680E2| db $43 ; Repeat word
|1680E3| dw $0304
|1680E5| db $03 ; Raw block
|1680E6| db $06, $03, $07, $03
|1680EA| db $83 ; Copy past
|1680EB| dw $018C
|1680ED| db $01 ; Raw block
|1680EE| db $00, $03
|1680F0| db $23 ; Repeat byte
|1680F1| db $07
|1680F2| db $19 ; Raw block
|1680F3| db $03, $01, $7A, $2C, $74, $28, $F8, $40
|1680FB| db $63, $82, $57, $94, $7F, $A8, $FF, $A0
|168103| db $FF, $50, $7F, $7F, $FF, $FD, $E9, $D5
|16810B| db $DF, $EF
|16810D| db $23 ; Repeat byte
|16810E| db $00
|16810F| db $03 ; Raw block
|168110| db $01, $00, $02, $01
|168114| db $86 ; Copy past
|168115| dw $02D6
|168117| db $22 ; Repeat byte
|168118| db $00
|168119| db $01 ; Raw block
|16811A| db $01, $03
|16811C| db $22 ; Repeat byte
|16811D| db $07
|16811E| db $1E ; Raw block
|16811F| db $03, $38, $0F, $FB, $07, $7F, $C0, $7F
|168127| db $C3, $FC, $C7, $F8, $8F, $F8, $3F, $7C
|16812F| db $1F, $3F, $EF, $F7, $EF, $EF, $FF, $FF
|168137| db $7F, $18, $00, $24, $00, $27, $00
|16813E| db $43 ; Repeat word
|16813F| dw $1031
|168141| db $E0, $25 ; EXT Raw block
|168143| db $39, $08, $1D, $0C, $0E, $06, $18, $3C
|16814B| db $3F, $2F, $2F, $17, $13, $09, $06, $00
|168153| db $7F, $00, $FE, $70, $CF, $F8, $C7, $3D
|16815B| db $E7, $1C, $F7, $0C, $FF, $38, $06, $79
|168163| db $FE, $FF, $FF, $3F, $9E, $FD
|168169| db $83 ; Copy past
|16816A| dw $0168
|16816C| db $0E ; Raw block
|16816D| db $EC, $50, $EE, $B0, $FE, $98, $FE, $40
|168175| db $EC, $10, $EE, $58, $00, $78, $FC
|16817C| db $22 ; Repeat byte
|16817D| db $FE
|16817E| db $01 ; Raw block
|16817F| db $7C, $FE
|168181| db $23 ; Repeat byte
|168182| db $00
|168183| db $0B ; Raw block
|168184| db $01, $00, $02, $00, $06, $02, $0F, $06
|16818C| db $0F, $01, $1C, $0F
|168190| db $83 ; Copy past
|168191| dw $0040
|168193| db $05 ; Raw block
|168194| db $05, $09, $0F, $1F, $00, $0F
|16819A| db $43 ; Repeat word
|16819B| dw $1F00
|16819D| db $E0, $29 ; EXT Raw block
|16819F| db $01, $1E, $0D, $1F, $02, $1F, $03, $1F
|1681A7| db $01, $0F, $00, $0A, $0A, $00, $0D, $02
|1681AF| db $0B, $09, $00, $83, $83, $4F, $04, $DF
|1681B7| db $4B, $FC, $89, $FE, $46, $DF, $03, $CF
|1681BF| db $A4, $7D, $00, $03, $07, $CC, $8E, $47
|1681C7| db $83, $62
|1681C9| db $2E ; Repeat byte
|1681CA| db $00
|1681CB| db $00 ; Raw block
|1681CC| db $01
|1681CD| db $2A ; Repeat byte
|1681CE| db $00
|1681CF| db $0C ; Raw block
|1681D0| db $03, $03, $0F, $04, $1F, $0B, $3C, $09
|1681D8| db $3E, $06, $7F, $03, $FF
|1681DD| db $83 ; Copy past
|1681DE| dw $02DF
|1681E0| db $03 ; Raw block
|1681E1| db $0C, $0E, $07, $03
|1681E5| db $22 ; Repeat byte
|1681E6| db $00
|1681E7| db $E0, $2B ; EXT Raw block
|1681E9| db $05, $0B, $0A, $05, $0D, $10, $11, $04
|1681F1| db $04, $00, $09, $02, $02, $00, $01, $0A
|1681F9| db $0D, $11, $04, $08, $02, $09, $0E, $04
|168201| db $0F, $1B, $3F, $06, $7F, $00, $7F, $08
|168209| db $FF, $1C, $FE, $00, $7C, $09, $0C, $1F
|168211| db $27, $30, $58, $7C
|168215| db $25 ; Repeat byte
|168216| db $00
|168217| db $0A ; Raw block
|168218| db $16, $00, $3F, $0A, $3F, $01, $1E, $00
|168220| db $3F, $00, $1F
|168223| db $22 ; Repeat byte
|168224| db $00
|168225| db $03 ; Raw block
|168226| db $16, $0A, $00, $11
|16822A| db $23 ; Repeat byte
|16822B| db $00
|16822C| db $83 ; Copy past
|16822D| dw $03DB
|16822F| db $08 ; Raw block
|168230| db $9F, $8B, $FC, $49, $FE, $86, $FF, $03
|168238| db $DF
|168239| db $83 ; Copy past
|16823A| dw $02DF
|16823C| db $03 ; Raw block
|16823D| db $8C, $CE, $87, $03
|168241| db $24 ; Repeat byte
|168242| db $00
|168243| db $0A ; Raw block
|168244| db $07, $07, $1F, $0C, $3F, $09, $1E, $03
|16824C| db $3C, $11, $7E
|16824F| db $22 ; Repeat byte
|168250| db $00
|168251| db $04 ; Raw block
|168252| db $07, $0F, $0E, $04, $1E
|168257| db $26 ; Repeat byte
|168258| db $00
|168259| db $08 ; Raw block
|16825A| db $07, $07, $0F, $05, $0E, $09, $1E, $08
|168262| db $3F
|168263| db $23 ; Repeat byte
|168264| db $00
|168265| db $03 ; Raw block
|168266| db $07, $06, $0E, $0F
|16826A| db $37 ; Repeat byte
|16826B| db $00
|16826C| db $0C ; Raw block
|16826D| db $7F, $3F, $FF, $47, $CF, $3F, $BF, $7D
|168275| db $FF, $44, $FC, $00, $78
|16827A| db $22 ; Repeat byte
|16827B| db $00
|16827C| db $00 ; Raw block
|16827D| db $7F
|16827E| db $23 ; Repeat byte
|16827F| db $FF
|168280| db $0D ; Raw block
|168281| db $FC, $78, $00, $1E, $02, $3F, $01, $7F
|168289| db $00, $4F, $00, $37, $07, $0F
|16828F| db $24 ; Repeat byte
|168290| db $00
|168291| db $E0, $2F ; EXT Raw block
|168293| db $15, $2E, $7F, $7F, $38, $0F, $00, $00
|16829B| db $3F, $19, $BF, $A0, $FF, $E9, $FE, $E7
|1682A3| db $FD, $8F, $FC, $0F, $0E, $07, $07, $00
|1682AB| db $FF, $59, $1F, $1F, $7F, $FF, $0F, $07
|1682B3| db $FF, $D8, $FF, $EC, $3F, $F0, $CE, $38
|1682BB| db $E8, $10, $F0, $80, $40, $80, $C0, $00
|1682C3| db $22 ; Repeat byte
|1682C4| db $FF
|1682C5| db $0F ; Raw block
|1682C6| db $BE, $98, $F0, $C0, $C0, $7F, $08, $1F
|1682CE| db $04, $0B, $00, $05, $00, $02, $00, $01
|1682D6| db $24 ; Repeat byte
|1682D7| db $00
|1682D8| db $05 ; Raw block
|1682D9| db $73, $1B, $0E, $07, $03, $01
|1682DF| db $22 ; Repeat byte
|1682E0| db $00
|1682E1| db $43 ; Repeat word
|1682E2| dw $000F
|1682E4| db $00 ; Raw block
|1682E5| db $07
|1682E6| db $43 ; Repeat word
|1682E7| dw $0300
|1682E9| db $25 ; Repeat byte
|1682EA| db $00
|1682EB| db $01 ; Raw block
|1682EC| db $08, $0A
|1682EE| db $22 ; Repeat byte
|1682EF| db $02
|1682F0| db $22 ; Repeat byte
|1682F1| db $00
|1682F2| db $15 ; Raw block
|1682F3| db $B7, $FF, $12, $FF, $1B, $FE, $19, $EE
|1682FB| db $2C, $F7, $0E, $3F, $01, $1F, $00, $07
|168303| db $F1, $13, $1B, $A9, $B4, $0F
|168309| db $83 ; Copy past
|16830A| dw $02DE
|16830C| db $E0, $2D ; EXT Raw block
|16830E| db $00, $1F, $00, $3F, $10, $3F, $08, $1F
|168316| db $1C, $3F, $06, $1F, $00, $07, $00, $02
|16831E| db $12, $18, $0F, $1E, $07, $00, $C4, $BD
|168326| db $37, $FF, $12, $FF, $93, $EE, $09, $F6
|16832E| db $0C, $FF, $01, $FF, $00, $87, $A2, $31
|168336| db $D3, $A3, $11, $EC, $81, $00
|16833C| db $85 ; Copy past
|16833D| dw $0408
|16833F| db $09 ; Raw block
|168340| db $26, $7F, $10, $7F, $0C, $FF, $78, $8C
|168348| db $38, $44
|16834A| db $84 ; Copy past
|16834B| dw $0418
|16834D| db $0E ; Raw block
|16834E| db $7C, $78, $38, $90, $70, $20, $F0, $D8
|168356| db $FE, $64, $FE, $08, $FE, $00, $FC
|16835D| db $23 ; Repeat byte
|16835E| db $00
|16835F| db $04 ; Raw block
|168360| db $90, $30, $F8, $E4, $0C
|168365| db $22 ; Repeat byte
|168366| db $00
|168367| db $02 ; Raw block
|168368| db $03, $0F, $01
|16836B| db $43 ; Repeat word
|16836C| dw $0007
|16836E| db $00 ; Raw block
|16836F| db $03
|168370| db $27 ; Repeat byte
|168371| db $00
|168372| db $01 ; Raw block
|168373| db $03, $01
|168375| db $25 ; Repeat byte
|168376| db $00
|168377| db $06 ; Raw block
|168378| db $C4, $ED, $17, $FF, $92, $FF, $13
|16837F| db $83 ; Copy past
|168380| dw $055F
|168382| db $84 ; Copy past
|168383| dw $0533
|168385| db $11 ; Raw block
|168386| db $C2, $F1, $F3, $03, $11, $0C, $01, $00
|16838E| db $30, $7F, $38, $7F, $0F, $3F, $03, $1F
|168396| db $00, $07
|168398| db $25 ; Repeat byte
|168399| db $00
|16839A| db $03 ; Raw block
|16839B| db $3F, $3F, $0F, $03
|16839F| db $23 ; Repeat byte
|1683A0| db $00
|1683A1| db $05 ; Raw block
|1683A2| db $0C, $1F, $07, $1F, $00, $07
|1683A8| db $29 ; Repeat byte
|1683A9| db $00
|1683AA| db $01 ; Raw block
|1683AB| db $0F, $07
|1683AD| db $25 ; Repeat byte
|1683AE| db $00
|1683AF| db $FF ; End of GFX 99

;===================================================================================================

GFX_9A:
|1683B0| db $25 ; Repeat byte
|1683B1| db $00
|1683B2| db $09 ; Raw block
|1683B3| db $07, $00, $1F, $07, $38, $1F, $60, $3F
|1683BB| db $C1, $7E
|1683BD| db $22 ; Repeat byte
|1683BE| db $00
|1683BF| db $04 ; Raw block
|1683C0| db $07, $1F, $3F, $7F, $FE
|1683C5| db $25 ; Repeat byte
|1683C6| db $00
|1683C7| db $09 ; Raw block
|1683C8| db $E0, $00, $F8, $E0, $1C, $F8, $06, $FC
|1683D0| db $83, $7E
|1683D2| db $22 ; Repeat byte
|1683D3| db $00
|1683D4| db $04 ; Raw block
|1683D5| db $E0, $F8, $FC, $FE, $7F
|1683DA| db $25 ; Repeat byte
|1683DB| db $00
|1683DC| db $09 ; Raw block
|1683DD| db $38, $00, $74, $38, $BB, $0C, $BD, $33
|1683E5| db $77, $0F
|1683E7| db $22 ; Repeat byte
|1683E8| db $00
|1683E9| db $04 ; Raw block
|1683EA| db $38, $7C, $FF, $CD, $77
|1683EF| db $25 ; Repeat byte
|1683F0| db $00
|1683F1| db $09 ; Raw block
|1683F2| db $1C, $00, $2E, $1C, $DD, $30, $BD, $CC
|1683FA| db $4E, $B0
|1683FC| db $22 ; Repeat byte
|1683FD| db $00
|1683FE| db $1C ; Raw block
|1683FF| db $1C, $3E, $FF, $F3, $AE, $FE, $7F, $FD
|168407| db $BF, $FB, $DF, $F7, $EF, $EF, $F7, $DF
|16840F| db $FB, $BF, $FD, $7F, $FE, $FE, $FD, $FB
|168417| db $F7, $EF, $DF, $BF, $7F
|16841C| db $97 ; Copy past
|16841D| dw $0060
|16841F| db $E0, $23 ; EXT Raw block
|168421| db $03, $00, $0F, $03, $1F, $0C, $3F, $10
|168429| db $7F, $20, $7F, $00, $E7, $58, $F5, $0A
|168431| db $03, $0F, $1F, $3F, $67, $67, $E6, $F4
|168439| db $C0, $00, $F0, $C0, $F8, $30, $CC, $38
|168441| db $A6, $5C, $CE, $34
|168445| db $43 ; Repeat word
|168446| dw $00FF
|168448| db $07 ; Raw block
|168449| db $C0, $F0, $F8, $FC, $DE, $7E, $3F, $3F
|168451| db $23 ; Repeat byte
|168452| db $00
|168453| db $00 ; Raw block
|168454| db $78
|168455| db $43 ; Repeat word
|168456| dw $FD00
|168458| db $05 ; Raw block
|168459| db $30, $CD, $78, $FF, $00, $FD
|16845F| db $22 ; Repeat byte
|168460| db $00
|168461| db $00 ; Raw block
|168462| db $78
|168463| db $22 ; Repeat byte
|168464| db $FD
|168465| db $01 ; Raw block
|168466| db $87, $87
|168468| db $43 ; Repeat word
|168469| dw $0010
|16846B| db $06 ; Raw block
|16846C| db $FF, $00, $10, $C7, $C7, $EF, $A5
|168473| db $45 ; Repeat word
|168474| dw $00FF
|168476| db $06 ; Raw block
|168477| db $00, $EF, $28, $D7, $EF, $FF, $EF
|16847E| db $43 ; Repeat word
|16847F| dw $0010
|168481| db $85 ; Copy past
|168482| dw $00DC
|168484| db $00 ; Raw block
|168485| db $45
|168486| db $45 ; Repeat word
|168487| dw $00FF
|168489| db $86 ; Copy past
|16848A| dw $00E9
|16848C| db $06 ; Raw block
|16848D| db $14, $00, $7E, $00, $FE, $00, $7F
|168494| db $83 ; Copy past
|168495| dw $010B
|168497| db $0C ; Raw block
|168498| db $00, $7E, $00, $28, $00, $14, $6A, $AE
|1684A0| db $79, $9E, $75, $56, $28
|1684A5| db $88 ; Copy past
|1684A6| dw $0090
|1684A8| db $06 ; Raw block
|1684A9| db $00, $4F, $30, $EF, $10, $FF, $00
|1684B0| db $83 ; Copy past
|1684B1| dw $00A0
|1684B3| db $03 ; Raw block
|1684B4| db $73, $43, $E7, $BF
|1684B8| db $85 ; Copy past
|1684B9| dw $00A8
|1684BB| db $09 ; Raw block
|1684BC| db $FC, $08, $FE, $60, $9E, $F0, $2F, $D2
|1684C4| db $0F, $F2
|1684C6| db $83 ; Copy past
|1684C7| dw $00B8
|1684C9| db $05 ; Raw block
|1684CA| db $FE, $FE, $DF, $FF, $1F, $00
|1684D0| db $47 ; Repeat word
|1684D1| dw $033E
|1684D3| db $02 ; Raw block
|1684D4| db $1F, $00, $02
|1684D7| db $43 ; Repeat word
|1684D8| dw $1F00
|1684DA| db $23 ; Repeat byte
|1684DB| db $3F
|1684DC| db $06 ; Raw block
|1684DD| db $1F, $03, $1F, $F8, $00, $FC, $20
|1684E4| db $43 ; Repeat word
|1684E5| dw $30DC
|1684E7| db $04 ; Raw block
|1684E8| db $FC, $20, $F8, $00, $40
|1684ED| db $43 ; Repeat word
|1684EE| dw $F800
|1684F0| db $23 ; Repeat byte
|1684F1| db $3C
|1684F2| db $43 ; Repeat word
|1684F3| dw $C0F8
|1684F5| db $0B ; Raw block
|1684F6| db $7F, $D0, $7F, $A0, $7F, $5A, $3F, $25
|1684FE| db $1F, $18, $07, $07
|168502| db $22 ; Repeat byte
|168503| db $00
|168504| db $14 ; Raw block
|168505| db $FF, $FF, $AF, $5F, $25, $18, $07, $00
|16850D| db $03, $FE, $0B, $FE, $05, $FE, $5A, $FC
|168515| db $A4, $F8, $18, $E0, $E0
|16851A| db $22 ; Repeat byte
|16851B| db $00
|16851C| db $0B ; Raw block
|16851D| db $FF, $FF, $F5, $FA, $A4, $18, $E0, $00
|168525| db $4D, $3F, $54, $3B
|168529| db $43 ; Repeat word
|16852A| dw $7996
|16852C| db $02 ; Raw block
|16852D| db $4A, $3D, $27
|168530| db $84 ; Copy past
|168531| dw $0189
|168533| db $0B ; Raw block
|168534| db $4F, $5F, $9B, $99, $4D, $27, $18, $07
|16853C| db $B2, $FC, $2A, $DC
|168540| db $43 ; Repeat word
|168541| dw $9E69
|168543| db $02 ; Raw block
|168544| db $52, $BC, $E4
|168547| db $84 ; Copy past
|168548| dw $01A1
|16854A| db $07 ; Raw block
|16854B| db $F2, $FA, $D9, $99, $B2, $E4, $18, $E0
|168553| db $F0, $2F ; EXT Copy past
|168555| dw $0060
|168557| db $0A ; Raw block
|168558| db $BC, $43, $BF, $40, $A7, $58, $46, $39
|168560| db $40, $3F, $20
|168563| db $84 ; Copy past
|168564| dw $0189
|168566| db $07 ; Raw block
|168567| db $9C, $8F, $80, $40, $40, $20, $18, $07
|16856F| db $44 ; Repeat word
|168570| dw $02FF
|168572| db $16 ; Raw block
|168573| db $06, $3E, $C4, $3E, $CC, $3C, $C8, $F8
|16857B| db $00, $E0, $00, $FF, $DF, $8F, $1E, $1E
|168583| db $3C, $F8, $E0, $85, $78, $FF, $78
|16858A| db $45 ; Repeat word
|16858B| dw $00FD
|16858D| db $00 ; Raw block
|16858E| db $78
|16858F| db $24 ; Repeat byte
|168590| db $00
|168591| db $01 ; Raw block
|168592| db $FF, $FF
|168594| db $22 ; Repeat byte
|168595| db $FD
|168596| db $00 ; Raw block
|168597| db $78
|168598| db $22 ; Repeat byte
|168599| db $00
|16859A| db $0B ; Raw block
|16859B| db $EF, $52, $C7, $FF, $EF, $FF, $FF, $00
|1685A3| db $FF, $FF, $00, $10
|1685A7| db $22 ; Repeat byte
|1685A8| db $00
|1685A9| db $05 ; Raw block
|1685AA| db $D7, $EF, $EF, $FF, $00, $FF
|1685B0| db $22 ; Repeat byte
|1685B1| db $00
|1685B2| db $01 ; Raw block
|1685B3| db $EF, $92
|1685B5| db $89 ; Copy past
|1685B6| dw $025B
|1685B8| db $22 ; Repeat byte
|1685B9| db $00
|1685BA| db $02 ; Raw block
|1685BB| db $D7, $EF, $EF
|1685BE| db $43 ; Repeat word
|1685BF| dw $00FF
|1685C1| db $00 ; Raw block
|1685C2| db $00
|1685C3| db $97 ; Copy past
|1685C4| dw $0060
|1685C6| db $E0, $39 ; EXT Raw block
|1685C8| db $FF, $00, $9B, $64, $97, $68, $4F, $30
|1685D0| db $7F, $00, $3F, $00, $1F, $03, $07, $00
|1685D8| db $AF, $83, $87, $4F, $7F, $3F, $1F, $07
|1685E0| db $9F, $62, $FB, $06, $FA, $04, $F6, $0C
|1685E8| db $EC, $18, $F8, $30, $F0, $C0, $C0, $00
|1685F0| db $FF, $FF, $FE, $FE, $FC, $F8, $F0, $C0
|1685F8| db $2C, $1F, $2E, $1F, $2C, $1D, $6E, $18
|168600| db $2C, $1D
|168602| db $84 ; Copy past
|168603| dw $02D0
|168605| db $05 ; Raw block
|168606| db $1F, $2F, $2F, $2E, $29, $2E
|16860C| db $22 ; Repeat byte
|16860D| db $2F
|16860E| db $09 ; Raw block
|16860F| db $34, $F8, $14, $F8, $24, $F0, $0F, $E0
|168617| db $04, $F0
|168619| db $83 ; Copy past
|16861A| dw $02E8
|16861C| db $06 ; Raw block
|16861D| db $34, $F8, $F4, $F4, $EC, $50, $EC
|168624| db $22 ; Repeat byte
|168625| db $F4
|168626| db $01 ; Raw block
|168627| db $00, $00
|168629| db $83 ; Copy past
|16862A| dw $0090
|16862C| db $09 ; Raw block
|16862D| db $1C, $0F, $31, $1E, $30, $1F, $64, $3F
|168635| db $68, $3F
|168637| db $83 ; Copy past
|168638| dw $012F
|16863A| db $05 ; Raw block
|16863B| db $3E, $3F, $7F, $7F, $00, $00
|168641| db $83 ; Copy past
|168642| dw $00A8
|168644| db $09 ; Raw block
|168645| db $38, $F0, $8C, $78, $0C, $F8, $26, $FC
|16864D| db $16, $FC
|16864F| db $83 ; Copy past
|168650| dw $00B7
|168652| db $E0, $33 ; EXT Raw block
|168654| db $7C, $FC, $FE, $FE, $18, $00, $34, $18
|16865C| db $7A, $2C, $5F, $14, $2D, $03, $1B, $07
|168664| db $15, $0F, $28, $1F, $18, $3C, $5E, $6F
|16866C| db $3D, $1B, $17, $2F, $18, $00, $2C, $18
|168674| db $5E, $34, $FA, $28, $B4, $C0, $58, $A0
|16867C| db $A8, $F0, $14, $F8, $18, $3C, $7A, $F6
|168684| db $FC, $B8, $E8, $F4
|168688| db $F0, $36 ; EXT Copy past
|16868A| dw $0060
|16868C| db $08 ; Raw block
|16868D| db $13, $7C, $07, $79, $06, $F8, $07, $FC
|168695| db $47
|168696| db $83 ; Copy past
|168697| dw $00A0
|168699| db $03 ; Raw block
|16869A| db $7F, $7E, $FF, $FF
|16869E| db $86 ; Copy past
|16869F| dw $0138
|1686A1| db $08 ; Raw block
|1686A2| db $C8, $3E, $E0, $9E, $60, $1F, $E2, $3F
|1686AA| db $E2
|1686AB| db $84 ; Copy past
|1686AC| dw $0148
|1686AE| db $02 ; Raw block
|1686AF| db $7E, $FF, $FF
|1686B2| db $83 ; Copy past
|1686B3| dw $0090
|1686B5| db $0B ; Raw block
|1686B6| db $1E, $0D, $3C, $13, $7C, $03, $7E, $01
|1686BE| db $FF, $40, $F9, $46
|1686C2| db $84 ; Copy past
|1686C3| dw $03A0
|1686C5| db $02 ; Raw block
|1686C6| db $73, $E3, $F1
|1686C9| db $83 ; Copy past
|1686CA| dw $00A8
|1686CC| db $0B ; Raw block
|1686CD| db $78, $B0, $BC, $48, $3E, $C0, $7E, $80
|1686D5| db $FF, $02, $9F, $62
|1686D9| db $83 ; Copy past
|1686DA| dw $0329
|1686DC| db $03 ; Raw block
|1686DD| db $FE, $CE, $C7, $8F
|1686E1| db $8B ; Copy past
|1686E2| dw $0090
|1686E4| db $03 ; Raw block
|1686E5| db $CF, $30, $E7, $18
|1686E9| db $84 ; Copy past
|1686EA| dw $03A0
|1686EC| db $02 ; Raw block
|1686ED| db $71, $C1, $E3
|1686F0| db $84 ; Copy past
|1686F1| dw $00A8
|1686F3| db $0A ; Raw block
|1686F4| db $20, $FC, $00, $FE, $30, $CE, $78, $97
|1686FC| db $6A, $CF, $32
|1686FF| db $85 ; Copy past
|168700| dw $0148
|168702| db $18 ; Raw block
|168703| db $EF, $FF, $01, $00, $07, $01, $1E, $06
|16870B| db $38, $18, $33, $10, $67, $23, $6C, $24
|168713| db $CC, $44, $01, $07, $1F, $3F, $3F, $7F
|16871B| db $7F
|16871C| db $85 ; Copy past
|16871D| dw $025E
|16871F| db $43 ; Repeat word
|168720| dw $FF00
|168722| db $06 ; Raw block
|168723| db $FF, $00, $00, $55, $00, $AA, $00
|16872A| db $25 ; Repeat byte
|16872B| db $FF
|16872C| db $02 ; Raw block
|16872D| db $AA, $55, $2E
|168730| db $43 ; Repeat word
|168731| dw $2C1F
|168733| db $8F ; Copy past
|168734| dw $02D5
|168736| db $22 ; Repeat byte
|168737| db $2F
|168738| db $83 ; Copy past
|168739| dw $02F4
|16873B| db $00 ; Raw block
|16873C| db $04
|16873D| db $8F ; Copy past
|16873E| dw $02ED
|168740| db $22 ; Repeat byte
|168741| db $F4
|168742| db $0C ; Raw block
|168743| db $78, $3F, $4A, $3F, $2D, $1F, $23, $1F
|16874B| db $10, $0F, $0C, $03, $03
|168750| db $22 ; Repeat byte
|168751| db $00
|168752| db $14 ; Raw block
|168753| db $7F, $4F, $2D, $23, $10, $0C, $03, $00
|16875B| db $1A, $FC, $5A, $FC, $B4, $F8, $C4, $F8
|168763| db $08, $F0, $30, $C0, $C0
|168768| db $22 ; Repeat byte
|168769| db $00
|16876A| db $09 ; Raw block
|16876B| db $FA, $FA, $B4, $C4, $08, $30, $C0, $00
|168773| db $2C, $1B
|168775| db $43 ; Repeat word
|168776| dw $3956
|168778| db $04 ; Raw block
|168779| db $5A, $3D, $2C, $1F, $13
|16877E| db $84 ; Copy past
|16877F| dw $0489
|168781| db $09 ; Raw block
|168782| db $2F, $5B, $59, $5D, $2F, $13, $0C, $03
|16878A| db $34, $D8
|16878C| db $43 ; Repeat word
|16878D| dw $9C6A
|16878F| db $04 ; Raw block
|168790| db $5A, $BC, $34, $F8, $C8
|168795| db $84 ; Copy past
|168796| dw $04A1
|168798| db $07 ; Raw block
|168799| db $F4, $DA, $9A, $BA, $F4, $C8, $30, $C0
|1687A1| db $F0, $2F ; EXT Copy past
|1687A3| dw $0060
|1687A5| db $1B ; Raw block
|1687A6| db $FF, $43, $FF, $40, $5F, $20, $6F, $30
|1687AE| db $33, $1C, $1C, $0F, $0F, $03, $03, $00
|1687B6| db $FF, $FF, $7F, $7F, $3F, $1F, $0F, $03
|1687BE| db $FF, $C2, $FF, $02
|1687C2| db $83 ; Copy past
|1687C3| dw $02BC
|1687C5| db $03 ; Raw block
|1687C6| db $CC, $38, $38, $F0
|1687CA| db $8B ; Copy past
|1687CB| dw $02C4
|1687CD| db $0B ; Raw block
|1687CE| db $FD, $42, $FF, $00, $7F, $00, $76, $09
|1687D6| db $32, $0D, $18, $07
|1687DA| db $83 ; Copy past
|1687DB| dw $048A
|1687DD| db $13 ; Raw block
|1687DE| db $FD, $DF, $49, $50, $30, $18, $0C, $03
|1687E6| db $BF, $42, $FF, $00, $FE, $00, $6E, $90
|1687EE| db $4C, $B0, $18, $E0
|1687F2| db $83 ; Copy past
|1687F3| dw $04A2
|1687F5| db $E0, $21 ; EXT Raw block
|1687F7| db $BF, $FB, $92, $0A, $0C, $18, $30, $C0
|1687FF| db $FF, $00, $CF, $30, $8F, $70, $49, $36
|168807| db $40, $3F, $31, $0E, $1F, $00, $07, $00
|16880F| db $BF, $8F, $83, $40, $40, $31, $1F, $07
|168817| db $FF, $02
|168819| db $8A ; Copy past
|16881A| dw $02BA
|16881C| db $00 ; Raw block
|16881D| db $40
|16881E| db $84 ; Copy past
|16881F| dw $02C6
|168821| db $08 ; Raw block
|168822| db $3E, $3C, $78, $F0, $C0, $D9, $48, $DA
|16882A| db $48
|16882B| db $83 ; Copy past
|16882C| dw $05A0
|16882E| db $87 ; Copy past
|16882F| dw $05A0
|168831| db $47 ; Repeat word
|168832| dw $FDFE
|168834| db $0F ; Raw block
|168835| db $FC, $03, $F2, $0D, $CF, $30, $D3, $2C
|16883D| db $A7, $58, $AE, $51, $7E, $81, $39, $C6
|168845| db $27 ; Repeat byte
|168846| db $00
|168847| db $F0, $2E ; EXT Copy past
|168849| dw $0060
|16884B| db $00 ; Raw block
|16884C| db $7F
|16884D| db $FF ; End of GFX 9A

;===================================================================================================

GFX_9B:
|16884E| db $13 ; Raw block
|16884F| db $02, $00, $05, $00, $04, $02, $08, $02
|168857| db $1C, $0C, $14, $0D, $1A, $06, $1C, $02
|16885F| db $04, $02, $07, $0F
|168863| db $22 ; Repeat byte
|168864| db $1F
|168865| db $0F ; Raw block
|168866| db $17, $40, $00, $20, $00, $C0, $20, $90
|16886E| db $00, $38, $B0, $A8, $30, $58, $60, $B8
|168876| db $43 ; Repeat word
|168877| dw $2040
|168879| db $19 ; Raw block
|16887A| db $70, $F8, $78, $F8, $68, $0B, $00, $06
|168882| db $00, $12, $00, $08, $05, $01, $00, $17
|16888A| db $07, $18, $0F, $13, $0C, $00, $09, $05
|168892| db $17, $0F
|168894| db $22 ; Repeat byte
|168895| db $1F
|168896| db $14 ; Raw block
|168897| db $00, $00, $C0, $00, $40, $80, $30, $00
|16889F| db $90, $00, $E8, $80, $E8, $E0, $FC, $F0
|1688A7| db $80, $00, $E0, $C0, $E0
|1688AC| db $22 ; Repeat byte
|1688AD| db $F0
|1688AE| db $E0, $5F ; EXT Raw block
|1688B0| db $05, $00, $03, $00, $05, $02, $0D, $00
|1688B8| db $1C, $0D, $1E, $0D, $3E, $1C, $3A, $0E
|1688C0| db $00, $0C, $06, $0A, $1F, $1D, $3D, $3F
|1688C8| db $20, $00, $00, $40, $20, $80, $B0, $20
|1688D0| db $B8, $10, $B8, $70, $7C, $B8, $4C, $70
|1688D8| db $90, $E0, $E0, $70, $58, $78, $BC, $FC
|1688E0| db $01, $00, $05, $02, $0F, $04, $0E, $02
|1688E8| db $1F, $00, $1C, $03, $3E, $15, $3F, $1F
|1688F0| db $04, $06, $0C, $0F, $13, $17, $3F, $3F
|1688F8| db $00, $00, $60, $00, $30, $A0, $70, $40
|168900| db $F8, $00, $38, $C0, $5C, $A8, $94, $F8
|168908| db $60, $A0, $F0, $F0, $C8, $E8, $FC, $FC
|168910| db $43 ; Repeat word
|168911| dw $0001
|168913| db $E0, $2B ; EXT Raw block
|168915| db $02, $00, $3A, $01, $67, $38, $7F, $3C
|16891D| db $3F, $1C, $7C, $0F, $04, $06, $01, $3B
|168925| db $7F, $7C, $3C, $5F, $40, $00, $28, $C0
|16892D| db $30, $88, $44, $10, $A8, $40, $E4, $00
|168935| db $F8, $E0, $38, $E0, $20, $C0, $D8, $B8
|16893D| db $F0, $78, $F0, $F0
|168941| db $26 ; Repeat byte
|168942| db $00
|168943| db $08 ; Raw block
|168944| db $1C, $18, $3E, $34, $7F, $3C, $7F, $19
|16894C| db $7F
|16894D| db $23 ; Repeat byte
|16894E| db $00
|16894F| db $1B ; Raw block
|168950| db $18, $3C, $3C, $19, $00, $0E, $0C, $3F
|168958| db $3E, $7F, $6F, $FF, $C7, $FF, $EE, $FF
|168960| db $FE, $FF, $FC, $FF, $00, $0C, $3E, $7F
|168968| db $FF, $FE, $FE, $FC
|16896C| db $43 ; Repeat word
|16896D| dw $FF3C
|16896F| db $00 ; Raw block
|168970| db $3E
|168971| db $44 ; Repeat word
|168972| dw $7FFF
|168974| db $45 ; Repeat word
|168975| dw $FFFE
|168977| db $04 ; Raw block
|168978| db $FC, $FC, $FE, $FF, $FF
|16897D| db $22 ; Repeat byte
|16897E| db $FE
|16897F| db $E0, $23 ; EXT Raw block
|168981| db $70, $FC, $7C, $FE, $C2, $FF, $CE, $FF
|168989| db $FC, $FF, $F0, $FE, $40, $FC, $00, $F8
|168991| db $70, $7C, $FE, $FE, $FC, $F0, $40, $00
|168999| db $2D, $7F, $26, $7F, $36, $7F, $1C, $3F
|1689A1| db $00, $3E, $00, $1C
|1689A5| db $23 ; Repeat byte
|1689A6| db $00
|1689A7| db $03 ; Raw block
|1689A8| db $3D, $3E, $3E, $1C
|1689AC| db $28 ; Repeat byte
|1689AD| db $00
|1689AE| db $43 ; Repeat word
|1689AF| dw $0080
|1689B1| db $45 ; Repeat word
|1689B2| dw $00C0
|1689B4| db $00 ; Raw block
|1689B5| db $F0
|1689B6| db $27 ; Repeat byte
|1689B7| db $00
|1689B8| db $E0, $54 ; EXT Raw block
|1689BA| db $3F, $11, $3E, $19, $3C, $1F, $1E, $0D
|1689C2| db $0E, $07, $0F, $03, $0F, $00, $04, $00
|1689CA| db $33, $3B, $3F, $1F, $0F, $0B, $0B, $04
|1689D2| db $FC, $88, $7C, $98, $0C, $F8, $58, $B0
|1689DA| db $70, $E0, $F0, $C0, $F0, $00, $20, $00
|1689E2| db $CC, $DC, $FC, $F8, $F0, $D0, $D0, $20
|1689EA| db $2F, $10, $4F, $30, $EF, $79, $FF, $7F
|1689F2| db $7F, $01, $3F, $0F, $1F, $00, $10, $00
|1689FA| db $3C, $74, $FD, $FF, $7F, $2F, $0F, $10
|168A02| db $F8, $F0, $BC, $F0, $18, $F0, $38, $F0
|168A0A| db $70, $E0, $E0, $80, $80
|168A0F| db $22 ; Repeat byte
|168A10| db $00
|168A11| db $00 ; Raw block
|168A12| db $F0
|168A13| db $22 ; Repeat byte
|168A14| db $F8
|168A15| db $10 ; Raw block
|168A16| db $F0, $E0, $80, $00, $3D, $1E, $3F, $1C
|168A1E| db $3F, $1A, $1F, $0D, $1F, $0A, $0F, $01
|168A26| db $03
|168A27| db $22 ; Repeat byte
|168A28| db $00
|168A29| db $14 ; Raw block
|168A2A| db $3E, $3E, $3F, $1F, $1F, $0F, $03, $00
|168A32| db $04, $78, $C4, $38, $AC, $58, $48, $B0
|168A3A| db $F8, $50, $F0, $80, $C0
|168A3F| db $22 ; Repeat byte
|168A40| db $00
|168A41| db $14 ; Raw block
|168A42| db $FC, $7C, $FC, $F8, $F8, $F0, $C0, $00
|168A4A| db $2F, $18, $3F, $10, $3F, $11, $1E, $03
|168A52| db $0F, $00, $07, $03, $03
|168A57| db $22 ; Repeat byte
|168A58| db $00
|168A59| db $14 ; Raw block
|168A5A| db $3F, $3B, $3B, $1F, $0F, $07, $03, $00
|168A62| db $E4, $18, $FC, $08, $FC, $88, $78, $C0
|168A6A| db $F0, $00, $E0, $C0, $C0
|168A6F| db $22 ; Repeat byte
|168A70| db $00
|168A71| db $14 ; Raw block
|168A72| db $FC, $DC, $DC, $F8, $F0, $E0, $C0, $00
|168A7A| db $7F, $07, $3F, $01, $3F, $00, $3F, $04
|168A82| db $3F, $18, $1F, $07, $07
|168A87| db $22 ; Repeat byte
|168A88| db $00
|168A89| db $10 ; Raw block
|168A8A| db $7F, $37, $2F, $3F, $3F, $1F, $07, $00
|168A92| db $18, $E0, $94, $F0, $B6, $F0, $F8, $F0
|168A9A| db $F0
|168A9B| db $83 ; Copy past
|168A9C| dw $01D1
|168A9E| db $22 ; Repeat byte
|168A9F| db $00
|168AA0| db $03 ; Raw block
|168AA1| db $F0, $F8, $F8, $FC
|168AA5| db $83 ; Copy past
|168AA6| dw $01DC
|168AA8| db $0B ; Raw block
|168AA9| db $09, $3F, $02, $3F, $06, $3F, $04, $1F
|168AB1| db $0C, $1F, $0E, $1F
|168AB5| db $43 ; Repeat word
|168AB6| dw $3F1F
|168AB8| db $07 ; Raw block
|168AB9| db $09, $03, $07, $07, $0F, $0F, $1F, $1F
|168AC1| db $43 ; Repeat word
|168AC2| dw $FF3C
|168AC4| db $00 ; Raw block
|168AC5| db $3E
|168AC6| db $44 ; Repeat word
|168AC7| dw $7FFF
|168AC9| db $45 ; Repeat word
|168ACA| dw $FFFE
|168ACC| db $84 ; Copy past
|168ACD| dw $0130
|168ACF| db $22 ; Repeat byte
|168AD0| db $FE
|168AD1| db $02 ; Raw block
|168AD2| db $F3, $FF, $E7
|168AD5| db $43 ; Repeat word
|168AD6| dw $06FF
|168AD8| db $0A ; Raw block
|168AD9| db $3F, $07, $1F, $03, $1F, $01, $0F, $00
|168AE1| db $03, $F3, $E7
|168AE4| db $22 ; Repeat byte
|168AE5| db $07
|168AE6| db $02 ; Raw block
|168AE7| db $03, $01, $00
|168AEA| db $83 ; Copy past
|168AEB| dw $0059
|168AED| db $01 ; Raw block
|168AEE| db $40, $E0
|168AF0| db $43 ; Repeat word
|168AF1| dw $F020
|168AF3| db $03 ; Raw block
|168AF4| db $C0, $F0, $80, $E0
|168AF8| db $83 ; Copy past
|168AF9| dw $016E
|168AFB| db $0E ; Raw block
|168AFC| db $C0, $E0, $E0, $C0, $80, $00, $3D, $7F
|168B04| db $36, $7F, $32, $7F, $16, $7F, $0C
|168B0B| db $86 ; Copy past
|168B0C| dw $0157
|168B0E| db $04 ; Raw block
|168B0F| db $3D, $3E, $3E, $1E, $0C
|168B14| db $23 ; Repeat byte
|168B15| db $00
|168B16| db $03 ; Raw block
|168B17| db $80, $80, $C0, $C0
|168B1B| db $43 ; Repeat word
|168B1C| dw $00E0
|168B1E| db $45 ; Repeat word
|168B1F| dw $00C0
|168B21| db $03 ; Raw block
|168B22| db $FC, $00, $80, $C0
|168B26| db $26 ; Repeat byte
|168B27| db $00
|168B28| db $02 ; Raw block
|168B29| db $03, $00, $0F
|168B2C| db $43 ; Repeat word
|168B2D| dw $1F01
|168B2F| db $12 ; Raw block
|168B30| db $00, $37, $18, $2F, $1C, $3E, $18, $00
|168B38| db $03, $0F, $13, $19, $3D, $3F, $3F, $7E
|168B40| db $00, $FF, $42
|168B43| db $44 ; Repeat word
|168B44| dw $81FF
|168B46| db $04 ; Raw block
|168B47| db $C3, $FF, $7E, $FF, $81
|168B4C| db $22 ; Repeat byte
|168B4D| db $7E
|168B4E| db $24 ; Repeat byte
|168B4F| db $FF
|168B50| db $01 ; Raw block
|168B51| db $7E, $81
|168B53| db $83 ; Copy past
|168B54| dw $0048
|168B56| db $16 ; Raw block
|168B57| db $E0, $80, $F8, $80, $FC, $00, $FC, $08
|168B5F| db $F2, $DC, $7A, $1C, $00, $C0, $E0, $D8
|168B67| db $8C, $DC, $3E, $FE, $00, $00, $01
|168B6E| db $84 ; Copy past
|168B6F| dw $0303
|168B71| db $43 ; Repeat word
|168B72| dw $003F
|168B74| db $0B ; Raw block
|168B75| db $2F, $1C, $4C, $3B, $00, $01, $0F, $13
|168B7D| db $21, $3C, $3F, $7C
|168B81| db $83 ; Copy past
|168B82| dw $0318
|168B84| db $44 ; Repeat word
|168B85| dw $81FF
|168B87| db $07 ; Raw block
|168B88| db $C3, $FF, $7E, $7E, $81, $10, $EF, $7E
|168B90| db $24 ; Repeat byte
|168B91| db $FF
|168B92| db $01 ; Raw block
|168B93| db $7E, $10
|168B95| db $83 ; Copy past
|168B96| dw $016B
|168B98| db $00 ; Raw block
|168B99| db $F0
|168B9A| db $43 ; Repeat word
|168B9B| dw $F880
|168B9D| db $0E ; Raw block
|168B9E| db $00, $FC, $08, $FC, $38, $7C, $B8, $00
|168BA6| db $80, $F0, $E8, $88, $3C, $FC, $7C
|168BAD| db $84 ; Copy past
|168BAE| dw $0300
|168BB0| db $12 ; Raw block
|168BB1| db $03, $1F, $0C, $3F, $07, $3F, $10, $5F
|168BB9| db $18, $4F, $08, $00, $03, $0F, $1F, $3F
|168BC1| db $2F, $64, $77
|168BC4| db $84 ; Copy past
|168BC5| dw $0330
|168BC7| db $0B ; Raw block
|168BC8| db $C0, $F0, $20, $F0, $A0, $E8, $10, $C8
|168BD0| db $30, $C4, $38, $00
|168BD4| db $83 ; Copy past
|168BD5| dw $005B
|168BD7| db $02 ; Raw block
|168BD8| db $A8, $48, $C4
|168BDB| db $23 ; Repeat byte
|168BDC| db $00
|168BDD| db $8B ; Copy past
|168BDE| dw $0392
|168BE0| db $00 ; Raw block
|168BE1| db $00
|168BE2| db $86 ; Copy past
|168BE3| dw $03A0
|168BE5| db $23 ; Repeat byte
|168BE6| db $00
|168BE7| db $06 ; Raw block
|168BE8| db $C0, $00, $F0, $C0, $F8, $30, $F8
|168BEF| db $84 ; Copy past
|168BF0| dw $03B1
|168BF2| db $07 ; Raw block
|168BF3| db $00, $00, $C0, $F0, $F8, $F8, $A8, $48
|168BFB| db $22 ; Repeat byte
|168BFC| db $00
|168BFD| db $E0, $35 ; EXT Raw block
|168BFF| db $0C, $0C, $1E, $12, $3F, $14, $3F, $19
|168C07| db $3F, $0B, $3F, $03, $3F, $00, $00, $0C
|168C0F| db $1E, $1C, $19, $0B, $03, $00, $0F, $0F
|168C17| db $3F, $3F, $7F, $67, $FF, $C6, $FF, $EC
|168C1F| db $FF, $FC, $FF, $78, $FF, $00, $0F, $3F
|168C27| db $7F, $FE, $FC, $FC, $F8, $38, $FF, $3C
|168C2F| db $FF, $3F, $FF, $7F, $FF, $7D
|168C35| db $44 ; Repeat word
|168C36| dw $FCFF
|168C38| db $15 ; Raw block
|168C39| db $FE, $FF, $F8, $FC, $FF, $FF, $FD, $FC
|168C41| db $FC, $FE, $78, $FE, $CC, $FE, $18, $FE
|168C49| db $30, $FC, $C0, $F8, $40, $F0
|168C4F| db $83 ; Copy past
|168C50| dw $02EE
|168C52| db $05 ; Raw block
|168C53| db $78, $FC, $F8, $F0, $C0, $40
|168C59| db $25 ; Repeat byte
|168C5A| db $00
|168C5B| db $07 ; Raw block
|168C5C| db $1B, $1B, $3F, $3F, $3C, $3F, $18, $1F
|168C64| db $43 ; Repeat word
|168C65| dw $0F0C
|168C67| db $07 ; Raw block
|168C68| db $00, $00, $1B, $3F, $3F, $1F, $0F, $0F
|168C70| db $25 ; Repeat byte
|168C71| db $00
|168C72| db $09 ; Raw block
|168C73| db $F0, $F0, $F8, $F8, $3C, $FC, $1C, $FC
|168C7B| db $98, $78
|168C7D| db $22 ; Repeat byte
|168C7E| db $00
|168C7F| db $E0, $3F ; EXT Raw block
|168C81| db $F0, $F8, $FC, $FC, $78, $1F, $01, $0F
|168C89| db $04, $1D, $08, $13, $03, $0F, $04, $07
|168C91| db $03, $04, $03, $03, $00, $1E, $0B, $13
|168C99| db $1C, $0B, $07, $07, $03, $18, $00, $FF
|168CA1| db $E7, $E7, $00, $DB, $81, $E7, $A4, $FF
|168CA9| db $18, $FC, $C0, $C0, $00, $E7, $18, $FF
|168CB1| db $66, $5B, $E7, $FC, $C0, $FE, $84, $F4
|168CB9| db $08, $C4, $B8, $F8, $80, $E0, $40, $C0
|168CC1| db $24 ; Repeat byte
|168CC2| db $00
|168CC3| db $14 ; Raw block
|168CC4| db $7E, $CC, $7C, $78, $E0, $C0, $00, $00
|168CCC| db $7C, $03, $68, $17, $2C, $13, $1A, $05
|168CD4| db $08, $07, $04, $03, $03
|168CD9| db $22 ; Repeat byte
|168CDA| db $00
|168CDB| db $E0, $27 ; EXT Raw block
|168CDD| db $7C, $58, $3C, $1A, $08, $04, $03, $00
|168CE5| db $80, $7F, $40, $BF, $02, $FD, $0D, $F2
|168CED| db $01, $FE, $03, $FC, $8F, $73, $7F, $00
|168CF5| db $80, $40, $02, $0D, $01, $03, $8F, $7F
|168CFD| db $38, $D0, $F0, $00, $F0, $60, $F0, $E0
|168D05| db $83 ; Copy past
|168D06| dw $0232
|168D08| db $E0, $2E ; EXT Raw block
|168D0A| db $40, $80, $80, $00, $38, $F0, $90, $10
|168D12| db $20, $C0, $C0, $80, $3D, $0B, $7C, $33
|168D1A| db $4F, $08, $5F, $10, $7E, $21, $37, $0C
|168D22| db $09, $07, $07, $00, $37, $4F, $77, $6C
|168D2A| db $5D, $3F, $0F, $07, $D4, $A8, $E4, $98
|168D32| db $E2, $1C, $62, $9C, $74, $A8, $F8
|168D39| db $84 ; Copy past
|168D3A| dw $0231
|168D3C| db $E0, $3C ; EXT Raw block
|168D3E| db $D4, $E4, $E2, $E2, $D4, $F8, $E0, $C0
|168D46| db $4F, $04, $3B, $0E, $73, $0F, $7F, $04
|168D4E| db $77, $09, $7F, $20, $33, $00, $01, $00
|168D56| db $7E, $3F, $7F, $4F, $6E, $7F, $33, $01
|168D5E| db $C4, $38, $94, $68, $E4, $18, $C2, $BC
|168D66| db $E4, $98, $F8, $60, $30, $E0, $E0, $00
|168D6E| db $44, $94, $E4, $42, $64, $F8, $F0, $E0
|168D76| db $02, $1F, $06, $1F, $04
|168D7B| db $44 ; Repeat word
|168D7C| dw $0C1F
|168D7E| db $01 ; Raw block
|168D7F| db $0E, $1F
|168D81| db $43 ; Repeat word
|168D82| dw $3F1F
|168D84| db $02 ; Raw block
|168D85| db $03, $07, $07
|168D88| db $22 ; Repeat byte
|168D89| db $0F
|168D8A| db $01 ; Raw block
|168D8B| db $1F, $1F
|168D8D| db $88 ; Copy past
|168D8E| dw $0420
|168D90| db $44 ; Repeat word
|168D91| dw $FCFF
|168D93| db $89 ; Copy past
|168D94| dw $042E
|168D96| db $08 ; Raw block
|168D97| db $C6, $FF, $0F, $FF, $0E, $FF, $0C, $FF
|168D9F| db $0E
|168DA0| db $83 ; Copy past
|168DA1| dw $0240
|168DA3| db $03 ; Raw block
|168DA4| db $1F, $00, $0F, $C6
|168DA8| db $23 ; Repeat byte
|168DA9| db $0F
|168DAA| db $07 ; Raw block
|168DAB| db $07, $01, $00, $00, $C0, $80, $C0, $C0
|168DB3| db $46 ; Repeat word
|168DB4| dw $40E0
|168DB6| db $00 ; Raw block
|168DB7| db $80
|168DB8| db $83 ; Copy past
|168DB9| dw $02EF
|168DBB| db $00 ; Raw block
|168DBC| db $80
|168DBD| db $23 ; Repeat byte
|168DBE| db $C0
|168DBF| db $03 ; Raw block
|168DC0| db $80, $00, $1D, $1E
|168DC4| db $43 ; Repeat word
|168DC5| dw $1F18
|168DC7| db $00 ; Raw block
|168DC8| db $3C
|168DC9| db $22 ; Repeat byte
|168DCA| db $3F
|168DCB| db $19 ; Raw block
|168DCC| db $1F, $1F, $0E, $0E, $00, $00, $1E, $1F
|168DD4| db $1F, $3F, $3F, $1F, $0E, $00, $D8, $38
|168DDC| db $8C, $7C, $0C, $FC, $DC, $FC, $F8, $F8
|168DE4| db $30, $30
|168DE6| db $23 ; Repeat byte
|168DE7| db $00
|168DE8| db $07 ; Raw block
|168DE9| db $38, $7C, $FC, $FC, $F8, $30, $00, $00
|168DF1| db $FF ; End of GFX 9B

;===================================================================================================

GFX_9C:
|168DF2| db $E4, $8F ; EXT Repeat byte
|168DF4| db $00
|168DF5| db $0B ; Raw block
|168DF6| db $78, $07, $F7, $08, $9E, $61, $F7, $08
|168DFE| db $F7, $48, $FD, $42
|168E02| db $43 ; Repeat word
|168E03| dw $286F
|168E05| db $E0, $51 ; EXT Raw block
|168E07| db $7F, $97, $96, $F6, $B0, $BC, $54, $55
|168E0F| db $1E, $E0, $EF, $10, $79, $86, $EF, $10
|168E17| db $EF, $12, $BF, $42, $FE, $1C, $F6, $14
|168E1F| db $FE, $E9, $69, $6F, $0D, $3D, $22, $AA
|168E27| db $38, $07, $27, $18, $2E, $11, $27, $18
|168E2F| db $37, $08, $5D, $12, $9F, $18, $FF, $18
|168E37| db $3F, $27, $26, $26, $30, $6C, $E4, $E5
|168E3F| db $1C, $E0, $E4, $18, $74, $88, $E4, $18
|168E47| db $EC, $10, $BA, $48, $F9, $18, $FF, $18
|168E4F| db $FC, $E4, $64, $64, $0C, $36, $27, $A7
|168E57| db $38, $07
|168E59| db $45 ; Repeat word
|168E5A| dw $001F
|168E5C| db $E0, $29 ; EXT Raw block
|168E5E| db $3E, $01, $30, $0F, $37, $08, $3F, $03
|168E66| db $3F, $17, $16, $16, $20, $20, $27, $3C
|168E6E| db $1C, $E0, $F8, $00, $98, $60, $3C, $C0
|168E76| db $64, $98, $FC, $40, $BC, $80, $1C, $00
|168E7E| db $FC, $F8, $18, $24, $64, $BC, $7C, $FC
|168E86| db $38, $07
|168E88| db $43 ; Repeat word
|168E89| dw $001F
|168E8B| db $11 ; Raw block
|168E8C| db $7F, $00, $FE, $01, $B0, $4F, $77, $08
|168E94| db $7F, $07, $3F, $17, $16, $76, $A0, $A0
|168E9C| db $67, $78
|168E9E| db $85 ; Copy past
|168E9F| dw $0108
|168EA1| db $E0, $43 ; EXT Raw block
|168EA3| db $38, $C0, $78, $90, $FC, $38, $DC, $D8
|168EAB| db $9C, $98, $FC, $F8, $18, $38, $68, $C4
|168EB3| db $24, $64, $78, $07, $F7, $48, $F8, $67
|168EBB| db $DE, $59, $CF, $44, $63, $23, $60, $20
|168EC3| db $38, $18, $7F, $B7, $98, $A6, $BB, $5C
|168ECB| db $5F, $27, $1E, $E0, $EF, $12, $19, $E0
|168ED3| db $7B, $9A, $F3, $22, $D6, $C4, $66, $04
|168EDB| db $0C, $08, $FE, $ED, $1F, $65, $DD, $2A
|168EE3| db $9A, $F4, $01, $00
|168EE7| db $43 ; Repeat word
|168EE8| dw $0102
|168EEA| db $0E ; Raw block
|168EEB| db $0C, $03, $3E, $0B, $6F, $3B, $7F, $3D
|168EF3| db $7F, $1F, $01, $03, $03, $0F, $3F
|168EFA| db $22 ; Repeat byte
|168EFB| db $7F
|168EFC| db $14 ; Raw block
|168EFD| db $80, $00, $40, $80, $C0, $00, $30, $C0
|168F05| db $7C, $D0, $F6, $DC, $E6, $FC, $0E, $F8
|168F0D| db $80, $C0, $40, $F0, $FC
|168F12| db $22 ; Repeat byte
|168F13| db $FE
|168F14| db $E4, $5F ; EXT Repeat byte
|168F16| db $00
|168F17| db $E0, $3B ; EXT Raw block
|168F19| db $37, $14, $7B, $1B, $78, $28, $7C, $3C
|168F21| db $3E, $1E, $3F, $17, $1F, $07, $07, $00
|168F29| db $2B, $64, $57, $43, $21, $28, $18, $07
|168F31| db $EC, $28, $CE, $C8, $1A, $10, $0A, $28
|168F39| db $24, $E0, $34, $10, $F8, $E0, $E0, $00
|168F41| db $D4, $36, $EE, $D6, $1C, $EC, $18, $E0
|168F49| db $FF, $04, $9B, $6B, $F8, $08, $F8, $18
|168F51| db $7E, $1E, $7F, $13
|168F55| db $83 ; Copy past
|168F56| dw $021C
|168F58| db $13 ; Raw block
|168F59| db $9B, $94, $F7, $E7, $61, $6C, $18, $07
|168F61| db $FF, $20, $D9, $D6, $1F, $10, $0F, $18
|168F69| db $0E, $28, $1E, $08
|168F6D| db $83 ; Copy past
|168F6E| dw $0234
|168F70| db $E0, $2B ; EXT Raw block
|168F72| db $D9, $29, $EF, $E7, $D6, $F6, $18, $E0
|168F7A| db $09, $01, $09, $00, $08, $00, $11, $01
|168F82| db $10, $00, $0F, $07, $0F, $03, $03, $00
|168F8A| db $0E, $0F, $0F, $1E, $1F, $08, $0C, $03
|168F92| db $BC, $A0, $FC, $F0, $FE, $6C, $FB, $6A
|168F9A| db $F6, $A4, $FC, $D8
|168F9E| db $83 ; Copy past
|168F9F| dw $0234
|168FA1| db $0D ; Raw block
|168FA2| db $5C, $0C, $92, $95, $5A, $24, $18, $E0
|168FAA| db $FC, $04, $9C, $64, $7E, $02
|168FB0| db $43 ; Repeat word
|168FB1| dw $031F
|168FB3| db $E0, $31 ; EXT Raw block
|168FB5| db $0F, $04, $0F, $02, $03, $00, $9B, $9B
|168FBD| db $7D, $1C, $1C, $0B, $0D, $03, $1C, $10
|168FC5| db $3C, $30, $7E, $7C, $FB, $EA, $F6, $D4
|168FCD| db $FC, $B8, $F8, $60, $E0, $00, $EC, $CC
|168FD5| db $82, $15, $2A, $44, $98, $E0, $3E, $0E
|168FDD| db $7F, $27, $7F, $2B, $7B, $39, $38, $18
|168FE5| db $1C, $0C
|168FE7| db $83 ; Copy past
|168FE8| dw $027C
|168FEA| db $E0, $74 ; EXT Raw block
|168FEC| db $31, $58, $54, $46, $27, $13, $0C, $03
|168FF4| db $1C, $10, $1E, $14, $FE, $FC, $CE, $CC
|168FFC| db $0C, $08, $38, $30, $F0, $C0, $C0, $00
|169004| db $EC, $EA, $02, $32, $F4, $C8, $30, $C0
|16900C| db $3F, $07, $FF, $00, $9F, $08, $BF, $24
|169014| db $EC, $14, $66, $3A, $73, $1D, $3B, $0E
|16901C| db $3F, $FF, $F5, $D9, $FB, $7D, $7E, $3F
|169024| db $FC, $E0, $FF, $00, $F9, $10, $FD, $24
|16902C| db $37, $28, $66, $5C, $CE, $B8, $DC, $70
|169034| db $FC, $FF, $AF, $9B, $DF, $BE, $7E, $FC
|16903C| db $00, $18, $B0, $31, $0A, $48, $04, $68
|169044| db $41, $48, $10, $10, $20, $24, $20, $20
|16904C| db $18, $31, $48, $68, $48, $10, $24, $20
|169054| db $08, $42, $04, $80, $60, $14, $00, $08
|16905C| db $08, $0A, $20, $74, $90
|169061| db $22 ; Repeat byte
|169062| db $10
|169063| db $E0, $68 ; EXT Raw block
|169065| db $42, $80, $14, $08, $0A, $74, $10, $10
|16906D| db $38, $07, $17, $08, $18, $07, $7E, $19
|169075| db $EF, $64, $C3, $43, $E0, $60, $79, $38
|16907D| db $3F, $17, $18, $66, $9B, $BC, $9F, $46
|169085| db $1C, $E0, $E8, $10, $18, $E0, $7E, $98
|16908D| db $F3, $22, $C3, $C2, $37, $06, $EE, $0C
|169095| db $FC, $E8, $18, $66, $DD, $3D, $C9, $12
|16909D| db $FF, $08, $7F, $00, $0F, $07, $0C, $04
|1690A5| db $07, $00, $03, $01, $02, $00, $04, $00
|1690AD| db $1C, $0C, $08, $0B, $07, $02, $03, $07
|1690B5| db $EF, $6B, $9F, $8A, $9F, $91, $7E, $35
|1690BD| db $FE, $CD, $FC, $1B, $F9, $C7, $E2, $BF
|1690C5| db $94, $75, $6F, $CB, $33, $E7, $3F, $7F
|1690CD| db $80
|1690CE| db $46 ; Repeat word
|1690CF| dw $C000
|1690D1| db $07 ; Raw block
|1690D2| db $F0, $80, $F9, $30, $EE, $20, $EC, $24
|1690DA| db $22 ; Repeat byte
|1690DB| db $00
|1690DC| db $04 ; Raw block
|1690DD| db $80, $F0, $C9, $1F, $1B
|1690E2| db $25 ; Repeat byte
|1690E3| db $00
|1690E4| db $09 ; Raw block
|1690E5| db $60, $00, $F0, $00, $90, $60, $50, $20
|1690ED| db $E0, $C0
|1690EF| db $22 ; Repeat byte
|1690F0| db $00
|1690F1| db $E0, $34 ; EXT Raw block
|1690F3| db $60, $90, $F0, $F0, $20, $3E, $00, $7E
|1690FB| db $28, $CF, $78, $DF, $31, $FE, $62, $FD
|169103| db $05, $FB, $09, $37, $17, $28, $6C, $FF
|16910B| db $3A, $F9, $62, $36, $28, $00, $00, $0C
|169113| db $00, $1E, $00, $EA, $04, $CC, $88, $F8
|16911B| db $30, $FE, $40, $FB, $50, $00, $0C, $12
|169123| db $FE, $74, $C8, $BE, $BF
|169128| db $23 ; Repeat byte
|169129| db $00
|16912A| db $13 ; Raw block
|16912B| db $0F, $00, $1F, $07, $3F, $0C, $3F, $18
|169133| db $3E, $10, $3D, $11, $00, $00, $0E, $17
|16913B| db $2F, $3D, $3B, $1E
|16913F| db $25 ; Repeat byte
|169140| db $00
|169141| db $09 ; Raw block
|169142| db $90, $00, $B8, $00, $D8, $90, $F8, $90
|16914A| db $DC, $A8
|16914C| db $22 ; Repeat byte
|16914D| db $00
|16914E| db $05 ; Raw block
|16914F| db $90, $A8, $68, $68, $74, $01
|169155| db $22 ; Repeat byte
|169156| db $00
|169157| db $18 ; Raw block
|169158| db $07, $00, $0D, $03, $1A, $0D, $32, $0D
|169160| db $39, $1E, $BF, $1C, $00, $00, $03, $0B
|169168| db $1D, $0D, $3F, $3F, $E0, $C0, $C0, $80
|169170| db $80
|169171| db $2A ; Repeat byte
|169172| db $00
|169173| db $02 ; Raw block
|169174| db $E0, $C0, $80
|169177| db $24 ; Repeat byte
|169178| db $00
|169179| db $E0, $31 ; EXT Raw block
|16917B| db $3B, $1E, $66, $3D, $7F, $24, $6E, $09
|169183| db $5F, $04, $7F, $00, $3E, $00, $1C, $00
|16918B| db $3F, $7E, $7F, $76, $7B, $7F, $3E, $1C
|169193| db $DC, $78, $66, $BC, $FE, $24, $76, $90
|16919B| db $FA, $20, $FE, $00, $7C, $00, $38, $00
|1691A3| db $FC, $7E, $FE, $6E, $DE, $FE, $7C, $38
|1691AB| db $01, $00
|1691AD| db $43 ; Repeat word
|1691AE| dw $0102
|1691B0| db $09 ; Raw block
|1691B1| db $0C, $03, $7E, $0B, $EF, $7B, $FF, $7C
|1691B9| db $7F, $3E
|1691BB| db $83 ; Copy past
|1691BC| dw $0190
|1691BE| db $02 ; Raw block
|1691BF| db $7F, $FF, $FF
|1691C2| db $88 ; Copy past
|1691C3| dw $0197
|1691C5| db $07 ; Raw block
|1691C6| db $7E, $D0, $F7, $DE, $E7, $FE, $0E, $FC
|1691CE| db $83 ; Copy past
|1691CF| dw $01A8
|1691D1| db $0F ; Raw block
|1691D2| db $FE, $FF, $FF, $FE, $7C, $2C, $7F, $17
|1691DA| db $3F, $13, $7F, $3F, $73, $33, $38, $18
|1691E2| db $83 ; Copy past
|1691E3| dw $021C
|1691E5| db $13 ; Raw block
|1691E6| db $53, $68, $2C, $40, $4C, $27, $18, $07
|1691EE| db $1E, $14, $9E, $98, $DC, $D8, $F6, $34
|1691F6| db $C6, $C4, $1C, $18
|1691FA| db $83 ; Copy past
|1691FB| dw $0234
|1691FD| db $0E ; Raw block
|1691FE| db $EA, $66, $24, $CA, $3A, $E4, $18, $E0
|169206| db $0D, $01, $1B, $05, $19, $06, $0E
|16920D| db $28 ; Repeat byte
|16920E| db $00
|16920F| db $03 ; Raw block
|169210| db $0E, $16, $17, $0E
|169214| db $23 ; Repeat byte
|169215| db $00
|169216| db $0C ; Raw block
|169217| db $FE, $B9, $BF, $06, $7F, $37, $9F, $1A
|16921F| db $FE, $44, $7E, $00, $1C
|169224| db $22 ; Repeat byte
|169225| db $00
|169226| db $07 ; Raw block
|169227| db $7F, $B9, $48, $E5, $BA, $7E, $1C, $00
|16922F| db $97 ; Copy past
|169230| dw $03A8
|169232| db $E0, $47 ; EXT Raw block
|169234| db $D8, $80, $AC, $08, $EC, $A0, $FE, $B0
|16923C| db $FE, $90, $FE, $68, $FC, $70, $70, $A0
|169244| db $58, $B4, $DC, $CE, $EE, $96, $8C, $D0
|16924C| db $1F, $08, $1F, $03, $17, $04, $27, $05
|169254| db $7F, $08, $6E, $10, $33, $00, $01, $00
|16925C| db $17, $1C, $1B, $3B, $57, $5F, $33, $01
|169264| db $DB, $B0, $9F, $76, $2E, $F8, $CC, $F8
|16926C| db $F8, $30, $70, $40, $E0, $40, $C0, $00
|169274| db $7F, $F9, $FE, $FC, $F8, $B0, $A0, $C0
|16927C| db $83 ; Copy past
|16927D| dw $021C
|16927F| db $06 ; Raw block
|169280| db $0A, $01, $1F, $06, $0F, $01, $01
|169287| db $24 ; Repeat byte
|169288| db $00
|169289| db $14 ; Raw block
|16928A| db $18, $07, $0F, $11, $0E, $01, $00, $00
|169292| db $DE, $6C, $9C, $F0, $38, $F0, $F0, $60
|16929A| db $E0, $80, $C0, $80, $80
|16929F| db $22 ; Repeat byte
|1692A0| db $00
|1692A1| db $1F ; Raw block
|1692A2| db $F2, $FC, $F8, $F0, $60, $40, $80, $00
|1692AA| db $32, $00, $7F, $30, $FE, $68, $FF, $5A
|1692B2| db $7F, $36, $7E, $0C, $FC, $18, $58, $00
|1692BA| db $32, $7D, $F6, $E5, $4D, $7E, $A4, $58
|1692C2| db $37 ; Repeat byte
|1692C3| db $00
|1692C4| db $FF ; End of GFX 9C

;===================================================================================================

GFX_9D:
|1692C5| db $E0, $2F ; EXT Raw block
|1692C7| db $28, $00, $7C, $00, $7F, $00, $FE, $01
|1692CF| db $79, $07, $FA, $07, $74, $0F, $32, $0F
|1692D7| db $28, $54, $63, $96, $69, $8B, $77, $33
|1692DF| db $14, $00, $3E, $00, $FE, $00, $7F, $80
|1692E7| db $9E, $E0, $5F, $E0, $AE, $70, $4C, $F0
|1692EF| db $14, $2A, $C6, $69, $96, $D1, $6E, $CC
|1692F7| db $27 ; Repeat byte
|1692F8| db $00
|1692F9| db $07 ; Raw block
|1692FA| db $30, $00, $4C, $30, $EE, $14, $CF, $32
|169302| db $23 ; Repeat byte
|169303| db $00
|169304| db $03 ; Raw block
|169305| db $30, $7C, $9A, $BD
|169309| db $27 ; Repeat byte
|16930A| db $00
|16930B| db $07 ; Raw block
|16930C| db $0C, $00, $32, $0C, $77, $28, $F3, $4C
|169314| db $23 ; Repeat byte
|169315| db $00
|169316| db $03 ; Raw block
|169317| db $0C, $3E, $59, $BD
|16931B| db $29 ; Repeat byte
|16931C| db $00
|16931D| db $85 ; Copy past
|16931E| dw $0038
|169320| db $24 ; Repeat byte
|169321| db $00
|169322| db $02 ; Raw block
|169323| db $30, $7C, $9A
|169326| db $29 ; Repeat byte
|169327| db $00
|169328| db $85 ; Copy past
|169329| dw $0050
|16932B| db $24 ; Repeat byte
|16932C| db $00
|16932D| db $02 ; Raw block
|16932E| db $0C, $3E, $59
|169331| db $23 ; Repeat byte
|169332| db $00
|169333| db $03 ; Raw block
|169334| db $7E, $00, $42, $3C
|169338| db $47 ; Repeat word
|169339| dw $1824
|16933B| db $03 ; Raw block
|16933C| db $00, $00, $7E, $42
|169340| db $23 ; Repeat byte
|169341| db $24
|169342| db $06 ; Raw block
|169343| db $03, $00, $0F, $00, $1D, $00, $1E
|16934A| db $45 ; Repeat word
|16934B| dw $3F00
|16934D| db $11 ; Raw block
|16934E| db $08, $5F, $08, $03, $0F, $1F, $1F, $3F
|169356| db $3F, $37, $77, $C0, $00, $F0, $00, $B8
|16935E| db $00, $78
|169360| db $45 ; Repeat word
|169361| dw $FC00
|169363| db $E0, $2E ; EXT Raw block
|169365| db $10, $FA, $90, $C0, $F0, $F8, $F8, $FC
|16936D| db $FC, $EC, $6E, $FE, $7F, $FD, $BF, $FB
|169375| db $DF, $F7, $EF, $EF, $F7, $DF, $FB, $BF
|16937D| db $FD, $7F, $FE, $FE, $FD, $FB, $F7, $EF
|169385| db $DF, $BF, $7F, $73, $00, $8F, $03, $F7
|16938D| db $70, $7F, $33, $3C, $0C, $38, $08
|169394| db $43 ; Repeat word
|169395| dw $2858
|169397| db $1F ; Raw block
|169398| db $73, $FC, $8F, $4C, $33, $37, $77, $77
|1693A0| db $80, $00, $F8, $80, $E4, $00, $F4, $D0
|1693A8| db $1C, $08, $0E, $04, $0D, $02, $17, $02
|1693B0| db $80, $78, $FC, $2C, $F4, $FE, $FF, $FF
|1693B8| db $24 ; Repeat byte
|1693B9| db $00
|1693BA| db $0A ; Raw block
|1693BB| db $03, $01, $0F, $0E, $1F, $01, $1E, $13
|1693C3| db $3C, $07, $38
|1693C6| db $22 ; Repeat byte
|1693C7| db $00
|1693C8| db $04 ; Raw block
|1693C9| db $01, $0F, $0E, $14, $08
|1693CE| db $23 ; Repeat byte
|1693CF| db $00
|1693D0| db $07 ; Raw block
|1693D1| db $40, $48, $00, $E0, $E8, $FC, $20, $F0
|1693D9| db $43 ; Repeat word
|1693DA| dw $F810
|1693DC| db $E0, $C7 ; EXT Raw block
|1693DE| db $00, $00, $48, $00, $EC, $E0, $F0, $F0
|1693E6| db $03, $00, $0E, $01, $17, $08, $23, $1C
|1693EE| db $27, $18, $7E, $01, $BC, $42, $AC, $53
|1693F6| db $03, $0E, $17, $23, $27, $7E, $FD, $EC
|1693FE| db $C0, $00, $70, $80, $E8, $10, $C4, $38
|169406| db $E4, $18, $7E, $00, $BD, $02, $35, $4A
|16940E| db $C0, $70, $E8, $C4, $E4, $FE, $7F, $B7
|169416| db $5D, $3B, $46, $39, $44, $3F, $22, $1F
|16941E| db $1C, $03, $03, $01, $02, $01, $01, $00
|169426| db $5D, $5E, $4D, $23, $1D, $03, $02, $01
|16942E| db $BE, $DC, $66, $9C, $2A, $FC, $44, $F8
|169436| db $38, $C0, $C0, $80, $40, $80, $80, $00
|16943E| db $BE, $7E, $BA, $C4, $B8, $C0, $40, $80
|169446| db $9B, $6D, $5E, $2C, $3F, $02, $3F, $14
|16944E| db $1F, $06, $1F, $08, $31, $1E, $1E, $00
|169456| db $FE, $7F, $3D, $2A, $19, $1F, $31, $1E
|16945E| db $D9, $B6, $7A, $34, $FC, $40, $FC, $28
|169466| db $F8, $60, $F8, $10, $8C, $78, $78, $00
|16946E| db $7F, $FE, $BC, $54, $98, $F8, $8C, $78
|169476| db $CF, $36, $FD, $0D, $DE, $66, $FF, $62
|16947E| db $7F, $04, $7F, $26, $C7, $78, $FC, $00
|169486| db $B9, $F2, $F9, $F5, $7A, $79, $C7, $FC
|16948E| db $F3, $6C, $BF, $B0, $7B, $66, $FF, $46
|169496| db $FE, $20, $FE, $64, $E3, $1E, $3F, $00
|16949E| db $9D, $4F, $9F, $AF, $5E, $9E, $E3, $3F
|1694A6| db $43 ; Repeat word
|1694A7| dw $1824
|1694A9| db $0E ; Raw block
|1694AA| db $E7, $18, $FD, $66, $F9, $7E, $F3, $7E
|1694B2| db $C3, $3C, $7E, $00, $24, $24, $E7
|1694B9| db $23 ; Repeat byte
|1694BA| db $FF
|1694BB| db $E0, $30 ; EXT Raw block
|1694BD| db $7E, $5F, $09, $7F, $39, $3F, $19, $1F
|1694C5| db $0D, $1E, $0E, $0F, $06, $07, $03, $03
|1694CD| db $00, $72, $40, $22, $12, $11, $09, $04
|1694D5| db $03, $7A, $10, $76, $14, $6C, $08, $48
|1694DD| db $00, $18, $10, $B0, $20, $E0, $C0, $C0
|1694E5| db $00, $CE, $8A, $D4, $F8, $E8, $D0, $20
|1694ED| db $C0
|1694EE| db $97 ; Copy past
|1694EF| dw $00D8
|1694F1| db $E0, $3B ; EXT Raw block
|1694F3| db $7C, $24, $67, $01, $4F, $08, $5C, $1B
|1694FB| db $7F, $30, $3F, $00, $0E, $01, $03, $00
|169503| db $7B, $7E, $77, $67, $4F, $3F, $0E, $03
|16950B| db $3B, $18, $F9, $D8, $FF, $0E, $1E, $E0
|169513| db $FC, $00, $F4, $08, $38, $C0, $E0, $00
|16951B| db $E7, $27, $F1, $FE, $FC, $F4, $38, $E0
|169523| db $19, $3E, $18, $3F, $08, $1F, $0C, $1F
|16952B| db $03, $0F, $00, $03
|16952F| db $23 ; Repeat byte
|169530| db $00
|169531| db $04 ; Raw block
|169532| db $1E, $1F, $0D, $0D, $03
|169537| db $22 ; Repeat byte
|169538| db $00
|169539| db $04 ; Raw block
|16953A| db $94, $78, $60, $F8, $80
|16953F| db $43 ; Repeat word
|169540| dw $40F0
|169542| db $02 ; Raw block
|169543| db $C0, $00, $40
|169546| db $23 ; Repeat byte
|169547| db $00
|169548| db $02 ; Raw block
|169549| db $78, $E0, $80
|16954C| db $22 ; Repeat byte
|16954D| db $40
|16954E| db $E0, $C1 ; EXT Raw block
|169550| db $00, $00, $AC, $53, $DE, $21, $5F, $20
|169558| db $66, $19, $78, $27, $5F, $18, $2F, $0D
|169560| db $1D, $00, $EC, $FE, $7F, $7F, $5F, $67
|169568| db $32, $1D, $35, $CA, $7B, $84, $FA, $04
|169570| db $66, $98, $1E, $EC, $FA, $18, $F4, $B0
|169578| db $B8, $00, $37, $7F, $FE, $FE, $F2, $E6
|169580| db $4C, $B8, $01, $00, $02, $01, $0C, $03
|169588| db $1C, $03, $3E, $17, $4E, $37, $6E, $37
|169590| db $79, $0E, $01, $03, $0F, $1F, $3F, $6F
|169598| db $6E, $78, $80, $00, $70, $80, $3C, $D0
|1695A0| db $3A, $CC, $7E, $EC, $7F, $E4, $73, $EE
|1695A8| db $9E, $70, $80, $F0, $FC, $FE, $FE, $FF
|1695B0| db $73, $1E, $03, $00, $0F, $02, $16, $0F
|1695B8| db $17, $0F, $2B, $17, $38, $0F, $28, $17
|1695C0| db $7B, $34, $02, $0F, $17, $17, $2B, $38
|1695C8| db $2B, $7F, $C0, $00, $F0, $40, $68, $F0
|1695D0| db $E8, $F0, $D6, $E8, $1F, $F2, $15, $EE
|1695D8| db $DA, $24, $40, $F0, $E8, $E8, $D6, $1F
|1695E0| db $D5, $FA, $00, $00, $03, $00, $07, $03
|1695E8| db $0C, $07, $58, $07, $FD, $1F, $B7, $0F
|1695F0| db $92, $0F, $00, $03, $07, $0F, $5F, $BF
|1695F8| db $DF, $FE, $F8, $00, $84, $F8, $1C, $F8
|169600| db $74, $F8, $E8, $F0, $CC, $F0, $12, $EC
|169608| db $2D, $DE, $F8, $FC, $FC, $F4, $E8, $CC
|169610| db $12, $2D
|169612| db $23 ; Repeat byte
|169613| db $00
|169614| db $8B ; Copy past
|169615| dw $0362
|169617| db $00 ; Raw block
|169618| db $00
|169619| db $86 ; Copy past
|16961A| dw $0370
|16961C| db $01 ; Raw block
|16961D| db $00, $00
|16961F| db $8D ; Copy past
|169620| dw $0378
|169622| db $00 ; Raw block
|169623| db $00
|169624| db $86 ; Copy past
|169625| dw $0388
|169627| db $E0, $8F ; EXT Raw block
|169629| db $01, $00, $05, $00, $0E, $04, $17, $0E
|169631| db $2D, $1F, $34, $0F, $6A, $37, $EB, $57
|169639| db $00, $06, $0F, $17, $2F, $37, $6B, $EB
|169641| db $80, $00, $A0, $00, $70, $20, $E8, $70
|169649| db $B4, $F8, $2C, $F0, $56, $EC, $D7, $EA
|169651| db $00, $60, $F0, $E8, $F4, $EC, $D6, $D7
|169659| db $03, $00, $05, $03, $1D, $02, $26, $19
|169661| db $5D, $33, $6F, $36, $E9, $34, $D4, $6A
|169669| db $03, $05, $1D, $37, $7F, $6E, $EA, $D1
|169671| db $C0, $00, $A0, $C0, $B8, $40, $64, $98
|169679| db $BA, $CC, $F6, $6C, $97, $2C, $2B, $56
|169681| db $C0, $A0, $B8, $EC, $FE, $76, $57, $8B
|169689| db $00, $00, $09, $00, $1F, $01, $3E, $03
|169691| db $26, $03, $7B, $27, $E7, $7B, $BD, $73
|169699| db $00, $09, $17, $27, $3F, $7B, $E3, $B3
|1696A1| db $00, $00, $E0, $00, $F8, $E0, $1C, $F8
|1696A9| db $06, $FC, $BD, $FE, $61, $FE, $8E, $70
|1696B1| db $00, $E0, $F8, $FC, $FE, $FD, $61, $8E
|1696B9| db $83 ; Copy past
|1696BA| dw $0360
|1696BC| db $83 ; Copy past
|1696BD| dw $0152
|1696BF| db $11 ; Raw block
|1696C0| db $63, $1C, $E7, $58, $FE, $01, $BC, $42
|1696C8| db $00, $03, $0E, $17, $63, $A7, $FE, $FD
|1696D0| db $00, $00
|1696D2| db $85 ; Copy past
|1696D3| dw $0168
|1696D5| db $1C ; Raw block
|1696D6| db $C6, $38, $E7, $1A, $7F, $00, $BD, $02
|1696DE| db $00, $C0, $70, $E8, $C6, $E5, $FF, $7F
|1696E6| db $71, $1E, $71, $1C, $54, $2A, $76, $29
|1696EE| db $6A, $17, $3D, $03, $07
|1696F3| db $22 ; Repeat byte
|1696F4| db $00
|1696F5| db $E0, $81 ; EXT Raw block
|1696F7| db $78, $72, $51, $70, $6B, $3D, $05, $00
|1696FF| db $8C, $78, $8E, $38, $2A, $54, $6E, $94
|169707| db $5B, $E6, $B3, $CE, $FD, $0E, $0E, $00
|16970F| db $1C, $4E, $8A, $0E, $DB, $B3, $BF, $0E
|169717| db $77, $08, $69, $1E, $32, $1F, $6B, $37
|16971F| db $49, $37, $3B, $07, $07, $01, $01, $00
|169727| db $77, $79, $32, $6B, $49, $3B, $07, $01
|16972F| db $FC, $00, $86, $78, $6A, $FC, $EE, $DC
|169737| db $95, $EA, $F7, $CE, $F9, $86, $8E, $00
|16973F| db $FC, $8E, $6E, $EE, $97, $F7, $F9, $8E
|169747| db $63, $1F, $DD, $6E, $F8, $4F, $E1, $7E
|16974F| db $C6, $79, $79, $06, $37, $0E, $0F, $00
|169757| db $6F, $CD, $CC, $E9, $C6, $59, $3F, $0F
|16975F| db $D7, $3E, $A3, $7E, $F5, $5E, $79, $DE
|169767| db $B9, $0E, $3A, $1C, $E2, $1C, $1C, $00
|16976F| db $DF, $BF, $FD, $79, $F9, $FA, $FA, $1C
|169777| db $92, $0F
|169779| db $87 ; Copy past
|16977A| dw $04E0
|16977C| db $06 ; Raw block
|16977D| db $C7, $79, $7D, $03, $23, $00, $FE
|169784| db $83 ; Copy past
|169785| dw $04F0
|169787| db $E0, $9C ; EXT Raw block
|169789| db $C7, $5F, $23, $29, $DE, $DD, $3E, $85
|169791| db $7E, $A5, $5E, $6A, $BC, $92, $7C, $F4
|169799| db $98, $B8, $00, $29, $DD, $BD, $BD, $7A
|1697A1| db $F2, $F4, $B8, $B9, $47, $6E, $19, $71
|1697A9| db $3E, $E2, $3F, $E9, $57, $EF, $73, $77
|1697B1| db $01, $01, $00, $B9, $7E, $71, $E2, $E9
|1697B9| db $EF, $77, $01, $9D, $E2, $76, $98, $8E
|1697C1| db $7C, $47, $FC, $97, $EA, $F7, $CE, $EE
|1697C9| db $80, $80, $00, $9D, $7E, $8E, $47, $97
|1697D1| db $F7, $EE, $80, $6E, $19, $6B, $17, $5F
|1697D9| db $28, $5F, $2B, $8E, $76, $FE, $72, $7F
|1697E1| db $01, $01, $00, $68, $6B, $57, $50, $C9
|1697E9| db $FD, $7E, $01, $76, $98, $D4, $E8, $FA
|1697F1| db $14, $FA, $D4, $79, $66, $7F, $4E, $FE
|1697F9| db $80, $80, $00, $16, $D4, $EA, $0A, $9B
|169801| db $BF, $7E, $80, $7B, $1F, $38, $07, $3F
|169809| db $08, $6E, $2D, $5D, $1A, $E9, $76, $77
|169811| db $0E, $0F, $00, $7F, $38, $27, $52, $65
|169819| db $E9, $7F, $0F, $7A, $84, $FA, $3C, $F5
|169821| db $7E, $55, $FE, $AD, $9E
|169826| db $85 ; Copy past
|169827| dw $0502
|169829| db $07 ; Raw block
|16982A| db $7A, $FA, $FD, $5D, $ED, $FA, $FA, $1C
|169832| db $43 ; Repeat word
|169833| dw $53AC
|169835| db $15 ; Raw block
|169836| db $DE, $21, $DF, $20, $E6, $59, $B8, $27
|16983E| db $9F, $10, $73, $01, $EC, $EC, $FE, $FF
|169846| db $BF, $DF, $EF, $72, $35, $4A
|16984C| db $83 ; Copy past
|16984D| dw $02E8
|16984F| db $11 ; Raw block
|169850| db $FB, $04, $67, $9A, $1D, $E4, $F9, $08
|169858| db $CE, $80, $B7, $37, $7F, $FF, $FD, $FB
|169860| db $F7, $4E
|169862| db $FF ; End of GFX 9D

;===================================================================================================

GFX_9E:
|169863| db $E0, $4F ; EXT Raw block
|169865| db $23, $00, $57, $03, $DB, $47, $CC, $47
|16986D| db $E8, $48, $7C, $38, $7E, $38, $3C, $0C
|169875| db $23, $74, $BC, $BB, $B7, $47, $47, $33
|16987D| db $C4, $00, $EA, $C0, $DB, $E2, $33, $E2
|169885| db $17, $12, $3E, $1C, $7E, $1C, $3C, $30
|16988D| db $C4, $2E, $3D, $DD, $ED, $E2, $E2, $CC
|169895| db $00, $00, $07, $00, $08, $07, $19, $07
|16989D| db $33, $0F, $73, $0F, $41, $3F, $80, $7F
|1698A5| db $00, $07, $08, $11, $23, $43, $41, $80
|1698AD| db $00, $00, $E0, $00, $F0, $E0, $98, $F0
|1698B5| db $43 ; Repeat word
|1698B6| dw $986C
|1698B8| db $13 ; Raw block
|1698B9| db $9A, $FC, $F2, $FC, $00, $E0, $F0, $F8
|1698C1| db $9C, $9C, $FA, $F2, $00, $00, $0F, $00
|1698C9| db $10, $0F, $29, $17
|1698CD| db $43 ; Repeat word
|1698CE| dw $0F73
|1698D0| db $13 ; Raw block
|1698D1| db $81, $7F, $80, $7F, $00, $0F, $10, $21
|1698D9| db $43, $43, $81, $80, $00, $00, $C0, $00
|1698E1| db $E0, $C0, $90, $E0
|1698E5| db $43 ; Repeat word
|1698E6| dw $9068
|1698E8| db $0B ; Raw block
|1698E9| db $94, $F8, $F4, $F8, $00, $C0, $E0, $F0
|1698F1| db $98, $98, $F4, $F4
|1698F5| db $29 ; Repeat byte
|1698F6| db $00
|1698F7| db $05 ; Raw block
|1698F8| db $10, $00, $3F, $00, $7F, $30
|1698FE| db $24 ; Repeat byte
|1698FF| db $00
|169900| db $02 ; Raw block
|169901| db $10, $3F, $7F
|169904| db $27 ; Repeat byte
|169905| db $00
|169906| db $07 ; Raw block
|169907| db $08, $00, $3C, $00, $E2, $1C, $FD, $DE
|16990F| db $23 ; Repeat byte
|169910| db $00
|169911| db $E0, $33 ; EXT Raw block
|169913| db $08, $3C, $FE, $3F, $03, $00, $07, $02
|16991B| db $0D, $04, $0D, $05, $19, $09, $11, $01
|169923| db $13, $03, $1B, $0A, $03, $05, $0B, $0A
|16992B| db $16, $1E, $1C, $15, $80, $00, $F0, $00
|169933| db $EB, $30, $F7, $1B, $DF, $37, $EE, $17
|16993B| db $FC, $2F, $BC, $AF, $80, $70, $FB, $BF
|169943| db $DF, $AF, $DF, $5F
|169947| db $25 ; Repeat byte
|169948| db $00
|169949| db $00 ; Raw block
|16994A| db $01
|16994B| db $44 ; Repeat word
|16994C| dw $0200
|16994E| db $02 ; Raw block
|16994F| db $04, $00, $04
|169952| db $23 ; Repeat byte
|169953| db $00
|169954| db $1F ; Raw block
|169955| db $01, $03, $03, $07, $07, $70, $00, $CB
|16995D| db $70, $77, $3B, $5F, $37, $AE, $17, $BC
|169965| db $0F, $DC, $0F, $BC, $2F, $70, $FB, $7F
|16996D| db $5F, $AF, $BF, $FF, $DF, $01, $00, $07
|169975| db $43 ; Repeat word
|169976| dw $0F00
|169978| db $11 ; Raw block
|169979| db $03, $0F, $06, $0F, $00, $1F, $00, $1C
|169981| db $08, $01, $06, $0B, $0F, $0F, $0E, $1B
|169989| db $1F, $20
|16998B| db $44 ; Repeat word
|16998C| dw $F000
|16998E| db $11 ; Raw block
|16998F| db $F8, $C0, $6C, $D8, $F2, $0C, $64, $58
|169997| db $38, $20, $20, $D0, $F0, $F8, $FC, $D2
|16999F| db $A4, $D8
|1699A1| db $23 ; Repeat byte
|1699A2| db $00
|1699A3| db $0B ; Raw block
|1699A4| db $01, $00, $03, $01, $07, $03, $7E, $03
|1699AC| db $FC, $17, $7E, $37
|1699B0| db $83 ; Copy past
|1699B1| dw $0101
|1699B3| db $03 ; Raw block
|1699B4| db $07, $7F, $AF, $4F
|1699B8| db $23 ; Repeat byte
|1699B9| db $00
|1699BA| db $E0, $5C ; EXT Raw block
|1699BC| db $E0, $00, $FC, $E0, $36, $EC, $69, $DE
|1699C4| db $72, $DC, $7C, $F0, $00, $00, $E0, $FC
|1699CC| db $FE, $F9, $F2, $FC, $5E, $24, $BE, $6A
|1699D4| db $FE, $1A, $D6, $0C, $BC, $08, $4D, $30
|1699DC| db $67, $39, $3D, $00, $7B, $FD, $FD, $BF
|1699E4| db $FF, $4F, $66, $3D, $7A, $24, $7D, $56
|1699EC| db $7F, $58, $6B, $30, $3D, $10, $B2, $0C
|1699F4| db $E6, $9C, $BC, $00, $DE, $BF, $BF, $FD
|1699FC| db $FF, $F2, $66, $BC, $B6, $49, $E3, $1C
|169A04| db $C1, $3E, $41, $3E, $30, $0F, $0F, $00
|169A0C| db $0E, $00, $07, $00, $B6, $E3, $80, $40
|169A14| db $30, $0F, $09, $07, $62
|169A19| db $44 ; Repeat word
|169A1A| dw $02FC
|169A1C| db $E0, $2B ; EXT Raw block
|169A1E| db $04, $F8, $08, $F0, $F0, $00, $40, $00
|169A26| db $80, $00, $62, $02, $02, $04, $08, $F0
|169A2E| db $C0, $80, $9B, $64, $B1, $4E, $A0, $5F
|169A36| db $60, $1F, $30, $0F, $1F, $00, $39, $00
|169A3E| db $1F, $00, $9B, $B1, $80, $40, $30, $1F
|169A46| db $27, $1F, $64, $F8
|169A4A| db $43 ; Repeat word
|169A4B| dw $7884
|169A4D| db $E0, $48 ; EXT Raw block
|169A4F| db $88, $70, $10, $E0, $E0, $00, $70, $00
|169A57| db $E0, $00, $64, $84, $04, $08, $10, $E0
|169A5F| db $90, $E0, $7E, $30, $3D, $01, $1F, $01
|169A67| db $13, $02, $33, $03, $49, $31, $2F, $18
|169A6F| db $12, $0C, $7F, $3E, $18, $1C, $3C, $5E
|169A77| db $2F, $12, $FD, $E6, $FD, $F6, $FF, $EE
|169A7F| db $FE, $10, $FC, $F8, $FE, $F4, $FA, $0C
|169A87| db $24, $18, $1F, $0F, $1F, $0E, $04, $0E
|169A8F| db $FA, $34, $1F, $0C, $0F, $04, $07, $02
|169A97| db $02
|169A98| db $28 ; Repeat byte
|169A99| db $00
|169A9A| db $03 ; Raw block
|169A9B| db $13, $0B, $05, $02
|169A9F| db $23 ; Repeat byte
|169AA0| db $00
|169AA1| db $0C ; Raw block
|169AA2| db $FC, $DF, $FE, $1D, $7F, $2D, $77, $35
|169AAA| db $38, $10, $1F, $00, $07
|169AAF| db $22 ; Repeat byte
|169AB0| db $00
|169AB1| db $06 ; Raw block
|169AB2| db $3F, $FF, $7F, $7F, $37, $18, $07
|169AB9| db $44 ; Repeat word
|169ABA| dw $0800
|169ABC| db $E0, $20 ; EXT Raw block
|169ABE| db $0C, $04, $0F, $07, $07, $03, $07, $02
|169AC6| db $03, $00, $01, $00, $0F, $0F, $0B, $08
|169ACE| db $04, $05, $02, $01, $FE, $9D, $7F, $4D
|169AD6| db $F7, $D5, $F8, $80, $FF, $80, $E7, $00
|169ADE| db $C0
|169ADF| db $22 ; Repeat byte
|169AE0| db $00
|169AE1| db $07 ; Raw block
|169AE2| db $7F, $BF, $3F, $57, $78, $A7, $C0, $00
|169AEA| db $43 ; Repeat word
|169AEB| dw $183C
|169AED| db $03 ; Raw block
|169AEE| db $2E, $0A, $36, $02
|169AF2| db $43 ; Repeat word
|169AF3| dw $011F
|169AF5| db $E0, $48 ; EXT Raw block
|169AF7| db $07, $00, $01, $00, $3F, $3F, $3D, $2D
|169AFF| db $16, $1A, $07, $01, $7C, $68, $7A, $64
|169B07| db $F6, $DC, $FE, $DC, $FC, $B8, $F8, $A0
|169B0F| db $E0, $80, $80, $00, $9C, $9E, $3E, $3E
|169B17| db $7C, $78, $60, $80, $FF, $05, $FF, $19
|169B1F| db $E7, $24, $E3, $23, $F0, $30, $FD, $1D
|169B27| db $5F, $0F, $0F, $00, $FF, $A7, $DB, $5C
|169B2F| db $CF, $A2, $50, $0F, $FE, $98, $BD, $2A
|169B37| db $7B, $6E, $FF, $16, $7E, $6C, $FC, $D0
|169B3F| db $F0
|169B40| db $22 ; Repeat byte
|169B41| db $00
|169B42| db $06 ; Raw block
|169B43| db $FE, $DF, $9F, $EF, $9E, $3C, $F0
|169B4A| db $22 ; Repeat byte
|169B4B| db $00
|169B4C| db $E0, $5D ; EXT Raw block
|169B4E| db $03, $00, $0F, $00, $14, $0A, $22, $1D
|169B56| db $21, $1E, $40, $3B, $40, $31, $00, $02
|169B5E| db $0E, $15, $22, $21, $44, $4E, $E0, $00
|169B66| db $52, $00, $7C, $00, $28, $50, $44, $B8
|169B6E| db $84, $68, $22, $84, $72, $0C, $00, $C0
|169B76| db $F0, $A8, $44, $94, $5A, $82, $00, $00
|169B7E| db $21, $00, $76, $01, $59, $07, $2F, $03
|169B86| db $5F, $27, $EE, $7F, $DD, $3E, $00, $21
|169B8E| db $57, $6F, $37, $7F, $FE, $9C, $00, $00
|169B96| db $F0, $00, $1C, $F0, $FA, $F4, $F3, $EC
|169B9E| db $73, $EC, $2B, $FC, $A3, $7C, $00, $F0
|169BA6| db $FC, $FE, $FF, $7F, $3F, $37
|169BAC| db $29 ; Repeat byte
|169BAD| db $00
|169BAE| db $43 ; Repeat word
|169BAF| dw $0007
|169BB1| db $00 ; Raw block
|169BB2| db $0E
|169BB3| db $25 ; Repeat byte
|169BB4| db $00
|169BB5| db $02 ; Raw block
|169BB6| db $07, $07, $0F
|169BB9| db $25 ; Repeat byte
|169BBA| db $00
|169BBB| db $09 ; Raw block
|169BBC| db $08, $00, $78, $00, $EC, $18, $EC, $98
|169BC4| db $EC, $58
|169BC6| db $22 ; Repeat byte
|169BC7| db $00
|169BC8| db $E0, $34 ; EXT Raw block
|169BCA| db $08, $78, $FC, $7C, $FC, $03, $00, $05
|169BD2| db $00, $09, $01, $09, $00, $13, $03, $1B
|169BDA| db $0B, $1B, $0A, $1F, $0D, $03, $07, $0E
|169BE2| db $0F, $1C, $14, $15, $12, $80, $00, $C0
|169BEA| db $00, $F3, $00, $CF, $33, $E6, $7B, $F6
|169BF2| db $3B, $FE, $DB, $BC, $07, $80, $40, $F3
|169BFA| db $7F, $FF, $FF, $3F, $FF
|169BFF| db $25 ; Repeat byte
|169C00| db $00
|169C01| db $05 ; Raw block
|169C02| db $03, $00, $07, $03, $0D, $05
|169C08| db $43 ; Repeat word
|169C09| dw $0109
|169C0B| db $22 ; Repeat byte
|169C0C| db $00
|169C0D| db $07 ; Raw block
|169C0E| db $03, $04, $0A, $0E, $0E, $00, $00, $33
|169C16| db $87 ; Copy past
|169C17| dw $03AD
|169C19| db $06 ; Raw block
|169C1A| db $1B, $FC, $47, $F8, $9F, $00, $33
|169C21| db $23 ; Repeat byte
|169C22| db $FF
|169C23| db $01 ; Raw block
|169C24| db $BF, $7F
|169C26| db $83 ; Copy past
|169C27| dw $0153
|169C29| db $22 ; Repeat byte
|169C2A| db $00
|169C2B| db $10 ; Raw block
|169C2C| db $03, $03, $0F, $0C, $3F, $31, $7E, $4F
|169C34| db $F0, $01, $03, $00, $00, $03, $0F, $3E
|169C3C| db $70
|169C3D| db $22 ; Repeat byte
|169C3E| db $00
|169C3F| db $18 ; Raw block
|169C40| db $C0, $70, $72, $0C, $FD, $F2, $FE, $0C
|169C48| db $FE, $E4, $1E, $C2, $3F, $00, $C0, $72
|169C50| db $0D, $F2, $FC, $1C, $3E, $00, $01, $01
|169C58| db $03
|169C59| db $43 ; Repeat word
|169C5A| dw $2702
|169C5C| db $43 ; Repeat word
|169C5D| dw $0E05
|169C5F| db $0F ; Raw block
|169C60| db $0B, $5C, $0B, $DC, $00, $01, $23, $23
|169C68| db $06, $06, $4C, $CC, $00, $80, $80, $C0
|169C70| db $43 ; Repeat word
|169C71| dw $E040
|169C73| db $43 ; Repeat word
|169C74| dw $70A0
|169C76| db $E0, $23 ; EXT Raw block
|169C78| db $10, $FA, $D0, $3B, $00, $80, $C0, $C0
|169C80| db $60, $60, $F2, $33, $FE, $7F, $FD, $BF
|169C88| db $FB, $DF, $F7, $EF, $EF, $F7, $DF, $FB
|169C90| db $BF, $FD, $7F, $FE, $FE, $FD, $FB, $F7
|169C98| db $EF, $DF, $BF, $7F
|169C9C| db $97 ; Copy past
|169C9D| dw $0450
|169C9F| db $E0, $3C ; EXT Raw block
|169CA1| db $40, $38, $40, $37, $40, $33, $20, $18
|169CA9| db $20, $1C, $10, $0F, $0C, $03, $03, $00
|169CB1| db $47, $48, $4C, $27, $23, $10, $0C, $03
|169CB9| db $22, $1C, $02, $EC, $02, $CC, $04, $18
|169CC1| db $04, $38, $08, $F0, $30, $C0, $C0, $00
|169CC9| db $C2, $12, $32, $E4, $C4, $08, $30, $C0
|169CD1| db $EB, $1C, $A7, $58, $88, $7F, $5F, $3E
|169CD9| db $3E, $01, $10, $0F, $0F
|169CDE| db $22 ; Repeat byte
|169CDF| db $00
|169CE0| db $14 ; Raw block
|169CE1| db $AA, $80, $98, $5E, $2A, $10, $0F, $00
|169CE9| db $87, $78, $0E, $F0, $44, $B8, $88, $70
|169CF1| db $18, $E0, $70, $80, $80
|169CF6| db $22 ; Repeat byte
|169CF7| db $00
|169CF8| db $08 ; Raw block
|169CF9| db $0F, $0E, $04, $88, $18, $70, $80, $00
|169D01| db $0D
|169D02| db $84 ; Copy past
|169D03| dw $0213
|169D05| db $12 ; Raw block
|169D06| db $13, $03, $09, $01, $07, $00, $02, $01
|169D0E| db $01, $00, $0E, $18, $1C, $1C, $0E, $07
|169D16| db $03, $01, $CC
|169D19| db $43 ; Repeat word
|169D1A| dw $FC78
|169D1C| db $17 ; Raw block
|169D1D| db $00, $FC, $F8, $F8, $F0, $F0, $00, $F0
|169D25| db $E0, $E0, $00, $FC, $FC, $7C, $04, $08
|169D2D| db $F0, $F0, $E0, $0F, $06, $07, $02, $03
|169D35| db $2A ; Repeat byte
|169D36| db $00
|169D37| db $02 ; Raw block
|169D38| db $09, $05, $03
|169D3B| db $24 ; Repeat byte
|169D3C| db $00
|169D3D| db $0C ; Raw block
|169D3E| db $F8, $BF, $FB, $3F, $FF, $7E, $7E, $3D
|169D46| db $3D, $1F, $1F, $07, $07
|169D4B| db $22 ; Repeat byte
|169D4C| db $00
|169D4D| db $0E ; Raw block
|169D4E| db $7F, $FF, $FF, $7F, $27, $1B, $07, $00
|169D56| db $0A, $00, $0D, $00, $07, $02, $02
|169D5D| db $28 ; Repeat byte
|169D5E| db $00
|169D5F| db $03 ; Raw block
|169D60| db $0F, $0F, $05, $02
|169D64| db $23 ; Repeat byte
|169D65| db $00
|169D66| db $04 ; Raw block
|169D67| db $FB, $9F, $FF, $7E, $FE
|169D6C| db $85 ; Copy past
|169D6D| dw $052F
|169D6F| db $24 ; Repeat byte
|169D70| db $00
|169D71| db $02 ; Raw block
|169D72| db $7F, $FF, $FF
|169D75| db $83 ; Copy past
|169D76| dw $053C
|169D78| db $E0, $60 ; EXT Raw block
|169D7A| db $00, $4F, $F0, $33, $7C, $0C, $3F, $03
|169D82| db $0F, $00, $03, $00, $30, $00, $03, $00
|169D8A| db $01, $70, $3C, $0F, $03, $00, $30, $03
|169D92| db $01, $E2, $1F, $C4, $3E, $0C, $FE, $F2
|169D9A| db $FE, $0C, $FC, $70, $72, $00, $C4, $00
|169DA2| db $00, $1E, $3C, $FC, $F2, $0C, $72, $C4
|169DAA| db $00, $0B, $5C, $2B, $7C, $29, $3E, $28
|169DB2| db $3F, $14, $1F, $16, $5F, $09, $2F, $00
|169DBA| db $01, $4C, $6C, $2E, $2F, $17, $57, $29
|169DC2| db $00, $D0, $3A, $D4, $3E, $54, $BC, $14
|169DCA| db $FC, $28, $F8, $68, $F8, $90, $F4, $00
|169DD2| db $88, $32, $36, $B4, $F4, $E8, $E8, $94
|169DDA| db $08
|169DDB| db $F0, $2E ; EXT Copy past
|169DDD| dw $0450
|169DDF| db $00 ; Raw block
|169DE0| db $7F
|169DE1| db $FF ; End of GFX 9E

;===================================================================================================

GFX_9F:
|169DE2| db $E0, $6B ; EXT Raw block
|169DE4| db $00, $00, $01, $00, $3B, $01, $4F, $08
|169DEC| db $FF, $2C, $7E, $0D, $0F, $04, $1F, $01
|169DF4| db $00, $01, $3A, $77, $92, $73, $0B, $1E
|169DFC| db $E0, $00, $7E, $20, $3B, $28, $F9, $68
|169E04| db $7E, $8C, $BC, $C8, $FC, $C0, $FC, $40
|169E0C| db $E0, $9E, $D5, $97, $F2, $F4, $FC, $FC
|169E14| db $00, $00, $60, $00, $D1, $00, $EB, $61
|169E1C| db $77, $10, $1E, $09, $1F, $05, $2F, $12
|169E24| db $00, $60, $B1, $9A, $6F, $17, $1A, $34
|169E2C| db $0C, $00, $1E, $08, $DA, $08, $BA, $08
|169E34| db $FE, $0C, $3C, $C8, $FC, $40, $FE, $00
|169E3C| db $0C, $12, $D6, $F6, $72, $F4, $FC, $FE
|169E44| db $1F, $00, $19, $0F, $1C, $07, $17, $03
|169E4C| db $13, $01, $0B, $01
|169E50| db $43 ; Repeat word
|169E51| dw $0307
|169E53| db $24 ; Repeat byte
|169E54| db $1F
|169E55| db $13 ; Raw block
|169E56| db $0F, $07, $07, $3C, $00, $FF, $3C, $FF
|169E5E| db $7E, $C3, $FF, $81, $FF, $DB, $E7, $E7
|169E66| db $7E, $E7, $3C, $3C
|169E6A| db $23 ; Repeat byte
|169E6B| db $FF
|169E6C| db $0E ; Raw block
|169E6D| db $E7, $FF, $FF, $00, $00, $1E, $00, $33
|169E75| db $1E, $19, $0F, $1D, $07, $17, $03
|169E7C| db $83 ; Copy past
|169E7D| dw $006A
|169E7F| db $02 ; Raw block
|169E80| db $00, $1E, $3F
|169E83| db $22 ; Repeat byte
|169E84| db $1F
|169E85| db $00 ; Raw block
|169E86| db $0F
|169E87| db $84 ; Copy past
|169E88| dw $0077
|169E8A| db $05 ; Raw block
|169E8B| db $E7, $FF, $DB, $E7, $99, $E7
|169E91| db $43 ; Repeat word
|169E92| dw $FF81
|169E94| db $06 ; Raw block
|169E95| db $C3, $FF, $3C, $FF, $FF, $E7, $E7
|169E9C| db $22 ; Repeat byte
|169E9D| db $FF
|169E9E| db $E0, $33 ; EXT Raw block
|169EA0| db $03, $00, $0C, $03, $13, $0F, $17, $0F
|169EA8| db $26, $1F, $67, $1F, $A3, $5F, $E1, $7F
|169EB0| db $03, $0C, $13, $17, $27, $67, $E3, $E1
|169EB8| db $C0, $00, $30, $C0, $C8, $F0, $28, $F0
|169EC0| db $14, $F8, $36, $F8, $F5, $FA, $E1, $FE
|169EC8| db $C0, $30, $C8, $E8, $F4, $F6, $F7, $E3
|169ED0| db $3C, $00, $5E, $20
|169ED4| db $43 ; Repeat word
|169ED5| dw $40BF
|169ED7| db $43 ; Repeat word
|169ED8| dw $5AA5
|169EDA| db $0B ; Raw block
|169EDB| db $5A, $24, $3C, $00, $3C, $62, $C1, $D9
|169EE3| db $E7, $E7, $7E, $3C
|169EE7| db $83 ; Copy past
|169EE8| dw $00F0
|169EEA| db $43 ; Repeat word
|169EEB| dw $40BF
|169EED| db $05 ; Raw block
|169EEE| db $CD, $32, $C9, $36, $72, $0C
|169EF4| db $84 ; Copy past
|169EF5| dw $00FE
|169EF7| db $02 ; Raw block
|169EF8| db $F1, $CB, $CF
|169EFB| db $85 ; Copy past
|169EFC| dw $0106
|169EFE| db $43 ; Repeat word
|169EFF| dw $40BF
|169F01| db $05 ; Raw block
|169F02| db $9D, $62, $81, $7E, $42, $3C
|169F08| db $84 ; Copy past
|169F09| dw $00FE
|169F0B| db $1C ; Raw block
|169F0C| db $C1, $E3, $FF, $7E, $3C, $FE, $7F, $FD
|169F14| db $BF, $FB, $DF, $F7, $EF, $EF, $F7, $DF
|169F1C| db $FB, $BF, $FD, $7F, $FE, $FE, $FD, $FB
|169F24| db $F7, $EF, $DF, $BF, $7F
|169F29| db $23 ; Repeat byte
|169F2A| db $00
|169F2B| db $E0, $24 ; EXT Raw block
|169F2D| db $03, $00, $04, $03, $0A, $05, $08, $07
|169F35| db $0D, $07, $1F, $0D, $00, $00, $03, $07
|169F3D| db $0D, $0F, $0F, $1F, $78, $00, $9C, $78
|169F45| db $FC, $08, $FC, $F0, $76, $CC, $CE, $B0
|169F4D| db $96, $60, $B7, $62, $78
|169F52| db $22 ; Repeat byte
|169F53| db $FC
|169F54| db $22 ; Repeat byte
|169F55| db $FE
|169F56| db $04 ; Raw block
|169F57| db $FF, $3F, $0A, $5C, $34
|169F5C| db $43 ; Repeat word
|169F5D| dw $65BD
|169F5F| db $09 ; Raw block
|169F60| db $FD, $35, $7F, $1B, $3F, $01, $01, $00
|169F68| db $2C, $7B
|169F6A| db $22 ; Repeat byte
|169F6B| db $FA
|169F6C| db $08 ; Raw block
|169F6D| db $7C, $3E, $01, $7E, $04, $E6, $9C, $EE
|169F75| db $1C
|169F76| db $43 ; Repeat word
|169F77| dw $18FC
|169F79| db $0F ; Raw block
|169F7A| db $F8, $B0, $F8, $80, $80, $00, $F6, $7E
|169F82| db $FE, $FC, $FC, $78, $78, $80, $2E, $1A
|169F8A| db $43 ; Repeat word
|169F8B| dw $325E
|169F8D| db $0A ; Raw block
|169F8E| db $7E, $32, $7E, $12, $3F, $0B, $1F, $01
|169F96| db $01, $00, $3D
|169F99| db $23 ; Repeat byte
|169F9A| db $7D
|169F9B| db $08 ; Raw block
|169F9C| db $3C, $1E, $01, $FB, $84, $F7, $8E, $EE
|169FA4| db $9C
|169FA5| db $43 ; Repeat word
|169FA6| dw $B8FC
|169FA8| db $E0, $35 ; EXT Raw block
|169FAA| db $F8, $B0, $F0, $80, $80, $00, $7D, $7F
|169FB2| db $7E, $7C, $7C, $78, $70, $80, $0F, $03
|169FBA| db $17, $03, $2F, $0D, $3F, $06, $7F, $39
|169FC2| db $4F, $3B, $5F, $33, $7F, $23, $0F, $1F
|169FCA| db $33, $39, $7E, $7C, $7C, $74, $E7, $18
|169FD2| db $66, $99, $99, $FF, $FF, $BD, $E7, $7E
|169FDA| db $C3, $BD, $66, $5A, $3C, $24
|169FE0| db $24 ; Repeat byte
|169FE1| db $FF
|169FE2| db $E0, $22 ; EXT Raw block
|169FE4| db $7E, $BD, $DB, $07, $03, $1F, $05, $33
|169FEC| db $12, $3F, $0F, $7F, $23, $4E, $3A, $4F
|169FF4| db $3B, $2D, $17, $07, $1B, $2D, $30, $7C
|169FFC| db $7D, $7C, $38, $FF, $FF, $BD, $FF, $C3
|16A004| db $FF, $FF, $3C
|16A007| db $84 ; Copy past
|16A008| dw $022B
|16A00A| db $02 ; Raw block
|16A00B| db $3C, $81, $81
|16A00E| db $23 ; Repeat byte
|16A00F| db $FF
|16A010| db $E0, $33 ; EXT Raw block
|16A012| db $3C, $00, $C3, $7E, $B0, $5F, $F8, $27
|16A01A| db $DF, $78, $A7, $7F, $5C, $3F, $67, $18
|16A022| db $5C, $23, $F5, $1B, $B0, $F8, $FF, $BF
|16A02A| db $5C, $67, $5C, $F5, $07, $FA, $1B, $E4
|16A032| db $E3, $1E, $C5, $FE, $1A, $FC, $E6, $18
|16A03A| db $3E, $C4, $2F, $D8, $07, $1F, $FF, $FD
|16A042| db $1A, $E6, $3E, $AF
|16A046| db $83 ; Copy past
|16A047| dw $00F0
|16A049| db $01 ; Raw block
|16A04A| db $FF, $00
|16A04C| db $83 ; Copy past
|16A04D| dw $0126
|16A04F| db $03 ; Raw block
|16A050| db $91, $6E, $62, $1C
|16A054| db $84 ; Copy past
|16A055| dw $00FE
|16A057| db $02 ; Raw block
|16A058| db $A1, $93, $9F
|16A05B| db $85 ; Copy past
|16A05C| dw $0106
|16A05E| db $07 ; Raw block
|16A05F| db $DF, $20, $BF, $40, $BD, $42, $C1, $3E
|16A067| db $85 ; Copy past
|16A068| dw $012C
|16A06A| db $05 ; Raw block
|16A06B| db $E1, $A1, $A3, $FF, $7E, $3C
|16A071| db $24 ; Repeat byte
|16A072| db $00
|16A073| db $44 ; Repeat word
|16A074| dw $183C
|16A076| db $01 ; Raw block
|16A077| db $00, $3C
|16A079| db $26 ; Repeat byte
|16A07A| db $00
|16A07B| db $01 ; Raw block
|16A07C| db $18, $18
|16A07E| db $22 ; Repeat byte
|16A07F| db $00
|16A080| db $97 ; Copy past
|16A081| dw $0138
|16A083| db $0C ; Raw block
|16A084| db $1F, $08, $27, $18, $46, $39, $99, $7F
|16A08C| db $FF, $7F, $7F, $06, $06
|16A091| db $22 ; Repeat byte
|16A092| db $00
|16A093| db $14 ; Raw block
|16A094| db $1F, $3F, $7F, $FF, $FF, $7F, $06, $00
|16A09C| db $EF, $C6, $FF, $CE, $FB, $9E, $E6, $FC
|16A0A4| db $FE, $7C, $FC, $F0, $F0
|16A0A9| db $22 ; Repeat byte
|16A0AA| db $00
|16A0AB| db $22 ; Repeat byte
|16A0AC| db $FF
|16A0AD| db $04 ; Raw block
|16A0AE| db $FE, $FE, $FC, $F0, $00
|16A0B3| db $37 ; Repeat byte
|16A0B4| db $18
|16A0B5| db $25 ; Repeat byte
|16A0B6| db $00
|16A0B7| db $23 ; Repeat byte
|16A0B8| db $FF
|16A0B9| db $28 ; Repeat byte
|16A0BA| db $00
|16A0BB| db $01 ; Raw block
|16A0BC| db $FF, $FF
|16A0BE| db $22 ; Repeat byte
|16A0BF| db $00
|16A0C0| db $9E ; Copy past
|16A0C1| dw $01E0
|16A0C3| db $02 ; Raw block
|16A0C4| db $7E, $E7, $BD
|16A0C7| db $85 ; Copy past
|16A0C8| dw $0202
|16A0CA| db $23 ; Repeat byte
|16A0CB| db $FF
|16A0CC| db $10 ; Raw block
|16A0CD| db $7E, $7E, $BD, $DB, $7F, $03, $3E, $01
|16A0D5| db $2F, $11, $13, $0C, $0F, $03, $04, $03
|16A0DD| db $03
|16A0DE| db $22 ; Repeat byte
|16A0DF| db $00
|16A0E0| db $0C ; Raw block
|16A0E1| db $6C, $22, $32, $1F, $0F, $07, $03, $00
|16A0E9| db $99, $99, $7E, $FF, $42
|16A0EE| db $83 ; Copy past
|16A0EF| dw $008C
|16A0F1| db $03 ; Raw block
|16A0F2| db $3C, $FF, $C3, $C3
|16A0F6| db $22 ; Repeat byte
|16A0F7| db $00
|16A0F8| db $00 ; Raw block
|16A0F9| db $66
|16A0FA| db $22 ; Repeat byte
|16A0FB| db $00
|16A0FC| db $10 ; Raw block
|16A0FD| db $C3, $FF, $C3, $00, $1B, $0F, $1E, $0F
|16A105| db $0F, $07, $0F, $03, $07, $00, $05, $03
|16A10D| db $03
|16A10E| db $22 ; Repeat byte
|16A10F| db $00
|16A110| db $09 ; Raw block
|16A111| db $10, $10, $08, $0C, $07, $07, $03, $00
|16A119| db $C3, $C3
|16A11B| db $8A ; Copy past
|16A11C| dw $037A
|16A11E| db $22 ; Repeat byte
|16A11F| db $00
|16A120| db $00 ; Raw block
|16A121| db $3C
|16A122| db $22 ; Repeat byte
|16A123| db $00
|16A124| db $83 ; Copy past
|16A125| dw $038C
|16A127| db $0F ; Raw block
|16A128| db $BE, $63, $EF, $5B, $DF, $3B, $DB, $35
|16A130| db $59, $36, $B7, $6E, $DB, $66, $7F, $10
|16A138| db $22 ; Repeat byte
|16A139| db $FF
|16A13A| db $14 ; Raw block
|16A13B| db $FB, $79, $F7, $DF, $7F, $3D, $C6, $37
|16A143| db $DA, $7B, $DC, $DB, $AC, $9A, $6C, $ED
|16A14B| db $76, $DF, $66, $FE, $08
|16A150| db $22 ; Repeat byte
|16A151| db $FF
|16A152| db $04 ; Raw block
|16A153| db $DF, $9E, $EF, $FF, $FE
|16A158| db $F0, $27 ; EXT Copy past
|16A15A| dw $0210
|16A15C| db $23 ; Repeat byte
|16A15D| db $FF
|16A15E| db $83 ; Copy past
|16A15F| dw $023C
|16A161| db $29 ; Repeat byte
|16A162| db $00
|16A163| db $05 ; Raw block
|16A164| db $06, $00, $1F, $06, $36, $15
|16A16A| db $24 ; Repeat byte
|16A16B| db $00
|16A16C| db $02 ; Raw block
|16A16D| db $06, $19, $2B
|16A170| db $27 ; Repeat byte
|16A171| db $00
|16A172| db $07 ; Raw block
|16A173| db $08, $00, $14, $00, $F4, $10, $74, $D0
|16A17B| db $23 ; Repeat byte
|16A17C| db $00
|16A17D| db $03 ; Raw block
|16A17E| db $08, $1C, $EC, $EC
|16A182| db $2B ; Repeat byte
|16A183| db $00
|16A184| db $83 ; Copy past
|16A185| dw $042A
|16A187| db $25 ; Repeat byte
|16A188| db $00
|16A189| db $01 ; Raw block
|16A18A| db $06, $19
|16A18C| db $29 ; Repeat byte
|16A18D| db $00
|16A18E| db $05 ; Raw block
|16A18F| db $04, $00, $1A, $00, $F2, $10
|16A195| db $24 ; Repeat byte
|16A196| db $00
|16A197| db $02 ; Raw block
|16A198| db $04, $1E, $EE
|16A19B| db $23 ; Repeat byte
|16A19C| db $0C
|16A19D| db $23 ; Repeat byte
|16A19E| db $18
|16A19F| db $23 ; Repeat byte
|16A1A0| db $30
|16A1A1| db $23 ; Repeat byte
|16A1A2| db $60
|16A1A3| db $83 ; Copy past
|16A1A4| dw $0482
|16A1A6| db $83 ; Copy past
|16A1A7| dw $048A
|16A1A9| db $23 ; Repeat byte
|16A1AA| db $00
|16A1AB| db $09 ; Raw block
|16A1AC| db $03, $03, $0F, $0F, $3C, $3C, $F0, $F0
|16A1B4| db $C0, $C0
|16A1B6| db $23 ; Repeat byte
|16A1B7| db $00
|16A1B8| db $05 ; Raw block
|16A1B9| db $03, $0F, $3C, $F0, $C0, $00
|16A1BF| db $84 ; Copy past
|16A1C0| dw $0360
|16A1C2| db $03 ; Raw block
|16A1C3| db $10, $13, $0D, $0F
|16A1C7| db $26 ; Repeat byte
|16A1C8| db $00
|16A1C9| db $04 ; Raw block
|16A1CA| db $6C, $22, $33, $1F, $0F
|16A1CF| db $22 ; Repeat byte
|16A1D0| db $00
|16A1D1| db $86 ; Copy past
|16A1D2| dw $0378
|16A1D4| db $07 ; Raw block
|16A1D5| db $7F, $FF, $1C, $1F, $03, $07, $03, $03
|16A1DD| db $83 ; Copy past
|16A1DE| dw $0387
|16A1E0| db $18 ; Raw block
|16A1E1| db $80, $E3, $1F, $07, $03, $FE, $C0, $7C
|16A1E9| db $80, $F4, $88, $C8, $30, $F0, $80, $90
|16A1F1| db $E0, $F0, $00, $E0, $00, $36, $44, $4C
|16A1F9| db $F8
|16A1FA| db $22 ; Repeat byte
|16A1FB| db $F0
|16A1FC| db $07 ; Raw block
|16A1FD| db $E0, $F8, $F0, $F0, $E0, $F0, $A0, $E0
|16A205| db $28 ; Repeat byte
|16A206| db $00
|16A207| db $03 ; Raw block
|16A208| db $08, $10, $70, $E0
|16A20C| db $23 ; Repeat byte
|16A20D| db $00
|16A20E| db $0C ; Raw block
|16A20F| db $E7, $7E, $C3, $3C, $E7, $5A, $BD, $42
|16A217| db $5A, $24, $24, $18, $18
|16A21C| db $22 ; Repeat byte
|16A21D| db $00
|16A21E| db $23 ; Repeat byte
|16A21F| db $FF
|16A220| db $03 ; Raw block
|16A221| db $7E, $3C, $18, $00
|16A225| db $83 ; Copy past
|16A226| dw $02D8
|16A228| db $06 ; Raw block
|16A229| db $3F, $01, $3B, $06, $2E, $1C, $1C
|16A230| db $24 ; Repeat byte
|16A231| db $00
|16A232| db $17 ; Raw block
|16A233| db $FF, $7F, $3F, $3F, $3E, $1C, $00, $00
|16A23B| db $7F, $3F, $40, $3F, $5F, $3F, $60, $3F
|16A243| db $E0, $7F, $C0, $7F, $80, $7F, $FF, $00
|16A24B| db $22 ; Repeat byte
|16A24C| db $7F
|16A24D| db $14 ; Raw block
|16A24E| db $60, $E0, $C0, $80, $FF, $FE, $FC, $02
|16A256| db $FC, $FA, $FC, $06, $FC, $07, $FE, $03
|16A25E| db $FE, $01, $FE, $FF, $00
|16A263| db $22 ; Repeat byte
|16A264| db $FE
|16A265| db $04 ; Raw block
|16A266| db $06, $07, $03, $01, $FF
|16A26B| db $84 ; Copy past
|16A26C| dw $0390
|16A26E| db $07 ; Raw block
|16A26F| db $01, $0F, $06, $09, $07, $0F, $00, $03
|16A277| db $22 ; Repeat byte
|16A278| db $00
|16A279| db $02 ; Raw block
|16A27A| db $10, $10, $0E
|16A27D| db $22 ; Repeat byte
|16A27E| db $0F
|16A27F| db $88 ; Copy past
|16A280| dw $03A6
|16A282| db $05 ; Raw block
|16A283| db $7F, $FF, $F8, $F8, $80, $C0
|16A289| db $22 ; Repeat byte
|16A28A| db $00
|16A28B| db $E0, $39 ; EXT Raw block
|16A28D| db $3C, $00, $00, $80, $87, $F8, $C0, $00
|16A295| db $2C, $0B, $3F, $10, $7E, $21, $7C, $33
|16A29D| db $3F, $18, $1F, $04, $09, $07, $07, $00
|16A2A5| db $37, $2B, $59, $4B, $27, $1F, $0F, $07
|16A2AD| db $E4, $C0, $EE, $A8, $EA, $60, $DA, $7C
|16A2B5| db $8C, $F8, $F8, $00, $E0, $C0, $C0, $00
|16A2BD| db $FC, $D6, $9E, $82, $04, $F8, $E0, $C0
|16A2C5| db $36, $15
|16A2C7| db $85 ; Copy past
|16A2C8| dw $05A0
|16A2CA| db $1C ; Raw block
|16A2CB| db $6C, $13, $9F, $78, $7F, $0C, $0F, $00
|16A2D3| db $2B, $37, $2B, $59, $7B, $FF, $7F, $0F
|16A2DB| db $72, $D0, $F7, $D2, $FD, $BE, $F9, $7E
|16A2E3| db $DE, $78, $8E, $F0, $F0
|16A2E8| db $22 ; Repeat byte
|16A2E9| db $00
|16A2EA| db $07 ; Raw block
|16A2EB| db $EE, $ED, $C1, $81, $86, $0E, $F0, $00
|16A2F3| db $FF ; End of GFX 9F

;===================================================================================================

GFX_A0:
|16A2F4| db $08 ; Raw block
|16A2F5| db $60, $00, $9F, $00, $60, $20, $3B, $18
|16A2FD| db $1C
|16A2FE| db $22 ; Repeat byte
|16A2FF| db $00
|16A300| db $43 ; Repeat word
|16A301| dw $0001
|16A303| db $19 ; Raw block
|16A304| db $60, $FF, $5F, $27, $1C, $00, $01, $01
|16A30C| db $0C, $00, $F2, $00, $01, $00, $C5, $00
|16A314| db $9F, $00, $A3, $01, $23, $01, $43, $01
|16A31C| db $0C, $FE
|16A31E| db $22 ; Repeat byte
|16A31F| db $FF
|16A320| db $08 ; Raw block
|16A321| db $E2, $E2, $C2, $38, $00, $44, $00, $B2
|16A329| db $10
|16A32A| db $43 ; Repeat word
|16A32B| dw $085A
|16A32D| db $0D ; Raw block
|16A32E| db $5C, $08, $68, $00, $50, $00, $38, $7C
|16A336| db $EE, $D6, $D6, $D4, $F8, $F0
|16A33C| db $2B ; Repeat byte
|16A33D| db $00
|16A33E| db $02 ; Raw block
|16A33F| db $38, $00, $44
|16A342| db $26 ; Repeat byte
|16A343| db $00
|16A344| db $E0, $22 ; EXT Raw block
|16A346| db $38, $7C, $07, $00, $18, $00, $27, $01
|16A34E| db $49, $00, $50, $00, $D0, $40, $D3, $40
|16A356| db $6C, $20, $07, $1F, $3E, $79, $70, $B0
|16A35E| db $B3, $5F, $80, $00, $40, $00, $20, $00
|16A366| db $A0, $80, $C0
|16A369| db $22 ; Repeat byte
|16A36A| db $00
|16A36B| db $0B ; Raw block
|16A36C| db $0C, $00, $97, $00, $80, $C0, $E0, $60
|16A374| db $C0, $00, $0C, $9F
|16A378| db $2B ; Repeat byte
|16A379| db $00
|16A37A| db $02 ; Raw block
|16A37B| db $E1, $00, $12
|16A37E| db $26 ; Repeat byte
|16A37F| db $00
|16A380| db $08 ; Raw block
|16A381| db $E1, $F3, $0E, $00, $11, $00, $2D, $04
|16A389| db $2A
|16A38A| db $44 ; Repeat word
|16A38B| dw $1400
|16A38D| db $0D ; Raw block
|16A38E| db $94, $00, $68, $00, $0E, $1F, $3B, $3E
|16A396| db $1C, $1C, $9C, $F8, $01, $00
|16A39C| db $43 ; Repeat word
|16A39D| dw $0102
|16A39F| db $E0, $2B ; EXT Raw block
|16A3A1| db $0C, $03, $3E, $0B, $6F, $3B, $7F, $3D
|16A3A9| db $3F, $1F, $01, $03, $03, $0F, $3F, $7F
|16A3B1| db $7F, $3F, $80, $00, $40, $80, $C0, $00
|16A3B9| db $30, $C0, $7C, $D0, $F6, $DC, $E6, $FC
|16A3C1| db $0C, $F8, $80, $C0, $40, $F0, $FC, $FE
|16A3C9| db $FE, $FC, $01, $00
|16A3CD| db $43 ; Repeat word
|16A3CE| dw $0102
|16A3D0| db $87 ; Copy past
|16A3D1| dw $00C6
|16A3D3| db $00 ; Raw block
|16A3D4| db $7F
|16A3D5| db $85 ; Copy past
|16A3D6| dw $00CF
|16A3D8| db $22 ; Repeat byte
|16A3D9| db $7F
|16A3DA| db $8D ; Copy past
|16A3DB| dw $00D8
|16A3DD| db $00 ; Raw block
|16A3DE| db $0E
|16A3DF| db $85 ; Copy past
|16A3E0| dw $00E7
|16A3E2| db $23 ; Repeat byte
|16A3E3| db $FE
|16A3E4| db $16 ; Raw block
|16A3E5| db $7F, $FD, $BF, $FB, $DF, $F7, $EF, $EF
|16A3ED| db $F7, $DF, $FB, $BF, $FD, $7F, $FE, $FE
|16A3F5| db $FD, $FB, $F7, $EF, $DF, $BF, $7F
|16A3FC| db $97 ; Copy past
|16A3FD| dw $0120
|16A3FF| db $F0, $2F ; EXT Copy past
|16A401| dw $0120
|16A403| db $43 ; Repeat word
|16A404| dw $0001
|16A406| db $E0, $61 ; EXT Raw block
|16A408| db $1A, $00, $26, $00, $6C, $20, $70, $30
|16A410| db $3D, $1C, $1E, $00, $01, $01, $1B, $3F
|16A418| db $5F, $4F, $23, $1E, $43, $01, $47, $03
|16A420| db $8E, $06, $9E, $0A, $AE, $02, $D9, $00
|16A428| db $22, $00, $1C, $00, $C2, $C4, $89, $95
|16A430| db $AD, $FF, $3E, $1C, $08, $00, $64, $00
|16A438| db $A5, $00, $EB, $20, $EF, $23, $77, $30
|16A440| db $31, $10, $1E, $00, $F8, $FC, $BD, $DB
|16A448| db $DC, $4F, $2F, $1E, $92, $00, $BA, $00
|16A450| db $B4, $80, $A8, $80, $92, $80, $DD, $C0
|16A458| db $E2, $60, $7C, $00, $FE, $FE, $7C, $78
|16A460| db $72, $3F, $9E, $7C, $33, $03, $37, $10
|16A468| db $68, $20
|16A46A| db $43 ; Repeat word
|16A46B| dw $60E8
|16A46D| db $E0, $2B ; EXT Raw block
|16A46F| db $77, $30, $38, $18, $1F, $00, $3C, $2F
|16A477| db $58, $98, $98, $4F, $27, $1F, $A2, $00
|16A47F| db $79, $38, $79, $20, $7B, $20, $AB, $00
|16A487| db $73, $40, $DE, $8C, $8C, $00, $BF, $47
|16A48F| db $5F, $5F, $EF, $BF, $52, $8C, $CC, $40
|16A497| db $C8, $40, $DD, $44
|16A49B| db $43 ; Repeat word
|16A49C| dw $849D
|16A49E| db $E0, $85 ; EXT Raw block
|16A4A0| db $DC, $C4, $EF, $63, $73, $00, $BF, $BF
|16A4A8| db $BB, $7B, $7B, $3B, $9C, $73, $28, $00
|16A4B0| db $A8, $00, $50, $00, $54, $00, $4A, $00
|16A4B8| db $E2, $60, $7C, $18, $98, $00, $F8, $F8
|16A4C0| db $70, $74, $7E, $9E, $E4, $98, $3F, $07
|16A4C8| db $2F, $00, $3F, $18, $1F, $04, $3C, $14
|16A4D0| db $2E, $1A, $4F, $39, $7F, $3A, $3F, $3F
|16A4D8| db $25, $19, $3B, $3D, $7E, $7F, $FC, $E0
|16A4E0| db $F4, $00, $FC, $18, $F8, $20, $3C, $28
|16A4E8| db $74, $58, $F2, $9C, $FE, $5C, $FC, $FC
|16A4F0| db $A4, $98, $DC, $BC, $7E, $FE, $3F, $07
|16A4F8| db $FF, $00, $9F, $08, $BF, $24, $EC, $14
|16A500| db $66, $3A, $73, $1D, $3B, $0E, $3F, $FF
|16A508| db $F5, $D9, $FB, $7D, $7E, $3F, $FC, $E0
|16A510| db $FF, $00, $F9, $10, $FD, $24, $37, $28
|16A518| db $66, $5C, $CE, $B8, $DC, $70, $FC, $FF
|16A520| db $AF, $9B, $DF, $BE, $7E, $FC
|16A526| db $F0, $5F ; EXT Copy past
|16A528| dw $0120
|16A52A| db $F0, $5F ; EXT Copy past
|16A52C| dw $0120
|16A52E| db $F0, $5F ; EXT Copy past
|16A530| dw $0120
|16A532| db $0C ; Raw block
|16A533| db $7F, $02, $67, $22, $79, $36, $3E, $05
|16A53B| db $3F, $10, $26, $04, $1C
|16A540| db $22 ; Repeat byte
|16A541| db $00
|16A542| db $14 ; Raw block
|16A543| db $7F, $5F, $4F, $3E, $2F, $3A, $1C, $00
|16A54B| db $FE, $40, $E6, $44, $9E, $6C, $7C, $A0
|16A553| db $FC, $08, $64, $20, $38
|16A558| db $22 ; Repeat byte
|16A559| db $00
|16A55A| db $E0, $37 ; EXT Raw block
|16A55C| db $FE, $FA, $F2, $7C, $F4, $5C, $38, $00
|16A564| db $3B, $1E, $66, $3D, $7F, $24, $6E, $09
|16A56C| db $5F, $04, $7F, $00, $3E, $00, $1C, $00
|16A574| db $3F, $7E, $7F, $76, $7B, $7F, $3E, $1C
|16A57C| db $DC, $78, $66, $BC, $FE, $24, $76, $90
|16A584| db $FA, $20, $FE, $00, $7C, $00, $38, $00
|16A58C| db $FC, $7E, $FE, $6E, $DE, $FE, $7C, $38
|16A594| db $F1, $1F ; EXT Copy past
|16A596| dw $02A0
|16A598| db $F0, $BE ; EXT Copy past
|16A59A| dw $02A0
|16A59C| db $00 ; Raw block
|16A59D| db $7F
|16A59E| db $FF ; End of GFX A0

;===================================================================================================

GFX_A1:
|16A59F| db $E0, $2F ; EXT Raw block
|16A5A1| db $03, $00, $0F, $03, $1C, $0F, $3B, $1C
|16A5A9| db $77, $38, $6B, $34, $D8, $67, $E4, $7F
|16A5B1| db $03, $0F, $1F, $3C, $78, $74, $E7, $FF
|16A5B9| db $C0, $00, $F0, $C0, $F8, $F0, $7C, $D8
|16A5C1| db $BE, $6C, $7E, $E4, $7F, $C2, $FF, $C2
|16A5C9| db $C0, $F0, $F8, $FC, $7E, $FE, $FF, $FF
|16A5D1| db $83 ; Copy past
|16A5D2| dw $0000
|16A5D4| db $13 ; Raw block
|16A5D5| db $1E, $09, $3F, $10, $66, $39, $44, $3B
|16A5DD| db $CE, $71, $E4, $7B, $03, $0F, $19, $30
|16A5E5| db $79, $7B, $F1, $FB
|16A5E9| db $86 ; Copy past
|16A5EA| dw $0018
|16A5EC| db $08 ; Raw block
|16A5ED| db $F8, $3E, $F4, $3E, $F0, $7F, $E0, $FF
|16A5F5| db $E0
|16A5F6| db $83 ; Copy past
|16A5F7| dw $0028
|16A5F9| db $03 ; Raw block
|16A5FA| db $FE, $FE, $FF, $FF
|16A5FE| db $25 ; Repeat byte
|16A5FF| db $00
|16A600| db $09 ; Raw block
|16A601| db $03, $00, $06, $03, $0C, $07, $18, $0F
|16A609| db $11, $0E
|16A60B| db $22 ; Repeat byte
|16A60C| db $00
|16A60D| db $16 ; Raw block
|16A60E| db $03, $07, $0F, $1F, $1E, $0F, $00, $3C
|16A616| db $07, $E3, $3F, $9F, $FE, $3F, $F8, $4F
|16A61E| db $BC, $E7, $1E, $F7, $0E, $0F, $3F
|16A625| db $22 ; Repeat byte
|16A626| db $FF
|16A627| db $02 ; Raw block
|16A628| db $BF, $1F, $0F
|16A62B| db $25 ; Repeat byte
|16A62C| db $00
|16A62D| db $85 ; Copy past
|16A62E| dw $0066
|16A630| db $03 ; Raw block
|16A631| db $19, $0E, $11, $0E
|16A635| db $22 ; Repeat byte
|16A636| db $00
|16A637| db $03 ; Raw block
|16A638| db $03, $07, $0F, $1E
|16A63C| db $89 ; Copy past
|16A63D| dw $0077
|16A63F| db $08 ; Raw block
|16A640| db $F0, $9F, $78, $CF, $3C, $DF, $38, $0F
|16A648| db $3F
|16A649| db $22 ; Repeat byte
|16A64A| db $FF
|16A64B| db $0E ; Raw block
|16A64C| db $7F, $3F, $3F, $F0, $00, $3C, $E0, $C7
|16A654| db $FC, $F9, $7F, $FE, $0F, $FF, $03
|16A65B| db $43 ; Repeat word
|16A65C| dw $00FF
|16A65E| db $01 ; Raw block
|16A65F| db $F0, $FC
|16A661| db $25 ; Repeat byte
|16A662| db $FF
|16A663| db $25 ; Repeat byte
|16A664| db $00
|16A665| db $09 ; Raw block
|16A666| db $80, $00, $40, $80, $20, $C0, $90, $E0
|16A66E| db $C8, $70
|16A670| db $22 ; Repeat byte
|16A671| db $00
|16A672| db $04 ; Raw block
|16A673| db $80, $C0, $E0, $F0, $F8
|16A678| db $43 ; Repeat word
|16A679| dw $0A17
|16A67B| db $E0, $21 ; EXT Raw block
|16A67D| db $3F, $0A, $5D, $16, $7F, $32, $77, $2C
|16A685| db $F3, $5E, $FF, $5E, $1F, $1F, $3B, $6F
|16A68D| db $4F, $5F, $BF, $BF, $81, $FF, $7E, $81
|16A695| db $FF, $00, $7E, $81, $BD, $42, $C3, $3C
|16A69D| db $FF, $81
|16A69F| db $22 ; Repeat byte
|16A6A0| db $FF
|16A6A1| db $03 ; Raw block
|16A6A2| db $81, $00, $99, $DB
|16A6A6| db $22 ; Repeat byte
|16A6A7| db $FF
|16A6A8| db $12 ; Raw block
|16A6A9| db $00, $00, $0F, $00, $13, $0F, $23, $1F
|16A6B1| db $2F, $1E, $3F, $11, $1F, $03, $0F, $03
|16A6B9| db $00, $0F, $1F
|16A6BC| db $22 ; Repeat byte
|16A6BD| db $3F
|16A6BE| db $07 ; Raw block
|16A6BF| db $1F, $0F, $3C, $00, $FF, $3C, $C3, $7E
|16A6C7| db $43 ; Repeat word
|16A6C8| dw $E799
|16A6CA| db $0A ; Raw block
|16A6CB| db $FF, $C3, $FF, $81, $FF, $7E, $3C, $FF
|16A6D3| db $FF, $E7, $E7
|16A6D6| db $22 ; Repeat byte
|16A6D7| db $FF
|16A6D8| db $23 ; Repeat byte
|16A6D9| db $00
|16A6DA| db $09 ; Raw block
|16A6DB| db $0F, $00, $17, $0E, $2B, $17, $23, $1F
|16A6E3| db $37, $1F
|16A6E5| db $83 ; Copy past
|16A6E6| dw $008E
|16A6E8| db $05 ; Raw block
|16A6E9| db $0F, $1F, $37, $3F, $3F, $1F
|16A6EF| db $84 ; Copy past
|16A6F0| dw $0138
|16A6F2| db $05 ; Raw block
|16A6F3| db $FF, $99, $E7, $18, $E7, $00
|16A6F9| db $44 ; Repeat word
|16A6FA| dw $81FF
|16A6FC| db $84 ; Copy past
|16A6FD| dw $0148
|16A6FF| db $23 ; Repeat byte
|16A700| db $FF
|16A701| db $02 ; Raw block
|16A702| db $7F, $FF, $4E
|16A705| db $43 ; Repeat word
|16A706| dw $207F
|16A708| db $13 ; Raw block
|16A709| db $3F, $10, $1F, $0C, $0F, $03, $03, $00
|16A711| db $FF, $FF, $7F, $7F, $3F, $1F, $0F, $03
|16A719| db $FF, $82, $FF, $02
|16A71D| db $43 ; Repeat word
|16A71E| dw $04FE
|16A720| db $1D ; Raw block
|16A721| db $FC, $08, $F8, $30, $F0, $C0, $C0, $00
|16A729| db $FF, $FF, $FE, $FE, $FC, $F8, $F0, $C0
|16A731| db $F1, $7F, $FF, $5F, $7F, $0E, $7F, $00
|16A739| db $3F, $00, $1F, $00, $0F, $00
|16A73F| db $8A ; Copy past
|16A740| dw $018E
|16A742| db $02 ; Raw block
|16A743| db $C0, $FF, $80
|16A746| db $43 ; Repeat word
|16A747| dw $00FE
|16A749| db $05 ; Raw block
|16A74A| db $FC, $00, $F8, $00, $F0, $00
|16A750| db $89 ; Copy past
|16A751| dw $01A6
|16A753| db $0B ; Raw block
|16A754| db $31, $1E, $24, $1F, $2E, $1F, $6D, $3E
|16A75C| db $7E, $3B, $7F, $31
|16A760| db $43 ; Repeat word
|16A761| dw $305F
|16A763| db $03 ; Raw block
|16A764| db $3E, $3F, $3F, $7E
|16A768| db $23 ; Repeat byte
|16A769| db $7F
|16A76A| db $09 ; Raw block
|16A76B| db $E7, $1E, $CF, $3C, $1F, $F8, $7F, $F0
|16A773| db $FF, $80
|16A775| db $45 ; Repeat word
|16A776| dw $00FF
|16A778| db $01 ; Raw block
|16A779| db $1F, $3F
|16A77B| db $25 ; Repeat byte
|16A77C| db $FF
|16A77D| db $14 ; Raw block
|16A77E| db $33, $1C, $27, $1C, $6B, $3C, $4A, $3D
|16A786| db $5A, $35, $5D, $37, $5F, $32, $5F, $30
|16A78E| db $3C, $3C, $7C, $7D, $7D
|16A793| db $22 ; Repeat byte
|16A794| db $7F
|16A795| db $01 ; Raw block
|16A796| db $BF, $70
|16A798| db $43 ; Repeat word
|16A799| dw $E07F
|16A79B| db $83 ; Copy past
|16A79C| dw $01C8
|16A79E| db $45 ; Repeat word
|16A79F| dw $00FF
|16A7A1| db $00 ; Raw block
|16A7A2| db $7F
|16A7A3| db $27 ; Repeat byte
|16A7A4| db $FF
|16A7A5| db $4E ; Repeat word
|16A7A6| dw $FF00
|16A7A8| db $27 ; Repeat byte
|16A7A9| db $FF
|16A7AA| db $07 ; Raw block
|16A7AB| db $E8, $30, $F4, $38, $F4, $18, $F6, $18
|16A7B3| db $43 ; Repeat word
|16A7B4| dw $0CFE
|16A7B6| db $43 ; Repeat word
|16A7B7| dw $0CFA
|16A7B9| db $02 ; Raw block
|16A7BA| db $F8, $FC, $FC
|16A7BD| db $24 ; Repeat byte
|16A7BE| db $FE
|16A7BF| db $08 ; Raw block
|16A7C0| db $FF, $50, $79, $2E, $3D, $0E, $0F, $00
|16A7C8| db $03
|16A7C9| db $26 ; Repeat byte
|16A7CA| db $00
|16A7CB| db $04 ; Raw block
|16A7CC| db $BF, $5F, $3F, $0F, $03
|16A7D1| db $22 ; Repeat byte
|16A7D2| db $00
|16A7D3| db $0C ; Raw block
|16A7D4| db $C3, $7E, $E7, $3C, $FF, $42, $EF, $2D
|16A7DC| db $FD, $03, $04, $03, $03
|16A7E1| db $22 ; Repeat byte
|16A7E2| db $00
|16A7E3| db $07 ; Raw block
|16A7E4| db $FF, $FF, $BD, $D3, $FF, $07, $03, $00
|16A7EC| db $43 ; Repeat word
|16A7ED| dw $0A17
|16A7EF| db $F0, $21 ; EXT Copy past
|16A7F1| dw $00F4
|16A7F3| db $22 ; Repeat byte
|16A7F4| db $FF
|16A7F5| db $83 ; Copy past
|16A7F6| dw $0119
|16A7F8| db $22 ; Repeat byte
|16A7F9| db $FF
|16A7FA| db $E0, $27 ; EXT Raw block
|16A7FC| db $1F, $06, $1F, $0B, $2D, $17, $27, $1A
|16A804| db $1F, $05, $37, $16, $27, $07, $6F, $2F
|16A80C| db $1F, $1F, $2F, $26, $1B, $29, $38, $50
|16A814| db $E7, $FF, $FF, $7E, $FF, $E7, $7E, $FF
|16A81C| db $99, $E7, $FF, $7E, $FF, $81, $7E, $7E
|16A824| db $23 ; Repeat byte
|16A825| db $FF
|16A826| db $03 ; Raw block
|16A827| db $E7, $FF, $7E, $81
|16A82B| db $88 ; Copy past
|16A82C| dw $02D0
|16A82E| db $06 ; Raw block
|16A82F| db $01, $17, $06, $37, $07, $2F, $13
|16A836| db $83 ; Copy past
|16A837| dw $02E0
|16A839| db $03 ; Raw block
|16A83A| db $1F, $19, $38, $2C
|16A83E| db $8F ; Copy past
|16A83F| dw $02E8
|16A841| db $23 ; Repeat byte
|16A842| db $FF
|16A843| db $83 ; Copy past
|16A844| dw $02FC
|16A846| db $92 ; Copy past
|16A847| dw $0120
|16A849| db $22 ; Repeat byte
|16A84A| db $3F
|16A84B| db $87 ; Copy past
|16A84C| dw $0136
|16A84E| db $43 ; Repeat word
|16A84F| dw $E799
|16A851| db $8A ; Copy past
|16A852| dw $0142
|16A854| db $22 ; Repeat byte
|16A855| db $FF
|16A856| db $92 ; Copy past
|16A857| dw $0120
|16A859| db $22 ; Repeat byte
|16A85A| db $3F
|16A85B| db $87 ; Copy past
|16A85C| dw $0136
|16A85E| db $43 ; Repeat word
|16A85F| dw $E799
|16A861| db $8A ; Copy past
|16A862| dw $0142
|16A864| db $22 ; Repeat byte
|16A865| db $FF
|16A866| db $2B ; Repeat byte
|16A867| db $00
|16A868| db $03 ; Raw block
|16A869| db $1F, $04, $2F, $1D
|16A86D| db $25 ; Repeat byte
|16A86E| db $00
|16A86F| db $01 ; Raw block
|16A870| db $1F, $3F
|16A872| db $27 ; Repeat byte
|16A873| db $00
|16A874| db $07 ; Raw block
|16A875| db $02, $00, $1E, $04, $EC, $08, $4C, $88
|16A87D| db $23 ; Repeat byte
|16A87E| db $00
|16A87F| db $03 ; Raw block
|16A880| db $02, $1A, $F4, $F4
|16A884| db $2D ; Repeat byte
|16A885| db $00
|16A886| db $01 ; Raw block
|16A887| db $1F, $04
|16A889| db $26 ; Repeat byte
|16A88A| db $00
|16A88B| db $00 ; Raw block
|16A88C| db $1F
|16A88D| db $29 ; Repeat byte
|16A88E| db $00
|16A88F| db $05 ; Raw block
|16A890| db $06, $00, $1E, $04, $EE, $0C
|16A896| db $24 ; Repeat byte
|16A897| db $00
|16A898| db $1F ; Raw block
|16A899| db $06, $1A, $F2, $01, $00, $02, $01, $07
|16A8A1| db $00, $1B, $07, $34, $1B, $23, $1E, $72
|16A8A9| db $1D, $F7, $4C, $01, $03, $07, $1F, $3B
|16A8B1| db $3F, $7F, $FF, $C0, $00, $E0, $C0, $E0
|16A8B9| db $84 ; Copy past
|16A8BA| dw $0019
|16A8BC| db $1A ; Raw block
|16A8BD| db $F8, $30, $3C, $D8, $3C, $E8, $C0, $E0
|16A8C5| db $E0, $F0, $F8, $F8, $FC, $FC, $FF, $50
|16A8CD| db $F9, $6E, $7D, $2E, $3F, $10, $1F, $01
|16A8D5| db $07, $03, $03
|16A8D8| db $22 ; Repeat byte
|16A8D9| db $00
|16A8DA| db $06 ; Raw block
|16A8DB| db $BF, $9F, $5F, $2F, $1F, $07, $03
|16A8E2| db $88 ; Copy past
|16A8E3| dw $0287
|16A8E5| db $04 ; Raw block
|16A8E6| db $FF, $C3, $24, $C3, $C3
|16A8EB| db $22 ; Repeat byte
|16A8EC| db $00
|16A8ED| db $84 ; Copy past
|16A8EE| dw $0298
|16A8F0| db $0D ; Raw block
|16A8F1| db $E7, $C3, $00, $5F, $1B, $7D, $31, $3B
|16A8F9| db $03, $0B, $03, $07, $03, $03
|16A8FF| db $24 ; Repeat byte
|16A900| db $00
|16A901| db $14 ; Raw block
|16A902| db $64, $4E, $3C, $0C, $04, $03, $00, $00
|16A90A| db $18, $18, $81, $81, $C3, $C3, $F1, $B0
|16A912| db $F5, $B4, $FB, $38, $7E
|16A917| db $22 ; Repeat byte
|16A918| db $00
|16A919| db $09 ; Raw block
|16A91A| db $E7, $7E, $3C, $4F, $4B, $C7, $7E, $00
|16A922| db $27, $1B
|16A924| db $43 ; Repeat word
|16A925| dw $0D13
|16A927| db $06 ; Raw block
|16A928| db $09, $06, $07, $00, $07, $03, $03
|16A92F| db $22 ; Repeat byte
|16A930| db $00
|16A931| db $09 ; Raw block
|16A932| db $24, $12, $12, $09, $07, $07, $03, $00
|16A93A| db $98, $98
|16A93C| db $23 ; Repeat byte
|16A93D| db $C1
|16A93E| db $06 ; Raw block
|16A93F| db $E1, $61, $F3, $72, $FF, $9E, $FF
|16A946| db $22 ; Repeat byte
|16A947| db $00
|16A948| db $07 ; Raw block
|16A949| db $67, $3E, $3E, $9E, $8D, $E1, $FF, $00
|16A951| db $43 ; Repeat word
|16A952| dw $0A17
|16A954| db $93 ; Copy past
|16A955| dw $00F4
|16A957| db $00 ; Raw block
|16A958| db $C3
|16A959| db $44 ; Repeat word
|16A95A| dw $81FF
|16A95C| db $00 ; Raw block
|16A95D| db $C3
|16A95E| db $83 ; Copy past
|16A95F| dw $02E9
|16A961| db $02 ; Raw block
|16A962| db $3C, $FF, $81
|16A965| db $29 ; Repeat byte
|16A966| db $FF
|16A967| db $43 ; Repeat word
|16A968| dw $0A17
|16A96A| db $95 ; Copy past
|16A96B| dw $04B4
|16A96D| db $84 ; Copy past
|16A96E| dw $02F2
|16A970| db $86 ; Copy past
|16A971| dw $010F
|16A973| db $24 ; Repeat byte
|16A974| db $FF
|16A975| db $01 ; Raw block
|16A976| db $99, $DB
|16A978| db $22 ; Repeat byte
|16A979| db $FF
|16A97A| db $E0, $31 ; EXT Raw block
|16A97C| db $2E, $1B, $3F, $18, $19, $07, $2B, $07
|16A984| db $3F, $10, $1F, $04, $09, $07, $07, $00
|16A98C| db $3F, $3F, $1F, $3F, $2F, $1F, $0F, $07
|16A994| db $7A, $B8, $F2, $D0, $FA, $18, $FE, $1C
|16A99C| db $FE, $CC, $FE, $04, $E4, $C0, $C0, $00
|16A9A4| db $C6, $EE, $E6, $E2, $32, $FA, $E4, $C0
|16A9AC| db $2F, $1D
|16A9AE| db $86 ; Copy past
|16A9AF| dw $0510
|16A9B1| db $06 ; Raw block
|16A9B2| db $17, $5F, $38, $3F, $0C, $0F, $00
|16A9B9| db $22 ; Repeat byte
|16A9BA| db $3F
|16A9BB| db $11 ; Raw block
|16A9BC| db $1F, $3F, $7F, $3F, $0F, $4A, $88, $7B
|16A9C4| db $DA, $FD, $BC, $FB, $3A, $FE, $1C, $FC
|16A9CC| db $C0, $F8
|16A9CE| db $22 ; Repeat byte
|16A9CF| db $00
|16A9D0| db $14 ; Raw block
|16A9D1| db $F6, $E5, $C3, $C5, $E2, $3C, $F8, $00
|16A9D9| db $BF, $64, $DF, $34, $EF, $1A, $EF, $18
|16A9E1| db $EF, $1A, $6F, $13, $1B
|16A9E6| db $22 ; Repeat byte
|16A9E7| db $00
|16A9E8| db $14 ; Raw block
|16A9E9| db $FF, $BF, $9F, $DF, $DE, $7F, $1B, $00
|16A9F1| db $7C, $E8, $FE, $D8, $FE, $34, $F6, $CC
|16A9F9| db $3C, $F8, $F8, $E0, $E0
|16A9FE| db $22 ; Repeat byte
|16A9FF| db $00
|16AA00| db $00 ; Raw block
|16AA01| db $FC
|16AA02| db $22 ; Repeat byte
|16AA03| db $FE
|16AA04| db $03 ; Raw block
|16AA05| db $FC, $F8, $E0, $00
|16AA09| db $86 ; Copy past
|16AA0A| dw $0420
|16AA0C| db $05 ; Raw block
|16AA0D| db $11, $1F, $04, $0E, $07, $07
|16AA13| db $22 ; Repeat byte
|16AA14| db $00
|16AA15| db $84 ; Copy past
|16AA16| dw $0430
|16AA18| db $01 ; Raw block
|16AA19| db $0F, $07
|16AA1B| db $84 ; Copy past
|16AA1C| dw $044F
|16AA1E| db $08 ; Raw block
|16AA1F| db $7B, $33, $3B, $12, $1F, $0F, $0F, $03
|16AA27| db $03
|16AA28| db $22 ; Repeat byte
|16AA29| db $00
|16AA2A| db $06 ; Raw block
|16AA2B| db $64, $4E, $4C, $2D, $10, $0C, $03
|16AA32| db $E4, $30 ; EXT Repeat byte
|16AA34| db $00
|16AA35| db $FF ; End of GFX A1

;===================================================================================================

GFX_A2:
|16AA36| db $E0, $2F ; EXT Raw block
|16AA38| db $00, $00, $02, $00, $0F, $00, $1E, $00
|16AA40| db $3C, $00, $34, $00, $57, $00, $5B, $01
|16AA48| db $00, $02, $0D, $12, $24, $2C, $6D, $67
|16AA50| db $00, $00, $40, $00, $F0, $00, $78, $00
|16AA58| db $3C, $00, $2C, $00, $EA, $00, $DA, $80
|16AA60| db $00, $40, $B0, $48, $24, $34, $B6, $E6
|16AA68| db $22 ; Repeat byte
|16AA69| db $00
|16AA6A| db $0C ; Raw block
|16AA6B| db $01, $00, $03, $00, $07, $00, $0F, $00
|16AA73| db $1F, $00, $3F, $0F, $7F
|16AA78| db $62 ; Increment fill
|16AA79| db $00
|16AA7A| db $0D ; Raw block
|16AA7B| db $04, $08, $10, $20, $4F, $00, $7F, $05
|16AA83| db $FF, $13, $FF, $7E, $FF, $CC
|16AA89| db $44 ; Repeat word
|16AA8A| dw $40FF
|16AA8C| db $0C ; Raw block
|16AA8D| db $CE, $FF, $70, $85, $13, $7F, $FF, $7F
|16AA95| db $7F, $FF, $00, $00, $01
|16AA9A| db $62 ; Increment fill
|16AA9B| db $01
|16AA9C| db $09 ; Raw block
|16AA9D| db $06, $07, $0E, $0F, $15, $1F, $29, $3F
|16AAA5| db $51, $7F
|16AAA7| db $62 ; Increment fill
|16AAA8| db $00
|16AAA9| db $E0, $30 ; EXT Raw block
|16AAAB| db $07, $0F, $17, $2F, $5F, $71, $7F, $80
|16AAB3| db $FF, $8C, $FF, $70, $FF, $41, $FF, $87
|16AABB| db $FF, $1E, $FF, $10, $FF, $71, $8C, $FC
|16AAC3| db $F0, $C1, $87, $1F, $1F, $03, $00, $3F
|16AACB| db $01, $4F, $30, $4F, $38, $9F, $78, $BF
|16AAD3| db $74, $BD, $67, $BC, $63, $03, $3B, $79
|16AADB| db $7D
|16AADC| db $23 ; Repeat byte
|16AADD| db $FF
|16AADE| db $13 ; Raw block
|16AADF| db $C0, $00, $FC, $80, $F2, $0C, $F2, $1C
|16AAE7| db $F9, $1E, $FD, $2E, $BD, $E6, $3D, $C6
|16AAEF| db $C0, $DC, $9E, $BE
|16AAF3| db $23 ; Repeat byte
|16AAF4| db $FF
|16AAF5| db $23 ; Repeat byte
|16AAF6| db $00
|16AAF7| db $05 ; Raw block
|16AAF8| db $38, $00, $4F, $30, $8F, $78
|16AAFE| db $83 ; Copy past
|16AAFF| dw $0098
|16AB01| db $09 ; Raw block
|16AB02| db $BF, $60, $00, $00, $38, $7F, $FD, $FD
|16AB0A| db $FF, $FF
|16AB0C| db $23 ; Repeat byte
|16AB0D| db $00
|16AB0E| db $05 ; Raw block
|16AB0F| db $1C, $00, $F2, $1C, $F1, $1E
|16AB15| db $83 ; Copy past
|16AB16| dw $00B0
|16AB18| db $0B ; Raw block
|16AB19| db $FD, $06, $00, $00, $1C, $FE, $BF, $BF
|16AB21| db $FF, $FF, $07, $00
|16AB25| db $44 ; Repeat word
|16AB26| dw $033F
|16AB28| db $12 ; Raw block
|16AB29| db $17, $7F, $3B, $77, $3C, $FE, $5F, $DF
|16AB31| db $67, $07, $3F, $3C, $38, $7C, $7F, $FF
|16AB39| db $FF, $E0, $00
|16AB3C| db $43 ; Repeat word
|16AB3D| dw $C0FC
|16AB3F| db $E0, $28 ; EXT Raw block
|16AB41| db $DC, $C8, $AE, $9C, $D6, $2C, $3F, $C6
|16AB49| db $13, $EE, $E0, $FC, $3C, $3C, $7E, $EE
|16AB51| db $C7, $EF, $07, $00, $3F, $01, $3F, $03
|16AB59| db $0F, $00, $1F, $03, $3F, $1D, $77, $3E
|16AB61| db $BE, $5F, $07, $3F, $3F, $0F, $1C, $3E
|16AB69| db $7F
|16AB6A| db $83 ; Copy past
|16AB6B| dw $0107
|16AB6D| db $1E ; Raw block
|16AB6E| db $80, $7C, $C0, $F0, $00, $B8, $80, $4C
|16AB76| db $38, $96, $6C, $3F, $C6, $E0, $FC, $FC
|16AB7E| db $F0, $78, $FC, $EE, $C7, $1F, $00, $3D
|16AB86| db $1E, $7A, $3D, $75, $3A, $7F, $27
|16AB8D| db $45 ; Repeat word
|16AB8E| dw $43FE
|16AB90| db $01 ; Raw block
|16AB91| db $1F, $3F
|16AB93| db $22 ; Repeat byte
|16AB94| db $7F
|16AB95| db $22 ; Repeat byte
|16AB96| db $FF
|16AB97| db $08 ; Raw block
|16AB98| db $80, $00, $40, $80, $E6, $40, $F6, $E0
|16ABA0| db $BE
|16ABA1| db $43 ; Repeat word
|16ABA2| dw $FFE0
|16ABA4| db $E0, $89 ; EXT Raw block
|16ABA6| db $D4, $7F, $B6, $80, $C0, $E6, $F6, $FE
|16ABAE| db $FF, $EF, $CF, $21, $00, $33, $00, $2F
|16ABB6| db $12, $26, $1B, $1F, $01, $0F, $06, $07
|16ABBE| db $03, $03, $00, $3F, $3F, $2F, $27, $1F
|16ABC6| db $0F, $07, $03, $84, $00, $CC, $00, $F4
|16ABCE| db $48, $64, $D8, $78, $80, $B0, $60, $20
|16ABD6| db $C0, $C0, $00, $FC, $FC, $F4, $E4, $F8
|16ABDE| db $F0, $E0, $C0, $08, $7F, $18, $FF, $08
|16ABE6| db $FF, $28, $FF, $08, $FF, $58, $FF, $31
|16ABEE| db $FF, $23, $FF, $4F, $9F, $8F, $AF, $0F
|16ABF6| db $5F, $3F, $3F, $0F, $FF, $09, $FF, $F8
|16ABFE| db $FF, $C0, $FF, $46, $FF, $E7, $FF, $C6
|16AC06| db $FF, $1C, $FF, $FF, $F9, $F8, $C0, $C6
|16AC0E| db $E7, $C7, $1F, $51, $7F, $9E, $FF, $B1
|16AC16| db $FF, $D1, $FF, $A1, $FF, $43, $FF, $CB
|16AC1E| db $FF, $C1, $FF, $5F, $BE, $B1, $F1, $E1
|16AC26| db $43, $EB, $F1, $90, $FF, $11, $FF, $F3
|16AC2E| db $FF, $03
|16AC30| db $44 ; Repeat word
|16AC31| dw $3EFF
|16AC33| db $E0, $29 ; EXT Raw block
|16AC35| db $30, $FF, $98, $FF, $9F, $1F, $FF, $FF
|16AC3D| db $FE, $FE, $F0, $F8, $FE, $43, $FE, $4B
|16AC45| db $7F, $1D, $67, $25, $77, $35, $3F, $1E
|16AC4D| db $1F, $07, $07, $00, $FF, $F7, $63, $5B
|16AC55| db $4B, $21, $18, $07, $7F, $C2, $7F, $D2
|16AC5D| db $EE, $A8
|16AC5F| db $43 ; Repeat word
|16AC60| dw $88CC
|16AC62| db $12 ; Raw block
|16AC63| db $B8, $30, $F0, $C0, $C0, $00, $FF, $EF
|16AC6B| db $D6, $F4, $F4, $C8, $30, $C0, $BF, $43
|16AC73| db $FD, $47, $FC
|16AC76| db $43 ; Repeat word
|16AC77| dw $FE17
|16AC79| db $E0, $31 ; EXT Raw block
|16AC7B| db $3B, $77, $35, $3F, $0D, $0F, $00, $FF
|16AC83| db $FF, $EF, $EF, $C7, $4B, $33, $0F, $FD
|16AC8B| db $C6, $BF, $E2, $3F, $EA, $7F, $E8, $7F
|16AC93| db $DC, $EE, $AC, $FC, $B0, $F0, $00, $FF
|16AC9B| db $FF, $F7, $F7, $E3, $D2, $CC, $F0, $E7
|16ACA3| db $5F, $DF, $64, $E7, $78, $FF, $7C, $7F
|16ACAB| db $3B, $3B
|16ACAD| db $24 ; Repeat byte
|16ACAE| db $00
|16ACAF| db $23 ; Repeat byte
|16ACB0| db $FF
|16ACB1| db $0E ; Raw block
|16ACB2| db $7F, $3B, $00, $00, $F3, $FE, $F3, $3E
|16ACBA| db $F3, $1E, $E7, $3E, $FE, $DC, $DC
|16ACC1| db $24 ; Repeat byte
|16ACC2| db $00
|16ACC3| db $23 ; Repeat byte
|16ACC4| db $FF
|16ACC5| db $13 ; Raw block
|16ACC6| db $FE, $DC, $00, $00, $D8, $2F, $AF, $5F
|16ACCE| db $DF, $68, $EF, $70, $FF, $70, $7F, $38
|16ACD6| db $3F, $07, $07, $00
|16ACDA| db $24 ; Repeat byte
|16ACDB| db $FF
|16ACDC| db $13 ; Raw block
|16ACDD| db $7F, $3F, $07, $13, $EE, $E3, $FE, $FB
|16ACE5| db $1E, $FB, $0E, $FF, $0E, $FE, $1C, $FC
|16ACED| db $E0, $E0, $00, $EF
|16ACF1| db $23 ; Repeat byte
|16ACF2| db $FF
|16ACF3| db $02 ; Raw block
|16ACF4| db $FE, $FC, $E0
|16ACF7| db $45 ; Repeat word
|16ACF8| dw $43FE
|16ACFA| db $09 ; Raw block
|16ACFB| db $7D, $26, $7C, $3F, $70, $3F, $3F, $1F
|16AD03| db $1F, $00
|16AD05| db $22 ; Repeat byte
|16AD06| db $FF
|16AD07| db $1F ; Raw block
|16AD08| db $7E, $7F, $7F, $3F, $1F, $5B, $96, $2F
|16AD10| db $C4, $9F, $60, $DE, $20, $B6, $60, $E6
|16AD18| db $C0, $C0, $80, $80, $00, $EF, $FF, $7F
|16AD20| db $3E, $76, $E6, $C0, $80, $00, $00, $20
|16AD28| db $44 ; Repeat word
|16AD29| dw $7000
|16AD2B| db $43 ; Repeat word
|16AD2C| dw $00F0
|16AD2E| db $0E ; Raw block
|16AD2F| db $B8, $00, $B7, $00, $00, $20, $50, $50
|16AD37| db $90, $90, $C8, $CD, $00, $00, $04
|16AD3E| db $44 ; Repeat word
|16AD3F| dw $0E00
|16AD41| db $43 ; Repeat word
|16AD42| dw $000F
|16AD44| db $0B ; Raw block
|16AD45| db $1D, $00, $ED, $00, $00, $04, $0A, $0A
|16AD4D| db $09, $09, $13, $B3
|16AD51| db $83 ; Copy past
|16AD52| dw $0060
|16AD54| db $E0, $26 ; EXT Raw block
|16AD56| db $03, $03, $05, $07, $09, $0F, $1E, $1F
|16AD5E| db $2E, $3F, $7E, $7F, $00, $01, $03, $05
|16AD66| db $09, $1F, $2F, $7F, $70, $7F, $8F, $FF
|16AD6E| db $7D, $FF, $F0, $FF, $C0, $FF, $07, $FF
|16AD76| db $38, $FF, $20, $FF, $70, $8F, $7F
|16AD7D| db $22 ; Repeat byte
|16AD7E| db $FF
|16AD7F| db $01 ; Raw block
|16AD80| db $F8, $E0
|16AD82| db $23 ; Repeat byte
|16AD83| db $00
|16AD84| db $00 ; Raw block
|16AD85| db $03
|16AD86| db $83 ; Copy past
|16AD87| dw $0038
|16AD89| db $02 ; Raw block
|16AD8A| db $01, $1F, $03
|16AD8D| db $43 ; Repeat word
|16AD8E| dw $073F
|16AD90| db $07 ; Raw block
|16AD91| db $00, $00, $03, $0F, $1F, $1F, $3F, $3F
|16AD99| db $23 ; Repeat byte
|16AD9A| db $00
|16AD9B| db $1D ; Raw block
|16AD9C| db $C0, $00, $F0, $00, $F8, $E0, $98, $F0
|16ADA4| db $2C, $D8, $0C, $F8, $00, $00, $C0, $F0
|16ADAC| db $F8, $F8, $DC, $FC, $0F, $00, $17, $08
|16ADB4| db $2F, $1C, $3F, $00, $77, $2C
|16ADBA| db $43 ; Repeat word
|16ADBB| dw $1E67
|16ADBD| db $05 ; Raw block
|16ADBE| db $2F, $1C, $0F, $1F, $3F, $3E
|16ADC4| db $83 ; Copy past
|16ADC5| dw $02E3
|16ADC7| db $09 ; Raw block
|16ADC8| db $F0, $00, $E8, $10, $F4, $38, $FC, $00
|16ADD0| db $EE, $34
|16ADD2| db $43 ; Repeat word
|16ADD3| dw $78E6
|16ADD5| db $05 ; Raw block
|16ADD6| db $F4, $38, $70, $78, $FC, $FC
|16ADDC| db $22 ; Repeat byte
|16ADDD| db $FE
|16ADDE| db $0E ; Raw block
|16ADDF| db $FC, $00, $00, $0E, $00, $11, $0E, $25
|16ADE7| db $1E, $2A, $1D, $55, $2B, $26, $1B
|16ADEE| db $22 ; Repeat byte
|16ADEF| db $00
|16ADF0| db $05 ; Raw block
|16ADF1| db $0E, $1D, $3D, $3B, $77, $26
|16ADF7| db $27 ; Repeat byte
|16ADF8| db $00
|16ADF9| db $08 ; Raw block
|16ADFA| db $06, $02, $0E, $08, $19, $01, $1F, $02
|16AE02| db $0B
|16AE03| db $22 ; Repeat byte
|16AE04| db $00
|16AE05| db $04 ; Raw block
|16AE06| db $06, $0E, $19, $1F, $0A
|16AE0B| db $2B ; Repeat byte
|16AE0C| db $00
|16AE0D| db $00 ; Raw block
|16AE0E| db $01
|16AE0F| db $62 ; Increment fill
|16AE10| db $01
|16AE11| db $25 ; Repeat byte
|16AE12| db $00
|16AE13| db $01 ; Raw block
|16AE14| db $01, $03
|16AE16| db $23 ; Repeat byte
|16AE17| db $00
|16AE18| db $06 ; Raw block
|16AE19| db $03, $03, $1C, $1F, $60, $7F, $C7
|16AE20| db $84 ; Copy past
|16AE21| dw $0353
|16AE23| db $07 ; Raw block
|16AE24| db $00, $00, $03, $1F, $7F, $FF, $F8, $E0
|16AE2C| db $E4, $2F ; EXT Repeat byte
|16AE2E| db $00
|16AE2F| db $05 ; Raw block
|16AE30| db $0F, $00, $1F, $0F, $3D, $1E
|16AE36| db $43 ; Repeat word
|16AE37| dw $1D3A
|16AE39| db $01 ; Raw block
|16AE3A| db $1F, $0B
|16AE3C| db $43 ; Repeat word
|16AE3D| dw $113F
|16AE3F| db $01 ; Raw block
|16AE40| db $0F, $1F
|16AE42| db $22 ; Repeat byte
|16AE43| db $3F
|16AE44| db $14 ; Raw block
|16AE45| db $1F, $3F, $3F, $C0, $00, $F0, $C0, $7E
|16AE4D| db $B0, $FE, $78, $DE, $70, $FF, $E8, $FF
|16AE55| db $DE, $BF, $DE, $C0, $F0
|16AE5A| db $22 ; Repeat byte
|16AE5B| db $FE
|16AE5C| db $0E ; Raw block
|16AE5D| db $F7, $E3, $E3, $5F, $01, $43, $00, $37
|16AE65| db $00, $2F, $12, $27, $1B, $1F, $04
|16AE6C| db $83 ; Copy past
|16AE6D| dw $018C
|16AE6F| db $01 ; Raw block
|16AE70| db $65, $7F
|16AE72| db $83 ; Copy past
|16AE73| dw $0191
|16AE75| db $13 ; Raw block
|16AE76| db $07, $03, $FA, $80, $C2, $00, $EC, $00
|16AE7E| db $F4, $48, $24, $D8, $F8, $20, $A0, $C0
|16AE86| db $C0, $00, $A6, $FE
|16AE8A| db $83 ; Copy past
|16AE8B| dw $01A9
|16AE8D| db $E0, $3C ; EXT Raw block
|16AE8F| db $E0, $C0, $50, $7F, $B0, $FF, $B1, $FF
|16AE97| db $B2, $FF, $64, $FF, $65, $FF, $44, $FF
|16AE9F| db $42, $FF, $5F, $BF, $BF, $BE, $7C, $7D
|16AEA7| db $7C, $7E, $43, $FF, $4D, $FF, $C8, $FF
|16AEAF| db $08, $FF, $71, $FF, $81, $FF, $41, $FF
|16AEB7| db $27, $FF, $C3, $CF, $CF, $0F, $7F, $FF
|16AEBF| db $7F, $3F, $3F, $07, $3F, $03, $1F, $01
|16AEC7| db $1F, $00, $0F, $00, $03
|16AECC| db $24 ; Repeat byte
|16AECD| db $00
|16AECE| db $83 ; Copy past
|16AECF| dw $02DB
|16AED1| db $0E ; Raw block
|16AED2| db $0F, $03, $00, $00, $9C, $F8, $FC, $F0
|16AEDA| db $F8, $E0, $F8, $00, $F0, $00, $C0
|16AEE1| db $24 ; Repeat byte
|16AEE2| db $00
|16AEE3| db $0B ; Raw block
|16AEE4| db $FC, $FC, $F8, $F8, $F0, $C0, $00, $00
|16AEEC| db $2F, $19, $7E, $2A
|16AEF0| db $43 ; Repeat word
|16AEF1| dw $287C
|16AEF3| db $03 ; Raw block
|16AEF4| db $38, $10, $3C, $1C
|16AEF8| db $83 ; Copy past
|16AEF9| dw $021C
|16AEFB| db $0B ; Raw block
|16AEFC| db $3E, $5D, $5F, $5F, $2F, $23, $18, $07
|16AF04| db $F4, $98, $FC, $D0
|16AF08| db $43 ; Repeat word
|16AF09| dw $507C
|16AF0B| db $03 ; Raw block
|16AF0C| db $F8, $E0, $F8, $F0
|16AF10| db $83 ; Copy past
|16AF11| dw $0234
|16AF13| db $E0, $31 ; EXT Raw block
|16AF15| db $7C, $3C, $BC, $BC, $18, $08, $30, $C0
|16AF1D| db $01, $00, $07, $01, $0E, $07, $39, $0E
|16AF25| db $53, $2C, $8C, $73, $B9, $77, $66, $31
|16AF2D| db $01, $07, $0F, $3F, $7F, $FF, $FF, $66
|16AF35| db $00, $03, $0C, $0F, $11, $1F, $25, $3F
|16AF3D| db $07, $7F, $5A, $7F, $69, $FF, $9A, $FF
|16AF45| db $03, $0F
|16AF47| db $83 ; Copy past
|16AF48| dw $0160
|16AF4A| db $01 ; Raw block
|16AF4B| db $FF, $FE
|16AF4D| db $43 ; Repeat word
|16AF4E| dw $0704
|16AF50| db $03 ; Raw block
|16AF51| db $08, $0F, $09, $0F
|16AF55| db $45 ; Repeat word
|16AF56| dw $1F12
|16AF58| db $05 ; Raw block
|16AF59| db $11, $1F, $07, $07, $0F, $0F
|16AF5F| db $22 ; Repeat byte
|16AF60| db $1E
|16AF61| db $00 ; Raw block
|16AF62| db $1F
|16AF63| db $97 ; Copy past
|16AF64| dw $04C8
|16AF66| db $E4, $2F ; EXT Repeat byte
|16AF68| db $00
|16AF69| db $43 ; Repeat word
|16AF6A| dw $113F
|16AF6C| db $0A ; Raw block
|16AF6D| db $1F, $0B, $37, $1F, $30, $1F, $38, $1F
|16AF75| db $1F, $0F, $0F
|16AF78| db $83 ; Copy past
|16AF79| dw $04EF
|16AF7B| db $22 ; Repeat byte
|16AF7C| db $3F
|16AF7D| db $0C ; Raw block
|16AF7E| db $1F, $0F, $3F, $DE, $2F, $CE, $57, $A0
|16AF86| db $EE, $10, $5E, $B8, $7E
|16AF8B| db $84 ; Copy past
|16AF8C| dw $0533
|16AF8E| db $07 ; Raw block
|16AF8F| db $E3, $F3, $BF, $1E, $BE, $FE, $F0, $C0
|16AF97| db $FF ; End of GFX A2

;===================================================================================================

GFX_A3:
|16AF98| db $23 ; Repeat byte
|16AF99| db $00
|16AF9A| db $0A ; Raw block
|16AF9B| db $04, $00, $0A, $00, $0B, $04, $0A, $04
|16AFA3| db $05, $02, $0B
|16AFA6| db $22 ; Repeat byte
|16AFA7| db $00
|16AFA8| db $1D ; Raw block
|16AFA9| db $04, $0E, $0F, $0E, $07, $0B, $00, $00
|16AFB1| db $10, $00, $29, $00, $D6, $09, $3B, $C7
|16AFB9| db $CF, $3F, $BC, $7E, $71, $FC, $00, $10
|16AFC1| db $39, $DE, $FB, $CF, $BF, $7E
|16AFC7| db $83 ; Copy past
|16AFC8| dw $0018
|16AFCA| db $13 ; Raw block
|16AFCB| db $AA, $00, $6D, $92, $DD, $E2, $F2, $FC
|16AFD3| db $3D, $7E, $8E, $3F, $00, $10, $BA, $7F
|16AFDB| db $DF, $F2, $FD, $7E
|16AFDF| db $27 ; Repeat byte
|16AFE0| db $00
|16AFE1| db $06 ; Raw block
|16AFE2| db $38, $00, $44, $30, $BA, $40, $E5
|16AFE9| db $24 ; Repeat byte
|16AFEA| db $00
|16AFEB| db $03 ; Raw block
|16AFEC| db $38, $7C, $FA, $E7
|16AFF0| db $2D ; Repeat byte
|16AFF1| db $00
|16AFF2| db $00 ; Raw block
|16AFF3| db $02
|16AFF4| db $27 ; Repeat byte
|16AFF5| db $00
|16AFF6| db $00 ; Raw block
|16AFF7| db $02
|16AFF8| db $25 ; Repeat byte
|16AFF9| db $00
|16AFFA| db $09 ; Raw block
|16AFFB| db $08, $00, $14, $00, $0A, $04, $47, $00
|16B003| db $B8, $47
|16B005| db $22 ; Repeat byte
|16B006| db $00
|16B007| db $04 ; Raw block
|16B008| db $08, $1C, $0E, $47, $F8
|16B00D| db $25 ; Repeat byte
|16B00E| db $00
|16B00F| db $00 ; Raw block
|16B010| db $20
|16B011| db $43 ; Repeat word
|16B012| dw $5000
|16B014| db $04 ; Raw block
|16B015| db $20, $E4, $00, $1A, $E4
|16B01A| db $22 ; Repeat byte
|16B01B| db $00
|16B01C| db $04 ; Raw block
|16B01D| db $20, $70, $70, $E4, $1E
|16B022| db $37 ; Repeat byte
|16B023| db $00
|16B024| db $E0, $2F ; EXT Raw block
|16B026| db $22, $00, $55, $22, $2E, $11, $59, $07
|16B02E| db $B6, $4F, $69, $1F, $2A, $1E, $55, $3C
|16B036| db $22, $77, $3E, $59, $F7, $6E, $2D, $5A
|16B03E| db $20, $00, $DC, $20, $72, $8C, $9C, $E0
|16B046| db $68, $F0, $94, $FA, $54, $78, $AA, $3C
|16B04E| db $20, $FC, $7E, $9C, $E8, $76, $B4, $5A
|16B056| db $26 ; Repeat byte
|16B057| db $00
|16B058| db $08 ; Raw block
|16B059| db $03, $01, $07, $03, $0E, $03, $1E, $01
|16B061| db $1B
|16B062| db $23 ; Repeat byte
|16B063| db $00
|16B064| db $03 ; Raw block
|16B065| db $03, $07, $0F, $0F
|16B069| db $26 ; Repeat byte
|16B06A| db $00
|16B06B| db $08 ; Raw block
|16B06C| db $C0, $80, $E0, $C0, $70, $C0, $78, $80
|16B074| db $D8
|16B075| db $23 ; Repeat byte
|16B076| db $00
|16B077| db $1B ; Raw block
|16B078| db $C0, $E0, $F0, $F0, $03, $00, $0C, $03
|16B080| db $13, $0F, $14, $0F, $29, $1E, $2B, $1C
|16B088| db $3F, $00, $FE, $01, $03, $0C, $13, $17
|16B090| db $2E, $2C, $3F, $FF
|16B094| db $43 ; Repeat word
|16B095| dw $0080
|16B097| db $13 ; Raw block
|16B098| db $F0, $00, $CC, $30, $F2, $3C, $CA, $3C
|16B0A0| db $E5, $1E, $F5, $8E, $80, $80, $F0, $CC
|16B0A8| db $F2, $FA, $DD, $CD
|16B0AC| db $E4, $2F ; EXT Repeat byte
|16B0AE| db $00
|16B0AF| db $E0, $23 ; EXT Raw block
|16B0B1| db $16, $09, $1D, $03, $2F, $13, $5B, $27
|16B0B9| db $B6, $4F, $B6, $0F, $5C, $0F, $2C, $1F
|16B0C1| db $1E, $1D, $3F, $7B, $F7, $F7, $5F, $2F
|16B0C9| db $C3, $F8, $8B, $F8, $1D, $FC, $3E, $FE
|16B0D1| db $7C, $FC, $7B, $F8
|16B0D5| db $43 ; Repeat word
|16B0D6| dw $F0F7
|16B0D8| db $13 ; Raw block
|16B0D9| db $FC, $F4, $E2, $C1, $83, $84, $08, $08
|16B0E1| db $C3, $1F, $D1, $1F, $B8, $3F, $7C, $7F
|16B0E9| db $3E, $3F, $DE, $1F
|16B0ED| db $43 ; Repeat word
|16B0EE| dw $0FEF
|16B0F0| db $0F ; Raw block
|16B0F1| db $3F, $2F, $47, $83, $C1, $21, $10, $10
|16B0F9| db $55, $A2, $AA, $C4, $F4, $C8, $D8, $E0
|16B101| db $43 ; Repeat word
|16B102| dw $F068
|16B104| db $E0, $63 ; EXT Raw block
|16B106| db $3A, $F0, $35, $F8, $77, $AE, $FC, $D8
|16B10E| db $E8, $E8, $FA, $F7, $05, $00, $05, $02
|16B116| db $02, $01, $05, $00, $0B, $04, $06, $01
|16B11E| db $02, $01, $06, $01, $07, $07, $03, $05
|16B126| db $0F, $06, $02, $06, $63, $1F, $5E, $3E
|16B12E| db $B1, $7C, $61, $FC, $46, $FE, $4E, $FE
|16B136| db $9D, $FC, $9B, $F8, $63, $5F, $BE, $7E
|16B13E| db $79, $71, $E2, $E4, $C4, $F8, $7A, $7C
|16B146| db $8D, $3E, $86, $3F, $62, $7F, $72, $7F
|16B14E| db $B9, $3F, $D9, $1F, $C4, $FA, $7D, $7E
|16B156| db $9E, $8E, $47, $27, $00, $00, $C0, $00
|16B15E| db $20, $C0, $D0, $00, $A0, $00, $50, $A0
|16B166| db $70, $80, $68, $80
|16B16A| db $83 ; Copy past
|16B16B| dw $011B
|16B16D| db $E0, $3D ; EXT Raw block
|16B16F| db $A0, $70, $70, $78, $55, $3C, $2A, $1E
|16B177| db $29, $1F, $56, $2F, $B9, $47, $B6, $09
|16B17F| db $69, $10, $10, $00, $5A, $2D, $2E, $77
|16B187| db $F9, $FE, $79, $10, $AA, $3C, $55, $78
|16B18F| db $95, $FA, $6A, $F4, $9C, $E0, $64, $98
|16B197| db $B8, $40, $40, $00, $5A, $B7, $77, $EE
|16B19F| db $9C, $7C, $F8, $40, $02, $19, $01, $18
|16B1A7| db $00, $0C, $00, $07, $00, $03
|16B1AD| db $25 ; Repeat byte
|16B1AE| db $00
|16B1AF| db $03 ; Raw block
|16B1B0| db $0D, $0E, $07, $03
|16B1B4| db $23 ; Repeat byte
|16B1B5| db $00
|16B1B6| db $09 ; Raw block
|16B1B7| db $40, $98, $80, $18, $00, $30, $00, $E0
|16B1BF| db $00, $C0
|16B1C1| db $25 ; Repeat byte
|16B1C2| db $00
|16B1C3| db $03 ; Raw block
|16B1C4| db $B0, $70, $E0, $C0
|16B1C8| db $23 ; Repeat byte
|16B1C9| db $00
|16B1CA| db $0A ; Raw block
|16B1CB| db $AF, $71, $A7, $78, $53, $3C, $4F, $3C
|16B1D3| db $33, $0C, $0F
|16B1D6| db $44 ; Repeat word
|16B1D7| dw $0100
|16B1D9| db $1F ; Raw block
|16B1DA| db $B3, $BB, $5F, $4F, $33, $0F, $01, $01
|16B1E2| db $7F, $80, $FC, $00, $D4, $38, $94, $78
|16B1EA| db $28, $F0, $C8, $F0, $30, $C0, $C0, $00
|16B1F2| db $FF, $FC, $34, $74, $E8, $C8, $30, $C0
|16B1FA| db $E4, $2F ; EXT Repeat byte
|16B1FC| db $00
|16B1FD| db $03 ; Raw block
|16B1FE| db $2C, $1F, $5C, $2F
|16B202| db $83 ; Copy past
|16B203| dw $0188
|16B205| db $0F ; Raw block
|16B206| db $5B, $07, $2F, $13, $55, $0B, $36, $09
|16B20E| db $2F, $7F, $F7, $F7, $5B, $3F, $7D, $3E
|16B216| db $43 ; Repeat word
|16B217| dw $F0F7
|16B219| db $13 ; Raw block
|16B21A| db $7B, $F8, $7C, $FC, $3F, $FF, $1F, $FF
|16B222| db $8F, $FF, $C3, $FF, $08, $08, $84, $83
|16B22A| db $C0, $E0, $F0, $FC
|16B22E| db $43 ; Repeat word
|16B22F| dw $0FEF
|16B231| db $E0, $32 ; EXT Raw block
|16B233| db $DE, $1F, $3E, $3F, $FC, $FF, $F8, $FF
|16B23B| db $F1, $FF, $C3, $FF, $10, $10, $21, $C1
|16B243| db $03, $07, $0F, $3F, $35, $FA, $3A, $F4
|16B24B| db $6C, $F0, $68, $F0, $DC, $E0, $F2, $C8
|16B253| db $AC, $D0, $70, $80, $F7, $FE, $EC, $E8
|16B25B| db $DC, $FE, $BC, $70, $0A, $05, $16, $01
|16B263| db $0A, $01, $03
|16B266| db $83 ; Copy past
|16B267| dw $01E1
|16B269| db $E0, $3E ; EXT Raw block
|16B26B| db $00, $01, $00, $02, $01, $0E, $1E, $0A
|16B273| db $03, $07, $02, $01, $03, $9B, $F8, $9D
|16B27B| db $FC, $4E, $FE, $47, $FF, $63, $FF, $B0
|16B283| db $7F, $5C, $BF, $A3, $1F, $E4, $E2, $71
|16B28B| db $78, $7C, $BF, $DF, $A3, $D9, $1F, $B9
|16B293| db $3F, $72, $7F, $E2, $FF, $C6, $FF, $0D
|16B29B| db $FE, $3A, $FD, $C5, $F8, $27, $47, $8E
|16B2A3| db $1E, $3E, $FD, $FB, $C5, $50, $A0
|16B2AA| db $43 ; Repeat word
|16B2AB| dw $8060
|16B2AD| db $02 ; Raw block
|16B2AE| db $D0, $20, $A0
|16B2B1| db $83 ; Copy past
|16B2B2| dw $0229
|16B2B4| db $0A ; Raw block
|16B2B5| db $80, $C0, $00, $70, $60, $60, $F0, $A0
|16B2BD| db $C0, $E0, $C0
|16B2C0| db $26 ; Repeat byte
|16B2C1| db $00
|16B2C2| db $08 ; Raw block
|16B2C3| db $03, $00, $07, $00, $0C, $01, $18, $03
|16B2CB| db $18
|16B2CC| db $23 ; Repeat byte
|16B2CD| db $00
|16B2CE| db $03 ; Raw block
|16B2CF| db $03, $07, $0E, $0C
|16B2D3| db $26 ; Repeat byte
|16B2D4| db $00
|16B2D5| db $08 ; Raw block
|16B2D6| db $C0, $00, $E0, $00, $30, $80, $18, $80
|16B2DE| db $78
|16B2DF| db $23 ; Repeat byte
|16B2E0| db $00
|16B2E1| db $03 ; Raw block
|16B2E2| db $C0, $E0, $70, $70
|16B2E6| db $26 ; Repeat byte
|16B2E7| db $00
|16B2E8| db $86 ; Copy past
|16B2E9| dw $03C7
|16B2EB| db $01 ; Raw block
|16B2EC| db $02, $19
|16B2EE| db $23 ; Repeat byte
|16B2EF| db $00
|16B2F0| db $03 ; Raw block
|16B2F1| db $03, $07, $0E, $0D
|16B2F5| db $26 ; Repeat byte
|16B2F6| db $00
|16B2F7| db $83 ; Copy past
|16B2F8| dw $03DF
|16B2FA| db $04 ; Raw block
|16B2FB| db $70, $60, $F8, $F0, $98
|16B300| db $23 ; Repeat byte
|16B301| db $00
|16B302| db $83 ; Copy past
|16B303| dw $011C
|16B305| db $26 ; Repeat byte
|16B306| db $00
|16B307| db $88 ; Copy past
|16B308| dw $03F7
|16B30A| db $23 ; Repeat byte
|16B30B| db $00
|16B30C| db $83 ; Copy past
|16B30D| dw $0404
|16B30F| db $26 ; Repeat byte
|16B310| db $00
|16B311| db $86 ; Copy past
|16B312| dw $03DF
|16B314| db $01 ; Raw block
|16B315| db $40, $98
|16B317| db $23 ; Repeat byte
|16B318| db $00
|16B319| db $03 ; Raw block
|16B31A| db $C0, $E0, $70, $B0
|16B31E| db $E4, $2F ; EXT Repeat byte
|16B320| db $00
|16B321| db $08 ; Raw block
|16B322| db $0B, $00, $1D, $02, $22, $0C, $1D, $00
|16B32A| db $01
|16B32B| db $26 ; Repeat byte
|16B32C| db $00
|16B32D| db $04 ; Raw block
|16B32E| db $0B, $1F, $3E, $1D, $01
|16B333| db $22 ; Repeat byte
|16B334| db $00
|16B335| db $0C ; Raw block
|16B336| db $70, $FF, $BC, $7F, $CF, $3F, $73, $8F
|16B33E| db $6E, $91, $D1, $00, $20
|16B343| db $22 ; Repeat byte
|16B344| db $00
|16B345| db $14 ; Raw block
|16B346| db $7F, $BF, $CF, $F3, $FE, $F1, $20, $00
|16B34E| db $0E, $FF, $3D, $FE, $F3, $FC, $CE, $F1
|16B356| db $75, $88, $94, $00, $08
|16B35B| db $22 ; Repeat byte
|16B35C| db $00
|16B35D| db $12 ; Raw block
|16B35E| db $FE, $FD, $F3, $CF, $7D, $9C, $08, $00
|16B366| db $C0, $00, $A0, $40, $D0, $20, $50, $A0
|16B36E| db $D0, $00, $20
|16B371| db $24 ; Repeat byte
|16B372| db $00
|16B373| db $01 ; Raw block
|16B374| db $C0, $E0
|16B376| db $22 ; Repeat byte
|16B377| db $F0
|16B378| db $00 ; Raw block
|16B379| db $20
|16B37A| db $83 ; Copy past
|16B37B| dw $006C
|16B37D| db $00 ; Raw block
|16B37E| db $01
|16B37F| db $2C ; Repeat byte
|16B380| db $00
|16B381| db $01 ; Raw block
|16B382| db $03, $01
|16B384| db $25 ; Repeat byte
|16B385| db $00
|16B386| db $08 ; Raw block
|16B387| db $B8, $07, $57, $20, $2A, $04, $0A, $00
|16B38F| db $04
|16B390| db $26 ; Repeat byte
|16B391| db $00
|16B392| db $04 ; Raw block
|16B393| db $B8, $77, $2E, $0E, $04
|16B398| db $22 ; Repeat byte
|16B399| db $00
|16B39A| db $08 ; Raw block
|16B39B| db $1A, $E4, $F4, $00, $50, $20, $28, $00
|16B3A3| db $10
|16B3A4| db $26 ; Repeat byte
|16B3A5| db $00
|16B3A6| db $04 ; Raw block
|16B3A7| db $1E, $F4, $70, $38, $10
|16B3AC| db $3A ; Repeat byte
|16B3AD| db $00
|16B3AE| db $05 ; Raw block
|16B3AF| db $03, $18, $00, $19, $00, $0D
|16B3B5| db $83 ; Copy past
|16B3B6| dw $0276
|16B3B8| db $25 ; Repeat byte
|16B3B9| db $00
|16B3BA| db $03 ; Raw block
|16B3BB| db $0C, $0F, $07, $03
|16B3BF| db $23 ; Repeat byte
|16B3C0| db $00
|16B3C1| db $83 ; Copy past
|16B3C2| dw $0414
|16B3C4| db $05 ; Raw block
|16B3C5| db $E0, $90, $40, $E0, $00, $C0
|16B3CB| db $25 ; Repeat byte
|16B3CC| db $00
|16B3CD| db $03 ; Raw block
|16B3CE| db $F0, $F0, $E0, $C0
|16B3D2| db $23 ; Repeat byte
|16B3D3| db $00
|16B3D4| db $89 ; Copy past
|16B3D5| dw $0270
|16B3D7| db $25 ; Repeat byte
|16B3D8| db $00
|16B3D9| db $83 ; Copy past
|16B3DA| dw $0280
|16B3DC| db $23 ; Repeat byte
|16B3DD| db $00
|16B3DE| db $05 ; Raw block
|16B3DF| db $F0, $98, $60, $F8, $00, $70
|16B3E5| db $83 ; Copy past
|16B3E6| dw $028E
|16B3E8| db $25 ; Repeat byte
|16B3E9| db $00
|16B3EA| db $83 ; Copy past
|16B3EB| dw $0568
|16B3ED| db $23 ; Repeat byte
|16B3EE| db $00
|16B3EF| db $09 ; Raw block
|16B3F0| db $01, $1B, $03, $1E, $03, $0E, $01, $07
|16B3F8| db $00, $03
|16B3FA| db $25 ; Repeat byte
|16B3FB| db $00
|16B3FC| db $03 ; Raw block
|16B3FD| db $0F, $0F, $07, $03
|16B401| db $23 ; Repeat byte
|16B402| db $00
|16B403| db $09 ; Raw block
|16B404| db $80, $D8, $C0, $78, $C0, $70, $80, $E0
|16B40C| db $00, $C0
|16B40E| db $25 ; Repeat byte
|16B40F| db $00
|16B410| db $83 ; Copy past
|16B411| dw $0568
|16B413| db $E4, $33 ; EXT Repeat byte
|16B415| db $00
|16B416| db $FF ; End of GFX A3

;===================================================================================================

GFX_A4:
|16B417| db $E0, $EF ; EXT Raw block
|16B419| db $03, $00, $0E, $01, $1C, $03, $37, $03
|16B421| db $6F, $2B, $7E, $3B, $7D, $16, $D2, $2D
|16B429| db $03, $0E, $15, $2F, $57, $46, $6D, $F3
|16B431| db $C0, $00, $70, $80, $38, $C0, $AC, $C0
|16B439| db $F6, $D4, $3E, $DC, $BE, $68, $5A, $B4
|16B441| db $C0, $70, $A8, $F4, $EA, $22, $B6, $DE
|16B449| db $07, $00, $1E, $00, $25, $19, $43, $3C
|16B451| db $4E, $3F, $FD, $1E, $DA, $0D, $B6, $2B
|16B459| db $07, $19, $26, $4F, $5E, $BD, $BB, $D7
|16B461| db $80, $00, $C0, $80, $F8, $C0, $F4, $28
|16B469| db $1A, $EC, $FD, $16, $55, $BA, $0F, $FC
|16B471| db $80, $40, $38, $FC, $1E, $FD, $DD, $CF
|16B479| db $00, $00, $0F, $00, $1E, $0D, $37, $06
|16B481| db $6F, $0D, $7E, $03, $C9, $3E, $9A, $7D
|16B489| db $00, $0F, $13, $29, $53, $7E, $D9, $BB
|16B491| db $F0, $00, $68, $F0, $F4, $88, $32, $FC
|16B499| db $E1, $7E, $BE, $40, $44, $88, $42, $E4
|16B4A1| db $F0, $E8, $F4, $72, $E1, $BE, $F4, $DA
|16B4A9| db $07, $00, $18, $06, $28, $15, $54, $2B
|16B4B1| db $6A, $1D, $99, $6E, $98, $57, $9C, $3B
|16B4B9| db $07, $19, $2B, $57, $6F, $9F, $BF, $DF
|16B4C1| db $E0, $00, $18, $60, $14, $A8, $3A, $D4
|16B4C9| db $4E, $B8, $89, $76, $19, $EA, $3D, $DC
|16B4D1| db $E0, $98, $D4, $FA, $FE, $F9, $FD, $FF
|16B4D9| db $00, $00, $03, $00, $0C, $03, $11, $0F
|16B4E1| db $33, $0F, $37, $0F, $5E, $37, $7F, $37
|16B4E9| db $00, $03, $0C, $11, $33, $37, $5F, $7F
|16B4F1| db $00, $00, $C0, $00, $30, $C0, $C8, $F0
|16B4F9| db $EC, $F0, $3C, $F0, $1E, $EC, $3E, $EC
|16B501| db $00, $C0, $30, $C8, $EC, $FC, $FE, $FE
|16B509| db $85 ; Copy past
|16B50A| dw $00C0
|16B50C| db $11 ; Raw block
|16B50D| db $17, $0F, $29, $1F, $30, $1F, $59, $3F
|16B515| db $5F, $3F, $00, $03, $0C, $17, $2F, $3F
|16B51D| db $5F, $5F
|16B51F| db $83 ; Copy past
|16B520| dw $00D8
|16B522| db $13 ; Raw block
|16B523| db $F0, $00, $E8, $30, $CC, $B0, $F2, $C0
|16B52B| db $E9, $D0, $ED, $D0, $00, $C0, $F0, $E8
|16B533| db $CC, $FE, $EF, $EB
|16B537| db $83 ; Copy past
|16B538| dw $00C0
|16B53A| db $E0, $35 ; EXT Raw block
|16B53C| db $0D, $03, $1F, $03, $23, $1C, $27, $1F
|16B544| db $4F, $3F, $5D, $3F, $00, $03, $0D, $1F
|16B54C| db $23, $27, $4F, $5F, $38, $00, $CC, $00
|16B554| db $26, $C0, $1B, $E0, $D6, $28, $34, $D8
|16B55C| db $9A, $EC, $DA, $EC, $38, $F4, $3A, $1D
|16B564| db $D6, $34, $9A, $DA, $0F, $00, $1F, $0E
|16B56C| db $2E, $19, $2B, $14, $57, $2C
|16B572| db $43 ; Repeat word
|16B573| dw $5EAF
|16B575| db $E1, $33 ; EXT Raw block
|16B577| db $4F, $3E, $0F, $1F, $2E, $2B, $57, $AF
|16B57F| db $AF, $4F, $B8, $00, $DC, $38, $FC, $C0
|16B587| db $7C, $F8, $3E, $FC, $1B, $FC, $8F, $70
|16B58F| db $FF, $06, $B8, $DC, $FC, $7C, $3E, $1B
|16B597| db $8F, $FF, $AF, $73, $EB, $5D, $FC, $59
|16B59F| db $B4, $58, $44, $3A, $26, $19, $15, $08
|16B5A7| db $08, $00, $EF, $FB, $FE, $B7, $45, $26
|16B5AF| db $15, $08, $35, $CE, $D7, $BA, $3F, $9A
|16B5B7| db $2D, $1A, $22, $5C, $64, $98, $A8, $10
|16B5BF| db $10, $00, $F7, $DF, $7F, $ED, $A2, $64
|16B5C7| db $A8, $10, $F7, $6B, $77, $29, $34, $1B
|16B5CF| db $3E, $07, $2D, $1B, $17, $0D, $09, $06
|16B5D7| db $07, $00, $97, $57, $34, $3E, $3F, $1F
|16B5DF| db $09, $07, $91, $CE, $09, $C6, $05, $0A
|16B5E7| db $8A, $10, $50, $A0, $20, $C0, $10, $E0
|16B5EF| db $E0, $00, $B1, $39, $F5, $EA, $50, $20
|16B5F7| db $10, $E0, $9A, $7D, $DD, $3E, $7E, $03
|16B5FF| db $6E, $0D, $37, $06, $1E, $0D, $0F, $00
|16B607| db $01, $00, $BB, $DD, $7E, $52, $29, $13
|16B60F| db $0F, $01, $C2, $E4, $C4, $88, $BE, $40
|16B617| db $E1, $7E, $32, $FC, $F4, $88, $68, $F0
|16B61F| db $F0, $00, $DA, $F4, $BE, $E1, $72, $F4
|16B627| db $E8, $F0, $8E, $3B, $8F, $57, $9B, $6E
|16B62F| db $72, $1D, $54, $2B, $28, $15, $18, $06
|16B637| db $07, $00, $CF, $AF, $9B, $72, $54, $2A
|16B63F| db $19, $07, $39, $DC, $F1, $EA, $F9, $76
|16B647| db $4E, $B8, $2A, $D4, $14, $A8, $18, $60
|16B64F| db $E0, $00, $FB, $F5, $F9, $4E, $2A, $54
|16B657| db $98, $E0, $4B, $37, $49, $37, $A4, $1B
|16B65F| db $9F, $04, $D3, $0F, $6C, $03, $3B, $00
|16B667| db $10, $00, $4B, $49, $E4, $FF, $B3, $5C
|16B66F| db $2B, $10, $FA, $EC, $DA, $EC, $25, $D8
|16B677| db $F9, $20, $CB, $F0, $36, $C0, $DC, $00
|16B67F| db $08, $00, $FA, $DA, $27, $FF, $CD, $3A
|16B687| db $D4, $08, $77, $0F, $78, $07, $27, $18
|16B68F| db $24, $1B, $1B, $00, $09, $00, $04, $00
|16B697| db $03, $00, $77, $78, $27, $24, $1F, $0E
|16B69F| db $07, $03, $B7, $D8, $77, $98, $E6, $38
|16B6A7| db $C8, $F0, $10, $E0
|16B6AB| db $43 ; Repeat word
|16B6AC| dw $00E0
|16B6AE| db $09 ; Raw block
|16B6AF| db $C0, $00, $B5, $75, $E6, $C8, $10, $E0
|16B6B7| db $20, $C0
|16B6B9| db $43 ; Repeat word
|16B6BA| dw $3F58
|16B6BC| db $08 ; Raw block
|16B6BD| db $2D, $1F, $27, $1C, $1F, $03, $0F, $03
|16B6C5| db $03
|16B6C6| db $22 ; Repeat byte
|16B6C7| db $00
|16B6C8| db $07 ; Raw block
|16B6C9| db $5F, $5F, $2F, $27, $1F, $0F, $03, $00
|16B6D1| db $43 ; Repeat word
|16B6D2| dw $ECDA
|16B6D4| db $E0, $A3 ; EXT Raw block
|16B6D6| db $B4, $D8, $D6, $28, $DB, $E0, $26, $C0
|16B6DE| db $CC, $00, $38, $00, $DA, $DA, $B4, $D6
|16B6E6| db $DD, $3A, $F4, $38, $C5, $3E, $A3, $5C
|16B6EE| db $7D, $22, $BB, $77, $99, $77, $4C, $33
|16B6F6| db $37, $08, $18, $00, $C5, $A3, $7D, $BB
|16B6FE| db $99, $4C, $37, $18, $FB, $16, $CD, $32
|16B706| db $FD, $02, $E6, $18, $CF, $BC, $CE, $BC
|16B70E| db $E4, $18, $F8, $00, $FB, $CD, $FD, $E6
|16B716| db $CF, $CE, $E4, $F8, $03, $00, $0D, $02
|16B71E| db $30, $0F, $20, $1F, $74, $0F, $B9, $0E
|16B726| db $DE, $49, $FC, $6B, $03, $0D, $32, $27
|16B72E| db $5C, $D9, $BF, $9F, $C0, $00, $A0, $00
|16B736| db $B0, $20, $FC, $30, $72, $8C, $7E, $EC
|16B73E| db $DB, $26, $75, $CA, $C0, $60, $D0, $CC
|16B746| db $7E, $7E, $DB, $FD, $07, $00, $0B, $03
|16B74E| db $3D, $01, $2F, $10, $47, $3F, $4B, $3C
|16B756| db $82, $7D, $C4, $3B, $07, $0C, $32, $2F
|16B75E| db $4F, $5B, $B3, $D7, $80, $00, $F0, $80
|16B766| db $DC, $30, $BA, $7C, $72, $8C, $BE, $70
|16B76E| db $FA, $DC, $D1, $EE, $80, $70, $FC, $FA
|16B776| db $72, $BE, $FA, $D1
|16B77A| db $83 ; Copy past
|16B77B| dw $00C0
|16B77D| db $11 ; Raw block
|16B77E| db $0F, $00, $11, $0E, $26, $1F, $2F, $1F
|16B786| db $5B, $3F, $51, $3F, $00, $03, $0F, $11
|16B78E| db $26, $2F
|16B790| db $83 ; Copy past
|16B791| dw $0106
|16B793| db $15 ; Raw block
|16B794| db $E0, $00, $9C, $60, $A2, $40, $56, $A0
|16B79C| db $2F, $D0, $B7, $D8, $9A, $EC, $00, $E0
|16B7A4| db $9C, $BE, $5A, $29, $B5, $9A
|16B7AA| db $85 ; Copy past
|16B7AB| dw $00C0
|16B7AD| db $11 ; Raw block
|16B7AE| db $13, $0F, $26, $1F, $2C, $1F, $6E, $1F
|16B7B6| db $77, $0F, $00, $03, $0C, $13, $27, $2F
|16B7BE| db $6F, $77
|16B7C0| db $83 ; Copy past
|16B7C1| dw $00D8
|16B7C3| db $E0, $7D ; EXT Raw block
|16B7C5| db $70, $80, $E8, $90, $64, $D8, $34, $D8
|16B7CD| db $7A, $E0, $F9, $E0, $00, $C0, $70, $E8
|16B7D5| db $E4, $F4, $FE, $FF, $04, $04, $32, $16
|16B7DD| db $52, $3E, $4C, $3E, $29, $1F, $2C, $17
|16B7E5| db $10, $0F, $32, $2F, $04, $32, $52, $4C
|16B7ED| db $2D, $2C, $10, $32, $00, $00, $40, $40
|16B7F5| db $48, $D8, $2C, $5C, $96, $8E, $92, $CE
|16B7FD| db $4E, $F2, $21, $EB, $00, $40, $48, $2C
|16B805| db $96, $D2, $6E, $21, $00, $00, $08, $18
|16B80D| db $04, $0C, $64, $6C, $30, $F4, $10, $70
|16B815| db $08, $19, $08, $08, $00, $08, $04, $64
|16B81D| db $30, $10, $08, $08, $00, $00, $0C, $1C
|16B825| db $06, $1E, $02, $0E, $02, $06, $41, $C3
|16B82D| db $60, $E2, $30, $F0, $00, $0C, $06, $02
|16B835| db $02, $41, $60, $30, $00, $00, $01, $00
|16B83D| db $02, $01, $0F, $00, $15, $0A
|16B843| db $43 ; Repeat word
|16B844| dw $1C2F
|16B846| db $01 ; Raw block
|16B847| db $4F, $3E
|16B849| db $62 ; Increment fill
|16B84A| db $00
|16B84B| db $04 ; Raw block
|16B84C| db $0F, $15, $2F, $2F, $4F
|16B851| db $83 ; Copy past
|16B852| dw $00D8
|16B854| db $13 ; Raw block
|16B855| db $E0, $C0, $70, $E0, $38, $F0, $18, $F0
|16B85D| db $8C, $70, $FE, $04, $00, $C0, $E0, $70
|16B865| db $38, $18, $8C, $FE
|16B869| db $25 ; Repeat byte
|16B86A| db $00
|16B86B| db $09 ; Raw block
|16B86C| db $01, $00, $0F, $00, $13, $0E, $17, $08
|16B874| db $0F, $04
|16B876| db $22 ; Repeat byte
|16B877| db $00
|16B878| db $04 ; Raw block
|16B879| db $01, $0F, $13, $17, $0F
|16B87E| db $25 ; Repeat byte
|16B87F| db $00
|16B880| db $85 ; Copy past
|16B881| dw $043A
|16B883| db $02 ; Raw block
|16B884| db $90, $60, $F8
|16B887| db $23 ; Repeat byte
|16B888| db $00
|16B889| db $E0, $20 ; EXT Raw block
|16B88B| db $C0, $E0, $70, $90, $F8, $F7, $4B, $6B
|16B893| db $17, $5E, $35, $7F, $36, $36, $1B, $24
|16B89B| db $1B, $1E, $01, $01, $00, $B7, $7B, $7E
|16B8A3| db $7F, $36, $24, $1E, $01, $BD, $DA, $0E
|16B8AB| db $DC
|16B8AC| db $43 ; Repeat word
|16B8AD| dw $0C12
|16B8AF| db $E0, $34 ; EXT Raw block
|16B8B1| db $94, $28, $A8, $40, $40, $80, $80, $00
|16B8B9| db $BD, $2E, $F2, $F2, $D4, $A8, $40, $80
|16B8C1| db $F2, $0D, $9F, $05, $7D, $36, $3F, $10
|16B8C9| db $16, $0D, $15, $0E, $0E, $03, $03, $00
|16B8D1| db $B3, $FF, $4D, $2F, $1F, $1D, $0E, $03
|16B8D9| db $8D, $C2, $02, $E4, $84, $08, $B8, $C0
|16B8E1| db $C4, $F8, $C8, $70, $70
|16B8E6| db $83 ; Copy past
|16B8E7| dw $04A5
|16B8E9| db $E0, $5B ; EXT Raw block
|16B8EB| db $1A, $F4, $B8, $C4, $C8, $70, $80, $51
|16B8F3| db $3F, $7B, $0F, $3F, $03, $27, $1C, $13
|16B8FB| db $0C, $0C, $00, $02, $00, $01, $00, $5F
|16B903| db $7F, $3F, $27, $13, $0F, $03, $01, $9A
|16B90B| db $EC, $B2, $DC, $34, $D8, $E4, $38, $C8
|16B913| db $30, $F0, $00, $78, $00, $F0, $00, $9A
|16B91B| db $B2, $34, $E4, $C8, $30, $88, $F0, $73
|16B923| db $0F, $48, $37, $56, $29, $2B, $06, $25
|16B92B| db $03, $2E, $01, $1F, $00, $06, $00, $73
|16B933| db $48, $56, $3B, $3D, $32, $19, $06, $DD
|16B93B| db $E0, $1F, $E0, $77, $98, $E7, $78, $8A
|16B943| db $F0, $30, $C0, $C0
|16B947| db $22 ; Repeat byte
|16B948| db $00
|16B949| db $E0, $41 ; EXT Raw block
|16B94B| db $DB, $19, $75, $E5, $8A, $30, $C0, $00
|16B953| db $BD, $73, $8A, $71, $40, $2C, $28, $3E
|16B95B| db $49, $3E, $35, $0C, $06, $02, $00, $00
|16B963| db $BD, $8A, $40, $28, $4D, $35, $06, $00
|16B96B| db $DA, $0C, $7C, $0C, $3E, $76, $B8, $78
|16B973| db $DC, $BC, $64, $DC, $DA, $06, $06, $00
|16B97B| db $DA, $7C, $3E, $B8, $DC, $64, $DA, $06
|16B983| db $00, $00, $10, $30, $38, $79, $0C, $3D
|16B98B| db $00, $18
|16B98D| db $26 ; Repeat byte
|16B98E| db $00
|16B98F| db $02 ; Raw block
|16B990| db $10, $38, $0C
|16B993| db $24 ; Repeat byte
|16B994| db $00
|16B995| db $0A ; Raw block
|16B996| db $20, $00, $00, $40, $C0, $60, $E0, $30
|16B99E| db $F0, $00, $30
|16B9A1| db $25 ; Repeat byte
|16B9A2| db $00
|16B9A3| db $02 ; Raw block
|16B9A4| db $40, $60, $30
|16B9A7| db $22 ; Repeat byte
|16B9A8| db $00
|16B9A9| db $0C ; Raw block
|16B9AA| db $45, $3E, $22, $1D, $1C, $03, $17, $0F
|16B9B2| db $13, $0F, $0C, $03, $07
|16B9B7| db $22 ; Repeat byte
|16B9B8| db $00
|16B9B9| db $14 ; Raw block
|16B9BA| db $45, $22, $1C, $17, $13, $0C, $07, $00
|16B9C2| db $FA, $1C, $C2, $3C, $7A, $84, $D4, $B8
|16B9CA| db $C8, $B0, $F0, $80, $C0
|16B9CF| db $22 ; Repeat byte
|16B9D0| db $00
|16B9D1| db $10 ; Raw block
|16B9D2| db $FA, $C2, $7A, $D4, $C8, $F0, $C0, $00
|16B9DA| db $17, $0E, $17, $0F, $12, $0F, $09, $06
|16B9E2| db $07
|16B9E3| db $26 ; Repeat byte
|16B9E4| db $00
|16B9E5| db $04 ; Raw block
|16B9E6| db $17, $17, $12, $09, $07
|16B9EB| db $22 ; Repeat byte
|16B9EC| db $00
|16B9ED| db $06 ; Raw block
|16B9EE| db $F8, $70, $FC, $78, $B4, $78, $08
|16B9F5| db $83 ; Copy past
|16B9F6| dw $028F
|16B9F8| db $24 ; Repeat byte
|16B9F9| db $00
|16B9FA| db $07 ; Raw block
|16B9FB| db $F8, $FC, $B4, $08, $10, $E0, $00, $00
|16BA03| db $FF ; End of GFX A4

;===================================================================================================

GFX_A5:
|16BA04| db $17 ; Raw block
|16BA05| db $FE, $7F, $FD, $BF, $FB, $DF, $F7, $EF
|16BA0D| db $EF, $F7, $DF, $FB, $BF, $FD, $7F, $FE
|16BA15| db $FE, $FD, $FB, $F7, $EF, $DF, $BF, $7F
|16BA1D| db $97 ; Copy past
|16BA1E| dw $0000
|16BA20| db $F0, $2F ; EXT Copy past
|16BA22| dw $0000
|16BA24| db $F0, $5F ; EXT Copy past
|16BA26| dw $0000
|16BA28| db $F0, $BF ; EXT Copy past
|16BA2A| dw $0000
|16BA2C| db $F1, $7F ; EXT Copy past
|16BA2E| dw $0000
|16BA30| db $F2, $FE ; EXT Copy past
|16BA32| dw $0000
|16BA34| db $00 ; Raw block
|16BA35| db $7F
|16BA36| db $FF ; End of GFX A5

;===================================================================================================

GFX_A6:
|16BA37| db $37 ; Repeat byte
|16BA38| db $00
|16BA39| db $E0, $2F ; EXT Raw block
|16BA3B| db $1E, $00, $2B, $1C, $54, $3B, $6A, $37
|16BA43| db $E8, $77, $D4, $6F, $7D, $07, $5A, $27
|16BA4B| db $1E, $3B, $74, $6B, $EB, $D7, $77, $52
|16BA53| db $00, $00, $E0, $00, $1F, $E0, $E8, $F7
|16BA5B| db $1C, $EF, $6C, $FF, $F2, $FF, $3A, $E7
|16BA63| db $00, $E0, $1F, $EF, $DF, $EF, $F3, $3B
|16BA6B| db $25 ; Repeat byte
|16BA6C| db $00
|16BA6D| db $01 ; Raw block
|16BA6E| db $80, $00
|16BA70| db $47 ; Repeat word
|16BA71| dw $8040
|16BA73| db $22 ; Repeat byte
|16BA74| db $00
|16BA75| db $00 ; Raw block
|16BA76| db $80
|16BA77| db $23 ; Repeat byte
|16BA78| db $C0
|16BA79| db $23 ; Repeat byte
|16BA7A| db $00
|16BA7B| db $13 ; Raw block
|16BA7C| db $01, $00, $03, $01, $05, $02, $07, $01
|16BA84| db $07, $03, $08, $07, $00, $00, $01, $03
|16BA8C| db $05, $07, $07, $08
|16BA90| db $23 ; Repeat byte
|16BA91| db $00
|16BA92| db $E0, $2B ; EXT Raw block
|16BA94| db $E0, $00, $D0, $E0, $C8, $30, $F4, $C8
|16BA9C| db $8A, $F4, $0A, $F4, $00, $00, $E0, $D0
|16BAA4| db $C8, $F4, $8A, $0A, $3C, $00, $7E, $3C
|16BAAC| db $6F, $26, $6D, $21, $60, $20, $30, $10
|16BAB4| db $3B, $0B, $1F, $06, $3C, $42, $51, $52
|16BABC| db $5F, $2F, $34, $19
|16BAC0| db $23 ; Repeat byte
|16BAC1| db $00
|16BAC2| db $03 ; Raw block
|16BAC3| db $80, $00, $C0, $80
|16BAC7| db $45 ; Repeat word
|16BAC8| dw $0080
|16BACA| db $83 ; Copy past
|16BACB| dw $0056
|16BACD| db $01 ; Raw block
|16BACE| db $80, $40
|16BAD0| db $22 ; Repeat byte
|16BAD1| db $80
|16BAD2| db $00 ; Raw block
|16BAD3| db $40
|16BAD4| db $25 ; Repeat byte
|16BAD5| db $00
|16BAD6| db $09 ; Raw block
|16BAD7| db $03, $00, $07, $03, $03, $01, $07, $03
|16BADF| db $1F, $07
|16BAE1| db $22 ; Repeat byte
|16BAE2| db $00
|16BAE3| db $04 ; Raw block
|16BAE4| db $03, $04, $02, $04, $18
|16BAE9| db $27 ; Repeat byte
|16BAEA| db $00
|16BAEB| db $03 ; Raw block
|16BAEC| db $E0, $00, $F0, $E0
|16BAF0| db $43 ; Repeat word
|16BAF1| dw $B0B8
|16BAF3| db $23 ; Repeat byte
|16BAF4| db $00
|16BAF5| db $0C ; Raw block
|16BAF6| db $E0, $10, $48, $48, $00, $00, $08, $38
|16BAFE| db $0F, $3F, $09, $3F, $0B
|16BB03| db $46 ; Repeat word
|16BB04| dw $0F3F
|16BB06| db $01 ; Raw block
|16BB07| db $00, $38
|16BB09| db $25 ; Repeat byte
|16BB0A| db $3F
|16BB0B| db $25 ; Repeat byte
|16BB0C| db $00
|16BB0D| db $06 ; Raw block
|16BB0E| db $E0, $E0, $FC, $FC, $E4, $FC, $F4
|16BB15| db $22 ; Repeat byte
|16BB16| db $FC
|16BB17| db $22 ; Repeat byte
|16BB18| db $00
|16BB19| db $00 ; Raw block
|16BB1A| db $E0
|16BB1B| db $23 ; Repeat byte
|16BB1C| db $FC
|16BB1D| db $29 ; Repeat byte
|16BB1E| db $00
|16BB1F| db $45 ; Repeat word
|16BB20| dw $0301
|16BB22| db $24 ; Repeat byte
|16BB23| db $00
|16BB24| db $22 ; Repeat byte
|16BB25| db $03
|16BB26| db $2B ; Repeat byte
|16BB27| db $00
|16BB28| db $23 ; Repeat byte
|16BB29| db $80
|16BB2A| db $25 ; Repeat byte
|16BB2B| db $00
|16BB2C| db $E0, $21 ; EXT Raw block
|16BB2E| db $80, $80, $07, $00, $59, $01, $FB, $5B
|16BB36| db $FF, $3C, $FF, $1B, $FF, $14, $7C, $00
|16BB3E| db $79, $08, $07, $5E, $A4, $C3, $E7, $EF
|16BB46| db $7F, $77, $E0, $00, $FF, $E0, $FF, $83
|16BB4E| db $FF, $7F
|16BB50| db $22 ; Repeat byte
|16BB51| db $FF
|16BB52| db $07 ; Raw block
|16BB53| db $F0, $FF, $40, $9F, $60, $E0, $1F, $7F
|16BB5B| db $23 ; Repeat byte
|16BB5C| db $FF
|16BB5D| db $00 ; Raw block
|16BB5E| db $9F
|16BB5F| db $37 ; Repeat byte
|16BB60| db $00
|16BB61| db $E0, $24 ; EXT Raw block
|16BB63| db $71, $2E, $73, $3C, $41, $3E, $60, $1F
|16BB6B| db $38, $0F, $3F, $1A, $1F, $06, $06, $00
|16BB73| db $70, $70, $40, $78, $3E, $3F, $1F, $06
|16BB7B| db $F9, $77, $E8, $17, $EF, $18, $72, $FC
|16BB83| db $84, $78, $B8, $40, $C0
|16BB88| db $22 ; Repeat byte
|16BB89| db $00
|16BB8A| db $06 ; Raw block
|16BB8B| db $79, $38, $3F, $72, $04, $38, $C0
|16BB92| db $83 ; Copy past
|16BB93| dw $00AD
|16BB95| db $2C ; Repeat byte
|16BB96| db $00
|16BB97| db $01 ; Raw block
|16BB98| db $C0, $80
|16BB9A| db $25 ; Repeat byte
|16BB9B| db $00
|16BB9C| db $47 ; Repeat word
|16BB9D| dw $000F
|16BB9F| db $43 ; Repeat word
|16BBA0| dw $0007
|16BBA2| db $00 ; Raw block
|16BBA3| db $03
|16BBA4| db $22 ; Repeat byte
|16BBA5| db $00
|16BBA6| db $0C ; Raw block
|16BBA7| db $0A, $0A, $0F, $0F, $07, $07, $03, $00
|16BBAF| db $EA, $14, $FA, $04, $FC
|16BBB4| db $44 ; Repeat word
|16BBB5| dw $F800
|16BBB7| db $02 ; Raw block
|16BBB8| db $F0, $00, $E0
|16BBBB| db $22 ; Repeat byte
|16BBBC| db $00
|16BBBD| db $09 ; Raw block
|16BBBE| db $CA, $CA, $FC, $F8, $F8, $F0, $E0, $00
|16BBC6| db $1F, $06
|16BBC8| db $44 ; Repeat word
|16BBC9| dw $001F
|16BBCB| db $02 ; Raw block
|16BBCC| db $0C, $1F, $0A
|16BBCF| db $44 ; Repeat word
|16BBD0| dw $081F
|16BBD2| db $01 ; Raw block
|16BBD3| db $0A, $19
|16BBD5| db $22 ; Repeat byte
|16BBD6| db $1F
|16BBD7| db $E0, $35 ; EXT Raw block
|16BBD9| db $1D, $1F, $1F, $1D, $7F, $80, $FF, $0F
|16BBE1| db $BF, $4F, $3F, $C7, $FF, $03, $DF, $21
|16BBE9| db $9F, $61, $FD, $02, $7F, $F0, $30, $38
|16BBF1| db $FC, $9E, $9E, $FD, $FF, $1F, $FF, $FF
|16BBF9| db $FC, $FC, $80, $80, $E0, $E0, $F8, $F8
|16BC01| db $FC, $FC, $FE, $FE, $E0, $00, $03, $7F
|16BC09| db $1F, $07, $03, $01, $BC, $B8
|16BC0F| db $43 ; Repeat word
|16BC10| dw $181C
|16BC12| db $47 ; Repeat word
|16BC13| dw $1018
|16BC15| db $04 ; Raw block
|16BC16| db $38, $30, $44, $E4, $E4
|16BC1B| db $23 ; Repeat byte
|16BC1C| db $E8
|16BC1D| db $0C ; Raw block
|16BC1E| db $C8, $0F, $3F, $0B, $3F, $09, $3F, $0F
|16BC26| db $3F, $01, $3F, $00, $07
|16BC2B| db $23 ; Repeat byte
|16BC2C| db $00
|16BC2D| db $23 ; Repeat byte
|16BC2E| db $3F
|16BC2F| db $00 ; Raw block
|16BC30| db $31
|16BC31| db $22 ; Repeat byte
|16BC32| db $00
|16BC33| db $25 ; Repeat byte
|16BC34| db $FC
|16BC35| db $09 ; Raw block
|16BC36| db $F4, $FC, $E4, $FC, $3C, $FC, $04, $FC
|16BC3E| db $00, $1C
|16BC40| db $24 ; Repeat byte
|16BC41| db $FC
|16BC42| db $02 ; Raw block
|16BC43| db $3C, $04, $00
|16BC46| db $47 ; Repeat word
|16BC47| dw $0301
|16BC49| db $01 ; Raw block
|16BC4A| db $00, $01
|16BC4C| db $25 ; Repeat byte
|16BC4D| db $00
|16BC4E| db $23 ; Repeat byte
|16BC4F| db $03
|16BC50| db $23 ; Repeat byte
|16BC51| db $00
|16BC52| db $29 ; Repeat byte
|16BC53| db $80
|16BC54| db $01 ; Raw block
|16BC55| db $00, $80
|16BC57| db $23 ; Repeat byte
|16BC58| db $00
|16BC59| db $24 ; Repeat byte
|16BC5A| db $80
|16BC5B| db $22 ; Repeat byte
|16BC5C| db $00
|16BC5D| db $E0, $41 ; EXT Raw block
|16BC5F| db $59, $18, $8F, $0C, $B2, $01, $82, $01
|16BC67| db $43, $02, $3F, $1E, $3F, $0E, $3F, $10
|16BC6F| db $67, $F3, $CE, $FE, $7D, $21, $31, $3F
|16BC77| db $3F, $C0, $F7, $08, $78, $87, $7C, $83
|16BC7F| db $FF, $08, $37, $C6, $3F, $C2, $FF, $00
|16BC87| db $3F, $FF, $7F, $7F, $F7, $39, $3D, $FF
|16BC8F| db $07, $00, $0E, $03, $15, $0F, $13, $0F
|16BC97| db $17, $0F, $1B, $07, $12, $0F, $17, $0F
|16BC9F| db $07, $0F
|16BCA1| db $22 ; Repeat byte
|16BCA2| db $17
|16BCA3| db $E0, $27 ; EXT Raw block
|16BCA5| db $1B, $13, $17, $C0, $00, $60, $80, $F0
|16BCAD| db $C0, $F0, $80, $8C, $70, $06, $FC, $1E
|16BCB5| db $FC, $32, $FC, $C0, $E0, $F0, $F0, $FC
|16BCBD| db $FE, $FE, $F2, $00, $00, $18, $00, $24
|16BCC5| db $18, $4E, $34, $5E, $28, $3C, $18, $18
|16BCCD| db $24 ; Repeat byte
|16BCCE| db $00
|16BCCF| db $1D ; Raw block
|16BCD0| db $18, $34, $28, $18, $00, $00, $FE, $7F
|16BCD8| db $FD, $BF, $FB, $DF, $F7, $EF, $EF, $F7
|16BCE0| db $DF, $FB, $BF, $FD, $7F, $FE, $FE, $FD
|16BCE8| db $FB, $F7, $EF, $DF, $BF, $7F
|16BCEE| db $83 ; Copy past
|16BCEF| dw $0062
|16BCF1| db $01 ; Raw block
|16BCF2| db $02, $01
|16BCF4| db $43 ; Repeat word
|16BCF5| dw $0304
|16BCF7| db $E0, $57 ; EXT Raw block
|16BCF9| db $09, $07, $08, $07, $0E, $07, $00, $01
|16BD01| db $03, $07, $07, $0F, $0E, $0E, $00, $00
|16BD09| db $E3, $00, $34, $E3, $1B, $F7, $98, $FF
|16BD11| db $54, $BF, $F2, $5F, $BD, $03, $00, $E3
|16BD19| db $F4, $BB, $9B, $5F, $B3, $F1, $1F, $0A
|16BD21| db $1F, $02, $1F, $0A, $1F, $0E, $1F, $06
|16BD29| db $1F, $0A, $1F, $0C, $0F, $06, $1D, $1D
|16BD31| db $15, $11, $19, $1D, $1F, $0F, $9D, $62
|16BD39| db $63, $9C, $7B, $84, $3B, $C4, $C3, $3C
|16BD41| db $FF, $00, $F8, $00, $DF, $60, $9D, $43
|16BD49| db $4B, $1B, $43, $CF, $FF, $FF, $FE, $FE
|16BD51| db $26 ; Repeat byte
|16BD52| db $FF
|16BD53| db $45 ; Repeat word
|16BD54| dw $FF7F
|16BD56| db $01 ; Raw block
|16BD57| db $3C, $01
|16BD59| db $22 ; Repeat byte
|16BD5A| db $00
|16BD5B| db $22 ; Repeat byte
|16BD5C| db $80
|16BD5D| db $00 ; Raw block
|16BD5E| db $C3
|16BD5F| db $43 ; Repeat word
|16BD60| dw $2030
|16BD62| db $13 ; Raw block
|16BD63| db $34, $20, $3E, $24, $3E, $2C, $77, $54
|16BD6B| db $EF, $AC, $DE, $58, $D0, $D0, $D4, $DA
|16BD73| db $D2, $AB, $53, $A6
|16BD77| db $26 ; Repeat byte
|16BD78| db $00
|16BD79| db $03 ; Raw block
|16BD7A| db $0C, $03, $0F, $02
|16BD7E| db $44 ; Repeat word
|16BD7F| dw $030F
|16BD81| db $22 ; Repeat byte
|16BD82| db $00
|16BD83| db $00 ; Raw block
|16BD84| db $0C
|16BD85| db $23 ; Repeat byte
|16BD86| db $0F
|16BD87| db $29 ; Repeat byte
|16BD88| db $00
|16BD89| db $05 ; Raw block
|16BD8A| db $C0, $C0, $E0, $E0, $D0, $F0
|16BD90| db $24 ; Repeat byte
|16BD91| db $00
|16BD92| db $1E ; Raw block
|16BD93| db $C0, $E0, $F0, $01, $00, $06, $01, $09
|16BD9B| db $07, $14, $0F, $22, $1D, $39, $06, $5C
|16BDA3| db $3F, $6E, $3F, $01, $06, $09, $14, $22
|16BDAB| db $39, $5C, $7E, $F8, $00, $0C, $F4
|16BDB2| db $43 ; Repeat word
|16BDB3| dw $FAE6
|16BDB5| db $11 ; Raw block
|16BDB6| db $46, $FA, $06, $FA, $8C, $74, $F8, $00
|16BDBE| db $F8, $08, $E4, $E4, $44, $04, $88, $F8
|16BDC6| db $3F, $1A
|16BDC8| db $43 ; Repeat word
|16BDC9| dw $2F7F
|16BDCB| db $44 ; Repeat word
|16BDCC| dw $173F
|16BDCE| db $0C ; Raw block
|16BDCF| db $08, $7F, $17, $7F, $38, $3F, $5F, $5F
|16BDD7| db $2F, $2F, $37, $78, $7F
|16BDDC| db $43 ; Repeat word
|16BDDD| dw $609F
|16BDDF| db $1C ; Raw block
|16BDE0| db $E7, $98, $E4, $9B, $F8, $27, $F8, $67
|16BDE8| db $FE, $81, $FF, $00, $9F, $9F, $E7, $E4
|16BDF0| db $D8, $98, $7C, $FE, $0B, $07, $09, $07
|16BDF8| db $04, $03, $02, $01, $01
|16BDFD| db $26 ; Repeat byte
|16BDFE| db $00
|16BDFF| db $04 ; Raw block
|16BE00| db $0B, $09, $04, $02, $01
|16BE05| db $22 ; Repeat byte
|16BE06| db $00
|16BE07| db $08 ; Raw block
|16BE08| db $22, $FC, $E2, $FC, $04, $F8, $18, $E0
|16BE10| db $E0
|16BE11| db $26 ; Repeat byte
|16BE12| db $00
|16BE13| db $04 ; Raw block
|16BE14| db $E2, $E2, $04, $18, $E0
|16BE19| db $22 ; Repeat byte
|16BE1A| db $00
|16BE1B| db $16 ; Raw block
|16BE1C| db $38, $00, $44, $38, $82, $7C, $E6, $18
|16BE24| db $FF, $66, $7E, $2C, $3C, $08, $18, $00
|16BE2C| db $00, $38, $7C, $18, $66, $2C, $08
|16BE33| db $98 ; Copy past
|16BE34| dw $0347
|16BE36| db $00 ; Raw block
|16BE37| db $07
|16BE38| db $2E ; Repeat byte
|16BE39| db $00
|16BE3A| db $00 ; Raw block
|16BE3B| db $07
|16BE3C| db $26 ; Repeat byte
|16BE3D| db $00
|16BE3E| db $1C ; Raw block
|16BE3F| db $FE, $21, $AE, $71, $B0, $7F, $48, $3F
|16BE47| db $31, $0F, $3F, $05, $1F, $03, $03, $00
|16BE4F| db $F0, $B8, $BD, $4B, $23, $2F, $1F, $03
|16BE57| db $0F, $06, $07, $02, $02
|16BE5C| db $2A ; Repeat byte
|16BE5D| db $00
|16BE5E| db $02 ; Raw block
|16BE5F| db $0F, $07, $02
|16BE62| db $24 ; Repeat byte
|16BE63| db $00
|16BE64| db $0C ; Raw block
|16BE65| db $FF, $7C, $CF, $7F, $CD, $7F, $63, $3F
|16BE6D| db $67, $3E, $3F, $1C, $1E
|16BE72| db $22 ; Repeat byte
|16BE73| db $00
|16BE74| db $22 ; Repeat byte
|16BE75| db $FF
|16BE76| db $0F ; Raw block
|16BE77| db $7F, $7F, $3F, $1E, $00, $FF, $3F, $FF
|16BE7F| db $9F, $FF, $6F, $FF, $2F, $BF, $07, $07
|16BE87| db $24 ; Repeat byte
|16BE88| db $00
|16BE89| db $83 ; Copy past
|16BE8A| dw $0328
|16BE8C| db $05 ; Raw block
|16BE8D| db $B8, $07, $00, $00, $FE, $E0
|16BE93| db $43 ; Repeat word
|16BE94| dw $C0FC
|16BE96| db $04 ; Raw block
|16BE97| db $F8, $80, $F0, $00, $C0
|16BE9C| db $24 ; Repeat byte
|16BE9D| db $00
|16BE9E| db $07 ; Raw block
|16BE9F| db $1E, $3C, $3C, $78, $F0, $C0, $00, $00
|16BEA7| db $43 ; Repeat word
|16BEA8| dw $0F03
|16BEAA| db $83 ; Copy past
|16BEAB| dw $03FA
|16BEAD| db $03 ; Raw block
|16BEAE| db $00, $03, $00, $01
|16BEB2| db $23 ; Repeat byte
|16BEB3| db $00
|16BEB4| db $23 ; Repeat byte
|16BEB5| db $0F
|16BEB6| db $23 ; Repeat byte
|16BEB7| db $00
|16BEB8| db $27 ; Repeat byte
|16BEB9| db $F0
|16BEBA| db $07 ; Raw block
|16BEBB| db $D0, $F0, $30, $F0, $00, $70, $00, $00
|16BEC3| db $24 ; Repeat byte
|16BEC4| db $F0
|16BEC5| db $1B ; Raw block
|16BEC6| db $30, $00, $00, $97, $7E, $99, $76, $D9
|16BECE| db $36, $AB, $56, $D6, $60, $D0, $20, $E0
|16BED6| db $40, $60, $00, $B7, $BB, $FB, $BF, $D6
|16BEDE| db $F0, $E0, $60, $80
|16BEE2| db $2E ; Repeat byte
|16BEE3| db $00
|16BEE4| db $00 ; Raw block
|16BEE5| db $80
|16BEE6| db $26 ; Repeat byte
|16BEE7| db $00
|16BEE8| db $06 ; Raw block
|16BEE9| db $7F, $3F, $7F, $38, $38, $10, $30
|16BEF0| db $28 ; Repeat byte
|16BEF1| db $00
|16BEF2| db $03 ; Raw block
|16BEF3| db $7F, $7F, $38, $30
|16BEF7| db $23 ; Repeat byte
|16BEF8| db $00
|16BEF9| db $0C ; Raw block
|16BEFA| db $F8, $C7, $E5, $1A, $3B, $05, $1C, $0B
|16BF02| db $0F, $04, $07, $03, $03
|16BF07| db $22 ; Repeat byte
|16BF08| db $00
|16BF09| db $07 ; Raw block
|16BF0A| db $F8, $FD, $3F, $1F, $0F, $07, $03, $00
|16BF12| db $FF ; End of GFX A6

;===================================================================================================

GFX_A7:
|16BF13| db $08 ; Raw block
|16BF14| db $00, $00, $03, $00, $07, $03, $04, $00
|16BF1C| db $2C
|16BF1D| db $43 ; Repeat word
|16BF1E| dw $5C04
|16BF20| db $E0, $57 ; EXT Raw block
|16BF22| db $0C, $5E, $0E, $00, $03, $04, $07, $2B
|16BF2A| db $7B, $73, $71, $00, $00, $C0, $00, $E0
|16BF32| db $C0, $20, $00, $D4, $00, $DA, $00, $1A
|16BF3A| db $10, $3A, $30, $00, $C0, $20, $E0, $34
|16BF42| db $3E, $EE, $CE, $00, $00, $60, $00, $90
|16BF4A| db $60, $D0, $60, $68, $30, $74, $58, $3C
|16BF52| db $20, $3B, $34, $00, $60, $F0, $F0, $78
|16BF5A| db $7C, $3C, $3E, $00, $00, $06, $00, $09
|16BF62| db $06, $0B, $06, $16, $0C, $2F, $1A, $3D
|16BF6A| db $06, $DE, $24, $00, $06, $0F, $0F, $1E
|16BF72| db $3F, $3F, $7F, $00, $00, $07, $00, $0F
|16BF7A| db $44 ; Repeat word
|16BF7B| dw $1F00
|16BF7D| db $43 ; Repeat word
|16BF7E| dw $003F
|16BF80| db $06 ; Raw block
|16BF81| db $5F, $00, $00, $07, $0F, $1F, $1F
|16BF88| db $84 ; Copy past
|16BF89| dw $005D
|16BF8B| db $02 ; Raw block
|16BF8C| db $60, $00, $F0
|16BF8F| db $44 ; Repeat word
|16BF90| dw $F800
|16BF92| db $43 ; Repeat word
|16BF93| dw $00FC
|16BF95| db $E0, $3F ; EXT Raw block
|16BF97| db $FA, $80, $00, $60, $D0, $E8, $F8, $FC
|16BF9F| db $FC, $7E, $00, $00, $40, $00, $A0, $00
|16BFA7| db $F0, $40, $FC, $00, $5B, $24, $3C, $03
|16BFAF| db $57, $08, $00, $40, $E0, $B0, $CC, $67
|16BFB7| db $3B, $58, $00, $00, $02, $00, $05, $00
|16BFBF| db $0F, $02, $3F, $00, $DA, $24, $3C, $C0
|16BFC7| db $EA, $10, $00, $02, $07, $0D, $33, $E6
|16BFCF| db $DC, $1A, $00, $1E, $0E, $31, $1B, $24
|16BFD7| db $44 ; Repeat word
|16BFD8| dw $423D
|16BFDA| db $07 ; Raw block
|16BFDB| db $52, $3C, $5B, $1D, $27, $1E, $31, $3C
|16BFE3| db $22 ; Repeat byte
|16BFE4| db $7E
|16BFE5| db $01 ; Raw block
|16BFE6| db $7F, $3F
|16BFE8| db $22 ; Repeat byte
|16BFE9| db $00
|16BFEA| db $14 ; Raw block
|16BFEB| db $C0, $C0, $20, $A0, $50, $D0, $28, $E0
|16BFF3| db $98, $D4, $AC, $2C, $D4, $00, $C0, $20
|16BFFB| db $50, $28, $98, $AC, $D4
|16C000| db $87 ; Copy past
|16C001| dw $0060
|16C003| db $02 ; Raw block
|16C004| db $27, $00, $20
|16C007| db $44 ; Repeat word
|16C008| dw $4000
|16C00A| db $83 ; Copy past
|16C00B| dw $0070
|16C00D| db $06 ; Raw block
|16C00E| db $3F, $3F, $7F, $7F, $00, $00, $E0
|16C015| db $83 ; Copy past
|16C016| dw $007B
|16C018| db $E0, $29 ; EXT Raw block
|16C01A| db $10, $9C, $18, $6C, $08, $2E, $0C, $0E
|16C022| db $0C, $00, $E0, $B0, $E8, $E4, $94, $D2
|16C02A| db $F2, $03, $00, $1F, $03, $37, $1C, $7F
|16C032| db $20, $63, $00, $80, $00, $C1, $00, $E3
|16C03A| db $00, $03, $1F, $3F, $7F, $7F, $FF, $FF
|16C042| db $BE, $80
|16C044| db $84 ; Copy past
|16C045| dw $0109
|16C047| db $11 ; Raw block
|16C048| db $98, $60, $9C, $60, $FC, $00, $EC, $80
|16C050| db $F4, $90, $80, $E0, $F0, $F8, $FC, $FC
|16C058| db $7C, $6C
|16C05A| db $29 ; Repeat byte
|16C05B| db $00
|16C05C| db $05 ; Raw block
|16C05D| db $38, $00, $77, $08, $EF, $10
|16C063| db $24 ; Repeat byte
|16C064| db $00
|16C065| db $02 ; Raw block
|16C066| db $38, $4F, $98
|16C069| db $29 ; Repeat byte
|16C06A| db $00
|16C06B| db $05 ; Raw block
|16C06C| db $1C, $00, $EE, $10, $F7, $08
|16C072| db $24 ; Repeat byte
|16C073| db $00
|16C074| db $0E ; Raw block
|16C075| db $1C, $F2, $19, $6F, $27, $3F, $19, $1F
|16C07D| db $0D, $1E, $04, $1E, $02, $0F, $01
|16C084| db $43 ; Repeat word
|16C085| dw $0007
|16C087| db $13 ; Raw block
|16C088| db $58, $20, $12, $13, $11, $08, $04, $04
|16C090| db $F6, $E4, $FC, $98, $F8, $B0, $78, $20
|16C098| db $78, $40, $F0, $80
|16C09C| db $43 ; Repeat word
|16C09D| dw $00E0
|16C09F| db $14 ; Raw block
|16C0A0| db $1A, $04, $48, $C8, $88, $10, $20, $20
|16C0A8| db $7D, $3A, $7E, $39, $7E, $21, $7F, $12
|16C0B0| db $7E, $33, $37, $09, $0D
|16C0B5| db $22 ; Repeat byte
|16C0B6| db $00
|16C0B7| db $14 ; Raw block
|16C0B8| db $7F, $7A, $76, $77, $77, $3F, $0D, $00
|16C0C0| db $BF, $59, $7F, $9C, $7E, $8C, $BE, $4C
|16C0C8| db $3E, $C4, $EC, $D0, $F0
|16C0CD| db $22 ; Repeat byte
|16C0CE| db $00
|16C0CF| db $12 ; Raw block
|16C0D0| db $FE, $5F, $6E, $EE, $EE, $FC, $F0, $00
|16C0D8| db $7F, $21, $7E, $30, $3A, $10, $1C, $0C
|16C0E0| db $0F, $03, $03
|16C0E3| db $24 ; Repeat byte
|16C0E4| db $00
|16C0E5| db $12 ; Raw block
|16C0E6| db $58, $4B, $2F, $13, $0C, $03, $00, $00
|16C0EE| db $FE, $84, $7E, $0C, $5C, $08, $38, $30
|16C0F6| db $F0, $C0, $C0
|16C0F9| db $24 ; Repeat byte
|16C0FA| db $00
|16C0FB| db $0E ; Raw block
|16C0FC| db $1A, $D2, $F4, $C8, $30, $C0, $00, $00
|16C104| db $FF, $40, $E7, $5C, $FF, $5F, $7F
|16C10B| db $22 ; Repeat byte
|16C10C| db $00
|16C10D| db $02 ; Raw block
|16C10E| db $02, $00, $02
|16C111| db $22 ; Repeat byte
|16C112| db $00
|16C113| db $03 ; Raw block
|16C114| db $BC, $BF, $BF, $7F
|16C118| db $23 ; Repeat byte
|16C119| db $00
|16C11A| db $06 ; Raw block
|16C11B| db $FF, $02, $E7, $3A, $FF, $FA, $FE
|16C122| db $22 ; Repeat byte
|16C123| db $00
|16C124| db $02 ; Raw block
|16C125| db $40, $00, $40
|16C128| db $22 ; Repeat byte
|16C129| db $00
|16C12A| db $03 ; Raw block
|16C12B| db $3D, $FD, $FD, $FE
|16C12F| db $23 ; Repeat byte
|16C130| db $00
|16C131| db $05 ; Raw block
|16C132| db $07, $1F, $3B, $13, $39, $11
|16C138| db $43 ; Repeat word
|16C139| dw $2070
|16C13B| db $43 ; Repeat word
|16C13C| dw $40E0
|16C13E| db $11 ; Raw block
|16C13F| db $40, $00, $1F, $2B, $29, $50, $50, $A0
|16C147| db $A0, $40, $54, $AC, $04, $FC, $98, $F8
|16C14F| db $60, $60
|16C151| db $27 ; Repeat byte
|16C152| db $00
|16C153| db $03 ; Raw block
|16C154| db $AC, $FC, $F8, $60
|16C158| db $23 ; Repeat byte
|16C159| db $00
|16C15A| db $0A ; Raw block
|16C15B| db $48, $00, $55, $00, $40, $00, $20, $00
|16C163| db $18, $00, $07
|16C166| db $24 ; Repeat byte
|16C167| db $00
|16C168| db $22 ; Repeat byte
|16C169| db $7F
|16C16A| db $0F ; Raw block
|16C16B| db $3F, $1F, $07, $00, $00, $8E, $0C, $5E
|16C173| db $1C, $1E, $1C, $3C, $38, $F8, $E0, $E0
|16C17B| db $24 ; Repeat byte
|16C17C| db $00
|16C17D| db $14 ; Raw block
|16C17E| db $F2, $E2, $E2, $C4, $18, $E0, $00, $00
|16C186| db $F7, $00, $B7, $00, $81, $01, $7F, $00
|16C18E| db $41, $01, $3F, $1F, $1F
|16C193| db $22 ; Repeat byte
|16C194| db $00
|16C195| db $0A ; Raw block
|16C196| db $BE, $C8, $FE, $65, $7E, $20, $1F, $00
|16C19E| db $F4, $B0, $E8
|16C1A1| db $44 ; Repeat word
|16C1A2| dw $F0E0
|16C1A4| db $02 ; Raw block
|16C1A5| db $E0, $C0, $C0
|16C1A8| db $24 ; Repeat byte
|16C1A9| db $00
|16C1AA| db $E0, $67 ; EXT Raw block
|16C1AC| db $4C, $18, $10, $10, $20, $C0, $00, $00
|16C1B4| db $DF, $20, $BB, $04, $54, $0B, $17, $0C
|16C1BC| db $1F, $0E, $1E, $00, $1E, $0C, $1C, $00
|16C1C4| db $F8, $FC, $5F, $1F, $1F, $1E, $12, $1C
|16C1CC| db $FB, $04, $DD, $20, $2A, $D0, $E8, $30
|16C1D4| db $F8, $70, $78, $00, $78, $30, $38, $00
|16C1DC| db $1F, $3F, $FA, $F8, $F8, $78, $48, $38
|16C1E4| db $30, $00, $58, $30, $EC, $58, $BF, $2C
|16C1EC| db $B7, $29, $B7, $08, $FB, $64, $CB, $44
|16C1F4| db $30, $78, $BC, $DF, $DA, $FD, $9E, $BD
|16C1FC| db $0C, $00, $14, $08, $34, $18, $EC, $34
|16C204| db $EC, $98, $EC, $18, $CC, $38, $DC, $30
|16C20C| db $0C, $1C, $3C, $F8, $5C, $BC, $7C, $BC
|16C214| db $83 ; Copy past
|16C215| dw $0000
|16C217| db $07 ; Raw block
|16C218| db $0F, $03, $3F, $0F, $7E, $0E, $FC, $1C
|16C220| db $43 ; Repeat word
|16C221| dw $18F8
|16C223| db $07 ; Raw block
|16C224| db $00, $03, $0C, $30, $51, $A3, $A7, $A7
|16C22C| db $83 ; Copy past
|16C22D| dw $0018
|16C22F| db $14 ; Raw block
|16C230| db $F0, $C0, $FC, $F0, $3E, $30, $5F, $18
|16C238| db $EF, $08, $4F, $08, $00, $C0, $30, $0C
|16C240| db $CA, $A5, $15, $B5, $07
|16C245| db $83 ; Copy past
|16C246| dw $0067
|16C248| db $0E ; Raw block
|16C249| db $10, $7F, $30, $9F, $60, $CF, $70, $FF
|16C251| db $78, $7D, $08, $07, $1F, $3F, $7F
|16C258| db $22 ; Repeat byte
|16C259| db $FF
|16C25A| db $01 ; Raw block
|16C25B| db $7F, $E0
|16C25D| db $83 ; Copy past
|16C25E| dw $007F
|16C260| db $0E ; Raw block
|16C261| db $08, $FE, $0C, $F9, $06, $F3, $0E, $FF
|16C269| db $1E, $BE, $10, $E0, $F8, $FC, $FE
|16C270| db $22 ; Repeat byte
|16C271| db $FF
|16C272| db $08 ; Raw block
|16C273| db $FE, $0C, $00, $12, $00, $1D, $0C, $1E
|16C27B| db $00
|16C27C| db $43 ; Repeat word
|16C27D| dw $0816
|16C27F| db $E0, $43 ; EXT Raw block
|16C281| db $12, $0C, $08, $04, $0C, $1E, $13, $1E
|16C289| db $1A, $1A, $1C, $0C, $06, $00, $09, $00
|16C291| db $11, $00, $0F, $06, $16, $04, $2E, $0C
|16C299| db $7C, $38, $38, $00, $06, $0F, $1F, $09
|16C2A1| db $1A, $32, $44, $38, $60, $00, $90, $00
|16C2A9| db $88, $00, $F0, $40, $48, $30, $74, $38
|16C2B1| db $3C, $1C, $18, $00, $60, $F0, $F8, $B0
|16C2B9| db $78, $7C, $3C, $18, $30, $00, $48, $00
|16C2C1| db $98, $10, $78, $30
|16C2C5| db $43 ; Repeat word
|16C2C6| dw $1058
|16C2C8| db $0B ; Raw block
|16C2C9| db $F8, $70, $70, $20, $30, $78, $E8, $48
|16C2D1| db $68, $68, $88, $50
|16C2D5| db $29 ; Repeat byte
|16C2D6| db $00
|16C2D7| db $05 ; Raw block
|16C2D8| db $07, $00, $09, $06, $13, $0C
|16C2DE| db $24 ; Repeat byte
|16C2DF| db $00
|16C2E0| db $02 ; Raw block
|16C2E1| db $07, $0D, $1A
|16C2E4| db $29 ; Repeat byte
|16C2E5| db $00
|16C2E6| db $04 ; Raw block
|16C2E7| db $C0, $00, $A0, $40, $E0
|16C2EC| db $25 ; Repeat byte
|16C2ED| db $00
|16C2EE| db $02 ; Raw block
|16C2EF| db $C0, $A0, $60
|16C2F2| db $83 ; Copy past
|16C2F3| dw $0000
|16C2F5| db $03 ; Raw block
|16C2F6| db $05, $02, $29, $06
|16C2FA| db $43 ; Repeat word
|16C2FB| dw $0758
|16C2FD| db $0B ; Raw block
|16C2FE| db $38, $07, $3C, $03, $00, $03, $05, $2D
|16C306| db $74, $74, $24, $3C
|16C30A| db $83 ; Copy past
|16C30B| dw $0018
|16C30D| db $13 ; Raw block
|16C30E| db $60, $00, $30, $00, $98, $00, $C8, $00
|16C316| db $68, $80, $48, $80, $00, $C0, $A0, $D0
|16C31E| db $E8, $F8, $78, $78
|16C322| db $23 ; Repeat byte
|16C323| db $00
|16C324| db $0F ; Raw block
|16C325| db $18, $00, $3E, $18, $6F, $3E, $47, $3E
|16C32D| db $C7, $7E, $EF, $3E, $00, $00, $18, $3E
|16C335| db $83 ; Copy past
|16C336| dw $0133
|16C338| db $23 ; Repeat byte
|16C339| db $00
|16C33A| db $E0, $B1 ; EXT Raw block
|16C33C| db $18, $00, $74, $18, $EE, $70, $FE, $60
|16C344| db $F9, $60, $FB, $32, $00, $00, $18, $7C
|16C34C| db $FE, $FE, $FF, $FD, $5F, $16, $3F, $09
|16C354| db $3F, $0E, $2F, $06, $36, $00, $2E, $10
|16C35C| db $22, $1C, $1C, $00, $6F, $36, $31, $39
|16C364| db $3E, $2E, $22, $1C, $FC, $68, $FC, $98
|16C36C| db $FC, $70, $F4, $60, $6C, $00, $74, $08
|16C374| db $44, $38, $38, $00, $F4, $64, $8C, $9C
|16C37C| db $7C, $74, $44, $38, $F8, $08, $F4, $04
|16C384| db $70, $00, $3B, $11, $3F, $0C, $1F, $08
|16C38C| db $1F, $00, $0E, $00, $97, $9B, $5F, $2E
|16C394| db $32, $10, $11, $0E, $1F, $00, $1F, $10
|16C39C| db $0E, $00, $DC, $88, $FC, $30, $F8, $10
|16C3A4| db $F8, $00, $70, $00, $E9, $E9, $FA, $74
|16C3AC| db $4C, $08, $88, $70, $4D, $34, $5E, $21
|16C3B4| db $5F, $21, $2B, $14, $23, $1C, $5E, $20
|16C3BC| db $42, $34, $3C, $00, $7B, $67, $63, $37
|16C3C4| db $3F, $5E, $4A, $3C, $B2, $2C, $7A, $84
|16C3CC| db $FA, $84, $D4, $28, $C4, $38, $7A, $04
|16C3D4| db $42, $2C, $3C, $00, $DE, $E6, $C6, $EC
|16C3DC| db $FC, $7A, $52, $3C, $00, $44, $44, $EE
|16C3E4| db $28, $7C, $10, $38, $28, $7C, $44, $EE
|16C3EC| db $00, $44
|16C3EE| db $29 ; Repeat byte
|16C3EF| db $00
|16C3F0| db $87 ; Copy past
|16C3F1| dw $03C0
|16C3F3| db $05 ; Raw block
|16C3F4| db $58, $20, $5C, $20, $2C, $10
|16C3FA| db $85 ; Copy past
|16C3FB| dw $03CE
|16C3FD| db $03 ; Raw block
|16C3FE| db $68, $64, $30, $18
|16C402| db $87 ; Copy past
|16C403| dw $0390
|16C405| db $06 ; Raw block
|16C406| db $12, $0C, $1A, $0C, $1E, $0E, $0C
|16C40D| db $83 ; Copy past
|16C40E| dw $039F
|16C410| db $23 ; Repeat byte
|16C411| db $1E
|16C412| db $E0, $25 ; EXT Raw block
|16C414| db $0C, $E6, $5C, $FA, $04, $E5, $02, $6F
|16C41C| db $8A, $BF, $46, $BF, $42, $5F, $A2, $FF
|16C424| db $12, $FE, $FE, $FF, $F7, $7F, $7F, $DF
|16C42C| db $EF, $13, $0C, $20, $1F, $3F, $00, $27
|16C434| db $07, $1B, $03, $04, $03, $07
|16C43A| db $22 ; Repeat byte
|16C43B| db $00
|16C43C| db $08 ; Raw block
|16C43D| db $1B, $30, $3F, $38, $1C, $07, $07, $00
|16C445| db $20
|16C446| db $44 ; Repeat word
|16C447| dw $9000
|16C449| db $02 ; Raw block
|16C44A| db $E0, $80, $C0
|16C44D| db $43 ; Repeat word
|16C44E| dw $8000
|16C450| db $22 ; Repeat byte
|16C451| db $00
|16C452| db $12 ; Raw block
|16C453| db $E0, $F0, $F0, $60, $C0, $80, $80, $00
|16C45B| db $1E, $0D, $1F, $08, $08, $00, $0F, $00
|16C463| db $18, $07, $1F
|16C466| db $24 ; Repeat byte
|16C467| db $00
|16C468| db $0C ; Raw block
|16C469| db $12, $17, $0F, $0F, $17, $1F, $00, $00
|16C471| db $48, $80, $F0, $00, $40
|16C476| db $45 ; Repeat word
|16C477| dw $8000
|16C479| db $24 ; Repeat byte
|16C47A| db $00
|16C47B| db $02 ; Raw block
|16C47C| db $78, $F0, $C0
|16C47F| db $22 ; Repeat byte
|16C480| db $80
|16C481| db $0E ; Raw block
|16C482| db $00, $00, $3E, $0D, $FF, $CC, $E5, $1A
|16C48A| db $FA, $65, $7F, $28, $37, $06, $0F
|16C491| db $22 ; Repeat byte
|16C492| db $00
|16C493| db $14 ; Raw block
|16C494| db $FF, $3E, $E6, $FB, $77, $39, $0F, $00
|16C49C| db $7E, $B0, $BE, $58, $BE, $5C, $5E, $A4
|16C4A4| db $FE, $14, $EC, $60, $F0
|16C4A9| db $22 ; Repeat byte
|16C4AA| db $00
|16C4AB| db $07 ; Raw block
|16C4AC| db $FE, $7E, $7E, $DE, $EE, $9C, $F0, $00
|16C4B4| db $FF ; End of GFX A7

;===================================================================================================

GFX_A8:
|16C4B5| db $25 ; Repeat byte
|16C4B6| db $00
|16C4B7| db $09 ; Raw block
|16C4B8| db $06, $00, $0F, $06, $1B, $0B, $3C, $18
|16C4C0| db $3F, $1C
|16C4C2| db $22 ; Repeat byte
|16C4C3| db $00
|16C4C4| db $04 ; Raw block
|16C4C5| db $06, $09, $14, $23, $20
|16C4CA| db $25 ; Repeat byte
|16C4CB| db $00
|16C4CC| db $09 ; Raw block
|16C4CD| db $60, $00, $F0, $60, $D8, $D0, $3C, $18
|16C4D5| db $FC, $38
|16C4D7| db $22 ; Repeat byte
|16C4D8| db $00
|16C4D9| db $04 ; Raw block
|16C4DA| db $60, $90, $28, $C4, $04
|16C4DF| db $23 ; Repeat byte
|16C4E0| db $00
|16C4E1| db $13 ; Raw block
|16C4E2| db $18, $00, $3C, $00, $7F, $00, $7E, $01
|16C4EA| db $7B, $14, $64, $23, $00, $00, $18, $2C
|16C4F2| db $53, $5A, $6D, $5F
|16C4F6| db $23 ; Repeat byte
|16C4F7| db $00
|16C4F8| db $83 ; Copy past
|16C4F9| dw $0034
|16C4FB| db $0F ; Raw block
|16C4FC| db $FE, $00, $7E, $80, $DE, $28, $26, $C4
|16C504| db $00, $00, $18, $34, $CA, $5A, $B6, $FA
|16C50C| db $23 ; Repeat byte
|16C50D| db $00
|16C50E| db $13 ; Raw block
|16C50F| db $07, $00, $0D, $05, $17, $0A, $1A, $05
|16C517| db $3D, $0B, $5E, $0D, $00, $00, $07, $0A
|16C51F| db $11, $18, $35, $72
|16C523| db $23 ; Repeat byte
|16C524| db $00
|16C525| db $13 ; Raw block
|16C526| db $60, $00, $B0, $20, $E8, $50, $58, $A0
|16C52E| db $BC, $D0, $7A, $B0, $00, $00, $60, $D0
|16C536| db $88, $18, $AC, $4E
|16C53A| db $2B ; Repeat byte
|16C53B| db $00
|16C53C| db $02 ; Raw block
|16C53D| db $01, $00, $01
|16C540| db $26 ; Repeat byte
|16C541| db $00
|16C542| db $19 ; Raw block
|16C543| db $01, $01, $60, $00, $FC, $00, $F2, $0C
|16C54B| db $5D, $02, $DA, $15, $BD, $22, $E8, $57
|16C553| db $DC, $23, $60, $9C, $AE, $77, $ED, $DE
|16C55B| db $BB, $64
|16C55D| db $25 ; Repeat byte
|16C55E| db $00
|16C55F| db $01 ; Raw block
|16C560| db $60, $00
|16C562| db $43 ; Repeat word
|16C563| dw $60B0
|16C565| db $03 ; Raw block
|16C566| db $F7, $40, $7F, $15
|16C56A| db $22 ; Repeat byte
|16C56B| db $00
|16C56C| db $04 ; Raw block
|16C56D| db $60, $F0, $F0, $F7, $7F
|16C572| db $25 ; Repeat byte
|16C573| db $00
|16C574| db $01 ; Raw block
|16C575| db $06, $00
|16C577| db $43 ; Repeat word
|16C578| dw $060D
|16C57A| db $03 ; Raw block
|16C57B| db $EF, $02, $FE, $A8
|16C57F| db $22 ; Repeat byte
|16C580| db $00
|16C581| db $1C ; Raw block
|16C582| db $06, $0F, $0F, $EF, $FE, $00, $00, $02
|16C58A| db $00, $0D, $02, $19, $06, $7D, $0A, $9D
|16C592| db $17, $F7, $28, $F1, $5E, $00, $02, $0F
|16C59A| db $1F, $7D, $ED, $DF, $FF
|16C59F| db $29 ; Repeat byte
|16C5A0| db $00
|16C5A1| db $05 ; Raw block
|16C5A2| db $80, $00, $B8, $00, $EC, $B8
|16C5A8| db $24 ; Repeat byte
|16C5A9| db $00
|16C5AA| db $1A ; Raw block
|16C5AB| db $80, $B8, $FC, $04, $00, $0B, $04, $0E
|16C5B3| db $05, $1D, $03, $3C, $1B, $7E, $27, $7B
|16C5BB| db $26, $73, $1E, $04, $0F, $0F, $1F, $3E
|16C5C3| db $66, $77, $7F
|16C5C6| db $23 ; Repeat byte
|16C5C7| db $00
|16C5C8| db $47 ; Repeat word
|16C5C9| dw $0080
|16C5CB| db $05 ; Raw block
|16C5CC| db $DC, $80, $F2, $DC, $00, $00
|16C5D2| db $23 ; Repeat byte
|16C5D3| db $80
|16C5D4| db $01 ; Raw block
|16C5D5| db $DC, $FE
|16C5D7| db $2D ; Repeat byte
|16C5D8| db $00
|16C5D9| db $00 ; Raw block
|16C5DA| db $01
|16C5DB| db $27 ; Repeat byte
|16C5DC| db $00
|16C5DD| db $1E ; Raw block
|16C5DE| db $01, $01, $00, $0F, $00, $18, $07, $13
|16C5E6| db $0C, $6F, $10, $A4, $1B, $B0, $0F, $D8
|16C5EE| db $47, $01, $0E, $10, $13, $6E, $E4, $F0
|16C5F6| db $B8, $37, $17, $6F, $29, $7F, $36
|16C5FD| db $43 ; Repeat word
|16C5FE| dw $307A
|16C600| db $13 ; Raw block
|16C601| db $3C, $14, $17, $03, $03, $00, $28, $56
|16C609| db $49, $4F, $4F, $2B, $14, $03, $EC, $E8
|16C611| db $F6, $94, $FE, $6C
|16C615| db $43 ; Repeat word
|16C616| dw $0C5E
|16C618| db $E0, $4A ; EXT Raw block
|16C61A| db $3C, $28, $E8, $C0, $C0, $00, $14, $6A
|16C622| db $92, $F2, $F2, $D4, $28, $C0, $37, $10
|16C62A| db $7B, $27, $77, $3B, $3E, $17, $3F, $03
|16C632| db $1F, $00, $0F, $00, $03, $00, $2F, $7F
|16C63A| db $7F, $3F, $3F, $1F, $0F, $03, $EE, $08
|16C642| db $FA, $E4, $7E, $EC, $1C, $F0, $3C, $E0
|16C64A| db $F8, $00, $F0, $00, $C0, $00, $F6, $FE
|16C652| db $FE, $FC, $FC, $F8, $F0, $C0, $5F, $08
|16C65A| db $6F, $21, $7E, $10, $7A, $20, $7C, $34
|16C662| db $37, $01, $01
|16C665| db $22 ; Repeat byte
|16C666| db $00
|16C667| db $14 ; Raw block
|16C668| db $77, $58, $6B, $5F, $4B, $36, $01, $00
|16C670| db $FA, $10, $F6, $84, $7E, $08, $5E, $04
|16C678| db $3E, $2C, $EC, $80, $80
|16C67D| db $22 ; Repeat byte
|16C67E| db $00
|16C67F| db $0C ; Raw block
|16C680| db $EE, $1A, $D6, $FA, $D2, $6C, $80, $00
|16C688| db $01, $00, $03, $00, $01
|16C68D| db $2A ; Repeat byte
|16C68E| db $00
|16C68F| db $02 ; Raw block
|16C690| db $01, $02, $01
|16C693| db $24 ; Repeat byte
|16C694| db $00
|16C695| db $08 ; Raw block
|16C696| db $FC, $03, $DE, $21, $FF, $00, $F3, $0C
|16C69E| db $3C
|16C69F| db $86 ; Copy past
|16C6A0| dw $01B9
|16C6A2| db $03 ; Raw block
|16C6A3| db $47, $73, $31, $FC
|16C6A7| db $83 ; Copy past
|16C6A8| dw $01C4
|16C6AA| db $0A ; Raw block
|16C6AB| db $6E, $3D, $6E, $3B, $3B, $17, $3C, $0F
|16C6B3| db $0F, $07, $07
|16C6B6| db $24 ; Repeat byte
|16C6B7| db $00
|16C6B8| db $12 ; Raw block
|16C6B9| db $7F, $7F, $3B, $3C, $0F, $07, $00, $00
|16C6C1| db $76, $BC, $76, $DC, $DC, $E8, $38, $E0
|16C6C9| db $F0, $E0, $E0
|16C6CC| db $24 ; Repeat byte
|16C6CD| db $00
|16C6CE| db $E0, $3F ; EXT Raw block
|16C6D0| db $FE, $FE, $DC, $38, $F0, $E0, $00, $00
|16C6D8| db $F8, $5F, $7D, $0F, $1F, $07, $0E, $01
|16C6E0| db $05, $03, $0F, $07, $17, $07, $0F, $00
|16C6E8| db $FF, $7F, $1F, $0F, $07, $0B, $19, $0F
|16C6F0| db $C6, $BC, $6E, $FC, $BF, $EE, $FF, $F2
|16C6F8| db $DA, $F0, $F0, $60, $E0, $80, $C0, $00
|16C700| db $FE, $FE, $FF, $FF, $FA, $F0, $E0, $C0
|16C708| db $7E, $23, $5F, $1F, $3F, $1C, $1E, $03
|16C710| db $87 ; Copy past
|16C711| dw $0278
|16C713| db $03 ; Raw block
|16C714| db $5F, $6F, $3F, $1F
|16C718| db $83 ; Copy past
|16C719| dw $0284
|16C71B| db $0A ; Raw block
|16C71C| db $43, $BE, $6F, $FE, $BF, $F6, $FF, $F2
|16C724| db $DF, $F2, $F6
|16C727| db $84 ; Copy past
|16C728| dw $0293
|16C72A| db $24 ; Repeat byte
|16C72B| db $FF
|16C72C| db $E0, $56 ; EXT Raw block
|16C72E| db $F6, $E0, $C0, $07, $01, $0F, $07, $1B
|16C736| db $0F, $33, $1F, $31, $1F, $78, $3F, $65
|16C73E| db $3F, $FB, $47, $07, $0F, $1F, $3F, $3F
|16C746| db $7F, $67, $FB, $FF, $68, $FF, $8F, $F2
|16C74E| db $10, $FA, $88, $FC, $84, $FF, $C3, $FF
|16C756| db $E0, $FF, $A0, $87, $C0, $CF, $C7, $C3
|16C75E| db $E0, $F0, $F0, $00, $00, $03, $00, $0F
|16C766| db $03, $3C, $0C, $78, $08, $F8, $18, $F8
|16C76E| db $08, $FC, $0C, $00, $03, $0C, $33, $57
|16C776| db $A7, $97, $93, $00, $00, $C0, $00, $F0
|16C77E| db $C0, $7C, $30, $FE, $10, $4F, $08
|16C785| db $83 ; Copy past
|16C786| dw $01BA
|16C788| db $07 ; Raw block
|16C789| db $00, $C0, $30, $8C, $0A, $B5, $E9, $F9
|16C791| db $25 ; Repeat byte
|16C792| db $00
|16C793| db $03 ; Raw block
|16C794| db $01, $00, $06, $01
|16C798| db $43 ; Repeat word
|16C799| dw $070C
|16C79B| db $01 ; Raw block
|16C79C| db $1B, $0F
|16C79E| db $22 ; Repeat byte
|16C79F| db $00
|16C7A0| db $04 ; Raw block
|16C7A1| db $01, $07, $0F, $0F, $1F
|16C7A6| db $25 ; Repeat byte
|16C7A7| db $00
|16C7A8| db $03 ; Raw block
|16C7A9| db $80, $00, $60, $80
|16C7AD| db $43 ; Repeat word
|16C7AE| dw $E030
|16C7B0| db $01 ; Raw block
|16C7B1| db $98, $F0
|16C7B3| db $22 ; Repeat byte
|16C7B4| db $00
|16C7B5| db $04 ; Raw block
|16C7B6| db $80, $E0, $F0, $F0, $F8
|16C7BB| db $83 ; Copy past
|16C7BC| dw $009A
|16C7BE| db $17 ; Raw block
|16C7BF| db $0F, $01, $1F, $01, $2F, $10, $33, $0C
|16C7C7| db $7D, $32, $5E, $19, $00, $01, $0F, $13
|16C7CF| db $31, $3D, $4F, $67, $7E, $00, $FF, $42
|16C7D7| db $44 ; Repeat word
|16C7D8| dw $81FF
|16C7DA| db $07 ; Raw block
|16C7DB| db $C3, $FF, $7E, $FF, $81, $7E, $DB, $7E
|16C7E3| db $26 ; Repeat byte
|16C7E4| db $FF
|16C7E5| db $13 ; Raw block
|16C7E6| db $01, $00, $03, $01, $0F, $00, $1F, $0C
|16C7EE| db $3C, $1B, $36, $1D, $3E, $1D, $7D, $22
|16C7F6| db $01, $03, $0F, $1E
|16C7FA| db $22 ; Repeat byte
|16C7FB| db $3F
|16C7FC| db $18 ; Raw block
|16C7FD| db $7E, $80, $00, $C0, $80, $F0, $00, $F8
|16C805| db $30, $EC, $18, $DC, $28, $EC, $38, $FE
|16C80D| db $04, $80, $C0, $F0, $78, $3C, $6C, $7C
|16C815| db $3E
|16C816| db $2D ; Repeat byte
|16C817| db $00
|16C818| db $00 ; Raw block
|16C819| db $01
|16C81A| db $27 ; Repeat byte
|16C81B| db $00
|16C81C| db $00 ; Raw block
|16C81D| db $01
|16C81E| db $23 ; Repeat byte
|16C81F| db $00
|16C820| db $85 ; Copy past
|16C821| dw $00A8
|16C823| db $00 ; Raw block
|16C824| db $DD
|16C825| db $84 ; Copy past
|16C826| dw $00AF
|16C828| db $0A ; Raw block
|16C829| db $00, $00, $60, $9C, $AE, $F7, $ED, $DE
|16C831| db $10, $00, $38
|16C834| db $46 ; Repeat word
|16C835| dw $7C00
|16C837| db $43 ; Repeat word
|16C838| dw $0038
|16C83A| db $0B ; Raw block
|16C83B| db $28, $10, $10, $28, $44, $54, $54, $28
|16C843| db $38, $28, $78, $00
|16C847| db $45 ; Repeat word
|16C848| dw $6090
|16C84A| db $01 ; Raw block
|16C84B| db $76, $00
|16C84D| db $45 ; Repeat word
|16C84E| dw $0609
|16C850| db $07 ; Raw block
|16C851| db $78, $90, $B0, $F0, $76, $0F, $0B, $09
|16C859| db $83 ; Copy past
|16C85A| dw $0004
|16C85C| db $0A ; Raw block
|16C85D| db $09, $00, $0B, $02, $16, $08, $2E, $1C
|16C865| db $3C, $18, $18
|16C868| db $83 ; Copy past
|16C869| dw $00E9
|16C86B| db $04 ; Raw block
|16C86C| db $0D, $1E, $3E, $3C, $18
|16C871| db $83 ; Copy past
|16C872| dw $0032
|16C874| db $08 ; Raw block
|16C875| db $24, $00, $2C, $08, $3C, $00, $24, $18
|16C87D| db $2C
|16C87E| db $83 ; Copy past
|16C87F| dw $042D
|16C881| db $02 ; Raw block
|16C882| db $18, $3C, $34
|16C885| db $22 ; Repeat byte
|16C886| db $3C
|16C887| db $E0, $B8 ; EXT Raw block
|16C889| db $18, $CD, $03, $8D, $0B, $DD, $5B, $7D
|16C891| db $32, $7D, $02, $3B, $05, $3A, $05, $15
|16C899| db $0A, $FD, $F5, $A5, $4D, $7D, $3B, $3A
|16C8A1| db $15, $FF, $B0, $EF, $78, $E7, $3C, $F3
|16C8A9| db $4F, $CF, $40, $F0, $B0, $7F, $CF, $BF
|16C8B1| db $70, $F8, $FC, $FF, $BF, $BF, $CF, $70
|16C8B9| db $BF, $FF, $1F, $77, $35, $3A, $10, $3B
|16C8C1| db $1A, $1F, $08, $1F, $01, $1F, $00, $08
|16C8C9| db $00, $A0, $4A, $2F, $24, $10, $10, $17
|16C8D1| db $08, $1F, $18, $E6, $A4, $54, $00, $9C
|16C8D9| db $18, $F8, $10, $F8, $80, $F8, $00, $10
|16C8E1| db $00, $E5, $5A, $FC, $64, $08, $08, $E8
|16C8E9| db $10, $3C, $0F, $2E, $17, $4F, $33, $7F
|16C8F1| db $08, $5F, $0C, $3F, $12, $1F, $0D, $0D
|16C8F9| db $00, $3F, $2F, $4F, $7B, $7C, $2E, $13
|16C901| db $0D, $3C, $F0, $74, $E8, $F2, $CC, $FE
|16C909| db $10, $FA, $30, $FC, $48, $F8, $B0, $B0
|16C911| db $00, $FC, $F4, $F2, $DE, $3E, $74, $C8
|16C919| db $B0, $6F, $29, $7F, $20, $3F, $01, $23
|16C921| db $1C, $1F, $01, $09, $06, $08, $07, $07
|16C929| db $00, $57, $5B, $23, $3F, $1E, $09, $08
|16C931| db $07, $24, $DB, $FF, $E7, $E7, $18, $C3
|16C939| db $BD, $E7, $BD, $BD, $5A, $3C, $C3, $C3
|16C941| db $00
|16C942| db $23 ; Repeat byte
|16C943| db $FF
|16C944| db $E0, $34 ; EXT Raw block
|16C946| db $7E, $BD, $3C, $C3, $5E, $2B, $7F, $2D
|16C94E| db $77, $16, $33, $11, $3A, $18, $1C, $0C
|16C956| db $0F, $03, $07, $00, $77, $73, $69, $2E
|16C95E| db $27, $13, $0C, $07, $7A, $D4, $FE, $B4
|16C966| db $EE, $68, $CC, $88, $5C, $18, $38, $30
|16C96E| db $F0, $C0, $E0, $00, $EE, $CE, $96, $74
|16C976| db $E4, $C8, $30, $E0, $01
|16C97B| db $44 ; Repeat word
|16C97C| dw $0300
|16C97E| db $00 ; Raw block
|16C97F| db $01
|16C980| db $28 ; Repeat byte
|16C981| db $00
|16C982| db $03 ; Raw block
|16C983| db $01, $02, $02, $01
|16C987| db $23 ; Repeat byte
|16C988| db $00
|16C989| db $17 ; Raw block
|16C98A| db $E8, $57, $5C, $A3, $DC, $23, $DE, $21
|16C992| db $DF, $20, $77, $08, $18, $07, $07, $00
|16C99A| db $BB, $E4, $67, $63, $F1, $78, $1F, $07
|16C9A2| db $4D ; Repeat word
|16C9A3| dw $1028
|16C9A5| db $01 ; Raw block
|16C9A6| db $10, $00
|16C9A8| db $26 ; Repeat byte
|16C9A9| db $28
|16C9AA| db $00 ; Raw block
|16C9AB| db $10
|16C9AC| db $45 ; Repeat word
|16C9AD| dw $0609
|16C9AF| db $47 ; Repeat word
|16C9B0| dw $0205
|16C9B2| db $01 ; Raw block
|16C9B3| db $02, $00
|16C9B5| db $22 ; Repeat byte
|16C9B6| db $09
|16C9B7| db $23 ; Repeat byte
|16C9B8| db $05
|16C9B9| db $00 ; Raw block
|16C9BA| db $02
|16C9BB| db $E4, $2F ; EXT Repeat byte
|16C9BD| db $00
|16C9BE| db $43 ; Repeat word
|16C9BF| dw $0817
|16C9C1| db $06 ; Raw block
|16C9C2| db $0E, $00, $03, $01, $03, $00, $01
|16C9C9| db $24 ; Repeat byte
|16C9CA| db $00
|16C9CB| db $0F ; Raw block
|16C9CC| db $17, $17, $0F, $02, $03, $01, $00, $00
|16C9D4| db $BF, $7F, $DF, $BF, $60, $5F, $FF, $E0
|16C9DC| db $45 ; Repeat word
|16C9DD| dw $00FF
|16C9DF| db $05 ; Raw block
|16C9E0| db $3F, $00, $BF, $5F, $A0, $1F
|16C9E6| db $22 ; Repeat byte
|16C9E7| db $FF
|16C9E8| db $00 ; Raw block
|16C9E9| db $3F
|16C9EA| db $FF ; End of GFX A8

;===================================================================================================

GFX_A9:
|16C9EB| db $E0, $2F ; EXT Raw block
|16C9ED| db $06, $00, $1F, $04, $3F, $1D, $6E, $22
|16C9F5| db $DF, $5D, $FE, $3A, $FF, $7B, $F7, $75
|16C9FD| db $06, $1B, $22, $5D, $A2, $C5, $84, $8A
|16CA05| db $60, $00, $F8, $60, $E7, $18, $95, $0A
|16CA0D| db $0A, $05, $8A, $05, $92, $0D, $F0, $EF
|16CA15| db $60, $98, $E7, $F1, $F8, $F8, $F0, $10
|16CA1D| db $23 ; Repeat byte
|16CA1E| db $00
|16CA1F| db $13 ; Raw block
|16CA20| db $C0, $00, $F0, $C0, $F8, $70, $CC, $78
|16CA28| db $CC, $70, $C6, $7C, $00, $00, $C0, $F0
|16CA30| db $F8, $FC, $FC, $FE
|16CA34| db $3B ; Repeat byte
|16CA35| db $00
|16CA36| db $07 ; Raw block
|16CA37| db $60, $00, $F0, $00, $90, $60, $B0, $40
|16CA3F| db $43 ; Repeat word
|16CA40| dw $60D0
|16CA42| db $07 ; Raw block
|16CA43| db $00, $00, $60, $F0, $F0, $D0, $F0, $F0
|16CA4B| db $25 ; Repeat byte
|16CA4C| db $00
|16CA4D| db $09 ; Raw block
|16CA4E| db $0E, $00, $1F, $08, $39, $07, $75, $2E
|16CA56| db $7B, $3C
|16CA58| db $22 ; Repeat byte
|16CA59| db $00
|16CA5A| db $04 ; Raw block
|16CA5B| db $0E, $1F, $3F, $7D, $7B
|16CA60| db $27 ; Repeat byte
|16CA61| db $00
|16CA62| db $07 ; Raw block
|16CA63| db $0C, $00, $96, $0C, $E7, $1E, $E7, $DE
|16CA6B| db $23 ; Repeat byte
|16CA6C| db $00
|16CA6D| db $03 ; Raw block
|16CA6E| db $0C, $9E, $FF, $FF
|16CA72| db $25 ; Repeat byte
|16CA73| db $00
|16CA74| db $03 ; Raw block
|16CA75| db $03, $00, $06, $01
|16CA79| db $44 ; Repeat word
|16CA7A| dw $000F
|16CA7C| db $23 ; Repeat byte
|16CA7D| db $00
|16CA7E| db $01 ; Raw block
|16CA7F| db $03, $05
|16CA81| db $22 ; Repeat byte
|16CA82| db $08
|16CA83| db $17 ; Raw block
|16CA84| db $0B, $00, $1F, $03, $2F, $07, $FD, $01
|16CA8C| db $7E, $86, $7F, $83, $3F, $D1, $3C, $D8
|16CA94| db $0B, $14, $28, $D6, $E9, $D4, $EE, $E7
|16CA9C| db $48 ; Repeat word
|16CA9D| dw $0103
|16CA9F| db $06 ; Raw block
|16CAA0| db $00, $07, $00, $0F, $04, $0D, $06
|16CAA7| db $23 ; Repeat byte
|16CAA8| db $02
|16CAA9| db $15 ; Raw block
|16CAAA| db $03, $07, $0F, $0F, $DC, $50, $DD, $49
|16CAB2| db $B7, $0C, $B3, $1F, $B0, $1F, $B8, $2F
|16CABA| db $BD, $A7, $3F, $06, $AF, $BE
|16CAC0| db $22 ; Repeat byte
|16CAC1| db $FF
|16CAC2| db $02 ; Raw block
|16CAC3| db $DF, $5F, $FF
|16CAC6| db $23 ; Repeat byte
|16CAC7| db $00
|16CAC8| db $43 ; Repeat word
|16CAC9| dw $0001
|16CACB| db $43 ; Repeat word
|16CACC| dw $0103
|16CACE| db $1A ; Raw block
|16CACF| db $06, $03, $07, $03, $00, $00, $01, $01
|16CAD7| db $03, $03, $07, $07, $F8, $6F, $F8, $77
|16CADF| db $FC, $FF, $AE, $FF, $AB, $FF, $69, $FF
|16CAE7| db $D9, $FF, $D1
|16CAEA| db $28 ; Repeat byte
|16CAEB| db $FF
|16CAEC| db $27 ; Repeat byte
|16CAED| db $00
|16CAEE| db $01 ; Raw block
|16CAEF| db $01, $00
|16CAF1| db $45 ; Repeat word
|16CAF2| dw $0102
|16CAF4| db $23 ; Repeat byte
|16CAF5| db $00
|16CAF6| db $00 ; Raw block
|16CAF7| db $01
|16CAF8| db $22 ; Repeat byte
|16CAF9| db $03
|16CAFA| db $97 ; Copy past
|16CAFB| dw $00C0
|16CAFD| db $E0, $57 ; EXT Raw block
|16CAFF| db $1B, $05, $27, $19, $2B, $15, $23, $1D
|16CB07| db $56, $2C, $7B, $0C, $A3, $5C, $97, $6C
|16CB0F| db $16, $3A, $36, $3E, $6F, $4F, $DF, $EF
|16CB17| db $7B, $32, $7F, $3A, $3F, $1B, $1F, $0B
|16CB1F| db $1F, $0A, $1F, $0C, $0F, $04, $04, $00
|16CB27| db $4D, $45, $24, $14, $15, $13, $0B, $04
|16CB2F| db $E9, $96, $E7, $59, $D7, $AB, $E7, $98
|16CB37| db $EF, $93, $FF, $81, $DF, $90, $B8, $00
|16CB3F| db $61, $A7, $47, $47, $4F, $7F, $6F, $B8
|16CB47| db $E6, $FC, $DE, $3C, $1E, $FC, $CE, $F4
|16CB4F| db $FE, $78, $FA, $D0, $F2, $80, $BC, $00
|16CB57| db $26 ; Repeat byte
|16CB58| db $FE
|16CB59| db $06 ; Raw block
|16CB5A| db $BC, $03, $00, $05, $02, $05, $03
|16CB61| db $43 ; Repeat word
|16CB62| dw $0207
|16CB64| db $02 ; Raw block
|16CB65| db $06, $02, $02
|16CB68| db $22 ; Repeat byte
|16CB69| db $00
|16CB6A| db $00 ; Raw block
|16CB6B| db $03
|16CB6C| db $23 ; Repeat byte
|16CB6D| db $07
|16CB6E| db $E0, $27 ; EXT Raw block
|16CB70| db $06, $02, $00, $DC, $60, $FA, $F4, $FA
|16CB78| db $6C, $6E, $94, $2E, $94, $96, $64, $F4
|16CB80| db $00, $90, $40, $FC, $FE, $FE, $6E, $4E
|16CB88| db $96, $F4, $F0, $F7, $4D, $F6, $4D, $BE
|16CB90| db $73, $FF, $2E, $7E, $0C, $0D, $04, $06
|16CB98| db $22 ; Repeat byte
|16CB99| db $00
|16CB9A| db $14 ; Raw block
|16CB9B| db $CF, $EF, $FF, $BF, $73, $0B, $06, $00
|16CBA3| db $2F, $F6, $7F, $9A, $9F, $6C, $8E, $7C
|16CBAB| db $5C, $78, $F8, $60, $70
|16CBB0| db $22 ; Repeat byte
|16CBB1| db $00
|16CBB2| db $22 ; Repeat byte
|16CBB3| db $FF
|16CBB4| db $E0, $68 ; EXT Raw block
|16CBB6| db $FE, $BC, $B8, $70, $00, $13, $0C, $1B
|16CBBE| db $04, $1E, $03, $1F, $03, $1E, $05, $1D
|16CBC6| db $0A, $1B, $06, $17, $0D, $1C, $14, $13
|16CBCE| db $13, $15, $1B, $17, $1E, $3C, $D0, $7E
|16CBD6| db $B4, $5A, $90, $D8, $40, $BC, $21, $FE
|16CBDE| db $C0, $FF, $C2, $E3, $A3, $EF, $CF, $EF
|16CBE6| db $BF, $DE, $3F, $3D, $5C, $05, $02, $0D
|16CBEE| db $06, $07, $02, $03, $00, $06, $00, $04
|16CBF6| db $00, $0A, $00, $05, $00, $07, $0F, $07
|16CBFE| db $03, $07, $07, $0F, $05, $3F, $04, $3B
|16CC06| db $0E, $79, $5F, $6D, $3E, $C6, $BF, $D3
|16CC0E| db $3E, $ED, $3F, $F0, $5F, $FE, $FF, $BF
|16CC16| db $FE, $7F, $FE, $FF, $FF, $07, $03, $07
|16CC1E| db $00
|16CC1F| db $43 ; Repeat word
|16CC20| dw $0103
|16CC22| db $00 ; Raw block
|16CC23| db $01
|16CC24| db $26 ; Repeat byte
|16CC25| db $00
|16CC26| db $04 ; Raw block
|16CC27| db $07, $07, $03, $03, $01
|16CC2C| db $22 ; Repeat byte
|16CC2D| db $00
|16CC2E| db $43 ; Repeat word
|16CC2F| dw $FF95
|16CC31| db $0B ; Raw block
|16CC32| db $35, $FF, $65, $FF, $E5, $3F, $6D, $3F
|16CC3A| db $7F, $36, $36, $00
|16CC3E| db $24 ; Repeat byte
|16CC3F| db $FF
|16CC40| db $02 ; Raw block
|16CC41| db $7F, $7F, $36
|16CC44| db $43 ; Repeat word
|16CC45| dw $0304
|16CC47| db $00 ; Raw block
|16CC48| db $06
|16CC49| db $45 ; Repeat word
|16CC4A| dw $0503
|16CC4C| db $43 ; Repeat word
|16CC4D| dw $0702
|16CC4F| db $00 ; Raw block
|16CC50| db $01
|16CC51| db $26 ; Repeat byte
|16CC52| db $07
|16CC53| db $00 ; Raw block
|16CC54| db $06
|16CC55| db $97 ; Copy past
|16CC56| dw $0240
|16CC58| db $08 ; Raw block
|16CC59| db $5B, $2C, $AB, $54, $DB, $24, $37, $08
|16CC61| db $16
|16CC62| db $86 ; Copy past
|16CC63| dw $0261
|16CC65| db $07 ; Raw block
|16CC66| db $6F, $D7, $E5, $2B, $17, $07, $0F, $05
|16CC6E| db $23 ; Repeat byte
|16CC6F| db $00
|16CC70| db $08 ; Raw block
|16CC71| db $F0, $00, $7E, $00, $1F, $00, $07, $00
|16CC79| db $01
|16CC7A| db $24 ; Repeat byte
|16CC7B| db $00
|16CC7C| db $04 ; Raw block
|16CC7D| db $F0, $7E, $1F, $07, $01
|16CC82| db $22 ; Repeat byte
|16CC83| db $00
|16CC84| db $15 ; Raw block
|16CC85| db $08, $00, $16, $08, $1D, $0A, $3B, $06
|16CC8D| db $79, $36, $FD, $4E, $F7, $4D, $00, $08
|16CC95| db $1E, $1F, $3F, $7D, $CD, $EF
|16CC9B| db $25 ; Repeat byte
|16CC9C| db $00
|16CC9D| db $09 ; Raw block
|16CC9E| db $0C, $00, $12, $0C, $A3, $1E, $E7, $9E
|16CCA6| db $EF, $D6
|16CCA8| db $22 ; Repeat byte
|16CCA9| db $00
|16CCAA| db $04 ; Raw block
|16CCAB| db $0C, $1E, $BF, $FF, $FF
|16CCB0| db $25 ; Repeat byte
|16CCB1| db $00
|16CCB2| db $09 ; Raw block
|16CCB3| db $08, $00, $17, $08, $10, $0F, $23, $1E
|16CCBB| db $3D, $06
|16CCBD| db $22 ; Repeat byte
|16CCBE| db $00
|16CCBF| db $04 ; Raw block
|16CCC0| db $08, $1F, $1F, $3F, $27
|16CCC5| db $29 ; Repeat byte
|16CCC6| db $00
|16CCC7| db $05 ; Raw block
|16CCC8| db $C0, $00, $FA, $C0, $B5, $EA
|16CCCE| db $24 ; Repeat byte
|16CCCF| db $00
|16CCD0| db $02 ; Raw block
|16CCD1| db $C0, $FA, $F5
|16CCD4| db $83 ; Copy past
|16CCD5| dw $010A
|16CCD7| db $0B ; Raw block
|16CCD8| db $03, $01, $02, $01, $0D, $02, $17, $08
|16CCE0| db $13, $0E, $27, $1D
|16CCE4| db $83 ; Copy past
|16CCE5| dw $014B
|16CCE7| db $E0, $4B ; EXT Raw block
|16CCE9| db $0F, $1F, $1F, $3F, $F8, $00, $BE, $E0
|16CCF1| db $7D, $9E, $F6, $78, $EC, $70, $E4, $F8
|16CCF9| db $CC, $F0, $9E, $E0, $F8, $FE, $FF, $FE
|16CD01| db $FC, $FC, $F4, $EE, $00, $00, $1C, $00
|16CD09| db $32, $00, $7F, $00, $AE, $00, $B2, $00
|16CD11| db $6E, $00, $31, $00, $00, $1C, $2E, $5D
|16CD19| db $EF, $FF, $5F, $31, $00, $00, $70, $00
|16CD21| db $98, $00, $7C, $00, $EA, $00, $95, $00
|16CD29| db $ED, $00, $EF, $00, $00, $70, $E8, $F4
|16CD31| db $EE, $F7, $FF, $7D
|16CD35| db $27 ; Repeat byte
|16CD36| db $00
|16CD37| db $07 ; Raw block
|16CD38| db $08, $00, $1D, $00, $3B, $05, $37, $0D
|16CD40| db $23 ; Repeat byte
|16CD41| db $00
|16CD42| db $1B ; Raw block
|16CD43| db $08, $15, $26, $2E, $26, $00, $7F, $06
|16CD4B| db $FF, $0F, $7D, $2D, $FD, $05, $FE, $8E
|16CD53| db $FF, $03, $F2, $A0, $26, $59, $B0, $52
|16CD5B| db $AA, $51, $AC, $5F
|16CD5F| db $43 ; Repeat word
|16CD60| dw $50F0
|16CD62| db $E0, $2B ; EXT Raw block
|16CD64| db $FB, $0B, $71, $11, $61, $21, $63, $22
|16CD6C| db $66, $25, $24, $03, $AF, $AF, $F4, $6E
|16CD74| db $5E, $5D, $5B, $3F, $7B, $48, $3C, $35
|16CD7C| db $0F, $08, $E7, $27, $B8, $48, $6F, $92
|16CD84| db $FB, $04, $FF, $00, $B7, $CA, $F7, $D8
|16CD8C| db $F7, $9D, $07, $00
|16CD90| db $43 ; Repeat word
|16CD91| dw $0F1F
|16CD93| db $13 ; Raw block
|16CD94| db $3F, $1F, $7F, $3B, $FF, $1B, $FF, $07
|16CD9C| db $5F, $0F, $7F, $07, $1F, $1F, $3F, $7F
|16CDA4| db $FF, $BF, $7F, $5F
|16CDA8| db $45 ; Repeat word
|16CDA9| dw $FF80
|16CDAB| db $43 ; Repeat word
|16CDAC| dw $FFC0
|16CDAE| db $05 ; Raw block
|16CDAF| db $D0, $FF, $D1, $7F, $D9, $7F
|16CDB5| db $27 ; Repeat byte
|16CDB6| db $FF
|16CDB7| db $27 ; Repeat byte
|16CDB8| db $00
|16CDB9| db $07 ; Raw block
|16CDBA| db $38, $00, $5D, $20, $BB, $45, $B7, $6D
|16CDC2| db $23 ; Repeat byte
|16CDC3| db $00
|16CDC4| db $09 ; Raw block
|16CDC5| db $38, $65, $C6, $EE, $B0, $00, $F0, $00
|16CDCD| db $D0, $20
|16CDCF| db $83 ; Copy past
|16CDD0| dw $0068
|16CDD2| db $16 ; Raw block
|16CDD3| db $B0, $00, $90, $60, $70, $00, $D0, $90
|16CDDB| db $B0, $F0, $D0, $D0, $F0, $70, $A7, $7D
|16CDE3| db $7E, $03, $9F, $1F, $7F, $1C, $1C
|16CDEA| db $26 ; Repeat byte
|16CDEB| db $00
|16CDEC| db $04 ; Raw block
|16CDED| db $FF, $7F, $EF, $6F, $1C
|16CDF2| db $22 ; Repeat byte
|16CDF3| db $00
|16CDF4| db $0C ; Raw block
|16CDF5| db $3F, $F2, $1F, $FA, $CE, $F8, $F4, $B8
|16CDFD| db $FE, $38, $3E, $1C, $1C
|16CE02| db $22 ; Repeat byte
|16CE03| db $00
|16CE04| db $12 ; Raw block
|16CE05| db $FF, $FF, $FE, $FC, $F6, $22, $1C, $00
|16CE0D| db $5F, $23, $9B, $76, $7F, $1D, $1F, $01
|16CE15| db $07, $01, $03
|16CE18| db $24 ; Repeat byte
|16CE19| db $00
|16CE1A| db $03 ; Raw block
|16CE1B| db $53, $97, $7F, $1F
|16CE1F| db $83 ; Copy past
|16CE20| dw $0116
|16CE22| db $05 ; Raw block
|16CE23| db $9A, $E4, $24, $D8, $7A, $94
|16CE29| db $43 ; Repeat word
|16CE2A| dw $827D
|16CE2C| db $18 ; Raw block
|16CE2D| db $BE, $C0, $DC, $20, $30, $00, $E2, $E4
|16CE35| db $B2, $91, $B9, $CA, $EC, $30, $3E, $05
|16CE3D| db $5D, $23, $9B, $76, $7E, $1D, $1D, $02
|16CE45| db $03
|16CE46| db $24 ; Repeat byte
|16CE47| db $00
|16CE48| db $1F ; Raw block
|16CE49| db $27, $53, $97, $7F, $1E, $03, $00, $00
|16CE51| db $7D, $8A, $EA, $D4, $54, $A8, $7A, $84
|16CE59| db $ED, $02, $CD, $02, $0E, $00, $04, $00
|16CE61| db $9D, $F2, $E4, $92, $29, $C9, $0A, $04
|16CE69| db $84 ; Copy past
|16CE6A| dw $00E0
|16CE6C| db $05 ; Raw block
|16CE6D| db $00, $0A, $05, $09, $07, $0C
|16CE73| db $83 ; Copy past
|16CE74| dw $0298
|16CE76| db $83 ; Copy past
|16CE77| dw $00BA
|16CE79| db $E0, $58 ; EXT Raw block
|16CE7B| db $0D, $0F, $0F, $07, $03, $D6, $00, $AC
|16CE83| db $40, $70, $E0, $F0, $C0, $50, $A0, $30
|16CE8B| db $E0, $E0, $C0, $C0, $00, $5A, $EC, $F0
|16CE93| db $D0, $B0, $F0, $E0, $C0, $26, $1A, $3E
|16CE9B| db $0A, $2F, $17, $3F, $06, $3F, $0C, $3F
|16CEA3| db $18, $7D, $35, $F8, $68, $3D, $2D, $38
|16CEAB| db $39, $33, $27, $4A, $97, $FC, $C4, $7F
|16CEB3| db $03, $FE, $20, $C8, $40, $8E, $08, $8B
|16CEBB| db $0A, $D0, $50, $F4, $B1, $3F, $EE, $DF
|16CEC3| db $BF, $F7, $F5, $AF, $4E, $2C, $0B, $4E
|16CECB| db $0B, $BF, $21, $F3, $00, $07, $02, $0F
|16CED3| db $07
|16CED4| db $43 ; Repeat word
|16CED5| dw $0F1F
|16CED7| db $19 ; Raw block
|16CED8| db $37, $77, $DF, $F3, $07, $0F, $1F, $1F
|16CEE0| db $FF, $00, $78, $87, $00, $FF, $C7, $FF
|16CEE8| db $FF, $3F, $F0, $FF, $C0, $FF, $80, $FF
|16CEF0| db $00, $87
|16CEF2| db $25 ; Repeat byte
|16CEF3| db $FF
|16CEF4| db $0A ; Raw block
|16CEF5| db $2F, $06, $3F, $01, $1B, $01, $0F, $00
|16CEFD| db $07, $00, $03
|16CF00| db $24 ; Repeat byte
|16CF01| db $00
|16CF02| db $17 ; Raw block
|16CF03| db $3F, $2F, $1F, $0B, $06, $03, $00, $00
|16CF0B| db $99, $FF, $39, $EF, $F3, $EE, $FF, $1C
|16CF13| db $BF, $01, $EA, $00, $FF, $00, $15, $00
|16CF1B| db $23 ; Repeat byte
|16CF1C| db $FF
|16CF1D| db $0F ; Raw block
|16CF1E| db $FE, $BF, $EA, $15, $9E, $7A, $BE, $4A
|16CF26| db $BF, $47, $BF, $46, $BF, $4C, $BF, $58
|16CF2E| db $83 ; Copy past
|16CF2F| dw $0564
|16CF31| db $07 ; Raw block
|16CF32| db $FD, $CD, $C8, $C9, $F3, $E7, $4A, $97
|16CF3A| db $FF ; End of GFX A9

;===================================================================================================

GFX_AA:
|16CF3B| db $0F ; Raw block
|16CF3C| db $80, $00, $40, $00, $20, $00, $13, $03
|16CF44| db $0C, $04, $0D, $08, $12, $10, $15, $10
|16CF4C| db $23 ; Repeat byte
|16CF4D| db $00
|16CF4E| db $03 ; Raw block
|16CF4F| db $03, $02, $0D, $0A
|16CF53| db $23 ; Repeat byte
|16CF54| db $00
|16CF55| db $0A ; Raw block
|16CF56| db $18, $00, $C4, $C0, $30, $30, $D2, $10
|16CF5E| db $EC, $08, $E8
|16CF61| db $24 ; Repeat byte
|16CF62| db $00
|16CF63| db $03 ; Raw block
|16CF64| db $C0, $20, $10, $10
|16CF68| db $27 ; Repeat byte
|16CF69| db $00
|16CF6A| db $07 ; Raw block
|16CF6B| db $08, $00, $05, $01, $02, $00, $05, $04
|16CF73| db $25 ; Repeat byte
|16CF74| db $00
|16CF75| db $01 ; Raw block
|16CF76| db $01, $02
|16CF78| db $29 ; Repeat byte
|16CF79| db $00
|16CF7A| db $05 ; Raw block
|16CF7B| db $80, $80, $40, $00, $B0, $20
|16CF81| db $25 ; Repeat byte
|16CF82| db $00
|16CF83| db $01 ; Raw block
|16CF84| db $80, $40
|16CF86| db $E4, $27 ; EXT Repeat byte
|16CF88| db $00
|16CF89| db $07 ; Raw block
|16CF8A| db $01, $02, $04, $08, $10, $20, $40, $80
|16CF92| db $2F ; Repeat byte
|16CF93| db $00
|16CF94| db $07 ; Raw block
|16CF95| db $10, $08, $0D, $E7, $3F, $0F, $56, $3E
|16CF9D| db $2F ; Repeat byte
|16CF9E| db $00
|16CF9F| db $E0, $3A ; EXT Raw block
|16CFA1| db $01, $01, $05, $05, $0B, $06, $03, $0E
|16CFA9| db $00, $00, $03, $00, $C7, $00, $6E, $41
|16CFB1| db $F4, $AB, $F9, $A6, $F7, $28, $EE, $51
|16CFB9| db $00, $03, $C5, $A9, $5B, $5F, $DF, $B1
|16CFC1| db $C0, $00, $20, $00, $A0, $80, $F8, $00
|16CFC9| db $54, $A8, $B2, $6C, $FE, $70, $FA, $5C
|16CFD1| db $C0, $E0, $60, $F8, $F4, $F2, $FE, $FE
|16CFD9| db $03, $00, $07
|16CFDC| db $44 ; Repeat word
|16CFDD| dw $0F00
|16CFDF| db $83 ; Copy past
|16CFE0| dw $00F2
|16CFE2| db $0E ; Raw block
|16CFE3| db $1C, $00, $1F, $00, $03, $04, $0B, $08
|16CFEB| db $04, $0B, $14, $13, $E0, $00, $F0
|16CFF2| db $44 ; Repeat word
|16CFF3| dw $F800
|16CFF5| db $83 ; Copy past
|16CFF6| dw $010A
|16CFF8| db $E0, $23 ; EXT Raw block
|16CFFA| db $7C, $00, $FC, $00, $E0, $10, $E8, $08
|16D002| db $50, $E8, $34, $14, $FE, $7F, $FD, $BF
|16D00A| db $FB, $DF, $F7, $EF, $EF, $F7, $DF, $FB
|16D012| db $BF, $FD, $7F, $FE, $FE, $FD, $FB, $F7
|16D01A| db $EF, $DF, $BF, $7F
|16D01E| db $97 ; Copy past
|16D01F| dw $0120
|16D021| db $F0, $2F ; EXT Copy past
|16D023| dw $0120
|16D025| db $0C ; Raw block
|16D026| db $37, $10, $13, $10, $0F, $08, $0D, $04
|16D02E| db $13, $02, $01, $00, $01
|16D033| db $22 ; Repeat byte
|16D034| db $00
|16D035| db $03 ; Raw block
|16D036| db $08, $0C, $00, $02
|16D03A| db $23 ; Repeat byte
|16D03B| db $00
|16D03C| db $09 ; Raw block
|16D03D| db $D8, $08, $A8, $08, $D0, $10, $30, $10
|16D045| db $D0, $C0
|16D047| db $25 ; Repeat byte
|16D048| db $00
|16D049| db $03 ; Raw block
|16D04A| db $20, $50, $20, $C0
|16D04E| db $23 ; Repeat byte
|16D04F| db $00
|16D050| db $06 ; Raw block
|16D051| db $05, $04, $03, $00, $05, $00, $01
|16D058| db $22 ; Repeat byte
|16D059| db $00
|16D05A| db $00 ; Raw block
|16D05B| db $04
|16D05C| db $24 ; Repeat byte
|16D05D| db $00
|16D05E| db $00 ; Raw block
|16D05F| db $02
|16D060| db $26 ; Repeat byte
|16D061| db $00
|16D062| db $06 ; Raw block
|16D063| db $A0, $00, $40, $00, $80, $80, $10
|16D06A| db $28 ; Repeat byte
|16D06B| db $00
|16D06C| db $01 ; Raw block
|16D06D| db $40, $80
|16D06F| db $35 ; Repeat byte
|16D070| db $00
|16D071| db $87 ; Copy past
|16D072| dw $0088
|16D074| db $E4, $27 ; EXT Repeat byte
|16D076| db $00
|16D077| db $06 ; Raw block
|16D078| db $0C, $1C, $37, $DE, $0A, $14, $04
|16D07F| db $30 ; Repeat byte
|16D080| db $00
|16D081| db $04 ; Raw block
|16D082| db $02, $1E, $03, $07, $0A
|16D087| db $22 ; Repeat byte
|16D088| db $00
|16D089| db $12 ; Raw block
|16D08A| db $DD, $A2, $9B, $65, $13, $ED, $47, $BB
|16D092| db $E7, $1B, $FF, $03, $FF, $00, $3F, $00
|16D09A| db $63, $E7, $EF
|16D09D| db $23 ; Repeat byte
|16D09E| db $FF
|16D09F| db $0D ; Raw block
|16D0A0| db $3F, $FA, $3C, $FD, $B2, $F3, $80, $EB
|16D0A8| db $D0, $E5, $9A, $F1, $0E, $EE
|16D0AE| db $22 ; Repeat byte
|16D0AF| db $00
|16D0B0| db $06 ; Raw block
|16D0B1| db $FE, $FD, $FF, $EF, $E5, $F1, $EE
|16D0B8| db $44 ; Repeat word
|16D0B9| dw $1F00
|16D0BB| db $43 ; Repeat word
|16D0BC| dw $001C
|16D0BE| db $83 ; Copy past
|16D0BF| dw $00F6
|16D0C1| db $00 ; Raw block
|16D0C2| db $03
|16D0C3| db $22 ; Repeat byte
|16D0C4| db $00
|16D0C5| db $0A ; Raw block
|16D0C6| db $14, $17, $14, $14, $0B, $04, $03, $00
|16D0CE| db $FC, $00, $7C
|16D0D1| db $44 ; Repeat word
|16D0D2| dw $3C00
|16D0D4| db $83 ; Copy past
|16D0D5| dw $010E
|16D0D7| db $00 ; Raw block
|16D0D8| db $E0
|16D0D9| db $22 ; Repeat byte
|16D0DA| db $00
|16D0DB| db $07 ; Raw block
|16D0DC| db $B4, $74, $14, $14, $E8, $10, $E0, $00
|16D0E4| db $F0, $5F ; EXT Copy past
|16D0E6| dw $0120
|16D0E8| db $23 ; Repeat byte
|16D0E9| db $00
|16D0EA| db $0B ; Raw block
|16D0EB| db $20, $00, $10, $00, $0B, $03, $04, $00
|16D0F3| db $0A, $08, $09, $08
|16D0F7| db $24 ; Repeat byte
|16D0F8| db $00
|16D0F9| db $02 ; Raw block
|16D0FA| db $03, $05, $06
|16D0FD| db $25 ; Repeat byte
|16D0FE| db $00
|16D0FF| db $09 ; Raw block
|16D100| db $08, $00, $C0, $C0, $20, $20, $D0, $10
|16D108| db $D8, $10
|16D10A| db $24 ; Repeat byte
|16D10B| db $00
|16D10C| db $02 ; Raw block
|16D10D| db $C0, $20, $20
|16D110| db $2F ; Repeat byte
|16D111| db $00
|16D112| db $27 ; Repeat byte
|16D113| db $01
|16D114| db $E4, $47 ; EXT Repeat byte
|16D116| db $00
|16D117| db $17 ; Raw block
|16D118| db $3C, $00, $7F, $34, $F3, $43, $C0, $40
|16D120| db $C2, $40, $FC, $70, $F9, $39, $7F, $0F
|16D128| db $3C, $4B, $BC, $BF, $BF, $8F, $C6, $70
|16D130| db $23 ; Repeat byte
|16D131| db $00
|16D132| db $13 ; Raw block
|16D133| db $C0, $00, $6E, $40, $F5, $AA, $F6, $A9
|16D13B| db $FE, $21, $FC, $43, $00, $00, $C0, $AE
|16D143| db $5B, $5D, $D9, $B3
|16D147| db $25 ; Repeat byte
|16D148| db $00
|16D149| db $03 ; Raw block
|16D14A| db $38, $00, $D4, $28
|16D14E| db $85 ; Copy past
|16D14F| dw $00E2
|16D151| db $22 ; Repeat byte
|16D152| db $00
|16D153| db $00 ; Raw block
|16D154| db $38
|16D155| db $83 ; Copy past
|16D156| dw $00EC
|16D158| db $25 ; Repeat byte
|16D159| db $00
|16D15A| db $04 ; Raw block
|16D15B| db $10, $00, $38, $00, $10
|16D160| db $2E ; Repeat byte
|16D161| db $00
|16D162| db $0A ; Raw block
|16D163| db $18, $00, $24, $00, $4A, $00, $42, $00
|16D16B| db $44, $00, $38
|16D16E| db $2A ; Repeat byte
|16D16F| db $00
|16D170| db $85 ; Copy past
|16D171| dw $0390
|16D173| db $05 ; Raw block
|16D174| db $C4, $40, $CE, $40, $FE, $60
|16D17A| db $87 ; Copy past
|16D17B| dw $039C
|16D17D| db $03 ; Raw block
|16D17E| db $BB, $91, $C6, $70
|16D182| db $23 ; Repeat byte
|16D183| db $00
|16D184| db $12 ; Raw block
|16D185| db $10, $40, $10, $04, $00, $28, $10, $39
|16D18D| db $18, $BC, $00, $18, $00, $00, $40, $04
|16D195| db $28, $19, $98
|16D198| db $F0, $48 ; EXT Copy past
|16D19A| dw $029F
|16D19C| db $43 ; Repeat word
|16D19D| dw $080B
|16D19F| db $06 ; Raw block
|16D1A0| db $05, $00, $03, $02, $01, $00, $04
|16D1A7| db $24 ; Repeat byte
|16D1A8| db $00
|16D1A9| db $02 ; Raw block
|16D1AA| db $04, $04, $02
|16D1AD| db $24 ; Repeat byte
|16D1AE| db $00
|16D1AF| db $0A ; Raw block
|16D1B0| db $D0, $00, $B0, $10, $60, $20, $C0, $C0
|16D1B8| db $00, $00, $04
|16D1BB| db $24 ; Repeat byte
|16D1BC| db $00
|16D1BD| db $02 ; Raw block
|16D1BE| db $20, $40, $80
|16D1C1| db $34 ; Repeat byte
|16D1C2| db $00
|16D1C3| db $27 ; Repeat byte
|16D1C4| db $01
|16D1C5| db $E4, $27 ; EXT Repeat byte
|16D1C7| db $00
|16D1C8| db $00 ; Raw block
|16D1C9| db $FF
|16D1CA| db $36 ; Repeat byte
|16D1CB| db $00
|16D1CC| db $00 ; Raw block
|16D1CD| db $FF
|16D1CE| db $26 ; Repeat byte
|16D1CF| db $00
|16D1D0| db $0C ; Raw block
|16D1D1| db $6F, $23, $7F, $38, $3B, $04, $16, $09
|16D1D9| db $18, $07, $0F, $00, $01
|16D1DE| db $22 ; Repeat byte
|16D1DF| db $00
|16D1E0| db $11 ; Raw block
|16D1E1| db $5C, $47, $3E, $19, $1F, $0F, $01, $00
|16D1E9| db $F9, $86, $A5, $42, $27, $C4, $5F, $AD
|16D1F1| db $EF, $13
|16D1F3| db $85 ; Copy past
|16D1F4| dw $024A
|16D1F6| db $03 ; Raw block
|16D1F7| db $7F, $FF, $FB, $F3
|16D1FB| db $22 ; Repeat byte
|16D1FC| db $FF
|16D1FD| db $8D ; Copy past
|16D1FE| dw $0257
|16D200| db $22 ; Repeat byte
|16D201| db $00
|16D202| db $86 ; Copy past
|16D203| dw $0268
|16D205| db $24 ; Repeat byte
|16D206| db $00
|16D207| db $00 ; Raw block
|16D208| db $18
|16D209| db $44 ; Repeat word
|16D20A| dw $2400
|16D20C| db $00 ; Raw block
|16D20D| db $18
|16D20E| db $2C ; Repeat byte
|16D20F| db $00
|16D210| db $04 ; Raw block
|16D211| db $08, $00, $48, $00, $22
|16D216| db $22 ; Repeat byte
|16D217| db $00
|16D218| db $00 ; Raw block
|16D219| db $C3
|16D21A| db $22 ; Repeat byte
|16D21B| db $00
|16D21C| db $02 ; Raw block
|16D21D| db $2A, $00, $48
|16D220| db $29 ; Repeat byte
|16D221| db $00
|16D222| db $17 ; Raw block
|16D223| db $08, $44, $E8, $30, $2C, $10, $28, $24
|16D22B| db $7E, $1C, $7E, $18, $7C, $00, $38, $08
|16D233| db $68, $2C, $08, $3C, $1C, $18, $00, $10
|16D23B| db $22 ; Repeat byte
|16D23C| db $00
|16D23D| db $08 ; Raw block
|16D23E| db $04, $00, $10, $00, $18, $20, $00, $10
|16D246| db $08
|16D247| db $26 ; Repeat byte
|16D248| db $00
|16D249| db $02 ; Raw block
|16D24A| db $20, $10, $00
|16D24D| db $F0, $47 ; EXT Copy past
|16D24F| dw $029F
|16D251| db $00 ; Raw block
|16D252| db $7F
|16D253| db $FF ; End of GFX AA

;===================================================================================================

GFX_AB:
|16D254| db $0A ; Raw block
|16D255| db $03, $00, $1F, $00, $3F, $00, $7C, $00
|16D25D| db $7B, $00, $F7
|16D260| db $44 ; Repeat word
|16D261| dw $EF00
|16D263| db $1F ; Raw block
|16D264| db $03, $1F, $3F, $7F, $7F, $FC, $F9, $FA
|16D26C| db $E0, $00, $FC, $00, $FF, $00, $3F, $07
|16D274| db $D1, $01, $EE, $0E, $F7, $07, $F7, $06
|16D27C| db $E0, $FC, $FF, $F8, $FE, $31, $98, $D9
|16D284| db $23 ; Repeat byte
|16D285| db $00
|16D286| db $18 ; Raw block
|16D287| db $80, $00, $E0, $80, $F8, $E0, $7C, $00
|16D28F| db $FE, $60, $FF, $10, $00, $00, $80, $60
|16D297| db $18, $FC, $9E, $E1, $00, $00, $50, $00
|16D29F| db $28
|16D2A0| db $83 ; Copy past
|16D2A1| dw $0049
|16D2A3| db $44 ; Repeat word
|16D2A4| dw $0400
|16D2A6| db $00 ; Raw block
|16D2A7| db $03
|16D2A8| db $27 ; Repeat byte
|16D2A9| db $00
|16D2AA| db $00 ; Raw block
|16D2AB| db $01
|16D2AC| db $27 ; Repeat byte
|16D2AD| db $00
|16D2AE| db $01 ; Raw block
|16D2AF| db $08, $08
|16D2B1| db $26 ; Repeat byte
|16D2B2| db $00
|16D2B3| db $00 ; Raw block
|16D2B4| db $01
|16D2B5| db $23 ; Repeat byte
|16D2B6| db $00
|16D2B7| db $00 ; Raw block
|16D2B8| db $02
|16D2B9| db $2E ; Repeat byte
|16D2BA| db $00
|16D2BB| db $00 ; Raw block
|16D2BC| db $01
|16D2BD| db $23 ; Repeat byte
|16D2BE| db $00
|16D2BF| db $00 ; Raw block
|16D2C0| db $02
|16D2C1| db $22 ; Repeat byte
|16D2C2| db $00
|16D2C3| db $00 ; Raw block
|16D2C4| db $01
|16D2C5| db $23 ; Repeat byte
|16D2C6| db $00
|16D2C7| db $00 ; Raw block
|16D2C8| db $07
|16D2C9| db $84 ; Copy past
|16D2CA| dw $0001
|16D2CC| db $11 ; Raw block
|16D2CD| db $7F, $00, $DF, $01, $9F, $11, $00, $00
|16D2D5| db $07, $1F, $3F, $5F, $BE, $6E, $08, $00
|16D2DD| db $14, $00
|16D2DF| db $83 ; Copy past
|16D2E0| dw $00A8
|16D2E2| db $07 ; Raw block
|16D2E3| db $0C, $00, $04, $00, $84, $00, $C3, $80
|16D2EB| db $25 ; Repeat byte
|16D2EC| db $00
|16D2ED| db $02 ; Raw block
|16D2EE| db $80, $41, $01
|16D2F1| db $46 ; Repeat word
|16D2F2| dw $0300
|16D2F4| db $02 ; Raw block
|16D2F5| db $43, $40, $07
|16D2F8| db $44 ; Repeat word
|16D2F9| dw $0600
|16D2FB| db $00 ; Raw block
|16D2FC| db $01
|16D2FD| db $23 ; Repeat byte
|16D2FE| db $03
|16D2FF| db $22 ; Repeat byte
|16D300| db $05
|16D301| db $06 ; Raw block
|16D302| db $82, $00, $C5, $00, $C2, $00, $E5
|16D309| db $46 ; Repeat word
|16D30A| dw $E200
|16D30C| db $04 ; Raw block
|16D30D| db $E3, $80, $80, $C0, $C0
|16D312| db $23 ; Repeat byte
|16D313| db $E0
|16D314| db $00 ; Raw block
|16D315| db $61
|16D316| db $23 ; Repeat byte
|16D317| db $00
|16D318| db $07 ; Raw block
|16D319| db $10, $18, $20, $24, $04, $24, $08, $18
|16D321| db $25 ; Repeat byte
|16D322| db $00
|16D323| db $1D ; Raw block
|16D324| db $18, $24, $24, $18, $00, $00, $3F, $E9
|16D32C| db $FF, $83, $BF, $80, $9F, $83, $6C, $C4
|16D334| db $55, $C3, $5F, $C0, $4F, $C0, $3B, $EF
|16D33C| db $E3, $F4, $5B, $6D, $63, $70
|16D342| db $27 ; Repeat byte
|16D343| db $00
|16D344| db $01 ; Raw block
|16D345| db $02, $02
|16D347| db $29 ; Repeat byte
|16D348| db $00
|16D349| db $00 ; Raw block
|16D34A| db $10
|16D34B| db $2E ; Repeat byte
|16D34C| db $00
|16D34D| db $06 ; Raw block
|16D34E| db $08, $08, $40, $40, $00, $00, $20
|16D355| db $24 ; Repeat byte
|16D356| db $00
|16D357| db $17 ; Raw block
|16D358| db $FE, $7F, $FD, $BF, $FB, $DF, $F7, $EF
|16D360| db $EF, $F7, $DF, $FB, $BF, $FD, $7F, $FE
|16D368| db $FE, $FD, $FB, $F7, $EF, $DF, $BF, $7F
|16D370| db $97 ; Copy past
|16D371| dw $0150
|16D373| db $43 ; Repeat word
|16D374| dw $00EF
|16D376| db $0E ; Raw block
|16D377| db $F7, $00, $7B, $00, $78, $0C, $7C, $0F
|16D37F| db $6C, $1E, $29, $1C, $FB, $F9, $FC
|16D386| db $22 ; Repeat byte
|16D387| db $7F
|16D388| db $E0, $49 ; EXT Raw block
|16D38A| db $6F, $2F, $F7, $04, $F3, $00, $EF, $0B
|16D392| db $DF, $18, $3F, $3C, $3F, $3E, $DF, $1F
|16D39A| db $EF, $0F, $DB, $9F, $34, $E7, $C3, $C1
|16D3A2| db $E0, $30, $F7, $07, $FB, $3B, $FD, $7D
|16D3AA| db $9E, $1E, $EF, $22, $F3, $0C, $FF, $00
|16D3B2| db $FF, $10, $C8, $84, $02, $61, $9D, $DF
|16D3BA| db $EC, $CF, $8F, $01, $DF, $8D, $FD, $93
|16D3C2| db $BA, $49, $75, $C0, $EB, $92, $F7, $08
|16D3CA| db $FB, $15, $8D, $5D, $7D, $B6, $7B, $ED
|16D3D2| db $B7, $3B
|16D3D4| db $2B ; Repeat byte
|16D3D5| db $00
|16D3D6| db $01 ; Raw block
|16D3D7| db $02, $02
|16D3D9| db $25 ; Repeat byte
|16D3DA| db $00
|16D3DB| db $00 ; Raw block
|16D3DC| db $20
|16D3DD| db $22 ; Repeat byte
|16D3DE| db $00
|16D3DF| db $43 ; Repeat word
|16D3E0| dw $0003
|16D3E2| db $04 ; Raw block
|16D3E3| db $86, $80, $06, $00, $0D
|16D3E8| db $44 ; Repeat word
|16D3E9| dw $0C00
|16D3EB| db $12 ; Raw block
|16D3EC| db $1A, $00, $02, $02, $05, $05, $0A, $0B
|16D3F4| db $0B, $15, $1E, $10, $1F, $11, $1F, $19
|16D3FC| db $DF, $19, $3F
|16D3FF| db $46 ; Repeat word
|16D400| dw $1F18
|16D402| db $0B ; Raw block
|16D403| db $EF, $EE, $E6, $26, $C7, $E7, $E6, $E7
|16D40B| db $FF, $C1, $3F, $0D
|16D40F| db $8B ; Copy past
|16D410| dw $01CC
|16D412| db $01 ; Raw block
|16D413| db $3D, $FD
|16D415| db $85 ; Copy past
|16D416| dw $01DA
|16D418| db $45 ; Repeat word
|16D419| dw $0006
|16D41B| db $02 ; Raw block
|16D41C| db $07, $00, $06
|16D41F| db $46 ; Repeat word
|16D420| dw $0300
|16D422| db $22 ; Repeat byte
|16D423| db $05
|16D424| db $01 ; Raw block
|16D425| db $04, $05
|16D427| db $22 ; Repeat byte
|16D428| db $02
|16D429| db $E0, $2F ; EXT Raw block
|16D42B| db $EF, $81, $FF, $CD, $FD, $53, $7A, $49
|16D433| db $75, $40, $6B, $52, $77, $48, $7B, $45
|16D43B| db $6D, $3D, $3D, $B6, $BB, $AD, $B7, $BB
|16D443| db $10, $18, $18, $7E, $00, $66, $C2, $C3
|16D44B| db $43, $C3, $00, $66, $18, $7E, $08, $18
|16D453| db $18, $1E, $06, $C3, $C3, $60, $78, $18
|16D45B| db $97 ; Copy past
|16D45C| dw $0150
|16D45E| db $01 ; Raw block
|16D45F| db $04, $04
|16D461| db $23 ; Repeat byte
|16D462| db $00
|16D463| db $01 ; Raw block
|16D464| db $04, $04
|16D466| db $35 ; Repeat byte
|16D467| db $00
|16D468| db $01 ; Raw block
|16D469| db $40, $40
|16D46B| db $27 ; Repeat byte
|16D46C| db $00
|16D46D| db $00 ; Raw block
|16D46E| db $80
|16D46F| db $26 ; Repeat byte
|16D470| db $00
|16D471| db $F0, $2F ; EXT Copy past
|16D473| dw $0150
|16D475| db $43 ; Repeat word
|16D476| dw $1823
|16D478| db $03 ; Raw block
|16D479| db $29, $1C, $14, $0E
|16D47D| db $43 ; Repeat word
|16D47E| dw $0F16
|16D480| db $43 ; Repeat word
|16D481| dw $0608
|16D483| db $02 ; Raw block
|16D484| db $2E, $2E, $2F
|16D487| db $22 ; Repeat byte
|16D488| db $17
|16D489| db $0D ; Raw block
|16D48A| db $0B, $0B, $F1, $00, $F7, $07, $EF, $0E
|16D492| db $CF, $0F, $37, $07, $7A, $02
|16D498| db $43 ; Repeat word
|16D499| dw $01FD
|16D49B| db $E0, $37 ; EXT Raw block
|16D49D| db $DF, $D8, $31, $F0, $F8, $CD, $B6, $B6
|16D4A5| db $F3, $2C, $FF, $B0, $FB, $18, $F7, $06
|16D4AD| db $FF, $E6, $7E, $41, $FB, $C2, $F7, $84
|16D4B5| db $9F, $0C, $C7, $E9, $11, $BB, $35, $6B
|16D4BD| db $DE, $39, $E7, $1C, $FA, $1D, $FF, $0D
|16D4C5| db $F2, $0D, $7F, $80, $F1, $0E, $D6, $4F
|16D4CD| db $FF, $BE, $3F, $DF, $92, $FF, $F1, $B6
|16D4D5| db $32 ; Repeat byte
|16D4D6| db $00
|16D4D7| db $00 ; Raw block
|16D4D8| db $08
|16D4D9| db $23 ; Repeat byte
|16D4DA| db $00
|16D4DB| db $43 ; Repeat word
|16D4DC| dw $0019
|16D4DE| db $13 ; Raw block
|16D4DF| db $18, $00, $B0, $80, $30, $00, $38, $00
|16D4E7| db $34, $00, $33, $00, $16, $16, $17, $2F
|16D4EF| db $2F, $27, $2B, $2C
|16D4F3| db $43 ; Repeat word
|16D4F4| dw $353E
|16D4F6| db $13 ; Raw block
|16D4F7| db $BF, $30, $7F, $60, $7F, $68, $7F, $60
|16D4FF| db $FF, $D8, $FE, $D0, $CA, $CA, $4B, $9D
|16D507| db $96, $9F, $26, $2D
|16D50B| db $89 ; Copy past
|16D50C| dw $0348
|16D50E| db $05 ; Raw block
|16D50F| db $BF, $00, $71, $6E, $F6, $0F
|16D515| db $83 ; Copy past
|16D516| dw $0358
|16D518| db $05 ; Raw block
|16D519| db $D2, $7F, $91, $F6, $0B, $08
|16D51F| db $43 ; Repeat word
|16D520| dw $0003
|16D522| db $49 ; Repeat word
|16D523| dw $0001
|16D525| db $22 ; Repeat byte
|16D526| db $02
|16D527| db $24 ; Repeat byte
|16D528| db $01
|16D529| db $17 ; Raw block
|16D52A| db $FE, $59, $67, $5C, $7A, $6D, $BF, $2D
|16D532| db $B2, $2D, $FF, $20, $B1, $2E, $B6, $2F
|16D53A| db $3F, $BE, $9F, $5F, $52, $1F, $51, $56
|16D542| db $23 ; Repeat byte
|16D543| db $00
|16D544| db $08 ; Raw block
|16D545| db $03, $03, $01, $0F, $00, $1C, $00, $18
|16D54D| db $20
|16D54E| db $22 ; Repeat byte
|16D54F| db $30
|16D550| db $07 ; Raw block
|16D551| db $00, $00, $03, $01, $00, $00, $20, $30
|16D559| db $23 ; Repeat byte
|16D55A| db $00
|16D55B| db $08 ; Raw block
|16D55C| db $80, $C0, $C0, $F0, $00, $38, $00, $18
|16D564| db $08
|16D565| db $22 ; Repeat byte
|16D566| db $0C
|16D567| db $07 ; Raw block
|16D568| db $00, $00, $C0, $F0, $38, $18, $0C, $0C
|16D570| db $2B ; Repeat byte
|16D571| db $00
|16D572| db $01 ; Raw block
|16D573| db $10, $10
|16D575| db $23 ; Repeat byte
|16D576| db $00
|16D577| db $00 ; Raw block
|16D578| db $10
|16D579| db $22 ; Repeat byte
|16D57A| db $00
|16D57B| db $00 ; Raw block
|16D57C| db $02
|16D57D| db $2E ; Repeat byte
|16D57E| db $00
|16D57F| db $83 ; Copy past
|16D580| dw $02A0
|16D582| db $00 ; Raw block
|16D583| db $48
|16D584| db $22 ; Repeat byte
|16D585| db $00
|16D586| db $00 ; Raw block
|16D587| db $20
|16D588| db $F0, $30 ; EXT Copy past
|16D58A| dw $014F
|16D58C| db $06 ; Raw block
|16D58D| db $04, $03, $05, $03, $02, $01, $01
|16D594| db $28 ; Repeat byte
|16D595| db $00
|16D596| db $04 ; Raw block
|16D597| db $05, $05, $02, $01, $20
|16D59C| db $22 ; Repeat byte
|16D59D| db $00
|16D59E| db $0C ; Raw block
|16D59F| db $7B, $03, $37, $87, $87, $CE, $0B, $FE
|16D5A7| db $CD, $3E, $31, $0E, $0E
|16D5AC| db $22 ; Repeat byte
|16D5AD| db $00
|16D5AE| db $10 ; Raw block
|16D5AF| db $CC, $F8, $F9, $3D, $CF, $31, $0E, $00
|16D5B7| db $FF, $03, $FC, $3C, $A3, $03, $1F, $0F
|16D5BF| db $0F
|16D5C0| db $26 ; Repeat byte
|16D5C1| db $00
|16D5C2| db $04 ; Raw block
|16D5C3| db $FC, $C3, $BC, $10, $2F
|16D5C8| db $22 ; Repeat byte
|16D5C9| db $00
|16D5CA| db $13 ; Raw block
|16D5CB| db $BD, $A7, $73, $6E, $6E, $03, $89, $06
|16D5D3| db $05, $03, $85, $83, $82, $81, $01, $00
|16D5DB| db $5F, $92, $EF, $88
|16D5DF| db $83 ; Copy past
|16D5E0| dw $0490
|16D5E2| db $27 ; Repeat byte
|16D5E3| db $00
|16D5E4| db $01 ; Raw block
|16D5E5| db $08, $08
|16D5E7| db $2D ; Repeat byte
|16D5E8| db $00
|16D5E9| db $0C ; Raw block
|16D5EA| db $31, $01, $33, $03, $37, $06, $3F, $0C
|16D5F2| db $3C, $08, $1C, $00, $08
|16D5F7| db $22 ; Repeat byte
|16D5F8| db $00
|16D5F9| db $10 ; Raw block
|16D5FA| db $2E, $2C, $29, $23, $24, $14, $08, $00
|16D602| db $FF, $A0, $FF, $47, $CC, $04, $07, $03
|16D60A| db $03
|16D60B| db $26 ; Repeat byte
|16D60C| db $00
|16D60D| db $04 ; Raw block
|16D60E| db $5F, $B8, $CB, $04, $03
|16D613| db $22 ; Repeat byte
|16D614| db $00
|16D615| db $0A ; Raw block
|16D616| db $DD, $C7, $35, $2E, $BE, $B3, $DB, $C6
|16D61E| db $E5, $C3, $C5
|16D621| db $84 ; Copy past
|16D622| dw $0483
|16D624| db $07 ; Raw block
|16D625| db $3F, $D6, $4F, $3A, $25, $C5, $02, $01
|16D62D| db $25 ; Repeat byte
|16D62E| db $00
|16D62F| db $01 ; Raw block
|16D630| db $10, $10
|16D632| db $2F ; Repeat byte
|16D633| db $00
|16D634| db $07 ; Raw block
|16D635| db $FD, $37, $DD, $16, $DE, $13, $7B, $16
|16D63D| db $43 ; Repeat word
|16D63E| dw $137D
|16D640| db $17 ; Raw block
|16D641| db $32, $01, $01, $00, $8F, $AE, $AF, $4A
|16D649| db $4D, $4D, $32, $01, $30, $30, $10, $30
|16D651| db $00, $18, $00, $1C, $03, $0F, $01, $03
|16D659| db $23 ; Repeat byte
|16D65A| db $00
|16D65B| db $13 ; Raw block
|16D65C| db $30, $30, $18, $1C, $0F, $03, $00, $00
|16D664| db $0C, $0C, $04, $0C, $00, $18, $00, $38
|16D66C| db $80, $F0, $C0, $C0
|16D670| db $23 ; Repeat byte
|16D671| db $00
|16D672| db $01 ; Raw block
|16D673| db $0C, $04
|16D675| db $83 ; Copy past
|16D676| dw $040A
|16D678| db $27 ; Repeat byte
|16D679| db $00
|16D67A| db $01 ; Raw block
|16D67B| db $01, $01
|16D67D| db $2A ; Repeat byte
|16D67E| db $00
|16D67F| db $00 ; Raw block
|16D680| db $08
|16D681| db $2D ; Repeat byte
|16D682| db $00
|16D683| db $01 ; Raw block
|16D684| db $04, $04
|16D686| db $25 ; Repeat byte
|16D687| db $00
|16D688| db $00 ; Raw block
|16D689| db $10
|16D68A| db $24 ; Repeat byte
|16D68B| db $00
|16D68C| db $F0, $2E ; EXT Copy past
|16D68E| dw $0150
|16D690| db $00 ; Raw block
|16D691| db $7F
|16D692| db $FF ; End of GFX AB

;===================================================================================================

GFX_AC:
|16D693| db $27 ; Repeat byte
|16D694| db $00
|16D695| db $07 ; Raw block
|16D696| db $01, $00, $02, $01, $04, $03, $05, $03
|16D69E| db $23 ; Repeat byte
|16D69F| db $00
|16D6A0| db $03 ; Raw block
|16D6A1| db $01, $02, $04, $05
|16D6A5| db $23 ; Repeat byte
|16D6A6| db $00
|16D6A7| db $13 ; Raw block
|16D6A8| db $0F, $00, $70, $0F, $87, $7F, $3C, $FF
|16D6B0| db $F0, $FF, $E3, $FC, $00, $00, $0F, $70
|16D6B8| db $87, $3F, $FF, $FC
|16D6BC| db $25 ; Repeat byte
|16D6BD| db $00
|16D6BE| db $85 ; Copy past
|16D6BF| dw $0008
|16D6C1| db $03 ; Raw block
|16D6C2| db $09, $07, $0B, $07
|16D6C6| db $22 ; Repeat byte
|16D6C7| db $00
|16D6C8| db $04 ; Raw block
|16D6C9| db $01, $02, $04, $09, $0B
|16D6CE| db $87 ; Copy past
|16D6CF| dw $001A
|16D6D1| db $07 ; Raw block
|16D6D2| db $3F, $FF, $F8, $FF, $E0, $FF, $C3, $FC
|16D6DA| db $85 ; Copy past
|16D6DB| dw $0029
|16D6DD| db $01 ; Raw block
|16D6DE| db $FF, $FC
|16D6E0| db $23 ; Repeat byte
|16D6E1| db $00
|16D6E2| db $87 ; Copy past
|16D6E3| dw $0036
|16D6E5| db $04 ; Raw block
|16D6E6| db $13, $0F, $17, $0F, $00
|16D6EB| db $62 ; Increment fill
|16D6EC| db $00
|16D6ED| db $03 ; Raw block
|16D6EE| db $04, $09, $13, $17
|16D6F2| db $8D ; Copy past
|16D6F3| dw $004A
|16D6F5| db $01 ; Raw block
|16D6F6| db $87, $F8
|16D6F8| db $86 ; Copy past
|16D6F9| dw $0059
|16D6FB| db $E0, $32 ; EXT Raw block
|16D6FD| db $F8, $03, $00, $0F, $03, $1C, $0C, $1F
|16D705| db $0E, $3B, $0B, $73, $31, $E3, $60, $E9
|16D70D| db $60, $03, $0C, $13, $10, $34, $4C, $9C
|16D715| db $9E, $80, $00, $F8, $80, $7C, $58, $E6
|16D71D| db $24, $F6, $04, $F3, $02, $FF, $0E, $F7
|16D725| db $04, $80, $78, $A4, $1A, $0A, $0D, $01
|16D72D| db $8B, $00, $00
|16D730| db $85 ; Copy past
|16D731| dw $0090
|16D733| db $E0, $2A ; EXT Raw block
|16D735| db $33, $10, $33, $02, $77, $32, $6B, $20
|16D73D| db $00, $03, $0C, $13, $2C, $3C, $48, $5C
|16D745| db $00, $00, $C0, $00, $F0, $C0, $18, $10
|16D74D| db $EC, $08, $F4, $00, $F6, $04, $FE, $1C
|16D755| db $00, $C0, $30, $E8, $14, $0C, $0A, $82
|16D75D| db $01, $00, $03
|16D760| db $44 ; Repeat word
|16D761| dw $0700
|16D763| db $E0, $27 ; EXT Raw block
|16D765| db $0F, $00, $09, $06, $15, $0A, $1A, $05
|16D76D| db $01, $02, $05, $06, $09, $0F, $1F, $16
|16D775| db $C1, $00, $FF, $00, $E7, $18, $FF, $00
|16D77D| db $24, $DB, $00, $FF, $42, $BD, $FF, $42
|16D785| db $C1, $7E, $A5, $DB, $24, $00, $42, $BD
|16D78D| db $83 ; Copy past
|16D78E| dw $0006
|16D790| db $16 ; Raw block
|16D791| db $1B, $00, $3F, $00, $5E, $20, $5F, $20
|16D799| db $4F, $30, $4D, $32, $00, $01, $1A, $25
|16D7A1| db $62, $61, $71, $73, $00, $00, $81
|16D7A8| db $8C ; Copy past
|16D7A9| dw $0109
|16D7AB| db $01 ; Raw block
|16D7AC| db $00, $81
|16D7AE| db $85 ; Copy past
|16D7AF| dw $0119
|16D7B1| db $23 ; Repeat byte
|16D7B2| db $00
|16D7B3| db $85 ; Copy past
|16D7B4| dw $00F0
|16D7B6| db $04 ; Raw block
|16D7B7| db $02, $00, $01, $00, $07
|16D7BC| db $22 ; Repeat byte
|16D7BD| db $00
|16D7BE| db $05 ; Raw block
|16D7BF| db $01, $02, $05, $02, $01, $07
|16D7C5| db $23 ; Repeat byte
|16D7C6| db $00
|16D7C7| db $8B ; Copy past
|16D7C8| dw $013A
|16D7CA| db $00 ; Raw block
|16D7CB| db $00
|16D7CC| db $86 ; Copy past
|16D7CD| dw $0148
|16D7CF| db $83 ; Copy past
|16D7D0| dw $003C
|16D7D2| db $00 ; Raw block
|16D7D3| db $13
|16D7D4| db $46 ; Repeat word
|16D7D5| dw $170F
|16D7D7| db $43 ; Repeat word
|16D7D8| dw $1F27
|16D7DA| db $02 ; Raw block
|16D7DB| db $09, $0B, $13
|16D7DE| db $22 ; Repeat byte
|16D7DF| db $17
|16D7E0| db $03 ; Raw block
|16D7E1| db $27, $27, $C4, $FB
|16D7E5| db $43 ; Repeat word
|16D7E6| dw $FFC0
|16D7E8| db $00 ; Raw block
|16D7E9| db $E7
|16D7EA| db $24 ; Repeat byte
|16D7EB| db $FF
|16D7EC| db $04 ; Raw block
|16D7ED| db $F7, $F8, $D8, $E7, $FB
|16D7F2| db $25 ; Repeat byte
|16D7F3| db $FF
|16D7F4| db $00 ; Raw block
|16D7F5| db $D8
|16D7F6| db $83 ; Copy past
|16D7F7| dw $006C
|16D7F9| db $00 ; Raw block
|16D7FA| db $27
|16D7FB| db $46 ; Repeat word
|16D7FC| dw $2F1F
|16D7FE| db $43 ; Repeat word
|16D7FF| dw $3F4F
|16D801| db $02 ; Raw block
|16D802| db $13, $17, $27
|16D805| db $22 ; Repeat byte
|16D806| db $2F
|16D807| db $05 ; Raw block
|16D808| db $4F, $4F, $87, $F8, $84, $FB
|16D80E| db $43 ; Repeat word
|16D80F| dw $FF80
|16D811| db $00 ; Raw block
|16D812| db $C7
|16D813| db $22 ; Repeat byte
|16D814| db $FF
|16D815| db $05 ; Raw block
|16D816| db $E7, $F8, $18, $E7, $F8, $FB
|16D81C| db $24 ; Repeat byte
|16D81D| db $FF
|16D81E| db $00 ; Raw block
|16D81F| db $98
|16D820| db $43 ; Repeat word
|16D821| dw $1F2F
|16D823| db $47 ; Repeat word
|16D824| dw $3F5F
|16D826| db $05 ; Raw block
|16D827| db $9E, $7F, $B8, $7F, $2F, $2F
|16D82D| db $23 ; Repeat byte
|16D82E| db $5F
|16D82F| db $03 ; Raw block
|16D830| db $9F, $BC, $04, $FB
|16D834| db $45 ; Repeat word
|16D835| dw $FF00
|16D837| db $08 ; Raw block
|16D838| db $83, $FF, $CF, $FF, $87, $F8, $18, $E7
|16D840| db $FB
|16D841| db $24 ; Repeat byte
|16D842| db $FF
|16D843| db $E0, $39 ; EXT Raw block
|16D845| db $9F, $18, $E5, $60, $74, $30, $77, $32
|16D84D| db $3B, $09, $3C, $1C, $1F, $0F, $0F, $03
|16D855| db $03, $00, $9F, $4B, $48, $34, $23, $10
|16D85D| db $0C, $03, $67, $06, $0F, $0E, $EF, $0E
|16D865| db $9E, $9C, $7C, $70, $F8, $F0, $F0, $C0
|16D86D| db $C0, $00, $99, $F1, $11, $62, $8C, $08
|16D875| db $30, $C0, $65, $20, $77, $30, $3B, $0B
|16D87D| db $3D, $1D
|16D87F| db $84 ; Copy past
|16D880| dw $021A
|16D882| db $22 ; Repeat byte
|16D883| db $00
|16D884| db $0F ; Raw block
|16D885| db $5F, $48, $34, $22, $10, $0C, $03, $00
|16D88D| db $6E, $0C, $8E, $0C, $9C, $18, $7C, $78
|16D895| db $84 ; Copy past
|16D896| dw $0232
|16D898| db $22 ; Repeat byte
|16D899| db $00
|16D89A| db $E0, $31 ; EXT Raw block
|16D89C| db $92, $72, $64, $84, $08, $30, $C0, $00
|16D8A4| db $0A, $05, $0D, $02, $0A, $04, $0C, $00
|16D8AC| db $0D, $01, $2B, $02, $56, $04, $2C, $08
|16D8B4| db $0E, $0D, $0B, $0F, $0E, $2D, $7A, $34
|16D8BC| db $BD, $18, $C3, $81, $E7, $00, $BD, $66
|16D8C4| db $C3, $7E, $7E, $18, $DB, $24, $A5, $5A
|16D8CC| db $E7, $7E
|16D8CE| db $22 ; Repeat byte
|16D8CF| db $FF
|16D8D0| db $E0, $22 ; EXT Raw block
|16D8D2| db $7E, $DB, $E7, $22, $1D, $32, $0D, $7C
|16D8DA| db $03, $79, $06, $4A, $34, $34, $08, $15
|16D8E2| db $09, $0B, $02, $3E, $3E, $5C, $49, $7B
|16D8EA| db $37, $16, $0D, $FF, $42, $BD, $18, $42
|16D8F2| db $81, $E7, $42
|16D8F5| db $83 ; Copy past
|16D8F6| dw $028E
|16D8F8| db $06 ; Raw block
|16D8F9| db $FF, $18, $DB, $25, $BD, $E7, $7E
|16D900| db $23 ; Repeat byte
|16D901| db $FF
|16D902| db $18 ; Raw block
|16D903| db $DB, $3D, $02, $7A, $05, $F2, $0D, $84
|16D90B| db $7B, $69, $16, $3A, $04, $74, $08, $F5
|16D913| db $09, $3B, $46, $8E, $FC, $79, $3B, $57
|16D91B| db $96
|16D91C| db $83 ; Copy past
|16D91D| dw $0114
|16D91F| db $8B ; Copy past
|16D920| dw $02BA
|16D922| db $03 ; Raw block
|16D923| db $42, $BD, $E7, $7E
|16D927| db $23 ; Repeat byte
|16D928| db $FF
|16D929| db $07 ; Raw block
|16D92A| db $26, $1F, $24, $1F, $11, $0F, $33, $0F
|16D932| db $43 ; Repeat word
|16D933| dw $2F73
|16D935| db $E0, $3B ; EXT Raw block
|16D937| db $49, $37, $34, $0B, $26, $24, $11, $33
|16D93F| db $73, $73, $49, $34, $27, $DF, $5C, $BF
|16D947| db $D0, $BF, $A2, $7D, $8B, $74, $D7, $2B
|16D94F| db $DE, $26, $4D, $B4, $27, $5F, $DF, $BD
|16D957| db $B7, $EC, $E9, $7B, $48, $3F, $42, $3F
|16D95F| db $27, $1F, $67, $1F, $E7, $5F, $E3, $5F
|16D967| db $91, $6F, $78, $17, $4C, $4A, $27, $67
|16D96F| db $E7, $E3, $91, $78
|16D973| db $97 ; Copy past
|16D974| dw $0318
|16D976| db $04 ; Raw block
|16D977| db $B0, $7F, $A0, $7F, $43
|16D97C| db $44 ; Repeat word
|16D97D| dw $C73F
|16D97F| db $10 ; Raw block
|16D980| db $A7, $5F, $E3, $5F, $B1, $6F, $B8, $A0
|16D988| db $43, $C7, $C7, $E7, $E3, $B1, $27, $DF
|16D990| db $DC
|16D991| db $8A ; Copy past
|16D992| dw $031B
|16D994| db $03 ; Raw block
|16D995| db $CD, $B4, $27, $DF
|16D999| db $84 ; Copy past
|16D99A| dw $032A
|16D99C| db $00 ; Raw block
|16D99D| db $FB
|16D99E| db $23 ; Repeat byte
|16D99F| db $00
|16D9A0| db $13 ; Raw block
|16D9A1| db $07, $00, $0F, $07, $1C, $0C, $3D, $1C
|16D9A9| db $3B, $1A, $7D, $34, $00, $00, $07, $08
|16D9B1| db $13, $22, $24, $4A
|16D9B5| db $23 ; Repeat byte
|16D9B6| db $00
|16D9B7| db $0A ; Raw block
|16D9B8| db $C0, $00, $F8, $C0, $38, $30, $DC, $18
|16D9C0| db $EC, $08, $EC
|16D9C3| db $22 ; Repeat byte
|16D9C4| db $00
|16D9C5| db $05 ; Raw block
|16D9C6| db $C0, $38, $C8, $24, $14, $9C
|16D9CC| db $43 ; Repeat word
|16D9CD| dw $367F
|16D9CF| db $07 ; Raw block
|16D9D0| db $3F, $12, $3D, $10, $2E, $00, $6E, $04
|16D9D8| db $43 ; Repeat word
|16D9D9| dw $0056
|16D9DB| db $07 ; Raw block
|16D9DC| db $49, $49, $2D, $2F, $3F, $7B, $7F, $7F
|16D9E4| db $43 ; Repeat word
|16D9E5| dw $22F7
|16D9E7| db $06 ; Raw block
|16D9E8| db $FF, $22, $DF, $02, $D5, $00, $95
|16D9EF| db $44 ; Repeat word
|16D9F0| dw $AA00
|16D9F2| db $08 ; Raw block
|16D9F3| db $D5, $D5, $DD, $FD, $FF, $FF, $FE, $FE
|16D9FB| db $18
|16D9FC| db $2E ; Repeat byte
|16D9FD| db $00
|16D9FE| db $00 ; Raw block
|16D9FF| db $18
|16DA00| db $26 ; Repeat byte
|16DA01| db $00
|16DA02| db $05 ; Raw block
|16DA03| db $5A, $24, $BD, $18, $99, $00
|16DA09| db $43 ; Repeat word
|16DA0A| dw $185A
|16DA0C| db $45 ; Repeat word
|16DA0D| dw $183C
|16DA0F| db $0E ; Raw block
|16DA10| db $7E, $FF, $FF, $66, $66, $24, $24, $3C
|16DA18| db $0B, $02, $36, $04, $4C, $08, $38
|16DA1F| db $28 ; Repeat byte
|16DA20| db $00
|16DA21| db $03 ; Raw block
|16DA22| db $0D, $3A, $74, $38
|16DA26| db $23 ; Repeat byte
|16DA27| db $00
|16DA28| db $01 ; Raw block
|16DA29| db $A5, $5A
|16DA2B| db $85 ; Copy past
|16DA2C| dw $0408
|16DA2E| db $02 ; Raw block
|16DA2F| db $5B, $18, $5A
|16DA32| db $44 ; Repeat word
|16DA33| dw $3C18
|16DA35| db $83 ; Copy past
|16DA36| dw $0298
|16DA38| db $0C ; Raw block
|16DA39| db $67, $66, $24, $24, $ED, $11, $4D, $31
|16DA41| db $3B, $02, $12, $00, $0C
|16DA46| db $26 ; Repeat byte
|16DA47| db $00
|16DA48| db $04 ; Raw block
|16DA49| db $9E, $7E, $3D, $1E, $0C
|16DA4E| db $22 ; Repeat byte
|16DA4F| db $00
|16DA50| db $83 ; Copy past
|16DA51| dw $0294
|16DA53| db $85 ; Copy past
|16DA54| dw $0408
|16DA56| db $43 ; Repeat word
|16DA57| dw $185A
|16DA59| db $02 ; Raw block
|16DA5A| db $3C, $18, $DB
|16DA5D| db $83 ; Copy past
|16DA5E| dw $0298
|16DA60| db $0B ; Raw block
|16DA61| db $66, $66, $24, $1B, $0C, $14, $0F, $09
|16DA69| db $07, $09, $06, $07
|16DA6D| db $26 ; Repeat byte
|16DA6E| db $00
|16DA6F| db $04 ; Raw block
|16DA70| db $1B, $14, $0B, $09, $07
|16DA75| db $22 ; Repeat byte
|16DA76| db $00
|16DA77| db $0C ; Raw block
|16DA78| db $2D, $D4, $1E, $E2, $87, $F8, $77, $EF
|16DA80| db $14, $EF, $E8, $07, $07
|16DA85| db $22 ; Repeat byte
|16DA86| db $00
|16DA87| db $12 ; Raw block
|16DA88| db $3B, $1D, $C7, $7F, $17, $E8, $07, $00
|16DA90| db $3E, $19, $24, $1F, $14, $0F, $13, $0D
|16DA98| db $0E, $01, $01
|16DA9B| db $24 ; Repeat byte
|16DA9C| db $00
|16DA9D| db $05 ; Raw block
|16DA9E| db $3E, $2C, $15, $13, $0E, $01
|16DAA4| db $87 ; Copy past
|16DAA5| dw $0496
|16DAA7| db $04 ; Raw block
|16DAA8| db $67, $BF, $F9, $EE, $16
|16DAAD| db $84 ; Copy past
|16DAAE| dw $04A1
|16DAB0| db $14 ; Raw block
|16DAB1| db $3B, $1D, $87, $AF, $FE, $17, $E8, $07
|16DAB9| db $78, $17, $46, $39, $59, $37, $2D, $1F
|16DAC1| db $11, $0E, $0F, $00, $01
|16DAC6| db $22 ; Repeat byte
|16DAC7| db $00
|16DAC8| db $08 ; Raw block
|16DAC9| db $78, $5E, $55, $2D, $11, $0F, $01, $00
|16DAD1| db $AD
|16DAD2| db $84 ; Copy past
|16DAD3| dw $0499
|16DAD5| db $1C ; Raw block
|16DAD6| db $30, $FF, $D3, $3C, $C9, $FE, $37, $CF
|16DADE| db $CF, $00, $BB, $1D, $87, $F8, $3C, $CE
|16DAE6| db $37, $CF, $7F, $3A, $7B, $39, $3D, $1C
|16DAEE| db $1E, $0E, $1F, $0E, $0E
|16DAF3| db $24 ; Repeat byte
|16DAF4| db $00
|16DAF5| db $12 ; Raw block
|16DAF6| db $45, $44, $22, $11, $11, $0E, $00, $00
|16DAFE| db $EC, $28, $1C, $18, $F8, $70, $78, $70
|16DB06| db $F0, $E0, $E0
|16DB09| db $24 ; Repeat byte
|16DB0A| db $00
|16DB0B| db $12 ; Raw block
|16DB0C| db $14, $E4, $08, $88, $10, $E0, $00, $00
|16DB14| db $5D, $00, $7D, $00, $7F, $00, $27, $00
|16DB1C| db $03, $00, $01
|16DB1F| db $24 ; Repeat byte
|16DB20| db $00
|16DB21| db $14 ; Raw block
|16DB22| db $77, $57, $5D, $25, $03, $01, $00, $00
|16DB2A| db $5A, $00, $7A, $00, $7C, $00, $5C, $00
|16DB32| db $C8, $00, $C0, $00, $80
|16DB37| db $22 ; Repeat byte
|16DB38| db $00
|16DB39| db $06 ; Raw block
|16DB3A| db $FE, $DE, $F4, $D4, $48, $40, $80
|16DB41| db $38 ; Repeat byte
|16DB42| db $00
|16DB43| db $43 ; Repeat word
|16DB44| dw $1824
|16DB46| db $00 ; Raw block
|16DB47| db $18
|16DB48| db $2A ; Repeat byte
|16DB49| db $00
|16DB4A| db $02 ; Raw block
|16DB4B| db $3C, $3C, $18
|16DB4E| db $3C ; Repeat byte
|16DB4F| db $00
|16DB50| db $00 ; Raw block
|16DB51| db $3C
|16DB52| db $44 ; Repeat word
|16DB53| dw $2418
|16DB55| db $00 ; Raw block
|16DB56| db $18
|16DB57| db $28 ; Repeat byte
|16DB58| db $00
|16DB59| db $22 ; Repeat byte
|16DB5A| db $3C
|16DB5B| db $00 ; Raw block
|16DB5C| db $18
|16DB5D| db $3B ; Repeat byte
|16DB5E| db $00
|16DB5F| db $43 ; Repeat word
|16DB60| dw $183C
|16DB62| db $43 ; Repeat word
|16DB63| dw $1824
|16DB65| db $00 ; Raw block
|16DB66| db $18
|16DB67| db $26 ; Repeat byte
|16DB68| db $00
|16DB69| db $00 ; Raw block
|16DB6A| db $24
|16DB6B| db $22 ; Repeat byte
|16DB6C| db $3C
|16DB6D| db $00 ; Raw block
|16DB6E| db $18
|16DB6F| db $22 ; Repeat byte
|16DB70| db $00
|16DB71| db $FF ; End of GFX AC

;===================================================================================================

GFX_AD:
|16DB72| db $37 ; Repeat byte
|16DB73| db $00
|16DB74| db $44 ; Repeat word
|16DB75| dw $0001
|16DB77| db $22 ; Repeat byte
|16DB78| db $00
|16DB79| db $07 ; Raw block
|16DB7A| db $78, $00, $CF, $00, $E4, $78, $70, $3F
|16DB82| db $22 ; Repeat byte
|16DB83| db $01
|16DB84| db $0C ; Raw block
|16DB85| db $00, $78, $F7, $FB, $7F, $E0, $00, $93
|16DB8D| db $E0, $CF, $F0, $FF, $40
|16DB92| db $43 ; Repeat word
|16DB93| dw $00FF
|16DB95| db $05 ; Raw block
|16DB96| db $BE, $41, $98, $67, $E0, $F3
|16DB9C| db $23 ; Repeat byte
|16DB9D| db $FF
|16DB9E| db $E0, $35 ; EXT Raw block
|16DBA0| db $BE, $98, $7F, $00, $F8, $07, $C3, $3F
|16DBA8| db $8F, $7F, $3C, $FF, $70, $FE, $60, $FF
|16DBB0| db $C0, $FC, $7F, $F8, $C3, $8F, $3F, $7F
|16DBB8| db $7F, $FF, $08, $07, $04, $03, $03, $00
|16DBC0| db $3F, $00, $4B, $00, $80, $7C, $B8, $7F
|16DBC8| db $8D, $7F, $08, $04, $03, $3F, $74, $FF
|16DBD0| db $BF, $8F, $FE, $E1, $2D, $D3
|16DBD6| db $43 ; Repeat word
|16DBD7| dw $3FC2
|16DBD9| db $E0, $9F ; EXT Raw block
|16DBDB| db $30, $0F, $09, $C6, $04, $FB, $FC, $FB
|16DBE3| db $FE, $2D, $C2, $C2, $F0, $F9, $FC, $FC
|16DBEB| db $5F, $FF, $4C, $BF, $C1, $3F, $E1, $1F
|16DBF3| db $F7, $0F, $CF, $3B, $8E, $5F, $36, $8F
|16DBFB| db $5F, $4C, $C1, $E1, $F7, $CB, $BF, $4F
|16DC03| db $F1, $FC, $C0, $F8, $81, $D8, $03, $B0
|16DC0B| db $03, $E0, $06, $E0, $00, $C0, $01, $F8
|16DC13| db $FE, $FF, $FE, $FC, $FC, $F9, $FF, $FE
|16DC1B| db $20, $1F, $19, $06, $06, $00, $04, $00
|16DC23| db $08, $03, $11, $07, $2B, $07, $4C, $1F
|16DC2B| db $20, $19, $07, $07, $0F, $1F, $37, $7C
|16DC33| db $84, $0B, $0E, $3D, $3A, $7D, $B4, $7B
|16DC3B| db $C5, $FB, $85, $FB, $19, $E7, $70, $8F
|16DC43| db $FC, $FE, $FA, $74, $C5, $85, $19, $70
|16DC4B| db $E0, $1F, $F0, $0F, $FE, $01, $F1, $0E
|16DC53| db $6B, $9D, $93, $F5, $6F, $8B, $DF, $4B
|16DC5B| db $E0, $F0, $FE, $F1, $6B, $9B, $7F, $FF
|16DC63| db $6C, $FF, $F9, $DE, $33, $FC, $87, $78
|16DC6B| db $4F, $30, $2C, $93, $13, $EF, $CD, $FE
|16DC73| db $7C, $D9, $73, $87, $CF, $EC, $D3, $CD
|16DC7B| db $37 ; Repeat byte
|16DC7C| db $00
|16DC7D| db $1D ; Raw block
|16DC7E| db $E3, $13, $EF, $1F, $4C, $3F, $43, $3C
|16DC86| db $23, $1C, $11, $0E, $08, $07, $07, $00
|16DC8E| db $EC, $E9, $4C, $43, $23, $11, $08, $07
|16DC96| db $9B, $FF, $15, $FB, $34, $FB
|16DC9C| db $43 ; Repeat word
|16DC9D| dw $F936
|16DC9F| db $E0, $25 ; EXT Raw block
|16DCA1| db $57, $F8, $27, $D8, $07, $D8, $9B, $15
|16DCA9| db $35, $36, $36, $77, $57, $77, $AF, $CF
|16DCB1| db $3F, $DF, $97, $E7, $5F, $E7, $2B, $73
|16DCB9| db $17, $F9, $DA, $3C, $ED, $1E, $B0, $20
|16DCC1| db $98, $D0, $EC, $34, $DB, $EF
|16DCC7| db $27 ; Repeat byte
|16DCC8| db $00
|16DCC9| db $07 ; Raw block
|16DCCA| db $07, $00, $18, $01, $2E, $1F, $17, $0F
|16DCD2| db $23 ; Repeat byte
|16DCD3| db $00
|16DCD4| db $1B ; Raw block
|16DCD5| db $07, $1F, $2F, $17, $7B, $3F, $3E, $1F
|16DCDD| db $2D, $1E, $72, $0D, $EE, $12, $26, $DE
|16DCE5| db $10, $EF, $F6, $E9, $7F, $3E, $2D, $72
|16DCED| db $EF, $F7, $F1, $F6
|16DCF1| db $43 ; Repeat word
|16DCF2| dw $7F81
|16DCF4| db $E0, $22 ; EXT Raw block
|16DCF6| db $22, $FF, $36, $7F, $1C, $FB, $38, $BF
|16DCFE| db $4A, $1D, $AB, $BF, $81, $81, $63, $F7
|16DD06| db $FB, $FF, $AD, $EF, $81, $F0, $03, $C0
|16DD0E| db $01, $80, $00, $98, $04, $30, $08, $E6
|16DD16| db $70, $F6, $C0
|16DD19| db $43 ; Repeat word
|16DD1A| dw $FEFC
|16DD1C| db $0A ; Raw block
|16DD1D| db $FF, $FB, $F7, $FF, $DF, $43, $3F, $20
|16DD25| db $1F, $10, $0F
|16DD28| db $83 ; Copy past
|16DD29| dw $0144
|16DD2B| db $E0, $2A ; EXT Raw block
|16DD2D| db $38, $03, $4F, $17, $5F, $3F, $43, $20
|16DD35| db $10, $08, $07, $3F, $77, $5F, $E5, $7B
|16DD3D| db $8A, $F7, $12, $EF, $61, $9F, $86, $79
|16DD45| db $8E, $71, $6E, $91, $D8, $87, $65, $8B
|16DD4D| db $13, $61, $86, $8E, $EE, $F8, $88, $DF
|16DD55| db $49, $FF, $5B
|16DD58| db $22 ; Repeat byte
|16DD59| db $FF
|16DD5A| db $E0, $2A ; EXT Raw block
|16DD5C| db $F2, $FF, $64, $FF, $47, $BF, $43, $BF
|16DD64| db $FF, $EF, $DF, $FF, $F3, $67, $47, $43
|16DD6C| db $01, $F0, $C4, $F0, $80, $EE, $80, $7E
|16DD74| db $30, $FF, $F8, $F7, $B3, $EF, $37, $EF
|16DD7C| db $FE, $FB, $FF, $7F, $FF, $F7, $AF, $2F
|16DD84| db $41, $3E, $3E
|16DD87| db $2C ; Repeat byte
|16DD88| db $00
|16DD89| db $01 ; Raw block
|16DD8A| db $61, $3E
|16DD8C| db $25 ; Repeat byte
|16DD8D| db $00
|16DD8E| db $E0, $47 ; EXT Raw block
|16DD90| db $F1, $0E, $73, $0C, $2B, $1C, $63, $1C
|16DD98| db $FF, $00, $BF, $7F, $A0, $7F, $D4, $33
|16DDA0| db $F1, $73, $2B, $63, $FF, $BF, $BF, $DB
|16DDA8| db $C7, $69, $A0, $7F, $BC, $7F, $9D, $7F
|16DDB0| db $AB, $5F, $85, $FF, $49, $FD, $C9, $FF
|16DDB8| db $F7, $B8, $BC, $9D, $AB, $87, $CF, $CB
|16DDC0| db $AB, $FD, $57, $DB, $AE, $B6, $5D, $EC
|16DDC8| db $DD, $EC, $BE, $DE, $AF, $CF, $3F, $CF
|16DDD0| db $BB, $74, $E9, $D2, $D2, $A1, $B0, $A0
|16DDD8| db $E4, $2F ; EXT Repeat byte
|16DDDA| db $00
|16DDDB| db $0A ; Raw block
|16DDDC| db $D7, $78, $BB, $7C, $5B, $3C, $29, $1E
|16DDE4| db $16, $0F, $0B
|16DDE7| db $84 ; Copy past
|16DDE8| dw $0061
|16DDEA| db $0C ; Raw block
|16DDEB| db $F7, $BB, $5B, $2D, $16, $0B, $04, $03
|16DDF3| db $F6, $0E, $F2, $0E, $FA
|16DDF8| db $44 ; Repeat word
|16DDF9| dw $FB07
|16DDFB| db $07 ; Raw block
|16DDFC| db $36, $CF, $C8, $FE, $3B, $FC, $F7, $F3
|16DE04| db $22 ; Repeat byte
|16DE05| db $FB
|16DE06| db $02 ; Raw block
|16DE07| db $37, $CB, $3A
|16DE0A| db $37 ; Repeat byte
|16DE0B| db $00
|16DE0C| db $04 ; Raw block
|16DE0D| db $CC, $3E, $30, $0F, $1F
|16DE12| db $2A ; Repeat byte
|16DE13| db $00
|16DE14| db $02 ; Raw block
|16DE15| db $CF, $31, $0F
|16DE18| db $E4, $34 ; EXT Repeat byte
|16DE1A| db $00
|16DE1B| db $E0, $48 ; EXT Raw block
|16DE1D| db $3D, $07, $3F, $0F, $1F, $0D, $0F, $00
|16DE25| db $07, $01, $03, $01, $06, $03, $0C, $07
|16DE2D| db $3F, $3F, $1F, $0F, $07, $03, $07, $0F
|16DE35| db $E4, $FB, $F2, $BD, $F3, $9C, $79, $DE
|16DE3D| db $B9, $FE, $35, $FE, $2D, $FE, $6D, $FE
|16DE45| db $E4, $B2, $93, $D9, $F9, $B5, $2D, $6D
|16DE4D| db $08, $00, $14, $08, $23, $1C, $47, $26
|16DE55| db $5F, $2F, $CF, $2F, $FF, $1E, $FF, $07
|16DE5D| db $08, $1C, $3F, $7F, $6F, $FF, $FE, $FF
|16DE65| db $1F
|16DE66| db $43 ; Repeat word
|16DE67| dw $FF00
|16DE69| db $0D ; Raw block
|16DE6A| db $38, $FF, $FC, $FF, $FE, $FF, $FF, $E0
|16DE72| db $FF, $D8, $E7, $1F, $EF, $3F
|16DE78| db $22 ; Repeat byte
|16DE79| db $FF
|16DE7A| db $E0, $31 ; EXT Raw block
|16DE7C| db $E0, $D8, $09, $07, $04, $03, $0F, $00
|16DE84| db $19, $07, $3C, $1B, $7D, $0A, $7F, $09
|16DE8C| db $7F, $10, $0F, $07, $0F, $1F, $24, $45
|16DE94| db $46, $4C, $B3, $FC, $FB, $FC, $F5, $FE
|16DE9C| db $A5, $FE, $27, $FE, $BF, $64, $FF, $98
|16DEA4| db $FF, $A0, $B3, $FB, $FD, $BD, $FF, $FF
|16DEAC| db $67, $43
|16DEAE| db $44 ; Repeat word
|16DEAF| dw $00FF
|16DEB1| db $04 ; Raw block
|16DEB2| db $40, $FF, $47, $FF, $5F
|16DEB7| db $43 ; Repeat word
|16DEB8| dw $4FBF
|16DEBA| db $01 ; Raw block
|16DEBB| db $7E, $2F
|16DEBD| db $24 ; Repeat byte
|16DEBE| db $FF
|16DEBF| db $02 ; Raw block
|16DEC0| db $EF, $EF, $7F
|16DEC3| db $44 ; Repeat word
|16DEC4| dw $00FF
|16DEC6| db $04 ; Raw block
|16DEC7| db $02, $FF, $E2, $FF, $FA
|16DECC| db $43 ; Repeat word
|16DECD| dw $F2FD
|16DECF| db $01 ; Raw block
|16DED0| db $7E, $F4
|16DED2| db $24 ; Repeat byte
|16DED3| db $FF
|16DED4| db $E0, $32 ; EXT Raw block
|16DED6| db $F7, $F7, $FE, $00, $00, $03, $00, $0F
|16DEDE| db $00, $19, $06, $3A, $07, $26, $1B, $5C
|16DEE6| db $3C, $A3, $78, $00, $03, $0F, $19, $3A
|16DEEE| db $27, $5F, $BC, $00, $00, $C0, $00, $F0
|16DEF6| db $00, $98, $60, $5C, $E0, $64, $D8, $3A
|16DEFE| db $3C, $C5, $1E, $00, $C0, $F0, $98, $5C
|16DF06| db $E4, $FA, $3D
|16DF09| db $23 ; Repeat byte
|16DF0A| db $00
|16DF0B| db $07 ; Raw block
|16DF0C| db $1C, $00, $3C, $00, $7C, $18, $58, $30
|16DF14| db $43 ; Repeat word
|16DF15| dw $70B8
|16DF17| db $07 ; Raw block
|16DF18| db $00, $00, $1C, $24, $5C, $78, $F8, $F8
|16DF20| db $E4, $47 ; EXT Repeat byte
|16DF22| db $00
|16DF23| db $07 ; Raw block
|16DF24| db $07, $00, $08, $04, $18, $0F, $3F, $07
|16DF2C| db $45 ; Repeat word
|16DF2D| dw $013F
|16DF2F| db $04 ; Raw block
|16DF30| db $3E, $03, $07, $0F, $1F
|16DF35| db $24 ; Repeat byte
|16DF36| db $3F
|16DF37| db $E0, $47 ; EXT Raw block
|16DF39| db $C0, $00, $B8, $40, $27, $D8, $33, $CF
|16DF41| db $0F, $FF, $4F, $FF, $7B, $FF, $E1, $FF
|16DF49| db $C0, $78, $DF, $CF, $FF, $FF, $FB, $E1
|16DF51| db $0F, $00, $1F, $00, $3F, $06, $7F, $08
|16DF59| db $7F, $10, $7F, $21, $3F, $02, $06, $00
|16DF61| db $0F, $11, $21, $46, $4C, $5C, $3D, $06
|16DF69| db $CD, $F2, $DF, $20, $FF, $02, $FF, $42
|16DF71| db $FF, $82, $FE, $02, $9E, $08, $0C, $00
|16DF79| db $CD, $D3, $21, $21, $71, $F0, $92, $0C
|16DF81| db $46 ; Repeat word
|16DF82| dw $03FF
|16DF84| db $08 ; Raw block
|16DF85| db $07, $7F, $0F, $77, $0F, $27, $1B, $12
|16DF8D| db $0D
|16DF8E| db $23 ; Repeat byte
|16DF8F| db $FF
|16DF90| db $03 ; Raw block
|16DF91| db $7F, $7F, $3B, $1D
|16DF95| db $43 ; Repeat word
|16DF96| dw $43BC
|16DF98| db $1E ; Raw block
|16DF99| db $BF, $C0, $9F, $E0, $CF, $F0, $C7, $F8
|16DFA1| db $E7, $78, $E3, $FC, $3C, $3C, $BF, $9F
|16DFA9| db $CF, $C7, $E7, $E3, $FF, $21, $FF, $22
|16DFB1| db $FF, $00, $EF, $00, $4F, $00, $04
|16DFB8| db $24 ; Repeat byte
|16DFB9| db $00
|16DFBA| db $07 ; Raw block
|16DFBB| db $9C, $99, $BB, $AB, $4B, $04, $00, $00
|16DFC3| db $43 ; Repeat word
|16DFC4| dw $10FF
|16DFC6| db $02 ; Raw block
|16DFC7| db $DE, $00, $9C
|16DFCA| db $44 ; Repeat word
|16DFCB| dw $1C00
|16DFCD| db $00 ; Raw block
|16DFCE| db $08
|16DFCF| db $22 ; Repeat byte
|16DFD0| db $00
|16DFD1| db $10 ; Raw block
|16DFD2| db $E3, $E3, $D2, $94, $14, $14, $08, $00
|16DFDA| db $5D, $2E, $2E, $13, $17, $08, $08, $07
|16DFE2| db $07
|16DFE3| db $26 ; Repeat byte
|16DFE4| db $00
|16DFE5| db $04 ; Raw block
|16DFE6| db $7E, $3B, $1F, $0F, $07
|16DFEB| db $22 ; Repeat byte
|16DFEC| db $00
|16DFED| db $08 ; Raw block
|16DFEE| db $BA, $74, $74, $C8, $E8, $10, $10, $E0
|16DFF6| db $E0
|16DFF7| db $26 ; Repeat byte
|16DFF8| db $00
|16DFF9| db $04 ; Raw block
|16DFFA| db $7E, $DC, $F8, $F0, $E0
|16DFFF| db $22 ; Repeat byte
|16E000| db $00
|16E001| db $0C ; Raw block
|16E002| db $A3, $78, $5C, $3C, $26, $1B, $3A, $07
|16E00A| db $19, $06, $0F, $00, $03
|16E00F| db $22 ; Repeat byte
|16E010| db $00
|16E011| db $14 ; Raw block
|16E012| db $BC, $5F, $27, $3A, $19, $0F, $03, $00
|16E01A| db $C5, $1E, $3A, $3C, $64, $D8, $5C, $E0
|16E022| db $98, $60, $F0, $00, $C0
|16E027| db $22 ; Repeat byte
|16E028| db $00
|16E029| db $0B ; Raw block
|16E02A| db $3D, $FA, $E4, $5C, $98, $F0, $C0, $00
|16E032| db $B8, $70, $D8, $70
|16E036| db $43 ; Repeat word
|16E037| dw $78D4
|16E039| db $0F ; Raw block
|16E03A| db $CB, $7C, $C4, $7F, $C3, $7F, $D8, $7F
|16E042| db $F8, $D8, $DC, $DC, $CF, $C7, $C3, $D8
|16E04A| db $29 ; Repeat byte
|16E04B| db $00
|16E04C| db $05 ; Raw block
|16E04D| db $C0, $00, $38, $C0, $C7, $F8
|16E053| db $24 ; Repeat byte
|16E054| db $00
|16E055| db $02 ; Raw block
|16E056| db $C0, $F8, $FF
|16E059| db $FF ; End of GFX AD

;===================================================================================================

GFX_AE:
|16E05A| db $E1, $1F ; EXT Raw block
|16E05C| db $70, $00, $C9, $70, $D6, $39, $EB, $5D
|16E064| db $BE, $2D, $5E, $0F, $FC, $4B, $BE, $51
|16E06C| db $70, $F9, $DE, $AF, $DF, $7E, $FC, $F2
|16E074| db $0E, $00, $93, $0E, $6B, $9C, $D7, $BA
|16E07C| db $7D, $B4, $7A, $F0, $3F, $D2, $7D, $8A
|16E084| db $0E, $9F, $7B, $F5, $FB, $7E, $3F, $4F
|16E08C| db $38, $00, $67, $38, $3C, $13, $3D, $17
|16E094| db $39, $0F, $38, $0F, $7D, $27, $7F, $26
|16E09C| db $38, $7F, $3C, $3F, $3D, $38, $6D, $67
|16E0A4| db $0C, $00, $F6, $0C, $46, $B8, $AE, $74
|16E0AC| db $FE, $6C, $FA, $E8, $F5, $62, $FA, $34
|16E0B4| db $0C, $FE, $76, $EA, $F2, $F6, $FF, $3E
|16E0BC| db $07, $00, $0B, $04, $0C, $03, $1A, $0F
|16E0C4| db $35, $1E, $33, $1F, $77, $19, $7F, $11
|16E0CC| db $07, $0F, $0C, $1E, $3D, $33, $57, $59
|16E0D4| db $80, $00, $F8, $00, $54, $B8, $BC, $60
|16E0DC| db $74, $D0, $F4, $D0, $EA, $A4, $F6, $CC
|16E0E4| db $80, $F8, $74, $FC, $EC, $EC, $DE, $FE
|16E0EC| db $00, $00, $03, $00, $0F, $03, $12, $0F
|16E0F4| db $35, $1E, $3E, $15, $3D, $07, $7E, $23
|16E0FC| db $00, $03, $0F, $1E, $3D, $3F, $35, $62
|16E104| db $70, $00, $E8, $70, $78, $80, $9C, $60
|16E10C| db $3C, $D8, $E8, $A0, $EC, $60, $DE, $40
|16E114| db $70, $E8, $78, $DC, $A4, $D8, $9C, $BE
|16E11C| db $00, $00, $01, $00, $0E, $01, $1F, $06
|16E124| db $3F, $0D, $3E, $0A, $7E, $2A, $7B, $1C
|16E12C| db $00, $01, $0F, $1F, $3E, $3D, $7D, $5B
|16E134| db $38, $00, $F4, $18, $BC, $C8, $FC, $00
|16E13C| db $CC, $B0, $84, $78, $A4, $78, $42, $FC
|16E144| db $38, $F4, $BC, $FC, $4C, $84, $B4, $7A
|16E14C| db $1C, $00, $33, $1C, $4D, $3F, $37, $0F
|16E154| db $3B, $17, $6D, $0B, $54, $23, $8B, $77
|16E15C| db $1C, $3F, $4F, $37, $2B, $75, $5C, $8B
|16E164| db $1C, $00, $F2, $1C, $9D, $6E, $EA, $B4
|16E16C| db $F4, $B8, $7C, $F8, $C6, $FC, $8A, $FC
|16E174| db $1C, $FE, $9D, $EA, $F4, $7C, $FE, $FE
|16E17C| db $83 ; Copy past
|16E17D| dw $0000
|16E17F| db $13 ; Raw block
|16E180| db $B6, $79, $5B, $3D, $6F, $1D, $76, $2F
|16E188| db $34, $0F, $4C, $3F, $70, $F9, $BE, $5F
|16E190| db $6F, $57, $37, $6F
|16E194| db $83 ; Copy past
|16E195| dw $0018
|16E197| db $1F ; Raw block
|16E198| db $6D, $9E, $DA, $BC, $F6, $B8, $6E, $F4
|16E1A0| db $2C, $F0, $32, $FC, $0E, $9F, $7D, $FA
|16E1A8| db $F6, $EA, $EC, $F6, $70, $00, $8E, $70
|16E1B0| db $B1, $4E, $BC, $43, $BE, $41, $9F, $60
|16E1B8| db $43 ; Repeat word
|16E1B9| dw $205F
|16E1BB| db $07 ; Raw block
|16E1BC| db $70, $FE, $CF, $C3, $C1, $E0, $60, $60
|16E1C4| db $23 ; Repeat byte
|16E1C5| db $00
|16E1C6| db $E0, $4A ; EXT Raw block
|16E1C8| db $87, $00, $58, $87, $20, $DF, $0F, $F0
|16E1D0| db $9F, $60, $CF, $30, $00, $00, $87, $DF
|16E1D8| db $FF, $F0, $60, $30, $DF, $71, $6F, $39
|16E1E0| db $BE, $4F, $5F, $20, $7F, $20, $37, $08
|16E1E8| db $0C, $03, $03, $00, $F1, $79, $FE, $7D
|16E1F0| db $7D, $37, $0C, $03, $FB, $8E, $F6, $9C
|16E1F8| db $7D, $F2, $FA, $04, $FE, $04, $EC, $10
|16E200| db $30, $C0, $C0, $00, $8F, $9E, $7F, $BE
|16E208| db $BE, $EC, $30, $C0, $FF, $66, $7B, $3E
|16E210| db $61, $1F, $7F
|16E213| db $43 ; Repeat word
|16E214| dw $3F00
|16E216| db $E0, $2B ; EXT Raw block
|16E218| db $10, $1F, $07, $07, $00, $E6, $7A, $61
|16E220| db $76, $36, $3F, $1F, $07, $EF, $3C, $C5
|16E228| db $7A, $F3, $EE, $FE, $0C, $FA, $14, $CC
|16E230| db $30, $B0, $C0, $C0, $00, $3F, $7F, $FF
|16E238| db $FE, $FA, $CC, $B0, $C0, $FF, $71, $DF
|16E240| db $33, $61, $1F, $7F
|16E244| db $43 ; Repeat word
|16E245| dw $3F00
|16E247| db $18 ; Raw block
|16E248| db $18, $1E, $07, $07, $00, $F1, $D3, $41
|16E250| db $5B, $3B, $3F, $1E, $07, $3E, $F8, $1C
|16E258| db $F0, $D2, $FC, $FA, $3C, $F4, $38, $C8
|16E260| db $70
|16E261| db $83 ; Copy past
|16E262| dw $01A4
|16E264| db $0D ; Raw block
|16E265| db $FE, $FC, $FE, $FA, $F4, $C8, $30, $C0
|16E26D| db $DF, $67, $DE, $3F, $64, $1F
|16E273| db $43 ; Repeat word
|16E274| dw $007F
|16E276| db $19 ; Raw block
|16E277| db $3F, $01, $1C, $07, $07, $00, $C7, $DF
|16E27F| db $67, $6F, $6F, $3F, $1C, $07, $6A, $94
|16E287| db $9C, $78, $3A, $E4, $B2, $7C, $E4, $F8
|16E28F| db $C8, $F0
|16E291| db $87 ; Copy past
|16E292| dw $0204
|16E294| db $0F ; Raw block
|16E295| db $E4, $C8, $30, $C0, $F0, $5F, $D1, $3E
|16E29D| db $6F, $1F, $7F, $02, $3F, $07, $31, $0E
|16E2A5| db $83 ; Copy past
|16E2A6| dw $018C
|16E2A8| db $12 ; Raw block
|16E2A9| db $DC, $DF, $6F, $7F, $3F, $31, $0C, $03
|16E2B1| db $CA, $BC, $A2, $5C, $42, $BC, $A2, $5C
|16E2B9| db $44, $B8, $88
|16E2BC| db $84 ; Copy past
|16E2BD| dw $0203
|16E2BF| db $13 ; Raw block
|16E2C0| db $FA, $E2, $C2, $E2, $C4, $88, $30, $C0
|16E2C8| db $8F, $7F, $9B, $77, $4F, $39, $5B, $37
|16E2D0| db $2D, $1B, $10, $0F
|16E2D4| db $83 ; Copy past
|16E2D5| dw $018C
|16E2D7| db $12 ; Raw block
|16E2D8| db $8F, $9F, $4F, $5F, $2D, $10, $0C, $03
|16E2E0| db $CC, $F8, $FA, $FC, $DA, $FC, $36, $F8
|16E2E8| db $E4, $F8, $08
|16E2EB| db $84 ; Copy past
|16E2EC| dw $0233
|16E2EE| db $11 ; Raw block
|16E2EF| db $FC, $FE, $DA, $36, $E4, $08, $30, $C0
|16E2F7| db $BE, $7F, $7F, $1F, $D7, $7F, $A6, $5F
|16E2FF| db $63, $1F
|16E301| db $85 ; Copy past
|16E302| dw $027A
|16E304| db $10 ; Raw block
|16E305| db $FF, $7F, $F7, $E6, $63, $10, $0C, $03
|16E30D| db $7D, $FE, $FE, $F8, $EB, $FE, $65, $FA
|16E315| db $C6
|16E316| db $86 ; Copy past
|16E317| dw $0291
|16E319| db $13 ; Raw block
|16E31A| db $FF, $FE, $EF, $67, $C6, $08, $30, $C0
|16E322| db $4F, $30, $67, $38, $33, $1C, $39, $1E
|16E32A| db $1C, $0F, $0C, $03
|16E32E| db $43 ; Repeat word
|16E32F| dw $0609
|16E331| db $0B ; Raw block
|16E332| db $70, $78, $3C, $3E, $1F, $0F, $0E, $0E
|16E33A| db $D7, $28, $F8, $07
|16E33E| db $43 ; Repeat word
|16E33F| dw $00FF
|16E341| db $01 ; Raw block
|16E342| db $77, $88
|16E344| db $83 ; Copy past
|16E345| dw $02EA
|16E347| db $09 ; Raw block
|16E348| db $FE, $01, $28, $07, $00, $00, $88, $07
|16E350| db $00, $01
|16E352| db $43 ; Repeat word
|16E353| dw $0304
|16E355| db $03 ; Raw block
|16E356| db $0E, $07, $0A, $07
|16E35A| db $43 ; Repeat word
|16E35B| dw $0F18
|16E35D| db $43 ; Repeat word
|16E35E| dw $1B34
|16E360| db $07 ; Raw block
|16E361| db $07, $07, $0F, $0F, $1F, $1F, $3B, $3B
|16E369| db $49 ; Repeat word
|16E36A| dw $00FF
|16E36C| db $43 ; Repeat word
|16E36D| dw $916E
|16E36F| db $01 ; Raw block
|16E370| db $04, $FB
|16E372| db $24 ; Repeat byte
|16E373| db $00
|16E374| db $08 ; Raw block
|16E375| db $91, $91, $FB, $06, $03, $0E, $03, $0C
|16E37D| db $07
|16E37E| db $43 ; Repeat word
|16E37F| dw $0F18
|16E381| db $43 ; Repeat word
|16E382| dw $1F30
|16E384| db $01 ; Raw block
|16E385| db $34, $1B
|16E387| db $84 ; Copy past
|16E388| dw $0311
|16E38A| db $02 ; Raw block
|16E38B| db $3F, $3F, $3B
|16E38E| db $47 ; Repeat word
|16E38F| dw $00FF
|16E391| db $07 ; Raw block
|16E392| db $6F, $90, $4E, $B1, $0E, $F1, $0C, $F3
|16E39A| db $23 ; Repeat byte
|16E39B| db $00
|16E39C| db $03 ; Raw block
|16E39D| db $90, $B1, $F1, $F3
|16E3A1| db $83 ; Copy past
|16E3A2| dw $0330
|16E3A4| db $83 ; Copy past
|16E3A5| dw $0338
|16E3A7| db $0A ; Raw block
|16E3A8| db $34, $1F, $3C, $1F, $1C, $0F, $1A, $0F
|16E3B0| db $07, $0F, $1F
|16E3B3| db $22 ; Repeat byte
|16E3B4| db $3F
|16E3B5| db $03 ; Raw block
|16E3B6| db $1F, $1F, $FF, $00
|16E3BA| db $47 ; Repeat word
|16E3BB| dw $807F
|16E3BD| db $06 ; Raw block
|16E3BE| db $3F, $C0, $2E, $D1, $1E, $E1, $00
|16E3C5| db $23 ; Repeat byte
|16E3C6| db $80
|16E3C7| db $E0, $3C ; EXT Raw block
|16E3C9| db $C0, $D1, $E1, $22, $20, $05, $22, $8A
|16E3D1| db $F9, $02, $21, $23, $21, $03, $01, $05
|16E3D9| db $03, $04, $03, $22, $27, $FB, $23, $23
|16E3E1| db $03, $05, $04, $20, $20, $54, $70, $AA
|16E3E9| db $24, $94, $08, $D4, $88, $D2, $8C, $A2
|16E3F1| db $DC, $C2, $FC, $20, $74, $AE, $9C, $DC
|16E3F9| db $DE, $FE, $FE, $00, $00, $20, $20, $50
|16E401| db $70, $21, $20, $05, $00
|16E406| db $43 ; Repeat word
|16E407| dw $050A
|16E409| db $0B ; Raw block
|16E40A| db $09, $06, $00, $20, $70, $21, $05, $0E
|16E412| db $0E, $0B, $50, $20
|16E416| db $44 ; Repeat word
|16E417| dw $40A0
|16E419| db $09 ; Raw block
|16E41A| db $C0, $90, $E0, $D0, $E0, $C8, $F0, $64
|16E422| db $F8, $70
|16E424| db $22 ; Repeat byte
|16E425| db $E0
|16E426| db $03 ; Raw block
|16E427| db $F0, $F0, $F8, $7C
|16E42B| db $25 ; Repeat byte
|16E42C| db $00
|16E42D| db $09 ; Raw block
|16E42E| db $01, $00, $02, $01, $0E, $03, $17, $09
|16E436| db $09, $06
|16E438| db $22 ; Repeat byte
|16E439| db $00
|16E43A| db $1C ; Raw block
|16E43B| db $01, $03, $0F, $1F, $0D, $00, $00, $10
|16E443| db $20, $28, $10, $68, $30, $B8, $10, $94
|16E44B| db $08, $A8, $10, $78, $B0, $00, $30, $38
|16E453| db $78, $B8, $9C, $B8, $F8
|16E458| db $2B ; Repeat byte
|16E459| db $00
|16E45A| db $03 ; Raw block
|16E45B| db $0F, $00, $3B, $06
|16E45F| db $25 ; Repeat byte
|16E460| db $00
|16E461| db $01 ; Raw block
|16E462| db $0F, $37
|16E464| db $27 ; Repeat byte
|16E465| db $00
|16E466| db $07 ; Raw block
|16E467| db $0F, $00, $30, $0F, $CF, $30, $3F, $C0
|16E46F| db $23 ; Repeat byte
|16E470| db $00
|16E471| db $E0, $27 ; EXT Raw block
|16E473| db $0F, $3F, $F0, $C0, $20, $00, $5C, $20
|16E47B| db $43, $3C, $5D, $23, $2E, $11, $33, $1C
|16E483| db $1D, $0E, $0E, $07, $20, $7C, $7F, $63
|16E48B| db $31, $3C, $1E, $0F, $0F, $00, $70, $0F
|16E493| db $8F, $70, $1F, $E0, $8F, $F0, $47, $B8
|16E49B| db $43 ; Repeat word
|16E49C| dw $00FF
|16E49E| db $12 ; Raw block
|16E49F| db $0F, $7F, $F0, $E0, $F0, $B8, $00, $00
|16E4A7| db $32, $1D, $18, $0F, $19, $0F, $0F, $06
|16E4AF| db $07, $00, $01
|16E4B2| db $24 ; Repeat byte
|16E4B3| db $00
|16E4B4| db $E0, $23 ; EXT Raw block
|16E4B6| db $3D, $1F, $1F, $0F, $07, $01, $00, $00
|16E4BE| db $04, $FB, $00, $FF, $E0, $FF, $F4, $1B
|16E4C6| db $FA, $0D, $FC, $07, $FF, $03, $1F, $00
|16E4CE| db $FB, $FF, $FF, $FB, $FD, $FF, $FF, $1F
|16E4D6| db $3C, $0B, $3E, $05
|16E4DA| db $43 ; Repeat word
|16E4DB| dw $031E
|16E4DD| db $02 ; Raw block
|16E4DE| db $0F, $01, $07
|16E4E1| db $24 ; Repeat byte
|16E4E2| db $00
|16E4E3| db $00 ; Raw block
|16E4E4| db $3B
|16E4E5| db $84 ; Copy past
|16E4E6| dw $0490
|16E4E8| db $83 ; Copy past
|16E4E9| dw $0496
|16E4EB| db $43 ; Repeat word
|16E4EC| dw $FF00
|16E4EE| db $07 ; Raw block
|16E4EF| db $30, $CF, $1C, $FF, $FE, $E3, $FF, $01
|16E4F7| db $84 ; Copy past
|16E4F8| dw $04A6
|16E4FA| db $00 ; Raw block
|16E4FB| db $CF
|16E4FC| db $22 ; Repeat byte
|16E4FD| db $FF
|16E4FE| db $0D ; Raw block
|16E4FF| db $1F, $1C, $0B, $1C, $03, $1E, $05, $0F
|16E507| db $02, $0F, $03, $07, $01, $03
|16E50D| db $22 ; Repeat byte
|16E50E| db $00
|16E50F| db $06 ; Raw block
|16E510| db $1B, $1B, $1D, $0E, $0F, $07, $03
|16E517| db $84 ; Copy past
|16E518| dw $0497
|16E51A| db $16 ; Raw block
|16E51B| db $80, $7F, $C6, $3B, $F7, $0D, $0F, $F8
|16E523| db $FF, $F0, $F0, $00, $FB, $FF, $7F, $3B
|16E52B| db $0F, $FF, $FF, $F0, $02, $01, $01
|16E532| db $24 ; Repeat byte
|16E533| db $00
|16E534| db $E0, $33 ; EXT Raw block
|16E536| db $09, $08, $16, $1D, $09, $08, $00, $00
|16E53E| db $02, $01, $00, $00, $09, $1E, $09, $00
|16E546| db $F7, $FE, $7F, $FE, $BF, $7E, $9D, $7E
|16E54E| db $01, $FE, $02, $FC, $04, $F8, $F8, $00
|16E556| db $FF, $7F, $BF, $9D, $01, $02, $04, $F8
|16E55E| db $05, $03, $24, $23, $52, $71, $25, $20
|16E566| db $0F, $05, $04, $03
|16E56A| db $83 ; Copy past
|16E56B| dw $0510
|16E56D| db $E0, $25 ; EXT Raw block
|16E56F| db $05, $24, $72, $25, $0F, $04, $02, $01
|16E577| db $32, $FC, $36, $FC, $1F, $FE, $3F, $FE
|16E57F| db $F9, $FE, $62, $FC, $0C, $F0, $F0, $00
|16E587| db $3E, $3E, $1F, $3F, $F9, $62, $0C, $F0
|16E58F| db $0A, $05, $0E, $07, $04, $23
|16E595| db $43 ; Repeat word
|16E596| dw $0102
|16E598| db $01 ; Raw block
|16E599| db $01, $08
|16E59B| db $23 ; Repeat byte
|16E59C| db $00
|16E59D| db $0F ; Raw block
|16E59E| db $0E, $0E, $24, $02, $02, $09, $00, $00
|16E5A6| db $BC, $F8, $FE, $FC, $7F, $FE, $1D, $FE
|16E5AE| db $83 ; Copy past
|16E5AF| dw $0530
|16E5B1| db $18 ; Raw block
|16E5B2| db $C4, $38, $38, $00, $FC, $FE, $7F, $1D
|16E5BA| db $01, $02, $C4, $38, $76, $09, $9C, $67
|16E5C2| db $67, $3B, $38, $1F, $1F, $00, $07, $00
|16E5CA| db $01
|16E5CB| db $22 ; Repeat byte
|16E5CC| db $00
|16E5CD| db $07 ; Raw block
|16E5CE| db $4F, $E7, $7B, $3F, $1F, $07, $01, $00
|16E5D6| db $43 ; Repeat word
|16E5D7| dw $807F
|16E5D9| db $0F ; Raw block
|16E5DA| db $3F, $C0, $C7, $F8, $00, $FF, $D0, $3F
|16E5E2| db $F8, $07, $3F, $00, $80, $80, $C0, $F8
|16E5EA| db $22 ; Repeat byte
|16E5EB| db $FF
|16E5EC| db $0D ; Raw block
|16E5ED| db $3F, $4B, $07, $B0, $4F, $43, $3C, $20
|16E5F5| db $1F, $1F, $00, $0F, $00, $01
|16E5FB| db $22 ; Repeat byte
|16E5FC| db $00
|16E5FD| db $05 ; Raw block
|16E5FE| db $4F, $FF, $7C, $3F, $1F, $0F
|16E604| db $83 ; Copy past
|16E605| dw $05B6
|16E607| db $01 ; Raw block
|16E608| db $1F, $E0
|16E60A| db $43 ; Repeat word
|16E60B| dw $00FF
|16E60D| db $0F ; Raw block
|16E60E| db $1E, $E1, $80, $7F, $C3, $3C, $3F, $00
|16E616| db $80, $E0, $00, $00, $E1, $FF, $FF, $3F
|16E61E| db $FF ; End of GFX AE

;===================================================================================================

GFX_AF:
|16E61F| db $24 ; Repeat byte
|16E620| db $00
|16E621| db $02 ; Raw block
|16E622| db $01, $01, $03
|16E625| db $43 ; Repeat word
|16E626| dw $0702
|16E628| db $03 ; Raw block
|16E629| db $01, $0F, $0E, $1F
|16E62D| db $22 ; Repeat byte
|16E62E| db $00
|16E62F| db $1C ; Raw block
|16E630| db $01, $03, $03, $01, $0F, $00, $1E, $1C
|16E638| db $3F, $2B, $F7, $CF, $FC, $7F, $B8, $FF
|16E640| db $18, $6F, $98, $8F, $7C, $00, $1C, $33
|16E648| db $DC, $B8, $18, $98, $7C
|16E64D| db $22 ; Repeat byte
|16E64E| db $00
|16E64F| db $14 ; Raw block
|16E650| db $E6, $E6, $FF, $9F, $79, $CF, $3C, $CE
|16E658| db $3D, $C4, $3F, $00, $FF, $00, $00, $E6
|16E660| db $79, $3C, $3D, $3F, $FF
|16E665| db $24 ; Repeat byte
|16E666| db $00
|16E667| db $0A ; Raw block
|16E668| db $80, $80, $C0, $C0, $60, $40, $E0, $00
|16E670| db $F0, $70, $F8
|16E673| db $22 ; Repeat byte
|16E674| db $00
|16E675| db $04 ; Raw block
|16E676| db $80, $40, $C0, $80, $F0
|16E67B| db $28 ; Repeat byte
|16E67C| db $00
|16E67D| db $83 ; Copy past
|16E67E| dw $0005
|16E680| db $02 ; Raw block
|16E681| db $03, $01, $07
|16E684| db $24 ; Repeat byte
|16E685| db $00
|16E686| db $02 ; Raw block
|16E687| db $01, $03, $01
|16E68A| db $24 ; Repeat byte
|16E68B| db $00
|16E68C| db $88 ; Copy past
|16E68D| dw $0019
|16E68F| db $01 ; Raw block
|16E690| db $6F, $98
|16E692| db $22 ; Repeat byte
|16E693| db $00
|16E694| db $83 ; Copy past
|16E695| dw $0029
|16E697| db $00 ; Raw block
|16E698| db $98
|16E699| db $26 ; Repeat byte
|16E69A| db $00
|16E69B| db $08 ; Raw block
|16E69C| db $E6, $E6, $FF, $1F, $F9, $CF, $3C, $CC
|16E6A4| db $3F
|16E6A5| db $23 ; Repeat byte
|16E6A6| db $00
|16E6A7| db $03 ; Raw block
|16E6A8| db $E6, $F9, $3C, $3F
|16E6AC| db $28 ; Repeat byte
|16E6AD| db $00
|16E6AE| db $23 ; Repeat byte
|16E6AF| db $80
|16E6B0| db $02 ; Raw block
|16E6B1| db $40, $00, $E0
|16E6B4| db $24 ; Repeat byte
|16E6B5| db $00
|16E6B6| db $02 ; Raw block
|16E6B7| db $80, $00, $80
|16E6BA| db $25 ; Repeat byte
|16E6BB| db $00
|16E6BC| db $08 ; Raw block
|16E6BD| db $0F, $00, $1F, $08, $3E, $10, $3C, $00
|16E6C5| db $37
|16E6C6| db $25 ; Repeat byte
|16E6C7| db $00
|16E6C8| db $02 ; Raw block
|16E6C9| db $01, $03, $08
|16E6CC| db $25 ; Repeat byte
|16E6CD| db $00
|16E6CE| db $09 ; Raw block
|16E6CF| db $E0, $00, $30, $20, $38, $00, $78, $20
|16E6D7| db $F8, $50
|16E6D9| db $23 ; Repeat byte
|16E6DA| db $00
|16E6DB| db $01 ; Raw block
|16E6DC| db $80, $40
|16E6DE| db $23 ; Repeat byte
|16E6DF| db $00
|16E6E0| db $83 ; Copy past
|16E6E1| dw $00C6
|16E6E3| db $08 ; Raw block
|16E6E4| db $3F, $10, $7E, $20, $7C, $00, $76, $00
|16E6EC| db $7F
|16E6ED| db $24 ; Repeat byte
|16E6EE| db $00
|16E6EF| db $02 ; Raw block
|16E6F0| db $01, $03, $09
|16E6F3| db $22 ; Repeat byte
|16E6F4| db $00
|16E6F5| db $15 ; Raw block
|16E6F6| db $F0, $00, $88, $00, $1C, $10, $1E, $08
|16E6FE| db $3E, $10, $7E, $24, $7E, $48, $00, $00
|16E706| db $40, $C0, $A0, $00, $00, $80
|16E70C| db $25 ; Repeat byte
|16E70D| db $00
|16E70E| db $09 ; Raw block
|16E70F| db $03, $03, $0C, $0F, $13, $1C, $27, $38
|16E717| db $2F, $30
|16E719| db $23 ; Repeat byte
|16E71A| db $00
|16E71B| db $03 ; Raw block
|16E71C| db $03, $0C, $18, $13
|16E720| db $25 ; Repeat byte
|16E721| db $00
|16E722| db $09 ; Raw block
|16E723| db $C0, $C0, $30, $F0, $C8, $38, $E4, $1C
|16E72B| db $F4, $0C
|16E72D| db $23 ; Repeat byte
|16E72E| db $00
|16E72F| db $03 ; Raw block
|16E730| db $C0, $30, $18, $C8
|16E734| db $27 ; Repeat byte
|16E735| db $00
|16E736| db $06 ; Raw block
|16E737| db $03, $00, $07, $02, $0E, $04, $0F
|16E73E| db $26 ; Repeat byte
|16E73F| db $00
|16E740| db $00 ; Raw block
|16E741| db $01
|16E742| db $28 ; Repeat byte
|16E743| db $00
|16E744| db $07 ; Raw block
|16E745| db $C0, $00, $60, $40, $F0, $80, $F0, $40
|16E74D| db $27 ; Repeat byte
|16E74E| db $00
|16E74F| db $01 ; Raw block
|16E750| db $1E, $31
|16E752| db $43 ; Repeat word
|16E753| dw $732C
|16E755| db $45 ; Repeat word
|16E756| dw $7F20
|16E758| db $06 ; Raw block
|16E759| db $18, $37, $3D, $62, $11, $33, $33
|16E760| db $22 ; Repeat byte
|16E761| db $3F
|16E762| db $1F ; Raw block
|16E763| db $17, $22, $07, $FF, $71, $8E, $FB, $04
|16E76B| db $FF, $00, $7F, $80, $1F, $E0, $3F, $C0
|16E773| db $FF, $00, $FF, $8E, $04, $00, $80, $E0
|16E77B| db $C0, $00, $80, $7F, $CE, $31, $DF, $20
|16E783| db $43 ; Repeat word
|16E784| dw $00FF
|16E786| db $E0, $29 ; EXT Raw block
|16E788| db $EE, $11, $E0, $1F, $F0, $0F, $7F, $31
|16E790| db $20, $00, $00, $11, $1F, $0F, $78, $8C
|16E798| db $3C, $C6, $14, $EE, $04, $FE, $0C, $FE
|16E7A0| db $10, $FC, $38, $CC, $3C, $C6, $88, $C4
|16E7A8| db $EC, $FC, $FC, $F0, $C8, $C4, $06, $0F
|16E7B0| db $0F, $18
|16E7B2| db $43 ; Repeat word
|16E7B3| dw $3916
|16E7B5| db $45 ; Repeat word
|16E7B6| dw $3F10
|16E7B8| db $05 ; Raw block
|16E7B9| db $0C, $1B, $07, $08, $19, $19
|16E7BF| db $22 ; Repeat byte
|16E7C0| db $1F
|16E7C1| db $04 ; Raw block
|16E7C2| db $0B, $86, $7D, $01, $FE
|16E7C7| db $89 ; Copy past
|16E7C8| dw $019A
|16E7CA| db $03 ; Raw block
|16E7CB| db $7F, $80, $7D, $FE
|16E7CF| db $84 ; Copy past
|16E7D0| dw $01A9
|16E7D2| db $06 ; Raw block
|16E7D3| db $80, $04, $FF, $00, $FF, $EE, $11
|16E7DA| db $45 ; Repeat word
|16E7DB| dw $00FF
|16E7DD| db $06 ; Raw block
|16E7DE| db $F6, $09, $F0, $0F, $FF, $FF, $11
|16E7E5| db $22 ; Repeat byte
|16E7E6| db $00
|16E7E7| db $E0, $24 ; EXT Raw block
|16E7E9| db $09, $0F, $60, $F0, $70, $98, $78, $8C
|16E7F1| db $28, $DC, $08, $FC, $18, $FC, $20, $F8
|16E7F9| db $70, $98, $E0, $90, $88, $D8, $F8, $F8
|16E801| db $E0, $90, $3F, $00, $33, $10, $35, $10
|16E809| db $2E, $0A, $1D, $0C, $0F
|16E80E| db $25 ; Repeat byte
|16E80F| db $00
|16E810| db $00 ; Raw block
|16E811| db $08
|16E812| db $62 ; Increment fill
|16E813| db $00
|16E814| db $22 ; Repeat byte
|16E815| db $00
|16E816| db $03 ; Raw block
|16E817| db $F8, $00, $B8, $80
|16E81B| db $43 ; Repeat word
|16E81C| dw $10B8
|16E81E| db $02 ; Raw block
|16E81F| db $B0, $00, $E0
|16E822| db $25 ; Repeat byte
|16E823| db $00
|16E824| db $23 ; Repeat byte
|16E825| db $40
|16E826| db $22 ; Repeat byte
|16E827| db $00
|16E828| db $0C ; Raw block
|16E829| db $7F, $00, $63, $20, $77, $30, $6D, $29
|16E831| db $3E, $12, $1D, $0C, $0F
|16E836| db $23 ; Repeat byte
|16E837| db $00
|16E838| db $01 ; Raw block
|16E839| db $10, $00
|16E83B| db $62 ; Increment fill
|16E83C| db $00
|16E83D| db $00 ; Raw block
|16E83E| db $00
|16E83F| db $43 ; Repeat word
|16E840| dw $EE00
|16E842| db $09 ; Raw block
|16E843| db $24, $EE, $04, $6E, $04, $EC, $00, $E8
|16E84B| db $20, $F0
|16E84D| db $22 ; Repeat byte
|16E84E| db $00
|16E84F| db $22 ; Repeat byte
|16E850| db $10
|16E851| db $0E ; Raw block
|16E852| db $90, $10, $10, $00, $00, $2F, $30, $1F
|16E85A| db $32, $07, $19, $07, $08, $00, $07
|16E861| db $25 ; Repeat byte
|16E862| db $00
|16E863| db $03 ; Raw block
|16E864| db $37, $14, $0E, $03
|16E868| db $23 ; Repeat byte
|16E869| db $00
|16E86A| db $09 ; Raw block
|16E86B| db $F4, $0C, $F8, $4C, $E0, $98, $E0, $10
|16E873| db $00, $E0
|16E875| db $25 ; Repeat byte
|16E876| db $00
|16E877| db $03 ; Raw block
|16E878| db $EC, $28, $70, $C0
|16E87C| db $23 ; Repeat byte
|16E87D| db $00
|16E87E| db $06 ; Raw block
|16E87F| db $09, $00, $0A, $00, $07, $03, $03
|16E886| db $28 ; Repeat byte
|16E887| db $00
|16E888| db $00 ; Raw block
|16E889| db $04
|16E88A| db $26 ; Repeat byte
|16E88B| db $00
|16E88C| db $43 ; Repeat word
|16E88D| dw $00B0
|16E88F| db $02 ; Raw block
|16E890| db $E0, $00, $C0
|16E893| db $28 ; Repeat byte
|16E894| db $00
|16E895| db $01 ; Raw block
|16E896| db $40, $40
|16E898| db $25 ; Repeat byte
|16E899| db $00
|16E89A| db $1B ; Raw block
|16E89B| db $2D, $72, $5F, $E0, $5B, $E4, $53, $EC
|16E8A3| db $41, $FE, $21, $7E, $20, $7F, $10, $3F
|16E8AB| db $32, $60, $64, $6C, $7E, $3E, $3F, $1F
|16E8B3| db $F7, $08, $EF, $10
|16E8B7| db $43 ; Repeat word
|16E8B8| dw $30CF
|16E8BA| db $11 ; Raw block
|16E8BB| db $EF, $10, $F7, $08, $FF, $00, $3F, $C0
|16E8C3| db $08, $10, $30, $30, $10, $08, $00, $C0
|16E8CB| db $FC, $03
|16E8CD| db $43 ; Repeat word
|16E8CE| dw $00FF
|16E8D0| db $01 ; Raw block
|16E8D1| db $F6, $09
|16E8D3| db $43 ; Repeat word
|16E8D4| dw $07F8
|16E8D6| db $0F ; Raw block
|16E8D7| db $E0, $1F, $F7, $0C, $03, $00, $00, $09
|16E8DF| db $07, $07, $1F, $0C, $78, $8E, $7C, $86
|16E8E7| db $43 ; Repeat word
|16E8E8| dw $C73A
|16E8EA| db $E0, $31 ; EXT Raw block
|16E8EC| db $12, $EF, $4C, $BE, $D0, $3C, $C8, $3C
|16E8F4| db $88, $84, $C6, $C6, $EE, $BC, $30, $38
|16E8FC| db $15, $3A, $2C, $73, $2A, $75, $23, $7C
|16E904| db $21, $7E, $19, $3E, $18, $3F, $0C, $1F
|16E90C| db $1A, $33, $35, $3C, $3E, $1E, $1F, $0F
|16E914| db $FF, $00, $F7, $08, $E7, $18, $EF, $10
|16E91C| db $E7, $18
|16E91E| db $83 ; Copy past
|16E91F| dw $0322
|16E921| db $0B ; Raw block
|16E922| db $1F, $E0, $00, $08, $18, $10, $18, $08
|16E92A| db $00, $E0, $FC, $03
|16E92E| db $45 ; Repeat word
|16E92F| dw $00FF
|16E931| db $08 ; Raw block
|16E932| db $FD, $02, $FE, $01, $F8, $07, $F7, $0C
|16E93A| db $03
|16E93B| db $22 ; Repeat byte
|16E93C| db $00
|16E93D| db $10 ; Raw block
|16E93E| db $02, $01, $07, $0C, $70, $9C, $F8, $0C
|16E946| db $74, $8E, $34, $CE, $24, $DE, $18, $FC
|16E94E| db $A0
|16E94F| db $43 ; Repeat word
|16E950| dw $9078
|16E952| db $06 ; Raw block
|16E953| db $08, $8C, $CC, $DC, $F8, $60, $70
|16E95A| db $26 ; Repeat byte
|16E95B| db $00
|16E95C| db $08 ; Raw block
|16E95D| db $08, $08, $14, $00, $08, $00, $02, $02
|16E965| db $05
|16E966| db $22 ; Repeat byte
|16E967| db $00
|16E968| db $04 ; Raw block
|16E969| db $08, $14, $08, $02, $05
|16E96E| db $24 ; Repeat byte
|16E96F| db $00
|16E970| db $04 ; Raw block
|16E971| db $04, $04, $0A, $00, $04
|16E976| db $27 ; Repeat byte
|16E977| db $00
|16E978| db $02 ; Raw block
|16E979| db $04, $0A, $04
|16E97C| db $28 ; Repeat byte
|16E97D| db $00
|16E97E| db $09 ; Raw block
|16E97F| db $03, $07, $00, $0F, $0F, $10, $3F, $30
|16E987| db $1F, $20
|16E989| db $23 ; Repeat byte
|16E98A| db $00
|16E98B| db $03 ; Raw block
|16E98C| db $0F, $10, $30, $08
|16E990| db $27 ; Repeat byte
|16E991| db $00
|16E992| db $03 ; Raw block
|16E993| db $C0, $C0, $20, $E0
|16E997| db $43 ; Repeat word
|16E998| dw $30D0
|16E99A| db $24 ; Repeat byte
|16E99B| db $00
|16E99C| db $02 ; Raw block
|16E99D| db $C0, $20, $20
|16E9A0| db $23 ; Repeat byte
|16E9A1| db $00
|16E9A2| db $83 ; Copy past
|16E9A3| dw $0006
|16E9A5| db $07 ; Raw block
|16E9A6| db $03, $0C, $0F, $10, $0F, $12, $0F, $14
|16E9AE| db $83 ; Copy past
|16E9AF| dw $0011
|16E9B1| db $03 ; Raw block
|16E9B2| db $04, $07, $0D, $09
|16E9B6| db $23 ; Repeat byte
|16E9B7| db $00
|16E9B8| db $83 ; Copy past
|16E9B9| dw $0410
|16E9BB| db $03 ; Raw block
|16E9BC| db $90, $70, $D0, $30
|16E9C0| db $43 ; Repeat word
|16E9C1| dw $18E8
|16E9C3| db $22 ; Repeat byte
|16E9C4| db $00
|16E9C5| db $1C ; Raw block
|16E9C6| db $C0, $60, $20, $90, $90, $FE, $7F, $FD
|16E9CE| db $BF, $FB, $DF, $F7, $EF, $EF, $F7, $DF
|16E9D6| db $FB, $BF, $FD, $7F, $FE, $FE, $FD, $FB
|16E9DE| db $F7, $EF, $DF, $BF, $7F
|16E9E3| db $97 ; Copy past
|16E9E4| dw $0450
|16E9E6| db $09 ; Raw block
|16E9E7| db $00, $3F, $0A, $1D, $06, $0F, $00, $07
|16E9EF| db $00, $01
|16E9F1| db $25 ; Repeat byte
|16E9F2| db $00
|16E9F3| db $02 ; Raw block
|16E9F4| db $07, $0D, $06
|16E9F7| db $24 ; Repeat byte
|16E9F8| db $00
|16E9F9| db $E0, $35 ; EXT Raw block
|16E9FB| db $0F, $F0, $03, $FC, $08, $FF, $B3, $CF
|16EA03| db $9C, $E3, $4D, $F3, $3C, $7F, $00, $3C
|16EA0B| db $F0, $FC, $EF, $C3, $E0, $71, $3C, $00
|16EA13| db $ED, $1F, $D6, $3B, $2D, $F3, $DC, $E3
|16EA1B| db $3C, $C3, $E3, $9F, $7C, $FF, $00, $7C
|16EA23| db $1F, $32, $E3, $C3, $03, $9F, $7C, $00
|16EA2B| db $10, $F8, $F0, $F8, $00, $F0
|16EA31| db $43 ; Repeat word
|16EA32| dw $C080
|16EA34| db $01 ; Raw block
|16EA35| db $00, $80
|16EA37| db $23 ; Repeat byte
|16EA38| db $00
|16EA39| db $04 ; Raw block
|16EA3A| db $F0, $F0, $00, $80, $80
|16EA3F| db $22 ; Repeat byte
|16EA40| db $00
|16EA41| db $07 ; Raw block
|16EA42| db $02, $1F, $02, $07, $00, $03, $00, $01
|16EA4A| db $27 ; Repeat byte
|16EA4B| db $00
|16EA4C| db $01 ; Raw block
|16EA4D| db $03, $02
|16EA4F| db $25 ; Repeat byte
|16EA50| db $00
|16EA51| db $0B ; Raw block
|16EA52| db $13, $FC, $2C, $DF, $B3, $CF, $D8, $E7
|16EA5A| db $3C, $FF, $00, $3C
|16EA5E| db $23 ; Repeat byte
|16EA5F| db $00
|16EA60| db $04 ; Raw block
|16EA61| db $FC, $CF, $C3, $E4, $3C
|16EA66| db $22 ; Repeat byte
|16EA67| db $00
|16EA68| db $0B ; Raw block
|16EA69| db $ED, $1F, $15, $FF, $ED, $F3, $1B, $E7
|16EA71| db $74, $8F, $00, $7C
|16EA75| db $23 ; Repeat byte
|16EA76| db $00
|16EA77| db $04 ; Raw block
|16EA78| db $1F, $F5, $E3, $07, $0C
|16EA7D| db $22 ; Repeat byte
|16EA7E| db $00
|16EA7F| db $03 ; Raw block
|16EA80| db $20, $F0, $00, $E0
|16EA84| db $43 ; Repeat word
|16EA85| dw $8000
|16EA87| db $27 ; Repeat byte
|16EA88| db $00
|16EA89| db $00 ; Raw block
|16EA8A| db $E0
|16EA8B| db $27 ; Repeat byte
|16EA8C| db $00
|16EA8D| db $00 ; Raw block
|16EA8E| db $02
|16EA8F| db $24 ; Repeat byte
|16EA90| db $00
|16EA91| db $84 ; Copy past
|16EA92| dw $03C7
|16EA94| db $23 ; Repeat byte
|16EA95| db $00
|16EA96| db $00 ; Raw block
|16EA97| db $02
|16EA98| db $84 ; Copy past
|16EA99| dw $03D1
|16EA9B| db $24 ; Repeat byte
|16EA9C| db $00
|16EA9D| db $86 ; Copy past
|16EA9E| dw $03DD
|16EAA0| db $00 ; Raw block
|16EAA1| db $10
|16EAA2| db $25 ; Repeat byte
|16EAA3| db $00
|16EAA4| db $02 ; Raw block
|16EAA5| db $04, $0A, $04
|16EAA8| db $23 ; Repeat byte
|16EAA9| db $00
|16EAAA| db $07 ; Raw block
|16EAAB| db $1F, $20, $1F, $24, $1F, $2A, $0F, $14
|16EAB3| db $83 ; Copy past
|16EAB4| dw $02A6
|16EAB6| db $23 ; Repeat byte
|16EAB7| db $00
|16EAB8| db $04 ; Raw block
|16EAB9| db $1E, $1B, $11, $0B, $07
|16EABE| db $22 ; Repeat byte
|16EABF| db $00
|16EAC0| db $43 ; Repeat word
|16EAC1| dw $18E8
|16EAC3| db $07 ; Raw block
|16EAC4| db $E0, $18, $E0, $10, $C0, $60, $40, $C0
|16EACC| db $23 ; Repeat byte
|16EACD| db $00
|16EACE| db $22 ; Repeat byte
|16EACF| db $10
|16EAD0| db $10 ; Raw block
|16EAD1| db $90, $60, $40, $00, $00, $0F, $14, $0F
|16EAD9| db $12, $0F, $10, $03, $0C, $02, $07, $01
|16EAE1| db $03
|16EAE2| db $23 ; Repeat byte
|16EAE3| db $00
|16EAE4| db $03 ; Raw block
|16EAE5| db $09, $0D, $07, $04
|16EAE9| db $83 ; Copy past
|16EAEA| dw $0076
|16EAEC| db $43 ; Repeat word
|16EAED| dw $18E8
|16EAEF| db $07 ; Raw block
|16EAF0| db $D0, $30, $90, $70, $20, $E0, $C0, $C0
|16EAF8| db $23 ; Repeat byte
|16EAF9| db $00
|16EAFA| db $04 ; Raw block
|16EAFB| db $90, $90, $20, $60, $C0
|16EB00| db $22 ; Repeat byte
|16EB01| db $00
|16EB02| db $F0, $2E ; EXT Copy past
|16EB04| dw $0450
|16EB06| db $00 ; Raw block
|16EB07| db $7F
|16EB08| db $FF ; End of GFX AF

;===================================================================================================

GFX_B0:
|16EB09| db $25 ; Repeat byte
|16EB0A| db $00
|16EB0B| db $09 ; Raw block
|16EB0C| db $01, $00, $03, $01, $07, $02, $0F, $04
|16EB14| db $1F, $08
|16EB16| db $22 ; Repeat byte
|16EB17| db $00
|16EB18| db $0C ; Raw block
|16EB19| db $01, $03, $06, $0C, $18, $07, $00, $3F
|16EB21| db $07, $FF, $38, $F7, $C0
|16EB26| db $45 ; Repeat word
|16EB27| dw $00FB
|16EB29| db $05 ; Raw block
|16EB2A| db $FD, $00, $07, $3F, $F8, $C8
|16EB30| db $22 ; Repeat byte
|16EB31| db $04
|16EB32| db $00 ; Raw block
|16EB33| db $02
|16EB34| db $26 ; Repeat byte
|16EB35| db $00
|16EB36| db $83 ; Copy past
|16EB37| dw $0006
|16EB39| db $04 ; Raw block
|16EB3A| db $06, $03, $0C, $07, $18
|16EB3F| db $23 ; Repeat byte
|16EB40| db $00
|16EB41| db $04 ; Raw block
|16EB42| db $01, $02, $04, $08, $00
|16EB47| db $83 ; Copy past
|16EB48| dw $0018
|16EB4A| db $02 ; Raw block
|16EB4B| db $F8, $37, $C0
|16EB4E| db $45 ; Repeat word
|16EB4F| dw $00FB
|16EB51| db $05 ; Raw block
|16EB52| db $FD, $00, $00, $07, $38, $C8
|16EB58| db $22 ; Repeat byte
|16EB59| db $04
|16EB5A| db $00 ; Raw block
|16EB5B| db $02
|16EB5C| db $26 ; Repeat byte
|16EB5D| db $00
|16EB5E| db $08 ; Raw block
|16EB5F| db $01, $00, $03, $00, $07, $00, $0F, $00
|16EB67| db $1F
|16EB68| db $23 ; Repeat byte
|16EB69| db $00
|16EB6A| db $03 ; Raw block
|16EB6B| db $01, $03, $07, $0F
|16EB6F| db $83 ; Copy past
|16EB70| dw $0048
|16EB72| db $02 ; Raw block
|16EB73| db $00, $FF, $08
|16EB76| db $46 ; Repeat word
|16EB77| dw $04FF
|16EB79| db $05 ; Raw block
|16EB7A| db $02, $FF, $00, $07, $3F, $F7
|16EB80| db $22 ; Repeat byte
|16EB81| db $FB
|16EB82| db $E0, $30 ; EXT Raw block
|16EB84| db $FD, $00, $03, $03, $0F, $0C, $1F, $10
|16EB8C| db $3B, $21, $7A, $20, $7F, $40, $CF, $40
|16EB94| db $FF, $00, $03, $0F, $1F, $3E, $3F, $7C
|16EB9C| db $78, $00, $C0, $C0, $F0, $30, $F8, $08
|16EBA4| db $DC, $84, $5E, $04, $FE, $02, $F3, $02
|16EBAC| db $FF, $00, $C0, $F0, $F8, $7C, $FC, $3E
|16EBB4| db $1E
|16EBB5| db $25 ; Repeat byte
|16EBB6| db $00
|16EBB7| db $89 ; Copy past
|16EBB8| dw $0006
|16EBBA| db $22 ; Repeat byte
|16EBBB| db $00
|16EBBC| db $8C ; Copy past
|16EBBD| dw $0013
|16EBBF| db $45 ; Repeat word
|16EBC0| dw $00F7
|16EBC2| db $00 ; Raw block
|16EBC3| db $F6
|16EBC4| db $84 ; Copy past
|16EBC5| dw $0027
|16EBC7| db $22 ; Repeat byte
|16EBC8| db $08
|16EBC9| db $17 ; Raw block
|16EBCA| db $09, $E0, $00, $FC, $E0, $FF, $1C, $E3
|16EBD2| db $03, $DF, $00, $BF, $00, $7F, $00, $FF
|16EBDA| db $00, $E0, $FC, $1F, $1F, $20, $40, $80
|16EBE2| db $26 ; Repeat byte
|16EBE3| db $00
|16EBE4| db $09 ; Raw block
|16EBE5| db $80, $00, $C0, $80, $E0, $40, $F0, $20
|16EBED| db $F8, $10
|16EBEF| db $22 ; Repeat byte
|16EBF0| db $00
|16EBF1| db $04 ; Raw block
|16EBF2| db $80, $C0, $60, $30, $18
|16EBF7| db $2B ; Repeat byte
|16EBF8| db $00
|16EBF9| db $02 ; Raw block
|16EBFA| db $01, $00, $02
|16EBFD| db $25 ; Repeat byte
|16EBFE| db $00
|16EBFF| db $02 ; Raw block
|16EC00| db $01, $02, $05
|16EC03| db $85 ; Copy past
|16EC04| dw $012A
|16EC06| db $06 ; Raw block
|16EC07| db $04, $00, $08, $00, $10, $00, $E0
|16EC0E| db $22 ; Repeat byte
|16EC0F| db $00
|16EC10| db $10 ; Raw block
|16EC11| db $01, $02, $05, $0A, $14, $E8, $10, $E0
|16EC19| db $80, $00, $40, $00, $20, $00, $3E, $00
|16EC21| db $01
|16EC22| db $26 ; Repeat byte
|16EC23| db $00
|16EC24| db $05 ; Raw block
|16EC25| db $40, $A0, $5E, $41, $3E, $01
|16EC2B| db $29 ; Repeat byte
|16EC2C| db $00
|16EC2D| db $06 ; Raw block
|16EC2E| db $C0, $00, $20, $00, $10, $00, $30
|16EC35| db $23 ; Repeat byte
|16EC36| db $00
|16EC37| db $04 ; Raw block
|16EC38| db $C0, $20, $D0, $28, $48
|16EC3D| db $43 ; Repeat word
|16EC3E| dw $103F
|16EC40| db $06 ; Raw block
|16EC41| db $77, $20, $7B, $20, $7D, $20, $FE
|16EC48| db $43 ; Repeat word
|16EC49| dw $FF40
|16EC4B| db $E0, $20 ; EXT Raw block
|16EC4D| db $41, $30, $30, $68, $64, $62, $C1, $C0
|16EC55| db $C1, $FD, $00, $FF, $07, $F9, $1E, $E1
|16EC5D| db $3E, $DC, $7F, $BE, $FF, $BC, $FF, $7B
|16EC65| db $FC, $02, $07, $1E, $3E, $7F, $FF, $FC
|16EC6D| db $FB
|16EC6E| db $43 ; Repeat word
|16EC6F| dw $300F
|16EC71| db $07 ; Raw block
|16EC72| db $17, $60, $0B, $70, $05, $78, $02, $FC
|16EC7A| db $43 ; Repeat word
|16EC7B| dw $FF00
|16EC7D| db $07 ; Raw block
|16EC7E| db $10, $10, $28, $34, $3A, $7D, $7F, $7F
|16EC86| db $8D ; Copy past
|16EC87| dw $0198
|16EC89| db $00 ; Raw block
|16EC8A| db $FB
|16EC8B| db $88 ; Copy past
|16EC8C| dw $01A7
|16EC8E| db $43 ; Repeat word
|16EC8F| dw $3F00
|16EC91| db $06 ; Raw block
|16EC92| db $08, $7F, $04, $7F, $02, $7F, $01
|16EC99| db $44 ; Repeat word
|16EC9A| dw $00FF
|16EC9C| db $10 ; Raw block
|16EC9D| db $1F, $1F, $37, $3B, $3D, $7E, $7F, $7F
|16ECA5| db $02, $FF, $00, $FF, $07, $FF, $18, $FF
|16ECAD| db $20
|16ECAE| db $44 ; Repeat word
|16ECAF| dw $40FF
|16ECB1| db $09 ; Raw block
|16ECB2| db $83, $FC, $FD, $FF, $FF, $F8, $E0, $C0
|16ECBA| db $C0, $83
|16ECBC| db $43 ; Repeat word
|16ECBD| dw $FE41
|16ECBF| db $13 ; Raw block
|16ECC0| db $20, $6F, $20, $7F, $10, $3B, $0C, $1F
|16ECC8| db $03, $0F, $00, $03, $79, $79, $38, $3C
|16ECD0| db $1F, $0F, $03, $00
|16ECD4| db $43 ; Repeat word
|16ECD5| dw $7F82
|16ECD7| db $13 ; Raw block
|16ECD8| db $04, $F6, $04, $FE, $08, $DC, $30, $F8
|16ECE0| db $C0, $F0, $00, $C0, $9E, $9E, $1C, $3C
|16ECE8| db $F8, $F0, $C0, $00
|16ECEC| db $43 ; Repeat word
|16ECED| dw $103F
|16ECEF| db $43 ; Repeat word
|16ECF0| dw $206F
|16ECF2| db $E0, $3C ; EXT Raw block
|16ECF4| db $77, $21, $FA, $43, $FE, $43, $FD, $47
|16ECFC| db $30, $30, $70, $70, $69, $C7, $C3, $C7
|16ED04| db $F6, $00, $FF, $1F, $E1, $7E, $99, $FE
|16ED0C| db $7C, $FF, $FE, $FF, $E1, $FF, $DE, $E1
|16ED14| db $09, $1F, $7E, $FE, $FF, $FF, $E1, $DE
|16ED1C| db $FF, $00, $FF, $80, $FF, $60, $9F, $70
|16ED24| db $2E, $F8, $75, $FC, $F7, $FC, $FB, $FE
|16ED2C| db $00, $80, $60, $70, $F9
|16ED31| db $43 ; Repeat word
|16ED32| dw $FCFE
|16ED34| db $08 ; Raw block
|16ED35| db $08, $FC, $08, $EE, $04, $1E, $04, $FE
|16ED3D| db $04
|16ED3E| db $45 ; Repeat word
|16ED3F| dw $02FF
|16ED41| db $04 ; Raw block
|16ED42| db $0C, $0C, $16, $E6, $06
|16ED47| db $22 ; Repeat byte
|16ED48| db $03
|16ED49| db $47 ; Repeat word
|16ED4A| dw $0002
|16ED4C| db $07 ; Raw block
|16ED4D| db $04, $00, $38, $00, $40, $00, $80, $00
|16ED55| db $23 ; Repeat byte
|16ED56| db $05
|16ED57| db $03 ; Raw block
|16ED58| db $3A, $44, $B8, $40
|16ED5C| db $3B ; Repeat byte
|16ED5D| db $00
|16ED5E| db $02 ; Raw block
|16ED5F| db $01, $00, $03
|16ED62| db $29 ; Repeat byte
|16ED63| db $00
|16ED64| db $03 ; Raw block
|16ED65| db $01, $02, $04, $03
|16ED69| db $22 ; Repeat byte
|16ED6A| db $00
|16ED6B| db $02 ; Raw block
|16ED6C| db $40, $00, $80
|16ED6F| db $22 ; Repeat byte
|16ED70| db $00
|16ED71| db $1D ; Raw block
|16ED72| db $E0, $00, $10, $00, $08, $00, $0F, $00
|16ED7A| db $01, $00, $B8, $40, $E0, $10, $E8, $17
|16ED82| db $10, $0E, $FF, $41, $0D, $C1, $13, $E1
|16ED8A| db $2F, $71, $27, $79, $20, $7F
|16ED90| db $43 ; Repeat word
|16ED91| dw $3F18
|16ED93| db $07 ; Raw block
|16ED94| db $C1, $73, $6D, $31, $39, $3F, $1F, $1F
|16ED9C| db $47 ; Repeat word
|16ED9D| dw $F877
|16ED9F| db $07 ; Raw block
|16EDA0| db $7B, $FC, $CC, $FF, $40, $FF, $20, $FF
|16EDA8| db $23 ; Repeat byte
|16EDA9| db $F7
|16EDAA| db $09 ; Raw block
|16EDAB| db $FB, $CC, $C0, $E0, $00, $FF, $32, $FF
|16EDB3| db $0C, $FF
|16EDB5| db $45 ; Repeat word
|16EDB6| dw $7F20
|16EDB8| db $43 ; Repeat word
|16EDB9| dw $3F18
|16EDBB| db $02 ; Raw block
|16EDBC| db $7F, $4D, $73
|16EDBF| db $22 ; Repeat byte
|16EDC0| db $3F
|16EDC1| db $02 ; Raw block
|16EDC2| db $1F, $1F, $97
|16EDC5| db $46 ; Repeat word
|16EDC6| dw $87F8
|16EDC8| db $02 ; Raw block
|16EDC9| db $83, $FC, $80
|16EDCC| db $84 ; Copy past
|16EDCD| dw $0323
|16EDCF| db $00 ; Raw block
|16EDD0| db $97
|16EDD1| db $22 ; Repeat byte
|16EDD2| db $87
|16EDD3| db $01 ; Raw block
|16EDD4| db $83, $80
|16EDD6| db $87 ; Copy past
|16EDD7| dw $032E
|16EDD9| db $45 ; Repeat word
|16EDDA| dw $7F20
|16EDDC| db $43 ; Repeat word
|16EDDD| dw $3F18
|16EDDF| db $02 ; Raw block
|16EDE0| db $7F, $4D, $73
|16EDE3| db $22 ; Repeat byte
|16EDE4| db $3F
|16EDE5| db $01 ; Raw block
|16EDE6| db $1F, $1F
|16EDE8| db $47 ; Repeat word
|16EDE9| dw $F887
|16EDEB| db $87 ; Copy past
|16EDEC| dw $0350
|16EDEE| db $23 ; Repeat byte
|16EDEF| db $87
|16EDF0| db $84 ; Copy past
|16EDF1| dw $035C
|16EDF3| db $E0, $42 ; EXT Raw block
|16EDF5| db $03, $00, $0F, $03, $1C, $0B, $30, $1B
|16EDFD| db $60, $1C, $63, $0B, $C6, $34, $CF, $00
|16EE05| db $03, $0C, $14, $24, $23, $76, $4C, $00
|16EE0D| db $C0, $00, $F0, $C0, $38, $D0, $0C, $D8
|16EE15| db $06, $38, $C6, $D0, $63, $2C, $F3, $00
|16EE1D| db $C0, $30, $28, $24, $C4, $6E, $32, $FD
|16EE25| db $47, $0D, $C7, $15, $E7, $2D, $77, $25
|16EE2D| db $7F, $23, $7F, $19, $3F, $18, $3F, $C7
|16EE35| db $77, $6F, $37
|16EE38| db $83 ; Copy past
|16EE39| dw $0344
|16EE3B| db $47 ; Repeat word
|16EE3C| dw $C0BF
|16EE3E| db $02 ; Raw block
|16EE3F| db $DE, $E1, $C3
|16EE42| db $84 ; Copy past
|16EE43| dw $0270
|16EE45| db $23 ; Repeat byte
|16EE46| db $BF
|16EE47| db $06 ; Raw block
|16EE48| db $DE, $C3, $00, $80, $7B, $FE, $7A
|16EE4F| db $44 ; Repeat word
|16EE50| dw $7BFE
|16EE52| db $1B ; Raw block
|16EE53| db $FB, $FE, $8C, $FF, $08, $FF, $10, $FF
|16EE5B| db $7E, $7F, $7E, $7E, $FE, $8F, $0F, $1F
|16EE63| db $FF, $02, $60, $03, $98, $07, $F4, $0E
|16EE6B| db $E4, $1E, $04, $FE
|16EE6F| db $43 ; Repeat word
|16EE70| dw $FC18
|16EE72| db $07 ; Raw block
|16EE73| db $03, $9E, $66, $0C, $1C, $FC, $F8, $F8
|16EE7B| db $85 ; Copy past
|16EE7C| dw $0150
|16EE7E| db $06 ; Raw block
|16EE7F| db $30, $00, $0C, $00, $02, $00, $01
|16EE86| db $22 ; Repeat byte
|16EE87| db $00
|16EE88| db $07 ; Raw block
|16EE89| db $40, $A0, $50, $4C, $32, $0D, $02, $01
|16EE91| db $2D ; Repeat byte
|16EE92| db $00
|16EE93| db $00 ; Raw block
|16EE94| db $80
|16EE95| db $26 ; Repeat byte
|16EE96| db $00
|16EE97| db $01 ; Raw block
|16EE98| db $80, $40
|16EE9A| db $27 ; Repeat byte
|16EE9B| db $00
|16EE9C| db $04 ; Raw block
|16EE9D| db $01, $00, $06, $00, $01
|16EEA2| db $25 ; Repeat byte
|16EEA3| db $00
|16EEA4| db $04 ; Raw block
|16EEA5| db $01, $06, $09, $06, $01
|16EEAA| db $85 ; Copy past
|16EEAB| dw $013C
|16EEAD| db $02 ; Raw block
|16EEAE| db $70, $00, $80
|16EEB1| db $22 ; Repeat byte
|16EEB2| db $00
|16EEB3| db $15 ; Raw block
|16EEB4| db $80, $00, $60, $00, $05, $0A, $74, $88
|16EEBC| db $70, $80, $60, $90, $0C, $1F, $06, $0F
|16EEC4| db $03, $07, $01, $03, $00, $01
|16EECA| db $25 ; Repeat byte
|16EECB| db $00
|16EECC| db $03 ; Raw block
|16EECD| db $0F, $07, $03, $01
|16EED1| db $23 ; Repeat byte
|16EED2| db $00
|16EED3| db $17 ; Raw block
|16EED4| db $18, $FF, $27, $FF, $40, $FF, $C0, $FF
|16EEDC| db $F8, $FF, $3F, $FF, $07, $3F, $00, $07
|16EEE4| db $F8, $DF, $BF, $7F, $FF, $3F, $07, $00
|16EEEC| db $89 ; Copy past
|16EEED| dw $0480
|16EEEF| db $25 ; Repeat byte
|16EEF0| db $00
|16EEF1| db $83 ; Copy past
|16EEF2| dw $0490
|16EEF4| db $23 ; Repeat byte
|16EEF5| db $00
|16EEF6| db $F0, $21 ; EXT Copy past
|16EEF8| dw $0498
|16EEFA| db $25 ; Repeat byte
|16EEFB| db $00
|16EEFC| db $83 ; Copy past
|16EEFD| dw $0490
|16EEFF| db $23 ; Repeat byte
|16EF00| db $00
|16EF01| db $97 ; Copy past
|16EF02| dw $0498
|16EF04| db $06 ; Raw block
|16EF05| db $35, $CE, $55, $EE, $24, $6F, $23
|16EF0C| db $88 ; Copy past
|16EF0D| dw $0217
|16EF0F| db $03 ; Raw block
|16EF10| db $4D, $6D, $3C, $3F
|16EF14| db $83 ; Copy past
|16EF15| dw $0224
|16EF17| db $06 ; Raw block
|16EF18| db $AC, $73, $AA, $77, $24, $F6, $C4
|16EF1F| db $88 ; Copy past
|16EF20| dw $022F
|16EF22| db $03 ; Raw block
|16EF23| db $B2, $B6, $3C, $FC
|16EF27| db $83 ; Copy past
|16EF28| dw $023C
|16EF2A| db $89 ; Copy past
|16EF2B| dw $0480
|16EF2D| db $25 ; Repeat byte
|16EF2E| db $00
|16EF2F| db $83 ; Copy past
|16EF30| dw $0490
|16EF32| db $23 ; Repeat byte
|16EF33| db $00
|16EF34| db $02 ; Raw block
|16EF35| db $60, $FF, $5F
|16EF38| db $8C ; Copy past
|16EF39| dw $049B
|16EF3B| db $01 ; Raw block
|16EF3C| db $E0, $BF
|16EF3E| db $85 ; Copy past
|16EF3F| dw $04AA
|16EF41| db $11 ; Raw block
|16EF42| db $60, $FF, $9C, $FF, $02, $FF, $03, $FF
|16EF4A| db $1F, $FF, $FC, $FF, $E0, $FC, $00, $E0
|16EF52| db $7F, $E3
|16EF54| db $62 ; Increment fill
|16EF55| db $FD
|16EF56| db $0C ; Raw block
|16EF57| db $FC, $E0, $00, $30, $F8, $60, $F0, $C0
|16EF5F| db $E0, $80, $C0, $00, $80
|16EF64| db $25 ; Repeat byte
|16EF65| db $00
|16EF66| db $03 ; Raw block
|16EF67| db $F0, $E0, $C0, $80
|16EF6B| db $25 ; Repeat byte
|16EF6C| db $00
|16EF6D| db $02 ; Raw block
|16EF6E| db $03, $00, $04
|16EF71| db $44 ; Repeat word
|16EF72| dw $0800
|16EF74| db $0E ; Raw block
|16EF75| db $18, $00, $60, $00, $80, $00, $03, $04
|16EF7D| db $0B, $14, $14, $64, $98, $60, $80
|16EF84| db $2E ; Repeat byte
|16EF85| db $00
|16EF86| db $01 ; Raw block
|16EF87| db $40, $80
|16EF89| db $27 ; Repeat byte
|16EF8A| db $00
|16EF8B| db $85 ; Copy past
|16EF8C| dw $013A
|16EF8E| db $00 ; Raw block
|16EF8F| db $03
|16EF90| db $26 ; Repeat byte
|16EF91| db $00
|16EF92| db $03 ; Raw block
|16EF93| db $01, $02, $05, $0B
|16EF97| db $83 ; Copy past
|16EF98| dw $02E3
|16EF9A| db $02 ; Raw block
|16EF9B| db $10, $00, $F0
|16EF9E| db $24 ; Repeat byte
|16EF9F| db $00
|16EFA0| db $02 ; Raw block
|16EFA1| db $C0, $00, $38
|16EFA4| db $84 ; Copy past
|16EFA5| dw $0459
|16EFA7| db $07 ; Raw block
|16EFA8| db $E8, $08, $F0, $C0, $38, $C6, $39, $06
|16EFB0| db $FF ; End of GFX B0

;===================================================================================================

GFX_B1:
|16EFB1| db $27 ; Repeat byte
|16EFB2| db $00
|16EFB3| db $00 ; Raw block
|16EFB4| db $01
|16EFB5| db $44 ; Repeat word
|16EFB6| dw $0300
|16EFB8| db $01 ; Raw block
|16EFB9| db $05, $02
|16EFBB| db $23 ; Repeat byte
|16EFBC| db $00
|16EFBD| db $03 ; Raw block
|16EFBE| db $01, $02, $02, $06
|16EFC2| db $27 ; Repeat byte
|16EFC3| db $00
|16EFC4| db $00 ; Raw block
|16EFC5| db $80
|16EFC6| db $44 ; Repeat word
|16EFC7| dw $C000
|16EFC9| db $01 ; Raw block
|16EFCA| db $A0, $40
|16EFCC| db $23 ; Repeat byte
|16EFCD| db $00
|16EFCE| db $E0, $6C ; EXT Raw block
|16EFD0| db $80, $40, $40, $60, $DF, $7F, $D1, $7F
|16EFD8| db $D4, $7B, $CA, $7D, $CB, $7C, $C5, $7E
|16EFE0| db $42, $3F, $43, $3F, $DF, $DF, $DB, $CD
|16EFE8| db $CC, $C6, $43, $43, $38, $FF, $87, $FF
|16EFF0| db $C0, $FF, $70, $FF, $38, $FF, $8C, $7F
|16EFF8| db $DE, $3F, $58, $BF, $3F, $87, $C0, $F0
|16F000| db $F8, $7C, $3E, $B8, $FB, $FC, $F9, $FE
|16F008| db $79, $FE, $39, $FE, $19, $FE, $0C, $FF
|16F010| db $0D, $FE, $0C, $FF, $FC, $FE, $7E, $3E
|16F018| db $1E, $0F, $0E, $0F, $DF, $3F, $9F, $7F
|16F020| db $9E, $7F, $9C, $7F, $98, $7F, $30, $FF
|16F028| db $B0, $7F, $30, $FF, $3F, $7F, $7E, $7C
|16F030| db $78, $F0, $70, $F0, $80, $7F, $60, $1F
|16F038| db $18, $07, $06, $01, $03
|16F03D| db $26 ; Repeat byte
|16F03E| db $00
|16F03F| db $04 ; Raw block
|16F040| db $81, $60, $18, $06, $03
|16F045| db $23 ; Repeat byte
|16F046| db $00
|16F047| db $0B ; Raw block
|16F048| db $07, $01, $CF, $C0, $FF, $01, $FF, $C3
|16F050| db $3F, $3F, $07, $0F
|16F054| db $22 ; Repeat byte
|16F055| db $00
|16F056| db $07 ; Raw block
|16F057| db $01, $C9, $F1, $01, $C3, $3F, $0F, $00
|16F05F| db $85 ; Copy past
|16F060| dw $0030
|16F062| db $E0, $3D ; EXT Raw block
|16F064| db $DA, $6D, $CB, $74, $CA, $77, $49, $36
|16F06C| db $46, $38, $DF, $DF, $DB, $FD, $DC, $DF
|16F074| db $4F, $46, $28, $FF, $97, $EF, $ED, $DE
|16F07C| db $45, $FE, $2A, $D5, $D4, $03, $04, $03
|16F084| db $08, $07, $2F, $9F, $FF, $FF, $FE, $D4
|16F08C| db $06, $0C, $00, $03, $00, $0F, $03, $0F
|16F094| db $07, $5F, $0D, $9F, $09, $DF, $09, $FF
|16F09C| db $24, $FF, $00, $00, $03, $07
|16F0A2| db $22 ; Repeat byte
|16F0A3| db $0F
|16F0A4| db $10 ; Raw block
|16F0A5| db $27, $00, $F0, $00, $E8, $80, $C0, $00
|16F0AD| db $F8, $70, $FE, $98, $FE, $0C, $FF, $7C
|16F0B5| db $FF
|16F0B6| db $83 ; Copy past
|16F0B7| dw $001E
|16F0B9| db $03 ; Raw block
|16F0BA| db $70, $F8, $FC, $FC
|16F0BE| db $24 ; Repeat byte
|16F0BF| db $00
|16F0C0| db $0A ; Raw block
|16F0C1| db $03, $00, $07, $01, $2F, $03, $2F, $0A
|16F0C9| db $3F, $0E, $3F
|16F0CC| db $23 ; Repeat byte
|16F0CD| db $00
|16F0CE| db $03 ; Raw block
|16F0CF| db $01, $03, $0B, $0F
|16F0D3| db $24 ; Repeat byte
|16F0D4| db $00
|16F0D5| db $0A ; Raw block
|16F0D6| db $F0, $00, $C0, $C0, $F0, $80, $F8, $E0
|16F0DE| db $FC, $30, $FC
|16F0E1| db $23 ; Repeat byte
|16F0E2| db $00
|16F0E3| db $E0, $35 ; EXT Raw block
|16F0E5| db $C0, $80, $E0, $F0, $60, $00, $F8, $00
|16F0ED| db $CC, $30, $C6, $38, $42, $3C, $63, $1C
|16F0F5| db $33, $0C, $1F, $00, $60, $F8, $CC, $C6
|16F0FD| db $42, $63, $33, $1F, $60, $00, $98, $60
|16F105| db $A4, $78, $BA, $7C, $76, $3C, $59, $3E
|16F10D| db $25, $1E, $19, $06, $60, $98, $A4, $BA
|16F115| db $7E, $5D, $25, $19, $05, $02
|16F11B| db $43 ; Repeat word
|16F11C| dw $0609
|16F11E| db $43 ; Repeat word
|16F11F| dw $0C13
|16F121| db $0F ; Raw block
|16F122| db $27, $18, $C3, $3C, $33, $FC, $06, $0E
|16F12A| db $0E, $1C, $1C, $38, $FC, $FC, $A0, $40
|16F132| db $43 ; Repeat word
|16F133| dw $6090
|16F135| db $43 ; Repeat word
|16F136| dw $30C8
|16F138| db $13 ; Raw block
|16F139| db $E4, $18, $C3, $3C, $CC, $3F, $60, $70
|16F141| db $70, $38, $38, $1C, $3F, $3F, $43, $3F
|16F149| db $21, $1F, $20, $1F
|16F14D| db $43 ; Repeat word
|16F14E| dw $0F10
|16F150| db $E0, $2F ; EXT Raw block
|16F152| db $08, $07, $04, $03, $02, $01, $43, $21
|16F15A| db $20, $10, $10, $08, $04, $02, $58, $BF
|16F162| db $30, $FF, $B0, $FC, $E0, $F8, $60, $F8
|16F16A| db $20, $F8, $30, $FC, $10, $FC, $B8, $F0
|16F172| db $F0, $E0, $60, $20, $34, $10, $0C, $FF
|16F17A| db $05, $FE, $04, $FF, $06, $3F, $02, $1F
|16F182| db $44 ; Repeat word
|16F183| dw $0F02
|16F185| db $04 ; Raw block
|16F186| db $07, $0F, $06, $07, $07
|16F18B| db $23 ; Repeat byte
|16F18C| db $03
|16F18D| db $09 ; Raw block
|16F18E| db $30, $FF, $A0, $7F, $20, $FF, $60, $FC
|16F196| db $40, $F8
|16F198| db $44 ; Repeat word
|16F199| dw $F040
|16F19B| db $04 ; Raw block
|16F19C| db $E0, $F0, $60, $E0, $E0
|16F1A1| db $23 ; Repeat byte
|16F1A2| db $C0
|16F1A3| db $E4, $2F ; EXT Repeat byte
|16F1A5| db $00
|16F1A6| db $02 ; Raw block
|16F1A7| db $44, $38, $38
|16F1AA| db $26 ; Repeat byte
|16F1AB| db $00
|16F1AC| db $01 ; Raw block
|16F1AD| db $01, $00
|16F1AF| db $43 ; Repeat word
|16F1B0| dw $0102
|16F1B2| db $01 ; Raw block
|16F1B3| db $4C, $38
|16F1B5| db $22 ; Repeat byte
|16F1B6| db $00
|16F1B7| db $83 ; Copy past
|16F1B8| dw $0014
|16F1BA| db $00 ; Raw block
|16F1BB| db $03
|16F1BC| db $83 ; Copy past
|16F1BD| dw $01BC
|16F1BF| db $E0, $2A ; EXT Raw block
|16F1C1| db $00, $00, $40, $00, $B8, $40, $70, $BC
|16F1C9| db $90, $7C, $06, $06, $03, $00, $40, $B8
|16F1D1| db $74, $90, $3E, $FF, $30, $FF, $19, $7F
|16F1D9| db $0E, $7F, $00, $1F, $01, $03, $00, $17
|16F1E1| db $00, $0F, $3F, $3F, $1F, $0E, $00, $01
|16F1E9| db $00, $00, $24
|16F1EC| db $43 ; Repeat word
|16F1ED| dw $90FF
|16F1EF| db $05 ; Raw block
|16F1F0| db $FB, $B0, $F9, $E0, $FA, $C0
|16F1F6| db $43 ; Repeat word
|16F1F7| dw $00F0
|16F1F9| db $01 ; Raw block
|16F1FA| db $C0, $E4
|16F1FC| db $22 ; Repeat byte
|16F1FD| db $F0
|16F1FE| db $0B ; Raw block
|16F1FF| db $E0, $C0, $00, $00, $0C, $3F, $07, $3F
|16F207| db $01, $1F, $03, $0F
|16F20B| db $83 ; Copy past
|16F20C| dw $00F0
|16F20E| db $23 ; Repeat byte
|16F20F| db $00
|16F210| db $03 ; Raw block
|16F211| db $0F, $07, $01, $03
|16F215| db $23 ; Repeat byte
|16F216| db $00
|16F217| db $0B ; Raw block
|16F218| db $70, $FC, $50, $FC, $C0, $F4, $80, $F4
|16F220| db $00, $E0, $00, $C0
|16F224| db $23 ; Repeat byte
|16F225| db $00
|16F226| db $03 ; Raw block
|16F227| db $F0, $D0, $C0, $80
|16F22B| db $23 ; Repeat byte
|16F22C| db $00
|16F22D| db $E0, $2E ; EXT Raw block
|16F22F| db $60, $00, $B8, $60, $DC, $78, $C6, $7C
|16F237| db $4A, $34, $67, $3A, $3B, $1E, $1D, $06
|16F23F| db $60, $B8, $FC, $FE, $76, $7B, $3F, $1D
|16F247| db $00, $1C, $10, $38, $10, $BE, $06, $FF
|16F24F| db $60, $FF, $08, $7D, $08, $1C, $00, $38
|16F257| db $00, $10, $10, $1E, $78, $08, $08
|16F25E| db $24 ; Repeat byte
|16F25F| db $00
|16F260| db $06 ; Raw block
|16F261| db $10, $00, $38, $10, $28, $10, $10
|16F268| db $43 ; Repeat word
|16F269| dw $0100
|16F26B| db $22 ; Repeat byte
|16F26C| db $00
|16F26D| db $05 ; Raw block
|16F26E| db $10, $38, $38, $10, $01, $01
|16F274| db $27 ; Repeat byte
|16F275| db $00
|16F276| db $07 ; Raw block
|16F277| db $20, $00, $D0, $20, $50, $E0, $28, $F0
|16F27F| db $23 ; Repeat byte
|16F280| db $00
|16F281| db $03 ; Raw block
|16F282| db $20, $D0, $D0, $A8
|16F286| db $23 ; Repeat byte
|16F287| db $00
|16F288| db $13 ; Raw block
|16F289| db $02, $00, $05, $02, $04, $03, $0B, $07
|16F291| db $11, $0F, $13, $0F, $00, $00, $02, $05
|16F299| db $04, $0B, $19, $1B
|16F29D| db $25 ; Repeat byte
|16F29E| db $00
|16F29F| db $09 ; Raw block
|16F2A0| db $80, $00, $40, $80, $20, $C0, $B0, $E0
|16F2A8| db $C8, $F0
|16F2AA| db $22 ; Repeat byte
|16F2AB| db $00
|16F2AC| db $E0, $34 ; EXT Raw block
|16F2AE| db $80, $40, $20, $B0, $C8, $E0, $00, $DB
|16F2B6| db $60, $94, $7B, $63, $2F, $42, $37, $20
|16F2BE| db $1F, $58, $3E, $A1, $7C, $E0, $DB, $B4
|16F2C6| db $7B, $5F, $2F, $5F, $BE, $07, $00, $DB
|16F2CE| db $06, $29, $DE, $C6, $F4, $42, $EC, $04
|16F2D6| db $F8, $1A, $7C, $85, $3E, $07, $DB, $2D
|16F2DE| db $DE, $FA, $F4, $FA, $7D
|16F2E3| db $E4, $F3 ; EXT Repeat byte
|16F2E5| db $00
|16F2E6| db $06 ; Raw block
|16F2E7| db $08, $00, $1C, $08, $24, $18, $18
|16F2EE| db $26 ; Repeat byte
|16F2EF| db $00
|16F2F0| db $08 ; Raw block
|16F2F1| db $08, $1C, $3C, $18, $00, $00, $A8, $70
|16F2F9| db $70
|16F2FA| db $2C ; Repeat byte
|16F2FB| db $00
|16F2FC| db $01 ; Raw block
|16F2FD| db $E8, $70
|16F2FF| db $25 ; Repeat byte
|16F300| db $00
|16F301| db $06 ; Raw block
|16F302| db $21, $1F, $10, $0F, $09, $06, $06
|16F309| db $28 ; Repeat byte
|16F30A| db $00
|16F30B| db $03 ; Raw block
|16F30C| db $31, $19, $0F, $06
|16F310| db $23 ; Repeat byte
|16F311| db $00
|16F312| db $06 ; Raw block
|16F313| db $A4, $F8, $04, $F8, $08, $F0, $F0
|16F31A| db $28 ; Repeat byte
|16F31B| db $00
|16F31C| db $03 ; Raw block
|16F31D| db $A4, $04, $D8, $F0
|16F321| db $23 ; Repeat byte
|16F322| db $00
|16F323| db $E0, $2F ; EXT Raw block
|16F325| db $A1, $7C, $58, $3E, $20, $1F, $42, $37
|16F32D| db $63, $2F, $94, $7B, $DB, $60, $E0, $00
|16F335| db $BE, $5F, $2F, $5F, $7B, $B4, $DB, $E0
|16F33D| db $85, $3E, $1A, $7C, $04, $F8, $42, $EC
|16F345| db $C6, $F4, $29, $DE, $DB, $06, $07, $00
|16F34D| db $7D, $FA, $F4, $FA, $DE, $2D, $DB, $07
|16F355| db $E4, $EF ; EXT Repeat byte
|16F357| db $00
|16F358| db $FF ; End of GFX B1

;===================================================================================================

GFX_B2:
|16F359| db $17 ; Raw block
|16F35A| db $E0, $00, $D8, $40, $DE, $58, $E7, $AE
|16F362| db $E1, $AF, $74, $DF, $FA, $2F, $7D, $D7
|16F36A| db $E0, $B8, $BE, $D7, $D1, $68, $F4, $BA
|16F372| db $25 ; Repeat byte
|16F373| db $00
|16F374| db $03 ; Raw block
|16F375| db $80, $00, $C0, $80
|16F379| db $43 ; Repeat word
|16F37A| dw $C060
|16F37C| db $01 ; Raw block
|16F37D| db $30, $E0
|16F37F| db $22 ; Repeat byte
|16F380| db $00
|16F381| db $04 ; Raw block
|16F382| db $80, $C0, $60, $60, $30
|16F387| db $2B ; Repeat byte
|16F388| db $00
|16F389| db $03 ; Raw block
|16F38A| db $01, $00, $03, $01
|16F38E| db $25 ; Repeat byte
|16F38F| db $00
|16F390| db $01 ; Raw block
|16F391| db $01, $03
|16F393| db $23 ; Repeat byte
|16F394| db $00
|16F395| db $13 ; Raw block
|16F396| db $01, $00, $1F, $00, $7F, $1C, $FF, $78
|16F39E| db $FF, $E0, $7F, $C0, $00, $00, $01, $1F
|16F3A6| db $7F, $DF, $BF, $7F
|16F3AA| db $23 ; Repeat byte
|16F3AB| db $00
|16F3AC| db $11 ; Raw block
|16F3AD| db $F0, $00, $FE, $30, $FF, $CE, $8B, $F7
|16F3B5| db $78, $FF, $7D, $FF, $00, $00, $F0, $FE
|16F3BD| db $FF, $8B
|16F3BF| db $29 ; Repeat byte
|16F3C0| db $00
|16F3C1| db $07 ; Raw block
|16F3C2| db $80, $00, $E0, $80, $70, $E0, $18, $F0
|16F3CA| db $23 ; Repeat byte
|16F3CB| db $00
|16F3CC| db $1B ; Raw block
|16F3CD| db $80, $E0, $70, $18, $FE, $7F, $FD, $BF
|16F3D5| db $FB, $DF, $F7, $EF, $EF, $F7, $DF, $FB
|16F3DD| db $BF, $FD, $7F, $FE, $FE, $FD, $FB, $F7
|16F3E5| db $EF, $DF, $BF, $7F
|16F3E9| db $97 ; Copy past
|16F3EA| dw $0090
|16F3EC| db $F0, $2F ; EXT Copy past
|16F3EE| dw $0090
|16F3F0| db $F0, $5F ; EXT Copy past
|16F3F2| dw $0090
|16F3F4| db $F0, $2F ; EXT Copy past
|16F3F6| dw $0090
|16F3F8| db $1F ; Raw block
|16F3F9| db $2C, $B4, $2E, $FB, $7C, $4B, $4E, $73
|16F401| db $4E, $FB, $3C, $52, $BC, $EA, $7D, $D0
|16F409| db $CB, $0C, $BD, $8D, $0D, $BF, $31, $63
|16F411| db $B0, $E0, $38, $F0, $98, $F0, $F8, $D0
|16F419| db $44 ; Repeat word
|16F41A| dw $E8DC
|16F41C| db $06 ; Raw block
|16F41D| db $F0, $3C, $F0, $30, $38, $18, $38
|16F424| db $22 ; Repeat byte
|16F425| db $1C
|16F426| db $E0, $60 ; EXT Raw block
|16F428| db $3C, $06, $03, $0E, $07, $1C, $0E, $35
|16F430| db $1C, $25, $1E, $53, $3C, $47, $3B, $5D
|16F438| db $27, $06, $0C, $1B, $33, $29, $43, $47
|16F440| db $5C, $FF, $80, $CD, $33, $BA, $67, $B4
|16F448| db $4D, $F9, $1B, $C7, $06, $7F, $C1, $83
|16F450| db $B3, $FF, $CC, $99, $B3, $E6, $F9, $7F
|16F458| db $7C, $80, $1E, $1A, $7E, $FF, $01, $FF
|16F460| db $56, $E4, $BB, $E7, $5B, $9C, $FE, $40
|16F468| db $D3, $FD, $A1, $3E, $3F, $64, $E4, $81
|16F470| db $2D, $98, $F0, $4C, $F8, $AC, $F8, $C6
|16F478| db $7C, $E6, $A4, $F9, $58, $FF, $A6, $5F
|16F480| db $B8, $18, $8C, $4C, $A6, $DE, $E7, $79
|16F488| db $DF
|16F489| db $F0, $EF ; EXT Copy past
|16F48B| dw $0090
|16F48D| db $18 ; Raw block
|16F48E| db $F3, $DE, $E5, $B6, $6B, $2C, $57, $18
|16F496| db $5D, $92, $5D, $86, $73, $4C, $BF, $C1
|16F49E| db $6D, $59, $D3, $E7, $ED, $F9, $F3, $3F
|16F4A6| db $FC
|16F4A7| db $43 ; Repeat word
|16F4A8| dw $F800
|16F4AA| db $00 ; Raw block
|16F4AB| db $10
|16F4AC| db $43 ; Repeat word
|16F4AD| dw $30F8
|16F4AF| db $06 ; Raw block
|16F4B0| db $F0, $60, $F0, $E0, $60, $C0, $FC
|16F4B7| db $23 ; Repeat byte
|16F4B8| db $F8
|16F4B9| db $02 ; Raw block
|16F4BA| db $D0, $B0, $60
|16F4BD| db $25 ; Repeat byte
|16F4BE| db $00
|16F4BF| db $09 ; Raw block
|16F4C0| db $03, $00, $07, $03, $0D, $07, $1B, $0F
|16F4C8| db $1F, $0E
|16F4CA| db $22 ; Repeat byte
|16F4CB| db $00
|16F4CC| db $0A ; Raw block
|16F4CD| db $03, $04, $09, $13, $1F, $0F, $00, $3C
|16F4D5| db $07, $F8, $2D
|16F4D8| db $43 ; Repeat word
|16F4D9| dw $DAF1
|16F4DB| db $0D ; Raw block
|16F4DC| db $E8, $BB, $D0, $77, $92, $F2, $0F, $3C
|16F4E4| db $FB, $76, $F6, $E7, $CF, $8D
|16F4EA| db $22 ; Repeat byte
|16F4EB| db $00
|16F4EC| db $07 ; Raw block
|16F4ED| db $01, $01, $02, $10, $01, $00, $00, $04
|16F4F5| db $25 ; Repeat byte
|16F4F6| db $00
|16F4F7| db $02 ; Raw block
|16F4F8| db $01, $02, $01
|16F4FB| db $28 ; Repeat byte
|16F4FC| db $00
|16F4FD| db $07 ; Raw block
|16F4FE| db $90, $10, $28, $00, $10, $00, $00, $10
|16F506| db $43 ; Repeat word
|16F507| dw $0010
|16F509| db $06 ; Raw block
|16F50A| db $00, $90, $28, $10, $00, $10, $10
|16F511| db $28 ; Repeat byte
|16F512| db $00
|16F513| db $04 ; Raw block
|16F514| db $02, $02, $05, $00, $02
|16F519| db $25 ; Repeat byte
|16F51A| db $00
|16F51B| db $02 ; Raw block
|16F51C| db $02, $05, $02
|16F51F| db $2C ; Repeat byte
|16F520| db $00
|16F521| db $83 ; Copy past
|16F522| dw $0384
|16F524| db $25 ; Repeat byte
|16F525| db $00
|16F526| db $01 ; Raw block
|16F527| db $10, $10
|16F529| db $E4, $26 ; EXT Repeat byte
|16F52B| db $00
|16F52C| db $00 ; Raw block
|16F52D| db $10
|16F52E| db $26 ; Repeat byte
|16F52F| db $00
|16F530| db $00 ; Raw block
|16F531| db $10
|16F532| db $F0, $5F ; EXT Copy past
|16F534| dw $0090
|16F536| db $25 ; Repeat byte
|16F537| db $00
|16F538| db $09 ; Raw block
|16F539| db $03, $03, $0C, $0F, $13, $1C, $27, $38
|16F541| db $2F, $30
|16F543| db $23 ; Repeat byte
|16F544| db $00
|16F545| db $03 ; Raw block
|16F546| db $03, $0C, $18, $1E
|16F54A| db $25 ; Repeat byte
|16F54B| db $00
|16F54C| db $09 ; Raw block
|16F54D| db $C0, $C0, $30, $F0, $C8, $38, $E4, $1C
|16F555| db $F4, $0C
|16F557| db $23 ; Repeat byte
|16F558| db $00
|16F559| db $10 ; Raw block
|16F55A| db $C0, $30, $18, $08, $F8, $C3, $63, $D7
|16F562| db $DF, $BE, $86, $7C, $AC, $78, $18, $E0
|16F56A| db $E0
|16F56B| db $22 ; Repeat byte
|16F56C| db $00
|16F56D| db $0A ; Raw block
|16F56E| db $7C, $6D, $C3, $96, $8C, $18, $E0, $00
|16F576| db $C0, $80, $80
|16F579| db $2C ; Repeat byte
|16F57A| db $00
|16F57B| db $01 ; Raw block
|16F57C| db $C0, $80
|16F57E| db $25 ; Repeat byte
|16F57F| db $00
|16F580| db $08 ; Raw block
|16F581| db $3F, $18, $3F, $16, $7B, $2F, $71, $1F
|16F589| db $F1
|16F58A| db $44 ; Repeat word
|16F58B| dw $E37F
|16F58D| db $06 ; Raw block
|16F58E| db $E7, $7F, $3F, $3D, $7A, $71, $F0
|16F595| db $22 ; Repeat byte
|16F596| db $E0
|16F597| db $0B ; Raw block
|16F598| db $9F, $FF, $89, $FF, $E3, $7F, $F7, $9C
|16F5A0| db $7C, $6B, $9B, $B7
|16F5A4| db $43 ; Repeat word
|16F5A5| dw $D6DA
|16F5A7| db $10 ; Raw block
|16F5A8| db $80, $80, $E3, $77, $9C, $48, $29, $29
|16F5B0| db $00, $01, $11, $12, $00, $11, $54, $6C
|16F5B8| db $00
|16F5B9| db $22 ; Repeat byte
|16F5BA| db $10
|16F5BB| db $23 ; Repeat byte
|16F5BC| db $00
|16F5BD| db $03 ; Raw block
|16F5BE| db $01, $12, $11, $6C
|16F5C2| db $83 ; Copy past
|16F5C3| dw $038E
|16F5C5| db $06 ; Raw block
|16F5C6| db $54, $6C, $00, $90, $10, $10, $40
|16F5CD| db $28 ; Repeat byte
|16F5CE| db $00
|16F5CF| db $02 ; Raw block
|16F5D0| db $6C, $90, $10
|16F5D3| db $28 ; Repeat byte
|16F5D4| db $00
|16F5D5| db $00 ; Raw block
|16F5D6| db $01
|16F5D7| db $32 ; Repeat byte
|16F5D8| db $00
|16F5D9| db $02 ; Raw block
|16F5DA| db $54, $6C, $00
|16F5DD| db $22 ; Repeat byte
|16F5DE| db $10
|16F5DF| db $29 ; Repeat byte
|16F5E0| db $00
|16F5E1| db $02 ; Raw block
|16F5E2| db $6C, $10, $10
|16F5E5| db $2A ; Repeat byte
|16F5E6| db $00
|16F5E7| db $00 ; Raw block
|16F5E8| db $04
|16F5E9| db $30 ; Repeat byte
|16F5EA| db $00
|16F5EB| db $85 ; Copy past
|16F5EC| dw $037E
|16F5EE| db $00 ; Raw block
|16F5EF| db $40
|16F5F0| db $28 ; Repeat byte
|16F5F1| db $00
|16F5F2| db $01 ; Raw block
|16F5F3| db $28, $10
|16F5F5| db $25 ; Repeat byte
|16F5F6| db $00
|16F5F7| db $F0, $5F ; EXT Copy past
|16F5F9| dw $0090
|16F5FB| db $09 ; Raw block
|16F5FC| db $3F, $20, $1F, $3A, $0F, $14, $07, $08
|16F604| db $00, $07
|16F606| db $25 ; Repeat byte
|16F607| db $00
|16F608| db $03 ; Raw block
|16F609| db $3F, $11, $0B, $07
|16F60D| db $23 ; Repeat byte
|16F60E| db $00
|16F60F| db $09 ; Raw block
|16F610| db $F4, $0C, $F8, $0C, $E0, $18, $E0, $10
|16F618| db $00, $E0
|16F61A| db $25 ; Repeat byte
|16F61B| db $00
|16F61C| db $02 ; Raw block
|16F61D| db $0C, $88, $90
|16F620| db $24 ; Repeat byte
|16F621| db $00
|16F622| db $FF ; End of GFX B2

;===================================================================================================

GFX_B3:
|16F623| db $29 ; Repeat byte
|16F624| db $00
|16F625| db $05 ; Raw block
|16F626| db $01, $00, $03, $01, $07, $01
|16F62C| db $24 ; Repeat byte
|16F62D| db $00
|16F62E| db $E0, $32 ; EXT Raw block
|16F630| db $01, $03, $07, $00, $00, $07, $00, $1F
|16F638| db $07, $78, $1F, $F9, $67, $C5, $FB, $86
|16F640| db $FF, $8D, $FD, $00, $07, $1F, $78, $F8
|16F648| db $C4, $80, $82, $FC, $00, $FF, $FC, $00
|16F650| db $FF, $3F, $FF, $C0, $C0, $3F, $3C, $FF
|16F658| db $C3, $7E, $AF, $FC, $FF, $00, $00, $3F
|16F660| db $C3, $3F, $7E
|16F663| db $23 ; Repeat byte
|16F664| db $00
|16F665| db $E0, $2B ; EXT Raw block
|16F667| db $80, $00, $E0, $80, $F0, $00, $F8, $80
|16F66F| db $F8, $C0, $6C, $F8, $00, $00, $80, $60
|16F677| db $F0, $F8, $F8, $64, $F0, $00, $2E, $F0
|16F67F| db $99, $76, $9C, $77, $8E, $7F, $CE, $3F
|16F687| db $CE, $FF, $8C, $7F, $F0, $EE, $79, $7C
|16F68F| db $6E, $1E, $DE, $6C
|16F693| db $23 ; Repeat byte
|16F694| db $00
|16F695| db $03 ; Raw block
|16F696| db $80, $00, $40, $80
|16F69A| db $47 ; Repeat word
|16F69B| dw $C020
|16F69D| db $03 ; Raw block
|16F69E| db $00, $00, $80, $40
|16F6A2| db $23 ; Repeat byte
|16F6A3| db $20
|16F6A4| db $E0, $2F ; EXT Raw block
|16F6A6| db $03, $00, $0C, $03, $1D, $06, $2D, $16
|16F6AE| db $78, $2D, $4E, $36, $85, $6B, $86, $6B
|16F6B6| db $03, $0D, $1C, $2E, $5B, $4D, $9C, $96
|16F6BE| db $C0, $00, $30, $C0, $B8, $60, $B4, $68
|16F6C6| db $1E, $B4, $72, $6C, $A1, $D6, $61, $D6
|16F6CE| db $C0, $B0, $38, $74, $DA, $B2, $39, $69
|16F6D6| db $23 ; Repeat byte
|16F6D7| db $00
|16F6D8| db $13 ; Raw block
|16F6D9| db $03, $00, $0E, $01, $1A, $07, $15, $0E
|16F6E1| db $2A, $1D, $17, $09, $00, $00, $03, $0D
|16F6E9| db $16, $1D, $2B, $17
|16F6ED| db $23 ; Repeat byte
|16F6EE| db $00
|16F6EF| db $1B ; Raw block
|16F6F0| db $C0, $00, $70, $80, $58, $E0, $A8, $70
|16F6F8| db $54, $B8, $E8, $90, $00, $00, $C0, $B0
|16F700| db $68, $B8, $D4, $E8, $3F, $00, $3C, $00
|16F708| db $38, $00, $30, $00
|16F70C| db $43 ; Repeat word
|16F70D| dw $1020
|16F70F| db $03 ; Raw block
|16F710| db $10, $08, $18, $08
|16F714| db $23 ; Repeat byte
|16F715| db $3F
|16F716| db $0B ; Raw block
|16F717| db $2F, $2F, $17, $1F, $FC, $00, $3C, $00
|16F71F| db $1C, $00, $0C, $00
|16F723| db $43 ; Repeat word
|16F724| dw $0804
|16F726| db $03 ; Raw block
|16F727| db $08, $10, $18, $10
|16F72B| db $23 ; Repeat byte
|16F72C| db $FC
|16F72D| db $03 ; Raw block
|16F72E| db $F4, $F4, $E8, $F8
|16F732| db $25 ; Repeat byte
|16F733| db $00
|16F734| db $01 ; Raw block
|16F735| db $01, $00
|16F737| db $43 ; Repeat word
|16F738| dw $0102
|16F73A| db $43 ; Repeat word
|16F73B| dw $0106
|16F73D| db $22 ; Repeat byte
|16F73E| db $00
|16F73F| db $0C ; Raw block
|16F740| db $01, $02, $02, $06, $06, $00, $00, $70
|16F748| db $00, $8C, $70, $02, $FC
|16F74D| db $47 ; Repeat word
|16F74E| dw $FE01
|16F750| db $03 ; Raw block
|16F751| db $00, $70, $8C, $02
|16F755| db $23 ; Repeat byte
|16F756| db $01
|16F757| db $E4, $2F ; EXT Repeat byte
|16F759| db $00
|16F75A| db $43 ; Repeat word
|16F75B| dw $0007
|16F75D| db $45 ; Repeat word
|16F75E| dw $040F
|16F760| db $43 ; Repeat word
|16F761| dw $081F
|16F763| db $03 ; Raw block
|16F764| db $1E, $09, $07, $07
|16F768| db $22 ; Repeat byte
|16F769| db $0F
|16F76A| db $E0, $36 ; EXT Raw block
|16F76C| db $1F, $1F, $1E, $8B, $FB, $1B, $FE, $A3
|16F774| db $5E, $DB, $3E, $DF, $38, $D7, $3D, $57
|16F77C| db $BD, $57, $B5, $84, $05, $A5, $C1, $C3
|16F784| db $CB, $4B, $4A, $CB, $77, $D1, $37, $A0
|16F78C| db $D7, $A1, $E8, $C2, $C7, $8C, $4B, $D3
|16F794| db $FD, $FF, $DC, $C8, $CC, $AE, $97, $B8
|16F79C| db $B4, $03, $3F, $6A, $CC, $EA, $CC
|16F7A3| db $44 ; Repeat word
|16F7A4| dw $AEEB
|16F7A6| db $08 ; Raw block
|16F7A7| db $2E, $EB, $AE, $D3, $5E, $53, $DE, $72
|16F7AF| db $F2
|16F7B0| db $23 ; Repeat byte
|16F7B1| db $D3
|16F7B2| db $09 ; Raw block
|16F7B3| db $A3, $23, $98, $77, $39, $F6, $3F, $F0
|16F7BB| db $2E, $F1
|16F7BD| db $43 ; Repeat word
|16F7BE| dw $E15E
|16F7C0| db $43 ; Repeat word
|16F7C1| dw $C1BE
|16F7C3| db $09 ; Raw block
|16F7C4| db $78, $F9, $FF, $EE, $DE, $DE, $BE, $BE
|16F7CC| db $40, $80
|16F7CE| db $49 ; Repeat word
|16F7CF| dw $0080
|16F7D1| db $04 ; Raw block
|16F7D2| db $40, $80, $C0, $80, $40
|16F7D7| db $24 ; Repeat byte
|16F7D8| db $80
|16F7D9| db $E0, $3C ; EXT Raw block
|16F7DB| db $C0, $C0, $96, $7B, $D6, $7B, $67, $3B
|16F7E3| db $7F, $33, $3F, $17, $1F, $0F, $0F, $03
|16F7EB| db $03, $00, $86, $C6, $47, $76, $3E, $1F
|16F7F3| db $0F, $03, $69, $DE, $6B, $DE, $E6, $DC
|16F7FB| db $FE, $CC, $FC, $E8, $F8, $F0, $F0, $C0
|16F803| db $C0, $00, $61, $63, $E2, $6E, $7C, $F8
|16F80B| db $F0, $C0, $16, $09, $2A, $15, $15, $0A
|16F813| db $19, $06, $0D, $02, $03
|16F818| db $24 ; Repeat byte
|16F819| db $00
|16F81A| db $12 ; Raw block
|16F81B| db $16, $2A, $15, $19, $0D, $03, $00, $00
|16F823| db $68, $90, $54, $A8, $A8, $50, $98, $60
|16F82B| db $B0, $40, $C0
|16F82E| db $24 ; Repeat byte
|16F82F| db $00
|16F830| db $0E ; Raw block
|16F831| db $68, $54, $A8, $98, $B0, $C0, $00, $00
|16F839| db $0C, $04, $06, $02, $02, $01, $01
|16F840| db $28 ; Repeat byte
|16F841| db $00
|16F842| db $03 ; Raw block
|16F843| db $0F, $07, $02, $01
|16F847| db $23 ; Repeat byte
|16F848| db $00
|16F849| db $06 ; Raw block
|16F84A| db $30, $20, $60, $40, $40, $80, $80
|16F851| db $28 ; Repeat byte
|16F852| db $00
|16F853| db $03 ; Raw block
|16F854| db $F0, $E0, $40, $80
|16F858| db $23 ; Repeat byte
|16F859| db $00
|16F85A| db $01 ; Raw block
|16F85B| db $09, $07
|16F85D| db $43 ; Repeat word
|16F85E| dw $060A
|16F860| db $04 ; Raw block
|16F861| db $0B, $07, $1C, $0B, $17
|16F866| db $43 ; Repeat word
|16F867| dw $140C
|16F869| db $0A ; Raw block
|16F86A| db $0F, $08, $09, $09, $08, $14, $13, $13
|16F872| db $10, $CE, $F0
|16F875| db $43 ; Repeat word
|16F876| dw $EC92
|16F878| db $05 ; Raw block
|16F879| db $72, $CC, $F2, $2C, $EA, $D4
|16F87F| db $43 ; Repeat word
|16F880| dw $B8D4
|16F882| db $07 ; Raw block
|16F883| db $0E, $12, $12, $32, $D2, $2A, $44, $44
|16F88B| db $E4, $2F ; EXT Repeat byte
|16F88D| db $00
|16F88E| db $01 ; Raw block
|16F88F| db $1E, $09
|16F891| db $43 ; Repeat word
|16F892| dw $0C1F
|16F894| db $E0, $72 ; EXT Raw block
|16F896| db $11, $0A, $1B, $0A, $1F, $0E, $1F, $0D
|16F89E| db $1B, $09, $1E, $1F, $17, $15, $1D, $19
|16F8A6| db $1B, $1F, $DC, $B8, $58, $B0, $F1, $2C
|16F8AE| db $E3, $8D, $C4, $43, $48, $C7, $6B, $F4
|16F8B6| db $1D, $EB, $47, $4F, $FF, $FF, $FC, $38
|16F8BE| db $0B, $1C, $FF, $E1, $FF, $0F, $F0, $EE
|16F8C6| db $1B, $7F, $FA, $FF, $04, $FB, $F8, $07
|16F8CE| db $3D, $C3, $7E, $F0, $07, $E0, $00, $04
|16F8D6| db $F8, $3D, $B6, $FC, $46, $7C, $E6, $DC
|16F8DE| db $9C, $E8, $1C, $E8, $18, $F0, $38, $F0
|16F8E6| db $F0, $E0, $06, $86, $26, $1C, $1C, $18
|16F8EE| db $38, $F0, $7D, $83, $7B, $86, $76, $8C
|16F8F6| db $82, $7C, $7C, $D8, $3C, $F8, $38, $E0
|16F8FE| db $E0, $00, $7D, $7B, $76, $86, $7C, $BC
|16F906| db $F8, $E0, $80
|16F909| db $2E ; Repeat byte
|16F90A| db $00
|16F90B| db $00 ; Raw block
|16F90C| db $80
|16F90D| db $2C ; Repeat byte
|16F90E| db $00
|16F90F| db $09 ; Raw block
|16F910| db $03, $00, $07, $03, $0D, $07, $1B, $0F
|16F918| db $1F, $0E
|16F91A| db $22 ; Repeat byte
|16F91B| db $00
|16F91C| db $0A ; Raw block
|16F91D| db $03, $04, $09, $13, $1F, $0F, $00, $3C
|16F925| db $07, $F8, $2D
|16F928| db $43 ; Repeat word
|16F929| dw $DAF1
|16F92B| db $0D ; Raw block
|16F92C| db $E8, $BB, $D0, $77, $92, $F2, $0F, $3C
|16F934| db $FB, $76, $F6, $E7, $CF, $8D
|16F93A| db $83 ; Copy past
|16F93B| dw $0008
|16F93D| db $13 ; Raw block
|16F93E| db $06, $00, $0D, $00, $1C, $09, $36, $12
|16F946| db $35, $1B, $62, $35, $00, $01, $07, $0E
|16F94E| db $1F, $3D, $34, $6A
|16F952| db $83 ; Copy past
|16F953| dw $004A
|16F955| db $E0, $43 ; EXT Raw block
|16F957| db $60, $00, $B0, $00, $38, $90, $6C, $48
|16F95F| db $AC, $D8, $46, $AC, $00, $80, $E0, $70
|16F967| db $F8, $BC, $2C, $56, $17, $0F, $2F, $18
|16F96F| db $3F, $17, $39, $09, $28, $18, $49, $39
|16F977| db $71, $31, $BF, $03, $17, $2F, $38, $36
|16F97F| db $27, $46, $6E, $FC, $5C, $B8, $DC, $B0
|16F987| db $F4, $48, $E4, $98, $DC, $E0, $82, $FC
|16F98F| db $22, $DC, $72, $8C, $4C, $DC, $F4, $64
|16F997| db $1C, $02, $22, $52
|16F99B| db $25 ; Repeat byte
|16F99C| db $00
|16F99D| db $09 ; Raw block
|16F99E| db $03, $00, $07, $02, $0E, $02, $14, $02
|16F9A6| db $13, $0C
|16F9A8| db $22 ; Repeat byte
|16F9A9| db $00
|16F9AA| db $04 ; Raw block
|16F9AB| db $03, $04, $0D, $1D, $13
|16F9B0| db $25 ; Repeat byte
|16F9B1| db $00
|16F9B2| db $09 ; Raw block
|16F9B3| db $C0, $00, $E0, $40, $70, $40, $28, $40
|16F9BB| db $C8, $30
|16F9BD| db $22 ; Repeat byte
|16F9BE| db $00
|16F9BF| db $04 ; Raw block
|16F9C0| db $C0, $20, $B0, $B8, $C8
|16F9C5| db $E4, $2F ; EXT Repeat byte
|16F9C7| db $00
|16F9C8| db $06 ; Raw block
|16F9C9| db $0B, $05, $09, $06, $04, $03, $03
|16F9D0| db $28 ; Repeat byte
|16F9D1| db $00
|16F9D2| db $03 ; Raw block
|16F9D3| db $0B, $09, $04, $03
|16F9D7| db $23 ; Repeat byte
|16F9D8| db $00
|16F9D9| db $08 ; Raw block
|16F9DA| db $FE, $C1, $F7, $38, $67, $66, $F7, $FF
|16F9E2| db $FF
|16F9E3| db $26 ; Repeat byte
|16F9E4| db $00
|16F9E5| db $04 ; Raw block
|16F9E6| db $FE, $C7, $9F, $F3, $FF
|16F9EB| db $22 ; Repeat byte
|16F9EC| db $00
|16F9ED| db $08 ; Raw block
|16F9EE| db $7F, $80, $FF, $00, $FF, $1C, $FC, $E0
|16F9F6| db $E0
|16F9F7| db $26 ; Repeat byte
|16F9F8| db $00
|16F9F9| db $04 ; Raw block
|16F9FA| db $7F, $FF, $FF, $FC, $E0
|16F9FF| db $22 ; Repeat byte
|16FA00| db $00
|16FA01| db $04 ; Raw block
|16FA02| db $E0, $00, $C0, $00, $80
|16FA07| db $2A ; Repeat byte
|16FA08| db $00
|16FA09| db $02 ; Raw block
|16FA0A| db $E0, $C0, $80
|16FA0D| db $E4, $34 ; EXT Repeat byte
|16FA0F| db $00
|16FA10| db $08 ; Raw block
|16FA11| db $3F, $18, $3F, $16, $7B, $2F, $71, $1F
|16FA19| db $F1
|16FA1A| db $44 ; Repeat word
|16FA1B| dw $E37F
|16FA1D| db $06 ; Raw block
|16FA1E| db $E7, $7F, $3F, $3D, $7A, $71, $F0
|16FA25| db $22 ; Repeat byte
|16FA26| db $E0
|16FA27| db $0B ; Raw block
|16FA28| db $9F, $FF, $89, $FF, $E3, $7F, $F7, $9C
|16FA30| db $7C, $6B, $9B, $B7
|16FA34| db $43 ; Repeat word
|16FA35| dw $D6DA
|16FA37| db $14 ; Raw block
|16FA38| db $80, $80, $E3, $77, $9C, $48, $29, $29
|16FA40| db $62, $35, $35, $1A, $38, $14, $19, $07
|16FA48| db $0E, $07, $07, $01, $01
|16FA4D| db $22 ; Repeat byte
|16FA4E| db $00
|16FA4F| db $14 ; Raw block
|16FA50| db $6A, $35, $3B, $18, $0E, $07, $01, $00
|16FA58| db $46, $AC, $AC, $58, $1C, $28, $98, $E0
|16FA60| db $70, $E0, $E0, $80, $80
|16FA65| db $22 ; Repeat byte
|16FA66| db $00
|16FA67| db $14 ; Raw block
|16FA68| db $56, $AC, $DC, $18, $70, $E0, $80, $00
|16FA70| db $FE, $21, $F9, $40, $B5, $07, $AA, $0F
|16FA78| db $7F, $1C, $7C, $10, $30
|16FA7D| db $22 ; Repeat byte
|16FA7E| db $00
|16FA7F| db $12 ; Raw block
|16FA80| db $CA, $97, $E8, $F2, $6F, $7C, $30, $00
|16FA88| db $9A, $04, $EE, $60, $F4, $10, $DE, $08
|16FA90| db $0E, $04, $04
|16FA93| db $24 ; Repeat byte
|16FA94| db $00
|16FA95| db $10 ; Raw block
|16FA96| db $EA, $96, $EC, $D2, $0A, $04, $00, $00
|16FA9E| db $1C, $09, $1C, $0A, $0C, $07, $07, $03
|16FAA6| db $03
|16FAA7| db $26 ; Repeat byte
|16FAA8| db $00
|16FAA9| db $04 ; Raw block
|16FAAA| db $1E, $1D, $0C, $07, $03
|16FAAF| db $22 ; Repeat byte
|16FAB0| db $00
|16FAB1| db $08 ; Raw block
|16FAB2| db $38, $90, $38, $50, $30, $E0, $E0, $C0
|16FABA| db $C0
|16FABB| db $26 ; Repeat byte
|16FABC| db $00
|16FABD| db $04 ; Raw block
|16FABE| db $78, $B8, $30, $E0, $C0
|16FAC3| db $E4, $32 ; EXT Repeat byte
|16FAC5| db $00
|16FAC6| db $FF ; End of GFX B3

;===================================================================================================

GFX_B4:
|16FAC7| db $37 ; Repeat byte
|16FAC8| db $00
|16FAC9| db $E0, $2F ; EXT Raw block
|16FACB| db $1E, $00, $2B, $1C, $54, $3B, $6A, $37
|16FAD3| db $E8, $77, $D4, $6F, $7C, $07, $5B, $27
|16FADB| db $1E, $3B, $74, $6B, $EB, $D7, $77, $53
|16FAE3| db $00, $00, $E0, $00, $1F, $E0, $E8, $F7
|16FAEB| db $1C, $EF, $6C, $FF, $B2, $FF, $7C, $93
|16FAF3| db $00, $E0, $1F, $EF, $DF, $EF, $B3, $3D
|16FAFB| db $25 ; Repeat byte
|16FAFC| db $00
|16FAFD| db $01 ; Raw block
|16FAFE| db $80, $00
|16FB00| db $47 ; Repeat word
|16FB01| dw $8040
|16FB03| db $22 ; Repeat byte
|16FB04| db $00
|16FB05| db $00 ; Raw block
|16FB06| db $80
|16FB07| db $23 ; Repeat byte
|16FB08| db $C0
|16FB09| db $23 ; Repeat byte
|16FB0A| db $00
|16FB0B| db $13 ; Raw block
|16FB0C| db $10, $00, $38, $00, $1E, $00, $0D, $02
|16FB14| db $0A, $05, $04, $03, $00, $00, $10, $28
|16FB1C| db $16, $0B, $0D, $07
|16FB20| db $23 ; Repeat byte
|16FB21| db $00
|16FB22| db $E0, $63 ; EXT Raw block
|16FB24| db $20, $00, $78, $00, $34, $08, $1A, $04
|16FB2C| db $BA, $04, $EA, $14, $00, $00, $20, $58
|16FB34| db $2C, $16, $B6, $DE, $9D, $66, $9F, $62
|16FB3C| db $CE, $71, $E1, $7F, $6F, $3F, $53, $3F
|16FB44| db $5A, $3F, $29, $1F, $9F, $9F, $CE, $E1
|16FB4C| db $7F, $5F, $5F, $2F, $AC, $C0, $5E, $8C
|16FB54| db $FB, $1A, $3F, $CE, $4F, $B6, $47, $BA
|16FB5C| db $57, $FA, $B7, $FA, $AC, $52, $E5, $31
|16FB64| db $49, $45, $55, $F5, $17, $0F, $2E, $1F
|16FB6C| db $23, $1F, $3D, $07, $5C, $3F, $6E, $3F
|16FB74| db $97, $7E, $99, $76, $17, $2E, $23, $3D
|16FB7C| db $5C, $7E, $B7, $BB, $AE, $F0, $C8, $30
|16FB84| db $70, $80, $40, $80
|16FB88| db $44 ; Repeat word
|16FB89| dw $0080
|16FB8B| db $22 ; Repeat byte
|16FB8C| db $00
|16FB8D| db $03 ; Raw block
|16FB8E| db $AE, $C8, $70, $40
|16FB92| db $22 ; Repeat byte
|16FB93| db $80
|16FB94| db $18 ; Raw block
|16FB95| db $00, $6D, $33, $54, $3B, $59, $3E, $2A
|16FB9D| db $1F, $2D, $1F, $17, $0F, $13, $0F, $16
|16FBA5| db $0D, $6D, $54, $59, $2E, $2F, $17, $13
|16FBAD| db $16
|16FBAE| db $87 ; Copy past
|16FBAF| dw $00A8
|16FBB1| db $06 ; Raw block
|16FBB2| db $AF, $D6, $67, $BA, $C7, $FA, $F7
|16FBB9| db $84 ; Copy past
|16FBBA| dw $00B7
|16FBBC| db $03 ; Raw block
|16FBBD| db $A9, $65, $E5, $F5
|16FBC1| db $46 ; Repeat word
|16FBC2| dw $0001
|16FBC4| db $28 ; Repeat byte
|16FBC5| db $00
|16FBC6| db $23 ; Repeat byte
|16FBC7| db $01
|16FBC8| db $23 ; Repeat byte
|16FBC9| db $00
|16FBCA| db $0C ; Raw block
|16FBCB| db $33, $FC, $72, $FC, $F2, $FC, $62, $FC
|16FBD3| db $84, $78, $44, $38, $38
|16FBD8| db $22 ; Repeat byte
|16FBD9| db $00
|16FBDA| db $06 ; Raw block
|16FBDB| db $B3, $F2, $F2, $62, $84, $44, $38
|16FBE2| db $24 ; Repeat byte
|16FBE3| db $00
|16FBE4| db $13 ; Raw block
|16FBE5| db $40, $00, $A0, $00, $9F, $00, $B3, $03
|16FBED| db $D1, $41, $E1, $60, $00, $00, $40, $E0
|16FBF5| db $FF, $CC, $AE, $9F
|16FBF9| db $27 ; Repeat byte
|16FBFA| db $00
|16FBFB| db $07 ; Raw block
|16FBFC| db $F0, $00, $EF, $90, $B3, $6F, $7F, $F0
|16FC04| db $23 ; Repeat byte
|16FC05| db $00
|16FC06| db $03 ; Raw block
|16FC07| db $F0, $7F, $FF, $FF
|16FC0B| db $37 ; Repeat byte
|16FC0C| db $00
|16FC0D| db $E0, $24 ; EXT Raw block
|16FC0F| db $72, $2F, $71, $3E, $40, $3F, $60, $1F
|16FC17| db $3C, $0F, $3F, $1A, $1F, $06, $06, $00
|16FC1F| db $72, $70, $4C, $7E, $3E, $3F, $1F, $06
|16FC27| db $BC, $1B, $6F, $38, $CA, $FC, $72, $FC
|16FC2F| db $84, $78, $B8, $40, $C0
|16FC34| db $22 ; Repeat byte
|16FC35| db $00
|16FC36| db $0A ; Raw block
|16FC37| db $7C, $FF, $FA, $72, $04, $38, $C0, $00
|16FC3F| db $C0, $80, $80
|16FC42| db $2C ; Repeat byte
|16FC43| db $00
|16FC44| db $01 ; Raw block
|16FC45| db $C0, $80
|16FC47| db $25 ; Repeat byte
|16FC48| db $00
|16FC49| db $0C ; Raw block
|16FC4A| db $03, $00, $11, $00, $3B, $00, $1E, $01
|16FC52| db $17, $08, $08, $07, $07
|16FC57| db $22 ; Repeat byte
|16FC58| db $00
|16FC59| db $E0, $26 ; EXT Raw block
|16FC5B| db $03, $11, $2A, $17, $19, $0F, $07, $00
|16FC63| db $F6, $08, $F4, $08, $CC, $30, $D4, $28
|16FC6B| db $2A, $D4, $F5, $0A, $8A, $04, $04, $00
|16FC73| db $3E, $3C, $F4, $EC, $DE, $FB, $8E, $04
|16FC7B| db $25, $1F, $13, $0F, $08, $07, $07
|16FC82| db $28 ; Repeat byte
|16FC83| db $00
|16FC84| db $03 ; Raw block
|16FC85| db $27, $13, $08, $07
|16FC89| db $23 ; Repeat byte
|16FC8A| db $00
|16FC8B| db $06 ; Raw block
|16FC8C| db $12, $FC, $E4, $F8, $08, $F0, $F0
|16FC93| db $28 ; Repeat byte
|16FC94| db $00
|16FC95| db $03 ; Raw block
|16FC96| db $F2, $E4, $08, $F0
|16FC9A| db $23 ; Repeat byte
|16FC9B| db $00
|16FC9C| db $0A ; Raw block
|16FC9D| db $D9, $36, $AB, $56, $D6, $60, $D0, $20
|16FCA5| db $E0, $40, $60
|16FCA8| db $24 ; Repeat byte
|16FCA9| db $00
|16FCAA| db $05 ; Raw block
|16FCAB| db $FB, $BF, $D6, $F0, $E0, $60
|16FCB1| db $39 ; Repeat byte
|16FCB2| db $00
|16FCB3| db $04 ; Raw block
|16FCB4| db $0C, $03, $04, $03, $03
|16FCB9| db $2A ; Repeat byte
|16FCBA| db $00
|16FCBB| db $02 ; Raw block
|16FCBC| db $0C, $04, $03
|16FCBF| db $24 ; Repeat byte
|16FCC0| db $00
|16FCC1| db $02 ; Raw block
|16FCC2| db $72, $FC, $04
|16FCC5| db $83 ; Copy past
|16FCC6| dw $022B
|16FCC8| db $28 ; Repeat byte
|16FCC9| db $00
|16FCCA| db $03 ; Raw block
|16FCCB| db $72, $04, $08, $F0
|16FCCF| db $E4, $33 ; EXT Repeat byte
|16FCD1| db $00
|16FCD2| db $0B ; Raw block
|16FCD3| db $FF, $3E, $FE, $59, $FF, $65, $7F, $26
|16FCDB| db $7F, $27, $7F, $2F
|16FCDF| db $43 ; Repeat word
|16FCE0| dw $0F3F
|16FCE2| db $17 ; Raw block
|16FCE3| db $C1, $E7, $FB, $79, $78, $70, $30, $30
|16FCEB| db $7F, $EF, $74, $FF, $13, $FF, $CF, $FF
|16FCF3| db $E7, $3F, $F3, $DF, $F9, $EF, $7C, $77
|16FCFB| db $24 ; Repeat byte
|16FCFC| db $FF
|16FCFD| db $1A ; Raw block
|16FCFE| db $3F, $1F, $8F, $00, $00, $07, $00, $0F
|16FD06| db $00, $07, $00, $01, $00, $0F, $00, $7F
|16FD0E| db $00, $83, $7C, $00, $07, $08, $07, $01
|16FD16| db $0E, $72, $FE
|16FD19| db $83 ; Copy past
|16FD1A| dw $0030
|16FD1C| db $01 ; Raw block
|16FD1D| db $D0, $20
|16FD1F| db $43 ; Repeat word
|16FD20| dw $10E8
|16FD22| db $0E ; Raw block
|16FD23| db $F8, $00, $FE, $00, $EF, $10, $00, $E0
|16FD2B| db $30, $D8, $38, $D8, $0E, $D9, $01
|16FD32| db $46 ; Repeat word
|16FD33| dw $0300
|16FD35| db $08 ; Raw block
|16FD36| db $23, $00, $74, $03, $77, $00, $7B, $04
|16FD3E| db $01
|16FD3F| db $22 ; Repeat byte
|16FD40| db $02
|16FD41| db $04 ; Raw block
|16FD42| db $22, $57, $57, $5C, $00
|16FD47| db $46 ; Repeat word
|16FD48| dw $8000
|16FD4A| db $08 ; Raw block
|16FD4B| db $88, $00, $5C, $80, $DC, $00, $BC, $40
|16FD53| db $00
|16FD54| db $22 ; Repeat byte
|16FD55| db $80
|16FD56| db $1B ; Raw block
|16FD57| db $88, $D4, $D4, $74, $A0, $40, $50, $A0
|16FD5F| db $A8, $50, $54, $28, $2A, $14, $15, $0A
|16FD67| db $0A, $04, $04, $00, $60, $B0, $D8, $6C
|16FD6F| db $36, $1B, $0E, $04
|16FD73| db $4D ; Repeat word
|16FD74| dw $0038
|16FD76| db $01 ; Raw block
|16FD77| db $10, $00
|16FD79| db $26 ; Repeat byte
|16FD7A| db $28
|16FD7B| db $00 ; Raw block
|16FD7C| db $10
|16FD7D| db $28 ; Repeat byte
|16FD7E| db $00
|16FD7F| db $01 ; Raw block
|16FD80| db $02, $10
|16FD82| db $43 ; Repeat word
|16FD83| dw $0017
|16FD85| db $00 ; Raw block
|16FD86| db $07
|16FD87| db $24 ; Repeat byte
|16FD88| db $00
|16FD89| db $02 ; Raw block
|16FD8A| db $12, $12, $03
|16FD8D| db $26 ; Repeat byte
|16FD8E| db $00
|16FD8F| db $01 ; Raw block
|16FD90| db $40, $04
|16FD92| db $85 ; Copy past
|16FD93| dw $0062
|16FD95| db $00 ; Raw block
|16FD96| db $B0
|16FD97| db $22 ; Repeat byte
|16FD98| db $00
|16FD99| db $00 ; Raw block
|16FD9A| db $40
|16FD9B| db $83 ; Copy past
|16FD9C| dw $0062
|16FD9E| db $07 ; Raw block
|16FD9F| db $1E, $1E, $21, $3F, $00, $1F, $00, $0F
|16FDA7| db $44 ; Repeat word
|16FDA8| dw $0700
|16FDAA| db $04 ; Raw block
|16FDAB| db $03, $00, $07, $1E, $21
|16FDB0| db $23 ; Repeat byte
|16FDB1| db $00
|16FDB2| db $01 ; Raw block
|16FDB3| db $01, $02
|16FDB5| db $23 ; Repeat byte
|16FDB6| db $00
|16FDB7| db $1B ; Raw block
|16FDB8| db $80, $80, $44, $DC, $42, $EE, $B9, $FB
|16FDC0| db $0A, $FF, $05, $FF, $00, $00, $80, $DC
|16FDC8| db $62, $B9, $0E, $07, $01, $00, $02, $01
|16FDD0| db $04, $03, $05, $03
|16FDD4| db $43 ; Repeat word
|16FDD5| dw $0709
|16FDD7| db $E0, $25 ; EXT Raw block
|16FDD9| db $07, $03, $03, $00, $01, $03, $07, $07
|16FDE1| db $0F, $0F, $07, $03, $C3, $00, $65, $C3
|16FDE9| db $BA, $E7, $98, $FF, $5A, $B7, $7D, $93
|16FDF1| db $7E, $81, $BE, $61, $C3, $E5, $BB, $9B
|16FDF9| db $53, $71, $70, $B8, $00, $00
|16FDFF| db $83 ; Copy past
|16FE00| dw $03F0
|16FE02| db $43 ; Repeat word
|16FE03| dw $0304
|16FE05| db $05 ; Raw block
|16FE06| db $08, $07, $09, $07, $0E, $07
|16FE0C| db $86 ; Copy past
|16FE0D| dw $03FF
|16FE0F| db $18 ; Raw block
|16FE10| db $0E, $00, $00, $E3, $00, $34, $E3, $5B
|16FE18| db $F7, $78, $FF, $DC, $FF, $36, $DF, $58
|16FE20| db $BF, $00, $E3, $F4, $FB, $FB, $DF, $3F
|16FE28| db $5F
|16FE29| db $45 ; Repeat word
|16FE2A| dw $0F1F
|16FE2C| db $01 ; Raw block
|16FE2D| db $3F, $1F
|16FE2F| db $45 ; Repeat word
|16FE30| dw $1E3E
|16FE32| db $01 ; Raw block
|16FE33| db $7E, $3E
|16FE35| db $22 ; Repeat byte
|16FE36| db $10
|16FE37| db $00 ; Raw block
|16FE38| db $20
|16FE39| db $22 ; Repeat byte
|16FE3A| db $21
|16FE3B| db $08 ; Raw block
|16FE3C| db $41, $3E, $3B, $1E, $1B, $1F, $1D, $1F
|16FE44| db $1E
|16FE45| db $27 ; Repeat byte
|16FE46| db $1D
|16FE47| db $03 ; Raw block
|16FE48| db $C7, $E7, $E3, $E1
|16FE4C| db $23 ; Repeat byte
|16FE4D| db $E2
|16FE4E| db $04 ; Raw block
|16FE4F| db $72, $0D, $0E, $01, $01
|16FE54| db $85 ; Copy past
|16FE55| dw $0301
|16FE57| db $24 ; Repeat byte
|16FE58| db $00
|16FE59| db $03 ; Raw block
|16FE5A| db $7F, $0F, $01, $07
|16FE5E| db $83 ; Copy past
|16FE5F| dw $0222
|16FE61| db $0A ; Raw block
|16FE62| db $EE, $10, $18, $E0, $28, $D0, $C8, $30
|16FE6A| db $10, $E0, $E0
|16FE6D| db $24 ; Repeat byte
|16FE6E| db $00
|16FE6F| db $00 ; Raw block
|16FE70| db $DE
|16FE71| db $22 ; Repeat byte
|16FE72| db $F8
|16FE73| db $03 ; Raw block
|16FE74| db $F0, $E0, $00, $00
|16FE78| db $43 ; Repeat word
|16FE79| dw $0877
|16FE7B| db $04 ; Raw block
|16FE7C| db $5B, $24, $24, $1B, $1F
|16FE81| db $44 ; Repeat word
|16FE82| dw $0300
|16FE84| db $09 ; Raw block
|16FE85| db $01, $00, $5E, $5E, $6C, $3F, $1F, $02
|16FE8D| db $02, $01
|16FE8F| db $43 ; Repeat word
|16FE90| dw $20DC
|16FE92| db $04 ; Raw block
|16FE93| db $B4, $48, $48, $B0, $F0
|16FE98| db $43 ; Repeat word
|16FE99| dw $8000
|16FE9B| db $22 ; Repeat byte
|16FE9C| db $00
|16FE9D| db $06 ; Raw block
|16FE9E| db $F4, $F4, $6C, $F8, $F0, $80, $80
|16FEA5| db $26 ; Repeat byte
|16FEA6| db $00
|16FEA7| db $04 ; Raw block
|16FEA8| db $FE, $00, $FF, $00, $FE
|16FEAD| db $27 ; Repeat byte
|16FEAE| db $00
|16FEAF| db $E0, $50 ; EXT Raw block
|16FEB1| db $FE, $01, $FE, $00, $00, $FE, $7F, $FD
|16FEB9| db $BF, $FB, $DF, $F7, $EF, $EF, $F7, $DF
|16FEC1| db $FB, $BF, $FD, $7F, $FE, $FE, $FD, $FB
|16FEC9| db $F7, $EF, $DF, $BF, $7F, $04, $0F, $07
|16FED1| db $0D, $0F, $1D, $08, $1F, $0F, $18, $07
|16FED9| db $0C, $01, $0E, $00, $07, $06, $05, $0D
|16FEE1| db $0F, $08, $04, $02, $00, $20, $70, $40
|16FEE9| db $E0, $A0, $F0, $B0, $D8, $10, $F8, $E0
|16FEF1| db $30, $C0, $70, $00, $C0, $20, $40, $E0
|16FEF9| db $D0, $F0, $20, $40, $00, $04, $07, $08
|16FF01| db $08
|16FF02| db $2B ; Repeat byte
|16FF03| db $00
|16FF04| db $01 ; Raw block
|16FF05| db $04, $08
|16FF07| db $25 ; Repeat byte
|16FF08| db $00
|16FF09| db $09 ; Raw block
|16FF0A| db $0B, $FC, $05, $FE, $22, $37, $20, $23
|16FF12| db $00, $01
|16FF14| db $25 ; Repeat byte
|16FF15| db $00
|16FF16| db $03 ; Raw block
|16FF17| db $0C, $06, $23, $20
|16FF1B| db $23 ; Repeat byte
|16FF1C| db $00
|16FF1D| db $44 ; Repeat word
|16FF1E| dw $0001
|16FF20| db $2A ; Repeat byte
|16FF21| db $00
|16FF22| db $22 ; Repeat byte
|16FF23| db $01
|16FF24| db $24 ; Repeat byte
|16FF25| db $00
|16FF26| db $0C ; Raw block
|16FF27| db $46, $FF, $70, $FF, $3B, $FD, $97, $6D
|16FF2F| db $7F, $05, $1F, $03, $03
|16FF34| db $22 ; Repeat byte
|16FF35| db $00
|16FF36| db $0A ; Raw block
|16FF37| db $7F, $7C, $3B, $87, $6F, $1F, $03, $00
|16FF3F| db $08, $07, $07
|16FF42| db $2C ; Repeat byte
|16FF43| db $00
|16FF44| db $01 ; Raw block
|16FF45| db $08, $07
|16FF47| db $25 ; Repeat byte
|16FF48| db $00
|16FF49| db $00 ; Raw block
|16FF4A| db $BC
|16FF4B| db $44 ; Repeat word
|16FF4C| dw $BF7F
|16FF4E| db $43 ; Repeat word
|16FF4F| dw $3F5F
|16FF51| db $05 ; Raw block
|16FF52| db $23, $1F, $1C, $03, $03, $00
|16FF58| db $22 ; Repeat byte
|16FF59| db $BF
|16FF5A| db $06 ; Raw block
|16FF5B| db $5F, $5F, $23, $1C, $03, $7E, $3E
|16FF62| db $43 ; Repeat word
|16FF63| dw $7CFC
|16FF65| db $04 ; Raw block
|16FF66| db $FE, $60, $FF, $40, $61
|16FF6B| db $24 ; Repeat byte
|16FF6C| db $00
|16FF6D| db $07 ; Raw block
|16FF6E| db $41, $83, $83, $9F, $BF, $61, $00, $00
|16FF76| db $27 ; Repeat byte
|16FF77| db $1D
|16FF78| db $07 ; Raw block
|16FF79| db $9D, $1D, $DD, $1D, $3D, $0D, $0F, $00
|16FF81| db $25 ; Repeat byte
|16FF82| db $E2
|16FF83| db $01 ; Raw block
|16FF84| db $32, $0F
|16FF86| db $FF ; End of GFX B4

;===================================================================================================

GFX_B5:
|16FF87| db $23 ; Repeat byte
|16FF88| db $00
|16FF89| db $E0, $2B ; EXT Raw block
|16FF8B| db $08, $00, $14, $00, $76, $04, $B7, $04
|16FF93| db $DC, $48, $FD, $29, $00, $00, $08, $1C
|16FF9B| db $7A, $FB, $B7, $D6, $00, $00, $03, $00
|16FFA3| db $0C, $03, $33, $0C, $57, $28, $E7, $18
|16FFAB| db $6C, $13, $D1, $8E, $00, $03, $0F, $3C
|16FFB3| db $78, $F8, $FB, $7F
|16FFB7| db $2B ; Repeat byte
|16FFB8| db $00
|16FFB9| db $02 ; Raw block
|16FFBA| db $01, $00, $03
|16FFBD| db $26 ; Repeat byte
|16FFBE| db $00
|16FFBF| db $01 ; Raw block
|16FFC0| db $01, $02
|16FFC2| db $85 ; Copy past
|16FFC3| dw $0018
|16FFC5| db $11 ; Raw block
|16FFC6| db $13, $0C, $17, $08, $27, $18, $EC, $13
|16FFCE| db $D1, $0E, $00, $03, $0F, $1C, $18, $38
|16FFD6| db $FB, $7F
|16FFD8| db $2B ; Repeat byte
|16FFD9| db $00
|16FFDA| db $03 ; Raw block
|16FFDB| db $03, $00, $05, $01
|16FFDF| db $25 ; Repeat byte
|16FFE0| db $00
|16FFE1| db $01 ; Raw block
|16FFE2| db $03, $06
|16FFE4| db $87 ; Copy past
|16FFE5| dw $0048
|16FFE7| db $01 ; Raw block
|16FFE8| db $27, $18
|16FFEA| db $43 ; Repeat word
|16FFEB| dw $304F
|16FFED| db $01 ; Raw block
|16FFEE| db $C7, $38
|16FFF0| db $83 ; Copy past
|16FFF1| dw $0058
|16FFF3| db $03 ; Raw block
|16FFF4| db $38, $70, $70, $F8
|16FFF8| db $83 ; Copy past
|16FFF9| dw $006C
|16FFFB| db $1D ; Raw block
|16FFFC| db $0D, $04, $17, $03

;===================================================================================================

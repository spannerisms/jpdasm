org $138000

;===================================================================================================

|138000| db $45 ; Repeat word
|138001| dw $7F80
|138003| db $00 ; Raw block
|138004| db $FF
|138005| db $22 ; Repeat byte
|138006| db $00
|138007| db $00 ; Raw block
|138008| db $7F
|138009| db $22 ; Repeat byte
|13800A| db $00
|13800B| db $09 ; Raw block
|13800C| db $7F, $00, $DF, $27, $CF, $32, $C7, $38
|138014| db $E3, $1D
|138016| db $43 ; Repeat word
|138017| dw $0DF3
|138019| db $03 ; Raw block
|13801A| db $E7, $19, $CF, $33
|13801E| db $22 ; Repeat byte
|13801F| db $3F
|138020| db $14 ; Raw block
|138021| db $1F, $0F, $0F, $1F, $3F, $FF, $00, $FF
|138029| db $7F, $FF, $40, $E0, $40, $EF, $40, $E0
|138031| db $4F, $E7, $4F, $E4, $4C
|138036| db $22 ; Repeat byte
|138037| db $00
|138038| db $00 ; Raw block
|138039| db $1F
|13803A| db $22 ; Repeat byte
|13803B| db $10
|13803C| db $02 ; Raw block
|13803D| db $13, $FF, $00
|138040| db $22 ; Repeat byte
|138041| db $FF
|138042| db $22 ; Repeat byte
|138043| db $00
|138044| db $02 ; Raw block
|138045| db $FF, $00, $00
|138048| db $22 ; Repeat byte
|138049| db $FF
|13804A| db $24 ; Repeat byte
|13804B| db $00
|13804C| db $00 ; Raw block
|13804D| db $FF
|13804E| db $22 ; Repeat byte
|13804F| db $00
|138050| db $18 ; Raw block
|138051| db $FF, $93, $E5, $2F, $B4, $97, $DA, $87
|138059| db $E7, $87, $F4, $AB, $EC, $41, $DB, $18
|138061| db $25, $48, $C0, $E0, $F8, $E8, $D0, $A4
|138069| db $C2
|13806A| db $FF ; End of GFX 2B

;===================================================================================================

GFX_2C:
|13806B| db $0B ; Raw block
|13806C| db $EF, $10, $86, $79, $38, $C7, $7C, $83
|138074| db $FF, $30, $FF, $78
|138078| db $23 ; Repeat byte
|138079| db $FF
|13807A| db $01 ; Raw block
|13807B| db $10, $79
|13807D| db $25 ; Repeat byte
|13807E| db $FF
|13807F| db $09 ; Raw block
|138080| db $7F, $80, $63, $9C, $08, $F7, $3C, $C3
|138088| db $FF, $38
|13808A| db $25 ; Repeat byte
|13808B| db $FF
|13808C| db $01 ; Raw block
|13808D| db $80, $9C
|13808F| db $25 ; Repeat byte
|138090| db $FF
|138091| db $0F ; Raw block
|138092| db $BF, $47, $BF, $4E, $8F, $74, $AF, $51
|13809A| db $E7, $19, $CF, $33, $DF, $27, $9F, $63
|1380A2| db $22 ; Repeat byte
|1380A3| db $7F
|1380A4| db $04 ; Raw block
|1380A5| db $5F, $1F, $3F, $3F, $7F
|1380AA| db $22 ; Repeat byte
|1380AB| db $FF
|1380AC| db $0C ; Raw block
|1380AD| db $FD, $FF, $F6, $FF, $E2, $FE, $F1, $F8
|1380B5| db $F7, $F9, $B6, $FB, $C4
|1380BA| db $25 ; Repeat byte
|1380BB| db $FF
|1380BC| db $0B ; Raw block
|1380BD| db $FE, $FC, $DF, $23, $9F, $67, $3F, $CF
|1380C5| db $7F, $8F, $FF, $1F
|1380C9| db $25 ; Repeat byte
|1380CA| db $FF
|1380CB| db $01 ; Raw block
|1380CC| db $3F, $7F
|1380CE| db $26 ; Repeat byte
|1380CF| db $FF
|1380D0| db $08 ; Raw block
|1380D1| db $00, $F1, $8E, $E6, $19, $CF, $32, $8F
|1380D9| db $77
|1380DA| db $45 ; Repeat word
|1380DB| dw $6F9F
|1380DD| db $03 ; Raw block
|1380DE| db $00, $0E, $1F, $3F
|1380E2| db $23 ; Repeat byte
|1380E3| db $7F
|1380E4| db $01 ; Raw block
|1380E5| db $F4, $16
|1380E7| db $4B ; Repeat word
|1380E8| dw $02AB
|1380EA| db $02 ; Raw block
|1380EB| db $FB, $52, $49
|1380EE| db $25 ; Repeat byte
|1380EF| db $5D
|1380F0| db $E0, $20 ; EXT Raw block
|1380F2| db $0D, $BC, $44, $BF, $48, $BA, $57, $AE
|1380FA| db $5C, $90, $6C, $89, $67, $84, $6B, $93
|138102| db $7C, $03, $10, $08, $03, $03, $10, $10
|13810A| db $00, $40, $7F, $9F, $C0, $6F, $DF, $60
|138112| db $DF
|138113| db $45 ; Repeat word
|138114| dw $D06F
|138116| db $03 ; Raw block
|138117| db $68, $D0, $80, $3F
|13811B| db $24 ; Repeat byte
|13811C| db $20
|13811D| db $11 ; Raw block
|13811E| db $27, $CC, $BC, $C9, $B8, $D9, $38, $99
|138126| db $F8, $DB, $F8, $9D, $FC, $53, $B3, $AC
|13812E| db $60, $03
|138130| db $23 ; Repeat byte
|138131| db $07
|138132| db $02 ; Raw block
|138133| db $03, $0C, $1F
|138136| db $43 ; Repeat word
|138137| dw $2E51
|138139| db $03 ; Raw block
|13813A| db $5F, $20, $45, $3E
|13813E| db $47 ; Repeat word
|13813F| dw $3257
|138141| db $23 ; Repeat byte
|138142| db $C0
|138143| db $23 ; Repeat byte
|138144| db $CC
|138145| db $43 ; Repeat word
|138146| dw $7FFF
|138148| db $03 ; Raw block
|138149| db $80, $7F, $FF, $00
|13814D| db $43 ; Repeat word
|13814E| dw $7FFF
|138150| db $02 ; Raw block
|138151| db $80, $7F, $FF
|138154| db $28 ; Repeat byte
|138155| db $00
|138156| db $11 ; Raw block
|138157| db $FF, $00, $86, $79, $00, $FF, $38, $C7
|13815F| db $FF, $00, $FF, $83, $FF, $C7, $FF, $FF
|138167| db $00, $79
|138169| db $2D ; Repeat byte
|13816A| db $FF
|13816B| db $06 ; Raw block
|13816C| db $5A, $FF, $A5, $FF, $10, $FF, $00
|138173| db $29 ; Repeat byte
|138174| db $FF
|138175| db $05 ; Raw block
|138176| db $00, $80, $7F, $E0, $7F, $F8
|13817C| db $43 ; Repeat word
|13817D| dw $FE7F
|13817F| db $0C ; Raw block
|138180| db $7E, $FD, $7C, $FA, $78, $00, $7F, $1F
|138188| db $07, $01, $01, $03, $07
|13818D| db $45 ; Repeat word
|13818E| dw $00FF
|138190| db $03 ; Raw block
|138191| db $C0, $3F, $FF, $00
|138195| db $43 ; Repeat word
|138196| dw $7F80
|138198| db $00 ; Raw block
|138199| db $FF
|13819A| db $23 ; Repeat byte
|13819B| db $00
|13819C| db $04 ; Raw block
|13819D| db $3F, $00, $7F, $00, $00
|1381A2| db $22 ; Repeat byte
|1381A3| db $FF
|1381A4| db $0C ; Raw block
|1381A5| db $4E, $FF, $04, $3C, $C3, $10, $EF, $06
|1381AD| db $F9, $CF, $30, $FF, $00
|1381B2| db $24 ; Repeat byte
|1381B3| db $FF
|1381B4| db $12 ; Raw block
|1381B5| db $F9, $30, $00, $FF, $FC, $FF, $38, $FF
|1381BD| db $10, $7C, $83, $10, $EF, $00, $FF, $31
|1381C5| db $CE, $FF, $00
|1381C8| db $25 ; Repeat byte
|1381C9| db $FF
|1381CA| db $09 ; Raw block
|1381CB| db $CE, $00, $BF, $47, $8F, $7F, $AF, $56
|1381D3| db $EF, $10
|1381D5| db $85 ; Copy past
|1381D6| dw $0038
|1381D8| db $01 ; Raw block
|1381D9| db $BF, $43
|1381DB| db $83 ; Copy past
|1381DC| dw $0041
|1381DE| db $83 ; Copy past
|1381DF| dw $0044
|1381E1| db $02 ; Raw block
|1381E2| db $3F, $FF, $BF
|1381E5| db $24 ; Repeat byte
|1381E6| db $FF
|1381E7| db $04 ; Raw block
|1381E8| db $F9, $FF, $FB, $FF, $BF
|1381ED| db $22 ; Repeat byte
|1381EE| db $FF
|1381EF| db $07 ; Raw block
|1381F0| db $3F, $BF, $FF, $FF, $F9, $FB, $BF, $FF
|1381F8| db $43 ; Repeat word
|1381F9| dw $E6F9
|1381FB| db $0D ; Raw block
|1381FC| db $FB, $C4, $F3, $CC, $F3, $6C, $77, $88
|138204| db $87, $79, $FF, $00, $FE, $FE
|13820A| db $22 ; Repeat byte
|13820B| db $FC
|13820C| db $02 ; Raw block
|13820D| db $F8, $78, $00
|138210| db $47 ; Repeat word
|138211| dw $16B4
|138213| db $07 ; Raw block
|138214| db $B1, $17, $AC, $1E, $B4, $56, $F4, $56
|13821C| db $23 ; Repeat byte
|13821D| db $49
|13821E| db $1F ; Raw block
|13821F| db $48, $41, $09, $09, $BB, $13, $B4, $10
|138227| db $AB, $18, $B0, $1F, $A0, $1F, $80, $00
|13822F| db $DF, $7F, $FF, $00, $4C, $4F, $47, $40
|138237| db $40, $7F, $00, $00, $9D, $7E, $84, $67
|13823F| db $44 ; Repeat word
|138240| dw $6584
|138242| db $1F ; Raw block
|138243| db $64, $84, $64, $87, $67, $88, $68, $00
|13824B| db $18, $1A, $1A, $1B, $1B, $18, $17, $EB
|138253| db $13, $EF, $F7, $F8, $07, $FF, $00, $0F
|13825B| db $00, $F0, $F0, $1F, $FF, $FF, $00, $E4
|138263| db $22 ; Repeat byte
|138264| db $00
|138265| db $1B ; Raw block
|138266| db $F0, $0F, $00, $00, $E2, $7E, $F8, $5F
|13826E| db $A5, $53, $BE, $66, $8E, $68, $67, $9D
|138276| db $30, $49, $9D, $A4, $01, $18, $00, $01
|13827E| db $11, $00, $86, $43
|138282| db $45 ; Repeat word
|138283| dw $3257
|138285| db $02 ; Raw block
|138286| db $4B, $3A, $55
|138289| db $46 ; Repeat word
|13828A| dw $5732
|13828C| db $22 ; Repeat byte
|13828D| db $CC
|13828E| db $00 ; Raw block
|13828F| db $C4
|138290| db $23 ; Repeat byte
|138291| db $CC
|138292| db $44 ; Repeat word
|138293| dw $00FF
|138295| db $02 ; Raw block
|138296| db $FE, $01, $FE
|138299| db $44 ; Repeat word
|13829A| dw $00FF
|13829C| db $01 ; Raw block
|13829D| db $FE, $01
|13829F| db $22 ; Repeat byte
|1382A0| db $FE
|1382A1| db $01 ; Raw block
|1382A2| db $00, $00
|1382A4| db $83 ; Copy past
|1382A5| dw $0298
|1382A7| db $0C ; Raw block
|1382A8| db $83, $7F, $95, $7F, $89, $7F, $17, $FF
|1382B0| db $0B, $FF, $57, $FF, $7F
|1382B5| db $22 ; Repeat byte
|1382B6| db $FF
|1382B7| db $02 ; Raw block
|1382B8| db $3F, $3F, $7F
|1382BB| db $25 ; Repeat byte
|1382BC| db $FF
|1382BD| db $90 ; Copy past
|1382BE| dw $0121
|1382C0| db $25 ; Repeat byte
|1382C1| db $FF
|1382C2| db $17 ; Raw block
|1382C3| db $F4, $70, $E8, $60, $D1, $41, $A3, $02
|1382CB| db $C6, $04, $B4, $38, $8B, $73, $FF, $00
|1382D3| db $0F, $1F, $3E, $7D, $7B, $4F, $74, $00
|1382DB| db $83 ; Copy past
|1382DC| dw $010D
|1382DE| db $00 ; Raw block
|1382DF| db $FF
|1382E0| db $22 ; Repeat byte
|1382E1| db $00
|1382E2| db $03 ; Raw block
|1382E3| db $7F, $00, $9F, $60
|1382E7| db $43 ; Repeat word
|1382E8| dw $E51A
|1382EA| db $83 ; Copy past
|1382EB| dw $017E
|1382ED| db $1A ; Raw block
|1382EE| db $80, $60, $E5, $05, $FE, $7F, $FD, $BF
|1382F6| db $FB, $DF, $F7, $EF, $EF, $F7, $DF, $FB
|1382FE| db $BF, $FD, $7F, $FE, $FE, $FD, $FB, $F7
|138306| db $EF, $DF, $BF
|138309| db $83 ; Copy past
|13830A| dw $0115
|13830C| db $E0, $23 ; EXT Raw block
|13830E| db $FF, $E3, $FF, $18, $18, $27, $00, $C7
|138316| db $1F, $E7, $FF, $E6, $FF, $FF, $00, $04
|13831E| db $E7, $FF, $F8, $18, $19, $FF, $FF, $F5
|138326| db $FF, $D7, $EB, $D1, $BF, $DF, $AB, $C3
|13832E| db $FF, $BF, $E7, $7F
|138332| db $28 ; Repeat byte
|138333| db $FF
|138334| db $4F ; Repeat word
|138335| dw $4CE5
|138337| db $27 ; Repeat byte
|138338| db $13
|138339| db $01 ; Raw block
|13833A| db $DB, $36
|13833C| db $49 ; Repeat word
|13833D| dw $25CE
|13833F| db $04 ; Raw block
|138340| db $FE, $15, $DF, $24, $00
|138345| db $24 ; Repeat byte
|138346| db $12
|138347| db $11 ; Raw block
|138348| db $02, $02, $68, $97, $CC, $37, $97, $6F
|138350| db $FC, $0C, $F9, $15, $BB, $52, $EB, $50
|138358| db $DF, $44
|13835A| db $22 ; Repeat byte
|13835B| db $00
|13835C| db $E0, $24 ; EXT Raw block
|13835E| db $03, $02, $04, $04, $20, $5F, $E0, $6E
|138366| db $F1, $9C, $93, $64, $0B, $84, $6B, $E5
|13836E| db $0B, $7D, $03, $C3, $BF, $00, $00, $60
|138376| db $F0, $90, $90, $80, $00, $A5, $7A, $C9
|13837E| db $56, $D7, $4E, $F9, $5C
|138383| db $43 ; Repeat word
|138384| dw $48A5
|138386| db $0B ; Raw block
|138387| db $AF, $42, $9F, $40, $00, $20, $20, $02
|13838F| db $12, $12, $10, $20
|138393| db $45 ; Repeat word
|138394| dw $00FF
|138396| db $09 ; Raw block
|138397| db $FE, $01, $FD, $03, $FB, $07, $F6, $0F
|13839F| db $ED, $1E
|1383A1| db $27 ; Repeat byte
|1383A2| db $00
|1383A3| db $0F ; Raw block
|1383A4| db $FF, $00, $FC, $03, $93, $6F, $27, $DF
|1383AC| db $88, $F8, $47, $B0, $97, $70, $57, $F0
|1383B4| db $23 ; Repeat byte
|1383B5| db $00
|1383B6| db $00 ; Raw block
|1383B7| db $07
|1383B8| db $22 ; Repeat byte
|1383B9| db $0F
|1383BA| db $0B ; Raw block
|1383BB| db $D7, $32, $17, $F2, $D7, $D2, $17, $12
|1383C3| db $2F, $02, $C7, $1E
|1383C7| db $43 ; Repeat word
|1383C8| dw $FEE7
|1383CA| db $0B ; Raw block
|1383CB| db $CC, $0C, $2C, $EC, $FC, $F8, $18, $18
|1383D3| db $FF, $FF, $C4, $C4
|1383D7| db $23 ; Repeat byte
|1383D8| db $80
|1383D9| db $03 ; Raw block
|1383DA| db $98, $98, $90, $90
|1383DE| db $24 ; Repeat byte
|1383DF| db $80
|1383E0| db $15 ; Raw block
|1383E1| db $3B, $7F, $7F, $67, $6F, $7F, $7F, $C0
|1383E9| db $FF, $80, $FF, $50, $FF, $A0, $FF, $C0
|1383F1| db $FF, $88, $FF, $C0, $FF, $A0
|1383F7| db $29 ; Repeat byte
|1383F8| db $FF
|1383F9| db $0E ; Raw block
|1383FA| db $3C, $FF, $00, $3C, $C3, $18, $E7, $00
|138402| db $FF, $C3, $3C, $E7, $18, $FF, $00
|138409| db $24 ; Repeat byte
|13840A| db $FF
|13840B| db $06 ; Raw block
|13840C| db $3C, $18, $00, $FA, $FF, $FC, $FF
|138413| db $83 ; Copy past
|138414| dw $0450
|138416| db $07 ; Raw block
|138417| db $F8, $FF, $FC, $FF, $E9, $FE, $83, $FC
|13841F| db $23 ; Repeat byte
|138420| db $FF
|138421| db $06 ; Raw block
|138422| db $FE, $FC, $F8, $F0, $00, $FF, $3B
|138429| db $44 ; Repeat word
|13842A| dw $7FFF
|13842C| db $02 ; Raw block
|13842D| db $67, $FF, $6F
|138430| db $44 ; Repeat word
|138431| dw $7FFF
|138433| db $07 ; Raw block
|138434| db $FF, $C4, $80, $80, $98, $90, $80, $80
|13843C| db $97 ; Copy past
|13843D| dw $0300
|13843F| db $17 ; Raw block
|138440| db $65, $BF, $E7, $3F, $E7, $BF, $65, $3D
|138448| db $E6, $3E, $E7, $FF, $EF, $F0, $F0, $0F
|138450| db $9A, $18, $18, $9A, $19, $18, $10, $00
|138458| db $22 ; Repeat byte
|138459| db $FF
|13845A| db $0C ; Raw block
|13845B| db $AF, $FF, $CB, $FF, $8B, $FF, $F3, $FF
|138463| db $C2, $FF, $FE, $FF, $F8
|138468| db $27 ; Repeat byte
|138469| db $FF
|13846A| db $09 ; Raw block
|13846B| db $EF, $40, $FF, $5F, $BF, $00, $83, $00
|138473| db $FC, $7C
|138475| db $44 ; Repeat word
|138476| dw $7FFF
|138478| db $05 ; Raw block
|138479| db $00, $1F, $00, $40, $7C, $03
|13847F| db $22 ; Repeat byte
|138480| db $00
|138481| db $0F ; Raw block
|138482| db $01, $00, $7D, $00, $7B, $00, $5D, $00
|13848A| db $7C, $00, $6D, $00, $11, $00, $BF, $00
|138492| db $27 ; Repeat byte
|138493| db $FF
|138494| db $14 ; Raw block
|138495| db $CD, $52, $CE, $5F, $C0, $40, $C8, $77
|13849D| db $D5, $62, $C8, $77, $7F, $80, $00, $FF
|1384A5| db $20, $20, $3F, $00, $08
|1384AA| db $22 ; Repeat byte
|1384AB| db $00
|1384AC| db $E0, $27 ; EXT Raw block
|1384AE| db $FF, $BF, $BF, $7F, $1F, $1F, $80, $40
|1384B6| db $48, $17, $B4, $63, $E8, $37, $3F, $C0
|1384BE| db $00, $00, $E0, $3F, $A0, $08, $00, $00
|1384C6| db $C0, $5F, $CF, $5F, $C0, $40, $C0, $7F
|1384CE| db $DF, $60, $D2, $67, $F5, $0A, $FF, $00
|1384D6| db $83 ; Copy past
|1384D7| dw $0508
|1384D9| db $83 ; Copy past
|1384DA| dw $050B
|1384DC| db $03 ; Raw block
|1384DD| db $E3, $1C, $DB, $3C
|1384E1| db $47 ; Repeat word
|1384E2| dw $66A5
|1384E4| db $05 ; Raw block
|1384E5| db $BD, $66, $9B, $5C, $00, $00
|1384EB| db $24 ; Repeat byte
|1384EC| db $18
|1384ED| db $1F ; Raw block
|1384EE| db $20, $57, $F0, $3B, $B8, $6C, $CC, $37
|1384F6| db $E0, $3B, $D8, $BC, $C3, $5B, $E4, $B6
|1384FE| db $76, $0F, $47, $33, $1F, $07, $00, $00
|138506| db $09, $67, $BE, $E7, $3E, $E7, $BE, $67
|13850E| db $43 ; Repeat word
|13850F| dw $E73E
|138511| db $0C ; Raw block
|138512| db $FE, $EE, $F1, $F0, $0F, $98, $18, $18
|13851A| db $98, $18, $18, $10, $00
|13851F| db $23 ; Repeat byte
|138520| db $C0
|138521| db $25 ; Repeat byte
|138522| db $80
|138523| db $03 ; Raw block
|138524| db $88, $88, $DC, $DC
|138528| db $83 ; Copy past
|138529| dw $02AE
|13852B| db $22 ; Repeat byte
|13852C| db $7F
|13852D| db $0A ; Raw block
|13852E| db $77, $23, $88, $DF, $27, $CF, $32, $C7
|138536| db $38, $E3, $1D
|138539| db $43 ; Repeat word
|13853A| dw $0DF3
|13853C| db $83 ; Copy past
|13853D| dw $0038
|13853F| db $22 ; Repeat byte
|138540| db $3F
|138541| db $07 ; Raw block
|138542| db $1F, $0F, $0F, $1F, $3F, $E0, $1F, $C0
|13854A| db $83 ; Copy past
|13854B| dw $05B7
|13854D| db $02 ; Raw block
|13854E| db $3F, $E0, $1F
|138551| db $43 ; Repeat word
|138552| dw $3FC0
|138554| db $09 ; Raw block
|138555| db $82, $7F, $03, $0F, $0F, $17, $0F, $1F
|13855D| db $1F, $3F
|13855F| db $43 ; Repeat word
|138560| dw $FF00
|138562| db $00 ; Raw block
|138563| db $22
|138564| db $84 ; Copy past
|138565| dw $0143
|138567| db $04 ; Raw block
|138568| db $24, $FF, $10, $FF, $BA
|13856D| db $28 ; Repeat byte
|13856E| db $FF
|13856F| db $43 ; Repeat word
|138570| dw $FF3F
|138572| db $45 ; Repeat word
|138573| dw $FF7F
|138575| db $07 ; Raw block
|138576| db $77, $FF, $23, $FF, $00, $FF, $C0, $C0
|13857E| db $22 ; Repeat byte
|13857F| db $80
|138580| db $02 ; Raw block
|138581| db $88, $DC, $FF
|138584| db $FF ; End of GFX 2C

;===================================================================================================

GFX_2D:
|138585| db $0B ; Raw block
|138586| db $9F, $60, $DF, $20, $4F, $B0, $27, $D8
|13858E| db $18, $27, $07, $18
|138592| db $23 ; Repeat byte
|138593| db $00
|138594| db $01 ; Raw block
|138595| db $03, $01
|138597| db $25 ; Repeat byte
|138598| db $00
|138599| db $E0, $23 ; EXT Raw block
|13859B| db $1D, $02, $39, $06, $76, $19, $57, $3A
|1385A3| db $55, $3D, $4B, $3B, $67, $17, $75, $17
|1385AB| db $11, $21, $46, $05, $02, $04, $48, $48
|1385B3| db $37, $0F, $1B, $27, $08, $17, $06, $09
|1385BB| db $01, $06, $00, $01
|1385BF| db $23 ; Repeat byte
|1385C0| db $00
|1385C1| db $E0, $58 ; EXT Raw block
|1385C3| db $C1, $C0, $E0, $F0, $F8, $FE, $FF, $FF
|1385CB| db $BE, $BF, $59, $59, $A2, $E2, $19, $F9
|1385D3| db $C6, $3E, $79, $87, $0C, $73, $13, $1C
|1385DB| db $F0, $BE, $1F, $07, $01, $00, $80, $E0
|1385E3| db $F2, $7F, $5C, $DB, $5D, $DA, $2F, $E8
|1385EB| db $97, $70, $CB, $38, $E3, $1E, $F9, $06
|1385F3| db $00, $20, $20, $10, $08, $04, $00, $00
|1385FB| db $E1, $1E, $D8, $3F, $84, $4F, $B4, $07
|138603| db $3C, $C7, $99, $E6, $12, $6D, $33, $3F
|13860B| db $C0, $80, $38, $48, $80, $00, $C0, $C0
|138613| db $FF, $8C, $FF, $C8, $FF, $68, $7E, $20
|13861B| db $3C
|13861C| db $26 ; Repeat byte
|13861D| db $00
|13861E| db $E0, $39 ; EXT Raw block
|138620| db $80, $C0, $E1, $6E, $BC, $C3, $FF, $FF
|138628| db $E0, $00, $F7, $00, $7F, $00, $79, $00
|138630| db $49, $00, $01, $48, $00, $01, $81, $81
|138638| db $60, $37, $89, $86, $B6, $B6, $FE, $7E
|138640| db $70, $08, $60, $04, $E0, $04, $88, $1C
|138648| db $8C, $0C, $84, $1C, $82, $26, $C0, $64
|138650| db $67, $5B, $9B, $63, $73, $63, $59, $1B
|138658| db $30, $30
|13865A| db $23 ; Repeat byte
|13865B| db $48
|13865C| db $E0, $26 ; EXT Raw block
|13865E| db $0C, $0C, $12, $12, $92, $92, $12, $92
|138666| db $00, $40, $CF, $B7, $B7, $F3, $ED, $6D
|13866E| db $6D, $BF, $E2, $1E, $E5, $1D, $FA, $0B
|138676| db $DD, $2F, $C6, $2A, $C9, $2E, $CB, $2C
|13867E| db $CF, $28, $01, $02, $04, $00, $11
|138685| db $22 ; Repeat byte
|138686| db $10
|138687| db $19 ; Raw block
|138688| db $FB, $FB, $05, $FD, $FA, $FE, $05, $07
|138690| db $FA, $FB, $FE, $03, $BF, $00, $53, $6C
|138698| db $04, $02, $01, $F8, $04, $00, $40, $80
|1386A0| db $00, $02
|1386A2| db $43 ; Repeat word
|1386A3| dw $0500
|1386A5| db $22 ; Repeat byte
|1386A6| db $00
|1386A7| db $08 ; Raw block
|1386A8| db $30, $10, $58, $00, $4F, $06, $09, $00
|1386B0| db $02
|1386B1| db $22 ; Repeat byte
|1386B2| db $00
|1386B3| db $00 ; Raw block
|1386B4| db $20
|1386B5| db $22 ; Repeat byte
|1386B6| db $00
|1386B7| db $00 ; Raw block
|1386B8| db $02
|1386B9| db $44 ; Repeat word
|1386BA| dw $0500
|1386BC| db $0A ; Raw block
|1386BD| db $0C, $00, $1C, $08, $76, $1C, $E3, $7F
|1386C5| db $80, $00, $02
|1386C8| db $25 ; Repeat byte
|1386C9| db $00
|1386CA| db $0A ; Raw block
|1386CB| db $0F, $00, $3F, $00, $7F, $00, $FF, $00
|1386D3| db $F0, $00, $E0
|1386D6| db $44 ; Repeat word
|1386D7| dw $C000
|1386D9| db $E0, $21 ; EXT Raw block
|1386DB| db $0F, $3F, $7F, $FF, $F0, $E0, $C0, $C0
|1386E3| db $01, $00, $22, $01, $6A, $31, $46, $29
|1386EB| db $50, $37, $20, $1E, $31, $0B, $34, $0E
|1386F3| db $00, $01, $01, $31, $0D, $05, $04, $01
|1386FB| db $CD, $3E
|1386FD| db $43 ; Repeat word
|1386FE| dw $1EE1
|138700| db $17 ; Raw block
|138701| db $73, $0C, $3F, $00, $1F, $01, $0F, $00
|138709| db $07, $00, $80, $80, $C0, $60, $30, $18
|138711| db $0C, $07, $75, $07, $3C, $02, $38, $05
|138719| db $43 ; Repeat word
|13871A| dw $061B
|13871C| db $0D ; Raw block
|13871D| db $1F, $01, $1F, $00, $3F, $00, $58, $2D
|138725| db $32, $10, $10, $12, $19, $38
|13872B| db $27 ; Repeat byte
|13872C| db $00
|13872D| db $07 ; Raw block
|13872E| db $01, $00, $03, $00, $07, $01, $3F, $00
|138736| db $23 ; Repeat byte
|138737| db $FF
|138738| db $0F ; Raw block
|138739| db $FE, $FC, $F9, $C0, $01, $00, $1F, $00
|138741| db $7F, $01, $FF, $11, $FF, $70, $FF, $FC
|138749| db $22 ; Repeat byte
|13874A| db $FF
|13874B| db $08 ; Raw block
|13874C| db $7F, $FE, $E0, $81, $1F, $7F, $FF, $FF
|138754| db $7F
|138755| db $2A ; Repeat byte
|138756| db $FF
|138757| db $04 ; Raw block
|138758| db $CE, $FF, $30, $FF, $90
|13875D| db $24 ; Repeat byte
|13875E| db $FF
|13875F| db $02 ; Raw block
|138760| db $CF, $34, $B0
|138763| db $24 ; Repeat byte
|138764| db $FF
|138765| db $09 ; Raw block
|138766| db $FE, $FF, $F0, $FF, $80, $FE, $01, $E0
|13876E| db $1F, $00
|138770| db $23 ; Repeat byte
|138771| db $FF
|138772| db $01 ; Raw block
|138773| db $F8, $C0
|138775| db $22 ; Repeat byte
|138776| db $00
|138777| db $05 ; Raw block
|138778| db $ED, $1E, $F3, $0C, $3F, $C0
|13877E| db $43 ; Repeat word
|13877F| dw $E0DF
|138781| db $05 ; Raw block
|138782| db $B1, $CE, $60, $9F, $DC, $3F
|138788| db $27 ; Repeat byte
|138789| db $00
|13878A| db $05 ; Raw block
|13878B| db $40, $40, $58, $58, $64, $64
|138791| db $23 ; Repeat byte
|138792| db $24
|138793| db $25 ; Repeat byte
|138794| db $00
|138795| db $04 ; Raw block
|138796| db $BF, $A7, $9B, $DB, $DB
|13879B| db $22 ; Repeat byte
|13879C| db $FF
|13879D| db $E0, $20 ; EXT Raw block
|13879F| db $C0, $64, $84, $64, $80, $40, $82, $4E
|1387A7| db $C1, $13, $C1, $33, $61, $13, $72, $02
|1387AF| db $1B, $1B, $3F, $31, $AC, $8C, $4C, $6D
|1387B7| db $80, $C0, $00, $70, $00, $48, $11, $5F
|1387BF| db $10
|1387C0| db $44 ; Repeat word
|1387C1| dw $9059
|1387C3| db $1A ; Raw block
|1387C4| db $44, $2D, $3F, $8F, $B7, $A0, $A6, $26
|1387CC| db $26, $12, $CD, $2A, $DD, $3B, $DE, $3D
|1387D4| db $EF, $1E, $F4, $0F, $B8, $47, $DD, $23
|1387DC| db $CE, $31, $10
|1387DF| db $26 ; Repeat byte
|1387E0| db $00
|1387E1| db $09 ; Raw block
|1387E2| db $8E, $31, $FE, $03, $FD, $FE, $02, $FD
|1387EA| db $FF, $01
|1387EC| db $43 ; Repeat word
|1387ED| dw $FFFD
|1387EF| db $02 ; Raw block
|1387F0| db $FC, $FF, $70
|1387F3| db $26 ; Repeat byte
|1387F4| db $00
|1387F5| db $0F ; Raw block
|1387F6| db $03, $04, $01, $0E, $0D, $12, $17, $08
|1387FE| db $03, $64, $21, $B2, $05, $92, $0B, $04
|138806| db $22 ; Repeat byte
|138807| db $00
|138808| db $04 ; Raw block
|138809| db $10, $00, $40, $00, $08
|13880E| db $43 ; Repeat word
|13880F| dw $00FF
|138811| db $02 ; Raw block
|138812| db $FE, $00, $5C
|138815| db $85 ; Copy past
|138816| dw $0127
|138818| db $00 ; Raw block
|138819| db $48
|13881A| db $22 ; Repeat byte
|13881B| db $00
|13881C| db $02 ; Raw block
|13881D| db $99, $B2, $54
|138820| db $83 ; Copy past
|138821| dw $0134
|138823| db $03 ; Raw block
|138824| db $C0, $00, $40, $80
|138828| db $43 ; Repeat word
|138829| dw $00E0
|13882B| db $02 ; Raw block
|13882C| db $60, $80, $C0
|13882F| db $24 ; Repeat byte
|138830| db $00
|138831| db $04 ; Raw block
|138832| db $C0, $40, $E0, $60, $20
|138837| db $22 ; Repeat byte
|138838| db $00
|138839| db $0F ; Raw block
|13883A| db $F8, $0F, $3C, $CB, $68, $B7, $40, $AB
|138842| db $50, $B7, $20, $DE, $11, $EB, $94, $6E
|13884A| db $22 ; Repeat byte
|13884B| db $01
|13884C| db $00 ; Raw block
|13884D| db $35
|13884E| db $83 ; Copy past
|13884F| dw $017C
|138851| db $E0, $2F ; EXT Raw block
|138853| db $1F, $00, $7F, $00, $F0, $0F, $C0, $3F
|13885B| db $07, $FF, $7F, $9F, $E0, $60, $C0, $5E
|138863| db $1F, $70, $C0, $00, $00, $60, $9F, $BF
|13886B| db $3B, $04, $72, $09, $F2, $15, $C6, $21
|138873| db $C7, $20, $CF, $28, $DB, $3C, $CB, $3C
|13887B| db $34, $6C, $C8, $98, $98, $90, $80, $80
|138883| db $86 ; Copy past
|138884| dw $00F0
|138886| db $01 ; Raw block
|138887| db $2E, $C3
|138889| db $46 ; Repeat word
|13888A| dw $CB2C
|13888C| db $83 ; Copy past
|13888D| dw $0100
|13888F| db $23 ; Repeat byte
|138890| db $10
|138891| db $84 ; Copy past
|138892| dw $0108
|138894| db $0D ; Raw block
|138895| db $06, $FD, $03, $C6, $39, $93, $6C, $79
|13889D| db $C6, $1D, $A6, $04, $02, $01
|1388A3| db $23 ; Repeat byte
|1388A4| db $00
|1388A5| db $12 ; Raw block
|1388A6| db $60, $FE, $91, $79, $06, $7F, $00, $7E
|1388AE| db $01, $E0, $1F, $C0, $3F, $DE, $21, $FF
|1388B6| db $00, $B0, $20
|1388B9| db $25 ; Repeat byte
|1388BA| db $00
|1388BB| db $06 ; Raw block
|1388BC| db $FE, $01, $FC, $03, $01, $FF, $0F
|1388C3| db $48 ; Repeat word
|1388C4| dw $1FFF
|1388C6| db $27 ; Repeat byte
|1388C7| db $00
|1388C8| db $E0, $27 ; EXT Raw block
|1388CA| db $3F, $00, $4D, $3E, $52, $33, $56, $B7
|1388D2| db $0C, $FF, $01, $FE, $03, $7C, $01, $3E
|1388DA| db $80, $00, $0C, $88, $80, $80, $C0, $FE
|1388E2| db $FD, $02, $F7, $08, $EF, $11, $DE, $23
|1388EA| db $DA, $26, $CA, $37, $E4, $3B, $AB, $7C
|1388F2| db $22 ; Repeat byte
|1388F3| db $00
|1388F4| db $01 ; Raw block
|1388F5| db $01, $01
|1388F7| db $22 ; Repeat byte
|1388F8| db $00
|1388F9| db $03 ; Raw block
|1388FA| db $01, $00, $0F, $00
|1388FE| db $83 ; Copy past
|1388FF| dw $01A4
|138901| db $E0, $27 ; EXT Raw block
|138903| db $7E, $08, $72, $10, $F2, $10, $F6, $16
|13890B| db $01, $0F, $1C, $20, $61, $4D, $CD, $89
|138913| db $06, $06, $09, $09, $19, $19, $25, $25
|13891B| db $A6, $A6, $E2, $E2, $00, $B0, $00, $48
|138923| db $F9, $F6, $E6, $DA, $59, $1D, $4F, $B7
|13892B| db $87 ; Copy past
|13892C| dw $01FE
|13892E| db $09 ; Raw block
|13892F| db $80, $7F, $00, $FF, $0F, $FF, $3F, $FF
|138937| db $F8, $C0
|138939| db $25 ; Repeat byte
|13893A| db $00
|13893B| db $43 ; Repeat word
|13893C| dw $00FF
|13893E| db $44 ; Repeat word
|13893F| dw $FF00
|138941| db $22 ; Repeat byte
|138942| db $FF
|138943| db $03 ; Raw block
|138944| db $FE, $FF, $FC, $FF
|138948| db $27 ; Repeat byte
|138949| db $00
|13894A| db $0C ; Raw block
|13894B| db $E8, $02, $78, $02, $7C, $07, $3E, $01
|138953| db $1F, $00, $07, $00, $01
|138958| db $22 ; Repeat byte
|138959| db $00
|13895A| db $06 ; Raw block
|13895B| db $D5, $55, $60, $38, $1C, $07, $01
|138962| db $24 ; Repeat byte
|138963| db $00
|138964| db $0C ; Raw block
|138965| db $01, $00, $02, $01, $01, $02, $06, $01
|13896D| db $02, $05, $04, $0B, $00
|138972| db $62 ; Increment fill
|138973| db $00
|138974| db $13 ; Raw block
|138975| db $00, $04, $00, $00, $FF, $40, $7F, $80
|13897D| db $FD, $02, $FE, $01, $73, $8C, $39, $46
|138985| db $BE, $C3, $E7, $19
|138989| db $24 ; Repeat byte
|13898A| db $00
|13898B| db $E0, $21 ; EXT Raw block
|13898D| db $80, $00, $00, $FE, $7F, $FD, $BF, $FB
|138995| db $DF, $F7, $EF, $EF, $F7, $DF, $FB, $BF
|13899D| db $FD, $7F, $FE, $FE, $FD, $FB, $F7, $EF
|1389A5| db $DF, $BF, $7F, $F1, $CF, $4D, $73, $1E
|1389AD| db $0D, $00
|1389AF| db $22 ; Repeat byte
|1389B0| db $13
|1389B1| db $26 ; Repeat byte
|1389B2| db $00
|1389B3| db $00 ; Raw block
|1389B4| db $80
|1389B5| db $22 ; Repeat byte
|1389B6| db $EC
|1389B7| db $22 ; Repeat byte
|1389B8| db $FF
|1389B9| db $E0, $23 ; EXT Raw block
|1389BB| db $3D, $FD, $94, $D7, $57, $52, $96, $95
|1389C3| db $A5, $77, $D8, $2D, $FF, $0A, $2A, $10
|1389CB| db $02, $2A, $A8, $68, $08, $82, $E0, $20
|1389D3| db $CB, $2C, $D9, $3E, $D8, $3F, $EC, $1F
|1389DB| db $F5, $0E, $BA, $45
|1389DF| db $84 ; Copy past
|1389E0| dw $027C
|1389E2| db $26 ; Repeat byte
|1389E3| db $00
|1389E4| db $0A ; Raw block
|1389E5| db $45, $D6, $AB, $6C, $C6, $39, $FE, $01
|1389ED| db $03, $FD, $05
|1389F0| db $84 ; Copy past
|1389F1| dw $0293
|1389F3| db $01 ; Raw block
|1389F4| db $38, $10
|1389F6| db $25 ; Repeat byte
|1389F7| db $00
|1389F8| db $0F ; Raw block
|1389F9| db $FF, $00, $0F, $F0, $E7, $F8, $C7, $F8
|138A01| db $0E, $F1, $1C, $E3, $38, $C7, $F1, $0F
|138A09| db $27 ; Repeat byte
|138A0A| db $00
|138A0B| db $07 ; Raw block
|138A0C| db $1E, $FE, $0E, $FE, $07, $FF, $00, $FF
|138A14| db $43 ; Repeat word
|138A15| dw $FE01
|138A17| db $05 ; Raw block
|138A18| db $FC, $FF, $06, $07, $01, $01
|138A1E| db $24 ; Repeat byte
|138A1F| db $00
|138A20| db $00 ; Raw block
|138A21| db $F8
|138A22| db $23 ; Repeat byte
|138A23| db $00
|138A24| db $01 ; Raw block
|138A25| db $18, $18
|138A27| db $23 ; Repeat byte
|138A28| db $24
|138A29| db $01 ; Raw block
|138A2A| db $04, $04
|138A2C| db $23 ; Repeat byte
|138A2D| db $00
|138A2E| db $07 ; Raw block
|138A2F| db $FF, $FF, $E7, $DB, $DB, $FB, $FF, $FF
|138A37| db $2F ; Repeat byte
|138A38| db $00
|138A39| db $27 ; Repeat byte
|138A3A| db $FF
|138A3B| db $01 ; Raw block
|138A3C| db $C0, $20
|138A3E| db $45 ; Repeat word
|138A3F| dw $5080
|138A41| db $01 ; Raw block
|138A42| db $88, $88
|138A44| db $23 ; Repeat byte
|138A45| db $00
|138A46| db $02 ; Raw block
|138A47| db $01, $01, $1F
|138A4A| db $22 ; Repeat byte
|138A4B| db $2F
|138A4C| db $E0, $2B ; EXT Raw block
|138A4E| db $77, $FF, $FF, $FE, $80, $CE, $90, $D9
|138A56| db $92, $DB, $D6, $9F, $E6, $1F, $FB, $06
|138A5E| db $3F, $00, $0F, $00, $31, $26, $24, $20
|138A66| db $00, $E0, $39, $0F, $7E, $81, $F3, $0C
|138A6E| db $EE, $11, $D8, $27, $ED, $12, $D6, $29
|138A76| db $E5, $1B, $CA, $3E
|138A7A| db $26 ; Repeat byte
|138A7B| db $00
|138A7C| db $0F ; Raw block
|138A7D| db $01, $38, $C7, $9D, $E2, $4F, $70, $E7
|138A85| db $F8, $07, $F8, $0F, $F0, $FF, $00, $7C
|138A8D| db $22 ; Repeat byte
|138A8E| db $00
|138A8F| db $00 ; Raw block
|138A90| db $80
|138A91| db $25 ; Repeat byte
|138A92| db $00
|138A93| db $00 ; Raw block
|138A94| db $02
|138A95| db $43 ; Repeat word
|138A96| dw $0500
|138A98| db $22 ; Repeat byte
|138A99| db $00
|138A9A| db $84 ; Copy past
|138A9B| dw $02C1
|138A9D| db $22 ; Repeat byte
|138A9E| db $00
|138A9F| db $00 ; Raw block
|138AA0| db $02
|138AA1| db $22 ; Repeat byte
|138AA2| db $00
|138AA3| db $17 ; Raw block
|138AA4| db $20, $00, $00, $57, $10, $6F, $28, $27
|138AAC| db $40, $33, $10, $31, $22, $1A, $13, $0F
|138AB4| db $0B, $03, $00, $20, $10, $10, $08, $08
|138ABC| db $22 ; Repeat byte
|138ABD| db $00
|138ABE| db $E0, $22 ; EXT Raw block
|138AC0| db $A3, $5C, $95, $6E, $BA, $26, $E5, $13
|138AC8| db $22, $41, $15, $66, $3A, $04, $1C, $00
|138AD0| db $00, $40, $41, $98, $1C, $09, $32, $1C
|138AD8| db $7F, $80, $7C, $FF, $82, $8F, $02, $FB
|138AE0| db $04, $07, $F8
|138AE3| db $83 ; Copy past
|138AE4| dw $040F
|138AE6| db $22 ; Repeat byte
|138AE7| db $00
|138AE8| db $02 ; Raw block
|138AE9| db $7C, $FC, $F8
|138AEC| db $22 ; Repeat byte
|138AED| db $00
|138AEE| db $FF ; End of GFX 2D

;===================================================================================================

GFX_2E:
|138AEF| db $0F ; Raw block
|138AF0| db $00, $00, $03, $00, $0D, $03, $14, $0C
|138AF8| db $28, $18, $30, $50, $63, $23, $64, $A7
|138B00| db $22 ; Repeat byte
|138B01| db $00
|138B02| db $19 ; Raw block
|138B03| db $03, $07, $0F, $1C, $18, $82, $BA, $84
|138B0B| db $A5, $D8, $5A, $C0, $E7, $80, $DE, $00
|138B13| db $5F, $00, $1E, $00, $DF, $7D, $7B, $A7
|138B1B| db $3F, $7F
|138B1D| db $23 ; Repeat byte
|138B1E| db $FF
|138B1F| db $11 ; Raw block
|138B20| db $80, $FF, $C0, $F8, $E7, $76, $6F, $7F
|138B28| db $6F, $79, $6F, $70, $4F, $7E, $41, $80
|138B30| db $40, $20
|138B32| db $24 ; Repeat byte
|138B33| db $A0
|138B34| db $01 ; Raw block
|138B35| db $24, $FB
|138B37| db $43 ; Repeat word
|138B38| dw $7B84
|138B3A| db $08 ; Raw block
|138B3B| db $94, $7B, $B8, $77, $F4, $2F, $CA, $FB
|138B43| db $01
|138B44| db $25 ; Repeat byte
|138B45| db $00
|138B46| db $0C ; Raw block
|138B47| db $40, $84, $FF, $AD, $DE, $5B, $BC, $94
|138B4F| db $7B, $8B, $77, $96, $6E
|138B54| db $43 ; Repeat word
|138B55| dw $6C94
|138B57| db $01 ; Raw block
|138B58| db $D3, $2B
|138B5A| db $23 ; Repeat byte
|138B5B| db $00
|138B5C| db $05 ; Raw block
|138B5D| db $01, $03, $03, $04, $20, $20
|138B63| db $23 ; Repeat byte
|138B64| db $50
|138B65| db $03 ; Raw block
|138B66| db $00, $00, $0C, $0C
|138B6A| db $23 ; Repeat byte
|138B6B| db $12
|138B6C| db $18 ; Raw block
|138B6D| db $00, $00, $DF, $AF, $AF, $FF, $F3, $ED
|138B75| db $ED, $FF, $CF, $30, $E7, $18, $70, $0F
|138B7D| db $33, $0F, $27, $1C, $37, $08, $1B, $04
|138B85| db $0F
|138B86| db $28 ; Repeat byte
|138B87| db $00
|138B88| db $0F ; Raw block
|138B89| db $01, $FE, $FF, $00, $1F, $E0, $CF, $F0
|138B91| db $A7, $78, $D3, $3C, $E9, $1E, $F0, $0F
|138B99| db $27 ; Repeat byte
|138B9A| db $00
|138B9B| db $43 ; Repeat word
|138B9C| dw $00FF
|138B9E| db $04 ; Raw block
|138B9F| db $07, $F8, $00, $FF, $F8
|138BA4| db $26 ; Repeat byte
|138BA5| db $FF
|138BA6| db $27 ; Repeat byte
|138BA7| db $00
|138BA8| db $45 ; Repeat word
|138BA9| dw $00FF
|138BAB| db $09 ; Raw block
|138BAC| db $7F, $80, $1F, $E0, $87, $F8, $E7, $F8
|138BB4| db $F3, $FC
|138BB6| db $27 ; Repeat byte
|138BB7| db $00
|138BB8| db $08 ; Raw block
|138BB9| db $F3, $03, $F9, $01, $F8, $00, $FC, $00
|138BC1| db $FE
|138BC2| db $46 ; Repeat word
|138BC3| dw $FF00
|138BC5| db $01 ; Raw block
|138BC6| db $FC, $FE
|138BC8| db $25 ; Repeat byte
|138BC9| db $FF
|138BCA| db $17 ; Raw block
|138BCB| db $FE, $7F, $FD, $BF, $FB, $DF, $F7, $EF
|138BD3| db $EF, $F7, $DF, $FB, $BF, $FD, $7F, $FE
|138BDB| db $FE, $FD, $FB, $F7, $EF, $DF, $BF, $7F
|138BE3| db $45 ; Repeat word
|138BE4| dw $150C
|138BE6| db $09 ; Raw block
|138BE7| db $0E, $17, $06, $0B, $02, $0D, $01, $06
|138BEF| db $00, $03
|138BF1| db $22 ; Repeat byte
|138BF2| db $02
|138BF3| db $24 ; Repeat byte
|138BF4| db $00
|138BF5| db $0A ; Raw block
|138BF6| db $23, $1C, $12, $0D, $08, $07, $09, $06
|138BFE| db $06, $01, $03
|138C01| db $24 ; Repeat byte
|138C02| db $00
|138C03| db $1B ; Raw block
|138C04| db $20, $10, $08, $08, $06, $03, $00, $00
|138C0C| db $E2, $1E, $E5, $1D, $FA, $0B, $DD, $2F
|138C14| db $C7, $2B, $C9, $2F, $CA, $2D, $CF, $2A
|138C1C| db $01, $02, $04, $00
|138C20| db $23 ; Repeat byte
|138C21| db $10
|138C22| db $07 ; Raw block
|138C23| db $FB, $FB, $FD, $FD, $FA, $FE, $8D, $8F
|138C2B| db $43 ; Repeat word
|138C2C| dw $0706
|138C2E| db $E0, $7D ; EXT Raw block
|138C30| db $8D, $8E, $02, $FD, $04, $02, $01, $70
|138C38| db $F8, $F8, $70, $00, $DF, $20, $CF, $30
|138C40| db $EF, $93, $F4, $8C, $E8, $98, $F0, $90
|138C48| db $C2, $23, $A5, $66, $03, $80, $40, $43
|138C50| db $47, $4F, $9C, $18, $00, $6E, $40, $F3
|138C58| db $E4, $35, $FA, $1E, $D2, $2F, $AC, $75
|138C60| db $34, $F6, $6C, $EE, $FF, $3F, $1B, $01
|138C68| db $01, $03, $0B, $13, $7A, $06, $59, $37
|138C70| db $FC, $27, $D8, $03, $EF, $37, $54, $BC
|138C78| db $E8, $99, $69, $BB, $01, $00, $00, $24
|138C80| db $10, $03, $07, $06, $98, $7F, $92, $6E
|138C88| db $A4, $5C, $D2, $3E, $DA, $3E, $C2, $36
|138C90| db $42, $36, $5A, $3E, $00, $01, $03, $01
|138C98| db $01, $09, $09, $01, $7F, $80, $FF, $00
|138CA0| db $0F, $F0, $03, $FC, $F0, $FF, $1C, $1F
|138CA8| db $06, $07, $03, $7B, $73, $09
|138CAE| db $22 ; Repeat byte
|138CAF| db $00
|138CB0| db $02 ; Raw block
|138CB1| db $E0, $F8, $FC
|138CB4| db $26 ; Repeat byte
|138CB5| db $FF
|138CB6| db $02 ; Raw block
|138CB7| db $7F, $FF, $3F
|138CBA| db $43 ; Repeat word
|138CBB| dw $9F7F
|138CBD| db $01 ; Raw block
|138CBE| db $3F, $CF
|138CC0| db $23 ; Repeat byte
|138CC1| db $FF
|138CC2| db $0B ; Raw block
|138CC3| db $7F, $3F, $3F, $1F, $7F, $FF, $FC, $FC
|138CCB| db $E0, $E0, $C0, $C0
|138CCF| db $25 ; Repeat byte
|138CD0| db $80
|138CD1| db $05 ; Raw block
|138CD2| db $0C, $0C, $00, $03, $1F, $3F
|138CD8| db $22 ; Repeat byte
|138CD9| db $7F
|138CDA| db $22 ; Repeat byte
|138CDB| db $F3
|138CDC| db $15 ; Raw block
|138CDD| db $01, $01, $00, $00, $07, $07, $0C, $0F
|138CE5| db $1B, $1C, $37, $38, $6D, $73, $0C, $FE
|138CED| db $FF, $F8, $F0, $E0, $C0, $80
|138CF3| db $23 ; Repeat byte
|138CF4| db $FF
|138CF5| db $04 ; Raw block
|138CF6| db $07, $07, $00, $00, $F8
|138CFB| db $45 ; Repeat word
|138CFC| dw $FF00
|138CFE| db $22 ; Repeat byte
|138CFF| db $00
|138D00| db $00 ; Raw block
|138D01| db $F8
|138D02| db $2A ; Repeat byte
|138D03| db $FF
|138D04| db $09 ; Raw block
|138D05| db $7F, $7F, $1F, $1F, $87, $07, $E7, $07
|138D0D| db $F3, $03
|138D0F| db $22 ; Repeat byte
|138D10| db $00
|138D11| db $04 ; Raw block
|138D12| db $80, $E0, $F8, $F8, $FC
|138D17| db $25 ; Repeat byte
|138D18| db $00
|138D19| db $08 ; Raw block
|138D1A| db $07, $00, $0F, $01, $1E, $0C, $13, $0C
|138D22| db $1F
|138D23| db $25 ; Repeat byte
|138D24| db $00
|138D25| db $02 ; Raw block
|138D26| db $01, $00, $00
|138D29| db $97 ; Copy past
|138D2A| dw $0108
|138D2C| db $97 ; Copy past
|138D2D| dw $0108
|138D2F| db $22 ; Repeat byte
|138D30| db $00
|138D31| db $02 ; Raw block
|138D32| db $18, $00, $24
|138D35| db $43 ; Repeat word
|138D36| dw $4200
|138D38| db $1E ; Raw block
|138D39| db $24, $66, $18, $7E, $00, $3C, $00, $00
|138D41| db $18, $3C, $3C, $18, $00, $00, $CD, $2B
|138D49| db $DC, $3B, $DE, $3D, $EF, $1E, $F4, $0F
|138D51| db $B8, $47, $DD, $23, $CE, $31, $10
|138D58| db $26 ; Repeat byte
|138D59| db $00
|138D5A| db $09 ; Raw block
|138D5B| db $FC, $01, $82, $83, $7D, $FE, $02, $FD
|138D63| db $FF, $01
|138D65| db $43 ; Repeat word
|138D66| dw $FFFD
|138D68| db $03 ; Raw block
|138D69| db $FC, $FF, $02, $7C
|138D6D| db $25 ; Repeat byte
|138D6E| db $00
|138D6F| db $05 ; Raw block
|138D70| db $BB, $7C, $B6, $78, $AE, $70
|138D76| db $43 ; Repeat word
|138D77| dw $609C
|138D79| db $00 ; Raw block
|138D7A| db $9D
|138D7B| db $44 ; Repeat word
|138D7C| dw $9F60
|138D7E| db $E0, $2F ; EXT Raw block
|138D80| db $00, $00, $02, $04, $04, $05, $07, $03
|138D88| db $35, $F5, $94, $DF, $43, $6E, $86, $AD
|138D90| db $31, $FB, $44, $F5, $BF, $2A, $BF, $00
|138D98| db $0A, $2A, $B8, $78, $0C, $0A, $40, $40
|138DA0| db $DC, $27, $D6, $2A, $BE, $6A, $D5, $43
|138DA8| db $B7, $1D, $FF, $49, $DE, $21, $67, $18
|138DB0| db $22 ; Repeat byte
|138DB1| db $01
|138DB2| db $01 ; Raw block
|138DB3| db $28, $48
|138DB5| db $22 ; Repeat byte
|138DB6| db $00
|138DB7| db $E0, $2A ; EXT Raw block
|138DB9| db $FC, $23, $F8, $C7, $F0, $9F, $D2, $3F
|138DC1| db $D5, $3D, $CB, $3B, $E7, $17, $F5, $17
|138DC9| db $30, $00, $40, $80, $82, $84, $48, $C8
|138DD1| db $D8, $3F, $62, $7E, $74, $7C, $E2, $FE
|138DD9| db $1A, $E6, $32, $CE, $E2, $1E, $4A, $3E
|138DE1| db $00, $81, $83
|138DE4| db $24 ; Repeat byte
|138DE5| db $01
|138DE6| db $06 ; Raw block
|138DE7| db $F3, $FC, $F9, $FE, $FC, $FF, $FE
|138DEE| db $28 ; Repeat byte
|138DEF| db $FF
|138DF0| db $27 ; Repeat byte
|138DF1| db $00
|138DF2| db $E0, $28 ; EXT Raw block
|138DF4| db $3C, $3C, $48, $78, $88, $F8, $98, $78
|138DFC| db $FC, $3C, $BE, $7E, $3F, $FF, $1C, $FF
|138E04| db $C3, $87, $07, $07, $03, $01, $00, $00
|138E0C| db $CA, $F7, $D3, $ED, $D7, $E8, $D5, $EE
|138E14| db $52, $6B, $48, $75, $EC, $F3, $F7, $F8
|138E1C| db $01
|138E1D| db $22 ; Repeat byte
|138E1E| db $00
|138E1F| db $01 ; Raw block
|138E20| db $84, $83
|138E22| db $23 ; Repeat byte
|138E23| db $00
|138E24| db $09 ; Raw block
|138E25| db $01, $00, $03, $00, $07, $01, $0F, $03
|138E2D| db $1F, $07
|138E2F| db $43 ; Repeat word
|138E30| dw $0F3F
|138E32| db $11 ; Raw block
|138E33| db $FF, $FE, $FC, $F9, $F3, $E7, $CF, $CF
|138E3B| db $FF, $3F, $FF, $3B, $FF, $37, $FF, $27
|138E43| db $FF, $2F
|138E45| db $43 ; Repeat word
|138E46| dw $0F7F
|138E48| db $18 ; Raw block
|138E49| db $3F, $0F, $3F, $3B, $37, $27, $2F, $8F
|138E51| db $8F, $CF, $06, $01, $09, $07, $3A, $06
|138E59| db $F5, $3B, $82, $85, $19, $1E, $07, $F8
|138E61| db $FE
|138E62| db $22 ; Repeat byte
|138E63| db $00
|138E64| db $E0, $30 ; EXT Raw block
|138E66| db $01, $00, $78, $E0, $00, $00, $F8, $0F
|138E6E| db $FC, $0B, $E8, $37, $C0, $2B, $D0, $37
|138E76| db $60, $1E, $31, $0B, $14, $0E, $01, $81
|138E7E| db $81, $B5, $8D, $45, $24, $01, $F7, $08
|138E86| db $F9, $06, $7C, $43, $AE, $D1, $73, $8C
|138E8E| db $79, $86, $7C, $83, $EE, $11, $00, $00
|138E96| db $80
|138E97| db $24 ; Repeat byte
|138E98| db $00
|138E99| db $4E ; Repeat word
|138E9A| dw $00FF
|138E9C| db $2E ; Repeat byte
|138E9D| db $00
|138E9E| db $09 ; Raw block
|138E9F| db $01, $00, $1F, $01, $74, $0C, $70, $E0
|138EA7| db $89, $66
|138EA9| db $24 ; Repeat byte
|138EAA| db $00
|138EAB| db $01 ; Raw block
|138EAC| db $03, $0F
|138EAE| db $24 ; Repeat byte
|138EAF| db $00
|138EB0| db $0A ; Raw block
|138EB1| db $3C, $00, $EA, $2C, $B1, $D2, $16, $2B
|138EB9| db $FA, $41, $62
|138EBC| db $23 ; Repeat byte
|138EBD| db $00
|138EBE| db $1B ; Raw block
|138EBF| db $10, $0C, $C0, $00, $00, $D4, $EE, $B1
|138EC7| db $CB, $60, $9E, $D0, $37, $48, $AF, $74
|138ECF| db $B7, $46, $E7, $80, $9C, $01, $04, $05
|138ED7| db $0D, $31, $09, $19
|138EDB| db $98 ; Copy past
|138EDC| dw $029F
|138EDE| db $E0, $2F ; EXT Raw block
|138EE0| db $56, $39, $6D, $23, $5E, $10, $5D, $30
|138EE8| db $64, $38, $32, $1C, $1A, $04, $06, $00
|138EF0| db $00, $10, $21, $20, $10, $08, $04, $00
|138EF8| db $DC, $23, $5E, $E1, $7F, $C0, $18, $E7
|138F00| db $97, $6F, $53, $AF, $5A, $A6, $2F, $D7
|138F08| db $00, $00, $80, $40, $00, $20, $01, $02
|138F10| db $4F ; Repeat word
|138F11| dw $00FF
|138F13| db $37 ; Repeat byte
|138F14| db $FF
|138F15| db $27 ; Repeat byte
|138F16| db $00
|138F17| db $0F ; Raw block
|138F18| db $06, $F9, $8E, $F1, $CC, $F3, $60, $7F
|138F20| db $B0, $BF, $58, $DF, $AF, $6F, $D0, $30
|138F28| db $22 ; Repeat byte
|138F29| db $00
|138F2A| db $08 ; Raw block
|138F2B| db $80, $40, $20, $10, $0F, $F3, $FC, $03
|138F33| db $FC
|138F34| db $43 ; Repeat word
|138F35| dw $FE01
|138F37| db $07 ; Raw block
|138F38| db $79, $FE, $84, $87, $7A, $7B, $86, $FF
|138F40| db $24 ; Repeat byte
|138F41| db $00
|138F42| db $14 ; Raw block
|138F43| db $78, $84, $00, $7F, $1F, $7F, $19, $FF
|138F4B| db $31, $FF, $21, $FF, $23, $FF, $27, $FF
|138F53| db $3F, $FF, $3C, $9F, $9F
|138F58| db $24 ; Repeat byte
|138F59| db $3F
|138F5A| db $00 ; Raw block
|138F5B| db $3C
|138F5C| db $46 ; Repeat word
|138F5D| dw $0F1F
|138F5F| db $45 ; Repeat word
|138F60| dw $1F07
|138F62| db $02 ; Raw block
|138F63| db $03, $1F, $01
|138F66| db $22 ; Repeat byte
|138F67| db $EF
|138F68| db $22 ; Repeat byte
|138F69| db $E7
|138F6A| db $0D ; Raw block
|138F6B| db $E3, $E1, $F0, $7F, $43, $DC, $2F, $B0
|138F73| db $1F, $A0, $7F, $C0, $BF, $40
|138F79| db $43 ; Repeat word
|138F7A| dw $00FF
|138F7C| db $03 ; Raw block
|138F7D| db $00, $20, $40, $40
|138F81| db $31 ; Repeat byte
|138F82| db $00
|138F83| db $01 ; Raw block
|138F84| db $30, $30
|138F86| db $26 ; Repeat byte
|138F87| db $00
|138F88| db $0B ; Raw block
|138F89| db $30, $5B, $3A, $2D, $1D, $14, $0C, $0A
|138F91| db $06, $04, $03, $03
|138F95| db $24 ; Repeat byte
|138F96| db $00
|138F97| db $03 ; Raw block
|138F98| db $04, $02, $03, $01
|138F9C| db $23 ; Repeat byte
|138F9D| db $00
|138F9E| db $E0, $24 ; EXT Raw block
|138FA0| db $1E, $E1, $5F, $E0, $C7, $F8, $23, $2C
|138FA8| db $0E, $0F, $20, $E0, $FF, $07, $1F, $00
|138FB0| db $40, $00, $10, $D0, $F0, $1F, $00, $00
|138FB8| db $19, $06, $32, $14, $64, $28, $C9, $50
|138FC0| db $9F, $20, $BF, $40, $F8
|138FC5| db $23 ; Repeat byte
|138FC6| db $00
|138FC7| db $05 ; Raw block
|138FC8| db $08, $10, $21, $4F, $1F, $38
|138FCE| db $24 ; Repeat byte
|138FCF| db $00
|138FD0| db $00 ; Raw block
|138FD1| db $3F
|138FD2| db $44 ; Repeat word
|138FD3| dw $FF00
|138FD5| db $00 ; Raw block
|138FD6| db $FC
|138FD7| db $26 ; Repeat byte
|138FD8| db $00
|138FD9| db $05 ; Raw block
|138FDA| db $3F, $FF, $FF, $FC, $00, $00
|138FE0| db $FF ; End of GFX 2E

;===================================================================================================

GFX_2F:
|138FE1| db $0F ; Raw block
|138FE2| db $FF, $00, $B6, $59, $A3, $5D, $EE, $11
|138FEA| db $9D, $6E, $51, $AE, $AE, $D1, $D1, $FF
|138FF2| db $24 ; Repeat byte
|138FF3| db $00
|138FF4| db $0A ; Raw block
|138FF5| db $80, $D1, $FF, $FF, $00, $B6, $D9, $23
|138FFD| db $DD, $6E, $91
|139000| db $84 ; Copy past
|139001| dw $0008
|139003| db $02 ; Raw block
|139004| db $51, $51, $FF
|139007| db $25 ; Repeat byte
|139008| db $00
|139009| db $0B ; Raw block
|13900A| db $51, $FF, $AB, $6C, $A7, $64, $D3, $32
|139012| db $E9, $19, $F7, $0F
|139016| db $43 ; Repeat word
|139017| dw $2FD6
|139019| db $E0, $31 ; EXT Raw block
|13901B| db $F6, $0F, $10, $18, $0C, $06, $40, $60
|139023| db $60, $40, $F6, $0E, $FF, $00, $6F, $F8
|13902B| db $76, $F1, $6E, $E1, $AE, $61, $5E, $B9
|139033| db $DE, $39, $01, $00, $00, $08, $10, $10
|13903B| db $00, $00, $4E, $B1, $BF, $E3, $F7, $EB
|139043| db $7C, $58, $24, $08, $3E, $72, $9B, $95
|13904B| db $8D, $86
|13904D| db $22 ; Repeat byte
|13904E| db $00
|13904F| db $0E ; Raw block
|139050| db $83, $D3, $81, $60, $78, $00, $00, $84
|139058| db $84, $C0, $C0, $00, $00, $02, $02
|13905F| db $23 ; Repeat byte
|139060| db $06
|139061| db $E0, $45 ; EXT Raw block
|139063| db $00, $00, $FF, $7B, $3F, $FF, $FD, $F9
|13906B| db $F9, $FF, $3F, $00, $73, $33, $E1, $61
|139073| db $C0, $40, $80, $3F, $B3, $53, $F6, $16
|13907B| db $78, $18, $C0, $8C, $1E, $3F, $40, $0C
|139083| db $09, $87, $FF, $00, $33, $33, $99, $99
|13908B| db $CC, $CC, $00, $FF, $33, $33, $66, $66
|139093| db $CC, $CC, $00, $CC, $66, $33, $00, $CC
|13909B| db $99, $33, $00, $1F, $0F, $30, $17, $6F
|1390A3| db $2B, $D8, $54, $B0, $57, $B3
|1390A9| db $43 ; Repeat word
|1390AA| dw $B257
|1390AC| db $04 ; Raw block
|1390AD| db $1F, $30, $60, $C7, $8F
|1390B2| db $22 ; Repeat byte
|1390B3| db $8C
|1390B4| db $0B ; Raw block
|1390B5| db $00, $FF, $FF, $00, $F7, $FF, $F7, $00
|1390BD| db $08, $08, $F7, $FF
|1390C1| db $45 ; Repeat word
|1390C2| dw $00FF
|1390C4| db $02 ; Raw block
|1390C5| db $00, $FF, $F7
|1390C8| db $22 ; Repeat byte
|1390C9| db $00
|1390CA| db $17 ; Raw block
|1390CB| db $FE, $7F, $FD, $BF, $FB, $DF, $F7, $EF
|1390D3| db $EF, $F7, $DF, $FB, $BF, $FD, $7F, $FE
|1390DB| db $FE, $FD, $FB, $F7, $EF, $DF, $BF, $7F
|1390E3| db $23 ; Repeat byte
|1390E4| db $FF
|1390E5| db $83 ; Copy past
|1390E6| dw $00D8
|1390E8| db $23 ; Repeat byte
|1390E9| db $FF
|1390EA| db $02 ; Raw block
|1390EB| db $00, $FF, $FF
|1390EE| db $28 ; Repeat byte
|1390EF| db $00
|1390F0| db $0E ; Raw block
|1390F1| db $8F, $FF, $77, $FF, $78, $FF, $7B, $FF
|1390F9| db $37, $FF, $CE, $FF, $ED, $FF, $E3
|139100| db $28 ; Repeat byte
|139101| db $FF
|139102| db $03 ; Raw block
|139103| db $AB, $6C, $9B, $7C
|139107| db $47 ; Repeat word
|139108| dw $6CAB
|13910A| db $05 ; Raw block
|13910B| db $B3, $7C, $AB, $6C, $10, $00
|139111| db $23 ; Repeat byte
|139112| db $10
|139113| db $16 ; Raw block
|139114| db $00, $10, $FE, $00, $29, $CE, $D6, $E7
|13911C| db $11, $21, $17, $21, $A6, $DF, $7C, $83
|139124| db $FE, $01, $00, $10, $08, $CE, $CE
|13912B| db $22 ; Repeat byte
|13912C| db $00
|13912D| db $E0, $2A ; EXT Raw block
|13912F| db $60, $00, $50, $00, $F8, $20, $74, $A0
|139137| db $4B, $A0, $5D, $B1, $66, $90, $3B, $C8
|13913F| db $00, $20, $10, $18, $1C, $0E, $0F, $07
|139147| db $85, $46, $A5, $66, $95, $76, $9D, $7E
|13914F| db $99, $7E, $91, $7E, $E3, $1C, $FF, $00
|139157| db $38, $18, $08
|13915A| db $24 ; Repeat byte
|13915B| db $00
|13915C| db $47 ; Repeat word
|13915D| dw $00FF
|13915F| db $03 ; Raw block
|139160| db $C1, $3E, $BE, $41
|139164| db $43 ; Repeat word
|139165| dw $00FF
|139167| db $03 ; Raw block
|139168| db $00, $EF, $EF, $00
|13916C| db $23 ; Repeat byte
|13916D| db $7F
|13916E| db $97 ; Copy past
|13916F| dw $00F0
|139171| db $14 ; Raw block
|139172| db $AF, $60, $DF, $50, $EF, $63, $EF, $62
|13917A| db $8F, $13, $0F, $F0, $07, $F8, $FF, $00
|139182| db $13, $20, $10, $11, $60
|139187| db $22 ; Repeat byte
|139188| db $00
|139189| db $1D ; Raw block
|13918A| db $9D, $86, $BF, $85, $AE, $D2, $76, $1A
|139192| db $5B, $3D, $FF, $00, $BF, $E1, $FF, $00
|13919A| db $70, $60, $01, $85, $C2, $FF, $5E, $00
|1391A2| db $FF, $00, $80, $00, $C4, $7F
|1391A8| db $45 ; Repeat word
|1391A9| dw $44FF
|1391AB| db $05 ; Raw block
|1391AC| db $EE, $55, $51, $FF, $00, $7F
|1391B2| db $23 ; Repeat byte
|1391B3| db $00
|1391B4| db $01 ; Raw block
|1391B5| db $11, $FF
|1391B7| db $4B ; Repeat word
|1391B8| dw $7EA1
|1391BA| db $02 ; Raw block
|1391BB| db $83, $7C, $7F
|1391BE| db $28 ; Repeat byte
|1391BF| db $00
|1391C0| db $97 ; Copy past
|1391C1| dw $00F0
|1391C3| db $43 ; Repeat word
|1391C4| dw $B257
|1391C6| db $02 ; Raw block
|1391C7| db $5B, $BA, $45
|1391CA| db $48 ; Repeat word
|1391CB| dw $57B2
|1391CD| db $02 ; Raw block
|1391CE| db $8C, $8C, $84
|1391D1| db $24 ; Repeat byte
|1391D2| db $8C
|1391D3| db $83 ; Copy past
|1391D4| dw $00DA
|1391D6| db $01 ; Raw block
|1391D7| db $08, $08
|1391D9| db $85 ; Copy past
|1391DA| dw $00DE
|1391DC| db $02 ; Raw block
|1391DD| db $00, $FF, $FF
|1391E0| db $22 ; Repeat byte
|1391E1| db $00
|1391E2| db $02 ; Raw block
|1391E3| db $F7, $FF, $F7
|1391E6| db $23 ; Repeat byte
|1391E7| db $00
|1391E8| db $18 ; Raw block
|1391E9| db $FF, $FF, $00, $A8, $A8, $01, $01, $3F
|1391F1| db $C0, $C0, $00, $80, $3F, $80, $7F, $FF
|1391F9| db $00, $57, $FE, $00, $3F, $40, $00, $FF
|139201| db $00
|139202| db $43 ; Repeat word
|139203| dw $7F80
|139205| db $83 ; Copy past
|139206| dw $00E8
|139208| db $00 ; Raw block
|139209| db $00
|13920A| db $23 ; Repeat byte
|13920B| db $FF
|13920C| db $28 ; Repeat byte
|13920D| db $00
|13920E| db $04 ; Raw block
|13920F| db $E7, $FF, $C3, $FF, $99
|139214| db $44 ; Repeat word
|139215| dw $3CFF
|139217| db $04 ; Raw block
|139218| db $99, $FF, $C3, $FF, $E7
|13921D| db $28 ; Repeat byte
|13921E| db $FF
|13921F| db $45 ; Repeat word
|139220| dw $6CAB
|139222| db $09 ; Raw block
|139223| db $83, $7C, $BB, $44, $CF, $30, $C7, $38
|13922B| db $FF, $00
|13922D| db $22 ; Repeat byte
|13922E| db $10
|13922F| db $24 ; Repeat byte
|139230| db $00
|139231| db $0E ; Raw block
|139232| db $7E, $81, $FF, $18, $C3, $E7, $58, $7C
|13923A| db $C3, $FF, $24, $DB, $FF, $00, $FF
|139241| db $22 ; Repeat byte
|139242| db $00
|139243| db $01 ; Raw block
|139244| db $18, $83
|139246| db $23 ; Repeat byte
|139247| db $00
|139248| db $01 ; Raw block
|139249| db $FF, $00
|13924B| db $47 ; Repeat word
|13924C| dw $0C92
|13924E| db $06 ; Raw block
|13924F| db $F3, $6D, $FF, $61, $FF, $7F, $00
|139256| db $23 ; Repeat byte
|139257| db $61
|139258| db $22 ; Repeat byte
|139259| db $00
|13925A| db $03 ; Raw block
|13925B| db $ED, $1E, $DB, $3C
|13925F| db $43 ; Repeat word
|139260| dw $7CBB
|139262| db $1F ; Raw block
|139263| db $CB, $3C, $65, $9E, $30, $CF, $1F, $E0
|13926B| db $40, $01, $01, $00, $80, $C0, $E0, $F0
|139273| db $DF, $20, $9F, $60, $3E, $C1, $3D, $C3
|13927B| db $3B, $C6, $3A, $C6, $39, $C7, $38, $C7
|139283| db $23 ; Repeat byte
|139284| db $00
|139285| db $19 ; Raw block
|139286| db $01, $01, $00, $00, $3D, $C4, $B2, $56
|13928E| db $AD, $5F, $94, $EF, $4C, $72, $44, $7A
|139296| db $BB, $FD, $3D, $FE, $03, $09, $00, $00
|13929E| db $81, $81
|1392A0| db $83 ; Copy past
|1392A1| dw $0196
|1392A3| db $03 ; Raw block
|1392A4| db $1C, $E3, $EB, $14
|1392A8| db $43 ; Repeat word
|1392A9| dw $00FF
|1392AB| db $06 ; Raw block
|1392AC| db $81, $7E, $FE, $01, $FF, $00, $00
|1392B3| db $22 ; Repeat byte
|1392B4| db $F7
|1392B5| db $02 ; Raw block
|1392B6| db $00, $FF, $7F
|1392B9| db $24 ; Repeat byte
|1392BA| db $00
|1392BB| db $0B ; Raw block
|1392BC| db $01, $00, $02, $01, $07, $00, $0F, $03
|1392C4| db $1F, $00, $3F, $03
|1392C8| db $22 ; Repeat byte
|1392C9| db $00
|1392CA| db $14 ; Raw block
|1392CB| db $01, $03, $03, $00, $0F, $6F, $1A, $6D
|1392D3| db $12, $7C, $23, $7E, $39, $7F, $1A, $3F
|1392DB| db $03, $0F, $01, $0F, $00
|1392E0| db $23 ; Repeat byte
|1392E1| db $3B
|1392E2| db $1D ; Raw block
|1392E3| db $1B, $03, $01, $00, $FF, $00, $99, $19
|1392EB| db $8C, $0C, $9F, $00, $D8, $47, $FC, $63
|1392F3| db $B2, $2D, $91, $0E, $00, $66, $73, $60
|1392FB| db $20, $00, $40, $60, $FF, $00
|139301| db $83 ; Copy past
|139302| dw $00AC
|139304| db $0C ; Raw block
|139305| db $FF, $00, $01, $FE, $00, $FF, $20, $DF
|13930D| db $FF, $00, $00, $66, $33
|139312| db $24 ; Repeat byte
|139313| db $00
|139314| db $01 ; Raw block
|139315| db $57, $B3
|139317| db $43 ; Repeat word
|139318| dw $B054
|13931A| db $0A ; Raw block
|13931B| db $53, $B0, $50, $B0, $2F, $DF, $10, $6F
|139323| db $0F, $30, $8C
|139326| db $23 ; Repeat byte
|139327| db $8F
|139328| db $03 ; Raw block
|139329| db $C0, $60, $30, $FF
|13932D| db $43 ; Repeat word
|13932E| dw $8000
|139330| db $0D ; Raw block
|139331| db $7F, $C0, $3F, $FF, $00, $FF, $3F, $E0
|139339| db $1F, $FF, $00, $00, $7F, $00
|13933F| db $43 ; Repeat word
|139340| dw $C080
|139342| db $0E ; Raw block
|139343| db $E0, $FF, $00, $4F, $36, $6F, $16, $3F
|13934B| db $46, $19, $66, $0F, $70, $00, $1F
|139352| db $22 ; Repeat byte
|139353| db $00
|139354| db $08 ; Raw block
|139355| db $06, $00, $40, $60, $70, $1F, $00, $FF
|13935D| db $00
|13935E| db $43 ; Repeat word
|13935F| dw $FF00
|139361| db $43 ; Repeat word
|139362| dw $00FF
|139364| db $03 ; Raw block
|139365| db $00, $FF, $00, $9B
|139369| db $26 ; Repeat byte
|13936A| db $00
|13936B| db $05 ; Raw block
|13936C| db $FF, $9B, $00, $12, $ED, $FF
|139372| db $22 ; Repeat byte
|139373| db $00
|139374| db $08 ; Raw block
|139375| db $FF, $00, $FF, $7F, $40, $3F, $8C, $7F
|13937D| db $FF
|13937E| db $28 ; Repeat byte
|13937F| db $00
|139380| db $44 ; Repeat word
|139381| dw $00FF
|139383| db $09 ; Raw block
|139384| db $C3, $28, $34, $14, $1C, $C3, $48, $E7
|13938C| db $20, $FF
|13938E| db $23 ; Repeat byte
|13938F| db $00
|139390| db $02 ; Raw block
|139391| db $C3, $E3, $B7
|139394| db $83 ; Copy past
|139395| dw $03B5
|139397| db $0B ; Raw block
|139398| db $18, $00, $2C, $08, $5A, $0C, $52, $3C
|1393A0| db $04, $78, $00, $38
|1393A4| db $23 ; Repeat byte
|1393A5| db $00
|1393A6| db $01 ; Raw block
|1393A7| db $10, $30
|1393A9| db $23 ; Repeat byte
|1393AA| db $00
|1393AB| db $0E ; Raw block
|1393AC| db $FF, $00, $E7, $5A, $E7, $5B, $E7, $58
|1393B4| db $E0, $5F, $FF, $40, $FF, $7F, $FF
|1393BB| db $28 ; Repeat byte
|1393BC| db $00
|1393BD| db $13 ; Raw block
|1393BE| db $C7, $04, $AF, $04, $D3, $44, $AB, $6C
|1393C6| db $D6, $39, $BE, $41, $FF, $7F, $7F, $80
|1393CE| db $78, $78, $38, $10
|1393D2| db $23 ; Repeat byte
|1393D3| db $00
|1393D4| db $13 ; Raw block
|1393D5| db $9E, $00, $92, $0C, $D2, $4C, $FE, $60
|1393DD| db $FF, $2D, $33, $CD, $CD, $FE, $FF, $00
|1393E5| db $61, $61, $21, $01
|1393E9| db $23 ; Repeat byte
|1393EA| db $00
|1393EB| db $98 ; Copy past
|1393EC| dw $00F0
|1393EE| db $0D ; Raw block
|1393EF| db $00, $FB, $2C, $FC, $5B, $BA, $56, $FD
|1393F7| db $14, $FB, $06, $1F, $03, $0F
|1393FD| db $23 ; Repeat byte
|1393FE| db $00
|1393FF| db $0A ; Raw block
|139400| db $01, $02, $E0, $18, $0C, $73, $0D, $77
|139408| db $29, $7F, $33
|13940B| db $46 ; Repeat word
|13940C| dw $3F7F
|13940E| db $03 ; Raw block
|13940F| db $0F, $7F, $37, $1F
|139413| db $24 ; Repeat byte
|139414| db $3F
|139415| db $0E ; Raw block
|139416| db $0F, $37, $0F, $06, $1B, $0B, $32, $13
|13941E| db $26, $07, $2F, $08, $1F, $00, $1E
|139425| db $23 ; Repeat byte
|139426| db $00
|139427| db $16 ; Raw block
|139428| db $04, $0C, $18, $10, $03, $1E, $00, $D1
|139430| db $4E, $F1, $6E, $B1, $2E, $91, $0E, $DD
|139438| db $42, $FF, $60, $AC, $2C, $99, $19
|13943F| db $83 ; Copy past
|139440| dw $03A4
|139442| db $05 ; Raw block
|139443| db $20, $00, $53, $66, $8E, $71
|139449| db $43 ; Repeat word
|13944A| dw $FF00
|13944C| db $09 ; Raw block
|13944D| db $80, $7F, $83, $7C, $FF, $00, $CC, $CC
|139455| db $99, $99
|139457| db $25 ; Repeat byte
|139458| db $00
|139459| db $E0, $21 ; EXT Raw block
|13945B| db $33, $66, $60, $1F, $FC, $3C, $E6, $66
|139463| db $E3, $63, $CF, $4F, $C0, $5F, $FF, $60
|13946B| db $7F, $00, $80, $03, $19, $1C, $30, $20
|139473| db $00, $80, $00, $FF, $CC, $CC, $66, $66
|13947B| db $33, $33
|13947D| db $83 ; Copy past
|13947E| dw $00E3
|139480| db $43 ; Repeat word
|139481| dw $00FF
|139483| db $03 ; Raw block
|139484| db $00, $33, $99, $CC
|139488| db $23 ; Repeat byte
|139489| db $00
|13948A| db $12 ; Raw block
|13948B| db $3F, $FF, $6F, $FF, $F9, $F9, $FF, $E7
|139493| db $EF, $18, $08, $FF, $18, $E7, $FF, $18
|13949B| db $00, $00, $06
|13949E| db $24 ; Repeat byte
|13949F| db $00
|1394A0| db $00 ; Raw block
|1394A1| db $7F
|1394A2| db $22 ; Repeat byte
|1394A3| db $FF
|1394A4| db $05 ; Raw block
|1394A5| db $E0, $FF, $9F, $E0, $7F, $80
|1394AB| db $45 ; Repeat word
|1394AC| dw $00FF
|1394AE| db $25 ; Repeat byte
|1394AF| db $FF
|1394B0| db $0D ; Raw block
|1394B1| db $80, $00, $3F, $3F, $99, $99, $EF, $FF
|1394B9| db $3F, $7F, $99, $99, $E7, $E7
|1394BF| db $83 ; Copy past
|1394C0| dw $00E3
|1394C2| db $06 ; Raw block
|1394C3| db $C0, $66, $00, $80, $66, $18, $00
|1394CA| db $44 ; Repeat word
|1394CB| dw $FF00
|1394CD| db $05 ; Raw block
|1394CE| db $7F, $80, $FB, $04, $FF, $00
|1394D4| db $44 ; Repeat word
|1394D5| dw $FF00
|1394D7| db $23 ; Repeat byte
|1394D8| db $FF
|1394D9| db $01 ; Raw block
|1394DA| db $FB, $00
|1394DC| db $22 ; Repeat byte
|1394DD| db $FF
|1394DE| db $0E ; Raw block
|1394DF| db $EF, $FF, $CF, $FF, $87, $FF, $03, $FF
|1394E7| db $C0, $FF, $E1, $FF, $F3, $FF, $F7
|1394EE| db $29 ; Repeat byte
|1394EF| db $FF
|1394F0| db $4C ; Repeat word
|1394F1| dw $FF00
|1394F3| db $01 ; Raw block
|1394F4| db $C0, $3F
|1394F6| db $27 ; Repeat byte
|1394F7| db $00
|1394F8| db $FF ; End of GFX 2F

;===================================================================================================

GFX_30:
|1394F9| db $03 ; Raw block
|1394FA| db $FF, $00, $FF, $7E
|1394FE| db $43 ; Repeat word
|1394FF| dw $3EA7
|139501| db $14 ; Raw block
|139502| db $BD, $3C, $81, $00, $FF, $7E, $99, $7E
|13950A| db $00, $00, $40, $40, $42, $7E, $00, $00
|139512| db $3F, $C0, $FF, $1F, $0F
|139517| db $24 ; Repeat byte
|139518| db $EF
|139519| db $07 ; Raw block
|13951A| db $E0, $E0, $1F, $FF, $10, $FF, $00, $00
|139522| db $22 ; Repeat byte
|139523| db $10
|139524| db $E0, $30 ; EXT Raw block
|139526| db $1F, $00, $00, $FE, $00, $FD, $FE, $9F
|13952E| db $9E, $AF, $BE, $CF, $FE, $05, $06, $FB
|139536| db $F8, $07, $FC, $00, $00, $60, $40, $00
|13953E| db $F8, $04, $00, $8F, $40, $CF, $28, $67
|139546| db $94, $F1, $08, $F8, $04, $FC, $02, $EE
|13954E| db $10, $FF, $00, $B0, $D0, $E8, $F6, $FB
|139556| db $ED
|139557| db $22 ; Repeat byte
|139558| db $FF
|139559| db $4D ; Repeat word
|13955A| dw $FF00
|13955C| db $28 ; Repeat byte
|13955D| db $00
|13955E| db $43 ; Repeat word
|13955F| dw $7E99
|139561| db $06 ; Raw block
|139562| db $A9, $7E, $AD, $7E, $9D, $7E, $99
|139569| db $44 ; Repeat word
|13956A| dw $A97E
|13956C| db $27 ; Repeat byte
|13956D| db $00
|13956E| db $07 ; Raw block
|13956F| db $80, $7F, $C0, $3F, $E0, $1F, $F3, $0C
|139577| db $43 ; Repeat word
|139578| dw $00FF
|13957A| db $02 ; Raw block
|13957B| db $E7, $19, $FF
|13957E| db $23 ; Repeat byte
|13957F| db $00
|139580| db $04 ; Raw block
|139581| db $03, $07, $00, $66, $00
|139586| db $45 ; Repeat word
|139587| dw $FF08
|139589| db $08 ; Raw block
|13958A| db $0E, $F9, $F7, $08, $FF, $00, $99, $FF
|139592| db $FF
|139593| db $23 ; Repeat byte
|139594| db $00
|139595| db $E0, $22 ; EXT Raw block
|139597| db $06, $F7, $03, $00, $00, $01, $FE, $FE
|13959F| db $01, $03, $01, $FE, $FC, $FC, $E2, $E4
|1395A7| db $18, $C5, $38, $86, $71, $FE, $00, $FC
|1395AF| db $01, $01, $03, $82, $08, $82, $61, $82
|1395B7| db $45, $82, $09
|1395BA| db $46 ; Repeat word
|1395BB| dw $1182
|1395BD| db $05 ; Raw block
|1395BE| db $09, $C4, $01, $1C, $38, $74
|1395C4| db $22 ; Repeat byte
|1395C5| db $6C
|1395C6| db $E0, $21 ; EXT Raw block
|1395C8| db $74, $3A, $E8, $01, $F8, $03, $F8, $05
|1395D0| db $F9, $00, $FB, $00, $4C, $F3, $40, $FF
|1395D8| db $7F, $FF, $96, $C4, $E2, $F6, $04, $F3
|1395E0| db $FF, $FF, $18, $00, $2C, $08, $62, $20
|1395E8| db $E3, $62
|1395EA| db $43 ; Repeat word
|1395EB| dw $42C3
|1395ED| db $E0, $4B ; EXT Raw block
|1395EF| db $E7, $24, $BF, $40, $00, $10, $1C, $1C
|1395F7| db $3C, $3C, $18, $00, $03, $00, $04, $00
|1395FF| db $0A, $02, $14, $04, $E4, $04, $24, $A4
|139607| db $23, $A3, $23, $A7, $00, $03, $05, $0B
|13960F| db $1B, $5B, $5C, $58, $FF, $00, $8C, $8C
|139617| db $11, $11, $22, $22, $24, $24, $00, $00
|13961F| db $DD, $FF, $EE, $FF, $00, $73, $EE, $DD
|139627| db $DB, $FF, $00, $00, $45, $BA, $BB, $FC
|13962F| db $FF, $F8, $45, $4A, $2D, $32, $17, $68
|139637| db $13, $8C, $96, $8D
|13963B| db $22 ; Repeat byte
|13963C| db $00
|13963D| db $1E ; Raw block
|13963E| db $B0, $C0, $80, $60, $60, $1F, $E0, $20
|139646| db $C0, $5F, $90, $B8, $20, $F3, $43, $E7
|13964E| db $44, $EB, $4E, $FD, $5B, $E0, $DF, $A0
|139656| db $47, $0C, $18, $10, $00, $B5, $76
|13965D| db $47 ; Repeat word
|13965E| dw $66A5
|139660| db $01 ; Raw block
|139661| db $AD, $6E
|139663| db $43 ; Repeat word
|139664| dw $66A5
|139666| db $00 ; Raw block
|139667| db $08
|139668| db $23 ; Repeat byte
|139669| db $18
|13966A| db $02 ; Raw block
|13966B| db $10, $18, $18
|13966E| db $4B ; Repeat word
|13966F| dw $7EA1
|139671| db $02 ; Raw block
|139672| db $83, $7C, $7F
|139675| db $28 ; Repeat byte
|139676| db $00
|139677| db $E0, $2C ; EXT Raw block
|139679| db $CB, $02, $CF, $06, $CD, $03, $C7, $00
|139681| db $C0, $00, $C6, $05, $C7, $04, $D7, $14
|139689| db $74, $70, $70, $78, $7F, $78, $78, $68
|139691| db $E7, $79, $E7, $F9, $66, $58, $AD, $D3
|139699| db $3F, $C1, $7E, $80, $FD, $02, $CF, $32
|1396A1| db $00, $00, $81, $00, $00
|1396A6| db $22 ; Repeat byte
|1396A7| db $01
|1396A8| db $0F ; Raw block
|1396A9| db $30, $CF, $27, $D8, $28, $D7, $3A, $C9
|1396B1| db $3D, $CC, $36, $CE, $3B, $C7, $9C, $63
|1396B9| db $22 ; Repeat byte
|1396BA| db $00
|1396BB| db $08 ; Raw block
|1396BC| db $06, $03, $01, $00, $00, $FE, $6C, $FE
|1396C4| db $60
|1396C5| db $43 ; Repeat word
|1396C6| dw $7CFE
|1396C8| db $01 ; Raw block
|1396C9| db $02, $00
|1396CB| db $43 ; Repeat word
|1396CC| dw $FC02
|1396CE| db $01 ; Raw block
|1396CF| db $FE, $00
|1396D1| db $23 ; Repeat byte
|1396D2| db $01
|1396D3| db $00 ; Raw block
|1396D4| db $FD
|1396D5| db $22 ; Repeat byte
|1396D6| db $01
|1396D7| db $0E ; Raw block
|1396D8| db $06, $FC, $0F, $FA, $0F, $F6, $0B, $F2
|1396E0| db $FD, $00, $FF, $00, $99, $FE, $FF
|1396E7| db $23 ; Repeat byte
|1396E8| db $00
|1396E9| db $02 ; Raw block
|1396EA| db $04, $FA, $F0
|1396ED| db $23 ; Repeat byte
|1396EE| db $00
|1396EF| db $E0, $45 ; EXT Raw block
|1396F1| db $0F, $00, $FF, $07, $FF, $5F, $FF, $BF
|1396F9| db $FF, $7C, $FF, $F8, $FB, $FC, $00, $00
|139701| db $07, $DF, $BF, $7F, $FF, $FF, $CF, $30
|139709| db $30, $00, $CF, $48, $FD, $00, $6D, $00
|139711| db $77, $00, $FC, $00, $DB, $80, $30, $CF
|139719| db $30, $02, $92, $88, $03, $27, $F4, $02
|139721| db $F4, $82, $D4, $03, $F6, $01, $FB, $00
|139729| db $EC, $F0, $E0, $1F, $FF, $00, $0F, $0F
|139731| db $2F, $0F, $07, $03, $00, $40
|139737| db $43 ; Repeat word
|139738| dw $7E9D
|13973A| db $00 ; Raw block
|13973B| db $8D
|13973C| db $44 ; Repeat word
|13973D| dw $B97E
|13973F| db $05 ; Raw block
|139740| db $81, $7E, $42, $BD, $3C, $42
|139746| db $27 ; Repeat byte
|139747| db $00
|139748| db $43 ; Repeat word
|139749| dw $7E99
|13974B| db $86 ; Copy past
|13974C| dw $007C
|13974E| db $44 ; Repeat word
|13974F| dw $A97E
|139751| db $27 ; Repeat byte
|139752| db $00
|139753| db $11 ; Raw block
|139754| db $2D, $AE, $9A, $9D, $54, $FB, $68, $F7
|13975C| db $10, $EF, $E0, $1F, $80, $7C, $83, $7B
|139764| db $50, $60
|139766| db $23 ; Repeat byte
|139767| db $00
|139768| db $0B ; Raw block
|139769| db $03, $04, $FF, $00, $D9, $FF, $C0, $E6
|139771| db $00, $6C, $00, $65
|139775| db $83 ; Copy past
|139776| dw $006D
|139778| db $E0, $30 ; EXT Raw block
|13977A| db $33, $FF, $00, $00, $19, $93, $9A, $00
|139782| db $FF, $00, $95, $8B, $B1, $AF, $81, $FB
|13978A| db $40, $4D, $64, $62, $FF, $01, $BF, $FC
|139792| db $FF, $00, $60, $40, $04, $B2, $99, $FE
|13979A| db $43, $00, $F7, $5C, $BB, $57, $AF, $58
|1397A2| db $B7, $4F, $9F, $60, $CE, $31, $E0, $1F
|1397AA| db $FF
|1397AB| db $26 ; Repeat byte
|1397AC| db $00
|1397AD| db $11 ; Raw block
|1397AE| db $80, $C0, $7F, $80, $E0, $1F, $DF, $3F
|1397B6| db $B0, $70, $B6, $76, $D6, $36, $A4, $64
|1397BE| db $A0, $60
|1397C0| db $22 ; Repeat byte
|1397C1| db $00
|1397C2| db $12 ; Raw block
|1397C3| db $0F, $09, $09, $1B, $1F, $FB, $04, $4E
|1397CB| db $B1, $B1, $FF, $5C, $5C, $08, $08, $30
|1397D3| db $30, $90, $90
|1397D6| db $24 ; Repeat byte
|1397D7| db $00
|1397D8| db $04 ; Raw block
|1397D9| db $A3, $F7, $CF, $6F, $FF
|1397DE| db $43 ; Repeat word
|1397DF| dw $04C3
|1397E1| db $45 ; Repeat word
|1397E2| dw $0CCB
|1397E4| db $01 ; Raw block
|1397E5| db $C3, $04
|1397E7| db $83 ; Copy past
|1397E8| dw $01BC
|1397EA| db $01 ; Raw block
|1397EB| db $78, $78
|1397ED| db $22 ; Repeat byte
|1397EE| db $70
|1397EF| db $0E ; Raw block
|1397F0| db $78, $78, $68, $1F, $00, $23, $1F, $64
|1397F8| db $1C, $A6, $7E, $EB, $77, $DC, $43
|1397FF| db $43 ; Repeat word
|139800| dw $40DF
|139802| db $0B ; Raw block
|139803| db $00, $00, $03, $01, $00, $20, $2C, $2F
|13980B| db $CF, $30, $F9, $06
|13980F| db $45 ; Repeat word
|139810| dw $02C1
|139812| db $07 ; Raw block
|139813| db $D2, $13, $C2, $03, $C4, $07, $00, $40
|13981B| db $22 ; Repeat byte
|13981C| db $7C
|13981D| db $0A ; Raw block
|13981E| db $6C, $7C, $78, $FF, $02, $FE, $02, $C8
|139826| db $1F, $9F, $01
|139829| db $45 ; Repeat word
|13982A| dw $009E
|13982C| db $05 ; Raw block
|13982D| db $92, $0C, $7D, $7D, $60, $60
|139833| db $23 ; Repeat byte
|139834| db $61
|139835| db $05 ; Raw block
|139836| db $FF, $00, $C7, $FF, $BB, $7C
|13983C| db $43 ; Repeat word
|13983D| dw $00FF
|13983F| db $04 ; Raw block
|139840| db $93, $FF, $22, $22, $FF
|139845| db $23 ; Repeat byte
|139846| db $00
|139847| db $10 ; Raw block
|139848| db $83, $00, $00, $DD, $00, $F8, $FF, $FC
|139850| db $FB, $FF, $9C, $BF, $4F, $9F, $6F, $FF
|139858| db $9F
|139859| db $2B ; Repeat byte
|13985A| db $FF
|13985B| db $E0, $2F ; EXT Raw block
|13985D| db $FE, $7F, $FD, $BF, $FB, $DF, $F7, $EF
|139865| db $EF, $F7, $DF, $FB, $BF, $FD, $7F, $FE
|13986D| db $FE, $FD, $FB, $F7, $EF, $DF, $BF, $7F
|139875| db $9F, $7F, $C7, $38, $E7, $18, $7F, $80
|13987D| db $0F, $F1, $17, $10, $E1, $F0, $19, $E8
|139885| db $00, $00, $03, $03, $00, $EE, $0F, $06
|13988D| db $8B ; Copy past
|13988E| dw $0048
|139890| db $01 ; Raw block
|139891| db $FE, $00
|139893| db $85 ; Copy past
|139894| dw $0056
|139896| db $13 ; Raw block
|139897| db $1B, $ED, $F7, $FB, $07, $00, $08, $07
|13989F| db $17, $0F, $28, $18, $56, $30, $A5, $61
|1398A7| db $DE, $3F, $D3, $7C
|1398AB| db $22 ; Repeat byte
|1398AC| db $00
|1398AD| db $11 ; Raw block
|1398AE| db $07, $0F, $1E, $00, $00, $86, $77, $85
|1398B6| db $6E, $9E, $58, $94, $B8, $58, $E0, $10
|1398BE| db $E0, $E0
|1398C0| db $22 ; Repeat byte
|1398C1| db $00
|1398C2| db $03 ; Raw block
|1398C3| db $08, $10, $20, $40
|1398C7| db $23 ; Repeat byte
|1398C8| db $00
|1398C9| db $06 ; Raw block
|1398CA| db $66, $99, $FF, $00, $02, $00, $01
|1398D1| db $30 ; Repeat byte
|1398D2| db $00
|1398D3| db $1B ; Raw block
|1398D4| db $FB, $03, $F9, $61, $FA, $03, $F4, $C7
|1398DC| db $71, $41, $3B, $03, $3C, $20, $1C, $13
|1398E4| db $04, $06, $04, $08, $8E, $C4, $43, $20
|1398EC| db $BF, $40, $9D, $42
|1398F0| db $4B ; Repeat word
|1398F1| dw $66B9
|1398F3| db $01 ; Raw block
|1398F4| db $00, $20
|1398F6| db $25 ; Repeat byte
|1398F7| db $00
|1398F8| db $0D ; Raw block
|1398F9| db $90, $70, $D0, $30, $C0, $20, $A0, $60
|139901| db $AE, $6E, $D1, $3F, $E6, $19
|139907| db $83 ; Copy past
|139908| dw $0266
|13990A| db $02 ; Raw block
|13990B| db $1F, $1F, $11
|13990E| db $24 ; Repeat byte
|13990F| db $00
|139910| db $12 ; Raw block
|139911| db $84, $84, $C0, $C0, $11, $11, $9B, $9B
|139919| db $EF, $FF, $56, $EF, $B9, $46, $FF, $7B
|139921| db $3F, $EE, $64
|139924| db $22 ; Repeat byte
|139925| db $00
|139926| db $04 ; Raw block
|139927| db $05, $06, $04, $07, $34
|13992C| db $22 ; Repeat byte
|13992D| db $37
|13992E| db $1E ; Raw block
|13992F| db $03, $03, $00, $00, $04, $04, $00, $00
|139937| db $F8, $F8, $C8, $C8, $FC, $FF, $FB, $FF
|13993F| db $FF, $00, $07, $FF, $BB, $CC, $4F, $70
|139947| db $9B, $9C, $60, $E0, $DF, $3F, $FF
|13994E| db $23 ; Repeat byte
|13994F| db $00
|139950| db $19 ; Raw block
|139951| db $83, $60, $1F, $00, $C0, $CF, $00, $DF
|139959| db $0F, $F7, $11, $EE, $02, $FD, $15, $FA
|139961| db $03, $D8, $33, $F9, $32, $70, $60, $48
|139969| db $51, $42
|13996B| db $22 ; Repeat byte
|13996C| db $44
|13996D| db $12 ; Raw block
|13996E| db $F6, $78, $F2, $FC, $52, $7C, $9C, $F8
|139976| db $0B, $FD, $7C, $88, $FF, $29, $FE, $6A
|13997E| db $01, $01, $81
|139981| db $43 ; Repeat word
|139982| dw $0003
|139984| db $E0, $2B ; EXT Raw block
|139986| db $01, $B0, $70, $A6, $66, $D6, $36, $D8
|13998E| db $38, $C0, $30, $D2, $32, $B0, $70, $B8
|139996| db $78, $0F, $19, $0B, $07, $0F, $0D, $0F
|13999E| db $07, $FF, $7F, $FF, $3F, $FF, $3C, $7F
|1399A6| db $BB, $FE, $75, $FF, $E8, $FF, $DB, $FF
|1399AE| db $0C, $FF, $FF, $FC
|1399B2| db $83 ; Copy past
|1399B3| dw $03D2
|1399B5| db $00 ; Raw block
|1399B6| db $0C
|1399B7| db $97 ; Copy past
|1399B8| dw $03C0
|1399BA| db $14 ; Raw block
|1399BB| db $F6, $0E, $FF, $00, $6E, $F1, $57, $D9
|1399C3| db $56, $D8, $B6, $78, $56, $B8, $C6, $38
|1399CB| db $01, $00, $00, $20, $21
|1399D0| db $22 ; Repeat byte
|1399D1| db $01
|1399D2| db $43 ; Repeat word
|1399D3| dw $00FF
|1399D5| db $0A ; Raw block
|1399D6| db $FB, $42, $91, $A9, $04, $14, $46, $00
|1399DE| db $EF, $00, $FF
|1399E1| db $22 ; Repeat byte
|1399E2| db $00
|1399E3| db $02 ; Raw block
|1399E4| db $04, $46, $EB
|1399E7| db $22 ; Repeat byte
|1399E8| db $FF
|1399E9| db $10 ; Raw block
|1399EA| db $85, $46, $B3, $7C, $A7, $78, $DF, $20
|1399F2| db $C7, $78, $CF, $40, $DF, $48, $9B, $70
|1399FA| db $38
|1399FB| db $23 ; Repeat byte
|1399FC| db $00
|1399FD| db $02 ; Raw block
|1399FE| db $30, $30, $0C
|139A01| db $46 ; Repeat word
|139A02| dw $18FF
|139A04| db $08 ; Raw block
|139A05| db $0C, $CF, $0E, $DF, $00, $FF, $30, $FF
|139A0D| db $18
|139A0E| db $22 ; Repeat byte
|139A0F| db $03
|139A10| db $04 ; Raw block
|139A11| db $01, $30, $3F, $0F, $07
|139A16| db $43 ; Repeat word
|139A17| dw $00FF
|139A19| db $0B ; Raw block
|139A1A| db $7F, $80, $FF, $00, $FE, $01, $FF, $00
|139A22| db $EF, $10, $FF, $00
|139A26| db $23 ; Repeat byte
|139A27| db $FF
|139A28| db $00 ; Raw block
|139A29| db $FE
|139A2A| db $23 ; Repeat byte
|139A2B| db $FF
|139A2C| db $0D ; Raw block
|139A2D| db $00, $F5, $8A, $E0, $9F, $60, $DF, $EC
|139A35| db $5F, $FF, $13, $F3, $40, $E0
|139A3B| db $26 ; Repeat byte
|139A3C| db $00
|139A3D| db $0A ; Raw block
|139A3E| db $80, $00, $FC, $23, $5E, $31, $2F, $18
|139A46| db $17, $08, $0C
|139A49| db $2E ; Repeat byte
|139A4A| db $00
|139A4B| db $FF ; End of GFX 30

;===================================================================================================

GFX_31:
|139A4C| db $43 ; Repeat word
|139A4D| dw $FF00
|139A4F| db $E0, $6B ; EXT Raw block
|139A51| db $3F, $80, $67, $00, $5C, $1B, $7C, $3B
|139A59| db $3C, $83, $F6, $DD, $00, $00, $40, $98
|139A61| db $A3, $83, $43, $19, $39, $C6, $6E, $A9
|139A69| db $F4, $73, $F8, $17, $39, $C7, $0B, $F7
|139A71| db $F7, $9E, $FE, $8C, $00, $11, $0B, $07
|139A79| db $C7, $F7, $FB, $FB, $79, $86, $4A, $B5
|139A81| db $4F, $B9, $3F, $D8, $FF, $01, $8D, $70
|139A89| db $BD, $70, $5F, $88, $00, $31, $39, $1D
|139A91| db $0C, $76, $7A, $3C, $38, $C7, $76, $B9
|139A99| db $7B, $9E, $B9, $7E, $CB, $7A, $FF, $70
|139AA1| db $7E, $8D, $32, $D1, $00, $18, $06, $76
|139AA9| db $34, $00, $00, $0C, $00, $FF, $01, $FE
|139AB1| db $03, $FD, $01, $FC, $02, $FC, $01, $FE
|139AB9| db $3E, $E1, $7F, $D0
|139ABD| db $22 ; Repeat byte
|139ABE| db $00
|139ABF| db $E0, $30 ; EXT Raw block
|139AC1| db $02, $01, $00, $00, $0C, $C3, $3C, $3D
|139AC9| db $00, $9A, $98, $F5, $31, $73, $12, $FB
|139AD1| db $12, $EE, $25, $DF, $C9, $00, $C3, $67
|139AD9| db $0E, $8C, $0C, $18, $30, $80, $7F, $60
|139AE1| db $1F, $90, $0F, $CC, $C7, $FE, $3B, $FF
|139AE9| db $02, $E3, $30, $FE, $01, $00, $80, $E0
|139AF1| db $30
|139AF2| db $83 ; Copy past
|139AF3| dw $005D
|139AF5| db $45 ; Repeat word
|139AF6| dw $FF00
|139AF8| db $09 ; Raw block
|139AF9| db $03, $FC, $07, $F8, $0F, $F3, $7C, $84
|139B01| db $FE, $24
|139B03| db $25 ; Repeat byte
|139B04| db $00
|139B05| db $1F ; Raw block
|139B06| db $03, $43, $18, $E7, $34, $C3, $53, $80
|139B0E| db $EB, $22, $F7, $16, $FE, $4D, $DD, $63
|139B16| db $AA, $36, $00, $18, $3C, $1C, $08, $01
|139B1E| db $23, $77, $3A, $31, $3E, $31, $3A, $31
|139B26| db $43 ; Repeat word
|139B27| dw $F5FE
|139B29| db $01 ; Raw block
|139B2A| db $0E, $05
|139B2C| db $43 ; Repeat word
|139B2D| dw $753E
|139B2F| db $02 ; Raw block
|139B30| db $F4, $F0, $F4
|139B33| db $22 ; Repeat byte
|139B34| db $F0
|139B35| db $19 ; Raw block
|139B36| db $80, $80, $FE, $7F, $FD, $BF, $FB, $DF
|139B3E| db $F7, $EF, $EF, $F7, $DF, $FB, $BF, $FD
|139B46| db $7F, $FE, $FE, $FD, $FB, $F7, $EF, $DF
|139B4E| db $BF, $7F
|139B50| db $43 ; Repeat word
|139B51| dw $00FF
|139B53| db $0A ; Raw block
|139B54| db $FC, $03, $FF, $00, $FF, $07, $F8, $07
|139B5C| db $FF, $00, $E0
|139B5F| db $27 ; Repeat byte
|139B60| db $00
|139B61| db $18 ; Raw block
|139B62| db $1F, $00, $CF, $3B, $84, $6F, $09, $5F
|139B6A| db $14, $7F, $A9, $3E, $C2, $3C, $C4, $6C
|139B72| db $84, $30, $40, $B0, $A3, $04, $09, $0B
|139B7A| db $1B
|139B7B| db $83 ; Copy past
|139B7C| dw $010C
|139B7E| db $11 ; Raw block
|139B7F| db $FA, $18, $C7, $C6, $39, $01, $7D, $01
|139B87| db $FE, $00, $7E, $00, $00, $3C, $C5, $38
|139B8F| db $FE, $FE
|139B91| db $22 ; Repeat byte
|139B92| db $FF
|139B93| db $0E ; Raw block
|139B94| db $12, $FF, $20, $FF, $64, $DB, $41, $DF
|139B9C| db $56, $77, $AA, $22, $94, $00, $C9
|139BA3| db $22 ; Repeat byte
|139BA4| db $00
|139BA5| db $13 ; Raw block
|139BA6| db $24, $20, $00, $49, $36, $00, $FF, $02
|139BAE| db $FD, $23, $DC, $77, $88, $FF, $00, $DC
|139BB6| db $23, $00, $FF, $63
|139BBA| db $23 ; Repeat byte
|139BBB| db $FF
|139BBC| db $E0, $49 ; EXT Raw block
|139BBE| db $DD, $88, $00, $00, $63, $E7, $9C, $FC
|139BC6| db $8B, $79, $C7, $3B, $E7, $73, $CF, $D3
|139BCE| db $8F, $B0, $0F, $BF, $10, $18, $03, $07
|139BD6| db $07, $0F, $2F, $4F, $40, $E2, $E6, $F2
|139BDE| db $F2, $D1, $C0, $8B, $81, $E7, $E1, $AA
|139BE6| db $E1, $4A, $C2, $45, $C1, $1D, $ED, $FE
|139BEE| db $FD, $FD, $9D, $3D, $FE, $11, $E0, $2F
|139BF6| db $F6, $4F, $E2, $47, $EA, $03, $F4, $2F
|139BFE| db $F6, $17, $FB, $00, $FF, $0E, $00, $10
|139C06| db $10, $08
|139C08| db $22 ; Repeat byte
|139C09| db $00
|139C0A| db $E0, $2C ; EXT Raw block
|139C0C| db $2E, $CD, $6E, $23, $7C, $39, $BA, $13
|139C14| db $C5, $43, $FE, $03, $08, $C7, $00, $FF
|139C1C| db $18, $98, $82, $44, $38, $00, $30, $00
|139C24| db $3F, $E9, $DB, $28, $B4, $00, $7B, $03
|139C2C| db $87, $00, $FF, $86, $FF, $00, $00, $FF
|139C34| db $06, $07, $CF, $FC, $78
|139C39| db $22 ; Repeat byte
|139C3A| db $00
|139C3B| db $E0, $23 ; EXT Raw block
|139C3D| db $7E, $11, $DE, $09, $E6, $E1, $F6, $11
|139C45| db $FE, $19, $FF, $22, $B6, $55, $0C, $F3
|139C4D| db $E0, $F0, $18, $08, $00, $00, $08, $00
|139C55| db $00, $FF, $7F, $80, $7A, $98, $5F, $80
|139C5D| db $5F, $8F, $7F, $AF
|139C61| db $43 ; Repeat word
|139C62| dw $AC5C
|139C64| db $04 ; Raw block
|139C65| db $00, $00, $05, $20, $2F
|139C6A| db $22 ; Repeat byte
|139C6B| db $0F
|139C6C| db $15 ; Raw block
|139C6D| db $1C, $00, $3C, $08, $38, $38, $6D, $24
|139C75| db $63, $22, $13, $12, $07, $06, $1B, $00
|139C7D| db $FF, $FF, $C7, $DF, $DF, $EF
|139C83| db $22 ; Repeat byte
|139C84| db $FF
|139C85| db $04 ; Raw block
|139C86| db $23, $FF, $01, $7F, $81
|139C8B| db $43 ; Repeat word
|139C8C| dw $01FF
|139C8E| db $43 ; Repeat word
|139C8F| dw $00BF
|139C91| db $E0, $21 ; EXT Raw block
|139C93| db $5F, $80, $40, $00, $60, $18, $04, $44
|139C9B| db $42, $21, $0E, $F5, $FE, $05, $BE, $95
|139CA3| db $EE, $C9, $FE, $D9, $FE, $01, $C6, $85
|139CAB| db $FE, $01, $00, $00, $D0, $10, $00, $00
|139CB3| db $38, $00
|139CB5| db $97 ; Copy past
|139CB6| dw $00F0
|139CB8| db $43 ; Repeat word
|139CB9| dw $0FEF
|139CBB| db $03 ; Raw block
|139CBC| db $FF, $00, $DF, $1F
|139CC0| db $43 ; Repeat word
|139CC1| dw $20E0
|139CC3| db $0E ; Raw block
|139CC4| db $FF, $3F, $FF, $00, $10, $10, $00, $3F
|139CCC| db $1F, $1F, $00, $00, $72, $90, $EC
|139CD3| db $44 ; Repeat word
|139CD4| dw $EF20
|139CD6| db $08 ; Raw block
|139CD7| db $B7, $10, $FB, $58, $FD, $24, $F6, $06
|139CDF| db $0F
|139CE0| db $22 ; Repeat byte
|139CE1| db $5F
|139CE2| db $1B ; Raw block
|139CE3| db $6F, $27, $13, $19, $82, $02, $1D, $1D
|139CEB| db $02, $02, $05, $05, $89, $09, $C1, $01
|139CF3| db $80, $00, $31, $01, $FD, $E2, $FD, $FA
|139CFB| db $F6, $FE, $FF, $FE
|139CFF| db $43 ; Repeat word
|139D00| dw $E01F
|139D02| db $03 ; Raw block
|139D03| db $3F, $C0, $30, $CF
|139D07| db $47 ; Repeat word
|139D08| dw $FF00
|139D0A| db $01 ; Raw block
|139D0B| db $F0, $F8
|139D0D| db $25 ; Repeat byte
|139D0E| db $FF
|139D0F| db $43 ; Repeat word
|139D10| dw $F10E
|139D12| db $0B ; Raw block
|139D13| db $1E, $E1, $3C, $C3, $79, $87, $39, $C7
|139D1B| db $1C, $E3, $0E, $F1
|139D1F| db $22 ; Repeat byte
|139D20| db $F8
|139D21| db $E0, $40 ; EXT Raw block
|139D23| db $F0, $E1, $E1, $F0, $F8, $A6, $5D, $F4
|139D2B| db $5B, $FC, $03, $FC, $13, $EC, $A3, $FF
|139D33| db $80, $7F, $C4, $3B, $CA, $19, $1B, $03
|139D3B| db $03, $13, $00, $00, $04, $D8, $88, $F6
|139D43| db $9C, $EA, $F2, $1B, $EE, $3B, $CE, $FB
|139D4B| db $0F, $F9, $EF, $FC, $E7, $FF, $FB, $F7
|139D53| db $E7, $C7, $07, $07, $C3, $FF, $20, $FF
|139D5B| db $21, $6E, $AA, $6D, $A8, $6F, $84, $FF
|139D63| db $14
|139D64| db $43 ; Repeat word
|139D65| dw $54FE
|139D67| db $04 ; Raw block
|139D68| db $10, $10, $11, $13, $13
|139D6D| db $22 ; Repeat byte
|139D6E| db $03
|139D6F| db $1F ; Raw block
|139D70| db $B3, $82, $D9, $41, $EC, $20, $F6, $10
|139D78| db $FB, $48, $F7, $56, $F7, $24, $EE, $48
|139D80| db $7C, $3E, $1F, $0F, $07, $09, $19, $31
|139D88| db $00, $FF, $FF, $00, $FA, $FD, $FD, $02
|139D90| db $23 ; Repeat byte
|139D91| db $FB
|139D92| db $23 ; Repeat byte
|139D93| db $03
|139D94| db $23 ; Repeat byte
|139D95| db $00
|139D96| db $23 ; Repeat byte
|139D97| db $FD
|139D98| db $85 ; Copy past
|139D99| dw $0360
|139D9B| db $01 ; Raw block
|139D9C| db $FF, $00
|139D9E| db $23 ; Repeat byte
|139D9F| db $FF
|139DA0| db $27 ; Repeat byte
|139DA1| db $00
|139DA2| db $23 ; Repeat byte
|139DA3| db $FF
|139DA4| db $00 ; Raw block
|139DA5| db $00
|139DA6| db $22 ; Repeat byte
|139DA7| db $FF
|139DA8| db $01 ; Raw block
|139DA9| db $00, $00
|139DAB| db $23 ; Repeat byte
|139DAC| db $3F
|139DAD| db $07 ; Raw block
|139DAE| db $3C, $34, $3F, $33, $3D, $33, $00, $00
|139DB6| db $22 ; Repeat byte
|139DB7| db $FF
|139DB8| db $02 ; Raw block
|139DB9| db $F3, $F0, $F0
|139DBC| db $4F ; Repeat word
|139DBD| dw $6E8D
|139DBF| db $27 ; Repeat byte
|139DC0| db $10
|139DC1| db $E0, $34 ; EXT Raw block
|139DC3| db $6F, $80, $77, $80, $3B, $C0, $1D, $C0
|139DCB| db $2E, $C0, $17, $E0, $0F, $F0, $03, $FC
|139DD3| db $10, $08, $04, $22, $11, $08, $00, $00
|139DDB| db $BB, $51, $F3, $55, $FC, $42, $DA, $4C
|139DE3| db $AD, $3D, $C5, $71, $D7, $62, $9F, $60
|139DEB| db $14, $08, $41, $61, $4B, $0B, $08, $00
|139DF3| db $FD, $F9, $FE, $FE, $FF
|139DF8| db $22 ; Repeat byte
|139DF9| db $FD
|139DFA| db $01 ; Raw block
|139DFB| db $FE, $FE
|139DFD| db $25 ; Repeat byte
|139DFE| db $FF
|139DFF| db $00 ; Raw block
|139E00| db $06
|139E01| db $22 ; Repeat byte
|139E02| db $03
|139E03| db $00 ; Raw block
|139E04| db $01
|139E05| db $22 ; Repeat byte
|139E06| db $00
|139E07| db $E0, $47 ; EXT Raw block
|139E09| db $80, $7F, $C0, $BF, $60, $5F, $B0, $AF
|139E11| db $D8, $57, $AC, $8B, $F6, $E5, $F3, $F2
|139E19| db $7F, $3F, $9F, $CF, $E7, $73, $19, $0C
|139E21| db $77, $93, $37, $C4, $3D, $84, $7E, $B2
|139E29| db $5F, $89, $6F, $28, $39, $82, $00, $CF
|139E31| db $08, $08, $43, $01, $20, $90, $44, $30
|139E39| db $7C, $00, $9F, $80, $E7, $60, $F8, $18
|139E41| db $FF, $87, $F3, $70, $FF, $07, $3F, $C0
|139E49| db $FF, $7F, $1F, $87, $78, $0C, $00, $00
|139E51| db $85 ; Copy past
|139E52| dw $02EA
|139E54| db $09 ; Raw block
|139E55| db $FD, $03, $F9, $07, $F3, $0F, $C7, $3F
|139E5D| db $0F, $FF
|139E5F| db $83 ; Copy past
|139E60| dw $02F9
|139E62| db $07 ; Raw block
|139E63| db $C1, $03, $07, $0F, $0C, $F3, $DF, $20
|139E6B| db $43 ; Repeat word
|139E6C| dw $00FF
|139E6E| db $03 ; Raw block
|139E6F| db $73, $8C, $20, $DF
|139E73| db $43 ; Repeat word
|139E74| dw $FF00
|139E76| db $22 ; Repeat byte
|139E77| db $00
|139E78| db $01 ; Raw block
|139E79| db $8C, $DF
|139E7B| db $22 ; Repeat byte
|139E7C| db $FF
|139E7D| db $E0, $3F ; EXT Raw block
|139E7F| db $3F, $D2, $6F, $A4, $5F, $88, $5F, $90
|139E87| db $7F, $B2, $3F, $48, $0C, $83, $30, $CF
|139E8F| db $0C, $18, $30, $20, $00, $80, $70, $00
|139E97| db $3C, $F3, $1E, $E1, $F7, $00, $EF, $0C
|139E9F| db $DF, $18, $5F, $90, $38, $87, $00, $9E
|139EA7| db $E3, $E1, $08, $10, $20, $20, $40, $61
|139EAF| db $FE, $54, $FF, $44, $FF, $64, $FD, $24
|139EB7| db $7D, $88, $3E, $D2, $77, $A1, $FF, $20
|139EBF| db $24 ; Repeat byte
|139EC0| db $03
|139EC1| db $02 ; Raw block
|139EC2| db $09, $18, $10
|139EC5| db $83 ; Copy past
|139EC6| dw $0240
|139EC8| db $E0, $22 ; EXT Raw block
|139ECA| db $5F, $81, $DF, $01, $6F, $81, $3F, $C0
|139ED2| db $1B, $E0, $0C, $F0, $40, $00, $20, $20
|139EDA| db $10, $00, $04, $03, $03, $FC, $FF, $00
|139EE2| db $20, $10, $FF, $DF, $F0, $DF, $FF, $00
|139EEA| db $C6, $84, $FF
|139EED| db $22 ; Repeat byte
|139EEE| db $00
|139EEF| db $00 ; Raw block
|139EF0| db $CF
|139EF1| db $22 ; Repeat byte
|139EF2| db $00
|139EF3| db $10 ; Raw block
|139EF4| db $39, $00, $90, $FF, $FF, $00, $22, $42
|139EFC| db $AD, $CD, $3D, $DD, $FF, $02, $FB, $E1
|139F04| db $FF
|139F05| db $22 ; Repeat byte
|139F06| db $00
|139F07| db $09 ; Raw block
|139F08| db $9F, $12, $02, $00, $04, $00, $3C, $33
|139F10| db $3F, $34
|139F12| db $45 ; Repeat word
|139F13| dw $353E
|139F15| db $05 ; Raw block
|139F16| db $3B, $34, $7E, $71, $BB, $B4
|139F1C| db $26 ; Repeat byte
|139F1D| db $F0
|139F1E| db $03 ; Raw block
|139F1F| db $70, $8D, $6E, $8C
|139F23| db $44 ; Repeat word
|139F24| dw $8F6F
|139F26| db $07 ; Raw block
|139F27| db $80, $60, $A0, $7F, $C0, $7F, $FF, $00
|139F2F| db $23 ; Repeat byte
|139F30| db $10
|139F31| db $00 ; Raw block
|139F32| db $1F
|139F33| db $22 ; Repeat byte
|139F34| db $00
|139F35| db $02 ; Raw block
|139F36| db $FF, $00, $01
|139F39| db $44 ; Repeat word
|139F3A| dw $FDFE
|139F3C| db $01 ; Raw block
|139F3D| db $0D, $0E
|139F3F| db $43 ; Repeat word
|139F40| dw $EE0D
|139F42| db $01 ; Raw block
|139F43| db $8D, $6E
|139F45| db $23 ; Repeat byte
|139F46| db $00
|139F47| db $00 ; Raw block
|139F48| db $F0
|139F49| db $22 ; Repeat byte
|139F4A| db $10
|139F4B| db $E0, $8F ; EXT Raw block
|139F4D| db $EF, $30, $F7, $1A, $74, $09, $FF, $C3
|139F55| db $3E, $F2, $FF, $01, $63, $20, $FF, $00
|139F5D| db $00, $10, $82, $02, $03, $01, $9C, $00
|139F65| db $F3, $F2, $E1, $E6, $32, $3D, $7C, $63
|139F6D| db $AC, $A3, $D4, $D3, $E2, $E1, $F1, $F0
|139F75| db $0C, $18, $E1, $E3, $73, $3B, $1D, $0E
|139F7D| db $F2, $F1, $F7, $F4, $F6, $F6, $EC, $EC
|139F85| db $EF, $EF, $DF, $DF, $BF, $BF, $7F, $7F
|139F8D| db $0C, $0C, $0F, $1F, $10, $20, $40, $80
|139F95| db $F3, $F2, $F7, $F2, $EF, $E6, $BF, $8E
|139F9D| db $EF, $E6, $F7, $F2, $CF, $CE, $E7, $E6
|139FA5| db $0C, $0C, $1C, $7C, $1C, $0C, $3C, $1C
|139FAD| db $FF, $FF, $BF, $FF, $DE, $DE, $FD, $FC
|139FB5| db $F3, $F0, $F7, $F7, $EE, $E7, $FC, $E7
|139FBD| db $00, $00, $21, $03, $0F, $0E, $1C, $18
|139FC5| db $0F, $FF, $C7, $3F, $F7, $0F, $F1, $0F
|139FCD| db $7D, $83, $3C, $C3, $1E, $E1, $0E, $F1
|139FD5| db $0F, $07, $07, $C1, $E1, $F0, $F8, $F8
|139FDD| db $43 ; Repeat word
|139FDE| dw $FF00
|139FE0| db $03 ; Raw block
|139FE1| db $10, $EF, $39, $C6
|139FE5| db $45 ; Repeat word
|139FE6| dw $E01F
|139FE8| db $01 ; Raw block
|139FE9| db $1E, $E1
|139FEB| db $25 ; Repeat byte
|139FEC| db $FF
|139FED| db $01 ; Raw block
|139FEE| db $F8, $F8
|139FF0| db $FF ; End of GFX 31

;===================================================================================================

GFX_32:
|139FF1| db $E0, $5A ; EXT Raw block
|139FF3| db $DD, $1D, $E3, $03, $3F, $CF, $5F, $E0
|139FFB| db $5C, $E3, $BC, $E3, $7C, $C3, $F6, $9D
|13A003| db $3E, $1C, $C0, $E0, $E3, $C3, $83, $19
|13A00B| db $99, $18, $EE, $2D, $FC, $93, $F8, $07
|13A013| db $39, $C7, $0B, $F7, $F7, $9E, $FE, $8C
|13A01B| db $7E, $11, $03, $07, $C7, $F7, $FB, $FB
|13A023| db $C7, $84, $5F, $19, $EE, $03, $AD, $0B
|13A02B| db $57, $44, $E8, $C0, $FF, $80, $FF, $98
|13A033| db $78, $E0, $F1, $F3, $B8, $1F, $07, $00
|13A03B| db $1C, $00, $3C, $08, $1C, $04, $49, $00
|13A043| db $43, $00, $C3, $01, $A9, $00, $F8, $00
|13A04B| db $FF, $FF, $FB
|13A04E| db $24 ; Repeat byte
|13A04F| db $FF
|13A050| db $04 ; Raw block
|13A051| db $5C, $AC, $7C, $8C, $5C
|13A056| db $4A ; Repeat word
|13A057| dw $7CAC
|13A059| db $27 ; Repeat byte
|13A05A| db $0F
|13A05B| db $0F ; Raw block
|13A05C| db $FF, $64, $FD, $24, $7D, $80, $3E, $D2
|13A064| db $7F, $A9, $EF, $40, $D4, $89, $E8, $16
|13A06C| db $22 ; Repeat byte
|13A06D| db $03
|13A06E| db $1C ; Raw block
|13A06F| db $01, $10, $30, $66, $09, $18, $E7, $34
|13A077| db $C3, $52, $81, $EB, $20, $F7, $14, $FD
|13A07F| db $42, $C3, $7E, $BD, $3C, $00, $18, $3C
|13A087| db $1C, $08, $02, $3E, $7E
|13A08C| db $44 ; Repeat word
|13A08D| dw $FF00
|13A08F| db $02 ; Raw block
|13A090| db $FE, $00, $F6
|13A093| db $44 ; Repeat word
|13A094| dw $ED00
|13A096| db $12 ; Raw block
|13A097| db $AD, $00, $AF, $00, $00, $01, $09, $12
|13A09F| db $12, $52, $50, $00, $FF, $00, $FB, $00
|13A0A7| db $F7, $00, $B7
|13A0AA| db $46 ; Repeat word
|13A0AB| dw $6F00
|13A0AD| db $04 ; Raw block
|13A0AE| db $7F, $00, $04, $08, $48
|13A0B3| db $22 ; Repeat byte
|13A0B4| db $90
|13A0B5| db $06 ; Raw block
|13A0B6| db $80, $FF, $00, $FE, $3F, $E1, $61
|13A0BD| db $45 ; Repeat word
|13A0BE| dw $5EDE
|13A0C0| db $06 ; Raw block
|13A0C1| db $DC, $5C, $DB, $5B, $00, $00, $1E
|13A0C8| db $24 ; Repeat byte
|13A0C9| db $3F
|13A0CA| db $24 ; Repeat byte
|13A0CB| db $FF
|13A0CC| db $0A ; Raw block
|13A0CD| db $C0, $FF, $B8, $CC, $4B, $BC, $23, $FC
|13A0D5| db $43, $F6, $1D
|13A0D8| db $23 ; Repeat byte
|13A0D9| db $00
|13A0DA| db $03 ; Raw block
|13A0DB| db $33, $43, $03, $19
|13A0DF| db $2F ; Repeat byte
|13A0E0| db $FF
|13A0E1| db $27 ; Repeat byte
|13A0E2| db $00
|13A0E3| db $14 ; Raw block
|13A0E4| db $FF, $FF, $BF, $BF, $CE, $CE, $D1, $D0
|13A0EC| db $EF, $EF, $E6, $E7, $EE, $E9, $EF, $EC
|13A0F4| db $00, $40, $31, $3F, $1F
|13A0F9| db $22 ; Repeat byte
|13A0FA| db $1C
|13A0FB| db $1B ; Raw block
|13A0FC| db $B9, $9E, $73, $3C, $E6, $79, $CC, $F3
|13A104| db $98, $E7, $30, $CF, $E0, $9F, $C0, $3F
|13A10C| db $70, $E0, $C1, $83, $07, $0F, $1F, $3F
|13A114| db $FF, $00, $81, $7E
|13A118| db $4B ; Repeat word
|13A119| dw $6E8D
|13A11B| db $01 ; Raw block
|13A11C| db $00, $00
|13A11E| db $25 ; Repeat byte
|13A11F| db $10
|13A120| db $E0, $41 ; EXT Raw block
|13A122| db $FE, $7F, $FD, $BF, $FB, $DF, $F7, $EF
|13A12A| db $EF, $F7, $DF, $FB, $BF, $FD, $7F, $FE
|13A132| db $FE, $FD, $FB, $F7, $EF, $DF, $BF, $7F
|13A13A| db $E7, $9C, $FE, $89, $FD, $C3, $FB, $E7
|13A142| db $73, $CF, $F3, $CF, $78, $E7, $5F, $F0
|13A14A| db $18, $01, $03, $07, $8F, $8F, $C7, $E0
|13A152| db $BC, $F3, $FE, $E1, $FF, $00, $FF, $08
|13A15A| db $FF, $8C, $FF, $9E, $E7, $A7, $D7, $C7
|13A162| db $63, $01
|13A164| db $23 ; Repeat byte
|13A165| db $00
|13A166| db $E0, $20 ; EXT Raw block
|13A168| db $18, $38, $EF, $9F, $F6, $0F, $D9, $97
|13A170| db $F3, $8E, $76, $5C, $BF, $0A, $7E, $24
|13A178| db $DB, $8A, $1F, $CF, $26, $0C, $89, $C1
|13A180| db $C3, $64, $BC, $60, $BC, $68, $B4, $64
|13A188| db $A9
|13A189| db $43 ; Repeat word
|13A18A| dw $A360
|13A18C| db $07 ; Raw block
|13A18D| db $61, $A9, $60, $B8, $60, $1F, $1F, $1B
|13A195| db $24 ; Repeat byte
|13A196| db $1F
|13A197| db $05 ; Raw block
|13A198| db $5F, $AF, $6F, $90, $53, $A3
|13A19E| db $49 ; Repeat word
|13A19F| dw $AC7C
|13A1A1| db $02 ; Raw block
|13A1A2| db $0F, $00, $0C
|13A1A5| db $24 ; Repeat byte
|13A1A6| db $0F
|13A1A7| db $E0, $47 ; EXT Raw block
|13A1A9| db $3B, $4B, $1C, $A4, $0F, $D3, $07, $E8
|13A1B1| db $03, $75, $03, $B8, $01, $5C, $01, $BE
|13A1B9| db $84, $43, $20, $10, $88, $44, $A2, $41
|13A1C1| db $CF, $CE, $3F, $30, $F8, $C7, $E0, $14
|13A1C9| db $C0, $AF, $C0, $17, $80, $2C, $80, $7B
|13A1D1| db $30, $C0, $00, $0B, $10, $28, $53, $84
|13A1D9| db $FB, $08, $9F, $66, $07, $F8, $00, $57
|13A1E1| db $00, $A8, $00, $F5, $00, $FE, $00, $FF
|13A1E9| db $06, $00, $00, $A8, $57, $0A, $01, $00
|13A1F1| db $43 ; Repeat word
|13A1F2| dw $BF66
|13A1F4| db $E0, $23 ; EXT Raw block
|13A1F6| db $76, $9F, $3B, $CF, $3D, $87, $3E, $53
|13A1FE| db $7F, $39, $6F, $AC, $1F, $1F, $0F, $07
|13A206| db $43, $81, $80, $10, $D7, $57, $D6, $56
|13A20E| db $D5, $55, $D7, $57, $CD, $4E, $FA, $7B
|13A216| db $FD, $05, $FF, $13
|13A21A| db $22 ; Repeat byte
|13A21B| db $3F
|13A21C| db $18 ; Raw block
|13A21D| db $3D, $35, $06, $03, $01, $3C, $F3, $1E
|13A225| db $E1, $FF, $18, $EF, $28, $DF, $10, $DF
|13A22D| db $91, $DF, $93, $FF, $C7, $E3, $E1, $00
|13A235| db $10
|13A236| db $22 ; Repeat byte
|13A237| db $20
|13A238| db $E0, $38 ; EXT Raw block
|13A23A| db $00, $FB, $FB, $F5, $F5, $AE, $AE, $4B
|13A242| db $4A, $F1, $F5, $00, $FE, $FF, $FB, $FB
|13A24A| db $04, $04, $0E, $5F, $FF, $FB, $01, $00
|13A252| db $04, $99, $9E, $73, $7C, $E6, $79, $CC
|13A25A| db $73, $98, $E7, $30, $4F, $60, $1F, $C0
|13A262| db $3F, $78, $F0, $E1, $C3, $87, $8F, $9F
|13A26A| db $3F, $FF, $00, $30, $30, $CE, $CE, $DF
|13A272| db $DF
|13A273| db $27 ; Repeat byte
|13A274| db $FF
|13A275| db $03 ; Raw block
|13A276| db $00, $FF, $31, $20
|13A27A| db $23 ; Repeat byte
|13A27B| db $00
|13A27C| db $45 ; Repeat word
|13A27D| dw $6E8D
|13A27F| db $02 ; Raw block
|13A280| db $81, $62, $9D
|13A283| db $44 ; Repeat word
|13A284| dw $817E
|13A286| db $01 ; Raw block
|13A287| db $FF, $00
|13A289| db $22 ; Repeat byte
|13A28A| db $10
|13A28B| db $00 ; Raw block
|13A28C| db $1C
|13A28D| db $23 ; Repeat byte
|13A28E| db $00
|13A28F| db $97 ; Copy past
|13A290| dw $0168
|13A292| db $1B ; Raw block
|13A293| db $5E, $F1, $5D, $F3, $B9, $E7, $F9, $87
|13A29B| db $F8, $67, $3F, $30, $7F, $78, $EF, $2C
|13A2A3| db $E1, $E3, $C7, $07, $07, $C0, $80, $10
|13A2AB| db $2F, $0B, $5E, $10
|13A2AF| db $43 ; Repeat word
|13A2B0| dw $24BA
|13A2B2| db $0F ; Raw block
|13A2B3| db $7E, $20, $5F, $16, $5A, $18, $43, $02
|13A2BB| db $F0, $E1, $C5, $C5, $C1, $E1, $E7, $FC
|13A2C3| db $83 ; Copy past
|13A2C4| dw $02C6
|13A2C6| db $0A ; Raw block
|13A2C7| db $FF, $00, $31, $FF, $43, $00, $03, $01
|13A2CF| db $09, $00, $18
|13A2D2| db $24 ; Repeat byte
|13A2D3| db $00
|13A2D4| db $25 ; Repeat byte
|13A2D5| db $FF
|13A2D6| db $83 ; Copy past
|13A2D7| dw $0332
|13A2D9| db $01 ; Raw block
|13A2DA| db $81, $7F
|13A2DC| db $87 ; Copy past
|13A2DD| dw $01D0
|13A2DF| db $23 ; Repeat byte
|13A2E0| db $00
|13A2E1| db $23 ; Repeat byte
|13A2E2| db $1F
|13A2E3| db $07 ; Raw block
|13A2E4| db $5C, $8C, $FC, $2C, $BC, $CC, $FC, $0C
|13A2EC| db $23 ; Repeat byte
|13A2ED| db $FC
|13A2EE| db $23 ; Repeat byte
|13A2EF| db $00
|13A2F0| db $00 ; Raw block
|13A2F1| db $2F
|13A2F2| db $22 ; Repeat byte
|13A2F3| db $0F
|13A2F4| db $23 ; Repeat byte
|13A2F5| db $FF
|13A2F6| db $E0, $35 ; EXT Raw block
|13A2F8| db $81, $42, $43, $BD, $3E, $42, $00, $BD
|13A300| db $00, $C3, $00, $FF, $00, $CB, $80, $FF
|13A308| db $3C, $00, $81, $42, $3C, $00, $34, $00
|13A310| db $9D, $5D, $43, $BE, $3F, $C7, $07, $78
|13A318| db $04, $8B, $04, $FB, $1C, $E3, $B6, $DD
|13A320| db $3E, $00, $00, $80, $73, $03, $03, $19
|13A328| db $D9, $58, $E2, $A1, $BC, $C3
|13A32E| db $89 ; Copy past
|13A32F| dw $001E
|13A331| db $01 ; Raw block
|13A332| db $3E, $1D
|13A334| db $85 ; Copy past
|13A335| dw $002A
|13A337| db $16 ; Raw block
|13A338| db $4F, $8C, $4F, $09, $4E, $0B, $4D, $0B
|13A340| db $77, $A4, $68, $00, $7F, $80, $7F, $98
|13A348| db $30, $B0, $B1, $B3, $18, $9F, $07
|13A34F| db $98 ; Copy past
|13A350| dw $02E7
|13A352| db $13 ; Raw block
|13A353| db $FF, $92, $EF, $24, $DF, $48, $9F, $10
|13A35B| db $BF, $20, $BF, $23, $BF, $27, $FF, $8F
|13A363| db $0C, $18, $30, $60
|13A367| db $22 ; Repeat byte
|13A368| db $40
|13A369| db $E0, $20 ; EXT Raw block
|13A36B| db $00, $7F, $7F, $BF, $BF, $9F, $9F, $AF
|13A373| db $AF, $B7, $B7, $AB, $BB, $8D, $BD, $1E
|13A37B| db $7E, $80, $40, $60, $70, $78, $64, $42
|13A383| db $81, $FF, $00, $3F, $00, $0F, $C0, $07
|13A38B| db $F0
|13A38C| db $43 ; Repeat word
|13A38D| dw $F803
|13A38F| db $E0, $23 ; EXT Raw block
|13A391| db $01, $FC, $01, $0C, $FF, $FF, $3F, $0F
|13A399| db $07, $07, $03, $F3, $80, $7F, $41, $3E
|13A3A1| db $22, $1C, $55, $49, $BE, $B6, $DD, $DD
|13A3A9| db $EB, $EB, $F7, $F7, $7F, $BE, $DD, $EB
|13A3B1| db $77, $3E, $1C, $08
|13A3B5| db $2F ; Repeat byte
|13A3B6| db $FE
|13A3B7| db $27 ; Repeat byte
|13A3B8| db $01
|13A3B9| db $4F ; Repeat word
|13A3BA| dw $FF0F
|13A3BC| db $27 ; Repeat byte
|13A3BD| db $00
|13A3BE| db $43 ; Repeat word
|13A3BF| dw $BFE6
|13A3C1| db $E0, $31 ; EXT Raw block
|13A3C3| db $F6, $9F, $7B, $4F, $BD, $27, $9E, $13
|13A3CB| db $CF, $09, $67, $04, $1F, $1F, $0F, $87
|13A3D3| db $C3, $E1, $F0, $F8, $EF, $28, $CF, $88
|13A3DB| db $AF, $08, $7F, $0F, $F7, $07, $7B, $03
|13A3E3| db $99, $81, $CC, $40, $10, $30, $70, $F0
|13A3EB| db $F8, $FC, $7E, $3F, $00, $FF, $FD, $FF
|13A3F3| db $02, $02
|13A3F5| db $23 ; Repeat byte
|13A3F6| db $FD
|13A3F7| db $01 ; Raw block
|13A3F8| db $13, $13
|13A3FA| db $43 ; Repeat word
|13A3FB| dw $ECEE
|13A3FD| db $08 ; Raw block
|13A3FE| db $00, $00, $FD, $FF, $FF, $FD, $11, $11
|13A406| db $00
|13A407| db $22 ; Repeat byte
|13A408| db $FF
|13A409| db $01 ; Raw block
|13A40A| db $00, $00
|13A40C| db $23 ; Repeat byte
|13A40D| db $FF
|13A40E| db $07 ; Raw block
|13A40F| db $11, $11, $EE, $EE, $EF, $EF, $00, $00
|13A417| db $23 ; Repeat byte
|13A418| db $FF
|13A419| db $19 ; Raw block
|13A41A| db $11, $10, $FB, $08, $FF, $06, $07, $F8
|13A422| db $00, $1F, $00, $F9, $00, $FF, $00, $4F
|13A42A| db $00, $F0, $06, $00, $00, $E0, $06, $00
|13A432| db $B0, $0F
|13A434| db $43 ; Repeat word
|13A435| dw $BFE6
|13A437| db $84 ; Copy past
|13A438| dw $0484
|13A43A| db $06 ; Raw block
|13A43B| db $A7, $DE, $53, $EF, $29, $77, $94
|13A442| db $83 ; Copy past
|13A443| dw $0490
|13A445| db $0D ; Raw block
|13A446| db $43, $21, $10, $08, $FF, $00, $C0, $7F
|13A44E| db $BF, $7F, $8F, $6F, $8C, $6C
|13A454| db $43 ; Repeat word
|13A455| dw $6F8C
|13A457| db $01 ; Raw block
|13A458| db $8D, $6E
|13A45A| db $22 ; Repeat byte
|13A45B| db $00
|13A45C| db $01 ; Raw block
|13A45D| db $10, $13
|13A45F| db $22 ; Repeat byte
|13A460| db $10
|13A461| db $02 ; Raw block
|13A462| db $FF, $00, $00
|13A465| db $24 ; Repeat byte
|13A466| db $FF
|13A467| db $22 ; Repeat byte
|13A468| db $00
|13A469| db $83 ; Copy past
|13A46A| dw $0331
|13A46C| db $24 ; Repeat byte
|13A46D| db $00
|13A46E| db $00 ; Raw block
|13A46F| db $FF
|13A470| db $22 ; Repeat byte
|13A471| db $00
|13A472| db $03 ; Raw block
|13A473| db $8D, $6E, $0D, $EE
|13A477| db $43 ; Repeat word
|13A478| dw $FEFD
|13A47A| db $01 ; Raw block
|13A47B| db $01, $02
|13A47D| db $43 ; Repeat word
|13A47E| dw $FE01
|13A480| db $83 ; Copy past
|13A481| dw $02DE
|13A483| db $02 ; Raw block
|13A484| db $00, $00, $FC
|13A487| db $22 ; Repeat byte
|13A488| db $00
|13A489| db $98 ; Copy past
|13A48A| dw $03D8
|13A48C| db $02 ; Raw block
|13A48D| db $00, $01, $FE
|13A490| db $43 ; Repeat word
|13A491| dw $FAF9
|13A493| db $01 ; Raw block
|13A494| db $01, $02
|13A496| db $43 ; Repeat word
|13A497| dw $FE01
|13A499| db $00 ; Raw block
|13A49A| db $FF
|13A49B| db $22 ; Repeat byte
|13A49C| db $00
|13A49D| db $02 ; Raw block
|13A49E| db $04, $04, $FC
|13A4A1| db $22 ; Repeat byte
|13A4A2| db $00
|13A4A3| db $1F ; Raw block
|13A4A4| db $D3, $D3, $B9, $B9, $44, $7C, $5A, $66
|13A4AC| db $B9, $E7, $64, $DB, $C2, $BD, $81, $7E
|13A4B4| db $3C, $7E, $C7, $83, $01, $18, $3C, $7E
|13A4BC| db $FF, $00, $FC, $00, $F0, $02, $E0, $0E
|13A4C4| db $43 ; Repeat word
|13A4C5| dw $1CC0
|13A4C7| db $43 ; Repeat word
|13A4C8| dw $3880
|13A4CA| db $17 ; Raw block
|13A4CB| db $FF, $FF, $FD, $F1, $E3, $E3, $C7, $C7
|13A4D3| db $00, $FF, $7E, $FF, $42, $FF, $4E, $FF
|13A4DB| db $51, $FF, $57, $FF, $76, $FF, $0D, $FF
|13A4E3| db $27 ; Repeat byte
|13A4E4| db $00
|13A4E5| db $05 ; Raw block
|13A4E6| db $FE, $FE, $FD, $FD, $F3, $F3
|13A4EC| db $23 ; Repeat byte
|13A4ED| db $EF
|13A4EE| db $0D ; Raw block
|13A4EF| db $DF, $DF, $BF, $BF, $7F, $7F, $01, $02
|13A4F7| db $0C, $18, $10, $20, $40, $80
|13A4FD| db $4F ; Repeat word
|13A4FE| dw $FF00
|13A500| db $27 ; Repeat byte
|13A501| db $00
|13A502| db $FF ; End of GFX 32

;===================================================================================================

GFX_33:
|13A503| db $17 ; Raw block
|13A504| db $7E, $7F, $3E, $3F, $1F, $1F, $0F, $0F
|13A50C| db $46, $47, $03, $03, $01, $01, $00, $00
|13A514| db $98, $C8, $EF, $F1, $B8, $FC, $FE, $FF
|13A51C| db $49 ; Repeat word
|13A51D| dw $313D
|13A51F| db $05 ; Raw block
|13A520| db $6C, $F1, $FD, $F2, $3F, $3B
|13A526| db $24 ; Repeat byte
|13A527| db $CE
|13A528| db $07 ; Raw block
|13A529| db $6E, $1C, $C8, $FF, $FF, $E7, $FF, $EF
|13A531| db $24 ; Repeat byte
|13A532| db $FF
|13A533| db $02 ; Raw block
|13A534| db $BF, $FF, $F9
|13A537| db $22 ; Repeat byte
|13A538| db $FF
|13A539| db $27 ; Repeat byte
|13A53A| db $00
|13A53B| db $43 ; Repeat word
|13A53C| dw $5FFE
|13A53E| db $04 ; Raw block
|13A53F| db $FF, $5F, $EB, $4D, $EA
|13A544| db $44 ; Repeat word
|13A545| dw $EB4D
|13A547| db $05 ; Raw block
|13A548| db $EA, $4C, $38, $28, $2F, $33
|13A54E| db $22 ; Repeat byte
|13A54F| db $32
|13A550| db $07 ; Raw block
|13A551| db $33, $7F, $80, $3F, $C0, $01, $FE, $CC
|13A559| db $22 ; Repeat byte
|13A55A| db $FF
|13A55B| db $05 ; Raw block
|13A55C| db $FC, $FC, $E0, $E0, $C0, $C0
|13A562| db $24 ; Repeat byte
|13A563| db $00
|13A564| db $02 ; Raw block
|13A565| db $03, $1F, $3F
|13A568| db $43 ; Repeat word
|13A569| dw $C605
|13A56B| db $03 ; Raw block
|13A56C| db $06, $C7, $83, $43
|13A570| db $45 ; Repeat word
|13A571| dw $4080
|13A573| db $01 ; Raw block
|13A574| db $86, $46
|13A576| db $22 ; Repeat byte
|13A577| db $38
|13A578| db $00 ; Raw block
|13A579| db $3C
|13A57A| db $22 ; Repeat byte
|13A57B| db $3F
|13A57C| db $00 ; Raw block
|13A57D| db $39
|13A57E| db $43 ; Repeat word
|13A57F| dw $00FF
|13A581| db $05 ; Raw block
|13A582| db $07, $F8, $F8, $FF, $07, $07
|13A588| db $29 ; Repeat byte
|13A589| db $00
|13A58A| db $00 ; Raw block
|13A58B| db $F8
|13A58C| db $22 ; Repeat byte
|13A58D| db $FF
|13A58E| db $12 ; Raw block
|13A58F| db $98, $F8, $4C, $7C, $42, $7E, $41, $7F
|13A597| db $40, $7F, $48, $7F, $9C, $FF, $3E, $FF
|13A59F| db $07, $83, $81
|13A5A2| db $22 ; Repeat byte
|13A5A3| db $80
|13A5A4| db $E0, $2B ; EXT Raw block
|13A5A6| db $00, $00, $30, $3F, $18, $1F, $0F, $0F
|13A5AE| db $06, $06, $8C, $8C, $F8, $F8, $10, $F0
|13A5B6| db $F0, $10, $C0, $E0, $F0, $F9, $73, $07
|13A5BE| db $0F, $0F, $08, $0C, $F2, $FE, $E1, $FF
|13A5C6| db $0C, $F3, $FC, $03, $FF, $00, $F0, $0F
|13A5CE| db $67, $9F, $F3, $01
|13A5D2| db $25 ; Repeat byte
|13A5D3| db $00
|13A5D4| db $18 ; Raw block
|13A5D5| db $FE, $7F, $FD, $BF, $FB, $DF, $F7, $EF
|13A5DD| db $EF, $F7, $DF, $FB, $BF, $FD, $7F, $FE
|13A5E5| db $FE, $FD, $FB, $F7, $EF, $DF, $BF, $7F
|13A5ED| db $C0
|13A5EE| db $43 ; Repeat word
|13A5EF| dw $FF7F
|13A5F1| db $03 ; Raw block
|13A5F2| db $3F, $FF, $00, $C0
|13A5F6| db $45 ; Repeat word
|13A5F7| dw $FF7F
|13A5F9| db $E0, $24 ; EXT Raw block
|13A5FB| db $00, $40, $40, $3F, $00, $40, $40, $7F
|13A603| db $00, $8C, $03, $8F, $03, $DB, $57, $F8
|13A60B| db $77, $8F, $70, $88, $77, $70, $8F, $00
|13A613| db $FF, $70, $70, $20, $00, $00, $07, $8F
|13A61B| db $FF, $44, $C7, $28, $EF
|13A620| db $43 ; Repeat word
|13A621| dw $FF38
|13A623| db $09 ; Raw block
|13A624| db $93, $7C, $C7, $38, $6C, $93, $00, $FF
|13A62C| db $38, $10
|13A62E| db $23 ; Repeat byte
|13A62F| db $00
|13A630| db $06 ; Raw block
|13A631| db $83, $FF, $87, $47, $AC, $6F, $B8
|13A638| db $44 ; Repeat word
|13A639| dw $B07F
|13A63B| db $83 ; Copy past
|13A63C| dw $0140
|13A63E| db $03 ; Raw block
|13A63F| db $EF, $10, $38, $10
|13A643| db $25 ; Repeat byte
|13A644| db $00
|13A645| db $0F ; Raw block
|13A646| db $20, $FF, $63, $FC, $61, $EE, $C2, $E7
|13A64E| db $05, $7E, $1B, $3C, $86, $1B, $DD, $06
|13A656| db $27 ; Repeat byte
|13A657| db $00
|13A658| db $45 ; Repeat word
|13A659| dw $4CEA
|13A65B| db $02 ; Raw block
|13A65C| db $D2, $5C, $AA
|13A65F| db $46 ; Repeat word
|13A660| dw $EA4C
|13A662| db $22 ; Repeat byte
|13A663| db $33
|13A664| db $00 ; Raw block
|13A665| db $23
|13A666| db $23 ; Repeat byte
|13A667| db $33
|13A668| db $05 ; Raw block
|13A669| db $00, $00, $18, $18, $10, $10
|13A66F| db $23 ; Repeat byte
|13A670| db $00
|13A671| db $19 ; Raw block
|13A672| db $40, $40, $06, $06, $00, $00, $FF, $E7
|13A67A| db $EF, $FF, $FF, $BF, $F9, $FF, $53, $32
|13A682| db $5F, $3F, $40, $3F, $7F, $00, $04, $04
|13A68A| db $40, $40
|13A68C| db $23 ; Repeat byte
|13A68D| db $00
|13A68E| db $05 ; Raw block
|13A68F| db $CC, $C0, $C0, $FF, $FB, $BF
|13A695| db $22 ; Repeat byte
|13A696| db $FF
|13A697| db $05 ; Raw block
|13A698| db $00, $FF, $FF, $00, $FF, $FF
|13A69E| db $84 ; Copy past
|13A69F| dw $01B7
|13A6A1| db $26 ; Repeat byte
|13A6A2| db $00
|13A6A3| db $84 ; Copy past
|13A6A4| dw $01C3
|13A6A6| db $02 ; Raw block
|13A6A7| db $00, $01, $00
|13A6AA| db $22 ; Repeat byte
|13A6AB| db $01
|13A6AC| db $02 ; Raw block
|13A6AD| db $00, $00, $80
|13A6B0| db $43 ; Repeat word
|13A6B1| dw $0080
|13A6B3| db $02 ; Raw block
|13A6B4| db $C0, $C3, $C3
|13A6B7| db $22 ; Repeat byte
|13A6B8| db $FE
|13A6B9| db $0E ; Raw block
|13A6BA| db $FF, $7F, $7F, $3F, $3C, $3E, $C1, $FF
|13A6C2| db $00, $80, $7F, $7F, $FF, $80, $80
|13A6C9| db $25 ; Repeat byte
|13A6CA| db $00
|13A6CB| db $00 ; Raw block
|13A6CC| db $C1
|13A6CD| db $22 ; Repeat byte
|13A6CE| db $00
|13A6CF| db $00 ; Raw block
|13A6D0| db $7F
|13A6D1| db $22 ; Repeat byte
|13A6D2| db $FF
|13A6D3| db $0A ; Raw block
|13A6D4| db $C7, $C7, $6C, $EF, $38, $FF, $10, $FF
|13A6DC| db $01, $FE, $83
|13A6DF| db $86 ; Copy past
|13A6E0| dw $015B
|13A6E2| db $25 ; Repeat byte
|13A6E3| db $00
|13A6E4| db $0F ; Raw block
|13A6E5| db $3C, $FF, $18, $FF, $80, $FF, $C6, $F9
|13A6ED| db $6E, $71, $37, $38, $1B, $1C, $0D, $0E
|13A6F5| db $23 ; Repeat byte
|13A6F6| db $00
|13A6F7| db $17 ; Raw block
|13A6F8| db $80, $C0, $E0, $F0, $F8, $18, $6C, $9C
|13A700| db $B3, $CF, $D8, $E7, $2F, $30, $97, $98
|13A708| db $C8, $CF, $C7, $C7, $07, $03, $00, $00
|13A710| db $83 ; Copy past
|13A711| dw $023D
|13A713| db $17 ; Raw block
|13A714| db $0B, $FB, $94, $F4, $68, $68, $50, $50
|13A71C| db $C0, $C0, $40, $C0, $20, $E0, $10, $F0
|13A724| db $07, $0F, $9F, $BF, $3F, $3F, $1F, $0F
|13A72C| db $83 ; Copy past
|13A72D| dw $00E2
|13A72F| db $0A ; Raw block
|13A730| db $C7, $3F, $3F, $FF, $F8, $F8, $70, $70
|13A738| db $83, $00, $47
|13A73B| db $24 ; Repeat byte
|13A73C| db $00
|13A73D| db $0B ; Raw block
|13A73E| db $07, $8F, $FF, $FF, $DF, $7F, $A0, $60
|13A746| db $C0, $7F, $FF, $00
|13A74A| db $87 ; Copy past
|13A74B| dw $0288
|13A74D| db $02 ; Raw block
|13A74E| db $40, $1F, $40
|13A751| db $83 ; Copy past
|13A752| dw $0297
|13A754| db $1E ; Raw block
|13A755| db $00, $00, $FF, $F8, $07, $FC, $03, $06
|13A75D| db $F9, $F3, $FC, $19, $1E, $09, $0E, $0D
|13A765| db $0E, $FF, $07, $03, $01, $00, $E0, $F0
|13A76D| db $F0, $B2, $7D, $C7, $38, $FC, $03
|13A774| db $4A ; Repeat word
|13A775| dw $FF00
|13A777| db $01 ; Raw block
|13A778| db $00, $03
|13A77A| db $24 ; Repeat byte
|13A77B| db $FF
|13A77C| db $97 ; Copy past
|13A77D| dw $00F0
|13A77F| db $0E ; Raw block
|13A780| db $7F, $00, $3F, $00, $9F, $00, $8F, $00
|13A788| db $C3, $00, $C5, $00, $E3, $00, $F8
|13A78F| db $28 ; Repeat byte
|13A790| db $00
|13A791| db $E0, $2E ; EXT Raw block
|13A793| db $EA, $4C, $EB, $4C, $E9, $4E, $EF, $4F
|13A79B| db $E1, $41, $FF, $41, $DF, $5E, $DF, $5F
|13A7A3| db $33, $33, $30, $31, $3E, $3E, $21, $20
|13A7AB| db $05, $05, $FF, $00, $FF, $7F, $F7, $FF
|13A7B3| db $88, $88, $F7, $80, $F7, $7F, $FF, $C0
|13A7BB| db $FA, $FF, $7F, $80, $77, $7F, $80
|13A7C2| db $22 ; Repeat byte
|13A7C3| db $00
|13A7C4| db $06 ; Raw block
|13A7C5| db $FE, $00, $02, $FC, $FA, $FC, $0A
|13A7CC| db $43 ; Repeat word
|13A7CD| dw $EA0C
|13A7CF| db $0A ; Raw block
|13A7D0| db $CC, $EA, $4C, $FF, $FF, $03, $03, $F3
|13A7D8| db $F3, $33, $33
|13A7DB| db $45 ; Repeat word
|13A7DC| dw $5BAA
|13A7DE| db $00 ; Raw block
|13A7DF| db $AE
|13A7E0| db $46 ; Repeat word
|13A7E1| dw $A05F
|13A7E3| db $01 ; Raw block
|13A7E4| db $BF, $40
|13A7E6| db $22 ; Repeat byte
|13A7E7| db $04
|13A7E8| db $24 ; Repeat byte
|13A7E9| db $00
|13A7EA| db $03 ; Raw block
|13A7EB| db $9E, $9F, $B0, $BF
|13A7EF| db $43 ; Repeat word
|13A7F0| dw $FFE0
|13A7F2| db $09 ; Raw block
|13A7F3| db $C1, $FE, $83, $FC, $07, $F8, $FF, $00
|13A7FB| db $60, $40
|13A7FD| db $25 ; Repeat byte
|13A7FE| db $00
|13A7FF| db $43 ; Repeat word
|13A800| dw $00FF
|13A802| db $0B ; Raw block
|13A803| db $03, $FC, $F9, $FE, $0D, $0E, $05, $06
|13A80B| db $85, $86, $45, $C6
|13A80F| db $23 ; Repeat byte
|13A810| db $00
|13A811| db $14 ; Raw block
|13A812| db $F0, $F8, $78, $38, $01, $FE, $FF, $01
|13A81A| db $F3, $6F, $EF, $5E, $F6, $14, $C4, $20
|13A822| db $AC, $28, $96, $34, $FE
|13A827| db $22 ; Repeat byte
|13A828| db $00
|13A829| db $09 ; Raw block
|13A82A| db $09, $1A, $52, $49, $FE, $01, $FC, $03
|13A832| db $F9, $07
|13A834| db $43 ; Repeat word
|13A835| dw $0FF3
|13A837| db $43 ; Repeat word
|13A838| dw $1FE3
|13A83A| db $01 ; Raw block
|13A83B| db $F1, $0F
|13A83D| db $28 ; Repeat byte
|13A83E| db $00
|13A83F| db $E0, $2A ; EXT Raw block
|13A841| db $FF, $01, $FE, $02, $FD, $04, $FA, $09
|13A849| db $F5, $13, $EB, $37, $C8, $59, $A0, $FF
|13A851| db $FE, $FD, $FB, $F6, $E4, $C0, $80, $E8
|13A859| db $17, $C4, $2B, $83, $74, $C0, $3B, $A0
|13A861| db $5F, $B1, $6E, $B9, $36, $9F, $58, $00
|13A869| db $30, $18, $0C
|13A86C| db $22 ; Repeat byte
|13A86D| db $44
|13A86E| db $00 ; Raw block
|13A86F| db $20
|13A870| db $97 ; Copy past
|13A871| dw $00F0
|13A873| db $E0, $39 ; EXT Raw block
|13A875| db $05, $FF, $1C, $FF, $3E, $FF, $7F, $FF
|13A87D| db $FD, $FF, $FA, $FE, $F9, $FF, $FC, $FF
|13A885| db $F8, $E0, $C0, $80, $00, $01, $00, $00
|13A88D| db $01, $FF, $30, $FF, $26, $EF, $0F, $7F
|13A895| db $3C, $FE, $BA, $FE, $59, $7F, $5C, $7F
|13A89D| db $00, $00, $10, $80, $01, $01, $80, $80
|13A8A5| db $01, $FF, $14, $DF, $36, $FF, $0F, $FF
|13A8AD| db $7D, $FF
|13A8AF| db $86 ; Copy past
|13A8B0| dw $042A
|13A8B2| db $00 ; Raw block
|13A8B3| db $20
|13A8B4| db $22 ; Repeat byte
|13A8B5| db $00
|13A8B6| db $02 ; Raw block
|13A8B7| db $01, $80, $80
|13A8BA| db $97 ; Copy past
|13A8BB| dw $0318
|13A8BD| db $4E ; Repeat word
|13A8BE| dw $FF00
|13A8C0| db $28 ; Repeat byte
|13A8C1| db $FF
|13A8C2| db $E0, $2C ; EXT Raw block
|13A8C4| db $DF, $53, $DF, $41, $DB, $41, $D3, $41
|13A8CC| db $CD, $41, $D3, $53, $9F, $5E, $FF, $00
|13A8D4| db $20, $2C, $28, $20, $32, $2C, $20, $00
|13A8DC| db $B0, $C3, $AB, $C0, $AD, $C0, $BD, $D2
|13A8E4| db $9A, $E8, $FF, $F3, $FF, $7C, $FF, $00
|13A8EC| db $1C, $17, $12, $00, $05
|13A8F1| db $22 ; Repeat byte
|13A8F2| db $00
|13A8F3| db $46 ; Repeat word
|13A8F4| dw $00FF
|13A8F6| db $08 ; Raw block
|13A8F7| db $0E, $FF, $1F, $FB, $1F, $F1, $1F, $F5
|13A8FF| db $1F
|13A900| db $22 ; Repeat byte
|13A901| db $00
|13A902| db $04 ; Raw block
|13A903| db $0E, $1F, $1B, $11, $11
|13A908| db $4F ; Repeat word
|13A909| dw $5BAA
|13A90B| db $27 ; Repeat byte
|13A90C| db $04
|13A90D| db $4D ; Repeat word
|13A90E| dw $1FF5
|13A910| db $01 ; Raw block
|13A911| db $BB, $5B
|13A913| db $26 ; Repeat byte
|13A914| db $11
|13A915| db $E0, $73 ; EXT Raw block
|13A917| db $15, $20, $5F, $70, $0F, $DF, $10, $8F
|13A91F| db $0F, $C0, $20, $C0, $3F, $21, $1E, $FE
|13A927| db $01, $08, $00, $20, $70, $3F, $30, $00
|13A92F| db $00, $97, $36, $F1, $51, $A0, $5C, $F0
|13A937| db $14, $FE, $0A, $CE, $72, $FD, $73, $8C
|13A93F| db $03, $48, $0E, $03, $0B, $01, $01, $00
|13A947| db $70, $33, $33, $DE, $FF, $21, $ED, $CC
|13A94F| db $CC, $33, $00, $CC, $00, $32, $32, $7F
|13A957| db $4C, $CC, $00, $12, $33, $FF, $FF, $CD
|13A95F| db $B3, $A7, $40, $A8, $40, $EB, $43, $F3
|13A967| db $4B, $E1, $7D, $E0, $1E, $90, $0F, $B0
|13A96F| db $0F, $00, $07, $04, $04, $06, $07, $04
|13A977| db $00, $8E, $6C, $82, $70, $62, $9C, $52
|13A97F| db $8C, $2A, $C4, $10, $E0, $0E, $F0, $01
|13A987| db $FE, $10, $0C, $08
|13A98B| db $83 ; Copy past
|13A98C| dw $023C
|13A98E| db $00 ; Raw block
|13A98F| db $FE
|13A990| db $97 ; Copy past
|13A991| dw $00F0
|13A993| db $06 ; Raw block
|13A994| db $AC, $EF, $3F, $FF, $02, $FE, $01
|13A99B| db $48 ; Repeat word
|13A99C| dw $00FF
|13A99E| db $04 ; Raw block
|13A99F| db $10, $80, $C1, $FC, $FE
|13A9A4| db $22 ; Repeat byte
|13A9A5| db $FF
|13A9A6| db $0F ; Raw block
|13A9A7| db $9E, $FF, $1F, $FF, $0F, $FF, $80, $FF
|13A9AF| db $A9, $EF, $3A, $FE, $01, $BF, $00, $C7
|13A9B7| db $23 ; Repeat byte
|13A9B8| db $00
|13A9B9| db $13 ; Raw block
|13A9BA| db $10, $01, $40, $38, $9E, $FF, $3F, $FF
|13A9C2| db $0F, $FF, $26, $FF, $51, $DF, $32, $FE
|13A9CA| db $01, $FF, $C0, $FF
|13A9CE| db $23 ; Repeat byte
|13A9CF| db $00
|13A9D0| db $02 ; Raw block
|13A9D1| db $20, $01, $00
|13A9D4| db $95 ; Copy past
|13A9D5| dw $0497
|13A9D7| db $22 ; Repeat byte
|13A9D8| db $00
|13A9D9| db $8B ; Copy past
|13A9DA| dw $01C8
|13A9DC| db $26 ; Repeat byte
|13A9DD| db $00
|13A9DE| db $83 ; Copy past
|13A9DF| dw $01C3
|13A9E1| db $00 ; Raw block
|13A9E2| db $FF
|13A9E3| db $FF ; End of GFX 33

;===================================================================================================

GFX_34:
|13A9E4| db $44 ; Repeat word
|13A9E5| dw $5FBE
|13A9E7| db $43 ; Repeat word
|13A9E8| dw $B87F
|13A9EA| db $00 ; Raw block
|13A9EB| db $79
|13A9EC| db $45 ; Repeat word
|13A9ED| dw $7FBE
|13A9EF| db $04 ; Raw block
|13A9F0| db $08, $18, $28, $28, $2E
|13A9F5| db $22 ; Repeat byte
|13A9F6| db $28
|13A9F7| db $45 ; Repeat word
|13A9F8| dw $313D
|13A9FA| db $09 ; Raw block
|13A9FB| db $BD, $B1, $FD, $F1, $0C, $F1, $EF, $32
|13AA03| db $2F, $3D
|13AA05| db $22 ; Repeat byte
|13AA06| db $CE
|13AA07| db $14 ; Raw block
|13AA08| db $4E, $0E, $0E, $CC, $C2, $FF, $00, $C1
|13AA10| db $3E, $DE, $3F, $CF, $3F, $CC, $3C, $E6
|13AA18| db $1E, $E3, $1F, $F0, $0F
|13AA1D| db $23 ; Repeat byte
|13AA1E| db $00
|13AA1F| db $17 ; Raw block
|13AA20| db $0B, $05, $02, $00, $07, $F8, $F8, $07
|13AA28| db $13, $EB, $26, $D7, $C4, $AF, $80, $6F
|13AA30| db $86, $6F, $83, $77, $F8, $07, $EC, $D8
|13AA38| db $22 ; Repeat byte
|13AA39| db $38
|13AA3A| db $00 ; Raw block
|13AA3B| db $1C
|13AA3C| db $44 ; Repeat word
|13AA3D| dw $FF00
|13AA3F| db $02 ; Raw block
|13AA40| db $0F, $F0, $F0
|13AA43| db $27 ; Repeat byte
|13AA44| db $FF
|13AA45| db $02 ; Raw block
|13AA46| db $1F, $07, $F0
|13AA49| db $24 ; Repeat byte
|13AA4A| db $FF
|13AA4B| db $E0, $5C ; EXT Raw block
|13AA4D| db $00, $FF, $C0, $3F, $00, $1F, $C0, $CF
|13AA55| db $E0, $E7, $F2, $F1, $F8, $F9, $FC, $FD
|13AA5D| db $3F, $0F, $E7, $F3, $F9, $FD, $FE, $FE
|13AA65| db $BD, $81, $DA, $C2, $6E, $E6, $EF, $E4
|13AA6D| db $F3, $E2, $41, $C1, $90, $90, $39, $38
|13AA75| db $7E, $BC, $5A, $59, $5C, $3E, $6F, $C7
|13AA7D| db $7A, $78, $FD, $F9, $7B, $F3, $77, $E7
|13AA85| db $4F, $8D, $DF, $1D, $CE, $2E, $E0, $91
|13AA8D| db $97, $36, $6C, $5A, $34, $24, $11, $8E
|13AA95| db $2F, $DF, $D0, $EF, $2F, $30, $17, $18
|13AA9D| db $D7, $D9, $F7, $FB, $E5, $FB, $CE, $F1
|13AAA5| db $00, $00, $C0, $E0, $20
|13AAAA| db $22 ; Repeat byte
|13AAAB| db $00
|13AAAC| db $E0, $29 ; EXT Raw block
|13AAAE| db $8F, $FF, $96, $EF, $58, $67, $5C, $63
|13AAB6| db $BE, $C1, $7B, $88, $F7, $16, $FF, $0C
|13AABE| db $00, $00, $80, $80, $00, $04, $08, $00
|13AAC6| db $90, $FF, $28, $EF, $54, $D7, $55, $D7
|13AACE| db $54, $D7, $6C, $EF, $B8, $7F, $C1, $3E
|13AAD6| db $00, $10
|13AAD8| db $22 ; Repeat byte
|13AAD9| db $38
|13AADA| db $01 ; Raw block
|13AADB| db $10, $00
|13AADD| db $4F ; Repeat word
|13AADE| dw $FF00
|13AAE0| db $28 ; Repeat byte
|13AAE1| db $00
|13AAE2| db $0F ; Raw block
|13AAE3| db $D6, $39, $AF, $70, $4D, $F6, $BA, $4B
|13AAEB| db $ED, $1E, $D3, $3C, $C6, $39, $C5, $3B
|13AAF3| db $22 ; Repeat byte
|13AAF4| db $00
|13AAF5| db $00 ; Raw block
|13AAF6| db $04
|13AAF7| db $23 ; Repeat byte
|13AAF8| db $00
|13AAF9| db $0F ; Raw block
|13AAFA| db $1B, $E7, $D8, $E7, $2B, $D7, $FA, $06
|13AB02| db $D9, $27, $12, $FE, $C4, $FC, $BE, $CE
|13AB0A| db $22 ; Repeat byte
|13AB0B| db $00
|13AB0C| db $E0, $27 ; EXT Raw block
|13AB0E| db $01, $00, $01, $03, $01, $10, $00, $C0
|13AB16| db $10, $43, $80, $FC, $83, $FC, $FE, $80
|13AB1E| db $00, $FF, $00, $3C, $FF, $EF, $EF, $7F
|13AB26| db $7C, $01, $FF, $FF, $00, $83, $7C, $9B
|13AB2E| db $42, $A5, $66, $E7, $24, $D3, $6E, $99
|13AB36| db $84 ; Copy past
|13AB37| dw $016B
|13AB39| db $03 ; Raw block
|13AB3A| db $00, $3C, $18, $18
|13AB3E| db $83 ; Copy past
|13AB3F| dw $0178
|13AB41| db $48 ; Repeat word
|13AB42| dw $7FFE
|13AB44| db $43 ; Repeat word
|13AB45| dw $FEBF
|13AB47| db $02 ; Raw block
|13AB48| db $DF, $FE, $DF
|13AB4B| db $23 ; Repeat byte
|13AB4C| db $68
|13AB4D| db $03 ; Raw block
|13AB4E| db $28, $28, $08, $18
|13AB52| db $4F ; Repeat word
|13AB53| dw $313D
|13AB55| db $27 ; Repeat byte
|13AB56| db $CE
|13AB57| db $E0, $3F ; EXT Raw block
|13AB59| db $F7, $09, $FF, $03, $FE, $06, $FF, $02
|13AB61| db $FC, $02, $FF, $09, $FF, $0C, $F7, $4F
|13AB69| db $01, $03, $05, $01, $01, $08, $0C, $42
|13AB71| db $80, $7B, $80, $7C, $E0, $9F, $E0, $DF
|13AB79| db $F0, $EF, $7E, $61, $23, $80, $2F, $C3
|13AB81| db $0F, $07, $03, $00, $00, $80, $C0, $00
|13AB89| db $FE, $E0, $FE, $00, $FE, $C0, $3E, $20
|13AB91| db $DE, $D0, $EE, $E8, $F7, $F5, $F7, $F4
|13AB99| db $22 ; Repeat byte
|13AB9A| db $01
|13AB9B| db $14 ; Raw block
|13AB9C| db $C1, $E1, $F1, $F8, $F8, $FF, $60, $FF
|13ABA4| db $00, $FF, $E0, $3F, $30, $DF, $D8, $EF
|13ABAC| db $EC, $F7, $F6, $FB, $FA
|13ABB1| db $22 ; Repeat byte
|13ABB2| db $00
|13ABB3| db $04 ; Raw block
|13ABB4| db $C0, $E0, $F0, $F8, $FC
|13ABB9| db $49 ; Repeat word
|13ABBA| dw $66F7
|13ABBC| db $43 ; Repeat word
|13ABBD| dw $66B5
|13ABBF| db $01 ; Raw block
|13ABC0| db $F7, $66
|13ABC2| db $24 ; Repeat byte
|13ABC3| db $18
|13ABC4| db $08 ; Raw block
|13ABC5| db $5A, $5A, $18, $FF, $00, $BF, $3E, $DF
|13ABCD| db $46
|13ABCE| db $43 ; Repeat word
|13ABCF| dw $66F7
|13ABD1| db $1D ; Raw block
|13ABD2| db $D3, $42, $81, $3C, $B5, $66, $00, $40
|13ABDA| db $38, $18, $18, $3C, $5E, $18, $1C, $E3
|13ABE2| db $3B, $C7, $F7, $0F, $FC, $0F, $F8, $0F
|13ABEA| db $F4, $CB, $3F, $E0, $1F, $E0
|13ABF0| db $27 ; Repeat byte
|13ABF1| db $00
|13ABF2| db $13 ; Raw block
|13ABF3| db $71, $8E, $A4, $DF, $A2, $D3, $26, $D7
|13ABFB| db $2C, $DF, $31, $CE, $BF, $40, $3F, $C0
|13AC03| db $00, $00, $0C, $08
|13AC07| db $23 ; Repeat byte
|13AC08| db $00
|13AC09| db $01 ; Raw block
|13AC0A| db $7F, $80
|13AC0C| db $43 ; Repeat word
|13AC0D| dw $06F9
|13AC0F| db $08 ; Raw block
|13AC10| db $FF, $00, $FB, $0C, $33, $DC, $23, $DC
|13AC18| db $FF
|13AC19| db $28 ; Repeat byte
|13AC1A| db $00
|13AC1B| db $0F ; Raw block
|13AC1C| db $E7, $18, $DB, $3C, $BA, $7D, $B6, $79
|13AC24| db $CC, $33, $FD, $03, $F9, $07, $3A, $C6
|13AC2C| db $26 ; Repeat byte
|13AC2D| db $00
|13AC2E| db $E0, $2A ; EXT Raw block
|13AC30| db $01, $35, $FB, $54, $DB, $A9, $B7, $4B
|13AC38| db $77, $97, $EF, $95, $ED, $91, $E9, $D5
|13AC40| db $ED, $00, $20, $40, $80, $00, $02, $06
|13AC48| db $02, $2F, $DF, $38, $C0, $C7, $83, $80
|13AC50| db $03, $B0, $01, $68, $30, $B0, $C0, $00
|13AC58| db $80, $00, $07
|13AC5B| db $22 ; Repeat byte
|13AC5C| db $00
|13AC5D| db $14 ; Raw block
|13AC5E| db $80, $00, $00, $0D, $FE, $B5, $CF, $B6
|13AC66| db $FF, $C2, $FF, $F2, $FF, $3B, $FF, $D8
|13AC6E| db $3F, $EA, $1F, $01, $30
|13AC73| db $25 ; Repeat byte
|13AC74| db $00
|13AC75| db $85 ; Copy past
|13AC76| dw $0170
|13AC78| db $43 ; Repeat word
|13AC79| dw $76B5
|13AC7B| db $0A ; Raw block
|13AC7C| db $9D, $7E, $CD, $3E, $E5, $1E, $00, $3C
|13AC84| db $18, $08, $08
|13AC87| db $22 ; Repeat byte
|13AC88| db $00
|13AC89| db $4E ; Repeat word
|13AC8A| dw $7FFE
|13AC8C| db $00 ; Raw block
|13AC8D| db $3F
|13AC8E| db $26 ; Repeat byte
|13AC8F| db $68
|13AC90| db $00 ; Raw block
|13AC91| db $28
|13AC92| db $45 ; Repeat word
|13AC93| dw $7BAE
|13AC95| db $03 ; Raw block
|13AC96| db $9E, $73, $EE, $3B
|13AC9A| db $45 ; Repeat word
|13AC9B| dw $7BAE
|13AC9D| db $22 ; Repeat byte
|13AC9E| db $08
|13AC9F| db $00 ; Raw block
|13ACA0| db $10
|13ACA1| db $23 ; Repeat byte
|13ACA2| db $08
|13ACA3| db $19 ; Raw block
|13ACA4| db $F6, $4E, $B3, $4F, $F8, $47, $BE, $61
|13ACAC| db $BE, $65, $BF, $65, $BA, $61, $98, $61
|13ACB4| db $41, $00, $40, $20, $26, $23, $26, $06
|13ACBC| db $28, $C4
|13ACBE| db $43 ; Repeat word
|13ACBF| dw $C728
|13ACC1| db $0C ; Raw block
|13ACC2| db $EC, $03, $97, $0C, $BF, $0F, $47, $37
|13ACCA| db $40, $38, $07, $02, $02
|13ACCF| db $43 ; Repeat word
|13ACD0| dw $0800
|13ACD2| db $18 ; Raw block
|13ACD3| db $0F, $3D, $31, $7D, $B1, $FD, $11, $FF
|13ACDB| db $F3, $EF, $7F, $4E, $32, $8D, $81, $7F
|13ACE3| db $71, $DE, $0E, $0E, $1E, $A1, $CD, $7E
|13ACEB| db $8E
|13ACEC| db $37 ; Repeat byte
|13ACED| db $FF
|13ACEE| db $03 ; Raw block
|13ACEF| db $EF, $61, $C1, $41
|13ACF3| db $43 ; Repeat word
|13ACF4| dw $4FCF
|13ACF6| db $E0, $36 ; EXT Raw block
|13ACF8| db $CB, $4F, $48, $8F, $20, $C7, $1F, $E0
|13AD00| db $1E, $3E, $30, $30, $34, $B7, $DF, $E0
|13AD08| db $FF, $00, $80, $00, $BF, $09, $89, $09
|13AD10| db $BF, $49, $BF, $7F, $FF, $00, $C0, $3F
|13AD18| db $00, $7F, $40, $76, $40, $40, $00, $3F
|13AD20| db $3F, $C0, $FF, $18, $E7, $3C, $67, $98
|13AD28| db $3E, $C1, $7C, $83, $FE, $01, $FF
|13AD2F| db $28 ; Repeat byte
|13AD30| db $00
|13AD31| db $01 ; Raw block
|13AD32| db $7F, $80
|13AD34| db $43 ; Repeat word
|13AD35| dw $06F9
|13AD37| db $88 ; Copy past
|13AD38| dw $0276
|13AD3A| db $28 ; Repeat byte
|13AD3B| db $00
|13AD3C| db $0F ; Raw block
|13AD3D| db $FF, $00, $3F, $C0, $BF, $C0, $F3, $0C
|13AD45| db $FB, $0C, $7F, $80, $19, $E6, $0D, $F6
|13AD4D| db $27 ; Repeat byte
|13AD4E| db $00
|13AD4F| db $11 ; Raw block
|13AD50| db $28, $F4, $2A, $F6, $6D, $F3, $6E, $F1
|13AD58| db $2F, $F0, $13, $FC, $4D, $BE, $D2, $33
|13AD60| db $03, $01
|13AD62| db $24 ; Repeat byte
|13AD63| db $00
|13AD64| db $10 ; Raw block
|13AD65| db $0C, $B3, $CF, $A1, $DF, $6F, $9F, $5B
|13AD6D| db $BB, $D5, $35, $9A, $7B, $9E, $7F, $CC
|13AD75| db $3F
|13AD76| db $22 ; Repeat byte
|13AD77| db $00
|13AD78| db $02 ; Raw block
|13AD79| db $04, $0E, $04
|13AD7C| db $22 ; Repeat byte
|13AD7D| db $00
|13AD7E| db $10 ; Raw block
|13AD7F| db $C0, $30, $00, $E0, $80, $04, $C0, $0A
|13AD87| db $84, $16, $8C, $21, $90, $07, $BF, $00
|13AD8F| db $C0
|13AD90| db $23 ; Repeat byte
|13AD91| db $00
|13AD92| db $00 ; Raw block
|13AD93| db $0E
|13AD94| db $44 ; Repeat word
|13AD95| dw $FF00
|13AD97| db $0A ; Raw block
|13AD98| db $FC, $00, $F1, $00, $E3, $00, $C0, $00
|13ADA0| db $81, $00, $0F
|13ADA3| db $28 ; Repeat byte
|13ADA4| db $00
|13ADA5| db $49 ; Repeat word
|13ADA6| dw $00FF
|13ADA8| db $04 ; Raw block
|13ADA9| db $FE, $00, $FC, $00, $F8
|13ADAE| db $28 ; Repeat byte
|13ADAF| db $00
|13ADB0| db $43 ; Repeat word
|13ADB1| dw $16FF
|13ADB3| db $03 ; Raw block
|13ADB4| db $FD, $57, $FB, $5F
|13ADB8| db $47 ; Repeat word
|13ADB9| dw $7FEE
|13ADBB| db $03 ; Raw block
|13ADBC| db $16, $16, $55, $59
|13ADC0| db $23 ; Repeat byte
|13ADC1| db $68
|13ADC2| db $43 ; Repeat word
|13ADC3| dw $CEFF
|13ADC5| db $01 ; Raw block
|13ADC6| db $3D, $FE
|13ADC8| db $45 ; Repeat word
|13ADC9| dw $FFED
|13ADCB| db $06 ; Raw block
|13ADCC| db $6D, $7F, $23, $33, $CE, $CE, $30
|13ADD3| db $22 ; Repeat byte
|13ADD4| db $01
|13ADD5| db $17 ; Raw block
|13ADD6| db $81, $CD, $9D, $25, $9B, $37, $AC, $3B
|13ADDE| db $B7, $3D, $93, $1E, $C9, $49, $F7, $7F
|13ADE6| db $FF, $00, $42, $50, $48, $45, $62, $36
|13ADEE| db $83 ; Copy past
|13ADEF| dw $0256
|13ADF1| db $15 ; Raw block
|13ADF2| db $6F, $D0, $F3, $DC, $EC, $8F, $F7, $17
|13ADFA| db $7E, $8E, $F8, $87, $FF, $00, $00, $40
|13AE02| db $C0, $90, $18, $0D, $80, $00
|13AE08| db $4F ; Repeat word
|13AE09| dw $202F
|13AE0B| db $27 ; Repeat byte
|13AE0C| db $D0
|13AE0D| db $4F ; Repeat word
|13AE0E| dw $00FF
|13AE10| db $28 ; Repeat byte
|13AE11| db $FF
|13AE12| db $03 ; Raw block
|13AE13| db $C0, $FF, $C0, $3F
|13AE17| db $44 ; Repeat word
|13AE18| dw $EFF0
|13AE1A| db $08 ; Raw block
|13AE1B| db $FF, $F0, $5F, $70, $1F, $30, $C0, $C0
|13AE23| db $30
|13AE24| db $22 ; Repeat byte
|13AE25| db $20
|13AE26| db $01 ; Raw block
|13AE27| db $80, $C0
|13AE29| db $49 ; Repeat word
|13AE2A| dw $343C
|13AE2C| db $00 ; Raw block
|13AE2D| db $64
|13AE2E| db $22 ; Repeat byte
|13AE2F| db $FC
|13AE30| db $01 ; Raw block
|13AE31| db $00, $00
|13AE33| db $24 ; Repeat byte
|13AE34| db $C3
|13AE35| db $14 ; Raw block
|13AE36| db $63, $03, $FF, $5B, $DC, $97, $58, $CF
|13AE3E| db $30, $FF, $00, $7F, $80, $BF, $C0, $5D
|13AE46| db $63, $5B, $67, $20, $20
|13AE4B| db $23 ; Repeat byte
|13AE4C| db $00
|13AE4D| db $01 ; Raw block
|13AE4E| db $80, $80
|13AE50| db $43 ; Repeat word
|13AE51| dw $00FF
|13AE53| db $0B ; Raw block
|13AE54| db $DF, $60, $8F, $F0, $DD, $62, $FC, $07
|13AE5C| db $7D, $82, $3F, $C0
|13AE60| db $27 ; Repeat byte
|13AE61| db $00
|13AE62| db $83 ; Copy past
|13AE63| dw $0474
|13AE65| db $0A ; Raw block
|13AE66| db $F0, $00, $E1, $00, $C3, $00, $C7, $00
|13AE6E| db $87, $00, $8F
|13AE71| db $28 ; Repeat byte
|13AE72| db $00
|13AE73| db $04 ; Raw block
|13AE74| db $2D, $22, $28, $27, $2A
|13AE79| db $44 ; Repeat word
|13AE7A| dw $2F27
|13AE7C| db $05 ; Raw block
|13AE7D| db $2C, $24, $28, $24, $2C, $24
|13AE83| db $24 ; Repeat byte
|13AE84| db $D0
|13AE85| db $22 ; Repeat byte
|13AE86| db $D3
|13AE87| db $04 ; Raw block
|13AE88| db $55, $AA, $00, $FF, $AA
|13AE8D| db $22 ; Repeat byte
|13AE8E| db $FF
|13AE8F| db $05 ; Raw block
|13AE90| db $55, $55, $00, $00, $40, $40
|13AE96| db $25 ; Repeat byte
|13AE97| db $00
|13AE98| db $12 ; Raw block
|13AE99| db $AA, $FF, $BF, $FF, $07, $00, $83, $00
|13AEA1| db $C0, $00, $C8, $00, $CE, $00, $8F, $00
|13AEA9| db $1F, $00, $3F
|13AEAC| db $28 ; Repeat byte
|13AEAD| db $00
|13AEAE| db $45 ; Repeat word
|13AEAF| dw $00FF
|13AEB1| db $00 ; Raw block
|13AEB2| db $7F
|13AEB3| db $44 ; Repeat word
|13AEB4| dw $3F00
|13AEB6| db $02 ; Raw block
|13AEB7| db $1F, $00, $0F
|13AEBA| db $28 ; Repeat byte
|13AEBB| db $00
|13AEBC| db $83 ; Copy past
|13AEBD| dw $0456
|13AEBF| db $06 ; Raw block
|13AEC0| db $E7, $00, $C7, $00, $CF, $00, $8F
|13AEC7| db $43 ; Repeat word
|13AEC8| dw $9F00
|13AECA| db $28 ; Repeat byte
|13AECB| db $00
|13AECC| db $FF ; End of GFX 34

;===================================================================================================

GFX_35:
|13AECD| db $43 ; Repeat word
|13AECE| dw $7797
|13AED0| db $43 ; Repeat word
|13AED1| dw $7791
|13AED3| db $07 ; Raw block
|13AED4| db $97, $77, $CF, $3F, $E0, $1F, $FF, $00
|13AEDC| db $24 ; Repeat byte
|13AEDD| db $48
|13AEDE| db $03 ; Raw block
|13AEDF| db $20, $13, $00, $DF
|13AEE3| db $26 ; Repeat byte
|13AEE4| db $FF
|13AEE5| db $06 ; Raw block
|13AEE6| db $F3, $FF, $E1, $FF, $00, $FF, $FF
|13AEED| db $26 ; Repeat byte
|13AEEE| db $00
|13AEEF| db $0A ; Raw block
|13AEF0| db $1E, $00, $FF, $FF, $9C, $FF, $98, $FF
|13AEF8| db $F8, $FF, $FC
|13AEFB| db $22 ; Repeat byte
|13AEFC| db $FF
|13AEFD| db $02 ; Raw block
|13AEFE| db $00, $FF, $FF
|13AF01| db $28 ; Repeat byte
|13AF02| db $00
|13AF03| db $43 ; Repeat word
|13AF04| dw $FEF9
|13AF06| db $43 ; Repeat word
|13AF07| dw $FE79
|13AF09| db $07 ; Raw block
|13AF0A| db $F1, $FE, $C3, $FC, $07, $F8, $FF, $00
|13AF12| db $24 ; Repeat byte
|13AF13| db $02
|13AF14| db $1E ; Raw block
|13AF15| db $04, $B8, $00, $82, $7E, $85, $7D, $8B
|13AF1D| db $7B, $97, $77, $AF, $6F, $D0, $5F, $80
|13AF25| db $7F, $FF, $00, $79, $72, $64, $68, $50
|13AF2D| db $20, $5F, $00, $DF, $20, $C0, $3F
|13AF34| db $43 ; Repeat word
|13AF35| dw $7F80
|13AF37| db $00 ; Raw block
|13AF38| db $8F
|13AF39| db $46 ; Repeat word
|13AF3A| dw $907F
|13AF3C| db $02 ; Raw block
|13AF3D| db $20, $1F, $4F
|13AF40| db $22 ; Repeat byte
|13AF41| db $40
|13AF42| db $03 ; Raw block
|13AF43| db $4F, $4F, $FF, $00
|13AF47| db $44 ; Repeat word
|13AF48| dw $FF00
|13AF4A| db $22 ; Repeat byte
|13AF4B| db $FF
|13AF4C| db $47 ; Repeat word
|13AF4D| dw $FF00
|13AF4F| db $00 ; Raw block
|13AF50| db $FF
|13AF51| db $22 ; Repeat byte
|13AF52| db $00
|13AF53| db $22 ; Repeat byte
|13AF54| db $FF
|13AF55| db $05 ; Raw block
|13AF56| db $00, $60, $9F, $00, $FF, $00
|13AF5C| db $22 ; Repeat byte
|13AF5D| db $FF
|13AF5E| db $46 ; Repeat word
|13AF5F| dw $FF00
|13AF61| db $01 ; Raw block
|13AF62| db $9F, $FF
|13AF64| db $22 ; Repeat byte
|13AF65| db $00
|13AF66| db $03 ; Raw block
|13AF67| db $FE, $FF, $FB, $04
|13AF6B| db $45 ; Repeat word
|13AF6C| dw $FE01
|13AF6E| db $00 ; Raw block
|13AF6F| db $F1
|13AF70| db $46 ; Repeat word
|13AF71| dw $09FE
|13AF73| db $02 ; Raw block
|13AF74| db $04, $FA, $F2
|13AF77| db $22 ; Repeat byte
|13AF78| db $06
|13AF79| db $E0, $25 ; EXT Raw block
|13AF7B| db $76, $F6, $FF, $FE, $FF, $FD, $FF, $FA
|13AF83| db $FF, $E4, $FF, $98, $FF, $60, $FF, $80
|13AF8B| db $FF, $00, $FE, $FD, $FB, $E7, $9F, $7F
|13AF93| db $FF, $FF, $7F, $80, $00, $C0, $80, $60
|13AF9B| db $C0, $3F, $FF, $00, $BF, $40
|13AFA1| db $43 ; Repeat word
|13AFA2| dw $7F80
|13AFA4| db $07 ; Raw block
|13AFA5| db $7F, $3F, $1F, $00, $00, $40, $7F, $40
|13AFAD| db $24 ; Repeat byte
|13AFAE| db $00
|13AFAF| db $02 ; Raw block
|13AFB0| db $FF, $00, $FF
|13AFB3| db $24 ; Repeat byte
|13AFB4| db $00
|13AFB5| db $01 ; Raw block
|13AFB6| db $FF, $00
|13AFB8| db $22 ; Repeat byte
|13AFB9| db $FF
|13AFBA| db $00 ; Raw block
|13AFBB| db $00
|13AFBC| db $22 ; Repeat byte
|13AFBD| db $FF
|13AFBE| db $01 ; Raw block
|13AFBF| db $00, $FF
|13AFC1| db $4F ; Repeat word
|13AFC2| dw $00FF
|13AFC4| db $27 ; Repeat byte
|13AFC5| db $FF
|13AFC6| db $4E ; Repeat word
|13AFC7| dw $FF00
|13AFC9| db $28 ; Repeat byte
|13AFCA| db $FF
|13AFCB| db $0F ; Raw block
|13AFCC| db $BF, $80, $A8, $80, $A3, $80, $A1, $80
|13AFD4| db $B4, $80, $B8, $80, $AB, $80, $A1, $80
|13AFDC| db $27 ; Repeat byte
|13AFDD| db $7F
|13AFDE| db $0F ; Raw block
|13AFDF| db $66, $00, $05, $00, $61, $00, $EB, $00
|13AFE7| db $4D, $00, $09, $00, $31, $00, $C4, $00
|13AFEF| db $27 ; Repeat byte
|13AFF0| db $FF
|13AFF1| db $49 ; Repeat word
|13AFF2| dw $7F80
|13AFF4| db $05 ; Raw block
|13AFF5| db $C0, $3F, $E0, $1F, $F8, $07
|13AFFB| db $24 ; Repeat byte
|13AFFC| db $6F
|13AFFD| db $02 ; Raw block
|13AFFE| db $3C, $18, $07
|13B001| db $4D ; Repeat word
|13B002| dw $FF00
|13B004| db $09 ; Raw block
|13B005| db $7F, $80, $9F, $9F, $FE, $FC, $FC, $FE
|13B00D| db $7F, $80
|13B00F| db $4D ; Repeat word
|13B010| dw $FF00
|13B012| db $09 ; Raw block
|13B013| db $FF, $00, $FF, $FD, $7F, $3F, $3F, $7F
|13B01B| db $FF, $00
|13B01D| db $49 ; Repeat word
|13B01E| dw $FE01
|13B020| db $00 ; Raw block
|13B021| db $03
|13B022| db $84 ; Copy past
|13B023| dw $0053
|13B025| db $24 ; Repeat byte
|13B026| db $F6
|13B027| db $03 ; Raw block
|13B028| db $F4, $F8, $00, $FF
|13B02C| db $44 ; Repeat word
|13B02D| dw $C300
|13B02F| db $01 ; Raw block
|13B030| db $FF, $00
|13B032| db $43 ; Repeat word
|13B033| dw $7E81
|13B035| db $43 ; Repeat word
|13B036| dw $66BD
|13B038| db $00 ; Raw block
|13B039| db $00
|13B03A| db $23 ; Repeat byte
|13B03B| db $7E
|13B03C| db $02 ; Raw block
|13B03D| db $42, $1A, $1A
|13B040| db $45 ; Repeat word
|13B041| dw $66B5
|13B043| db $09 ; Raw block
|13B044| db $83, $7C, $B9, $42, $A5, $66, $B9, $7E
|13B04C| db $7E, $00
|13B04E| db $22 ; Repeat byte
|13B04F| db $1A
|13B050| db $0E ; Raw block
|13B051| db $60, $3E, $1A, $02, $81, $FF, $00, $B8
|13B059| db $47, $9F, $60, $93, $6C, $9F, $60
|13B060| db $45 ; Repeat word
|13B061| dw $6C93
|13B063| db $E0, $29 ; EXT Raw block
|13B065| db $00, $40, $40, $49, $41, $49, $49, $09
|13B06D| db $F7, $08, $94, $69, $90, $6B, $9A, $65
|13B075| db $BF, $40, $C1, $1E, $81, $3E, $FF, $00
|13B07D| db $0C, $4E, $47, $49, $60, $60, $40, $00
|13B085| db $FF, $00, $93, $EC, $FF, $02, $EF, $02
|13B08D| db $6F, $01
|13B08F| db $43 ; Repeat word
|13B090| dw $020D
|13B092| db $01 ; Raw block
|13B093| db $EF, $02
|13B095| db $22 ; Repeat byte
|13B096| db $00
|13B097| db $01 ; Raw block
|13B098| db $F8, $F9
|13B09A| db $22 ; Repeat byte
|13B09B| db $F8
|13B09C| db $28 ; Repeat byte
|13B09D| db $FF
|13B09E| db $06 ; Raw block
|13B09F| db $EA, $FF, $95, $FF, $E0, $FF, $00
|13B0A6| db $23 ; Repeat byte
|13B0A7| db $FF
|13B0A8| db $01 ; Raw block
|13B0A9| db $EA, $9F
|13B0AB| db $22 ; Repeat byte
|13B0AC| db $FF
|13B0AD| db $25 ; Repeat byte
|13B0AE| db $00
|13B0AF| db $00 ; Raw block
|13B0B0| db $FF
|13B0B1| db $43 ; Repeat word
|13B0B2| dw $00FF
|13B0B4| db $02 ; Raw block
|13B0B5| db $00, $FF, $00
|13B0B8| db $23 ; Repeat byte
|13B0B9| db $FF
|13B0BA| db $22 ; Repeat byte
|13B0BB| db $00
|13B0BC| db $01 ; Raw block
|13B0BD| db $FF, $00
|13B0BF| db $43 ; Repeat word
|13B0C0| dw $C040
|13B0C2| db $03 ; Raw block
|13B0C3| db $00, $FF, $C0, $3F
|13B0C7| db $43 ; Repeat word
|13B0C8| dw $C040
|13B0CA| db $83 ; Copy past
|13B0CB| dw $028C
|13B0CD| db $01 ; Raw block
|13B0CE| db $BF, $BF
|13B0D0| db $83 ; Copy past
|13B0D1| dw $0296
|13B0D3| db $83 ; Copy past
|13B0D4| dw $00F6
|13B0D6| db $1F ; Raw block
|13B0D7| db $CE, $00, $0C, $00, $4D, $00, $EB, $00
|13B0DF| db $69, $00, $05, $18, $46, $20, $00, $31
|13B0E7| db $F3, $F3, $F7, $F7, $FB, $FF, $BD, $6E
|13B0EF| db $91, $6E, $81, $3C, $C3, $00, $BD, $00
|13B0F7| db $43 ; Repeat word
|13B0F8| dw $3C81
|13B0FA| db $03 ; Raw block
|13B0FB| db $FF, $81, $12, $52
|13B0FF| db $22 ; Repeat byte
|13B100| db $7E
|13B101| db $0B ; Raw block
|13B102| db $42, $42, $00, $B0, $80, $B8, $80, $B3
|13B10A| db $80, $B7, $80, $BF
|13B10E| db $22 ; Repeat byte
|13B10F| db $80
|13B110| db $03 ; Raw block
|13B111| db $40, $80, $00, $FF
|13B115| db $26 ; Repeat byte
|13B116| db $7F
|13B117| db $09 ; Raw block
|13B118| db $00, $27, $00, $90, $00, $72, $00, $B7
|13B120| db $00, $17
|13B122| db $25 ; Repeat byte
|13B123| db $00
|13B124| db $27 ; Repeat byte
|13B125| db $FF
|13B126| db $02 ; Raw block
|13B127| db $00, $F7, $08
|13B12A| db $45 ; Repeat word
|13B12B| dw $EF10
|13B12D| db $18 ; Raw block
|13B12E| db $FF, $00, $0C, $F3, $30, $CF, $C0, $3F
|13B136| db $08, $00, $EF, $EF, $00, $03, $4C, $33
|13B13E| db $FF, $00, $1F, $E0, $31, $CE, $C9, $3E
|13B146| db $19
|13B147| db $46 ; Repeat word
|13B148| dw $09FE
|13B14A| db $07 ; Raw block
|13B14B| db $00, $00, $CE, $32, $C2, $22, $E2, $E2
|13B153| db $27 ; Repeat byte
|13B154| db $00
|13B155| db $07 ; Raw block
|13B156| db $03, $00, $0C, $03, $30, $0F, $C0, $3F
|13B15E| db $24 ; Repeat byte
|13B15F| db $00
|13B160| db $02 ; Raw block
|13B161| db $03, $0C, $33
|13B164| db $23 ; Repeat byte
|13B165| db $00
|13B166| db $04 ; Raw block
|13B167| db $3F, $00, $C1, $3E, $19
|13B16C| db $46 ; Repeat word
|13B16D| dw $09FE
|13B16F| db $22 ; Repeat byte
|13B170| db $00
|13B171| db $10 ; Raw block
|13B172| db $3E, $C2, $22, $F2, $F2, $C5, $05, $CF
|13B17A| db $00, $DF, $00, $D7, $0F, $F8, $18, $9F
|13B182| db $60
|13B183| db $83 ; Copy past
|13B184| dw $006C
|13B186| db $08 ; Raw block
|13B187| db $7A, $7F, $60, $60, $67, $1F, $00, $00
|13B18F| db $01
|13B190| db $44 ; Repeat word
|13B191| dw $E105
|13B193| db $0F ; Raw block
|13B194| db $7E, $84, $8A, $DF, $44, $1F, $03, $FF
|13B19C| db $FF, $00, $FA, $FA, $3A, $3B, $20, $E0
|13B1A4| db $83 ; Copy past
|13B1A5| dw $0091
|13B1A7| db $1B ; Raw block
|13B1A8| db $9F, $40, $AA, $46, $B5, $4C, $B4, $4C
|13B1B0| db $B6, $4E, $93, $6F, $D0, $2F, $00, $38
|13B1B8| db $31, $23, $23, $21, $48, $0C, $FF, $00
|13B1C0| db $F9, $02, $D5, $E2
|13B1C4| db $43 ; Repeat word
|13B1C5| dw $726D
|13B1C7| db $1F ; Raw block
|13B1C8| db $ED, $F2, $C9, $F6, $0B, $F4, $00, $1C
|13B1D0| db $0C, $84, $84, $04, $12, $30, $8D, $FD
|13B1D8| db $FB, $FB, $FF, $FF, $AA, $FF, $55, $FF
|13B1E0| db $AE, $FF, $5D, $FF, $3C, $FF, $02, $04
|13B1E8| db $27 ; Repeat byte
|13B1E9| db $00
|13B1EA| db $0A ; Raw block
|13B1EB| db $80, $80, $50, $50, $BC, $FC, $57, $FF
|13B1F3| db $AB, $FF, $55
|13B1F6| db $83 ; Copy past
|13B1F7| dw $0023
|13B1F9| db $02 ; Raw block
|13B1FA| db $7F, $AF, $03
|13B1FD| db $23 ; Repeat byte
|13B1FE| db $00
|13B1FF| db $0B ; Raw block
|13B200| db $06, $61, $0C, $33, $00, $3F, $C0, $3F
|13B208| db $A1, $5E, $3B, $C4
|13B20C| db $43 ; Repeat word
|13B20D| dw $C03F
|13B20F| db $17 ; Raw block
|13B210| db $FF, $FF, $FD, $F1, $D2, $C0, $80, $00
|13B218| db $76, $00, $11, $00, $DD, $00, $33, $CC
|13B220| db $01, $FE, $40, $BF, $4C, $B3, $CE, $31
|13B228| db $23 ; Repeat byte
|13B229| db $FF
|13B22A| db $01 ; Raw block
|13B22B| db $7D, $0C
|13B22D| db $23 ; Repeat byte
|13B22E| db $00
|13B22F| db $12 ; Raw block
|13B230| db $80, $80, $A1, $A1, $1F, $1F, $35, $3F
|13B238| db $CA, $FF, $F5, $FF, $1C, $FF, $FF, $7F
|13B240| db $5E, $E0, $C0
|13B243| db $22 ; Repeat byte
|13B244| db $00
|13B245| db $09 ; Raw block
|13B246| db $72, $72, $39, $39, $97, $97, $C3, $C3
|13B24E| db $77, $F7
|13B250| db $83 ; Copy past
|13B251| dw $03C6
|13B253| db $06 ; Raw block
|13B254| db $00, $FF, $8D, $C6, $68, $3C, $08
|13B25B| db $22 ; Repeat byte
|13B25C| db $00
|13B25D| db $00 ; Raw block
|13B25E| db $BF
|13B25F| db $4E ; Repeat word
|13B260| dw $FF00
|13B262| db $27 ; Repeat byte
|13B263| db $FF
|13B264| db $0B ; Raw block
|13B265| db $DF, $3F, $DF, $2F, $EF, $17, $F7, $0B
|13B26D| db $FB, $05, $FD, $02
|13B271| db $43 ; Repeat word
|13B272| dw $00FF
|13B274| db $05 ; Raw block
|13B275| db $DF, $CF, $E7, $F3, $F9, $FC
|13B27B| db $22 ; Repeat byte
|13B27C| db $FF
|13B27D| db $0E ; Raw block
|13B27E| db $00, $9F, $EF, $FF, $00, $FC, $07, $1F
|13B286| db $0C, $3C, $13, $F0, $0F, $C0, $3F
|13B28D| db $22 ; Repeat byte
|13B28E| db $00
|13B28F| db $0C ; Raw block
|13B290| db $F8, $F0, $E3, $CC, $33, $FF, $00, $9F
|13B298| db $E0, $F1, $0E, $C9, $3E
|13B29D| db $47 ; Repeat word
|13B29E| dw $FE09
|13B2A0| db $02 ; Raw block
|13B2A1| db $00, $00, $0E
|13B2A4| db $84 ; Copy past
|13B2A5| dw $032B
|13B2A7| db $4E ; Repeat word
|13B2A8| dw $FF00
|13B2AA| db $28 ; Repeat byte
|13B2AB| db $FF
|13B2AC| db $1F ; Raw block
|13B2AD| db $10, $EF, $18, $E7, $0F, $F0, $08, $F7
|13B2B5| db $10, $EF, $20, $DF, $40, $BF, $FF, $00
|13B2BD| db $E7, $E7, $F0, $F0, $E7, $CF, $9F, $00
|13B2C5| db $30, $CF, $60, $9F, $C0, $3F, $40, $BF
|13B2CD| db $43 ; Repeat word
|13B2CE| dw $DF20
|13B2D0| db $83 ; Copy past
|13B2D1| dw $0306
|13B2D3| db $E0, $29 ; EXT Raw block
|13B2D5| db $C3, $8F, $1F, $1F, $8F, $8F, $C7, $00
|13B2DD| db $8D, $02, $3E, $01, $7B, $04, $FF, $30
|13B2E5| db $84, $32, $CC, $4A, $48, $B4, $B7, $48
|13B2ED| db $F8, $C8, $B0, $4B, $49, $31, $03, $87
|13B2F5| db $A8, $57, $A4, $5B, $A3, $4C, $A1, $46
|13B2FD| db $9F, $40
|13B2FF| db $43 ; Repeat word
|13B300| dw $7E81
|13B302| db $13 ; Raw block
|13B303| db $FF, $00, $37, $2B, $34, $38, $7E, $5E
|13B30B| db $5E, $00, $15, $EA, $25, $DA, $C5, $32
|13B313| db $05, $E2, $39, $02
|13B317| db $43 ; Repeat word
|13B318| dw $7E01
|13B31A| db $11 ; Raw block
|13B31B| db $FF, $00, $EC, $D4, $2C, $9C, $FE, $FA
|13B323| db $FA, $00, $D9, $DE, $2E, $EF, $8C, $7F
|13B32B| db $F3, $0C
|13B32D| db $43 ; Repeat word
|13B32E| dw $00FF
|13B330| db $05 ; Raw block
|13B331| db $F9, $06, $E1, $1E, $20, $10
|13B337| db $25 ; Repeat byte
|13B338| db $00
|13B339| db $0F ; Raw block
|13B33A| db $E0, $1F, $F1, $0E, $27, $D8, $FF, $00
|13B342| db $CF, $30, $30, $FF, $CE, $3F, $FF, $03
|13B34A| db $27 ; Repeat byte
|13B34B| db $00
|13B34C| db $E0, $35 ; EXT Raw block
|13B34E| db $22, $03, $88, $03, $80, $1F, $01, $7E
|13B356| db $63, $9C, $A7, $58, $87, $00, $05, $00
|13B35E| db $FD, $FE, $FC, $F0, $90, $D8, $F8, $FE
|13B366| db $FF, $00, $47, $00, $C7, $08, $C7, $18
|13B36E| db $47, $78, $87, $F8, $0F, $F0, $9C, $60
|13B376| db $00, $B8, $F8, $F0, $A0, $48, $F0, $E3
|13B37E| db $0D, $FF, $F1, $0E, $FF, $00
|13B384| db $83 ; Copy past
|13B385| dw $0546
|13B387| db $05 ; Raw block
|13B388| db $0F, $F0, $38, $FF, $9F, $7F
|13B38E| db $28 ; Repeat byte
|13B38F| db $00
|13B390| db $06 ; Raw block
|13B391| db $FF, $F8, $07, $DB, $3C, $0F, $F0
|13B398| db $43 ; Repeat word
|13B399| dw $00FF
|13B39B| db $03 ; Raw block
|13B39C| db $71, $8E, $8E, $FF
|13B3A0| db $27 ; Repeat byte
|13B3A1| db $00
|13B3A2| db $28 ; Repeat byte
|13B3A3| db $FF
|13B3A4| db $06 ; Raw block
|13B3A5| db $CA, $FF, $75, $FF, $C0, $FF, $00
|13B3AC| db $23 ; Repeat byte
|13B3AD| db $FF
|13B3AE| db $01 ; Raw block
|13B3AF| db $CA, $7F
|13B3B1| db $2A ; Repeat byte
|13B3B2| db $FF
|13B3B3| db $06 ; Raw block
|13B3B4| db $BD, $FF, $6A, $FF, $55, $FF, $08
|13B3BB| db $23 ; Repeat byte
|13B3BC| db $FF
|13B3BD| db $03 ; Raw block
|13B3BE| db $BD, $EA, $F7, $FF
|13B3C2| db $FF ; End of GFX 35

;===================================================================================================

GFX_36:
|13B3C3| db $09 ; Raw block
|13B3C4| db $DF, $20, $C0, $3F, $A1, $7F, $BE, $7F
|13B3CC| db $91, $71
|13B3CE| db $43 ; Repeat word
|13B3CF| dw $7791
|13B3D1| db $06 ; Raw block
|13B3D2| db $97, $77, $20, $1F, $40, $40, $4E
|13B3D9| db $22 ; Repeat byte
|13B3DA| db $48
|13B3DB| db $43 ; Repeat word
|13B3DC| dw $00FF
|13B3DE| db $05 ; Raw block
|13B3DF| db $80, $7F, $00, $FF, $80, $80
|13B3E5| db $25 ; Repeat byte
|13B3E6| db $FF
|13B3E7| db $04 ; Raw block
|13B3E8| db $00, $00, $7F, $80, $7F
|13B3ED| db $22 ; Repeat byte
|13B3EE| db $00
|13B3EF| db $09 ; Raw block
|13B3F0| db $FF, $00, $D8, $27, $20, $FF, $2F, $FF
|13B3F8| db $30, $30
|13B3FA| db $25 ; Repeat byte
|13B3FB| db $FF
|13B3FC| db $04 ; Raw block
|13B3FD| db $00, $27, $D8, $00, $CF
|13B402| db $22 ; Repeat byte
|13B403| db $00
|13B404| db $09 ; Raw block
|13B405| db $FB, $04, $03, $FC, $05, $FE, $F9, $FE
|13B40D| db $09, $0E
|13B40F| db $45 ; Repeat word
|13B410| dw $FEF9
|13B412| db $04 ; Raw block
|13B413| db $04, $F8, $02, $02, $F2
|13B418| db $22 ; Repeat byte
|13B419| db $02
|13B41A| db $15 ; Raw block
|13B41B| db $CB, $29, $CD, $29, $C3, $23, $CB, $23
|13B423| db $D7, $37, $F7, $17, $AE, $5F, $ED, $5E
|13B42B| db $16, $16, $1C, $1C, $08, $08
|13B431| db $83 ; Copy past
|13B432| dw $002E
|13B434| db $01 ; Raw block
|13B435| db $1F, $EF
|13B437| db $43 ; Repeat word
|13B438| dw $00FF
|13B43A| db $07 ; Raw block
|13B43B| db $FC, $00, $FC, $30, $87, $30, $CF, $48
|13B443| db $22 ; Repeat byte
|13B444| db $00
|13B445| db $04 ; Raw block
|13B446| db $CF, $B7, $4B, $4B, $33
|13B44B| db $45 ; Repeat word
|13B44C| dw $66B5
|13B44E| db $03 ; Raw block
|13B44F| db $83, $7C, $99, $42
|13B453| db $45 ; Repeat word
|13B454| dw $66B5
|13B456| db $04 ; Raw block
|13B457| db $1A, $1A, $5A, $60, $3E
|13B45C| db $22 ; Repeat byte
|13B45D| db $1A
|13B45E| db $10 ; Raw block
|13B45F| db $B4, $CC, $DB, $E7, $CE, $F1, $D7, $F8
|13B467| db $A3, $EC, $46, $CD, $52, $D9, $AB, $F9
|13B46F| db $03
|13B470| db $22 ; Repeat byte
|13B471| db $00
|13B472| db $E0, $21 ; EXT Raw block
|13B474| db $10, $30, $24, $04, $FF, $FE, $FE, $D9
|13B47C| db $FA, $E6, $EC, $1C, $E8, $98, $D0, $B0
|13B484| db $A0, $60, $A1, $E1, $FE, $D8, $E1, $03
|13B48C| db $87, $8F, $1F, $9E, $87, $7A, $84, $87
|13B494| db $01, $01
|13B496| db $22 ; Repeat byte
|13B497| db $30
|13B498| db $14 ; Raw block
|13B499| db $20, $30, $20, $7F, $41, $7F, $80, $02
|13B4A1| db $78, $FE, $CF, $DF, $DF, $BE, $7F, $03
|13B4A9| db $FC, $50, $7F, $7F, $80
|13B4AE| db $43 ; Repeat word
|13B4AF| dw $00FF
|13B4B1| db $07 ; Raw block
|13B4B2| db $F8, $07, $47, $BF, $E0, $1F, $00, $80
|13B4BA| db $25 ; Repeat byte
|13B4BB| db $00
|13B4BC| db $03 ; Raw block
|13B4BD| db $FF, $00, $7E, $81
|13B4C1| db $43 ; Repeat word
|13B4C2| dw $00FF
|13B4C4| db $07 ; Raw block
|13B4C5| db $8F, $70, $70, $FF, $CF, $CF, $67, $E7
|13B4CD| db $25 ; Repeat byte
|13B4CE| db $00
|13B4CF| db $11 ; Raw block
|13B4D0| db $30, $18, $C7, $3F, $06, $FF, $F1, $0E
|13B4D8| db $FF, $00, $FC, $03, $FF, $00, $01, $FE
|13B4E0| db $FF, $FF
|13B4E2| db $27 ; Repeat byte
|13B4E3| db $00
|13B4E4| db $0F ; Raw block
|13B4E5| db $FF, $FF, $03, $FF, $F0, $0F, $3F, $C0
|13B4ED| db $0F, $F0, $9F, $60, $FF, $00, $04, $FB
|13B4F5| db $27 ; Repeat byte
|13B4F6| db $00
|13B4F7| db $17 ; Raw block
|13B4F8| db $03, $FC, $06, $F9, $05, $FA, $0D, $F2
|13B500| db $3F, $C0, $37, $CC, $1B, $E6, $0F, $F8
|13B508| db $F8, $F0, $F0, $C2, $80, $4C, $A6, $D8
|13B510| db $24 ; Repeat byte
|13B511| db $FF
|13B512| db $0E ; Raw block
|13B513| db $E7, $FF, $9B, $FF, $05, $FF, $02, $FF
|13B51B| db $01, $FF, $00, $FF, $FF, $E7, $FB
|13B522| db $62 ; Increment fill
|13B523| db $FD
|13B524| db $11 ; Raw block
|13B525| db $FF, $9E, $3F, $DC, $7F, $E1, $5F, $EC
|13B52D| db $53, $BB, $44, $87, $30, $FD, $4B, $D7
|13B535| db $2B, $40
|13B537| db $22 ; Repeat byte
|13B538| db $00
|13B539| db $E0, $3D ; EXT Raw block
|13B53B| db $08, $4C, $20, $00, $90, $F7, $9B, $FC
|13B543| db $2F, $F3, $15, $EC, $2B, $C8, $EA, $18
|13B54B| db $E8, $18, $76, $AF, $08, $00, $00, $03
|13B553| db $17, $07, $87, $00, $9A, $3B, $EB, $32
|13B55B| db $C5, $26, $DB, $3C, $E2, $11, $F3, $23
|13B563| db $C6, $36, $DE, $3C, $44, $4C, $18, $00
|13B56B| db $0C, $0C, $09, $03, $06, $FB, $06, $FD
|13B573| db $0F, $F8, $1C, $F3, $18, $E7
|13B579| db $45 ; Repeat word
|13B57A| dw $EF10
|13B57C| db $04 ; Raw block
|13B57D| db $FB, $FD, $F8, $F1, $E3
|13B582| db $22 ; Repeat byte
|13B583| db $E7
|13B584| db $01 ; Raw block
|13B585| db $F3, $0C
|13B587| db $45 ; Repeat word
|13B588| dw $6C93
|13B58A| db $01 ; Raw block
|13B58B| db $9F, $60
|13B58D| db $45 ; Repeat word
|13B58E| dw $6C93
|13B590| db $00 ; Raw block
|13B591| db $09
|13B592| db $22 ; Repeat byte
|13B593| db $49
|13B594| db $0B ; Raw block
|13B595| db $41, $49, $49, $09, $4F, $B0, $B4, $4B
|13B59D| db $1E, $01, $0E, $01
|13B5A1| db $43 ; Repeat word
|13B5A2| dw $000F
|13B5A4| db $1C ; Raw block
|13B5A5| db $8D, $02, $8F, $02, $00, $80, $F9, $F9
|13B5AD| db $F8, $F8, $FA, $F8, $F1, $4E, $BB, $04
|13B5B5| db $BF, $00, $E3, $1C, $DD, $3E, $E3, $22
|13B5BD| db $E1, $21, $E0, $20, $00
|13B5C2| db $23 ; Repeat byte
|13B5C3| db $40
|13B5C4| db $03 ; Raw block
|13B5C5| db $5C, $5E, $5F, $0F
|13B5C9| db $44 ; Repeat word
|13B5CA| dw $1F02
|13B5CC| db $05 ; Raw block
|13B5CD| db $0F, $02, $0F, $00, $0D, $02
|13B5D3| db $83 ; Copy past
|13B5D4| dw $0204
|13B5D6| db $27 ; Repeat byte
|13B5D7| db $F8
|13B5D8| db $09 ; Raw block
|13B5D9| db $DA, $FB, $A5, $66, $DB, $FC, $E3, $DC
|13B5E1| db $FF, $C0
|13B5E3| db $45 ; Repeat word
|13B5E4| dw $00FF
|13B5E6| db $05 ; Raw block
|13B5E7| db $C4, $19, $C1, $C3, $CF, $1F
|13B5ED| db $22 ; Repeat byte
|13B5EE| db $FF
|13B5EF| db $4E ; Repeat word
|13B5F0| dw $FF00
|13B5F2| db $27 ; Repeat byte
|13B5F3| db $FF
|13B5F4| db $03 ; Raw block
|13B5F5| db $FE, $01, $A0, $5F
|13B5F9| db $43 ; Repeat word
|13B5FA| dw $00FF
|13B5FC| db $01 ; Raw block
|13B5FD| db $1B, $E4
|13B5FF| db $44 ; Repeat word
|13B600| dw $00FF
|13B602| db $28 ; Repeat byte
|13B603| db $00
|13B604| db $05 ; Raw block
|13B605| db $1C, $FF, $00, $FF, $8E, $71
|13B60B| db $48 ; Repeat word
|13B60C| dw $00FF
|13B60E| db $28 ; Repeat byte
|13B60F| db $00
|13B610| db $05 ; Raw block
|13B611| db $F0, $FF, $6F, $F0, $3F, $C0
|13B617| db $83 ; Copy past
|13B618| dw $0126
|13B61A| db $04 ; Raw block
|13B61B| db $D0, $2F, $FE, $01, $FF
|13B620| db $28 ; Repeat byte
|13B621| db $00
|13B622| db $01 ; Raw block
|13B623| db $1F, $E0
|13B625| db $43 ; Repeat word
|13B626| dw $00FF
|13B628| db $08 ; Raw block
|13B629| db $83, $7C, $B8, $7F, $C7, $F8, $1F, $E0
|13B631| db $FF
|13B632| db $28 ; Repeat byte
|13B633| db $00
|13B634| db $03 ; Raw block
|13B635| db $05, $FA, $02, $FD
|13B639| db $45 ; Repeat word
|13B63A| dw $FE01
|13B63C| db $E0, $22 ; EXT Raw block
|13B63E| db $03, $FE, $27, $FC, $FF, $80, $EA, $F5
|13B646| db $FA, $F8, $F8, $FA, $F4, $80, $F9, $26
|13B64E| db $57, $98, $E3, $61, $E9, $1A, $6F, $85
|13B656| db $7E, $B1, $F3, $AC, $34, $CF, $00, $21
|13B65E| db $1E, $25, $30
|13B661| db $22 ; Repeat byte
|13B662| db $00
|13B663| db $45 ; Repeat word
|13B664| dw $7F80
|13B666| db $1A ; Raw block
|13B667| db $81, $7E, $87, $78, $DC, $23, $F0, $0F
|13B66F| db $C0, $3F, $7F, $7E, $79, $66, $58, $23
|13B677| db $0C, $33, $01, $FE, $1F, $E0, $7F, $80
|13B67F| db $C1, $3E, $19
|13B682| db $46 ; Repeat word
|13B683| dw $09FE
|13B685| db $07 ; Raw block
|13B686| db $9E, $60, $80, $20, $C0, $22, $E2, $E2
|13B68E| db $4E ; Repeat word
|13B68F| dw $7F80
|13B691| db $22 ; Repeat byte
|13B692| db $7F
|13B693| db $05 ; Raw block
|13B694| db $6F, $4F, $4F, $5F, $73, $7B
|13B69A| db $4F ; Repeat word
|13B69B| dw $FE09
|13B69D| db $27 ; Repeat byte
|13B69E| db $E2
|13B69F| db $83 ; Copy past
|13B6A0| dw $0078
|13B6A2| db $43 ; Repeat word
|13B6A3| dw $00FF
|13B6A5| db $00 ; Raw block
|13B6A6| db $60
|13B6A7| db $22 ; Repeat byte
|13B6A8| db $00
|13B6A9| db $02 ; Raw block
|13B6AA| db $03, $00, $FF
|13B6AD| db $23 ; Repeat byte
|13B6AE| db $00
|13B6AF| db $24 ; Repeat byte
|13B6B0| db $FF
|13B6B1| db $01 ; Raw block
|13B6B2| db $F3, $0C
|13B6B4| db $45 ; Repeat word
|13B6B5| dw $6C93
|13B6B7| db $01 ; Raw block
|13B6B8| db $9F, $60
|13B6BA| db $45 ; Repeat word
|13B6BB| dw $6C93
|13B6BD| db $00 ; Raw block
|13B6BE| db $09
|13B6BF| db $22 ; Repeat byte
|13B6C0| db $49
|13B6C1| db $83 ; Copy past
|13B6C2| dw $01F4
|13B6C4| db $4F ; Repeat word
|13B6C5| dw $7F80
|13B6C7| db $27 ; Repeat byte
|13B6C8| db $6F
|13B6C9| db $4E ; Repeat word
|13B6CA| dw $FF00
|13B6CC| db $29 ; Repeat byte
|13B6CD| db $FF
|13B6CE| db $08 ; Raw block
|13B6CF| db $FD, $FF, $FA, $FF, $F4, $FF, $E8, $FF
|13B6D7| db $D0
|13B6D8| db $44 ; Repeat word
|13B6D9| dw $80FF
|13B6DB| db $06 ; Raw block
|13B6DC| db $00, $FD, $FB, $F7, $EF, $DF, $BF
|13B6E3| db $3A ; Repeat byte
|13B6E4| db $FF
|13B6E5| db $06 ; Raw block
|13B6E6| db $00, $FF, $AA, $FF, $55, $FF, $AA
|13B6ED| db $27 ; Repeat byte
|13B6EE| db $FF
|13B6EF| db $03 ; Raw block
|13B6F0| db $00, $AA, $55, $AA
|13B6F4| db $26 ; Repeat byte
|13B6F5| db $FF
|13B6F6| db $13 ; Raw block
|13B6F7| db $3F, $7F, $9F, $DF, $E7, $5F, $67, $2E
|13B6FF| db $37, $31, $3E, $FF, $00, $FF, $3F, $1F
|13B707| db $07, $87, $C6, $C1
|13B70B| db $2C ; Repeat byte
|13B70C| db $FF
|13B70D| db $03 ; Raw block
|13B70E| db $3F, $FF, $DF, $7F
|13B712| db $25 ; Repeat byte
|13B713| db $FF
|13B714| db $03 ; Raw block
|13B715| db $3F, $DF, $FF, $5B
|13B719| db $85 ; Copy past
|13B71A| dw $0170
|13B71C| db $47 ; Repeat word
|13B71D| dw $00FF
|13B71F| db $02 ; Raw block
|13B720| db $FB, $FD, $FE
|13B723| db $25 ; Repeat byte
|13B724| db $FF
|13B725| db $02 ; Raw block
|13B726| db $00, $92, $3F
|13B729| db $43 ; Repeat word
|13B72A| dw $2DED
|13B72C| db $E0, $27 ; EXT Raw block
|13B72E| db $EE, $2E, $E7, $27, $DC, $00, $E3, $23
|13B736| db $00, $40, $52, $52, $51, $58, $7F, $5C
|13B73E| db $FF, $00, $B3, $77, $4C, $C4, $CC, $C4
|13B746| db $EC, $E4, $6C, $64, $9F, $04, $63, $67
|13B74E| db $00, $08, $3B, $3B, $1B, $9B, $FB, $98
|13B756| db $4D ; Repeat word
|13B757| dw $7F80
|13B759| db $04 ; Raw block
|13B75A| db $81, $7F, $7F, $7C, $7D
|13B75F| db $22 ; Repeat byte
|13B760| db $7F
|13B761| db $01 ; Raw block
|13B762| db $7E, $7C
|13B764| db $43 ; Repeat word
|13B765| dw $FE01
|13B767| db $4B ; Repeat word
|13B768| dw $FE09
|13B76A| db $01 ; Raw block
|13B76B| db $F2, $F2
|13B76D| db $23 ; Repeat byte
|13B76E| db $E2
|13B76F| db $01 ; Raw block
|13B770| db $E0, $E0
|13B772| db $43 ; Repeat word
|13B773| dw $FE09
|13B775| db $E0, $26 ; EXT Raw block
|13B777| db $05, $F6, $13, $F2, $2D, $EE, $5D, $DE
|13B77F| db $BD, $BE, $7D, $7E, $E0, $E0, $E8, $CC
|13B787| db $90, $22, $42, $82, $54, $76, $B3, $B6
|13B78F| db $CD, $48, $FD, $33, $37, $C8, $35, $FA
|13B797| db $8E, $73, $F1, $8D, $89, $49, $33
|13B79E| db $23 ; Repeat byte
|13B79F| db $00
|13B7A0| db $02 ; Raw block
|13B7A1| db $02, $FF, $00
|13B7A4| db $45 ; Repeat word
|13B7A5| dw $EF10
|13B7A7| db $01 ; Raw block
|13B7A8| db $FF, $00
|13B7AA| db $43 ; Repeat word
|13B7AB| dw $FE01
|13B7AD| db $00 ; Raw block
|13B7AE| db $FF
|13B7AF| db $22 ; Repeat byte
|13B7B0| db $00
|13B7B1| db $08 ; Raw block
|13B7B2| db $EF, $EF, $00, $00, $7E, $00, $FF, $02
|13B7BA| db $17
|13B7BB| db $44 ; Repeat word
|13B7BC| dw $15EA
|13B7BE| db $83 ; Copy past
|13B7BF| dw $012A
|13B7C1| db $02 ; Raw block
|13B7C2| db $03, $FC, $FF
|13B7C5| db $22 ; Repeat byte
|13B7C6| db $00
|13B7C7| db $05 ; Raw block
|13B7C8| db $E8, $EA, $00, $02, $7C, $00
|13B7CE| db $43 ; Repeat word
|13B7CF| dw $FF00
|13B7D1| db $E0, $35 ; EXT Raw block
|13B7D3| db $80, $7F, $40, $BF, $20, $DF, $10, $EF
|13B7DB| db $1B, $E4, $24, $DB, $FF, $FF, $7F, $3F
|13B7E3| db $9F, $EF, $E4, $DB, $60, $9F, $90, $6F
|13B7EB| db $10, $EF, $38, $E7, $64, $DB, $C2, $BD
|13B7F3| db $83, $7C, $C3, $3C, $8F, $67, $E7, $E7
|13B7FB| db $C3, $9D, $3C, $3C, $42, $BD, $E4, $1B
|13B803| db $98, $67, $18, $E7, $14, $EB
|13B809| db $43 ; Repeat word
|13B80A| dw $ED12
|13B80C| db $09 ; Raw block
|13B80D| db $1C, $E3, $BD, $1A, $65, $E3, $E9, $ED
|13B815| db $EC, $E1
|13B817| db $2A ; Repeat byte
|13B818| db $FF
|13B819| db $04 ; Raw block
|13B81A| db $1F, $FF, $3F, $FF, $51
|13B81F| db $24 ; Repeat byte
|13B820| db $FF
|13B821| db $04 ; Raw block
|13B822| db $1F, $3F, $FF, $FF, $EA
|13B827| db $2D ; Repeat byte
|13B828| db $FF
|13B829| db $00 ; Raw block
|13B82A| db $EA
|13B82B| db $26 ; Repeat byte
|13B82C| db $FF
|13B82D| db $05 ; Raw block
|13B82E| db $EF, $11, $F7, $C8, $FF, $E7
|13B834| db $28 ; Repeat byte
|13B835| db $FF
|13B836| db $03 ; Raw block
|13B837| db $47, $01, $C0, $E7
|13B83B| db $23 ; Repeat byte
|13B83C| db $FF
|13B83D| db $00 ; Raw block
|13B83E| db $47
|13B83F| db $22 ; Repeat byte
|13B840| db $FF
|13B841| db $00 ; Raw block
|13B842| db $3F
|13B843| db $22 ; Repeat byte
|13B844| db $FF
|13B845| db $00 ; Raw block
|13B846| db $F9
|13B847| db $43 ; Repeat word
|13B848| dw $FEFF
|13B84A| db $22 ; Repeat byte
|13B84B| db $FF
|13B84C| db $0C ; Raw block
|13B84D| db $33, $FF, $3F, $FF, $F9, $FE, $FE, $FF
|13B855| db $33, $FF, $87, $FF, $F1
|13B85A| db $23 ; Repeat byte
|13B85B| db $FF
|13B85C| db $03 ; Raw block
|13B85D| db $CF, $33, $BF, $5F
|13B861| db $23 ; Repeat byte
|13B862| db $FF
|13B863| db $05 ; Raw block
|13B864| db $87, $F1, $FF, $FF, $03, $1F
|13B86A| db $22 ; Repeat byte
|13B86B| db $FF
|13B86C| db $16 ; Raw block
|13B86D| db $00, $FF, $07, $7F, $9F, $75, $BF, $78
|13B875| db $9F, $CC, $3F, $E4, $1B, $F8, $E7, $00
|13B87D| db $07, $1F, $3F, $1F, $0F, $00, $E0
|13B884| db $24 ; Repeat byte
|13B885| db $FF
|13B886| db $04 ; Raw block
|13B887| db $AF, $FF, $5F, $FF, $15
|13B88C| db $87 ; Copy past
|13B88D| dw $0172
|13B88F| db $01 ; Raw block
|13B890| db $AF, $FF
|13B892| db $62 ; Increment fill
|13B893| db $FD
|13B894| db $00 ; Raw block
|13B895| db $FF
|13B896| db $FF ; End of GFX 36

;===================================================================================================

GFX_37:
|13B897| db $E0, $43 ; EXT Raw block
|13B899| db $FF, $00, $E9, $1F, $D0, $31, $A4, $64
|13B8A1| db $8B, $4F, $94, $5E, $8C, $5C, $8C, $4D
|13B8A9| db $00, $00, $0E, $1B, $30, $21, $23, $32
|13B8B1| db $FF, $00, $F7, $F8, $0B, $EC, $8D, $BE
|13B8B9| db $C5, $D6, $75, $76, $15, $36, $85, $96
|13B8C1| db $00, $00, $10, $40, $28, $88, $C8, $68
|13B8C9| db $A6, $67, $81, $61, $80, $74, $A2, $5E
|13B8D1| db $B0, $5F, $F2, $1F, $E3, $1F, $F8, $07
|13B8D9| db $18, $1E, $0B, $01
|13B8DD| db $23 ; Repeat byte
|13B8DE| db $00
|13B8DF| db $43 ; Repeat word
|13B8E0| dw $5FF7
|13B8E2| db $1F ; Raw block
|13B8E3| db $F3, $5B, $F4, $5C, $B3, $5F, $B8, $6F
|13B8EB| db $DF, $37, $AF, $58, $20, $20, $24, $23
|13B8F3| db $20, $10, $08, $07, $E0, $7F, $DF, $70
|13B8FB| db $BF, $67, $F8, $4F, $F0, $5F, $F0, $5C
|13B903| db $43 ; Repeat word
|13B904| dw $5BF3
|13B906| db $E0, $21 ; EXT Raw block
|13B908| db $00, $0F, $18, $30, $20, $23, $24, $24
|13B910| db $FF, $42, $F5, $76, $DB, $72, $FB, $52
|13B918| db $F9, $51, $F8, $50, $B4, $50, $6A, $18
|13B920| db $3C, $08, $0C, $0C, $0E, $0F, $0F, $07
|13B928| db $50, $D1
|13B92A| db $43 ; Repeat word
|13B92B| dw $D050
|13B92D| db $E0, $29 ; EXT Raw block
|13B92F| db $69, $E9, $37, $F7, $DB, $3F, $FF, $0F
|13B937| db $FF, $07, $3E, $3F, $3F, $1E, $0D, $03
|13B93F| db $00, $F8, $00, $07, $00, $87, $45, $CF
|13B947| db $C0, $FE, $BE, $B0, $3C, $33, $F7, $E8
|13B94F| db $FF, $F0, $F8, $78, $30, $C1, $E1, $E0
|13B957| db $00, $0F
|13B959| db $43 ; Repeat word
|13B95A| dw $7C5B
|13B95C| db $01 ; Raw block
|13B95D| db $59, $7E
|13B95F| db $43 ; Repeat word
|13B960| dw $BEAD
|13B962| db $01 ; Raw block
|13B963| db $69, $7E
|13B965| db $43 ; Repeat word
|13B966| dw $7C5B
|13B968| db $22 ; Repeat byte
|13B969| db $80
|13B96A| db $01 ; Raw block
|13B96B| db $40, $40
|13B96D| db $22 ; Repeat byte
|13B96E| db $80
|13B96F| db $0B ; Raw block
|13B970| db $13, $00, $3F, $13, $60, $28, $68, $38
|13B978| db $7F, $28, $78, $00
|13B97C| db $43 ; Repeat word
|13B97D| dw $08F8
|13B97F| db $E0, $27 ; EXT Raw block
|13B981| db $00, $00, $17, $07, $00, $47, $C7, $C7
|13B989| db $FE, $7F, $FD, $BF, $FB, $DF, $F7, $EF
|13B991| db $EF, $F7, $DF, $FB, $BF, $FD, $7F, $FE
|13B999| db $FE, $FD, $FB, $F7, $EF, $DF, $BF, $7F
|13B9A1| db $AF, $1F, $B0, $50, $F0, $0F, $FF, $00
|13B9A9| db $87 ; Copy past
|13B9AA| dw $0108
|13B9AC| db $05 ; Raw block
|13B9AD| db $40, $0F, $00, $00, $40, $0F
|13B9B3| db $29 ; Repeat byte
|13B9B4| db $00
|13B9B5| db $07 ; Raw block
|13B9B6| db $07, $00, $0C, $04, $1B, $08, $1F, $08
|13B9BE| db $24 ; Repeat byte
|13B9BF| db $00
|13B9C0| db $0E ; Raw block
|13B9C1| db $03, $04, $00, $3E, $00, $6B, $00, $D1
|13B9C9| db $02, $A7, $04, $CD, $0B, $1B, $16
|13B9D0| db $43 ; Repeat word
|13B9D1| dw $04FD
|13B9D3| db $07 ; Raw block
|13B9D4| db $00, $1C, $3D, $78, $70, $E1, $03, $03
|13B9DC| db $97 ; Copy past
|13B9DD| dw $00F0
|13B9DF| db $97 ; Copy past
|13B9E0| dw $00F0
|13B9E2| db $09 ; Raw block
|13B9E3| db $58, $B8, $6B, $9B, $EB, $18, $AA, $59
|13B9EB| db $AA, $19
|13B9ED| db $43 ; Repeat word
|13B9EE| dw $1BA9
|13B9F0| db $02 ; Raw block
|13B9F1| db $89, $3B, $07
|13B9F4| db $22 ; Repeat byte
|13B9F5| db $04
|13B9F6| db $23 ; Repeat byte
|13B9F7| db $44
|13B9F8| db $13 ; Raw block
|13B9F9| db $45, $EE, $05, $E6, $09, $0E, $65, $7E
|13BA01| db $01, $FE, $31, $FE, $27, $F8, $07, $F8
|13BA09| db $10, $18, $F0, $80
|13BA0D| db $23 ; Repeat byte
|13BA0E| db $00
|13BA0F| db $0B ; Raw block
|13BA10| db $E0, $FF, $DF, $F0, $BF, $E7, $78, $CF
|13BA18| db $70, $DF, $F0, $5C
|13BA1C| db $43 ; Repeat word
|13BA1D| dw $5BF3
|13BA1F| db $02 ; Raw block
|13BA20| db $E0, $CF, $98
|13BA23| db $84 ; Copy past
|13BA24| dw $0073
|13BA26| db $1A ; Raw block
|13BA27| db $B8, $47, $BF, $58, $AE, $5C, $D2, $2C
|13BA2F| db $EE, $11, $FB, $44, $FD, $C3, $FF, $E8
|13BA37| db $00, $00, $01, $01, $00, $40, $C0, $E8
|13BA3F| db $F3, $5B, $E3
|13BA42| db $46 ; Repeat word
|13BA43| dw $D34B
|13BA45| db $01 ; Raw block
|13BA46| db $E3, $4B
|13BA48| db $43 ; Repeat word
|13BA49| dw $5BF3
|13BA4B| db $00 ; Raw block
|13BA4C| db $24
|13BA4D| db $24 ; Repeat byte
|13BA4E| db $34
|13BA4F| db $13 ; Raw block
|13BA50| db $24, $24, $25, $1C, $22, $1E, $11, $0F
|13BA58| db $38, $07, $4C, $33, $87, $78, $91, $7E
|13BA60| db $BF, $60, $03, $01
|13BA64| db $25 ; Repeat byte
|13BA65| db $00
|13BA66| db $E0, $2F ; EXT Raw block
|13BA68| db $F5, $72, $CB, $07, $F6, $4E, $BC, $6D
|13BA70| db $99, $6B, $52, $26, $78, $0A, $74, $0C
|13BA78| db $0C, $78, $31, $02, $04, $09, $05, $03
|13BA80| db $E7, $04, $35, $D1, $95, $E0, $4F, $70
|13BA88| db $25, $BA, $16, $1B, $04, $A9, $06, $2A
|13BA90| db $1B, $0E, $0A, $80, $40, $E0, $52, $D1
|13BA98| db $97 ; Copy past
|13BA99| dw $00F0
|13BA9B| db $09 ; Raw block
|13BA9C| db $DF, $2F, $DC, $23, $7E, $39, $63, $3C
|13BAA4| db $E2, $1D
|13BAA6| db $43 ; Repeat word
|13BAA7| dw $00FF
|13BAA9| db $08 ; Raw block
|13BAAA| db $7F, $00, $80, $80, $00, $00, $80, $C0
|13BAB2| db $FF
|13BAB3| db $98 ; Copy past
|13BAB4| dw $0167
|13BAB6| db $01 ; Raw block
|13BAB7| db $FF, $FF
|13BAB9| db $22 ; Repeat byte
|13BABA| db $00
|13BABB| db $04 ; Raw block
|13BABC| db $FF, $FF, $00, $FF, $FF
|13BAC1| db $22 ; Repeat byte
|13BAC2| db $00
|13BAC3| db $83 ; Copy past
|13BAC4| dw $0288
|13BAC6| db $00 ; Raw block
|13BAC7| db $FF
|13BAC8| db $22 ; Repeat byte
|13BAC9| db $00
|13BACA| db $16 ; Raw block
|13BACB| db $FF, $00, $00, $1C, $00, $1B, $00, $14
|13BAD3| db $00, $1B, $03, $1E, $07, $16, $07, $14
|13BADB| db $07, $74, $07, $03, $07, $0F, $0C
|13BAE2| db $23 ; Repeat byte
|13BAE3| db $08
|13BAE4| db $E0, $23 ; EXT Raw block
|13BAE6| db $1A, $16, $CD, $0B, $C6, $85, $23, $80
|13BAEE| db $5E, $C1, $FE, $7C, $BE, $7C, $DF, $3D
|13BAF6| db $E1, $F0, $78, $7C, $3C, $01, $01, $00
|13BAFE| db $2A, $D5, $7F, $80, $FF, $00, $F0, $0F
|13BB06| db $C0, $3F, $80, $7F
|13BB0A| db $43 ; Repeat word
|13BB0B| dw $FF00
|13BB0D| db $01 ; Raw block
|13BB0E| db $2A, $7F
|13BB10| db $25 ; Repeat byte
|13BB11| db $FF
|13BB12| db $4F ; Repeat word
|13BB13| dw $3FDF
|13BB15| db $27 ; Repeat byte
|13BB16| db $00
|13BB17| db $05 ; Raw block
|13BB18| db $9D, $1B, $94, $52, $95, $76
|13BB1E| db $43 ; Repeat word
|13BB1F| dw $57B1
|13BB21| db $08 ; Raw block
|13BB22| db $70, $17, $23, $14, $1E, $00, $64, $2D
|13BB2A| db $09
|13BB2B| db $23 ; Repeat byte
|13BB2C| db $08
|13BB2D| db $0F ; Raw block
|13BB2E| db $00, $FF, $00, $80, $7F, $BE, $7F, $9B
|13BB36| db $5F, $91, $5F, $80, $7F, $FF, $00, $FF
|13BB3E| db $23 ; Repeat byte
|13BB3F| db $00
|13BB40| db $01 ; Raw block
|13BB41| db $20, $20
|13BB43| db $22 ; Repeat byte
|13BB44| db $00
|13BB45| db $45 ; Repeat word
|13BB46| dw $7EC5
|13BB48| db $00 ; Raw block
|13BB49| db $A7
|13BB4A| db $48 ; Repeat word
|13BB4B| dw $A37E
|13BB4D| db $27 ; Repeat byte
|13BB4E| db $00
|13BB4F| db $0E ; Raw block
|13BB50| db $E5, $7E, $ED, $7E, $BD, $7E, $B1, $7E
|13BB58| db $A1, $7E, $8F, $70, $9F, $60, $FF
|13BB5F| db $28 ; Repeat byte
|13BB60| db $00
|13BB61| db $14 ; Raw block
|13BB62| db $E1, $49, $A8, $4C, $B4, $67, $DB, $33
|13BB6A| db $EF, $18, $F7, $0F, $98, $67, $EF, $70
|13BB72| db $36, $33, $18, $0C, $07
|13BB77| db $22 ; Repeat byte
|13BB78| db $00
|13BB79| db $0F ; Raw block
|13BB7A| db $E1, $5E, $D1, $3E, $B1, $7E, $F1, $7E
|13BB82| db $EF, $70, $C9, $7E, $94, $77, $BA, $7B
|13BB8A| db $25 ; Repeat byte
|13BB8B| db $00
|13BB8C| db $0E ; Raw block
|13BB8D| db $08, $04, $5A, $26, $4D, $33, $2E, $11
|13BB95| db $1B, $04, $09, $06, $05, $02, $03
|13BB9C| db $43 ; Repeat word
|13BB9D| dw $0100
|13BB9F| db $26 ; Repeat byte
|13BBA0| db $00
|13BBA1| db $13 ; Raw block
|13BBA2| db $05, $EB, $46, $69, $47, $68, $14, $1B
|13BBAA| db $F4, $FB, $07, $F8, $04, $F8, $FC, $00
|13BBB2| db $10, $90, $90, $E0
|13BBB6| db $23 ; Repeat byte
|13BBB7| db $00
|13BBB8| db $1C ; Raw block
|13BBB9| db $07, $00, $FC, $04, $00, $9C, $00, $A2
|13BBC1| db $40, $E1, $00, $71, $13, $0C, $01, $10
|13BBC9| db $00, $03, $63, $5D, $1E, $8E, $E0, $EE
|13BBD1| db $33, $00, $CF, $03, $00
|13BBD6| db $43 ; Repeat word
|13BBD7| dw $0848
|13BBD9| db $0D ; Raw block
|13BBDA| db $FF, $00, $18, $08, $18, $28, $38, $00
|13BBE2| db $30, $B7, $B7, $00, $E7, $E7
|13BBE8| db $98 ; Copy past
|13BBE9| dw $00EF
|13BBEB| db $E0, $24 ; EXT Raw block
|13BBED| db $CB, $CB, $A1, $A1, $DB, $DB, $D9, $D9
|13BBF5| db $C3, $C3, $89, $89, $D7, $D7, $FF, $FF
|13BBFD| db $F7, $DF, $A5, $A7, $BD, $F7, $EB, $FF
|13BC05| db $65, $16, $67, $14, $66, $04, $7E, $0C
|13BC0D| db $5A, $1C, $76, $38, $3C
|13BC12| db $22 ; Repeat byte
|13BC13| db $00
|13BC14| db $04 ; Raw block
|13BC15| db $28, $28, $38, $30, $20
|13BC1A| db $22 ; Repeat byte
|13BC1B| db $00
|13BC1C| db $0F ; Raw block
|13BC1D| db $E3, $1D, $3F, $01, $7E, $01, $E7, $04
|13BC25| db $BE, $55, $F3, $5D, $FE, $42, $A7, $18
|13BC2D| db $22 ; Repeat byte
|13BC2E| db $00
|13BC2F| db $08 ; Raw block
|13BC30| db $18, $00, $00, $01, $40, $01, $FE, $03
|13BC38| db $FC
|13BC39| db $43 ; Repeat word
|13BC3A| dw $FD03
|13BC3C| db $07 ; Raw block
|13BC3D| db $06, $F8, $0E, $F2, $3D, $C5, $F3, $13
|13BC45| db $23 ; Repeat byte
|13BC46| db $00
|13BC47| db $03 ; Raw block
|13BC48| db $01, $01, $02, $0C
|13BC4C| db $47 ; Repeat word
|13BC4D| dw $FF00
|13BC4F| db $07 ; Raw block
|13BC50| db $07, $F8, $1F, $E0, $78, $88, $E7, $27
|13BC58| db $25 ; Repeat byte
|13BC59| db $00
|13BC5A| db $0D ; Raw block
|13BC5B| db $07, $18, $03, $00, $0D, $03, $14, $0C
|13BC63| db $20, $10, $48, $20, $71, $21
|13BC69| db $43 ; Repeat word
|13BC6A| dw $43E3
|13BC6C| db $1A ; Raw block
|13BC6D| db $00, $00, $03, $0F, $1F, $1E, $3C, $3C
|13BC75| db $FF, $00, $FB, $FF, $00, $04, $0B, $0F
|13BC7D| db $7B, $7F, $DF, $E0, $AF, $DF, $58, $B8
|13BC85| db $00, $00, $FB
|13BC88| db $83 ; Copy past
|13BC89| dw $01AA
|13BC8B| db $06 ; Raw block
|13BC8C| db $07, $FF, $00, $FD, $FF, $00, $02
|13BC93| db $43 ; Repeat word
|13BC94| dw $FFFD
|13BC96| db $08 ; Raw block
|13BC97| db $FF, $00, $F7, $FF, $00, $08, $00, $00
|13BC9F| db $FD
|13BCA0| db $23 ; Repeat byte
|13BCA1| db $00
|13BCA2| db $08 ; Raw block
|13BCA3| db $F7, $13, $AE, $93, $4E, $CB, $36, $FB
|13BCAB| db $06
|13BCAC| db $43 ; Repeat word
|13BCAD| dw $0EF3
|13BCAF| db $05 ; Raw block
|13BCB0| db $E3, $1C, $FD, $02, $40, $20
|13BCB6| db $25 ; Repeat byte
|13BCB7| db $00
|13BCB8| db $0F ; Raw block
|13BCB9| db $82, $7D, $83, $7E, $C1, $3F, $60, $9F
|13BCC1| db $B0, $CF, $DF, $E0, $EF, $F0, $F0, $FF
|13BCC9| db $22 ; Repeat byte
|13BCCA| db $00
|13BCCB| db $04 ; Raw block
|13BCCC| db $80, $C0, $E0, $F0, $FF
|13BCD1| db $43 ; Repeat word
|13BCD2| dw $7C5B
|13BCD4| db $43 ; Repeat word
|13BCD5| dw $7E59
|13BCD7| db $43 ; Repeat word
|13BCD8| dw $FEDD
|13BCDA| db $03 ; Raw block
|13BCDB| db $99, $FE, $39, $FE
|13BCDF| db $23 ; Repeat byte
|13BCE0| db $80
|13BCE1| db $23 ; Repeat byte
|13BCE2| db $00
|13BCE3| db $03 ; Raw block
|13BCE4| db $BF, $4C, $B3, $7F
|13BCE8| db $43 ; Repeat word
|13BCE9| dw $FF00
|13BCEB| db $07 ; Raw block
|13BCEC| db $FF, $00, $98, $67, $DF, $A8, $FF, $9D
|13BCF4| db $25 ; Repeat byte
|13BCF5| db $00
|13BCF6| db $04 ; Raw block
|13BCF7| db $88, $9D, $FE, $CD, $32
|13BCFC| db $44 ; Repeat word
|13BCFD| dw $02FD
|13BCFF| db $07 ; Raw block
|13BD00| db $FE, $01, $92, $6D, $FF, $90, $FF, $B8
|13BD08| db $25 ; Repeat byte
|13BD09| db $00
|13BD0A| db $0B ; Raw block
|13BD0B| db $90, $B8, $D1, $E0, $3F, $CE, $FF, $00
|13BD13| db $D8, $2F, $FB, $0C
|13BD17| db $43 ; Repeat word
|13BD18| dw $00FF
|13BD1A| db $02 ; Raw block
|13BD1B| db $9E, $00, $0E
|13BD1E| db $23 ; Repeat byte
|13BD1F| db $00
|13BD20| db $0C ; Raw block
|13BD21| db $61, $FF, $9E, $D7, $EF, $78, $87, $FF
|13BD29| db $78, $C2, $7D, $C2, $3D
|13BD2E| db $43 ; Repeat word
|13BD2F| dw $00FF
|13BD31| db $00 ; Raw block
|13BD32| db $7F
|13BD33| db $25 ; Repeat byte
|13BD34| db $00
|13BD35| db $02 ; Raw block
|13BD36| db $80, $FF, $7F
|13BD39| db $83 ; Copy past
|13BD3A| dw $0450
|13BD3C| db $05 ; Raw block
|13BD3D| db $07, $F9, $0F, $F3, $0D, $F5
|13BD43| db $45 ; Repeat word
|13BD44| dw $F30B
|13BD46| db $23 ; Repeat byte
|13BD47| db $00
|13BD48| db $00 ; Raw block
|13BD49| db $02
|13BD4A| db $22 ; Repeat byte
|13BD4B| db $04
|13BD4C| db $E0, $2F ; EXT Raw block
|13BD4E| db $CB, $CB, $E5, $E5, $8D, $8D, $81, $81
|13BD56| db $C5, $C5, $D9, $D9, $D3, $D3, $FF, $FF
|13BD5E| db $F7, $9B, $F3, $FF, $BB, $A7, $FF, $FF
|13BD66| db $80, $80, $BE, $BE, $A3, $A3, $A8, $A8
|13BD6E| db $A3, $A3, $BE, $BE, $80, $80, $FF, $FF
|13BD76| db $7F, $41, $5C, $57, $5C, $41, $7F, $00
|13BD7E| db $97 ; Copy past
|13BD7F| dw $00F0
|13BD81| db $03 ; Raw block
|13BD82| db $7F, $80, $40, $A0
|13BD86| db $45 ; Repeat word
|13BD87| dw $AF4F
|13BD89| db $07 ; Raw block
|13BD8A| db $40, $BF, $7F, $80, $3F, $C0, $00, $1F
|13BD92| db $22 ; Repeat byte
|13BD93| db $10
|13BD94| db $22 ; Repeat byte
|13BD95| db $00
|13BD96| db $43 ; Repeat word
|13BD97| dw $00FF
|13BD99| db $43 ; Repeat word
|13BD9A| dw $0FF0
|13BD9C| db $02 ; Raw block
|13BD9D| db $FF, $00, $E0
|13BDA0| db $44 ; Repeat word
|13BDA1| dw $EF1F
|13BDA3| db $27 ; Repeat byte
|13BDA4| db $00
|13BDA5| db $FF ; End of GFX 37

;===================================================================================================

GFX_38:
|13BDA6| db $17 ; Raw block
|13BDA7| db $FE, $7F, $FD, $BF, $FB, $DF, $F7, $EF
|13BDAF| db $EF, $F7, $DF, $FB, $BF, $FD, $7F, $FE
|13BDB7| db $FE, $FD, $FB, $F7, $EF, $DF, $BF, $7F
|13BDBF| db $97 ; Copy past
|13BDC0| dw $0000
|13BDC2| db $97 ; Copy past
|13BDC3| dw $0000
|13BDC5| db $4B ; Repeat word
|13BDC6| dw $63AB
|13BDC8| db $03 ; Raw block
|13BDC9| db $A0, $5F, $CB, $23
|13BDCD| db $25 ; Repeat byte
|13BDCE| db $1C
|13BDCF| db $01 ; Raw block
|13BDD0| db $00, $1C
|13BDD2| db $47 ; Repeat word
|13BDD3| dw $61A9
|13BDD5| db $43 ; Repeat word
|13BDD6| dw $60A8
|13BDD8| db $03 ; Raw block
|13BDD9| db $A0, $5F, $E8, $20
|13BDDD| db $23 ; Repeat byte
|13BDDE| db $1E
|13BDDF| db $18 ; Raw block
|13BDE0| db $1F, $1F, $00, $1F, $CF, $38, $A0, $18
|13BDE8| db $D0, $4F, $EF, $60, $90, $70, $98, $7F
|13BDF0| db $89, $7E, $83, $7D, $00, $47, $20, $10
|13BDF8| db $0F
|13BDF9| db $22 ; Repeat byte
|13BDFA| db $00
|13BDFB| db $25 ; Repeat byte
|13BDFC| db $FF
|13BDFD| db $09 ; Raw block
|13BDFE| db $3C, $3C, $00, $00, $C3, $C3, $FF, $FF
|13BE06| db $3C, $FF
|13BE08| db $22 ; Repeat byte
|13BE09| db $00
|13BE0A| db $14 ; Raw block
|13BE0B| db $C3, $FF, $3C, $00, $00, $FF, $00, $1C
|13BE13| db $E3, $E3, $FF, $3E, $FF, $C1, $FF, $81
|13BE1B| db $81, $7E, $7E, $FF, $FF
|13BE20| db $24 ; Repeat byte
|13BE21| db $00
|13BE22| db $02 ; Raw block
|13BE23| db $7E, $81, $00
|13BE26| db $48 ; Repeat word
|13BE27| dw $DFA0
|13BE29| db $06 ; Raw block
|13BE2A| db $DE, $A0, $D9, $20, $DC, $E0, $9F
|13BE31| db $23 ; Repeat byte
|13BE32| db $00
|13BE33| db $1B ; Raw block
|13BE34| db $01, $06, $03, $00, $00, $FE, $00, $FF
|13BE3C| db $00, $9E, $00, $0C, $00, $64, $00, $DE
|13BE44| db $00, $3F, $00, $FE, $01, $00, $61, $F3
|13BE4C| db $9B, $21, $C0, $01
|13BE50| db $F0, $2F ; EXT Copy past
|13BE52| dw $0000
|13BE54| db $43 ; Repeat word
|13BE55| dw $FF00
|13BE57| db $0B ; Raw block
|13BE58| db $06, $F9, $07, $F8, $3F, $C0, $1F, $E0
|13BE60| db $0F, $F0, $07, $F8
|13BE64| db $24 ; Repeat byte
|13BE65| db $FF
|13BE66| db $08 ; Raw block
|13BE67| db $F3, $F8, $FC, $30, $CF, $32, $CD, $77
|13BE6F| db $88
|13BE70| db $45 ; Repeat word
|13BE71| dw $00FF
|13BE73| db $02 ; Raw block
|13BE74| db $9C, $63, $23
|13BE77| db $23 ; Repeat byte
|13BE78| db $FF
|13BE79| db $1C ; Raw block
|13BE7A| db $DD, $9C, $08, $00, $23, $FA, $FA, $34
|13BE82| db $34, $D4, $D5, $90, $93, $20, $3F, $CE
|13BE8A| db $FF, $12, $F3, $2E, $ED, $07, $CF, $EE
|13BE92| db $EC, $C0, $00, $0C, $1C
|13BE97| db $F0, $47 ; EXT Copy past
|13BE99| dw $0000
|13BE9B| db $06 ; Raw block
|13BE9C| db $FF, $7F, $A1, $5F, $60, $83, $A3
|13BEA3| db $48 ; Repeat word
|13BEA4| dw $E343
|13BEA6| db $01 ; Raw block
|13BEA7| db $00, $00
|13BEA9| db $25 ; Repeat byte
|13BEAA| db $3C
|13BEAB| db $43 ; Repeat word
|13BEAC| dw $63AB
|13BEAE| db $02 ; Raw block
|13BEAF| db $AA, $63, $AB
|13BEB2| db $48 ; Repeat word
|13BEB3| dw $A962
|13BEB5| db $27 ; Repeat byte
|13BEB6| db $1C
|13BEB7| db $E0, $2F ; EXT Raw block
|13BEB9| db $1F, $E0, $6C, $9C, $D7, $31, $AE, $6E
|13BEC1| db $54, $DC, $2A, $38, $1B, $2E, $9D, $E3
|13BEC9| db $00, $03, $0E, $11, $23, $C7, $C1, $00
|13BED1| db $C0, $F1, $80, $E0, $00, $FF, $FF, $F8
|13BED9| db $8C, $70, $FD, $81, $75, $79, $15, $19
|13BEE1| db $0E, $1F, $00, $00, $03, $06, $86, $E6
|13BEE9| db $97 ; Copy past
|13BEEA| dw $0000
|13BEEC| db $25 ; Repeat byte
|13BEED| db $FF
|13BEEE| db $09 ; Raw block
|13BEEF| db $FE, $FE, $FC, $FC, $F9, $F9, $F3, $F3
|13BEF7| db $E6, $E7
|13BEF9| db $22 ; Repeat byte
|13BEFA| db $00
|13BEFB| db $04 ; Raw block
|13BEFC| db $01, $03, $06, $0C, $18
|13BF01| db $4B ; Repeat word
|13BF02| dw $DFA0
|13BF04| db $03 ; Raw block
|13BF05| db $10, $EF, $8F, $F0
|13BF09| db $27 ; Repeat byte
|13BF0A| db $00
|13BF0B| db $14 ; Raw block
|13BF0C| db $01, $FF, $E3, $1C, $FC, $03, $B5, $07
|13BF14| db $FB, $72, $FD, $24, $F5, $0C, $85, $7C
|13BF1C| db $00, $00, $40, $68, $05
|13BF21| db $22 ; Repeat byte
|13BF22| db $03
|13BF23| db $02 ; Raw block
|13BF24| db $00, $FF, $C3
|13BF27| db $22 ; Repeat byte
|13BF28| db $FF
|13BF29| db $09 ; Raw block
|13BF2A| db $C3, $FF, $00, $FF, $18, $E7, $FF, $00
|13BF32| db $E7, $18
|13BF34| db $27 ; Repeat byte
|13BF35| db $00
|13BF36| db $02 ; Raw block
|13BF37| db $FC, $FF, $E0
|13BF3A| db $44 ; Repeat word
|13BF3B| dw $C0FF
|13BF3D| db $45 ; Repeat word
|13BF3E| dw $FF80
|13BF40| db $05 ; Raw block
|13BF41| db $00, $FF, $FC, $E0, $C0, $C0
|13BF47| db $22 ; Repeat byte
|13BF48| db $80
|13BF49| db $00 ; Raw block
|13BF4A| db $00
|13BF4B| db $43 ; Repeat word
|13BF4C| dw $817E
|13BF4E| db $19 ; Raw block
|13BF4F| db $3E, $C1, $BD, $43, $F9, $07, $F3, $0F
|13BF57| db $E7, $1F, $1F, $FF, $FC, $FC, $CC, $E1
|13BF5F| db $E1, $63, $07, $1F, $7E, $81, $1D, $E3
|13BF67| db $0E, $F1
|13BF69| db $83 ; Copy past
|13BF6A| dw $02A2
|13BF6C| db $E0, $25 ; EXT Raw block
|13BF6E| db $1C, $E3, $1F, $E1, $3E, $C1, $F0, $F9
|13BF76| db $FC, $FC, $F4, $F8, $FD, $FC, $3E, $F9
|13BF7E| db $03, $FF, $05, $FD, $08, $79, $09, $7F
|13BF86| db $05, $7C, $34, $D3, $D0, $4F, $18, $00
|13BF8E| db $02, $86, $80, $83, $0F, $3F
|13BF94| db $97 ; Copy past
|13BF95| dw $0000
|13BF97| db $17 ; Raw block
|13BF98| db $B7, $4F, $EF, $30, $D0, $5F, $A0, $68
|13BFA0| db $CF, $38, $AF, $1F, $D0, $4F, $AF, $60
|13BFA8| db $00, $00, $20, $17, $07, $40, $20, $10
|13BFB0| db $97 ; Copy past
|13BFB1| dw $0000
|13BFB3| db $E0, $20 ; EXT Raw block
|13BFB5| db $E6, $6E, $8B, $8F, $09, $09, $9C, $10
|13BFBD| db $B3, $2D, $FF, $AD, $6B, $59, $BD, $23
|13BFC5| db $11, $70, $F6, $EF, $D2, $52, $A6, $DC
|13BFCD| db $B7, $72, $A9, $79, $A5, $7D, $A2, $7E
|13BFD5| db $A3
|13BFD6| db $44 ; Repeat word
|13BFD7| dw $A17F
|13BFD9| db $05 ; Raw block
|13BFDA| db $A0, $7F, $0C, $06, $02, $01
|13BFE0| db $23 ; Repeat byte
|13BFE1| db $00
|13BFE2| db $E0, $2B ; EXT Raw block
|13BFE4| db $6A, $B5, $91, $6A, $D7, $A2, $BB, $CA
|13BFEC| db $5F, $64, $AE, $B1, $D3, $DC, $2D, $EE
|13BFF4| db $00, $04, $0C, $04, $80, $40, $20, $10
|13BFFC| db $F5, $19, $15, $19, $F1, $F9, $0D, $F5
|13C004| db $0E, $F7, $FE, $07, $8B, $77, $34, $FB
|13C00C| db $E6, $E6, $06, $02
|13C010| db $23 ; Repeat byte
|13C011| db $00
|13C012| db $E0, $28 ; EXT Raw block
|13C014| db $7B, $7B, $8F, $FF, $06, $FF, $1D, $FD
|13C01C| db $34, $F4, $A8, $68, $90, $F1, $E0, $DF
|13C024| db $87, $00, $00, $06, $0F, $1F, $0E, $00
|13C02C| db $E8, $EE, $F1, $FF, $00, $FF, $70, $FF
|13C034| db $09, $8F, $45, $C7, $05, $E7, $00, $FF
|13C03C| db $F1
|13C03D| db $22 ; Repeat byte
|13C03E| db $00
|13C03F| db $17 ; Raw block
|13C040| db $70, $38, $18, $00, $D1, $41, $E8, $60
|13C048| db $B7, $70, $98, $78, $CF, $3F, $E4, $5F
|13C050| db $B4, $6F, $98, $77, $3E, $1F, $0F, $07
|13C058| db $23 ; Repeat byte
|13C059| db $00
|13C05A| db $13 ; Raw block
|13C05B| db $85, $80, $0B, $02, $F7, $06, $0D, $0E
|13C063| db $F9, $FE, $09, $FE, $0B, $FC, $05, $FA
|13C06B| db $7E, $FC, $F8, $F0
|13C06F| db $23 ; Repeat byte
|13C070| db $00
|13C071| db $97 ; Copy past
|13C072| dw $0000
|13C074| db $83 ; Copy past
|13C075| dw $012A
|13C077| db $03 ; Raw block
|13C078| db $1F, $E0, $18, $E7
|13C07C| db $47 ; Repeat word
|13C07D| dw $FF00
|13C07F| db $00 ; Raw block
|13C080| db $F8
|13C081| db $26 ; Repeat byte
|13C082| db $FF
|13C083| db $1B ; Raw block
|13C084| db $8F, $7F, $F7, $0F, $FB, $07, $79, $87
|13C08C| db $FE, $01, $FF, $00, $C7, $38, $0E, $F1
|13C094| db $0F, $07, $F3, $E1, $C0, $FE, $FE, $FC
|13C09C| db $AB, $77, $9C, $63
|13C0A0| db $43 ; Repeat word
|13C0A1| dw $00FF
|13C0A3| db $0B ; Raw block
|13C0A4| db $77, $88, $32, $CD, $30, $CF, $00, $FF
|13C0AC| db $23, $08, $9C, $DD
|13C0B0| db $23 ; Repeat byte
|13C0B1| db $FF
|13C0B2| db $98 ; Copy past
|13C0B3| dw $0198
|13C0B5| db $22 ; Repeat byte
|13C0B6| db $00
|13C0B7| db $0E ; Raw block
|13C0B8| db $3F, $3F, $FF, $80, $BC, $7F, $18, $FE
|13C0C0| db $E0, $FC, $E0, $FB, $00, $FF, $C0
|13C0C7| db $83 ; Copy past
|13C0C8| dw $0239
|13C0CA| db $00 ; Raw block
|13C0CB| db $04
|13C0CC| db $4E ; Repeat word
|13C0CD| dw $00FF
|13C0CF| db $28 ; Repeat byte
|13C0D0| db $00
|13C0D1| db $97 ; Copy past
|13C0D2| dw $0000
|13C0D4| db $E0, $27 ; EXT Raw block
|13C0D6| db $42, $1E, $A1, $80, $51, $C0, $89, $60
|13C0DE| db $03, $F2, $D8, $9A, $17, $AD, $BE, $41
|13C0E6| db $E1, $FF, $7F, $1F, $0D, $E5, $40, $00
|13C0EE| db $A2, $7F, $A3, $7F, $A0, $7F, $41, $BE
|13C0F6| db $23, $DC, $93, $EC, $CF, $F0, $C7, $F8
|13C0FE| db $27 ; Repeat byte
|13C0FF| db $00
|13C100| db $E0, $74 ; EXT Raw block
|13C102| db $17, $F7, $64, $90, $E6, $24, $92, $47
|13C10A| db $2B, $8E, $D7, $9A, $2F, $32, $3B, $26
|13C112| db $08, $0F, $1B, $38, $70, $60, $C0, $C0
|13C11A| db $33, $84, $7C, $07, $7B, $87, $79, $B6
|13C122| db $7B, $85, $86, $7A, $F8, $06, $76, $96
|13C12A| db $78, $80, $30, $00, $00, $01, $01, $09
|13C132| db $E6, $FF, $6E, $7F, $3E, $3F, $3C, $3C
|13C13A| db $58, $58, $01, $31, $50, $5F, $DE, $DF
|13C142| db $80, $C2, $E6, $EF, $EF, $CE, $B0, $3E
|13C14A| db $F0, $FE, $18, $1C, $10, $1C, $14, $BC
|13C152| db $24, $E4, $44, $C4, $82, $86, $81, $87
|13C15A| db $E1, $F3, $E3, $53, $3B, $7B, $F9, $F8
|13C162| db $00, $08, $01, $09, $77, $0B, $87, $0F
|13C16A| db $77, $7F, $E0, $FF, $CF, $F0, $90, $EF
|13C172| db $F7, $F6, $F4, $F0, $80
|13C177| db $23 ; Repeat byte
|13C178| db $00
|13C179| db $04 ; Raw block
|13C17A| db $08, $81, $89, $F3, $CB
|13C17F| db $43 ; Repeat word
|13C180| dw $FFF7
|13C182| db $00 ; Raw block
|13C183| db $00
|13C184| db $83 ; Copy past
|13C185| dw $00B6
|13C187| db $03 ; Raw block
|13C188| db $FF, $F7, $76, $34
|13C18C| db $24 ; Repeat byte
|13C18D| db $00
|13C18E| db $97 ; Copy past
|13C18F| dw $0000
|13C191| db $23 ; Repeat byte
|13C192| db $FF
|13C193| db $02 ; Raw block
|13C194| db $FC, $FF, $F0
|13C197| db $83 ; Copy past
|13C198| dw $028D
|13C19A| db $43 ; Repeat word
|13C19B| dw $00FF
|13C19D| db $22 ; Repeat byte
|13C19E| db $FF
|13C19F| db $03 ; Raw block
|13C1A0| db $FC, $F0, $C0, $80
|13C1A4| db $83 ; Copy past
|13C1A5| dw $0286
|13C1A7| db $00 ; Raw block
|13C1A8| db $F8
|13C1A9| db $44 ; Repeat word
|13C1AA| dw $F0FF
|13C1AC| db $43 ; Repeat word
|13C1AD| dw $FFE0
|13C1AF| db $43 ; Repeat word
|13C1B0| dw $FFC0
|13C1B2| db $07 ; Raw block
|13C1B3| db $FC, $F8, $F0, $F0, $E0, $E0, $C0, $C0
|13C1BB| db $97 ; Copy past
|13C1BC| dw $0000
|13C1BE| db $0B ; Raw block
|13C1BF| db $7F, $80, $70, $8F, $7F, $CF, $90, $B0
|13C1C7| db $4F, $40, $80, $7F
|13C1CB| db $43 ; Repeat word
|13C1CC| dw $FF00
|13C1CE| db $22 ; Repeat byte
|13C1CF| db $00
|13C1D0| db $01 ; Raw block
|13C1D1| db $4F, $BF
|13C1D3| db $22 ; Repeat byte
|13C1D4| db $FF
|13C1D5| db $0B ; Raw block
|13C1D6| db $00, $00, $0F, $00, $11, $01, $20, $00
|13C1DE| db $61, $21, $FF, $3E
|13C1E2| db $43 ; Repeat word
|13C1E3| dw $42E3
|13C1E5| db $07 ; Raw block
|13C1E6| db $00, $00, $0E, $1F, $1E, $00, $3C, $3C
|13C1EE| db $FF ; End of GFX 38

;===================================================================================================

GFX_39:
|13C1EF| db $37 ; Repeat byte
|13C1F0| db $00
|13C1F1| db $02 ; Raw block
|13C1F2| db $FF, $00, $FF
|13C1F5| db $23 ; Repeat byte
|13C1F6| db $00
|13C1F7| db $00 ; Raw block
|13C1F8| db $FF
|13C1F9| db $28 ; Repeat byte
|13C1FA| db $00
|13C1FB| db $01 ; Raw block
|13C1FC| db $FF, $FF
|13C1FE| db $24 ; Repeat byte
|13C1FF| db $00
|13C200| db $08 ; Raw block
|13C201| db $FE, $00, $F9, $02, $04, $01, $02, $F1
|13C209| db $12
|13C20A| db $46 ; Repeat word
|13C20B| dw $0209
|13C20D| db $03 ; Raw block
|13C20E| db $00, $FC, $FE, $0E
|13C212| db $23 ; Repeat byte
|13C213| db $06
|13C214| db $4F ; Repeat word
|13C215| dw $0902
|13C217| db $27 ; Repeat byte
|13C218| db $06
|13C219| db $15 ; Raw block
|13C21A| db $FF, $00, $CF, $00, $60, $60, $C4, $C4
|13C222| db $62, $62, $30, $30, $18, $E7, $FF, $00
|13C22A| db $00, $FF, $9F, $3B, $9D, $CF
|13C230| db $83 ; Copy past
|13C231| dw $0016
|13C233| db $15 ; Raw block
|13C234| db $FB, $00, $05, $06, $89, $CA, $D1, $52
|13C23C| db $21, $22, $51, $9A, $99, $4A, $00, $FC
|13C244| db $F8, $34, $AC, $DC, $24, $34
|13C24A| db $44 ; Repeat word
|13C24B| dw $00FF
|13C24D| db $0A ; Raw block
|13C24E| db $01, $FF, $00, $FF, $04, $FF, $00, $FF
|13C256| db $10, $FF, $00
|13C259| db $62 ; Increment fill
|13C25A| db $00
|13C25B| db $08 ; Raw block
|13C25C| db $07, $08, $18, $24, $02, $FF, $00, $FF
|13C264| db $80
|13C265| db $44 ; Repeat word
|13C266| dw $00FF
|13C268| db $06 ; Raw block
|13C269| db $08, $FF, $10, $FF, $20, $FF, $40
|13C270| db $22 ; Repeat byte
|13C271| db $00
|13C272| db $03 ; Raw block
|13C273| db $F0, $10, $20, $40
|13C277| db $83 ; Copy past
|13C278| dw $00AB
|13C27A| db $03 ; Raw block
|13C27B| db $08, $FF, $04, $F7
|13C27F| db $43 ; Repeat word
|13C280| dw $FF00
|13C282| db $00 ; Raw block
|13C283| db $02
|13C284| db $43 ; Repeat word
|13C285| dw $10EF
|13C287| db $07 ; Raw block
|13C288| db $00, $10, $08, $7F, $00, $3C, $22, $22
|13C290| db $84 ; Copy past
|13C291| dw $009A
|13C293| db $04 ; Raw block
|13C294| db $20, $BF, $00, $FF, $00
|13C299| db $43 ; Repeat word
|13C29A| dw $08F7
|13C29C| db $09 ; Raw block
|13C29D| db $B7, $48, $00, $20, $40, $F8, $00, $10
|13C2A5| db $10, $90
|13C2A7| db $43 ; Repeat word
|13C2A8| dw $00FF
|13C2AA| db $E0, $2B ; EXT Raw block
|13C2AC| db $FD, $02, $FC, $02, $EB, $14, $F7, $08
|13C2B4| db $EF, $10, $D0, $2F, $00, $01, $3D, $05
|13C2BC| db $28, $10, $2F, $40, $FF, $00, $7F, $80
|13C2C4| db $6F, $90, $DB, $24, $B7, $48, $6F, $10
|13C2CC| db $AF, $50, $1F, $E0, $00, $00, $20, $C8
|13C2D4| db $90, $E0, $A0, $18
|13C2D8| db $43 ; Repeat word
|13C2D9| dw $00FF
|13C2DB| db $13 ; Raw block
|13C2DC| db $FE, $11, $D7, $28, $BB, $44, $FF, $00
|13C2E4| db $93, $6C, $FF, $00, $00, $11, $28, $44
|13C2EC| db $82, $7C, $10, $13
|13C2F0| db $43 ; Repeat word
|13C2F1| dw $00FF
|13C2F3| db $01 ; Raw block
|13C2F4| db $1F, $E0
|13C2F6| db $43 ; Repeat word
|13C2F7| dw $00FF
|13C2F9| db $01 ; Raw block
|13C2FA| db $1F, $E0
|13C2FC| db $43 ; Repeat word
|13C2FD| dw $00FF
|13C2FF| db $07 ; Raw block
|13C300| db $00, $F0, $10, $10, $F0, $10, $10, $F8
|13C308| db $E4, $2F ; EXT Repeat byte
|13C30A| db $00
|13C30B| db $05 ; Raw block
|13C30C| db $FF, $02, $FF, $40, $FF, $28
|13C312| db $86 ; Copy past
|13C313| dw $0096
|13C315| db $0A ; Raw block
|13C316| db $20, $FF, $10, $02, $40, $28, $00, $04
|13C31E| db $00, $20, $10
|13C321| db $4F ; Repeat word
|13C322| dw $00FF
|13C324| db $07 ; Raw block
|13C325| db $3E, $BD, $DB, $E7, $E7, $DB, $BD, $7E
|13C32D| db $4F ; Repeat word
|13C32E| dw $00FF
|13C330| db $87 ; Copy past
|13C331| dw $01A8
|13C333| db $17 ; Raw block
|13C334| db $D1, $12, $F9, $3A, $ED, $2E, $85, $06
|13C33C| db $83, $00, $D1, $12, $C9, $0A, $C1, $02
|13C344| db $6C, $44, $50, $78, $7C, $6C, $74, $7C
|13C34C| db $4F ; Repeat word
|13C34D| dw $00FF
|13C34F| db $00 ; Raw block
|13C350| db $7E
|13C351| db $86 ; Copy past
|13C352| dw $01A9
|13C354| db $4F ; Repeat word
|13C355| dw $0001
|13C357| db $27 ; Repeat byte
|13C358| db $01
|13C359| db $43 ; Repeat word
|13C35A| dw $00FF
|13C35C| db $06 ; Raw block
|13C35D| db $FB, $00, $FB, $10, $FB, $60, $FB
|13C364| db $44 ; Repeat word
|13C365| dw $FF00
|13C367| db $09 ; Raw block
|13C368| db $03, $07, $1C, $6C, $0C, $0C, $0F, $00
|13C370| db $FF, $80
|13C372| db $4C ; Repeat word
|13C373| dw $08FF
|13C375| db $02 ; Raw block
|13C376| db $00, $00, $F0
|13C379| db $23 ; Repeat byte
|13C37A| db $10
|13C37B| db $03 ; Raw block
|13C37C| db $F0, $00, $FF, $00
|13C380| db $43 ; Repeat word
|13C381| dw $10EF
|13C383| db $01 ; Raw block
|13C384| db $FF, $00
|13C386| db $44 ; Repeat word
|13C387| dw $10EF
|13C389| db $0A ; Raw block
|13C38A| db $12, $FF, $00, $3E, $22, $22, $3E, $22
|13C392| db $22, $24, $00
|13C395| db $45 ; Repeat word
|13C396| dw $48B7
|13C398| db $45 ; Repeat word
|13C399| dw $08F7
|13C39B| db $83 ; Copy past
|13C39C| dw $009C
|13C39E| db $22 ; Repeat byte
|13C39F| db $90
|13C3A0| db $22 ; Repeat byte
|13C3A1| db $10
|13C3A2| db $03 ; Raw block
|13C3A3| db $60, $00, $FF, $00
|13C3A7| db $43 ; Repeat word
|13C3A8| dw $08F7
|13C3AA| db $05 ; Raw block
|13C3AB| db $FF, $00, $FB, $04, $FD, $02
|13C3B1| db $43 ; Repeat word
|13C3B2| dw $00FF
|13C3B4| db $07 ; Raw block
|13C3B5| db $1F, $10, $10, $1F, $08, $05, $7F, $00
|13C3BD| db $47 ; Repeat word
|13C3BE| dw $20DF
|13C3C0| db $03 ; Raw block
|13C3C1| db $BF, $40, $7F, $80
|13C3C5| db $43 ; Repeat word
|13C3C6| dw $00FF
|13C3C8| db $0B ; Raw block
|13C3C9| db $C0, $40, $40, $C0, $80, $00, $F8, $00
|13C3D1| db $FC, $03, $9F, $60
|13C3D5| db $44 ; Repeat word
|13C3D6| dw $00FF
|13C3D8| db $00 ; Raw block
|13C3D9| db $20
|13C3DA| db $85 ; Copy past
|13C3DB| dw $009A
|13C3DD| db $1E ; Raw block
|13C3DE| db $7C, $11, $55, $54, $11, $1C, $61, $00
|13C3E6| db $47, $B8, $FF, $00, $D7, $28, $EF, $10
|13C3EE| db $DF, $20, $EF, $10, $F7, $48, $FF, $00
|13C3F6| db $40, $48, $50, $E0, $50, $48, $80
|13C3FD| db $E4, $48 ; EXT Repeat byte
|13C3FF| db $00
|13C400| db $02 ; Raw block
|13C401| db $FF, $00, $CF
|13C404| db $44 ; Repeat word
|13C405| dw $B700
|13C407| db $0C ; Raw block
|13C408| db $CF, $00, $7B, $84, $75, $8E, $FB, $04
|13C410| db $00, $30, $78, $78, $30
|13C415| db $22 ; Repeat byte
|13C416| db $00
|13C417| db $00 ; Raw block
|13C418| db $F3
|13C419| db $44 ; Repeat word
|13C41A| dw $ED00
|13C41C| db $02 ; Raw block
|13C41D| db $F3, $00, $9F
|13C420| db $44 ; Repeat word
|13C421| dw $6F00
|13C423| db $0B ; Raw block
|13C424| db $9F, $00, $0C, $1E, $1E, $0C, $60, $F0
|13C42C| db $F0, $60, $9E, $61
|13C430| db $43 ; Repeat word
|13C431| dw $930D
|13C433| db $02 ; Raw block
|13C434| db $9E, $61, $F3
|13C437| db $44 ; Repeat word
|13C438| dw $ED00
|13C43A| db $04 ; Raw block
|13C43B| db $F3, $00, $00, $60, $60
|13C440| db $84 ; Copy past
|13C441| dw $033F
|13C443| db $01 ; Raw block
|13C444| db $7F, $80
|13C446| db $43 ; Repeat word
|13C447| dw $C6B9
|13C449| db $01 ; Raw block
|13C44A| db $4F, $B0
|13C44C| db $43 ; Repeat word
|13C44D| dw $78B7
|13C44F| db $03 ; Raw block
|13C450| db $CC, $33, $FC, $03
|13C454| db $2A ; Repeat byte
|13C455| db $00
|13C456| db $04 ; Raw block
|13C457| db $10, $10, $38, $00, $10
|13C45C| db $28 ; Repeat byte
|13C45D| db $00
|13C45E| db $02 ; Raw block
|13C45F| db $10, $38, $10
|13C462| db $26 ; Repeat byte
|13C463| db $00
|13C464| db $00 ; Raw block
|13C465| db $40
|13C466| db $23 ; Repeat byte
|13C467| db $00
|13C468| db $01 ; Raw block
|13C469| db $08, $08
|13C46B| db $26 ; Repeat byte
|13C46C| db $00
|13C46D| db $03 ; Raw block
|13C46E| db $40, $00, $00, $08
|13C472| db $22 ; Repeat byte
|13C473| db $00
|13C474| db $17 ; Raw block
|13C475| db $FE, $7F, $FD, $BF, $FB, $DF, $F7, $EF
|13C47D| db $EF, $F7, $DF, $FB, $BF, $FD, $7F, $FE
|13C485| db $FE, $FD, $FB, $F7, $EF, $DF, $BF, $7F
|13C48D| db $97 ; Copy past
|13C48E| dw $03A8
|13C490| db $F0, $2F ; EXT Copy past
|13C492| dw $03A8
|13C494| db $F0, $5F ; EXT Copy past
|13C496| dw $03A8
|13C498| db $F0, $BF ; EXT Copy past
|13C49A| dw $03A8
|13C49C| db $F0, $BF ; EXT Copy past
|13C49E| dw $03A8
|13C4A0| db $37 ; Repeat byte
|13C4A1| db $00
|13C4A2| db $FF ; End of GFX 39

;===================================================================================================

GFX_3A:
|13C4A3| db $05 ; Raw block
|13C4A4| db $FF, $1F, $FF, $3C, $FF, $38
|13C4AA| db $44 ; Repeat word
|13C4AB| dw $70FF
|13C4AD| db $09 ; Raw block
|13C4AE| db $E0, $FF, $C0, $FF, $81, $1F, $3F, $3F
|13C4B6| db $7F, $7F
|13C4B8| db $23 ; Repeat byte
|13C4B9| db $FF
|13C4BA| db $06 ; Raw block
|13C4BB| db $00, $FF, $03, $FF, $0F, $FF, $3F
|13C4C2| db $44 ; Repeat word
|13C4C3| dw $7FFF
|13C4C5| db $02 ; Raw block
|13C4C6| db $FC, $FF, $F8
|13C4C9| db $2A ; Repeat byte
|13C4CA| db $FF
|13C4CB| db $00 ; Raw block
|13C4CC| db $F8
|13C4CD| db $84 ; Copy past
|13C4CE| dw $000A
|13C4D0| db $02 ; Raw block
|13C4D1| db $83, $FF, $07
|13C4D4| db $83 ; Copy past
|13C4D5| dw $0000
|13C4D7| db $28 ; Repeat byte
|13C4D8| db $FF
|13C4D9| db $04 ; Raw block
|13C4DA| db $F8, $FF, $FC, $FF, $FE
|13C4DF| db $26 ; Repeat byte
|13C4E0| db $FF
|13C4E1| db $02 ; Raw block
|13C4E2| db $7F, $FF, $3F
|13C4E5| db $25 ; Repeat byte
|13C4E6| db $FF
|13C4E7| db $01 ; Raw block
|13C4E8| db $7F, $3F
|13C4EA| db $48 ; Repeat word
|13C4EB| dw $00FF
|13C4ED| db $02 ; Raw block
|13C4EE| db $80, $FF, $F0
|13C4F1| db $2E ; Repeat byte
|13C4F2| db $FF
|13C4F3| db $02 ; Raw block
|13C4F4| db $7F, $FF, $1F
|13C4F7| db $48 ; Repeat word
|13C4F8| dw $00FF
|13C4FA| db $00 ; Raw block
|13C4FB| db $C0
|13C4FC| db $27 ; Repeat byte
|13C4FD| db $FF
|13C4FE| db $E0, $27 ; EXT Raw block
|13C500| db $3F, $C3, $DF, $E7, $AF, $B7, $9F, $97
|13C508| db $FE, $F6, $6C, $F4, $90, $60, $E0, $00
|13C510| db $03, $07, $47, $67, $06, $04, $00, $00
|13C518| db $FF, $00, $CF, $30, $60, $9F, $A8, $DF
|13C520| db $E5, $DE, $57, $EC, $57, $E9, $1F, $E3
|13C528| db $25 ; Repeat byte
|13C529| db $00
|13C52A| db $01 ; Raw block
|13C52B| db $01, $03
|13C52D| db $46 ; Repeat word
|13C52E| dw $1FFF
|13C530| db $04 ; Raw block
|13C531| db $0F, $FF, $07, $FF, $01
|13C536| db $43 ; Repeat word
|13C537| dw $00FF
|13C539| db $22 ; Repeat byte
|13C53A| db $1F
|13C53B| db $04 ; Raw block
|13C53C| db $0F, $07, $01, $00, $00
|13C541| db $2C ; Repeat byte
|13C542| db $FF
|13C543| db $02 ; Raw block
|13C544| db $00, $FF, $00
|13C547| db $25 ; Repeat byte
|13C548| db $FF
|13C549| db $05 ; Raw block
|13C54A| db $00, $00, $FF, $E0, $FF, $F8
|13C550| db $2A ; Repeat byte
|13C551| db $FF
|13C552| db $00 ; Raw block
|13C553| db $3F
|13C554| db $26 ; Repeat byte
|13C555| db $FF
|13C556| db $00 ; Raw block
|13C557| db $3F
|13C558| db $2C ; Repeat byte
|13C559| db $FF
|13C55A| db $02 ; Raw block
|13C55B| db $F8, $FF, $E0
|13C55E| db $25 ; Repeat byte
|13C55F| db $FF
|13C560| db $0D ; Raw block
|13C561| db $F8, $E0, $3F, $CF, $3F, $C7, $1F, $E7
|13C569| db $1F, $E3, $0F, $F1, $0F, $F0
|13C56F| db $43 ; Repeat word
|13C570| dw $F807
|13C572| db $04 ; Raw block
|13C573| db $0F, $07, $07, $03, $01
|13C578| db $22 ; Repeat byte
|13C579| db $00
|13C57A| db $04 ; Raw block
|13C57B| db $7F, $1F, $1F, $03, $03
|13C580| db $2A ; Repeat byte
|13C581| db $00
|13C582| db $02 ; Raw block
|13C583| db $7F, $1F, $03
|13C586| db $28 ; Repeat byte
|13C587| db $00
|13C588| db $0B ; Raw block
|13C589| db $01, $00, $03, $00, $07, $00, $0F, $00
|13C591| db $1F, $03, $1F, $07
|13C595| db $25 ; Repeat byte
|13C596| db $00
|13C597| db $00 ; Raw block
|13C598| db $03
|13C599| db $43 ; Repeat word
|13C59A| dw $3F07
|13C59C| db $06 ; Raw block
|13C59D| db $0F, $7F, $1F, $7F, $1E, $FF, $3E
|13C5A4| db $45 ; Repeat word
|13C5A5| dw $3CFF
|13C5A7| db $03 ; Raw block
|13C5A8| db $07, $0F, $1F, $1F
|13C5AC| db $23 ; Repeat byte
|13C5AD| db $3F
|13C5AE| db $03 ; Raw block
|13C5AF| db $FF, $83, $FF, $03
|13C5B3| db $44 ; Repeat word
|13C5B4| dw $07FF
|13C5B6| db $46 ; Repeat word
|13C5B7| dw $FF0F
|13C5B9| db $28 ; Repeat byte
|13C5BA| db $FF
|13C5BB| db $4B ; Repeat word
|13C5BC| dw $FFF0
|13C5BE| db $02 ; Raw block
|13C5BF| db $F8, $FF, $FC
|13C5C2| db $28 ; Repeat byte
|13C5C3| db $FF
|13C5C4| db $00 ; Raw block
|13C5C5| db $78
|13C5C6| db $46 ; Repeat word
|13C5C7| dw $70FF
|13C5C9| db $02 ; Raw block
|13C5CA| db $78, $FF, $7C
|13C5CD| db $43 ; Repeat word
|13C5CE| dw $3FFF
|13C5D0| db $28 ; Repeat byte
|13C5D1| db $FF
|13C5D2| db $02 ; Raw block
|13C5D3| db $07, $FF, $1F
|13C5D6| db $24 ; Repeat byte
|13C5D7| db $FF
|13C5D8| db $06 ; Raw block
|13C5D9| db $FC, $FF, $E0, $FF, $C3, $FF, $8F
|13C5E0| db $23 ; Repeat byte
|13C5E1| db $FF
|13C5E2| db $03 ; Raw block
|13C5E3| db $FC, $E0, $C3, $8F
|13C5E7| db $84 ; Copy past
|13C5E8| dw $0032
|13C5EA| db $10 ; Raw block
|13C5EB| db $C7, $FF, $8F, $FF, $1C, $FF, $38, $FF
|13C5F3| db $F0, $FF, $E0, $F8, $E0, $C7, $8F, $1F
|13C5FB| db $3F
|13C5FC| db $22 ; Repeat byte
|13C5FD| db $FF
|13C5FE| db $00 ; Raw block
|13C5FF| db $7F
|13C600| db $22 ; Repeat byte
|13C601| db $FF
|13C602| db $00 ; Raw block
|13C603| db $E0
|13C604| db $44 ; Repeat word
|13C605| dw $00FF
|13C607| db $84 ; Copy past
|13C608| dw $001D
|13C60A| db $00 ; Raw block
|13C60B| db $7F
|13C60C| db $26 ; Repeat byte
|13C60D| db $FF
|13C60E| db $10 ; Raw block
|13C60F| db $0C, $0F, $F3, $FC, $E7, $F8, $CF, $F0
|13C617| db $1F, $E0, $3F, $C7, $7F, $8F, $FF, $1F
|13C61F| db $F0
|13C620| db $23 ; Repeat byte
|13C621| db $00
|13C622| db $02 ; Raw block
|13C623| db $07, $0F, $1F
|13C626| db $85 ; Copy past
|13C627| dw $021A
|13C629| db $03 ; Raw block
|13C62A| db $FF, $1E, $FF, $3E
|13C62E| db $45 ; Repeat word
|13C62F| dw $3CFF
|13C631| db $83 ; Copy past
|13C632| dw $0178
|13C634| db $23 ; Repeat byte
|13C635| db $3F
|13C636| db $11 ; Raw block
|13C637| db $FC, $03, $FE, $C1, $FF, $E0, $F8, $E7
|13C63F| db $F7, $EF, $F1, $EF, $FC, $E3, $F2, $ED
|13C647| db $00, $C0
|13C649| db $25 ; Repeat byte
|13C64A| db $E0
|13C64B| db $0F ; Raw block
|13C64C| db $43, $BC, $46, $BF, $E3, $1F, $21, $DF
|13C654| db $90, $EF, $C8, $F7, $E4, $FB, $64, $FB
|13C65C| db $27 ; Repeat byte
|13C65D| db $00
|13C65E| db $87 ; Copy past
|13C65F| dw $00A8
|13C661| db $07 ; Raw block
|13C662| db $E4, $DF, $54, $EF, $50, $EF, $1F, $E0
|13C66A| db $27 ; Repeat byte
|13C66B| db $00
|13C66C| db $49 ; Repeat word
|13C66D| dw $00FF
|13C66F| db $05 ; Raw block
|13C670| db $F8, $07, $F0, $0F, $F0, $CF
|13C676| db $26 ; Repeat byte
|13C677| db $00
|13C678| db $02 ; Raw block
|13C679| db $C0, $FF, $3E
|13C67C| db $44 ; Repeat word
|13C67D| dw $3FFF
|13C67F| db $08 ; Raw block
|13C680| db $1F, $FF, $1F, $7F, $9F, $7F, $8F, $3F
|13C688| db $CF
|13C689| db $22 ; Repeat byte
|13C68A| db $3F
|13C68B| db $22 ; Repeat byte
|13C68C| db $1F
|13C68D| db $09 ; Raw block
|13C68E| db $0F, $0F, $07, $02, $07, $01, $06, $02
|13C696| db $0D, $05
|13C698| db $43 ; Repeat word
|13C699| dw $0F17
|13C69B| db $0D ; Raw block
|13C69C| db $18, $17, $0F, $08, $06, $04, $01, $02
|13C6A4| db $00, $00, $10, $08, $07, $00
|13C6AA| db $45 ; Repeat word
|13C6AB| dw $0307
|13C6AD| db $43 ; Repeat word
|13C6AE| dw $0103
|13C6B0| db $43 ; Repeat word
|13C6B1| dw $0001
|13C6B3| db $00 ; Raw block
|13C6B4| db $04
|13C6B5| db $22 ; Repeat byte
|13C6B6| db $07
|13C6B7| db $03 ; Raw block
|13C6B8| db $03, $03, $01, $01
|13C6BC| db $4E ; Repeat word
|13C6BD| dw $3CFF
|13C6BF| db $00 ; Raw block
|13C6C0| db $3E
|13C6C1| db $27 ; Repeat byte
|13C6C2| db $3F
|13C6C3| db $4C ; Repeat word
|13C6C4| dw $1FFF
|13C6C6| db $02 ; Raw block
|13C6C7| db $0F, $FF, $0F
|13C6CA| db $28 ; Repeat byte
|13C6CB| db $FF
|13C6CC| db $02 ; Raw block
|13C6CD| db $FE, $FF, $FE
|13C6D0| db $34 ; Repeat byte
|13C6D1| db $FF
|13C6D2| db $83 ; Copy past
|13C6D3| dw $00C5
|13C6D5| db $00 ; Raw block
|13C6D6| db $03
|13C6D7| db $84 ; Copy past
|13C6D8| dw $0066
|13C6DA| db $00 ; Raw block
|13C6DB| db $C0
|13C6DC| db $83 ; Copy past
|13C6DD| dw $00F0
|13C6DF| db $2B ; Repeat byte
|13C6E0| db $FF
|13C6E1| db $06 ; Raw block
|13C6E2| db $C7, $FF, $B3, $FF, $83, $FF, $C7
|13C6E9| db $2C ; Repeat byte
|13C6EA| db $FF
|13C6EB| db $17 ; Raw block
|13C6EC| db $36, $FF, $3F, $D9, $BD, $C2, $E0, $DF
|13C6F4| db $C7, $B8, $DF, $20, $DF, $A0, $FF, $80
|13C6FC| db $FF, $D9, $C0, $C0, $80, $00, $80, $80
|13C704| db $84 ; Copy past
|13C705| dw $0018
|13C707| db $83 ; Copy past
|13C708| dw $0187
|13C70A| db $02 ; Raw block
|13C70B| db $1F, $FF, $3F
|13C70E| db $2C ; Repeat byte
|13C70F| db $FF
|13C710| db $02 ; Raw block
|13C711| db $C0, $FF, $81
|13C714| db $83 ; Copy past
|13C715| dw $0182
|13C717| db $44 ; Repeat word
|13C718| dw $0FFF
|13C71A| db $02 ; Raw block
|13C71B| db $1F, $FF, $3F
|13C71E| db $2E ; Repeat byte
|13C71F| db $FF
|13C720| db $00 ; Raw block
|13C721| db $FE
|13C722| db $84 ; Copy past
|13C723| dw $0024
|13C725| db $02 ; Raw block
|13C726| db $F0, $FF, $00
|13C729| db $22 ; Repeat byte
|13C72A| db $FF
|13C72B| db $E0, $24 ; EXT Raw block
|13C72D| db $FE, $FC, $F8, $F0, $00, $E1, $DE, $D8
|13C735| db $BF, $84, $47, $84, $07, $9C, $1F, $F9
|13C73D| db $7E, $C3, $3C, $FF, $00, $C0, $80, $38
|13C745| db $78, $60, $00, $00, $80, $24, $FB, $86
|13C74D| db $79, $87, $78, $CF, $30
|13C752| db $84 ; Copy past
|13C753| dw $003A
|13C755| db $02 ; Raw block
|13C756| db $7F, $FF, $FF
|13C759| db $23 ; Repeat byte
|13C75A| db $00
|13C75B| db $13 ; Raw block
|13C75C| db $07, $1F, $7F, $FF, $30, $CF, $60, $9F
|13C764| db $C7, $3F, $CF, $3F, $C0, $3F, $C7, $38
|13C76C| db $E8, $97, $F3, $CF
|13C770| db $25 ; Repeat byte
|13C771| db $00
|13C772| db $0C ; Raw block
|13C773| db $80, $C0, $F0, $CF, $F7, $CF, $F0, $90
|13C77B| db $F0, $00, $38, $00, $1C
|13C780| db $44 ; Repeat word
|13C781| dw $0E00
|13C783| db $07 ; Raw block
|13C784| db $C0, $C0, $FF, $FF, $3F, $1F, $0F, $0F
|13C78C| db $87 ; Copy past
|13C78D| dw $0120
|13C78F| db $06 ; Raw block
|13C790| db $4F, $F1, $4F, $F0, $67, $F8, $37
|13C797| db $85 ; Copy past
|13C798| dw $012F
|13C79A| db $22 ; Repeat byte
|13C79B| db $00
|13C79C| db $17 ; Raw block
|13C79D| db $F2, $CE, $F6, $EE, $F7, $AF, $FB, $07
|13C7A5| db $39, $07, $1C, $03, $0F, $00, $07, $00
|13C7AD| db $C1, $E1, $E0, $E0, $30, $10, $08, $04
|13C7B5| db $45 ; Repeat word
|13C7B6| dw $FF00
|13C7B8| db $09 ; Raw block
|13C7B9| db $03, $FC, $07, $F8, $0F, $F0, $1F, $E3
|13C7C1| db $1F, $E7
|13C7C3| db $25 ; Repeat byte
|13C7C4| db $00
|13C7C5| db $03 ; Raw block
|13C7C6| db $03, $07, $FF, $3E
|13C7CA| db $44 ; Repeat word
|13C7CB| dw $3FFF
|13C7CD| db $45 ; Repeat word
|13C7CE| dw $7F1F
|13C7D0| db $02 ; Raw block
|13C7D1| db $0F, $3F, $0F
|13C7D4| db $22 ; Repeat byte
|13C7D5| db $3F
|13C7D6| db $22 ; Repeat byte
|13C7D7| db $1F
|13C7D8| db $00 ; Raw block
|13C7D9| db $0F
|13C7DA| db $83 ; Copy past
|13C7DB| dw $00C7
|13C7DD| db $00 ; Raw block
|13C7DE| db $03
|13C7DF| db $85 ; Copy past
|13C7E0| dw $0338
|13C7E2| db $44 ; Repeat word
|13C7E3| dw $F0FF
|13C7E5| db $00 ; Raw block
|13C7E6| db $F8
|13C7E7| db $2E ; Repeat byte
|13C7E8| db $FF
|13C7E9| db $00 ; Raw block
|13C7EA| db $3F
|13C7EB| db $84 ; Copy past
|13C7EC| dw $00C6
|13C7EE| db $02 ; Raw block
|13C7EF| db $03, $FF, $00
|13C7F2| db $E4, $20 ; EXT Repeat byte
|13C7F4| db $FF
|13C7F5| db $0E ; Raw block
|13C7F6| db $00, $F0, $0F, $61, $9E, $07, $F8, $8F
|13C7FE| db $F0, $9F, $E7, $3F, $CF, $7F, $9F
|13C805| db $24 ; Repeat byte
|13C806| db $00
|13C807| db $02 ; Raw block
|13C808| db $07, $0F, $1F
|13C80B| db $44 ; Repeat word
|13C80C| dw $00FF
|13C80E| db $83 ; Copy past
|13C80F| dw $037F
|13C811| db $00 ; Raw block
|13C812| db $3C
|13C813| db $83 ; Copy past
|13C814| dw $01EC
|13C816| db $06 ; Raw block
|13C817| db $FF, $C0, $00, $00, $0F, $1F, $3F
|13C81E| db $23 ; Repeat byte
|13C81F| db $FF
|13C820| db $02 ; Raw block
|13C821| db $80, $FF, $00
|13C824| db $44 ; Repeat word
|13C825| dw $80FF
|13C827| db $06 ; Raw block
|13C828| db $00, $7F, $80, $7F, $C0, $3F, $F6
|13C82F| db $83 ; Copy past
|13C830| dw $0374
|13C832| db $15 ; Raw block
|13C833| db $00, $80, $C0, $F6, $FF, $F0, $FB, $C4
|13C83B| db $F3, $0C, $E7, $18, $F9, $06, $E1, $1E
|13C843| db $F3, $8C, $F6, $C9, $F0, $C0
|13C849| db $23 ; Repeat byte
|13C84A| db $00
|13C84B| db $01 ; Raw block
|13C84C| db $80, $C0
|13C84E| db $4E ; Repeat word
|13C84F| dw $00FF
|13C851| db $28 ; Repeat byte
|13C852| db $00
|13C853| db $06 ; Raw block
|13C854| db $F6, $0F, $F8, $27, $3F, $18, $1F
|13C85B| db $44 ; Repeat word
|13C85C| dw $0F08
|13C85E| db $1B ; Raw block
|13C85F| db $1F, $03, $3F, $07, $00, $E0, $38, $18
|13C867| db $08, $08, $13, $27, $0E, $F1, $18, $E7
|13C86F| db $32, $CF, $30, $CF, $18, $E7, $0C, $F3
|13C877| db $27, $F8, $71, $FE
|13C87B| db $27 ; Repeat byte
|13C87C| db $00
|13C87D| db $03 ; Raw block
|13C87E| db $3F, $C7, $3F, $CF
|13C882| db $43 ; Repeat word
|13C883| dw $9F7F
|13C885| db $01 ; Raw block
|13C886| db $FF, $3F
|13C888| db $44 ; Repeat word
|13C889| dw $3EFF
|13C88B| db $84 ; Copy past
|13C88C| dw $0177
|13C88E| db $23 ; Repeat byte
|13C88F| db $3F
|13C890| db $00 ; Raw block
|13C891| db $60
|13C892| db $84 ; Copy past
|13C893| dw $000A
|13C895| db $09 ; Raw block
|13C896| db $C3, $FC, $C7, $F8, $CF, $F0, $5F, $E3
|13C89E| db $5F, $E7
|13C8A0| db $25 ; Repeat byte
|13C8A1| db $00
|13C8A2| db $01 ; Raw block
|13C8A3| db $03, $07
|13C8A5| db $27 ; Repeat byte
|13C8A6| db $00
|13C8A7| db $07 ; Raw block
|13C8A8| db $07, $00, $1F, $00, $3F, $07, $7F, $0F
|13C8B0| db $25 ; Repeat byte
|13C8B1| db $00
|13C8B2| db $01 ; Raw block
|13C8B3| db $07, $0F
|13C8B5| db $86 ; Copy past
|13C8B6| dw $05A6
|13C8B8| db $85 ; Copy past
|13C8B9| dw $04E5
|13C8BB| db $02 ; Raw block
|13C8BC| db $F8, $FF, $E0
|13C8BF| db $22 ; Repeat byte
|13C8C0| db $00
|13C8C1| db $02 ; Raw block
|13C8C2| db $0F, $1F, $3F
|13C8C5| db $22 ; Repeat byte
|13C8C6| db $FF
|13C8C7| db $05 ; Raw block
|13C8C8| db $00, $FF, $3F, $FF, $F0, $FF
|13C8CE| db $83 ; Copy past
|13C8CF| dw $0527
|13C8D1| db $84 ; Copy past
|13C8D2| dw $001D
|13C8D4| db $01 ; Raw block
|13C8D5| db $00, $3F
|13C8D7| db $25 ; Repeat byte
|13C8D8| db $FF
|13C8D9| db $02 ; Raw block
|13C8DA| db $3F, $0F, $3F
|13C8DD| db $43 ; Repeat word
|13C8DE| dw $1F07
|13C8E0| db $02 ; Raw block
|13C8E1| db $03, $0F, $01
|13C8E4| db $83 ; Copy past
|13C8E5| dw $0444
|13C8E7| db $01 ; Raw block
|13C8E8| db $03, $00
|13C8EA| db $84 ; Copy past
|13C8EB| dw $0130
|13C8ED| db $22 ; Repeat byte
|13C8EE| db $00
|13C8EF| db $FF ; End of GFX 3A

;===================================================================================================

GFX_3B:
|13C8F0| db $23 ; Repeat byte
|13C8F1| db $00
|13C8F2| db $23 ; Repeat byte
|13C8F3| db $0C
|13C8F4| db $01 ; Raw block
|13C8F5| db $80, $80
|13C8F7| db $25 ; Repeat byte
|13C8F8| db $C0
|13C8F9| db $04 ; Raw block
|13C8FA| db $FF, $FF, $F3, $F3, $7F
|13C8FF| db $22 ; Repeat byte
|13C900| db $3F
|13C901| db $27 ; Repeat byte
|13C902| db $00
|13C903| db $03 ; Raw block
|13C904| db $01, $01, $23, $23
|13C908| db $23 ; Repeat byte
|13C909| db $07
|13C90A| db $23 ; Repeat byte
|13C90B| db $FF
|13C90C| db $15 ; Raw block
|13C90D| db $FE, $DC, $F8, $F8, $3F, $3F, $70, $7F
|13C915| db $E0, $FF, $C0, $FF, $81, $FF, $8F, $FF
|13C91D| db $1F, $FF, $1E, $FE, $C0, $80
|13C923| db $24 ; Repeat byte
|13C924| db $00
|13C925| db $05 ; Raw block
|13C926| db $01, $3C, $3F, $78, $7F, $F1
|13C92C| db $44 ; Repeat word
|13C92D| dw $F3FF
|13C92F| db $07 ; Raw block
|13C930| db $E7, $FF, $66, $FE, $0C, $FC, $C0, $80
|13C938| db $23 ; Repeat byte
|13C939| db $00
|13C93A| db $11 ; Raw block
|13C93B| db $01, $03, $9F, $E0, $4F, $F0, $A1, $7E
|13C943| db $D0, $3F, $68, $9F, $36, $CF, $3D, $C3
|13C94B| db $BF, $C1
|13C94D| db $27 ; Repeat byte
|13C94E| db $00
|13C94F| db $0F ; Raw block
|13C950| db $47, $F8, $A3, $7C, $D9, $3E, $E4, $1F
|13C958| db $7A, $87, $3E, $C3, $3D, $C3, $3E, $C1
|13C960| db $27 ; Repeat byte
|13C961| db $00
|13C962| db $47 ; Repeat word
|13C963| dw $00FF
|13C965| db $01 ; Raw block
|13C966| db $7F, $80
|13C968| db $45 ; Repeat word
|13C969| dw $C03F
|13C96B| db $0C ; Raw block
|13C96C| db $FF, $3F, $0F, $07, $03, $03, $01, $01
|13C974| db $7E, $7F, $9C, $FF, $80
|13C979| db $44 ; Repeat word
|13C97A| dw $C0FF
|13C97C| db $01 ; Raw block
|13C97D| db $C5, $FB
|13C97F| db $43 ; Repeat word
|13C980| dw $F7CB
|13C982| db $00 ; Raw block
|13C983| db $80
|13C984| db $26 ; Repeat byte
|13C985| db $00
|13C986| db $49 ; Repeat word
|13C987| dw $FAE4
|13C989| db $05 ; Raw block
|13C98A| db $E2, $FE, $C6, $FE, $8C, $FC
|13C990| db $26 ; Repeat byte
|13C991| db $01
|13C992| db $00 ; Raw block
|13C993| db $03
|13C994| db $43 ; Repeat word
|13C995| dw $4D85
|13C997| db $E0, $23 ; EXT Raw block
|13C999| db $82, $46, $A0, $63, $B1, $71, $5F, $3F
|13C9A1| db $AF, $9F, $DF, $C0, $33, $33, $39, $1C
|13C9A9| db $0E, $80, $C0, $E0, $F0, $0F, $CF, $3F
|13C9B1| db $BF, $7F, $70, $FF, $67, $FF, $CC, $FC
|13C9B9| db $DB, $FB, $D7, $F7
|13C9BD| db $24 ; Repeat byte
|13C9BE| db $00
|13C9BF| db $02 ; Raw block
|13C9C0| db $03, $07, $0F
|13C9C3| db $43 ; Repeat word
|13C9C4| dw $B797
|13C9C6| db $07 ; Raw block
|13C9C7| db $13, $33, $28, $38, $17, $1F, $88, $8F
|13C9CF| db $83 ; Copy past
|13C9D0| dw $0008
|13C9D2| db $13 ; Raw block
|13C9D3| db $4F, $4F, $CF, $C7, $E0, $70, $7F, $3F
|13C9DB| db $CF, $F0, $E3, $1C, $3D, $C2, $0E, $F1
|13C9E3| db $1B, $1C, $F3, $F3
|13C9E7| db $23 ; Repeat byte
|13C9E8| db $FF
|13C9E9| db $23 ; Repeat byte
|13C9EA| db $00
|13C9EB| db $13 ; Raw block
|13C9EC| db $E0, $FC, $FF, $FF, $9F, $E0, $C3, $FC
|13C9F4| db $E1, $7E, $78, $BF, $2E, $DF, $4B, $77
|13C9FC| db $ED, $EB, $F7, $F5
|13CA00| db $24 ; Repeat byte
|13CA01| db $00
|13CA02| db $02 ; Raw block
|13CA03| db $80, $F0, $F8
|13CA06| db $43 ; Repeat word
|13CA07| dw $BFAF
|13CA09| db $04 ; Raw block
|13CA0A| db $A7, $B7, $9F, $BF, $4F
|13CA0F| db $46 ; Repeat word
|13CA10| dw $2F6F
|13CA12| db $03 ; Raw block
|13CA13| db $47, $47, $4F, $4F
|13CA17| db $23 ; Repeat byte
|13CA18| db $9F
|13CA19| db $43 ; Repeat word
|13CA1A| dw $FDF5
|13CA1C| db $04 ; Raw block
|13CA1D| db $E5, $ED, $F9, $FD, $F2
|13CA22| db $46 ; Repeat word
|13CA23| dw $F4F6
|13CA25| db $03 ; Raw block
|13CA26| db $E2, $E2, $F2, $F2
|13CA2A| db $23 ; Repeat byte
|13CA2B| db $F9
|13CA2C| db $08 ; Raw block
|13CA2D| db $61, $E1, $33, $F3, $1F, $FF, $C7, $FF
|13CA35| db $E0
|13CA36| db $22 ; Repeat byte
|13CA37| db $FF
|13CA38| db $05 ; Raw block
|13CA39| db $EF, $EF, $F8, $F8, $1E, $0C
|13CA3F| db $23 ; Repeat byte
|13CA40| db $00
|13CA41| db $0A ; Raw block
|13CA42| db $F0, $FF, $8E, $8F, $FC, $FF, $F8, $FF
|13CA4A| db $E3, $FF, $07
|13CA4D| db $22 ; Repeat byte
|13CA4E| db $FF
|13CA4F| db $04 ; Raw block
|13CA50| db $F3, $F3, $1F, $1F, $70
|13CA55| db $24 ; Repeat byte
|13CA56| db $00
|13CA57| db $E0, $31 ; EXT Raw block
|13CA59| db $0F, $FF, $38, $F8, $F0, $F0, $F1, $F1
|13CA61| db $E3, $E3, $C3, $C3, $07, $07, $0D, $0F
|13CA69| db $1F, $1F, $07, $0F, $0E, $1C, $3C, $F8
|13CA71| db $F0, $E0, $0C, $FC, $18, $F8, $39, $F9
|13CA79| db $71, $F1, $F3, $F3, $E3, $E3, $C7, $C7
|13CA81| db $07, $07, $03, $07, $06, $0E, $0C, $1C
|13CA89| db $38, $F8
|13CA8B| db $8D ; Copy past
|13CA8C| dw $0060
|13CA8E| db $01 ; Raw block
|13CA8F| db $7F, $C1
|13CA91| db $27 ; Repeat byte
|13CA92| db $00
|13CA93| db $85 ; Copy past
|13CA94| dw $0078
|13CA96| db $09 ; Raw block
|13CA97| db $EC, $1F, $7E, $87, $3F, $C3, $3F, $C1
|13CA9F| db $3F, $C0
|13CAA1| db $27 ; Repeat byte
|13CAA2| db $00
|13CAA3| db $47 ; Repeat word
|13CAA4| dw $00FF
|13CAA6| db $83 ; Copy past
|13CAA7| dw $0098
|13CAA9| db $43 ; Repeat word
|13CAAA| dw $E01F
|13CAAC| db $83 ; Copy past
|13CAAD| dw $00A0
|13CAAF| db $00 ; Raw block
|13CAB0| db $07
|13CAB1| db $22 ; Repeat byte
|13CAB2| db $03
|13CAB3| db $83 ; Copy past
|13CAB4| dw $0198
|13CAB6| db $0C ; Raw block
|13CAB7| db $9C, $FF, $81, $FE, $C3, $FC, $C6, $F9
|13CABF| db $CD, $F3, $DB, $E7, $70
|13CAC4| db $26 ; Repeat byte
|13CAC5| db $00
|13CAC6| db $45 ; Repeat word
|13CAC7| dw $F2EE
|13CAC9| db $43 ; Repeat word
|13CACA| dw $F2CE
|13CACC| db $05 ; Raw block
|13CACD| db $8E, $F2, $8A, $F6, $12, $EE
|13CAD3| db $27 ; Repeat byte
|13CAD4| db $01
|13CAD5| db $05 ; Raw block
|13CAD6| db $1F, $DF, $3F, $BF, $7F, $7F
|13CADC| db $29 ; Repeat byte
|13CADD| db $FF
|13CADE| db $01 ; Raw block
|13CADF| db $3F, $7F
|13CAE1| db $25 ; Repeat byte
|13CAE2| db $FF
|13CAE3| db $1D ; Raw block
|13CAE4| db $07, $F8, $F3, $FC, $08, $0F, $04, $E7
|13CAEC| db $E6, $F7, $F6, $FF, $F4, $FF, $F0, $FF
|13CAF4| db $01, $00, $F0, $18, $08, $C0, $E0, $F0
|13CAFC| db $77, $77, $0F, $0F, $87, $87
|13CB02| db $83 ; Copy past
|13CB03| dw $0178
|13CB05| db $0D ; Raw block
|13CB06| db $F3, $F3, $F1, $F1, $F9, $F9, $8F, $F3
|13CB0E| db $79, $1D, $0D, $0C, $0E, $06
|13CB14| db $23 ; Repeat byte
|13CB15| db $FF
|13CB16| db $0B ; Raw block
|13CB17| db $FC, $FC, $F7, $F7, $1F, $1F, $FB, $FB
|13CB1F| db $EF, $EF, $B8, $B8
|13CB23| db $22 ; Repeat byte
|13CB24| db $FF
|13CB25| db $04 ; Raw block
|13CB26| db $F8, $E0, $07, $1F, $7F
|13CB2B| db $83 ; Copy past
|13CB2C| dw $018C
|13CB2E| db $03 ; Raw block
|13CB2F| db $E0, $E0, $47, $47
|13CB33| db $23 ; Repeat byte
|13CB34| db $CF
|13CB35| db $0B ; Raw block
|13CB36| db $8F, $8F, $9F, $9F, $F0, $C7, $9F, $B8
|13CB3E| db $30, $30, $70, $60
|13CB42| db $4B ; Repeat word
|13CB43| dw $FEF0
|13CB45| db $03 ; Raw block
|13CB46| db $E0, $FE, $C2, $FE
|13CB4A| db $27 ; Repeat byte
|13CB4B| db $01
|13CB4C| db $4B ; Repeat word
|13CB4D| dw $E6DA
|13CB4F| db $03 ; Raw block
|13CB50| db $92, $EE, $24, $DC
|13CB54| db $26 ; Repeat byte
|13CB55| db $01
|13CB56| db $04 ; Raw block
|13CB57| db $03, $1F, $1F, $07, $07
|13CB5C| db $23 ; Repeat byte
|13CB5D| db $00
|13CB5E| db $05 ; Raw block
|13CB5F| db $08, $08, $81, $81, $C3, $C3
|13CB65| db $25 ; Repeat byte
|13CB66| db $FF
|13CB67| db $07 ; Raw block
|13CB68| db $F7, $7E, $3C, $00, $F8, $F8, $C0, $C0
|13CB70| db $23 ; Repeat byte
|13CB71| db $0C
|13CB72| db $05 ; Raw block
|13CB73| db $00, $00, $E1, $E1, $F3, $F3
|13CB79| db $23 ; Repeat byte
|13CB7A| db $FF
|13CB7B| db $07 ; Raw block
|13CB7C| db $F3, $F3, $FF, $1E, $0C, $00, $33, $3F
|13CB84| db $43 ; Repeat word
|13CB85| dw $FFF0
|13CB87| db $43 ; Repeat word
|13CB88| dw $FF90
|13CB8A| db $06 ; Raw block
|13CB8B| db $F0, $FF, $E0, $FF, $C1, $FF, $C0
|13CB92| db $26 ; Repeat byte
|13CB93| db $00
|13CB94| db $03 ; Raw block
|13CB95| db $0E, $0F, $1C, $1F
|13CB99| db $83 ; Copy past
|13CB9A| dw $019A
|13CB9C| db $00 ; Raw block
|13CB9D| db $C8
|13CB9E| db $44 ; Repeat word
|13CB9F| dw $C0FF
|13CBA1| db $03 ; Raw block
|13CBA2| db $C1, $FF, $F0, $E0
|13CBA6| db $25 ; Repeat byte
|13CBA7| db $00
|13CBA8| db $47 ; Repeat word
|13CBA9| dw $FAE4
|13CBAB| db $03 ; Raw block
|13CBAC| db $E6, $FA, $CD, $F5
|13CBB0| db $43 ; Repeat word
|13CBB1| dw $E59D
|13CBB3| db $24 ; Repeat byte
|13CBB4| db $01
|13CBB5| db $22 ; Repeat byte
|13CBB6| db $02
|13CBB7| db $01 ; Raw block
|13CBB8| db $D9, $E5
|13CBBA| db $45 ; Repeat word
|13CBBB| dw $EDD5
|13CBBD| db $01 ; Raw block
|13CBBE| db $F5, $ED
|13CBC0| db $43 ; Repeat word
|13CBC1| dw $F5ED
|13CBC3| db $01 ; Raw block
|13CBC4| db $E9, $F5
|13CBC6| db $27 ; Repeat byte
|13CBC7| db $02
|13CBC8| db $49 ; Repeat word
|13CBC9| dw $E09F
|13CBCB| db $01 ; Raw block
|13CBCC| db $DF, $E0
|13CBCE| db $43 ; Repeat word
|13CBCF| dw $F0EF
|13CBD1| db $24 ; Repeat byte
|13CBD2| db $03
|13CBD3| db $01 ; Raw block
|13CBD4| db $01, $01
|13CBD6| db $84 ; Copy past
|13CBD7| dw $0077
|13CBD9| db $05 ; Raw block
|13CBDA| db $D3, $3C, $E3, $1C, $77, $88
|13CBE0| db $43 ; Repeat word
|13CBE1| dw $C03F
|13CBE3| db $01 ; Raw block
|13CBE4| db $7F, $80
|13CBE6| db $27 ; Repeat byte
|13CBE7| db $00
|13CBE8| db $01 ; Raw block
|13CBE9| db $1F, $E0
|13CBEB| db $45 ; Repeat word
|13CBEC| dw $00FF
|13CBEE| db $01 ; Raw block
|13CBEF| db $FE, $01
|13CBF1| db $45 ; Repeat word
|13CBF2| dw $03FC
|13CBF4| db $27 ; Repeat byte
|13CBF5| db $00
|13CBF6| db $00 ; Raw block
|13CBF7| db $F8
|13CBF8| db $63 ; Increment fill
|13CBF9| db $FB
|13CBFA| db $00 ; Raw block
|13CBFB| db $FE
|13CBFC| db $29 ; Repeat byte
|13CBFD| db $FF
|13CBFE| db $01 ; Raw block
|13CBFF| db $FC, $FE
|13CC01| db $25 ; Repeat byte
|13CC02| db $FF
|13CC03| db $43 ; Repeat word
|13CC04| dw $0FF0
|13CC06| db $01 ; Raw block
|13CC07| db $FC, $83
|13CC09| db $43 ; Repeat word
|13CC0A| dw $C3FC
|13CC0C| db $01 ; Raw block
|13CC0D| db $F8, $87
|13CC0F| db $43 ; Repeat word
|13CC10| dw $0FF0
|13CC12| db $27 ; Repeat byte
|13CC13| db $FF
|13CC14| db $45 ; Repeat word
|13CC15| dw $FF00
|13CC17| db $43 ; Repeat word
|13CC18| dw $1FE0
|13CC1A| db $43 ; Repeat word
|13CC1B| dw $3FC0
|13CC1D| db $01 ; Raw block
|13CC1E| db $E0, $1F
|13CC20| db $27 ; Repeat byte
|13CC21| db $FF
|13CC22| db $07 ; Raw block
|13CC23| db $1F, $DF, $3F, $B8, $7F, $70, $FF, $F0
|13CC2B| db $44 ; Repeat word
|13CC2C| dw $F3FC
|13CC2E| db $04 ; Raw block
|13CC2F| db $83, $FC, $03, $3F, $7F
|13CC34| db $25 ; Repeat byte
|13CC35| db $FF
|13CC36| db $45 ; Repeat word
|13CC37| dw $FF00
|13CC39| db $09 ; Raw block
|13CC3A| db $3C, $C3, $7E, $81, $FF, $00, $FF, $18
|13CC42| db $FF, $3C
|13CC44| db $27 ; Repeat byte
|13CC45| db $FF
|13CC46| db $14 ; Raw block
|13CC47| db $06, $FE, $0E, $FE, $1C, $FC, $F8, $F8
|13CC4F| db $F0, $F0, $03, $03, $C7, $C7, $FF, $FF
|13CC57| db $01, $01, $03, $07, $0F
|13CC5C| db $22 ; Repeat byte
|13CC5D| db $FF
|13CC5E| db $07 ; Raw block
|13CC5F| db $08, $F8, $12, $F2, $E6, $E6, $0C, $0C
|13CC67| db $83 ; Copy past
|13CC68| dw $0456
|13CC6A| db $06 ; Raw block
|13CC6B| db $E0, $E0, $00, $00, $07, $0F, $1F
|13CC72| db $24 ; Repeat byte
|13CC73| db $FF
|13CC74| db $0F ; Raw block
|13CC75| db $F8, $FF, $C0, $FF, $07, $FF, $1C, $FC
|13CC7D| db $F7, $F7, $9F, $9F, $78, $78, $E0, $E0
|13CC85| db $22 ; Repeat byte
|13CC86| db $00
|13CC87| db $14 ; Raw block
|13CC88| db $03, $0F, $7F, $FF, $FF, $1F, $FF, $03
|13CC90| db $FF, $E0, $FF, $78, $7F, $DF, $DF, $F3
|13CC98| db $F3, $3C, $3C, $0F, $0F
|13CC9D| db $22 ; Repeat byte
|13CC9E| db $00
|13CC9F| db $00 ; Raw block
|13CCA0| db $80
|13CCA1| db $83 ; Copy past
|13CCA2| dw $0134
|13CCA4| db $1F ; Raw block
|13CCA5| db $06, $FE, $08, $F8, $10, $F0, $03, $E3
|13CCAD| db $27, $E7, $47, $C7, $8F, $8F, $1F, $1F
|13CCB5| db $01, $07, $0F, $1C, $18, $38, $70, $E0
|13CCBD| db $04, $FC, $00, $F8, $09, $F9, $13, $F3
|13CCC5| db $43 ; Repeat word
|13CCC6| dw $E727
|13CCC8| db $0B ; Raw block
|13CCC9| db $4F, $CF, $8E, $8F, $03, $07, $06, $0C
|13CCD1| db $18, $18, $30, $70
|13CCD5| db $43 ; Repeat word
|13CCD6| dw $E59D
|13CCD8| db $05 ; Raw block
|13CCD9| db $C9, $F5, $CA, $F6, $EE, $F2
|13CCDF| db $45 ; Repeat word
|13CCE0| dw $FAE4
|13CCE2| db $22 ; Repeat byte
|13CCE3| db $02
|13CCE4| db $24 ; Repeat byte
|13CCE5| db $01
|13CCE6| db $01 ; Raw block
|13CCE7| db $EA, $F6
|13CCE9| db $43 ; Repeat word
|13CCEA| dw $F2EE
|13CCEC| db $43 ; Repeat word
|13CCED| dw $F2CE
|13CCEF| db $45 ; Repeat word
|13CCF0| dw $E2DE
|13CCF2| db $27 ; Repeat byte
|13CCF3| db $01
|13CCF4| db $4B ; Repeat word
|13CCF5| dw $F8E7
|13CCF7| db $03 ; Raw block
|13CCF8| db $C7, $F8, $87, $F8
|13CCFC| db $26 ; Repeat byte
|13CCFD| db $00
|13CCFE| db $00 ; Raw block
|13CCFF| db $01
|13CD00| db $83 ; Copy past
|13CD01| dw $0078
|13CD03| db $05 ; Raw block
|13CD04| db $D1, $3E, $E1, $1E, $73, $8C
|13CD0A| db $43 ; Repeat word
|13CD0B| dw $C03F
|13CD0D| db $01 ; Raw block
|13CD0E| db $7F, $80
|13CD10| db $27 ; Repeat byte
|13CD11| db $00
|13CD12| db $03 ; Raw block
|13CD13| db $38, $3F, $72, $7F
|13CD17| db $43 ; Repeat word
|13CD18| dw $FD90
|13CD1A| db $09 ; Raw block
|13CD1B| db $F4, $FD, $C2, $FB, $00, $FB, $08, $FB
|13CD23| db $C0, $80
|13CD25| db $22 ; Repeat byte
|13CD26| db $02
|13CD27| db $22 ; Repeat byte
|13CD28| db $04
|13CD29| db $35 ; Repeat byte
|13CD2A| db $FF
|13CD2B| db $09 ; Raw block
|13CD2C| db $7F, $3F, $F8, $FB, $FC, $1D, $FE, $0E
|13CD34| db $FF, $0F
|13CD36| db $44 ; Repeat word
|13CD37| dw $CF3F
|13CD39| db $04 ; Raw block
|13CD3A| db $C1, $3F, $C0, $FC, $FE
|13CD3F| db $25 ; Repeat byte
|13CD40| db $FF
|13CD41| db $44 ; Repeat word
|13CD42| dw $01FE
|13CD44| db $02 ; Raw block
|13CD45| db $81, $FE, $F1
|13CD48| db $43 ; Repeat word
|13CD49| dw $F0FF
|13CD4B| db $29 ; Repeat byte
|13CD4C| db $FF
|13CD4D| db $03 ; Raw block
|13CD4E| db $7F, $3F, $F8, $07
|13CD52| db $45 ; Repeat word
|13CD53| dw $3FC0
|13CD55| db $46 ; Repeat word
|13CD56| dw $FF00
|13CD58| db $29 ; Repeat byte
|13CD59| db $FF
|13CD5A| db $08 ; Raw block
|13CD5B| db $3C, $FF, $18, $FF, $00, $7E, $81, $3C
|13CD63| db $C3
|13CD64| db $44 ; Repeat word
|13CD65| dw $FF00
|13CD67| db $28 ; Repeat byte
|13CD68| db $FF
|13CD69| db $14 ; Raw block
|13CD6A| db $C0, $FF, $8F, $F0, $1B, $EF, $2B, $CF
|13CD72| db $35, $D0, $3F, $CA, $BF, $C0, $DF, $E0
|13CD7A| db $00, $00, $0B, $1B, $0A
|13CD7F| db $22 ; Repeat byte
|13CD80| db $00
|13CD81| db $0E ; Raw block
|13CD82| db $C0, $3F, $F0, $0F, $AF, $B0, $38, $F8
|13CD8A| db $EF, $CF, $FF, $DF, $3F, $C0, $3F
|13CD91| db $22 ; Repeat byte
|13CD92| db $00
|13CD93| db $05 ; Raw block
|13CD94| db $C0, $3F, $DF, $C0, $00, $C0
|13CD9A| db $FF ; End of GFX 3B

;===================================================================================================

GFX_3C:
|13CD9B| db $47 ; Repeat word
|13CD9C| dw $00FF
|13CD9E| db $03 ; Raw block
|13CD9F| db $F3, $0C, $FC, $03
|13CDA3| db $43 ; Repeat word
|13CDA4| dw $00FF
|13CDA6| db $01 ; Raw block
|13CDA7| db $1F, $07
|13CDA9| db $25 ; Repeat byte
|13CDAA| db $00
|13CDAB| db $47 ; Repeat word
|13CDAC| dw $00FF
|13CDAE| db $03 ; Raw block
|13CDAF| db $CF, $30, $3F, $C0
|13CDB3| db $43 ; Repeat word
|13CDB4| dw $00FF
|13CDB6| db $01 ; Raw block
|13CDB7| db $F8, $E0
|13CDB9| db $25 ; Repeat byte
|13CDBA| db $00
|13CDBB| db $43 ; Repeat word
|13CDBC| dw $F437
|13CDBE| db $17 ; Raw block
|13CDBF| db $67, $E4, $63, $E4, $EB, $EC, $CB, $CC
|13CDC7| db $8B, $8C, $13, $1C, $08, $08, $18, $18
|13CDCF| db $10, $30, $70, $E0, $00, $FF, $C0, $3F
|13CDD7| db $43 ; Repeat word
|13CDD8| dw $1FE0
|13CDDA| db $01 ; Raw block
|13CDDB| db $F0, $0F
|13CDDD| db $43 ; Repeat word
|13CDDE| dw $07F8
|13CDE0| db $01 ; Raw block
|13CDE1| db $B8, $C7
|13CDE3| db $25 ; Repeat byte
|13CDE4| db $FF
|13CDE5| db $07 ; Raw block
|13CDE6| db $3F, $1F, $01, $FE, $07, $F8, $0F, $F0
|13CDEE| db $43 ; Repeat word
|13CDEF| dw $E01F
|13CDF1| db $43 ; Repeat word
|13CDF2| dw $C03F
|13CDF4| db $01 ; Raw block
|13CDF5| db $7C, $83
|13CDF7| db $24 ; Repeat byte
|13CDF8| db $FF
|13CDF9| db $06 ; Raw block
|13CDFA| db $FE, $FC, $F8, $C0, $3F, $F0, $0F
|13CE01| db $49 ; Repeat word
|13CE02| dw $00FF
|13CE04| db $01 ; Raw block
|13CE05| db $0F, $F0
|13CE07| db $24 ; Repeat byte
|13CE08| db $FF
|13CE09| db $E0, $26 ; EXT Raw block
|13CE0B| db $0F, $07, $00, $DF, $1F, $DF, $5F, $BD
|13CE13| db $BD, $7F, $7F, $DD, $DD, $E6, $E7, $D8
|13CE1B| db $DE, $A1, $B9, $3F, $3F, $7F, $FF, $FE
|13CE23| db $F8, $E1, $C6, $FF, $00, $1F, $E0, $4F
|13CE2B| db $70, $27, $B8, $93, $DC, $C9, $EE
|13CE32| db $43 ; Repeat word
|13CE33| dw $F6E5
|13CE35| db $1F ; Raw block
|13CE36| db $0F, $07, $83, $41, $20, $90, $C8, $C8
|13CE3E| db $B0, $BF, $F3, $F3, $FD, $FD, $F7, $F7
|13CE46| db $1F, $1F, $FB, $FB, $EF, $EF, $B8, $B8
|13CE4E| db $C0, $FC, $FE, $F8, $E0, $07, $1F, $7F
|13CE56| db $43 ; Repeat word
|13CE57| dw $CC34
|13CE59| db $13 ; Raw block
|13CE5A| db $DA, $E6, $ED, $F3, $F6, $F9, $DB, $DC
|13CE62| db $F7, $F7, $1C, $1C, $03, $03, $01, $00
|13CE6A| db $00, $E0, $F8, $FF
|13CE6E| db $25 ; Repeat byte
|13CE6F| db $C0
|13CE70| db $23 ; Repeat byte
|13CE71| db $E0
|13CE72| db $05 ; Raw block
|13CE73| db $F0, $F0, $F8, $F8, $CF, $FF
|13CE79| db $22 ; Repeat byte
|13CE7A| db $3F
|13CE7B| db $13 ; Raw block
|13CE7C| db $1F, $1F, $0F, $07, $00, $00, $FF, $0C
|13CE84| db $F3, $06, $F9, $76, $89, $3A, $C5, $18
|13CE8C| db $E7, $00, $FF, $00
|13CE90| db $28 ; Repeat byte
|13CE91| db $FF
|13CE92| db $49 ; Repeat word
|13CE93| dw $FF00
|13CE95| db $05 ; Raw block
|13CE96| db $01, $FE, $03, $FC, $07, $F8
|13CE9C| db $27 ; Repeat byte
|13CE9D| db $FF
|13CE9E| db $05 ; Raw block
|13CE9F| db $1F, $E0, $3F, $C1, $7F, $87
|13CEA5| db $46 ; Repeat word
|13CEA6| dw $8F7F
|13CEA8| db $02 ; Raw block
|13CEA9| db $87, $3F, $C3
|13CEAC| db $27 ; Repeat byte
|13CEAD| db $FF
|13CEAE| db $84 ; Copy past
|13CEAF| dw $0062
|13CEB1| db $00 ; Raw block
|13CEB2| db $E1
|13CEB3| db $43 ; Repeat word
|13CEB4| dw $E31F
|13CEB6| db $01 ; Raw block
|13CEB7| db $0F, $F1
|13CEB9| db $43 ; Repeat word
|13CEBA| dw $F807
|13CEBC| db $27 ; Repeat byte
|13CEBD| db $FF
|13CEBE| db $45 ; Repeat word
|13CEBF| dw $FF00
|13CEC1| db $09 ; Raw block
|13CEC2| db $1C, $E3, $3E, $C1, $FF, $00, $FF, $18
|13CECA| db $FF, $3C
|13CECC| db $27 ; Repeat byte
|13CECD| db $FF
|13CECE| db $03 ; Raw block
|13CECF| db $0F, $F0, $F3, $0C
|13CED3| db $43 ; Repeat word
|13CED4| dw $00FF
|13CED6| db $86 ; Copy past
|13CED7| dw $0180
|13CED9| db $28 ; Repeat byte
|13CEDA| db $00
|13CEDB| db $03 ; Raw block
|13CEDC| db $F8, $07, $E7, $18
|13CEE0| db $43 ; Repeat word
|13CEE1| dw $00FF
|13CEE3| db $06 ; Raw block
|13CEE4| db $F0, $0F, $CF, $30, $FF, $00, $FF
|13CEEB| db $28 ; Repeat byte
|13CEEC| db $00
|13CEED| db $1B ; Raw block
|13CEEE| db $33, $3C, $63, $7C, $C6, $F9, $8E, $F1
|13CEF6| db $1C, $E3, $38, $C7, $70, $8F, $E0, $1F
|13CEFE| db $C1, $81, $03, $03, $07, $0F, $1F, $7F
|13CF06| db $D0, $EF, $50, $6F
|13CF0A| db $47 ; Repeat word
|13CF0B| dw $6758
|13CF0D| db $43 ; Repeat word
|13CF0E| dw $6F10
|13CF10| db $00 ; Raw block
|13CF11| db $0F
|13CF12| db $26 ; Repeat byte
|13CF13| db $8F
|13CF14| db $E0, $67 ; EXT Raw block
|13CF16| db $78, $87, $F3, $0F, $E4, $1C, $E8, $19
|13CF1E| db $D1, $33, $E2, $26, $85, $45, $13, $93
|13CF26| db $F0, $E0, $C3, $C6, $8C, $19, $3B, $7F
|13CF2E| db $07, $F8, $F3, $FC, $08, $0F, $03, $F3
|13CF36| db $F0, $FC, $F4, $F7, $7B, $7B, $DC, $DC
|13CF3E| db $00, $00, $F0, $0C, $03, $F8, $FC, $FF
|13CF46| db $43, $63, $8E, $CF, $18, $9F, $31, $BE
|13CF4E| db $33, $BC, $27, $38, $4F, $70, $8F, $F0
|13CF56| db $9C, $30, $60, $40, $40, $C1, $83, $07
|13CF5E| db $46, $57, $F3, $FB, $F8, $FC, $FC, $FF
|13CF66| db $FD, $FD, $7F, $7F, $BD, $BD, $CF, $CF
|13CF6E| db $E8, $E4, $F3, $F8, $FE, $FF, $7F, $3F
|13CF76| db $EC, $EC, $F9, $F9, $E3, $E3, $47, $47
|13CF7E| db $43 ; Repeat word
|13CF7F| dw $CFCE
|13CF81| db $0F ; Raw block
|13CF82| db $8C, $8F, $98, $9F, $F3, $C6, $9C, $B8
|13CF8A| db $30, $30, $70, $60, $00, $00, $60, $60
|13CF92| db $83 ; Copy past
|13CF93| dw $00FA
|13CF95| db $0C ; Raw block
|13CF96| db $FC, $FC, $DF, $FF, $8F, $FF, $87, $FF
|13CF9E| db $FF, $9F, $0F, $07, $03
|13CFA3| db $22 ; Repeat byte
|13CFA4| db $00
|13CFA5| db $0B ; Raw block
|13CFA6| db $C7, $FF, $CB, $F7, $ED, $F3, $E4, $FB
|13CFAE| db $E7, $F8, $E6, $F9
|13CFB2| db $43 ; Repeat word
|13CFB3| dw $FBE5
|13CFB5| db $27 ; Repeat byte
|13CFB6| db $00
|13CFB7| db $44 ; Repeat word
|13CFB8| dw $10FF
|13CFBA| db $43 ; Repeat word
|13CFBB| dw $FF20
|13CFBD| db $43 ; Repeat word
|13CFBE| dw $FF40
|13CFC0| db $02 ; Raw block
|13CFC1| db $80, $FF, $80
|13CFC4| db $27 ; Repeat byte
|13CFC5| db $00
|13CFC6| db $03 ; Raw block
|13CFC7| db $7F, $80, $FF, $01
|13CFCB| db $46 ; Repeat word
|13CFCC| dw $1FFF
|13CFCE| db $43 ; Repeat word
|13CFCF| dw $FF3F
|13CFD1| db $00 ; Raw block
|13CFD2| db $7F
|13CFD3| db $27 ; Repeat byte
|13CFD4| db $FF
|13CFD5| db $45 ; Repeat word
|13CFD6| dw $E31F
|13CFD8| db $05 ; Raw block
|13CFD9| db $3F, $C3, $7F, $87, $FF, $0F
|13CFDF| db $83 ; Copy past
|13CFE0| dw $02A8
|13CFE2| db $27 ; Repeat byte
|13CFE3| db $FF
|13CFE4| db $05 ; Raw block
|13CFE5| db $00, $FF, $3E, $C1, $7F, $80
|13CFEB| db $83 ; Copy past
|13CFEC| dw $016B
|13CFEE| db $01 ; Raw block
|13CFEF| db $FF, $3E
|13CFF1| db $83 ; Copy past
|13CFF2| dw $02AC
|13CFF4| db $27 ; Repeat byte
|13CFF5| db $FF
|13CFF6| db $85 ; Copy past
|13CFF7| dw $0150
|13CFF9| db $05 ; Raw block
|13CFFA| db $FF, $03, $FF, $07, $FF, $0F
|13D000| db $2B ; Repeat byte
|13D001| db $FF
|13D002| db $43 ; Repeat word
|13D003| dw $FC03
|13D005| db $02 ; Raw block
|13D006| db $06, $F9, $0E
|13D009| db $84 ; Copy past
|13D00A| dw $01B7
|13D00C| db $03 ; Raw block
|13D00D| db $F0, $0F, $C0, $3F
|13D011| db $22 ; Repeat byte
|13D012| db $01
|13D013| db $83 ; Copy past
|13D014| dw $01C3
|13D016| db $00 ; Raw block
|13D017| db $FF
|13D018| db $43 ; Repeat word
|13D019| dw $FC03
|13D01B| db $8B ; Copy past
|13D01C| dw $0304
|13D01E| db $22 ; Repeat byte
|13D01F| db $01
|13D020| db $84 ; Copy past
|13D021| dw $0313
|13D023| db $03 ; Raw block
|13D024| db $79, $7E, $F1, $FE
|13D028| db $43 ; Repeat word
|13D029| dw $FCE3
|13D02B| db $45 ; Repeat word
|13D02C| dw $FCC3
|13D02E| db $02 ; Raw block
|13D02F| db $C7, $F8, $80
|13D032| db $24 ; Repeat byte
|13D033| db $00
|13D034| db $01 ; Raw block
|13D035| db $01, $01
|13D037| db $4F ; Repeat word
|13D038| dw $CF30
|13D03A| db $27 ; Repeat byte
|13D03B| db $1F
|13D03C| db $45 ; Repeat word
|13D03D| dw $6DA5
|13D03F| db $09 ; Raw block
|13D040| db $AA, $6E, $95, $77, $D1, $33, $D9, $3B
|13D048| db $E9, $1B
|13D04A| db $22 ; Repeat byte
|13D04B| db $13
|13D04C| db $0C ; Raw block
|13D04D| db $11, $08, $8C, $84, $C4, $3D, $C3, $7D
|13D055| db $85, $EB, $1B, $D6, $36
|13D05A| db $47 ; Repeat word
|13D05B| dw $6DA5
|13D05D| db $03 ; Raw block
|13D05E| db $F8, $E3, $C4, $89
|13D062| db $23 ; Repeat byte
|13D063| db $13
|13D064| db $E0, $26 ; EXT Raw block
|13D066| db $8F, $8F, $73, $73, $E9, $79, $F4, $3C
|13D06E| db $CB, $2F, $F4, $17, $E8, $18, $77, $8F
|13D076| db $FF, $8F, $07, $83, $90, $C8, $C7, $E0
|13D07E| db $7B, $7B, $BF, $BF, $EF, $EF, $A0, $BF
|13D086| db $D0, $F0, $27, $E7, $1F, $1F, $FC
|13D08D| db $22 ; Repeat byte
|13D08E| db $FF
|13D08F| db $05 ; Raw block
|13D090| db $F0, $C0, $0F, $18, $E0, $00
|13D096| db $83 ; Copy past
|13D097| dw $0050
|13D099| db $10 ; Raw block
|13D09A| db $7C, $83, $7F, $80, $3F, $C0, $1F, $E0
|13D0A2| db $0F, $F0, $03, $FC, $E0, $E0, $F0, $F8
|13D0AA| db $FC
|13D0AB| db $22 ; Repeat byte
|13D0AC| db $FF
|13D0AD| db $0F ; Raw block
|13D0AE| db $83, $FF, $D1, $EF, $D8, $E7, $CC, $F3
|13D0B6| db $C6, $F9, $C7, $F8, $CF, $F0, $DF, $E1
|13D0BE| db $28 ; Repeat byte
|13D0BF| db $00
|13D0C0| db $4D ; Repeat word
|13D0C1| dw $00FF
|13D0C3| db $2C ; Repeat byte
|13D0C4| db $FF
|13D0C5| db $09 ; Raw block
|13D0C6| db $8F, $8F, $67, $67, $0F, $0F, $76, $76
|13D0CE| db $FC, $FC
|13D0D0| db $25 ; Repeat byte
|13D0D1| db $FF
|13D0D2| db $04 ; Raw block
|13D0D3| db $F7, $8F, $FF, $FF, $B9
|13D0D8| db $4C ; Repeat word
|13D0D9| dw $FF00
|13D0DB| db $02 ; Raw block
|13D0DC| db $8D, $00, $B9
|13D0DF| db $25 ; Repeat byte
|13D0E0| db $FF
|13D0E1| db $00 ; Raw block
|13D0E2| db $8D
|13D0E3| db $4E ; Repeat word
|13D0E4| dw $FF00
|13D0E6| db $29 ; Repeat byte
|13D0E7| db $FF
|13D0E8| db $48 ; Repeat word
|13D0E9| dw $FF00
|13D0EB| db $45 ; Repeat word
|13D0EC| dw $01FE
|13D0EE| db $27 ; Repeat byte
|13D0EF| db $FF
|13D0F0| db $43 ; Repeat word
|13D0F1| dw $FF00
|13D0F3| db $83 ; Copy past
|13D0F4| dw $0078
|13D0F6| db $01 ; Raw block
|13D0F7| db $F8, $07
|13D0F9| db $43 ; Repeat word
|13D0FA| dw $03FC
|13D0FC| db $01 ; Raw block
|13D0FD| db $FE, $01
|13D0FF| db $2D ; Repeat byte
|13D100| db $FF
|13D101| db $03 ; Raw block
|13D102| db $7E, $FF, $38, $FF
|13D106| db $83 ; Copy past
|13D107| dw $0060
|13D109| db $00 ; Raw block
|13D10A| db $FF
|13D10B| db $26 ; Repeat byte
|13D10C| db $00
|13D10D| db $01 ; Raw block
|13D10E| db $01, $07
|13D110| db $25 ; Repeat byte
|13D111| db $FF
|13D112| db $08 ; Raw block
|13D113| db $1E, $FF, $0C, $FF, $80, $7F, $E0, $1F
|13D11B| db $FF
|13D11C| db $26 ; Repeat byte
|13D11D| db $00
|13D11E| db $11 ; Raw block
|13D11F| db $80, $E0, $87, $F8, $0F, $F0, $1E, $E1
|13D127| db $3E, $C1, $7C, $83, $78, $87, $F0, $0F
|13D12F| db $E0, $1F
|13D131| db $84 ; Copy past
|13D132| dw $0312
|13D134| db $04 ; Raw block
|13D135| db $3F, $7F, $FF, $30, $CF
|13D13A| db $47 ; Repeat word
|13D13B| dw $9F60
|13D13D| db $07 ; Raw block
|13D13E| db $40, $BF, $C0, $3F, $80, $7F, $1F, $1F
|13D146| db $23 ; Repeat byte
|13D147| db $3F
|13D148| db $01 ; Raw block
|13D149| db $7F, $7F
|13D14B| db $45 ; Repeat word
|13D14C| dw $1BE9
|13D14E| db $03 ; Raw block
|13D14F| db $D2, $36, $A1, $65
|13D153| db $45 ; Repeat word
|13D154| dw $6DA5
|13D156| db $22 ; Repeat byte
|13D157| db $C4
|13D158| db $01 ; Raw block
|13D159| db $89, $1B
|13D15B| db $22 ; Repeat byte
|13D15C| db $13
|13D15D| db $43 ; Repeat word
|13D15E| dw $6DA5
|13D160| db $1B ; Raw block
|13D161| db $A2, $66, $D0, $32, $68, $99, $39, $C5
|13D169| db $1E, $E2, $0F, $F1, $13, $13, $19, $8D
|13D171| db $C6, $E2, $F9, $FC, $83, $30, $83, $20
|13D179| db $83, $08, $83, $18
|13D17D| db $87 ; Copy past
|13D17E| dw $0510
|13D180| db $27 ; Repeat byte
|13D181| db $7C
|13D182| db $05 ; Raw block
|13D183| db $F0, $FF, $03, $FC, $0F, $F0
|13D189| db $45 ; Repeat word
|13D18A| dw $00FF
|13D18C| db $03 ; Raw block
|13D18D| db $F8, $07, $E0, $1F
|13D191| db $22 ; Repeat byte
|13D192| db $00
|13D193| db $01 ; Raw block
|13D194| db $03, $0F
|13D196| db $22 ; Repeat byte
|13D197| db $FF
|13D198| db $85 ; Copy past
|13D199| dw $0048
|13D19B| db $01 ; Raw block
|13D19C| db $F0, $0F
|13D19E| db $43 ; Repeat word
|13D19F| dw $07F8
|13D1A1| db $43 ; Repeat word
|13D1A2| dw $03FC
|13D1A4| db $25 ; Repeat byte
|13D1A5| db $FF
|13D1A6| db $01 ; Raw block
|13D1A7| db $7F, $3F
|13D1A9| db $4E ; Repeat word
|13D1AA| dw $FF00
|13D1AC| db $2A ; Repeat byte
|13D1AD| db $FF
|13D1AE| db $09 ; Raw block
|13D1AF| db $BF, $BF, $FF, $FF, $FC, $FC, $F1, $F1
|13D1B7| db $DF, $DF
|13D1B9| db $2F ; Repeat byte
|13D1BA| db $FF
|13D1BB| db $0B ; Raw block
|13D1BC| db $C3, $C3, $99, $99, $79, $79, $71, $71
|13D1C4| db $83, $83, $FE, $FE
|13D1C8| db $23 ; Repeat byte
|13D1C9| db $FF
|13D1CA| db $09 ; Raw block
|13D1CB| db $FE, $FE, $7C, $81, $00, $FF, $6C, $93
|13D1D3| db $FE, $01
|13D1D5| db $49 ; Repeat word
|13D1D6| dw $00FF
|13D1D8| db $27 ; Repeat byte
|13D1D9| db $FF
|13D1DA| db $01 ; Raw block
|13D1DB| db $00, $FF
|13D1DD| db $43 ; Repeat word
|13D1DE| dw $3FC0
|13D1E0| db $01 ; Raw block
|13D1E1| db $F8, $07
|13D1E3| db $43 ; Repeat word
|13D1E4| dw $03FC
|13D1E6| db $43 ; Repeat word
|13D1E7| dw $00FF
|13D1E9| db $27 ; Repeat byte
|13D1EA| db $FF
|13D1EB| db $05 ; Raw block
|13D1EC| db $00, $FF, $F0, $0F, $FC, $03
|13D1F2| db $49 ; Repeat word
|13D1F3| dw $00FF
|13D1F5| db $28 ; Repeat byte
|13D1F6| db $FF
|13D1F7| db $4E ; Repeat word
|13D1F8| dw $FF00
|13D1FA| db $27 ; Repeat byte
|13D1FB| db $FF
|13D1FC| db $FF ; End of GFX 3C

;===================================================================================================

GFX_3D:
|13D1FD| db $03 ; Raw block
|13D1FE| db $CF, $40, $CF, $48
|13D202| db $45 ; Repeat word
|13D203| dw $60E7
|13D205| db $01 ; Raw block
|13D206| db $CF, $48
|13D208| db $43 ; Repeat word
|13D209| dw $40CF
|13D20B| db $01 ; Raw block
|13D20C| db $37, $33
|13D20E| db $22 ; Repeat byte
|13D20F| db $1B
|13D210| db $06 ; Raw block
|13D211| db $33, $37, $37, $FF, $00, $FE, $01
|13D218| db $43 ; Repeat word
|13D219| dw $03FC
|13D21B| db $43 ; Repeat word
|13D21C| dw $07F8
|13D21E| db $03 ; Raw block
|13D21F| db $F0, $0F, $F1, $0E
|13D223| db $27 ; Repeat byte
|13D224| db $FF
|13D225| db $06 ; Raw block
|13D226| db $70, $FF, $78, $FF, $3F, $FF, $1F
|13D22D| db $44 ; Repeat word
|13D22E| dw $00FF
|13D230| db $43 ; Repeat word
|13D231| dw $00FF
|13D233| db $03 ; Raw block
|13D234| db $8F, $87, $C0, $E0
|13D238| db $23 ; Repeat byte
|13D239| db $FF
|13D23A| db $02 ; Raw block
|13D23B| db $00, $FF, $00
|13D23E| db $24 ; Repeat byte
|13D23F| db $FF
|13D240| db $43 ; Repeat word
|13D241| dw $FF00
|13D243| db $44 ; Repeat word
|13D244| dw $00FF
|13D246| db $02 ; Raw block
|13D247| db $FF, $00, $00
|13D24A| db $23 ; Repeat byte
|13D24B| db $FF
|13D24C| db $E0, $2B ; EXT Raw block
|13D24E| db $E8, $18, $D4, $34, $A4, $64, $C7, $47
|13D256| db $CF, $4F, $DB, $5F, $FD, $7F, $DE, $5F
|13D25E| db $07, $0B, $1B, $3B, $38, $30, $20, $20
|13D266| db $10, $10, $23, $23, $44, $44, $FF, $FF
|13D26E| db $9C, $FF, $CF, $FF, $80, $FF, $FF, $00
|13D276| db $EF, $DC, $BB, $BB
|13D27A| db $23 ; Repeat byte
|13D27B| db $00
|13D27C| db $03 ; Raw block
|13D27D| db $3C, $C3, $5A, $BD
|13D281| db $43 ; Repeat word
|13D282| dw $7EA5
|13D284| db $13 ; Raw block
|13D285| db $99, $5A, $A5, $66, $42, $BD, $3C, $C3
|13D28D| db $C3, $81, $00, $00, $24, $18, $81, $C3
|13D295| db $C6, $47, $81, $41
|13D299| db $43 ; Repeat word
|13D29A| dw $6181
|13D29C| db $01 ; Raw block
|13D29D| db $A1, $71
|13D29F| db $43 ; Repeat word
|13D2A0| dw $79B1
|13D2A2| db $14 ; Raw block
|13D2A3| db $B8, $7C, $38, $3F, $1F, $1F, $0F, $07
|13D2AB| db $07, $03, $1A, $EA, $19, $09, $FF, $EF
|13D2B3| db $FF, $E0, $FF, $F0, $F8
|13D2B8| db $44 ; Repeat word
|13D2B9| dw $FEF7
|13D2BB| db $11 ; Raw block
|13D2BC| db $05, $E6, $E7, $20, $30, $F0, $F0, $80
|13D2C4| db $5A, $5A, $24, $24, $7E, $7E, $FF, $00
|13D2CC| db $A5, $5A
|13D2CE| db $43 ; Repeat word
|13D2CF| dw $24DB
|13D2D1| db $04 ; Raw block
|13D2D2| db $A5, $5A, $A5, $DB, $FF
|13D2D7| db $25 ; Repeat byte
|13D2D8| db $00
|13D2D9| db $04 ; Raw block
|13D2DA| db $FF, $00, $00, $F9, $F9
|13D2DF| db $27 ; Repeat byte
|13D2E0| db $FF
|13D2E1| db $09 ; Raw block
|13D2E2| db $3F, $3F, $00, $FF, $FF, $7F, $7F, $FF
|13D2EA| db $3F, $CE
|13D2EC| db $22 ; Repeat byte
|13D2ED| db $00
|13D2EE| db $E0, $35 ; EXT Raw block
|13D2F0| db $07, $00, $7F, $7F, $A1, $FF, $5E, $F8
|13D2F8| db $59, $EC, $5F, $70, $0E, $00, $07, $7F
|13D300| db $E1, $C0, $C6, $C0, $41, $07, $FC, $0C
|13D308| db $FA, $18, $F4, $70, $CF, $E0, $20, $4F
|13D310| db $CF, $18, $18, $73, $73, $FC, $F9, $F3
|13D318| db $C0, $1F, $30, $E7, $8C, $1F, $00, $3F
|13D320| db $1F, $73, $30, $E7, $20, $CF
|13D326| db $46 ; Repeat word
|13D327| dw $DF40
|13D329| db $04 ; Raw block
|13D32A| db $00, $00, $0C, $1B, $37
|13D32F| db $22 ; Repeat byte
|13D330| db $2F
|13D331| db $05 ; Raw block
|13D332| db $FF, $00, $38, $38, $83, $44
|13D338| db $83 ; Copy past
|13D339| dw $0059
|13D33B| db $01 ; Raw block
|13D33C| db $FE, $01
|13D33E| db $43 ; Repeat word
|13D33F| dw $00FF
|13D341| db $03 ; Raw block
|13D342| db $00, $C7, $38, $83
|13D346| db $24 ; Repeat byte
|13D347| db $FF
|13D348| db $88 ; Copy past
|13D349| dw $0151
|13D34B| db $05 ; Raw block
|13D34C| db $3F, $FF, $70, $FF, $60, $FF
|13D352| db $84 ; Copy past
|13D353| dw $0160
|13D355| db $02 ; Raw block
|13D356| db $C0, $8F, $9F
|13D359| db $83 ; Copy past
|13D35A| dw $0000
|13D35C| db $45 ; Repeat word
|13D35D| dw $60E7
|13D35F| db $01 ; Raw block
|13D360| db $CF, $48
|13D362| db $43 ; Repeat word
|13D363| dw $40CF
|13D365| db $01 ; Raw block
|13D366| db $37, $33
|13D368| db $22 ; Repeat byte
|13D369| db $1B
|13D36A| db $02 ; Raw block
|13D36B| db $33, $37, $37
|13D36E| db $43 ; Repeat word
|13D36F| dw $1CE3
|13D371| db $0B ; Raw block
|13D372| db $C7, $38, $CF, $30, $8F, $70, $9F, $60
|13D37A| db $1F, $E0, $3F, $C0
|13D37E| db $28 ; Repeat byte
|13D37F| db $FF
|13D380| db $4E ; Repeat word
|13D381| dw $FF00
|13D383| db $27 ; Repeat byte
|13D384| db $FF
|13D385| db $4F ; Repeat word
|13D386| dw $FF60
|13D388| db $27 ; Repeat byte
|13D389| db $9F
|13D38A| db $4C ; Repeat word
|13D38B| dw $00FF
|13D38D| db $02 ; Raw block
|13D38E| db $03, $F6, $0E
|13D391| db $24 ; Repeat byte
|13D392| db $FF
|13D393| db $02 ; Raw block
|13D394| db $F8, $F0, $E1
|13D397| db $4C ; Repeat word
|13D398| dw $00FF
|13D39A| db $02 ; Raw block
|13D39B| db $FF, $0C, $0C
|13D39E| db $24 ; Repeat byte
|13D39F| db $FF
|13D3A0| db $E0, $3C ; EXT Raw block
|13D3A2| db $00, $00, $F3, $DF, $20, $F9, $01, $F6
|13D3AA| db $26, $D5, $65, $DD, $65, $FE, $5E, $EF
|13D3B2| db $31, $FF, $21, $E0, $87, $0F, $0F, $03
|13D3BA| db $1F, $21, $21, $FC, $7F, $9E, $3E, $8E
|13D3C2| db $5E, $46, $2E, $23, $17, $10, $0B, $08
|13D3CA| db $04, $07, $00, $00, $41, $21, $11, $08
|13D3D2| db $04, $03, $00, $8E, $87, $08, $07, $0F
|13D3DA| db $07, $88, $87, $FF, $F0
|13D3DF| db $83 ; Copy past
|13D3E0| dw $00F0
|13D3E2| db $06 ; Raw block
|13D3E3| db $FF, $00, $70, $F0, $F7, $70, $00
|13D3EA| db $43 ; Repeat word
|13D3EB| dw $FF00
|13D3ED| db $22 ; Repeat byte
|13D3EE| db $00
|13D3EF| db $83 ; Copy past
|13D3F0| dw $003B
|13D3F2| db $84 ; Copy past
|13D3F3| dw $024B
|13D3F5| db $84 ; Copy past
|13D3F6| dw $024A
|13D3F8| db $00 ; Raw block
|13D3F9| db $FF
|13D3FA| db $22 ; Repeat byte
|13D3FB| db $00
|13D3FC| db $03 ; Raw block
|13D3FD| db $FF, $00, $0E, $0E
|13D401| db $23 ; Repeat byte
|13D402| db $30
|13D403| db $03 ; Raw block
|13D404| db $03, $03, $C3, $C3
|13D408| db $85 ; Copy past
|13D409| dw $024A
|13D40B| db $13 ; Raw block
|13D40C| db $F1, $CF, $CF, $FC, $3C, $00, $FF, $00
|13D414| db $78, $24, $39, $11, $1B, $13, $1B, $03
|13D41C| db $2B, $13, $6B, $33
|13D420| db $43 ; Repeat word
|13D421| dw $53CB
|13D423| db $02 ; Raw block
|13D424| db $63, $36, $14
|13D427| db $22 ; Repeat byte
|13D428| db $04
|13D429| db $09 ; Raw block
|13D42A| db $24, $24, $C7, $DF, $92, $9E, $38, $3E
|13D432| db $32, $35
|13D434| db $43 ; Repeat word
|13D435| dw $3433
|13D437| db $06 ; Raw block
|13D438| db $32, $35, $14, $1A, $20, $61, $C1
|13D43F| db $23 ; Repeat byte
|13D440| db $C8
|13D441| db $00 ; Raw block
|13D442| db $E1
|13D443| db $88 ; Copy past
|13D444| dw $0150
|13D446| db $22 ; Repeat byte
|13D447| db $FF
|13D448| db $44 ; Repeat word
|13D449| dw $FF00
|13D44B| db $83 ; Copy past
|13D44C| dw $0161
|13D44E| db $83 ; Copy past
|13D44F| dw $0100
|13D451| db $0E ; Raw block
|13D452| db $00, $FF, $00, $C0, $3F, $CF, $3F, $C7
|13D45A| db $3F, $E3, $1F, $E7, $1F, $CF, $3F
|13D461| db $27 ; Repeat byte
|13D462| db $00
|13D463| db $43 ; Repeat word
|13D464| dw $00FF
|13D466| db $0B ; Raw block
|13D467| db $00, $FF, $C7, $FF, $F1, $FF, $F8, $FF
|13D46F| db $F1, $FF, $8F, $FF
|13D473| db $27 ; Repeat byte
|13D474| db $00
|13D475| db $05 ; Raw block
|13D476| db $EE, $61, $EE, $69, $E6, $61
|13D47C| db $43 ; Repeat word
|13D47D| dw $63E4
|13D47F| db $07 ; Raw block
|13D480| db $ED, $6A, $EF, $68, $E7, $64, $17, $13
|13D488| db $22 ; Repeat byte
|13D489| db $1B
|13D48A| db $04 ; Raw block
|13D48B| db $13, $13, $19, $3F, $C0
|13D490| db $43 ; Repeat word
|13D491| dw $807F
|13D493| db $49 ; Repeat word
|13D494| dw $00FF
|13D496| db $27 ; Repeat byte
|13D497| db $FF
|13D498| db $4E ; Repeat word
|13D499| dw $FF00
|13D49B| db $29 ; Repeat byte
|13D49C| db $FF
|13D49D| db $00 ; Raw block
|13D49E| db $00
|13D49F| db $46 ; Repeat word
|13D4A0| dw $7FC0
|13D4A2| db $06 ; Raw block
|13D4A3| db $71, $C0, $7F, $C0, $72, $C0, $7F
|13D4AA| db $23 ; Repeat byte
|13D4AB| db $00
|13D4AC| db $02 ; Raw block
|13D4AD| db $0E, $00, $0D
|13D4B0| db $84 ; Copy past
|13D4B1| dw $025A
|13D4B3| db $0B ; Raw block
|13D4B4| db $F1, $FF, $CF, $FF, $20, $E0, $40, $DF
|13D4BC| db $DF, $E0, $34, $4C
|13D4C0| db $23 ; Repeat byte
|13D4C1| db $00
|13D4C2| db $03 ; Raw block
|13D4C3| db $1F, $20, $00, $83
|13D4C7| db $83 ; Copy past
|13D4C8| dw $003A
|13D4CA| db $05 ; Raw block
|13D4CB| db $F9, $FF, $C7, $FF, $C0, $C0
|13D4D1| db $83 ; Copy past
|13D4D2| dw $003A
|13D4D4| db $01 ; Raw block
|13D4D5| db $10, $10
|13D4D7| db $23 ; Repeat byte
|13D4D8| db $00
|13D4D9| db $1E ; Raw block
|13D4DA| db $3F, $00, $00, $EF, $FD, $21, $DD, $1C
|13D4E2| db $B8, $00, $A5, $38, $DB, $5C, $E0, $60
|13D4EA| db $BF, $7F, $DF, $3F, $23, $3E, $47, $42
|13D4F2| db $60, $3F, $1F, $00, $1F, $FE, $FD
|13D4F9| db $44 ; Repeat word
|13D4FA| dw $F9FE
|13D4FC| db $00 ; Raw block
|13D4FD| db $F1
|13D4FE| db $44 ; Repeat word
|13D4FF| dw $E1FE
|13D501| db $01 ; Raw block
|13D502| db $81, $FE
|13D504| db $27 ; Repeat byte
|13D505| db $00
|13D506| db $0F ; Raw block
|13D507| db $BF, $7E, $9D, $7E, $8D, $7E, $A1, $7E
|13D50F| db $B1, $7E, $BD, $7E, $9D, $7E, $4D, $BE
|13D517| db $27 ; Repeat byte
|13D518| db $00
|13D519| db $83 ; Copy past
|13D51A| dw $02D2
|13D51C| db $0B ; Raw block
|13D51D| db $AE, $7F, $6E, $FF, $6E, $F9, $6F, $F8
|13D525| db $6B, $F8, $6D, $FC
|13D529| db $25 ; Repeat byte
|13D52A| db $00
|13D52B| db $01 ; Raw block
|13D52C| db $04, $02
|13D52E| db $8F ; Copy past
|13D52F| dw $03D8
|13D531| db $25 ; Repeat byte
|13D532| db $00
|13D533| db $E0, $43 ; EXT Raw block
|13D535| db $04, $02, $A5, $79, $E4, $98, $F2, $AC
|13D53D| db $7B, $34, $3E, $09, $1F, $0B, $0F, $03
|13D545| db $19, $17, $02, $83, $E1, $70, $38, $18
|13D54D| db $00, $10, $86, $9E, $C3, $F3, $79, $79
|13D555| db $0C, $0C, $87, $67, $43, $B3, $A0, $DC
|13D55D| db $90, $EF, $61, $0C, $86, $F3, $18, $0C
|13D565| db $03, $00, $FF, $FF, $C1, $FF, $BA, $FF
|13D56D| db $BE, $FF, $AE, $FF, $BE, $FF, $8D, $FF
|13D575| db $D3, $FF, $FF, $C1
|13D579| db $23 ; Repeat byte
|13D57A| db $80
|13D57B| db $01 ; Raw block
|13D57C| db $81, $D3
|13D57E| db $4E ; Repeat word
|13D57F| dw $FF00
|13D581| db $28 ; Repeat byte
|13D582| db $FF
|13D583| db $45 ; Repeat word
|13D584| dw $7E81
|13D586| db $00 ; Raw block
|13D587| db $7E
|13D588| db $30 ; Repeat byte
|13D589| db $00
|13D58A| db $13 ; Raw block
|13D58B| db $B3, $72, $99, $79, $CC, $3C, $E6, $1E
|13D593| db $B3, $4F, $D8, $67, $EF, $70, $F3, $7C
|13D59B| db $0C, $06, $03, $01
|13D59F| db $23 ; Repeat byte
|13D5A0| db $00
|13D5A1| db $07 ; Raw block
|13D5A2| db $FF, $00, $3C, $24, $18, $18, $83, $83
|13D5AA| db $83 ; Copy past
|13D5AB| dw $003B
|13D5AD| db $43 ; Repeat word
|13D5AE| dw $00FF
|13D5B0| db $03 ; Raw block
|13D5B1| db $18, $C3, $E7, $7C
|13D5B5| db $23 ; Repeat byte
|13D5B6| db $00
|13D5B7| db $03 ; Raw block
|13D5B8| db $C0, $3F, $FF, $00
|13D5BC| db $43 ; Repeat word
|13D5BD| dw $3FCF
|13D5BF| db $02 ; Raw block
|13D5C0| db $C3, $3F, $E1
|13D5C3| db $84 ; Copy past
|13D5C4| dw $02DB
|13D5C6| db $28 ; Repeat byte
|13D5C7| db $00
|13D5C8| db $0E ; Raw block
|13D5C9| db $FF, $FF, $00, $FC, $FF, $E3, $FF, $8F
|13D5D1| db $FF, $1F, $FF, $8F, $FF, $F1, $FF
|13D5D8| db $27 ; Repeat byte
|13D5D9| db $00
|13D5DA| db $03 ; Raw block
|13D5DB| db $CF, $3F, $C8, $38
|13D5DF| db $43 ; Repeat word
|13D5E0| dw $3FC0
|13D5E2| db $01 ; Raw block
|13D5E3| db $E0, $1F
|13D5E5| db $43 ; Repeat word
|13D5E6| dw $00FF
|13D5E8| db $03 ; Raw block
|13D5E9| db $C3, $3C, $00, $07
|13D5ED| db $25 ; Repeat byte
|13D5EE| db $00
|13D5EF| db $01 ; Raw block
|13D5F0| db $FE, $FF
|13D5F2| db $22 ; Repeat byte
|13D5F3| db $00
|13D5F4| db $44 ; Repeat word
|13D5F5| dw $00FF
|13D5F7| db $45 ; Repeat word
|13D5F8| dw $00FF
|13D5FA| db $01 ; Raw block
|13D5FB| db $00, $FF
|13D5FD| db $25 ; Repeat byte
|13D5FE| db $00
|13D5FF| db $03 ; Raw block
|13D600| db $A0, $5F, $9F, $60
|13D604| db $43 ; Repeat word
|13D605| dw $6DB2
|13D607| db $06 ; Raw block
|13D608| db $AF, $70, $DF, $3F, $60, $1F, $3F
|13D60F| db $28 ; Repeat byte
|13D610| db $00
|13D611| db $0E ; Raw block
|13D612| db $03, $FC, $07, $FA, $0D, $F6, $1B, $EC
|13D61A| db $37, $D8, $EF, $30, $DF, $E0, $FF
|13D621| db $28 ; Repeat byte
|13D622| db $00
|13D623| db $05 ; Raw block
|13D624| db $61, $9E, $71, $8E, $FD, $2E
|13D62A| db $43 ; Repeat word
|13D62B| dw $6EBD
|13D62D| db $43 ; Repeat word
|13D62E| dw $6EB1
|13D630| db $01 ; Raw block
|13D631| db $BD, $5E
|13D633| db $27 ; Repeat byte
|13D634| db $00
|13D635| db $03 ; Raw block
|13D636| db $6E, $FE, $6E, $FF
|13D63A| db $47 ; Repeat word
|13D63B| dw $7FEE
|13D63D| db $04 ; Raw block
|13D63E| db $80, $7F, $FF, $00, $01
|13D643| db $26 ; Repeat byte
|13D644| db $00
|13D645| db $10 ; Raw block
|13D646| db $76, $7F, $7C, $C3, $5D, $E6, $7D, $C2
|13D64E| db $65, $C2, $7D, $C2, $01, $FE, $FF, $00
|13D656| db $80
|13D657| db $22 ; Repeat byte
|13D658| db $00
|13D659| db $00 ; Raw block
|13D65A| db $18
|13D65B| db $22 ; Repeat byte
|13D65C| db $00
|13D65D| db $01 ; Raw block
|13D65E| db $1C, $0F
|13D660| db $43 ; Repeat word
|13D661| dw $1F3E
|13D663| db $06 ; Raw block
|13D664| db $3A, $1D, $2F, $16, $3F, $35, $05
|13D66B| db $26 ; Repeat byte
|13D66C| db $00
|13D66D| db $E0, $2E ; EXT Raw block
|13D66F| db $06, $3F, $05, $00, $13, $EC, $B4, $4B
|13D677| db $F9, $27, $F9, $77, $FC, $DB, $DD, $03
|13D67F| db $06, $05, $03, $02, $00, $00, $20, $70
|13D687| db $F8, $D8, $04, $02, $FF, $FF, $C0, $FF
|13D68F| db $DF, $FF, $B6, $FF, $B3, $FF, $BF, $FF
|13D697| db $96, $FF, $C9, $FF, $FF, $C0, $C0
|13D69E| db $23 ; Repeat byte
|13D69F| db $80
|13D6A0| db $00 ; Raw block
|13D6A1| db $C9
|13D6A2| db $4E ; Repeat word
|13D6A3| dw $00FF
|13D6A5| db $28 ; Repeat byte
|13D6A6| db $00
|13D6A7| db $47 ; Repeat word
|13D6A8| dw $00FF
|13D6AA| db $04 ; Raw block
|13D6AB| db $AA, $55, $00, $FF, $00
|13D6B0| db $22 ; Repeat byte
|13D6B1| db $FF
|13D6B2| db $27 ; Repeat byte
|13D6B3| db $00
|13D6B4| db $FF ; End of GFX 3D

;===================================================================================================

GFX_3E:
|13D6B5| db $17 ; Raw block
|13D6B6| db $1F, $E0, $33, $CC, $77, $88, $FF, $00
|13D6BE| db $9F, $60, $BE, $41, $FE, $01, $FF, $00
|13D6C6| db $F1, $EE, $EE, $86, $79, $7D, $3D, $81
|13D6CE| db $45 ; Repeat word
|13D6CF| dw $F0CF
|13D6D1| db $09 ; Raw block
|13D6D2| db $C7, $F8, $C3, $FC, $E1, $FE, $70, $FF
|13D6DA| db $3C, $FF
|13D6DC| db $27 ; Repeat byte
|13D6DD| db $00
|13D6DE| db $11 ; Raw block
|13D6DF| db $03, $FC, $7E, $80, $82, $00, $81, $00
|13D6E7| db $80, $00, $BF, $00, $FF, $00, $52, $80
|13D6EF| db $FC, $81
|13D6F1| db $62 ; Increment fill
|13D6F2| db $7D
|13D6F3| db $02 ; Raw block
|13D6F4| db $40, $00, $AD
|13D6F7| db $97 ; Copy past
|13D6F8| dw $0000
|13D6FA| db $1C ; Raw block
|13D6FB| db $0F, $F0, $14, $EF, $22, $DF, $43, $BF
|13D703| db $BE, $7E, $80, $7C, $84, $7C, $8E, $7E
|13D70B| db $F0, $E0, $C0, $80, $01, $03, $03, $01
|13D713| db $9F, $F0, $54, $EF, $62
|13D718| db $8A ; Copy past
|13D719| dw $0065
|13D71B| db $23 ; Repeat byte
|13D71C| db $00
|13D71D| db $83 ; Copy past
|13D71E| dw $0074
|13D720| db $12 ; Raw block
|13D721| db $01, $FE, $07, $F8, $0F, $F0, $1F, $E0
|13D729| db $3F, $C0, $7F, $80, $7E, $81, $FC, $03
|13D731| db $FF, $FC, $F8
|13D734| db $83 ; Copy past
|13D735| dw $0070
|13D737| db $02 ; Raw block
|13D738| db $80, $FF, $00
|13D73B| db $43 ; Repeat word
|13D73C| dw $40BF
|13D73E| db $09 ; Raw block
|13D73F| db $9F, $60, $8C, $73, $00, $FF, $3F, $FF
|13D747| db $73, $FF
|13D749| db $27 ; Repeat byte
|13D74A| db $00
|13D74B| db $05 ; Raw block
|13D74C| db $3C, $C3, $42, $81, $99, $18
|13D752| db $43 ; Repeat word
|13D753| dw $24A5
|13D755| db $0D ; Raw block
|13D756| db $99, $18, $C3, $42, $FF, $3C, $C3, $BD
|13D75E| db $66, $5A, $5A, $66, $3C, $00
|13D764| db $45 ; Repeat word
|13D765| dw $FF00
|13D767| db $04 ; Raw block
|13D768| db $FF, $00, $40, $C2, $67
|13D76D| db $84 ; Copy past
|13D76E| dw $00DB
|13D770| db $22 ; Repeat byte
|13D771| db $FF
|13D772| db $01 ; Raw block
|13D773| db $00, $3D
|13D775| db $22 ; Repeat byte
|13D776| db $00
|13D777| db $85 ; Copy past
|13D778| dw $00C0
|13D77A| db $43 ; Repeat word
|13D77B| dw $24A5
|13D77D| db $8D ; Copy past
|13D77E| dw $00CA
|13D780| db $83 ; Copy past
|13D781| dw $0090
|13D783| db $03 ; Raw block
|13D784| db $2F, $D4, $7F, $A4
|13D788| db $43 ; Repeat word
|13D789| dw $AC7F
|13D78B| db $43 ; Repeat word
|13D78C| dw $65FF
|13D78E| db $27 ; Repeat byte
|13D78F| db $FF
|13D790| db $0F ; Raw block
|13D791| db $7F, $CA, $FF, $A6, $FF, $16, $FF, $92
|13D799| db $FF, $D9, $FF, $49, $FF, $4D, $FF, $0D
|13D7A1| db $27 ; Repeat byte
|13D7A2| db $FF
|13D7A3| db $03 ; Raw block
|13D7A4| db $FE, $53, $FF, $D9
|13D7A8| db $44 ; Repeat word
|13D7A9| dw $D2FF
|13D7AB| db $06 ; Raw block
|13D7AC| db $8A, $FF, $9A, $FF, $B6, $FF, $34
|13D7B3| db $27 ; Repeat byte
|13D7B4| db $FF
|13D7B5| db $01 ; Raw block
|13D7B6| db $00, $FF
|13D7B8| db $84 ; Copy past
|13D7B9| dw $0094
|13D7BB| db $04 ; Raw block
|13D7BC| db $C7, $7C, $8C, $78, $98
|13D7C1| db $43 ; Repeat word
|13D7C2| dw $9070
|13D7C4| db $07 ; Raw block
|13D7C5| db $FF, $FF, $F8, $F0, $E3, $C7, $CF, $CF
|13D7CD| db $43 ; Repeat word
|13D7CE| dw $FF00
|13D7D0| db $0B ; Raw block
|13D7D1| db $70, $8F, $78, $B7, $78, $87, $38, $C7
|13D7D9| db $00, $FC, $63, $9B
|13D7DD| db $24 ; Repeat byte
|13D7DE| db $FF
|13D7DF| db $02 ; Raw block
|13D7E0| db $FC, $FB, $F4
|13D7E3| db $83 ; Copy past
|13D7E4| dw $00A8
|13D7E6| db $13 ; Raw block
|13D7E7| db $9F, $60, $FF, $00, $FD, $02, $EE, $11
|13D7EF| db $7F, $80, $3F, $C0, $3C, $79, $73, $03
|13D7F7| db $9B, $D9, $C0, $FE
|13D7FB| db $47 ; Repeat word
|13D7FC| dw $F9E7
|13D7FE| db $07 ; Raw block
|13D7FF| db $E6, $F9, $67, $78, $77, $78, $7B, $7C
|13D807| db $24 ; Repeat byte
|13D808| db $00
|13D809| db $22 ; Repeat byte
|13D80A| db $80
|13D80B| db $15 ; Raw block
|13D80C| db $5F, $80, $52, $80, $5F, $80, $40, $80
|13D814| db $3F, $C0, $02, $FC, $3E, $C0, $3F, $C0
|13D81C| db $A0, $AD, $A0, $BF, $C0, $FD
|13D822| db $62 ; Increment fill
|13D823| db $FD
|13D824| db $96 ; Copy past
|13D825| dw $0181
|13D827| db $0F ; Raw block
|13D828| db $99, $7F, $B2, $7F, $A2, $7F, $C4, $3F
|13D830| db $64, $9F, $34, $CF, $18, $E7, $0F, $F0
|13D838| db $22 ; Repeat byte
|13D839| db $00
|13D83A| db $0C ; Raw block
|13D83B| db $80, $C0, $E0, $F0, $F8, $83, $30, $83
|13D843| db $20, $83, $08, $83, $18
|13D848| db $87 ; Copy past
|13D849| dw $01F8
|13D84B| db $27 ; Repeat byte
|13D84C| db $7C
|13D84D| db $05 ; Raw block
|13D84E| db $80, $7F, $C1, $3F, $F9, $07
|13D854| db $45 ; Repeat word
|13D855| dw $03FD
|13D857| db $03 ; Raw block
|13D858| db $F9, $07, $79, $87
|13D85C| db $25 ; Repeat byte
|13D85D| db $00
|13D85E| db $05 ; Raw block
|13D85F| db $80, $80, $E1, $FF, $C0, $FF
|13D865| db $43 ; Repeat word
|13D866| dw $E798
|13D868| db $07 ; Raw block
|13D869| db $C0, $FF, $C6, $FF, $86, $FF, $80, $FF
|13D871| db $27 ; Repeat byte
|13D872| db $00
|13D873| db $01 ; Raw block
|13D874| db $BD, $42
|13D876| db $43 ; Repeat word
|13D877| dw $7EB1
|13D879| db $08 ; Raw block
|13D87A| db $B5, $7E, $95, $7E, $D7, $3C, $FF, $00
|13D882| db $FF
|13D883| db $26 ; Repeat byte
|13D884| db $00
|13D885| db $00 ; Raw block
|13D886| db $81
|13D887| db $44 ; Repeat word
|13D888| dw $00FF
|13D88A| db $01 ; Raw block
|13D88B| db $49, $FF
|13D88D| db $46 ; Repeat word
|13D88E| dw $00FF
|13D890| db $01 ; Raw block
|13D891| db $44, $00
|13D893| db $28 ; Repeat byte
|13D894| db $FF
|13D895| db $12 ; Raw block
|13D896| db $E5, $5A, $E7, $42, $EF, $4A, $E7, $42
|13D89E| db $E5, $42, $A5, $42, $E7, $00, $7E, $99
|13D8A6| db $00, $18, $10
|13D8A9| db $22 ; Repeat byte
|13D8AA| db $18
|13D8AB| db $10 ; Raw block
|13D8AC| db $99, $C3, $FF, $75, $7F, $B3, $7F, $BB
|13D8B4| db $3F, $D6, $3F, $CE, $1F, $E4, $07, $F8
|13D8BC| db $00
|13D8BD| db $29 ; Repeat byte
|13D8BE| db $FF
|13D8BF| db $0E ; Raw block
|13D8C0| db $64, $FF, $35, $FF, $3B, $FF, $DB, $FF
|13D8C8| db $56, $FF, $66, $FF, $A2, $7F, $C4
|13D8CF| db $28 ; Repeat byte
|13D8D0| db $FF
|13D8D1| db $04 ; Raw block
|13D8D2| db $B2, $FF, $A6, $FF, $2C
|13D8D7| db $44 ; Repeat word
|13D8D8| dw $4CFF
|13D8DA| db $04 ; Raw block
|13D8DB| db $64, $FF, $35, $FE, $23
|13D8E0| db $27 ; Repeat byte
|13D8E1| db $FF
|13D8E2| db $88 ; Copy past
|13D8E3| dw $01E0
|13D8E5| db $06 ; Raw block
|13D8E6| db $1F, $34, $0F, $38, $27, $7F, $70
|13D8ED| db $23 ; Repeat byte
|13D8EE| db $00
|13D8EF| db $18 ; Raw block
|13D8F0| db $80, $C0, $C0, $80, $F2, $6A, $F3, $0B
|13D8F8| db $78, $84, $0C, $F3, $77, $88, $F3, $4C
|13D900| db $F0, $0F, $E0, $1F, $F5, $F4, $F3, $F8
|13D908| db $FC
|13D909| db $22 ; Repeat byte
|13D90A| db $FF
|13D90B| db $17 ; Raw block
|13D90C| db $0F, $F0, $18, $E8, $30, $D3, $42, $A6
|13D914| db $40, $A4, $42, $A6, $50, $B3, $78, $98
|13D91C| db $F0, $E7, $CC, $99, $9B, $99, $8C, $87
|13D924| db $43 ; Repeat word
|13D925| dw $00FF
|13D927| db $0A ; Raw block
|13D928| db $FB, $50, $FF, $08, $FF, $2A, $F7, $14
|13D930| db $FF, $00, $FF
|13D933| db $22 ; Repeat byte
|13D934| db $00
|13D935| db $03 ; Raw block
|13D936| db $04, $00, $00, $08
|13D93A| db $22 ; Repeat byte
|13D93B| db $00
|13D93C| db $00 ; Raw block
|13D93D| db $FF
|13D93E| db $83 ; Copy past
|13D93F| dw $0060
|13D941| db $11 ; Raw block
|13D942| db $24, $DC, $4B, $BB, $B6, $76, $93, $73
|13D94A| db $92, $72, $FF, $F0, $E0, $C3, $84, $09
|13D952| db $0C, $0D
|13D954| db $83 ; Copy past
|13D955| dw $0150
|13D957| db $0C ; Raw block
|13D958| db $1B, $E4, $3B, $C7, $74, $8F, $C9, $3F
|13D960| db $EC, $1F, $ED, $1F, $FF
|13D965| db $83 ; Copy past
|13D966| dw $0070
|13D968| db $22 ; Repeat byte
|13D969| db $00
|13D96A| db $0B ; Raw block
|13D96B| db $06, $F9, $1D, $E3, $FB, $07, $F7, $0F
|13D973| db $0F, $FF, $7F, $FF
|13D977| db $23 ; Repeat byte
|13D978| db $FE
|13D979| db $25 ; Repeat byte
|13D97A| db $00
|13D97B| db $01 ; Raw block
|13D97C| db $01, $01
|13D97E| db $83 ; Copy past
|13D97F| dw $0228
|13D981| db $02 ; Raw block
|13D982| db $9F, $FF, $BE
|13D985| db $22 ; Repeat byte
|13D986| db $FE
|13D987| db $05 ; Raw block
|13D988| db $BD, $BD, $B9, $B9, $C3, $C3
|13D98E| db $22 ; Repeat byte
|13D98F| db $00
|13D990| db $12 ; Raw block
|13D991| db $01, $01, $42, $46, $3C, $C0, $3F, $70
|13D999| db $8F, $18, $E7, $0C, $F3, $86, $F9, $C2
|13D9A1| db $FD, $E1, $FE
|13D9A4| db $62 ; Increment fill
|13D9A5| db $7D
|13D9A6| db $0B ; Raw block
|13D9A7| db $1F, $0F, $07, $03, $01, $00, $80, $3C
|13D9AF| db $3F, $7C, $7F, $CC
|13D9B3| db $44 ; Repeat word
|13D9B4| dw $84FF
|13D9B6| db $07 ; Raw block
|13D9B7| db $85, $FE, $81, $FE, $83, $FC, $C0, $80
|13D9BF| db $25 ; Repeat byte
|13D9C0| db $00
|13D9C1| db $83 ; Copy past
|13D9C2| dw $0090
|13D9C4| db $0B ; Raw block
|13D9C5| db $0C, $F3, $18, $E7, $30, $CF, $60, $9F
|13D9CD| db $41, $BF, $C3, $3F
|13D9D1| db $89 ; Copy past
|13D9D2| dw $00A0
|13D9D4| db $43 ; Repeat word
|13D9D5| dw $FF40
|13D9D7| db $02 ; Raw block
|13D9D8| db $60, $FF, $73
|13D9DB| db $22 ; Repeat byte
|13D9DC| db $FF
|13D9DD| db $03 ; Raw block
|13D9DE| db $C0, $C0, $8C, $8C
|13D9E2| db $25 ; Repeat byte
|13D9E3| db $00
|13D9E4| db $03 ; Raw block
|13D9E5| db $3F, $73, $71, $91
|13D9E9| db $49 ; Repeat word
|13D9EA| dw $23E3
|13D9EC| db $43 ; Repeat word
|13D9ED| dw $9373
|13D9EF| db $00 ; Raw block
|13D9F0| db $CF
|13D9F1| db $24 ; Repeat byte
|13D9F2| db $9F
|13D9F3| db $01 ; Raw block
|13D9F4| db $CF, $CF
|13D9F6| db $45 ; Repeat word
|13D9F7| dw $FF00
|13D9F9| db $09 ; Raw block
|13D9FA| db $21, $DE, $18, $E7, $17, $EF, $E8, $18
|13DA02| db $50, $B3
|13DA04| db $23 ; Repeat byte
|13DA05| db $FF
|13DA06| db $13 ; Raw block
|13DA07| db $F8, $F0, $E7, $CC, $F0, $AF, $E6, $19
|13DA0F| db $82, $7D, $80, $7F, $0C, $F3, $69, $96
|13DA17| db $20, $DF, $02, $FD
|13DA1B| db $27 ; Repeat byte
|13DA1C| db $FF
|13DA1D| db $01 ; Raw block
|13DA1E| db $07, $F8
|13DA20| db $83 ; Copy past
|13DA21| dw $0096
|13DA23| db $11 ; Raw block
|13DA24| db $7C, $84, $78, $88, $F3, $13, $E7, $07
|13DA2C| db $E7, $17, $FF, $FF, $F8, $F3, $E7, $CC
|13DA34| db $D8, $C8
|13DA36| db $43 ; Repeat word
|13DA37| dw $00FF
|13DA39| db $0F ; Raw block
|13DA3A| db $70, $30, $47, $67, $FF, $DF, $F0, $DF
|13DA42| db $AF, $D0, $7F, $80, $FF, $00, $8F, $98
|13DA4A| db $24 ; Repeat byte
|13DA4B| db $00
|13DA4C| db $4A ; Repeat word
|13DA4D| dw $00FF
|13DA4F| db $03 ; Raw block
|13DA50| db $06, $F9, $03, $FC
|13DA54| db $27 ; Repeat byte
|13DA55| db $FF
|13DA56| db $0F ; Raw block
|13DA57| db $27, $DF, $38, $C7, $EF, $10, $65, $9F
|13DA5F| db $75, $8F, $F1, $0F, $3F, $C0, $1F, $E0
|13DA67| db $24 ; Repeat byte
|13DA68| db $C0
|13DA69| db $11 ; Raw block
|13DA6A| db $E0, $F0, $FF, $FF, $88, $FF, $4B, $FF
|13DA72| db $00, $FF, $2C, $FF, $42, $BD, $00, $CB
|13DA7A| db $00, $FF
|13DA7C| db $25 ; Repeat byte
|13DA7D| db $00
|13DA7E| db $0B ; Raw block
|13DA7F| db $42, $34, $00, $96, $76, $BB, $7B, $A4
|13DA87| db $7C, $C7, $3F, $66
|13DA8B| db $86 ; Copy past
|13DA8C| dw $01E9
|13DA8E| db $02 ; Raw block
|13DA8F| db $09, $04, $03
|13DA92| db $84 ; Copy past
|13DA93| dw $01F3
|13DA95| db $0F ; Raw block
|13DA96| db $E9, $1F, $C4, $3F, $DB, $27, $F8, $07
|13DA9E| db $79, $86, $3B, $C4, $1F, $E0, $0F, $F0
|13DAA6| db $22 ; Repeat byte
|13DAA7| db $00
|13DAA8| db $84 ; Copy past
|13DAA9| dw $01F3
|13DAAB| db $4E ; Repeat word
|13DAAC| dw $FF00
|13DAAE| db $2A ; Repeat byte
|13DAAF| db $FF
|13DAB0| db $02 ; Raw block
|13DAB1| db $CF, $FF, $CF
|13DAB4| db $24 ; Repeat byte
|13DAB5| db $FF
|13DAB6| db $23 ; Repeat byte
|13DAB7| db $F9
|13DAB8| db $01 ; Raw block
|13DAB9| db $FF, $FF
|13DABB| db $24 ; Repeat byte
|13DABC| db $00
|13DABD| db $02 ; Raw block
|13DABE| db $06, $06, $00
|13DAC1| db $43 ; Repeat word
|13DAC2| dw $3F30
|13DAC4| db $19 ; Raw block
|13DAC5| db $98, $9F, $9C, $9F, $8F, $8F, $C7, $C7
|13DACD| db $E0, $E0, $F8, $F8, $C0, $C0, $60, $60
|13DAD5| db $70, $38, $1F, $07, $83, $FC, $87, $F8
|13DADD| db $0E, $F1
|13DADF| db $83 ; Copy past
|13DAE0| dw $03C4
|13DAE2| db $12 ; Raw block
|13DAE3| db $38, $C7, $F0, $0F, $C0, $3F, $01, $01
|13DAEB| db $03, $07, $0F, $0F, $3F, $FF, $FF, $7F
|13DAF3| db $BE, $7E, $86
|13DAF6| db $46 ; Repeat word
|13DAF7| dw $827E
|13DAF9| db $43 ; Repeat word
|13DAFA| dw $3EC6
|13DAFC| db $00 ; Raw block
|13DAFD| db $00
|13DAFE| db $24 ; Repeat byte
|13DAFF| db $01
|13DB00| db $05 ; Raw block
|13DB01| db $81, $81, $1E, $1E, $3F, $3F
|13DB07| db $43 ; Repeat word
|13DB08| dw $7F67
|13DB0A| db $17 ; Raw block
|13DB0B| db $3F, $3F, $39, $39, $79, $79, $7F, $7F
|13DB13| db $E1, $C0, $80, $80, $C0, $C6, $86, $80
|13DB1B| db $7C, $83, $FF, $00, $FF, $7C, $C3, $C3
|13DB23| db $23 ; Repeat byte
|13DB24| db $00
|13DB25| db $01 ; Raw block
|13DB26| db $3F, $3F
|13DB28| db $22 ; Repeat byte
|13DB29| db $FF
|13DB2A| db $02 ; Raw block
|13DB2B| db $83, $00, $3C
|13DB2E| db $23 ; Repeat byte
|13DB2F| db $FF
|13DB30| db $87 ; Copy past
|13DB31| dw $0306
|13DB33| db $17 ; Raw block
|13DB34| db $E8, $18, $17, $EF, $08, $F7, $0C, $F3
|13DB3C| db $D9, $DB, $D9, $CC, $E7, $F0, $F8, $FF
|13DB44| db $C0, $3F, $FF, $00, $FF, $7F, $91, $7F
|13DB4C| db $83 ; Copy past
|13DB4D| dw $00DB
|13DB4F| db $03 ; Raw block
|13DB50| db $9E, $FF, $8C, $FF
|13DB54| db $27 ; Repeat byte
|13DB55| db $00
|13DB56| db $10 ; Raw block
|13DB57| db $E6, $0F, $E1, $06, $67, $84, $65, $86
|13DB5F| db $75, $96, $ED, $1E, $E5, $0E, $E1, $06
|13DB67| db $D0
|13DB68| db $22 ; Repeat byte
|13DB69| db $D8
|13DB6A| db $E0, $33 ; EXT Raw block
|13DB6C| db $C8, $C0, $D0, $D8, $E7, $04, $E5, $06
|13DB74| db $FD, $1E, $65, $9E, $69, $8E, $67, $84
|13DB7C| db $E3, $02, $E1, $01, $D8, $D8, $C0, $C0
|13DB84| db $D0, $D8, $DC, $DE, $36, $C9, $1C, $E2
|13DB8C| db $09, $F5, $0B, $F6, $3B, $C6, $0C, $F3
|13DB94| db $07, $F8, $05, $FA, $FE, $FD, $FA, $F8
|13DB9C| db $F8, $FC, $FF, $FF
|13DBA0| db $FF ; End of GFX 3E

;===================================================================================================

GFX_3F:
|13DBA1| db $08 ; Raw block
|13DBA2| db $1E, $E1, $1D, $EE, $19, $EE, $F9, $06
|13DBAA| db $E6
|13DBAB| db $43 ; Repeat word
|13DBAC| dw $C478
|13DBAE| db $14 ; Raw block
|13DBAF| db $38, $FC, $02, $E1, $E0, $E0, $00, $01
|13DBB7| db $03, $03, $81, $8B, $4C, $E3, $1C, $7F
|13DBBF| db $80, $BF, $C0, $7F, $80
|13DBC4| db $45 ; Repeat word
|13DBC5| dw $00FF
|13DBC7| db $00 ; Raw block
|13DBC8| db $30
|13DBC9| db $26 ; Repeat byte
|13DBCA| db $00
|13DBCB| db $11 ; Raw block
|13DBCC| db $03, $FC, $7E, $80, $82, $00, $81, $00
|13DBD4| db $80, $00, $BF, $00, $FF, $00, $52, $80
|13DBDC| db $FC, $81
|13DBDE| db $62 ; Increment fill
|13DBDF| db $7D
|13DBE0| db $E0, $37 ; EXT Raw block
|13DBE2| db $40, $00, $AD, $1E, $E1, $13, $EC, $17
|13DBEA| db $E8, $FF, $00, $9E, $61, $BC, $43, $FC
|13DBF2| db $03, $FE, $01, $E1, $EE, $EE, $06, $79
|13DBFA| db $7B, $3B, $83, $0F, $F0, $14, $EF, $22
|13DC02| db $DF, $43, $BF, $BE, $7E, $84, $7C, $8C
|13DC0A| db $7C, $9E, $7E, $F0, $E0, $C0, $80, $01
|13DC12| db $03, $03, $01, $9F, $F0, $54, $EF, $62
|13DC1A| db $84 ; Copy past
|13DC1B| dw $0065
|13DC1D| db $05 ; Raw block
|13DC1E| db $80, $7C, $84, $7C, $8E, $7E
|13DC24| db $23 ; Repeat byte
|13DC25| db $00
|13DC26| db $83 ; Copy past
|13DC27| dw $0074
|13DC29| db $12 ; Raw block
|13DC2A| db $01, $FE, $07, $F8, $0F, $F0, $1F, $E0
|13DC32| db $3E, $C1, $7C, $83, $78, $87, $F1, $0F
|13DC3A| db $FE, $FC, $F8
|13DC3D| db $83 ; Copy past
|13DC3E| dw $0070
|13DC40| db $02 ; Raw block
|13DC41| db $00, $E7, $18
|13DC44| db $43 ; Repeat word
|13DC45| dw $C23D
|13DC47| db $04 ; Raw block
|13DC48| db $DA, $E7, $C2, $FF, $E3
|13DC4D| db $22 ; Repeat byte
|13DC4E| db $FF
|13DC4F| db $02 ; Raw block
|13DC50| db $9C, $FF, $18
|13DC53| db $26 ; Repeat byte
|13DC54| db $00
|13DC55| db $03 ; Raw block
|13DC56| db $3C, $C3, $42, $81
|13DC5A| db $44 ; Repeat word
|13DC5B| dw $1881
|13DC5D| db $08 ; Raw block
|13DC5E| db $00, $81, $42, $C3, $3C, $FF, $00, $C3
|13DC66| db $BD
|13DC67| db $23 ; Repeat byte
|13DC68| db $7E
|13DC69| db $01 ; Raw block
|13DC6A| db $3C, $42
|13DC6C| db $45 ; Repeat word
|13DC6D| dw $FF00
|13DC6F| db $05 ; Raw block
|13DC70| db $FF, $00, $80, $7F, $FF, $3F
|13DC76| db $43 ; Repeat word
|13DC77| dw $00FF
|13DC79| db $22 ; Repeat byte
|13DC7A| db $FF
|13DC7B| db $00 ; Raw block
|13DC7C| db $00
|13DC7D| db $22 ; Repeat byte
|13DC7E| db $7F
|13DC7F| db $84 ; Copy past
|13DC80| dw $00BF
|13DC82| db $44 ; Repeat word
|13DC83| dw $1881
|13DC85| db $88 ; Copy past
|13DC86| dw $00C9
|13DC88| db $23 ; Repeat byte
|13DC89| db $7E
|13DC8A| db $83 ; Copy past
|13DC8B| dw $00D6
|13DC8D| db $0D ; Raw block
|13DC8E| db $0E, $F1, $1F, $EE, $0F, $F3, $03, $FD
|13DC96| db $6F, $90, $BB, $64, $DF, $74
|13DC9C| db $27 ; Repeat byte
|13DC9D| db $FF
|13DC9E| db $0F ; Raw block
|13DC9F| db $77, $C8, $FD, $86, $CF, $36, $67, $B8
|13DCA7| db $B7, $D8, $FF, $4C, $FF, $8C, $FF, $88
|13DCAF| db $27 ; Repeat byte
|13DCB0| db $FF
|13DCB1| db $0F ; Raw block
|13DCB2| db $DE, $73, $7B, $AD, $7D, $D6, $6D, $DA
|13DCBA| db $6F, $DA, $EF, $DA, $FF, $92, $FF, $94
|13DCC2| db $27 ; Repeat byte
|13DCC3| db $FF
|13DCC4| db $01 ; Raw block
|13DCC5| db $00, $FF
|13DCC7| db $83 ; Copy past
|13DCC8| dw $0094
|13DCCA| db $05 ; Raw block
|13DCCB| db $3F, $C7, $7C, $8C, $78, $98
|13DCD1| db $43 ; Repeat word
|13DCD2| dw $9070
|13DCD4| db $07 ; Raw block
|13DCD5| db $FF, $FF, $F8, $F0, $E3, $C7, $CF, $CF
|13DCDD| db $43 ; Repeat word
|13DCDE| dw $FF00
|13DCE0| db $01 ; Raw block
|13DCE1| db $70, $8F
|13DCE3| db $43 ; Repeat word
|13DCE4| dw $8778
|13DCE6| db $05 ; Raw block
|13DCE7| db $38, $C7, $07, $FC, $0D, $FB
|13DCED| db $26 ; Repeat byte
|13DCEE| db $FF
|13DCEF| db $10 ; Raw block
|13DCF0| db $FC, $C6, $39, $C3, $7C, $E4, $7B, $FC
|13DCF8| db $03, $E6, $1B, $77, $99, $3F, $C0, $1B
|13DD00| db $E4
|13DD01| db $23 ; Repeat byte
|13DD02| db $00
|13DD03| db $12 ; Raw block
|13DD04| db $80, $C0, $C0, $FE, $27, $F8, $4E, $F1
|13DD0C| db $6C, $F3, $F5, $FB, $56, $D9, $B7, $78
|13DD14| db $CF, $30, $FF
|13DD17| db $24 ; Repeat byte
|13DD18| db $00
|13DD19| db $00 ; Raw block
|13DD1A| db $20
|13DD1B| db $22 ; Repeat byte
|13DD1C| db $00
|13DD1D| db $15 ; Raw block
|13DD1E| db $5F, $80, $52, $80, $5F, $80, $40, $80
|13DD26| db $3F, $C0, $02, $FC, $FE, $00, $FF, $00
|13DD2E| db $A0, $AD, $A0, $BF, $C0, $FD
|13DD34| db $62 ; Increment fill
|13DD35| db $FD
|13DD36| db $0A ; Raw block
|13DD37| db $00, $BF, $40, $9F, $60, $FF, $00, $FD
|13DD3F| db $02, $6E, $91
|13DD42| db $83 ; Copy past
|13DD43| dw $018C
|13DD45| db $17 ; Raw block
|13DD46| db $39, $7C, $7B, $03, $9B, $D9, $C0, $FE
|13DD4E| db $B9, $7F, $B2, $7F, $A2, $7F, $C4, $3F
|13DD56| db $64, $9F, $34, $CF, $18, $E7, $0F, $F0
|13DD5E| db $22 ; Repeat byte
|13DD5F| db $00
|13DD60| db $E0, $23 ; EXT Raw block
|13DD62| db $80, $C0, $E0, $F0, $F8, $80, $01, $40
|13DD6A| db $02, $20, $04, $10, $08, $08, $10, $04
|13DD72| db $20, $02, $40, $01, $80, $80, $40, $20
|13DD7A| db $10, $08, $04, $02, $01, $9F, $7F, $9E
|13DD82| db $7F, $E6, $1F, $72
|13DD86| db $44 ; Repeat word
|13DD87| dw $738F
|13DD89| db $83 ; Copy past
|13DD8A| dw $0212
|13DD8C| db $22 ; Repeat byte
|13DD8D| db $00
|13DD8E| db $22 ; Repeat byte
|13DD8F| db $80
|13DD90| db $22 ; Repeat byte
|13DD91| db $00
|13DD92| db $0E ; Raw block
|13DD93| db $FF, $09, $F7, $01, $FF, $58, $BF, $18
|13DD9B| db $FF, $02, $FD, $00, $FF, $60, $FF
|13DDA2| db $27 ; Repeat byte
|13DDA3| db $00
|13DDA4| db $04 ; Raw block
|13DDA5| db $FF, $00, $EF, $30, $EF
|13DDAA| db $43 ; Repeat word
|13DDAB| dw $EB34
|13DDAD| db $06 ; Raw block
|13DDAE| db $14, $EB, $14, $FF, $00, $7E, $81
|13DDB5| db $24 ; Repeat byte
|13DDB6| db $7E
|13DDB7| db $01 ; Raw block
|13DDB8| db $3C, $81
|13DDBA| db $44 ; Repeat word
|13DDBB| dw $00FF
|13DDBD| db $03 ; Raw block
|13DDBE| db $88, $FF, $FF, $75
|13DDC2| db $44 ; Repeat word
|13DDC3| dw $00FF
|13DDC5| db $01 ; Raw block
|13DDC6| db $24, $DB
|13DDC8| db $29 ; Repeat byte
|13DDC9| db $FF
|13DDCA| db $00 ; Raw block
|13DDCB| db $00
|13DDCC| db $4D ; Repeat word
|13DDCD| dw $18E7
|13DDCF| db $23 ; Repeat byte
|13DDD0| db $5A
|13DDD1| db $12 ; Raw block
|13DDD2| db $18, $18, $99, $DB, $6F, $B1, $3F, $D8
|13DDDA| db $3D, $DA, $1B, $E6, $1F, $EE, $1F, $E4
|13DDE2| db $06, $F9, $00
|13DDE5| db $28 ; Repeat byte
|13DDE6| db $FF
|13DDE7| db $0F ; Raw block
|13DDE8| db $9B, $66, $CD, $72, $FD, $BA, $FF, $92
|13DDF0| db $DF, $66, $CF, $74, $FF, $A4, $7E, $C1
|13DDF8| db $28 ; Repeat byte
|13DDF9| db $FF
|13DDFA| db $0E ; Raw block
|13DDFB| db $21, $FB, $45, $F9, $26, $FF, $46, $BF
|13DE03| db $EE, $DF, $74, $FF, $31, $FE, $03
|13DE0A| db $27 ; Repeat byte
|13DE0B| db $FF
|13DE0C| db $00 ; Raw block
|13DE0D| db $99
|13DE0E| db $87 ; Copy past
|13DE0F| dw $01E1
|13DE11| db $06 ; Raw block
|13DE12| db $1F, $34, $0F, $38, $27, $7F, $70
|13DE19| db $23 ; Repeat byte
|13DE1A| db $00
|13DE1B| db $03 ; Raw block
|13DE1C| db $80, $C0, $C0, $80
|13DE20| db $43 ; Repeat word
|13DE21| dw $F70A
|13DE23| db $0B ; Raw block
|13DE24| db $09, $F7, $04, $FB, $73, $CC, $F0, $8F
|13DE2C| db $F0, $0F, $E0, $1F
|13DE30| db $22 ; Repeat byte
|13DE31| db $F8
|13DE32| db $00 ; Raw block
|13DE33| db $FC
|13DE34| db $23 ; Repeat byte
|13DE35| db $FF
|13DE36| db $04 ; Raw block
|13DE37| db $03, $FC, $05, $FB, $0B
|13DE3C| db $44 ; Repeat word
|13DE3D| dw $0FF7
|13DE3F| db $00 ; Raw block
|13DE40| db $0B
|13DE41| db $44 ; Repeat word
|13DE42| dw $08F7
|13DE44| db $01 ; Raw block
|13DE45| db $FC, $F8
|13DE47| db $25 ; Repeat byte
|13DE48| db $F0
|13DE49| db $43 ; Repeat word
|13DE4A| dw $00FF
|13DE4C| db $0A ; Raw block
|13DE4D| db $FB, $50, $FF, $08, $FF, $2A, $F7, $14
|13DE55| db $FF, $00, $FF
|13DE58| db $22 ; Repeat byte
|13DE59| db $00
|13DE5A| db $0D ; Raw block
|13DE5B| db $04, $00, $00, $08, $00, $00, $0F, $F0
|13DE63| db $18, $E7, $34, $CC, $68, $98
|13DE69| db $43 ; Repeat word
|13DE6A| dw $B050
|13DE6C| db $03 ; Raw block
|13DE6D| db $DC, $3C, $82, $62
|13DE71| db $83 ; Copy past
|13DE72| dw $0162
|13DE74| db $03 ; Raw block
|13DE75| db $8F, $8F, $83, $1D
|13DE79| db $83 ; Copy past
|13DE7A| dw $0094
|13DE7C| db $03 ; Raw block
|13DE7D| db $3B, $C7, $77, $8F
|13DE81| db $43 ; Repeat word
|13DE82| dw $9F6F
|13DE84| db $03 ; Raw block
|13DE85| db $E3, $1F, $FD, $1F
|13DE89| db $83 ; Copy past
|13DE8A| dw $00A2
|13DE8C| db $22 ; Repeat byte
|13DE8D| db $80
|13DE8E| db $00 ; Raw block
|13DE8F| db $00
|13DE90| db $97 ; Copy past
|13DE91| dw $01F8
|13DE93| db $04 ; Raw block
|13DE94| db $E3, $FF, $DD, $FF, $BE
|13DE99| db $22 ; Repeat byte
|13DE9A| db $FF
|13DE9B| db $07 ; Raw block
|13DE9C| db $BE, $BE, $DD, $DD, $E3, $E3, $FF, $FF
|13DEA4| db $23 ; Repeat byte
|13DEA5| db $00
|13DEA6| db $E0, $2F ; EXT Raw block
|13DEA8| db $41, $22, $1C, $00, $00, $FF, $F0, $0F
|13DEB0| db $18, $E7, $0C, $F3, $C6, $F9, $62, $FD
|13DEB8| db $B3, $FC, $5B, $7C, $FF, $0F, $07, $03
|13DEC0| db $01, $01, $00, $80, $C4, $C7, $8C, $8F
|13DEC8| db $39, $3F, $71, $7F, $E3, $FF, $C7, $FF
|13DED0| db $8E, $FF, $3C, $FF, $38, $70, $C0, $80
|13DED8| db $23 ; Repeat byte
|13DED9| db $00
|13DEDA| db $83 ; Copy past
|13DEDB| dw $0090
|13DEDD| db $0B ; Raw block
|13DEDE| db $0E, $F1, $1C, $E3, $39, $C7, $73, $8F
|13DEE6| db $67, $9F, $CE, $3E
|13DEEA| db $86 ; Copy past
|13DEEB| dw $00A0
|13DEED| db $02 ; Raw block
|13DEEE| db $01, $E7, $18
|13DEF1| db $83 ; Copy past
|13DEF2| dw $00AE
|13DEF4| db $00 ; Raw block
|13DEF5| db $25
|13DEF6| db $22 ; Repeat byte
|13DEF7| db $3D
|13DEF8| db $0F ; Raw block
|13DEF9| db $1C, $1C, $00, $00, $63, $63, $18, $00
|13DF01| db $00, $C2, $C2, $E3, $FF, $9C, $71, $91
|13DF09| db $49 ; Repeat word
|13DF0A| dw $23E3
|13DF0C| db $43 ; Repeat word
|13DF0D| dw $9373
|13DF0F| db $00 ; Raw block
|13DF10| db $CF
|13DF11| db $24 ; Repeat byte
|13DF12| db $9F
|13DF13| db $83 ; Copy past
|13DF14| dw $0166
|13DF16| db $0D ; Raw block
|13DF17| db $07, $FF, $0F, $F8, $38, $E7, $6F, $DF
|13DF1F| db $5C, $BF, $F8, $BF, $B8, $7F
|13DF25| db $22 ; Repeat byte
|13DF26| db $FF
|13DF27| db $14 ; Raw block
|13DF28| db $F8, $E0, $C0, $C0, $80, $F0, $AF, $E6
|13DF30| db $19, $82, $7D, $80, $7F, $0C, $F3, $69
|13DF38| db $96, $20, $DF, $02, $FD
|13DF3D| db $27 ; Repeat byte
|13DF3E| db $FF
|13DF3F| db $17 ; Raw block
|13DF40| db $07, $F8, $1F, $E0, $3F, $C0, $7C, $84
|13DF48| db $78, $88, $F3, $13, $E7, $07, $E7, $17
|13DF50| db $FF, $FF, $F8, $F3, $E7, $CC, $D8, $C8
|13DF58| db $43 ; Repeat word
|13DF59| dw $00FF
|13DF5B| db $09 ; Raw block
|13DF5C| db $70, $30, $47, $67, $FF, $DF, $F0, $DF
|13DF64| db $AF, $D0
|13DF66| db $83 ; Copy past
|13DF67| dw $0020
|13DF69| db $01 ; Raw block
|13DF6A| db $8F, $98
|13DF6C| db $24 ; Repeat byte
|13DF6D| db $00
|13DF6E| db $4A ; Repeat word
|13DF6F| dw $00FF
|13DF71| db $03 ; Raw block
|13DF72| db $06, $F9, $03, $FC
|13DF76| db $27 ; Repeat byte
|13DF77| db $FF
|13DF78| db $03 ; Raw block
|13DF79| db $18, $F7, $08, $F7
|13DF7D| db $45 ; Repeat word
|13DF7E| dw $E738
|13DF80| db $05 ; Raw block
|13DF81| db $1C, $F3, $0F, $F8, $03, $FF
|13DF87| db $22 ; Repeat byte
|13DF88| db $F0
|13DF89| db $02 ; Raw block
|13DF8A| db $F8, $F8, $FC
|13DF8D| db $22 ; Repeat byte
|13DF8E| db $FF
|13DF8F| db $0D ; Raw block
|13DF90| db $88, $FF, $4B, $FF, $00, $FF, $2C, $FF
|13DF98| db $42, $BD, $00, $CB, $00, $FF
|13DF9E| db $25 ; Repeat byte
|13DF9F| db $00
|13DFA0| db $E0, $2A ; EXT Raw block
|13DFA2| db $42, $34, $00, $9A, $56, $BD, $61, $AF
|13DFAA| db $76, $DC, $3E, $EB, $1C, $75, $88, $3F
|13DFB2| db $C2, $07, $F8, $21, $02, $00, $81, $80
|13DFBA| db $C2, $E0, $F8, $ED, $33, $DE, $23, $D9
|13DFC2| db $26, $E3, $1D, $F7, $08, $7F, $82, $3D
|13DFCA| db $C2, $07, $F8
|13DFCD| db $22 ; Repeat byte
|13DFCE| db $00
|13DFCF| db $04 ; Raw block
|13DFD0| db $80, $80, $C0, $E0, $F8
|13DFD5| db $4E ; Repeat word
|13DFD6| dw $FF00
|13DFD8| db $2A ; Repeat byte
|13DFD9| db $FF
|13DFDA| db $00 ; Raw block
|13DFDB| db $DF
|13DFDC| db $22 ; Repeat byte
|13DFDD| db $FF
|13DFDE| db $06 ; Raw block
|13DFDF| db $FB, $FB, $FF, $FF, $EF, $FF, $E7
|13DFE6| db $22 ; Repeat byte
|13DFE7| db $FF
|13DFE8| db $22 ; Repeat byte
|13DFE9| db $00
|13DFEA| db $00 ; Raw block
|13DFEB| db $04
|13DFEC| db $23 ; Repeat byte
|13DFED| db $00
|13DFEE| db $E0, $27 ; EXT Raw block
|13DFF0| db $29, $3E, $8C, $9F, $D6, $DF, $CB, $CF
|13DFF8| db $E5, $E7, $F0, $F1, $FC, $FC, $FE, $FE
|13E000| db $C0, $60, $20, $30, $18, $0E, $03, $01
|13E008| db $79, $FE, $F1, $FE, $E1, $FE, $83, $FC
|13E010| db $1E, $E1, $3C, $C3, $E0, $1F, $C0, $3F
|13E018| db $24 ; Repeat byte
|13E019| db $00
|13E01A| db $0A ; Raw block
|13E01B| db $01, $03, $0F, $E0, $60, $E1, $61, $99
|13E023| db $79, $4D, $BD
|13E026| db $43 ; Repeat word
|13E027| dw $BC4C
|13E029| db $83 ; Copy past
|13E02A| dw $0542
|13E02C| db $0A ; Raw block
|13E02D| db $1F, $1E, $06, $82, $83, $83, $1E, $06
|13E035| db $FF, $FF, $F6
|13E038| db $22 ; Repeat byte
|13E039| db $FE
|13E03A| db $00 ; Raw block
|13E03B| db $A7
|13E03C| db $22 ; Repeat byte
|13E03D| db $E7
|13E03E| db $00 ; Raw block
|13E03F| db $FD
|13E040| db $22 ; Repeat byte
|13E041| db $FF
|13E042| db $11 ; Raw block
|13E043| db $9F, $9F, $00, $01, $01, $18, $18, $00
|13E04B| db $00, $60, $7C, $83, $FF, $00, $FF, $7C
|13E053| db $C3, $C3
|13E055| db $23 ; Repeat byte
|13E056| db $00
|13E057| db $01 ; Raw block
|13E058| db $3F, $3F
|13E05A| db $22 ; Repeat byte
|13E05B| db $FF
|13E05C| db $02 ; Raw block
|13E05D| db $83, $00, $3C
|13E060| db $23 ; Repeat byte
|13E061| db $FF
|13E062| db $43 ; Repeat word
|13E063| dw $7FB8
|13E065| db $0B ; Raw block
|13E066| db $BC, $7F, $FF, $BF, $5F, $BF, $6F, $DF
|13E06E| db $38, $E7, $0F, $F8
|13E072| db $22 ; Repeat byte
|13E073| db $80
|13E074| db $05 ; Raw block
|13E075| db $C0, $C0, $E0, $F8, $FF, $C0
|13E07B| db $83 ; Copy past
|13E07C| dw $00E3
|13E07E| db $02 ; Raw block
|13E07F| db $7F, $91, $7F
|13E082| db $83 ; Copy past
|13E083| dw $00DB
|13E085| db $03 ; Raw block
|13E086| db $9E, $FF, $8C, $FF
|13E08A| db $27 ; Repeat byte
|13E08B| db $00
|13E08C| db $10 ; Raw block
|13E08D| db $E6, $0F, $E1, $06, $67, $84, $65, $86
|13E095| db $75, $96, $ED, $1E, $E5, $0E, $E1, $06
|13E09D| db $D0
|13E09E| db $22 ; Repeat byte
|13E09F| db $D8
|13E0A0| db $E0, $33 ; EXT Raw block
|13E0A2| db $C8, $C0, $D0, $D8, $E7, $04, $E5, $06
|13E0AA| db $FD, $1E, $65, $9E, $69, $8E, $67, $84
|13E0B2| db $E3, $02, $E1, $01, $D8, $D8, $C0, $C0
|13E0BA| db $D0, $D8, $DC, $DE, $36, $C9, $18, $E6
|13E0C2| db $09, $F5, $33, $CE, $0B, $F6, $0C, $F3
|13E0CA| db $03, $FC, $0C, $F3, $FE, $F9, $FA, $F0
|13E0D2| db $F8, $FC, $FB, $FF
|13E0D6| db $FF ; End of GFX 3F

;===================================================================================================

GFX_40:
|13E0D7| db $0F ; Raw block
|13E0D8| db $7E, $01, $C0, $3E, $C0, $20, $7C, $82
|13E0E0| db $06, $79, $06, $01, $FC, $02, $00, $FC
|13E0E8| db $27 ; Repeat byte
|13E0E9| db $00
|13E0EA| db $4B ; Repeat word
|13E0EB| dw $21C6
|13E0ED| db $03 ; Raw block
|13E0EE| db $7E, $81, $00, $7F
|13E0F2| db $27 ; Repeat byte
|13E0F3| db $00
|13E0F4| db $09 ; Raw block
|13E0F5| db $FC, $02, $C6, $39, $C6, $21, $FC, $02
|13E0FD| db $C0, $3C
|13E0FF| db $43 ; Repeat word
|13E100| dw $20C0
|13E102| db $01 ; Raw block
|13E103| db $00, $E0
|13E105| db $27 ; Repeat byte
|13E106| db $00
|13E107| db $85 ; Copy past
|13E108| dw $0000
|13E10A| db $01 ; Raw block
|13E10B| db $FE, $00
|13E10D| db $83 ; Copy past
|13E10E| dw $0002
|13E110| db $03 ; Raw block
|13E111| db $7E, $81, $00, $7E
|13E115| db $27 ; Repeat byte
|13E116| db $00
|13E117| db $87 ; Copy past
|13E118| dw $0030
|13E11A| db $07 ; Raw block
|13E11B| db $D8, $24, $CC, $32, $C6, $29, $00, $C6
|13E123| db $27 ; Repeat byte
|13E124| db $00
|13E125| db $09 ; Raw block
|13E126| db $1F, $00, $30, $0F, $30, $08, $3F, $00
|13E12E| db $30, $0F
|13E130| db $43 ; Repeat word
|13E131| dw $0830
|13E133| db $01 ; Raw block
|13E134| db $00, $30
|13E136| db $27 ; Repeat byte
|13E137| db $00
|13E138| db $0F ; Raw block
|13E139| db $BF, $40, $01, $BE, $01, $00, $9F, $40
|13E141| db $31, $8E, $31, $08, $1F, $20, $00, $1F
|13E149| db $27 ; Repeat byte
|13E14A| db $00
|13E14B| db $01 ; Raw block
|13E14C| db $3F, $80
|13E14E| db $4B ; Repeat word
|13E14F| dw $49B6
|13E151| db $01 ; Raw block
|13E152| db $00, $BF
|13E154| db $27 ; Repeat byte
|13E155| db $00
|13E156| db $01 ; Raw block
|13E157| db $99, $44
|13E159| db $49 ; Repeat word
|13E15A| dw $24DB
|13E15C| db $03 ; Raw block
|13E15D| db $D9, $26, $00, $FD
|13E161| db $27 ; Repeat byte
|13E162| db $00
|13E163| db $03 ; Raw block
|13E164| db $F9, $04, $03, $FC
|13E168| db $47 ; Repeat word
|13E169| dw $0003
|13E16B| db $03 ; Raw block
|13E16C| db $F9, $06, $00, $FD
|13E170| db $27 ; Repeat byte
|13E171| db $00
|13E172| db $03 ; Raw block
|13E173| db $F9, $04, $0D, $F2
|13E177| db $47 ; Repeat word
|13E178| dw $020D
|13E17A| db $03 ; Raw block
|13E17B| db $F9, $06, $00, $F9
|13E17F| db $27 ; Repeat byte
|13E180| db $00
|13E181| db $01 ; Raw block
|13E182| db $FC, $02
|13E184| db $4B ; Repeat word
|13E185| dw $49B6
|13E187| db $01 ; Raw block
|13E188| db $00, $FF
|13E18A| db $2B ; Repeat byte
|13E18B| db $00
|13E18C| db $02 ; Raw block
|13E18D| db $07, $00, $07
|13E190| db $44 ; Repeat word
|13E191| dw $0603
|13E193| db $03 ; Raw block
|13E194| db $7E, $03, $7E, $3F
|13E198| db $2B ; Repeat byte
|13E199| db $00
|13E19A| db $03 ; Raw block
|13E19B| db $FE, $00, $FF, $FE
|13E19F| db $47 ; Repeat word
|13E1A0| dw $FF03
|13E1A2| db $27 ; Repeat byte
|13E1A3| db $00
|13E1A4| db $02 ; Raw block
|13E1A5| db $7F, $00, $7F
|13E1A8| db $44 ; Repeat word
|13E1A9| dw $603F
|13E1AB| db $04 ; Raw block
|13E1AC| db $E0, $3F, $E0, $BF, $E0
|13E1B1| db $22 ; Repeat byte
|13E1B2| db $FF
|13E1B3| db $27 ; Repeat byte
|13E1B4| db $00
|13E1B5| db $05 ; Raw block
|13E1B6| db $FC, $00, $FE, $FC, $83, $FE
|13E1BC| db $46 ; Repeat word
|13E1BD| dw $FF83
|13E1BF| db $22 ; Repeat byte
|13E1C0| db $FF
|13E1C1| db $2D ; Repeat byte
|13E1C2| db $00
|13E1C3| db $09 ; Raw block
|13E1C4| db $80, $00, $FE, $80, $FF, $FE, $E1, $FF
|13E1CC| db $E0, $FF
|13E1CE| db $2F ; Repeat byte
|13E1CF| db $00
|13E1D0| db $07 ; Raw block
|13E1D1| db $1F, $00, $FF, $1F, $F0, $FF, $30, $FF
|13E1D9| db $2F ; Repeat byte
|13E1DA| db $00
|13E1DB| db $07 ; Raw block
|13E1DC| db $F0, $00, $F8, $F0, $1C, $F8, $1E, $FC
|13E1E4| db $2B ; Repeat byte
|13E1E5| db $00
|13E1E6| db $02 ; Raw block
|13E1E7| db $07, $00, $07
|13E1EA| db $44 ; Repeat word
|13E1EB| dw $0603
|13E1ED| db $43 ; Repeat word
|13E1EE| dw $070C
|13E1F0| db $27 ; Repeat byte
|13E1F1| db $00
|13E1F2| db $02 ; Raw block
|13E1F3| db $03, $00, $03
|13E1F6| db $43 ; Repeat word
|13E1F7| dw $FF01
|13E1F9| db $46 ; Repeat word
|13E1FA| dw $03FF
|13E1FC| db $01 ; Raw block
|13E1FD| db $07, $FF
|13E1FF| db $27 ; Repeat byte
|13E200| db $00
|13E201| db $02 ; Raw block
|13E202| db $FF, $00, $FF
|13E205| db $49 ; Repeat word
|13E206| dw $04FF
|13E208| db $22 ; Repeat byte
|13E209| db $FF
|13E20A| db $27 ; Repeat byte
|13E20B| db $00
|13E20C| db $04 ; Raw block
|13E20D| db $E0, $00, $F0, $E0, $18
|13E212| db $84 ; Copy past
|13E213| dw $01BB
|13E215| db $43 ; Repeat word
|13E216| dw $FE1F
|13E218| db $01 ; Raw block
|13E219| db $FF, $FE
|13E21B| db $2B ; Repeat byte
|13E21C| db $00
|13E21D| db $07 ; Raw block
|13E21E| db $3F, $00, $3F, $1E, $31, $1F, $30, $1F
|13E226| db $43 ; Repeat word
|13E227| dw $3F60
|13E229| db $2D ; Repeat byte
|13E22A| db $00
|13E22B| db $02 ; Raw block
|13E22C| db $FF, $00, $FF
|13E22F| db $46 ; Repeat word
|13E230| dw $40FF
|13E232| db $2D ; Repeat byte
|13E233| db $00
|13E234| db $02 ; Raw block
|13E235| db $FF, $00, $FF
|13E238| db $46 ; Repeat word
|13E239| dw $00FF
|13E23B| db $2D ; Repeat byte
|13E23C| db $00
|13E23D| db $09 ; Raw block
|13E23E| db $E7, $00, $F7, $E3, $3E, $F3, $3E, $FB
|13E246| db $3E, $FF
|13E248| db $2D ; Repeat byte
|13E249| db $00
|13E24A| db $02 ; Raw block
|13E24B| db $FF, $00, $FF
|13E24E| db $46 ; Repeat word
|13E24F| dw $01FF
|13E251| db $2B ; Repeat byte
|13E252| db $00
|13E253| db $0B ; Raw block
|13E254| db $0F, $00, $BF, $0F, $F3, $BF, $C1, $FF
|13E25C| db $80, $FF, $C0, $FF
|13E260| db $2B ; Repeat byte
|13E261| db $00
|13E262| db $0B ; Raw block
|13E263| db $0E, $00, $9F, $0E, $F1, $9F, $F0, $FF
|13E26B| db $E0, $FF, $60, $FF
|13E26F| db $2D ; Repeat byte
|13E270| db $00
|13E271| db $09 ; Raw block
|13E272| db $C0, $00, $E0, $C0, $70, $E0, $78, $F0
|13E27A| db $FC, $F8
|13E27C| db $27 ; Repeat byte
|13E27D| db $00
|13E27E| db $4D ; Repeat word
|13E27F| dw $3F60
|13E281| db $01 ; Raw block
|13E282| db $7E, $3F
|13E284| db $28 ; Repeat byte
|13E285| db $00
|13E286| db $4C ; Repeat word
|13E287| dw $00FF
|13E289| db $01 ; Raw block
|13E28A| db $03, $FF
|13E28C| db $28 ; Repeat byte
|13E28D| db $00
|13E28E| db $4C ; Repeat word
|13E28F| dw $00FF
|13E291| db $01 ; Raw block
|13E292| db $F8, $FF
|13E294| db $27 ; Repeat byte
|13E295| db $00
|13E296| db $06 ; Raw block
|13E297| db $1F, $FF, $0F, $FF, $07, $FF, $03
|13E29E| db $44 ; Repeat word
|13E29F| dw $01FF
|13E2A1| db $43 ; Repeat word
|13E2A2| dw $FF03
|13E2A4| db $27 ; Repeat byte
|13E2A5| db $00
|13E2A6| db $4B ; Repeat word
|13E2A7| dw $FFE0
|13E2A9| db $43 ; Repeat word
|13E2AA| dw $FFC0
|13E2AC| db $27 ; Repeat byte
|13E2AD| db $00
|13E2AE| db $4F ; Repeat word
|13E2AF| dw $FF30
|13E2B1| db $27 ; Repeat byte
|13E2B2| db $00
|13E2B3| db $01 ; Raw block
|13E2B4| db $1F, $FE
|13E2B6| db $4D ; Repeat word
|13E2B7| dw $FF1F
|13E2B9| db $29 ; Repeat byte
|13E2BA| db $00
|13E2BB| db $45 ; Repeat word
|13E2BC| dw $0080
|13E2BE| db $07 ; Raw block
|13E2BF| db $83, $00, $8F, $03, $9C, $0F, $B0, $1F
|13E2C7| db $27 ; Repeat byte
|13E2C8| db $00
|13E2C9| db $01 ; Raw block
|13E2CA| db $18, $0F
|13E2CC| db $83 ; Copy past
|13E2CD| dw $0232
|13E2CF| db $02 ; Raw block
|13E2D0| db $C0, $7F, $80
|13E2D3| db $46 ; Repeat word
|13E2D4| dw $00FF
|13E2D6| db $28 ; Repeat byte
|13E2D7| db $00
|13E2D8| db $4A ; Repeat word
|13E2D9| dw $00FF
|13E2DB| db $00 ; Raw block
|13E2DC| db $7F
|13E2DD| db $22 ; Repeat byte
|13E2DE| db $FF
|13E2DF| db $27 ; Repeat byte
|13E2E0| db $00
|13E2E1| db $02 ; Raw block
|13E2E2| db $03, $FF, $01
|13E2E5| db $4C ; Repeat word
|13E2E6| dw $00FF
|13E2E8| db $27 ; Repeat byte
|13E2E9| db $00
|13E2EA| db $45 ; Repeat word
|13E2EB| dw $FEFF
|13E2ED| db $09 ; Raw block
|13E2EE| db $7F, $F0, $79, $F0, $7F, $F1, $FE, $FF
|13E2F6| db $F8, $FF
|13E2F8| db $2F ; Repeat byte
|13E2F9| db $00
|13E2FA| db $83 ; Copy past
|13E2FB| dw $013C
|13E2FD| db $83 ; Copy past
|13E2FE| dw $03DA
|13E300| db $2B ; Repeat byte
|13E301| db $00
|13E302| db $43 ; Repeat word
|13E303| dw $0001
|13E305| db $07 ; Raw block
|13E306| db $03, $01, $C6, $03, $EC, $C7, $3C, $E7
|13E30E| db $27 ; Repeat byte
|13E30F| db $00
|13E310| db $43 ; Repeat word
|13E311| dw $7FC0
|13E313| db $02 ; Raw block
|13E314| db $80, $FF, $81
|13E317| db $48 ; Repeat word
|13E318| dw $01FF
|13E31A| db $27 ; Repeat byte
|13E31B| db $00
|13E31C| db $00 ; Raw block
|13E31D| db $40
|13E31E| db $43 ; Repeat word
|13E31F| dw $C0FF
|13E321| db $24 ; Repeat byte
|13E322| db $FF
|13E323| db $45 ; Repeat word
|13E324| dw $FF00
|13E326| db $28 ; Repeat byte
|13E327| db $00
|13E328| db $43 ; Repeat word
|13E329| dw $00FF
|13E32B| db $24 ; Repeat byte
|13E32C| db $FF
|13E32D| db $45 ; Repeat word
|13E32E| dw $FF00
|13E330| db $27 ; Repeat byte
|13E331| db $00
|13E332| db $00 ; Raw block
|13E333| db $3F
|13E334| db $44 ; Repeat word
|13E335| dw $3CFF
|13E337| db $43 ; Repeat word
|13E338| dw $FFFC
|13E33A| db $05 ; Raw block
|13E33B| db $0C, $FF, $0F, $FF, $0E, $FF
|13E341| db $27 ; Repeat byte
|13E342| db $00
|13E343| db $00 ; Raw block
|13E344| db $FF
|13E345| db $49 ; Repeat word
|13E346| dw $00FF
|13E348| db $22 ; Repeat byte
|13E349| db $FF
|13E34A| db $01 ; Raw block
|13E34B| db $01, $FF
|13E34D| db $27 ; Repeat byte
|13E34E| db $00
|13E34F| db $02 ; Raw block
|13E350| db $E0, $FF, $F1
|13E353| db $4A ; Repeat word
|13E354| dw $80FF
|13E356| db $01 ; Raw block
|13E357| db $81, $FF
|13E359| db $27 ; Repeat byte
|13E35A| db $00
|13E35B| db $02 ; Raw block
|13E35C| db $C0, $FF, $C1
|13E35F| db $4A ; Repeat word
|13E360| dw $00FF
|13E362| db $01 ; Raw block
|13E363| db $F0, $FF
|13E365| db $27 ; Repeat byte
|13E366| db $00
|13E367| db $43 ; Repeat word
|13E368| dw $F8FC
|13E36A| db $01 ; Raw block
|13E36B| db $3C, $F8
|13E36D| db $49 ; Repeat word
|13E36E| dw $FC3E
|13E370| db $27 ; Repeat byte
|13E371| db $00
|13E372| db $07 ; Raw block
|13E373| db $7E, $3F, $3E, $1F, $1E, $0E, $0E, $06
|13E37B| db $47 ; Repeat word
|13E37C| dw $0206
|13E37E| db $01 ; Raw block
|13E37F| db $00, $00
|13E381| db $25 ; Repeat byte
|13E382| db $01
|13E383| db $43 ; Repeat word
|13E384| dw $FF03
|13E386| db $29 ; Repeat byte
|13E387| db $03
|13E388| db $03 ; Raw block
|13E389| db $01, $01, $00, $00
|13E38D| db $24 ; Repeat byte
|13E38E| db $FC
|13E38F| db $01 ; Raw block
|13E390| db $FE, $F8
|13E392| db $43 ; Repeat word
|13E393| dw $F0FF
|13E395| db $00 ; Raw block
|13E396| db $F0
|13E397| db $23 ; Repeat byte
|13E398| db $E0
|13E399| db $25 ; Repeat byte
|13E39A| db $FF
|13E39B| db $04 ; Raw block
|13E39C| db $00, $00, $0F, $1F, $1F
|13E3A1| db $22 ; Repeat byte
|13E3A2| db $00
|13E3A3| db $43 ; Repeat word
|13E3A4| dw $FF07
|13E3A6| db $23 ; Repeat byte
|13E3A7| db $0F
|13E3A8| db $01 ; Raw block
|13E3A9| db $1F, $1F
|13E3AB| db $25 ; Repeat byte
|13E3AC| db $FF
|13E3AD| db $04 ; Raw block
|13E3AE| db $00, $00, $F0, $F0, $E0
|13E3B3| db $22 ; Repeat byte
|13E3B4| db $00
|13E3B5| db $44 ; Repeat word
|13E3B6| dw $FFC0
|13E3B8| db $00 ; Raw block
|13E3B9| db $C0
|13E3BA| db $27 ; Repeat byte
|13E3BB| db $80
|13E3BC| db $23 ; Repeat byte
|13E3BD| db $00
|13E3BE| db $00 ; Raw block
|13E3BF| db $3F
|13E3C0| db $23 ; Repeat byte
|13E3C1| db $7F
|13E3C2| db $45 ; Repeat word
|13E3C3| dw $30FF
|13E3C5| db $00 ; Raw block
|13E3C6| db $30
|13E3C7| db $27 ; Repeat byte
|13E3C8| db $70
|13E3C9| db $04 ; Raw block
|13E3CA| db $F0, $F0, $00, $00, $CF
|13E3CF| db $23 ; Repeat byte
|13E3D0| db $8F
|13E3D1| db $00 ; Raw block
|13E3D2| db $0F
|13E3D3| db $43 ; Repeat word
|13E3D4| dw $FF1F
|13E3D6| db $25 ; Repeat byte
|13E3D7| db $1F
|13E3D8| db $03 ; Raw block
|13E3D9| db $1E, $1E, $18, $18
|13E3DD| db $23 ; Repeat byte
|13E3DE| db $00
|13E3DF| db $22 ; Repeat byte
|13E3E0| db $E0
|13E3E1| db $0C ; Raw block
|13E3E2| db $E1, $E7, $FF, $B0, $1F, $B8, $1F, $FC
|13E3EA| db $1C, $E6, $66, $87, $87
|13E3EF| db $25 ; Repeat byte
|13E3F0| db $07
|13E3F1| db $04 ; Raw block
|13E3F2| db $00, $00, $03, $19, $78
|13E3F7| db $22 ; Repeat byte
|13E3F8| db $F8
|13E3F9| db $83 ; Copy past
|13E3FA| dw $033A
|13E3FC| db $1B ; Raw block
|13E3FD| db $06, $06, $0C, $0C, $38, $38, $FC, $FC
|13E405| db $FE, $FE, $CF, $CF, $00, $00, $F9, $F3
|13E40D| db $C7, $03, $01, $00, $BF, $FF, $1E, $FF
|13E415| db $0E, $0E, $04, $04
|13E419| db $29 ; Repeat byte
|13E41A| db $00
|13E41B| db $01 ; Raw block
|13E41C| db $F1, $FB
|13E41E| db $23 ; Repeat byte
|13E41F| db $FF
|13E420| db $03 ; Raw block
|13E421| db $00, $FF, $01, $FF
|13E425| db $23 ; Repeat byte
|13E426| db $01
|13E427| db $23 ; Repeat byte
|13E428| db $03
|13E429| db $23 ; Repeat byte
|13E42A| db $07
|13E42B| db $07 ; Raw block
|13E42C| db $00, $00, $FE, $FE, $FC, $FC, $F8, $F8
|13E434| db $FF ; End of GFX 40

;===================================================================================================

GFX_41:
|13E435| db $03 ; Raw block
|13E436| db $F0, $FF, $E0, $FF
|13E43A| db $23 ; Repeat byte
|13E43B| db $C0
|13E43C| db $01 ; Raw block
|13E43D| db $81, $81
|13E43F| db $23 ; Repeat byte
|13E440| db $83
|13E441| db $09 ; Raw block
|13E442| db $07, $07, $00, $00, $3F, $3F, $7E, $7C
|13E44A| db $7C, $F8
|13E44C| db $44 ; Repeat word
|13E44D| dw $FF00
|13E44F| db $02 ; Raw block
|13E450| db $00, $C2, $C2
|13E453| db $23 ; Repeat byte
|13E454| db $C3
|13E455| db $11 ; Raw block
|13E456| db $83, $83, $87, $87, $00, $00, $FF, $3D
|13E45E| db $3C, $3C, $7C, $78, $1C, $F7, $0C, $FF
|13E466| db $0C, $0C
|13E468| db $23 ; Repeat byte
|13E469| db $04
|13E46A| db $01 ; Raw block
|13E46B| db $03, $03
|13E46D| db $23 ; Repeat byte
|13E46E| db $83
|13E46F| db $07 ; Raw block
|13E470| db $00, $00, $F3, $FB, $FB, $FC, $7C, $7C
|13E478| db $43 ; Repeat word
|13E479| dw $FF01
|13E47B| db $23 ; Repeat byte
|13E47C| db $01
|13E47D| db $27 ; Repeat byte
|13E47E| db $81
|13E47F| db $03 ; Raw block
|13E480| db $00, $00, $FE, $FE
|13E484| db $23 ; Repeat byte
|13E485| db $7E
|13E486| db $44 ; Repeat word
|13E487| dw $FF00
|13E489| db $00 ; Raw block
|13E48A| db $00
|13E48B| db $25 ; Repeat byte
|13E48C| db $F0
|13E48D| db $23 ; Repeat byte
|13E48E| db $E0
|13E48F| db $02 ; Raw block
|13E490| db $00, $00, $FF
|13E493| db $22 ; Repeat byte
|13E494| db $0F
|13E495| db $01 ; Raw block
|13E496| db $1F, $1F
|13E498| db $44 ; Repeat word
|13E499| dw $FF00
|13E49B| db $04 ; Raw block
|13E49C| db $00, $3F, $3F, $3C, $3C
|13E4A1| db $23 ; Repeat byte
|13E4A2| db $20
|13E4A3| db $09 ; Raw block
|13E4A4| db $60, $60, $00, $00, $FF, $C0, $C3, $DF
|13E4AC| db $DF, $9F
|13E4AE| db $43 ; Repeat word
|13E4AF| dw $FF0E
|13E4B1| db $03 ; Raw block
|13E4B2| db $0F, $0F, $FE, $FE
|13E4B6| db $23 ; Repeat byte
|13E4B7| db $7E
|13E4B8| db $0E ; Raw block
|13E4B9| db $7F, $7F, $3C, $3C, $00, $00, $F0, $01
|13E4C1| db $81, $81, $80, $C3, $01, $FF, $01
|13E4C8| db $22 ; Repeat byte
|13E4C9| db $FF
|13E4CA| db $25 ; Repeat byte
|13E4CB| db $01
|13E4CC| db $01 ; Raw block
|13E4CD| db $FF, $FF
|13E4CF| db $24 ; Repeat byte
|13E4D0| db $00
|13E4D1| db $22 ; Repeat byte
|13E4D2| db $FE
|13E4D3| db $00 ; Raw block
|13E4D4| db $00
|13E4D5| db $44 ; Repeat word
|13E4D6| dw $81FF
|13E4D8| db $29 ; Repeat byte
|13E4D9| db $80
|13E4DA| db $83 ; Copy past
|13E4DB| dw $006E
|13E4DD| db $24 ; Repeat byte
|13E4DE| db $7F
|13E4DF| db $00 ; Raw block
|13E4E0| db $1F
|13E4E1| db $43 ; Repeat word
|13E4E2| dw $FFF0
|13E4E4| db $29 ; Repeat byte
|13E4E5| db $00
|13E4E6| db $83 ; Copy past
|13E4E7| dw $0086
|13E4E9| db $24 ; Repeat byte
|13E4EA| db $FF
|13E4EB| db $00 ; Raw block
|13E4EC| db $9F
|13E4ED| db $44 ; Repeat word
|13E4EE| dw $FC3E
|13E4F0| db $48 ; Repeat word
|13E4F1| dw $3E3C
|13E4F3| db $03 ; Raw block
|13E4F4| db $FE, $FC, $00, $00
|13E4F8| db $24 ; Repeat byte
|13E4F9| db $C0
|13E4FA| db $00 ; Raw block
|13E4FB| db $00
|13E4FC| db $43 ; Repeat word
|13E4FD| dw $0206
|13E4FF| db $43 ; Repeat word
|13E500| dw $0207
|13E502| db $04 ; Raw block
|13E503| db $06, $03, $03, $01, $01
|13E508| db $22 ; Repeat byte
|13E509| db $00
|13E50A| db $24 ; Repeat byte
|13E50B| db $01
|13E50C| db $26 ; Repeat byte
|13E50D| db $00
|13E50E| db $43 ; Repeat word
|13E50F| dw $00FF
|13E511| db $02 ; Raw block
|13E512| db $00, $FF, $00
|13E515| db $23 ; Repeat byte
|13E516| db $FF
|13E517| db $00 ; Raw block
|13E518| db $7F
|13E519| db $25 ; Repeat byte
|13E51A| db $FF
|13E51B| db $01 ; Raw block
|13E51C| db $7F, $3F
|13E51E| db $23 ; Repeat byte
|13E51F| db $00
|13E520| db $43 ; Repeat word
|13E521| dw $00FF
|13E523| db $02 ; Raw block
|13E524| db $00, $FF, $00
|13E527| db $2C ; Repeat byte
|13E528| db $FF
|13E529| db $23 ; Repeat byte
|13E52A| db $03
|13E52B| db $06 ; Raw block
|13E52C| db $FF, $03, $FF, $06, $06, $FF, $06
|13E533| db $24 ; Repeat byte
|13E534| db $FF
|13E535| db $22 ; Repeat byte
|13E536| db $FC
|13E537| db $22 ; Repeat byte
|13E538| db $F9
|13E539| db $01 ; Raw block
|13E53A| db $F3, $F3
|13E53C| db $23 ; Repeat byte
|13E53D| db $00
|13E53E| db $43 ; Repeat word
|13E53F| dw $00FF
|13E541| db $02 ; Raw block
|13E542| db $01, $FF, $01
|13E545| db $28 ; Repeat byte
|13E546| db $FF
|13E547| db $22 ; Repeat byte
|13E548| db $FE
|13E549| db $00 ; Raw block
|13E54A| db $FC
|13E54B| db $23 ; Repeat byte
|13E54C| db $F0
|13E54D| db $43 ; Repeat word
|13E54E| dw $F0FF
|13E550| db $02 ; Raw block
|13E551| db $F0, $FF, $F0
|13E554| db $24 ; Repeat byte
|13E555| db $FF
|13E556| db $27 ; Repeat byte
|13E557| db $0F
|13E558| db $23 ; Repeat byte
|13E559| db $00
|13E55A| db $43 ; Repeat word
|13E55B| dw $00FF
|13E55D| db $02 ; Raw block
|13E55E| db $00, $FF, $00
|13E561| db $2A ; Repeat byte
|13E562| db $FF
|13E563| db $01 ; Raw block
|13E564| db $F8, $80
|13E566| db $23 ; Repeat byte
|13E567| db $07
|13E568| db $43 ; Repeat word
|13E569| dw $07FF
|13E56B| db $00 ; Raw block
|13E56C| db $1F
|13E56D| db $26 ; Repeat byte
|13E56E| db $FF
|13E56F| db $23 ; Repeat byte
|13E570| db $F8
|13E571| db $00 ; Raw block
|13E572| db $E0
|13E573| db $22 ; Repeat byte
|13E574| db $00
|13E575| db $01 ; Raw block
|13E576| db $87, $87
|13E578| db $83 ; Copy past
|13E579| dw $0111
|13E57B| db $04 ; Raw block
|13E57C| db $07, $06, $18, $1F, $F8
|13E581| db $24 ; Repeat byte
|13E582| db $FF
|13E583| db $22 ; Repeat byte
|13E584| db $00
|13E585| db $04 ; Raw block
|13E586| db $01, $07, $3F, $FF, $7F
|13E58B| db $23 ; Repeat byte
|13E58C| db $80
|13E58D| db $43 ; Repeat word
|13E58E| dw $00FF
|13E590| db $02 ; Raw block
|13E591| db $00, $FF, $00
|13E594| db $24 ; Repeat byte
|13E595| db $FF
|13E596| db $01 ; Raw block
|13E597| db $7F, $7F
|13E599| db $24 ; Repeat byte
|13E59A| db $FF
|13E59B| db $00 ; Raw block
|13E59C| db $FE
|13E59D| db $23 ; Repeat byte
|13E59E| db $0F
|13E59F| db $0A ; Raw block
|13E5A0| db $FF, $1F, $FF, $3F, $3F, $FC, $7C, $F8
|13E5A8| db $FC, $F8, $F8
|13E5AB| db $22 ; Repeat byte
|13E5AC| db $F0
|13E5AD| db $05 ; Raw block
|13E5AE| db $E0, $C0, $C0, $80, $00, $00
|13E5B4| db $23 ; Repeat byte
|13E5B5| db $07
|13E5B6| db $0B ; Raw block
|13E5B7| db $FF, $07, $FF, $86, $80, $FF, $C0, $7F
|13E5BF| db $FF, $7F, $7F, $3F
|13E5C3| db $22 ; Repeat byte
|13E5C4| db $F8
|13E5C5| db $07 ; Raw block
|13E5C6| db $79, $7F, $3F, $3F, $1F, $87, $87, $07
|13E5CE| db $43 ; Repeat word
|13E5CF| dw $FF07
|13E5D1| db $03 ; Raw block
|13E5D2| db $0F, $0E, $FF, $18
|13E5D6| db $24 ; Repeat byte
|13E5D7| db $FF
|13E5D8| db $07 ; Raw block
|13E5D9| db $78, $F8, $F8, $F0, $F1, $E7, $EF, $C7
|13E5E1| db $23 ; Repeat byte
|13E5E2| db $83
|13E5E3| db $43 ; Repeat word
|13E5E4| dw $03FF
|13E5E6| db $02 ; Raw block
|13E5E7| db $07, $FF, $07
|13E5EA| db $24 ; Repeat byte
|13E5EB| db $FF
|13E5EC| db $02 ; Raw block
|13E5ED| db $7C, $7C, $FC
|13E5F0| db $83 ; Copy past
|13E5F1| dw $0204
|13E5F3| db $00 ; Raw block
|13E5F4| db $E0
|13E5F5| db $23 ; Repeat byte
|13E5F6| db $81
|13E5F7| db $43 ; Repeat word
|13E5F8| dw $81FF
|13E5FA| db $02 ; Raw block
|13E5FB| db $81, $FF, $81
|13E5FE| db $24 ; Repeat byte
|13E5FF| db $FF
|13E600| db $27 ; Repeat byte
|13E601| db $7E
|13E602| db $23 ; Repeat byte
|13E603| db $C0
|13E604| db $01 ; Raw block
|13E605| db $FF, $C0
|13E607| db $84 ; Copy past
|13E608| dw $0126
|13E60A| db $24 ; Repeat byte
|13E60B| db $FF
|13E60C| db $22 ; Repeat byte
|13E60D| db $3F
|13E60E| db $24 ; Repeat byte
|13E60F| db $FF
|13E610| db $23 ; Repeat byte
|13E611| db $70
|13E612| db $43 ; Repeat word
|13E613| dw $00FF
|13E615| db $02 ; Raw block
|13E616| db $00, $FF, $00
|13E619| db $24 ; Repeat byte
|13E61A| db $FF
|13E61B| db $01 ; Raw block
|13E61C| db $8F, $8F
|13E61E| db $25 ; Repeat byte
|13E61F| db $FF
|13E620| db $23 ; Repeat byte
|13E621| db $3C
|13E622| db $06 ; Raw block
|13E623| db $FF, $3C, $FF, $1C, $1C, $FF, $1C
|13E62A| db $24 ; Repeat byte
|13E62B| db $FF
|13E62C| db $22 ; Repeat byte
|13E62D| db $C3
|13E62E| db $22 ; Repeat byte
|13E62F| db $E3
|13E630| db $01 ; Raw block
|13E631| db $F3, $F3
|13E633| db $23 ; Repeat byte
|13E634| db $00
|13E635| db $06 ; Raw block
|13E636| db $FF, $00, $FF, $30, $30, $FF, $00
|13E63D| db $27 ; Repeat byte
|13E63E| db $FF
|13E63F| db $01 ; Raw block
|13E640| db $CF, $CF
|13E642| db $22 ; Repeat byte
|13E643| db $FF
|13E644| db $23 ; Repeat byte
|13E645| db $E0
|13E646| db $43 ; Repeat word
|13E647| dw $C0FF
|13E649| db $02 ; Raw block
|13E64A| db $80, $FF, $01
|13E64D| db $24 ; Repeat byte
|13E64E| db $FF
|13E64F| db $07 ; Raw block
|13E650| db $1F, $1F, $3F, $3F, $7F, $FE, $FE, $3C
|13E658| db $23 ; Repeat byte
|13E659| db $60
|13E65A| db $06 ; Raw block
|13E65B| db $FF, $60, $FF, $E0, $E0, $FF, $E0
|13E662| db $24 ; Repeat byte
|13E663| db $FF
|13E664| db $22 ; Repeat byte
|13E665| db $9F
|13E666| db $24 ; Repeat byte
|13E667| db $1F
|13E668| db $0A ; Raw block
|13E669| db $FE, $FC, $BE, $B0, $F8, $90, $FC, $88
|13E671| db $86, $FC, $87
|13E674| db $44 ; Repeat word
|13E675| dw $FFFE
|13E677| db $07 ; Raw block
|13E678| db $00, $40, $60, $70, $78, $78, $F8, $F8
|13E680| db $83 ; Copy past
|13E681| dw $0224
|13E683| db $06 ; Raw block
|13E684| db $1F, $0F, $0F, $07, $07, $03, $03
|13E68B| db $2C ; Repeat byte
|13E68C| db $00
|13E68D| db $2A ; Repeat byte
|13E68E| db $FF
|13E68F| db $2C ; Repeat byte
|13E690| db $00
|13E691| db $26 ; Repeat byte
|13E692| db $FF
|13E693| db $03 ; Raw block
|13E694| db $F7, $FF, $F3, $FF
|13E698| db $24 ; Repeat byte
|13E699| db $00
|13E69A| db $00 ; Raw block
|13E69B| db $07
|13E69C| db $26 ; Repeat byte
|13E69D| db $00
|13E69E| db $2A ; Repeat byte
|13E69F| db $FF
|13E6A0| db $22 ; Repeat byte
|13E6A1| db $00
|13E6A2| db $02 ; Raw block
|13E6A3| db $20, $20, $FC
|13E6A6| db $26 ; Repeat byte
|13E6A7| db $00
|13E6A8| db $22 ; Repeat byte
|13E6A9| db $FF
|13E6AA| db $07 ; Raw block
|13E6AB| db $EF, $FF, $E7, $F7, $E3, $F3, $E1, $F1
|13E6B3| db $2C ; Repeat byte
|13E6B4| db $00
|13E6B5| db $26 ; Repeat byte
|13E6B6| db $FF
|13E6B7| db $03 ; Raw block
|13E6B8| db $FE, $FE, $F0, $F0
|13E6BC| db $2C ; Repeat byte
|13E6BD| db $00
|13E6BE| db $22 ; Repeat byte
|13E6BF| db $FF
|13E6C0| db $03 ; Raw block
|13E6C1| db $F9, $F9, $C0, $C0
|13E6C5| db $30 ; Repeat byte
|13E6C6| db $00
|13E6C7| db $26 ; Repeat byte
|13E6C8| db $FF
|13E6C9| db $00 ; Raw block
|13E6CA| db $7F
|13E6CB| db $86 ; Copy past
|13E6CC| dw $0318
|13E6CE| db $04 ; Raw block
|13E6CF| db $00, $3F, $1F, $0F, $07
|13E6D4| db $23 ; Repeat byte
|13E6D5| db $00
|13E6D6| db $28 ; Repeat byte
|13E6D7| db $FF
|13E6D8| db $0A ; Raw block
|13E6D9| db $FE, $FE, $F8, $F8, $E0, $E0, $00, $FC
|13E6E1| db $F0, $E0, $80
|13E6E4| db $23 ; Repeat byte
|13E6E5| db $00
|13E6E6| db $01 ; Raw block
|13E6E7| db $F0, $E0
|13E6E9| db $83 ; Copy past
|13E6EA| dw $020A
|13E6EC| db $00 ; Raw block
|13E6ED| db $80
|13E6EE| db $30 ; Repeat byte
|13E6EF| db $00
|13E6F0| db $86 ; Copy past
|13E6F1| dw $0318
|13E6F3| db $01 ; Raw block
|13E6F4| db $03, $03
|13E6F6| db $26 ; Repeat byte
|13E6F7| db $00
|13E6F8| db $00 ; Raw block
|13E6F9| db $0F
|13E6FA| db $26 ; Repeat byte
|13E6FB| db $00
|13E6FC| db $24 ; Repeat byte
|13E6FD| db $FF
|13E6FE| db $01 ; Raw block
|13E6FF| db $EF, $EF
|13E701| db $85 ; Copy past
|13E702| dw $01C8
|13E704| db $22 ; Repeat byte
|13E705| db $00
|13E706| db $01 ; Raw block
|13E707| db $07, $03
|13E709| db $25 ; Repeat byte
|13E70A| db $00
|13E70B| db $02 ; Raw block
|13E70C| db $FF, $FE, $FE
|13E70F| db $84 ; Copy past
|13E710| dw $0252
|13E712| db $04 ; Raw block
|13E713| db $F0, $E0, $E0, $80, $80
|13E718| db $22 ; Repeat byte
|13E719| db $00
|13E71A| db $01 ; Raw block
|13E71B| db $C0, $80
|13E71D| db $25 ; Repeat byte
|13E71E| db $00
|13E71F| db $22 ; Repeat byte
|13E720| db $FF
|13E721| db $87 ; Copy past
|13E722| dw $03C7
|13E724| db $01 ; Raw block
|13E725| db $07, $07
|13E727| db $22 ; Repeat byte
|13E728| db $00
|13E729| db $00 ; Raw block
|13E72A| db $7E
|13E72B| db $26 ; Repeat byte
|13E72C| db $00
|13E72D| db $2C ; Repeat byte
|13E72E| db $FF
|13E72F| db $22 ; Repeat byte
|13E730| db $00
|13E731| db $00 ; Raw block
|13E732| db $FF
|13E733| db $26 ; Repeat byte
|13E734| db $00
|13E735| db $2C ; Repeat byte
|13E736| db $FF
|13E737| db $22 ; Repeat byte
|13E738| db $00
|13E739| db $01 ; Raw block
|13E73A| db $03, $03
|13E73C| db $25 ; Repeat byte
|13E73D| db $00
|13E73E| db $2C ; Repeat byte
|13E73F| db $FF
|13E740| db $22 ; Repeat byte
|13E741| db $00
|13E742| db $01 ; Raw block
|13E743| db $F3, $F3
|13E745| db $25 ; Repeat byte
|13E746| db $00
|13E747| db $2C ; Repeat byte
|13E748| db $FF
|13E749| db $22 ; Repeat byte
|13E74A| db $00
|13E74B| db $01 ; Raw block
|13E74C| db $FF, $C0
|13E74E| db $25 ; Repeat byte
|13E74F| db $00
|13E750| db $22 ; Repeat byte
|13E751| db $FF
|13E752| db $02 ; Raw block
|13E753| db $FE, $FF, $FE
|13E756| db $43 ; Repeat word
|13E757| dw $FCFE
|13E759| db $02 ; Raw block
|13E75A| db $FC, $F8, $F8
|13E75D| db $22 ; Repeat byte
|13E75E| db $00
|13E75F| db $00 ; Raw block
|13E760| db $0C
|13E761| db $26 ; Repeat byte
|13E762| db $00
|13E763| db $22 ; Repeat byte
|13E764| db $FF
|13E765| db $89 ; Copy past
|13E766| dw $0453
|13E768| db $22 ; Repeat byte
|13E769| db $00
|13E76A| db $01 ; Raw block
|13E76B| db $1F, $0F
|13E76D| db $25 ; Repeat byte
|13E76E| db $00
|13E76F| db $49 ; Repeat word
|13E770| dw $FEFF
|13E772| db $02 ; Raw block
|13E773| db $FE, $FC, $FC
|13E776| db $22 ; Repeat byte
|13E777| db $00
|13E778| db $01 ; Raw block
|13E779| db $F8, $F0
|13E77B| db $E4, $35 ; EXT Repeat byte
|13E77D| db $00
|13E77E| db $17 ; Raw block
|13E77F| db $80, $01, $40, $02, $20, $04, $10, $08
|13E787| db $08, $10, $04, $20, $02, $40, $01, $80
|13E78F| db $80, $40, $20, $10, $08, $04, $02, $01
|13E797| db $97 ; Copy past
|13E798| dw $0540
|13E79A| db $F0, $2F ; EXT Copy past
|13E79C| dw $0540
|13E79E| db $F0, $2F ; EXT Copy past
|13E7A0| dw $0540
|13E7A2| db $02 ; Raw block
|13E7A3| db $01, $00, $02
|13E7A6| db $48 ; Repeat word
|13E7A7| dw $0500
|13E7A9| db $02 ; Raw block
|13E7AA| db $02, $00, $01
|13E7AD| db $28 ; Repeat byte
|13E7AE| db $00
|13E7AF| db $06 ; Raw block
|13E7B0| db $E0, $00, $10, $00, $C8, $00, $28
|13E7B7| db $83 ; Copy past
|13E7B8| dw $05EB
|13E7BA| db $03 ; Raw block
|13E7BB| db $00, $10, $00, $E0
|13E7BF| db $28 ; Repeat byte
|13E7C0| db $00
|13E7C1| db $FF ; End of GFX 41

;===================================================================================================

GFX_42:
|13E7C2| db $03 ; Raw block
|13E7C3| db $FF, $1F, $FF, $7F
|13E7C7| db $2B ; Repeat byte
|13E7C8| db $FF
|13E7C9| db $01 ; Raw block
|13E7CA| db $1F, $7F
|13E7CC| db $26 ; Repeat byte
|13E7CD| db $FF
|13E7CE| db $13 ; Raw block
|13E7CF| db $9E, $FF, $E6, $FF, $FB, $FF, $C5, $FF
|13E7D7| db $82, $FF, $81, $E3, $9C, $C1, $3E, $9F
|13E7DF| db $E7, $FB, $FD, $FE
|13E7E3| db $22 ; Repeat byte
|13E7E4| db $FF
|13E7E5| db $01 ; Raw block
|13E7E6| db $E3, $1C
|13E7E8| db $43 ; Repeat word
|13E7E9| dw $3EC1
|13E7EB| db $09 ; Raw block
|13E7EC| db $E3, $9C, $FF, $C0, $FF, $60, $FF, $B8
|13E7F4| db $FF, $51
|13E7F6| db $24 ; Repeat byte
|13E7F7| db $FF
|13E7F8| db $02 ; Raw block
|13E7F9| db $7C, $BB, $D7
|13E7FC| db $46 ; Repeat word
|13E7FD| dw $87FF
|13E7FF| db $00 ; Raw block
|13E800| db $CF
|13E801| db $47 ; Repeat word
|13E802| dw $FEFF
|13E804| db $23 ; Repeat byte
|13E805| db $FF
|13E806| db $23 ; Repeat byte
|13E807| db $FE
|13E808| db $01 ; Raw block
|13E809| db $FF, $7C
|13E80B| db $45 ; Repeat word
|13E80C| dw $7FFF
|13E80E| db $26 ; Repeat byte
|13E80F| db $FF
|13E810| db $00 ; Raw block
|13E811| db $F8
|13E812| db $23 ; Repeat byte
|13E813| db $7F
|13E814| db $24 ; Repeat byte
|13E815| db $FF
|13E816| db $02 ; Raw block
|13E817| db $F8, $FF, $FC
|13E81A| db $33 ; Repeat byte
|13E81B| db $FF
|13E81C| db $E0, $27 ; EXT Raw block
|13E81E| db $3F, $C3, $DF, $E7, $AF, $B7, $9F, $97
|13E826| db $FE, $F6, $6C, $F4, $90, $60, $E0, $00
|13E82E| db $03, $07, $47, $67, $06, $04, $00, $00
|13E836| db $FF, $00, $DD, $22, $FB, $24, $B7, $68
|13E83E| db $6F, $D0, $DF, $A0, $BF, $4B, $7F, $CF
|13E846| db $22 ; Repeat byte
|13E847| db $00
|13E848| db $10 ; Raw block
|13E849| db $01, $03, $07, $0F, $0F, $FF, $FE, $FF
|13E851| db $7E, $FF, $3E, $FF, $0E, $FF, $03, $FF
|13E859| db $01
|13E85A| db $43 ; Repeat word
|13E85B| dw $00FF
|13E85D| db $07 ; Raw block
|13E85E| db $FE, $7E, $3E, $0E, $03, $01, $00, $00
|13E866| db $46 ; Repeat word
|13E867| dw $F0FF
|13E869| db $08 ; Raw block
|13E86A| db $78, $FF, $7F, $FF, $BF, $FF, $0F, $FF
|13E872| db $00
|13E873| db $22 ; Repeat byte
|13E874| db $FF
|13E875| db $04 ; Raw block
|13E876| db $7F, $7F, $BF, $0F, $00
|13E87B| db $45 ; Repeat word
|13E87C| dw $7FFF
|13E87E| db $22 ; Repeat byte
|13E87F| db $FF
|13E880| db $06 ; Raw block
|13E881| db $FE, $FF, $FC, $FF, $F0, $FF, $00
|13E888| db $23 ; Repeat byte
|13E889| db $FF
|13E88A| db $03 ; Raw block
|13E88B| db $FE, $FC, $F0, $00
|13E88F| db $22 ; Repeat byte
|13E890| db $FF
|13E891| db $0C ; Raw block
|13E892| db $FC, $FE, $F1, $FD, $E2, $FF, $C7, $FF
|13E89A| db $4F, $FF, $78, $FF, $40
|13E89F| db $24 ; Repeat byte
|13E8A0| db $FF
|13E8A1| db $02 ; Raw block
|13E8A2| db $7F, $78, $40
|13E8A5| db $45 ; Repeat word
|13E8A6| dw $CF3F
|13E8A8| db $43 ; Repeat word
|13E8A9| dw $07FF
|13E8AB| db $05 ; Raw block
|13E8AC| db $7F, $87, $3F, $C3, $1F, $E1
|13E8B2| db $22 ; Repeat byte
|13E8B3| db $0F
|13E8B4| db $22 ; Repeat byte
|13E8B5| db $07
|13E8B6| db $08 ; Raw block
|13E8B7| db $03, $01, $FF, $01, $7F, $00, $1F, $00
|13E8BF| db $07
|13E8C0| db $28 ; Repeat byte
|13E8C1| db $00
|13E8C2| db $03 ; Raw block
|13E8C3| db $FF, $7F, $1F, $07
|13E8C7| db $25 ; Repeat byte
|13E8C8| db $00
|13E8C9| db $09 ; Raw block
|13E8CA| db $01, $00, $03, $00, $07, $01, $0F, $03
|13E8D2| db $1F, $07
|13E8D4| db $43 ; Repeat word
|13E8D5| dw $0F3F
|13E8D7| db $22 ; Repeat byte
|13E8D8| db $00
|13E8D9| db $84 ; Copy past
|13E8DA| dw $00BB
|13E8DC| db $11 ; Raw block
|13E8DD| db $7F, $1F, $7F, $19, $FF, $31, $FF, $21
|13E8E5| db $FF, $23, $FF, $27, $FF, $3F, $FF, $3C
|13E8ED| db $1F, $1F
|13E8EF| db $24 ; Repeat byte
|13E8F0| db $3F
|13E8F1| db $02 ; Raw block
|13E8F2| db $3C, $FF, $FC
|13E8F5| db $44 ; Repeat word
|13E8F6| dw $F8FF
|13E8F8| db $00 ; Raw block
|13E8F9| db $FC
|13E8FA| db $22 ; Repeat byte
|13E8FB| db $FF
|13E8FC| db $04 ; Raw block
|13E8FD| db $E0, $FF, $10, $FF, $E0
|13E902| db $24 ; Repeat byte
|13E903| db $FF
|13E904| db $02 ; Raw block
|13E905| db $E0, $1F, $FF
|13E908| db $43 ; Repeat word
|13E909| dw $3EC1
|13E90B| db $03 ; Raw block
|13E90C| db $E3, $1C, $FF, $01
|13E910| db $22 ; Repeat byte
|13E911| db $FF
|13E912| db $04 ; Raw block
|13E913| db $01, $FF, $02, $8F, $71
|13E918| db $24 ; Repeat byte
|13E919| db $FF
|13E91A| db $1A ; Raw block
|13E91B| db $01, $FE, $FF, $FB, $45, $FB, $C5, $F9
|13E923| db $A6, $FC, $23, $FF, $24, $FF, $2B, $EF
|13E92B| db $34, $F7, $B8, $C7, $D7, $B7, $37, $37
|13E933| db $3B, $3C, $BF
|13E936| db $45 ; Repeat word
|13E937| dw $FEFF
|13E939| db $22 ; Repeat byte
|13E93A| db $FF
|13E93B| db $06 ; Raw block
|13E93C| db $7E, $FF, $3C, $FF, $09, $FF, $00
|13E943| db $23 ; Repeat byte
|13E944| db $FF
|13E945| db $0F ; Raw block
|13E946| db $7E, $3C, $09, $00, $FF, $0E, $FF, $00
|13E94E| db $FF, $01, $FF, $11, $FF, $70, $FF, $FC
|13E956| db $22 ; Repeat byte
|13E957| db $FF
|13E958| db $03 ; Raw block
|13E959| db $7F, $FE, $E0, $81
|13E95D| db $83 ; Copy past
|13E95E| dw $0010
|13E960| db $00 ; Raw block
|13E961| db $7F
|13E962| db $43 ; Repeat word
|13E963| dw $00FF
|13E965| db $28 ; Repeat byte
|13E966| db $FF
|13E967| db $01 ; Raw block
|13E968| db $83, $FF
|13E96A| db $22 ; Repeat byte
|13E96B| db $00
|13E96C| db $25 ; Repeat byte
|13E96D| db $FF
|13E96E| db $02 ; Raw block
|13E96F| db $08, $0F, $FC
|13E972| db $44 ; Repeat word
|13E973| dw $FEFF
|13E975| db $08 ; Raw block
|13E976| db $FD, $FE, $FB, $FC, $07, $F9, $FF, $00
|13E97E| db $F0
|13E97F| db $24 ; Repeat byte
|13E980| db $00
|13E981| db $07 ; Raw block
|13E982| db $01, $00, $FF, $9F, $7F, $9F, $FF, $33
|13E98A| db $83 ; Copy past
|13E98B| dw $0170
|13E98D| db $44 ; Repeat word
|13E98E| dw $3FFF
|13E990| db $02 ; Raw block
|13E991| db $3C, $1F, $1F
|13E994| db $24 ; Repeat byte
|13E995| db $3F
|13E996| db $04 ; Raw block
|13E997| db $3C, $FF, $00, $FF, $C0
|13E99C| db $43 ; Repeat word
|13E99D| dw $67F8
|13E99F| db $09 ; Raw block
|13E9A0| db $F7, $2F, $F9, $2F, $F0, $0F, $FE, $01
|13E9A8| db $00, $C0
|13E9AA| db $25 ; Repeat byte
|13E9AB| db $E0
|13E9AC| db $0F ; Raw block
|13E9AD| db $E7, $18, $FF, $10, $7F, $90, $77, $98
|13E9B5| db $38, $CF, $BF, $C7, $DF, $E0, $67, $F8
|13E9BD| db $27 ; Repeat byte
|13E9BE| db $00
|13E9BF| db $0F ; Raw block
|13E9C0| db $FF, $00, $DC, $23, $F8, $27, $B0, $6F
|13E9C8| db $6B, $DC, $D4, $BB, $AB, $77, $57, $EF
|13E9D0| db $27 ; Repeat byte
|13E9D1| db $00
|13E9D2| db $49 ; Repeat word
|13E9D3| dw $00FF
|13E9D5| db $05 ; Raw block
|13E9D6| db $F8, $07, $F0, $0F, $F0, $CF
|13E9DC| db $26 ; Repeat byte
|13E9DD| db $00
|13E9DE| db $0A ; Raw block
|13E9DF| db $C0, $FF, $3F, $FF, $3B, $FF, $37, $FF
|13E9E7| db $27, $FF, $2F
|13E9EA| db $43 ; Repeat word
|13E9EB| dw $8F7F
|13E9ED| db $06 ; Raw block
|13E9EE| db $3F, $CF, $3F, $3B, $37, $27, $2F
|13E9F5| db $22 ; Repeat byte
|13E9F6| db $0F
|13E9F7| db $0E ; Raw block
|13E9F8| db $3F, $00, $4D, $3E, $52, $33, $56, $37
|13EA00| db $4C, $3F, $40, $3F, $61, $1E, $7F
|13EA07| db $22 ; Repeat byte
|13EA08| db $00
|13EA09| db $09 ; Raw block
|13EA0A| db $0C, $08, $00, $00, $40, $60, $3F, $07
|13EA12| db $3F, $01
|13EA14| db $43 ; Repeat word
|13EA15| dw $001F
|13EA17| db $0C ; Raw block
|13EA18| db $0F, $00, $07, $00, $03, $00, $01, $00
|13EA20| db $3F, $3F, $1F, $1F, $0F
|13EA25| db $83 ; Copy past
|13EA26| dw $0135
|13EA28| db $05 ; Raw block
|13EA29| db $3B, $FF, $17, $FF, $0F, $FF
|13EA2F| db $83 ; Copy past
|13EA30| dw $016B
|13EA32| db $00 ; Raw block
|13EA33| db $33
|13EA34| db $43 ; Repeat word
|13EA35| dw $3FFF
|13EA37| db $03 ; Raw block
|13EA38| db $3B, $17, $0F, $1F
|13EA3C| db $23 ; Repeat byte
|13EA3D| db $3F
|13EA3E| db $44 ; Repeat word
|13EA3F| dw $E0FF
|13EA41| db $00 ; Raw block
|13EA42| db $F0
|13EA43| db $46 ; Repeat word
|13EA44| dw $F8FF
|13EA46| db $02 ; Raw block
|13EA47| db $F0, $FF, $F0
|13EA4A| db $27 ; Repeat byte
|13EA4B| db $FF
|13EA4C| db $43 ; Repeat word
|13EA4D| dw $F807
|13EA4F| db $0B ; Raw block
|13EA50| db $8F, $70, $FF, $01, $FF, $03, $FF, $07
|13EA58| db $FF, $0E, $FF, $1D
|13EA5C| db $25 ; Repeat byte
|13EA5D| db $FF
|13EA5E| db $17 ; Raw block
|13EA5F| db $FE, $FD, $F8, $9F, $FF, $CF, $FF, $E0
|13EA67| db $FF, $CF, $FF, $BF, $FF, $70, $FF, $C0
|13EA6F| db $FC, $83, $9F, $CF, $E0, $CF, $BF, $7F
|13EA77| db $25 ; Repeat byte
|13EA78| db $FF
|13EA79| db $06 ; Raw block
|13EA7A| db $C7, $FF, $B3, $FF, $83, $FF, $C7
|13EA81| db $2C ; Repeat byte
|13EA82| db $FF
|13EA83| db $0E ; Raw block
|13EA84| db $04, $62, $26, $11, $3D, $82, $20, $DF
|13EA8C| db $47, $B8, $DF, $20, $5F, $20, $7F
|13EA93| db $28 ; Repeat byte
|13EA94| db $00
|13EA95| db $01 ; Raw block
|13EA96| db $FF, $FD
|13EA98| db $47 ; Repeat word
|13EA99| dw $FEFF
|13EA9B| db $24 ; Repeat byte
|13EA9C| db $FF
|13EA9D| db $01 ; Raw block
|13EA9E| db $1F, $FD
|13EAA0| db $23 ; Repeat byte
|13EAA1| db $FE
|13EAA2| db $3B ; Repeat byte
|13EAA3| db $FF
|13EAA4| db $00 ; Raw block
|13EAA5| db $0F
|13EAA6| db $44 ; Repeat word
|13EAA7| dw $0EFF
|13EAA9| db $00 ; Raw block
|13EAAA| db $1C
|13EAAB| db $84 ; Copy past
|13EAAC| dw $030A
|13EAAE| db $E0, $24 ; EXT Raw block
|13EAB0| db $C0, $FF, $00, $FF, $FE, $FE, $FC, $F8
|13EAB8| db $F0, $C0, $00, $E1, $1E, $D8, $3F, $8C
|13EAC0| db $4F, $B4, $07, $FC, $47, $BD, $66, $DB
|13EAC8| db $3D, $7F, $02, $C0, $80, $30, $48, $00
|13EAD0| db $00, $81, $43, $24, $FB
|13EAD5| db $43 ; Repeat word
|13EAD6| dw $7B84
|13EAD8| db $05 ; Raw block
|13EAD9| db $86, $79, $8F, $70, $FF, $0F
|13EADF| db $22 ; Repeat byte
|13EAE0| db $FF
|13EAE1| db $00 ; Raw block
|13EAE2| db $07
|13EAE3| db $24 ; Repeat byte
|13EAE4| db $00
|13EAE5| db $0C ; Raw block
|13EAE6| db $0F, $FF, $FF, $AD, $DE, $5B, $BC, $94
|13EAEE| db $7B, $8B, $77, $96, $6E
|13EAF3| db $43 ; Repeat word
|13EAF4| dw $6C94
|13EAF6| db $01 ; Raw block
|13EAF7| db $D3, $2B
|13EAF9| db $23 ; Repeat byte
|13EAFA| db $00
|13EAFB| db $0E ; Raw block
|13EAFC| db $01, $03, $03, $04, $F0, $CF, $F7, $CF
|13EB04| db $F0, $90, $F0, $00, $38, $00, $1C
|13EB0B| db $44 ; Repeat word
|13EB0C| dw $0E00
|13EB0E| db $07 ; Raw block
|13EB0F| db $C0, $C0, $FF, $FF, $3F, $1F, $0F, $0F
|13EB17| db $43 ; Repeat word
|13EB18| dw $CF3F
|13EB1A| db $01 ; Raw block
|13EB1B| db $1F, $EF
|13EB1D| db $46 ; Repeat word
|13EB1E| dw $E71F
|13EB20| db $02 ; Raw block
|13EB21| db $E3, $1F, $E1
|13EB24| db $22 ; Repeat byte
|13EB25| db $0F
|13EB26| db $22 ; Repeat byte
|13EB27| db $07
|13EB28| db $0C ; Raw block
|13EB29| db $03, $01, $FF, $8C, $FF, $C8, $FB, $6C
|13EB31| db $FC, $2F, $FF, $07, $3F
|13EB36| db $84 ; Copy past
|13EB37| dw $02D5
|13EB39| db $09 ; Raw block
|13EB3A| db $80, $C0, $E0, $E0, $F0, $38, $1F, $0F
|13EB42| db $06, $F9
|13EB44| db $43 ; Repeat word
|13EB45| dw $FC03
|13EB47| db $05 ; Raw block
|13EB48| db $0F, $F1, $1F, $E3, $1F, $E7
|13EB4E| db $43 ; Repeat word
|13EB4F| dw $CF3F
|13EB51| db $22 ; Repeat byte
|13EB52| db $00
|13EB53| db $85 ; Copy past
|13EB54| dw $00BB
|13EB56| db $88 ; Copy past
|13EB57| dw $02A1
|13EB59| db $43 ; Repeat word
|13EB5A| dw $0F7F
|13EB5C| db $01 ; Raw block
|13EB5D| db $3F, $0F
|13EB5F| db $84 ; Copy past
|13EB60| dw $02B0
|13EB62| db $22 ; Repeat byte
|13EB63| db $0F
|13EB64| db $83 ; Copy past
|13EB65| dw $0304
|13EB67| db $28 ; Repeat byte
|13EB68| db $FF
|13EB69| db $02 ; Raw block
|13EB6A| db $CF, $FF, $87
|13EB6D| db $28 ; Repeat byte
|13EB6E| db $FF
|13EB6F| db $02 ; Raw block
|13EB70| db $3B, $FF, $76
|13EB73| db $44 ; Repeat word
|13EB74| dw $ECFF
|13EB76| db $43 ; Repeat word
|13EB77| dw $FFD8
|13EB79| db $0A ; Raw block
|13EB7A| db $B8, $FF, $B8, $FB, $F7, $EF, $EF, $DF
|13EB82| db $DF, $BF, $BF
|13EB85| db $45 ; Repeat word
|13EB86| dw $07F8
|13EB88| db $01 ; Raw block
|13EB89| db $FC, $03
|13EB8B| db $46 ; Repeat word
|13EB8C| dw $00FF
|13EB8E| db $00 ; Raw block
|13EB8F| db $70
|13EB90| db $28 ; Repeat byte
|13EB91| db $FF
|13EB92| db $0E ; Raw block
|13EB93| db $00, $F0, $0F, $60, $9F, $01, $FE, $83
|13EB9B| db $FC, $87, $F8, $07, $F9, $3F, $C0
|13EBA2| db $25 ; Repeat byte
|13EBA3| db $00
|13EBA4| db $07 ; Raw block
|13EBA5| db $01, $00, $03, $FC, $1F, $E0, $7F, $81
|13EBAD| db $85 ; Copy past
|13EBAE| dw $01E6
|13EBB0| db $22 ; Repeat byte
|13EBB1| db $FF
|13EBB2| db $03 ; Raw block
|13EBB3| db $7F, $00, $00, $01
|13EBB7| db $84 ; Copy past
|13EBB8| dw $01F3
|13EBBA| db $03 ; Raw block
|13EBBB| db $7F, $00, $7F, $80
|13EBBF| db $44 ; Repeat word
|13EBC0| dw $007F
|13EBC2| db $06 ; Raw block
|13EBC3| db $80, $3F, $40, $1F, $20, $09, $06
|13EBCA| db $27 ; Repeat byte
|13EBCB| db $00
|13EBCC| db $0F ; Raw block
|13EBCD| db $CF, $30, $FB, $04, $F3, $0C, $E5, $9A
|13EBD5| db $F9, $C6, $FB, $E4, $FF, $F0, $FE, $F1
|13EBDD| db $22 ; Repeat byte
|13EBDE| db $00
|13EBDF| db $04 ; Raw block
|13EBE0| db $80, $C0, $E0, $F0, $F0
|13EBE5| db $4E ; Repeat word
|13EBE6| dw $00FF
|13EBE8| db $28 ; Repeat byte
|13EBE9| db $00
|13EBEA| db $07 ; Raw block
|13EBEB| db $FE, $FF, $FF, $3E, $3F, $1C, $1F, $09
|13EBF3| db $83 ; Copy past
|13EBF4| dw $0158
|13EBF6| db $43 ; Repeat word
|13EBF7| dw $0F3F
|13EBF9| db $03 ; Raw block
|13EBFA| db $E0, $F0, $3C, $19
|13EBFE| db $83 ; Copy past
|13EBFF| dw $00BC
|13EC01| db $0F ; Raw block
|13EC02| db $3F, $C0, $4D, $BE, $52, $B3, $56, $B7
|13EC0A| db $4C, $BF, $40, $BF, $21, $DE, $1F, $E0
|13EC12| db $83 ; Copy past
|13EC13| dw $02C8
|13EC15| db $23 ; Repeat byte
|13EC16| db $00
|13EC17| db $03 ; Raw block
|13EC18| db $7F, $9F, $7F, $99
|13EC1C| db $8D ; Copy past
|13EC1D| dw $016C
|13EC1F| db $24 ; Repeat byte
|13EC20| db $3F
|13EC21| db $0C ; Raw block
|13EC22| db $3C, $DF, $3F, $DD, $3E, $BB, $7C, $37
|13EC2A| db $F9, $2F, $F3, $5F, $E7
|13EC2F| db $43 ; Repeat word
|13EC30| dw $CF7F
|13EC32| db $22 ; Repeat byte
|13EC33| db $00
|13EC34| db $84 ; Copy past
|13EC35| dw $00BB
|13EC37| db $27 ; Repeat byte
|13EC38| db $00
|13EC39| db $85 ; Copy past
|13EC3A| dw $0152
|13EC3C| db $00 ; Raw block
|13EC3D| db $3F
|13EC3E| db $26 ; Repeat byte
|13EC3F| db $00
|13EC40| db $43 ; Repeat word
|13EC41| dw $0001
|13EC43| db $02 ; Raw block
|13EC44| db $1F, $00, $7F
|13EC47| db $86 ; Copy past
|13EC48| dw $01E5
|13EC4A| db $22 ; Repeat byte
|13EC4B| db $FF
|13EC4C| db $88 ; Copy past
|13EC4D| dw $04EF
|13EC4F| db $43 ; Repeat word
|13EC50| dw $00FF
|13EC52| db $28 ; Repeat byte
|13EC53| db $FF
|13EC54| db $01 ; Raw block
|13EC55| db $83, $FF
|13EC57| db $22 ; Repeat byte
|13EC58| db $00
|13EC59| db $25 ; Repeat byte
|13EC5A| db $FF
|13EC5B| db $46 ; Repeat word
|13EC5C| dw $0F1F
|13EC5E| db $45 ; Repeat word
|13EC5F| dw $1F07
|13EC61| db $02 ; Raw block
|13EC62| db $03, $1F, $01
|13EC65| db $22 ; Repeat byte
|13EC66| db $0F
|13EC67| db $22 ; Repeat byte
|13EC68| db $07
|13EC69| db $01 ; Raw block
|13EC6A| db $03, $01
|13EC6C| db $FF ; End of GFX 42

;===================================================================================================

GFX_43:
|13EC6D| db $E0, $32 ; EXT Raw block
|13EC6F| db $18, $F8, $0C, $FC, $E7, $FF, $10, $1F
|13EC77| db $0F, $0F, $06, $06, $15, $15, $25, $25
|13EC7F| db $07, $03, $00, $E0, $F0, $F9, $FB, $FB
|13EC87| db $18, $1F, $30, $3F, $E7, $FF, $08, $F8
|13EC8F| db $F0, $F0, $60, $60, $B8, $B8, $2C, $2C
|13EC97| db $E0, $C0, $00, $07, $0F, $9F, $DF, $DF
|13EC9F| db $0F, $FF, $1E
|13ECA2| db $22 ; Repeat byte
|13ECA3| db $FE
|13ECA4| db $E0, $24 ; EXT Raw block
|13ECA6| db $7F, $7F, $3F, $3F, $1F, $1F, $0C, $0C
|13ECAE| db $08, $08, $00, $01, $01, $80, $C0, $E6
|13ECB6| db $F7, $F7, $1A, $FA, $19, $F9, $1C, $FC
|13ECBE| db $0F, $FF, $77, $FF, $F8, $FF, $C4, $C7
|13ECC6| db $9A, $9B, $07, $07, $03
|13ECCB| db $22 ; Repeat byte
|13ECCC| db $00
|13ECCD| db $11 ; Raw block
|13ECCE| db $38, $7C, $FF, $00, $9F, $60, $8F, $F0
|13ECD6| db $CF, $F0, $F9, $66, $F4, $0F, $F6, $0F
|13ECDE| db $F9, $06
|13ECE0| db $27 ; Repeat byte
|13ECE1| db $00
|13ECE2| db $0E ; Raw block
|13ECE3| db $FF, $00, $F9, $06, $F9, $0E, $9F, $64
|13ECEB| db $0F, $F0, $4F, $F0, $9F, $60, $FF
|13ECF2| db $28 ; Repeat byte
|13ECF3| db $00
|13ECF4| db $45 ; Repeat word
|13ECF5| dw $00FF
|13ECF7| db $E0, $36 ; EXT Raw block
|13ECF9| db $DF, $20, $AF, $70, $A7, $78, $CF, $30
|13ED01| db $FF, $00, $7F, $3F, $0F, $07, $03, $03
|13ED09| db $01, $00, $07, $FF, $0E, $FE, $0D, $FD
|13ED11| db $04, $FC, $32, $FE, $29, $EF, $24, $E7
|13ED19| db $18, $FF, $00, $01, $03, $03, $01, $10
|13ED21| db $18, $00, $FF, $80, $33, $CC, $DD, $EE
|13ED29| db $6B, $76, $35, $3A, $18, $1F, $0E
|13ED30| db $22 ; Repeat byte
|13ED31| db $0F
|13ED32| db $22 ; Repeat byte
|13ED33| db $00
|13ED34| db $04 ; Raw block
|13ED35| db $80, $C0, $E0, $F0, $F0
|13ED3A| db $43 ; Repeat word
|13ED3B| dw $4D85
|13ED3D| db $E0, $23 ; EXT Raw block
|13ED3F| db $82, $46, $A0, $63, $B1, $71, $5F, $3F
|13ED47| db $AF, $9F, $DF, $C0, $33, $33, $39, $1C
|13ED4F| db $0E, $80, $C0, $E0, $FC, $03, $F9, $07
|13ED57| db $BC, $43, $31, $CF, $28, $D8, $B3, $53
|13ED5F| db $07, $E7, $AF, $EF
|13ED63| db $23 ; Repeat byte
|13ED64| db $00
|13ED65| db $04 ; Raw block
|13ED66| db $07, $0F, $1F, $1F, $AF
|13ED6B| db $22 ; Repeat byte
|13ED6C| db $EF
|13ED6D| db $0B ; Raw block
|13ED6E| db $E7, $E7, $33, $33, $18, $18, $0F, $0F
|13ED76| db $C7, $C7, $CE, $CF
|13ED7A| db $22 ; Repeat byte
|13ED7B| db $1F
|13ED7C| db $10 ; Raw block
|13ED7D| db $CF, $E7, $F0, $F8, $F0, $CF, $F0, $E3
|13ED85| db $1C, $3D, $C2, $0E, $F1, $1B, $1C, $F3
|13ED8D| db $F3
|13ED8E| db $23 ; Repeat byte
|13ED8F| db $FF
|13ED90| db $23 ; Repeat byte
|13ED91| db $00
|13ED92| db $13 ; Raw block
|13ED93| db $E0, $FC, $FF, $FF, $9F, $E0, $C3, $FC
|13ED9B| db $E1, $7E, $78, $BF, $2E, $DF, $4B, $77
|13EDA3| db $ED, $EB, $F7, $F5
|13EDA7| db $24 ; Repeat byte
|13EDA8| db $00
|13EDA9| db $02 ; Raw block
|13EDAA| db $80, $F0, $F8
|13EDAD| db $43 ; Repeat word
|13EDAE| dw $FF3F
|13EDB0| db $04 ; Raw block
|13EDB1| db $1F, $DF, $7F, $FF, $3F
|13EDB6| db $26 ; Repeat byte
|13EDB7| db $BF
|13EDB8| db $03 ; Raw block
|13EDB9| db $1F, $1F, $3F, $3F
|13EDBD| db $23 ; Repeat byte
|13EDBE| db $7F
|13EDBF| db $43 ; Repeat word
|13EDC0| dw $FFFC
|13EDC2| db $04 ; Raw block
|13EDC3| db $F8, $FB, $FE, $FF, $FC
|13EDC8| db $26 ; Repeat byte
|13EDC9| db $FD
|13EDCA| db $03 ; Raw block
|13EDCB| db $F8, $F8, $FC, $FC
|13EDCF| db $23 ; Repeat byte
|13EDD0| db $FE
|13EDD1| db $12 ; Raw block
|13EDD2| db $5E, $5E, $B9, $BF, $70, $7F, $E0, $FF
|13EDDA| db $C7, $FF, $0F, $FF, $1F, $FF, $FC, $FC
|13EDE2| db $E1, $C0, $80
|13EDE5| db $23 ; Repeat byte
|13EDE6| db $00
|13EDE7| db $13 ; Raw block
|13EDE8| db $03, $66, $66, $B3, $F3, $18, $F8, $0F
|13EDF0| db $FF, $C7, $FF, $E0, $FF, $F0, $FF, $38
|13EDF8| db $3F, $9F, $0F, $07
|13EDFC| db $23 ; Repeat byte
|13EDFD| db $00
|13EDFE| db $13 ; Raw block
|13EDFF| db $C0, $4C, $4C, $9F, $9F, $38, $3F, $F0
|13EE07| db $FF, $E0, $FF, $00, $FF, $07, $FF, $0C
|13EE0F| db $FC, $F3, $E0, $C0
|13EE13| db $23 ; Repeat byte
|13EE14| db $00
|13EE15| db $10 ; Raw block
|13EE16| db $03, $22, $23, $42, $43, $83, $83, $43
|13EE1E| db $43, $85, $87, $F8, $FF, $00, $FF, $9D
|13EE26| db $FF
|13EE27| db $23 ; Repeat byte
|13EE28| db $FC
|13EE29| db $00 ; Raw block
|13EE2A| db $78
|13EE2B| db $22 ; Repeat byte
|13EE2C| db $00
|13EE2D| db $8F ; Copy past
|13EE2E| dw $0060
|13EE30| db $27 ; Repeat byte
|13EE31| db $00
|13EE32| db $8F ; Copy past
|13EE33| dw $0060
|13EE35| db $27 ; Repeat byte
|13EE36| db $00
|13EE37| db $46 ; Repeat word
|13EE38| dw $00FF
|13EE3A| db $05 ; Raw block
|13EE3B| db $20, $CF, $70, $C7, $78, $EF
|13EE41| db $8A ; Copy past
|13EE42| dw $009D
|13EE44| db $0F ; Raw block
|13EE45| db $F8, $F7, $F3, $EF, $E7, $DF, $27, $DF
|13EE4D| db $DF, $E7, $EF, $F3, $F7, $F9, $EB, $EC
|13EE55| db $26 ; Repeat byte
|13EE56| db $00
|13EE57| db $10 ; Raw block
|13EE58| db $10, $3B, $FC, $17, $F8, $AE, $D1, $DC
|13EE60| db $E3, $99, $A7, $AC, $B3, $EE, $F1, $9C
|13EE68| db $E3
|13EE69| db $23 ; Repeat byte
|13EE6A| db $00
|13EE6B| db $15 ; Raw block
|13EE6C| db $40, $40, $00, $00, $1E, $DE, $3D, $BD
|13EE74| db $7D, $7D, $FB, $FB, $F7, $F7, $FF, $FF
|13EE7C| db $DB, $DB, $BF, $BF, $3F, $7F
|13EE82| db $25 ; Repeat byte
|13EE83| db $FF
|13EE84| db $E0, $2F ; EXT Raw block
|13EE86| db $07, $F8, $F3, $FC, $08, $0F, $04, $E7
|13EE8E| db $E6, $F7, $F6, $FF, $F4, $FF, $F0, $FF
|13EE96| db $01, $00, $F0, $18, $08, $C0, $E0, $F0
|13EE9E| db $F7, $F7, $9F, $9F, $87, $87, $62, $E2
|13EEA6| db $73, $F3, $B3, $F3, $D9, $F9, $69, $79
|13EEAE| db $0F, $63, $79, $1D, $0C, $0C, $06, $86
|13EEB6| db $23 ; Repeat byte
|13EEB7| db $FF
|13EEB8| db $05 ; Raw block
|13EEB9| db $FC, $FC, $F7, $F7, $1F, $1F
|13EEBF| db $83 ; Copy past
|13EEC0| dw $025E
|13EEC2| db $01 ; Raw block
|13EEC3| db $E8, $E8
|13EEC5| db $22 ; Repeat byte
|13EEC6| db $FF
|13EEC7| db $E0, $45 ; EXT Raw block
|13EEC9| db $F8, $E0, $07, $0F, $1F, $EF, $EF, $F9
|13EED1| db $F9, $E1, $E1, $46, $47, $CE, $CF, $CD
|13EED9| db $CF, $9B, $9F, $96, $9E, $F0, $C6, $9E
|13EEE1| db $B8, $30, $30, $60, $61, $88, $F7, $3F
|13EEE9| db $FF, $43, $C3, $83, $83, $03, $03, $33
|13EEF1| db $33, $66, $67, $CE, $CF, $00, $00, $3C
|13EEF9| db $7C, $FC, $FC, $F8, $F0, $67, $78, $CE
|13EF01| db $F1, $3C, $C3, $F9, $07, $ED, $13, $C6
|13EF09| db $39, $BB, $7C, $4D, $CE, $80
|13EF0F| db $25 ; Repeat byte
|13EF10| db $00
|13EF11| db $0C ; Raw block
|13EF12| db $30, $F3, $F3, $A7, $A7, $2C, $2C, $28
|13EF1A| db $28, $E0, $E0, $F0, $F0
|13EF1F| db $83 ; Copy past
|13EF20| dw $0000
|13EF22| db $00 ; Raw block
|13EF23| db $0F
|13EF24| db $22 ; Repeat byte
|13EF25| db $DF
|13EF26| db $0D ; Raw block
|13EF27| db $1F, $0F, $07, $03, $DF, $DF, $EF, $EF
|13EF2F| db $36, $36, $1A, $1A, $0B, $0B
|13EF35| db $62 ; Increment fill
|13EF36| db $02
|13EF37| db $06 ; Raw block
|13EF38| db $07, $08, $0F, $E0, $F0, $F9, $FD
|13EF3F| db $83 ; Copy past
|13EF40| dw $02E4
|13EF42| db $14 ; Raw block
|13EF43| db $FA, $FA, $34, $34, $D4, $D4, $9C, $9C
|13EF4B| db $2C, $3C, $C0, $FF, $1C, $FF, $3E, $FF
|13EF53| db $07, $CF, $EF, $E7, $C3
|13EF58| db $22 ; Repeat byte
|13EF59| db $00
|13EF5A| db $03 ; Raw block
|13EF5B| db $B2, $F3, $6D, $ED
|13EF5F| db $27 ; Repeat byte
|13EF60| db $D0
|13EF61| db $05 ; Raw block
|13EF62| db $68, $E8, $B1, $F1, $0C, $1E
|13EF68| db $23 ; Repeat byte
|13EF69| db $3F
|13EF6A| db $E0, $2B ; EXT Raw block
|13EF6C| db $1F, $0E, $FC, $03, $1E, $E1, $AF, $B0
|13EF74| db $37, $38, $36, $39, $8D, $93, $1A, $E6
|13EF7C| db $FA, $06, $00, $00, $40, $C0, $C0, $60
|13EF84| db $01, $01, $4F, $CC, $66, $E5, $3D, $FB
|13EF8C| db $FD, $03, $1E, $E1, $3F, $30, $7F, $78
|13EF94| db $7E, $79, $30, $18
|13EF98| db $22 ; Repeat byte
|13EF99| db $00
|13EF9A| db $02 ; Raw block
|13EF9B| db $C0, $80, $80
|13EF9E| db $43 ; Repeat word
|13EF9F| dw $CE4F
|13EFA1| db $03 ; Raw block
|13EFA2| db $A5, $66, $DB, $3C
|13EFA6| db $83 ; Copy past
|13EFA7| dw $00B5
|13EFA9| db $06 ; Raw block
|13EFAA| db $CF, $F0, $67, $78, $30, $30, $18
|13EFB1| db $83 ; Copy past
|13EFB2| dw $00B8
|13EFB4| db $06 ; Raw block
|13EFB5| db $83, $9B, $7C, $C3, $3C, $E7, $18
|13EFBC| db $43 ; Repeat word
|13EFBD| dw $00FF
|13EFBF| db $05 ; Raw block
|13EFC0| db $FB, $04, $F8, $07, $FC, $03
|13EFC6| db $27 ; Repeat byte
|13EFC7| db $00
|13EFC8| db $43 ; Repeat word
|13EFC9| dw $F00F
|13EFCB| db $03 ; Raw block
|13EFCC| db $8F, $70, $DF, $20
|13EFD0| db $43 ; Repeat word
|13EFD1| dw $00FF
|13EFD3| db $03 ; Raw block
|13EFD4| db $FC, $03, $F0, $0F
|13EFD8| db $27 ; Repeat byte
|13EFD9| db $00
|13EFDA| db $01 ; Raw block
|13EFDB| db $78, $7B
|13EFDD| db $62 ; Increment fill
|13EFDE| db $BC
|13EFDF| db $00 ; Raw block
|13EFE0| db $BE
|13EFE1| db $83 ; Copy past
|13EFE2| dw $0318
|13EFE4| db $83 ; Copy past
|13EFE5| dw $0262
|13EFE7| db $03 ; Raw block
|13EFE8| db $FD, $FD, $FC, $FE
|13EFEC| db $25 ; Repeat byte
|13EFED| db $FF
|13EFEE| db $43 ; Repeat word
|13EFEF| dw $0FF0
|13EFF1| db $01 ; Raw block
|13EFF2| db $FC, $83
|13EFF4| db $43 ; Repeat word
|13EFF5| dw $C3FC
|13EFF7| db $01 ; Raw block
|13EFF8| db $F8, $87
|13EFFA| db $43 ; Repeat word
|13EFFB| dw $0FF0
|13EFFD| db $27 ; Repeat byte
|13EFFE| db $FF
|13EFFF| db $49 ; Repeat word
|13F000| dw $FF00
|13F002| db $05 ; Raw block
|13F003| db $80, $7F, $C0, $3F, $E0, $1F
|13F009| db $27 ; Repeat byte
|13F00A| db $FF
|13F00B| db $07 ; Raw block
|13F00C| db $1F, $DF, $3F, $B8, $7F, $70, $FF, $F0
|13F014| db $44 ; Repeat word
|13F015| dw $F3FC
|13F017| db $04 ; Raw block
|13F018| db $83, $FC, $03, $3F, $7F
|13F01D| db $25 ; Repeat byte
|13F01E| db $FF
|13F01F| db $45 ; Repeat word
|13F020| dw $FF00
|13F022| db $09 ; Raw block
|13F023| db $3C, $C3, $7E, $81, $FF, $00, $FF, $18
|13F02B| db $FF, $3C
|13F02D| db $27 ; Repeat byte
|13F02E| db $FF
|13F02F| db $12 ; Raw block
|13F030| db $9D, $9E, $3B, $3C, $74, $7B, $EB, $F7
|13F038| db $C0, $F8, $91, $F1, $23, $E3, $40, $C0
|13F040| db $E0, $C0, $80
|13F043| db $83 ; Copy past
|13F044| dw $0103
|13F046| db $12 ; Raw block
|13F047| db $3F, $45, $C6, $6D, $EE, $B3, $FC, $CE
|13F04F| db $F1, $60, $7F, $B8, $BF, $DB, $DF, $B2
|13F057| db $BE, $38, $10
|13F05A| db $84 ; Copy past
|13F05B| dw $00D1
|13F05D| db $08 ; Raw block
|13F05E| db $C1, $07, $FF, $C0, $FF, $E0, $FF, $B0
|13F066| db $BF
|13F067| db $23 ; Repeat byte
|13F068| db $1F
|13F069| db $03 ; Raw block
|13F06A| db $2B, $3B, $D4, $F4
|13F06E| db $22 ; Repeat byte
|13F06F| db $00
|13F070| db $14 ; Raw block
|13F071| db $C0, $E0, $E0, $C7, $0F, $F0, $FF, $03
|13F079| db $FF, $07, $FF, $0D, $FD, $FA, $FA, $F8
|13F081| db $F8, $24, $3C, $13, $1F
|13F086| db $22 ; Repeat byte
|13F087| db $00
|13F088| db $E0, $58 ; EXT Raw block
|13F08A| db $03, $07, $07, $C3, $E0, $71, $F1, $69
|13F092| db $E9, $B1, $F1, $72, $73, $5C, $7F, $40
|13F09A| db $7F, $C1, $FF, $83, $FF, $0E, $1E, $1E
|13F0A2| db $9C, $80, $80, $00, $00, $5E, $7F, $00
|13F0AA| db $3F, $07, $3F, $0C, $7C, $19, $F9, $32
|13F0B2| db $F2, $64, $E4, $74, $F4, $80, $C0, $C0
|13F0BA| db $83, $07, $0F, $1F, $0F, $FA, $06, $1A
|13F0C2| db $E6, $8D, $93, $36, $39, $37, $38, $AF
|13F0CA| db $B0, $1E, $E1, $FC, $03, $01, $01, $60
|13F0D2| db $C0, $C0, $40, $00, $00, $7C, $7A, $3C
|13F0DA| db $32, $FD, $E3, $1E, $E1, $DF, $38, $27
|13F0E2| db $E4
|13F0E3| db $43 ; Repeat word
|13F0E4| dw $CC4F
|13F0E6| db $01 ; Raw block
|13F0E7| db $81, $C1
|13F0E9| db $22 ; Repeat byte
|13F0EA| db $00
|13F0EB| db $02 ; Raw block
|13F0EC| db $18, $30, $30
|13F0EF| db $45 ; Repeat word
|13F0F0| dw $7867
|13F0F2| db $09 ; Raw block
|13F0F3| db $1F, $E0, $E3, $1C, $DD, $3E, $A7, $66
|13F0FB| db $CF, $4E
|13F0FD| db $22 ; Repeat byte
|13F0FE| db $83
|13F0FF| db $14 ; Raw block
|13F100| db $03, $01, $00, $18, $30, $3B, $FC, $9D
|13F108| db $7E, $CD, $3E, $C1, $3E, $F3, $0C, $FF
|13F110| db $00, $07, $F8, $3B, $FC
|13F115| db $28 ; Repeat byte
|13F116| db $00
|13F117| db $0E ; Raw block
|13F118| db $FF, $00, $FF, $0F, $FF, $1C, $FC, $39
|13F120| db $F9, $72, $F2, $25, $E5, $07, $E6
|13F127| db $22 ; Repeat byte
|13F128| db $00
|13F129| db $06 ; Raw block
|13F12A| db $03, $07, $0F, $1E, $1C, $7F, $7F
|13F131| db $23 ; Repeat byte
|13F132| db $BF
|13F133| db $85 ; Copy past
|13F134| dw $03DE
|13F136| db $03 ; Raw block
|13F137| db $5B, $5B, $3D, $3D
|13F13B| db $27 ; Repeat byte
|13F13C| db $FF
|13F13D| db $07 ; Raw block
|13F13E| db $F8, $FB, $FC, $1D, $FE, $0E, $FF, $0F
|13F146| db $44 ; Repeat word
|13F147| dw $CF3F
|13F149| db $04 ; Raw block
|13F14A| db $C1, $3F, $C0, $FC, $FE
|13F14F| db $25 ; Repeat byte
|13F150| db $FF
|13F151| db $05 ; Raw block
|13F152| db $FC, $03, $FE, $01, $FE, $81
|13F158| db $44 ; Repeat word
|13F159| dw $F0FF
|13F15B| db $00 ; Raw block
|13F15C| db $F8
|13F15D| db $29 ; Repeat byte
|13F15E| db $FF
|13F15F| db $03 ; Raw block
|13F160| db $7F, $3F, $F8, $07
|13F164| db $45 ; Repeat word
|13F165| dw $3FC0
|13F167| db $46 ; Repeat word
|13F168| dw $FF00
|13F16A| db $29 ; Repeat byte
|13F16B| db $FF
|13F16C| db $08 ; Raw block
|13F16D| db $3C, $FF, $18, $FF, $00, $7E, $81, $3C
|13F175| db $C3
|13F176| db $44 ; Repeat word
|13F177| dw $FF00
|13F179| db $28 ; Repeat byte
|13F17A| db $FF
|13F17B| db $11 ; Raw block
|13F17C| db $7F, $80, $BC, $60, $83, $7C, $BC, $43
|13F184| db $97, $40, $F4, $28, $FF, $23, $7F, $80
|13F18C| db $00, $03
|13F18E| db $22 ; Repeat byte
|13F18F| db $2B
|13F190| db $14 ; Raw block
|13F191| db $03, $00, $00, $C4, $7C, $7F, $80, $00
|13F199| db $80, $20, $9F, $80, $00, $E3, $7F, $FF
|13F1A1| db $43, $E7, $18, $03, $00
|13F1A6| db $22 ; Repeat byte
|13F1A7| db $7F
|13F1A8| db $02 ; Raw block
|13F1A9| db $00, $00, $18
|13F1AC| db $FF ; End of GFX 43

;===================================================================================================

GFX_44:
|13F1AD| db $01 ; Raw block
|13F1AE| db $FF, $00
|13F1B0| db $43 ; Repeat word
|13F1B1| dw $C03F
|13F1B3| db $0B ; Raw block
|13F1B4| db $7F, $C0, $E7, $98, $E7, $3C, $DB, $3C
|13F1BC| db $E7, $18, $1F, $0F
|13F1C0| db $25 ; Repeat byte
|13F1C1| db $00
|13F1C2| db $03 ; Raw block
|13F1C3| db $FF, $00, $FF, $01
|13F1C7| db $43 ; Repeat word
|13F1C8| dw $03FE
|13F1CA| db $09 ; Raw block
|13F1CB| db $FF, $01, $E7, $18, $C3, $3C, $E7, $18
|13F1D3| db $F8, $F0
|13F1D5| db $25 ; Repeat byte
|13F1D6| db $00
|13F1D7| db $0B ; Raw block
|13F1D8| db $CA, $BD, $71, $52, $13, $32, $5F, $7E
|13F1E0| db $DD, $FE, $81, $FE
|13F1E4| db $83 ; Copy past
|13F1E5| dw $001B
|13F1E7| db $03 ; Raw block
|13F1E8| db $00, $8C, $CC, $80
|13F1EC| db $24 ; Repeat byte
|13F1ED| db $00
|13F1EE| db $46 ; Repeat word
|13F1EF| dw $00FF
|13F1F1| db $07 ; Raw block
|13F1F2| db $C0, $3F, $E0, $1F, $F0, $0F, $B0, $CF
|13F1FA| db $25 ; Repeat byte
|13F1FB| db $FF
|13F1FC| db $07 ; Raw block
|13F1FD| db $3F, $1F, $01, $FE, $07, $F8, $0F, $F0
|13F205| db $43 ; Repeat word
|13F206| dw $E01F
|13F208| db $43 ; Repeat word
|13F209| dw $C03F
|13F20B| db $01 ; Raw block
|13F20C| db $7F, $80
|13F20E| db $25 ; Repeat byte
|13F20F| db $FF
|13F210| db $05 ; Raw block
|13F211| db $FE, $FC, $C0, $3F, $F0, $0F
|13F217| db $45 ; Repeat word
|13F218| dw $00FF
|13F21A| db $05 ; Raw block
|13F21B| db $EF, $10, $FB, $04, $3F, $C0
|13F221| db $24 ; Repeat byte
|13F222| db $FF
|13F223| db $08 ; Raw block
|13F224| db $0F, $03, $00, $1F, $DF, $3F, $BF, $7F
|13F22C| db $7F
|13F22D| db $23 ; Repeat byte
|13F22E| db $FF
|13F22F| db $E0, $25 ; EXT Raw block
|13F231| db $FE, $FF, $F8, $FE, $E1, $F9, $3F, $7F
|13F239| db $FF, $FF, $FC, $F0, $C1, $86, $F7, $08
|13F241| db $1F, $E0, $67, $78, $52, $DD, $8B, $EC
|13F249| db $55, $76, $A5, $B6, $E5, $F6, $07, $03
|13F251| db $81, $20, $10, $88, $C8, $C8
|13F257| db $23 ; Repeat byte
|13F258| db $FF
|13F259| db $0B ; Raw block
|13F25A| db $FC, $FC, $F7, $F7, $1F, $1F, $FB, $FB
|13F262| db $F7, $F7, $E8, $E8
|13F266| db $22 ; Repeat byte
|13F267| db $FF
|13F268| db $E0, $43 ; EXT Raw block
|13F26A| db $F8, $E0, $07, $0F, $1F, $00, $73, $00
|13F272| db $37, $24, $37, $E3, $F3, $F0, $F8, $D8
|13F27A| db $DF, $EF, $EF, $17, $17, $8C, $C8, $C8
|13F282| db $0C, $07, $E0, $F0, $F8, $06, $FE, $33
|13F28A| db $FF, $68, $EF, $C6, $C7, $C3, $C3, $53
|13F292| db $D3, $67, $E7, $3E, $FF, $01, $00, $10
|13F29A| db $38, $3C, $3C, $18, $00, $00, $FF, $0C
|13F2A2| db $F3, $06, $F9, $76, $89, $3A, $C5, $18
|13F2AA| db $E7, $00, $FF, $00
|13F2AE| db $28 ; Repeat byte
|13F2AF| db $FF
|13F2B0| db $49 ; Repeat word
|13F2B1| dw $FF00
|13F2B3| db $05 ; Raw block
|13F2B4| db $01, $FE, $03, $FC, $07, $F8
|13F2BA| db $27 ; Repeat byte
|13F2BB| db $FF
|13F2BC| db $05 ; Raw block
|13F2BD| db $1F, $E0, $3F, $C1, $7F, $87
|13F2C3| db $46 ; Repeat word
|13F2C4| dw $8F7F
|13F2C6| db $02 ; Raw block
|13F2C7| db $87, $3F, $C3
|13F2CA| db $27 ; Repeat byte
|13F2CB| db $FF
|13F2CC| db $84 ; Copy past
|13F2CD| dw $0062
|13F2CF| db $00 ; Raw block
|13F2D0| db $E1
|13F2D1| db $43 ; Repeat word
|13F2D2| dw $E31F
|13F2D4| db $01 ; Raw block
|13F2D5| db $0F, $F1
|13F2D7| db $43 ; Repeat word
|13F2D8| dw $F807
|13F2DA| db $27 ; Repeat byte
|13F2DB| db $FF
|13F2DC| db $45 ; Repeat word
|13F2DD| dw $FF00
|13F2DF| db $09 ; Raw block
|13F2E0| db $1C, $E3, $3E, $C1, $FF, $00, $FF, $18
|13F2E8| db $FF, $3C
|13F2EA| db $28 ; Repeat byte
|13F2EB| db $FF
|13F2EC| db $00 ; Raw block
|13F2ED| db $00
|13F2EE| db $83 ; Copy past
|13F2EF| dw $003B
|13F2F1| db $03 ; Raw block
|13F2F2| db $FD, $03, $E6, $19
|13F2F6| db $85 ; Copy past
|13F2F7| dw $000A
|13F2F9| db $27 ; Repeat byte
|13F2FA| db $00
|13F2FB| db $06 ; Raw block
|13F2FC| db $FF, $00, $7F, $80, $7F, $C0, $BF
|13F303| db $83 ; Copy past
|13F304| dw $006D
|13F306| db $03 ; Raw block
|13F307| db $01, $FF, $00, $FF
|13F30B| db $28 ; Repeat byte
|13F30C| db $00
|13F30D| db $19 ; Raw block
|13F30E| db $91, $F0, $99, $F8, $13, $F2, $1F, $FC
|13F316| db $07, $F8, $1E, $E1, $3C, $C3, $F8, $07
|13F31E| db $0E, $0E, $0C, $00, $01, $03, $07, $0F
|13F326| db $D8, $E7
|13F328| db $49 ; Repeat word
|13F329| dw $6758
|13F32B| db $04 ; Raw block
|13F32C| db $18, $67, $10, $6F, $0F
|13F331| db $26 ; Repeat byte
|13F332| db $8F
|13F333| db $E0, $5C ; EXT Raw block
|13F335| db $7C, $83, $F3, $0F, $E4, $1C, $E8, $19
|13F33D| db $D1, $33, $E2, $26, $85, $45, $03, $83
|13F345| db $F0, $E0, $C3, $C6, $8C, $19, $3B, $7F
|13F34D| db $0F, $F0, $F3, $FC, $08, $0F, $03, $C3
|13F355| db $C0, $F0, $30, $3C, $C4, $C7, $FB, $FB
|13F35D| db $00, $00, $F0, $3C, $0F, $C3, $F8, $FC
|13F365| db $C3, $E3, $8E, $CF, $18, $9F, $31, $BE
|13F36D| db $23, $BC, $27, $38, $4F, $70, $CF, $F0
|13F375| db $1C, $30, $60, $40, $40, $C1, $83, $07
|13F37D| db $C6, $D7, $D3, $DB, $E8, $EC, $F4, $F7
|13F385| db $F9, $F9, $FE, $FE, $7F, $7F, $3F, $3F
|13F38D| db $E8, $E4, $F3, $F8, $FE
|13F392| db $22 ; Repeat byte
|13F393| db $FF
|13F394| db $07 ; Raw block
|13F395| db $EC, $EC, $F9, $F9, $E3, $E3, $47, $47
|13F39D| db $43 ; Repeat word
|13F39E| dw $CFCE
|13F3A0| db $E0, $33 ; EXT Raw block
|13F3A2| db $8C, $8F, $98, $9F, $F3, $C6, $9C, $B8
|13F3AA| db $30, $30, $70, $60, $01, $01, $30, $30
|13F3B2| db $6C, $7C, $C4, $FC, $4A, $F6, $6D, $F3
|13F3BA| db $F6, $79, $4B, $CC, $FE, $CF, $83, $03
|13F3C2| db $01, $00, $00, $30, $1B, $FC, $46, $F9
|13F3CA| db $6D, $F3, $B4, $BA, $92, $9C, $93, $9D
|13F3D2| db $62, $FC, $06, $FA
|13F3D6| db $22 ; Repeat byte
|13F3D7| db $00
|13F3D8| db $04 ; Raw block
|13F3D9| db $41, $61, $60, $01, $01
|13F3DE| db $44 ; Repeat word
|13F3DF| dw $10FF
|13F3E1| db $43 ; Repeat word
|13F3E2| dw $FF20
|13F3E4| db $43 ; Repeat word
|13F3E5| dw $FF40
|13F3E7| db $02 ; Raw block
|13F3E8| db $80, $FF, $80
|13F3EB| db $27 ; Repeat byte
|13F3EC| db $00
|13F3ED| db $83 ; Copy past
|13F3EE| dw $01A0
|13F3F0| db $46 ; Repeat word
|13F3F1| dw $1FFF
|13F3F3| db $43 ; Repeat word
|13F3F4| dw $FF3F
|13F3F6| db $00 ; Raw block
|13F3F7| db $7F
|13F3F8| db $27 ; Repeat byte
|13F3F9| db $FF
|13F3FA| db $45 ; Repeat word
|13F3FB| dw $E31F
|13F3FD| db $05 ; Raw block
|13F3FE| db $3F, $C3, $7F, $87, $FF, $0F
|13F404| db $83 ; Copy past
|13F405| dw $02A8
|13F407| db $27 ; Repeat byte
|13F408| db $FF
|13F409| db $05 ; Raw block
|13F40A| db $00, $FF, $3E, $C1, $7F, $80
|13F410| db $83 ; Copy past
|13F411| dw $016B
|13F413| db $01 ; Raw block
|13F414| db $FF, $3E
|13F416| db $83 ; Copy past
|13F417| dw $02AC
|13F419| db $27 ; Repeat byte
|13F41A| db $FF
|13F41B| db $85 ; Copy past
|13F41C| dw $0150
|13F41E| db $05 ; Raw block
|13F41F| db $FF, $03, $FF, $07, $FF, $0F
|13F425| db $2B ; Repeat byte
|13F426| db $FF
|13F427| db $0B ; Raw block
|13F428| db $F1, $F0, $E9, $E8, $F3, $F2, $77, $74
|13F430| db $5F, $78, $5E, $61
|13F434| db $84 ; Copy past
|13F435| dw $01BC
|13F437| db $E0, $36 ; EXT Raw block
|13F439| db $1E, $1C, $98, $81, $83, $07, $1F, $5D
|13F441| db $7E, $01, $3E, $07, $38, $0F, $70, $1E
|13F449| db $E1, $38, $C7, $F0, $0F, $E0, $1F, $80
|13F451| db $C0, $C0, $81, $07, $0F, $1F, $3F, $FF
|13F459| db $FE, $35, $34, $D5, $D4, $9F, $9E, $2F
|13F461| db $3C, $C1, $FE, $02, $FD, $12, $FD, $00
|13F469| db $CE, $EE, $E4, $C0, $00, $01, $01
|13F470| db $4F ; Repeat word
|13F471| dw $CF30
|13F473| db $27 ; Repeat byte
|13F474| db $1F
|13F475| db $43 ; Repeat word
|13F476| dw $7FB7
|13F478| db $1B ; Raw block
|13F479| db $A9, $6D, $AA, $6E, $F5, $37, $51, $B3
|13F481| db $F9, $1B, $A9, $5B, $03, $03, $13, $11
|13F489| db $08, $0C, $84, $84, $3D, $C3, $7D, $85
|13F491| db $EB, $1B, $D6, $36
|13F495| db $47 ; Repeat word
|13F496| dw $6DA5
|13F498| db $03 ; Raw block
|13F499| db $F8, $E3, $C4, $89
|13F49D| db $23 ; Repeat byte
|13F49E| db $13
|13F49F| db $E0, $27 ; EXT Raw block
|13F4A1| db $4F, $4F, $F7, $F7, $EB, $7B, $F4, $3C
|13F4A9| db $CB, $2F, $F4, $17, $E8, $18, $77, $8F
|13F4B1| db $BF, $0F, $07, $83, $90, $C8, $C7, $E0
|13F4B9| db $FC, $FC, $F3, $F3, $CC, $CF, $32, $3E
|13F4C1| db $C9, $F9, $27, $E7, $1E, $1F, $7C, $7F
|13F4C9| db $83 ; Copy past
|13F4CA| dw $00A3
|13F4CC| db $18 ; Raw block
|13F4CD| db $06, $18, $E0, $80, $F0, $0F, $E8, $17
|13F4D5| db $7C, $83, $7F, $80, $3D, $C2, $1F, $E0
|13F4DD| db $0F, $F0, $03, $FC, $E0, $E0, $F0, $F8
|13F4E5| db $FC
|13F4E6| db $22 ; Repeat byte
|13F4E7| db $FF
|13F4E8| db $10 ; Raw block
|13F4E9| db $8B, $4C, $D3, $3C, $67, $98, $BF, $C0
|13F4F1| db $DF, $E0, $CE, $F1, $6C, $73, $64, $7B
|13F4F9| db $30
|13F4FA| db $24 ; Repeat byte
|13F4FB| db $00
|13F4FC| db $01 ; Raw block
|13F4FD| db $80, $80
|13F4FF| db $4E ; Repeat word
|13F500| dw $FF00
|13F502| db $2A ; Repeat byte
|13F503| db $FF
|13F504| db $09 ; Raw block
|13F505| db $EF, $EF, $CF, $CF, $9F, $9F, $FE, $FE
|13F50D| db $FC, $FC
|13F50F| db $2B ; Repeat byte
|13F510| db $FF
|13F511| db $00 ; Raw block
|13F512| db $B9
|13F513| db $4C ; Repeat word
|13F514| dw $FF00
|13F516| db $02 ; Raw block
|13F517| db $8D, $00, $B9
|13F51A| db $25 ; Repeat byte
|13F51B| db $FF
|13F51C| db $00 ; Raw block
|13F51D| db $8D
|13F51E| db $2F ; Repeat byte
|13F51F| db $FF
|13F520| db $27 ; Repeat byte
|13F521| db $00
|13F522| db $83 ; Copy past
|13F523| dw $0180
|13F525| db $43 ; Repeat word
|13F526| dw $00FF
|13F528| db $03 ; Raw block
|13F529| db $FE, $01, $FC, $03
|13F52D| db $83 ; Copy past
|13F52E| dw $0452
|13F530| db $27 ; Repeat byte
|13F531| db $FF
|13F532| db $43 ; Repeat word
|13F533| dw $FF00
|13F535| db $83 ; Copy past
|13F536| dw $0078
|13F538| db $01 ; Raw block
|13F539| db $F8, $07
|13F53B| db $43 ; Repeat word
|13F53C| dw $03FC
|13F53E| db $01 ; Raw block
|13F53F| db $FE, $01
|13F541| db $27 ; Repeat byte
|13F542| db $FF
|13F543| db $0E ; Raw block
|13F544| db $C7, $FF, $E0, $FF, $B1, $BF, $11, $1F
|13F54C| db $10, $1F, $2F, $30, $DF, $E0, $FF
|13F553| db $22 ; Repeat byte
|13F554| db $00
|13F555| db $14 ; Raw block
|13F556| db $C0, $E0, $E0, $C0, $00, $0F, $F1, $FF
|13F55E| db $03, $FF, $85, $FD, $CA, $FA, $C8, $F8
|13F566| db $F4, $0C, $FB, $07, $FF
|13F56B| db $22 ; Repeat byte
|13F56C| db $00
|13F56D| db $1F ; Raw block
|13F56E| db $03, $07, $07, $03, $00, $F0, $12, $F1
|13F576| db $2B, $EA, $33, $F2, $37, $F4, $1E, $F9
|13F57E| db $1C, $E3, $38, $C7, $E0, $1F, $0D, $1C
|13F586| db $1C, $18, $01, $03, $07, $1F, $30, $CF
|13F58E| db $47 ; Repeat word
|13F58F| dw $9F60
|13F591| db $01 ; Raw block
|13F592| db $40, $BF
|13F594| db $43 ; Repeat word
|13F595| dw $3FC0
|13F597| db $01 ; Raw block
|13F598| db $1F, $1F
|13F59A| db $23 ; Repeat byte
|13F59B| db $3F
|13F59C| db $11 ; Raw block
|13F59D| db $7F, $7F, $F5, $0F, $F1, $0F, $F9, $07
|13F5A5| db $B2, $4E, $E9, $1D, $D9, $3D, $77, $BF
|13F5AD| db $B7, $7F
|13F5AF| db $22 ; Repeat byte
|13F5B0| db $C0
|13F5B1| db $04 ; Raw block
|13F5B2| db $81, $83, $83, $03, $03
|13F5B7| db $43 ; Repeat word
|13F5B8| dw $6DA5
|13F5BA| db $E0, $21 ; EXT Raw block
|13F5BC| db $A2, $66, $D0, $32, $68, $99, $39, $C5
|13F5C4| db $1E, $E2, $0F, $F1, $13, $13, $19, $8D
|13F5CC| db $C6, $E2, $F9, $FC, $7B, $87, $29, $D7
|13F5D4| db $3C, $C3, $1F, $E0, $1D, $E2, $0F, $F0
|13F5DC| db $07, $F8
|13F5DE| db $86 ; Copy past
|13F5DF| dw $03CE
|13F5E1| db $22 ; Repeat byte
|13F5E2| db $FF
|13F5E3| db $0F ; Raw block
|13F5E4| db $F1, $FE, $C3, $FC, $0F, $F0, $3D, $C2
|13F5EC| db $F7, $08, $DF, $20, $F8, $07, $E0, $1F
|13F5F4| db $22 ; Repeat byte
|13F5F5| db $00
|13F5F6| db $02 ; Raw block
|13F5F7| db $01, $07, $1F
|13F5FA| db $83 ; Copy past
|13F5FB| dw $011E
|13F5FD| db $85 ; Copy past
|13F5FE| dw $0050
|13F600| db $43 ; Repeat word
|13F601| dw $07F8
|13F603| db $43 ; Repeat word
|13F604| dw $03FC
|13F606| db $25 ; Repeat byte
|13F607| db $FF
|13F608| db $01 ; Raw block
|13F609| db $7F, $3F
|13F60B| db $2F ; Repeat byte
|13F60C| db $FF
|13F60D| db $27 ; Repeat byte
|13F60E| db $00
|13F60F| db $01 ; Raw block
|13F610| db $7F, $7F
|13F612| db $23 ; Repeat byte
|13F613| db $BF
|13F614| db $09 ; Raw block
|13F615| db $DF, $DF, $EF, $EF, $FF, $FF, $DB, $DB
|13F61D| db $FD, $FD
|13F61F| db $27 ; Repeat byte
|13F620| db $FF
|13F621| db $0D ; Raw block
|13F622| db $C7, $C7, $F3, $F3, $AD, $AD, $DB, $DB
|13F62A| db $DF, $DF, $B3, $B3, $F7, $F7
|13F630| db $22 ; Repeat byte
|13F631| db $FF
|13F632| db $03 ; Raw block
|13F633| db $CF, $DB, $B7, $BF
|13F637| db $22 ; Repeat byte
|13F638| db $FF
|13F639| db $05 ; Raw block
|13F63A| db $00, $FF, $6C, $93, $FE, $01
|13F640| db $49 ; Repeat word
|13F641| dw $00FF
|13F643| db $27 ; Repeat byte
|13F644| db $FF
|13F645| db $01 ; Raw block
|13F646| db $00, $FF
|13F648| db $43 ; Repeat word
|13F649| dw $3FC0
|13F64B| db $01 ; Raw block
|13F64C| db $F8, $07
|13F64E| db $43 ; Repeat word
|13F64F| dw $03FC
|13F651| db $43 ; Repeat word
|13F652| dw $00FF
|13F654| db $27 ; Repeat byte
|13F655| db $FF
|13F656| db $03 ; Raw block
|13F657| db $F0, $0F, $FC, $03
|13F65B| db $4B ; Repeat word
|13F65C| dw $00FF
|13F65E| db $28 ; Repeat byte
|13F65F| db $FF
|13F660| db $4E ; Repeat word
|13F661| dw $FF00
|13F663| db $27 ; Repeat byte
|13F664| db $FF
|13F665| db $FF ; End of GFX 44

;===================================================================================================

GFX_45:
|13F666| db $03 ; Raw block
|13F667| db $D7, $58, $CF, $48
|13F66B| db $43 ; Repeat word
|13F66C| dw $68EF
|13F66E| db $03 ; Raw block
|13F66F| db $F7, $78, $E7, $78
|13F673| db $43 ; Repeat word
|13F674| dw $70EF
|13F676| db $03 ; Raw block
|13F677| db $23, $33, $13, $13
|13F67B| db $23 ; Repeat byte
|13F67C| db $03
|13F67D| db $43 ; Repeat word
|13F67E| dw $00FF
|13F680| db $E0, $35 ; EXT Raw block
|13F682| db $7E, $81, $FC, $03, $E8, $17, $F2, $0F
|13F68A| db $E4, $1D, $CA, $3B, $FF, $FE, $FC, $F8
|13F692| db $E0, $E0, $C2, $84, $F7, $78, $4B, $CC
|13F69A| db $84, $84, $4C, $CC, $33, $FF, $07, $F8
|13F6A2| db $7F, $80, $FF, $00, $01, $30, $7B, $33
|13F6AA| db $00, $00, $0F, $7F, $00, $FF, $FF, $00
|13F6B2| db $31, $31, $62, $62, $CE, $FF
|13F6B8| db $43 ; Repeat word
|13F6B9| dw $00FF
|13F6BB| db $19 ; Raw block
|13F6BC| db $EF, $10, $FF, $00, $CE, $9D, $00, $00
|13F6C4| db $FF, $EF, $FE, $01, $3C, $C3, $B9, $C7
|13F6CC| db $33, $4F, $A7, $DF, $6E, $9F, $ED, $1E
|13F6D4| db $CB, $3C
|13F6D6| db $22 ; Repeat byte
|13F6D7| db $1F
|13F6D8| db $00 ; Raw block
|13F6D9| db $9F
|13F6DA| db $22 ; Repeat byte
|13F6DB| db $1F
|13F6DC| db $01 ; Raw block
|13F6DD| db $3F, $7F
|13F6DF| db $22 ; Repeat byte
|13F6E0| db $FF
|13F6E1| db $05 ; Raw block
|13F6E2| db $E0, $FF, $9F, $E0, $7F, $80
|13F6E8| db $45 ; Repeat word
|13F6E9| dw $00FF
|13F6EB| db $25 ; Repeat byte
|13F6EC| db $FF
|13F6ED| db $E0, $21 ; EXT Raw block
|13F6EF| db $80, $00, $3C, $FF, $7E, $C3, $FF, $99
|13F6F7| db $E7, $A5, $7E, $18, $3D, $80, $02, $C1
|13F6FF| db $1C, $E3, $C3, $81, $00, $18, $81, $C3
|13F707| db $FF, $FF, $AA, $6D, $A6, $65, $D3, $32
|13F70F| db $E9, $18
|13F711| db $45 ; Repeat word
|13F712| dw $0CF5
|13F714| db $E0, $27 ; EXT Raw block
|13F716| db $B7, $4E, $10, $18, $0C, $06, $02, $02
|13F71E| db $42, $40, $4C, $B3, $EB, $B7, $DF, $E7
|13F726| db $76, $4F, $35, $0E, $7B, $44, $75, $4E
|13F72E| db $B5, $8E, $47, $E7, $4F, $AF, $CE, $9E
|13F736| db $9E, $5E, $42, $BD, $BD, $FF, $42, $BD
|13F73E| db $43 ; Repeat word
|13F73F| dw $00FF
|13F741| db $05 ; Raw block
|13F742| db $BD, $42, $BD, $66, $DB, $3C
|13F748| db $22 ; Repeat byte
|13F749| db $FF
|13F74A| db $07 ; Raw block
|13F74B| db $00, $42, $C3, $C3, $66, $44, $BB, $BB
|13F753| db $22 ; Repeat byte
|13F754| db $FF
|13F755| db $09 ; Raw block
|13F756| db $44, $44, $28, $28, $7C, $7C, $9A, $9A
|13F75E| db $89, $89
|13F760| db $22 ; Repeat byte
|13F761| db $00
|13F762| db $04 ; Raw block
|13F763| db $BB, $D7, $83, $65, $76
|13F768| db $25 ; Repeat byte
|13F769| db $00
|13F76A| db $09 ; Raw block
|13F76B| db $7F, $21, $FF, $5E, $F8, $59, $EC, $5F
|13F773| db $70, $0E
|13F775| db $22 ; Repeat byte
|13F776| db $00
|13F777| db $E0, $2F ; EXT Raw block
|13F779| db $61, $C0, $C6, $C0, $41, $07, $04, $0C
|13F781| db $0A, $18, $14, $70, $4F, $E0, $20, $4F
|13F789| db $CF, $18, $18, $73, $73, $04, $09, $13
|13F791| db $40, $1F, $30, $E7, $8C, $1F, $00, $21
|13F799| db $19, $4D, $3D, $93, $7F, $89, $77, $BE
|13F7A1| db $61, $BF, $60, $DF, $40, $00, $06, $02
|13F7A9| db $22 ; Repeat byte
|13F7AA| db $00
|13F7AB| db $10 ; Raw block
|13F7AC| db $0E, $2F, $FF, $00, $07, $FF, $3F, $C0
|13F7B4| db $4F, $F0, $73, $FC, $20, $E0, $8F, $7F
|13F7BC| db $FF
|13F7BD| db $23 ; Repeat byte
|13F7BE| db $00
|13F7BF| db $14 ; Raw block
|13F7C0| db $03, $00, $1F, $00, $C0, $FF, $00, $E1
|13F7C8| db $FF, $B3, $7C, $FF, $00, $BB, $7C, $C7
|13F7D0| db $C7, $00, $00, $AB, $6C
|13F7D5| db $22 ; Repeat byte
|13F7D6| db $00
|13F7D7| db $04 ; Raw block
|13F7D8| db $83, $00, $38, $FF, $10
|13F7DD| db $83 ; Copy past
|13F7DE| dw $0000
|13F7E0| db $0F ; Raw block
|13F7E1| db $E6, $61, $EE, $69, $F6, $79, $E6, $79
|13F7E9| db $EE, $71, $CE, $71, $23, $32, $18, $10
|13F7F1| db $23 ; Repeat byte
|13F7F2| db $00
|13F7F3| db $07 ; Raw block
|13F7F4| db $95, $76, $2B, $EC, $57, $D8, $A7, $B8
|13F7FC| db $43 ; Repeat word
|13F7FD| dw $7847
|13F7FF| db $0B ; Raw block
|13F800| db $63, $7C, $B1, $BE, $08, $11, $23, $43
|13F808| db $83, $83, $81, $40
|13F80C| db $43 ; Repeat word
|13F80D| dw $00FF
|13F80F| db $83 ; Copy past
|13F810| dw $003C
|13F812| db $01 ; Raw block
|13F813| db $FE, $01
|13F815| db $85 ; Copy past
|13F816| dw $0054
|13F818| db $23 ; Repeat byte
|13F819| db $FF
|13F81A| db $00 ; Raw block
|13F81B| db $FE
|13F81C| db $22 ; Repeat byte
|13F81D| db $FF
|13F81E| db $4F ; Repeat word
|13F81F| dw $29EE
|13F821| db $27 ; Repeat byte
|13F822| db $93
|13F823| db $43 ; Repeat word
|13F824| dw $00FF
|13F826| db $01 ; Raw block
|13F827| db $7F, $80
|13F829| db $43 ; Repeat word
|13F82A| dw $00FF
|13F82C| db $45 ; Repeat word
|13F82D| dw $01FE
|13F82F| db $23 ; Repeat byte
|13F830| db $FF
|13F831| db $03 ; Raw block
|13F832| db $F8, $F7, $EF, $DF
|13F836| db $43 ; Repeat word
|13F837| dw $00FF
|13F839| db $05 ; Raw block
|13F83A| db $7F, $80, $FB, $04, $FF, $00
|13F840| db $44 ; Repeat word
|13F841| dw $FF00
|13F843| db $23 ; Repeat byte
|13F844| db $FF
|13F845| db $01 ; Raw block
|13F846| db $FB, $00
|13F848| db $23 ; Repeat byte
|13F849| db $FF
|13F84A| db $E0, $26 ; EXT Raw block
|13F84C| db $00, $EB, $1C, $D4, $37, $A1, $61, $C4
|13F854| db $4A, $CE, $50, $DE, $40, $DC, $40, $C0
|13F85C| db $80, $08, $1E, $31, $21, $21, $23, $AD
|13F864| db $5E, $9B, $7C, $B6, $79, $BD, $73, $DE
|13F86C| db $39, $6D, $9E, $37, $CF, $1F, $E0
|13F873| db $22 ; Repeat byte
|13F874| db $00
|13F875| db $1B ; Raw block
|13F876| db $48, $BC, $DF, $EF, $F0, $B5, $8E, $1A
|13F87E| db $27, $ED, $F3, $76, $79, $5B, $5C, $FF
|13F886| db $00, $B9, $FE, $FF, $00, $5F, $CF, $07
|13F88E| db $83, $A0, $F8, $FE
|13F892| db $44 ; Repeat word
|13F893| dw $FF00
|13F895| db $07 ; Raw block
|13F896| db $7E, $81, $BD, $43, $7E, $FF, $C1, $3E
|13F89E| db $43 ; Repeat word
|13F89F| dw $00FF
|13F8A1| db $02 ; Raw block
|13F8A2| db $3C, $81, $83
|13F8A5| db $22 ; Repeat byte
|13F8A6| db $FF
|13F8A7| db $07 ; Raw block
|13F8A8| db $00, $00, $99, $99, $BF, $BF, $E6, $E6
|13F8B0| db $23 ; Repeat byte
|13F8B1| db $42
|13F8B2| db $08 ; Raw block
|13F8B3| db $FF, $00, $BD, $FF, $FF, $00, $66, $40
|13F8BB| db $19
|13F8BC| db $83 ; Copy past
|13F8BD| dw $00D9
|13F8BF| db $0C ; Raw block
|13F8C0| db $00, $78, $24, $39, $11, $1B, $13, $1B
|13F8C8| db $03, $2B, $13, $6B, $33
|13F8CD| db $43 ; Repeat word
|13F8CE| dw $53CB
|13F8D0| db $02 ; Raw block
|13F8D1| db $63, $36, $14
|13F8D4| db $22 ; Repeat byte
|13F8D5| db $04
|13F8D6| db $09 ; Raw block
|13F8D7| db $24, $24, $C3, $DB, $9E, $96, $3E, $3A
|13F8DF| db $32, $35
|13F8E1| db $43 ; Repeat word
|13F8E2| dw $3433
|13F8E4| db $06 ; Raw block
|13F8E5| db $32, $35, $0C, $0A, $24, $61, $C1
|13F8EC| db $23 ; Repeat byte
|13F8ED| db $C8
|13F8EE| db $00 ; Raw block
|13F8EF| db $F1
|13F8F0| db $85 ; Copy past
|13F8F1| dw $0168
|13F8F3| db $44 ; Repeat word
|13F8F4| dw $00FF
|13F8F6| db $83 ; Copy past
|13F8F7| dw $0200
|13F8F9| db $23 ; Repeat byte
|13F8FA| db $00
|13F8FB| db $00 ; Raw block
|13F8FC| db $83
|13F8FD| db $83 ; Copy past
|13F8FE| dw $0201
|13F900| db $0F ; Raw block
|13F901| db $7F, $00, $CE, $31, $D1, $2E, $E1, $1E
|13F909| db $C3, $3E, $83, $7A, $97, $74, $AF, $68
|13F911| db $24 ; Repeat byte
|13F912| db $00
|13F913| db $02 ; Raw block
|13F914| db $04, $08, $10
|13F917| db $43 ; Repeat word
|13F918| dw $00FF
|13F91A| db $0B ; Raw block
|13F91B| db $00, $FF, $C7, $FF, $F1, $FF, $F8, $FF
|13F923| db $F1, $FF, $8F, $FF
|13F927| db $27 ; Repeat byte
|13F928| db $00
|13F929| db $0A ; Raw block
|13F92A| db $8F, $70, $9B, $64, $B1, $4E, $E2, $1F
|13F932| db $C6, $3F, $89
|13F935| db $84 ; Copy past
|13F936| dw $02DB
|13F938| db $24 ; Repeat byte
|13F939| db $00
|13F93A| db $06 ; Raw block
|13F93B| db $04, $08, $10, $59, $DE, $89, $4E
|13F942| db $43 ; Repeat word
|13F943| dw $0EC9
|13F945| db $08 ; Raw block
|13F946| db $D9, $1E, $B3, $7C, $87, $78, $FF, $00
|13F94E| db $20
|13F94F| db $22 ; Repeat byte
|13F950| db $30
|13F951| db $03 ; Raw block
|13F952| db $20, $00, $01, $03
|13F956| db $47 ; Repeat word
|13F957| dw $FF0F
|13F959| db $46 ; Repeat word
|13F95A| dw $FFF0
|13F95C| db $29 ; Repeat byte
|13F95D| db $FF
|13F95E| db $0E ; Raw block
|13F95F| db $1F, $EF, $31, $DD, $63, $BB, $C7, $F7
|13F967| db $8F, $FD, $FE, $FA, $BD, $FD, $9B
|13F96E| db $27 ; Repeat byte
|13F96F| db $FF
|13F970| db $83 ; Copy past
|13F971| dw $0048
|13F973| db $0B ; Raw block
|13F974| db $F0, $FF, $E0, $FF, $87, $F8, $0F, $F0
|13F97C| db $3C, $C3, $7C, $83
|13F980| db $24 ; Repeat byte
|13F981| db $00
|13F982| db $02 ; Raw block
|13F983| db $07, $0F, $1F
|13F986| db $83 ; Copy past
|13F987| dw $0048
|13F989| db $43 ; Repeat word
|13F98A| dw $FF00
|13F98C| db $03 ; Raw block
|13F98D| db $FF, $00, $80, $7F
|13F991| db $43 ; Repeat word
|13F992| dw $FF00
|13F994| db $24 ; Repeat byte
|13F995| db $00
|13F996| db $22 ; Repeat byte
|13F997| db $FF
|13F998| db $11 ; Raw block
|13F999| db $98, $41, $A1, $60, $FD, $3C, $F9, $44
|13F9A1| db $ED, $71, $D4, $59, $A5, $60, $DB, $3C
|13F9A9| db $26, $1E
|13F9AB| db $22 ; Repeat byte
|13F9AC| db $02
|13F9AD| db $E0, $22 ; EXT Raw block
|13F9AF| db $22, $1A, $00, $75, $96, $65, $A6, $CB
|13F9B7| db $4C, $97, $18, $AF, $30, $BF, $20, $FF
|13F9BF| db $60, $FD, $62, $08, $18, $30, $60, $40
|13F9C7| db $44, $06, $02, $5F, $B8, $4F, $A8, $97
|13F9CF| db $58, $EF, $70
|13F9D2| db $45 ; Repeat word
|13F9D3| dw $60DF
|13F9D5| db $E0, $6A ; EXT Raw block
|13F9D7| db $9B, $64, $3E, $3E, $7C, $78, $70, $74
|13F9DF| db $66, $66, $F5, $0A, $EE, $1B, $DB, $3E
|13F9E7| db $B2, $74, $A5, $63, $E6, $01, $F3, $54
|13F9EF| db $F5, $16, $0A, $1F, $31, $6B, $5F, $7B
|13F9F7| db $E9, $68, $AF, $50, $77, $D8, $DB, $7C
|13F9FF| db $4D, $2E, $A5, $C6, $65, $86, $C5, $26
|13FA07| db $A5, $66, $50, $FA, $8C, $D6, $FA, $DA
|13FA0F| db $9A, $1A, $A5, $79, $E4, $98, $F2, $AC
|13FA17| db $7B, $34, $3E, $09, $1F, $0B, $0F, $03
|13FA1F| db $19, $17, $02, $83, $E1, $70, $38, $18
|13FA27| db $00, $10, $9E, $96, $C3, $D3, $79, $79
|13FA2F| db $0C, $0C, $84, $67, $4F, $BC, $AC, $D0
|13FA37| db $92, $EB, $61, $2C, $86, $F3, $18, $00
|13FA3F| db $03, $04, $00
|13FA42| db $4A ; Repeat word
|13FA43| dw $7EFF
|13FA45| db $04 ; Raw block
|13FA46| db $00, $81, $00, $FF, $FF
|13FA4B| db $24 ; Repeat byte
|13FA4C| db $81
|13FA4D| db $00 ; Raw block
|13FA4E| db $FF
|13FA4F| db $46 ; Repeat word
|13FA50| dw $00FF
|13FA52| db $43 ; Repeat word
|13FA53| dw $FF18
|13FA55| db $44 ; Repeat word
|13FA56| dw $FF00
|13FA58| db $23 ; Repeat byte
|13FA59| db $FF
|13FA5A| db $01 ; Raw block
|13FA5B| db $E7, $E7
|13FA5D| db $22 ; Repeat byte
|13FA5E| db $FF
|13FA5F| db $E0, $2B ; EXT Raw block
|13FA61| db $9E, $61, $9F, $60, $DB, $64, $C5, $5E
|13FA69| db $A1, $66, $42, $3D, $3C, $02, $00, $00
|13FA71| db $70, $64, $6E, $7E, $7E, $3C, $00, $00
|13FA79| db $87, $48, $AB, $6F, $B4, $74, $A9, $79
|13FA81| db $A7, $7F, $A0, $7F, $A3, $7C, $B3, $7C
|13FA89| db $30, $10, $0B, $06
|13FA8D| db $23 ; Repeat byte
|13FA8E| db $00
|13FA8F| db $83 ; Copy past
|13FA90| dw $0200
|13FA92| db $06 ; Raw block
|13FA93| db $3C, $3C, $81, $81, $C3, $C3, $3C
|13FA9A| db $83 ; Copy past
|13FA9B| dw $0051
|13FA9D| db $22 ; Repeat byte
|13FA9E| db $00
|13FA9F| db $02 ; Raw block
|13FAA0| db $C3, $7E, $3C
|13FAA3| db $22 ; Repeat byte
|13FAA4| db $00
|13FAA5| db $08 ; Raw block
|13FAA6| db $CA, $75, $CF, $70, $91, $6E, $E1, $1E
|13FAAE| db $43
|13FAAF| db $86 ; Copy past
|13FAB0| dw $02D9
|13FAB2| db $24 ; Repeat byte
|13FAB3| db $00
|13FAB4| db $02 ; Raw block
|13FAB5| db $04, $08, $10
|13FAB8| db $83 ; Copy past
|13FAB9| dw $0048
|13FABB| db $0B ; Raw block
|13FABC| db $FC, $FF, $E3, $FF, $8F, $FF, $1F, $FF
|13FAC4| db $8F, $FF, $F1, $FF
|13FAC8| db $27 ; Repeat byte
|13FAC9| db $00
|13FACA| db $0F ; Raw block
|13FACB| db $86, $49, $9D, $53, $B9, $67, $B6, $6E
|13FAD3| db $B1, $6F, $B8, $67, $AF, $70, $B7, $78
|13FADB| db $83 ; Copy past
|13FADC| dw $032B
|13FADE| db $24 ; Repeat byte
|13FADF| db $00
|13FAE0| db $24 ; Repeat byte
|13FAE1| db $FF
|13FAE2| db $02 ; Raw block
|13FAE3| db $00, $00, $33
|13FAE6| db $84 ; Copy past
|13FAE7| dw $02C0
|13FAE9| db $00 ; Raw block
|13FAEA| db $FF
|13FAEB| db $23 ; Repeat byte
|13FAEC| db $00
|13FAED| db $00 ; Raw block
|13FAEE| db $FF
|13FAEF| db $23 ; Repeat byte
|13FAF0| db $00
|13FAF1| db $04 ; Raw block
|13FAF2| db $60, $1F, $5F, $20, $5F
|13FAF7| db $44 ; Repeat word
|13FAF8| dw $522D
|13FAFA| db $04 ; Raw block
|13FAFB| db $72, $0D, $3A, $05, $0F
|13FB00| db $28 ; Repeat byte
|13FB01| db $00
|13FB02| db $19 ; Raw block
|13FB03| db $AD, $72, $D5, $3A, $ED, $1E, $75, $8E
|13FB0B| db $EB, $9C, $B7, $78, $DF, $E0, $FE, $01
|13FB13| db $02, $06, $06, $1E, $3E, $FC, $F0, $01
|13FB1B| db $DF, $24
|13FB1D| db $43 ; Repeat word
|13FB1E| dw $04FF
|13FB20| db $E0, $2B ; EXT Raw block
|13FB22| db $73, $84, $6F, $88, $D7, $38, $CF, $30
|13FB2A| db $DF, $20, $66, $26, $0E, $1E, $3E, $3E
|13FB32| db $3C, $38, $D6, $37, $F5, $35, $D5, $35
|13FB3A| db $F5, $55, $F1, $15, $DA, $3F, $C5, $3A
|13FB42| db $FF, $00, $48, $0A, $0A, $CE, $0F, $47
|13FB4A| db $3F, $00, $65, $E6
|13FB4E| db $45 ; Repeat word
|13FB4F| dw $A6A5
|13FB51| db $1A ; Raw block
|13FB52| db $85, $A6, $5D, $FE, $A3, $5C, $FF, $00
|13FB5A| db $1A, $5A, $5A, $7A, $FA, $E2, $FC, $00
|13FB62| db $1C, $0F, $32, $13, $2D, $01, $2E, $13
|13FB6A| db $3D, $16, $1F
|13FB6D| db $25 ; Repeat byte
|13FB6E| db $00
|13FB6F| db $15 ; Raw block
|13FB70| db $0C, $12, $00, $34, $1F, $00, $00, $1B
|13FB78| db $EC, $B4, $4B, $F9, $27, $FA, $76, $FF
|13FB80| db $94, $9F, $04, $0B, $07, $07
|13FB86| db $22 ; Repeat byte
|13FB87| db $00
|13FB88| db $12 ; Raw block
|13FB89| db $20, $71, $F0, $90, $00, $00, $E0, $FF
|13FB91| db $D0, $F0, $A4, $E4, $A1, $E1, $A8, $E8
|13FB99| db $D6, $FF, $E9
|13FB9C| db $22 ; Repeat byte
|13FB9D| db $FF
|13FB9E| db $07 ; Raw block
|13FB9F| db $E0, $CF, $9B, $9E, $97, $C0, $E9, $FF
|13FBA7| db $4E ; Repeat word
|13FBA8| dw $00FF
|13FBAA| db $28 ; Repeat byte
|13FBAB| db $00
|13FBAC| db $47 ; Repeat word
|13FBAD| dw $00FF
|13FBAF| db $01 ; Raw block
|13FBB0| db $AA, $55
|13FBB2| db $45 ; Repeat word
|13FBB3| dw $FF00
|13FBB5| db $27 ; Repeat byte
|13FBB6| db $00
|13FBB7| db $FF ; End of GFX 45

;===================================================================================================

GFX_46:
|13FBB8| db $3F ; Repeat byte
|13FBB9| db $00
|13FBBA| db $07 ; Raw block
|13FBBB| db $03, $00, $0C, $00, $33, $00, $CF, $03
|13FBC3| db $24 ; Repeat byte
|13FBC4| db $00
|13FBC5| db $02 ; Raw block
|13FBC6| db $03, $0F, $3C
|13FBC9| db $87 ; Copy past
|13FBCA| dw $0020
|13FBCC| db $04 ; Raw block
|13FBCD| db $3C, $0F, $F0, $3F, $C0
|13FBD2| db $43 ; Repeat word
|13FBD3| dw $00FF
|13FBD5| db $07 ; Raw block
|13FBD6| db $03, $0F, $3C, $F0, $C0, $00, $00, $FF
|13FBDE| db $22 ; Repeat byte
|13FBDF| db $00
|13FBE0| db $04 ; Raw block
|13FBE1| db $FF, $00, $7F, $FF, $3F
|13FBE6| db $44 ; Repeat word
|13FBE7| dw $00FF
|13FBE9| db $04 ; Raw block
|13FBEA| db $3F, $C0, $00, $FF, $FF
|13FBEF| db $24 ; Repeat byte
|13FBF0| db $00
|13FBF1| db $00 ; Raw block
|13FBF2| db $FF
|13FBF3| db $22 ; Repeat byte
|13FBF4| db $00
|13FBF5| db $01 ; Raw block
|13FBF6| db $FF, $00
|13FBF8| db $23 ; Repeat byte
|13FBF9| db $FF
|13FBFA| db $43 ; Repeat word
|13FBFB| dw $FF00
|13FBFD| db $04 ; Raw block
|13FBFE| db $FF, $00, $00, $FF, $FF
|13FC03| db $24 ; Repeat byte
|13FC04| db $00
|13FC05| db $4F ; Repeat word
|13FC06| dw $06F5
|13FC08| db $27 ; Repeat byte
|13FC09| db $F8
|13FC0A| db $01 ; Raw block
|13FC0B| db $00, $AA
|13FC0D| db $43 ; Repeat word
|13FC0E| dw $FF00
|13FC10| db $00 ; Raw block
|13FC11| db $AA
|13FC12| db $26 ; Repeat byte
|13FC13| db $FF
|13FC14| db $01 ; Raw block
|13FC15| db $AA, $AA
|13FC17| db $26 ; Repeat byte
|13FC18| db $00
|13FC19| db $0C ; Raw block
|13FC1A| db $55, $00, $03, $10, $FD, $81, $FD, $13
|13FC22| db $B7, $00, $7F, $03, $FC
|13FC27| db $43 ; Repeat word
|13FC28| dw $FF07
|13FC2A| db $0A ; Raw block
|13FC2B| db $FC, $02, $03, $49, $83, $03, $07, $07
|13FC33| db $FD, $00, $FF
|13FC36| db $44 ; Repeat word
|13FC37| dw $FD02
|13FC39| db $08 ; Raw block
|13FC3A| db $02, $00, $FF, $FD, $02, $FD, $FF, $00
|13FC42| db $FF
|13FC43| db $23 ; Repeat byte
|13FC44| db $FD
|13FC45| db $22 ; Repeat byte
|13FC46| db $00
|13FC47| db $47 ; Repeat word
|13FC48| dw $00FF
|13FC4A| db $07 ; Raw block
|13FC4B| db $01, $00, $FE, $FE, $01, $FF, $FE, $01
|13FC53| db $24 ; Repeat byte
|13FC54| db $FF
|13FC55| db $01 ; Raw block
|13FC56| db $01, $00
|13FC58| db $50 ; Repeat word
|13FC59| dw $FF00
|13FC5B| db $00 ; Raw block
|13FC5C| db $FE
|13FC5D| db $26 ; Repeat byte
|13FC5E| db $FF
|13FC5F| db $09 ; Raw block
|13FC60| db $95, $76, $ED, $1E, $F5, $0E, $F9, $06
|13FC68| db $F5, $02
|13FC6A| db $43 ; Repeat word
|13FC6B| dw $04F7
|13FC6D| db $05 ; Raw block
|13FC6E| db $F5, $06, $08, $80, $E0, $F0
|13FC74| db $23 ; Repeat byte
|13FC75| db $F8
|13FC76| db $10 ; Raw block
|13FC77| db $64, $9C, $33, $CF, $5C, $E3, $67, $F8
|13FC7F| db $71, $FE, $2E, $EF, $B1, $71, $D6, $30
|13FC87| db $03
|13FC88| db $23 ; Repeat byte
|13FC89| db $00
|13FC8A| db $1B ; Raw block
|13FC8B| db $10, $0E, $0F, $CC, $0F, $33, $03, $CC
|13FC93| db $C0, $33, $F0, $CC, $3C, $33, $CF, $CC
|13FC9B| db $F3, $33, $3C, $F0, $FC, $3F, $0F, $03
|13FCA3| db $00, $00, $C0, $67
|13FCA7| db $84 ; Copy past
|13FCA8| dw $0121
|13FCAA| db $0A ; Raw block
|13FCAB| db $6F, $F0, $73, $FC, $2C, $EF, $A7, $67
|13FCB3| db $D4, $30, $03
|13FCB6| db $23 ; Repeat byte
|13FCB7| db $00
|13FCB8| db $05 ; Raw block
|13FCB9| db $10, $18, $0F, $73, $FC, $6C
|13FCBF| db $84 ; Copy past
|13FCC0| dw $015B
|13FCC2| db $87 ; Copy past
|13FCC3| dw $0150
|13FCC5| db $83 ; Copy past
|13FCC6| dw $0164
|13FCC8| db $00 ; Raw block
|13FCC9| db $03
|13FCCA| db $22 ; Repeat byte
|13FCCB| db $00
|13FCCC| db $85 ; Copy past
|13FCCD| dw $0020
|13FCCF| db $0D ; Raw block
|13FCD0| db $C0, $00, $FF, $7F, $FF, $00, $81, $7F
|13FCD8| db $FE, $7E, $00, $03, $0F, $3F
|13FCDE| db $22 ; Repeat byte
|13FCDF| db $00
|13FCE0| db $05 ; Raw block
|13FCE1| db $01, $3D, $0E, $C0, $00, $FF
|13FCE7| db $22 ; Repeat byte
|13FCE8| db $00
|13FCE9| db $22 ; Repeat byte
|13FCEA| db $FF
|13FCEB| db $05 ; Raw block
|13FCEC| db $00, $F0, $8F, $B8, $C7, $F0
|13FCF2| db $22 ; Repeat byte
|13FCF3| db $FF
|13FCF4| db $23 ; Repeat byte
|13FCF5| db $00
|13FCF6| db $00 ; Raw block
|13FCF7| db $FF
|13FCF8| db $22 ; Repeat byte
|13FCF9| db $00
|13FCFA| db $00 ; Raw block
|13FCFB| db $FF
|13FCFC| db $22 ; Repeat byte
|13FCFD| db $00
|13FCFE| db $22 ; Repeat byte
|13FCFF| db $FF
|13FD00| db $00 ; Raw block
|13FD01| db $00
|13FD02| db $44 ; Repeat word
|13FD03| dw $FF00
|13FD05| db $22 ; Repeat byte
|13FD06| db $FF
|13FD07| db $23 ; Repeat byte
|13FD08| db $00
|13FD09| db $00 ; Raw block
|13FD0A| db $FF
|13FD0B| db $22 ; Repeat byte
|13FD0C| db $00
|13FD0D| db $00 ; Raw block
|13FD0E| db $FF
|13FD0F| db $22 ; Repeat byte
|13FD10| db $00
|13FD11| db $22 ; Repeat byte
|13FD12| db $FF
|13FD13| db $85 ; Copy past
|13FD14| dw $018B
|13FD16| db $22 ; Repeat byte
|13FD17| db $FF
|13FD18| db $22 ; Repeat byte
|13FD19| db $00
|13FD1A| db $01 ; Raw block
|13FD1B| db $01, $FF
|13FD1D| db $22 ; Repeat byte
|13FD1E| db $00
|13FD1F| db $00 ; Raw block
|13FD20| db $FF
|13FD21| db $22 ; Repeat byte
|13FD22| db $00
|13FD23| db $08 ; Raw block
|13FD24| db $FF, $FF, $FA, $07, $05, $FB, $02, $FD
|13FD2C| db $00
|13FD2D| db $22 ; Repeat byte
|13FD2E| db $FF
|13FD2F| db $23 ; Repeat byte
|13FD30| db $00
|13FD31| db $06 ; Raw block
|13FD32| db $FC, $00, $0C, $08, $B4, $38, $CC
|13FD39| db $46 ; Repeat word
|13FD3A| dw $0CF0
|13FD3C| db $04 ; Raw block
|13FD3D| db $8F, $F0, $00, $F0, $C0
|13FD42| db $34 ; Repeat byte
|13FD43| db $00
|13FD44| db $27 ; Repeat byte
|13FD45| db $FF
|13FD46| db $15 ; Raw block
|13FD47| db $83, $FE, $0F, $F2, $1E, $FD, $FD, $FF
|13FD4F| db $CB, $3F, $F6, $0B, $7D, $77, $7B, $77
|13FD57| db $0F, $0F, $1F, $1F, $3F, $3F
|13FD5D| db $22 ; Repeat byte
|13FD5E| db $FF
|13FD5F| db $45 ; Repeat word
|13FD60| dw $FF00
|13FD62| db $22 ; Repeat byte
|13FD63| db $00
|13FD64| db $83 ; Copy past
|13FD65| dw $0068
|13FD67| db $01 ; Raw block
|13FD68| db $FF, $00
|13FD6A| db $24 ; Repeat byte
|13FD6B| db $FF
|13FD6C| db $22 ; Repeat byte
|13FD6D| db $00
|13FD6E| db $4F ; Repeat word
|13FD6F| dw $0003
|13FD71| db $27 ; Repeat byte
|13FD72| db $01
|13FD73| db $4B ; Repeat word
|13FD74| dw $00FF
|13FD76| db $03 ; Raw block
|13FD77| db $FE, $00, $FD, $01
|13FD7B| db $26 ; Repeat byte
|13FD7C| db $FF
|13FD7D| db $00 ; Raw block
|13FD7E| db $FE
|13FD7F| db $45 ; Repeat word
|13FD80| dw $06F5
|13FD82| db $09 ; Raw block
|13FD83| db $EA, $0D, $EB, $0D, $95, $1A, $6B, $74
|13FD8B| db $97, $E8
|13FD8D| db $22 ; Repeat byte
|13FD8E| db $F8
|13FD8F| db $15 ; Raw block
|13FD90| db $F0, $F0, $E1, $83, $07, $A9, $58, $93
|13FD98| db $6F, $CC, $33, $D3, $3C, $EC, $1F, $B2
|13FDA0| db $4F, $99, $67, $CC, $33, $07
|13FDA6| db $26 ; Repeat byte
|13FDA7| db $00
|13FDA8| db $8B ; Copy past
|13FDA9| dw $0138
|13FDAB| db $03 ; Raw block
|13FDAC| db $8C, $F3, $63, $FC
|13FDB0| db $84 ; Copy past
|13FDB1| dw $0148
|13FDB3| db $22 ; Repeat byte
|13FDB4| db $00
|13FDB5| db $03 ; Raw block
|13FDB6| db $AB, $58, $90, $6C
|13FDBA| db $85 ; Copy past
|13FDBB| dw $02A4
|13FDBD| db $07 ; Raw block
|13FDBE| db $B7, $4F, $98, $67, $CF, $30, $07, $03
|13FDC6| db $25 ; Repeat byte
|13FDC7| db $00
|13FDC8| db $87 ; Copy past
|13FDC9| dw $02D8
|13FDCB| db $07 ; Raw block
|13FDCC| db $E3, $1C, $F0, $0F, $DC, $23, $6F, $10
|13FDD4| db $27 ; Repeat byte
|13FDD5| db $00
|13FDD6| db $43 ; Repeat word
|13FDD7| dw $12B6
|13FDD9| db $1D ; Raw block
|13FDDA| db $26, $9A, $02, $9A, $C6, $5E, $BA, $06
|13FDE2| db $A2, $06, $B2, $16, $49, $49, $41, $65
|13FDEA| db $21, $41, $59, $49, $9F, $E0, $8B, $F3
|13FDF2| db $8C, $F7, $88, $F7, $8F, $F0
|13FDF8| db $43 ; Repeat word
|13FDF9| dw $F68D
|13FDFB| db $03 ; Raw block
|13FDFC| db $9D, $E2, $00, $04
|13FE00| db $25 ; Repeat byte
|13FE01| db $00
|13FE02| db $02 ; Raw block
|13FE03| db $FF, $00, $BF
|13FE06| db $44 ; Repeat word
|13FE07| dw $31DE
|13FE09| db $06 ; Raw block
|13FE0A| db $FF, $00, $FF, $FB, $86, $FB, $FF
|13FE11| db $28 ; Repeat byte
|13FE12| db $00
|13FE13| db $18 ; Raw block
|13FE14| db $89, $F1, $8E, $F7, $90, $EF, $93, $E3
|13FE1C| db $9C, $EF, $B0, $CF, $A7, $C7, $BE, $C6
|13FE24| db $06, $00, $00, $0C, $00, $00, $19, $19
|13FE2C| db $FF
|13FE2D| db $43 ; Repeat word
|13FE2E| dw $00FF
|13FE30| db $22 ; Repeat byte
|13FE31| db $FF
|13FE32| db $02 ; Raw block
|13FE33| db $00, $FF, $00
|13FE36| db $22 ; Repeat byte
|13FE37| db $FF
|13FE38| db $89 ; Copy past
|13FE39| dw $0248
|13FE3B| db $84 ; Copy past
|13FE3C| dw $0187
|13FE3E| db $02 ; Raw block
|13FE3F| db $80, $01, $FF
|13FE42| db $43 ; Repeat word
|13FE43| dw $FE7E
|13FE45| db $E0, $20 ; EXT Raw block
|13FE47| db $36, $B6, $16, $B6, $00, $00, $7F, $00
|13FE4F| db $01, $01, $49, $49, $3F, $FF, $00, $C0
|13FE57| db $08, $BF, $08, $AD, $40, $FE, $40, $FF
|13FE5F| db $00, $FF, $80, $FF, $00, $3F, $40, $52
|13FE67| db $01
|13FE68| db $26 ; Repeat byte
|13FE69| db $00
|13FE6A| db $23 ; Repeat byte
|13FE6B| db $01
|13FE6C| db $03 ; Raw block
|13FE6D| db $00, $03, $03, $00
|13FE71| db $23 ; Repeat byte
|13FE72| db $07
|13FE73| db $27 ; Repeat byte
|13FE74| db $FF
|13FE75| db $0E ; Raw block
|13FE76| db $16, $EF, $ED, $1F, $DB, $FF, $B6, $DF
|13FE7E| db $ED, $BF, $DB, $BF, $B6, $7F, $6D
|13FE85| db $28 ; Repeat byte
|13FE86| db $FF
|13FE87| db $45 ; Repeat word
|13FE88| dw $0003
|13FE8A| db $05 ; Raw block
|13FE8B| db $02, $00, $03, $01, $02, $01
|13FE91| db $83 ; Copy past
|13FE92| dw $03DC
|13FE94| db $23 ; Repeat byte
|13FE95| db $01
|13FE96| db $22 ; Repeat byte
|13FE97| db $00
|13FE98| db $0C ; Raw block
|13FE99| db $01, $E6, $07, $99, $1E, $66, $79, $9B
|13FEA1| db $E4, $6F, $90, $BF, $40
|13FEA6| db $43 ; Repeat word
|13FEA7| dw $00FF
|13FEA9| db $07 ; Raw block
|13FEAA| db $F8, $E0, $80, $03, $0F, $3F, $FF, $FF
|13FEB2| db $83 ; Copy past
|13FEB3| dw $03F8
|13FEB5| db $4B ; Repeat word
|13FEB6| dw $00FF
|13FEB8| db $01 ; Raw block
|13FEB9| db $0F, $3F
|13FEBB| db $25 ; Repeat byte
|13FEBC| db $FF
|13FEBD| db $83 ; Copy past
|13FEBE| dw $02F0
|13FEC0| db $0A ; Raw block
|13FEC1| db $D9, $27, $6F, $10, $33, $0C, $18, $07
|13FEC9| db $0C, $03, $07
|13FECC| db $28 ; Repeat byte
|13FECD| db $00
|13FECE| db $0F ; Raw block
|13FECF| db $18, $FF, $C7, $3F, $30, $CF, $6F, $F0
|13FED7| db $93, $7C, $E0, $1F, $38, $C7, $0F, $F0
|13FEDF| db $27 ; Repeat byte
|13FEE0| db $00
|13FEE1| db $83 ; Copy past
|13FEE2| dw $02F0
|13FEE4| db $00 ; Raw block
|13FEE5| db $59
|13FEE6| db $89 ; Copy past
|13FEE7| dw $0425
|13FEE9| db $28 ; Repeat byte
|13FEEA| db $00
|13FEEB| db $86 ; Copy past
|13FEEC| dw $0428
|13FEEE| db $30 ; Repeat byte
|13FEEF| db $00
|13FEF0| db $01 ; Raw block
|13FEF1| db $92, $12
|13FEF3| db $43 ; Repeat word
|13FEF4| dw $7EFE
|13FEF6| db $03 ; Raw block
|13FEF7| db $C1, $3F, $80, $00
|13FEFB| db $44 ; Repeat word
|13FEFC| dw $7FFF
|13FEFE| db $05 ; Raw block
|13FEFF| db $00, $6D, $01, $01, $00, $7F
|13FF05| db $22 ; Repeat byte
|13FF06| db $00
|13FF07| db $16 ; Raw block
|13FF08| db $FF, $3F, $B9, $00, $BF, $00, $BC, $02
|13FF10| db $AC, $09, $85, $3B, $80, $40, $FF, $00
|13FF18| db $00, $7F, $40, $41, $52, $40, $3F
|13FF1F| db $2E ; Repeat byte
|13FF20| db $00
|13FF21| db $00 ; Raw block
|13FF22| db $FF
|13FF23| db $28 ; Repeat byte
|13FF24| db $00
|13FF25| db $09 ; Raw block
|13FF26| db $B8, $DF, $F8, $9F, $E0, $9F, $CF, $8F
|13FF2E| db $FF, $80
|13FF30| db $44 ; Repeat word
|13FF31| dw $BFF0
|13FF33| db $05 ; Raw block
|13FF34| db $3F, $01, $01, $00, $33, $3F
|13FF3A| db $22 ; Repeat byte
|13FF3B| db $03
|13FF3C| db $44 ; Repeat word
|13FF3D| dw $FF00
|13FF3F| db $23 ; Repeat byte
|13FF40| db $FF
|13FF41| db $00 ; Raw block
|13FF42| db $00
|13FF43| db $44 ; Repeat word
|13FF44| dw $FF00
|13FF46| db $22 ; Repeat byte
|13FF47| db $FF
|13FF48| db $00 ; Raw block
|13FF49| db $00
|13FF4A| db $24 ; Repeat byte
|13FF4B| db $FF
|13FF4C| db $0A ; Raw block
|13FF4D| db $12, $92, $46, $DE, $12, $AE, $82, $BC
|13FF55| db $FF, $00, $FF
|13FF58| db $24 ; Repeat byte
|13FF59| db $00
|13FF5A| db $03 ; Raw block
|13FF5B| db $6D, $21, $41, $41
|13FF5F| db $83 ; Copy past
|13FF60| dw $006F
|13FF62| db $00 ; Raw block
|13FF63| db $84
|13FF64| db $43 ; Repeat word
|13FF65| dw $80FF
|13FF67| db $23 ; Repeat byte
|13FF68| db $FF
|13FF69| db $01 ; Raw block
|13FF6A| db $00, $FF
|13FF6C| db $2A ; Repeat byte
|13FF6D| db $00
|13FF6E| db $11 ; Raw block
|13FF6F| db $FF, $FF, $03, $0E, $0F, $02, $1F, $1D
|13FF77| db $1E, $1D, $0D, $3B, $3B, $0F, $7E, $77
|13FF7F| db $7D, $17
|13FF81| db $27 ; Repeat byte
|13FF82| db $FF
|13FF83| db $04 ; Raw block
|13FF84| db $DB, $FF, $B6, $FF, $6D
|13FF89| db $85 ; Copy past
|13FF8A| dw $053F
|13FF8C| db $83 ; Copy past
|13FF8D| dw $053F
|13FF8F| db $28 ; Repeat byte
|13FF90| db $FF
|13FF91| db $46 ; Repeat word
|13FF92| dw $0002
|13FF94| db $03 ; Raw block
|13FF95| db $01, $01, $02, $01
|13FF99| db $24 ; Repeat byte
|13FF9A| db $00
|13FF9B| db $22 ; Repeat byte
|13FF9C| db $01
|13FF9D| db $24 ; Repeat byte
|13FF9E| db $00
|13FF9F| db $43 ; Repeat word
|13FFA0| dw $00FD
|13FFA2| db $10 ; Raw block
|13FFA3| db $7F, $02, $9F, $82, $62, $E2, $BF, $7D
|13FFAB| db $C2, $3D, $3F, $40, $FF, $FF, $FD, $7D
|13FFB3| db $1D
|13FFB4| db $22 ; Repeat byte
|13FFB5| db $00
|13FFB6| db $4F ; Repeat word
|13FFB7| dw $00FF
|13FFB9| db $27 ; Repeat byte
|13FFBA| db $FF
|13FFBB| db $49 ; Repeat word
|13FFBC| dw $06F5
|13FFBE| db $05 ; Raw block
|13FFBF| db $75, $06, $95, $86, $65, $E6
|13FFC5| db $25 ; Repeat byte
|13FFC6| db $F8
|13FFC7| db $0A ; Raw block
|13FFC8| db $78, $18, $C3, $3C, $F0, $0F, $3C, $03
|13FFD0| db $0F, $00, $03
|13FFD3| db $2E ; Repeat byte
|13FFD4| db $00
|13FFD5| db $43 ; Repeat word
|13FFD6| dw $00FF
|13FFD8| db $0B ; Raw block
|13FFD9| db $7F, $00, $9F, $80, $60, $E0, $3F, $FF
|13FFE1| db $C0, $3F, $3F, $00
|13FFE5| db $22 ; Repeat byte
|13FFE6| db $FF
|13FFE7| db $01 ; Raw block
|13FFE8| db $7F, $1F
|13FFEA| db $22 ; Repeat byte
|13FFEB| db $00
|13FFEC| db $46 ; Repeat word
|13FFED| dw $00FF
|13FFEF| db $22 ; Repeat byte
|13FFF0| db $00
|13FFF1| db $85 ; Copy past
|13FFF2| dw $024A
|13FFF4| db $24 ; Repeat byte
|13FFF5| db $FF
|13FFF6| db $22 ; Repeat byte
|13FFF7| db $00
|13FFF8| db $FF ; End of GFX 46

;===================================================================================================

GFX_47:
|13FFF9| db $22 ; Repeat byte
|13FFFA| db $FF
|13FFFB| db $E0, $A5 ; EXT Raw block
|13FFFD| db $FE, $FE, $FD

;===================================================================================================

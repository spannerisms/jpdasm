org $118200

; 0x200 bytes bleed from a file in bank10

;===================================================================================================

GFX_76:
|118200| incbin "bin/gfx/GFX76.3bpp"

GFX_77:
|118800| incbin "bin/gfx/GFX77.3bpp"

GFX_78:
|118E00| incbin "bin/gfx/GFX78.3bpp"

GFX_79:
|119400| incbin "bin/gfx/GFX79.3bpp"

GFX_7A:
|119A00| incbin "bin/gfx/GFX7A.3bpp"

GFX_7B:
|11A000| incbin "bin/gfx/GFX7B.3bpp"

GFX_7C:
|11A600| incbin "bin/gfx/GFX7C.3bpp"

GFX_7D:
|11AC00| incbin "bin/gfx/GFX7D.3bpp"

GFX_7E:
|11B200| incbin "bin/gfx/GFX7E.3bpp"

;===================================================================================================

GFX_00:
|11B800| db $03 ; Raw block
|11B801| db $FF, $00, $F8, $60
|11B805| db $43 ; Repeat word
|11B806| dw $6FFF
|11B808| db $13 ; Raw block
|11B809| db $5F, $A7, $6D, $87, $7D, $B7, $FD, $37
|11B811| db $60, $0F, $00, $09, $07, $37, $07, $07
|11B819| db $FF, $00, $07, $00
|11B81D| db $22 ; Repeat byte
|11B81E| db $FF
|11B81F| db $10 ; Raw block
|11B820| db $7D, $47, $3C, $3C, $18, $59, $42, $A3
|11B828| db $A4, $00, $FE, $00, $FC, $FF, $FF, $BC
|11B830| db $58
|11B831| db $83 ; Copy past
|11B832| dw $0018
|11B834| db $22 ; Repeat byte
|11B835| db $FF
|11B836| db $44 ; Repeat word
|11B837| dw $23FD
|11B839| db $06 ; Raw block
|11B83A| db $24, $F8, $29, $F2, $00, $FE, $00
|11B841| db $22 ; Repeat byte
|11B842| db $FC
|11B843| db $E0, $29 ; EXT Raw block
|11B845| db $FB, $F4, $F1, $0E, $FF, $70, $F7, $7B
|11B84D| db $FB, $03, $FF, $30, $BF, $3F, $B8, $3F
|11B855| db $BF, $3F, $00, $80, $84, $04, $50, $4F
|11B85D| db $4F, $5F, $0C, $F7, $CC, $37, $FC, $87
|11B865| db $9F, $D8, $DD, $19, $FF, $C0, $4F, $DE
|11B86D| db $C5, $DE
|11B86F| db $22 ; Repeat byte
|11B870| db $00
|11B871| db $04 ; Raw block
|11B872| db $20, $22, $C0, $EE, $EC
|11B877| db $43 ; Repeat word
|11B878| dw $3FB0
|11B87A| db $0B ; Raw block
|11B87B| db $BF, $3F, $B0, $3F, $B1, $3E, $F2, $3C
|11B883| db $FD, $20, $FD, $3C
|11B887| db $23 ; Repeat byte
|11B888| db $5F
|11B889| db $08 ; Raw block
|11B88A| db $5E, $5D, $42, $02, $4F, $DE, $47, $DE
|11B892| db $C7
|11B893| db $83 ; Copy past
|11B894| dw $0091
|11B896| db $06 ; Raw block
|11B897| db $1E, $7F, $42, $8F, $0A, $F7, $02
|11B89E| db $23 ; Repeat byte
|11B89F| db $EC
|11B8A0| db $03 ; Raw block
|11B8A1| db $2C, $80, $70, $08
|11B8A5| db $45 ; Repeat word
|11B8A6| dw $00FF
|11B8A8| db $00 ; Raw block
|11B8A9| db $00
|11B8AA| db $22 ; Repeat byte
|11B8AB| db $FF
|11B8AC| db $04 ; Raw block
|11B8AD| db $00, $00, $80, $7F, $FF
|11B8B2| db $25 ; Repeat byte
|11B8B3| db $00
|11B8B4| db $04 ; Raw block
|11B8B5| db $FF, $00, $00, $E7, $18
|11B8BA| db $45 ; Repeat word
|11B8BB| dw $78E7
|11B8BD| db $08 ; Raw block
|11B8BE| db $43, $BC, $63, $8C, $73, $BC, $F3, $3C
|11B8C6| db $60
|11B8C7| db $23 ; Repeat byte
|11B8C8| db $00
|11B8C9| db $02 ; Raw block
|11B8CA| db $30, $00, $00
|11B8CD| db $85 ; Copy past
|11B8CE| dw $0048
|11B8D0| db $05 ; Raw block
|11B8D1| db $83, $7B, $80, $7F, $F8, $07
|11B8D7| db $43 ; Repeat word
|11B8D8| dw $00FF
|11B8DA| db $83 ; Copy past
|11B8DB| dw $0058
|11B8DD| db $23 ; Repeat byte
|11B8DE| db $00
|11B8DF| db $87 ; Copy past
|11B8E0| dw $0060
|11B8E2| db $06 ; Raw block
|11B8E3| db $1D, $D9, $00, $FF, $FF, $00, $FF
|11B8EA| db $23 ; Repeat byte
|11B8EB| db $00
|11B8EC| db $01 ; Raw block
|11B8ED| db $20, $22
|11B8EF| db $22 ; Repeat byte
|11B8F0| db $00
|11B8F1| db $E0, $42 ; EXT Raw block
|11B8F3| db $7D, $B7, $EF, $17, $24, $C0, $FC, $1B
|11B8FB| db $3E, $DB, $FF, $03, $16, $E3, $FF, $08
|11B903| db $07, $07, $1B, $00, $03, $03, $0A, $00
|11B90B| db $7D, $B7, $EA, $17, $26, $C3, $FE, $1B
|11B913| db $3E, $DB, $FC, $02, $15, $E3, $FF, $08
|11B91B| db $00, $00, $18, $00, $00, $01, $08, $00
|11B923| db $73, $BC, $E3, $1C, $23, $C4, $FB, $1C
|11B92B| db $3B, $DC, $FB, $04, $13, $E4, $FB, $0C
|11B933| db $00, $00, $18
|11B936| db $22 ; Repeat byte
|11B937| db $00
|11B938| db $0A ; Raw block
|11B939| db $08, $00, $7E, $B6, $ED, $11, $27, $C3
|11B941| db $FF, $1B, $3F
|11B944| db $87 ; Copy past
|11B945| dw $0111
|11B947| db $05 ; Raw block
|11B948| db $02, $19, $03, $03, $02, $0A
|11B94E| db $93 ; Copy past
|11B94F| dw $0137
|11B951| db $22 ; Repeat byte
|11B952| db $00
|11B953| db $11 ; Raw block
|11B954| db $08, $00, $7D, $B7, $6F, $97, $24, $C0
|11B95C| db $3C, $DB, $FE, $1B, $FF, $E3, $16, $E3
|11B964| db $1F, $E8
|11B966| db $87 ; Copy past
|11B967| dw $0118
|11B969| db $E0, $23 ; EXT Raw block
|11B96B| db $D7, $50, $E7, $A0, $33, $10, $49, $88
|11B973| db $9D, $14, $BD, $20, $FE, $5A, $FF, $00
|11B97B| db $28, $98, $CC, $36, $62, $42, $01, $00
|11B983| db $2B, $F0, $FD, $F4, $05, $00, $05, $F8
|11B98B| db $86, $FA, $FF, $F8
|11B98F| db $22 ; Repeat byte
|11B990| db $FF
|11B991| db $06 ; Raw block
|11B992| db $00, $F4, $F2, $FA, $02, $F9, $F8
|11B999| db $25 ; Repeat byte
|11B99A| db $00
|11B99B| db $0D ; Raw block
|11B99C| db $3F, $3F, $31, $31, $23, $23, $27, $27
|11B9A4| db $2E, $2E, $3C, $3C, $00, $7F
|11B9AA| db $25 ; Repeat byte
|11B9AB| db $40
|11B9AC| db $07 ; Raw block
|11B9AD| db $00, $FF, $00, $80, $1E, $9E, $1F, $9F
|11B9B5| db $45 ; Repeat word
|11B9B6| dw $BF3F
|11B9B8| db $05 ; Raw block
|11B9B9| db $1F, $9F, $00, $7F, $61, $60
|11B9BF| db $22 ; Repeat byte
|11B9C0| db $40
|11B9C1| db $00 ; Raw block
|11B9C2| db $60
|11B9C3| db $43 ; Repeat word
|11B9C4| dw $FF00
|11B9C6| db $00 ; Raw block
|11B9C7| db $10
|11B9C8| db $44 ; Repeat word
|11B9C9| dw $00FF
|11B9CB| db $04 ; Raw block
|11B9CC| db $40, $FF, $04, $FF, $00
|11B9D1| db $28 ; Repeat byte
|11B9D2| db $FF
|11B9D3| db $02 ; Raw block
|11B9D4| db $E0, $1F, $EF
|11B9D7| db $83 ; Copy past
|11B9D8| dw $01FC
|11B9DA| db $03 ; Raw block
|11B9DB| db $7F, $C0, $7F, $FF
|11B9DF| db $22 ; Repeat byte
|11B9E0| db $00
|11B9E1| db $01 ; Raw block
|11B9E2| db $FF, $FF
|11B9E4| db $25 ; Repeat byte
|11B9E5| db $00
|11B9E6| db $01 ; Raw block
|11B9E7| db $FF, $00
|11B9E9| db $43 ; Repeat word
|11B9EA| dw $7FFF
|11B9EC| db $05 ; Raw block
|11B9ED| db $80, $00, $C0, $3F, $FF, $00
|11B9F3| db $43 ; Repeat word
|11B9F4| dw $3FFF
|11B9F6| db $00 ; Raw block
|11B9F7| db $C0
|11B9F8| db $22 ; Repeat byte
|11B9F9| db $00
|11B9FA| db $00 ; Raw block
|11B9FB| db $7F
|11B9FC| db $23 ; Repeat byte
|11B9FD| db $00
|11B9FE| db $13 ; Raw block
|11B9FF| db $3F, $73, $BC, $63, $9C, $23, $C4, $3B
|11BA07| db $DC, $FB, $1C, $FB, $E4, $13, $E4, $1B
|11BA0F| db $EC, $00, $00, $18
|11BA13| db $22 ; Repeat byte
|11BA14| db $00
|11BA15| db $11 ; Raw block
|11BA16| db $08, $00, $CF, $31, $C6, $3B, $8C, $77
|11BA1E| db $99, $6E, $33, $DC, $6C, $B0, $F3, $43
|11BA26| db $FF, $3F
|11BA28| db $24 ; Repeat byte
|11BA29| db $00
|11BA2A| db $0C ; Raw block
|11BA2B| db $03, $0C, $00, $3F, $C0, $1F, $E0, $75
|11BA33| db $86, $CE, $0F, $3E, $3F
|11BA38| db $25 ; Repeat byte
|11BA39| db $FF
|11BA3A| db $04 ; Raw block
|11BA3B| db $00, $00, $08, $30, $C0
|11BA40| db $22 ; Repeat byte
|11BA41| db $00
|11BA42| db $05 ; Raw block
|11BA43| db $55, $AA, $D5, $2A, $FD, $82
|11BA49| db $89 ; Copy past
|11BA4A| dw $0066
|11BA4C| db $22 ; Repeat byte
|11BA4D| db $00
|11BA4E| db $84 ; Copy past
|11BA4F| dw $0073
|11BA51| db $89 ; Copy past
|11BA52| dw $0288
|11BA54| db $05 ; Raw block
|11BA55| db $BF, $C0, $79, $FE, $83, $FA
|11BA5B| db $22 ; Repeat byte
|11BA5C| db $00
|11BA5D| db $83 ; Copy past
|11BA5E| dw $0103
|11BA60| db $00 ; Raw block
|11BA61| db $04
|11BA62| db $87 ; Copy past
|11BA63| dw $0288
|11BA65| db $86 ; Copy past
|11BA66| dw $00F8
|11BA68| db $23 ; Repeat byte
|11BA69| db $00
|11BA6A| db $01 ; Raw block
|11BA6B| db $20, $22
|11BA6D| db $22 ; Repeat byte
|11BA6E| db $00
|11BA6F| db $8A ; Copy past
|11BA70| dw $0288
|11BA72| db $04 ; Raw block
|11BA73| db $80, $BF, $BE, $7D, $7E
|11BA78| db $22 ; Repeat byte
|11BA79| db $00
|11BA7A| db $04 ; Raw block
|11BA7B| db $20, $22, $80, $DE, $B8
|11BA80| db $8E ; Copy past
|11BA81| dw $02B8
|11BA83| db $23 ; Repeat byte
|11BA84| db $00
|11BA85| db $01 ; Raw block
|11BA86| db $20, $22
|11BA88| db $22 ; Repeat byte
|11BA89| db $00
|11BA8A| db $13 ; Raw block
|11BA8B| db $FF, $00, $FA, $6F, $F2, $6F, $F6, $6F
|11BA93| db $5A, $A7, $6A, $87, $7A, $B7, $FB, $37
|11BA9B| db $60, $03, $03, $07
|11BA9F| db $85 ; Copy past
|11BAA0| dw $0014
|11BAA2| db $47 ; Repeat word
|11BAA3| dw $E09F
|11BAA5| db $06 ; Raw block
|11BAA6| db $DF, $E0, $9F, $A0, $5F, $60, $00
|11BAAD| db $25 ; Repeat byte
|11BAAE| db $C0
|11BAAF| db $00 ; Raw block
|11BAB0| db $80
|11BAB1| db $87 ; Copy past
|11BAB2| dw $0048
|11BAB4| db $07 ; Raw block
|11BAB5| db $CF, $70, $90, $7F, $FF, $7F, $81, $7F
|11BABD| db $84 ; Copy past
|11BABE| dw $00E8
|11BAC0| db $02 ; Raw block
|11BAC1| db $1F, $7F, $7F
|11BAC4| db $8A ; Copy past
|11BAC5| dw $0060
|11BAC7| db $84 ; Copy past
|11BAC8| dw $02DB
|11BACA| db $22 ; Repeat byte
|11BACB| db $00
|11BACC| db $84 ; Copy past
|11BACD| dw $02E3
|11BACF| db $02 ; Raw block
|11BAD0| db $FF, $00, $F0
|11BAD3| db $44 ; Repeat word
|11BAD4| dw $FB6F
|11BAD6| db $01 ; Raw block
|11BAD7| db $55, $AF
|11BAD9| db $86 ; Copy past
|11BADA| dw $000A
|11BADC| db $23 ; Repeat byte
|11BADD| db $00
|11BADE| db $00 ; Raw block
|11BADF| db $30
|11BAE0| db $84 ; Copy past
|11BAE1| dw $00BB
|11BAE3| db $23 ; Repeat byte
|11BAE4| db $FF
|11BAE5| db $08 ; Raw block
|11BAE6| db $3F, $FF, $1F, $FF, $0F, $7F, $07, $9F
|11BAEE| db $83
|11BAEF| db $25 ; Repeat byte
|11BAF0| db $00
|11BAF1| db $01 ; Raw block
|11BAF2| db $80, $60
|11BAF4| db $87 ; Copy past
|11BAF5| dw $0048
|11BAF7| db $06 ; Raw block
|11BAF8| db $B7, $78, $8F, $7F, $B0, $7F, $BF
|11BAFF| db $84 ; Copy past
|11BB00| dw $033F
|11BB02| db $23 ; Repeat byte
|11BB03| db $00
|11BB04| db $89 ; Copy past
|11BB05| dw $0060
|11BB07| db $85 ; Copy past
|11BB08| dw $02AA
|11BB0A| db $22 ; Repeat byte
|11BB0B| db $00
|11BB0C| db $84 ; Copy past
|11BB0D| dw $02B3
|11BB0F| db $83 ; Copy past
|11BB10| dw $0360
|11BB12| db $0C ; Raw block
|11BB13| db $FF, $6F, $FE, $6F, $5C, $A6, $69, $85
|11BB1B| db $7F, $B6, $FF, $34, $60
|11BB20| db $22 ; Repeat byte
|11BB21| db $00
|11BB22| db $01 ; Raw block
|11BB23| db $01, $32
|11BB25| db $85 ; Copy past
|11BB26| dw $0376
|11BB28| db $0B ; Raw block
|11BB29| db $7E, $FF, $3C, $7E, $99, $BD, $C3, $5A
|11BB31| db $E7, $24, $FF, $18
|11BB35| db $22 ; Repeat byte
|11BB36| db $00
|11BB37| db $03 ; Raw block
|11BB38| db $81, $42, $24, $18
|11BB3C| db $86 ; Copy past
|11BB3D| dw $00D7
|11BB3F| db $09 ; Raw block
|11BB40| db $FB, $03, $BF, $70, $BB, $7F, $B3, $7A
|11BB48| db $A7, $74
|11BB4A| db $85 ; Copy past
|11BB4B| dw $00E8
|11BB4D| db $01 ; Raw block
|11BB4E| db $04, $08
|11BB50| db $89 ; Copy past
|11BB51| dw $0060
|11BB53| db $84 ; Copy past
|11BB54| dw $00FA
|11BB56| db $23 ; Repeat byte
|11BB57| db $00
|11BB58| db $01 ; Raw block
|11BB59| db $20, $22
|11BB5B| db $22 ; Repeat byte
|11BB5C| db $00
|11BB5D| db $01 ; Raw block
|11BB5E| db $FF, $00
|11BB60| db $43 ; Repeat word
|11BB61| dw $FF00
|11BB63| db $08 ; Raw block
|11BB64| db $FF, $00, $C5, $06, $BF, $3D, $82, $7D
|11BB6C| db $FF
|11BB6D| db $24 ; Repeat byte
|11BB6E| db $00
|11BB6F| db $01 ; Raw block
|11BB70| db $79, $40
|11BB72| db $83 ; Copy past
|11BB73| dw $00BB
|11BB75| db $43 ; Repeat word
|11BB76| dw $FF00
|11BB78| db $08 ; Raw block
|11BB79| db $FF, $00, $04, $08, $FF, $F7, $08, $F7
|11BB81| db $FF
|11BB82| db $24 ; Repeat byte
|11BB83| db $00
|11BB84| db $00 ; Raw block
|11BB85| db $F7
|11BB86| db $22 ; Repeat byte
|11BB87| db $00
|11BB88| db $0F ; Raw block
|11BB89| db $FF, $00, $FE, $01, $F8, $07, $F0, $0F
|11BB91| db $E6, $1F, $F9, $07, $E6, $19, $C1, $3E
|11BB99| db $27 ; Repeat byte
|11BB9A| db $00
|11BB9B| db $0F ; Raw block
|11BB9C| db $F8, $0F, $34, $CF, $1A, $E7, $0D, $F3
|11BBA4| db $06, $F9, $83, $FC, $61, $FE, $98, $7F
|11BBAC| db $27 ; Repeat byte
|11BBAD| db $00
|11BBAE| db $08 ; Raw block
|11BBAF| db $7E, $B6, $6D, $91, $27, $C3, $3F, $DB
|11BBB7| db $FF
|11BBB8| db $87 ; Copy past
|11BBB9| dw $0189
|11BBBB| db $86 ; Copy past
|11BBBC| dw $0161
|11BBBE| db $13 ; Raw block
|11BBBF| db $DF, $E0, $D5, $EA, $5A, $E5, $50, $EF
|11BBC7| db $A0, $DF, $40, $BF, $BF, $7F, $7F, $FF
|11BBCF| db $40, $C0, $C0, $80
|11BBD3| db $23 ; Repeat byte
|11BBD4| db $00
|11BBD5| db $05 ; Raw block
|11BBD6| db $FE, $7E, $85, $7D, $80, $7F
|11BBDC| db $49 ; Repeat word
|11BBDD| dw $00FF
|11BBDF| db $01 ; Raw block
|11BBE0| db $7F, $7E
|11BBE2| db $25 ; Repeat byte
|11BBE3| db $00
|11BBE4| db $0B ; Raw block
|11BBE5| db $CA, $FD, $F5, $FB, $0B, $F7, $F3, $0F
|11BBED| db $A3, $5F, $C3, $3F
|11BBF1| db $83 ; Copy past
|11BBF2| dw $04D0
|11BBF4| db $01 ; Raw block
|11BBF5| db $70, $E0
|11BBF7| db $25 ; Repeat byte
|11BBF8| db $00
|11BBF9| db $0F ; Raw block
|11BBFA| db $7D, $B7, $6A, $97, $26, $C3, $3E, $DB
|11BC02| db $FE, $1B, $FC, $E2, $15, $E3, $1F, $E8
|11BC0A| db $87 ; Copy past
|11BC0B| dw $0130
|11BC0D| db $E0, $23 ; EXT Raw block
|11BC0F| db $E3, $E3, $FF, $FF, $BE, $FF, $1C, $BE
|11BC17| db $49, $5D, $E3, $AA, $F7, $14, $FF, $00
|11BC1F| db $1C, $00, $00, $41, $A2, $14, $08, $00
|11BC27| db $BD, $61, $BE, $60, $BE, $70, $BF, $78
|11BC2F| db $BF, $7C, $BF, $7E
|11BC33| db $43 ; Repeat word
|11BC34| dw $7FBF
|11BC36| db $02 ; Raw block
|11BC37| db $02, $01, $01
|11BC3A| db $24 ; Repeat byte
|11BC3B| db $00
|11BC3C| db $0B ; Raw block
|11BC3D| db $E7, $F4, $CF, $E8, $E7, $F4, $73, $7A
|11BC45| db $79, $7C, $73, $7A
|11BC49| db $83 ; Copy past
|11BC4A| dw $0528
|11BC4C| db $0B ; Raw block
|11BC4D| db $08, $10, $08, $84, $82, $84, $08, $10
|11BC55| db $7B, $B4, $6B, $94
|11BC59| db $85 ; Copy past
|11BC5A| dw $0244
|11BC5C| db $00 ; Raw block
|11BC5D| db $DB
|11BC5E| db $87 ; Copy past
|11BC5F| dw $024B
|11BC61| db $22 ; Repeat byte
|11BC62| db $00
|11BC63| db $07 ; Raw block
|11BC64| db $08, $00, $FF, $00, $55, $AA, $AA, $55
|11BC6C| db $44 ; Repeat word
|11BC6D| dw $FF00
|11BC6F| db $24 ; Repeat byte
|11BC70| db $FF
|11BC71| db $27 ; Repeat byte
|11BC72| db $00
|11BC73| db $05 ; Raw block
|11BC74| db $8F, $68, $A7, $74, $B3, $7A
|11BC7A| db $43 ; Repeat word
|11BC7B| dw $7DB9
|11BC7D| db $83 ; Copy past
|11BC7E| dw $03FC
|11BC80| db $09 ; Raw block
|11BC81| db $8F, $68, $10, $08, $04, $02, $02, $04
|11BC89| db $08, $10
|11BC8B| db $87 ; Copy past
|11BC8C| dw $04D0
|11BC8E| db $87 ; Copy past
|11BC8F| dw $04D0
|11BC91| db $27 ; Repeat byte
|11BC92| db $00
|11BC93| db $02 ; Raw block
|11BC94| db $97, $68, $9D
|11BC97| db $48 ; Repeat word
|11BC98| dw $9566
|11BC9A| db $83 ; Copy past
|11BC9B| dw $05A0
|11BC9D| db $00 ; Raw block
|11BC9E| db $00
|11BC9F| db $24 ; Repeat byte
|11BCA0| db $08
|11BCA1| db $01 ; Raw block
|11BCA2| db $00, $08
|11BCA4| db $47 ; Repeat word
|11BCA5| dw $6695
|11BCA7| db $02 ; Raw block
|11BCA8| db $97, $68, $9D
|11BCAB| db $44 ; Repeat word
|11BCAC| dw $9566
|11BCAE| db $23 ; Repeat byte
|11BCAF| db $08
|11BCB0| db $00 ; Raw block
|11BCB1| db $00
|11BCB2| db $22 ; Repeat byte
|11BCB3| db $08
|11BCB4| db $0B ; Raw block
|11BCB5| db $BE, $7F, $0F, $8F, $70, $F0, $FF, $07
|11BCBD| db $FF, $00, $E3, $FC
|11BCC1| db $23 ; Repeat byte
|11BCC2| db $FF
|11BCC3| db $02 ; Raw block
|11BCC4| db $00, $70, $0F
|11BCC7| db $24 ; Repeat byte
|11BCC8| db $00
|11BCC9| db $0F ; Raw block
|11BCCA| db $66, $9F, $9E, $E1, $E7, $F8, $19, $1E
|11BCD2| db $F2, $13, $FF, $00, $8F, $F0, $FE, $FF
|11BCDA| db $22 ; Repeat byte
|11BCDB| db $00
|11BCDC| db $01 ; Raw block
|11BCDD| db $E0, $0C
|11BCDF| db $22 ; Repeat byte
|11BCE0| db $00
|11BCE1| db $FF ; End of GFX 00

;===================================================================================================

GFX_01:
|11BCE2| db $23 ; Repeat byte
|11BCE3| db $00
|11BCE4| db $05 ; Raw block
|11BCE5| db $FC, $FC, $CC, $CC, $84, $84
|11BCEB| db $25 ; Repeat byte
|11BCEC| db $04
|11BCED| db $01 ; Raw block
|11BCEE| db $00, $FE
|11BCF0| db $25 ; Repeat byte
|11BCF1| db $02
|11BCF2| db $0B ; Raw block
|11BCF3| db $38, $38, $30, $30, $20, $20, $21, $21
|11BCFB| db $23, $23, $3F, $3F
|11BCFF| db $23 ; Repeat byte
|11BD00| db $00
|11BD01| db $25 ; Repeat byte
|11BD02| db $40
|11BD03| db $07 ; Raw block
|11BD04| db $7F, $00, $24, $24, $44, $44, $84, $84
|11BD0C| db $23 ; Repeat byte
|11BD0D| db $04
|11BD0E| db $01 ; Raw block
|11BD0F| db $FC, $FC
|11BD11| db $23 ; Repeat byte
|11BD12| db $00
|11BD13| db $25 ; Repeat byte
|11BD14| db $02
|11BD15| db $01 ; Raw block
|11BD16| db $FE, $00
|11BD18| db $47 ; Repeat word
|11BD19| dw $6D92
|11BD1B| db $01 ; Raw block
|11BD1C| db $93, $6C
|11BD1E| db $43 ; Repeat word
|11BD1F| dw $6D92
|11BD21| db $01 ; Raw block
|11BD22| db $F2, $0D
|11BD24| db $27 ; Repeat byte
|11BD25| db $00
|11BD26| db $45 ; Repeat word
|11BD27| dw $AA55
|11BD29| db $03 ; Raw block
|11BD2A| db $5D, $A2, $D5, $2A
|11BD2E| db $45 ; Repeat word
|11BD2F| dw $AA55
|11BD31| db $27 ; Repeat byte
|11BD32| db $00
|11BD33| db $04 ; Raw block
|11BD34| db $66, $00, $80, $00, $8C
|11BD39| db $22 ; Repeat byte
|11BD3A| db $00
|11BD3B| db $04 ; Raw block
|11BD3C| db $20, $00, $A0, $00, $80
|11BD41| db $2A ; Repeat byte
|11BD42| db $00
|11BD43| db $0B ; Raw block
|11BD44| db $FF, $00, $C0, $3F, $A0, $5F, $9F, $60
|11BD4C| db $98, $67, $94, $6B
|11BD50| db $43 ; Repeat word
|11BD51| dw $6C93
|11BD53| db $27 ; Repeat byte
|11BD54| db $00
|11BD55| db $0F ; Raw block
|11BD56| db $80, $7F, $7F, $80, $60, $9F, $5F, $A0
|11BD5E| db $58, $A7, $57, $A8, $56, $A9, $55, $AA
|11BD66| db $27 ; Repeat byte
|11BD67| db $00
|11BD68| db $83 ; Copy past
|11BD69| dw $00A8
|11BD6B| db $0B ; Raw block
|11BD6C| db $64, $9B, $5F, $A0, $5A, $A5, $77, $88
|11BD74| db $5E, $A1, $55, $AA
|11BD78| db $27 ; Repeat byte
|11BD79| db $00
|11BD7A| db $0F ; Raw block
|11BD7B| db $8D, $F6, $99, $6E, $72, $9D, $64, $BB
|11BD83| db $C9, $76, $9A, $E5, $2C, $D3, $49, $B6
|11BD8B| db $27 ; Repeat byte
|11BD8C| db $00
|11BD8D| db $0F ; Raw block
|11BD8E| db $93, $6C, $26, $D9, $4D, $B2, $FB, $04
|11BD96| db $36, $C9, $6D, $92, $DF, $20, $B6, $49
|11BD9E| db $27 ; Repeat byte
|11BD9F| db $00
|11BDA0| db $07 ; Raw block
|11BDA1| db $ED, $12, $DB, $24, $B6, $49, $7D, $82
|11BDA9| db $83 ; Copy past
|11BDAA| dw $010A
|11BDAC| db $03 ; Raw block
|11BDAD| db $6D, $92, $DA, $25
|11BDB1| db $27 ; Repeat byte
|11BDB2| db $00
|11BDB3| db $07 ; Raw block
|11BDB4| db $C0, $3F, $81, $7E, $BD, $00, $C3, $42
|11BDBC| db $47 ; Repeat word
|11BDBD| dw $7EBD
|11BDBF| db $03 ; Raw block
|11BDC0| db $00, $00, $7E, $3C
|11BDC4| db $23 ; Repeat byte
|11BDC5| db $00
|11BDC6| db $00 ; Raw block
|11BDC7| db $FF
|11BDC8| db $46 ; Repeat word
|11BDC9| dw $8100
|11BDCB| db $83 ; Copy past
|11BDCC| dw $0124
|11BDCE| db $43 ; Repeat word
|11BDCF| dw $7EBD
|11BDD1| db $00 ; Raw block
|11BDD2| db $00
|11BDD3| db $23 ; Repeat byte
|11BDD4| db $7E
|11BDD5| db $00 ; Raw block
|11BDD6| db $3C
|11BDD7| db $83 ; Copy past
|11BDD8| dw $008E
|11BDDA| db $15 ; Raw block
|11BDDB| db $46, $E6, $42, $C2, $29, $A9, $60, $E0
|11BDE3| db $06, $86, $12, $92, $7F, $80, $00, $19
|11BDEB| db $3D, $56, $1F, $79, $6D, $7F
|11BDF1| db $83 ; Copy past
|11BDF2| dw $0090
|11BDF4| db $01 ; Raw block
|11BDF5| db $FF, $00
|11BDF7| db $89 ; Copy past
|11BDF8| dw $0156
|11BDFA| db $22 ; Repeat byte
|11BDFB| db $00
|11BDFC| db $86 ; Copy past
|11BDFD| dw $0163
|11BDFF| db $43 ; Repeat word
|11BE00| dw $FF00
|11BE02| db $01 ; Raw block
|11BE03| db $FF, $00
|11BE05| db $43 ; Repeat word
|11BE06| dw $7F80
|11BE08| db $83 ; Copy past
|11BE09| dw $0180
|11BE0B| db $27 ; Repeat byte
|11BE0C| db $00
|11BE0D| db $01 ; Raw block
|11BE0E| db $FF, $00
|11BE10| db $43 ; Repeat word
|11BE11| dw $7F80
|11BE13| db $01 ; Raw block
|11BE14| db $FF, $00
|11BE16| db $43 ; Repeat word
|11BE17| dw $FF00
|11BE19| db $83 ; Copy past
|11BE1A| dw $0186
|11BE1C| db $27 ; Repeat byte
|11BE1D| db $00
|11BE1E| db $4F ; Repeat word
|11BE1F| dw $0002
|11BE21| db $27 ; Repeat byte
|11BE22| db $01
|11BE23| db $45 ; Repeat word
|11BE24| dw $6D92
|11BE26| db $01 ; Raw block
|11BE27| db $93, $6C
|11BE29| db $45 ; Repeat word
|11BE2A| dw $6D92
|11BE2C| db $01 ; Raw block
|11BE2D| db $9E, $61
|11BE2F| db $27 ; Repeat byte
|11BE30| db $00
|11BE31| db $01 ; Raw block
|11BE32| db $57, $A8
|11BE34| db $43 ; Repeat word
|11BE35| dw $AA55
|11BE37| db $01 ; Raw block
|11BE38| db $DD, $22
|11BE3A| db $45 ; Repeat word
|11BE3B| dw $AA55
|11BE3D| db $01 ; Raw block
|11BE3E| db $77, $88
|11BE40| db $27 ; Repeat byte
|11BE41| db $00
|11BE42| db $08 ; Raw block
|11BE43| db $22, $00, $0A, $00, $88, $00, $02, $00
|11BE4B| db $62
|11BE4C| db $22 ; Repeat byte
|11BE4D| db $00
|11BE4E| db $00 ; Raw block
|11BE4F| db $D8
|11BE50| db $2A ; Repeat byte
|11BE51| db $00
|11BE52| db $E0, $3F ; EXT Raw block
|11BE54| db $12, $6D, $12, $AD, $12, $CD, $E2, $1D
|11BE5C| db $02, $F5, $02, $F9, $FC, $03, $00, $FE
|11BE64| db $80, $40, $20, $00, $08, $04, $00, $01
|11BE6C| db $57, $28, $95, $6A, $55, $CA, $E5, $1A
|11BE74| db $05, $F2, $F9, $06, $81, $7C, $FE, $01
|11BE7C| db $80, $00, $20, $00, $08, $00, $02, $00
|11BE84| db $5D, $22, $97, $68, $1D, $C2, $E7, $18
|11BE8C| db $A5, $52, $FB, $04, $55, $AA, $FF, $00
|11BE94| db $84 ; Copy past
|11BE95| dw $0238
|11BE97| db $22 ; Repeat byte
|11BE98| db $00
|11BE99| db $43 ; Repeat word
|11BE9A| dw $00FF
|11BE9C| db $0B ; Raw block
|11BE9D| db $EE, $11, $B7, $48, $E2, $1D, $BD, $4B
|11BEA5| db $CA, $35, $9F, $7B
|11BEA9| db $27 ; Repeat byte
|11BEAA| db $00
|11BEAB| db $0F ; Raw block
|11BEAC| db $FE, $01, $EB, $15, $FC, $03, $D5, $2B
|11BEB4| db $E7, $1D, $F6, $09, $FB, $05, $D7, $2D
|11BEBC| db $27 ; Repeat byte
|11BEBD| db $00
|11BEBE| db $0F ; Raw block
|11BEBF| db $FC, $C3, $E7, $1B, $03, $FC, $9E, $F9
|11BEC7| db $F8, $67, $E1, $1F, $9F, $6E, $0E, $F1
|11BECF| db $33 ; Repeat byte
|11BED0| db $00
|11BED1| db $00 ; Raw block
|11BED2| db $FF
|11BED3| db $29 ; Repeat byte
|11BED4| db $00
|11BED5| db $00 ; Raw block
|11BED6| db $FF
|11BED7| db $49 ; Repeat word
|11BED8| dw $7EBD
|11BEDA| db $45 ; Repeat word
|11BEDB| dw $3EFD
|11BEDD| db $27 ; Repeat byte
|11BEDE| db $00
|11BEDF| db $00 ; Raw block
|11BEE0| db $3F
|11BEE1| db $84 ; Copy past
|11BEE2| dw $0183
|11BEE4| db $05 ; Raw block
|11BEE5| db $4A, $CA, $08, $88, $61, $E1
|11BEEB| db $83 ; Copy past
|11BEEC| dw $0189
|11BEEE| db $22 ; Repeat byte
|11BEEF| db $00
|11BEF0| db $03 ; Raw block
|11BEF1| db $35, $77, $1E, $7F
|11BEF5| db $83 ; Copy past
|11BEF6| dw $018E
|11BEF8| db $0C ; Raw block
|11BEF9| db $FF, $E6, $FF, $7E, $FF, $B3, $FF, $7B
|11BF01| db $FF, $00, $00, $7F, $FF
|11BF06| db $25 ; Repeat byte
|11BF07| db $00
|11BF08| db $83 ; Copy past
|11BF09| dw $0180
|11BF0B| db $83 ; Copy past
|11BF0C| dw $0186
|11BF0E| db $08 ; Raw block
|11BF0F| db $FF, $00, $08, $F7, $FF, $00, $01, $FE
|11BF17| db $FF
|11BF18| db $28 ; Repeat byte
|11BF19| db $00
|11BF1A| db $85 ; Copy past
|11BF1B| dw $018A
|11BF1D| db $88 ; Copy past
|11BF1E| dw $0306
|11BF20| db $28 ; Repeat byte
|11BF21| db $00
|11BF22| db $E0, $41 ; EXT Raw block
|11BF24| db $3C, $FF, $18, $7E, $81, $BD, $C3, $DB
|11BF2C| db $E3, $EF, $F1, $F7, $F8, $FB, $7C, $FD
|11BF34| db $00, $81, $42, $24, $10, $08, $04, $02
|11BF3C| db $7C, $7F, $F8, $FE, $F1, $FD, $E3, $FB
|11BF44| db $C3, $FF, $81, $E7, $18, $DB, $3C, $BD
|11BF4C| db $80, $01, $02, $04, $00, $18, $24, $42
|11BF54| db $FF, $00, $FE, $01, $CF, $11, $DF, $11
|11BF5C| db $D7, $19, $D6, $18, $D2, $1C, $D2, $1D
|11BF64| db $00, $00
|11BF66| db $22 ; Repeat byte
|11BF67| db $20
|11BF68| db $02 ; Raw block
|11BF69| db $21, $21, $20
|11BF6C| db $43 ; Repeat word
|11BF6D| dw $770C
|11BF6F| db $10 ; Raw block
|11BF70| db $8C, $B7, $B0, $EB, $2D, $DD, $C9, $3E
|11BF78| db $EF, $10, $FD, $03, $80, $80, $40, $04
|11BF80| db $02
|11BF81| db $22 ; Repeat byte
|11BF82| db $00
|11BF83| db $45 ; Repeat word
|11BF84| dw $1CD3
|11BF86| db $05 ; Raw block
|11BF87| db $E3, $3C, $DB, $14, $D7, $18
|11BF8D| db $43 ; Repeat word
|11BF8E| dw $1CD3
|11BF90| db $22 ; Repeat byte
|11BF91| db $20
|11BF92| db $00 ; Raw block
|11BF93| db $00
|11BF94| db $23 ; Repeat byte
|11BF95| db $20
|11BF96| db $13 ; Raw block
|11BF97| db $3E, $3F, $3A, $3B, $74, $77, $E9, $EE
|11BF9F| db $B7, $F9, $5C, $E3, $BF, $C0, $FF, $00
|11BFA7| db $C0, $C4, $88, $10
|11BFAB| db $23 ; Repeat byte
|11BFAC| db $00
|11BFAD| db $01 ; Raw block
|11BFAE| db $FF, $00
|11BFB0| db $43 ; Repeat word
|11BFB1| dw $FE01
|11BFB3| db $01 ; Raw block
|11BFB4| db $FF, $00
|11BFB6| db $43 ; Repeat word
|11BFB7| dw $EF10
|11BFB9| db $02 ; Raw block
|11BFBA| db $FF, $00, $FF
|11BFBD| db $28 ; Repeat byte
|11BFBE| db $00
|11BFBF| db $45 ; Repeat word
|11BFC0| dw $6C93
|11BFC2| db $01 ; Raw block
|11BFC3| db $9F, $60
|11BFC5| db $45 ; Repeat word
|11BFC6| dw $6C93
|11BFC8| db $01 ; Raw block
|11BFC9| db $F3, $0C
|11BFCB| db $27 ; Repeat byte
|11BFCC| db $00
|11BFCD| db $83 ; Copy past
|11BFCE| dw $03CA
|11BFD0| db $05 ; Raw block
|11BFD1| db $01, $FE, $3C, $00, $18, $E7
|11BFD7| db $22 ; Repeat byte
|11BFD8| db $00
|11BFD9| db $00 ; Raw block
|11BFDA| db $BB
|11BFDB| db $29 ; Repeat byte
|11BFDC| db $00
|11BFDD| db $0F ; Raw block
|11BFDE| db $30, $8A, $10, $AA, $40, $A8, $48, $A2
|11BFE6| db $C8, $22, $40, $AA, $00, $A8, $10, $AA
|11BFEE| db $28 ; Repeat byte
|11BFEF| db $00
|11BFF0| db $07 ; Raw block
|11BFF1| db $20, $28, $80, $08, $80, $A2, $00, $02
|11BFF9| db $84 ; Copy past
|11BFFA| dw $0421
|11BFFC| db $00 ; Raw block
|11BFFD| db $A0
|11BFFE| db $28 ; Repeat byte
|11BFFF| db $00
|11C000| db $45 ; Repeat word
|11C001| dw $3EFD
|11C003| db $45 ; Repeat word
|11C004| dw $3EDD
|11C006| db $43 ; Repeat word
|11C007| dw $1EFD
|11C009| db $27 ; Repeat byte
|11C00A| db $00
|11C00B| db $04 ; Raw block
|11C00C| db $FF, $00, $37, $FF, $6D
|11C011| db $83 ; Copy past
|11C012| dw $024E
|11C014| db $06 ; Raw block
|11C015| db $FF, $FF, $00, $DD, $7F, $F7, $7F
|11C01C| db $22 ; Repeat byte
|11C01D| db $00
|11C01E| db $00 ; Raw block
|11C01F| db $7F
|11C020| db $23 ; Repeat byte
|11C021| db $00
|11C022| db $83 ; Copy past
|11C023| dw $018A
|11C025| db $06 ; Raw block
|11C026| db $9E, $7F, $DB, $7F, $F2, $7F, $80
|11C02D| db $83 ; Copy past
|11C02E| dw $0303
|11C030| db $25 ; Repeat byte
|11C031| db $00
|11C032| db $00 ; Raw block
|11C033| db $7F
|11C034| db $22 ; Repeat byte
|11C035| db $00
|11C036| db $8D ; Copy past
|11C037| dw $0301
|11C039| db $28 ; Repeat byte
|11C03A| db $00
|11C03B| db $01 ; Raw block
|11C03C| db $57, $A8
|11C03E| db $43 ; Repeat word
|11C03F| dw $AA55
|11C041| db $01 ; Raw block
|11C042| db $DD, $22
|11C044| db $45 ; Repeat word
|11C045| dw $AA55
|11C047| db $01 ; Raw block
|11C048| db $77, $88
|11C04A| db $27 ; Repeat byte
|11C04B| db $00
|11C04C| db $05 ; Raw block
|11C04D| db $59, $E7, $2C, $73, $3C, $33
|11C053| db $43 ; Repeat word
|11C054| dw $395E
|11C056| db $07 ; Raw block
|11C057| db $BD, $73, $BB, $77, $58, $C7, $00, $80
|11C05F| db $22 ; Repeat byte
|11C060| db $C0
|11C061| db $13 ; Raw block
|11C062| db $80, $80, $20, $1D, $43, $F5, $EB, $92
|11C06A| db $ED, $7A, $87, $3A, $C7, $8B, $B7, $C9
|11C072| db $D7, $DD, $D3, $A0
|11C076| db $23 ; Repeat byte
|11C077| db $00
|11C078| db $12 ; Raw block
|11C079| db $40, $20, $20, $6D, $73, $7C, $73, $74
|11C081| db $7B, $A6, $A9, $C7, $D8, $8D, $B2, $8C
|11C089| db $F3, $1E, $E9
|11C08C| db $22 ; Repeat byte
|11C08D| db $80
|11C08E| db $16 ; Raw block
|11C08F| db $50, $20, $40, $00, $00, $37, $38, $07
|11C097| db $D8, $1B, $F4, $11, $EE, $EF, $1C, $EB
|11C09F| db $EC, $02, $F5, $0F, $F9, $C0, $20
|11C0A6| db $22 ; Repeat byte
|11C0A7| db $00
|11C0A8| db $E0, $2E ; EXT Raw block
|11C0AA| db $10, $08, $00, $B1, $F2, $DD, $FE, $83
|11C0B2| db $BC, $06, $D9, $0E, $F1, $67, $F8, $63
|11C0BA| db $EC, $11, $D6, $0C, $00, $40, $20, $00
|11C0C2| db $00, $10, $28, $1B, $0E, $35, $3E, $FB
|11C0CA| db $FC, $EF, $E8, $D7, $D8, $AF, $B0, $CB
|11C0D2| db $F4, $1B, $EC, $E0, $C0, $00, $10
|11C0D9| db $83 ; Copy past
|11C0DA| dw $04F4
|11C0DC| db $05 ; Raw block
|11C0DD| db $FF, $00, $55, $AA, $AA, $55
|11C0E3| db $44 ; Repeat word
|11C0E4| dw $FF00
|11C0E6| db $24 ; Repeat byte
|11C0E7| db $FF
|11C0E8| db $27 ; Repeat byte
|11C0E9| db $00
|11C0EA| db $03 ; Raw block
|11C0EB| db $A3, $5F, $C3, $3F
|11C0EF| db $83 ; Copy past
|11C0F0| dw $0558
|11C0F2| db $87 ; Copy past
|11C0F3| dw $0558
|11C0F5| db $27 ; Repeat byte
|11C0F6| db $00
|11C0F7| db $04 ; Raw block
|11C0F8| db $A5, $42, $00, $00, $BB
|11C0FD| db $22 ; Repeat byte
|11C0FE| db $00
|11C0FF| db $00 ; Raw block
|11C100| db $CE
|11C101| db $22 ; Repeat byte
|11C102| db $00
|11C103| db $00 ; Raw block
|11C104| db $18
|11C105| db $2A ; Repeat byte
|11C106| db $00
|11C107| db $0F ; Raw block
|11C108| db $40, $3F, $80, $00, $11, $8E, $20, $80
|11C110| db $01, $A2, $00, $A0, $00, $A8, $28, $80
|11C118| db $28 ; Repeat byte
|11C119| db $00
|11C11A| db $0D ; Raw block
|11C11B| db $AA, $40, $2A, $12, $E8, $28, $12, $14
|11C123| db $EA, $0A, $04, $24, $DA, $01
|11C129| db $28 ; Repeat byte
|11C12A| db $00
|11C12B| db $43 ; Repeat word
|11C12C| dw $1EFD
|11C12E| db $49 ; Repeat word
|11C12F| dw $1EED
|11C131| db $00 ; Raw block
|11C132| db $FF
|11C133| db $28 ; Repeat byte
|11C134| db $00
|11C135| db $85 ; Copy past
|11C136| dw $0472
|11C138| db $05 ; Raw block
|11C139| db $AB, $7F, $BF, $7F, $80, $40
|11C13F| db $83 ; Copy past
|11C140| dw $018A
|11C142| db $00 ; Raw block
|11C143| db $7F
|11C144| db $23 ; Repeat byte
|11C145| db $00
|11C146| db $07 ; Raw block
|11C147| db $3F, $00, $00, $C2, $3D, $C8, $37, $C0
|11C14F| db $84 ; Copy past
|11C150| dw $0169
|11C152| db $04 ; Raw block
|11C153| db $E4, $1B, $E0, $1F, $FF
|11C158| db $22 ; Repeat byte
|11C159| db $00
|11C15A| db $00 ; Raw block
|11C15B| db $3F
|11C15C| db $24 ; Repeat byte
|11C15D| db $00
|11C15E| db $FF ; End of GFX 01

;===================================================================================================

GFX_02:
|11C15F| db $E0, $33 ; EXT Raw block
|11C161| db $D7, $D9, $AF, $B3, $2F, $37, $BF, $A7
|11C169| db $DF, $ED, $9F, $ED, $2F, $D5, $5D, $B7
|11C171| db $21, $43, $C7, $47, $0D, $0D, $05, $07
|11C179| db $FF, $00, $BF, $0E, $9F, $04, $CC, $00
|11C181| db $E7, $A4, $FC, $98, $FB, $90, $F7, $90
|11C189| db $00, $6E, $74, $3B, $9B, $87, $8C, $88
|11C191| db $FF, $80, $FF, $CE
|11C195| db $44 ; Repeat word
|11C196| dw $DEFF
|11C198| db $E0, $3E ; EXT Raw block
|11C19A| db $9E, $FF, $98, $FC, $80, $FB, $82, $80
|11C1A2| db $CE, $DE, $DE, $9E, $98, $83, $84, $DC
|11C1AA| db $DF, $89, $8E, $72, $7D, $9D, $E3, $7F
|11C1B2| db $8C, $FF, $3F, $FE, $71, $FF, $FF, $20
|11C1BA| db $70, $80, $00, $0C, $3F, $71, $FF, $0B
|11C1C2| db $03, $37, $07, $0E, $0F, $E0, $FF, $E3
|11C1CA| db $1C, $FF, $A0, $DF, $B4, $DF, $B6, $FC
|11C1D2| db $F8, $F0, $00, $00, $A0, $B4, $B6
|11C1D9| db $22 ; Repeat byte
|11C1DA| db $FF
|11C1DB| db $16 ; Raw block
|11C1DC| db $70, $FF, $00, $FF, $3C, $FF, $7C, $FE
|11C1E4| db $78, $FD, $79, $FD, $00, $FF, $70, $00
|11C1EC| db $3C, $7C, $79, $7A, $02, $DF, $B6
|11C1F3| db $43 ; Repeat word
|11C1F4| dw $31DE
|11C1F6| db $11 ; Raw block
|11C1F7| db $DF, $34, $FF, $06, $3F, $20, $C2, $01
|11C1FF| db $FA, $01, $B6, $30, $30, $34, $06, $C0
|11C207| db $3C, $04
|11C209| db $45 ; Repeat word
|11C20A| dw $00FF
|11C20C| db $00 ; Raw block
|11C20D| db $00
|11C20E| db $22 ; Repeat byte
|11C20F| db $FF
|11C210| db $04 ; Raw block
|11C211| db $00, $00, $80, $7F, $FF
|11C216| db $25 ; Repeat byte
|11C217| db $00
|11C218| db $16 ; Raw block
|11C219| db $FF, $00, $00, $D7, $D8, $AF, $B0, $2F
|11C221| db $30, $BF, $A0, $D7, $E8, $97, $E8, $27
|11C229| db $D8, $57, $B8, $20, $40, $C0, $40
|11C230| db $23 ; Repeat byte
|11C231| db $00
|11C232| db $87 ; Copy past
|11C233| dw $0048
|11C235| db $01 ; Raw block
|11C236| db $70, $8F
|11C238| db $45 ; Repeat word
|11C239| dw $00FF
|11C23B| db $02 ; Raw block
|11C23C| db $20, $70, $80
|11C23F| db $24 ; Repeat byte
|11C240| db $00
|11C241| db $87 ; Copy past
|11C242| dw $0060
|11C244| db $0A ; Raw block
|11C245| db $01, $FE, $83, $7C, $FE, $01, $FC, $03
|11C24D| db $FC, $F8, $F0
|11C250| db $24 ; Repeat byte
|11C251| db $00
|11C252| db $1D ; Raw block
|11C253| db $9F, $77, $BF, $70, $FC, $77, $E7, $7B
|11C25B| db $E7, $78, $B7, $7B, $CF, $31, $EF, $10
|11C263| db $07, $00, $07, $03, $00, $03, $01, $00
|11C26B| db $9B, $77, $BB, $77, $F9, $77
|11C271| db $43 ; Repeat word
|11C272| dw $7BE4
|11C274| db $05 ; Raw block
|11C275| db $B6, $79, $C7, $38, $E8, $17
|11C27B| db $27 ; Repeat byte
|11C27C| db $00
|11C27D| db $04 ; Raw block
|11C27E| db $97, $78, $B7, $78, $F7
|11C283| db $44 ; Repeat word
|11C284| dw $E778
|11C286| db $05 ; Raw block
|11C287| db $B7, $78, $C4, $3B, $E8, $17
|11C28D| db $27 ; Repeat byte
|11C28E| db $00
|11C28F| db $16 ; Raw block
|11C290| db $9E, $75, $BC, $73, $F9, $77, $E7, $7A
|11C298| db $E7, $79, $B7, $7B, $CF, $32, $EF, $10
|11C2A0| db $05, $03, $07, $02, $01, $03, $02
|11C2A7| db $85 ; Copy past
|11C2A8| dw $0137
|11C2AA| db $44 ; Repeat word
|11C2AB| dw $E778
|11C2AD| db $85 ; Copy past
|11C2AE| dw $0142
|11C2B0| db $27 ; Repeat byte
|11C2B1| db $00
|11C2B2| db $E0, $46 ; EXT Raw block
|11C2B4| db $1F, $17, $1F, $10, $5C, $17, $47, $1B
|11C2BC| db $A7, $38, $67, $7B, $EF, $F1, $CF, $F0
|11C2C4| db $E7, $E0, $E7, $E3, $C0, $83, $01, $00
|11C2CC| db $F7, $90, $F7, $14, $1B, $EA, $FD, $C4
|11C2D4| db $ED, $08, $DC, $10, $FF, $68, $FC, $03
|11C2DC| db $88, $08, $E4, $D2, $32, $63, $08, $00
|11C2E4| db $FB, $80, $FB, $00, $0D, $F4, $FD, $F0
|11C2EC| db $FD, $00, $FC, $98, $FF, $88, $9C, $63
|11C2F4| db $84, $04, $F2, $F2, $02, $9B, $88
|11C2FB| db $24 ; Repeat byte
|11C2FC| db $00
|11C2FD| db $0D ; Raw block
|11C2FE| db $3F, $3F, $31, $31, $23, $23, $27, $27
|11C306| db $2E, $2E, $3C, $3C, $00, $7F
|11C30C| db $26 ; Repeat byte
|11C30D| db $40
|11C30E| db $06 ; Raw block
|11C30F| db $BF, $00, $80, $1E, $9E, $1F, $9F
|11C316| db $45 ; Repeat word
|11C317| dw $BF3F
|11C319| db $05 ; Raw block
|11C31A| db $1F, $9F, $00, $7F, $61, $60
|11C320| db $22 ; Repeat byte
|11C321| db $40
|11C322| db $00 ; Raw block
|11C323| db $60
|11C324| db $4E ; Repeat word
|11C325| dw $00FF
|11C327| db $28 ; Repeat byte
|11C328| db $00
|11C329| db $0A ; Raw block
|11C32A| db $E0, $1F, $EF, $10, $FF, $00, $FF, $7F
|11C332| db $C0, $7F, $FF
|11C335| db $22 ; Repeat byte
|11C336| db $00
|11C337| db $01 ; Raw block
|11C338| db $FF, $FF
|11C33A| db $25 ; Repeat byte
|11C33B| db $00
|11C33C| db $01 ; Raw block
|11C33D| db $FF, $00
|11C33F| db $43 ; Repeat word
|11C340| dw $7FFF
|11C342| db $05 ; Raw block
|11C343| db $80, $00, $C0, $3F, $FF, $00
|11C349| db $43 ; Repeat word
|11C34A| dw $3FFF
|11C34C| db $00 ; Raw block
|11C34D| db $C0
|11C34E| db $22 ; Repeat byte
|11C34F| db $00
|11C350| db $00 ; Raw block
|11C351| db $7F
|11C352| db $23 ; Repeat byte
|11C353| db $00
|11C354| db $10 ; Raw block
|11C355| db $3F, $17, $18, $13, $1C, $53, $1C, $43
|11C35D| db $1C, $A3, $3C, $63, $7C, $E6, $F9, $CC
|11C365| db $F3
|11C366| db $23 ; Repeat byte
|11C367| db $E0
|11C368| db $13 ; Raw block
|11C369| db $C0, $80, $00, $00, $CF, $31, $C6, $3B
|11C371| db $9C, $6F, $BB, $5C, $34, $D8, $69, $B1
|11C379| db $F3, $43, $FF, $3F
|11C37D| db $23 ; Repeat byte
|11C37E| db $00
|11C37F| db $0C ; Raw block
|11C380| db $03, $06, $0C, $00, $3F, $C0, $1F, $E0
|11C388| db $65, $86, $1E, $1F, $FE
|11C38D| db $26 ; Repeat byte
|11C38E| db $FF
|11C38F| db $03 ; Raw block
|11C390| db $00, $00, $18, $E0
|11C394| db $23 ; Repeat byte
|11C395| db $00
|11C396| db $06 ; Raw block
|11C397| db $FF, $00, $3B, $FC, $7D, $FE, $E4
|11C39E| db $88 ; Copy past
|11C39F| dw $0067
|11C3A1| db $24 ; Repeat byte
|11C3A2| db $00
|11C3A3| db $83 ; Copy past
|11C3A4| dw $0075
|11C3A6| db $86 ; Copy past
|11C3A7| dw $0289
|11C3A9| db $07 ; Raw block
|11C3AA| db $E1, $1E, $1E, $E1, $C6, $F9, $E2, $FD
|11C3B2| db $27 ; Repeat byte
|11C3B3| db $00
|11C3B4| db $87 ; Copy past
|11C3B5| dw $0288
|11C3B7| db $03 ; Raw block
|11C3B8| db $01, $FE, $FE, $01
|11C3BC| db $43 ; Repeat word
|11C3BD| dw $03FC
|11C3BF| db $27 ; Repeat byte
|11C3C0| db $00
|11C3C1| db $89 ; Copy past
|11C3C2| dw $0288
|11C3C4| db $05 ; Raw block
|11C3C5| db $DF, $A0, $9F, $76, $3F, $EC
|11C3CB| db $24 ; Repeat byte
|11C3CC| db $00
|11C3CD| db $02 ; Raw block
|11C3CE| db $A0, $76, $EC
|11C3D1| db $8B ; Copy past
|11C3D2| dw $02B8
|11C3D4| db $43 ; Repeat word
|11C3D5| dw $03FC
|11C3D7| db $27 ; Repeat byte
|11C3D8| db $00
|11C3D9| db $86 ; Copy past
|11C3DA| dw $0000
|11C3DC| db $10 ; Raw block
|11C3DD| db $A3, $DF, $EA, $9F, $EA, $2B, $D6, $5F
|11C3E5| db $B6, $21, $43, $C7, $43, $0A, $0A, $06
|11C3ED| db $06
|11C3EE| db $44 ; Repeat word
|11C3EF| dw $60FF
|11C3F1| db $04 ; Raw block
|11C3F2| db $40, $DF, $00, $BF, $20
|11C3F7| db $43 ; Repeat word
|11C3F8| dw $60FF
|11C3FA| db $09 ; Raw block
|11C3FB| db $7F, $A0, $60, $60, $40, $20, $40, $00
|11C403| db $00, $80
|11C405| db $89 ; Copy past
|11C406| dw $0048
|11C408| db $05 ; Raw block
|11C409| db $FD, $23, $FF, $7F, $FF, $F0
|11C40F| db $84 ; Copy past
|11C410| dw $0058
|11C412| db $02 ; Raw block
|11C413| db $23, $7F, $F0
|11C416| db $89 ; Copy past
|11C417| dw $0060
|11C419| db $05 ; Raw block
|11C41A| db $DF, $A0, $9F, $77, $3F, $EE
|11C420| db $85 ; Copy past
|11C421| dw $0070
|11C423| db $16 ; Raw block
|11C424| db $77, $EE, $D4, $DA, $A8, $B4, $2C, $34
|11C42C| db $B4, $AC, $D6, $EE, $97, $EF, $2F, $D7
|11C434| db $5F, $B7, $21, $43, $C3, $43, $01
|11C43B| db $24 ; Repeat byte
|11C43C| db $00
|11C43D| db $0D ; Raw block
|11C43E| db $10, $00, $1F, $00, $3F, $00, $E0, $00
|11C446| db $5E, $1E, $7F, $0F, $7F, $07
|11C44C| db $24 ; Repeat byte
|11C44D| db $FF
|11C44E| db $01 ; Raw block
|11C44F| db $E1, $80
|11C451| db $88 ; Copy past
|11C452| dw $032F
|11C454| db $0A ; Raw block
|11C455| db $63, $9C, $BF, $7F, $0F, $8F, $07, $07
|11C45D| db $20, $70, $80
|11C460| db $22 ; Repeat byte
|11C461| db $00
|11C462| db $01 ; Raw block
|11C463| db $70, $F8
|11C465| db $87 ; Copy past
|11C466| dw $0060
|11C468| db $03 ; Raw block
|11C469| db $E1, $1E, $1F, $E0
|11C46D| db $83 ; Copy past
|11C46E| dw $02AC
|11C470| db $02 ; Raw block
|11C471| db $FC, $F8, $F0
|11C474| db $24 ; Repeat byte
|11C475| db $00
|11C476| db $83 ; Copy past
|11C477| dw $00C0
|11C479| db $0B ; Raw block
|11C47A| db $2E, $31, $BD, $A3, $D5, $EB, $95, $EB
|11C482| db $24, $DB, $54, $BB
|11C486| db $83 ; Copy past
|11C487| dw $00D0
|11C489| db $23 ; Repeat byte
|11C48A| db $00
|11C48B| db $12 ; Raw block
|11C48C| db $80, $7F, $40, $C0, $9E, $9E, $77, $3F
|11C494| db $3B, $5F, $5D, $6F, $AD, $B7, $71, $FF
|11C49C| db $00, $3F, $61
|11C49F| db $22 ; Repeat byte
|11C4A0| db $80
|11C4A1| db $00 ; Raw block
|11C4A2| db $40
|11C4A3| db $8C ; Copy past
|11C4A4| dw $00D7
|11C4A6| db $06 ; Raw block
|11C4A7| db $E0, $1F, $DC, $3F, $20, $70, $80
|11C4AE| db $24 ; Repeat byte
|11C4AF| db $00
|11C4B0| db $89 ; Copy past
|11C4B1| dw $00F0
|11C4B3| db $08 ; Raw block
|11C4B4| db $C3, $3C, $FE, $01, $7C, $83, $FC, $F8
|11C4BC| db $F0
|11C4BD| db $24 ; Repeat byte
|11C4BE| db $00
|11C4BF| db $E0, $2C ; EXT Raw block
|11C4C1| db $C3, $FF, $CC, $FF, $93, $F3, $54, $70
|11C4C9| db $5A, $78, $CC, $FC, $85, $FD, $03, $FF
|11C4D1| db $00, $00, $0C, $8F, $87, $03, $02, $00
|11C4D9| db $C1, $FF, $3E, $FF, $D9, $D9, $3C, $3C
|11C4E1| db $62, $7E, $D9, $E7, $BC, $C3, $7F, $80
|11C4E9| db $00, $00, $26, $C3, $81
|11C4EE| db $22 ; Repeat byte
|11C4EF| db $00
|11C4F0| db $03 ; Raw block
|11C4F1| db $3F, $C0, $7F, $80
|11C4F5| db $83 ; Copy past
|11C4F6| dw $00FC
|11C4F8| db $07 ; Raw block
|11C4F9| db $F8, $07, $FB, $07, $E6, $19, $DB, $3C
|11C501| db $27 ; Repeat byte
|11C502| db $00
|11C503| db $0F ; Raw block
|11C504| db $FF, $00, $F3, $0C, $39, $C6, $1D, $E2
|11C50C| db $0F, $F0, $07, $F8, $81, $FE, $F1, $7E
|11C514| db $27 ; Repeat byte
|11C515| db $00
|11C516| db $E0, $2C ; EXT Raw block
|11C518| db $1E, $15, $1C, $13, $59, $17, $47, $1A
|11C520| db $A7, $39, $67, $7B, $EF, $F3, $CF, $F2
|11C528| db $E5, $E3, $E7, $E2, $C1, $83, $03, $02
|11C530| db $7F, $A0, $FF, $80, $FF, $20, $FE, $61
|11C538| db $F2, $4D, $E3, $1C, $FC, $03, $99, $67
|11C540| db $80, $80, $20, $60, $40
|11C545| db $22 ; Repeat byte
|11C546| db $00
|11C547| db $05 ; Raw block
|11C548| db $FE, $01, $F7, $E6, $EF, $CF
|11C54E| db $49 ; Repeat word
|11C54F| dw $00FF
|11C551| db $02 ; Raw block
|11C552| db $01, $E8, $D0
|11C555| db $24 ; Repeat byte
|11C556| db $00
|11C557| db $12 ; Raw block
|11C558| db $7F, $C0, $FE, $19, $FE, $B1, $FB, $04
|11C560| db $F3, $0C, $F2, $0D, $FC, $03, $E5, $1B
|11C568| db $C0, $18, $30
|11C56B| db $24 ; Repeat byte
|11C56C| db $00
|11C56D| db $43 ; Repeat word
|11C56E| dw $171B
|11C570| db $0B ; Raw block
|11C571| db $59, $17, $44, $1B, $A4, $3B, $66, $79
|11C579| db $E7, $F8, $CC, $F3
|11C57D| db $23 ; Repeat byte
|11C57E| db $E0
|11C57F| db $83 ; Copy past
|11C580| dw $0254
|11C582| db $E0, $21 ; EXT Raw block
|11C584| db $3F, $03, $5F, $43, $6D, $61, $F3, $F3
|11C58C| db $D7, $DF, $4A, $D6, $BD, $63, $7F, $80
|11C594| db $C0, $A0, $92, $0C, $20, $21, $00, $00
|11C59C| db $08, $00, $0F, $00, $1B, $00, $77, $04
|11C5A4| db $37, $06
|11C5A6| db $43 ; Repeat word
|11C5A7| dw $0737
|11C5A9| db $04 ; Raw block
|11C5AA| db $33, $03, $FF, $FC, $FC
|11C5AF| db $23 ; Repeat byte
|11C5B0| db $F8
|11C5B1| db $1C ; Raw block
|11C5B2| db $FC, $1A, $1D, $7D, $7E, $B3, $32, $DB
|11C5BA| db $1C, $E7, $08, $EB, $0C, $DD, $DE, $FB
|11C5C2| db $FA, $E0, $80, $4C, $20, $10, $10, $20
|11C5CA| db $04, $16, $19, $17, $18
|11C5CF| db $8B ; Copy past
|11C5D0| dw $0244
|11C5D2| db $23 ; Repeat byte
|11C5D3| db $E0
|11C5D4| db $83 ; Copy past
|11C5D5| dw $0254
|11C5D7| db $05 ; Raw block
|11C5D8| db $39, $FF, $01, $FF, $8C, $73
|11C5DE| db $43 ; Repeat word
|11C5DF| dw $00FF
|11C5E1| db $05 ; Raw block
|11C5E2| db $E3, $1C, $3C, $C3, $99, $E7
|11C5E8| db $27 ; Repeat byte
|11C5E9| db $00
|11C5EA| db $12 ; Raw block
|11C5EB| db $A2, $63, $55, $CD, $1B, $97, $3D, $BB
|11C5F3| db $2E, $BD, $36, $BF, $38, $BF, $1F, $9F
|11C5FB| db $1C, $22, $60
|11C5FE| db $23 ; Repeat byte
|11C5FF| db $40
|11C600| db $10 ; Raw block
|11C601| db $60, $3D, $C3, $1C, $E3, $9E, $E1, $9B
|11C609| db $E4, $BB, $C4, $3A, $C5, $1C, $E3, $DD
|11C611| db $E3
|11C612| db $27 ; Repeat byte
|11C613| db $00
|11C614| db $10 ; Raw block
|11C615| db $E6, $E7, $DC, $FF, $20, $FF, $78, $FF
|11C61D| db $64, $C7, $52, $C3, $A9, $E1, $B3, $F3
|11C625| db $18
|11C626| db $22 ; Repeat byte
|11C627| db $00
|11C628| db $09 ; Raw block
|11C629| db $38, $3C, $1E, $0C, $B6, $F7, $AD, $EE
|11C631| db $5B, $DC
|11C633| db $43 ; Repeat word
|11C634| dw $78F7
|11C636| db $E0, $22 ; EXT Raw block
|11C638| db $D3, $5C, $89, $CE, $C5, $E6, $08, $10
|11C640| db $20, $00, $00, $20, $30, $18, $9C, $5F
|11C648| db $DF, $5F, $EF, $2F, $C7, $37, $80, $78
|11C650| db $40, $FF, $F0, $FF, $FC, $FF, $20, $20
|11C658| db $10, $08, $07
|11C65B| db $22 ; Repeat byte
|11C65C| db $00
|11C65D| db $0B ; Raw block
|11C65E| db $EF, $1E, $31, $CE, $CF, $F0, $F1, $FE
|11C666| db $7D, $7C, $01, $82
|11C66A| db $43 ; Repeat word
|11C66B| dw $FE01
|11C66D| db $23 ; Repeat byte
|11C66E| db $00
|11C66F| db $03 ; Raw block
|11C670| db $82, $7C, $00, $00
|11C674| db $FF ; End of GFX 02

;===================================================================================================

GFX_03:
|11C675| db $23 ; Repeat byte
|11C676| db $00
|11C677| db $05 ; Raw block
|11C678| db $FC, $FC, $CC, $CC, $84, $84
|11C67E| db $25 ; Repeat byte
|11C67F| db $04
|11C680| db $01 ; Raw block
|11C681| db $00, $FE
|11C683| db $25 ; Repeat byte
|11C684| db $02
|11C685| db $0B ; Raw block
|11C686| db $38, $38, $30, $30, $20, $20, $21, $21
|11C68E| db $23, $23, $3F, $3F
|11C692| db $23 ; Repeat byte
|11C693| db $00
|11C694| db $25 ; Repeat byte
|11C695| db $40
|11C696| db $07 ; Raw block
|11C697| db $7F, $00, $24, $24, $44, $44, $84, $84
|11C69F| db $23 ; Repeat byte
|11C6A0| db $04
|11C6A1| db $01 ; Raw block
|11C6A2| db $FC, $FC
|11C6A4| db $23 ; Repeat byte
|11C6A5| db $00
|11C6A6| db $25 ; Repeat byte
|11C6A7| db $02
|11C6A8| db $E0, $2B ; EXT Raw block
|11C6AA| db $FE, $00, $E2, $E1, $1C, $F9, $05, $C6
|11C6B2| db $1A, $83, $19, $81, $C5, $C1, $E3, $E1
|11C6BA| db $E7, $E1, $1E, $06, $38, $7C, $7E, $3E
|11C6C2| db $1E, $1E, $1D, $EE, $3D, $DD, $FE, $1E
|11C6CA| db $3E, $DE, $DE, $EE, $ED, $F4, $0D, $F6
|11C6D2| db $09, $F6, $00, $02
|11C6D6| db $22 ; Repeat byte
|11C6D7| db $01
|11C6D8| db $00 ; Raw block
|11C6D9| db $02
|11C6DA| db $23 ; Repeat byte
|11C6DB| db $00
|11C6DC| db $44 ; Repeat word
|11C6DD| dw $0070
|11C6DF| db $30 ; Repeat byte
|11C6E0| db $00
|11C6E1| db $0F ; Raw block
|11C6E2| db $73, $FF, $B3, $FF, $C3, $FF, $00, $E3
|11C6EA| db $00, $E0, $C0, $E0, $E0, $F0, $E1, $F1
|11C6F2| db $22 ; Repeat byte
|11C6F3| db $00
|11C6F4| db $14 ; Raw block
|11C6F5| db $1C, $1F, $1F, $0F, $0E, $9F, $FF, $CF
|11C6FD| db $FF, $E3, $FC, $EC, $F3, $D7, $EF, $DE
|11C705| db $EE, $AC, $DC, $A8, $D9
|11C70A| db $24 ; Repeat byte
|11C70B| db $00
|11C70C| db $11 ; Raw block
|11C70D| db $01, $03, $06, $3D, $FE, $8D, $FE, $A3
|11C715| db $5C, $DF, $E0, $DF, $E2, $DF, $E6, $3F
|11C71D| db $CC, $FF
|11C71F| db $28 ; Repeat byte
|11C720| db $00
|11C721| db $0C ; Raw block
|11C722| db $FD, $FD, $9E, $FE, $8F, $FF, $80, $FF
|11C72A| db $8E, $FE, $8A, $FA, $C1
|11C72F| db $22 ; Repeat byte
|11C730| db $F1
|11C731| db $1F ; Raw block
|11C732| db $02, $01, $00, $00, $01, $05, $0E, $0E
|11C73A| db $C1, $E0, $82, $C0, $4D, $E1, $23, $3F
|11C742| db $30, $0F, $5F, $00, $78, $27, $B7, $AF
|11C74A| db $1F, $3F, $1E, $C0, $E0, $E0, $C0, $40
|11C752| db $43 ; Repeat word
|11C753| dw $EEFE
|11C755| db $E0, $2F ; EXT Raw block
|11C757| db $1C, $EC, $6A, $9B, $C4, $37, $78, $F7
|11C75F| db $E7, $E8, $07, $08, $01, $01, $03, $04
|11C767| db $08, $00, $10, $F0, $80, $7F, $3F, $FF
|11C76F| db $79, $C0, $C1, $81, $40, $00, $44, $00
|11C777| db $B9, $81, $C7, $C7, $00, $00, $3F, $7E
|11C77F| db $FF, $FF, $7E, $38, $3B, $82, $45, $01
|11C787| db $43 ; Repeat word
|11C788| dw $0082
|11C78A| db $09 ; Raw block
|11C78B| db $C6, $00, $7D, $01, $39, $01, $93, $83
|11C793| db $7C, $FE
|11C795| db $22 ; Repeat byte
|11C796| db $FF
|11C797| db $E0, $22 ; EXT Raw block
|11C799| db $FE, $FE, $7C, $23, $C3, $40, $80, $98
|11C7A1| db $98, $91, $91, $81, $81, $8C, $80, $BC
|11C7A9| db $80, $FF, $F8, $3C, $7F, $67, $6E, $7E
|11C7B1| db $7F, $7F, $07, $3F, $FF, $DF, $C0, $F8
|11C7B9| db $18, $11, $11
|11C7BC| db $85 ; Copy past
|11C7BD| dw $0158
|11C7BF| db $0F ; Raw block
|11C7C0| db $E7, $E0, $00, $3F, $E7, $EE, $7E, $7F
|11C7C8| db $7F, $1F, $87, $FF, $87, $E7, $83, $C3
|11C7D0| db $43 ; Repeat word
|11C7D1| dw $4058
|11C7D3| db $13 ; Raw block
|11C7D4| db $65, $20, $93, $30, $2F, $DF, $00, $18
|11C7DC| db $3C, $BF, $BF, $DF, $CF, $00, $87, $FF
|11C7E4| db $A7, $E7, $83, $83
|11C7E8| db $44 ; Repeat word
|11C7E9| dw $0030
|11C7EB| db $0B ; Raw block
|11C7EC| db $30, $DB, $78, $EE, $9F, $00, $18, $7C
|11C7F4| db $FF, $FF, $CF, $87
|11C7F8| db $50 ; Repeat word
|11C7F9| dw $0200
|11C7FB| db $27 ; Repeat byte
|11C7FC| db $01
|11C7FD| db $E0, $29 ; EXT Raw block
|11C7FF| db $E3, $E1, $03, $C2, $5D, $C6, $1E, $87
|11C807| db $03, $83, $C1, $C1, $E3, $E1, $E2, $E1
|11C80F| db $1E, $3C, $38, $78, $7C, $3E, $1E, $1E
|11C817| db $39, $CA, $F8, $19, $FC, $1D, $3C, $DD
|11C81F| db $DC, $ED, $FA, $EB, $FC, $EF, $10, $EF
|11C827| db $04, $06
|11C829| db $22 ; Repeat byte
|11C82A| db $02
|11C82B| db $00 ; Raw block
|11C82C| db $04
|11C82D| db $39 ; Repeat byte
|11C82E| db $00
|11C82F| db $1B ; Raw block
|11C830| db $C2, $C3, $CC, $C7, $0C, $07, $14, $07
|11C838| db $6D, $0E, $7D, $7E, $81, $FE, $07, $F8
|11C840| db $3C, $38, $F8, $F8, $F0, $80, $00, $00
|11C848| db $78, $FF, $F4, $F7
|11C84C| db $43 ; Repeat word
|11C84D| dw $F6F5
|11C84F| db $08 ; Raw block
|11C850| db $85, $86, $79, $FE, $83, $7C, $FF, $00
|11C858| db $00
|11C859| db $22 ; Repeat byte
|11C85A| db $08
|11C85B| db $00 ; Raw block
|11C85C| db $78
|11C85D| db $22 ; Repeat byte
|11C85E| db $00
|11C85F| db $0E ; Raw block
|11C860| db $8B, $FC, $73, $FC, $45, $FA, $5D, $E2
|11C868| db $99, $E6, $31, $CE, $C3, $3C, $FF
|11C86F| db $28 ; Repeat byte
|11C870| db $00
|11C871| db $45 ; Repeat word
|11C872| dw $00FF
|11C874| db $09 ; Raw block
|11C875| db $F6, $09, $E2, $1D, $E3, $1C, $3C, $C3
|11C87D| db $99, $E7
|11C87F| db $27 ; Repeat byte
|11C880| db $00
|11C881| db $0F ; Raw block
|11C882| db $FD, $03, $FC, $03, $FE, $01, $F3, $0C
|11C88A| db $E3, $1C, $F2, $0D, $FC, $03, $E5, $1B
|11C892| db $27 ; Repeat byte
|11C893| db $00
|11C894| db $0F ; Raw block
|11C895| db $FC, $C3, $E7, $1B, $03, $FC, $9E, $F9
|11C89D| db $F8, $67, $E1, $1F, $9F, $6E, $0E, $F1
|11C8A5| db $33 ; Repeat byte
|11C8A6| db $00
|11C8A7| db $00 ; Raw block
|11C8A8| db $FF
|11C8A9| db $29 ; Repeat byte
|11C8AA| db $00
|11C8AB| db $02 ; Raw block
|11C8AC| db $FF, $6F, $EF
|11C8AF| db $43 ; Repeat word
|11C8B0| dw $FF7E
|11C8B2| db $0A ; Raw block
|11C8B3| db $3D, $FE, $02, $FD, $6D, $F3, $3D, $BD
|11C8BB| db $21, $81, $10
|11C8BE| db $24 ; Repeat byte
|11C8BF| db $00
|11C8C0| db $18 ; Raw block
|11C8C1| db $42, $7E, $00, $FF, $3C, $FF, $47, $C7
|11C8C9| db $81, $81, $85, $85, $F0, $C0, $2F, $E0
|11C8D1| db $1F, $FF, $00, $00, $38, $7E, $7A, $3F
|11C8D9| db $1F
|11C8DA| db $83 ; Copy past
|11C8DB| dw $02AB
|11C8DD| db $0C ; Raw block
|11C8DE| db $FF, $E6, $FF, $7E, $FF, $B3, $FF, $7B
|11C8E6| db $FF, $C3, $C3, $BC, $BC
|11C8EB| db $25 ; Repeat byte
|11C8EC| db $00
|11C8ED| db $01 ; Raw block
|11C8EE| db $3C, $43
|11C8F0| db $43 ; Repeat word
|11C8F1| dw $DF2C
|11C8F3| db $0B ; Raw block
|11C8F4| db $74, $8F, $F8, $77, $FF, $F8, $FE, $FF
|11C8FC| db $38, $BB, $C7, $40
|11C900| db $25 ; Repeat byte
|11C901| db $00
|11C902| db $01 ; Raw block
|11C903| db $44, $38
|11C905| db $43 ; Repeat word
|11C906| dw $9F6E
|11C908| db $0B ; Raw block
|11C909| db $F6, $0F, $FF, $70, $FE, $FF, $3A, $3B
|11C911| db $04, $87, $80, $7F
|11C915| db $24 ; Repeat byte
|11C916| db $00
|11C917| db $E0, $44 ; EXT Raw block
|11C919| db $C4, $78, $00, $3C, $FF, $18, $7E, $81
|11C921| db $BD, $C3, $DB, $E3, $EF, $F1, $F7, $F8
|11C929| db $FB, $7C, $FD, $00, $81, $42, $24, $10
|11C931| db $08, $04, $02, $7C, $7F, $F8, $FE, $F1
|11C939| db $FD, $E3, $FB, $C3, $FF, $81, $E7, $18
|11C941| db $DB, $3C, $BD, $80, $01, $02, $04, $00
|11C949| db $18, $24, $42, $FF, $00, $FE, $01, $CF
|11C951| db $11, $DF, $11, $D7, $19, $D6, $18, $D2
|11C959| db $1C, $D2, $1D, $00, $00
|11C95E| db $22 ; Repeat byte
|11C95F| db $20
|11C960| db $0C ; Raw block
|11C961| db $21, $21, $20, $0F, $0F, $1F, $1F, $FE
|11C969| db $FF, $00, $FF, $F8, $07
|11C96E| db $43 ; Repeat word
|11C96F| dw $03FC
|11C971| db $03 ; Raw block
|11C972| db $FD, $03, $F0, $E0
|11C976| db $25 ; Repeat byte
|11C977| db $00
|11C978| db $45 ; Repeat word
|11C979| dw $1CD3
|11C97B| db $05 ; Raw block
|11C97C| db $E3, $3C, $DB, $14, $D7, $18
|11C982| db $43 ; Repeat word
|11C983| dw $1CD3
|11C985| db $22 ; Repeat byte
|11C986| db $20
|11C987| db $00 ; Raw block
|11C988| db $00
|11C989| db $23 ; Repeat byte
|11C98A| db $20
|11C98B| db $07 ; Raw block
|11C98C| db $FE, $FF, $FA, $FB, $F5, $F6, $02, $FD
|11C994| db $47 ; Repeat word
|11C995| dw $00FF
|11C997| db $02 ; Raw block
|11C998| db $00, $04, $08
|11C99B| db $24 ; Repeat byte
|11C99C| db $00
|11C99D| db $14 ; Raw block
|11C99E| db $FF, $00, $C1, $C1, $B4, $B4, $2A, $3E
|11C9A6| db $52, $6E, $BD, $C3, $42, $81, $81, $00
|11C9AE| db $00, $3E, $4B, $C1, $81
|11C9B3| db $22 ; Repeat byte
|11C9B4| db $00
|11C9B5| db $10 ; Raw block
|11C9B6| db $C5, $46, $9A, $1C, $A4, $38, $94, $18
|11C9BE| db $AC, $30, $B4, $38, $CA, $4C, $E5, $66
|11C9C6| db $38
|11C9C7| db $43 ; Repeat word
|11C9C8| dw $4060
|11C9CA| db $11 ; Raw block
|11C9CB| db $40, $30, $18, $3E, $C1, $3C, $C3, $42
|11C9D3| db $BD, $C3, $3C, $24, $18, $5A, $81, $66
|11C9DB| db $81, $C3
|11C9DD| db $28 ; Repeat byte
|11C9DE| db $00
|11C9DF| db $05 ; Raw block
|11C9E0| db $11, $E6, $37, $C0, $CA, $30
|11C9E6| db $43 ; Repeat word
|11C9E7| dw $38C4
|11C9E9| db $05 ; Raw block
|11C9EA| db $CA, $30, $37, $C0, $11, $E6
|11C9F0| db $29 ; Repeat byte
|11C9F1| db $00
|11C9F2| db $04 ; Raw block
|11C9F3| db $40, $00, $E0, $00, $40
|11C9F8| db $22 ; Repeat byte
|11C9F9| db $00
|11C9FA| db $04 ; Raw block
|11C9FB| db $60, $00, $70, $00, $60
|11CA00| db $28 ; Repeat byte
|11CA01| db $00
|11CA02| db $11 ; Raw block
|11CA03| db $5B, $C3, $6E, $EF, $BE, $7F, $DD, $3E
|11CA0B| db $C0, $3F, $BF, $7F, $82, $43, $A6, $67
|11CA13| db $3C, $10
|11CA15| db $23 ; Repeat byte
|11CA16| db $00
|11CA17| db $11 ; Raw block
|11CA18| db $3C, $18, $70, $8F, $4F, $B0, $B9, $7F
|11CA20| db $5F, $DF, $F0, $F0, $8F, $8F, $00, $FF
|11CA28| db $7F, $80
|11CA2A| db $22 ; Repeat byte
|11CA2B| db $00
|11CA2C| db $02 ; Raw block
|11CA2D| db $20, $0F, $70
|11CA30| db $22 ; Repeat byte
|11CA31| db $00
|11CA32| db $0F ; Raw block
|11CA33| db $7F, $3F, $C0, $4C, $BF, $D7, $3F, $F6
|11CA3B| db $7F, $C7, $47, $80, $38, $FF, $00, $80
|11CA43| db $23 ; Repeat byte
|11CA44| db $00
|11CA45| db $11 ; Raw block
|11CA46| db $38, $47, $00, $87, $78, $CF, $30, $78
|11CA4E| db $87, $14, $EF, $5A, $E7, $BD, $C3, $FE
|11CA56| db $01, $FF
|11CA58| db $28 ; Repeat byte
|11CA59| db $00
|11CA5A| db $0B ; Raw block
|11CA5B| db $C6, $39, $66, $99, $BF, $C0, $3F, $C0
|11CA63| db $6E, $91, $D6, $39
|11CA67| db $43 ; Repeat word
|11CA68| dw $3CCB
|11CA6A| db $27 ; Repeat byte
|11CA6B| db $00
|11CA6C| db $05 ; Raw block
|11CA6D| db $59, $E7, $2C, $73, $3C, $33
|11CA73| db $43 ; Repeat word
|11CA74| dw $395E
|11CA76| db $07 ; Raw block
|11CA77| db $BD, $73, $BB, $77, $58, $C7, $00, $80
|11CA7F| db $22 ; Repeat byte
|11CA80| db $C0
|11CA81| db $13 ; Raw block
|11CA82| db $80, $80, $20, $1D, $43, $F5, $EB, $92
|11CA8A| db $ED, $7A, $87, $3A, $C7, $8B, $B7, $C9
|11CA92| db $D7, $DD, $D3, $A0
|11CA96| db $23 ; Repeat byte
|11CA97| db $00
|11CA98| db $12 ; Raw block
|11CA99| db $40, $20, $20, $6D, $73, $7C, $73, $74
|11CAA1| db $7B, $A6, $A9, $C7, $D8, $8D, $B2, $8C
|11CAA9| db $F3, $1E, $E9
|11CAAC| db $22 ; Repeat byte
|11CAAD| db $80
|11CAAE| db $04 ; Raw block
|11CAAF| db $50, $20, $40, $00, $00
|11CAB4| db $45 ; Repeat word
|11CAB5| dw $302F
|11CAB7| db $09 ; Raw block
|11CAB8| db $6F, $70, $EF, $F0, $E7, $F8, $E0, $FF
|11CAC0| db $C1, $FF
|11CAC2| db $22 ; Repeat byte
|11CAC3| db $C0
|11CAC4| db $00 ; Raw block
|11CAC5| db $80
|11CAC6| db $23 ; Repeat byte
|11CAC7| db $00
|11CAC8| db $17 ; Raw block
|11CAC9| db $B1, $F2, $DD, $FE, $83, $BC, $06, $D9
|11CAD1| db $0E, $F1, $67, $F8, $63, $EC, $11, $D6
|11CAD9| db $0C, $00, $40, $20, $00, $00, $10, $28
|11CAE1| db $47 ; Repeat word
|11CAE2| dw $F0EF
|11CAE4| db $07 ; Raw block
|11CAE5| db $CF, $D0, $AF, $B0, $DF, $E0, $2F, $D0
|11CAED| db $23 ; Repeat byte
|11CAEE| db $00
|11CAEF| db $02 ; Raw block
|11CAF0| db $20, $40, $00
|11CAF3| db $44 ; Repeat word
|11CAF4| dw $FF00
|11CAF6| db $0B ; Raw block
|11CAF7| db $EE, $11, $B7, $48, $E2, $1D, $BD, $4B
|11CAFF| db $CA, $35, $9F, $7B
|11CB03| db $27 ; Repeat byte
|11CB04| db $00
|11CB05| db $0F ; Raw block
|11CB06| db $FE, $01, $EB, $15, $FC, $03, $D5, $2B
|11CB0E| db $E7, $1D, $F6, $09, $FB, $05, $D7, $2D
|11CB16| db $27 ; Repeat byte
|11CB17| db $00
|11CB18| db $06 ; Raw block
|11CB19| db $04, $00, $EE, $00, $E4, $00, $40
|11CB20| db $30 ; Repeat byte
|11CB21| db $00
|11CB22| db $0E ; Raw block
|11CB23| db $3F, $C0, $73, $8C, $F3, $0C, $FF, $00
|11CB2B| db $93, $60, $90, $60, $F8, $00, $F8
|11CB32| db $28 ; Repeat byte
|11CB33| db $00
|11CB34| db $43 ; Repeat word
|11CB35| dw $CC22
|11CB37| db $00 ; Raw block
|11CB38| db $CC
|11CB39| db $22 ; Repeat byte
|11CB3A| db $00
|11CB3B| db $04 ; Raw block
|11CB3C| db $10, $60, $90, $60, $60
|11CB41| db $2A ; Repeat byte
|11CB42| db $00
|11CB43| db $0F ; Raw block
|11CB44| db $DE, $3F, $E9, $1E, $DE, $21, $CF, $2F
|11CB4C| db $D6, $37, $E1, $5E, $BF, $60, $DF, $3F
|11CB54| db $22 ; Repeat byte
|11CB55| db $00
|11CB56| db $01 ; Raw block
|11CB57| db $10, $08
|11CB59| db $22 ; Repeat byte
|11CB5A| db $00
|11CB5B| db $12 ; Raw block
|11CB5C| db $BE, $7F, $63, $E3, $9C, $9C, $1C, $E3
|11CB64| db $E3, $1C, $7F, $FF, $92, $F2, $E0, $1F
|11CB6C| db $00, $1C, $63
|11CB6F| db $22 ; Repeat byte
|11CB70| db $00
|11CB71| db $0B ; Raw block
|11CB72| db $0D, $00, $C2, $3D, $D8, $3F, $A7, $7F
|11CB7A| db $D8, $67, $BF, $40
|11CB7E| db $44 ; Repeat word
|11CB7F| dw $00FF
|11CB81| db $28 ; Repeat byte
|11CB82| db $00
|11CB83| db $FF ; End of GFX 03

;===================================================================================================

GFX_04:
|11CB84| db $0F ; Raw block
|11CB85| db $A0, $37, $A7, $2F, $AF, $3F, $AE, $3E
|11CB8D| db $9C, $1C, $81, $01, $C3, $02, $FF, $00
|11CB95| db $25 ; Repeat byte
|11CB96| db $7F
|11CB97| db $02 ; Raw block
|11CB98| db $3E, $00, $00
|11CB9B| db $22 ; Repeat byte
|11CB9C| db $FF
|11CB9D| db $0B ; Raw block
|11CB9E| db $FC, $FC, $7E, $7E, $3C, $3C, $80, $80
|11CBA6| db $C0, $40, $FF, $00
|11CBAA| db $25 ; Repeat byte
|11CBAB| db $FF
|11CBAC| db $00 ; Raw block
|11CBAD| db $7F
|11CBAE| db $44 ; Repeat word
|11CBAF| dw $FF00
|11CBB1| db $03 ; Raw block
|11CBB2| db $31, $31, $EC, $EC
|11CBB6| db $22 ; Repeat byte
|11CBB7| db $FF
|11CBB8| db $0C ; Raw block
|11CBB9| db $00, $FF, $00, $3F, $3F, $FF, $FF, $CE
|11CBC1| db $13, $00, $FF, $FF, $C0
|11CBC6| db $43 ; Repeat word
|11CBC7| dw $00FF
|11CBC9| db $03 ; Raw block
|11CBCA| db $86, $86, $41, $41
|11CBCE| db $22 ; Repeat byte
|11CBCF| db $FF
|11CBD0| db $02 ; Raw block
|11CBD1| db $00, $FF, $00
|11CBD4| db $23 ; Repeat byte
|11CBD5| db $FF
|11CBD6| db $14 ; Raw block
|11CBD7| db $79, $BE, $00, $FF, $FF, $00, $C3, $7F
|11CBDF| db $E0, $7F, $F0, $3F, $BC, $5F, $BF, $6F
|11CBE7| db $9F, $77, $8F, $78, $C7
|11CBEC| db $22 ; Repeat byte
|11CBED| db $7F
|11CBEE| db $05 ; Raw block
|11CBEF| db $3F, $5F, $6F, $77, $78, $7F
|11CBF5| db $37 ; Repeat byte
|11CBF6| db $00
|11CBF7| db $01 ; Raw block
|11CBF8| db $FF, $7F
|11CBFA| db $4D ; Repeat word
|11CBFB| dw $40FF
|11CBFD| db $27 ; Repeat byte
|11CBFE| db $7F
|11CBFF| db $22 ; Repeat byte
|11CC00| db $FF
|11CC01| db $4C ; Repeat word
|11CC02| dw $FF00
|11CC04| db $27 ; Repeat byte
|11CC05| db $FF
|11CC06| db $09 ; Raw block
|11CC07| db $0F, $F0, $38, $C0, $60, $87, $44, $8C
|11CC0F| db $8A, $5B
|11CC11| db $43 ; Repeat word
|11CC12| dw $5684
|11CC14| db $1C ; Raw block
|11CC15| db $8A, $5B, $00, $07, $18, $33, $24, $29
|11CC1D| db $29, $24, $C4, $0C, $A0, $47, $98, $60
|11CC25| db $8F, $78, $C9, $3F, $69, $9F, $39, $C7
|11CC2D| db $0F, $F0, $33, $18, $07
|11CC32| db $24 ; Repeat byte
|11CC33| db $00
|11CC34| db $1E ; Raw block
|11CC35| db $80, $C0, $1F, $9F, $3E, $BE, $3D, $BD
|11CC3D| db $38, $B9, $11, $B0, $19, $B8, $BD, $3C
|11CC45| db $3F, $60, $41, $42, $46, $4E, $46, $42
|11CC4D| db $00, $00, $BF, $FF, $00, $00, $FF
|11CC54| db $48 ; Repeat word
|11CC55| dw $00FF
|11CC57| db $02 ; Raw block
|11CC58| db $FF, $00, $FF
|11CC5B| db $E4, $34 ; EXT Repeat byte
|11CC5D| db $00
|11CC5E| db $01 ; Raw block
|11CC5F| db $9D, $1C
|11CC61| db $43 ; Repeat word
|11CC62| dw $3CBD
|11CC64| db $01 ; Raw block
|11CC65| db $99, $18
|11CC67| db $83 ; Copy past
|11CC68| dw $0154
|11CC6A| db $83 ; Copy past
|11CC6B| dw $0154
|11CC6D| db $01 ; Raw block
|11CC6E| db $62, $42
|11CC70| db $45 ; Repeat word
|11CC71| dw $6642
|11CC73| db $45 ; Repeat word
|11CC74| dw $C057
|11CC76| db $05 ; Raw block
|11CC77| db $77, $F0, $3F, $C8, $1F, $80
|11CC7D| db $43 ; Repeat word
|11CC7E| dw $C057
|11CC80| db $22 ; Repeat byte
|11CC81| db $38
|11CC82| db $04 ; Raw block
|11CC83| db $08, $30, $78, $38, $38
|11CC88| db $43 ; Repeat word
|11CC89| dw $2F4E
|11CC8B| db $0D ; Raw block
|11CC8C| db $56, $37, $46, $37, $26, $17, $16, $07
|11CC94| db $0E, $0F, $0E, $2F, $10, $10
|11CC9A| db $23 ; Repeat byte
|11CC9B| db $08
|11CC9C| db $01 ; Raw block
|11CC9D| db $10, $10
|11CC9F| db $4F ; Repeat word
|11CCA0| dw $00FF
|11CCA2| db $27 ; Repeat byte
|11CCA3| db $FF
|11CCA4| db $0A ; Raw block
|11CCA5| db $AB, $EC, $57, $B7, $28, $D8, $18, $E7
|11CCAD| db $FF, $00, $FF
|11CCB0| db $44 ; Repeat word
|11CCB1| dw $00FF
|11CCB3| db $02 ; Raw block
|11CCB4| db $10, $08, $07
|11CCB7| db $24 ; Repeat byte
|11CCB8| db $00
|11CCB9| db $05 ; Raw block
|11CCBA| db $FF, $A2, $5D, $FF, $A2, $A2
|11CCC0| db $84 ; Copy past
|11CCC1| dw $010D
|11CCC3| db $44 ; Repeat word
|11CCC4| dw $807F
|11CCC6| db $02 ; Raw block
|11CCC7| db $00, $00, $5D
|11CCCA| db $24 ; Repeat byte
|11CCCB| db $00
|11CCCC| db $83 ; Copy past
|11CCCD| dw $0062
|11CCCF| db $13 ; Raw block
|11CCD0| db $B8, $1F, $9F, $07, $C7, $40, $E0, $20
|11CCD8| db $F8, $18, $FF, $00, $7F, $3F, $5F, $67
|11CCE0| db $78, $3F, $1F, $00
|11CCE4| db $4F ; Repeat word
|11CCE5| dw $5EC3
|11CCE7| db $27 ; Repeat byte
|11CCE8| db $7E
|11CCE9| db $4A ; Repeat word
|11CCEA| dw $40FF
|11CCEC| db $00 ; Raw block
|11CCED| db $7F
|11CCEE| db $43 ; Repeat word
|11CCEF| dw $00FF
|11CCF1| db $26 ; Repeat byte
|11CCF2| db $7F
|11CCF3| db $4A ; Repeat word
|11CCF4| dw $FF00
|11CCF6| db $22 ; Repeat byte
|11CCF7| db $FF
|11CCF8| db $02 ; Raw block
|11CCF9| db $00, $FF, $00
|11CCFC| db $26 ; Repeat byte
|11CCFD| db $FF
|11CCFE| db $04 ; Raw block
|11CCFF| db $00, $1D, $17, $0D, $F7
|11CD04| db $43 ; Repeat word
|11CD05| dw $FB06
|11CD07| db $08 ; Raw block
|11CD08| db $FE, $03, $FA, $FC, $03, $FC, $00, $FF
|11CD10| db $E0
|11CD11| db $23 ; Repeat byte
|11CD12| db $00
|11CD13| db $0C ; Raw block
|11CD14| db $01, $00, $00, $C6, $48, $DC, $05, $EC
|11CD1C| db $80, $F7, $80, $00, $7F
|11CD21| db $22 ; Repeat byte
|11CD22| db $FF
|11CD23| db $07 ; Raw block
|11CD24| db $00, $00, $FF, $39, $23, $13, $08, $80
|11CD2C| db $22 ; Repeat byte
|11CD2D| db $00
|11CD2E| db $02 ; Raw block
|11CD2F| db $9D, $1C, $B1
|11CD32| db $84 ; Copy past
|11CD33| dw $0153
|11CD35| db $01 ; Raw block
|11CD36| db $E7, $00
|11CD38| db $43 ; Repeat word
|11CD39| dw $7EC3
|11CD3B| db $01 ; Raw block
|11CD3C| db $C1, $7E
|11CD3E| db $83 ; Copy past
|11CD3F| dw $0160
|11CD41| db $00 ; Raw block
|11CD42| db $7E
|11CD43| db $E4, $4A ; EXT Repeat byte
|11CD45| db $00
|11CD46| db $43 ; Repeat word
|11CD47| dw $C057
|11CD49| db $12 ; Raw block
|11CD4A| db $73, $E4, $69, $E2, $74, $F1, $32, $F0
|11CD52| db $39, $F8, $9F, $7F, $38, $38, $18, $1C
|11CD5A| db $0E, $0F, $07
|11CD5D| db $4A ; Repeat word
|11CD5E| dw $FF00
|11CD60| db $05 ; Raw block
|11CD61| db $6F, $00, $C7, $00, $F7, $FC
|11CD67| db $23 ; Repeat byte
|11CD68| db $00
|11CD69| db $0D ; Raw block
|11CD6A| db $30, $F8, $FF, $03, $83, $00, $24, $C3
|11CD72| db $00, $FF, $24, $3C, $C3, $C3
|11CD78| db $23 ; Repeat byte
|11CD79| db $FF
|11CD7A| db $01 ; Raw block
|11CD7B| db $00, $FF
|11CD7D| db $22 ; Repeat byte
|11CD7E| db $00
|11CD7F| db $01 ; Raw block
|11CD80| db $C3, $3C
|11CD82| db $3A ; Repeat byte
|11CD83| db $00
|11CD84| db $0F ; Raw block
|11CD85| db $38, $07, $3F, $0D, $3F, $18, $1F, $30
|11CD8D| db $2F, $38, $37, $2D, $5A, $47, $0F, $D5
|11CD95| db $25 ; Repeat byte
|11CD96| db $C0
|11CD97| db $11 ; Raw block
|11CD98| db $A0, $20, $E3, $1C, $FF, $B6, $FF, $E3
|11CDA0| db $FF, $41, $BE, $E3, $5D, $B6, $EB, $1C
|11CDA8| db $FF, $14
|11CDAA| db $27 ; Repeat byte
|11CDAB| db $00
|11CDAC| db $08 ; Raw block
|11CDAD| db $2F, $16, $27, $1B, $73, $3C, $F8, $5F
|11CDB5| db $BC
|11CDB6| db $83 ; Copy past
|11CDB7| dw $0069
|11CDB9| db $16 ; Raw block
|11CDBA| db $7B, $C7, $7C, $D6, $DB, $BC, $5F, $6F
|11CDC2| db $77, $7B, $7C, $C1, $5E, $C0, $5F, $C0
|11CDCA| db $6F, $E0, $70, $70, $BF, $3F, $DF
|11CDD1| db $43 ; Repeat word
|11CDD2| dw $C03F
|11CDD4| db $00 ; Raw block
|11CDD5| db $7E
|11CDD6| db $22 ; Repeat byte
|11CDD7| db $7F
|11CDD8| db $22 ; Repeat byte
|11CDD9| db $FF
|11CDDA| db $02 ; Raw block
|11CDDB| db $C0, $FF, $00
|11CDDE| db $44 ; Repeat word
|11CDDF| dw $FF00
|11CDE1| db $09 ; Raw block
|11CDE2| db $00, $07, $FC, $FE, $FA, $FC, $01, $FC
|11CDEA| db $03, $00
|11CDEC| db $25 ; Repeat byte
|11CDED| db $FF
|11CDEE| db $00 ; Raw block
|11CDEF| db $03
|11CDF0| db $37 ; Repeat byte
|11CDF1| db $00
|11CDF2| db $00 ; Raw block
|11CDF3| db $10
|11CDF4| db $43 ; Repeat word
|11CDF5| dw $1CF0
|11CDF7| db $02 ; Raw block
|11CDF8| db $EB, $18, $EC
|11CDFB| db $43 ; Repeat word
|11CDFC| dw $EE1B
|11CDFE| db $07 ; Raw block
|11CDFF| db $0D, $F7, $0D, $17, $EF, $EF, $E0, $E3
|11CE07| db $23 ; Repeat byte
|11CE08| db $E0
|11CE09| db $24 ; Repeat byte
|11CE0A| db $00
|11CE0B| db $22 ; Repeat byte
|11CE0C| db $FF
|11CE0D| db $07 ; Raw block
|11CE0E| db $FD, $1D, $FC, $3C, $FD, $3D, $D7, $59
|11CE16| db $83 ; Copy past
|11CE17| dw $0263
|11CE19| db $03 ; Raw block
|11CE1A| db $1F, $3F, $3F, $38
|11CE1E| db $43 ; Repeat word
|11CE1F| dw $7E81
|11CE21| db $02 ; Raw block
|11CE22| db $FF, $00, $FF
|11CE25| db $44 ; Repeat word
|11CE26| dw $C13E
|11CE28| db $83 ; Copy past
|11CE29| dw $03F4
|11CE2B| db $27 ; Repeat byte
|11CE2C| db $00
|11CE2D| db $0B ; Raw block
|11CE2E| db $FF, $00, $C0, $68, $C0, $57, $88, $6F
|11CE36| db $C7, $58, $CF, $43
|11CE3A| db $43 ; Repeat word
|11CE3B| dw $47CF
|11CE3D| db $08 ; Raw block
|11CE3E| db $00, $37, $3B, $10, $20, $33, $37, $37
|11CE46| db $FF
|11CE47| db $23 ; Repeat byte
|11CE48| db $00
|11CE49| db $85 ; Copy past
|11CE4A| dw $0115
|11CE4C| db $00 ; Raw block
|11CE4D| db $FC
|11CE4E| db $43 ; Repeat word
|11CE4F| dw $F8FF
|11CE51| db $83 ; Copy past
|11CE52| dw $005C
|11CE54| db $03 ; Raw block
|11CE55| db $00, $FD, $FB, $FB
|11CE59| db $37 ; Repeat byte
|11CE5A| db $00
|11CE5B| db $07 ; Raw block
|11CE5C| db $8E, $7F, $C0, $3F, $E1, $1E, $F8, $07
|11CE64| db $43 ; Repeat word
|11CE65| dw $00FF
|11CE67| db $22 ; Repeat byte
|11CE68| db $FF
|11CE69| db $28 ; Repeat byte
|11CE6A| db $00
|11CE6B| db $0B ; Raw block
|11CE6C| db $32, $FE, $19, $7F, $44, $BF, $80, $7F
|11CE74| db $FC, $03, $FF, $00
|11CE78| db $22 ; Repeat byte
|11CE79| db $FF
|11CE7A| db $02 ; Raw block
|11CE7B| db $00, $01, $80
|11CE7E| db $E4, $39 ; EXT Repeat byte
|11CE80| db $00
|11CE81| db $22 ; Repeat byte
|11CE82| db $FF
|11CE83| db $24 ; Repeat byte
|11CE84| db $00
|11CE85| db $22 ; Repeat byte
|11CE86| db $FF
|11CE87| db $84 ; Copy past
|11CE88| dw $0430
|11CE8A| db $83 ; Copy past
|11CE8B| dw $0263
|11CE8D| db $10 ; Raw block
|11CE8E| db $83, $82, $7D, $7C, $5D, $5C, $75, $74
|11CE96| db $5D, $5C, $7D, $7C, $83, $82, $FF, $00
|11CE9E| db $7C
|11CE9F| db $24 ; Repeat byte
|11CEA0| db $FE
|11CEA1| db $00 ; Raw block
|11CEA2| db $7C
|11CEA3| db $E4, $60 ; EXT Repeat byte
|11CEA5| db $00
|11CEA6| db $19 ; Raw block
|11CEA7| db $FF, $00, $F9, $07, $E3, $1E, $CE, $3C
|11CEAF| db $9C, $79, $38, $F3, $31, $E6, $53, $C4
|11CEB7| db $00, $00, $01, $03, $06, $0C, $18, $38
|11CEBF| db $FF, $00
|11CEC1| db $22 ; Repeat byte
|11CEC2| db $FF
|11CEC3| db $00 ; Raw block
|11CEC4| db $00
|11CEC5| db $43 ; Repeat word
|11CEC6| dw $FF00
|11CEC8| db $44 ; Repeat word
|11CEC9| dw $00FF
|11CECB| db $22 ; Repeat byte
|11CECC| db $00
|11CECD| db $00 ; Raw block
|11CECE| db $FF
|11CECF| db $24 ; Repeat byte
|11CED0| db $00
|11CED1| db $0B ; Raw block
|11CED2| db $C1, $3E, $E1, $1E, $7F, $80, $7F, $9E
|11CEDA| db $21, $DE, $1F, $E0
|11CEDE| db $22 ; Repeat byte
|11CEDF| db $FF
|11CEE0| db $28 ; Repeat byte
|11CEE1| db $00
|11CEE2| db $44 ; Repeat word
|11CEE3| dw $47CF
|11CEE5| db $03 ; Raw block
|11CEE6| db $46, $CE, $44, $CD
|11CEEA| db $43 ; Repeat word
|11CEEB| dw $CF40
|11CEED| db $E0, $22 ; EXT Raw block
|11CEEF| db $47, $CF, $47, $37, $37, $36, $35, $32
|11CEF7| db $30, $37, $37, $66, $99, $A5, $5A, $A5
|11CEFF| db $00, $18, $24, $C3, $18, $E7, $00, $E7
|11CF07| db $DB, $FF, $E7, $18, $18, $5A, $E7, $3C
|11CF0F| db $18, $C3, $E7
|11CF12| db $44 ; Repeat word
|11CF13| dw $F8FF
|11CF15| db $10 ; Raw block
|11CF16| db $78, $7F, $38, $3F, $98, $FF, $3C, $FF
|11CF1E| db $FC, $FF, $FE, $FB, $FB, $7B, $BB, $5B
|11CF26| db $3D
|11CF27| db $62 ; Increment fill
|11CF28| db $FD
|11CF29| db $0D ; Raw block
|11CF2A| db $40, $E0, $3F, $BE, $41, $82, $7D, $C2
|11CF32| db $7D, $BE, $7D, $C0, $3F, $FF
|11CF38| db $28 ; Repeat byte
|11CF39| db $00
|11CF3A| db $83 ; Copy past
|11CF3B| dw $010B
|11CF3D| db $01 ; Raw block
|11CF3E| db $7E, $81
|11CF40| db $43 ; Repeat word
|11CF41| dw $BD42
|11CF43| db $04 ; Raw block
|11CF44| db $7E, $BD, $00, $FF, $FF
|11CF49| db $28 ; Repeat byte
|11CF4A| db $00
|11CF4B| db $FF ; End of GFX 04

;===================================================================================================

GFX_05:
|11CF4C| db $43 ; Repeat word
|11CF4D| dw $00FF
|11CF4F| db $0E ; Raw block
|11CF50| db $70, $80, $7F, $88, $0F, $88, $03, $8C
|11CF58| db $04, $88, $05, $49, $FF, $FF, $7F
|11CF5F| db $23 ; Repeat byte
|11CF60| db $77
|11CF61| db $04 ; Raw block
|11CF62| db $B6, $C0, $3E, $F0, $01
|11CF67| db $43 ; Repeat word
|11CF68| dw $00F0
|11CF6A| db $E0, $22 ; EXT Raw block
|11CF6C| db $D8, $1F, $DB, $04, $DC, $00, $DD, $01
|11CF74| db $C1, $FE, $FF, $FF, $E0, $FF, $FF, $FE
|11CF7C| db $FF, $00, $FF, $7B, $84, $00, $FF, $71
|11CF84| db $CA, $75, $CE, $75, $EE, $71, $B0, $7F
|11CF8C| db $00, $00, $7B
|11CF8F| db $24 ; Repeat byte
|11CF90| db $00
|11CF91| db $08 ; Raw block
|11CF92| db $FF, $00, $FF, $FF, $08, $14, $FF, $EB
|11CF9A| db $DC
|11CF9B| db $43 ; Repeat word
|11CF9C| dw $1CE3
|11CF9E| db $1A ; Raw block
|11CF9F| db $EB, $1C, $E3, $00, $00, $E3, $08, $08
|11CFA7| db $00, $08, $08, $F1, $3F, $62, $BF, $70
|11CFAF| db $BF, $50, $BF, $D8, $3F, $70, $9F, $60
|11CFB7| db $9F, $7F, $80
|11CFBA| db $27 ; Repeat byte
|11CFBB| db $00
|11CFBC| db $11 ; Raw block
|11CFBD| db $1C, $E3, $7F, $80, $7F, $A2, $7F, $BE
|11CFC5| db $41, $BE, $7F, $80, $00, $FF, $FF, $00
|11CFCD| db $08, $08
|11CFCF| db $25 ; Repeat byte
|11CFD0| db $00
|11CFD1| db $13 ; Raw block
|11CFD2| db $0B, $F2, $0D, $F0, $13, $E9, $15, $E6
|11CFDA| db $1E, $E9, $1C, $EB, $0E, $F5, $FF, $00
|11CFE2| db $04, $02, $04, $08
|11CFE6| db $23 ; Repeat byte
|11CFE7| db $00
|11CFE8| db $12 ; Raw block
|11CFE9| db $3F, $C0, $40, $A0, $87, $47, $8F, $4F
|11CFF1| db $8C, $4F, $8B, $4F, $AB, $6F, $8A, $6F
|11CFF9| db $00, $1F, $38
|11CFFC| db $22 ; Repeat byte
|11CFFD| db $30
|11CFFE| db $16 ; Raw block
|11CFFF| db $10, $10, $C7, $38, $38, $44, $01, $39
|11D007| db $83, $83, $46, $C7, $BD, $FF, $C3, $FF
|11D00F| db $7E, $FF, $00, $83, $C6, $7C, $38
|11D016| db $22 ; Repeat byte
|11D017| db $00
|11D018| db $00 ; Raw block
|11D019| db $AD
|11D01A| db $44 ; Repeat word
|11D01B| dw $8B6F
|11D01D| db $09 ; Raw block
|11D01E| db $8C, $4F, $8F, $4F, $A6, $66, $90, $70
|11D026| db $89, $79
|11D028| db $22 ; Repeat byte
|11D029| db $10
|11D02A| db $14 ; Raw block
|11D02B| db $30, $30, $19, $0F, $06, $FE, $FF, $C3
|11D033| db $FF, $3D, $FF, $FE, $FF, $07, $07, $73
|11D03B| db $73, $89, $F9, $04, $FC
|11D040| db $23 ; Repeat byte
|11D041| db $00
|11D042| db $1B ; Raw block
|11D043| db $F8, $8C, $06, $03, $CF, $41, $C3, $5A
|11D04B| db $C7, $74, $88, $6C, $90, $18, $B0, $3F
|11D053| db $EF, $77, $FF, $00, $31, $2C, $18, $33
|11D05B| db $67, $47, $00, $00
|11D05F| db $24 ; Repeat byte
|11D060| db $FF
|11D061| db $25 ; Repeat byte
|11D062| db $00
|11D063| db $23 ; Repeat byte
|11D064| db $FF
|11D065| db $83 ; Copy past
|11D066| dw $0084
|11D068| db $22 ; Repeat byte
|11D069| db $FF
|11D06A| db $00 ; Raw block
|11D06B| db $00
|11D06C| db $43 ; Repeat word
|11D06D| dw $FF00
|11D06F| db $19 ; Raw block
|11D070| db $C0, $FF, $00, $08, $1F, $24, $2F, $10
|11D078| db $D2, $ED, $FF, $FF, $00, $3F, $CF, $00
|11D080| db $F1, $D9, $ED, $00, $00, $C3, $00, $E3
|11D088| db $00, $F3
|11D08A| db $44 ; Repeat word
|11D08B| dw $FB00
|11D08D| db $05 ; Raw block
|11D08E| db $F3, $00, $E3, $00, $C3, $00
|11D094| db $27 ; Repeat byte
|11D095| db $7E
|11D096| db $02 ; Raw block
|11D097| db $FF, $00, $81
|11D09A| db $44 ; Repeat word
|11D09B| dw $FF00
|11D09D| db $08 ; Raw block
|11D09E| db $DF, $00, $CF, $00, $C7, $00, $C3, $00
|11D0A6| db $00
|11D0A7| db $26 ; Repeat byte
|11D0A8| db $7E
|11D0A9| db $E0, $2F ; EXT Raw block
|11D0AB| db $41, $B9, $28, $C4, $00, $EF, $15, $ED
|11D0B3| db $14, $EC, $06, $FE, $0D, $FD, $00, $04
|11D0BB| db $C6, $F3, $F0, $F2, $F3, $F1, $F2, $FB
|11D0C3| db $00, $FE, $80, $7E, $40, $BE, $18, $86
|11D0CB| db $42, $BE, $1E, $7F, $04, $24, $92, $B2
|11D0D3| db $FF, $FF, $7F, $7F, $01, $80, $DB, $4D
|11D0DB| db $84 ; Copy past
|11D0DC| dw $012E
|11D0DE| db $0D ; Raw block
|11D0DF| db $00, $FF, $EF, $28, $D7, $34, $DB, $AA
|11D0E7| db $CD, $95, $E6, $00, $00, $FF
|11D0ED| db $22 ; Repeat byte
|11D0EE| db $00
|11D0EF| db $01 ; Raw block
|11D0F0| db $10, $08
|11D0F2| db $43 ; Repeat word
|11D0F3| dw $00FF
|11D0F5| db $09 ; Raw block
|11D0F6| db $81, $81, $7F, $71, $1A, $11, $CF, $C1
|11D0FE| db $04, $FB
|11D100| db $83 ; Copy past
|11D101| dw $0048
|11D103| db $17 ; Raw block
|11D104| db $7E, $80, $E4, $30, $00, $FB, $A7, $68
|11D10C| db $B0, $70, $BB, $7F, $D1, $3F, $A0, $5F
|11D114| db $DF, $60, $BF, $20, $FF, $00, $10, $0F
|11D11C| db $23 ; Repeat byte
|11D11D| db $00
|11D11E| db $02 ; Raw block
|11D11F| db $40, $00, $FF
|11D122| db $22 ; Repeat byte
|11D123| db $00
|11D124| db $05 ; Raw block
|11D125| db $E7, $FF, $C3, $FF, $00, $FF
|11D12B| db $45 ; Repeat word
|11D12C| dw $00FF
|11D12E| db $01 ; Raw block
|11D12F| db $00, $FF
|11D131| db $3D ; Repeat byte
|11D132| db $00
|11D133| db $03 ; Raw block
|11D134| db $8A, $4F, $96, $1F
|11D138| db $45 ; Repeat word
|11D139| dw $3FAD
|11D13B| db $07 ; Raw block
|11D13C| db $B6, $3F, $9A, $1F, $CD, $4F, $30, $60
|11D144| db $23 ; Repeat byte
|11D145| db $40
|11D146| db $07 ; Raw block
|11D147| db $60, $30, $BD, $FF, $C2, $FF, $7D, $FE
|11D14F| db $43 ; Repeat word
|11D150| dw $FC1B
|11D152| db $05 ; Raw block
|11D153| db $7D, $FE, $C2, $FF, $3D, $FF
|11D159| db $27 ; Repeat byte
|11D15A| db $00
|11D15B| db $07 ; Raw block
|11D15C| db $80, $7F, $C0, $3F, $E0, $1F, $FF, $00
|11D164| db $43 ; Repeat word
|11D165| dw $0FF7
|11D167| db $03 ; Raw block
|11D168| db $78, $87, $3F, $C0
|11D16C| db $27 ; Repeat byte
|11D16D| db $00
|11D16E| db $0E ; Raw block
|11D16F| db $03, $FF, $30, $CF, $58, $A7, $9C, $63
|11D177| db $DF, $E0, $9F, $E0, $3F, $C0, $FF
|11D17E| db $E4, $50 ; EXT Repeat byte
|11D180| db $00
|11D181| db $10 ; Raw block
|11D182| db $E2, $01, $F1, $00, $F8, $00, $BC, $00
|11D18A| db $DF, $40, $FF, $7F, $FF, $3F, $FF, $00
|11D192| db $7E
|11D193| db $22 ; Repeat byte
|11D194| db $7F
|11D195| db $00 ; Raw block
|11D196| db $3F
|11D197| db $23 ; Repeat byte
|11D198| db $00
|11D199| db $08 ; Raw block
|11D19A| db $FF, $FF, $00, $38, $00, $7C, $00, $FF
|11D1A2| db $00
|11D1A3| db $24 ; Repeat byte
|11D1A4| db $FF
|11D1A5| db $01 ; Raw block
|11D1A6| db $00, $00
|11D1A8| db $23 ; Repeat byte
|11D1A9| db $FF
|11D1AA| db $22 ; Repeat byte
|11D1AB| db $00
|11D1AC| db $07 ; Raw block
|11D1AD| db $3F, $C0, $57, $B7, $A8, $6F, $A7, $68
|11D1B5| db $43 ; Repeat word
|11D1B6| dw $67AF
|11D1B8| db $43 ; Repeat word
|11D1B9| dw $67AC
|11D1BB| db $03 ; Raw block
|11D1BC| db $00, $08, $10, $10
|11D1C0| db $23 ; Repeat byte
|11D1C1| db $17
|11D1C2| db $86 ; Copy past
|11D1C3| dw $012E
|11D1C5| db $00 ; Raw block
|11D1C6| db $00
|11D1C7| db $23 ; Repeat byte
|11D1C8| db $FF
|11D1C9| db $43 ; Repeat word
|11D1CA| dw $FF00
|11D1CC| db $23 ; Repeat byte
|11D1CD| db $00
|11D1CE| db $23 ; Repeat byte
|11D1CF| db $FF
|11D1D0| db $4F ; Repeat word
|11D1D1| dw $67AC
|11D1D3| db $27 ; Repeat byte
|11D1D4| db $17
|11D1D5| db $4E ; Repeat word
|11D1D6| dw $FF00
|11D1D8| db $28 ; Repeat byte
|11D1D9| db $FF
|11D1DA| db $37 ; Repeat byte
|11D1DB| db $00
|11D1DC| db $25 ; Repeat byte
|11D1DD| db $FF
|11D1DE| db $00 ; Raw block
|11D1DF| db $00
|11D1E0| db $23 ; Repeat byte
|11D1E1| db $FF
|11D1E2| db $00 ; Raw block
|11D1E3| db $00
|11D1E4| db $28 ; Repeat byte
|11D1E5| db $FF
|11D1E6| db $83 ; Copy past
|11D1E7| dw $0084
|11D1E9| db $09 ; Raw block
|11D1EA| db $77, $55, $FF, $FF, $AA, $AA, $55, $AA
|11D1F2| db $BB, $AA
|11D1F4| db $43 ; Repeat word
|11D1F5| dw $FF55
|11D1F7| db $01 ; Raw block
|11D1F8| db $AA, $88
|11D1FA| db $22 ; Repeat byte
|11D1FB| db $00
|11D1FC| db $00 ; Raw block
|11D1FD| db $44
|11D1FE| db $22 ; Repeat byte
|11D1FF| db $00
|11D200| db $07 ; Raw block
|11D201| db $FC, $97, $C6, $6B, $FC, $96, $CE, $7B
|11D209| db $87 ; Copy past
|11D20A| dw $03A8
|11D20C| db $03 ; Raw block
|11D20D| db $00, $10, $01, $00
|11D211| db $83 ; Copy past
|11D212| dw $03B8
|11D214| db $14 ; Raw block
|11D215| db $FC, $96, $C4, $53, $FB, $94, $D7, $69
|11D21D| db $ED, $81, $F5, $2B, $FF, $8A, $FF, $D5
|11D225| db $01, $28, $00, $00, $12
|11D22A| db $22 ; Repeat byte
|11D22B| db $00
|11D22C| db $02 ; Raw block
|11D22D| db $FF, $FF, $DF
|11D230| db $26 ; Repeat byte
|11D231| db $FF
|11D232| db $00 ; Raw block
|11D233| db $FB
|11D234| db $24 ; Repeat byte
|11D235| db $FF
|11D236| db $27 ; Repeat byte
|11D237| db $00
|11D238| db $04 ; Raw block
|11D239| db $FF, $00, $BF, $3F, $E0
|11D23E| db $48 ; Repeat word
|11D23F| dw $C07F
|11D241| db $03 ; Raw block
|11D242| db $C7, $7F, $00, $40
|11D246| db $24 ; Repeat byte
|11D247| db $00
|11D248| db $03 ; Raw block
|11D249| db $07, $FF, $00, $FF
|11D24D| db $49 ; Repeat word
|11D24E| dw $00FF
|11D250| db $22 ; Repeat byte
|11D251| db $FF
|11D252| db $26 ; Repeat byte
|11D253| db $00
|11D254| db $0A ; Raw block
|11D255| db $FF, $CC, $7E, $C8, $7E, $CC, $7E, $CF
|11D25D| db $77, $C7, $78
|11D260| db $45 ; Repeat word
|11D261| dw $7FC0
|11D263| db $22 ; Repeat byte
|11D264| db $0F
|11D265| db $00 ; Raw block
|11D266| db $07
|11D267| db $23 ; Repeat byte
|11D268| db $00
|11D269| db $05 ; Raw block
|11D26A| db $E0, $E6, $00, $79, $58, $FB
|11D270| db $22 ; Repeat byte
|11D271| db $FF
|11D272| db $00 ; Raw block
|11D273| db $00
|11D274| db $44 ; Repeat word
|11D275| dw $FF00
|11D277| db $24 ; Repeat byte
|11D278| db $FF
|11D279| db $23 ; Repeat byte
|11D27A| db $00
|11D27B| db $05 ; Raw block
|11D27C| db $C0, $7F, $A0, $3F, $9F, $1F
|11D282| db $43 ; Repeat word
|11D283| dw $7F80
|11D285| db $08 ; Raw block
|11D286| db $FF, $00, $E0, $1F, $7F, $80, $00, $40
|11D28E| db $60
|11D28F| db $25 ; Repeat byte
|11D290| db $00
|11D291| db $01 ; Raw block
|11D292| db $FF, $00
|11D294| db $22 ; Repeat byte
|11D295| db $FF
|11D296| db $43 ; Repeat word
|11D297| dw $FF00
|11D299| db $44 ; Repeat word
|11D29A| dw $00FF
|11D29C| db $28 ; Repeat byte
|11D29D| db $00
|11D29E| db $0F ; Raw block
|11D29F| db $FF, $00, $FE, $7F, $FD, $7F, $FB, $7F
|11D2A7| db $87, $7F, $BF, $7F, $DF, $7F, $EF, $7F
|11D2AF| db $27 ; Repeat byte
|11D2B0| db $00
|11D2B1| db $17 ; Raw block
|11D2B2| db $FF, $00, $FF, $7E, $FF, $7D, $FE, $7B
|11D2BA| db $FC, $07, $F8, $3F, $F0, $5C, $F2, $6C
|11D2C2| db $00, $00, $01, $03, $07, $3F, $1F, $0D
|11D2CA| db $E5, $4F ; EXT Repeat byte
|11D2CC| db $00
|11D2CD| db $FF ; End of GFX 05

;===================================================================================================

GFX_06:
|11D2CE| db $38 ; Repeat byte
|11D2CF| db $FF
|11D2D0| db $4E ; Repeat word
|11D2D1| dw $FF00
|11D2D3| db $27 ; Repeat byte
|11D2D4| db $FF
|11D2D5| db $08 ; Raw block
|11D2D6| db $FE, $FF, $FC, $FF, $F9, $FF, $FC, $FF
|11D2DE| db $FE
|11D2DF| db $2E ; Repeat byte
|11D2E0| db $FF
|11D2E1| db $00 ; Raw block
|11D2E2| db $3C
|11D2E3| db $46 ; Repeat word
|11D2E4| dw $F9FF
|11D2E6| db $06 ; Raw block
|11D2E7| db $3C, $FF, $07, $FF, $C0, $FF, $F8
|11D2EE| db $35 ; Repeat byte
|11D2EF| db $FF
|11D2F0| db $02 ; Raw block
|11D2F1| db $00, $FF, $00
|11D2F4| db $25 ; Repeat byte
|11D2F5| db $FF
|11D2F6| db $0A ; Raw block
|11D2F7| db $00, $00, $FF, $FF, $F4, $FF, $E6, $FF
|11D2FF| db $CE, $FF, $FE
|11D302| db $23 ; Repeat byte
|11D303| db $FF
|11D304| db $02 ; Raw block
|11D305| db $7F, $FF, $7F
|11D308| db $25 ; Repeat byte
|11D309| db $FF
|11D30A| db $01 ; Raw block
|11D30B| db $7F, $7F
|11D30D| db $4F ; Repeat word
|11D30E| dw $00FF
|11D310| db $27 ; Repeat byte
|11D311| db $FF
|11D312| db $50 ; Repeat word
|11D313| dw $FF00
|11D315| db $01 ; Raw block
|11D316| db $3F, $60
|11D318| db $24 ; Repeat byte
|11D319| db $40
|11D31A| db $43 ; Repeat word
|11D31B| dw $FF00
|11D31D| db $07 ; Raw block
|11D31E| db $03, $FC, $07, $F8, $0F, $F0, $1F, $E0
|11D326| db $43 ; Repeat word
|11D327| dw $C03F
|11D329| db $07 ; Raw block
|11D32A| db $00, $3E, $63, $47, $4F, $5F, $7F, $3F
|11D332| db $38 ; Repeat byte
|11D333| db $FF
|11D334| db $04 ; Raw block
|11D335| db $00, $C0, $3F, $9F, $60
|11D33A| db $49 ; Repeat word
|11D33B| dw $40BF
|11D33D| db $02 ; Raw block
|11D33E| db $FF, $C0, $9F
|11D341| db $24 ; Repeat byte
|11D342| db $BF
|11D343| db $05 ; Raw block
|11D344| db $FF, $00, $03, $FC, $F9, $06
|11D34A| db $49 ; Repeat word
|11D34B| dw $02FD
|11D34D| db $02 ; Raw block
|11D34E| db $FF, $03, $F9
|11D351| db $24 ; Repeat byte
|11D352| db $FD
|11D353| db $0B ; Raw block
|11D354| db $06, $FB, $0F, $F6, $1F, $EF, $FB, $1B
|11D35C| db $FE, $FF, $16, $F7
|11D360| db $43 ; Repeat word
|11D361| dw $FF1F
|11D363| db $1F ; Raw block
|11D364| db $04, $09, $10, $E4, $00, $08, $00, $00
|11D36C| db $30, $DF, $E0, $3F, $E0, $FF, $F1, $EE
|11D374| db $7F, $F1, $FE, $FF, $DC, $FF, $F4, $F7
|11D37C| db $20, $C0, $00, $11, $0E, $00, $00, $08
|11D384| db $8B ; Copy past
|11D385| dw $0120
|11D387| db $43 ; Repeat word
|11D388| dw $FF1F
|11D38A| db $9F ; Copy past
|11D38B| dw $0130
|11D38D| db $02 ; Raw block
|11D38E| db $FF, $00, $FF
|11D391| db $48 ; Repeat word
|11D392| dw $C37E
|11D394| db $02 ; Raw block
|11D395| db $FF, $7E, $FF
|11D398| db $22 ; Repeat byte
|11D399| db $00
|11D39A| db $23 ; Repeat byte
|11D39B| db $3C
|11D39C| db $08 ; Raw block
|11D39D| db $00, $00, $FE, $FF, $CE, $FF, $E6, $FF
|11D3A5| db $F4
|11D3A6| db $22 ; Repeat byte
|11D3A7| db $FF
|11D3A8| db $04 ; Raw block
|11D3A9| db $F8, $FF, $C0, $FF, $07
|11D3AE| db $28 ; Repeat byte
|11D3AF| db $FF
|11D3B0| db $0B ; Raw block
|11D3B1| db $06, $FB, $0F, $F7, $10, $E7, $E0, $0F
|11D3B9| db $E0, $EF, $02, $ED
|11D3BD| db $43 ; Repeat word
|11D3BE| dw $EF00
|11D3C0| db $1F ; Raw block
|11D3C1| db $04, $08, $18, $F0, $10, $12, $10, $10
|11D3C9| db $30, $DF, $E0, $FF, $10, $FF, $01, $FE
|11D3D1| db $0F, $F1, $0E, $F7, $4C, $B7, $0C, $F7
|11D3D9| db $20, $00, $00, $01, $0E, $08, $48, $08
|11D3E1| db $43 ; Repeat word
|11D3E2| dw $00FF
|11D3E4| db $0B ; Raw block
|11D3E5| db $FE, $01, $F8, $07, $E0, $1F, $C3, $3C
|11D3ED| db $8F, $70, $1F, $E0
|11D3F1| db $27 ; Repeat byte
|11D3F2| db $FF
|11D3F3| db $09 ; Raw block
|11D3F4| db $F0, $0F, $80, $7F, $07, $F8, $38, $C7
|11D3FC| db $F1, $0E
|11D3FE| db $45 ; Repeat word
|11D3FF| dw $1EE1
|11D401| db $27 ; Repeat byte
|11D402| db $FF
|11D403| db $43 ; Repeat word
|11D404| dw $01FE
|11D406| db $05 ; Raw block
|11D407| db $1E, $E1, $8E, $71, $C4, $3B
|11D40D| db $43 ; Repeat word
|11D40E| dw $1BE4
|11D410| db $01 ; Raw block
|11D411| db $CF, $30
|11D413| db $27 ; Repeat byte
|11D414| db $FF
|11D415| db $37 ; Repeat byte
|11D416| db $00
|11D417| db $E0, $21 ; EXT Raw block
|11D419| db $D9, $3E, $BB, $7C, $77, $F8, $EF, $F0
|11D421| db $DF, $E0, $BF, $C0, $7F, $80, $FF, $00
|11D429| db $3E, $7C, $F9, $F3, $E7, $CF, $9F, $3F
|11D431| db $FE, $01, $C0, $3F, $98, $67, $B0, $4F
|11D439| db $A0, $5F
|11D43B| db $43 ; Repeat word
|11D43C| dw $7F80
|11D43E| db $08 ; Raw block
|11D43F| db $00, $FF, $FE, $C3, $98, $B0, $A0, $80
|11D447| db $C0
|11D448| db $4A ; Repeat word
|11D449| dw $BF40
|11D44B| db $05 ; Raw block
|11D44C| db $9F, $60, $C0, $3F, $FF, $00
|11D452| db $24 ; Repeat byte
|11D453| db $BF
|11D454| db $02 ; Raw block
|11D455| db $9F, $C0, $FF
|11D458| db $49 ; Repeat word
|11D459| dw $02FD
|11D45B| db $05 ; Raw block
|11D45C| db $F9, $06, $03, $FC, $FF, $00
|11D462| db $24 ; Repeat byte
|11D463| db $FD
|11D464| db $15 ; Raw block
|11D465| db $F9, $03, $FF, $1A, $FE, $3F, $DF, $FF
|11D46D| db $3F, $FB, $FF, $0F, $FF, $07, $FF, $22
|11D475| db $DF, $02, $FF, $01, $20, $C0
|11D47B| db $22 ; Repeat byte
|11D47C| db $00
|11D47D| db $14 ; Raw block
|11D47E| db $20, $00, $FC, $FF, $EC, $EF, $7F, $FC
|11D486| db $3F, $FF, $F8, $FF, $90, $FF, $12, $FD
|11D48E| db $10, $FF, $00, $10, $03
|11D493| db $22 ; Repeat byte
|11D494| db $00
|11D495| db $01 ; Raw block
|11D496| db $02, $00
|11D498| db $92 ; Copy past
|11D499| dw $02A0
|11D49B| db $22 ; Repeat byte
|11D49C| db $00
|11D49D| db $94 ; Copy past
|11D49E| dw $02B6
|11D4A0| db $22 ; Repeat byte
|11D4A1| db $00
|11D4A2| db $07 ; Raw block
|11D4A3| db $02, $00, $FF, $00, $E5, $4C, $CB, $18
|11D4AB| db $43 ; Repeat word
|11D4AC| dw $30D3
|11D4AE| db $08 ; Raw block
|11D4AF| db $F1, $10, $F8, $18, $EC, $1C, $00, $33
|11D4B7| db $67
|11D4B8| db $22 ; Repeat byte
|11D4B9| db $4F
|11D4BA| db $04 ; Raw block
|11D4BB| db $47, $43, $FB, $26, $E5
|11D4C0| db $43 ; Repeat word
|11D4C1| dw $FD00
|11D4C3| db $02 ; Raw block
|11D4C4| db $3C, $E1, $00
|11D4C7| db $43 ; Repeat word
|11D4C8| dw $7E81
|11D4CA| db $06 ; Raw block
|11D4CB| db $FF, $00, $58, $5A, $42, $42, $7E
|11D4D2| db $22 ; Repeat byte
|11D4D3| db $00
|11D4D4| db $05 ; Raw block
|11D4D5| db $80, $7F, $00, $80, $60, $80
|11D4DB| db $43 ; Repeat word
|11D4DC| dw $3FBF
|11D4DE| db $0A ; Raw block
|11D4DF| db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
|11D4E7| db $7F, $40, $40
|11D4EA| db $22 ; Repeat byte
|11D4EB| db $00
|11D4EC| db $03 ; Raw block
|11D4ED| db $B5, $42, $E7, $24
|11D4F1| db $4A ; Repeat word
|11D4F2| dw $66A5
|11D4F4| db $00 ; Raw block
|11D4F5| db $7E
|11D4F6| db $26 ; Repeat byte
|11D4F7| db $18
|11D4F8| db $E0, $24 ; EXT Raw block
|11D4FA| db $00, $A0, $60, $A3, $64, $E4, $23, $DC
|11D502| db $7B, $A0, $3F, $C0, $40, $FF, $3F, $FF
|11D50A| db $00, $1F, $18, $18, $00, $40, $3F, $00
|11D512| db $00, $A5, $66, $E7, $24, $DB, $3C, $C3
|11D51A| db $7E, $E7, $66, $BD, $7E
|11D51F| db $43 ; Repeat word
|11D520| dw $00FF
|11D522| db $04 ; Raw block
|11D523| db $18, $18, $00, $00, $18
|11D528| db $22 ; Repeat byte
|11D529| db $00
|11D52A| db $07 ; Raw block
|11D52B| db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
|11D533| db $43 ; Repeat word
|11D534| dw $56B2
|11D536| db $07 ; Raw block
|11D537| db $B4, $46, $B0, $5A, $00, $00, $13, $51
|11D53F| db $22 ; Repeat byte
|11D540| db $49
|11D541| db $00 ; Raw block
|11D542| db $45
|11D543| db $44 ; Repeat word
|11D544| dw $00FF
|11D546| db $12 ; Raw block
|11D547| db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
|11D54F| db $24, $F0, $30, $00, $7F, $40, $4F, $5E
|11D557| db $53, $5B, $4F
|11D55A| db $4E ; Repeat word
|11D55B| dw $7FFF
|11D55D| db $28 ; Repeat byte
|11D55E| db $7F
|11D55F| db $43 ; Repeat word
|11D560| dw $9F1F
|11D562| db $43 ; Repeat word
|11D563| dw $BE3E
|11D565| db $43 ; Repeat word
|11D566| dw $BF3F
|11D568| db $0B ; Raw block
|11D569| db $3E, $BE, $1C, $9C, $60, $60, $41, $41
|11D571| db $40, $43, $47, $6F
|11D575| db $43 ; Repeat word
|11D576| dw $FFFE
|11D578| db $43 ; Repeat word
|11D579| dw $7F7E
|11D57B| db $03 ; Raw block
|11D57C| db $E0, $E1, $86, $85
|11D580| db $43 ; Repeat word
|11D581| dw $090C
|11D583| db $11 ; Raw block
|11D584| db $70, $12, $86, $BE, $FE, $FC, $FA, $FA
|11D58C| db $11, $F6, $38, $D3, $FC, $30, $FF, $F8
|11D594| db $0F, $FC
|11D596| db $85 ; Copy past
|11D597| dw $02AA
|11D599| db $03 ; Raw block
|11D59A| db $09, $2C, $C7, $03
|11D59E| db $83 ; Copy past
|11D59F| dw $02B4
|11D5A1| db $E0, $2F ; EXT Raw block
|11D5A3| db $03, $03, $07, $07, $0E, $0E, $1D, $1D
|11D5AB| db $3B, $3B, $77, $77, $EF, $EF, $DF, $DF
|11D5B3| db $FC, $F8, $F1, $E2, $C4, $88, $10, $20
|11D5BB| db $C0, $C0, $E0, $E0, $70, $70, $B8, $B8
|11D5C3| db $DC, $DC, $EE, $EE, $F7, $F7, $FB, $FB
|11D5CB| db $3F, $1F, $8F, $47, $23, $11, $08, $04
|11D5D3| db $85 ; Copy past
|11D5D4| dw $0120
|11D5D6| db $04 ; Raw block
|11D5D7| db $F8, $1F, $F0, $FF, $10
|11D5DC| db $84 ; Copy past
|11D5DD| dw $02C3
|11D5DF| db $03 ; Raw block
|11D5E0| db $04, $09, $10, $E0
|11D5E4| db $83 ; Copy past
|11D5E5| dw $02CC
|11D5E7| db $85 ; Copy past
|11D5E8| dw $0138
|11D5EA| db $09 ; Raw block
|11D5EB| db $31, $EE, $1F, $F1, $0E, $FF, $04, $FF
|11D5F3| db $44, $BF
|11D5F5| db $86 ; Copy past
|11D5F6| dw $0148
|11D5F8| db $18 ; Raw block
|11D5F9| db $40, $D7, $2F, $EB, $37, $F7, $18, $F7
|11D601| db $07, $BF, $00, $C0, $40, $FF, $7F, $FF
|11D609| db $00, $40, $40, $60, $78, $7F, $3F, $00
|11D611| db $00
|11D612| db $95 ; Copy past
|11D613| dw $0480
|11D615| db $27 ; Repeat byte
|11D616| db $00
|11D617| db $00 ; Raw block
|11D618| db $FF
|11D619| db $22 ; Repeat byte
|11D61A| db $00
|11D61B| db $24 ; Repeat byte
|11D61C| db $FF
|11D61D| db $00 ; Raw block
|11D61E| db $00
|11D61F| db $24 ; Repeat byte
|11D620| db $FF
|11D621| db $22 ; Repeat byte
|11D622| db $00
|11D623| db $4F ; Repeat word
|11D624| dw $40D0
|11D626| db $27 ; Repeat byte
|11D627| db $3F
|11D628| db $02 ; Raw block
|11D629| db $FF, $00, $FF
|11D62C| db $22 ; Repeat byte
|11D62D| db $00
|11D62E| db $00 ; Raw block
|11D62F| db $FF
|11D630| db $2A ; Repeat byte
|11D631| db $00
|11D632| db $25 ; Repeat byte
|11D633| db $FF
|11D634| db $E0, $47 ; EXT Raw block
|11D636| db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
|11D63E| db $0E, $F3, $1E, $E3, $3F, $C9, $77, $9C
|11D646| db $F0, $E0, $C0, $80, $01, $01, $00, $08
|11D64E| db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
|11D656| db $B8, $77, $BF, $38, $80, $1F, $FF, $00
|11D65E| db $48, $45, $40, $60, $70, $78, $7F, $00
|11D666| db $E0, $20, $E6, $26, $F6, $36, $FF, $00
|11D66E| db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
|11D676| db $5F, $59, $49, $7F, $00, $00, $40, $3F
|11D67E| db $45 ; Repeat word
|11D67F| dw $7FFF
|11D681| db $25 ; Repeat byte
|11D682| db $FF
|11D683| db $03 ; Raw block
|11D684| db $E0, $E0, $80, $80
|11D688| db $22 ; Repeat byte
|11D689| db $7F
|11D68A| db $08 ; Raw block
|11D68B| db $F0, $C0, $80, $1F, $7F, $1C, $9C, $3E
|11D693| db $BE
|11D694| db $45 ; Repeat word
|11D695| dw $BF3F
|11D697| db $0D ; Raw block
|11D698| db $3C, $BC, $1C, $9C, $1F, $9F, $6F, $47
|11D6A0| db $43, $40, $40, $43, $63, $60
|11D6A6| db $43 ; Repeat word
|11D6A7| dw $090C
|11D6A9| db $03 ; Raw block
|11D6AA| db $86, $85, $E0, $E1
|11D6AE| db $47 ; Repeat word
|11D6AF| dw $FFFE
|11D6B1| db $0F ; Raw block
|11D6B2| db $FA, $FA, $FC, $FE, $3E, $06, $12, $70
|11D6BA| db $0C, $F7, $0C, $07, $FF, $04, $FF, $0F
|11D6C2| db $87 ; Copy past
|11D6C3| dw $02C0
|11D6C5| db $02 ; Raw block
|11D6C6| db $08, $F8, $F3
|11D6C9| db $22 ; Repeat byte
|11D6CA| db $00
|11D6CB| db $E0, $39 ; EXT Raw block
|11D6CD| db $02, $00, $DF, $DF, $EF, $EF, $77, $77
|11D6D5| db $3B, $3B, $1D, $1D, $0E, $0E, $07, $07
|11D6DD| db $03, $03, $20, $10, $88, $C4, $E2, $F1
|11D6E5| db $F8, $FC, $FB, $FB, $F7, $F7, $EE, $EE
|11D6ED| db $DC, $DC, $B8, $B8, $70, $70, $E0, $E0
|11D6F5| db $C0, $C0, $04, $08, $11, $23, $47, $8F
|11D6FD| db $1F, $3F, $10, $FF, $31, $DE, $F8, $37
|11D705| db $FC, $FB
|11D707| db $87 ; Copy past
|11D708| dw $0410
|11D70A| db $07 ; Raw block
|11D70B| db $00, $21, $C8, $04, $03, $00, $20, $00
|11D713| db $43 ; Repeat word
|11D714| dw $FF04
|11D716| db $01 ; Raw block
|11D717| db $0F, $F4
|11D719| db $89 ; Copy past
|11D71A| dw $058E
|11D71C| db $07 ; Raw block
|11D71D| db $00, $00, $0B, $F0, $00, $00, $02, $00
|11D725| db $FF ; End of GFX 06

;===================================================================================================

GFX_07:
|11D726| db $4F ; Repeat word
|11D727| dw $FF00
|11D729| db $E4, $20 ; EXT Repeat byte
|11D72B| db $00
|11D72C| db $4E ; Repeat word
|11D72D| dw $00FF
|11D72F| db $28 ; Repeat byte
|11D730| db $00
|11D731| db $4E ; Repeat word
|11D732| dw $00FF
|11D734| db $27 ; Repeat byte
|11D735| db $00
|11D736| db $02 ; Raw block
|11D737| db $FE, $01, $02
|11D73A| db $46 ; Repeat word
|11D73B| dw $FAFD
|11D73D| db $06 ; Raw block
|11D73E| db $02, $FD, $FE, $01, $FF, $01, $00
|11D745| db $24 ; Repeat byte
|11D746| db $FC
|11D747| db $22 ; Repeat byte
|11D748| db $00
|11D749| db $48 ; Repeat word
|11D74A| dw $00FF
|11D74C| db $02 ; Raw block
|11D74D| db $1F, $FF, $7F
|11D750| db $22 ; Repeat byte
|11D751| db $FF
|11D752| db $27 ; Repeat byte
|11D753| db $00
|11D754| db $4F ; Repeat word
|11D755| dw $00FF
|11D757| db $27 ; Repeat byte
|11D758| db $FF
|11D759| db $0F ; Raw block
|11D75A| db $97, $00, $FF, $00, $A4, $00, $96, $00
|11D762| db $7F, $00, $37, $00, $4D, $00, $C8, $00
|11D76A| db $27 ; Repeat byte
|11D76B| db $FF
|11D76C| db $E0, $23 ; EXT Raw block
|11D76E| db $EF, $1C, $DB, $36, $AC, $7B, $72, $CD
|11D776| db $BA, $E5, $4B, $B4, $EB, $14, $EF, $10
|11D77E| db $DF, $B7, $7B, $CD, $E5, $B4, $17, $DB
|11D786| db $FD, $0A, $F6, $29, $DF, $20, $FE, $01
|11D78E| db $FD, $02, $F7, $08
|11D792| db $44 ; Repeat word
|11D793| dw $00FF
|11D795| db $08 ; Raw block
|11D796| db $A9, $A6, $9F, $FE, $E9, $F3, $FF, $00
|11D79E| db $C3
|11D79F| db $43 ; Repeat word
|11D7A0| dw $BD3C
|11D7A2| db $1B ; Raw block
|11D7A3| db $00, $C2, $01, $3D, $C3, $DB, $E1, $E9
|11D7AB| db $C0, $DE, $3C, $42, $42, $3D, $C2, $24
|11D7B3| db $16, $21, $3E, $BE, $1C, $9D, $00, $E3
|11D7BB| db $00, $1C, $E3, $EB
|11D7BF| db $45 ; Repeat word
|11D7C0| dw $FBF3
|11D7C2| db $04 ; Raw block
|11D7C3| db $41, $62, $1C, $E3, $14
|11D7C8| db $22 ; Repeat byte
|11D7C9| db $04
|11D7CA| db $E4, $5F ; EXT Repeat byte
|11D7CC| db $00
|11D7CD| db $00 ; Raw block
|11D7CE| db $FE
|11D7CF| db $4C ; Repeat word
|11D7D0| dw $80FF
|11D7D2| db $01 ; Raw block
|11D7D3| db $00, $FF
|11D7D5| db $26 ; Repeat byte
|11D7D6| db $FE
|11D7D7| db $00 ; Raw block
|11D7D8| db $00
|11D7D9| db $4F ; Repeat word
|11D7DA| dw $FF00
|11D7DC| db $E4, $97 ; EXT Repeat byte
|11D7DE| db $00
|11D7DF| db $E0, $23 ; EXT Raw block
|11D7E1| db $DF, $3C, $F9, $76, $FD, $32, $CD, $32
|11D7E9| db $A1, $5E, $A7, $58, $8F, $70, $AF, $50
|11D7F1| db $BD, $76, $32, $32, $5E, $59, $73, $57
|11D7F9| db $FF, $00, $BD, $42, $1B, $E4, $CF, $30
|11D801| db $E7, $18, $F3, $0C
|11D805| db $84 ; Copy past
|11D806| dw $00E2
|11D808| db $0A ; Raw block
|11D809| db $FE, $FD, $3B, $9F, $CF, $EB, $E7, $00
|11D811| db $21, $1E, $DE
|11D814| db $45 ; Repeat word
|11D815| dw $BF3F
|11D817| db $07 ; Raw block
|11D818| db $1E, $DE, $00, $C1, $00, $FF, $DE, $21
|11D820| db $22 ; Repeat byte
|11D821| db $40
|11D822| db $0C ; Raw block
|11D823| db $21, $3E, $00, $60, $64, $00, $8F, $00
|11D82B| db $73, $0C, $6D, $1E, $5E
|11D830| db $45 ; Repeat word
|11D831| dw $DE1E
|11D833| db $04 ; Raw block
|11D834| db $9B, $70, $8C, $92, $A1
|11D839| db $22 ; Repeat byte
|11D83A| db $21
|11D83B| db $E4, $77 ; EXT Repeat byte
|11D83D| db $00
|11D83E| db $02 ; Raw block
|11D83F| db $FB, $26, $E5
|11D842| db $43 ; Repeat word
|11D843| dw $FD00
|11D845| db $02 ; Raw block
|11D846| db $3C, $E1, $00
|11D849| db $43 ; Repeat word
|11D84A| dw $7E81
|11D84C| db $06 ; Raw block
|11D84D| db $FF, $00, $58, $5A, $42, $42, $7E
|11D854| db $22 ; Repeat byte
|11D855| db $00
|11D856| db $05 ; Raw block
|11D857| db $80, $7F, $00, $80, $60, $80
|11D85D| db $43 ; Repeat word
|11D85E| dw $3FBF
|11D860| db $0A ; Raw block
|11D861| db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
|11D869| db $7F, $40, $40
|11D86C| db $22 ; Repeat byte
|11D86D| db $00
|11D86E| db $03 ; Raw block
|11D86F| db $B5, $42, $E7, $24
|11D873| db $4A ; Repeat word
|11D874| dw $66A5
|11D876| db $00 ; Raw block
|11D877| db $7E
|11D878| db $26 ; Repeat byte
|11D879| db $18
|11D87A| db $0B ; Raw block
|11D87B| db $00, $FF, $00, $09, $07, $77, $8F, $EF
|11D883| db $1E, $CF, $BC, $DB
|11D887| db $44 ; Repeat word
|11D888| dw $5BBC
|11D88A| db $E0, $27 ; EXT Raw block
|11D88C| db $00, $F0, $E0, $01, $83, $83, $81, $80
|11D894| db $5B, $BC, $49, $BE, $64, $DF, $30, $CF
|11D89C| db $BC, $E3, $FF, $D8, $E7, $BF, $F8, $BF
|11D8A4| db $80, $80, $C0, $C0, $E0, $D8, $BF, $BF
|11D8AC| db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
|11D8B4| db $43 ; Repeat word
|11D8B5| dw $56B2
|11D8B7| db $07 ; Raw block
|11D8B8| db $B4, $46, $B0, $5A, $00, $00, $13, $51
|11D8C0| db $22 ; Repeat byte
|11D8C1| db $49
|11D8C2| db $00 ; Raw block
|11D8C3| db $45
|11D8C4| db $44 ; Repeat word
|11D8C5| dw $00FF
|11D8C7| db $12 ; Raw block
|11D8C8| db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
|11D8D0| db $24, $F0, $30, $00, $7F, $40, $4F, $5E
|11D8D8| db $53, $5B, $4F
|11D8DB| db $23 ; Repeat byte
|11D8DC| db $FF
|11D8DD| db $05 ; Raw block
|11D8DE| db $F0, $F0, $C0, $C0, $80, $80
|11D8E4| db $23 ; Repeat byte
|11D8E5| db $00
|11D8E6| db $00 ; Raw block
|11D8E7| db $0F
|11D8E8| db $22 ; Repeat byte
|11D8E9| db $00
|11D8EA| db $02 ; Raw block
|11D8EB| db $0F, $3F, $7F
|11D8EE| db $22 ; Repeat byte
|11D8EF| db $FF
|11D8F0| db $E4, $48 ; EXT Repeat byte
|11D8F2| db $00
|11D8F3| db $0C ; Raw block
|11D8F4| db $FF, $00, $00, $1C, $7F, $67, $7F, $7B
|11D8FC| db $7F, $67, $7F, $1C, $7F
|11D901| db $43 ; Repeat word
|11D902| dw $FF00
|11D904| db $24 ; Repeat byte
|11D905| db $80
|11D906| db $83 ; Copy past
|11D907| dw $002F
|11D909| db $09 ; Raw block
|11D90A| db $01, $E6, $FF, $38, $FF, $DE, $FF, $38
|11D912| db $FF, $E6
|11D914| db $43 ; Repeat word
|11D915| dw $00FF
|11D917| db $00 ; Raw block
|11D918| db $FE
|11D919| db $25 ; Repeat byte
|11D91A| db $00
|11D91B| db $12 ; Raw block
|11D91C| db $BE, $38, $DA, $5C, $E2, $6D, $E9, $7E
|11D924| db $C7, $7D, $87, $7B, $DE, $26, $7C, $9D
|11D92C| db $41, $21, $10
|11D92F| db $22 ; Repeat byte
|11D930| db $00
|11D931| db $17 ; Raw block
|11D932| db $01, $02, $07, $38, $9E, $E6, $3C, $DD
|11D93A| db $78, $BB, $C4, $07, $44, $3F, $C4, $BF
|11D942| db $61, $9E, $C0, $01, $02, $04, $38, $80
|11D94A| db $E4, $91 ; EXT Repeat byte
|11D94C| db $00
|11D94D| db $E0, $32 ; EXT Raw block
|11D94F| db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
|11D957| db $B8, $77, $BF, $38, $80, $1F, $FF, $00
|11D95F| db $48, $45, $40, $60, $70, $78, $7F, $00
|11D967| db $E0, $20, $E6, $26, $F6, $36, $FF, $00
|11D96F| db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
|11D977| db $5F, $59, $49, $7F, $00, $00, $40, $3F
|11D97F| db $3F, $00, $7F
|11D982| db $4C ; Repeat word
|11D983| dw $FF00
|11D985| db $27 ; Repeat byte
|11D986| db $FF
|11D987| db $E4, $48 ; EXT Repeat byte
|11D989| db $00
|11D98A| db $8B ; Copy past
|11D98B| dw $0439
|11D98D| db $43 ; Repeat word
|11D98E| dw $00FF
|11D990| db $00 ; Raw block
|11D991| db $FE
|11D992| db $26 ; Repeat byte
|11D993| db $00
|11D994| db $8C ; Copy past
|11D995| dw $0421
|11D997| db $43 ; Repeat word
|11D998| dw $FF00
|11D99A| db $24 ; Repeat byte
|11D99B| db $80
|11D99C| db $11 ; Raw block
|11D99D| db $00, $C0, $83, $C0, $3F, $E1, $DE, $FF
|11D9A5| db $E0, $3F, $3D, $1F, $DD, $07, $E9, $FF
|11D9AD| db $01, $3C
|11D9AF| db $22 ; Repeat byte
|11D9B0| db $00
|11D9B1| db $1B ; Raw block
|11D9B2| db $C0, $20, $10, $00, $FF, $60, $DB, $6B
|11D9BA| db $FD, $0D, $DE, $CE, $CC, $D5, $C8, $D3
|11D9C2| db $A8, $B7, $49, $76, $00, $04, $02, $21
|11D9CA| db $22, $24, $40, $80
|11D9CE| db $FF ; End of GFX 07

;===================================================================================================

GFX_08:
|11D9CF| db $0F ; Raw block
|11D9D0| db $13, $FE, $06, $FD, $2C, $FB, $18, $F7
|11D9D8| db $38, $E7, $6C, $DB, $C6, $BD, $83, $7E
|11D9E0| db $28 ; Repeat byte
|11D9E1| db $00
|11D9E2| db $0E ; Raw block
|11D9E3| db $6D, $00, $81, $00, $9D, $00, $BE, $00
|11D9EB| db $3E, $00, $BD, $00, $81, $00, $6C
|11D9F2| db $27 ; Repeat byte
|11D9F3| db $00
|11D9F4| db $E0, $42 ; EXT Raw block
|11D9F6| db $01, $FC, $23, $F9, $07, $F3, $8F, $E7
|11D9FE| db $17, $CF, $27, $9F, $43, $3F, $81, $7E
|11DA06| db $02, $04, $08, $10, $20, $40, $80, $01
|11DA0E| db $FD, $FC, $FB, $F9, $D7, $D3, $77, $6F
|11DA16| db $E0, $D8, $DA, $BC, $ED, $2E, $FE, $7D
|11DA1E| db $02, $04, $28, $90, $27, $43, $91, $02
|11DA26| db $C1, $7C, $63, $B9, $37, $D3, $9B, $67
|11DA2E| db $C9, $37, $C4, $3B, $FE, $01, $FF, $00
|11DA36| db $02, $04, $08
|11DA39| db $24 ; Repeat byte
|11DA3A| db $00
|11DA3B| db $17 ; Raw block
|11DA3C| db $F5, $F3, $CB, $C7, $14, $0C, $24, $18
|11DA44| db $5A, $3C, $E6, $67, $C1, $C1, $03, $01
|11DA4C| db $0C, $38, $F3, $E7, $C3, $99, $3E, $FE
|11DA54| db $4F ; Repeat word
|11DA55| dw $00FF
|11DA57| db $27 ; Repeat byte
|11DA58| db $FF
|11DA59| db $37 ; Repeat byte
|11DA5A| db $00
|11DA5B| db $E0, $23 ; EXT Raw block
|11DA5D| db $EF, $1C, $DB, $36, $AC, $7B, $72, $CD
|11DA65| db $BA, $E5, $4B, $B4, $EB, $14, $EF, $10
|11DA6D| db $DF, $B7, $7B, $CD, $E5, $B4, $17, $DB
|11DA75| db $FD, $0A, $F6, $29, $DF, $20, $FE, $01
|11DA7D| db $FD, $02, $F7, $08
|11DA81| db $44 ; Repeat word
|11DA82| dw $00FF
|11DA84| db $E0, $46 ; EXT Raw block
|11DA86| db $A9, $A6, $9F, $FE, $E9, $F3, $FF, $7C
|11DA8E| db $7D, $78, $7B, $30, $B6, $01, $C9, $06
|11DA96| db $36, $C0, $D0, $C1, $D9, $C0, $DE, $82
|11DA9E| db $84, $49, $36, $C9, $2F, $26, $21, $7C
|11DAA6| db $7D, $1C, $9D, $00, $63, $00, $3E, $41
|11DAAE| db $5D, $A3, $AB, $63, $6B, $E3, $EB, $82
|11DAB6| db $62, $9C, $C1, $A2, $54, $94, $14, $7F
|11DABE| db $FF, $77, $FF, $23, $FF, $B7, $7F, $5F
|11DAC6| db $3F, $6E, $1F, $B1, $8E, $DF, $C0
|11DACD| db $23 ; Repeat byte
|11DACE| db $00
|11DACF| db $13 ; Raw block
|11DAD0| db $80, $80, $40, $20, $7E, $FF, $FE, $7F
|11DAD8| db $BD, $7E, $52, $3D, $6D, $91, $B3, $43
|11DAE0| db $2C, $CF, $EC, $0F
|11DAE4| db $22 ; Repeat byte
|11DAE5| db $00
|11DAE6| db $04 ; Raw block
|11DAE7| db $80, $02, $0C, $10, $10
|11DAEC| db $8F ; Copy past
|11DAED| dw $0120
|11DAEF| db $23 ; Repeat byte
|11DAF0| db $00
|11DAF1| db $93 ; Copy past
|11DAF2| dw $0134
|11DAF4| db $22 ; Repeat byte
|11DAF5| db $00
|11DAF6| db $84 ; Copy past
|11DAF7| dw $014B
|11DAF9| db $10 ; Raw block
|11DAFA| db $7E, $81, $C3, $7E, $A5, $7E, $A3, $7E
|11DB02| db $89, $7E, $A1, $7E, $C3, $7E, $7E, $81
|11DB0A| db $00
|11DB0B| db $25 ; Repeat byte
|11DB0C| db $7E
|11DB0D| db $10 ; Raw block
|11DB0E| db $00, $01, $FC, $42, $F9, $37, $F3, $6F
|11DB16| db $E7, $DB, $C3, $BF, $99, $7D, $3E, $EE
|11DB1E| db $6F
|11DB1F| db $83 ; Copy past
|11DB20| dw $0040
|11DB22| db $0B ; Raw block
|11DB23| db $24, $42, $81, $10, $40, $58, $C0, $D7
|11DB2B| db $00, $34, $03, $FB
|11DB2F| db $44 ; Repeat word
|11DB30| dw $3707
|11DB32| db $E0, $22 ; EXT Raw block
|11DB34| db $F7, $06, $F6, $A7, $28, $CB, $04, $C8
|11DB3C| db $C8, $08, $09, $03, $7B, $03, $FF, $00
|11DB44| db $04, $F8, $FB, $B8, $BA, $F0, $F6, $F0
|11DB4C| db $F7, $D0, $D6, $84, $00, $FB, $04, $45
|11DB54| db $09, $08, $29
|11DB57| db $87 ; Copy past
|11DB58| dw $01B0
|11DB5A| db $44 ; Repeat word
|11DB5B| dw $3707
|11DB5D| db $F0, $22 ; EXT Copy past
|11DB5F| dw $01BD
|11DB61| db $E0, $23 ; EXT Raw block
|11DB63| db $01, $91, $00, $98, $00, $9F, $0C, $93
|11DB6B| db $03, $FC, $00, $31, $C0, $D1, $C0, $DF
|11DB73| db $6E, $67, $60, $60, $00, $CE, $2E, $20
|11DB7B| db $F0, $F6, $E0, $EF, $00, $1E, $04, $FA
|11DB83| db $08, $F7, $F0, $08
|11DB87| db $43 ; Repeat word
|11DB88| dw $9707
|11DB8A| db $E0, $2B ; EXT Raw block
|11DB8C| db $09, $10, $E1, $01, $00, $07, $68, $68
|11DB94| db $DF, $3C, $F9, $76, $FD, $32, $CD, $32
|11DB9C| db $A1, $5E, $A7, $58, $8F, $70, $AF, $50
|11DBA4| db $BD, $76, $32, $32, $5E, $59, $73, $57
|11DBAC| db $FF, $00, $BD, $42, $1B, $E4, $CF, $30
|11DBB4| db $E7, $18, $F3, $0C
|11DBB8| db $84 ; Copy past
|11DBB9| dw $00E2
|11DBBB| db $E0, $3C ; EXT Raw block
|11DBBD| db $FE, $FD, $3B, $9F, $CF, $EB, $E7, $80
|11DBC5| db $A1, $14, $54, $2A, $AA, $37, $B7, $07
|11DBCD| db $C7, $00, $78, $00, $87, $38, $BB, $5E
|11DBD5| db $AB, $55, $48, $38, $87, $78, $44, $63
|11DBDD| db $6B, $01, $9D, $00, $72, $08, $29, $18
|11DBE5| db $58, $33, $B3, $3F, $3F, $7F, $7F, $94
|11DBED| db $62, $8D, $D6, $A7, $4C, $C0, $80, $EA
|11DBF5| db $E4, $2D, $F1, $13, $E3
|11DBFA| db $43 ; Repeat word
|11DBFB| dw $E7D7
|11DBFD| db $E0, $25 ; EXT Raw block
|11DBFF| db $A9, $CF, $58, $9F, $3E, $BE, $11, $02
|11DC07| db $0C, $08, $08, $10, $20, $41, $3F, $0F
|11DC0F| db $D3, $CF, $FD, $C3, $A3, $C1, $AA, $C9
|11DC17| db $42, $99, $8D, $3C, $FC, $7D, $C0, $20
|11DC1F| db $00, $1C, $14, $24, $42, $02
|11DC25| db $85 ; Copy past
|11DC26| dw $02A0
|11DC28| db $43 ; Repeat word
|11DC29| dw $E7D7
|11DC2B| db $F0, $25 ; EXT Copy past
|11DC2D| dw $02AA
|11DC2F| db $05 ; Raw block
|11DC30| db $7F, $80, $CC, $44, $99, $08
|11DC36| db $43 ; Repeat word
|11DC37| dw $10B3
|11DC39| db $08 ; Raw block
|11DC3A| db $B1, $10, $B0, $10, $A8, $18, $00, $33
|11DC42| db $67
|11DC43| db $23 ; Repeat byte
|11DC44| db $4F
|11DC45| db $03 ; Raw block
|11DC46| db $47, $FB, $26, $E5
|11DC4A| db $43 ; Repeat word
|11DC4B| dw $FD00
|11DC4D| db $02 ; Raw block
|11DC4E| db $3C, $E1, $00
|11DC51| db $43 ; Repeat word
|11DC52| dw $7E81
|11DC54| db $06 ; Raw block
|11DC55| db $FF, $00, $58, $5A, $42, $42, $7E
|11DC5C| db $22 ; Repeat byte
|11DC5D| db $00
|11DC5E| db $05 ; Raw block
|11DC5F| db $80, $7F, $00, $80, $60, $80
|11DC65| db $43 ; Repeat word
|11DC66| dw $3FBF
|11DC68| db $0A ; Raw block
|11DC69| db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
|11DC71| db $7F, $40, $40
|11DC74| db $22 ; Repeat byte
|11DC75| db $00
|11DC76| db $03 ; Raw block
|11DC77| db $B5, $42, $E7, $24
|11DC7B| db $4A ; Repeat word
|11DC7C| dw $66A5
|11DC7E| db $00 ; Raw block
|11DC7F| db $7E
|11DC80| db $26 ; Repeat byte
|11DC81| db $18
|11DC82| db $00 ; Raw block
|11DC83| db $00
|11DC84| db $43 ; Repeat word
|11DC85| dw $7F80
|11DC87| db $04 ; Raw block
|11DC88| db $C0, $3F, $FF, $40, $BF
|11DC8D| db $83 ; Copy past
|11DC8E| dw $0363
|11DC90| db $02 ; Raw block
|11DC91| db $00, $7F, $80
|11DC94| db $27 ; Repeat byte
|11DC95| db $00
|11DC96| db $43 ; Repeat word
|11DC97| dw $FE01
|11DC99| db $83 ; Copy past
|11DC9A| dw $0266
|11DC9C| db $01 ; Raw block
|11DC9D| db $01, $FE
|11DC9F| db $44 ; Repeat word
|11DCA0| dw $00FF
|11DCA2| db $28 ; Repeat byte
|11DCA3| db $00
|11DCA4| db $07 ; Raw block
|11DCA5| db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
|11DCAD| db $43 ; Repeat word
|11DCAE| dw $56B2
|11DCB0| db $07 ; Raw block
|11DCB1| db $B4, $46, $B0, $5A, $00, $00, $13, $51
|11DCB9| db $22 ; Repeat byte
|11DCBA| db $49
|11DCBB| db $00 ; Raw block
|11DCBC| db $45
|11DCBD| db $44 ; Repeat word
|11DCBE| dw $00FF
|11DCC0| db $1F ; Raw block
|11DCC1| db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
|11DCC9| db $24, $F0, $30, $00, $7F, $40, $4F, $5E
|11DCD1| db $53, $5B, $4F, $02, $06, $05, $0C, $07
|11DCD9| db $10, $03, $24, $19, $42, $3C, $81, $7E
|11DCE1| db $43 ; Repeat word
|11DCE2| dw $FD00
|11DCE4| db $00 ; Raw block
|11DCE5| db $FB
|11DCE6| db $25 ; Repeat byte
|11DCE7| db $FF
|11DCE8| db $03 ; Raw block
|11DCE9| db $1F, $9E, $1F, $BE
|11DCED| db $44 ; Repeat word
|11DCEE| dw $B33F
|11DCF0| db $E0, $26 ; EXT Raw block
|11DCF2| db $BE, $3E, $8F, $70, $C1, $01, $FE, $61
|11DCFA| db $41, $4C, $4C, $41, $71, $3F, $01, $F1
|11DD02| db $6E, $C1, $7E, $81, $FE, $71, $EE, $79
|11DD0A| db $B6, $3D, $FA, $01, $C2, $DB, $24, $9F
|11DD12| db $BF, $7F, $9F, $CF, $C7, $FF, $DB
|11DD19| db $97 ; Copy past
|11DD1A| dw $0210
|11DD1C| db $E0, $3B ; EXT Raw block
|11DD1E| db $0F, $EF, $07, $E7, $01, $F9, $00, $3C
|11DD26| db $C0, $DE, $E0, $EF, $F0, $F7, $90, $F7
|11DD2E| db $10, $18, $06, $C3, $21, $10, $08, $08
|11DD36| db $B0, $F7, $A0, $AF, $C0, $CC, $81, $99
|11DD3E| db $03, $3B, $03, $F3, $07, $E7, $0F, $8F
|11DD46| db $08, $50, $33, $66, $C4, $0C, $18, $70
|11DD4E| db $40, $58, $C0, $D8, $00, $3C, $00, $E7
|11DD56| db $00, $24, $03, $3B
|11DD5A| db $43 ; Repeat word
|11DD5B| dw $F707
|11DD5D| db $E0, $37 ; EXT Raw block
|11DD5F| db $A7, $27, $C3, $18, $DB, $C4, $08, $08
|11DD67| db $03, $7B, $03, $4B, $00, $4C, $00, $FF
|11DD6F| db $00, $06, $F8, $FA, $B8, $BB, $F0, $F6
|11DD77| db $84, $B4, $B3, $00, $F9, $05, $44, $09
|11DD7F| db $AC, $1C, $B7, $2F, $B8, $37, $9F, $18
|11DD87| db $8F, $0F, $FF, $40, $BF, $70, $B9, $68
|11DD8F| db $43, $40, $40, $60, $70, $3F, $00, $07
|11DD97| db $8C ; Copy past
|11DD98| dw $0480
|11DD9A| db $02 ; Raw block
|11DD9B| db $7F, $80, $7F
|11DD9E| db $86 ; Copy past
|11DD9F| dw $0490
|11DDA1| db $00 ; Raw block
|11DDA2| db $00
|11DDA3| db $29 ; Repeat byte
|11DDA4| db $01
|11DDA5| db $45 ; Repeat word
|11DDA6| dw $FFFE
|11DDA8| db $24 ; Repeat byte
|11DDA9| db $FE
|11DDAA| db $22 ; Repeat byte
|11DDAB| db $00
|11DDAC| db $03 ; Raw block
|11DDAD| db $B9, $58, $D9, $38
|11DDB1| db $47 ; Repeat word
|11DDB2| dw $7899
|11DDB4| db $03 ; Raw block
|11DDB5| db $9E, $7E, $81, $78
|11DDB9| db $25 ; Repeat byte
|11DDBA| db $07
|11DDBB| db $07 ; Raw block
|11DDBC| db $01, $07, $FF, $00, $00, $FF, $FE, $FF
|11DDC4| db $23 ; Repeat byte
|11DDC5| db $01
|11DDC6| db $44 ; Repeat word
|11DDC7| dw $00FE
|11DDC9| db $23 ; Repeat byte
|11DDCA| db $00
|11DDCB| db $01 ; Raw block
|11DDCC| db $FE, $FE
|11DDCE| db $22 ; Repeat byte
|11DDCF| db $FF
|11DDD0| db $E0, $54 ; EXT Raw block
|11DDD2| db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
|11DDDA| db $0E, $F3, $1E, $E3, $3F, $C9, $77, $9C
|11DDE2| db $F0, $E0, $C0, $80, $01, $01, $00, $08
|11DDEA| db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
|11DDF2| db $B8, $77, $BF, $38, $80, $1F, $FF, $00
|11DDFA| db $48, $45, $40, $60, $70, $78, $7F, $00
|11DE02| db $E0, $20, $E6, $26, $F6, $36, $FF, $00
|11DE0A| db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
|11DE12| db $5F, $59, $49, $7F, $00, $00, $40, $3F
|11DE1A| db $E3, $18, $8C, $73, $18, $E7, $28, $D7
|11DE22| db $47, $BB, $9D, $7F, $7E
|11DE27| db $2A ; Repeat byte
|11DE28| db $FF
|11DE29| db $E0, $2F ; EXT Raw block
|11DE2B| db $01, $CE, $71, $C1, $1F, $9F, $3E, $B3
|11DE33| db $1E, $93, $3E, $BF, $3F, $BE, $1F, $9F
|11DE3B| db $31, $3E, $60, $4D, $6D, $41, $41, $60
|11DE43| db $DB, $24, $21, $C2, $9D, $6E, $C1, $BE
|11DE4B| db $7D, $F2, $4D, $FE, $6D, $D6, $E7, $7E
|11DE53| db $DB, $FF, $F3, $7F, $8F, $B3, $BB, $99
|11DE5B| db $8B ; Copy past
|11DE5C| dw $0228
|11DE5E| db $43 ; Repeat word
|11DE5F| dw $9707
|11DE61| db $87 ; Copy past
|11DE62| dw $0238
|11DE64| db $E0, $20 ; EXT Raw block
|11DE66| db $98, $9B, $F8, $FB, $F0, $F3, $C0, $CF
|11DE6E| db $80, $BE, $01, $71, $0F, $EF, $1F, $DF
|11DE76| db $64, $04, $0C, $30, $41, $8E, $10, $20
|11DE7E| db $7D, $7F, $5D, $7D, $5F, $5F, $7F, $7F
|11DE86| db $FF
|11DE87| db $43 ; Repeat word
|11DE88| dw $F7FF
|11DE8A| db $14 ; Raw block
|11DE8B| db $F7, $FF, $FF, $80, $82, $A0, $80, $00
|11DE93| db $00, $08, $00, $07, $97, $06, $96, $07
|11DE9B| db $97, $00, $98, $00, $FF
|11DEA0| db $85 ; Copy past
|11DEA1| dw $021A
|11DEA3| db $03 ; Raw block
|11DEA4| db $68, $69, $68, $67
|11DEA8| db $84 ; Copy past
|11DEA9| dw $0224
|11DEAB| db $0A ; Raw block
|11DEAC| db $F4, $D0, $D7, $F0, $F4, $E0, $EC, $00
|11DEB4| db $1F, $00, $F8
|11DEB7| db $43 ; Repeat word
|11DEB8| dw $9707
|11DEBA| db $07 ; Raw block
|11DEBB| db $0B, $28, $0B, $13, $E0, $07, $68, $68
|11DEC3| db $FF ; End of GFX 08

;===================================================================================================

GFX_09:
|11DEC4| db $0F ; Raw block
|11DEC5| db $13, $FE, $06, $FD, $2C, $FB, $18, $F7
|11DECD| db $38, $E7, $6C, $DB, $C6, $BD, $83, $7E
|11DED5| db $28 ; Repeat byte
|11DED6| db $00
|11DED7| db $02 ; Raw block
|11DED8| db $BB, $00, $7D
|11DEDB| db $46 ; Repeat word
|11DEDC| dw $FE00
|11DEDE| db $04 ; Raw block
|11DEDF| db $7D, $00, $BB, $00, $C7
|11DEE4| db $27 ; Repeat byte
|11DEE5| db $00
|11DEE6| db $E0, $42 ; EXT Raw block
|11DEE8| db $01, $FC, $23, $F9, $07, $F3, $8F, $E7
|11DEF0| db $17, $CF, $27, $9F, $43, $3F, $81, $7E
|11DEF8| db $02, $04, $08, $10, $20, $40, $80, $01
|11DF00| db $FD, $FC, $FB, $F9, $D7, $D3, $77, $6F
|11DF08| db $E0, $D8, $DA, $BC, $ED, $2E, $FE, $7D
|11DF10| db $02, $04, $28, $90, $27, $43, $91, $02
|11DF18| db $C1, $7C, $63, $B9, $37, $D3, $9B, $67
|11DF20| db $C9, $37, $C4, $3B, $FE, $01, $FF, $00
|11DF28| db $02, $04, $08
|11DF2B| db $24 ; Repeat byte
|11DF2C| db $00
|11DF2D| db $17 ; Raw block
|11DF2E| db $F5, $F3, $CB, $C7, $14, $0C, $24, $18
|11DF36| db $5A, $3C, $E6, $67, $C1, $C1, $03, $01
|11DF3E| db $0C, $38, $F3, $E7, $C3, $99, $3E, $FE
|11DF46| db $4F ; Repeat word
|11DF47| dw $00FF
|11DF49| db $27 ; Repeat byte
|11DF4A| db $FF
|11DF4B| db $37 ; Repeat byte
|11DF4C| db $00
|11DF4D| db $E0, $23 ; EXT Raw block
|11DF4F| db $EF, $1C, $DB, $36, $AC, $7B, $72, $CD
|11DF57| db $BA, $E5, $4B, $B4, $EB, $14, $EF, $10
|11DF5F| db $DF, $B7, $7B, $CD, $E5, $B4, $17, $DB
|11DF67| db $FD, $0A, $F6, $29, $DF, $20, $FE, $01
|11DF6F| db $FD, $02, $F7, $08
|11DF73| db $44 ; Repeat word
|11DF74| dw $00FF
|11DF76| db $0E ; Raw block
|11DF77| db $A9, $A6, $9F, $FE, $E9, $F3, $FF, $00
|11DF7F| db $00, $03, $03, $0F, $0F, $1F, $1F
|11DF86| db $23 ; Repeat byte
|11DF87| db $3F
|11DF88| db $15 ; Raw block
|11DF89| db $7E, $7E, $7C, $7C, $FF, $FC, $F0, $E0
|11DF91| db $C0, $C0, $81, $83, $7F, $7F, $FE, $FE
|11DF99| db $F8, $F8, $E0, $E0, $80, $80
|11DF9F| db $25 ; Repeat byte
|11DFA0| db $00
|11DFA1| db $04 ; Raw block
|11DFA2| db $80, $01, $07, $1F, $7F
|11DFA7| db $22 ; Repeat byte
|11DFA8| db $FF
|11DFA9| db $E0, $2F ; EXT Raw block
|11DFAB| db $FA, $FC, $F1, $F8, $F6, $E6, $EF, $CF
|11DFB3| db $DF, $9F, $DC, $3F, $ED, $1E, $92, $6C
|11DFBB| db $01, $06, $09, $10, $20, $00, $00, $01
|11DFC3| db $0E, $1F, $6E, $E5, $B7, $73, $7B, $39
|11DFCB| db $4D, $30, $F2, $03, $8E, $0F, $F6, $7F
|11DFD3| db $E0, $10, $08, $84, $82, $0C, $70, $00
|11DFDB| db $F0, $2F ; EXT Copy past
|11DFDD| dw $0120
|11DFDF| db $10 ; Raw block
|11DFE0| db $7E, $81, $C3, $7E, $A5, $7E, $A3, $7E
|11DFE8| db $89, $7E, $A1, $7E, $C3, $7E, $7E, $81
|11DFF0| db $00
|11DFF1| db $25 ; Repeat byte
|11DFF2| db $7E
|11DFF3| db $10 ; Raw block
|11DFF4| db $00, $01, $FC, $42, $F9, $37, $F3, $6F
|11DFFC| db $E7, $DB, $C3, $BF, $99, $7D, $3E, $EE
|11E004| db $6F
|11E005| db $83 ; Copy past
|11E006| dw $0040
|11E008| db $0D ; Raw block
|11E009| db $24, $42, $81, $10, $38, $38, $F3, $F3
|11E011| db $EF, $EF, $D9, $D9, $BD, $BD
|11E017| db $43 ; Repeat word
|11E018| dw $BF3F
|11E01A| db $E0, $21 ; EXT Raw block
|11E01C| db $3E, $BE, $C7, $0C, $10, $26, $42, $40
|11E024| db $40, $41, $1D, $1D, $CF, $CF, $C7, $C7
|11E02C| db $FB, $FB, $F9, $F9, $EC, $ED, $FC, $FD
|11E034| db $7C, $7D, $E2, $30, $38, $04, $06, $12
|11E03C| db $02, $82
|11E03E| db $89 ; Copy past
|11E03F| dw $01B0
|11E041| db $43 ; Repeat word
|11E042| dw $BF3F
|11E044| db $F0, $21 ; EXT Copy past
|11E046| dw $01BE
|11E048| db $E0, $53 ; EXT Raw block
|11E04A| db $3E, $BE, $0F, $CF, $0F, $EF, $C7, $B7
|11E052| db $A1, $99, $90, $8F, $E8, $E7, $67, $60
|11E05A| db $41, $30, $10, $08, $46, $60, $10, $98
|11E062| db $7C, $7D, $F0, $F3, $F0, $F7, $E3, $ED
|11E06A| db $05, $19, $09, $F1, $17, $E7, $EF, $0F
|11E072| db $82, $0C, $08, $10, $E2, $06, $08, $10
|11E07A| db $DF, $3C, $F9, $76, $FD, $32, $CD, $32
|11E082| db $A1, $5E, $A7, $58, $8F, $70, $AF, $50
|11E08A| db $BD, $76, $32, $32, $5E, $59, $73, $57
|11E092| db $FF, $00, $BD, $42, $1B, $E4, $CF, $30
|11E09A| db $E7, $18, $F3, $0C
|11E09E| db $84 ; Copy past
|11E09F| dw $00E2
|11E0A1| db $08 ; Raw block
|11E0A2| db $FE, $FD, $3B, $9F, $CF, $EB, $E7, $78
|11E0AA| db $78
|11E0AB| db $23 ; Repeat byte
|11E0AC| db $F0
|11E0AD| db $23 ; Repeat byte
|11E0AE| db $E0
|11E0AF| db $23 ; Repeat byte
|11E0B0| db $C0
|11E0B1| db $02 ; Raw block
|11E0B2| db $80, $80, $87
|11E0B5| db $85 ; Copy past
|11E0B6| dw $00F4
|11E0B8| db $00 ; Raw block
|11E0B9| db $7F
|11E0BA| db $23 ; Repeat byte
|11E0BB| db $00
|11E0BC| db $23 ; Repeat byte
|11E0BD| db $01
|11E0BE| db $E0, $3B ; EXT Raw block
|11E0C0| db $03, $03, $07, $07, $0F, $0F, $3F, $3F
|11E0C8| db $FF, $FF, $FE, $FE, $FC, $F8, $F0, $C0
|11E0D0| db $8D, $71, $8B, $73, $57, $27, $B7, $87
|11E0D8| db $D7, $C7, $EB, $C7, $D4, $93, $3B, $B8
|11E0E0| db $02, $04, $88, $48, $28, $10, $28, $44
|11E0E8| db $7E, $3F, $BF, $9E, $BF, $80, $A2, $DC
|11E0F0| db $C5, $B9, $CB, $B3, $57, $A7, $EF, $0F
|11E0F8| db $80, $40, $40, $01
|11E0FC| db $83 ; Copy past
|11E0FD| dw $0040
|11E0FF| db $F0, $2F ; EXT Copy past
|11E101| dw $02A0
|11E103| db $05 ; Raw block
|11E104| db $7F, $80, $CC, $44, $99, $08
|11E10A| db $43 ; Repeat word
|11E10B| dw $10B3
|11E10D| db $08 ; Raw block
|11E10E| db $B1, $10, $B0, $10, $A8, $18, $00, $33
|11E116| db $67
|11E117| db $23 ; Repeat byte
|11E118| db $4F
|11E119| db $03 ; Raw block
|11E11A| db $47, $FB, $26, $E5
|11E11E| db $43 ; Repeat word
|11E11F| dw $FD00
|11E121| db $02 ; Raw block
|11E122| db $3C, $E1, $00
|11E125| db $43 ; Repeat word
|11E126| dw $7E81
|11E128| db $06 ; Raw block
|11E129| db $FF, $00, $58, $5A, $42, $42, $7E
|11E130| db $22 ; Repeat byte
|11E131| db $00
|11E132| db $05 ; Raw block
|11E133| db $80, $7F, $00, $80, $60, $80
|11E139| db $43 ; Repeat word
|11E13A| dw $3FBF
|11E13C| db $0A ; Raw block
|11E13D| db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
|11E145| db $7F, $40, $40
|11E148| db $22 ; Repeat byte
|11E149| db $00
|11E14A| db $03 ; Raw block
|11E14B| db $B5, $42, $E7, $24
|11E14F| db $4A ; Repeat word
|11E150| dw $66A5
|11E152| db $00 ; Raw block
|11E153| db $7E
|11E154| db $26 ; Repeat byte
|11E155| db $18
|11E156| db $00 ; Raw block
|11E157| db $00
|11E158| db $43 ; Repeat word
|11E159| dw $7F80
|11E15B| db $04 ; Raw block
|11E15C| db $C0, $3F, $FF, $40, $BF
|11E161| db $83 ; Copy past
|11E162| dw $0363
|11E164| db $02 ; Raw block
|11E165| db $00, $7F, $80
|11E168| db $27 ; Repeat byte
|11E169| db $00
|11E16A| db $43 ; Repeat word
|11E16B| dw $FE01
|11E16D| db $83 ; Copy past
|11E16E| dw $0266
|11E170| db $01 ; Raw block
|11E171| db $01, $FE
|11E173| db $44 ; Repeat word
|11E174| dw $00FF
|11E176| db $28 ; Repeat byte
|11E177| db $00
|11E178| db $07 ; Raw block
|11E179| db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
|11E181| db $43 ; Repeat word
|11E182| dw $56B2
|11E184| db $07 ; Raw block
|11E185| db $B4, $46, $B0, $5A, $00, $00, $13, $51
|11E18D| db $22 ; Repeat byte
|11E18E| db $49
|11E18F| db $00 ; Raw block
|11E190| db $45
|11E191| db $44 ; Repeat word
|11E192| dw $00FF
|11E194| db $1F ; Raw block
|11E195| db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
|11E19D| db $24, $F0, $30, $00, $7F, $40, $4F, $5E
|11E1A5| db $53, $5B, $4F, $02, $06, $05, $0C, $07
|11E1AD| db $10, $03, $24, $19, $42, $3C, $81, $7E
|11E1B5| db $43 ; Repeat word
|11E1B6| dw $FD00
|11E1B8| db $00 ; Raw block
|11E1B9| db $FB
|11E1BA| db $25 ; Repeat byte
|11E1BB| db $FF
|11E1BC| db $E0, $2F ; EXT Raw block
|11E1BE| db $70, $F7, $40, $DF, $00, $BF, $00, $F6
|11E1C6| db $80, $7A, $87, $5F, $8F, $6F, $F0, $0F
|11E1CE| db $0F, $3F, $7F, $7F, $FF, $F8, $F0, $F0
|11E1D6| db $3E, $BF, $1E, $FF, $08, $7F, $09, $FE
|11E1DE| db $11, $FE, $21, $FA, $C1, $F2, $33, $CC
|11E1E6| db $C0, $E0, $F6, $F7, $EF, $DF, $3F, $33
|11E1EE| db $97 ; Copy past
|11E1EF| dw $0210
|11E1F1| db $05 ; Raw block
|11E1F2| db $00, $FF, $00, $80, $18, $98
|11E1F8| db $43 ; Repeat word
|11E1F9| dw $B939
|11E1FB| db $43 ; Repeat word
|11E1FC| dw $8303
|11E1FE| db $E0, $2D ; EXT Raw block
|11E200| db $11, $91, $00, $7F, $67, $46, $46, $7C
|11E208| db $7C, $6E, $00, $FF, $00, $01, $1C, $1D
|11E210| db $C8, $C9, $E0, $E1, $38, $39, $10, $11
|11E218| db $90, $91, $00, $FE, $E2, $36, $1E, $C6
|11E220| db $EE, $6E, $F0, $F8, $E1, $F1, $CB, $EB
|11E228| db $9F, $DF, $19, $99, $3D, $BD
|11E22E| db $43 ; Repeat word
|11E22F| dw $BF3F
|11E231| db $0F ; Raw block
|11E232| db $07, $0E, $14, $20, $66, $42, $40, $40
|11E23A| db $0D, $1D, $E7, $EF, $F3, $F7, $F1, $F3
|11E242| db $43 ; Repeat word
|11E243| dw $FDFC
|11E245| db $43 ; Repeat word
|11E246| dw $EDEC
|11E248| db $1F ; Raw block
|11E249| db $E2, $10, $08, $0C, $02, $02, $12, $12
|11E251| db $AC, $1C, $B7, $2F, $B8, $37, $9F, $18
|11E259| db $8F, $0F, $FF, $40, $BF, $70, $B9, $68
|11E261| db $43, $40, $40, $60, $70, $3F, $00, $07
|11E269| db $8C ; Copy past
|11E26A| dw $0480
|11E26C| db $02 ; Raw block
|11E26D| db $7F, $80, $7F
|11E270| db $86 ; Copy past
|11E271| dw $0490
|11E273| db $00 ; Raw block
|11E274| db $00
|11E275| db $29 ; Repeat byte
|11E276| db $01
|11E277| db $45 ; Repeat word
|11E278| dw $FFFE
|11E27A| db $24 ; Repeat byte
|11E27B| db $FE
|11E27C| db $22 ; Repeat byte
|11E27D| db $00
|11E27E| db $03 ; Raw block
|11E27F| db $B9, $58, $D9, $38
|11E283| db $47 ; Repeat word
|11E284| dw $7899
|11E286| db $03 ; Raw block
|11E287| db $9E, $7E, $81, $78
|11E28B| db $25 ; Repeat byte
|11E28C| db $07
|11E28D| db $07 ; Raw block
|11E28E| db $01, $07, $FF, $00, $00, $FF, $FE, $FF
|11E296| db $23 ; Repeat byte
|11E297| db $01
|11E298| db $44 ; Repeat word
|11E299| dw $00FE
|11E29B| db $23 ; Repeat byte
|11E29C| db $00
|11E29D| db $01 ; Raw block
|11E29E| db $FE, $FE
|11E2A0| db $22 ; Repeat byte
|11E2A1| db $FF
|11E2A2| db $E0, $54 ; EXT Raw block
|11E2A4| db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
|11E2AC| db $0E, $F3, $1E, $E3, $3F, $C9, $77, $9C
|11E2B4| db $F0, $E0, $C0, $80, $01, $01, $00, $08
|11E2BC| db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
|11E2C4| db $B8, $77, $BF, $38, $80, $1F, $FF, $00
|11E2CC| db $48, $45, $40, $60, $70, $78, $7F, $00
|11E2D4| db $E0, $20, $E6, $26, $F6, $36, $FF, $00
|11E2DC| db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
|11E2E4| db $5F, $59, $49, $7F, $00, $00, $40, $3F
|11E2EC| db $E3, $18, $8C, $73, $18, $E7, $28, $D7
|11E2F4| db $47, $BB, $9D, $7F, $7E
|11E2F9| db $2A ; Repeat byte
|11E2FA| db $FF
|11E2FB| db $E0, $2F ; EXT Raw block
|11E2FD| db $C0, $3F, $8F, $7F, $0F, $EF, $47, $FF
|11E305| db $63, $FF, $7F, $FF, $6D, $ED, $7F, $FF
|11E30D| db $C0, $F0, $70, $38, $1C, $00, $12, $00
|11E315| db $36, $C9, $E0, $FF, $F8, $FF, $F9, $FE
|11E31D| db $99, $9E, $9C, $9F, $FC, $FF, $FE, $FF
|11E325| db $36, $1E, $06, $07, $67, $62, $02, $00
|11E32D| db $97 ; Copy past
|11E32E| dw $0228
|11E330| db $E0, $31 ; EXT Raw block
|11E332| db $38, $B8, $3C, $BC, $26, $A6, $23, $A3
|11E33A| db $26, $A6, $0E, $8E, $00, $80, $00, $FF
|11E342| db $47, $43, $59, $5C, $59, $71, $7F, $00
|11E34A| db $FC, $FD, $1C, $1D, $00, $01, $C0, $C1
|11E352| db $6C, $6D, $EC, $ED, $00, $01, $00, $FF
|11E35A| db $02, $E2, $FE, $3E, $92, $12, $FE, $00
|11E362| db $3F, $BF
|11E364| db $43 ; Repeat word
|11E365| dw $BE3E
|11E367| db $13 ; Raw block
|11E368| db $0F, $4F, $8F, $AF, $83, $93, $E4, $EC
|11E370| db $60, $67, $40, $41, $41, $B0, $50, $6C
|11E378| db $13, $98, $FC, $FD
|11E37C| db $43 ; Repeat word
|11E37D| dw $7D7C
|11E37F| db $11 ; Raw block
|11E380| db $F0, $F2, $F1, $F5, $E1, $E9, $47, $57
|11E388| db $0F, $EF, $02, $82, $82, $0D, $0A, $16
|11E390| db $A8, $10
|11E392| db $FF ; End of GFX 09

;===================================================================================================

GFX_0A:
|11E393| db $0F ; Raw block
|11E394| db $13, $FE, $06, $FD, $2C, $FB, $18, $F7
|11E39C| db $38, $E7, $6C, $DB, $C6, $BD, $83, $7E
|11E3A4| db $27 ; Repeat byte
|11E3A5| db $00
|11E3A6| db $E0, $5A ; EXT Raw block
|11E3A8| db $E6, $00, $D9, $00, $9D, $00, $6E, $00
|11E3B0| db $76, $00, $B9, $00, $9B, $00, $67, $00
|11E3B8| db $E6, $D9, $9D, $6E, $76, $B9, $9B, $67
|11E3C0| db $01, $FC, $23, $F9, $07, $F3, $8F, $E7
|11E3C8| db $17, $CF, $27, $9F, $43, $3F, $81, $7E
|11E3D0| db $02, $04, $08, $10, $20, $40, $80, $01
|11E3D8| db $FD, $FC, $FB, $F9, $D7, $D3, $77, $6F
|11E3E0| db $E0, $D8, $DA, $BC, $ED, $2E, $FE, $7D
|11E3E8| db $02, $04, $28, $90, $27, $43, $91, $02
|11E3F0| db $C1, $7C, $63, $B9, $37, $D3, $9B, $67
|11E3F8| db $C9, $37, $C4, $3B, $FE, $01, $FF, $00
|11E400| db $02, $04, $08
|11E403| db $24 ; Repeat byte
|11E404| db $00
|11E405| db $E0, $2F ; EXT Raw block
|11E407| db $F5, $F3, $CB, $C7, $14, $0C, $24, $18
|11E40F| db $5A, $3C, $E6, $67, $C1, $C1, $03, $01
|11E417| db $0C, $38, $F3, $E7, $C3, $99, $3E, $FE
|11E41F| db $81, $00, $C3, $81, $66, $42, $3C, $24
|11E427| db $18, $00, $3C, $18, $66, $24, $C3, $42
|11E42F| db $81, $C3, $66, $3C, $18, $3C, $66, $C3
|11E437| db $37 ; Repeat byte
|11E438| db $00
|11E439| db $E0, $23 ; EXT Raw block
|11E43B| db $EF, $1C, $DB, $36, $AC, $7B, $72, $CD
|11E443| db $BA, $E5, $4B, $B4, $EB, $14, $EF, $10
|11E44B| db $DF, $B7, $7B, $CD, $E5, $B4, $17, $DB
|11E453| db $FD, $0A, $F6, $29, $DF, $20, $FE, $01
|11E45B| db $FD, $02, $F7, $08
|11E45F| db $44 ; Repeat word
|11E460| dw $00FF
|11E462| db $16 ; Raw block
|11E463| db $A9, $A6, $9F, $FE, $E9, $F3, $FF, $00
|11E46B| db $00, $C3, $3F, $FC, $EF, $F8, $57, $E8
|11E473| db $00, $28, $00, $38, $D7, $FB, $EF
|11E47A| db $23 ; Repeat byte
|11E47B| db $00
|11E47C| db $0D ; Raw block
|11E47D| db $10, $10, $00, $00, $14, $00, $9C, $EB
|11E485| db $FE, $EB, $1E, $F7, $28, $07
|11E48B| db $83 ; Copy past
|11E48C| dw $00FA
|11E48E| db $02 ; Raw block
|11E48F| db $BF, $EF, $08
|11E492| db $22 ; Repeat byte
|11E493| db $00
|11E494| db $83 ; Copy past
|11E495| dw $0104
|11E497| db $E0, $2E ; EXT Raw block
|11E499| db $38, $B9, $0B, $C8, $64, $02, $99, $A7
|11E4A1| db $FB, $E7, $DF, $E3, $35, $4B, $63, $1C
|11E4A9| db $46, $34, $99, $40, $00, $00, $80, $80
|11E4B1| db $18, $D9, $B0, $33, $40, $86, $21, $5D
|11E4B9| db $99, $A5, $9C, $A0, $B2, $CC, $E9, $1E
|11E4C1| db $26, $4C, $39, $82, $42, $43, $01
|11E4C8| db $F0, $2F ; EXT Copy past
|11E4CA| dw $011F
|11E4CC| db $11 ; Raw block
|11E4CD| db $00, $7E, $81, $C3, $7E, $A5, $7E, $A3
|11E4D5| db $7E, $89, $7E, $A1, $7E, $C3, $7E, $7E
|11E4DD| db $81, $00
|11E4DF| db $25 ; Repeat byte
|11E4E0| db $7E
|11E4E1| db $10 ; Raw block
|11E4E2| db $00, $01, $FC, $42, $F9, $37, $F3, $6F
|11E4EA| db $E7, $DB, $C3, $BF, $99, $7D, $3E, $EE
|11E4F2| db $6F
|11E4F3| db $83 ; Copy past
|11E4F4| dw $0040
|11E4F6| db $E0, $33 ; EXT Raw block
|11E4F8| db $24, $42, $81, $10, $38, $BA, $09, $CD
|11E500| db $83, $EB, $C3, $F3, $C3, $EF, $92, $D2
|11E508| db $1E, $9F, $08, $CB, $45, $32, $14, $0C
|11E510| db $10, $2D, $60, $34, $3E, $7F, $9F, $BF
|11E518| db $C3, $D3, $83, $BB, $01, $65, $18, $DA
|11E520| db $08, $B9, $48, $4B, $80, $40, $2C, $44
|11E528| db $9A, $25, $46, $B4
|11E52C| db $F0, $2F ; EXT Copy past
|11E52E| dw $01B0
|11E530| db $E0, $53 ; EXT Raw block
|11E532| db $81, $67, $41, $BD, $23, $5B, $91, $AD
|11E53A| db $E8, $F6, $E4, $EB, $F2, $F5, $F9, $FA
|11E542| db $18, $02, $84, $42, $01, $10, $08, $04
|11E54A| db $F1, $F6, $E2, $ED, $84, $9A, $89, $B5
|11E552| db $13, $6B, $21, $DD, $58, $BE, $BC, $7F
|11E55A| db $08, $10, $61, $42, $84, $02, $01, $00
|11E562| db $DF, $3C, $F9, $76, $FD, $32, $CD, $32
|11E56A| db $A1, $5E, $A7, $58, $8F, $70, $AF, $50
|11E572| db $BD, $76, $32, $32, $5E, $59, $73, $57
|11E57A| db $FF, $00, $BD, $42, $1B, $E4, $CF, $30
|11E582| db $E7, $18, $F3, $0C
|11E586| db $84 ; Copy past
|11E587| dw $00E2
|11E589| db $14 ; Raw block
|11E58A| db $FE, $FD, $3B, $9F, $CF, $EB, $E7, $FC
|11E592| db $EF, $38, $D7, $28, $00, $A9, $46, $FF
|11E59A| db $57, $F8, $6F, $80, $7F
|11E59F| db $23 ; Repeat byte
|11E5A0| db $00
|11E5A1| db $01 ; Raw block
|11E5A2| db $10, $10
|11E5A4| db $23 ; Repeat byte
|11E5A5| db $00
|11E5A6| db $0A ; Raw block
|11E5A7| db $F9, $F7, $1C, $EB, $14, $00, $96, $61
|11E5AF| db $3F, $EB, $FF
|11E5B2| db $83 ; Copy past
|11E5B3| dw $0289
|11E5B5| db $22 ; Repeat byte
|11E5B6| db $00
|11E5B7| db $01 ; Raw block
|11E5B8| db $08, $08
|11E5BA| db $22 ; Repeat byte
|11E5BB| db $00
|11E5BC| db $13 ; Raw block
|11E5BD| db $08, $C3, $3C, $4A, $BC, $22, $5C, $9A
|11E5C5| db $AC, $92, $AC, $9E, $A0, $22, $41, $1D
|11E5CD| db $DC, $00, $01, $81
|11E5D1| db $22 ; Repeat byte
|11E5D2| db $41
|11E5D3| db $19 ; Raw block
|11E5D4| db $9C, $22, $25, $1E, $D1, $CE, $EE, $E0
|11E5DC| db $E9, $E5, $E1, $E9, $C1, $DD, $00, $36
|11E5E4| db $C8, $2B, $C0, $20, $11, $12, $16, $22
|11E5EC| db $C9, $14
|11E5EE| db $92 ; Copy past
|11E5EF| dw $02A0
|11E5F1| db $22 ; Repeat byte
|11E5F2| db $41
|11E5F3| db $99 ; Copy past
|11E5F4| dw $02B6
|11E5F6| db $06 ; Raw block
|11E5F7| db $7F, $80, $E0, $60, $CF, $40, $9B
|11E5FE| db $48 ; Repeat word
|11E5FF| dw $9C08
|11E601| db $02 ; Raw block
|11E602| db $00, $1F, $30
|11E605| db $24 ; Repeat byte
|11E606| db $67
|11E607| db $02 ; Raw block
|11E608| db $FB, $26, $E5
|11E60B| db $43 ; Repeat word
|11E60C| dw $FD00
|11E60E| db $02 ; Raw block
|11E60F| db $3C, $E1, $00
|11E612| db $43 ; Repeat word
|11E613| dw $7E81
|11E615| db $06 ; Raw block
|11E616| db $FF, $00, $58, $5A, $42, $42, $7E
|11E61D| db $22 ; Repeat byte
|11E61E| db $00
|11E61F| db $05 ; Raw block
|11E620| db $80, $7F, $00, $80, $60, $80
|11E626| db $43 ; Repeat word
|11E627| dw $3FBF
|11E629| db $0A ; Raw block
|11E62A| db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
|11E632| db $7F, $40, $40
|11E635| db $22 ; Repeat byte
|11E636| db $00
|11E637| db $03 ; Raw block
|11E638| db $B5, $42, $E7, $24
|11E63C| db $4A ; Repeat word
|11E63D| dw $66A5
|11E63F| db $00 ; Raw block
|11E640| db $7E
|11E641| db $26 ; Repeat byte
|11E642| db $18
|11E643| db $09 ; Raw block
|11E644| db $00, $9C, $7F, $80, $7F, $C0, $3F, $FF
|11E64C| db $40, $B3
|11E64E| db $83 ; Copy past
|11E64F| dw $0363
|11E651| db $02 ; Raw block
|11E652| db $00, $7F, $80
|11E655| db $27 ; Repeat byte
|11E656| db $00
|11E657| db $09 ; Raw block
|11E658| db $01, $FE, $03, $FC, $FF, $00, $9F, $FE
|11E660| db $01, $FE
|11E662| db $44 ; Repeat word
|11E663| dw $00FF
|11E665| db $28 ; Repeat byte
|11E666| db $00
|11E667| db $07 ; Raw block
|11E668| db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
|11E670| db $43 ; Repeat word
|11E671| dw $56B2
|11E673| db $07 ; Raw block
|11E674| db $B4, $46, $B0, $5A, $00, $00, $13, $51
|11E67C| db $22 ; Repeat byte
|11E67D| db $49
|11E67E| db $00 ; Raw block
|11E67F| db $45
|11E680| db $44 ; Repeat word
|11E681| dw $00FF
|11E683| db $1F ; Raw block
|11E684| db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
|11E68C| db $24, $F0, $30, $00, $7F, $40, $4F, $5E
|11E694| db $53, $5B, $4F, $02, $06, $05, $0C, $07
|11E69C| db $10, $03, $24, $19, $42, $3C, $81, $7E
|11E6A4| db $43 ; Repeat word
|11E6A5| dw $FD00
|11E6A7| db $00 ; Raw block
|11E6A8| db $FB
|11E6A9| db $25 ; Repeat byte
|11E6AA| db $FF
|11E6AB| db $E0, $2F ; EXT Raw block
|11E6AD| db $31, $BF, $23, $BF, $07, $BF, $27, $BF
|11E6B5| db $3F, $DE, $0E, $FF, $40, $F9, $3D, $E2
|11E6BD| db $4E, $5C, $78, $58, $61, $71, $3F, $1D
|11E6C5| db $F9, $F6, $E1, $DE, $81, $FE, $09, $FE
|11E6CD| db $0D, $FE, $0F, $FE, $40, $F1, $90, $6F
|11E6D5| db $0F, $3F, $7F, $F7, $F3, $F1, $BE, $90
|11E6DD| db $97 ; Copy past
|11E6DE| dw $0210
|11E6E0| db $14 ; Raw block
|11E6E1| db $FF, $FF, $BF, $BF, $5F, $7F, $39, $F9
|11E6E9| db $E0, $F1, $EE, $FF, $F0, $FE, $FD, $FD
|11E6F1| db $00, $40, $80, $06, $0E
|11E6F6| db $62 ; Increment fill
|11E6F7| db $00
|11E6F8| db $15 ; Raw block
|11E6F9| db $E0, $E3, $D1, $DF, $AF, $BF, $47, $67
|11E701| db $27, $7F, $3E, $7E, $BE, $FF, $7F, $FF
|11E709| db $1C, $20, $40, $98, $80, $81
|11E70F| db $83 ; Copy past
|11E710| dw $011E
|11E712| db $E0, $3E ; EXT Raw block
|11E714| db $08, $CB, $00, $66, $81, $BD, $C3, $DB
|11E71C| db $C1, $DD, $83, $B3, $0E, $6E, $46, $34
|11E724| db $99, $42, $24, $22, $4C, $91, $3E, $FF
|11E72C| db $1F, $9F, $1B, $DB, $03, $63, $81, $B9
|11E734| db $80, $BC, $00, $66, $08, $CB, $00, $60
|11E73C| db $24, $9C, $46, $43, $99, $34, $9B, $08
|11E744| db $9F, $0F, $99, $0F, $8F, $10, $C0, $40
|11E74C| db $FF, $60, $BF, $70, $9C, $6C, $67
|11E753| db $22 ; Repeat byte
|11E754| db $60
|11E755| db $03 ; Raw block
|11E756| db $3F, $1F, $00, $03
|11E75A| db $8C ; Copy past
|11E75B| dw $0480
|11E75D| db $03 ; Raw block
|11E75E| db $7F, $9C, $7F, $67
|11E762| db $22 ; Repeat byte
|11E763| db $60
|11E764| db $04 ; Raw block
|11E765| db $3F, $1F, $00, $00, $9F
|11E76A| db $26 ; Repeat byte
|11E76B| db $01
|11E76C| db $01 ; Raw block
|11E76D| db $33, $33
|11E76F| db $43 ; Repeat word
|11E770| dw $FFFE
|11E772| db $01 ; Raw block
|11E773| db $CE, $FF
|11E775| db $23 ; Repeat byte
|11E776| db $FE
|11E777| db $00 ; Raw block
|11E778| db $CC
|11E779| db $22 ; Repeat byte
|11E77A| db $00
|11E77B| db $05 ; Raw block
|11E77C| db $B1, $50, $D9, $38, $9B, $78
|11E782| db $43 ; Repeat word
|11E783| dw $7093
|11E785| db $13 ; Raw block
|11E786| db $99, $78, $9E, $7E, $81, $78, $0F, $07
|11E78E| db $07, $0F, $0F, $07, $01, $07, $FF, $00
|11E796| db $00, $FF, $FE, $FF
|11E79A| db $23 ; Repeat byte
|11E79B| db $01
|11E79C| db $00 ; Raw block
|11E79D| db $F3
|11E79E| db $44 ; Repeat word
|11E79F| dw $FF01
|11E7A1| db $22 ; Repeat byte
|11E7A2| db $00
|11E7A3| db $24 ; Repeat byte
|11E7A4| db $FE
|11E7A5| db $E0, $54 ; EXT Raw block
|11E7A7| db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
|11E7AF| db $0E, $F3, $1E, $E3, $3F, $C9, $77, $9C
|11E7B7| db $F0, $E0, $C0, $80, $01, $01, $00, $08
|11E7BF| db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
|11E7C7| db $B8, $77, $BF, $38, $80, $1F, $FF, $00
|11E7CF| db $48, $45, $40, $60, $70, $78, $7F, $00
|11E7D7| db $E0, $20, $E6, $26, $F6, $36, $FF, $00
|11E7DF| db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
|11E7E7| db $5F, $59, $49, $7F, $00, $00, $40, $3F
|11E7EF| db $E3, $18, $8C, $73, $18, $E7, $28, $D7
|11E7F7| db $47, $BB, $9D, $7F, $7E
|11E7FC| db $2A ; Repeat byte
|11E7FD| db $FF
|11E7FE| db $E0, $2F ; EXT Raw block
|11E800| db $39, $C6, $00, $F1, $3E, $DF, $27, $BE
|11E808| db $03, $BF, $23, $BF, $38, $B7, $3F, $BF
|11E810| db $39, $7F, $61, $59, $78, $5C, $4F, $40
|11E818| db $80, $7F, $01, $82, $79, $FE, $38, $FF
|11E820| db $18, $FF, $8D, $FE, $E2, $DF, $F8, $F7
|11E828| db $80, $FF, $87, $C6, $E6, $73, $3C, $0F
|11E830| db $97 ; Copy past
|11E831| dw $0228
|11E833| db $00 ; Raw block
|11E834| db $E2
|11E835| db $84 ; Copy past
|11E836| dw $0439
|11E838| db $06 ; Raw block
|11E839| db $5F, $7F, $30, $79, $31, $7F, $3F
|11E840| db $85 ; Copy past
|11E841| dw $0445
|11E843| db $E0, $29 ; EXT Raw block
|11E845| db $80, $86, $80, $00, $00, $E7, $E7, $8B
|11E84D| db $CF, $9B, $DF, $C7, $FF, $FC, $FD, $FD
|11E855| db $FF, $9E, $DE, $CC, $FD, $18, $30, $20
|11E85D| db $00, $02, $00, $21, $02, $1C, $DD, $18
|11E865| db $DB, $00, $66, $83, $BF, $C1, $DD, $E0
|11E86D| db $E6, $F8
|11E86F| db $62 ; Increment fill
|11E870| db $FB
|11E871| db $11 ; Raw block
|11E872| db $22, $24, $99, $40, $22, $19, $04, $02
|11E87A| db $3C, $BD, $78, $7B, $F0, $F6, $21, $ED
|11E882| db $21, $29
|11E884| db $83 ; Copy past
|11E885| dw $02C2
|11E887| db $09 ; Raw block
|11E888| db $08, $EB, $42, $84, $09, $12, $D6, $22
|11E890| db $C9, $14
|11E892| db $FF ; End of GFX 0A

;===================================================================================================

GFX_0B:
|11E893| db $0F ; Raw block
|11E894| db $13, $FE, $06, $FD, $2C, $FB, $18, $F7
|11E89C| db $38, $E7, $6C, $DB, $C6, $BD, $83, $7E
|11E8A4| db $28 ; Repeat byte
|11E8A5| db $00
|11E8A6| db $04 ; Raw block
|11E8A7| db $DF, $00, $63, $00, $DD
|11E8AC| db $44 ; Repeat word
|11E8AD| dw $BE00
|11E8AF| db $04 ; Raw block
|11E8B0| db $BD, $00, $C3, $00, $7D
|11E8B5| db $27 ; Repeat byte
|11E8B6| db $00
|11E8B7| db $E0, $42 ; EXT Raw block
|11E8B9| db $01, $FC, $23, $F9, $07, $F3, $8F, $E7
|11E8C1| db $17, $CF, $27, $9F, $43, $3F, $81, $7E
|11E8C9| db $02, $04, $08, $10, $20, $40, $80, $01
|11E8D1| db $FD, $FC, $FB, $F9, $D7, $D3, $77, $6F
|11E8D9| db $E0, $D8, $DA, $BC, $ED, $2E, $FE, $7D
|11E8E1| db $02, $04, $28, $90, $27, $43, $91, $02
|11E8E9| db $C1, $7C, $63, $B9, $37, $D3, $9B, $67
|11E8F1| db $C9, $37, $C4, $3B, $FE, $01, $FF, $00
|11E8F9| db $02, $04, $08
|11E8FC| db $24 ; Repeat byte
|11E8FD| db $00
|11E8FE| db $17 ; Raw block
|11E8FF| db $F5, $F3, $CB, $C7, $14, $0C, $24, $18
|11E907| db $5A, $3C, $E6, $67, $C1, $C1, $03, $01
|11E90F| db $0C, $38, $F3, $E7, $C3, $99, $3E, $FE
|11E917| db $4F ; Repeat word
|11E918| dw $00FF
|11E91A| db $27 ; Repeat byte
|11E91B| db $FF
|11E91C| db $37 ; Repeat byte
|11E91D| db $00
|11E91E| db $E0, $29 ; EXT Raw block
|11E920| db $FD, $7D, $F3, $33, $FF, $DF, $7F, $6F
|11E928| db $3E, $26, $3E, $22, $3F, $2D, $F1, $D0
|11E930| db $02, $0C, $00, $80, $C1, $C1, $C0, $0E
|11E938| db $6F, $60, $AB, $84, $74, $03, $F7, $08
|11E940| db $EC, $10, $1B, $E0, $FB, $04, $88, $07
|11E948| db $9F, $7F
|11E94A| db $25 ; Repeat byte
|11E94B| db $FF
|11E94C| db $E0, $3F ; EXT Raw block
|11E94E| db $41, $7F, $A2, $BE, $DC, $DC, $E0, $E0
|11E956| db $7E, $FF, $BD, $FF, $5A, $7E, $A4, $BC
|11E95E| db $80, $41, $23, $1F, $00, $00, $81, $43
|11E966| db $3F, $3F, $F7, $F7, $FD, $FF, $71, $7F
|11E96E| db $3F, $3F, $01, $01, $7C, $7C, $FA, $FE
|11E976| db $C0, $08, $00, $80, $C0, $FE, $83, $01
|11E97E| db $7F, $FF, $77, $FF, $23, $FF, $B7, $7F
|11E986| db $5F, $3F, $6E, $1F, $B1, $8E, $DF, $C0
|11E98E| db $23 ; Repeat byte
|11E98F| db $00
|11E990| db $13 ; Raw block
|11E991| db $80, $80, $40, $20, $7E, $FF, $FE, $7F
|11E999| db $BD, $7E, $52, $3D, $6D, $91, $B3, $43
|11E9A1| db $2C, $CF, $EC, $0F
|11E9A5| db $22 ; Repeat byte
|11E9A6| db $00
|11E9A7| db $04 ; Raw block
|11E9A8| db $80, $02, $0C, $10, $10
|11E9AD| db $8F ; Copy past
|11E9AE| dw $0120
|11E9B0| db $23 ; Repeat byte
|11E9B1| db $00
|11E9B2| db $93 ; Copy past
|11E9B3| dw $0134
|11E9B5| db $22 ; Repeat byte
|11E9B6| db $00
|11E9B7| db $84 ; Copy past
|11E9B8| dw $014B
|11E9BA| db $14 ; Raw block
|11E9BB| db $05, $C7, $7A, $FB, $6C, $ED, $7C, $FD
|11E9C3| db $74, $F5, $6E, $FF, $3C, $FF, $00, $FF
|11E9CB| db $38, $04, $12, $02, $0A
|11E9D0| db $22 ; Repeat byte
|11E9D1| db $00
|11E9D2| db $0F ; Raw block
|11E9D3| db $01, $FC, $42, $F9, $37, $F3, $6F, $E7
|11E9DB| db $DB, $C3, $BF, $99, $7D, $3E, $EE, $6F
|11E9E3| db $83 ; Copy past
|11E9E4| dw $0040
|11E9E6| db $E0, $2B ; EXT Raw block
|11E9E8| db $24, $42, $81, $10, $EF, $EF, $D7, $F7
|11E9F0| db $C7, $FF, $F8, $F8, $F3, $F3, $E7, $F7
|11E9F8| db $66, $77, $A6, $B7, $10, $08, $00, $07
|11EA00| db $0C, $08, $88, $48, $BD, $FF, $D1, $FF
|11EA08| db $E7, $FF, $1F, $1F, $EF, $EF, $E6, $EE
|11EA10| db $ED, $E5, $ED, $E7
|11EA14| db $22 ; Repeat byte
|11EA15| db $00
|11EA16| db $00 ; Raw block
|11EA17| db $E0
|11EA18| db $62 ; Increment fill
|11EA19| db $10
|11EA1A| db $F0, $28 ; EXT Copy past
|11EA1C| dw $01AF
|11EA1E| db $22 ; Repeat byte
|11EA1F| db $00
|11EA20| db $00 ; Raw block
|11EA21| db $E0
|11EA22| db $62 ; Increment fill
|11EA23| db $10
|11EA24| db $0D ; Raw block
|11EA25| db $10, $A3, $BB, $B0, $AC, $38, $77, $7F
|11EA2D| db $F8, $F1, $F1, $F5, $FD, $B1
|11EA33| db $22 ; Repeat byte
|11EA34| db $FF
|11EA35| db $E0, $32 ; EXT Raw block
|11EA37| db $44, $43, $80, $00, $0E, $02, $00, $00
|11EA3F| db $CD, $C7, $0D, $17, $1D, $EF, $FE, $1F
|11EA47| db $F3, $F3, $CD, $ED, $9E, $DE, $9E, $DF
|11EA4F| db $30, $E0, $00, $00, $0C, $12, $21, $20
|11EA57| db $FC, $FC, $F8, $F8, $14, $10, $04, $00
|11EA5F| db $13, $00, $30, $00, $E7, $07, $0B, $08
|11EA67| db $03, $07, $EF
|11EA6A| db $22 ; Repeat byte
|11EA6B| db $FF
|11EA6C| db $11 ; Raw block
|11EA6D| db $F8, $F7, $44, $33, $83, $7C, $04, $FF
|11EA75| db $8E, $FF, $FD, $FF, $C3, $FF, $FF, $7F
|11EA7D| db $FF, $1F
|11EA7F| db $27 ; Repeat byte
|11EA80| db $FF
|11EA81| db $10 ; Raw block
|11EA82| db $C1, $C1, $D7, $DF, $57, $DF, $51, $DF
|11EA8A| db $5E, $DF, $41, $C1, $BC, $BC, $43, $7F
|11EA92| db $3E
|11EA93| db $23 ; Repeat byte
|11EA94| db $20
|11EA95| db $06 ; Raw block
|11EA96| db $3E, $43, $80, $F9, $FD, $F5, $FD
|11EA9D| db $43 ; Repeat word
|11EA9E| dw $FBEA
|11EAA0| db $09 ; Raw block
|11EAA1| db $DA, $FB, $22, $E3, $D9, $D9, $3C, $3C
|11EAA9| db $02, $02
|11EAAB| db $22 ; Repeat byte
|11EAAC| db $04
|11EAAD| db $08 ; Raw block
|11EAAE| db $1C, $26, $C3, $EA, $E4, $2D, $F1, $13
|11EAB6| db $E3
|11EAB7| db $43 ; Repeat word
|11EAB8| dw $E7D7
|11EABA| db $E0, $25 ; EXT Raw block
|11EABC| db $A9, $CF, $58, $9F, $3E, $BE, $11, $02
|11EAC4| db $0C, $08, $08, $10, $20, $41, $3F, $0F
|11EACC| db $D3, $CF, $FD, $C3, $A3, $C1, $AA, $C9
|11EAD4| db $42, $99, $8D, $3C, $FC, $7D, $C0, $20
|11EADC| db $00, $1C, $14, $24, $42, $02
|11EAE2| db $85 ; Copy past
|11EAE3| dw $02A0
|11EAE5| db $43 ; Repeat word
|11EAE6| dw $E7D7
|11EAE8| db $F0, $25 ; EXT Copy past
|11EAEA| dw $02AA
|11EAEC| db $06 ; Raw block
|11EAED| db $7F, $80, $E0, $60, $CF, $40, $9B
|11EAF4| db $48 ; Repeat word
|11EAF5| dw $9C08
|11EAF7| db $02 ; Raw block
|11EAF8| db $00, $1F, $30
|11EAFB| db $24 ; Repeat byte
|11EAFC| db $67
|11EAFD| db $02 ; Raw block
|11EAFE| db $FB, $26, $E5
|11EB01| db $43 ; Repeat word
|11EB02| dw $FD00
|11EB04| db $02 ; Raw block
|11EB05| db $3C, $E1, $00
|11EB08| db $43 ; Repeat word
|11EB09| dw $7E81
|11EB0B| db $06 ; Raw block
|11EB0C| db $FF, $00, $58, $5A, $42, $42, $7E
|11EB13| db $22 ; Repeat byte
|11EB14| db $00
|11EB15| db $05 ; Raw block
|11EB16| db $80, $7F, $00, $80, $60, $80
|11EB1C| db $43 ; Repeat word
|11EB1D| dw $3FBF
|11EB1F| db $0A ; Raw block
|11EB20| db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
|11EB28| db $7F, $40, $40
|11EB2B| db $22 ; Repeat byte
|11EB2C| db $00
|11EB2D| db $03 ; Raw block
|11EB2E| db $B5, $42, $E7, $24
|11EB32| db $4A ; Repeat word
|11EB33| dw $66A5
|11EB35| db $00 ; Raw block
|11EB36| db $7E
|11EB37| db $26 ; Repeat byte
|11EB38| db $18
|11EB39| db $09 ; Raw block
|11EB3A| db $00, $9C, $7F, $80, $7F, $C0, $3F, $FF
|11EB42| db $40, $B3
|11EB44| db $83 ; Copy past
|11EB45| dw $0363
|11EB47| db $02 ; Raw block
|11EB48| db $00, $7F, $80
|11EB4B| db $27 ; Repeat byte
|11EB4C| db $00
|11EB4D| db $09 ; Raw block
|11EB4E| db $01, $FE, $03, $FC, $FF, $00, $9F, $FE
|11EB56| db $01, $FE
|11EB58| db $44 ; Repeat word
|11EB59| dw $00FF
|11EB5B| db $28 ; Repeat byte
|11EB5C| db $00
|11EB5D| db $07 ; Raw block
|11EB5E| db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
|11EB66| db $43 ; Repeat word
|11EB67| dw $56B2
|11EB69| db $07 ; Raw block
|11EB6A| db $B4, $46, $B0, $5A, $00, $00, $13, $51
|11EB72| db $22 ; Repeat byte
|11EB73| db $49
|11EB74| db $00 ; Raw block
|11EB75| db $45
|11EB76| db $44 ; Repeat word
|11EB77| dw $00FF
|11EB79| db $1F ; Raw block
|11EB7A| db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
|11EB82| db $24, $F0, $30, $00, $7F, $40, $4F, $5E
|11EB8A| db $53, $5B, $4F, $02, $06, $05, $0C, $07
|11EB92| db $10, $03, $24, $19, $42, $3C, $81, $7E
|11EB9A| db $43 ; Repeat word
|11EB9B| dw $FD00
|11EB9D| db $00 ; Raw block
|11EB9E| db $FB
|11EB9F| db $25 ; Repeat byte
|11EBA0| db $FF
|11EBA1| db $04 ; Raw block
|11EBA2| db $2D, $BF, $00, $BF, $12
|11EBA7| db $44 ; Repeat word
|11EBA8| dw $00FF
|11EBAA| db $E0, $25 ; EXT Raw block
|11EBAC| db $0C, $FF, $0C, $BF, $12, $ED, $52, $7F
|11EBB4| db $6D, $4C, $5E, $73, $73, $12, $FC, $FD
|11EBBC| db $E0, $FD, $4C, $FD, $51, $FE, $61, $FE
|11EBC4| db $41, $F2, $01, $22, $23, $DC, $02, $1E
|11EBCC| db $B2, $AF, $9F, $BF, $FF, $23
|11EBD2| db $8C ; Copy past
|11EBD3| dw $0210
|11EBD5| db $22 ; Repeat byte
|11EBD6| db $FF
|11EBD7| db $87 ; Copy past
|11EBD8| dw $0220
|11EBDA| db $00 ; Raw block
|11EBDB| db $E9
|11EBDC| db $62 ; Increment fill
|11EBDD| db $E9
|11EBDE| db $E0, $43 ; EXT Raw block
|11EBE0| db $E4, $E6, $E9, $ED, $D1, $D9, $A5, $B5
|11EBE8| db $45, $65, $15, $D5, $16, $14, $19, $12
|11EBF0| db $26, $4A, $9A, $2A, $25, $A5, $47, $C7
|11EBF8| db $27, $67, $95, $B5, $89, $B9, $C5, $DD
|11EC00| db $EA, $EE, $D8, $DF, $5A, $38, $98, $4A
|11EC08| db $46, $22, $11, $20, $EF, $EF, $D4, $F4
|11EC10| db $D4, $F7, $EF, $FF, $FC, $FC, $F3, $F3
|11EC18| db $6F, $7F, $AD, $BF, $10, $0B, $08, $00
|11EC20| db $03, $0C, $80, $40
|11EC24| db $84 ; Copy past
|11EC25| dw $01C8
|11EC27| db $22 ; Repeat byte
|11EC28| db $FF
|11EC29| db $07 ; Raw block
|11EC2A| db $1F, $1F, $EE, $EE, $BD, $FD, $F5, $FF
|11EC32| db $23 ; Repeat byte
|11EC33| db $00
|11EC34| db $14 ; Raw block
|11EC35| db $E0, $11, $02, $00, $9B, $08, $9F, $0F
|11EC3D| db $99, $0F, $8F, $10, $C0, $40, $FF, $60
|11EC45| db $BF, $70, $9C, $6C, $67
|11EC4A| db $22 ; Repeat byte
|11EC4B| db $60
|11EC4C| db $03 ; Raw block
|11EC4D| db $3F, $1F, $00, $03
|11EC51| db $8C ; Copy past
|11EC52| dw $0480
|11EC54| db $03 ; Raw block
|11EC55| db $7F, $9C, $7F, $67
|11EC59| db $22 ; Repeat byte
|11EC5A| db $60
|11EC5B| db $04 ; Raw block
|11EC5C| db $3F, $1F, $00, $00, $9F
|11EC61| db $26 ; Repeat byte
|11EC62| db $01
|11EC63| db $01 ; Raw block
|11EC64| db $33, $33
|11EC66| db $43 ; Repeat word
|11EC67| dw $FFFE
|11EC69| db $01 ; Raw block
|11EC6A| db $CE, $FF
|11EC6C| db $23 ; Repeat byte
|11EC6D| db $FE
|11EC6E| db $00 ; Raw block
|11EC6F| db $CC
|11EC70| db $22 ; Repeat byte
|11EC71| db $00
|11EC72| db $05 ; Raw block
|11EC73| db $B1, $50, $D9, $38, $9B, $78
|11EC79| db $43 ; Repeat word
|11EC7A| dw $7093
|11EC7C| db $13 ; Raw block
|11EC7D| db $99, $78, $9E, $7E, $81, $78, $0F, $07
|11EC85| db $07, $0F, $0F, $07, $01, $07, $FF, $00
|11EC8D| db $00, $FF, $FE, $FF
|11EC91| db $23 ; Repeat byte
|11EC92| db $01
|11EC93| db $00 ; Raw block
|11EC94| db $F3
|11EC95| db $44 ; Repeat word
|11EC96| dw $FF01
|11EC98| db $22 ; Repeat byte
|11EC99| db $00
|11EC9A| db $24 ; Repeat byte
|11EC9B| db $FE
|11EC9C| db $E0, $54 ; EXT Raw block
|11EC9E| db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
|11ECA6| db $0E, $F3, $1E, $E3, $3F, $C9, $77, $9C
|11ECAE| db $F0, $E0, $C0, $80, $01, $01, $00, $08
|11ECB6| db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
|11ECBE| db $B8, $77, $BF, $38, $80, $1F, $FF, $00
|11ECC6| db $48, $45, $40, $60, $70, $78, $7F, $00
|11ECCE| db $E0, $20, $E6, $26, $F6, $36, $FF, $00
|11ECD6| db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
|11ECDE| db $5F, $59, $49, $7F, $00, $00, $40, $3F
|11ECE6| db $E3, $18, $8C, $73, $18, $E7, $28, $D7
|11ECEE| db $47, $BB, $9D, $7F, $7E
|11ECF3| db $2A ; Repeat byte
|11ECF4| db $FF
|11ECF5| db $04 ; Raw block
|11ECF6| db $1E, $E1, $00, $9E, $2D
|11ECFB| db $44 ; Repeat word
|11ECFC| dw $3FBF
|11ECFE| db $19 ; Raw block
|11ECFF| db $37, $B7, $33, $B3, $3F, $BF, $1E, $7F
|11ED07| db $52, $40, $40, $48, $4C, $40, $27, $D8
|11ED0F| db $01, $26, $C1, $FE, $E9, $D6, $B9, $BE
|11ED17| db $39, $3E
|11ED19| db $43 ; Repeat word
|11ED1A| dw $FEF9
|11ED1C| db $07 ; Raw block
|11ED1D| db $27, $FF, $3F, $3F, $45, $C5, $03, $01
|11ED25| db $97 ; Copy past
|11ED26| dw $0228
|11ED28| db $0C ; Raw block
|11ED29| db $15, $D5, $27, $67, $17, $37, $CA, $DA
|11ED31| db $C5, $CD, $E2, $E7, $E8
|11ED36| db $62 ; Increment fill
|11ED37| db $EB
|11ED38| db $11 ; Raw block
|11ED39| db $2A, $98, $C8, $25, $32, $18, $14, $12
|11ED41| db $D0, $D8, $A0, $B0, $45, $65, $85, $C5
|11ED49| db $25, $A5
|11ED4B| db $23 ; Repeat byte
|11ED4C| db $65
|11ED4D| db $09 ; Raw block
|11ED4E| db $25, $A5, $27, $4F, $9A, $3A, $5A, $9A
|11ED56| db $9A, $5A
|11ED58| db $43 ; Repeat word
|11ED59| dw $FFD7
|11ED5B| db $03 ; Raw block
|11ED5C| db $B7, $FF, $78, $FF
|11ED60| db $84 ; Copy past
|11ED61| dw $0218
|11ED63| db $22 ; Repeat byte
|11ED64| db $FF
|11ED65| db $23 ; Repeat byte
|11ED66| db $00
|11ED67| db $83 ; Copy past
|11ED68| dw $0224
|11ED6A| db $43 ; Repeat word
|11ED6B| dw $FFF5
|11ED6D| db $03 ; Raw block
|11ED6E| db $ED, $FF, $1E, $FF
|11ED72| db $87 ; Copy past
|11ED73| dw $0230
|11ED75| db $23 ; Repeat byte
|11ED76| db $00
|11ED77| db $03 ; Raw block
|11ED78| db $0C, $12, $21, $20
|11ED7C| db $FF ; End of GFX 0B

;===================================================================================================

GFX_0C:
|11ED7D| db $0F ; Raw block
|11ED7E| db $13, $FE, $06, $FD, $2C, $FB, $18, $F7
|11ED86| db $38, $E7, $6C, $DB, $C6, $BD, $83, $7E
|11ED8E| db $28 ; Repeat byte
|11ED8F| db $00
|11ED90| db $0E ; Raw block
|11ED91| db $F7, $00, $C7, $00, $B7, $00, $78, $00
|11ED99| db $FE, $00, $3E, $00, $DD, $00, $EB
|11EDA0| db $27 ; Repeat byte
|11EDA1| db $00
|11EDA2| db $E0, $42 ; EXT Raw block
|11EDA4| db $01, $FC, $23, $F9, $07, $F3, $8F, $E7
|11EDAC| db $17, $CF, $27, $9F, $43, $3F, $81, $7E
|11EDB4| db $02, $04, $08, $10, $20, $40, $80, $01
|11EDBC| db $FD, $FC, $FB, $F9, $D7, $D3, $77, $6F
|11EDC4| db $E0, $D8, $DA, $BC, $ED, $2E, $FE, $7D
|11EDCC| db $02, $04, $28, $90, $27, $43, $91, $02
|11EDD4| db $C1, $7C, $63, $B9, $37, $D3, $9B, $67
|11EDDC| db $C9, $37, $C4, $3B, $FE, $01, $FF, $00
|11EDE4| db $02, $04, $08
|11EDE7| db $24 ; Repeat byte
|11EDE8| db $00
|11EDE9| db $17 ; Raw block
|11EDEA| db $F5, $F3, $CB, $C7, $14, $0C, $24, $18
|11EDF2| db $5A, $3C, $E6, $67, $C1, $C1, $03, $01
|11EDFA| db $0C, $38, $F3, $E7, $C3, $99, $3E, $FE
|11EE02| db $4F ; Repeat word
|11EE03| dw $00FF
|11EE05| db $28 ; Repeat byte
|11EE06| db $FF
|11EE07| db $E0, $3A ; EXT Raw block
|11EE09| db $00, $CF, $30, $8F, $70, $87, $78, $E3
|11EE11| db $1C, $F1, $0E, $B9, $46, $FF, $00, $CF
|11EE19| db $B7, $77, $7B, $9D, $0E, $56, $19, $EF
|11EE21| db $1C, $DB, $36, $AC, $7B, $72, $CD, $BA
|11EE29| db $E5, $4B, $B4, $EB, $14, $EF, $10, $DF
|11EE31| db $B7, $7B, $CD, $E5, $B4, $17, $DB, $FD
|11EE39| db $0A, $F6, $29, $DF, $20, $FE, $01, $FD
|11EE41| db $02, $F7, $08
|11EE44| db $44 ; Repeat word
|11EE45| dw $00FF
|11EE47| db $E0, $66 ; EXT Raw block
|11EE49| db $A9, $A6, $9F, $FE, $E9, $F3, $FF, $B9
|11EE51| db $B9, $F6, $F7, $C4, $C6, $E9, $ED, $D3
|11EE59| db $DB, $A7, $B7, $4F, $6F, $9F, $DF, $46
|11EE61| db $08, $39, $12, $24, $48, $90, $20, $7F
|11EE69| db $FF, $5F, $DF, $2B, $6B, $93, $B3, $A9
|11EE71| db $B9, $D5, $DD, $EA, $EE, $D9, $DF, $00
|11EE79| db $20, $94, $4C, $46, $22, $11, $20, $60
|11EE81| db $EE, $30, $F0, $80, $FF, $BF, $80, $23
|11EE89| db $40, $41, $8E, $CF, $1E, $9E, $3E, $11
|11EE91| db $0F, $00, $40, $9C, $30, $20, $41, $40
|11EE99| db $1D, $40, $83, $C5, $3B, $FB, $07, $8B
|11EEA1| db $13, $80, $04, $80, $2B, $A0, $31, $A2
|11EEA9| db $3C, $00, $00, $64, $7B, $54, $4E
|11EEB0| db $F0, $2F ; EXT Copy past
|11EEB2| dw $0120
|11EEB4| db $10 ; Raw block
|11EEB5| db $7E, $81, $C3, $7E, $A5, $7E, $A3, $7E
|11EEBD| db $89, $7E, $A1, $7E, $C3, $7E, $7E, $81
|11EEC5| db $00
|11EEC6| db $25 ; Repeat byte
|11EEC7| db $7E
|11EEC8| db $10 ; Raw block
|11EEC9| db $00, $01, $FC, $42, $F9, $37, $F3, $6F
|11EED1| db $E7, $DB, $C3, $BF, $99, $7D, $3E, $EE
|11EED9| db $6F
|11EEDA| db $83 ; Copy past
|11EEDB| dw $0040
|11EEDD| db $0E ; Raw block
|11EEDE| db $24, $42, $81, $10, $60, $71, $00, $9F
|11EEE6| db $80, $E0, $80, $CE, $0E, $9E, $1E
|11EEED| db $22 ; Repeat byte
|11EEEE| db $3E
|11EEEF| db $E0, $21 ; EXT Raw block
|11EEF1| db $08, $08, $8E, $60, $1F, $31, $61, $C1
|11EEF9| db $C1, $F7, $FC, $FC, $1C, $FD, $01, $13
|11EF01| db $03, $DF, $C0, $EF, $E1, $F0, $F1, $FC
|11EF09| db $79, $78, $03, $02, $EC, $20, $10, $0E
|11EF11| db $02, $86
|11EF13| db $8A ; Copy past
|11EF14| dw $01B0
|11EF16| db $22 ; Repeat byte
|11EF17| db $3E
|11EF18| db $F0, $21 ; EXT Copy past
|11EF1A| dw $01BE
|11EF1C| db $E0, $53 ; EXT Raw block
|11EF1E| db $00, $E3, $03, $F3, $C3, $3B, $23, $1B
|11EF26| db $10, $8C, $88, $C7, $C8, $E7, $E7, $E0
|11EF2E| db $1C, $0C, $04, $C4, $63, $30, $10, $18
|11EF36| db $11, $12, $01, $C6, $C3, $CC, $04, $18
|11EF3E| db $08, $31, $11, $E1, $21, $C5, $C4, $24
|11EF46| db $EC, $38, $30, $E3, $C6, $0E, $1A, $1B
|11EF4E| db $DF, $3C, $F9, $76, $FD, $32, $CD, $32
|11EF56| db $A1, $5E, $A7, $58, $8F, $70, $AF, $50
|11EF5E| db $BD, $76, $32, $32, $5E, $59, $73, $57
|11EF66| db $FF, $00, $BD, $42, $1B, $E4, $CF, $30
|11EF6E| db $E7, $18, $F3, $0C
|11EF72| db $84 ; Copy past
|11EF73| dw $00E2
|11EF75| db $E0, $28 ; EXT Raw block
|11EF77| db $FE, $FD, $3B, $9F, $CF, $EB, $E7, $07
|11EF7F| db $C7, $27, $67, $97, $B7, $C8, $D8, $C5
|11EF87| db $CD, $F2, $F7, $B8, $BB, $FC, $FD, $38
|11EF8F| db $98, $48, $27, $32, $08, $44, $02, $90
|11EF97| db $99, $A2, $B2, $4F, $6F, $8F, $CF, $0F
|11EF9F| db $8F
|11EFA0| db $23 ; Repeat byte
|11EFA1| db $79
|11EFA2| db $E0, $39 ; EXT Raw block
|11EFA4| db $3F, $BF, $66, $4D, $90, $30, $70, $86
|11EFAC| db $86, $40, $BE, $3E, $88, $48, $C0, $33
|11EFB4| db $22, $1A, $13, $8B, $80, $C8, $C0, $EF
|11EFBC| db $E7, $E0, $41, $37, $0C, $C5, $64, $37
|11EFC4| db $10, $18, $D0, $9D, $58, $1B, $50, $16
|11EFCC| db $60, $8C, $38, $46, $34, $43, $60, $83
|11EFD4| db $C4, $25, $22, $A4, $A9, $13, $81, $88
|11EFDC| db $1C, $1A
|11EFDE| db $F0, $2F ; EXT Copy past
|11EFE0| dw $02A0
|11EFE2| db $06 ; Raw block
|11EFE3| db $7F, $80, $E0, $60, $CF, $40, $9B
|11EFEA| db $48 ; Repeat word
|11EFEB| dw $9C08
|11EFED| db $02 ; Raw block
|11EFEE| db $00, $1F, $30
|11EFF1| db $24 ; Repeat byte
|11EFF2| db $67
|11EFF3| db $02 ; Raw block
|11EFF4| db $FB, $26, $E5
|11EFF7| db $43 ; Repeat word
|11EFF8| dw $FD00
|11EFFA| db $02 ; Raw block
|11EFFB| db $3C, $E1, $00
|11EFFE| db $43 ; Repeat word
|11EFFF| dw $7E81
|11F001| db $06 ; Raw block
|11F002| db $FF, $00, $58, $5A, $42, $42, $7E
|11F009| db $22 ; Repeat byte
|11F00A| db $00
|11F00B| db $05 ; Raw block
|11F00C| db $80, $7F, $00, $80, $60, $80
|11F012| db $43 ; Repeat word
|11F013| dw $3FBF
|11F015| db $0A ; Raw block
|11F016| db $C0, $7F, $80, $7F, $FF, $00, $00, $7F
|11F01E| db $7F, $40, $40
|11F021| db $22 ; Repeat byte
|11F022| db $00
|11F023| db $03 ; Raw block
|11F024| db $B5, $42, $E7, $24
|11F028| db $4A ; Repeat word
|11F029| dw $66A5
|11F02B| db $00 ; Raw block
|11F02C| db $7E
|11F02D| db $26 ; Repeat byte
|11F02E| db $18
|11F02F| db $09 ; Raw block
|11F030| db $00, $9C, $7F, $80, $7F, $C0, $3F, $FF
|11F038| db $40, $B3
|11F03A| db $83 ; Copy past
|11F03B| dw $0363
|11F03D| db $02 ; Raw block
|11F03E| db $00, $7F, $80
|11F041| db $27 ; Repeat byte
|11F042| db $00
|11F043| db $09 ; Raw block
|11F044| db $01, $FE, $03, $FC, $FF, $00, $9F, $FE
|11F04C| db $01, $FE
|11F04E| db $44 ; Repeat word
|11F04F| dw $00FF
|11F051| db $28 ; Repeat byte
|11F052| db $00
|11F053| db $07 ; Raw block
|11F054| db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
|11F05C| db $43 ; Repeat word
|11F05D| dw $56B2
|11F05F| db $07 ; Raw block
|11F060| db $B4, $46, $B0, $5A, $00, $00, $13, $51
|11F068| db $22 ; Repeat byte
|11F069| db $49
|11F06A| db $00 ; Raw block
|11F06B| db $45
|11F06C| db $44 ; Repeat word
|11F06D| dw $00FF
|11F06F| db $1F ; Raw block
|11F070| db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
|11F078| db $24, $F0, $30, $00, $7F, $40, $4F, $5E
|11F080| db $53, $5B, $4F, $02, $06, $05, $0C, $07
|11F088| db $10, $03, $24, $19, $42, $3C, $81, $7E
|11F090| db $43 ; Repeat word
|11F091| dw $FD00
|11F093| db $00 ; Raw block
|11F094| db $FB
|11F095| db $25 ; Repeat byte
|11F096| db $FF
|11F097| db $E0, $2F ; EXT Raw block
|11F099| db $20, $AF, $3C, $BF, $1E, $FF, $07, $BF
|11F0A1| db $22, $BF, $24, $BF, $00, $87, $07, $F8
|11F0A9| db $5F, $43, $61, $78, $5D, $5B, $7F, $07
|11F0B1| db $C4, $DD, $70, $FD, $F8, $FF, $18, $FF
|11F0B9| db $0C, $FD, $C0, $FF, $01, $0E, $07, $F8
|11F0C1| db $3A, $8E, $06, $E6, $F2, $3E, $FF, $07
|11F0C9| db $97 ; Copy past
|11F0CA| dw $0210
|11F0CC| db $E0, $3B ; EXT Raw block
|11F0CE| db $FC, $FE, $78, $FC, $31, $79, $07, $37
|11F0D6| db $CD, $CF, $C7, $EF, $C1, $E7, $C0, $E1
|11F0DE| db $01, $03, $86, $C8, $30, $10, $18, $1E
|11F0E6| db $F4, $F6, $7C, $7E, $98, $BC, $C1, $D9
|11F0EE| db $E3, $E3, $F7, $F7, $B6, $B7, $E7, $F7
|11F0F6| db $09, $81, $43, $26, $1C, $08, $48, $08
|11F0FE| db $60, $71, $10, $99, $80, $C1, $80, $9F
|11F106| db $00, $20, $00, $4E
|11F10A| db $83 ; Copy past
|11F10B| dw $01B8
|11F10D| db $E0, $30 ; EXT Raw block
|11F10F| db $8E, $66, $3E, $60, $DF, $B1, $61, $C1
|11F117| db $04, $0C, $4C, $7D, $01, $03, $03, $E7
|11F11F| db $03, $13, $00, $D8, $C0, $EF, $E0, $F1
|11F127| db $F3, $82, $FC, $18, $EC, $27, $10, $0E
|11F12F| db $9B, $08, $9F, $0F, $99, $0F, $8F, $10
|11F137| db $C0, $40, $FF, $60, $BF, $70, $9C, $6C
|11F13F| db $67
|11F140| db $22 ; Repeat byte
|11F141| db $60
|11F142| db $03 ; Raw block
|11F143| db $3F, $1F, $00, $03
|11F147| db $8C ; Copy past
|11F148| dw $0480
|11F14A| db $03 ; Raw block
|11F14B| db $7F, $9C, $7F, $67
|11F14F| db $22 ; Repeat byte
|11F150| db $60
|11F151| db $04 ; Raw block
|11F152| db $3F, $1F, $00, $00, $9F
|11F157| db $26 ; Repeat byte
|11F158| db $01
|11F159| db $01 ; Raw block
|11F15A| db $33, $33
|11F15C| db $43 ; Repeat word
|11F15D| dw $FFFE
|11F15F| db $01 ; Raw block
|11F160| db $CE, $FF
|11F162| db $23 ; Repeat byte
|11F163| db $FE
|11F164| db $00 ; Raw block
|11F165| db $CC
|11F166| db $22 ; Repeat byte
|11F167| db $00
|11F168| db $05 ; Raw block
|11F169| db $B1, $50, $D9, $38, $9B, $78
|11F16F| db $43 ; Repeat word
|11F170| dw $7093
|11F172| db $13 ; Raw block
|11F173| db $99, $78, $9E, $7E, $81, $78, $0F, $07
|11F17B| db $07, $0F, $0F, $07, $01, $07, $FF, $00
|11F183| db $00, $FF, $FE, $FF
|11F187| db $23 ; Repeat byte
|11F188| db $01
|11F189| db $00 ; Raw block
|11F18A| db $F3
|11F18B| db $44 ; Repeat word
|11F18C| dw $FF01
|11F18E| db $22 ; Repeat byte
|11F18F| db $00
|11F190| db $24 ; Repeat byte
|11F191| db $FE
|11F192| db $E0, $54 ; EXT Raw block
|11F194| db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
|11F19C| db $0E, $F3, $1E, $E3, $3F, $C9, $77, $9C
|11F1A4| db $F0, $E0, $C0, $80, $01, $01, $00, $08
|11F1AC| db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
|11F1B4| db $B8, $77, $BF, $38, $80, $1F, $FF, $00
|11F1BC| db $48, $45, $40, $60, $70, $78, $7F, $00
|11F1C4| db $E0, $20, $E6, $26, $F6, $36, $FF, $00
|11F1CC| db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
|11F1D4| db $5F, $59, $49, $7F, $00, $00, $40, $3F
|11F1DC| db $E3, $18, $8C, $73, $18, $E7, $28, $D7
|11F1E4| db $47, $BB, $9D, $7F, $7E
|11F1E9| db $2A ; Repeat byte
|11F1EA| db $FF
|11F1EB| db $0B ; Raw block
|11F1EC| db $03, $FC, $00, $83, $25, $A7, $3E, $BF
|11F1F4| db $3C, $BF, $3D, $BF
|11F1F8| db $43 ; Repeat word
|11F1F9| dw $9F1F
|11F1FB| db $1F ; Raw block
|11F1FC| db $03, $7F, $5A, $41, $43, $42, $60, $60
|11F204| db $07, $F8, $01, $C2, $0D, $7E, $01, $FE
|11F20C| db $FD, $FE, $9D, $FC, $2C, $FD, $44, $FD
|11F214| db $07, $FF, $F3, $FF, $03, $63, $D2, $BA
|11F21C| db $97 ; Copy past
|11F21D| dw $0228
|11F21F| db $E0, $2F ; EXT Raw block
|11F221| db $9E, $DE, $3F, $BF, $75, $7D, $3F, $7F
|11F229| db $07, $3F, $00, $07, $78, $78, $7C, $7C
|11F231| db $21, $40, $82, $80, $C0, $F8, $87, $83
|11F239| db $63, $F7, $01, $63, $8C, $8D, $9E, $DE
|11F241| db $3B, $BF, $7E, $7F, $EE, $EF, $FE, $FF
|11F249| db $08, $9C, $72, $21, $40, $80, $10, $00
|11F251| db $83 ; Copy past
|11F252| dw $01BC
|11F254| db $E0, $2B ; EXT Raw block
|11F256| db $00, $E3, $03, $33, $03, $9B, $83, $CB
|11F25E| db $C0, $EC, $E0, $E7, $C1, $F7, $1C, $CC
|11F266| db $64, $34, $13, $18, $F0, $FD, $78, $79
|11F26E| db $10, $13, $00, $C4, $C0, $C9, $01, $11
|11F276| db $01, $25, $04, $E4, $02, $86, $EC, $3B
|11F27E| db $36, $EE, $DA, $1B
|11F282| db $FF ; End of GFX 0C

;===================================================================================================

GFX_0D:
|11F283| db $0F ; Raw block
|11F284| db $13, $FE, $06, $FD, $2C, $FB, $18, $F7
|11F28C| db $38, $E7, $6C, $DB, $C6, $BD, $83, $7E
|11F294| db $28 ; Repeat byte
|11F295| db $00
|11F296| db $0E ; Raw block
|11F297| db $E3, $00, $ED, $00, $DE, $00, $3E, $00
|11F29F| db $7C, $00, $7B, $00, $B7, $00, $C7
|11F2A6| db $27 ; Repeat byte
|11F2A7| db $00
|11F2A8| db $E0, $42 ; EXT Raw block
|11F2AA| db $01, $FC, $23, $F9, $07, $F3, $8F, $E7
|11F2B2| db $17, $CF, $27, $9F, $43, $3F, $81, $7E
|11F2BA| db $02, $04, $08, $10, $20, $40, $80, $01
|11F2C2| db $FD, $FC, $FB, $F9, $D7, $D3, $77, $6F
|11F2CA| db $E0, $D8, $DA, $BC, $ED, $2E, $FE, $7D
|11F2D2| db $02, $04, $28, $90, $27, $43, $91, $02
|11F2DA| db $C1, $7C, $63, $B9, $37, $D3, $9B, $67
|11F2E2| db $C9, $37, $C4, $3B, $FE, $01, $FF, $00
|11F2EA| db $02, $04, $08
|11F2ED| db $24 ; Repeat byte
|11F2EE| db $00
|11F2EF| db $17 ; Raw block
|11F2F0| db $F5, $F3, $CB, $C7, $14, $0C, $24, $18
|11F2F8| db $5A, $3C, $E6, $67, $C1, $C1, $03, $01
|11F300| db $0C, $38, $F3, $E7, $C3, $99, $3E, $FE
|11F308| db $4F ; Repeat word
|11F309| dw $00FF
|11F30B| db $28 ; Repeat byte
|11F30C| db $FF
|11F30D| db $04 ; Raw block
|11F30E| db $00, $C0, $3F, $9F, $60
|11F313| db $49 ; Repeat word
|11F314| dw $40BF
|11F316| db $28 ; Repeat byte
|11F317| db $FF
|11F318| db $0A ; Raw block
|11F319| db $00, $C0, $3F, $9C, $63, $B8, $47, $B0
|11F321| db $4F, $A0, $5F
|11F324| db $43 ; Repeat word
|11F325| dw $7F80
|11F327| db $07 ; Raw block
|11F328| db $FF, $FF, $FC, $F8, $F0, $E0, $C0, $C0
|11F330| db $37 ; Repeat byte
|11F331| db $FF
|11F332| db $04 ; Raw block
|11F333| db $00, $FF, $3F, $FF, $60
|11F338| db $4A ; Repeat word
|11F339| dw $40FF
|11F33B| db $28 ; Repeat byte
|11F33C| db $00
|11F33D| db $03 ; Raw block
|11F33E| db $FF, $FC, $FF, $06
|11F342| db $4A ; Repeat word
|11F343| dw $02FF
|11F345| db $27 ; Repeat byte
|11F346| db $00
|11F347| db $0F ; Raw block
|11F348| db $8F, $F0, $98, $E7, $B7, $CE, $D5, $EE
|11F350| db $E9, $F6, $0E, $11, $DE, $E1, $23, $DC
|11F358| db $24 ; Repeat byte
|11F359| db $00
|11F35A| db $0C ; Raw block
|11F35B| db $E0, $00, $00, $F5, $0D, $CB, $37, $95
|11F363| db $5B, $6B, $ED, $46, $75
|11F368| db $43 ; Repeat word
|11F369| dw $F9C2
|11F36B| db $09 ; Raw block
|11F36C| db $62, $E1, $02, $00, $20, $10, $88, $04
|11F374| db $04, $1C
|11F376| db $8F ; Copy past
|11F377| dw $0120
|11F379| db $24 ; Repeat byte
|11F37A| db $00
|11F37B| db $8C ; Copy past
|11F37C| dw $0135
|11F37E| db $43 ; Repeat word
|11F37F| dw $F9C2
|11F381| db $89 ; Copy past
|11F382| dw $0146
|11F384| db $10 ; Raw block
|11F385| db $7E, $81, $C3, $7E, $A5, $7E, $A3, $7E
|11F38D| db $89, $7E, $A1, $7E, $C3, $7E, $7E, $81
|11F395| db $00
|11F396| db $25 ; Repeat byte
|11F397| db $7E
|11F398| db $10 ; Raw block
|11F399| db $00, $01, $FC, $42, $F9, $37, $F3, $6F
|11F3A1| db $E7, $DB, $C3, $BF, $99, $7D, $3E, $EE
|11F3A9| db $6F
|11F3AA| db $83 ; Copy past
|11F3AB| dw $0040
|11F3AD| db $0E ; Raw block
|11F3AE| db $24, $42, $81, $10, $FC, $FF, $7D, $7F
|11F3B6| db $5A, $5E, $04, $3C, $20, $E1, $5D
|11F3BD| db $44 ; Repeat word
|11F3BE| dw $57DF
|11F3C0| db $04 ; Raw block
|11F3C1| db $00, $80, $A1, $C3, $1E
|11F3C6| db $22 ; Repeat byte
|11F3C7| db $20
|11F3C8| db $17 ; Raw block
|11F3C9| db $03, $0F, $63, $67, $91, $F3, $60, $F3
|11F3D1| db $E0, $E3, $81, $86, $21, $3E, $83, $FC
|11F3D9| db $F0, $98, $0C, $0C, $1C, $78, $C0, $00
|11F3E1| db $8A ; Copy past
|11F3E2| dw $01B0
|11F3E4| db $44 ; Repeat word
|11F3E5| dw $57DF
|11F3E7| db $84 ; Copy past
|11F3E8| dw $01C0
|11F3EA| db $22 ; Repeat byte
|11F3EB| db $20
|11F3EC| db $97 ; Copy past
|11F3ED| dw $01C8
|11F3EF| db $E0, $3B ; EXT Raw block
|11F3F1| db $0B, $CF, $21, $E1, $92, $73, $CC, $BF
|11F3F9| db $20, $5F, $11, $2E, $8F, $90, $A8, $EF
|11F401| db $30, $1E, $0C, $00, $80, $C0, $60, $10
|11F409| db $0E, $F1, $18, $E8, $37, $D7, $68, $AF
|11F411| db $D3, $5F, $DB, $5F, $4F, $CF, $63, $E3
|11F419| db $00, $07, $08, $10, $20, $20, $30, $1C
|11F421| db $FF, $00, $FB, $7C, $F7, $78, $EF, $70
|11F429| db $DF, $60, $BF, $40
|11F42D| db $43 ; Repeat word
|11F42E| dw $00FF
|11F430| db $1E ; Raw block
|11F431| db $00, $7C, $79, $73, $67, $4F, $1F, $3F
|11F439| db $01, $FE, $3C, $FF, $67, $F8, $4F, $F0
|11F441| db $5F, $E0, $7F, $C0, $3F, $C0, $BF, $40
|11F449| db $01, $03, $07, $0F, $1F, $3F, $7F
|11F450| db $4A ; Repeat word
|11F451| dw $40FF
|11F453| db $05 ; Raw block
|11F454| db $60, $FF, $3F, $FF, $00, $FF
|11F45A| db $27 ; Repeat byte
|11F45B| db $00
|11F45C| db $49 ; Repeat word
|11F45D| dw $FF02
|11F45F| db $05 ; Raw block
|11F460| db $06, $FF, $FC, $FF, $00, $FF
|11F466| db $27 ; Repeat byte
|11F467| db $00
|11F468| db $E0, $2F ; EXT Raw block
|11F46A| db $D9, $3A, $84, $5D, $92, $5E, $CE, $AE
|11F472| db $31, $51, $26, $1F, $93, $8C, $AC, $E3
|11F47A| db $04, $22, $21, $11, $8E, $C0, $60, $10
|11F482| db $AF, $70, $F1, $0E, $D2, $33, $AD, $6D
|11F48A| db $92, $5E, $9B, $5F, $07, $C7, $13, $F3
|11F492| db $00, $00, $0C, $12, $21, $20, $38, $0C
|11F49A| db $F0, $2F ; EXT Copy past
|11F49C| dw $02A0
|11F49E| db $19 ; Raw block
|11F49F| db $FF, $00, $C3, $40, $B8, $00, $DF, $00
|11F4A7| db $EF, $21, $F7, $32, $F6, $32, $FF, $31
|11F4AF| db $00, $3F, $7F, $7F, $5E, $4D, $4D, $4E
|11F4B7| db $FF, $18
|11F4B9| db $44 ; Repeat word
|11F4BA| dw $24BD
|11F4BC| db $0D ; Raw block
|11F4BD| db $18, $C3, $00, $FF, $7E, $81, $7E, $FF
|11F4C5| db $00, $66, $5A, $5A, $66, $7E
|11F4CB| db $22 ; Repeat byte
|11F4CC| db $00
|11F4CD| db $02 ; Raw block
|11F4CE| db $FF, $00, $AA
|11F4D1| db $44 ; Repeat word
|11F4D2| dw $FF88
|11F4D4| db $08 ; Raw block
|11F4D5| db $AA, $88, $55, $DD, $00, $FF, $FF, $00
|11F4DD| db $00
|11F4DE| db $23 ; Repeat byte
|11F4DF| db $77
|11F4E0| db $0A ; Raw block
|11F4E1| db $22, $00, $00, $BD, $42, $BD, $00, $DB
|11F4E9| db $42, $C3, $7E
|11F4EC| db $86 ; Copy past
|11F4ED| dw $0348
|11F4EF| db $43 ; Repeat word
|11F4F0| dw $3C7E
|11F4F2| db $00 ; Raw block
|11F4F3| db $00
|11F4F4| db $83 ; Copy past
|11F4F5| dw $0358
|11F4F7| db $0A ; Raw block
|11F4F8| db $86, $7E, $FB, $47, $BD, $7B, $CE, $7D
|11F500| db $F7, $7E, $BB
|11F503| db $83 ; Copy past
|11F504| dw $00CD
|11F506| db $01 ; Raw block
|11F507| db $00, $01
|11F509| db $26 ; Repeat byte
|11F50A| db $00
|11F50B| db $0E ; Raw block
|11F50C| db $DD, $BE, $E3, $DD, $7F, $E3, $BE, $FF
|11F514| db $41, $FF, $3E, $FF, $81, $7E, $FF
|11F51B| db $28 ; Repeat byte
|11F51C| db $00
|11F51D| db $07 ; Raw block
|11F51E| db $40, $BF, $A0, $DF, $E4, $0C, $A2, $0E
|11F526| db $43 ; Repeat word
|11F527| dw $56B2
|11F529| db $07 ; Raw block
|11F52A| db $B4, $46, $B0, $5A, $00, $00, $13, $51
|11F532| db $22 ; Repeat byte
|11F533| db $49
|11F534| db $00 ; Raw block
|11F535| db $45
|11F536| db $44 ; Repeat word
|11F537| dw $00FF
|11F539| db $1F ; Raw block
|11F53A| db $3F, $F0, $30, $E1, $21, $EC, $2C, $E4
|11F542| db $24, $F0, $30, $00, $7F, $40, $4F, $5E
|11F54A| db $53, $5B, $4F, $02, $06, $05, $0C, $07
|11F552| db $10, $03, $24, $19, $42, $3C, $81, $7E
|11F55A| db $43 ; Repeat word
|11F55B| dw $FD00
|11F55D| db $00 ; Raw block
|11F55E| db $FB
|11F55F| db $25 ; Repeat byte
|11F560| db $FF
|11F561| db $06 ; Raw block
|11F562| db $1F, $9F, $01, $FE, $00, $BF, $2F
|11F569| db $44 ; Repeat word
|11F56A| dw $27BF
|11F56C| db $0B ; Raw block
|11F56D| db $46, $DF, $19, $E6, $60, $7F, $7F, $50
|11F575| db $58, $58, $39, $19
|11F579| db $43 ; Repeat word
|11F57A| dw $FDF4
|11F57C| db $13 ; Raw block
|11F57D| db $74, $FD, $30, $FF, $95, $FE, $C7, $FE
|11F585| db $23, $FE, $2F, $D0, $0A, $0A, $8A, $CE
|11F58D| db $6B, $39, $DD, $2F
|11F591| db $97 ; Copy past
|11F592| dw $0210
|11F594| db $E0, $23 ; EXT Raw block
|11F596| db $90, $9F, $91, $9F, $E2, $FE, $C4, $FC
|11F59E| db $89, $F9, $33, $F3, $67, $E7, $4F, $CF
|11F5A6| db $60, $60, $01, $03, $06, $0C, $18, $30
|11F5AE| db $0F, $FF, $E7, $FF, $13, $1F, $09, $0F
|11F5B6| db $C4, $C7, $E2, $E3
|11F5BA| db $43 ; Repeat word
|11F5BB| dw $F3F2
|11F5BD| db $E0, $4E ; EXT Raw block
|11F5BF| db $00, $00, $E0, $F0, $38, $1C, $0C, $0C
|11F5C7| db $92, $F3, $E4, $FD, $F4, $FD, $E8, $FB
|11F5CF| db $E5, $E7, $1A, $1E, $E1, $FD, $07, $FF
|11F5D7| db $0C, $02, $02, $04, $18, $E1, $02, $00
|11F5DF| db $05, $FD, $7B, $FF, $8D, $8F, $75, $77
|11F5E7| db $49, $7B, $B0, $FB, $70, $FB, $FC, $FF
|11F5EF| db $02, $00, $70, $88, $84, $04, $04, $00
|11F5F7| db $EF, $20, $FC, $20, $DB, $03, $F7, $07
|11F5FF| db $E8, $08, $F0, $30, $FF, $00, $9F, $7F
|11F607| db $5F, $5F, $7C, $78, $77, $4F, $7F
|11F60E| db $8C ; Copy past
|11F60F| dw $047F
|11F611| db $03 ; Raw block
|11F612| db $FE, $40, $B9, $78
|11F616| db $85 ; Copy past
|11F617| dw $0490
|11F619| db $08 ; Raw block
|11F61A| db $3F, $07, $7F, $00, $FF, $80, $BE, $80
|11F622| db $9C
|11F623| db $22 ; Repeat byte
|11F624| db $80
|11F625| db $06 ; Raw block
|11F626| db $C1, $C1, $62, $E3, $BE, $7F, $FF
|11F62D| db $23 ; Repeat byte
|11F62E| db $7F
|11F62F| db $06 ; Raw block
|11F630| db $3E, $1C, $00, $F7, $70, $EF, $60
|11F637| db $47 ; Repeat word
|11F638| dw $40DF
|11F63A| db $05 ; Raw block
|11F63B| db $CF, $40, $F8, $78, $0F, $1F
|11F641| db $24 ; Repeat byte
|11F642| db $3F
|11F643| db $08 ; Raw block
|11F644| db $07, $FF, $00, $7F, $FF, $C1, $C1, $BE
|11F64C| db $80
|11F64D| db $46 ; Repeat word
|11F64E| dw $007F
|11F650| db $22 ; Repeat byte
|11F651| db $00
|11F652| db $01 ; Raw block
|11F653| db $3E, $7F
|11F655| db $23 ; Repeat byte
|11F656| db $FF
|11F657| db $E0, $54 ; EXT Raw block
|11F659| db $F0, $0F, $E1, $1E, $C3, $3C, $87, $79
|11F661| db $0D, $F3, $19, $E7, $31, $CF, $7F, $9F
|11F669| db $F0, $E0, $C0, $80, $02, $06, $0E, $00
|11F671| db $A0, $57, $A8, $5A, $A5, $5F, $B5, $6F
|11F679| db $B8, $77, $BF, $38, $80, $1F, $FF, $00
|11F681| db $48, $45, $40, $60, $70, $78, $7F, $00
|11F689| db $E0, $20, $E6, $26, $F6, $36, $FF, $00
|11F691| db $BF, $7F, $EA, $55, $95, $3F, $E0, $40
|11F699| db $5F, $59, $49, $7F, $00, $00, $40, $3F
|11F6A1| db $E3, $18, $8C, $73, $18, $E7, $28, $D7
|11F6A9| db $47, $BB, $9D, $7F, $7E
|11F6AE| db $2A ; Repeat byte
|11F6AF| db $FF
|11F6B0| db $E0, $2F ; EXT Raw block
|11F6B2| db $19, $E6, $02, $BF, $31, $BF, $38, $BF
|11F6BA| db $18, $9F, $3B, $BF, $3F, $BF, $1F, $9F
|11F6C2| db $19, $7D, $4E, $47, $67, $44, $40, $60
|11F6CA| db $27, $D8, $DD, $FE, $3D, $FE, $F9, $FE
|11F6D2| db $01, $FE, $8D, $FE, $DD, $FC, $FC, $FD
|11F6DA| db $27, $23, $C3, $07, $FF, $73, $23, $02
|11F6E2| db $97 ; Copy past
|11F6E3| dw $0228
|11F6E5| db $E0, $41 ; EXT Raw block
|11F6E7| db $4F, $CF, $67, $E7, $33, $F3, $1B, $FB
|11F6EF| db $8F, $FF, $C7, $FF, $60, $7F, $A0, $BF
|11F6F7| db $30, $18, $0C, $04, $00, $00, $80, $40
|11F6FF| db $F6, $F7, $EC, $EF, $D8, $DF, $F3, $FF
|11F707| db $E7, $FF, $C8, $F8, $13, $F3, $37, $F7
|11F70F| db $08, $10, $20, $00, $00, $07, $0C, $08
|11F717| db $4F, $CF, $4F, $DF, $52, $DE, $AE, $EE
|11F71F| db $31, $71, $1F, $3F, $80, $9F, $A8, $EF
|11F727| db $30, $20
|11F729| db $85 ; Copy past
|11F72A| dw $02B2
|11F72C| db $17 ; Raw block
|11F72D| db $B0, $BF, $40, $78, $A7, $E7, $88, $CF
|11F735| db $53, $DF, $1B, $9F, $47, $C7, $13, $F3
|11F73D| db $40, $87, $18, $30, $20, $60, $38, $0C
|11F745| db $FF ; End of GFX 0D

;===================================================================================================

GFX_0E:
|11F746| db $E0, $21 ; EXT Raw block
|11F748| db $93, $0C, $8E, $42, $E6, $4E, $D6, $66
|11F750| db $E2, $3A, $65, $99, $3E, $C8, $77, $AC
|11F758| db $60, $31, $11, $09, $05, $02, $01, $00
|11F760| db $FF, $00, $DF, $7B, $BC, $77, $FC, $62
|11F768| db $E0, $46
|11F76A| db $43 ; Repeat word
|11F76B| dw $51EE
|11F76D| db $19 ; Raw block
|11F76E| db $FC, $52, $00, $03, $07, $03, $1F, $11
|11F776| db $11, $13, $44, $C7, $7C, $FF, $83, $FE
|11F77E| db $7D, $FE, $83, $7C, $FF, $39, $E4, $1B
|11F786| db $F1, $0E
|11F788| db $22 ; Repeat byte
|11F789| db $FE
|11F78A| db $24 ; Repeat byte
|11F78B| db $00
|11F78C| db $0F ; Raw block
|11F78D| db $4F, $F0, $97, $F8, $97, $FC, $95, $FE
|11F795| db $94, $FF, $96, $F9, $4C, $F3, $7D, $86
|11F79D| db $26 ; Repeat byte
|11F79E| db $C0
|11F79F| db $10 ; Raw block
|11F7A0| db $00, $00, $FF, $FF, $00, $FE, $6D, $DB
|11F7A8| db $6A, $B5, $6D, $AA, $76, $B6, $6A, $DE
|11F7B0| db $6A
|11F7B1| db $22 ; Repeat byte
|11F7B2| db $00
|11F7B3| db $01 ; Raw block
|11F7B4| db $04, $02
|11F7B6| db $22 ; Repeat byte
|11F7B7| db $01
|11F7B8| db $1C ; Raw block
|11F7B9| db $0F, $F0, $F3, $0F, $D0, $30, $4F, $CF
|11F7C1| db $B0, $BF, $40, $7F, $80, $FF, $07, $F8
|11F7C9| db $00, $00, $0F, $30, $40, $80, $00, $00
|11F7D1| db $FF, $00, $80, $7F, $80
|11F7D6| db $4A ; Repeat word
|11F7D7| dw $9F40
|11F7D9| db $02 ; Raw block
|11F7DA| db $00, $7F, $7F
|11F7DD| db $24 ; Repeat byte
|11F7DE| db $60
|11F7DF| db $00 ; Raw block
|11F7E0| db $FF
|11F7E1| db $83 ; Copy past
|11F7E2| dw $008E
|11F7E4| db $4A ; Repeat word
|11F7E5| dw $FF00
|11F7E7| db $02 ; Raw block
|11F7E8| db $00, $FF, $FF
|11F7EB| db $24 ; Repeat byte
|11F7EC| db $00
|11F7ED| db $12 ; Raw block
|11F7EE| db $C2, $3F, $82, $7F, $F8, $79, $FB, $05
|11F7F6| db $C7, $3D, $8F, $7D, $87, $75, $87, $85
|11F7FE| db $00, $00, $06
|11F801| db $22 ; Repeat byte
|11F802| db $02
|11F803| db $0C ; Raw block
|11F804| db $0A, $7A, $3F, $C0, $5F, $BF, $BF, $73
|11F80C| db $FF, $79, $8F, $0F, $9C
|11F811| db $43 ; Repeat word
|11F812| dw $DF6C
|11F814| db $00 ; Raw block
|11F815| db $64
|11F816| db $23 ; Repeat byte
|11F817| db $00
|11F818| db $0F ; Raw block
|11F819| db $70, $03, $00, $00, $1F, $E0, $18, $EC
|11F821| db $3F, $C7, $F8, $0F, $F3, $5F, $A7, $7F
|11F829| db $43 ; Repeat word
|11F82A| dw $3FA7
|11F82C| db $03 ; Raw block
|11F82D| db $00, $0F, $0F, $1F
|11F831| db $23 ; Repeat byte
|11F832| db $7F
|11F833| db $09 ; Raw block
|11F834| db $FF, $00, $DF, $7F, $BF, $78, $FC, $73
|11F83C| db $FB, $67
|11F83E| db $45 ; Repeat word
|11F83F| dw $6FF7
|11F841| db $22 ; Repeat byte
|11F842| db $00
|11F843| db $00 ; Raw block
|11F844| db $07
|11F845| db $23 ; Repeat byte
|11F846| db $0F
|11F847| db $02 ; Raw block
|11F848| db $FF, $FF, $80
|11F84B| db $44 ; Repeat word
|11F84C| dw $BFFF
|11F84E| db $02 ; Raw block
|11F84F| db $BB, $FF, $B7
|11F852| db $43 ; Repeat word
|11F853| dw $BFFF
|11F855| db $2B ; Repeat byte
|11F856| db $FF
|11F857| db $09 ; Raw block
|11F858| db $80, $C0, $BF, $FB, $BB, $FF, $BF, $EF
|11F860| db $BF, $FD
|11F862| db $43 ; Repeat word
|11F863| dw $FFBF
|11F865| db $02 ; Raw block
|11F866| db $80, $80, $84
|11F869| db $23 ; Repeat byte
|11F86A| db $80
|11F86B| db $84 ; Copy past
|11F86C| dw $0108
|11F86E| db $06 ; Raw block
|11F86F| db $7F, $FC, $7C, $FB, $7B, $F7, $77
|11F876| db $43 ; Repeat word
|11F877| dw $7FFF
|11F879| db $22 ; Repeat byte
|11F87A| db $00
|11F87B| db $03 ; Raw block
|11F87C| db $03, $04, $08, $00
|11F880| db $43 ; Repeat word
|11F881| dw $FF00
|11F883| db $00 ; Raw block
|11F884| db $20
|11F885| db $48 ; Repeat word
|11F886| dw $00FF
|11F888| db $12 ; Raw block
|11F889| db $04, $FF, $00, $FF, $FF, $FB, $BF, $FF
|11F891| db $FF, $DF, $FF, $D7, $4D, $9F, $21, $A2
|11F899| db $41, $D5, $14
|11F89C| db $43 ; Repeat word
|11F89D| dw $36B6
|11F89F| db $E0, $34 ; EXT Raw block
|11F8A1| db $D5, $55, $E3, $41, $20, $40, $1C, $2A
|11F8A9| db $49, $49, $2A, $1C, $EB, $B2, $F5, $AC
|11F8B1| db $6B, $96, $97, $78, $17, $9A, $69, $F6
|11F8B9| db $CB, $32, $FD, $56, $04, $02, $00, $00
|11F8C1| db $60, $00, $04, $00, $F7, $41, $FF, $49
|11F8C9| db $FE, $2B, $FD, $5E, $DC, $63, $BF, $3F
|11F8D1| db $C0, $40, $FF, $00, $08
|11F8D6| db $23 ; Repeat byte
|11F8D7| db $00
|11F8D8| db $11 ; Raw block
|11F8D9| db $40, $3F, $00, $F7, $58, $5F, $E2, $EF
|11F8E1| db $1A, $F7, $12, $3F, $C2, $FD, $FC, $03
|11F8E9| db $02, $FF
|11F8EB| db $23 ; Repeat byte
|11F8EC| db $00
|11F8ED| db $05 ; Raw block
|11F8EE| db $08, $00, $02, $FC, $00, $ED
|11F8F4| db $48 ; Repeat word
|11F8F5| dw $FD59
|11F8F7| db $43 ; Repeat word
|11F8F8| dw $5AFE
|11F8FA| db $01 ; Raw block
|11F8FB| db $F8, $54
|11F8FD| db $24 ; Repeat byte
|11F8FE| db $02
|11F8FF| db $0A ; Raw block
|11F900| db $01, $01, $03, $0F, $F0, $18, $E7, $33
|11F908| db $CC, $27, $D8
|11F90B| db $45 ; Repeat word
|11F90C| dw $D02F
|11F90E| db $01 ; Raw block
|11F90F| db $AF, $D0
|11F911| db $27 ; Repeat byte
|11F912| db $00
|11F913| db $4B ; Repeat word
|11F914| dw $409F
|11F916| db $04 ; Raw block
|11F917| db $80, $5F, $80, $40, $60
|11F91C| db $24 ; Repeat byte
|11F91D| db $6F
|11F91E| db $01 ; Raw block
|11F91F| db $7F, $7F
|11F921| db $4B ; Repeat word
|11F922| dw $00FF
|11F924| db $01 ; Raw block
|11F925| db $00, $FF
|11F927| db $22 ; Repeat byte
|11F928| db $00
|11F929| db $26 ; Repeat byte
|11F92A| db $FF
|11F92B| db $01 ; Raw block
|11F92C| db $1F, $F5
|11F92E| db $43 ; Repeat word
|11F92F| dw $E4EE
|11F931| db $01 ; Raw block
|11F932| db $CE, $C4
|11F934| db $43 ; Repeat word
|11F935| dw $C0EB
|11F937| db $43 ; Repeat word
|11F938| dw $C0EF
|11F93A| db $03 ; Raw block
|11F93B| db $0A, $1B, $1B, $3B
|11F93F| db $23 ; Repeat byte
|11F940| db $3F
|11F941| db $44 ; Repeat word
|11F942| dw $60DF
|11F944| db $0A ; Raw block
|11F945| db $66, $DF, $66, $DB, $46, $AD, $63, $C7
|11F94D| db $38, $7F, $80
|11F950| db $83 ; Copy past
|11F951| dw $011A
|11F953| db $13 ; Raw block
|11F954| db $2F, $17, $03, $00, $A7, $5F, $F3, $5F
|11F95C| db $F8, $4F, $FF, $03, $F8, $04, $3F, $C8
|11F964| db $1F, $E8, $1F, $E0
|11F968| db $22 ; Repeat byte
|11F969| db $7F
|11F96A| db $17 ; Raw block
|11F96B| db $6F, $0F, $0C, $08, $00, $FB, $63, $FC
|11F973| db $60, $FF, $70, $FF, $78, $BF, $7F, $DF
|11F97B| db $7F, $E0, $7F, $FF, $00, $0F, $0F, $07
|11F983| db $24 ; Repeat byte
|11F984| db $00
|11F985| db $13 ; Raw block
|11F986| db $F1, $5E, $FD, $46, $C8, $77, $EE, $75
|11F98E| db $F5, $7A, $BF, $7F, $C0, $7F, $FF, $00
|11F996| db $1E, $06, $07, $05
|11F99A| db $23 ; Repeat byte
|11F99B| db $00
|11F99C| db $08 ; Raw block
|11F99D| db $FD, $BD, $F7, $BF, $FF, $BF, $FD, $BF
|11F9A5| db $F7
|11F9A6| db $83 ; Copy past
|11F9A7| dw $012A
|11F9A9| db $03 ; Raw block
|11F9AA| db $80, $FF, $FF, $82
|11F9AE| db $22 ; Repeat byte
|11F9AF| db $80
|11F9B0| db $0B ; Raw block
|11F9B1| db $88, $80, $80, $FF, $FF, $7F, $F7, $7F
|11F9B9| db $FB, $7F, $FC, $7F
|11F9BD| db $86 ; Copy past
|11F9BE| dw $0290
|11F9C0| db $28 ; Repeat byte
|11F9C1| db $00
|11F9C2| db $0F ; Raw block
|11F9C3| db $FF, $00, $B1, $7F, $DA, $67, $F5, $4E
|11F9CB| db $AA, $5D, $95, $7B, $AA, $77, $D5, $6E
|11F9D3| db $27 ; Repeat byte
|11F9D4| db $00
|11F9D5| db $04 ; Raw block
|11F9D6| db $FF, $00, $90, $6F, $90
|11F9DB| db $43 ; Repeat word
|11F9DC| dw $9669
|11F9DE| db $46 ; Repeat word
|11F9DF| dw $960F
|11F9E1| db $02 ; Raw block
|11F9E2| db $00, $60, $66
|11F9E5| db $24 ; Repeat byte
|11F9E6| db $60
|11F9E7| db $84 ; Copy past
|11F9E8| dw $0300
|11F9EA| db $02 ; Raw block
|11F9EB| db $6E, $91, $6E
|11F9EE| db $47 ; Repeat word
|11F9EF| dw $0F97
|11F9F1| db $02 ; Raw block
|11F9F2| db $00, $60, $61
|11F9F5| db $24 ; Repeat byte
|11F9F6| db $60
|11F9F7| db $04 ; Raw block
|11F9F8| db $FF, $00, $E0, $00, $90
|11F9FD| db $4A ; Repeat word
|11F9FE| dw $8F00
|11FA00| db $00 ; Raw block
|11FA01| db $00
|11FA02| db $26 ; Repeat byte
|11FA03| db $7F
|11FA04| db $07 ; Raw block
|11FA05| db $FF, $00, $07, $00, $0B, $02, $F7, $06
|11FA0D| db $47 ; Repeat word
|11FA0E| dw $0EFF
|11FA10| db $03 ; Raw block
|11FA11| db $00, $FE, $FC, $F8
|11FA15| db $23 ; Repeat byte
|11FA16| db $F0
|11FA17| db $E0, $36 ; EXT Raw block
|11FA19| db $FB, $4B, $F4, $57, $FB, $5C, $FF, $42
|11FA21| db $EE, $5B, $EF, $5D, $FB, $4A, $D4, $6C
|11FA29| db $04, $08, $00, $03, $03, $01, $04, $03
|11FA31| db $57, $68, $BF, $B0, $4F, $CF, $90, $70
|11FA39| db $E7, $1F, $FF, $80, $FF, $70, $0E, $0B
|11FA41| db $80, $40, $30, $0F, $80, $80, $03, $F3
|11FA49| db $80, $7F, $FF, $00, $C8, $37, $CF
|11FA50| db $43 ; Repeat word
|11FA51| dw $C130
|11FA53| db $0B ; Raw block
|11FA54| db $3E, $C0, $3F, $FF, $00, $7F, $00, $30
|11FA5C| db $30, $3E, $3E, $3F
|11FA60| db $84 ; Copy past
|11FA61| dw $005F
|11FA63| db $43 ; Repeat word
|11FA64| dw $F609
|11FA66| db $01 ; Raw block
|11FA67| db $08, $F7
|11FA69| db $83 ; Copy past
|11FA6A| dw $00A8
|11FA6C| db $43 ; Repeat word
|11FA6D| dw $00FF
|11FA6F| db $02 ; Raw block
|11FA70| db $06, $06, $07
|11FA73| db $44 ; Repeat word
|11FA74| dw $FF00
|11FA76| db $19 ; Raw block
|11FA77| db $DC, $7B, $BB, $74, $FB, $64, $FB, $44
|11FA7F| db $FC, $53, $FF, $50, $FF, $58, $00, $03
|11FA87| db $06, $04, $16, $17, $1B, $1C, $FF, $00
|11FA8F| db $C0, $40
|11FA91| db $45 ; Repeat word
|11FA92| dw $5FDF
|11FA94| db $07 ; Raw block
|11FA95| db $C0, $40, $FF, $7F, $FF, $40, $00, $3F
|11FA9D| db $22 ; Repeat byte
|11FA9E| db $20
|11FA9F| db $01 ; Raw block
|11FAA0| db $3F, $00
|11FAA2| db $44 ; Repeat word
|11FAA3| dw $0100
|11FAA5| db $43 ; Repeat word
|11FAA6| dw $0003
|11FAA8| db $43 ; Repeat word
|11FAA9| dw $0007
|11FAAB| db $02 ; Raw block
|11FAAC| db $0F, $00, $0F
|11FAAF| db $28 ; Repeat byte
|11FAB0| db $00
|11FAB1| db $44 ; Repeat word
|11FAB2| dw $01FF
|11FAB4| db $43 ; Repeat word
|11FAB5| dw $FF03
|11FAB7| db $43 ; Repeat word
|11FAB8| dw $FF07
|11FABA| db $02 ; Raw block
|11FABB| db $0F, $FF, $0F
|11FABE| db $27 ; Repeat byte
|11FABF| db $00
|11FAC0| db $17 ; Raw block
|11FAC1| db $A0, $6F, $50, $B0, $20, $DF, $F0, $0F
|11FAC9| db $88, $57, $B5, $6B, $BD, $6B, $B5, $63
|11FAD1| db $1F, $0F, $00, $00, $20, $00, $00, $08
|11FAD9| db $2F ; Repeat byte
|11FADA| db $FF
|11FADB| db $27 ; Repeat byte
|11FADC| db $00
|11FADD| db $22 ; Repeat byte
|11FADE| db $FF
|11FADF| db $04 ; Raw block
|11FAE0| db $3F, $FF, $0F, $FF, $03
|11FAE5| db $46 ; Repeat word
|11FAE6| dw $00FF
|11FAE8| db $28 ; Repeat byte
|11FAE9| db $00
|11FAEA| db $2A ; Repeat byte
|11FAEB| db $FF
|11FAEC| db $84 ; Copy past
|11FAED| dw $0453
|11FAEF| db $27 ; Repeat byte
|11FAF0| db $00
|11FAF1| db $11 ; Raw block
|11FAF2| db $90, $0F, $90, $09, $96, $6F, $96, $69
|11FAFA| db $90, $6F, $89, $76, $86, $49, $B0, $4F
|11FB02| db $60, $66
|11FB04| db $22 ; Repeat byte
|11FB05| db $60
|11FB06| db $14 ; Raw block
|11FB07| db $70, $79, $4F, $90, $0F, $90, $0E, $91
|11FB0F| db $6F, $91, $6E, $90, $6F, $08, $F7, $07
|11FB17| db $98, $60, $9F, $60, $61
|11FB1C| db $22 ; Repeat byte
|11FB1D| db $60
|11FB1E| db $02 ; Raw block
|11FB1F| db $F0, $F8, $9F
|11FB22| db $45 ; Repeat word
|11FB23| dw $008F
|11FB25| db $05 ; Raw block
|11FB26| db $97, $07, $AF, $0F, $DF, $1F
|11FB2C| db $83 ; Copy past
|11FB2D| dw $0390
|11FB2F| db $22 ; Repeat byte
|11FB30| db $7F
|11FB31| db $04 ; Raw block
|11FB32| db $78, $70, $60, $00, $00
|11FB37| db $45 ; Repeat word
|11FB38| dw $0EFF
|11FB3A| db $09 ; Raw block
|11FB3B| db $F7, $F6, $FB, $FA, $FD, $FC, $01, $FE
|11FB43| db $FF, $00
|11FB45| db $22 ; Repeat byte
|11FB46| db $F0
|11FB47| db $00 ; Raw block
|11FB48| db $08
|11FB49| db $83 ; Copy past
|11FB4A| dw $01A8
|11FB4C| db $0E ; Raw block
|11FB4D| db $DB, $67, $CC, $73, $A6, $79, $A3, $7C
|11FB55| db $E1, $7E, $B6, $37, $81, $0F, $FF
|11FB5C| db $25 ; Repeat byte
|11FB5D| db $00
|11FB5E| db $0E ; Raw block
|11FB5F| db $48, $70, $00, $EB, $ED, $35, $F6, $18
|11FB67| db $F8, $87, $7F, $E0, $1F, $7F, $80
|11FB6E| db $22 ; Repeat byte
|11FB6F| db $FF
|11FB70| db $03 ; Raw block
|11FB71| db $00, $11, $08, $07
|11FB75| db $24 ; Repeat byte
|11FB76| db $00
|11FB77| db $E0, $28 ; EXT Raw block
|11FB79| db $C5, $3B, $AA, $61, $DD, $40, $91, $1F
|11FB81| db $A0, $31, $C6, $60, $D3, $30, $E9, $18
|11FB89| db $00, $1C, $3E, $60, $4E, $1F, $0F, $07
|11FB91| db $05, $06, $FB, $FC, $07, $F8, $FD, $02
|11FB99| db $FF, $06, $F3, $F2, $F1, $02, $E5, $06
|11FBA1| db $F8
|11FBA2| db $23 ; Repeat byte
|11FBA3| db $00
|11FBA4| db $0C ; Raw block
|11FBA5| db $0C, $FC, $F8, $FE, $56, $FF, $43, $DF
|11FBAD| db $62, $EF, $70, $F7, $78
|11FBB2| db $85 ; Copy past
|11FBB3| dw $02AA
|11FBB5| db $03 ; Raw block
|11FBB6| db $1F, $1F, $0F, $07
|11FBBA| db $23 ; Repeat byte
|11FBBB| db $00
|11FBBC| db $0A ; Raw block
|11FBBD| db $E1, $5E, $E2, $5C, $E5, $59, $EB, $53
|11FBC5| db $F7, $47, $FF
|11FBC8| db $83 ; Copy past
|11FBC9| dw $03E3
|11FBCB| db $00 ; Raw block
|11FBCC| db $00
|11FBCD| db $62 ; Increment fill
|11FBCE| db $00
|11FBCF| db $01 ; Raw block
|11FBD0| db $04, $08
|11FBD2| db $22 ; Repeat byte
|11FBD3| db $00
|11FBD4| db $43 ; Repeat word
|11FBD5| dw $001F
|11FBD7| db $43 ; Repeat word
|11FBD8| dw $003F
|11FBDA| db $43 ; Repeat word
|11FBDB| dw $007F
|11FBDD| db $02 ; Raw block
|11FBDE| db $FF, $00, $FF
|11FBE1| db $28 ; Repeat byte
|11FBE2| db $00
|11FBE3| db $44 ; Repeat word
|11FBE4| dw $1FFF
|11FBE6| db $43 ; Repeat word
|11FBE7| dw $FF3F
|11FBE9| db $02 ; Raw block
|11FBEA| db $7F, $FF, $7F
|11FBED| db $23 ; Repeat byte
|11FBEE| db $FF
|11FBEF| db $27 ; Repeat byte
|11FBF0| db $00
|11FBF1| db $0B ; Raw block
|11FBF2| db $B5, $67, $BA, $6B, $B4, $6C, $AB, $77
|11FBFA| db $A7, $68, $9F, $5F
|11FBFE| db $83 ; Copy past
|11FBFF| dw $0390
|11FC01| db $06 ; Raw block
|11FC02| db $08, $04, $03, $00, $10, $20, $00
|11FC09| db $4F ; Repeat word
|11FC0A| dw $FF00
|11FC0C| db $28 ; Repeat byte
|11FC0D| db $00
|11FC0E| db $06 ; Raw block
|11FC0F| db $FF, $00, $3F, $00, $0F, $00, $03
|11FC16| db $30 ; Repeat byte
|11FC17| db $00
|11FC18| db $49 ; Repeat word
|11FC19| dw $00FF
|11FC1B| db $84 ; Copy past
|11FC1C| dw $05D2
|11FC1E| db $28 ; Repeat byte
|11FC1F| db $00
|11FC20| db $FF ; End of GFX 0E

;===================================================================================================

GFX_0F:
|11FC21| db $01 ; Raw block
|11FC22| db $FF, $00
|11FC24| db $4D ; Repeat word
|11FC25| dw $67F7
|11FC27| db $00 ; Raw block
|11FC28| db $E0
|11FC29| db $26 ; Repeat byte
|11FC2A| db $EF
|11FC2B| db $01 ; Raw block
|11FC2C| db $FF, $00
|11FC2E| db $46 ; Repeat word
|11FC2F| dw $F6FF
|11FC31| db $46 ; Repeat word
|11FC32| dw $FFF2
|11FC34| db $00 ; Raw block
|11FC35| db $07
|11FC36| db $26 ; Repeat byte
|11FC37| db $F7
|11FC38| db $00 ; Raw block
|11FC39| db $F0
|11FC3A| db $49 ; Repeat word
|11FC3B| dw $FF60
|11FC3D| db $04 ; Raw block
|11FC3E| db $70, $FF, $7F, $FF, $00
|11FC43| db $23 ; Repeat byte
|11FC44| db $EF
|11FC45| db $00 ; Raw block
|11FC46| db $E0
|11FC47| db $22 ; Repeat byte
|11FC48| db $FF
|11FC49| db $00 ; Raw block
|11FC4A| db $0F
|11FC4B| db $4B ; Repeat word
|11FC4C| dw $FF02
|11FC4E| db $02 ; Raw block
|11FC4F| db $FE, $FF, $00
|11FC52| db $23 ; Repeat byte
|11FC53| db $F7
|11FC54| db $00 ; Raw block
|11FC55| db $07
|11FC56| db $23 ; Repeat byte
|11FC57| db $FF
|11FC58| db $02 ; Raw block
|11FC59| db $00, $FF, $60
|11FC5C| db $4B ; Repeat word
|11FC5D| dw $67F7
|11FC5F| db $01 ; Raw block
|11FC60| db $FF, $E0
|11FC62| db $25 ; Repeat byte
|11FC63| db $EF
|11FC64| db $03 ; Raw block
|11FC65| db $FF, $00, $FF, $06
|11FC69| db $4C ; Repeat word
|11FC6A| dw $F6FF
|11FC6C| db $00 ; Raw block
|11FC6D| db $07
|11FC6E| db $26 ; Repeat byte
|11FC6F| db $F7
|11FC70| db $01 ; Raw block
|11FC71| db $67, $F0
|11FC73| db $47 ; Repeat word
|11FC74| dw $FF60
|11FC76| db $43 ; Repeat word
|11FC77| dw $FF7F
|11FC79| db $00 ; Raw block
|11FC7A| db $00
|11FC7B| db $23 ; Repeat byte
|11FC7C| db $EF
|11FC7D| db $00 ; Raw block
|11FC7E| db $E0
|11FC7F| db $23 ; Repeat byte
|11FC80| db $FF
|11FC81| db $01 ; Raw block
|11FC82| db $F6, $0F
|11FC84| db $47 ; Repeat word
|11FC85| dw $FF06
|11FC87| db $43 ; Repeat word
|11FC88| dw $FFFE
|11FC8A| db $00 ; Raw block
|11FC8B| db $00
|11FC8C| db $23 ; Repeat byte
|11FC8D| db $F7
|11FC8E| db $00 ; Raw block
|11FC8F| db $07
|11FC90| db $23 ; Repeat byte
|11FC91| db $FF
|11FC92| db $04 ; Raw block
|11FC93| db $00, $FF, $7F, $FF, $60
|11FC98| db $49 ; Repeat word
|11FC99| dw $67F7
|11FC9B| db $02 ; Raw block
|11FC9C| db $FF, $FF, $E0
|11FC9F| db $24 ; Repeat byte
|11FCA0| db $EF
|11FCA1| db $05 ; Raw block
|11FCA2| db $FF, $00, $FF, $FE, $FF, $06
|11FCA8| db $4A ; Repeat word
|11FCA9| dw $F6FF
|11FCAB| db $01 ; Raw block
|11FCAC| db $FF, $07
|11FCAE| db $25 ; Repeat byte
|11FCAF| db $F7
|11FCB0| db $03 ; Raw block
|11FCB1| db $67, $F7, $67, $F0
|11FCB5| db $45 ; Repeat word
|11FCB6| dw $FF60
|11FCB8| db $43 ; Repeat word
|11FCB9| dw $FF7F
|11FCBB| db $00 ; Raw block
|11FCBC| db $00
|11FCBD| db $23 ; Repeat byte
|11FCBE| db $EF
|11FCBF| db $00 ; Raw block
|11FCC0| db $E0
|11FCC1| db $23 ; Repeat byte
|11FCC2| db $FF
|11FCC3| db $03 ; Raw block
|11FCC4| db $F6, $FF, $F6, $0F
|11FCC8| db $45 ; Repeat word
|11FCC9| dw $FF06
|11FCCB| db $43 ; Repeat word
|11FCCC| dw $FFFE
|11FCCE| db $00 ; Raw block
|11FCCF| db $00
|11FCD0| db $23 ; Repeat byte
|11FCD1| db $F7
|11FCD2| db $00 ; Raw block
|11FCD3| db $07
|11FCD4| db $23 ; Repeat byte
|11FCD5| db $FF
|11FCD6| db $00 ; Raw block
|11FCD7| db $00
|11FCD8| db $44 ; Repeat word
|11FCD9| dw $7FFF
|11FCDB| db $00 ; Raw block
|11FCDC| db $60
|11FCDD| db $47 ; Repeat word
|11FCDE| dw $6FFF
|11FCE0| db $28 ; Repeat byte
|11FCE1| db $FF
|11FCE2| db $00 ; Raw block
|11FCE3| db $00
|11FCE4| db $44 ; Repeat word
|11FCE5| dw $FEFF
|11FCE7| db $00 ; Raw block
|11FCE8| db $06
|11FCE9| db $47 ; Repeat word
|11FCEA| dw $F6FF
|11FCEC| db $28 ; Repeat byte
|11FCED| db $FF
|11FCEE| db $47 ; Repeat word
|11FCEF| dw $FF6F
|11FCF1| db $00 ; Raw block
|11FCF2| db $60
|11FCF3| db $44 ; Repeat word
|11FCF4| dw $7FFF
|11FCF6| db $00 ; Raw block
|11FCF7| db $00
|11FCF8| db $28 ; Repeat byte
|11FCF9| db $FF
|11FCFA| db $47 ; Repeat word
|11FCFB| dw $FFF6
|11FCFD| db $00 ; Raw block
|11FCFE| db $06
|11FCFF| db $44 ; Repeat word
|11FD00| dw $FEFF
|11FD02| db $00 ; Raw block
|11FD03| db $00
|11FD04| db $28 ; Repeat byte
|11FD05| db $FF
|11FD06| db $00 ; Raw block
|11FD07| db $00
|11FD08| db $4D ; Repeat word
|11FD09| dw $67F7
|11FD0B| db $00 ; Raw block
|11FD0C| db $E0
|11FD0D| db $26 ; Repeat byte
|11FD0E| db $EF
|11FD0F| db $01 ; Raw block
|11FD10| db $FF, $00
|11FD12| db $46 ; Repeat word
|11FD13| dw $F6FF
|11FD15| db $46 ; Repeat word
|11FD16| dw $FFF2
|11FD18| db $00 ; Raw block
|11FD19| db $07
|11FD1A| db $26 ; Repeat byte
|11FD1B| db $F7
|11FD1C| db $00 ; Raw block
|11FD1D| db $F0
|11FD1E| db $49 ; Repeat word
|11FD1F| dw $FF60
|11FD21| db $84 ; Copy past
|11FD22| dw $003B
|11FD24| db $23 ; Repeat byte
|11FD25| db $EF
|11FD26| db $00 ; Raw block
|11FD27| db $E0
|11FD28| db $22 ; Repeat byte
|11FD29| db $FF
|11FD2A| db $00 ; Raw block
|11FD2B| db $0F
|11FD2C| db $4B ; Repeat word
|11FD2D| dw $FF02
|11FD2F| db $02 ; Raw block
|11FD30| db $FE, $FF, $00
|11FD33| db $23 ; Repeat byte
|11FD34| db $F7
|11FD35| db $00 ; Raw block
|11FD36| db $07
|11FD37| db $23 ; Repeat byte
|11FD38| db $FF
|11FD39| db $00 ; Raw block
|11FD3A| db $00
|11FD3B| db $44 ; Repeat word
|11FD3C| dw $7FFF
|11FD3E| db $00 ; Raw block
|11FD3F| db $60
|11FD40| db $47 ; Repeat word
|11FD41| dw $6FFF
|11FD43| db $28 ; Repeat byte
|11FD44| db $FF
|11FD45| db $00 ; Raw block
|11FD46| db $00
|11FD47| db $44 ; Repeat word
|11FD48| dw $FEFF
|11FD4A| db $00 ; Raw block
|11FD4B| db $06
|11FD4C| db $47 ; Repeat word
|11FD4D| dw $F6FF
|11FD4F| db $28 ; Repeat byte
|11FD50| db $FF
|11FD51| db $47 ; Repeat word
|11FD52| dw $FF6F
|11FD54| db $00 ; Raw block
|11FD55| db $60
|11FD56| db $44 ; Repeat word
|11FD57| dw $7FFF
|11FD59| db $00 ; Raw block
|11FD5A| db $00
|11FD5B| db $28 ; Repeat byte
|11FD5C| db $FF
|11FD5D| db $47 ; Repeat word
|11FD5E| dw $FFF6
|11FD60| db $00 ; Raw block
|11FD61| db $06
|11FD62| db $44 ; Repeat word
|11FD63| dw $FEFF
|11FD65| db $00 ; Raw block
|11FD66| db $00
|11FD67| db $28 ; Repeat byte
|11FD68| db $FF
|11FD69| db $04 ; Raw block
|11FD6A| db $00, $FF, $1F, $FF, $20
|11FD6F| db $43 ; Repeat word
|11FD70| dw $40FF
|11FD72| db $0A ; Raw block
|11FD73| db $FB, $47, $F4, $4F, $E8, $5F, $C0, $BF
|11FD7B| db $7F, $70, $60
|11FD7E| db $22 ; Repeat byte
|11FD7F| db $40
|11FD80| db $0F ; Raw block
|11FD81| db $E8, $5F, $EC, $5B, $EA, $5D, $E8, $5F
|11FD89| db $F4, $4F, $FF, $20, $FF, $1F, $FF, $00
|11FD91| db $23 ; Repeat byte
|11FD92| db $40
|11FD93| db $E0, $2F ; EXT Raw block
|11FD95| db $60, $70, $BF, $C0, $00, $FF, $57, $C7
|11FD9D| db $13, $AB, $30, $CC, $38, $C7, $18, $A7
|11FDA5| db $4C, $D3, $6F, $E0, $00, $28, $44, $03
|11FDAD| db $00, $40, $20, $10, $00, $FF, $D3, $CB
|11FDB5| db $11, $2D, $10, $EE, $10, $EF, $28, $C7
|11FDBD| db $C4, $03, $03, $00, $00, $24, $C2, $01
|11FDC5| db $23 ; Repeat byte
|11FDC6| db $00
|11FDC7| db $16 ; Raw block
|11FDC8| db $6C, $E0, $54, $D8, $24, $B8, $4F, $F0
|11FDD0| db $18, $E4, $73, $CB, $67, $F7, $00, $FF
|11FDD8| db $10, $20, $40, $00, $03, $04, $08
|11FDDF| db $26 ; Repeat byte
|11FDE0| db $00
|11FDE1| db $09 ; Raw block
|11FDE2| db $C3, $00, $24, $43, $98, $A4, $C3, $DB
|11FDEA| db $00, $FF
|11FDEC| db $23 ; Repeat byte
|11FDED| db $00
|11FDEE| db $15 ; Raw block
|11FDEF| db $80, $43, $24, $00, $48, $D0, $08, $B0
|11FDF7| db $08, $F0, $10, $E0, $20, $C0, $40, $80
|11FDFF| db $20, $80, $50, $C0, $20, $40
|11FE05| db $23 ; Repeat byte
|11FE06| db $00
|11FE07| db $01 ; Raw block
|11FE08| db $40, $20
|11FE0A| db $25 ; Repeat byte
|11FE0B| db $00
|11FE0C| db $05 ; Raw block
|11FE0D| db $07, $00, $08, $07, $10, $0C
|11FE13| db $43 ; Repeat word
|11FE14| dw $0B13
|11FE16| db $24 ; Repeat byte
|11FE17| db $00
|11FE18| db $0C ; Raw block
|11FE19| db $03, $04, $04, $C0, $C0, $90, $9F, $20
|11FE21| db $BF, $27, $B8, $2F, $B3
|11FE26| db $45 ; Repeat word
|11FE27| dw $B42F
|11FE29| db $01 ; Raw block
|11FE2A| db $3F, $60
|11FE2C| db $25 ; Repeat byte
|11FE2D| db $40
|11FE2E| db $05 ; Raw block
|11FE2F| db $FF, $00, $A2, $55, $AA, $55
|11FE35| db $43 ; Repeat word
|11FE36| dw $1CBE
|11FE38| db $01 ; Raw block
|11FE39| db $A2, $1C
|11FE3B| db $83 ; Copy past
|11FE3C| dw $031A
|11FE3E| db $01 ; Raw block
|11FE3F| db $00, $49
|11FE41| db $23 ; Repeat byte
|11FE42| db $41
|11FE43| db $04 ; Raw block
|11FE44| db $49, $41, $FF, $00, $80
|11FE49| db $4C ; Repeat word
|11FE4A| dw $BF00
|11FE4C| db $01 ; Raw block
|11FE4D| db $00, $7F
|11FE4F| db $23 ; Repeat byte
|11FE50| db $40
|11FE51| db $11 ; Raw block
|11FE52| db $5F, $5F, $7F, $80, $80, $7F, $B0, $7F
|11FE5A| db $B8, $7F, $9C, $7F, $8E, $7F, $87, $7F
|11FE62| db $82, $7E
|11FE64| db $26 ; Repeat byte
|11FE65| db $00
|11FE66| db $02 ; Raw block
|11FE67| db $01, $FF, $00
|11FE6A| db $4A ; Repeat word
|11FE6B| dw $FF00
|11FE6D| db $22 ; Repeat byte
|11FE6E| db $FF
|11FE6F| db $27 ; Repeat byte
|11FE70| db $00
|11FE71| db $01 ; Raw block
|11FE72| db $FF, $3F
|11FE74| db $45 ; Repeat word
|11FE75| dw $20E0
|11FE77| db $08 ; Raw block
|11FE78| db $FF, $00, $7F, $00, $80, $80, $C0, $7F
|11FE80| db $C0
|11FE81| db $22 ; Repeat byte
|11FE82| db $DF
|11FE83| db $1B ; Raw block
|11FE84| db $FF, $FF, $7F, $00, $E7, $9A, $BD, $00
|11FE8C| db $40, $9D, $40, $AD, $C0, $3F, $80, $88
|11FE94| db $E3, $1B, $C3, $3B, $00, $42, $22, $12
|11FE9C| db $00, $77, $04, $04
|11FEA0| db $4E ; Repeat word
|11FEA1| dw $007F
|11FEA3| db $28 ; Repeat byte
|11FEA4| db $00
|11FEA5| db $43 ; Repeat word
|11FEA6| dw $001F
|11FEA8| db $43 ; Repeat word
|11FEA9| dw $003F
|11FEAB| db $46 ; Repeat word
|11FEAC| dw $007F
|11FEAE| db $E4, $68 ; EXT Repeat byte
|11FEB0| db $00
|11FEB1| db $0F ; Raw block
|11FEB2| db $FF, $00, $FE, $7F, $FD, $7F, $FB, $7F
|11FEBA| db $87, $7F, $BF, $7F, $DF, $7F, $EF, $7F
|11FEC2| db $27 ; Repeat byte
|11FEC3| db $00
|11FEC4| db $17 ; Raw block
|11FEC5| db $FF, $00, $FF, $7E, $FF, $7D, $FE, $7B
|11FECD| db $FC, $07, $F8, $3F, $F0, $5C, $F2, $6C
|11FED5| db $00, $00, $01, $03, $07, $3F, $1F, $0D
|11FEDD| db $4E ; Repeat word
|11FEDE| dw $00FF
|11FEE0| db $28 ; Repeat byte
|11FEE1| db $00
|11FEE2| db $E0, $2E ; EXT Raw block
|11FEE4| db $2F, $B3, $10, $9F, $40, $C0, $3F, $FF
|11FEEC| db $06, $FF, $4F, $D9, $39, $A6, $FF, $C0
|11FEF4| db $40, $60, $3F, $00, $00, $20, $40, $00
|11FEFC| db $A2, $5D, $BE, $41, $80, $7C, $FD, $02
|11FF04| db $A4, $5B, $BF, $40, $80, $7F, $FF, $00
|11FF0C| db $41, $41, $7F, $02, $43, $40, $7F
|11FF13| db $44 ; Repeat word
|11FF14| dw $BF00
|11FF16| db $05 ; Raw block
|11FF17| db $80, $00, $BD, $42, $A0, $5F
|11FF1D| db $85 ; Copy past
|11FF1E| dw $04A2
|11FF20| db $03 ; Raw block
|11FF21| db $5F, $5F, $7F, $42
|11FF25| db $83 ; Copy past
|11FF26| dw $04AC
|11FF28| db $4F ; Repeat word
|11FF29| dw $7F81
|11FF2B| db $2B ; Repeat byte
|11FF2C| db $00
|11FF2D| db $2B ; Repeat byte
|11FF2E| db $3F
|11FF2F| db $01 ; Raw block
|11FF30| db $FF, $FF
|11FF32| db $25 ; Repeat byte
|11FF33| db $C0
|11FF34| db $E0, $39 ; EXT Raw block
|11FF36| db $80, $40, $FF, $00, $93, $6F, $E4, $5C
|11FF3E| db $A8, $19, $A9, $18, $D4, $4D, $AA, $66
|11FF46| db $3F, $00, $00, $03, $46, $46, $22, $11
|11FF4E| db $83, $8B, $E0, $18, $40, $BF, $40, $AF
|11FF56| db $C0, $1D, $A0, $1D, $FD, $80, $C7, $3A
|11FF5E| db $74, $07, $00, $10, $22, $42, $02, $00
|11FF66| db $05, $06, $FB, $02, $F5, $F8, $6B, $0C
|11FF6E| db $65, $96
|11FF70| db $43 ; Repeat word
|11FF71| dw $0AF3
|11FF73| db $09 ; Raw block
|11FF74| db $63, $92, $F8, $04, $02, $F0, $68, $64
|11FF7C| db $04, $0C
|11FF7E| db $43 ; Repeat word
|11FF7F| dw $1CD3
|11FF81| db $06 ; Raw block
|11FF82| db $D7, $18, $DF, $10, $C0, $1F, $C0
|11FF89| db $44 ; Repeat word
|11FF8A| dw $FF00
|11FF8C| db $24 ; Repeat byte
|11FF8D| db $20
|11FF8E| db $01 ; Raw block
|11FF8F| db $3F, $00
|11FF91| db $48 ; Repeat word
|11FF92| dw $FF00
|11FF94| db $02 ; Raw block
|11FF95| db $00, $FF, $00
|11FF98| db $43 ; Repeat word
|11FF99| dw $FF00
|11FF9B| db $25 ; Repeat byte
|11FF9C| db $00
|11FF9D| db $E0, $31 ; EXT Raw block
|11FF9F| db $FF, $00, $00, $BC, $64, $F7, $43, $86
|11FFA7| db $1D, $C3, $62, $C7, $20, $70, $90, $37
|11FFAF| db $CF, $FF, $00, $13, $38, $60, $1C, $1F
|11FFB7| db $0F, $00, $00, $0B, $0C, $E5, $F8, $19
|11FFBF| db $E0, $F3, $12, $E5, $06, $0A, $0D, $E4
|11FFC7| db $FB, $FF, $00, $F0, $02, $06, $0C, $F8
|11FFCF| db $F0, $00
|11FFD1| db $4F ; Repeat word
|11FFD2| dw $FF00
|11FFD4| db $23 ; Repeat byte
|11FFD5| db $00
|11FFD6| db $24 ; Repeat byte
|11FFD7| db $FF
|11FFD8| db $43 ; Repeat word
|11FFD9| dw $01FE
|11FFDB| db $43 ; Repeat word
|11FFDC| dw $00FF
|11FFDE| db $47 ; Repeat word
|11FFDF| dw $01FE
|11FFE1| db $27 ; Repeat byte
|11FFE2| db $1F
|11FFE3| db $4E ; Repeat word
|11FFE4| dw $00FF
|11FFE6| db $23 ; Repeat byte
|11FFE7| db $00
|11FFE8| db $24 ; Repeat byte
|11FFE9| db $1F
|11FFEA| db $4F ; Repeat word
|11FFEB| dw $00FF
|11FFED| db $22 ; Repeat byte
|11FFEE| db $1F
|11FFEF| db $24 ; Repeat byte
|11FFF0| db $FF
|11FFF1| db $FF ; End of GFX 0F

;===================================================================================================

GFX_10:
|11FFF2| db $0F ; Raw block
|11FFF3| db $01, $00, $03, $00, $06, $00, $0D, $00
|11FFFB| db $1A, $01, $35, $03, $6B

;===================================================================================================

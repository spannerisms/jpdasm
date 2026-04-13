org $018000

; TODO analyze all the unreachable draw code just for fun
;===================================================================================================
; Object format:
;---------------------------------------------------------------------------------------------------
; Subtype 1:
;   byte1        byte2        byte3
; xxxx xxss    yyyy yyzz    iiii iiii
;   ID   - iiiiii
;   X    - xxxxxx
;   Y    - yyyyyy
;   Size - sszz
;---------------------------------------------------------------------------------------------------
; Subtype 2:
;   byte1        byte2        byte3
; 1111 11ee    xxxx yyyy    ffii iiii
;   ID - iiiiii
;   X  - eexxxx
;   Y  - yyyyff
;---------------------------------------------------------------------------------------------------
; Subtype 3:
;   byte1        byte2        byte3
; xxxx xxdd    yyyy yypp    1111 1iii
;   ID - iiiddpp
;   X  - xxxxxx
;   Y  - yyyyyy
;---------------------------------------------------------------------------------------------------
; Doors:
;   byte1        byte2
; pppp pddd    iiii iiii
;   ID  - iiiiiiii
;   Pos - ppppp
;   Dir - ddd
;===================================================================================================

DrawObjects:

.type1_data_offset

|018000| dw RoomDrawObjectData.obj03D8 ; $03D8 ; 000 - 
|018002| dw RoomDrawObjectData.obj02E8 ; $02E8 ; 001 - 
|018004| dw RoomDrawObjectData.obj02F8 ; $02F8 ; 002 - 
|018006| dw RoomDrawObjectData.obj0328 ; $0328 ; 003 - 
|018008| dw RoomDrawObjectData.obj0338 ; $0338 ; 004 - 
|01800A| dw RoomDrawObjectData.obj0400 ; $0400 ; 005 - 
|01800C| dw RoomDrawObjectData.obj0410 ; $0410 ; 006 - 
|01800E| dw RoomDrawObjectData.obj0388 ; $0388 ; 007 - 
|018010| dw RoomDrawObjectData.obj0390 ; $0390 ; 008 - 
|018012| dw RoomDrawObjectData.obj0420 ; $0420 ; 009 - 
|018014| dw RoomDrawObjectData.obj042A ; $042A ; 00A - 
|018016| dw RoomDrawObjectData.obj0434 ; $0434 ; 00B - 
|018018| dw RoomDrawObjectData.obj043E ; $043E ; 00C - 
|01801A| dw RoomDrawObjectData.obj0448 ; $0448 ; 00D - 
|01801C| dw RoomDrawObjectData.obj0452 ; $0452 ; 00E - 
|01801E| dw RoomDrawObjectData.obj045C ; $045C ; 00F - 
|018020| dw RoomDrawObjectData.obj0466 ; $0466 ; 010 - 
|018022| dw RoomDrawObjectData.obj0470 ; $0470 ; 011 - 
|018024| dw RoomDrawObjectData.obj047A ; $047A ; 012 - 
|018026| dw RoomDrawObjectData.obj0484 ; $0484 ; 013 - 
|018028| dw RoomDrawObjectData.obj048E ; $048E ; 014 - 
|01802A| dw RoomDrawObjectData.obj0498 ; $0498 ; 015 - 
|01802C| dw RoomDrawObjectData.obj04A2 ; $04A2 ; 016 - 
|01802E| dw RoomDrawObjectData.obj04AC ; $04AC ; 017 - 
|018030| dw RoomDrawObjectData.obj04B6 ; $04B6 ; 018 - 
|018032| dw RoomDrawObjectData.obj04C0 ; $04C0 ; 019 - 
|018034| dw RoomDrawObjectData.obj04CA ; $04CA ; 01A - 
|018036| dw RoomDrawObjectData.obj04D4 ; $04D4 ; 01B - 
|018038| dw RoomDrawObjectData.obj04DE ; $04DE ; 01C - 
|01803A| dw RoomDrawObjectData.obj04E8 ; $04E8 ; 01D - 
|01803C| dw RoomDrawObjectData.obj04F2 ; $04F2 ; 01E - 
|01803E| dw RoomDrawObjectData.obj04FC ; $04FC ; 01F - 
|018040| dw RoomDrawObjectData.obj0506 ; $0506 ; 020 - 
|018042| dw RoomDrawObjectData.obj0598 ; $0598 ; 021 - 
|018044| dw RoomDrawObjectData.obj0600 ; $0600 ; 022 - 
|018046| dw RoomDrawObjectData.obj063C ; $063C ; 023 - 
|018048| dw RoomDrawObjectData.obj063C ; $063C ; 024 - 
|01804A| dw RoomDrawObjectData.obj063C ; $063C ; 025 - 
|01804C| dw RoomDrawObjectData.obj063C ; $063C ; 026 - 
|01804E| dw RoomDrawObjectData.obj063C ; $063C ; 027 - 
|018050| dw RoomDrawObjectData.obj0642 ; $0642 ; 028 - 
|018052| dw RoomDrawObjectData.obj064C ; $064C ; 029 - 
|018054| dw RoomDrawObjectData.obj0652 ; $0652 ; 02A - 
|018056| dw RoomDrawObjectData.obj0658 ; $0658 ; 02B - 
|018058| dw RoomDrawObjectData.obj065E ; $065E ; 02C - 
|01805A| dw RoomDrawObjectData.obj0664 ; $0664 ; 02D - 
|01805C| dw RoomDrawObjectData.obj066A ; $066A ; 02E - 
|01805E| dw RoomDrawObjectData.obj0688 ; $0688 ; 02F - 
|018060| dw RoomDrawObjectData.obj0694 ; $0694 ; 030 - 
|018062| dw RoomDrawObjectData.obj06A8 ; $06A8 ; 031 - 
|018064| dw RoomDrawObjectData.obj06A8 ; $06A8 ; 032 - 
|018066| dw RoomDrawObjectData.obj06A8 ; $06A8 ; 033 - 
|018068| dw RoomDrawObjectData.obj06C8 ; $06C8 ; 034 - 
|01806A| dw $0000                      ; $0000 ; 035 - 
|01806C| dw RoomDrawObjectData.obj078A ; $078A ; 036 - 
|01806E| dw RoomDrawObjectData.obj07AA ; $07AA ; 037 - 
|018070| dw RoomDrawObjectData.obj0E26 ; $0E26 ; 038 - 
|018072| dw RoomDrawObjectData.obj084A ; $084A ; 039 - 
|018074| dw RoomDrawObjectData.obj086A ; $086A ; 03A - 
|018076| dw RoomDrawObjectData.obj0882 ; $0882 ; 03B - 
|018078| dw RoomDrawObjectData.obj08CA ; $08CA ; 03C - 
|01807A| dw RoomDrawObjectData.obj085A ; $085A ; 03D - 
|01807C| dw RoomDrawObjectData.obj08FA ; $08FA ; 03E - 
|01807E| dw RoomDrawObjectData.obj091A ; $091A ; 03F - 
|018080| dw RoomDrawObjectData.obj0920 ; $0920 ; 040 - 
|018082| dw RoomDrawObjectData.obj092A ; $092A ; 041 - 
|018084| dw RoomDrawObjectData.obj0930 ; $0930 ; 042 - 
|018086| dw RoomDrawObjectData.obj0936 ; $0936 ; 043 - 
|018088| dw RoomDrawObjectData.obj093C ; $093C ; 044 - 
|01808A| dw RoomDrawObjectData.obj0942 ; $0942 ; 045 - 
|01808C| dw RoomDrawObjectData.obj0948 ; $0948 ; 046 - 
|01808E| dw RoomDrawObjectData.obj094E ; $094E ; 047 - 
|018090| dw RoomDrawObjectData.obj096C ; $096C ; 048 - 
|018092| dw RoomDrawObjectData.obj097E ; $097E ; 049 - 
|018094| dw RoomDrawObjectData.obj098E ; $098E ; 04A - 
|018096| dw RoomDrawObjectData.obj0902 ; $0902 ; 04B - 
|018098| dw RoomDrawObjectData.obj099E ; $099E ; 04C - 
|01809A| dw RoomDrawObjectData.obj09D8 ; $09D8 ; 04D - 
|01809C| dw RoomDrawObjectData.obj09D8 ; $09D8 ; 04E - 
|01809E| dw RoomDrawObjectData.obj09D8 ; $09D8 ; 04F - 
|0180A0| dw RoomDrawObjectData.obj09FA ; $09FA ; 050 - 
|0180A2| dw RoomDrawObjectData.obj156C ; $156C ; 051 - 
|0180A4| dw RoomDrawObjectData.obj1590 ; $1590 ; 052 - 
|0180A6| dw RoomDrawObjectData.obj1D86 ; $1D86 ; 053 - 
|0180A8| dw $0000                      ; $0000 ; 054 - 
|0180AA| dw RoomDrawObjectData.obj0A14 ; $0A14 ; 055 - 
|0180AC| dw RoomDrawObjectData.obj0A24 ; $0A24 ; 056 - 
|0180AE| dw RoomDrawObjectData.obj0A54 ; $0A54 ; 057 - 
|0180B0| dw RoomDrawObjectData.obj0A54 ; $0A54 ; 058 - 
|0180B2| dw RoomDrawObjectData.obj0A84 ; $0A84 ; 059 - 
|0180B4| dw RoomDrawObjectData.obj0A84 ; $0A84 ; 05A - 
|0180B6| dw RoomDrawObjectData.obj14DC ; $14DC ; 05B - 
|0180B8| dw RoomDrawObjectData.obj1500 ; $1500 ; 05C - 
|0180BA| dw RoomDrawObjectData.obj061E ; $061E ; 05D - 
|0180BC| dw RoomDrawObjectData.obj0E52 ; $0E52 ; 05E - 
|0180BE| dw RoomDrawObjectData.obj0600 ; $0600 ; 05F - 
|0180C0| dw RoomDrawObjectData.obj03D8 ; $03D8 ; 060 - 
|0180C2| dw RoomDrawObjectData.obj02C8 ; $02C8 ; 061 - 
|0180C4| dw RoomDrawObjectData.obj02D8 ; $02D8 ; 062 - 
|0180C6| dw RoomDrawObjectData.obj0308 ; $0308 ; 063 - 
|0180C8| dw RoomDrawObjectData.obj0318 ; $0318 ; 064 - 
|0180CA| dw RoomDrawObjectData.obj03E0 ; $03E0 ; 065 - 
|0180CC| dw RoomDrawObjectData.obj03F0 ; $03F0 ; 066 - 
|0180CE| dw RoomDrawObjectData.obj0378 ; $0378 ; 067 - 
|0180D0| dw RoomDrawObjectData.obj0380 ; $0380 ; 068 - 
|0180D2| dw RoomDrawObjectData.obj05FA ; $05FA ; 069 - 
|0180D4| dw RoomDrawObjectData.obj0648 ; $0648 ; 06A - 
|0180D6| dw RoomDrawObjectData.obj064A ; $064A ; 06B - 
|0180D8| dw RoomDrawObjectData.obj0670 ; $0670 ; 06C - 
|0180DA| dw RoomDrawObjectData.obj067C ; $067C ; 06D - 
|0180DC| dw RoomDrawObjectData.obj06A8 ; $06A8 ; 06E - 
|0180DE| dw RoomDrawObjectData.obj06A8 ; $06A8 ; 06F - 
|0180E0| dw RoomDrawObjectData.obj06A8 ; $06A8 ; 070 - 
|0180E2| dw RoomDrawObjectData.obj06C8 ; $06C8 ; 071 - 
|0180E4| dw $0000                      ; $0000 ; 072 - 
|0180E6| dw RoomDrawObjectData.obj07AA ; $07AA ; 073 - 
|0180E8| dw RoomDrawObjectData.obj07CA ; $07CA ; 074 - 
|0180EA| dw RoomDrawObjectData.obj084A ; $084A ; 075 - 
|0180EC| dw RoomDrawObjectData.obj089A ; $089A ; 076 - 
|0180EE| dw RoomDrawObjectData.obj08B2 ; $08B2 ; 077 - 
|0180F0| dw RoomDrawObjectData.obj090A ; $090A ; 078 - 
|0180F2| dw RoomDrawObjectData.obj0926 ; $0926 ; 079 - 
|0180F4| dw RoomDrawObjectData.obj0928 ; $0928 ; 07A - 
|0180F6| dw RoomDrawObjectData.obj0912 ; $0912 ; 07B - 
|0180F8| dw RoomDrawObjectData.obj09F8 ; $09F8 ; 07C - 
|0180FA| dw RoomDrawObjectData.obj1D7E ; $1D7E ; 07D - 
|0180FC| dw $0000                      ; $0000 ; 07E - 
|0180FE| dw RoomDrawObjectData.obj0A34 ; $0A34 ; 07F - 
|018100| dw RoomDrawObjectData.obj0A44 ; $0A44 ; 080 - 
|018102| dw RoomDrawObjectData.obj0A54 ; $0A54 ; 081 - 
|018104| dw RoomDrawObjectData.obj0A6C ; $0A6C ; 082 - 
|018106| dw RoomDrawObjectData.obj0A84 ; $0A84 ; 083 - 
|018108| dw RoomDrawObjectData.obj0A9C ; $0A9C ; 084 - 
|01810A| dw RoomDrawObjectData.obj1524 ; $1524 ; 085 - 
|01810C| dw RoomDrawObjectData.obj1548 ; $1548 ; 086 - 
|01810E| dw RoomDrawObjectData.obj085A ; $085A ; 087 - 
|018110| dw RoomDrawObjectData.obj0606 ; $0606 ; 088 - 
|018112| dw RoomDrawObjectData.obj0E52 ; $0E52 ; 089 - 
|018114| dw RoomDrawObjectData.obj05FA ; $05FA ; 08A - 
|018116| dw RoomDrawObjectData.obj06A0 ; $06A0 ; 08B - 
|018118| dw RoomDrawObjectData.obj06A2 ; $06A2 ; 08C - 
|01811A| dw RoomDrawObjectData.obj0B12 ; $0B12 ; 08D - 
|01811C| dw RoomDrawObjectData.obj0B14 ; $0B14 ; 08E - 
|01811E| dw RoomDrawObjectData.obj09B0 ; $09B0 ; 08F - 
|018120| dw RoomDrawObjectData.obj0B46 ; $0B46 ; 090 - 
|018122| dw RoomDrawObjectData.obj0B56 ; $0B56 ; 091 - 
|018124| dw RoomDrawObjectData.obj1F52 ; $1F52 ; 092 - 
|018126| dw RoomDrawObjectData.obj1F5A ; $1F5A ; 093 - 
|018128| dw RoomDrawObjectData.obj0288 ; $0288 ; 094 - 
|01812A| dw RoomDrawObjectData.obj0E82 ; $0E82 ; 095 - 
|01812C| dw RoomDrawObjectData.obj1DF2 ; $1DF2 ; 096 - 
|01812E| dw $0000                      ; $0000 ; 097 - 
|018130| dw $0000                      ; $0000 ; 098 - 
|018132| dw $0000                      ; $0000 ; 099 - 
|018134| dw $0000                      ; $0000 ; 09A - 
|018136| dw $0000                      ; $0000 ; 09B - 
|018138| dw $0000                      ; $0000 ; 09C - 
|01813A| dw $0000                      ; $0000 ; 09D - 
|01813C| dw $0000                      ; $0000 ; 09E - 
|01813E| dw $0000                      ; $0000 ; 09F - 
|018140| dw RoomDrawObjectData.obj03D8 ; $03D8 ; 0A0 - 
|018142| dw RoomDrawObjectData.obj03D8 ; $03D8 ; 0A1 - 
|018144| dw RoomDrawObjectData.obj03D8 ; $03D8 ; 0A2 - 
|018146| dw RoomDrawObjectData.obj03D8 ; $03D8 ; 0A3 - 
|018148| dw RoomDrawObjectData.obj05AA ; $05AA ; 0A4 - 
|01814A| dw RoomDrawObjectData.obj05B2 ; $05B2 ; 0A5 - 
|01814C| dw RoomDrawObjectData.obj05B2 ; $05B2 ; 0A6 - 
|01814E| dw RoomDrawObjectData.obj05B2 ; $05B2 ; 0A7 - 
|018150| dw RoomDrawObjectData.obj05B2 ; $05B2 ; 0A8 - 
|018152| dw RoomDrawObjectData.obj00E0 ; $00E0 ; 0A9 - 
|018154| dw RoomDrawObjectData.obj00E0 ; $00E0 ; 0AA - 
|018156| dw RoomDrawObjectData.obj00E0 ; $00E0 ; 0AB - 
|018158| dw RoomDrawObjectData.obj00E0 ; $00E0 ; 0AC - 
|01815A| dw RoomDrawObjectData.obj0110 ; $0110 ; 0AD - 
|01815C| dw $0000                      ; $0000 ; 0AE - 
|01815E| dw $0000                      ; $0000 ; 0AF - 
|018160| dw RoomDrawObjectData.obj06A4 ; $06A4 ; 0B0 - 
|018162| dw RoomDrawObjectData.obj06A6 ; $06A6 ; 0B1 - 
|018164| dw RoomDrawObjectData.obj0AE6 ; $0AE6 ; 0B2 - 
|018166| dw RoomDrawObjectData.obj0B06 ; $0B06 ; 0B3 - 
|018168| dw RoomDrawObjectData.obj0B0C ; $0B0C ; 0B4 - 
|01816A| dw RoomDrawObjectData.obj0B16 ; $0B16 ; 0B5 - 
|01816C| dw RoomDrawObjectData.obj0B26 ; $0B26 ; 0B6 - 
|01816E| dw RoomDrawObjectData.obj0B36 ; $0B36 ; 0B7 - 
|018170| dw RoomDrawObjectData.obj1F52 ; $1F52 ; 0B8 - 
|018172| dw RoomDrawObjectData.obj1F5A ; $1F5A ; 0B9 - 
|018174| dw RoomDrawObjectData.obj0288 ; $0288 ; 0BA - 
|018176| dw RoomDrawObjectData.obj0EBA ; $0EBA ; 0BB - 
|018178| dw RoomDrawObjectData.obj0E82 ; $0E82 ; 0BC - 
|01817A| dw RoomDrawObjectData.obj1DF2 ; $1DF2 ; 0BD - 
|01817C| dw $0000                      ; $0000 ; 0BE - 
|01817E| dw $0000                      ; $0000 ; 0BF - 
|018180| dw RoomDrawObjectData.obj03D8 ; $03D8 ; 0C0 - 
|018182| dw RoomDrawObjectData.obj0510 ; $0510 ; 0C1 - 
|018184| dw RoomDrawObjectData.obj05AA ; $05AA ; 0C2 - 
|018186| dw RoomDrawObjectData.obj05AA ; $05AA ; 0C3 - 
|018188| dw $0000                      ; $0000 ; 0C4 - 
|01818A| dw RoomDrawObjectData.obj0168 ; $0168 ; 0C5 - 
|01818C| dw RoomDrawObjectData.obj00E0 ; $00E0 ; 0C6 - 
|01818E| dw RoomDrawObjectData.obj0158 ; $0158 ; 0C7 - 
|018190| dw RoomDrawObjectData.obj0100 ; $0100 ; 0C8 - 
|018192| dw RoomDrawObjectData.obj0110 ; $0110 ; 0C9 - 
|018194| dw RoomDrawObjectData.obj0178 ; $0178 ; 0CA - 
|018196| dw RoomDrawObjectData.obj072A ; $072A ; 0CB - 
|018198| dw RoomDrawObjectData.obj072A ; $072A ; 0CC - 
|01819A| dw RoomDrawObjectData.obj072A ; $072A ; 0CD - 
|01819C| dw RoomDrawObjectData.obj075A ; $075A ; 0CE - 
|01819E| dw RoomDrawObjectData.obj0670 ; $0670 ; 0CF - 
|0181A0| dw RoomDrawObjectData.obj0670 ; $0670 ; 0D0 - 
|0181A2| dw RoomDrawObjectData.obj0130 ; $0130 ; 0D1 - 
|0181A4| dw RoomDrawObjectData.obj0148 ; $0148 ; 0D2 - 
|0181A6| dw RoomDrawObjectData.obj072A ; $072A ; 0D3 - 
|0181A8| dw RoomDrawObjectData.obj072A ; $072A ; 0D4 - 
|0181AA| dw RoomDrawObjectData.obj072A ; $072A ; 0D5 - 
|0181AC| dw RoomDrawObjectData.obj075A ; $075A ; 0D6 - 
|0181AE| dw RoomDrawObjectData.obj00E0 ; $00E0 ; 0D7 - 
|0181B0| dw RoomDrawObjectData.obj0110 ; $0110 ; 0D8 - 
|0181B2| dw RoomDrawObjectData.obj00F0 ; $00F0 ; 0D9 - 
|0181B4| dw RoomDrawObjectData.obj0110 ; $0110 ; 0DA - 
|0181B6| dw $0000                      ; $0000 ; 0DB - 
|0181B8| dw RoomDrawObjectData.obj0AB4 ; $0AB4 ; 0DC - 
|0181BA| dw RoomDrawObjectData.obj08DA ; $08DA ; 0DD - 
|0181BC| dw RoomDrawObjectData.obj0ADE ; $0ADE ; 0DE - 
|0181BE| dw RoomDrawObjectData.obj0188 ; $0188 ; 0DF - 
|0181C0| dw RoomDrawObjectData.obj01A0 ; $01A0 ; 0E0 - 
|0181C2| dw RoomDrawObjectData.obj01B0 ; $01B0 ; 0E1 - 
|0181C4| dw RoomDrawObjectData.obj01C0 ; $01C0 ; 0E2 - 
|0181C6| dw RoomDrawObjectData.obj01D0 ; $01D0 ; 0E3 - 
|0181C8| dw RoomDrawObjectData.obj01E0 ; $01E0 ; 0E4 - 
|0181CA| dw RoomDrawObjectData.obj01F0 ; $01F0 ; 0E5 - 
|0181CC| dw RoomDrawObjectData.obj0200 ; $0200 ; 0E6 - 
|0181CE| dw RoomDrawObjectData.obj0120 ; $0120 ; 0E7 - 
|0181D0| dw RoomDrawObjectData.obj02A8 ; $02A8 ; 0E8 - 
|0181D2| dw $0000                      ; $0000 ; 0E9 - 
|0181D4| dw $0000                      ; $0000 ; 0EA - 
|0181D6| dw $0000                      ; $0000 ; 0EB - 
|0181D8| dw $0000                      ; $0000 ; 0EC - 
|0181DA| dw $0000                      ; $0000 ; 0ED - 
|0181DC| dw $0000                      ; $0000 ; 0EE - 
|0181DE| dw $0000                      ; $0000 ; 0EF - 
|0181E0| dw $0000                      ; $0000 ; 0F0 - 
|0181E2| dw $0000                      ; $0000 ; 0F1 - 
|0181E4| dw $0000                      ; $0000 ; 0F2 - 
|0181E6| dw $0000                      ; $0000 ; 0F3 - 
|0181E8| dw $0000                      ; $0000 ; 0F4 - 
|0181EA| dw $0000                      ; $0000 ; 0F5 - 
|0181EC| dw $0000                      ; $0000 ; 0F6 - 
|0181EE| dw $0000                      ; $0000 ; 0F7 - 
|0181F0| dw $0000                      ; $0000 ; 0F8 - 
|0181F2| dw $0000                      ; $0000 ; 0F9 - 
|0181F4| dw $0000                      ; $0000 ; 0FA - 
|0181F6| dw $0000                      ; $0000 ; 0FB - 
|0181F8| dw $0000                      ; $0000 ; 0FC - 
|0181FA| dw $0000                      ; $0000 ; 0FD - 
|0181FC| dw $0000                      ; $0000 ; 0FE - 
|0181FE| dw $0000                      ; $0000 ; 0FF - 

;---------------------------------------------------------------------------------------------------

.type1_routine
|018200| dw RoomDraw_Rightwards2x2_1to15or32                            ; 000
|018202| dw RoomDraw_Rightwards2x4_1to15or26                            ; 001
|018204| dw RoomDraw_Rightwards2x4_1to15or26                            ; 002
|018206| dw RoomDraw_Rightwards2x4_1to16                                ; 003
|018208| dw RoomDraw_Rightwards2x4_1to16                                ; 004
|01820A| dw RoomDraw_Rightwards2x4spaced4_1to16_BothBG                  ; 005
|01820C| dw RoomDraw_Rightwards2x4spaced4_1to16_BothBG                  ; 006
|01820E| dw RoomDraw_Rightwards2x2_1to16                                ; 007
|018210| dw RoomDraw_Rightwards2x2_1to16                                ; 008
|018212| dw RoomDraw_DiagonalAcute_1to16                                ; 009
|018214| dw RoomDraw_DiagonalGrave_1to16                                ; 00A
|018216| dw RoomDraw_DiagonalGrave_1to16                                ; 00B
|018218| dw RoomDraw_DiagonalAcute_1to16                                ; 00C
|01821A| dw RoomDraw_DiagonalAcute_1to16                                ; 00D
|01821C| dw RoomDraw_DiagonalGrave_1to16                                ; 00E
|01821E| dw RoomDraw_DiagonalGrave_1to16                                ; 00F
|018220| dw RoomDraw_DiagonalAcute_1to16                                ; 010
|018222| dw RoomDraw_DiagonalAcute_1to16                                ; 011
|018224| dw RoomDraw_DiagonalGrave_1to16                                ; 012
|018226| dw RoomDraw_DiagonalGrave_1to16                                ; 013
|018228| dw RoomDraw_DiagonalAcute_1to16                                ; 014
|01822A| dw RoomDraw_DiagonalAcute_1to16_BothBG                         ; 015
|01822C| dw RoomDraw_DiagonalGrave_1to16_BothBG                         ; 016
|01822E| dw RoomDraw_DiagonalGrave_1to16_BothBG                         ; 017
|018230| dw RoomDraw_DiagonalAcute_1to16_BothBG                         ; 018
|018232| dw RoomDraw_DiagonalAcute_1to16_BothBG                         ; 019
|018234| dw RoomDraw_DiagonalGrave_1to16_BothBG                         ; 01A
|018236| dw RoomDraw_DiagonalGrave_1to16_BothBG                         ; 01B
|018238| dw RoomDraw_DiagonalAcute_1to16_BothBG                         ; 01C
|01823A| dw RoomDraw_DiagonalAcute_1to16_BothBG                         ; 01D
|01823C| dw RoomDraw_DiagonalGrave_1to16_BothBG                         ; 01E
|01823E| dw RoomDraw_DiagonalGrave_1to16_BothBG                         ; 01F
|018240| dw RoomDraw_DiagonalAcute_1to16_BothBG                         ; 020
|018242| dw RoomDraw_Rightwards1x2_1to16_plus2                          ; 021
|018244| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus3                   ; 022
|018246| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 023
|018248| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 024
|01824A| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 025
|01824C| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 026
|01824E| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 027
|018250| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 028
|018252| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 029
|018254| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 02A
|018256| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 02B
|018258| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 02C
|01825A| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 02D
|01825C| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 02E
|01825E| dw RoomDraw_RightwardsTopCorners1x2_1to16_plus13               ; 02F
|018260| dw RoomDraw_RightwardsBottomCorners1x2_1to16_plus13            ; 030
|018262| dw RoomDraw_Nothing_A                                          ; 031
|018264| dw RoomDraw_Nothing_A                                          ; 032
|018266| dw RoomDraw_Rightwards4x4_1to16                                ; 033
|018268| dw RoomDraw_Rightwards1x1Solid_1to16_plus3                     ; 034
|01826A| dw RoomDraw_DoorSwitcherer                                     ; 035
|01826C| dw RoomDraw_RightwardsDecor4x4spaced2_1to16                    ; 036
|01826E| dw RoomDraw_RightwardsDecor4x4spaced2_1to16                    ; 037
|018270| dw RoomDraw_RightwardsStatue2x3spaced2_1to16                   ; 038
|018272| dw RoomDraw_RightwardsPillar2x4spaced4_1to16                   ; 039
|018274| dw RoomDraw_RightwardsDecor4x3spaced4_1to16                    ; 03A
|018276| dw RoomDraw_RightwardsDecor4x3spaced4_1to16                    ; 03B
|018278| dw RoomDraw_RightwardsDoubled2x2spaced2_1to16                  ; 03C
|01827A| dw RoomDraw_RightwardsPillar2x4spaced4_1to16                   ; 03D
|01827C| dw RoomDraw_RightwardsDecor2x2spaced12_1to16                   ; 03E
|01827E| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 03F
|018280| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 040
|018282| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 041
|018284| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 042
|018286| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 043
|018288| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 044
|01828A| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 045
|01828C| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 046
|01828E| dw RoomDraw_Waterfall47                                        ; 047
|018290| dw RoomDraw_Waterfall48                                        ; 048
|018292| dw RoomDraw_RightwardsFloorTile4x2_1to16                       ; 049
|018294| dw RoomDraw_RightwardsFloorTile4x2_1to16                       ; 04A
|018296| dw RoomDraw_RightwardsDecor2x2spaced12_1to16                   ; 04B
|018298| dw RoomDraw_RightwardsBar4x3_1to16                             ; 04C
|01829A| dw RoomDraw_RightwardsShelf4x4_1to16                           ; 04D
|01829C| dw RoomDraw_RightwardsShelf4x4_1to16                           ; 04E
|01829E| dw RoomDraw_RightwardsShelf4x4_1to16                           ; 04F
|0182A0| dw RoomDraw_RightwardsLine1x1_1to16plus1                       ; 050
|0182A2| dw RoomDraw_RightwardsCannonHole4x3_1to16                      ; 051
|0182A4| dw RoomDraw_RightwardsCannonHole4x3_1to16                      ; 052
|0182A6| dw RoomDraw_Rightwards2x2_1to16                                ; 053
|0182A8| dw RoomDraw_Nothing_B                                          ; 054
|0182AA| dw RoomDraw_RightwardsDecor4x2spaced8_1to16                    ; 055
|0182AC| dw RoomDraw_RightwardsDecor4x2spaced8_1to16                    ; 056
|0182AE| dw RoomDraw_Nothing_C                                          ; 057
|0182B0| dw RoomDraw_Nothing_C                                          ; 058
|0182B2| dw RoomDraw_Nothing_C                                          ; 059
|0182B4| dw RoomDraw_Nothing_C                                          ; 05A
|0182B6| dw RoomDraw_RightwardsCannonHole4x3_1to16                      ; 05B
|0182B8| dw RoomDraw_RightwardsCannonHole4x3_1to16                      ; 05C
|0182BA| dw RoomDraw_RightwardsBigRail1x3_1to16plus5                    ; 05D
|0182BC| dw RoomDraw_RightwardsBlock2x2spaced2_1to16                    ; 05E
|0182BE| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus23                  ; 05F
|0182C0| dw RoomDraw_Downwards2x2_1to15or32                             ; 060
|0182C2| dw RoomDraw_Downwards4x2_1to15or26                             ; 061
|0182C4| dw RoomDraw_Downwards4x2_1to15or26                             ; 062
|0182C6| dw RoomDraw_Downwards4x2_1to16_BothBG                          ; 063
|0182C8| dw RoomDraw_Downwards4x2_1to16_BothBG                          ; 064
|0182CA| dw RoomDraw_DownwardsDecor4x2spaced4_1to16                     ; 065
|0182CC| dw RoomDraw_DownwardsDecor4x2spaced4_1to16                     ; 066
|0182CE| dw RoomDraw_Downwards2x2_1to16                                 ; 067
|0182D0| dw RoomDraw_Downwards2x2_1to16                                 ; 068
|0182D2| dw RoomDraw_DownwardsHasEdge1x1_1to16_plus3                    ; 069
|0182D4| dw RoomDraw_DownwardsEdge1x1_1to16                             ; 06A
|0182D6| dw RoomDraw_DownwardsEdge1x1_1to16                             ; 06B
|0182D8| dw RoomDraw_DownwardsLeftCorners2x1_1to16_plus12               ; 06C
|0182DA| dw RoomDraw_DownwardsRightCorners2x1_1to16_plus12              ; 06D
|0182DC| dw RoomDraw_Nothing_A                                          ; 06E
|0182DE| dw RoomDraw_Nothing_A                                          ; 06F
|0182E0| dw RoomDraw_DownwardsFloor4x4_1to16                            ; 070
|0182E2| dw RoomDraw_Downwards1x1Solid_1to16_plus3                      ; 071
|0182E4| dw RoomDraw_Nothing_B                                          ; 072
|0182E6| dw RoomDraw_DownwardsDecor4x4spaced2_1to16                     ; 073
|0182E8| dw RoomDraw_DownwardsDecor4x4spaced2_1to16                     ; 074
|0182EA| dw RoomDraw_DownwardsPillar2x4spaced2_1to16                    ; 075
|0182EC| dw RoomDraw_DownwardsDecor3x4spaced4_1to16                     ; 076
|0182EE| dw RoomDraw_DownwardsDecor3x4spaced4_1to16                     ; 077
|0182F0| dw RoomDraw_DownwardsDecor2x2spaced12_1to16                    ; 078
|0182F2| dw RoomDraw_DownwardsEdge1x1_1to16                             ; 079
|0182F4| dw RoomDraw_DownwardsEdge1x1_1to16                             ; 07A
|0182F6| dw RoomDraw_DownwardsDecor2x2spaced12_1to16                    ; 07B
|0182F8| dw RoomDraw_DownwardsLine1x1_1to16plus1                        ; 07C
|0182FA| dw RoomDraw_Downwards2x2_1to16                                 ; 07D
|0182FC| dw RoomDraw_Nothing_B                                          ; 07E
|0182FE| dw RoomDraw_DownwardsDecor2x4spaced8_1to16                     ; 07F
|018300| dw RoomDraw_DownwardsDecor2x4spaced8_1to16                     ; 080
|018302| dw RoomDraw_DownwardsDecor3x4spaced2_1to16                     ; 081
|018304| dw RoomDraw_DownwardsDecor3x4spaced2_1to16                     ; 082
|018306| dw RoomDraw_DownwardsDecor3x4spaced2_1to16                     ; 083
|018308| dw RoomDraw_DownwardsDecor3x4spaced2_1to16                     ; 084
|01830A| dw RoomDraw_DownwardsCannonHole3x4_1to16                       ; 085
|01830C| dw RoomDraw_DownwardsCannonHole3x4_1to16                       ; 086
|01830E| dw RoomDraw_DownwardsPillar2x4spaced2_1to16                    ; 087
|018310| dw RoomDraw_DownwardsBigRail3x1_1to16plus5                     ; 088
|018312| dw RoomDraw_DownwardsBlock2x2spaced2_1to16                     ; 089
|018314| dw RoomDraw_DownwardsHasEdge1x1_1to16_plus23                   ; 08A
|018316| dw RoomDraw_DownwardsEdge1x1_1to16plus7                        ; 08B
|018318| dw RoomDraw_DownwardsEdge1x1_1to16plus7                        ; 08C
|01831A| dw RoomDraw_DownwardsEdge1x1_1to16                             ; 08D
|01831C| dw RoomDraw_DownwardsEdge1x1_1to16                             ; 08E
|01831E| dw RoomDraw_DownwardsBar2x5_1to16                              ; 08F
|018320| dw RoomDraw_Downwards4x2_1to15or26                             ; 090
|018322| dw RoomDraw_Downwards4x2_1to15or26                             ; 091
|018324| dw RoomDraw_Downwards2x2_1to15or32                             ; 092
|018326| dw RoomDraw_Downwards2x2_1to15or32                             ; 093
|018328| dw RoomDraw_DownwardsFloor4x4_1to16                            ; 094
|01832A| dw RoomDraw_DownwardsPots2x2_1to16                             ; 095
|01832C| dw RoomDraw_DownwardsHammerPegs2x2_1to16                       ; 096
|01832E| dw RoomDraw_Nothing_B                                          ; 097
|018330| dw RoomDraw_Nothing_B                                          ; 098
|018332| dw RoomDraw_Nothing_B                                          ; 099
|018334| dw RoomDraw_Nothing_B                                          ; 09A
|018336| dw RoomDraw_Nothing_B                                          ; 09B
|018338| dw RoomDraw_Nothing_B                                          ; 09C
|01833A| dw RoomDraw_Nothing_B                                          ; 09D
|01833C| dw RoomDraw_Nothing_B                                          ; 09E
|01833E| dw RoomDraw_Nothing_B                                          ; 09F
|018340| dw RoomDraw_DiagonalCeilingTopLeftA                            ; 0A0
|018342| dw RoomDraw_DiagonalCeilingBottomLeftA                         ; 0A1
|018344| dw RoomDraw_DiagonalCeilingTopRightA                           ; 0A2
|018346| dw RoomDraw_DiagonalCeilingBottomRightA                        ; 0A3
|018348| dw RoomDraw_BigHole4x4_1to16                                   ; 0A4
|01834A| dw RoomDraw_DiagonalCeilingTopLeftB                            ; 0A5
|01834C| dw RoomDraw_DiagonalCeilingBottomLeftB                         ; 0A6
|01834E| dw RoomDraw_DiagonalCeilingTopRightB                           ; 0A7
|018350| dw RoomDraw_DiagonalCeilingBottomRightB                        ; 0A8
|018352| dw RoomDraw_DiagonalCeilingTopLeftB                            ; 0A9
|018354| dw RoomDraw_DiagonalCeilingBottomLeftB                         ; 0AA
|018356| dw RoomDraw_DiagonalCeilingTopRightB                           ; 0AB
|018358| dw RoomDraw_DiagonalCeilingBottomRightB                        ; 0AC
|01835A| dw RoomDraw_Nothing_B                                          ; 0AD
|01835C| dw RoomDraw_Nothing_B                                          ; 0AE
|01835E| dw RoomDraw_Nothing_B                                          ; 0AF
|018360| dw RoomDraw_RightwardsEdge1x1_1to16plus7                       ; 0B0
|018362| dw RoomDraw_RightwardsEdge1x1_1to16plus7                       ; 0B1
|018364| dw RoomDraw_Rightwards4x4_1to16                                ; 0B2
|018366| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 0B3
|018368| dw RoomDraw_RightwardsHasEdge1x1_1to16_plus2                   ; 0B4
|01836A| dw RoomDraw_Weird2x4_1_to_16                                   ; 0B5
|01836C| dw RoomDraw_Rightwards2x4_1to15or26                            ; 0B6
|01836E| dw RoomDraw_Rightwards2x4_1to15or26                            ; 0B7
|018370| dw RoomDraw_Rightwards2x2_1to15or32                            ; 0B8
|018372| dw RoomDraw_Rightwards2x2_1to15or32                            ; 0B9
|018374| dw RoomDraw_Rightwards4x4_1to16                                ; 0BA
|018376| dw RoomDraw_RightwardsBlock2x2spaced2_1to16                    ; 0BB
|018378| dw RoomDraw_RightwardsPots2x2_1to16                            ; 0BC
|01837A| dw RoomDraw_RightwardsHammerPegs2x2_1to16                      ; 0BD
|01837C| dw RoomDraw_Nothing_B                                          ; 0BE
|01837E| dw RoomDraw_Nothing_B                                          ; 0BF
|018380| dw RoomDraw_4x4BlocksIn4x4SuperSquare                          ; 0C0
|018382| dw RoomDraw_ClosedChestPlatform                                ; 0C1
|018384| dw RoomDraw_4x4BlocksIn4x4SuperSquare                          ; 0C2
|018386| dw RoomDraw_3x3FloorIn4x4SuperSquare                           ; 0C3
|018388| dw RoomDraw_4x4FloorOneIn4x4SuperSquare                        ; 0C4
|01838A| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0C5
|01838C| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0C6
|01838E| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0C7
|018390| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0C8
|018392| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0C9
|018394| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0CA
|018396| dw RoomDraw_Nothing_E                                          ; 0CB
|018398| dw RoomDraw_Nothing_E                                          ; 0CC
|01839A| dw RoomDraw_MovingWallWest                                     ; 0CD
|01839C| dw RoomDraw_MovingWallEast                                     ; 0CE
|01839E| dw RoomDraw_Nothing_D                                          ; 0CF
|0183A0| dw RoomDraw_Nothing_D                                          ; 0D0
|0183A2| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0D1
|0183A4| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0D2
|0183A6| dw RoomDraw_CheckIfWallIsMoved                                 ; 0D3
|0183A8| dw RoomDraw_CheckIfWallIsMoved                                 ; 0D4
|0183AA| dw RoomDraw_CheckIfWallIsMoved                                 ; 0D5
|0183AC| dw RoomDraw_CheckIfWallIsMoved                                 ; 0D6
|0183AE| dw RoomDraw_3x3FloorIn4x4SuperSquare                           ; 0D7
|0183B0| dw RoomDraw_WaterOverlayA8x8_1to16                             ; 0D8
|0183B2| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0D9
|0183B4| dw RoomDraw_WaterOverlayB8x8_1to16                             ; 0DA
|0183B6| dw RoomDraw_4x4FloorTwoIn4x4SuperSquare                        ; 0DB
|0183B8| dw RoomDraw_OpenChestPlatform                                  ; 0DC
|0183BA| dw RoomDraw_TableRock4x4_1to16                                 ; 0DD
|0183BC| dw RoomDraw_Spike2x2In4x4SuperSquare                           ; 0DE
|0183BE| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0DF
|0183C0| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0E0
|0183C2| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0E1
|0183C4| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0E2
|0183C6| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0E3
|0183C8| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0E4
|0183CA| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0E5
|0183CC| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0E6
|0183CE| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0E7
|0183D0| dw RoomDraw_4x4FloorIn4x4SuperSquare                           ; 0E8
|0183D2| dw RoomDraw_Nothing_B                                          ; 0E9
|0183D4| dw RoomDraw_Nothing_B                                          ; 0EA
|0183D6| dw RoomDraw_Nothing_B                                          ; 0EB
|0183D8| dw RoomDraw_Nothing_B                                          ; 0EC
|0183DA| dw RoomDraw_Nothing_B                                          ; 0ED
|0183DC| dw RoomDraw_Nothing_B                                          ; 0EE
|0183DE| dw RoomDraw_Nothing_B                                          ; 0EF
|0183E0| dw RoomDraw_Nothing_B                                          ; 0F0
|0183E2| dw RoomDraw_Nothing_B                                          ; 0F1
|0183E4| dw RoomDraw_Nothing_B                                          ; 0F2
|0183E6| dw RoomDraw_Nothing_B                                          ; 0F3
|0183E8| dw RoomDraw_Nothing_B                                          ; 0F4
|0183EA| dw RoomDraw_Nothing_B                                          ; 0F5
|0183EC| dw RoomDraw_Nothing_B                                          ; 0F6
|0183EE| dw RoomDraw_Nothing_B                                          ; 0F7

;===================================================================================================

.type2_data_offset

|0183F0| dw RoomDrawObjectData.obj0B66 ; $0B66 ; 100 - 
|0183F2| dw RoomDrawObjectData.obj0B86 ; $0B86 ; 101 - 
|0183F4| dw RoomDrawObjectData.obj0BA6 ; $0BA6 ; 102 - 
|0183F6| dw RoomDrawObjectData.obj0BC6 ; $0BC6 ; 103 - 
|0183F8| dw RoomDrawObjectData.obj0C66 ; $0C66 ; 104 - 
|0183FA| dw RoomDrawObjectData.obj0C86 ; $0C86 ; 105 - 
|0183FC| dw RoomDrawObjectData.obj0CA6 ; $0CA6 ; 106 - 
|0183FE| dw RoomDrawObjectData.obj0CC6 ; $0CC6 ; 107 - 
|018400| dw RoomDrawObjectData.obj0BE6 ; $0BE6 ; 108 - 
|018402| dw RoomDrawObjectData.obj0C06 ; $0C06 ; 109 - 
|018404| dw RoomDrawObjectData.obj0C26 ; $0C26 ; 10A - 
|018406| dw RoomDrawObjectData.obj0C46 ; $0C46 ; 10B - 
|018408| dw RoomDrawObjectData.obj0CE6 ; $0CE6 ; 10C - 
|01840A| dw RoomDrawObjectData.obj0D06 ; $0D06 ; 10D - 
|01840C| dw RoomDrawObjectData.obj0D26 ; $0D26 ; 10E - 
|01840E| dw RoomDrawObjectData.obj0D46 ; $0D46 ; 10F - 
|018410| dw RoomDrawObjectData.obj0D66 ; $0D66 ; 110 - 
|018412| dw RoomDrawObjectData.obj0D7E ; $0D7E ; 111 - 
|018414| dw RoomDrawObjectData.obj0D96 ; $0D96 ; 112 - 
|018416| dw RoomDrawObjectData.obj0DAE ; $0DAE ; 113 - 
|018418| dw RoomDrawObjectData.obj0DC6 ; $0DC6 ; 114 - 
|01841A| dw RoomDrawObjectData.obj0DDE ; $0DDE ; 115 - 
|01841C| dw RoomDrawObjectData.obj0DF6 ; $0DF6 ; 116 - 
|01841E| dw RoomDrawObjectData.obj0E0E ; $0E0E ; 117 - 
|018420| dw RoomDrawObjectData.obj0398 ; $0398 ; 118 - 
|018422| dw RoomDrawObjectData.obj03A0 ; $03A0 ; 119 - 
|018424| dw RoomDrawObjectData.obj03A8 ; $03A8 ; 11A - 
|018426| dw RoomDrawObjectData.obj03B0 ; $03B0 ; 11B - 
|018428| dw RoomDrawObjectData.obj0E32 ; $0E32 ; 11C - 
|01842A| dw RoomDrawObjectData.obj0E26 ; $0E26 ; 11D - 
|01842C| dw RoomDrawObjectData.obj0EA2 ; $0EA2 ; 11E - 
|01842E| dw RoomDrawObjectData.obj0E9A ; $0E9A ; 11F - 
|018430| dw RoomDrawObjectData.obj0ECA ; $0ECA ; 120 - 
|018432| dw RoomDrawObjectData.obj0ED2 ; $0ED2 ; 121 - 
|018434| dw RoomDrawObjectData.obj0EDE ; $0EDE ; 122 - 
|018436| dw RoomDrawObjectData.obj0EDE ; $0EDE ; 123 - 
|018438| dw RoomDrawObjectData.obj0F1E ; $0F1E ; 124 - 
|01843A| dw RoomDrawObjectData.obj0F3E ; $0F3E ; 125 - 
|01843C| dw RoomDrawObjectData.obj0F5E ; $0F5E ; 126 - 
|01843E| dw RoomDrawObjectData.obj0F6A ; $0F6A ; 127 - 
|018440| dw RoomDrawObjectData.obj0EF6 ; $0EF6 ; 128 - 
|018442| dw RoomDrawObjectData.obj0F72 ; $0F72 ; 129 - 
|018444| dw RoomDrawObjectData.obj0F92 ; $0F92 ; 12A - 
|018446| dw RoomDrawObjectData.obj0FA2 ; $0FA2 ; 12B - 
|018448| dw RoomDrawObjectData.obj0FA2 ; $0FA2 ; 12C - 
|01844A| dw RoomDrawObjectData.obj1088 ; $1088 ; 12D - 
|01844C| dw RoomDrawObjectData.obj10A8 ; $10A8 ; 12E - 
|01844E| dw RoomDrawObjectData.obj10A8 ; $10A8 ; 12F - 
|018450| dw RoomDrawObjectData.obj10C8 ; $10C8 ; 130 - 
|018452| dw RoomDrawObjectData.obj10C8 ; $10C8 ; 131 - 
|018454| dw RoomDrawObjectData.obj10C8 ; $10C8 ; 132 - 
|018456| dw RoomDrawObjectData.obj10C8 ; $10C8 ; 133 - 
|018458| dw RoomDrawObjectData.obj0E52 ; $0E52 ; 134 - 
|01845A| dw RoomDrawObjectData.obj1108 ; $1108 ; 135 - 
|01845C| dw RoomDrawObjectData.obj1108 ; $1108 ; 136 - 
|01845E| dw RoomDrawObjectData.obj12A8 ; $12A8 ; 137 - 
|018460| dw RoomDrawObjectData.obj1148 ; $1148 ; 138 - 
|018462| dw RoomDrawObjectData.obj1160 ; $1160 ; 139 - 
|018464| dw RoomDrawObjectData.obj1178 ; $1178 ; 13A - 
|018466| dw RoomDrawObjectData.obj1190 ; $1190 ; 13B - 
|018468| dw RoomDrawObjectData.obj1458 ; $1458 ; 13C - 
|01846A| dw RoomDrawObjectData.obj1488 ; $1488 ; 13D - 
|01846C| dw RoomDrawObjectData.obj2062 ; $2062 ; 13E - 
|01846E| dw RoomDrawObjectData.obj2086 ; $2086 ; 13F - 

;---------------------------------------------------------------------------------------------------

.type2_routine
|018470| dw RoomDraw_4x4                                                ; 100
|018472| dw RoomDraw_4x4                                                ; 101
|018474| dw RoomDraw_4x4                                                ; 102
|018476| dw RoomDraw_4x4                                                ; 103
|018478| dw RoomDraw_4x4                                                ; 104
|01847A| dw RoomDraw_4x4                                                ; 105
|01847C| dw RoomDraw_4x4                                                ; 106
|01847E| dw RoomDraw_4x4                                                ; 107
|018480| dw RoomDraw_4x4Corner_BothBG                                   ; 108
|018482| dw RoomDraw_4x4Corner_BothBG                                   ; 109
|018484| dw RoomDraw_4x4Corner_BothBG                                   ; 10A
|018486| dw RoomDraw_4x4Corner_BothBG                                   ; 10B
|018488| dw RoomDraw_4x4Corner_BothBG                                   ; 10C
|01848A| dw RoomDraw_4x4Corner_BothBG                                   ; 10D
|01848C| dw RoomDraw_4x4Corner_BothBG                                   ; 10E
|01848E| dw RoomDraw_4x4Corner_BothBG                                   ; 10F
|018490| dw RoomDraw_WeirdCornerBottom_BothBG                           ; 110
|018492| dw RoomDraw_WeirdCornerBottom_BothBG                           ; 111
|018494| dw RoomDraw_WeirdCornerBottom_BothBG                           ; 112
|018496| dw RoomDraw_WeirdCornerBottom_BothBG                           ; 113
|018498| dw RoomDraw_WeirdCornerTop_BothBG                              ; 114
|01849A| dw RoomDraw_WeirdCornerTop_BothBG                              ; 115
|01849C| dw RoomDraw_WeirdCornerTop_BothBG                              ; 116
|01849E| dw RoomDraw_WeirdCornerTop_BothBG                              ; 117
|0184A0| dw RoomDraw_Rightwards2x2                                      ; 118
|0184A2| dw RoomDraw_Rightwards2x2                                      ; 119
|0184A4| dw RoomDraw_Rightwards2x2                                      ; 11A
|0184A6| dw RoomDraw_Rightwards2x2                                      ; 11B
|0184A8| dw RoomDraw_4x4                                                ; 11C
|0184AA| dw RoomDraw_Single2x3Pillar                                    ; 11D
|0184AC| dw RoomDraw_Single2x2                                          ; 11E
|0184AE| dw RoomDraw_EnabledStarSwitch                                  ; 11F
|0184B0| dw RoomDraw_LitTorch                                           ; 120
|0184B2| dw RoomDraw_Single2x3Pillar                                    ; 121
|0184B4| dw RoomDraw_Bed4x5                                             ; 122
|0184B6| dw RoomDraw_TableRock4x3                                       ; 123
|0184B8| dw RoomDraw_4x4                                                ; 124
|0184BA| dw RoomDraw_4x4                                                ; 125
|0184BC| dw RoomDraw_Single2x3Pillar                                    ; 126
|0184BE| dw RoomDraw_Rightwards2x2                                      ; 127
|0184C0| dw RoomDraw_Bed4x5                                             ; 128
|0184C2| dw RoomDraw_4x4                                                ; 129
|0184C4| dw RoomDraw_PortraitOfMario                                    ; 12A
|0184C6| dw RoomDraw_Rightwards2x2                                      ; 12B
|0184C8| dw RoomDraw_DrawRightwards3x6                                  ; 12C
|0184CA| dw RoomDraw_InterRoomFatStairsUp                               ; 12D
|0184CC| dw RoomDraw_InterRoomFatStairsDownA                            ; 12E
|0184CE| dw RoomDraw_InterRoomFatStairsDownB                            ; 12F
|0184D0| dw RoomDraw_AutoStairsNorthMultiLayerEG0                       ; 130
|0184D2| dw RoomDraw_AutoStairsNorthMultiLayer                          ; 131
|0184D4| dw RoomDraw_AutoStairsNorthMergedLayer                         ; 132
|0184D6| dw RoomDraw_AutoStairsNorthWater                               ; 133
|0184D8| dw RoomDraw_Rightwards2x2                                      ; 134
|0184DA| dw RoomDraw_WaterLadderNorth                                   ; 135
|0184DC| dw RoomDraw_WaterLadderSouth                                   ; 136
|0184DE| dw RoomDraw_DamFloodGate                                       ; 137
|0184E0| dw RoomDraw_SpiralStairsGoingUpUpper                           ; 138
|0184E2| dw RoomDraw_SpiralStairsGoingDownUpper                         ; 139
|0184E4| dw RoomDraw_SpiralStairsGoingUpLower                           ; 13A
|0184E6| dw RoomDraw_SpiralStairsGoingDownLower                         ; 13B
|0184E8| dw RoomDraw_SanctuaryWall                                      ; 13C
|0184EA| dw RoomDraw_TableRock4x3                                       ; 13D
|0184EC| dw RoomDraw_Utility6x3                                         ; 13E
|0184EE| dw RoomDraw_MagicBatAltar                                      ; 13F

;===================================================================================================

.type3_data_offset

|0184F0| dw RoomDrawObjectData.obj1614 ; $1614 ; 200 - 
|0184F2| dw RoomDrawObjectData.obj162C ; $162C ; 201 - 
|0184F4| dw RoomDrawObjectData.obj1654 ; $1654 ; 202 - 
|0184F6| dw RoomDrawObjectData.obj0A0E ; $0A0E ; 203 - 
|0184F8| dw RoomDrawObjectData.obj0A0C ; $0A0C ; 204 - 
|0184FA| dw RoomDrawObjectData.obj09FC ; $09FC ; 205 - 
|0184FC| dw RoomDrawObjectData.obj09FE ; $09FE ; 206 - 
|0184FE| dw RoomDrawObjectData.obj0A00 ; $0A00 ; 207 - 
|018500| dw RoomDrawObjectData.obj0A02 ; $0A02 ; 208 - 
|018502| dw RoomDrawObjectData.obj0A04 ; $0A04 ; 209 - 
|018504| dw RoomDrawObjectData.obj0A06 ; $0A06 ; 20A - 
|018506| dw RoomDrawObjectData.obj0A08 ; $0A08 ; 20B - 
|018508| dw RoomDrawObjectData.obj0A0A ; $0A0A ; 20C - 
|01850A| dw $0000                      ; $0000 ; 20D - 
|01850C| dw RoomDrawObjectData.obj0A10 ; $0A10 ; 20E - 
|01850E| dw RoomDrawObjectData.obj0A12 ; $0A12 ; 20F - 
|018510| dw RoomDrawObjectData.obj1DDA ; $1DDA ; 210 - 
|018512| dw RoomDrawObjectData.obj1DE2 ; $1DE2 ; 211 - 
|018514| dw RoomDrawObjectData.obj1DD6 ; $1DD6 ; 212 - 
|018516| dw RoomDrawObjectData.obj1DEA ; $1DEA ; 213 - 
|018518| dw RoomDrawObjectData.obj15FC ; $15FC ; 214 - 
|01851A| dw RoomDrawObjectData.obj1DFA ; $1DFA ; 215 - 
|01851C| dw RoomDrawObjectData.obj1DF2 ; $1DF2 ; 216 - 
|01851E| dw RoomDrawObjectData.obj1488 ; $1488 ; 217 - 
|018520| dw RoomDrawObjectData.obj1494 ; $1494 ; 218 - 
|018522| dw RoomDrawObjectData.obj149C ; $149C ; 219 - 
|018524| dw RoomDrawObjectData.obj14A4 ; $14A4 ; 21A - 
|018526| dw RoomDrawObjectData.obj10E8 ; $10E8 ; 21B - 
|018528| dw RoomDrawObjectData.obj10E8 ; $10E8 ; 21C - 
|01852A| dw RoomDrawObjectData.obj10E8 ; $10E8 ; 21D - 
|01852C| dw RoomDrawObjectData.obj11A8 ; $11A8 ; 21E - 
|01852E| dw RoomDrawObjectData.obj11C8 ; $11C8 ; 21F - 
|018530| dw RoomDrawObjectData.obj11E8 ; $11E8 ; 220 - 
|018532| dw RoomDrawObjectData.obj1208 ; $1208 ; 221 - 
|018534| dw RoomDrawObjectData.obj03B8 ; $03B8 ; 222 - 
|018536| dw RoomDrawObjectData.obj03C0 ; $03C0 ; 223 - 
|018538| dw RoomDrawObjectData.obj03C8 ; $03C8 ; 224 - 
|01853A| dw RoomDrawObjectData.obj03D0 ; $03D0 ; 225 - 
|01853C| dw RoomDrawObjectData.obj1228 ; $1228 ; 226 - 
|01853E| dw RoomDrawObjectData.obj1248 ; $1248 ; 227 - 
|018540| dw RoomDrawObjectData.obj1268 ; $1268 ; 228 - 
|018542| dw RoomDrawObjectData.obj1288 ; $1288 ; 229 - 
|018544| dw $0000                      ; $0000 ; 22A - 
|018546| dw RoomDrawObjectData.obj0E5A ; $0E5A ; 22B - 
|018548| dw RoomDrawObjectData.obj0E62 ; $0E62 ; 22C - 
|01854A| dw $0000                      ; $0000 ; 22D - 
|01854C| dw $0000                      ; $0000 ; 22E - 
|01854E| dw RoomDrawObjectData.obj0E82 ; $0E82 ; 22F - 
|018550| dw RoomDrawObjectData.obj0E8A ; $0E8A ; 230 - 
|018552| dw RoomDrawObjectData.obj14AC ; $14AC ; 231 - 
|018554| dw RoomDrawObjectData.obj14C4 ; $14C4 ; 232 - 
|018556| dw RoomDrawObjectData.obj10E8 ; $10E8 ; 233 - 
|018558| dw RoomDrawObjectData.obj1614 ; $1614 ; 234 - 
|01855A| dw RoomDrawObjectData.obj1614 ; $1614 ; 235 - 
|01855C| dw RoomDrawObjectData.obj1614 ; $1614 ; 236 - 
|01855E| dw RoomDrawObjectData.obj1614 ; $1614 ; 237 - 
|018560| dw RoomDrawObjectData.obj1614 ; $1614 ; 238 - 
|018562| dw RoomDrawObjectData.obj1614 ; $1614 ; 239 - 
|018564| dw RoomDrawObjectData.obj1CBE ; $1CBE ; 23A - 
|018566| dw RoomDrawObjectData.obj1CEE ; $1CEE ; 23B - 
|018568| dw RoomDrawObjectData.obj1D1E ; $1D1E ; 23C - 
|01856A| dw RoomDrawObjectData.obj1D4E ; $1D4E ; 23D - 
|01856C| dw RoomDrawObjectData.obj1D8E ; $1D8E ; 23E - 
|01856E| dw RoomDrawObjectData.obj1D96 ; $1D96 ; 23F - 
|018570| dw RoomDrawObjectData.obj1D9E ; $1D9E ; 240 - 
|018572| dw RoomDrawObjectData.obj1DA6 ; $1DA6 ; 241 - 
|018574| dw RoomDrawObjectData.obj1DAE ; $1DAE ; 242 - 
|018576| dw RoomDrawObjectData.obj1DB6 ; $1DB6 ; 243 - 
|018578| dw RoomDrawObjectData.obj1DBE ; $1DBE ; 244 - 
|01857A| dw RoomDrawObjectData.obj1DC6 ; $1DC6 ; 245 - 
|01857C| dw RoomDrawObjectData.obj1DCE ; $1DCE ; 246 - 
|01857E| dw RoomDrawObjectData.obj0220 ; $0220 ; 247 - 
|018580| dw RoomDrawObjectData.obj0260 ; $0260 ; 248 - 
|018582| dw RoomDrawObjectData.obj0280 ; $0280 ; 249 - 
|018584| dw RoomDrawObjectData.obj1F3A ; $1F3A ; 24A - 
|018586| dw RoomDrawObjectData.obj1F62 ; $1F62 ; 24B - 
|018588| dw RoomDrawObjectData.obj1F92 ; $1F92 ; 24C - 
|01858A| dw RoomDrawObjectData.obj1FF2 ; $1FF2 ; 24D - 
|01858C| dw RoomDrawObjectData.obj2016 ; $2016 ; 24E - 
|01858E| dw RoomDrawObjectData.obj1F42 ; $1F42 ; 24F - 
|018590| dw RoomDrawObjectData.obj0EAA ; $0EAA ; 250 - 
|018592| dw RoomDrawObjectData.obj1F4A ; $1F4A ; 251 - 
|018594| dw RoomDrawObjectData.obj1F52 ; $1F52 ; 252 - 
|018596| dw RoomDrawObjectData.obj1F5A ; $1F5A ; 253 - 
|018598| dw RoomDrawObjectData.obj202E ; $202E ; 254 - 
|01859A| dw RoomDrawObjectData.obj2062 ; $2062 ; 255 - 
|01859C| dw RoomDrawObjectData.obj09B8 ; $09B8 ; 256 - 
|01859E| dw RoomDrawObjectData.obj09C0 ; $09C0 ; 257 - 
|0185A0| dw RoomDrawObjectData.obj09C8 ; $09C8 ; 258 - 
|0185A2| dw RoomDrawObjectData.obj09D0 ; $09D0 ; 259 - 
|0185A4| dw RoomDrawObjectData.obj0FA2 ; $0FA2 ; 25A - 
|0185A6| dw RoomDrawObjectData.obj0FB2 ; $0FB2 ; 25B - 
|0185A8| dw RoomDrawObjectData.obj0FC4 ; $0FC4 ; 25C - 
|0185AA| dw RoomDrawObjectData.obj0FF4 ; $0FF4 ; 25D - 
|0185AC| dw RoomDrawObjectData.obj1018 ; $1018 ; 25E - 
|0185AE| dw RoomDrawObjectData.obj1020 ; $1020 ; 25F - 
|0185B0| dw RoomDrawObjectData.obj15B4 ; $15B4 ; 260 - 
|0185B2| dw RoomDrawObjectData.obj15D8 ; $15D8 ; 261 - 
|0185B4| dw RoomDrawObjectData.obj20F6 ; $20F6 ; 262 - 
|0185B6| dw RoomDrawObjectData.obj0EBA ; $0EBA ; 263 - 
|0185B8| dw RoomDrawObjectData.obj22E6 ; $22E6 ; 264 - 
|0185BA| dw RoomDrawObjectData.obj22EE ; $22EE ; 265 - 
|0185BC| dw RoomDrawObjectData.obj05DA ; $05DA ; 266 - 
|0185BE| dw RoomDrawObjectData.obj281E ; $281E ; 267 - 
|0185C0| dw RoomDrawObjectData.obj2AE0 ; $2AE0 ; 268 - 
|0185C2| dw RoomDrawObjectData.obj2D2A ; $2D2A ; 269 - 
|0185C4| dw RoomDrawObjectData.obj2F2A ; $2F2A ; 26A - 
|0185C6| dw RoomDrawObjectData.obj22F6 ; $22F6 ; 26B - 
|0185C8| dw RoomDrawObjectData.obj2316 ; $2316 ; 26C - 
|0185CA| dw RoomDrawObjectData.obj232E ; $232E ; 26D - 
|0185CC| dw RoomDrawObjectData.obj2346 ; $2346 ; 26E - 
|0185CE| dw RoomDrawObjectData.obj235E ; $235E ; 26F - 
|0185D0| dw RoomDrawObjectData.obj2376 ; $2376 ; 270 - 
|0185D2| dw RoomDrawObjectData.obj23B6 ; $23B6 ; 271 - 
|0185D4| dw RoomDrawObjectData.obj1E9A ; $1E9A ; 272 - 
|0185D6| dw $0000                      ; $0000 ; 273 - 
|0185D8| dw RoomDrawObjectData.obj2436 ; $2436 ; 274 - 
|0185DA| dw RoomDrawObjectData.obj149C ; $149C ; 275 - 
|0185DC| dw RoomDrawObjectData.obj24B6 ; $24B6 ; 276 - 
|0185DE| dw RoomDrawObjectData.obj24E6 ; $24E6 ; 277 - 
|0185E0| dw RoomDrawObjectData.obj2516 ; $2516 ; 278 - 
|0185E2| dw RoomDrawObjectData.obj1028 ; $1028 ; 279 - 
|0185E4| dw RoomDrawObjectData.obj1040 ; $1040 ; 27A - 
|0185E6| dw RoomDrawObjectData.obj1060 ; $1060 ; 27B - 
|0185E8| dw RoomDrawObjectData.obj1070 ; $1070 ; 27C - 
|0185EA| dw RoomDrawObjectData.obj1078 ; $1078 ; 27D - 
|0185EC| dw RoomDrawObjectData.obj1080 ; $1080 ; 27E - 
|0185EE| dw $0000                      ; $0000 ; 27F - 

;---------------------------------------------------------------------------------------------------

.type3_routine
|0185F0| dw RoomDraw_EmptyWaterFace                                     ; 200
|0185F2| dw RoomDraw_SpittingWaterFace                                  ; 201
|0185F4| dw RoomDraw_DrenchingWaterFace                                 ; 202
|0185F6| dw RoomDraw_SomariaLine_increment_count                        ; 203
|0185F8| dw RoomDraw_SomariaLine                                        ; 204
|0185FA| dw RoomDraw_SomariaLine                                        ; 205
|0185FC| dw RoomDraw_SomariaLine                                        ; 206
|0185FE| dw RoomDraw_SomariaLine                                        ; 207
|018600| dw RoomDraw_SomariaLine                                        ; 208
|018602| dw RoomDraw_SomariaLine                                        ; 209
|018604| dw RoomDraw_SomariaLine                                        ; 20A
|018606| dw RoomDraw_SomariaLine                                        ; 20B
|018608| dw RoomDraw_SomariaLine                                        ; 20C
|01860A| dw RoomDraw_PrisonCell                                         ; 20D
|01860C| dw RoomDraw_SomariaLine_increment_count                        ; 20E
|01860E| dw RoomDraw_SomariaLine                                        ; 20F
|018610| dw RoomDraw_Rightwards2x2                                      ; 210
|018612| dw RoomDraw_Rightwards2x2                                      ; 211
|018614| dw RoomDraw_RupeeFloor                                         ; 212
|018616| dw RoomDraw_Rightwards2x2                                      ; 213
|018618| dw RoomDraw_TableRock4x3                                       ; 214
|01861A| dw RoomDraw_KholdstareShell                                    ; 215
|01861C| dw RoomDraw_HammerPegSingle                                    ; 216
|01861E| dw RoomDraw_PrisonCell                                         ; 217
|018620| dw RoomDraw_BigKeyLock                                         ; 218
|018622| dw RoomDraw_Chest                                              ; 219
|018624| dw RoomDraw_OpenChest                                          ; 21A
|018626| dw RoomDraw_AutoStairsSouthMultiLayerEG0                       ; 21B
|018628| dw RoomDraw_AutoStairsSouthMultiLayer                          ; 21C
|01862A| dw RoomDraw_AutoStairsSouthMergedLayers                        ; 21D
|01862C| dw RoomDraw_StraightInterroomStairsGoingUpNorthUpper           ; 21E
|01862E| dw RoomDraw_StraightInterroomStairsGoingDownNorthUpper         ; 21F
|018630| dw RoomDraw_StraightInterroomStairsGoingUpSouthUpper           ; 220
|018632| dw RoomDraw_StraightInterroomStairsGoingDownSouthUpper         ; 221
|018634| dw RoomDraw_Rightwards2x2                                      ; 222
|018636| dw RoomDraw_Rightwards2x2                                      ; 223
|018638| dw RoomDraw_Rightwards2x2                                      ; 224
|01863A| dw RoomDraw_Rightwards2x2                                      ; 225
|01863C| dw RoomDraw_StraightInterroomStairsGoingUpNorthLower           ; 226
|01863E| dw RoomDraw_StraightInterroomStairsGoingDownNorthLower         ; 227
|018640| dw RoomDraw_StraightInterroomStairsGoingUpSouthLower           ; 228
|018642| dw RoomDraw_StraightInterroomStairsGoingDownSouthLower         ; 229
|018644| dw RoomDraw_LampCones                                          ; 22A
|018646| dw RoomDraw_WeirdGloveRequiredPot                              ; 22B
|018648| dw RoomDraw_BigGrayRock                                        ; 22C
|01864A| dw RoomDraw_AgahnimsAltar                                      ; 22D
|01864C| dw RoomDraw_AgahnimsWindows                                    ; 22E
|01864E| dw RoomDraw_SinglePot                                          ; 22F
|018650| dw RoomDraw_WeirdUglyPot                                       ; 230
|018652| dw RoomDraw_BigChest                                           ; 231
|018654| dw RoomDraw_OpenBigChest                                       ; 232
|018656| dw RoomDraw_AutoStairsSouthWater                               ; 233
|018658| dw RoomDraw_ChestPlatformVerticalWall                          ; 234
|01865A| dw RoomDraw_ChestPlatformVerticalWall                          ; 235
|01865C| dw RoomDraw_DrawRightwards3x6                                  ; 236
|01865E| dw RoomDraw_DrawRightwards3x6                                  ; 237
|018660| dw RoomDraw_ChestPlatformVerticalWall                          ; 238
|018662| dw RoomDraw_ChestPlatformVerticalWall                          ; 239
|018664| dw RoomDraw_VerticalTurtleRockPipe                             ; 23A
|018666| dw RoomDraw_VerticalTurtleRockPipe                             ; 23B
|018668| dw RoomDraw_HorizontalTurtleRockPipe                           ; 23C
|01866A| dw RoomDraw_HorizontalTurtleRockPipe                           ; 23D
|01866C| dw RoomDraw_Rightwards2x2                                      ; 23E
|01866E| dw RoomDraw_Rightwards2x2                                      ; 23F
|018670| dw RoomDraw_Rightwards2x2                                      ; 240
|018672| dw RoomDraw_Rightwards2x2                                      ; 241
|018674| dw RoomDraw_Rightwards2x2                                      ; 242
|018676| dw RoomDraw_Rightwards2x2                                      ; 243
|018678| dw RoomDraw_Rightwards2x2                                      ; 244
|01867A| dw RoomDraw_Rightwards2x2                                      ; 245
|01867C| dw RoomDraw_Rightwards2x2                                      ; 246
|01867E| dw RoomDraw_BombableFloor                                      ; 247
|018680| dw RoomDraw_4x4                                                ; 248
|018682| dw RoomDraw_Rightwards2x2                                      ; 249
|018684| dw RoomDraw_Rightwards2x2                                      ; 24A
|018686| dw RoomDraw_BigWallDecor                                       ; 24B
|018688| dw RoomDraw_SmithyFurnace                                      ; 24C
|01868A| dw RoomDraw_Utility6x3                                         ; 24D
|01868C| dw RoomDraw_TableRock4x3                                       ; 24E
|01868E| dw RoomDraw_Rightwards2x2                                      ; 24F
|018690| dw RoomDraw_Single2x2                                          ; 250
|018692| dw RoomDraw_Rightwards2x2                                      ; 251
|018694| dw RoomDraw_Rightwards2x2                                      ; 252
|018696| dw RoomDraw_Rightwards2x2                                      ; 253
|018698| dw RoomDraw_FortuneTellerRoom                                  ; 254
|01869A| dw RoomDraw_Utility3x5                                         ; 255
|01869C| dw RoomDraw_Rightwards2x2                                      ; 256
|01869E| dw RoomDraw_Rightwards2x2                                      ; 257
|0186A0| dw RoomDraw_Rightwards2x2                                      ; 258
|0186A2| dw RoomDraw_Rightwards2x2                                      ; 259
|0186A4| dw RoomDraw_TableBowl                                          ; 25A
|0186A6| dw RoomDraw_Utility3x5                                         ; 25B
|0186A8| dw RoomDraw_HorizontalTurtleRockPipe                           ; 25C
|0186AA| dw RoomDraw_Utility6x3                                         ; 25D
|0186AC| dw RoomDraw_Rightwards2x2                                      ; 25E
|0186AE| dw RoomDraw_Rightwards2x2                                      ; 25F
|0186B0| dw RoomDraw_ArcheryGameTargetDoor                              ; 260
|0186B2| dw RoomDraw_ArcheryGameTargetDoor                              ; 261
|0186B4| dw RoomDraw_VitreousGooGraphics                                ; 262
|0186B6| dw RoomDraw_Rightwards2x2                                      ; 263
|0186B8| dw RoomDraw_Rightwards2x2                                      ; 264
|0186BA| dw RoomDraw_Rightwards2x2                                      ; 265
|0186BC| dw RoomDraw_4x4                                                ; 266
|0186BE| dw RoomDraw_TableRock4x3                                       ; 267
|0186C0| dw RoomDraw_TableRock4x3                                       ; 268
|0186C2| dw RoomDraw_SolidWallDecor3x4                                  ; 269
|0186C4| dw RoomDraw_SolidWallDecor3x4                                  ; 26A
|0186C6| dw RoomDraw_4x4                                                ; 26B
|0186C8| dw RoomDraw_TableRock4x3                                       ; 26C
|0186CA| dw RoomDraw_TableRock4x3                                       ; 26D
|0186CC| dw RoomDraw_SolidWallDecor3x4                                  ; 26E
|0186CE| dw RoomDraw_SolidWallDecor3x4                                  ; 26F
|0186D0| dw RoomDraw_LightBeamOnFloor                                   ; 270
|0186D2| dw RoomDraw_BigLightBeamOnFloor                                ; 271
|0186D4| dw RoomDraw_TrinexxShell                                       ; 272
|0186D6| dw RoomDraw_BG2MaskFull                                        ; 273
|0186D8| dw RoomDraw_FloorLight                                         ; 274
|0186DA| dw RoomDraw_Rightwards2x2                                      ; 275
|0186DC| dw RoomDraw_BigWallDecor                                       ; 276
|0186DE| dw RoomDraw_BigWallDecor                                       ; 277
|0186E0| dw RoomDraw_GanonTriforceFloorDecor                            ; 278
|0186E2| dw RoomDraw_TableRock4x3                                       ; 279
|0186E4| dw RoomDraw_4x4                                                ; 27A
|0186E6| dw RoomDraw_VitreousGooDamage                                  ; 27B
|0186E8| dw RoomDraw_Rightwards2x2                                      ; 27C
|0186EA| dw RoomDraw_Rightwards2x2                                      ; 27D
|0186EC| dw RoomDraw_Rightwards2x2                                      ; 27E
|0186EE| dw RoomDraw_Nothing_B                                          ; 27F

;===================================================================================================

DoorDrawRoutines:
|0186F0| dw RoomDraw_Door_North
|0186F2| dw RoomDraw_Door_South
|0186F4| dw RoomDraw_Door_West
|0186F6| dw RoomDraw_Door_East

;===================================================================================================

RoomData_TilemapPointers:

.upper_layer
|0186F8| dl $7E2000+$000
|0186FB| dl $7E2000+$002
|0186FE| dl $7E2000+$004
|018701| dl $7E2000+$006

|018704| dl $7E2000+$080
|018707| dl $7E2000+$082
|01870A| dl $7E2000+$084
|01870D| dl $7E2000+$086

|018710| dl $7E2000+$100
|018713| dl $7E2000+$180
|018716| dl $7E2000+$200

;---------------------------------------------------------------------------------------------------

.lower_layer
|018719| dl $7E4000+$000
|01871C| dl $7E4000+$002
|01871F| dl $7E4000+$004
|018722| dl $7E4000+$006

|018725| dl $7E4000+$080
|018728| dl $7E4000+$082
|01872B| dl $7E4000+$084
|01872E| dl $7E4000+$086

|018731| dl $7E4000+$100
|018734| dl $7E4000+$180
|018737| dl $7E4000+$200

;===================================================================================================

LoadAndBuildRoom:
|01873A| JSR LoadRoomHeader

|01873D| STZ.w $03F4

|018740| REP #$30

|018742| LDX.w $0110 ; this holds roomID*3

|018745| LDA.l RoomData_ObjectDataPointers+1,X
|018749| STA.b $B8

|01874B| LDA.l RoomData_ObjectDataPointers+0,X
|01874F| STA.b $B7

|018751| LDA.b $AD
|018753| STA.w $0428

|018756| LDA.w #$FF30
|018759| STA.w $041C

;---------------------------------------------------------------------------------------------------

|01875C| STZ.w $041A
|01875F| STZ.w $0420
|018762| STZ.w $0312
|018765| STZ.w $0310
|018768| STZ.w $0422
|01876B| STZ.w $0424

|01876E| LDA.w #$FFFF
|018771| STA.w $0436

|018774| STZ.w $0452
|018777| STZ.w $0454
|01877A| STZ.w $0456

|01877D| STZ.w $068A
|018780| STZ.w $044E
|018783| STZ.w $0450

|018786| STZ.b $FC

;---------------------------------------------------------------------------------------------------

|018788| STZ.w $045C
|01878B| STZ.w $0438
|01878E| STZ.w $043A
|018791| STZ.w $043C

|018794| STZ.w $043E
|018797| STZ.w $0440
|01879A| STZ.w $0442
|01879D| STZ.w $0444

|0187A0| STZ.w $0446
|0187A3| STZ.w $0448
|0187A6| STZ.w $049A
|0187A9| STZ.w $049C

|0187AC| STZ.w $049E
|0187AF| STZ.w $04AE

|0187B2| STZ.w $047E
|0187B5| STZ.w $0480
|0187B8| STZ.w $0482
|0187BB| STZ.w $0484

|0187BE| STZ.w $04A2
|0187C1| STZ.w $04A4
|0187C4| STZ.w $04A6
|0187C7| STZ.w $04A8

|0187CA| STZ.w $19E2
|0187CD| STZ.w $19E4
|0187D0| STZ.w $19E6
|0187D3| STZ.w $19E8
|0187D6| STZ.w $19E0

|0187D9| STZ.w $0430
|0187DC| STZ.w $0432
|0187DF| STZ.w $042C
|0187E2| STZ.w $042E

|0187E5| STZ.w $0496
|0187E8| STZ.w $0498

|0187EB| STZ.w $04B0

;---------------------------------------------------------------------------------------------------

|0187EE| LDX.w #$001E

|0187F1| STZ.w $0460

.next_obj_clear
|0187F4| STZ.w $19A0,X ; clears door related stuff
|0187F7| STZ.w $1980,X
|0187FA| STZ.w $19C0,X

|0187FD| STZ.w $04F0,X ; clears dynamic object stuff
|018800| STZ.w $0500,X
|018803| STZ.w $0520,X
|018806| STZ.w $0540,X

|018809| DEX
|01880A| DEX
|01880B| BPL .next_obj_clear

;---------------------------------------------------------------------------------------------------

; Draw floor and template layout
|01880D| STZ.b $BA

|01880F| JSR RoomDraw_DrawFloors

|018812| LDY.b $BA
|018814| PHY

|018815| LDA.b [$B7],Y
|018817| AND.w #$00FF
|01881A| STA.w $040E

|01881D| LSR A
|01881E| LSR A
|01881F| STA.b $00

|018821| ASL A
|018822| CLC
|018823| ADC.b $00
|018825| TAX

|018826| LDA.l RoomLayoutPointers+1,X
|01882A| STA.b $B8

|01882C| LDA.l RoomLayoutPointers+0,X
|018830| STA.b $B7

|018832| STZ.b $BA

|018834| JSR RoomDraw_DrawAllObjects

|018837| PLY
|018838| INY
|018839| STY.b $BA

;---------------------------------------------------------------------------------------------------

|01883B| LDX.w $0110

|01883E| LDA.l RoomData_ObjectDataPointers+1,X
|018842| STA.b $B8

|018844| LDA.l RoomData_ObjectDataPointers+0,X
|018848| STA.b $B7

|01884A| JSR RoomDraw_DrawAllObjects

|01884D| INC.b $BA
|01884F| INC.b $BA

;---------------------------------------------------------------------------------------------------

|018851| LDX.w #$001E

.save_next_lower_layer_pointer
|018854| LDA.l RoomData_TilemapPointers.lower_layer+1,X
|018858| STA.b $C0,X

|01885A| DEX
|01885B| DEX
|01885C| DEX
|01885D| BPL .save_next_lower_layer_pointer

|01885F| JSR RoomDraw_DrawAllObjects

;---------------------------------------------------------------------------------------------------

|018862| INC.b $BA
|018864| INC.b $BA

|018866| LDX.w #$001E

.save_next_upper_layer_pointer
|018869| LDA.l RoomData_TilemapPointers.upper_layer+1,X
|01886D| STA.b $C0,X

|01886F| DEX
|018870| DEX
|018871| DEX
|018872| BPL .save_next_upper_layer_pointer

|018874| JSR RoomDraw_DrawAllObjects

;---------------------------------------------------------------------------------------------------

|018877| STZ.b $BA

.next_block
|018879| LDX.b $BA

|01887B| LDA.l $7EF940,X
|01887F| CMP.b $A0
|018881| BNE .block_not_in_this_room

|018883| LDA.l $7EF942,X
|018887| STA.b $08

|018889| TAY

|01888A| JSR RoomDraw_PushableBlock

.block_not_in_this_room
|01888D| LDA.b $BA
|01888F| CLC
|018890| ADC.w #$0004
|018893| STA.b $BA

|018895| CMP.w #$018C ; [HARDCODED] size
|018898| BNE .next_block

;---------------------------------------------------------------------------------------------------

|01889A| REP #$20

|01889C| LDA.w $042C
|01889F| STA.w $042E
|0188A2| STA.w $0478

|0188A5| STZ.b $BA

.next_torch_check
|0188A7| LDX.b $BA

|0188A9| LDA.l $7EFB40,X
|0188AD| CMP.b $A0
|0188AF| BEQ .torches_in_this_room

|0188B1| INX
|0188B2| INX

.find_next_torch
|0188B3| LDA.l $7EFB40,X

|0188B7| INX
|0188B8| INX
|0188B9| STX.b $BA

|0188BB| CMP.w #$FFFF
|0188BE| BNE .find_next_torch

|0188C0| CPX.w #$0120 ; [HARDCODED] size
|0188C3| BNE .next_torch_check

|0188C5| BRA .exit

;---------------------------------------------------------------------------------------------------

.torches_in_this_room
|0188C7| INX
|0188C8| INX

.draw_next_torch
|0188C9| LDA.l $7EFB40,X
|0188CD| STA.b $08

|0188CF| INX
|0188D0| INX
|0188D1| STX.b $BA

|0188D3| JSR RoomDraw_LightableTorch

|0188D6| LDX.b $BA

|0188D8| LDA.l $7EFB40,X
|0188DC| CMP.w #$FFFF
|0188DF| BNE .draw_next_torch

;---------------------------------------------------------------------------------------------------

.exit
|0188E1| SEP #$30

|0188E3| RTL

;===================================================================================================

RoomDraw_DrawAllObjects:
.next
|0188E4| STZ.b $B2
|0188E6| STZ.b $B4

|0188E8| LDY.b $BA

|0188EA| LDA.b [$B7],Y
|0188EC| CMP.w #$FFFF
|0188EF| BEQ .return

|0188F1| STA.b $00

|0188F3| CMP.w #$FFF0
|0188F6| BEQ .start_doors

|0188F8| JSR RoomDraw_RoomObject

|0188FB| BRA .next

.return
|0188FD| RTS

;---------------------------------------------------------------------------------------------------

.start_doors
|0188FE| INC.b $BA
|018900| INC.b $BA

.next_door
|018902| LDY.b $BA

|018904| LDA.b [$B7],Y
|018906| CMP.w #$FFFF
|018909| BEQ .return

|01890B| STA.b $00

|01890D| JSR RoomDraw_DoorObject

|018910| INC.b $BA
|018912| INC.b $BA

|018914| BRA .next_door

;===================================================================================================

RoomDraw_DoorObject:
|018916| AND.w #$00F0
|018919| LSR A
|01891A| LSR A
|01891B| LSR A
|01891C| STA.b $02

|01891E| LDA.b $00
|018920| XBA
|018921| AND.w #$00FF
|018924| STA.b $0A
|018926| STA.b $04

|018928| LDA.b $00
|01892A| AND.w #$0003
|01892D| ASL A
|01892E| TAX

|01892F| LDA.l DoorDrawRoutines,X
|018933| STA.b $0E

|018935| LDX.b $02
|018937| LDA.b $04

|018939| JMP.w ($000E)

;===================================================================================================

RoomDraw_RoomObject:
|01893C| SEP #$20

|01893E| AND.b #$FC
|018940| CMP.b #$FC
|018942| BEQ .subtype_2

|018944| STA.b $08

|018946| LDA.b $00
|018948| AND.b #$03
|01894A| STA.b $B2

|01894C| LDA.b $01
|01894E| AND.b #$03
|018950| STA.b $B4

|018952| INY
|018953| INY

|018954| LDA.b [$B7],Y
|018956| STA.b $04

|018958| INY
|018959| STY.b $BA

|01895B| LDA.b $01
|01895D| LSR A
|01895E| LSR A
|01895F| LSR A
|018960| ROR.b $08
|018962| STA.b $09

|018964| STZ.b $03
|018966| STZ.b $05

|018968| REP #$20

|01896A| LDA.b $04
|01896C| ASL A
|01896D| CMP.w #$01F0
|018970| BCS .subtype_3

|018972| TAX

|018973| LDA.l DrawObjects.type1_routine,X
|018977| STA.b $0E

|018979| LDA.l DrawObjects.type1_data_offset,X
|01897D| TAX

|01897E| LDY.b $08

|018980| JMP.w ($000E)

;---------------------------------------------------------------------------------------------------

.subtype_2
|018983| REP #$20

|018985| LDA.b $00
|018987| XBA
|018988| AND.w #$03F0
|01898B| LSR A
|01898C| LSR A
|01898D| LSR A
|01898E| STA.b $08

|018990| INY

|018991| LDA.b [$B7],Y
|018993| XBA
|018994| AND.w #$0FC0

|018997| ASL A
|018998| ORA.b $08
|01899A| STA.b $08

|01899C| LDA.b [$B7],Y
|01899E| XBA
|01899F| AND.w #$003F

|0189A2| INY
|0189A3| INY
|0189A4| STY.b $BA

|0189A6| ASL A
|0189A7| TAX

|0189A8| LDA.l DrawObjects.type2_routine,X
|0189AC| STA.b $0E

|0189AE| LDA.l DrawObjects.type2_data_offset,X
|0189B2| TAX

|0189B3| LDY.b $08

|0189B5| JMP.w ($000E)

;---------------------------------------------------------------------------------------------------

.subtype_3
|0189B8| AND.w #$000E
|0189BB| ASL A
|0189BC| ASL A
|0189BD| ASL A
|0189BE| STA.b $04

|0189C0| LDA.b $B4
|0189C2| ASL A
|0189C3| ASL A
|0189C4| ORA.b $B2
|0189C6| TSB.b $04

|0189C8| LDA.b $04
|0189CA| ASL A
|0189CB| TAX

|0189CC| LDA.l DrawObjects.type3_routine,X
|0189D0| STA.b $0E

|0189D2| LDA.l DrawObjects.type3_data_offset,X
|0189D6| TAX

|0189D7| LDY.b $08

|0189D9| JMP.w ($000E)

;===================================================================================================

RoomDraw_DrawFloors:
|0189DC| LDX.w #$001E

.next_pointer_a
|0189DF| LDA.l RoomData_TilemapPointers.lower_layer+0,X
|0189E3| STA.b $BF,X

|0189E5| LDA.l RoomData_TilemapPointers.lower_layer+1,X
|0189E9| STA.b $C0,X

|0189EB| DEX
|0189EC| DEX
|0189ED| DEX
|0189EE| BPL .next_pointer_a

;---------------------------------------------------------------------------------------------------

|0189F0| LDY.b $BA

|0189F2| INC.b $BA

|0189F4| STZ.b $0C

|0189F6| LDA.b [$B7],Y
|0189F8| PHA

|0189F9| AND.w #$00F0
|0189FC| STA.w $0490

|0189FF| TAX

|018A00| JSR RoomDraw_FloorChunks

;---------------------------------------------------------------------------------------------------

|018A03| LDX.w #$001E

.next_pointer_b
|018A06| LDA.l RoomData_TilemapPointers.upper_layer+1,X
|018A0A| STA.b $C0,X

|018A0C| DEX
|018A0D| DEX
|018A0E| DEX
|018A0F| BPL .next_pointer_b

|018A11| STZ.b $0C

|018A13| PLA
|018A14| AND.w #$000F

|018A17| ASL A ; x16
|018A18| ASL A
|018A19| ASL A
|018A1A| ASL A

|018A1B| STA.w $046A

|018A1E| TAX

;===================================================================================================

RoomDraw_FloorChunks:

.next_super
|018A1F| LDY.b $0C

|018A21| LDA.w RoomQuadrantDataOffset,Y
|018A24| TAY

|018A25| LDA.w #$0008
|018A28| STA.b $0E

.next_square
|018A2A| LDA.w #$0008
|018A2D| JSR RoomDraw_A_Many32x32Blocks

|018A30| ADC.w #$01C0
|018A33| TAY

|018A34| DEC.b $0E
|018A36| BNE .next_square

|018A38| INC.b $0C
|018A3A| INC.b $0C

|018A3C| LDA.b $0C
|018A3E| CMP.w #$0008
|018A41| BNE .next_super

|018A43| RTS

;===================================================================================================

RoomDraw_A_Many32x32Blocks:
|018A44| STA.b $0A

.next_set
|018A46| LDA.w #$0002
|018A49| STA.b $04

.next_block
|018A4B| LDA.w RoomDrawObjectData+0,X
|018A4E| STA.b [$BF],Y

|018A50| LDA.w RoomDrawObjectData+2,X
|018A53| STA.b [$C2],Y

|018A55| LDA.w RoomDrawObjectData+4,X
|018A58| STA.b [$C5],Y

|018A5A| LDA.w RoomDrawObjectData+6,X
|018A5D| STA.b [$C8],Y

|018A5F| LDA.w RoomDrawObjectData+8,X
|018A62| STA.b [$CB],Y

|018A64| LDA.w RoomDrawObjectData+10,X
|018A67| STA.b [$CE],Y

|018A69| LDA.w RoomDrawObjectData+12,X
|018A6C| STA.b [$D1],Y

|018A6E| LDA.w RoomDrawObjectData+14,X
|018A71| STA.b [$D4],Y

|018A73| TYA
|018A74| CLC
|018A75| ADC.w #$0100
|018A78| TAY

|018A79| DEC.b $04
|018A7B| BNE .next_block

|018A7D| TYA
|018A7E| SEC
|018A7F| SBC.w #$01F8
|018A82| TAY

|018A83| DEC.b $0A
|018A85| BNE .next_set

|018A87| CLC

|018A88| RTS

;===================================================================================================

RoomDraw_Downwards4x2_1to15or26:
|018A89| JSR RoomDraw_GetSize_1to15or26

|018A8C| LDA.w #$0100
|018A8F| JMP.w RoomDraw_Downwards4x2VariableSpacing

;===================================================================================================

RoomDraw_Rightwards2x4_1to15or26:
|018A92| JSR RoomDraw_GetSize_1to15or26

|018A95| STX.b $0A

.next
|018A97| LDA.w #$0002
|018A9A| JSR RoomDraw_Nx4

|018A9D| LDX.b $0A

|018A9F| DEC.b $B2
|018AA1| BNE .next

;===================================================================================================

RoomDraw_Nothing_B:
|018AA3| RTS

;===================================================================================================

RoomDraw_Downwards4x2_1to16_BothBG:
|018AA4| TXA
|018AA5| TYX
|018AA6| TAY

|018AA7| JSR RoomDraw_GetSize_1to16

.next_row
|018AAA| LDA.w RoomDrawObjectData+0,Y
|018AAD| STA.l $7E4000,X
|018AB1| STA.l $7E2000,X

|018AB5| LDA.w RoomDrawObjectData+2,Y
|018AB8| STA.l $7E4002,X
|018ABC| STA.l $7E2002,X

|018AC0| LDA.w RoomDrawObjectData+4,Y
|018AC3| STA.l $7E4004,X
|018AC7| STA.l $7E2004,X

|018ACB| LDA.w RoomDrawObjectData+6,Y
|018ACE| STA.l $7E4006,X
|018AD2| STA.l $7E2006,X

|018AD6| LDA.w RoomDrawObjectData+8,Y
|018AD9| STA.l $7E4080,X
|018ADD| STA.l $7E2080,X

|018AE1| LDA.w RoomDrawObjectData+10,Y
|018AE4| STA.l $7E4082,X
|018AE8| STA.l $7E2082,X

|018AEC| LDA.w RoomDrawObjectData+12,Y
|018AEF| STA.l $7E4084,X
|018AF3| STA.l $7E2084,X

|018AF7| LDA.w RoomDrawObjectData+14,Y
|018AFA| STA.l $7E4086,X
|018AFE| STA.l $7E2086,X

|018B02| TXA
|018B03| CLC
|018B04| ADC.w #$0100
|018B07| TAX

|018B08| DEC.b $B2
|018B0A| BNE .next_row

|018B0C| RTS

;===================================================================================================

RoomDraw_Rightwards2x4_1to16:
|018B0D| TXA
|018B0E| TYX
|018B0F| TAY

|018B10| JSR RoomDraw_GetSize_1to16

.next_row
|018B13| LDA.w RoomDrawObjectData+0,Y
|018B16| STA.l $7E4000,X
|018B1A| STA.l $7E2000,X

|018B1E| LDA.w RoomDrawObjectData+2,Y
|018B21| STA.l $7E4080,X
|018B25| STA.l $7E2080,X

|018B29| LDA.w RoomDrawObjectData+4,Y
|018B2C| STA.l $7E4100,X
|018B30| STA.l $7E2100,X

|018B34| LDA.w RoomDrawObjectData+6,Y
|018B37| STA.l $7E4180,X
|018B3B| STA.l $7E2180,X

|018B3F| LDA.w RoomDrawObjectData+8,Y
|018B42| STA.l $7E4002,X
|018B46| STA.l $7E2002,X

|018B4A| LDA.w RoomDrawObjectData+10,Y
|018B4D| STA.l $7E4082,X
|018B51| STA.l $7E2082,X

|018B55| LDA.w RoomDrawObjectData+12,Y
|018B58| STA.l $7E4102,X
|018B5C| STA.l $7E2102,X

|018B60| LDA.w RoomDrawObjectData+14,Y
|018B63| STA.l $7E4182,X
|018B67| STA.l $7E2182,X

|018B6B| INX ; +4
|018B6C| INX
|018B6D| INX
|018B6E| INX

|018B6F| DEC.b $B2
|018B71| BNE .next_row

|018B73| RTS

;===================================================================================================

RoomDraw_Downwards2x2_1to16:
|018B74| JSR RoomDraw_GetSize_1to16

|018B77| BRA RoomDraw_Downwards2x2_1to15or32.next

;===================================================================================================

RoomDraw_Rightwards2x2_1to16:
|018B79| JSR RoomDraw_GetSize_1to16

|018B7C| BRA RoomDraw_Rightwards2x2_1to15or32.next

;===================================================================================================

RoomDraw_Downwards2x2_1to15or32:
|018B7E| JSR RoomDraw_GetSize_1to15or32

.next
|018B81| JSR RoomDraw_Downwards2x2

|018B84| DEC.b $B2
|018B86| BNE .next

|018B88| RTS

;===================================================================================================

RoomDraw_Rightwards2x2_1to15or32:
|018B89| JSR RoomDraw_GetSize_1to15or32

.next
|018B8C| JSR RoomDraw_Rightwards2x2

|018B8F| DEC.b $B2
|018B91| BNE .next

|018B93| RTS

;===================================================================================================

RoomDraw_4x4BlocksIn4x4SuperSquare:
|018B94| INC.b $B2
|018B96| INC.b $B4

.next_super_square
|018B98| LDA.b $B2
|018B9A| STA.b $0A

.next_square
|018B9C| LDA.w RoomDrawObjectData+0,X
|018B9F| STA.b [$BF],Y
|018BA1| STA.b [$C2],Y
|018BA3| STA.b [$C5],Y
|018BA5| STA.b [$C8],Y
|018BA7| STA.b [$CB],Y
|018BA9| STA.b [$CE],Y
|018BAB| STA.b [$D1],Y
|018BAD| STA.b [$D4],Y

|018BAF| TYA
|018BB0| CLC
|018BB1| ADC.w #$0100
|018BB4| TAY

|018BB5| LDA.w RoomDrawObjectData+0,X
|018BB8| STA.b [$BF],Y
|018BBA| STA.b [$C2],Y
|018BBC| STA.b [$C5],Y
|018BBE| STA.b [$C8],Y
|018BC0| STA.b [$CB],Y
|018BC2| STA.b [$CE],Y
|018BC4| STA.b [$D1],Y
|018BC6| STA.b [$D4],Y

|018BC8| TYA
|018BC9| SEC
|018BCA| SBC.w #$00F8
|018BCD| TAY

|018BCE| DEC.b $0A
|018BD0| BNE .next_square

|018BD2| LDA.b $08
|018BD4| CLC
|018BD5| ADC.w #$0200
|018BD8| STA.b $08

|018BDA| TAY

|018BDB| DEC.b $B4
|018BDD| BNE .next_super_square

|018BDF| RTS

;===================================================================================================

RoomDraw_DiagonalCeilingTopLeftA:
|018BE0| LDA.w #$0004
|018BE3| JSR RoomDraw_GetSize_1to16_timesA

.next
|018BE6| JSR RoomDraw_Repeated1x1_CachedCount
|018BE9| ADC.w #$0080
|018BEC| STA.b $08

|018BEE| TAY

|018BEF| DEC.b $B2
|018BF1| BNE .next

|018BF3| RTS

;===================================================================================================

RoomDraw_DiagonalCeilingBottomLeftA:
|018BF4| LDA.w #$0004
|018BF7| JSR RoomDraw_GetSize_1to16_timesA

|018BFA| INC.b $B4

.next
|018BFC| LDA.b $B4
|018BFE| JSR RoomDraw_Repeated1x1

|018C01| ADC.w #$0080
|018C04| STA.b $08

|018C06| TAY

|018C07| INC.b $B4

|018C09| DEC.b $B2
|018C0B| BNE .next

|018C0D| RTS

;===================================================================================================

RoomDraw_DiagonalCeilingTopRightA:
|018C0E| LDA.w #$0004
|018C11| JSR RoomDraw_GetSize_1to16_timesA

.next
|018C14| JSR RoomDraw_Repeated1x1_CachedCount
|018C17| ADC.w #$0082
|018C1A| STA.b $08

|018C1C| TAY

|018C1D| DEC.b $B2
|018C1F| BNE .next

|018C21| RTS

;===================================================================================================

RoomDraw_DiagonalCeilingBottomRightA:
|018C22| LDA.w #$0004
|018C25| JSR RoomDraw_GetSize_1to16_timesA

.next
|018C28| JSR RoomDraw_Repeated1x1_CachedCount
|018C2B| SEC
|018C2C| SBC.w #$007E
|018C2F| STA.b $08

|018C31| TAY

|018C32| DEC.b $B2
|018C34| BNE .next

|018C36| RTS

;===================================================================================================

RoomDraw_Rightwards2x4spaced4_1to16_BothBG:
|018C37| JSR RoomDraw_GetSize_1to16

|018C3A| STX.b $0A

.next
|018C3C| LDA.w #$0002
|018C3F| JSR RoomDraw_Nx4

|018C42| TYA
|018C43| CLC
|018C44| ADC.w #$0008
|018C47| TAY

|018C48| LDX.b $0A

|018C4A| DEC.b $B2
|018C4C| BNE .next

|018C4E| RTS

;===================================================================================================

RoomDraw_DownwardsDecor4x2spaced4_1to16:
|018C4F| JSR RoomDraw_GetSize_1to16

|018C52| LDA.w #$0300
|018C55| JMP.w RoomDraw_Downwards4x2VariableSpacing

;===================================================================================================

RoomDraw_DiagonalAcute_1to16:
|018C58| LDA.w #$0007
|018C5B| JSR RoomDraw_GetSize_1to16_timesA

|018C5E| JMP.w RoomDraw_DrawDiagonalAcute_start

;===================================================================================================

RoomDraw_DiagonalGrave_1to16:
|018C61| LDA.w #$0007
|018C64| JSR RoomDraw_GetSize_1to16_timesA

|018C67| JMP.w RoomDraw_DrawDiagonalGrave_start

;===================================================================================================

RoomDraw_DiagonalAcute_1to16_BothBG:
|018C6A| TXA
|018C6B| TYX
|018C6C| TAY

|018C6D| LDA.w #$0006
|018C70| JSR RoomDraw_GetSize_1to16_timesA

|018C73| LDA.w #$FF82

.next_bg
|018C76| STA.b $0E

.next
|018C78| LDA.w RoomDrawObjectData+0,Y
|018C7B| STA.l $7E4000,X
|018C7F| STA.l $7E2000,X

|018C83| LDA.w RoomDrawObjectData+2,Y
|018C86| STA.l $7E4080,X
|018C8A| STA.l $7E2080,X

|018C8E| LDA.w RoomDrawObjectData+4,Y
|018C91| STA.l $7E4100,X
|018C95| STA.l $7E2100,X

|018C99| LDA.w RoomDrawObjectData+6,Y
|018C9C| STA.l $7E4180,X
|018CA0| STA.l $7E2180,X

|018CA4| LDA.w RoomDrawObjectData+8,Y
|018CA7| STA.l $7E4200,X
|018CAB| STA.l $7E2200,X

|018CAF| TXA
|018CB0| CLC
|018CB1| ADC.b $0E
|018CB3| TAX

|018CB4| DEC.b $B2
|018CB6| BNE .next

|018CB8| RTS

;===================================================================================================

#RoomDraw_DiagonalGrave_1to16_BothBG:
|018CB9| TXA
|018CBA| TYX
|018CBB| TAY

|018CBC| LDA.w #$0006
|018CBF| JSR RoomDraw_GetSize_1to16_timesA

|018CC2| LDA.w #$0082

|018CC5| BRA .next_bg

;===================================================================================================

RoomDraw_ClosedChestPlatform:
|018CC7| LDA.b $B2
|018CC9| CLC
|018CCA| ADC.w #$0004
|018CCD| STA.b $B2
|018CCF| STA.b $0A

|018CD1| INC.b $B4

|018CD3| JSR RoomDraw_ChestPlatformHorizontalWallWithCorners

|018CD6| STX.w $0006

|018CD9| LDA.b $08
|018CDB| STA.b $04

|018CDD| CLC
|018CDE| ADC.w #$0180
|018CE1| STA.b $08

|018CE3| LDA.b $B4
|018CE5| STA.b $0E

;---------------------------------------------------------------------------------------------------

.next_vertical_wall
|018CE7| LDA.b $B2
|018CE9| STA.b $0A

|018CEB| LDY.b $08
|018CED| LDX.b $06

|018CEF| JSR RoomDraw_ChestPlatformVerticalWall

|018CF2| TXA
|018CF3| CLC
|018CF4| ADC.w #$000C
|018CF7| TAX

|018CF8| TYA
|018CF9| CLC
|018CFA| ADC.w #$0006
|018CFD| TAY

.next_horizontal_carpet
|018CFE| JSR RoomDraw_Rightwards2x2

|018D01| DEC.b $0A
|018D03| BNE .next_horizontal_carpet

|018D05| TXA
|018D06| CLC
|018D07| ADC.w #$0008
|018D0A| TAX

|018D0B| JSR RoomDraw_ChestPlatformVerticalWall

|018D0E| LDA.b $08
|018D10| CLC
|018D11| ADC.w #$0100
|018D14| STA.b $08

|018D16| DEC.b $0E
|018D18| BNE .next_vertical_wall

;---------------------------------------------------------------------------------------------------

|018D1A| TXA
|018D1B| CLC
|018D1C| ADC.w #$000C
|018D1F| TAX

|018D20| LDY.b $08

|018D22| LDA.b $B2
|018D24| STA.b $0A

|018D26| JSR RoomDraw_ChestPlatformHorizontalWallWithCorners

|018D29| LDA.w #$FF80

.looking_for_bottom
|018D2C| SEC
|018D2D| SBC.w #$0080

|018D30| DEC.b $B4
|018D32| BNE .looking_for_bottom

|018D34| CLC
|018D35| ADC.b $08

|018D37| INC.b $B2
|018D39| INC.b $B2
|018D3B| ASL.b $B2

|018D3D| CLC
|018D3E| ADC.b $B2
|018D40| TAY

|018D41| LDX.w #RoomDrawObjectData.obj0590
|018D44| JMP.w RoomDraw_Rightwards2x2

;===================================================================================================

RoomDraw_ChestPlatformHorizontalWallWithCorners:
|018D47| JSR RoomDraw_ChestPlatformCorner

.next
|018D4A| LDA.w #$0002
|018D4D| JSR RoomDraw_1x3N_rightwards

|018D50| TXA
|018D51| SEC
|018D52| SBC.w #$000C
|018D55| TAX

|018D56| DEC.b $0A
|018D58| BNE .next

|018D5A| JMP.w RoomDraw_ChestPlatformCorner_advance_from_A

;===================================================================================================

RoomDraw_Rightwards1x2_1to16_plus2:
|018D5D| LDA.b $B2
|018D5F| ASL A
|018D60| ASL A

|018D61| ORA.b $B4

|018D63| ASL A
|018D64| INC A
|018D65| STA.b $B2

|018D67| LDA.w #$0002
|018D6A| JSR RoomDraw_1x3N_rightwards

.next_set
|018D6D| TXA
|018D6E| SEC
|018D6F| SBC.w #$0006
|018D72| TAX

|018D73| LDA.w #$0001
|018D76| JSR RoomDraw_1x3N_rightwards

|018D79| DEC.b $B2
|018D7B| BNE .next_set

|018D7D| LDA.w #$0001

;===================================================================================================

RoomDraw_1x3N_rightwards:
|018D80| STA.b $0E

.next
|018D82| LDA.w RoomDrawObjectData+0,X
|018D85| STA.b [$BF],Y

|018D87| LDA.w RoomDrawObjectData+2,X
|018D8A| STA.b [$CB],Y

|018D8C| LDA.w RoomDrawObjectData+4,X
|018D8F| STA.b [$D7],Y

|018D91| TXA
|018D92| CLC
|018D93| ADC.w #$0006
|018D96| TAX

|018D97| INY
|018D98| INY

|018D99| DEC.b $0E
|018D9B| BNE .next

|018D9D| RTS

;===================================================================================================

RoomDraw_3x3FloorIn4x4SuperSquare:
|018D9E| INC.b $B2
|018DA0| INC.b $B4

.next_super_square
|018DA2| LDA.b $B2
|018DA4| STA.b $0A

.next_square
|018DA6| LDA.w RoomDrawObjectData+0,X
|018DA9| STA.b [$BF],Y
|018DAB| STA.b [$C2],Y
|018DAD| STA.b [$C5],Y
|018DAF| STA.b [$CB],Y
|018DB1| STA.b [$CE],Y
|018DB3| STA.b [$D1],Y

|018DB5| TYA
|018DB6| CLC
|018DB7| ADC.w #$0100
|018DBA| TAY

|018DBB| LDA.w RoomDrawObjectData+0,X
|018DBE| STA.b [$BF],Y
|018DC0| STA.b [$C2],Y
|018DC2| STA.b [$C5],Y

|018DC4| TYA
|018DC5| SEC
|018DC6| SBC.w #$00FA
|018DC9| TAY

|018DCA| DEC.b $0A
|018DCC| BNE .next_square

|018DCE| LDA.b $08
|018DD0| CLC
|018DD1| ADC.w #$0180
|018DD4| STA.b $08

|018DD6| TAY

|018DD7| DEC.b $B4
|018DD9| BNE .next_super_square

|018DDB| RTS

;===================================================================================================

RoomDraw_BigHole4x4_1to16:
|018DDC| LDA.w #$0004
|018DDF| JSR RoomDraw_GetSize_1to16_timesA

|018DE2| STA.b $B4
|018DE4| STA.b $0E

|018DE6| PHY

;---------------------------------------------------------------------------------------------------

.next_pit_square
|018DE7| JSR RoomDraw_Repeated1x1_CachedCount
|018DEA| STA.b $0C

|018DEC| ADC.w #$0080
|018DEF| STA.b $08

|018DF1| TAY

|018DF2| DEC.b $0E
|018DF4| BNE .next_pit_square

;---------------------------------------------------------------------------------------------------

|018DF6| PLY
|018DF7| STY.b $08

|018DF9| LDA.w #$0002
|018DFC| STA.b $0E

|018DFE| LDX.w #RoomDrawObjectData.obj063C

.next_verticals_row
|018E01| LDA.b $B2
|018E03| DEC A
|018E04| DEC A
|018E05| STA.b $0A

|018E07| LDA.w RoomDrawObjectData+0,X
|018E0A| STA.b [$BF],Y

|018E0C| LDA.w RoomDrawObjectData+2,X

.next_vertical_edge
|018E0F| STA.b [$C2],Y

|018E11| INY
|018E12| INY

|018E13| DEC.b $0A
|018E15| BNE .next_vertical_edge

|018E17| LDA.w RoomDrawObjectData+4,X
|018E1A| STA.b [$C2],Y

|018E1C| TXA
|018E1D| CLC
|018E1E| ADC.w #$0006
|018E21| TAX

|018E22| LDY.b $0C

|018E24| DEC.b $0E
|018E26| BNE .next_verticals_row

;---------------------------------------------------------------------------------------------------

|018E28| LDA.b $08
|018E2A| CLC
|018E2B| ADC.w #$0080

|018E2E| LDY.b $B2
|018E30| DEY
|018E31| STY.b $B4

|018E33| DEC.b $B4

.advance_A
|018E35| INC A
|018E36| INC A

|018E37| DEY
|018E38| BNE .advance_A

|018E3A| STA.b $0C

|018E3C| LDA.w #$0002
|018E3F| STA.b $0E

|018E41| LDA.b $08
|018E43| CLC
|018E44| ADC.w #$0080
|018E47| TAY

|018E48| LDX.w #RoomDrawObjectData.obj0648

;---------------------------------------------------------------------------------------------------

.next_horizontal_row
|018E4B| LDA.b $B4
|018E4D| STA.b $0A

.next_horizontal_edge
|018E4F| LDA.w RoomDrawObjectData+0,X
|018E52| STA.b [$BF],Y

|018E54| TYA
|018E55| CLC
|018E56| ADC.w #$0080
|018E59| TAY

|018E5A| DEC.b $0A
|018E5C| BNE .next_horizontal_edge

|018E5E| INX
|018E5F| INX

|018E60| LDY.b $0C

|018E62| DEC.b $0E
|018E64| BNE .next_horizontal_row

|018E66| RTS

;===================================================================================================

RoomDraw_DiagonalCeilingTopLeftB:
|018E67| LDA.w #$0004
|018E6A| JSR RoomDraw_GetSize_1to16_timesA

.next
|018E6D| JSR RoomDraw_Repeated1x1_CachedCount
|018E70| ADC.w #$0080
|018E73| STA.b $08

|018E75| TAY

|018E76| DEC.b $B2
|018E78| BNE .next

|018E7A| RTS

;===================================================================================================

RoomDraw_DiagonalCeilingBottomLeftB:
|018E7B| LDA.w #$0004
|018E7E| JSR RoomDraw_GetSize_1to16_timesA

|018E81| INC.b $B4

.next
|018E83| LDA.b $B4
|018E85| JSR RoomDraw_Repeated1x1
|018E88| ADC.w #$0080
|018E8B| STA.b $08

|018E8D| TAY

|018E8E| INC.b $B4

|018E90| DEC.b $B2
|018E92| BNE .next

|018E94| RTS

;===================================================================================================

RoomDraw_DiagonalCeilingTopRightB:
|018E95| LDA.w #$0004
|018E98| JSR RoomDraw_GetSize_1to16_timesA

.next
|018E9B| JSR RoomDraw_Repeated1x1_CachedCount
|018E9E| ADC.w #$0082
|018EA1| STA.b $08

|018EA3| TAY

|018EA4| DEC.b $B2
|018EA6| BNE .next

|018EA8| RTS

;===================================================================================================

RoomDraw_DiagonalCeilingBottomRightB:
|018EA9| LDA.w #$0004
|018EAC| JSR RoomDraw_GetSize_1to16_timesA

.next
|018EAF| JSR RoomDraw_Repeated1x1_CachedCount
|018EB2| SEC
|018EB3| SBC.w #$007E
|018EB6| STA.b $08

|018EB8| TAY

|018EB9| DEC.b $B2
|018EBB| BNE .next

|018EBD| RTS

;===================================================================================================

RoomDraw_DownwardsHasEdge1x1_1to16_plus23:
|018EBE| LDA.w #$0015
|018EC1| BRA RoomDraw_DownwardsHasEdge1x1_1to16

;===================================================================================================

RoomDraw_DownwardsHasEdge1x1_1to16_plus3:
|018EC3| LDA.w #$0002

;===================================================================================================

RoomDraw_DownwardsHasEdge1x1_1to16:
|018EC6| JSR RoomDraw_GetSize_1to16_timesA

|018EC9| LDA.w #$00E3
|018ECC| JSR RoomDraw_SmallRailCorner

|018ECF| BCC .next

|018ED1| LDA.w RoomDrawObjectData+0,X
|018ED4| STA.b [$BF],Y

.next
|018ED6| TYA
|018ED7| CLC
|018ED8| ADC.w #$0080
|018EDB| TAY

|018EDC| LDA.w RoomDrawObjectData+2,X
|018EDF| STA.b [$BF],Y

|018EE1| DEC.b $B2
|018EE3| BNE .next

|018EE5| LDA.w RoomDrawObjectData+4,X
|018EE8| STA.b [$CB],Y

|018EEA| RTS

;===================================================================================================

RoomDraw_RightwardsHasEdge1x1_1to16_plus23:
|018EEB| LDA.w #$0015
|018EEE| BRA RoomDraw_RightwardsHasEdge1x1_1to16

;===================================================================================================

RoomDraw_RightwardsHasEdge1x1_1to16_plus3:
|018EF0| LDA.w #$0002

;===================================================================================================

RoomDraw_RightwardsHasEdge1x1_1to16:
|018EF3| JSR RoomDraw_GetSize_1to16_timesA

|018EF6| LDA.w #$00E2
|018EF9| JSR RoomDraw_SmallRailCorner
|018EFC| BCC .no_corner_needed

|018EFE| LDA.w RoomDrawObjectData+0,X
|018F01| STA.b [$BF],Y

.no_corner_needed
|018F03| JSR RoomDraw_Repeated1x1_AdvanceWithCachedCount

|018F06| LDA.w RoomDrawObjectData+2,X
|018F09| STA.b [$BF],Y

|018F0B| RTS

;===================================================================================================

RoomDraw_DownwardsBigRail3x1_1to16plus5:
|018F0C| JSR RoomDraw_GetSize_1to16
|018F0F| JSR RoomDraw_Downwards2x2

|018F12| TXA
|018F13| CLC
|018F14| ADC.w #$0008
|018F17| TAX

.next
|018F18| LDA.w RoomDrawObjectData+0,X
|018F1B| STA.b [$BF],Y

|018F1D| LDA.w RoomDrawObjectData+2,X
|018F20| STA.b [$C2],Y

|018F22| TYA
|018F23| CLC
|018F24| ADC.w #$0080
|018F27| TAY

|018F28| DEC.b $B2
|018F2A| BNE .next

|018F2C| INX
|018F2D| INX
|018F2E| INX
|018F2F| INX

;===================================================================================================

RoomDraw_Single2x3Pillar:
|018F30| LDA.w #$0002
|018F33| JMP.w RoomDraw_1x3N_rightwards

;===================================================================================================

RoomDraw_RightwardsBigRail1x3_1to16plus5:
|018F36| JSR RoomDraw_GetSize_1to16

|018F39| INC.b $B2

|018F3B| LDA.w #$0002
|018F3E| JSR RoomDraw_1x3N_rightwards

.next
|018F41| LDA.w RoomDrawObjectData+0,X
|018F44| STA.b [$BF],Y

|018F46| LDA.w RoomDrawObjectData+2,X
|018F49| STA.b [$CB],Y

|018F4B| LDA.w RoomDrawObjectData+4,X
|018F4E| STA.b [$D7],Y

|018F50| INY
|018F51| INY

|018F52| DEC.b $B2
|018F54| BNE .next

|018F56| INX ; +6
|018F57| INX
|018F58| INX
|018F59| INX
|018F5A| INX
|018F5B| INX

|018F5C| LDA.w #$0002

|018F5F| JMP.w RoomDraw_1x3N_rightwards

;===================================================================================================

RoomDraw_RightwardsHasEdge1x1_1to16_plus2:
|018F62| JSR RoomDraw_GetSize_1to16

|018F65| LDA.w #$01DB
|018F68| JSR RoomDraw_SmallRailCorner
|018F6B| BCC .no_corner_needed

|018F6D| CMP.w #$01A6
|018F70| BEQ .no_corner_needed

|018F72| CMP.w #$01DD
|018F75| BEQ .no_corner_needed

|018F77| CMP.w #$01FC
|018F7A| BEQ .no_corner_needed

|018F7C| LDA.w RoomDrawObjectData+0,X
|018F7F| STA.b [$BF],Y

.no_corner_needed
|018F81| JSR RoomDraw_Repeated1x1_AdvanceWithCachedCount

|018F84| LDA.w RoomDrawObjectData+2,X
|018F87| STA.b [$BF],Y

|018F89| RTS

;===================================================================================================

RoomDraw_DownwardsEdge1x1_1to16:
|018F8A| JSR RoomDraw_GetSize_1to16

.next
|018F8D| LDA.w RoomDrawObjectData+0,X
|018F90| STA.b [$BF],Y

|018F92| TYA
|018F93| CLC
|018F94| ADC.w #$0080
|018F97| TAY

|018F98| DEC.b $B2
|018F9A| BNE .next

|018F9C| RTS

;===================================================================================================

RoomDraw_4x4FloorTwoIn4x4SuperSquare:
|018F9D| LDX.w $0490
|018FA0| BRA RoomDraw_4x4FloorIn4x4SuperSquare

;===================================================================================================

RoomDraw_4x4FloorOneIn4x4SuperSquare:
|018FA2| LDX.w $046A

;===================================================================================================

RoomDraw_4x4FloorIn4x4SuperSquare:
|018FA5| INC.b $B2
|018FA7| INC.b $B4

.next
|018FA9| LDA.b $B2
|018FAB| JSR RoomDraw_A_Many32x32Blocks

|018FAE| LDA.b $08
|018FB0| CLC
|018FB1| ADC.w #$0200
|018FB4| STA.b $08

|018FB6| TAY

|018FB7| DEC.b $B4
|018FB9| BNE .next

|018FBB| RTS

;===================================================================================================

RoomDraw_Nothing_D:
|018FBC| RTS

;===================================================================================================

RoomDraw_RightwardsTopCorners1x2_1to16_plus13:
|018FBD| LDA.w #$000A
|018FC0| JSR RoomDraw_GetSize_1to16_timesA

|018FC3| LDA.w RoomDrawObjectData+0,X
|018FC6| STA.b $0E

|018FC8| INX
|018FC9| INX

|018FCA| LDA.b [$BF],Y
|018FCC| AND.w #$03FF
|018FCF| CMP.w #$00E2
|018FD2| BEQ .skip_corner

|018FD4| JSR .draw_corner

.skip_corner
|018FD7| INX
|018FD8| INX
|018FD9| INX
|018FDA| INX

.next
|018FDB| LDA.w RoomDrawObjectData+0,X
|018FDE| STA.b [$BF],Y

|018FE0| LDA.b $0E
|018FE2| STA.b [$CB],Y

|018FE4| INY
|018FE5| INY

|018FE6| DEC.b $B2
|018FE8| BNE .next

|018FEA| INX
|018FEB| INX

;---------------------------------------------------------------------------------------------------

.draw_corner
|018FEC| LDA.w RoomDrawObjectData+0,X
|018FEF| STA.b [$BF],Y

|018FF1| LDA.w RoomDrawObjectData+2,X
|018FF4| STA.b [$C2],Y

|018FF6| LDA.b $0E
|018FF8| STA.b [$CB],Y
|018FFA| STA.b [$CE],Y

|018FFC| INY
|018FFD| INY
|018FFE| INY
|018FFF| INY

|019000| RTS

;===================================================================================================

RoomDraw_RightwardsBottomCorners1x2_1to16_plus13:
|019001| LDA.w #$000A
|019004| JSR RoomDraw_GetSize_1to16_timesA

|019007| LDA.w RoomDrawObjectData+0,X
|01900A| STA.b $0E

|01900C| INX
|01900D| INX

|01900E| LDA.b [$CB],Y
|019010| AND.w #$03FF
|019013| CMP.w #$00E2
|019016| BEQ .skip_corner

|019018| JSR .draw_corner

.skip_corner
|01901B| INX
|01901C| INX
|01901D| INX
|01901E| INX

.next
|01901F| LDA.b $0E
|019021| STA.b [$BF],Y

|019023| LDA.w RoomDrawObjectData+0,X
|019026| STA.b [$CB],Y

|019028| INY
|019029| INY

|01902A| DEC.b $B2
|01902C| BNE .next

;---------------------------------------------------------------------------------------------------

|01902E| INX
|01902F| INX

.draw_corner
|019030| LDA.b $0E
|019032| STA.b [$BF],Y
|019034| STA.b [$C2],Y

|019036| LDA.w RoomDrawObjectData+0,X
|019039| STA.b [$CB],Y

|01903B| LDA.w RoomDrawObjectData+2,X
|01903E| STA.b [$CE],Y

|019040| INY
|019041| INY
|019042| INY
|019043| INY

|019044| RTS

;===================================================================================================

RoomDraw_DownwardsLeftCorners2x1_1to16_plus12:
|019045| LDA.w #$000A
|019048| JSR RoomDraw_GetSize_1to16_timesA

|01904B| LDA.w RoomDrawObjectData+0,X
|01904E| STA.b $0E

|019050| INX
|019051| INX

|019052| LDA.b [$BF],Y
|019054| AND.w #$03FF
|019057| CMP.w #$00E3
|01905A| BEQ .skip_corner

|01905C| JSR .draw_corner

.skip_corner
|01905F| INX
|019060| INX
|019061| INX
|019062| INX

.next
|019063| LDA.w RoomDrawObjectData+0,X
|019066| STA.b [$BF],Y

|019068| LDA.b $0E
|01906A| STA.b [$C2],Y

|01906C| TYA
|01906D| CLC
|01906E| ADC.w #$0080
|019071| TAY

|019072| DEC.b $B2
|019074| BNE .next

;---------------------------------------------------------------------------------------------------

|019076| INX
|019077| INX

.draw_corner
|019078| LDA.w RoomDrawObjectData+0,X
|01907B| STA.b [$BF],Y

|01907D| LDA.w RoomDrawObjectData+2,X
|019080| STA.b [$CB],Y

|019082| LDA.b $0E
|019084| STA.b [$C2],Y
|019086| STA.b [$CE],Y

|019088| TYA
|019089| CLC
|01908A| ADC.w #$0100
|01908D| TAY

|01908E| RTS

;===================================================================================================

RoomDraw_DownwardsRightCorners2x1_1to16_plus12:
|01908F| LDA.w #$000A
|019092| JSR RoomDraw_GetSize_1to16_timesA

|019095| LDA.w RoomDrawObjectData+0,X
|019098| STA.b $0E

|01909A| INX
|01909B| INX

|01909C| LDA.b [$C2],Y
|01909E| AND.w #$03FF
|0190A1| CMP.w #$00E3
|0190A4| BEQ .skip_corner

|0190A6| JSR .draw_corner

.skip_corner
|0190A9| INX
|0190AA| INX
|0190AB| INX
|0190AC| INX

.next
|0190AD| LDA.b $0E
|0190AF| STA.b [$BF],Y

|0190B1| LDA.w RoomDrawObjectData+0,X
|0190B4| STA.b [$C2],Y

|0190B6| TYA
|0190B7| CLC
|0190B8| ADC.w #$0080
|0190BB| TAY

|0190BC| DEC.b $B2
|0190BE| BNE .next

|0190C0| INX
|0190C1| INX

;---------------------------------------------------------------------------------------------------

.draw_corner
|0190C2| LDA.b $0E
|0190C4| STA.b [$BF],Y
|0190C6| STA.b [$CB],Y

|0190C8| LDA.w RoomDrawObjectData+0,X
|0190CB| STA.b [$C2],Y

|0190CD| LDA.w RoomDrawObjectData+2,X
|0190D0| STA.b [$CE],Y

|0190D2| TYA
|0190D3| CLC
|0190D4| ADC.w #$0100
|0190D7| TAY

|0190D8| RTS

;===================================================================================================

RoomDraw_RightwardsEdge1x1_1to16plus7:
|0190D9| LDA.w #$0008
|0190DC| JSR RoomDraw_GetSize_1to16_timesA

|0190DF| JMP.w RoomDraw_Repeated1x1_CachedCount

;===================================================================================================

RoomDraw_DownwardsEdge1x1_1to16plus7:
|0190E2| LDA.w #$0008
|0190E5| JSR RoomDraw_GetSize_1to16_timesA

.next
|0190E8| LDA.w RoomDrawObjectData+0,X
|0190EB| STA.b [$BF],Y

|0190ED| TYA
|0190EE| CLC
|0190EF| ADC.w #$0080
|0190F2| TAY

|0190F3| DEC.b $B2
|0190F5| BNE .next

|0190F7| RTS

;===================================================================================================

RoomDraw_Nothing_A:
|0190F8| RTS

;===================================================================================================

RoomDraw_DownwardsFloor4x4_1to16:
|0190F9| STX.b $0A

|0190FB| JSR RoomDraw_GetSize_1to16

.next
|0190FE| LDX.b $0A
|019100| JSR RoomDraw_4x4

|019103| LDA.b $08
|019105| CLC
|019106| ADC.w #$0200
|019109| STA.b $08

|01910B| TAY

|01910C| DEC.b $B2
|01910E| BNE .next

|019110| RTS

;===================================================================================================

RoomDraw_Rightwards4x4_1to16:
|019111| STX.b $0A

|019113| JSR RoomDraw_GetSize_1to16

.next
|019116| LDX.b $0A
|019118| JSR RoomDraw_4x4

|01911B| DEC.b $B2

|01911D| BNE .next

|01911F| RTS

;===================================================================================================

RoomDraw_Downwards1x1Solid_1to16_plus3:
|019120| LDA.w #$0004
|019123| JSR RoomDraw_GetSize_1to16_timesA

.next
|019126| LDA.w RoomDrawObjectData+0,X
|019129| STA.b [$BF],Y

|01912B| TYA
|01912C| CLC
|01912D| ADC.w #$0080
|019130| TAY

|019131| DEC.b $B2
|019133| BNE .next

|019135| RTS

;===================================================================================================

RoomDraw_Rightwards1x1Solid_1to16_plus3:
|019136| LDA.w #$0004
|019139| JSR RoomDraw_GetSize_1to16_timesA

|01913C| JMP.w RoomDraw_Repeated1x1_CachedCount

;===================================================================================================
; TODO unused object to examine
RoomDraw_DoorSwitcherer:
|01913F| STY.w $04B0

|019142| LDA.b $BF
|019144| CMP.w #$4000
|019147| BNE .upper_layer_a

|019149| TYA
|01914A| ORA.w #$2000
|01914D| STA.w $04B0

|019150| TAY

.upper_layer_a
|019151| LDA.w $0402
|019154| AND.w #$1000
|019157| BEQ .dont_draw

|019159| STY.b $08

|01915B| LDY.w #$0052 ; [USELESS]
|01915E| LDY.b $08

|019160| LDA.w #$0003
|019163| STA.b $0E

|019165| JSR DrawUnusedDoorSwitchObject

|019168| LDY.w #$0052

|01916B| LDA.b $08
|01916D| CLC
|01916E| ADC.w #$000A

|019171| LDY.b $BF
|019173| CPY.w #$4000
|019176| BNE .upper_layer_b

|019178| CLC
|019179| ADC.w #$0004

.upper_layer_b
|01917C| LDA.w #$0003
|01917F| STA.b $0E

|019181| JSR RoomDraw_DrawUnreachableDoorSwitcher

|019184| RTS

;---------------------------------------------------------------------------------------------------

.dont_draw
|019185| LDA.w $04B0
|019188| ORA.w #$8000
|01918B| STA.w $04B0

|01918E| RTS

;===================================================================================================

RoomDraw_Nothing_E:
|01918F| RTS

;===================================================================================================

RoomDraw_MovingWallWest:
|019190| JSR RoomDraw_CheckIfWallIsMoved
|019193| BCS .continue

|019195| RTS

;---------------------------------------------------------------------------------------------------

.continue
|019196| INC.w $0428

|019199| LDA.b $B2
|01919B| ASL A
|01919C| TAY

|01919D| LDA.w MovingWallDirection,Y
|0191A0| PHA

|0191A1| ASL A
|0191A2| ADC.w #$0004
|0191A5| STA.b $0E

|0191A7| LDA.b $B4
|0191A9| ASL A
|0191AA| STA.w $041E

|0191AD| TAY

|0191AE| LDA.w MovingWallObjectCount,Y
|0191B1| STA.b $0C

|0191B3| TAY

|0191B4| LDA.b $08

.adjust_A
|0191B6| DEC A
|0191B7| DEC A

|0191B8| DEY
|0191B9| BNE .adjust_A

|0191BB| PHA

|0191BC| STA.b $06

|0191BE| LDX.w #RoomDrawObjectData.obj03D8

;---------------------------------------------------------------------------------------------------

.next_row
|0191C1| LDA.b $0E
|0191C3| STA.b $0A

|0191C5| LDY.b $06

|0191C7| LDA.w RoomDrawObjectData+0,X
|0191CA| STA.b [$BF],Y

.next_fill
|0191CC| LDA.w RoomDrawObjectData+2,X
|0191CF| STA.b [$CB],Y

|0191D1| TYA
|0191D2| CLC
|0191D3| ADC.w #$0080
|0191D6| TAY

|0191D7| DEC.b $0A
|0191D9| BNE .next_fill

|0191DB| LDA.w RoomDrawObjectData+4,X
|0191DE| STA.b [$CB],Y

|0191E0| INC.b $06
|0191E2| INC.b $06

|0191E4| DEC.b $0C
|0191E6| BNE .next_row

;---------------------------------------------------------------------------------------------------

|0191E8| PLA
|0191E9| DEC A
|0191EA| DEC A
|0191EB| STA.b $06

|0191ED| TAY

|0191EE| JSR FillMovingWallReplacementBuffer

|0191F1| LDY.b $08
|0191F3| LDX.w #RoomDrawObjectData.obj072A
|0191F6| JSR RoomDraw_ChestPlatformCorner

|0191F9| PLA
|0191FA| STA.b $0E

|0191FC| LDA.b $08
|0191FE| CLC
|0191FF| ADC.w #$0180
|019202| TAY

.next_vertical
|019203| JSR RoomDraw_ChestPlatformVerticalWall

|019206| TYA
|019207| CLC
|019208| ADC.w #$0100
|01920B| TAY

|01920C| DEC.b $0E
|01920E| BNE .next_vertical

;===================================================================================================

RoomDraw_ChestPlatformCorner_advance_from_X:
|019210| TXA

;===================================================================================================

RoomDraw_ChestPlatformCorner_advance_from_A:
|019211| CLC
|019212| ADC.w #$000C
|019215| TAX

;===================================================================================================

RoomDraw_ChestPlatformCorner:
|019216| LDA.w #$0003

|019219| JMP.w RoomDraw_1x3N_rightwards

;===================================================================================================

RoomDraw_MovingWallEast:
|01921C| JSR RoomDraw_CheckIfWallIsMoved
|01921F| BCS .continue

|019221| RTS

;---------------------------------------------------------------------------------------------------

.continue
|019222| INC.w $0428

|019225| LDY.b $08

|019227| LDX.w #RoomDrawObjectData.obj075A
|01922A| JSR RoomDraw_ChestPlatformCorner

|01922D| LDA.b $B2
|01922F| ASL A
|019230| TAY

|019231| LDA.w MovingWallDirection,Y
|019234| STA.b $0E

|019236| PHA

|019237| LDA.b $08
|019239| CLC
|01923A| ADC.w #$0180
|01923D| TAY

.next_vertical
|01923E| JSR RoomDraw_ChestPlatformVerticalWall

|019241| TYA
|019242| CLC
|019243| ADC.w #$0100
|019246| TAY

|019247| DEC.b $0E
|019249| BNE .next_vertical

;---------------------------------------------------------------------------------------------------

|01924B| JSR RoomDraw_ChestPlatformCorner_advance_from_X

|01924E| PLA
|01924F| ASL A
|019250| ADC.w #$0004
|019253| STA.b $0E

|019255| LDA.b $B4
|019257| ASL A
|019258| STA.w $041E

|01925B| TAY

|01925C| LDA.w MovingWallObjectCount,Y
|01925F| STA.b $0C

|019261| LDA.b $08
|019263| CLC
|019264| ADC.w #$0006
|019267| STA.b $06

|019269| LDX.w #RoomDrawObjectData.obj03D8

;---------------------------------------------------------------------------------------------------

.next_row
|01926C| LDA.b $0E
|01926E| STA.b $0A

|019270| LDY.b $06

|019272| LDA.w RoomDrawObjectData+0,X
|019275| STA.b [$BF],Y

.next_horizontal
|019277| LDA.w RoomDrawObjectData+2,X
|01927A| STA.b [$CB],Y

|01927C| TYA
|01927D| CLC
|01927E| ADC.w #$0080
|019281| TAY

|019282| DEC.b $0A
|019284| BNE .next_horizontal

|019286| LDA.w RoomDrawObjectData+4,X
|019289| STA.b [$CB],Y

|01928B| INC.b $06
|01928D| INC.b $06

|01928F| DEC.b $0C
|019291| BNE .next_row

|019293| LDY.b $06

|019295| JMP.w FillMovingWallReplacementBuffer

;===================================================================================================

RoomDraw_CheckIfWallIsMoved:
|019298| STZ.w $041C
|01929B| STZ.w $041A

|01929E| SEP #$30

|0192A0| LDX.b #$00
|0192A2| TXY

|0192A3| LDA.b $AE
|0192A5| CMP.b #$1C ; ROOMTAG 1C
|0192A7| BCC .not_moving_wall_tag

|0192A9| CMP.b #$20 ; ROOMTAG 20
|0192AB| BCC .has_moving_wall_tag

.not_moving_wall_tag
|0192AD| LDY.b #$02
|0192AF| INX

|0192B0| LDA.b $AF
|0192B2| CMP.b #$1C ; ROOMTAG 1C
|0192B4| BCC .draw_wall

|0192B6| CMP.b #$20 ; ROOMTAG 20
|0192B8| BCS .draw_wall

.has_moving_wall_tag
|0192BA| LDA.w $0403
|0192BD| AND.w DoorFlagMasks-1,Y
|0192C0| BEQ .draw_wall

|0192C2| STZ.w $046C

|0192C5| STZ.b $AE,X ; ROOMTAG 00

|0192C7| STZ.w $0414

|0192CA| REP #$31

|0192CC| RTS

.draw_wall
|0192CD| REP #$30
|0192CF| SEC

|0192D0| RTS

;===================================================================================================

FillMovingWallReplacementBuffer:
|0192D1| LDX.w #$007E
|0192D4| LDA.w #$01EC

.set_next
|0192D7| STA.l $7EC880,X

|0192DB| DEX
|0192DC| DEX
|0192DD| BPL .set_next

;---------------------------------------------------------------------------------------------------

|0192DF| LDA.b $06
|0192E1| AND.w #$003F
|0192E4| LSR A
|0192E5| STA.b $0A

|0192E7| TYA
|0192E8| AND.w #$0040
|0192EB| BEQ .upper_layer

|0192ED| LDA.w #$0400
|0192F0| TSB.b $0A

.upper_layer
|0192F2| LDA.b $0A
|0192F4| ORA.w #$1000
|0192F7| STA.w $042A

|0192FA| RTS

;===================================================================================================

RoomDraw_RightwardsDecor4x4spaced2_1to16:
|0192FB| JSR RoomDraw_GetSize_1to16

|0192FE| STX.b $0A

.next
|019300| LDX.b $0A
|019302| JSR RoomDraw_4x4

|019305| INY
|019306| INY
|019307| INY
|019308| INY

|019309| DEC.b $B2
|01930B| BNE .next

|01930D| RTS

;===================================================================================================

RoomDraw_DownwardsDecor4x4spaced2_1to16:
|01930E| JSR RoomDraw_GetSize_1to16

|019311| STX.b $0A

.next
|019313| LDX.b $0A
|019315| JSR RoomDraw_4x4

|019318| TYA
|019319| CLC
|01931A| ADC.w #$02F8
|01931D| TAY

|01931E| DEC.b $B2
|019320| BNE .next

|019322| RTS

;===================================================================================================

RoomDraw_RightwardsStatue2x3spaced2_1to16:
|019323| JSR RoomDraw_GetSize_1to16

.next
|019326| LDX.w #RoomDrawObjectData.obj0E26
|019329| LDA.w #$0002
|01932C| JSR RoomDraw_1x3N_rightwards

|01932F| INY
|019330| INY
|019331| INY
|019332| INY

|019333| DEC.b $B2
|019335| BNE .next

|019337| RTS

;===================================================================================================

RoomDraw_RightwardsBlock2x2spaced2_1to16:
|019338| JSR RoomDraw_GetSize_1to16

.next
|01933B| JSR RoomDraw_Rightwards2x2

|01933E| INY
|01933F| INY
|019340| INY
|019341| INY

|019342| DEC.b $B2
|019344| BNE .next

|019346| RTS

;===================================================================================================

RoomDraw_DownwardsBlock2x2spaced2_1to16:
|019347| JSR RoomDraw_GetSize_1to16

.next
|01934A| JSR RoomDraw_Downwards2x2

|01934D| CLC
|01934E| ADC.w #$0100
|019351| TAY

|019352| DEC.b $B2
|019354| BNE .next

|019356| RTS

;===================================================================================================

RoomDraw_DownwardsPillar2x4spaced2_1to16:
|019357| JSR RoomDraw_GetSize_1to16

|01935A| STX.b $0C

.next
|01935C| LDX.b $0C
|01935E| LDA.w #$0002
|019361| JSR RoomDraw_Nx4

|019364| TYA
|019365| CLC
|019366| ADC.w #$02FC
|019369| TAY

|01936A| DEC.b $B2
|01936C| BNE .next

|01936E| RTS

;===================================================================================================

RoomDraw_RightwardsPillar2x4spaced4_1to16:
|01936F| JSR RoomDraw_GetSize_1to16

|019372| STX.b $0C

.next
|019374| LDX.b $0C
|019376| LDA.w #$0002
|019379| JSR RoomDraw_Nx4

|01937C| TYA
|01937D| CLC
|01937E| ADC.w #$0008
|019381| TAY

|019382| DEC.b $B2
|019384| BNE .next

|019386| RTS

;===================================================================================================

RoomDraw_RightwardsDecor4x3spaced4_1to16:
|019387| STX.b $0A

|019389| JSR RoomDraw_GetSize_1to16

.next
|01938C| LDX.b $0A
|01938E| LDA.w #$0004
|019391| JSR RoomDraw_1x3N_rightwards

|019394| TYA
|019395| CLC
|019396| ADC.w #$0008
|019399| TAY

|01939A| DEC.b $B2
|01939C| BNE .next

|01939E| RTS

;===================================================================================================

RoomDraw_DownwardsDecor3x4spaced4_1to16:
|01939F| STX.b $0A

|0193A1| JSR RoomDraw_GetSize_1to16

.next
|0193A4| LDX.b $0A
|0193A6| LDA.w #$0003
|0193A9| JSR RoomDraw_Nx4

|0193AC| TYA
|0193AD| CLC
|0193AE| ADC.w #$03FA
|0193B1| TAY

|0193B2| DEC.b $B2
|0193B4| BNE .next

|0193B6| RTS

;===================================================================================================

RoomDraw_RightwardsDoubled2x2spaced2_1to16:
|0193B7| JSR RoomDraw_GetSize_1to16

.next
|0193BA| LDX.w #RoomDrawObjectData.obj08CA
|0193BD| JSR RoomDraw_Downwards2x2

|0193C0| CLC
|0193C1| ADC.w #$0200
|0193C4| TAY

|0193C5| TXA
|0193C6| CLC
|0193C7| ADC.w #$0008
|0193CA| TAX

|0193CB| JSR RoomDraw_Downwards2x2

|0193CE| LDA.b $08
|0193D0| CLC
|0193D1| ADC.w #$0008
|0193D4| STA.b $08

|0193D6| TAY

|0193D7| DEC.b $B2
|0193D9| BNE .next

|0193DB| RTS

;===================================================================================================

RoomDraw_TableRock4x4_1to16:
|0193DC| INC.b $B2

|0193DE| ASL.b $B4
|0193E0| INC.b $B4

|0193E2| JSR .draw_rock_segment

|0193E5| INX ; +8
|0193E6| INX
|0193E7| INX
|0193E8| INX
|0193E9| INX
|0193EA| INX
|0193EB| INX
|0193EC| INX

;---------------------------------------------------------------------------------------------------

.next_rock
|0193ED| JSR .draw_rock_segment

|0193F0| DEC.b $B4
|0193F2| BNE .next_rock

|0193F4| JSR .draw_rock_segment_with_advance

;---------------------------------------------------------------------------------------------------

.draw_rock_segment_with_advance
|0193F7| INX ; +8
|0193F8| INX
|0193F9| INX
|0193FA| INX
|0193FB| INX
|0193FC| INX
|0193FD| INX
|0193FE| INX

;---------------------------------------------------------------------------------------------------

.draw_rock_segment
|0193FF| LDA.b $B2
|019401| STA.b $0E

|019403| LDA.w RoomDrawObjectData+0,X
|019406| STA.b [$BF],Y

.next_rock_sub
|019408| LDA.w RoomDrawObjectData+2,X
|01940B| STA.b [$C2],Y

|01940D| LDA.w RoomDrawObjectData+4,X
|019410| STA.b [$C5],Y

|019412| INY
|019413| INY
|019414| INY
|019415| INY

|019416| DEC.b $0E
|019418| BNE .next_rock_sub

;---------------------------------------------------------------------------------------------------

|01941A| LDA.w RoomDrawObjectData+6,X
|01941D| STA.b [$C2],Y

|01941F| LDA.b $08
|019421| CLC
|019422| ADC.w #$0080
|019425| STA.b $08

|019427| TAY

|019428| RTS

;===================================================================================================

RoomDraw_Spike2x2In4x4SuperSquare:
|019429| INC.b $B2
|01942B| INC.b $B4

.next_super
|01942D| LDA.b $B2
|01942F| STA.b $0E

.next
|019431| JSR RoomDraw_Rightwards2x2

|019434| DEC.b $0E
|019436| BNE .next

|019438| LDA.b $08
|01943A| CLC
|01943B| ADC.w #$0100
|01943E| STA.b $08

|019440| TAY

|019441| DEC.b $B4
|019443| BNE .next_super

|019445| RTS

;===================================================================================================

RoomDraw_DownwardsDecor2x2spaced12_1to16:
|019446| JSR RoomDraw_GetSize_1to16

.next
|019449| JSR RoomDraw_Downwards2x2

|01944C| CLC
|01944D| ADC.w #$0600
|019450| TAY

|019451| DEC.b $B2
|019453| BNE .next

|019455| RTS

;===================================================================================================

RoomDraw_RightwardsDecor2x2spaced12_1to16:
|019456| JSR RoomDraw_GetSize_1to16

.next
|019459| JSR RoomDraw_Downwards2x2

|01945C| CLC
|01945D| ADC.w #$FF1C
|019460| TAY

|019461| DEC.b $B2
|019463| BNE .next

|019465| RTS

;===================================================================================================

RoomDraw_Waterfall47:
|019466| JSR RoomDraw_GetSize_1to16

|019469| ASL.b $B2

|01946B| JSR RoomDraw_1x5

|01946E| TXA
|01946F| CLC
|019470| ADC.w #$000A
|019473| TAX

|019474| INY
|019475| INY

.next
|019476| JSR RoomDraw_1x5

|019479| INY
|01947A| INY

|01947B| DEC.b $B2
|01947D| BNE .next

|01947F| TXA
|019480| CLC
|019481| ADC.w #$000A
|019484| TAX

|019485| JMP.w RoomDraw_1x5

;===================================================================================================

RoomDraw_Waterfall48:
|019488| JSR RoomDraw_GetSize_1to16

|01948B| ASL.b $B2

|01948D| LDA.w #$0001
|019490| JSR RoomDraw_1x3N_rightwards

.next
|019493| LDA.w RoomDrawObjectData+0,X
|019496| STA.b [$BF],Y

|019498| LDA.w RoomDrawObjectData+2,X
|01949B| STA.b [$CB],Y

|01949D| LDA.w RoomDrawObjectData+4,X
|0194A0| STA.b [$D7],Y

|0194A2| INY
|0194A3| INY

|0194A4| DEC.b $B2
|0194A6| BNE .next

|0194A8| INX ; +6
|0194A9| INX
|0194AA| INX
|0194AB| INX
|0194AC| INX
|0194AD| INX

|0194AE| LDA.w #$0001
|0194B1| JMP.w RoomDraw_1x3N_rightwards

;===================================================================================================

RoomDraw_RightwardsFloorTile4x2_1to16:
|0194B4| JSR RoomDraw_GetSize_1to16

|0194B7| LDA.w #$0008
|0194BA| JMP.w RoomDraw_Downwards4x2VariableSpacing

;===================================================================================================

RoomDraw_RightwardsBar4x3_1to16:
|0194BD| JSR RoomDraw_GetSize_1to16

|0194C0| ASL.b $B2

|0194C2| JSR RoomDraw_1x3

|0194C5| INY
|0194C6| INY

|0194C7| TXA
|0194C8| CLC
|0194C9| ADC.w #$0006
|0194CC| TAX

.next
|0194CD| JSR RoomDraw_1x3

|0194D0| INY
|0194D1| INY

|0194D2| DEC.b $B2
|0194D4| BNE .next

|0194D6| TXA
|0194D7| CLC
|0194D8| ADC.w #$0006
|0194DB| TAX

|0194DC| JMP.w RoomDraw_1x3

;===================================================================================================

RoomDraw_RightwardsShelf4x4_1to16:
|0194DF| JSR RoomDraw_GetSize_1to16

|0194E2| LDA.w #$0001
|0194E5| JSR RoomDraw_Nx4

.next
|0194E8| LDA.w #$0002
|0194EB| JSR RoomDraw_Nx4

|0194EE| TXA
|0194EF| SEC
|0194F0| SBC.w #$0010
|0194F3| TAX

|0194F4| DEC.b $B2
|0194F6| BNE .next

|0194F8| TXA
|0194F9| CLC
|0194FA| ADC.w #$0010
|0194FD| TAX

|0194FE| JMP.w RoomDraw_RightwardShelfEnd

;===================================================================================================

RoomDraw_WaterOverlayA8x8_1to16:
|019501| LDA.b $B2
|019503| ASL A
|019504| TAX

|019505| LDA.w WaterOverlayHDMAPositionOffset,X
|019508| STA.b $B2

|01950A| LDA.w WaterOverlayHDMASize,X
|01950D| STA.w $0686

|019510| LDA.b $B4
|019512| ASL A
|019513| TAX

|019514| LDA.w WaterOverlayHDMAPositionOffset,X
|019517| STA.b $B4

|019519| LDA.w WaterOverlayHDMASize,X
|01951C| STA.w $0684

|01951F| SEC
|019520| SBC.w #$0018
|019523| STA.w $0688

|019526| TYA
|019527| AND.w #$007E
|01952A| ASL A
|01952B| ASL A
|01952C| STA.w $0680

;---------------------------------------------------------------------------------------------------

|01952F| LDA.b $B2
|019531| ASL A
|019532| ASL A
|019533| ASL A
|019534| ASL A

|019535| CLC
|019536| ADC.w $062C

|019539| CLC
|01953A| ADC.w $0680
|01953D| STA.w $0680

|019540| TYA
|019541| AND.w #$1F80
|019544| LSR A
|019545| LSR A
|019546| LSR A
|019547| LSR A
|019548| STA.w $0682

|01954B| LDA.b $B4
|01954D| ASL A
|01954E| ASL A
|01954F| ASL A
|019550| ASL A

|019551| CLC
|019552| ADC.w $062E

|019555| CLC
|019556| ADC.w $0682
|019559| STA.w $0682

;---------------------------------------------------------------------------------------------------

|01955C| SEP #$30

|01955E| LDA.w $0403
|019561| AND.w DoorFlagMasks+1
|019564| BEQ .no_water

|019566| STZ.b $AF ; ROOMTAG 00

|019568| STZ.w $0414

|01956B| REP #$30

|01956D| LDA.w $0442
|019570| STA.w $0440

|019573| LDA.w $0444
|019576| STA.w $0448

|019579| STZ.w $0444
|01957C| STZ.w $0442

|01957F| LDA.w $04AE
|019582| STA.w $049E

|019585| STZ.w $04AE

|019588| LDA.b $B2
|01958A| DEC A
|01958B| ASL A
|01958C| ASL A
|01958D| STA.b $0E

|01958F| LDA.b $08
|019591| ADC.b $0E
|019593| STA.b $08

|019595| LDA.b $B4
|019597| DEC A
|019598| XBA
|019599| STA.b $0E

|01959B| LDA.b $08
|01959D| ADC.b $0E
|01959F| TAX

;===================================================================================================

#RoomTag_WaterOff_AdjustWater:
|0195A0| LDY.w #RoomDrawObjectData.obj1438

|0195A3| LDA.w #$0004
|0195A6| STA.b $0E

.next_floor
|0195A8| LDA.w RoomDrawObjectData+0,Y
|0195AB| STA.l $7E2000,X

|0195AF| LDA.w RoomDrawObjectData+2,Y
|0195B2| STA.l $7E2002,X

|0195B6| LDA.w RoomDrawObjectData+4,Y
|0195B9| STA.l $7E2004,X

|0195BD| LDA.w RoomDrawObjectData+6,Y
|0195C0| STA.l $7E2006,X

|0195C4| TYA
|0195C5| CLC
|0195C6| ADC.w #$0008
|0195C9| TAY

|0195CA| TXA
|0195CB| CLC
|0195CC| ADC.w #$0080
|0195CF| TAX

|0195D0| DEC.b $0E
|0195D2| BNE .next_floor

|0195D4| RTS

;---------------------------------------------------------------------------------------------------

.no_water
|0195D5| REP #$30

|0195D7| LDX.w #RoomDrawObjectData.obj0110
|0195DA| LDY.b $08

.next_chunk
|0195DC| LDA.b $B2
|0195DE| JSR RoomDraw_A_Many32x32Blocks

|0195E1| LDA.b $08
|0195E3| CLC
|0195E4| ADC.w #$0200
|0195E7| STA.b $08

|0195E9| TAY

|0195EA| DEC.b $B4
|0195EC| BNE .next_chunk

|0195EE| RTS

;===================================================================================================

RoomDraw_WaterOverlayB8x8_1to16:
|0195EF| LDA.b $B2
|0195F1| ASL A
|0195F2| TAX

|0195F3| LDA.w WaterOverlayHDMAPositionOffset,X
|0195F6| STA.b $B2

|0195F8| LDA.w WaterOverlayHDMASize,X
|0195FB| SEC
|0195FC| SBC.w #$0018
|0195FF| STA.w $0686

|019602| LDA.b $B4
|019604| ASL A
|019605| TAX

|019606| LDA.w WaterOverlayHDMAPositionOffset,X
|019609| STA.b $B4

|01960B| LDA.w WaterOverlayHDMASize,X
|01960E| SEC
|01960F| SBC.w #$0008
|019612| STA.w $0688

|019615| SEC
|019616| SBC.w #$0018
|019619| STA.w $0684

|01961C| STZ.w $068A

;---------------------------------------------------------------------------------------------------

|01961F| TYA
|019620| AND.w #$007E
|019623| ASL A
|019624| ASL A
|019625| STA.w $0680

|019628| LDA.b $B2
|01962A| ASL A ; x16
|01962B| ASL A
|01962C| ASL A
|01962D| ASL A

|01962E| CLC
|01962F| ADC.w $062C

|019632| CLC
|019633| ADC.w $0680
|019636| STA.w $0680

|019639| TYA
|01963A| AND.w #$1F80
|01963D| LSR A ; /16
|01963E| LSR A
|01963F| LSR A
|019640| LSR A
|019641| STA.w $0682

|019644| LDA.b $B4
|019646| ASL A ; x16
|019647| ASL A
|019648| ASL A
|019649| ASL A

|01964A| CLC
|01964B| ADC.w $062E

|01964E| CLC
|01964F| ADC.w $0682

|019652| SEC
|019653| SBC.w #$0008
|019656| STA.w $0682

;---------------------------------------------------------------------------------------------------

|019659| SEP #$30

|01965B| LDA.w $0403
|01965E| AND.w DoorFlagMasks+1
|019661| BEQ .not_filled

|019663| STZ.b $AF ; ROOMTAG 00

|019665| BRA .continue

;---------------------------------------------------------------------------------------------------

.not_filled
|019667| REP #$30

|019669| LDA.w $0442
|01966C| STA.w $0440

|01966F| LDA.w $0444
|019672| STA.w $0448

|019675| STZ.w $0444
|019678| STZ.w $0442

|01967B| LDA.w $04AE
|01967E| STA.w $049E

|019681| STZ.w $04AE
|019684| STZ.w $0414

;---------------------------------------------------------------------------------------------------

.continue
|019687| REP #$30

|019689| LDA.b $B4
|01968B| ASL A
|01968C| TAX

|01968D| LDA.w WaterOverlayObjectCount,X
|019690| STA.b $04

|019692| LDX.w #RoomDrawObjectData.obj0110

;---------------------------------------------------------------------------------------------------

.next_chunk
|019695| LDY.b $08

|019697| LDA.b $B2
|019699| STA.b $0A

.next_tile
|01969B| LDA.w RoomDrawObjectData+0,X
|01969E| STA.b [$BF],Y

|0196A0| LDA.w RoomDrawObjectData+2,X
|0196A3| STA.b [$C2],Y

|0196A5| LDA.w RoomDrawObjectData+4,X
|0196A8| STA.b [$C5],Y

|0196AA| LDA.w RoomDrawObjectData+6,X
|0196AD| STA.b [$C8],Y

|0196AF| LDA.w RoomDrawObjectData+8,X
|0196B2| STA.b [$CB],Y

|0196B4| LDA.w RoomDrawObjectData+10,X
|0196B7| STA.b [$CE],Y

|0196B9| LDA.w RoomDrawObjectData+12,X
|0196BC| STA.b [$D1],Y

|0196BE| LDA.w RoomDrawObjectData+14,X
|0196C1| STA.b [$D4],Y

|0196C3| INY ; +8
|0196C4| INY
|0196C5| INY
|0196C6| INY
|0196C7| INY
|0196C8| INY
|0196C9| INY
|0196CA| INY

|0196CB| DEC.b $0A
|0196CD| BNE .next_tile

|0196CF| LDA.b $08
|0196D1| CLC
|0196D2| ADC.w #$0100
|0196D5| STA.b $08

|0196D7| DEC.b $04
|0196D9| BNE .next_chunk

|0196DB| RTS

;===================================================================================================

RoomDraw_RightwardsLine1x1_1to16plus1:
|0196DC| JSR RoomDraw_GetSize_1to16

|0196DF| INC.b $B2

|0196E1| JMP.w RoomDraw_Repeated1x1_CachedCount

;===================================================================================================

RoomDraw_DownwardsLine1x1_1to16plus1:
|0196E4| JSR RoomDraw_GetSize_1to16

|0196E7| INC.b $B2

.next
|0196E9| LDA.w RoomDrawObjectData+0,X
|0196EC| STA.b [$BF],Y

|0196EE| TYA
|0196EF| CLC
|0196F0| ADC.w #$0080
|0196F3| TAY

|0196F4| DEC.b $B2
|0196F6| BNE .next

|0196F8| RTS

;===================================================================================================

RoomDraw_RightwardsDecor4x2spaced8_1to16:
|0196F9| JSR RoomDraw_GetSize_1to16

|0196FC| LDA.w #$0018
|0196FF| JMP.w RoomDraw_Downwards4x2VariableSpacing

;===================================================================================================

RoomDraw_DownwardsDecor2x4spaced8_1to16:
|019702| STX.b $0A

|019704| JSR RoomDraw_GetSize_1to16

.next
|019707| LDX.b $0A

|019709| LDA.w #$0002
|01970C| JSR RoomDraw_Nx4

|01970F| TYA
|019710| CLC
|019711| ADC.w #$05FC
|019714| TAY

|019715| DEC.b $B2
|019717| BNE .next

|019719| RTS

;===================================================================================================

RoomDraw_Nothing_C:
|01971A| RTS

;===================================================================================================

RoomDraw_DownwardsDecor3x4spaced2_1to16:
|01971B| STX.b $0A

|01971D| JSR RoomDraw_GetSize_1to16

.next
|019720| LDX.b $0A

|019722| LDA.w #$0003
|019725| JSR RoomDraw_Nx4

|019728| TYA
|019729| CLC
|01972A| ADC.w #$02FA
|01972D| TAY

|01972E| DEC.b $B2
|019730| BNE .next

|019732| RTS

;===================================================================================================

RoomDraw_OpenChestPlatform:
|019733| LDA.b $BF
|019735| CMP.w #$4000
|019738| BNE .upper_layer

|01973A| TYA
|01973B| ORA.w #$2000
|01973E| TAY

.upper_layer
|01973F| TYX

|019740| LDY.w #RoomDrawObjectData.obj0AB4

|019743| INC.b $B2

|019745| LDA.b $B4
|019747| ASL A
|019748| CLC
|019749| ADC.w #$0005
|01974C| STA.b $B4

;---------------------------------------------------------------------------------------------------

.next_segment
|01974E| JSR .draw_segment

|019751| DEC.b $B4
|019753| BNE .next_segment

|019755| INY
|019756| INY

|019757| JSR .draw_segment

|01975A| INY
|01975B| INY

;---------------------------------------------------------------------------------------------------

.draw_segment
|01975C| PHX

|01975D| LDA.b $B2
|01975F| STA.b $0A

;---------------------------------------------------------------------------------------------------

|019761| LDA.w RoomDrawObjectData+0,Y
|019764| STA.l $7E2000,X

|019768| LDA.w RoomDrawObjectData+6,Y

.next_fill_a
|01976B| STA.l $7E2002,X

|01976F| INX
|019770| INX

|019771| DEC.b $0A
|019773| BNE .next_fill_a

;---------------------------------------------------------------------------------------------------

|019775| LDA.w RoomDrawObjectData+12,Y
|019778| STA.l $7E2002,X

|01977C| LDA.w RoomDrawObjectData+18,Y
|01977F| STA.l $7E2004,X
|019783| STA.l $7E2006,X
|019787| STA.l $7E2008,X
|01978B| STA.l $7E200A,X

|01978F| LDA.b $B2
|019791| STA.b $0A

|019793| LDA.w RoomDrawObjectData+24,Y
|019796| STA.l $7E200C,X

;---------------------------------------------------------------------------------------------------

|01979A| LDA.w RoomDrawObjectData+30,Y

.next_fill_b
|01979D| STA.l $7E200E,X

|0197A1| INX
|0197A2| INX

|0197A3| DEC.b $0A
|0197A5| BNE .next_fill_b

;---------------------------------------------------------------------------------------------------

|0197A7| LDA.w RoomDrawObjectData+36,Y
|0197AA| STA.l $7E200E,X

|0197AE| PLA
|0197AF| CLC
|0197B0| ADC.w #$0080
|0197B3| TAX

|0197B4| RTS

;===================================================================================================

RoomDraw_DownwardsBar2x5_1to16:
|0197B5| LDA.w #$0002
|0197B8| JSR RoomDraw_GetSize_1to16_timesA

|0197BB| ASL.b $B2

|0197BD| LDA.w RoomDrawObjectData+0,X
|0197C0| STA.b [$BF],Y

|0197C2| LDA.w RoomDrawObjectData+2,X
|0197C5| STA.b [$C2],Y

.next
|0197C7| LDA.w RoomDrawObjectData+4,X
|0197CA| STA.b [$CB],Y

|0197CC| LDA.w RoomDrawObjectData+6,X
|0197CF| STA.b [$CE],Y

|0197D1| TYA
|0197D2| CLC
|0197D3| ADC.w #$0080
|0197D6| TAY

|0197D7| DEC.b $B2
|0197D9| BNE .next

|0197DB| RTS

;===================================================================================================

RoomDraw_Weird2x4_1_to_16:
|0197DC| JSR RoomDraw_GetSize_1to16

.next
|0197DF| LDX.w #RoomDrawObjectData.obj0B16
|0197E2| LDA.w #$0002
|0197E5| JSR RoomDraw_Nx4

|0197E8| DEC.b $B2
|0197EA| BNE .next

|0197EC| RTS

;===================================================================================================

RoomDraw_4x4:
|0197ED| LDA.w #$0004

;===================================================================================================

RoomDraw_Nx4:
|0197F0| STA.b $0E

.next
|0197F2| LDA.w RoomDrawObjectData+0,X
|0197F5| STA.b [$BF],Y

|0197F7| LDA.w RoomDrawObjectData+2,X
|0197FA| STA.b [$CB],Y

|0197FC| LDA.w RoomDrawObjectData+4,X
|0197FF| STA.b [$D7],Y

|019801| LDA.w RoomDrawObjectData+6,X
|019804| STA.b [$DA],Y

|019806| TXA
|019807| CLC
|019808| ADC.w #$0008
|01980B| TAX

|01980C| INY
|01980D| INY

|01980E| DEC.b $0E
|019810| BNE .next

|019812| RTS

;===================================================================================================

RoomDraw_4x4Corner_BothBG:
|019813| TXA
|019814| TYX
|019815| TAY

|019816| LDA.w #$0004

;---------------------------------------------------------------------------------------------------

.set_count
|019819| STA.b $0E

.next
|01981B| LDA.w RoomDrawObjectData+0,Y
|01981E| STA.l $7E4000,X
|019822| STA.l $7E2000,X

|019826| LDA.w RoomDrawObjectData+2,Y
|019829| STA.l $7E4080,X
|01982D| STA.l $7E2080,X

|019831| LDA.w RoomDrawObjectData+4,Y
|019834| STA.l $7E4100,X
|019838| STA.l $7E2100,X

|01983C| LDA.w RoomDrawObjectData+6,Y
|01983F| STA.l $7E4180,X
|019843| STA.l $7E2180,X

|019847| TYA
|019848| CLC
|019849| ADC.w #$0008
|01984C| TAY

|01984D| INX
|01984E| INX

|01984F| DEC.b $0E
|019851| BNE .next

|019853| RTS

;===================================================================================================

RoomDraw_WeirdCornerBottom_BothBG:
|019854| TXA
|019855| TYX
|019856| TAY

|019857| LDA.w #$0003
|01985A| BRA RoomDraw_4x4Corner_BothBG.set_count

;===================================================================================================

RoomDraw_WeirdCornerTop_BothBG:
|01985C| TXA
|01985D| TYX
|01985E| TAY

|01985F| LDA.w #$0004
|019862| STA.b $0E

.next
|019864| LDA.w RoomDrawObjectData+0,Y
|019867| STA.l $7E4000,X
|01986B| STA.l $7E2000,X

|01986F| LDA.w RoomDrawObjectData+2,Y
|019872| STA.l $7E4080,X
|019876| STA.l $7E2080,X

|01987A| LDA.w RoomDrawObjectData+4,Y
|01987D| STA.l $7E4100,X
|019881| STA.l $7E2100,X

|019885| TYA
|019886| CLC
|019887| ADC.w #$0006
|01988A| TAY

|01988B| INX
|01988C| INX

|01988D| DEC.b $0E
|01988F| BNE .next

|019891| RTS

;===================================================================================================

RoomDraw_LitTorch:
|019892| INC.w $045A

;===================================================================================================

RoomDraw_Rightwards2x2:
|019895| LDA.w RoomDrawObjectData+0,X
|019898| STA.b [$BF],Y

|01989A| LDA.w RoomDrawObjectData+2,X
|01989D| STA.b [$CB],Y

|01989F| LDA.w RoomDrawObjectData+4,X
|0198A2| STA.b [$C2],Y

|0198A4| LDA.w RoomDrawObjectData+6,X
|0198A7| STA.b [$CE],Y

|0198A9| INY
|0198AA| INY
|0198AB| INY
|0198AC| INY

|0198AD| RTS

;===================================================================================================

RoomDraw_BigKeyLock:
|0198AE| LDX.w $0498

|0198B1| TYA
|0198B2| STA.w $06E0,X

|0198B5| LDA.w $0402
|0198B8| AND.w RoomFlagMask,X
|0198BB| BNE .lock_opened

|0198BD| INX
|0198BE| INX
|0198BF| STX.w $0498

|0198C2| LDX.w #RoomDrawObjectData.obj1494
|0198C5| BRA RoomDraw_Rightwards2x2

.lock_opened
|0198C7| STZ.w $06E0,X

|0198CA| INX
|0198CB| INX
|0198CC| STX.w $0498

;---------------------------------------------------------------------------------------------------

#EXIT_0198CF:
|0198CF| RTS

;===================================================================================================

RoomDraw_Chest:
; Don't draw chests during credits
|0198D0| LDA.b $10
|0198D2| AND.w #$00FF
|0198D5| CMP.w #$001A
|0198D8| BEQ EXIT_0198CF

|0198DA| LDX.w $0496

|0198DD| TYA
|0198DE| STA.w $06E0,X

|0198E1| LDA.b $BF
|0198E3| CMP.w #$4000
|0198E6| BNE .upper_layer

|0198E8| TYA
|0198E9| ORA.w #$2000
|0198EC| STA.w $06E0,X

.upper_layer
|0198EF| LDA.w $0402
|0198F2| AND.w RoomFlagMask,X
|0198F5| BNE RoomDraw_Chest_opened

|0198F7| INX
|0198F8| INX
|0198F9| STX.w $0496
|0198FC| STX.w $0498

|0198FF| LDY.w #$FF00
|019902| LDX.w #$0000

;---------------------------------------------------------------------------------------------------

|019905| LDA.b $AE
|019907| AND.w #$00FF
|01990A| CMP.w #$0027 ; ROOMTAG 27
|01990D| BEQ .tag_1_invisible

|01990F| CMP.w #$003C ; ROOMTAG 3C
|019912| BEQ .tag_1_invisible

|019914| CMP.w #$003E ; ROOMTAG 3E
|019917| BEQ .tag_1_invisible

|019919| CMP.w #$0029 ; ROOMTAG 29
|01991C| BCC .tag_1_not_invisible

|01991E| CMP.w #$0033 ; ROOMTAG 33
|019921| BCC .tag_1_invisible

;---------------------------------------------------------------------------------------------------

.tag_1_not_invisible
|019923| LDA.b $AF
|019925| AND.w #$00FF
|019928| CMP.w #$0027 ; ROOMTAG 27
|01992B| BEQ .tag_2_invisible

|01992D| CMP.w #$003C ; ROOMTAG 3C
|019930| BEQ .tag_2_invisible

|019932| CMP.w #$003E ; ROOMTAG 3E
|019935| BEQ .tag_2_invisible

|019937| CMP.w #$0029 ; ROOMTAG 29
|01993A| BCC .tag_2_not_invisible

|01993C| CMP.w #$0033 ; ROOMTAG 33
|01993F| BCS .tag_2_not_invisible

.tag_2_invisible
|019941| LDY.w #$00FF

|019944| INX
|019945| INX

;---------------------------------------------------------------------------------------------------

.tag_1_invisible
|019946| LDA.w $0402
|019949| AND.l RoomFlagMask,X
|01994D| BEQ EXIT_0198CF

|01994F| TYA
|019950| AND.b $AE
|019952| STA.b $AE

.tag_2_not_invisible
|019954| LDY.b $08
|019956| LDX.w #RoomDrawObjectData.obj149C
|019959| JMP.w RoomDraw_Rightwards2x2

;===================================================================================================

RoomDraw_Chest_opened:
|01995C| STZ.w $06E0,X

|01995F| INX
|019960| INX
|019961| STX.w $0496
|019964| STX.w $0498

|019967| LDY.w #$FF00
|01996A| LDX.w #$0000

;---------------------------------------------------------------------------------------------------

|01996D| LDA.b $AE
|01996F| AND.w #$00FF
|019972| CMP.w #$0027 ; ROOMTAG 27
|019975| BEQ .tag_1_invisible

|019977| CMP.w #$003C ; ROOMTAG 3C
|01997A| BEQ .tag_1_invisible

|01997C| CMP.w #$003E ; ROOMTAG 3E
|01997F| BEQ .tag_1_invisible

|019981| CMP.w #$0029 ; ROOMTAG 29
|019984| BCC .tag_1_not_invisible

|019986| CMP.w #$0033 ; ROOMTAG 33
|019989| BCC .tag_1_invisible

;---------------------------------------------------------------------------------------------------

.tag_1_not_invisible
|01998B| LDA.b $AF
|01998D| AND.w #$00FF
|019990| CMP.w #$0027 ; ROOMTAG 27
|019993| BEQ .tag_2_invisible

|019995| CMP.w #$003C ; ROOMTAG 3C
|019998| BEQ .tag_2_invisible

|01999A| CMP.w #$003E ; ROOMTAG 3E
|01999D| BEQ .tag_2_invisible

|01999F| CMP.w #$0029 ; ROOMTAG 29
|0199A2| BCC .tag_2_not_invisible

|0199A4| CMP.w #$0033 ; ROOMTAG 33
|0199A7| BCS .tag_2_not_invisible

.tag_2_invisible
|0199A9| LDY.w #$00FF
|0199AC| INX
|0199AD| INX

.tag_1_invisible
|0199AE| TYA
|0199AF| AND.b $AE
|0199B1| STA.b $AE

.tag_2_not_invisible
|0199B3| LDY.b $08
|0199B5| LDX.w #RoomDrawObjectData.obj14A4

;===================================================================================================

RoomDraw_OpenChest:
|0199B8| JMP.w RoomDraw_Rightwards2x2

;===================================================================================================

RoomDraw_BigChest:
|0199BB| LDX.w $0496

|0199BE| TYA
|0199BF| ORA.w #$8000
|0199C2| STA.w $06E0,X

|0199C5| LDA.b $BF
|0199C7| CMP.w #$4000
|0199CA| BNE .upper_layer

|0199CC| TYA
|0199CD| ORA.w #$A000
|0199D0| STA.w $06E0,X

.upper_layer
|0199D3| LDA.w $0402
|0199D6| AND.w RoomFlagMask,X
|0199D9| BNE RoomDraw_BigChest_opened

|0199DB| INX
|0199DC| INX
|0199DD| STX.w $0496
|0199E0| STX.w $0498

|0199E3| LDX.w #RoomDrawObjectData.obj14AC

;===================================================================================================

RoomDraw_TableRock4x3:
|0199E6| LDA.w #$0004
|0199E9| JMP.w RoomDraw_1x3N_rightwards

;===================================================================================================

RoomDraw_SolidWallDecor3x4:
|0199EC| LDA.w #$0003
|0199EF| JMP.w RoomDraw_Nx4

;===================================================================================================

RoomDraw_BigChest_opened:
|0199F2| STZ.w $06E0,X

|0199F5| INX
|0199F6| INX
|0199F7| STX.w $0496
|0199FA| STX.w $0498

|0199FD| LDX.w #RoomDrawObjectData.obj14C4

;===================================================================================================

RoomDraw_OpenBigChest:
|019A00| LDA.w #$0004
|019A03| JMP.w RoomDraw_1x3N_rightwards

;===================================================================================================

RoomDraw_BigWallDecor:
|019A06| LDA.w #$0008
|019A09| JMP.w RoomDraw_1x3N_rightwards

;===================================================================================================

RoomDraw_Utility6x3:
|019A0C| LDA.w #$0006
|019A0F| JMP.w RoomDraw_1x3N_rightwards

;===================================================================================================

RoomDraw_MagicBatAltar:
|019A12| TXY

|019A13| LDA.b $BF
|019A15| CMP.w #$4000
|019A18| BNE .upper_layer

|019A1A| LDA.b $08
|019A1C| ORA.w #$2000
|019A1F| STA.b $08

.upper_layer
|019A21| LDX.b $08

|019A23| LDA.w #$0008
|019A26| STA.b $0E

;---------------------------------------------------------------------------------------------------

.next
|019A28| LDA.w RoomDrawObjectData+0,Y
|019A2B| STA.l $7E2000,X

|019A2F| LDA.w RoomDrawObjectData+2,Y
|019A32| STA.l $7E2080,X

|019A36| LDA.w RoomDrawObjectData+4,Y
|019A39| STA.l $7E2100,X

|019A3D| LDA.w RoomDrawObjectData+6,Y
|019A40| STA.l $7E2180,X

|019A44| LDA.w RoomDrawObjectData+8,Y
|019A47| STA.l $7E2200,X

|019A4B| LDA.w RoomDrawObjectData+10,Y
|019A4E| STA.l $7E2280,X

|019A52| LDA.w RoomDrawObjectData+12,Y
|019A55| STA.l $7E2300,X

|019A59| TYA
|019A5A| CLC
|019A5B| ADC.w #$000E
|019A5E| TAY

|019A5F| INX
|019A60| INX

|019A61| DEC.b $0E
|019A63| BNE .next

|019A65| RTS

;===================================================================================================

RoomDraw_SmithyFurnace:
|019A66| LDY.w #RoomDrawObjectData.obj1F92
|019A69| LDA.w #$0006
|019A6C| JMP.w RoomDraw_SomeBigDecors

;===================================================================================================

RoomDraw_EnabledStarSwitch:
|019A6F| PHX

|019A70| LDX.w $0432

|019A73| TYA
|019A74| LSR A
|019A75| STA.w $06A0,X

|019A78| LDA.b $BF
|019A7A| CMP.w #$4000
|019A7D| BNE .upper_layer

|019A7F| TYA
|019A80| ORA.w #$2000
|019A83| LSR A
|019A84| STA.w $06A0,X

.upper_layer
|019A87| INX
|019A88| INX
|019A89| STX.w $0432

|019A8C| PLX

;===================================================================================================

RoomDraw_Single2x2:
|019A8D| JMP.w RoomDraw_Downwards2x2

;===================================================================================================

RoomDraw_VerticalTurtleRockPipe:
|019A90| LDA.w #$0004
|019A93| JSR RoomDraw_1x3N_rightwards

|019A96| LDA.b $08
|019A98| CLC
|019A99| ADC.w #$0180
|019A9C| TAY

|019A9D| LDA.w #$0004
|019AA0| JMP.w RoomDraw_1x3N_rightwards

;===================================================================================================

RoomDraw_HorizontalTurtleRockPipe:
|019AA3| LDA.w #$0006
|019AA6| JMP.w RoomDraw_Nx4

;===================================================================================================

RoomDraw_RupeeFloor:
|019AA9| LDA.w $0402
|019AAC| AND.w #$1000
|019AAF| BNE .exit

|019AB1| LDA.w #$0003
|019AB4| STA.b $0E

|019AB6| LDY.w #RoomDrawObjectData.obj1DD6
|019AB9| LDX.b $08

; Lower layer
|019ABB| LDA.b $BF
|019ABD| CMP.w #$4000
|019AC0| BNE .next

|019AC2| TXA
|019AC3| ORA.w #$2000
|019AC6| TAX

;---------------------------------------------------------------------------------------------------

.next
|019AC7| LDA.w RoomDrawObjectData+0,Y
|019ACA| STA.l $7E2000,X
|019ACE| STA.l $7E2180,X
|019AD2| STA.l $7E2300,X

|019AD6| LDA.w RoomDrawObjectData+2,Y
|019AD9| STA.l $7E2080,X
|019ADD| STA.l $7E2200,X
|019AE1| STA.l $7E2380,X

|019AE5| INX ; +4
|019AE6| INX
|019AE7| INX
|019AE8| INX

|019AE9| DEC.b $0E
|019AEB| BNE .next

.exit
|019AED| RTS

;===================================================================================================

RoomDraw_Bed4x5:
|019AEE| LDA.w #$0005
|019AF1| STA.b $0E

.next
|019AF3| LDA.w RoomDrawObjectData+0,X
|019AF6| STA.b [$BF],Y

|019AF8| LDA.w RoomDrawObjectData+2,X
|019AFB| STA.b [$C2],Y

|019AFD| LDA.w RoomDrawObjectData+4,X
|019B00| STA.b [$C5],Y

|019B02| LDA.w RoomDrawObjectData+6,X
|019B05| STA.b [$C8],Y

|019B07| TXA
|019B08| CLC
|019B09| ADC.w #$0008
|019B0C| TAX

|019B0D| TYA
|019B0E| CLC
|019B0F| ADC.w #$0080
|019B12| TAY

|019B13| DEC.b $0E
|019B15| BNE .next

|019B17| RTS

;===================================================================================================

UNREACHABLE_019B18:
|019B18| LDA.w #$0002
|019B1B| JMP.w RoomDraw_Nx4

;===================================================================================================

RoomDraw_WaterLadderNorth:
|019B1E| LDA.b $AF
|019B20| AND.w #$00FF
|019B23| CMP.w #$001B ; ROOMTAG 1B
|019B26| BNE .continue

|019B28| LDA.b $A0
|019B2A| ASL A
|019B2B| TAX

|019B2C| LDA.l $7EF000,X
|019B30| AND.w #$0100
|019B33| BNE .continue

|019B35| JMP.w RoomDraw_WaterLadderSouth

;---------------------------------------------------------------------------------------------------

.continue
|019B38| LDX.w $0444

|019B3B| TYA
|019B3C| LSR A
|019B3D| STA.w $06B8,X

|019B40| INX
|019B41| INX
|019B42| STX.w $0444

|019B45| LDX.w #RoomDrawObjectData.obj1108

;===================================================================================================

RoomDraw_PortraitOfMario:
|019B48| LDA.w #$0001
|019B4B| STA.b $B2

|019B4D| JMP.w RoomDraw_Downwards4x2VariableSpacing

;===================================================================================================

RoomDraw_DrawRightwards3x6:
|019B50| LDA.w #$0006
|019B53| JMP.w RoomDraw_1x3N_rightwards

;===================================================================================================

RoomDraw_SanctuaryWall:
|019B56| TXY

|019B57| LDX.b $08

|019B59| LDA.w #$0006
|019B5C| STA.b $0E

.next
|019B5E| LDA.w RoomDrawObjectData+0,Y
|019B61| STA.l $7E2000,X
|019B65| STA.l $7E2008,X
|019B69| STA.l $7E2010,X
|019B6D| STA.l $7E201C,X
|019B71| STA.l $7E2024,X
|019B75| STA.l $7E202C,X

|019B79| ORA.w #$4000
|019B7C| STA.l $7E2002,X
|019B80| STA.l $7E200A,X
|019B84| STA.l $7E2012,X
|019B88| STA.l $7E201E,X
|019B8C| STA.l $7E2026,X
|019B90| STA.l $7E202E,X

|019B94| LDA.w RoomDrawObjectData+12,Y
|019B97| STA.l $7E2004,X
|019B9B| STA.l $7E200C,X
|019B9F| STA.l $7E2020,X
|019BA3| STA.l $7E2028,X

|019BA7| ORA.w #$4000
|019BAA| STA.l $7E2006,X
|019BAE| STA.l $7E200E,X
|019BB2| STA.l $7E2022,X
|019BB6| STA.l $7E202A,X

|019BBA| INY
|019BBB| INY

|019BBC| TXA
|019BBD| CLC
|019BBE| ADC.w #$0080
|019BC1| TAX

|019BC2| DEC.b $0E
|019BC4| BNE .next

;---------------------------------------------------------------------------------------------------

|019BC6| TYA
|019BC7| CLC
|019BC8| ADC.w #$000C
|019BCB| TAX

|019BCC| LDA.b $08
|019BCE| CLC
|019BCF| ADC.w #$0014
|019BD2| TAY

|019BD3| LDA.w #$0004
|019BD6| JMP.w RoomDraw_1x3N_rightwards

;===================================================================================================

RoomDraw_ChestPlatformVerticalWall:
|019BD9| LDA.w RoomDrawObjectData+0,X
|019BDC| STA.b [$BF],Y

|019BDE| LDA.w RoomDrawObjectData+2,X
|019BE1| STA.b [$C2],Y

|019BE3| LDA.w RoomDrawObjectData+4,X
|019BE6| STA.b [$C5],Y

|019BE8| LDA.w RoomDrawObjectData+6,X
|019BEB| STA.b [$CB],Y

|019BED| LDA.w RoomDrawObjectData+8,X
|019BF0| STA.b [$CE],Y

|019BF2| LDA.w RoomDrawObjectData+10,X
|019BF5| STA.b [$D1],Y

|019BF7| RTS

;===================================================================================================

RoomDraw_DamFloodGate:
|019BF8| LDA.w $0402
|019BFB| AND.w #$0800
|019BFE| BNE .draw_water

|019C00| LDA.w #$000A
|019C03| JSR RoomDraw_Nx4

|019C06| LDA.w #$000F
|019C09| STA.w $0470

|019C0C| LDA.b $08
|019C0E| STA.w $0472

|019C11| RTS

;---------------------------------------------------------------------------------------------------

.draw_water
|019C12| LDX.w #RoomDrawObjectData.obj13E8
|019C15| LDA.w #$000A
|019C18| JSR RoomDraw_Nx4

|019C1B| LDA.b $B7
|019C1D| PHA

|019C1E| LDA.b $B8
|019C20| PHA

|019C21| LDA.b $BA
|019C23| PHA

|019C24| LDA.w #^WaterOverlayData
|019C27| STA.b $B9

|019C29| LDA.w #WaterOverlayData
|019C2C| JSR RoomTag_OperateWaterFlooring

|019C2F| REP #$30

|019C31| PLA
|019C32| STA.b $BA

|019C34| PLA
|019C35| STA.b $B8

|019C37| PLA
|019C38| STA.b $B7

|019C3A| RTS

;===================================================================================================

RoomDraw_SomariaLine_increment_count:
|019C3B| INC.w $03F4

;===================================================================================================

RoomDraw_SomariaLine:
|019C3E| LDA.w RoomDrawObjectData+0,X
|019C41| STA.b [$BF],Y

|019C43| RTS

;===================================================================================================

RoomDraw_PrisonCell:
|019C44| TYX

|019C45| LDA.b $BF
|019C47| CMP.w #$4000
|019C4A| BNE .upper_layer

|019C4C| TXA
|019C4D| ORA.w #$2000
|019C50| TAX

.upper_layer
|019C51| PHX

|019C52| LDY.w #RoomDrawObjectData.obj1488

|019C55| LDA.w #$0005
|019C58| STA.b $0C

;---------------------------------------------------------------------------------------------------

.next
|019C5A| LDA.w RoomDrawObjectData+2,Y
|019C5D| STA.l $7E2004,X
|019C61| STA.l $7E2012,X

|019C65| LDA.w RoomDrawObjectData+4,Y
|019C68| STA.l $7E2084,X

|019C6C| ORA.w #$4000
|019C6F| STA.l $7E2092,X

|019C73| LDA.w RoomDrawObjectData+8,Y
|019C76| STA.l $7E2104,X

|019C7A| ORA.w #$4000
|019C7D| STA.l $7E2112,X

|019C81| LDA.w RoomDrawObjectData+10,Y
|019C84| STA.l $7E2184,X

|019C88| ORA.w #$4000
|019C8B| STA.l $7E2192,X

|019C8F| INX
|019C90| INX

|019C91| DEC.b $0C
|019C93| BNE .next

;---------------------------------------------------------------------------------------------------

|019C95| PLX

|019C96| LDA.w RoomDrawObjectData+0,Y
|019C99| STA.l $7E2000,X

|019C9D| ORA.w #$4000
|019CA0| STA.l $7E201E,X

|019CA4| LDA.w RoomDrawObjectData+2,Y
|019CA7| STA.l $7E2002,X
|019CAB| STA.l $7E200E,X
|019CAF| STA.l $7E2010,X
|019CB3| STA.l $7E201C,X

|019CB7| LDA.w RoomDrawObjectData+6,Y
|019CBA| STA.l $7E2102,X

|019CBE| ORA.w #$4000
|019CC1| STA.l $7E211C,X

|019CC5| RTS

;===================================================================================================

RoomDraw_RightwardsCannonHole4x3_1to16:
|019CC6| JSR RoomDraw_GetSize_1to16

|019CC9| LDA.w #$0002
|019CCC| JSR RoomDraw_1x3N_rightwards

|019CCF| DEC.b $B2
|019CD1| BEQ .skip

.next
|019CD3| PHX

|019CD4| LDA.w #$0002
|019CD7| JSR RoomDraw_1x3N_rightwards

|019CDA| PLX

|019CDB| DEC.b $B2
|019CDD| BNE .next

;---------------------------------------------------------------------------------------------------

.skip
|019CDF| TXA
|019CE0| CLC
|019CE1| ADC.w #$000C
|019CE4| TAX

|019CE5| LDA.w #$0002
|019CE8| JMP.w RoomDraw_1x3N_rightwards

;===================================================================================================

RoomDraw_DownwardsCannonHole3x4_1to16:
|019CEB| JSR RoomDraw_GetSize_1to16
|019CEE| JSR .draw_segment

|019CF1| DEC.b $B2
|019CF3| BEQ .skip

.next_segment
|019CF5| PHX

|019CF6| JSR .draw_segment

|019CF9| PLX

|019CFA| DEC.b $B2
|019CFC| BNE .next_segment

.skip
|019CFE| TXA
|019CFF| CLC
|019D00| ADC.w #$000C
|019D03| TAX

;---------------------------------------------------------------------------------------------------

.draw_segment
|019D04| LDA.w #$0002
|019D07| STA.b $0A

.next_segment_part
|019D09| LDA.w RoomDrawObjectData+0,X
|019D0C| STA.b [$BF],Y

|019D0E| LDA.w RoomDrawObjectData+2,X
|019D11| STA.b [$C2],Y

|019D13| LDA.w RoomDrawObjectData+4,X
|019D16| STA.b [$C5],Y

|019D18| INX ; +6
|019D19| INX
|019D1A| INX
|019D1B| INX
|019D1C| INX
|019D1D| INX

|019D1E| TYA
|019D1F| CLC
|019D20| ADC.w #$0080
|019D23| TAY

|019D24| DEC.b $0A
|019D26| BNE .next_segment_part

|019D28| RTS

;===================================================================================================

RoomDraw_EmptyWaterFace:
|019D29| LDA.b $AF
|019D2B| AND.w #$00FF
|019D2E| CMP.w #$001B ; ROOMTAG 1B
|019D31| BNE .no_water_tag

|019D33| LDA.b $A0
|019D35| ASL A
|019D36| TAX

|019D37| LDA.l $7EF000,X
|019D3B| AND.w #$0100
|019D3E| BNE RoomDraw_SpittingWaterFace

|019D40| LDX.w #RoomDrawObjectData.obj1614

;---------------------------------------------------------------------------------------------------

.no_water_tag
|019D43| SEP #$20

|019D45| LDA.b #$19 ; ROOMTAG 19
|019D47| CMP.b $AF
|019D49| BNE .still_no_water_tag

|019D4B| LDA.w $0403
|019D4E| AND.w DoorFlagMasks+1
|019D51| BNE RoomDraw_SpittingWaterFace

.still_no_water_tag
|019D53| REP #$20

|019D55| STY.w $047C

|019D58| LDA.w #$0003
|019D5B| BRA RoomDraw_WaterHoldingObject

;===================================================================================================

RoomDraw_SpittingWaterFace:
|019D5D| REP #$20

|019D5F| LDX.w #RoomDrawObjectData.obj162C
|019D62| LDA.w #$0005

|019D65| BRA RoomDraw_WaterHoldingObject

;===================================================================================================

RoomDraw_DrenchingWaterFace:
|019D67| LDA.w #$0007

|019D6A| BRA RoomDraw_WaterHoldingObject

;===================================================================================================
; Bowls can hold water!
;===================================================================================================
RoomDraw_TableBowl:
|019D6C| LDA.w #$0002

;===================================================================================================

RoomDraw_WaterHoldingObject:
|019D6F| STA.b $0E

.next
|019D71| LDA.w RoomDrawObjectData+0,X
|019D74| STA.b [$BF],Y

|019D76| LDA.w RoomDrawObjectData+2,X
|019D79| STA.b [$C2],Y

|019D7B| LDA.w RoomDrawObjectData+4,X
|019D7E| STA.b [$C5],Y

|019D80| LDA.w RoomDrawObjectData+6,X
|019D83| STA.b [$C8],Y

|019D85| TXA
|019D86| CLC
|019D87| ADC.w #$0008
|019D8A| TAX

|019D8B| TYA
|019D8C| CLC
|019D8D| ADC.w #$0080
|019D90| TAY

|019D91| DEC.b $0E
|019D93| BNE .next

|019D95| RTS

;===================================================================================================

RoomDraw_KholdstareShell:
|019D96| LDA.w $0402
|019D99| ASL A
|019D9A| BCS EXIT_019DD8

|019D9C| LDY.w #RoomDrawObjectData.obj1DFA
|019D9F| LDA.w #$000A

;===================================================================================================

RoomDraw_SomeBigDecors:
|019DA2| STA.b $0A

|019DA4| LDA.b $BF
|019DA6| CMP.w #$4000
|019DA9| BNE .upper_layer

|019DAB| LDA.b $08
|019DAD| ORA.w #$2000
|019DB0| STA.b $08

.upper_layer
|019DB2| LDA.w #$0008
|019DB5| STA.b $0C

;---------------------------------------------------------------------------------------------------

.next_super
|019DB7| LDA.b $0A
|019DB9| STA.b $0E

|019DBB| LDX.b $08

.next
|019DBD| LDA.w RoomDrawObjectData+0,Y
|019DC0| STA.l $7E2000,X

|019DC4| INY
|019DC5| INY

|019DC6| INX
|019DC7| INX

|019DC8| DEC.b $0E
|019DCA| BNE .next

|019DCC| LDA.b $08
|019DCE| CLC
|019DCF| ADC.w #$0080
|019DD2| STA.b $08

|019DD4| DEC.b $0C
|019DD6| BNE .next_super

;---------------------------------------------------------------------------------------------------

#EXIT_019DD8:
|019DD8| RTS

;===================================================================================================

RoomDraw_TrinexxShell:
|019DD9| LDA.w $0402
|019DDC| ASL A
|019DDD| BCS EXIT_019DD8

|019DDF| TXY

|019DE0| LDA.w #$000A
|019DE3| BRA RoomDraw_SomeBigDecors

;===================================================================================================

RoomDraw_LampCones:
|019DE5| LDY.w #RoomDrawObjectData.obj16DC
|019DE8| LDA.w #$0514
|019DEB| JSR RoomDraw_SingleLampCone

|019DEE| LDY.w #RoomDrawObjectData.obj17F6
|019DF1| LDA.w #$0554
|019DF4| JSR RoomDraw_SingleLampCone

|019DF7| LDY.w #RoomDrawObjectData.obj1914
|019DFA| LDA.w #$1514
|019DFD| JSR RoomDraw_SingleLampCone

|019E00| LDY.w #RoomDrawObjectData.obj1A2A
|019E03| LDA.w #$1554

;===================================================================================================

RoomDraw_SingleLampCone:
|019E06| STA.b $00

|019E08| LDA.w #$000C
|019E0B| STA.b $02

.next_super
|019E0D| LDA.w #$000C
|019E10| STA.b $0C

|019E12| LDX.b $00

.next
|019E14| LDA.w RoomDrawObjectData+0,Y
|019E17| STA.l $7E4000,X

|019E1B| INY
|019E1C| INY

|019E1D| INX
|019E1E| INX

|019E1F| DEC.b $0C
|019E21| BNE .next

|019E23| LDA.b $00
|019E25| CLC
|019E26| ADC.w #$0080
|019E29| STA.b $00

|019E2B| DEC.b $02
|019E2D| BNE .next_super

|019E2F| RTS

;===================================================================================================

RoomDraw_AgahnimsAltar:
|019E30| LDA.w #$000E
|019E33| STA.b $0E

|019E35| LDY.w #RoomDrawObjectData.obj1B4A
|019E38| LDX.b $08

.next
|019E3A| LDA.w RoomDrawObjectData+0,Y
|019E3D| STA.l $7E2000,X

|019E41| ORA.w #$4000
|019E44| STA.l $7E201A,X

|019E48| LDA.w RoomDrawObjectData+28,Y
|019E4B| STA.l $7E2002,X
|019E4F| STA.l $7E2004,X

|019E53| EOR.w #$4000
|019E56| STA.l $7E2016,X
|019E5A| STA.l $7E2018,X

|019E5E| LDA.w RoomDrawObjectData+56,Y
|019E61| STA.l $7E2006,X

|019E65| EOR.w #$4000
|019E68| STA.l $7E2014,X

|019E6C| LDA.w RoomDrawObjectData+84,Y
|019E6F| STA.l $7E2008,X

|019E73| EOR.w #$4000
|019E76| STA.l $7E2012,X

|019E7A| LDA.w RoomDrawObjectData+112,Y
|019E7D| STA.l $7E200A,X

|019E81| EOR.w #$4000
|019E84| STA.l $7E2010,X

|019E88| LDA.w RoomDrawObjectData+140,Y
|019E8B| STA.l $7E200C,X

|019E8F| EOR.w #$4000
|019E92| STA.l $7E200E,X

|019E96| TXA
|019E97| CLC
|019E98| ADC.w #$0080
|019E9B| TAX

|019E9C| INY
|019E9D| INY

|019E9E| DEC.b $0E
|019EA0| BNE .next

|019EA2| RTS

;===================================================================================================

RoomDraw_AgahnimsWindows:
|019EA3| LDA.w #$0006
|019EA6| STA.b $0E

|019EA8| LDY.w #RoomDrawObjectData.obj1BF2
|019EAB| LDX.b $08

.next_a
|019EAD| LDA.w RoomDrawObjectData+0,Y
|019EB0| STA.l $7E220E,X
|019EB4| STA.l $7E221A,X
|019EB8| STA.l $7E2226,X

|019EBC| LDA.w RoomDrawObjectData+2,Y
|019EBF| STA.l $7E228E,X
|019EC3| STA.l $7E229A,X
|019EC7| STA.l $7E22A6,X

|019ECB| LDA.w RoomDrawObjectData+4,Y
|019ECE| STA.l $7E230E,X
|019ED2| STA.l $7E231A,X
|019ED6| STA.l $7E2326,X

|019EDA| LDA.w RoomDrawObjectData+6,Y
|019EDD| STA.l $7E238E,X
|019EE1| STA.l $7E239A,X
|019EE5| STA.l $7E23A6,X

|019EE9| INY ; +8
|019EEA| INY
|019EEB| INY
|019EEC| INY
|019EED| INY
|019EEE| INY
|019EEF| INY
|019EF0| INY

|019EF1| INX
|019EF2| INX

|019EF3| DEC.b $0E
|019EF5| BNE .next_a

;---------------------------------------------------------------------------------------------------

|019EF7| LDA.w #$0005
|019EFA| STA.b $0E

|019EFC| LDY.w #RoomDrawObjectData.obj1C22
|019EFF| LDX.b $08

.next_b
|019F01| LDA.w RoomDrawObjectData+0,Y
|019F04| STA.l $7E2504,X
|019F08| STA.l $7E2486,X
|019F0C| STA.l $7E2408,X
|019F10| STA.l $7E238A,X
|019F14| STA.l $7E230C,X
|019F18| STA.l $7E228E,X
|019F1C| STA.l $7E2210,X

|019F20| ORA.w #$4000
|019F23| STA.l $7E222E,X
|019F27| STA.l $7E22B0,X
|019F2B| STA.l $7E2332,X
|019F2F| STA.l $7E23B4,X
|019F33| STA.l $7E2436,X
|019F37| STA.l $7E24B8,X
|019F3B| STA.l $7E253A,X

|019F3F| INY
|019F40| INY

|019F41| TXA
|019F42| CLC
|019F43| ADC.w #$0080
|019F46| TAX

|019F47| DEC.b $0E
|019F49| BNE .next_b

;---------------------------------------------------------------------------------------------------

|019F4B| LDA.w #$0006
|019F4E| STA.b $0E

|019F50| LDY.w #RoomDrawObjectData.obj1C2C
|019F53| LDX.b $08

.next_c
|019F55| LDA.w RoomDrawObjectData+0,Y
|019F58| STA.l $7E2584,X
|019F5C| STA.l $7E2884,X
|019F60| STA.l $7E2B84,X

|019F64| ORA.w #$4000
|019F67| STA.l $7E25BA,X
|019F6B| STA.l $7E28BA,X
|019F6F| STA.l $7E2BBA,X

|019F73| LDA.w RoomDrawObjectData+2,Y
|019F76| STA.l $7E2586,X
|019F7A| STA.l $7E2886,X
|019F7E| STA.l $7E2B86,X

|019F82| ORA.w #$4000
|019F85| STA.l $7E25B8,X
|019F89| STA.l $7E28B8,X
|019F8D| STA.l $7E2BB8,X

|019F91| LDA.w RoomDrawObjectData+4,Y
|019F94| STA.l $7E2588,X
|019F98| STA.l $7E2888,X
|019F9C| STA.l $7E2B88,X

|019FA0| ORA.w #$4000
|019FA3| STA.l $7E25B6,X
|019FA7| STA.l $7E28B6,X
|019FAB| STA.l $7E2BB6,X

|019FAF| LDA.w RoomDrawObjectData+6,Y
|019FB2| STA.l $7E258A,X
|019FB6| STA.l $7E288A,X
|019FBA| STA.l $7E2B8A,X

|019FBE| ORA.w #$4000
|019FC1| STA.l $7E25B4,X
|019FC5| STA.l $7E28B4,X
|019FC9| STA.l $7E2BB4,X

|019FCD| INY ; +8
|019FCE| INY
|019FCF| INY
|019FD0| INY
|019FD1| INY
|019FD2| INY
|019FD3| INY
|019FD4| INY

|019FD5| TXA
|019FD6| CLC
|019FD7| ADC.w #$0080
|019FDA| TAX

|019FDB| DEC.b $0E
|019FDD| BEQ .done_c

|019FDF| JMP.w .next_c

;---------------------------------------------------------------------------------------------------

.done_c
|019FE2| LDA.w #$0006
|019FE5| STA.b $0E

|019FE7| LDY.w #RoomDrawObjectData.obj1C5C
|019FEA| LDX.b $08

.next_d
|019FEC| LDA.w RoomDrawObjectData+0,Y
|019FEF| STA.l $7E2498,X
|019FF3| STA.l $7E24A4,X

|019FF7| LDA.w RoomDrawObjectData+12,Y
|019FFA| STA.l $7E2518,X
|019FFE| STA.l $7E2524,X

|01A002| INY
|01A003| INY

|01A004| INX
|01A005| INX

|01A006| DEC.b $0E
|01A008| BNE .next_d

;---------------------------------------------------------------------------------------------------

|01A00A| LDA.w #$0006
|01A00D| STA.b $0E

|01A00F| LDY.w #RoomDrawObjectData.obj1C74
|01A012| LDX.b $08

.next_e
|01A014| LDA.w RoomDrawObjectData+0,Y
|01A017| STA.l $7E270E,X
|01A01B| STA.l $7E2A0E,X

|01A01F| LDA.w RoomDrawObjectData+2,Y
|01A022| STA.l $7E2710,X
|01A026| STA.l $7E2A10,X

|01A02A| INY ; +4
|01A02B| INY
|01A02C| INY
|01A02D| INY

|01A02E| TXA
|01A02F| CLC
|01A030| ADC.w #$0080
|01A033| TAX

|01A034| DEC.b $0E
|01A036| BNE .next_e

;---------------------------------------------------------------------------------------------------

|01A038| LDA.w #$0005
|01A03B| STA.b $0E

|01A03D| LDY.w #RoomDrawObjectData.obj1C8C
|01A040| LDX.b $08

.next_f
|01A042| LDA.w RoomDrawObjectData+0,Y
|01A045| STA.l $7E248E,X

|01A049| LDA.w RoomDrawObjectData+2,Y
|01A04C| STA.l $7E250E,X

|01A050| LDA.w RoomDrawObjectData+4,Y
|01A053| STA.l $7E258E,X

|01A057| LDA.w RoomDrawObjectData+6,Y
|01A05A| STA.l $7E260E,X

|01A05E| LDA.w RoomDrawObjectData+8,Y
|01A061| STA.l $7E268E,X

|01A065| TYA
|01A066| CLC
|01A067| ADC.w #$000A
|01A06A| TAY

|01A06B| INX
|01A06C| INX

|01A06D| DEC.b $0E
|01A06F| BNE .next_f

;---------------------------------------------------------------------------------------------------

|01A071| LDA.w #$0004
|01A074| STA.b $0E

|01A076| LDX.b $08

.next_g
|01A078| LDA.l $7E2E1C,X
|01A07C| ORA.w #$2000
|01A07F| STA.l $7E2E1C,X

|01A083| LDA.l $7E2E9C,X
|01A087| ORA.w #$2000
|01A08A| STA.l $7E2E9C,X

|01A08E| INX
|01A08F| INX

|01A090| DEC.b $0E
|01A092| BNE .next_g

|01A094| RTS

;===================================================================================================

RoomDraw_FortuneTellerRoom:
|01A095| LDA.w #$0006
|01A098| STA.b $0E

|01A09A| LDY.w #RoomDrawObjectData.obj202E
|01A09D| LDX.b $08

.next_a
|01A09F| LDA.w RoomDrawObjectData+0,Y
|01A0A2| STA.l $7E2002,X
|01A0A6| STA.l $7E2004,X
|01A0AA| STA.l $7E2082,X
|01A0AE| STA.l $7E2084,X

|01A0B2| LDA.w RoomDrawObjectData+2,Y
|01A0B5| STA.l $7E2102,X

|01A0B9| ORA.w #$4000
|01A0BC| STA.l $7E2104,X

|01A0C0| INX ; +4
|01A0C1| INX
|01A0C2| INX
|01A0C3| INX

|01A0C4| DEC.b $0E
|01A0C6| BNE .next_a

;---------------------------------------------------------------------------------------------------

|01A0C8| LDA.w #$0003
|01A0CB| STA.b $0E

|01A0CD| LDX.b $08

.next_b
|01A0CF| LDA.w RoomDrawObjectData+4,Y
|01A0D2| STA.l $7E2180,X
|01A0D6| STA.l $7E2184,X
|01A0DA| STA.l $7E2194,X
|01A0DE| STA.l $7E2198,X

|01A0E2| ORA.w #$4000
|01A0E5| STA.l $7E2182,X
|01A0E9| STA.l $7E2186,X
|01A0ED| STA.l $7E2196,X
|01A0F1| STA.l $7E219A,X

|01A0F5| LDA.w RoomDrawObjectData+10,Y
|01A0F8| STA.l $7E2188,X
|01A0FC| STA.l $7E218C,X
|01A100| STA.l $7E2190,X

|01A104| ORA.w #$4000
|01A107| STA.l $7E218A,X
|01A10B| STA.l $7E218E,X
|01A10F| STA.l $7E2192,X

|01A113| INY
|01A114| INY

|01A115| TXA
|01A116| CLC
|01A117| ADC.w #$0080
|01A11A| TAX

|01A11B| DEC.b $0E
|01A11D| BNE .next_b

;---------------------------------------------------------------------------------------------------

|01A11F| LDX.b $08

|01A121| LDA.w RoomDrawObjectData+10,Y
|01A124| STA.l $7E2000,X
|01A128| STA.l $7E2080,X

|01A12C| ORA.w #$4000
|01A12F| STA.l $7E201A,X
|01A133| STA.l $7E209A,X

|01A137| LDA.w RoomDrawObjectData+12,Y
|01A13A| STA.l $7E2100,X

|01A13E| ORA.w #$4000
|01A141| STA.l $7E211A,X

;---------------------------------------------------------------------------------------------------

|01A145| LDA.w #$0004
|01A148| STA.b $0E

|01A14A| LDY.w #RoomDrawObjectData.obj202E
|01A14D| LDX.b $08

.next_c
|01A14F| LDA.w RoomDrawObjectData+20,Y
|01A152| STA.l $7E2506,X

|01A156| EOR.w #$4000
|01A159| STA.l $7E2514,X

|01A15D| LDA.w RoomDrawObjectData+28,Y
|01A160| STA.l $7E2508,X

|01A164| EOR.w #$4000
|01A167| STA.l $7E2512,X

|01A16B| LDA.w RoomDrawObjectData+36,Y
|01A16E| STA.l $7E250A,X

|01A172| EOR.w #$4000
|01A175| STA.l $7E2510,X

|01A179| LDA.w RoomDrawObjectData+44,Y
|01A17C| STA.l $7E250C,X

|01A180| EOR.w #$4000
|01A183| STA.l $7E250E,X

|01A187| INY
|01A188| INY

|01A189| TXA
|01A18A| CLC
|01A18B| ADC.w #$0080
|01A18E| TAX

|01A18F| DEC.b $0E
|01A191| BNE .next_c

|01A193| RTS

;===================================================================================================

RoomDraw_Utility3x5:
|01A194| LDA.w #$0003
|01A197| STA.b $0E

|01A199| LDA.w RoomDrawObjectData+0,X
|01A19C| STA.b [$BF],Y

|01A19E| LDA.w RoomDrawObjectData+2,X
|01A1A1| STA.b [$C2],Y

|01A1A3| LDA.w RoomDrawObjectData+4,X
|01A1A6| STA.b [$C5],Y

;---------------------------------------------------------------------------------------------------

.next
|01A1A8| LDA.w RoomDrawObjectData+6,X
|01A1AB| STA.b [$CB],Y

|01A1AD| LDA.w RoomDrawObjectData+8,X
|01A1B0| STA.b [$CE],Y

|01A1B2| LDA.w RoomDrawObjectData+10,X
|01A1B5| STA.b [$D1],Y

|01A1B7| TYA
|01A1B8| CLC
|01A1B9| ADC.w #$0080
|01A1BC| TAY

|01A1BD| DEC.b $0E
|01A1BF| BNE .next

;---------------------------------------------------------------------------------------------------

|01A1C1| LDA.w RoomDrawObjectData+12,X
|01A1C4| STA.b [$CB],Y

|01A1C6| LDA.w RoomDrawObjectData+14,X
|01A1C9| STA.b [$CE],Y

|01A1CB| LDA.w RoomDrawObjectData+16,X
|01A1CE| STA.b [$D1],Y

|01A1D0| RTS

;===================================================================================================

RoomDraw_VitreousGooGraphics:
|01A1D1| LDY.w #RoomDrawObjectData.obj20F6
|01A1D4| LDX.b $08

|01A1D6| LDA.w #$0016
|01A1D9| STA.b $0E

.next_a
|01A1DB| LDA.w RoomDrawObjectData+0,Y
|01A1DE| STA.l $7E4000,X

|01A1E2| LDA.w RoomDrawObjectData+2,Y
|01A1E5| STA.l $7E4080,X

|01A1E9| LDA.w RoomDrawObjectData+4,Y
|01A1EC| STA.l $7E4100,X

|01A1F0| LDA.w RoomDrawObjectData+6,Y
|01A1F3| STA.l $7E4180,X

|01A1F7| LDA.w RoomDrawObjectData+8,Y
|01A1FA| STA.l $7E4200,X

|01A1FE| LDA.w RoomDrawObjectData+10,Y
|01A201| STA.l $7E4280,X

|01A205| LDA.w RoomDrawObjectData+12,Y
|01A208| STA.l $7E4300,X

|01A20C| LDA.w RoomDrawObjectData+14,Y
|01A20F| STA.l $7E4380,X

|01A213| LDA.w RoomDrawObjectData+16,Y
|01A216| STA.l $7E4400,X

|01A21A| LDA.w RoomDrawObjectData+18,Y
|01A21D| STA.l $7E4480,X

|01A221| LDA.w RoomDrawObjectData+20,Y
|01A224| STA.l $7E4500,X

|01A228| TYA
|01A229| CLC
|01A22A| ADC.w #$0016
|01A22D| TAY

|01A22E| INX
|01A22F| INX

|01A230| DEC.b $0E
|01A232| BNE .next_a

;---------------------------------------------------------------------------------------------------

|01A234| LDY.w #RoomDrawObjectData.obj22DA
|01A237| LDX.b $08

|01A239| LDA.w #$0003
|01A23C| STA.b $0E

.next_b
|01A23E| LDA.w RoomDrawObjectData+0,Y
|01A241| STA.l $7E4592,X

|01A245| LDA.w RoomDrawObjectData+6,Y
|01A248| STA.l $7E4612,X

|01A24C| INY
|01A24D| INY

|01A24E| INX
|01A24F| INX

|01A250| DEC.b $0E
|01A252| BNE .next_b

|01A254| RTS

;===================================================================================================

RoomDraw_BG2MaskFull:
|01A255| STZ.b $0C

|01A257| LDX.w #RoomDrawObjectData.obj00E0
|01A25A| JMP.w RoomDraw_FloorChunks

;===================================================================================================

RoomDraw_AutoStairsNorthMultiLayerEG0:
|01A25D| PHX

|01A25E| LDX.w $043C

|01A261| TYA
|01A262| LSR A
|01A263| STA.w $06B8,X

|01A266| INX
|01A267| INX
|01A268| STX.w $043C

|01A26B| BRA RoomDraw_AutoStairsNorthMultiMain

;===================================================================================================

RoomDraw_AutoStairsNorthMultiLayer:
|01A26D| PHX

|01A26E| LDX.w $043E

|01A271| TYA
|01A272| LSR A
|01A273| STA.w $06B8,X

|01A276| INX
|01A277| INX
|01A278| STX.w $043E

;===================================================================================================

RoomDraw_AutoStairsNorthMultiMain:
|01A27B| STX.w $0446
|01A27E| STX.w $0448

|01A281| TYX

|01A282| PLY

;---------------------------------------------------------------------------------------------------

|01A283| LDA.w #$0004
|01A286| STA.b $0E

.next
|01A288| LDA.w RoomDrawObjectData+0,Y
|01A28B| STA.l $7E2000,X
|01A28F| STA.l $7E4000,X

|01A293| LDA.w RoomDrawObjectData+2,Y
|01A296| STA.l $7E2080,X
|01A29A| STA.l $7E4080,X

|01A29E| LDA.w RoomDrawObjectData+4,Y
|01A2A1| STA.l $7E2100,X
|01A2A5| STA.l $7E4100,X

|01A2A9| LDA.w RoomDrawObjectData+6,Y
|01A2AC| STA.l $7E2180,X
|01A2B0| STA.l $7E4180,X

|01A2B4| TYA
|01A2B5| CLC
|01A2B6| ADC.w #$0008
|01A2B9| TAY

|01A2BA| INX
|01A2BB| INX

|01A2BC| DEC.b $0E
|01A2BE| BNE .next

|01A2C0| RTS

;===================================================================================================

AutoStairsNorthMergedStart:
|01A2C1| STZ.w $0414

|01A2C4| LDX.w #RoomDrawObjectData.obj10C8

;===================================================================================================

RoomDraw_AutoStairsNorthMergedLayer:
|01A2C7| PHX

|01A2C8| LDX.w $0440

|01A2CB| TYA
|01A2CC| LSR A
|01A2CD| STA.w $06B8,X

|01A2D0| INX
|01A2D1| INX

|01A2D2| STX.w $0440
|01A2D5| STX.w $0446
|01A2D8| STX.w $0448

|01A2DB| PLX

|01A2DC| JMP.w RoomDraw_4x4

;===================================================================================================

RoomDraw_AutoStairsNorthWater:
; check for dam gate
|01A2DF| LDA.b $AF
|01A2E1| AND.w #$00FF
|01A2E4| CMP.w #$001B ; ROOMTAG 1B
|01A2E7| BNE .dont_check_room

|01A2E9| LDA.b $A0
|01A2EB| ASL A
|01A2EC| TAX

|01A2ED| LDA.l $7EF000,X
|01A2F1| AND.w #$0100
|01A2F4| BEQ AutoStairsNorthMergedStart

;---------------------------------------------------------------------------------------------------

.dont_check_room
|01A2F6| LDX.w $0442

|01A2F9| TYA
|01A2FA| LSR A
|01A2FB| STA.w $06B8,X

|01A2FE| INX
|01A2FF| INX
|01A300| STX.w $0442
|01A303| STX.w $0444

|01A306| LDX.w #RoomDrawObjectData.obj10C8
|01A309| JMP.w RoomDraw_4x4

;===================================================================================================

RoomDraw_AutoStairsSouthMultiLayerEG0:
|01A30C| PHX

|01A30D| LDX.w $049A

|01A310| TYA
|01A311| LSR A
|01A312| STA.w $06B8,X

|01A315| INX
|01A316| INX
|01A317| STX.w $049A

|01A31A| BRA RoomDraw_AutoStairsSouthMultiMain

;===================================================================================================

RoomDraw_AutoStairsSouthMultiLayer:
|01A31C| PHX

|01A31D| LDX.w $049C

|01A320| TYA
|01A321| LSR A
|01A322| STA.w $06EC,X

|01A325| INX
|01A326| INX
|01A327| STX.w $049C

;===================================================================================================

RoomDraw_AutoStairsSouthMultiMain:
|01A32A| TYX

|01A32B| PLY

|01A32C| LDA.w #$0004
|01A32F| STA.b $0E

.next
|01A331| LDA.w RoomDrawObjectData+0,Y
|01A334| STA.l $7E2000,X
|01A338| STA.l $7E4000,X

|01A33C| LDA.w RoomDrawObjectData+2,Y
|01A33F| STA.l $7E2080,X
|01A343| STA.l $7E4080,X

|01A347| LDA.w RoomDrawObjectData+4,Y
|01A34A| STA.l $7E2100,X
|01A34E| STA.l $7E4100,X

|01A352| LDA.w RoomDrawObjectData+6,Y
|01A355| STA.l $7E2180,X
|01A359| STA.l $7E4180,X

|01A35D| TYA
|01A35E| CLC
|01A35F| ADC.w #$0008
|01A362| TAY

|01A363| INX
|01A364| INX

|01A365| DEC.b $0E
|01A367| BNE .next

|01A369| RTS

;===================================================================================================

BecomeNormalSouthStairs:
|01A36A| STZ.w $0414

|01A36D| PLX

;===================================================================================================

RoomDraw_AutoStairsSouthMergedLayers:
|01A36E| PHX

|01A36F| LDX.w $049E

|01A372| TYA
|01A373| LSR A
|01A374| STA.w $06EC,X

|01A377| INX
|01A378| INX
|01A379| STX.w $049E

|01A37C| PLX

|01A37D| JMP.w RoomDraw_4x4

;===================================================================================================

RoomDraw_AutoStairsSouthWater:
|01A380| PHX

|01A381| LDA.b $AF
|01A383| AND.w #$00FF
|01A386| CMP.w #$001B ; ROOMTAG 1B
|01A389| BNE .not_dam_gate

|01A38B| LDA.b $A0
|01A38D| ASL A
|01A38E| TAX

|01A38F| LDA.l $7EF000,X
|01A393| AND.w #$0100
|01A396| BEQ BecomeNormalSouthStairs

; CGWSEL  : $02 - subscreen color, no clipping
; CGADSUB : $62 - half add math on CG0 and BG2
|01A398| LDA.w #$6202
|01A39B| STA.b $99

.not_dam_gate
|01A39D| LDX.w $04AE

|01A3A0| TYA
|01A3A1| LSR A
|01A3A2| STA.w $06EC,X

|01A3A5| INX
|01A3A6| INX
|01A3A7| STX.w $04AE

|01A3AA| PLX

|01A3AB| JMP.w RoomDraw_4x4

;===================================================================================================

RoomDraw_WaterLadderSouth:
|01A3AE| LDX.w $0446

|01A3B1| TYA
|01A3B2| LSR A
|01A3B3| STA.w $06B8,X

|01A3B6| INX
|01A3B7| INX

|01A3B8| STX.w $0446
|01A3BB| STX.w $0448

|01A3BE| TYX

|01A3BF| LDY.w #RoomDrawObjectData.obj1108

|01A3C2| LDA.w RoomDrawObjectData+0,Y
|01A3C5| STA.l $7E2000,X
|01A3C9| STA.l $7E4000,X

|01A3CD| LDA.w RoomDrawObjectData+2,Y
|01A3D0| STA.l $7E2002,X
|01A3D4| STA.l $7E4002,X

|01A3D8| LDA.w RoomDrawObjectData+4,Y
|01A3DB| STA.l $7E2004,X
|01A3DF| STA.l $7E4004,X

|01A3E3| LDA.w RoomDrawObjectData+6,Y
|01A3E6| STA.l $7E2006,X
|01A3EA| STA.l $7E4006,X

|01A3EE| LDA.w RoomDrawObjectData+8,Y
|01A3F1| STA.l $7E2080,X
|01A3F5| STA.l $7E4080,X

|01A3F9| LDA.w RoomDrawObjectData+10,Y
|01A3FC| STA.l $7E2082,X
|01A400| STA.l $7E4082,X

|01A404| LDA.w RoomDrawObjectData+12,Y
|01A407| STA.l $7E2084,X
|01A40B| STA.l $7E4084,X

|01A40F| LDA.w RoomDrawObjectData+14,Y
|01A412| STA.l $7E2086,X
|01A416| STA.l $7E4086,X

|01A41A| RTS

;===================================================================================================

RoomDraw_InterRoomFatStairsUp:
|01A41B| LDX.w $0438

|01A41E| TYA
|01A41F| LSR A
|01A420| STA.w $06B0,X

|01A423| LDA.b $BF
|01A425| CMP.w #$4000
|01A428| BNE .upper_layer

|01A42A| TYA
|01A42B| ORA.w #$2000
|01A42E| LSR A
|01A42F| STA.w $06B0,X

.upper_layer
|01A432| INX
|01A433| INX

|01A434| STX.w $0438

|01A437| STX.w $047E
|01A43A| STX.w $0482

|01A43D| STX.w $04A2
|01A440| STX.w $04A4

|01A443| STX.w $043A

|01A446| STX.w $0480
|01A449| STX.w $0484

|01A44C| STX.w $04A6
|01A44F| STX.w $04A8

|01A452| LDX.w #RoomDrawObjectData.obj1088
|01A455| JMP.w RoomDraw_4x4

;===================================================================================================

RoomDraw_InterRoomFatStairsDownA:
|01A458| LDX.w $043A

|01A45B| TYA
|01A45C| LSR A
|01A45D| STA.w $06B0,X

|01A460| LDA.b $BF
|01A462| CMP.w #$4000
|01A465| BNE .upper_layer

|01A467| TYA
|01A468| ORA.w #$2000
|01A46B| LSR A
|01A46C| STA.w $06B0,X

.upper_layer
|01A46F| INX
|01A470| INX

|01A471| STX.w $043A

|01A474| STX.w $0480
|01A477| STX.w $0484

|01A47A| STX.w $04A6
|01A47D| STX.w $04A8

|01A480| LDX.w #RoomDrawObjectData.obj10A8
|01A483| JMP.w RoomDraw_4x4

;===================================================================================================
; [USELESS] Literally identical to the above and only used in POD
;===================================================================================================
RoomDraw_InterRoomFatStairsDownB:
|01A486| LDX.w $043A

|01A489| TYA
|01A48A| LSR A
|01A48B| STA.w $06B0,X

|01A48E| LDA.b $BF
|01A490| CMP.w #$4000
|01A493| BNE .upper_layer

|01A495| TYA
|01A496| ORA.w #$2000
|01A499| LSR A
|01A49A| STA.w $06B0,X

.upper_layer
|01A49D| INX
|01A49E| INX

|01A49F| STX.w $043A

|01A4A2| STX.w $0480
|01A4A5| STX.w $0484

|01A4A8| STX.w $04A6
|01A4AB| STX.w $04A8

|01A4AE| LDX.w #RoomDrawObjectData.obj10A8
|01A4B1| JMP.w RoomDraw_4x4

;===================================================================================================

RoomDraw_SpiralStairsGoingUpUpper:
|01A4B4| LDX.w $047E

|01A4B7| TYA
|01A4B8| SEC
|01A4B9| SBC.w #$0080
|01A4BC| LSR A
|01A4BD| STA.w $06B0,X

|01A4C0| LDA.b $BF
|01A4C2| CMP.w #$4000
|01A4C5| BNE .upper_layer

|01A4C7| TYA
|01A4C8| SEC
|01A4C9| SBC.w #$0080
|01A4CC| ORA.w #$2000
|01A4CF| LSR A
|01A4D0| STA.w $06B0,X

.upper_layer
|01A4D3| INX
|01A4D4| INX

|01A4D5| STX.w $047E
|01A4D8| STX.w $0482

|01A4DB| STX.w $04A2
|01A4DE| STX.w $04A4

|01A4E1| STX.w $043A

|01A4E4| STX.w $0480
|01A4E7| STX.w $0484

|01A4EA| STX.w $04A6
|01A4ED| STX.w $04A8

|01A4F0| LDX.w #RoomDrawObjectData.obj1148
|01A4F3| BRA RoomDraw_SpiralStairsUpper

;===================================================================================================

RoomDraw_SpiralStairsGoingUpLower:
|01A4F5| LDX.w $0482

|01A4F8| TYA
|01A4F9| SEC
|01A4FA| SBC.w #$0080
|01A4FD| LSR A
|01A4FE| STA.w $06B0,X

|01A501| LDA.b $BF
|01A503| CMP.w #$4000
|01A506| BNE .upper_layer

|01A508| TYA
|01A509| SEC
|01A50A| SBC.w #$0080
|01A50D| ORA.w #$2000
|01A510| LSR A
|01A511| STA.w $06B0,X

.upper_layer
|01A514| INX
|01A515| INX

|01A516| STX.w $0482

|01A519| STX.w $04A2
|01A51C| STX.w $04A4

|01A51F| STX.w $043A

|01A522| STX.w $0480
|01A525| STX.w $0484

|01A528| STX.w $04A6
|01A52B| STX.w $04A8

|01A52E| LDX.w #RoomDrawObjectData.obj1178
|01A531| BRA RoomDraw_SpiralStairsGoingDownLower_continue

;===================================================================================================

RoomDraw_SpiralStairsGoingDownUpper:
|01A533| LDX.w $0480

|01A536| TYA
|01A537| SEC
|01A538| SBC.w #$0080
|01A53B| LSR A
|01A53C| STA.w $06B0,X

|01A53F| LDA.b $BF
|01A541| CMP.w #$4000
|01A544| BNE .upper_layer

|01A546| TYA
|01A547| SEC
|01A548| SBC.w #$0080
|01A54B| ORA.w #$2000
|01A54E| LSR A
|01A54F| STA.w $06B0,X

.upper_layer
|01A552| INX
|01A553| INX

|01A554| STX.w $0480
|01A557| STX.w $0484

|01A55A| STX.w $04A6
|01A55D| STX.w $04A8

|01A560| LDX.w #RoomDrawObjectData.obj1160

;===================================================================================================

RoomDraw_SpiralStairsUpper:
|01A563| LDA.w #$0004
|01A566| JSR RoomDraw_1x3N_rightwards

|01A569| LDX.b $08
|01A56B| DEX
|01A56C| DEX

|01A56D| LDA.l $7E2000,X
|01A571| ORA.w #$2000
|01A574| STA.l $7E2000,X

|01A578| LDA.l $7E200A,X
|01A57C| ORA.w #$2000
|01A57F| STA.l $7E200A,X

|01A583| RTS

;===================================================================================================

RoomDraw_SpiralStairsGoingDownLower:
|01A584| LDX.w $0484

|01A587| TYA
|01A588| SEC
|01A589| SBC.w #$0080
|01A58C| LSR A
|01A58D| STA.w $06B0,X

|01A590| LDA.b $BF
|01A592| CMP.w #$4000
|01A595| BNE .upper_layer

|01A597| TYA
|01A598| SEC
|01A599| SBC.w #$0080
|01A59C| ORA.w #$2000
|01A59F| LSR A
|01A5A0| STA.w $06B0,X

.upper_layer
|01A5A3| INX
|01A5A4| INX

|01A5A5| STX.w $0484

|01A5A8| STX.w $04A6
|01A5AB| STX.w $04A8

|01A5AE| LDX.w #RoomDrawObjectData.obj1190

;---------------------------------------------------------------------------------------------------

#RoomDraw_SpiralStairsGoingDownLower_continue:
|01A5B1| LDA.w #$0004
|01A5B4| JSR RoomDraw_1x3N_rightwards

|01A5B7| LDX.b $08
|01A5B9| DEX
|01A5BA| DEX

|01A5BB| LDA.l $7E4000,X
|01A5BF| ORA.w #$2000
|01A5C2| STA.l $7E4000,X

|01A5C6| LDA.l $7E400A,X
|01A5CA| ORA.w #$2000
|01A5CD| STA.l $7E400A,X

|01A5D1| RTS

;===================================================================================================

RoomDraw_StraightInterroomStairsGoingUpNorthUpper:
|01A5D2| PHX

|01A5D3| LDX.w $04A2

|01A5D6| TYA
|01A5D7| LSR A
|01A5D8| STA.w $06B0,X

|01A5DB| INX
|01A5DC| INX

|01A5DD| STX.w $04A2
|01A5E0| STX.w $04A4

|01A5E3| STX.w $043A

|01A5E6| STX.w $0480
|01A5E9| STX.w $0484

|01A5EC| STX.w $04A6
|01A5EF| STX.w $04A8

|01A5F2| BRA RoomDraw_StraightInterroomStairsUpper

;===================================================================================================

RoomDraw_StraightInterroomStairsGoingDownNorthUpper:
|01A5F4| PHX

|01A5F5| LDX.w $04A6

|01A5F8| TYA
|01A5F9| LSR A
|01A5FA| STA.w $06B0,X

|01A5FD| INX
|01A5FE| INX
|01A5FF| STX.w $04A6
|01A602| STX.w $04A8

|01A605| BRA RoomDraw_StraightInterroomStairsUpper

;===================================================================================================

RoomDraw_StraightInterroomStairsGoingUpSouthUpper:
|01A607| PHX

|01A608| LDX.w $04A4

|01A60B| TYA
|01A60C| LSR A
|01A60D| STA.w $06B0,X

|01A610| INX
|01A611| INX
|01A612| STX.w $04A4
|01A615| STX.w $043A

|01A618| STX.w $0480
|01A61B| STX.w $0484

|01A61E| STX.w $04A6
|01A621| STX.w $04A8

|01A624| BRA RoomDraw_StraightInterroomStairsUpper

;===================================================================================================

RoomDraw_StraightInterroomStairsGoingDownSouthUpper:
|01A626| PHX

|01A627| LDX.w $04A8

|01A62A| TYA
|01A62B| LSR A
|01A62C| STA.w $06B0,X

|01A62F| INX
|01A630| INX
|01A631| STX.w $04A8

;===================================================================================================

RoomDraw_StraightInterroomStairsUpper:
|01A634| TYX

|01A635| PLY

|01A636| LDA.w #$0004
|01A639| STA.b $0E

.next
|01A63B| LDA.w RoomDrawObjectData+0,Y
|01A63E| STA.l $7E2000,X

|01A642| LDA.w RoomDrawObjectData+2,Y
|01A645| STA.l $7E2080,X

|01A649| LDA.w RoomDrawObjectData+4,Y
|01A64C| STA.l $7E2100,X

|01A650| LDA.w RoomDrawObjectData+6,Y
|01A653| STA.l $7E2180,X

|01A657| TYA
|01A658| CLC
|01A659| ADC.w #$0008
|01A65C| TAY

|01A65D| INX
|01A65E| INX

|01A65F| DEC.b $0E
|01A661| BNE .next

|01A663| RTS

;===================================================================================================

RoomDraw_StraightInterroomStairsGoingUpNorthLower:
|01A664| PHX

|01A665| LDX.w $04A2

|01A668| TYA
|01A669| LSR A
|01A66A| STA.w $06B0,X

|01A66D| LDA.b $BF
|01A66F| CMP.w #$4000
|01A672| BNE .upper_layer

|01A674| TYA
|01A675| ORA.w #$2000
|01A678| LSR A
|01A679| STA.w $06B0,X

.upper_layer
|01A67C| INX
|01A67D| INX

|01A67E| STX.w $04A2
|01A681| STX.w $04A4

|01A684| STX.w $043A

|01A687| STX.w $0480
|01A68A| STX.w $0484

|01A68D| STX.w $04A6
|01A690| STX.w $04A8

|01A693| BRA RoomDraw_StraightInterroomStairsLower

;===================================================================================================

RoomDraw_StraightInterroomStairsGoingDownNorthLower:
|01A695| PHX

|01A696| LDX.w $04A6

|01A699| TYA
|01A69A| LSR A
|01A69B| STA.w $06B0,X

|01A69E| LDA.b $BF
|01A6A0| CMP.w #$4000
|01A6A3| BNE .upper_layer

|01A6A5| TYA
|01A6A6| ORA.w #$2000
|01A6A9| LSR A
|01A6AA| STA.w $06B0,X

.upper_layer
|01A6AD| INX
|01A6AE| INX
|01A6AF| STX.w $04A6
|01A6B2| STX.w $04A8

;===================================================================================================

RoomDraw_StraightInterroomStairsLower:
|01A6B5| TYX

|01A6B6| PLY

|01A6B7| LDA.w #$0004
|01A6BA| STA.b $0E

.next
|01A6BC| LDA.w RoomDrawObjectData+0,Y
|01A6BF| STA.l $7E2000,X
|01A6C3| STA.l $7E4000,X

|01A6C7| LDA.w RoomDrawObjectData+2,Y
|01A6CA| STA.l $7E4080,X

|01A6CE| LDA.w RoomDrawObjectData+4,Y
|01A6D1| STA.l $7E4100,X

|01A6D5| LDA.w RoomDrawObjectData+6,Y
|01A6D8| STA.l $7E4180,X

|01A6DC| TYA
|01A6DD| CLC
|01A6DE| ADC.w #$0008
|01A6E1| TAY

|01A6E2| INX
|01A6E3| INX

|01A6E4| DEC.b $0E
|01A6E6| BNE .next

;---------------------------------------------------------------------------------------------------

|01A6E8| LDA.b $08
|01A6EA| SEC
|01A6EB| SBC.w #$0200

;===================================================================================================

StraightInterroomStairsLower_finish_up:
|01A6EE| TAX

|01A6EF| LDA.l $7E2000,X
|01A6F3| ORA.w #$2000
|01A6F6| STA.l $7E2000,X

|01A6FA| LDA.l $7E2080,X
|01A6FE| ORA.w #$2000
|01A701| STA.l $7E2080,X

|01A705| LDA.l $7E2100,X
|01A709| ORA.w #$2000
|01A70C| STA.l $7E2100,X

|01A710| LDA.l $7E2180,X
|01A714| ORA.w #$2000
|01A717| STA.l $7E2180,X

|01A71B| RTS

;===================================================================================================

RoomDraw_StraightInterroomStairsGoingUpSouthLower:
|01A71C| PHX

|01A71D| LDX.w $04A4

|01A720| TYA
|01A721| LSR A
|01A722| STA.w $06B0,X

|01A725| LDA.b $BF
|01A727| CMP.w #$4000
|01A72A| BNE .upper_layer

|01A72C| TYA
|01A72D| ORA.w #$2000
|01A730| LSR A
|01A731| STA.w $06B0,X

.upper_layer
|01A734| INX
|01A735| INX

|01A736| STX.w $04A4

|01A739| STX.w $043A

|01A73C| STX.w $0480
|01A73F| STX.w $0484

|01A742| STX.w $04A6
|01A745| STX.w $04A8

|01A748| BRA StraightInterroomStairsLower_continue

;===================================================================================================

RoomDraw_StraightInterroomStairsGoingDownSouthLower:
|01A74A| PHX

|01A74B| LDX.w $04A8

|01A74E| TYA
|01A74F| LSR A
|01A750| STA.w $06B0,X

|01A753| LDA.b $BF
|01A755| CMP.w #$4000
|01A758| BNE .upper_layer

|01A75A| TYA
|01A75B| ORA.w #$2000
|01A75E| LSR A
|01A75F| STA.w $06B0,X

.upper_layer
|01A762| INX
|01A763| INX
|01A764| STX.w $04A8

;===================================================================================================

StraightInterroomStairsLower_continue:
|01A767| TYX

|01A768| PLY

|01A769| LDA.w #$0004
|01A76C| STA.b $0E

.next
|01A76E| LDA.w RoomDrawObjectData+0,Y
|01A771| STA.l $7E4000,X

|01A775| LDA.w RoomDrawObjectData+2,Y
|01A778| STA.l $7E4080,X

|01A77C| LDA.w RoomDrawObjectData+4,Y
|01A77F| STA.l $7E4100,X

|01A783| LDA.w RoomDrawObjectData+6,Y
|01A786| STA.l $7E2180,X
|01A78A| STA.l $7E4180,X

|01A78E| TYA
|01A78F| CLC
|01A790| ADC.w #$0008
|01A793| TAY

|01A794| INX
|01A795| INX

|01A796| DEC.b $0E
|01A798| BNE .next

;---------------------------------------------------------------------------------------------------

|01A79A| LDA.b $08
|01A79C| CLC
|01A79D| ADC.w #$0200

|01A7A0| JMP.w StraightInterroomStairsLower_finish_up

;===================================================================================================

RoomDraw_ArcheryGameTargetDoor:
|01A7A3| LDA.w #$0003
|01A7A6| JSR RoomDraw_1x3N_rightwards

|01A7A9| LDA.b $08
|01A7AB| CLC
|01A7AC| ADC.w #$0180
|01A7AF| TAY

|01A7B0| LDA.w #$0003
|01A7B3| JMP.w RoomDraw_1x3N_rightwards

;===================================================================================================

RoomDraw_LightBeamOnFloor:
|01A7B6| JSR RoomDraw_4x4

|01A7B9| LDA.b $08
|01A7BB| CLC
|01A7BC| ADC.w #$0100
|01A7BF| TAY

|01A7C0| LDX.w #RoomDrawObjectData.obj2376
|01A7C3| JSR RoomDraw_4x4

|01A7C6| LDA.b $08
|01A7C8| CLC
|01A7C9| ADC.w #$0300
|01A7CC| TAY

|01A7CD| LDX.w #RoomDrawObjectData.obj2396
|01A7D0| JMP.w RoomDraw_4x4

;===================================================================================================

RoomDraw_BigLightBeamOnFloor:
|01A7D3| LDA.l $7EF0CA
|01A7D7| AND.w #$0100
|01A7DA| BEQ EXIT_01A7EF

;===================================================================================================

RoomDraw_FloorLight:
|01A7DC| JSR RoomDraw_4x4
|01A7DF| JSR RoomDraw_4x4

|01A7E2| LDA.b $08
|01A7E4| CLC
|01A7E5| ADC.w #$0200
|01A7E8| TAY

|01A7E9| JSR RoomDraw_4x4
|01A7EC| JSR RoomDraw_4x4

;---------------------------------------------------------------------------------------------------

#EXIT_01A7EF:
|01A7EF| RTS

;===================================================================================================

RoomDraw_GanonTriforceFloorDecor:
|01A7F0| JSR RoomDraw_4x4

|01A7F3| LDA.b $08
|01A7F5| CLC
|01A7F6| ADC.w #$01FC
|01A7F9| TAY

|01A7FA| PHX

|01A7FB| JSR RoomDraw_4x4

|01A7FE| PLX

|01A7FF| LDA.b $08
|01A801| CLC
|01A802| ADC.w #$0204
|01A805| TAY

|01A806| JMP.w RoomDraw_4x4

;===================================================================================================

RoomDraw_VitreousGooDamage:
|01A809| LDA.w #$0005
|01A80C| JSR RoomDraw_A_Many32x32Blocks

|01A80F| LDA.b $08
|01A811| CLC
|01A812| ADC.w #$0200
|01A815| TAY

|01A816| LDA.w #$0005
|01A819| JMP.w RoomDraw_A_Many32x32Blocks

;===================================================================================================

RoomDraw_Door_North:
|01A81C| LDY.w DoorTilemapPositions_NorthWall,X
|01A81F| STY.b $08

|01A821| CMP.w #$0030 ; DOORTYPE 30
|01A824| BNE .not_exploding_wall

|01A826| JMP.w RoomDraw_Door_ExplodingWall

;---------------------------------------------------------------------------------------------------

.not_exploding_wall
|01A829| CMP.w #$0016 ; DOORTYPE 16
|01A82C| BNE .not_to_layer2_door

|01A82E| TYA
|01A82F| SEC
|01A830| SBC.w #$00FE

|01A833| JMP.w RoomDraw_MarkLayerToggleDoor

;---------------------------------------------------------------------------------------------------

.not_to_layer2_door
|01A836| CMP.w #$0032 ; DOORTYPE 32
|01A839| BNE .not_curtain_door

|01A83B| JMP.w RoomDraw_NorthCurtainDoor

;---------------------------------------------------------------------------------------------------

.not_curtain_door
|01A83E| CMP.w #$0006 ; DOORTYPE 06
|01A841| BNE .not_lower_layer_door_1

|01A843| JMP.w RoomDraw_MakeDoorHighPriorityLowerLayer_North

;---------------------------------------------------------------------------------------------------

.not_lower_layer_door_1
|01A846| CMP.w #$0014 ; DOORTYPE 14
|01A849| BNE .not_dungeon_swap_door

|01A84B| TYA
|01A84C| SEC
|01A84D| SBC.w #$00FE

|01A850| JMP.w RoomDraw_MarkDungeonToggleDoor

;---------------------------------------------------------------------------------------------------

.not_dungeon_swap_door
|01A853| CMP.w #$0002 ; DOORTYPE 02
|01A856| BNE .not_lower_layer_door_2

|01A858| TYA
|01A859| AND.w #$F07F
|01A85C| JSR MakeDoorPartsHighPriority_Vertical

|01A85F| JMP.w RoomDraw_NormalRangedDoors_North

;---------------------------------------------------------------------------------------------------

.not_lower_layer_door_2
|01A862| CMP.w #$0012 ; DOORTYPE 12
|01A865| BNE .not_exit_modifier

|01A867| LDX.w $19E0

|01A86A| TYA
|01A86B| STA.w $19E2,X

|01A86E| INX
|01A86F| INX
|01A870| STX.w $19E0

|01A873| RTS

;---------------------------------------------------------------------------------------------------

.not_exit_modifier
|01A874| CMP.w #$0008 ; DOORTYPE 08
|01A877| BNE .not_waterfall_door

|01A879| JSR RoomDraw_NormalRangedDoors_North
|01A87C| BRA RoomDraw_ChangeTilemapAddressToLowerLayer

;---------------------------------------------------------------------------------------------------

.not_waterfall_door
|01A87E| CMP.w #$0020 ; DOORTYPE 20
|01A881| BEQ .key_stairs

|01A883| CMP.w #$0022 ; DOORTYPE 22
|01A886| BEQ .key_stairs

|01A888| CMP.w #$0024 ; DOORTYPE 24
|01A88B| BEQ .key_stairs

|01A88D| CMP.w #$0026 ; DOORTYPE 26
|01A890| BNE .not_key_stairs

.key_stairs
|01A892| LDX.w $0460

|01A895| LDA.w #$0000
|01A898| STA.w $19C0,X

|01A89B| TYA
|01A89C| STA.w $19A0,X

|01A89F| TXA
|01A8A0| LSR A
|01A8A1| XBA
|01A8A2| ORA.b $04
|01A8A4| STA.w $1980,X

|01A8A7| TXA
|01A8A8| AND.w #$000F
|01A8AB| TAY

|01A8AC| LDA.w BitMasks,Y

|01A8AF| LDY.b $08
|01A8B1| AND.w $068C
|01A8B4| BEQ .not_open

|01A8B6| INX
|01A8B7| INX
|01A8B8| STX.w $0460

|01A8BB| RTS

;---------------------------------------------------------------------------------------------------

.not_open
|01A8BC| LDA.b $04
|01A8BE| CMP.w #$0024 ; DOORTYPE 24
|01A8C1| BCC RoomDraw_OneSidedShutters_North

|01A8C3| STY.b $08

|01A8C5| LDX.w $0460

|01A8C8| LDA.w #$0000
|01A8CB| JSR FlagDoorsAndGetFinalType

|01A8CE| LDA.w DoorGFXDataOffset_North,Y
|01A8D1| TAY

|01A8D2| LDX.b $08

|01A8D4| LDA.w #$0004
|01A8D7| STA.b $0E

.next
|01A8D9| LDA.w RoomDrawObjectData+0,Y
|01A8DC| STA.l $7E4000,X

|01A8E0| LDA.w RoomDrawObjectData+2,Y
|01A8E3| STA.l $7E4080,X

|01A8E7| LDA.w RoomDrawObjectData+4,Y
|01A8EA| STA.l $7E4100,X

|01A8EE| TYA
|01A8EF| CLC
|01A8F0| ADC.w #$0006
|01A8F3| TAY

|01A8F4| INX
|01A8F5| INX

|01A8F6| DEC.b $0E
|01A8F8| BNE .next

;===================================================================================================

#RoomDraw_ChangeTilemapAddressToLowerLayer:
|01A8FA| LDX.w $0460

|01A8FD| LDA.w $199E,X
|01A900| ORA.w #$2000
|01A903| STA.w $199E,X

|01A906| RTS

;===================================================================================================

.not_key_stairs
|01A907| CMP.w #$0040 ; DOORTYPE 40
|01A90A| BCC RoomDraw_NormalRangedDoors_North

|01A90C| JMP.w RoomDraw_HighRangeDoor_North

;===================================================================================================

RoomDraw_NormalRangedDoors_North:
|01A90F| LDX.b $02
|01A911| CPX.w #$000C
|01A914| BCC RoomDraw_OneSidedShutters_North

|01A916| PHY

|01A917| LDA.w $0460
|01A91A| PHA

|01A91B| ORA.w #$0010
|01A91E| STA.w $0460

|01A921| LDY.w DoorTilemapPositions_NorthMiddle,X

|01A924| LDA.b $04
|01A926| JSR RoomDraw_CheckIfLowerLayerDoors_Vertical

|01A929| PLA
|01A92A| STA.w $0460

|01A92D| PLY

|01A92E| LDA.b $04
|01A930| STA.b $0A

;---------------------------------------------------------------------------------------------------

RoomDraw_OneSidedShutters_North:
|01A932| STY.b $08

|01A934| LDX.w $0460
|01A937| LDA.w #$0000
|01A93A| JSR FlagDoorsAndGetFinalType
|01A93D| BCC .exit

|01A93F| LDA.w #$0018 ; DOORTYPE 18
|01A942| CPY.w #$0036 ; DOORTYPE 36
|01A945| BEQ .onesided_shutter

|01A947| LDA.w #$0000 ; DOORTYPE 00
|01A94A| CPY.w #$0038 ; DOORTYPE 38
|01A94D| BNE .not_onesided_shutter

.onesided_shutter
|01A94F| STA.b $0E

|01A951| LDA.w $197E,X
|01A954| AND.w #$FF00
|01A957| ORA.b $0E
|01A959| STA.w $197E,X

|01A95C| LDY.b $0E

;---------------------------------------------------------------------------------------------------

.not_onesided_shutter
|01A95E| LDX.w DoorGFXDataOffset_North,Y

|01A961| LDY.b $08

|01A963| LDA.w #$0004
|01A966| STA.b $0E

.next
|01A968| LDA.w RoomDrawObjectData+0,X
|01A96B| STA.b [$BF],Y

|01A96D| LDA.w RoomDrawObjectData+2,X
|01A970| STA.b [$CB],Y

|01A972| LDA.w RoomDrawObjectData+4,X
|01A975| STA.b [$D7],Y

|01A977| TXA
|01A978| CLC
|01A979| ADC.w #$0006
|01A97C| TAX

|01A97D| INY
|01A97E| INY

|01A97F| DEC.b $0E
|01A981| BNE .next

.exit
|01A983| RTS

;===================================================================================================

RoomDraw_Door_South:
|01A984| LDY.w DoorTilemapPositions_SouthMiddle,X
|01A987| STY.b $08

|01A989| CMP.w #$0016 ; DOORTYPE 16
|01A98C| BNE .not_to_layer2_door

|01A98E| TYA
|01A98F| CLC
|01A990| ADC.w #$0202

|01A993| JMP.w RoomDraw_MarkLayerToggleDoor

;---------------------------------------------------------------------------------------------------

.not_to_layer2_door
|01A996| CMP.w #$0006 ; DOORTYPE 06
|01A999| BNE .not_lower_layer_door_1

|01A99B| JMP.w RoomDraw_MakeDoorHighPriorityLowerLayer_South

;---------------------------------------------------------------------------------------------------

.not_lower_layer_door_1
|01A99E| CMP.w #$0014 ; DOORTYPE 14
|01A9A1| BNE .not_dungeon_swap_door

|01A9A3| TYA
|01A9A4| CLC
|01A9A5| ADC.w #$0202

|01A9A8| JMP.w RoomDraw_MarkDungeonToggleDoor

;---------------------------------------------------------------------------------------------------

.not_dungeon_swap_door
|01A9AB| CMP.w #$0012 ; DOORTYPE 12
|01A9AE| BNE .not_exit_modifier

|01A9B0| LDX.w $19E0

|01A9B3| TYA
|01A9B4| STA.w $19E2,X

|01A9B7| INX
|01A9B8| INX

|01A9B9| STX.w $19E0

|01A9BC| RTS

;---------------------------------------------------------------------------------------------------

.not_exit_modifier
|01A9BD| CMP.w #$0040 ; DOORTYPE 40
|01A9C0| BCC RoomDraw_NormalRangedDoors_South

|01A9C2| JMP.w RoomDraw_OneSidedLowerShutters_South

;---------------------------------------------------------------------------------------------------

RoomDraw_NormalRangedDoors_South:
|01A9C5| CMP.w #$000A ; DOORTYPE 0A
|01A9C8| BNE .not_fancy_dungeon_exit

|01A9CA| LDX.w $0460
|01A9CD| LDA.w #$0001
|01A9D0| JSR FlagDoorsAndGetFinalType

|01A9D3| LDA.b $08
|01A9D5| SEC
|01A9D6| SBC.w #$0206
|01A9D9| STA.b $08

|01A9DB| LDY.w #RoomDrawObjectData.obj2656
|01A9DE| LDA.w #$000A
|01A9E1| JMP.w RoomDraw_SomeBigDecors

;---------------------------------------------------------------------------------------------------

.not_fancy_dungeon_exit
|01A9E4| CMP.w #$000C ; DOORTYPE 0C
|01A9E7| BNE .not_lower_layer_fancy_dungeon_exit

|01A9E9| TYA
|01A9EA| ORA.w #$2000
|01A9ED| STA.b $08

|01A9EF| TAY

|01A9F0| LDX.w $0460
|01A9F3| LDA.w #$0001
|01A9F6| JSR FlagDoorsAndGetFinalType

|01A9F9| LDA.b $08
|01A9FB| SEC
|01A9FC| SBC.w #$0206
|01A9FF| STA.b $08

|01AA01| LDY.w #RoomDrawObjectData.obj2656
|01AA04| LDA.w #$000A
|01AA07| JSR RoomDraw_SomeBigDecors

|01AA0A| LDA.b $08
|01AA0C| SEC
|01AA0D| SBC.w #$2080
|01AA10| TAX

;---------------------------------------------------------------------------------------------------

|01AA11| LDY.w #$000A

.next
|01AA14| LDA.l $7E4000,X
|01AA18| ORA.w #$2000
|01AA1B| STA.l $7E2000,X

|01AA1F| INX
|01AA20| INX

|01AA21| DEY
|01AA22| BNE .next

|01AA24| RTS

;---------------------------------------------------------------------------------------------------

.not_lower_layer_fancy_dungeon_exit
|01AA25| CMP.w #$000E ; DOORTYPE 0E
|01AA28| BEQ RoomDraw_CaveExitLight

|01AA2A| CMP.w #$0010 ; DOORTYPE 10
|01AA2D| BNE RoomDraw_CheckIfExitDoor

;===================================================================================================

RoomDraw_HighPriorityExitLight:
|01AA2F| TYA
|01AA30| CLC
|01AA31| ADC.w #$0200
|01AA34| JSR MakeDoorPartsHighPriority_Vertical

;===================================================================================================

RoomDraw_CaveExitLight:
|01AA37| LDX.w $0460
|01AA3A| LDA.w #$0001
|01AA3D| JSR FlagDoorsAndGetFinalType

|01AA40| LDY.b $08

|01AA42| LDX.w #RoomDrawObjectData.obj26F6
|01AA45| LDA.w #$000A
|01AA48| JMP.w RoomDraw_4x4

;===================================================================================================

RoomDraw_CheckIfExitDoor:
|01AA4B| CMP.w #$0004 ; DOORTYPE 04
|01AA4E| BNE RoomDraw_CheckIfLowerLayerDoors_Vertical

|01AA50| TYA
|01AA51| PHY

|01AA52| ORA.w #$2000
|01AA55| STA.b $08

|01AA57| TAY

|01AA58| JSR RoomDraw_HighPriorityExitLight

|01AA5B| PLA
|01AA5C| CLC
|01AA5D| ADC.w #$0180
|01AA60| TAX

|01AA61| LDY.w #$0004
|01AA64| BRA RoomDraw_NormalRangedDoors_South.next

;===================================================================================================

RoomDraw_CheckIfLowerLayerDoors_Vertical:
|01AA66| CMP.w #$0002 ; DOORTYPE 02
|01AA69| BNE .not_lower_layer

|01AA6B| TYA
|01AA6C| CLC
|01AA6D| ADC.w #$0200
|01AA70| JSR MakeDoorPartsHighPriority_Vertical

|01AA73| BRA RoomDraw_OneSidedShutters_South

;---------------------------------------------------------------------------------------------------

.not_lower_layer
|01AA75| CMP.w #$0008 ; DOORTYPE 08
|01AA78| BNE RoomDraw_OneSidedShutters_South

|01AA7A| JSR RoomDraw_OneSidedShutters_South
|01AA7D| JMP.w RoomDraw_ChangeTilemapAddressToLowerLayer

;===================================================================================================

RoomDraw_OneSidedShutters_South:
|01AA80| STY.b $08

|01AA82| LDX.w $0460

|01AA85| LDA.w #$0001
|01AA88| JSR FlagDoorsAndGetFinalType
|01AA8B| BCC .exit

|01AA8D| LDA.w #$0000 ; DOORTYPE 00
|01AA90| CPY.w #$001E ; DOORTYPE 1E
|01AA93| BEQ .onesided_shutter_or_big_key_door

|01AA95| CPY.w #$0036 ; DOORTYPE 36
|01AA98| BEQ .onesided_shutter_or_big_key_door

|01AA9A| LDA.w #$0018 ; DOORTYPE 18
|01AA9D| CPY.w #$0038 ; DOORTYPE 38
|01AAA0| BNE .not_onesided_shutter

.onesided_shutter_or_big_key_door
|01AAA2| STA.b $0E

|01AAA4| LDA.w $197E,X
|01AAA7| AND.w #$FF00
|01AAAA| ORA.b $0E
|01AAAC| STA.w $197E,X

|01AAAF| LDY.b $0E

.not_onesided_shutter
|01AAB1| LDX.w DoorGFXDataOffset_South,Y
|01AAB4| LDY.b $08

|01AAB6| LDA.w #$0004
|01AAB9| STA.b $0E

.next
|01AABB| LDA.w RoomDrawObjectData+0,X
|01AABE| STA.b [$CB],Y

|01AAC0| LDA.w RoomDrawObjectData+2,X
|01AAC3| STA.b [$D7],Y

|01AAC5| LDA.w RoomDrawObjectData+4,X
|01AAC8| STA.b [$DA],Y

|01AACA| TXA
|01AACB| CLC
|01AACC| ADC.w #$0006
|01AACF| TAX

|01AAD0| INY
|01AAD1| INY

|01AAD2| DEC.b $0E
|01AAD4| BNE .next

.exit
|01AAD6| RTS

;===================================================================================================

RoomDraw_Door_West:
|01AAD7| LDY.w DoorTilemapPositions_WestWall,X
|01AADA| STY.b $08

|01AADC| CMP.w #$0016 ; DOORTYPE 16
|01AADF| BNE .not_to_layer2_door

|01AAE1| TYA
|01AAE2| CLC
|01AAE3| ADC.w #$007C

|01AAE6| JMP.w RoomDraw_MarkLayerToggleDoor

;---------------------------------------------------------------------------------------------------

.not_to_layer2_door
|01AAE9| CMP.w #$0006 ; DOORTYPE 06
|01AAEC| BNE .not_lower_layer_door_1

|01AAEE| JMP.w RoomDraw_MakeDoorHighPriorityLowerLayer_West

;---------------------------------------------------------------------------------------------------

.not_lower_layer_door_1
|01AAF1| CMP.w #$0014 ; DOORTYPE 14
|01AAF4| BNE .not_dungeon_swap_door

|01AAF6| TYA
|01AAF7| CLC
|01AAF8| ADC.w #$007C

|01AAFB| JMP.w RoomDraw_MarkDungeonToggleDoor

;---------------------------------------------------------------------------------------------------

.not_dungeon_swap_door
|01AAFE| CMP.w #$0002 ; DOORTYPE 02
|01AB01| BNE .not_lower_layer_door_2

|01AB03| TYA
|01AB04| AND.w #$FFC0
|01AB07| JSR MakeDoorPartsHighPriority_Horizontal
|01AB0A| BRA RoomDraw_NormalRangedDoors_West

;---------------------------------------------------------------------------------------------------

.not_lower_layer_door_2
|01AB0C| CMP.w #$0008 ; DOORTYPE 08
|01AB0F| BNE .not_waterfall_door

|01AB11| JSR RoomDraw_NormalRangedDoors_West

|01AB14| JMP.w RoomDraw_ChangeTilemapAddressToLowerLayer

;---------------------------------------------------------------------------------------------------

.not_waterfall_door
|01AB17| CMP.w #$0040 ; DOORTYPE 40
|01AB1A| BCC RoomDraw_NormalRangedDoors_West

|01AB1C| JMP.w RoomDraw_HighRangeDoor_West

;===================================================================================================

RoomDraw_NormalRangedDoors_West:
|01AB1F| LDX.b $02
|01AB21| CPX.w #$000C
|01AB24| BCC .not_middle_door

|01AB26| PHY

|01AB27| LDA.w $0460
|01AB2A| PHA

|01AB2B| ORA.w #$0010
|01AB2E| STA.w $0460

|01AB31| LDY.w DoorTilemapPositions_WestMiddle,X

|01AB34| LDA.b $04
|01AB36| JSR RoomDraw_NormalRangedDoors_East

|01AB39| PLA
|01AB3A| STA.w $0460

|01AB3D| PLY

|01AB3E| LDA.b $04
|01AB40| STA.b $0A

;===================================================================================================

.not_middle_door
|01AB42| STY.b $08

|01AB44| LDX.w $0460
|01AB47| LDA.w #$0002
|01AB4A| JSR FlagDoorsAndGetFinalType
|01AB4D| BCC .exit

|01AB4F| LDA.w #$0018 ; DOORTYPE 18
|01AB52| CPY.w #$0036 ; DOORTYPE 36
|01AB55| BEQ .onesided_shutter

|01AB57| LDA.w #$0000 ; DOORTYPE 00
|01AB5A| CPY.w #$0038 ; DOORTYPE 38
|01AB5D| BNE .not_onesided_shutter

.onesided_shutter
|01AB5F| STA.b $0E

|01AB61| LDA.w $197E,X
|01AB64| AND.w #$FF00
|01AB67| ORA.b $0E
|01AB69| STA.w $197E,X

|01AB6C| LDY.b $0E

;---------------------------------------------------------------------------------------------------

.not_onesided_shutter
|01AB6E| LDX.w DoorGFXDataOffset_West,Y
|01AB71| LDY.b $08

|01AB73| LDA.w #$0003
|01AB76| STA.b $0E

;===================================================================================================

#RoomDraw_DrawUnreachableDoorSwitcher:
.next
|01AB78| LDA.w RoomDrawObjectData+0,X
|01AB7B| STA.b [$BF],Y

|01AB7D| LDA.w RoomDrawObjectData+2,X
|01AB80| STA.b [$CB],Y

|01AB82| LDA.w RoomDrawObjectData+4,X
|01AB85| STA.b [$D7],Y

|01AB87| LDA.w RoomDrawObjectData+6,X
|01AB8A| STA.b [$DA],Y

|01AB8C| TXA
|01AB8D| CLC
|01AB8E| ADC.w #$0008
|01AB91| TAX

|01AB92| INY
|01AB93| INY

|01AB94| DEC.b $0E
|01AB96| BNE .next

.exit
|01AB98| RTS

;===================================================================================================

RoomDraw_Door_East:
|01AB99| LDY.w DoorTilemapPositions_EastMiddle,X
|01AB9C| STY.b $08

|01AB9E| CMP.w #$0016 ; DOORTYPE 16
|01ABA1| BNE .not_to_layer2_door

|01ABA3| TYA
|01ABA4| CLC
|01ABA5| ADC.w #$0088

|01ABA8| JMP.w RoomDraw_MarkLayerToggleDoor

;---------------------------------------------------------------------------------------------------

.not_to_layer2_door
|01ABAB| CMP.w #$0006 ; DOORTYPE 06
|01ABAE| BNE .not_lower_layer_door_1

|01ABB0| JMP.w RoomDraw_MakeDoorHighPriorityLowerLayer_East

;---------------------------------------------------------------------------------------------------

.not_lower_layer_door_1
|01ABB3| CMP.w #$0014 ; DOORTYPE 14
|01ABB6| BNE .not_dungeon_swap_door

|01ABB8| TYA
|01ABB9| CLC
|01ABBA| ADC.w #$0088

|01ABBD| JMP.w RoomDraw_MarkDungeonToggleDoor

;---------------------------------------------------------------------------------------------------

.not_dungeon_swap_door
|01ABC0| CMP.w #$0040 ; DOORTYPE 40
|01ABC3| BCC RoomDraw_NormalRangedDoors_East

|01ABC5| JMP.w RoomDraw_OneSidedLowerShutters_East

;===================================================================================================

RoomDraw_NormalRangedDoors_East:
|01ABC8| CMP.w #$0002 ; DOORTYPE 02
|01ABCB| BNE .not_lower_layer_door_2

|01ABCD| TYA
|01ABCE| CLC
|01ABCF| ADC.w #$0008
|01ABD2| JSR MakeDoorPartsHighPriority_Horizontal

|01ABD5| BRA .not_lower_layer_door_2 ; [USELESS]

;---------------------------------------------------------------------------------------------------

.not_lower_layer_door_2
|01ABD7| CMP.w #$0008 ; DOORTYPE 08
|01ABDA| BNE RoomDraw_OneSidedShutters_East

|01ABDC| JSR RoomDraw_OneSidedShutters_East

|01ABDF| JMP.w RoomDraw_ChangeTilemapAddressToLowerLayer

;===================================================================================================

RoomDraw_OneSidedShutters_East:
|01ABE2| STY.b $08

|01ABE4| LDX.w $0460
|01ABE7| LDA.w #$0003
|01ABEA| JSR FlagDoorsAndGetFinalType
|01ABED| BCC EXIT_01AC3A

|01ABEF| LDA.w #$0000 ; DOORTYPE 00
|01ABF2| CPY.w #$0036 ; DOORTYPE 36
|01ABF5| BEQ .onesided_shutter

|01ABF7| LDA.w #$0018 ; DOORTYPE 18
|01ABFA| CPY.w #$0038 ; DOORTYPE 38
|01ABFD| BNE .not_onesided_shutter

.onesided_shutter
|01ABFF| STA.b $0E

|01AC01| LDA.w $197E,X
|01AC04| AND.w #$FF00
|01AC07| ORA.b $0E
|01AC09| STA.w $197E,X

|01AC0C| LDY.b $0E

.not_onesided_shutter
|01AC0E| LDX.w DoorGFXDataOffset_East,Y

|01AC11| LDY.b $08
|01AC13| INY
|01AC14| INY

|01AC15| LDA.w #$0003
|01AC18| STA.b $0E

;===================================================================================================

DrawUnusedDoorSwitchObject:
.next
|01AC1A| LDA.w RoomDrawObjectData+0,X
|01AC1D| STA.b [$BF],Y

|01AC1F| LDA.w RoomDrawObjectData+2,X
|01AC22| STA.b [$CB],Y

|01AC24| LDA.w RoomDrawObjectData+4,X
|01AC27| STA.b [$D7],Y

|01AC29| LDA.w RoomDrawObjectData+6,X
|01AC2C| STA.b [$DA],Y

|01AC2E| TXA
|01AC2F| CLC
|01AC30| ADC.w #$0008
|01AC33| TAX

|01AC34| INY
|01AC35| INY

|01AC36| DEC.b $0E
|01AC38| BNE .next

;---------------------------------------------------------------------------------------------------

#EXIT_01AC3A:
|01AC3A| RTS

;---------------------------------------------------------------------------------------------------

RoomDraw_NorthCurtainDoor:
|01AC3B| STY.b $08

|01AC3D| LDX.w $0460

|01AC40| LDA.w #$0000
|01AC43| JSR FlagDoorsAndGetFinalType
|01AC46| BCC .not_open

|01AC48| LDX.w DoorGFXDataOffset_North,Y

|01AC4B| BRA .draw_open

.not_open
|01AC4D| LDY.b $08
|01AC4F| LDX.w #RoomDrawObjectData.obj078A
|01AC52| JMP.w RoomDraw_4x4

.draw_open
|01AC55| LDY.b $08
|01AC57| JSR RoomDraw_4x4

|01AC5A| RTS

;===================================================================================================

ExplodingWallNotOpen:
|01AC5B| LDX.w $0460

|01AC5E| STZ.w $19C0,X

|01AC61| TXA
|01AC62| LSR A
|01AC63| XBA
|01AC64| ORA.w #$0030
|01AC67| STA.w $1980,X

|01AC6A| INX
|01AC6B| INX
|01AC6C| STX.w $0460

|01AC6F| RTS

;===================================================================================================

RoomDraw_Door_ExplodingWall:
|01AC70| LDY.w ExplodingWallTilemapPosition,X
|01AC73| STY.b $08

|01AC75| LDX.w $0460

|01AC78| LDA.b $08
|01AC7A| CLC
|01AC7B| ADC.w #$0014
|01AC7E| STA.w $19A0,X

|01AC81| TXA
|01AC82| LSR A
|01AC83| XBA
|01AC84| ORA.w #$0030
|01AC87| STA.w $1980,X

|01AC8A| TXA
|01AC8B| AND.w #$000F
|01AC8E| TAY

|01AC8F| LDA.w $068C
|01AC92| AND.w BitMasks,Y
|01AC95| BEQ ExplodingWallNotOpen

|01AC97| SEP #$30

|01AC99| LDX.b #$00

|01AC9B| LDA.b $AE
|01AC9D| CMP.b #$20 ; ROOMTAG 20
|01AC9F| BEQ .delete_tag

|01ACA1| CMP.b #$25 ; ROOMTAG 25
|01ACA3| BEQ .delete_tag

|01ACA5| CMP.b #$28 ; ROOMTAG 28
|01ACA7| BEQ .delete_tag

|01ACA9| INX

.delete_tag
|01ACAA| STZ.b $AE,X ; ROOMTAG 00

;---------------------------------------------------------------------------------------------------

|01ACAC| REP #$30

|01ACAE| LDA.b $08
|01ACB0| PHA

|01ACB1| LDA.b $A7
|01ACB3| ORA.w #$0002
|01ACB6| STA.b $A7

|01ACB8| LDA.w $0452
|01ACBB| ORA.w #$0100
|01ACBE| STA.w $0452

|01ACC1| LDY.w #$0054 ; DOORTYPE 54
|01ACC4| LDX.w DoorGFXDataOffset_South,Y
|01ACC7| JSR RoomDraw_ExplodingWallSegment

|01ACCA| PLA
|01ACCB| CLC
|01ACCC| ADC.w #$0300
|01ACCF| STA.b $08

|01ACD1| INC.w $0460
|01ACD4| INC.w $0460

|01ACD7| LDA.b $FC
|01ACD9| ORA.w #$0200
|01ACDC| STA.b $FC

|01ACDE| LDY.w #$0054 ; DOORTYPE 54
|01ACE1| LDX.w DoorGFXDataOffset_North,Y

;===================================================================================================

RoomDraw_ExplodingWallSegment:
|01ACE4| LDA.w #$0012
|01ACE7| STA.b $B2

|01ACE9| LDY.b $08
|01ACEB| JSR RoomDraw_ExplodingWallColumn

|01ACEE| LDA.b $08
|01ACF0| CLC
|01ACF1| ADC.w #$0004
|01ACF4| STA.b $08

|01ACF6| TXA
|01ACF7| CLC
|01ACF8| ADC.w #$000C
|01ACFB| TAX

|01ACFC| PHX

|01ACFD| TXY

;---------------------------------------------------------------------------------------------------

|01ACFE| LDX.b $08

|01AD00| LDA.w RoomDrawObjectData+0,Y

.next
|01AD03| STA.l $7E2000,X
|01AD07| STA.l $7E2080,X
|01AD0B| STA.l $7E2100,X
|01AD0F| STA.l $7E2180,X
|01AD13| STA.l $7E2200,X
|01AD17| STA.l $7E2280,X

|01AD1B| INX
|01AD1C| INX

|01AD1D| DEC.b $B2
|01AD1F| BNE .next

;---------------------------------------------------------------------------------------------------

|01AD21| TXY

|01AD22| PLX
|01AD23| INX
|01AD24| INX

;===================================================================================================

RoomDraw_ExplodingWallColumn:
|01AD25| LDA.w #$0006
|01AD28| STA.b $0A

.next
|01AD2A| LDA.w RoomDrawObjectData+0,X
|01AD2D| STA.b [$BF],Y

|01AD2F| LDA.w RoomDrawObjectData+12,X
|01AD32| STA.b [$C2],Y

|01AD34| INX
|01AD35| INX

|01AD36| TYA
|01AD37| CLC
|01AD38| ADC.w #$0080
|01AD3B| TAY

|01AD3C| DEC.b $0A
|01AD3E| BNE .next

|01AD40| RTS

;===================================================================================================

RoomDraw_HighRangeDoor_North:
|01AD41| LDX.b $02
|01AD43| CPX.w #$000C
|01AD46| BCC RoomDraw_OneSidedLowerShutters_North

|01AD48| LDA.b $04
|01AD4A| CMP.w #$0046 ; DOORTYPE 46
|01AD4D| BEQ RoomDraw_OneSidedLowerShutters_North

|01AD4F| PHY

|01AD50| LDA.w $0460
|01AD53| PHA

|01AD54| ORA.w #$0010
|01AD57| STA.w $0460

|01AD5A| LDY.w DoorTilemapPositions_NorthMiddle,X
|01AD5D| JSR RoomDraw_OneSidedLowerShutters_South

|01AD60| PLA
|01AD61| STA.w $0460

|01AD64| PLY

;===================================================================================================

RoomDraw_OneSidedLowerShutters_North:
|01AD65| STY.b $08

|01AD67| LDX.w $0460

|01AD6A| LDA.w #$0000
|01AD6D| JSR FlagDoorsAndGetFinalType

|01AD70| LDA.w #$0044 ; DOORTYPE 44
|01AD73| CPY.w #$0048 ; DOORTYPE 48
|01AD76| BEQ .lower_layer_onesided_shutter

|01AD78| LDA.w #$0040 ; DOORTYPE 40
|01AD7B| CPY.w #$004A ; DOORTYPE 4A
|01AD7E| BNE .not_lower_layer_onesided_shutter

.lower_layer_onesided_shutter
|01AD80| STA.b $0E

|01AD82| LDA.w $197E,X
|01AD85| AND.w #$FF00
|01AD88| ORA.b $0E
|01AD8A| STA.w $197E,X

|01AD8D| LDY.b $0E

.not_lower_layer_onesided_shutter
|01AD8F| LDA.w DoorGFXDataOffset_North,Y
|01AD92| TAY

;---------------------------------------------------------------------------------------------------

|01AD93| LDX.b $08

|01AD95| LDA.w #$0004
|01AD98| STA.b $0E

.next
|01AD9A| LDA.w RoomDrawObjectData+0,Y
|01AD9D| STA.l $7E2000,X

|01ADA1| LDA.w RoomDrawObjectData+2,Y
|01ADA4| STA.l $7E4080,X

|01ADA8| LDA.w RoomDrawObjectData+4,Y
|01ADAB| STA.l $7E4100,X

|01ADAF| TYA
|01ADB0| CLC
|01ADB1| ADC.w #$0006
|01ADB4| TAY

|01ADB5| INX
|01ADB6| INX

|01ADB7| DEC.b $0E
|01ADB9| BNE .next

;---------------------------------------------------------------------------------------------------

|01ADBB| LDA.b $04
|01ADBD| CMP.w #$0046 ; DOORTYPE 46
|01ADC0| BEQ .is_teleport_door

|01ADC2| LDA.b $08
|01ADC4| JSR RoomDraw_MakeDoorHighPriority_North

.is_teleport_door
|01ADC7| LDX.w $0460

|01ADCA| LDA.w $199E,X
|01ADCD| ORA.w #$2000
|01ADD0| STA.w $199E,X

|01ADD3| RTS

;===================================================================================================

RoomDraw_OneSidedLowerShutters_South:
|01ADD4| STY.b $08

|01ADD6| LDX.w $0460
|01ADD9| LDA.w #$0001
|01ADDC| JSR FlagDoorsAndGetFinalType

|01ADDF| LDA.w #$0040 ; DOORTYPE 40
|01ADE2| CPY.w #$0048 ; DOORTYPE 48
|01ADE5| BEQ .lower_layer_onesided_shutter

|01ADE7| LDA.w #$0044 ; DOORTYPE 44
|01ADEA| CPY.w #$004A ; DOORTYPE 4A
|01ADED| BNE .not_lower_layer_onesided_shutter

.lower_layer_onesided_shutter
|01ADEF| STA.b $0E

|01ADF1| LDA.w $197E,X
|01ADF4| AND.w #$FF00
|01ADF7| ORA.b $0E
|01ADF9| STA.w $197E,X

|01ADFC| LDY.b $0E

.not_lower_layer_onesided_shutter
|01ADFE| LDA.w DoorGFXDataOffset_South,Y
|01AE01| TAY

;---------------------------------------------------------------------------------------------------

|01AE02| LDX.b $08

|01AE04| LDA.w #$0004
|01AE07| STA.b $0E

.next
|01AE09| LDA.w RoomDrawObjectData+0,Y
|01AE0C| STA.l $7E4080,X

|01AE10| LDA.w RoomDrawObjectData+2,Y
|01AE13| STA.l $7E4100,X

|01AE17| LDA.w RoomDrawObjectData+4,Y
|01AE1A| STA.l $7E2180,X

|01AE1E| TYA
|01AE1F| CLC
|01AE20| ADC.w #$0006
|01AE23| TAY

|01AE24| INX
|01AE25| INX

|01AE26| DEC.b $0E
|01AE28| BNE .next

;---------------------------------------------------------------------------------------------------

|01AE2A| LDA.b $08
|01AE2C| CLC
|01AE2D| ADC.w #$0200
|01AE30| JSR RoomDraw_MakeDoorHighPriority_South

|01AE33| LDX.w $0460

|01AE36| LDA.w $199E,X
|01AE39| ORA.w #$2000
|01AE3C| STA.w $199E,X

|01AE3F| RTS

;===================================================================================================

RoomDraw_HighRangeDoor_West:
|01AE40| LDX.b $02
|01AE42| CPX.w #$000C ; DOORTYPE 0C
|01AE45| BCC RoomDraw_OneSidedLowerShutters_West

|01AE47| PHY

|01AE48| LDA.w $0460
|01AE4B| PHA

|01AE4C| ORA.w #$0010
|01AE4F| STA.w $0460

|01AE52| LDY.w DoorTilemapPositions_WestMiddle,X
|01AE55| JSR RoomDraw_OneSidedLowerShutters_East

|01AE58| PLA
|01AE59| STA.w $0460

|01AE5C| PLY

;===================================================================================================

RoomDraw_OneSidedLowerShutters_West:
|01AE5D| STY.b $08

|01AE5F| LDX.w $0460

|01AE62| LDA.w #$0002 ; DOORTYPE 02
|01AE65| JSR FlagDoorsAndGetFinalType

|01AE68| LDA.w #$0044 ; DOORTYPE 44
|01AE6B| CPY.w #$0048 ; DOORTYPE 48
|01AE6E| BEQ .lower_layer_onesided_shutter

|01AE70| LDA.w #$0040 ; DOORTYPE 40
|01AE73| CPY.w #$004A ; DOORTYPE 4A
|01AE76| BNE .not_lower_layer_onesided_shutter

.lower_layer_onesided_shutter
|01AE78| STA.b $0E

|01AE7A| LDA.w $197E,X
|01AE7D| AND.w #$FF00
|01AE80| ORA.b $0E
|01AE82| STA.w $197E,X

|01AE85| LDY.b $0E

;---------------------------------------------------------------------------------------------------

.not_lower_layer_onesided_shutter
|01AE87| LDA.w DoorGFXDataOffset_West,Y
|01AE8A| TAY

|01AE8B| LDX.b $08

|01AE8D| LDA.w RoomDrawObjectData+0,Y
|01AE90| STA.l $7E2000,X

|01AE94| LDA.w RoomDrawObjectData+2,Y
|01AE97| STA.l $7E2080,X

|01AE9B| LDA.w RoomDrawObjectData+4,Y
|01AE9E| STA.l $7E2100,X

|01AEA2| LDA.w RoomDrawObjectData+6,Y
|01AEA5| STA.l $7E2180,X

|01AEA9| TYA
|01AEAA| CLC
|01AEAB| ADC.w #$0008
|01AEAE| TAY

|01AEAF| INX
|01AEB0| INX

;---------------------------------------------------------------------------------------------------

|01AEB1| LDA.w #$0002
|01AEB4| STA.b $0E

.next
|01AEB6| LDA.w RoomDrawObjectData+0,Y
|01AEB9| STA.l $7E4000,X

|01AEBD| LDA.w RoomDrawObjectData+2,Y
|01AEC0| STA.l $7E4080,X

|01AEC4| LDA.w RoomDrawObjectData+4,Y
|01AEC7| STA.l $7E4100,X

|01AECB| LDA.w RoomDrawObjectData+6,Y
|01AECE| STA.l $7E4180,X

|01AED2| TYA
|01AED3| CLC
|01AED4| ADC.w #$0008
|01AED7| TAY

|01AED8| INX
|01AED9| INX

|01AEDA| DEC.b $0E
|01AEDC| BNE .next

;---------------------------------------------------------------------------------------------------

|01AEDE| LDA.b $08
|01AEE0| JSR RoomDraw_MakeDoorHighPriority_West

|01AEE3| LDX.w $0460

|01AEE6| LDA.w $199E,X
|01AEE9| ORA.w #$2000
|01AEEC| STA.w $199E,X

|01AEEF| RTS

;===================================================================================================

RoomDraw_OneSidedLowerShutters_East:
|01AEF0| STY.b $08

|01AEF2| LDX.w $0460

|01AEF5| LDA.w #$0003
|01AEF8| JSR FlagDoorsAndGetFinalType

|01AEFB| LDA.w #$0040 ; DOORTYPE 40
|01AEFE| CPY.w #$0048 ; DOORTYPE 48
|01AF01| BEQ .lower_layer_onesided_shutter

|01AF03| LDA.w #$0044 ; DOORTYPE 44
|01AF06| CPY.w #$004A ; DOORTYPE 4A
|01AF09| BNE .not_lower_layer_onesided_shutter

.lower_layer_onesided_shutter
|01AF0B| STA.b $0E

|01AF0D| LDA.w $197E,X
|01AF10| AND.w #$FF00
|01AF13| ORA.b $0E
|01AF15| STA.w $197E,X

|01AF18| LDY.b $0E

.not_lower_layer_onesided_shutter
|01AF1A| LDA.w DoorGFXDataOffset_East,Y
|01AF1D| TAY

|01AF1E| LDX.b $08

|01AF20| LDA.w #$0002
|01AF23| STA.b $0E

.next
|01AF25| LDA.w RoomDrawObjectData+0,Y
|01AF28| STA.l $7E4002,X

|01AF2C| LDA.w RoomDrawObjectData+2,Y
|01AF2F| STA.l $7E4082,X

|01AF33| LDA.w RoomDrawObjectData+4,Y
|01AF36| STA.l $7E4102,X

|01AF3A| LDA.w RoomDrawObjectData+6,Y
|01AF3D| STA.l $7E4182,X

|01AF41| TYA
|01AF42| CLC
|01AF43| ADC.w #$0008
|01AF46| TAY

|01AF47| INX
|01AF48| INX

|01AF49| DEC.b $0E
|01AF4B| BNE .next

;---------------------------------------------------------------------------------------------------

|01AF4D| LDA.w RoomDrawObjectData+0,Y
|01AF50| STA.l $7E2002,X

|01AF54| LDA.w RoomDrawObjectData+2,Y
|01AF57| STA.l $7E2082,X

|01AF5B| LDA.w RoomDrawObjectData+4,Y
|01AF5E| STA.l $7E2102,X

|01AF62| LDA.w RoomDrawObjectData+6,Y
|01AF65| STA.l $7E2182,X

|01AF69| LDA.b $08
|01AF6B| CLC
|01AF6C| ADC.w #$0008
|01AF6F| JSR RoomDraw_MakeDoorHighPriority_East

|01AF72| LDX.w $0460

|01AF75| LDA.w $199E,X
|01AF78| ORA.w #$2000
|01AF7B| STA.w $199E,X

|01AF7E| RTS

;===================================================================================================

RoomDraw_MakeDoorHighPriorityLowerLayer_North:
|01AF7F| LDA.w #$0000
|01AF82| JSR FlagDoorsAndGetFinalType

|01AF85| LDA.b $08
|01AF87| CLC
|01AF88| ADC.w #$0080

;===================================================================================================

RoomDraw_MakeDoorHighPriority_North:
|01AF8B| STA.b $02

|01AF8D| AND.w #$F07F
|01AF90| TAX

.next
|01AF91| LDA.l $7E2000,X
|01AF95| ORA.w #$2000
|01AF98| STA.l $7E2000,X

|01AF9C| LDA.l $7E2002,X
|01AFA0| ORA.w #$2000
|01AFA3| STA.l $7E2002,X

|01AFA7| LDA.l $7E2004,X
|01AFAB| ORA.w #$2000
|01AFAE| STA.l $7E2004,X

|01AFB2| LDA.l $7E2006,X
|01AFB6| ORA.w #$2000
|01AFB9| STA.l $7E2006,X

|01AFBD| TXA
|01AFBE| CLC
|01AFBF| ADC.w #$0080
|01AFC2| TAX

|01AFC3| CPX.b $02
|01AFC5| BNE .next

|01AFC7| RTS

;===================================================================================================

RoomDraw_MakeDoorHighPriorityLowerLayer_South:
|01AFC8| LDA.w #$0001
|01AFCB| JSR FlagDoorsAndGetFinalType

|01AFCE| LDA.b $08
|01AFD0| CLC
|01AFD1| ADC.w #$0100

;===================================================================================================

RoomDraw_MakeDoorHighPriority_South:
|01AFD4| TAX

.next
|01AFD5| LDA.l $7E2000,X
|01AFD9| ORA.w #$2000
|01AFDC| STA.l $7E2000,X

|01AFE0| LDA.l $7E2002,X
|01AFE4| ORA.w #$2000
|01AFE7| STA.l $7E2002,X

|01AFEB| LDA.l $7E2004,X
|01AFEF| ORA.w #$2000
|01AFF2| STA.l $7E2004,X

|01AFF6| LDA.l $7E2006,X
|01AFFA| ORA.w #$2000
|01AFFD| STA.l $7E2006,X

|01B001| TXA
|01B002| CLC
|01B003| ADC.w #$0080
|01B006| TAX

|01B007| AND.w #$0F80
|01B00A| BNE .next

|01B00C| RTS

;===================================================================================================

RoomDraw_MakeDoorHighPriorityLowerLayer_West:
|01B00D| LDA.w #$0002
|01B010| JSR FlagDoorsAndGetFinalType

|01B013| LDA.b $08
|01B015| INC A
|01B016| INC A

;===================================================================================================

RoomDraw_MakeDoorHighPriority_West:
|01B017| STA.b $02

|01B019| AND.w #$FFC0
|01B01C| TAX

.next
|01B01D| LDA.l $7E2000,X
|01B021| ORA.w #$2000
|01B024| STA.l $7E2000,X

|01B028| LDA.l $7E2080,X
|01B02C| ORA.w #$2000
|01B02F| STA.l $7E2080,X

|01B033| LDA.l $7E2100,X
|01B037| ORA.w #$2000
|01B03A| STA.l $7E2100,X

|01B03E| LDA.l $7E2180,X
|01B042| ORA.w #$2000
|01B045| STA.l $7E2180,X

|01B049| INX
|01B04A| INX
|01B04B| CPX.b $02
|01B04D| BNE .next

|01B04F| RTS

;===================================================================================================

RoomDraw_MakeDoorHighPriorityLowerLayer_East:
|01B050| LDA.w #$0003
|01B053| JSR FlagDoorsAndGetFinalType

|01B056| LDA.b $08
|01B058| CLC
|01B059| ADC.w #$0004

;===================================================================================================

RoomDraw_MakeDoorHighPriority_East:
|01B05C| TAX

.next
|01B05D| LDA.l $7E2000,X
|01B061| ORA.w #$2000
|01B064| STA.l $7E2000,X

|01B068| LDA.l $7E2080,X
|01B06C| ORA.w #$2000
|01B06F| STA.l $7E2080,X

|01B073| LDA.l $7E2100,X
|01B077| ORA.w #$2000
|01B07A| STA.l $7E2100,X

|01B07E| LDA.l $7E2180,X
|01B082| ORA.w #$2000
|01B085| STA.l $7E2180,X

|01B089| INX
|01B08A| INX

|01B08B| TXA
|01B08C| AND.w #$003F
|01B08F| BNE .next

|01B091| RTS

;===================================================================================================

RoomDraw_MarkDungeonToggleDoor:
|01B092| LDX.w $0450

|01B095| LSR A
|01B096| STA.w $06D0,X

|01B099| INX
|01B09A| INX
|01B09B| STX.w $0450

|01B09E| RTS

;===================================================================================================

RoomDraw_MarkLayerToggleDoor:
|01B09F| LDX.w $044E

|01B0A2| LSR A
|01B0A3| STA.w $06C0,X

|01B0A6| INX
|01B0A7| INX
|01B0A8| STX.w $044E

|01B0AB| RTS

;===================================================================================================

RoomDraw_GetSize_1to16:
|01B0AC| LDA.w #$0001

;===================================================================================================

RoomDraw_GetSize_1to16_timesA:
|01B0AF| STA.b $0E

|01B0B1| LDA.b $B2
|01B0B3| ASL A
|01B0B4| ASL A
|01B0B5| ORA.b $B4
|01B0B7| ADC.b $0E
|01B0B9| STA.b $B2

|01B0BB| STZ.b $B4

|01B0BD| RTS

;===================================================================================================

RoomDraw_GetSize_1to15or26:
|01B0BE| LDA.b $B2
|01B0C0| ASL A
|01B0C1| ASL A
|01B0C2| ORA.b $B4
|01B0C4| BNE .nonzero

|01B0C6| LDA.w #$001A

.nonzero
|01B0C9| STA.b $B2

|01B0CB| RTS

;===================================================================================================

RoomDraw_GetSize_1to15or32:
|01B0CC| LDA.b $B2
|01B0CE| ASL A
|01B0CF| ASL A
|01B0D0| ORA.b $B4
|01B0D2| BNE .nonzero

|01B0D4| LDA.w #$0020

.nonzero
|01B0D7| STA.b $B2

|01B0D9| RTS

;===================================================================================================

FlagDoorsAndGetFinalType:
|01B0DA| STA.w $19C0,X

|01B0DD| TYA
|01B0DE| STA.w $19A0,X

|01B0E1| TXA
|01B0E2| LSR A
|01B0E3| XBA

|01B0E4| ORA.b $04
|01B0E6| STA.w $1980,X

|01B0E9| TXA
|01B0EA| AND.w #$000F
|01B0ED| TAY

|01B0EE| CPY.w #$0008 ; don't open indices 4+
|01B0F1| BCS .dont_flag_door_open

|01B0F3| LDA.w $068C
|01B0F6| AND.w BitMasks,Y
|01B0F9| BEQ .dont_flag_door_open

|01B0FB| LDA.w $1980,X
|01B0FE| AND.w #$00FF
|01B101| CMP.w #$0018 ; DOORTYPE 18
|01B104| BEQ .is_shutter_door

|01B106| CMP.w #$0044 ; DOORTYPE 44
|01B109| BNE .not_shutter_door

.is_shutter_door
|01B10B| LDA.w $0468
|01B10E| BNE .dont_flag_door_open

.not_shutter_door
|01B110| PHX

|01B111| LDX.b $04

|01B113| LDA.w DoorwayReplacementDoorGFX,X
|01B116| STA.b $0A

|01B118| PLX

|01B119| LDA.w $1980,X
|01B11C| AND.w #$00FF
|01B11F| CMP.w #$0018 ; DOORTYPE 18
|01B122| BEQ .dont_flag_door_open

|01B124| CMP.w #$0044 ; DOORTYPE 44
|01B127| BEQ .dont_flag_door_open

|01B129| CMP.w #$001A ; DOORTYPE 1A
|01B12C| BCC .dont_flag_door_open

|01B12E| CMP.w #$0040 ; DOORTYPE 40
|01B131| BEQ .dont_flag_door_open

|01B133| CMP.w #$0046 ; DOORTYPE 46
|01B136| BEQ .dont_flag_door_open

|01B138| LDA.w $0400
|01B13B| ORA.w BitMasks,X
|01B13E| STA.w $0400

.dont_flag_door_open
|01B141| LDY.b $0A

|01B143| INX
|01B144| INX
|01B145| STX.w $0460

|01B148| CPY.w #$0032 ; DOORTYPE 32
|01B14B| BEQ FAIL_01B18F

|01B14D| CPY.w #$0008 ; DOORTYPE 08
|01B150| BEQ FAIL_01B18F

|01B152| LDA.b $04
|01B154| CMP.w #$001A ; DOORTYPE 1A
|01B157| BNE .no_extra_flagging_needed

|01B159| LDA.b $2F
|01B15B| AND.w #$00FF
|01B15E| STA.b $0A

|01B160| DEX
|01B161| DEX

|01B162| TXA
|01B163| XBA
|01B164| STA.w $0436

|01B167| LDA.b $00
|01B169| AND.w #$0003
|01B16C| ASL A
|01B16D| ORA.w $0436
|01B170| STA.w $0436

|01B173| AND.w #$00FF
|01B176| CMP.b $0A
|01B178| BNE .flag_shutter_door

|01B17A| EOR.w #$0002
|01B17D| CMP.b $0A
|01B17F| BEQ FAIL_01B18F

.flag_shutter_door
|01B181| LDA.w $068C
|01B184| ORA.w BitMasks,X
|01B187| STA.w $068C

|01B18A| LDY.w #$0000

;---------------------------------------------------------------------------------------------------

.no_extra_flagging_needed
|01B18D| SEC

|01B18E| RTS

;===================================================================================================

#FAIL_01B18F:
|01B18F| CLC

|01B190| RTS

;===================================================================================================
; Enters with
;   A - tile to ignore
;===================================================================================================
RoomDraw_SmallRailCorner:
|01B191| STA.b $0E

|01B193| LDA.b [$BF],Y
|01B195| AND.w #$03FF
|01B198| CMP.b $0E
|01B19A| BEQ FAIL_01B18F

|01B19C| SEC

|01B19D| RTS

;===================================================================================================

UNREACHABLE_01B19E:
|01B19E| TAX

|01B19F| LDA.w #$0007
|01B1A2| BRA MakeDoorPartsHighPriority_Vertical.set_size

;===================================================================================================

MakeDoorPartsHighPriority_Vertical:
|01B1A4| TAX

|01B1A5| LDA.w #$0007

.set_size
|01B1A8| STA.b $0E

.next
|01B1AA| LDA.l $7E2000,X
|01B1AE| ORA.w #$2000
|01B1B1| STA.l $7E2000,X

|01B1B5| LDA.l $7E2002,X
|01B1B9| ORA.w #$2000
|01B1BC| STA.l $7E2002,X

|01B1C0| LDA.l $7E2004,X
|01B1C4| ORA.w #$2000
|01B1C7| STA.l $7E2004,X

|01B1CB| LDA.l $7E2006,X
|01B1CF| ORA.w #$2000
|01B1D2| STA.l $7E2006,X

|01B1D6| TXA
|01B1D7| CLC
|01B1D8| ADC.w #$0080
|01B1DB| TAX

|01B1DC| DEC.b $0E
|01B1DE| BNE .next

|01B1E0| RTS

;===================================================================================================

UNREACHABLE_01B1E1:
|01B1E1| TAX

|01B1E2| LDA.w #$0007
|01B1E5| BRA MakeDoorPartsHighPriority_Horizontal.continue

;===================================================================================================

MakeDoorPartsHighPriority_Horizontal:
|01B1E7| TAX

|01B1E8| LDA.w #$0005

.continue
|01B1EB| STA.b $0E

.next
|01B1ED| LDA.l $7E2000,X
|01B1F1| ORA.w #$2000
|01B1F4| STA.l $7E2000,X

|01B1F8| LDA.l $7E2080,X
|01B1FC| ORA.w #$2000
|01B1FF| STA.l $7E2080,X

|01B203| LDA.l $7E2100,X
|01B207| ORA.w #$2000
|01B20A| STA.l $7E2100,X

|01B20E| LDA.l $7E2180,X
|01B212| ORA.w #$2000
|01B215| STA.l $7E2180,X

|01B219| INX
|01B21A| INX

|01B21B| DEC.b $0E
|01B21D| BNE .next

|01B21F| RTS

;===================================================================================================

RoomDraw_Downwards4x2VariableSpacing:
|01B220| STA.b $0E

.next
|01B222| LDA.w RoomDrawObjectData+0,X
|01B225| STA.b [$BF],Y

|01B227| LDA.w RoomDrawObjectData+2,X
|01B22A| STA.b [$C2],Y

|01B22C| LDA.w RoomDrawObjectData+4,X
|01B22F| STA.b [$C5],Y

|01B231| LDA.w RoomDrawObjectData+6,X
|01B234| STA.b [$C8],Y

|01B236| LDA.w RoomDrawObjectData+8,X
|01B239| STA.b [$CB],Y

|01B23B| LDA.w RoomDrawObjectData+10,X
|01B23E| STA.b [$CE],Y

|01B240| LDA.w RoomDrawObjectData+12,X
|01B243| STA.b [$D1],Y

|01B245| LDA.w RoomDrawObjectData+14,X
|01B248| STA.b [$D4],Y

|01B24A| TYA
|01B24B| CLC
|01B24C| ADC.b $0E
|01B24E| TAY

|01B24F| DEC.b $B2
|01B251| BNE .next

|01B253| RTS

;===================================================================================================

UNREACHABLE_01B254:
|01B254| STA.b $0E

.next
|01B256| JSR RoomDraw_Downwards2x2

|01B259| TXA
|01B25A| CLC
|01B25B| ADC.w #$0008
|01B25E| TAX

|01B25F| DEC.b $0E
|01B261| BNE .next

|01B263| RTS

;===================================================================================================

UNREACHABLE_01B264:
|01B264| LDA.b $B2
|01B266| BEQ .exit

.next
|01B268| LDA.w #$0002
|01B26B| JSR RoomDraw_Nx4

|01B26E| TXA
|01B26F| SEC
|01B270| SBC.w #$0010
|01B273| TAX

|01B274| DEC.b $B2
|01B276| BNE .next

.exit
|01B278| RTS

;===================================================================================================

RoomDraw_1x5:
|01B279| LDA.w RoomDrawObjectData+0,X
|01B27C| STA.b [$BF],Y

|01B27E| LDA.w RoomDrawObjectData+2,X
|01B281| STA.b [$CB],Y

|01B283| LDA.w RoomDrawObjectData+4,X
|01B286| STA.b [$D7],Y

|01B288| LDA.w RoomDrawObjectData+6,X
|01B28B| STA.b [$DA],Y

|01B28D| LDA.w RoomDrawObjectData+8,X
|01B290| STA.b [$DD],Y

|01B292| RTS

;===================================================================================================

RoomDraw_DrawDiagonalGrave:
.next
|01B293| JSR RoomDraw_1x5

|01B296| TYA
|01B297| CLC
|01B298| ADC.w #$0082
|01B29B| TAY

;---------------------------------------------------------------------------------------------------

#RoomDraw_DrawDiagonalGrave_start:
|01B29C| DEC.b $B2
|01B29E| BNE .next

|01B2A0| RTS

;===================================================================================================

RoomDraw_DrawDiagonalAcute:
.next
|01B2A1| JSR RoomDraw_1x5

|01B2A4| TYA
|01B2A5| SEC
|01B2A6| SBC.w #$007E
|01B2A9| TAY

;---------------------------------------------------------------------------------------------------

#RoomDraw_DrawDiagonalAcute_start:
|01B2AA| DEC.b $B2
|01B2AC| BNE .next

|01B2AE| RTS

;===================================================================================================

RoomDraw_Downwards2x2:
|01B2AF| LDA.w RoomDrawObjectData+0,X
|01B2B2| STA.b [$BF],Y

|01B2B4| LDA.w RoomDrawObjectData+2,X
|01B2B7| STA.b [$CB],Y

|01B2B9| LDA.w RoomDrawObjectData+4,X
|01B2BC| STA.b [$C2],Y

|01B2BE| LDA.w RoomDrawObjectData+6,X
|01B2C1| STA.b [$CE],Y

|01B2C3| TYA
|01B2C4| CLC
|01B2C5| ADC.w #$0100
|01B2C8| TAY

|01B2C9| RTS

;===================================================================================================

RoomDraw_Repeated1x1_AdvanceWithCachedCount:
|01B2CA| INX
|01B2CB| INX

|01B2CC| INY
|01B2CD| INY

;===================================================================================================

RoomDraw_Repeated1x1_CachedCount:
|01B2CE| LDA.b $B2

;===================================================================================================

RoomDraw_Repeated1x1:
|01B2D0| STA.b $0A

|01B2D2| LDA.w RoomDrawObjectData+0,X

.next
|01B2D5| STA.b [$BF],Y

|01B2D7| INY
|01B2D8| INY

|01B2D9| DEC.b $0A
|01B2DB| BNE .next

|01B2DD| LDA.b $08
|01B2DF| CLC

|01B2E0| RTS

;===================================================================================================

RoomDraw_RightwardShelfEnd:
|01B2E1| LDA.w RoomDrawObjectData+0,X
|01B2E4| STA.b [$BF],Y

|01B2E6| LDA.w RoomDrawObjectData+2,X
|01B2E9| STA.b [$CB],Y

|01B2EB| LDA.w RoomDrawObjectData+4,X
|01B2EE| STA.b [$D7],Y

|01B2F0| LDA.w RoomDrawObjectData+6,X
|01B2F3| STA.b [$DA],Y

|01B2F5| RTS

;===================================================================================================

RoomDraw_1x3:
|01B2F6| LDA.w RoomDrawObjectData+0,X
|01B2F9| STA.b [$BF],Y

|01B2FB| LDA.w RoomDrawObjectData+2,X
|01B2FE| STA.b [$CB],Y

|01B300| LDA.w RoomDrawObjectData+4,X
|01B303| STA.b [$D7],Y

|01B305| RTS

;===================================================================================================

RoomDraw_WeirdGloveRequiredPot:
|01B306| LDA.w #$1010
|01B309| BRA DrawBigGraySegment

;===================================================================================================

RoomDraw_WeirdUglyPot:
|01B30B| LDA.w #$1212
|01B30E| BRA DrawBigGraySegment

;===================================================================================================

RoomDraw_BigGrayRock:
|01B310| STY.b $08

|01B312| LDX.w #RoomDrawObjectData.obj0E62
|01B315| LDA.w #$2020
|01B318| JSR DrawBigGraySegment

|01B31B| LDX.w #RoomDrawObjectData.obj0E6A
|01B31E| LDA.w #$2121
|01B321| JSR DrawBigGraySegment

|01B324| LDA.b $08
|01B326| CLC
|01B327| ADC.w #$0100
|01B32A| TAY

|01B32B| LDX.w #RoomDrawObjectData.obj0E72
|01B32E| LDA.w #$2222
|01B331| JSR DrawBigGraySegment

|01B334| LDX.w #RoomDrawObjectData.obj0E7A
|01B337| LDA.w #$2323

;===================================================================================================

DrawBigGraySegment:
|01B33A| PHX

|01B33B| LDX.w $042C

|01B33E| STA.w $0500,X

|01B341| INC.w $042C
|01B344| INC.w $042C

|01B347| LDA.b $BA
|01B349| STA.w $0520,X

|01B34C| TYA
|01B34D| STA.w $0540,X

|01B350| LDA.b $BF
|01B352| CMP.w #$4000
|01B355| BNE .upper_layer

|01B357| TYA
|01B358| ORA.w #$2000
|01B35B| STA.w $0540,X

.upper_layer
|01B35E| LDA.b [$BF],Y
|01B360| STA.w $0560,X

|01B363| LDA.b [$CB],Y
|01B365| STA.w $0580,X

|01B368| LDA.b [$C2],Y
|01B36A| STA.w $05A0,X

|01B36D| LDA.b [$CE],Y
|01B36F| STA.w $05C0,X

|01B372| PLX

|01B373| JMP.w RoomDraw_Rightwards2x2

;===================================================================================================

RoomDraw_RightwardsPots2x2_1to16:
|01B376| JSR RoomDraw_GetSize_1to16

.next
|01B379| JSR RoomDraw_SinglePot

|01B37C| DEC.b $B2
|01B37E| BNE .next

|01B380| RTS

;===================================================================================================

RoomDraw_DownwardsPots2x2_1to16:
|01B381| JSR RoomDraw_GetSize_1to16

.next
|01B384| JSR RoomDraw_SinglePot

|01B387| LDA.b $08
|01B389| CLC
|01B38A| ADC.w #$0100
|01B38D| STA.b $08

|01B38F| TAY

|01B390| DEC.b $B2
|01B392| BNE .next

|01B394| RTS

;===================================================================================================

RoomDraw_SinglePot:
|01B395| PHX

|01B396| LDX.w $042C

|01B399| INC.w $042C
|01B39C| INC.w $042C

|01B39F| LDA.w #$1111
|01B3A2| STA.w $0500,X

|01B3A5| LDA.b $BA
|01B3A7| STA.w $0520,X

|01B3AA| TYA
|01B3AB| STA.w $0540,X

|01B3AE| LDA.b $BF
|01B3B0| CMP.w #$4000
|01B3B3| BNE .upper_layer

|01B3B5| TYA
|01B3B6| ORA.w #$2000
|01B3B9| STA.w $0540,X

.upper_layer
|01B3BC| LDA.w #$0D0E
|01B3BF| STA.w $0560,X

|01B3C2| LDA.w #$0D1E
|01B3C5| STA.w $0580,X

|01B3C8| LDA.w #$4D0E
|01B3CB| STA.w $05A0,X

|01B3CE| LDA.w #$4D1E
|01B3D1| STA.w $05C0,X

|01B3D4| PLX

|01B3D5| LDA.l $7EF3CA
|01B3D9| BEQ .light_world

|01B3DB| LDX.w #RoomDrawObjectData.obj0E92

.light_world
|01B3DE| JMP.w RoomDraw_Rightwards2x2

;===================================================================================================

RoomDraw_BombableFloor:
|01B3E1| LDA.b $A0
|01B3E3| CMP.w #$0065 ; ROOM 0065
|01B3E6| BNE .not_open_tt_attic

|01B3E8| LDA.w $0402
|01B3EB| AND.w #$1000
|01B3EE| BEQ .not_open_tt_attic

|01B3F0| STZ.b $B2
|01B3F2| STZ.b $B4

|01B3F4| LDX.w #RoomDrawObjectData.obj05AA
|01B3F7| JMP.w RoomDraw_BigHole4x4_1to16

;---------------------------------------------------------------------------------------------------

.not_open_tt_attic
|01B3FA| STY.b $08

|01B3FC| LDA.w #RoomDrawObjectData.obj05BA
|01B3FF| STA.b $0E

|01B401| LDX.w #RoomDrawObjectData.obj0220
|01B404| LDA.w #$3030
|01B407| JSR .draw_segment

|01B40A| LDX.w #RoomDrawObjectData.obj0228
|01B40D| LDA.w #$3131
|01B410| JSR .draw_segment

|01B413| LDA.b $08
|01B415| CLC
|01B416| ADC.w #$0100
|01B419| TAY

|01B41A| LDX.w #RoomDrawObjectData.obj0230
|01B41D| LDA.w #$3232
|01B420| JSR .draw_segment

|01B423| LDX.w #RoomDrawObjectData.obj0238
|01B426| LDA.w #$3333

;---------------------------------------------------------------------------------------------------

.draw_segment
|01B429| PHX

|01B42A| LDX.w $042C

|01B42D| STA.w $0500,X

|01B430| INC.w $042C
|01B433| INC.w $042C

|01B436| LDA.b $BA
|01B438| STA.w $0520,X

|01B43B| TYA
|01B43C| STA.w $0540,X

|01B43F| LDA.b $BF
|01B441| CMP.w #$4000
|01B444| BNE .upper_layer

|01B446| TYA
|01B447| ORA.w #$2000
|01B44A| STA.w $0540,X

.upper_layer
|01B44D| PHY

|01B44E| LDY.b $0E

|01B450| LDA.w RoomDrawObjectData+0,Y
|01B453| STA.w $0560,X

|01B456| LDA.w RoomDrawObjectData+2,Y
|01B459| STA.w $0580,X

|01B45C| LDA.w RoomDrawObjectData+4,Y
|01B45F| STA.w $05A0,X

|01B462| LDA.w RoomDrawObjectData+6,Y
|01B465| STA.w $05C0,X

|01B468| TYA
|01B469| CLC
|01B46A| ADC.w #$0008
|01B46D| STA.b $0E

|01B46F| PLY
|01B470| PLX

|01B471| JMP.w RoomDraw_Rightwards2x2

;===================================================================================================

RoomDraw_RightwardsHammerPegs2x2_1to16:
|01B474| JSR RoomDraw_GetSize_1to16

.next
|01B477| JSR RoomDraw_HammerPegSingle

|01B47A| DEC.b $B2
|01B47C| BNE .next

|01B47E| RTS

;===================================================================================================

RoomDraw_DownwardsHammerPegs2x2_1to16:
|01B47F| JSR RoomDraw_GetSize_1to16

.next
|01B482| JSR RoomDraw_HammerPegSingle

|01B485| LDA.b $08
|01B487| CLC
|01B488| ADC.w #$0100
|01B48B| STA.b $08

|01B48D| TAY

|01B48E| DEC.b $B2
|01B490| BNE .next

|01B492| RTS

;===================================================================================================

RoomDraw_HammerPegSingle:
|01B493| PHX

|01B494| LDX.w $042C

|01B497| INC.w $042C
|01B49A| INC.w $042C

|01B49D| LDA.w #$4040
|01B4A0| STA.w $0500,X

|01B4A3| LDA.b $BA
|01B4A5| STA.w $0520,X

|01B4A8| TYA
|01B4A9| STA.w $0540,X

|01B4AC| LDA.b $BF
|01B4AE| CMP.w #$4000
|01B4B1| BNE .upper_layer

|01B4B3| TYA
|01B4B4| ORA.w #$2000
|01B4B7| STA.w $0540,X

.upper_layer
|01B4BA| LDA.w #$19D8
|01B4BD| STA.w $0560,X

|01B4C0| LDA.w #$19D9
|01B4C3| STA.w $0580,X

|01B4C6| LDA.w #$59D8
|01B4C9| STA.w $05A0,X

|01B4CC| LDA.w #$59D9
|01B4CF| STA.w $05C0,X

|01B4D2| PLX

|01B4D3| JMP.w RoomDraw_Rightwards2x2

;===================================================================================================

RoomDraw_PushableBlock:
|01B4D6| LDX.w $042C

|01B4D9| INC.w $042C
|01B4DC| INC.w $042C

|01B4DF| STZ.w $0500,X

|01B4E2| LDA.b $BA
|01B4E4| STA.w $0520,X

|01B4E7| TYA
|01B4E8| STA.w $0540,X

|01B4EB| AND.w #$3FFF
|01B4EE| TAY

|01B4EF| LDA.b [$BF],Y
|01B4F1| STA.w $0560,X

|01B4F4| LDA.b [$CB],Y
|01B4F6| STA.w $0580,X

|01B4F9| LDA.b [$C2],Y
|01B4FB| STA.w $05A0,X

|01B4FE| LDA.b [$CE],Y
|01B500| STA.w $05C0,X

|01B503| LDX.w #RoomDrawObjectData.obj0E52
|01B506| JMP.w RoomDraw_Rightwards2x2

;===================================================================================================

RoomDraw_LightableTorch:
|01B509| LDY.w $042E

|01B50C| STA.w $0540,Y

|01B50F| DEX
|01B510| DEX

|01B511| TXA
|01B512| STA.w $0520,Y

|01B515| INC.w $042E
|01B518| INC.w $042E

|01B51B| LDX.w #RoomDrawObjectData.obj0EC2

|01B51E| LDA.b $08
|01B520| ASL A
|01B521| BCC .dont_tally

|01B523| LDX.w #RoomDrawObjectData.obj0ECA

|01B526| LDA.w $045A
|01B529| CMP.w #$0003
|01B52C| BCS .dont_tally

|01B52E| INC.w $045A

.dont_tally
|01B531| STX.b $0C

|01B533| LDA.b $08
|01B535| AND.w #$3FFF
|01B538| TAY

|01B539| JMP.w RoomDraw_Rightwards2x2

;===================================================================================================
; FREE ROM: 0x24
;===================================================================================================
NULL_01B53C:
|01B53C| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|01B544| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|01B54C| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|01B554| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|01B55C| db $FF, $FF, $FF, $FF

;===================================================================================================

pool LoadRoomHeader

.camera_offset
|01B560| dw  256
|01B562| dw -256

endpool

;---------------------------------------------------------------------------------------------------

LoadRoomHeader:
|01B564| STZ.w $0642
|01B567| STZ.w $0646
|01B56A| STZ.w $0641

|01B56D| REP #$30

|01B56F| LDA.b $11
|01B571| AND.w #$00FF
|01B574| BNE .nonzero_submodule

|01B576| LDA.b $E2
|01B578| AND.w #$FE00
|01B57B| STA.w $062C

|01B57E| LDA.b $E8
|01B580| BRA .set_lower_bound_y

;---------------------------------------------------------------------------------------------------

.nonzero_submodule
|01B582| CMP.w #$0015
|01B585| BEQ .adjust_camera_x

|01B587| CMP.w #$0012
|01B58A| BCS .dont_adjust_camera_x

|01B58C| CMP.w #$0006
|01B58F| BCC .dont_adjust_camera_x

.adjust_camera_x
|01B591| LDA.b $E2
|01B593| CLC
|01B594| ADC.w #$0020

|01B597| BRA .set_lower_bound_x

.dont_adjust_camera_x
|01B599| LDA.b $67
|01B59B| AND.w #$000F
|01B59E| LSR A
|01B59F| CMP.w #$0002
|01B5A2| BCS .walking_vertically

|01B5A4| ASL A
|01B5A5| TAX

|01B5A6| LDA.b $E2
|01B5A8| CLC
|01B5A9| ADC.l .camera_offset,X

.set_lower_bound_x
|01B5AD| AND.w #$FE00
|01B5B0| STA.w $062C

|01B5B3| LDA.b $E8
|01B5B5| CLC
|01B5B6| ADC.w #$0020

|01B5B9| BRA .set_lower_bound_y

.walking_vertically
|01B5BB| LSR A
|01B5BC| LSR A
|01B5BD| ASL A
|01B5BE| TAX

|01B5BF| LDA.b $E2
|01B5C1| CLC
|01B5C2| ADC.w #$0020
|01B5C5| AND.w #$FE00
|01B5C8| STA.w $062C

|01B5CB| LDA.b $E8
|01B5CD| CLC
|01B5CE| ADC.l .camera_offset,X

.set_lower_bound_y
|01B5D2| AND.w #$FE00
|01B5D5| STA.w $062E

;---------------------------------------------------------------------------------------------------

|01B5D8| LDA.b $A0
|01B5DA| ASL A
|01B5DB| TAX

|01B5DC| LDA.l RoomHeaderPointers,X
|01B5E0| STA.b $0D

|01B5E2| SEP #$20
|01B5E4| REP #$10

|01B5E6| LDA.b #^RoomHeaderPointers
|01B5E8| STA.b $0F

|01B5EA| LDA.w $0414
|01B5ED| STA.l $7EC208

|01B5F1| LDY.w #$0000

; BG2PROP
|01B5F4| LDA.b [$0D],Y
|01B5F6| AND.b #$E0
|01B5F8| ASL A
|01B5F9| ROL A
|01B5FA| ROL A
|01B5FB| ROL A
|01B5FC| STA.w $0414

|01B5FF| LDA.b [$0D],Y
|01B601| AND.b #$1C
|01B603| LSR A
|01B604| LSR A
|01B605| STA.w $046C

|01B608| LDA.l $7EC005
|01B60C| STA.l $7EC006

|01B610| LDA.b [$0D],Y
|01B612| AND.b #$01
|01B614| STA.l $7EC005

; Palette
|01B618| REP #$20

|01B61A| INY

|01B61B| LDA.b [$0D],Y
|01B61D| AND.w #$00FF
|01B620| ASL A
|01B621| ASL A
|01B622| TAX

|01B623| SEP #$20

|01B625| LDA.l UnderworldPaletteSets+0,X
|01B629| STA.w $0AB6

|01B62C| LDA.l UnderworldPaletteSets+1,X
|01B630| STA.w $0AAC

|01B633| LDA.l UnderworldPaletteSets+2,X
|01B637| STA.w $0AAD

|01B63A| LDA.l UnderworldPaletteSets+3,X
|01B63E| STA.w $0AAE

; Block set
|01B641| INY

|01B642| LDA.b [$0D],Y
|01B644| STA.w $0AA2

; Sprite set
|01B647| INY

|01B648| LDA.b [$0D],Y
|01B64A| CLC
|01B64B| ADC.b #$40
|01B64D| STA.w $0AA3

; Layer effect
|01B650| INY

|01B651| LDA.b [$0D],Y
|01B653| STA.b $AD

; Room tag 1
|01B655| INY

|01B656| LDA.b [$0D],Y
|01B658| STA.b $AE

; Room tag 2
|01B65A| INY

|01B65B| LDA.b [$0D],Y
|01B65D| STA.b $AF

; PLANES1
|01B65F| INY

|01B660| LDA.b [$0D],Y
|01B662| AND.b #$03
|01B664| STA.w $063C

|01B667| LDA.b [$0D],Y
|01B669| AND.b #$0C
|01B66B| LSR A
|01B66C| LSR A
|01B66D| STA.w $063D

|01B670| LDA.b [$0D],Y
|01B672| AND.b #$30
|01B674| LSR A
|01B675| LSR A
|01B676| LSR A
|01B677| LSR A
|01B678| STA.w $063E

|01B67B| LDA.b [$0D],Y
|01B67D| AND.b #$C0
|01B67F| ASL A
|01B680| ROL A
|01B681| ROL A
|01B682| STA.w $063F

; PLANES2
|01B685| INY

|01B686| LDA.b [$0D],Y
|01B688| AND.b #$03
|01B68A| STA.w $0640

; Warp
|01B68D| INY

|01B68E| LDA.b [$0D],Y
|01B690| STA.l $7EC000

; Stairs 0
|01B694| INY

|01B695| LDA.b [$0D],Y
|01B697| STA.l $7EC001

; Stairs 1
|01B69B| INY

|01B69C| LDA.b [$0D],Y
|01B69E| STA.l $7EC002

; Stairs 2
|01B6A2| INY

|01B6A3| LDA.b [$0D],Y
|01B6A5| STA.l $7EC003

; Stairs 3
|01B6A9| INY

|01B6AA| LDA.b [$0D],Y
|01B6AC| STA.l $7EC004

;---------------------------------------------------------------------------------------------------

|01B6B0| REP #$30

|01B6B2| LDA.w #$0001
|01B6B5| STA.w $0468

|01B6B8| STZ.w $04BA

|01B6BB| LDA.b $A0
|01B6BD| ASL A
|01B6BE| CLC
|01B6BF| ADC.b $A0
|01B6C1| STA.w $0110

|01B6C4| TAX

|01B6C5| LDA.l RoomData_DoorDataPointers+1,X
|01B6C9| STA.b $B8

|01B6CB| LDA.l RoomData_DoorDataPointers+0,X
|01B6CF| STA.b $B7

|01B6D1| LDA.b $A0
|01B6D3| ASL A
|01B6D4| TAX

|01B6D5| LDA.l $7EF000,X
|01B6D9| AND.w #$F000
|01B6DC| STA.w $0400

|01B6DF| ORA.w #$0F00
|01B6E2| STA.w $068C

|01B6E5| LDA.l $7EF000,X
|01B6E9| AND.w #$0FF0
|01B6EC| ASL A
|01B6ED| ASL A
|01B6EE| ASL A
|01B6EF| ASL A
|01B6F0| STA.w $0402

|01B6F3| LDA.l $7EF000,X
|01B6F7| AND.w #$000F
|01B6FA| STA.w $0408

|01B6FD| LDX.w #$0000
|01B700| TXY

;---------------------------------------------------------------------------------------------------

.next_door
|01B701| STZ.w $19A0,X

|01B704| LDA.b [$B7],Y
|01B706| CMP.w #$FFFF
|01B709| BEQ .doors_done

|01B70B| STA.w $19A0,X

|01B70E| INY
|01B70F| INY

|01B710| INX
|01B711| INX

|01B712| BRA .next_door

;---------------------------------------------------------------------------------------------------

.doors_done
|01B714| LDA.b $A0
|01B716| DEC A
|01B717| TAX

|01B718| AND.w #$000F
|01B71B| CMP.w #$000F
|01B71E| BEQ .west_ignored

|01B720| LDA.w #$0024
|01B723| JSR CheckAdjacentRoomsForOpenDoors

.west_ignored
|01B726| LDA.b $A0
|01B728| INC A
|01B729| TAX

|01B72A| AND.w #$000F
|01B72D| BEQ .east_ignored

|01B72F| LDA.w #$0018
|01B732| JSR CheckAdjacentRoomsForOpenDoors

.east_ignored
|01B735| LDA.b $A0
|01B737| SEC
|01B738| SBC.w #$0010
|01B73B| TAX
|01B73C| BMI .south_ignored

|01B73E| LDA.w #$000C
|01B741| JSR CheckAdjacentRoomsForOpenDoors

.south_ignored
|01B744| LDA.b $A0
|01B746| CLC
|01B747| ADC.w #$0010
|01B74A| TAX

|01B74B| CMP.w #$0140 ; ROOM 0140+
|01B74E| BCS .north_ignored

|01B750| LDA.w #$0000
|01B753| JSR CheckAdjacentRoomsForOpenDoors

.north_ignored
|01B756| SEP #$30

;---------------------------------------------------------------------------------------------------

#EXIT_01B758:
|01B758| RTS

;===================================================================================================

CheckAdjacentRoomsForOpenDoors:
|01B759| STA.b $04

|01B75B| JSR LoadAdjacentRoomDoors

|01B75E| LDY.w #$0000

.next_door
|01B761| LDA.w $1110,Y
|01B764| CMP.w #$FFFF
|01B767| BEQ EXIT_01B758

|01B769| STA.b $02

|01B76B| LDX.b $04

|01B76D| AND.w #$00FF
|01B770| CMP.w PartnerDoorSelfLocation,X
|01B773| BEQ .match

|01B775| INX
|01B776| INX
|01B777| CMP.w PartnerDoorSelfLocation,X
|01B77A| BEQ .match

|01B77C| INX
|01B77D| INX
|01B77E| CMP.w PartnerDoorSelfLocation,X
|01B781| BEQ .match

|01B783| INX
|01B784| INX
|01B785| CMP.w PartnerDoorSelfLocation,X
|01B788| BEQ .match

|01B78A| INX
|01B78B| INX
|01B78C| CMP.w PartnerDoorSelfLocation,X
|01B78F| BEQ .match

|01B791| INX
|01B792| INX
|01B793| CMP.w PartnerDoorSelfLocation,X
|01B796| BNE .no_match

;---------------------------------------------------------------------------------------------------

.match
|01B798| LDA.w PartnerDoorLocation,X
|01B79B| STA.b $00

|01B79D| LDX.w #$0000

.try_next
|01B7A0| LDA.w $19A0,X
|01B7A3| AND.w #$00FF
|01B7A6| CMP.b $00
|01B7A8| BEQ .matching_partner

|01B7AA| INX
|01B7AB| INX
|01B7AC| CPX.w #$0010
|01B7AF| BNE .try_next

|01B7B1| BRA .no_match

;---------------------------------------------------------------------------------------------------

.matching_partner
|01B7B3| LDA.w $19A0,X
|01B7B6| AND.w #$FF00

|01B7B9| CMP.w #$3000 ; DOORTYPE 30
|01B7BC| BEQ .no_match

|01B7BE| CMP.w #$4400 ; DOORTYPE 44
|01B7C1| BEQ .shutter

|01B7C3| CMP.w #$1800 ; DOORTYPE 18
|01B7C6| BNE .not_shutter

.shutter
|01B7C8| LDA.b $0E
|01B7CA| CMP.b $A2
|01B7CC| BNE .no_match

|01B7CE| STZ.w $0468

|01B7D1| BRA .open_door

.not_shutter
|01B7D3| LDA.w $1100
|01B7D6| AND.w BitMasks,Y
|01B7D9| BEQ .no_match

.open_door
|01B7DB| LDA.w $068C
|01B7DE| ORA.w BitMasks,X
|01B7E1| STA.w $068C

.no_match
|01B7E4| INY
|01B7E5| INY
|01B7E6| CPY.w #$0010
|01B7E9| BEQ EXIT_01B7EE

|01B7EB| JMP.w .next_door

;---------------------------------------------------------------------------------------------------

#EXIT_01B7EE:
|01B7EE| RTS

;===================================================================================================

LoadAdjacentRoomDoors:
|01B7EF| STX.b $0E

|01B7F1| TXA
|01B7F2| ASL A
|01B7F3| CLC
|01B7F4| ADC.b $0E
|01B7F6| TAX

|01B7F7| LDA.l RoomData_DoorDataPointers+1,X
|01B7FB| STA.b $B8

|01B7FD| LDA.l RoomData_DoorDataPointers+0,X
|01B801| STA.b $B7

|01B803| LDA.b $0E
|01B805| ASL A
|01B806| TAX

|01B807| LDA.l $7EF000,X
|01B80B| AND.w #$F000
|01B80E| ORA.w #$0F00
|01B811| STA.w $1100

;---------------------------------------------------------------------------------------------------

|01B814| LDX.w #$0000
|01B817| TXY

.next_door
|01B818| LDA.b [$B7],Y
|01B81A| STA.w $1110,X

|01B81D| CMP.w #$FFFF
|01B820| BEQ EXIT_01B7EE

|01B822| AND.w #$FF00
|01B825| CMP.w #$4000 ; DOORTYPE 40
|01B828| BEQ .default

|01B82A| CMP.w #$0200 ; DOORTYPE 02
|01B82D| BCS .not_default

.default
|01B82F| LDA.w $1100
|01B832| ORA.w BitMasks,X
|01B835| STA.w $1100

.not_default
|01B838| INY
|01B839| INY

|01B83A| INX
|01B83B| INX

|01B83C| BRA .next_door

;===================================================================================================

ApplyRoomHolesOverlay:
|01B83E| REP #$30

|01B840| LDA.b $BA
|01B842| BNE .pointer_is_set

|01B844| STZ.w $045E

|01B847| LDA.w $04BA
|01B84A| ASL A
|01B84B| CLC
|01B84C| ADC.w $04BA
|01B84F| TAX

|01B850| LDA.l OverlayDataPointers+1,X
|01B854| STA.b $B8

|01B856| LDA.l OverlayDataPointers+0,X
|01B85A| STA.b $B7

|01B85C| JSR DrawRoomOverlay

|01B85F| REP #$30

|01B861| STZ.b $BA
|01B863| STZ.w $045E

;---------------------------------------------------------------------------------------------------

.pointer_is_set
|01B866| STZ.b $0C

.next
|01B868| LDY.b $BA

|01B86A| LDA.b [$B7],Y
|01B86C| CMP.w #$FFFF
|01B86F| BEQ .end

|01B871| STA.b $00

|01B873| SEP #$20

|01B875| LDA.b [$B7],Y
|01B877| AND.b #$FC
|01B879| STA.b $08

|01B87B| INY
|01B87C| INY

|01B87D| LDA.b $01
|01B87F| LSR A
|01B880| LSR A
|01B881| LSR A
|01B882| ROR.b $08
|01B884| STA.b $09

|01B886| INY
|01B887| STY.b $BA

|01B889| REP #$20

|01B88B| LDA.b $08
|01B88D| PHA

|01B88E| JSR PrepNextTilemapUpdateDMA

|01B891| PLA
|01B892| JSR ApplyOverlayStamp

|01B895| BRA .next

;---------------------------------------------------------------------------------------------------

.end
|01B897| LDY.b $0C

|01B899| LDA.w #$FFFF
|01B89C| STA.w $1100,Y

|01B89F| SEP #$30

|01B8A1| LDA.b #$01
|01B8A3| STA.b $18

|01B8A5| STZ.b $11

|01B8A7| RTL

;===================================================================================================

pool LoadNextObjectAttributeSet

.vectors
|01B8A8| dw LoadBasicObjectAttributes
|01B8AA| dw LoadBasicObjectAttributes_partial
|01B8AC| dw LoadComplexObjectAttributes
|01B8AE| dw LoadDoorObjectAttributes
|01B8B0| dw InitializePegAttributes
|01B8B2| dw EXIT_01B966

endpool

;---------------------------------------------------------------------------------------------------

LoadNextObjectAttributeSet:
|01B8B4| LDA.w $0200
|01B8B7| ASL A
|01B8B8| TAX

|01B8B9| JSR (.vectors,X)

|01B8BC| SEP #$30

|01B8BE| RTL

;===================================================================================================

LoadEveryObjectAttributeSet:
|01B8BF| REP #$20

|01B8C1| STZ.b $B2
|01B8C3| STZ.b $B4

|01B8C5| LDA.w #$1000
|01B8C8| STA.b $00

|01B8CA| JSR LoadBasicObjectAttributes_full

|01B8CD| SEP #$30

|01B8CF| JSR LoadComplexObjectAttributes
|01B8D2| JSR LoadDoorObjectAttributes

|01B8D5| LDA.l $7EC172
|01B8D9| BEQ .dont_flip

|01B8DB| JSL FlipCrystalPegAttributes

.dont_flip
|01B8DF| STZ.w $0200

|01B8E2| RTL

;===================================================================================================

LoadBasicObjectAttributes:
|01B8E3| REP #$20

|01B8E5| INC.w $0200

|01B8E8| STZ.b $B2
|01B8EA| STZ.b $B4

;===================================================================================================

LoadBasicObjectAttributes_partial:
|01B8EC| REP #$20

|01B8EE| LDA.w #$0040
|01B8F1| STA.b $00

;===================================================================================================

LoadBasicObjectAttributes_full:
|01B8F3| PHB

|01B8F4| LDX.b #$7E
|01B8F6| PHX
|01B8F7| PLB

|01B8F8| REP #$10

;---------------------------------------------------------------------------------------------------

.next
|01B8FA| LDX.b $B2

|01B8FC| LDA.l $7E2002,X
|01B900| AND.w #$03FF
|01B903| TAY

|01B904| LDA.w $7EFE00,Y
|01B907| STA.b $04

|01B909| LDA.l $7E2000,X
|01B90D| AND.w #$03FF
|01B910| TAY

|01B911| SEP #$20

;---------------------------------------------------------------------------------------------------

|01B913| LDA.w $7EFE00,Y
|01B916| CMP.b #$10
|01B918| BCC .dont_flip_a

|01B91A| CMP.b #$1C
|01B91C| BCS .dont_flip_a

|01B91E| LDA.l $7E2001,X
|01B922| ASL A
|01B923| ROL A
|01B924| ROL A
|01B925| AND.b #$03
|01B927| ORA.w $7EFE00,Y

.dont_flip_a
|01B92A| STA.b $02

|01B92C| LDA.b $04
|01B92E| CMP.b #$10
|01B930| BCC .dont_flip_b

|01B932| CMP.b #$1C
|01B934| BCS .dont_flip_b

|01B936| LDA.l $7E2003,X
|01B93A| ASL A
|01B93B| ROL A
|01B93C| ROL A
|01B93D| AND.b #$03
|01B93F| ORA.b $04

.dont_flip_b
|01B941| XBA

|01B942| LDA.b $02

|01B944| REP #$21

|01B946| LDX.b $B4

|01B948| STA.l $7F2000,X

|01B94C| INX
|01B94D| INX
|01B94E| STX.b $B4

|01B950| LDA.b $B2
|01B952| ADC.w #$0004
|01B955| STA.b $B2

|01B957| DEC.b $00
|01B959| BNE .next

;---------------------------------------------------------------------------------------------------

|01B95B| LDA.b $B4
|01B95D| CMP.w #$2000
|01B960| BNE .more_to_go

|01B962| INC.w $7E0200

.more_to_go
|01B965| PLB

;---------------------------------------------------------------------------------------------------

#EXIT_01B966:
|01B966| RTS

;===================================================================================================
; TODO verify all
LoadComplexObjectAttributes:
|01B967| REP #$30

|01B969| LDX.w $0432
|01B96C| BEQ .no_star_tiles

|01B96E| LDY.w #$0000
|01B971| LDA.w #$3B3B ; TILETYPE 3B

.next_star_tile
|01B974| LDX.w $06A0,Y

|01B977| STA.l $7F2000,X
|01B97B| STA.l $7F2040,X

|01B97F| INY
|01B980| INY
|01B981| CPY.w $0432
|01B984| BNE .next_star_tile

;---------------------------------------------------------------------------------------------------

.no_star_tiles
|01B986| LDA.w #$3030 ; TILETYPE 30
|01B989| STA.b $00

|01B98B| LDY.w #$0000

|01B98E| LDX.w $0438
|01B991| BEQ .no_intraroom_stairs_up

.next_intraroom_stairs_up
|01B993| LDX.w $06B0,Y

|01B996| LDA.w #$0000 ; TILETYPE 00
|01B999| STA.l $7F2081,X

|01B99D| LDA.w #$2626 ; TILETYPE 26
|01B9A0| STA.l $7F2001,X

|01B9A4| LDA.b $00
|01B9A6| STA.l $7F2041,X

|01B9AA| CLC
|01B9AB| ADC.w #$0101
|01B9AE| STA.b $00

|01B9B0| INY
|01B9B1| INY
|01B9B2| CPY.w $0438
|01B9B5| BNE .next_intraroom_stairs_up

;---------------------------------------------------------------------------------------------------

.no_intraroom_stairs_up
|01B9B7| CPY.w $047E
|01B9BA| BEQ .no_spiral_stairs_up_a

.next_spiral_stairs_up_a
|01B9BC| LDX.w $06B0,Y

|01B9BF| LDA.w #$5E5E ; TILETYPE 5E
|01B9C2| STA.l $7F2001,X
|01B9C6| STA.l $7F2081,X
|01B9CA| STA.l $7F20C1,X

|01B9CE| LDA.b $00
|01B9D0| STA.l $7F2041,X

|01B9D4| CLC
|01B9D5| ADC.w #$0101
|01B9D8| STA.b $00

|01B9DA| INY
|01B9DB| INY
|01B9DC| CPY.w $047E
|01B9DF| BNE .next_spiral_stairs_up_a

;---------------------------------------------------------------------------------------------------

.no_spiral_stairs_up_a
|01B9E1| CPY.w $0482
|01B9E4| BEQ .no_spiral_stairs_up_b

.next_spiral_stairs_up_b
|01B9E6| LDX.w $06B0,Y

|01B9E9| LDA.w #$5F5F ; TILETYPE 5F
|01B9EC| STA.l $7F2001,X
|01B9F0| STA.l $7F2081,X
|01B9F4| STA.l $7F20C1,X

|01B9F8| LDA.b $00
|01B9FA| STA.l $7F2041,X

|01B9FE| CLC
|01B9FF| ADC.w #$0101
|01BA02| STA.b $00

|01BA04| INY
|01BA05| INY
|01BA06| CPY.w $0482
|01BA09| BNE .next_spiral_stairs_up_b

;---------------------------------------------------------------------------------------------------

.no_spiral_stairs_up_b
|01BA0B| CPY.w $04A2
|01BA0E| BEQ .no_straight_stairs_up_north

.next_straight_stairs_up_north
|01BA10| LDX.w $06B0,Y

|01BA13| LDA.w #$0000 ; TILETYPE 00
|01BA16| STA.l $7F2081,X
|01BA1A| STA.l $7F20C1,X

|01BA1E| LDA.w #$3838 ; TILETYPE 38
|01BA21| STA.l $7F2001,X

|01BA25| LDA.b $00
|01BA27| STA.l $7F2041,X

|01BA2B| CLC
|01BA2C| ADC.w #$0101
|01BA2F| STA.b $00

|01BA31| INY
|01BA32| INY
|01BA33| CPY.w $04A2
|01BA36| BNE .next_straight_stairs_up_north

;---------------------------------------------------------------------------------------------------

.no_straight_stairs_up_north
|01BA38| CPY.w $04A4
|01BA3B| BEQ .no_straight_stairs_up_south

.next_straight_stairs_up_south
|01BA3D| LDX.w $06B0,Y

|01BA40| LDA.w #$0000 ; TILETYPE 00
|01BA43| STA.l $7F2001,X
|01BA47| STA.l $7F2041,X

|01BA4B| LDA.w #$3939 ; TILETYPE 39
|01BA4E| STA.l $7F20C1,X

|01BA52| LDA.b $00
|01BA54| STA.l $7F2081,X

|01BA58| CLC
|01BA59| ADC.w #$0101
|01BA5C| STA.b $00

|01BA5E| INY
|01BA5F| INY
|01BA60| CPY.w $04A4
|01BA63| BNE .next_straight_stairs_up_south

;---------------------------------------------------------------------------------------------------

.no_straight_stairs_up_south
; accounts for:
;   TILETYPE 34
;   TILETYPE 35
;   TILETYPE 36
;   TILETYPE 37
|01BA65| LDA.b $00
|01BA67| AND.w #$0707
|01BA6A| ORA.w #$3434
|01BA6D| STA.b $00

|01BA6F| CPY.w $043A
|01BA72| BEQ .no_intra_stairs_south

.next_intra_stairs_south
|01BA74| LDX.w $06B0,Y

|01BA77| LDA.w #$2626 ; TILETYPE 26
|01BA7A| STA.l $7F20C1,X

|01BA7E| LDA.b $00
|01BA80| STA.l $7F2081,X

|01BA84| CLC
|01BA85| ADC.w #$0101
|01BA88| STA.b $00

|01BA8A| INY
|01BA8B| INY
|01BA8C| CPY.w $043A
|01BA8F| BNE .next_intra_stairs_south

;---------------------------------------------------------------------------------------------------

.no_intra_stairs_south
|01BA91| CPY.w $0480
|01BA94| BEQ .no_spiral_stairs_down_north_a

.next_spiral_stairs_down_north_a
|01BA96| LDX.w $06B0,Y

|01BA99| LDA.w #$5E5E ; TILETYPE 5E
|01BA9C| STA.l $7F2001,X
|01BAA0| STA.l $7F2081,X
|01BAA4| STA.l $7F20C1,X

|01BAA8| LDA.b $00
|01BAAA| STA.l $7F2041,X

|01BAAE| CLC
|01BAAF| ADC.w #$0101
|01BAB2| STA.b $00

|01BAB4| INY
|01BAB5| INY
|01BAB6| CPY.w $0480
|01BAB9| BNE .next_spiral_stairs_down_north_a

;---------------------------------------------------------------------------------------------------

.no_spiral_stairs_down_north_a
|01BABB| CPY.w $0484
|01BABE| BEQ .no_spiral_stairs_down_north_b

.next_spiral_stairs_down_north_b
|01BAC0| LDX.w $06B0,Y

|01BAC3| LDA.w #$5F5F ; TILETYPE 5F
|01BAC6| STA.l $7F2001,X
|01BACA| STA.l $7F2081,X
|01BACE| STA.l $7F20C1,X

|01BAD2| LDA.b $00
|01BAD4| STA.l $7F2041,X

|01BAD8| CLC
|01BAD9| ADC.w #$0101
|01BADC| STA.b $00

|01BADE| INY
|01BADF| INY
|01BAE0| CPY.w $0484
|01BAE3| BNE .next_spiral_stairs_down_north_b

;---------------------------------------------------------------------------------------------------

.no_spiral_stairs_down_north_b
|01BAE5| CPY.w $04A6
|01BAE8| BEQ .no_straight_stairs_down_north

.next_straight_stairs_down_north
|01BAEA| LDX.w $06B0,Y

|01BAED| LDA.w #$0000 ; TILETYPE 00
|01BAF0| STA.l $7F2081,X
|01BAF4| STA.l $7F20C1,X

|01BAF8| LDA.w #$3838 ; TILETYPE 38
|01BAFB| STA.l $7F2001,X

|01BAFF| LDA.b $00
|01BB01| STA.l $7F2041,X

|01BB05| CLC
|01BB06| ADC.w #$0101
|01BB09| STA.b $00

|01BB0B| INY
|01BB0C| INY
|01BB0D| CPY.w $04A6
|01BB10| BNE .next_straight_stairs_down_north

;---------------------------------------------------------------------------------------------------

.no_straight_stairs_down_north
|01BB12| CPY.w $04A8
|01BB15| BEQ .no_straight_stairs_down_south

.next_straight_stairs_down_south
|01BB17| LDX.w $06B0,Y

|01BB1A| LDA.w #$0000 ; TILETYPE 00
|01BB1D| STA.l $7F2001,X
|01BB21| STA.l $7F2041,X

|01BB25| LDA.w #$3939 ; TILETYPE 39
|01BB28| STA.l $7F20C1,X

|01BB2C| LDA.b $00
|01BB2E| STA.l $7F2081,X

|01BB32| CLC
|01BB33| ADC.w #$0101
|01BB36| STA.b $00

|01BB38| INY
|01BB39| INY
|01BB3A| CPY.w $04A8
|01BB3D| BNE .next_straight_stairs_down_south

;---------------------------------------------------------------------------------------------------

.no_straight_stairs_down_south
|01BB3F| LDY.w #$0000 ; EG0
|01BB42| STY.b $02

|01BB44| LDA.w #$1F1F ; TILETYPE 1F
|01BB47| LDX.w $043C
|01BB4A| BNE .some_auto_north_multilayer_stairs

|01BB4C| INC.b $02 ; strong EG

|01BB4E| LDA.w #$1E1E ; TILETYPE 1E
|01BB51| LDX.w $043E
|01BB54| BNE .some_auto_north_multilayer_stairs

|01BB56| LDX.w $0440
|01BB59| BEQ .none_of_these_water_stairs

|01BB5B| INC.b $02 ; weak EG

|01BB5D| LDA.w #$1D1D ; TILETYPE 1D

.some_auto_north_multilayer_stairs
|01BB60| STA.b $00

|01BB62| LDA.b $02
|01BB64| STA.w $044A

|01BB67| STX.b $02

;---------------------------------------------------------------------------------------------------

.next_of_these_water_stairs
|01BB69| LDX.w $06B8,Y

|01BB6C| LDA.w #$0002 ; TILETYPE 02, TILETYPE 00
|01BB6F| STA.l $7F2000,X
|01BB73| STA.l $7F30C0,X

|01BB77| XBA
|01BB78| STA.l $7F2002,X
|01BB7C| STA.l $7F30C2,X

|01BB80| LDA.w #$0001 ; TILETYPE 01, TILETYPE 00
|01BB83| STA.l $7F2040,X
|01BB87| STA.l $7F3080,X

|01BB8B| XBA
|01BB8C| STA.l $7F2042,X
|01BB90| STA.l $7F3082,X

|01BB94| LDA.b $00
|01BB96| STA.l $7F2041,X
|01BB9A| STA.l $7F3041,X
|01BB9E| STA.l $7F2081,X
|01BBA2| STA.l $7F3081,X

|01BBA6| INY
|01BBA7| INY
|01BBA8| CPY.b $02
|01BBAA| BNE .next_of_these_water_stairs

;---------------------------------------------------------------------------------------------------

.none_of_these_water_stairs
|01BBAC| CPY.w $0448
|01BBAF| BEQ .no_water_overlay_a

|01BBB1| LDA.w #$0002 ; weak EG
|01BBB4| STA.w $044A

.next_water_overlay_a
|01BBB7| LDX.w $06B8,Y

|01BBBA| LDA.w #$0A03 ; TILETYPE 03, TILETYPE 0A
|01BBBD| STA.l $7F2000,X
|01BBC1| STA.l $7F3000,X

|01BBC5| XBA
|01BBC6| STA.l $7F2002,X
|01BBCA| STA.l $7F3002,X

|01BBCE| LDA.w #$0803 ; TILETYPE 03, TILETYPE 08
|01BBD1| STA.l $7F2040,X

|01BBD5| XBA
|01BBD6| STA.l $7F2042,X

|01BBDA| INY
|01BBDB| INY
|01BBDC| CPY.w $0448
|01BBDF| BNE .next_water_overlay_a

;---------------------------------------------------------------------------------------------------

.no_water_overlay_a
|01BBE1| LDY.w #$0000
|01BBE4| LDX.w $0442
|01BBE7| BEQ .no_water_overlay_a2

|01BBE9| LDA.w #$0002 ; weak EG
|01BBEC| STA.w $044A

.next_water_overlay_a2
|01BBEF| LDX.w $06B8,Y

|01BBF2| LDA.w #$0003 ; TILETYPE 03, TILETYPE 00
|01BBF5| STA.l $7F2000,X

|01BBF9| XBA
|01BBFA| STA.l $7F2002,X

|01BBFE| LDA.w #$0A03 ; TILETYPE 03, TILETYPE 0A
|01BC01| STA.l $7F3000,X

|01BC05| XBA
|01BC06| STA.l $7F3002,X

|01BC0A| LDA.w #$0808 ; TILETYPE 08
|01BC0D| STA.l $7F2040,X
|01BC11| STA.l $7F2042,X

|01BC15| INY
|01BC16| INY
|01BC17| CPY.w $0442
|01BC1A| BNE .next_water_overlay_a2

;---------------------------------------------------------------------------------------------------

.no_water_overlay_a2
|01BC1C| CPY.w $0444
|01BC1F| BEQ .no_water_ladders

|01BC21| LDA.w #$0002 ; weak EG
|01BC24| STA.w $044A

.next_water_ladder
|01BC27| LDX.w $06B8,Y

|01BC2A| LDA.w #$0003 ; TILETYPE 03, TILETYPE 00
|01BC2D| STA.l $7F2000,X

|01BC31| XBA
|01BC32| STA.l $7F2002,X

|01BC36| LDA.w #$0A03 ; TILETYPE 03, TILETYPE 0A
|01BC39| STA.l $7F3000,X

|01BC3D| XBA
|01BC3E| STA.l $7F3002,X

|01BC42| INY
|01BC43| INY
|01BC44| CPY.w $0444
|01BC47| BNE .next_water_ladder

;---------------------------------------------------------------------------------------------------

.no_water_ladders
|01BC49| LDY.w #$0000

|01BC4C| LDX.w $042C
|01BC4F| BEQ .no_manipulables

|01BC51| LDA.w #$7070 ; TILETYPE 70
|01BC54| STA.b $00

.next_manipulable
|01BC56| LDA.w $0500,Y
|01BC59| AND.w #$00F0
|01BC5C| CMP.w #$0030
|01BC5F| BEQ .skip_manip

|01BC61| LDA.w $0540,Y
|01BC64| AND.w #$3FFF
|01BC67| LSR A
|01BC68| TAX

|01BC69| LDA.b $00
|01BC6B| STA.l $7F2000,X
|01BC6F| STA.l $7F2040,X

.skip_manip
|01BC73| LDA.b $00
|01BC75| CLC
|01BC76| ADC.w #$0101
|01BC79| STA.b $00

|01BC7B| INY
|01BC7C| INY
|01BC7D| CPY.w $042C
|01BC80| BNE .next_manipulable

;---------------------------------------------------------------------------------------------------

.no_manipulables
|01BC82| CPY.w $042E
|01BC85| BEQ .no_torches

|01BC87| STZ.b $04

|01BC89| LDA.w #$C0C0 ; TILETYPE C0
|01BC8C| STA.b $00

.next_torch
|01BC8E| LDA.w $0540,Y
|01BC91| AND.w #$3FFF
|01BC94| LSR A
|01BC95| TAX

|01BC96| LDA.b $00
|01BC98| STA.l $7F2000,X
|01BC9C| STA.l $7F2040,X

|01BCA0| AND.w #$EFEF
|01BCA3| CLC
|01BCA4| ADC.w #$0101
|01BCA7| STA.b $00

|01BCA9| INY
|01BCAA| INY
|01BCAB| CPY.w $042E
|01BCAE| BNE .next_torch

|01BCB0| LDA.b $04
|01BCB2| STA.w $042E

;---------------------------------------------------------------------------------------------------

.no_torches
|01BCB5| LDA.w #$5858 ; TILETYPE 58
|01BCB8| STA.b $00

|01BCBA| LDY.w #$0000

|01BCBD| LDX.w $0496
|01BCC0| BEQ .no_chest

;---------------------------------------------------------------------------------------------------

|01BCC2| LDA.b $AE
|01BCC4| AND.w #$00FF
|01BCC7| CMP.w #$0027 ; ROOMTAG 27
|01BCCA| BEQ .hidden_chests

|01BCCC| CMP.w #$003C ; ROOMTAG 3C
|01BCCF| BEQ .hidden_chests

|01BCD1| CMP.w #$003E ; ROOMTAG 3E
|01BCD4| BEQ .hidden_chests

|01BCD6| CMP.w #$0029 ; ROOMTAG 29
|01BCD9| BCC .check_tag_2

|01BCDB| CMP.w #$0033 ; ROOMTAG 33
|01BCDE| BCC .hidden_chests

;---------------------------------------------------------------------------------------------------

.check_tag_2
|01BCE0| LDA.b $AF
|01BCE2| AND.w #$00FF
|01BCE5| CMP.w #$0027 ; ROOMTAG 27
|01BCE8| BEQ .hidden_chests

|01BCEA| CMP.w #$003C ; ROOMTAG 3C
|01BCED| BEQ .hidden_chests

|01BCEF| CMP.w #$003E ; ROOMTAG 3E
|01BCF2| BEQ .hidden_chests

|01BCF4| CMP.w #$0029 ; ROOMTAG 29
|01BCF7| BCC .no_hidden_chests

|01BCF9| CMP.w #$0033 ; ROOMTAG 33
|01BCFC| BCC .hidden_chests

.no_hidden_chests
|01BCFE| JSR SetChestAttributes

;---------------------------------------------------------------------------------------------------

.no_chest
|01BD01| CPY.w $0498
|01BD04| BEQ .hidden_chests

.next_big_key_lock
|01BD06| LDA.w $06E0,Y
|01BD09| ORA.w #$8000
|01BD0C| STA.w $06E0,Y

|01BD0F| AND.w #$7FFF
|01BD12| LSR A
|01BD13| TAX

|01BD14| LDA.b $00
|01BD16| STA.l $7F2000,X
|01BD1A| STA.l $7F2040,X

|01BD1E| CLC
|01BD1F| ADC.w #$0101
|01BD22| STA.b $00

|01BD24| INY
|01BD25| INY
|01BD26| CPY.w $0498
|01BD29| BNE .next_big_key_lock

;---------------------------------------------------------------------------------------------------

.hidden_chests
|01BD2B| LDY.w #$0000 ; EG0
|01BD2E| STY.b $02

|01BD30| LDA.w #$3F3F ; TILETYPE 3F
|01BD33| LDX.w $049A
|01BD36| BNE .some_auto_south_stairs

|01BD38| INC.b $02 ; strong EG

|01BD3A| LDA.w #$3E3E ; TILETYPE 3E
|01BD3D| LDX.w $049C
|01BD40| BNE .some_auto_south_stairs

|01BD42| LDX.w $049E
|01BD45| BEQ .no_auto_south_stairs

|01BD47| INC.b $02 ; weak EG

|01BD49| LDA.w #$3D3D ; TILETYPE 3D

.some_auto_south_stairs
|01BD4C| STA.b $00

|01BD4E| LDA.b $02
|01BD50| STA.w $044A

|01BD53| STX.b $02

.next_auto_south_stairs
|01BD55| LDX.w $06EC,Y

|01BD58| LDA.w #$0002 ; TILETYPE 02, TILETYPE 00
|01BD5B| STA.l $7F3000,X
|01BD5F| STA.l $7F20C0,X

|01BD63| LDA.w #$0001 ; TILETYPE 01, TILETYPE 00
|01BD66| STA.l $7F3040,X
|01BD6A| STA.l $7F2080,X

|01BD6E| LDA.w #$0200 ; TILETYPE 00, TILETYPE 02
|01BD71| STA.l $7F3002,X
|01BD75| STA.l $7F20C2,X

|01BD79| LDA.w #$0100 ; TILETYPE 00, TILETYPE 01
|01BD7C| STA.l $7F3042,X
|01BD80| STA.l $7F2082,X

|01BD84| LDA.b $00
|01BD86| STA.l $7F2041,X
|01BD8A| STA.l $7F3041,X
|01BD8E| STA.l $7F2081,X
|01BD92| STA.l $7F3081,X

|01BD96| INY
|01BD97| INY
|01BD98| CPY.b $02
|01BD9A| BNE .next_auto_south_stairs

;---------------------------------------------------------------------------------------------------

.no_auto_south_stairs
|01BD9C| LDY.w #$0000

|01BD9F| LDX.w $04AE
|01BDA2| BEQ .no_south_merged_auto_stairs

|01BDA4| LDA.w #$0002 ; weak EG
|01BDA7| STA.w $044A

.next_south_merged_auto_stairs
|01BDAA| LDX.w $06EC,Y

|01BDAD| LDA.w #$0A03 ; TILETYPE 03, TILETYPE 0A
|01BDB0| STA.l $7F30C0,X

|01BDB4| XBA
|01BDB5| STA.l $7F30C2,X

|01BDB9| LDA.w #$0003 ; TILETYPE 03, TILETYPE 00
|01BDBC| STA.l $7F20C0,X

|01BDC0| XBA
|01BDC1| STA.l $7F20C2,X

|01BDC5| LDA.w #$0808 ; TILETYPE 08
|01BDC8| STA.l $7F2080,X
|01BDCC| STA.l $7F2082,X

|01BDD0| INY
|01BDD1| INY
|01BDD2| CPY.w $04AE
|01BDD5| BNE .next_south_merged_auto_stairs

;---------------------------------------------------------------------------------------------------

.no_south_merged_auto_stairs
|01BDD7| INC.w $0200

|01BDDA| RTS

;===================================================================================================

SetChestAttributes:
.next
|01BDDB| LDA.w $06E0,Y
|01BDDE| BEQ .to_next

|01BDE0| AND.w #$7FFF
|01BDE3| LSR A
|01BDE4| TAX

|01BDE5| LDA.b $00
|01BDE7| STA.l $7F2000,X
|01BDEB| STA.l $7F2040,X

|01BDEF| LDA.w $06E0,Y
|01BDF2| ASL A
|01BDF3| BCC .to_next

|01BDF5| LSR A
|01BDF6| STA.w $06E0,Y

|01BDF9| LDA.b $00
|01BDFB| STA.l $7F2042,X
|01BDFF| STA.l $7F2080,X
|01BE03| STA.l $7F2082,X

.to_next
|01BE07| LDA.b $00
|01BE09| CLC
|01BE0A| ADC.w #$0101
|01BE0D| STA.b $00

|01BE0F| INY
|01BE10| INY
|01BE11| CPY.w $0496
|01BE14| BNE .next

|01BE16| RTS

;===================================================================================================

LoadDoorObjectAttributes:
|01BE17| REP #$30

|01BE19| LDY.w #$0000

.next
|01BE1C| LDA.w $19A0,Y
|01BE1F| BEQ .skip

|01BE21| JSR LoadSingleDoorAttribute

.skip
|01BE24| INY
|01BE25| INY
|01BE26| CPY.w #$0020
|01BE29| BNE .next

;---------------------------------------------------------------------------------------------------

|01BE2B| JSR LoadSingleDoorTileType
|01BE2E| JSR ChangeDoorToSwitch

|01BE31| INC.w $0200

|01BE34| RTS

;===================================================================================================

LoadSingleDoorAttribute:
|01BE35| LDA.w $1980,Y
|01BE38| AND.w #$00FE
|01BE3B| STA.b $02

|01BE3D| BEQ .apply_doorway

|01BE3F| CMP.w #$0006 ; DOORTYPE 06
|01BE42| BEQ .apply_doorway

|01BE44| CMP.w #$0012 ; DOORTYPE 12
|01BE47| BEQ .apply_doorway

|01BE49| CMP.w #$000A ; DOORTYPE 0A
|01BE4C| BEQ .apply_doorway

|01BE4E| CMP.w #$000C ; DOORTYPE 0C
|01BE51| BEQ .exit_or_lower_layer

|01BE53| CMP.w #$000E ; DOORTYPE 0E
|01BE56| BEQ .apply_doorway

|01BE58| CMP.w #$0010 ; DOORTYPE 10
|01BE5B| BEQ .exit_or_lower_layer

|01BE5D| CMP.w #$0004 ; DOORTYPE 04
|01BE60| BEQ .exit_or_lower_layer

|01BE62| CMP.w #$0002 ; DOORTYPE 02
|01BE65| BEQ .exit_or_lower_layer

|01BE67| CMP.w #$0008 ; DOORTYPE 08
|01BE6A| BNE .not_exit_or_lower_layer

.exit_or_lower_layer
|01BE6C| JMP.w AddFullLongDoorwayProps

.not_exit_or_lower_layer
|01BE6F| CMP.w #$0030 ; DOORTYPE 30
|01BE72| BNE .not_exploding_wall

|01BE74| JMP.w EXIT_01BFB2

.not_exploding_wall
|01BE77| CMP.w #$0040 ; DOORTYPE 40
|01BE7A| BCC .normalish_doors

|01BE7C| JMP.w AddDoorwayPropsForWeirdos

.normalish_doors
|01BE7F| CMP.w #$0018 ; DOORTYPE 18
|01BE82| BEQ .shutter_door

|01BE84| CMP.w #$0044 ; DOORTYPE 44
|01BE87| BEQ .shutter_door ; this seems impossible to hit, due to the CMP for high doors

|01BE89| TYA
|01BE8A| AND.w #$000F

|01BE8D| BRA .check_door_mask

.shutter_door
|01BE8F| TYA
|01BE90| AND.w #$00FF

.check_door_mask
|01BE93| TAX

|01BE94| LDA.w $068C
|01BE97| AND.w BitMasks,X
|01BE9A| BNE .apply_doorway

|01BE9C| SEP #$20

|01BE9E| TYA
|01BE9F| LSR A
|01BEA0| ORA.b #$F0
|01BEA2| STA.b $00
|01BEA4| STA.b $01

|01BEA6| REP #$20

|01BEA8| LDA.w $19A0,Y
|01BEAB| LSR A
|01BEAC| TAX

|01BEAD| LDA.b $00
|01BEAF| STA.l $7F2041,X
|01BEB3| STA.l $7F2081,X

;---------------------------------------------------------------------------------------------------

#EXIT_01BEB7:
|01BEB7| RTS

;---------------------------------------------------------------------------------------------------

.apply_doorway
|01BEB8| LDX.b $02
|01BEBA| CPX.w #$0020 ; DOORTYPE 20
|01BEBD| BCC .has_doorway

|01BEBF| CPX.w #$0028 ; DOORTYPE 28
|01BEC2| BCC EXIT_01BEB7

.has_doorway
|01BEC4| LDA.w DoorwayTileProperties,X
|01BEC7| STA.b $00

|01BEC9| LDA.w $19C0,Y
|01BECC| AND.w #$0003
|01BECF| BNE .not_north_door

|01BED1| LDA.w $19A0,Y
|01BED4| CMP.w $19E2
|01BED7| BEQ .is_entrance

|01BED9| CMP.w $19E4
|01BEDC| BEQ .is_entrance

|01BEDE| CMP.w $19E6
|01BEE1| BEQ .is_entrance

|01BEE3| CMP.w $19E8
|01BEE6| BNE .not_entrance

.is_entrance
|01BEE8| LDX.w #$8E8E ; TILETYPE 8E
|01BEEB| STX.b $00

.not_entrance
|01BEED| LSR A
|01BEEE| AND.w #$783F
|01BEF1| TAX

|01BEF2| LDA.b $00
|01BEF4| STA.l $7F2001,X
|01BEF8| STA.l $7F2041,X
|01BEFC| STA.l $7F2081,X
|01BF00| STA.l $7F20C1,X
|01BF04| STA.l $7F2101,X
|01BF08| STA.l $7F2141,X
|01BF0C| STA.l $7F2181,X

|01BF10| LDA.w #$0000 ; TILETYPE 00
|01BF13| STA.l $7F21C1,X

|01BF17| RTS

;---------------------------------------------------------------------------------------------------

.not_north_door
|01BF18| CMP.w #$0001
|01BF1B| BNE .not_south_door

|01BF1D| LDA.w $19A0,Y
|01BF20| CPX.w #$000A ; DOORTYPE 0A
|01BF23| BEQ .is_entrance_b

|01BF25| CPX.w #$000E ; DOORTYPE 0E
|01BF28| BEQ .is_entrance_b

|01BF2A| CMP.w $19E2
|01BF2D| BEQ .is_entrance_b

|01BF2F| CMP.w $19E4
|01BF32| BEQ .is_entrance_b

|01BF34| CMP.w $19E6
|01BF37| BEQ .is_entrance_b

|01BF39| CMP.w $19E8
|01BF3C| BNE .not_entrance_b

.is_entrance_b
|01BF3E| LDX.w #$8E8E ; TILETYPE 8E
|01BF41| STX.b $00

.not_entrance_b
|01BF43| LSR A
|01BF44| TAX

|01BF45| LDA.b $00
|01BF47| STA.l $7F2041,X
|01BF4B| STA.l $7F2081,X
|01BF4F| STA.l $7F20C1,X
|01BF53| STA.l $7F2101,X
|01BF57| STA.l $7F2141,X

|01BF5B| RTS

;---------------------------------------------------------------------------------------------------

.not_south_door
|01BF5C| CMP.w #$0002
|01BF5F| BNE .not_west_door

|01BF61| LDA.w $19A0,Y
|01BF64| LSR A
|01BF65| AND.w #$FFE0
|01BF68| TAX

|01BF69| LDA.b $00
|01BF6B| CLC
|01BF6C| ADC.w #$0101
|01BF6F| STA.l $7F2040,X
|01BF73| STA.l $7F2042,X
|01BF77| STA.l $7F2080,X
|01BF7B| STA.l $7F2082,X

|01BF7F| AND.w #$00FF
|01BF82| STA.l $7F2044,X
|01BF86| STA.l $7F2084,X

|01BF8A| RTS

;---------------------------------------------------------------------------------------------------

.not_west_door
|01BF8B| LDA.w $19A0,Y
|01BF8E| LSR A
|01BF8F| TAX

|01BF90| LDA.b $00
|01BF92| CLC
|01BF93| ADC.w #$0101
|01BF96| STA.l $7F2042,X
|01BF9A| STA.l $7F2044,X
|01BF9E| STA.l $7F2082,X
|01BFA2| STA.l $7F2084,X

|01BFA6| AND.w #$FF00
|01BFA9| STA.l $7F2040,X
|01BFAD| STA.l $7F2080,X

|01BFB1| RTS

;---------------------------------------------------------------------------------------------------

#EXIT_01BFB2:
|01BFB2| RTS

;===================================================================================================

UNREACHABLE_01BFB3:
|01BFB3| TYA
|01BFB4| AND.w #$000F
|01BFB7| TAX

|01BFB8| LDA.w $068C
|01BFBB| AND.w BitMasks,X
|01BFBE| BNE LoadBlastWallAttribute

|01BFC0| RTS

;===================================================================================================

LoadBlastWallAttribute:
|01BFC1| LDA.w $19C0,Y
|01BFC4| AND.w #$0002
|01BFC7| BNE .horizontal

;---------------------------------------------------------------------------------------------------

.vertical
|01BFC9| LDA.w $19A0,Y
|01BFCC| LSR A
|01BFCD| TAX

|01BFCE| LDA.w #$000C
|01BFD1| STA.b $00

.vertical_next
|01BFD3| LDA.w #$0102 ; TILETYPE 02, TILETYPE 01
|01BFD6| STA.l $7F2000,X

|01BFDA| LDA.w #$0000 ; TILETYPE 00
|01BFDD| STA.l $7F2002,X
|01BFE1| STA.l $7F2004,X
|01BFE5| STA.l $7F2006,X
|01BFE9| STA.l $7F2008,X

|01BFED| STA.l $7F200A,X
|01BFF1| STA.l $7F200C,X
|01BFF5| STA.l $7F200E,X
|01BFF9| STA.l $7F2010,X

|01BFFD| STA.l $7F2012,X

|01C001| LDA.w #$0201 ; TILETYPE 01, TILETYPE 02
|01C004| STA.l $7F2014,X

|01C008| TXA
|01C009| CLC
|01C00A| ADC.w #$0040
|01C00D| TAX

|01C00E| DEC.b $00
|01C010| BNE .vertical_next

|01C012| RTS

;---------------------------------------------------------------------------------------------------

.horizontal
|01C013| LDA.w $19A0,Y
|01C016| LSR A
|01C017| TAX

|01C018| LDA.w #$0005
|01C01B| STA.b $00

.horizontal_next
|01C01D| LDA.w #$0101 ; TILETYPE 01
|01C020| STA.l $7F2000,X
|01C024| STA.l $7F2540,X

|01C028| LDA.w #$0202 ; TILETYPE 02
|01C02B| STA.l $7F2040,X
|01C02F| STA.l $7F2500,X

|01C033| LDA.w #$0000 ; TILETYPE 00
|01C036| STA.l $7F2080,X
|01C03A| STA.l $7F20C0,X
|01C03E| STA.l $7F2100,X

|01C042| STA.l $7F2140,X
|01C046| STA.l $7F2180,X
|01C04A| STA.l $7F21C0,X

|01C04E| STA.l $7F2200,X
|01C052| STA.l $7F2240,X
|01C056| STA.l $7F2280,X

|01C05A| STA.l $7F22C0,X
|01C05E| STA.l $7F2300,X
|01C062| STA.l $7F2340,X

|01C066| STA.l $7F2380,X
|01C06A| STA.l $7F23C0,X
|01C06E| STA.l $7F2400,X

|01C072| STA.l $7F2440,X
|01C076| STA.l $7F2480,X
|01C07A| STA.l $7F24C0,X

|01C07E| INX
|01C07F| INX
|01C080| DEC.b $00
|01C082| BNE .horizontal_next

|01C084| RTS

;===================================================================================================
; TODO better name
AddDoorwayPropsForWeirdos:
|01C085| CMP.w #$0040 ; DOORTYPE 40
|01C088| BEQ AddFullLongDoorwayProps

|01C08A| CMP.w #$0046 ; DOORTYPE 46
|01C08D| BEQ AddFullLongDoorwayProps

|01C08F| TYA
|01C090| AND.w #$00FF
|01C093| TAX

|01C094| LDA.w $068C
|01C097| AND.w BitMasks,X
|01C09A| BNE AddFullLongDoorwayProps

|01C09C| SEP #$20

|01C09E| TYA
|01C09F| LSR A
|01C0A0| ORA.b #$F0
|01C0A2| STA.b $00
|01C0A4| STA.b $01

|01C0A6| REP #$20

|01C0A8| LDA.w $19A0,Y
|01C0AB| LSR A
|01C0AC| TAX

|01C0AD| LDA.b $00
|01C0AF| STA.l $7F2041,X
|01C0B3| STA.l $7F2081,X

|01C0B7| RTS

;===================================================================================================

AddFullLongDoorwayProps:
|01C0B8| LDX.b $02

|01C0BA| LDA.w DoorwayTileProperties,X
|01C0BD| STA.b $00

|01C0BF| LDA.w $19C0,Y
|01C0C2| AND.w #$0003
|01C0C5| BNE .not_north_door

|01C0C7| LDA.w $19A0,Y
|01C0CA| LSR A
|01C0CB| AND.w #$783F
|01C0CE| TAX

|01C0CF| LDA.b $00
|01C0D1| STA.l $7F2001,X
|01C0D5| STA.l $7F2041,X
|01C0D9| STA.l $7F2081,X
|01C0DD| STA.l $7F20C1,X

|01C0E1| STA.l $7F2101,X
|01C0E5| STA.l $7F2141,X
|01C0E9| STA.l $7F2181,X
|01C0ED| STA.l $7F21C1,X

|01C0F1| STA.l $7F2201,X
|01C0F5| STA.l $7F2241,X

|01C0F9| RTS

;---------------------------------------------------------------------------------------------------

.not_north_door
|01C0FA| CMP.w #$0001
|01C0FD| BNE .not_south_door

|01C0FF| CPX.w #$000C ; DOORTYPE 0C
|01C102| BEQ .is_entrance

|01C104| CPX.w #$0010 ; DOORTYPE 10
|01C107| BEQ .is_entrance

|01C109| CPX.w #$0004 ; DOORTYPE 04
|01C10C| BEQ .is_entrance

|01C10E| LDA.w $19A0,Y
|01C111| AND.w #$1FFF
|01C114| CMP.w $19E2
|01C117| BEQ .is_entrance

|01C119| CMP.w $19E4
|01C11C| BEQ .is_entrance

|01C11E| CMP.w $19E6
|01C121| BEQ .is_entrance

|01C123| CMP.w $19E8
|01C126| BNE .not_entrance

.is_entrance
|01C128| LDX.w #$8E8E ; TILETYPE 8E
|01C12B| STX.b $00

.not_entrance
|01C12D| LDA.w $19A0,Y
|01C130| LSR A
|01C131| CLC
|01C132| ADC.w #$0040
|01C135| TAX

|01C136| LDA.b $00
|01C138| STA.l $7F2001,X
|01C13C| STA.l $7F2041,X
|01C140| STA.l $7F2081,X
|01C144| STA.l $7F20C1,X

|01C148| STA.l $7F2101,X
|01C14C| STA.l $7F2141,X
|01C150| STA.l $7F2181,X
|01C154| STA.l $7F21C1,X

|01C158| RTS

;---------------------------------------------------------------------------------------------------

.not_south_door
|01C159| CMP.w #$0002
|01C15C| BNE .not_west_door

|01C15E| LDA.w $19A0,Y
|01C161| LSR A
|01C162| AND.w #$FFE0
|01C165| TAX

|01C166| LDA.b $00
|01C168| CLC
|01C169| ADC.w #$0101
|01C16C| STA.l $7F2040,X
|01C170| STA.l $7F2042,X
|01C174| STA.l $7F2044,X
|01C178| STA.l $7F2046,X

|01C17C| STA.l $7F2080,X
|01C180| STA.l $7F2082,X
|01C184| STA.l $7F2084,X
|01C188| STA.l $7F2086,X

|01C18C| RTS

;---------------------------------------------------------------------------------------------------

.not_west_door
|01C18D| LDA.w $19A0,Y
|01C190| LSR A
|01C191| INC A
|01C192| TAX

|01C193| LDA.b $00
|01C195| CLC
|01C196| ADC.w #$0101
|01C199| STA.l $7F2040,X
|01C19D| STA.l $7F2042,X
|01C1A1| STA.l $7F2044,X
|01C1A5| STA.l $7F2046,X

|01C1A9| STA.l $7F2080,X
|01C1AD| STA.l $7F2082,X
|01C1B1| STA.l $7F2084,X
|01C1B5| STA.l $7F2086,X

|01C1B9| RTS

;===================================================================================================
; [WTF] ????
;===================================================================================================
ChangeDoorToSwitch:
|01C1BA| REP #$30

|01C1BC| LDA.w $04B0
|01C1BF| BEQ .exit

|01C1C1| LDA.w $04B0
|01C1C4| AND.w #$3FFF
|01C1C7| LSR A
|01C1C8| TAX

|01C1C9| LDY.w #$0004

|01C1CC| LDA.w $04B0
|01C1CF| ASL A
|01C1D0| BCC .draw_5

|01C1D2| INY

.draw_5
|01C1D3| LDA.w $0402
|01C1D6| AND.w #$1000
|01C1D9| BEQ .next_b

;---------------------------------------------------------------------------------------------------

.next_a
|01C1DB| LDA.w #$0101 ; TILETYPE 01
|01C1DE| STA.l $7F2000,X
|01C1E2| STA.l $7F2280,X

|01C1E6| LDA.w #$0000 ; TILETYPE 00
|01C1E9| STA.l $7F2080,X
|01C1ED| STA.l $7F2100,X
|01C1F1| STA.l $7F2180,X
|01C1F5| STA.l $7F2200,X

|01C1F9| INX
|01C1FA| INX

|01C1FB| DEY
|01C1FC| BPL .next_a

|01C1FE| SEP #$30

|01C200| RTS

;---------------------------------------------------------------------------------------------------

.next_b
|01C201| LDA.w #$2323 ; TILETYPE 23
|01C204| STA.l $7F2080,X
|01C208| STA.l $7F2100,X
|01C20C| STA.l $7F2180,X
|01C210| STA.l $7F2200,X

|01C214| INX
|01C215| INX

|01C216| DEY
|01C217| BPL .next_b

.exit
|01C219| SEP #$30

|01C21B| RTS

;===================================================================================================

InitializePegAttributes:
|01C21C| INC.w $0200

|01C21F| LDA.l $7EC172
|01C223| BEQ .exit

|01C225| JSL FlipCrystalPegAttributes

.exit
|01C229| RTS

;===================================================================================================

FlipCrystalPegAttributes:
|01C22A| REP #$10

|01C22C| LDX.w #$07FF

.next_super
|01C22F| LDA.l $7F2000,X
|01C233| CMP.b #$66 ; TILETYPE 66
|01C235| BEQ .do_toggle_a

|01C237| CMP.b #$67 ; TILETYPE 67
|01C239| BNE .no_toggle_a

.do_toggle_a
|01C23B| EOR.b #$01
|01C23D| STA.l $7F2000,X

;---------------------------------------------------------------------------------------------------

.no_toggle_a
|01C241| LDA.l $7F2800,X
|01C245| CMP.b #$66 ; TILETYPE 66
|01C247| BEQ .do_toggle_b

|01C249| CMP.b #$67 ; TILETYPE 67
|01C24B| BNE .no_toggle_b

.do_toggle_b
|01C24D| EOR.b #$01
|01C24F| STA.l $7F2800,X

;---------------------------------------------------------------------------------------------------

.no_toggle_b
|01C253| LDA.l $7F3000,X
|01C257| CMP.b #$66 ; TILETYPE 66
|01C259| BEQ .do_toggle_c

|01C25B| CMP.b #$67 ; TILETYPE 67
|01C25D| BNE .no_toggle_c

.do_toggle_c
|01C25F| EOR.b #$01
|01C261| STA.l $7F3000,X

;---------------------------------------------------------------------------------------------------

.no_toggle_c
|01C265| LDA.l $7F3800,X
|01C269| CMP.b #$66 ; TILETYPE 66
|01C26B| BEQ .do_toggle_d

|01C26D| CMP.b #$67 ; TILETYPE 67
|01C26F| BNE .no_toggle_d

.do_toggle_d
|01C271| EOR.b #$01
|01C273| STA.l $7F3800,X

;---------------------------------------------------------------------------------------------------

.no_toggle_d
|01C277| DEX
|01C278| BPL .next_super

|01C27A| SEP #$10

|01C27C| RTL

;===================================================================================================

pool HandleRoomTags

.vectors
|01C27D| dw RoomTag_Nothing                    ; 0x00
|01C27F| dw RoomTag_NorthWestTrigger           ; 0x01
|01C281| dw RoomTag_NorthEastTrigger           ; 0x02
|01C283| dw RoomTag_SouthWestTrigger           ; 0x03
|01C285| dw RoomTag_SouthEastTrigger           ; 0x04
|01C287| dw RoomTag_WestTrigger                ; 0x05
|01C289| dw RoomTag_EastTrigger                ; 0x06
|01C28B| dw RoomTag_NorthTrigger               ; 0x07
|01C28D| dw RoomTag_SouthTrigger               ; 0x08
|01C28F| dw RoomTag_QuadrantTrigger            ; 0x09
|01C291| dw RoomTag_RoomTrigger                ; 0x0A
|01C293| dw RoomTag_NorthWestTrigger           ; 0x0B
|01C295| dw RoomTag_NorthEastTrigger           ; 0x0C
|01C297| dw RoomTag_SouthWestTrigger           ; 0x0D
|01C299| dw RoomTag_SouthEastTrigger           ; 0x0E
|01C29B| dw RoomTag_WestTrigger                ; 0x0F
|01C29D| dw RoomTag_EastTrigger                ; 0x10
|01C29F| dw RoomTag_NorthTrigger               ; 0x11
|01C2A1| dw RoomTag_SouthTrigger               ; 0x12
|01C2A3| dw RoomTag_QuadrantTrigger            ; 0x13
|01C2A5| dw RoomTag_PullSwitchDoor             ; 0x14
|01C2A7| dw RoomTag_PrizeTriggerDoor           ; 0x15
|01C2A9| dw RoomTag_SwitchTrigger_HoldDoor     ; 0x16
|01C2AB| dw RoomTag_SwitchTrigger_ToggleDoor   ; 0x17
|01C2AD| dw RoomTag_WaterOff                   ; 0x18
|01C2AF| dw RoomTag_WaterOn                    ; 0x19
|01C2B1| dw RoomTag_WaterGate                  ; 0x1A
|01C2B3| dw RoomTag_DamGate                    ; 0x1B
|01C2B5| dw RoomTag_MovingWall_East            ; 0x1C
|01C2B7| dw RoomTag_MovingWall_West            ; 0x1D
|01C2B9| dw RoomTag_MovingWallTorchesCheck     ; 0x1E
|01C2BB| dw RoomTag_MovingWallTorchesCheck     ; 0x1F
|01C2BD| dw RoomTag_Switch_ExplodingWall       ; 0x20
|01C2BF| dw RoomTag_Holes0                     ; 0x21
|01C2C1| dw RoomTag_ChestHoles0                ; 0x22
|01C2C3| dw RoomTag_Holes1                     ; 0x23
|01C2C5| dw RoomTag_Holes2                     ; 0x24
|01C2C7| dw RoomTag_GetHeartForPrize           ; 0x25
|01C2C9| dw RoomTag_KillRoomBlock              ; 0x26
|01C2CB| dw RoomTag_TriggerChest               ; 0x27
|01C2CD| dw RoomTag_PullSwitchExplodingWall    ; 0x28
|01C2CF| dw RoomTag_NorthWestTrigger           ; 0x29
|01C2D1| dw RoomTag_NorthEastTrigger           ; 0x2A
|01C2D3| dw RoomTag_SouthWestTrigger           ; 0x2B
|01C2D5| dw RoomTag_SouthEastTrigger           ; 0x2C
|01C2D7| dw RoomTag_WestTrigger                ; 0x2D
|01C2D9| dw RoomTag_EastTrigger                ; 0x2E
|01C2DB| dw RoomTag_NorthTrigger               ; 0x2F
|01C2DD| dw RoomTag_SouthTrigger               ; 0x30
|01C2DF| dw RoomTag_QuadrantTrigger            ; 0x31
|01C2E1| dw RoomTag_RoomTrigger                ; 0x32
|01C2E3| dw RoomTag_TorchPuzzleDoor            ; 0x33
|01C2E5| dw RoomTag_Holes3                     ; 0x34
|01C2E7| dw RoomTag_Holes4                     ; 0x35
|01C2E9| dw RoomTag_Holes5                     ; 0x36
|01C2EB| dw RoomTag_Holes6                     ; 0x37
|01C2ED| dw RoomTag_Agahnim                    ; 0x38
|01C2EF| dw RoomTag_Holes7                     ; 0x39
|01C2F1| dw RoomTag_Holes8                     ; 0x3A
|01C2F3| dw RoomTag_ChestHoles8                ; 0x3B
|01C2F5| dw RoomTag_PushBlockForChest          ; 0x3C
|01C2F7| dw RoomTag_GanonDoor                  ; 0x3D
|01C2F9| dw RoomTag_TorchPuzzleChest           ; 0x3E
|01C2FB| dw RoomTag_RekillableBoss             ; 0x3F

endpool

;---------------------------------------------------------------------------------------------------

HandleRoomTags:
|01C2FD| LDA.w $04C7
|01C300| BNE .ignore_tags

|01C302| SEP #$30

|01C304| JSR DetectStaircase

; tag 1
|01C307| STZ.b $0E

|01C309| LDA.b $AE
|01C30B| ASL A
|01C30C| TAX

|01C30D| JSR (.vectors,X)

; tag 2
|01C310| LDA.b #$01
|01C312| STA.b $0E

|01C314| LDA.b $AF
|01C316| ASL A
|01C317| TAX

|01C318| JSR (.vectors,X)

.ignore_tags
|01C31B| STZ.w $04C7

|01C31E| RTL

;===================================================================================================
; Based on $063C
;===================================================================================================
LayerOfDestination:

.for_0476
|01C31F| db $00, $01, $01

.for_EE
|01C322| db $00, $00, $01

;===================================================================================================

RoomTag_DirtyExit:
|01C325| PLA

;===================================================================================================

RoomTag_FastExit:
|01C326| SEP #$30

;===================================================================================================

RoomTag_Nothing:
|01C328| RTS

;===================================================================================================

DetectStaircase:
|01C329| REP #$20

|01C32B| LDA.b $67
|01C32D| AND.w #$000C
|01C330| BEQ RoomTag_FastExit

|01C332| STA.b $02

|01C334| TAY

|01C335| LDA.b $20
|01C337| CLC
|01C338| ADC.w StaircaseFinder.offset_y,Y
|01C33B| AND.w #$01F8

|01C33E| ASL A
|01C33F| ASL A
|01C340| ASL A
|01C341| STA.b $00

|01C343| LDA.b $22
|01C345| AND.w #$01F8
|01C348| LSR A
|01C349| LSR A
|01C34A| LSR A
|01C34B| ORA.b $00

|01C34D| LDX.b $EE
|01C34F| BEQ .upper_layer

|01C351| ORA.w #$1000

.upper_layer
|01C354| REP #$10

|01C356| TAX

;---------------------------------------------------------------------------------------------------

|01C357| PHX

|01C358| LDY.b $02
|01C35A| CPY.w #$0004
|01C35D| BNE .going_up

|01C35F| CLC
|01C360| ADC.w #$0080
|01C363| TAX

.going_up
|01C364| SEP #$20

|01C366| LDA.l $7F2000,X

|01C36A| PLX

|01C36B| CMP.b #$26 ; TILETYPE 26
|01C36D| BEQ .stairs_edge

|01C36F| CMP.b #$38 ; TILETYPE 38
|01C371| BEQ .stairs_edge

|01C373| CMP.b #$39 ; TILETYPE 39
|01C375| BEQ .stairs_edge

|01C377| CMP.b #$5E ; TILETYPE 5E
|01C379| BEQ .stairs_edge

|01C37B| CMP.b #$5F ; TILETYPE 5F
|01C37D| BNE RoomTag_FastExit

;---------------------------------------------------------------------------------------------------

.stairs_edge
|01C37F| PHA

|01C380| STA.b $0E

|01C382| LDA.l $7F2040,X
|01C386| TAY

|01C387| AND.b #$F8
|01C389| CMP.b #$30
|01C38B| BNE RoomTag_DirtyExit

|01C38D| LDA.w $0308
|01C390| BPL .not_carrying

|01C392| PLA

|01C393| REP #$20

|01C395| LDA.w $0FC4
|01C398| STA.b $20

|01C39A| BRA RoomTag_FastExit

;---------------------------------------------------------------------------------------------------

.not_carrying
|01C39C| REP #$20

|01C39E| STY.w $0462

|01C3A1| LDA.b $A0
|01C3A3| STA.b $A2

|01C3A5| SEP #$30

|01C3A7| JSL FullyUpdateRoomFlags

|01C3AB| SEP #$30

|01C3AD| LDA.b $0E
|01C3AF| CMP.b #$38 ; TILETYPE 38
|01C3B1| BEQ .is_edge

|01C3B3| CMP.b #$39 ; TILETYPE 39
|01C3B5| BNE .continue

.is_edge
|01C3B7| LDX.b #$20
|01C3B9| STX.w $0464

; TODO see if this is north or south, something like that
|01C3BC| CMP.b #$38 ; TILETYPE 38
|01C3BE| BNE .not_north

|01C3C0| JSL HandleEdgeTransitionMovementNorth
|01C3C4| BRA .continue

.not_north
|01C3C6| JSL HandleEdgeTransitionMovementSouth

;---------------------------------------------------------------------------------------------------

.continue
|01C3CA| LDA.w $0462
|01C3CD| AND.b #$03
|01C3CF| TAX

|01C3D0| LDA.l $7EC001,X
|01C3D4| STA.b $A0

|01C3D6| LDA.w $063D,X
|01C3D9| STA.w $048A

|01C3DC| LDX.b #$02

|01C3DE| LDA.b $EE
|01C3E0| BNE .set_layer

|01C3E2| LDX.b #$00

|01C3E4| LDA.w $0476
|01C3E7| BEQ .set_layer

|01C3E9| LDX.b #$02

.set_layer
|01C3EB| STX.w $0492

|01C3EE| STZ.b $B0

|01C3F0| STZ.b $48

|01C3F2| STZ.b $3D
|01C3F4| STZ.b $3A
|01C3F6| STZ.b $3C

;---------------------------------------------------------------------------------------------------

|01C3F8| LDA.b $50
|01C3FA| AND.b #$FE
|01C3FC| STA.b $50

|01C3FE| LDX.b #$06

|01C400| PLA

|01C401| CMP.b #$26 ; TILETYPE 26
|01C403| BEQ .set_submodule_and_sfx

|01C405| LDX.b #$12
|01C407| CMP.b #$38 ; TILETYPE 38
|01C409| BEQ .set_submodule_only

|01C40B| LDX.b #$13
|01C40D| CMP.b #$39 ; TILETYPE 39
|01C40F| BEQ .set_submodule_only

;---------------------------------------------------------------------------------------------------

|01C411| JSL AnimateStairClimbAndSFX

|01C415| LDX.b #$0E
|01C417| STX.b $11

|01C419| RTS

;---------------------------------------------------------------------------------------------------

.set_submodule_only
|01C41A| STX.b $11

|01C41C| JSL ResetPushTimer

|01C420| RTS

;---------------------------------------------------------------------------------------------------

.set_submodule_and_sfx
|01C421| STX.b $11

|01C423| LDY.b #$16 ; SFX2.16

|01C425| LDA.w $048A
|01C428| CMP.b #$34
|01C42A| BCC .use_sfx16

|01C42C| LDY.b #$18 ; SFX2.18

.use_sfx16
|01C42E| STY.w $012E

|01C431| RTS

;===================================================================================================

RoomTag_NorthWestTrigger:
|01C432| LDA.b $23
|01C434| LSR A
|01C435| BCC RoomTag_NorthTrigger

|01C437| RTS

;===================================================================================================

RoomTag_NorthEastTrigger:
|01C438| LDA.b $23
|01C43A| LSR A
|01C43B| BCS RoomTag_NorthTrigger

|01C43D| RTS

;===================================================================================================

RoomTag_SouthWestTrigger:
|01C43E| LDA.b $23
|01C440| LSR A
|01C441| BCC RoomTag_SouthTrigger

|01C443| RTS

;===================================================================================================

RoomTag_SouthEastTrigger:
|01C444| LDA.b $23
|01C446| LSR A
|01C447| BCS RoomTag_SouthTrigger

|01C449| RTS

;===================================================================================================

RoomTag_WestTrigger:
|01C44A| LDA.b $23
|01C44C| LSR A
|01C44D| BCC RoomTag_QuadrantTrigger

|01C44F| RTS

;===================================================================================================

RoomTag_EastTrigger:
|01C450| LDA.b $23
|01C452| LSR A
|01C453| BCS RoomTag_QuadrantTrigger

|01C455| RTS

;===================================================================================================

RoomTag_NorthTrigger:
|01C456| LDA.b $21
|01C458| LSR A
|01C459| BCC RoomTag_QuadrantTrigger

;---------------------------------------------------------------------------------------------------

#EXIT_01C45B:
|01C45B| RTS

;===================================================================================================

RoomTag_SouthTrigger:
|01C45C| LDA.b $21
|01C45E| LSR A
|01C45F| BCC EXIT_01C45B

;===================================================================================================

RoomTag_QuadrantTrigger:
|01C461| LDX.b $0E

|01C463| LDA.b $AE,X
|01C465| CMP.b #$0B ; ROOMTAG 0B
|01C467| BCC RoomTag_OperateKillDoor

|01C469| CMP.b #$29 ; ROOMTAG 29
|01C46B| BCC RoomTag_OperateBlockDoor

;===================================================================================================

RoomTag_OperateKillChest:
|01C46D| JSL CheckIfScreenIsClear
|01C471| BCC .exit

|01C473| JSR RoomTag_OperateChestReveal

.exit
|01C476| RTS

;===================================================================================================

RoomTag_OperateBlockDoor:
|01C477| LDA.w $0641
|01C47A| EOR.b #$01
|01C47C| CMP.w $0468
|01C47F| BEQ .exit

|01C481| STA.w $0468

|01C484| LDA.b #$25 ; SFX3.25
|01C486| STA.w $012F

|01C489| LDA.b #$05
|01C48B| STA.b $11

|01C48D| REP #$20

|01C48F| STZ.w $068E
|01C492| STZ.w $0690

.exit
|01C495| SEP #$30

|01C497| RTS

;===================================================================================================

RoomTag_OperateKillDoor:
|01C498| JSL CheckIfScreenIsClear
|01C49C| BCC .exit

;===================================================================================================

#RoomTag_OperateShutters:
|01C49E| REP #$30

|01C4A0| LDX.w #$0000
|01C4A3| CPX.w $0468
|01C4A6| BEQ .exit

|01C4A8| STZ.w $0468

|01C4AB| STZ.w $068E
|01C4AE| STZ.w $0690

|01C4B1| SEP #$30

|01C4B3| LDA.b #$1B ; SFX3.1B
|01C4B5| STA.w $012F

|01C4B8| LDA.b #$05
|01C4BA| STA.b $11

.exit
|01C4BC| SEP #$30

|01C4BE| RTS

;===================================================================================================

RoomTag_RoomTrigger:
|01C4BF| LDX.b $0E

|01C4C1| LDA.b $AE,X
|01C4C3| CMP.b #$0A ; ROOMTAG 0A
|01C4C5| BEQ RoomTag_FullRoomKillCheck

|01C4C7| JSL CheckIfRoomIsClear
|01C4CB| BCC EXIT_01C4D0

|01C4CD| JSR RoomTag_OperateChestReveal

;---------------------------------------------------------------------------------------------------

#EXIT_01C4D0:
|01C4D0| SEP #$30

|01C4D2| RTS

;===================================================================================================

RoomTag_FullRoomKillCheck:
|01C4D3| JSL CheckIfRoomIsClear
|01C4D7| BCC EXIT_01C4D0
|01C4D9| BCS RoomTag_OperateShutters

;===================================================================================================

RoomTag_RekillableBoss:
|01C4DB| JSL CheckIfRoomIsClear
|01C4DF| BCC EXIT_01C4D0

|01C4E1| STZ.w $0FFC

|01C4E4| STZ.b $AF ; ROOMTAG 00

|01C4E6| RTS

;===================================================================================================

RoomTag_PullSwitchDoor:
|01C4E7| LDA.w $0642
|01C4EA| BEQ .exit

|01C4EC| REP #$30

|01C4EE| LDX.w #$0000
|01C4F1| CPX.w $0468
|01C4F4| BEQ .exit

|01C4F6| STX.w $0468

|01C4F9| STZ.w $068E
|01C4FC| STZ.w $0690

|01C4FF| SEP #$30

|01C501| LDA.b #$05
|01C503| STA.b $11

.exit
|01C505| SEP #$30

|01C507| RTS

;===================================================================================================

RoomTag_PrizeTriggerDoor:
|01C508| LDA.w $040C
|01C50B| LSR A
|01C50C| TAX

|01C50D| LDA.l $7EF3CA
|01C511| BNE .dark_world

|01C513| LDA.l $7EF374
|01C517| AND.l RoomTagPrizeChecks,X
|01C51B| BEQ .exit
|01C51D| BRA .open_door

.dark_world
|01C51F| LDA.l $7EF37A
|01C523| AND.l RoomTagPrizeChecks,X
|01C527| BEQ .exit

.open_door
|01C529| REP #$30

|01C52B| STZ.w $0468
|01C52E| STZ.w $068E
|01C531| STZ.w $0690

|01C534| SEP #$30

|01C536| LDA.b #$05
|01C538| STA.b $11

|01C53A| LDX.b $0E
|01C53C| STZ.b $AE,X ; ROOMTAG 00

.exit
|01C53E| SEP #$30

|01C540| RTS

;===================================================================================================

RoomTag_SwitchTrigger_HoldDoor:
|01C541| REP #$30

|01C543| LDA.w #$0005
|01C546| LDX.w #$FFFE

.next_check
|01C549| INX
|01C54A| INX
|01C54B| CPX.w $0478
|01C54E| BEQ .match

|01C550| CMP.w $0500,X
|01C553| BNE .next_check

|01C555| LDX.w $0466
|01C558| CPX.w #$FFFF
|01C55B| BNE .fail

.match
|01C55D| LDX.w #$0000

|01C560| LDA.w $0646
|01C563| AND.w #$00FF
|01C566| BNE .fail

|01C568| LDA.w $0642
|01C56B| AND.w #$00FF
|01C56E| BNE .fail

|01C570| JSR CheckForFloorSwitchHeld

|01C573| LDX.w #$0000
|01C576| BCS .fail

|01C578| INX

.fail
|01C579| CPX.w $0468
|01C57C| BEQ .exit

|01C57E| STX.w $0468

|01C581| STZ.w $068E
|01C584| STZ.w $0690

|01C587| SEP #$30

|01C589| CPX.b #$00
|01C58B| BNE .no_sfx

|01C58D| LDA.b #$25 ; SFX3.25
|01C58F| STA.w $012F

.no_sfx
|01C592| LDA.b #$05
|01C594| STA.b $11

.exit
|01C596| SEP #$30

|01C598| RTS

;===================================================================================================

RoomTag_SwitchTrigger_ToggleDoor:
|01C599| REP #$30

|01C59B| LDA.w $0430
|01C59E| BNE .close

|01C5A0| JSR CheckForFloorSwitchPress
|01C5A3| BCC .exit

|01C5A5| STZ.w $068E
|01C5A8| STZ.w $0690

|01C5AB| SEP #$30

|01C5AD| LDA.b #$25 ; SFX3.25
|01C5AF| STA.w $012F

|01C5B2| LDA.b #$05
|01C5B4| JSR PushPressurePlate

|01C5B7| LDA.w $0468
|01C5BA| EOR.b #$01
|01C5BC| STA.w $0468

|01C5BF| INC.w $0430
|01C5C2| BRA .exit

.close
|01C5C4| JSR CheckForFloorSwitchPress
|01C5C7| BCS .exit

|01C5C9| STZ.w $0430

.exit
|01C5CC| SEP #$30

|01C5CE| RTS

;===================================================================================================

PushPressurePlate:
|01C5CF| STA.b $11

|01C5D1| LDX.b $0C
|01C5D3| CPX.b #$23
|01C5D5| BEQ .exit

|01C5D7| LDA.w $04B6
|01C5DA| ORA.w $04B7
|01C5DD| BEQ .exit

|01C5DF| LDA.b $11
|01C5E1| STA.w $010C

; Pressure plate switch
|01C5E4| LDA.b #$17
|01C5E6| STA.b $11

|01C5E8| LDA.b #$20
|01C5EA| STA.b $B0

;---------------------------------------------------------------------------------------------------

|01C5EC| REP #$30

|01C5EE| LDA.b $20
|01C5F0| CLC
|01C5F1| ADC.w #$0002
|01C5F4| STA.b $20

|01C5F6| LDX.w $04B6

|01C5F9| LDA.l $7F2000,X
|01C5FD| AND.w #$FE00
|01C600| CMP.w #$2400 ; TILETYPE 24, TILETYPE 25
|01C603| BEQ .not_switch

|01C605| INX

.not_switch
|01C606| STX.w $04B6

|01C609| TXA
|01C60A| STA.b $00

|01C60C| LSR A
|01C60D| LSR A
|01C60E| LSR A

|01C60F| AND.w #$01F8
|01C612| STA.b $02

|01C614| LDA.b $00
|01C616| AND.w #$003F

|01C619| ASL A
|01C61A| ASL A
|01C61B| ASL A

|01C61C| STA.b $00

|01C61E| SEP #$30

; pressure switch down
|01C620| LDY.b #$10
|01C622| JSL UpdateTilemapWithCommonObject

.exit
|01C626| SEP #$30

|01C628| RTS

;===================================================================================================

RoomTag_TorchPuzzleDoor:
|01C629| REP #$30

|01C62B| LDX.w #$0000
|01C62E| STX.b $00

.next
|01C630| LDA.w $0540,X
|01C633| ASL A
|01C634| BCC .skip

|01C636| INC.b $00

.skip
|01C638| INX
|01C639| INX
|01C63A| CPX.w #$0020
|01C63D| BNE .next

;---------------------------------------------------------------------------------------------------

|01C63F| LDX.w #$0001

|01C642| LDA.b $00
|01C644| CMP.w #$0004
|01C647| BCC .not_enough_torches

|01C649| DEX

.not_enough_torches
|01C64A| CPX.w $0468
|01C64D| BEQ .fail

|01C64F| STX.w $0468

|01C652| STZ.w $068E
|01C655| STZ.w $0690

|01C658| SEP #$30

|01C65A| LDA.b #$1B ; SFX3.1B
|01C65C| STA.w $012F

|01C65F| LDA.b #$05
|01C661| STA.b $11

.fail
|01C663| SEP #$30

|01C665| RTS

;===================================================================================================

ExplodingWallExplosionMovement:
|01C666| dw $0004
|01C668| dw $0006
|01C66A| dw $0000
|01C66C| dw $0000
|01C66E| dw $0002

ExplodingWallTilemapOffset:
|01C670| dw $0000
|01C672| dw $000A
|01C674| dw $0000
|01C676| dw $0000
|01C678| dw $0280

;===================================================================================================

RoomTag_Switch_ExplodingWall:
|01C67A| REP #$30

|01C67C| JSR CheckForFloorSwitchPress
|01C67F| BCC EXIT_01C6F9

|01C681| REP #$30

|01C683| BRA RoomTag_RunExplodingWall

;===================================================================================================

RoomTag_PullSwitchExplodingWall:
|01C685| LDA.w $0642
|01C688| BEQ EXIT_01C6F9

|01C68A| REP #$30

;===================================================================================================

RoomTag_RunExplodingWall:
|01C68C| LDY.w #$FFFE

.next
|01C68F| INY
|01C690| INY

|01C691| LDA.w $1980,Y
|01C694| AND.w #$00FE
|01C697| CMP.w #$0030 ; DOORTYPE 30
|01C69A| BNE .next

;---------------------------------------------------------------------------------------------------

|01C69C| STY.w $0456

|01C69F| LDA.b $21
|01C6A1| AND.w #$0001
|01C6A4| INC A

|01C6A5| ASL A
|01C6A6| ASL A
|01C6A7| TAX

|01C6A8| LDA.w $19C0,Y
|01C6AB| AND.w #$0002
|01C6AE| BEQ .run_check

|01C6B0| LDA.b $23
|01C6B2| AND.w #$0001
|01C6B5| ASL A
|01C6B6| TAX

.run_check
|01C6B7| LDA.l ExplodingWallExplosionMovement,X
|01C6BB| STA.l $7F001C

|01C6BF| LDA.w $19A0,Y
|01C6C2| CLC
|01C6C3| ADC.l ExplodingWallTilemapOffset,X
|01C6C7| TAY

|01C6C8| AND.w #$007E
|01C6CB| ASL A
|01C6CC| ASL A
|01C6CD| CLC
|01C6CE| ADC.w $062C
|01C6D1| STA.l $7F001A

|01C6D5| TYA
|01C6D6| AND.w #$1F80

|01C6D9| LSR A
|01C6DA| LSR A
|01C6DB| LSR A
|01C6DC| LSR A

|01C6DD| CLC
|01C6DE| ADC.w $062E
|01C6E1| STA.l $7F0018

|01C6E5| SEP #$30

|01C6E7| LDA.b #$1B ; SFX3.1B
|01C6E9| STA.w $012F

|01C6EC| LDA.b #$01
|01C6EE| STA.w $0454

|01C6F1| LDX.b $0E

|01C6F3| STZ.b $AE,X ; ROOMTAG 00

|01C6F5| JSL AncillaAdd_BlastWall

;---------------------------------------------------------------------------------------------------

#EXIT_01C6F9:
|01C6F9| SEP #$30

|01C6FB| RTS

;===================================================================================================

pool RoomTag_GetHeartForPrize

.prizes
|01C6FC| db $00 ; Sewers
|01C6FD| db $00 ; Hyrule Castle
|01C6FE| db $01 ; Eastern Palace
|01C6FF| db $02 ; Desert Palace
|01C700| db $00 ; Agahnim's Tower
|01C701| db $06 ; Swamp Palace
|01C702| db $06 ; Palace of Darkness
|01C703| db $06 ; Misery Mire
|01C704| db $06 ; Skull Woods
|01C705| db $06 ; Ice Palace
|01C706| db $03 ; Tower of Hera
|01C707| db $06 ; Thieves' Town
|01C708| db $06 ; Turtle Rock

endpool

;---------------------------------------------------------------------------------------------------

RoomTag_GetHeartForPrize:
|01C709| LDA.w $0403
|01C70C| AND.b #$80
|01C70E| BEQ .exit

|01C710| LDA.w $040C
|01C713| LSR A
|01C714| TAX

|01C715| LDA.l $7EF3CA
|01C719| BNE .dark_world

|01C71B| LDA.l $7EF374
|01C71F| AND.l RoomTagPrizeChecks,X
|01C723| BNE .delete_tag
|01C725| BRA .spawn_prize

.dark_world
|01C727| LDA.l $7EF37A
|01C72B| AND.l RoomTagPrizeChecks,X
|01C72F| BNE .delete_tag

.spawn_prize
|01C731| LDA.b #$80
|01C733| STA.w $04C2

|01C736| LDA.b $0E
|01C738| PHA

|01C739| LDA.w $040C
|01C73C| LSR A
|01C73D| TAX

|01C73E| LDA.l .prizes,X
|01C742| JSL SpawnFallingDungeonPrize

|01C746| PLA
|01C747| STA.b $0E

.delete_tag
|01C749| LDX.b $0E
|01C74B| STZ.b $AE,X ; ROOMTAG 00

.exit
|01C74D| RTS

;===================================================================================================

RoomTag_Agahnim:
|01C74E| LDA.l $7EF2DB
|01C752| AND.b #$20
|01C754| BNE .exit

|01C756| LDA.w $0403
|01C759| ASL A
|01C75A| BCC .exit

|01C75C| JSL RevertTranslucencySwap

|01C760| STZ.b $AE ; ROOMTAG 00

|01C762| JSL PrepareDungeonExitFromBossFight

.exit
|01C766| RTS

;===================================================================================================

RoomTag_GanonDoor:
|01C767| LDX.b #$0F

.next_sprite
|01C769| LDA.w $0DD0,X
|01C76C| CMP.b #$04
|01C76E| BEQ .exit

|01C770| LDA.w $0F60,X
|01C773| AND.b #$40
|01C775| BNE .skip

|01C777| LDA.w $0DD0,X
|01C77A| BNE .exit

.skip
|01C77C| DEX
|01C77D| BPL .next_sprite

;---------------------------------------------------------------------------------------------------

|01C77F| LDA.b $5D
|01C781| CMP.b #$01 ; LINKSTATE 01
|01C783| BEQ .exit

|01C785| LDA.b #$1A
|01C787| STA.w $02E4
|01C78A| STA.b $11

|01C78C| STZ.b $B0
|01C78E| STZ.b $AE ; ROOMTAG 00

|01C790| LDA.b #$01
|01C792| STA.w $03EF

|01C795| STZ.b $3A
|01C797| STZ.b $3C

|01C799| LDA.b #$64
|01C79B| STA.b $C8

|01C79D| LDA.b #$03
|01C79F| STA.b $C9

.exit
|01C7A1| RTS

;===================================================================================================

RoomTag_KillRoomBlock:
|01C7A2| LDA.b $23
|01C7A4| LSR A
|01C7A5| BCC EXIT_01C7C1

|01C7A7| LDA.b $21
|01C7A9| LSR A
|01C7AA| BCC EXIT_01C7C1

|01C7AC| LDA.b $0E
|01C7AE| PHA

|01C7AF| JSL CheckIfScreenIsClear
|01C7B3| BCC .fail

|01C7B5| LDA.b #$1B ; SFX3.1B
|01C7B7| STA.w $012F

|01C7BA| PLX
|01C7BB| STZ.b $AE,X ; ROOMTAG 00

|01C7BD| RTS

.fail
|01C7BE| PLA

;---------------------------------------------------------------------------------------------------

#EXIT_01C7BF:
|01C7BF| SEP #$30

;---------------------------------------------------------------------------------------------------

#EXIT_01C7C1:
|01C7C1| RTS

;===================================================================================================

RoomTag_PushBlockForChest:
|01C7C2| LDA.b $14
|01C7C4| BNE .exit

|01C7C6| LDA.w $0641
|01C7C9| BNE RoomTag_OperateChestReveal

.exit
|01C7CB| RTS

;===================================================================================================

RoomTag_TriggerChest:
|01C7CC| LDA.w $031F
|01C7CF| BNE EXIT_01C7C1

|01C7D1| REP #$30

|01C7D3| JSR CheckForFloorSwitchPress
|01C7D6| BCC EXIT_01C7BF

;===================================================================================================

RoomTag_OperateChestReveal:
|01C7D8| SEP #$30

|01C7DA| LDX.b $0E
|01C7DC| STZ.b $AE,X ; ROOMTAG 00

|01C7DE| REP #$30

|01C7E0| STZ.w $1000
|01C7E3| STZ.w $0200

|01C7E6| LDA.w #$5858 ; TILETYPE 58
|01C7E9| STA.b $0C

;---------------------------------------------------------------------------------------------------

.next_tile
|01C7EB| LDX.w $0200

|01C7EE| LDA.w $06E0,X
|01C7F1| AND.w #$3FFF
|01C7F4| TAX

;---------------------------------------------------------------------------------------------------

|01C7F5| LDY.w #RoomDrawObjectData.obj149C

|01C7F8| LDA.w RoomDrawObjectData+0,Y
|01C7FB| STA.l $7E2000,X
|01C7FF| STA.b $02

|01C801| LDA.w RoomDrawObjectData+2,Y
|01C804| STA.l $7E2080,X
|01C808| STA.b $04

|01C80A| LDA.w RoomDrawObjectData+4,Y
|01C80D| STA.l $7E2002,X
|01C811| STA.b $06

|01C813| LDA.w RoomDrawObjectData+6,Y
|01C816| STA.l $7E2082,X
|01C81A| STA.b $08

;---------------------------------------------------------------------------------------------------

|01C81C| LDY.w $0200

|01C81F| LDA.w $06E0,Y
|01C822| AND.w #$3FFF
|01C825| LSR A
|01C826| TAX

|01C827| LDA.b $0C
|01C829| STA.l $7F2000,X
|01C82D| STA.l $7F2040,X

|01C831| CLC
|01C832| ADC.w #$0101
|01C835| STA.b $0C

;---------------------------------------------------------------------------------------------------

|01C837| LDX.w $1000

|01C83A| LDA.w #$0000
|01C83D| JSR BuildChestStripes
|01C840| STA.w $1002,X

|01C843| LDA.w #$0080
|01C846| JSR BuildChestStripes
|01C849| STA.w $1008,X

|01C84C| LDA.w #$0002
|01C84F| JSR BuildChestStripes
|01C852| STA.w $100E,X

|01C855| LDA.w #$0082
|01C858| JSR BuildChestStripes
|01C85B| STA.w $1014,X

;---------------------------------------------------------------------------------------------------

|01C85E| LDA.b $02
|01C860| STA.w $1006,X

|01C863| LDA.b $04
|01C865| STA.w $100C,X

|01C868| LDA.b $06
|01C86A| STA.w $1012,X

|01C86D| LDA.b $08
|01C86F| STA.w $1018,X

|01C872| LDA.w #$0100
|01C875| STA.w $1004,X
|01C878| STA.w $100A,X
|01C87B| STA.w $1010,X
|01C87E| STA.w $1016,X

|01C881| LDA.w #$FFFF
|01C884| STA.w $101A,X

;---------------------------------------------------------------------------------------------------

|01C887| TXA
|01C888| CLC
|01C889| ADC.w #$0018
|01C88C| STA.w $1000

|01C88F| LDA.w $0200
|01C892| INC A
|01C893| INC A
|01C894| STA.w $0200

|01C897| CMP.w $0496
|01C89A| BEQ .done

|01C89C| JMP.w .next_tile

;---------------------------------------------------------------------------------------------------

.done
|01C89F| STZ.w $0200

|01C8A2| SEP #$30

|01C8A4| LDA.b #$1A ; SFX3.1A
|01C8A6| STA.w $012F

|01C8A9| LDA.b #$01
|01C8AB| STA.b $14

|01C8AD| RTS

;===================================================================================================

RoomTag_TorchPuzzleChest:
|01C8AE| REP #$30

|01C8B0| LDX.w #$0000
|01C8B3| STX.b $00

.next
|01C8B5| LDA.w $0540,X
|01C8B8| ASL A
|01C8B9| BCC .skip

|01C8BB| INC.b $00

.skip
|01C8BD| INX
|01C8BE| INX
|01C8BF| CPX.w #$0020
|01C8C2| BNE .next

|01C8C4| LDX.w #$0001

|01C8C7| LDA.b $00
|01C8C9| CMP.w #$0004
|01C8CC| BCC .exit

|01C8CE| JSR RoomTag_OperateChestReveal

.exit
|01C8D1| SEP #$30

|01C8D3| RTS

;===================================================================================================

RoomTag_MovingWall_East:
|01C8D4| REP #$20

|01C8D6| LDA.w $041A
|01C8D9| BNE .move_wall

|01C8DB| JSR RoomTag_MovingWallTorchesCheck
|01C8DE| BRA .continue

.move_wall
|01C8E0| LDY.b #$01
|01C8E2| STY.w $0FC1

|01C8E5| JSR RoomTag_MovingWallShakeItUp

|01C8E8| LDA.w #$FFFF
|01C8EB| JSR MoveTheWallALittle

.continue
|01C8EE| STA.w $0312

|01C8F1| LDA.w $0422
|01C8F4| SEC
|01C8F5| SBC.w $0312
|01C8F8| STA.w $0422

|01C8FB| CLC
|01C8FC| ADC.b $E2
|01C8FE| STA.b $E0

|01C900| LDA.w $0312
|01C903| BEQ .exit

;---------------------------------------------------------------------------------------------------

|01C905| LDX.w $041E

|01C908| LDA.w $0422
|01C90B| CMP.w MovingWallEastBoundaries,X
|01C90E| BCS .dont_advance

|01C910| JSR AdvanceGiganticWallMode

|01C913| LDA.w $0422
|01C916| CMP.w MovingWallEastBoundaries,X
|01C919| BCS .dont_advance

;---------------------------------------------------------------------------------------------------

|01C91B| LDX.b #$1B ; SFX3.1B
|01C91D| STX.w $012F

|01C920| LDX.b #$05 ; SFX1.05
|01C922| STX.w $012D

|01C925| LDX.b $0E

|01C927| LDY.b #$00 ; ROOMTAG 00
|01C929| STY.b $AE,X

|01C92B| STY.w $02E4
|01C92E| STY.w $0FC1

|01C931| STZ.w $011A
|01C934| STZ.w $011B
|01C937| STZ.w $011C
|01C93A| STZ.w $011D

;---------------------------------------------------------------------------------------------------

.dont_advance
|01C93D| LDX.b #$05
|01C93F| STX.b $17

|01C941| LDA.w #$0000
|01C944| SEC
|01C945| SBC.w $0422
|01C948| STA.b $00

|01C94A| AND.w #$01F8
|01C94D| LSR A
|01C94E| LSR A
|01C94F| LSR A
|01C950| STA.b $00

|01C952| LDA.w $042A
|01C955| SEC
|01C956| SBC.b $00
|01C958| AND.w #$141F
|01C95B| STA.w $0116

.exit
|01C95E| SEP #$20

|01C960| RTS

;===================================================================================================
; Shake your booty
;===================================================================================================
CutsceneShake_Y:
|01C961| dw   1,  -1

;---------------------------------------------------------------------------------------------------

CutsceneShake_X:
|01C965| dw  -1,   1

;===================================================================================================

RoomTag_MovingWallShakeItUp:
|01C969| LDA.b $1A
|01C96B| AND.w #$0001
|01C96E| ASL A
|01C96F| TAX

|01C970| LDA.l CutsceneShake_Y,X
|01C974| STA.w $011A

|01C977| LDA.l CutsceneShake_X,X
|01C97B| STA.w $011C

|01C97E| LDX.b $0E

|01C980| LDY.b $AE,X
|01C982| BNE .exit

|01C984| STZ.w $011A
|01C987| STZ.w $011C

.exit
|01C98A| RTS

;===================================================================================================

RoomTag_MovingWall_West:
|01C98B| REP #$20

|01C98D| LDA.w $041A
|01C990| BNE .move_wall

|01C992| JSR RoomTag_MovingWallTorchesCheck
|01C995| BRA .continue

.move_wall
|01C997| LDY.b #$01
|01C999| STY.w $0FC1

|01C99C| JSR RoomTag_MovingWallShakeItUp

|01C99F| LDA.w #$0001
|01C9A2| JSR MoveTheWallALittle

.continue
|01C9A5| STA.w $0312
|01C9A8| CLC
|01C9A9| ADC.w $0422
|01C9AC| STA.w $0422

|01C9AF| CLC
|01C9B0| ADC.b $E2
|01C9B2| STA.b $E0

|01C9B4| LDA.w $0312
|01C9B7| BEQ .exit

;---------------------------------------------------------------------------------------------------

|01C9B9| LDX.w $041E

|01C9BC| LDA.w $0422
|01C9BF| CMP.w MovingWallWestBoundaries,X
|01C9C2| BCC .dont_advance

|01C9C4| JSR AdvanceGiganticWallMode

|01C9C7| LDA.w $0422
|01C9CA| CMP.w MovingWallWestBoundaries,X
|01C9CD| BCC .dont_advance

;---------------------------------------------------------------------------------------------------

|01C9CF| LDX.b #$1B ; SFX3.1B
|01C9D1| STX.w $012F

|01C9D4| LDX.b #$05 ; SFX1.05
|01C9D6| STX.w $012D

|01C9D9| LDX.b $0E

|01C9DB| LDY.b #$00 ; ROOMTAG 00
|01C9DD| STY.b $AE,X

|01C9DF| STY.w $02E4
|01C9E2| STY.w $0FC1

|01C9E5| STZ.w $011A
|01C9E8| STZ.w $011B
|01C9EB| STZ.w $011C
|01C9EE| STZ.w $011D

;---------------------------------------------------------------------------------------------------

.dont_advance
|01C9F1| LDX.b #$05
|01C9F3| STX.b $17

|01C9F5| LDA.w $0422
|01C9F8| AND.w #$01F8

|01C9FB| LSR A
|01C9FC| LSR A
|01C9FD| LSR A

|01C9FE| STA.b $00

|01CA00| LDA.w $042A
|01CA03| CLC
|01CA04| ADC.b $00
|01CA06| STA.w $0116

|01CA09| AND.w #$1020
|01CA0C| BEQ .exit

|01CA0E| EOR.w #$0420
|01CA11| STA.w $0116

.exit
|01CA14| SEP #$20

|01CA16| RTS

;===================================================================================================

RoomTag_MovingWallTorchesCheck:
|01CA17| REP #$10

|01CA19| LDA.w $0642
|01CA1C| AND.w #$00FF
|01CA1F| BNE .succeed

|01CA21| LDX.w #$0000
|01CA24| STX.b $00

.next
|01CA26| LDA.w $0540,X
|01CA29| ASL A
|01CA2A| BCC .skip

|01CA2C| INC.b $00

.skip
|01CA2E| INX
|01CA2F| INX
|01CA30| CPX.w #$0020
|01CA33| BNE .next

;---------------------------------------------------------------------------------------------------

|01CA35| LDA.b $00
|01CA37| CMP.w #$0004
|01CA3A| BCC .fail

.succeed
|01CA3C| INC.w $041A

|01CA3F| STZ.w $0642

|01CA42| SEP #$20

|01CA44| LDA.b $0E
|01CA46| ASL A
|01CA47| TAX

|01CA48| LDA.w $0403
|01CA4B| ORA.w DoorFlagMasks-1,X
|01CA4E| STA.w $0403

|01CA51| LDA.b #$07 ; SFX1.07
|01CA53| STA.w $012D

|01CA56| LDA.b #$01
|01CA58| STA.w $02E4
|01CA5B| STA.w $0FC1

|01CA5E| REP #$20

.fail
|01CA60| LDA.w #$0000

|01CA63| SEP #$10

|01CA65| RTS

;===================================================================================================

MoveTheWallALittle:
|01CA66| LDA.w #$2200
|01CA69| CLC
|01CA6A| ADC.w $041C
|01CA6D| STA.w $041C

|01CA70| ROL A
|01CA71| AND.w #$0001

|01CA74| RTS

;===================================================================================================

AdvanceGiganticWallMode:
|01CA75| LDX.b $0E

|01CA77| LDY.b $AE,X
|01CA79| CPY.b #$20 ; ROOMTAG 20
|01CA7B| BCS .bomb_wall

|01CA7D| LDX.b #$00
|01CA7F| STX.w $046C

|01CA82| LDX.b #$16
|01CA84| STX.b $1C

.bomb_wall
|01CA86| LDX.w $041E

|01CA89| CPY.b #$20 ; ROOMTAG 20
|01CA8B| BCS EXIT_01CA93

|01CA8D| TXA
|01CA8E| CLC
|01CA8F| ADC.w #$0008
|01CA92| TAX

;---------------------------------------------------------------------------------------------------

#EXIT_01CA93:
|01CA93| RTS

;===================================================================================================

RoomTag_WaterOff:
|01CA94| LDA.w $0642
|01CA97| BEQ EXIT_01CA93

|01CA99| LDA.b #$03
|01CA9B| STA.b $96

|01CA9D| STZ.b $97
|01CA9F| STZ.b $98

|01CAA1| LDA.b #$16
|01CAA3| STA.b $1E

|01CAA5| LDA.b #$01
|01CAA7| STA.b $1F

|01CAA9| LDA.b #$01
|01CAAB| STA.w $0424

|01CAAE| JSL AdjustWaterHDMAWindow

|01CAB2| LDA.b #$0B
|01CAB4| STA.b $11

|01CAB6| LDA.b #$00
|01CAB8| STA.l $7EC007
|01CABC| STA.l $7EC009

|01CAC0| LDA.b #$1F
|01CAC2| STA.l $7EC00B

|01CAC6| INC.b $15

;---------------------------------------------------------------------------------------------------

|01CAC8| LDA.b #$00 ; ROOMTAG 00
|01CACA| STA.b $AF

|01CACC| LDA.w $0403
|01CACF| ORA.l DoorFlagMasks+1
|01CAD3| STA.w $0403

|01CAD6| STZ.w $0642

|01CAD9| REP #$30

|01CADB| LDA.w $0682
|01CADE| AND.w #$01FF
|01CAE1| SEC
|01CAE2| SBC.w #$0010

|01CAE5| ASL A
|01CAE6| ASL A
|01CAE7| ASL A
|01CAE8| ASL A

|01CAE9| STA.b $08

|01CAEB| LDA.w $0680
|01CAEE| AND.w #$01FF
|01CAF1| SEC
|01CAF2| SBC.w #$0010

|01CAF5| LSR A
|01CAF6| LSR A
|01CAF7| TSB.b $08

|01CAF9| LDX.b $08

|01CAFB| JSR RoomTag_WaterOff_AdjustWater
|01CAFE| JSR RoomTag_WaterOff_AdjustOverlay

|01CB01| LDY.b $0C

|01CB03| LDA.w #$FFFF
|01CB06| STA.w $1100,Y

|01CB09| SEP #$30

|01CB0B| LDA.b #$1B ; SFX3.1B
|01CB0D| STA.w $012F

|01CB10| LDA.b #$2E ; SFX2.2E
|01CB12| STA.w $012E

|01CB15| LDA.b #$01
|01CB17| STA.b $18

;---------------------------------------------------------------------------------------------------

#EXIT_01CB19:
|01CB19| RTS

;===================================================================================================

RoomTag_WaterOn:
|01CB1A| LDA.w $0642
|01CB1D| BEQ EXIT_01CB19

|01CB1F| LDA.b #$1B ; SFX3.1B
|01CB21| STA.w $012F

|01CB24| LDA.b #$2F ; SFX2.2F
|01CB26| STA.w $012E

|01CB29| LDA.b #$0C
|01CB2B| STA.b $11

|01CB2D| STZ.b $B0

|01CB2F| LDA.b #$01
|01CB31| STA.w $0424

|01CB34| LDA.b #$00 ; ROOMTAG 00
|01CB36| STA.b $AF

|01CB38| LDA.w $0403
|01CB3B| ORA.l DoorFlagMasks+1
|01CB3F| STA.w $0403

|01CB42| STZ.w $0642
|01CB45| STZ.w $045C

;---------------------------------------------------------------------------------------------------

#EXIT_01CB48:
|01CB48| RTS

;===================================================================================================

RoomTag_WaterGate:
|01CB49| LDA.w $0403
|01CB4C| AND.l DoorFlagMasks+1
|01CB50| BNE EXIT_01CB48

|01CB52| LDA.w $0642
|01CB55| BEQ EXIT_01CB48

;---------------------------------------------------------------------------------------------------

|01CB57| LDA.b #$0D
|01CB59| STA.b $11

|01CB5B| STZ.b $B0

|01CB5D| LDA.b #$00 ; ROOMTAG 00
|01CB5F| STA.b $AF

|01CB61| LDA.w $0403
|01CB64| ORA.l DoorFlagMasks+1
|01CB68| STA.w $0403

|01CB6B| STZ.w $0642
|01CB6E| STZ.w $0684
|01CB71| STZ.w $067A

;---------------------------------------------------------------------------------------------------

|01CB74| LDA.b #$03
|01CB76| STA.b $96

|01CB78| STZ.b $97
|01CB7A| STZ.b $98

|01CB7C| LDA.b #$16
|01CB7E| STA.b $1E

|01CB80| LDA.b #$01
|01CB82| STA.b $1F

|01CB84| LDA.b #$02
|01CB86| STA.b $99

|01CB88| LDA.b #$62
|01CB8A| STA.b $9A

;---------------------------------------------------------------------------------------------------
; Dam overlay
|01CB8C| LDA.l $7EF2BB
|01CB90| ORA.b #$20
|01CB92| STA.l $7EF2BB

; Swamp overlay
|01CB96| LDA.l $7EF2FB
|01CB9A| ORA.b #$20
|01CB9C| STA.l $7EF2FB

; Swamp entrance water
|01CBA0| LDA.l $7EF051
|01CBA4| ORA.b #$01
|01CBA6| STA.l $7EF051

;---------------------------------------------------------------------------------------------------

|01CBAA| REP #$30

|01CBAC| LDA.w #^WaterOverlayData
|01CBAF| STA.b $B9

|01CBB1| LDA.w #WaterOverlayData
|01CBB4| JSR RoomTag_OperateWaterFlooring

|01CBB7| REP #$30

|01CBB9| LDA.w $0472
|01CBBC| AND.w #$007E
|01CBBF| ASL A
|01CBC0| ASL A
|01CBC1| STA.w $0680

;---------------------------------------------------------------------------------------------------

|01CBC4| LDA.b $B2

|01CBC6| ASL A ; x16
|01CBC7| ASL A
|01CBC8| ASL A
|01CBC9| ASL A

|01CBCA| CLC
|01CBCB| ADC.w $062C

|01CBCE| CLC
|01CBCF| ADC.w $0680

|01CBD2| CLC
|01CBD3| ADC.w #$0028
|01CBD6| STA.w $0680

|01CBD9| LDA.w $0472
|01CBDC| AND.w #$1F80
|01CBDF| LSR A ; /16
|01CBE0| LSR A
|01CBE1| LSR A
|01CBE2| LSR A
|01CBE3| STA.w $0676
|01CBE6| STA.w $0678

|01CBE9| CLC
|01CBEA| ADC.w $062E
|01CBED| STA.w $0682

|01CBF0| STZ.w $0686

|01CBF3| SEP #$30

|01CBF5| LDA.b #$1B ; SFX3.1B
|01CBF7| STA.w $012F

|01CBFA| LDA.b #$2F ; SFX2.2F
|01CBFC| STA.w $012E

;===================================================================================================

RoomTag_DamGate:
|01CBFF| RTS

;===================================================================================================

RoomTag_Holes0:
|01CC00| LDA.b #$01
|01CC02| BRA RoomTag_TriggerHoles

;===================================================================================================

RoomTag_Holes1:
|01CC04| LDA.b #$03
|01CC06| BRA RoomTag_TriggerHoles

;===================================================================================================

RoomTag_Holes3:
|01CC08| LDA.b #$06
|01CC0A| BRA RoomTag_TriggerHoles

;===================================================================================================

RoomTag_Holes4:
|01CC0C| LDA.b #$08
|01CC0E| BRA RoomTag_TriggerHoles

;===================================================================================================

RoomTag_Holes5:
|01CC10| LDA.b #$0A
|01CC12| BRA RoomTag_TriggerHoles

;===================================================================================================

RoomTag_Holes6:
|01CC14| LDA.b #$0C
|01CC16| BRA RoomTag_TriggerHoles

;===================================================================================================

RoomTag_Holes7:
|01CC18| LDA.b #$0E
|01CC1A| BRA RoomTag_TriggerHoles

;===================================================================================================

RoomTag_Holes8:
|01CC1C| LDA.b #$10

;===================================================================================================

RoomTag_TriggerHoles:
|01CC1E| STA.b $0A

|01CC20| LDY.w $04BA
|01CC23| BNE .dont_copy

|01CC25| STA.w $04BA

.dont_copy
|01CC28| REP #$30

|01CC2A| JSR CheckForFloorSwitchHeld
|01CC2D| BCC .exit

|01CC2F| SEP #$30

|01CC31| TYA
|01CC32| CLC
|01CC33| ADC.b $0A
|01CC35| CMP.w $04BA
|01CC38| BEQ .exit

|01CC3A| STA.w $04BA

|01CC3D| STZ.b $BA
|01CC3F| STZ.b $BB
|01CC41| STZ.b $B0

|01CC43| LDA.b #$1B ; SFX3.1B
|01CC45| STA.w $012F

|01CC48| LDA.b #$03
|01CC4A| STA.b $11

|01CC4C| LDA.w $04BC
|01CC4F| EOR.b #$01
|01CC51| STA.w $04BC

|01CC54| JSL ToggleStarTileGraphics

.exit
|01CC58| SEP #$30

|01CC5A| RTS

;===================================================================================================

RoomTag_ChestHoles0:
|01CC5B| REP #$10

|01CC5D| LDY.w #$0000
|01CC60| BRA RoomTag_OperateChestHoles

;===================================================================================================

RoomTag_ChestHoles8:
|01CC62| REP #$10

|01CC64| LDY.w #$0012

;===================================================================================================

RoomTag_OperateChestHoles:
|01CC67| LDA.w $0403
|01CC6A| AND.b #$01
|01CC6C| BEQ EXIT_01CC86

;===================================================================================================

RoomTag_TriggerChestHoles:
|01CC6E| STY.w $04BA

|01CC71| SEP #$30

|01CC73| STZ.b $BA
|01CC75| STZ.b $BB
|01CC77| STZ.b $B0

|01CC79| LDA.b #$1B ; SFX3.1B
|01CC7B| STA.w $012F

|01CC7E| LDA.b #$03
|01CC80| STA.b $11

|01CC82| LDX.b $0E
|01CC84| STZ.b $AE,X ; ROOMTAG 00

;---------------------------------------------------------------------------------------------------

#EXIT_01CC86:
|01CC86| SEP #$30

|01CC88| RTS

;===================================================================================================

RoomTag_Holes2:
|01CC89| REP #$30

|01CC8B| JSR CheckForFloorSwitchHeld
|01CC8E| BCC EXIT_01CC86

|01CC90| LDY.w #$0005
|01CC93| BRA RoomTag_TriggerChestHoles

;===================================================================================================

RoomTag_OperateWaterFlooring:
|01CC95| STA.b $B7

|01CC97| STZ.b $BA

.next_object
|01CC99| STZ.b $B2
|01CC9B| STZ.b $B4

|01CC9D| LDY.b $BA

|01CC9F| LDA.b [$B7],Y
|01CCA1| CMP.w #$FFFF
|01CCA4| BNE .continue

|01CCA6| SEP #$30

|01CCA8| RTS

;---------------------------------------------------------------------------------------------------

.continue
|01CCA9| STA.b $00

|01CCAB| SEP #$20

|01CCAD| AND.b #$FC
|01CCAF| STA.b $08

|01CCB1| LDA.b $00
|01CCB3| AND.b #$03
|01CCB5| INC A
|01CCB6| STA.b $B2

|01CCB8| LDA.b $01
|01CCBA| AND.b #$03
|01CCBC| INC A
|01CCBD| STA.b $B4

;---------------------------------------------------------------------------------------------------

|01CCBF| INY
|01CCC0| INY
|01CCC1| INY

|01CCC2| STY.b $BA

|01CCC4| LDA.b $01
|01CCC6| LSR A
|01CCC7| LSR A
|01CCC8| LSR A
|01CCC9| ROR.b $08
|01CCCB| STA.b $09

|01CCCD| REP #$20

|01CCCF| LDX.b $08
|01CCD1| LDY.w #RoomDrawObjectData.obj0110

;---------------------------------------------------------------------------------------------------

.next_tile_group
|01CCD4| LDA.b $B2
|01CCD6| STA.b $0A

.next_tile_row
|01CCD8| LDA.w #$0002
|01CCDB| STA.b $04

.next_tile
|01CCDD| LDA.w RoomDrawObjectData+0,Y
|01CCE0| STA.l $7E4000,X

|01CCE4| LDA.w RoomDrawObjectData+2,Y
|01CCE7| STA.l $7E4002,X

|01CCEB| LDA.w RoomDrawObjectData+4,Y
|01CCEE| STA.l $7E4004,X

|01CCF2| LDA.w RoomDrawObjectData+6,Y
|01CCF5| STA.l $7E4006,X

|01CCF9| LDA.w RoomDrawObjectData+8,Y
|01CCFC| STA.l $7E4080,X

|01CD00| LDA.w RoomDrawObjectData+10,Y
|01CD03| STA.l $7E4082,X

|01CD07| LDA.w RoomDrawObjectData+12,Y
|01CD0A| STA.l $7E4084,X

|01CD0E| LDA.w RoomDrawObjectData+14,Y
|01CD11| STA.l $7E4086,X

|01CD15| TXA
|01CD16| CLC
|01CD17| ADC.w #$0100
|01CD1A| TAX

|01CD1B| DEC.b $04
|01CD1D| BNE .next_tile

|01CD1F| TXA
|01CD20| SEC
|01CD21| SBC.w #$01F8
|01CD24| TAX

|01CD25| DEC.b $0A
|01CD27| BNE .next_tile_row

|01CD29| LDA.b $08
|01CD2B| CLC
|01CD2C| ADC.w #$0200
|01CD2F| STA.b $08

|01CD31| TAX

|01CD32| DEC.b $B4
|01CD34| BNE .next_tile_group

|01CD36| JMP.w .next_object

;===================================================================================================

CheckForFloorSwitchPress:
|01CD39| LDA.w $02E4
|01CD3C| AND.w #$00FF
|01CD3F| BNE RoomTagFail

|01CD41| LDA.b $4D
|01CD43| AND.w #$00FF
|01CD46| BNE RoomTagFail

|01CD48| JSR GetLinksTilemapOffset

|01CD4B| LDA.l $7F2000,X
|01CD4F| CMP.w #$2323 ; TILETYPE 23
|01CD52| BEQ .check_tile

|01CD54| CMP.w #$2424 ; TILETYPE 24
|01CD57| BEQ .check_tile

|01CD59| TXA
|01CD5A| CLC
|01CD5B| ADC.w #$0040
|01CD5E| TAX

|01CD5F| LDA.l $7F2000,X
|01CD63| CMP.w #$2323 ; TILETYPE 23
|01CD66| BEQ .check_tile

|01CD68| CMP.w #$2424 ; TILETYPE 24
|01CD6B| BEQ .check_tile

|01CD6D| INC.b $00

|01CD6F| LDX.b $00

|01CD71| LDA.l $7F2000,X
|01CD75| CMP.w #$2323 ; TILETYPE 23
|01CD78| BEQ .check_tile

|01CD7A| CMP.w #$2424 ; TILETYPE 24
|01CD7D| BEQ .check_tile

|01CD7F| TXA
|01CD80| CLC
|01CD81| ADC.w #$0040
|01CD84| TAX

|01CD85| LDA.l $7F2000,X
|01CD89| CMP.w #$2323 ; TILETYPE 23
|01CD8C| BEQ .check_tile

|01CD8E| CMP.w #$2424 ; TILETYPE 24
|01CD91| BNE RoomTagFail

.check_tile
|01CD93| CMP.l $7F2040,X
|01CD97| BNE RoomTagFail

|01CD99| STA.b $0C

|01CD9B| STX.w $04B6

.succeed
|01CD9E| SEC

|01CD9F| RTS

;---------------------------------------------------------------------------------------------------

RoomTagFail:
|01CDA0| STZ.w $04B6

|01CDA3| CLC

|01CDA4| RTS

;===================================================================================================

GetLinksTilemapOffset:
|01CDA5| LDA.b $22
|01CDA7| CLC
|01CDA8| ADC.w #$FFFF
|01CDAB| AND.w #$01F8
|01CDAE| LSR A
|01CDAF| LSR A
|01CDB0| LSR A
|01CDB1| STA.b $00

|01CDB3| LDA.b $20
|01CDB5| CLC
|01CDB6| ADC.w #$000E
|01CDB9| AND.w #$01F8
|01CDBC| ASL A
|01CDBD| ASL A
|01CDBE| ASL A
|01CDBF| ORA.b $00

|01CDC1| LDX.b $EE
|01CDC3| BEQ .upper_layer

|01CDC5| ORA.w #$1000

.upper_layer
|01CDC8| STA.b $00

|01CDCA| TAX

|01CDCB| RTS

;===================================================================================================

CheckForFloorSwitchHeld:
|01CDCC| LDA.w $02E4
|01CDCF| AND.w #$00FF
|01CDD2| BNE RoomTagFail

|01CDD4| LDA.b $4D
|01CDD6| AND.w #$00FF
|01CDD9| BNE RoomTagFail

|01CDDB| JSR GetLinksTilemapOffset

|01CDDE| LDY.w #$0000

|01CDE1| LDA.l $7F2000,X
|01CDE5| CMP.w #$2323 ; TILETYPE 23
|01CDE8| BEQ .check_tile

|01CDEA| CMP.w #$3A3A ; TILETYPE 3A
|01CDED| BEQ .check_tile

|01CDEF| INY

|01CDF0| CMP.w #$3B3B ; TILETYPE 3B
|01CDF3| BEQ .check_tile

;---------------------------------------------------------------------------------------------------

|01CDF5| TXA
|01CDF6| CLC
|01CDF7| ADC.w #$0040
|01CDFA| TAX

|01CDFB| LDY.w #$0000

|01CDFE| LDA.l $7F2000,X
|01CE02| CMP.w #$2323 ; TILETYPE 23
|01CE05| BEQ .check_tile

|01CE07| CMP.w #$3A3A ; TILETYPE 3A
|01CE0A| BEQ .check_tile

|01CE0C| INY
|01CE0D| CMP.w #$3B3B ; TILETYPE 3B
|01CE10| BEQ .check_tile

;---------------------------------------------------------------------------------------------------

|01CE12| INC.b $00

|01CE14| LDX.b $00

|01CE16| LDY.w #$0000

|01CE19| LDA.l $7F2000,X
|01CE1D| CMP.w #$2323 ; TILETYPE 23
|01CE20| BEQ .check_tile

|01CE22| CMP.w #$3A3A ; TILETYPE 3A
|01CE25| BEQ .check_tile

|01CE27| INY

|01CE28| CMP.w #$3B3B ; TILETYPE 3B
|01CE2B| BEQ .check_tile

;---------------------------------------------------------------------------------------------------

|01CE2D| TXA
|01CE2E| CLC
|01CE2F| ADC.w #$0040
|01CE32| TAX

|01CE33| LDY.w #$0000

|01CE36| LDA.l $7F2000,X
|01CE3A| CMP.w #$2323 ; TILETYPE 23
|01CE3D| BEQ .check_tile

|01CE3F| CMP.w #$3A3A ; TILETYPE 3A
|01CE42| BEQ .check_tile

|01CE44| CMP.w #$3B3B ; TILETYPE 3B
|01CE47| BNE .fail

|01CE49| INY

;---------------------------------------------------------------------------------------------------

.check_tile
|01CE4A| CMP.l $7F2040,X
|01CE4E| BNE .fail

|01CE50| STA.b $0C

|01CE52| STX.w $04B6

|01CE55| SEC

|01CE56| RTS

;---------------------------------------------------------------------------------------------------

.fail
|01CE57| STZ.w $04B6

|01CE5A| CLC

|01CE5B| RTS

;===================================================================================================

CorrespondingDoorOpeningDirection:
|01CE5C| dw $0002
|01CE5E| dw $0000
|01CE60| dw $0006
|01CE62| dw $0004

;===================================================================================================

VineDoorGFXOffset:
|01CE64| dw $07EA
|01CE66| dw $080A
|01CE68| dw $080A
|01CE6A| dw $082A

;===================================================================================================

DoorOpenSFXPan:
|01CE6C| db $00
|01CE6D| db $00
|01CE6E| db $80
|01CE6F| db $40

;===================================================================================================

ProcessTorchesAndDoors:
|01CE70| LDA.b $1A
|01CE72| AND.b #$03
|01CE74| BNE .ignore_checks

|01CE76| LDA.w $0112
|01CE79| BNE .ignore_checks

|01CE7B| LDX.b #$00

.next
|01CE7D| LDA.w $04F0,X
|01CE80| BEQ .skip

|01CE82| DEC.w $04F0,X
|01CE85| BNE .skip

|01CE87| PHX

|01CE88| TXA
|01CE89| ORA.b #$C0
|01CE8B| STA.w $0333

|01CE8E| JSL ExtinguishTorch

|01CE92| PLX

.skip
|01CE93| INX
|01CE94| CPX.b #$10
|01CE96| BNE .next

;---------------------------------------------------------------------------------------------------

.ignore_checks
|01CE98| LDA.w $02E4
|01CE9B| BEQ .not_cutscene

|01CE9D| JMP.w DontOpenDoor

;---------------------------------------------------------------------------------------------------

.not_cutscene
|01CEA0| REP #$21

|01CEA2| LDA.b $2F
|01CEA4| AND.w #$00FF
|01CEA7| STA.b $08

|01CEA9| TAY

|01CEAA| LDA.b $20
|01CEAC| ADC.w StaircaseFinder.offset_y,Y
|01CEAF| AND.w #$01F8
|01CEB2| ASL A
|01CEB3| ASL A
|01CEB4| ASL A
|01CEB5| STA.b $00

|01CEB7| LDA.b $22
|01CEB9| CLC
|01CEBA| ADC.w StaircaseFinder.offset_x,Y
|01CEBD| AND.w #$01F8
|01CEC0| LSR A
|01CEC1| LSR A
|01CEC2| LSR A
|01CEC3| ORA.b $00

|01CEC5| LDX.b $EE
|01CEC7| BEQ .upper_layer

|01CEC9| ORA.w #$1000

;---------------------------------------------------------------------------------------------------

.upper_layer
|01CECC| REP #$10

|01CECE| TAX

|01CECF| LDA.l $7F2000,X
|01CED3| AND.w #$00F0
|01CED6| CMP.w #$00F0
|01CED9| BEQ .some_sorta_door

|01CEDB| TXA
|01CEDC| CLC
|01CEDD| ADC.w StaircaseFinder.index_offset,Y
|01CEE0| TAX

|01CEE1| LDA.l $7F2000,X
|01CEE5| AND.w #$00F0
|01CEE8| CMP.w #$00F0
|01CEEB| BNE .reset_missing_key_message_flag

;---------------------------------------------------------------------------------------------------

.some_sorta_door
|01CEED| LDA.l $7F2000,X
|01CEF1| AND.w #$000F
|01CEF4| ASL A
|01CEF5| TAY
|01CEF6| STY.w $0694

|01CEF9| LDA.w $19C0,Y
|01CEFC| AND.w #$0003
|01CEFF| ASL A
|01CF00| CMP.b $08
|01CF02| BNE .reset_missing_key_message_flag

|01CF04| LDA.w $1980,Y
|01CF07| AND.w #$00FE
|01CF0A| CMP.w #$0028 ; DOORTYPE 28
|01CF0D| BEQ OperateDashBashWall

|01CF0F| CMP.w #$001C ; DOORTYPE 1C
|01CF12| BEQ .is_key_door

|01CF14| CMP.w #$001E ; DOORTYPE 1E
|01CF17| BNE .not_big_key_door

;---------------------------------------------------------------------------------------------------

|01CF19| STZ.w $0690

|01CF1C| STX.w $068E

|01CF1F| LDY.w $040C

|01CF22| LDA.l $7EF366
|01CF26| AND.w BitMasks,Y
|01CF29| BNE .have_big_key

|01CF2B| LDA.w $04B8
|01CF2E| BNE .proceed_to_not_open_door

|01CF30| INC.w $04B8

|01CF33| LDA.w #$0078 ; MESSAGE 0078
|01CF36| STA.w $1CF0

|01CF39| SEP #$30

|01CF3B| JSL PrepAndDisplayMessage

|01CF3F| REP #$30

;---------------------------------------------------------------------------------------------------

.proceed_to_not_open_door
|01CF41| JMP.w DontOpenDoor

;---------------------------------------------------------------------------------------------------

.reset_missing_key_message_flag
|01CF44| STZ.w $04B8

|01CF47| JMP.w DontOpenDoor

;---------------------------------------------------------------------------------------------------

.not_big_key_door
|01CF4A| CMP.w #$001C ; DOORTYPE 1C
|01CF4D| BCC .proceed_to_not_open_door

|01CF4F| CMP.w #$002C ; DOORTYPE 2C
|01CF52| BCS .proceed_to_not_open_door

|01CF54| CMP.w #$002A ; DOORTYPE 2A
|01CF57| BEQ .proceed_to_not_open_door

;---------------------------------------------------------------------------------------------------

.is_key_door
|01CF59| LDA.l $7EF36F
|01CF5D| AND.w #$00FF
|01CF60| BEQ .proceed_to_not_open_door

|01CF62| LDA.l $7EF36F
|01CF66| DEC A
|01CF67| STA.l $7EF36F

;---------------------------------------------------------------------------------------------------

.have_big_key
|01CF6B| STZ.w $0690

|01CF6E| STX.w $068E

|01CF71| SEP #$30

|01CF73| LDA.b #$04
|01CF75| STA.b $11

|01CF77| LDA.b #$14 ; SFX3.14
|01CF79| STA.b $00

|01CF7B| LDX.w $0694

|01CF7E| LDA.w $19C0,X
|01CF81| AND.b #$03
|01CF83| TAX

|01CF84| LDA.l DoorOpenSFXPan,X
|01CF88| ORA.b $00
|01CF8A| STA.w $012F

|01CF8D| RTL

;===================================================================================================

OperateDashBashWall:
|01CF8E| LDA.w $0372
|01CF91| AND.w #$00FF
|01CF94| BEQ DontOpenDoor

|01CF96| LDA.w $02F1
|01CF99| CMP.w #$003F
|01CF9C| BCS DontOpenDoor

;---------------------------------------------------------------------------------------------------

|01CF9E| STX.w $068E

|01CFA1| SEP #$30

|01CFA3| STY.b $00

|01CFA5| JSL AncillaAdd_DoorDebris
|01CFA9| BCS .skip_ancilla

|01CFAB| LDY.b $00

|01CFAD| LDA.w $19C0,Y
|01CFB0| AND.b #$03
|01CFB2| STA.w $03BE,X

|01CFB5| TXA
|01CFB6| ASL A
|01CFB7| TAX

;---------------------------------------------------------------------------------------------------

|01CFB8| REP #$20

|01CFBA| LDA.w $19A0,Y
|01CFBD| AND.w #$007E

|01CFC0| ASL A ; x4
|01CFC1| ASL A

|01CFC2| CLC ; [USELESS] it's already clear
|01CFC3| ADC.w $062C
|01CFC6| STA.w $03B6,X

|01CFC9| LDA.w $19A0,Y
|01CFCC| AND.w #$1F80
|01CFCF| LSR A ; /16
|01CFD0| LSR A
|01CFD1| LSR A
|01CFD2| LSR A
|01CFD3| CLC ; [USELESS] it's already clear
|01CFD4| ADC.w $062E
|01CFD7| STA.w $03BA,X

.skip_ancilla
|01CFDA| SEP #$30

|01CFDC| LDA.b #$1B ; SFX3.1B
|01CFDE| STA.w $012F

|01CFE1| LDA.b #$09
|01CFE3| STA.b $11

|01CFE5| JSL RepelDash_long

;---------------------------------------------------------------------------------------------------

#EXIT_01CFE9:
|01CFE9| RTL

;===================================================================================================

DontOpenDoor:
|01CFEA| SEP #$30

; eye door for tr compass
|01CFEC| LDA.w $0436
|01CFEF| BMI .no_door_draw

|01CFF1| LDA.b $6C
|01CFF3| BNE .no_door_draw

|01CFF5| LDA.b $23
|01CFF7| CMP.b #$0C
|01CFF9| BNE .no_door_draw

|01CFFB| LDY.w $0437

|01CFFE| LDX.w $0436
|01D001| CPX.b $2F
|01D003| BEQ .direction_mismatch

|01D005| LDA.b $2F
|01D007| CMP.l CorrespondingDoorOpeningDirection,X
|01D00B| BNE .direction_mismatch

|01D00D| REP #$20

|01D00F| LDA.w $068C
|01D012| ORA.w BitMasks,Y
|01D015| BRA .continue

.direction_mismatch
|01D017| REP #$20

|01D019| LDA.w $068C
|01D01C| AND.w BitMasksInverted,Y

.continue
|01D01F| CMP.w $068C
|01D022| BEQ .no_door_draw

|01D024| STA.w $068C

|01D027| STZ.b $0C

|01D029| REP #$10

|01D02B| LDA.w $0437
|01D02E| AND.w #$00FF
|01D031| TAY

|01D032| JSR DrawEyeWatchDoor
|01D035| JSR PrepNextTilemapUpdateDMA

|01D038| LDY.w $0460
|01D03B| JSR LoadSingleDoorTileType_from_parameter

|01D03E| LDY.b $0C

|01D040| LDA.w #$FFFF
|01D043| STA.w $1100,Y

|01D046| SEP #$30

|01D048| LDA.b #$01
|01D04A| STA.b $18

|01D04C| LDA.b #$15 ; SFX3.15
|01D04E| STA.w $012F

|01D051| RTL

;---------------------------------------------------------------------------------------------------

.no_door_draw
|01D052| SEP #$30

|01D054| LDA.b $3A
|01D056| ASL A
|01D057| BCC EXIT_01CFE9

|01D059| LDA.b $3C
|01D05B| CMP.b #$04
|01D05D| BNE EXIT_01CFE9

;---------------------------------------------------------------------------------------------------

|01D05F| REP #$31

|01D061| LDA.b $44
|01D063| AND.w #$00FF
|01D066| CMP.w #$0080
|01D069| BCC .positive_y

|01D06B| ORA.w #$FF00

.positive_y
|01D06E| CLC
|01D06F| ADC.b $20
|01D071| AND.w #$01F8

|01D074| ASL A
|01D075| ASL A
|01D076| ASL A

|01D077| STA.b $00

;---------------------------------------------------------------------------------------------------

|01D079| LDA.b $45
|01D07B| AND.w #$00FF
|01D07E| CMP.w #$0080
|01D081| BCC .positive_x

|01D083| ORA.w #$FF00

.positive_x
|01D086| CLC
|01D087| ADC.b $22

|01D089| AND.w #$01F8
|01D08C| LSR A
|01D08D| LSR A
|01D08E| LSR A

|01D08F| ORA.b $00
|01D091| TAX

;---------------------------------------------------------------------------------------------------

|01D092| LDY.w #$0041

|01D095| LDA.l $7F2000,X
|01D099| AND.w #$00FC
|01D09C| CMP.w #$006C ; TILETYPE 6C, TILETYPE 6D, TILETYPE 6E, TILETYPE 6F
|01D09F| BEQ SlashSwordAgainstVinesAndDoors

|01D0A1| AND.w #$00F0
|01D0A4| CMP.w #$00F0
|01D0A7| BEQ SlashSwordAgainstVinesAndDoors

|01D0A9| INX

|01D0AA| DEY

|01D0AB| LDA.l $7F2000,X
|01D0AF| AND.w #$00FC
|01D0B2| CMP.w #$006C ; TILETYPE 6C, TILETYPE 6D, TILETYPE 6E, TILETYPE 6F
|01D0B5| BEQ SlashSwordAgainstVinesAndDoors

|01D0B7| AND.w #$00F0
|01D0BA| CMP.w #$00F0
|01D0BD| BEQ SlashSwordAgainstVinesAndDoors

;---------------------------------------------------------------------------------------------------

|01D0BF| TXA
|01D0C0| CLC
|01D0C1| ADC.w #$003F
|01D0C4| TAX

|01D0C5| LDY.w #$0001
|01D0C8| LDA.l $7F2000,X
|01D0CC| AND.w #$00FC
|01D0CF| CMP.w #$006C ; TILETYPE 6C, TILETYPE 6D, TILETYPE 6E, TILETYPE 6F
|01D0D2| BEQ SlashSwordAgainstVinesAndDoors

|01D0D4| AND.w #$00F0
|01D0D7| CMP.w #$00F0
|01D0DA| BEQ SlashSwordAgainstVinesAndDoors

|01D0DC| INX

|01D0DD| DEY

|01D0DE| LDA.l $7F2000,X
|01D0E2| AND.w #$00FC
|01D0E5| CMP.w #$006C ; TILETYPE 6C, TILETYPE 6D, TILETYPE 6E, TILETYPE 6F
|01D0E8| BEQ SlashSwordAgainstVinesAndDoors

|01D0EA| AND.w #$00F0
|01D0ED| CMP.w #$00F0
|01D0F0| BEQ SlashSwordAgainstVinesAndDoors

|01D0F2| SEP #$30

|01D0F4| RTL

;===================================================================================================

SlashSwordAgainstVinesAndDoors:
|01D0F5| STZ.b $0C

|01D0F7| CMP.w #$006C ; TILETYPE 6C, TILETYPE 6D, TILETYPE 6E, TILETYPE 6F
|01D0FA| BEQ .is_vines

|01D0FC| JMP.w .not_vines

.is_vines
|01D0FF| STY.b $0E

|01D101| CPY.w #$0040
|01D104| BCC .vertical_fine

|01D106| TYA
|01D107| AND.w #$000F
|01D10A| STA.b $0E
|01D10C| TXA

|01D10D| SEC
|01D10E| SBC.w #$0040
|01D111| TAX

|01D112| LDA.l $7F2000,X
|01D116| AND.w #$00FC
|01D119| CMP.w #$006C ; TILETYPE 6C, TILETYPE 6D, TILETYPE 6E, TILETYPE 6F
|01D11C| BEQ .vertical_fine

|01D11E| TXA
|01D11F| CLC
|01D120| ADC.w #$0040
|01D123| TAX

.vertical_fine
|01D124| LDY.b $0E
|01D126| BEQ .horizontal_fine

|01D128| DEX

|01D129| LDA.l $7F2000,X
|01D12D| AND.w #$00FC
|01D130| CMP.w #$006C ; TILETYPE 6C, TILETYPE 6D, TILETYPE 6E, TILETYPE 6F
|01D133| BEQ .horizontal_fine

|01D135| INX

.horizontal_fine
|01D136| TXA
|01D137| SEC
|01D138| SBC.w #$0041
|01D13B| ASL A
|01D13C| STA.b $08

|01D13E| LDA.l $7F2000,X
|01D142| PHA

|01D143| LDA.w #$0202 ; TILETYPE 02
|01D146| STA.l $7F2000,X
|01D14A| STA.l $7F2040,X

|01D14E| PLA
|01D14F| AND.w #$0003
|01D152| ASL A
|01D153| TAX

|01D154| LDA.l VineDoorGFXOffset,X
|01D158| TAY

|01D159| LDX.b $08

|01D15B| LDA.w #$0004
|01D15E| STA.b $0E

;---------------------------------------------------------------------------------------------------

.next
|01D160| LDA.w RoomDrawObjectData+0,Y
|01D163| STA.l $7E2000,X

|01D167| LDA.w RoomDrawObjectData+2,Y
|01D16A| STA.l $7E2080,X

|01D16E| LDA.w RoomDrawObjectData+4,Y
|01D171| STA.l $7E2100,X

|01D175| LDA.w RoomDrawObjectData+6,Y
|01D178| STA.l $7E2180,X

|01D17C| TYA
|01D17D| CLC
|01D17E| ADC.w #$0008
|01D181| TAY

|01D182| INX
|01D183| INX

|01D184| DEC.b $0E
|01D186| BNE .next

|01D188| BRA .run_dma_and_sfx

;---------------------------------------------------------------------------------------------------
; Check if vine door
.not_vines
|01D18A| LDA.l $7F2000,X
|01D18E| AND.w #$000F
|01D191| ASL A
|01D192| TAY

|01D193| STX.w $068E

|01D196| LDA.w $1980,Y
|01D199| AND.w #$00FE
|01D19C| CMP.w #$0032 ; DOORTYPE 32
|01D19F| BNE .run_dma_and_sfx

|01D1A1| SEP #$20

|01D1A3| LDA.b #$1B ; SFX3.1B
|01D1A5| STA.w $012F

|01D1A8| REP #$20

|01D1AA| LDA.w $19A0,Y
|01D1AD| STA.b $08

|01D1AF| TYX

|01D1B0| LDA.w $068C
|01D1B3| ORA.w BitMasks,X
|01D1B6| STA.w $068C

|01D1B9| LDA.w $0400
|01D1BC| ORA.w BitMasks,X
|01D1BF| STA.w $0400

|01D1C2| STZ.w $0692

|01D1C5| JSR IndexAndClearCurtainDoor

|01D1C8| LDY.w $0460
|01D1CB| JSR LoadSingleDoorTileType_from_parameter

;---------------------------------------------------------------------------------------------------

.run_dma_and_sfx
|01D1CE| JSR PrepNextTilemapUpdateDMA

|01D1D1| SEP #$30

|01D1D3| LDA.b $08
|01D1D5| AND.b #$7F
|01D1D7| ASL A
|01D1D8| JSL CalculateArbitrarySFXPan

|01D1DC| ORA.b #$1E ; SFX2.1E
|01D1DE| STA.w $012E

|01D1E1| REP #$30

;===================================================================================================

RoomDraw_CloseStripes:
|01D1E3| LDY.b $0C

|01D1E5| LDA.w #$FFFF
|01D1E8| STA.w $1100,Y

|01D1EB| SEP #$30

|01D1ED| LDA.b #$01
|01D1EF| STA.b $18

|01D1F1| RTL

;===================================================================================================

FindBombableThings:
|01D1F2| LDA.b $10
|01D1F4| CMP.b #$07
|01D1F6| BEQ FindBombableUnderworldThings

|01D1F8| JML FindBombableOverworldThings

;---------------------------------------------------------------------------------------------------

FindBombableUnderworldThings:
|01D1FC| STZ.b $0F

|01D1FE| REP #$30

|01D200| LDA.b $00
|01D202| AND.w #$01F8
|01D205| ASL A
|01D206| ASL A
|01D207| ASL A
|01D208| STA.b $04

|01D20A| LDA.b $02
|01D20C| AND.w #$01F8
|01D20F| LSR A
|01D210| LSR A
|01D211| LSR A
|01D212| ORA.b $04
|01D214| SEC
|01D215| SBC.w #$0082
|01D218| TAX

|01D219| LDY.w #$0002

;---------------------------------------------------------------------------------------------------

.next_check
|01D21C| LDA.l $7F2000,X
|01D220| AND.w #$00FF
|01D223| CMP.w #$0062 ; TILETYPE 62
|01D226| BEQ .bombable_floor

|01D228| AND.w #$00F0
|01D22B| CMP.w #$00F0
|01D22E| BEQ .is_door

|01D230| INX
|01D231| INX

|01D232| LDA.l $7F2000,X
|01D236| AND.w #$00FF
|01D239| CMP.w #$0062 ; TILETYPE 62
|01D23C| BEQ .bombable_floor

|01D23E| AND.w #$00F0
|01D241| CMP.w #$00F0
|01D244| BEQ .is_door

|01D246| INX
|01D247| INX

|01D248| LDA.l $7F2000,X
|01D24C| AND.w #$00FF
|01D24F| CMP.w #$0062 ; TILETYPE 62
|01D252| BEQ .bombable_floor

|01D254| AND.w #$00F0
|01D257| CMP.w #$00F0
|01D25A| BEQ .is_door

|01D25C| TXA
|01D25D| CLC
|01D25E| ADC.w #$007C
|01D261| TAX

|01D262| DEY
|01D263| BPL .next_check

|01D265| BMI .exit

.bombable_floor
|01D267| JMP.w BlowOpenBombableFloor

;---------------------------------------------------------------------------------------------------

.is_door
|01D26A| LDA.l $7F2000,X
|01D26E| AND.w #$000F
|01D271| ASL A
|01D272| TAY

|01D273| LDA.w $1980,Y
|01D276| AND.w #$00FE
|01D279| CMP.w #$0028 ; DOORTYPE 28
|01D27C| BEQ .bombable_door

|01D27E| CMP.w #$002A ; DOORTYPE 2A
|01D281| BEQ .bombable_door

|01D283| CMP.w #$002E ; DOORTYPE 2E
|01D286| BNE .exit

;---------------------------------------------------------------------------------------------------

.bombable_door
|01D288| STX.w $068E

|01D28B| LDA.b $0E
|01D28D| ASL A
|01D28E| TAX

|01D28F| LDA.w $19A0,Y
|01D292| AND.w #$007E
|01D295| ASL A
|01D296| ASL A
|01D297| CLC
|01D298| ADC.w $062C
|01D29B| STA.w $03B6,X

|01D29E| LDA.w $19A0,Y
|01D2A1| AND.w #$1F80
|01D2A4| LSR A
|01D2A5| LSR A
|01D2A6| LSR A
|01D2A7| LSR A
|01D2A8| CLC
|01D2A9| ADC.w $062E
|01D2AC| STA.w $03BA,X

|01D2AF| SEP #$20

|01D2B1| LDX.b $0E

|01D2B3| LDA.w $19C0,Y
|01D2B6| AND.b #$03
|01D2B8| STA.w $03BE,X

|01D2BB| LDA.b #$1B ; SFX3.1B
|01D2BD| STA.w $012F

|01D2C0| LDA.b #$09
|01D2C2| STA.b $11

.exit
|01D2C4| SEP #$30

|01D2C6| RTL

;===================================================================================================

BlowOpenBombableFloor:
|01D2C7| LDA.b $A0
|01D2C9| CMP.w #$0065 ; ROOM 0065
|01D2CC| BNE .not_tt_attic

|01D2CE| LDA.w $0402
|01D2D1| ORA.w #$1000
|01D2D4| STA.w $0402

.not_tt_attic
|01D2D7| LDA.w #$0000
|01D2DA| JSL DrawLightenedThievesAtticHole

|01D2DE| SEP #$30

|01D2E0| LDA.b #$1B ; SFX3.1B
|01D2E2| STA.w $012F

|01D2E5| RTL

;===================================================================================================

DrawDoorOpening_Step1:
|01D2E6| LDX.w $19A0,Y
|01D2E9| STX.b $08

|01D2EB| STY.w $0460
|01D2EE| STY.w $0694

|01D2F1| LDA.w $19C0,Y
|01D2F4| AND.w #$0003
|01D2F7| BNE .not_north_door

|01D2F9| JMP.w DoorStep1_North

.not_north_door
|01D2FC| CMP.w #$0001
|01D2FF| BNE .not_south_door

|01D301| JMP.w DoorStep1_South

.not_south_door
|01D304| CMP.w #$0002
|01D307| BNE .not_west_door

|01D309| JMP.w DoorStep1_West

.not_west_door
|01D30C| JMP.w DoorStep1_East

;===================================================================================================

DrawShutterDoorSteps:
|01D30F| LDX.w $19A0,Y
|01D312| STX.b $08

|01D314| STY.w $0460
|01D317| STY.w $0694

|01D31A| LDA.w $19C0,Y
|01D31D| AND.w #$0003
|01D320| BNE .not_north_door

|01D322| JMP.w GetDoorDrawDataIndex_North_clean_door_index

.not_north_door
|01D325| CMP.w #$0001
|01D328| BNE .not_south_door

|01D32A| JMP.w GetDoorDrawDataIndex_South_clean_door_index

.not_south_door
|01D32D| CMP.w #$0002
|01D330| BNE .not_west_door

|01D332| JMP.w GetDoorDrawDataIndex_West_clean_door_index

.not_west_door
|01D335| JMP.w GetDoorDrawDataIndex_East_clean_door_index

;===================================================================================================

DrawEyeWatchDoor:
|01D338| LDX.w $19A0,Y
|01D33B| STX.b $08

|01D33D| STY.w $0460
|01D340| STY.b $04
|01D342| STY.w $0694

|01D345| LDA.w $19C0,Y
|01D348| AND.w #$0003
|01D34B| BNE .not_north_door

|01D34D| JMP.w DrawDoorToTilemap_North

.not_north_door
|01D350| CMP.w #$0001
|01D353| BNE .not_south_door

|01D355| JMP.w DrawDoorToTilemap_South

.not_south_door
|01D358| CMP.w #$0002
|01D35B| BNE .not_west_door

|01D35D| JMP.w DrawDoorToTilemap_West

.not_west_door
|01D360| JMP.w DrawDoorToTilemap_East

;===================================================================================================

IndexAndClearCurtainDoor:
|01D363| LDX.w $19A0,Y
|01D366| STX.b $08

|01D368| STY.w $0460
|01D36B| STY.w $0694

|01D36E| JMP.w ClearDoorCurtainsFromTilemap

;===================================================================================================

IndexAndClearExplodingWall:
|01D371| STZ.w $045E
|01D374| STZ.b $0C
|01D376| STZ.w $0690

|01D379| LDY.w $0456
|01D37C| STY.w $0460

|01D37F| LDX.w $19A0,Y
|01D382| DEX
|01D383| DEX
|01D384| STX.b $08

|01D386| TXA
|01D387| STA.w $19A0,Y

|01D38A| JMP.w ClearExplodingWallFromTilemap

;===================================================================================================

OperateShutterDoors:
|01D38D| REP #$30

|01D38F| STZ.b $0C

|01D391| INC.w $0690

|01D394| LDA.w $0690

|01D397| LDY.w $0468
|01D39A| BNE .shutters_down

|01D39C| INY
|01D39D| INY

|01D39E| CMP.w #$0004
|01D3A1| BEQ .advance_animation

|01D3A3| INY
|01D3A4| INY

|01D3A5| CMP.w #$0008
|01D3A8| BEQ .advance_animation

.dont_advance_animation
|01D3AA| JMP.w .finalize_timer

.shutters_down
|01D3AD| LDY.w #$0002

|01D3B0| CMP.w #$0004
|01D3B3| BEQ .advance_animation

|01D3B5| DEY
|01D3B6| DEY

|01D3B7| CMP.w #$0008
|01D3BA| BNE .dont_advance_animation

.advance_animation
|01D3BC| STY.w $0692

|01D3BF| LDY.w #$0000

;---------------------------------------------------------------------------------------------------

.next_door
|01D3C2| STY.w $068E

|01D3C5| LDA.w $1980,Y
|01D3C8| AND.w #$00FE
|01D3CB| CMP.w #$0044 ; DOORTYPE 44
|01D3CE| BEQ .is_shutter

|01D3D0| CMP.w #$0018 ; DOORTYPE 18
|01D3D3| BNE .skip_this_door

.is_shutter
|01D3D5| LDA.w $0468
|01D3D8| BNE .closing

|01D3DA| LDA.w $068C
|01D3DD| AND.w BitMasks,Y
|01D3E0| BNE .skip_this_door

|01D3E2| LDA.w $0690
|01D3E5| CMP.w #$0008
|01D3E8| BNE .skip_sfx

|01D3EA| PHY

|01D3EB| SEP #$30

|01D3ED| LDA.b #$15 ; SFX3.15
|01D3EF| STA.w $012F

|01D3F2| REP #$30

|01D3F4| PLY

|01D3F5| LDA.w $068C
|01D3F8| ORA.w BitMasks,Y
|01D3FB| BRA .flag_door

;---------------------------------------------------------------------------------------------------

.closing
|01D3FD| LDA.w $068C
|01D400| AND.w BitMasks,Y
|01D403| BEQ .skip_this_door

|01D405| LDA.w $0690
|01D408| CMP.w #$0008
|01D40B| BNE .skip_sfx

|01D40D| PHY

|01D40E| SEP #$30

|01D410| LDA.b #$16 ; SFX3.16
|01D412| STA.w $012F

|01D415| REP #$30

|01D417| PLY

|01D418| LDA.w $068C
|01D41B| AND.w BitMasksInverted,Y

;---------------------------------------------------------------------------------------------------

.flag_door
|01D41E| STA.w $068C

.skip_sfx
|01D421| JSR DrawShutterDoorSteps
|01D424| JSR PrepNextTilemapUpdateDMA

|01D427| LDA.w $0690
|01D42A| CMP.w #$0008
|01D42D| BNE .skip_this_door

|01D42F| LDY.w $068E
|01D432| JSR LoadSingleDoorTileType_from_parameter

.skip_this_door
|01D435| LDY.w $068E
|01D438| INY
|01D439| INY
|01D43A| CPY.w #$0018
|01D43D| BEQ .done

|01D43F| JMP.w .next_door

;---------------------------------------------------------------------------------------------------

.done
|01D442| LDY.b $0C
|01D444| BEQ .no_stripes

|01D446| LDA.w #$FFFF
|01D449| STA.w $1100,Y

|01D44C| SEP #$30

|01D44E| LDA.b #$01
|01D450| STA.b $18
|01D452| STA.w $0710

.finalize_timer
|01D455| SEP #$20

|01D457| LDA.w $0690
|01D45A| CMP.b #$10
|01D45C| BNE .exit

.no_stripes
|01D45E| SEP #$20

|01D460| STZ.b $11
|01D462| STZ.b $18

.exit
|01D464| SEP #$30

|01D466| RTL

;===================================================================================================

OpenCrackedDoor:
|01D467| REP #$30

|01D469| LDA.w #$0010
|01D46C| STA.w $0690

|01D46F| LDY.w #$0004
|01D472| BRA .continue

;===================================================================================================

#UnlockKeyDoor:
|01D474| REP #$30

|01D476| LDY.w #$0002

|01D479| INC.w $0690

|01D47C| LDA.w $0690
|01D47F| CMP.w #$0004
|01D482| BEQ .draw_part_1

|01D484| INY
|01D485| INY

|01D486| CMP.w #$000C
|01D489| BNE .no_drawing

;---------------------------------------------------------------------------------------------------

.continue
|01D48B| LDX.w $068E

|01D48E| LDA.l $7F2000,X
|01D492| AND.w #$0007
|01D495| ASL A
|01D496| TAX

|01D497| LDA.w $068C
|01D49A| ORA.w BitMasks,X
|01D49D| STA.w $068C

|01D4A0| LDA.w $0400
|01D4A3| ORA.w BitMasks,X
|01D4A6| STA.w $0400

;---------------------------------------------------------------------------------------------------

.draw_part_1
|01D4A9| STY.w $0692

|01D4AC| STZ.b $0C

|01D4AE| LDX.w $068E

|01D4B1| LDA.l $7F2000,X
|01D4B5| AND.w #$000F
|01D4B8| ASL A
|01D4B9| TAY

|01D4BA| JSR DrawDoorOpening_Step1
|01D4BD| JSR PrepNextTilemapUpdateDMA

|01D4C0| LDY.b $0C

|01D4C2| LDA.w #$FFFF
|01D4C5| STA.w $1100,Y

|01D4C8| SEP #$30

|01D4CA| LDA.b #$15 ; SFX3.15
|01D4CC| STA.w $012F

|01D4CF| LDA.b #$01
|01D4D1| STA.b $18

|01D4D3| REP #$30

;---------------------------------------------------------------------------------------------------

.no_drawing
|01D4D5| LDA.w $0690
|01D4D8| CMP.w #$0010
|01D4DB| BNE .exit

|01D4DD| JSR LoadSingleDoorTileType_from_wram_index

|01D4E0| LDX.w $068E

|01D4E3| LDA.l $7F2000,X
|01D4E7| AND.w #$00FF
|01D4EA| CMP.w #$00F0 ; TILETYPE F0
|01D4ED| BCC .reset_submodule

|01D4EF| AND.w #$000F
|01D4F2| ASL A
|01D4F3| TAY

|01D4F4| LDA.w $1980,Y
|01D4F7| AND.w #$00FF
|01D4FA| CMP.w #$0020 ; DOORTYPE 20
|01D4FD| BCC .reset_submodule

|01D4FF| CMP.w #$0028 ; DOORTYPE 28
|01D502| BCS .reset_submodule

|01D504| JSR DrawOpenKeyStairs

.reset_submodule
|01D507| SEP #$20

|01D509| STZ.b $11

.exit
|01D50B| SEP #$30

|01D50D| RTL

;===================================================================================================

LoadSingleDoorTileType_from_wram_index:
|01D50E| LDX.w $068E

|01D511| LDA.l $7F2000,X
|01D515| AND.w #$000F
|01D518| ASL A
|01D519| TAY

;===================================================================================================

LoadSingleDoorTileType_from_parameter:
|01D51A| JSR LoadSingleDoorAttribute

;===================================================================================================

LoadSingleDoorTileType:
|01D51D| LDX.w $044E
|01D520| BEQ .done_layer_toggles

;---------------------------------------------------------------------------------------------------

|01D522| LDY.w #$0000

.next_layer_toggle
|01D525| LDX.w $06C0,Y

|01D528| LDA.l $7F2000,X
|01D52C| AND.w #$00F0
|01D52F| CMP.w #$0080
|01D532| BNE .skip_layer_toggle

|01D534| LDA.l $7F2000,X
|01D538| ORA.w #$1010
|01D53B| STA.l $7F2000,X
|01D53F| STA.l $7F2040,X

|01D543| INY
|01D544| INY
|01D545| CPY.w $044E
|01D548| BNE .next_layer_toggle

|01D54A| BRA .done_layer_toggles

.skip_layer_toggle
|01D54C| LDA.l $7F3000,X
|01D550| ORA.w #$1010
|01D553| STA.l $7F3000,X
|01D557| STA.l $7F3040,X

|01D55B| INY
|01D55C| INY
|01D55D| CPY.w $044E
|01D560| BNE .next_layer_toggle

;---------------------------------------------------------------------------------------------------

.done_layer_toggles
|01D562| LDX.w $0450
|01D565| BEQ .exit

|01D567| LDY.w #$0000

.next_dungeon_toggle
|01D56A| LDX.w $06D0,Y

|01D56D| LDA.l $7F2000,X
|01D571| AND.w #$00F0
|01D574| CMP.w #$0080
|01D577| BNE .skip_dungeon_toggle

|01D579| LDA.l $7F2000,X
|01D57D| ORA.w #$2020
|01D580| STA.l $7F2000,X
|01D584| STA.l $7F2040,X

|01D588| INY
|01D589| INY
|01D58A| CPY.w $0450
|01D58D| BNE .next_dungeon_toggle

|01D58F| BRA .exit

.skip_dungeon_toggle
|01D591| LDA.l $7F3000,X
|01D595| ORA.w #$2020
|01D598| STA.l $7F3000,X
|01D59C| STA.l $7F3040,X

|01D5A0| INY
|01D5A1| INY
|01D5A2| CPY.w $0450
|01D5A5| BNE .next_dungeon_toggle

.exit
|01D5A7| RTS

;===================================================================================================

DrawOpenKeyStairs:
|01D5A8| LDA.w #$3030 ; TILETYPE 30
|01D5AB| STA.b $00

|01D5AD| LDY.w #$0000

|01D5B0| LDX.w $0438
|01D5B3| BEQ .skip_a

.next_a
|01D5B5| LDA.b $00
|01D5B7| CLC
|01D5B8| ADC.w #$0101
|01D5BB| STA.b $00

|01D5BD| INY
|01D5BE| INY
|01D5BF| CPY.w $0438
|01D5C2| BNE .next_a

;---------------------------------------------------------------------------------------------------

.skip_a
|01D5C4| CPY.w $047E
|01D5C7| BEQ .skip_b

.next_b
|01D5C9| LDX.w $06B0,Y

|01D5CC| LDA.w #$5E5E ; TILETYPE 5E
|01D5CF| STA.l $7F2001,X

|01D5D3| LDA.b $00
|01D5D5| STA.l $7F2041,X

|01D5D9| CLC
|01D5DA| ADC.w #$0101
|01D5DD| STA.b $00

|01D5DF| LDA.w #$0000 ; TILETYPE 00
|01D5E2| STA.l $7F2081,X
|01D5E6| STA.l $7F20C1,X

|01D5EA| INY
|01D5EB| INY
|01D5EC| CPY.w $047E
|01D5EF| BNE .next_b

;---------------------------------------------------------------------------------------------------

.skip_b
|01D5F1| CPY.w $0482
|01D5F4| BEQ .skip_c

.next_c
|01D5F6| LDX.w $06B0,Y

|01D5F9| LDA.w #$5F5F ; TILETYPE 5F
|01D5FC| STA.l $7F2001,X

|01D600| LDA.b $00
|01D602| STA.l $7F2041,X

|01D606| CLC
|01D607| ADC.w #$0101
|01D60A| STA.b $00

|01D60C| LDA.w #$0000 ; TILETYPE 00
|01D60F| STA.l $7F2081,X
|01D613| STA.l $7F20C1,X

|01D617| INY
|01D618| INY
|01D619| CPY.w $0482
|01D61C| BNE .next_c

;---------------------------------------------------------------------------------------------------

.skip_c
|01D61E| CPY.w $04A2
|01D621| BEQ .skip_d

.next_d
|01D623| LDA.b $00
|01D625| CLC
|01D626| ADC.w #$0101
|01D629| STA.b $00

|01D62B| INY
|01D62C| INY
|01D62D| CPY.w $04A2
|01D630| BNE .next_d

;---------------------------------------------------------------------------------------------------

.skip_d
|01D632| CPY.w $04A4
|01D635| BEQ .skip_e

.next_e
|01D637| LDA.b $00
|01D639| CLC
|01D63A| ADC.w #$0101
|01D63D| STA.b $00

|01D63F| INY
|01D640| INY
|01D641| CPY.w $04A4
|01D644| BNE .next_e

;---------------------------------------------------------------------------------------------------

.skip_e
|01D646| LDA.b $00
|01D648| AND.w #$0707
|01D64B| ORA.w #$3434
|01D64E| STA.b $00

|01D650| CPY.w $043A
|01D653| BEQ .skip_f

.next_f
|01D655| LDA.b $00
|01D657| CLC
|01D658| ADC.w #$0101
|01D65B| STA.b $00

|01D65D| INY
|01D65E| INY
|01D65F| CPY.w $043A
|01D662| BNE .next_f

;---------------------------------------------------------------------------------------------------

.skip_f
|01D664| CPY.w $0480
|01D667| BEQ .skip_g

.next_g
|01D669| LDX.w $06B0,Y

|01D66C| LDA.w #$5E5E ; TILETYPE 5E
|01D66F| STA.l $7F2001,X

|01D673| LDA.b $00
|01D675| STA.l $7F2041,X

|01D679| CLC
|01D67A| ADC.w #$0101
|01D67D| STA.b $00

|01D67F| LDA.w #$0000 ; TILETYPE 00
|01D682| STA.l $7F2081,X
|01D686| STA.l $7F20C1,X

|01D68A| INY
|01D68B| INY
|01D68C| CPY.w $0480
|01D68F| BNE .next_g

;---------------------------------------------------------------------------------------------------

.skip_g
|01D691| CPY.w $0484
|01D694| BEQ .exit

.next_h
|01D696| LDX.w $06B0,Y

|01D699| LDA.w #$5F5F ; TILETYPE 5F
|01D69C| STA.l $7F2001,X

|01D6A0| LDA.b $00
|01D6A2| STA.l $7F2041,X

|01D6A6| CLC
|01D6A7| ADC.w #$0101
|01D6AA| STA.b $00

|01D6AC| LDA.w #$0000 ; TILETYPE 00
|01D6AF| STA.l $7F2081,X
|01D6B3| STA.l $7F20C1,X

|01D6B7| INY
|01D6B8| INY
|01D6B9| CPY.w $0484
|01D6BC| BNE .next_h

.exit
|01D6BE| RTS

;===================================================================================================

ClearAwayExplodingWall:
|01D6BF| LDA.b #$06
|01D6C1| STA.w $02E4
|01D6C4| STA.w $0FC1

|01D6C7| CMP.l $7F0000
|01D6CB| BNE .exit

|01D6CD| REP #$30

|01D6CF| JSR IndexAndClearExplodingWall
|01D6D2| JSR ClearAndStripeExplodingWall

|01D6D5| LDA.w #$FFFF
|01D6D8| STA.w $1100,Y
|01D6DB| STA.w $0710

|01D6DE| INC.w $0454
|01D6E1| INC.w $0454

|01D6E4| LDA.w $0454
|01D6E7| CMP.w #$0015
|01D6EA| BNE .trigger_transfer

|01D6EC| LDY.w $0456

|01D6EF| LDA.w $068C
|01D6F2| ORA.w BitMasks,Y
|01D6F5| STA.w $068C

|01D6F8| LDA.w $0400
|01D6FB| ORA.w BitMasks,Y
|01D6FE| STA.w $0400

;---------------------------------------------------------------------------------------------------

|01D701| LDX.w #$0001

|01D704| LDA.w $19C0,Y

|01D707| LDY.w #$0100
|01D70A| AND.w #$0002
|01D70D| BEQ .not_horizontal_door

|01D70F| LDY.w #$0001
|01D712| DEX

.not_horizontal_door
|01D713| TYA
|01D714| ORA.w $0452
|01D717| STA.w $0452

|01D71A| LDA.b $A6,X
|01D71C| ORA.w #$0002
|01D71F| STA.b $A6,X

|01D721| LDA.b $A6
|01D723| STA.l $7EC19C

|01D727| LDY.w $0456
|01D72A| JSR LoadBlastWallAttribute

|01D72D| STZ.w $0454
|01D730| STZ.w $0456

|01D733| SEP #$30

|01D735| JSL FullyUpdateRoomFlags

|01D739| STZ.w $02E4
|01D73C| STZ.w $0FC1

;---------------------------------------------------------------------------------------------------

.trigger_transfer
|01D73F| SEP #$30

|01D741| LDA.b #$03
|01D743| STA.b $18

.exit
|01D745| RTL

;===================================================================================================

TestAndIDLiftableObject:
|01D746| REP #$30

|01D748| LDA.b $2F
|01D74A| AND.w #$00FF
|01D74D| TAX

|01D74E| LDA.b $20
|01D750| CLC
|01D751| ADC.l .offset_y,X
|01D755| AND.w #$01F8
|01D758| ASL A
|01D759| ASL A
|01D75A| ASL A
|01D75B| STA.b $06

|01D75D| LDA.b $22
|01D75F| CLC
|01D760| ADC.l .offset_x,X
|01D764| AND.w #$01F8
|01D767| LSR A
|01D768| LSR A
|01D769| LSR A
|01D76A| ORA.b $06
|01D76C| STA.b $06

;---------------------------------------------------------------------------------------------------

|01D76E| LDA.b $EE
|01D770| AND.w #$00FF
|01D773| BEQ .upper_layer

|01D775| LDA.b $06
|01D777| ORA.w #$1000
|01D77A| STA.b $06

.upper_layer
|01D77C| LDX.b $06

|01D77E| LDA.l $7F2000,X
|01D782| AND.w #$00F0
|01D785| CMP.w #$0070
|01D788| BNE .use_tile_here

|01D78A| LDA.l $7F2000,X
|01D78E| AND.w #$000F
|01D791| ASL A
|01D792| TAX

|01D793| LDA.w $0500,X
|01D796| BEQ .use_tile_here

|01D798| LDY.w #$0055

|01D79B| AND.w #$F0F0
|01D79E| CMP.w #$2020
|01D7A1| BEQ .is_pot

|01D7A3| LDA.w $0500,X
|01D7A6| AND.w #$000F
|01D7A9| ASL A
|01D7AA| TAX

|01D7AB| LDA.l .category,X
|01D7AF| TAY

.is_pot
|01D7B0| TYA

|01D7B1| SEP #$31

|01D7B3| RTL

;---------------------------------------------------------------------------------------------------

.use_tile_here
|01D7B4| LDX.b $06

|01D7B6| LDA.l $7F2000,X

|01D7BA| SEP #$30
|01D7BC| CLC

|01D7BD| RTL

;===================================================================================================

pool PushBlock_Main

.offset
|01D7BE| dw $FF00
|01D7C0| dw $0100
|01D7C2| dw $FFFC
|01D7C4| dw $0004

endpool

;---------------------------------------------------------------------------------------------------

PushBlock_Main:
|01D7C6| LDA.w $0500,Y
|01D7C9| BEQ .to_next

|01D7CB| CMP.w #$0001
|01D7CE| BNE .no_hole

|01D7D0| JSR RoomDraw_16x16Single

|01D7D3| LDX.w $0474

|01D7D6| LDA.w $0540,Y
|01D7D9| CLC
|01D7DA| ADC.l .offset,X
|01D7DE| STA.w $0540,Y

|01D7E1| BRA .advance_block_ai

;---------------------------------------------------------------------------------------------------

.no_hole
|01D7E3| CMP.w #$0002
|01D7E6| BNE .skip_interaction

|01D7E8| SEP #$30

|01D7EA| JSL PushBlock_Slide

|01D7EE| REP #$30

|01D7F0| LDY.w $042C

|01D7F3| LDA.w $0500,Y
|01D7F6| CMP.w #$0003
|01D7F9| BNE .to_next

|01D7FB| JSR PushBlock_CheckForPit

|01D7FE| BRA .advance_block_ai

;---------------------------------------------------------------------------------------------------

.skip_interaction
|01D800| CMP.w #$0004
|01D803| BNE .to_next

|01D805| SEP #$30

|01D807| JSL PushBlock_HandleFalling

|01D80B| BRA .to_next

;---------------------------------------------------------------------------------------------------

.advance_block_ai
|01D80D| LDX.w $042C

|01D810| INC.w $0500,X

.to_next
|01D813| INC.w $042C
|01D816| INC.w $042C

;===================================================================================================

PushBlock_Handler:
|01D819| REP #$30

|01D81B| LDY.w $042C
|01D81E| CPY.w $0478
|01D821| BNE PushBlock_Main

|01D823| SEP #$30

|01D825| RTL

;===================================================================================================

RoomDraw_16x16Single:
|01D826| LDX.w $1000

|01D829| LDA.w $0560,Y
|01D82C| STA.w $1006,X

|01D82F| LDA.w $0580,Y
|01D832| STA.w $100C,X

|01D835| LDA.w $05A0,Y
|01D838| STA.w $1012,X

|01D83B| LDA.w $05C0,Y
|01D83E| STA.w $1018,X

|01D841| LDA.w $0540,Y
|01D844| AND.w #$3FFF
|01D847| TAX

|01D848| LDA.w $0560,Y
|01D84B| STA.l $7E2000,X

|01D84F| LDA.w $0580,Y
|01D852| STA.l $7E2080,X

|01D856| LDA.w $05A0,Y
|01D859| STA.l $7E2002,X

|01D85D| LDA.w $05C0,Y
|01D860| STA.l $7E2082,X

|01D864| AND.w #$03FF
|01D867| TAX

|01D868| LDA.l $7EFE00,X
|01D86C| AND.w #$00FF
|01D86F| STA.b $00
|01D871| STA.b $01

|01D873| LDA.w $0540,Y
|01D876| AND.w #$3FFF
|01D879| LSR A
|01D87A| TAX

|01D87B| LDA.b $00

;===================================================================================================

RoomDraw_16x16Single_stripe_inited:
|01D87D| STA.l $7F2000,X
|01D881| STA.l $7F2040,X

;---------------------------------------------------------------------------------------------------

|01D885| LDX.w $1000

|01D888| LDA.w #$0000
|01D88B| JSR RoomDraw_16x16SingleTileStripe
|01D88E| STA.w $1002,X

|01D891| LDA.w #$0080
|01D894| JSR RoomDraw_16x16SingleTileStripe
|01D897| STA.w $1008,X

|01D89A| LDA.w #$0002
|01D89D| JSR RoomDraw_16x16SingleTileStripe
|01D8A0| STA.w $100E,X

|01D8A3| LDA.w #$0082
|01D8A6| JSR RoomDraw_16x16SingleTileStripe
|01D8A9| STA.w $1014,X

;---------------------------------------------------------------------------------------------------

|01D8AC| LDA.w #$0100
|01D8AF| STA.w $1004,X
|01D8B2| STA.w $100A,X
|01D8B5| STA.w $1010,X
|01D8B8| STA.w $1016,X

|01D8BB| LDA.w #$FFFF
|01D8BE| STA.w $101A,X

|01D8C1| TXA
|01D8C2| CLC
|01D8C3| ADC.w #$0018
|01D8C6| STA.w $1000

|01D8C9| SEP #$20

|01D8CB| LDA.b #$01
|01D8CD| STA.b $14

|01D8CF| REP #$30

|01D8D1| RTS

;===================================================================================================

PushBlock_CheckForPit:
|01D8D2| LDA.w $0540,Y
|01D8D5| AND.w #$4000
|01D8D8| BNE .upper_layer

|01D8DA| LDA.w $0641
|01D8DD| EOR.w #$0001
|01D8E0| STA.w $0641

.upper_layer
|01D8E3| LDA.w $0540,Y
|01D8E6| AND.w #$3FFF
|01D8E9| LSR A
|01D8EA| TAX

|01D8EB| LDA.l $7F2000,X
|01D8EF| AND.w #$00FF
|01D8F2| CMP.w #$0020 ; TILETYPE 20
|01D8F5| BEQ .play_sfx_and_done

;---------------------------------------------------------------------------------------------------

|01D8F7| PHA
|01D8F8| PHY
|01D8F9| PHX

|01D8FA| LDX.w $1000

|01D8FD| LDA.w #$0922
|01D900| STA.w $1006,X

|01D903| INC A
|01D904| STA.w $1012,X

|01D907| LDA.w #$0932
|01D90A| STA.w $100C,X

|01D90D| INC A
|01D90E| STA.w $1018,X

|01D911| LDA.w $0540,Y
|01D914| AND.w #$3FFF
|01D917| TAX

|01D918| LDA.w #$0922
|01D91B| STA.l $7E2000,X

|01D91F| INC A
|01D920| STA.l $7E2002,X

|01D924| LDA.w #$0932
|01D927| STA.l $7E2080,X

|01D92B| INC A
|01D92C| STA.l $7E2082,X

;---------------------------------------------------------------------------------------------------

|01D930| SEP #$20

|01D932| STY.b $72

; [DUMB]
|01D934| LDX.w #$0001

|01D937| LDA.w $05FC,X
|01D93A| DEC A
|01D93B| ASL A
|01D93C| CMP.b $72
|01D93E| BEQ .this_block

|01D940| LDX.w #$0000

.this_block
|01D943| STZ.w $05FC,X

;---------------------------------------------------------------------------------------------------

|01D946| REP #$20

|01D948| PLX
|01D949| PLY
|01D94A| PLA

|01D94B| CMP.w #$0023
|01D94E| BNE .go_negative

|01D950| LDA.w $0468
|01D953| EOR.w #$0001
|01D956| STA.w $0466

|01D959| LDA.w #$0004
|01D95C| BRA .proceed

;---------------------------------------------------------------------------------------------------

.go_negative
|01D95E| LDA.w #$FFFF

.proceed
|01D961| STA.w $0500,Y

|01D964| LDA.w #$2727
|01D967| JMP.w RoomDraw_16x16Single_stripe_inited

;---------------------------------------------------------------------------------------------------

.play_sfx_and_done
|01D96A| SEP #$20

|01D96C| LDA.b #$20 ; SFX2.20
|01D96E| STA.w $012E

|01D971| REP #$20

|01D973| LDY.w $042C
|01D976| LDX.w $0520,Y

|01D979| LDA.l $7EC000
|01D97D| AND.w #$00FF
|01D980| STA.l $7EF940,X

|01D984| LDA.w $0540,Y
|01D987| STA.l $7EF942,X

|01D98B| RTS

;===================================================================================================

RoomDraw_16x16SingleTileStripe:
|01D98C| STA.b $0E

|01D98E| LDA.w $0540,Y
|01D991| AND.w #$3FFF
|01D994| CLC
|01D995| ADC.b $0E
|01D997| STA.b $0E

|01D999| AND.w #$0040
|01D99C| LSR A ; /16
|01D99D| LSR A
|01D99E| LSR A
|01D99F| LSR A
|01D9A0| XBA
|01D9A1| STA.b $00

|01D9A3| LDA.b $0E
|01D9A5| AND.w #$303F
|01D9A8| LSR A
|01D9A9| ORA.b $00
|01D9AB| STA.b $00

|01D9AD| LDA.b $0E
|01D9AF| AND.w #$0F80
|01D9B2| LSR A
|01D9B3| LSR A
|01D9B4| ORA.b $00
|01D9B6| XBA

|01D9B7| RTS

;===================================================================================================

pool HandleUnderworldLiftables TestAndIDLiftableObject

.offset_y
|01D9B8| dw   3 ; up
|01D9BA| dw  24 ; down
|01D9BC| dw  14 ; left
|01D9BE| dw  14 ; right

.offset_x
|01D9C0| dw   7 ; up
|01D9C2| dw   7 ; down
|01D9C4| dw  -3 ; left
|01D9C6| dw  16 ; right

;---------------------------------------------------------------------------------------------------

.unused
|01D9C8| dw $0000, $FFFE, $FF80, $FF7E
|01D9D0| dw $0000, $0000, $FF80, $FF80
|01D9D8| dw $0000, $FFFE, $0000, $FFFE

;---------------------------------------------------------------------------------------------------

; TODO not sure what upper nibble is still...
.category
|01D9E0| dw $5252 ; hammer pegs
|01D9E2| dw $5050 ; pots
|01D9E4| dw $5454
|01D9E6| dw $0000
|01D9E8| dw $2323

endpool

;---------------------------------------------------------------------------------------------------

HandleUnderworldLiftables:
|01D9EA| REP #$30

|01D9EC| LDA.b $2F
|01D9EE| AND.w #$00FF
|01D9F1| TAX

|01D9F2| LDA.b $20
|01D9F4| CLC
|01D9F5| ADC.l .offset_y,X
|01D9F9| STA.b $00
|01D9FB| STA.b $C8

|01D9FD| AND.w #$01F8
|01DA00| ASL A
|01DA01| ASL A
|01DA02| ASL A
|01DA03| STA.b $06

|01DA05| LDA.b $22
|01DA07| CLC
|01DA08| ADC.l .offset_x,X
|01DA0C| STA.b $02
|01DA0E| STA.b $CA

|01DA10| AND.w #$01F8
|01DA13| LSR A
|01DA14| LSR A
|01DA15| LSR A
|01DA16| TSB.b $06

|01DA18| LDA.b $EE
|01DA1A| AND.w #$00FF
|01DA1D| BEQ .upper_layer

|01DA1F| LDA.b $06
|01DA21| ORA.w #$1000
|01DA24| STA.b $06

;---------------------------------------------------------------------------------------------------

.upper_layer
|01DA26| LDX.b $06

|01DA28| LDA.l $7F2000,X
|01DA2C| AND.w #$000F
|01DA2F| ASL A
|01DA30| TAY

|01DA31| LDA.w $0500,Y
|01DA34| AND.w #$F0F0
|01DA37| CMP.w #$1010
|01DA3A| BNE .check_if_hole

|01DA3C| LDA.w $0500,Y
|01DA3F| PHA

|01DA40| STY.w $042C

|01DA43| LDA.w $0540,Y
|01DA46| JSR RevealPotItem

|01DA49| LDY.w $042C
|01DA4C| JSR RoomDraw_16x16Single

|01DA4F| PLA
|01DA50| AND.w #$000F
|01DA53| ASL A
|01DA54| TAX

|01DA55| LDA.l .category,X
|01DA59| STA.b $06

|01DA5B| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.check_if_hole
|01DA5D| CMP.w #$2020
|01DA60| BNE FAIL_01DAB4

|01DA62| LDA.w $0500,Y
|01DA65| AND.w #$000F
|01DA68| ASL A
|01DA69| STA.b $00

|01DA6B| TYA
|01DA6C| SEC
|01DA6D| SBC.b $00

;===================================================================================================

#DrawLightenedThievesAtticHole:
|01DA6F| STA.w $042C

|01DA72| PHA

|01DA73| TAY
|01DA74| PHY

|01DA75| LDA.w $0540,Y
|01DA78| JSR RevealPotItem

|01DA7B| PLY
|01DA7C| JSR RoomDraw_16x16Single

|01DA7F| INC.w $042C
|01DA82| INC.w $042C

|01DA85| LDY.w $042C
|01DA88| JSR RoomDraw_16x16Single

|01DA8B| INC.w $042C
|01DA8E| INC.w $042C

|01DA91| LDY.w $042C
|01DA94| JSR RoomDraw_16x16Single

|01DA97| INC.w $042C
|01DA9A| INC.w $042C

|01DA9D| LDY.w $042C
|01DAA0| JSR RoomDraw_16x16Single

|01DAA3| LDA.w #$5555
|01DAA6| STA.b $06

|01DAA8| PLA
|01DAA9| STA.w $042C

;---------------------------------------------------------------------------------------------------

.finish_up
|01DAAC| JSR GetFullCoordinatesForObject

|01DAAF| LDA.b $06

|01DAB1| SEP #$30

|01DAB3| RTL

;---------------------------------------------------------------------------------------------------

FAIL_01DAB4:
|01DAB4| SEP #$30

|01DAB6| LDA.b #$00

|01DAB8| RTL

;===================================================================================================

HandleItemTileAction_Underworld:
|01DAB9| REP #$30

|01DABB| LDA.w $0301
|01DABE| AND.w #$0002
|01DAC1| BEQ FAIL_01DAB4

|01DAC3| LDA.b $00
|01DAC5| AND.w #$01F8
|01DAC8| ASL A ; x8
|01DAC9| ASL A
|01DACA| ASL A
|01DACB| ADC.b $02
|01DACD| STA.b $06

|01DACF| LDA.b $EE
|01DAD1| AND.w #$00FF
|01DAD4| BEQ .upper_layer

|01DAD6| LDA.b $06
|01DAD8| ORA.w #$1000
|01DADB| STA.b $06

.upper_layer
|01DADD| LDX.b $06

|01DADF| LDA.l $7F2000,X
|01DAE3| AND.w #$00F0
|01DAE6| CMP.w #$0070
|01DAE9| BNE FAIL_01DAB4

|01DAEB| LDA.l $7F2000,X
|01DAEF| AND.w #$000F
|01DAF2| ASL A
|01DAF3| TAY

|01DAF4| LDA.w $0500,Y
|01DAF7| AND.w #$F0F0
|01DAFA| CMP.w #$4040
|01DAFD| BNE .not_hammer_pegs

|01DAFF| LDA.w $0500,Y
|01DB02| PHA ; [USELESS]

|01DB03| STY.w $042C

|01DB06| JSR RoomDraw_16x16Single

|01DB09| PLA ; What's the point if you just LDA?

|01DB0A| SEP #$30

|01DB0C| LDA.b #$11 ; SFX2.11
|01DB0E| STA.w $012E

|01DB11| LDA.b #$00

|01DB13| RTL

;---------------------------------------------------------------------------------------------------

.not_hammer_pegs
|01DB14| CMP.w #$1010
|01DB17| BNE FAIL_01DAB4

|01DB19| STY.w $042C

|01DB1C| LDA.w $0540,Y
|01DB1F| JSR RevealPotItem

|01DB22| LDY.w $042C

|01DB25| JSR RoomDraw_16x16Single
|01DB28| JSR GetFullCoordinatesForObject

|01DB2B| SEP #$30

|01DB2D| LDA.w $0B9C
|01DB30| ORA.b #$80
|01DB32| STA.w $0B9C

|01DB35| LDA.b #$01
|01DB37| JSL SpawnImmediatelySmashedTerrain

|01DB3B| JML AncillaAdd_BushPoof

;===================================================================================================
; since tile map offsets only have 9 bits of resolution
;===================================================================================================
GetFullCoordinatesForObject:
|01DB3F| LDY.w $042C

|01DB42| LDA.w $0540,Y
|01DB45| PHA

|01DB46| AND.w #$007E
|01DB49| ASL A
|01DB4A| ASL A
|01DB4B| STA.b $00

|01DB4D| LDA.b $22
|01DB4F| AND.w #$FE00
|01DB52| TSB.b $00

|01DB54| PLA
|01DB55| AND.w #$1F80
|01DB58| ASL A
|01DB59| XBA
|01DB5A| ASL A
|01DB5B| ASL A
|01DB5C| ASL A
|01DB5D| STA.b $02

|01DB5F| LDA.b $20
|01DB61| AND.w #$FE00
|01DB64| TSB.b $02

|01DB66| RTS

;===================================================================================================
; dw tilemap : db id
;===================================================================================================
RoomData_PotItems_Pointers:
|01DB67| dw RoomData_PotItems_Room0000
|01DB69| dw RoomData_PotItems_Room0001
|01DB6B| dw RoomData_PotItems_Room0002
|01DB6D| dw RoomData_PotItems_Room0003
|01DB6F| dw RoomData_PotItems_Room0004
|01DB71| dw RoomData_PotItems_Room0005
|01DB73| dw RoomData_PotItems_Room0006
|01DB75| dw RoomData_PotItems_Room0007
|01DB77| dw RoomData_PotItems_Room0008
|01DB79| dw RoomData_PotItems_Room0009
|01DB7B| dw RoomData_PotItems_Room000A
|01DB7D| dw RoomData_PotItems_Room000B
|01DB7F| dw RoomData_PotItems_Room000C
|01DB81| dw RoomData_PotItems_Room000D
|01DB83| dw RoomData_PotItems_Room000E
|01DB85| dw RoomData_PotItems_Room000F
|01DB87| dw RoomData_PotItems_Room0010
|01DB89| dw RoomData_PotItems_Room0011
|01DB8B| dw RoomData_PotItems_Room0012
|01DB8D| dw RoomData_PotItems_Room0013
|01DB8F| dw RoomData_PotItems_Room0014
|01DB91| dw RoomData_PotItems_Room0015
|01DB93| dw RoomData_PotItems_Room0016
|01DB95| dw RoomData_PotItems_Room0017
|01DB97| dw RoomData_PotItems_Room0018
|01DB99| dw RoomData_PotItems_Room0019
|01DB9B| dw RoomData_PotItems_Room001A
|01DB9D| dw RoomData_PotItems_Room001B
|01DB9F| dw RoomData_PotItems_Room001C
|01DBA1| dw RoomData_PotItems_Room001D
|01DBA3| dw RoomData_PotItems_Room001E
|01DBA5| dw RoomData_PotItems_Room001F
|01DBA7| dw RoomData_PotItems_Room0020
|01DBA9| dw RoomData_PotItems_Room0021
|01DBAB| dw RoomData_PotItems_Room0022
|01DBAD| dw RoomData_PotItems_Room0023
|01DBAF| dw RoomData_PotItems_Room0024
|01DBB1| dw RoomData_PotItems_Room0025
|01DBB3| dw RoomData_PotItems_Room0026
|01DBB5| dw RoomData_PotItems_Room0027
|01DBB7| dw RoomData_PotItems_Room0028
|01DBB9| dw RoomData_PotItems_Room0029
|01DBBB| dw RoomData_PotItems_Room002A
|01DBBD| dw RoomData_PotItems_Room002B
|01DBBF| dw RoomData_PotItems_Room002C
|01DBC1| dw RoomData_PotItems_Room002D
|01DBC3| dw RoomData_PotItems_Room002E
|01DBC5| dw RoomData_PotItems_Room002F
|01DBC7| dw RoomData_PotItems_Room0030
|01DBC9| dw RoomData_PotItems_Room0031
|01DBCB| dw RoomData_PotItems_Room0032
|01DBCD| dw RoomData_PotItems_Room0033
|01DBCF| dw RoomData_PotItems_Room0034
|01DBD1| dw RoomData_PotItems_Room0035
|01DBD3| dw RoomData_PotItems_Room0036
|01DBD5| dw RoomData_PotItems_Room0037
|01DBD7| dw RoomData_PotItems_Room0038
|01DBD9| dw RoomData_PotItems_Room0039
|01DBDB| dw RoomData_PotItems_Room003A
|01DBDD| dw RoomData_PotItems_Room003B
|01DBDF| dw RoomData_PotItems_Room003C
|01DBE1| dw RoomData_PotItems_Room003D
|01DBE3| dw RoomData_PotItems_Room003E
|01DBE5| dw RoomData_PotItems_Room003F
|01DBE7| dw RoomData_PotItems_Room0040
|01DBE9| dw RoomData_PotItems_Room0041
|01DBEB| dw RoomData_PotItems_Room0042
|01DBED| dw RoomData_PotItems_Room0043
|01DBEF| dw RoomData_PotItems_Room0044
|01DBF1| dw RoomData_PotItems_Room0045
|01DBF3| dw RoomData_PotItems_Room0046
|01DBF5| dw RoomData_PotItems_Room0047
|01DBF7| dw RoomData_PotItems_Room0048
|01DBF9| dw RoomData_PotItems_Room0049
|01DBFB| dw RoomData_PotItems_Room004A
|01DBFD| dw RoomData_PotItems_Room004B
|01DBFF| dw RoomData_PotItems_Room004C
|01DC01| dw RoomData_PotItems_Room004D
|01DC03| dw RoomData_PotItems_Room004E
|01DC05| dw RoomData_PotItems_Room004F
|01DC07| dw RoomData_PotItems_Room0050
|01DC09| dw RoomData_PotItems_Room0051
|01DC0B| dw RoomData_PotItems_Room0052
|01DC0D| dw RoomData_PotItems_Room0053
|01DC0F| dw RoomData_PotItems_Room0054
|01DC11| dw RoomData_PotItems_Room0055
|01DC13| dw RoomData_PotItems_Room0056
|01DC15| dw RoomData_PotItems_Room0057
|01DC17| dw RoomData_PotItems_Room0058
|01DC19| dw RoomData_PotItems_Room0059
|01DC1B| dw RoomData_PotItems_Room005A
|01DC1D| dw RoomData_PotItems_Room005B
|01DC1F| dw RoomData_PotItems_Room005C
|01DC21| dw RoomData_PotItems_Room005D
|01DC23| dw RoomData_PotItems_Room005E
|01DC25| dw RoomData_PotItems_Room005F
|01DC27| dw RoomData_PotItems_Room0060
|01DC29| dw RoomData_PotItems_Room0061
|01DC2B| dw RoomData_PotItems_Room0062
|01DC2D| dw RoomData_PotItems_Room0063
|01DC2F| dw RoomData_PotItems_Room0064
|01DC31| dw RoomData_PotItems_Room0065
|01DC33| dw RoomData_PotItems_Room0066
|01DC35| dw RoomData_PotItems_Room0067
|01DC37| dw RoomData_PotItems_Room0068
|01DC39| dw RoomData_PotItems_Room0069
|01DC3B| dw RoomData_PotItems_Room006A
|01DC3D| dw RoomData_PotItems_Room006B
|01DC3F| dw RoomData_PotItems_Room006C
|01DC41| dw RoomData_PotItems_Room006D
|01DC43| dw RoomData_PotItems_Room006E
|01DC45| dw RoomData_PotItems_Room006F
|01DC47| dw RoomData_PotItems_Room0070
|01DC49| dw RoomData_PotItems_Room0071
|01DC4B| dw RoomData_PotItems_Room0072
|01DC4D| dw RoomData_PotItems_Room0073
|01DC4F| dw RoomData_PotItems_Room0074
|01DC51| dw RoomData_PotItems_Room0075
|01DC53| dw RoomData_PotItems_Room0076
|01DC55| dw RoomData_PotItems_Room0077
|01DC57| dw RoomData_PotItems_Room0078
|01DC59| dw RoomData_PotItems_Room0079
|01DC5B| dw RoomData_PotItems_Room007A
|01DC5D| dw RoomData_PotItems_Room007B
|01DC5F| dw RoomData_PotItems_Room007C
|01DC61| dw RoomData_PotItems_Room007D
|01DC63| dw RoomData_PotItems_Room007E
|01DC65| dw RoomData_PotItems_Room007F
|01DC67| dw RoomData_PotItems_Room0080
|01DC69| dw RoomData_PotItems_Room0081
|01DC6B| dw RoomData_PotItems_Room0082
|01DC6D| dw RoomData_PotItems_Room0083
|01DC6F| dw RoomData_PotItems_Room0084
|01DC71| dw RoomData_PotItems_Room0085
|01DC73| dw RoomData_PotItems_Room0086
|01DC75| dw RoomData_PotItems_Room0087
|01DC77| dw RoomData_PotItems_Room0088
|01DC79| dw RoomData_PotItems_Room0089
|01DC7B| dw RoomData_PotItems_Room008A
|01DC7D| dw RoomData_PotItems_Room008B
|01DC7F| dw RoomData_PotItems_Room008C
|01DC81| dw RoomData_PotItems_Room008D
|01DC83| dw RoomData_PotItems_Room008E
|01DC85| dw RoomData_PotItems_Room008F
|01DC87| dw RoomData_PotItems_Room0090
|01DC89| dw RoomData_PotItems_Room0091
|01DC8B| dw RoomData_PotItems_Room0092
|01DC8D| dw RoomData_PotItems_Room0093
|01DC8F| dw RoomData_PotItems_Room0094
|01DC91| dw RoomData_PotItems_Room0095
|01DC93| dw RoomData_PotItems_Room0096
|01DC95| dw RoomData_PotItems_Room0097
|01DC97| dw RoomData_PotItems_Room0098
|01DC99| dw RoomData_PotItems_Room0099
|01DC9B| dw RoomData_PotItems_Room009A
|01DC9D| dw RoomData_PotItems_Room009B
|01DC9F| dw RoomData_PotItems_Room009C
|01DCA1| dw RoomData_PotItems_Room009D
|01DCA3| dw RoomData_PotItems_Room009E
|01DCA5| dw RoomData_PotItems_Room009F
|01DCA7| dw RoomData_PotItems_Room00A0
|01DCA9| dw RoomData_PotItems_Room00A1
|01DCAB| dw RoomData_PotItems_Room00A2
|01DCAD| dw RoomData_PotItems_Room00A3
|01DCAF| dw RoomData_PotItems_Room00A4
|01DCB1| dw RoomData_PotItems_Room00A5
|01DCB3| dw RoomData_PotItems_Room00A6
|01DCB5| dw RoomData_PotItems_Room00A7
|01DCB7| dw RoomData_PotItems_Room00A8
|01DCB9| dw RoomData_PotItems_Room00A9
|01DCBB| dw RoomData_PotItems_Room00AA
|01DCBD| dw RoomData_PotItems_Room00AB
|01DCBF| dw RoomData_PotItems_Room00AC
|01DCC1| dw RoomData_PotItems_Room00AD
|01DCC3| dw RoomData_PotItems_Room00AE
|01DCC5| dw RoomData_PotItems_Room00AF
|01DCC7| dw RoomData_PotItems_Room00B0
|01DCC9| dw RoomData_PotItems_Room00B1
|01DCCB| dw RoomData_PotItems_Room00B2
|01DCCD| dw RoomData_PotItems_Room00B3
|01DCCF| dw RoomData_PotItems_Room00B4
|01DCD1| dw RoomData_PotItems_Room00B5
|01DCD3| dw RoomData_PotItems_Room00B6
|01DCD5| dw RoomData_PotItems_Room00B7
|01DCD7| dw RoomData_PotItems_Room00B8
|01DCD9| dw RoomData_PotItems_Room00B9
|01DCDB| dw RoomData_PotItems_Room00BA
|01DCDD| dw RoomData_PotItems_Room00BB
|01DCDF| dw RoomData_PotItems_Room00BC
|01DCE1| dw RoomData_PotItems_Room00BD
|01DCE3| dw RoomData_PotItems_Room00BE
|01DCE5| dw RoomData_PotItems_Room00BF
|01DCE7| dw RoomData_PotItems_Room00C0
|01DCE9| dw RoomData_PotItems_Room00C1
|01DCEB| dw RoomData_PotItems_Room00C2
|01DCED| dw RoomData_PotItems_Room00C3
|01DCEF| dw RoomData_PotItems_Room00C4
|01DCF1| dw RoomData_PotItems_Room00C5
|01DCF3| dw RoomData_PotItems_Room00C6
|01DCF5| dw RoomData_PotItems_Room00C7
|01DCF7| dw RoomData_PotItems_Room00C8
|01DCF9| dw RoomData_PotItems_Room00C9
|01DCFB| dw RoomData_PotItems_Room00CA
|01DCFD| dw RoomData_PotItems_Room00CB
|01DCFF| dw RoomData_PotItems_Room00CC
|01DD01| dw RoomData_PotItems_Room00CD
|01DD03| dw RoomData_PotItems_Room00CE
|01DD05| dw RoomData_PotItems_Room00CF
|01DD07| dw RoomData_PotItems_Room00D0
|01DD09| dw RoomData_PotItems_Room00D1
|01DD0B| dw RoomData_PotItems_Room00D2
|01DD0D| dw RoomData_PotItems_Room00D3
|01DD0F| dw RoomData_PotItems_Room00D4
|01DD11| dw RoomData_PotItems_Room00D5
|01DD13| dw RoomData_PotItems_Room00D6
|01DD15| dw RoomData_PotItems_Room00D7
|01DD17| dw RoomData_PotItems_Room00D8
|01DD19| dw RoomData_PotItems_Room00D9
|01DD1B| dw RoomData_PotItems_Room00DA
|01DD1D| dw RoomData_PotItems_Room00DB
|01DD1F| dw RoomData_PotItems_Room00DC
|01DD21| dw RoomData_PotItems_Room00DD
|01DD23| dw RoomData_PotItems_Room00DE
|01DD25| dw RoomData_PotItems_Room00DF
|01DD27| dw RoomData_PotItems_Room00E0
|01DD29| dw RoomData_PotItems_Room00E1
|01DD2B| dw RoomData_PotItems_Room00E2
|01DD2D| dw RoomData_PotItems_Room00E3
|01DD2F| dw RoomData_PotItems_Room00E4
|01DD31| dw RoomData_PotItems_Room00E5
|01DD33| dw RoomData_PotItems_Room00E6
|01DD35| dw RoomData_PotItems_Room00E7
|01DD37| dw RoomData_PotItems_Room00E8
|01DD39| dw RoomData_PotItems_Room00E9
|01DD3B| dw RoomData_PotItems_Room00EA
|01DD3D| dw RoomData_PotItems_Room00EB
|01DD3F| dw RoomData_PotItems_Room00EC
|01DD41| dw RoomData_PotItems_Room00ED
|01DD43| dw RoomData_PotItems_Room00EE
|01DD45| dw RoomData_PotItems_Room00EF
|01DD47| dw RoomData_PotItems_Room00F0
|01DD49| dw RoomData_PotItems_Room00F1
|01DD4B| dw RoomData_PotItems_Room00F2
|01DD4D| dw RoomData_PotItems_Room00F3
|01DD4F| dw RoomData_PotItems_Room00F4
|01DD51| dw RoomData_PotItems_Room00F5
|01DD53| dw RoomData_PotItems_Room00F6
|01DD55| dw RoomData_PotItems_Room00F7
|01DD57| dw RoomData_PotItems_Room00F8
|01DD59| dw RoomData_PotItems_Room00F9
|01DD5B| dw RoomData_PotItems_Room00FA
|01DD5D| dw RoomData_PotItems_Room00FB
|01DD5F| dw RoomData_PotItems_Room00FC
|01DD61| dw RoomData_PotItems_Room00FD
|01DD63| dw RoomData_PotItems_Room00FE
|01DD65| dw RoomData_PotItems_Room00FF
|01DD67| dw RoomData_PotItems_Room0100
|01DD69| dw RoomData_PotItems_Room0101
|01DD6B| dw RoomData_PotItems_Room0102
|01DD6D| dw RoomData_PotItems_Room0103
|01DD6F| dw RoomData_PotItems_Room0104
|01DD71| dw RoomData_PotItems_Room0105
|01DD73| dw RoomData_PotItems_Room0106
|01DD75| dw RoomData_PotItems_Room0107
|01DD77| dw RoomData_PotItems_Room0108
|01DD79| dw RoomData_PotItems_Room0109
|01DD7B| dw RoomData_PotItems_Room010A
|01DD7D| dw RoomData_PotItems_Room010B
|01DD7F| dw RoomData_PotItems_Room010C
|01DD81| dw RoomData_PotItems_Room010D
|01DD83| dw RoomData_PotItems_Room010E
|01DD85| dw RoomData_PotItems_Room010F
|01DD87| dw RoomData_PotItems_Room0110
|01DD89| dw RoomData_PotItems_Room0111
|01DD8B| dw RoomData_PotItems_Room0112
|01DD8D| dw RoomData_PotItems_Room0113
|01DD8F| dw RoomData_PotItems_Room0114
|01DD91| dw RoomData_PotItems_Room0115
|01DD93| dw RoomData_PotItems_Room0116
|01DD95| dw RoomData_PotItems_Room0117
|01DD97| dw RoomData_PotItems_Room0118
|01DD99| dw RoomData_PotItems_Room0119
|01DD9B| dw RoomData_PotItems_Room011A
|01DD9D| dw RoomData_PotItems_Room011B
|01DD9F| dw RoomData_PotItems_Room011C
|01DDA1| dw RoomData_PotItems_Room011D
|01DDA3| dw RoomData_PotItems_Room011E
|01DDA5| dw RoomData_PotItems_Room011F
|01DDA7| dw RoomData_PotItems_Room0120
|01DDA9| dw RoomData_PotItems_Room0121
|01DDAB| dw RoomData_PotItems_Room0122
|01DDAD| dw RoomData_PotItems_Room0123
|01DDAF| dw RoomData_PotItems_Room0124
|01DDB1| dw RoomData_PotItems_Room0125
|01DDB3| dw RoomData_PotItems_Room0126
|01DDB5| dw RoomData_PotItems_Room0127
|01DDB7| dw RoomData_PotItems_Room0128
|01DDB9| dw RoomData_PotItems_Room0129
|01DDBB| dw RoomData_PotItems_Room012A
|01DDBD| dw RoomData_PotItems_Room012B
|01DDBF| dw RoomData_PotItems_Room012C
|01DDC1| dw RoomData_PotItems_Room012D
|01DDC3| dw RoomData_PotItems_Room012E
|01DDC5| dw RoomData_PotItems_Room012F
|01DDC7| dw RoomData_PotItems_Room0130
|01DDC9| dw RoomData_PotItems_Room0131
|01DDCB| dw RoomData_PotItems_Room0132
|01DDCD| dw RoomData_PotItems_Room0133
|01DDCF| dw RoomData_PotItems_Room0134
|01DDD1| dw RoomData_PotItems_Room0135
|01DDD3| dw RoomData_PotItems_Room0136
|01DDD5| dw RoomData_PotItems_Room0137
|01DDD7| dw RoomData_PotItems_Room0138
|01DDD9| dw RoomData_PotItems_Room0139
|01DDDB| dw RoomData_PotItems_Room013A
|01DDDD| dw RoomData_PotItems_Room013B
|01DDDF| dw RoomData_PotItems_Room013C
|01DDE1| dw RoomData_PotItems_Room013D
|01DDE3| dw RoomData_PotItems_Room013E
|01DDE5| dw RoomData_PotItems_Room013F

;===================================================================================================

RoomData_PotItems_Room0000:
RoomData_PotItems_Room0001:
RoomData_PotItems_Room0002:
RoomData_PotItems_Room0003:
|01DDE7| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0004:
|01DDE9| dw $13CC : db $0A ; Bomb         xyz:{ 0x130, 0x130, U }
|01DDEC| dw $13F0 : db $0A ; Bomb         xyz:{ 0x1C0, 0x130, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0005:
RoomData_PotItems_Room0006:
RoomData_PotItems_Room0007:
RoomData_PotItems_Room0008:
|01DDEF| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0009:
|01DDF1| dw $040C : db $01 ; Green rupee  xyz:{ 0x030, 0x040, U }
|01DDF4| dw $0430 : db $0B ; Heart        xyz:{ 0x0C0, 0x040, U }
|01DDF7| dw $0C0C : db $88 ; Switch       xyz:{ 0x030, 0x0C0, U }
|01DDFA| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room000A:
|01DDFC| dw $0860 : db $0B ; Heart        xyz:{ 0x180, 0x080, U }
|01DDFF| dw $0868 : db $0B ; Heart        xyz:{ 0x1A0, 0x080, U }
|01DE02| dw $0BCC : db $88 ; Switch       xyz:{ 0x130, 0x0B0, U }
|01DE05| dw $119C : db $0A ; Bomb         xyz:{ 0x070, 0x110, U }
|01DE08| dw $11A0 : db $09 ; 5 arrows     xyz:{ 0x080, 0x110, U }
|01DE0B| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room000B:
|01DE0D| dw $03CA : db $0A ; Bomb         xyz:{ 0x128, 0x030, U }
|01DE10| dw $0CCA : db $0A ; Bomb         xyz:{ 0x128, 0x0C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room000C:
RoomData_PotItems_Room000D:
RoomData_PotItems_Room000E:
RoomData_PotItems_Room000F:
RoomData_PotItems_Room0010:
|01DE13| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0011:
|01DE15| dw $0F90 : db $0B ; Heart        xyz:{ 0x040, 0x0F0, U }
|01DE18| dw $0FA0 : db $0B ; Heart        xyz:{ 0x080, 0x0F0, U }
|01DE1B| dw $1390 : db $0B ; Heart        xyz:{ 0x040, 0x130, U }
|01DE1E| dw $13A0 : db $0B ; Heart        xyz:{ 0x080, 0x130, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0012:
RoomData_PotItems_Room0013:
RoomData_PotItems_Room0014:
|01DE21| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0015:
|01DE23| dw $0460 : db $0A ; Bomb         xyz:{ 0x180, 0x040, U }
|01DE26| dw $0464 : db $0C ; Small magic  xyz:{ 0x190, 0x040, U }
|01DE29| dw $0468 : db $0B ; Heart        xyz:{ 0x1A0, 0x040, U }
|01DE2C| dw $046C : db $0C ; Small magic  xyz:{ 0x1B0, 0x040, U }
|01DE2F| dw $0470 : db $09 ; 5 arrows     xyz:{ 0x1C0, 0x040, U }
|01DE32| dw $060C : db $01 ; Green rupee  xyz:{ 0x030, 0x060, U }
|01DE35| dw $0610 : db $09 ; 5 arrows     xyz:{ 0x040, 0x060, U }
|01DE38| dw $0614 : db $07 ; Blue rupee   xyz:{ 0x050, 0x060, U }
|01DE3B| dw $0B46 : db $0D ; Full magic   xyz:{ 0x118, 0x0B0, U }
|01DE3E| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0016:
|01DE40| dw $03BC : db $0B ; Heart        xyz:{ 0x0F0, 0x030, U }
|01DE43| dw $03C0 : db $0B ; Heart        xyz:{ 0x100, 0x030, U }
|01DE46| dw $04BC : db $0C ; Small magic  xyz:{ 0x0F0, 0x040, U }
|01DE49| dw $04C0 : db $0C ; Small magic  xyz:{ 0x100, 0x040, U }
|01DE4C| dw $05BC : db $09 ; 5 arrows     xyz:{ 0x0F0, 0x050, U }
|01DE4F| dw $05C0 : db $09 ; 5 arrows     xyz:{ 0x100, 0x050, U }
|01DE52| dw $06BC : db $0A ; Bomb         xyz:{ 0x0F0, 0x060, U }
|01DE55| dw $06C0 : db $0A ; Bomb         xyz:{ 0x100, 0x060, U }
|01DE58| dw $13F0 : db $08 ; Small key    xyz:{ 0x1C0, 0x130, U }
|01DE5B| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0017:
|01DE5D| dw $0D64 : db $0B ; Heart        xyz:{ 0x190, 0x0D0, U }
|01DE60| dw $0E64 : db $0B ; Heart        xyz:{ 0x190, 0x0E0, U }
|01DE63| dw $0F64 : db $0B ; Heart        xyz:{ 0x190, 0x0F0, U }
|01DE66| dw $1064 : db $0B ; Heart        xyz:{ 0x190, 0x100, U }
|01DE69| dw $1164 : db $0B ; Heart        xyz:{ 0x190, 0x110, U }
|01DE6C| dw $1264 : db $0B ; Heart        xyz:{ 0x190, 0x120, U }
|01DE6F| dw $0D68 : db $0B ; Heart        xyz:{ 0x1A0, 0x0D0, U }
|01DE72| dw $0E68 : db $0B ; Heart        xyz:{ 0x1A0, 0x0E0, U }
|01DE75| dw $0F68 : db $0B ; Heart        xyz:{ 0x1A0, 0x0F0, U }
|01DE78| dw $1068 : db $0B ; Heart        xyz:{ 0x1A0, 0x100, U }
|01DE7B| dw $1168 : db $0B ; Heart        xyz:{ 0x1A0, 0x110, U }
|01DE7E| dw $1268 : db $0B ; Heart        xyz:{ 0x1A0, 0x120, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0018:
RoomData_PotItems_Room0019:
|01DE81| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room001A:
|01DE83| dw $051C : db $0A ; Bomb         xyz:{ 0x070, 0x050, U }
|01DE86| dw $0520 : db $0A ; Bomb         xyz:{ 0x080, 0x050, U }
|01DE89| dw $1B1C : db $0A ; Bomb         xyz:{ 0x070, 0x1B0, U }
|01DE8C| dw $1B20 : db $0A ; Bomb         xyz:{ 0x080, 0x1B0, U }
|01DE8F| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room001B:
|01DE91| dw $1714 : db $09 ; 5 arrows     xyz:{ 0x050, 0x170, U }
|01DE94| dw $1728 : db $09 ; 5 arrows     xyz:{ 0x0A0, 0x170, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room001C:
RoomData_PotItems_Room001D:
|01DE97| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room001E:
|01DE99| dw $0954 : db $0A ; Bomb         xyz:{ 0x150, 0x090, U }
|01DE9C| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room001F:
|01DE9E| dw $191C : db $88 ; Switch       xyz:{ 0x070, 0x190, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0020:
|01DEA1| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0021:
|01DEA3| dw $18A8 : db $0C ; Small magic  xyz:{ 0x0A0, 0x180, U }
|01DEA6| dw $1C30 : db $0B ; Heart        xyz:{ 0x0C0, 0x1C0, U }
|01DEA9| dw $1C52 : db $0C ; Small magic  xyz:{ 0x148, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0022:
|01DEAC| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0023:
|01DEAE| dw $1A56 : db $01 ; Green rupee  xyz:{ 0x158, 0x1A0, U }
|01DEB1| dw $1A5A : db $0B ; Heart        xyz:{ 0x168, 0x1A0, U }
|01DEB4| dw $1A5E : db $01 ; Green rupee  xyz:{ 0x178, 0x1A0, U }
|01DEB7| dw $1A62 : db $0A ; Bomb         xyz:{ 0x188, 0x1A0, U }
|01DEBA| dw $1A66 : db $01 ; Green rupee  xyz:{ 0x198, 0x1A0, U }
|01DEBD| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0024:
|01DEBF| dw $040C : db $07 ; Blue rupee   xyz:{ 0x030, 0x040, U }
|01DEC2| dw $0430 : db $0B ; Heart        xyz:{ 0x0C0, 0x040, U }
|01DEC5| dw $0C0C : db $0C ; Small magic  xyz:{ 0x030, 0x0C0, U }
|01DEC8| dw $0C30 : db $01 ; Green rupee  xyz:{ 0x0C0, 0x0C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0025:
|01DECB| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0026:
|01DECD| dw $041C : db $0A ; Bomb         xyz:{ 0x070, 0x040, U }
|01DED0| dw $080C : db $0C ; Small magic  xyz:{ 0x030, 0x080, U }
|01DED3| dw $1396 : db $88 ; Switch       xyz:{ 0x058, 0x130, U }
|01DED6| dw $1A16 : db $07 ; Blue rupee   xyz:{ 0x058, 0x1A0, U }
|01DED9| dw $1ADC : db $09 ; 5 arrows     xyz:{ 0x170, 0x1A0, U }
|01DEDC| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0027:
|01DEDE| dw $14A6 : db $0A ; Bomb         xyz:{ 0x098, 0x140, U }
|01DEE1| dw $15D6 : db $0B ; Heart        xyz:{ 0x158, 0x150, U }
|01DEE4| dw $1C28 : db $01 ; Green rupee  xyz:{ 0x0A0, 0x1C0, U }
|01DEE7| dw $1C2C : db $01 ; Green rupee  xyz:{ 0x0B0, 0x1C0, U }
|01DEEA| dw $1C50 : db $07 ; Blue rupee   xyz:{ 0x140, 0x1C0, U }
|01DEED| dw $1C54 : db $07 ; Blue rupee   xyz:{ 0x150, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0028:
RoomData_PotItems_Room0029:
|01DEF0| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room002A:
|01DEF2| dw $0C50 : db $01 ; Green rupee  xyz:{ 0x140, 0x0C0, U }
|01DEF5| dw $1350 : db $0B ; Heart        xyz:{ 0x140, 0x130, U }
|01DEF8| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room002B:
|01DEFA| dw $0510 : db $0B ; Heart        xyz:{ 0x040, 0x050, U }
|01DEFD| dw $052C : db $88 ; Switch       xyz:{ 0x0B0, 0x050, U }
|01DF00| dw $0610 : db $0B ; Heart        xyz:{ 0x040, 0x060, U }
|01DF03| dw $062C : db $0A ; Bomb         xyz:{ 0x0B0, 0x060, U }
|01DF06| dw $0710 : db $0B ; Heart        xyz:{ 0x040, 0x070, U }
|01DF09| dw $072C : db $0A ; Bomb         xyz:{ 0x0B0, 0x070, U }
|01DF0C| dw $1592 : db $0A ; Bomb         xyz:{ 0x048, 0x150, U }
|01DF0F| dw $15AA : db $09 ; 5 arrows     xyz:{ 0x0A8, 0x150, U }
|01DF12| dw $1692 : db $0A ; Bomb         xyz:{ 0x048, 0x160, U }
|01DF15| dw $16AA : db $09 ; 5 arrows     xyz:{ 0x0A8, 0x160, U }
|01DF18| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room002C:
|01DF1A| dw $186C : db $0B ; Heart        xyz:{ 0x1B0, 0x180, U }
|01DF1D| dw $1870 : db $0B ; Heart        xyz:{ 0x1C0, 0x180, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room002D:
RoomData_PotItems_Room002E:
|01DF20| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room002F:
|01DF22| dw $071C : db $0B ; Heart        xyz:{ 0x070, 0x070, U }
|01DF25| dw $0720 : db $0B ; Heart        xyz:{ 0x080, 0x070, U }
|01DF28| dw $091C : db $07 ; Blue rupee   xyz:{ 0x070, 0x090, U }
|01DF2B| dw $0920 : db $07 ; Blue rupee   xyz:{ 0x080, 0x090, U }
|01DF2E| dw $13AC : db $07 ; Blue rupee   xyz:{ 0x0B0, 0x130, U }
|01DF31| dw $13B4 : db $07 ; Blue rupee   xyz:{ 0x0D0, 0x130, U }
|01DF34| dw $1B68 : db $0B ; Heart        xyz:{ 0x1A0, 0x1B0, U }
|01DF37| dw $1C68 : db $0B ; Heart        xyz:{ 0x1A0, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0030:
|01DF3A| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0031:
|01DF3C| dw $1C5C : db $0A ; Bomb         xyz:{ 0x170, 0x1C0, U }
|01DF3F| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0032:
|01DF41| dw $0D1C : db $0C ; Small magic  xyz:{ 0x070, 0x0D0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0033:
|01DF44| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0034:
|01DF46| dw $084E : db $07 ; Blue rupee   xyz:{ 0x138, 0x080, U }
|01DF49| dw $085C : db $07 ; Blue rupee   xyz:{ 0x170, 0x080, U }
|01DF4C| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0035:
|01DF4E| dw $063C : db $08 ; Small key    xyz:{ 0x0F0, 0x060, U }
|01DF51| dw $0814 : db $07 ; Blue rupee   xyz:{ 0x050, 0x080, U }
|01DF54| dw $0818 : db $07 ; Blue rupee   xyz:{ 0x060, 0x080, U }
|01DF57| dw $081C : db $07 ; Blue rupee   xyz:{ 0x070, 0x080, U }
|01DF5A| dw $0820 : db $07 ; Blue rupee   xyz:{ 0x080, 0x080, U }
|01DF5D| dw $0824 : db $07 ; Blue rupee   xyz:{ 0x090, 0x080, U }
|01DF60| dw $1430 : db $0B ; Heart        xyz:{ 0x0C0, 0x140, U }
|01DF63| dw $1770 : db $0B ; Heart        xyz:{ 0x1C0, 0x170, U }
|01DF66| dw $1C4C : db $0B ; Heart        xyz:{ 0x130, 0x1C0, U }
|01DF69| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0036:
|01DF6B| dw $046C : db $0A ; Bomb         xyz:{ 0x1B0, 0x040, U }
|01DF6E| dw $0470 : db $07 ; Blue rupee   xyz:{ 0x1C0, 0x040, U }
|01DF71| dw $100A : db $0B ; Heart        xyz:{ 0x028, 0x100, U }
|01DF74| dw $1072 : db $08 ; Small key    xyz:{ 0x1C8, 0x100, U }
|01DF77| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0037:
|01DF79| dw $063C : db $08 ; Small key    xyz:{ 0x0F0, 0x060, U }
|01DF7C| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0038:
|01DF7E| dw $0CA4 : db $0A ; Bomb         xyz:{ 0x090, 0x0C0, U }
|01DF81| dw $0DA4 : db $07 ; Blue rupee   xyz:{ 0x090, 0x0D0, U }
|01DF84| dw $12A4 : db $0A ; Bomb         xyz:{ 0x090, 0x120, U }
|01DF87| dw $13A4 : db $08 ; Small key    xyz:{ 0x090, 0x130, U }
|01DF8A| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0039:
|01DF8C| dw $140C : db $0B ; Heart        xyz:{ 0x030, 0x140, U }
|01DF8F| dw $1664 : db $0C ; Small magic  xyz:{ 0x190, 0x160, U }
|01DF92| dw $1A64 : db $09 ; 5 arrows     xyz:{ 0x190, 0x1A0, U }
|01DF95| dw $1C30 : db $09 ; 5 arrows     xyz:{ 0x0C0, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room003A:
RoomData_PotItems_Room003B:
|01DF98| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room003C:
|01DF9A| dw $0818 : db $0C ; Small magic  xyz:{ 0x060, 0x080, U }
|01DF9D| dw $0C40 : db $07 ; Blue rupee   xyz:{ 0x100, 0x0C0, U }
|01DFA0| dw $0E14 : db $01 ; Green rupee  xyz:{ 0x050, 0x0E0, U }
|01DFA3| dw $1244 : db $07 ; Blue rupee   xyz:{ 0x110, 0x120, U }
|01DFA6| dw $1360 : db $0B ; Heart        xyz:{ 0x180, 0x130, U }
|01DFA9| dw $1440 : db $07 ; Blue rupee   xyz:{ 0x100, 0x140, U }
|01DFAC| dw $1A40 : db $07 ; Blue rupee   xyz:{ 0x100, 0x1A0, U }
|01DFAF| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room003D:
|01DFB1| dw $0C4C : db $0A ; Bomb         xyz:{ 0x130, 0x0C0, U }
|01DFB4| dw $0C70 : db $0A ; Bomb         xyz:{ 0x1C0, 0x0C0, U }
|01DFB7| dw $1618 : db $0B ; Heart        xyz:{ 0x060, 0x160, U }
|01DFBA| dw $1628 : db $09 ; 5 arrows     xyz:{ 0x0A0, 0x160, U }
|01DFBD| dw $1820 : db $0B ; Heart        xyz:{ 0x080, 0x180, U }
|01DFC0| dw $1A14 : db $07 ; Blue rupee   xyz:{ 0x050, 0x1A0, U }
|01DFC3| dw $1A24 : db $0D ; Full magic   xyz:{ 0x090, 0x1A0, U }
|01DFC6| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room003E:
|01DFC8| dw $0660 : db $0A ; Bomb         xyz:{ 0x180, 0x060, U }
|01DFCB| dw $0664 : db $0C ; Small magic  xyz:{ 0x190, 0x060, U }
|01DFCE| dw $0A58 : db $0B ; Heart        xyz:{ 0x160, 0x0A0, U }
|01DFD1| dw $0A5C : db $0C ; Small magic  xyz:{ 0x170, 0x0A0, U }
|01DFD4| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room003F:
|01DFD6| dw $190C : db $01 ; Green rupee  xyz:{ 0x030, 0x190, U }
|01DFD9| dw $1914 : db $01 ; Green rupee  xyz:{ 0x050, 0x190, U }
|01DFDC| dw $1A0C : db $0A ; Bomb         xyz:{ 0x030, 0x1A0, U }
|01DFDF| dw $1A14 : db $0A ; Bomb         xyz:{ 0x050, 0x1A0, U }
|01DFE2| dw $1B0C : db $88 ; Switch       xyz:{ 0x030, 0x1B0, U }
|01DFE5| dw $1B14 : db $0B ; Heart        xyz:{ 0x050, 0x1B0, U }
|01DFE8| dw $171C : db $08 ; Small key    xyz:{ 0x070, 0x170, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0040:
|01DFEB| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0041:
|01DFED| dw $0A64 : db $0B ; Heart        xyz:{ 0x190, 0x0A0, U }
|01DFF0| dw $0F34 : db $01 ; Green rupee  xyz:{ 0x0D0, 0x0F0, U }
|01DFF3| dw $1034 : db $0C ; Small magic  xyz:{ 0x0D0, 0x100, U }
|01DFF6| dw $1694 : db $0C ; Small magic  xyz:{ 0x050, 0x160, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0042:
|01DFF9| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0043:
|01DFFB| dw $0442 : db $09 ; 5 arrows     xyz:{ 0x108, 0x040, U }
|01DFFE| dw $044E : db $0C ; Small magic  xyz:{ 0x138, 0x040, U }
|01E001| dw $0942 : db $0B ; Heart        xyz:{ 0x108, 0x090, U }
|01E004| dw $094E : db $0B ; Heart        xyz:{ 0x138, 0x090, U }
|01E007| dw $1470 : db $08 ; Small key    xyz:{ 0x1C0, 0x140, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0044:
|01E00A| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0045:
|01E00C| dw $040C : db $09 ; 5 arrows     xyz:{ 0x030, 0x040, U }
|01E00F| dw $0B6C : db $0B ; Heart        xyz:{ 0x1B0, 0x0B0, U }
|01E012| dw $0C30 : db $09 ; 5 arrows     xyz:{ 0x0C0, 0x0C0, U }
|01E015| dw $10DC : db $0C ; Small magic  xyz:{ 0x170, 0x100, U }
|01E018| dw $10EC : db $0B ; Heart        xyz:{ 0x1B0, 0x100, U }
|01E01B| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0046:
|01E01D| dw $0560 : db $0B ; Heart        xyz:{ 0x180, 0x050, U }
|01E020| dw $1B1C : db $0B ; Heart        xyz:{ 0x070, 0x1B0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0047:
RoomData_PotItems_Room0048:
|01E023| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0049:
|01E025| dw $0F68 : db $0C ; Small magic  xyz:{ 0x1A0, 0x0F0, U }
|01E028| dw $1068 : db $0C ; Small magic  xyz:{ 0x1A0, 0x100, U }
|01E02B| dw $1390 : db $0C ; Small magic  xyz:{ 0x040, 0x130, U }
|01E02E| dw $14AC : db $0B ; Heart        xyz:{ 0x0B0, 0x140, U }
|01E031| dw $1B90 : db $0B ; Heart        xyz:{ 0x040, 0x1B0, U }
|01E034| dw $1CAC : db $0C ; Small magic  xyz:{ 0x0B0, 0x1C0, U }
|01E037| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room004A:
|01E039| dw $050E : db $88 ; Switch       xyz:{ 0x038, 0x050, U }
|01E03C| dw $0520 : db $0A ; Bomb         xyz:{ 0x080, 0x050, U }
|01E03F| dw $055C : db $0A ; Bomb         xyz:{ 0x170, 0x050, U }
|01E042| dw $056E : db $88 ; Switch       xyz:{ 0x1B8, 0x050, U }
|01E045| dw $0838 : db $0A ; Bomb         xyz:{ 0x0E0, 0x080, U }
|01E048| dw $0844 : db $0A ; Bomb         xyz:{ 0x110, 0x080, U }
|01E04B| dw $0B0E : db $0B ; Heart        xyz:{ 0x038, 0x0B0, U }
|01E04E| dw $0B20 : db $01 ; Green rupee  xyz:{ 0x080, 0x0B0, U }
|01E051| dw $0B5C : db $01 ; Green rupee  xyz:{ 0x170, 0x0B0, U }
|01E054| dw $0B6E : db $0B ; Heart        xyz:{ 0x1B8, 0x0B0, U }
|01E057| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room004B:
|01E059| dw $0614 : db $09 ; 5 arrows     xyz:{ 0x050, 0x060, U }
|01E05C| dw $0628 : db $0B ; Heart        xyz:{ 0x0A0, 0x060, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room004C:
RoomData_PotItems_Room004D:
|01E05F| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room004E:
|01E061| dw $0B8C : db $88 ; Switch       xyz:{ 0x030, 0x0B0, U }
|01E064| dw $0C1C : db $0B ; Heart        xyz:{ 0x070, 0x0C0, U }
|01E067| dw $0C70 : db $0C ; Small magic  xyz:{ 0x1C0, 0x0C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room004F:
|01E06A| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0050:
|01E06C| dw $2660 : db $0B ; Heart        xyz:{ 0x180, 0x060, L }
|01E06F| dw $2664 : db $0B ; Heart        xyz:{ 0x190, 0x060, L }

RoomData_PotItems_Room0051:
|01E072| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0052:
|01E074| dw $038A : db $0B ; Heart        xyz:{ 0x028, 0x030, U }
|01E077| dw $1AC2 : db $0B ; Heart        xyz:{ 0x108, 0x1A0, U }
|01E07A| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0053:
|01E07C| dw $0B5C : db $0B ; Heart        xyz:{ 0x170, 0x0B0, U }
|01E07F| dw $0B60 : db $0C ; Small magic  xyz:{ 0x180, 0x0B0, U }
|01E082| dw $0B64 : db $08 ; Small key    xyz:{ 0x190, 0x0B0, U }
|01E085| dw $0B68 : db $0B ; Heart        xyz:{ 0x1A0, 0x0B0, U }
|01E088| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0054:
|01E08A| dw $19BA : db $07 ; Blue rupee   xyz:{ 0x0E8, 0x190, U }
|01E08D| dw $1ABA : db $0B ; Heart        xyz:{ 0x0E8, 0x1A0, U }
|01E090| dw $1BBA : db $0B ; Heart        xyz:{ 0x0E8, 0x1B0, U }
|01E093| dw $1CBA : db $0B ; Heart        xyz:{ 0x0E8, 0x1C0, U }
|01E096| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0055:
|01E098| dw $18E6 : db $0C ; Small magic  xyz:{ 0x198, 0x180, U }
|01E09B| dw $19E6 : db $0C ; Small magic  xyz:{ 0x198, 0x190, U }
|01E09E| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0056:
|01E0A0| dw $0614 : db $0C ; Small magic  xyz:{ 0x050, 0x060, U }
|01E0A3| dw $0628 : db $0C ; Small magic  xyz:{ 0x0A0, 0x060, U }
|01E0A6| dw $0718 : db $0C ; Small magic  xyz:{ 0x060, 0x070, U }
|01E0A9| dw $0724 : db $0C ; Small magic  xyz:{ 0x090, 0x070, U }
|01E0AC| dw $080C : db $0B ; Heart        xyz:{ 0x030, 0x080, U }
|01E0AF| dw $0830 : db $0B ; Heart        xyz:{ 0x0C0, 0x080, U }
|01E0B2| dw $0918 : db $0C ; Small magic  xyz:{ 0x060, 0x090, U }
|01E0B5| dw $0924 : db $0C ; Small magic  xyz:{ 0x090, 0x090, U }
|01E0B8| dw $0A14 : db $07 ; Blue rupee   xyz:{ 0x050, 0x0A0, U }
|01E0BB| dw $0A28 : db $07 ; Blue rupee   xyz:{ 0x0A0, 0x0A0, U }
|01E0BE| dw $140C : db $08 ; Small key    xyz:{ 0x030, 0x140, U }
|01E0C1| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0057:
|01E0C3| dw $075C : db $0D ; Full magic   xyz:{ 0x170, 0x070, U }
|01E0C6| dw $140C : db $0C ; Small magic  xyz:{ 0x030, 0x140, U }
|01E0C9| dw $175C : db $0A ; Bomb         xyz:{ 0x170, 0x170, U }
|01E0CC| dw $1764 : db $0C ; Small magic  xyz:{ 0x190, 0x170, U }
|01E0CF| dw $1954 : db $07 ; Blue rupee   xyz:{ 0x150, 0x190, U }
|01E0D2| dw $1B4C : db $0B ; Heart        xyz:{ 0x130, 0x1B0, U }
|01E0D5| dw $1430 : db $0C ; Small magic  xyz:{ 0x0C0, 0x140, U }
|01E0D8| dw $161E : db $88 ; Switch       xyz:{ 0x078, 0x160, U }
|01E0DB| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0058:
|01E0DD| dw $0560 : db $0A ; Bomb         xyz:{ 0x180, 0x050, U }
|01E0E0| dw $0564 : db $0C ; Small magic  xyz:{ 0x190, 0x050, U }
|01E0E3| dw $070C : db $0C ; Small magic  xyz:{ 0x030, 0x070, U }
|01E0E6| dw $075C : db $0B ; Heart        xyz:{ 0x170, 0x070, U }
|01E0E9| dw $076C : db $0B ; Heart        xyz:{ 0x1B0, 0x070, U }
|01E0EC| dw $0810 : db $0C ; Small magic  xyz:{ 0x040, 0x080, U }
|01E0EF| dw $0964 : db $0C ; Small magic  xyz:{ 0x190, 0x090, U }
|01E0F2| dw $0968 : db $0A ; Bomb         xyz:{ 0x1A0, 0x090, U }
|01E0F5| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0059:
|01E0F7| dw $2B1A : db $0B ; Heart        xyz:{ 0x068, 0x0B0, L }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room005A:
|01E0FA| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room005B:
|01E0FC| dw $25DE : db $88 ; Switch       xyz:{ 0x178, 0x050, L }
|01E0FF| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room005C:
|01E101| dw $165E : db $0A ; Bomb         xyz:{ 0x178, 0x160, U }
|01E104| dw $1A5E : db $0D ; Full magic   xyz:{ 0x178, 0x1A0, U }
|01E107| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room005D:
|01E109| dw $0510 : db $0A ; Bomb         xyz:{ 0x040, 0x050, U }
|01E10C| dw $052C : db $07 ; Blue rupee   xyz:{ 0x0B0, 0x050, U }
|01E10F| dw $0B10 : db $01 ; Green rupee  xyz:{ 0x040, 0x0B0, U }
|01E112| dw $0B2C : db $09 ; 5 arrows     xyz:{ 0x0B0, 0x0B0, U }
|01E115| dw $140C : db $09 ; 5 arrows     xyz:{ 0x030, 0x140, U }
|01E118| dw $1430 : db $0A ; Bomb         xyz:{ 0x0C0, 0x140, U }
|01E11B| dw $1C0C : db $0C ; Small magic  xyz:{ 0x030, 0x1C0, U }
|01E11E| dw $1C30 : db $0A ; Bomb         xyz:{ 0x0C0, 0x1C0, U }
|01E121| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room005E:
|01E123| dw $045C : db $0C ; Small magic  xyz:{ 0x170, 0x040, U }
|01E126| dw $0460 : db $0C ; Small magic  xyz:{ 0x180, 0x040, U }
|01E129| dw $084C : db $0B ; Heart        xyz:{ 0x130, 0x080, U }
|01E12C| dw $0870 : db $0B ; Heart        xyz:{ 0x1C0, 0x080, U }
|01E12F| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room005F:
|01E131| dw $1B2C : db $88 ; Switch       xyz:{ 0x0B0, 0x1B0, U }
|01E134| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0060:
|01E136| dw $044C : db $0B ; Heart        xyz:{ 0x130, 0x040, U }
|01E139| dw $0470 : db $0B ; Heart        xyz:{ 0x1C0, 0x040, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0061:
|01E13C| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0062:
|01E13E| dw $15D0 : db $0B ; Heart        xyz:{ 0x140, 0x150, U }
|01E141| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0063:
|01E143| dw $0830 : db $0B ; Heart        xyz:{ 0x0C0, 0x080, U }
|01E146| dw $0C0C : db $08 ; Small key    xyz:{ 0x030, 0x0C0, U }
|01E149| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0064:
|01E14B| dw $160C : db $0A ; Bomb         xyz:{ 0x030, 0x160, U }
|01E14E| dw $1610 : db $0A ; Bomb         xyz:{ 0x040, 0x160, U }
|01E151| dw $1614 : db $0A ; Bomb         xyz:{ 0x050, 0x160, U }
|01E154| dw $1C24 : db $0A ; Bomb         xyz:{ 0x090, 0x1C0, U }
|01E157| dw $1C28 : db $0C ; Small magic  xyz:{ 0x0A0, 0x1C0, U }
|01E15A| dw $1C2C : db $0C ; Small magic  xyz:{ 0x0B0, 0x1C0, U }
|01E15D| dw $1C30 : db $88 ; Switch       xyz:{ 0x0C0, 0x1C0, U }
|01E160| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0065:
|01E162| dw $1C64 : db $0A ; Bomb         xyz:{ 0x190, 0x1C0, U }
|01E165| dw $1C68 : db $0A ; Bomb         xyz:{ 0x1A0, 0x1C0, U }
|01E168| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0066:
|01E16A| dw $2530 : db $09 ; 5 arrows     xyz:{ 0x0C0, 0x050, L }
|01E16D| dw $2534 : db $0A ; Bomb         xyz:{ 0x0D0, 0x050, L }
|01E170| dw $2538 : db $07 ; Blue rupee   xyz:{ 0x0E0, 0x050, L }
|01E173| dw $0554 : db $0B ; Heart        xyz:{ 0x150, 0x050, U }
|01E176| dw $0568 : db $09 ; 5 arrows     xyz:{ 0x1A0, 0x050, U }
|01E179| dw $2630 : db $09 ; 5 arrows     xyz:{ 0x0C0, 0x060, L }
|01E17C| dw $2634 : db $0A ; Bomb         xyz:{ 0x0D0, 0x060, L }
|01E17F| dw $2638 : db $07 ; Blue rupee   xyz:{ 0x0E0, 0x060, L }
|01E182| dw $0654 : db $0B ; Heart        xyz:{ 0x150, 0x060, U }
|01E185| dw $0668 : db $0A ; Bomb         xyz:{ 0x1A0, 0x060, U }
|01E188| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0067:
|01E18A| dw $070C : db $09 ; 5 arrows     xyz:{ 0x030, 0x070, U }
|01E18D| dw $0730 : db $0C ; Small magic  xyz:{ 0x0C0, 0x070, U }
|01E190| dw $1360 : db $0B ; Heart        xyz:{ 0x180, 0x130, U }
|01E193| dw $144A : db $0C ; Small magic  xyz:{ 0x128, 0x140, U }
|01E196| dw $1712 : db $0C ; Small magic  xyz:{ 0x048, 0x170, U }
|01E199| dw $1A12 : db $0B ; Heart        xyz:{ 0x048, 0x1A0, U }
|01E19C| dw $1C68 : db $0B ; Heart        xyz:{ 0x1A0, 0x1C0, U }
|01E19F| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0068:
|01E1A1| dw $0740 : db $0B ; Heart        xyz:{ 0x100, 0x070, U }
|01E1A4| dw $0758 : db $0C ; Small magic  xyz:{ 0x160, 0x070, U }
|01E1A7| dw $1040 : db $0B ; Heart        xyz:{ 0x100, 0x100, U }
|01E1AA| dw $1840 : db $0C ; Small magic  xyz:{ 0x100, 0x180, U }
|01E1AD| dw $1940 : db $0B ; Heart        xyz:{ 0x100, 0x190, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0069:
RoomData_PotItems_Room006A:
|01E1B0| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room006B:
|01E1B2| dw $051C : db $0B ; Heart        xyz:{ 0x070, 0x050, U }
|01E1B5| dw $082C : db $0C ; Small magic  xyz:{ 0x0B0, 0x080, U }
|01E1B8| dw $0B1C : db $0C ; Small magic  xyz:{ 0x070, 0x0B0, U }
|01E1BB| dw $1962 : db $09 ; 5 arrows     xyz:{ 0x188, 0x190, U }
|01E1BE| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room006C:
|01E1C0| dw $0614 : db $0B ; Heart        xyz:{ 0x050, 0x060, U }
|01E1C3| dw $0628 : db $09 ; 5 arrows     xyz:{ 0x0A0, 0x060, U }
|01E1C6| dw $0A14 : db $0A ; Bomb         xyz:{ 0x050, 0x0A0, U }
|01E1C9| dw $0A28 : db $0C ; Small magic  xyz:{ 0x0A0, 0x0A0, U }
|01E1CC| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room006D:
|01E1CE| dw $1A1C : db $0B ; Heart        xyz:{ 0x070, 0x1A0, U }
|01E1D1| dw $1A20 : db $0B ; Heart        xyz:{ 0x080, 0x1A0, U }
|01E1D4| dw $1B1C : db $0C ; Small magic  xyz:{ 0x070, 0x1B0, U }
|01E1D7| dw $1B20 : db $0C ; Small magic  xyz:{ 0x080, 0x1B0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room006E:
RoomData_PotItems_Room006F:
RoomData_PotItems_Room0070:
RoomData_PotItems_Room0071:
RoomData_PotItems_Room0072:
|01E1DA| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0073:
|01E1DC| dw $159A : db $09 ; 5 arrows     xyz:{ 0x068, 0x150, U }
|01E1DF| dw $159E : db $01 ; Green rupee  xyz:{ 0x078, 0x150, U }
|01E1E2| dw $1714 : db $88 ; Switch       xyz:{ 0x050, 0x170, U }
|01E1E5| dw $1724 : db $07 ; Blue rupee   xyz:{ 0x090, 0x170, U }
|01E1E8| dw $1890 : db $0B ; Heart        xyz:{ 0x040, 0x180, U }
|01E1EB| dw $18A8 : db $09 ; 5 arrows     xyz:{ 0x0A0, 0x180, U }
|01E1EE| dw $1A14 : db $0C ; Small magic  xyz:{ 0x050, 0x1A0, U }
|01E1F1| dw $1A24 : db $0B ; Heart        xyz:{ 0x090, 0x1A0, U }
|01E1F4| dw $1B9A : db $01 ; Green rupee  xyz:{ 0x068, 0x1B0, U }
|01E1F7| dw $1B9E : db $07 ; Blue rupee   xyz:{ 0x078, 0x1B0, U }
|01E1FA| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0074:
|01E1FC| dw $051E : db $0C ; Small magic  xyz:{ 0x078, 0x050, U }
|01E1FF| dw $053E : db $88 ; Switch       xyz:{ 0x0F8, 0x050, U }
|01E202| dw $055E : db $0C ; Small magic  xyz:{ 0x178, 0x050, U }
|01E205| dw $0B0E : db $0B ; Heart        xyz:{ 0x038, 0x0B0, U }
|01E208| dw $0B2E : db $09 ; 5 arrows     xyz:{ 0x0B8, 0x0B0, U }
|01E20B| dw $0B4E : db $09 ; 5 arrows     xyz:{ 0x138, 0x0B0, U }
|01E20E| dw $0B6E : db $0B ; Heart        xyz:{ 0x1B8, 0x0B0, U }
|01E211| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0075:
|01E213| dw $1694 : db $0C ; Small magic  xyz:{ 0x050, 0x160, U }
|01E216| dw $16A0 : db $09 ; 5 arrows     xyz:{ 0x080, 0x160, U }
|01E219| dw $16AC : db $0B ; Heart        xyz:{ 0x0B0, 0x160, U }
|01E21C| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0076:
|01E21E| dw $0C70 : db $0B ; Heart        xyz:{ 0x1C0, 0x0C0, U }
|01E221| dw $1754 : db $0B ; Heart        xyz:{ 0x150, 0x170, U }
|01E224| dw $1760 : db $0B ; Heart        xyz:{ 0x180, 0x170, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0077:
RoomData_PotItems_Room0078:
RoomData_PotItems_Room0079:
RoomData_PotItems_Room007A:
|01E227| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room007B:
|01E229| dw $043C : db $0B ; Heart        xyz:{ 0x0F0, 0x040, U }
|01E22C| dw $0440 : db $08 ; Small key    xyz:{ 0x100, 0x040, U }
|01E22F| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room007C:
|01E231| dw $041C : db $0B ; Heart        xyz:{ 0x070, 0x040, U }
|01E234| dw $0420 : db $0B ; Heart        xyz:{ 0x080, 0x040, U }
|01E237| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room007D:
|01E239| dw $0670 : db $0B ; Heart        xyz:{ 0x1C0, 0x060, U }
|01E23C| dw $146C : db $09 ; 5 arrows     xyz:{ 0x1B0, 0x140, U }
|01E23F| dw $1472 : db $0A ; Bomb         xyz:{ 0x1C8, 0x140, U }
|01E242| dw $1C4C : db $0A ; Bomb         xyz:{ 0x130, 0x1C0, U }
|01E245| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room007E:
|01E247| dw $0F56 : db $0B ; Heart        xyz:{ 0x158, 0x0F0, U }
|01E24A| dw $1A52 : db $0C ; Small magic  xyz:{ 0x148, 0x1A0, U }
|01E24D| dw $1A64 : db $88 ; Switch       xyz:{ 0x190, 0x1A0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room007F:
|01E250| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0080:
|01E252| dw $0430 : db $0B ; Heart        xyz:{ 0x0C0, 0x040, U }
|01E255| dw $0434 : db $0B ; Heart        xyz:{ 0x0D0, 0x040, U }
|01E258| dw $0438 : db $0B ; Heart        xyz:{ 0x0E0, 0x040, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0081:
|01E25B| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0082:
|01E25D| dw $324C : db $0B ; Heart        xyz:{ 0x130, 0x120, L }
|01E260| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0083:
|01E262| dw $044C : db $09 ; 5 arrows     xyz:{ 0x130, 0x040, U }
|01E265| dw $0450 : db $01 ; Green rupee  xyz:{ 0x140, 0x040, U }
|01E268| dw $1C4C : db $07 ; Blue rupee   xyz:{ 0x130, 0x1C0, U }
|01E26B| dw $1C50 : db $09 ; 5 arrows     xyz:{ 0x140, 0x1C0, U }
|01E26E| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0084:
|01E270| dw $0718 : db $09 ; 5 arrows     xyz:{ 0x060, 0x070, U }
|01E273| dw $0764 : db $09 ; 5 arrows     xyz:{ 0x190, 0x070, U }
|01E276| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0085:
|01E278| dw $1C2C : db $0B ; Heart        xyz:{ 0x0B0, 0x1C0, U }
|01E27B| dw $1C30 : db $09 ; 5 arrows     xyz:{ 0x0C0, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0086:
|01E27E| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0087:
|01E280| dw $144C : db $0C ; Small magic  xyz:{ 0x130, 0x140, U }
|01E283| dw $1470 : db $0D ; Full magic   xyz:{ 0x1C0, 0x140, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0088:
RoomData_PotItems_Room0089:
RoomData_PotItems_Room008A:
|01E286| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room008B:
|01E288| dw $0C70 : db $08 ; Small key    xyz:{ 0x1C0, 0x0C0, U }
|01E28B| dw $0920 : db $0C ; Small magic  xyz:{ 0x080, 0x090, U }
|01E28E| dw $1C4C : db $0B ; Heart        xyz:{ 0x130, 0x1C0, U }
|01E291| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room008C:
|01E293| dw $0C4C : db $88 ; Switch       xyz:{ 0x130, 0x0C0, U }
|01E296| dw $0C70 : db $0C ; Small magic  xyz:{ 0x1C0, 0x0C0, U }
|01E299| dw $144C : db $0A ; Bomb         xyz:{ 0x130, 0x140, U }
|01E29C| dw $145C : db $0A ; Bomb         xyz:{ 0x170, 0x140, U }
|01E29F| dw $1564 : db $09 ; 5 arrows     xyz:{ 0x190, 0x150, U }
|01E2A2| dw $1A68 : db $0A ; Bomb         xyz:{ 0x1A0, 0x1A0, U }
|01E2A5| dw $1B58 : db $0A ; Bomb         xyz:{ 0x160, 0x1B0, U }
|01E2A8| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room008D:
|01E2AA| dw $0ECC : db $0D ; Full magic   xyz:{ 0x130, 0x0E0, U }
|01E2AD| dw $171C : db $0B ; Heart        xyz:{ 0x070, 0x170, U }
|01E2B0| dw $1724 : db $0B ; Heart        xyz:{ 0x090, 0x170, U }
|01E2B3| dw $1820 : db $0D ; Full magic   xyz:{ 0x080, 0x180, U }
|01E2B6| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room008E:
|01E2B8| dw $0550 : db $09 ; 5 arrows     xyz:{ 0x140, 0x050, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room008F:
RoomData_PotItems_Room0090:
|01E2BB| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0091:
|01E2BD| dw $0454 : db $0B ; Heart        xyz:{ 0x150, 0x040, U }
|01E2C0| dw $0468 : db $0C ; Small magic  xyz:{ 0x1A0, 0x040, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0092:
|01E2C3| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0093:
|01E2C5| dw $071C : db $88 ; Switch       xyz:{ 0x070, 0x070, U }
|01E2C8| dw $0760 : db $0B ; Heart        xyz:{ 0x180, 0x070, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0094:
RoomData_PotItems_Room0095:
|01E2CB| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0096:
|01E2CD| dw $1120 : db $0C ; Small magic  xyz:{ 0x080, 0x110, U }
|01E2D0| dw $1820 : db $0C ; Small magic  xyz:{ 0x080, 0x180, U }
|01E2D3| dw $154C : db $0B ; Heart        xyz:{ 0x130, 0x150, U }
|01E2D6| dw $1570 : db $0D ; Full magic   xyz:{ 0x1C0, 0x150, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0097:
RoomData_PotItems_Room0098:
|01E2D9| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0099:
|01E2DB| dw $1428 : db $0C ; Small magic  xyz:{ 0x0A0, 0x140, U }
|01E2DE| dw $1454 : db $0B ; Heart        xyz:{ 0x150, 0x140, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room009A:
|01E2E1| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room009B:
|01E2E3| dw $0430 : db $0C ; Small magic  xyz:{ 0x0C0, 0x040, U }
|01E2E6| dw $0C30 : db $08 ; Small key    xyz:{ 0x0C0, 0x0C0, U }
|01E2E9| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room009C:
|01E2EB| dw $0838 : db $0C ; Small magic  xyz:{ 0x0E0, 0x080, U }
|01E2EE| dw $0938 : db $09 ; 5 arrows     xyz:{ 0x0E0, 0x090, U }
|01E2F1| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room009D:
|01E2F3| dw $044C : db $0A ; Bomb         xyz:{ 0x130, 0x040, U }
|01E2F6| dw $0454 : db $0C ; Small magic  xyz:{ 0x150, 0x040, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room009E:
|01E2F9| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room009F:
|01E2FB| dw $138A : db $0B ; Heart        xyz:{ 0x028, 0x130, U }
|01E2FE| dw $13B2 : db $0B ; Heart        xyz:{ 0x0C8, 0x130, U }
|01E301| dw $1528 : db $88 ; Switch       xyz:{ 0x0A0, 0x150, U }
|01E304| dw $158A : db $08 ; Small key    xyz:{ 0x028, 0x150, U }
|01E307| dw $1B14 : db $0B ; Heart        xyz:{ 0x050, 0x1B0, U }
|01E30A| dw $1B8A : db $0B ; Heart        xyz:{ 0x028, 0x1B0, U }
|01E30D| dw $1CB2 : db $0B ; Heart        xyz:{ 0x0C8, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00A0:
|01E310| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00A1:
|01E312| dw $0696 : db $08 ; Small key    xyz:{ 0x058, 0x060, U }
|01E315| dw $0B64 : db $0C ; Small magic  xyz:{ 0x190, 0x0B0, U }
|01E318| dw $0C68 : db $0B ; Heart        xyz:{ 0x1A0, 0x0C0, U }
|01E31B| dw $0D6C : db $0C ; Small magic  xyz:{ 0x1B0, 0x0D0, U }
|01E31E| dw $0E70 : db $0B ; Heart        xyz:{ 0x1C0, 0x0E0, U }
|01E321| dw $1760 : db $0B ; Heart        xyz:{ 0x180, 0x170, U }
|01E324| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00A2:
|01E326| dw $1C0C : db $0D ; Full magic   xyz:{ 0x030, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00A3:
RoomData_PotItems_Room00A4:
RoomData_PotItems_Room00A5:
RoomData_PotItems_Room00A6:
RoomData_PotItems_Room00A7:
|01E329| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00A8:
|01E32B| dw $138A : db $0B ; Heart        xyz:{ 0x028, 0x130, U }
|01E32E| dw $181E : db $01 ; Green rupee  xyz:{ 0x078, 0x180, U }
|01E331| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00A9:
|01E333| dw $2B90 : db $09 ; 5 arrows     xyz:{ 0x040, 0x0B0, L }
|01E336| dw $2BEC : db $09 ; 5 arrows     xyz:{ 0x1B0, 0x0B0, L }
|01E339| dw $2C90 : db $09 ; 5 arrows     xyz:{ 0x040, 0x0C0, L }
|01E33C| dw $2CEC : db $0B ; Heart        xyz:{ 0x1B0, 0x0C0, L }
|01E33F| dw $1410 : db $0B ; Heart        xyz:{ 0x040, 0x140, U }
|01E342| dw $146C : db $0B ; Heart        xyz:{ 0x1B0, 0x140, U }
|01E345| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00AA:
|01E347| dw $05D4 : db $0B ; Heart        xyz:{ 0x150, 0x050, U }
|01E34A| dw $085E : db $88 ; Switch       xyz:{ 0x178, 0x080, U }
|01E34D| dw $376C : db $0B ; Heart        xyz:{ 0x1B0, 0x170, L }
|01E350| dw $386C : db $0B ; Heart        xyz:{ 0x1B0, 0x180, L }
|01E353| dw $396C : db $0B ; Heart        xyz:{ 0x1B0, 0x190, L }
|01E356| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00AB:
|01E358| dw $1814 : db $08 ; Small key    xyz:{ 0x050, 0x180, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00AC:
RoomData_PotItems_Room00AD:
|01E35B| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00AE:
|01E35D| dw $0C4C : db $88 ; Switch       xyz:{ 0x130, 0x0C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00AF:
|01E360| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00B0:
|01E362| dw $1514 : db $0A ; Bomb         xyz:{ 0x050, 0x150, U }
|01E365| dw $151C : db $01 ; Green rupee  xyz:{ 0x070, 0x150, U }
|01E368| dw $1520 : db $07 ; Blue rupee   xyz:{ 0x080, 0x150, U }
|01E36B| dw $1528 : db $09 ; 5 arrows     xyz:{ 0x0A0, 0x150, U }
|01E36E| dw $1710 : db $07 ; Blue rupee   xyz:{ 0x040, 0x170, U }
|01E371| dw $172C : db $01 ; Green rupee  xyz:{ 0x0B0, 0x170, U }
|01E374| dw $1824 : db $0B ; Heart        xyz:{ 0x090, 0x180, U }
|01E377| dw $1910 : db $0B ; Heart        xyz:{ 0x040, 0x190, U }
|01E37A| dw $1B1C : db $09 ; 5 arrows     xyz:{ 0x070, 0x1B0, U }
|01E37D| dw $1B28 : db $0A ; Bomb         xyz:{ 0x0A0, 0x1B0, U }
|01E380| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00B1:
|01E382| dw $044C : db $0B ; Heart        xyz:{ 0x130, 0x040, U }
|01E385| dw $0470 : db $01 ; Green rupee  xyz:{ 0x1C0, 0x040, U }
|01E388| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00B2:
|01E38A| dw $2830 : db $01 ; Green rupee  xyz:{ 0x0C0, 0x080, L }
|01E38D| dw $284C : db $01 ; Green rupee  xyz:{ 0x130, 0x080, L }
|01E390| dw $294C : db $0B ; Heart        xyz:{ 0x130, 0x090, L }
|01E393| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00B3:
|01E395| dw $140C : db $08 ; Small key    xyz:{ 0x030, 0x140, U }
|01E398| dw $1430 : db $0C ; Small magic  xyz:{ 0x0C0, 0x140, U }
|01E39B| dw $1C30 : db $88 ; Switch       xyz:{ 0x0C0, 0x1C0, U }
|01E39E| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00B4:
|01E3A0| dw $1C2C : db $0D ; Full magic   xyz:{ 0x0B0, 0x1C0, U }
|01E3A3| dw $1C30 : db $0B ; Heart        xyz:{ 0x0C0, 0x1C0, U }
|01E3A6| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00B5:
|01E3A8| dw $0470 : db $07 ; Blue rupee   xyz:{ 0x1C0, 0x040, U }
|01E3AB| dw $0F70 : db $0B ; Heart        xyz:{ 0x1C0, 0x0F0, U }
|01E3AE| dw $104C : db $88 ; Switch       xyz:{ 0x130, 0x100, U }
|01E3B1| dw $1070 : db $0D ; Full magic   xyz:{ 0x1C0, 0x100, U }
|01E3B4| dw $1170 : db $0B ; Heart        xyz:{ 0x1C0, 0x110, U }
|01E3B7| dw $1C70 : db $0A ; Bomb         xyz:{ 0x1C0, 0x1C0, U }
|01E3BA| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00B6:
|01E3BC| dw $095E : db $0D ; Full magic   xyz:{ 0x178, 0x090, U }
|01E3BF| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00B7:
|01E3C1| dw $051E : db $0C ; Small magic  xyz:{ 0x078, 0x050, U }
|01E3C4| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00B8:
|01E3C6| dw $0D60 : db $88 ; Switch       xyz:{ 0x180, 0x0D0, U }
|01E3C9| dw $1058 : db $0B ; Heart        xyz:{ 0x160, 0x100, U }
|01E3CC| dw $1068 : db $0B ; Heart        xyz:{ 0x1A0, 0x100, U }
|01E3CF| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00B9:
|01E3D1| dw $125C : db $01 ; Green rupee  xyz:{ 0x170, 0x120, U }
|01E3D4| dw $1260 : db $07 ; Blue rupee   xyz:{ 0x180, 0x120, U }
|01E3D7| dw $1268 : db $07 ; Blue rupee   xyz:{ 0x1A0, 0x120, U }
|01E3DA| dw $126C : db $01 ; Green rupee  xyz:{ 0x1B0, 0x120, U }
|01E3DD| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00BA:
|01E3DF| dw $045E : db $01 ; Green rupee  xyz:{ 0x178, 0x040, U }
|01E3E2| dw $064C : db $0B ; Heart        xyz:{ 0x130, 0x060, U }
|01E3E5| dw $0670 : db $08 ; Small key    xyz:{ 0x1C0, 0x060, U }
|01E3E8| dw $0A4C : db $0B ; Heart        xyz:{ 0x130, 0x0A0, U }
|01E3EB| dw $0A70 : db $0C ; Small magic  xyz:{ 0x1C0, 0x0A0, U }
|01E3EE| dw $0C5E : db $01 ; Green rupee  xyz:{ 0x178, 0x0C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00BB:
|01E3F1| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00BC:
|01E3F3| dw $038A : db $0A ; Bomb         xyz:{ 0x028, 0x030, U }
|01E3F6| dw $03B2 : db $88 ; Switch       xyz:{ 0x0C8, 0x030, U }
|01E3F9| dw $0456 : db $0B ; Heart        xyz:{ 0x158, 0x040, U }
|01E3FC| dw $0466 : db $08 ; Small key    xyz:{ 0x198, 0x040, U }
|01E3FF| dw $0C8A : db $0B ; Heart        xyz:{ 0x028, 0x0C0, U }
|01E402| dw $0CB2 : db $0A ; Bomb         xyz:{ 0x0C8, 0x0C0, U }
|01E405| dw $1430 : db $0A ; Bomb         xyz:{ 0x0C0, 0x140, U }
|01E408| dw $151C : db $07 ; Blue rupee   xyz:{ 0x070, 0x150, U }
|01E40B| dw $1520 : db $07 ; Blue rupee   xyz:{ 0x080, 0x150, U }
|01E40E| dw $1B1C : db $07 ; Blue rupee   xyz:{ 0x070, 0x1B0, U }
|01E411| dw $1B20 : db $07 ; Blue rupee   xyz:{ 0x080, 0x1B0, U }
|01E414| dw $1C0C : db $0A ; Bomb         xyz:{ 0x030, 0x1C0, U }
|01E417| dw $1C30 : db $0A ; Bomb         xyz:{ 0x0C0, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00BD:
|01E41A| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00BE:
|01E41C| dw $195C : db $88 ; Switch       xyz:{ 0x170, 0x190, U }
|01E41F| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00BF:
|01E421| dw $1428 : db $09 ; 5 arrows     xyz:{ 0x0A0, 0x140, U }
|01E424| dw $142C : db $0B ; Heart        xyz:{ 0x0B0, 0x140, U }
|01E427| dw $1430 : db $0A ; Bomb         xyz:{ 0x0C0, 0x140, U }
|01E42A| dw $1C28 : db $0C ; Small magic  xyz:{ 0x0A0, 0x1C0, U }
|01E42D| dw $1C2C : db $0C ; Small magic  xyz:{ 0x0B0, 0x1C0, U }
|01E430| dw $1C30 : db $0C ; Small magic  xyz:{ 0x0C0, 0x1C0, U }
|01E433| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00C0:
|01E435| dw $0A30 : db $0A ; Bomb         xyz:{ 0x0C0, 0x0A0, U }
|01E438| dw $0E0C : db $07 ; Blue rupee   xyz:{ 0x030, 0x0E0, U }
|01E43B| dw $1A0C : db $0B ; Heart        xyz:{ 0x030, 0x1A0, U }
|01E43E| dw $1B1C : db $01 ; Green rupee  xyz:{ 0x070, 0x1B0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00C1:
|01E441| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00C2:
|01E443| dw $07B4 : db $88 ; Switch       xyz:{ 0x0D0, 0x070, U }
|01E446| dw $2E64 : db $0C ; Small magic  xyz:{ 0x190, 0x0E0, L }
|01E449| dw $3044 : db $01 ; Green rupee  xyz:{ 0x110, 0x100, L }
|01E44C| dw $3440 : db $09 ; 5 arrows     xyz:{ 0x100, 0x140, L }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00C3:
|01E44F| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00C4:
|01E451| dw $0954 : db $0A ; Bomb         xyz:{ 0x150, 0x090, U }
|01E454| dw $0E18 : db $0B ; Heart        xyz:{ 0x060, 0x0E0, U }
|01E457| dw $1138 : db $07 ; Blue rupee   xyz:{ 0x0E0, 0x110, U }
|01E45A| dw $1154 : db $0A ; Bomb         xyz:{ 0x150, 0x110, U }
|01E45D| dw $150C : db $09 ; 5 arrows     xyz:{ 0x030, 0x150, U }
|01E460| dw $174C : db $01 ; Green rupee  xyz:{ 0x130, 0x170, U }
|01E463| dw $1930 : db $0C ; Small magic  xyz:{ 0x0C0, 0x190, U }
|01E466| dw $1A0C : db $0B ; Heart        xyz:{ 0x030, 0x1A0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00C5:
|01E469| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00C6:
|01E46B| dw $070C : db $0D ; Full magic   xyz:{ 0x030, 0x070, U }
|01E46E| dw $190C : db $0B ; Heart        xyz:{ 0x030, 0x190, U }
|01E471| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00C7:
|01E473| dw $0A0C : db $0B ; Heart        xyz:{ 0x030, 0x0A0, U }
|01E476| dw $0B0C : db $0D ; Full magic   xyz:{ 0x030, 0x0B0, U }
|01E479| dw $160C : db $0C ; Small magic  xyz:{ 0x030, 0x160, U }
|01E47C| dw $1C0C : db $09 ; 5 arrows     xyz:{ 0x030, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00C8:
|01E47F| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00C9:
|01E481| dw $161E : db $01 ; Green rupee  xyz:{ 0x078, 0x160, U }
|01E484| dw $165E : db $01 ; Green rupee  xyz:{ 0x178, 0x160, U }
|01E487| dw $163C : db $88 ; Switch       xyz:{ 0x0F0, 0x160, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00CA:
|01E48A| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00CB:
|01E48C| dw $1058 : db $0B ; Heart        xyz:{ 0x160, 0x100, U }
|01E48F| dw $1C58 : db $07 ; Blue rupee   xyz:{ 0x160, 0x1C0, U }
|01E492| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00CC:
|01E494| dw $0424 : db $07 ; Blue rupee   xyz:{ 0x090, 0x040, U }
|01E497| dw $0470 : db $0B ; Heart        xyz:{ 0x1C0, 0x040, U }
|01E49A| dw $1C24 : db $07 ; Blue rupee   xyz:{ 0x090, 0x1C0, U }
|01E49D| dw $1C70 : db $0A ; Bomb         xyz:{ 0x1C0, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00CD:
|01E4A0| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00CE:
|01E4A2| dw $084C : db $0C ; Small magic  xyz:{ 0x130, 0x080, U }
|01E4A5| dw $0850 : db $0C ; Small magic  xyz:{ 0x140, 0x080, U }
|01E4A8| dw $0C6C : db $0A ; Bomb         xyz:{ 0x1B0, 0x0C0, U }
|01E4AB| dw $0C70 : db $09 ; 5 arrows     xyz:{ 0x1C0, 0x0C0, U }
|01E4AE| dw $0BCC : db $80 ; Hole         xyz:{ 0x130, 0x0B0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00CF:
|01E4B1| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00D0:
|01E4B3| dw $059E : db $0C ; Small magic  xyz:{ 0x078, 0x050, U }
|01E4B6| dw $0B8C : db $01 ; Green rupee  xyz:{ 0x030, 0x0B0, U }
|01E4B9| dw $0D2A : db $0C ; Small magic  xyz:{ 0x0A8, 0x0D0, U }
|01E4BC| dw $1030 : db $0B ; Heart        xyz:{ 0x0C0, 0x100, U }
|01E4BF| dw $14B0 : db $01 ; Green rupee  xyz:{ 0x0C0, 0x140, U }
|01E4C2| dw $1792 : db $07 ; Blue rupee   xyz:{ 0x048, 0x170, U }
|01E4C5| dw $1C0C : db $0B ; Heart        xyz:{ 0x030, 0x1C0, U }
|01E4C8| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00D1:
|01E4CA| dw $0430 : db $0D ; Full magic   xyz:{ 0x0C0, 0x040, U }
|01E4CD| dw $044C : db $01 ; Green rupee  xyz:{ 0x130, 0x040, U }
|01E4D0| dw $0470 : db $09 ; 5 arrows     xyz:{ 0x1C0, 0x040, U }
|01E4D3| dw $07A8 : db $01 ; Green rupee  xyz:{ 0x0A0, 0x070, U }
|01E4D6| dw $0C70 : db $01 ; Green rupee  xyz:{ 0x1C0, 0x0C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00D2:
RoomData_PotItems_Room00D3:
RoomData_PotItems_Room00D4:
RoomData_PotItems_Room00D5:
|01E4D9| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00D6:
|01E4DB| dw $165C : db $0D ; Full magic   xyz:{ 0x170, 0x160, U }
|01E4DE| dw $1660 : db $0A ; Bomb         xyz:{ 0x180, 0x160, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00D7:
|01E4E1| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00D8:
|01E4E3| dw $08CA : db $0B ; Heart        xyz:{ 0x128, 0x080, U }
|01E4E6| dw $08F2 : db $09 ; 5 arrows     xyz:{ 0x1C8, 0x080, U }
|01E4E9| dw $0ACA : db $09 ; 5 arrows     xyz:{ 0x128, 0x0A0, U }
|01E4EC| dw $0AF2 : db $09 ; 5 arrows     xyz:{ 0x1C8, 0x0A0, U }
|01E4EF| dw $0CCA : db $09 ; 5 arrows     xyz:{ 0x128, 0x0C0, U }
|01E4F2| dw $0CF2 : db $0B ; Heart        xyz:{ 0x1C8, 0x0C0, U }
|01E4F5| dw $185C : db $0B ; Heart        xyz:{ 0x170, 0x180, U }
|01E4F8| dw $1860 : db $09 ; 5 arrows     xyz:{ 0x180, 0x180, U }
|01E4FB| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00D9:
|01E4FD| dw $145C : db $09 ; 5 arrows     xyz:{ 0x170, 0x140, U }
|01E500| dw $1C5C : db $0B ; Heart        xyz:{ 0x170, 0x1C0, U }
|01E503| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00DA:
|01E505| dw $1718 : db $09 ; 5 arrows     xyz:{ 0x060, 0x170, U }
|01E508| dw $1724 : db $09 ; 5 arrows     xyz:{ 0x090, 0x170, U }
|01E50B| dw $1918 : db $88 ; Switch       xyz:{ 0x060, 0x190, U }
|01E50E| dw $1924 : db $0B ; Heart        xyz:{ 0x090, 0x190, U }
|01E511| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00DB:
|01E513| dw $0470 : db $07 ; Blue rupee   xyz:{ 0x1C0, 0x040, U }
|01E516| dw $1058 : db $0B ; Heart        xyz:{ 0x160, 0x100, U }
|01E519| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00DC:
|01E51B| dw $0438 : db $07 ; Blue rupee   xyz:{ 0x0E0, 0x040, U }
|01E51E| dw $0470 : db $0A ; Bomb         xyz:{ 0x1C0, 0x040, U }
|01E521| dw $1044 : db $0B ; Heart        xyz:{ 0x110, 0x100, U }
|01E524| dw $1C0C : db $09 ; 5 arrows     xyz:{ 0x030, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00DD:
RoomData_PotItems_Room00DE:
RoomData_PotItems_Room00DF:
|01E527| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00E0:
|01E529| dw $0818 : db $0B ; Heart        xyz:{ 0x060, 0x080, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00E1:
RoomData_PotItems_Room00E2:
|01E52C| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00E3:
|01E52E| dw $3964 : db $01 ; Green rupee  xyz:{ 0x190, 0x190, L }
|01E531| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00E4:
|01E533| dw $0920 : db $07 ; Blue rupee   xyz:{ 0x080, 0x090, U }
|01E536| dw $0A70 : db $01 ; Green rupee  xyz:{ 0x1C0, 0x0A0, U }
|01E539| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00E5:
|01E53B| dw $0430 : db $01 ; Green rupee  xyz:{ 0x0C0, 0x040, U }
|01E53E| dw $044C : db $01 ; Green rupee  xyz:{ 0x130, 0x040, U }
|01E541| dw $1070 : db $01 ; Green rupee  xyz:{ 0x1C0, 0x100, U }
|01E544| dw $1240 : db $07 ; Blue rupee   xyz:{ 0x100, 0x120, U }
|01E547| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00E6:
|01E549| dw $0C6C : db $09 ; 5 arrows     xyz:{ 0x1B0, 0x0C0, U }
|01E54C| dw $1058 : db $0B ; Heart        xyz:{ 0x160, 0x100, U }
|01E54F| dw $1838 : db $01 ; Green rupee  xyz:{ 0x0E0, 0x180, U }
|01E552| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00E7:
|01E554| dw $0544 : db $01 ; Green rupee  xyz:{ 0x110, 0x050, U }
|01E557| dw $0548 : db $01 ; Green rupee  xyz:{ 0x120, 0x050, U }
|01E55A| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00E8:
|01E55C| dw $0460 : db $0B ; Heart        xyz:{ 0x180, 0x040, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00E9:
RoomData_PotItems_Room00EA:
|01E55F| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00EB:
|01E561| dw $08CE : db $07 ; Blue rupee   xyz:{ 0x138, 0x080, U }
|01E564| dw $08D2 : db $07 ; Blue rupee   xyz:{ 0x148, 0x080, U }
|01E567| dw $0E58 : db $0C ; Small magic  xyz:{ 0x160, 0x0E0, U }
|01E56A| dw $0E5C : db $0B ; Heart        xyz:{ 0x170, 0x0E0, U }
|01E56D| dw $0E60 : db $0C ; Small magic  xyz:{ 0x180, 0x0E0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00EC:
RoomData_PotItems_Room00ED:
RoomData_PotItems_Room00EE:
RoomData_PotItems_Room00EF:
RoomData_PotItems_Room00F0:
|01E570| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00F1:
|01E572| dw $0540 : db $0B ; Heart        xyz:{ 0x100, 0x050, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00F2:
RoomData_PotItems_Room00F3:
RoomData_PotItems_Room00F4:
RoomData_PotItems_Room00F5:
RoomData_PotItems_Room00F6:
RoomData_PotItems_Room00F7:
|01E575| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00F8:
|01E577| dw $0DF2 : db $0D ; Full magic   xyz:{ 0x1C8, 0x0D0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00F9:
RoomData_PotItems_Room00FA:
RoomData_PotItems_Room00FB:
RoomData_PotItems_Room00FC:
|01E57A| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00FD:
|01E57C| dw $0658 : db $07 ; Blue rupee   xyz:{ 0x160, 0x060, U }
|01E57F| dw $0664 : db $07 ; Blue rupee   xyz:{ 0x190, 0x060, U }
|01E582| dw $1754 : db $07 ; Blue rupee   xyz:{ 0x150, 0x170, U }
|01E585| dw $1854 : db $07 ; Blue rupee   xyz:{ 0x150, 0x180, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00FE:
|01E588| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room00FF:
|01E58A| dw $085C : db $0B ; Heart        xyz:{ 0x170, 0x080, U }
|01E58D| dw $0860 : db $0B ; Heart        xyz:{ 0x180, 0x080, U }
|01E590| dw $1C70 : db $01 ; Green rupee  xyz:{ 0x1C0, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0100:
|01E593| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0101:
|01E595| dw $140C : db $0B ; Heart        xyz:{ 0x030, 0x140, U }
|01E598| dw $13E0 : db $0E ; Cucco        xyz:{ 0x180, 0x130, U }
|01E59B| dw $13E4 : db $0B ; Heart        xyz:{ 0x190, 0x130, U }
|01E59E| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0102:
|01E5A0| dw $1392 : db $0B ; Heart        xyz:{ 0x048, 0x130, U }
|01E5A3| dw $1396 : db $0B ; Heart        xyz:{ 0x058, 0x130, U }
|01E5A6| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0103:
|01E5A8| dw $078C : db $0E ; Cucco        xyz:{ 0x030, 0x070, U }
|01E5AB| dw $0C0C : db $0B ; Heart        xyz:{ 0x030, 0x0C0, U }
|01E5AE| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0104:
|01E5B0| dw $15CA : db $0B ; Heart        xyz:{ 0x128, 0x150, U }
|01E5B3| dw $16CA : db $0B ; Heart        xyz:{ 0x128, 0x160, U }
|01E5B6| dw $17CA : db $0B ; Heart        xyz:{ 0x128, 0x170, U }
|01E5B9| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0105:
|01E5BB| dw $141E : db $0B ; Heart        xyz:{ 0x078, 0x140, U }
|01E5BE| dw $151C : db $0B ; Heart        xyz:{ 0x070, 0x150, U }
|01E5C1| dw $1520 : db $0B ; Heart        xyz:{ 0x080, 0x150, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0106:
|01E5C4| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0107:
|01E5C6| dw $17D6 : db $0A ; Bomb         xyz:{ 0x158, 0x170, U }
|01E5C9| dw $17DE : db $09 ; 5 arrows     xyz:{ 0x178, 0x170, U }
|01E5CC| dw $17E6 : db $0A ; Bomb         xyz:{ 0x198, 0x170, U }
|01E5CF| dw $19D6 : db $01 ; Green rupee  xyz:{ 0x158, 0x190, U }
|01E5D2| dw $19E6 : db $01 ; Green rupee  xyz:{ 0x198, 0x190, U }
|01E5D5| dw $1BD6 : db $0A ; Bomb         xyz:{ 0x158, 0x1B0, U }
|01E5D8| dw $1BE6 : db $0A ; Bomb         xyz:{ 0x198, 0x1B0, U }
|01E5DB| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0108:
|01E5DD| dw $13A6 : db $0E ; Cucco        xyz:{ 0x098, 0x130, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0109:
RoomData_PotItems_Room010A:
RoomData_PotItems_Room010B:
|01E5E0| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room010C:
|01E5E2| dw $0E58 : db $0B ; Heart        xyz:{ 0x160, 0x0E0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room010D:
RoomData_PotItems_Room010E:
RoomData_PotItems_Room010F:
RoomData_PotItems_Room0110:
RoomData_PotItems_Room0111:
RoomData_PotItems_Room0112:
RoomData_PotItems_Room0113:
|01E5E5| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0114:
|01E5E7| dw $045C : db $0B ; Heart        xyz:{ 0x170, 0x040, U }
|01E5EA| dw $0460 : db $0B ; Heart        xyz:{ 0x180, 0x040, U }
|01E5ED| dw $055C : db $0A ; Bomb         xyz:{ 0x170, 0x050, U }
|01E5F0| dw $0560 : db $0A ; Bomb         xyz:{ 0x180, 0x050, U }
|01E5F3| dw $0A5C : db $09 ; 5 arrows     xyz:{ 0x170, 0x0A0, U }
|01E5F6| dw $0A60 : db $0B ; Heart        xyz:{ 0x180, 0x0A0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0115:
RoomData_PotItems_Room0116:
|01E5F9| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0117:
|01E5FB| dw $038A : db $0B ; Heart        xyz:{ 0x028, 0x030, U }
|01E5FE| dw $038E : db $0B ; Heart        xyz:{ 0x038, 0x030, U }
|01E601| dw $03A6 : db $0B ; Heart        xyz:{ 0x098, 0x030, U }
|01E604| dw $03AA : db $0B ; Heart        xyz:{ 0x0A8, 0x030, U }
|01E607| dw $048A : db $0B ; Heart        xyz:{ 0x028, 0x040, U }
|01E60A| dw $048E : db $0B ; Heart        xyz:{ 0x038, 0x040, U }
|01E60D| dw $04A6 : db $0B ; Heart        xyz:{ 0x098, 0x040, U }
|01E610| dw $04AA : db $0B ; Heart        xyz:{ 0x0A8, 0x040, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0118:
|01E613| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0119:
|01E615| dw $1C2C : db $0B ; Heart        xyz:{ 0x0B0, 0x1C0, U }
|01E618| dw $1C30 : db $01 ; Green rupee  xyz:{ 0x0C0, 0x1C0, U }
|01E61B| dw $1C4C : db $0B ; Heart        xyz:{ 0x130, 0x1C0, U }
|01E61E| dw $1C50 : db $0B ; Heart        xyz:{ 0x140, 0x1C0, U }
|01E621| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room011A:
|01E623| dw $0AD6 : db $0B ; Heart        xyz:{ 0x158, 0x0A0, U }
|01E626| dw $0ADA : db $0B ; Heart        xyz:{ 0x168, 0x0A0, U }
|01E629| dw $0AE2 : db $0B ; Heart        xyz:{ 0x188, 0x0A0, U }
|01E62C| dw $0AE6 : db $0B ; Heart        xyz:{ 0x198, 0x0A0, U }
|01E62F| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room011B:
|01E631| dw $3618 : db $0B ; Heart        xyz:{ 0x060, 0x160, L }
|01E634| dw $3620 : db $0B ; Heart        xyz:{ 0x080, 0x160, L }
|01E637| dw $3628 : db $0B ; Heart        xyz:{ 0x0A0, 0x160, L }
|01E63A| dw $165C : db $0A ; Bomb         xyz:{ 0x170, 0x160, U }
|01E63D| dw $1660 : db $0B ; Heart        xyz:{ 0x180, 0x160, U }
|01E640| dw $3718 : db $0B ; Heart        xyz:{ 0x060, 0x170, L }
|01E643| dw $175C : db $0A ; Bomb         xyz:{ 0x170, 0x170, U }
|01E646| dw $1760 : db $0B ; Heart        xyz:{ 0x180, 0x170, U }
|01E649| dw $381C : db $0B ; Heart        xyz:{ 0x070, 0x180, L }
|01E64C| dw $185C : db $0A ; Bomb         xyz:{ 0x170, 0x180, U }
|01E64F| dw $1860 : db $0B ; Heart        xyz:{ 0x180, 0x180, U }
|01E652| dw $195C : db $0A ; Bomb         xyz:{ 0x170, 0x190, U }
|01E655| dw $1960 : db $0B ; Heart        xyz:{ 0x180, 0x190, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room011C:
|01E658| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room011D:
|01E65A| dw $063C : db $07 ; Blue rupee   xyz:{ 0x0F0, 0x060, U }
|01E65D| dw $0640 : db $07 ; Blue rupee   xyz:{ 0x100, 0x060, U }
|01E660| dw $073C : db $07 ; Blue rupee   xyz:{ 0x0F0, 0x070, U }
|01E663| dw $0740 : db $07 ; Blue rupee   xyz:{ 0x100, 0x070, U }
|01E666| dw $083C : db $07 ; Blue rupee   xyz:{ 0x0F0, 0x080, U }
|01E669| dw $0840 : db $07 ; Blue rupee   xyz:{ 0x100, 0x080, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room011E:
|01E66C| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room011F:
|01E66E| dw $1CAE : db $0B ; Heart        xyz:{ 0x0B8, 0x1C0, U }
|01E671| dw $1CB2 : db $0B ; Heart        xyz:{ 0x0C8, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0120:
RoomData_PotItems_Room0121:
RoomData_PotItems_Room0122:
RoomData_PotItems_Room0123:
|01E674| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0124:
|01E676| dw $1414 : db $07 ; Blue rupee   xyz:{ 0x050, 0x140, U }
|01E679| dw $1428 : db $07 ; Blue rupee   xyz:{ 0x0A0, 0x140, U }
|01E67C| dw $1514 : db $07 ; Blue rupee   xyz:{ 0x050, 0x150, U }
|01E67F| dw $1528 : db $07 ; Blue rupee   xyz:{ 0x0A0, 0x150, U }
|01E682| dw $1614 : db $07 ; Blue rupee   xyz:{ 0x050, 0x160, U }
|01E685| dw $1628 : db $07 ; Blue rupee   xyz:{ 0x0A0, 0x160, U }
|01E688| dw $1818 : db $07 ; Blue rupee   xyz:{ 0x060, 0x180, U }
|01E68B| dw $181C : db $07 ; Blue rupee   xyz:{ 0x070, 0x180, U }
|01E68E| dw $1820 : db $07 ; Blue rupee   xyz:{ 0x080, 0x180, U }
|01E691| dw $1824 : db $07 ; Blue rupee   xyz:{ 0x090, 0x180, U }
|01E694| dw $FFFF

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0125:
|01E696| dw $1918 : db $07 ; Blue rupee   xyz:{ 0x060, 0x190, U }
|01E699| dw $191C : db $07 ; Blue rupee   xyz:{ 0x070, 0x190, U }
|01E69C| dw $1920 : db $07 ; Blue rupee   xyz:{ 0x080, 0x190, U }
|01E69F| dw $1924 : db $07 ; Blue rupee   xyz:{ 0x090, 0x190, U }
|01E6A2| dw $1658 : db $0B ; Heart        xyz:{ 0x160, 0x160, U }
|01E6A5| dw $1664 : db $0B ; Heart        xyz:{ 0x190, 0x160, U }
|01E6A8| dw $1C58 : db $0B ; Heart        xyz:{ 0x160, 0x1C0, U }
|01E6AB| dw $1C64 : db $0B ; Heart        xyz:{ 0x190, 0x1C0, U }

;---------------------------------------------------------------------------------------------------

RoomData_PotItems_Room0126:
RoomData_PotItems_Room0127:
RoomData_PotItems_Room0128:
RoomData_PotItems_Room0129:
RoomData_PotItems_Room012A:
RoomData_PotItems_Room012B:
RoomData_PotItems_Room012C:
RoomData_PotItems_Room012D:
RoomData_PotItems_Room012E:
RoomData_PotItems_Room012F:
RoomData_PotItems_Room0130:
RoomData_PotItems_Room0131:
RoomData_PotItems_Room0132:
RoomData_PotItems_Room0133:
RoomData_PotItems_Room0134:
RoomData_PotItems_Room0135:
RoomData_PotItems_Room0136:
RoomData_PotItems_Room0137:
RoomData_PotItems_Room0138:
RoomData_PotItems_Room0139:
RoomData_PotItems_Room013A:
RoomData_PotItems_Room013B:
RoomData_PotItems_Room013C:
RoomData_PotItems_Room013D:
RoomData_PotItems_Room013E:
RoomData_PotItems_Room013F:
|01E6AE| dw $FFFF

;===================================================================================================

RevealPotItem:
|01E6B0| STA.b $04

|01E6B2| LDA.w $0B9C
|01E6B5| AND.w #$FF00
|01E6B8| STA.w $0B9C

|01E6BB| LDA.b $A0
|01E6BD| ASL A
|01E6BE| TAX

|01E6BF| LDA.l RoomData_PotItems_Pointers,X
|01E6C3| STA.b $00

|01E6C5| LDA.w #^RoomData_PotItems_Pointers
|01E6C8| STA.b $02

|01E6CA| LDY.w #$FFFD
|01E6CD| LDX.w #$FFFF

.check_next
|01E6D0| INY
|01E6D1| INY
|01E6D2| INY

|01E6D3| LDA.b [$00],Y
|01E6D5| CMP.w #$FFFF
|01E6D8| BEQ .exit

|01E6DA| INX

; do our coordinates match?
|01E6DB| AND.w #$7FFF
|01E6DE| CMP.b $04
|01E6E0| BNE .check_next

|01E6E2| INY
|01E6E3| INY

|01E6E4| LDA.b [$00],Y
|01E6E6| AND.w #$00FF
|01E6E9| BEQ .exit

|01E6EB| CMP.w #$0080
|01E6EE| BCS .reveal_tile

;---------------------------------------------------------------------------------------------------

|01E6F0| STA.b $0E

|01E6F2| CMP.w #$0008
|01E6F5| BEQ .is_key

|01E6F7| TXY

|01E6F8| LDA.b $A0
|01E6FA| ASL A
|01E6FB| TAX

|01E6FC| STZ.b $00

|01E6FE| SEC

.shift_it
|01E6FF| ROL.b $00

|01E701| DEY
|01E702| BPL .shift_it

;---------------------------------------------------------------------------------------------------

|01E704| LDA.l $7EF580,X
|01E708| AND.b $00
|01E70A| BNE .exit

|01E70C| LDA.l $7EF580,X
|01E710| ORA.b $00
|01E712| STA.l $7EF580,X

|01E716| LDA.b $0E

.is_key
|01E718| TSB.w $0B9C

.exit
|01E71B| RTS

;---------------------------------------------------------------------------------------------------

.reveal_tile
|01E71C| CMP.w #$0088
|01E71F| BEQ .reveal_switch

|01E721| LDX.b $06

|01E723| LDA.l $7F2000,X
|01E727| AND.w #$000F
|01E72A| ASL A
|01E72B| TAY

|01E72C| LDA.w $0500,Y
|01E72F| AND.w #$000F
|01E732| ASL A
|01E733| STA.b $00

|01E735| TYA
|01E736| SEC
|01E737| SBC.b $00
|01E739| STA.w $042C

|01E73C| TAY

|01E73D| LDA.w #$0004
|01E740| STA.b $00

|01E742| SEP #$20

|01E744| LDA.b #$1B ; SFX3.1B
|01E746| STA.w $012F

;---------------------------------------------------------------------------------------------------

|01E749| REP #$20

|01E74B| LDX.w #RoomDrawObjectData.obj05BA

.draw_next
|01E74E| LDA.l RoomDrawObjectData+0,X
|01E752| STA.w $0560,Y

|01E755| LDA.l RoomDrawObjectData+2,X
|01E759| STA.w $0580,Y

|01E75C| LDA.l RoomDrawObjectData+4,X
|01E760| STA.w $05A0,Y

|01E763| LDA.l RoomDrawObjectData+6,X
|01E767| STA.w $05C0,Y

|01E76A| TXA
|01E76B| CLC
|01E76C| ADC.w #$0008
|01E76F| TAX

|01E770| INY
|01E771| INY

|01E772| DEC.b $00
|01E774| BNE .draw_next

|01E776| RTS

;---------------------------------------------------------------------------------------------------

.reveal_switch
|01E777| LDY.w $042C

|01E77A| LDA.w #$0D0B
|01E77D| STA.w $0560,Y

|01E780| LDA.w #$0D1B
|01E783| STA.w $0580,Y

|01E786| LDA.w #$4D0B
|01E789| STA.w $05A0,Y

|01E78C| LDA.w #$4D1B
|01E78F| STA.w $05C0,Y

|01E792| RTS

;===================================================================================================

pool UpdateTilemapWithCommonObject

.replacement_tiles
|01E793| dw RoomDrawObjectData.obj00E0 ; 0x00 - Floor
|01E795| dw RoomDrawObjectData.obj0ADE ; 0x02 - Spike
|01E797| dw RoomDrawObjectData.obj05AA ; 0x04 - Pit
|01E799| dw RoomDrawObjectData.obj0198 ; 0x06 - Under the linoleum
|01E79B| dw RoomDrawObjectData.obj0210 ; 0x08 - Freezor hole left
|01E79D| dw RoomDrawObjectData.obj0218 ; 0x0A - Freezor hole right
|01E79F| dw RoomDrawObjectData.obj1F3A ; 0x0C - Warp
|01E7A1| dw RoomDrawObjectData.obj0EAA ; 0x0E - Pressure switch up
|01E7A3| dw RoomDrawObjectData.obj0EB2 ; 0x10 - Pressure switch down
|01E7A5| dw RoomDrawObjectData.obj0140 ; 0x12 - Trinexx Ice

endpool

;---------------------------------------------------------------------------------------------------
; Enters with:
;   Y - index to use
;---------------------------------------------------------------------------------------------------
UpdateTilemapWithCommonObject:
|01E7A7| PHX

|01E7A8| STY.b $0E
|01E7AA| STZ.b $0F

|01E7AC| PHB

|01E7AD| LDA.b #^RoomDrawObjectData
|01E7AF| PHA
|01E7B0| PLB

|01E7B1| REP #$30

|01E7B3| LDA.b $0E
|01E7B5| CMP.w #$0008
|01E7B8| BNE .not_freezor_hole

; Do right freezor hole first
|01E7BA| PHA

|01E7BB| INC A
|01E7BC| INC A
|01E7BD| STA.b $0E

|01E7BF| LDA.b $00
|01E7C1| PHA

|01E7C2| CLC
|01E7C3| ADC.w #$0010
|01E7C6| STA.b $00

|01E7C8| JSR .replace_tile

|01E7CB| PLA
|01E7CC| STA.b $00

|01E7CE| PLA
|01E7CF| STA.b $0E

.not_freezor_hole
|01E7D1| JSR .replace_tile

|01E7D4| SEP #$30

|01E7D6| LDA.b #$01
|01E7D8| STA.b $14

|01E7DA| PLB
|01E7DB| PLX

|01E7DC| RTL

;---------------------------------------------------------------------------------------------------

.replace_tile
|01E7DD| LDA.b $02
|01E7DF| INC A
|01E7E0| AND.w #$01F8

|01E7E3| ASL A ; x8
|01E7E4| ASL A
|01E7E5| ASL A

|01E7E6| STA.b $06

|01E7E8| LDA.b $00
|01E7EA| AND.w #$01F8

|01E7ED| LSR A ; /8
|01E7EE| LSR A
|01E7EF| LSR A

|01E7F0| ORA.b $06
|01E7F2| ASL A
|01E7F3| STA.b $06

;---------------------------------------------------------------------------------------------------

|01E7F5| LDX.b $0E

|01E7F7| LDA.l .replacement_tiles,X
|01E7FB| TAY

|01E7FC| LDX.w $1000

|01E7FF| LDA.w RoomDrawObjectData+0,Y
|01E802| STA.w $1006,X

|01E805| LDA.w RoomDrawObjectData+2,Y
|01E808| STA.w $100C,X

|01E80B| LDA.w RoomDrawObjectData+4,Y
|01E80E| STA.w $1012,X

|01E811| LDA.w RoomDrawObjectData+6,Y
|01E814| STA.w $1018,X

|01E817| LDX.b $06

|01E819| LDA.w RoomDrawObjectData+0,Y
|01E81C| STA.l $7E2000,X

|01E820| LDA.w RoomDrawObjectData+2,Y
|01E823| STA.l $7E2080,X

|01E827| LDA.w RoomDrawObjectData+4,Y
|01E82A| STA.l $7E2002,X

|01E82E| LDA.w RoomDrawObjectData+6,Y
|01E831| STA.l $7E2082,X

|01E835| AND.w #$03FF
|01E838| TAX

|01E839| LDA.l $7EFE00,X
|01E83D| AND.w #$00FF
|01E840| STA.b $08
|01E842| STA.b $09

|01E844| LDA.b $06
|01E846| LSR A
|01E847| TAX

|01E848| LDA.b $08
|01E84A| STA.l $7F2000,X
|01E84E| STA.l $7F2040,X

;---------------------------------------------------------------------------------------------------

|01E852| LDX.w $1000

|01E855| LDA.w #$0000
|01E858| JSR .draw_one_corner
|01E85B| STA.w $1002,X

|01E85E| LDA.w #$0080
|01E861| JSR .draw_one_corner
|01E864| STA.w $1008,X

|01E867| LDA.w #$0002
|01E86A| JSR .draw_one_corner
|01E86D| STA.w $100E,X

|01E870| LDA.w #$0082
|01E873| JSR .draw_one_corner
|01E876| STA.w $1014,X

|01E879| LDA.w #$0100
|01E87C| STA.w $1004,X
|01E87F| STA.w $100A,X
|01E882| STA.w $1010,X
|01E885| STA.w $1016,X

|01E888| LDA.w #$FFFF
|01E88B| STA.w $101A,X

|01E88E| TXA
|01E88F| CLC
|01E890| ADC.w #$0018
|01E893| STA.w $1000

|01E896| RTS

;---------------------------------------------------------------------------------------------------

.draw_one_corner
|01E897| CLC
|01E898| ADC.b $06
|01E89A| STA.b $0E

|01E89C| AND.w #$0040

|01E89F| LSR A ; /16
|01E8A0| LSR A
|01E8A1| LSR A
|01E8A2| LSR A

|01E8A3| XBA
|01E8A4| STA.b $08

|01E8A6| LDA.b $0E
|01E8A8| AND.w #$303F
|01E8AB| LSR A
|01E8AC| ORA.b $08
|01E8AE| STA.b $08

|01E8B0| LDA.b $0E
|01E8B2| AND.w #$0F80
|01E8B5| LSR A
|01E8B6| LSR A
|01E8B7| ORA.b $08
|01E8B9| XBA

|01E8BA| RTS

;===================================================================================================

DeleteRupeeTile:
|01E8BB| PHB

|01E8BC| LDA.b #^RoomDrawObjectData
|01E8BE| PHA
|01E8BF| PLB

|01E8C0| REP #$30

|01E8C2| LDA.b $00
|01E8C4| AND.w #$01F8
|01E8C7| ASL A ; x8
|01E8C8| ASL A
|01E8C9| ASL A
|01E8CA| STA.b $06

|01E8CC| LDA.b $02
|01E8CE| AND.w #$01F8

|01E8D1| LSR A ; /8
|01E8D2| LSR A
|01E8D3| LSR A

|01E8D4| ORA.b $06
|01E8D6| ASL A
|01E8D7| STA.b $06

;---------------------------------------------------------------------------------------------------

|01E8D9| LDX.w $1000

|01E8DC| LDA.w #$190F
|01E8DF| STA.w $1006,X
|01E8E2| STA.w $100C,X

|01E8E5| LDX.b $06

|01E8E7| STA.l $7E2000,X
|01E8EB| STA.l $7E2080,X

|01E8EF| AND.w #$03FF
|01E8F2| TAX

|01E8F3| LDA.l $7EFE00,X
|01E8F7| AND.w #$00FF
|01E8FA| STA.b $08
|01E8FC| STA.b $09

|01E8FE| LDA.b $06
|01E900| LSR A
|01E901| TAX

|01E902| LDA.b $08
|01E904| STA.l $7F2000,X
|01E908| STA.l $7F2040,X

;---------------------------------------------------------------------------------------------------

|01E90C| LDX.w $1000

|01E90F| LDA.w #$0000
|01E912| JSR .draw_half
|01E915| STA.w $1002,X

|01E918| LDA.w #$0080
|01E91B| JSR .draw_half
|01E91E| STA.w $1008,X

|01E921| LDA.w #$0100
|01E924| STA.w $1004,X
|01E927| STA.w $100A,X

;---------------------------------------------------------------------------------------------------

|01E92A| LDA.w #$FFFF
|01E92D| STA.w $100E,X

|01E930| TXA
|01E931| CLC
|01E932| ADC.w #$0018
|01E935| STA.w $1000

|01E938| SEP #$30

|01E93A| LDA.w $0403
|01E93D| ORA.b #$10
|01E93F| STA.w $0403

|01E942| LDA.b #$01
|01E944| STA.b $14

|01E946| PLB

|01E947| RTL

;---------------------------------------------------------------------------------------------------

.draw_half
|01E948| CLC
|01E949| ADC.b $06
|01E94B| STA.b $0C

|01E94D| AND.w #$0040

|01E950| LSR A ; /16
|01E951| LSR A
|01E952| LSR A
|01E953| LSR A

|01E954| XBA
|01E955| STA.b $08

|01E957| LDA.b $0C
|01E959| AND.w #$303F
|01E95C| LSR A
|01E95D| ORA.b $08
|01E95F| STA.b $08

|01E961| LDA.b $0C
|01E963| AND.w #$0F80
|01E966| LSR A
|01E967| LSR A
|01E968| ORA.b $08
|01E96A| XBA

|01E96B| RTS

;===================================================================================================
; dw ROOM_ID : db ITEM_ID
; bit 15 of ROOM_ID set means it's a big chest
;===================================================================================================
RoomData_ChestItems:
|01E96C| dw $0032 : db $24 ; ROOM 0032 - ITEMGET 24
|01E96F| dw $0055 : db $12 ; ROOM 0055 - ITEMGET 12
|01E972| dw $0071 : db $0C ; ROOM 0071 - ITEMGET 0C
|01E975| dw $00A8 : db $25 ; ROOM 00A8 - ITEMGET 25
|01E978| dw $0113 : db $19 ; ROOM 0113 - ITEMGET 19
|01E97B| dw $80A9 : db $0B ; ROOM 00A9 - ITEMGET 0B - big chest
|01E97E| dw $0016 : db $28 ; ROOM 0016 - ITEMGET 28 - !UNUSED chests in swamp TIC room
|01E981| dw $0016 : db $25 ; ROOM 0016 - ITEMGET 25 - !UNUSED chests in swamp TIC room
|01E984| dw $0037 : db $33 ; ROOM 0037 - ITEMGET 33
|01E987| dw $8036 : db $0A ; ROOM 0036 - ITEMGET 0A - big chest
|01E98A| dw $010B : db $28 ; ROOM 010B - ITEMGET 28
|01E98D| dw $8073 : db $1B ; ROOM 0073 - ITEMGET 1B - big chest
|01E990| dw $0067 : db $25 ; ROOM 0067 - ITEMGET 25
|01E993| dw $007E : db $28 ; ROOM 007E - ITEMGET 28
|01E996| dw $8058 : db $07 ; ROOM 0058 - ITEMGET 07 - big chest
|01E999| dw $0058 : db $33 ; ROOM 0058 - ITEMGET 33
|01E99C| dw $0057 : db $32 ; ROOM 0057 - ITEMGET 32
|01E99F| dw $0057 : db $24 ; ROOM 0057 - ITEMGET 24
|01E9A2| dw $001F : db $32 ; ROOM 001F - ITEMGET 32
|01E9A5| dw $007E : db $24 ; ROOM 007E - ITEMGET 24 - !UNUSED chest in freezor room
|01E9A8| dw $809E : db $22 ; ROOM 009E - ITEMGET 22 - big chest
|01E9AB| dw $0077 : db $33 ; ROOM 0077 - ITEMGET 33
|01E9AE| dw $0005 : db $28 ; ROOM 0005 - ITEMGET 28 - !UNUSED chest in unused room
|01E9B1| dw $00B9 : db $40 ; ROOM 00B9 - ITEMGET 40
|01E9B4| dw $0074 : db $33 ; ROOM 0074 - ITEMGET 33
|01E9B7| dw $00B8 : db $32 ; ROOM 00B8 - ITEMGET 32
|01E9BA| dw $0104 : db $12 ; ROOM 0104 - ITEMGET 12
|01E9BD| dw $00FE : db $41 ; ROOM 00FE - ITEMGET 41
|01E9C0| dw $0075 : db $32 ; ROOM 0075 - ITEMGET 32
|01E9C3| dw $010C : db $17 ; ROOM 010C - ITEMGET 17
|01E9C6| dw $0068 : db $24 ; ROOM 0068 - ITEMGET 24
|01E9C9| dw $0085 : db $25 ; ROOM 0085 - ITEMGET 25
|01E9CC| dw $0103 : db $16 ; ROOM 0103 - ITEMGET 16
|01E9CF| dw $013D : db $36 ; ROOM 013D - ITEMGET 36 - !UNUSED chest in room that doesn't exist
|01E9D2| dw $002E : db $25 ; ROOM 002E - ITEMGET 25
|01E9D5| dw $012D : db $36 ; ROOM 012D - ITEMGET 36
|01E9D8| dw $00B3 : db $24 ; ROOM 00B3 - ITEMGET 24
|01E9DB| dw $003F : db $33 ; ROOM 003F - ITEMGET 33
|01E9DE| dw $005F : db $24 ; ROOM 005F - ITEMGET 24
|01E9E1| dw $00AE : db $24 ; ROOM 00AE - ITEMGET 24
|01E9E4| dw $0087 : db $32 ; ROOM 0087 - ITEMGET 32
|01E9E7| dw $0108 : db $0C ; ROOM 0108 - ITEMGET 0C
|01E9EA| dw $0106 : db $2A ; ROOM 0106 - ITEMGET 2A
|01E9ED| dw $011C : db $46 ; ROOM 011C - ITEMGET 46
|01E9F0| dw $010A : db $17 ; ROOM 010A - ITEMGET 17
|01E9F3| dw $00AA : db $33 ; ROOM 00AA - ITEMGET 33
|01E9F6| dw $8027 : db $1F ; ROOM 0027 - ITEMGET 1F - big chest
|01E9F9| dw $0027 : db $25 ; ROOM 0027 - ITEMGET 25
|01E9FC| dw $0059 : db $24 ; ROOM 0059 - ITEMGET 24
|01E9FF| dw $00DB : db $33 ; ROOM 00DB - ITEMGET 33
|01EA02| dw $00DB : db $32 ; ROOM 00DB - ITEMGET 32
|01EA05| dw $00DC : db $25 ; ROOM 00DC - ITEMGET 25
|01EA08| dw $00CB : db $36 ; ROOM 00CB - ITEMGET 36
|01EA0B| dw $0065 : db $28 ; ROOM 0065 - ITEMGET 28
|01EA0E| dw $8044 : db $1C ; ROOM 0044 - ITEMGET 1C - big chest
|01EA11| dw $0045 : db $24 ; ROOM 0045 - ITEMGET 24
|01EA14| dw $00B6 : db $24 ; ROOM 00B6 - ITEMGET 24
|01EA17| dw $8024 : db $06 ; ROOM 0024 - ITEMGET 06 - big chest
|01EA1A| dw $00B7 : db $33 ; ROOM 00B7 - ITEMGET 33
|01EA1D| dw $00B7 : db $24 ; ROOM 00B7 - ITEMGET 24
|01EA20| dw $00D6 : db $25 ; ROOM 00D6 - ITEMGET 25
|01EA23| dw $0014 : db $32 ; ROOM 0014 - ITEMGET 32
|01EA26| dw $00D5 : db $34 ; ROOM 00D5 - ITEMGET 34
|01EA29| dw $00D5 : db $35 ; ROOM 00D5 - ITEMGET 35
|01EA2C| dw $00D5 : db $36 ; ROOM 00D5 - ITEMGET 36
|01EA2F| dw $00D5 : db $24 ; ROOM 00D5 - ITEMGET 24
|01EA32| dw $0004 : db $24 ; ROOM 0004 - ITEMGET 24
|01EA35| dw $003A : db $32 ; ROOM 003A - ITEMGET 32
|01EA38| dw $002A : db $24 ; ROOM 002A - ITEMGET 24
|01EA3B| dw $002A : db $24 ; ROOM 002A - ITEMGET 24
|01EA3E| dw $801A : db $09 ; ROOM 001A - ITEMGET 09 - big chest
|01EA41| dw $001A : db $25 ; ROOM 001A - ITEMGET 25
|01EA44| dw $001A : db $35 ; ROOM 001A - ITEMGET 35
|01EA47| dw $000A : db $24 ; ROOM 000A - ITEMGET 24
|01EA4A| dw $006A : db $43 ; ROOM 006A - ITEMGET 43
|01EA4D| dw $006A : db $24 ; ROOM 006A - ITEMGET 24
|01EA50| dw $002B : db $33 ; ROOM 002B - ITEMGET 33
|01EA53| dw $0019 : db $28 ; ROOM 0019 - ITEMGET 28
|01EA56| dw $0019 : db $24 ; ROOM 0019 - ITEMGET 24
|01EA59| dw $0009 : db $24 ; ROOM 0009 - ITEMGET 24
|01EA5C| dw $00C2 : db $24 ; ROOM 00C2 - ITEMGET 24
|01EA5F| dw $00A2 : db $24 ; ROOM 00A2 - ITEMGET 24
|01EA62| dw $00C1 : db $25 ; ROOM 00C1 - ITEMGET 25
|01EA65| dw $80C3 : db $15 ; ROOM 00C3 - ITEMGET 15 - big chest
|01EA68| dw $00C3 : db $33 ; ROOM 00C3 - ITEMGET 33
|01EA6B| dw $00D1 : db $32 ; ROOM 00D1 - ITEMGET 32
|01EA6E| dw $00B3 : db $24 ; ROOM 00B3 - ITEMGET 24 - !UNUSED chest in mire spike chest room
|01EA71| dw $010D : db $17 ; ROOM 010D - ITEMGET 17
|01EA74| dw $010D : db $36 ; ROOM 010D - ITEMGET 36
|01EA77| dw $0012 : db $3F ; ROOM 0012 - ITEMGET 3F
|01EA7A| dw $00F8 : db $28 ; ROOM 00F8 - ITEMGET 28
|01EA7D| dw $00F8 : db $36 ; ROOM 00F8 - ITEMGET 36
|01EA80| dw $0105 : db $41 ; ROOM 0105 - ITEMGET 41
|01EA83| dw $0105 : db $28 ; ROOM 0105 - ITEMGET 28
|01EA86| dw $0105 : db $41 ; ROOM 0105 - ITEMGET 41
|01EA89| dw $0117 : db $18 ; ROOM 0117 - ITEMGET 18
|01EA8C| dw $002F : db $17 ; ROOM 002F - ITEMGET 17
|01EA8F| dw $002F : db $36 ; ROOM 002F - ITEMGET 36
|01EA92| dw $002F : db $36 ; ROOM 002F - ITEMGET 36
|01EA95| dw $002F : db $36 ; ROOM 002F - ITEMGET 36
|01EA98| dw $002F : db $28 ; ROOM 002F - ITEMGET 28
|01EA9B| dw $0028 : db $24 ; ROOM 0028 - ITEMGET 24
|01EA9E| dw $0046 : db $25 ; ROOM 0046 - ITEMGET 25
|01EAA1| dw $0034 : db $36 ; ROOM 0034 - ITEMGET 36
|01EAA4| dw $0035 : db $32 ; ROOM 0035 - ITEMGET 32
|01EAA7| dw $0076 : db $36 ; ROOM 0076 - ITEMGET 36
|01EAAA| dw $0076 : db $36 ; ROOM 0076 - ITEMGET 36
|01EAAD| dw $0066 : db $36 ; ROOM 0066 - ITEMGET 36
|01EAB0| dw $00D0 : db $24 ; ROOM 00D0 - ITEMGET 24
|01EAB3| dw $00E0 : db $24 ; ROOM 00E0 - ITEMGET 24
|01EAB6| dw $007B : db $28 ; ROOM 007B - ITEMGET 28
|01EAB9| dw $007B : db $44 ; ROOM 007B - ITEMGET 44
|01EABC| dw $007B : db $36 ; ROOM 007B - ITEMGET 36
|01EABF| dw $007B : db $36 ; ROOM 007B - ITEMGET 36
|01EAC2| dw $007C : db $44 ; ROOM 007C - ITEMGET 44
|01EAC5| dw $007C : db $44 ; ROOM 007C - ITEMGET 44
|01EAC8| dw $007C : db $28 ; ROOM 007C - ITEMGET 28
|01EACB| dw $007C : db $28 ; ROOM 007C - ITEMGET 28
|01EACE| dw $007D : db $24 ; ROOM 007D - ITEMGET 24
|01EAD1| dw $008B : db $33 ; ROOM 008B - ITEMGET 33
|01EAD4| dw $808C : db $23 ; ROOM 008C - ITEMGET 23 - big chest
|01EAD7| dw $008C : db $44 ; ROOM 008C - ITEMGET 44
|01EADA| dw $008C : db $28 ; ROOM 008C - ITEMGET 28
|01EADD| dw $008C : db $44 ; ROOM 008C - ITEMGET 44
|01EAE0| dw $008D : db $24 ; ROOM 008D - ITEMGET 24
|01EAE3| dw $009D : db $25 ; ROOM 009D - ITEMGET 25
|01EAE6| dw $009D : db $34 ; ROOM 009D - ITEMGET 34
|01EAE9| dw $009D : db $36 ; ROOM 009D - ITEMGET 36
|01EAEC| dw $009D : db $44 ; ROOM 009D - ITEMGET 44
|01EAEF| dw $001C : db $32 ; ROOM 001C - ITEMGET 32
|01EAF2| dw $001C : db $44 ; ROOM 001C - ITEMGET 44
|01EAF5| dw $001C : db $28 ; ROOM 001C - ITEMGET 28
|01EAF8| dw $005B : db $24 ; ROOM 005B - ITEMGET 24 - !UNUSED chest in gt spike pit
|01EAFB| dw $003D : db $28 ; ROOM 003D - ITEMGET 28
|01EAFE| dw $003D : db $28 ; ROOM 003D - ITEMGET 28
|01EB01| dw $003D : db $24 ; ROOM 003D - ITEMGET 24
|01EB04| dw $004D : db $36 ; ROOM 004D - ITEMGET 36
|01EB07| dw $0080 : db $12 ; ROOM 0080 - ITEMGET 12
|01EB0A| dw $0072 : db $33 ; ROOM 0072 - ITEMGET 33
|01EB0D| dw $011D : db $17 ; ROOM 011D - ITEMGET 17
|01EB10| dw $011D : db $36 ; ROOM 011D - ITEMGET 36
|01EB13| dw $011D : db $36 ; ROOM 011D - ITEMGET 36
|01EB16| dw $011D : db $36 ; ROOM 011D - ITEMGET 36
|01EB19| dw $011D : db $36 ; ROOM 011D - ITEMGET 36
|01EB1C| dw $011E : db $36 ; ROOM 011E - ITEMGET 36
|01EB1F| dw $011E : db $36 ; ROOM 011E - ITEMGET 36
|01EB22| dw $011E : db $36 ; ROOM 011E - ITEMGET 36
|01EB25| dw $011E : db $36 ; ROOM 011E - ITEMGET 36
|01EB28| dw $00EF : db $36 ; ROOM 00EF - ITEMGET 36
|01EB2B| dw $00EF : db $36 ; ROOM 00EF - ITEMGET 36
|01EB2E| dw $00EF : db $36 ; ROOM 00EF - ITEMGET 36
|01EB31| dw $00EF : db $36 ; ROOM 00EF - ITEMGET 36
|01EB34| dw $00EF : db $36 ; ROOM 00EF - ITEMGET 36
|01EB37| dw $00FF : db $28 ; ROOM 00FF - ITEMGET 28
|01EB3A| dw $00FF : db $44 ; ROOM 00FF - ITEMGET 44
|01EB3D| dw $0124 : db $17 ; ROOM 0124 - ITEMGET 17
|01EB40| dw $0123 : db $28 ; ROOM 0123 - ITEMGET 28
|01EB43| dw $0123 : db $36 ; ROOM 0123 - ITEMGET 36
|01EB46| dw $0123 : db $36 ; ROOM 0123 - ITEMGET 36
|01EB49| dw $0123 : db $44 ; ROOM 0123 - ITEMGET 44
|01EB4C| dw $0120 : db $08 ; ROOM 0120 - ITEMGET 08
|01EB4F| dw $003C : db $41 ; ROOM 003C - ITEMGET 41
|01EB52| dw $003C : db $41 ; ROOM 003C - ITEMGET 41
|01EB55| dw $003C : db $41 ; ROOM 003C - ITEMGET 41
|01EB58| dw $003C : db $41 ; ROOM 003C - ITEMGET 41
|01EB5B| dw $0011 : db $28 ; ROOM 0011 - ITEMGET 28
|01EB5E| dw $0011 : db $46 ; ROOM 0011 - ITEMGET 46
|01EB61| dw $0011 : db $44 ; ROOM 0011 - ITEMGET 44

;===================================================================================================

OpenChestForItem:
|01EB64| PHB

|01EB65| LDX.b #^RoomDrawObjectData
|01EB67| PHX
|01EB68| PLB

|01EB69| CMP.b #$63 ; TILETYPE 63
|01EB6B| BNE OpenItemChest

|01EB6D| JMP.w OpenMiniGameChest

;===================================================================================================

OpenItemChest:
|01EB70| REP #$30

|01EB72| AND.w #$00FF
|01EB75| SEC
|01EB76| SBC.w #$0058
|01EB79| STA.b $0E

|01EB7B| ASL A
|01EB7C| PHA

|01EB7D| TAY
|01EB7E| PHY

|01EB7F| LDA.w $06E0,Y
|01EB82| CMP.w #$8000
|01EB85| BCC .not_big_key_lock

|01EB87| LDX.w $040C

|01EB8A| LDA.l $7EF366
|01EB8E| AND.l BitMasks,X
|01EB92| BNE .open_big_key_lock

|01EB94| LDA.w #$0078 ; MESSAGE 0078
|01EB97| STA.w $1CF0

|01EB9A| SEP #$30

|01EB9C| JSL PrepAndDisplayMessage

|01EBA0| REP #$30

|01EBA2| BRA .cannot_open_big_key_lock

;---------------------------------------------------------------------------------------------------

.open_big_key_lock
|01EBA4| LDA.w $0402
|01EBA7| ORA.w RoomFlagMask,Y
|01EBAA| STA.w $0402

|01EBAD| LDA.w #$1529 ; queues SFX3.15 and SFX2.29
|01EBB0| STA.w $012E

|01EBB3| LDA.w $06E0,Y
|01EBB6| AND.w #$7FFF
|01EBB9| TAX

|01EBBA| LDY.w $046A

|01EBBD| LDA.w RoomDrawObjectData+0,Y
|01EBC0| STA.l $7E2000,X
|01EBC4| STA.b $02

|01EBC6| LDA.w RoomDrawObjectData+2,Y
|01EBC9| STA.l $7E2080,X
|01EBCD| STA.b $04

|01EBCF| LDA.w RoomDrawObjectData+4,Y
|01EBD2| STA.l $7E2002,X
|01EBD6| STA.b $06

|01EBD8| LDA.w RoomDrawObjectData+6,Y
|01EBDB| JMP.w .save_tile_map

;---------------------------------------------------------------------------------------------------

.no_chest_found
|01EBDE| PLX

.cannot_open_big_key_lock
|01EBDF| PLY
|01EBE0| PLA

|01EBE1| SEP #$30

|01EBE3| PLB

|01EBE4| CLC

|01EBE5| RTL

;---------------------------------------------------------------------------------------------------

.not_big_key_lock
|01EBE6| AND.w #$7FFF
|01EBE9| TAX

|01EBEA| PHX

|01EBEB| INC.b $0E

|01EBED| LDX.w #$FFFD

.next_chest_check
|01EBF0| INX
|01EBF1| INX
|01EBF2| INX
|01EBF3| CPX.w #$01F8 ; [HARDCODED] table size
|01EBF6| BEQ .no_chest_found

|01EBF8| LDA.l RoomData_ChestItems,X
|01EBFC| AND.w #$7FFF

; check room
|01EBFF| CMP.b $A0
|01EC01| BNE .next_chest_check

|01EC03| DEC.b $0E
|01EC05| BNE .next_chest_check

;---------------------------------------------------------------------------------------------------

|01EC07| LDA.l RoomData_ChestItems+2,X
|01EC0B| STA.b $0C

|01EC0D| LDA.l RoomData_ChestItems+0,X
|01EC11| ASL A

|01EC12| BCC .small_chest

|01EC14| LDX.w $040C

|01EC17| LDA.l $7EF366
|01EC1B| AND.l BitMasks,X
|01EC1F| BEQ .no_big_key_for_big_chest

|01EC21| PLX
|01EC22| PLA

|01EC23| JMP.w OpenBigChest

;---------------------------------------------------------------------------------------------------

.no_big_key_for_big_chest
|01EC26| PLX
|01EC27| PLY
|01EC28| PLA

|01EC29| LDA.w #$0078 ; MESSAGE 0078
|01EC2C| STA.w $1CF0

|01EC2F| SEP #$30

|01EC31| JSL PrepAndDisplayMessage

|01EC35| PLB

|01EC36| CLC

|01EC37| RTL

;---------------------------------------------------------------------------------------------------

.small_chest
|01EC38| PLX

|01EC39| LDA.w $0402
|01EC3C| ORA.w RoomFlagMask,Y
|01EC3F| STA.w $0402

|01EC42| LDY.w #RoomDrawObjectData.obj14A4

|01EC45| LDA.w RoomDrawObjectData+0,Y
|01EC48| STA.l $7E2000,X
|01EC4C| STA.b $02

|01EC4E| LDA.w RoomDrawObjectData+2,Y
|01EC51| STA.l $7E2080,X
|01EC55| STA.b $04

|01EC57| LDA.w RoomDrawObjectData+4,Y
|01EC5A| STA.l $7E2002,X
|01EC5E| STA.b $06

|01EC60| LDA.w RoomDrawObjectData+6,Y

;---------------------------------------------------------------------------------------------------

.save_tile_map
|01EC63| STA.l $7E2082,X
|01EC67| STA.b $08

|01EC69| PLY

|01EC6A| LDA.w #$2727
|01EC6D| STA.b $00

|01EC6F| LDA.w $06E0,Y
|01EC72| CMP.w #$8000
|01EC75| BCC .not_a_lock

|01EC77| AND.w #$7FFF
|01EC7A| STZ.b $00

.not_a_lock
|01EC7C| LSR A
|01EC7D| TAX

|01EC7E| LDA.b $00
|01EC80| STA.l $7F2000,X
|01EC84| STA.l $7F2040,X

;---------------------------------------------------------------------------------------------------

|01EC88| LDX.w $1000

|01EC8B| LDA.w #$0000
|01EC8E| JSR BuildChestStripes
|01EC91| STA.w $1002,X

|01EC94| LDA.w #$0080
|01EC97| JSR BuildChestStripes
|01EC9A| STA.w $1008,X

|01EC9D| LDA.w #$0002
|01ECA0| JSR BuildChestStripes
|01ECA3| STA.w $100E,X

|01ECA6| LDA.w #$0082
|01ECA9| JSR BuildChestStripes
|01ECAC| STA.w $1014,X

;---------------------------------------------------------------------------------------------------

|01ECAF| LDA.b $02
|01ECB1| STA.w $1006,X

|01ECB4| LDA.b $04
|01ECB6| STA.w $100C,X

|01ECB9| LDA.b $06
|01ECBB| STA.w $1012,X

|01ECBE| LDA.b $08
|01ECC0| STA.w $1018,X

|01ECC3| LDA.w #$0100
|01ECC6| STA.w $1004,X
|01ECC9| STA.w $100A,X
|01ECCC| STA.w $1010,X
|01ECCF| STA.w $1016,X

|01ECD2| LDA.w #$FFFF
|01ECD5| STA.w $101A,X

|01ECD8| TXA
|01ECD9| CLC
|01ECDA| ADC.w #$0018
|01ECDD| STA.w $1000

;---------------------------------------------------------------------------------------------------

|01ECE0| SEP #$30

|01ECE2| LDA.b #$01
|01ECE4| STA.b $14

|01ECE6| JSL FullyUpdateRoomFlags

;---------------------------------------------------------------------------------------------------

|01ECEA| LDA.w $012F
|01ECED| BNE .skip_sfx

|01ECEF| LDA.b #$0E ; SFX3.0E
|01ECF1| STA.w $012F

.skip_sfx
|01ECF4| REP #$30

|01ECF6| PLY

|01ECF7| LDA.w $06E0,Y
|01ECFA| AND.w #$7FFF
|01ECFD| STA.b $72

|01ECFF| SEP #$31

|01ED01| PLB

|01ED02| RTL

;===================================================================================================

OpenBigChest:
|01ED03| LDA.w $0402
|01ED06| ORA.w RoomFlagMask,Y
|01ED09| STA.w $0402

|01ED0C| STX.b $08

|01ED0E| LDA.w #$0004
|01ED11| STA.b $0E

;---------------------------------------------------------------------------------------------------

|01ED13| LDY.w #RoomDrawObjectData.obj14C4

.next_column
|01ED16| LDA.w RoomDrawObjectData+0,Y
|01ED19| STA.l $7E2000,X

|01ED1D| LDA.w RoomDrawObjectData+2,Y
|01ED20| STA.l $7E2080,X

|01ED24| LDA.w RoomDrawObjectData+4,Y
|01ED27| STA.l $7E2100,X

|01ED2B| INY ; +6
|01ED2C| INY
|01ED2D| INY
|01ED2E| INY
|01ED2F| INY
|01ED30| INY

|01ED31| INX
|01ED32| INX

|01ED33| DEC.b $0E
|01ED35| BNE .next_column

;---------------------------------------------------------------------------------------------------

|01ED37| LDA.b $0C
|01ED39| PHA

|01ED3A| JSR RoomTag_WaterOff_AdjustOverlay

|01ED3D| LDY.b $0C

|01ED3F| LDA.w #$FFFF
|01ED42| STA.w $1100,Y

|01ED45| PLA
|01ED46| STA.b $0C

|01ED48| PLY

|01ED49| LDA.w $06E0,Y
|01ED4C| AND.w #$7FFF
|01ED4F| PHA

|01ED50| INC A
|01ED51| INC A
|01ED52| STA.b $72

;---------------------------------------------------------------------------------------------------

|01ED54| PLA
|01ED55| LSR A
|01ED56| TAX

|01ED57| LDA.w #$2727 ; TILETYPE 27
|01ED5A| STA.l $7F2000,X
|01ED5E| STA.l $7F2002,X
|01ED62| STA.l $7F2040,X
|01ED66| STA.l $7F2042,X
|01ED6A| STA.l $7F2080,X
|01ED6E| STA.l $7F2082,X

;---------------------------------------------------------------------------------------------------

|01ED72| SEP #$31

|01ED74| PLB

|01ED75| JSL FullyUpdateRoomFlags

|01ED79| LDA.b #$0E ; SFX3.0E
|01ED7B| STA.w $012F

|01ED7E| LDA.b #$01
|01ED80| STA.b $18
|01ED82| STA.w $0B9E

|01ED85| SEC

|01ED86| RTL

;===================================================================================================

OpenMiniGameChestFail:
|01ED87| STA.b $C8

|01ED89| REP #$20

|01ED8B| LDA.w #$0160 ; MESSAGE 0160
|01ED8E| BRA .show_message

;---------------------------------------------------------------------------------------------------

#NoMinigameCredits:
|01ED90| REP #$20

|01ED92| LDA.w #$0161 ; MESSAGE 0161

;---------------------------------------------------------------------------------------------------

.show_message
|01ED95| STA.w $1CF0

|01ED98| SEP #$20

|01ED9A| JSL PrepAndDisplayMessage

|01ED9E| PLB

|01ED9F| CLC

|01EDA0| RTL

;===================================================================================================

VoOChestGamePrizes:
|01EDA1| db $40 ; ITEMGET 40 - 100 RUPEES
|01EDA2| db $41 ; ITEMGET 41 - 50 RUPEES
|01EDA3| db $34 ; ITEMGET 34 - 1 RUPEE
|01EDA4| db $42 ; ITEMGET 42 - HEART
|01EDA5| db $43 ; ITEMGET 43 - ARROW
|01EDA6| db $44 ; ITEMGET 44 - 10 ARROWS
|01EDA7| db $27 ; ITEMGET 27 - BOMB
|01EDA8| db $17 ; ITEMGET 17 - HEART PIECE

;---------------------------------------------------------------------------------------------------

OpenMiniGameChest:
|01EDA9| LDA.w $04C4
|01EDAC| BEQ NoMinigameCredits

|01EDAE| CMP.b #$FF
|01EDB0| BEQ OpenMiniGameChestFail

|01EDB2| DEC.w $04C4

;---------------------------------------------------------------------------------------------------

|01EDB5| REP #$30

|01EDB7| LDA.b $20
|01EDB9| SEC
|01EDBA| SBC.w #$0004
|01EDBD| STA.b $00

|01EDBF| AND.w #$01F8

|01EDC2| ASL A ; x8
|01EDC3| ASL A
|01EDC4| ASL A

|01EDC5| STA.b $06

|01EDC7| LDA.b $22
|01EDC9| CLC
|01EDCA| ADC.w #$0007
|01EDCD| STA.b $02

|01EDCF| AND.w #$01F8

|01EDD2| LSR A ; /8
|01EDD3| LSR A
|01EDD4| LSR A

|01EDD5| ORA.b $06
|01EDD7| TAX

;---------------------------------------------------------------------------------------------------

|01EDD8| LDA.l $7F2000,X
|01EDDC| CMP.w #$6363 ; TILETYPE 63
|01EDDF| BEQ .indeed_minigame_chest

|01EDE1| DEX

|01EDE2| LDA.l $7F2000,X
|01EDE6| CMP.w #$6363 ; TILETYPE 63
|01EDE9| BEQ .indeed_minigame_chest

|01EDEB| INX
|01EDEC| INX

;---------------------------------------------------------------------------------------------------

.indeed_minigame_chest
|01EDED| LDA.w #$0202 ; TILETYPE 02
|01EDF0| STA.l $7F2000,X
|01EDF4| STA.l $7F2040,X

|01EDF8| TXA
|01EDF9| ASL A
|01EDFA| STA.b $72

|01EDFC| CLC
|01EDFD| ADC.w #$0100
|01EE00| TAX

|01EE01| STA.b $0C

|01EE03| LDY.w #RoomDrawObjectData.obj14A4

|01EE06| LDA.w RoomDrawObjectData+0,Y
|01EE09| STA.l $7E2000,X
|01EE0D| STA.b $02

|01EE0F| LDA.w RoomDrawObjectData+2,Y
|01EE12| STA.l $7E2080,X
|01EE16| STA.b $04

|01EE18| LDA.w RoomDrawObjectData+4,Y
|01EE1B| STA.l $7E2002,X
|01EE1F| STA.b $06

|01EE21| LDA.w RoomDrawObjectData+6,Y
|01EE24| STA.l $7E2082,X
|01EE28| STA.b $08

;---------------------------------------------------------------------------------------------------

|01EE2A| LDX.w $1000

|01EE2D| LDA.b $0C
|01EE2F| JSR BuildChestStripes
|01EE32| STA.w $1002,X

|01EE35| LDA.b $0C
|01EE37| CLC
|01EE38| ADC.w #$0080
|01EE3B| JSR BuildChestStripes
|01EE3E| STA.w $1008,X

|01EE41| LDA.b $0C
|01EE43| CLC
|01EE44| ADC.w #$0002
|01EE47| JSR BuildChestStripes
|01EE4A| STA.w $100E,X

|01EE4D| LDA.b $0C
|01EE4F| CLC
|01EE50| ADC.w #$0082
|01EE53| JSR BuildChestStripes
|01EE56| STA.w $1014,X

;---------------------------------------------------------------------------------------------------

|01EE59| LDA.b $02
|01EE5B| STA.w $1006,X

|01EE5E| LDA.b $04
|01EE60| STA.w $100C,X

|01EE63| LDA.b $06
|01EE65| STA.w $1012,X

|01EE68| LDA.b $08
|01EE6A| STA.w $1018,X

|01EE6D| LDA.w #$0100
|01EE70| STA.w $1004,X
|01EE73| STA.w $100A,X
|01EE76| STA.w $1010,X
|01EE79| STA.w $1016,X

|01EE7C| LDA.w #$FFFF
|01EE7F| STA.w $101A,X

|01EE82| TXA
|01EE83| CLC
|01EE84| ADC.w #$0018
|01EE87| STA.w $1000

;---------------------------------------------------------------------------------------------------

|01EE8A| SEP #$31

|01EE8C| LDA.b $A0 ; ROOM 0100
|01EE8E| BEQ OpenMiniGameChest_HighStake

|01EE90| CMP.b #$18 ; ROOM 0118
|01EE92| BEQ OpenMiniGameChest_LowStake

;===================================================================================================

OpenMiniGameChest_VoO:
|01EE94| JSL GetRandomNumber
|01EE98| AND.b #$07
|01EE9A| TAX

|01EE9B| CPX.b #$02
|01EE9D| BCC .dont_nudge

|01EE9F| CPX.b $C8
|01EEA1| BNE .dont_nudge

|01EEA3| TXA
|01EEA4| INC A
|01EEA5| AND.b #$07
|01EEA7| TAX

.dont_nudge
|01EEA8| CPX.b #$07
|01EEAA| BNE .dont_flag_heart_piece

|01EEAC| LDA.w $0403
|01EEAF| AND.b #$40
|01EEB1| BNE .heart_obtained_already

|01EEB3| LDA.w $0403
|01EEB6| ORA.b #$40
|01EEB8| STA.w $0403

|01EEBB| BRA .dont_flag_heart_piece

.heart_obtained_already
|01EEBD| LDX.b #$00

.dont_flag_heart_piece
|01EEBF| LDA.l VoOChestGamePrizes,X

;===================================================================================================

FinalizeChestGamePrize:
|01EEC3| STX.b $C8

|01EEC5| STA.b $0C
|01EEC7| STZ.b $0D

|01EEC9| LDA.b #$01
|01EECB| STA.b $14

|01EECD| LDA.b #$0E ; SFX3.0E
|01EECF| STA.w $012F

|01EED2| PLB

|01EED3| SEC

|01EED4| RTL

;===================================================================================================

OtherChestGamePrizes:

.high_stakes
|01EED5| db $47 ; ITEMGET 47 - 20 RUPEES GREEN
|01EED6| db $34 ; ITEMGET 34 - 1 RUPEE
|01EED7| db $46 ; ITEMGET 46 - 300 RUPEES
|01EED8| db $34 ; ITEMGET 34 - 1 RUPEE
|01EED9| db $46 ; ITEMGET 46 - 300 RUPEES
|01EEDA| db $46 ; ITEMGET 46 - 300 RUPEES
|01EEDB| db $34 ; ITEMGET 34 - 1 RUPEE
|01EEDC| db $47 ; ITEMGET 47 - 20 RUPEES GREEN
|01EEDD| db $46 ; ITEMGET 46 - 300 RUPEES
|01EEDE| db $47 ; ITEMGET 47 - 20 RUPEES GREEN
|01EEDF| db $34 ; ITEMGET 34 - 1 RUPEE
|01EEE0| db $46 ; ITEMGET 46 - 300 RUPEES
|01EEE1| db $47 ; ITEMGET 47 - 20 RUPEES GREEN
|01EEE2| db $34 ; ITEMGET 34 - 1 RUPEE
|01EEE3| db $46 ; ITEMGET 46 - 300 RUPEES
|01EEE4| db $47 ; ITEMGET 47 - 20 RUPEES GREEN

;---------------------------------------------------------------------------------------------------

.low_stakes
|01EEE5| db $34 ; ITEMGET 34 - 1 RUPEE
|01EEE6| db $47 ; ITEMGET 47 - 20 RUPEES GREEN
|01EEE7| db $41 ; ITEMGET 41 - 50 RUPEES
|01EEE8| db $47 ; ITEMGET 47 - 20 RUPEES GREEN
|01EEE9| db $41 ; ITEMGET 41 - 50 RUPEES
|01EEEA| db $41 ; ITEMGET 41 - 50 RUPEES
|01EEEB| db $47 ; ITEMGET 47 - 20 RUPEES GREEN
|01EEEC| db $34 ; ITEMGET 34 - 1 RUPEE
|01EEED| db $41 ; ITEMGET 41 - 50 RUPEES
|01EEEE| db $34 ; ITEMGET 34 - 1 RUPEE
|01EEEF| db $47 ; ITEMGET 47 - 20 RUPEES GREEN
|01EEF0| db $41 ; ITEMGET 41 - 50 RUPEES
|01EEF1| db $34 ; ITEMGET 34 - 1 RUPEE
|01EEF2| db $47 ; ITEMGET 47 - 20 RUPEES GREEN
|01EEF3| db $41 ; ITEMGET 41 - 50 RUPEES
|01EEF4| db $34 ; ITEMGET 34 - 1 RUPEE

;===================================================================================================

OpenMiniGameChest_HighStake:
|01EEF5| JSL GetRandomNumber
|01EEF9| AND.b #$0F

|01EEFB| BRA .set_prize

;===================================================================================================

#OpenMiniGameChest_LowStake:
|01EEFD| JSL GetRandomNumber
|01EF01| AND.b #$0F
|01EF03| CLC
|01EF04| ADC.b #$10

;---------------------------------------------------------------------------------------------------

.set_prize
|01EF06| TAX

|01EF07| LDA.l OtherChestGamePrizes,X

|01EF0B| BRA FinalizeChestGamePrize

;===================================================================================================

BuildChestStripes:
|01EF0D| CLC
|01EF0E| ADC.w $06E0,Y
|01EF11| STA.b $0E

|01EF13| AND.w #$0040

|01EF16| LSR A
|01EF17| LSR A
|01EF18| LSR A
|01EF19| LSR A

|01EF1A| XBA
|01EF1B| STA.b $0A

|01EF1D| LDA.b $0E
|01EF1F| AND.w #$303F
|01EF22| LSR A
|01EF23| ORA.b $0A
|01EF25| STA.b $0A

|01EF27| LDA.b $0E
|01EF29| AND.w #$0F80
|01EF2C| LSR A
|01EF2D| LSR A
|01EF2E| ORA.b $0A
|01EF30| XBA

|01EF31| RTS

;===================================================================================================

pool IncrementallyDrainSwampPool

.window_direction
|01EF32| dw $FFFF, $FFFF, $FFFF, $0001
|01EF3A| dw $FFFF, $FFFF, $FFFF, $0001
|01EF42| dw $FFFF, $FFFF, $FFFF, $0001
|01EF4A| dw $FFFF, $FFFF, $FFFF, $0001

endpool

;---------------------------------------------------------------------------------------------------

IncrementallyDrainSwampPool:
|01EF52| LDA.w $0424
|01EF55| AND.b #$07
|01EF57| BNE .dont_step_drainage

|01EF59| LDA.w $0424
|01EF5C| AND.b #$0C
|01EF5E| LSR A
|01EF5F| TAX

|01EF60| REP #$20

; vertical window
|01EF62| LDA.w $0684
|01EF65| CMP.w $0688
|01EF68| BEQ .done_draining

|01EF6A| CLC
|01EF6B| ADC.l .window_direction,X
|01EF6F| STA.w $0684

; horizontal window
|01EF72| LDA.w $0686
|01EF75| CLC
|01EF76| ADC.l .window_direction,X
|01EF7A| STA.w $0686

|01EF7D| SEP #$30

|01EF7F| INC.w $0424

|01EF82| JSL AdjustWaterHDMAWindow

|01EF86| RTL

;---------------------------------------------------------------------------------------------------

.dont_step_drainage
|01EF87| SEP #$30

|01EF89| INC.w $0424

|01EF8C| JSL AdjustWaterHDMAWindow

|01EF90| RTL

;---------------------------------------------------------------------------------------------------

.done_draining
|01EF91| SEP #$30

|01EF93| LDA.b #$02
|01EF95| STA.b $99

|01EF97| LDA.b #$32
|01EF99| STA.b $9A

|01EF9B| STZ.w TS
|01EF9E| STZ.b $1D

|01EFA0| STZ.b $96

|01EFA2| STZ.w $046C

|01EFA5| REP #$30

|01EFA7| STZ.b $1E

|01EFA9| LDX.w $0442
|01EFAC| BEQ .no_props_to_edit

;---------------------------------------------------------------------------------------------------

|01EFAE| LDY.w #$0000

.next_a
|01EFB1| LDX.w $06B8,Y

|01EFB4| LDA.w #$1D1D ; TILETYPE 1D
|01EFB7| STA.l $7F2041,X
|01EFBB| STA.l $7F2081,X

|01EFBF| INY
|01EFC0| INY
|01EFC1| CPY.w $0442
|01EFC4| BNE .next_a

;---------------------------------------------------------------------------------------------------

.no_props_to_edit
|01EFC6| LDX.w $04AE
|01EFC9| BEQ .exit_trigger_advance

|01EFCB| LDY.w #$0000

.next_b
|01EFCE| LDX.w $06EC,Y

|01EFD1| LDA.w #$1D1D ; TILETYPE 1D
|01EFD4| STA.l $7F2041,X
|01EFD8| STA.l $7F2081,X

|01EFDC| INY
|01EFDD| INY
|01EFDE| CPY.w $04AE
|01EFE1| BNE .next_b

;---------------------------------------------------------------------------------------------------

.exit_trigger_advance
|01EFE3| SEP #$30

|01EFE5| INC.b $15
|01EFE7| INC.b $B0

|01EFE9| RTL

;===================================================================================================

DeleteSwampPoolWaterOverlay:
|01EFEA| REP #$30

|01EFEC| LDX.w #$0000
|01EFEF| LDY.w #RoomDrawObjectData.obj01E0

|01EFF2| LDA.w RoomDrawObjectData+0,Y

.next
|01EFF5| STA.l $7E4000,X
|01EFF9| STA.l $7E4200,X
|01EFFD| STA.l $7E4400,X
|01F001| STA.l $7E4600,X

|01F005| STA.l $7E4800,X
|01F009| STA.l $7E4A00,X
|01F00D| STA.l $7E4C00,X
|01F011| STA.l $7E4E00,X

|01F015| STA.l $7E5000,X
|01F019| STA.l $7E5200,X
|01F01D| STA.l $7E5400,X
|01F021| STA.l $7E5600,X

|01F025| STA.l $7E5800,X
|01F029| STA.l $7E5A00,X
|01F02D| STA.l $7E5C00,X
|01F031| STA.l $7E5E00,X

|01F035| INX
|01F036| INX
|01F037| CPX.w #$0200
|01F03A| BNE .next

|01F03C| SEP #$30

|01F03E| STZ.w $045C

|01F041| INC.b $B0

|01F043| RTL

;===================================================================================================

FloodSwampWater_PrepTilemap:
|01F044| JSL BuildBG1QuadrantForUpload

|01F048| LDA.w $045C
|01F04B| CLC
|01F04C| ADC.b #$04
|01F04E| STA.w $045C

|01F051| INC.b $B0

|01F053| LDA.b $B0
|01F055| CMP.b #$06
|01F057| BNE .exit

|01F059| STZ.w $045C

|01F05C| STZ.b $B0
|01F05E| STZ.b $11

.exit
|01F060| RTL

;===================================================================================================

WaterDrainSpeed:

.tub_fill
|01F061| dw $0001
|01F063| dw $0001
|01F065| dw $0001
|01F067| dw $FFFF

.floor_flood
|01F069| dw $0001
|01F06B| dw $0002
|01F06D| dw $0001
|01F06F| dw $FFFF

.flood_width
|01F071| dw $0001
|01F073| dw $FFFF
|01F075| dw $0001
|01F077| dw $FFFF

;===================================================================================================

pool FloodSwampWater

.vectors
|01F079| dw FloodSwampWater_PrepTilemap  ; 0x00
|01F07B| dw FloodSwampWater_PrepTilemap  ; 0x01
|01F07D| dw FloodSwampWater_PrepTilemap  ; 0x02
|01F07F| dw FloodSwampWater_PrepTilemap  ; 0x03
|01F081| dw FloodSwampWater_VomitWater   ; 0x04
|01F083| dw FloodSwampWater_VomitWater   ; 0x05
|01F085| dw FloodSwampWater_VomitWater   ; 0x06
|01F087| dw FloodSwampWater_VomitWater   ; 0x07
|01F089| dw FloodSwampWater_VomitWater   ; 0x08
|01F08B| dw FloodSwampWater_SpillToFloor ; 0x09
|01F08D| dw FloodSwampWater_CoverFloor   ; 0x0A
|01F08F| dw FloodSwampWater_RiseInLevel  ; 0x0B

endpool

;---------------------------------------------------------------------------------------------------

FloodSwampWater:
|01F091| LDA.b $B0
|01F093| ASL A
|01F094| TAX

|01F095| JMP.w (.vectors,X)

;===================================================================================================

#EXIT_01F098:
|01F098| RTL

;---------------------------------------------------------------------------------------------------

FloodSwampWater_VomitWater:
|01F099| DEC.w $0424
|01F09C| BNE EXIT_01F098

|01F09E| LDA.b #$04
|01F0A0| STA.w $0424

|01F0A3| INC.b $B0

|01F0A5| LDA.b $B0
|01F0A7| SEC
|01F0A8| SBC.b #$04
|01F0AA| STA.b $0E
|01F0AC| STZ.b $0F

|01F0AE| REP #$30

|01F0B0| LDA.w #$0008
|01F0B3| STA.w $0686

|01F0B6| STZ.w $068A

|01F0B9| LDA.w #$0030
|01F0BC| STA.w $0684

|01F0BF| LDA.w #RoomDrawObjectData.obj1654
|01F0C2| CLC
|01F0C3| ADC.w #$0010
|01F0C6| TAY

;===================================================================================================

AdjustWaterVomit:
|01F0C7| LDA.w $047C
|01F0CA| CLC
|01F0CB| ADC.w #$0100
|01F0CE| STA.b $08

|01F0D0| TAX

.next_draw
|01F0D1| LDA.w RoomDrawObjectData+0,Y
|01F0D4| STA.l $7E2000,X

|01F0D8| LDA.w RoomDrawObjectData+2,Y
|01F0DB| STA.l $7E2002,X

|01F0DF| LDA.w RoomDrawObjectData+4,Y
|01F0E2| STA.l $7E2004,X

|01F0E6| LDA.w RoomDrawObjectData+6,Y
|01F0E9| STA.l $7E2006,X

|01F0ED| TYA
|01F0EE| CLC
|01F0EF| ADC.w #$0008
|01F0F2| TAY

|01F0F3| TXA
|01F0F4| CLC
|01F0F5| ADC.w #$0080
|01F0F8| TAX

|01F0F9| DEC.b $0E
|01F0FB| BNE .next_draw

;---------------------------------------------------------------------------------------------------

|01F0FD| LDA.w #$0004
|01F100| STA.b $0A

|01F102| LDY.w #$0000

.next_tilemap_update
|01F105| LDX.b $08
|01F107| TXA

|01F108| AND.w #$0040
|01F10B| LSR A ; /16
|01F10C| LSR A
|01F10D| LSR A
|01F10E| LSR A
|01F10F| XBA
|01F110| STA.b $00

|01F112| TXA
|01F113| AND.w #$303F
|01F116| LSR A
|01F117| ORA.b $00
|01F119| STA.b $00

|01F11B| TXA
|01F11C| AND.w #$0F80
|01F11F| LSR A
|01F120| LSR A
|01F121| ORA.b $00
|01F123| XBA
|01F124| STA.w $1002,Y

|01F127| LDA.w #$0980
|01F12A| STA.w $1004,Y

|01F12D| LDA.l $7E2000,X
|01F131| STA.w $1006,Y

|01F134| LDA.l $7E2080,X
|01F138| STA.w $1008,Y

|01F13B| LDA.l $7E2100,X
|01F13F| STA.w $100A,Y

|01F142| LDA.l $7E2180,X
|01F146| STA.w $100C,Y

|01F149| LDA.l $7E2200,X
|01F14D| STA.w $100E,Y

|01F150| INC.b $08
|01F152| INC.b $08

|01F154| TYA
|01F155| CLC
|01F156| ADC.w #$000E
|01F159| TAY

|01F15A| DEC.b $0A
|01F15C| BNE .next_tilemap_update

;---------------------------------------------------------------------------------------------------

|01F15E| LDA.w #$FFFF
|01F161| STA.w $1002,Y

|01F164| SEP #$30

|01F166| LDA.b #$01
|01F168| STA.b $14

|01F16A| RTL

;===================================================================================================

FloodSwampWater_SpillToFloor:
|01F16B| LDA.b #$03
|01F16D| STA.b $96

|01F16F| STZ.b $97
|01F171| STZ.b $98

|01F173| LDA.b #$16
|01F175| STA.b $1E

; enable BG1 for subscreen and subscreen window
|01F177| LDA.b #$01
|01F179| STA.b $1F
|01F17B| STA.b $1D

; use subscreen for color math
|01F17D| LDA.b #$02
|01F17F| STA.b $99

; half color math on CGRAM0 and BG2
|01F181| LDA.b #$62
|01F183| STA.b $9A

|01F185| STZ.w $0424

|01F188| INC.b $B0

;===================================================================================================

FloodSwampWater_CoverFloor:
|01F18A| LDA.w $0424
|01F18D| AND.b #$03
|01F18F| ASL A
|01F190| TAX

|01F191| REP #$20

|01F193| LDA.w #$0688
|01F196| SEC
|01F197| SBC.b $E8
|01F199| SEC
|01F19A| SBC.w #$0024
|01F19D| STA.b $00

|01F19F| LDA.w $0686
|01F1A2| CLC
|01F1A3| ADC.l WaterDrainSpeed.flood_width,X
|01F1A7| STA.w $0686

|01F1AA| LDA.w $068A
|01F1AD| CLC
|01F1AE| ADC.l WaterDrainSpeed.floor_flood,X
|01F1B2| STA.w $068A

|01F1B5| CMP.b $00
|01F1B7| BCC .still_filling

|01F1B9| SEP #$20

|01F1BB| LDA.b #$07
|01F1BD| STA.w $0414

|01F1C0| INC.b $B0

;---------------------------------------------------------------------------------------------------

.still_filling
|01F1C2| REP #$30

|01F1C4| INC.w $0424

|01F1C7| LDA.w #$0688
|01F1CA| SEC
|01F1CB| SBC.b $E8
|01F1CD| SEC
|01F1CE| SBC.w $0684
|01F1D1| STA.w $0674

|01F1D4| CLC
|01F1D5| ADC.w $068A
|01F1D8| STA.b $0A

|01F1DA| JSL AdjustWaterHDMAWindow_Horizontal

|01F1DE| RTL

;===================================================================================================

FloodSwampWater_RiseInLevel:
|01F1DF| LDA.w $0424
|01F1E2| AND.b #$07
|01F1E4| BNE .dont_step

|01F1E6| LDA.w $0424
|01F1E9| AND.b #$0C
|01F1EB| LSR
|01F1EC| TAX

|01F1ED| REP #$20

|01F1EF| LDA.w $0684
|01F1F2| CMP.w $0688
|01F1F5| BEQ .not_done

;---------------------------------------------------------------------------------------------------

|01F1F7| CLC
|01F1F8| ADC.l WaterDrainSpeed.tub_fill,X
|01F1FC| STA.w $0684

|01F1FF| LDA.w $0686
|01F202| CLC
|01F203| ADC.l WaterDrainSpeed.tub_fill,X
|01F207| STA.w $0686

;---------------------------------------------------------------------------------------------------

|01F20A| REP #$10

|01F20C| LDY.w #RoomDrawObjectData.obj16B4

|01F20F| LDA.w $0688
|01F212| SEC
|01F213| SBC.w $0684
|01F216| BEQ .adjust_mouth_spill

|01F218| CMP.w #$0008
|01F21B| BNE .dont_adjust_mouth_spill

|01F21D| LDY.w #RoomDrawObjectData.obj168C

.adjust_mouth_spill
|01F220| LDA.w #$0005
|01F223| STA.b $0E

|01F225| JSL AdjustWaterVomit

;---------------------------------------------------------------------------------------------------

.dont_adjust_mouth_spill
|01F229| SEP #$30

.dont_step
|01F22B| SEP #$30

|01F22D| INC.w $0424

|01F230| JSL AdjustWaterHDMAWindow

|01F234| RTL

;---------------------------------------------------------------------------------------------------

.not_done
|01F235| REP #$30

|01F237| STZ.b $1E

|01F239| LDX.w $0440
|01F23C| BEQ .skip_a

|01F23E| LDY.w #$0000

.next_a
|01F241| LDX.w $06B8,Y

|01F244| LDA.w #$0003 ; TILETYPE 03, TILETYPE 00
|01F247| STA.l $7F2000,X

|01F24B| XBA
|01F24C| STA.l $7F2002,X

|01F250| LDA.w #$0A03 ; TILETYPE 03, TILETYPE 0A
|01F253| STA.l $7F3000,X

|01F257| XBA
|01F258| STA.l $7F3002,X

|01F25C| LDA.w #$0808 ; TILETYPE 08
|01F25F| STA.l $7F2040,X
|01F263| STA.l $7F2042,X
|01F267| STA.l $7F3040,X
|01F26B| STA.l $7F3042,X

|01F26F| STA.l $7F3080,X
|01F273| STA.l $7F3082,X
|01F277| STA.l $7F30C0,X
|01F27B| STA.l $7F30C2,X

|01F27F| INY
|01F280| INY
|01F281| CPY.w $0440
|01F284| BNE .next_a

;---------------------------------------------------------------------------------------------------

.skip_a
|01F286| LDX.w $049E
|01F289| BEQ .skip_b

|01F28B| LDY.w #$0000

.next_b
|01F28E| LDX.w $06EC,Y

|01F291| LDA.w #$0003 ; TILETYPE 03, TILETYPE 00
|01F294| STA.l $7F20C0,X

|01F298| XBA
|01F299| STA.l $7F20C2,X

|01F29D| LDA.w #$0A03 ; TILETYPE 03, TILETYPE 0A
|01F2A0| STA.l $7F30C0,X

|01F2A4| XBA
|01F2A5| STA.l $7F30C2,X

|01F2A9| LDA.w #$0808 ; TILETYPE 08
|01F2AC| STA.l $7F2080,X
|01F2B0| STA.l $7F2082,X
|01F2B4| STA.l $7F3000,X
|01F2B8| STA.l $7F3002,X

|01F2BC| STA.l $7F3040,X
|01F2C0| STA.l $7F3042,X
|01F2C4| STA.l $7F3080,X
|01F2C8| STA.l $7F3082,X

|01F2CC| INY
|01F2CD| INY
|01F2CE| CPY.w $049E
|01F2D1| BNE .next_b

;---------------------------------------------------------------------------------------------------

.skip_b
|01F2D3| STZ.b $11
|01F2D5| STZ.b $B0

|01F2D7| RTL

;===================================================================================================

UNREACHABLE_01F2D8:
|01F2D8| dw $0008, $0010, $0018, $0020
|01F2E0| dw $0000, $FFF8, $FFF8

;===================================================================================================

FloodGateTileOffsets:
|01F2E6| dw $FFF8
|01F2E8| dw $12F8
|01F2EA| dw $1348
|01F2EC| dw $1398
|01F2EE| dw $13E8

;===================================================================================================

pool FloodDam

.vectors
|01F2F0| dw FloodDam_PrepTiles_init ; 0x00
|01F2F2| dw FloodDam_PrepTiles      ; 0x01
|01F2F4| dw FloodDam_PrepTiles      ; 0x02
|01F2F6| dw FloodDam_PrepTiles      ; 0x03
|01F2F8| dw FloodDam_Expand         ; 0x04
|01F2FA| dw FloodDam_Fill           ; 0x05

endpool

;---------------------------------------------------------------------------------------------------

FloodDam:
|01F2FC| JSL PrepDamFloodHDMA

|01F300| LDA.b $B0
|01F302| ASL A
|01F303| TAX

|01F304| JMP.w (.vectors,X)

;===================================================================================================

#EXIT_01F307:
|01F307| SEP #$30

|01F309| RTL

;---------------------------------------------------------------------------------------------------

FloodDam_Expand:
|01F30A| INC.w $0470

|01F30D| LDA.w $0470
|01F310| LSR A
|01F311| STA.w $0686

|01F314| SEC
|01F315| SBC.b #$08
|01F317| STA.b $00

|01F319| LDA.w $0678
|01F31C| STA.w $0676

|01F31F| LDA.w $067A
|01F322| CLC
|01F323| ADC.b #$01
|01F325| STA.w $067A

|01F328| CLC
|01F329| ADC.b $00
|01F32B| STA.w $0684

;---------------------------------------------------------------------------------------------------

|01F32E| LDA.w $0470
|01F331| AND.b #$0F
|01F333| BNE EXIT_01F307

|01F335| LDA.w $0470
|01F338| CMP.b #$40
|01F33A| BNE .dont_advance

|01F33C| INC.b $B0

.dont_advance
|01F33E| REP #$30

|01F340| LDA.w $0470
|01F343| LSR A
|01F344| LSR A
|01F345| LSR A
|01F346| TAX

|01F347| LDA.l FloodGateTileOffsets,X
|01F34B| TAY

|01F34C| LDX.w $0472
|01F34F| STX.b $08

;---------------------------------------------------------------------------------------------------

|01F351| LDA.w #$000A
|01F354| STA.b $0E

.next
|01F356| LDA.w RoomDrawObjectData+0,Y
|01F359| STA.l $7E2000,X

|01F35D| LDA.w RoomDrawObjectData+2,Y
|01F360| STA.l $7E2080,X

|01F364| LDA.w RoomDrawObjectData+4,Y
|01F367| STA.l $7E2100,X

|01F36B| LDA.w RoomDrawObjectData+6,Y
|01F36E| STA.l $7E2180,X

|01F372| TYA
|01F373| CLC
|01F374| ADC.w #$0008
|01F377| TAY

|01F378| INX
|01F379| INX

|01F37A| DEC.b $0E
|01F37C| BNE .next

;---------------------------------------------------------------------------------------------------

|01F37E| STZ.b $0C

|01F380| LDA.w #$0003
|01F383| STA.b $0E

.add_next_stripe
|01F385| LDA.b $08
|01F387| PHA

|01F388| LDA.w #$0004
|01F38B| STA.b $0A

|01F38D| LDY.b $0C

|01F38F| LDA.w #$0881
|01F392| STA.b $06

|01F394| JSR FinalizeTranslucentOverlayStripes

|01F397| PLA
|01F398| CLC
|01F399| ADC.w #$0006
|01F39C| STA.b $08

|01F39E| DEC.b $0E
|01F3A0| BNE .add_next_stripe

|01F3A2| JMP.w RoomDraw_CloseStripes

;===================================================================================================

FloodDam_PrepTiles_init:
|01F3A5| STZ.w $045C

;===================================================================================================

FloodDam_PrepTiles:
|01F3A8| STZ.w $0418

|01F3AB| JSL BuildBG1QuadrantForUpload

|01F3AF| LDA.w $045C
|01F3B2| CLC
|01F3B3| ADC.b #$04
|01F3B5| STA.w $045C

|01F3B8| INC.b $B0

|01F3BA| RTL

;===================================================================================================

FloodDam_Fill:
|01F3BB| INC.w $0684

|01F3BE| LDA.w $0684
|01F3C1| CLC
|01F3C2| ADC.w $0676
|01F3C5| CMP.b #$E1
|01F3C7| BCC .exit

|01F3C9| STZ.w $045C

|01F3CC| STZ.b $11
|01F3CE| STZ.b $B0

|01F3D0| STZ.b $1E
|01F3D2| STZ.b $1F

|01F3D4| JSL IrisSpotlight_ResetTable

.exit
|01F3D8| RTL

;===================================================================================================

FAIL_01F3D9:
|01F3D9| STZ.w $0333

|01F3DC| RTL

;---------------------------------------------------------------------------------------------------

UNREACHABLE_01F3DD:
|01F3DD| LDA.w $0333
|01F3E0| AND.b #$F0
|01F3E2| CMP.b #$C0
|01F3E4| BNE FAIL_01F3D9

|01F3E6| LDA.b #$00
|01F3E8| BRA LightTorch.continue

;===================================================================================================

LightTorch:
|01F3EA| LDA.w $0333
|01F3ED| AND.b #$F0
|01F3EF| CMP.b #$C0
|01F3F1| BNE FAIL_01F3D9

|01F3F3| LDA.b #$C0

; Are we in ganon's room?
|01F3F5| LDY.b $A0 ; ROOM 0000
|01F3F7| BNE .continue

|01F3F9| LDA.b #$80

.continue
|01F3FB| STA.b $08
|01F3FD| STZ.b $09

;---------------------------------------------------------------------------------------------------

|01F3FF| PHA
|01F400| PHB

|01F401| LDA.b #^RoomDrawObjectData
|01F403| PHA
|01F404| PLB

|01F405| REP #$30

|01F407| LDA.w $0333
|01F40A| AND.w #$000F
|01F40D| ASL A

|01F40E| CLC ; [USELESS]
|01F40F| ADC.w $0478
|01F412| TAY

|01F413| LDA.w $0520,Y
|01F416| AND.w #$00FF
|01F419| TAX

|01F41A| LDA.w $0540,Y
|01F41D| ASL A
|01F41E| BCS .exit

|01F420| LSR A
|01F421| ORA.w #$8000
|01F424| STA.w $0540,Y

;---------------------------------------------------------------------------------------------------

; ???? this will never fail
|01F427| LDA.b $08
|01F429| BNE .start_adjustment

|01F42B| LDA.w $0540,Y
|01F42E| STA.l $7EFB40,X

.start_adjustment
|01F432| LDA.w $0540,Y
|01F435| AND.w #$3FFF
|01F438| TAX

|01F439| STX.b $08

|01F43B| PHX

|01F43C| LDY.w #RoomDrawObjectData.obj0ECA
|01F43F| JSR AdjustTorchLightingChange

|01F442| LDY.b $0C

|01F444| LDA.w #$FFFF
|01F447| STA.w $1100,Y

|01F44A| PLA

|01F44B| SEP #$30

|01F44D| AND.b #$7F
|01F44F| ASL A
|01F450| JSL CalculateArbitrarySFXPan

|01F454| ORA.b #$2A ; SFX2.2A
|01F456| STA.w $012E

|01F459| PLB

|01F45A| LDA.b #$01
|01F45C| STA.b $18

;---------------------------------------------------------------------------------------------------

|01F45E| LDA.l $7EC005
|01F462| BEQ .no_fixed_coloring

|01F464| LDA.w $045A

|01F467| INC.w $045A

|01F46A| CMP.b #$03
|01F46C| BCS .no_fixed_coloring

|01F46E| STZ.b $1D

|01F470| LDX.w $045A

|01F473| LDA.l RoomEffectFixedColors,X
|01F477| STA.l $7EC017

|01F47B| LDA.b #$0A
|01F47D| STA.b $11

|01F47F| STZ.b $B0

;---------------------------------------------------------------------------------------------------

.no_fixed_coloring
|01F481| LDA.w $0333
|01F484| AND.b #$0F
|01F486| TAX

|01F487| PLA
|01F488| STA.w $04F0,X

|01F48B| STZ.w $0333

|01F48E| RTL

;---------------------------------------------------------------------------------------------------

.exit
|01F48F| SEP #$30

|01F491| PLB
|01F492| PLA

|01F493| RTL

;===================================================================================================

ExtinguishGanonTorch_adjust_translucency:
|01F494| JSL AssertTranslucencySwap

|01F498| LDA.b #$C0
|01F49A| STA.w $0333

|01F49D| BRA ExtinguishTorch

;===================================================================================================

ExtinguishGanonTorch:
|01F49F| LDA.b #$C1
|01F4A1| STA.w $0333

;===================================================================================================

ExtinguishTorch:
|01F4A4| LDA.b #$C0
|01F4A6| STA.b $08
|01F4A8| STZ.b $09

|01F4AA| PHA
|01F4AB| PHB

|01F4AC| LDA.b #^RoomDrawObjectData
|01F4AE| PHA
|01F4AF| PLB

|01F4B0| REP #$30

|01F4B2| LDA.w $0333
|01F4B5| AND.w #$000F
|01F4B8| ASL A

|01F4B9| CLC
|01F4BA| ADC.w $0478
|01F4BD| TAY

|01F4BE| LDA.w $0520,Y
|01F4C1| AND.w #$00FF
|01F4C4| TAX

|01F4C5| LDA.w $0540,Y
|01F4C8| ASL A
|01F4C9| LSR A
|01F4CA| STA.w $0540,Y
|01F4CD| STA.l $7EFB40,X

|01F4D1| AND.w #$3FFF
|01F4D4| TAX

|01F4D5| STX.b $08

|01F4D7| LDY.w #RoomDrawObjectData.obj0EC2
|01F4DA| JSR AdjustTorchLightingChange

|01F4DD| LDY.b $0C

|01F4DF| LDA.w #$FFFF
|01F4E2| STA.w $1100,Y

;---------------------------------------------------------------------------------------------------

|01F4E5| SEP #$30

|01F4E7| PLB

|01F4E8| LDA.b #$01
|01F4EA| STA.b $18

|01F4EC| LDA.l $7EC005
|01F4F0| BEQ .no_subscreen_changes

|01F4F2| LDA.w $045A
|01F4F5| BEQ .no_subscreen_changes

|01F4F7| DEC A
|01F4F8| STA.w $045A

|01F4FB| CMP.b #$03
|01F4FD| BCS .no_subscreen_changes

|01F4FF| CMP.b #$00
|01F501| BNE .only_fixed_color

|01F503| LDA.b #$01
|01F505| STA.b $1D

;---------------------------------------------------------------------------------------------------

.only_fixed_color
|01F507| LDX.w $045A

|01F50A| LDA.l RoomEffectFixedColors,X
|01F50E| STA.l $7EC017

|01F512| LDA.b #$0A
|01F514| STA.b $11

|01F516| STZ.b $B0

;---------------------------------------------------------------------------------------------------

.no_subscreen_changes
|01F518| LDA.w $0333
|01F51B| AND.b #$0F
|01F51D| TAX

|01F51E| PLA

|01F51F| STZ.w $04F0,X
|01F522| STZ.w $0333

|01F525| RTL

;===================================================================================================

MakeNearbyWallsHighPriority_Entering:
|01F526| REP #$30

|01F528| LDA.w $0462
|01F52B| AND.w #$0003
|01F52E| ASL A
|01F52F| TAY

|01F530| LDA.w $06B0,Y
|01F533| ASL A
|01F534| SEC
|01F535| SBC.w #$0008
|01F538| TAX

|01F539| STX.w $048C
|01F53C| STX.b $08

|01F53E| PHX

;---------------------------------------------------------------------------------------------------

|01F53F| LDY.w #$0004

.next
|01F542| LDA.l $7E2000,X
|01F546| ORA.w #$2000
|01F549| STA.l $7E2000,X

|01F54D| LDA.l $7E2080,X
|01F551| ORA.w #$2000
|01F554| STA.l $7E2080,X

|01F558| LDA.l $7E2100,X
|01F55C| ORA.w #$2000
|01F55F| STA.l $7E2100,X

|01F563| LDA.l $7E2180,X
|01F567| ORA.w #$2000
|01F56A| STA.l $7E2180,X

|01F56E| INX
|01F56F| INX

|01F570| DEY
|01F571| BPL .next

;---------------------------------------------------------------------------------------------------

|01F573| JSR RoomTag_WaterOff_AdjustOverlay

|01F576| PLA
|01F577| CLC
|01F578| ADC.w #$0008
|01F57B| STA.b $08

|01F57D| JSR PrepNextTilemapUpdateDMA

|01F580| JMP.w RoomDraw_CloseStripes

;===================================================================================================

MakeNearbyWallsLowPriority:
|01F583| REP #$30

|01F585| LDX.w $048C
|01F588| STX.b $08

|01F58A| PHX

;---------------------------------------------------------------------------------------------------

|01F58B| LDY.w #$0004

.next
|01F58E| LDA.l $7E2000,X
|01F592| AND.w #$DFFF
|01F595| STA.l $7E2000,X

|01F599| LDA.l $7E2080,X
|01F59D| AND.w #$DFFF
|01F5A0| STA.l $7E2080,X

|01F5A4| LDA.l $7E2100,X
|01F5A8| AND.w #$DFFF
|01F5AB| STA.l $7E2100,X

|01F5AF| LDA.l $7E2180,X
|01F5B3| AND.w #$DFFF
|01F5B6| STA.l $7E2180,X

|01F5BA| INX
|01F5BB| INX

|01F5BC| DEY
|01F5BD| BPL .next

;---------------------------------------------------------------------------------------------------

|01F5BF| JSR RoomTag_WaterOff_AdjustOverlay

|01F5C2| PLA
|01F5C3| CLC
|01F5C4| ADC.w #$0008
|01F5C7| STA.b $08

|01F5C9| JSR PrepNextTilemapUpdateDMA

|01F5CC| JMP.w RoomDraw_CloseStripes

;===================================================================================================

pool OpenTriforceDoor

.tile_offset
|01F5CF| dw RoomDrawObjectData.obj2556
|01F5D1| dw RoomDrawObjectData.obj2596
|01F5D3| dw RoomDrawObjectData.obj25D6
|01F5D5| dw RoomDrawObjectData.obj2616

endpool

;---------------------------------------------------------------------------------------------------

#EXIT_01F5D7:
|01F5D7| RTL

;---------------------------------------------------------------------------------------------------

OpenTriforceDoor:
|01F5D8| LDA.b #$01
|01F5DA| STA.w $02E4

|01F5DD| LDA.b $C8
|01F5DF| ORA.b $C9
|01F5E1| BEQ .delay_sfx

|01F5E3| DEC.b $C8
|01F5E5| BNE EXIT_01F5D7

|01F5E7| DEC.b $C9
|01F5E9| BNE EXIT_01F5D7

|01F5EB| LDA.b #$15 ; SFX1.15
|01F5ED| STA.w $012D

|01F5F0| STZ.w $03EF
|01F5F3| STZ.b $50

;---------------------------------------------------------------------------------------------------

.delay_sfx
|01F5F5| STZ.w $02E4

|01F5F8| INC.b $B0

|01F5FA| LDA.b $B0
|01F5FC| AND.b #$03
|01F5FE| BNE EXIT_01F5D7

|01F600| REP #$30

|01F602| LDA.b $B0
|01F604| SEC
|01F605| SBC.w #$0004
|01F608| LSR A
|01F609| TAX

|01F60A| LDA.l .tile_offset,X
|01F60E| TAY

;---------------------------------------------------------------------------------------------------

|01F60F| LDX.w #$0000

.next_draw
|01F612| LDA.w RoomDrawObjectData+0,Y
|01F615| STA.l $7E21D8,X

|01F619| LDA.w RoomDrawObjectData+2,Y
|01F61C| STA.l $7E2258,X

|01F620| LDA.w RoomDrawObjectData+4,Y
|01F623| STA.l $7E22D8,X

|01F627| LDA.w RoomDrawObjectData+6,Y
|01F62A| STA.l $7E2358,X

|01F62E| TYA
|01F62F| CLC
|01F630| ADC.w #$0008
|01F633| TAY

|01F634| INX
|01F635| INX

|01F636| CPX.w #$0010
|01F639| BNE .next_draw

;---------------------------------------------------------------------------------------------------

|01F63B| LDA.w #$0008
|01F63E| STA.b $0A

|01F640| LDA.w #$0881
|01F643| STA.b $06

|01F645| LDX.w #$01D8
|01F648| STX.b $08

|01F64A| STZ.b $0C

|01F64C| LDY.b $0C
|01F64E| JSR FinalizeTranslucentOverlayStripes

|01F651| LDY.b $0C

|01F653| LDA.w #$FFFF
|01F656| STA.w $1100,Y

|01F659| LDA.b $B0
|01F65B| CMP.w #$0010
|01F65E| BNE .finished

|01F660| LDA.w #$0202 ; TILETYPE 02
|01F663| STA.l $7F216C
|01F667| STA.l $7F21AC

|01F66B| LDA.w #$0200 ; TILETYPE 00, TILETYPE 02
|01F66E| STA.l $7F2172
|01F672| STA.l $7F21B2

;---------------------------------------------------------------------------------------------------

|01F676| LDX.w #$0000
|01F679| LDA.w #$0000 ; TILETYPE 00

.next_tilemap_update
|01F67C| STA.l $7F202D,X
|01F680| STA.l $7F206D,X
|01F684| STA.l $7F20AD,X
|01F688| STA.l $7F20ED,X

|01F68C| STA.l $7F212D,X
|01F690| STA.l $7F216D,X
|01F694| STA.l $7F21AD,X

|01F698| INX
|01F699| INX
|01F69A| CPX.w #$0006
|01F69D| BNE .next_tilemap_update

;---------------------------------------------------------------------------------------------------

|01F69F| LDA.w #$FFC0
|01F6A2| STA.w $0600

|01F6A5| SEP #$20

|01F6A7| STZ.b $11
|01F6A9| STZ.b $B0

.finished
|01F6AB| SEP #$30

|01F6AD| LDA.b #$01
|01F6AF| STA.b $18

|01F6B1| RTL

;===================================================================================================

UNREACHABLE_01F6B2:
|01F6B2| LDA.w #$0004
|01F6B5| STA.b $0A

|01F6B7| LDY.b $0C

|01F6B9| LDA.w #$0080
|01F6BC| STA.b $06

|01F6BE| LDA.b $08
|01F6C0| AND.w #$003F
|01F6C3| CMP.w #$003A
|01F6C6| BCC .next

|01F6C8| INC.b $06

;---------------------------------------------------------------------------------------------------

.next
|01F6CA| LDX.b $08
|01F6CC| TXA
|01F6CD| AND.w #$0040
|01F6D0| LSR A
|01F6D1| LSR A
|01F6D2| LSR A
|01F6D3| LSR A
|01F6D4| XBA
|01F6D5| STA.b $00

|01F6D7| TXA
|01F6D8| AND.w #$303F
|01F6DB| LSR A
|01F6DC| STA.b $02

|01F6DE| TXA
|01F6DF| AND.w #$0F80
|01F6E2| LSR A
|01F6E3| LSR A
|01F6E4| ORA.b $00
|01F6E6| ORA.b $02
|01F6E8| STA.w $1100,Y

|01F6EB| LDX.w $045E

|01F6EE| LDA.w $1600,X
|01F6F1| STA.w $1104,Y

|01F6F4| LDA.b $06
|01F6F6| STA.w $1102,Y

|01F6F9| LSR A
|01F6FA| BCS .skip

;---------------------------------------------------------------------------------------------------

|01F6FC| LDA.w $1602,X
|01F6FF| STA.w $1106,Y

|01F702| LDA.w $1604,X
|01F705| STA.w $1108,Y

|01F708| LDA.w $1606,X
|01F70B| STA.w $110A,Y

|01F70E| LDA.b $08
|01F710| CLC
|01F711| ADC.w #$0080
|01F714| STA.b $08

|01F716| TXA
|01F717| CLC
|01F718| ADC.w #$0008
|01F71B| TAX

|01F71C| BRA .continue

;---------------------------------------------------------------------------------------------------

.skip
|01F71E| LDA.w $1608,X
|01F721| STA.w $1106,Y

|01F724| LDA.w $1610,X
|01F727| STA.w $1108,Y

|01F72A| LDA.w $1618,X
|01F72D| STA.w $110A,Y

|01F730| INC.b $08
|01F732| INC.b $08

|01F734| INX
|01F735| INX

;---------------------------------------------------------------------------------------------------

.continue
|01F736| STX.w $045E

|01F739| TYA
|01F73A| CLC
|01F73B| ADC.w #$000C
|01F73E| TAY

|01F73F| DEC.b $0A
|01F741| BNE .next

|01F743| RTS

;===================================================================================================

AdjustTorchLightingChange:
|01F744| LDA.w RoomDrawObjectData+0,Y
|01F747| STA.l $7E2000,X

|01F74B| LDA.w RoomDrawObjectData+2,Y
|01F74E| STA.l $7E2080,X

|01F752| LDA.w RoomDrawObjectData+4,Y
|01F755| STA.l $7E2002,X

|01F759| LDA.w RoomDrawObjectData+6,Y
|01F75C| STA.l $7E2082,X

;===================================================================================================
; TODO better name
RoomTag_WaterOff_AdjustOverlay:
|01F760| STZ.b $0C

;===================================================================================================

PrepNextTilemapUpdateDMA:
|01F762| LDA.w #$0004
|01F765| STA.b $0A

|01F767| LDY.b $0C

|01F769| LDA.w #$0880
|01F76C| STA.b $06

|01F76E| LDA.b $08
|01F770| AND.w #$003F
|01F773| CMP.w #$003A
|01F776| BCC FinalizeTranslucentOverlayStripes

|01F778| INC.b $06

;===================================================================================================

FinalizeTranslucentOverlayStripes:
.next
|01F77A| LDX.b $08

|01F77C| TXA
|01F77D| AND.w #$0040
|01F780| LSR A
|01F781| LSR A
|01F782| LSR A
|01F783| LSR A
|01F784| XBA
|01F785| STA.b $00

|01F787| TXA
|01F788| AND.w #$303F
|01F78B| LSR A
|01F78C| ORA.b $00
|01F78E| STA.b $00

|01F790| TXA
|01F791| AND.w #$0F80
|01F794| LSR A
|01F795| LSR A
|01F796| ORA.b $00
|01F798| STA.w $1100,Y

|01F79B| LDA.l $7E2000,X
|01F79F| STA.w $1104,Y

|01F7A2| LDA.b $06
|01F7A4| STA.w $1102,Y

|01F7A7| LSR A
|01F7A8| BCS .high

;---------------------------------------------------------------------------------------------------

|01F7AA| LDA.l $7E2002,X
|01F7AE| STA.w $1106,Y

|01F7B1| LDA.l $7E2004,X
|01F7B5| STA.w $1108,Y

|01F7B8| LDA.l $7E2006,X
|01F7BC| STA.w $110A,Y

|01F7BF| LDA.b $08
|01F7C1| CLC
|01F7C2| ADC.w #$0080
|01F7C5| STA.b $08

|01F7C7| BRA .continue

;---------------------------------------------------------------------------------------------------

.high
|01F7C9| LDA.l $7E2080,X
|01F7CD| STA.w $1106,Y

|01F7D0| LDA.l $7E2100,X
|01F7D4| STA.w $1108,Y

|01F7D7| LDA.l $7E2180,X
|01F7DB| STA.w $110A,Y

|01F7DE| INC.b $08
|01F7E0| INC.b $08

;---------------------------------------------------------------------------------------------------

.continue
|01F7E2| TYA
|01F7E3| CLC
|01F7E4| ADC.w #$000C
|01F7E7| TAY

|01F7E8| DEC.b $0A
|01F7EA| BNE .next

|01F7EC| STY.b $0C

|01F7EE| RTS

;===================================================================================================

pool ClearAndStripeExplodingWall

.offset
|01F7EF| dw $0004, $0008, $000C, $0010
|01F7F7| dw $0014, $0018, $001C, $0020
|01F7FF| dw $0100, $0200, $0300, $0400
|01F807| dw $0500, $0600, $0700, $0800

endpool

;---------------------------------------------------------------------------------------------------

ClearAndStripeExplodingWall:
|01F80F| LDA.w #$0080
|01F812| STA.b $06

|01F814| STZ.b $0E

|01F816| LDA.w $0454
|01F819| CLC
|01F81A| ADC.w #$0003
|01F81D| STA.b $0A

|01F81F| SEC
|01F820| SBC.w #$0006
|01F823| CMP.w #$0002
|01F826| BMI .no_adjust

|01F828| STA.b $02

|01F82A| INC.b $0E

|01F82C| LDA.w #$0003
|01F82F| STA.b $0A

.no_adjust
|01F831| LDY.b $0C

|01F833| LDX.w $0460

|01F836| LDA.w $19C0,X
|01F839| AND.w #$0002
|01F83C| BNE .next

|01F83E| INC.b $06

;---------------------------------------------------------------------------------------------------

.next
|01F840| LDX.b $08
|01F842| TXA
|01F843| AND.w #$0040

|01F846| LSR A ; /16
|01F847| LSR A
|01F848| LSR A
|01F849| LSR A

|01F84A| XBA
|01F84B| STA.b $00

|01F84D| TXA
|01F84E| AND.w #$303F
|01F851| LSR A
|01F852| ORA.b $00
|01F854| STA.b $00

|01F856| TXA
|01F857| AND.w #$0F80
|01F85A| LSR A
|01F85B| LSR A
|01F85C| ORA.b $00
|01F85E| STA.w $1100,Y

|01F861| PHA

|01F862| LDA.l $7E2000,X
|01F866| STA.w $1104,Y

|01F869| LDA.b $06
|01F86B| ORA.w #$0A00
|01F86E| STA.w $1102,Y

|01F871| LDA.b $06
|01F873| ORA.w #$0E00
|01F876| STA.w $1110,Y

|01F879| PLA

|01F87A| CLC
|01F87B| ADC.w #$04A0
|01F87E| STA.w $110E,Y

|01F881| LDA.l $7E2080,X
|01F885| STA.w $1106,Y

|01F888| LDA.l $7E2100,X
|01F88C| STA.w $1108,Y

|01F88F| LDA.l $7E2180,X
|01F893| STA.w $110A,Y

|01F896| LDA.l $7E2200,X
|01F89A| STA.w $110C,Y

|01F89D| LDA.l $7E2280,X
|01F8A1| STA.w $1112,Y

|01F8A4| LDA.l $7E2300,X
|01F8A8| STA.w $1114,Y

|01F8AB| LDA.l $7E2380,X
|01F8AF| STA.w $1116,Y

|01F8B2| LDA.l $7E2400,X
|01F8B6| STA.w $1118,Y

|01F8B9| LDA.l $7E2480,X
|01F8BD| STA.w $111A,Y

|01F8C0| LDA.l $7E2500,X
|01F8C4| STA.w $111C,Y

|01F8C7| LDA.l $7E2580,X
|01F8CB| STA.w $111E,Y

|01F8CE| INC.b $08
|01F8D0| INC.b $08

|01F8D2| TYA
|01F8D3| CLC
|01F8D4| ADC.w #$0020
|01F8D7| TAY

|01F8D8| DEC.b $0A
|01F8DA| BEQ .do_more

|01F8DC| JMP.w .next

;---------------------------------------------------------------------------------------------------

.do_more
|01F8DF| LDA.b $0E
|01F8E1| BEQ .finished

|01F8E3| DEC.b $0E

|01F8E5| LDX.b $02

|01F8E7| LDA.b $06
|01F8E9| LSR A
|01F8EA| BCS .dont_move_down

|01F8EC| TXA
|01F8ED| CLC
|01F8EE| ADC.w #$0010
|01F8F1| TAX

.dont_move_down
|01F8F2| LDA.l .offset-2,X
|01F8F6| CLC
|01F8F7| ADC.b $08
|01F8F9| STA.b $08

|01F8FB| LDA.w #$0003
|01F8FE| STA.b $0A

|01F900| JMP.w .next

;---------------------------------------------------------------------------------------------------

.finished
|01F903| STY.b $0C

|01F905| RTS

;===================================================================================================

UNREACHABLE_01F906:
|01F906| STA.b $0C

|01F908| STY.b $0E
|01F90A| STY.b $0A

|01F90C| LDY.w #$0000

.next
|01F90F| TXA
|01F910| AND.w #$0040
|01F913| LSR A
|01F914| LSR A
|01F915| LSR A
|01F916| LSR A
|01F917| XBA
|01F918| STA.b $00

|01F91A| TXA
|01F91B| AND.w #$303F
|01F91E| LSR A
|01F91F| STA.b $02

|01F921| TXA
|01F922| AND.w #$0F80
|01F925| LSR A
|01F926| LSR A
|01F927| ORA.b $00
|01F929| ORA.b $02
|01F92B| XBA
|01F92C| STA.w $1002,Y

|01F92F| LDA.w #$0100
|01F932| STA.w $1004,Y

|01F935| LDA.l $7E4000,X
|01F939| STA.w $1006,Y

|01F93C| INY ; +6
|01F93D| INY
|01F93E| INY
|01F93F| INY
|01F940| INY
|01F941| INY

|01F942| INX
|01F943| INX

|01F944| DEC.b $0E
|01F946| BNE .next

|01F948| LDA.b $0A
|01F94A| STA.b $0E

|01F94C| TXA
|01F94D| CLC
|01F94E| ADC.w #$0070
|01F951| TAX

|01F952| DEC.b $0C
|01F954| BNE .next

;---------------------------------------------------------------------------------------------------

|01F956| LDA.w #$FFFF
|01F959| STA.w $1002,Y

|01F95C| SEP #$20

|01F95E| LDA.b #$01
|01F960| STA.b $14

|01F962| REP #$20

|01F964| RTS

;===================================================================================================

DrawRoomOverlay:
.next
|01F965| REP #$30

|01F967| STZ.b $B2
|01F969| STZ.b $B4

|01F96B| LDY.b $BA

|01F96D| LDA.b [$B7],Y
|01F96F| CMP.w #$FFFF
|01F972| BEQ .done

|01F974| STA.b $00

|01F976| JSR .draw_chunk

|01F979| BRA .next

.done
|01F97B| SEP #$30

|01F97D| RTS

;---------------------------------------------------------------------------------------------------

.draw_chunk
|01F97E| SEP #$20

|01F980| LDA.b [$B7],Y
|01F982| AND.b #$FC
|01F984| STA.b $08

|01F986| INY
|01F987| INY

|01F988| LDA.b [$B7],Y
|01F98A| STA.b $04
|01F98C| STZ.b $05

|01F98E| LDA.b $01
|01F990| LSR A
|01F991| LSR A
|01F992| LSR A
|01F993| ROR.b $08
|01F995| STA.b $09

|01F997| INY
|01F998| STY.b $BA

|01F99A| REP #$20

|01F99C| LDA.b $04
|01F99E| LDX.b $08

|01F9A0| CMP.w #$00A4
|01F9A3| BNE .draw_solid_floor

;---------------------------------------------------------------------------------------------------

.draw_hole
|01F9A5| LDY.w #RoomDrawObjectData.obj05AA
|01F9A8| LDA.w RoomDrawObjectData+0,Y
|01F9AB| STA.l $7E2080,X
|01F9AF| STA.l $7E2082,X
|01F9B3| STA.l $7E2084,X
|01F9B7| STA.l $7E2086,X
|01F9BB| STA.l $7E2100,X
|01F9BF| STA.l $7E2102,X
|01F9C3| STA.l $7E2104,X
|01F9C7| STA.l $7E2106,X

|01F9CB| LDY.w #RoomDrawObjectData.obj063C
|01F9CE| LDA.w RoomDrawObjectData+2,Y
|01F9D1| STA.l $7E2000,X
|01F9D5| STA.l $7E2002,X
|01F9D9| STA.l $7E2004,X
|01F9DD| STA.l $7E2006,X

|01F9E1| LDY.w #RoomDrawObjectData.obj0642
|01F9E4| LDA.w RoomDrawObjectData+2,Y
|01F9E7| STA.l $7E2180,X
|01F9EB| STA.l $7E2182,X
|01F9EF| STA.l $7E2184,X
|01F9F3| STA.l $7E2186,X

|01F9F7| RTS

;---------------------------------------------------------------------------------------------------

.draw_solid_floor
|01F9F8| LDY.w $046A

|01F9FB| LDA.w RoomDrawObjectData+0,Y
|01F9FE| STA.l $7E2000,X
|01FA02| STA.l $7E2004,X
|01FA06| STA.l $7E2100,X
|01FA0A| STA.l $7E2104,X

|01FA0E| LDA.w RoomDrawObjectData+2,Y
|01FA11| STA.l $7E2002,X
|01FA15| STA.l $7E2006,X
|01FA19| STA.l $7E2102,X
|01FA1D| STA.l $7E2106,X

|01FA21| LDA.w RoomDrawObjectData+8,Y
|01FA24| STA.l $7E2080,X
|01FA28| STA.l $7E2084,X
|01FA2C| STA.l $7E2180,X
|01FA30| STA.l $7E2184,X

|01FA34| LDA.w RoomDrawObjectData+10,Y
|01FA37| STA.l $7E2082,X
|01FA3B| STA.l $7E2086,X
|01FA3F| STA.l $7E2182,X
|01FA43| STA.l $7E2186,X

|01FA47| RTS

;===================================================================================================

GetDoorDrawDataIndex_North_clean_door_index:
|01FA48| LDA.w $0460
|01FA4B| AND.w #$00FF
|01FA4E| STA.b $04

|01FA50| BRA GetDoorDrawDataIndex_North

;===================================================================================================

DoorStep1_North:
|01FA52| LDA.w $0460
|01FA55| PHA

|01FA56| AND.w #$000F
|01FA59| STA.b $04

|01FA5B| TXA
|01FA5C| AND.w #$1FFF
|01FA5F| CMP.w DoorTilemapPositions_NorthMiddle
|01FA62| BCC .one_sided_door

|01FA64| TXA
|01FA65| SEC
|01FA66| SBC.w #$0500
|01FA69| STA.b $08

|01FA6B| PHX

|01FA6C| LDX.w $0460

|01FA6F| LDA.w $1980,X
|01FA72| AND.w #$00FE
|01FA75| CMP.w #$0042 ; DOORTYPE 42
|01FA78| BCC .upper_layer_door

|01FA7A| LDA.b $08
|01FA7C| SEC
|01FA7D| SBC.w #$0300
|01FA80| STA.b $08

.upper_layer_door
|01FA82| LDA.w $0460
|01FA85| EOR.w #$0010
|01FA88| STA.w $0460

|01FA8B| JSR GetDoorDrawDataIndex_South
|01FA8E| JSR PrepNextTilemapUpdateDMA

|01FA91| LDY.w $0460
|01FA94| JSR LoadSingleDoorAttribute

|01FA97| PLX
|01FA98| STX.b $08

.one_sided_door
|01FA9A| PLA
|01FA9B| STA.w $0460

;===================================================================================================

GetDoorDrawDataIndex_North:
|01FA9E| LDX.w $0460

|01FAA1| LDA.w $1980,X
|01FAA4| AND.w #$00FE

|01FAA7| LDX.w $0692
|01FAAA| BEQ DrawDoorToTilemap_North

|01FAAC| CPX.w #$0004
|01FAAF| BEQ DrawDoorToTilemap_North

|01FAB1| CMP.w #$0024
|01FAB4| BEQ .advance_data_index

|01FAB6| CMP.w #$0026
|01FAB9| BEQ .advance_data_index

|01FABB| CMP.w #$0042
|01FABE| BCC .dont_advance_data_index

.advance_data_index
|01FAC0| INX
|01FAC1| INX
|01FAC2| INX
|01FAC3| INX

.dont_advance_data_index
|01FAC4| CMP.w #$0018 ; DOORTYPE 18
|01FAC7| BEQ .shutter_door

|01FAC9| CMP.w #$0044 ; DOORTYPE 44
|01FACC| BNE .not_shutter_door

.shutter_door
|01FACE| INX
|01FACF| INX

.not_shutter_door
|01FAD0| LDY.w DoorAnimGFXDataOffset_North,X

|01FAD3| BRA .continue

;===================================================================================================

#DrawDoorToTilemap_North:
|01FAD5| JSR GetDoorGraphicsIndex

|01FAD8| LDY.w DoorGFXDataOffset_North,X

.continue
|01FADB| LDX.w $0460

|01FADE| LDA.w $19A0,X
|01FAE1| TAX

|01FAE2| LDA.w #$0004
|01FAE5| STA.b $0E

;---------------------------------------------------------------------------------------------------

.next_draw
|01FAE7| LDA.w RoomDrawObjectData+0,Y
|01FAEA| STA.l $7E2000,X

|01FAEE| LDA.w RoomDrawObjectData+2,Y
|01FAF1| STA.l $7E2080,X

|01FAF5| LDA.w RoomDrawObjectData+4,Y
|01FAF8| STA.l $7E2100,X

|01FAFC| TYA
|01FAFD| CLC
|01FAFE| ADC.w #$0006
|01FB01| TAY

|01FB02| INX
|01FB03| INX

|01FB04| DEC.b $0E
|01FB06| BNE .next_draw

|01FB08| RTS

;===================================================================================================

GetDoorDrawDataIndex_South_clean_door_index:
|01FB09| LDA.w $0460
|01FB0C| AND.w #$00FF
|01FB0F| STA.b $04

|01FB11| BRA GetDoorDrawDataIndex_South

;===================================================================================================

DoorStep1_South:
|01FB13| LDA.w $0460
|01FB16| PHA

|01FB17| AND.w #$000F
|01FB1A| STA.b $04

|01FB1C| TXA
|01FB1D| AND.w #$1FFF
|01FB20| CMP.w DoorTilemapPositions_LowerLayerEntrance
|01FB23| BCS .one_sided_door

|01FB25| TXA
|01FB26| CLC
|01FB27| ADC.w #$0500
|01FB2A| STA.b $08

|01FB2C| PHX

|01FB2D| LDX.w $0460

|01FB30| LDA.w $1980,X
|01FB33| AND.w #$00FE
|01FB36| CMP.w #$0042 ; DOORTYPE 42
|01FB39| BCC .upper_layer_door

|01FB3B| LDA.b $08
|01FB3D| CLC
|01FB3E| ADC.w #$0300
|01FB41| STA.b $08

.upper_layer_door
|01FB43| LDA.w $0460
|01FB46| EOR.w #$0010
|01FB49| STA.w $0460

|01FB4C| JSR GetDoorDrawDataIndex_North
|01FB4F| JSR PrepNextTilemapUpdateDMA

|01FB52| LDY.w $0460
|01FB55| JSR LoadSingleDoorAttribute

|01FB58| PLX
|01FB59| STX.b $08

.one_sided_door
|01FB5B| PLA
|01FB5C| STA.w $0460

;===================================================================================================

GetDoorDrawDataIndex_South:
|01FB5F| LDX.w $0460

|01FB62| LDA.w $1980,X
|01FB65| AND.w #$00FE

|01FB68| LDX.w $0692
|01FB6B| BEQ DrawDoorToTilemap_South

|01FB6D| CPX.w #$0004
|01FB70| BEQ DrawDoorToTilemap_South

|01FB72| CMP.w #$0042
|01FB75| BCC .dont_advance_data_index

|01FB77| INX
|01FB78| INX
|01FB79| INX
|01FB7A| INX

.dont_advance_data_index
|01FB7B| CMP.w #$0018 ; DOORTYPE 18
|01FB7E| BEQ .shutter_door

|01FB80| CMP.w #$0044 ; DOORTYPE 44
|01FB83| BNE .not_shutter_door

.shutter_door
|01FB85| INX
|01FB86| INX

.not_shutter_door
|01FB87| LDY.w DoorAnimGFXDataOffset_South,X

|01FB8A| BRA .continue

;===================================================================================================

#DrawDoorToTilemap_South:
|01FB8C| JSR GetDoorGraphicsIndex

|01FB8F| LDY.w DoorGFXDataOffset_South,X

.continue
|01FB92| LDX.w $0460

|01FB95| LDA.w $19A0,X
|01FB98| TAX

|01FB99| LDA.w #$0004
|01FB9C| STA.b $0E

.next_draw
|01FB9E| LDA.w RoomDrawObjectData+0,Y
|01FBA1| STA.l $7E2080,X

|01FBA5| LDA.w RoomDrawObjectData+2,Y
|01FBA8| STA.l $7E2100,X

|01FBAC| LDA.w RoomDrawObjectData+4,Y
|01FBAF| STA.l $7E2180,X

|01FBB3| TYA
|01FBB4| CLC
|01FBB5| ADC.w #$0006
|01FBB8| TAY

|01FBB9| INX
|01FBBA| INX

|01FBBB| DEC.b $0E
|01FBBD| BNE .next_draw

|01FBBF| RTS

;===================================================================================================

GetDoorDrawDataIndex_West_clean_door_index:
|01FBC0| LDA.w $0460
|01FBC3| AND.w #$00FF
|01FBC6| STA.b $04

|01FBC8| BRA GetDoorDrawDataIndex_West

;===================================================================================================

DoorStep1_West:
|01FBCA| LDA.w $0460
|01FBCD| PHA

|01FBCE| AND.w #$000F
|01FBD1| STA.b $04

|01FBD3| TXA
|01FBD4| AND.w #$07FF
|01FBD7| CMP.w DoorTilemapPositions_WestMiddle
|01FBDA| BCC .one_sided_door

|01FBDC| TXA
|01FBDD| SEC
|01FBDE| SBC.w #$0010
|01FBE1| STA.b $08

|01FBE3| PHX

|01FBE4| LDX.w $0460

|01FBE7| LDA.w $1980,X
|01FBEA| AND.w #$00FE
|01FBED| CMP.w #$0042 ; DOORTYPE 42
|01FBF0| BCC .upper_layer_door

|01FBF2| LDA.b $08
|01FBF4| SEC
|01FBF5| SBC.w #$000C
|01FBF8| STA.b $08

.upper_layer_door
|01FBFA| LDA.w $0460
|01FBFD| EOR.w #$0010
|01FC00| STA.w $0460

|01FC03| JSR GetDoorDrawDataIndex_East
|01FC06| JSR PrepNextTilemapUpdateDMA

|01FC09| LDY.w $0460
|01FC0C| JSR LoadSingleDoorAttribute

|01FC0F| PLX
|01FC10| STX.b $08

.one_sided_door
|01FC12| PLA
|01FC13| STA.w $0460

;===================================================================================================

GetDoorDrawDataIndex_West:
|01FC16| LDX.w $0460

|01FC19| LDA.w $1980,X
|01FC1C| AND.w #$00FE

|01FC1F| LDX.w $0692
|01FC22| BEQ DrawDoorToTilemap_West

|01FC24| CPX.w #$0004
|01FC27| BEQ DrawDoorToTilemap_West

|01FC29| CMP.w #$0042
|01FC2C| BCC .dont_advance_data_index

|01FC2E| INX
|01FC2F| INX
|01FC30| INX
|01FC31| INX

.dont_advance_data_index
|01FC32| CMP.w #$0018 ; DOORTYPE 18
|01FC35| BEQ .shutter_door

|01FC37| CMP.w #$0044 ; DOORTYPE 44
|01FC3A| BNE .not_shutter_door

.shutter_door
|01FC3C| INX
|01FC3D| INX

.not_shutter_door
|01FC3E| LDY.w DoorAnimGFXDataOffset_West,X

|01FC41| BRA .continue

;===================================================================================================

#DrawDoorToTilemap_West:
|01FC43| JSR GetDoorGraphicsIndex

|01FC46| LDY.w DoorGFXDataOffset_West,X

.continue
|01FC49| LDX.w $0460

|01FC4C| LDA.w $19A0,X
|01FC4F| TAX

|01FC50| LDA.w #$0003
|01FC53| STA.b $0E

.next_draw
|01FC55| LDA.w RoomDrawObjectData+0,Y
|01FC58| STA.l $7E2000,X

|01FC5C| LDA.w RoomDrawObjectData+2,Y
|01FC5F| STA.l $7E2080,X

|01FC63| LDA.w RoomDrawObjectData+4,Y
|01FC66| STA.l $7E2100,X

|01FC6A| LDA.w RoomDrawObjectData+6,Y
|01FC6D| STA.l $7E2180,X

|01FC71| TYA
|01FC72| CLC
|01FC73| ADC.w #$0008
|01FC76| TAY

|01FC77| INX
|01FC78| INX

|01FC79| DEC.b $0E
|01FC7B| BNE .next_draw

|01FC7D| RTS

;===================================================================================================

GetDoorDrawDataIndex_East_clean_door_index:
|01FC7E| LDA.w $0460
|01FC81| AND.w #$00FF
|01FC84| STA.b $04

|01FC86| BRA GetDoorDrawDataIndex_East

;===================================================================================================

DoorStep1_East:
|01FC88| LDA.w $0460
|01FC8B| PHA

|01FC8C| AND.w #$000F
|01FC8F| STA.b $04

|01FC91| TXA
|01FC92| AND.w #$07FF
|01FC95| CMP.w DoorTilemapPositions_EastWall
|01FC98| BCS .one_sided_door

|01FC9A| TXA
|01FC9B| CLC
|01FC9C| ADC.w #$0010
|01FC9F| STA.b $08

|01FCA1| PHX

|01FCA2| LDX.w $0460

|01FCA5| LDA.w $1980,X
|01FCA8| AND.w #$00FE
|01FCAB| CMP.w #$0042 ; DOORTYPE 42
|01FCAE| BCC .upper_layer_door

|01FCB0| LDA.b $08
|01FCB2| CLC
|01FCB3| ADC.w #$000C
|01FCB6| STA.b $08

.upper_layer_door
|01FCB8| LDA.w $0460
|01FCBB| EOR.w #$0010
|01FCBE| STA.w $0460

|01FCC1| JSR GetDoorDrawDataIndex_West
|01FCC4| JSR PrepNextTilemapUpdateDMA

|01FCC7| LDY.w $0460
|01FCCA| JSR LoadSingleDoorAttribute

|01FCCD| PLX
|01FCCE| STX.b $08

.one_sided_door
|01FCD0| PLA
|01FCD1| STA.w $0460

;===================================================================================================

GetDoorDrawDataIndex_East:
|01FCD4| LDX.w $0460

|01FCD7| LDA.w $1980,X
|01FCDA| AND.w #$00FE

|01FCDD| LDX.w $0692
|01FCE0| BEQ DrawDoorToTilemap_East

|01FCE2| CPX.w #$0004
|01FCE5| BEQ DrawDoorToTilemap_East

|01FCE7| CMP.w #$0042
|01FCEA| BCC .dont_advance_data_index

|01FCEC| INX
|01FCED| INX
|01FCEE| INX
|01FCEF| INX

.dont_advance_data_index
|01FCF0| CMP.w #$0018 ; DOORTYPE 18
|01FCF3| BEQ .shutter_door

|01FCF5| CMP.w #$0044 ; DOORTYPE 44
|01FCF8| BNE .not_shutter_door

.shutter_door
|01FCFA| INX
|01FCFB| INX

.not_shutter_door
|01FCFC| LDY.w DoorAnimGFXDataOffset_East,X

|01FCFF| BRA .continue

;===================================================================================================

#DrawDoorToTilemap_East:
|01FD01| JSR GetDoorGraphicsIndex

|01FD04| LDY.w DoorGFXDataOffset_East,X

.continue
|01FD07| LDX.w $0460

|01FD0A| LDA.w $19A0,X
|01FD0D| TAX

|01FD0E| LDA.w #$0003
|01FD11| STA.b $0E

.next_draw
|01FD13| LDA.w RoomDrawObjectData+0,Y
|01FD16| STA.l $7E2002,X

|01FD1A| LDA.w RoomDrawObjectData+2,Y
|01FD1D| STA.l $7E2082,X

|01FD21| LDA.w RoomDrawObjectData+4,Y
|01FD24| STA.l $7E2102,X

|01FD28| LDA.w RoomDrawObjectData+6,Y
|01FD2B| STA.l $7E2182,X

|01FD2F| TYA
|01FD30| CLC
|01FD31| ADC.w #$0008
|01FD34| TAY

|01FD35| INX
|01FD36| INX

|01FD37| DEC.b $0E
|01FD39| BNE .next_draw

|01FD3B| RTS

;===================================================================================================

ClearDoorCurtainsFromTilemap:
|01FD3C| LDX.w #$0056

|01FD3F| LDY.w DoorGFXDataOffset_North,X

|01FD42| LDX.w $0460

|01FD45| LDA.w $19A0,X
|01FD48| TAX

|01FD49| LDA.w #$0004
|01FD4C| STA.b $0E

;---------------------------------------------------------------------------------------------------

.next
|01FD4E| LDA.w RoomDrawObjectData+0,Y
|01FD51| STA.l $7E2000,X

|01FD55| LDA.w RoomDrawObjectData+2,Y
|01FD58| STA.l $7E2080,X

|01FD5C| LDA.w RoomDrawObjectData+4,Y
|01FD5F| STA.l $7E2100,X

|01FD63| LDA.w RoomDrawObjectData+6,Y
|01FD66| STA.l $7E2180,X

|01FD6A| TYA
|01FD6B| CLC
|01FD6C| ADC.w #$0008
|01FD6F| TAY

|01FD70| INX
|01FD71| INX

|01FD72| DEC.b $0E
|01FD74| BNE .next

|01FD76| RTS

;===================================================================================================

GetDoorGraphicsIndex:
|01FD77| LDY.w $0460

|01FD7A| LDA.w $1980,Y
|01FD7D| AND.w #$00FE
|01FD80| TAX

|01FD81| LDY.b $04

|01FD83| LDA.w $068C
|01FD86| AND.w BitMasks,Y
|01FD89| BEQ .exit

|01FD8B| LDA.w DoorwayReplacementDoorGFX,X
|01FD8E| TAX

.exit
|01FD8F| RTS

;===================================================================================================

ClearExplodingWallFromTilemap:
|01FD90| LDY.w #RoomDrawObjectData.obj31EA
|01FD93| JSR ClearExplodingWallFromTilemap_ClearOnePair

|01FD96| LDA.w $0454
|01FD99| DEC A
|01FD9A| STA.b $0E
|01FD9C| BEQ .skip

|01FD9E| LDA.w RoomDrawObjectData+0,Y

;---------------------------------------------------------------------------------------------------

.next
|01FDA1| STA.l $7E2000,X
|01FDA5| STA.l $7E2080,X
|01FDA9| STA.l $7E2100,X
|01FDAD| STA.l $7E2180,X

|01FDB1| STA.l $7E2200,X
|01FDB5| STA.l $7E2280,X
|01FDB9| STA.l $7E2300,X
|01FDBD| STA.l $7E2380,X

|01FDC1| STA.l $7E2400,X
|01FDC5| STA.l $7E2480,X
|01FDC9| STA.l $7E2500,X
|01FDCD| STA.l $7E2580,X

|01FDD1| INX
|01FDD2| INX

|01FDD3| DEC.b $0E
|01FDD5| BNE .next

;---------------------------------------------------------------------------------------------------

.skip
|01FDD7| INY
|01FDD8| INY

;===================================================================================================

ClearExplodingWallFromTilemap_ClearOnePair:
|01FDD9| LDA.w #$0002
|01FDDC| STA.b $0E

.next
|01FDDE| LDA.w RoomDrawObjectData+0,Y
|01FDE1| STA.l $7E2000,X

|01FDE5| LDA.w RoomDrawObjectData+2,Y
|01FDE8| STA.l $7E2080,X

|01FDEC| LDA.w RoomDrawObjectData+4,Y
|01FDEF| STA.l $7E2100,X

|01FDF3| LDA.w RoomDrawObjectData+6,Y
|01FDF6| STA.l $7E2180,X

|01FDFA| LDA.w RoomDrawObjectData+8,Y
|01FDFD| STA.l $7E2200,X

|01FE01| LDA.w RoomDrawObjectData+10,Y
|01FE04| STA.l $7E2280,X

|01FE08| LDA.w RoomDrawObjectData+12,Y
|01FE0B| STA.l $7E2300,X

|01FE0F| LDA.w RoomDrawObjectData+14,Y
|01FE12| STA.l $7E2380,X

|01FE16| LDA.w RoomDrawObjectData+16,Y
|01FE19| STA.l $7E2400,X

|01FE1D| LDA.w RoomDrawObjectData+18,Y
|01FE20| STA.l $7E2480,X

|01FE24| LDA.w RoomDrawObjectData+20,Y
|01FE27| STA.l $7E2500,X

|01FE2B| LDA.w RoomDrawObjectData+22,Y
|01FE2E| STA.l $7E2580,X

|01FE32| INX
|01FE33| INX

|01FE34| TYA
|01FE35| CLC
|01FE36| ADC.w #$0018
|01FE39| TAY

|01FE3A| DEC.b $0E
|01FE3C| BNE .next

|01FE3E| RTS

;===================================================================================================

ApplyOverlayStamp:
|01FE3F| STA.b $08

|01FE41| LDA.w #$0004
|01FE44| STA.b $0A

.next_super
|01FE46| LDX.b $08

|01FE48| LDA.l $7E2000,X
|01FE4C| STA.b $00

|01FE4E| LDA.l $7E2002,X
|01FE52| STA.b $02

|01FE54| LDA.l $7E2004,X
|01FE58| STA.b $04

|01FE5A| LDA.l $7E2006,X
|01FE5E| STA.b $06

|01FE60| LDX.w #$0006

.next
|01FE63| LDA.b $00,X
|01FE65| STZ.b $00,X
|01FE67| AND.w #$03FE
|01FE6A| CMP.w #$00EE
|01FE6D| BEQ .skip

|01FE6F| CMP.w #$00FE
|01FE72| BEQ .skip

|01FE74| LDA.w #$0020 ; TILETYPE 20
|01FE77| STA.b $00,X

.skip
|01FE79| DEX
|01FE7A| DEX
|01FE7B| BPL .next

;---------------------------------------------------------------------------------------------------

|01FE7D| LDA.b $08
|01FE7F| LSR A
|01FE80| TAX

|01FE81| SEP #$20

|01FE83| LDA.b $00
|01FE85| STA.l $7F2000,X

|01FE89| LDA.b $02
|01FE8B| STA.l $7F2001,X

|01FE8F| LDA.b $04
|01FE91| STA.l $7F2002,X

|01FE95| LDA.b $06
|01FE97| STA.l $7F2003,X

|01FE9B| REP #$20

|01FE9D| LDA.b $08
|01FE9F| CLC
|01FEA0| ADC.w #$0080
|01FEA3| STA.b $08

|01FEA5| DEC.b $0A
|01FEA7| BNE .next_super

|01FEA9| RTS

;===================================================================================================
; FREE ROM: 0x06
;===================================================================================================
NULL_01FEAA:
|01FEAA| db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

ApplyGrayscaleFixed_Incremental:
|01FEB0| LDA.b $9C
|01FEB2| AND.b #$1F
|01FEB4| CMP.l $7EC017
|01FEB8| BEQ EXIT_01FED1

|01FEBA| DEC A
|01FEBB| BCS .darkening

|01FEBD| INC A
|01FEBE| INC A

.darkening
|01FEBF| STA.b $00

;===================================================================================================

; Enters with A
ApplyGrayscaleFixed_Parameterized:
|01FEC1| ORA.b #$20
|01FEC3| STA.b $9C

|01FEC5| AND.b #$1F
|01FEC7| ORA.b #$40
|01FEC9| STA.b $9D

|01FECB| AND.b #$1F
|01FECD| ORA.b #$80
|01FECF| STA.b $9E

;---------------------------------------------------------------------------------------------------

#EXIT_01FED1:
|01FED1| RTL

;===================================================================================================

HandleZapMosaic:
|01FED2| LDA.w $0647
|01FED5| BNE .negative

|01FED7| LDA.l $7EC011
|01FEDB| CLC
|01FEDC| ADC.b #$10
|01FEDE| CMP.b #$C0
|01FEE0| BNE .set

|01FEE2| INC.w $0647
|01FEE5| BRA .set

.negative
|01FEE7| LDA.l $7EC011
|01FEEB| SEC
|01FEEC| SBC.b #$10
|01FEEE| BNE .set

;===================================================================================================

#ResetZapMosaic:
|01FEF0| STZ.w $0647

.set
|01FEF3| STA.l $7EC011

|01FEF7| LDA.b #$09
|01FEF9| STA.b $94

|01FEFB| LDA.l $7EC011
|01FEFF| LSR A
|01FF00| ORA.b #$03
|01FF02| STA.b $95

|01FF04| RTL

;===================================================================================================

HandleLayerChange:
|01FF05| LDA.b #$01
|01FF07| STA.w $0476

|01FF0A| LDA.w $044A ; EG0
|01FF0D| BNE .dont_change_rooms

; !WEIRD layer change code!
|01FF0F| LDA.b $A0
|01FF11| CLC
|01FF12| ADC.b #$10
|01FF14| STA.b $A0

.dont_change_rooms
|01FF16| LDA.w $044A
|01FF19| CMP.b #$02 ; weak EG
|01FF1B| BEQ .dont_swap_layer

|01FF1D| LDA.b #$01
|01FF1F| STA.b $EE

.dont_swap_layer
|01FF21| STZ.w $047A

|01FF24| JML SetAndSaveVisitedQuadrantFlags

;===================================================================================================

CacheCameraProperties:
|01FF28| REP #$20

|01FF2A| LDA.b $E2
|01FF2C| STA.l $7EC180

|01FF30| LDA.b $E8
|01FF32| STA.l $7EC182

|01FF36| LDA.b $20
|01FF38| STA.l $7EC184

|01FF3C| LDA.b $22
|01FF3E| STA.l $7EC186

;---------------------------------------------------------------------------------------------------

|01FF42| LDA.w $0600
|01FF45| STA.l $7EC188

|01FF49| LDA.w $0604
|01FF4C| STA.l $7EC18A

|01FF50| LDA.w $0608
|01FF53| STA.l $7EC18C

|01FF57| LDA.w $060C
|01FF5A| STA.l $7EC18E

|01FF5E| LDA.w $0610
|01FF61| STA.l $7EC190

|01FF65| LDA.w $0612
|01FF68| STA.l $7EC192

|01FF6C| LDA.w $0614
|01FF6F| STA.l $7EC194

|01FF73| LDA.w $0616
|01FF76| STA.l $7EC196

|01FF7A| LDA.w $0618
|01FF7D| STA.l $7EC198

|01FF81| LDA.w $061C
|01FF84| STA.l $7EC19A

|01FF88| LDA.b $A6
|01FF8A| STA.l $7EC19C

|01FF8E| LDA.b $A9
|01FF90| STA.l $7EC19E

;---------------------------------------------------------------------------------------------------

|01FF94| SEP #$20

|01FF96| LDA.b $2F
|01FF98| STA.l $7EC1A6

|01FF9C| LDA.b $EE
|01FF9E| STA.l $7EC1A7

|01FFA2| LDA.w $0476
|01FFA5| STA.l $7EC1A8

|01FFA9| LDA.b $6C
|01FFAB| STA.l $7EC1A9

|01FFAF| LDA.b $A4
|01FFB1| STA.l $7EC1AA

|01FFB5| RTL

;===================================================================================================

CheckAbilityToSwim:
|01FFB6| LDA.w $02E0
|01FFB9| BNE .bunny

|01FFBB| LDA.l $7EF356
|01FFBF| BNE .exit

.bunny
|01FFC1| LDA.l $7EF357
|01FFC5| BEQ .no_pearl

|01FFC7| STZ.w $02E0

.no_pearl
|01FFCA| LDA.b #$0C
|01FFCC| STA.b $4B

|01FFCE| LDA.b #$2A

|01FFD0| LDX.b $1B
|01FFD2| BEQ .outdoors

|01FFD4| LDA.b #$14

.outdoors
|01FFD6| STA.b $11

.exit
|01FFD8| RTL

;===================================================================================================
; In practice, this is only ever called from the overworld.
;===================================================================================================
TakeDamageFromPit:
|01FFD9| LDA.b #$0C
|01FFDB| STA.b $4B

|01FFDD| LDA.b #$2A

|01FFDF| LDX.b $1B
|01FFE1| BEQ .outside

|01FFE3| LDA.b #$14

.outside
|01FFE5| STA.b $11

|01FFE7| LDA.l $7EF36D
|01FFEB| SEC
|01FFEC| SBC.b #$08
|01FFEE| STA.l $7EF36D

; die if too much health
|01FFF2| CMP.b #$A8
|01FFF4| BCC .exit

|01FFF6| LDA.b #$00
|01FFF8| STA.l $7EF36D

.exit
|01FFFC| RTL

;===================================================================================================
; FREE ROM: 0x03
;===================================================================================================
NULL_01FFFD:
|01FFFD| db $FF, $FF, $FF

;===================================================================================================

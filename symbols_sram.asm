;===================================================================================================
; Save data is located in 2 separate locations in SRAM:
;   File 1: $70:0000   Mirror: $70:0F00
;   File 2: $70:0500   Mirror: $70:1400
;   File 3: $70:0A00   Mirror: $70:1900
; The main location is what gets brought down to WRAM at $7E:F000.
; The mirrors are used if an invalid checksum is found on the main copy.
; If both are invalid, the file is deleted.
;
; Use of unused SRAM is not recommended for general purpose memory
; As it will be kept across game sessions
;===================================================================================================
; The following ASCII art is included because MathOnNapkins likes it:
;---------------------------------------------------------------------------------------------------
;                                                                                                   
;             /\/\/\/  ||\\\\ ||     |||\\      /\       ||||||||||||       /\                      
;                 /|   ||     ||     //  \\    //\\        || || ||        //\\                     
;                /|    ||\\   ||     //   ||  //  \\       || || ||       ///\\\                    
;               /|     ||//   ||     //   || //||||\\      || || ||      /\    /\                   
;              /|      ||     ||     //  // //      \\     || || ||     //\\  //\\                  
;             /\/\/\/  ||//// ||//// |||// //        \\  ||||||||||||  ///\\\///\\\                 
;                                                                                                   
;               <^^>   <^^>         ****  ****         ****  ****         ****  ****                
;              <<<##^^^^##>>>     ***  ****  ***     ***  ****  ***     ***  ****  ***              
;             <<############>>   **            **   **            **   **            **             
;             <<############>>   **            **   **            **   **            **             
;              <<##########>>     **          **     **          **     **          **              
;               <<########>>       **        **       **        **       **        **               
;                <<######>>         **      **         **      **         **      **                
;                  <<##>>             **  **             **  **             **  **                  
;                   <<>>               ****               ****               ****                   
;                    <>                 **                 **                 **                    
;                                                                                                   
;===================================================================================================
FILE1MAIN       = $700000
FILE2MAIN       = $700500
FILE3MAIN       = $700A00
FILE1COPY       = $700F00
FILE2COPY       = $701400
FILE3COPY       = $701900

; 0x01FE free bytes of SRAM
FREESRAM        = $701E00

; Used to find the correct save file offset to use when transferring between SRAM and WRAM.
SRAMOFF         = $701FFE

;===================================================================================================
; Documention is for WRAM, as SRAM is not directly accessed except when
; verifying the file
; loading/saving
; Do note that the offset into any particular block of save is data is
; just equal to the bottom 3 nibbles of the WRAM address.
;   e.g. $7E:F340 is an offset of +$0340 into the block
;===================================================================================================
; Room flag data
; dddd bkut sehc qqqq
;   d - door opened
;   b - boss kill / heart container
;   k - key / heart piece / crystal (unused for crystals, but prevents them from dropping)
;   u - 2nd key / heart piece
;   t - chest 4 / rupee floor / swamp drains / bombable floor / mire wall
;   s - chest 3 / pod or desert wall
;   e - chest 2
;   h - chest 1
;   c - chest 0
;   q - quadrant visits
;       nw, ne, sw, se
RMFLG000        = $7EF000
RMFLG001        = $7EF002
RMFLG002        = $7EF004
RMFLG003        = $7EF006
RMFLG004        = $7EF008
RMFLG005        = $7EF00A
RMFLG006        = $7EF00C
RMFLG007        = $7EF00E
RMFLG008        = $7EF010
RMFLG009        = $7EF012
RMFLG00A        = $7EF014
RMFLG00B        = $7EF016
RMFLG00C        = $7EF018
RMFLG00D        = $7EF01A
RMFLG00E        = $7EF01C
RMFLG00F        = $7EF01E
RMFLG010        = $7EF020
RMFLG011        = $7EF022
RMFLG012        = $7EF024
RMFLG013        = $7EF026
RMFLG014        = $7EF028
RMFLG015        = $7EF02A
RMFLG016        = $7EF02C
RMFLG017        = $7EF02E
RMFLG018        = $7EF030
RMFLG019        = $7EF032
RMFLG01A        = $7EF034
RMFLG01B        = $7EF036
RMFLG01C        = $7EF038
RMFLG01D        = $7EF03A
RMFLG01E        = $7EF03C
RMFLG01F        = $7EF03E
RMFLG020        = $7EF040
RMFLG021        = $7EF042
RMFLG022        = $7EF044
RMFLG023        = $7EF046
RMFLG024        = $7EF048
RMFLG025        = $7EF04A
RMFLG026        = $7EF04C
RMFLG027        = $7EF04E
RMFLG028        = $7EF050
RMFLG029        = $7EF052
RMFLG02A        = $7EF054
RMFLG02B        = $7EF056
RMFLG02C        = $7EF058
RMFLG02D        = $7EF05A
RMFLG02E        = $7EF05C
RMFLG02F        = $7EF05E
RMFLG030        = $7EF060
RMFLG031        = $7EF062
RMFLG032        = $7EF064
RMFLG033        = $7EF066
RMFLG034        = $7EF068
RMFLG035        = $7EF06A
RMFLG036        = $7EF06C
RMFLG037        = $7EF06E
RMFLG038        = $7EF070
RMFLG039        = $7EF072
RMFLG03A        = $7EF074
RMFLG03B        = $7EF076
RMFLG03C        = $7EF078
RMFLG03D        = $7EF07A
RMFLG03E        = $7EF07C
RMFLG03F        = $7EF07E
RMFLG040        = $7EF080
RMFLG041        = $7EF082
RMFLG042        = $7EF084
RMFLG043        = $7EF086
RMFLG044        = $7EF088
RMFLG045        = $7EF08A
RMFLG046        = $7EF08C
RMFLG047        = $7EF08E
RMFLG048        = $7EF090
RMFLG049        = $7EF092
RMFLG04A        = $7EF094
RMFLG04B        = $7EF096
RMFLG04C        = $7EF098
RMFLG04D        = $7EF09A
RMFLG04E        = $7EF09C
RMFLG04F        = $7EF09E
RMFLG050        = $7EF0A0
RMFLG051        = $7EF0A2
RMFLG052        = $7EF0A4
RMFLG053        = $7EF0A6
RMFLG054        = $7EF0A8
RMFLG055        = $7EF0AA
RMFLG056        = $7EF0AC
RMFLG057        = $7EF0AE
RMFLG058        = $7EF0B0
RMFLG059        = $7EF0B2
RMFLG05A        = $7EF0B4
RMFLG05B        = $7EF0B6
RMFLG05C        = $7EF0B8
RMFLG05D        = $7EF0BA
RMFLG05E        = $7EF0BC
RMFLG05F        = $7EF0BE
RMFLG060        = $7EF0C0
RMFLG061        = $7EF0C2
RMFLG062        = $7EF0C4
RMFLG063        = $7EF0C6
RMFLG064        = $7EF0C8
RMFLG065        = $7EF0CA
RMFLG066        = $7EF0CC
RMFLG067        = $7EF0CE
RMFLG068        = $7EF0D0
RMFLG069        = $7EF0D2
RMFLG06A        = $7EF0D4
RMFLG06B        = $7EF0D6
RMFLG06C        = $7EF0D8
RMFLG06D        = $7EF0DA
RMFLG06E        = $7EF0DC
RMFLG06F        = $7EF0DE
RMFLG070        = $7EF0E0
RMFLG071        = $7EF0E2
RMFLG072        = $7EF0E4
RMFLG073        = $7EF0E6
RMFLG074        = $7EF0E8
RMFLG075        = $7EF0EA
RMFLG076        = $7EF0EC
RMFLG077        = $7EF0EE
RMFLG078        = $7EF0F0
RMFLG079        = $7EF0F2
RMFLG07A        = $7EF0F4
RMFLG07B        = $7EF0F6
RMFLG07C        = $7EF0F8
RMFLG07D        = $7EF0FA
RMFLG07E        = $7EF0FC
RMFLG07F        = $7EF0FE
RMFLG080        = $7EF100
RMFLG081        = $7EF102
RMFLG082        = $7EF104
RMFLG083        = $7EF106
RMFLG084        = $7EF108
RMFLG085        = $7EF10A
RMFLG086        = $7EF10C
RMFLG087        = $7EF10E
RMFLG088        = $7EF110
RMFLG089        = $7EF112
RMFLG08A        = $7EF114
RMFLG08B        = $7EF116
RMFLG08C        = $7EF118
RMFLG08D        = $7EF11A
RMFLG08E        = $7EF11C
RMFLG08F        = $7EF11E
RMFLG090        = $7EF120
RMFLG091        = $7EF122
RMFLG092        = $7EF124
RMFLG093        = $7EF126
RMFLG094        = $7EF128
RMFLG095        = $7EF12A
RMFLG096        = $7EF12C
RMFLG097        = $7EF12E
RMFLG098        = $7EF130
RMFLG099        = $7EF132
RMFLG09A        = $7EF134
RMFLG09B        = $7EF136
RMFLG09C        = $7EF138
RMFLG09D        = $7EF13A
RMFLG09E        = $7EF13C
RMFLG09F        = $7EF13E
RMFLG0A0        = $7EF140
RMFLG0A1        = $7EF142
RMFLG0A2        = $7EF144
RMFLG0A3        = $7EF146
RMFLG0A4        = $7EF148
RMFLG0A5        = $7EF14A
RMFLG0A6        = $7EF14C
RMFLG0A7        = $7EF14E
RMFLG0A8        = $7EF150
RMFLG0A9        = $7EF152
RMFLG0AA        = $7EF154
RMFLG0AB        = $7EF156
RMFLG0AC        = $7EF158
RMFLG0AD        = $7EF15A
RMFLG0AE        = $7EF15C
RMFLG0AF        = $7EF15E
RMFLG0B0        = $7EF160
RMFLG0B1        = $7EF162
RMFLG0B2        = $7EF164
RMFLG0B3        = $7EF166
RMFLG0B4        = $7EF168
RMFLG0B5        = $7EF16A
RMFLG0B6        = $7EF16C
RMFLG0B7        = $7EF16E
RMFLG0B8        = $7EF170
RMFLG0B9        = $7EF172
RMFLG0BA        = $7EF174
RMFLG0BB        = $7EF176
RMFLG0BC        = $7EF178
RMFLG0BD        = $7EF17A
RMFLG0BE        = $7EF17C
RMFLG0BF        = $7EF17E
RMFLG0C0        = $7EF180
RMFLG0C1        = $7EF182
RMFLG0C2        = $7EF184
RMFLG0C3        = $7EF186
RMFLG0C4        = $7EF188
RMFLG0C5        = $7EF18A
RMFLG0C6        = $7EF18C
RMFLG0C7        = $7EF18E
RMFLG0C8        = $7EF190
RMFLG0C9        = $7EF192
RMFLG0CA        = $7EF194
RMFLG0CB        = $7EF196
RMFLG0CC        = $7EF198
RMFLG0CD        = $7EF19A
RMFLG0CE        = $7EF19C
RMFLG0CF        = $7EF19E
RMFLG0D0        = $7EF1A0
RMFLG0D1        = $7EF1A2
RMFLG0D2        = $7EF1A4
RMFLG0D3        = $7EF1A6
RMFLG0D4        = $7EF1A8
RMFLG0D5        = $7EF1AA
RMFLG0D6        = $7EF1AC
RMFLG0D7        = $7EF1AE
RMFLG0D8        = $7EF1B0
RMFLG0D9        = $7EF1B2
RMFLG0DA        = $7EF1B4
RMFLG0DB        = $7EF1B6
RMFLG0DC        = $7EF1B8
RMFLG0DD        = $7EF1BA
RMFLG0DE        = $7EF1BC
RMFLG0DF        = $7EF1BE
RMFLG0E0        = $7EF1C0
RMFLG0E1        = $7EF1C2
RMFLG0E2        = $7EF1C4
RMFLG0E3        = $7EF1C6
RMFLG0E4        = $7EF1C8
RMFLG0E5        = $7EF1CA
RMFLG0E6        = $7EF1CC
RMFLG0E7        = $7EF1CE
RMFLG0E8        = $7EF1D0
RMFLG0E9        = $7EF1D2
RMFLG0EA        = $7EF1D4
RMFLG0EB        = $7EF1D6
RMFLG0EC        = $7EF1D8
RMFLG0ED        = $7EF1DA
RMFLG0EE        = $7EF1DC
RMFLG0EF        = $7EF1DE
RMFLG0F0        = $7EF1E0
RMFLG0F1        = $7EF1E2
RMFLG0F2        = $7EF1E4
RMFLG0F3        = $7EF1E6
RMFLG0F4        = $7EF1E8
RMFLG0F5        = $7EF1EA
RMFLG0F6        = $7EF1EC
RMFLG0F7        = $7EF1EE
RMFLG0F8        = $7EF1F0
RMFLG0F9        = $7EF1F2
RMFLG0FA        = $7EF1F4
RMFLG0FB        = $7EF1F6
RMFLG0FC        = $7EF1F8
RMFLG0FD        = $7EF1FA
RMFLG0FE        = $7EF1FC
RMFLG0FF        = $7EF1FE
RMFLG100        = $7EF200
RMFLG101        = $7EF202
RMFLG102        = $7EF204
RMFLG103        = $7EF206
RMFLG104        = $7EF208
RMFLG105        = $7EF20A
RMFLG106        = $7EF20C
RMFLG107        = $7EF20E
RMFLG108        = $7EF210
RMFLG109        = $7EF212
RMFLG10A        = $7EF214
RMFLG10B        = $7EF216
RMFLG10C        = $7EF218
RMFLG10D        = $7EF21A
RMFLG10E        = $7EF21C
RMFLG10F        = $7EF21E
RMFLG110        = $7EF220
RMFLG111        = $7EF222
RMFLG112        = $7EF224
RMFLG113        = $7EF226
RMFLG114        = $7EF228
RMFLG115        = $7EF22A
RMFLG116        = $7EF22C
RMFLG117        = $7EF22E
RMFLG118        = $7EF230
RMFLG119        = $7EF232
RMFLG11A        = $7EF234
RMFLG11B        = $7EF236
RMFLG11C        = $7EF238
RMFLG11D        = $7EF23A
RMFLG11E        = $7EF23C
RMFLG11F        = $7EF23E
RMFLG120        = $7EF240
RMFLG121        = $7EF242
RMFLG122        = $7EF244
RMFLG123        = $7EF246
RMFLG124        = $7EF248
RMFLG125        = $7EF24A
RMFLG126        = $7EF24C
RMFLG127        = $7EF24E
RMFLG128        = $7EF250
RMFLG129        = $7EF252
RMFLG12A        = $7EF254
RMFLG12B        = $7EF256
RMFLG12C        = $7EF258
RMFLG12D        = $7EF25A
RMFLG12E        = $7EF25C
RMFLG12F        = $7EF25E
RMFLG130        = $7EF260
RMFLG131        = $7EF262
RMFLG132        = $7EF264
RMFLG133        = $7EF266
RMFLG134        = $7EF268
RMFLG135        = $7EF26A
RMFLG136        = $7EF26C
RMFLG137        = $7EF26E
RMFLG138        = $7EF270
RMFLG139        = $7EF272
RMFLG13A        = $7EF274
RMFLG13B        = $7EF276
RMFLG13C        = $7EF278
RMFLG13D        = $7EF27A
RMFLG13E        = $7EF27C
RMFLG13F        = $7EF27E

;===================================================================================================
; Overworld data
; .io. ..b.
;   i - item collected / lightning barrier destroyed
;   o - overlay active
;   b - bomb wall opened
;===================================================================================================
OWFLG00         = $7EF280
OWFLG01         = $7EF281
OWFLG02         = $7EF282
OWFLG03         = $7EF283
OWFLG04         = $7EF284
OWFLG05         = $7EF285
OWFLG06         = $7EF286
OWFLG07         = $7EF287
OWFLG08         = $7EF288
OWFLG09         = $7EF289
OWFLG0A         = $7EF28A
OWFLG0B         = $7EF28B
OWFLG0C         = $7EF28C
OWFLG0D         = $7EF28D
OWFLG0E         = $7EF28E
OWFLG0F         = $7EF28F
OWFLG10         = $7EF290
OWFLG11         = $7EF291
OWFLG12         = $7EF292
OWFLG13         = $7EF293
OWFLG14         = $7EF294
OWFLG15         = $7EF295
OWFLG16         = $7EF296
OWFLG17         = $7EF297
OWFLG18         = $7EF298
OWFLG19         = $7EF299
OWFLG1A         = $7EF29A
OWFLG1B         = $7EF29B
OWFLG1C         = $7EF29C
OWFLG1D         = $7EF29D
OWFLG1E         = $7EF29E
OWFLG1F         = $7EF29F
OWFLG20         = $7EF2A0
OWFLG21         = $7EF2A1
OWFLG22         = $7EF2A2
OWFLG23         = $7EF2A3
OWFLG24         = $7EF2A4
OWFLG25         = $7EF2A5
OWFLG26         = $7EF2A6
OWFLG27         = $7EF2A7
OWFLG28         = $7EF2A8
OWFLG29         = $7EF2A9
OWFLG2A         = $7EF2AA
OWFLG2B         = $7EF2AB
OWFLG2C         = $7EF2AC
OWFLG2D         = $7EF2AD
OWFLG2E         = $7EF2AE
OWFLG2F         = $7EF2AF
OWFLG30         = $7EF2B0
OWFLG31         = $7EF2B1
OWFLG32         = $7EF2B2
OWFLG33         = $7EF2B3
OWFLG34         = $7EF2B4
OWFLG35         = $7EF2B5
OWFLG36         = $7EF2B6
OWFLG37         = $7EF2B7
OWFLG38         = $7EF2B8
OWFLG39         = $7EF2B9
OWFLG3A         = $7EF2BA
OWFLG3B         = $7EF2BB
OWFLG3C         = $7EF2BC
OWFLG3D         = $7EF2BD
OWFLG3E         = $7EF2BE
OWFLG3F         = $7EF2BF
OWFLG40         = $7EF2C0
OWFLG41         = $7EF2C1
OWFLG42         = $7EF2C2
OWFLG43         = $7EF2C3
OWFLG44         = $7EF2C4
OWFLG45         = $7EF2C5
OWFLG46         = $7EF2C6
OWFLG47         = $7EF2C7
OWFLG48         = $7EF2C8
OWFLG49         = $7EF2C9
OWFLG4A         = $7EF2CA
OWFLG4B         = $7EF2CB
OWFLG4C         = $7EF2CC
OWFLG4D         = $7EF2CD
OWFLG4E         = $7EF2CE
OWFLG4F         = $7EF2CF
OWFLG50         = $7EF2D0
OWFLG51         = $7EF2D1
OWFLG52         = $7EF2D2
OWFLG53         = $7EF2D3
OWFLG54         = $7EF2D4
OWFLG55         = $7EF2D5
OWFLG56         = $7EF2D6
OWFLG57         = $7EF2D7
OWFLG58         = $7EF2D8
OWFLG59         = $7EF2D9
OWFLG5A         = $7EF2DA
OWFLG5B         = $7EF2DB
OWFLG5C         = $7EF2DC
OWFLG5D         = $7EF2DD
OWFLG5E         = $7EF2DE
OWFLG5F         = $7EF2DF
OWFLG60         = $7EF2E0
OWFLG61         = $7EF2E1
OWFLG62         = $7EF2E2
OWFLG63         = $7EF2E3
OWFLG64         = $7EF2E4
OWFLG65         = $7EF2E5
OWFLG66         = $7EF2E6
OWFLG67         = $7EF2E7
OWFLG68         = $7EF2E8
OWFLG69         = $7EF2E9
OWFLG6A         = $7EF2EA
OWFLG6B         = $7EF2EB
OWFLG6C         = $7EF2EC
OWFLG6D         = $7EF2ED
OWFLG6E         = $7EF2EE
OWFLG6F         = $7EF2EF
OWFLG70         = $7EF2F0
OWFLG71         = $7EF2F1
OWFLG72         = $7EF2F2
OWFLG73         = $7EF2F3
OWFLG74         = $7EF2F4
OWFLG75         = $7EF2F5
OWFLG76         = $7EF2F6
OWFLG77         = $7EF2F7
OWFLG78         = $7EF2F8
OWFLG79         = $7EF2F9
OWFLG7A         = $7EF2FA
OWFLG7B         = $7EF2FB
OWFLG7C         = $7EF2FC
OWFLG7D         = $7EF2FD
OWFLG7E         = $7EF2FE
OWFLG7F         = $7EF2FF

; Most of these special screens aren't actually reachable
OWFLG80         = $7EF300
OWFLG81         = $7EF301

; Completely unused
; but written to when splashing in special overworld
; because of some shared code
OWFLG82         = $7EF302
OWFLG83         = $7EF303
OWFLG84         = $7EF304
OWFLG85         = $7EF305
OWFLG86         = $7EF306
OWFLG87         = $7EF307
OWFLG88         = $7EF308
OWFLG89         = $7EF309
OWFLG8A         = $7EF30A
OWFLG8B         = $7EF30B
OWFLG8C         = $7EF30C
OWFLG8D         = $7EF30D
OWFLG8E         = $7EF30E
OWFLG8F         = $7EF30F
OWFLG90         = $7EF310
OWFLG91         = $7EF311
OWFLG92         = $7EF312
OWFLG93         = $7EF313
OWFLG94         = $7EF314
OWFLG95         = $7EF315
OWFLG96         = $7EF316
OWFLG97         = $7EF317
OWFLG98         = $7EF318
OWFLG99         = $7EF319
OWFLG9A         = $7EF31A
OWFLG9B         = $7EF31B
OWFLG9C         = $7EF31C
OWFLG9D         = $7EF31D
OWFLG9E         = $7EF31E
OWFLG9F         = $7EF31F

;===================================================================================================
; Items
;===================================================================================================
; 0x00 - Nothing
; 0x01 - Bow
; 0x02 - Bow and arrows
; 0x03 - Silver bow
; 0x04 - Silver bow and arrows
; Picking the arrow and nonarrow versions is done by the HUD draw routines
BOW             = $7EF340

; 0x00 - Nothing
; 0x01 - Blue boomerang
; 0x02 - Red boomerang
BOOMER          = $7EF341

; 0x00 - Nothing
; 0x01 - Hookshot
HOOKSHOT        = $7EF342

; Number of bombs
BOMBS           = $7EF343

; 0x00 - Nothing
; 0x01 - Mushroom
; 0x02 - Powder
SHROOM          = $7EF344

; 0x00 - Nothing
; 0x01 - Fire rod
FIREROD         = $7EF345

; 0x00 - Nothing
; 0x01 - Ice rod
ICEROD          = $7EF346

; 0x00 - Nothing
; 0x01 - Bombos medallion
BOMBOS          = $7EF347

; 0x00 - Nothing
; 0x01 - Ether medallion
ETHER           = $7EF348

; 0x00 - Nothing
; 0x01 - Quake medallion
QUAKE           = $7EF349

; 0x00 - Nothing
; 0x01 - Lamp
LAMP            = $7EF34A

; 0x00 - Nothing
; 0x01 - Magic hammer
HAMMER          = $7EF34B

; 0x00 - Nothing
; 0x01 - Shovel
; 0x02 - Inactive flute
; 0x03 - Active flute
FLUTE           = $7EF34C

; 0x00 - Nothing
; 0x01 - Bug catching net
BUGNET          = $7EF34D

; 0x00 - Nothing
; 0x01 - Book of Mudora
BOOK            = $7EF34E

; 0x00 - Nothing
; Other values indicate the index of the currently selected bottle
BOTSEL          = $7EF34F

; 0x00 - Nothing
; 0x01 - Cane of Somaria
SOMARIA         = $7EF350

; 0x00 - Nothing
; 0x01 - Cane of Byrna
BYRNA           = $7EF351

; 0x00 - Nothing
; 0x01 - Magic cape
CAPE            = $7EF352

; 0x00 - Nothing
; 0x01 - Map (works like mirror)
; 0x02 - Mirror
; 0x03 - Deleted triforce item
MIRROR          = $7EF353

; 0x00 - Lift 1 (nothing)
; 0x01 - Lift 2 (power glove)
; 0x02 - Lift 3 (titan's mitt)
GLOVES          = $7EF354

; 0x00 - Nothing
; 0x01 - Pegasus boots
; bit 2 of $7E:F379 also needs to be set to actually dash
BOOTS           = $7EF355

; 0x00 - Nothing
; 0x01 - Zora's flippers
FLIPPERS        = $7EF356

; 0x00 - Nothing
; 0x01 - Moon pearl
PEARL           = $7EF357

; Appears to be for nothing
UNUSED_7EF358   = $7EF358

; 0x00 - Nothing
; 0x01 - Fighter sword
; 0x02 - Master sword
; 0x03 - Tempered sword
; 0x04 - Golden sword
; 0xFF - Set when sword is handed in to smithy
SWORD           = $7EF359

; 0x00 - Nothing
; 0x01 - Fighter shield
; 0x02 - Fire shield
; 0x03 - Mirror shield
SHIELD          = $7EF35A

; 0x00 - Green jerkin
; 0x01 - Blue mail
; 0x02 - Red mail
ARMOR           = $7EF35B

; 0x00 - Nothing
; 0x01 - Mushroom (unused)
; 0x02 - Empty bottle
; 0x03 - Red potion
; 0x04 - Green potion
; 0x05 - Blue potion
; 0x06 - Fairy
; 0x07 - Bee
; 0x08 - Good bee
BOTTLE1         = $7EF35C
BOTTLE2         = $7EF35D
BOTTLE3         = $7EF35E
BOTTLE4         = $7EF35F

; Number of rupees you have
; RUPEEDISP will be incremented or decremented until it reaches this value
RUPEES          = $7EF360

; Rupee count displayed on the HUD
RUPEEDISP       = $7EF362

; Bitfields for ownership of various dungeon items
;   SET 2        SET 1
; xced aspm    wihb tg..
;   c - Hyrule Castle
;   x - Sewers
;   a - Agahnim's Tower
;
;   e - Eastern Palace
;   d - Desert Palace
;   h - Tower of Hera
;
;   p - Palace of Darkness
;   s - Swamp Palace
;   w - Skull Woods
;   b - Thieves' Town
;   i - Ice Palace
;   m - Misery Mire
;   t - Turtle Rock
;   g - Ganon's Tower
COMPASS1        = $7EF364
COMPASS2        = $7EF365

BIGKEY1         = $7EF366
BIGKEY2         = $7EF367

DNGMAP1         = $7EF368
DNGMAP2         = $7EF369

; Number of rupees donated to fairies
WISHRUP         = $7EF36A

; Number of heart pieces towards next container
; Intended to be a value from 0-3
HEARTPC         = $7EF36B

; Maximum health; 1 heart container = 0x08 HP
MAXHP           = $7EF36C

; Current health
; You die at 0x00
; You also die at ≥0xA8
CURHP           = $7EF36D

; Magic power, capped at 128
MAGPOW          = $7EF36E

; Current number of keys for whatever dungeon is loaded
KEYS            = $7EF36F

; Number of capacity upgrades received
BOMBCAP         = $7EF370
ARROWCAP        = $7EF371

; Refills health
; Expects multiples of 8
HEALME          = $7EF372

; Refills magic
ZAPME           = $7EF373

; ... ..gbr
;   r - Wisdom  (red)
;   b - Power   (blue)
;   g - Courage (green)
PENDANTS        = $7EF374

; Refills bombs
BOMBME          = $7EF375

; Refills arrows
SHOOTME         = $7EF376

; Arrow count
ARROWS          = $7EF377

; Unused
UNUSED_7EF378   = $7EF378

; Displays ability flags
; lrtu pbsh
;  h - Pray (unused and mostly cut off by HUD borders)
;  s - Swim
;  b - Run
;  u - unused but set by default
;  p - Pull
;  t - Talk
;  r - Read
;  l - Lift
;      This only controls the display of "LIFT.1"
;      If this bit is unset but LIFT is set then the proper lift text is displayed
ABILITY         = $7EF379

; .wbs tipm
;   p - Palace of Darkness
;   s - Swamp Palace
;   w - Skull Woods
;   b - Thieves' Town
;   i - Ice Palace
;   m - Misery Mire
;   t - Turtle Rock
CRYSTALS        = $7EF37A

; 0x00 - Normal magic
; 0x01 - Half magic
; 0x02 - Quarter magic
; Quarter magic has no special HUD graphic, unlike half magic
; Also, not everything is necessarily quarter magic
MAGCON          = $7EF37B

; Keys earned per dungeon
; Sewers and Castle are kept in sync
KEYSSEWER       = $7EF37C
KEYSHYRULE      = $7EF37D
KEYSEAST        = $7EF37E
KEYSDESERT      = $7EF37F
KEYSAGA         = $7EF380
KEYSSWAMP       = $7EF381
KEYSPOD         = $7EF382
KEYSMIRE        = $7EF383
KEYSWOODS       = $7EF384
KEYSICE         = $7EF385
KEYSHERA        = $7EF386
KEYSTHIEF       = $7EF387
KEYSTROCK       = $7EF388
KEYSGANON       = $7EF389

; Unused block of SRAM
UNUSED_7EF38A   = $7EF38A

; Game state
;   0x00 - Very start; progress cannot be saved in this state
;   0x01 - Uncle reached
;   0x02 - Zelda rescued
;   0x03 - Agahnim defeated
GAMESTATE       = $7EF3C5

; Bitfield of less important progression
; .fbh .zsu
;   u - Uncle visited in secret passage; controls spawn (0: spawn | 1: gone)
;   s - Priest visited in sanc after Zelda is kidnapped again
;   z - Zelda brought to sanc
;   h - Uncle has left Link's house; controls spawn (0: spawn | 1: gone)
;   b - Book of Mudora obtained/mentioned; controls Aginah dialog
;   f - Flipped by fortune tellers to decide which fortune set to give
PROGLITE        = $7EF3C6

; Map icon to guide noob players
;   0x00 - Red X on castle    | Save zelda
;   0x01 - Red X on Kakariko  | Talk to villagers about elders
;   0x02 - Red X on Eastern   | Talk to Sahasrahla
;   0x03 - Pendants and MS    | Obtain the master sword
;   0x04 - Master sword on LW | Grab the master sword
;   0x05 - Skull on castle    | Kill Agahnim
;   0x06 - Crystal on POD     | Get the first crystal
;   0x07 - Crystals           | Get all 7 crystals
;   0x08 - Skull on GT        | Climb Ganon's Tower
MAPICON         = $7EF3C7

; 0x00 - Link's house
; 0x01 - Sanctuary
; 0x02 - Prison
; 0x03 - Uncle
; 0x04 - Throne
; 0x05 - Old man cave
; 0x06 - Old man home
SPAWNPT         = $7EF3C8

; Another bitfield for progress
; t.dp s.bh
;   t - smiths are currently tempering sword
;   d - swordsmith rescued
;   p - purple chest has been opened
;   s - stumpy has been stumped
;   b - bottle purchased from vendor
;   h - bottle received from hobo
PROGLITE2       = $7EF3C9

; .d.. ....
;   d - World (0: Light World | 1: Dark World)
SAVEWORLD       = $7EF3CA

; Not used
UNUSED_7EF3CB   = $7EF3CB

; Current follower ID
FOLLOWER        = $7EF3CC

; Cache of follower properties
FOLLOWCYL       = $7EF3CD
FOLLOWCYH       = $7EF3CE
FOLLOWCXL       = $7EF3CF
FOLLOWCXH       = $7EF3D0

; Copies INDOORS
FOLLOWERINOUT   = $7EF3D1

; Copies LAYER
FOLLOWERCLAYER  = $7EF3D2

; Indicates the follower is currently following
;   0x00 - Following
;   0x80 - Not following
FOLLOWERING     = $7EF3D3

; Unused
UNUSED_7EF3D4   = $7EF3D4
UNUSED_7EF3D5   = $7EF3D5
UNUSED_7EF3D6   = $7EF3D6
UNUSED_7EF3D7   = $7EF3D7
UNUSED_7EF3D8   = $7EF3D8

; Player name
NAME1L          = $7EF3D9
NAME1H          = $7EF3DA
NAME2L          = $7EF3DB
NAME2H          = $7EF3DC
NAME3L          = $7EF3DD
NAME3H          = $7EF3DE
NAME4L          = $7EF3DF
NAME4H          = $7EF3E0

; Save file checksum; expected to be $55AA
SCHKSML         = $7EF3E1
SCHKSMH         = $7EF3E2

; Games played in each dungeon
GPSEWER         = $7EF3E3
GPHYRULE        = $7EF3E5
GPEAST          = $7EF3E7
GPDESERT        = $7EF3E9
GPAGA           = $7EF3EB
GPSWAMP         = $7EF3ED
GPPOD           = $7EF3EF
GPMIRE          = $7EF3F1
GPWOODS         = $7EF3F3
GPICE           = $7EF3F5
GPHERA          = $7EF3F7
GPTHIEF         = $7EF3F9
GPTROCK         = $7EF3FB
GPGANON         = $7EF3FD

; Games played for current segment
GPNOW           = $7EF3FF

; Total games played
; No display on file select if 0xFFFF
GAMESPLAYED     = $7EF401

; Big unused block
UNUSED_7EF403   = $7EF403

; Inverse checksum for save file
SAVEICKSML      = $7EF4FE
SAVEICKSMH      = $7EF4FF

;===================================================================================================
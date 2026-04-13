org $098000

;===================================================================================================

pool Ancilla_AddHitStars

.offset
|098000| dw  21, -11
|098004| dw  21,  11
|098008| dw   3,  -6
|09800C| dw  21,   5
|098010| dw  16, -14
|098014| dw  16,  14

.unknown_offsets
|098018| dw  -3,  19
|09801C| dw   2,  13
|098020| dw  -6,  22

endpool

;---------------------------------------------------------------------------------------------------

Ancilla_AddHitStars:
|098024| PHB
|098025| PHK
|098026| PLB

|098027| JSR AddAncilla
|09802A| BCS .spawn_failed

|09802C| STZ.w $0C5E,X

|09802F| LDA.b #$02 ; some timers
|098031| STA.w $03B1,X

|098034| LDA.b #$01
|098036| STA.w $039F,X

|098039| STZ.w $0C22,X
|09803C| STZ.w $0C2C,X

|09803F| LDA.w $0301
|098042| BEQ .nothing_in_hand

|098044| LDA.b $2F
|098046| LSR A

|098047| CLC
|098048| ADC.b #$02
|09804A| TAY

|09804B| BRA .continue

.nothing_in_hand
|09804D| LDA.w $037A
|098050| BEQ .continue

|098052| LDY.b #$00

|098054| LDA.b $2F
|098056| CMP.b #$04
|098058| BEQ .continue

|09805A| LDY.b #$01

;---------------------------------------------------------------------------------------------------

.continue
|09805C| TYA
|09805D| STA.w $0C54,X

|098060| ASL A
|098061| ASL A
|098062| TAY

|098063| REP #$20

|098065| LDA.w .offset,Y
|098068| CLC
|098069| ADC.b $20
|09806B| STA.b $00

|09806D| LDA.w .offset+2,Y
|098070| CLC
|098071| ADC.b $22
|098073| STA.b $02

|098075| TYA
|098076| LSR A
|098077| TAY

|098078| LDA.b $22
|09807A| CLC
|09807B| ADC.w .unknown_offsets,Y
|09807E| STA.b $04

|098080| SEP #$20

|098082| LDA.b $04
|098084| STA.w $038A,X

|098087| LDA.b $05
|098089| STA.w $038F,X

|09808C| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.spawn_failed
|09808F| PLB

|098090| RTL

;===================================================================================================

AncillaAdd_Blanket:
|098091| PHB
|098092| PHK
|098093| PLB

|098094| LDX.b #$00

|098096| STA.w $0C4A,X

|098099| PHX

|09809A| TAX

|09809B| LDA.l AncillaObjectAllocation,X
|09809F| STA.b $0E

|0980A1| PLX

|0980A2| LDA.b $0E
|0980A4| STA.w $0C90,X

|0980A7| LDA.b $EE
|0980A9| STA.w $0C7C,X

|0980AC| LDA.w $0476
|0980AF| STA.w $03CA,X

|0980B2| STZ.w $0280,X

|0980B5| REP #$20

; [HARDCODED] coordinates
|0980B7| LDA.w #$2162
|0980BA| STA.b $00

|0980BC| LDA.w #$0938
|0980BF| STA.b $02

|0980C1| SEP #$20

;===================================================================================================

SetAncillaCoordinatesAndExit:
|0980C3| JSR SetAncillaCoordinates

|0980C6| PLB

|0980C7| RTL

;===================================================================================================

AncillaAdd_Snoring:
|0980C8| PHB
|0980C9| PHK
|0980CA| PLB

|0980CB| JSR AddAncilla
|0980CE| BCS EXIT_0980FD

;---------------------------------------------------------------------------------------------------

|0980D0| STZ.w $0C5E,X

|0980D3| LDA.b #$F8
|0980D5| STA.w $0C22,X

|0980D8| LDA.b #$07
|0980DA| STA.w $03B1,X

|0980DD| INC A
|0980DE| STA.w $0C2C,X

|0980E1| LDA.b #$FF
|0980E3| STA.w $0C54,X

|0980E6| REP #$20

|0980E8| LDA.b $20
|0980EA| CLC
|0980EB| ADC.w #$0004
|0980EE| STA.b $00

|0980F0| LDA.b $22
|0980F2| CLC
|0980F3| ADC.w #$0010
|0980F6| STA.b $02

|0980F8| SEP #$20

|0980FA| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

#EXIT_0980FD:
|0980FD| PLB

|0980FE| RTL

;===================================================================================================

pool AncillaAdd_Bomb

.offset_y_close
|0980FF| dw   4 ; up
|098101| dw  28 ; down
|098103| dw  12 ; left
|098105| dw  12 ; right

.offset_x_close
|098107| dw   8 ; up
|098109| dw   8 ; down
|09810B| dw  -6 ; left
|09810D| dw  22 ; right

;---------------------------------------------------------------------------------------------------

.offset_y
|09810F| dw   0 ; up
|098111| dw  24 ; down
|098113| dw  12 ; left
|098115| dw  12 ; right

.offset_x
|098117| dw   8 ; up
|098119| dw   8 ; down
|09811B| dw   0 ; left
|09811D| dw  16 ; right

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_Bomb:
|09811F| PHB
|098120| PHK
|098121| PLB

|098122| JSR AddAncilla
|098125| BCS EXIT_0980FD

|098127| LDA.l $7EF343
|09812B| BNE .we_have_bombs

|09812D| STZ.w $0C4A,X

|098130| BRA .exit

;---------------------------------------------------------------------------------------------------

.we_have_bombs
|098132| DEC A
|098133| STA.l $7EF343
|098137| BNE .we_have_more_bombs_too

|098139| PHX

|09813A| JSL RefreshItemIcon

|09813E| PLX

.we_have_more_bombs_too
|09813F| STZ.w $03EA,X

|098142| STZ.w $0C54,X
|098145| STZ.w $0C5E,X

|098148| STZ.w $03C2,X

|09814B| STZ.w $0385,X

|09814E| LDA.l BombTimers
|098152| STA.w $039F,X

|098155| LDA.b #$07
|098157| STA.w $03C0,X

|09815A| STZ.w $029E,X

|09815D| LDA.b #$08
|09815F| STA.w $0C68,X

|098162| LDA.b $2F
|098164| LSR A
|098165| STA.w $0C72,X

|098168| STZ.w $03D5,X

|09816B| JSL Ancilla_CheckInitialTileCollision_Class2
|09816F| BCC .use_closer_offsets

;---------------------------------------------------------------------------------------------------

|098171| LDY.b $2F

|098173| REP #$20

|098175| LDA.b $20
|098177| CLC
|098178| ADC.w .offset_y,Y
|09817B| STA.b $00

|09817D| LDA.b $22
|09817F| CLC
|098180| ADC.w .offset_x,Y
|098183| STA.b $02

|098185| SEP #$20

|098187| BRA .finish_up

;---------------------------------------------------------------------------------------------------

.use_closer_offsets
|098189| LDY.b $2F

|09818B| REP #$20

|09818D| LDA.b $20
|09818F| CLC
|098190| ADC.w .offset_y_close,Y
|098193| STA.b $00

|098195| LDA.b $22
|098197| CLC
|098198| ADC.w .offset_x_close,Y
|09819B| STA.b $02

|09819D| SEP #$20

;---------------------------------------------------------------------------------------------------

.finish_up
|09819F| JSL CalculateLinkSFXPan
|0981A3| ORA.b #$0B ; SFX2.0B
|0981A5| STA.w $012E

|0981A8| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.exit
|0981AB| PLB

|0981AC| RTL

;===================================================================================================

pool AncillaAdd_Boomerang

.speed
|0981AD| db $20, $18 ; blue
|0981AF| db $30, $28 ; red

.distance
|0981B1| db $20 ; blue
|0981B2| db $60 ; red

.rotation_speed
|0981B3| db $03 ; blue
|0981B4| db $02 ; red

;---------------------------------------------------------------------------------------------------

.direction_component
|0981B5| db $08 ; up
|0981B6| db $04 ; down
|0981B7| db $02 ; left
|0981B8| db $01 ; right

;---------------------------------------------------------------------------------------------------

; these tables are just a roundabout way of checking for bits 1 and 2
.valid_throw_dpad
|0981B9| db $08 ; up
|0981BA| db $04 ; down
|0981BB| db $02 ; left
|0981BC| db $01 ; right
|0981BD| db $09 ; up-right
|0981BE| db $05 ; down-right
|0981BF| db $0A ; up-left
|0981C0| db $06 ; down-left

.initial_rotation
|0981C1| db $02 ; up
|0981C2| db $03 ; down
|0981C3| db $03 ; left
|0981C4| db $02 ; right
|0981C5| db $02 ; up-right
|0981C6| db $03 ; down-right
|0981C7| db $03 ; up-left
|0981C8| db $03 ; down-left

;---------------------------------------------------------------------------------------------------

.offset_y_standard
|0981C9| dw -10 ; up
|0981CB| dw  -8 ; down
|0981CD| dw  -9 ; left
|0981CF| dw  -9 ; right
|0981D1| dw -10 ; up-right
|0981D3| dw  -8 ; down-right
|0981D5| dw  -9 ; up-left
|0981D7| dw  -9 ; down-left

.offset_x_standard
|0981D9| dw -10 ; up
|0981DB| dw  11 ; down
|0981DD| dw   8 ; left
|0981DF| dw  -8 ; right
|0981E1| dw -10 ; up-right
|0981E3| dw  11 ; down-right
|0981E5| dw   8 ; up-left
|0981E7| dw  -8 ; down-left

;---------------------------------------------------------------------------------------------------

.offset_y_sword
|0981E9| dw -16 ; up
|0981EB| dw   6 ; down
|0981ED| dw   0 ; left
|0981EF| dw   0 ; right
|0981F1| dw  -8 ; up-right
|0981F3| dw   8 ; down-right
|0981F5| dw  -8 ; up-left
|0981F7| dw   8 ; down-left

.offset_x_sword
|0981F9| dw   0 ; up
|0981FB| dw   0 ; down
|0981FD| dw  -8 ; left
|0981FF| dw   8 ; right
|098201| dw   8 ; up-right
|098203| dw   8 ; down-right
|098205| dw  -8 ; up-left
|098207| dw  -8 ; down-left

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_Boomerang:
|098209| PHB
|09820A| PHK
|09820B| PLB

|09820C| JSR AddAncilla
|09820F| BCC .open_slot

|098211| BRL .exit

.open_slot
|098214| STZ.w $03B1,X

|098217| STZ.w $0C5E,X
|09821A| STZ.w $0380,X

|09821D| STZ.w $029E,X
|098220| STA.w $0385,X

|098223| LDA.b #$01
|098225| STA.w $035F

|098228| LDA.l $7EF341
|09822C| DEC A
|09822D| STA.w $0394,X

|098230| TAY

|098231| LDA.w .distance,Y
|098234| STA.w $0C54,X

|098237| LDA.w .rotation_speed,Y
|09823A| STA.w $039F,X

;---------------------------------------------------------------------------------------------------

|09823D| LDY.b #$00

|09823F| LDA.b $F0
|098241| AND.b #$0C
|098243| BEQ .not_diagonal

|098245| LDA.b $F0
|098247| AND.b #$03
|098249| BEQ .not_diagonal

|09824B| INY

.not_diagonal
|09824C| STY.b $00

|09824E| LDA.w $0394,X
|098251| ASL A
|098252| CLC
|098253| ADC.b $00
|098255| TAY

|098256| LDA.w .speed,Y
|098259| STA.b $00
|09825B| STA.w $03C5,X

|09825E| STY.b $72

;---------------------------------------------------------------------------------------------------

|098260| LDA.b $F0
|098262| AND.b #$0F
|098264| BNE .not_directional

|098266| LDA.b $2F
|098268| LSR A
|098269| TAY

|09826A| LDA.w .direction_component,Y

.not_directional
|09826D| STA.b $01

|09826F| STZ.w $039D

|098272| LDY.b $00

|098274| LDA.b $01
|098276| AND.b #$0C
|098278| BEQ .nonvertical

|09827A| AND.b #$08
|09827C| BEQ .down_throw

.up_throw
|09827E| TYA
|09827F| EOR.b #$FF
|098281| INC A
|098282| TAY

.down_throw
|098283| TYA
|098284| STA.w $0C22,X

|098287| LDY.b #$00

|098289| LDA.w $0C22,X
|09828C| BMI .was_up_throw

|09828E| INY

.was_up_throw
|09828F| TYA
|098290| STA.w $0C72,X

|098293| LDA.w .direction_component,Y
|098296| STA.w $039D

;---------------------------------------------------------------------------------------------------

.nonvertical
|098299| STZ.w $03A9,X

|09829C| LDY.b $00

|09829E| LDA.b $01
|0982A0| AND.b #$03
|0982A2| BEQ .nonhorizontal

|0982A4| AND.b #$02
|0982A6| BEQ .right_throw

.left_throw
|0982A8| TYA
|0982A9| EOR.b #$FF
|0982AB| INC A
|0982AC| TAY

|0982AD| BRA .continue_horizontal

.right_throw
|0982AF| INC.w $03A9,X

.continue_horizontal
|0982B2| TYA
|0982B3| STA.w $0C2C,X

|0982B6| LDY.b #$02

|0982B8| LDA.w $0C2C,X
|0982BB| BMI .was_left_throw

|0982BD| LDY.b #$03

.was_left_throw
|0982BF| TYA
|0982C0| STA.w $0C72,X

|0982C3| LDA.w .direction_component,Y
|0982C6| ORA.w $039D
|0982C9| STA.w $039D

;---------------------------------------------------------------------------------------------------

.nonhorizontal
|0982CC| LDY.b #$07

.next_direction_check
|0982CE| LDA.w .valid_throw_dpad,Y
|0982D1| CMP.b $01
|0982D3| BEQ .valid_dpad_press

|0982D5| DEY
|0982D6| BPL .next_direction_check

|0982D8| INY

;---------------------------------------------------------------------------------------------------

.valid_dpad_press
|0982D9| LDA.w .initial_rotation,Y
|0982DC| STA.w $03A4,X

|0982DF| TYA
|0982E0| ASL A
|0982E1| TAY

|0982E2| STA.w $03CF,X

|0982E5| LDA.b $3C
|0982E7| CMP.b #$09
|0982E9| BCC .spin_not_charged

|0982EB| INC.w $03B1,X

|0982EE| BRA .check_tile_collision

.spin_not_charged
|0982F0| LDA.b $72
|0982F2| BNE .magic_or_diagonal

|0982F4| LDA.b $F0
|0982F6| AND.b #$0F
|0982F8| BNE .check_tile_collision

.magic_or_diagonal
|0982FA| LDY.b $2F

;---------------------------------------------------------------------------------------------------

.check_tile_collision
|0982FC| JSL Ancilla_CheckInitialTile_A
|098300| BCS AncillaAdd_BoomerangAsClink

|098302| LDA.w $03B1,X
|098305| BEQ .wasnt_during_spin

|098307| REP #$20

|098309| LDA.b $20
|09830B| CLC
|09830C| ADC.w #$0008
|09830F| CLC
|098310| ADC.w .offset_y_sword,Y
|098313| STA.b $00

|098315| LDA.b $22
|098317| CLC
|098318| ADC.w .offset_x_sword,Y
|09831B| STA.b $02

|09831D| SEP #$20

|09831F| BRL .proceed_to_set_coods

;---------------------------------------------------------------------------------------------------

.wasnt_during_spin
|098322| REP #$20

|098324| LDA.b $20
|098326| CLC
|098327| ADC.w #$0008
|09832A| CLC
|09832B| ADC.w .offset_y_standard,Y
|09832E| STA.b $00

|098330| LDA.b $22
|098332| CLC
|098333| ADC.w .offset_x_standard,Y
|098336| STA.b $02

|098338| SEP #$20

;---------------------------------------------------------------------------------------------------

.proceed_to_set_coods
|09833A| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.exit
|09833D| PLB

|09833E| RTL

;---------------------------------------------------------------------------------------------------

AncillaAdd_BoomerangAsClink:
|09833F| STZ.w $0C4A,X
|098342| STZ.w $035F

; [BUG] only checks for door 0
|098345| LDA.w $03E4,X
|098348| CMP.b #$F0 ; TILETYPE F0
|09834A| BEQ .shut_door

|09834C| JSL CalculateAncillaSFXPan
|098350| ORA.b #$05 ; SFX2.05
|098352| STA.w $012E

|098355| BRA .continue

;---------------------------------------------------------------------------------------------------

.shut_door
|098357| JSL CalculateAncillaSFXPan
|09835B| ORA.b #$06 ; SFX2.06
|09835D| STA.w $012E

;---------------------------------------------------------------------------------------------------

.continue
|098360| JSL AncillaAdd_BoomerangWallClink

|098364| PLB

|098365| RTL

;===================================================================================================

pool AncillaAdd_ItemReceipt

.offset_y
|098366| db  -5 ; FIGHTER SWORD
|098367| db  -5 ; MASTER SWORD
|098368| db  -5 ; TEMPERED SWORD
|098369| db  -5 ; BUTTER SWORD
|09836A| db  -5 ; FIGHTER SHIELD
|09836B| db  -4 ; FIRE SHIELD
|09836C| db  -4 ; MIRROR SHIELD
|09836D| db  -5 ; FIRE ROD
|09836E| db  -5 ; ICE ROD
|09836F| db  -4 ; HAMMER
|098370| db  -4 ; HOOKSHOT
|098371| db  -4 ; BOW
|098372| db  -2 ; BOOMERANG
|098373| db  -4 ; POWDER
|098374| db  -4 ; BOTTLE REFILL (BEE)
|098375| db  -4 ; BOMBOS
|098376| db  -4 ; ETHER
|098377| db  -4 ; QUAKE
|098378| db  -4 ; LAMP
|098379| db  -4 ; SHOVEL
|09837A| db  -4 ; FLUTE
|09837B| db  -4 ; SOMARIA
|09837C| db  -4 ; BOTTLE
|09837D| db  -4 ; HEART PIECE
|09837E| db  -4 ; BYRNA
|09837F| db  -4 ; CAPE
|098380| db  -4 ; MIRROR
|098381| db  -4 ; GLOVE
|098382| db  -4 ; MITTS
|098383| db  -4 ; BOOK
|098384| db  -4 ; FLIPPERS
|098385| db  -4 ; PEARL
|098386| db  -4 ; CRYSTAL
|098387| db  -4 ; NET
|098388| db  -4 ; BLUE MAIL
|098389| db  -5 ; RED MAIL
|09838A| db  -4 ; SMALL KEY
|09838B| db  -4 ; COMPASS
|09838C| db  -4 ; HEART CONTAINER FROM 4/4
|09838D| db  -4 ; BOMB
|09838E| db  -4 ; 3 BOMBS
|09838F| db  -4 ; MUSHROOM
|098390| db  -2 ; RED BOOMERANG
|098391| db  -4 ; FULL BOTTLE (RED)
|098392| db  -4 ; FULL BOTTLE (GREEN)
|098393| db  -4 ; FULL BOTTLE (BLUE)
|098394| db  -4 ; POTION REFILL (RED)
|098395| db  -4 ; POTION REFILL (GREEN)
|098396| db  -4 ; POTION REFILL (BLUE)
|098397| db  -4 ; 10 BOMBS
|098398| db  -4 ; BIG KEY
|098399| db  -4 ; MAP
|09839A| db  -2 ; 1 RUPEE
|09839B| db  -2 ; 5 RUPEES
|09839C| db  -2 ; 20 RUPEES
|09839D| db  -4 ; GREEN PENDANT
|09839E| db  -4 ; BLUE PENDANT
|09839F| db  -4 ; RED PENDANT
|0983A0| db  -4 ; TOSSED BOW
|0983A1| db  -4 ; SILVERS
|0983A2| db  -4 ; FULL BOTTLE (BEE)
|0983A3| db  -4 ; FULL BOTTLE (FAIRY)
|0983A4| db  -4 ; BOSS HC
|0983A5| db  -4 ; SANC HC
|0983A6| db  -4 ; 100 RUPEES
|0983A7| db  -4 ; 50 RUPEES
|0983A8| db  -2 ; HEART
|0983A9| db  -2 ; ARROW
|0983AA| db  -4 ; 10 ARROWS
|0983AB| db  -2 ; SMALL MAGIC
|0983AC| db  -4 ; 300 RUPEES
|0983AD| db  -4 ; 20 RUPEES GREEN
|0983AE| db  -4 ; FULL BOTTLE (GOOD BEE)
|0983AF| db  -5 ; TOSSED FIGHTER SWORD
|0983B0| db  -4 ; FLUTE (ACTIVATED)
|0983B1| db  -4 ; BOOTS

;---------------------------------------------------------------------------------------------------

.offset_x
|0983B2| db   4 ; FIGHTER SWORD
|0983B3| db   4 ; MASTER SWORD
|0983B4| db   4 ; TEMPERED SWORD
|0983B5| db   4 ; BUTTER SWORD
|0983B6| db   4 ; FIGHTER SHIELD
|0983B7| db   0 ; FIRE SHIELD
|0983B8| db   0 ; MIRROR SHIELD
|0983B9| db   4 ; FIRE ROD
|0983BA| db   4 ; ICE ROD
|0983BB| db   4 ; HAMMER
|0983BC| db   4 ; HOOKSHOT
|0983BD| db   4 ; BOW
|0983BE| db   5 ; BOOMERANG
|0983BF| db   0 ; POWDER
|0983C0| db   0 ; BOTTLE REFILL (BEE)
|0983C1| db   0 ; BOMBOS
|0983C2| db   0 ; ETHER
|0983C3| db   0 ; QUAKE
|0983C4| db   0 ; LAMP
|0983C5| db   4 ; SHOVEL
|0983C6| db   0 ; FLUTE
|0983C7| db   4 ; SOMARIA
|0983C8| db   0 ; BOTTLE
|0983C9| db   0 ; HEART PIECE
|0983CA| db   4 ; BYRNA
|0983CB| db   0 ; CAPE
|0983CC| db   0 ; MIRROR
|0983CD| db   0 ; GLOVE
|0983CE| db   0 ; MITTS
|0983CF| db   0 ; BOOK
|0983D0| db   0 ; FLIPPERS
|0983D1| db   0 ; PEARL
|0983D2| db   0 ; CRYSTAL
|0983D3| db   0 ; NET
|0983D4| db   0 ; BLUE MAIL
|0983D5| db   0 ; RED MAIL
|0983D6| db   4 ; SMALL KEY
|0983D7| db   0 ; COMPASS
|0983D8| db   0 ; HEART CONTAINER FROM 4/4
|0983D9| db   0 ; BOMB
|0983DA| db   0 ; 3 BOMBS
|0983DB| db   0 ; MUSHROOM
|0983DC| db   5 ; RED BOOMERANG
|0983DD| db   0 ; FULL BOTTLE (RED)
|0983DE| db   0 ; FULL BOTTLE (GREEN)
|0983DF| db   0 ; FULL BOTTLE (BLUE)
|0983E0| db   0 ; POTION REFILL (RED)
|0983E1| db   0 ; POTION REFILL (GREEN)
|0983E2| db   0 ; POTION REFILL (BLUE)
|0983E3| db   0 ; 10 BOMBS
|0983E4| db   0 ; BIG KEY
|0983E5| db   0 ; MAP
|0983E6| db   4 ; 1 RUPEE
|0983E7| db   4 ; 5 RUPEES
|0983E8| db   4 ; 20 RUPEES
|0983E9| db   0 ; GREEN PENDANT
|0983EA| db   0 ; BLUE PENDANT
|0983EB| db   0 ; RED PENDANT
|0983EC| db   0 ; TOSSED BOW
|0983ED| db   0 ; SILVERS
|0983EE| db   0 ; FULL BOTTLE (BEE)
|0983EF| db   0 ; FULL BOTTLE (FAIRY)
|0983F0| db   0 ; BOSS HC
|0983F1| db   0 ; SANC HC
|0983F2| db   0 ; 100 RUPEES
|0983F3| db   0 ; 50 RUPEES
|0983F4| db   4 ; HEART
|0983F5| db   4 ; ARROW
|0983F6| db   0 ; 10 ARROWS
|0983F7| db   4 ; SMALL MAGIC
|0983F8| db   0 ; 300 RUPEES
|0983F9| db   0 ; 20 RUPEES GREEN
|0983FA| db   0 ; FULL BOTTLE (GOOD BEE)
|0983FB| db   4 ; TOSSED FIGHTER SWORD
|0983FC| db   0 ; FLUTE (ACTIVATED)
|0983FD| db   0 ; BOOTS

;---------------------------------------------------------------------------------------------------

.item_gfx_index
|0983FE| db $06 ; FIGHTER SWORD
|0983FF| db $18 ; MASTER SWORD
|098400| db $18 ; TEMPERED SWORD
|098401| db $18 ; BUTTER SWORD
|098402| db $2D ; FIGHTER SHIELD
|098403| db $20 ; FIRE SHIELD
|098404| db $2E ; MIRROR SHIELD
|098405| db $09 ; FIRE ROD
|098406| db $09 ; ICE ROD
|098407| db $0A ; HAMMER
|098408| db $08 ; HOOKSHOT
|098409| db $05 ; BOW
|09840A| db $10 ; BOOMERANG
|09840B| db $0B ; POWDER
|09840C| db $2C ; BOTTLE REFILL (BEE)
|09840D| db $1B ; BOMBOS
|09840E| db $1A ; ETHER
|09840F| db $1C ; QUAKE
|098410| db $14 ; LAMP
|098411| db $19 ; SHOVEL
|098412| db $0C ; FLUTE
|098413| db $07 ; SOMARIA
|098414| db $1D ; BOTTLE
|098415| db $2F ; HEART PIECE
|098416| db $07 ; BYRNA
|098417| db $15 ; CAPE
|098418| db $12 ; MIRROR
|098419| db $0D ; GLOVE
|09841A| db $0D ; MITTS
|09841B| db $0E ; BOOK
|09841C| db $11 ; FLIPPERS
|09841D| db $17 ; PEARL
|09841E| db $28 ; CRYSTAL
|09841F| db $27 ; NET
|098420| db $04 ; BLUE MAIL
|098421| db $04 ; RED MAIL
|098422| db $0F ; SMALL KEY
|098423| db $16 ; COMPASS
|098424| db $03 ; HEART CONTAINER FROM 4/4
|098425| db $13 ; BOMB
|098426| db $01 ; 3 BOMBS
|098427| db $1E ; MUSHROOM
|098428| db $10 ; RED BOOMERANG
|098429| db $00 ; FULL BOTTLE (RED)
|09842A| db $00 ; FULL BOTTLE (GREEN)
|09842B| db $00 ; FULL BOTTLE (BLUE)
|09842C| db $00 ; POTION REFILL (RED)
|09842D| db $00 ; POTION REFILL (GREEN)
|09842E| db $00 ; POTION REFILL (BLUE)
|09842F| db $30 ; 10 BOMBS
|098430| db $22 ; BIG KEY
|098431| db $21 ; MAP
|098432| db $24 ; 1 RUPEE
|098433| db $24 ; 5 RUPEES
|098434| db $24 ; 20 RUPEES
|098435| db $23 ; GREEN PENDANT
|098436| db $23 ; BLUE PENDANT
|098437| db $23 ; RED PENDANT
|098438| db $29 ; TOSSED BOW
|098439| db $2A ; SILVERS
|09843A| db $2C ; FULL BOTTLE (BEE)
|09843B| db $2B ; FULL BOTTLE (FAIRY)
|09843C| db $03 ; BOSS HC
|09843D| db $03 ; SANC HC
|09843E| db $34 ; 100 RUPEES
|09843F| db $35 ; 50 RUPEES
|098440| db $31 ; HEART
|098441| db $33 ; ARROW
|098442| db $02 ; 10 ARROWS
|098443| db $32 ; SMALL MAGIC
|098444| db $36 ; 300 RUPEES
|098445| db $37 ; 20 RUPEES GREEN
|098446| db $2C ; FULL BOTTLE (GOOD BEE)
|098447| db $06 ; TOSSED FIGHTER SWORD
|098448| db $0C ; FLUTE (ACTIVATED)
|098449| db $38 ; BOOTS

;---------------------------------------------------------------------------------------------------

.width
|09844A| db $00 ; FIGHTER SWORD
|09844B| db $00 ; MASTER SWORD
|09844C| db $00 ; TEMPERED SWORD
|09844D| db $00 ; BUTTER SWORD
|09844E| db $00 ; FIGHTER SHIELD
|09844F| db $02 ; FIRE SHIELD
|098450| db $02 ; MIRROR SHIELD
|098451| db $00 ; FIRE ROD
|098452| db $00 ; ICE ROD
|098453| db $00 ; HAMMER
|098454| db $00 ; HOOKSHOT
|098455| db $00 ; BOW
|098456| db $00 ; BOOMERANG
|098457| db $02 ; POWDER
|098458| db $02 ; BOTTLE REFILL (BEE)
|098459| db $02 ; BOMBOS
|09845A| db $02 ; ETHER
|09845B| db $02 ; QUAKE
|09845C| db $02 ; LAMP
|09845D| db $00 ; SHOVEL
|09845E| db $02 ; FLUTE
|09845F| db $00 ; SOMARIA
|098460| db $02 ; BOTTLE
|098461| db $02 ; HEART PIECE
|098462| db $00 ; BYRNA
|098463| db $02 ; CAPE
|098464| db $02 ; MIRROR
|098465| db $02 ; GLOVE
|098466| db $02 ; MITTS
|098467| db $02 ; BOOK
|098468| db $02 ; FLIPPERS
|098469| db $02 ; PEARL
|09846A| db $02 ; CRYSTAL
|09846B| db $02 ; NET
|09846C| db $02 ; BLUE MAIL
|09846D| db $02 ; RED MAIL
|09846E| db $00 ; SMALL KEY
|09846F| db $02 ; COMPASS
|098470| db $02 ; HEART CONTAINER FROM 4/4
|098471| db $02 ; BOMB
|098472| db $02 ; 3 BOMBS
|098473| db $02 ; MUSHROOM
|098474| db $00 ; RED BOOMERANG
|098475| db $02 ; FULL BOTTLE (RED)
|098476| db $02 ; FULL BOTTLE (GREEN)
|098477| db $02 ; FULL BOTTLE (BLUE)
|098478| db $02 ; POTION REFILL (RED)
|098479| db $02 ; POTION REFILL (GREEN)
|09847A| db $02 ; POTION REFILL (BLUE)
|09847B| db $02 ; 10 BOMBS
|09847C| db $02 ; BIG KEY
|09847D| db $02 ; MAP
|09847E| db $00 ; 1 RUPEE
|09847F| db $00 ; 5 RUPEES
|098480| db $00 ; 20 RUPEES
|098481| db $02 ; GREEN PENDANT
|098482| db $02 ; BLUE PENDANT
|098483| db $02 ; RED PENDANT
|098484| db $02 ; TOSSED BOW
|098485| db $02 ; SILVERS
|098486| db $02 ; FULL BOTTLE (BEE)
|098487| db $02 ; FULL BOTTLE (FAIRY)
|098488| db $02 ; BOSS HC
|098489| db $02 ; SANC HC
|09848A| db $02 ; 100 RUPEES
|09848B| db $02 ; 50 RUPEES
|09848C| db $00 ; HEART
|09848D| db $00 ; ARROW
|09848E| db $02 ; 10 ARROWS
|09848F| db $00 ; SMALL MAGIC
|098490| db $02 ; 300 RUPEES
|098491| db $02 ; 20 RUPEES GREEN
|098492| db $02 ; FULL BOTTLE (GOOD BEE)
|098493| db $00 ; TOSSED FIGHTER SWORD
|098494| db $02 ; FLUTE (ACTIVATED)
|098495| db $02 ; BOOTS

;---------------------------------------------------------------------------------------------------

.prop
|098496| db $05 ; FIGHTER SWORD
|098497| db $FF ; MASTER SWORD
|098498| db $05 ; TEMPERED SWORD
|098499| db $05 ; BUTTER SWORD
|09849A| db $05 ; FIGHTER SHIELD
|09849B| db $05 ; FIRE SHIELD
|09849C| db $05 ; MIRROR SHIELD
|09849D| db $01 ; FIRE ROD
|09849E| db $02 ; ICE ROD
|09849F| db $01 ; HAMMER
|0984A0| db $01 ; HOOKSHOT
|0984A1| db $01 ; BOW
|0984A2| db $02 ; BOOMERANG
|0984A3| db $02 ; POWDER
|0984A4| db $02 ; BOTTLE REFILL (BEE)
|0984A5| db $04 ; BOMBOS
|0984A6| db $04 ; ETHER
|0984A7| db $04 ; QUAKE
|0984A8| db $01 ; LAMP
|0984A9| db $01 ; SHOVEL
|0984AA| db $02 ; FLUTE
|0984AB| db $01 ; SOMARIA
|0984AC| db $01 ; BOTTLE
|0984AD| db $01 ; HEART PIECE
|0984AE| db $02 ; BYRNA
|0984AF| db $01 ; CAPE
|0984B0| db $02 ; MIRROR
|0984B1| db $01 ; GLOVE
|0984B2| db $04 ; MITTS
|0984B3| db $04 ; BOOK
|0984B4| db $02 ; FLIPPERS
|0984B5| db $01 ; PEARL
|0984B6| db $06 ; CRYSTAL
|0984B7| db $01 ; NET
|0984B8| db $02 ; BLUE MAIL
|0984B9| db $01 ; RED MAIL
|0984BA| db $02 ; SMALL KEY
|0984BB| db $02 ; COMPASS
|0984BC| db $01 ; HEART CONTAINER FROM 4/4
|0984BD| db $02 ; BOMB
|0984BE| db $02 ; 3 BOMBS
|0984BF| db $04 ; MUSHROOM
|0984C0| db $01 ; RED BOOMERANG
|0984C1| db $01 ; FULL BOTTLE (RED)
|0984C2| db $04 ; FULL BOTTLE (GREEN)
|0984C3| db $02 ; FULL BOTTLE (BLUE)
|0984C4| db $01 ; POTION REFILL (RED)
|0984C5| db $04 ; POTION REFILL (GREEN)
|0984C6| db $02 ; POTION REFILL (BLUE)
|0984C7| db $02 ; 10 BOMBS
|0984C8| db $04 ; BIG KEY
|0984C9| db $04 ; MAP
|0984CA| db $04 ; 1 RUPEE
|0984CB| db $02 ; 5 RUPEES
|0984CC| db $01 ; 20 RUPEES
|0984CD| db $04 ; GREEN PENDANT
|0984CE| db $01 ; BLUE PENDANT
|0984CF| db $02 ; RED PENDANT
|0984D0| db $02 ; TOSSED BOW
|0984D1| db $01 ; SILVERS
|0984D2| db $02 ; FULL BOTTLE (BEE)
|0984D3| db $02 ; FULL BOTTLE (FAIRY)
|0984D4| db $01 ; BOSS HC
|0984D5| db $01 ; SANC HC
|0984D6| db $04 ; 100 RUPEES
|0984D7| db $04 ; 50 RUPEES
|0984D8| db $01 ; HEART
|0984D9| db $02 ; ARROW
|0984DA| db $02 ; 10 ARROWS
|0984DB| db $04 ; SMALL MAGIC
|0984DC| db $04 ; 300 RUPEES
|0984DD| db $04 ; 20 RUPEES GREEN
|0984DE| db $02 ; FULL BOTTLE (GOOD BEE)
|0984DF| db $05 ; TOSSED FIGHTER SWORD
|0984E0| db $02 ; FLUTE (ACTIVATED)
|0984E1| db $01 ; BOOTS

;---------------------------------------------------------------------------------------------------

.sram_write
|0984E2| dw $7EF359 ; FIGHTER SWORD
|0984E4| dw $7EF359 ; MASTER SWORD
|0984E6| dw $7EF359 ; TEMPERED SWORD
|0984E8| dw $7EF359 ; BUTTER SWORD
|0984EA| dw $7EF35A ; FIGHTER SHIELD
|0984EC| dw $7EF35A ; FIRE SHIELD
|0984EE| dw $7EF35A ; MIRROR SHIELD
|0984F0| dw $7EF345 ; FIRE ROD
|0984F2| dw $7EF346 ; ICE ROD
|0984F4| dw $7EF34B ; HAMMER
|0984F6| dw $7EF342 ; HOOKSHOT
|0984F8| dw $7EF340 ; BOW
|0984FA| dw $7EF341 ; BOOMERANG
|0984FC| dw $7EF344 ; POWDER
|0984FE| dw $7EF35C ; BOTTLE REFILL (BEE)
|098500| dw $7EF347 ; BOMBOS
|098502| dw $7EF348 ; ETHER
|098504| dw $7EF349 ; QUAKE
|098506| dw $7EF34A ; LAMP
|098508| dw $7EF34C ; SHOVEL
|09850A| dw $7EF34C ; FLUTE
|09850C| dw $7EF350 ; SOMARIA
|09850E| dw $7EF35C ; BOTTLE
|098510| dw $7EF36B ; HEART PIECE
|098512| dw $7EF351 ; BYRNA
|098514| dw $7EF352 ; CAPE
|098516| dw $7EF353 ; MIRROR
|098518| dw $7EF354 ; GLOVE
|09851A| dw $7EF354 ; MITTS
|09851C| dw $7EF34E ; BOOK
|09851E| dw $7EF356 ; FLIPPERS
|098520| dw $7EF357 ; PEARL
|098522| dw $7EF37A ; CRYSTAL
|098524| dw $7EF34D ; NET
|098526| dw $7EF35B ; BLUE MAIL
|098528| dw $7EF35B ; RED MAIL
|09852A| dw $7EF36F ; SMALL KEY
|09852C| dw $7EF364 ; COMPASS
|09852E| dw $7EF36C ; HEART CONTAINER FROM 4/4
|098530| dw $7EF375 ; BOMB
|098532| dw $7EF375 ; 3 BOMBS
|098534| dw $7EF344 ; MUSHROOM
|098536| dw $7EF341 ; RED BOOMERANG
|098538| dw $7EF35C ; FULL BOTTLE (RED)
|09853A| dw $7EF35C ; FULL BOTTLE (GREEN)
|09853C| dw $7EF35C ; FULL BOTTLE (BLUE)
|09853E| dw $7EF36D ; POTION REFILL (RED)
|098540| dw $7EF36E ; POTION REFILL (GREEN)
|098542| dw $7EF36E ; POTION REFILL (BLUE)
|098544| dw $7EF375 ; 10 BOMBS
|098546| dw $7EF366 ; BIG KEY
|098548| dw $7EF368 ; MAP
|09854A| dw $7EF360 ; 1 RUPEE
|09854C| dw $7EF360 ; 5 RUPEES
|09854E| dw $7EF360 ; 20 RUPEES
|098550| dw $7EF374 ; GREEN PENDANT
|098552| dw $7EF374 ; BLUE PENDANT
|098554| dw $7EF374 ; RED PENDANT
|098556| dw $7EF340 ; TOSSED BOW
|098558| dw $7EF340 ; SILVERS
|09855A| dw $7EF35C ; FULL BOTTLE (BEE)
|09855C| dw $7EF35C ; FULL BOTTLE (FAIRY)
|09855E| dw $7EF36C ; BOSS HC
|098560| dw $7EF36C ; SANC HC
|098562| dw $7EF360 ; 100 RUPEES
|098564| dw $7EF360 ; 50 RUPEES
|098566| dw $7EF372 ; HEART
|098568| dw $7EF376 ; ARROW
|09856A| dw $7EF376 ; 10 ARROWS
|09856C| dw $7EF373 ; SMALL MAGIC
|09856E| dw $7EF360 ; 300 RUPEES
|098570| dw $7EF360 ; 20 RUPEES GREEN
|098572| dw $7EF35C ; FULL BOTTLE (GOOD BEE)
|098574| dw $7EF359 ; TOSSED FIGHTER SWORD
|098576| dw $7EF34C ; FLUTE (ACTIVATED)
|098578| dw $7EF355 ; BOOTS

;---------------------------------------------------------------------------------------------------

.sram_value
|09857A| db $01 ; FIGHTER SWORD
|09857B| db $02 ; MASTER SWORD
|09857C| db $03 ; TEMPERED SWORD
|09857D| db $04 ; BUTTER SWORD
|09857E| db $01 ; FIGHTER SHIELD
|09857F| db $02 ; FIRE SHIELD
|098580| db $03 ; MIRROR SHIELD
|098581| db $01 ; FIRE ROD
|098582| db $01 ; ICE ROD
|098583| db $01 ; HAMMER
|098584| db $01 ; HOOKSHOT
|098585| db $01 ; BOW
|098586| db $01 ; BOOMERANG
|098587| db $02 ; POWDER
|098588| db $FF ; BOTTLE REFILL (BEE)
|098589| db $01 ; BOMBOS
|09858A| db $01 ; ETHER
|09858B| db $01 ; QUAKE
|09858C| db $01 ; LAMP
|09858D| db $01 ; SHOVEL
|09858E| db $02 ; FLUTE
|09858F| db $01 ; SOMARIA
|098590| db $FF ; BOTTLE
|098591| db $FF ; HEART PIECE
|098592| db $01 ; BYRNA
|098593| db $01 ; CAPE
|098594| db $02 ; MIRROR
|098595| db $01 ; GLOVE
|098596| db $02 ; MITTS
|098597| db $01 ; BOOK
|098598| db $01 ; FLIPPERS
|098599| db $01 ; PEARL
|09859A| db $FF ; CRYSTAL
|09859B| db $01 ; NET
|09859C| db $FF ; BLUE MAIL
|09859D| db $02 ; RED MAIL
|09859E| db $FF ; SMALL KEY
|09859F| db $FF ; COMPASS
|0985A0| db $FF ; HEART CONTAINER FROM 4/4
|0985A1| db $FF ; BOMB
|0985A2| db $FF ; 3 BOMBS
|0985A3| db $FF ; MUSHROOM
|0985A4| db $02 ; RED BOOMERANG
|0985A5| db $FF ; FULL BOTTLE (RED)
|0985A6| db $FF ; FULL BOTTLE (GREEN)
|0985A7| db $FF ; FULL BOTTLE (BLUE)
|0985A8| db $FF ; POTION REFILL (RED)
|0985A9| db $FF ; POTION REFILL (GREEN)
|0985AA| db $FF ; POTION REFILL (BLUE)
|0985AB| db $FF ; 10 BOMBS
|0985AC| db $FF ; BIG KEY
|0985AD| db $FF ; MAP
|0985AE| db $FF ; 1 RUPEE
|0985AF| db $FB ; 5 RUPEES
|0985B0| db $EC ; 20 RUPEES
|0985B1| db $FF ; GREEN PENDANT
|0985B2| db $FF ; BLUE PENDANT
|0985B3| db $FF ; RED PENDANT
|0985B4| db $01 ; TOSSED BOW
|0985B5| db $03 ; SILVERS
|0985B6| db $FF ; FULL BOTTLE (BEE)
|0985B7| db $FF ; FULL BOTTLE (FAIRY)
|0985B8| db $FF ; BOSS HC
|0985B9| db $FF ; SANC HC
|0985BA| db $9C ; 100 RUPEES
|0985BB| db $CE ; 50 RUPEES
|0985BC| db $FF ; HEART
|0985BD| db $01 ; ARROW
|0985BE| db $0A ; 10 ARROWS
|0985BF| db $FF ; SMALL MAGIC
|0985C0| db $FF ; 300 RUPEES
|0985C1| db $FF ; 20 RUPEES GREEN
|0985C2| db $FF ; FULL BOTTLE (GOOD BEE)
|0985C3| db $01 ; TOSSED FIGHTER SWORD
|0985C4| db $03 ; FLUTE (ACTIVATED)
|0985C5| db $01 ; BOOTS

;===================================================================================================

.dungeon_masks
|0985C6| dw $8000 ; Sewers
|0985C8| dw $4000 ; Hyrule Castle
|0985CA| dw $2000 ; Eastern Palace
|0985CC| dw $1000 ; Desert Palace
|0985CE| dw $0800 ; Agahnim's Tower
|0985D0| dw $0400 ; Swamp Palace
|0985D2| dw $0200 ; Palace of Darkness
|0985D4| dw $0100 ; Misery Mire
|0985D6| dw $0080 ; Skull Woods
|0985D8| dw $0040 ; Ice Palace
|0985DA| dw $0020 ; Tower of Hera
|0985DC| dw $0010 ; Thieves' Town
|0985DE| dw $0008 ; Turtle Rock
|0985E0| dw $0004 ; Ganon's Tower

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_ItemReceipt:
|0985E2| PHB
|0985E3| PHK
|0985E4| PLB

|0985E5| JSR AddAncilla
|0985E8| BCC .free_slot

|0985EA| BRL .exit

;---------------------------------------------------------------------------------------------------

.free_slot
|0985ED| LDA.w $02E9
|0985F0| CMP.b #$01
|0985F2| BNE .not_chest

|0985F4| LDA.b $72
|0985F6| PHA

|0985F7| LDA.b $73
|0985F9| PHA

.not_chest
|0985FA| LDY.b #$01

|0985FC| LDA.w $02D8
|0985FF| CMP.b #$20 ; ITEMGET 20
|098601| BNE .not_crystal

|098603| LDY.b #$02

;---------------------------------------------------------------------------------------------------

.not_crystal
|098605| TYA
|098606| STA.w $02E4

|098609| PHX

|09860A| LDY.w $02D8
|09860D| BNE .not_uncle_gear

; add in fighter shield too
|09860F| LDX.b #$08 ; ITEMGET 04 but x2

|098611| LDA.w .sram_write+0,X
|098614| STA.b $00

|098616| LDA.w .sram_write+1,X
|098619| STA.b $01

|09861B| LDA.b #$7E
|09861D| STA.b $02

|09861F| LDA.w .sram_value,Y
|098622| STA.b [$00]

;---------------------------------------------------------------------------------------------------

.not_uncle_gear
|098624| TYA
|098625| ASL A
|098626| TAX

|098627| LDA.w .sram_write+0,X
|09862A| STA.b $00

|09862C| LDA.w .sram_write+1,X
|09862F| STA.b $01

|098631| LDA.b #$7E
|098633| STA.b $02

|098635| LDA.w .sram_value,Y
|098638| BMI .dont_write

|09863A| STA.b [$00]

.dont_write
|09863C| CPY.b #$1F ; ITEMGET 1F
|09863E| BNE .not_moon_pearl

; reset to human graphics
|098640| STZ.b $56

;---------------------------------------------------------------------------------------------------

.not_moon_pearl
; set dash or swim ability, for boots and flippers respectively
|098642| LDA.b #$04

|098644| CPY.b #$4B ; ITEMGET 4B
|098646| BEQ .boots

|098648| CPY.b #$1E ; ITEMGET 1E
|09864A| BNE .not_flippers

.flippers
|09864C| LDA.b #$02

;---------------------------------------------------------------------------------------------------

.boots
|09864E| ORA.l $7EF379
|098652| STA.l $7EF379

;---------------------------------------------------------------------------------------------------

.not_flippers
; Load new palettes for glove upgrades
|098656| CPY.b #$1B ; ITEMGET 1B
|098658| BEQ .power_glove

|09865A| CPY.b #$1C ; ITEMGET 1C
|09865C| BNE .not_mitts

.power_glove
|09865E| JSL PaletteLoad_LinkGloves

;---------------------------------------------------------------------------------------------------

.proceed_to_gfx
|098662| BRL .handle_gfx

;---------------------------------------------------------------------------------------------------

.not_mitts
|098665| LDX.b #$04
|098667| CPY.b #$37 ; ITEMGET 37
|098669| BEQ .pendant

|09866B| LDX.b #$01
|09866D| CPY.b #$38 ; ITEMGET 38
|09866F| BEQ .pendant

|098671| LDX.b #$02
|098673| CPY.b #$39 ; ITEMGET 39
|098675| BNE .not_pendant

.pendant
|098677| TXA
|098678| ORA.b [$00]
|09867A| STA.b [$00]

; check for every pendant being obtained
|09867C| INC.w $0200
|09867F| AND.b #$07
|098681| CMP.b #$07
|098683| BNE .not_pendant

; update world map icons
|098685| LDA.b #$04
|098687| STA.l $7EF3C7

;---------------------------------------------------------------------------------------------------

.not_pendant
|09868B| CPY.b #$22 ; ITEMGET 22
|09868D| BNE .not_blue_mail

|09868F| LDA.b [$00]
|098691| BNE .we_have_good_mail

|098693| LDA.b #$01
|098695| STA.b [$00]

.we_have_good_mail
|098697| BRA .proceed_to_gfx

;---------------------------------------------------------------------------------------------------

.not_blue_mail
; compass?
|098699| CPY.b #$25 ; ITEMGET 25
|09869B| BEQ .dungeon_item

; big key?
|09869D| CPY.b #$32 ; ITEMGET 32
|09869F| BEQ .dungeon_item

; map?
|0986A1| CPY.b #$33 ; ITEMGET 33
|0986A3| BNE .not_dungeon_item

.dungeon_item
|0986A5| LDX.w $040C

|0986A8| REP #$20

|0986AA| LDA.w .dungeon_masks,X
|0986AD| ORA.b [$00]
|0986AF| STA.b [$00]

|0986B1| SEP #$20

|0986B3| BRL .handle_gfx

;---------------------------------------------------------------------------------------------------

.not_dungeon_item
|0986B6| CPY.b #$3E ; ITEMGET 3E
|0986B8| BNE .not_heart_container

; are we carrying something?
|0986BA| BIT.w $0308
|0986BD| BPL .not_heart_container

|0986BF| LDA.b #$02
|0986C1| STA.w $0309

.not_heart_container
|0986C4| CPY.b #$20 ; ITEMGET 20
|0986C6| BNE .not_crystal_or_caping

|0986C8| INC.w $0200

;---------------------------------------------------------------------------------------------------

|0986CB| PHX

|0986CC| LDX.b #$04

; delete bombs and somaria
.next_ancilla_check
|0986CE| LDA.w $0C4A,X
|0986D1| CMP.b #$07 ; ANCILLA 07
|0986D3| BEQ .bomb_ancilla

|0986D5| CMP.b #$2C ; ANCILLA 2C
|0986D7| BNE .not_somaria_block

.bomb_ancilla
|0986D9| STZ.w $0C4A,X

|0986DC| STZ.w $0308
|0986DF| STZ.w $0309

.not_somaria_block
|0986E2| DEX
|0986E3| BPL .next_ancilla_check

|0986E5| PLX

;---------------------------------------------------------------------------------------------------

|0986E6| LDA.b $55
|0986E8| BEQ .not_crystal_or_caping

|0986EA| LDA.b #$20
|0986EC| STA.w $02E2

|0986EF| STZ.w $037B
|0986F2| STZ.b $55

|0986F4| PHY
|0986F5| PHX

|0986F6| LDY.b #$04
|0986F8| LDA.b #$23 ; ANCILLA 23
|0986FA| JSL AncillaAdd_CapePoof

|0986FE| JSL CalculateLinkSFXPan
|098702| ORA.b #$15 ; SFX2.15
|098704| STA.w $012E

|098707| PLX
|098708| PLY

|098709| BRL .handle_gfx

;---------------------------------------------------------------------------------------------------

.not_crystal_or_caping
|09870C| CPY.b #$29 ; ITEMGET 29
|09870E| BNE .dont_give_mushroom

; do we already have powder?
|098710| LDA.l $7EF344
|098714| CMP.b #$02
|098716| BEQ .dont_give_mushroom

|098718| LDA.b #$01
|09871A| STA.b [$00]
|09871C| BRA .refresh_hud

;---------------------------------------------------------------------------------------------------

.dont_give_mushroom
; X = number of item to add
|09871E| LDX.b #$01

; 1 small key
|098720| CPY.b #$24 ; ITEMGET 24
|098722| BEQ .add_to_stock

; Don't add extra for items from sprites
|098724| LDA.w $02E9
|098727| CMP.b #$02
|098729| BEQ .dont_add_to_stock

; 1 bomb
|09872B| CPY.b #$27 ; ITEMGET 27
|09872D| BEQ .add_to_stock

|09872F| LDX.b #$03

; 3 bombs
|098731| CPY.b #$28 ; ITEMGET 28
|098733| BEQ .add_to_stock

; 10 bombs
|098735| CPY.b #$31 ; ITEMGET 31
|098737| BNE .dont_add_to_stock

|098739| LDX.b #$0A

;---------------------------------------------------------------------------------------------------

.add_to_stock
|09873B| TXA
|09873C| CLC
|09873D| ADC.b [$00]
|09873F| STA.b [$00]

; don't go over 99
|098741| CMP.b #$63
|098743| BCC .refresh_hud

|098745| LDA.b #$63
|098747| STA.b [$00]

.refresh_hud
|098749| JSL RefreshItemIcon

|09874D| BRA .handle_gfx

;---------------------------------------------------------------------------------------------------

.dont_add_to_stock
|09874F| CPY.b #$17 ; ITEMGET 17
|098751| BNE .not_heart_piece

|098753| LDA.b [$00]
|098755| INC A
|098756| AND.b #$03
|098758| STA.b [$00]

|09875A| JSL CalculateLinkSFXPan
|09875E| ORA.b #$2D ; SFX3.2D
|098760| STA.w $012F

;---------------------------------------------------------------------------------------------------

.not_heart_piece
|098763| JSR ItemReceipt_GiveBottledItem

;---------------------------------------------------------------------------------------------------

.handle_gfx
|098766| LDY.w $02D8

|098769| LDA.w .item_gfx_index,Y
|09876C| STA.b $72

; testing item gfx, not itemget ID
|09876E| CMP.b #$FF
|098770| BEQ .null

; fire shield?
|098772| CMP.b #$20
|098774| BEQ .shield

; fighter shield?
|098776| CMP.b #$2D
|098778| BEQ .shield

; mirror shield?
|09877A| CMP.b #$2E
|09877C| BNE .extract_graphics

.shield
|09877E| JSL DecompressShieldGraphics
|098782| JSL PaletteLoad_Shield

|098786| LDA.b $72

|098788| BRA .extract_graphics

.null
|09878A| LDA.b #$00

;---------------------------------------------------------------------------------------------------

.extract_graphics
|09878C| JSL WriteTo4BPPBuffer_item_gfx

; testing item gfx, not itemget ID
|098790| LDA.b $72

; Fighter sword?
|098792| CMP.b #$06
|098794| BEQ .sword

; better sword?
|098796| CMP.b #$18
|098798| BNE .not_sword

.sword
|09879A| LDA.w $02D8
|09879D| BEQ .not_sword

|09879F| JSL DecompressSwordGraphics
|0987A3| JSL PaletteLoad_Sword

;---------------------------------------------------------------------------------------------------

.not_sword
|0987A7| PLX

|0987A8| LDA.w $02D8
|0987AB| STA.w $0C5E,X

|0987AE| TAY

|0987AF| STZ.w $03A4,X

|0987B2| LDA.b #$09
|0987B4| CPY.b #$01 ; ITEMGET 01
|0987B6| BNE .not_mastersword

;---------------------------------------------------------------------------------------------------

|0987B8| STA.w $039F,X

|0987BB| LDA.w $02E9
|0987BE| CMP.b #$02
|0987C0| BEQ .ms_from_sprite

|0987C2| LDA.b #$A0
|0987C4| STA.w $0C68,X

|0987C7| LDA.b #$2B
|0987C9| STA.b $11

|0987CB| LDA.b #$00
|0987CD| STA.l $7EC007

|0987D1| PHX
|0987D2| PHY

|0987D3| LDY.b #$04
|0987D5| LDA.b #$35 ; ANCILLA 35
|0987D7| JSL AncillaAdd_MasterSwordCutscene

|0987DB| PLY
|0987DC| PLX

|0987DD| LDA.b #$02

;---------------------------------------------------------------------------------------------------

.not_mastersword
|0987DF| STA.w $039F,X

.ms_from_sprite
|0987E2| LDA.b #$05
|0987E4| STA.w $0BF0,X

|0987E7| PHY

|0987E8| LDY.b #$60

|0987EA| LDA.w $02E9
|0987ED| STA.w $0C54,X
|0987F0| BEQ .was_from_text

|0987F2| LDY.b #$38

.was_from_text
|0987F4| LDA.w $0C5E,X

; Crystal?
|0987F7| CMP.b #$20 ; ITEMGET 20
|0987F9| BEQ .dungeon_prize

; Green pendant?
|0987FB| CMP.b #$37 ; ITEMGET 37
|0987FD| BEQ .dungeon_prize

; Blue pendant?
|0987FF| CMP.b #$38 ; ITEMGET 38
|098801| BEQ .dungeon_prize

; Red pendant?
|098803| CMP.b #$39 ; ITEMGET 39
|098805| BEQ .dungeon_prize

; 4/4 heart pieces container?
|098807| CMP.b #$26 ; ITEMGET 26
|098809| BNE .not_44_heart

|09880B| LDY.b #$02
|09880D| BRA .not_44_heart

.dungeon_prize
|09880F| LDY.b #$68

;---------------------------------------------------------------------------------------------------

.not_44_heart
|098811| TYA
|098812| STA.w $03B1,X

|098815| PLY

|098816| LDA.w $02E9
|098819| CMP.b #$01
|09881B| BNE .not_from_chest

;---------------------------------------------------------------------------------------------------

|09881D| PLA
|09881E| STA.b $73

|098820| PLA
|098821| STA.b $72

|098823| REP #$20

|098825| LDA.b $72
|098827| AND.w #$1F80

|09882A| LSR A
|09882B| LSR A
|09882C| LSR A
|09882D| LSR A

|09882E| STA.b $00

|098830| LDA.b $72
|098832| AND.w #$007E
|098835| ASL A
|098836| ASL A
|098837| STA.b $02

;---------------------------------------------------------------------------------------------------

|098839| SEP #$20

|09883B| LDA.b $01
|09883D| CLC
|09883E| ADC.w $062F
|098841| STA.b $01

|098843| LDA.b $03
|098845| CLC
|098846| ADC.w $062D
|098849| STA.b $03

|09884B| REP #$20

|09884D| LDA.w .offset_y,Y
|098850| AND.w #$00FF
|098853| ORA.w #$FF00

|098856| CLC
|098857| ADC.b $00
|098859| STA.b $00

|09885B| LDA.w .offset_x,Y
|09885E| AND.w #$00FF
|098861| CLC
|098862| ADC.b $02

|098864| BRL .proceed_to_finish_coords

;---------------------------------------------------------------------------------------------------

.not_from_chest
|098867| PHY

|098868| LDA.w $0C54,X
|09886B| BNE .not_text_or_ms

|09886D| LDA.w $0C5E,X
|098870| CMP.b #$01 ; ITEMGET 01
|098872| BNE .not_text_or_ms

|098874| JSL CalculateLinkSFXPan
|098878| ORA.b #$2C ; SFX2.2C
|09887A| STA.w $012E

|09887D| BRA .done_with_sfx

;---------------------------------------------------------------------------------------------------

.not_text_or_ms
|09887F| LDA.w $0C5E,X

; Boss heart?
|098882| CMP.b #$3E ; ITEMGET 3E
|098884| BEQ .done_with_sfx

; Heart piece?
|098886| CMP.b #$17 ; ITEMGET 17
|098888| BEQ .done_with_sfx

; Crystal?
|09888A| CMP.b #$20 ; ITEMGET 20
|09888C| BEQ .dungeon_prize_sfx

; Green pendant?
|09888E| CMP.b #$37 ; ITEMGET 37
|098890| BEQ .dungeon_prize_sfx

; Blue pendant?
|098892| CMP.b #$38 ; ITEMGET 38
|098894| BEQ .dungeon_prize_sfx

; Red pendant?
|098896| CMP.b #$39 ; ITEMGET 39
|098898| BNE .not_dungeon_prize_sfx

;---------------------------------------------------------------------------------------------------

.dungeon_prize_sfx
|09889A| JSL CalculateLinkSFXPan ; [BUG] this is bad and should not be here!
|09889E| ORA.b #$13 ; SONG 13
|0988A0| STA.w $012C

|0988A3| BRA .done_with_sfx

;---------------------------------------------------------------------------------------------------

.not_dungeon_prize_sfx
|0988A5| JSL CalculateLinkSFXPan
|0988A9| ORA.b #$0F ; SFX3.0F
|0988AB| STA.w $012F

;---------------------------------------------------------------------------------------------------

.done_with_sfx
|0988AE| LDA.b #$0A
|0988B0| STA.b $02
|0988B2| STZ.b $03

|0988B4| LDY.w $0C5E,X

|0988B7| LDA.w .width,Y
|0988BA| BEQ .set_coordinates

|0988BC| CPY.b #$20 ; ITEMGET 20
|0988BE| BNE .aint_a_crystal

|0988C0| STZ.b $02
|0988C2| BRA .set_coordinates

;---------------------------------------------------------------------------------------------------

.aint_a_crystal
|0988C4| LDA.b #$06
|0988C6| STA.b $02

;---------------------------------------------------------------------------------------------------

.set_coordinates
|0988C8| LDY.w $02E9

|0988CB| CPY.b #$03
|0988CD| BNE .not_from_ancilla

|0988CF| LDY.b #$00

.not_from_ancilla
|0988D1| STZ.b $08
|0988D3| STZ.b $09

|0988D5| CPY.b #$02
|0988D7| BNE .dont_adjust_altitude

|0988D9| LDA.b #$F8
|0988DB| STA.b $08
|0988DD| DEC.b $09

.dont_adjust_altitude
|0988DF| STY.b $04
|0988E1| STZ.b $05

;---------------------------------------------------------------------------------------------------

|0988E3| PLY

|0988E4| REP #$20

|0988E6| LDA.w #$FFF2
|0988E9| STA.b $00

|0988EB| LDA.b $04
|0988ED| BEQ .dont_adjust_y_for_text

|0988EF| LDA.w .offset_y,Y
|0988F2| AND.w #$00FF
|0988F5| ORA.w #$FF00
|0988F8| STA.b $00

.dont_adjust_y_for_text
|0988FA| LDA.b $00
|0988FC| CLC
|0988FD| ADC.b $20

|0988FF| CLC
|098900| ADC.b $08
|098902| STA.b $00

;---------------------------------------------------------------------------------------------------

|098904| LDA.b $04
|098906| BEQ .dont_adjust_x_for_text

|098908| LDA.w .offset_x,Y
|09890B| AND.w #$00FF
|09890E| STA.b $02

.dont_adjust_x_for_text
|098910| LDA.b $02
|098912| CLC
|098913| ADC.b $22

;---------------------------------------------------------------------------------------------------

.proceed_to_finish_coords
|098915| STA.b $02

|098917| SEP #$20

|098919| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.exit
|09891C| PLB

|09891D| RTL

;===================================================================================================

pool ItemReceipt_GiveBottledItem

.bottle_id
|09891E| db $16 ; ITEMGET 16 - EMPTY BOTTLE
|09891F| db $2B ; ITEMGET 2B - FULL BOTTLE (RED)
|098920| db $2C ; ITEMGET 2C - FULL BOTTLE (GREEN)
|098921| db $2D ; ITEMGET 2D - FULL BOTTLE (BLUE)
|098922| db $3D ; ITEMGET 3D - FULL BOTTLE (FAIRY)
|098923| db $3C ; ITEMGET 3C - FULL BOTTLE (BEE)
|098924| db $48 ; ITEMGET 48 - FULL BOTTLE (GOOD BEE)

.refill_id
|098925| db $2E ; ITEMGET 2E - POTION REFILL (RED)
|098926| db $2F ; ITEMGET 2F - POTION REFILL (GREEN)
|098927| db $30 ; ITEMGET 30 - POTION REFILL (BLUE)
|098928| db $FF ; null
|098929| db $0E ; ITEMGET 0E - BOTTLE REFILL (BEE)

endpool

;---------------------------------------------------------------------------------------------------

ItemReceipt_GiveBottledItem:
|09892A| STY.b $0C

|09892C| LDX.b #$06

.next_id_check
|09892E| LDA.w .bottle_id,X
|098931| CMP.b $0C
|098933| BEQ .contents_id_found

|098935| DEX
|098936| BPL .next_id_check

|098938| BRA .not_new_bottle

;---------------------------------------------------------------------------------------------------

.contents_id_found
|09893A| TXA
|09893B| CLC
|09893C| ADC.b #$02
|09893E| STA.b $0C

|098940| LDX.b #$00

.next_free_bottle_check
|098942| LDA.l $7EF35C,X
|098946| CMP.b #$02
|098948| BCS .slot_occupied

|09894A| LDA.b $0C
|09894C| STA.l $7EF35C,X

|098950| BRL .exit

.slot_occupied
|098953| INX
|098954| CPX.b #$04
|098956| BNE .next_free_bottle_check

;---------------------------------------------------------------------------------------------------

.not_new_bottle
|098958| STY.b $0C

|09895A| LDX.b #$04

.next_refill_check
|09895C| LDA.w .refill_id,X
|09895F| CMP.b $0C
|098961| BEQ .refill_matched

|098963| DEX
|098964| BPL .next_refill_check

|098966| BRA .exit

;---------------------------------------------------------------------------------------------------

.refill_matched
|098968| TXA
|098969| CLC
|09896A| ADC.b #$03
|09896C| STA.b $0C

; Look for an empty bottle to refill
|09896E| LDX.b #$00

.next_empty_bottle_check
|098970| LDA.l $7EF35C,X
|098974| CMP.b #$02
|098976| BNE .not_empty_bottle

|098978| LDA.b $0C
|09897A| STA.l $7EF35C,X

|09897E| BRA .exit

.not_empty_bottle
|098980| INX
|098981| CPX.b #$04
|098983| BNE .next_empty_bottle_check

;---------------------------------------------------------------------------------------------------

.exit
|098985| RTS

;===================================================================================================

pool AncillaAdd_TossedPondItem

.offset_y
|098986| db -13, -13, -13, -13, -13, -12, -12, -13
|09898E| db -13, -12, -12, -12, -10, -12, -12, -12
|098996| db -12, -12, -12, -12, -12, -12, -12, -12
|09899E| db -12, -12, -12, -12, -12, -12, -12, -12
|0989A6| db -12, -12, -12, -13, -12, -12, -12, -12
|0989AE| db -12, -12, -10, -12, -12, -12, -12, -12
|0989B6| db -12, -12, -12, -12, -12, -12, -12, -12
|0989BE| db -12, -12, -12, -12, -12, -12, -12, -12
|0989C6| db -12, -12, -12, -12, -12, -12, -12, -12
|0989CE| db -12, -13, -12, -12

.offset_x
|0989D2| db   4,   4,   4,   4,   4,   0,   0,   4
|0989DA| db   4,   4,   4,   4,   5,   0,   0,   0
|0989E2| db   0,   0,   0,   4,   0,   4,   0,   0
|0989EA| db   4,   0,   0,   0,   0,   0,   0,   0
|0989F2| db   0,   0,   0,   0,  11,   0,   0,   0
|0989FA| db   2,   0,   5,   0,   0,   0,   0,   0
|098A02| db   0,   0,   0,   0,   4,   4,   4,   0
|098A0A| db   0,   0,   0,   0,   0,   0,   0,   0
|098A12| db   0,   0,   4,   4,   0,   4,   0,   0
|098A1A| db   0,   4,   0,   0

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_TossedPondItem:
|098A1E| PHB
|098A1F| PHK
|098A20| PLB

|098A21| STX.w $02D8

|098A24| JSR AddAncilla
|098A27| BCS EXIT_098AA4

|098A29| JSL CalculateLinkSFXPan
|098A2D| ORA.b #$13 ; SFX3.13
|098A2F| STA.w $012F

|098A32| PHX

|098A33| LDY.w $02D8

|098A36| LDA.w AncillaAdd_ItemReceipt.item_gfx_index,Y
|098A39| STA.b $72

|098A3B| CMP.b #$FF
|098A3D| BEQ .invalid

; check if fire shield
|098A3F| CMP.b #$20
|098A41| BNE .continue

|098A43| JSL DecompressShieldGraphics

|098A47| LDA.b $72
|098A49| BRA .continue

.invalid
|098A4B| LDA.b #$00

;---------------------------------------------------------------------------------------------------

.continue
|098A4D| JSL WriteTo4BPPBuffer_item_gfx

|098A51| LDA.b $72
|098A53| CMP.b #$06
|098A55| BNE .not_fighter_sword

|098A57| JSL DecompressSwordGraphics

.not_fighter_sword
|098A5B| PLX

|098A5C| LDA.b #$80
|098A5E| STA.w $0308
|098A61| STZ.w $0309

|098A64| STZ.b $2F
|098A66| STZ.b $2E

|098A68| LDA.b #$14
|098A6A| STA.w $0294,X

|098A6D| LDA.b #$D8
|098A6F| STA.w $0C22,X

|098A72| STZ.w $0C2C,X
|098A75| STZ.w $029E,X

|098A78| LDA.b #$10
|098A7A| STA.w $0C68,X

|098A7D| LDA.w $02D8
|098A80| STA.w $0C5E,X

|098A83| TAY

|098A84| REP #$20

|098A86| LDA.w .offset_y,Y
|098A89| AND.w #$00FF
|098A8C| ORA.w #$FF00
|098A8F| CLC
|098A90| ADC.b $20
|098A92| STA.b $00

|098A94| LDA.w .offset_x,Y
|098A97| AND.w #$00FF
|098A9A| CLC
|098A9B| ADC.b $22
|098A9D| STA.b $02

|098A9F| SEP #$20

|098AA1| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

#EXIT_098AA4:
|098AA4| PLB

|098AA5| RTL

;===================================================================================================

pool AddHappinessPondRupees

.speed_z
|098AA6| db $14, $14, $14, $14
|098AAA| db $14, $10, $10, $10, $10
|098AAF| db $10

.speed_y
|098AB0| db $D8, $D8, $D8, $D8
|098AB4| db $D8, $E0, $E0, $E0, $E0
|098AB9| db $E0

.speed_x
|098ABA| db $00, $F4, $FA, $06
|098ABE| db $0C, $F7, $FB, $00, $05
|098AC3| db $09

; if the groupings above seem weird, this is why
.start_index
|098AC4| db $00
|098AC5| db $04
|098AC6| db $04
|098AC7| db $09

.end_index
|098AC8| db $FF
|098AC9| db $00
|098ACA| db $FF
|098ACB| db $FF

endpool

;---------------------------------------------------------------------------------------------------

AddHappinessPondRupees:
|098ACC| PHB
|098ACD| PHK
|098ACE| PLB

|098ACF| PHX
|098AD0| PHA

|098AD1| LDY.b #$09
|098AD3| LDA.b #$42 ; ANCILLA 42
|098AD5| JSR AddAncilla
|098AD8| BCC .free_slot

|098ADA| PLA
|098ADB| PLX

|098ADC| BRA EXIT_098AA4

;---------------------------------------------------------------------------------------------------

.free_slot
|098ADE| JSL CalculateLinkSFXPan
|098AE2| ORA.b #$13 ; SFX3.13
|098AE4| STA.w $012F

|098AE7| LDY.b #$35 ; ITEMGET 35
|098AE9| LDA.w AncillaAdd_ItemReceipt.item_gfx_index,Y
|098AEC| STA.b $72

|098AEE| JSL WriteTo4BPPBuffer_item_gfx

|098AF2| LDA.b #$80
|098AF4| STA.w $0308
|098AF7| STZ.w $0309

|098AFA| STZ.b $2F
|098AFC| STZ.b $2E

|098AFE| LDX.b #$09
|098B00| LDA.b #$00

;---------------------------------------------------------------------------------------------------

.next_clear
|098B02| STA.l $7F586C,X

|098B06| DEX
|098B07| BPL .next_clear

|098B09| PLA
|098B0A| TAX

|098B0B| LDA.w .end_index,X
|098B0E| STA.b $0F

|098B10| LDA.w .start_index,X
|098B13| TAY

;---------------------------------------------------------------------------------------------------

|098B14| LDX.b #$09

.next_rupee
|098B16| LDA.b #$01
|098B18| STA.l $7F586C,X

|098B1C| LDA.w .speed_z,Y
|098B1F| STA.l $7F5818,X

|098B23| LDA.w .speed_y,Y
|098B26| STA.l $7F5800,X

|098B2A| LDA.w .speed_x,Y
|098B2D| STA.l $7F580C,X

|098B31| LDA.b #$00
|098B33| STA.l $7F5854,X
|098B37| STA.l $7F58AA,X

|098B3B| LDA.b #$10
|098B3D| STA.l $7F5860,X

|098B41| LDA.b #$35
|098B43| STA.l $7F587A,X

|098B47| REP #$20

|098B49| LDA.b $20
|098B4B| CLC
|098B4C| ADC.w #$FFF4
|098B4F| STA.b $00

|098B51| LDA.b $22
|098B53| CLC
|098B54| ADC.w #$0004
|098B57| STA.b $02

|098B59| SEP #$20

|098B5B| LDA.b $00
|098B5D| STA.l $7F5824,X

|098B61| LDA.b $01
|098B63| STA.l $7F5830,X

|098B67| LDA.b $02
|098B69| STA.l $7F583C,X

|098B6D| LDA.b $03
|098B6F| STA.l $7F5848,X

|098B73| DEX

|098B74| DEY
|098B75| CPY.b $0F
|098B77| BNE .next_rupee

|098B79| PLX

;---------------------------------------------------------------------------------------------------

#EXIT_098B7A:
|098B7A| PLB

|098B7B| RTL

;===================================================================================================

pool AncillaAdd_FallingPrize

.receipt_ids

.ether_id
|098B7C| db $10 ; ITEMGET 10

.green_pendant_id
|098B7D| db $37 ; ITEMGET 37

.red_pendant_id
|098B7E| db $39 ; ITEMGET 39

.blue_pendant_id
|098B7F| db $38 ; ITEMGET 38

.heart_container_id
|098B80| db $26 ; ITEMGET 26

.bombos_id
|098B81| db $0F ; ITEMGET 0F

.crystal_id
|098B82| db $20 ; ITEMGET 20

;---------------------------------------------------------------------------------------------------

.fall_height
|098B83| db $60 ; ether
|098B84| db $80 ; green pendant
|098B85| db $80 ; red pendant
|098B86| db $80 ; blue pendant
|098B87| db $80 ; heart container
|098B88| db $80 ; bombos
|098B89| db $80 ; crystal

.fall_y
|098B8A| dw $0048 ; ether
|098B8C| dw $0078 ; green pendant
|098B8E| dw $0078 ; red pendant
|098B90| dw $0078 ; blue pendant
|098B92| dw $0078 ; heart container
|098B94| dw $0068 ; bombos
|098B96| dw $0078 ; crystal

.fall_x
|098B98| dw $0078 ; ether
|098B9A| dw $0078 ; green pendant
|098B9C| dw $0078 ; red pendant
|098B9E| dw $0078 ; blue pendant
|098BA0| dw $0078 ; heart container
|098BA2| dw $0080 ; bombos
|098BA4| dw $0078 ; crystal

.fall_timer
|098BA6| db  64 ; ether
|098BA7| db   0 ; green pendant
|098BA8| db   0 ; red pendant
|098BA9| db   0 ; blue pendant
|098BAA| db   0 ; heart container
|098BAB| db $FF ; bombos
|098BAC| db   0 ; crystal

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_FallingPrize:
|098BAD| PHB
|098BAE| PHK
|098BAF| PLB

|098BB0| STX.w $02D8

|098BB3| JSR AddAncilla
|098BB6| BCS EXIT_098B7A

|098BB8| PHX

|098BB9| LDY.w $02D8

|098BBC| LDA.w .receipt_ids,Y
|098BBF| STA.w $0C5E,X

|098BC2| CMP.w .ether_id
|098BC5| BEQ .is_ether

|098BC7| CMP.w .bombos_id
|098BCA| BNE .not_medallion

.is_ether
|098BCC| TAY

|098BCD| LDA.w AncillaAdd_ItemReceipt.item_gfx_index,Y
|098BD0| STA.b $72

|098BD2| JSL WriteTo4BPPBuffer_item_gfx

;---------------------------------------------------------------------------------------------------

.not_medallion
|098BD6| PLX

|098BD7| LDA.b #$D0
|098BD9| STA.w $0294,X

|098BDC| STZ.w $0C22,X
|098BDF| STZ.w $0C2C,X

|098BE2| STZ.w $0C54,X

|098BE5| LDY.w $02D8

|098BE8| LDA.w .fall_height,Y
|098BEB| STA.w $029E,X

|098BEE| LDA.b #$09
|098BF0| STA.w $03B1,X

|098BF3| STZ.w $039F,X
|098BF6| STZ.w $0385,X

|098BF9| LDA.w .fall_timer,Y
|098BFC| STA.w $0394,X

|098BFF| LDA.w $0C5E,X
|098C02| STA.w $02D8

|098C05| CPY.b #$00
|098C07| BEQ .was_medallion

|098C09| CPY.b #$05
|098C0B| BEQ .was_medallion

|098C0D| LDA.w $040C
|098C10| CMP.b #$14 ; DUNGEON 14
|098C12| BNE .not_hera

;---------------------------------------------------------------------------------------------------

.hera
|098C14| LDA.b $21
|098C16| AND.b #$FE
|098C18| INC A
|098C19| STA.b $01
|098C1B| STZ.b $00

|098C1D| LDA.b $23
|098C1F| AND.b #$FE
|098C21| INC A
|098C22| STA.b $03
|098C24| STZ.b $02

|098C26| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.not_hera
|098C29| TYA
|098C2A| ASL A
|098C2B| TAY

|098C2C| REP #$20

|098C2E| LDA.w .fall_y,Y
|098C31| CLC
|098C32| ADC.b $E8
|098C34| STA.b $00

|098C36| LDA.w .fall_x,Y
|098C39| CLC
|098C3A| ADC.b $E2
|098C3C| STA.b $02

|098C3E| SEP #$20

|098C40| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.was_medallion
|098C43| TYA
|098C44| ASL A
|098C45| TAY

|098C46| REP #$20

|098C48| LDA.w .fall_y,Y
|098C4B| CLC
|098C4C| ADC.b $E8
|098C4E| STA.b $00

|098C50| LDA.b $22
|098C52| CLC
|098C53| ADC.w #$0000
|098C56| STA.b $02

|098C58| SEP #$20

|098C5A| BRL SetAncillaCoordinatesAndExit

;===================================================================================================

UNREACHABLE_098C5D:
|098C5D| PLB

|098C5E| RTL

;===================================================================================================

AncillaAdd_DugUpFlute:
|098C5F| PHB
|098C60| PHK
|098C61| PLB

|098C62| JSR AddAncilla
|098C65| BCS .exit

|098C67| STZ.w $0C54,X
|098C6A| STZ.w $029E,X

|098C6D| LDA.l FluteBounce
|098C71| STA.w $0294,X

|098C74| LDY.b #$08
|098C76| LDA.b $2F

|098C78| CMP.b #$04
|098C7A| BNE .not_facing_left

|098C7C| LDY.b #$F8

.not_facing_left
|098C7E| TYA
|098C7F| STA.w $0C2C,X

|098C82| PHX

|098C83| LDA.b #$0C
|098C85| JSL WriteTo4BPPBuffer_item_gfx

|098C89| PLX

|098C8A| REP #$20

; [HARDCODED] coordinates
|098C8C| LDA.w #$0A8A
|098C8F| STA.b $00

|098C91| LDA.w #$0490
|098C94| STA.b $02

|098C96| SEP #$20

|098C98| BRL SetAncillaCoordinatesAndExit

.exit
|098C9B| PLB

|098C9C| RTL

;===================================================================================================

AncillaAdd_ChargedSpinAttackSparkle:
|098C9D| PHB
|098C9E| PHK
|098C9F| PLB

|098CA0| LDX.b #$09

.next_slot
|098CA2| LDA.w $0C4A,X
|098CA5| BEQ .free_slot

|098CA7| CMP.b #$3C ; ANCILLA 3C
|098CA9| BEQ .free_slot

|098CAB| DEX
|098CAC| BPL .next_slot

|098CAE| BRA .exit

;---------------------------------------------------------------------------------------------------

.free_slot
|098CB0| LDA.b #$0D ; ANCILLA 0D
|098CB2| STA.w $0C4A,X

|098CB5| LDA.b $EE
|098CB7| STA.w $0C7C,X

|098CBA| LDA.b #$06
|098CBC| STA.w $0C68,X

.exit
|098CBF| PLB

|098CC0| RTL

;===================================================================================================

pool AncillaAdd_ExplodingWeatherVane

.speed_x
|098CC1| db   8,  10,   9,   4
|098CC5| db  11,  12, -10,  -8
|098CC9| db   4,  -6, -10,  -4

.speed_z
|098CCD| db  20,  22,  20,  20
|098CD1| db  22,  20,  20,  22
|098CD5| db  20,  22,  20,  20

;---------------------------------------------------------------------------------------------------

.position_y
|098CD9| db $B0, $A3, $A0, $A2
|098CDD| db $A0, $A8, $A0, $A0
|098CE1| db $A8, $A1, $B0, $A0

.position_x
|098CE5| db $00, $02, $04, $06
|098CE9| db $03, $08, $0E, $08
|098CED| db $0C, $07, $0A, $08

.position_z
|098CF1| db $30, $12, $20, $14
|098CF5| db $16, $18, $20, $14
|098CF9| db $18, $16, $14, $20

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_ExplodingWeatherVane:
|098CFD| PHB
|098CFE| PHK
|098CFF| PLB

|098D00| JSR AddAncilla
|098D03| BCS .exit

|098D05| LDA.b #$0A
|098D07| STA.w $03B1,X

|098D0A| LDA.b #$80
|098D0C| STA.w $0394,X

|098D0F| STZ.w $0C54,X
|098D12| STZ.w $039F,X

|098D15| STZ.w $012E

|098D18| LDA.b #$F2 ; SONG F2 - half volume
|098D1A| STA.w $012C

|098D1D| LDA.b #$17 ; SFX1.17
|098D1F| STA.w $012D

|098D22| LDA.b #$00
|098D24| STA.l $7F58B8

|098D28| REP #$20

|098D2A| LDA.w #$0280
|098D2D| STA.l $7F58B6

;---------------------------------------------------------------------------------------------------

|098D31| SEP #$20

|098D33| LDX.b #$0B

.next
|098D35| LDA.b #$00
|098D37| STA.l $7F5800,X

|098D3B| LDA.w .speed_x,X
|098D3E| STA.l $7F580C,X

|098D42| LDA.w .speed_z,X
|098D45| STA.l $7F5818,X

|098D49| LDA.w .position_y,X
|098D4C| STA.l $7F5824,X

|098D50| LDA.b #$07
|098D52| STA.l $7F5830,X

|098D56| LDA.w .position_x,X
|098D59| STA.l $7F583C,X

|098D5D| LDA.b #$02
|098D5F| STA.l $7F5848,X

|098D63| LDA.w .position_z,X
|098D66| STA.l $7F5854,X

|098D6A| LDA.b #$01
|098D6C| STA.l $7F5860,X

|098D70| TXA
|098D71| AND.b #$01
|098D73| STA.l $7F586C,X

|098D77| DEX
|098D78| BPL .next

;---------------------------------------------------------------------------------------------------

.exit
|098D7A| PLB

|098D7B| RTL

;===================================================================================================

AncillaAdd_CutsceneDuck:
|098D7C| PHB
|098D7D| PHK
|098D7E| PLB

|098D7F| JSR CheckAncillaPresence
|098D82| BCS .exit

|098D84| JSR AddAncilla
|098D87| BCS .exit

|098D89| LDA.b #$02
|098D8B| STA.w $0C72,X

|098D8E| INC A
|098D8F| STA.w $039F,X

|098D92| STZ.w $0C54,X

|098D95| LDA.b #$20
|098D97| STA.w $03B1,X

|098D9A| LDA.b #$74
|098D9C| STA.w $0C5E,X

|098D9F| STZ.w $0294,X
|098DA2| STZ.w $0385,X
|098DA5| STZ.w $029E,X
|098DA8| STZ.w $03A9,X

|098DAB| REP #$20

; [HARDCODED] coordinates
|098DAD| LDA.w #$0788
|098DB0| STA.b $00

|098DB2| LDA.w #$0200
|098DB5| STA.b $02

|098DB7| SEP #$20

|098DB9| BRL SetAncillaCoordinatesAndExit

.exit
|098DBC| PLB

|098DBD| RTL

;===================================================================================================

AncillaAdd_SomariaPlatformPoof:
|098DBE| LDA.b #$39 ; ANCILLA 39
|098DC0| STA.w $0C4A,X

|098DC3| LDA.b #$07
|098DC5| STA.w $03B1,X

|098DC8| PHX
|098DC9| PHY

|098DCA| LDY.b #$0F

.next_slot
|098DCC| LDA.w $0E20,Y
|098DCF| CMP.b #$ED ; SPRITE ED
|098DD1| BNE .not_platform

|098DD3| LDA.b #$00
|098DD5| STA.w $0DD0,Y

|098DD8| STA.w $02F5

.not_platform
|098DDB| DEY
|098DDC| BPL .next_slot

|098DDE| JSL TileDetect_BigArea_long

|098DE2| PLY
|098DE3| PLX

|098DE4| RTL

;===================================================================================================

AncillaAdd_SuperBombExplosion:
|098DE5| PHB
|098DE6| PHK
|098DE7| PLB

|098DE8| JSR AddAncilla
|098DEB| BCC .free_slot

|098DED| BRL .exit

.free_slot
|098DF0| STZ.w $03EA,X
|098DF3| STZ.w $0C54,X

|098DF6| STZ.w $03C2,X
|098DF9| STZ.w $0385,X

|098DFC| LDA.l BombTimers+1
|098E00| STA.w $039F,X

|098E03| LDA.b #$01
|098E05| STA.w $0C5E,X

|098E08| PHX

|098E09| LDX.w $02CF

|098E0C| LDA.w $1A00,X
|098E0F| STA.b $00

|098E11| LDA.w $1A14,X
|098E14| STA.b $01

|098E16| LDA.w $1A28,X
|098E19| STA.b $02

|098E1B| LDA.w $1A3C,X
|098E1E| STA.b $03

|098E20| PLX

|098E21| REP #$20

|098E23| LDA.b $00
|098E25| CLC
|098E26| ADC.w #$0010
|098E29| STA.b $00

|098E2B| LDA.b $02
|098E2D| CLC
|098E2E| ADC.w #$0008
|098E31| STA.b $02

|098E33| SEP #$20

|098E35| BRL SetAncillaCoordinatesAndExit

.exit
|098E38| PLB

|098E39| RTL

;===================================================================================================

ConfigureRevivalAncillae:
|098E3A| PHB
|098E3B| PHK
|098E3C| PLB

|098E3D| LDA.b #$50
|098E3F| STA.w $0109

|098E42| LDX.b #$00

|098E44| LDA.b #$40
|098E46| STA.w $039F,X

|098E49| STZ.w $0C54,X

|098E4C| LDA.b #$08
|098E4E| STA.w $0294,X

|098E51| STZ.w $0385,X

|098E54| LDA.b #$05
|098E56| STA.w $0394,X

|098E59| STZ.w $0C5E,X
|098E5C| STZ.w $0380,X

|098E5F| REP #$20

|098E61| LDA.b $20
|098E63| STA.b $00

|098E65| LDA.b $22
|098E67| STA.b $02

|098E69| SEP #$20

|098E6B| JSR SetAncillaCoordinates

|098E6E| STZ.w $029E,X

|098E71| INX

|098E72| STZ.w $029E,X

|098E75| LDA.b #$F0
|098E77| STA.w $039F,X

|098E7A| STZ.w $0C54,X
|098E7D| STZ.w $0380,X

|098E80| INX

|098E81| LDA.b #$02
|098E83| STA.w $0C5E,X
|098E86| STA.b $00

|098E88| INC A
|098E89| STA.w $03B1,X

|098E8C| LDA.b #$08
|098E8E| STA.w $039F,X

|098E91| STZ.w $0C54,X

;---------------------------------------------------------------------------------------------------

|098E94| PHX

|098E95| LDA.b #$03
|098E97| STA.w $0C72,X

|098E9A| TAX

|098E9B| LDA.l PowderDraw.group_offset,X
|098E9F| CLC
|098EA0| ADC.b $00
|098EA2| TAX

|098EA3| LDA.l PowderDraw.anim_step,X

|098EA7| PLX

|098EA8| STA.w $03C2,X

|098EAB| LDY.b #$06

|098EAD| REP #$20

|098EAF| LDA.b $20
|098EB1| CLC
|098EB2| ADC.w AncillaAdd_MagicPowder.offset_y,Y
|098EB5| CLC
|098EB6| ADC.w #$FFEC
|098EB9| STA.b $00

|098EBB| LDA.b $22
|098EBD| CLC
|098EBE| ADC.w #$FFF8
|098EC1| CLC
|098EC2| ADC.w AncillaAdd_MagicPowder.offset_x,Y
|098EC5| STA.b $02

|098EC7| SEP #$20

|098EC9| BRL SetAncillaCoordinatesAndExit

;===================================================================================================

AncillaAdd_CaneOfByrnaInitSpark:
|098ECC| PHB
|098ECD| PHK
|098ECE| PLB

|098ECF| PHA

;---------------------------------------------------------------------------------------------------

|098ED0| LDX.b #$04

.next_clear
|098ED2| LDA.w $0C4A,X
|098ED5| CMP.b #$31 ; ANCILLA 31
|098ED7| BNE .not_spark

|098ED9| STZ.w $0C4A,X

.not_spark
|098EDC| DEX
|098EDD| BPL .next_clear

;---------------------------------------------------------------------------------------------------

|098EDF| PLA
|098EE0| JSR AddAncilla
|098EE3| BCS .exit

|098EE5| STZ.w $0C5E,X

; TODO analyze
|098EE8| LDA.b #$09
|098EEA| STA.w $03B1,X

|098EED| LDA.b #$01
|098EEF| STA.w $037B

|098EF2| INC A
|098EF3| STA.w $039F,X

.exit
|098EF6| PLB

|098EF7| RTL

;===================================================================================================

pool AncillaAdd_LampFlame

.offset_y
|098EF8| dw -16 ; up
|098EFA| dw  24 ; down
|098EFC| dw   4 ; left
|098EFE| dw   4 ; right

.offset_x
|098F00| dw   0 ; up
|098F02| dw   0 ; down
|098F04| dw -20 ; left
|098F06| dw  18 ; right

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_LampFlame:
|098F08| PHB
|098F09| PHK
|098F0A| PLB

|098F0B| JSR AddAncilla
|098F0E| BCS .exit

|098F10| STZ.w $0C5E,X
|098F13| STZ.w $03B1,X

|098F16| LDA.b #$17
|098F18| STA.w $0C68,X

|098F1B| LDA.b $2F
|098F1D| LSR A
|098F1E| STA.w $0C72,X

|098F21| LDY.b $2F

|098F23| REP #$20

|098F25| LDA.b $20
|098F27| CLC
|098F28| ADC.w .offset_y,Y
|098F2B| STA.b $00

|098F2D| LDA.b $22
|098F2F| CLC
|098F30| ADC.w .offset_x,Y
|098F33| STA.b $02

|098F35| SEP #$20

|098F37| JSR SetAncillaCoordinates
|098F3A| JSL CalculateAncillaSFXPan

|098F3E| ORA.b #$2A ; SFX2.2A
|098F40| STA.w $012E

|098F43| PLB

|098F44| RTL

.exit
|098F45| PLB

|098F46| RTL

;===================================================================================================

AncillaAdd_ShovelDirt:
|098F47| PHB
|098F48| PHK
|098F49| PLB

|098F4A| JSR AddAncilla
|098F4D| BCS .exit

|098F4F| STZ.w $0C5E,X

|098F52| LDA.b #$14
|098F54| STA.w $0C68,X

|098F57| REP #$20

|098F59| LDA.b $20
|098F5B| STA.b $00

|098F5D| LDA.b $22
|098F5F| STA.b $02

|098F61| SEP #$20

|098F63| BRL SetAncillaCoordinatesAndExit

.exit
|098F66| PLB

|098F67| RTL

;===================================================================================================

AncillaAdd_MasterSwordCutscene:
|098F68| PHB
|098F69| PHK
|098F6A| PLB

|098F6B| JSR AddAncilla
|098F6E| BCS .exit

|098F70| STZ.w $0C5E,X

|098F73| LDA.b #$02
|098F75| STA.w $03B1,X

|098F78| LDA.b #$40
|098F7A| STA.w $0C68,X

|098F7D| REP #$20

|098F7F| LDA.b $20
|098F81| CLC
|098F82| ADC.w #$FFF8
|098F85| STA.b $00

|098F87| LDA.b $22
|098F89| CLC
|098F8A| ADC.w #$0008
|098F8D| STA.b $02

|098F8F| SEP #$20

|098F91| BRL SetAncillaCoordinatesAndExit

.exit
|098F94| PLB

|098F95| RTL

;===================================================================================================

pool AncillaAdd_DashDust

.offset_y
|098F96| dw $14 ; up
|098F98| dw $04 ; down
|098F9A| dw $10 ; left
|098F9C| dw $10 ; right

.offset_x
|098F9E| dw $04 ; up
|098FA0| dw $04 ; down
|098FA2| dw $06 ; left
|098FA4| dw $00 ; right

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_DashDust:
|098FA6| PHB
|098FA7| PHK
|098FA8| PLB

|098FA9| LDX.b #$01
|098FAB| BRA .continue

;---------------------------------------------------------------------------------------------------

#AncillaAdd_DashDust_charging:
|098FAD| PHB
|098FAE| PHK
|098FAF| PLB

|098FB0| LDX.b #$00

.continue
|098FB2| STX.b $72

|098FB4| JSR AddAncilla
|098FB7| BCS .exit

|098FB9| LDA.b $72
|098FBB| STA.w $0C54,X

|098FBE| STZ.w $0C5E,X

|098FC1| LDA.b #$03
|098FC3| STA.w $0C68,X

|098FC6| LDY.b $2F
|098FC8| TYA
|098FC9| LSR A
|098FCA| STA.w $0C72,X

|098FCD| LDA.b $72
|098FCF| BNE .mobile

;---------------------------------------------------------------------------------------------------

.immobile
|098FD1| REP #$20

|098FD3| LDA.b $20
|098FD5| CLC
|098FD6| ADC.w #$0014
|098FD9| STA.b $00

|098FDB| LDA.b $22
|098FDD| STA.b $02

|098FDF| SEP #$20

|098FE1| JMP.w SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.mobile
|098FE4| REP #$20

|098FE6| LDA.b $20
|098FE8| CLC
|098FE9| ADC.w .offset_y,Y
|098FEC| STA.b $00

|098FEE| LDA.b $22
|098FF0| CLC
|098FF1| ADC.w .offset_x,Y
|098FF4| STA.b $02

|098FF6| SEP #$20

|098FF8| JMP.w SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.exit
|098FFB| PLB

|098FFC| RTL

;===================================================================================================

pool AncillaAdd_BlastWallFireball

.speed
|098FFD| db -64,   0
|098FFF| db -22,  42
|099001| db -38,  38
|099003| db -42,  22
|099005| db   0,  64
|099007| db  22,  42
|099009| db  38,  38
|09900B| db  42,  22
|09900D| db  64,   0
|09900F| db  22, -42
|099011| db  38, -38
|099013| db  42, -22
|099015| db   0, -64
|099017| db -22, -42
|099019| db -38, -38
|09901B| db -42, -22

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_BlastWallFireball:
|09901D| PHB
|09901E| PHK
|09901F| PLB

|099020| LDX.b #$0A

.check_next
|099022| LDA.w $0C4A,X
|099025| BEQ .free_slot

|099027| DEX
|099028| CPX.b #$04
|09902A| BNE .check_next

|09902C| LDX.b #$FF

|09902E| BRL .exit

;---------------------------------------------------------------------------------------------------

.free_slot
|099031| LDA.b #$32 ; ANCILLA 32
|099033| STA.w $0C4A,X

|099036| LDA.b $EE
|099038| STA.w $0C7C,X

|09903B| LDA.b #$10
|09903D| STA.l $7F0040,X

|099041| LDA.b $1A
|099043| AND.b #$0F
|099045| ASL A
|099046| TAY

|099047| LDA.w .speed+0,Y
|09904A| STA.w $0C22,X

|09904D| LDA.w .speed+1,Y
|099050| STA.w $0C2C,X

|099053| REP #$20

|099055| PHX

|099056| LDX.b $04

|099058| LDA.l $7F0020,X
|09905C| CLC
|09905D| ADC.w #$0008
|099060| STA.b $00

|099062| LDA.l $7F0030,X
|099066| CLC
|099067| ADC.w #$0010
|09906A| STA.b $02

|09906C| PLX

|09906D| SEP #$20

|09906F| BRL SetAncillaCoordinatesAndExit

.exit
|099072| PLB

|099073| RTL

;===================================================================================================

pool AncillaAdd_Arrow

.speed_y
|099074| db -48 ; up
|099075| db  48 ; down
|099076| db   0 ; left
|099077| db   0 ; right

.speed_x
|099078| db   0 ; up
|099079| db   0 ; down
|09907A| db -48 ; left
|09907B| db  48 ; right

.unused
|09907C| db $08 ; up
|09907D| db $04 ; down
|09907E| db $02 ; left
|09907F| db $01 ; right

.offset_y
|099080| dw  -4 ; up
|099082| dw   3 ; down
|099084| dw   4 ; left
|099086| dw   4 ; right

.offset_x
|099088| dw   4 ; up
|09908A| dw   4 ; down
|09908C| dw   0 ; left
|09908E| dw   4 ; right

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_Arrow:
|099090| PHB
|099091| PHK
|099092| PLB

|099093| STX.b $76

|099095| JSR CheckAncillaPresence
|099098| BCC .none_exist

|09909A| BRL .exit

.none_exist
|09909D| JSR FindArrowAncillaSlot
|0990A0| BCC .free_slot

|0990A2| BRL .exit

;---------------------------------------------------------------------------------------------------

.free_slot
|0990A5| JSL CalculateLinkSFXPan
|0990A9| ORA.b #$07 ; SFX2.07
|0990AB| STA.w $012E

|0990AE| STZ.w $03C5,X

|0990B1| LDA.b #$08
|0990B3| STA.w $0C5E,X

|0990B6| LDA.b $76
|0990B8| LSR A
|0990B9| TAY

|0990BA| ORA.b #$04
|0990BC| STA.w $0C72,X

|0990BF| LDA.w .speed_y,Y
|0990C2| STA.w $0C22,X

|0990C5| LDA.w .speed_x,Y
|0990C8| STA.w $0C2C,X

|0990CB| LDY.b $76

|0990CD| REP #$20

|0990CF| LDA.b $72
|0990D1| CLC
|0990D2| ADC.w #$0008
|0990D5| CLC
|0990D6| ADC.w .offset_y,Y
|0990D9| STA.b $00

|0990DB| LDA.b $74
|0990DD| CLC
|0990DE| ADC.w .offset_x,Y
|0990E1| STA.b $02

|0990E3| SEP #$20

|0990E5| JSR SetAncillaCoordinates

|0990E8| SEC

|0990E9| PLB

|0990EA| RTL

;---------------------------------------------------------------------------------------------------

.exit
|0990EB| CLC

|0990EC| PLB

|0990ED| RTL

;===================================================================================================

AncillaAdd_BunnyPoof:
|0990EE| PHB
|0990EF| PHK
|0990F0| PLB

|0990F1| JSR AddAncilla
|0990F4| BCS EXIT_099149

|0990F6| LDA.b #$0C
|0990F8| STA.b $4B

|0990FA| STZ.w $0C54,X

|0990FD| LDA.w $02E0
|099100| BNE .bunny

|099102| JSL CalculateLinkSFXPan
|099106| ORA.b #$14 ; SFX2.14
|099108| STA.w $012E

|09910B| BRA .proceed

.bunny
|09910D| JSL CalculateLinkSFXPan
|099111| ORA.b #$15 ; SFX2.15
|099113| STA.w $012E

.proceed
|099116| BRA AncillaAdd_ArbitraryPoof

;===================================================================================================

AncillaAdd_CapePoof:
|099118| PHB
|099119| PHK
|09911A| PLB

|09911B| JSR AddAncilla
|09911E| BCS EXIT_099149

|099120| LDA.b #$01
|099122| STA.w $0C54,X
|099125| STA.w $02E1

|099128| TSB.b $50

|09912A| STZ.b $67
|09912C| STZ.b $26

;===================================================================================================

AncillaAdd_ArbitraryPoof:
|09912E| STZ.w $0C5E,X

|099131| LDA.b #$07
|099133| STA.w $03B1,X

|099136| REP #$20

|099138| LDA.b $20
|09913A| CLC
|09913B| ADC.w #$0004
|09913E| STA.b $00

|099140| LDA.b $22
|099142| STA.b $02

|099144| SEP #$20

|099146| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

#EXIT_099149:
|099149| PLB

|09914A| RTL

;===================================================================================================

AncillaAdd_DwarfPoof:
|09914B| PHB
|09914C| PHK
|09914D| PLB

|09914E| JSR AddAncilla
|099151| BCS .exit

|099153| LDA.l $7EF3CC
|099157| CMP.b #$08 ; FOLLOWER 08
|099159| BNE .not_dwarf

|09915B| JSL CalculateLinkSFXPan
|09915F| ORA.b #$14 ; SFX2.14
|099161| STA.w $012E

|099164| BRA .continue

.not_dwarf
|099166| JSL CalculateLinkSFXPan
|09916A| ORA.b #$15 ; SFX2.15
|09916C| STA.w $012E

;---------------------------------------------------------------------------------------------------

.continue
|09916F| STZ.w $0C5E,X
|099172| STZ.w $0C54,X

|099175| LDA.b #$07
|099177| STA.w $03B1,X

|09917A| LDA.b #$01
|09917C| STA.w $02F9

|09917F| LDY.w $02CF

|099182| LDA.w $1A00,Y
|099185| STA.b $00

|099187| LDA.w $1A14,Y
|09918A| STA.b $01

|09918C| LDA.w $1A28,Y
|09918F| STA.b $02

|099191| LDA.w $1A3C,Y
|099194| STA.b $03

|099196| REP #$20

|099198| LDA.b $00
|09919A| CLC
|09919B| ADC.w #$0004
|09919E| STA.b $00

|0991A0| LDA.b $02
|0991A2| CLC
|0991A3| ADC.w #$0000
|0991A6| STA.b $02

|0991A8| SEP #$20

|0991AA| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.exit
|0991AD| PLB

|0991AE| RTL

;===================================================================================================

AncillaAdd_BushPoof:
|0991AF| PHB
|0991B0| PHK
|0991B1| PLB

|0991B2| LDA.w $0301
|0991B5| AND.b #$40
|0991B7| BEQ .exit

|0991B9| LDY.b #$04
|0991BB| LDA.b #$3F ; ANCILLA 3F
|0991BD| JSR AddAncilla
|0991C0| BCS .exit

|0991C2| STZ.w $0C5E,X

|0991C5| LDA.b #$07
|0991C7| STA.w $0C68,X

|0991CA| JSL CalculateLinkSFXPan
|0991CE| ORA.b #$15 ; SFX2.15
|0991D0| STA.w $012E

|0991D3| REP #$20

|0991D5| LDA.b $74
|0991D7| CLC
|0991D8| ADC.w #$FFFE
|0991DB| STA.b $00

|0991DD| LDA.b $72
|0991DF| STA.b $02

|0991E1| SEP #$20

|0991E3| JMP.w SetAncillaCoordinatesAndExit

.exit
|0991E6| PLB

|0991E7| RTL

;===================================================================================================

AncillaAdd_EtherSpell:
|0991E8| PHB
|0991E9| PHK
|0991EA| PLB

|0991EB| JSR AddAncilla
|0991EE| BCC .free_slot

|0991F0| BRL .exit

;---------------------------------------------------------------------------------------------------

.free_slot
|0991F3| STZ.w $0C5E,X

|0991F6| STZ.w $03C2,X

|0991F9| STZ.w $0C54,X

|0991FC| LDA.b #$01
|0991FE| STA.w $0112

|099201| INC A
|099202| STA.w $03B1,X

|099205| INC A
|099206| STA.w $039F,X

|099209| LDA.b #$7F
|09920B| STA.w $0C22,X

|09920E| LDA.b #$28
|099210| STA.l $7F5808

|099214| LDA.b #$09
|099216| STA.w $0AAA

|099219| LDA.b #$40
|09921B| STA.l $7F5812

|09921F| JSL CalculateLinkSFXPan
|099223| ORA.b #$26 ; SFX3.26
|099225| STA.w $012F

|099228| LDA.b #$00
|09922A| STA.l $7F5800

|09922E| LDA.b #$08
|099230| STA.l $7F5801

|099234| LDA.b #$10
|099236| STA.l $7F5802

|09923A| LDA.b #$18
|09923C| STA.l $7F5803

|099240| LDA.b #$20
|099242| STA.l $7F5804

|099246| LDA.b #$28
|099248| STA.l $7F5805

|09924C| LDA.b #$30
|09924E| STA.l $7F5806

|099252| LDA.b #$38
|099254| STA.l $7F5807

;---------------------------------------------------------------------------------------------------

|099258| REP #$20

|09925A| LDA.b $20
|09925C| STA.l $7F5813

|099260| LDA.w #$FFF0
|099263| CLC
|099264| ADC.b $E8
|099266| STA.b $00

|099268| AND.w #$00F0
|09926B| STA.l $7F580C

|09926F| LDA.b $22
|099271| STA.b $02
|099273| STA.l $7F5815

|099277| CLC
|099278| ADC.w #$0008
|09927B| STA.l $7F580E

|09927F| LDA.b $20
|099281| SEC
|099282| SBC.w #$0010
|099285| STA.l $7F580A

|099289| CLC
|09928A| ADC.w #$0024
|09928D| STA.l $7F5810

|099291| SEP #$20

|099293| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.exit
|099296| PLB

|099297| RTL

;===================================================================================================

AncillaAdd_SwordUpSparkle:
|099298| PHB
|099299| PHK
|09929A| PLB

|09929B| LDA.l $7EF359
|09929F| INC A
|0992A0| AND.b #$FE
|0992A2| BEQ .exit

|0992A4| LDY.b #$00
|0992A6| LDA.b #$3B ; ANCILLA 3B
|0992A8| JSR AddAncilla
|0992AB| BCS .exit

|0992AD| STZ.w $0C5E,X

|0992B0| LDA.b #$01
|0992B2| STA.w $039F,X

|0992B5| LDA.b #$22
|0992B7| STA.w $03B1,X

.exit
|0992BA| PLB

|0992BB| RTL

;===================================================================================================

pool AncillaAdd_MagicPowder

.offset_y
|0992BC| dw   1 ; up
|0992BE| dw  40 ; down
|0992C0| dw  22 ; left
|0992C2| dw  22 ; right

.offset_x
|0992C4| dw  10 ; up
|0992C6| dw  10 ; down
|0992C8| dw  -8 ; left
|0992CA| dw  28 ; right

.tile_check_offset_y
|0992CC| dw   0 ; up
|0992CE| dw  20 ; down
|0992D0| dw  16 ; left
|0992D2| dw  16 ; right

.tile_check_offset_x
|0992D4| dw  -2 ; up
|0992D6| dw  -2 ; down
|0992D8| dw -12 ; left
|0992DA| dw  12 ; right

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_MagicPowder:
|0992DC| PHB
|0992DD| PHK
|0992DE| PLB

|0992DF| JSR AddAncilla
|0992E2| BCC .free_slot

|0992E4| BRL .exit

;---------------------------------------------------------------------------------------------------

.free_slot
|0992E7| STZ.w $0C5E,X
|0992EA| STZ.w $029E,X

|0992ED| LDA.b #$01
|0992EF| STA.w $03B1,X

|0992F2| LDA.b #$50
|0992F4| STA.w $0109

|0992F7| PHX

; Either load LDA here, or don't LDY below
|0992F8| LDY.b $2F

|0992FA| TYA
|0992FB| LSR A
|0992FC| STA.w $0C72,X

|0992FF| TAX

|099300| LDA.l PowderDraw.group_offset,X
|099304| TAX

|099305| LDA.l PowderDraw.anim_step,X

|099309| PLX

|09930A| STA.w $03C2,X

;---------------------------------------------------------------------------------------------------

|09930D| LDY.b $2F

|09930F| REP #$20

|099311| LDA.b $20
|099313| CLC
|099314| ADC.w .tile_check_offset_y,Y
|099317| STA.b $04

|099319| LDA.b $22
|09931B| CLC
|09931C| ADC.w .tile_check_offset_x,Y
|09931F| STA.b $06

|099321| SEP #$20

|099323| LDA.b $04
|099325| STA.w $0BFA,X

|099328| LDA.b $05
|09932A| STA.w $0C0E,X

|09932D| LDA.b $06
|09932F| STA.w $0C04,X

|099332| LDA.b $07
|099334| STA.w $0C18,X

|099337| JSL Ancilla_CheckTileCollision_long

|09933B| LDA.w $03E4,X
|09933E| STA.w $0333

;---------------------------------------------------------------------------------------------------

; [DUMB] code for checking torches! very dumb
|099341| LDA.w $0304
|099344| CMP.b #$09
|099346| BNE .not_lamp

|099348| STZ.w $0C4A,X

|09934B| BRA .exit

.not_lamp
|09934D| LDY.b $2F

|09934F| REP #$20

|099351| LDA.b $20
|099353| CLC
|099354| ADC.w .offset_y,Y
|099357| STA.b $00

|099359| LDA.b $22
|09935B| CLC
|09935C| ADC.w .offset_x,Y
|09935F| STA.b $02

|099361| SEP #$20

|099363| JSL CalculateLinkSFXPan
|099367| ORA.b #$0D ; SFX2.0D
|099369| STA.w $012E

|09936C| JMP.w SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.exit
|09936F| PLB

|099370| RTL

;===================================================================================================

pool AncillaAdd_WallTapSpark

.offset_y
|099371| dw  -4 ; up
|099373| dw  32 ; down
|099375| dw  17 ; left
|099377| dw  17 ; right

.offset_x
|099379| dw  11 ; up
|09937B| dw  10 ; down
|09937D| dw -12 ; left
|09937F| dw  29 ; right

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_WallTapSpark:
|099381| PHB
|099382| PHK
|099383| PLB

|099384| JSR AddAncilla
|099387| BCS .exit

|099389| LDA.b #$05
|09938B| STA.w $0C5E,X

|09938E| LDA.b #$01
|099390| STA.w $03B1,X

|099393| LDY.b $2F

|099395| REP #$20

|099397| LDA.b $20
|099399| CLC
|09939A| ADC.w .offset_y,Y
|09939D| STA.b $00

|09939F| LDA.b $22
|0993A1| CLC
|0993A2| ADC.w .offset_x,Y
|0993A5| STA.b $02

|0993A7| SEP #$20

|0993A9| BRL SetAncillaCoordinatesAndExit

.exit
|0993AC| PLB

|0993AD| RTL

;===================================================================================================

AncillaAdd_SwordSwingSparkle:
|0993AE| PHB
|0993AF| PHK
|0993B0| PLB

|0993B1| JSR AddAncilla
|0993B4| BCS .exit

|0993B6| STZ.w $0C5E,X

|0993B9| LDA.b #$01
|0993BB| STA.w $03B1,X

|0993BE| LDA.b $2F
|0993C0| LSR A
|0993C1| STA.w $0C72,X

|0993C4| REP #$20

|0993C6| LDA.b $20
|0993C8| STA.b $00

|0993CA| LDA.b $22
|0993CC| STA.b $02

|0993CE| SEP #$20

|0993D0| BRL SetAncillaCoordinatesAndExit

.exit
|0993D3| PLB

|0993D4| RTL

;===================================================================================================

pool AncillaAdd_DashTremor

.directional_data_offset
|0993D5| db $02 ; up
|0993D6| db $02 ; down
|0993D7| db $00 ; left
|0993D8| db $00 ; right

.offset
|0993D9| dw   3 ; vertical
|0993DB| dw  -3 ; horizontal

.threshold
|0993DD| db $80 ; vertical
|0993DE| db $78 ; horizontal

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_DashTremor:
|0993DF| PHB
|0993E0| PHK
|0993E1| PLB

|0993E2| JSR CheckAncillaPresence
|0993E5| BCS .exit

|0993E7| JSR AddAncilla
|0993EA| BCS .exit

|0993EC| LDA.b #$10
|0993EE| STA.w $0C5E,X

|0993F1| STZ.w $0385,X

|0993F4| LDA.b $2F
|0993F6| LSR A
|0993F7| TAY

|0993F8| LDA.w .directional_data_offset,Y
|0993FB| STA.w $0C72,X

|0993FE| TAY

|0993FF| REP #$20

|099401| LDA.b $20
|099403| SEC
|099404| SBC.b $E8
|099406| STA.b $02

|099408| LDA.b $22
|09940A| SEC
|09940B| SBC.b $E2
|09940D| STA.b $00

|09940F| SEP #$20

|099411| PHX

|099412| TYA
|099413| LSR A
|099414| TAX

|099415| LDA.w .threshold,X
|099418| STA.b $06

|09941A| TYX

|09941B| LDY.b #$00

|09941D| LDA.b $00,X
|09941F| CMP.b $06
|099421| BCC .left_or_up

|099423| LDY.b #$02

.left_or_up
|099425| PLX

|099426| LDA.w .offset+0,Y
|099429| STA.w $0BFA,X

|09942C| LDA.w .offset+1,Y
|09942F| STA.w $0C0E,X

.exit
|099432| PLB

|099433| RTL

;===================================================================================================

pool WallClink

.offset_y
|099434| dw   0,   8,   8,   8
|09943C| dw   4,   8,  12,   8

.offset_x
|099444| dw   8,   8,   0,  10
|09944C| dw  12,   8,   4,   0

.offset_index
|099454| db $00, $06, $04, $00
|099458| db $02, $0A, $0C, $00
|09945C| db $00, $08, $0E, $00
|099460| db $00, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_BoomerangWallClink:
|099464| PHB
|099465| PHK
|099466| PLB

|099467| LDA.w $0BFA,X
|09946A| STA.w $0399

|09946D| LDA.w $0C0E,X
|099470| STA.w $039A

|099473| LDA.w $0C04,X
|099476| STA.w $039B

|099479| LDA.w $0C18,X
|09947C| STA.w $039C

;---------------------------------------------------------------------------------------------------

|09947F| LDY.b #$01
|099481| LDA.b #$06 ; ANCILLA 06
|099483| JSR AddAncilla
|099486| BCS EXIT_0994B0

|099488| STZ.w $0C5E,X

|09948B| LDA.b #$01
|09948D| STA.w $039F,X

|099490| LDY.w $039D

|099493| LDA.w WallClink.offset_index,Y
|099496| TAY

|099497| REP #$20

|099499| LDA.w $0399
|09949C| CLC
|09949D| ADC.w WallClink.offset_y,Y
|0994A0| STA.b $00

|0994A2| LDA.w $039B
|0994A5| CLC
|0994A6| ADC.w WallClink.offset_x,Y
|0994A9| STA.b $02

|0994AB| SEP #$20

|0994AD| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

#EXIT_0994B0:
|0994B0| PLB

|0994B1| RTL

;===================================================================================================

AncillaAdd_HookshotWallClink:
|0994B2| PHB
|0994B3| PHK
|0994B4| PLB

|0994B5| STX.b $74

|0994B7| JSR AddAncilla
|0994BA| BCS EXIT_0994B0

;---------------------------------------------------------------------------------------------------

|0994BC| STZ.w $0C5E,X

|0994BF| LDA.b #$01
|0994C1| STA.w $039F,X

|0994C4| PHX

|0994C5| LDX.b $74
|0994C7| JSR CopyAncillaCoordinates

|0994CA| LDA.w $0C72,X
|0994CD| ASL A
|0994CE| TAY

|0994CF| REP #$20

|0994D1| LDA.b $00
|0994D3| CLC
|0994D4| ADC.w WallClink.offset_y,Y
|0994D7| STA.b $00

|0994D9| LDA.b $02
|0994DB| CLC
|0994DC| ADC.w WallClink.offset_x,Y
|0994DF| STA.b $02

|0994E1| SEP #$20

|0994E3| PLX

|0994E4| BRL SetAncillaCoordinatesAndExit

;===================================================================================================

#EXIT_099573_bounce:
|0994E7| BRL EXIT_099573

;===================================================================================================

AncillaAdd_Duck_take_off:
|0994EA| PHB
|0994EB| PHK
|0994EC| PLB

|0994ED| JSR CheckAncillaPresence
|0994F0| BCS EXIT_099573_bounce

|0994F2| JSR AddAncilla
|0994F5| BCS EXIT_099573_bounce

;---------------------------------------------------------------------------------------------------

|0994F7| LDA.b #$78
|0994F9| STA.w $0C68,X

|0994FC| STZ.w $0385,X
|0994FF| STZ.w $0294,X
|099502| STZ.w $029E,X

|099505| LDY.b #$00

|099507| BRA AncillaAdd_ArbitraryDuck

;===================================================================================================

AncillaAdd_Duck_drop_off:
|099509| PHB
|09950A| PHK
|09950B| PLB

|09950C| JSR CheckAncillaPresence
|09950F| BCS EXIT_099573

|099511| JSR AddAncilla
|099514| BCS EXIT_099573

|099516| LDA.b #$00 ; LINKSTATE 00
|099518| STA.b $5D

|09951A| STZ.b $5E

|09951C| LDA.b $3A
|09951E| AND.b #$7E
|099520| STA.b $3A

|099522| STZ.b $3C
|099524| STZ.b $3D

|099526| LDA.b $50
|099528| AND.b #$FE
|09952A| STA.b $50

|09952C| LDA.b #$01
|09952E| STA.w $0385,X

|099531| LDA.b #$28
|099533| STA.w $0294,X

|099536| LDA.b #$CD
|099538| STA.w $029E,X

|09953B| LDY.b #$02

;===================================================================================================

AncillaAdd_ArbitraryDuck:
|09953D| TYA
|09953E| STA.w $0C54,X

|099541| STZ.w $0C22,X
|099544| STZ.w $0C5E,X

|099547| LDA.b #$01
|099549| STA.w $03B1,X

|09954C| LDA.b #$38
|09954E| STA.w $0C2C,X

|099551| LDA.b #$03
|099553| STA.w $039F,X

|099556| STZ.w $0380,X
|099559| STZ.w $0394,X

|09955C| REP #$20

|09955E| LDA.b $20
|099560| SEC
|099561| SBC.w #$0008
|099564| STA.b $00

|099566| LDA.w #$FFF0
|099569| CLC
|09956A| ADC.b $E2
|09956C| STA.b $02

|09956E| SEP #$20

|099570| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

#EXIT_099573:
|099573| PLB

|099574| RTL

;===================================================================================================

AncillaAdd_QuakeSpell:
|099575| PHB
|099576| PHK
|099577| PLB

|099578| JSR AddAncilla
|09957B| BCC .free_slot

|09957D| BRL .exit

.free_slot
|099580| STZ.w $0C54,X
|099583| STZ.w $0C5E,X

|099586| LDA.b #$0D
|099588| STA.w $0AAA

|09958B| LDA.b #$35 ; SFX2.35
|09958D| STA.w $012E

|099590| LDA.b #$00
|099592| STA.l $7F5805
|099596| STA.l $7F5806
|09959A| STA.l $7F5807
|09959E| STA.l $7F5808
|0995A2| STA.l $7F5809
|0995A6| STA.l $7F580A

|0995AA| INC A
|0995AB| STA.l $7F5800
|0995AF| STA.l $7F5801
|0995B3| STA.l $7F5802
|0995B7| STA.l $7F5803
|0995BB| STA.l $7F5804

|0995BF| STA.w $0112

|0995C2| INC A
|0995C3| STA.w $0C68,X

|0995C6| REP #$20

|0995C8| LDA.b $20
|0995CA| CLC
|0995CB| ADC.w #$001A
|0995CE| STA.l $7F580B

|0995D2| LDA.b $22
|0995D4| CLC
|0995D5| ADC.w #$0008
|0995D8| STA.l $7F580D

|0995DC| LDA.w #$0003
|0995DF| STA.l $7F581E

|0995E3| SEP #$20

.exit
|0995E5| PLB

|0995E6| RTL

;===================================================================================================

pool AncillaAdd_SpinAttackInitSpark

.offset_y
|0995E7| dw  32 ; up
|0995E9| dw  -8 ; down
|0995EB| dw  10 ; left
|0995ED| dw  20 ; right

.offset_x
|0995EF| dw  10 ; up
|0995F1| dw   7 ; down
|0995F3| dw  28 ; left
|0995F5| dw -10 ; right

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_SpinAttackInitSpark:
|0995F7| PHB
|0995F8| PHK
|0995F9| PLB

|0995FA| STX.b $72

|0995FC| JSR AddAncilla
|0995FF| BCS .exit

;---------------------------------------------------------------------------------------------------

|099601| STX.b $00

|099603| LDX.b #$04

.check_next
|099605| LDA.w $0C4A,X
|099608| CMP.b #$31 ; ANCILLA 31
|09960A| BNE .not_byrna_spark

|09960C| STZ.w $0C4A,X

.not_byrna_spark
|09960F| DEX
|099610| BPL .check_next

;---------------------------------------------------------------------------------------------------

|099612| LDX.b $00
|099614| STZ.w $0C5E,X

|099617| LDY.b #$04

|099619| LDA.b $72
|09961B| STA.w $0C54,X
|09961E| BEQ .useless

|099620| LDY.b #$04 ; pointless

.useless
|099622| TYA
|099623| STA.w $0C68,X

|099626| LDA.b #$03
|099628| STA.w $03B1,X

|09962B| LDY.b $2F

|09962D| REP #$20

|09962F| LDA.b $20
|099631| CLC
|099632| ADC.w .offset_y,Y
|099635| STA.b $00

|099637| LDA.b $22
|099639| CLC
|09963A| ADC.w .offset_x,Y
|09963D| STA.b $02

|09963F| SEP #$20

|099641| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.exit
|099644| PLB

|099645| RTL

;===================================================================================================

pool AncillaAdd_BlastWall
; TODO verify
.offset_xy
|099646| dw  -8,   0 ; up
|09964A| dw  -8,  16 ; down
|09964E| dw  16,   0 ; left
|099652| dw  16,  16 ; right

|099656| dw   0,  -8 ; up
|09965A| dw  16,  -8 ; down
|09965E| dw   0,  16 ; left
|099662| dw  16,  16 ; right

.base_offset_y
|099666| dw -16 ; up
|099668| dw  16 ; down
|09966A| dw   0 ; left
|09966C| dw   0 ; right

.base_offset_x
|09966E| dw   0 ; up
|099670| dw   0 ; down
|099672| dw -16 ; left
|099674| dw  16 ; right

endpool

;===================================================================================================

AncillaPanValues:
|099676| db $80, $80, $80 ; left
|099679| db $00, $00      ; middle
|09967B| db $40, $40, $40 ; right

;===================================================================================================

AncillaAdd_BlastWall:
|09967E| PHB
|09967F| PHK
|099680| PLB

; [HARDCODED] ancilla slots
|099681| LDA.b #$33 ; ANCILLA 33
|099683| STA.w $0C4A
|099686| STA.w $0C4B

|099689| STZ.w $0C4C
|09968C| STZ.w $0C4D
|09968F| STZ.w $0C4E
|099692| STZ.w $0C4F

|099695| STZ.w $0C5E
|099698| STZ.w $02EC

|09969B| STZ.w $0308
|09969E| STZ.b $50
|0996A0| STZ.w $0380

;---------------------------------------------------------------------------------------------------

|0996A3| LDA.b $EE
|0996A5| STA.w $0C7C
|0996A8| STA.w $0C7D

|0996AB| LDA.w $0476
|0996AE| STA.w $03CA

|0996B1| LDA.b #$00
|0996B3| STA.l $7F0010
|0996B7| STA.l $7F0009
|0996BB| STA.l $7F0001
|0996BF| STA.l $7F0011

|0996C3| INC A
|0996C4| STA.l $7F0000
|0996C8| STA.w $0112

|0996CB| LDA.b #$03
|0996CD| STA.l $7F0008

|0996D1| LDA.l $7F001C
|0996D5| TAY

|0996D6| REP #$20

|0996D8| LDA.w .base_offset_y,Y
|0996DB| CLC
|0996DC| ADC.l $7F0018
|0996E0| STA.l $7F0018

|0996E4| LDA.w .base_offset_x,Y
|0996E7| CLC
|0996E8| ADC.l $7F001A
|0996EC| STA.l $7F001A

|0996F0| SEP #$20

|0996F2| LDY.b #$00

|0996F4| LDA.l $7F001C
|0996F8| CMP.b #$04
|0996FA| BCS .use_first_set

|0996FC| LDY.b #$10

.use_first_set
|0996FE| LDX.b #$06

;---------------------------------------------------------------------------------------------------

.next
|099700| REP #$20

|099702| LDA.w .offset_xy+0,Y
|099705| CLC
|099706| ADC.l $7F0018
|09970A| STA.l $7F0020,X

|09970E| LDA.w .offset_xy+2,Y
|099711| CLC
|099712| ADC.l $7F001A
|099716| STA.l $7F0030,X

|09971A| SEC
|09971B| SBC.b $E2
|09971D| STA.b $00

|09971F| SEP #$20

|099721| LDA.b $01
|099723| BNE .to_next

|099725| PHY
|099726| PHX

|099727| LDA.b $00
|099729| LSR A ; /32
|09972A| LSR A
|09972B| LSR A
|09972C| LSR A
|09972D| LSR A
|09972E| TAX

|09972F| LDA.w AncillaPanValues,X
|099732| ORA.b #$0C ; SFX2.0C
|099734| STA.w $012E

|099737| PLX
|099738| PLY

.to_next
|099739| INY ; +4
|09973A| INY
|09973B| INY
|09973C| INY

|09973D| DEX
|09973E| DEX
|09973F| BPL .next

;---------------------------------------------------------------------------------------------------

|099741| PLB

|099742| RTL

;===================================================================================================

AncillaAdd_SwordChargeSparkle:
|099743| PHB
|099744| PHK
|099745| PLB

|099746| STX.b $72

|099748| LDX.b #$09

.check_next
|09974A| LDA.w $0C4A,X
|09974D| BEQ .free_slot

|09974F| DEX
|099750| BPL .check_next

|099752| BRL .exit

;---------------------------------------------------------------------------------------------------

.free_slot
|099755| LDA.b #$3C ; ANCILLA 3C
|099757| STA.w $0C4A,X

|09975A| LDA.b $EE
|09975C| STA.w $0C7C,X

|09975F| STZ.w $0C5E,X

|099762| LDA.b #$04
|099764| STA.w $0C68,X

|099767| JSL GetRandomNumber
|09976B| STA.b $08

|09976D| PHX

|09976E| LDX.b $72

|099770| JSR CopyAncillaCoordinates

|099773| STZ.b $0B

|099775| LDA.w $029E,X
|099778| CMP.b #$F8
|09977A| BCC .dont_zero

|09977C| LDA.b #$00

.dont_zero
|09977E| STA.b $0A

|099780| PLX

|099781| LDA.b $08
|099783| AND.b #$0F
|099785| STA.b $04
|099787| STZ.b $05

|099789| LDA.b $08
|09978B| LSR A ; /32
|09978C| LSR A
|09978D| LSR A
|09978E| LSR A
|09978F| LSR A
|099790| STA.b $06
|099792| STZ.b $07

|099794| REP #$20

; $00 = ($0A) * -1 + ($00) - 4 + ($04)
|099796| LDA.b $0A
|099798| EOR.w #$FFFF
|09979B| INC A
|09979C| CLC
|09979D| ADC.b $00
|09979F| CLC
|0997A0| ADC.w #$FFFE
|0997A3| CLC
|0997A4| ADC.b $04
|0997A6| STA.b $00

; $02 = ($02) + ($06) + 2
|0997A8| LDA.b $02
|0997AA| CLC
|0997AB| ADC.b $06
|0997AD| CLC
|0997AE| ADC.w #$0002
|0997B1| STA.b $02

|0997B3| SEP #$20

|0997B5| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.exit
|0997B8| PLB

|0997B9| RTL

;===================================================================================================

pool AncillaAdd_SilverArrowSparkle

.offset_y
|0997BA| dw   0
|0997BC| dw   2
|0997BE| dw  -4
|0997C0| dw  -4

.offset_x
|0997C2| dw  -4
|0997C4| dw  -4
|0997C6| dw   0
|0997C8| dw   2

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_SilverArrowSparkle:
|0997CA| PHB
|0997CB| PHK
|0997CC| PLB

|0997CD| STX.b $72

|0997CF| LDX.b #$09

.next_slot
|0997D1| LDA.w $0C4A,X
|0997D4| BEQ .free_slot

|0997D6| DEX
|0997D7| BPL .next_slot

|0997D9| BRL EXIT_099835

;---------------------------------------------------------------------------------------------------

.free_slot
|0997DC| LDA.b #$3C ; ANCILLA 3C
|0997DE| STA.w $0C4A,X

|0997E1| STZ.w $0C5E,X

|0997E4| LDA.b #$04
|0997E6| STA.w $0C68,X

|0997E9| LDA.b $EE
|0997EB| STA.w $0C7C,X

|0997EE| JSL GetRandomNumber
|0997F2| STA.b $08

|0997F4| PHX

|0997F5| LDX.b $72

|0997F7| JSR CopyAncillaCoordinates

|0997FA| STZ.b $0B

|0997FC| LDA.b $08
|0997FE| AND.b #$07
|099800| STA.b $04
|099802| STZ.b $05

|099804| LDA.b $08
|099806| AND.b #$70
|099808| LSR A ; /16
|099809| LSR A
|09980A| LSR A
|09980B| LSR A
|09980C| STA.b $06
|09980E| STZ.b $07

|099810| LDA.w $0C72,X
|099813| AND.b #$03
|099815| ASL A
|099816| TAY

|099817| PLX

|099818| REP #$20

|09981A| LDA.b $00
|09981C| CLC
|09981D| ADC.w .offset_y,Y
|099820| CLC
|099821| ADC.b $04
|099823| STA.b $00

|099825| LDA.b $02
|099827| CLC
|099828| ADC.w .offset_x,Y
|09982B| CLC
|09982C| ADC.b $06
|09982E| STA.b $02

|099830| SEP #$20

|099832| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

#EXIT_099835:
|099835| PLB

|099836| RTL

;===================================================================================================

pool AncillaAdd_IceRodShot

.offset_y
|099837| dw -16 ; up
|099839| dw  24 ; down
|09983B| dw   8 ; left
|09983D| dw   8 ; right

.offset_x
|09983F| dw   0 ; up
|099841| dw   0 ; down
|099843| dw -20 ; left
|099845| dw  20 ; right

.speed_y
|099847| db -48 ; up
|099848| db  48 ; down
|099849| db   0 ; left
|09984A| db   0 ; right

.speed_x
|09984B| db   0 ; up
|09984C| db   0 ; down
|09984D| db -48 ; left
|09984E| db  48 ; right

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_IceRodShot:
|09984F| PHB
|099850| PHK
|099851| PLB

|099852| JSR AddAncilla
|099855| BCC .free_slot

|099857| LDX.b #$00
|099859| JSL RefundMagic

|09985D| BRA EXIT_099835

;---------------------------------------------------------------------------------------------------

.free_slot
|09985F| JSL CalculateLinkSFXPan
|099863| ORA.b #$0F ; SFX2.0F
|099865| STA.w $012E

|099868| STZ.w $0C54,X

|09986B| STZ.w $03C2,X

|09986E| LDA.b #$FF
|099870| STA.w $0C5E,X

|099873| LDA.b #$01
|099875| STA.w $0385,X

|099878| LDA.b #$03
|09987A| STA.w $03B1,X

|09987D| LDA.b #$06
|09987F| STA.w $039F,X

;---------------------------------------------------------------------------------------------------

|099882| LDA.b $2F
|099884| LSR A
|099885| STA.w $0C72,X

|099888| TAY

|099889| LDA.w .speed_y,Y
|09988C| STA.w $0C22,X

|09988F| LDA.w .speed_x,Y
|099892| STA.w $0C2C,X

|099895| PHY
|099896| PHX

|099897| JSL Ancilla_CheckInitialTile_A

|09989B| PLX
|09989C| PLY

|09989D| BCS .explode

;---------------------------------------------------------------------------------------------------

|09989F| LDY.b $2F

|0998A1| REP #$20

|0998A3| LDA.b $20
|0998A5| CLC
|0998A6| ADC.w .offset_y,Y
|0998A9| STA.b $00

|0998AB| SEC
|0998AC| SBC.b $E8
|0998AE| STA.b $04

|0998B0| LDA.b $22
|0998B2| CLC
|0998B3| ADC.w .offset_x,Y
|0998B6| STA.b $02

|0998B8| SEC
|0998B9| SBC.b $E2
|0998BB| STA.b $06

|0998BD| SEP #$20

|0998BF| LDA.b $05
|0998C1| ORA.b $07
|0998C3| BEQ .onscreen

|0998C5| STZ.w $0C4A,X

|0998C8| BRA .exit

.onscreen
|0998CA| BRL SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.exit
|0998CD| PLB

|0998CE| RTL

;---------------------------------------------------------------------------------------------------

.explode
|0998CF| PHX

|0998D0| LDA.b #$11 ; ANCILLA 11
|0998D2| STA.w $0C4A,X

|0998D5| TAX

|0998D6| LDA.l AncillaObjectAllocation,X

|0998DA| PLX

|0998DB| STA.w $0C90,X

|0998DE| STZ.w $0C5E,X

|0998E1| LDA.b #$04
|0998E3| STA.w $03B1,X

|0998E6| PLB

|0998E7| RTL

;===================================================================================================

AncillaAdd_Splash:
|0998E8| PHB
|0998E9| PHK
|0998EA| PLB

|0998EB| JSR AddAncilla
|0998EE| BCS .exit

|0998F0| JSL CalculateLinkSFXPan
|0998F4| ORA.b #$24 ; SFX2.24
|0998F6| STA.w $012E

|0998F9| STZ.w $0C5E,X

|0998FC| LDA.b #$02
|0998FE| STA.w $03B1,X

|099901| LDA.b $1B
|099903| BEQ .dont_reset_layer

|099905| LDA.w $0345
|099908| BNE .dont_reset_layer

|09990A| STZ.b $EE

.dont_reset_layer
|09990C| REP #$20

|09990E| LDA.b $20
|099910| CLC
|099911| ADC.w #$0008
|099914| STA.b $00

|099916| LDA.b $22
|099918| CLC
|099919| ADC.w #$FFF5
|09991C| STA.b $02

|09991E| SEP #$20

|099920| JSR SetAncillaCoordinates

|099923| CLC

.exit
|099924| PLB

|099925| RTL

;===================================================================================================

pool AncillaAdd_GraveStone

.position_y
|099926| dw $0550
|099928| dw $0540
|09992A| dw $0530
|09992C| dw $0520
|09992E| dw $0500
|099930| dw $04E0
|099932| dw $04C0
|099934| dw $04B0

;---------------------------------------------------------------------------------------------------

.position_x
|099936| dw $08B0 ; Gravestone 0
|099938| dw $08F0 ; Gravestone 1
|09993A| dw $0910 ; Gravestone 2
|09993C| dw $0950 ; Gravestone 3
|09993E| dw $0970 ; Gravestone 4
|099940| dw $09A0 ; Gravestone 5 (unused)
|099942| dw $0850 ; Gravestone 6
|099944| dw $0870 ; Gravestone 7
|099946| dw $08B0 ; Gravestone 8
|099948| dw $08F0 ; Gravestone 9
|09994A| dw $0920 ; Gravestone A
|09994C| dw $0950 ; Gravestone B
|09994E| dw $0880 ; Gravestone C
|099950| dw $0990 ; Gravestone D
|099952| dw $0840 ; Gravestone E

;---------------------------------------------------------------------------------------------------

.tilemap_y
|099954| dw $0540 ; Gravestone 0
|099956| dw $0530 ; Gravestone 1
|099958| dw $0530 ; Gravestone 2
|09995A| dw $0530 ; Gravestone 3
|09995C| dw $0520 ; Gravestone 4
|09995E| dw $0520 ; Gravestone 5 (unused)
|099960| dw $0510 ; Gravestone 6
|099962| dw $0510 ; Gravestone 7
|099964| dw $04F0 ; Gravestone 8
|099966| dw $04F0 ; Gravestone 9
|099968| dw $04F0 ; Gravestone A
|09996A| dw $04F0 ; Gravestone B
|09996C| dw $04D0 ; Gravestone C
|09996E| dw $04B0 ; Gravestone D
|099970| dw $04A0 ; Gravestone E

;---------------------------------------------------------------------------------------------------

.tilemap_x
|099972| dw $08B0 ; Gravestone 0
|099974| dw $08F0 ; Gravestone 1
|099976| dw $0910 ; Gravestone 2
|099978| dw $0950 ; Gravestone 3
|09997A| dw $0970 ; Gravestone 4
|09997C| dw $09A0 ; Gravestone 5 (unused)
|09997E| dw $0850 ; Gravestone 6
|099980| dw $0870 ; Gravestone 7
|099982| dw $08B0 ; Gravestone 8
|099984| dw $08F0 ; Gravestone 9
|099986| dw $0920 ; Gravestone A
|099988| dw $0950 ; Gravestone B
|09998A| dw $0880 ; Gravestone C
|09998C| dw $0990 ; Gravestone D
|09998E| dw $0840 ; Gravestone E

;---------------------------------------------------------------------------------------------------

.gfx_write_addr
|099990| dw $0A16 ; Gravestone 0
|099992| dw $099E ; Gravestone 1
|099994| dw $09A2 ; Gravestone 2
|099996| dw $09AA ; Gravestone 3
|099998| dw $092E ; Gravestone 4
|09999A| dw $0934 ; Gravestone 5 (unused)
|09999C| dw $088A ; Gravestone 6
|09999E| dw $088E ; Gravestone 7
|0999A0| dw $0796 ; Gravestone 8
|0999A2| dw $079E ; Gravestone 9
|0999A4| dw $07A4 ; Gravestone A
|0999A6| dw $07AA ; Gravestone B
|0999A8| dw $0690 ; Gravestone C
|0999AA| dw $05B2 ; Gravestone D
|0999AC| dw $0508 ; Gravestone E

;---------------------------------------------------------------------------------------------------

.tile_revealed
|0999AE| dw $0030 ; Gravestone 0 - skull
|0999B0| dw $0030 ; Gravestone 1 - skull
|0999B2| dw $0030 ; Gravestone 2 - skull
|0999B4| dw $0030 ; Gravestone 3 - skull
|0999B6| dw $0030 ; Gravestone 4 - skull
|0999B8| dw $0030 ; Gravestone 5 - skull (unused)
|0999BA| dw $0030 ; Gravestone 6 - skull
|0999BC| dw $0030 ; Gravestone 7 - skull
|0999BE| dw $0030 ; Gravestone 8 - skull
|0999C0| dw $0030 ; Gravestone 9 - skull
|0999C2| dw $0030 ; Gravestone A - skull
|0999C4| dw $0030 ; Gravestone B - skull
|0999C6| dw $0030 ; Gravestone C - skull
|0999C8| dw $0038 ; Gravestone D - stairs
|0999CA| dw $0058 ; Gravestone E - hole

;---------------------------------------------------------------------------------------------------

.offset_data_x
|0999CC| db $00
|0999CD| db $02
|0999CE| db $08
|0999CF| db $0C
|0999D0| db $10
|0999D1| db $18
|0999D2| db $1A
|0999D3| db $1C
|0999D4| db $1E

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_GraveStone:
|0999D5| PHB
|0999D6| PHK
|0999D7| PLB

|0999D8| JSR AddAncilla
|0999DB| BCC .free_slot

|0999DD| BRL .exit

;---------------------------------------------------------------------------------------------------

.free_slot
|0999E0| REP #$30

|0999E2| LDY.b $20
|0999E4| TYA

|0999E5| AND.w #$000F
|0999E8| CMP.w #$0007
|0999EB| BCS .round_tile

|0999ED| TYA

|0999EE| BRA .clip16px

.round_tile
|0999F0| TYA
|0999F1| CLC
|0999F2| ADC.w #$0010

.clip16px
|0999F5| AND.w #$FFF0
|0999F8| STA.b $00

;---------------------------------------------------------------------------------------------------

|0999FA| LDY.w #$000E

.next_y
|0999FD| LDA.b $00
|0999FF| CMP.w .position_y,Y
|099A02| BEQ .y_found

|099A04| DEY
|099A05| DEY
|099A06| BPL .next_y

|099A08| BRA .terminate

;---------------------------------------------------------------------------------------------------

.y_found
|099A0A| TYA
|099A0B| LSR A
|099A0C| TAY

|099A0D| LDA.w .offset_data_x+1,Y
|099A10| AND.w #$00FF
|099A13| STA.b $00

|099A15| LDA.w .offset_data_x+0,Y
|099A18| AND.w #$00FF
|099A1B| TAY

.next_x
|099A1C| LDA.w .position_x,Y
|099A1F| CMP.b $22
|099A21| BCS .proceed_to_next

|099A23| CLC
|099A24| ADC.w #$000F
|099A27| CMP.b $22
|099A29| BCC .proceed_to_next

|099A2B| CPY.w #$001A
|099A2E| BNE .not_dashable

|099A30| LDA.w $0372
|099A33| AND.w #$00FF
|099A36| BEQ .terminate

|099A38| BRA .succeed

.not_dashable
|099A3A| LDA.w $0372
|099A3D| AND.w #$00FF
|099A40| BNE .terminate

|099A42| BRA .succeed

.proceed_to_next
|099A44| INY
|099A45| INY
|099A46| CPY.b $00
|099A48| BNE .next_x

;---------------------------------------------------------------------------------------------------

.terminate
|099A4A| SEP #$30

|099A4C| STZ.w $0C4A,X

|099A4F| BRL .exit

;---------------------------------------------------------------------------------------------------

.succeed
|099A52| LDA.w .gfx_write_addr,Y
|099A55| STA.w $0698

|099A58| SEC
|099A59| SBC.w #$0080
|099A5C| STA.b $72

|099A5E| LDA.w .tile_revealed,Y
|099A61| STA.w $0692

|099A64| CMP.w #$0058
|099A67| BEQ .hole

|099A69| CMP.w #$0038
|099A6C| BNE .not_stairs

|099A6E| SEP #$30

|099A70| PHX

|099A71| LDX.b $8A

|099A73| LDA.l $7EF280,X
|099A77| ORA.b #$20
|099A79| STA.l $7EF280,X

|099A7D| PLX

.hole
|099A7E| SEP #$30

|099A80| JSL CalculateLinkSFXPan
|099A84| ORA.b #$1B ; SFX3.1B
|099A86| STA.w $012F

.not_stairs
|099A89| SEP #$30

|099A8B| LDA.b $72
|099A8D| STA.w $03BA,X

|099A90| LDA.b $73
|099A92| STA.w $03B6,X

|099A95| PHY
|099A96| PHX

|099A97| JSL BigMap16Update_long

|099A9B| PLX
|099A9C| PLY

;---------------------------------------------------------------------------------------------------

|099A9D| REP #$30

|099A9F| TYA
|099AA0| AND.w #$00FF
|099AA3| TAY

|099AA4| LDA.w .tilemap_y,Y
|099AA7| CLC
|099AA8| ADC.w #$FFFE
|099AAB| STA.b $00

|099AAD| CLC
|099AAE| ADC.w #$FFF0
|099AB1| STA.b $04

|099AB3| LDA.w .tilemap_x,Y
|099AB6| STA.b $02

|099AB8| SEP #$30

|099ABA| LDA.w $012F
|099ABD| AND.b #$3F
|099ABF| CMP.b #$1B ; SFX3.1B
|099AC1| BEQ .dont_overwrite_sfx

|099AC3| JSL CalculateLinkSFXPan
|099AC7| ORA.b #$22 ; SFX2.22
|099AC9| STA.w $012E

.dont_overwrite_sfx
|099ACC| LDA.b #$04
|099ACE| STA.b $48

|099AD0| LDA.b #$01
|099AD2| STA.w $03E9

|099AD5| LDA.b $04
|099AD7| STA.w $038A,X

|099ADA| LDA.b $05
|099ADC| STA.w $038F,X

|099ADF| BRL SetAncillaCoordinatesAndExit

.exit
|099AE2| PLB

|099AE3| RTL

;===================================================================================================

pool AncillaAdd_Hookshot

.speed_y
|099AE4| db -64 ; up
|099AE5| db  64 ; down
|099AE6| db   0 ; left
|099AE7| db   0 ; right

.speed_x
|099AE8| db   0 ; up
|099AE9| db   0 ; down
|099AEA| db -64 ; left
|099AEB| db  64 ; right

.offset_y
|099AEC| dw   4 ; up
|099AEE| dw  20 ; down
|099AF0| dw   8 ; left
|099AF2| dw   8 ; right

.offset_x
|099AF4| dw   0 ; up
|099AF6| dw   0 ; down
|099AF8| dw  -4 ; left
|099AFA| dw  11 ; right

endpool

;---------------------------------------------------------------------------------------------------

AncillaAdd_Hookshot:
|099AFC| PHB
|099AFD| PHK
|099AFE| PLB

|099AFF| JSR AddAncilla
|099B02| BCS .exit

|099B04| LDA.b #$03
|099B06| STA.w $03B1,X

|099B09| STZ.w $0C5E,X
|099B0C| STZ.w $0C54,X
|099B0F| STZ.w $0385,X

|099B12| STZ.w $037E
|099B15| STX.w $039D

|099B18| STZ.w $0380,X

|099B1B| LDA.b #$FF
|099B1D| STA.w $0394,X

|099B20| STZ.w $03A4,X
|099B23| STZ.w $0C68,X

|099B26| LDA.b $2F
|099B28| LSR A
|099B29| STA.w $0C72,X

|099B2C| TAY

|099B2D| LDA.w .speed_y,Y
|099B30| STA.w $0C22,X

|099B33| LDA.w .speed_x,Y
|099B36| STA.w $0C2C,X

|099B39| LDY.b $2F

|099B3B| REP #$20

|099B3D| LDA.b $20
|099B3F| CLC
|099B40| ADC.w .offset_y,Y
|099B43| STA.b $00

|099B45| LDA.b $22
|099B47| CLC
|099B48| ADC.w .offset_x,Y
|099B4B| STA.b $02

|099B4D| SEP #$20

|099B4F| JMP.w SetAncillaCoordinatesAndExit

;---------------------------------------------------------------------------------------------------

.exit
|099B52| PLB

|099B53| RTL

;===================================================================================================

AncillaAdd_WaterfallSplash:
|099B54| PHB
|099B55| PHK
|099B56| PLB

|099B57| LDY.b #$04
|099B59| LDA.b #$41 ; ANCILLA 41
|099B5B| JSR CheckAncillaPresence
|099B5E| BCS EXIT_099B6D

|099B60| JSR AddAncilla
|099B63| BCS EXIT_099B6D

|099B65| LDA.b #$02
|099B67| STA.w $0C68,X

|099B6A| STZ.w $0C5E,X

;---------------------------------------------------------------------------------------------------

#EXIT_099B6D:
|099B6D| PLB

|099B6E| RTL

;===================================================================================================

AncillaAdd_GTCutscene:
|099B6F| PHB
|099B70| PHK
|099B71| PLB

|099B72| LDA.w $0308
|099B75| AND.b #$80
|099B77| ORA.b $4D
|099B79| BNE EXIT_099B6D

|099B7B| LDA.l $7EF37A
|099B7F| AND.b #$7F
|099B81| CMP.b #$7F
|099B83| BNE EXIT_099B6D

|099B85| LDA.l $7EF2C3
|099B89| AND.b #$20
|099B8B| BNE EXIT_099B6D

|099B8D| JSL TerminateSparkles

|099B91| LDY.b #$04
|099B93| LDA.b #$43 ; ANCILLA 43
|099B95| JSR CheckAncillaPresence
|099B98| BCS EXIT_099B6D

|099B9A| JSR AddAncilla
|099B9D| BCS EXIT_099B6D

;---------------------------------------------------------------------------------------------------

|099B9F| PHX
|099BA0| LDX.b #$0F

.next_sprite
|099BA2| LDA.w $0E20,X
|099BA5| CMP.b #$37 ; SPRITE 37
|099BA7| BNE .skip_sprite

|099BA9| STZ.w $0DD0,X

.skip_sprite
|099BAC| DEX
|099BAD| BPL .next_sprite

;---------------------------------------------------------------------------------------------------

|099BAF| LDX.b #$17
|099BB1| LDA.b #$FF

.next_clear
|099BB3| STA.l $7F5837,X

|099BB7| DEX
|099BB8| BPL .next_clear

;---------------------------------------------------------------------------------------------------

|099BBA| LDA.b #$28
|099BBC| STA.b $72

|099BBE| JSL WriteTo4BPPBuffer_item_gfx

|099BC2| LDA.b #$04
|099BC4| STA.w $0AB1

|099BC7| LDA.b #$02
|099BC9| STA.w $0AA9

|099BCC| JSL PaletteLoad_SpriteEnvironment_Underworld

|099BD0| INC.b $15

|099BD2| PLX

|099BD3| LDA.b #$01
|099BD5| STA.w $02E4

|099BD8| STZ.w $0C36,X
|099BDB| STZ.w $0C40,X
|099BDE| STZ.w $0C54,X

|099BE1| LDA.b #$F0
|099BE3| STA.l $7F5812

|099BE7| LDA.b #$00
|099BE9| STA.l $7F5800
|099BED| STA.l $7F5808

|099BF1| LDA.b #$0A
|099BF3| STA.l $7F5801

|099BF7| LDA.b #$16
|099BF9| STA.l $7F5802

|099BFD| LDA.b #$20
|099BFF| STA.l $7F5803

|099C03| LDA.b #$2A
|099C05| STA.l $7F5804

|099C09| LDA.b #$36
|099C0B| STA.l $7F5805

|099C0F| REP #$20

|099C11| LDA.b $20
|099C13| CLC
|099C14| ADC.w #$FFF0
|099C17| STA.b $00

|099C19| LDA.b $22
|099C1B| STA.b $02

|099C1D| SEP #$20

|099C1F| BRL SetAncillaCoordinatesAndExit

;===================================================================================================

UNREACHABLE_099C22:
|099C22| PLB

|099C23| RTL

;===================================================================================================

AncillaAdd_DoorDebris:
|099C24| PHB
|099C25| PHK
|099C26| PLB

|099C27| LDY.b #$01
|099C29| LDA.b #$08 ; ANCILLA 08
|099C2B| JSR AddAncilla
|099C2E| BCS EXIT_099C39

|099C30| STZ.w $03C2,X

|099C33| LDA.b #$07
|099C35| STA.w $03C0,X

|099C38| CLC ; useless

;---------------------------------------------------------------------------------------------------

#EXIT_099C39:
|099C39| PLB

|099C3A| RTL

;===================================================================================================

BecomeSkullWoodsFire:
|099C3B| PHB
|099C3C| PHK
|099C3D| PLB

; Indoors?
|099C3E| LDA.b $1B
|099C40| BNE EXIT_099C39

; Dark World?
|099C42| LDA.b $8A
|099C44| AND.b #$40
|099C46| BEQ EXIT_099C39

|099C48| PHX

|099C49| LDY.b #$34 ; ANCILLA 34
|099C4B| STY.w $0C4A
|099C4E| STZ.w $0C4B
|099C51| STZ.w $0C4C
|099C54| STZ.w $0C4D
|099C57| STZ.w $0C4E
|099C5A| STZ.w $0C4F

|099C5D| STZ.w $035F

|099C60| TYX

|099C61| LDA.l AncillaObjectAllocation,X
|099C65| STA.w $0C90

|099C68| PLX

|099C69| LDA.b #$FD
|099C6B| STA.l $7F0000

|099C6F| INC A
|099C70| STA.l $7F0001

|099C74| INC A
|099C75| STA.l $7F0002

|099C79| LDA.b #$00
|099C7B| STA.l $7F0003
|099C7F| STA.l $7F0010

|099C83| LDA.b #$05
|099C85| STA.l $7F0008
|099C89| STA.l $7F0009
|099C8D| STA.l $7F000A
|099C91| STA.l $7F000B

|099C95| STA.w $03B1

|099C98| REP #$20

|099C9A| LDA.w #$0100
|099C9D| STA.l $7F0018
|099CA1| STA.l $7F0026

|099CA5| LDA.w #$0098
|099CA8| STA.l $7F001A
|099CAC| STA.l $7F0036

|099CB0| SEP #$20

|099CB2| LDA.b #$02
|099CB4| STA.w $04C6

|099CB7| STZ.b $B0
|099CB9| STZ.b $C8

|099CBB| LDA.b $EE
|099CBD| STA.w $0C7C

|099CC0| LDA.w $0476
|099CC3| STA.w $03CA

|099CC6| STZ.w $0C5E
|099CC9| STZ.w $0C54

|099CCC| PLB

|099CCD| RTL

;===================================================================================================

AddAncilla:
|099CCE| PHA

|099CCF| JSL FindAncillaSlot

|099CD3| PLA

|099CD4| TYX
|099CD5| BMI .fail

|099CD7| STA.w $0C4A,X

|099CDA| TAY

|099CDB| LDA.b $EE
|099CDD| STA.w $0C7C,X

|099CE0| LDA.w $0476
|099CE3| STA.w $03CA,X

|099CE6| STZ.w $0C22,X
|099CE9| STZ.w $0C2C,X

|099CEC| STZ.w $0280,X
|099CEF| STZ.w $028A,X

|099CF2| PHX
|099CF3| TYX

|099CF4| LDA.l AncillaObjectAllocation,X
|099CF8| STA.b $0E

|099CFA| PLX

|099CFB| LDA.b $0E ; [DUMB] it's already loaded
|099CFD| STA.w $0C90,X

|099D00| CLC

|099D01| RTS

.fail
|099D02| SEC

|099D03| RTS

;===================================================================================================

AddAncilla_bank09:
|099D04| PHB
|099D05| PHK
|099D06| PLB

|099D07| JSR AddAncilla

|099D0A| PLB

|099D0B| RTL

;===================================================================================================

CheckAncillaPresence:
|099D0C| LDX.b #$05

.next
|099D0E| CMP.w $0C4A,X
|099D11| BEQ .match

|099D13| DEX
|099D14| BPL .next

|099D16| CLC

|099D17| RTS

.match
|099D18| SEC

|099D19| RTS

;===================================================================================================

CheckAncillaPresence_long:
|099D1A| PHB
|099D1B| PHK
|099D1C| PLB

|099D1D| JSR CheckAncillaPresence

|099D20| PLB

|099D21| RTL

;===================================================================================================

FindArrowAncillaSlot:
|099D22| PHA

|099D23| INY
|099D24| STY.b $0E

|099D26| LDY.b #$00
|099D28| LDX.b #$04

.next_tally
|099D2A| LDA.b #$0A ; ANCILLA 0A
|099D2C| CMP.w $0C4A,X
|099D2F| BNE .dont_tally

|099D31| INY

.dont_tally
|099D32| DEX
|099D33| BPL .next_tally

;---------------------------------------------------------------------------------------------------

|099D35| CPY.b $0E
|099D37| BEQ .too_many

|099D39| LDY.b #$04

.next_free_check
|099D3B| LDA.w $0C4A,Y
|099D3E| BEQ .replace_this

|099D40| DEY
|099D41| BPL .next_free_check

|099D43| BRA .replace_this

;---------------------------------------------------------------------------------------------------

.too_many
|099D45| DEC.w $03C4
|099D48| BPL .keep_index

.reset_index
|099D4A| LDA.b #$04
|099D4C| STA.w $03C4

.keep_index
|099D4F| LDY.w $03C4

|099D52| LDA.w $0C4A,Y
|099D55| CMP.b #$0A ; ANCILLA 0A
|099D57| BEQ .replace_this

|099D59| DEY

|099D5A| BPL .too_many

|099D5C| BRA .reset_index

;---------------------------------------------------------------------------------------------------

.replace_this
|099D5E| PLA

|099D5F| TYX
|099D60| BMI .failed

|099D62| STA.w $0C4A,X
|099D65| TAY

|099D66| LDA.b $EE
|099D68| STA.w $0C7C,X

|099D6B| LDA.w $0476
|099D6E| STA.w $03CA,X

|099D71| STZ.w $0C22,X
|099D74| STZ.w $0C2C,X

|099D77| STZ.w $0280,X
|099D7A| STZ.w $028A,X

|099D7D| PHX

|099D7E| TYX

|099D7F| LDA.l AncillaObjectAllocation,X
|099D83| STA.b $0E

|099D85| PLX

|099D86| LDA.b $0E
|099D88| STA.w $0C90,X

|099D8B| CLC

|099D8C| RTS

;---------------------------------------------------------------------------------------------------

.failed
|099D8D| SEC

|099D8E| RTS

;===================================================================================================

pool Ancilla_CheckInitialTile_A

.offset_y
|099D8F| dw   8,   0
|099D93| dw  -8,   8
|099D97| dw  16,  24
|099D9B| dw   8,   8
|099D9F| dw   8,   8
|099DA3| dw   8,   8

.offset_x
|099DA7| dw   0,   0
|099DAB| dw   0,   0
|099DAF| dw   0,   0
|099DB3| dw   0,  -8
|099DB7| dw -16,   0
|099DBB| dw   8,  16

endpool

;---------------------------------------------------------------------------------------------------

Ancilla_CheckInitialTile_A:
|099DBF| PHB
|099DC0| PHK
|099DC1| PLB

|099DC2| PHY

|099DC3| LDA.b #$02
|099DC5| STA.b $72

; Y = 2*(A*2+A)+A = 7*A
|099DC7| LDA.w $0C72,X
|099DCA| ASL A
|099DCB| STA.b $02

|099DCD| ASL A
|099DCE| CLC
|099DCF| ADC.b $02
|099DD1| TAY

.next
|099DD2| REP #$20

|099DD4| LDA.w .offset_y,Y
|099DD7| CLC
|099DD8| ADC.b $20
|099DDA| STA.b $02

|099DDC| LDA.w .offset_x,Y
|099DDF| CLC
|099DE0| ADC.b $22
|099DE2| STA.b $04

|099DE4| SEP #$20

|099DE6| LDA.b $02
|099DE8| STA.w $0BFA,X

|099DEB| LDA.b $03
|099DED| STA.w $0C0E,X

|099DF0| LDA.b $04
|099DF2| STA.w $0C04,X

|099DF5| LDA.b $05
|099DF7| STA.w $0C18,X

|099DFA| PHY
|099DFB| JSL Ancilla_CheckTileCollision_long
|099DFF| PLY

|099E00| BCS .collided

|099E02| INY
|099E03| INY

|099E04| DEC.b $72
|099E06| BPL .next

;---------------------------------------------------------------------------------------------------

|099E08| PLY

|099E09| CLC

|099E0A| PLB

|099E0B| RTL

;---------------------------------------------------------------------------------------------------

.collided
|099E0C| PLY

|099E0D| SEC

|099E0E| PLB

|099E0F| RTL

;===================================================================================================

pool Ancilla_CheckInitialTileCollision_Class2

.offset_y
|099E10| dw  15,  16
|099E14| dw  28,  24
|099E18| dw  12,  12
|099E1C| dw  12,  12

.offset_x
|099E20| dw   8,   8
|099E24| dw   8,   8
|099E28| dw  -1,   0
|099E2C| dw  17,  16

endpool

;---------------------------------------------------------------------------------------------------

Ancilla_CheckInitialTileCollision_Class2:
|099E30| PHB
|099E31| PHK
|099E32| PLB

|099E33| PHY

|099E34| LDA.b #$02
|099E36| STA.b $72

|099E38| LDA.w $0C72,X
|099E3B| ASL A ; x4
|099E3C| ASL A
|099E3D| TAY

;---------------------------------------------------------------------------------------------------

.next
|099E3E| REP #$20

|099E40| LDA.w .offset_y,Y
|099E43| CLC
|099E44| ADC.b $20
|099E46| STA.b $02

|099E48| LDA.w .offset_x,Y
|099E4B| CLC
|099E4C| ADC.b $22
|099E4E| STA.b $04

|099E50| SEP #$20

|099E52| LDA.b $02
|099E54| STA.w $0BFA,X

|099E57| LDA.b $03
|099E59| STA.w $0C0E,X

|099E5C| LDA.b $04
|099E5E| STA.w $0C04,X

|099E61| LDA.b $05
|099E63| STA.w $0C18,X

|099E66| PHY
|099E67| JSL Ancilla_CheckTileCollision_Class2_long
|099E6B| PLY

|099E6C| BCS .collided

|099E6E| INY
|099E6F| INY

|099E70| DEC.b $72
|099E72| BPL .next

;---------------------------------------------------------------------------------------------------

|099E74| PLY

|099E75| CLC

|099E76| PLB

|099E77| RTL

;---------------------------------------------------------------------------------------------------

.collided
|099E78| PLY

|099E79| SEC

|099E7A| PLB

|099E7B| RTL

;===================================================================================================

CheckBlindMaidenTrigger:
|099E7C| PHB
|099E7D| PHK
|099E7E| PLB

|099E7F| LDX.w $02CF

|099E82| LDA.w $1A00,X
|099E85| STA.b $00

|099E87| LDA.w $1A14,X
|099E8A| STA.b $01

|099E8C| LDA.w $1A28,X
|099E8F| STA.b $02

|099E91| LDA.w $1A3C,X
|099E94| STA.b $03

|099E96| STZ.b $0B

|099E98| LDA.w $1A50,X
|099E9B| STA.b $0A
|099E9D| BPL .positive_z

|099E9F| LDA.b #$FF
|099EA1| STA.b $0B

;---------------------------------------------------------------------------------------------------

.positive_z
|099EA3| REP #$20

|099EA5| LDA.b $00
|099EA7| CLC
|099EA8| ADC.b $0A
|099EAA| CLC
|099EAB| ADC.w #$000C
|099EAE| STA.b $00

|099EB0| LDA.b $02
|099EB2| CLC
|099EB3| ADC.w #$0008
|099EB6| STA.b $02

|099EB8| LDA.w #$1568
|099EBB| SEC
|099EBC| SBC.b $00
|099EBE| BPL .positive_x

|099EC0| EOR.w #$FFFF
|099EC3| INC A

;---------------------------------------------------------------------------------------------------

.positive_x
|099EC4| CMP.w #$0018
|099EC7| BCS .fail

|099EC9| LDA.w #$1980
|099ECC| SEC
|099ECD| SBC.b $02
|099ECF| BPL .positive_y

|099ED1| EOR.w #$FFFF
|099ED4| INC A

;---------------------------------------------------------------------------------------------------

.positive_y
|099ED5| CMP.w #$0018
|099ED8| BCS .fail

.success
|099EDA| SEP #$20

|099EDC| PLB

|099EDD| SEC

|099EDE| RTL

;---------------------------------------------------------------------------------------------------

.fail
|099EDF| SEP #$20

|099EE1| PLB

|099EE2| CLC

|099EE3| RTL

;===================================================================================================

FollowerPriority:
|099EE4| db $20, $10, $30, $20

;===================================================================================================

InitializeFollower:
|099EE8| PHB
|099EE9| PHK
|099EEA| PLB

|099EEB| LDA.b $20
|099EED| STA.w $1A00

|099EF0| LDA.b $21
|099EF2| STA.w $1A14

|099EF5| LDA.b $22
|099EF7| STA.w $1A28

|099EFA| LDA.b $23
|099EFC| STA.w $1A3C

|099EFF| LDA.b $2F
|099F01| LSR A
|099F02| STA.b $00

|099F04| LDY.b $EE

|099F06| LDA.w FollowerPriority,Y
|099F09| LSR A
|099F0A| LSR A
|099F0B| ORA.b $00
|099F0D| STA.w $1A64

|099F10| LDA.b #$40
|099F12| STA.w $02D2

|099F15| STZ.w $02CF
|099F18| STZ.w $02D3
|099F1B| STZ.w $02D0
|099F1E| STZ.w $02D6

|099F21| STZ.b $5E

|099F23| PLB

|099F24| RTL

;===================================================================================================

BecomeFollower:
|099F25| PHB
|099F26| PHK
|099F27| PLB

|099F28| PHX

|099F29| STZ.w $02F9

|099F2C| LDA.w $0D00,X
|099F2F| CLC
|099F30| ADC.b #$FA
|099F32| STA.w $1A00

|099F35| LDA.w $0D20,X
|099F38| ADC.b #$FF
|099F3A| STA.w $1A14

|099F3D| LDA.w $0D10,X
|099F40| CLC
|099F41| ADC.b #$01
|099F43| STA.w $1A28

|099F46| LDA.w $0D30,X
|099F49| ADC.b #$00
|099F4B| STA.w $1A3C

;---------------------------------------------------------------------------------------------------

|099F4E| LDY.b $EE

|099F50| LDA.w FollowerPriority,Y
|099F53| LSR A
|099F54| LSR A
|099F55| ORA.b #$01
|099F57| STA.w $1A64

|099F5A| LDA.b #$40
|099F5C| STA.w $02D2
|099F5F| STZ.w $02D3

|099F62| STZ.w $02CF

|099F65| STZ.w $02D0
|099F68| STZ.w $02D6

|099F6B| STZ.b $5E

|099F6D| STZ.w $02F9

|099F70| LDA.b #$00
|099F72| STA.l $7EF3D3

|099F76| JSL StepTowardsLink

|099F7A| PLX
|099F7B| PLB

|099F7C| RTL

;===================================================================================================

HandleFollower:
|099F7D| PHB
|099F7E| PHK
|099F7F| PLB

|099F80| JSR .execute

|099F83| PLB

|099F84| RTL

;===================================================================================================

#FollowerVectors:
|099F85| dw Follower_BasicMover   ; 0x01 - Zelda
|099F87| dw Follower_OldMan       ; 0x02 - Old man that stops following you
|099F89| dw Follower_OldManUnused ; 0x03 - Unused old man
|099F8B| dw Follower_OldMan       ; 0x04 - Normal old man
|099F8D| dw Follower_Telepathy    ; 0x05 - Zelda rescue telepathy
|099F8F| dw Follower_BasicMover   ; 0x06 - Blind maiden
|099F91| dw Follower_BasicMover   ; 0x07 - Frogsmith
|099F93| dw Follower_BasicMover   ; 0x08 - Smithy
|099F95| dw Follower_BasicMover   ; 0x09 - Locksmith
|099F97| dw Follower_BasicMover   ; 0x0A - Kiki
|099F99| dw Follower_OldManUnused ; 0x0B - Unused old man
|099F9B| dw Follower_BasicMover   ; 0x0C - Purple chest
|099F9D| dw Follower_BasicMover   ; 0x0D - Super bomb
|099F9F| dw Follower_Telepathy    ; 0x0E - Master Sword telepathy

;===================================================================================================

.has_message
|099FA1| db $05 ; FOLLOWER 05 - Zelda rescue telepathy
|099FA2| db $09 ; FOLLOWER 09 - Locksmith
|099FA3| db $0A ; FOLLOWER 0A - Kiki

.message_timer
|099FA4| dw $0DF3 ; 3571
|099FA6| dw $06F9 ; 1785
|099FA8| dw $0DF3 ; 3571

.message_id
|099FAA| dw $001E ; MESSAGE 001E
|099FAC| dw $0106 ; MESSAGE 0106
|099FAE| dw $011B ; MESSAGE 011B

;===================================================================================================

.execute
|099FB0| LDA.l $7EF3CC
|099FB4| BNE .have_follower

|099FB6| RTS

.have_follower
|099FB7| CMP.b #$0E ; FOLLOWER 0E
|099FB9| BNE .not_ms_telepathy

|099FBB| BRL HandleFollowerMessageTrigger

;---------------------------------------------------------------------------------------------------

.not_ms_telepathy
|099FBE| LDY.b #$02

.next_check
|099FC0| LDA.l $7EF3CC
|099FC4| CMP.w .has_message,Y
|099FC7| BEQ .has_timed_message

|099FC9| DEY
|099FCA| BPL .next_check

|099FCC| BRL Follower_NoTimedMessage

;---------------------------------------------------------------------------------------------------

.has_timed_message
|099FCF| LDA.b $11
|099FD1| BNE .continue_a

|099FD3| CPY.b #$02
|099FD5| BNE .not_kiki

; [BUG] ? Fails if in dark world
|099FD7| LDA.b $8A
|099FD9| AND.b #$40
|099FDB| BNE .continue_a

.not_kiki
|099FDD| REP #$20

|099FDF| DEC.w $02CD
|099FE2| BPL .continue_a

;---------------------------------------------------------------------------------------------------

|099FE4| SEP #$20

|099FE6| JSL ValidateAbilityToNag
|099FEA| BCS .display_timed_message

|099FEC| STZ.w $02CD
|099FEF| STZ.w $02CE
|099FF2| BRA .continue_a

;---------------------------------------------------------------------------------------------------

.display_timed_message
|099FF4| REP #$20

|099FF6| PHY

|099FF7| TYA
|099FF8| AND.w #$00FF
|099FFB| ASL A
|099FFC| TAY

|099FFD| LDA.w .message_timer,Y
|09A000| STA.w $02CD

|09A003| LDA.w .message_id,Y
|09A006| STA.w $1CF0

|09A009| SEP #$20

|09A00B| JSL PrepAndDisplayMessage

|09A00F| PLY

;===================================================================================================

#Follower_Telepathy:
.continue_a
|09A010| SEP #$20

; is it Zelda?
|09A012| CPY.b #$00
|09A014| BNE Follower_NoTimedMessage

|09A016| RTS

;---------------------------------------------------------------------------------------------------

Follower_NoTimedMessage:
|09A017| SEP #$20

|09A019| LDA.l $7EF3D3
|09A01D| BEQ .follower_following

|09A01F| BRL .not_following_bounce

;---------------------------------------------------------------------------------------------------

.follower_following
|09A022| LDA.l $7EF3CC
|09A026| CMP.b #$0C ; FOLLOWER 0C
|09A028| BNE .is_purple_chest

|09A02A| LDA.b $4D
|09A02C| BNE .not_default_game_mode

|09A02E| BRA .continue_a

.is_purple_chest
|09A030| LDA.l $7EF3CC
|09A034| CMP.b #$0D ; FOLLOWER 0D
|09A036| BEQ .is_super_bomb

.not_default_game_mode
|09A038| BRL FollowerGameModeTest

.is_super_bomb
|09A03B| LDA.b $4D
|09A03D| CMP.b #$02
|09A03F| BEQ .recoiling_or_falling

|09A041| LDA.b $5B
|09A043| CMP.b #$02
|09A045| BEQ .recoiling_or_falling

;---------------------------------------------------------------------------------------------------

.continue_a
|09A047| LDA.b $11
|09A049| BNE .not_default_game_mode

|09A04B| LDA.b $4D
|09A04D| CMP.b #$01
|09A04F| BEQ FollowerGameModeTest

|09A051| BIT.w $0308
|09A054| BMI FollowerGameModeTest

|09A056| LDA.w $02F9
|09A059| BNE FollowerGameModeTest

|09A05B| LDA.w $02D0
|09A05E| BNE FollowerGameModeTest

;---------------------------------------------------------------------------------------------------

|09A060| LDX.w $02CF

|09A063| LDA.w $1A50,X
|09A066| BEQ .zero_altitude

|09A068| BPL FollowerGameModeTest

.zero_altitude
; A button pressed?
|09A06A| LDA.b $F6
|09A06C| AND.b #$80
|09A06E| BEQ FollowerGameModeTest

.recoiling_or_falling
|09A070| LDA.l $7EF3CC
|09A074| CMP.b #$0D ; FOLLOWER 0D
|09A076| BNE .not_superbomb_outdoors

|09A078| LDA.b $1B
|09A07A| BNE .not_superbomb_outdoors

;---------------------------------------------------------------------------------------------------

; Check for jumping states
|09A07C| LDA.b $5D
|09A07E| CMP.b #$08 ; LINKSTATE 08
|09A080| BEQ FollowerGameModeTest

|09A082| CMP.b #$09 ; LINKSTATE 09
|09A084| BEQ FollowerGameModeTest

|09A086| CMP.b #$0A ; LINKSTATE 0A
|09A088| BEQ FollowerGameModeTest

; Bomb timer
|09A08A| LDA.b #$03
|09A08C| STA.w $04B4

|09A08F| LDA.b #$BB
|09A091| STA.w $04B5

;---------------------------------------------------------------------------------------------------

.not_superbomb_outdoors
|09A094| LDA.b #$80
|09A096| STA.l $7EF3D3

|09A09A| LDA.b #$40
|09A09C| STA.w $02D2

|09A09F| LDX.w $02CF

|09A0A2| LDA.w $1A00,X
|09A0A5| STA.l $7EF3CD

|09A0A9| LDA.w $1A14,X
|09A0AC| STA.l $7EF3CE

|09A0B0| LDA.w $1A28,X
|09A0B3| STA.l $7EF3CF

|09A0B7| LDA.w $1A3C,X
|09A0BA| STA.l $7EF3D0

|09A0BE| LDA.b $EE
|09A0C0| STA.l $7EF3D2

|09A0C4| LDA.b $1B
|09A0C6| STA.l $7EF3D1

;---------------------------------------------------------------------------------------------------

.not_following_bounce
|09A0CA| BRL NotLiterallyFollowing

;===================================================================================================
; TODO name modes
FollowerGameModeTest:
|09A0CD| SEP #$20

|09A0CF| LDA.w $02E4
|09A0D2| BNE .dont_do_anything

|09A0D4| LDX.b $10
|09A0D6| LDY.b $11

|09A0D8| CPY.b #$0A
|09A0DA| BEQ .dont_do_anything

|09A0DC| CPX.b #$09
|09A0DE| BNE .not_overworld

|09A0E0| CPY.b #$23
|09A0E2| BEQ .dont_do_anything

;---------------------------------------------------------------------------------------------------

.not_overworld
|09A0E4| CPX.b #$0E
|09A0E6| BNE .not_text_mode

|09A0E8| CPY.b #$01
|09A0EA| BEQ .dont_do_anything

|09A0EC| CPY.b #$02
|09A0EE| BNE .not_text_mode

.dont_do_anything
|09A0F0| BRL RunFollower

;---------------------------------------------------------------------------------------------------

.not_text_mode
|09A0F3| LDA.b $30
|09A0F5| ORA.b $31
|09A0F7| BEQ RunFollower

|09A0F9| LDX.w $02D3
|09A0FC| INX
|09A0FD| CPX.b #$14
|09A0FF| BNE .dont_reset_movement_index

|09A101| LDX.b #$00

.dont_reset_movement_index
|09A103| STX.w $02D3

;---------------------------------------------------------------------------------------------------

|09A106| LDA.b $24
|09A108| CMP.b #$F0
|09A10A| BCC .use_links_altitude

|09A10C| LDA.b #$00

.use_links_altitude
|09A10E| STA.b $00
|09A110| STZ.b $01

|09A112| LDA.b $00
|09A114| STA.w $1A50,X

;---------------------------------------------------------------------------------------------------

|09A117| REP #$20

|09A119| LDA.b $20
|09A11B| SEC
|09A11C| SBC.b $00
|09A11E| STA.b $00

|09A120| SEP #$20

;---------------------------------------------------------------------------------------------------

|09A122| LDA.b $00
|09A124| STA.w $1A00,X

|09A127| LDA.b $01
|09A129| STA.w $1A14,X

|09A12C| LDA.b $22
|09A12E| STA.w $1A28,X

|09A131| LDA.b $23
|09A133| STA.w $1A3C,X

|09A136| LDA.b $2F
|09A138| LSR A
|09A139| STA.w $1A64,X

;---------------------------------------------------------------------------------------------------

|09A13C| LDY.b $EE

|09A13E| LDA.w FollowerPriority,Y
|09A141| LSR A
|09A142| LSR A
|09A143| ORA.w $1A64,X
|09A146| STA.w $1A64,X

;---------------------------------------------------------------------------------------------------

|09A149| LDA.b $5D
|09A14B| CMP.b #$04 ; LINKSTATE 04
|09A14D| BNE .not_swimming

|09A14F| LDY.b #$20

|09A151| BRA .set_priority

.not_swimming
|09A153| CMP.b #$13 ; LINKSTATE 13
|09A155| BNE .not_hookshot_drag

|09A157| LDA.w $037E
|09A15A| BEQ .not_hookshot_drag

|09A15C| LDA.b #$10
|09A15E| ORA.w $1A64,X
|09A161| STA.w $1A64,X

;---------------------------------------------------------------------------------------------------

.not_hookshot_drag
|09A164| LDY.b #$80

|09A166| LDA.w $0351
|09A169| BEQ RunFollower

|09A16B| CMP.b #$01
|09A16D| BEQ .set_priority

|09A16F| LDY.b #$40

.set_priority
|09A171| TYA
|09A172| ORA.w $1A64,X
|09A175| STA.w $1A64,X

;===================================================================================================

RunFollower:
|09A178| LDA.l $7EF3CC
|09A17C| DEC A
|09A17D| ASL A
|09A17E| TAX

|09A17F| JMP.w (FollowerVectors,X)

;===================================================================================================

UNREACHABLE_09A182:
|09A182| RTS

;===================================================================================================

Follower_BasicMover:
|09A183| LDA.w $02E4
|09A186| BNE .not_in_cutscene

|09A188| LDX.b $10
|09A18A| LDY.b $11

|09A18C| CPY.b #$0A
|09A18E| BEQ .not_in_cutscene

|09A190| CPX.b #$09
|09A192| BNE .not_overworld

|09A194| CPY.b #$23
|09A196| BEQ .not_in_cutscene

.not_overworld
|09A198| CPX.b #$0E
|09A19A| BNE .not_text_mode

|09A19C| CPY.b #$01
|09A19E| BEQ .not_in_cutscene

|09A1A0| CPY.b #$02
|09A1A2| BNE .not_text_mode

.not_in_cutscene
|09A1A4| BRL .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.not_text_mode
|09A1A7| JSR HandleFollowerMessageTrigger

; Kiki?
|09A1AA| LDA.l $7EF3CC
|09A1AE| CMP.b #$0A ; FOLLOWER 0A
|09A1B0| BNE .dont_scare_kiki

; Recoiling
|09A1B2| LDA.b $4D
|09A1B4| BEQ .dont_scare_kiki

; Blinking?
|09A1B6| LDA.w $031F
|09A1B9| BEQ .dont_scare_kiki

|09A1BB| LDA.w $02CF
|09A1BE| INC A
|09A1BF| CMP.b #$14
|09A1C1| BNE .no_index_wrap

|09A1C3| LDA.b #$00

.no_index_wrap
|09A1C5| JSL Kiki_SpawnHandler_B

|09A1C9| LDA.b #$00
|09A1CB| STA.l $7EF3CC

|09A1CF| RTS

;===================================================================================================

.dont_scare_kiki
; Blind follower?
|09A1D0| LDA.l $7EF3CC
|09A1D4| CMP.b #$06 ; FOLLOWER 06
|09A1D6| BNE .no_blind_transform

|09A1D8| REP #$20

; Check room ID
|09A1DA| LDA.b $A0
|09A1DC| CMP.w #$00AC ; ROOM 00AC
|09A1DF| BNE .no_blind_transform

; Hole not opened
|09A1E1| LDA.l $7EF0CA
|09A1E5| AND.w #$0100
|09A1E8| BEQ .no_blind_transform

|09A1EA| SEP #$20

; Check coordinates
|09A1EC| JSL CheckBlindMaidenTrigger
|09A1F0| BCC .no_blind_transform

;---------------------------------------------------------------------------------------------------

.blind_transform
|09A1F2| LDX.w $02CF

|09A1F5| LDA.w $1A28,X
|09A1F8| STA.b $00

|09A1FA| LDA.w $1A3C,X
|09A1FD| STA.b $01

|09A1FF| LDA.w $1A00,X
|09A202| STA.b $02

|09A204| LDA.w $1A14,X
|09A207| STA.b $03

|09A209| LDA.b #$00
|09A20B| STA.l $7EF3CC

|09A20F| JSL Blind_SpawnFromMaiden

|09A213| INC.w $0468

|09A216| STZ.w $068E
|09A219| STZ.w $0690

|09A21C| LDA.b #$05
|09A21E| STA.b $11

|09A220| LDA.b #$15 ; SONG 15
|09A222| STA.w $012C

|09A225| RTS

;---------------------------------------------------------------------------------------------------

.no_blind_transform
|09A226| SEP #$20

|09A228| LDY.b $5D

; TODO ?
|09A22A| LDA.w $02D0
|09A22D| BNE .ignore_hook

|09A22F| CPY.b #$13 ; LINKSTATE 13
|09A231| BNE .no_hookshot_dragging

|09A233| LDA.w $037E
|09A236| BEQ .no_hookshot_dragging

|09A238| LDA.b #$01
|09A23A| STA.w $02D0

|09A23D| BRA .continue_from_hook

.ignore_hook
|09A23F| CPY.b #$13 ; LINKSTATE 13
|09A241| BEQ .continue_from_hook

|09A243| LDA.w $02D1
|09A246| CMP.w $02CF
|09A249| BNE .advance_movement_index

|09A24B| STZ.w $02D0

;---------------------------------------------------------------------------------------------------

.no_hookshot_dragging
|09A24E| LDX.w $02CF

|09A251| LDA.w $1A50,X
|09A254| BEQ .nonpositive_z
|09A256| BMI .nonpositive_z

|09A258| LDA.w $02D3
|09A25B| CMP.w $02CF
|09A25E| BNE .advance_movement_index

|09A260| STZ.w $1A50,X

|09A263| LDA.b $20
|09A265| STA.w $1A00,X

|09A268| LDA.b $21
|09A26A| STA.w $1A14,X

|09A26D| LDA.b $22
|09A26F| STA.w $1A28,X

|09A272| LDA.b $23
|09A274| STA.w $1A3C,X

;---------------------------------------------------------------------------------------------------

.nonpositive_z
|09A277| LDA.b $30
|09A279| ORA.b $31
|09A27B| BEQ .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.continue_from_hook
|09A27D| LDA.w $02D3
|09A280| SEC
|09A281| SBC.b #$0F
|09A283| BPL .dont_wrap_index_a

|09A285| CLC
|09A286| ADC.b #$14

.dont_wrap_index_a
|09A288| CMP.w $02CF
|09A28B| BNE .proceed_to_draw

;---------------------------------------------------------------------------------------------------

.advance_movement_index
|09A28D| LDX.w $02CF
|09A290| INX
|09A291| CPX.b #$14
|09A293| BNE .dont_wrap_index_b

|09A295| LDX.b #$00

.dont_wrap_index_b
|09A297| STX.w $02CF

;---------------------------------------------------------------------------------------------------

.proceed_to_draw
|09A29A| BRL AnimateAndDrawFollower

;===================================================================================================

#EXIT_09A29D:
|09A29D| RTS

;---------------------------------------------------------------------------------------------------

NotLiterallyFollowing:
|09A29E| LDA.l $7EF3D1
|09A2A2| CMP.b $1B
|09A2A4| BNE EXIT_09A29D

|09A2A6| LDA.w $0372
|09A2A9| BNE .dont_reset_self

|09A2AB| JSR CheckFollowerProximityToLink
|09A2AE| BCS .dont_reset_self

|09A2B0| JSL InitializeFollower

|09A2B4| LDA.b $1B
|09A2B6| STA.l $7EF3D1

|09A2BA| LDA.l $7EF3CC
|09A2BE| CMP.b #$0D ; FOLLOWER 0D
|09A2C0| BNE .not_superbomb

|09A2C2| LDA.b #$FE
|09A2C4| STA.w $04B4
|09A2C7| STZ.w $04B5

.not_superbomb
|09A2CA| LDA.b #$00
|09A2CC| STA.l $7EF3D3

|09A2D0| BRL AnimateAndDrawFollower

;---------------------------------------------------------------------------------------------------

.dont_reset_self
|09A2D3| LDA.l $7EF3CC
|09A2D7| CMP.b #$0D ; FOLLOWER 0D
|09A2D9| BNE .not_superbomb_exploding

|09A2DB| LDA.b $1B
|09A2DD| BNE .not_superbomb_exploding

|09A2DF| LDA.w $04B4
|09A2E2| BNE .not_superbomb_exploding

|09A2E4| LDY.b #$00
|09A2E6| LDA.b #$3A ; ANCILLA 3A
|09A2E8| JSL AncillaAdd_SuperBombExplosion

|09A2EC| LDA.b #$00
|09A2EE| STA.l $7EF3D3

.not_superbomb_exploding
|09A2F2| BRL DoFollowerLayers

;===================================================================================================

; TODO WTF IS THIS?
pool Follower_OldMan

.replacement_follower
|09A2F5| db $00 ; 0x00 - No follower
|09A2F6| db $00 ; 0x01 - Zelda
|09A2F7| db $03 ; 0x02 - Old man that stops following you ⇒ FOLLOWER 03
|09A2F8| db $03 ; 0x03 - Unused old man ⇒ FOLLOWER 03
|09A2F9| db $04 ; 0x04 - Normal old man ⇒ FOLLOWER 04
|09A2FA| db $00 ; 0x05 - Zelda rescue telepathy
|09A2FB| db $00 ; 0x06 - Blind maiden
|09A2FC| db $00 ; 0x07 - Frogsmith
|09A2FD| db $00 ; 0x08 - Smithy
|09A2FE| db $00 ; 0x09 - Locksmith
|09A2FF| db $00 ; 0x0A - Kiki
|09A300| db $00 ; 0x0B - Unused old man
|09A301| db $00 ; 0x0C - Purple chest
|09A302| db $00 ; 0x0D - Super bomb
|09A303| db $00 ; 0x0E - Master Sword telepathy

endpool

;---------------------------------------------------------------------------------------------------

Follower_OldMan:
|09A304| LDA.w $02E4
|09A307| BNE .proceed_to_just_draw

|09A309| LDX.b $10
|09A30B| LDY.b $11
|09A30D| CPY.b #$0A
|09A30F| BEQ .proceed_to_just_draw

|09A311| CPX.b #$09
|09A313| BNE .not_overworld

|09A315| CPY.b #$23
|09A317| BEQ .proceed_to_just_draw

.not_overworld
|09A319| CPX.b #$0E
|09A31B| BNE .not_textbox

|09A31D| CPY.b #$01
|09A31F| BEQ .proceed_to_just_draw

|09A321| CPY.b #$02
|09A323| BNE .not_textbox

.proceed_to_just_draw
|09A325| BRL .just_draw

;---------------------------------------------------------------------------------------------------

.not_textbox
|09A328| LDA.b $5E
|09A32A| CMP.b #$04
|09A32C| BEQ .dont_reset_link_speed

|09A32E| LDA.b #$0C
|09A330| STA.b $5E

.dont_reset_link_speed
|09A332| JSR HandleFollowerMessageTrigger

|09A335| SEP #$30

|09A337| LDA.l $7EF3CC
|09A33B| BNE .have_old_man_indeed

|09A33D| RTS

;---------------------------------------------------------------------------------------------------

.have_old_man_indeed
|09A33E| CMP.b #$04
|09A340| BNE .not_normal_old_man

|09A342| LDX.w $02CF

|09A345| LDA.w $1A50,X
|09A348| BEQ .proceed_to_check_velocity
|09A34A| BMI .proceed_to_check_velocity

|09A34C| LDA.w $02CF
|09A34F| CMP.w $02D3
|09A352| BEQ .proceed_to_check_velocity

|09A354| BRL .advance_movement_index

;---------------------------------------------------------------------------------------------------

.proceed_to_check_velocity
|09A357| BRL .check_link_velocity

;---------------------------------------------------------------------------------------------------

.not_normal_old_man
|09A35A| LDA.b $4D
|09A35C| AND.b #$01
|09A35E| BEQ .check_for_recoiling

|09A360| LDA.b $5D
|09A362| CMP.b #$06 ; LINKSTATE 06
|09A364| BNE .check_for_recoiling

|09A366| LDA.w $02D3
|09A369| CMP.w $02CF
|09A36C| BNE .replace_that_follower

|09A36E| DEX
|09A36F| STX.w $02CF
|09A372| BPL .replace_that_follower

|09A374| LDA.b #$13
|09A376| STA.w $02CF

.check_for_recoiling
|09A379| LDA.b $4D
|09A37B| AND.b #$02
|09A37D| BEQ .check_link_velocity

.replace_that_follower
|09A37F| LDA.l $7EF3CC
|09A383| TAX

|09A384| LDA.w .replacement_follower,X
|09A387| STA.l $7EF3CC

|09A38B| LDA.b #$40
|09A38D| STA.w $02D2

;---------------------------------------------------------------------------------------------------

|09A390| LDX.w $02CF

|09A393| LDA.w $1A00,X
|09A396| STA.l $7EF3CD

|09A39A| LDA.w $1A14,X
|09A39D| STA.l $7EF3CE

|09A3A1| LDA.w $1A28,X
|09A3A4| STA.l $7EF3CF

|09A3A8| LDA.w $1A3C,X
|09A3AB| STA.l $7EF3D0

|09A3AF| LDA.b $EE
|09A3B1| STA.l $7EF3D2

|09A3B5| BRA Follower_OldManUnused

;---------------------------------------------------------------------------------------------------

.check_link_velocity
|09A3B7| LDA.b $30
|09A3B9| ORA.b $31
|09A3BB| BNE .link_moving

|09A3BD| LDA.b $1A
|09A3BF| AND.b #$03
|09A3C1| BNE .just_draw

|09A3C3| LDA.w $02D3
|09A3C6| CMP.w $02CF
|09A3C9| BEQ .just_draw

|09A3CB| SEC
|09A3CC| SBC.b #$09
|09A3CE| BPL .no_back_wrap_a

|09A3D0| CLC
|09A3D1| ADC.b #$14

.no_back_wrap_a
|09A3D3| CMP.w $02CF
|09A3D6| BNE .advance_movement_index

|09A3D8| BRL .just_draw

;---------------------------------------------------------------------------------------------------

.link_moving
|09A3DB| LDA.w $02D3
|09A3DE| SEC
|09A3DF| SBC.b #$14
|09A3E1| BPL .no_back_wrap_b

|09A3E3| CLC
|09A3E4| ADC.b #$14

.no_back_wrap_b
|09A3E6| CMP.w $02CF
|09A3E9| BNE .just_draw

;---------------------------------------------------------------------------------------------------

.advance_movement_index
|09A3EB| LDX.w $02CF
|09A3EE| INX
|09A3EF| CPX.b #$14
|09A3F1| BCC .no_wrap

|09A3F3| LDX.b #$00

.no_wrap
|09A3F5| STX.w $02CF

;---------------------------------------------------------------------------------------------------

.just_draw
|09A3F8| BRL AnimateAndDrawFollower

;===================================================================================================

UNREACHABLE_09A3FB:
|09A3FB| RTS

;===================================================================================================

pool Follower_OldManUnused

.replacement_follower
|09A3FC| db $00 ; 0x00 - No follower
|09A3FD| db $00 ; 0x01 - Zelda
|09A3FE| db $00 ; 0x02 - Old man that stops following you
|09A3FF| db $02 ; 0x03 - Unused old man ⇒ FOLLOWER 02
|09A400| db $00 ; 0x04 - Normal old man
|09A401| db $00 ; 0x05 - Zelda rescue telepathy
|09A402| db $00 ; 0x06 - Blind maiden
|09A403| db $00 ; 0x07 - Frogsmith
|09A404| db $00 ; 0x08 - Smithy
|09A405| db $00 ; 0x09 - Locksmith
|09A406| db $00 ; 0x0A - Kiki
|09A407| db $00 ; 0x0B - Unused old man
|09A408| db $00 ; 0x0C - Purple chest
|09A409| db $00 ; 0x0D - Super bomb
|09A40A| db $00 ; 0x0E - Master Sword telepathy

endpool

;---------------------------------------------------------------------------------------------------

Follower_OldManUnused:
|09A40B| LDA.b #$10
|09A40D| STA.b $5E

; Dashing?
|09A40F| LDA.w $0372
|09A412| BNE DoFollowerLayers

; Recoiling?
|09A414| LDA.b $4D
|09A416| BNE DoFollowerLayers

; Swimming?
|09A418| LDA.b $5D
|09A41A| CMP.b #$04 ; LINKSTATE 04
|09A41C| BEQ DoFollowerLayers

|09A41E| STZ.b $5E

; Hookshotting?
|09A420| LDA.b $5D
|09A422| CMP.b #$13 ; LINKSTATE 13
|09A424| BEQ DoFollowerLayers

|09A426| JSR CheckFollowerProximityToLink
|09A429| BCS DoFollowerLayers

|09A42B| JSL InitializeFollower

|09A42F| LDA.l $7EF3CC
|09A433| TAX

|09A434| LDA.w .replacement_follower,X
|09A437| STA.l $7EF3CC

|09A43B| RTS

;===================================================================================================

DoFollowerLayers:
|09A43C| LDA.l $7EF3D2
|09A440| TAX

; huh?
; If it doesn't match, continue
; Otherwise, load...? Which leaves it the same...
|09A441| CPX.b $EE
|09A443| BNE .layer_mismatch

|09A445| LDX.b $EE

.layer_mismatch
|09A447| LDA.w FollowerPriority,X
|09A44A| STA.b $65
|09A44C| STZ.b $64

|09A44E| LDA.l $7EF3CD
|09A452| STA.b $00

|09A454| LDA.l $7EF3CE
|09A458| STA.b $01

|09A45A| LDA.l $7EF3CF
|09A45E| STA.b $02

|09A460| LDA.l $7EF3D0
|09A464| STA.b $03

|09A466| LDX.b #$02

|09A468| LDA.l $7EF3CC
|09A46C| CMP.b #$0D ; FOLLOWER 0D
|09A46E| BEQ .bomb_or_chest

|09A470| CMP.b #$0C ; FOLLOWER 0C
|09A472| BEQ .bomb_or_chest

|09A474| LDX.b #$01

.bomb_or_chest
|09A476| TXA
|09A477| BRL AnimateFollower_preserved

;===================================================================================================

CheckFollowerProximityToLink:
|09A47A| DEC.w $02D2
|09A47D| BPL .too_far

|09A47F| STZ.w $02D2

|09A482| REP #$20

|09A484| LDA.l $7EF3CD
|09A488| SEC
|09A489| SBC.w #$0001

|09A48C| CMP.b $20
|09A48E| BCS .too_far

|09A490| CLC
|09A491| ADC.w #$0014
|09A494| CMP.b $20
|09A496| BCC .too_far

|09A498| LDA.l $7EF3CF
|09A49C| SEC
|09A49D| SBC.w #$0001
|09A4A0| CMP.b $22
|09A4A2| BCS .too_far

|09A4A4| CLC
|09A4A5| ADC.w #$0014
|09A4A8| CMP.b $22
|09A4AA| BCC .too_far

;---------------------------------------------------------------------------------------------------

.good
|09A4AC| SEP #$20

|09A4AE| CLC

|09A4AF| RTS

.too_far
|09A4B0| SEP #$20

|09A4B2| SEC

|09A4B3| RTS

;===================================================================================================

pool HandleFollowerMessageTrigger

.room_id
|09A4B4| dw $00F1 ; ROOM 00F1 - old man cave
|09A4B6| dw $0061 ; ROOM 0061 - castle lobby
|09A4B8| dw $0051 ; ROOM 0051 - castle throne room
|09A4BA| dw $0002 ; ROOM 0002 - pre-sanc
|09A4BC| dw $00DB ; ROOM 00DB - TT entrance
|09A4BE| dw $00AB ; ROOM 00AB - to TT attic
|09A4C0| dw $0022 ; ROOM 0022 - sewer rats

.coordinates_uw
;              Y      X     ID     MSG   Follower
|09A4C2| dw $1EF0, $0288, $0001, $0097, $0004 ; Old man - MESSAGE 0097
|09A4CC| dw $1E58, $02F0, $0002, $0098, $0004 ; Old man - MESSAGE 0098
|09A4D6| dw $1EA8, $03B8, $0004, $0099, $0004 ; Old man - MESSAGE 0099

|09A4E0| dw $0CF8, $025B, $0001, $001F, $0001 ; Zelda - MESSAGE 001F
|09A4EA| dw $0CF8, $039D, $0002, $001F, $0001 ; Zelda - MESSAGE 001F
|09A4F4| dw $0C78, $0238, $0004, $001F, $0001 ; Zelda - MESSAGE 001F

|09A4FE| dw $0A30, $02F8, $0001, $0020, $0001 ; Zelda - MESSAGE 0020

|09A508| dw $0178, $0550, $0001, $0021, $0001 ; Zelda - MESSAGE 0021
|09A512| dw $0168, $04F8, $0002, $0028, $0001 ; Zelda - MESSAGE 0028

|09A51C| dw $1BD8, $16FC, $0001, $0122, $0006 ; Blind maiden - MESSAGE 0122

|09A526| dw $1520, $167C, $0001, $0122, $0006 ; Blind maiden - MESSAGE 0122

|09A530| dw $05AC, $04FC, $0001, $0027, $0001 ; Zelda - MESSAGE 0027

;---------------------------------------------------------------------------------------------------

.overworld_id
|09A53A| dw $0003 ; OW 03 - West DM
|09A53C| dw $005E ; OW 5E - POD
|09A53E| dw $0000 ; OW 00 - Lost woods

.coordinates_ow
;              Y      X     ID     MSG   Follower
|09A540| dw $03C0, $0730, $0001, $009B, $0004 ; Old man - MESSAGE 009B

|09A54A| dw $0648, $0F50, $0000, $FFFF, $000A ; Kiki
|09A554| dw $06C8, $0D78, $0001, $FFFF, $000A ; Kiki
|09A55E| dw $0688, $0C78, $0002, $FFFF, $000A ; Kiki

|09A568| dw $00E8, $0090, $0000, $0026, $000E ; MS telepathy - MESSAGE 0026

;---------------------------------------------------------------------------------------------------

.room_boundaries_check
|09A572| dw $0000, $001E, $003C, $0046
|09A57A| dw $005A, $0064, $006E, $0078

.ow_boundaries_check
|09A582| dw $0000, $000A, $0028, $0032

endpool

;---------------------------------------------------------------------------------------------------

HandleFollowerMessageTrigger:
|09A58A| LDA.b $11
|09A58C| BNE .fail_fast

|09A58E| REP #$30

|09A590| LDY.w #$0000

|09A593| LDA.b $1B
|09A595| AND.w #$00FF
|09A598| BEQ .overworld

|09A59A| INY

|09A59B| LDX.w #$000C
|09A59E| LDA.b $A0

.next_room_check
|09A5A0| CMP.w .room_id,X
|09A5A3| BEQ .room_match

|09A5A5| DEX
|09A5A6| DEX
|09A5A7| BPL .next_room_check

|09A5A9| BRA .fail_fast

;---------------------------------------------------------------------------------------------------

.overworld
|09A5AB| LDX.w #$0004

|09A5AE| LDA.b $8A

.next_screen_check
|09A5B0| CMP.w .overworld_id,X
|09A5B3| BEQ .overworld_match

|09A5B5| DEX
|09A5B6| DEX
|09A5B7| BPL .next_screen_check

.fail_fast
|09A5B9| BRL .exit

;---------------------------------------------------------------------------------------------------

.room_match
|09A5BC| LDA.w .room_boundaries_check+2,X
|09A5BF| STA.b $08

|09A5C1| LDA.w .room_boundaries_check+0,X
|09A5C4| TAX

.next_follower_uw
|09A5C5| STX.b $0C
|09A5C7| STZ.b $0A

|09A5C9| LDA.l $7EF3CC
|09A5CD| AND.w #$00FF
|09A5D0| CMP.w .coordinates_uw+8,X
|09A5D3| BNE .wrong_follower_uw

|09A5D5| LDA.w .coordinates_uw+0,X
|09A5D8| STA.b $00

|09A5DA| LDA.w .coordinates_uw+2,X
|09A5DD| STA.b $02

|09A5DF| LDA.w .coordinates_uw+4,X
|09A5E2| STA.b $06

|09A5E4| LDA.w .coordinates_uw+6,X
|09A5E7| STA.b $04

|09A5E9| SEP #$30

|09A5EB| JSR CheckForMessageTrigger
|09A5EE| BCS .trigger_activated

|09A5F0| REP #$30

.wrong_follower_uw
|09A5F2| LDA.b $0C
|09A5F4| CLC
|09A5F5| ADC.w #$000A
|09A5F8| TAX

|09A5F9| CPX.b $08
|09A5FB| BNE .next_follower_uw

|09A5FD| BRL .exit

;---------------------------------------------------------------------------------------------------

.overworld_match
|09A600| LDA.w .ow_boundaries_check+2,X
|09A603| STA.b $08

|09A605| LDA.w .ow_boundaries_check+0,X
|09A608| TAX

.next_follower_ow
|09A609| STX.b $0C
|09A60B| STZ.b $0A

|09A60D| LDA.l $7EF3CC
|09A611| AND.w #$00FF
|09A614| CMP.w .coordinates_ow+8,X
|09A617| BNE .wrong_follower_ow

|09A619| LDA.w .coordinates_ow+0,X
|09A61C| STA.b $00

|09A61E| LDA.w .coordinates_ow+2,X
|09A621| STA.b $02

|09A623| LDA.w .coordinates_ow+4,X
|09A626| STA.b $06

|09A628| LDA.w .coordinates_ow+6,X
|09A62B| STA.b $04

|09A62D| SEP #$30

|09A62F| JSR CheckForMessageTrigger
|09A632| BCS .trigger_activated

|09A634| REP #$30

.wrong_follower_ow
|09A636| LDA.b $0C
|09A638| CLC
|09A639| ADC.w #$000A
|09A63C| TAX

|09A63D| CPX.b $08
|09A63F| BNE .next_follower_ow

|09A641| BRA .exit

;---------------------------------------------------------------------------------------------------

.trigger_activated
|09A643| SEP #$10
|09A645| REP #$20

|09A647| LDA.w $02F2
|09A64A| AND.b $06
|09A64C| BNE .exit

|09A64E| LDA.b $06
|09A650| TSB.w $02F2

|09A653| LDA.b $04
|09A655| STA.w $1CF0

|09A658| CMP.w #$FFFF
|09A65B| BEQ .no_message

|09A65D| CMP.w #$009B ; MESSAGE 009B
|09A660| BEQ .old_man_ow_message

; MS Telepathy
|09A662| CMP.w #$0026 ; MESSAGE 0026
|09A665| BNE .continue_with_message_id

|09A667| SEP #$20

|09A669| LDA.b #$00
|09A66B| STA.l $7EF3CC

|09A66F| BRA .continue_with_message_id

;---------------------------------------------------------------------------------------------------

.old_man_ow_message
|09A671| SEP #$20

|09A673| LDA.w $02CF
|09A676| INC A
|09A677| CMP.b #$14
|09A679| BNE .dont_reset_movement_index_geezer

|09A67B| LDA.b #$00

.dont_reset_movement_index_geezer
|09A67D| JSL OldMan_RevertToSprite

.continue_with_message_id
|09A681| SEP #$20

|09A683| JSL PrepAndDisplayMessage

|09A687| BRA .exit

;---------------------------------------------------------------------------------------------------

.no_message
|09A689| SEP #$30

|09A68B| LDA.w $02CF
|09A68E| INC A
|09A68F| CMP.b #$14
|09A691| BNE .dont_reset_movement_index_kiki

|09A693| LDA.b #$00

.dont_reset_movement_index_kiki
|09A695| PHA

|09A696| LDA.b $06
|09A698| AND.b #$03
|09A69A| BNE .dont_revert_to_sprite

|09A69C| PLA
|09A69D| JSL Kiki_RevertToSprite

|09A6A1| BRA .exit

;---------------------------------------------------------------------------------------------------

.dont_revert_to_sprite
|09A6A3| PLA
|09A6A4| STA.b $00

|09A6A6| LDX.b $8A

|09A6A8| LDA.l $7EF280,X
|09A6AC| AND.b #$01
|09A6AE| BNE .exit

|09A6B0| LDA.b $00
|09A6B2| JSL Kiki_SpawnHandler_A

;---------------------------------------------------------------------------------------------------

.exit
|09A6B6| SEP #$30

|09A6B8| RTS

;===================================================================================================

pool ActuallyDrawFollower

.props
; hh, bb, fl
;   h - head GFX offset
;   b - body GFX offset
;   f - head flip
;   l - body flip
|09A6B9| db $20, $C0, $00 ; up
|09A6BC| db $00, $A0, $00 ; down
|09A6BF| db $40, $60, $00 ; left
|09A6C2| db $40, $60, $44 ; right

|09A6C5| db $20, $C0, $04 ; up
|09A6C8| db $00, $A0, $04 ; down
|09A6CB| db $40, $80, $00 ; left
|09A6CE| db $40, $80, $44 ; right

|09A6D1| db $20, $E0, $00 ; up
|09A6D4| db $00, $E0, $00 ; down
|09A6D7| db $40, $E0, $00 ; left
|09A6DA| db $40, $E0, $44 ; right

|09A6DD| db $20, $E0, $04 ; up
|09A6E0| db $00, $E0, $04 ; down
|09A6E3| db $40, $E0, $04 ; left
|09A6E6| db $40, $E0, $40 ; right

;---------------------------------------------------------------------------------------------------

.char_offset
; Zelda, Maiden
|09A6E9| dw  -2,   0,   0,   0 ; up
|09A6F1| dw  -2,   0,   0,   0
|09A6F9| dw  -2,   0,   0,   0 ; down
|09A701| dw  -2,   0,   0,   0
|09A709| dw  -1,   0,   1,   0 ; left
|09A711| dw  -1,   0,   1,   0
|09A719| dw  -1,   0,   1,   0 ; right
|09A721| dw  -1,   0,   1,   0

|09A729| dw   0,   0,   0,   0 ; up
|09A731| dw   0,   0,   0,   0
|09A739| dw   0,   0,   0,   0 ; down
|09A741| dw   0,   0,   0,   0
|09A749| dw   1,   0,   0,   0 ; left
|09A751| dw   1,   0,   0,   0
|09A759| dw   1,   0,   0,   0 ; right
|09A761| dw   1,   0,   0,   0

; Old man
|09A769| dw   0,   0,   0,   0 ; up
|09A771| dw   0,   0,   0,   0
|09A779| dw   0,  -3,   0,   0 ; down
|09A781| dw   0,   3,   0,   0
|09A789| dw   1,   0,   0,   0 ; left
|09A791| dw   1,   0,   0,   0
|09A799| dw   1,  -3,   1,   0 ; right
|09A7A1| dw   1,   3,   1,   0

; Frog, Smithy
|09A7A9| dw   0,   0,   0,   0 ; up
|09A7B1| dw   0,   0,   0,   0
|09A7B9| dw   0,   0,   0,   0 ; down
|09A7C1| dw   0,   0,   0,   0
|09A7C9| dw   0,   0,   1,   0 ; left
|09A7D1| dw   0,   0,   1,   0
|09A7D9| dw   0,   0,   1,   0 ; right
|09A7E1| dw   0,   0,   1,   0

; Lock smith
|09A7E9| dw  -1,   0,   0,   0 ; up
|09A7F1| dw  -1,   0,   0,   0
|09A7F9| dw  -1,   0,   0,   0 ; down
|09A801| dw  -1,   0,   0,   0
|09A809| dw   0,   0,   1,   0 ; left
|09A811| dw   0,   0,   1,   0
|09A819| dw   0,   0,   1,   0 ; right
|09A821| dw   0,   0,   1,   0

; Purple chest, Super bomb
|09A829| dw   0,   0,   0,   0
|09A831| dw   0,   0,   0,   0
|09A839| dw   0,   0,   0,   0
|09A841| dw   0,   0,   0,   0
|09A849| dw   0,   0,   0,   0
|09A851| dw   0,   0,   0,   0
|09A859| dw   0,   0,   0,   0
|09A861| dw   0,   0,   0,   0

; Kiki
|09A869| dw   2,   0,   0,   0 ; up
|09A871| dw   2,   0,   0,   0
|09A879| dw   2,  -1,   0,   0 ; down
|09A881| dw   2,   1,   0,   0
|09A889| dw   3,   0,   1,   0 ; left
|09A891| dw   3,   0,   1,   0
|09A899| dw   3,  -1,   1,   0 ; right
|09A8A1| dw   3,   1,   1,   0

;---------------------------------------------------------------------------------------------------

.char_data_offset
|09A8A9| dw $0000 ; 0x00 - No follower
|09A8AB| dw $0000 ; 0x01 - Zelda
|09A8AD| dw $0080 ; 0x02 - Old man that stops following you
|09A8AF| dw $0080 ; 0x03 - Unused old man
|09A8B1| dw $0080 ; 0x04 - Normal old man
|09A8B3| dw $0000 ; 0x05 - Zelda rescue telepathy
|09A8B5| dw $0000 ; 0x06 - Blind maiden
|09A8B7| dw $00C0 ; 0x07 - Frogsmith
|09A8B9| dw $00C0 ; 0x08 - Smithy
|09A8BB| dw $0100 ; 0x09 - Locksmith
|09A8BD| dw $0180 ; 0x0A - Kiki
|09A8BF| dw $0180 ; 0x0B - Unused old man
|09A8C1| dw $0140 ; 0x0C - Purple chest
|09A8C3| dw $0140 ; 0x0D - Super bomb

.head_body_char
|09A8C5| db $D8, $24, $D8, $64
|09A8C9| db $D9, $24, $D9, $64
|09A8CD| db $DA, $24, $DA, $64
|09A8D1| db $C8, $22, $C8, $62
|09A8D5| db $C9, $22, $C9, $62
|09A8D9| db $CA, $22, $CA, $62

;---------------------------------------------------------------------------------------------------

.oam_region_offsets_a
|09A8DD| dw $0170
|09A8DF| dw $00C0

.oam_region_offsets_b
|09A8E1| dw $01C0
|09A8E3| dw $0110

;---------------------------------------------------------------------------------------------------

.palette
|09A8E5| db $00 ; 0x00 - No follower
|09A8E6| db $04 ; 0x01 - Zelda
|09A8E7| db $04 ; 0x02 - Old man that stops following you
|09A8E8| db $04 ; 0x03 - Unused old man
|09A8E9| db $04 ; 0x04 - Normal old man
|09A8EA| db $00 ; 0x05 - Zelda rescue telepathy
|09A8EB| db $07 ; 0x06 - Blind maiden
|09A8EC| db $04 ; 0x07 - Frogsmith
|09A8ED| db $04 ; 0x08 - Smithy
|09A8EE| db $03 ; 0x09 - Locksmith
|09A8EF| db $04 ; 0x0A - Kiki
|09A8F0| db $04 ; 0x0B - Unused old man
|09A8F1| db $04 ; 0x0C - Purple chest
|09A8F2| db $04 ; 0x0D - Super bomb

endpool

;---------------------------------------------------------------------------------------------------

AnimateAndDrawFollower:
|09A8F3| LDA.w $02F9
|09A8F6| BEQ .do_indeed_draw

|09A8F8| RTS

;---------------------------------------------------------------------------------------------------

.do_indeed_draw
|09A8F9| PHX
|09A8FA| PHY

|09A8FB| LDX.w $02CF

|09A8FE| LDA.w $1A50,X
|09A901| BEQ .not_floating_outdoors

|09A903| LDA.b $1B
|09A905| BNE .not_floating_outdoors

|09A907| LDA.b #$20
|09A909| BRA .continue

; TODO what module is expected here?
.not_floating_outdoors
|09A90B| LDA.b $11
|09A90D| CMP.b #$0E
|09A90F| BNE .dont_copy_priority

|09A911| LDY.b $EE
|09A913| LDA.w FollowerPriority,Y

|09A916| BRA .continue

;---------------------------------------------------------------------------------------------------

.dont_copy_priority
|09A918| LDA.w $1A64,X
|09A91B| AND.b #$0C
|09A91D| ASL A
|09A91E| ASL A

.continue
|09A91F| STA.b $65
|09A921| STZ.b $64

|09A923| LDX.w $02CF
|09A926| BPL .no_back_wrap

|09A928| LDX.b #$00

.no_back_wrap
|09A92A| LDA.w $1A00,X
|09A92D| STA.b $00

|09A92F| LDA.w $1A14,X
|09A932| STA.b $01

|09A934| LDA.w $1A28,X
|09A937| STA.b $02

|09A939| LDA.w $1A3C,X
|09A93C| STA.b $03

|09A93E| LDA.w $1A64,X

|09A941| BRA AnimateFollower

;===================================================================================================

AnimateFollower_preserved:
|09A943| PHX
|09A944| PHY

;===================================================================================================

AnimateFollower:
|09A945| STA.b $05

|09A947| AND.b #$20
|09A949| LSR A
|09A94A| LSR A
|09A94B| TAY

|09A94C| LDA.b $05
|09A94E| AND.b #$03
|09A950| STA.b $04

|09A952| STZ.b $72

|09A954| CPY.b #$08
|09A956| BNE .low_priority

|09A958| LDY.b #$00

|09A95A| LDA.l $7EF3CC
|09A95E| CMP.b #$06 ; FOLLOWER 06
|09A960| BEQ .is_maiden

|09A962| CMP.b #$01 ; FOLLOWER 01
|09A964| BNE .low_priority

.is_maiden
|09A966| LDY.b #$08

|09A968| LDA.w $033C
|09A96B| ORA.w $033D
|09A96E| ORA.w $033E
|09A971| ORA.w $033F
|09A974| BEQ .no_collision

|09A976| LDA.b $1A
|09A978| AND.b #$08
|09A97A| LSR A
|09A97B| BRA ActuallyDrawFollower

.no_collision
|09A97D| LDA.b $1A
|09A97F| AND.b #$10
|09A981| LSR A
|09A982| LSR A

|09A983| BRA ActuallyDrawFollower

;---------------------------------------------------------------------------------------------------

.low_priority
|09A985| LDA.b $11
|09A987| CMP.b #$0E
|09A989| BEQ .check_dashing

|09A98B| CMP.b #$08
|09A98D| BEQ .check_dashing

|09A98F| CMP.b #$10
|09A991| BEQ .check_dashing

|09A993| LDA.l $7EF3CC
|09A997| CMP.b #$0B ; FOLLOWER 0B
|09A999| BEQ .not_dashing

|09A99B| CMP.b #$0D ; FOLLOWER 0D
|09A99D| BEQ .super_bomb

|09A99F| CMP.b #$0C ; FOLLOWER 0C
|09A9A1| BNE .not_purple_chest

.super_bomb
|09A9A3| LDA.l $7EF3D3
|09A9A7| BNE .immobile

;---------------------------------------------------------------------------------------------------

.not_purple_chest
|09A9A9| LDA.w $02E4
|09A9AC| BNE .immobile

|09A9AE| LDA.b $11
|09A9B0| CMP.b #$0A
|09A9B2| BEQ .immobile

|09A9B4| LDA.b $10
|09A9B6| CMP.b #$09
|09A9B8| BNE .not_overworld

|09A9BA| LDA.b $11
|09A9BC| CMP.b #$23
|09A9BE| BEQ .immobile

;---------------------------------------------------------------------------------------------------

.not_overworld
|09A9C0| LDA.b $10
|09A9C2| CMP.b #$0E
|09A9C4| BNE .not_interface

|09A9C6| LDA.b $11
|09A9C8| CMP.b #$01
|09A9CA| BEQ .immobile

|09A9CC| CMP.b #$02
|09A9CE| BEQ .immobile

;---------------------------------------------------------------------------------------------------

.not_interface
|09A9D0| LDA.b $30
|09A9D2| ORA.b $31
|09A9D4| BNE .check_dashing

.immobile
|09A9D6| LDA.b #$04
|09A9D8| STA.b $72

|09A9DA| BRA ActuallyDrawFollower

;---------------------------------------------------------------------------------------------------

.check_dashing
|09A9DC| LDA.w $0372
|09A9DF| BEQ .not_dashing

|09A9E1| LDA.b $1A
|09A9E3| AND.b #$04
|09A9E5| BRA ActuallyDrawFollower

.not_dashing
|09A9E7| LDA.b $1A
|09A9E9| AND.b #$08
|09A9EB| LSR A

;===================================================================================================

ActuallyDrawFollower:
|09A9EC| CLC
|09A9ED| ADC.b $04
|09A9EF| STA.b $04

|09A9F1| TYA
|09A9F2| CLC
|09A9F3| ADC.b $04
|09A9F5| STA.b $04

;---------------------------------------------------------------------------------------------------

|09A9F7| REP #$20

|09A9F9| LDA.w $0FB3
|09A9FC| AND.w #$00FF
|09A9FF| ASL A
|09AA00| TAY

|09AA01| LDA.b $20
|09AA03| CMP.b $00
|09AA05| BEQ .check_priority_for_region
|09AA07| BCS .use_region_b

|09AA09| BRA .use_region_a

.check_priority_for_region
|09AA0B| LDA.b $05
|09AA0D| AND.w #$0003
|09AA10| BNE .use_region_b

.use_region_a
|09AA12| LDA.w .oam_region_offsets_a,Y
|09AA15| BRA .set_region

.use_region_b
|09AA17| LDA.w .oam_region_offsets_b,Y

.set_region
|09AA1A| PHA

|09AA1B| LSR A
|09AA1C| LSR A
|09AA1D| CLC
|09AA1E| ADC.w #$0A20
|09AA21| STA.b $92

|09AA23| PLA
|09AA24| CLC
|09AA25| ADC.w #$0800
|09AA28| STA.b $90

;---------------------------------------------------------------------------------------------------

|09AA2A| LDA.b $00
|09AA2C| SEC
|09AA2D| SBC.b $E8
|09AA2F| STA.b $06

|09AA31| LDA.b $02
|09AA33| SEC
|09AA34| SBC.b $E2
|09AA36| STA.b $08

|09AA38| SEP #$20

|09AA3A| LDY.b #$00
|09AA3C| LDX.b #$00

|09AA3E| LDA.l $7EF3CC

; Zelda?
|09AA42| CMP.b #$01 ; FOLLOWER 01
|09AA44| BEQ .girly_follower

; Maiden?
|09AA46| CMP.b #$06 ; FOLLOWER 06
|09AA48| BEQ .girly_follower

|09AA4A| LDA.b $05
|09AA4C| AND.b #$20
|09AA4E| BEQ .girly_follower

|09AA50| BRA .not_girly_follower

.girly_follower
|09AA52| LDA.b $05
|09AA54| AND.b #$C0
|09AA56| BNE .some_flip

|09AA58| BRL .do_chars

.some_flip
|09AA5B| LDA.b $05
|09AA5D| AND.b #$80
|09AA5F| BNE .not_girly_follower

|09AA61| LDX.b #$0C

|09AA63| LDA.b $72
|09AA65| BEQ .not_girly_follower

|09AA67| LDA.b #$00
|09AA69| BRA .set_repri

.not_girly_follower
|09AA6B| LDA.b $1A
|09AA6D| AND.b #$07
|09AA6F| BNE .dont_shimmy

|09AA71| LDA.w $02D7
|09AA74| INC A
|09AA75| CMP.b #$03
|09AA77| BNE .set_repri

|09AA79| LDA.b #$00

.set_repri
|09AA7B| STA.w $02D7

;---------------------------------------------------------------------------------------------------

.dont_shimmy
|09AA7E| LDA.w $02D7
|09AA81| ASL A
|09AA82| ASL A
|09AA83| STA.b $05

|09AA85| TXA
|09AA86| CLC
|09AA87| ADC.b $05
|09AA89| TAX

|09AA8A| REP #$20

|09AA8C| LDA.b $06
|09AA8E| CLC
|09AA8F| ADC.w #$0010
|09AA92| STA.b $00

|09AA94| LDA.b $08
|09AA96| STA.b $02

|09AA98| STZ.b $74

;---------------------------------------------------------------------------------------------------

|09AA9A| SEP #$20

|09AA9C| JSR CalculateFollowerOAMCoords

|09AA9F| LDA.w .head_body_char+0,X
|09AAA2| STA.b ($90),Y

|09AAA4| INY

|09AAA5| LDA.w .head_body_char+1,X
|09AAA8| STA.b ($90),Y

|09AAAA| INY

|09AAAB| PHY
|09AAAC| TYA
|09AAAD| SEC
|09AAAE| SBC.b #$04

|09AAB0| LSR A
|09AAB1| LSR A
|09AAB2| TAY

|09AAB3| LDA.b #$00
|09AAB5| ORA.b $75
|09AAB7| STA.b ($92),Y

|09AAB9| PLY

;---------------------------------------------------------------------------------------------------

|09AABA| REP #$20

|09AABC| LDA.b $02
|09AABE| CLC
|09AABF| ADC.w #$0008
|09AAC2| STA.b $02

|09AAC4| STZ.b $74

|09AAC6| SEP #$20

|09AAC8| JSR CalculateFollowerOAMCoords

|09AACB| LDA.w .head_body_char+2,X
|09AACE| STA.b ($90),Y

|09AAD0| INY

|09AAD1| LDA.w .head_body_char+3,X
|09AAD4| STA.b ($90),Y

|09AAD6| INY

|09AAD7| PHY

|09AAD8| TYA
|09AAD9| SEC
|09AADA| SBC.b #$04

|09AADC| LSR A
|09AADD| LSR A
|09AADE| TAY

|09AADF| LDA.b #$00
|09AAE1| ORA.b $75
|09AAE3| STA.b ($92),Y

|09AAE5| PLY

;---------------------------------------------------------------------------------------------------

.do_chars
|09AAE6| LDA.l $7EF3CC
|09AAEA| TAX

|09AAEB| LDA.w .palette,X
|09AAEE| CMP.b #$07
|09AAF0| BNE .not_link_palette_a

|09AAF2| TAX

|09AAF3| LDA.w $0ABD
|09AAF6| BEQ .no_trans_a

|09AAF8| LDX.b #$00

.no_trans_a
|09AAFA| TXA

;---------------------------------------------------------------------------------------------------

.not_link_palette_a
|09AAFB| ASL A
|09AAFC| STA.b $72

|09AAFE| LDA.l $7EF3CC
|09AB02| CMP.b #$0D ; FOLLOWER 0D
|09AB04| BNE .not_exploding_superbomb

|09AB06| LDA.w $04B4
|09AB09| CMP.b #$01
|09AB0B| BNE .not_exploding_superbomb

|09AB0D| LDA.b $1A
|09AB0F| AND.b #$07
|09AB11| ASL A
|09AB12| STA.b $72

;---------------------------------------------------------------------------------------------------

.not_exploding_superbomb
|09AB14| LDA.l $7EF3CC
|09AB18| CMP.b #$0D ; FOLLOWER 0D
|09AB1A| BEQ .bomb_or_chest

|09AB1C| CMP.b #$0C ; FOLLOWER 0C
|09AB1E| BEQ .bomb_or_chest

;---------------------------------------------------------------------------------------------------

|09AB20| REP #$30

|09AB22| PHY

|09AB23| LDA.b $04
|09AB25| AND.w #$00FF
|09AB28| ASL A
|09AB29| ASL A
|09AB2A| ASL A
|09AB2B| TAY

|09AB2C| LDA.l $7EF3CC
|09AB30| AND.w #$00FF
|09AB33| ASL A
|09AB34| TAX

|09AB35| TYA
|09AB36| CLC
|09AB37| ADC.w .char_data_offset,X
|09AB3A| TAX

|09AB3B| LDA.w .char_offset+0,X
|09AB3E| CLC
|09AB3F| ADC.b $06
|09AB41| STA.b $00

|09AB43| LDA.w .char_offset+2,X
|09AB46| CLC
|09AB47| ADC.b $08
|09AB49| STA.b $02

|09AB4B| PLY

;---------------------------------------------------------------------------------------------------

|09AB4C| SEP #$30

|09AB4E| JSR CalculateFollowerOAMCoords

|09AB51| LDA.b #$20
|09AB53| STA.b ($90),Y

|09AB55| INY

|09AB56| LDA.b $04
|09AB58| ASL A
|09AB59| CLC
|09AB5A| ADC.b $04
|09AB5C| TAX

|09AB5D| LDA.w .props+0,X
|09AB60| STA.w $0AE8

|09AB63| LDA.w .props+2,X
|09AB66| AND.b #$F0
|09AB68| ORA.b $72
|09AB6A| ORA.b $65
|09AB6C| STA.b ($90),Y

|09AB6E| INY
|09AB6F| PHY

|09AB70| TYA
|09AB71| SEC
|09AB72| SBC.b #$04
|09AB74| LSR A
|09AB75| LSR A
|09AB76| TAY

|09AB77| LDA.b #$02
|09AB79| ORA.b $75
|09AB7B| STA.b ($92),Y

|09AB7D| PLY

;---------------------------------------------------------------------------------------------------

.bomb_or_chest
|09AB7E| REP #$30

|09AB80| PHY

|09AB81| LDA.b $04
|09AB83| AND.w #$00FF
|09AB86| ASL A
|09AB87| ASL A
|09AB88| ASL A
|09AB89| TAY

|09AB8A| LDA.l $7EF3CC
|09AB8E| AND.w #$00FF
|09AB91| ASL A
|09AB92| TAX

|09AB93| TYA
|09AB94| CLC
|09AB95| ADC.w .char_data_offset,X
|09AB98| TAX

|09AB99| LDA.w .char_offset+4,X
|09AB9C| CLC
|09AB9D| ADC.b $06
|09AB9F| CLC
|09ABA0| ADC.w #$0008
|09ABA3| STA.b $00

|09ABA5| LDA.w .char_offset+6,X
|09ABA8| CLC
|09ABA9| ADC.b $08
|09ABAB| STA.b $02

|09ABAD| PLY

;---------------------------------------------------------------------------------------------------

|09ABAE| SEP #$30

|09ABB0| JSR CalculateFollowerOAMCoords

|09ABB3| LDA.b #$22
|09ABB5| STA.b ($90),Y

|09ABB7| INY

|09ABB8| LDA.b $04
|09ABBA| ASL A
|09ABBB| CLC
|09ABBC| ADC.b $04
|09ABBE| TAX

|09ABBF| LDA.w .props+1,X
|09ABC2| STA.w $0AEA

|09ABC5| LDA.w .props+2,X
|09ABC8| AND.b #$0F

|09ABCA| ASL A ; x16
|09ABCB| ASL A
|09ABCC| ASL A
|09ABCD| ASL A

|09ABCE| ORA.b $72
|09ABD0| ORA.b $65
|09ABD2| STA.b ($90),Y

|09ABD4| INY

|09ABD5| TYA
|09ABD6| SEC
|09ABD7| SBC.b #$04
|09ABD9| LSR A
|09ABDA| LSR A
|09ABDB| TAY

|09ABDC| LDA.b #$02
|09ABDE| ORA.b $75
|09ABE0| STA.b ($92),Y

;---------------------------------------------------------------------------------------------------

|09ABE2| PLY
|09ABE3| PLX

|09ABE4| RTS

;===================================================================================================

CalculateFollowerOAMCoords:
|09ABE5| REP #$20

|09ABE7| LDA.b $02
|09ABE9| STA.b ($90),Y

|09ABEB| INY

|09ABEC| CLC
|09ABED| ADC.w #$0080
|09ABF0| CMP.w #$0180
|09ABF3| BCS .off_screen

|09ABF5| LDA.b $02
|09ABF7| AND.w #$0100
|09ABFA| STA.b $74

|09ABFC| LDA.b $00
|09ABFE| STA.b ($90),Y

|09AC00| CLC
|09AC01| ADC.w #$0010
|09AC04| CMP.w #$0100
|09AC07| BCC .on_screen

.off_screen
|09AC09| LDA.w #$00F0
|09AC0C| STA.b ($90),Y

.on_screen
|09AC0E| SEP #$20

|09AC10| INY

|09AC11| RTS

;===================================================================================================

CheckForMessageTrigger:
|09AC12| REP #$20

|09AC14| LDA.b $00
|09AC16| CLC
|09AC17| ADC.b $0A
|09AC19| CLC
|09AC1A| ADC.w #$0008
|09AC1D| STA.b $00

|09AC1F| LDA.b $02
|09AC21| CLC
|09AC22| ADC.w #$0008
|09AC25| STA.b $02

|09AC27| LDA.b $20
|09AC29| CLC
|09AC2A| ADC.w #$000C
|09AC2D| SEC
|09AC2E| SBC.b $00
|09AC30| BPL .positive_y

|09AC32| EOR.w #$FFFF
|09AC35| INC A

.positive_y
|09AC36| CMP.w #$001C
|09AC39| BCS .no_trigger

|09AC3B| LDA.b $22
|09AC3D| CLC
|09AC3E| ADC.w #$000C
|09AC41| SEC
|09AC42| SBC.b $02
|09AC44| BPL .positive_x

|09AC46| EOR.w #$FFFF
|09AC49| INC A

.positive_x
|09AC4A| CMP.w #$0018
|09AC4D| BCS .no_trigger

;---------------------------------------------------------------------------------------------------

.trigger
|09AC4F| SEP #$20
|09AC51| SEC

|09AC52| RTS

.no_trigger
|09AC53| SEP #$20
|09AC55| CLC

|09AC56| RTS

;===================================================================================================

TerminateSelectInteractives:
|09AC57| PHB
|09AC58| PHK
|09AC59| PLB

|09AC5A| LDX.b #$05

.next_slot
|09AC5C| LDA.w $0C4A,X
|09AC5F| CMP.b #$3E ; ANCILLA 3E
|09AC61| BNE .not_crystal

|09AC63| TXY

|09AC64| BRA .check_carrying

.not_crystal
|09AC66| LDA.w $0C4A,X
|09AC69| CMP.b #$2C ; ANCILLA 2C
|09AC6B| BNE .check_carrying

|09AC6D| STZ.w $0646

|09AC70| LDA.b $48
|09AC72| AND.b #$80
|09AC74| BEQ .check_carrying

|09AC76| STZ.b $48
|09AC78| STZ.b $5E

.check_carrying
|09AC7A| LDA.w $0308
|09AC7D| BPL .not_carrying

|09AC7F| TXA
|09AC80| INC A
|09AC81| CMP.w $02EC
|09AC84| BEQ .nothing_nearby

|09AC86| BRA .delete_ancilla

.not_carrying
|09AC88| TXA
|09AC89| INC A
|09AC8A| CMP.w $02EC
|09AC8D| BNE .delete_ancilla

|09AC8F| STZ.w $02EC

.delete_ancilla
|09AC92| STZ.w $0C4A,X

.nothing_nearby
|09AC95| DEX
|09AC96| BPL .next_slot

;---------------------------------------------------------------------------------------------------

|09AC98| LDA.w $037A
|09AC9B| AND.b #$10
|09AC9D| BEQ .not_netting

|09AC9F| STZ.b $46
|09ACA1| STZ.w $037A

.not_netting
|09ACA4| STZ.w $03F0

|09ACA7| STZ.w $02F2
|09ACAA| STZ.w $02F3

|09ACAD| STZ.w $035F
|09ACB0| STZ.w $03FC

|09ACB3| STZ.w $037B
|09ACB6| STZ.w $03FD

|09ACB9| STZ.w $0360

;---------------------------------------------------------------------------------------------------

|09ACBC| LDA.b $5D
|09ACBE| CMP.b #$13 ; LINKSTATE 13
|09ACC0| BNE .not_hooking

|09ACC2| LDA.b #$00 ; LINKSTATE 00
|09ACC4| STA.b $5D

|09ACC6| LDA.b $3A
|09ACC8| AND.b #$BF
|09ACCA| STA.b $3A

|09ACCC| LDA.b $50
|09ACCE| AND.b #$FE
|09ACD0| STA.b $50

|09ACD2| LDA.w $037A
|09ACD5| AND.b #$FB
|09ACD7| STA.w $037A

|09ACDA| STZ.w $037E

.not_hooking
|09ACDD| PLB

|09ACDE| RTL

;===================================================================================================

RemoveKikiAndLocksmith:
|09ACDF| LDA.l $7EF3CC
|09ACE3| CMP.b #$0A ; FOLLOWER 0A
|09ACE5| BEQ .kiki

|09ACE7| CMP.b #$09 ; FOLLOWER 09
|09ACE9| BNE .exit

.kiki
|09ACEB| LDA.b #$00
|09ACED| STA.l $7EF3CC

.exit
|09ACF1| RTL

;===================================================================================================

SetAncillaCoordinates:
|09ACF2| LDA.b $00
|09ACF4| STA.w $0BFA,X

|09ACF7| LDA.b $01
|09ACF9| STA.w $0C0E,X

|09ACFC| LDA.b $02
|09ACFE| STA.w $0C04,X

|09AD01| LDA.b $03
|09AD03| STA.w $0C18,X

|09AD06| RTS

;===================================================================================================

CopyAncillaCoordinates:
|09AD07| LDA.w $0BFA,X
|09AD0A| STA.b $00

|09AD0C| LDA.w $0C0E,X
|09AD0F| STA.b $01

|09AD11| LDA.w $0C04,X
|09AD14| STA.b $02

|09AD16| LDA.w $0C18,X
|09AD19| STA.b $03

|09AD1B| RTS

;===================================================================================================

AncillaAdd_ExplodingSomariaBlock:
|09AD1C| PHB
|09AD1D| PHK
|09AD1E| PLB

|09AD1F| LDA.b #$2E ; ANCILLA 2E
|09AD21| STA.w $0C4A,X

|09AD24| PHX

|09AD25| TAX

|09AD26| LDA.l AncillaObjectAllocation,X

|09AD2A| PLX

|09AD2B| STA.w $0C90,X

|09AD2E| LDA.b #$03
|09AD30| STA.w $03B1,X

|09AD33| STZ.w $0C54,X
|09AD36| STZ.w $0C5E,X

|09AD39| STZ.w $039F,X
|09AD3C| STZ.w $03A4,X

|09AD3F| STZ.w $03EA,X
|09AD42| STZ.w $0280,X

|09AD45| STZ.w $0646

|09AD48| JSL CalculateAncillaSFXPan
|09AD4C| ORA.b #$01 ; SFX3.01
|09AD4E| STA.w $012F

|09AD51| PLB

|09AD52| RTL

;===================================================================================================

pool Ancilla_AddRupees

.value
|09AD53| db   1
|09AD54| db   5
|09AD55| db  20
|09AD56| db 100
|09AD57| db  50

endpool

;---------------------------------------------------------------------------------------------------

Ancilla_AddRupees:
|09AD58| PHB
|09AD59| PHK
|09AD5A| PLB

|09AD5B| LDA.w $0C5E,X
|09AD5E| CMP.b #$34 ; ITEMGET 34
|09AD60| BEQ .low

|09AD62| CMP.b #$35 ; ITEMGET 35
|09AD64| BEQ .low

|09AD66| CMP.b #$36 ; ITEMGET 36
|09AD68| BEQ .low

|09AD6A| CMP.b #$40 ; ITEMGET 40
|09AD6C| BEQ .big

|09AD6E| CMP.b #$41 ; ITEMGET 41
|09AD70| BEQ .big

|09AD72| CMP.b #$46 ; ITEMGET 46
|09AD74| BEQ .absolutely_massive

|09AD76| CMP.b #$47 ; ITEMGET 47
|09AD78| BNE .not_rupees

;---------------------------------------------------------------------------------------------------

.absolutely_massive
|09AD7A| LDY.b #$02
|09AD7C| CMP.b #$47 ; ITEMGET 47
|09AD7E| BEQ .add_value

; #$012C = 300
|09AD80| LDA.b #$2C
|09AD82| STA.b $00

|09AD84| LDA.b #$01
|09AD86| STA.b $01

|09AD88| BRA .add_to_purse

;---------------------------------------------------------------------------------------------------

.big
|09AD8A| SEC
|09AD8B| SBC.b #$40 ; ITEMGET 40
|09AD8D| CLC
|09AD8E| ADC.b #$03
|09AD90| TAY

|09AD91| BRA .add_value

;---------------------------------------------------------------------------------------------------

.low
|09AD93| SEC
|09AD94| SBC.b #$34 ; ITEMGET 34
|09AD96| TAY

;---------------------------------------------------------------------------------------------------

.add_value
|09AD97| LDA.w .value,Y
|09AD9A| STA.b $00
|09AD9C| STZ.b $01

;---------------------------------------------------------------------------------------------------

.add_to_purse
|09AD9E| REP #$20

|09ADA0| LDA.l $7EF360
|09ADA4| CLC
|09ADA5| ADC.b $00
|09ADA7| STA.l $7EF360

;---------------------------------------------------------------------------------------------------

|09ADAB| SEP #$20
|09ADAD| SEC

|09ADAE| PLB

|09ADAF| RTL

;---------------------------------------------------------------------------------------------------

.not_rupees
|09ADB0| CLC

|09ADB1| PLB

|09ADB2| RTL

;===================================================================================================

TerminateSparkles:
|09ADB3| PHX

|09ADB4| LDX.b #$04

.next_slot
|09ADB6| LDA.w $0C4A,X

|09ADB9| CMP.b #$2A ; ANCILLA 2A
|09ADBB| BEQ .delete_this

|09ADBD| CMP.b #$2B ; ANCILLA 2B
|09ADBF| BEQ .delete_this

|09ADC1| CMP.b #$30 ; ANCILLA 30
|09ADC3| BEQ .delete_this

|09ADC5| CMP.b #$31 ; ANCILLA 31
|09ADC7| BEQ .delete_this

|09ADC9| CMP.b #$18 ; ANCILLA 18
|09ADCB| BEQ .delete_this

|09ADCD| CMP.b #$19 ; ANCILLA 19
|09ADCF| BEQ .delete_this

|09ADD1| CMP.b #$0C ; ANCILLA 0C
|09ADD3| BNE .skip

.delete_this
|09ADD5| STZ.w $0C4A,X

.skip
|09ADD8| DEX
|09ADD9| BPL .next_slot

;---------------------------------------------------------------------------------------------------

|09ADDB| PLX

|09ADDC| RTL

;===================================================================================================

pool DashDust_Motive

.char
|09ADDD| db $A9, $CF, $DF

endpool

;---------------------------------------------------------------------------------------------------

DashDust_Motive:
|09ADE0| PHB
|09ADE1| PHK
|09ADE2| PLB

|09ADE3| LDA.w $0C68,X
|09ADE6| BNE .delay

|09ADE8| LDA.b #$03
|09ADEA| STA.w $0C68,X

|09ADED| INC.w $0C5E,X

|09ADF0| LDA.w $0C5E,X
|09ADF3| CMP.b #$03
|09ADF5| BNE .delay

|09ADF7| STZ.w $0C4A,X

|09ADFA| BRA .exit

.delay
|09ADFC| LDA.b $2F
|09ADFE| CMP.b #$02
|09AE00| BNE .not_behind

|09AE02| LDA.b #$04
|09AE04| JSL AllocateOAMInRegionB

.not_behind
|09AE08| JSL Ancilla_PrepOAMCoord_long

|09AE0C| PHX

|09AE0D| LDA.w $0C5E,X
|09AE10| TAX

|09AE11| LDY.b #$00

|09AE13| JSL Ancilla_SetOAM_XY_long

|09AE17| LDA.w .char,X
|09AE1A| STA.b ($90),Y

|09AE1C| INY

|09AE1D| LDA.b #$04
|09AE1F| ORA.b $65
|09AE21| STA.b ($90),Y

|09AE23| LDA.b #$00
|09AE25| STA.b ($92)

|09AE27| PLX

.exit
|09AE28| PLB

|09AE29| RTL

;===================================================================================================
; FREE ROM: 0x16
;===================================================================================================
NULL_09AE2A:
|09AE2A| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|09AE32| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|09AE3A| db $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

SpawnSuperficialExplosion:
|09AE40| LDA.b #$4A ; SPRITE 4A
|09AE42| JSL SpawnSpriteDynamically
|09AE46| BMI .exit

|09AE48| LDA.b #$06
|09AE4A| STA.w $0DD0,Y

|09AE4D| LDA.b #$1F
|09AE4F| STA.w $0E00,Y

|09AE52| LDA.b #$03
|09AE54| STA.w $0DB0,Y
|09AE57| STA.w $0E40,Y

|09AE5A| INC A
|09AE5B| STA.w $0F50,Y

|09AE5E| LDA.b #$15 ; SFX2.15
|09AE60| JSL QueueSpriteSFX2WithPan

;===================================================================================================
; Sets the coordinates of a spawned sprite in slot Y
;===================================================================================================
#SetSpawnedSpriteCoordinates:
|09AE64| LDA.b $00
|09AE66| STA.w $0D10,Y

|09AE69| LDA.b $01
|09AE6B| STA.w $0D30,Y

|09AE6E| LDA.b $02
|09AE70| STA.w $0D00,Y

|09AE73| LDA.b $03
|09AE75| STA.w $0D20,Y

|09AE78| LDA.b $04
|09AE7A| STA.w $0F70,Y

.exit
|09AE7D| RTL

;===================================================================================================

SpawnDummyDeathAnimation:
|09AE7E| LDA.b #$0B ; SPRITE 0B
|09AE80| JSL SpawnSpriteDynamically
|09AE84| BMI .exit

|09AE86| JSL SetSpawnedSpriteCoordinates

|09AE8A| LDA.b #$06
|09AE8C| STA.w $0DD0,Y

|09AE8F| LDA.b #$0F
|09AE91| STA.w $0DF0,Y

|09AE94| LDA.b #$14 ; SFX2.14
|09AE96| JSL QueueSpriteSFX2WithPan

|09AE9A| LDA.b #$02
|09AE9C| STA.w $0F20,Y

.exit
|09AE9F| RTL

;===================================================================================================

pool SpawnCursedLightning

.speed_x
|09AEA0| db  -8,  -4,   4,   8

.initial_cycle
|09AEA4| db $00, $11, $22, $33

endpool

;---------------------------------------------------------------------------------------------------

SpawnCursedLightning:
|09AEA8| JSL .spawn_bolt
|09AEAC| JSL .spawn_bolt
|09AEB0| JSL .spawn_bolt

;---------------------------------------------------------------------------------------------------

.spawn_bolt
|09AEB4| LDA.b #$3A ; SPRITE 3A
|09AEB6| JSL SpawnSpriteDynamically
|09AEBA| BMI .exit

|09AEBC| LDA.b #$01 ; SFX3.01
|09AEBE| JSL QueueSpriteSFX3WithPan

;---------------------------------------------------------------------------------------------------

|09AEC2| JSL SetSpawnedSpriteCoordinates

|09AEC6| LDA.b $00
|09AEC8| CLC
|09AEC9| ADC.b #$04
|09AECB| STA.w $0D10,Y

|09AECE| LDA.b $01
|09AED0| ADC.b #$00
|09AED2| STA.w $0D30,Y

|09AED5| LDA.b $02
|09AED7| CLC
|09AED8| ADC.b #$0C
|09AEDA| PHP

|09AEDB| SEC
|09AEDC| SBC.w $0F70,X
|09AEDF| STA.w $0D00,Y

|09AEE2| LDA.b $03
|09AEE4| SBC.b #$00

|09AEE6| PLP
|09AEE7| ADC.b #$00
|09AEE9| STA.w $0D20,Y

;---------------------------------------------------------------------------------------------------

|09AEEC| LDA.b #$00
|09AEEE| STA.w $0F70,Y

|09AEF1| LDA.b #$18
|09AEF3| STA.w $0D40,Y
|09AEF6| STA.w $0EB0,Y
|09AEF9| STA.w $0BA0,Y

|09AEFC| LDA.b #$80
|09AEFE| STA.w $0E40,Y

|09AF01| LDA.b #$03
|09AF03| STA.w $0E60,Y

|09AF06| AND.b #$03
|09AF08| STA.w $0F50,Y

|09AF0B| LDA.b #$20
|09AF0D| STA.w $0DF0,Y

|09AF10| LDA.b #$02
|09AF12| STA.w $0DC0,Y

;---------------------------------------------------------------------------------------------------

|09AF15| PHX

|09AF16| LDA.w $0ED0,X
|09AF19| TAX

|09AF1A| LDA.l .speed_x,X
|09AF1E| STA.w $0D50,Y

|09AF21| LDA.l .initial_cycle,X
|09AF25| STA.w $0E80,Y

|09AF28| LDA.b #$02
|09AF2A| STA.w $0F20,Y

|09AF2D| PLX

|09AF2E| INC.w $0ED0,X

;---------------------------------------------------------------------------------------------------

.exit
|09AF31| RTL

;===================================================================================================

CheckIfScreenIsClear:
|09AF32| PHX
|09AF33| LDX.b #$0F

.next_sprite
|09AF35| LDA.w $0DD0,X
|09AF38| BEQ .ignorable_sprite

|09AF3A| LDA.w $0F60,X
|09AF3D| AND.b #$40
|09AF3F| BNE .ignorable_sprite

|09AF41| LDA.w $0D10,X
|09AF44| CMP.b $E2

|09AF46| LDA.w $0D30,X
|09AF49| SBC.b $E3
|09AF4B| BNE .ignorable_sprite

|09AF4D| LDA.w $0D00,X
|09AF50| CMP.b $E8

|09AF52| LDA.w $0D20,X
|09AF55| SBC.b $E9
|09AF57| BNE .ignorable_sprite

.fail
|09AF59| PLX

|09AF5A| CLC

|09AF5B| RTL

.ignorable_sprite
|09AF5C| DEX
|09AF5D| BPL .next_sprite

;---------------------------------------------------------------------------------------------------

|09AF5F| BRA CheckIfOverlordsClear

;===================================================================================================

CheckIfRoomIsClear:
|09AF61| PHX
|09AF62| LDX.b #$0F

.next_sprite
|09AF64| LDA.w $0DD0,X
|09AF67| BEQ .ignorable_sprite

|09AF69| LDA.w $0F60,X
|09AF6C| AND.b #$40
|09AF6E| BNE .ignorable_sprite

;---------------------------------------------------------------------------------------------------

#FailBecauseOverlordsNotClear:
|09AF70| PLX
|09AF71| CLC

|09AF72| RTL

.ignorable_sprite
|09AF73| DEX
|09AF74| BPL .next_sprite

;===================================================================================================

CheckIfOverlordsClear:
|09AF76| LDX.b #$07

.next_overlord
|09AF78| LDA.w $0B00,X
|09AF7B| CMP.b #$14 ; OVERLORD 14
|09AF7D| BEQ FailBecauseOverlordsNotClear

|09AF7F| CMP.b #$18 ; OVERLORD 18
|09AF81| BEQ FailBecauseOverlordsNotClear

|09AF83| DEX
|09AF84| BPL .next_overlord

;---------------------------------------------------------------------------------------------------

|09AF86| PLX

|09AF87| SEC

|09AF88| RTL

;===================================================================================================

InitializeMirrorPortal:
|09AF89| PHB
|09AF8A| PHK
|09AF8B| PLB

|09AF8C| LDX.b #$0F

.next_sprite
|09AF8E| LDA.w $0DD0,X
|09AF91| BEQ .skip_sprite

|09AF93| LDA.w $0E20,X
|09AF96| CMP.b #$6C ; SPRITE 6C
|09AF98| BNE .skip_sprite

|09AF9A| STZ.w $0DD0,X

.skip_sprite
|09AF9D| DEX
|09AF9E| BPL .next_sprite

;---------------------------------------------------------------------------------------------------

|09AFA0| LDA.b #$6C ; SPRITE 6C
|09AFA2| JSL SpawnSpriteDynamically
|09AFA6| BPL .free_slot

|09AFA8| LDY.b #$00

.free_slot
|09AFAA| LDA.l $001ABF
|09AFAE| STA.w $0D10,Y

|09AFB1| LDA.l $001ACF
|09AFB5| STA.w $0D30,Y

|09AFB8| LDA.l $001ADF
|09AFBC| CLC
|09AFBD| ADC.b #$08
|09AFBF| STA.w $0D00,Y

|09AFC2| LDA.l $001AEF
|09AFC6| ADC.b #$00
|09AFC8| STA.w $0D20,Y

|09AFCB| LDA.b #$00
|09AFCD| STA.w $0F20,Y

|09AFD0| INC A
|09AFD1| STA.w $0BA0,Y

|09AFD4| PLB

|09AFD5| RTL

;===================================================================================================

InitializeSpriteSlots:
|09AFD6| PHB
|09AFD7| PHK
|09AFD8| PLB

|09AFD9| LDX.b #$0F

.next_sprite
|09AFDB| LDA.w $0DD0,X
|09AFDE| BEQ .skip_sprite

|09AFE0| LDY.w $0E20,X
|09AFE3| CMP.b #$0A
|09AFE5| BNE .not_carried

|09AFE7| CPY.b #$EC ; SPRITE EC
|09AFE9| BEQ .skip_sprite

|09AFEB| CPY.b #$D2 ; SPRITE D2
|09AFED| BEQ .skip_sprite

|09AFEF| STZ.w $0309
|09AFF2| STZ.w $0308

|09AFF5| BRA .kill_sprite

.not_carried
|09AFF7| CPY.b #$6C ; SPRITE 6C
|09AFF9| BEQ .skip_sprite

|09AFFB| LDA.w $0C9A,X
|09AFFE| CMP.w $040A
|09B001| BEQ .skip_sprite

.kill_sprite
|09B003| STZ.w $0DD0,X

.skip_sprite
|09B006| DEX
|09B007| BPL .next_sprite

;---------------------------------------------------------------------------------------------------

|09B009| LDX.b #$07

.next_overlord
|09B00B| LDA.w $0B00,X
|09B00E| BEQ .skip_overlord

|09B010| LDA.w $0CCA,X
|09B013| CMP.w $040A
|09B016| BEQ .skip_overlord

|09B018| STZ.w $0B00,X

.skip_overlord
|09B01B| DEX
|09B01C| BPL .next_overlord

;---------------------------------------------------------------------------------------------------

|09B01E| PLB

|09B01F| RTL

;===================================================================================================

SpawnFireballTail:
|09B020| TXA
|09B021| EOR.b $1A
|09B023| AND.b #$03
|09B025| BNE .exit

|09B027| PHX

|09B028| LDX.b #$1D

.next_check
|09B02A| LDA.l $7FF800,X
|09B02E| BEQ .free_slot

|09B030| DEX
|09B031| BPL .next_check

|09B033| PLX

.exit
|09B034| RTL

;---------------------------------------------------------------------------------------------------

.free_slot
|09B035| LDA.b #$08 ; GARNISH 08
|09B037| STA.l $7FF800,X
|09B03B| STA.w $0FB4

|09B03E| LDA.b #$0B
|09B040| STA.l $7FF90E,X

|09B044| LDA.w $0FD8
|09B047| STA.l $7FF83C,X

|09B04B| LDA.w $0FD9
|09B04E| STA.l $7FF878,X

|09B052| LDA.w $0FDA
|09B055| CLC
|09B056| ADC.b #$10
|09B058| STA.l $7FF81E,X

|09B05C| LDA.w $0FDB
|09B05F| ADC.b #$00
|09B061| STA.l $7FF85A,X

|09B065| LDA.w $0FA0
|09B068| STA.l $7FF92C,X

|09B06C| PLX

|09B06D| RTL

;===================================================================================================

HandleUpperGarnishSlots_long:
|09B06E| JSL HandleScreenFlash

|09B072| LDA.w $0FB4
|09B075| BEQ .exit

|09B077| PHB
|09B078| PHK
|09B079| PLB

|09B07A| JSR HandleUpperGarnishSlots

|09B07D| PLB

.exit
|09B07E| RTL

;===================================================================================================

HandleLowerGarnishSlots_long:
|09B07F| LDA.w $0FB4
|09B082| BEQ .exit

|09B084| PHB
|09B085| PHK
|09B086| PLB

|09B087| JSR HandleLowerGarnishSlots

|09B08A| PLB

.exit
|09B08B| RTL

;===================================================================================================

HandleUpperGarnishSlots:
|09B08C| LDX.b #$1D

.next
|09B08E| JSR HandleSingleGarnish

|09B091| DEX
|09B092| CPX.b #$0E
|09B094| BNE .next

|09B096| RTS

;===================================================================================================

HandleLowerGarnishSlots:
|09B097| LDX.b #$0E

.next
|09B099| JSR HandleSingleGarnish

|09B09C| DEX
|09B09D| BPL .next

|09B09F| RTS

;===================================================================================================

pool HandleSingleGarnish

.object_allocation
|09B0A0| db $04 ; Fire snake tail
|09B0A1| db $04 ; Mothula beam trail
|09B0A2| db $04 ; Falling tile
|09B0A3| db $04 ; Laser trail
|09B0A4| db $04 ; Sparkle
|09B0A5| db $04 ; Zoro trail
|09B0A6| db $04 ; Babasu flash
|09B0A7| db $04 ; Kholdstare trail
|09B0A8| db $04 ; Lightning trail
|09B0A9| db $04 ; Cannon smoke
|09B0AA| db $04 ; Water trail
|09B0AB| db $04 ; Trinexx ice breath
|09B0AC| db $04 ; Null pointer
|09B0AD| db $04 ; Trinexx fire breath
|09B0AE| db $04 ; Blind laser trail
|09B0AF| db $04 ; Ganon bat flame
|09B0B0| db $08 ; Withering bat flame
|09B0B1| db $04 ; Sparkle
|09B0B2| db $04 ; Pyramid debris
|09B0B3| db $04 ; Running kid dash dust
|09B0B4| db $08 ; Arrghus splash
|09B0B5| db $10 ; Thrown item debris

endpool

;---------------------------------------------------------------------------------------------------

HandleSingleGarnish:
|09B0B6| STX.w $0FA0

|09B0B9| LDA.l $7FF800,X
|09B0BD| BEQ .exit

|09B0BF| CMP.b #$05
|09B0C1| BEQ .ignore_submodule

|09B0C3| LDA.b $11
|09B0C5| ORA.w $0FC1
|09B0C8| BNE .dont_terminate

.ignore_submodule
|09B0CA| LDA.l $7FF90E,X
|09B0CE| BEQ .dont_terminate

|09B0D0| DEC A
|09B0D1| STA.l $7FF90E,X
|09B0D5| BNE .dont_terminate

|09B0D7| STA.l $7FF800,X

|09B0DB| BRA .exit

;---------------------------------------------------------------------------------------------------

.dont_terminate
|09B0DD| LDY.w $0FB3
|09B0E0| BEQ .ignore_layer

|09B0E2| LDA.l $7FF968,X
|09B0E6| BEQ .lower_layer

;---------------------------------------------------------------------------------------------------

|09B0E8| LDA.l $7FF800,X
|09B0EC| TAY

|09B0ED| LDA.w .object_allocation-1,Y
|09B0F0| JSL AllocateOAMInRegionF

|09B0F4| BRA .run_ai

;---------------------------------------------------------------------------------------------------

.lower_layer
|09B0F6| LDA.l $7FF800,X
|09B0FA| TAY

|09B0FB| LDA.w .object_allocation-1,Y
|09B0FE| JSL AllocateOAMInRegionD

|09B102| BRA .run_ai

;---------------------------------------------------------------------------------------------------

.ignore_layer
|09B104| LDA.l $7FF800,X
|09B108| TAY

|09B109| LDA.w .object_allocation-1,Y
|09B10C| JSL AllocateOAMInRegionA

;---------------------------------------------------------------------------------------------------

.run_ai
|09B110| LDA.l $7FF800,X
|09B114| DEC A

|09B115| REP #$30

|09B117| AND.w #$00FF
|09B11A| ASL A
|09B11B| TAY

|09B11C| LDA.w .vectors,Y
|09B11F| DEC A
|09B120| PHA

|09B121| SEP #$30

.exit
|09B123| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|09B124| dw Garnish01_FireSnakeTail
|09B126| dw Garnish02_MothulaBeamTrail
|09B128| dw Garnish03_FallingTile
|09B12A| dw Garnish04_LaserTrail
|09B12C| dw Garnish05_SimpleSparkle
|09B12E| dw Garnish06_ZoroTrail
|09B130| dw Garnish07_BabasuFlash
|09B132| dw Garnish08_KholdstareTrail
|09B134| dw Garnish09_LightningTrail
|09B136| dw Garnish0A_CannonSmoke
|09B138| dw Garnish0B_WaterTrail
|09B13A| dw Garnish0C_TrinexxIceBreath
|09B13C| dw $0000
|09B13E| dw Garnish0E_TrinexxFireBreath
|09B140| dw Garnish0F_BlindLaserTrail
|09B142| dw Garnish10_GanonBatFlame
|09B144| dw Garnish11_WitheringGanonBatFlame
|09B146| dw Garnish12_Sparkle
|09B148| dw Garnish13_PyramidDebris
|09B14A| dw Garnish14_KakKidDashDust
|09B14C| dw Garnish15_ArrghusSplash
|09B14E| dw Garnish16_ThrownItemDebris

;===================================================================================================

pool Garnish15_ArrghusSplash

.offset_y
|09B150| db -12,  20
|09B152| db -10,  10
|09B154| db  -8,   8
|09B156| db  -4,   4

.offset_x
|09B158| db  -4,  -4
|09B15A| db  -2,  -2
|09B15C| db   0,   0
|09B15E| db   0,   0

.char
|09B160| db $AE, $AE
|09B162| db $AE, $AE
|09B164| db $AE, $AE
|09B166| db $AC, $AC

.prop
|09B168| db $34, $74
|09B16A| db $34, $74
|09B16C| db $34, $74
|09B16E| db $34, $74

.size
|09B170| db $00, $00
|09B172| db $02, $02
|09B174| db $02, $02
|09B176| db $02, $02

endpool

;---------------------------------------------------------------------------------------------------

Garnish15_ArrghusSplash:
|09B178| JSR Garnish_PrepOAMCoord

|09B17B| LDA.l $7FF90E,X
|09B17F| LSR A
|09B180| AND.b #$06
|09B182| STA.b $06

|09B184| LDA.b #$01
|09B186| STA.b $07

|09B188| PHX

;---------------------------------------------------------------------------------------------------

.next_object
|09B189| LDA.b $06
|09B18B| ORA.b $07
|09B18D| TAX

|09B18E| LDA.b $00
|09B190| CLC
|09B191| ADC.w .offset_y,X
|09B194| STA.b ($90),Y

|09B196| LDA.b $02
|09B198| CLC
|09B199| ADC.w .offset_x,X
|09B19C| INY
|09B19D| STA.b ($90),Y

|09B19F| LDA.w .char,X
|09B1A2| INY
|09B1A3| STA.b ($90),Y

|09B1A5| LDA.w .prop,X
|09B1A8| INY
|09B1A9| STA.b ($90),Y

|09B1AB| PHY

|09B1AC| TYA
|09B1AD| LSR A
|09B1AE| LSR A
|09B1AF| TAY

|09B1B0| LDA.w .size,X
|09B1B3| STA.b ($92),Y

|09B1B5| PLY
|09B1B6| INY

|09B1B7| DEC.b $07
|09B1B9| BPL .next_object

;---------------------------------------------------------------------------------------------------

|09B1BB| PLX

|09B1BC| RTS

;===================================================================================================
; Why does this constantly play SFX?
;===================================================================================================
GarnishSpawn_PyramidDebris:
|09B1BD| LDA.b #$03 ; SFX3.03
|09B1BF| STA.w $012F

|09B1C2| LDA.b #$1F ; SFX2.1F
|09B1C4| STA.w $012E

|09B1C7| LDA.b #$05 ; SFX1.05
|09B1C9| STA.w $012D

|09B1CC| PHX
|09B1CD| TXY

|09B1CE| LDX.b #$1D

.next_slot
|09B1D0| LDA.l $7FF800,X
|09B1D4| BEQ .open_slot

|09B1D6| DEX
|09B1D7| BPL .next_slot

|09B1D9| INX

;---------------------------------------------------------------------------------------------------

.open_slot
|09B1DA| LDA.b #$13 ; GARNISH 13
|09B1DC| STA.l $7FF800,X
|09B1E0| STA.w $0FB4

|09B1E3| LDA.b #$E8
|09B1E5| CLC
|09B1E6| ADC.b $00
|09B1E8| STA.l $7FF83C,X

|09B1EC| LDA.b #$60
|09B1EE| CLC
|09B1EF| ADC.b $01
|09B1F1| STA.l $7FF81E,X

|09B1F5| LDA.b $02
|09B1F7| STA.l $7FF8B4,X

|09B1FB| LDA.b $03
|09B1FD| STA.l $7FF896,X

|09B201| JSL GetRandomNumber
|09B205| AND.b #$1F
|09B207| ADC.b #$30
|09B209| STA.l $7FF90E,X

|09B20D| PLX

|09B20E| RTL

;===================================================================================================

PyramidDebris_DeleteSelf:
|09B20F| LDA.b #$00
|09B211| STA.l $7FF800,X

|09B215| RTS

;===================================================================================================

Garnish13_PyramidDebris:
|09B216| JSR Garnish_MoveXY

|09B219| LDA.l $7FF896,X
|09B21D| CLC
|09B21E| ADC.b #$03
|09B220| STA.l $7FF896,X

|09B224| LDY.b #$00

|09B226| LDA.l $7FF83C,X
|09B22A| SEC
|09B22B| SBC.b $E2
|09B22D| CMP.b #$F8
|09B22F| BCS PyramidDebris_DeleteSelf

;---------------------------------------------------------------------------------------------------

|09B231| STA.b ($90),Y

|09B233| LDA.l $7FF81E,X
|09B237| SEC
|09B238| SBC.b $E8
|09B23A| CMP.b #$F0
|09B23C| BCS PyramidDebris_DeleteSelf

|09B23E| INY

|09B23F| STA.b ($90),Y
|09B241| LDA.b #$5C

|09B243| INY

|09B244| STA.b ($90),Y

|09B246| LDA.b $1A
|09B248| ASL A ; x8
|09B249| ASL A
|09B24A| ASL A
|09B24B| AND.b #$C0
|09B24D| ORA.b #$34

|09B24F| JMP.w Garnish_FinalizeSmallOAMObject

;===================================================================================================

Garnish_MoveXY:
|09B252| PHX

|09B253| TXA
|09B254| CLC
|09B255| ADC.b #$1E
|09B257| TAX

|09B258| JSR Garnish_MoveY

|09B25B| PLX

;===================================================================================================

Garnish_MoveY:
|09B25C| LDA.l $7FF896,X

|09B260| ASL A ; x16
|09B261| ASL A
|09B262| ASL A
|09B263| ASL A

|09B264| CLC
|09B265| ADC.l $7FF8D2,X
|09B269| STA.l $7FF8D2,X

|09B26D| LDA.l $7FF896,X
|09B271| PHP

|09B272| LSR A ; /16
|09B273| LSR A
|09B274| LSR A
|09B275| LSR A

|09B276| PLP
|09B277| BPL .positive

|09B279| ORA.b #$F0

.positive
|09B27B| ADC.l $7FF81E,X
|09B27F| STA.l $7FF81E,X

|09B283| RTS

;===================================================================================================

pool Garnish10_GanonBatFlame

.char
|09B284| db $AC, $AC, $66, $66, $8E, $A0, $A2

.prop
|09B28B| db $01, $41, $01, $41, $00, $00, $00

.draw_step
|09B292| db $07, $06, $05, $04
|09B296| db $05, $04, $05, $04
|09B29A| db $05, $04, $05, $04
|09B29E| db $05, $04, $05, $04
|09B2A2| db $05, $04, $05, $04
|09B2A6| db $05, $04, $05, $04
|09B2AA| db $05, $04, $05, $04
|09B2AE| db $05, $04, $05, $04

endpool

;===================================================================================================

Garnish11_WitheringGanonBatFlame:
|09B2B2| LDA.b $11
|09B2B4| ORA.w $0FC1
|09B2B7| BNE .just_draw

|09B2B9| LDA.l $7FF81E,X
|09B2BD| SEC
|09B2BE| SBC.b #$01
|09B2C0| STA.l $7FF81E,X

|09B2C4| LDA.l $7FF85A,X
|09B2C8| SBC.b #$00
|09B2CA| STA.l $7FF85A,X

.just_draw
|09B2CE| JSR Garnish_PrepOAMCoord

|09B2D1| REP #$10

|09B2D3| LDY.b $90

|09B2D5| LDA.b $00
|09B2D7| STA.w $0000,Y

|09B2DA| CLC
|09B2DB| ADC.b #$08
|09B2DD| STA.w $0004,Y

|09B2E0| LDA.b $02
|09B2E2| STA.w $0001,Y
|09B2E5| STA.w $0005,Y

|09B2E8| LDA.b #$A4
|09B2EA| STA.w $0002,Y

|09B2ED| INC A
|09B2EE| STA.w $0006,Y

|09B2F1| LDA.b #$22
|09B2F3| STA.w $0003,Y
|09B2F6| STA.w $0007,Y

|09B2F9| LDY.b $92

|09B2FB| LDA.b #$00
|09B2FD| STA.w $0000,Y
|09B300| STA.w $0001,Y

|09B303| SEP #$10

|09B305| RTS

;===================================================================================================

Garnish10_GanonBatFlame:
|09B306| LDA.l $7FF90E,X
|09B30A| CMP.b #$08
|09B30C| BNE .dont_transmute

|09B30E| LDA.b #$11 ; GARNISH 11
|09B310| STA.l $7FF800,X

.dont_transmute
|09B314| JSR Garnish_PrepOAMCoord

|09B317| LDA.b $00
|09B319| STA.b ($90),Y

|09B31B| LDA.b $02
|09B31D| INY
|09B31E| STA.b ($90),Y

|09B320| LDA.l $7FF90E,X
|09B324| LSR A ; /8
|09B325| LSR A
|09B326| LSR A

|09B327| PHX

|09B328| TAX

|09B329| LDA.w .draw_step,X
|09B32C| TAX

|09B32D| LDA.w .char,X
|09B330| INY
|09B331| STA.b ($90),Y

|09B333| LDA.b #$22
|09B335| ORA.w .prop,X

|09B338| PLX

|09B339| JSR Garnish_FinalizeBigOAMObject

|09B33C| JMP.w Garnish_CheckDamageToLink

;===================================================================================================

pool Garnish0C_TrinexxIceBreath

.char
|09B33F| db $E8, $E8, $E6, $E6
|09B343| db $E4, $E4, $E4, $E4
|09B347| db $E4, $E4, $E4, $E4

.prop
|09B34B| db $00, $40, $C0, $80

endpool

;---------------------------------------------------------------------------------------------------

Garnish0C_TrinexxIceBreath:
|09B34F| LDA.l $7FF90E,X
|09B353| CMP.b #$50
|09B355| BNE .dont_change_tiles

|09B357| LDA.b $11
|09B359| ORA.w $0FC1
|09B35C| BNE .dont_change_tiles

;---------------------------------------------------------------------------------------------------

|09B35E| PHA ; useless

|09B35F| LDA.l $7FF83C,X
|09B363| STA.b $00

|09B365| LDA.l $7FF878,X
|09B369| STA.b $01

|09B36B| LDA.l $7FF81E,X
|09B36F| SEC
|09B370| SBC.b #$10
|09B372| STA.b $02

|09B374| LDA.l $7FF85A,X
|09B378| SBC.b #$00
|09B37A| STA.b $03

|09B37C| LDY.b #$12
|09B37E| JSL UpdateTilemapWithCommonObject

|09B382| PLA ; useless

;---------------------------------------------------------------------------------------------------

.dont_change_tiles
|09B383| LDA.l $7FF90E,X
|09B387| LSR A
|09B388| LSR A
|09B389| AND.b #$03
|09B38B| TAY

|09B38C| LDA.w .prop,Y
|09B38F| STA.b $04

|09B391| JSR Garnish_PrepOAMCoord

|09B394| LDA.b $00
|09B396| STA.b ($90),Y

|09B398| LDA.b $02
|09B39A| INY
|09B39B| STA.b ($90),Y

|09B39D| LDA.l $7FF90E,X

|09B3A1| LSR A ; /16
|09B3A2| LSR A
|09B3A3| LSR A
|09B3A4| LSR A

|09B3A5| NOP ; nice!

|09B3A6| PHX

|09B3A7| TAX

|09B3A8| LDA.w .char,X
|09B3AB| INY
|09B3AC| STA.b ($90),Y

|09B3AE| LDA.b #$35
|09B3B0| ORA.b $04

|09B3B2| PLX

|09B3B3| JMP.w Garnish_FinalizeBigOAMObject

;===================================================================================================
; Looks like Trinexx ice was going to damage Link
;===================================================================================================
UNREACHABLE_09B3B6:
|09B3B6| JMP.w Garnish_CheckDamageToLink

;===================================================================================================

pool Garnish14_KakKidDashDust

.char
|09B3B9| db $DF, $CF, $A9

endpool

;---------------------------------------------------------------------------------------------------

Garnish14_KakKidDashDust:
|09B3BC| LDA.l $7FF90E,X

|09B3C0| BRA .continue

;===================================================================================================

#Garnish0B_WaterTrail:
|09B3C2| LDA.l $7FF90E,X
|09B3C6| LSR A

;===================================================================================================

.continue
|09B3C7| LSR A
|09B3C8| LSR A
|09B3C9| STA.w $0FB5

|09B3CC| JSR Garnish_PrepOAMCoord

|09B3CF| LDA.b $00
|09B3D1| STA.b ($90),Y

|09B3D3| LDA.b $02
|09B3D5| INY
|09B3D6| STA.b ($90),Y

|09B3D8| PHX

|09B3D9| LDX.w $0FB5

|09B3DC| LDA.w .char,X
|09B3DF| INY
|09B3E0| STA.b ($90),Y

|09B3E2| LDA.b #$24

|09B3E4| PLX

|09B3E5| JMP.w Garnish_FinalizeSmallOAMObject

;===================================================================================================

pool Garnish0A_CannonSmoke

.char
|09B3E8| db $8A, $86

.priority
|09B3EA| db $20, $10, $30, $30

endpool

;---------------------------------------------------------------------------------------------------

Garnish0A_CannonSmoke:
|09B3EE| JSR Garnish_PrepOAMCoord

|09B3F1| LDA.b $00
|09B3F3| STA.b ($90),Y

|09B3F5| LDA.b $02
|09B3F7| INY
|09B3F8| STA.b ($90),Y

|09B3FA| LDA.l $7FF90E,X
|09B3FE| LSR A ; /8
|09B3FF| LSR A
|09B400| LSR A

|09B401| PHX

|09B402| TAX

|09B403| LDA.w .char,X
|09B406| INY
|09B407| STA.b ($90),Y

|09B409| PLX
|09B40A| PHX

|09B40B| LDA.l $7FF92C,X
|09B40F| TAX

|09B410| LDA.w .priority,X
|09B413| ORA.b #$04

|09B415| PLX

|09B416| JMP.w Garnish_FinalizeBigOAMObject

;===================================================================================================

pool Garnish09_LightningTrail

.char
|09B419| db $CC, $EC, $CE, $EE
|09B41D| db $CC, $EC, $CE, $EE

.prop
|09B421| db $31, $31, $31, $31
|09B425| db $71, $71, $71, $71

endpool

;---------------------------------------------------------------------------------------------------

Garnish09_LightningTrail:
|09B429| JSR Garnish_PrepOAMCoord

|09B42C| LDA.b $00
|09B42E| STA.b ($90),Y

|09B430| LDA.b $02
|09B432| INY
|09B433| STA.b ($90),Y

|09B435| LDA.l $7FF92C,X

|09B439| PHX
|09B43A| TAX

|09B43B| LDA.w .char,X

|09B43E| PHX

; [HARDCODED] room check
|09B43F| LDX.w $048E
|09B442| CPX.b #$20 ; ROOM 0020
|09B444| BNE .not_aga1

|09B446| SEC
|09B447| SBC.b #$80

.not_aga1
|09B449| PLX

|09B44A| INY
|09B44B| STA.b ($90),Y

|09B44D| LDA.b $1A
|09B44F| ASL A
|09B450| AND.b #$0E
|09B452| ORA.w .prop,X

|09B455| PLX

|09B456| JSR Garnish_FinalizeBigOAMObject

;===================================================================================================

Garnish_CheckDamageToLink:
|09B459| TXA
|09B45A| EOR.b $1A
|09B45C| AND.b #$07
|09B45E| ORA.w $031F
|09B461| ORA.w $037B
|09B464| BNE .exit

|09B466| LDA.b $22
|09B468| SBC.b $E2
|09B46A| SBC.b $00
|09B46C| ADC.b #$0C

|09B46E| CMP.b #$18
|09B470| BCS .exit

|09B472| LDA.b $20
|09B474| SBC.b $E8
|09B476| SBC.b $02
|09B478| ADC.b #$16

|09B47A| CMP.b #$1C
|09B47C| BCS .exit

|09B47E| LDA.b #$01
|09B480| STA.b $4D

|09B482| LDA.b #$10
|09B484| STA.b $46
|09B486| STA.w $0373

|09B489| LDA.b $28
|09B48B| EOR.b #$FF
|09B48D| STA.b $28

|09B48F| LDA.b $27
|09B491| EOR.b #$FF
|09B493| STA.b $27

.exit
|09B495| RTS

;===================================================================================================

pool Garnish07_BabasuFlash

.char
|09B496| db $A8, $8A, $86, $86

.prop
|09B49A| db $2D, $2C, $2C, $2C

endpool

;---------------------------------------------------------------------------------------------------

Garnish07_BabasuFlash:
|09B49E| JSR Garnish_PrepOAMCoord

|09B4A1| LDA.b $00
|09B4A3| STA.b ($90),Y

|09B4A5| LDA.b $02
|09B4A7| INY
|09B4A8| STA.b ($90),Y

|09B4AA| LDA.l $7FF90E,X
|09B4AE| LSR A ; /8
|09B4AF| LSR A
|09B4B0| LSR A

|09B4B1| PHX

|09B4B2| TAX

|09B4B3| LDA.w .char,X
|09B4B6| INY
|09B4B7| STA.b ($90),Y

|09B4B9| LDA.w .prop,X

|09B4BC| PLX

|09B4BD| JMP.w Garnish_FinalizeBigOAMObject

;===================================================================================================

pool Garnish08_KholdstareTrail

.offset
|09B4C0| db  -1,  -1,   0

.char
|09B4C3| db $9C, $9D, $8D

endpool

;---------------------------------------------------------------------------------------------------

Garnish08_KholdstareTrail:
|09B4C6| JSR Garnish_PrepOAMCoord

|09B4C9| PHX

|09B4CA| LDA.l $7FF90E,X
|09B4CE| LSR A ; /4
|09B4CF| LSR A
|09B4D0| TAX

|09B4D1| LDA.b $00
|09B4D3| CLC
|09B4D4| ADC.w .offset,X
|09B4D7| STA.b ($90),Y

|09B4D9| LDA.b $02
|09B4DB| CLC
|09B4DC| ADC.w .offset,X

|09B4DF| INY

|09B4E0| STA.b ($90),Y

|09B4E2| LDA.w .char,X
|09B4E5| INY
|09B4E6| STA.b ($90),Y

|09B4E8| PLX

|09B4E9| PHY

|09B4EA| LDA.l $7FF92C,X
|09B4EE| TAY

|09B4EF| LDA.w $0F50,Y
|09B4F2| ORA.w $0B89,Y
|09B4F5| AND.b #$FE

|09B4F7| PLY

|09B4F8| JMP.w Garnish_FinalizeSmallOAMObject

;===================================================================================================

Garnish06_ZoroTrail:
|09B4FB| JSR Garnish_PrepOAMCoord

|09B4FE| LDA.b $00
|09B500| STA.b ($90),Y

|09B502| LDA.b $02
|09B504| INY
|09B505| STA.b ($90),Y

|09B507| LDA.b #$75
|09B509| INY
|09B50A| STA.b ($90),Y

|09B50C| PHY

|09B50D| LDA.l $7FF92C,X
|09B511| TAY

|09B512| LDA.w $0F50,Y
|09B515| ORA.w $0B89,Y

|09B518| PLY

|09B519| JMP.w Garnish_FinalizeSmallOAMObject

;===================================================================================================

pool GarnishSparkle

.char
|09B51C| db $83, $C7, $80, $B7

endpool

;===================================================================================================

Garnish12_Sparkle:
|09B520| LDA.l $7FF90E,X
|09B524| BRA GarnishSparkle

;===================================================================================================

Garnish05_SimpleSparkle:
|09B526| LDA.l $7FF90E,X
|09B52A| LSR A

;===================================================================================================

GarnishSparkle:
|09B52B| LSR A
|09B52C| LSR A
|09B52D| STA.b $0F

|09B52F| JSR Garnish_PrepOAMCoord

|09B532| LDA.b $00
|09B534| STA.b ($90),Y

|09B536| LDA.b $02
|09B538| INY
|09B539| STA.b ($90),Y

|09B53B| PHX

|09B53C| LDX.b $0F
|09B53E| LDA.w .char,X

|09B541| PLX

|09B542| INY
|09B543| STA.b ($90),Y

|09B545| PHY

|09B546| LDA.l $7FF92C,X
|09B54A| TAY

|09B54B| LDA.w $0F50,Y
|09B54E| ORA.w $0B89,Y
|09B551| AND.b #$F0
|09B553| ORA.b #$04

|09B555| PLY

|09B556| JMP.w Garnish_FinalizeSmallOAMObject

;===================================================================================================

pool Garnish0E_TrinexxFireBreath

.char
|09B559| db $83, $C7, $80, $9D

endpool

;---------------------------------------------------------------------------------------------------

Garnish0E_TrinexxFireBreath:
|09B55D| JSR Garnish_PrepOAMCoord

|09B560| LDA.b $00
|09B562| STA.b ($90),Y

|09B564| LDA.b $02
|09B566| INY
|09B567| STA.b ($90),Y

|09B569| LDA.l $7FF90E,X
|09B56D| LSR A ; /8
|09B56E| LSR A
|09B56F| LSR A

|09B570| PHX

|09B571| TAX

|09B572| LDA.w .char,X

|09B575| PLX

|09B576| INY
|09B577| STA.b ($90),Y

|09B579| PHY

|09B57A| LDA.l $7FF92C,X
|09B57E| TAY

|09B57F| LDA.w $0F50,Y
|09B582| ORA.w $0B89,Y
|09B585| AND.b #$F0
|09B587| ORA.b #$0E

|09B589| PLY

|09B58A| JMP.w Garnish_FinalizeSmallOAMObject

;===================================================================================================

pool Garnish0F_BlindLaserTrail

.char
|09B58D| db $61, $71, $70, $60

endpool

;---------------------------------------------------------------------------------------------------

Garnish0F_BlindLaserTrail:
|09B591| JSR Garnish_PrepOAMCoord

|09B594| LDA.b $00
|09B596| STA.b ($90),Y

|09B598| LDA.b $02
|09B59A| INY
|09B59B| STA.b ($90),Y

|09B59D| PHY

|09B59E| LDA.l $7FF9FE,X
|09B5A2| TAY

|09B5A3| LDA.w .char-7,Y

|09B5A6| PLY
|09B5A7| INY

|09B5A8| STA.b ($90),Y

|09B5AA| PHY

|09B5AB| LDA.l $7FF92C,X
|09B5AF| TAY

|09B5B0| LDA.w $0F50,Y
|09B5B3| ORA.w $0B89,Y

|09B5B6| PLY

|09B5B7| BRA Garnish_FinalizeSmallOAMObject

;===================================================================================================

pool Garnish04_LaserTrail

.char
|09B5B9| db $D2, $F3

endpool

;---------------------------------------------------------------------------------------------------

Garnish04_LaserTrail:
|09B5BB| JSR Garnish_PrepOAMCoord

|09B5BE| LDA.b $00
|09B5C0| STA.b ($90),Y

|09B5C2| LDA.b $02
|09B5C4| INY
|09B5C5| STA.b ($90),Y

|09B5C7| PHY

|09B5C8| LDA.l $7FF9FE,X
|09B5CC| TAY

|09B5CD| LDA.w .char,Y

|09B5D0| PLY
|09B5D1| INY

|09B5D2| STA.b ($90),Y

|09B5D4| LDA.b #$25

;===================================================================================================

Garnish_FinalizeSmallOAMObject:
|09B5D6| INY

|09B5D7| STA.b ($90),Y

|09B5D9| LDA.b #$00
|09B5DB| STA.b ($92)

|09B5DD| RTS

;===================================================================================================

Garnish_PrepOAMCoord:
|09B5DE| LDA.l $7FF83C,X
|09B5E2| SEC
|09B5E3| SBC.b $E2
|09B5E5| STA.b $00

|09B5E7| LDA.l $7FF878,X
|09B5EB| SBC.b $E3
|09B5ED| STA.b $01

|09B5EF| BNE .off_screen

|09B5F1| LDA.l $7FF81E,X
|09B5F5| SEC
|09B5F6| SBC.b $E8
|09B5F8| PHA

|09B5F9| LDA.l $7FF85A,X
|09B5FD| SBC.b $E9
|09B5FF| BEQ .on_screen

|09B601| PLA

;---------------------------------------------------------------------------------------------------

.off_screen
|09B602| LDA.b #$00
|09B604| STA.l $7FF800,X

|09B608| PLA
|09B609| PLA

|09B60A| RTS

;---------------------------------------------------------------------------------------------------

.on_screen
|09B60B| PLA
|09B60C| SBC.b #$10
|09B60E| STA.b $02

|09B610| LDY.b #$00

|09B612| RTS

;===================================================================================================

pool Garnish03_FallingTile

.char
|09B613| db $80, $CC, $CC, $EA, $CA

.prop
|09B618| db $30, $31, $31, $31, $31

.size
|09B61D| db $00, $02, $02, $02, $02

.offset
|09B622| db   4,   0,   0,   0,   0

endpool

;---------------------------------------------------------------------------------------------------

Garnish03_FallingTile:
|09B627| LDA.l $7FF90E,X
|09B62B| CMP.b #$1E
|09B62D| BNE .dont_place_pit

|09B62F| LDA.b $11
|09B631| ORA.w $0FC1
|09B634| BNE .dont_place_pit

;---------------------------------------------------------------------------------------------------

|09B636| PHA

|09B637| LDA.l $7FF83C,X
|09B63B| STA.b $00

|09B63D| LDA.l $7FF878,X
|09B641| STA.b $01

|09B643| LDA.l $7FF81E,X
|09B647| SEC
|09B648| SBC.b #$10
|09B64A| STA.b $02

|09B64C| LDA.l $7FF85A,X
|09B650| SBC.b #$00
|09B652| STA.b $03

|09B654| PHX

|09B655| LDY.b #$04
|09B657| JSL UpdateTilemapWithCommonObject

|09B65B| PLX

|09B65C| PLA

;---------------------------------------------------------------------------------------------------

.dont_place_pit
|09B65D| LSR A ; /8
|09B65E| LSR A
|09B65F| LSR A
|09B660| TAY

|09B661| LDA.w .char,Y
|09B664| STA.b $03

|09B666| LDA.w .prop,Y
|09B669| STA.b $05

|09B66B| LDA.w .size,Y
|09B66E| STA.b $06

|09B670| LDA.l $7FF83C,X
|09B674| SEC
|09B675| SBC.b $E2
|09B677| PHP

|09B678| CLC
|09B679| ADC.w .offset,Y
|09B67C| STA.b $00

|09B67E| LDA.l $7FF878,X
|09B682| ADC.b #$00
|09B684| PLP
|09B685| SBC.b $E3
|09B687| BNE .exit

;---------------------------------------------------------------------------------------------------

|09B689| LDA.l $7FF81E,X
|09B68D| SEC
|09B68E| SBC.b $E8
|09B690| PHP

|09B691| CLC
|09B692| ADC.w .offset,Y
|09B695| STA.b $02

|09B697| LDA.l $7FF85A,X
|09B69B| ADC.b #$00

|09B69D| PLP
|09B69E| SBC.b $E9
|09B6A0| BEQ .draw

.exit
|09B6A2| RTS

;---------------------------------------------------------------------------------------------------

.draw
|09B6A3| LDY.b #$00

|09B6A5| LDA.b $00
|09B6A7| STA.b ($90),Y

|09B6A9| LDA.b $02
|09B6AB| SEC
|09B6AC| SBC.b #$10

|09B6AE| INY
|09B6AF| STA.b ($90),Y

|09B6B1| INY

|09B6B2| LDA.b $03
|09B6B4| STA.b ($90),Y

|09B6B6| INY

|09B6B7| LDA.b $05
|09B6B9| STA.b ($90),Y

|09B6BB| LDA.b $06
|09B6BD| STA.b ($92)

|09B6BF| RTS

;===================================================================================================

Garnish01_FireSnakeTail:
|09B6C0| JSR Garnish_PrepOAMCoord

|09B6C3| LDA.b $00
|09B6C5| STA.b ($90),Y

|09B6C7| LDA.b $02

|09B6C9| INY
|09B6CA| STA.b ($90),Y

|09B6CC| INY

|09B6CD| LDA.b #$28
|09B6CF| STA.b ($90),Y

|09B6D1| PHY

|09B6D2| LDA.l $7FF92C,X
|09B6D6| TAY

|09B6D7| LDA.w $0F50,Y
|09B6DA| ORA.w $0B89,Y

|09B6DD| PLY

|09B6DE| JMP.w Garnish_FinalizeBigOAMObject

;===================================================================================================

Garnish02_MothulaBeamTrail:
|09B6E1| LDY.b #$00

|09B6E3| LDA.l $7FF83C,X
|09B6E7| SEC
|09B6E8| SBC.b $E2
|09B6EA| STA.b ($90),Y

|09B6EC| LDA.l $7FF81E,X
|09B6F0| SEC
|09B6F1| SBC.b $E8

|09B6F3| INY
|09B6F4| STA.b ($90),Y

|09B6F6| INY

|09B6F7| LDA.b #$AA
|09B6F9| STA.b ($90),Y

|09B6FB| LDA.l $7FF92C,X

|09B6FF| PHY

|09B700| LDA.l $7FF92C,X
|09B704| TAY

|09B705| LDA.w $0F50,Y
|09B708| ORA.w $0B89,Y

|09B70B| PLY

;===================================================================================================

Garnish_FinalizeBigOAMObject:
|09B70C| INY

|09B70D| STA.b ($90),Y

|09B70F| LDA.b #$02
|09B711| STA.b ($92)

|09B713| RTS

;===================================================================================================

SpawnBoulder:
|09B714| LDA.b $1B
|09B716| BNE .exit

|09B718| LDA.w $0FFD
|09B71B| BEQ .exit

|09B71D| LDA.b $11
|09B71F| ORA.w $0FC1
|09B722| BNE .exit

|09B724| INC.w $0FFE

|09B727| LDA.w $0FFE
|09B72A| AND.b #$3F
|09B72C| BNE .exit

|09B72E| LDA.b $E9
|09B730| SEC
|09B731| SBC.w $0FBF
|09B734| CMP.b #$02
|09B736| BMI .exit

;---------------------------------------------------------------------------------------------------

|09B738| LDA.b #$C2 ; SPRITE C2
|09B73A| LDY.b #$0D
|09B73C| JSL SpawnSpriteDynamically
|09B740| BMI .exit

|09B742| JSL GetRandomNumber
|09B746| AND.b #$7F

|09B748| CLC
|09B749| ADC.b #$40

|09B74B| CLC
|09B74C| ADC.b $E2
|09B74E| STA.w $0D10,Y

|09B751| LDA.b $E3
|09B753| ADC.b #$00
|09B755| STA.w $0D30,Y

|09B758| LDA.b $E8
|09B75A| SEC
|09B75B| SBC.b #$30
|09B75D| STA.w $0D00,Y

|09B760| LDA.b $E9
|09B762| SBC.b #$00
|09B764| STA.w $0D20,Y

|09B767| LDA.b #$00
|09B769| STA.w $0F20,Y
|09B76C| STA.w $0DE0,Y
|09B76F| STA.w $0F70,Y

.exit
|09B772| RTS

;===================================================================================================

HandleAllOverlords:
|09B773| PHB
|09B774| PHK
|09B775| PLB

|09B776| JSR .main
|09B779| JSR SpawnBoulder

|09B77C| PLB

|09B77D| RTL

;---------------------------------------------------------------------------------------------------

.main
|09B77E| LDA.b $11
|09B780| ORA.w $0FC1
|09B783| BNE .exit

|09B785| LDX.b #$07

.next
|09B787| LDA.w $0B00,X
|09B78A| BEQ .skip

|09B78C| JSR Overlord_ExecuteSingle

.skip
|09B78F| DEX
|09B790| BPL .next

.exit
|09B792| RTS

;===================================================================================================

Overlord_ExecuteSingle:
|09B793| PHA

|09B794| JSR Overlord_CheckIfActive

|09B797| PLA

|09B798| DEC A

|09B799| REP #$30

|09B79B| AND.w #$00FF
|09B79E| ASL A
|09B79F| TAY

|09B7A0| LDA.w .vectors,Y
|09B7A3| DEC A
|09B7A4| PHA

|09B7A5| SEP #$30

|09B7A7| RTS

;---------------------------------------------------------------------------------------------------

.vectors
|09B7A8| dw Overlord01_PositionTarget
|09B7AA| dw Overlord02_FullRoomCannons
|09B7AC| dw Overlord03_VerticalCannon
|09B7AE| dw Overlord04_Unused
|09B7B0| dw Overlord05_FallingStalfos
|09B7B2| dw Overlord06_BadSwitchSnake
|09B7B4| dw Overlord07_MovingFloor
|09B7B6| dw Overlord08_BlobSpawner
|09B7B8| dw Overlord09_WallmasterSpawner
|09B7BA| dw Overlord0A_FallingSquare
|09B7BC| dw Overlord0B_FallingBridge
|09B7BE| dw Overlord0C_FallingTiles_WestToEast
|09B7C0| dw Overlord0D_FallingTiles_NorthToSouth
|09B7C2| dw Overlord0E_FallingTiles_EastToWest
|09B7C4| dw Overlord0F_FallingTiles_SouthToNorth
|09B7C6| dw Overlord10_PirogusuSpawner_left
|09B7C8| dw Overlord11_PirogusuSpawner_right
|09B7CA| dw Overlord12_PirogusuSpawner_top
|09B7CC| dw Overlord13_PirogusuSpawner_bottom
|09B7CE| dw Overlord14_TileRoom
|09B7D0| dw Overlord15_WizzrobeSpawner
|09B7D2| dw Overlord16_ZoroSpawner
|09B7D4| dw Overlord17_PotTrap
|09B7D6| dw Overlord18_InvisibleStalfos
|09B7D8| dw Overlord19_ArmosCoordinator_bounce
|09B7DA| dw Overlord1A_BadSwitchBomb

;===================================================================================================

Overlord19_ArmosCoordinator_bounce:
|09B7DC| JSL Overlord19_ArmosCoordinator

|09B7E0| RTS

;===================================================================================================

pool Overlord18_InvisibleStalfos

.offset_x_low
|09B7E1| db   0,   0, -48,  48

.offset_x_high
|09B7E5| db   0,   0,  -1,   0

.offset_y_low
|09B7E9| db -40,  56,   8,   8

.offset_y_high
|09B7ED| db  -1,   0,   0,   0

.timer
|09B7F1| db  48,  80, 112, 144

endpool

;---------------------------------------------------------------------------------------------------

Overlord18_InvisibleStalfos:
|09B7F5| LDA.w $0B08,X
|09B7F8| STA.b $00

|09B7FA| LDA.w $0B10,X
|09B7FD| STA.b $01

|09B7FF| LDA.w $0B18,X
|09B802| STA.b $02

|09B804| LDA.w $0B20,X
|09B807| STA.b $03

|09B809| REP #$20

|09B80B| LDA.b $00
|09B80D| SEC
|09B80E| SBC.b $22
|09B810| CLC
|09B811| ADC.w #$0018
|09B814| CMP.w #$0030
|09B817| BCS .exit

|09B819| LDA.b $02
|09B81B| SEC
|09B81C| SBC.b $20
|09B81E| CLC
|09B81F| ADC.w #$0018
|09B822| CMP.w #$0030
|09B825| BCS .exit

|09B827| SEP #$20

|09B829| STZ.w $0B00,X

;---------------------------------------------------------------------------------------------------

|09B82C| LDA.b #$03
|09B82E| STA.w $0FB5

.next
|09B831| LDA.b #$A7 ; SPRITE A7
|09B833| LDY.b #$0C
|09B835| JSL SpawnSpriteDynamically.slot_limited
|09B839| BMI .skip

|09B83B| PHX

|09B83C| LDX.w $0FB5

|09B83F| LDA.b $22
|09B841| CLC
|09B842| ADC.w .offset_x_low,X
|09B845| STA.w $0D10,Y

|09B848| LDA.b $23
|09B84A| ADC.w .offset_x_high,X
|09B84D| STA.w $0D30,Y

|09B850| LDA.b $20
|09B852| CLC
|09B853| ADC.w .offset_y_low,X
|09B856| STA.w $0D00,Y

|09B859| LDA.b $21
|09B85B| ADC.w .offset_y_high,X
|09B85E| STA.w $0D20,Y

|09B861| LDA.w .timer,X
|09B864| STA.w $0DF0,Y

|09B867| PLX

|09B868| LDA.w $0B40,X
|09B86B| STA.w $0F20,Y

|09B86E| LDA.b #$01
|09B870| STA.w $0E90,Y

|09B873| LDA.b #$03
|09B875| STA.w $0E40,Y

|09B878| DEC A
|09B879| STA.w $0DE0,Y

.skip
|09B87C| DEC.w $0FB5
|09B87F| BPL .next

;---------------------------------------------------------------------------------------------------

.exit
|09B881| SEP #$20

|09B883| RTS

;===================================================================================================

Overlord17_PotTrap:
|09B884| LDA.w $0B08,X
|09B887| STA.b $00

|09B889| LDA.w $0B10,X
|09B88C| STA.b $01

|09B88E| LDA.w $0B18,X
|09B891| STA.b $02

|09B893| LDA.w $0B20,X
|09B896| STA.b $03

|09B898| REP #$20

|09B89A| LDA.b $00
|09B89C| SEC
|09B89D| SBC.b $22
|09B89F| CLC
|09B8A0| ADC.w #$0020

|09B8A3| CMP.w #$0040
|09B8A6| BCS .exit

|09B8A8| LDA.b $02
|09B8AA| SEC
|09B8AB| SBC.b $20
|09B8AD| CLC
|09B8AE| ADC.w #$0020

|09B8B1| CMP.w #$0040
|09B8B4| BCS .exit

|09B8B6| SEP #$20

|09B8B8| STZ.w $0B00,X

|09B8BB| INC.w $0B9E

.exit
|09B8BE| SEP #$20

|09B8C0| RTS

;===================================================================================================

pool Overlord16_ZoroSpawner

.offset_x_low
|09B8C1| db  -4,  -2,   0,   2
|09B8C5| db   4,   6,   8,  12

.offset_x_high
|09B8C9| db  -1,  -1,   0,   0
|09B8CD| db   0,   0,   0,   0

endpool

;---------------------------------------------------------------------------------------------------

Overlord16_ZoroSpawner:
|09B8D1| DEC.w $0B30,X

|09B8D4| LDA.w $0B18,X
|09B8D7| CLC
|09B8D8| ADC.b #$08
|09B8DA| STA.b $00

|09B8DC| LDA.w $0B20,X
|09B8DF| ADC.b #$00
|09B8E1| STA.b $01

|09B8E3| LDA.w $0B08,X
|09B8E6| CLC
|09B8E7| ADC.b #$08
|09B8E9| STA.b $02

|09B8EB| LDA.w $0B10,X
|09B8EE| ADC.b #$00
|09B8F0| STA.b $03

|09B8F2| LDA.w $0B40,X
|09B8F5| JSL GetTileType_long

; Check if door
|09B8F9| CMP.b #$82 ; TILETYPE 82
|09B8FB| BNE .exit

|09B8FD| LDA.w $0B30,X
|09B900| CMP.b #$18
|09B902| BCS .exit

|09B904| AND.b #$03
|09B906| BNE .exit

;---------------------------------------------------------------------------------------------------

|09B908| LDA.b #$9C ; SPRITE 9C
|09B90A| LDY.b #$0C
|09B90C| JSL SpawnSpriteDynamically.slot_limited
|09B910| BMI .exit

|09B912| PHX

|09B913| JSL GetRandomNumber
|09B917| AND.b #$07
|09B919| TAX

|09B91A| LDA.b $05
|09B91C| CLC
|09B91D| ADC.w .offset_x_low,X
|09B920| PHP

|09B921| CLC
|09B922| ADC.b #$08
|09B924| STA.w $0D10,Y

|09B927| LDA.b $06
|09B929| ADC.b #$00
|09B92B| PLP
|09B92C| ADC.w .offset_x_high,X
|09B92F| STA.w $0D30,Y

|09B932| LDA.b $07
|09B934| CLC
|09B935| ADC.b #$08
|09B937| STA.w $0D00,Y

|09B93A| LDA.b $08
|09B93C| STA.w $0D20,Y

|09B93F| PLX

|09B940| LDA.w $0B40,X
|09B943| STA.w $0F20,Y

|09B946| LDA.b #$01
|09B948| STA.w $0F60,Y
|09B94B| STA.w $0E90,Y
|09B94E| STA.w $0BA0,Y

|09B951| LDA.b #$10
|09B953| STA.w $0D40,Y

|09B956| LDA.b #$20
|09B958| STA.w $0E40,Y

|09B95B| LDA.b #$0D
|09B95D| STA.w $0F50,Y

|09B960| JSL GetRandomNumber
|09B964| STA.w $0E80,Y

|09B967| LDA.b #$30
|09B969| STA.w $0DF0,Y

|09B96C| LDA.b #$03
|09B96E| STA.w $0CD2,Y

.exit
|09B971| RTS

;===================================================================================================

pool Overlord15_WizzrobeSpawner

.offset_x_low
|09B972| db  48, -48,   0,   0

.offset_x_high
|09B976| db   0,  -1,   0,   0

.offset_y_low
|09B97A| db  16,  16,  64, -32

.offset_y_high
|09B97E| db   0,   0,   0,  -1

.timer
|09B982| db   0,  16,  32,  48

endpool

;---------------------------------------------------------------------------------------------------

Overlord15_WizzrobeSpawner:
|09B986| LDA.w $0B30,X
|09B989| CMP.b #$80
|09B98B| BEQ .spawn

|09B98D| LDA.b $1A
|09B98F| LSR A
|09B990| BCC .exit

|09B992| DEC.w $0B30,X

.exit
|09B995| RTS

;---------------------------------------------------------------------------------------------------

.spawn
|09B996| LDA.b #$7F
|09B998| STA.w $0B30,X

|09B99B| LDA.b #$03
|09B99D| STA.w $0FB5

.next
|09B9A0| LDA.b #$9B ; SPRITE 9B
|09B9A2| LDY.b #$0C
|09B9A4| JSL SpawnSpriteDynamically.slot_limited
|09B9A8| BMI .no_space

|09B9AA| PHX

|09B9AB| LDX.w $0FB5

|09B9AE| LDA.b $22
|09B9B0| CLC
|09B9B1| ADC.w .offset_x_low,X
|09B9B4| STA.w $0D10,Y

|09B9B7| LDA.b $23
|09B9B9| ADC.w .offset_x_high,X
|09B9BC| STA.w $0D30,Y

|09B9BF| LDA.b $20
|09B9C1| CLC
|09B9C2| ADC.w .offset_y_low,X
|09B9C5| STA.w $0D00,Y

|09B9C8| LDA.b $21
|09B9CA| ADC.w .offset_y_high,X
|09B9CD| STA.w $0D20,Y

|09B9D0| LDA.w .timer,X
|09B9D3| STA.w $0DF0,Y

|09B9D6| PLX

|09B9D7| LDA.w $0B40,X
|09B9DA| STA.w $0F20,Y

|09B9DD| LDA.b #$01
|09B9DF| STA.w $0DA0,Y

.no_space
|09B9E2| DEC.w $0FB5
|09B9E5| BPL .next

|09B9E7| RTS

;===================================================================================================

Overlord14_TileRoom:
|09B9E8| LDA.w $0B08,X
|09B9EB| CMP.b $E2

|09B9ED| LDA.w $0B10,X
|09B9F0| SBC.b $E3
|09B9F2| BNE .exit

|09B9F4| LDA.w $0B18,X
|09B9F7| CMP.b $E8

|09B9F9| LDA.w $0B20,X
|09B9FC| SBC.b $E9
|09B9FE| BNE .exit

|09BA00| DEC.w $0B30,X

|09BA03| LDA.w $0B30,X
|09BA06| CMP.b #$80
|09BA08| BEQ .continue

|09BA0A| RTS

;---------------------------------------------------------------------------------------------------

.no_space
|09BA0B| LDA.b #$81
|09BA0D| STA.w $0B30,X

|09BA10| RTS

;---------------------------------------------------------------------------------------------------

.continue
|09BA11| JSR SpawnFlyingTile
|09BA14| BMI .no_space

|09BA16| INC.w $0B28,X

|09BA19| LDA.w $0B28,X
|09BA1C| CMP.b #$16
|09BA1E| BEQ .last_tile

|09BA20| LDA.b #$E0
|09BA22| STA.w $0B30,X

|09BA25| RTS

.last_tile
|09BA26| STZ.w $0B00,X

.exit
|09BA29| RTS

;===================================================================================================

pool SpawnFlyingTile

.position_x
|09BA2A| db $70, $80, $60, $90
|09BA2E| db $90, $60, $70, $80
|09BA32| db $80, $70, $50, $A0
|09BA36| db $A0, $50, $50, $A0
|09BA3A| db $A0, $50, $70, $80
|09BA3E| db $80, $70

.position_y
|09BA40| db $80, $80, $70, $90
|09BA44| db $70, $90, $60, $A0
|09BA48| db $60, $A0, $60, $B0
|09BA4C| db $60, $B0, $80, $90
|09BA50| db $80, $90, $70, $90
|09BA54| db $70, $90

endpool

;---------------------------------------------------------------------------------------------------

SpawnFlyingTile:
|09BA56| LDA.b #$94 ; SPRITE 94
|09BA58| JSL SpawnSpriteDynamically
|09BA5C| BMI .exit

|09BA5E| LDA.b #$01
|09BA60| STA.w $0E90,Y

|09BA63| PHX

|09BA64| LDA.w $0B28,X
|09BA67| TAX

|09BA68| LDA.w .position_x,X
|09BA6B| STA.w $0D10,Y

|09BA6E| LDA.w .position_y,X
|09BA71| SEC
|09BA72| SBC.b #$08
|09BA74| STA.w $0D00,Y

|09BA77| PLX

|09BA78| LDA.w $0B20,X
|09BA7B| STA.w $0D20,Y

|09BA7E| LDA.w $0B10,X
|09BA81| STA.w $0D30,Y

|09BA84| LDA.w $0B40,X
|09BA87| STA.w $0F20,Y

|09BA8A| LDA.b #$04
|09BA8C| STA.w $0E50,Y

|09BA8F| LDA.b #$00
|09BA91| STA.w $0BE0,Y
|09BA94| STA.w $0E50,Y

|09BA97| LDA.b #$08
|09BA99| STA.w $0CAA,Y

|09BA9C| LDA.b #$04
|09BA9E| STA.w $0E40,Y

|09BAA1| LDA.b #$01
|09BAA3| STA.w $0F50,Y

|09BAA6| LDA.b #$04
|09BAA8| STA.w $0CD2,Y

.exit
|09BAAB| RTS

;===================================================================================================

Overlord10_PirogusuSpawner_left:
Overlord11_PirogusuSpawner_right:
Overlord12_PirogusuSpawner_top:
Overlord13_PirogusuSpawner_bottom:
|09BAAC| LDA.w $0B00,X
|09BAAF| SEC
|09BAB0| SBC.b #$10
|09BAB2| STA.w $0FB5

|09BAB5| LDA.w $0B30,X
|09BAB8| CMP.b #$80
|09BABA| BEQ .spawn

|09BABC| DEC.w $0B30,X

|09BABF| RTS

;---------------------------------------------------------------------------------------------------

.direction
|09BAC0| db $02
|09BAC1| db $03
|09BAC2| db $00
|09BAC3| db $01

;---------------------------------------------------------------------------------------------------

.spawn
|09BAC4| JSL GetRandomNumber
|09BAC8| AND.b #$1F
|09BACA| CLC
|09BACB| ADC.b #$60
|09BACD| STA.w $0B30,X

|09BAD0| STZ.b $00

|09BAD2| LDY.b #$0F

.next_check
|09BAD4| LDA.w $0DD0,Y
|09BAD7| BEQ .skip

; [BUG] wrong sprite being checked for
|09BAD9| LDA.w $0E20,Y
|09BADC| CMP.b #$10 ; SPRITE 10
|09BADE| BNE .skip

|09BAE0| INC.b $00

.skip
|09BAE2| DEY
|09BAE3| BPL .next_check

;---------------------------------------------------------------------------------------------------

|09BAE5| LDA.b $00
|09BAE7| CMP.b #$05
|09BAE9| BCS .exit

|09BAEB| LDY.b #$0C
|09BAED| LDA.b #$94 ; SPRITE 94
|09BAEF| JSL SpawnSpriteDynamically.slot_limited
|09BAF3| BMI .exit

|09BAF5| LDA.b $05
|09BAF7| STA.w $0D10,Y

|09BAFA| LDA.b $06
|09BAFC| STA.w $0D30,Y

|09BAFF| LDA.b $07
|09BB01| STA.w $0D00,Y

|09BB04| LDA.b $08
|09BB06| STA.w $0D20,Y

|09BB09| LDA.w $0B40,X
|09BB0C| STA.w $0F20,Y

|09BB0F| LDA.b #$20
|09BB11| STA.w $0DF0,Y

|09BB14| LDA.w $0FB5
|09BB17| STA.w $0DE0,Y

|09BB1A| PHX

|09BB1B| TAX

|09BB1C| LDA.w .direction,X
|09BB1F| STA.w $0D90,Y

|09BB22| PLX

.exit
|09BB23| RTS

;===================================================================================================
; 0x00 - Right
; 0x01 - Left
; 0x02 - Down
; 0x03 - Up
;===================================================================================================
FallingTilesPattern:

.rectangle
|09BB24| db $02, $02, $02, $02
|09BB28| db $02, $02, $01, $01
|09BB2C| db $01, $01, $01, $01
|09BB30| db $01, $03, $03, $03
|09BB34| db $03, $03, $03, $00
|09BB38| db $00, $00, $00, $00
|09BB3C| db $00

;---------------------------------------------------------------------------------------------------

.bridge
|09BB3D| db $00, $03, $01, $03
|09BB41| db $00, $03, $01, $03
|09BB45| db $00, $03, $01, $03
|09BB49| db $00, $03, $01, $03
|09BB4D| db $00, $03, $01, $03
|09BB51| db $00, $03, $01, $03
|09BB55| db $00, $03, $01, $03
|09BB59| db $00, $03, $01, $03
|09BB5D| db $00, $03, $01, $03
|09BB61| db $00, $03, $01, $03
|09BB65| db $00

;---------------------------------------------------------------------------------------------------

.west_to_east
|09BB66| db $00, $00, $00, $00
|09BB6A| db $00, $00, $00, $00
|09BB6E| db $00, $00, $00

.north_to_south
|09BB71| db $02, $02, $02, $02
|09BB75| db $02, $02, $02, $02
|09BB79| db $02, $02

.east_to_west
|09BB7B| db $01, $01, $01, $01
|09BB7F| db $01, $01, $01, $01
|09BB83| db $01, $01, $01

.south_to_north
|09BB86| db $03, $03, $03, $03
|09BB8A| db $03, $03, $03, $03
|09BB8E| db $03, $03

;---------------------------------------------------------------------------------------------------

.move_x_low
|09BB90| db  16, -16,   0,   0

.move_x_high
|09BB94| db   0,  -1,   0,   0

.move_y_low
|09BB98| db   0,   0,  16, -16

.move_y_high
|09BB9C| db   0,   0,   0,  -1

;---------------------------------------------------------------------------------------------------

.tile_count
|09BBA0| db $1A
|09BBA1| db $2A
|09BBA2| db $0C
|09BBA3| db $0B
|09BBA4| db $0C
|09BBA5| db $0B

;---------------------------------------------------------------------------------------------------

.pointers_low
|09BBA6| db .rectangle
|09BBA7| db .bridge
|09BBA8| db .west_to_east
|09BBA9| db .north_to_south
|09BBAA| db .east_to_west
|09BBAB| db .south_to_north

.pointers_high
|09BBAC| db >.rectangle
|09BBAD| db >.bridge
|09BBAE| db >.west_to_east
|09BBAF| db >.north_to_south
|09BBB0| db >.east_to_west
|09BBB1| db >.south_to_north

;===================================================================================================

Overlord0A_FallingSquare:
Overlord0B_FallingBridge:
Overlord0C_FallingTiles_WestToEast:
Overlord0D_FallingTiles_NorthToSouth:
Overlord0E_FallingTiles_EastToWest:
Overlord0F_FallingTiles_SouthToNorth:
|09BBB2| LDA.w $0B30,X
|09BBB5| BEQ .drop_tile

|09BBB7| LDA.w $0B38,X
|09BBBA| BEQ .check_activeness

|09BBBC| DEC.w $0B30,X

|09BBBF| RTS

;---------------------------------------------------------------------------------------------------

.check_activeness
|09BBC0| LDA.w $0B08,X
|09BBC3| CMP.b $E2

|09BBC5| LDA.w $0B10,X
|09BBC8| SBC.b $E3
|09BBCA| BNE .exit

|09BBCC| LDA.w $0B18,X
|09BBCF| CMP.b $E8
|09BBD1| LDA.w $0B20,X

|09BBD4| SBC.b $E9
|09BBD6| BNE .exit

|09BBD8| INC.w $0B38,X

.exit
|09BBDB| RTS

;---------------------------------------------------------------------------------------------------

.drop_tile
|09BBDC| LDA.b #$10
|09BBDE| STA.w $0B30,X

|09BBE1| JSR SpawnFallingTile

|09BBE4| INC.w $0B28,X

|09BBE7| LDA.w $0B00,X
|09BBEA| SEC
|09BBEB| SBC.b #$0A
|09BBED| TAY

|09BBEE| LDA.w FallingTilesPattern.pointers_low,Y
|09BBF1| STA.b $00

|09BBF3| LDA.w FallingTilesPattern.pointers_high,Y
|09BBF6| STA.b $01

|09BBF8| LDA.w FallingTilesPattern.tile_count,Y
|09BBFB| CMP.w $0B28,X
|09BBFE| BNE .not_last_tile

|09BC00| STZ.w $0B00,X

;---------------------------------------------------------------------------------------------------

.not_last_tile
|09BC03| LDY.w $0B28,X
|09BC06| DEY

|09BC07| LDA.b ($00),Y
|09BC09| TAY

|09BC0A| LDA.w $0B08,X
|09BC0D| CLC
|09BC0E| ADC.w FallingTilesPattern.move_x_low,Y
|09BC11| STA.w $0B08,X

|09BC14| LDA.w $0B10,X
|09BC17| ADC.w FallingTilesPattern.move_x_high,Y
|09BC1A| STA.w $0B10,X

|09BC1D| LDA.w $0B18,X
|09BC20| CLC
|09BC21| ADC.w FallingTilesPattern.move_y_low,Y
|09BC24| STA.w $0B18,X

|09BC27| LDA.w $0B20,X
|09BC2A| ADC.w FallingTilesPattern.move_y_high,Y
|09BC2D| STA.w $0B20,X

|09BC30| RTS

;===================================================================================================

SpawnFallingTile:
|09BC31| TXY
|09BC32| PHX

|09BC33| LDX.b #$1D

.next
|09BC35| LDA.l $7FF800,X
|09BC39| BNE .skip

|09BC3B| LDA.b #$03 ; GARNISH 03
|09BC3D| STA.l $7FF800,X

|09BC41| LDA.w $0B08,Y
|09BC44| STA.l $7FF83C,X

|09BC48| JSL CalculateArbitrarySFXPan
|09BC4C| ORA.b #$1F ; SFX2.1F
|09BC4E| STA.w $012E

|09BC51| LDA.w $0B10,Y
|09BC54| STA.l $7FF878,X

|09BC58| LDA.w $0B18,Y
|09BC5B| CLC
|09BC5C| ADC.b #$10
|09BC5E| STA.l $7FF81E,X

|09BC62| LDA.w $0B20,Y
|09BC65| ADC.b #$00
|09BC67| STA.l $7FF85A,X

|09BC6B| LDA.b #$1F
|09BC6D| STA.l $7FF90E,X

|09BC71| STA.w $0FB4

|09BC74| BRA .exit

.skip
|09BC76| DEX
|09BC77| BPL .next

;---------------------------------------------------------------------------------------------------

.exit
|09BC79| PLX

|09BC7A| RTS

;===================================================================================================

Overlord09_WallmasterSpawner:
|09BC7B| LDA.w $0B30,X
|09BC7E| CMP.b #$80
|09BC80| BEQ .spawn_master

|09BC82| LDA.b $1A
|09BC84| AND.b #$01
|09BC86| BNE .exit

|09BC88| DEC.w $0B30,X

.exit
|09BC8B| RTS

;---------------------------------------------------------------------------------------------------

.spawn_master
|09BC8C| LDA.b #$7F
|09BC8E| STA.w $0B30,X

|09BC91| LDA.b #$90 ; SPRITE 90
|09BC93| LDY.b #$0C
|09BC95| JSL SpawnSpriteDynamically.slot_limited
|09BC99| BMI .no_space

|09BC9B| LDA.b $22
|09BC9D| STA.w $0D10,Y

|09BCA0| LDA.b $23
|09BCA2| STA.w $0D30,Y

|09BCA5| LDA.b $20
|09BCA7| STA.w $0D00,Y

|09BCAA| LDA.b $21
|09BCAC| STA.w $0D20,Y

|09BCAF| LDA.b #$D0
|09BCB1| STA.w $0F70,Y

|09BCB4| PHX

|09BCB5| TYX

|09BCB6| LDA.b #$20 ; SFX2.20
|09BCB8| JSL QueueSpriteSFX2WithPan

|09BCBC| PLX

|09BCBD| LDA.b $EE
|09BCBF| STA.w $0F20,Y

.no_space
|09BCC2| RTS

;===================================================================================================

Overlord08_BlobSpawner:
|09BCC3| LDA.w $0B30,X
|09BCC6| BEQ .spawn_blob

|09BCC8| DEC.w $0B30,X

|09BCCB| RTS

.spawn_blob
|09BCCC| LDA.b #$A0
|09BCCE| STA.w $0B30,X

|09BCD1| STZ.b $00

|09BCD3| LDY.b #$0F

.next_count
|09BCD5| LDA.w $0DD0,Y
|09BCD8| BEQ .dont_tally

|09BCDA| LDA.w $0E20,Y
|09BCDD| CMP.b #$8F ; SPRITE 8F
|09BCDF| BNE .dont_tally

|09BCE1| INC.b $00

.dont_tally
|09BCE3| DEY
|09BCE4| BPL .next_count

;---------------------------------------------------------------------------------------------------

|09BCE6| LDA.b $00
|09BCE8| CMP.b #$05
|09BCEA| BCS .exit

|09BCEC| LDA.b #$8F ; SPRITE 8F
|09BCEE| LDY.b #$0C
|09BCF0| JSL SpawnSpriteDynamically.slot_limited
|09BCF4| BMI .exit

|09BCF6| PHX

|09BCF7| LDA.b $2F
|09BCF9| LSR A
|09BCFA| TAX

|09BCFB| LDA.b $22
|09BCFD| CLC
|09BCFE| ADC.w BlobSpawner.offset_x_low,X
|09BD01| STA.w $0D10,Y

|09BD04| LDA.b $23
|09BD06| ADC.w BlobSpawner.offset_x_high,X
|09BD09| STA.w $0D30,Y

|09BD0C| LDA.b $20
|09BD0E| CLC
|09BD0F| ADC.w BlobSpawner.offset_y_low,X
|09BD12| STA.w $0D00,Y

|09BD15| LDA.b $21
|09BD17| ADC.w BlobSpawner.offset_y_high,X
|09BD1A| STA.w $0D20,Y

|09BD1D| PLX

|09BD1E| LDA.b #$C0
|09BD20| STA.w $0F70,Y

|09BD23| LDA.b $EE
|09BD25| STA.w $0F20,Y

|09BD28| LDA.b #$02
|09BD2A| STA.w $0D80,Y
|09BD2D| STA.w $0E90,Y
|09BD30| STA.w $0DB0,Y

|09BD33| JSL GetRandomNumber
|09BD37| AND.b #$1F
|09BD39| ORA.b #$10
|09BD3B| STA.w $0EB0,Y

.exit
|09BD3E| RTS

;===================================================================================================

Overlord07_MovingFloor:
|09BD3F| LDA.w $0DD0
|09BD42| CMP.b #$04
|09BD44| BNE .boss_not_dying

|09BD46| STZ.w $0B00,X
|09BD49| BRA .stop_floor

.boss_not_dying
|09BD4B| LDA.w $0B28,X
|09BD4E| BNE .direction_lock

|09BD50| INC.w $0B30,X

|09BD53| LDA.w $0B30,X
|09BD56| CMP.b #$20
|09BD58| BNE .stop_floor

|09BD5A| STZ.w $0B30,X

|09BD5D| JSL GetRandomNumber
|09BD61| AND.b #$03

|09BD63| LDY.w $0B08,X
|09BD66| BNE .omnidirectional

|09BD68| AND.b #$01

.omnidirectional
|09BD6A| ASL A
|09BD6B| STA.w $041A

|09BD6E| JSL GetRandomNumber
|09BD72| AND.b #$7F
|09BD74| ADC.b #$80
|09BD76| STA.w $0B30,X

|09BD79| INC.w $0B28,X

|09BD7C| RTS

;---------------------------------------------------------------------------------------------------

.stop_floor
|09BD7D| LDA.b #$01
|09BD7F| STA.w $041A

|09BD82| RTS

;---------------------------------------------------------------------------------------------------

.direction_lock
|09BD83| DEC.w $0B30,X
|09BD86| BNE .exit

|09BD88| STZ.w $0B28,X

.exit
|09BD8B| RTS

;===================================================================================================

UNREACHABLE_09BD8C:
|09BD8C| RTS

;===================================================================================================

BlobSpawner:

.offset_x_low
|09BD8D| db   0,   0, -48,  48

.offset_y_low
|09BD91| db -40,  56,   8,   8

.offset_x_high
|09BD95| db   0,   0,  -1,   0

.offset_y_high
|09BD99| db  -1,   0,   0,   0

;===================================================================================================

Overlord04_Unused:
|09BD9D| LDA.w $0B30,X
|09BDA0| BEQ .spawn

|09BDA2| LDA.b $1A
|09BDA4| AND.b #$01
|09BDA6| BNE .exit

|09BDA8| DEC.w $0B30,X

.exit
|09BDAB| RTS

;===================================================================================================

.spawn
|09BDAC| LDA.b #$30
|09BDAE| INC.w $0B28,X

; TODO ? probably need to force one to spawn to see what's up
|09BDB1| LDY.w $0B28,X
|09BDB4| CPY.b #$04
|09BDB6| BNE .not_max_y_position

|09BDB8| STZ.w $0B28,X

|09BDBB| LDA.b #$D0

.not_max_y_position
|09BDBD| STA.w $0B30,X

|09BDC0| LDA.b #$85 ; SPRITE 85
|09BDC2| LDY.b #$0C
|09BDC4| JSL SpawnSpriteDynamically.slot_limited
|09BDC8| BMI .no_space

|09BDCA| PHX

|09BDCB| LDA.b $2F
|09BDCD| LSR A
|09BDCE| TAX

|09BDCF| LDA.b $22
|09BDD1| CLC
|09BDD2| ADC.w BlobSpawner.offset_x_low,X
|09BDD5| STA.w $0D10,Y

|09BDD8| LDA.b $23
|09BDDA| ADC.w BlobSpawner.offset_x_high,X
|09BDDD| STA.w $0D30,Y

|09BDE0| LDA.b $20
|09BDE2| CLC
|09BDE3| ADC.w BlobSpawner.offset_y_low,X
|09BDE6| STA.w $0D00,Y

|09BDE9| LDA.b $21
|09BDEB| ADC.w BlobSpawner.offset_y_high,X
|09BDEE| STA.w $0D20,Y

|09BDF1| PLX

|09BDF2| LDA.b #$90
|09BDF4| STA.w $0F70,Y

|09BDF7| LDA.b $EE
|09BDF9| STA.w $0F20,Y

|09BDFC| RTS

;===================================================================================================

#Overlord_PlayFallingSFX:
|09BDFD| PHX
|09BDFE| TYX

|09BDFF| LDA.b #$20 ; SFX2.20
|09BE01| JSL QueueSpriteSFX2WithPan

|09BE05| PLX

.no_space
|09BE06| RTS

;===================================================================================================

pool Overlord05_FallingStalfos

.timer
|09BE07| db 255, 224, 192, 160
|09BE0B| db 128,  96,  64,  32

endpool

;---------------------------------------------------------------------------------------------------

Overlord05_FallingStalfos:
|09BE0F| LDA.w $0B08,X
|09BE12| CMP.b $E2

|09BE14| LDA.w $0B10,X
|09BE17| SBC.b $E3
|09BE19| BNE .exit_a

|09BE1B| LDA.w $0B18,X
|09BE1E| CMP.b $E8

|09BE20| LDA.w $0B20,X
|09BE23| SBC.b $E9
|09BE25| BNE .exit_a

|09BE27| LDA.w $0B28,X
|09BE2A| BNE .triggered

|09BE2C| LDA.w $0B9E
|09BE2F| BEQ .exit_a

|09BE31| INC.w $0B28,X

.exit_a
|09BE34| RTS

;---------------------------------------------------------------------------------------------------

.triggered
|09BE35| INC.w $0B28,X

|09BE38| CMP.w .timer,X
|09BE3B| BNE .exit_b

|09BE3D| STZ.w $0B00,X

|09BE40| LDA.b #$85 ; SPRITE 85
|09BE42| LDY.b #$0C
|09BE44| JSL SpawnSpriteDynamically.slot_limited
|09BE48| BMI .exit_b

|09BE4A| LDA.b $05
|09BE4C| STA.w $0D10,Y

|09BE4F| LDA.b $06
|09BE51| STA.w $0D30,Y

|09BE54| LDA.b $07
|09BE56| STA.w $0D00,Y

|09BE59| LDA.b $08
|09BE5B| STA.w $0D20,Y

|09BE5E| LDA.b #$E0
|09BE60| STA.w $0F70,Y

|09BE63| LDA.w $0B40,X
|09BE66| STA.w $0F20,Y

|09BE69| JSR Overlord_PlayFallingSFX

.exit_b
|09BE6C| RTS

;===================================================================================================

OverlordAmbushTimers:
|09BE6D| db  32,  48,  64,  80
|09BE71| db  96, 112, 128, 144

;===================================================================================================

Overlord06_BadSwitchSnake:
Overlord1A_BadSwitchBomb:
|09BE75| LDA.w $0B28,X
|09BE78| BNE .active

|09BE7A| LDA.w $0CF4
|09BE7D| BEQ .dont_activate_yet

|09BE7F| INC.w $0B28,X

.dont_activate_yet
|09BE82| RTS

;---------------------------------------------------------------------------------------------------

.active
|09BE83| INC.w $0B28,X

|09BE86| CMP.w OverlordAmbushTimers,X
|09BE89| BNE .exit

|09BE8B| LDA.b #$6E ; SPRITE 6E
|09BE8D| JSL SpawnSpriteDynamically
|09BE91| BMI .exit

|09BE93| LDA.b $05
|09BE95| STA.w $0D10,Y

|09BE98| LDA.b $06
|09BE9A| STA.w $0D30,Y

|09BE9D| LDA.b $07
|09BE9F| STA.w $0D00,Y

|09BEA2| LDA.b $08
|09BEA4| STA.w $0D20,Y

|09BEA7| LDA.b #$C0
|09BEA9| STA.w $0F70,Y
|09BEAC| STA.w $0E90,Y

|09BEAF| LDA.w $0E60,Y
|09BEB2| ORA.b #$10
|09BEB4| STA.w $0E60,Y

|09BEB7| LDA.w $0B40,X
|09BEBA| STA.w $0F20,Y

|09BEBD| JSR Overlord_PlayFallingSFX

|09BEC0| LDA.w $0B00,X
|09BEC3| STZ.w $0B00,X
|09BEC6| CMP.b #$1A ; OVERLORD 1A
|09BEC8| BNE .exit

|09BECA| LDA.b #$4A ; SPRITE 4A
|09BECC| STA.w $0E20,Y

|09BECF| JSL TransmuteSpriteToBomb

|09BED3| LDA.b #$70
|09BED5| STA.w $0E00,Y

.exit
|09BED8| RTS

;===================================================================================================

pool Overlord02_FullRoomCannons

.coordinate_index
|09BED9| db $02, $02, $02, $02
|09BEDD| db $01, $01, $01, $01
|09BEE1| db $03, $03, $03, $03
|09BEE5| db $00, $00, $00, $00

.coordinate_x
|09BEE9| db $40, $60, $90, $B0
|09BEED| db $F0, $F0, $F0, $F0
|09BEF1| db $B0, $90, $60, $40
|09BEF5| db $00, $00, $00, $00

.coordinate_y
|09BEF9| db $10, $10, $10, $10
|09BEFD| db $40, $60, $A0, $C0
|09BF01| db $F0, $F0, $F0, $F0
|09BF05| db $C0, $A0, $60, $40

endpool

;---------------------------------------------------------------------------------------------------

Overlord02_FullRoomCannons:
|09BF09| LDA.w $0B08,X
|09BF0C| CMP.b $E2

|09BF0E| LDA.w $0B10,X
|09BF11| SBC.b $E3
|09BF13| BNE .exit

|09BF15| LDA.w $0B18,X
|09BF18| CMP.b $E8

|09BF1A| LDA.w $0B20,X
|09BF1D| SBC.b $E9
|09BF1F| BNE .exit

|09BF21| LDA.b $1A
|09BF23| AND.b #$0F
|09BF25| BNE .exit

|09BF27| STZ.b $0E
|09BF29| STZ.w $0FB6

|09BF2C| JSL GetRandomNumber
|09BF30| AND.b #$0F
|09BF32| TAY

|09BF33| LDA.w .coordinate_index,Y
|09BF36| STA.w $0FB5

|09BF39| LDA.w .coordinate_x,Y
|09BF3C| STA.w $0B08,X

|09BF3F| LDA.b #$00
|09BF41| CLC
|09BF42| ADC.w $0FB0
|09BF45| STA.w $0B10,X

|09BF48| LDA.w .coordinate_y,Y
|09BF4B| STA.w $0B18,X

|09BF4E| LDA.b #$01
|09BF50| CLC
|09BF51| ADC.w $0FB1
|09BF54| STA.w $0B20,X

|09BF57| JSR Overlord_SpawnCannonBall

.exit
|09BF5A| RTS

;===================================================================================================

Overlord03_VerticalCannon:
|09BF5B| LDA.w $0B08,X
|09BF5E| CMP.b $E2

|09BF60| LDA.w $0B10,X
|09BF63| SBC.b $E3
|09BF65| BNE .inactive

|09BF67| LDA.b $1A
|09BF69| AND.b #$01
|09BF6B| BNE .resist_tick

|09BF6D| LDA.w $0B30,X
|09BF70| BEQ .resist_tick

|09BF72| DEC.w $0B30,X

.resist_tick
|09BF75| LDA.b #$02
|09BF77| STA.w $0FB5
|09BF7A| STZ.w $0FB6

|09BF7D| DEC.w $0B28,X
|09BF80| BPL .exit

|09BF82| LDA.b #$38
|09BF84| STA.w $0B28,X

|09BF87| LDA.w $0B30,X
|09BF8A| BNE .fire_small_ball

;---------------------------------------------------------------------------------------------------

.fire_big_ball
|09BF8C| LDA.b #$A0
|09BF8E| STA.w $0B30,X
|09BF91| STA.w $0FB6

|09BF94| LDA.b #$08
|09BF96| STA.b $0E

|09BF98| BRA .fire_ball

;---------------------------------------------------------------------------------------------------

.fire_small_ball
|09BF9A| JSL GetRandomNumber
|09BF9E| AND.b #$02
|09BFA0| ASL A ; /8
|09BFA1| ASL A
|09BFA2| ASL A
|09BFA3| STA.b $0E

;---------------------------------------------------------------------------------------------------

.fire_ball
|09BFA5| JSR Overlord_SpawnCannonBall

.exit
|09BFA8| RTS

.inactive
|09BFA9| LDA.b #$FF
|09BFAB| STA.w $0B30,X

|09BFAE| RTS

;===================================================================================================

Overlord_SpawnCannonBall:
|09BFAF| LDA.b #$50 ; SPRITE 50
|09BFB1| JSL SpawnSpriteDynamically
|09BFB5| BMI .exit

|09BFB7| PHX

|09BFB8| LDA.b $05
|09BFBA| CLC
|09BFBB| ADC.b $0E
|09BFBD| STA.w $0D10,Y

|09BFC0| LDA.b $06
|09BFC2| ADC.b #$00
|09BFC4| STA.w $0D30,Y

|09BFC7| LDA.b $07
|09BFC9| SEC
|09BFCA| SBC.b #$01
|09BFCC| STA.w $0D00,Y

|09BFCF| LDA.b $08
|09BFD1| SBC.b #$00
|09BFD3| STA.w $0D20,Y

|09BFD6| LDX.w $0FB5

|09BFD9| LDA.w .speed_x,X
|09BFDC| STA.w $0D50,Y

|09BFDF| LDA.w .speed_y,X
|09BFE2| STA.w $0D40,Y

|09BFE5| PLX

|09BFE6| LDA.w $0B40,X
|09BFE9| STA.w $0F20,Y

|09BFEC| LDA.w $0FB6
|09BFEF| BEQ .small_ball

;---------------------------------------------------------------------------------------------------

.big_ball
|09BFF1| STA.w $0D80,Y

|09BFF4| LDA.w $0D00,Y
|09BFF7| CLC
|09BFF8| ADC.b #$08
|09BFFA| STA.w $0D00,Y

|09BFFD| LDA.b #$03
|09BFFF| STA.w $0E40,Y

|09C002| LDA.b #$09
|09C004| STA.w $0F60,Y

;---------------------------------------------------------------------------------------------------

.small_ball
|09C007| LDA.b #$40
|09C009| STA.w $0E10,Y

|09C00C| PHX
|09C00D| TYX

|09C00E| LDA.b #$07 ; SFX3.07
|09C010| JSL QueueSpriteSFX3WithPan

|09C014| PLX

.exit
|09C015| RTS

;---------------------------------------------------------------------------------------------------

.speed_x
|09C016| db  24, -24,   0,   0

.speed_y
|09C01A| db   0,   0,  24, -24

;===================================================================================================

Overlord01_PositionTarget:
|09C01E| TXA
|09C01F| STA.w $0FDE

|09C022| RTS

;===================================================================================================

pool CallThePolice

.position_x_low
|09C023| db $20, $40, $E0

.position_x_high
|09C026| db $01, $03, $02

.position_y_low
|09C029| db $00, $B0, $60

.position_y_high
|09C02C| db $01, $03, $01

endpool

;---------------------------------------------------------------------------------------------------

CallThePolice:
|09C02F| PHB
|09C030| PHK
|09C031| PLB

|09C032| LDA.b #$45 ; SPRITE 45
|09C034| LDY.b #$00
|09C036| JSL SpawnSpriteDynamically.slot_limited
|09C03A| BMI .exit

|09C03C| PHX

|09C03D| LDA.w $0E20,X

|09C040| LDX.b #$00
|09C042| CMP.b #$3D ; SPRITE 3D
|09C044| BEQ .spawn_him_already_im_scared

|09C046| INX
|09C047| CMP.b #$35 ; SPRITE 35
|09C049| BEQ .spawn_him_already_im_scared

|09C04B| INX

.spawn_him_already_im_scared
|09C04C| LDA.w .position_x_low,X
|09C04F| STA.w $0D10,Y

|09C052| LDA.w .position_x_high,X
|09C055| CLC
|09C056| ADC.w $0FBD
|09C059| STA.w $0D30,Y

|09C05C| LDA.w .position_y_low,X
|09C05F| STA.w $0D00,Y

|09C062| LDA.w .position_y_high,X
|09C065| CLC
|09C066| ADC.w $0FBF
|09C069| STA.w $0D20,Y

|09C06C| PLX

;---------------------------------------------------------------------------------------------------

|09C06D| LDA.b #$00
|09C06F| STA.w $0F20,Y

|09C072| LDA.b #$04
|09C074| STA.w $0E50,Y

|09C077| LDA.b #$80
|09C079| STA.w $0CAA,Y

|09C07C| LDA.b #$90
|09C07E| STA.w $0BE0,Y

|09C081| LDA.b #$0B
|09C083| STA.w $0F50,Y

;---------------------------------------------------------------------------------------------------

.exit
|09C086| PLB

|09C087| RTL

;===================================================================================================

pool Overlord_CheckIfActive

.offset_low
|09C088| db $30, $C0

.offset_high
|09C08A| db $01, $FF

endpool

;---------------------------------------------------------------------------------------------------

#EXIT_09C08C:
|09C08C| RTS

;---------------------------------------------------------------------------------------------------

Overlord_CheckIfActive:
|09C08D| LDA.b $1B
|09C08F| BNE EXIT_09C08C

|09C091| LDA.b $1A
|09C093| AND.b #$01
|09C095| STA.b $01
|09C097| STA.b $02

|09C099| TAY

|09C09A| LDA.b $E2
|09C09C| CLC
|09C09D| ADC.w .offset_low,Y
|09C0A0| ROL.b $00

|09C0A2| CMP.w $0B08,X
|09C0A5| PHP

|09C0A6| LDA.b $E3
|09C0A8| LSR.b $00
|09C0AA| ADC.w .offset_high,Y

|09C0AD| PLP
|09C0AE| SBC.w $0B10,X
|09C0B1| STA.b $00

|09C0B3| LSR.b $01
|09C0B5| BCC .positive_x

|09C0B7| EOR.b #$80
|09C0B9| STA.b $00

;---------------------------------------------------------------------------------------------------

.positive_x
|09C0BB| LDA.b $00
|09C0BD| BMI .negative_x

|09C0BF| LDA.b $E8
|09C0C1| CLC
|09C0C2| ADC.w .offset_low,Y
|09C0C5| ROL.b $00

|09C0C7| CMP.w $0B18,X
|09C0CA| PHP

|09C0CB| LDA.b $E9
|09C0CD| LSR.b $00
|09C0CF| ADC.w .offset_high,Y

|09C0D2| PLP
|09C0D3| SBC.w $0B20,X
|09C0D6| STA.b $00

|09C0D8| LSR.b $02
|09C0DA| BCC .negative_y

|09C0DC| EOR.b #$80
|09C0DE| STA.b $00

.negative_y
|09C0E0| LDA.b $00
|09C0E2| BPL .exit

;---------------------------------------------------------------------------------------------------

.negative_x
|09C0E4| STZ.w $0B00,X

|09C0E7| TXA
|09C0E8| ASL A
|09C0E9| TAY

|09C0EA| REP #$20

|09C0EC| LDA.w $0B48,Y
|09C0EF| STA.b $00

|09C0F1| CMP.w #$FFFF
|09C0F4| PHP

|09C0F5| LSR A ; /8
|09C0F6| LSR A
|09C0F7| LSR A
|09C0F8| CLC
|09C0F9| ADC.w #$7FEF80
|09C0FC| STA.b $01

|09C0FE| PLP
|09C0FF| SEP #$20
|09C101| BCS .exit

|09C103| LDA.b #$7F
|09C105| STA.b $03

|09C107| LDA.b $00
|09C109| AND.b #$07
|09C10B| TAY

|09C10C| LDA.b [$01]
|09C10E| AND.w SpriteDeathMasks,Y
|09C111| STA.b [$01]

.exit
|09C113| RTS

;===================================================================================================

Underworld_ResetSprites:
|09C114| PHB
|09C115| PHK
|09C116| PLB

|09C117| JSR Underworld_CacheTransSprites

|09C11A| STZ.w $0309
|09C11D| STZ.w $0308

|09C120| JSL DisableAllEntities

|09C124| REP #$20

|09C126| LDA.w #$FFFF
|09C129| STA.w $0FBA
|09C12C| STA.w $0FB8

;---------------------------------------------------------------------------------------------------

|09C12F| LDX.b #$00

|09C131| LDA.w $048E

.check_next_room
|09C134| CMP.w $0B80,X
|09C137| BEQ .finish_up

|09C139| INX
|09C13A| INX
|09C13B| CPX.b #$07
|09C13D| BCC .check_next_room

;---------------------------------------------------------------------------------------------------
; Shift visited rooms around. Delete last 4 rooms of sprite deaths.
;---------------------------------------------------------------------------------------------------
|09C13F| LDA.w $0B86
|09C142| STA.b $00

|09C144| LDA.w $0B84
|09C147| STA.w $0B86

|09C14A| LDA.w $0B82
|09C14D| STA.w $0B84

|09C150| LDA.w $0B80
|09C153| STA.w $0B82

|09C156| LDA.w $048E
|09C159| STA.w $0B80

|09C15C| REP #$10

|09C15E| LDA.b $00
|09C160| CMP.w #$FFFF
|09C163| BEQ .finish_up

|09C165| ASL A
|09C166| TAX

|09C167| LDA.w #$0000
|09C16A| STA.l $7FDF80,X

.finish_up
|09C16E| SEP #$30

|09C170| JSR LoadUnderworldSprites

|09C173| PLB

|09C174| RTL

;===================================================================================================

#EXIT_09C175:
|09C175| RTS

;===================================================================================================

Underworld_CacheTransSprites:
|09C176| LDA.b $1B
|09C178| BEQ EXIT_09C175

|09C17A| STA.w $0FFA

|09C17D| LDX.b #$0F

.next
|09C17F| STZ.w $1D00,X

|09C182| LDA.w $0E20,X
|09C185| STA.w $1D10,X

|09C188| LDA.w $0D10,X
|09C18B| STA.w $1D20,X

|09C18E| LDA.w $0DC0,X
|09C191| STA.w $1D60,X

|09C194| LDA.w $0D30,X
|09C197| STA.w $1D30,X

|09C19A| LDA.w $0D00,X
|09C19D| STA.w $1D40,X

|09C1A0| LDA.w $0D20,X
|09C1A3| STA.w $1D50,X

|09C1A6| LDA.w $0F00,X
|09C1A9| BNE .skip

|09C1AB| LDA.w $0DD0,X
|09C1AE| CMP.b #$04
|09C1B0| BEQ .skip

|09C1B2| CMP.b #$0A
|09C1B4| BEQ .skip

;---------------------------------------------------------------------------------------------------

|09C1B6| STA.w $1D00,X

|09C1B9| LDA.w $0D90,X
|09C1BC| STA.w $1D70,X

|09C1BF| LDA.w $0EB0,X
|09C1C2| STA.w $1D80,X

|09C1C5| LDA.w $0F50,X
|09C1C8| STA.w $1D90,X

|09C1CB| LDA.w $0B89,X
|09C1CE| STA.w $1DA0,X

|09C1D1| LDA.w $0DE0,X
|09C1D4| STA.w $1DB0,X

|09C1D7| LDA.w $0E40,X
|09C1DA| STA.w $1DC0,X

|09C1DD| LDA.w $0F20,X
|09C1E0| STA.w $1DD0,X

|09C1E3| LDA.w $0D80,X
|09C1E6| STA.w $1DE0,X

|09C1E9| LDA.w $0E60,X
|09C1EC| STA.w $1DF0,X

|09C1EF| LDA.w $0DA0,X
|09C1F2| STA.l $7FFA5C,X

|09C1F6| LDA.w $0DB0,X
|09C1F9| STA.l $7FFA6C,X

|09C1FD| LDA.w $0E90,X
|09C200| STA.l $7FFA7C,X

|09C204| LDA.w $0E80,X
|09C207| STA.l $7FFA8C,X

|09C20B| LDA.w $0F70,X
|09C20E| STA.l $7FFA9C,X

|09C212| LDA.w $0DF0,X
|09C215| STA.l $7FFAAC,X

|09C219| LDA.l $7FF9C2,X
|09C21D| STA.l $7FFACC,X

|09C221| LDA.w $0BA0,X
|09C224| STA.l $7FFADC,X

;---------------------------------------------------------------------------------------------------

.skip
|09C228| DEX
|09C229| BMI .exit

|09C22B| JMP.w .next

.exit
|09C22E| RTS

;===================================================================================================

DisableAllEntities:
|09C22F| LDX.b #$0F

.next_sprite
|09C231| LDA.w $0DD0,X
|09C234| BEQ .skip

; delete when indoors regardless
|09C236| LDA.b $1B
|09C238| BNE .delete

; don't delete mirror portal
|09C23A| LDA.w $0E20,X
|09C23D| CMP.b #$6C ; SPRITE 6C
|09C23F| BEQ .skip

.delete
|09C241| STZ.w $0DD0,X

.skip
|09C244| DEX
|09C245| BPL .next_sprite

;---------------------------------------------------------------------------------------------------

|09C247| LDX.b #$09

.next_ancilla
|09C249| STZ.w $0C4A,X

|09C24C| DEX
|09C24D| BPL .next_ancilla

;---------------------------------------------------------------------------------------------------

|09C24F| STZ.w $02EC

|09C252| STZ.w $0B6A
|09C255| STZ.w $0B9B

|09C258| STZ.w $0B88
|09C25B| STZ.w $0B99

|09C25E| STZ.w $0FB4

|09C261| STZ.w $0B9E

|09C264| STZ.w $0CF4

|09C267| STZ.w $0FF9
|09C26A| STZ.w $0FF8

|09C26D| STZ.w $0FFB
|09C270| STZ.w $0FFC
|09C273| STZ.w $0FFD

|09C276| STZ.w $0FC6

|09C279| STZ.w $03FC

;---------------------------------------------------------------------------------------------------

|09C27C| LDX.b #$07

.next_overlord
|09C27E| STZ.w $0B00,X

|09C281| DEX
|09C282| BPL .next_overlord

;---------------------------------------------------------------------------------------------------

|09C284| LDX.b #$1D

.next_garnish
|09C286| LDA.b #$00
|09C288| STA.l $7FF800,X

|09C28C| DEX
|09C28D| BPL .next_garnish

|09C28F| RTL

;===================================================================================================
; This routine loads every sprite in the room from data whose pointer is
; calculated from the room ID
; The subroutine LoadSingleUnderworldSprite is run until $FF is read
; In practice, a maximum of 17 sprites should be listed (16+key)
; But nothing programmatically stops data from being read after all slots fill
; Instead, they will continue writing data until $FF happens to be hit
;===================================================================================================
LoadUnderworldSprites:
|09C290| REP #$30

|09C292| LDA.w $048E ; get room ID for pointer
|09C295| ASL A
|09C296| TAY

|09C297| LDA.w RoomData_SpritePointers,Y
|09C29A| STA.b $00

|09C29C| LDA.w $048E ; Room/16 for coords
|09C29F| LSR A ; /8
|09C2A0| LSR A
|09C2A1| LSR A

|09C2A2| SEP #$30

|09C2A4| AND.b #$FE
|09C2A6| STA.w $0FB1

|09C2A9| LDA.w $048E ; Room mod16 for coords
|09C2AC| AND.b #$0F
|09C2AE| ASL A
|09C2AF| STA.w $0FB0

|09C2B2| LDA.b ($00) ; first byte is OAM layering
|09C2B4| STA.w $0FB3

|09C2B7| LDA.b #$01
|09C2B9| STA.b $04 ; data index

|09C2BB| STZ.b $02 ; slot index
|09C2BD| STZ.b $03 ; appears to be unused by the routine

;---------------------------------------------------------------------------------------------------

.next_sprite
|09C2BF| LDY.b $04

|09C2C1| LDA.b ($00),Y
|09C2C3| CMP.b #$FF
|09C2C5| BEQ .done

|09C2C7| JSR LoadSingleUnderworldSprite

|09C2CA| INC.b $02 ; next slot

|09C2CC| INC.b $04 ; next data set
|09C2CE| INC.b $04
|09C2D0| INC.b $04

|09C2D2| BRA .next_sprite

.done
|09C2D4| RTS

;===================================================================================================
; This table takes a sprite's slot and converts it to a single bit
; Used to look at the table in $7FDF80 to know if a sprite should respawn
;===================================================================================================
SpriteSlotToDeathBit:
|09C2D5| dw $0001, $0002, $0004, $0008
|09C2DD| dw $0010, $0020, $0040, $0080
|09C2E5| dw $0100, $0200, $0400, $0800
|09C2ED| dw $1000, $2000, $4000, $8000

;---------------------------------------------------------------------------------------------------

ManuallySetDeathFlagUW:
|09C2F5| PHB
|09C2F6| PHK
|09C2F7| PLB

|09C2F8| LDA.b $1B
|09C2FA| BEQ .exit

|09C2FC| LDA.w $0CAA,X
|09C2FF| LSR A
|09C300| BCS .exit

|09C302| LDA.w $0BC0,X
|09C305| BMI .exit

|09C307| STA.b $02
|09C309| STZ.b $03

|09C30B| REP #$30

|09C30D| PHX

|09C30E| LDA.w $048E
|09C311| ASL A
|09C312| TAX

|09C313| LDA.b $02
|09C315| ASL A
|09C316| TAY

|09C317| LDA.l $7FDF80,X
|09C31B| ORA.w SpriteSlotToDeathBit,Y
|09C31E| STA.l $7FDF80,X

|09C322| PLX

|09C323| SEP #$30

.exit
|09C325| PLB

|09C326| RTL

;===================================================================================================
; After the initial byte for OAM layering
;===================================================================================================
LoadSingleUnderworldSprite:
|09C327| INY ; Get sprite ID
|09C328| INY

|09C329| LDA.b ($00),Y
|09C32B| TAX

|09C32C| CPX.b #$E4 ; SPRITE E4
|09C32E| BNE .not_key

|09C330| DEY
|09C331| DEY

|09C332| LDA.b ($00),Y

|09C334| INY
|09C335| INY

; Since held keys don't have locations, these values flag what the type is
|09C336| CMP.b #$FE
|09C338| BEQ .small_key

|09C33A| CMP.b #$FD
|09C33C| BNE .not_overlord_or_bigkey

|09C33E| JSR .small_key ; does everything small key does

|09C341| INC.w $0CBA,X ; but also sets this value to 0x02 for big key

|09C344| RTS

;---------------------------------------------------------------------------------------------------

.small_key
|09C345| DEC.b $02 ; held keys shouldn't consume a sprite slot

|09C347| LDX.b $02

|09C349| LDA.b #$01
|09C34B| STA.w $0CBA,X

|09C34E| RTS

;---------------------------------------------------------------------------------------------------

.not_key
|09C34F| DEY

|09C350| LDA.b ($00),Y
|09C352| INY
|09C353| CMP.b #$E0
|09C355| BCC .not_overlord_or_bigkey

|09C357| JSR LoadSingleUnderworldOverlord

|09C35A| DEC.b $02

|09C35C| RTS

;---------------------------------------------------------------------------------------------------

.not_overlord_or_bigkey
; This checks a flag mostly used by bosses to see if the sprite should respawn
|09C35D| LDA.l SpriteData_Deflection,X
|09C361| AND.b #$01
|09C363| BNE .spawn

|09C365| REP #$30

|09C367| PHY
|09C368| PHX

|09C369| LDA.w $048E
|09C36C| ASL A
|09C36D| TAX

|09C36E| LDA.b $02
|09C370| ASL A
|09C371| TAY

|09C372| LDA.l $7FDF80,X
|09C376| AND.w SpriteSlotToDeathBit,Y

|09C379| PLX
|09C37A| PLY

|09C37B| CMP.w #$0000

|09C37E| SEP #$30
|09C380| BEQ .spawn

|09C382| RTS ; if the bit is on, just die

;---------------------------------------------------------------------------------------------------

.spawn
|09C383| LDX.b $02

|09C385| DEY
|09C386| DEY

|09C387| LDA.b #$08 ; set sprite to "prep" mode
|09C389| STA.w $0DD0,X

|09C38C| LDA.b ($00),Y
|09C38E| STA.w $0FB5

|09C391| AND.b #$80
|09C393| ASL A
|09C394| ROL A
|09C395| STA.w $0F20,X

|09C398| LDA.b ($00),Y
|09C39A| ASL A ; x16
|09C39B| ASL A
|09C39C| ASL A
|09C39D| ASL A
|09C39E| STA.w $0D00,X

|09C3A1| LDA.w $0FB1
|09C3A4| ADC.b #$00
|09C3A6| STA.w $0D20,X

|09C3A9| INY

|09C3AA| LDA.b ($00),Y
|09C3AC| STA.w $0FB6

|09C3AF| ASL A ; x16
|09C3B0| ASL A
|09C3B1| ASL A
|09C3B2| ASL A
|09C3B3| STA.w $0D10,X

|09C3B6| LDA.w $0FB0
|09C3B9| ADC.b #$00
|09C3BB| STA.w $0D30,X

|09C3BE| INY

|09C3BF| LDA.b ($00),Y
|09C3C1| STA.w $0E20,X

|09C3C4| STZ.w $0E30,X

|09C3C7| LDA.w $0FB5
|09C3CA| AND.b #$60
|09C3CC| LSR A ; /4
|09C3CD| LSR A
|09C3CE| STA.w $0FB5

|09C3D1| LDA.w $0FB6
|09C3D4| LSR A ; /32
|09C3D5| LSR A
|09C3D6| LSR A
|09C3D7| LSR A
|09C3D8| LSR A
|09C3D9| ORA.w $0FB5
|09C3DC| STA.w $0E30,X

|09C3DF| LDA.b $02
|09C3E1| STA.w $0BC0,X

|09C3E4| STZ.w $0CBA,X

|09C3E7| RTS

;===================================================================================================

LoadSingleUnderworldOverlord:
|09C3E8| LDX.b #$07

.next_slot
|09C3EA| LDA.w $0B00,X
|09C3ED| BEQ .open_slot

|09C3EF| DEX
|09C3F0| BPL .next_slot

|09C3F2| RTS

;---------------------------------------------------------------------------------------------------

.open_slot
|09C3F3| LDA.b ($00),Y
|09C3F5| NOP
|09C3F6| STA.w $0B00,X

|09C3F9| DEY
|09C3FA| DEY

|09C3FB| LDA.b ($00),Y
|09C3FD| AND.b #$80
|09C3FF| ASL A
|09C400| ROL A
|09C401| STA.w $0B40,X

|09C404| LDA.b ($00),Y
|09C406| ASL A
|09C407| ASL A
|09C408| ASL A
|09C409| ASL A
|09C40A| STA.w $0B18,X

|09C40D| LDA.w $0FB1
|09C410| ADC.b #$00
|09C412| STA.w $0B20,X

|09C415| INY

|09C416| LDA.b ($00),Y
|09C418| ASL A
|09C419| ASL A
|09C41A| ASL A
|09C41B| ASL A
|09C41C| STA.w $0B08,X

|09C41F| LDA.w $0FB0
|09C422| ADC.b #$00
|09C424| STA.w $0B10,X

;---------------------------------------------------------------------------------------------------

|09C427| JSR InitSpawnedOverlord

|09C42A| LDA.w $0B00,X
|09C42D| CMP.b #$0A ; OVERLORD 0A
|09C42F| BEQ .position_overlord

|09C431| CMP.b #$0B ; OVERLORD 0B
|09C433| BEQ .position_overlord

|09C435| CMP.b #$03 ; OVERLORD 03
|09C437| BNE .exit

|09C439| LDA.b #$FF
|09C43B| STA.w $0B30,X

|09C43E| LDA.w $0B08,X
|09C441| SEC
|09C442| SBC.b #$08
|09C444| STA.w $0B08,X

.exit
|09C447| RTS

;---------------------------------------------------------------------------------------------------

.position_overlord
|09C448| LDA.b #$A0
|09C44A| STA.w $0B30,X

|09C44D| RTS

;===================================================================================================

ResetAllSprites:
|09C44E| JSL DisableAllEntities

;===================================================================================================

ResetSpriteBuffers:
|09C452| STZ.w $0FDD
|09C455| STZ.w $0FDC
|09C458| STZ.w $0FFD

|09C45B| STZ.w $02F0

|09C45E| STZ.w $0FC6

|09C461| STZ.w $0B6A

|09C464| STZ.w $0FB3

|09C467| LDA.l $7EF3CC
|09C46B| CMP.b #$0D ; FOLLOWER 0D
|09C46D| BEQ .is_super_bomb

|09C46F| LDA.b #$FE
|09C471| STA.w $04B4

.is_super_bomb
|09C474| REP #$10

;---------------------------------------------------------------------------------------------------

|09C476| LDX.w #$0FFF

|09C479| LDA.b #$00

; Resets death flag of every sprite
.next_room
|09C47B| STA.l $7FDF80,X

|09C47F| DEX
|09C480| BPL .next_room

;---------------------------------------------------------------------------------------------------

|09C482| LDX.w #$01FF

; resets overworld death flags
.next_screen
|09C485| STA.l $7FEF80,X

|09C489| DEX
|09C48A| BPL .next_screen

;---------------------------------------------------------------------------------------------------

|09C48C| SEP #$10

|09C48E| LDY.b #$07
|09C490| LDA.b #$FF

; Forget our previous 4 rooms
.next_visited_room
|09C492| STA.w $0B80,Y

|09C495| DEY
|09C496| BPL .next_visited_room

|09C498| RTL

;===================================================================================================

ResetAndReloadOverworldSprites:
|09C499| JSL DisableAllEntities

;===================================================================================================

ReloadOverworldSprites:
|09C49D| JSL ResetSpriteBuffers

|09C4A1| PHB
|09C4A2| PHK
|09C4A3| PLB

|09C4A4| JSR LoadOverworldSprites
|09C4A7| JSR ActivateAllNearbySprites

|09C4AA| PLB

|09C4AB| RTL

;===================================================================================================

LoadOverworldSprites:
|09C4AC| LDA.w $040A
|09C4AF| AND.b #$07
|09C4B1| ASL A

|09C4B2| STZ.w $0FBC
|09C4B5| STA.w $0FBD

|09C4B8| LDA.w $040A
|09C4BB| AND.b #$3F
|09C4BD| LSR A
|09C4BE| LSR A
|09C4BF| AND.b #$0E
|09C4C1| STA.w $0FBF
|09C4C4| STZ.w $0FBE

|09C4C7| LDA.w $040A
|09C4CA| TAY

|09C4CB| LDX.w OverworldScreenSizeForLoading,Y
|09C4CE| STX.w $0FB9
|09C4D1| STZ.w $0FB8

|09C4D4| STX.w $0FBB
|09C4D7| STZ.w $0FBA

|09C4DA| REP #$30

|09C4DC| LDA.w $040A
|09C4DF| ASL A
|09C4E0| TAY

|09C4E1| SEP #$20

|09C4E3| LDA.l $7EF3C5
|09C4E7| CMP.b #$03
|09C4E9| BEQ .aga_dead

|09C4EB| CMP.b #$02
|09C4ED| BEQ .zelda_rescued

;---------------------------------------------------------------------------------------------------

|09C4EF| LDA.w Overworld_SpritePointers.state_0+0,Y
|09C4F2| STA.b $00

|09C4F4| LDA.w Overworld_SpritePointers.state_0+1,Y
|09C4F7| BRA .start_loading

;---------------------------------------------------------------------------------------------------

.aga_dead
|09C4F9| LDA.w Overworld_SpritePointers.state_2+0,Y
|09C4FC| STA.b $00

|09C4FE| LDA.w Overworld_SpritePointers.state_2+1,Y
|09C501| BRA .start_loading

;---------------------------------------------------------------------------------------------------

.zelda_rescued
|09C503| LDA.w Overworld_SpritePointers.state_1+0,Y
|09C506| STA.b $00

|09C508| LDA.w Overworld_SpritePointers.state_1+1,Y

;---------------------------------------------------------------------------------------------------

.start_loading
|09C50B| STA.b $01

|09C50D| LDY.w #$0000

.next_sprite
|09C510| LDA.b ($00),Y
|09C512| CMP.b #$FF
|09C514| BEQ .done_sprites

|09C516| INY
|09C517| INY

|09C518| LDA.b ($00),Y

|09C51A| DEY
|09C51B| DEY

|09C51C| CMP.b #$F4
|09C51E| BNE .not_boulder_spawner

|09C520| INC.w $0FFD

|09C523| INY
|09C524| INY
|09C525| INY

|09C526| BRA .next_sprite

.not_boulder_spawner
|09C528| LDA.b ($00),Y
|09C52A| PHA

|09C52B| LSR A
|09C52C| LSR A
|09C52D| LSR A
|09C52E| LSR A

|09C52F| ASL A
|09C530| ASL A

|09C531| STA.b $02

|09C533| INY

|09C534| LDA.b ($00),Y

|09C536| LSR A ; /16
|09C537| LSR A
|09C538| LSR A
|09C539| LSR A

|09C53A| CLC
|09C53B| ADC.b $02
|09C53D| STA.b $06

|09C53F| PLA

|09C540| ASL A ; x16
|09C541| ASL A
|09C542| ASL A
|09C543| ASL A

|09C544| STA.b $07

|09C546| LDA.b ($00),Y
|09C548| AND.b #$0F
|09C54A| ORA.b $07
|09C54C| STA.b $05

|09C54E| INY

|09C54F| LDA.b ($00),Y

|09C551| LDX.b $05

|09C553| INC A
|09C554| STA.l $7FDF80,X

|09C558| INY

|09C559| BRA .next_sprite

;---------------------------------------------------------------------------------------------------

.done_sprites
|09C55B| SEP #$10

|09C55D| RTS

;===================================================================================================

ActivateAllNearbySprites:
|09C55E| LDA.b $E2
|09C560| PHA

|09C561| LDA.b $E3
|09C563| PHA

|09C564| LDA.w $069F
|09C567| PHA

|09C568| LDA.b #$FF
|09C56A| STA.w $069F

|09C56D| LDY.b #$15

;---------------------------------------------------------------------------------------------------

.next
|09C56F| PHY

|09C570| JSR ActivateSpriteWhenProximal_Horizontal

|09C573| PLY

|09C574| LDA.b $E2
|09C576| CLC
|09C577| ADC.b #$10
|09C579| STA.b $E2

|09C57B| LDA.b $E3
|09C57D| ADC.b #$00
|09C57F| STA.b $E3

|09C581| DEY
|09C582| BPL .next

;---------------------------------------------------------------------------------------------------

|09C584| PLA
|09C585| STA.w $069F

|09C588| PLA
|09C589| STA.b $E3

|09C58B| PLA
|09C58C| STA.b $E2

|09C58E| RTS

;===================================================================================================

ProximalSpriteActivation:
|09C58F| PHB
|09C590| PHK
|09C591| PLB

|09C592| LDA.b $11
|09C594| BEQ .good_submode

|09C596| JSR ActivateSpriteWhenProximal_Horizontal
|09C599| JSR ActivateSpriteWhenProximal_Vertical

|09C59C| PLB

|09C59D| RTL

;---------------------------------------------------------------------------------------------------

.good_submode
|09C59E| LDA.w $0FB7
|09C5A1| AND.b #$01
|09C5A3| BNE .big_screen

|09C5A5| JSR ActivateSpriteWhenProximal_Horizontal

.big_screen
|09C5A8| LDA.w $0FB7
|09C5AB| AND.b #$01
|09C5AD| BEQ .not_big

|09C5AF| JSR ActivateSpriteWhenProximal_Vertical

.not_big
|09C5B2| INC.w $0FB7

|09C5B5| PLB

|09C5B6| RTL

;===================================================================================================

pool ActivateSpriteWhenProximal_Horizontal

.offset_low
|09C5B7| db $10, $F0

.offset_high
|09C5B9| db $01, $FF

endpool

;---------------------------------------------------------------------------------------------------

ActivateSpriteWhenProximal_Horizontal:
|09C5BB| LDY.b #$00

|09C5BD| LDA.w $069F
|09C5C0| BEQ .exit
|09C5C2| BPL .good

|09C5C4| INY

.good
|09C5C5| LDA.b $E2
|09C5C7| CLC
|09C5C8| ADC.w .offset_low,Y
|09C5CB| STA.b $0E

|09C5CD| LDA.b $E3
|09C5CF| ADC.w .offset_high,Y
|09C5D2| STA.b $0F

|09C5D4| LDA.b $E8
|09C5D6| SEC
|09C5D7| SBC.b #$30
|09C5D9| STA.b $0C

|09C5DB| LDA.b $E9
|09C5DD| SBC.b #$00
|09C5DF| STA.b $0D

;---------------------------------------------------------------------------------------------------

|09C5E1| LDX.b #$15

.next
|09C5E3| JSR ProximityMotivatedLoad

|09C5E6| REP #$20

|09C5E8| LDA.b $0C
|09C5EA| CLC
|09C5EB| ADC.w #$0010
|09C5EE| STA.b $0C

|09C5F0| SEP #$20

|09C5F2| DEX
|09C5F3| BPL .next

.exit
|09C5F5| RTS

;===================================================================================================

pool ActivateSpriteWhenProximal_Vertical

.offset_low
|09C5F6| db $10, $F0

.offset_high
|09C5F8| db $01, $FF

endpool

;---------------------------------------------------------------------------------------------------

ActivateSpriteWhenProximal_Vertical:
|09C5FA| LDY.b #$00

|09C5FC| LDA.w $069E
|09C5FF| BEQ .done

|09C601| BPL .good

|09C603| INY

.good
|09C604| LDA.b $E8
|09C606| CLC
|09C607| ADC.w .offset_low,Y
|09C60A| STA.b $0C

|09C60C| LDA.b $E9
|09C60E| ADC.w .offset_high,Y
|09C611| STA.b $0D

|09C613| LDA.b $E2
|09C615| SEC
|09C616| SBC.b #$30
|09C618| STA.b $0E

|09C61A| LDA.b $E3
|09C61C| SBC.b #$00
|09C61E| STA.b $0F

;---------------------------------------------------------------------------------------------------

|09C620| LDX.b #$15

.next
|09C622| JSR ProximityMotivatedLoad

|09C625| REP #$20

|09C627| LDA.b $0E
|09C629| CLC
|09C62A| ADC.w #$0010
|09C62D| STA.b $0E

|09C62F| SEP #$20

|09C631| DEX
|09C632| BPL .next

.done
|09C634| RTS

;===================================================================================================

OverworldScreenSizeForLoading:
|09C635| db $04, $04, $02, $04, $04, $04, $04, $02
|09C63D| db $04, $04, $04, $04, $04, $04, $04, $04
|09C645| db $02, $02, $02, $02, $02, $02, $02, $02
|09C64D| db $04, $04, $02, $04, $04, $02, $04, $04
|09C655| db $04, $04, $02, $04, $04, $02, $04, $04
|09C65D| db $02, $02, $02, $02, $02, $02, $02, $02
|09C665| db $04, $04, $02, $02, $02, $04, $04, $02
|09C66D| db $04, $04, $02, $02, $02, $04, $04, $02

|09C675| db $04, $04, $02, $04, $04, $04, $04, $02
|09C67D| db $04, $04, $04, $04, $04, $04, $04, $04
|09C685| db $02, $02, $02, $02, $02, $02, $02, $02
|09C68D| db $04, $04, $02, $04, $04, $02, $04, $04
|09C695| db $04, $04, $02, $04, $04, $02, $04, $04
|09C69D| db $02, $02, $02, $02, $02, $02, $02, $02
|09C6A5| db $04, $04, $02, $02, $02, $04, $04, $02
|09C6AD| db $04, $04, $02, $02, $02, $04, $04, $02

|09C6B5| db $04, $04, $02, $04, $04, $04, $04, $02
|09C6BD| db $04, $04, $04, $04, $04, $04, $04, $04
|09C6C5| db $02, $02, $02, $02, $02, $02, $02, $02
|09C6CD| db $04, $04, $02, $04, $04, $02, $04, $04
|09C6D5| db $04, $04, $02, $04, $04, $02, $04, $04
|09C6DD| db $02, $02, $02, $02, $02, $02, $02, $02
|09C6E5| db $04, $04, $02, $02, $02, $04, $04, $02
|09C6ED| db $04, $04, $02, $02, $02, $04, $04, $02

;===================================================================================================

ProximityMotivatedLoad:
|09C6F5| REP #$20

|09C6F7| LDA.b $0E
|09C6F9| SEC
|09C6FA| SBC.w $0FBC
|09C6FD| CMP.w $0FB8
|09C700| BCS .exit

|09C702| XBA
|09C703| STA.b $00

|09C705| LDA.b $0C
|09C707| SEC
|09C708| SBC.w $0FBE
|09C70B| CMP.w $0FBA
|09C70E| BCS .exit

;---------------------------------------------------------------------------------------------------

|09C710| SEP #$20

|09C712| XBA
|09C713| ASL A
|09C714| ASL A
|09C715| ORA.b $00
|09C717| STA.b $01

|09C719| LDA.b $0C
|09C71B| AND.b #$F0
|09C71D| STA.b $00

|09C71F| LDA.b $0E
|09C721| LSR A ; /16
|09C722| LSR A
|09C723| LSR A
|09C724| LSR A
|09C725| ORA.b $00
|09C727| STA.b $00

|09C729| PHX

|09C72A| JSR LoadProximaSpriteIfAlive

|09C72D| PLX

.exit
|09C72E| SEP #$20

|09C730| RTS

;===================================================================================================

OverworldAlivenessMasks:
|09C731| db $80, $40, $20, $10, $08, $04, $02, $01

;===================================================================================================

LoadProximaSpriteIfAlive:
|09C739| REP #$20

|09C73B| LDA.b $00
|09C73D| CLC
|09C73E| ADC.w #$7FDF80
|09C741| STA.b $05

|09C743| SEP #$20

|09C745| LDA.b #^$7FDF80
|09C747| STA.b $07

|09C749| LDA.b [$05]
|09C74B| BEQ .alive

|09C74D| REP #$20

|09C74F| LDA.b $00
|09C751| LSR A ; /8
|09C752| LSR A
|09C753| LSR A
|09C754| CLC
|09C755| ADC.w #$7FEF80
|09C758| STA.b $02

|09C75A| SEP #$20

|09C75C| LDA.b #^$7FEF80
|09C75E| STA.b $04

|09C760| LDA.b $00
|09C762| AND.b #$07
|09C764| TAY

|09C765| LDA.b [$02]
|09C767| AND.w OverworldAlivenessMasks,Y
|09C76A| BNE .alive

|09C76C| JSR LoadSingleOverworldSprite

.alive
|09C76F| RTS

;===================================================================================================

LoadSingleOverworldSprite:
|09C770| LDA.b [$05]
|09C772| CMP.b #$F4
|09C774| BCC .load_sprite

|09C776| JSR LoadSingleOverworldOverlord

|09C779| RTS

;---------------------------------------------------------------------------------------------------

; Different sprites are allowed to spawn in different slots
; Sprite IDs are -1 of value
.load_sprite
|09C77A| LDX.b #$04 ; barriers can only spawn in slots 0-4
|09C77C| CMP.b #$58 ; SPRITE 57 +1
|09C77E| BEQ .check_slot

|09C780| LDX.b #$05 ; swamola can only spawn in slots 0-5
|09C782| CMP.b #$D0 ; SPRITE CF +1
|09C784| BEQ .check_slot

; Checked twice - this condition is never satisfied
|09C786| LDX.b #$0D
|09C788| CMP.b #$58 ; SPRITE 57 +1
|09C78A| BEQ .slot14

; Heart containers
; dev typo? There are none on the overworld
|09C78C| CMP.b #$EB ; SPRITE EA +1
|09C78E| BEQ .slot14

; King Zora
|09C790| CMP.b #$53 ; SPRITE 52 +1
|09C792| BEQ .slot14

; Medallion tablets
|09C794| CMP.b #$F3 ; SPRITE F2 +1
|09C796| BNE .check_slot

.slot14
|09C798| LDX.b #$0E

.check_slot
|09C79A| LDA.w $0DD0,X
|09C79D| BEQ .free_slot

|09C79F| LDA.w $0E20,X
|09C7A2| CMP.b #$41 ; SPRITE 41
|09C7A4| BNE .not_even_a_probe

; if it's a probe, we can replace it
|09C7A6| LDA.w $0DB0,X
|09C7A9| BNE .free_slot

.not_even_a_probe
|09C7AB| DEX
|09C7AC| BPL .check_slot

|09C7AE| RTS

;---------------------------------------------------------------------------------------------------

.free_slot
|09C7AF| LDA.b [$02]
|09C7B1| ORA.w OverworldAlivenessMasks,Y
|09C7B4| STA.b [$02]

|09C7B6| PHX

|09C7B7| TXA
|09C7B8| ASL A
|09C7B9| TAX

|09C7BA| REP #$20

|09C7BC| LDA.b $00
|09C7BE| STA.w $0BC0,X

|09C7C1| SEP #$20

|09C7C3| PLX

|09C7C4| LDA.b [$05] ; get sprite ID
|09C7C6| DEC A
|09C7C7| STA.w $0E20,X

|09C7CA| LDA.b #$08
|09C7CC| STA.w $0DD0,X

|09C7CF| LDA.b $00
|09C7D1| ASL A ; x16
|09C7D2| ASL A
|09C7D3| ASL A
|09C7D4| ASL A
|09C7D5| STA.w $0D10,X

|09C7D8| LDA.b $00
|09C7DA| AND.b #$F0
|09C7DC| STA.w $0D00,X

|09C7DF| LDA.b $01
|09C7E1| AND.b #$03
|09C7E3| STA.w $0D30,X

|09C7E6| LDA.b $01
|09C7E8| LSR A
|09C7E9| LSR A
|09C7EA| STA.w $0D20,X

|09C7ED| LDA.w $0D30,X
|09C7F0| CLC
|09C7F1| ADC.w $0FBD
|09C7F4| STA.w $0D30,X

|09C7F7| LDA.w $0D20,X
|09C7FA| CLC
|09C7FB| ADC.w $0FBF
|09C7FE| STA.w $0D20,X

|09C801| STZ.w $0F20,X
|09C804| STZ.w $0E30,X
|09C807| STZ.w $0CBA,X

|09C80A| RTS

;===================================================================================================

LoadSingleOverworldOverlord:
|09C80B| LDX.b #$07

.next_check
|09C80D| LDA.w $0B00,X
|09C810| BEQ .free_slot

|09C812| DEX
|09C813| BPL .next_check

|09C815| RTS

;---------------------------------------------------------------------------------------------------

.free_slot
|09C816| LDA.b [$02]
|09C818| ORA.w OverworldAlivenessMasks,Y
|09C81B| STA.b [$02]

|09C81D| PHX

|09C81E| TXA
|09C81F| ASL A
|09C820| TAX

|09C821| REP #$20

|09C823| LDA.b $00
|09C825| STA.w $0B48,X

|09C828| SEP #$20

|09C82A| PLX

|09C82B| LDA.b [$05]
|09C82D| SEC
|09C82E| SBC.b #$F3
|09C830| STA.w $0B00,X

; why not TAY
|09C833| PHA

|09C834| LDA.b $00
|09C836| ASL A ; x16
|09C837| ASL A
|09C838| ASL A
|09C839| ASL A

|09C83A| PLY
|09C83B| CPY.b #$01
|09C83D| BNE .no_adjustment

|09C83F| CLC
|09C840| ADC.b #$08

.no_adjustment
|09C842| STA.w $0B08,X

|09C845| LDA.b $00
|09C847| AND.b #$F0
|09C849| STA.w $0B18,X

|09C84C| LDA.b $01
|09C84E| AND.b #$03
|09C850| STA.w $0B10,X

|09C853| LDA.b $01
|09C855| LSR A
|09C856| LSR A
|09C857| STA.w $0B20,X

|09C85A| LDA.w $0B10,X
|09C85D| CLC
|09C85E| ADC.w $0FBD
|09C861| STA.w $0B10,X

|09C864| LDA.w $0B20,X
|09C867| CLC
|09C868| ADC.w $0FBF
|09C86B| STA.w $0B20,X

|09C86E| STZ.w $0B40,X

;===================================================================================================

InitSpawnedOverlord:
|09C871| LDA.w $040A
|09C874| STA.w $0CCA,X

|09C877| STZ.w $0B30,X
|09C87A| STZ.w $0B28,X
|09C87D| STZ.w $0B38,X

|09C880| RTS

;===================================================================================================
; Each sprite has 3 bytes of data
; The list is terminated when byte 0 is 0xFF
;
; db Y, X, I
;   Y and X are coordinates from the top-left of the screen
;   X and Y correspond to map16 positions, so multiply values by 16
;
;   I is the sprite ID
;   IDs of 0xF3 or greater correspond to an overlord with of ID-0xF3
;===================================================================================================
Overworld_SpritePointers:
.state_0
|09C881| dw Overworld_Sprites_EMPTY        ; 00 - Lost Woods
|09C883| dw Overworld_Sprites_EMPTY        ; 01 - Lost Woods
|09C885| dw Overworld_Sprites_EMPTY        ; 02 - Lumberjacks
|09C887| dw Overworld_Sprites_EMPTY        ; 03 - West Death Mountain
|09C889| dw Overworld_Sprites_EMPTY        ; 04 - West Death Mountain
|09C88B| dw Overworld_Sprites_EMPTY        ; 05 - East Death Mountain
|09C88D| dw Overworld_Sprites_EMPTY        ; 06 - East Death Mountain
|09C88F| dw Overworld_Sprites_EMPTY        ; 07 - Turtle Rock Portalway
|09C891| dw Overworld_Sprites_EMPTY        ; 08 - Lost Woods
|09C893| dw Overworld_Sprites_EMPTY        ; 09 - Lost Woods
|09C895| dw Overworld_Sprites_EMPTY        ; 0A - Death Mountain Foot
|09C897| dw Overworld_Sprites_EMPTY        ; 0B - West Death Mountain
|09C899| dw Overworld_Sprites_EMPTY        ; 0C - West Death Mountain
|09C89B| dw Overworld_Sprites_EMPTY        ; 0D - East Death Mountain
|09C89D| dw Overworld_Sprites_EMPTY        ; 0E - East Death Mountain
|09C89F| dw Overworld_Sprites_EMPTY        ; 0F - Waterfall of Wishing
|09C8A1| dw Overworld_Sprites_EMPTY        ; 10 - Lost Woods Alcove
|09C8A3| dw Overworld_Sprites_EMPTY        ; 11 - North of Kakariko
|09C8A5| dw Overworld_Sprites_EMPTY        ; 12 - Northwest Pond
|09C8A7| dw Overworld_Sprites_EMPTY        ; 13 - Sanctuary
|09C8A9| dw Overworld_Sprites_EMPTY        ; 14 - Graveyard
|09C8AB| dw Overworld_Sprites_EMPTY        ; 15 - Hylia River Bend
|09C8AD| dw Overworld_Sprites_EMPTY        ; 16 - Potion Shop
|09C8AF| dw Overworld_Sprites_EMPTY        ; 17 - Octorok Pit
|09C8B1| dw Overworld_Sprites_EMPTY        ; 18 - Kakariko Village
|09C8B3| dw Overworld_Sprites_EMPTY        ; 19 - Kakariko Village
|09C8B5| dw Overworld_Sprites_EMPTY        ; 1A - Kakariko Orchard
|09C8B7| dw Overworld_Sprites_Screen1B_0   ; 1B - Hyrule Castle
|09C8B9| dw Overworld_Sprites_EMPTY        ; 1C - Hyrule Castle
|09C8BB| dw Overworld_Sprites_Screen1D_0   ; 1D - Hylia River Peninsula
|09C8BD| dw Overworld_Sprites_EMPTY        ; 1E - Eastern Ruins
|09C8BF| dw Overworld_Sprites_EMPTY        ; 1F - Eastern Ruins
|09C8C1| dw Overworld_Sprites_EMPTY        ; 20 - Kakariko Village
|09C8C3| dw Overworld_Sprites_EMPTY        ; 21 - Kakariko Village
|09C8C5| dw Overworld_Sprites_EMPTY        ; 22 - Smith's House
|09C8C7| dw Overworld_Sprites_EMPTY        ; 23 - Hyrule Castle
|09C8C9| dw Overworld_Sprites_EMPTY        ; 24 - Hyrule Castle
|09C8CB| dw Overworld_Sprites_EMPTY        ; 25 - Boulder Field
|09C8CD| dw Overworld_Sprites_EMPTY        ; 26 - Eastern Ruins
|09C8CF| dw Overworld_Sprites_EMPTY        ; 27 - Eastern Ruins
|09C8D1| dw Overworld_Sprites_EMPTY        ; 28 - Racing Game
|09C8D3| dw Overworld_Sprites_EMPTY        ; 29 - South of Kakariko
|09C8D5| dw Overworld_Sprites_EMPTY        ; 2A - Haunted Grove
|09C8D7| dw Overworld_Sprites_Screen2B_0   ; 2B - West of Link's House
|09C8D9| dw Overworld_Sprites_Screen2C_0   ; 2C - Link's House
|09C8DB| dw Overworld_Sprites_EMPTY        ; 2D - Eastern Bridge
|09C8DD| dw Overworld_Sprites_EMPTY        ; 2E - Lake Hylia River Bend
|09C8DF| dw Overworld_Sprites_EMPTY        ; 2F - Eastern Portalway
|09C8E1| dw Overworld_Sprites_EMPTY        ; 30 - Desert
|09C8E3| dw Overworld_Sprites_EMPTY        ; 31 - Desert
|09C8E5| dw Overworld_Sprites_Screen32_0   ; 32 - Haunted Grove Entrance
|09C8E7| dw Overworld_Sprites_EMPTY        ; 33 - Marshlands Portalway
|09C8E9| dw Overworld_Sprites_EMPTY        ; 34 - Marshlands Totems
|09C8EB| dw Overworld_Sprites_EMPTY        ; 35 - Lake Hylia
|09C8ED| dw Overworld_Sprites_EMPTY        ; 36 - Lake Hylia
|09C8EF| dw Overworld_Sprites_EMPTY        ; 37 - Lake Hylia River End
|09C8F1| dw Overworld_Sprites_EMPTY        ; 38 - Desert
|09C8F3| dw Overworld_Sprites_EMPTY        ; 39 - Desert
|09C8F5| dw Overworld_Sprites_EMPTY        ; 3A - Desert Pass
|09C8F7| dw Overworld_Sprites_EMPTY        ; 3B - Marshlands Dam Entrance
|09C8F9| dw Overworld_Sprites_EMPTY        ; 3C - Marshlands Ravine
|09C8FB| dw Overworld_Sprites_EMPTY        ; 3D - Lake Hylia
|09C8FD| dw Overworld_Sprites_EMPTY        ; 3E - Lake Hylia
|09C8FF| dw Overworld_Sprites_EMPTY        ; 3F - Lake Hylia Waterfall

;---------------------------------------------------------------------------------------------------

.state_1
|09C901| dw Overworld_Sprites_Screen00_1   ; 00 - Lost Woods
|09C903| dw Overworld_Sprites_EMPTY        ; 01 - Lost Woods
|09C905| dw Overworld_Sprites_Screen02_1   ; 02 - Lumberjacks
|09C907| dw Overworld_Sprites_Screen03_1   ; 03 - West Death Mountain
|09C909| dw Overworld_Sprites_EMPTY        ; 04 - West Death Mountain
|09C90B| dw Overworld_Sprites_Screen05_1   ; 05 - East Death Mountain
|09C90D| dw Overworld_Sprites_EMPTY        ; 06 - East Death Mountain
|09C90F| dw Overworld_Sprites_Screen07_1   ; 07 - Turtle Rock Portalway
|09C911| dw Overworld_Sprites_EMPTY        ; 08 - Lost Woods
|09C913| dw Overworld_Sprites_EMPTY        ; 09 - Lost Woods
|09C915| dw Overworld_Sprites_Screen0A_1   ; 0A - Death Mountain Foot
|09C917| dw Overworld_Sprites_EMPTY        ; 0B - West Death Mountain
|09C919| dw Overworld_Sprites_EMPTY        ; 0C - West Death Mountain
|09C91B| dw Overworld_Sprites_EMPTY        ; 0D - East Death Mountain
|09C91D| dw Overworld_Sprites_EMPTY        ; 0E - East Death Mountain
|09C91F| dw Overworld_Sprites_Screen0F_1   ; 0F - Waterfall of Wishing
|09C921| dw Overworld_Sprites_Screen10_1   ; 10 - Lost Woods Alcove
|09C923| dw Overworld_Sprites_Screen11_1   ; 11 - North of Kakariko
|09C925| dw Overworld_Sprites_Screen12_1   ; 12 - Northwest Pond
|09C927| dw Overworld_Sprites_Screen13_1   ; 13 - Sanctuary
|09C929| dw Overworld_Sprites_Screen14_1   ; 14 - Graveyard
|09C92B| dw Overworld_Sprites_Screen15_1   ; 15 - Hylia River Bend
|09C92D| dw Overworld_Sprites_Screen16_1   ; 16 - Potion Shop
|09C92F| dw Overworld_Sprites_Screen17_1   ; 17 - Octorok Pit
|09C931| dw Overworld_Sprites_Screen18_1   ; 18 - Kakariko Village
|09C933| dw Overworld_Sprites_EMPTY        ; 19 - Kakariko Village
|09C935| dw Overworld_Sprites_Screen1A_1   ; 1A - Kakariko Orchard
|09C937| dw Overworld_Sprites_Screen1B_1   ; 1B - Hyrule Castle
|09C939| dw Overworld_Sprites_EMPTY        ; 1C - Hyrule Castle
|09C93B| dw Overworld_Sprites_Screen1D_1   ; 1D - Hylia River Peninsula
|09C93D| dw Overworld_Sprites_Screen1E_1   ; 1E - Eastern Ruins
|09C93F| dw Overworld_Sprites_EMPTY        ; 1F - Eastern Ruins
|09C941| dw Overworld_Sprites_EMPTY        ; 20 - Kakariko Village
|09C943| dw Overworld_Sprites_EMPTY        ; 21 - Kakariko Village
|09C945| dw Overworld_Sprites_Screen22_1   ; 22 - Smith's House
|09C947| dw Overworld_Sprites_EMPTY        ; 23 - Hyrule Castle
|09C949| dw Overworld_Sprites_EMPTY        ; 24 - Hyrule Castle
|09C94B| dw Overworld_Sprites_Screen25_1   ; 25 - Boulder Field
|09C94D| dw Overworld_Sprites_EMPTY        ; 26 - Eastern Ruins
|09C94F| dw Overworld_Sprites_EMPTY        ; 27 - Eastern Ruins
|09C951| dw Overworld_Sprites_Screen28_1   ; 28 - Racing Game
|09C953| dw Overworld_Sprites_EMPTY        ; 29 - South of Kakariko
|09C955| dw Overworld_Sprites_Screen2A_1   ; 2A - Haunted Grove
|09C957| dw Overworld_Sprites_Screen2B_1   ; 2B - West of Link's House
|09C959| dw Overworld_Sprites_Screen2C_1   ; 2C - Link's House
|09C95B| dw Overworld_Sprites_Screen2D_1   ; 2D - Eastern Bridge
|09C95D| dw Overworld_Sprites_Screen2E_1   ; 2E - Lake Hylia River Bend
|09C95F| dw Overworld_Sprites_Screen2F_1   ; 2F - Eastern Portalway
|09C961| dw Overworld_Sprites_Screen30_1   ; 30 - Desert
|09C963| dw Overworld_Sprites_EMPTY        ; 31 - Desert
|09C965| dw Overworld_Sprites_Screen32_1   ; 32 - Haunted Grove Entrance
|09C967| dw Overworld_Sprites_Screen33_1   ; 33 - Marshlands Portalway
|09C969| dw Overworld_Sprites_Screen34_1   ; 34 - Marshlands Totems
|09C96B| dw Overworld_Sprites_Screen35_1   ; 35 - Lake Hylia
|09C96D| dw Overworld_Sprites_EMPTY        ; 36 - Lake Hylia
|09C96F| dw Overworld_Sprites_Screen37_1   ; 37 - Lake Hylia River End
|09C971| dw Overworld_Sprites_EMPTY        ; 38 - Desert
|09C973| dw Overworld_Sprites_EMPTY        ; 39 - Desert
|09C975| dw Overworld_Sprites_Screen3A_1   ; 3A - Desert Pass
|09C977| dw Overworld_Sprites_Screen3B_1   ; 3B - Marshlands Dam Entrance
|09C979| dw Overworld_Sprites_Screen3C_1   ; 3C - Marshlands Ravine
|09C97B| dw Overworld_Sprites_EMPTY        ; 3D - Lake Hylia
|09C97D| dw Overworld_Sprites_EMPTY        ; 3E - Lake Hylia
|09C97F| dw Overworld_Sprites_Screen3F_1   ; 3F - Lake Hylia Waterfall
|09C981| dw Overworld_Sprites_Screen40     ; 40 - Skull Woods
|09C983| dw Overworld_Sprites_Screen42     ; 41 - Skull Woods
|09C985| dw Overworld_Sprites_Screen42     ; 42 - Dark Lumberjacks
|09C987| dw Overworld_Sprites_Screen43     ; 43 - West Dark Death Mountain
|09C989| dw Overworld_Sprites_Screen45     ; 44 - West Dark Death Mountain
|09C98B| dw Overworld_Sprites_Screen45     ; 45 - East Dark Death Mountain
|09C98D| dw Overworld_Sprites_EMPTY        ; 46 - East Dark Death Mountain
|09C98F| dw Overworld_Sprites_Screen47     ; 47 - Turtle Rock
|09C991| dw Overworld_Sprites_EMPTY        ; 48 - Skull Woods
|09C993| dw Overworld_Sprites_EMPTY        ; 49 - Skull Woods
|09C995| dw Overworld_Sprites_Screen4A     ; 4A - Bumper Ledge
|09C997| dw Overworld_Sprites_EMPTY        ; 4B - West Dark Death Mountain
|09C999| dw Overworld_Sprites_EMPTY        ; 4C - West Dark Death Mountain
|09C99B| dw Overworld_Sprites_EMPTY        ; 4D - East Dark Death Mountain
|09C99D| dw Overworld_Sprites_EMPTY        ; 4E - East Dark Death Mountain
|09C99F| dw Overworld_Sprites_Screen4F     ; 4F - Lake of Ill Omen
|09C9A1| dw Overworld_Sprites_Screen50     ; 50 - Skull Woods Alcove
|09C9A3| dw Overworld_Sprites_Screen51     ; 51 - North of Outcasts
|09C9A5| dw Overworld_Sprites_Screen52     ; 52 - Dark Northwest Pond
|09C9A7| dw Overworld_Sprites_Screen53     ; 53 - Dark Sanctuary
|09C9A9| dw Overworld_Sprites_Screen54     ; 54 - Dark Graveyard
|09C9AB| dw Overworld_Sprites_Screen55     ; 55 - Dark Hylia River Bend
|09C9AD| dw Overworld_Sprites_Screen56     ; 56 - Dark Northeast Shop
|09C9AF| dw Overworld_Sprites_Screen57     ; 57 - Dark Octorok Pit
|09C9B1| dw Overworld_Sprites_Screen58     ; 58 - Village of Outcasts
|09C9B3| dw Overworld_Sprites_EMPTY        ; 59 - Village of Outcasts
|09C9B5| dw Overworld_Sprites_Screen5A     ; 5A - Outcasts Orchard
|09C9B7| dw Overworld_Sprites_Screen5B     ; 5B - Pyramid of Power
|09C9B9| dw Overworld_Sprites_EMPTY        ; 5C - Pyramid of Power
|09C9BB| dw Overworld_Sprites_Screen5D     ; 5D - Dark Hylia River Peninsula
|09C9BD| dw Overworld_Sprites_Screen5E     ; 5E - Palace of Darkness Maze
|09C9BF| dw Overworld_Sprites_EMPTY        ; 5F - Palace of Darkness Maze
|09C9C1| dw Overworld_Sprites_EMPTY        ; 60 - Village of Outcasts
|09C9C3| dw Overworld_Sprites_EMPTY        ; 61 - Village of Outcasts
|09C9C5| dw Overworld_Sprites_Screen62     ; 62 - Stake Puzzle
|09C9C7| dw Overworld_Sprites_EMPTY        ; 63 - Pyramid of Power
|09C9C9| dw Overworld_Sprites_EMPTY        ; 64 - Pyramid of Power
|09C9CB| dw Overworld_Sprites_Screen65     ; 65 - Boulder Field
|09C9CD| dw Overworld_Sprites_EMPTY        ; 66 - Palace of Darkness Maze
|09C9CF| dw Overworld_Sprites_EMPTY        ; 67 - Palace of Darkness Maze
|09C9D1| dw Overworld_Sprites_Screen68     ; 68 - Digging Game
|09C9D3| dw Overworld_Sprites_Screen69     ; 69 - South of Outcasts
|09C9D5| dw Overworld_Sprites_Screen6A     ; 6A - Stumpy Grove
|09C9D7| dw Overworld_Sprites_Screen6B     ; 6B - West of Bomb Shop
|09C9D9| dw Overworld_Sprites_Screen6C     ; 6C - Bomb Shop
|09C9DB| dw Overworld_Sprites_Screen6D     ; 6D - Hammer Bridge
|09C9DD| dw Overworld_Sprites_Screen6E     ; 6E - Dark Lake Hylia River Bend
|09C9DF| dw Overworld_Sprites_Screen6F     ; 6F - East Dark World Portalway
|09C9E1| dw Overworld_Sprites_Screen70     ; 70 - Misery Mire
|09C9E3| dw Overworld_Sprites_Screen72     ; 71 - Misery Mire
|09C9E5| dw Overworld_Sprites_Screen72     ; 72 - Stumpy Grove Entrance
|09C9E7| dw Overworld_Sprites_Screen73     ; 73 - Swamplands Portalway
|09C9E9| dw Overworld_Sprites_Screen74     ; 74 - Swamplands Totems
|09C9EB| dw Overworld_Sprites_Screen75     ; 75 - Dark Lake Hylia
|09C9ED| dw Overworld_Sprites_Screen77     ; 76 - Dark Lake Hylia
|09C9EF| dw Overworld_Sprites_Screen77     ; 77 - Dark Lake Hylia River End
|09C9F1| dw Overworld_Sprites_EMPTY        ; 78 - Misery Mire
|09C9F3| dw Overworld_Sprites_EMPTY        ; 79 - Misery Mire
|09C9F5| dw Overworld_Sprites_Screen7A     ; 7A - West of Swamplands
|09C9F7| dw Overworld_Sprites_Screen7B     ; 7B - Swamplands Palace Entrance
|09C9F9| dw Overworld_Sprites_Screen7C     ; 7C - Swamplands Ravine
|09C9FB| dw Overworld_Sprites_EMPTY        ; 7D - Dark Lake Hylia
|09C9FD| dw Overworld_Sprites_EMPTY        ; 7E - Dark Lake Hylia
|09C9FF| dw Overworld_Sprites_Screen7F     ; 7F - Dark Lake Hylia Waterfall
|09CA01| dw Overworld_Sprites_Screen80     ; 80 - Master Sword Pedestal
|09CA03| dw Overworld_Sprites_Screen81     ; 81 - Zora's Domain
|09CA05| dw Overworld_Sprites_EMPTY        ;
|09CA07| dw Overworld_Sprites_EMPTY        ;
|09CA09| dw Overworld_Sprites_EMPTY        ;
|09CA0B| dw Overworld_Sprites_EMPTY        ;
|09CA0D| dw Overworld_Sprites_EMPTY        ;
|09CA0F| dw Overworld_Sprites_EMPTY        ;
|09CA11| dw Overworld_Sprites_EMPTY        ;
|09CA13| dw Overworld_Sprites_EMPTY        ;
|09CA15| dw Overworld_Sprites_EMPTY        ;
|09CA17| dw Overworld_Sprites_EMPTY        ;
|09CA19| dw Overworld_Sprites_EMPTY        ;
|09CA1B| dw Overworld_Sprites_EMPTY        ;
|09CA1D| dw Overworld_Sprites_EMPTY        ;
|09CA1F| dw Overworld_Sprites_EMPTY        ;

;---------------------------------------------------------------------------------------------------

.state_2
|09CA21| dw Overworld_Sprites_Screen00_2   ; 00 - Lost Woods
|09CA23| dw Overworld_Sprites_EMPTY        ; 01 - Lost Woods
|09CA25| dw Overworld_Sprites_Screen02_2   ; 02 - Lumberjacks
|09CA27| dw Overworld_Sprites_Screen03_2   ; 03 - West Death Mountain
|09CA29| dw Overworld_Sprites_EMPTY        ; 04 - West Death Mountain
|09CA2B| dw Overworld_Sprites_Screen05_2   ; 05 - East Death Mountain
|09CA2D| dw Overworld_Sprites_EMPTY        ; 06 - East Death Mountain
|09CA2F| dw Overworld_Sprites_Screen07_2   ; 07 - Turtle Rock Portalway
|09CA31| dw Overworld_Sprites_EMPTY        ; 08 - Lost Woods
|09CA33| dw Overworld_Sprites_EMPTY        ; 09 - Lost Woods
|09CA35| dw Overworld_Sprites_Screen0A_2   ; 0A - Death Mountain Foot
|09CA37| dw Overworld_Sprites_EMPTY        ; 0B - West Death Mountain
|09CA39| dw Overworld_Sprites_EMPTY        ; 0C - West Death Mountain
|09CA3B| dw Overworld_Sprites_EMPTY        ; 0D - East Death Mountain
|09CA3D| dw Overworld_Sprites_EMPTY        ; 0E - East Death Mountain
|09CA3F| dw Overworld_Sprites_Screen0F_2   ; 0F - Waterfall of Wishing
|09CA41| dw Overworld_Sprites_Screen10_2   ; 10 - Lost Woods Alcove
|09CA43| dw Overworld_Sprites_Screen11_2   ; 11 - North of Kakariko
|09CA45| dw Overworld_Sprites_Screen12_2   ; 12 - Northwest Pond
|09CA47| dw Overworld_Sprites_Screen13_2   ; 13 - Sanctuary
|09CA49| dw Overworld_Sprites_Screen14_2   ; 14 - Graveyard
|09CA4B| dw Overworld_Sprites_Screen15_2   ; 15 - Hylia River Bend
|09CA4D| dw Overworld_Sprites_Screen16_2   ; 16 - Potion Shop
|09CA4F| dw Overworld_Sprites_Screen17_2   ; 17 - Octorok Pit
|09CA51| dw Overworld_Sprites_Screen18_2   ; 18 - Kakariko Village
|09CA53| dw Overworld_Sprites_EMPTY        ; 19 - Kakariko Village
|09CA55| dw Overworld_Sprites_Screen1A_2   ; 1A - Kakariko Orchard
|09CA57| dw Overworld_Sprites_Screen1B_2   ; 1B - Hyrule Castle
|09CA59| dw Overworld_Sprites_EMPTY        ; 1C - Hyrule Castle
|09CA5B| dw Overworld_Sprites_Screen1D_2   ; 1D - Hylia River Peninsula
|09CA5D| dw Overworld_Sprites_Screen1E_2   ; 1E - Eastern Ruins
|09CA5F| dw Overworld_Sprites_EMPTY        ; 1F - Eastern Ruins
|09CA61| dw Overworld_Sprites_EMPTY        ; 20 - Kakariko Village
|09CA63| dw Overworld_Sprites_EMPTY        ; 21 - Kakariko Village
|09CA65| dw Overworld_Sprites_Screen22_2   ; 22 - Smith's House
|09CA67| dw Overworld_Sprites_EMPTY        ; 23 - Hyrule Castle
|09CA69| dw Overworld_Sprites_EMPTY        ; 24 - Hyrule Castle
|09CA6B| dw Overworld_Sprites_Screen25_2   ; 25 - Boulder Field
|09CA6D| dw Overworld_Sprites_EMPTY        ; 26 - Eastern Ruins
|09CA6F| dw Overworld_Sprites_EMPTY        ; 27 - Eastern Ruins
|09CA71| dw Overworld_Sprites_Screen28_2   ; 28 - Racing Game
|09CA73| dw Overworld_Sprites_Screen29_2   ; 29 - South of Kakariko
|09CA75| dw Overworld_Sprites_Screen2A_2   ; 2A - Haunted Grove
|09CA77| dw Overworld_Sprites_Screen2B_2   ; 2B - West of Link's House
|09CA79| dw Overworld_Sprites_Screen2C_2   ; 2C - Link's House
|09CA7B| dw Overworld_Sprites_Screen2D_2   ; 2D - Eastern Bridge
|09CA7D| dw Overworld_Sprites_Screen2E_2   ; 2E - Lake Hylia River Bend
|09CA7F| dw Overworld_Sprites_Screen2F_2   ; 2F - Eastern Portalway
|09CA81| dw Overworld_Sprites_Screen30_2   ; 30 - Desert
|09CA83| dw Overworld_Sprites_EMPTY        ; 31 - Desert
|09CA85| dw Overworld_Sprites_Screen32_2   ; 32 - Haunted Grove Entrance
|09CA87| dw Overworld_Sprites_Screen33_2   ; 33 - Marshlands Portalway
|09CA89| dw Overworld_Sprites_Screen34_2   ; 34 - Marshlands Totems
|09CA8B| dw Overworld_Sprites_Screen35_2   ; 35 - Lake Hylia
|09CA8D| dw Overworld_Sprites_Screen37_2   ; 36 - Lake Hylia
|09CA8F| dw Overworld_Sprites_Screen37_2   ; 37 - Lake Hylia River End
|09CA91| dw Overworld_Sprites_Screen3A_2   ; 38 - Desert
|09CA93| dw Overworld_Sprites_Screen3A_2   ; 39 - Desert
|09CA95| dw Overworld_Sprites_Screen3A_2   ; 3A - Desert Pass
|09CA97| dw Overworld_Sprites_Screen3B_2   ; 3B - Marshlands Dam Entrance
|09CA99| dw Overworld_Sprites_Screen3C_2   ; 3C - Marshlands Ravine
|09CA9B| dw Overworld_Sprites_Screen3F_2   ; 3D - Lake Hylia
|09CA9D| dw Overworld_Sprites_Screen3F_2   ; 3E - Lake Hylia
|09CA9F| dw Overworld_Sprites_Screen3F_2   ; 3F - Lake Hylia Waterfall
|09CAA1| dw Overworld_Sprites_Screen40     ; 40 - Skull Woods
|09CAA3| dw Overworld_Sprites_Screen42     ; 41 - Skull Woods
|09CAA5| dw Overworld_Sprites_Screen42     ; 42 - Dark Lumberjacks
|09CAA7| dw Overworld_Sprites_Screen43     ; 43 - West Dark Death Mountain
|09CAA9| dw Overworld_Sprites_Screen45     ; 44 - West Dark Death Mountain
|09CAAB| dw Overworld_Sprites_Screen45     ; 45 - East Dark Death Mountain
|09CAAD| dw Overworld_Sprites_EMPTY        ; 46 - East Dark Death Mountain
|09CAAF| dw Overworld_Sprites_Screen47     ; 47 - Turtle Rock
|09CAB1| dw Overworld_Sprites_EMPTY        ; 48 - Skull Woods
|09CAB3| dw Overworld_Sprites_EMPTY        ; 49 - Skull Woods
|09CAB5| dw Overworld_Sprites_Screen4A     ; 4A - Bumper Ledge
|09CAB7| dw Overworld_Sprites_EMPTY        ; 4B - West Dark Death Mountain
|09CAB9| dw Overworld_Sprites_EMPTY        ; 4C - West Dark Death Mountain
|09CABB| dw Overworld_Sprites_EMPTY        ; 4D - East Dark Death Mountain
|09CABD| dw Overworld_Sprites_EMPTY        ; 4E - East Dark Death Mountain
|09CABF| dw Overworld_Sprites_Screen4F     ; 4F - Lake of Ill Omen
|09CAC1| dw Overworld_Sprites_Screen50     ; 50 - Skull Woods Alcove
|09CAC3| dw Overworld_Sprites_Screen51     ; 51 - North of Outcasts
|09CAC5| dw Overworld_Sprites_Screen52     ; 52 - Dark Northwest Pond
|09CAC7| dw Overworld_Sprites_Screen53     ; 53 - Dark Sanctuary
|09CAC9| dw Overworld_Sprites_Screen54     ; 54 - Dark Graveyard
|09CACB| dw Overworld_Sprites_Screen55     ; 55 - Dark Hylia River Bend
|09CACD| dw Overworld_Sprites_Screen56     ; 56 - Dark Northeast Shop
|09CACF| dw Overworld_Sprites_Screen57     ; 57 - Dark Octorok Pit
|09CAD1| dw Overworld_Sprites_Screen58     ; 58 - Village of Outcasts
|09CAD3| dw Overworld_Sprites_EMPTY        ; 59 - Village of Outcasts
|09CAD5| dw Overworld_Sprites_Screen5A     ; 5A - Outcasts Orchard
|09CAD7| dw Overworld_Sprites_Screen5B     ; 5B - Pyramid of Power
|09CAD9| dw Overworld_Sprites_EMPTY        ; 5C - Pyramid of Power
|09CADB| dw Overworld_Sprites_Screen5D     ; 5D - Dark Hylia River Peninsula
|09CADD| dw Overworld_Sprites_Screen5E     ; 5E - Palace of Darkness Maze
|09CADF| dw Overworld_Sprites_EMPTY        ; 5F - Palace of Darkness Maze
|09CAE1| dw Overworld_Sprites_EMPTY        ; 60 - Village of Outcasts
|09CAE3| dw Overworld_Sprites_EMPTY        ; 61 - Village of Outcasts
|09CAE5| dw Overworld_Sprites_Screen62     ; 62 - Stake Puzzle
|09CAE7| dw Overworld_Sprites_EMPTY        ; 63 - Pyramid of Power
|09CAE9| dw Overworld_Sprites_EMPTY        ; 64 - Pyramid of Power
|09CAEB| dw Overworld_Sprites_Screen65     ; 65 - Boulder Field
|09CAED| dw Overworld_Sprites_EMPTY        ; 66 - Palace of Darkness Maze
|09CAEF| dw Overworld_Sprites_EMPTY        ; 67 - Palace of Darkness Maze
|09CAF1| dw Overworld_Sprites_Screen68     ; 68 - Digging Game
|09CAF3| dw Overworld_Sprites_Screen69     ; 69 - South of Outcasts
|09CAF5| dw Overworld_Sprites_Screen6A     ; 6A - Stumpy Grove
|09CAF7| dw Overworld_Sprites_Screen6B     ; 6B - West of Bomb Shop
|09CAF9| dw Overworld_Sprites_Screen6C     ; 6C - Bomb Shop
|09CAFB| dw Overworld_Sprites_Screen6D     ; 6D - Hammer Bridge
|09CAFD| dw Overworld_Sprites_Screen6E     ; 6E - Dark Lake Hylia River Bend
|09CAFF| dw Overworld_Sprites_Screen6F     ; 6F - East Dark World Portalway
|09CB01| dw Overworld_Sprites_Screen70     ; 70 - Misery Mire
|09CB03| dw Overworld_Sprites_Screen72     ; 71 - Misery Mire
|09CB05| dw Overworld_Sprites_Screen72     ; 72 - Stumpy Grove Entrance
|09CB07| dw Overworld_Sprites_Screen73     ; 73 - Swamplands Portalway
|09CB09| dw Overworld_Sprites_Screen74     ; 74 - Swamplands Totems
|09CB0B| dw Overworld_Sprites_Screen75     ; 75 - Dark Lake Hylia
|09CB0D| dw Overworld_Sprites_Screen77     ; 76 - Dark Lake Hylia
|09CB0F| dw Overworld_Sprites_Screen77     ; 77 - Dark Lake Hylia River End
|09CB11| dw Overworld_Sprites_EMPTY        ; 78 - Misery Mire
|09CB13| dw Overworld_Sprites_EMPTY        ; 79 - Misery Mire
|09CB15| dw Overworld_Sprites_Screen7A     ; 7A - West of Swamplands
|09CB17| dw Overworld_Sprites_Screen7B     ; 7B - Swamplands Palace Entrance
|09CB19| dw Overworld_Sprites_Screen7C     ; 7C - Swamplands Ravine
|09CB1B| dw Overworld_Sprites_EMPTY        ; 7D - Dark Lake Hylia
|09CB1D| dw Overworld_Sprites_EMPTY        ; 7E - Dark Lake Hylia
|09CB1F| dw Overworld_Sprites_Screen7F     ; 7F - Dark Lake Hylia Waterfall
|09CB21| dw Overworld_Sprites_Screen80     ; 80 - Master Sword Pedestal
|09CB23| dw Overworld_Sprites_Screen81     ; 81 - Zora's Domain
|09CB25| dw Overworld_Sprites_EMPTY        ;
|09CB27| dw Overworld_Sprites_EMPTY        ;
|09CB29| dw Overworld_Sprites_EMPTY        ;
|09CB2B| dw Overworld_Sprites_EMPTY        ;
|09CB2D| dw Overworld_Sprites_EMPTY        ;
|09CB2F| dw Overworld_Sprites_EMPTY        ;
|09CB31| dw Overworld_Sprites_EMPTY        ;
|09CB33| dw Overworld_Sprites_EMPTY        ;
|09CB35| dw Overworld_Sprites_EMPTY        ;
|09CB37| dw Overworld_Sprites_EMPTY        ;
|09CB39| dw Overworld_Sprites_EMPTY        ;
|09CB3B| dw Overworld_Sprites_EMPTY        ;
|09CB3D| dw Overworld_Sprites_EMPTY        ;
|09CB3F| dw Overworld_Sprites_EMPTY        ;

;===================================================================================================

Overworld_Sprites_EMPTY:
|09CB41| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen1B_0:
|09CB42| db $06, $1F, $40 ; SPRITE 40   | xy: { 0x1F0, 0x060 }
|09CB45| db $12, $01, $3F ; SPRITE 3F   | xy: { 0x010, 0x120 }
|09CB48| db $14, $01, $3F ; SPRITE 3F   | xy: { 0x010, 0x140 }
|09CB4B| db $13, $1F, $42 ; SPRITE 42   | xy: { 0x1F0, 0x130 }
|09CB4E| db $1A, $1F, $4B ; SPRITE 4B   | xy: { 0x1F0, 0x1A0 }
|09CB51| db $1A, $20, $4B ; SPRITE 4B   | xy: { 0x200, 0x1A0 }
|09CB54| db $25, $2D, $3F ; SPRITE 3F   | xy: { 0x2D0, 0x250 }
|09CB57| db $29, $20, $3F ; SPRITE 3F   | xy: { 0x200, 0x290 }
|09CB5A| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen1D_0:
|09CB5B| db $06, $0B, $AC ; SPRITE AC   | xy: { 0x0B0, 0x060 }
|09CB5E| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2B_0:
|09CB5F| db $1E, $09, $3F ; SPRITE 3F   | xy: { 0x090, 0x1E0 }
|09CB62| db $1E, $0B, $3F ; SPRITE 3F   | xy: { 0x0B0, 0x1E0 }
|09CB65| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2C_0:
|09CB66| db $18, $1E, $3F ; SPRITE 3F   | xy: { 0x1E0, 0x180 }
|09CB69| db $1A, $1E, $3F ; SPRITE 3F   | xy: { 0x1E0, 0x1A0 }
|09CB6C| db $1E, $0D, $3F ; SPRITE 3F   | xy: { 0x0D0, 0x1E0 }
|09CB6F| db $1E, $0F, $3F ; SPRITE 3F   | xy: { 0x0F0, 0x1E0 }
|09CB72| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen32_0:
|09CB73| db $09, $1A, $DC ; SPRITE DC   | xy: { 0x1A0, 0x090 }
|09CB76| db $12, $18, $D8 ; SPRITE D8   | xy: { 0x180, 0x120 }
|09CB79| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen40:
|09CB7A| db $07, $1A, $22 ; SPRITE 22   | xy: { 0x1A0, 0x070 }
|09CB7D| db $11, $12, $22 ; SPRITE 22   | xy: { 0x120, 0x110 }
|09CB80| db $1E, $0A, $22 ; SPRITE 22   | xy: { 0x0A0, 0x1E0 }
|09CB83| db $09, $2F, $22 ; SPRITE 22   | xy: { 0x2F0, 0x090 }
|09CB86| db $0A, $31, $0E ; SPRITE 0E   | xy: { 0x310, 0x0A0 }
|09CB89| db $0B, $33, $22 ; SPRITE 22   | xy: { 0x330, 0x0B0 }
|09CB8C| db $14, $29, $22 ; SPRITE 22   | xy: { 0x290, 0x140 }
|09CB8F| db $16, $23, $22 ; SPRITE 22   | xy: { 0x230, 0x160 }
|09CB92| db $17, $39, $AA ; SPRITE AA   | xy: { 0x390, 0x170 }
|09CB95| db $21, $0A, $22 ; SPRITE 22   | xy: { 0x0A0, 0x210 }
|09CB98| db $25, $1A, $22 ; SPRITE 22   | xy: { 0x1A0, 0x250 }
|09CB9B| db $28, $0B, $AA ; SPRITE AA   | xy: { 0x0B0, 0x280 }
|09CB9E| db $30, $1E, $22 ; SPRITE 22   | xy: { 0x1E0, 0x300 }
|09CBA1| db $38, $0E, $22 ; SPRITE 22   | xy: { 0x0E0, 0x380 }
|09CBA4| db $38, $11, $22 ; SPRITE 22   | xy: { 0x110, 0x380 }
|09CBA7| db $39, $1A, $22 ; SPRITE 22   | xy: { 0x1A0, 0x390 }
|09CBAA| db $21, $2D, $22 ; SPRITE 22   | xy: { 0x2D0, 0x210 }
|09CBAD| db $28, $32, $22 ; SPRITE 22   | xy: { 0x320, 0x280 }
|09CBB0| db $32, $37, $22 ; SPRITE 22   | xy: { 0x370, 0x320 }
|09CBB3| db $37, $28, $AA ; SPRITE AA   | xy: { 0x280, 0x370 }
|09CBB6| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen42:
|09CBB7| db $11, $0C, $0E ; SPRITE 0E   | xy: { 0x0C0, 0x110 }
|09CBBA| db $13, $0C, $0E ; SPRITE 0E   | xy: { 0x0C0, 0x130 }
|09CBBD| db $16, $06, $E3 ; SPRITE E3   | xy: { 0x060, 0x160 }
|09CBC0| db $19, $0E, $12 ; SPRITE 12   | xy: { 0x0E0, 0x190 }
|09CBC3| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen43:
|09CBC4| db $0C, $2F, $37 ; SPRITE 37   | xy: { 0x2F0, 0x0C0 }
|09CBC7| db $18, $20, $B9 ; SPRITE B9   | xy: { 0x200, 0x180 }
|09CBCA| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen45:
|09CBCB| db $0C, $06, $D0 ; SPRITE D0   | xy: { 0x060, 0x0C0 }
|09CBCE| db $0E, $1D, $D0 ; SPRITE D0   | xy: { 0x1D0, 0x0E0 }
|09CBD1| db $0B, $20, $D0 ; SPRITE D0   | xy: { 0x200, 0x0B0 }
|09CBD4| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen47:
|09CBD5| db $14, $16, $33 ; SPRITE 33   | xy: { 0x160, 0x140 }
|09CBD8| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen4A:
|09CBD9| db $06, $0E, $33 ; SPRITE 33   | xy: { 0x0E0, 0x060 }
|09CBDC| db $08, $18, $EB ; SPRITE EB   | xy: { 0x180, 0x080 }
|09CBDF| db $0F, $0B, $12 ; SPRITE 12   | xy: { 0x0B0, 0x0F0 }
|09CBE2| db $10, $08, $12 ; SPRITE 12   | xy: { 0x080, 0x100 }
|09CBE5| db $13, $16, $12 ; SPRITE 12   | xy: { 0x160, 0x130 }
|09CBE8| db $13, $13, $00 ; SPRITE 00   | xy: { 0x130, 0x130 }
|09CBEB| db $14, $13, $00 ; SPRITE 00   | xy: { 0x130, 0x140 }
|09CBEE| db $18, $0E, $22 ; SPRITE 22   | xy: { 0x0E0, 0x180 }
|09CBF1| db $1A, $14, $D3 ; SPRITE D3   | xy: { 0x140, 0x1A0 }
|09CBF4| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen4F:
|09CBF5| db $08, $19, $55 ; SPRITE 55   | xy: { 0x190, 0x080 }
|09CBF8| db $0B, $04, $C0 ; SPRITE C0   | xy: { 0x040, 0x0B0 }
|09CBFB| db $0D, $18, $D3 ; SPRITE D3   | xy: { 0x180, 0x0D0 }
|09CBFE| db $11, $1A, $22 ; SPRITE 22   | xy: { 0x1A0, 0x110 }
|09CC01| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen50:
|09CC02| db $0B, $16, $19 ; SPRITE 19   | xy: { 0x160, 0x0B0 }
|09CC05| db $0C, $05, $12 ; SPRITE 12   | xy: { 0x050, 0x0C0 }
|09CC08| db $0E, $08, $25 ; SPRITE 25   | xy: { 0x080, 0x0E0 }
|09CC0B| db $13, $19, $0B ; SPRITE 0B   | xy: { 0x190, 0x130 }
|09CC0E| db $18, $08, $12 ; SPRITE 12   | xy: { 0x080, 0x180 }
|09CC11| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen51:
|09CC12| db $0E, $17, $45 ; SPRITE 45   | xy: { 0x170, 0x0E0 }
|09CC15| db $10, $08, $E3 ; SPRITE E3   | xy: { 0x080, 0x100 }
|09CC18| db $10, $09, $E3 ; SPRITE E3   | xy: { 0x090, 0x100 }
|09CC1B| db $15, $1C, $D3 ; SPRITE D3   | xy: { 0x1C0, 0x150 }
|09CC1E| db $16, $14, $12 ; SPRITE 12   | xy: { 0x140, 0x160 }
|09CC21| db $17, $0E, $12 ; SPRITE 12   | xy: { 0x0E0, 0x170 }
|09CC24| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen52:
|09CC25| db $09, $12, $D3 ; SPRITE D3   | xy: { 0x120, 0x090 }
|09CC28| db $0D, $15, $12 ; SPRITE 12   | xy: { 0x150, 0x0D0 }
|09CC2B| db $10, $07, $41 ; SPRITE 41   | xy: { 0x070, 0x100 }
|09CC2E| db $17, $14, $41 ; SPRITE 41   | xy: { 0x140, 0x170 }
|09CC31| db $18, $0E, $12 ; SPRITE 12   | xy: { 0x0E0, 0x180 }
|09CC34| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen53:
|09CC35| db $0B, $06, $D3 ; SPRITE D3   | xy: { 0x060, 0x0B0 }
|09CC38| db $0C, $15, $11 ; SPRITE 11   | xy: { 0x150, 0x0C0 }
|09CC3B| db $0D, $08, $22 ; SPRITE 22   | xy: { 0x080, 0x0D0 }
|09CC3E| db $15, $0D, $12 ; SPRITE 12   | xy: { 0x0D0, 0x150 }
|09CC41| db $18, $16, $0E ; SPRITE 0E   | xy: { 0x160, 0x180 }
|09CC44| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen54:
|09CC45| db $0D, $14, $22 ; SPRITE 22   | xy: { 0x140, 0x0D0 }
|09CC48| db $0B, $05, $DC ; SPRITE DC   | xy: { 0x050, 0x0B0 }
|09CC4B| db $0B, $19, $DB ; SPRITE DB   | xy: { 0x190, 0x0B0 }
|09CC4E| db $0F, $07, $22 ; SPRITE 22   | xy: { 0x070, 0x0F0 }
|09CC51| db $0E, $0F, $E3 ; SPRITE E3   | xy: { 0x0F0, 0x0E0 }
|09CC54| db $10, $19, $22 ; SPRITE 22   | xy: { 0x190, 0x100 }
|09CC57| db $14, $0D, $22 ; SPRITE 22   | xy: { 0x0D0, 0x140 }
|09CC5A| db $19, $11, $11 ; SPRITE 11   | xy: { 0x110, 0x190 }
|09CC5D| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen55:
|09CC5E| db $09, $11, $BA ; SPRITE BA   | xy: { 0x110, 0x090 }
|09CC61| db $0E, $16, $11 ; SPRITE 11   | xy: { 0x160, 0x0E0 }
|09CC64| db $0E, $18, $D3 ; SPRITE D3   | xy: { 0x180, 0x0E0 }
|09CC67| db $0F, $1B, $DA ; SPRITE DA   | xy: { 0x1B0, 0x0F0 }
|09CC6A| db $17, $07, $11 ; SPRITE 11   | xy: { 0x070, 0x170 }
|09CC6D| db $1A, $0A, $79 ; SPRITE 79   | xy: { 0x0A0, 0x1A0 }
|09CC70| db $1B, $1A, $22 ; SPRITE 22   | xy: { 0x1A0, 0x1B0 }
|09CC73| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen56:
|09CC74| db $06, $0A, $55 ; SPRITE 55   | xy: { 0x0A0, 0x060 }
|09CC77| db $0A, $13, $55 ; SPRITE 55   | xy: { 0x130, 0x0A0 }
|09CC7A| db $0E, $04, $79 ; SPRITE 79   | xy: { 0x040, 0x0E0 }
|09CC7D| db $17, $11, $22 ; SPRITE 22   | xy: { 0x110, 0x170 }
|09CC80| db $1A, $05, $22 ; SPRITE 22   | xy: { 0x050, 0x1A0 }
|09CC83| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen57:
|09CC84| db $04, $0C, $55 ; SPRITE 55   | xy: { 0x0C0, 0x040 }
|09CC87| db $08, $16, $08 ; SPRITE 08   | xy: { 0x160, 0x080 }
|09CC8A| db $0A, $18, $08 ; SPRITE 08   | xy: { 0x180, 0x0A0 }
|09CC8D| db $0E, $0E, $08 ; SPRITE 08   | xy: { 0x0E0, 0x0E0 }
|09CC90| db $10, $0E, $D3 ; SPRITE D3   | xy: { 0x0E0, 0x100 }
|09CC93| db $1A, $0E, $08 ; SPRITE 08   | xy: { 0x0E0, 0x1A0 }
|09CC96| db $1B, $0D, $08 ; SPRITE 08   | xy: { 0x0D0, 0x1B0 }
|09CC99| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen58:
|09CC9A| db $06, $13, $12 ; SPRITE 12   | xy: { 0x130, 0x060 }
|09CC9D| db $0C, $18, $25 ; SPRITE 25   | xy: { 0x180, 0x0C0 }
|09CCA0| db $1C, $07, $41 ; SPRITE 41   | xy: { 0x070, 0x1C0 }
|09CCA3| db $0A, $35, $12 ; SPRITE 12   | xy: { 0x350, 0x0A0 }
|09CCA6| db $0C, $2B, $19 ; SPRITE 19   | xy: { 0x2B0, 0x0C0 }
|09CCA9| db $17, $2E, $C4 ; SPRITE C4   | xy: { 0x2E0, 0x170 }
|09CCAC| db $1C, $20, $14 ; SPRITE 14   | xy: { 0x200, 0x1C0 }
|09CCAF| db $25, $18, $19 ; SPRITE 19   | xy: { 0x180, 0x250 }
|09CCB2| db $27, $0D, $C4 ; SPRITE C4   | xy: { 0x0D0, 0x270 }
|09CCB5| db $28, $1D, $19 ; SPRITE 19   | xy: { 0x1D0, 0x280 }
|09CCB8| db $2E, $12, $12 ; SPRITE 12   | xy: { 0x120, 0x2E0 }
|09CCBB| db $34, $16, $0B ; SPRITE 0B   | xy: { 0x160, 0x340 }
|09CCBE| db $37, $15, $0B ; SPRITE 0B   | xy: { 0x150, 0x370 }
|09CCC1| db $27, $28, $0B ; SPRITE 0B   | xy: { 0x280, 0x270 }
|09CCC4| db $2F, $33, $41 ; SPRITE 41   | xy: { 0x330, 0x2F0 }
|09CCC7| db $34, $2C, $19 ; SPRITE 19   | xy: { 0x2C0, 0x340 }
|09CCCA| db $35, $37, $25 ; SPRITE 25   | xy: { 0x370, 0x350 }
|09CCCD| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen5A:
|09CCCE| db $08, $0F, $12 ; SPRITE 12   | xy: { 0x0F0, 0x080 }
|09CCD1| db $08, $12, $25 ; SPRITE 25   | xy: { 0x120, 0x080 }
|09CCD4| db $0D, $12, $D3 ; SPRITE D3   | xy: { 0x120, 0x0D0 }
|09CCD7| db $0C, $15, $12 ; SPRITE 12   | xy: { 0x150, 0x0C0 }
|09CCDA| db $0F, $0B, $11 ; SPRITE 11   | xy: { 0x0B0, 0x0F0 }
|09CCDD| db $19, $0E, $12 ; SPRITE 12   | xy: { 0x0E0, 0x190 }
|09CCE0| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen5B:
|09CCE1| db $17, $15, $22 ; SPRITE 22   | xy: { 0x150, 0x170 }
|09CCE4| db $12, $34, $EB ; SPRITE EB   | xy: { 0x340, 0x120 }
|09CCE7| db $24, $13, $33 ; SPRITE 33   | xy: { 0x130, 0x240 }
|09CCEA| db $27, $0F, $12 ; SPRITE 12   | xy: { 0x0F0, 0x270 }
|09CCED| db $2A, $17, $E3 ; SPRITE E3   | xy: { 0x170, 0x2A0 }
|09CCF0| db $2A, $0C, $12 ; SPRITE 12   | xy: { 0x0C0, 0x2A0 }
|09CCF3| db $2C, $1E, $11 ; SPRITE 11   | xy: { 0x1E0, 0x2C0 }
|09CCF6| db $25, $34, $0E ; SPRITE 0E   | xy: { 0x340, 0x250 }
|09CCF9| db $27, $32, $12 ; SPRITE 12   | xy: { 0x320, 0x270 }
|09CCFC| db $29, $30, $12 ; SPRITE 12   | xy: { 0x300, 0x290 }
|09CCFF| db $2C, $21, $11 ; SPRITE 11   | xy: { 0x210, 0x2C0 }
|09CD02| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen5D:
|09CD03| db $08, $0B, $25 ; SPRITE 25   | xy: { 0x0B0, 0x080 }
|09CD06| db $09, $07, $11 ; SPRITE 11   | xy: { 0x070, 0x090 }
|09CD09| db $0B, $06, $0E ; SPRITE 0E   | xy: { 0x060, 0x0B0 }
|09CD0C| db $0B, $18, $12 ; SPRITE 12   | xy: { 0x180, 0x0B0 }
|09CD0F| db $0E, $17, $D3 ; SPRITE D3   | xy: { 0x170, 0x0E0 }
|09CD12| db $10, $1A, $12 ; SPRITE 12   | xy: { 0x1A0, 0x100 }
|09CD15| db $11, $08, $41 ; SPRITE 41   | xy: { 0x080, 0x110 }
|09CD18| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen5E:
|09CD19| db $04, $0D, $22 ; SPRITE 22   | xy: { 0x0D0, 0x040 }
|09CD1C| db $11, $03, $22 ; SPRITE 22   | xy: { 0x030, 0x110 }
|09CD1F| db $11, $15, $B6 ; SPRITE B6   | xy: { 0x150, 0x110 }
|09CD22| db $1A, $12, $22 ; SPRITE 22   | xy: { 0x120, 0x1A0 }
|09CD25| db $09, $27, $22 ; SPRITE 22   | xy: { 0x270, 0x090 }
|09CD28| db $10, $2F, $22 ; SPRITE 22   | xy: { 0x2F0, 0x100 }
|09CD2B| db $15, $25, $12 ; SPRITE 12   | xy: { 0x250, 0x150 }
|09CD2E| db $17, $26, $11 ; SPRITE 11   | xy: { 0x260, 0x170 }
|09CD31| db $18, $35, $22 ; SPRITE 22   | xy: { 0x350, 0x180 }
|09CD34| db $1E, $2A, $22 ; SPRITE 22   | xy: { 0x2A0, 0x1E0 }
|09CD37| db $26, $0A, $12 ; SPRITE 12   | xy: { 0x0A0, 0x260 }
|09CD3A| db $2B, $0C, $12 ; SPRITE 12   | xy: { 0x0C0, 0x2B0 }
|09CD3D| db $35, $07, $22 ; SPRITE 22   | xy: { 0x070, 0x350 }
|09CD40| db $37, $16, $11 ; SPRITE 11   | xy: { 0x160, 0x370 }
|09CD43| db $38, $09, $0E ; SPRITE 0E   | xy: { 0x090, 0x380 }
|09CD46| db $24, $32, $12 ; SPRITE 12   | xy: { 0x320, 0x240 }
|09CD49| db $28, $35, $0E ; SPRITE 0E   | xy: { 0x350, 0x280 }
|09CD4C| db $30, $24, $22 ; SPRITE 22   | xy: { 0x240, 0x300 }
|09CD4F| db $30, $30, $E3 ; SPRITE E3   | xy: { 0x300, 0x300 }
|09CD52| db $36, $35, $11 ; SPRITE 11   | xy: { 0x350, 0x360 }
|09CD55| db $37, $29, $00 ; SPRITE 00   | xy: { 0x290, 0x370 }
|09CD58| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen62:
|09CD59| db $05, $0D, $B4 ; SPRITE B4   | xy: { 0x0D0, 0x050 }
|09CD5C| db $11, $13, $0B ; SPRITE 0B   | xy: { 0x130, 0x110 }
|09CD5F| db $13, $11, $0B ; SPRITE 0B   | xy: { 0x110, 0x130 }
|09CD62| db $15, $15, $0B ; SPRITE 0B   | xy: { 0x150, 0x150 }
|09CD65| db $16, $09, $0B ; SPRITE 0B   | xy: { 0x090, 0x160 }
|09CD68| db $17, $11, $0B ; SPRITE 0B   | xy: { 0x110, 0x170 }
|09CD6B| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen65:
|09CD6C| db $07, $13, $12 ; SPRITE 12   | xy: { 0x130, 0x070 }
|09CD6F| db $0A, $0F, $D3 ; SPRITE D3   | xy: { 0x0F0, 0x0A0 }
|09CD72| db $0C, $0E, $12 ; SPRITE 12   | xy: { 0x0E0, 0x0C0 }
|09CD75| db $11, $05, $11 ; SPRITE 11   | xy: { 0x050, 0x110 }
|09CD78| db $16, $0A, $12 ; SPRITE 12   | xy: { 0x0A0, 0x160 }
|09CD7B| db $16, $13, $12 ; SPRITE 12   | xy: { 0x130, 0x160 }
|09CD7E| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen68:
|09CD7F| db $11, $0E, $D5 ; SPRITE D5   | xy: { 0x0E0, 0x110 }
|09CD82| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen69:
|09CD83| db $09, $06, $1A ; SPRITE 1A   | xy: { 0x060, 0x090 }
|09CD86| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen6A:
|09CD87| db $0F, $0E, $2E ; SPRITE 2E   | xy: { 0x0E0, 0x0F0 }
|09CD8A| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen6B:
|09CD8B| db $08, $16, $25 ; SPRITE 25   | xy: { 0x160, 0x080 }
|09CD8E| db $09, $08, $22 ; SPRITE 22   | xy: { 0x080, 0x090 }
|09CD91| db $0F, $17, $25 ; SPRITE 25   | xy: { 0x170, 0x0F0 }
|09CD94| db $16, $13, $12 ; SPRITE 12   | xy: { 0x130, 0x160 }
|09CD97| db $19, $0F, $12 ; SPRITE 12   | xy: { 0x0F0, 0x190 }
|09CD9A| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen6C:
|09CD9B| db $06, $15, $0E ; SPRITE 0E   | xy: { 0x150, 0x060 }
|09CD9E| db $0A, $15, $12 ; SPRITE 12   | xy: { 0x150, 0x0A0 }
|09CDA1| db $0D, $14, $12 ; SPRITE 12   | xy: { 0x140, 0x0D0 }
|09CDA4| db $16, $14, $11 ; SPRITE 11   | xy: { 0x140, 0x160 }
|09CDA7| db $19, $09, $22 ; SPRITE 22   | xy: { 0x090, 0x190 }
|09CDAA| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen6D:
|09CDAB| db $05, $0F, $22 ; SPRITE 22   | xy: { 0x0F0, 0x050 }
|09CDAE| db $07, $0D, $11 ; SPRITE 11   | xy: { 0x0D0, 0x070 }
|09CDB1| db $08, $12, $41 ; SPRITE 41   | xy: { 0x120, 0x080 }
|09CDB4| db $0A, $10, $41 ; SPRITE 41   | xy: { 0x100, 0x0A0 }
|09CDB7| db $1A, $10, $D3 ; SPRITE D3   | xy: { 0x100, 0x1A0 }
|09CDBA| db $1B, $13, $D3 ; SPRITE D3   | xy: { 0x130, 0x1B0 }
|09CDBD| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen6E:
|09CDBE| db $08, $0C, $DA ; SPRITE DA   | xy: { 0x0C0, 0x080 }
|09CDC1| db $09, $10, $79 ; SPRITE 79   | xy: { 0x100, 0x090 }
|09CDC4| db $0A, $14, $AC ; SPRITE AC   | xy: { 0x140, 0x0A0 }
|09CDC7| db $0B, $08, $41 ; SPRITE 41   | xy: { 0x080, 0x0B0 }
|09CDCA| db $0E, $10, $41 ; SPRITE 41   | xy: { 0x100, 0x0E0 }
|09CDCD| db $18, $1A, $22 ; SPRITE 22   | xy: { 0x1A0, 0x180 }
|09CDD0| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen6F:
|09CDD1| db $08, $0D, $0E ; SPRITE 0E   | xy: { 0x0D0, 0x080 }
|09CDD4| db $08, $0F, $0E ; SPRITE 0E   | xy: { 0x0F0, 0x080 }
|09CDD7| db $0B, $0E, $0E ; SPRITE 0E   | xy: { 0x0E0, 0x0B0 }
|09CDDA| db $0C, $17, $00 ; SPRITE 00   | xy: { 0x170, 0x0C0 }
|09CDDD| db $17, $09, $D3 ; SPRITE D3   | xy: { 0x090, 0x170 }
|09CDE0| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen70:
|09CDE1| db $1B, $21, $00 ; SPRITE 00   | xy: { 0x210, 0x1B0 }
|09CDE4| db $1C, $2B, $55 ; SPRITE 55   | xy: { 0x2B0, 0x1C0 }
|09CDE7| db $21, $12, $55 ; SPRITE 55   | xy: { 0x120, 0x210 }
|09CDEA| db $24, $1B, $CF ; SPRITE CF   | xy: { 0x1B0, 0x240 }
|09CDED| db $27, $10, $CF ; SPRITE CF   | xy: { 0x100, 0x270 }
|09CDF0| db $28, $07, $00 ; SPRITE 00   | xy: { 0x070, 0x280 }
|09CDF3| db $2B, $16, $55 ; SPRITE 55   | xy: { 0x160, 0x2B0 }
|09CDF6| db $2E, $1E, $55 ; SPRITE 55   | xy: { 0x1E0, 0x2E0 }
|09CDF9| db $33, $17, $CF ; SPRITE CF   | xy: { 0x170, 0x330 }
|09CDFC| db $38, $11, $55 ; SPRITE 55   | xy: { 0x110, 0x380 }
|09CDFF| db $2B, $23, $55 ; SPRITE 55   | xy: { 0x230, 0x2B0 }
|09CE02| db $2C, $27, $CF ; SPRITE CF   | xy: { 0x270, 0x2C0 }
|09CE05| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen72:
|09CE06| db $0B, $1B, $25 ; SPRITE 25   | xy: { 0x1B0, 0x0B0 }
|09CE09| db $0D, $10, $41 ; SPRITE 41   | xy: { 0x100, 0x0D0 }
|09CE0C| db $0E, $13, $41 ; SPRITE 41   | xy: { 0x130, 0x0E0 }
|09CE0F| db $14, $1A, $25 ; SPRITE 25   | xy: { 0x1A0, 0x140 }
|09CE12| db $17, $0B, $22 ; SPRITE 22   | xy: { 0x0B0, 0x170 }
|09CE15| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen73:
|09CE16| db $0C, $17, $AA ; SPRITE AA   | xy: { 0x170, 0x0C0 }
|09CE19| db $0D, $09, $12 ; SPRITE 12   | xy: { 0x090, 0x0D0 }
|09CE1C| db $0E, $14, $A8 ; SPRITE A8   | xy: { 0x140, 0x0E0 }
|09CE1F| db $1A, $15, $A8 ; SPRITE A8   | xy: { 0x150, 0x1A0 }
|09CE22| db $1B, $1B, $A9 ; SPRITE A9   | xy: { 0x1B0, 0x1B0 }
|09CE25| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen74:
|09CE26| db $0D, $0B, $12 ; SPRITE 12   | xy: { 0x0B0, 0x0D0 }
|09CE29| db $0E, $17, $33 ; SPRITE 33   | xy: { 0x170, 0x0E0 }
|09CE2C| db $11, $10, $A8 ; SPRITE A8   | xy: { 0x100, 0x110 }
|09CE2F| db $11, $15, $12 ; SPRITE 12   | xy: { 0x150, 0x110 }
|09CE32| db $12, $0A, $AA ; SPRITE AA   | xy: { 0x0A0, 0x120 }
|09CE35| db $14, $0E, $AC ; SPRITE AC   | xy: { 0x0E0, 0x140 }
|09CE38| db $17, $11, $12 ; SPRITE 12   | xy: { 0x110, 0x170 }
|09CE3B| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen75:
|09CE3C| db $05, $0A, $D3 ; SPRITE D3   | xy: { 0x0A0, 0x050 }
|09CE3F| db $07, $09, $41 ; SPRITE 41   | xy: { 0x090, 0x070 }
|09CE42| db $09, $0B, $41 ; SPRITE 41   | xy: { 0x0B0, 0x090 }
|09CE45| db $13, $07, $08 ; SPRITE 08   | xy: { 0x070, 0x130 }
|09CE48| db $16, $18, $A8 ; SPRITE A8   | xy: { 0x180, 0x160 }
|09CE4B| db $17, $09, $AA ; SPRITE AA   | xy: { 0x090, 0x170 }
|09CE4E| db $0C, $30, $55 ; SPRITE 55   | xy: { 0x300, 0x0C0 }
|09CE51| db $11, $29, $A9 ; SPRITE A9   | xy: { 0x290, 0x110 }
|09CE54| db $15, $36, $A8 ; SPRITE A8   | xy: { 0x360, 0x150 }
|09CE57| db $1F, $31, $AA ; SPRITE AA   | xy: { 0x310, 0x1F0 }
|09CE5A| db $22, $1B, $55 ; SPRITE 55   | xy: { 0x1B0, 0x220 }
|09CE5D| db $28, $14, $A8 ; SPRITE A8   | xy: { 0x140, 0x280 }
|09CE60| db $2E, $16, $AA ; SPRITE AA   | xy: { 0x160, 0x2E0 }
|09CE63| db $32, $19, $A8 ; SPRITE A8   | xy: { 0x190, 0x320 }
|09CE66| db $35, $0A, $A9 ; SPRITE A9   | xy: { 0x0A0, 0x350 }
|09CE69| db $39, $08, $22 ; SPRITE 22   | xy: { 0x080, 0x390 }
|09CE6C| db $39, $1B, $55 ; SPRITE 55   | xy: { 0x1B0, 0x390 }
|09CE6F| db $26, $2A, $AA ; SPRITE AA   | xy: { 0x2A0, 0x260 }
|09CE72| db $28, $32, $A8 ; SPRITE A8   | xy: { 0x320, 0x280 }
|09CE75| db $2C, $2A, $55 ; SPRITE 55   | xy: { 0x2A0, 0x2C0 }
|09CE78| db $35, $32, $55 ; SPRITE 55   | xy: { 0x320, 0x350 }
|09CE7B| db $39, $37, $08 ; SPRITE 08   | xy: { 0x370, 0x390 }
|09CE7E| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen77:
|09CE7F| db $08, $11, $08 ; SPRITE 08   | xy: { 0x110, 0x080 }
|09CE82| db $0A, $09, $D3 ; SPRITE D3   | xy: { 0x090, 0x0A0 }
|09CE85| db $0B, $0D, $A9 ; SPRITE A9   | xy: { 0x0D0, 0x0B0 }
|09CE88| db $11, $18, $08 ; SPRITE 08   | xy: { 0x180, 0x110 }
|09CE8B| db $12, $07, $55 ; SPRITE 55   | xy: { 0x070, 0x120 }
|09CE8E| db $19, $12, $55 ; SPRITE 55   | xy: { 0x120, 0x190 }
|09CE91| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen7A:
|09CE92| db $07, $06, $11 ; SPRITE 11   | xy: { 0x060, 0x070 }
|09CE95| db $09, $16, $22 ; SPRITE 22   | xy: { 0x160, 0x090 }
|09CE98| db $0B, $14, $22 ; SPRITE 22   | xy: { 0x140, 0x0B0 }
|09CE9B| db $0B, $16, $22 ; SPRITE 22   | xy: { 0x160, 0x0B0 }
|09CE9E| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen7B:
|09CE9F| db $06, $12, $A9 ; SPRITE A9   | xy: { 0x120, 0x060 }
|09CEA2| db $0A, $16, $AA ; SPRITE AA   | xy: { 0x160, 0x0A0 }
|09CEA5| db $0F, $0D, $12 ; SPRITE 12   | xy: { 0x0D0, 0x0F0 }
|09CEA8| db $10, $0A, $D3 ; SPRITE D3   | xy: { 0x0A0, 0x100 }
|09CEAB| db $14, $13, $12 ; SPRITE 12   | xy: { 0x130, 0x140 }
|09CEAE| db $18, $16, $22 ; SPRITE 22   | xy: { 0x160, 0x180 }
|09CEB1| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen7C:
|09CEB2| db $05, $03, $D3 ; SPRITE D3   | xy: { 0x030, 0x050 }
|09CEB5| db $06, $07, $41 ; SPRITE 41   | xy: { 0x070, 0x060 }
|09CEB8| db $06, $0F, $33 ; SPRITE 33   | xy: { 0x0F0, 0x060 }
|09CEBB| db $11, $11, $11 ; SPRITE 11   | xy: { 0x110, 0x110 }
|09CEBE| db $15, $18, $22 ; SPRITE 22   | xy: { 0x180, 0x150 }
|09CEC1| db $19, $16, $22 ; SPRITE 22   | xy: { 0x160, 0x190 }
|09CEC4| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen7F:
|09CEC5| db $06, $10, $A8 ; SPRITE A8   | xy: { 0x100, 0x060 }
|09CEC8| db $06, $16, $08 ; SPRITE 08   | xy: { 0x160, 0x060 }
|09CECB| db $0C, $07, $BA ; SPRITE BA   | xy: { 0x070, 0x0C0 }
|09CECE| db $0E, $07, $55 ; SPRITE 55   | xy: { 0x070, 0x0E0 }
|09CED1| db $13, $0D, $A8 ; SPRITE A8   | xy: { 0x0D0, 0x130 }
|09CED4| db $14, $16, $AA ; SPRITE AA   | xy: { 0x160, 0x140 }
|09CED7| db $17, $0F, $08 ; SPRITE 08   | xy: { 0x0F0, 0x170 }
|09CEDA| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen80:
|09CEDB| db $08, $07, $62 ; SPRITE 62   | xy: { 0x070, 0x080 }
|09CEDE| db $0A, $07, $B3 ; SPRITE B3   | xy: { 0x070, 0x0A0 }
|09CEE1| db $14, $0F, $5A ; SPRITE 5A   | xy: { 0x0F0, 0x140 }
|09CEE4| db $16, $00, $59 ; SPRITE 59   | xy: { 0x000, 0x160 }
|09CEE7| db $18, $02, $5A ; SPRITE 5A   | xy: { 0x020, 0x180 }
|09CEEA| db $1A, $0E, $59 ; SPRITE 59   | xy: { 0x0E0, 0x1A0 }
|09CEED| db $1B, $0F, $5A ; SPRITE 5A   | xy: { 0x0F0, 0x1B0 }
|09CEF0| db $04, $16, $2B ; SPRITE 2B   | xy: { 0x160, 0x040 }
|09CEF3| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen81:
|09CEF4| db $26, $1B, $EB ; SPRITE EB   | xy: { 0x1B0, 0x260 }
|09CEF7| db $06, $0A, $56 ; SPRITE 56   | xy: { 0x0A0, 0x060 }
|09CEFA| db $06, $1C, $56 ; SPRITE 56   | xy: { 0x1C0, 0x060 }
|09CEFD| db $07, $11, $55 ; SPRITE 55   | xy: { 0x110, 0x070 }
|09CF00| db $0A, $16, $56 ; SPRITE 56   | xy: { 0x160, 0x0A0 }
|09CF03| db $0A, $1A, $55 ; SPRITE 55   | xy: { 0x1A0, 0x0A0 }
|09CF06| db $0C, $09, $55 ; SPRITE 55   | xy: { 0x090, 0x0C0 }
|09CF09| db $0D, $12, $55 ; SPRITE 55   | xy: { 0x120, 0x0D0 }
|09CF0C| db $12, $1A, $56 ; SPRITE 56   | xy: { 0x1A0, 0x120 }
|09CF0F| db $13, $07, $56 ; SPRITE 56   | xy: { 0x070, 0x130 }
|09CF12| db $13, $14, $56 ; SPRITE 56   | xy: { 0x140, 0x130 }
|09CF15| db $18, $08, $56 ; SPRITE 56   | xy: { 0x080, 0x180 }
|09CF18| db $1C, $04, $56 ; SPRITE 56   | xy: { 0x040, 0x1C0 }
|09CF1B| db $04, $3B, $52 ; SPRITE 52   | xy: { 0x3B0, 0x040 }
|09CF1E| db $08, $27, $55 ; SPRITE 55   | xy: { 0x270, 0x080 }
|09CF21| db $08, $2D, $55 ; SPRITE 55   | xy: { 0x2D0, 0x080 }
|09CF24| db $0E, $22, $56 ; SPRITE 56   | xy: { 0x220, 0x0E0 }
|09CF27| db $0E, $2D, $55 ; SPRITE 55   | xy: { 0x2D0, 0x0E0 }
|09CF2A| db $14, $21, $55 ; SPRITE 55   | xy: { 0x210, 0x140 }
|09CF2D| db $20, $0D, $56 ; SPRITE 56   | xy: { 0x0D0, 0x200 }
|09CF30| db $31, $08, $56 ; SPRITE 56   | xy: { 0x080, 0x310 }
|09CF33| db $31, $14, $55 ; SPRITE 55   | xy: { 0x140, 0x310 }
|09CF36| db $33, $0C, $56 ; SPRITE 56   | xy: { 0x0C0, 0x330 }
|09CF39| db $35, $0E, $55 ; SPRITE 55   | xy: { 0x0E0, 0x350 }
|09CF3C| db $38, $08, $56 ; SPRITE 56   | xy: { 0x080, 0x380 }
|09CF3F| db $28, $3B, $56 ; SPRITE 56   | xy: { 0x3B0, 0x280 }
|09CF42| db $2B, $3A, $56 ; SPRITE 56   | xy: { 0x3A0, 0x2B0 }
|09CF45| db $35, $2D, $56 ; SPRITE 56   | xy: { 0x2D0, 0x350 }
|09CF48| db $36, $37, $56 ; SPRITE 56   | xy: { 0x370, 0x360 }
|09CF4B| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen00_1:
|09CF4C| db $12, $07, $E8 ; SPRITE E8   | xy: { 0x070, 0x120 }
|09CF4F| db $0B, $12, $00 ; SPRITE 00   | xy: { 0x120, 0x0B0 }
|09CF52| db $15, $1E, $E7 ; SPRITE E7   | xy: { 0x1E0, 0x150 }
|09CF55| db $06, $28, $E8 ; SPRITE E8   | xy: { 0x280, 0x060 }
|09CF58| db $0A, $31, $0D ; SPRITE 0D   | xy: { 0x310, 0x0A0 }
|09CF5B| db $0A, $2D, $00 ; SPRITE 00   | xy: { 0x2D0, 0x0A0 }
|09CF5E| db $10, $2A, $17 ; SPRITE 17   | xy: { 0x2A0, 0x100 }
|09CF61| db $15, $39, $E8 ; SPRITE E8   | xy: { 0x390, 0x150 }
|09CF64| db $22, $0E, $C4 ; SPRITE C4   | xy: { 0x0E0, 0x220 }
|09CF67| db $2D, $1E, $17 ; SPRITE 17   | xy: { 0x1E0, 0x2D0 }
|09CF6A| db $25, $29, $79 ; SPRITE 79   | xy: { 0x290, 0x250 }
|09CF6D| db $27, $2A, $33 ; SPRITE 33   | xy: { 0x2A0, 0x270 }
|09CF70| db $2D, $36, $00 ; SPRITE 00   | xy: { 0x360, 0x2D0 }
|09CF73| db $35, $25, $E8 ; SPRITE E8   | xy: { 0x250, 0x350 }
|09CF76| db $35, $29, $C4 ; SPRITE C4   | xy: { 0x290, 0x350 }
|09CF79| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen02_1:
|09CF7A| db $13, $04, $0D ; SPRITE 0D   | xy: { 0x040, 0x130 }
|09CF7D| db $13, $0C, $2C ; SPRITE 2C   | xy: { 0x0C0, 0x130 }
|09CF80| db $1A, $0D, $17 ; SPRITE 17   | xy: { 0x0D0, 0x1A0 }
|09CF83| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen03_1:
|09CF84| db $00, $00, $F4 ; OVERLORD 02 | xy: { 0x000, 0x000 }
|09CF87| db $04, $0B, $F2 ; SPRITE F2   | xy: { 0x0B0, 0x040 }
|09CF8A| db $0C, $27, $27 ; SPRITE 27   | xy: { 0x270, 0x0C0 }
|09CF8D| db $16, $22, $EB ; SPRITE EB   | xy: { 0x220, 0x160 }
|09CF90| db $35, $0A, $27 ; SPRITE 27   | xy: { 0x0A0, 0x350 }
|09CF93| db $36, $06, $27 ; SPRITE 27   | xy: { 0x060, 0x360 }
|09CF96| db $3B, $0D, $27 ; SPRITE 27   | xy: { 0x0D0, 0x3B0 }
|09CF99| db $3B, $12, $F3 ; OVERLORD 01 | xy: { 0x120, 0x3B0 }
|09CF9C| db $2D, $2C, $27 ; SPRITE 27   | xy: { 0x2C0, 0x2D0 }
|09CF9F| db $33, $34, $27 ; SPRITE 27   | xy: { 0x340, 0x330 }
|09CFA2| db $34, $2F, $27 ; SPRITE 27   | xy: { 0x2F0, 0x340 }
|09CFA5| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen05_1:
|09CFA6| db $0E, $1E, $27 ; SPRITE 27   | xy: { 0x1E0, 0x0E0 }
|09CFA9| db $0F, $1F, $C9 ; SPRITE C9   | xy: { 0x1F0, 0x0F0 }
|09CFAC| db $03, $2F, $EB ; SPRITE EB   | xy: { 0x2F0, 0x030 }
|09CFAF| db $0D, $35, $27 ; SPRITE 27   | xy: { 0x350, 0x0D0 }
|09CFB2| db $0F, $29, $C9 ; SPRITE C9   | xy: { 0x290, 0x0F0 }
|09CFB5| db $0F, $35, $27 ; SPRITE 27   | xy: { 0x350, 0x0F0 }
|09CFB8| db $10, $34, $E3 ; SPRITE E3   | xy: { 0x340, 0x100 }
|09CFBB| db $31, $1E, $C9 ; SPRITE C9   | xy: { 0x1E0, 0x310 }
|09CFBE| db $2A, $35, $C9 ; SPRITE C9   | xy: { 0x350, 0x2A0 }
|09CFC1| db $2F, $2A, $27 ; SPRITE 27   | xy: { 0x2A0, 0x2F0 }
|09CFC4| db $2F, $2F, $C9 ; SPRITE C9   | xy: { 0x2F0, 0x2F0 }
|09CFC7| db $36, $29, $27 ; SPRITE 27   | xy: { 0x290, 0x360 }
|09CFCA| db $36, $36, $27 ; SPRITE 27   | xy: { 0x360, 0x360 }
|09CFCD| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen07_1:
|09CFCE| db $07, $0E, $27 ; SPRITE 27   | xy: { 0x0E0, 0x070 }
|09CFD1| db $0D, $0A, $27 ; SPRITE 27   | xy: { 0x0A0, 0x0D0 }
|09CFD4| db $15, $17, $27 ; SPRITE 27   | xy: { 0x170, 0x150 }
|09CFD7| db $16, $0F, $27 ; SPRITE 27   | xy: { 0x0F0, 0x160 }
|09CFDA| db $16, $12, $27 ; SPRITE 27   | xy: { 0x120, 0x160 }
|09CFDD| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen0A_1:
|09CFDE| db $04, $0E, $79 ; SPRITE 79   | xy: { 0x0E0, 0x040 }
|09CFE1| db $06, $0E, $33 ; SPRITE 33   | xy: { 0x0E0, 0x060 }
|09CFE4| db $09, $05, $00 ; SPRITE 00   | xy: { 0x050, 0x090 }
|09CFE7| db $0D, $10, $0D ; SPRITE 0D   | xy: { 0x100, 0x0D0 }
|09CFEA| db $0E, $0B, $0D ; SPRITE 0D   | xy: { 0x0B0, 0x0E0 }
|09CFED| db $16, $13, $00 ; SPRITE 00   | xy: { 0x130, 0x160 }
|09CFF0| db $16, $0E, $17 ; SPRITE 17   | xy: { 0x0E0, 0x160 }
|09CFF3| db $16, $16, $0D ; SPRITE 0D   | xy: { 0x160, 0x160 }
|09CFF6| db $17, $11, $00 ; SPRITE 00   | xy: { 0x110, 0x170 }
|09CFF9| db $1A, $19, $AC ; SPRITE AC   | xy: { 0x190, 0x1A0 }
|09CFFC| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen0F_1:
|09CFFD| db $02, $06, $37 ; SPRITE 37   | xy: { 0x060, 0x020 }
|09D000| db $0D, $0D, $58 ; SPRITE 58   | xy: { 0x0D0, 0x0D0 }
|09D003| db $10, $05, $55 ; SPRITE 55   | xy: { 0x050, 0x100 }
|09D006| db $12, $11, $58 ; SPRITE 58   | xy: { 0x110, 0x120 }
|09D009| db $13, $08, $BA ; SPRITE BA   | xy: { 0x080, 0x130 }
|09D00C| db $15, $1C, $00 ; SPRITE 00   | xy: { 0x1C0, 0x150 }
|09D00F| db $17, $0E, $0A ; SPRITE 0A   | xy: { 0x0E0, 0x170 }
|09D012| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen10_1:
|09D013| db $0C, $05, $42 ; SPRITE 42   | xy: { 0x050, 0x0C0 }
|09D016| db $0C, $07, $AC ; SPRITE AC   | xy: { 0x070, 0x0C0 }
|09D019| db $0F, $17, $E0 ; SPRITE E0   | xy: { 0x170, 0x0F0 }
|09D01C| db $18, $08, $42 ; SPRITE 42   | xy: { 0x080, 0x180 }
|09D01F| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen11_1:
|09D020| db $0C, $17, $42 ; SPRITE 42   | xy: { 0x170, 0x0C0 }
|09D023| db $0D, $1A, $42 ; SPRITE 42   | xy: { 0x1A0, 0x0D0 }
|09D026| db $10, $08, $DC ; SPRITE DC   | xy: { 0x080, 0x100 }
|09D029| db $17, $08, $0B ; SPRITE 0B   | xy: { 0x080, 0x170 }
|09D02C| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen12_1:
|09D02D| db $0E, $15, $42 ; SPRITE 42   | xy: { 0x150, 0x0E0 }
|09D030| db $10, $07, $42 ; SPRITE 42   | xy: { 0x070, 0x100 }
|09D033| db $10, $0F, $BA ; SPRITE BA   | xy: { 0x0F0, 0x100 }
|09D036| db $15, $15, $42 ; SPRITE 42   | xy: { 0x150, 0x150 }
|09D039| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen13_1:
|09D03A| db $09, $18, $AC ; SPRITE AC   | xy: { 0x180, 0x090 }
|09D03D| db $17, $11, $42 ; SPRITE 42   | xy: { 0x110, 0x170 }
|09D040| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen14_1:
|09D041| db $11, $15, $48 ; SPRITE 48   | xy: { 0x150, 0x110 }
|09D044| db $19, $11, $42 ; SPRITE 42   | xy: { 0x110, 0x190 }
|09D047| db $0C, $08, $C5 ; SPRITE C5   | xy: { 0x080, 0x0C0 }
|09D04A| db $11, $17, $C5 ; SPRITE C5   | xy: { 0x170, 0x110 }
|09D04D| db $0E, $12, $C5 ; SPRITE C5   | xy: { 0x120, 0x0E0 }
|09D050| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen15_1:
|09D051| db $09, $11, $BA ; SPRITE BA   | xy: { 0x110, 0x090 }
|09D054| db $0E, $16, $41 ; SPRITE 41   | xy: { 0x160, 0x0E0 }
|09D057| db $0F, $1B, $E3 ; SPRITE E3   | xy: { 0x1B0, 0x0F0 }
|09D05A| db $17, $0B, $41 ; SPRITE 41   | xy: { 0x0B0, 0x170 }
|09D05D| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen16_1:
|09D05E| db $0A, $0D, $0D ; SPRITE 0D   | xy: { 0x0D0, 0x0A0 }
|09D061| db $15, $0F, $36 ; SPRITE 36   | xy: { 0x0F0, 0x150 }
|09D064| db $18, $06, $0D ; SPRITE 0D   | xy: { 0x060, 0x180 }
|09D067| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen17_1:
|09D068| db $08, $18, $0D ; SPRITE 0D   | xy: { 0x180, 0x080 }
|09D06B| db $0A, $17, $0D ; SPRITE 0D   | xy: { 0x170, 0x0A0 }
|09D06E| db $0B, $0D, $0D ; SPRITE 0D   | xy: { 0x0D0, 0x0B0 }
|09D071| db $0C, $16, $0D ; SPRITE 0D   | xy: { 0x160, 0x0C0 }
|09D074| db $16, $08, $0D ; SPRITE 0D   | xy: { 0x080, 0x160 }
|09D077| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen18_1:
|09D078| db $0A, $18, $E3 ; SPRITE E3   | xy: { 0x180, 0x0A0 }
|09D07B| db $17, $0C, $F3 ; OVERLORD 01 | xy: { 0x0C0, 0x170 }
|09D07E| db $16, $18, $75 ; SPRITE 75   | xy: { 0x180, 0x160 }
|09D081| db $1C, $0E, $3D ; SPRITE 3D   | xy: { 0x0E0, 0x1C0 }
|09D084| db $18, $20, $1D ; SPRITE 1D   | xy: { 0x200, 0x180 }
|09D087| db $1B, $34, $F3 ; OVERLORD 01 | xy: { 0x340, 0x1B0 }
|09D08A| db $2E, $1D, $74 ; SPRITE 74   | xy: { 0x1D0, 0x2E0 }
|09D08D| db $2C, $19, $2A ; SPRITE 2A   | xy: { 0x190, 0x2C0 }
|09D090| db $31, $18, $3C ; SPRITE 3C   | xy: { 0x180, 0x310 }
|09D093| db $35, $16, $0B ; SPRITE 0B   | xy: { 0x160, 0x350 }
|09D096| db $36, $18, $0B ; SPRITE 0B   | xy: { 0x180, 0x360 }
|09D099| db $20, $33, $34 ; SPRITE 34   | xy: { 0x330, 0x200 }
|09D09C| db $33, $36, $DA ; SPRITE DA   | xy: { 0x360, 0x330 }
|09D09F| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen1A_1:
|09D0A0| db $0C, $14, $41 ; SPRITE 41   | xy: { 0x140, 0x0C0 }
|09D0A3| db $0E, $0C, $42 ; SPRITE 42   | xy: { 0x0C0, 0x0E0 }
|09D0A6| db $11, $0D, $E3 ; SPRITE E3   | xy: { 0x0D0, 0x110 }
|09D0A9| db $17, $17, $DA ; SPRITE DA   | xy: { 0x170, 0x170 }
|09D0AC| db $18, $0A, $D8 ; SPRITE D8   | xy: { 0x0A0, 0x180 }
|09D0AF| db $18, $0F, $43 ; SPRITE 43   | xy: { 0x0F0, 0x180 }
|09D0B2| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen1B_1:
|09D0B3| db $06, $1F, $40 ; SPRITE 40   | xy: { 0x1F0, 0x060 }
|09D0B6| db $11, $09, $49 ; SPRITE 49   | xy: { 0x090, 0x110 }
|09D0B9| db $13, $0A, $49 ; SPRITE 49   | xy: { 0x0A0, 0x130 }
|09D0BC| db $14, $16, $AC ; SPRITE AC   | xy: { 0x160, 0x140 }
|09D0BF| db $19, $0E, $4A ; SPRITE 4A   | xy: { 0x0E0, 0x190 }
|09D0C2| db $1A, $1F, $41 ; SPRITE 41   | xy: { 0x1F0, 0x1A0 }
|09D0C5| db $17, $29, $33 ; SPRITE 33   | xy: { 0x290, 0x170 }
|09D0C8| db $19, $31, $4A ; SPRITE 4A   | xy: { 0x310, 0x190 }
|09D0CB| db $1A, $20, $41 ; SPRITE 41   | xy: { 0x200, 0x1A0 }
|09D0CE| db $25, $0E, $4A ; SPRITE 4A   | xy: { 0x0E0, 0x250 }
|09D0D1| db $2D, $14, $42 ; SPRITE 42   | xy: { 0x140, 0x2D0 }
|09D0D4| db $2D, $26, $48 ; SPRITE 48   | xy: { 0x260, 0x2D0 }
|09D0D7| db $32, $21, $48 ; SPRITE 48   | xy: { 0x210, 0x320 }
|09D0DA| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen1D_1:
|09D0DB| db $06, $0B, $AC ; SPRITE AC   | xy: { 0x0B0, 0x060 }
|09D0DE| db $0C, $1B, $46 ; SPRITE 46   | xy: { 0x1B0, 0x0C0 }
|09D0E1| db $0D, $07, $41 ; SPRITE 41   | xy: { 0x070, 0x0D0 }
|09D0E4| db $0F, $1B, $46 ; SPRITE 46   | xy: { 0x1B0, 0x0F0 }
|09D0E7| db $12, $07, $58 ; SPRITE 58   | xy: { 0x070, 0x120 }
|09D0EA| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen1E_1:
|09D0EB| db $08, $13, $51 ; SPRITE 51   | xy: { 0x130, 0x080 }
|09D0EE| db $0E, $0E, $51 ; SPRITE 51   | xy: { 0x0E0, 0x0E0 }
|09D0F1| db $1A, $11, $08 ; SPRITE 08   | xy: { 0x110, 0x1A0 }
|09D0F4| db $1A, $19, $51 ; SPRITE 51   | xy: { 0x190, 0x1A0 }
|09D0F7| db $09, $33, $51 ; SPRITE 51   | xy: { 0x330, 0x090 }
|09D0FA| db $09, $37, $51 ; SPRITE 51   | xy: { 0x370, 0x090 }
|09D0FD| db $10, $31, $41 ; SPRITE 41   | xy: { 0x310, 0x100 }
|09D100| db $17, $2F, $51 ; SPRITE 51   | xy: { 0x2F0, 0x170 }
|09D103| db $1D, $35, $0A ; SPRITE 0A   | xy: { 0x350, 0x1D0 }
|09D106| db $25, $0F, $0A ; SPRITE 0A   | xy: { 0x0F0, 0x250 }
|09D109| db $28, $09, $08 ; SPRITE 08   | xy: { 0x090, 0x280 }
|09D10C| db $2C, $15, $08 ; SPRITE 08   | xy: { 0x150, 0x2C0 }
|09D10F| db $33, $14, $51 ; SPRITE 51   | xy: { 0x140, 0x330 }
|09D112| db $33, $17, $51 ; SPRITE 51   | xy: { 0x170, 0x330 }
|09D115| db $36, $09, $08 ; SPRITE 08   | xy: { 0x090, 0x360 }
|09D118| db $25, $24, $51 ; SPRITE 51   | xy: { 0x240, 0x250 }
|09D11B| db $29, $28, $51 ; SPRITE 51   | xy: { 0x280, 0x290 }
|09D11E| db $29, $3D, $51 ; SPRITE 51   | xy: { 0x3D0, 0x290 }
|09D121| db $3B, $2E, $08 ; SPRITE 08   | xy: { 0x2E0, 0x3B0 }
|09D124| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen22_1:
|09D125| db $04, $0C, $D1 ; SPRITE D1   | xy: { 0x0C0, 0x040 }
|09D128| db $12, $17, $42 ; SPRITE 42   | xy: { 0x170, 0x120 }
|09D12B| db $14, $12, $0B ; SPRITE 0B   | xy: { 0x120, 0x140 }
|09D12E| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen25_1:
|09D12F| db $08, $0F, $08 ; SPRITE 08   | xy: { 0x0F0, 0x080 }
|09D132| db $0C, $05, $08 ; SPRITE 08   | xy: { 0x050, 0x0C0 }
|09D135| db $0C, $14, $08 ; SPRITE 08   | xy: { 0x140, 0x0C0 }
|09D138| db $0D, $10, $08 ; SPRITE 08   | xy: { 0x100, 0x0D0 }
|09D13B| db $11, $0C, $08 ; SPRITE 08   | xy: { 0x0C0, 0x110 }
|09D13E| db $16, $18, $08 ; SPRITE 08   | xy: { 0x180, 0x160 }
|09D141| db $17, $08, $08 ; SPRITE 08   | xy: { 0x080, 0x170 }
|09D144| db $17, $10, $08 ; SPRITE 08   | xy: { 0x100, 0x170 }
|09D147| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen28_1:
|09D148| db $13, $07, $EB ; SPRITE EB   | xy: { 0x070, 0x130 }
|09D14B| db $12, $08, $30 ; SPRITE 30   | xy: { 0x080, 0x120 }
|09D14E| db $18, $19, $2F ; SPRITE 2F   | xy: { 0x190, 0x180 }
|09D151| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2A_1:
|09D152| db $09, $09, $1D ; SPRITE 1D   | xy: { 0x090, 0x090 }
|09D155| db $0C, $0E, $9E ; SPRITE 9E   | xy: { 0x0E0, 0x0C0 }
|09D158| db $0E, $0D, $A0 ; SPRITE A0   | xy: { 0x0D0, 0x0E0 }
|09D15B| db $0E, $0E, $2E ; SPRITE 2E   | xy: { 0x0E0, 0x0E0 }
|09D15E| db $0E, $11, $A0 ; SPRITE A0   | xy: { 0x110, 0x0E0 }
|09D161| db $0F, $0C, $9F ; SPRITE 9F   | xy: { 0x0C0, 0x0F0 }
|09D164| db $10, $11, $9F ; SPRITE 9F   | xy: { 0x110, 0x100 }
|09D167| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2B_1:
|09D168| db $0D, $16, $E3 ; SPRITE E3   | xy: { 0x160, 0x0D0 }
|09D16B| db $11, $14, $42 ; SPRITE 42   | xy: { 0x140, 0x110 }
|09D16E| db $15, $14, $42 ; SPRITE 42   | xy: { 0x140, 0x150 }
|09D171| db $17, $10, $42 ; SPRITE 42   | xy: { 0x100, 0x170 }
|09D174| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2C_1:
|09D175| db $14, $18, $42 ; SPRITE 42   | xy: { 0x180, 0x140 }
|09D178| db $19, $09, $41 ; SPRITE 41   | xy: { 0x090, 0x190 }
|09D17B| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2D_1:
|09D17C| db $0B, $13, $42 ; SPRITE 42   | xy: { 0x130, 0x0B0 }
|09D17F| db $10, $10, $46 ; SPRITE 46   | xy: { 0x100, 0x100 }
|09D182| db $16, $12, $41 ; SPRITE 41   | xy: { 0x120, 0x160 }
|09D185| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2E_1:
|09D186| db $0C, $0E, $41 ; SPRITE 41   | xy: { 0x0E0, 0x0C0 }
|09D189| db $0E, $17, $41 ; SPRITE 41   | xy: { 0x170, 0x0E0 }
|09D18C| db $12, $05, $55 ; SPRITE 55   | xy: { 0x050, 0x120 }
|09D18F| db $17, $19, $08 ; SPRITE 08   | xy: { 0x190, 0x170 }
|09D192| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2F_1:
|09D193| db $0C, $0F, $41 ; SPRITE 41   | xy: { 0x0F0, 0x0C0 }
|09D196| db $17, $07, $51 ; SPRITE 51   | xy: { 0x070, 0x170 }
|09D199| db $17, $0C, $51 ; SPRITE 51   | xy: { 0x0C0, 0x170 }
|09D19C| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen30_1:
|09D19D| db $14, $12, $57 ; SPRITE 57   | xy: { 0x120, 0x140 }
|09D1A0| db $19, $12, $B3 ; SPRITE B3   | xy: { 0x120, 0x190 }
|09D1A3| db $1C, $0E, $57 ; SPRITE 57   | xy: { 0x0E0, 0x1C0 }
|09D1A6| db $1C, $16, $57 ; SPRITE 57   | xy: { 0x160, 0x1C0 }
|09D1A9| db $19, $27, $4C ; SPRITE 4C   | xy: { 0x270, 0x190 }
|09D1AC| db $1C, $22, $01 ; SPRITE 01   | xy: { 0x220, 0x1C0 }
|09D1AF| db $1F, $2A, $4C ; SPRITE 4C   | xy: { 0x2A0, 0x1F0 }
|09D1B2| db $26, $1D, $4C ; SPRITE 4C   | xy: { 0x1D0, 0x260 }
|09D1B5| db $29, $07, $01 ; SPRITE 01   | xy: { 0x070, 0x290 }
|09D1B8| db $29, $0F, $4C ; SPRITE 4C   | xy: { 0x0F0, 0x290 }
|09D1BB| db $2A, $06, $EB ; SPRITE EB   | xy: { 0x060, 0x2A0 }
|09D1BE| db $2C, $1B, $4C ; SPRITE 4C   | xy: { 0x1B0, 0x2C0 }
|09D1C1| db $30, $0A, $4C ; SPRITE 4C   | xy: { 0x0A0, 0x300 }
|09D1C4| db $35, $14, $4C ; SPRITE 4C   | xy: { 0x140, 0x350 }
|09D1C7| db $2B, $37, $F2 ; SPRITE F2   | xy: { 0x370, 0x2B0 }
|09D1CA| db $21, $36, $D4 ; SPRITE D4   | xy: { 0x360, 0x210 }
|09D1CD| db $24, $22, $4C ; SPRITE 4C   | xy: { 0x220, 0x240 }
|09D1D0| db $25, $29, $D4 ; SPRITE D4   | xy: { 0x290, 0x250 }
|09D1D3| db $2C, $20, $4C ; SPRITE 4C   | xy: { 0x200, 0x2C0 }
|09D1D6| db $32, $23, $4C ; SPRITE 4C   | xy: { 0x230, 0x320 }
|09D1D9| db $32, $30, $D4 ; SPRITE D4   | xy: { 0x300, 0x320 }
|09D1DC| db $33, $34, $01 ; SPRITE 01   | xy: { 0x340, 0x330 }
|09D1DF| db $3B, $2D, $D4 ; SPRITE D4   | xy: { 0x2D0, 0x3B0 }
|09D1E2| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen32_1:
|09D1E3| db $09, $1A, $D8 ; SPRITE D8   | xy: { 0x1A0, 0x090 }
|09D1E6| db $0B, $0B, $41 ; SPRITE 41   | xy: { 0x0B0, 0x0B0 }
|09D1E9| db $0B, $12, $41 ; SPRITE 41   | xy: { 0x120, 0x0B0 }
|09D1EC| db $12, $19, $E3 ; SPRITE E3   | xy: { 0x190, 0x120 }
|09D1EF| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen33_1:
|09D1F0| db $0B, $15, $47 ; SPRITE 47   | xy: { 0x150, 0x0B0 }
|09D1F3| db $0E, $09, $46 ; SPRITE 46   | xy: { 0x090, 0x0E0 }
|09D1F6| db $12, $17, $BA ; SPRITE BA   | xy: { 0x170, 0x120 }
|09D1F9| db $1B, $1A, $08 ; SPRITE 08   | xy: { 0x1A0, 0x1B0 }
|09D1FC| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen34_1:
|09D1FD| db $0D, $0B, $46 ; SPRITE 46   | xy: { 0x0B0, 0x0D0 }
|09D200| db $11, $15, $4D ; SPRITE 4D   | xy: { 0x150, 0x110 }
|09D203| db $12, $11, $47 ; SPRITE 47   | xy: { 0x110, 0x120 }
|09D206| db $13, $08, $00 ; SPRITE 00   | xy: { 0x080, 0x130 }
|09D209| db $13, $0E, $E3 ; SPRITE E3   | xy: { 0x0E0, 0x130 }
|09D20C| db $17, $15, $47 ; SPRITE 47   | xy: { 0x150, 0x170 }
|09D20F| db $18, $0C, $46 ; SPRITE 46   | xy: { 0x0C0, 0x180 }
|09D212| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen35_1:
|09D213| db $07, $0E, $00 ; SPRITE 00   | xy: { 0x0E0, 0x070 }
|09D216| db $09, $0D, $08 ; SPRITE 08   | xy: { 0x0D0, 0x090 }
|09D219| db $0C, $0A, $46 ; SPRITE 46   | xy: { 0x0A0, 0x0C0 }
|09D21C| db $13, $19, $EB ; SPRITE EB   | xy: { 0x190, 0x130 }
|09D21F| db $14, $19, $0D ; SPRITE 0D   | xy: { 0x190, 0x140 }
|09D222| db $17, $07, $58 ; SPRITE 58   | xy: { 0x070, 0x170 }
|09D225| db $17, $11, $55 ; SPRITE 55   | xy: { 0x110, 0x170 }
|09D228| db $0D, $25, $55 ; SPRITE 55   | xy: { 0x250, 0x0D0 }
|09D22B| db $1F, $27, $0D ; SPRITE 0D   | xy: { 0x270, 0x1F0 }
|09D22E| db $1F, $2F, $0D ; SPRITE 0D   | xy: { 0x2F0, 0x1F0 }
|09D231| db $35, $0A, $08 ; SPRITE 08   | xy: { 0x0A0, 0x350 }
|09D234| db $35, $14, $55 ; SPRITE 55   | xy: { 0x140, 0x350 }
|09D237| db $35, $0F, $00 ; SPRITE 00   | xy: { 0x0F0, 0x350 }
|09D23A| db $39, $0B, $08 ; SPRITE 08   | xy: { 0x0B0, 0x390 }
|09D23D| db $3A, $19, $0D ; SPRITE 0D   | xy: { 0x190, 0x3A0 }
|09D240| db $3B, $11, $58 ; SPRITE 58   | xy: { 0x110, 0x3B0 }
|09D243| db $2B, $24, $55 ; SPRITE 55   | xy: { 0x240, 0x2B0 }
|09D246| db $2B, $29, $BA ; SPRITE BA   | xy: { 0x290, 0x2B0 }
|09D249| db $31, $39, $55 ; SPRITE 55   | xy: { 0x390, 0x310 }
|09D24C| db $36, $21, $55 ; SPRITE 55   | xy: { 0x210, 0x360 }
|09D24F| db $37, $32, $0D ; SPRITE 0D   | xy: { 0x320, 0x370 }
|09D252| db $39, $34, $0D ; SPRITE 0D   | xy: { 0x340, 0x390 }
|09D255| db $3A, $2E, $58 ; SPRITE 58   | xy: { 0x2E0, 0x3A0 }
|09D258| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen37_1:
|09D259| db $08, $08, $58 ; SPRITE 58   | xy: { 0x080, 0x080 }
|09D25C| db $08, $10, $58 ; SPRITE 58   | xy: { 0x100, 0x080 }
|09D25F| db $0B, $0F, $58 ; SPRITE 58   | xy: { 0x0F0, 0x0B0 }
|09D262| db $11, $16, $58 ; SPRITE 58   | xy: { 0x160, 0x110 }
|09D265| db $15, $0C, $00 ; SPRITE 00   | xy: { 0x0C0, 0x150 }
|09D268| db $19, $12, $55 ; SPRITE 55   | xy: { 0x120, 0x190 }
|09D26B| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen3A_1:
|09D26C| db $05, $17, $39 ; SPRITE 39   | xy: { 0x170, 0x050 }
|09D26F| db $09, $0E, $00 ; SPRITE 00   | xy: { 0x0E0, 0x090 }
|09D272| db $0A, $0B, $3E ; SPRITE 3E   | xy: { 0x0B0, 0x0A0 }
|09D275| db $0E, $18, $3E ; SPRITE 3E   | xy: { 0x180, 0x0E0 }
|09D278| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen3B_1:
|09D279| db $06, $13, $47 ; SPRITE 47   | xy: { 0x130, 0x060 }
|09D27C| db $0A, $0C, $46 ; SPRITE 46   | xy: { 0x0C0, 0x0A0 }
|09D27F| db $0D, $13, $D2 ; SPRITE D2   | xy: { 0x130, 0x0D0 }
|09D282| db $0B, $08, $00 ; SPRITE 00   | xy: { 0x080, 0x0B0 }
|09D285| db $0E, $14, $EB ; SPRITE EB   | xy: { 0x140, 0x0E0 }
|09D288| db $10, $1B, $D2 ; SPRITE D2   | xy: { 0x1B0, 0x100 }
|09D28B| db $14, $0F, $4D ; SPRITE 4D   | xy: { 0x0F0, 0x140 }
|09D28E| db $1B, $14, $00 ; SPRITE 00   | xy: { 0x140, 0x1B0 }
|09D291| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen3C_1:
|09D292| db $0C, $08, $47 ; SPRITE 47   | xy: { 0x080, 0x0C0 }
|09D295| db $0F, $14, $08 ; SPRITE 08   | xy: { 0x140, 0x0F0 }
|09D298| db $0F, $0E, $00 ; SPRITE 00   | xy: { 0x0E0, 0x0F0 }
|09D29B| db $11, $09, $17 ; SPRITE 17   | xy: { 0x090, 0x110 }
|09D29E| db $15, $14, $0A ; SPRITE 0A   | xy: { 0x140, 0x150 }
|09D2A1| db $17, $16, $58 ; SPRITE 58   | xy: { 0x160, 0x170 }
|09D2A4| db $18, $0B, $08 ; SPRITE 08   | xy: { 0x0B0, 0x180 }
|09D2A7| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen3F_1:
|09D2A8| db $04, $11, $08 ; SPRITE 08   | xy: { 0x110, 0x040 }
|09D2AB| db $05, $16, $08 ; SPRITE 08   | xy: { 0x160, 0x050 }
|09D2AE| db $0B, $08, $55 ; SPRITE 55   | xy: { 0x080, 0x0B0 }
|09D2B1| db $0C, $07, $BA ; SPRITE BA   | xy: { 0x070, 0x0C0 }
|09D2B4| db $16, $10, $0F ; SPRITE 0F   | xy: { 0x100, 0x160 }
|09D2B7| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen00_2:
|09D2B8| db $11, $0F, $41 ; SPRITE 41   | xy: { 0x0F0, 0x110 }
|09D2BB| db $12, $07, $E8 ; SPRITE E8   | xy: { 0x070, 0x120 }
|09D2BE| db $15, $1E, $E7 ; SPRITE E7   | xy: { 0x1E0, 0x150 }
|09D2C1| db $1F, $0D, $C4 ; SPRITE C4   | xy: { 0x0D0, 0x1F0 }
|09D2C4| db $06, $28, $E8 ; SPRITE E8   | xy: { 0x280, 0x060 }
|09D2C7| db $08, $2B, $33 ; SPRITE 33   | xy: { 0x2B0, 0x080 }
|09D2CA| db $08, $33, $41 ; SPRITE 41   | xy: { 0x330, 0x080 }
|09D2CD| db $0A, $2B, $C4 ; SPRITE C4   | xy: { 0x2B0, 0x0A0 }
|09D2D0| db $0A, $31, $0D ; SPRITE 0D   | xy: { 0x310, 0x0A0 }
|09D2D3| db $10, $2A, $17 ; SPRITE 17   | xy: { 0x2A0, 0x100 }
|09D2D6| db $2C, $0D, $17 ; SPRITE 17   | xy: { 0x0D0, 0x2C0 }
|09D2D9| db $33, $09, $41 ; SPRITE 41   | xy: { 0x090, 0x330 }
|09D2DC| db $25, $29, $79 ; SPRITE 79   | xy: { 0x290, 0x250 }
|09D2DF| db $2F, $28, $17 ; SPRITE 17   | xy: { 0x280, 0x2F0 }
|09D2E2| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen02_2:
|09D2E3| db $12, $0D, $3B ; SPRITE 3B   | xy: { 0x0D0, 0x120 }
|09D2E6| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen03_2:
|09D2E7| db $00, $00, $F4 ; OVERLORD 02 | xy: { 0x000, 0x000 }
|09D2EA| db $04, $0B, $F2 ; SPRITE F2   | xy: { 0x0B0, 0x040 }
|09D2ED| db $1A, $10, $C9 ; SPRITE C9   | xy: { 0x100, 0x1A0 }
|09D2F0| db $1E, $1A, $C9 ; SPRITE C9   | xy: { 0x1A0, 0x1E0 }
|09D2F3| db $0C, $27, $27 ; SPRITE 27   | xy: { 0x270, 0x0C0 }
|09D2F6| db $15, $2C, $C9 ; SPRITE C9   | xy: { 0x2C0, 0x150 }
|09D2F9| db $16, $22, $EB ; SPRITE EB   | xy: { 0x220, 0x160 }
|09D2FC| db $19, $28, $C9 ; SPRITE C9   | xy: { 0x280, 0x190 }
|09D2FF| db $35, $0A, $27 ; SPRITE 27   | xy: { 0x0A0, 0x350 }
|09D302| db $36, $06, $27 ; SPRITE 27   | xy: { 0x060, 0x360 }
|09D305| db $3B, $0D, $27 ; SPRITE 27   | xy: { 0x0D0, 0x3B0 }
|09D308| db $3B, $12, $F3 ; OVERLORD 01 | xy: { 0x120, 0x3B0 }
|09D30B| db $2D, $2C, $27 ; SPRITE 27   | xy: { 0x2C0, 0x2D0 }
|09D30E| db $33, $34, $27 ; SPRITE 27   | xy: { 0x340, 0x330 }
|09D311| db $34, $2F, $27 ; SPRITE 27   | xy: { 0x2F0, 0x340 }
|09D314| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen05_2:
|09D315| db $0B, $07, $27 ; SPRITE 27   | xy: { 0x070, 0x0B0 }
|09D318| db $0D, $08, $C9 ; SPRITE C9   | xy: { 0x080, 0x0D0 }
|09D31B| db $0E, $1E, $27 ; SPRITE 27   | xy: { 0x1E0, 0x0E0 }
|09D31E| db $0F, $1F, $C9 ; SPRITE C9   | xy: { 0x1F0, 0x0F0 }
|09D321| db $03, $2F, $EB ; SPRITE EB   | xy: { 0x2F0, 0x030 }
|09D324| db $0D, $35, $27 ; SPRITE 27   | xy: { 0x350, 0x0D0 }
|09D327| db $0F, $29, $C9 ; SPRITE C9   | xy: { 0x290, 0x0F0 }
|09D32A| db $0F, $35, $27 ; SPRITE 27   | xy: { 0x350, 0x0F0 }
|09D32D| db $10, $34, $E3 ; SPRITE E3   | xy: { 0x340, 0x100 }
|09D330| db $31, $1E, $C9 ; SPRITE C9   | xy: { 0x1E0, 0x310 }
|09D333| db $2A, $35, $C9 ; SPRITE C9   | xy: { 0x350, 0x2A0 }
|09D336| db $2F, $2A, $27 ; SPRITE 27   | xy: { 0x2A0, 0x2F0 }
|09D339| db $2F, $2F, $C9 ; SPRITE C9   | xy: { 0x2F0, 0x2F0 }
|09D33C| db $36, $29, $27 ; SPRITE 27   | xy: { 0x290, 0x360 }
|09D33F| db $36, $36, $27 ; SPRITE 27   | xy: { 0x360, 0x360 }
|09D342| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen07_2:
|09D343| db $07, $0E, $27 ; SPRITE 27   | xy: { 0x0E0, 0x070 }
|09D346| db $0D, $0A, $27 ; SPRITE 27   | xy: { 0x0A0, 0x0D0 }
|09D349| db $15, $17, $27 ; SPRITE 27   | xy: { 0x170, 0x150 }
|09D34C| db $16, $0F, $27 ; SPRITE 27   | xy: { 0x0F0, 0x160 }
|09D34F| db $16, $12, $27 ; SPRITE 27   | xy: { 0x120, 0x160 }
|09D352| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen0A_2:
|09D353| db $04, $0E, $79 ; SPRITE 79   | xy: { 0x0E0, 0x040 }
|09D356| db $0D, $10, $41 ; SPRITE 41   | xy: { 0x100, 0x0D0 }
|09D359| db $16, $11, $00 ; SPRITE 00   | xy: { 0x110, 0x160 }
|09D35C| db $16, $13, $00 ; SPRITE 00   | xy: { 0x130, 0x160 }
|09D35F| db $16, $0E, $17 ; SPRITE 17   | xy: { 0x0E0, 0x160 }
|09D362| db $17, $11, $00 ; SPRITE 00   | xy: { 0x110, 0x170 }
|09D365| db $1A, $19, $AC ; SPRITE AC   | xy: { 0x190, 0x1A0 }
|09D368| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen0F_2:
|09D369| db $02, $06, $37 ; SPRITE 37   | xy: { 0x060, 0x020 }
|09D36C| db $0D, $0D, $58 ; SPRITE 58   | xy: { 0x0D0, 0x0D0 }
|09D36F| db $10, $05, $55 ; SPRITE 55   | xy: { 0x050, 0x100 }
|09D372| db $11, $0A, $55 ; SPRITE 55   | xy: { 0x0A0, 0x110 }
|09D375| db $12, $11, $58 ; SPRITE 58   | xy: { 0x110, 0x120 }
|09D378| db $13, $08, $BA ; SPRITE BA   | xy: { 0x080, 0x130 }
|09D37B| db $17, $0E, $0A ; SPRITE 0A   | xy: { 0x0E0, 0x170 }
|09D37E| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen10_2:
|09D37F| db $0C, $05, $41 ; SPRITE 41   | xy: { 0x050, 0x0C0 }
|09D382| db $0C, $07, $AC ; SPRITE AC   | xy: { 0x070, 0x0C0 }
|09D385| db $0F, $17, $E0 ; SPRITE E0   | xy: { 0x170, 0x0F0 }
|09D388| db $12, $07, $41 ; SPRITE 41   | xy: { 0x070, 0x120 }
|09D38B| db $18, $08, $41 ; SPRITE 41   | xy: { 0x080, 0x180 }
|09D38E| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen11_2:
|09D38F| db $0C, $17, $41 ; SPRITE 41   | xy: { 0x170, 0x0C0 }
|09D392| db $0D, $1A, $41 ; SPRITE 41   | xy: { 0x1A0, 0x0D0 }
|09D395| db $10, $08, $DC ; SPRITE DC   | xy: { 0x080, 0x100 }
|09D398| db $17, $08, $0B ; SPRITE 0B   | xy: { 0x080, 0x170 }
|09D39B| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen12_2:
|09D39C| db $0A, $14, $E3 ; SPRITE E3   | xy: { 0x140, 0x0A0 }
|09D39F| db $0E, $15, $41 ; SPRITE 41   | xy: { 0x150, 0x0E0 }
|09D3A2| db $10, $0F, $BA ; SPRITE BA   | xy: { 0x0F0, 0x100 }
|09D3A5| db $15, $15, $42 ; SPRITE 42   | xy: { 0x150, 0x150 }
|09D3A8| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen13_2:
|09D3A9| db $09, $18, $79 ; SPRITE 79   | xy: { 0x180, 0x090 }
|09D3AC| db $0C, $07, $DE ; SPRITE DE   | xy: { 0x070, 0x0C0 }
|09D3AF| db $17, $0D, $41 ; SPRITE 41   | xy: { 0x0D0, 0x170 }
|09D3B2| db $1A, $12, $41 ; SPRITE 41   | xy: { 0x120, 0x1A0 }
|09D3B5| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen14_2:
|09D3B6| db $0D, $0D, $19 ; SPRITE 19   | xy: { 0x0D0, 0x0D0 }
|09D3B9| db $0F, $19, $19 ; SPRITE 19   | xy: { 0x190, 0x0F0 }
|09D3BC| db $10, $08, $19 ; SPRITE 19   | xy: { 0x080, 0x100 }
|09D3BF| db $11, $14, $19 ; SPRITE 19   | xy: { 0x140, 0x110 }
|09D3C2| db $14, $13, $19 ; SPRITE 19   | xy: { 0x130, 0x140 }
|09D3C5| db $19, $11, $41 ; SPRITE 41   | xy: { 0x110, 0x190 }
|09D3C8| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen15_2:
|09D3C9| db $09, $11, $BA ; SPRITE BA   | xy: { 0x110, 0x090 }
|09D3CC| db $0E, $16, $45 ; SPRITE 45   | xy: { 0x160, 0x0E0 }
|09D3CF| db $0F, $1B, $E3 ; SPRITE E3   | xy: { 0x1B0, 0x0F0 }
|09D3D2| db $17, $0B, $43 ; SPRITE 43   | xy: { 0x0B0, 0x170 }
|09D3D5| db $1A, $04, $AC ; SPRITE AC   | xy: { 0x040, 0x1A0 }
|09D3D8| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen16_2:
|09D3D9| db $0A, $0D, $0D ; SPRITE 0D   | xy: { 0x0D0, 0x0A0 }
|09D3DC| db $15, $0F, $36 ; SPRITE 36   | xy: { 0x0F0, 0x150 }
|09D3DF| db $18, $06, $0D ; SPRITE 0D   | xy: { 0x060, 0x180 }
|09D3E2| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen17_2:
|09D3E3| db $08, $18, $0D ; SPRITE 0D   | xy: { 0x180, 0x080 }
|09D3E6| db $0A, $17, $0D ; SPRITE 0D   | xy: { 0x170, 0x0A0 }
|09D3E9| db $0B, $0D, $45 ; SPRITE 45   | xy: { 0x0D0, 0x0B0 }
|09D3EC| db $0C, $16, $0D ; SPRITE 0D   | xy: { 0x160, 0x0C0 }
|09D3EF| db $16, $08, $0D ; SPRITE 0D   | xy: { 0x080, 0x160 }
|09D3F2| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen18_2:
|09D3F3| db $08, $12, $41 ; SPRITE 41   | xy: { 0x120, 0x080 }
|09D3F6| db $0A, $18, $DB ; SPRITE DB   | xy: { 0x180, 0x0A0 }
|09D3F9| db $16, $18, $75 ; SPRITE 75   | xy: { 0x180, 0x160 }
|09D3FC| db $1C, $07, $41 ; SPRITE 41   | xy: { 0x070, 0x1C0 }
|09D3FF| db $0B, $35, $41 ; SPRITE 41   | xy: { 0x350, 0x0B0 }
|09D402| db $18, $20, $1D ; SPRITE 1D   | xy: { 0x200, 0x180 }
|09D405| db $2E, $12, $41 ; SPRITE 41   | xy: { 0x120, 0x2E0 }
|09D408| db $34, $14, $0B ; SPRITE 0B   | xy: { 0x140, 0x340 }
|09D40B| db $35, $16, $0B ; SPRITE 0B   | xy: { 0x160, 0x350 }
|09D40E| db $22, $39, $43 ; SPRITE 43   | xy: { 0x390, 0x220 }
|09D411| db $2E, $20, $41 ; SPRITE 41   | xy: { 0x200, 0x2E0 }
|09D414| db $33, $36, $79 ; SPRITE 79   | xy: { 0x360, 0x330 }
|09D417| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen1A_2:
|09D418| db $08, $0F, $41 ; SPRITE 41   | xy: { 0x0F0, 0x080 }
|09D41B| db $0E, $0C, $41 ; SPRITE 41   | xy: { 0x0C0, 0x0E0 }
|09D41E| db $11, $0D, $E3 ; SPRITE E3   | xy: { 0x0D0, 0x110 }
|09D421| db $18, $0A, $D8 ; SPRITE D8   | xy: { 0x0A0, 0x180 }
|09D424| db $18, $0F, $45 ; SPRITE 45   | xy: { 0x0F0, 0x180 }
|09D427| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen1B_2:
|09D428| db $0D, $06, $45 ; SPRITE 45   | xy: { 0x060, 0x0D0 }
|09D42B| db $14, $16, $AC ; SPRITE AC   | xy: { 0x160, 0x140 }
|09D42E| db $1A, $1F, $45 ; SPRITE 45   | xy: { 0x1F0, 0x1A0 }
|09D431| db $13, $37, $41 ; SPRITE 41   | xy: { 0x370, 0x130 }
|09D434| db $25, $1E, $BA ; SPRITE BA   | xy: { 0x1E0, 0x250 }
|09D437| db $28, $08, $43 ; SPRITE 43   | xy: { 0x080, 0x280 }
|09D43A| db $2B, $1F, $42 ; SPRITE 42   | xy: { 0x1F0, 0x2B0 }
|09D43D| db $29, $38, $41 ; SPRITE 41   | xy: { 0x380, 0x290 }
|09D440| db $2D, $21, $41 ; SPRITE 41   | xy: { 0x210, 0x2D0 }
|09D443| db $32, $21, $45 ; SPRITE 45   | xy: { 0x210, 0x320 }
|09D446| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen1D_2:
|09D447| db $06, $0B, $79 ; SPRITE 79   | xy: { 0x0B0, 0x060 }
|09D44A| db $0C, $1B, $46 ; SPRITE 46   | xy: { 0x1B0, 0x0C0 }
|09D44D| db $0D, $07, $45 ; SPRITE 45   | xy: { 0x070, 0x0D0 }
|09D450| db $0F, $1B, $46 ; SPRITE 46   | xy: { 0x1B0, 0x0F0 }
|09D453| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen1E_2:
|09D454| db $0E, $0E, $51 ; SPRITE 51   | xy: { 0x0E0, 0x0E0 }
|09D457| db $1A, $11, $45 ; SPRITE 45   | xy: { 0x110, 0x1A0 }
|09D45A| db $1A, $19, $51 ; SPRITE 51   | xy: { 0x190, 0x1A0 }
|09D45D| db $04, $33, $33 ; SPRITE 33   | xy: { 0x330, 0x040 }
|09D460| db $09, $33, $51 ; SPRITE 51   | xy: { 0x330, 0x090 }
|09D463| db $09, $37, $51 ; SPRITE 51   | xy: { 0x370, 0x090 }
|09D466| db $10, $31, $45 ; SPRITE 45   | xy: { 0x310, 0x100 }
|09D469| db $17, $2F, $51 ; SPRITE 51   | xy: { 0x2F0, 0x170 }
|09D46C| db $25, $0F, $41 ; SPRITE 41   | xy: { 0x0F0, 0x250 }
|09D46F| db $28, $09, $45 ; SPRITE 45   | xy: { 0x090, 0x280 }
|09D472| db $2C, $15, $43 ; SPRITE 43   | xy: { 0x150, 0x2C0 }
|09D475| db $33, $14, $51 ; SPRITE 51   | xy: { 0x140, 0x330 }
|09D478| db $33, $17, $51 ; SPRITE 51   | xy: { 0x170, 0x330 }
|09D47B| db $25, $24, $51 ; SPRITE 51   | xy: { 0x240, 0x250 }
|09D47E| db $28, $31, $51 ; SPRITE 51   | xy: { 0x310, 0x280 }
|09D481| db $29, $28, $51 ; SPRITE 51   | xy: { 0x280, 0x290 }
|09D484| db $29, $3A, $51 ; SPRITE 51   | xy: { 0x3A0, 0x290 }
|09D487| db $29, $3D, $51 ; SPRITE 51   | xy: { 0x3D0, 0x290 }
|09D48A| db $37, $22, $E3 ; SPRITE E3   | xy: { 0x220, 0x370 }
|09D48D| db $3A, $2D, $45 ; SPRITE 45   | xy: { 0x2D0, 0x3A0 }
|09D490| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen22_2:
|09D491| db $04, $0C, $D1 ; SPRITE D1   | xy: { 0x0C0, 0x040 }
|09D494| db $14, $0C, $0B ; SPRITE 0B   | xy: { 0x0C0, 0x140 }
|09D497| db $14, $12, $0B ; SPRITE 0B   | xy: { 0x120, 0x140 }
|09D49A| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen25_2:
|09D49B| db $08, $0E, $41 ; SPRITE 41   | xy: { 0x0E0, 0x080 }
|09D49E| db $0C, $05, $41 ; SPRITE 41   | xy: { 0x050, 0x0C0 }
|09D4A1| db $11, $09, $41 ; SPRITE 41   | xy: { 0x090, 0x110 }
|09D4A4| db $16, $19, $45 ; SPRITE 45   | xy: { 0x190, 0x160 }
|09D4A7| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen28_2:
|09D4A8| db $0C, $12, $41 ; SPRITE 41   | xy: { 0x120, 0x0C0 }
|09D4AB| db $13, $07, $EB ; SPRITE EB   | xy: { 0x070, 0x130 }
|09D4AE| db $12, $08, $30 ; SPRITE 30   | xy: { 0x080, 0x120 }
|09D4B1| db $18, $19, $2F ; SPRITE 2F   | xy: { 0x190, 0x180 }
|09D4B4| db $19, $0C, $41 ; SPRITE 41   | xy: { 0x0C0, 0x190 }
|09D4B7| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen29_2:
|09D4B8| db $05, $0E, $41 ; SPRITE 41   | xy: { 0x0E0, 0x050 }
|09D4BB| db $0C, $0C, $45 ; SPRITE 45   | xy: { 0x0C0, 0x0C0 }
|09D4BE| db $14, $0B, $41 ; SPRITE 41   | xy: { 0x0B0, 0x140 }
|09D4C1| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2A_2:
|09D4C2| db $09, $09, $1D ; SPRITE 1D   | xy: { 0x090, 0x090 }
|09D4C5| db $0C, $0E, $9E ; SPRITE 9E   | xy: { 0x0E0, 0x0C0 }
|09D4C8| db $0E, $0D, $A0 ; SPRITE A0   | xy: { 0x0D0, 0x0E0 }
|09D4CB| db $0E, $0E, $2E ; SPRITE 2E   | xy: { 0x0E0, 0x0E0 }
|09D4CE| db $0E, $11, $A0 ; SPRITE A0   | xy: { 0x110, 0x0E0 }
|09D4D1| db $0F, $0C, $9F ; SPRITE 9F   | xy: { 0x0C0, 0x0F0 }
|09D4D4| db $10, $11, $9F ; SPRITE 9F   | xy: { 0x110, 0x100 }
|09D4D7| db $14, $15, $DB ; SPRITE DB   | xy: { 0x150, 0x140 }
|09D4DA| db $18, $0F, $DB ; SPRITE DB   | xy: { 0x0F0, 0x180 }
|09D4DD| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2B_2:
|09D4DE| db $06, $08, $41 ; SPRITE 41   | xy: { 0x080, 0x060 }
|09D4E1| db $0D, $16, $E3 ; SPRITE E3   | xy: { 0x160, 0x0D0 }
|09D4E4| db $11, $14, $41 ; SPRITE 41   | xy: { 0x140, 0x110 }
|09D4E7| db $15, $14, $41 ; SPRITE 41   | xy: { 0x140, 0x150 }
|09D4EA| db $17, $10, $41 ; SPRITE 41   | xy: { 0x100, 0x170 }
|09D4ED| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2C_2:
|09D4EE| db $14, $18, $41 ; SPRITE 41   | xy: { 0x180, 0x140 }
|09D4F1| db $19, $09, $41 ; SPRITE 41   | xy: { 0x090, 0x190 }
|09D4F4| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2D_2:
|09D4F5| db $08, $0F, $0A ; SPRITE 0A   | xy: { 0x0F0, 0x080 }
|09D4F8| db $0B, $12, $41 ; SPRITE 41   | xy: { 0x120, 0x0B0 }
|09D4FB| db $16, $12, $45 ; SPRITE 45   | xy: { 0x120, 0x160 }
|09D4FE| db $17, $1C, $55 ; SPRITE 55   | xy: { 0x1C0, 0x170 }
|09D501| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2E_2:
|09D502| db $09, $0C, $E3 ; SPRITE E3   | xy: { 0x0C0, 0x090 }
|09D505| db $0B, $14, $79 ; SPRITE 79   | xy: { 0x140, 0x0B0 }
|09D508| db $0C, $0E, $45 ; SPRITE 45   | xy: { 0x0E0, 0x0C0 }
|09D50B| db $0E, $17, $41 ; SPRITE 41   | xy: { 0x170, 0x0E0 }
|09D50E| db $12, $05, $55 ; SPRITE 55   | xy: { 0x050, 0x120 }
|09D511| db $17, $19, $08 ; SPRITE 08   | xy: { 0x190, 0x170 }
|09D514| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen2F_2:
|09D515| db $0C, $0F, $45 ; SPRITE 45   | xy: { 0x0F0, 0x0C0 }
|09D518| db $17, $07, $51 ; SPRITE 51   | xy: { 0x070, 0x170 }
|09D51B| db $17, $0C, $51 ; SPRITE 51   | xy: { 0x0C0, 0x170 }
|09D51E| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen30_2:
|09D51F| db $14, $12, $57 ; SPRITE 57   | xy: { 0x120, 0x140 }
|09D522| db $19, $12, $B3 ; SPRITE B3   | xy: { 0x120, 0x190 }
|09D525| db $1C, $0E, $57 ; SPRITE 57   | xy: { 0x0E0, 0x1C0 }
|09D528| db $1C, $16, $57 ; SPRITE 57   | xy: { 0x160, 0x1C0 }
|09D52B| db $19, $27, $4C ; SPRITE 4C   | xy: { 0x270, 0x190 }
|09D52E| db $1C, $22, $01 ; SPRITE 01   | xy: { 0x220, 0x1C0 }
|09D531| db $1F, $2A, $4C ; SPRITE 4C   | xy: { 0x2A0, 0x1F0 }
|09D534| db $23, $0C, $D4 ; SPRITE D4   | xy: { 0x0C0, 0x230 }
|09D537| db $26, $1D, $4C ; SPRITE 4C   | xy: { 0x1D0, 0x260 }
|09D53A| db $29, $07, $01 ; SPRITE 01   | xy: { 0x070, 0x290 }
|09D53D| db $29, $0F, $4C ; SPRITE 4C   | xy: { 0x0F0, 0x290 }
|09D540| db $2A, $06, $EB ; SPRITE EB   | xy: { 0x060, 0x2A0 }
|09D543| db $2C, $1B, $4C ; SPRITE 4C   | xy: { 0x1B0, 0x2C0 }
|09D546| db $30, $0A, $4C ; SPRITE 4C   | xy: { 0x0A0, 0x300 }
|09D549| db $35, $14, $4C ; SPRITE 4C   | xy: { 0x140, 0x350 }
|09D54C| db $2B, $37, $F2 ; SPRITE F2   | xy: { 0x370, 0x2B0 }
|09D54F| db $24, $22, $4C ; SPRITE 4C   | xy: { 0x220, 0x240 }
|09D552| db $2A, $28, $4C ; SPRITE 4C   | xy: { 0x280, 0x2A0 }
|09D555| db $32, $23, $4C ; SPRITE 4C   | xy: { 0x230, 0x320 }
|09D558| db $33, $34, $01 ; SPRITE 01   | xy: { 0x340, 0x330 }
|09D55B| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen32_2:
|09D55C| db $09, $1A, $D8 ; SPRITE D8   | xy: { 0x1A0, 0x090 }
|09D55F| db $0C, $0B, $42 ; SPRITE 42   | xy: { 0x0B0, 0x0C0 }
|09D562| db $0C, $12, $41 ; SPRITE 41   | xy: { 0x120, 0x0C0 }
|09D565| db $10, $13, $42 ; SPRITE 42   | xy: { 0x130, 0x100 }
|09D568| db $12, $19, $DD ; SPRITE DD   | xy: { 0x190, 0x120 }
|09D56B| db $15, $08, $D4 ; SPRITE D4   | xy: { 0x080, 0x150 }
|09D56E| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen33_2:
|09D56F| db $06, $13, $08 ; SPRITE 08   | xy: { 0x130, 0x060 }
|09D572| db $0B, $14, $0A ; SPRITE 0A   | xy: { 0x140, 0x0B0 }
|09D575| db $12, $17, $BA ; SPRITE BA   | xy: { 0x170, 0x120 }
|09D578| db $16, $12, $08 ; SPRITE 08   | xy: { 0x120, 0x160 }
|09D57B| db $1B, $1A, $08 ; SPRITE 08   | xy: { 0x1A0, 0x1B0 }
|09D57E| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen34_2:
|09D57F| db $0E, $17, $33 ; SPRITE 33   | xy: { 0x170, 0x0E0 }
|09D582| db $13, $08, $00 ; SPRITE 00   | xy: { 0x080, 0x130 }
|09D585| db $12, $11, $41 ; SPRITE 41   | xy: { 0x110, 0x120 }
|09D588| db $13, $06, $08 ; SPRITE 08   | xy: { 0x060, 0x130 }
|09D58B| db $18, $0C, $08 ; SPRITE 08   | xy: { 0x0C0, 0x180 }
|09D58E| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen35_2:
|09D58F| db $07, $0E, $00 ; SPRITE 00   | xy: { 0x0E0, 0x070 }
|09D592| db $09, $0D, $08 ; SPRITE 08   | xy: { 0x0D0, 0x090 }
|09D595| db $0C, $0A, $45 ; SPRITE 45   | xy: { 0x0A0, 0x0C0 }
|09D598| db $13, $19, $EB ; SPRITE EB   | xy: { 0x190, 0x130 }
|09D59B| db $14, $19, $0D ; SPRITE 0D   | xy: { 0x190, 0x140 }
|09D59E| db $17, $11, $55 ; SPRITE 55   | xy: { 0x110, 0x170 }
|09D5A1| db $0A, $38, $0A ; SPRITE 0A   | xy: { 0x380, 0x0A0 }
|09D5A4| db $0D, $25, $55 ; SPRITE 55   | xy: { 0x250, 0x0D0 }
|09D5A7| db $19, $37, $55 ; SPRITE 55   | xy: { 0x370, 0x190 }
|09D5AA| db $1F, $27, $0D ; SPRITE 0D   | xy: { 0x270, 0x1F0 }
|09D5AD| db $1F, $2F, $0D ; SPRITE 0D   | xy: { 0x2F0, 0x1F0 }
|09D5B0| db $26, $1B, $55 ; SPRITE 55   | xy: { 0x1B0, 0x260 }
|09D5B3| db $2F, $0D, $00 ; SPRITE 00   | xy: { 0x0D0, 0x2F0 }
|09D5B6| db $34, $06, $08 ; SPRITE 08   | xy: { 0x060, 0x340 }
|09D5B9| db $35, $0A, $08 ; SPRITE 08   | xy: { 0x0A0, 0x350 }
|09D5BC| db $35, $14, $55 ; SPRITE 55   | xy: { 0x140, 0x350 }
|09D5BF| db $39, $0B, $08 ; SPRITE 08   | xy: { 0x0B0, 0x390 }
|09D5C2| db $3A, $19, $0D ; SPRITE 0D   | xy: { 0x190, 0x3A0 }
|09D5C5| db $2B, $29, $BA ; SPRITE BA   | xy: { 0x290, 0x2B0 }
|09D5C8| db $31, $39, $55 ; SPRITE 55   | xy: { 0x390, 0x310 }
|09D5CB| db $36, $21, $55 ; SPRITE 55   | xy: { 0x210, 0x360 }
|09D5CE| db $37, $32, $0D ; SPRITE 0D   | xy: { 0x320, 0x370 }
|09D5D1| db $39, $34, $0D ; SPRITE 0D   | xy: { 0x340, 0x390 }
|09D5D4| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen37_2:
|09D5D5| db $08, $08, $58 ; SPRITE 58   | xy: { 0x080, 0x080 }
|09D5D8| db $08, $10, $58 ; SPRITE 58   | xy: { 0x100, 0x080 }
|09D5DB| db $0B, $0F, $58 ; SPRITE 58   | xy: { 0x0F0, 0x0B0 }
|09D5DE| db $11, $16, $58 ; SPRITE 58   | xy: { 0x160, 0x110 }
|09D5E1| db $19, $12, $55 ; SPRITE 55   | xy: { 0x120, 0x190 }
|09D5E4| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen3A_2:
|09D5E5| db $05, $17, $39 ; SPRITE 39   | xy: { 0x170, 0x050 }
|09D5E8| db $0A, $0B, $3E ; SPRITE 3E   | xy: { 0x0B0, 0x0A0 }
|09D5EB| db $0D, $14, $00 ; SPRITE 00   | xy: { 0x140, 0x0D0 }
|09D5EE| db $0E, $13, $00 ; SPRITE 00   | xy: { 0x130, 0x0E0 }
|09D5F1| db $0F, $14, $00 ; SPRITE 00   | xy: { 0x140, 0x0F0 }
|09D5F4| db $10, $13, $00 ; SPRITE 00   | xy: { 0x130, 0x100 }
|09D5F7| db $0F, $11, $45 ; SPRITE 45   | xy: { 0x110, 0x0F0 }
|09D5FA| db $17, $17, $3E ; SPRITE 3E   | xy: { 0x170, 0x170 }
|09D5FD| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen3B_2:
|09D5FE| db $0D, $13, $D2 ; SPRITE D2   | xy: { 0x130, 0x0D0 }
|09D601| db $0F, $0C, $08 ; SPRITE 08   | xy: { 0x0C0, 0x0F0 }
|09D604| db $0E, $14, $EB ; SPRITE EB   | xy: { 0x140, 0x0E0 }
|09D607| db $14, $0F, $0A ; SPRITE 0A   | xy: { 0x0F0, 0x140 }
|09D60A| db $18, $17, $41 ; SPRITE 41   | xy: { 0x170, 0x180 }
|09D60D| db $1B, $14, $00 ; SPRITE 00   | xy: { 0x140, 0x1B0 }
|09D610| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen3C_2:
|09D611| db $09, $0B, $00 ; SPRITE 00   | xy: { 0x0B0, 0x090 }
|09D614| db $0A, $08, $41 ; SPRITE 41   | xy: { 0x080, 0x0A0 }
|09D617| db $0F, $14, $08 ; SPRITE 08   | xy: { 0x140, 0x0F0 }
|09D61A| db $11, $09, $45 ; SPRITE 45   | xy: { 0x090, 0x110 }
|09D61D| db $15, $14, $0A ; SPRITE 0A   | xy: { 0x140, 0x150 }
|09D620| db $FF ; END

;===================================================================================================

Overworld_Sprites_Screen3F_2:
|09D621| db $05, $16, $0A ; SPRITE 0A   | xy: { 0x160, 0x050 }
|09D624| db $0C, $07, $BA ; SPRITE BA   | xy: { 0x070, 0x0C0 }
|09D627| db $13, $06, $55 ; SPRITE 55   | xy: { 0x060, 0x130 }
|09D62A| db $16, $11, $0F ; SPRITE 0F   | xy: { 0x110, 0x160 }
|09D62D| db $FF ; END

;===================================================================================================
; Each room begins with 1 byte to designate the layering of OAM allocation.
; Following that, each sprite has 3 bytes of data
; The list is terminated when byte 1 is 0xFF
;
; lssyyyyy
; tttxxxxx
; iiiiiiii
;   x - x coordinate of sprite, in multiples of 16
;   y - y coordinate of sprite, in multiples of 16
;   l - sprite layer (0: upper | 1: lower)
;   i - sprite ID
;   s - aux part 1
;   t - aux part 2
;       if every bit of t is set, then the entry corresponds to an overlord
;
;   s and t form a 5 bit auxiliary value written to $0E30,X
;     ...ssttt
;
; For entries with ID 0xE4, byte 1 doubles as a flag
;   0xFE - previous sprite entry is given a small key
;   0xFD - previous sprite entry is given a big key
;   All other values correspond to a regular key placed as a sprite
;
; This data is parsed and formatted as a comment for each entry as:
; xy: { X, Y, Z } | s: S
; where:
;   X and Y are pixel coordinates relative to the room's top-left corner
;   Z is the layer (U: upper layer | L: lower layer)
;   S is the auxiliary value
;===================================================================================================
RoomData_SpritePointers:
|09D62E| dw RoomData_Sprites_Room0000
|09D630| dw RoomData_Sprites_Empty
|09D632| dw RoomData_Sprites_Room0002
|09D634| dw RoomData_Sprites_Empty
|09D636| dw RoomData_Sprites_Room0004
|09D638| dw RoomData_Sprites_Empty
|09D63A| dw RoomData_Sprites_Room0006
|09D63C| dw RoomData_Sprites_Room0007
|09D63E| dw RoomData_Sprites_Room0008
|09D640| dw RoomData_Sprites_Room0009
|09D642| dw RoomData_Sprites_Room000A
|09D644| dw RoomData_Sprites_Room000B
|09D646| dw RoomData_Sprites_Empty
|09D648| dw RoomData_Sprites_Room000D
|09D64A| dw RoomData_Sprites_Room000E
|09D64C| dw RoomData_Sprites_Empty
|09D64E| dw RoomData_Sprites_Empty
|09D650| dw RoomData_Sprites_Room0011
|09D652| dw RoomData_Sprites_Room0012
|09D654| dw RoomData_Sprites_Room0013
|09D656| dw RoomData_Sprites_Room0014
|09D658| dw RoomData_Sprites_Room0015
|09D65A| dw RoomData_Sprites_Room0016
|09D65C| dw RoomData_Sprites_Room0017
|09D65E| dw RoomData_Sprites_Empty
|09D660| dw RoomData_Sprites_Room0019
|09D662| dw RoomData_Sprites_Room001A
|09D664| dw RoomData_Sprites_Room001B
|09D666| dw RoomData_Sprites_Room001C
|09D668| dw RoomData_Sprites_Empty
|09D66A| dw RoomData_Sprites_Room001E
|09D66C| dw RoomData_Sprites_Room001F
|09D66E| dw RoomData_Sprites_Room0020
|09D670| dw RoomData_Sprites_Room0021
|09D672| dw RoomData_Sprites_Room0022
|09D674| dw RoomData_Sprites_Room0023
|09D676| dw RoomData_Sprites_Room0024
|09D678| dw RoomData_Sprites_Room0025
|09D67A| dw RoomData_Sprites_Room0026
|09D67C| dw RoomData_Sprites_Room0027
|09D67E| dw RoomData_Sprites_Room0028
|09D680| dw RoomData_Sprites_Room0029
|09D682| dw RoomData_Sprites_Room002A
|09D684| dw RoomData_Sprites_Room002B
|09D686| dw RoomData_Sprites_Room002C
|09D688| dw RoomData_Sprites_Empty
|09D68A| dw RoomData_Sprites_Room002E
|09D68C| dw RoomData_Sprites_Empty
|09D68E| dw RoomData_Sprites_Room0030
|09D690| dw RoomData_Sprites_Room0031
|09D692| dw RoomData_Sprites_Room0032
|09D694| dw RoomData_Sprites_Room0033
|09D696| dw RoomData_Sprites_Room0034
|09D698| dw RoomData_Sprites_Room0035
|09D69A| dw RoomData_Sprites_Room0036
|09D69C| dw RoomData_Sprites_Room0037
|09D69E| dw RoomData_Sprites_Room0038
|09D6A0| dw RoomData_Sprites_Room0039
|09D6A2| dw RoomData_Sprites_Room003A
|09D6A4| dw RoomData_Sprites_Room003B
|09D6A6| dw RoomData_Sprites_Room003C
|09D6A8| dw RoomData_Sprites_Room003D
|09D6AA| dw RoomData_Sprites_Room003E
|09D6AC| dw RoomData_Sprites_Room003F
|09D6AE| dw RoomData_Sprites_Room0040
|09D6B0| dw RoomData_Sprites_Room0041
|09D6B2| dw RoomData_Sprites_Room0042
|09D6B4| dw RoomData_Sprites_Room0043
|09D6B6| dw RoomData_Sprites_Room0044
|09D6B8| dw RoomData_Sprites_Room0045
|09D6BA| dw RoomData_Sprites_Room0046
|09D6BC| dw RoomData_Sprites_Room0047
|09D6BE| dw RoomData_Sprites_Empty
|09D6C0| dw RoomData_Sprites_Room0049
|09D6C2| dw RoomData_Sprites_Room004A
|09D6C4| dw RoomData_Sprites_Room004B
|09D6C6| dw RoomData_Sprites_Room004C
|09D6C8| dw RoomData_Sprites_Room004D
|09D6CA| dw RoomData_Sprites_Room004E
|09D6CC| dw RoomData_Sprites_Room004F
|09D6CE| dw RoomData_Sprites_Room0050
|09D6D0| dw RoomData_Sprites_Room0051
|09D6D2| dw RoomData_Sprites_Room0052
|09D6D4| dw RoomData_Sprites_Room0053
|09D6D6| dw RoomData_Sprites_Room0054
|09D6D8| dw RoomData_Sprites_Room0055
|09D6DA| dw RoomData_Sprites_Room0056
|09D6DC| dw RoomData_Sprites_Room0057
|09D6DE| dw RoomData_Sprites_Room0058
|09D6E0| dw RoomData_Sprites_Room0059
|09D6E2| dw RoomData_Sprites_Room005A
|09D6E4| dw RoomData_Sprites_Room005B
|09D6E6| dw RoomData_Sprites_Room005C
|09D6E8| dw RoomData_Sprites_Room005D
|09D6EA| dw RoomData_Sprites_Room005E
|09D6EC| dw RoomData_Sprites_Room005F
|09D6EE| dw RoomData_Sprites_Room0060
|09D6F0| dw RoomData_Sprites_Room0061
|09D6F2| dw RoomData_Sprites_Room0062
|09D6F4| dw RoomData_Sprites_Room0063
|09D6F6| dw RoomData_Sprites_Room0064
|09D6F8| dw RoomData_Sprites_Room0065
|09D6FA| dw RoomData_Sprites_Room0066
|09D6FC| dw RoomData_Sprites_Room0067
|09D6FE| dw RoomData_Sprites_Room0068
|09D700| dw RoomData_Sprites_Empty
|09D702| dw RoomData_Sprites_Room006A
|09D704| dw RoomData_Sprites_Room006B
|09D706| dw RoomData_Sprites_Room006C
|09D708| dw RoomData_Sprites_Room006D
|09D70A| dw RoomData_Sprites_Room006E
|09D70C| dw RoomData_Sprites_Empty
|09D70E| dw RoomData_Sprites_Empty
|09D710| dw RoomData_Sprites_Room0071
|09D712| dw RoomData_Sprites_Room0072
|09D714| dw RoomData_Sprites_Room0073
|09D716| dw RoomData_Sprites_Room0074
|09D718| dw RoomData_Sprites_Room0075
|09D71A| dw RoomData_Sprites_Room0076
|09D71C| dw RoomData_Sprites_Room0077
|09D71E| dw RoomData_Sprites_Empty
|09D720| dw RoomData_Sprites_Empty
|09D722| dw RoomData_Sprites_Empty
|09D724| dw RoomData_Sprites_Room007B
|09D726| dw RoomData_Sprites_Room007C
|09D728| dw RoomData_Sprites_Room007D
|09D72A| dw RoomData_Sprites_Room007E
|09D72C| dw RoomData_Sprites_Room007F
|09D72E| dw RoomData_Sprites_Room0080
|09D730| dw RoomData_Sprites_Room0081
|09D732| dw RoomData_Sprites_Room0082
|09D734| dw RoomData_Sprites_Room0083
|09D736| dw RoomData_Sprites_Room0084
|09D738| dw RoomData_Sprites_Room0085
|09D73A| dw RoomData_Sprites_Room0086
|09D73C| dw RoomData_Sprites_Room0087
|09D73E| dw RoomData_Sprites_Empty
|09D740| dw RoomData_Sprites_Room0089
|09D742| dw RoomData_Sprites_Empty
|09D744| dw RoomData_Sprites_Room008B
|09D746| dw RoomData_Sprites_Room008C
|09D748| dw RoomData_Sprites_Room008D
|09D74A| dw RoomData_Sprites_Room008E
|09D74C| dw RoomData_Sprites_Empty
|09D74E| dw RoomData_Sprites_Room0090
|09D750| dw RoomData_Sprites_Room0091
|09D752| dw RoomData_Sprites_Room0092
|09D754| dw RoomData_Sprites_Room0093
|09D756| dw RoomData_Sprites_Empty
|09D758| dw RoomData_Sprites_Room0095
|09D75A| dw RoomData_Sprites_Room0096
|09D75C| dw RoomData_Sprites_Room0097
|09D75E| dw RoomData_Sprites_Room0098
|09D760| dw RoomData_Sprites_Room0099
|09D762| dw RoomData_Sprites_Empty
|09D764| dw RoomData_Sprites_Room009B
|09D766| dw RoomData_Sprites_Room009C
|09D768| dw RoomData_Sprites_Room009D
|09D76A| dw RoomData_Sprites_Room009E
|09D76C| dw RoomData_Sprites_Room009F
|09D76E| dw RoomData_Sprites_Room00A0
|09D770| dw RoomData_Sprites_Room00A1
|09D772| dw RoomData_Sprites_Empty
|09D774| dw RoomData_Sprites_Room00A3
|09D776| dw RoomData_Sprites_Room00A4
|09D778| dw RoomData_Sprites_Room00A5
|09D77A| dw RoomData_Sprites_Room00A6
|09D77C| dw RoomData_Sprites_Room00A7
|09D77E| dw RoomData_Sprites_Room00A8
|09D780| dw RoomData_Sprites_Room00A9
|09D782| dw RoomData_Sprites_Room00AA
|09D784| dw RoomData_Sprites_Room00AB
|09D786| dw RoomData_Sprites_Room00AC
|09D788| dw RoomData_Sprites_Empty
|09D78A| dw RoomData_Sprites_Room00AE
|09D78C| dw RoomData_Sprites_Room00AF
|09D78E| dw RoomData_Sprites_Room00B0
|09D790| dw RoomData_Sprites_Room00B1
|09D792| dw RoomData_Sprites_Room00B2
|09D794| dw RoomData_Sprites_Room00B3
|09D796| dw RoomData_Sprites_Empty
|09D798| dw RoomData_Sprites_Room00B5
|09D79A| dw RoomData_Sprites_Room00B6
|09D79C| dw RoomData_Sprites_Room00B7
|09D79E| dw RoomData_Sprites_Room00B8
|09D7A0| dw RoomData_Sprites_Room00B9
|09D7A2| dw RoomData_Sprites_Room00BA
|09D7A4| dw RoomData_Sprites_Room00BB
|09D7A6| dw RoomData_Sprites_Room00BC
|09D7A8| dw RoomData_Sprites_Room00BD
|09D7AA| dw RoomData_Sprites_Room00BE
|09D7AC| dw RoomData_Sprites_Room00BF
|09D7AE| dw RoomData_Sprites_Room00C0
|09D7B0| dw RoomData_Sprites_Room00C1
|09D7B2| dw RoomData_Sprites_Room00C2
|09D7B4| dw RoomData_Sprites_Room00C3
|09D7B6| dw RoomData_Sprites_Room00C4
|09D7B8| dw RoomData_Sprites_Room00C5
|09D7BA| dw RoomData_Sprites_Room00C6
|09D7BC| dw RoomData_Sprites_Empty
|09D7BE| dw RoomData_Sprites_Room00C8
|09D7C0| dw RoomData_Sprites_Room00C9
|09D7C2| dw RoomData_Sprites_Empty
|09D7C4| dw RoomData_Sprites_Room00CB
|09D7C6| dw RoomData_Sprites_Room00CC
|09D7C8| dw RoomData_Sprites_Empty
|09D7CA| dw RoomData_Sprites_Room00CE
|09D7CC| dw RoomData_Sprites_Empty
|09D7CE| dw RoomData_Sprites_Room00D0
|09D7D0| dw RoomData_Sprites_Room00D1
|09D7D2| dw RoomData_Sprites_Room00D2
|09D7D4| dw RoomData_Sprites_Empty
|09D7D6| dw RoomData_Sprites_Empty
|09D7D8| dw RoomData_Sprites_Room00D5
|09D7DA| dw RoomData_Sprites_Room00D6
|09D7DC| dw RoomData_Sprites_Empty
|09D7DE| dw RoomData_Sprites_Room00D8
|09D7E0| dw RoomData_Sprites_Room00D9
|09D7E2| dw RoomData_Sprites_Room00DA
|09D7E4| dw RoomData_Sprites_Room00DB
|09D7E6| dw RoomData_Sprites_Room00DC
|09D7E8| dw RoomData_Sprites_Empty
|09D7EA| dw RoomData_Sprites_Room00DE
|09D7EC| dw RoomData_Sprites_Room00DF
|09D7EE| dw RoomData_Sprites_Room00E0
|09D7F0| dw RoomData_Sprites_Room00E1
|09D7F2| dw RoomData_Sprites_Room00E2
|09D7F4| dw RoomData_Sprites_Room00E3
|09D7F6| dw RoomData_Sprites_Room00E4
|09D7F8| dw RoomData_Sprites_Room00E5
|09D7FA| dw RoomData_Sprites_Room00E6
|09D7FC| dw RoomData_Sprites_Room00E7
|09D7FE| dw RoomData_Sprites_Room00E8
|09D800| dw RoomData_Sprites_Empty
|09D802| dw RoomData_Sprites_Room00EA
|09D804| dw RoomData_Sprites_Room00EB
|09D806| dw RoomData_Sprites_Empty
|09D808| dw RoomData_Sprites_Empty
|09D80A| dw RoomData_Sprites_Room00EE
|09D80C| dw RoomData_Sprites_Room00EF
|09D80E| dw RoomData_Sprites_Room00F0
|09D810| dw RoomData_Sprites_Room00F1
|09D812| dw RoomData_Sprites_Empty
|09D814| dw RoomData_Sprites_Room00F3
|09D816| dw RoomData_Sprites_Room00F4
|09D818| dw RoomData_Sprites_Room00F5
|09D81A| dw RoomData_Sprites_Empty
|09D81C| dw RoomData_Sprites_Empty
|09D81E| dw RoomData_Sprites_Empty
|09D820| dw RoomData_Sprites_Room00F9
|09D822| dw RoomData_Sprites_Room00FA
|09D824| dw RoomData_Sprites_Room00FB
|09D826| dw RoomData_Sprites_Room00FC
|09D828| dw RoomData_Sprites_Room00FD
|09D82A| dw RoomData_Sprites_Room00FE
|09D82C| dw RoomData_Sprites_Room00FF
|09D82E| dw RoomData_Sprites_Room0100
|09D830| dw RoomData_Sprites_Room0101
|09D832| dw RoomData_Sprites_Room0102
|09D834| dw RoomData_Sprites_Room0103
|09D836| dw RoomData_Sprites_Room0104
|09D838| dw RoomData_Sprites_Room0105
|09D83A| dw RoomData_Sprites_Room0106
|09D83C| dw RoomData_Sprites_Room0107
|09D83E| dw RoomData_Sprites_Room0108
|09D840| dw RoomData_Sprites_Room0109
|09D842| dw RoomData_Sprites_Room010A
|09D844| dw RoomData_Sprites_Room010B
|09D846| dw RoomData_Sprites_Room010C
|09D848| dw RoomData_Sprites_Room010D
|09D84A| dw RoomData_Sprites_Room010E
|09D84C| dw RoomData_Sprites_Room010F
|09D84E| dw RoomData_Sprites_Room0110
|09D850| dw RoomData_Sprites_Room0111
|09D852| dw RoomData_Sprites_Room0112
|09D854| dw RoomData_Sprites_Empty
|09D856| dw RoomData_Sprites_Room0114
|09D858| dw RoomData_Sprites_Room0115
|09D85A| dw RoomData_Sprites_Room0116
|09D85C| dw RoomData_Sprites_Empty
|09D85E| dw RoomData_Sprites_Room0118
|09D860| dw RoomData_Sprites_Room0119
|09D862| dw RoomData_Sprites_Room011A
|09D864| dw RoomData_Sprites_Room011B
|09D866| dw RoomData_Sprites_Room011C
|09D868| dw RoomData_Sprites_Empty
|09D86A| dw RoomData_Sprites_Room011E
|09D86C| dw RoomData_Sprites_Room011F
|09D86E| dw RoomData_Sprites_Room0120
|09D870| dw RoomData_Sprites_Room0121
|09D872| dw RoomData_Sprites_Room0122
|09D874| dw RoomData_Sprites_Room0123
|09D876| dw RoomData_Sprites_Room0124
|09D878| dw RoomData_Sprites_Room0125
|09D87A| dw RoomData_Sprites_Room0126
|09D87C| dw RoomData_Sprites_Room0127
|09D87E| dw RoomData_Sprites_Empty
|09D880| dw RoomData_Sprites_Empty
|09D882| dw RoomData_Sprites_Empty
|09D884| dw RoomData_Sprites_Empty
|09D886| dw RoomData_Sprites_Empty
|09D888| dw RoomData_Sprites_Empty
|09D88A| dw RoomData_Sprites_Empty
|09D88C| dw RoomData_Sprites_Empty
|09D88E| dw RoomData_Sprites_Empty
|09D890| dw RoomData_Sprites_Empty
|09D892| dw RoomData_Sprites_Empty
|09D894| dw RoomData_Sprites_Empty
|09D896| dw RoomData_Sprites_Empty
|09D898| dw RoomData_Sprites_Empty
|09D89A| dw RoomData_Sprites_Empty
|09D89C| dw RoomData_Sprites_Empty
|09D89E| dw RoomData_Sprites_Empty
|09D8A0| dw RoomData_Sprites_Empty
|09D8A2| dw RoomData_Sprites_Empty
|09D8A4| dw RoomData_Sprites_Empty
|09D8A6| dw RoomData_Sprites_Empty
|09D8A8| dw RoomData_Sprites_Empty
|09D8AA| dw RoomData_Sprites_Empty
|09D8AC| dw RoomData_Sprites_Empty
|09D8AE| dw RoomData_Sprites_Empty
|09D8B0| dw RoomData_Sprites_Empty
|09D8B2| dw RoomData_Sprites_Empty
|09D8B4| dw RoomData_Sprites_Empty
|09D8B6| dw RoomData_Sprites_Empty
|09D8B8| dw RoomData_Sprites_Empty
|09D8BA| dw RoomData_Sprites_Empty
|09D8BC| dw RoomData_Sprites_Empty
|09D8BE| dw RoomData_Sprites_Empty
|09D8C0| dw RoomData_Sprites_Empty
|09D8C2| dw RoomData_Sprites_Empty
|09D8C4| dw RoomData_Sprites_Empty
|09D8C6| dw RoomData_Sprites_Empty
|09D8C8| dw RoomData_Sprites_Empty
|09D8CA| dw RoomData_Sprites_Empty
|09D8CC| dw RoomData_Sprites_Empty
|09D8CE| dw RoomData_Sprites_Empty
|09D8D0| dw RoomData_Sprites_Empty
|09D8D2| dw RoomData_Sprites_Empty
|09D8D4| dw RoomData_Sprites_Empty
|09D8D6| dw RoomData_Sprites_Empty
|09D8D8| dw RoomData_Sprites_Empty
|09D8DA| dw RoomData_Sprites_Empty
|09D8DC| dw RoomData_Sprites_Empty
|09D8DE| dw RoomData_Sprites_Empty
|09D8E0| dw RoomData_Sprites_Empty
|09D8E2| dw RoomData_Sprites_Empty
|09D8E4| dw RoomData_Sprites_Empty
|09D8E6| dw RoomData_Sprites_Empty
|09D8E8| dw RoomData_Sprites_Empty
|09D8EA| dw RoomData_Sprites_Empty
|09D8EC| dw RoomData_Sprites_Empty
|09D8EE| dw RoomData_Sprites_Empty
|09D8F0| dw RoomData_Sprites_Empty
|09D8F2| dw RoomData_Sprites_Empty
|09D8F4| dw RoomData_Sprites_Empty
|09D8F6| dw RoomData_Sprites_Empty
|09D8F8| dw RoomData_Sprites_Empty
|09D8FA| dw RoomData_Sprites_Empty
|09D8FC| dw RoomData_Sprites_Empty
|09D8FE| dw RoomData_Sprites_Empty
|09D900| dw RoomData_Sprites_Empty
|09D902| dw RoomData_Sprites_Empty
|09D904| dw RoomData_Sprites_Empty
|09D906| dw RoomData_Sprites_Empty
|09D908| dw RoomData_Sprites_Empty
|09D90A| dw RoomData_Sprites_Empty
|09D90C| dw RoomData_Sprites_Empty
|09D90E| dw RoomData_Sprites_Empty
|09D910| dw RoomData_Sprites_Empty
|09D912| dw RoomData_Sprites_Empty
|09D914| dw RoomData_Sprites_Empty
|09D916| dw RoomData_Sprites_Empty
|09D918| dw RoomData_Sprites_Empty
|09D91A| dw RoomData_Sprites_Empty
|09D91C| dw RoomData_Sprites_Empty
|09D91E| dw RoomData_Sprites_Empty
|09D920| dw RoomData_Sprites_Empty
|09D922| dw RoomData_Sprites_Empty
|09D924| dw RoomData_Sprites_Empty
|09D926| dw RoomData_Sprites_Empty
|09D928| dw RoomData_Sprites_Empty
|09D92A| dw RoomData_Sprites_Empty
|09D92C| dw RoomData_Sprites_Empty

;===================================================================================================

RoomData_Sprites_Room0000:
|09D92E| db $00 ; Unlayered OAM
|09D92F| db $05, $17, $D6 ; SPRITE D6   | xy: { 0x170, 0x050, U } | s: 0x00
|09D932| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0002:
|09D933| db $00 ; Unlayered OAM
|09D934| db $85, $12, $6D ; SPRITE 6D   | xy: { 0x120, 0x050, L } | s: 0x00
|09D937| db $86, $15, $6D ; SPRITE 6D   | xy: { 0x150, 0x060, L } | s: 0x00
|09D93A| db $88, $0F, $6D ; SPRITE 6D   | xy: { 0x0F0, 0x080, L } | s: 0x00
|09D93D| db $88, $10, $6D ; SPRITE 6D   | xy: { 0x100, 0x080, L } | s: 0x00
|09D940| db $89, $18, $6D ; SPRITE 6D   | xy: { 0x180, 0x090, L } | s: 0x00
|09D943| db $97, $EF, $06 ; OVERLORD 06 | xy: { 0x0F0, 0x170, L }
|09D946| db $98, $E9, $06 ; OVERLORD 06 | xy: { 0x090, 0x180, L }
|09D949| db $98, $EB, $06 ; OVERLORD 06 | xy: { 0x0B0, 0x180, L }
|09D94C| db $99, $EA, $06 ; OVERLORD 06 | xy: { 0x0A0, 0x190, L }
|09D94F| db $99, $EC, $06 ; OVERLORD 06 | xy: { 0x0C0, 0x190, L }
|09D952| db $9A, $E9, $06 ; OVERLORD 06 | xy: { 0x090, 0x1A0, L }
|09D955| db $9B, $EB, $06 ; OVERLORD 06 | xy: { 0x0B0, 0x1B0, L }
|09D958| db $97, $0A, $06 ; SPRITE 06   | xy: { 0x0A0, 0x170, L } | s: 0x00
|09D95B| db $97, $15, $04 ; SPRITE 04   | xy: { 0x150, 0x170, L } | s: 0x00
|09D95E| db $9A, $0D, $6D ; SPRITE 6D   | xy: { 0x0D0, 0x1A0, L } | s: 0x00
|09D961| db $9A, $12, $6D ; SPRITE 6D   | xy: { 0x120, 0x1A0, L } | s: 0x00
|09D964| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0004:
|09D965| db $00 ; Unlayered OAM
|09D966| db $04, $09, $1E ; SPRITE 1E   | xy: { 0x090, 0x040, U } | s: 0x00
|09D969| db $04, $14, $5D ; SPRITE 5D   | xy: { 0x140, 0x040, U } | s: 0x00
|09D96C| db $04, $1B, $60 ; SPRITE 60   | xy: { 0x1B0, 0x040, U } | s: 0x00
|09D96F| db $07, $05, $5F ; SPRITE 5F   | xy: { 0x050, 0x070, U } | s: 0x00
|09D972| db $09, $15, $5F ; SPRITE 5F   | xy: { 0x150, 0x090, U } | s: 0x00
|09D975| db $12, $E7, $16 ; OVERLORD 16 | xy: { 0x070, 0x120, U }
|09D978| db $15, $15, $04 ; SPRITE 04   | xy: { 0x150, 0x150, U } | s: 0x00
|09D97B| db $15, $1A, $06 ; SPRITE 06   | xy: { 0x1A0, 0x150, U } | s: 0x00
|09D97E| db $15, $F8, $1A ; OVERLORD 1A | xy: { 0x180, 0x150, U }
|09D981| db $15, $1C, $8F ; SPRITE 8F   | xy: { 0x1C0, 0x150, U } | s: 0x00
|09D984| db $17, $F6, $1A ; OVERLORD 1A | xy: { 0x160, 0x170, U }
|09D987| db $17, $FA, $1A ; OVERLORD 1A | xy: { 0x1A0, 0x170, U }
|09D98A| db $18, $F8, $1A ; OVERLORD 1A | xy: { 0x180, 0x180, U }
|09D98D| db $1A, $1A, $8F ; SPRITE 8F   | xy: { 0x1A0, 0x1A0, U } | s: 0x00
|09D990| db $1B, $15, $8F ; SPRITE 8F   | xy: { 0x150, 0x1B0, U } | s: 0x00
|09D993| db $18, $07, $C7 ; SPRITE C7   | xy: { 0x070, 0x180, U } | s: 0x00
|09D996| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0006:
|09D997| db $00 ; Unlayered OAM
|09D998| db $17, $07, $8C ; SPRITE 8C   | xy: { 0x070, 0x170, U } | s: 0x00
|09D99B| db $17, $07, $8D ; SPRITE 8D   | xy: { 0x070, 0x170, U } | s: 0x00
|09D99E| db $17, $07, $8D ; SPRITE 8D   | xy: { 0x070, 0x170, U } | s: 0x00
|09D9A1| db $17, $07, $8D ; SPRITE 8D   | xy: { 0x070, 0x170, U } | s: 0x00
|09D9A4| db $17, $07, $8D ; SPRITE 8D   | xy: { 0x070, 0x170, U } | s: 0x00
|09D9A7| db $17, $07, $8D ; SPRITE 8D   | xy: { 0x070, 0x170, U } | s: 0x00
|09D9AA| db $17, $07, $8D ; SPRITE 8D   | xy: { 0x070, 0x170, U } | s: 0x00
|09D9AD| db $17, $07, $8D ; SPRITE 8D   | xy: { 0x070, 0x170, U } | s: 0x00
|09D9B0| db $17, $07, $8D ; SPRITE 8D   | xy: { 0x070, 0x170, U } | s: 0x00
|09D9B3| db $17, $07, $8D ; SPRITE 8D   | xy: { 0x070, 0x170, U } | s: 0x00
|09D9B6| db $17, $07, $8D ; SPRITE 8D   | xy: { 0x070, 0x170, U } | s: 0x00
|09D9B9| db $17, $07, $8D ; SPRITE 8D   | xy: { 0x070, 0x170, U } | s: 0x00
|09D9BC| db $17, $07, $8D ; SPRITE 8D   | xy: { 0x070, 0x170, U } | s: 0x00
|09D9BF| db $17, $07, $8D ; SPRITE 8D   | xy: { 0x070, 0x170, U } | s: 0x00
|09D9C2| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0007:
|09D9C3| db $00 ; Unlayered OAM
|09D9C4| db $0E, $12, $09 ; SPRITE 09   | xy: { 0x120, 0x0E0, U } | s: 0x00
|09D9C7| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0008:
|09D9C8| db $00 ; Unlayered OAM
|09D9C9| db $16, $07, $C8 ; SPRITE C8   | xy: { 0x070, 0x160, U } | s: 0x00
|09D9CC| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0009:
|09D9CD| db $00 ; Unlayered OAM
|09D9CE| db $08, $07, $C5 ; SPRITE C5   | xy: { 0x070, 0x080, U } | s: 0x00
|09D9D1| db $08, $08, $C5 ; SPRITE C5   | xy: { 0x080, 0x080, U } | s: 0x00
|09D9D4| db $0B, $17, $15 ; SPRITE 15   | xy: { 0x170, 0x0B0, U } | s: 0x00
|09D9D7| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room000A:
|09D9D8| db $00 ; Unlayered OAM
|09D9D9| db $08, $17, $8E ; SPRITE 8E   | xy: { 0x170, 0x080, U } | s: 0x00
|09D9DC| db $09, $17, $8E ; SPRITE 8E   | xy: { 0x170, 0x090, U } | s: 0x00
|09D9DF| db $09, $ED, $05 ; OVERLORD 05 | xy: { 0x0D0, 0x090, U }
|09D9E2| db $09, $F1, $05 ; OVERLORD 05 | xy: { 0x110, 0x090, U }
|09D9E5| db $0B, $F3, $17 ; OVERLORD 17 | xy: { 0x130, 0x0B0, U }
|09D9E8| db $0E, $ED, $05 ; OVERLORD 05 | xy: { 0x0D0, 0x0E0, U }
|09D9EB| db $0E, $F1, $05 ; OVERLORD 05 | xy: { 0x110, 0x0E0, U }
|09D9EE| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room000B:
|09D9EF| db $00 ; Unlayered OAM
|09D9F0| db $04, $1C, $1E ; SPRITE 1E   | xy: { 0x1C0, 0x040, U } | s: 0x00
|09D9F3| db $08, $07, $8E ; SPRITE 8E   | xy: { 0x070, 0x080, U } | s: 0x00
|09D9F6| db $0B, $16, $8E ; SPRITE 8E   | xy: { 0x160, 0x0B0, U } | s: 0x00
|09D9F9| db $0B, $1B, $8E ; SPRITE 8E   | xy: { 0x1B0, 0x0B0, U } | s: 0x00
|09D9FC| db $16, $05, $8E ; SPRITE 8E   | xy: { 0x050, 0x160, U } | s: 0x00
|09D9FF| db $16, $0A, $8E ; SPRITE 8E   | xy: { 0x0A0, 0x160, U } | s: 0x00
|09DA02| db $19, $07, $8E ; SPRITE 8E   | xy: { 0x070, 0x190, U } | s: 0x00
|09DA05| db $19, $08, $8E ; SPRITE 8E   | xy: { 0x080, 0x190, U } | s: 0x00
|09DA08| db $1B, $06, $8E ; SPRITE 8E   | xy: { 0x060, 0x1B0, U } | s: 0x00
|09DA0B| db $1B, $09, $8E ; SPRITE 8E   | xy: { 0x090, 0x1B0, U } | s: 0x00
|09DA0E| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room000D:
|09DA0F| db $00 ; Unlayered OAM
|09DA10| db $15, $07, $7A ; SPRITE 7A   | xy: { 0x070, 0x150, U } | s: 0x00
|09DA13| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room000E:
|09DA14| db $00 ; Unlayered OAM
|09DA15| db $12, $16, $A1 ; SPRITE A1   | xy: { 0x160, 0x120, U } | s: 0x00
|09DA18| db $16, $05, $24 ; SPRITE 24   | xy: { 0x050, 0x160, U } | s: 0x00
|09DA1B| db $18, $05, $24 ; SPRITE 24   | xy: { 0x050, 0x180, U } | s: 0x00
|09DA1E| db $1A, $05, $24 ; SPRITE 24   | xy: { 0x050, 0x1A0, U } | s: 0x00
|09DA21| db $FE, $00, $E4 ; small key on above sprite
|09DA24| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0011:
|09DA25| db $00 ; Unlayered OAM
|09DA26| db $0A, $17, $6D ; SPRITE 6D   | xy: { 0x170, 0x0A0, U } | s: 0x00
|09DA29| db $0A, $18, $6D ; SPRITE 6D   | xy: { 0x180, 0x0A0, U } | s: 0x00
|09DA2C| db $0C, $17, $6F ; SPRITE 6F   | xy: { 0x170, 0x0C0, U } | s: 0x00
|09DA2F| db $0C, $18, $6F ; SPRITE 6F   | xy: { 0x180, 0x0C0, U } | s: 0x00
|09DA32| db $11, $1C, $6D ; SPRITE 6D   | xy: { 0x1C0, 0x110, U } | s: 0x00
|09DA35| db $12, $1C, $6D ; SPRITE 6D   | xy: { 0x1C0, 0x120, U } | s: 0x00
|09DA38| db $16, $1A, $6D ; SPRITE 6D   | xy: { 0x1A0, 0x160, U } | s: 0x00
|09DA3B| db $16, $1B, $6D ; SPRITE 6D   | xy: { 0x1B0, 0x160, U } | s: 0x00
|09DA3E| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0012:
|09DA3F| db $00 ; Unlayered OAM
|09DA40| db $07, $0F, $73 ; SPRITE 73   | xy: { 0x0F0, 0x070, U } | s: 0x00
|09DA43| db $06, $10, $76 ; SPRITE 76   | xy: { 0x100, 0x060, U } | s: 0x00
|09DA46| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0013:
|09DA47| db $00 ; Unlayered OAM
|09DA48| db $11, $14, $1E ; SPRITE 1E   | xy: { 0x140, 0x110, U } | s: 0x00
|09DA4B| db $04, $18, $15 ; SPRITE 15   | xy: { 0x180, 0x040, U } | s: 0x00
|09DA4E| db $04, $1A, $15 ; SPRITE 15   | xy: { 0x1A0, 0x040, U } | s: 0x00
|09DA51| db $05, $18, $15 ; SPRITE 15   | xy: { 0x180, 0x050, U } | s: 0x00
|09DA54| db $05, $1A, $15 ; SPRITE 15   | xy: { 0x1A0, 0x050, U } | s: 0x00
|09DA57| db $16, $1B, $7C ; SPRITE 7C   | xy: { 0x1B0, 0x160, U } | s: 0x00
|09DA5A| db $18, $16, $C7 ; SPRITE C7   | xy: { 0x160, 0x180, U } | s: 0x00
|09DA5D| db $FE, $00, $E4 ; small key on above sprite
|09DA60| db $18, $1E, $96 ; SPRITE 96   | xy: { 0x1E0, 0x180, U } | s: 0x00
|09DA63| db $1A, $14, $7C ; SPRITE 7C   | xy: { 0x140, 0x1A0, U } | s: 0x00
|09DA66| db $1B, $1B, $D1 ; SPRITE D1   | xy: { 0x1B0, 0x1B0, U } | s: 0x00
|09DA69| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0014:
|09DA6A| db $01 ; Layered OAM
|09DA6B| db $84, $0C, $B0 ; SPRITE B0   | xy: { 0x0C0, 0x040, L } | s: 0x00
|09DA6E| db $8A, $0F, $AF ; SPRITE AF   | xy: { 0x0F0, 0x0A0, L } | s: 0x00
|09DA71| db $8A, $19, $AE ; SPRITE AE   | xy: { 0x190, 0x0A0, L } | s: 0x00
|09DA74| db $8D, $03, $AE ; SPRITE AE   | xy: { 0x030, 0x0D0, L } | s: 0x00
|09DA77| db $8D, $1B, $AE ; SPRITE AE   | xy: { 0x1B0, 0x0D0, L } | s: 0x00
|09DA7A| db $93, $0F, $AE ; SPRITE AE   | xy: { 0x0F0, 0x130, L } | s: 0x00
|09DA7D| db $98, $08, $B0 ; SPRITE B0   | xy: { 0x080, 0x180, L } | s: 0x00
|09DA80| db $98, $17, $B1 ; SPRITE B1   | xy: { 0x170, 0x180, L } | s: 0x00
|09DA83| db $9B, $0C, $B0 ; SPRITE B0   | xy: { 0x0C0, 0x1B0, L } | s: 0x00
|09DA86| db $9B, $13, $B1 ; SPRITE B1   | xy: { 0x130, 0x1B0, L } | s: 0x00
|09DA89| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0015:
|09DA8A| db $01 ; Layered OAM
|09DA8B| db $8C, $04, $AE ; SPRITE AE   | xy: { 0x040, 0x0C0, L } | s: 0x00
|09DA8E| db $91, $11, $AE ; SPRITE AE   | xy: { 0x110, 0x110, L } | s: 0x00
|09DA91| db $97, $04, $AF ; SPRITE AF   | xy: { 0x040, 0x170, L } | s: 0x00
|09DA94| db $9B, $16, $B1 ; SPRITE B1   | xy: { 0x160, 0x1B0, L } | s: 0x00
|09DA97| db $89, $0A, $8F ; SPRITE 8F   | xy: { 0x0A0, 0x090, L } | s: 0x00
|09DA9A| db $89, $15, $8F ; SPRITE 8F   | xy: { 0x150, 0x090, L } | s: 0x00
|09DA9D| db $8A, $09, $15 ; SPRITE 15   | xy: { 0x090, 0x0A0, L } | s: 0x00
|09DAA0| db $96, $18, $C7 ; SPRITE C7   | xy: { 0x180, 0x160, L } | s: 0x00
|09DAA3| db $97, $08, $15 ; SPRITE 15   | xy: { 0x080, 0x170, L } | s: 0x00
|09DAA6| db $97, $17, $15 ; SPRITE 15   | xy: { 0x170, 0x170, L } | s: 0x00
|09DAA9| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0016:
|09DAAA| db $00 ; Unlayered OAM
|09DAAB| db $07, $15, $8F ; SPRITE 8F   | xy: { 0x150, 0x070, U } | s: 0x00
|09DAAE| db $08, $15, $8F ; SPRITE 8F   | xy: { 0x150, 0x080, U } | s: 0x00
|09DAB1| db $09, $15, $24 ; SPRITE 24   | xy: { 0x150, 0x090, U } | s: 0x00
|09DAB4| db $0A, $10, $8F ; SPRITE 8F   | xy: { 0x100, 0x0A0, U } | s: 0x00
|09DAB7| db $98, $0C, $81 ; SPRITE 81   | xy: { 0x0C0, 0x180, L } | s: 0x00
|09DABA| db $9B, $07, $81 ; SPRITE 81   | xy: { 0x070, 0x1B0, L } | s: 0x00
|09DABD| db $9B, $14, $81 ; SPRITE 81   | xy: { 0x140, 0x1B0, L } | s: 0x00
|09DAC0| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0017:
|09DAC1| db $00 ; Unlayered OAM
|09DAC2| db $0B, $07, $93 ; SPRITE 93   | xy: { 0x070, 0x0B0, U } | s: 0x00
|09DAC5| db $0E, $10, $93 ; SPRITE 93   | xy: { 0x100, 0x0E0, U } | s: 0x00
|09DAC8| db $16, $07, $93 ; SPRITE 93   | xy: { 0x070, 0x160, U } | s: 0x00
|09DACB| db $07, $15, $26 ; SPRITE 26   | xy: { 0x150, 0x070, U } | s: 0x00
|09DACE| db $09, $0B, $26 ; SPRITE 26   | xy: { 0x0B0, 0x090, U } | s: 0x00
|09DAD1| db $11, $06, $7E ; SPRITE 7E   | xy: { 0x060, 0x110, U } | s: 0x00
|09DAD4| db $11, $12, $26 ; SPRITE 26   | xy: { 0x120, 0x110, U } | s: 0x00
|09DAD7| db $17, $0B, $26 ; SPRITE 26   | xy: { 0x0B0, 0x170, U } | s: 0x00
|09DADA| db $17, $17, $26 ; SPRITE 26   | xy: { 0x170, 0x170, U } | s: 0x00
|09DADD| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0019:
|09DADE| db $00 ; Unlayered OAM
|09DADF| db $0A, $16, $86 ; SPRITE 86   | xy: { 0x160, 0x0A0, U } | s: 0x00
|09DAE2| db $0E, $1A, $86 ; SPRITE 86   | xy: { 0x1A0, 0x0E0, U } | s: 0x00
|09DAE5| db $10, $16, $86 ; SPRITE 86   | xy: { 0x160, 0x100, U } | s: 0x00
|09DAE8| db $16, $18, $86 ; SPRITE 86   | xy: { 0x180, 0x160, U } | s: 0x00
|09DAEB| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room001A:
|09DAEC| db $00 ; Unlayered OAM
|09DAED| db $06, $08, $13 ; SPRITE 13   | xy: { 0x080, 0x060, U } | s: 0x00
|09DAF0| db $06, $16, $8E ; SPRITE 8E   | xy: { 0x160, 0x060, U } | s: 0x00
|09DAF3| db $06, $19, $8E ; SPRITE 8E   | xy: { 0x190, 0x060, U } | s: 0x00
|09DAF6| db $0A, $16, $8E ; SPRITE 8E   | xy: { 0x160, 0x0A0, U } | s: 0x00
|09DAF9| db $0A, $19, $8E ; SPRITE 8E   | xy: { 0x190, 0x0A0, U } | s: 0x00
|09DAFC| db $10, $07, $13 ; SPRITE 13   | xy: { 0x070, 0x100, U } | s: 0x00
|09DAFF| db $15, $16, $8A ; SPRITE 8A   | xy: { 0x160, 0x150, U } | s: 0x00
|09DB02| db $17, $16, $8A ; SPRITE 8A   | xy: { 0x160, 0x170, U } | s: 0x00
|09DB05| db $19, $15, $1C ; SPRITE 1C   | xy: { 0x150, 0x190, U } | s: 0x00
|09DB08| db $19, $16, $8A ; SPRITE 8A   | xy: { 0x160, 0x190, U } | s: 0x00
|09DB0B| db $1A, $E7, $0B ; OVERLORD 0B | xy: { 0x070, 0x1A0, U }
|09DB0E| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room001B:
|09DB0F| db $00 ; Unlayered OAM
|09DB10| db $04, $07, $1E ; SPRITE 1E   | xy: { 0x070, 0x040, U } | s: 0x00
|09DB13| db $04, $10, $38 ; SPRITE 38   | xy: { 0x100, 0x040, U } | s: 0x00
|09DB16| db $0C, $03, $8A ; SPRITE 8A   | xy: { 0x030, 0x0C0, U } | s: 0x00
|09DB19| db $14, $07, $84 ; SPRITE 84   | xy: { 0x070, 0x140, U } | s: 0x00
|09DB1C| db $1C, $03, $83 ; SPRITE 83   | xy: { 0x030, 0x1C0, U } | s: 0x00
|09DB1F| db $1C, $0C, $83 ; SPRITE 83   | xy: { 0x0C0, 0x1C0, U } | s: 0x00
|09DB22| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room001C:
|09DB23| db $00 ; Unlayered OAM
|09DB24| db $15, $14, $53 ; SPRITE 53   | xy: { 0x140, 0x150, U } | s: 0x00
|09DB27| db $15, $17, $53 ; SPRITE 53   | xy: { 0x170, 0x150, U } | s: 0x00
|09DB2A| db $15, $1A, $53 ; SPRITE 53   | xy: { 0x1A0, 0x150, U } | s: 0x00
|09DB2D| db $18, $1A, $53 ; SPRITE 53   | xy: { 0x1A0, 0x180, U } | s: 0x00
|09DB30| db $18, $17, $53 ; SPRITE 53   | xy: { 0x170, 0x180, U } | s: 0x00
|09DB33| db $18, $14, $53 ; SPRITE 53   | xy: { 0x140, 0x180, U } | s: 0x00
|09DB36| db $18, $F7, $19 ; OVERLORD 19 | xy: { 0x170, 0x180, U }
|09DB39| db $07, $07, $E3 ; SPRITE E3   | xy: { 0x070, 0x070, U } | s: 0x00
|09DB3C| db $07, $08, $E3 ; SPRITE E3   | xy: { 0x080, 0x070, U } | s: 0x00
|09DB3F| db $08, $07, $E3 ; SPRITE E3   | xy: { 0x070, 0x080, U } | s: 0x00
|09DB42| db $08, $08, $E3 ; SPRITE E3   | xy: { 0x080, 0x080, U } | s: 0x00
|09DB45| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room001E:
|09DB46| db $00 ; Unlayered OAM
|09DB47| db $09, $1A, $1E ; SPRITE 1E   | xy: { 0x1A0, 0x090, U } | s: 0x00
|09DB4A| db $05, $16, $23 ; SPRITE 23   | xy: { 0x160, 0x050, U } | s: 0x00
|09DB4D| db $05, $19, $23 ; SPRITE 23   | xy: { 0x190, 0x050, U } | s: 0x00
|09DB50| db $0A, $16, $23 ; SPRITE 23   | xy: { 0x160, 0x0A0, U } | s: 0x00
|09DB53| db $0A, $19, $23 ; SPRITE 23   | xy: { 0x190, 0x0A0, U } | s: 0x00
|09DB56| db $18, $08, $8F ; SPRITE 8F   | xy: { 0x080, 0x180, U } | s: 0x00
|09DB59| db $1C, $05, $8F ; SPRITE 8F   | xy: { 0x050, 0x1C0, U } | s: 0x00
|09DB5C| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room001F:
|09DB5D| db $00 ; Unlayered OAM
|09DB5E| db $15, $04, $99 ; SPRITE 99   | xy: { 0x040, 0x150, U } | s: 0x00
|09DB61| db $15, $09, $99 ; SPRITE 99   | xy: { 0x090, 0x150, U } | s: 0x00
|09DB64| db $16, $06, $15 ; SPRITE 15   | xy: { 0x060, 0x160, U } | s: 0x00
|09DB67| db $17, $07, $D1 ; SPRITE D1   | xy: { 0x070, 0x170, U } | s: 0x00
|09DB6A| db $17, $0A, $99 ; SPRITE 99   | xy: { 0x0A0, 0x170, U } | s: 0x00
|09DB6D| db $19, $0A, $99 ; SPRITE 99   | xy: { 0x0A0, 0x190, U } | s: 0x00
|09DB70| db $1B, $04, $99 ; SPRITE 99   | xy: { 0x040, 0x1B0, U } | s: 0x00
|09DB73| db $1B, $09, $99 ; SPRITE 99   | xy: { 0x090, 0x1B0, U } | s: 0x00
|09DB76| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0020:
|09DB77| db $00 ; Unlayered OAM
|09DB78| db $15, $07, $7A ; SPRITE 7A   | xy: { 0x070, 0x150, U } | s: 0x00
|09DB7B| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0021:
|09DB7C| db $00 ; Unlayered OAM
|09DB7D| db $06, $05, $6D ; SPRITE 6D   | xy: { 0x050, 0x060, U } | s: 0x00
|09DB80| db $FE, $00, $E4 ; small key on above sprite
|09DB83| db $06, $17, $6F ; SPRITE 6F   | xy: { 0x170, 0x060, U } | s: 0x00
|09DB86| db $06, $18, $6F ; SPRITE 6F   | xy: { 0x180, 0x060, U } | s: 0x00
|09DB89| db $09, $11, $6D ; SPRITE 6D   | xy: { 0x110, 0x090, U } | s: 0x00
|09DB8C| db $0A, $0D, $6D ; SPRITE 6D   | xy: { 0x0D0, 0x0A0, U } | s: 0x00
|09DB8F| db $14, $07, $6D ; SPRITE 6D   | xy: { 0x070, 0x140, U } | s: 0x00
|09DB92| db $14, $0D, $6F ; SPRITE 6F   | xy: { 0x0D0, 0x140, U } | s: 0x00
|09DB95| db $14, $12, $6F ; SPRITE 6F   | xy: { 0x120, 0x140, U } | s: 0x00
|09DB98| db $18, $0D, $6D ; SPRITE 6D   | xy: { 0x0D0, 0x180, U } | s: 0x00
|09DB9B| db $1C, $0A, $6D ; SPRITE 6D   | xy: { 0x0A0, 0x1C0, U } | s: 0x00
|09DB9E| db $1C, $13, $6D ; SPRITE 6D   | xy: { 0x130, 0x1C0, U } | s: 0x00
|09DBA1| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0022:
|09DBA2| db $00 ; Unlayered OAM
|09DBA3| db $14, $06, $6D ; SPRITE 6D   | xy: { 0x060, 0x140, U } | s: 0x00
|09DBA6| db $14, $08, $6D ; SPRITE 6D   | xy: { 0x080, 0x140, U } | s: 0x00
|09DBA9| db $14, $11, $6D ; SPRITE 6D   | xy: { 0x110, 0x140, U } | s: 0x00
|09DBAC| db $14, $12, $6D ; SPRITE 6D   | xy: { 0x120, 0x140, U } | s: 0x00
|09DBAF| db $15, $11, $6D ; SPRITE 6D   | xy: { 0x110, 0x150, U } | s: 0x00
|09DBB2| db $15, $12, $6D ; SPRITE 6D   | xy: { 0x120, 0x150, U } | s: 0x00
|09DBB5| db $18, $09, $6D ; SPRITE 6D   | xy: { 0x090, 0x180, U } | s: 0x00
|09DBB8| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0023:
|09DBB9| db $00 ; Unlayered OAM
|09DBBA| db $14, $15, $97 ; SPRITE 97   | xy: { 0x150, 0x140, U } | s: 0x00
|09DBBD| db $14, $16, $97 ; SPRITE 97   | xy: { 0x160, 0x140, U } | s: 0x00
|09DBC0| db $14, $17, $97 ; SPRITE 97   | xy: { 0x170, 0x140, U } | s: 0x00
|09DBC3| db $14, $18, $97 ; SPRITE 97   | xy: { 0x180, 0x140, U } | s: 0x00
|09DBC6| db $14, $19, $97 ; SPRITE 97   | xy: { 0x190, 0x140, U } | s: 0x00
|09DBC9| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0024:
|09DBCA| db $00 ; Unlayered OAM
|09DBCB| db $04, $13, $C5 ; SPRITE C5   | xy: { 0x130, 0x040, U } | s: 0x00
|09DBCE| db $04, $1C, $C5 ; SPRITE C5   | xy: { 0x1C0, 0x040, U } | s: 0x00
|09DBD1| db $06, $1B, $60 ; SPRITE 60   | xy: { 0x1B0, 0x060, U } | s: 0x00
|09DBD4| db $08, $05, $C7 ; SPRITE C7   | xy: { 0x050, 0x080, U } | s: 0x00
|09DBD7| db $08, $07, $C5 ; SPRITE C5   | xy: { 0x070, 0x080, U } | s: 0x00
|09DBDA| db $08, $0A, $C7 ; SPRITE C7   | xy: { 0x0A0, 0x080, U } | s: 0x00
|09DBDD| db $0C, $0C, $D1 ; SPRITE D1   | xy: { 0x0C0, 0x0C0, U } | s: 0x00
|09DBE0| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0025:
|09DBE1| db $00 ; Unlayered OAM
|09DBE2| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0026:
|09DBE3| db $00 ; Unlayered OAM
|09DBE4| db $04, $03, $C5 ; SPRITE C5   | xy: { 0x030, 0x040, U } | s: 0x00
|09DBE7| db $05, $1A, $23 ; SPRITE 23   | xy: { 0x1A0, 0x050, U } | s: 0x00
|09DBEA| db $06, $05, $23 ; SPRITE 23   | xy: { 0x050, 0x060, U } | s: 0x00
|09DBED| db $06, $09, $A7 ; SPRITE A7   | xy: { 0x090, 0x060, U } | s: 0x00
|09DBF0| db $09, $04, $A7 ; SPRITE A7   | xy: { 0x040, 0x090, U } | s: 0x00
|09DBF3| db $0C, $0C, $C5 ; SPRITE C5   | xy: { 0x0C0, 0x0C0, U } | s: 0x00
|09DBF6| db $17, $06, $1C ; SPRITE 1C   | xy: { 0x060, 0x170, U } | s: 0x00
|09DBF9| db $17, $19, $C6 ; SPRITE C6   | xy: { 0x190, 0x170, U } | s: 0x00
|09DBFC| db $18, $07, $23 ; SPRITE 23   | xy: { 0x070, 0x180, U } | s: 0x00
|09DBFF| db $18, $15, $9A ; SPRITE 9A   | xy: { 0x150, 0x180, U } | s: 0x00
|09DC02| db $19, $18, $24 ; SPRITE 24   | xy: { 0x180, 0x190, U } | s: 0x00
|09DC05| db $1A, $1C, $80 ; SPRITE 80   | xy: { 0x1C0, 0x1A0, U } | s: 0x00
|09DC08| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0027:
|09DC09| db $00 ; Unlayered OAM
|09DC0A| db $09, $17, $18 ; SPRITE 18   | xy: { 0x170, 0x090, U } | s: 0x00
|09DC0D| db $13, $18, $18 ; SPRITE 18   | xy: { 0x180, 0x130, U } | s: 0x00
|09DC10| db $13, $1B, $18 ; SPRITE 18   | xy: { 0x1B0, 0x130, U } | s: 0x00
|09DC13| db $1A, $0C, $18 ; SPRITE 18   | xy: { 0x0C0, 0x1A0, U } | s: 0x00
|09DC16| db $06, $0F, $5B ; SPRITE 5B   | xy: { 0x0F0, 0x060, U } | s: 0x00
|09DC19| db $0E, $05, $86 ; SPRITE 86   | xy: { 0x050, 0x0E0, U } | s: 0x00
|09DC1C| db $16, $04, $86 ; SPRITE 86   | xy: { 0x040, 0x160, U } | s: 0x00
|09DC1F| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0028:
|09DC20| db $00 ; Unlayered OAM
|09DC21| db $06, $0A, $9A ; SPRITE 9A   | xy: { 0x0A0, 0x060, U } | s: 0x00
|09DC24| db $08, $08, $81 ; SPRITE 81   | xy: { 0x080, 0x080, U } | s: 0x00
|09DC27| db $0A, $0B, $81 ; SPRITE 81   | xy: { 0x0B0, 0x0A0, U } | s: 0x00
|09DC2A| db $0D, $07, $81 ; SPRITE 81   | xy: { 0x070, 0x0D0, U } | s: 0x00
|09DC2D| db $10, $08, $8A ; SPRITE 8A   | xy: { 0x080, 0x100, U } | s: 0x00
|09DC30| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0029:
|09DC31| db $00 ; Unlayered OAM
|09DC32| db $16, $18, $88 ; SPRITE 88   | xy: { 0x180, 0x160, U } | s: 0x00
|09DC35| db $16, $E7, $07 ; OVERLORD 07 | xy: { 0x070, 0x160, U }
|09DC38| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room002A:
|09DC39| db $00 ; Unlayered OAM
|09DC3A| db $17, $10, $1E ; SPRITE 1E   | xy: { 0x100, 0x170, U } | s: 0x00
|09DC3D| db $0F, $0F, $93 ; SPRITE 93   | xy: { 0x0F0, 0x0F0, U } | s: 0x00
|09DC40| db $08, $0D, $26 ; SPRITE 26   | xy: { 0x0D0, 0x080, U } | s: 0x00
|09DC43| db $0C, $07, $26 ; SPRITE 26   | xy: { 0x070, 0x0C0, U } | s: 0x00
|09DC46| db $0C, $10, $26 ; SPRITE 26   | xy: { 0x100, 0x0C0, U } | s: 0x00
|09DC49| db $0F, $0D, $26 ; SPRITE 26   | xy: { 0x0D0, 0x0F0, U } | s: 0x00
|09DC4C| db $11, $13, $26 ; SPRITE 26   | xy: { 0x130, 0x110, U } | s: 0x00
|09DC4F| db $13, $0F, $26 ; SPRITE 26   | xy: { 0x0F0, 0x130, U } | s: 0x00
|09DC52| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room002B:
|09DC53| db $00 ; Unlayered OAM
|09DC54| db $11, $0A, $1E ; SPRITE 1E   | xy: { 0x0A0, 0x110, U } | s: 0x00
|09DC57| db $0A, $0A, $1C ; SPRITE 1C   | xy: { 0x0A0, 0x0A0, U } | s: 0x00
|09DC5A| db $17, $07, $23 ; SPRITE 23   | xy: { 0x070, 0x170, U } | s: 0x00
|09DC5D| db $17, $16, $E3 ; SPRITE E3   | xy: { 0x160, 0x170, U } | s: 0x00
|09DC60| db $18, $18, $E3 ; SPRITE E3   | xy: { 0x180, 0x180, U } | s: 0x00
|09DC63| db $1A, $05, $23 ; SPRITE 23   | xy: { 0x050, 0x1A0, U } | s: 0x00
|09DC66| db $1A, $0A, $23 ; SPRITE 23   | xy: { 0x0A0, 0x1A0, U } | s: 0x00
|09DC69| db $1A, $17, $E3 ; SPRITE E3   | xy: { 0x170, 0x1A0, U } | s: 0x00
|09DC6C| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room002C:
|09DC6D| db $00 ; Unlayered OAM
|09DC6E| db $05, $17, $C8 ; SPRITE C8   | xy: { 0x170, 0x050, U } | s: 0x00
|09DC71| db $04, $09, $E3 ; SPRITE E3   | xy: { 0x090, 0x040, U } | s: 0x00
|09DC74| db $05, $06, $E3 ; SPRITE E3   | xy: { 0x060, 0x050, U } | s: 0x00
|09DC77| db $07, $08, $E3 ; SPRITE E3   | xy: { 0x080, 0x070, U } | s: 0x00
|09DC7A| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room002E:
|09DC7B| db $00 ; Unlayered OAM
|09DC7C| db $06, $14, $99 ; SPRITE 99   | xy: { 0x140, 0x060, U } | s: 0x00
|09DC7F| db $06, $1C, $99 ; SPRITE 99   | xy: { 0x1C0, 0x060, U } | s: 0x00
|09DC82| db $08, $16, $99 ; SPRITE 99   | xy: { 0x160, 0x080, U } | s: 0x00
|09DC85| db $08, $19, $99 ; SPRITE 99   | xy: { 0x190, 0x080, U } | s: 0x00
|09DC88| db $0B, $14, $99 ; SPRITE 99   | xy: { 0x140, 0x0B0, U } | s: 0x00
|09DC8B| db $0B, $1B, $99 ; SPRITE 99   | xy: { 0x1B0, 0x0B0, U } | s: 0x00
|09DC8E| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0030:
|09DC8F| db $00 ; Unlayered OAM
|09DC90| db $05, $07, $C1 ; SPRITE C1   | xy: { 0x070, 0x050, U } | s: 0x00
|09DC93| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0031:
|09DC94| db $00 ; Unlayered OAM
|09DC95| db $1A, $18, $1E ; SPRITE 1E   | xy: { 0x180, 0x1A0, U } | s: 0x00
|09DC98| db $0B, $16, $1E ; SPRITE 1E   | xy: { 0x160, 0x0B0, U } | s: 0x00
|09DC9B| db $05, $15, $26 ; SPRITE 26   | xy: { 0x150, 0x050, U } | s: 0x00
|09DC9E| db $06, $05, $26 ; SPRITE 26   | xy: { 0x050, 0x060, U } | s: 0x00
|09DCA1| db $09, $03, $26 ; SPRITE 26   | xy: { 0x030, 0x090, U } | s: 0x00
|09DCA4| db $0C, $0B, $26 ; SPRITE 26   | xy: { 0x0B0, 0x0C0, U } | s: 0x00
|09DCA7| db $15, $03, $26 ; SPRITE 26   | xy: { 0x030, 0x150, U } | s: 0x00
|09DCAA| db $15, $1B, $26 ; SPRITE 26   | xy: { 0x1B0, 0x150, U } | s: 0x00
|09DCAD| db $16, $13, $26 ; SPRITE 26   | xy: { 0x130, 0x160, U } | s: 0x00
|09DCB0| db $18, $03, $26 ; SPRITE 26   | xy: { 0x030, 0x180, U } | s: 0x00
|09DCB3| db $19, $17, $26 ; SPRITE 26   | xy: { 0x170, 0x190, U } | s: 0x00
|09DCB6| db $1C, $09, $26 ; SPRITE 26   | xy: { 0x090, 0x1C0, U } | s: 0x00
|09DCB9| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0032:
|09DCBA| db $00 ; Unlayered OAM
|09DCBB| db $0D, $0B, $6F ; SPRITE 6F   | xy: { 0x0B0, 0x0D0, U } | s: 0x00
|09DCBE| db $0D, $0F, $6E ; SPRITE 6E   | xy: { 0x0F0, 0x0D0, U } | s: 0x00
|09DCC1| db $0D, $13, $6F ; SPRITE 6F   | xy: { 0x130, 0x0D0, U } | s: 0x00
|09DCC4| db $0E, $10, $6E ; SPRITE 6E   | xy: { 0x100, 0x0E0, U } | s: 0x00
|09DCC7| db $0F, $12, $6E ; SPRITE 6E   | xy: { 0x120, 0x0F0, U } | s: 0x00
|09DCCA| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0033:
|09DCCB| db $00 ; Unlayered OAM
|09DCCC| db $17, $06, $54 ; SPRITE 54   | xy: { 0x060, 0x170, U } | s: 0x00
|09DCCF| db $17, $09, $54 ; SPRITE 54   | xy: { 0x090, 0x170, U } | s: 0x00
|09DCD2| db $19, $07, $54 ; SPRITE 54   | xy: { 0x070, 0x190, U } | s: 0x00
|09DCD5| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0034:
|09DCD6| db $00 ; Unlayered OAM
|09DCD7| db $0B, $0F, $81 ; SPRITE 81   | xy: { 0x0F0, 0x0B0, U } | s: 0x00
|09DCDA| db $12, $10, $81 ; SPRITE 81   | xy: { 0x100, 0x120, U } | s: 0x00
|09DCDD| db $15, $0F, $9A ; SPRITE 9A   | xy: { 0x0F0, 0x150, U } | s: 0x00
|09DCE0| db $17, $19, $80 ; SPRITE 80   | xy: { 0x190, 0x170, U } | s: 0x00
|09DCE3| db $18, $03, $8F ; SPRITE 8F   | xy: { 0x030, 0x180, U } | s: 0x00
|09DCE6| db $18, $14, $24 ; SPRITE 24   | xy: { 0x140, 0x180, U } | s: 0x00
|09DCE9| db $1A, $16, $A7 ; SPRITE A7   | xy: { 0x160, 0x1A0, U } | s: 0x00
|09DCEC| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0035:
|09DCED| db $00 ; Unlayered OAM
|09DCEE| db $06, $16, $1E ; SPRITE 1E   | xy: { 0x160, 0x060, U } | s: 0x00
|09DCF1| db $05, $14, $21 ; SPRITE 21   | xy: { 0x140, 0x050, U } | s: 0x00
|09DCF4| db $05, $18, $23 ; SPRITE 23   | xy: { 0x180, 0x050, U } | s: 0x00
|09DCF7| db $09, $13, $8A ; SPRITE 8A   | xy: { 0x130, 0x090, U } | s: 0x00
|09DCFA| db $0B, $14, $A7 ; SPRITE A7   | xy: { 0x140, 0x0B0, U } | s: 0x00
|09DCFD| db $14, $07, $8F ; SPRITE 8F   | xy: { 0x070, 0x140, U } | s: 0x00
|09DD00| db $18, $14, $A7 ; SPRITE A7   | xy: { 0x140, 0x180, U } | s: 0x00
|09DD03| db $19, $16, $80 ; SPRITE 80   | xy: { 0x160, 0x190, U } | s: 0x00
|09DD06| db $1A, $17, $C6 ; SPRITE C6   | xy: { 0x170, 0x1A0, U } | s: 0x00
|09DD09| db $1B, $14, $24 ; SPRITE 24   | xy: { 0x140, 0x1B0, U } | s: 0x00
|09DD0C| db $1C, $1B, $A7 ; SPRITE A7   | xy: { 0x1B0, 0x1C0, U } | s: 0x00
|09DD0F| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0036:
|09DD10| db $00 ; Unlayered OAM
|09DD11| db $02, $F7, $12 ; OVERLORD 12 | xy: { 0x170, 0x020, U }
|09DD14| db $0A, $0B, $81 ; SPRITE 81   | xy: { 0x0B0, 0x0A0, U } | s: 0x00
|09DD17| db $0A, $14, $81 ; SPRITE 81   | xy: { 0x140, 0x0A0, U } | s: 0x00
|09DD1A| db $0B, $15, $C5 ; SPRITE C5   | xy: { 0x150, 0x0B0, U } | s: 0x00
|09DD1D| db $0D, $E1, $10 ; OVERLORD 10 | xy: { 0x010, 0x0D0, U }
|09DD20| db $13, $14, $9A ; SPRITE 9A   | xy: { 0x140, 0x130, U } | s: 0x00
|09DD23| db $13, $FE, $11 ; OVERLORD 11 | xy: { 0x1E0, 0x130, U }
|09DD26| db $14, $09, $81 ; SPRITE 81   | xy: { 0x090, 0x140, U } | s: 0x00
|09DD29| db $17, $12, $81 ; SPRITE 81   | xy: { 0x120, 0x170, U } | s: 0x00
|09DD2C| db $1E, $EA, $13 ; OVERLORD 13 | xy: { 0x0A0, 0x1E0, U }
|09DD2F| db $1E, $F4, $13 ; OVERLORD 13 | xy: { 0x140, 0x1E0, U }
|09DD32| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0037:
|09DD33| db $00 ; Unlayered OAM
|09DD34| db $04, $0B, $21 ; SPRITE 21   | xy: { 0x0B0, 0x040, U } | s: 0x00
|09DD37| db $06, $05, $A7 ; SPRITE A7   | xy: { 0x050, 0x060, U } | s: 0x00
|09DD3A| db $08, $17, $8F ; SPRITE 8F   | xy: { 0x170, 0x080, U } | s: 0x00
|09DD3D| db $08, $1A, $8F ; SPRITE 8F   | xy: { 0x1A0, 0x080, U } | s: 0x00
|09DD40| db $09, $0C, $A7 ; SPRITE A7   | xy: { 0x0C0, 0x090, U } | s: 0x00
|09DD43| db $14, $15, $80 ; SPRITE 80   | xy: { 0x150, 0x140, U } | s: 0x00
|09DD46| db $17, $17, $A7 ; SPRITE A7   | xy: { 0x170, 0x170, U } | s: 0x00
|09DD49| db $19, $13, $24 ; SPRITE 24   | xy: { 0x130, 0x190, U } | s: 0x00
|09DD4C| db $1A, $17, $C6 ; SPRITE C6   | xy: { 0x170, 0x1A0, U } | s: 0x00
|09DD4F| db $1C, $15, $23 ; SPRITE 23   | xy: { 0x150, 0x1C0, U } | s: 0x00
|09DD52| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0038:
|09DD53| db $00 ; Unlayered OAM
|09DD54| db $06, $0C, $81 ; SPRITE 81   | xy: { 0x0C0, 0x060, U } | s: 0x00
|09DD57| db $0A, $07, $81 ; SPRITE 81   | xy: { 0x070, 0x0A0, U } | s: 0x00
|09DD5A| db $0C, $0C, $9A ; SPRITE 9A   | xy: { 0x0C0, 0x0C0, U } | s: 0x00
|09DD5D| db $10, $0C, $C5 ; SPRITE C5   | xy: { 0x0C0, 0x100, U } | s: 0x00
|09DD60| db $14, $06, $9A ; SPRITE 9A   | xy: { 0x060, 0x140, U } | s: 0x00
|09DD63| db $18, $0C, $9A ; SPRITE 9A   | xy: { 0x0C0, 0x180, U } | s: 0x00
|09DD66| db $1A, $07, $81 ; SPRITE 81   | xy: { 0x070, 0x1A0, U } | s: 0x00
|09DD69| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0039:
|09DD6A| db $00 ; Unlayered OAM
|09DD6B| db $18, $04, $18 ; SPRITE 18   | xy: { 0x040, 0x180, U } | s: 0x00
|09DD6E| db $0F, $EF, $09 ; OVERLORD 09 | xy: { 0x0F0, 0x0F0, U }
|09DD71| db $15, $05, $8B ; SPRITE 8B   | xy: { 0x050, 0x150, U } | s: 0x00
|09DD74| db $FE, $00, $E4 ; small key on above sprite
|09DD77| db $15, $09, $13 ; SPRITE 13   | xy: { 0x090, 0x150, U } | s: 0x00
|09DD7A| db $16, $17, $8A ; SPRITE 8A   | xy: { 0x170, 0x160, U } | s: 0x00
|09DD7D| db $18, $0B, $26 ; SPRITE 26   | xy: { 0x0B0, 0x180, U } | s: 0x00
|09DD80| db $1A, $17, $8A ; SPRITE 8A   | xy: { 0x170, 0x1A0, U } | s: 0x00
|09DD83| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room003A:
|09DD84| db $00 ; Unlayered OAM
|09DD85| db $11, $0E, $8E ; SPRITE 8E   | xy: { 0x0E0, 0x110, U } | s: 0x00
|09DD88| db $11, $11, $8E ; SPRITE 8E   | xy: { 0x110, 0x110, U } | s: 0x00
|09DD8B| db $14, $04, $C5 ; SPRITE C5   | xy: { 0x040, 0x140, U } | s: 0x00
|09DD8E| db $14, $0A, $24 ; SPRITE 24   | xy: { 0x0A0, 0x140, U } | s: 0x00
|09DD91| db $14, $15, $24 ; SPRITE 24   | xy: { 0x150, 0x140, U } | s: 0x00
|09DD94| db $14, $1B, $C5 ; SPRITE C5   | xy: { 0x1B0, 0x140, U } | s: 0x00
|09DD97| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room003B:
|09DD98| db $00 ; Unlayered OAM
|09DD99| db $06, $03, $8A ; SPRITE 8A   | xy: { 0x030, 0x060, U } | s: 0x00
|09DD9C| db $09, $07, $23 ; SPRITE 23   | xy: { 0x070, 0x090, U } | s: 0x00
|09DD9F| db $0D, $0C, $8A ; SPRITE 8A   | xy: { 0x0C0, 0x0D0, U } | s: 0x00
|09DDA2| db $0F, $08, $24 ; SPRITE 24   | xy: { 0x080, 0x0F0, U } | s: 0x00
|09DDA5| db $13, $03, $8A ; SPRITE 8A   | xy: { 0x030, 0x130, U } | s: 0x00
|09DDA8| db $16, $07, $24 ; SPRITE 24   | xy: { 0x070, 0x160, U } | s: 0x00
|09DDAB| db $1A, $0C, $8A ; SPRITE 8A   | xy: { 0x0C0, 0x1A0, U } | s: 0x00
|09DDAE| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room003C:
|09DDAF| db $00 ; Unlayered OAM
|09DDB0| db $08, $09, $26 ; SPRITE 26   | xy: { 0x090, 0x080, U } | s: 0x00
|09DDB3| db $14, $0A, $24 ; SPRITE 24   | xy: { 0x0A0, 0x140, U } | s: 0x00
|09DDB6| db $14, $12, $24 ; SPRITE 24   | xy: { 0x120, 0x140, U } | s: 0x00
|09DDB9| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room003D:
|09DDBA| db $00 ; Unlayered OAM
|09DDBB| db $17, $05, $1E ; SPRITE 1E   | xy: { 0x050, 0x170, U } | s: 0x00
|09DDBE| db $19, $0A, $1E ; SPRITE 1E   | xy: { 0x0A0, 0x190, U } | s: 0x00
|09DDC1| db $07, $17, $13 ; SPRITE 13   | xy: { 0x170, 0x070, U } | s: 0x00
|09DDC4| db $FE, $00, $E4 ; small key on above sprite
|09DDC7| db $07, $18, $13 ; SPRITE 13   | xy: { 0x180, 0x070, U } | s: 0x00
|09DDCA| db $08, $15, $C5 ; SPRITE C5   | xy: { 0x150, 0x080, U } | s: 0x00
|09DDCD| db $08, $1A, $C5 ; SPRITE C5   | xy: { 0x1A0, 0x080, U } | s: 0x00
|09DDD0| db $0A, $04, $8A ; SPRITE 8A   | xy: { 0x040, 0x0A0, U } | s: 0x00
|09DDD3| db $0B, $03, $7D ; SPRITE 7D   | xy: { 0x030, 0x0B0, U } | s: 0x00
|09DDD6| db $15, $FB, $0A ; OVERLORD 0A | xy: { 0x1B0, 0x150, U }
|09DDD9| db $16, $13, $5C ; SPRITE 5C   | xy: { 0x130, 0x160, U } | s: 0x00
|09DDDC| db $16, $1C, $5B ; SPRITE 5B   | xy: { 0x1C0, 0x160, U } | s: 0x00
|09DDDF| db $16, $09, $5B ; SPRITE 5B   | xy: { 0x090, 0x160, U } | s: 0x00
|09DDE2| db $17, $07, $D1 ; SPRITE D1   | xy: { 0x070, 0x170, U } | s: 0x00
|09DDE5| db $17, $08, $15 ; SPRITE 15   | xy: { 0x080, 0x170, U } | s: 0x00
|09DDE8| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room003E:
|09DDE9| db $00 ; Unlayered OAM
|09DDEA| db $15, $06, $1E ; SPRITE 1E   | xy: { 0x060, 0x150, U } | s: 0x00
|09DDED| db $04, $19, $91 ; SPRITE 91   | xy: { 0x190, 0x040, U } | s: 0x00
|09DDF0| db $0B, $16, $91 ; SPRITE 91   | xy: { 0x160, 0x0B0, U } | s: 0x00
|09DDF3| db $12, $05, $9D ; SPRITE 9D   | xy: { 0x050, 0x120, U } | s: 0x00
|09DDF6| db $12, $0E, $9D ; SPRITE 9D   | xy: { 0x0E0, 0x120, U } | s: 0x00
|09DDF9| db $12, $F0, $07 ; OVERLORD 07 | xy: { 0x100, 0x120, U }
|09DDFC| db $12, $12, $9D ; SPRITE 9D   | xy: { 0x120, 0x120, U } | s: 0x00
|09DDFF| db $12, $15, $9D ; SPRITE 9D   | xy: { 0x150, 0x120, U } | s: 0x00
|09DE02| db $16, $07, $24 ; SPRITE 24   | xy: { 0x070, 0x160, U } | s: 0x00
|09DE05| db $18, $11, $24 ; SPRITE 24   | xy: { 0x110, 0x180, U } | s: 0x00
|09DE08| db $FE, $00, $E4 ; small key on above sprite
|09DE0B| db $19, $15, $24 ; SPRITE 24   | xy: { 0x150, 0x190, U } | s: 0x00
|09DE0E| db $1A, $0B, $24 ; SPRITE 24   | xy: { 0x0B0, 0x1A0, U } | s: 0x00
|09DE11| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room003F:
|09DE12| db $00 ; Unlayered OAM
|09DE13| db $15, $04, $04 ; SPRITE 04   | xy: { 0x040, 0x150, U } | s: 0x00
|09DE16| db $16, $0C, $91 ; SPRITE 91   | xy: { 0x0C0, 0x160, U } | s: 0x00
|09DE19| db $15, $13, $04 ; SPRITE 04   | xy: { 0x130, 0x150, U } | s: 0x00
|09DE1C| db $17, $04, $91 ; SPRITE 91   | xy: { 0x040, 0x170, U } | s: 0x00
|09DE1F| db $18, $08, $D1 ; SPRITE D1   | xy: { 0x080, 0x180, U } | s: 0x00
|09DE22| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0040:
|09DE23| db $00 ; Unlayered OAM
|09DE24| db $88, $09, $41 ; SPRITE 41   | xy: { 0x090, 0x080, L } | s: 0x00
|09DE27| db $EF, $69, $41 ; SPRITE 41   | xy: { 0x090, 0x0F0, L } | s: 0x1B
|09DE2A| db $95, $18, $1C ; SPRITE 1C   | xy: { 0x180, 0x150, L } | s: 0x00
|09DE2D| db $98, $1B, $43 ; SPRITE 43   | xy: { 0x1B0, 0x180, L } | s: 0x00
|09DE30| db $9A, $17, $46 ; SPRITE 46   | xy: { 0x170, 0x1A0, L } | s: 0x00
|09DE33| db $9A, $19, $46 ; SPRITE 46   | xy: { 0x190, 0x1A0, L } | s: 0x00
|09DE36| db $FF ; END

;===================================================================================================

UNREACHABLE_09DE37:
|09DE37| db $00 ; Unlayered OAM
|09DE38| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0041:
|09DE39| db $00 ; Unlayered OAM
|09DE3A| db $0A, $11, $6D ; SPRITE 6D   | xy: { 0x110, 0x0A0, U } | s: 0x00
|09DE3D| db $0B, $1B, $6D ; SPRITE 6D   | xy: { 0x1B0, 0x0B0, U } | s: 0x00
|09DE40| db $0D, $0F, $6D ; SPRITE 6D   | xy: { 0x0F0, 0x0D0, U } | s: 0x00
|09DE43| db $15, $06, $6D ; SPRITE 6D   | xy: { 0x060, 0x150, U } | s: 0x00
|09DE46| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0042:
|09DE47| db $00 ; Unlayered OAM
|09DE48| db $06, $12, $6E ; SPRITE 6E   | xy: { 0x120, 0x060, U } | s: 0x00
|09DE4B| db $06, $13, $6E ; SPRITE 6E   | xy: { 0x130, 0x060, U } | s: 0x00
|09DE4E| db $06, $14, $6E ; SPRITE 6E   | xy: { 0x140, 0x060, U } | s: 0x00
|09DE51| db $07, $12, $6E ; SPRITE 6E   | xy: { 0x120, 0x070, U } | s: 0x00
|09DE54| db $07, $13, $6E ; SPRITE 6E   | xy: { 0x130, 0x070, U } | s: 0x00
|09DE57| db $07, $14, $6E ; SPRITE 6E   | xy: { 0x140, 0x070, U } | s: 0x00
|09DE5A| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0043:
|09DE5B| db $00 ; Unlayered OAM
|09DE5C| db $06, $0C, $84 ; SPRITE 84   | xy: { 0x0C0, 0x060, U } | s: 0x00
|09DE5F| db $18, $F7, $14 ; OVERLORD 14 | xy: { 0x170, 0x180, U }
|09DE62| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0044:
|09DE63| db $00 ; Unlayered OAM
|09DE64| db $06, $09, $93 ; SPRITE 93   | xy: { 0x090, 0x060, U } | s: 0x00
|09DE67| db $08, $05, $93 ; SPRITE 93   | xy: { 0x050, 0x080, U } | s: 0x00
|09DE6A| db $04, $08, $24 ; SPRITE 24   | xy: { 0x080, 0x040, U } | s: 0x00
|09DE6D| db $08, $03, $24 ; SPRITE 24   | xy: { 0x030, 0x080, U } | s: 0x00
|09DE70| db $08, $17, $8F ; SPRITE 8F   | xy: { 0x170, 0x080, U } | s: 0x00
|09DE73| db $0C, $08, $24 ; SPRITE 24   | xy: { 0x080, 0x0C0, U } | s: 0x00
|09DE76| db $0F, $17, $23 ; SPRITE 23   | xy: { 0x170, 0x0F0, U } | s: 0x00
|09DE79| db $15, $EB, $0A ; OVERLORD 0A | xy: { 0x0B0, 0x150, U }
|09DE7C| db $16, $18, $24 ; SPRITE 24   | xy: { 0x180, 0x160, U } | s: 0x00
|09DE7F| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0045:
|09DE80| db $00 ; Unlayered OAM
|09DE81| db $06, $19, $B7 ; SPRITE B7   | xy: { 0x190, 0x060, U } | s: 0x00
|09DE84| db $06, $06, $A6 ; SPRITE A6   | xy: { 0x060, 0x060, U } | s: 0x00
|09DE87| db $0B, $04, $A5 ; SPRITE A5   | xy: { 0x040, 0x0B0, U } | s: 0x00
|09DE8A| db $0B, $0B, $A7 ; SPRITE A7   | xy: { 0x0B0, 0x0B0, U } | s: 0x00
|09DE8D| db $0B, $17, $D1 ; SPRITE D1   | xy: { 0x170, 0x0B0, U } | s: 0x00
|09DE90| db $0C, $18, $A5 ; SPRITE A5   | xy: { 0x180, 0x0C0, U } | s: 0x00
|09DE93| db $0C, $1A, $A5 ; SPRITE A5   | xy: { 0x1A0, 0x0C0, U } | s: 0x00
|09DE96| db $11, $18, $A5 ; SPRITE A5   | xy: { 0x180, 0x110, U } | s: 0x00
|09DE99| db $18, $16, $8F ; SPRITE 8F   | xy: { 0x160, 0x180, U } | s: 0x00
|09DE9C| db $1B, $19, $A6 ; SPRITE A6   | xy: { 0x190, 0x1B0, U } | s: 0x00
|09DE9F| db $1C, $07, $A6 ; SPRITE A6   | xy: { 0x070, 0x1C0, U } | s: 0x00
|09DEA2| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0046:
|09DEA3| db $00 ; Unlayered OAM
|09DEA4| db $05, $16, $81 ; SPRITE 81   | xy: { 0x160, 0x050, U } | s: 0x00
|09DEA7| db $06, $FB, $11 ; OVERLORD 11 | xy: { 0x1B0, 0x060, U }
|09DEAA| db $1A, $09, $81 ; SPRITE 81   | xy: { 0x090, 0x1A0, U } | s: 0x00
|09DEAD| db $1A, $FB, $11 ; OVERLORD 11 | xy: { 0x1B0, 0x1A0, U }
|09DEB0| db $1B, $11, $81 ; SPRITE 81   | xy: { 0x110, 0x1B0, U } | s: 0x00
|09DEB3| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0047:
|09DEB4| db $00 ; Unlayered OAM
|09DEB5| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0049:
|09DEB6| db $00 ; Unlayered OAM
|09DEB7| db $05, $0B, $18 ; SPRITE 18   | xy: { 0x0B0, 0x050, U } | s: 0x00
|09DEBA| db $0B, $04, $18 ; SPRITE 18   | xy: { 0x040, 0x0B0, U } | s: 0x00
|09DEBD| db $0C, $09, $18 ; SPRITE 18   | xy: { 0x090, 0x0C0, U } | s: 0x00
|09DEC0| db $06, $08, $D1 ; SPRITE D1   | xy: { 0x080, 0x060, U } | s: 0x00
|09DEC3| db $08, $07, $8B ; SPRITE 8B   | xy: { 0x070, 0x080, U } | s: 0x00
|09DEC6| db $0B, $17, $8B ; SPRITE 8B   | xy: { 0x170, 0x0B0, U } | s: 0x00
|09DEC9| db $0F, $EF, $09 ; OVERLORD 09 | xy: { 0x0F0, 0x0F0, U }
|09DECC| db $10, $17, $8B ; SPRITE 8B   | xy: { 0x170, 0x100, U } | s: 0x00
|09DECF| db $14, $16, $8B ; SPRITE 8B   | xy: { 0x160, 0x140, U } | s: 0x00
|09DED2| db $16, $09, $24 ; SPRITE 24   | xy: { 0x090, 0x160, U } | s: 0x00
|09DED5| db $17, $0A, $23 ; SPRITE 23   | xy: { 0x0A0, 0x170, U } | s: 0x00
|09DED8| db $18, $07, $24 ; SPRITE 24   | xy: { 0x070, 0x180, U } | s: 0x00
|09DEDB| db $18, $1A, $8B ; SPRITE 8B   | xy: { 0x1A0, 0x180, U } | s: 0x00
|09DEDE| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room004A:
|09DEDF| db $00 ; Unlayered OAM
|09DEE0| db $07, $14, $1C ; SPRITE 1C   | xy: { 0x140, 0x070, U } | s: 0x00
|09DEE3| db $08, $08, $13 ; SPRITE 13   | xy: { 0x080, 0x080, U } | s: 0x00
|09DEE6| db $08, $18, $13 ; SPRITE 13   | xy: { 0x180, 0x080, U } | s: 0x00
|09DEE9| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room004B:
|09DEEA| db $00 ; Unlayered OAM
|09DEEB| db $04, $07, $84 ; SPRITE 84   | xy: { 0x070, 0x040, U } | s: 0x00
|09DEEE| db $05, $17, $15 ; SPRITE 15   | xy: { 0x170, 0x050, U } | s: 0x00
|09DEF1| db $06, $18, $15 ; SPRITE 15   | xy: { 0x180, 0x060, U } | s: 0x00
|09DEF4| db $08, $04, $83 ; SPRITE 83   | xy: { 0x040, 0x080, U } | s: 0x00
|09DEF7| db $08, $0B, $83 ; SPRITE 83   | xy: { 0x0B0, 0x080, U } | s: 0x00
|09DEFA| db $18, $0F, $24 ; SPRITE 24   | xy: { 0x0F0, 0x180, U } | s: 0x00
|09DEFD| db $19, $0B, $24 ; SPRITE 24   | xy: { 0x0B0, 0x190, U } | s: 0x00
|09DF00| db $19, $12, $24 ; SPRITE 24   | xy: { 0x120, 0x190, U } | s: 0x00
|09DF03| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room004C:
|09DF04| db $00 ; Unlayered OAM
|09DF05| db $11, $15, $93 ; SPRITE 93   | xy: { 0x150, 0x110, U } | s: 0x00
|09DF08| db $12, $19, $93 ; SPRITE 93   | xy: { 0x190, 0x120, U } | s: 0x00
|09DF0B| db $05, $15, $13 ; SPRITE 13   | xy: { 0x150, 0x050, U } | s: 0x00
|09DF0E| db $05, $1A, $13 ; SPRITE 13   | xy: { 0x1A0, 0x050, U } | s: 0x00
|09DF11| db $06, $17, $13 ; SPRITE 13   | xy: { 0x170, 0x060, U } | s: 0x00
|09DF14| db $0A, $18, $13 ; SPRITE 13   | xy: { 0x180, 0x0A0, U } | s: 0x00
|09DF17| db $15, $14, $13 ; SPRITE 13   | xy: { 0x140, 0x150, U } | s: 0x00
|09DF1A| db $18, $13, $8A ; SPRITE 8A   | xy: { 0x130, 0x180, U } | s: 0x00
|09DF1D| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room004D:
|09DF1E| db $00 ; Unlayered OAM
|09DF1F| db $0E, $0E, $09 ; SPRITE 09   | xy: { 0x0E0, 0x0E0, U } | s: 0x00
|09DF22| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room004E:
|09DF23| db $00 ; Unlayered OAM
|09DF24| db $08, $14, $8F ; SPRITE 8F   | xy: { 0x140, 0x080, U } | s: 0x00
|09DF27| db $08, $16, $8F ; SPRITE 8F   | xy: { 0x160, 0x080, U } | s: 0x00
|09DF2A| db $08, $18, $8F ; SPRITE 8F   | xy: { 0x180, 0x080, U } | s: 0x00
|09DF2D| db $09, $07, $7E ; SPRITE 7E   | xy: { 0x070, 0x090, U } | s: 0x00
|09DF30| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room004F:
|09DF31| db $00 ; Unlayered OAM
|09DF32| db $06, $17, $E3 ; SPRITE E3   | xy: { 0x170, 0x060, U } | s: 0x00
|09DF35| db $08, $14, $E3 ; SPRITE E3   | xy: { 0x140, 0x080, U } | s: 0x00
|09DF38| db $08, $1A, $E3 ; SPRITE E3   | xy: { 0x1A0, 0x080, U } | s: 0x00
|09DF3B| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0050:
|09DF3C| db $00 ; Unlayered OAM
|09DF3D| db $8E, $17, $42 ; SPRITE 42   | xy: { 0x170, 0x0E0, L } | s: 0x00
|09DF40| db $90, $18, $4B ; SPRITE 4B   | xy: { 0x180, 0x100, L } | s: 0x00
|09DF43| db $92, $17, $4B ; SPRITE 4B   | xy: { 0x170, 0x120, L } | s: 0x00
|09DF46| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0051:
|09DF47| db $01 ; Layered OAM
|09DF48| db $02, $0E, $EE ; SPRITE EE   | xy: { 0x0E0, 0x020, U } | s: 0x00
|09DF4B| db $97, $29, $41 ; SPRITE 41   | xy: { 0x090, 0x170, L } | s: 0x01
|09DF4E| db $97, $56, $41 ; SPRITE 41   | xy: { 0x160, 0x170, L } | s: 0x02
|09DF51| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0052:
|09DF52| db $00 ; Unlayered OAM
|09DF53| db $8D, $07, $42 ; SPRITE 42   | xy: { 0x070, 0x0D0, L } | s: 0x00
|09DF56| db $8F, $08, $4B ; SPRITE 4B   | xy: { 0x080, 0x0F0, L } | s: 0x00
|09DF59| db $92, $07, $4B ; SPRITE 4B   | xy: { 0x070, 0x120, L } | s: 0x00
|09DF5C| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0053:
|09DF5D| db $00 ; Unlayered OAM
|09DF5E| db $07, $17, $4E ; SPRITE 4E   | xy: { 0x170, 0x070, U } | s: 0x00
|09DF61| db $09, $1C, $61 ; SPRITE 61   | xy: { 0x1C0, 0x090, U } | s: 0x00
|09DF64| db $0C, $17, $4F ; SPRITE 4F   | xy: { 0x170, 0x0C0, U } | s: 0x00
|09DF67| db $0C, $1A, $4F ; SPRITE 4F   | xy: { 0x1A0, 0x0C0, U } | s: 0x00
|09DF6A| db $0E, $13, $61 ; SPRITE 61   | xy: { 0x130, 0x0E0, U } | s: 0x00
|09DF6D| db $15, $05, $4E ; SPRITE 4E   | xy: { 0x050, 0x150, U } | s: 0x00
|09DF70| db $16, $0B, $4E ; SPRITE 4E   | xy: { 0x0B0, 0x160, U } | s: 0x00
|09DF73| db $17, $1A, $4E ; SPRITE 4E   | xy: { 0x1A0, 0x170, U } | s: 0x00
|09DF76| db $19, $07, $61 ; SPRITE 61   | xy: { 0x070, 0x190, U } | s: 0x00
|09DF79| db $1A, $04, $4E ; SPRITE 4E   | xy: { 0x040, 0x1A0, U } | s: 0x00
|09DF7C| db $1A, $0B, $4E ; SPRITE 4E   | xy: { 0x0B0, 0x1A0, U } | s: 0x00
|09DF7F| db $1A, $1B, $61 ; SPRITE 61   | xy: { 0x1B0, 0x1A0, U } | s: 0x00
|09DF82| db $1B, $1A, $4E ; SPRITE 4E   | xy: { 0x1A0, 0x1B0, U } | s: 0x00
|09DF85| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0054:
|09DF86| db $00 ; Unlayered OAM
|09DF87| db $05, $0E, $9A ; SPRITE 9A   | xy: { 0x0E0, 0x050, U } | s: 0x00
|09DF8A| db $0B, $0C, $81 ; SPRITE 81   | xy: { 0x0C0, 0x0B0, U } | s: 0x00
|09DF8D| db $0E, $0B, $C5 ; SPRITE C5   | xy: { 0x0B0, 0x0E0, U } | s: 0x00
|09DF90| db $0E, $0F, $7E ; SPRITE 7E   | xy: { 0x0F0, 0x0E0, U } | s: 0x00
|09DF93| db $0F, $10, $81 ; SPRITE 81   | xy: { 0x100, 0x0F0, U } | s: 0x00
|09DF96| db $14, $12, $9A ; SPRITE 9A   | xy: { 0x120, 0x140, U } | s: 0x00
|09DF99| db $15, $0F, $81 ; SPRITE 81   | xy: { 0x0F0, 0x150, U } | s: 0x00
|09DF9C| db $17, $0C, $9A ; SPRITE 9A   | xy: { 0x0C0, 0x170, U } | s: 0x00
|09DF9F| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0055:
|09DFA0| db $00 ; Unlayered OAM
|09DFA1| db $08, $0E, $73 ; SPRITE 73   | xy: { 0x0E0, 0x080, U } | s: 0x00
|09DFA4| db $15, $14, $4B ; SPRITE 4B   | xy: { 0x140, 0x150, U } | s: 0x00
|09DFA7| db $16, $0D, $4B ; SPRITE 4B   | xy: { 0x0D0, 0x160, U } | s: 0x00
|09DFAA| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0056:
|09DFAB| db $00 ; Unlayered OAM
|09DFAC| db $05, $EB, $0A ; OVERLORD 0A | xy: { 0x0B0, 0x050, U }
|09DFAF| db $19, $07, $93 ; SPRITE 93   | xy: { 0x070, 0x190, U } | s: 0x00
|09DFB2| db $19, $17, $93 ; SPRITE 93   | xy: { 0x170, 0x190, U } | s: 0x00
|09DFB5| db $04, $07, $13 ; SPRITE 13   | xy: { 0x070, 0x040, U } | s: 0x00
|09DFB8| db $05, $1B, $26 ; SPRITE 26   | xy: { 0x1B0, 0x050, U } | s: 0x00
|09DFBB| db $06, $03, $13 ; SPRITE 13   | xy: { 0x030, 0x060, U } | s: 0x00
|09DFBE| db $06, $0C, $13 ; SPRITE 13   | xy: { 0x0C0, 0x060, U } | s: 0x00
|09DFC1| db $0F, $EF, $09 ; OVERLORD 09 | xy: { 0x0F0, 0x0F0, U }
|09DFC4| db $11, $13, $26 ; SPRITE 26   | xy: { 0x130, 0x110, U } | s: 0x00
|09DFC7| db $12, $18, $8A ; SPRITE 8A   | xy: { 0x180, 0x120, U } | s: 0x00
|09DFCA| db $1B, $03, $26 ; SPRITE 26   | xy: { 0x030, 0x1B0, U } | s: 0x00
|09DFCD| db $1C, $13, $80 ; SPRITE 80   | xy: { 0x130, 0x1C0, U } | s: 0x00
|09DFD0| db $1C, $19, $26 ; SPRITE 26   | xy: { 0x190, 0x1C0, U } | s: 0x00
|09DFD3| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0057:
|09DFD4| db $00 ; Unlayered OAM
|09DFD5| db $04, $08, $D1 ; SPRITE D1   | xy: { 0x080, 0x040, U } | s: 0x00
|09DFD8| db $04, $0C, $23 ; SPRITE 23   | xy: { 0x0C0, 0x040, U } | s: 0x00
|09DFDB| db $05, $08, $8A ; SPRITE 8A   | xy: { 0x080, 0x050, U } | s: 0x00
|09DFDE| db $07, $04, $A7 ; SPRITE A7   | xy: { 0x040, 0x070, U } | s: 0x00
|09DFE1| db $0C, $03, $A7 ; SPRITE A7   | xy: { 0x030, 0x0C0, U } | s: 0x00
|09DFE4| db $0C, $0C, $8B ; SPRITE 8B   | xy: { 0x0C0, 0x0C0, U } | s: 0x00
|09DFE7| db $0F, $EF, $09 ; OVERLORD 09 | xy: { 0x0F0, 0x0F0, U }
|09DFEA| db $14, $05, $8B ; SPRITE 8B   | xy: { 0x050, 0x140, U } | s: 0x00
|09DFED| db $14, $0A, $8B ; SPRITE 8B   | xy: { 0x0A0, 0x140, U } | s: 0x00
|09DFF0| db $14, $17, $8B ; SPRITE 8B   | xy: { 0x170, 0x140, U } | s: 0x00
|09DFF3| db $14, $19, $8B ; SPRITE 8B   | xy: { 0x190, 0x140, U } | s: 0x00
|09DFF6| db $15, $15, $A7 ; SPRITE A7   | xy: { 0x150, 0x150, U } | s: 0x00
|09DFF9| db $17, $13, $8B ; SPRITE 8B   | xy: { 0x130, 0x170, U } | s: 0x00
|09DFFC| db $18, $07, $24 ; SPRITE 24   | xy: { 0x070, 0x180, U } | s: 0x00
|09DFFF| db $18, $08, $24 ; SPRITE 24   | xy: { 0x080, 0x180, U } | s: 0x00
|09E002| db $18, $0B, $1C ; SPRITE 1C   | xy: { 0x0B0, 0x180, U } | s: 0x00
|09E005| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0058:
|09E006| db $00 ; Unlayered OAM
|09E007| db $14, $0C, $18 ; SPRITE 18   | xy: { 0x0C0, 0x140, U } | s: 0x00
|09E00A| db $16, $06, $18 ; SPRITE 18   | xy: { 0x060, 0x160, U } | s: 0x00
|09E00D| db $16, $16, $93 ; SPRITE 93   | xy: { 0x160, 0x160, U } | s: 0x00
|09E010| db $04, $14, $13 ; SPRITE 13   | xy: { 0x140, 0x040, U } | s: 0x00
|09E013| db $06, $16, $5B ; SPRITE 5B   | xy: { 0x160, 0x060, U } | s: 0x00
|09E016| db $0A, $08, $04 ; SPRITE 04   | xy: { 0x080, 0x0A0, U } | s: 0x00
|09E019| db $0B, $1B, $26 ; SPRITE 26   | xy: { 0x1B0, 0x0B0, U } | s: 0x00
|09E01C| db $19, $16, $26 ; SPRITE 26   | xy: { 0x160, 0x190, U } | s: 0x00
|09E01F| db $1A, $0A, $23 ; SPRITE 23   | xy: { 0x0A0, 0x1A0, U } | s: 0x00
|09E022| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0059:
|09E023| db $01 ; Layered OAM
|09E024| db $10, $07, $18 ; SPRITE 18   | xy: { 0x070, 0x100, U } | s: 0x00
|09E027| db $16, $08, $18 ; SPRITE 18   | xy: { 0x080, 0x160, U } | s: 0x00
|09E02A| db $8F, $14, $93 ; SPRITE 93   | xy: { 0x140, 0x0F0, L } | s: 0x00
|09E02D| db $8F, $1A, $93 ; SPRITE 93   | xy: { 0x1A0, 0x0F0, L } | s: 0x00
|09E030| db $8A, $1A, $8A ; SPRITE 8A   | xy: { 0x1A0, 0x0A0, L } | s: 0x00
|09E033| db $0B, $08, $80 ; SPRITE 80   | xy: { 0x080, 0x0B0, U } | s: 0x00
|09E036| db $8D, $15, $8A ; SPRITE 8A   | xy: { 0x150, 0x0D0, L } | s: 0x00
|09E039| db $8E, $05, $5B ; SPRITE 5B   | xy: { 0x050, 0x0E0, L } | s: 0x00
|09E03C| db $93, $1A, $D1 ; SPRITE D1   | xy: { 0x1A0, 0x130, L } | s: 0x00
|09E03F| db $14, $17, $8B ; SPRITE 8B   | xy: { 0x170, 0x140, U } | s: 0x00
|09E042| db $95, $15, $8B ; SPRITE 8B   | xy: { 0x150, 0x150, L } | s: 0x00
|09E045| db $95, $1A, $8B ; SPRITE 8B   | xy: { 0x1A0, 0x150, L } | s: 0x00
|09E048| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room005A:
|09E049| db $00 ; Unlayered OAM
|09E04A| db $16, $17, $92 ; SPRITE 92   | xy: { 0x170, 0x160, U } | s: 0x00
|09E04D| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room005B:
|09E04E| db $01 ; Layered OAM
|09E04F| db $8C, $17, $1E ; SPRITE 1E   | xy: { 0x170, 0x0C0, L } | s: 0x00
|09E052| db $93, $18, $1E ; SPRITE 1E   | xy: { 0x180, 0x130, L } | s: 0x00
|09E055| db $95, $17, $8A ; SPRITE 8A   | xy: { 0x170, 0x150, L } | s: 0x00
|09E058| db $88, $16, $83 ; SPRITE 83   | xy: { 0x160, 0x080, L } | s: 0x00
|09E05B| db $88, $19, $84 ; SPRITE 84   | xy: { 0x190, 0x080, L } | s: 0x00
|09E05E| db $8E, $14, $8A ; SPRITE 8A   | xy: { 0x140, 0x0E0, L } | s: 0x00
|09E061| db $90, $1B, $8A ; SPRITE 8A   | xy: { 0x1B0, 0x100, L } | s: 0x00
|09E064| db $91, $17, $8A ; SPRITE 8A   | xy: { 0x170, 0x110, L } | s: 0x00
|09E067| db $92, $14, $8A ; SPRITE 8A   | xy: { 0x140, 0x120, L } | s: 0x00
|09E06A| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room005C:
|09E06B| db $00 ; Unlayered OAM
|09E06C| db $02, $0B, $68 ; SPRITE 68   | xy: { 0x0B0, 0x020, U } | s: 0x00
|09E06F| db $0E, $05, $69 ; SPRITE 69   | xy: { 0x050, 0x0E0, U } | s: 0x00
|09E072| db $0E, $0E, $69 ; SPRITE 69   | xy: { 0x0E0, 0x0E0, U } | s: 0x00
|09E075| db $18, $17, $E3 ; SPRITE E3   | xy: { 0x170, 0x180, U } | s: 0x00
|09E078| db $18, $18, $E3 ; SPRITE E3   | xy: { 0x180, 0x180, U } | s: 0x00
|09E07B| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room005D:
|09E07C| db $00 ; Unlayered OAM
|09E07D| db $05, $07, $A7 ; SPRITE A7   | xy: { 0x070, 0x050, U } | s: 0x00
|09E080| db $06, $08, $61 ; SPRITE 61   | xy: { 0x080, 0x060, U } | s: 0x00
|09E083| db $08, $03, $A7 ; SPRITE A7   | xy: { 0x030, 0x080, U } | s: 0x00
|09E086| db $08, $15, $A6 ; SPRITE A6   | xy: { 0x150, 0x080, U } | s: 0x00
|09E089| db $08, $17, $A7 ; SPRITE A7   | xy: { 0x170, 0x080, U } | s: 0x00
|09E08C| db $08, $19, $A5 ; SPRITE A5   | xy: { 0x190, 0x080, U } | s: 0x00
|09E08F| db $08, $1B, $A7 ; SPRITE A7   | xy: { 0x1B0, 0x080, U } | s: 0x00
|09E092| db $0B, $07, $A7 ; SPRITE A7   | xy: { 0x070, 0x0B0, U } | s: 0x00
|09E095| db $15, $04, $61 ; SPRITE 61   | xy: { 0x040, 0x150, U } | s: 0x00
|09E098| db $15, $0B, $A5 ; SPRITE A5   | xy: { 0x0B0, 0x150, U } | s: 0x00
|09E09B| db $1A, $04, $A5 ; SPRITE A5   | xy: { 0x040, 0x1A0, U } | s: 0x00
|09E09E| db $1A, $08, $A5 ; SPRITE A5   | xy: { 0x080, 0x1A0, U } | s: 0x00
|09E0A1| db $1A, $0B, $61 ; SPRITE 61   | xy: { 0x0B0, 0x1A0, U } | s: 0x00
|09E0A4| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room005E:
|09E0A5| db $00 ; Unlayered OAM
|09E0A6| db $05, $FB, $0A ; OVERLORD 0A | xy: { 0x1B0, 0x050, U }
|09E0A9| db $05, $1C, $C5 ; SPRITE C5   | xy: { 0x1C0, 0x050, U } | s: 0x00
|09E0AC| db $0B, $13, $C5 ; SPRITE C5   | xy: { 0x130, 0x0B0, U } | s: 0x00
|09E0AF| db $14, $17, $7D ; SPRITE 7D   | xy: { 0x170, 0x140, U } | s: 0x00
|09E0B2| db $18, $08, $7E ; SPRITE 7E   | xy: { 0x080, 0x180, U } | s: 0x00
|09E0B5| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room005F:
|09E0B6| db $00 ; Unlayered OAM
|09E0B7| db $18, $04, $24 ; SPRITE 24   | xy: { 0x040, 0x180, U } | s: 0x00
|09E0BA| db $18, $0B, $24 ; SPRITE 24   | xy: { 0x0B0, 0x180, U } | s: 0x00
|09E0BD| db $1B, $08, $24 ; SPRITE 24   | xy: { 0x080, 0x1B0, U } | s: 0x00
|09E0C0| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0060:
|09E0C1| db $01 ; Layered OAM
|09E0C2| db $48, $73, $41 ; SPRITE 41   | xy: { 0x130, 0x080, U } | s: 0x13
|09E0C5| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0061:
|09E0C6| db $00 ; Unlayered OAM
|09E0C7| db $0E, $2C, $42 ; SPRITE 42   | xy: { 0x0C0, 0x0E0, U } | s: 0x01
|09E0CA| db $12, $0D, $4B ; SPRITE 4B   | xy: { 0x0D0, 0x120, U } | s: 0x00
|09E0CD| db $12, $12, $4B ; SPRITE 4B   | xy: { 0x120, 0x120, U } | s: 0x00
|09E0D0| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0062:
|09E0D1| db $01 ; Layered OAM
|09E0D2| db $48, $6C, $41 ; SPRITE 41   | xy: { 0x0C0, 0x080, U } | s: 0x13
|09E0D5| db $8D, $0A, $42 ; SPRITE 42   | xy: { 0x0A0, 0x0D0, L } | s: 0x00
|09E0D8| db $8E, $11, $42 ; SPRITE 42   | xy: { 0x110, 0x0E0, L } | s: 0x00
|09E0DB| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0063:
|09E0DC| db $00 ; Unlayered OAM
|09E0DD| db $08, $E7, $14 ; OVERLORD 14 | xy: { 0x070, 0x080, U }
|09E0E0| db $18, $07, $61 ; SPRITE 61   | xy: { 0x070, 0x180, U } | s: 0x00
|09E0E3| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0064:
|09E0E4| db $00 ; Unlayered OAM
|09E0E5| db $12, $05, $6F ; SPRITE 6F   | xy: { 0x050, 0x120, U } | s: 0x00
|09E0E8| db $13, $0B, $06 ; SPRITE 06   | xy: { 0x0B0, 0x130, U } | s: 0x00
|09E0EB| db $13, $05, $6F ; SPRITE 6F   | xy: { 0x050, 0x130, U } | s: 0x00
|09E0EE| db $16, $03, $D1 ; SPRITE D1   | xy: { 0x030, 0x160, U } | s: 0x00
|09E0F1| db $17, $17, $6D ; SPRITE 6D   | xy: { 0x170, 0x170, U } | s: 0x00
|09E0F4| db $19, $19, $6D ; SPRITE 6D   | xy: { 0x190, 0x190, U } | s: 0x00
|09E0F7| db $1A, $05, $6D ; SPRITE 6D   | xy: { 0x050, 0x1A0, U } | s: 0x00
|09E0FA| db $15, $E9, $06 ; OVERLORD 06 | xy: { 0x090, 0x150, U }
|09E0FD| db $17, $E7, $06 ; OVERLORD 06 | xy: { 0x070, 0x170, U }
|09E100| db $17, $E9, $06 ; OVERLORD 06 | xy: { 0x090, 0x170, U }
|09E103| db $17, $EB, $06 ; OVERLORD 06 | xy: { 0x0B0, 0x170, U }
|09E106| db $19, $E9, $06 ; OVERLORD 06 | xy: { 0x090, 0x190, U }
|09E109| db $1B, $EC, $06 ; OVERLORD 06 | xy: { 0x0C0, 0x1B0, U }
|09E10C| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0065:
|09E10D| db $00 ; Unlayered OAM
|09E10E| db $15, $13, $6D ; SPRITE 6D   | xy: { 0x130, 0x150, U } | s: 0x00
|09E111| db $17, $09, $6D ; SPRITE 6D   | xy: { 0x090, 0x170, U } | s: 0x00
|09E114| db $18, $06, $6D ; SPRITE 6D   | xy: { 0x060, 0x180, U } | s: 0x00
|09E117| db $19, $16, $6D ; SPRITE 6D   | xy: { 0x160, 0x190, U } | s: 0x00
|09E11A| db $1C, $16, $6D ; SPRITE 6D   | xy: { 0x160, 0x1C0, U } | s: 0x00
|09E11D| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0066:
|09E11E| db $00 ; Unlayered OAM
|09E11F| db $85, $0B, $81 ; SPRITE 81   | xy: { 0x0B0, 0x050, L } | s: 0x00
|09E122| db $86, $E4, $10 ; OVERLORD 10 | xy: { 0x040, 0x060, L }
|09E125| db $06, $16, $24 ; SPRITE 24   | xy: { 0x160, 0x060, U } | s: 0x00
|09E128| db $07, $1A, $24 ; SPRITE 24   | xy: { 0x1A0, 0x070, U } | s: 0x00
|09E12B| db $94, $17, $37 ; SPRITE 37   | xy: { 0x170, 0x140, L } | s: 0x00
|09E12E| db $96, $E1, $10 ; OVERLORD 10 | xy: { 0x010, 0x160, L }
|09E131| db $96, $0F, $9A ; SPRITE 9A   | xy: { 0x0F0, 0x160, L } | s: 0x00
|09E134| db $96, $13, $81 ; SPRITE 81   | xy: { 0x130, 0x160, L } | s: 0x00
|09E137| db $98, $0B, $81 ; SPRITE 81   | xy: { 0x0B0, 0x180, L } | s: 0x00
|09E13A| db $99, $0D, $81 ; SPRITE 81   | xy: { 0x0D0, 0x190, L } | s: 0x00
|09E13D| db $99, $FE, $11 ; OVERLORD 11 | xy: { 0x1E0, 0x190, L }
|09E140| db $9B, $17, $81 ; SPRITE 81   | xy: { 0x170, 0x1B0, L } | s: 0x00
|09E143| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0067:
|09E144| db $00 ; Unlayered OAM
|09E145| db $0C, $07, $93 ; SPRITE 93   | xy: { 0x070, 0x0C0, U } | s: 0x00
|09E148| db $06, $04, $24 ; SPRITE 24   | xy: { 0x040, 0x060, U } | s: 0x00
|09E14B| db $06, $0B, $24 ; SPRITE 24   | xy: { 0x0B0, 0x060, U } | s: 0x00
|09E14E| db $0C, $05, $26 ; SPRITE 26   | xy: { 0x050, 0x0C0, U } | s: 0x00
|09E151| db $0F, $13, $26 ; SPRITE 26   | xy: { 0x130, 0x0F0, U } | s: 0x00
|09E154| db $13, $05, $26 ; SPRITE 26   | xy: { 0x050, 0x130, U } | s: 0x00
|09E157| db $13, $09, $26 ; SPRITE 26   | xy: { 0x090, 0x130, U } | s: 0x00
|09E15A| db $14, $18, $7E ; SPRITE 7E   | xy: { 0x180, 0x140, U } | s: 0x00
|09E15D| db $17, $07, $7F ; SPRITE 7F   | xy: { 0x070, 0x170, U } | s: 0x00
|09E160| db $1A, $18, $26 ; SPRITE 26   | xy: { 0x180, 0x1A0, U } | s: 0x00
|09E163| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0068:
|09E164| db $00 ; Unlayered OAM
|09E165| db $07, $0E, $93 ; SPRITE 93   | xy: { 0x0E0, 0x070, U } | s: 0x00
|09E168| db $07, $11, $93 ; SPRITE 93   | xy: { 0x110, 0x070, U } | s: 0x00
|09E16B| db $0B, $0C, $93 ; SPRITE 93   | xy: { 0x0C0, 0x0B0, U } | s: 0x00
|09E16E| db $0B, $13, $93 ; SPRITE 93   | xy: { 0x130, 0x0B0, U } | s: 0x00
|09E171| db $08, $14, $8B ; SPRITE 8B   | xy: { 0x140, 0x080, U } | s: 0x00
|09E174| db $0F, $EF, $09 ; OVERLORD 09 | xy: { 0x0F0, 0x0F0, U }
|09E177| db $12, $0E, $8B ; SPRITE 8B   | xy: { 0x0E0, 0x120, U } | s: 0x00
|09E17A| db $12, $12, $8B ; SPRITE 8B   | xy: { 0x120, 0x120, U } | s: 0x00
|09E17D| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room006A:
|09E17E| db $00 ; Unlayered OAM
|09E17F| db $0A, $17, $8E ; SPRITE 8E   | xy: { 0x170, 0x0A0, U } | s: 0x00
|09E182| db $0A, $18, $8E ; SPRITE 8E   | xy: { 0x180, 0x0A0, U } | s: 0x00
|09E185| db $0B, $14, $15 ; SPRITE 15   | xy: { 0x140, 0x0B0, U } | s: 0x00
|09E188| db $0B, $1C, $15 ; SPRITE 15   | xy: { 0x1C0, 0x0B0, U } | s: 0x00
|09E18B| db $0E, $17, $8E ; SPRITE 8E   | xy: { 0x170, 0x0E0, U } | s: 0x00
|09E18E| db $0E, $18, $8E ; SPRITE 8E   | xy: { 0x180, 0x0E0, U } | s: 0x00
|09E191| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room006B:
|09E192| db $00 ; Unlayered OAM
|09E193| db $04, $07, $1E ; SPRITE 1E   | xy: { 0x070, 0x040, U } | s: 0x00
|09E196| db $04, $0B, $1E ; SPRITE 1E   | xy: { 0x0B0, 0x040, U } | s: 0x00
|09E199| db $06, $0A, $83 ; SPRITE 83   | xy: { 0x0A0, 0x060, U } | s: 0x00
|09E19C| db $09, $06, $84 ; SPRITE 84   | xy: { 0x060, 0x090, U } | s: 0x00
|09E19F| db $0A, $0C, $15 ; SPRITE 15   | xy: { 0x0C0, 0x0A0, U } | s: 0x00
|09E1A2| db $15, $06, $1C ; SPRITE 1C   | xy: { 0x060, 0x150, U } | s: 0x00
|09E1A5| db $18, $03, $84 ; SPRITE 84   | xy: { 0x030, 0x180, U } | s: 0x00
|09E1A8| db $18, $04, $8A ; SPRITE 8A   | xy: { 0x040, 0x180, U } | s: 0x00
|09E1AB| db $1B, $04, $8A ; SPRITE 8A   | xy: { 0x040, 0x1B0, U } | s: 0x00
|09E1AE| db $1B, $0C, $84 ; SPRITE 84   | xy: { 0x0C0, 0x1B0, U } | s: 0x00
|09E1B1| db $15, $17, $84 ; SPRITE 84   | xy: { 0x170, 0x150, U } | s: 0x00
|09E1B4| db $15, $1B, $61 ; SPRITE 61   | xy: { 0x1B0, 0x150, U } | s: 0x00
|09E1B7| db $1B, $14, $61 ; SPRITE 61   | xy: { 0x140, 0x1B0, U } | s: 0x00
|09E1BA| db $1B, $18, $84 ; SPRITE 84   | xy: { 0x180, 0x1B0, U } | s: 0x00
|09E1BD| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room006C:
|09E1BE| db $00 ; Unlayered OAM
|09E1BF| db $17, $06, $54 ; SPRITE 54   | xy: { 0x060, 0x170, U } | s: 0x00
|09E1C2| db $17, $09, $54 ; SPRITE 54   | xy: { 0x090, 0x170, U } | s: 0x00
|09E1C5| db $19, $07, $54 ; SPRITE 54   | xy: { 0x070, 0x190, U } | s: 0x00
|09E1C8| db $18, $17, $D1 ; SPRITE D1   | xy: { 0x170, 0x180, U } | s: 0x00
|09E1CB| db $1C, $03, $C5 ; SPRITE C5   | xy: { 0x030, 0x1C0, U } | s: 0x00
|09E1CE| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room006D:
|09E1CF| db $00 ; Unlayered OAM
|09E1D0| db $06, $05, $A6 ; SPRITE A6   | xy: { 0x050, 0x060, U } | s: 0x00
|09E1D3| db $06, $0B, $61 ; SPRITE 61   | xy: { 0x0B0, 0x060, U } | s: 0x00
|09E1D6| db $09, $04, $61 ; SPRITE 61   | xy: { 0x040, 0x090, U } | s: 0x00
|09E1D9| db $0B, $0A, $A6 ; SPRITE A6   | xy: { 0x0A0, 0x0B0, U } | s: 0x00
|09E1DC| db $15, $04, $C5 ; SPRITE C5   | xy: { 0x040, 0x150, U } | s: 0x00
|09E1DF| db $15, $0B, $61 ; SPRITE 61   | xy: { 0x0B0, 0x150, U } | s: 0x00
|09E1E2| db $18, $05, $A7 ; SPRITE A7   | xy: { 0x050, 0x180, U } | s: 0x00
|09E1E5| db $18, $0A, $A6 ; SPRITE A6   | xy: { 0x0A0, 0x180, U } | s: 0x00
|09E1E8| db $1A, $06, $5C ; SPRITE 5C   | xy: { 0x060, 0x1A0, U } | s: 0x00
|09E1EB| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room006E:
|09E1EC| db $00 ; Unlayered OAM
|09E1ED| db $08, $13, $99 ; SPRITE 99   | xy: { 0x130, 0x080, U } | s: 0x00
|09E1F0| db $09, $13, $99 ; SPRITE 99   | xy: { 0x130, 0x090, U } | s: 0x00
|09E1F3| db $0A, $13, $99 ; SPRITE 99   | xy: { 0x130, 0x0A0, U } | s: 0x00
|09E1F6| db $0B, $13, $99 ; SPRITE 99   | xy: { 0x130, 0x0B0, U } | s: 0x00
|09E1F9| db $0C, $13, $99 ; SPRITE 99   | xy: { 0x130, 0x0C0, U } | s: 0x00
|09E1FC| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0071:
|09E1FD| db $00 ; Unlayered OAM
|09E1FE| db $98, $06, $42 ; SPRITE 42   | xy: { 0x060, 0x180, L } | s: 0x00
|09E201| db $D8, $BA, $41 ; SPRITE 41   | xy: { 0x1A0, 0x180, L } | s: 0x15
|09E204| db $FE, $00, $E4 ; small key on above sprite
|09E207| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0072:
|09E208| db $00 ; Unlayered OAM
|09E209| db $06, $B1, $41 ; SPRITE 41   | xy: { 0x110, 0x060, U } | s: 0x05
|09E20C| db $FE, $00, $E4 ; small key on above sprite
|09E20F| db $99, $2A, $41 ; SPRITE 41   | xy: { 0x0A0, 0x190, L } | s: 0x01
|09E212| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0073:
|09E213| db $00 ; Unlayered OAM
|09E214| db $18, $18, $64 ; SPRITE 64   | xy: { 0x180, 0x180, U } | s: 0x00
|09E217| db $09, $17, $61 ; SPRITE 61   | xy: { 0x170, 0x090, U } | s: 0x00
|09E21A| db $15, $15, $71 ; SPRITE 71   | xy: { 0x150, 0x150, U } | s: 0x00
|09E21D| db $18, $1B, $71 ; SPRITE 71   | xy: { 0x1B0, 0x180, U } | s: 0x00
|09E220| db $19, $07, $61 ; SPRITE 61   | xy: { 0x070, 0x190, U } | s: 0x00
|09E223| db $1B, $16, $71 ; SPRITE 71   | xy: { 0x160, 0x1B0, U } | s: 0x00
|09E226| db $06, $14, $3B ; SPRITE 3B   | xy: { 0x140, 0x060, U } | s: 0x00
|09E229| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0074:
|09E22A| db $00 ; Unlayered OAM
|09E22B| db $18, $08, $64 ; SPRITE 64   | xy: { 0x080, 0x180, U } | s: 0x00
|09E22E| db $18, $17, $64 ; SPRITE 64   | xy: { 0x170, 0x180, U } | s: 0x00
|09E231| db $05, $0C, $83 ; SPRITE 83   | xy: { 0x0C0, 0x050, U } | s: 0x00
|09E234| db $05, $13, $83 ; SPRITE 83   | xy: { 0x130, 0x050, U } | s: 0x00
|09E237| db $0A, $0C, $71 ; SPRITE 71   | xy: { 0x0C0, 0x0A0, U } | s: 0x00
|09E23A| db $0A, $13, $71 ; SPRITE 71   | xy: { 0x130, 0x0A0, U } | s: 0x00
|09E23D| db $1B, $0E, $71 ; SPRITE 71   | xy: { 0x0E0, 0x1B0, U } | s: 0x00
|09E240| db $1B, $12, $71 ; SPRITE 71   | xy: { 0x120, 0x1B0, U } | s: 0x00
|09E243| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0075:
|09E244| db $00 ; Unlayered OAM
|09E245| db $07, $08, $64 ; SPRITE 64   | xy: { 0x080, 0x070, U } | s: 0x00
|09E248| db $1B, $04, $64 ; SPRITE 64   | xy: { 0x040, 0x1B0, U } | s: 0x00
|09E24B| db $05, $06, $71 ; SPRITE 71   | xy: { 0x060, 0x050, U } | s: 0x00
|09E24E| db $05, $0A, $71 ; SPRITE 71   | xy: { 0x0A0, 0x050, U } | s: 0x00
|09E251| db $0A, $06, $71 ; SPRITE 71   | xy: { 0x060, 0x0A0, U } | s: 0x00
|09E254| db $0A, $0A, $71 ; SPRITE 71   | xy: { 0x0A0, 0x0A0, U } | s: 0x00
|09E257| db $0B, $11, $66 ; SPRITE 66   | xy: { 0x110, 0x0B0, U } | s: 0x00
|09E25A| db $0B, $1E, $67 ; SPRITE 67   | xy: { 0x1E0, 0x0B0, U } | s: 0x00
|09E25D| db $19, $07, $71 ; SPRITE 71   | xy: { 0x070, 0x190, U } | s: 0x00
|09E260| db $19, $09, $71 ; SPRITE 71   | xy: { 0x090, 0x190, U } | s: 0x00
|09E263| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0076:
|09E264| db $00 ; Unlayered OAM
|09E265| db $03, $19, $21 ; SPRITE 21   | xy: { 0x190, 0x030, U } | s: 0x00
|09E268| db $0A, $07, $81 ; SPRITE 81   | xy: { 0x070, 0x0A0, U } | s: 0x00
|09E26B| db $0F, $07, $9A ; SPRITE 9A   | xy: { 0x070, 0x0F0, U } | s: 0x00
|09E26E| db $11, $08, $81 ; SPRITE 81   | xy: { 0x080, 0x110, U } | s: 0x00
|09E271| db $19, $1B, $8F ; SPRITE 8F   | xy: { 0x1B0, 0x190, U } | s: 0x00
|09E274| db $1C, $E8, $13 ; OVERLORD 13 | xy: { 0x080, 0x1C0, U }
|09E277| db $1C, $1B, $24 ; SPRITE 24   | xy: { 0x1B0, 0x1C0, U } | s: 0x00
|09E27A| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0077:
|09E27B| db $00 ; Unlayered OAM
|09E27C| db $89, $0B, $18 ; SPRITE 18   | xy: { 0x0B0, 0x090, L } | s: 0x00
|09E27F| db $98, $10, $1E ; SPRITE 1E   | xy: { 0x100, 0x180, L } | s: 0x00
|09E282| db $9A, $09, $1E ; SPRITE 1E   | xy: { 0x090, 0x1A0, L } | s: 0x00
|09E285| db $9A, $16, $1E ; SPRITE 1E   | xy: { 0x160, 0x1A0, L } | s: 0x00
|09E288| db $8A, $07, $86 ; SPRITE 86   | xy: { 0x070, 0x0A0, L } | s: 0x00
|09E28B| db $8A, $17, $86 ; SPRITE 86   | xy: { 0x170, 0x0A0, L } | s: 0x00
|09E28E| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room007B:
|09E28F| db $00 ; Unlayered OAM
|09E290| db $07, $0B, $24 ; SPRITE 24   | xy: { 0x0B0, 0x070, U } | s: 0x00
|09E293| db $09, $16, $24 ; SPRITE 24   | xy: { 0x160, 0x090, U } | s: 0x00
|09E296| db $15, $04, $C6 ; SPRITE C6   | xy: { 0x040, 0x150, U } | s: 0x00
|09E299| db $15, $0B, $A7 ; SPRITE A7   | xy: { 0x0B0, 0x150, U } | s: 0x00
|09E29C| db $17, $07, $A7 ; SPRITE A7   | xy: { 0x070, 0x170, U } | s: 0x00
|09E29F| db $17, $09, $C6 ; SPRITE C6   | xy: { 0x090, 0x170, U } | s: 0x00
|09E2A2| db $18, $13, $1C ; SPRITE 1C   | xy: { 0x130, 0x180, U } | s: 0x00
|09E2A5| db $18, $17, $26 ; SPRITE 26   | xy: { 0x170, 0x180, U } | s: 0x00
|09E2A8| db $19, $09, $A7 ; SPRITE A7   | xy: { 0x090, 0x190, U } | s: 0x00
|09E2AB| db $1A, $05, $C6 ; SPRITE C6   | xy: { 0x050, 0x1A0, U } | s: 0x00
|09E2AE| db $1B, $0B, $C6 ; SPRITE C6   | xy: { 0x0B0, 0x1B0, U } | s: 0x00
|09E2B1| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room007C:
|09E2B2| db $00 ; Unlayered OAM
|09E2B3| db $1C, $19, $18 ; SPRITE 18   | xy: { 0x190, 0x1C0, U } | s: 0x00
|09E2B6| db $0C, $06, $7F ; SPRITE 7F   | xy: { 0x060, 0x0C0, U } | s: 0x00
|09E2B9| db $10, $07, $8A ; SPRITE 8A   | xy: { 0x070, 0x100, U } | s: 0x00
|09E2BC| db $14, $09, $7E ; SPRITE 7E   | xy: { 0x090, 0x140, U } | s: 0x00
|09E2BF| db $18, $0B, $26 ; SPRITE 26   | xy: { 0x0B0, 0x180, U } | s: 0x00
|09E2C2| db $18, $17, $24 ; SPRITE 24   | xy: { 0x170, 0x180, U } | s: 0x00
|09E2C5| db $1A, $E7, $0B ; OVERLORD 0B | xy: { 0x070, 0x1A0, U }
|09E2C8| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room007D:
|09E2C9| db $00 ; Unlayered OAM
|09E2CA| db $06, $11, $80 ; SPRITE 80   | xy: { 0x110, 0x060, U } | s: 0x00
|09E2CD| db $08, $11, $80 ; SPRITE 80   | xy: { 0x110, 0x080, U } | s: 0x00
|09E2D0| db $0A, $11, $80 ; SPRITE 80   | xy: { 0x110, 0x0A0, U } | s: 0x00
|09E2D3| db $0C, $11, $80 ; SPRITE 80   | xy: { 0x110, 0x0C0, U } | s: 0x00
|09E2D6| db $16, $15, $A7 ; SPRITE A7   | xy: { 0x150, 0x160, U } | s: 0x00
|09E2D9| db $17, $18, $C6 ; SPRITE C6   | xy: { 0x180, 0x170, U } | s: 0x00
|09E2DC| db $19, $1C, $80 ; SPRITE 80   | xy: { 0x1C0, 0x190, U } | s: 0x00
|09E2DF| db $1A, $14, $13 ; SPRITE 13   | xy: { 0x140, 0x1A0, U } | s: 0x00
|09E2E2| db $1A, $17, $23 ; SPRITE 23   | xy: { 0x170, 0x1A0, U } | s: 0x00
|09E2E5| db $1C, $0A, $80 ; SPRITE 80   | xy: { 0x0A0, 0x1C0, U } | s: 0x00
|09E2E8| db $1C, $1B, $26 ; SPRITE 26   | xy: { 0x1B0, 0x1C0, U } | s: 0x00
|09E2EB| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room007E:
|09E2EC| db $00 ; Unlayered OAM
|09E2ED| db $11, $17, $93 ; SPRITE 93   | xy: { 0x170, 0x110, U } | s: 0x00
|09E2F0| db $0E, $18, $7F ; SPRITE 7F   | xy: { 0x180, 0x0E0, U } | s: 0x00
|09E2F3| db $0F, $14, $99 ; SPRITE 99   | xy: { 0x140, 0x0F0, U } | s: 0x00
|09E2F6| db $12, $07, $A1 ; SPRITE A1   | xy: { 0x070, 0x120, U } | s: 0x00
|09E2F9| db $12, $0A, $A1 ; SPRITE A1   | xy: { 0x0A0, 0x120, U } | s: 0x00
|09E2FC| db $16, $1B, $99 ; SPRITE 99   | xy: { 0x1B0, 0x160, U } | s: 0x00
|09E2FF| db $17, $17, $7F ; SPRITE 7F   | xy: { 0x170, 0x170, U } | s: 0x00
|09E302| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room007F:
|09E303| db $00 ; Unlayered OAM
|09E304| db $07, $06, $23 ; SPRITE 23   | xy: { 0x060, 0x070, U } | s: 0x00
|09E307| db $07, $08, $23 ; SPRITE 23   | xy: { 0x080, 0x070, U } | s: 0x00
|09E30A| db $08, $0A, $23 ; SPRITE 23   | xy: { 0x0A0, 0x080, U } | s: 0x00
|09E30D| db $09, $07, $23 ; SPRITE 23   | xy: { 0x070, 0x090, U } | s: 0x00
|09E310| db $14, $0B, $7D ; SPRITE 7D   | xy: { 0x0B0, 0x140, U } | s: 0x00
|09E313| db $17, $03, $7D ; SPRITE 7D   | xy: { 0x030, 0x170, U } | s: 0x00
|09E316| db $19, $0B, $7D ; SPRITE 7D   | xy: { 0x0B0, 0x190, U } | s: 0x00
|09E319| db $1B, $03, $7D ; SPRITE 7D   | xy: { 0x030, 0x1B0, U } | s: 0x00
|09E31C| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0080:
|09E31D| db $00 ; Unlayered OAM
|09E31E| db $03, $16, $76 ; SPRITE 76   | xy: { 0x160, 0x030, U } | s: 0x00
|09E321| db $09, $07, $42 ; SPRITE 42   | xy: { 0x070, 0x090, U } | s: 0x00
|09E324| db $09, $1A, $6A ; SPRITE 6A   | xy: { 0x1A0, 0x090, U } | s: 0x00
|09E327| db $FD, $00, $E4 ; big key on above sprite
|09E32A| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0081:
|09E32B| db $01 ; Layered OAM
|09E32C| db $EB, $6B, $42 ; SPRITE 42   | xy: { 0x0B0, 0x0B0, L } | s: 0x1B
|09E32F| db $8B, $6E, $42 ; SPRITE 42   | xy: { 0x0E0, 0x0B0, L } | s: 0x03
|09E332| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0082:
|09E333| db $00 ; Unlayered OAM
|09E334| db $E5, $69, $41 ; SPRITE 41   | xy: { 0x090, 0x050, L } | s: 0x1B
|09E337| db $86, $70, $41 ; SPRITE 41   | xy: { 0x100, 0x060, L } | s: 0x03
|09E33A| db $91, $75, $41 ; SPRITE 41   | xy: { 0x150, 0x110, L } | s: 0x03
|09E33D| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0083:
|09E33E| db $00 ; Unlayered OAM
|09E33F| db $08, $1B, $63 ; SPRITE 63   | xy: { 0x1B0, 0x080, U } | s: 0x00
|09E342| db $10, $14, $63 ; SPRITE 63   | xy: { 0x140, 0x100, U } | s: 0x00
|09E345| db $05, $14, $71 ; SPRITE 71   | xy: { 0x140, 0x050, U } | s: 0x00
|09E348| db $06, $07, $E3 ; SPRITE E3   | xy: { 0x070, 0x060, U } | s: 0x00
|09E34B| db $08, $08, $E3 ; SPRITE E3   | xy: { 0x080, 0x080, U } | s: 0x00
|09E34E| db $0B, $1B, $71 ; SPRITE 71   | xy: { 0x1B0, 0x0B0, U } | s: 0x00
|09E351| db $10, $17, $71 ; SPRITE 71   | xy: { 0x170, 0x100, U } | s: 0x00
|09E354| db $17, $08, $61 ; SPRITE 61   | xy: { 0x080, 0x170, U } | s: 0x00
|09E357| db $18, $18, $71 ; SPRITE 71   | xy: { 0x180, 0x180, U } | s: 0x00
|09E35A| db $1B, $14, $71 ; SPRITE 71   | xy: { 0x140, 0x1B0, U } | s: 0x00
|09E35D| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0084:
|09E35E| db $00 ; Unlayered OAM
|09E35F| db $05, $03, $71 ; SPRITE 71   | xy: { 0x030, 0x050, U } | s: 0x00
|09E362| db $05, $1B, $71 ; SPRITE 71   | xy: { 0x1B0, 0x050, U } | s: 0x00
|09E365| db $07, $0F, $61 ; SPRITE 61   | xy: { 0x0F0, 0x070, U } | s: 0x00
|09E368| db $12, $09, $71 ; SPRITE 71   | xy: { 0x090, 0x120, U } | s: 0x00
|09E36B| db $12, $15, $71 ; SPRITE 71   | xy: { 0x150, 0x120, U } | s: 0x00
|09E36E| db $1B, $09, $71 ; SPRITE 71   | xy: { 0x090, 0x1B0, U } | s: 0x00
|09E371| db $1B, $15, $71 ; SPRITE 71   | xy: { 0x150, 0x1B0, U } | s: 0x00
|09E374| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0085:
|09E375| db $00 ; Unlayered OAM
|09E376| db $0E, $07, $63 ; SPRITE 63   | xy: { 0x070, 0x0E0, U } | s: 0x00
|09E379| db $1B, $09, $64 ; SPRITE 64   | xy: { 0x090, 0x1B0, U } | s: 0x00
|09E37C| db $05, $14, $4F ; SPRITE 4F   | xy: { 0x140, 0x050, U } | s: 0x00
|09E37F| db $05, $1B, $4F ; SPRITE 4F   | xy: { 0x1B0, 0x050, U } | s: 0x00
|09E382| db $08, $16, $4F ; SPRITE 4F   | xy: { 0x160, 0x080, U } | s: 0x00
|09E385| db $0A, $18, $61 ; SPRITE 61   | xy: { 0x180, 0x0A0, U } | s: 0x00
|09E388| db $0E, $03, $71 ; SPRITE 71   | xy: { 0x030, 0x0E0, U } | s: 0x00
|09E38B| db $15, $0C, $71 ; SPRITE 71   | xy: { 0x0C0, 0x150, U } | s: 0x00
|09E38E| db $18, $18, $61 ; SPRITE 61   | xy: { 0x180, 0x180, U } | s: 0x00
|09E391| db $1C, $07, $71 ; SPRITE 71   | xy: { 0x070, 0x1C0, U } | s: 0x00
|09E394| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0086:
|09E395| db $01 ; Layered OAM
|09E396| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0087:
|09E397| db $00 ; Unlayered OAM
|09E398| db $05, $14, $18 ; SPRITE 18   | xy: { 0x140, 0x050, U } | s: 0x00
|09E39B| db $07, $1A, $18 ; SPRITE 18   | xy: { 0x1A0, 0x070, U } | s: 0x00
|09E39E| db $0B, $13, $18 ; SPRITE 18   | xy: { 0x130, 0x0B0, U } | s: 0x00
|09E3A1| db $19, $06, $18 ; SPRITE 18   | xy: { 0x060, 0x190, U } | s: 0x00
|09E3A4| db $08, $E7, $14 ; OVERLORD 14 | xy: { 0x070, 0x080, U }
|09E3A7| db $04, $17, $1E ; SPRITE 1E   | xy: { 0x170, 0x040, U } | s: 0x00
|09E3AA| db $0C, $03, $1E ; SPRITE 1E   | xy: { 0x030, 0x0C0, U } | s: 0x00
|09E3AD| db $15, $04, $1E ; SPRITE 1E   | xy: { 0x040, 0x150, U } | s: 0x00
|09E3B0| db $17, $0B, $A7 ; SPRITE A7   | xy: { 0x0B0, 0x170, U } | s: 0x00
|09E3B3| db $18, $19, $A7 ; SPRITE A7   | xy: { 0x190, 0x180, U } | s: 0x00
|09E3B6| db $19, $04, $A7 ; SPRITE A7   | xy: { 0x040, 0x190, U } | s: 0x00
|09E3B9| db $1A, $08, $E4 ; SPRITE E4   | xy: { 0x080, 0x1A0, U } | s: 0x00
|09E3BC| db $1C, $15, $A7 ; SPRITE A7   | xy: { 0x150, 0x1C0, U } | s: 0x00
|09E3BF| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0089:
|09E3C0| db $00 ; Unlayered OAM
|09E3C1| db $0A, $10, $E3 ; SPRITE E3   | xy: { 0x100, 0x0A0, U } | s: 0x00
|09E3C4| db $0B, $0F, $E3 ; SPRITE E3   | xy: { 0x0F0, 0x0B0, U } | s: 0x00
|09E3C7| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room008B:
|09E3C8| db $00 ; Unlayered OAM
|09E3C9| db $07, $15, $93 ; SPRITE 93   | xy: { 0x150, 0x070, U } | s: 0x00
|09E3CC| db $18, $04, $1E ; SPRITE 1E   | xy: { 0x040, 0x180, U } | s: 0x00
|09E3CF| db $18, $0B, $1E ; SPRITE 1E   | xy: { 0x0B0, 0x180, U } | s: 0x00
|09E3D2| db $04, $1A, $24 ; SPRITE 24   | xy: { 0x1A0, 0x040, U } | s: 0x00
|09E3D5| db $12, $03, $8A ; SPRITE 8A   | xy: { 0x030, 0x120, U } | s: 0x00
|09E3D8| db $18, $07, $A7 ; SPRITE A7   | xy: { 0x070, 0x180, U } | s: 0x00
|09E3DB| db $18, $18, $7E ; SPRITE 7E   | xy: { 0x180, 0x180, U } | s: 0x00
|09E3DE| db $18, $18, $7F ; SPRITE 7F   | xy: { 0x180, 0x180, U } | s: 0x00
|09E3E1| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room008C:
|09E3E2| db $00 ; Unlayered OAM
|09E3E3| db $03, $1A, $06 ; SPRITE 06   | xy: { 0x1A0, 0x030, U } | s: 0x00
|09E3E6| db $05, $F8, $1A ; OVERLORD 1A | xy: { 0x180, 0x050, U }
|09E3E9| db $06, $F5, $1A ; OVERLORD 1A | xy: { 0x150, 0x060, U }
|09E3EC| db $06, $FA, $1A ; OVERLORD 1A | xy: { 0x1A0, 0x060, U }
|09E3EF| db $0A, $F5, $1A ; OVERLORD 1A | xy: { 0x150, 0x0A0, U }
|09E3F2| db $0A, $FA, $1A ; OVERLORD 1A | xy: { 0x1A0, 0x0A0, U }
|09E3F5| db $08, $08, $5B ; SPRITE 5B   | xy: { 0x080, 0x080, U } | s: 0x00
|09E3F8| db $08, $17, $8A ; SPRITE 8A   | xy: { 0x170, 0x080, U } | s: 0x00
|09E3FB| db $09, $0B, $A7 ; SPRITE A7   | xy: { 0x0B0, 0x090, U } | s: 0x00
|09E3FE| db $0B, $03, $A7 ; SPRITE A7   | xy: { 0x030, 0x0B0, U } | s: 0x00
|09E401| db $17, $05, $80 ; SPRITE 80   | xy: { 0x050, 0x170, U } | s: 0x00
|09E404| db $17, $16, $5B ; SPRITE 5B   | xy: { 0x160, 0x170, U } | s: 0x00
|09E407| db $18, $14, $15 ; SPRITE 15   | xy: { 0x140, 0x180, U } | s: 0x00
|09E40A| db $1B, $0B, $80 ; SPRITE 80   | xy: { 0x0B0, 0x1B0, U } | s: 0x00
|09E40D| db $1C, $1A, $15 ; SPRITE 15   | xy: { 0x1A0, 0x1C0, U } | s: 0x00
|09E410| db $07, $09, $3B ; SPRITE 3B   | xy: { 0x090, 0x070, U } | s: 0x00
|09E413| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room008D:
|09E414| db $00 ; Unlayered OAM
|09E415| db $08, $E7, $14 ; OVERLORD 14 | xy: { 0x070, 0x080, U }
|09E418| db $04, $07, $C6 ; SPRITE C6   | xy: { 0x070, 0x040, U } | s: 0x00
|09E41B| db $08, $09, $15 ; SPRITE 15   | xy: { 0x090, 0x080, U } | s: 0x00
|09E41E| db $09, $08, $D1 ; SPRITE D1   | xy: { 0x080, 0x090, U } | s: 0x00
|09E421| db $0C, $09, $C6 ; SPRITE C6   | xy: { 0x090, 0x0C0, U } | s: 0x00
|09E424| db $0D, $13, $8B ; SPRITE 8B   | xy: { 0x130, 0x0D0, U } | s: 0x00
|09E427| db $0F, $EF, $09 ; OVERLORD 09 | xy: { 0x0F0, 0x0F0, U }
|09E42A| db $10, $17, $8A ; SPRITE 8A   | xy: { 0x170, 0x100, U } | s: 0x00
|09E42D| db $14, $17, $A7 ; SPRITE A7   | xy: { 0x170, 0x140, U } | s: 0x00
|09E430| db $18, $07, $7E ; SPRITE 7E   | xy: { 0x070, 0x180, U } | s: 0x00
|09E433| db $1B, $14, $24 ; SPRITE 24   | xy: { 0x140, 0x1B0, U } | s: 0x00
|09E436| db $1C, $13, $C5 ; SPRITE C5   | xy: { 0x130, 0x1C0, U } | s: 0x00
|09E439| db $1C, $14, $24 ; SPRITE 24   | xy: { 0x140, 0x1C0, U } | s: 0x00
|09E43C| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room008E:
|09E43D| db $00 ; Unlayered OAM
|09E43E| db $02, $1B, $A1 ; SPRITE A1   | xy: { 0x1B0, 0x020, U } | s: 0x00
|09E441| db $05, $18, $8F ; SPRITE 8F   | xy: { 0x180, 0x050, U } | s: 0x00
|09E444| db $06, $14, $D1 ; SPRITE D1   | xy: { 0x140, 0x060, U } | s: 0x00
|09E447| db $08, $1B, $8F ; SPRITE 8F   | xy: { 0x1B0, 0x080, U } | s: 0x00
|09E44A| db $09, $14, $8F ; SPRITE 8F   | xy: { 0x140, 0x090, U } | s: 0x00
|09E44D| db $0A, $16, $8F ; SPRITE 8F   | xy: { 0x160, 0x0A0, U } | s: 0x00
|09E450| db $0B, $14, $8F ; SPRITE 8F   | xy: { 0x140, 0x0B0, U } | s: 0x00
|09E453| db $0B, $18, $8F ; SPRITE 8F   | xy: { 0x180, 0x0B0, U } | s: 0x00
|09E456| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0090:
|09E457| db $00 ; Unlayered OAM
|09E458| db $15, $07, $BD ; SPRITE BD   | xy: { 0x070, 0x150, U } | s: 0x00
|09E45B| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0091:
|09E45C| db $00 ; Unlayered OAM
|09E45D| db $04, $18, $1E ; SPRITE 1E   | xy: { 0x180, 0x040, U } | s: 0x00
|09E460| db $0E, $1B, $8A ; SPRITE 8A   | xy: { 0x1B0, 0x0E0, U } | s: 0x00
|09E463| db $0F, $F7, $08 ; OVERLORD 08 | xy: { 0x170, 0x0F0, U }
|09E466| db $12, $17, $C5 ; SPRITE C5   | xy: { 0x170, 0x120, U } | s: 0x00
|09E469| db $12, $18, $D1 ; SPRITE D1   | xy: { 0x180, 0x120, U } | s: 0x00
|09E46C| db $12, $19, $15 ; SPRITE 15   | xy: { 0x190, 0x120, U } | s: 0x00
|09E46F| db $18, $18, $15 ; SPRITE 15   | xy: { 0x180, 0x180, U } | s: 0x00
|09E472| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0092:
|09E473| db $00 ; Unlayered OAM
|09E474| db $09, $18, $1E ; SPRITE 1E   | xy: { 0x180, 0x090, U } | s: 0x00
|09E477| db $0C, $03, $1E ; SPRITE 1E   | xy: { 0x030, 0x0C0, U } | s: 0x00
|09E47A| db $04, $18, $15 ; SPRITE 15   | xy: { 0x180, 0x040, U } | s: 0x00
|09E47D| db $05, $0B, $C5 ; SPRITE C5   | xy: { 0x0B0, 0x050, U } | s: 0x00
|09E480| db $08, $09, $15 ; SPRITE 15   | xy: { 0x090, 0x080, U } | s: 0x00
|09E483| db $09, $17, $C5 ; SPRITE C5   | xy: { 0x170, 0x090, U } | s: 0x00
|09E486| db $0F, $15, $C6 ; SPRITE C6   | xy: { 0x150, 0x0F0, U } | s: 0x00
|09E489| db $12, $E7, $16 ; OVERLORD 16 | xy: { 0x070, 0x120, U }
|09E48C| db $12, $19, $8A ; SPRITE 8A   | xy: { 0x190, 0x120, U } | s: 0x00
|09E48F| db $14, $03, $15 ; SPRITE 15   | xy: { 0x030, 0x140, U } | s: 0x00
|09E492| db $16, $0A, $A7 ; SPRITE A7   | xy: { 0x0A0, 0x160, U } | s: 0x00
|09E495| db $1B, $03, $15 ; SPRITE 15   | xy: { 0x030, 0x1B0, U } | s: 0x00
|09E498| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0093:
|09E499| db $00 ; Unlayered OAM
|09E49A| db $09, $09, $C5 ; SPRITE C5   | xy: { 0x090, 0x090, U } | s: 0x00
|09E49D| db $09, $16, $C5 ; SPRITE C5   | xy: { 0x160, 0x090, U } | s: 0x00
|09E4A0| db $0C, $0C, $C5 ; SPRITE C5   | xy: { 0x0C0, 0x0C0, U } | s: 0x00
|09E4A3| db $0C, $13, $C5 ; SPRITE C5   | xy: { 0x130, 0x0C0, U } | s: 0x00
|09E4A6| db $0C, $17, $8F ; SPRITE 8F   | xy: { 0x170, 0x0C0, U } | s: 0x00
|09E4A9| db $15, $04, $A7 ; SPRITE A7   | xy: { 0x040, 0x150, U } | s: 0x00
|09E4AC| db $1C, $0C, $A7 ; SPRITE A7   | xy: { 0x0C0, 0x1C0, U } | s: 0x00
|09E4AF| db $1C, $04, $15 ; SPRITE 15   | xy: { 0x040, 0x1C0, U } | s: 0x00
|09E4B2| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0095:
|09E4B3| db $00 ; Unlayered OAM
|09E4B4| db $0C, $16, $43 ; SPRITE 43   | xy: { 0x160, 0x0C0, U } | s: 0x00
|09E4B7| db $0C, $17, $43 ; SPRITE 43   | xy: { 0x170, 0x0C0, U } | s: 0x00
|09E4BA| db $0C, $18, $43 ; SPRITE 43   | xy: { 0x180, 0x0C0, U } | s: 0x00
|09E4BD| db $0C, $19, $43 ; SPRITE 43   | xy: { 0x190, 0x0C0, U } | s: 0x00
|09E4C0| db $1A, $F7, $0B ; OVERLORD 0B | xy: { 0x170, 0x1A0, U }
|09E4C3| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0096:
|09E4C4| db $00 ; Unlayered OAM
|09E4C5| db $0B, $08, $7E ; SPRITE 7E   | xy: { 0x080, 0x0B0, U } | s: 0x00
|09E4C8| db $15, $1E, $96 ; SPRITE 96   | xy: { 0x1E0, 0x150, U } | s: 0x00
|09E4CB| db $17, $1E, $96 ; SPRITE 96   | xy: { 0x1E0, 0x170, U } | s: 0x00
|09E4CE| db $19, $1E, $96 ; SPRITE 96   | xy: { 0x1E0, 0x190, U } | s: 0x00
|09E4D1| db $1B, $1E, $96 ; SPRITE 96   | xy: { 0x1E0, 0x1B0, U } | s: 0x00
|09E4D4| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0097:
|09E4D5| db $00 ; Unlayered OAM
|09E4D6| db $0F, $EF, $15 ; OVERLORD 15 | xy: { 0x0F0, 0x0F0, U }
|09E4D9| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0098:
|09E4DA| db $00 ; Unlayered OAM
|09E4DB| db $13, $10, $8F ; SPRITE 8F   | xy: { 0x100, 0x130, U } | s: 0x00
|09E4DE| db $14, $09, $8F ; SPRITE 8F   | xy: { 0x090, 0x140, U } | s: 0x00
|09E4E1| db $14, $0C, $8F ; SPRITE 8F   | xy: { 0x0C0, 0x140, U } | s: 0x00
|09E4E4| db $14, $0F, $8F ; SPRITE 8F   | xy: { 0x0F0, 0x140, U } | s: 0x00
|09E4E7| db $17, $08, $8F ; SPRITE 8F   | xy: { 0x080, 0x170, U } | s: 0x00
|09E4EA| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0099:
|09E4EB| db $00 ; Unlayered OAM
|09E4EC| db $06, $15, $15 ; SPRITE 15   | xy: { 0x150, 0x060, U } | s: 0x00
|09E4EF| db $08, $1A, $15 ; SPRITE 15   | xy: { 0x1A0, 0x080, U } | s: 0x00
|09E4F2| db $17, $0E, $83 ; SPRITE 83   | xy: { 0x0E0, 0x170, U } | s: 0x00
|09E4F5| db $17, $11, $83 ; SPRITE 83   | xy: { 0x110, 0x170, U } | s: 0x00
|09E4F8| db $FE, $00, $E4 ; small key on above sprite
|09E4FB| db $18, $0D, $4E ; SPRITE 4E   | xy: { 0x0D0, 0x180, U } | s: 0x00
|09E4FE| db $18, $12, $4E ; SPRITE 4E   | xy: { 0x120, 0x180, U } | s: 0x00
|09E501| db $19, $0E, $4F ; SPRITE 4F   | xy: { 0x0E0, 0x190, U } | s: 0x00
|09E504| db $19, $0F, $4F ; SPRITE 4F   | xy: { 0x0F0, 0x190, U } | s: 0x00
|09E507| db $19, $10, $4F ; SPRITE 4F   | xy: { 0x100, 0x190, U } | s: 0x00
|09E50A| db $19, $11, $4F ; SPRITE 4F   | xy: { 0x110, 0x190, U } | s: 0x00
|09E50D| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room009B:
|09E50E| db $00 ; Unlayered OAM
|09E50F| db $08, $06, $1E ; SPRITE 1E   | xy: { 0x060, 0x080, U } | s: 0x00
|09E512| db $08, $07, $1E ; SPRITE 1E   | xy: { 0x070, 0x080, U } | s: 0x00
|09E515| db $08, $14, $1E ; SPRITE 1E   | xy: { 0x140, 0x080, U } | s: 0x00
|09E518| db $05, $1C, $8A ; SPRITE 8A   | xy: { 0x1C0, 0x050, U } | s: 0x00
|09E51B| db $06, $1C, $8A ; SPRITE 8A   | xy: { 0x1C0, 0x060, U } | s: 0x00
|09E51E| db $07, $1C, $8A ; SPRITE 8A   | xy: { 0x1C0, 0x070, U } | s: 0x00
|09E521| db $08, $03, $C6 ; SPRITE C6   | xy: { 0x030, 0x080, U } | s: 0x00
|09E524| db $08, $1C, $8A ; SPRITE 8A   | xy: { 0x1C0, 0x080, U } | s: 0x00
|09E527| db $09, $1C, $8A ; SPRITE 8A   | xy: { 0x1C0, 0x090, U } | s: 0x00
|09E52A| db $0A, $1C, $8A ; SPRITE 8A   | xy: { 0x1C0, 0x0A0, U } | s: 0x00
|09E52D| db $0B, $1C, $8A ; SPRITE 8A   | xy: { 0x1C0, 0x0B0, U } | s: 0x00
|09E530| db $1A, $17, $26 ; SPRITE 26   | xy: { 0x170, 0x1A0, U } | s: 0x00
|09E533| db $1B, $13, $26 ; SPRITE 26   | xy: { 0x130, 0x1B0, U } | s: 0x00
|09E536| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room009C:
|09E537| db $00 ; Unlayered OAM
|09E538| db $09, $13, $26 ; SPRITE 26   | xy: { 0x130, 0x090, U } | s: 0x00
|09E53B| db $0A, $0B, $13 ; SPRITE 13   | xy: { 0x0B0, 0x0A0, U } | s: 0x00
|09E53E| db $0F, $11, $26 ; SPRITE 26   | xy: { 0x110, 0x0F0, U } | s: 0x00
|09E541| db $0E, $17, $26 ; SPRITE 26   | xy: { 0x170, 0x0E0, U } | s: 0x00
|09E544| db $12, $0D, $26 ; SPRITE 26   | xy: { 0x0D0, 0x120, U } | s: 0x00
|09E547| db $13, $09, $26 ; SPRITE 26   | xy: { 0x090, 0x130, U } | s: 0x00
|09E54A| db $1C, $0F, $80 ; SPRITE 80   | xy: { 0x0F0, 0x1C0, U } | s: 0x00
|09E54D| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room009D:
|09E54E| db $00 ; Unlayered OAM
|09E54F| db $06, $1C, $1E ; SPRITE 1E   | xy: { 0x1C0, 0x060, U } | s: 0x00
|09E552| db $04, $06, $26 ; SPRITE 26   | xy: { 0x060, 0x040, U } | s: 0x00
|09E555| db $04, $14, $8B ; SPRITE 8B   | xy: { 0x140, 0x040, U } | s: 0x00
|09E558| db $09, $18, $8B ; SPRITE 8B   | xy: { 0x180, 0x090, U } | s: 0x00
|09E55B| db $0C, $05, $26 ; SPRITE 26   | xy: { 0x050, 0x0C0, U } | s: 0x00
|09E55E| db $0C, $13, $8B ; SPRITE 8B   | xy: { 0x130, 0x0C0, U } | s: 0x00
|09E561| db $14, $10, $24 ; SPRITE 24   | xy: { 0x100, 0x140, U } | s: 0x00
|09E564| db $18, $0B, $24 ; SPRITE 24   | xy: { 0x0B0, 0x180, U } | s: 0x00
|09E567| db $1C, $11, $24 ; SPRITE 24   | xy: { 0x110, 0x1C0, U } | s: 0x00
|09E56A| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room009E:
|09E56B| db $00 ; Unlayered OAM
|09E56C| db $05, $18, $23 ; SPRITE 23   | xy: { 0x180, 0x050, U } | s: 0x00
|09E56F| db $08, $16, $23 ; SPRITE 23   | xy: { 0x160, 0x080, U } | s: 0x00
|09E572| db $08, $18, $91 ; SPRITE 91   | xy: { 0x180, 0x080, U } | s: 0x00
|09E575| db $08, $19, $23 ; SPRITE 23   | xy: { 0x190, 0x080, U } | s: 0x00
|09E578| db $12, $14, $A1 ; SPRITE A1   | xy: { 0x140, 0x120, U } | s: 0x00
|09E57B| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room009F:
|09E57C| db $00 ; Unlayered OAM
|09E57D| db $12, $04, $9D ; SPRITE 9D   | xy: { 0x040, 0x120, U } | s: 0x00
|09E580| db $12, $06, $9D ; SPRITE 9D   | xy: { 0x060, 0x120, U } | s: 0x00
|09E583| db $12, $09, $9D ; SPRITE 9D   | xy: { 0x090, 0x120, U } | s: 0x00
|09E586| db $12, $0B, $9D ; SPRITE 9D   | xy: { 0x0B0, 0x120, U } | s: 0x00
|09E589| db $17, $07, $15 ; SPRITE 15   | xy: { 0x070, 0x170, U } | s: 0x00
|09E58C| db $18, $08, $7E ; SPRITE 7E   | xy: { 0x080, 0x180, U } | s: 0x00
|09E58F| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00A0:
|09E590| db $00 ; Unlayered OAM
|09E591| db $08, $03, $C5 ; SPRITE C5   | xy: { 0x030, 0x080, U } | s: 0x00
|09E594| db $08, $0E, $15 ; SPRITE 15   | xy: { 0x0E0, 0x080, U } | s: 0x00
|09E597| db $0C, $14, $80 ; SPRITE 80   | xy: { 0x140, 0x0C0, U } | s: 0x00
|09E59A| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00A1:
|09E59B| db $00 ; Unlayered OAM
|09E59C| db $08, $0A, $1E ; SPRITE 1E   | xy: { 0x0A0, 0x080, U } | s: 0x00
|09E59F| db $07, $18, $5B ; SPRITE 5B   | xy: { 0x180, 0x070, U } | s: 0x00
|09E5A2| db $0B, $16, $5B ; SPRITE 5B   | xy: { 0x160, 0x0B0, U } | s: 0x00
|09E5A5| db $10, $19, $9B ; SPRITE 9B   | xy: { 0x190, 0x100, U } | s: 0x00
|09E5A8| db $15, $15, $C5 ; SPRITE C5   | xy: { 0x150, 0x150, U } | s: 0x00
|09E5AB| db $15, $1A, $C5 ; SPRITE C5   | xy: { 0x1A0, 0x150, U } | s: 0x00
|09E5AE| db $19, $15, $A7 ; SPRITE A7   | xy: { 0x150, 0x190, U } | s: 0x00
|09E5B1| db $19, $17, $D1 ; SPRITE D1   | xy: { 0x170, 0x190, U } | s: 0x00
|09E5B4| db $19, $1B, $A7 ; SPRITE A7   | xy: { 0x1B0, 0x190, U } | s: 0x00
|09E5B7| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00A3:
|09E5B8| db $00 ; Unlayered OAM
|09E5B9| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00A4:
|09E5BA| db $00 ; Unlayered OAM
|09E5BB| db $15, $07, $CB ; SPRITE CB   | xy: { 0x070, 0x150, U } | s: 0x00
|09E5BE| db $15, $07, $CC ; SPRITE CC   | xy: { 0x070, 0x150, U } | s: 0x00
|09E5C1| db $15, $07, $CD ; SPRITE CD   | xy: { 0x070, 0x150, U } | s: 0x00
|09E5C4| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00A5:
|09E5C5| db $00 ; Unlayered OAM
|09E5C6| db $05, $16, $9B ; SPRITE 9B   | xy: { 0x160, 0x050, U } | s: 0x00
|09E5C9| db $05, $19, $9B ; SPRITE 9B   | xy: { 0x190, 0x050, U } | s: 0x00
|09E5CC| db $07, $04, $9B ; SPRITE 9B   | xy: { 0x040, 0x070, U } | s: 0x00
|09E5CF| db $07, $0B, $9B ; SPRITE 9B   | xy: { 0x0B0, 0x070, U } | s: 0x00
|09E5D2| db $08, $17, $8A ; SPRITE 8A   | xy: { 0x170, 0x080, U } | s: 0x00
|09E5D5| db $09, $15, $9B ; SPRITE 9B   | xy: { 0x150, 0x090, U } | s: 0x00
|09E5D8| db $09, $1A, $9B ; SPRITE 9B   | xy: { 0x1A0, 0x090, U } | s: 0x00
|09E5DB| db $0A, $08, $9B ; SPRITE 9B   | xy: { 0x080, 0x0A0, U } | s: 0x00
|09E5DE| db $12, $0C, $97 ; SPRITE 97   | xy: { 0x0C0, 0x120, U } | s: 0x00
|09E5E1| db $12, $12, $97 ; SPRITE 97   | xy: { 0x120, 0x120, U } | s: 0x00
|09E5E4| db $17, $12, $43 ; SPRITE 43   | xy: { 0x120, 0x170, U } | s: 0x00
|09E5E7| db $18, $13, $41 ; SPRITE 41   | xy: { 0x130, 0x180, U } | s: 0x00
|09E5EA| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00A6:
|09E5EB| db $00 ; Unlayered OAM
|09E5EC| db $0F, $EF, $15 ; OVERLORD 15 | xy: { 0x0F0, 0x0F0, U }
|09E5EF| db $0E, $0C, $15 ; SPRITE 15   | xy: { 0x0C0, 0x0E0, U } | s: 0x00
|09E5F2| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00A7:
|09E5F3| db $00 ; Unlayered OAM
|09E5F4| db $08, $06, $E3 ; SPRITE E3   | xy: { 0x060, 0x080, U } | s: 0x00
|09E5F7| db $09, $06, $E3 ; SPRITE E3   | xy: { 0x060, 0x090, U } | s: 0x00
|09E5FA| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00A8:
|09E5FB| db $01 ; Layered OAM
|09E5FC| db $0E, $16, $A7 ; SPRITE A7   | xy: { 0x160, 0x0E0, U } | s: 0x00
|09E5FF| db $0E, $1A, $A7 ; SPRITE A7   | xy: { 0x1A0, 0x0E0, U } | s: 0x00
|09E602| db $12, $16, $A7 ; SPRITE A7   | xy: { 0x160, 0x120, U } | s: 0x00
|09E605| db $12, $1A, $A7 ; SPRITE A7   | xy: { 0x1A0, 0x120, U } | s: 0x00
|09E608| db $16, $E8, $18 ; OVERLORD 18 | xy: { 0x080, 0x160, U }
|09E60B| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00A9:
|09E60C| db $00 ; Unlayered OAM
|09E60D| db $85, $09, $83 ; SPRITE 83   | xy: { 0x090, 0x050, L } | s: 0x00
|09E610| db $85, $16, $83 ; SPRITE 83   | xy: { 0x160, 0x050, L } | s: 0x00
|09E613| db $8C, $ED, $05 ; OVERLORD 05 | xy: { 0x0D0, 0x0C0, L }
|09E616| db $8C, $F2, $05 ; OVERLORD 05 | xy: { 0x120, 0x0C0, L }
|09E619| db $92, $ED, $05 ; OVERLORD 05 | xy: { 0x0D0, 0x120, L }
|09E61C| db $92, $F2, $05 ; OVERLORD 05 | xy: { 0x120, 0x120, L }
|09E61F| db $90, $0A, $A7 ; SPRITE A7   | xy: { 0x0A0, 0x100, L } | s: 0x00
|09E622| db $90, $14, $A7 ; SPRITE A7   | xy: { 0x140, 0x100, L } | s: 0x00
|09E625| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00AA:
|09E626| db $01 ; Layered OAM
|09E627| db $06, $18, $15 ; SPRITE 15   | xy: { 0x180, 0x060, U } | s: 0x00
|09E62A| db $07, $0A, $4F ; SPRITE 4F   | xy: { 0x0A0, 0x070, U } | s: 0x00
|09E62D| db $0B, $06, $A7 ; SPRITE A7   | xy: { 0x060, 0x0B0, U } | s: 0x00
|09E630| db $0C, $0C, $A7 ; SPRITE A7   | xy: { 0x0C0, 0x0C0, U } | s: 0x00
|09E633| db $13, $0C, $A7 ; SPRITE A7   | xy: { 0x0C0, 0x130, U } | s: 0x00
|09E636| db $14, $0A, $4F ; SPRITE 4F   | xy: { 0x0A0, 0x140, U } | s: 0x00
|09E639| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00AB:
|09E63A| db $00 ; Unlayered OAM
|09E63B| db $18, $04, $1E ; SPRITE 1E   | xy: { 0x040, 0x180, U } | s: 0x00
|09E63E| db $15, $03, $8A ; SPRITE 8A   | xy: { 0x030, 0x150, U } | s: 0x00
|09E641| db $16, $0C, $8A ; SPRITE 8A   | xy: { 0x0C0, 0x160, U } | s: 0x00
|09E644| db $17, $03, $8A ; SPRITE 8A   | xy: { 0x030, 0x170, U } | s: 0x00
|09E647| db $18, $06, $8F ; SPRITE 8F   | xy: { 0x060, 0x180, U } | s: 0x00
|09E64A| db $19, $03, $8A ; SPRITE 8A   | xy: { 0x030, 0x190, U } | s: 0x00
|09E64D| db $1A, $0C, $8A ; SPRITE 8A   | xy: { 0x0C0, 0x1A0, U } | s: 0x00
|09E650| db $1B, $03, $8A ; SPRITE 8A   | xy: { 0x030, 0x1B0, U } | s: 0x00
|09E653| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00AC:
|09E654| db $00 ; Unlayered OAM
|09E655| db $15, $19, $CE ; SPRITE CE   | xy: { 0x190, 0x150, U } | s: 0x00
|09E658| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00AE:
|09E659| db $00 ; Unlayered OAM
|09E65A| db $07, $13, $24 ; SPRITE 24   | xy: { 0x130, 0x070, U } | s: 0x00
|09E65D| db $07, $15, $24 ; SPRITE 24   | xy: { 0x150, 0x070, U } | s: 0x00
|09E660| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00AF:
|09E661| db $00 ; Unlayered OAM
|09E662| db $08, $0A, $7E ; SPRITE 7E   | xy: { 0x0A0, 0x080, U } | s: 0x00
|09E665| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00B0:
|09E666| db $00 ; Unlayered OAM
|09E667| db $07, $07, $43 ; SPRITE 43   | xy: { 0x070, 0x070, U } | s: 0x00
|09E66A| db $07, $17, $6F ; SPRITE 6F   | xy: { 0x170, 0x070, U } | s: 0x00
|09E66D| db $07, $18, $6F ; SPRITE 6F   | xy: { 0x180, 0x070, U } | s: 0x00
|09E670| db $08, $14, $48 ; SPRITE 48   | xy: { 0x140, 0x080, U } | s: 0x00
|09E673| db $08, $1B, $48 ; SPRITE 48   | xy: { 0x1B0, 0x080, U } | s: 0x00
|09E676| db $0B, $05, $43 ; SPRITE 43   | xy: { 0x050, 0x0B0, U } | s: 0x00
|09E679| db $14, $16, $6A ; SPRITE 6A   | xy: { 0x160, 0x140, U } | s: 0x00
|09E67C| db $16, $04, $6F ; SPRITE 6F   | xy: { 0x040, 0x160, U } | s: 0x00
|09E67F| db $16, $0B, $6F ; SPRITE 6F   | xy: { 0x0B0, 0x160, U } | s: 0x00
|09E682| db $16, $0A, $43 ; SPRITE 43   | xy: { 0x0A0, 0x160, U } | s: 0x00
|09E685| db $18, $08, $43 ; SPRITE 43   | xy: { 0x080, 0x180, U } | s: 0x00
|09E688| db $FE, $00, $E4 ; small key on above sprite
|09E68B| db $1A, $1B, $44 ; SPRITE 44   | xy: { 0x1B0, 0x1A0, U } | s: 0x00
|09E68E| db $1C, $17, $48 ; SPRITE 48   | xy: { 0x170, 0x1C0, U } | s: 0x00
|09E691| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00B1:
|09E692| db $00 ; Unlayered OAM
|09E693| db $07, $15, $C5 ; SPRITE C5   | xy: { 0x150, 0x070, U } | s: 0x00
|09E696| db $07, $1A, $C5 ; SPRITE C5   | xy: { 0x1A0, 0x070, U } | s: 0x00
|09E699| db $0E, $16, $8A ; SPRITE 8A   | xy: { 0x160, 0x0E0, U } | s: 0x00
|09E69C| db $11, $19, $8A ; SPRITE 8A   | xy: { 0x190, 0x110, U } | s: 0x00
|09E69F| db $17, $0C, $9B ; SPRITE 9B   | xy: { 0x0C0, 0x170, U } | s: 0x00
|09E6A2| db $17, $1A, $7D ; SPRITE 7D   | xy: { 0x1A0, 0x170, U } | s: 0x00
|09E6A5| db $18, $07, $C6 ; SPRITE C6   | xy: { 0x070, 0x180, U } | s: 0x00
|09E6A8| db $1A, $03, $9B ; SPRITE 9B   | xy: { 0x030, 0x1A0, U } | s: 0x00
|09E6AB| db $1A, $15, $15 ; SPRITE 15   | xy: { 0x150, 0x1A0, U } | s: 0x00
|09E6AE| db $1C, $08, $9B ; SPRITE 9B   | xy: { 0x080, 0x1C0, U } | s: 0x00
|09E6B1| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00B2:
|09E6B2| db $01 ; Layered OAM
|09E6B3| db $88, $14, $9B ; SPRITE 9B   | xy: { 0x140, 0x080, L } | s: 0x00
|09E6B6| db $8A, $0C, $D1 ; SPRITE D1   | xy: { 0x0C0, 0x0A0, L } | s: 0x00
|09E6B9| db $8A, $12, $15 ; SPRITE 15   | xy: { 0x120, 0x0A0, L } | s: 0x00
|09E6BC| db $8A, $13, $D1 ; SPRITE D1   | xy: { 0x130, 0x0A0, L } | s: 0x00
|09E6BF| db $8B, $07, $15 ; SPRITE 15   | xy: { 0x070, 0x0B0, L } | s: 0x00
|09E6C2| db $15, $04, $20 ; SPRITE 20   | xy: { 0x040, 0x150, U } | s: 0x00
|09E6C5| db $15, $0B, $20 ; SPRITE 20   | xy: { 0x0B0, 0x150, U } | s: 0x00
|09E6C8| db $16, $03, $15 ; SPRITE 15   | xy: { 0x030, 0x160, U } | s: 0x00
|09E6CB| db $18, $15, $C5 ; SPRITE C5   | xy: { 0x150, 0x180, U } | s: 0x00
|09E6CE| db $18, $1A, $C5 ; SPRITE C5   | xy: { 0x1A0, 0x180, U } | s: 0x00
|09E6D1| db $1B, $04, $20 ; SPRITE 20   | xy: { 0x040, 0x1B0, U } | s: 0x00
|09E6D4| db $1B, $0B, $20 ; SPRITE 20   | xy: { 0x0B0, 0x1B0, U } | s: 0x00
|09E6D7| db $1B, $14, $4E ; SPRITE 4E   | xy: { 0x140, 0x1B0, U } | s: 0x00
|09E6DA| db $1B, $1B, $4E ; SPRITE 4E   | xy: { 0x1B0, 0x1B0, U } | s: 0x00
|09E6DD| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00B3:
|09E6DE| db $00 ; Unlayered OAM
|09E6DF| db $15, $03, $A7 ; SPRITE A7   | xy: { 0x030, 0x150, U } | s: 0x00
|09E6E2| db $15, $0B, $A7 ; SPRITE A7   | xy: { 0x0B0, 0x150, U } | s: 0x00
|09E6E5| db $18, $06, $61 ; SPRITE 61   | xy: { 0x060, 0x180, U } | s: 0x00
|09E6E8| db $1A, $0A, $C6 ; SPRITE C6   | xy: { 0x0A0, 0x1A0, U } | s: 0x00
|09E6EB| db $1C, $07, $A7 ; SPRITE A7   | xy: { 0x070, 0x1C0, U } | s: 0x00
|09E6EE| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00B5:
|09E6EF| db $00 ; Unlayered OAM
|09E6F0| db $0A, $16, $7E ; SPRITE 7E   | xy: { 0x160, 0x0A0, U } | s: 0x00
|09E6F3| db $0F, $09, $7E ; SPRITE 7E   | xy: { 0x090, 0x0F0, U } | s: 0x00
|09E6F6| db $16, $16, $7E ; SPRITE 7E   | xy: { 0x160, 0x160, U } | s: 0x00
|09E6F9| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00B6:
|09E6FA| db $00 ; Unlayered OAM
|09E6FB| db $07, $06, $CA ; SPRITE CA   | xy: { 0x060, 0x070, U } | s: 0x00
|09E6FE| db $07, $0A, $CA ; SPRITE CA   | xy: { 0x0A0, 0x070, U } | s: 0x00
|09E701| db $04, $03, $1E ; SPRITE 1E   | xy: { 0x030, 0x040, U } | s: 0x00
|09E704| db $04, $0C, $1E ; SPRITE 1E   | xy: { 0x0C0, 0x040, U } | s: 0x00
|09E707| db $07, $17, $E3 ; SPRITE E3   | xy: { 0x170, 0x070, U } | s: 0x00
|09E70A| db $15, $07, $C7 ; SPRITE C7   | xy: { 0x070, 0x150, U } | s: 0x00
|09E70D| db $FE, $00, $E4 ; small key on above sprite
|09E710| db $18, $F7, $14 ; OVERLORD 14 | xy: { 0x170, 0x180, U }
|09E713| db $1B, $07, $8F ; SPRITE 8F   | xy: { 0x070, 0x1B0, U } | s: 0x00
|09E716| db $1B, $08, $8F ; SPRITE 8F   | xy: { 0x080, 0x1B0, U } | s: 0x00
|09E719| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00B7:
|09E71A| db $00 ; Unlayered OAM
|09E71B| db $09, $04, $5F ; SPRITE 5F   | xy: { 0x040, 0x090, U } | s: 0x00
|09E71E| db $11, $04, $5D ; SPRITE 5D   | xy: { 0x040, 0x110, U } | s: 0x00
|09E721| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00B8:
|09E722| db $00 ; Unlayered OAM
|09E723| db $0B, $15, $4E ; SPRITE 4E   | xy: { 0x150, 0x0B0, U } | s: 0x00
|09E726| db $0B, $1B, $4E ; SPRITE 4E   | xy: { 0x1B0, 0x0B0, U } | s: 0x00
|09E729| db $0D, $18, $82 ; SPRITE 82   | xy: { 0x180, 0x0D0, U } | s: 0x00
|09E72C| db $13, $18, $83 ; SPRITE 83   | xy: { 0x180, 0x130, U } | s: 0x00
|09E72F| db $16, $14, $A7 ; SPRITE A7   | xy: { 0x140, 0x160, U } | s: 0x00
|09E732| db $16, $1C, $A7 ; SPRITE A7   | xy: { 0x1C0, 0x160, U } | s: 0x00
|09E735| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00B9:
|09E736| db $01 ; Layered OAM
|09E737| db $85, $F1, $03 ; OVERLORD 03 | xy: { 0x110, 0x050, L }
|09E73A| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00BA:
|09E73B| db $00 ; Unlayered OAM
|09E73C| db $04, $14, $A7 ; SPRITE A7   | xy: { 0x140, 0x040, U } | s: 0x00
|09E73F| db $06, $03, $15 ; SPRITE 15   | xy: { 0x030, 0x060, U } | s: 0x00
|09E742| db $06, $18, $A7 ; SPRITE A7   | xy: { 0x180, 0x060, U } | s: 0x00
|09E745| db $09, $03, $15 ; SPRITE 15   | xy: { 0x030, 0x090, U } | s: 0x00
|09E748| db $09, $0C, $4F ; SPRITE 4F   | xy: { 0x0C0, 0x090, U } | s: 0x00
|09E74B| db $0A, $18, $A7 ; SPRITE A7   | xy: { 0x180, 0x0A0, U } | s: 0x00
|09E74E| db $0C, $08, $4F ; SPRITE 4F   | xy: { 0x080, 0x0C0, U } | s: 0x00
|09E751| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00BB:
|09E752| db $00 ; Unlayered OAM
|09E753| db $04, $1B, $A6 ; SPRITE A6   | xy: { 0x1B0, 0x040, U } | s: 0x00
|09E756| db $0A, $06, $C3 ; SPRITE C3   | xy: { 0x060, 0x0A0, U } | s: 0x00
|09E759| db $0A, $16, $A6 ; SPRITE A6   | xy: { 0x160, 0x0A0, U } | s: 0x00
|09E75C| db $0A, $19, $C3 ; SPRITE C3   | xy: { 0x190, 0x0A0, U } | s: 0x00
|09E75F| db $0C, $08, $15 ; SPRITE 15   | xy: { 0x080, 0x0C0, U } | s: 0x00
|09E762| db $0E, $09, $C3 ; SPRITE C3   | xy: { 0x090, 0x0E0, U } | s: 0x00
|09E765| db $10, $07, $80 ; SPRITE 80   | xy: { 0x070, 0x100, U } | s: 0x00
|09E768| db $14, $08, $C3 ; SPRITE C3   | xy: { 0x080, 0x140, U } | s: 0x00
|09E76B| db $15, $19, $C3 ; SPRITE C3   | xy: { 0x190, 0x150, U } | s: 0x00
|09E76E| db $16, $15, $15 ; SPRITE 15   | xy: { 0x150, 0x160, U } | s: 0x00
|09E771| db $1A, $17, $C3 ; SPRITE C3   | xy: { 0x170, 0x1A0, U } | s: 0x00
|09E774| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00BC:
|09E775| db $00 ; Unlayered OAM
|09E776| db $05, $06, $A5 ; SPRITE A5   | xy: { 0x060, 0x050, U } | s: 0x00
|09E779| db $05, $0C, $A7 ; SPRITE A7   | xy: { 0x0C0, 0x050, U } | s: 0x00
|09E77C| db $06, $08, $8A ; SPRITE 8A   | xy: { 0x080, 0x060, U } | s: 0x00
|09E77F| db $09, $0A, $A6 ; SPRITE A6   | xy: { 0x0A0, 0x090, U } | s: 0x00
|09E782| db $0A, $09, $8A ; SPRITE 8A   | xy: { 0x090, 0x0A0, U } | s: 0x00
|09E785| db $0B, $05, $A5 ; SPRITE A5   | xy: { 0x050, 0x0B0, U } | s: 0x00
|09E788| db $0A, $17, $A7 ; SPRITE A7   | xy: { 0x170, 0x0A0, U } | s: 0x00
|09E78B| db $11, $18, $A7 ; SPRITE A7   | xy: { 0x180, 0x110, U } | s: 0x00
|09E78E| db $16, $16, $A7 ; SPRITE A7   | xy: { 0x160, 0x160, U } | s: 0x00
|09E791| db $17, $08, $A5 ; SPRITE A5   | xy: { 0x080, 0x170, U } | s: 0x00
|09E794| db $18, $07, $80 ; SPRITE 80   | xy: { 0x070, 0x180, U } | s: 0x00
|09E797| db $19, $08, $A6 ; SPRITE A6   | xy: { 0x080, 0x190, U } | s: 0x00
|09E79A| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00BD:
|09E79B| db $00 ; Unlayered OAM
|09E79C| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00BE:
|09E79D| db $00 ; Unlayered OAM
|09E79E| db $08, $17, $15 ; SPRITE 15   | xy: { 0x170, 0x080, U } | s: 0x00
|09E7A1| db $12, $14, $A1 ; SPRITE A1   | xy: { 0x140, 0x120, U } | s: 0x00
|09E7A4| db $15, $14, $24 ; SPRITE 24   | xy: { 0x140, 0x150, U } | s: 0x00
|09E7A7| db $15, $1B, $24 ; SPRITE 24   | xy: { 0x1B0, 0x150, U } | s: 0x00
|09E7AA| db $16, $18, $91 ; SPRITE 91   | xy: { 0x180, 0x160, U } | s: 0x00
|09E7AD| db $1A, $14, $24 ; SPRITE 24   | xy: { 0x140, 0x1A0, U } | s: 0x00
|09E7B0| db $1A, $1B, $24 ; SPRITE 24   | xy: { 0x1B0, 0x1A0, U } | s: 0x00
|09E7B3| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00BF:
|09E7B4| db $00 ; Unlayered OAM
|09E7B5| db $18, $0B, $1E ; SPRITE 1E   | xy: { 0x0B0, 0x180, U } | s: 0x00
|09E7B8| db $15, $0C, $D1 ; SPRITE D1   | xy: { 0x0C0, 0x150, U } | s: 0x00
|09E7BB| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00C0:
|09E7BC| db $00 ; Unlayered OAM
|09E7BD| db $05, $17, $41 ; SPRITE 41   | xy: { 0x170, 0x050, U } | s: 0x00
|09E7C0| db $07, $1A, $46 ; SPRITE 46   | xy: { 0x1A0, 0x070, U } | s: 0x00
|09E7C3| db $09, $0B, $41 ; SPRITE 41   | xy: { 0x0B0, 0x090, U } | s: 0x00
|09E7C6| db $0B, $14, $46 ; SPRITE 46   | xy: { 0x140, 0x0B0, U } | s: 0x00
|09E7C9| db $FE, $00, $E4 ; small key on above sprite
|09E7CC| db $0E, $06, $41 ; SPRITE 41   | xy: { 0x060, 0x0E0, U } | s: 0x00
|09E7CF| db $18, $04, $41 ; SPRITE 41   | xy: { 0x040, 0x180, U } | s: 0x00
|09E7D2| db $1B, $14, $46 ; SPRITE 46   | xy: { 0x140, 0x1B0, U } | s: 0x00
|09E7D5| db $1B, $1B, $41 ; SPRITE 41   | xy: { 0x1B0, 0x1B0, U } | s: 0x00
|09E7D8| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00C1:
|09E7D9| db $00 ; Unlayered OAM
|09E7DA| db $17, $15, $1E ; SPRITE 1E   | xy: { 0x150, 0x170, U } | s: 0x00
|09E7DD| db $05, $14, $C5 ; SPRITE C5   | xy: { 0x140, 0x050, U } | s: 0x00
|09E7E0| db $05, $1B, $C5 ; SPRITE C5   | xy: { 0x1B0, 0x050, U } | s: 0x00
|09E7E3| db $0B, $06, $A7 ; SPRITE A7   | xy: { 0x060, 0x0B0, U } | s: 0x00
|09E7E6| db $0B, $15, $A7 ; SPRITE A7   | xy: { 0x150, 0x0B0, U } | s: 0x00
|09E7E9| db $15, $17, $7C ; SPRITE 7C   | xy: { 0x170, 0x150, U } | s: 0x00
|09E7EC| db $16, $09, $C5 ; SPRITE C5   | xy: { 0x090, 0x160, U } | s: 0x00
|09E7EF| db $18, $E7, $14 ; OVERLORD 14 | xy: { 0x070, 0x180, U }
|09E7F2| db $19, $14, $15 ; SPRITE 15   | xy: { 0x140, 0x190, U } | s: 0x00
|09E7F5| db $1A, $18, $C6 ; SPRITE C6   | xy: { 0x180, 0x1A0, U } | s: 0x00
|09E7F8| db $1B, $13, $24 ; SPRITE 24   | xy: { 0x130, 0x1B0, U } | s: 0x00
|09E7FB| db $FE, $00, $E4 ; small key on above sprite
|09E7FE| db $1B, $1B, $7C ; SPRITE 7C   | xy: { 0x1B0, 0x1B0, U } | s: 0x00
|09E801| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00C2:
|09E802| db $01 ; Layered OAM
|09E803| db $8B, $15, $80 ; SPRITE 80   | xy: { 0x150, 0x0B0, L } | s: 0x00
|09E806| db $0C, $0B, $80 ; SPRITE 80   | xy: { 0x0B0, 0x0C0, U } | s: 0x00
|09E809| db $10, $08, $C5 ; SPRITE C5   | xy: { 0x080, 0x100, U } | s: 0x00
|09E80C| db $92, $10, $5B ; SPRITE 5B   | xy: { 0x100, 0x120, L } | s: 0x00
|09E80F| db $92, $19, $5B ; SPRITE 5B   | xy: { 0x190, 0x120, L } | s: 0x00
|09E812| db $94, $10, $D1 ; SPRITE D1   | xy: { 0x100, 0x140, L } | s: 0x00
|09E815| db $96, $08, $80 ; SPRITE 80   | xy: { 0x080, 0x160, L } | s: 0x00
|09E818| db $96, $16, $5B ; SPRITE 5B   | xy: { 0x160, 0x160, L } | s: 0x00
|09E81B| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00C3:
|09E81C| db $00 ; Unlayered OAM
|09E81D| db $06, $05, $C5 ; SPRITE C5   | xy: { 0x050, 0x060, U } | s: 0x00
|09E820| db $09, $1E, $96 ; SPRITE 96   | xy: { 0x1E0, 0x090, U } | s: 0x00
|09E823| db $0D, $11, $95 ; SPRITE 95   | xy: { 0x110, 0x0D0, U } | s: 0x00
|09E826| db $11, $1E, $96 ; SPRITE 96   | xy: { 0x1E0, 0x110, U } | s: 0x00
|09E829| db $15, $11, $95 ; SPRITE 95   | xy: { 0x110, 0x150, U } | s: 0x00
|09E82C| db $1A, $F7, $0B ; OVERLORD 0B | xy: { 0x170, 0x1A0, U }
|09E82F| db $1B, $0A, $15 ; SPRITE 15   | xy: { 0x0A0, 0x1B0, U } | s: 0x00
|09E832| db $1C, $07, $C5 ; SPRITE C5   | xy: { 0x070, 0x1C0, U } | s: 0x00
|09E835| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00C4:
|09E836| db $00 ; Unlayered OAM
|09E837| db $0A, $0B, $1E ; SPRITE 1E   | xy: { 0x0B0, 0x0A0, U } | s: 0x00
|09E83A| db $0F, $18, $1E ; SPRITE 1E   | xy: { 0x180, 0x0F0, U } | s: 0x00
|09E83D| db $1B, $1C, $1E ; SPRITE 1E   | xy: { 0x1C0, 0x1B0, U } | s: 0x00
|09E840| db $15, $0F, $1E ; SPRITE 1E   | xy: { 0x0F0, 0x150, U } | s: 0x00
|09E843| db $0E, $0F, $C7 ; SPRITE C7   | xy: { 0x0F0, 0x0E0, U } | s: 0x00
|09E846| db $0F, $0B, $15 ; SPRITE 15   | xy: { 0x0B0, 0x0F0, U } | s: 0x00
|09E849| db $14, $07, $13 ; SPRITE 13   | xy: { 0x070, 0x140, U } | s: 0x00
|09E84C| db $14, $18, $13 ; SPRITE 13   | xy: { 0x180, 0x140, U } | s: 0x00
|09E84F| db $1A, $0B, $15 ; SPRITE 15   | xy: { 0x0B0, 0x1A0, U } | s: 0x00
|09E852| db $1A, $14, $15 ; SPRITE 15   | xy: { 0x140, 0x1A0, U } | s: 0x00
|09E855| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00C5:
|09E856| db $00 ; Unlayered OAM
|09E857| db $09, $0E, $96 ; SPRITE 96   | xy: { 0x0E0, 0x090, U } | s: 0x00
|09E85A| db $0B, $01, $95 ; SPRITE 95   | xy: { 0x010, 0x0B0, U } | s: 0x00
|09E85D| db $0D, $0E, $96 ; SPRITE 96   | xy: { 0x0E0, 0x0D0, U } | s: 0x00
|09E860| db $0F, $01, $95 ; SPRITE 95   | xy: { 0x010, 0x0F0, U } | s: 0x00
|09E863| db $11, $0E, $96 ; SPRITE 96   | xy: { 0x0E0, 0x110, U } | s: 0x00
|09E866| db $13, $01, $95 ; SPRITE 95   | xy: { 0x010, 0x130, U } | s: 0x00
|09E869| db $15, $07, $13 ; SPRITE 13   | xy: { 0x070, 0x150, U } | s: 0x00
|09E86C| db $15, $0E, $96 ; SPRITE 96   | xy: { 0x0E0, 0x150, U } | s: 0x00
|09E86F| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00C6:
|09E870| db $00 ; Unlayered OAM
|09E871| db $04, $0B, $A7 ; SPRITE A7   | xy: { 0x0B0, 0x040, U } | s: 0x00
|09E874| db $04, $15, $A7 ; SPRITE A7   | xy: { 0x150, 0x040, U } | s: 0x00
|09E877| db $09, $08, $24 ; SPRITE 24   | xy: { 0x080, 0x090, U } | s: 0x00
|09E87A| db $09, $17, $24 ; SPRITE 24   | xy: { 0x170, 0x090, U } | s: 0x00
|09E87D| db $0E, $10, $7C ; SPRITE 7C   | xy: { 0x100, 0x0E0, U } | s: 0x00
|09E880| db $14, $18, $24 ; SPRITE 24   | xy: { 0x180, 0x140, U } | s: 0x00
|09E883| db $17, $08, $24 ; SPRITE 24   | xy: { 0x080, 0x170, U } | s: 0x00
|09E886| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00C8:
|09E887| db $00 ; Unlayered OAM
|09E888| db $15, $14, $53 ; SPRITE 53   | xy: { 0x140, 0x150, U } | s: 0x00
|09E88B| db $15, $17, $53 ; SPRITE 53   | xy: { 0x170, 0x150, U } | s: 0x00
|09E88E| db $15, $1A, $53 ; SPRITE 53   | xy: { 0x1A0, 0x150, U } | s: 0x00
|09E891| db $18, $1A, $53 ; SPRITE 53   | xy: { 0x1A0, 0x180, U } | s: 0x00
|09E894| db $18, $17, $53 ; SPRITE 53   | xy: { 0x170, 0x180, U } | s: 0x00
|09E897| db $18, $14, $53 ; SPRITE 53   | xy: { 0x140, 0x180, U } | s: 0x00
|09E89A| db $18, $F7, $19 ; OVERLORD 19 | xy: { 0x170, 0x180, U }
|09E89D| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00C9:
|09E89E| db $00 ; Unlayered OAM
|09E89F| db $05, $10, $4F ; SPRITE 4F   | xy: { 0x100, 0x050, U } | s: 0x00
|09E8A2| db $06, $0F, $4F ; SPRITE 4F   | xy: { 0x0F0, 0x060, U } | s: 0x00
|09E8A5| db $07, $10, $4F ; SPRITE 4F   | xy: { 0x100, 0x070, U } | s: 0x00
|09E8A8| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00CB:
|09E8A9| db $01 ; Layered OAM
|09E8AA| db $04, $14, $D1 ; SPRITE D1   | xy: { 0x140, 0x040, U } | s: 0x00
|09E8AD| db $89, $08, $80 ; SPRITE 80   | xy: { 0x080, 0x090, L } | s: 0x00
|09E8B0| db $8A, $10, $A5 ; SPRITE A5   | xy: { 0x100, 0x0A0, L } | s: 0x00
|09E8B3| db $0A, $13, $8F ; SPRITE 8F   | xy: { 0x130, 0x0A0, U } | s: 0x00
|09E8B6| db $8A, $16, $5B ; SPRITE 5B   | xy: { 0x160, 0x0A0, L } | s: 0x00
|09E8B9| db $0A, $1C, $8F ; SPRITE 8F   | xy: { 0x1C0, 0x0A0, U } | s: 0x00
|09E8BC| db $10, $0C, $A7 ; SPRITE A7   | xy: { 0x0C0, 0x100, U } | s: 0x00
|09E8BF| db $95, $18, $A6 ; SPRITE A6   | xy: { 0x180, 0x150, L } | s: 0x00
|09E8C2| db $97, $08, $A6 ; SPRITE A6   | xy: { 0x080, 0x170, L } | s: 0x00
|09E8C5| db $17, $0B, $8F ; SPRITE 8F   | xy: { 0x0B0, 0x170, U } | s: 0x00
|09E8C8| db $18, $0C, $8F ; SPRITE 8F   | xy: { 0x0C0, 0x180, U } | s: 0x00
|09E8CB| db $1C, $14, $D1 ; SPRITE D1   | xy: { 0x140, 0x1C0, U } | s: 0x00
|09E8CE| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00CC:
|09E8CF| db $01 ; Layered OAM
|09E8D0| db $04, $13, $80 ; SPRITE 80   | xy: { 0x130, 0x040, U } | s: 0x00
|09E8D3| db $89, $0B, $D1 ; SPRITE D1   | xy: { 0x0B0, 0x090, L } | s: 0x00
|09E8D6| db $8A, $08, $A5 ; SPRITE A5   | xy: { 0x080, 0x0A0, L } | s: 0x00
|09E8D9| db $8A, $0E, $5B ; SPRITE 5B   | xy: { 0x0E0, 0x0A0, L } | s: 0x00
|09E8DC| db $0B, $0C, $8F ; SPRITE 8F   | xy: { 0x0C0, 0x0B0, U } | s: 0x00
|09E8DF| db $8C, $10, $A6 ; SPRITE A6   | xy: { 0x100, 0x0C0, L } | s: 0x00
|09E8E2| db $8C, $18, $A5 ; SPRITE A5   | xy: { 0x180, 0x0C0, L } | s: 0x00
|09E8E5| db $94, $0E, $80 ; SPRITE 80   | xy: { 0x0E0, 0x140, L } | s: 0x00
|09E8E8| db $15, $1C, $8F ; SPRITE 8F   | xy: { 0x1C0, 0x150, U } | s: 0x00
|09E8EB| db $96, $06, $5B ; SPRITE 5B   | xy: { 0x060, 0x160, L } | s: 0x00
|09E8EE| db $96, $09, $5B ; SPRITE 5B   | xy: { 0x090, 0x160, L } | s: 0x00
|09E8F1| db $98, $09, $A6 ; SPRITE A6   | xy: { 0x090, 0x180, L } | s: 0x00
|09E8F4| db $16, $1C, $8F ; SPRITE 8F   | xy: { 0x1C0, 0x160, U } | s: 0x00
|09E8F7| db $9C, $07, $D1 ; SPRITE D1   | xy: { 0x070, 0x1C0, L } | s: 0x00
|09E8FA| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00CE:
|09E8FB| db $00 ; Unlayered OAM
|09E8FC| db $05, $16, $23 ; SPRITE 23   | xy: { 0x160, 0x050, U } | s: 0x00
|09E8FF| db $05, $19, $23 ; SPRITE 23   | xy: { 0x190, 0x050, U } | s: 0x00
|09E902| db $05, $1C, $04 ; SPRITE 04   | xy: { 0x1C0, 0x050, U } | s: 0x00
|09E905| db $09, $14, $1C ; SPRITE 1C   | xy: { 0x140, 0x090, U } | s: 0x00
|09E908| db $08, $1B, $24 ; SPRITE 24   | xy: { 0x1B0, 0x080, U } | s: 0x00
|09E90B| db $08, $1C, $24 ; SPRITE 24   | xy: { 0x1C0, 0x080, U } | s: 0x00
|09E90E| db $09, $1B, $24 ; SPRITE 24   | xy: { 0x1B0, 0x090, U } | s: 0x00
|09E911| db $09, $1C, $24 ; SPRITE 24   | xy: { 0x1C0, 0x090, U } | s: 0x00
|09E914| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00D0:
|09E915| db $00 ; Unlayered OAM
|09E916| db $05, $0B, $6F ; SPRITE 6F   | xy: { 0x0B0, 0x050, U } | s: 0x00
|09E919| db $07, $09, $41 ; SPRITE 41   | xy: { 0x090, 0x070, U } | s: 0x00
|09E91C| db $07, $17, $6F ; SPRITE 6F   | xy: { 0x170, 0x070, U } | s: 0x00
|09E91F| db $0B, $15, $44 ; SPRITE 44   | xy: { 0x150, 0x0B0, U } | s: 0x00
|09E922| db $0C, $09, $6F ; SPRITE 6F   | xy: { 0x090, 0x0C0, U } | s: 0x00
|09E925| db $0F, $08, $6F ; SPRITE 6F   | xy: { 0x080, 0x0F0, U } | s: 0x00
|09E928| db $10, $63, $41 ; SPRITE 41   | xy: { 0x030, 0x100, U } | s: 0x03
|09E92B| db $14, $09, $41 ; SPRITE 41   | xy: { 0x090, 0x140, U } | s: 0x00
|09E92E| db $16, $1B, $44 ; SPRITE 44   | xy: { 0x1B0, 0x160, U } | s: 0x00
|09E931| db $19, $06, $6F ; SPRITE 6F   | xy: { 0x060, 0x190, U } | s: 0x00
|09E934| db $19, $1A, $44 ; SPRITE 44   | xy: { 0x1A0, 0x190, U } | s: 0x00
|09E937| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00D1:
|09E938| db $00 ; Unlayered OAM
|09E939| db $06, $14, $61 ; SPRITE 61   | xy: { 0x140, 0x060, U } | s: 0x00
|09E93C| db $06, $1B, $61 ; SPRITE 61   | xy: { 0x1B0, 0x060, U } | s: 0x00
|09E93F| db $07, $04, $9B ; SPRITE 9B   | xy: { 0x040, 0x070, U } | s: 0x00
|09E942| db $08, $0C, $23 ; SPRITE 23   | xy: { 0x0C0, 0x080, U } | s: 0x00
|09E945| db $09, $05, $C6 ; SPRITE C6   | xy: { 0x050, 0x090, U } | s: 0x00
|09E948| db $0B, $04, $20 ; SPRITE 20   | xy: { 0x040, 0x0B0, U } | s: 0x00
|09E94B| db $0B, $0B, $20 ; SPRITE 20   | xy: { 0x0B0, 0x0B0, U } | s: 0x00
|09E94E| db $0B, $1B, $20 ; SPRITE 20   | xy: { 0x1B0, 0x0B0, U } | s: 0x00
|09E951| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00D2:
|09E952| db $00 ; Unlayered OAM
|09E953| db $06, $18, $9B ; SPRITE 9B   | xy: { 0x180, 0x060, U } | s: 0x00
|09E956| db $07, $1A, $4E ; SPRITE 4E   | xy: { 0x1A0, 0x070, U } | s: 0x00
|09E959| db $08, $13, $9B ; SPRITE 9B   | xy: { 0x130, 0x080, U } | s: 0x00
|09E95C| db $08, $1C, $9B ; SPRITE 9B   | xy: { 0x1C0, 0x080, U } | s: 0x00
|09E95F| db $0A, $18, $61 ; SPRITE 61   | xy: { 0x180, 0x0A0, U } | s: 0x00
|09E962| db $0C, $16, $4E ; SPRITE 4E   | xy: { 0x160, 0x0C0, U } | s: 0x00
|09E965| db $0D, $13, $4E ; SPRITE 4E   | xy: { 0x130, 0x0D0, U } | s: 0x00
|09E968| db $10, $13, $9B ; SPRITE 9B   | xy: { 0x130, 0x100, U } | s: 0x00
|09E96B| db $14, $14, $4E ; SPRITE 4E   | xy: { 0x140, 0x140, U } | s: 0x00
|09E96E| db $14, $1C, $4E ; SPRITE 4E   | xy: { 0x1C0, 0x140, U } | s: 0x00
|09E971| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00D5:
|09E972| db $00 ; Unlayered OAM
|09E973| db $09, $0E, $96 ; SPRITE 96   | xy: { 0x0E0, 0x090, U } | s: 0x00
|09E976| db $0D, $01, $95 ; SPRITE 95   | xy: { 0x010, 0x0D0, U } | s: 0x00
|09E979| db $11, $0E, $96 ; SPRITE 96   | xy: { 0x0E0, 0x110, U } | s: 0x00
|09E97C| db $15, $01, $95 ; SPRITE 95   | xy: { 0x010, 0x150, U } | s: 0x00
|09E97F| db $15, $04, $26 ; SPRITE 26   | xy: { 0x040, 0x150, U } | s: 0x00
|09E982| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00D6:
|09E983| db $00 ; Unlayered OAM
|09E984| db $02, $07, $97 ; SPRITE 97   | xy: { 0x070, 0x020, U } | s: 0x00
|09E987| db $16, $03, $C5 ; SPRITE C5   | xy: { 0x030, 0x160, U } | s: 0x00
|09E98A| db $16, $0C, $C5 ; SPRITE C5   | xy: { 0x0C0, 0x160, U } | s: 0x00
|09E98D| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00D8:
|09E98E| db $00 ; Unlayered OAM
|09E98F| db $05, $17, $84 ; SPRITE 84   | xy: { 0x170, 0x050, U } | s: 0x00
|09E992| db $05, $18, $84 ; SPRITE 84   | xy: { 0x180, 0x050, U } | s: 0x00
|09E995| db $09, $17, $4F ; SPRITE 4F   | xy: { 0x170, 0x090, U } | s: 0x00
|09E998| db $09, $18, $4F ; SPRITE 4F   | xy: { 0x180, 0x090, U } | s: 0x00
|09E99B| db $0A, $16, $4F ; SPRITE 4F   | xy: { 0x160, 0x0A0, U } | s: 0x00
|09E99E| db $0A, $19, $4F ; SPRITE 4F   | xy: { 0x190, 0x0A0, U } | s: 0x00
|09E9A1| db $0B, $16, $4E ; SPRITE 4E   | xy: { 0x160, 0x0B0, U } | s: 0x00
|09E9A4| db $0B, $19, $4E ; SPRITE 4E   | xy: { 0x190, 0x0B0, U } | s: 0x00
|09E9A7| db $14, $17, $84 ; SPRITE 84   | xy: { 0x170, 0x140, U } | s: 0x00
|09E9AA| db $16, $18, $A7 ; SPRITE A7   | xy: { 0x180, 0x160, U } | s: 0x00
|09E9AD| db $1B, $18, $A7 ; SPRITE A7   | xy: { 0x180, 0x1B0, U } | s: 0x00
|09E9B0| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00D9:
|09E9B1| db $00 ; Unlayered OAM
|09E9B2| db $14, $EC, $02 ; OVERLORD 02 | xy: { 0x0C0, 0x140, U }
|09E9B5| db $15, $18, $83 ; SPRITE 83   | xy: { 0x180, 0x150, U } | s: 0x00
|09E9B8| db $18, $18, $83 ; SPRITE 83   | xy: { 0x180, 0x180, U } | s: 0x00
|09E9BB| db $1B, $18, $83 ; SPRITE 83   | xy: { 0x180, 0x1B0, U } | s: 0x00
|09E9BE| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00DA:
|09E9BF| db $00 ; Unlayered OAM
|09E9C0| db $18, $07, $15 ; SPRITE 15   | xy: { 0x070, 0x180, U } | s: 0x00
|09E9C3| db $18, $08, $15 ; SPRITE 15   | xy: { 0x080, 0x180, U } | s: 0x00
|09E9C6| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00DB:
|09E9C7| db $01 ; Layered OAM
|09E9C8| db $04, $03, $D1 ; SPRITE D1   | xy: { 0x030, 0x040, U } | s: 0x00
|09E9CB| db $8A, $0E, $5B ; SPRITE 5B   | xy: { 0x0E0, 0x0A0, L } | s: 0x00
|09E9CE| db $8B, $17, $A6 ; SPRITE A6   | xy: { 0x170, 0x0B0, L } | s: 0x00
|09E9D1| db $8C, $0F, $A5 ; SPRITE A5   | xy: { 0x0F0, 0x0C0, L } | s: 0x00
|09E9D4| db $10, $0B, $8F ; SPRITE 8F   | xy: { 0x0B0, 0x100, U } | s: 0x00
|09E9D7| db $10, $14, $80 ; SPRITE 80   | xy: { 0x140, 0x100, U } | s: 0x00
|09E9DA| db $95, $0F, $A5 ; SPRITE A5   | xy: { 0x0F0, 0x150, L } | s: 0x00
|09E9DD| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00DC:
|09E9DE| db $01 ; Layered OAM
|09E9DF| db $8A, $09, $A5 ; SPRITE A5   | xy: { 0x090, 0x0A0, L } | s: 0x00
|09E9E2| db $8A, $0E, $5C ; SPRITE 5C   | xy: { 0x0E0, 0x0A0, L } | s: 0x00
|09E9E5| db $8C, $0F, $A6 ; SPRITE A6   | xy: { 0x0F0, 0x0C0, L } | s: 0x00
|09E9E8| db $10, $0B, $8F ; SPRITE 8F   | xy: { 0x0B0, 0x100, U } | s: 0x00
|09E9EB| db $10, $16, $8F ; SPRITE 8F   | xy: { 0x160, 0x100, U } | s: 0x00
|09E9EE| db $96, $0C, $D1 ; SPRITE D1   | xy: { 0x0C0, 0x160, L } | s: 0x00
|09E9F1| db $96, $0F, $A6 ; SPRITE A6   | xy: { 0x0F0, 0x160, L } | s: 0x00
|09E9F4| db $97, $09, $A5 ; SPRITE A5   | xy: { 0x090, 0x170, L } | s: 0x00
|09E9F7| db $97, $16, $80 ; SPRITE 80   | xy: { 0x160, 0x170, L } | s: 0x00
|09E9FA| db $1C, $05, $80 ; SPRITE 80   | xy: { 0x050, 0x1C0, U } | s: 0x00
|09E9FD| db $1C, $0F, $8F ; SPRITE 8F   | xy: { 0x0F0, 0x1C0, U } | s: 0x00
|09EA00| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00DE:
|09EA01| db $00 ; Unlayered OAM
|09EA02| db $05, $17, $A3 ; SPRITE A3   | xy: { 0x170, 0x050, U } | s: 0x00
|09EA05| db $05, $17, $A4 ; SPRITE A4   | xy: { 0x170, 0x050, U } | s: 0x00
|09EA08| db $05, $17, $A2 ; SPRITE A2   | xy: { 0x170, 0x050, U } | s: 0x00
|09EA0B| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00DF:
|09EA0C| db $00 ; Unlayered OAM
|09EA0D| db $95, $0C, $18 ; SPRITE 18   | xy: { 0x0C0, 0x150, L } | s: 0x00
|09EA10| db $96, $0C, $18 ; SPRITE 18   | xy: { 0x0C0, 0x160, L } | s: 0x00
|09EA13| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00E0:
|09EA14| db $00 ; Unlayered OAM
|09EA15| db $06, $04, $6A ; SPRITE 6A   | xy: { 0x040, 0x060, U } | s: 0x00
|09EA18| db $06, $0B, $6A ; SPRITE 6A   | xy: { 0x0B0, 0x060, U } | s: 0x00
|09EA1B| db $06, $1A, $44 ; SPRITE 44   | xy: { 0x1A0, 0x060, U } | s: 0x00
|09EA1E| db $09, $1A, $44 ; SPRITE 44   | xy: { 0x1A0, 0x090, U } | s: 0x00
|09EA21| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00E1:
|09EA22| db $00 ; Unlayered OAM
|09EA23| db $0D, $17, $EB ; SPRITE EB   | xy: { 0x170, 0x0D0, U } | s: 0x00
|09EA26| db $92, $07, $29 ; SPRITE 29   | xy: { 0x070, 0x120, L } | s: 0x00
|09EA29| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00E2:
|09EA2A| db $00 ; Unlayered OAM
|09EA2B| db $06, $07, $E3 ; SPRITE E3   | xy: { 0x070, 0x060, U } | s: 0x00
|09EA2E| db $06, $08, $E3 ; SPRITE E3   | xy: { 0x080, 0x060, U } | s: 0x00
|09EA31| db $07, $07, $E3 ; SPRITE E3   | xy: { 0x070, 0x070, U } | s: 0x00
|09EA34| db $07, $08, $E3 ; SPRITE E3   | xy: { 0x080, 0x070, U } | s: 0x00
|09EA37| db $10, $13, $EB ; SPRITE EB   | xy: { 0x130, 0x100, U } | s: 0x00
|09EA3A| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00E3:
|09EA3B| db $00 ; Unlayered OAM
|09EA3C| db $85, $17, $3A ; SPRITE 3A   | xy: { 0x170, 0x050, L } | s: 0x00
|09EA3F| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00E4:
|09EA40| db $00 ; Unlayered OAM
|09EA41| db $07, $19, $6F ; SPRITE 6F   | xy: { 0x190, 0x070, U } | s: 0x00
|09EA44| db $08, $18, $6F ; SPRITE 6F   | xy: { 0x180, 0x080, U } | s: 0x00
|09EA47| db $09, $17, $6F ; SPRITE 6F   | xy: { 0x170, 0x090, U } | s: 0x00
|09EA4A| db $16, $06, $AD ; SPRITE AD   | xy: { 0x060, 0x160, U } | s: 0x00
|09EA4D| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00E5:
|09EA4E| db $00 ; Unlayered OAM
|09EA4F| db $09, $0F, $6F ; SPRITE 6F   | xy: { 0x0F0, 0x090, U } | s: 0x00
|09EA52| db $09, $10, $6F ; SPRITE 6F   | xy: { 0x100, 0x090, U } | s: 0x00
|09EA55| db $09, $11, $6F ; SPRITE 6F   | xy: { 0x110, 0x090, U } | s: 0x00
|09EA58| db $0E, $1B, $6F ; SPRITE 6F   | xy: { 0x1B0, 0x0E0, U } | s: 0x00
|09EA5B| db $12, $0F, $6F ; SPRITE 6F   | xy: { 0x0F0, 0x120, U } | s: 0x00
|09EA5E| db $12, $11, $6F ; SPRITE 6F   | xy: { 0x110, 0x120, U } | s: 0x00
|09EA61| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00E6:
|09EA62| db $00 ; Unlayered OAM
|09EA63| db $0B, $1B, $6F ; SPRITE 6F   | xy: { 0x1B0, 0x0B0, U } | s: 0x00
|09EA66| db $0F, $17, $6F ; SPRITE 6F   | xy: { 0x170, 0x0F0, U } | s: 0x00
|09EA69| db $13, $13, $6F ; SPRITE 6F   | xy: { 0x130, 0x130, U } | s: 0x00
|09EA6C| db $17, $0F, $6F ; SPRITE 6F   | xy: { 0x0F0, 0x170, U } | s: 0x00
|09EA6F| db $1B, $0B, $6F ; SPRITE 6F   | xy: { 0x0B0, 0x1B0, U } | s: 0x00
|09EA72| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00E7:
|09EA73| db $00 ; Unlayered OAM
|09EA74| db $04, $10, $6F ; SPRITE 6F   | xy: { 0x100, 0x040, U } | s: 0x00
|09EA77| db $04, $13, $6F ; SPRITE 6F   | xy: { 0x130, 0x040, U } | s: 0x00
|09EA7A| db $0B, $15, $6F ; SPRITE 6F   | xy: { 0x150, 0x0B0, U } | s: 0x00
|09EA7D| db $0C, $0B, $6F ; SPRITE 6F   | xy: { 0x0B0, 0x0C0, U } | s: 0x00
|09EA80| db $0D, $0B, $6F ; SPRITE 6F   | xy: { 0x0B0, 0x0D0, U } | s: 0x00
|09EA83| db $0D, $15, $6F ; SPRITE 6F   | xy: { 0x150, 0x0D0, U } | s: 0x00
|09EA86| db $0F, $15, $6F ; SPRITE 6F   | xy: { 0x150, 0x0F0, U } | s: 0x00
|09EA89| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00E8:
|09EA8A| db $00 ; Unlayered OAM
|09EA8B| db $05, $07, $26 ; SPRITE 26   | xy: { 0x070, 0x050, U } | s: 0x00
|09EA8E| db $08, $17, $26 ; SPRITE 26   | xy: { 0x170, 0x080, U } | s: 0x00
|09EA91| db $0C, $07, $26 ; SPRITE 26   | xy: { 0x070, 0x0C0, U } | s: 0x00
|09EA94| db $0C, $19, $26 ; SPRITE 26   | xy: { 0x190, 0x0C0, U } | s: 0x00
|09EA97| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00EA:
|09EA98| db $00 ; Unlayered OAM
|09EA99| db $0B, $0B, $EB ; SPRITE EB   | xy: { 0x0B0, 0x0B0, U } | s: 0x00
|09EA9C| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00EB:
|09EA9D| db $00 ; Unlayered OAM
|09EA9E| db $14, $17, $93 ; SPRITE 93   | xy: { 0x170, 0x140, U } | s: 0x00
|09EAA1| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00EE:
|09EAA2| db $00 ; Unlayered OAM
|09EAA3| db $04, $10, $18 ; SPRITE 18   | xy: { 0x100, 0x040, U } | s: 0x00
|09EAA6| db $0E, $0B, $18 ; SPRITE 18   | xy: { 0x0B0, 0x0E0, U } | s: 0x00
|09EAA9| db $1C, $09, $18 ; SPRITE 18   | xy: { 0x090, 0x1C0, U } | s: 0x00
|09EAAC| db $0B, $03, $24 ; SPRITE 24   | xy: { 0x030, 0x0B0, U } | s: 0x00
|09EAAF| db $0C, $1C, $24 ; SPRITE 24   | xy: { 0x1C0, 0x0C0, U } | s: 0x00
|09EAB2| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00EF:
|09EAB3| db $00 ; Unlayered OAM
|09EAB4| db $09, $17, $18 ; SPRITE 18   | xy: { 0x170, 0x090, U } | s: 0x00
|09EAB7| db $0A, $14, $18 ; SPRITE 18   | xy: { 0x140, 0x0A0, U } | s: 0x00
|09EABA| db $0A, $1B, $18 ; SPRITE 18   | xy: { 0x1B0, 0x0A0, U } | s: 0x00
|09EABD| db $06, $18, $1E ; SPRITE 1E   | xy: { 0x180, 0x060, U } | s: 0x00
|09EAC0| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00F0:
|09EAC1| db $00 ; Unlayered OAM
|09EAC2| db $03, $09, $6F ; SPRITE 6F   | xy: { 0x090, 0x030, U } | s: 0x00
|09EAC5| db $03, $10, $6F ; SPRITE 6F   | xy: { 0x100, 0x030, U } | s: 0x00
|09EAC8| db $04, $08, $6F ; SPRITE 6F   | xy: { 0x080, 0x040, U } | s: 0x00
|09EACB| db $04, $0A, $6F ; SPRITE 6F   | xy: { 0x0A0, 0x040, U } | s: 0x00
|09EACE| db $07, $09, $6F ; SPRITE 6F   | xy: { 0x090, 0x070, U } | s: 0x00
|09EAD1| db $0A, $03, $6F ; SPRITE 6F   | xy: { 0x030, 0x0A0, U } | s: 0x00
|09EAD4| db $0A, $05, $6F ; SPRITE 6F   | xy: { 0x050, 0x0A0, U } | s: 0x00
|09EAD7| db $0C, $0E, $6F ; SPRITE 6F   | xy: { 0x0E0, 0x0C0, U } | s: 0x00
|09EADA| db $10, $1B, $AD ; SPRITE AD   | xy: { 0x1B0, 0x100, U } | s: 0x00
|09EADD| db $13, $13, $6F ; SPRITE 6F   | xy: { 0x130, 0x130, U } | s: 0x00
|09EAE0| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00F1:
|09EAE1| db $00 ; Unlayered OAM
|09EAE2| db $10, $19, $6F ; SPRITE 6F   | xy: { 0x190, 0x100, U } | s: 0x00
|09EAE5| db $10, $1C, $6F ; SPRITE 6F   | xy: { 0x1C0, 0x100, U } | s: 0x00
|09EAE8| db $11, $18, $6F ; SPRITE 6F   | xy: { 0x180, 0x110, U } | s: 0x00
|09EAEB| db $11, $1D, $6F ; SPRITE 6F   | xy: { 0x1D0, 0x110, U } | s: 0x00
|09EAEE| db $12, $17, $6F ; SPRITE 6F   | xy: { 0x170, 0x120, U } | s: 0x00
|09EAF1| db $12, $1E, $6F ; SPRITE 6F   | xy: { 0x1E0, 0x120, U } | s: 0x00
|09EAF4| db $1B, $06, $6F ; SPRITE 6F   | xy: { 0x060, 0x1B0, U } | s: 0x00
|09EAF7| db $1B, $09, $6F ; SPRITE 6F   | xy: { 0x090, 0x1B0, U } | s: 0x00
|09EAFA| db $1C, $07, $6F ; SPRITE 6F   | xy: { 0x070, 0x1C0, U } | s: 0x00
|09EAFD| db $1C, $08, $6F ; SPRITE 6F   | xy: { 0x080, 0x1C0, U } | s: 0x00
|09EB00| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00F3:
|09EB01| db $00 ; Unlayered OAM
|09EB02| db $14, $06, $78 ; SPRITE 78   | xy: { 0x060, 0x140, U } | s: 0x00
|09EB05| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00F4:
|09EB06| db $00 ; Unlayered OAM
|09EB07| db $14, $17, $32 ; SPRITE 32   | xy: { 0x170, 0x140, U } | s: 0x00
|09EB0A| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00F5:
|09EB0B| db $00 ; Unlayered OAM
|09EB0C| db $14, $08, $32 ; SPRITE 32   | xy: { 0x080, 0x140, U } | s: 0x00
|09EB0F| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00F9:
|09EB10| db $00 ; Unlayered OAM
|09EB11| db $05, $1A, $18 ; SPRITE 18   | xy: { 0x1A0, 0x050, U } | s: 0x00
|09EB14| db $0F, $15, $18 ; SPRITE 18   | xy: { 0x150, 0x0F0, U } | s: 0x00
|09EB17| db $13, $11, $18 ; SPRITE 18   | xy: { 0x110, 0x130, U } | s: 0x00
|09EB1A| db $17, $0C, $18 ; SPRITE 18   | xy: { 0x0C0, 0x170, U } | s: 0x00
|09EB1D| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00FA:
|09EB1E| db $00 ; Unlayered OAM
|09EB1F| db $0E, $17, $E3 ; SPRITE E3   | xy: { 0x170, 0x0E0, U } | s: 0x00
|09EB22| db $10, $18, $E3 ; SPRITE E3   | xy: { 0x180, 0x100, U } | s: 0x00
|09EB25| db $11, $15, $E3 ; SPRITE E3   | xy: { 0x150, 0x110, U } | s: 0x00
|09EB28| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00FB:
|09EB29| db $00 ; Unlayered OAM
|09EB2A| db $0D, $17, $93 ; SPRITE 93   | xy: { 0x170, 0x0D0, U } | s: 0x00
|09EB2D| db $0A, $19, $26 ; SPRITE 26   | xy: { 0x190, 0x0A0, U } | s: 0x00
|09EB30| db $12, $15, $26 ; SPRITE 26   | xy: { 0x150, 0x120, U } | s: 0x00
|09EB33| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00FC:
|09EB34| db $00 ; Unlayered OAM
|09EB35| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00FD:
|09EB36| db $00 ; Unlayered OAM
|09EB37| db $0E, $09, $18 ; SPRITE 18   | xy: { 0x090, 0x0E0, U } | s: 0x00
|09EB3A| db $08, $05, $24 ; SPRITE 24   | xy: { 0x050, 0x080, U } | s: 0x00
|09EB3D| db $08, $16, $E3 ; SPRITE E3   | xy: { 0x160, 0x080, U } | s: 0x00
|09EB40| db $08, $18, $E3 ; SPRITE E3   | xy: { 0x180, 0x080, U } | s: 0x00
|09EB43| db $11, $0F, $24 ; SPRITE 24   | xy: { 0x0F0, 0x110, U } | s: 0x00
|09EB46| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00FE:
|09EB47| db $00 ; Unlayered OAM
|09EB48| db $12, $16, $18 ; SPRITE 18   | xy: { 0x160, 0x120, U } | s: 0x00
|09EB4B| db $16, $14, $18 ; SPRITE 18   | xy: { 0x140, 0x160, U } | s: 0x00
|09EB4E| db $16, $1A, $18 ; SPRITE 18   | xy: { 0x1A0, 0x160, U } | s: 0x00
|09EB51| db $12, $18, $24 ; SPRITE 24   | xy: { 0x180, 0x120, U } | s: 0x00
|09EB54| db $18, $18, $24 ; SPRITE 24   | xy: { 0x180, 0x180, U } | s: 0x00
|09EB57| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room00FF:
|09EB58| db $00 ; Unlayered OAM
|09EB59| db $04, $07, $BB ; SPRITE BB   | xy: { 0x070, 0x040, U } | s: 0x00
|09EB5C| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0100:
|09EB5D| db $00 ; Unlayered OAM
|09EB5E| db $1B, $0B, $BB ; SPRITE BB   | xy: { 0x0B0, 0x1B0, U } | s: 0x00
|09EB61| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0101:
|09EB62| db $00 ; Unlayered OAM
|09EB63| db $13, $08, $33 ; SPRITE 33   | xy: { 0x080, 0x130, U } | s: 0x00
|09EB66| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0102:
|09EB67| db $00 ; Unlayered OAM
|09EB68| db $18, $03, $1F ; SPRITE 1F   | xy: { 0x030, 0x180, U } | s: 0x00
|09EB6B| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0103:
|09EB6C| db $00 ; Unlayered OAM
|09EB6D| db $15, $06, $BC ; SPRITE BC   | xy: { 0x060, 0x150, U } | s: 0x00
|09EB70| db $1B, $0A, $29 ; SPRITE 29   | xy: { 0x0A0, 0x1B0, U } | s: 0x00
|09EB73| db $17, $17, $35 ; SPRITE 35   | xy: { 0x170, 0x170, U } | s: 0x00
|09EB76| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0104:
|09EB77| db $00 ; Unlayered OAM
|09EB78| db $17, $1A, $73 ; SPRITE 73   | xy: { 0x1A0, 0x170, U } | s: 0x00
|09EB7B| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0105:
|09EB7C| db $00 ; Unlayered OAM
|09EB7D| db $18, $07, $16 ; SPRITE 16   | xy: { 0x070, 0x180, U } | s: 0x00
|09EB80| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0106:
|09EB81| db $00 ; Unlayered OAM
|09EB82| db $1B, $08, $BB ; SPRITE BB   | xy: { 0x080, 0x1B0, U } | s: 0x00
|09EB85| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0107:
|09EB86| db $00 ; Unlayered OAM
|09EB87| db $15, $03, $3B ; SPRITE 3B   | xy: { 0x030, 0x150, U } | s: 0x00
|09EB8A| db $1B, $17, $6D ; SPRITE 6D   | xy: { 0x170, 0x1B0, U } | s: 0x00
|09EB8D| db $1B, $18, $6D ; SPRITE 6D   | xy: { 0x180, 0x1B0, U } | s: 0x00
|09EB90| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0108:
|09EB91| db $00 ; Unlayered OAM
|09EB92| db $16, $09, $0B ; SPRITE 0B   | xy: { 0x090, 0x160, U } | s: 0x00
|09EB95| db $16, $0C, $0B ; SPRITE 0B   | xy: { 0x0C0, 0x160, U } | s: 0x00
|09EB98| db $19, $09, $0B ; SPRITE 0B   | xy: { 0x090, 0x190, U } | s: 0x00
|09EB9B| db $1A, $06, $0B ; SPRITE 0B   | xy: { 0x060, 0x1A0, U } | s: 0x00
|09EB9E| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0109:
|09EB9F| db $00 ; Unlayered OAM
|09EBA0| db $1B, $0A, $E9 ; SPRITE E9   | xy: { 0x0A0, 0x1B0, U } | s: 0x00
|09EBA3| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room010A:
|09EBA4| db $00 ; Unlayered OAM
|09EBA5| db $04, $19, $16 ; SPRITE 16   | xy: { 0x190, 0x040, U } | s: 0x00
|09EBA8| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room010B:
|09EBA9| db $00 ; Unlayered OAM
|09EBAA| db $03, $0F, $06 ; SPRITE 06   | xy: { 0x0F0, 0x030, U } | s: 0x00
|09EBAD| db $06, $ED, $1A ; OVERLORD 1A | xy: { 0x0D0, 0x060, U }
|09EBB0| db $06, $F0, $1A ; OVERLORD 1A | xy: { 0x100, 0x060, U }
|09EBB3| db $07, $F2, $1A ; OVERLORD 1A | xy: { 0x120, 0x070, U }
|09EBB6| db $09, $EF, $1A ; OVERLORD 1A | xy: { 0x0F0, 0x090, U }
|09EBB9| db $03, $12, $04 ; SPRITE 04   | xy: { 0x120, 0x030, U } | s: 0x00
|09EBBC| db $07, $0D, $15 ; SPRITE 15   | xy: { 0x0D0, 0x070, U } | s: 0x00
|09EBBF| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room010C:
|09EBC0| db $00 ; Unlayered OAM
|09EBC1| db $07, $17, $E3 ; SPRITE E3   | xy: { 0x170, 0x070, U } | s: 0x00
|09EBC4| db $07, $18, $E3 ; SPRITE E3   | xy: { 0x180, 0x070, U } | s: 0x00
|09EBC7| db $08, $17, $E3 ; SPRITE E3   | xy: { 0x170, 0x080, U } | s: 0x00
|09EBCA| db $08, $18, $E3 ; SPRITE E3   | xy: { 0x180, 0x080, U } | s: 0x00
|09EBCD| db $14, $07, $83 ; SPRITE 83   | xy: { 0x070, 0x140, U } | s: 0x00
|09EBD0| db $14, $08, $83 ; SPRITE 83   | xy: { 0x080, 0x140, U } | s: 0x00
|09EBD3| db $14, $0C, $83 ; SPRITE 83   | xy: { 0x0C0, 0x140, U } | s: 0x00
|09EBD6| db $1A, $0C, $83 ; SPRITE 83   | xy: { 0x0C0, 0x1A0, U } | s: 0x00
|09EBD9| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room010D:
|09EBDA| db $00 ; Unlayered OAM
|09EBDB| db $16, $05, $5B ; SPRITE 5B   | xy: { 0x050, 0x160, U } | s: 0x00
|09EBDE| db $16, $0A, $5C ; SPRITE 5C   | xy: { 0x0A0, 0x160, U } | s: 0x00
|09EBE1| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room010E:
|09EBE2| db $00 ; Unlayered OAM
|09EBE3| db $06, $06, $28 ; SPRITE 28   | xy: { 0x060, 0x060, U } | s: 0x00
|09EBE6| db $06, $18, $28 ; SPRITE 28   | xy: { 0x180, 0x060, U } | s: 0x00
|09EBE9| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room010F:
|09EBEA| db $00 ; Unlayered OAM
|09EBEB| db $15, $07, $BB ; SPRITE BB   | xy: { 0x070, 0x150, U } | s: 0x00
|09EBEE| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0110:
|09EBEF| db $00 ; Unlayered OAM
|09EBF0| db $15, $07, $BB ; SPRITE BB   | xy: { 0x070, 0x150, U } | s: 0x00
|09EBF3| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0111:
|09EBF4| db $00 ; Unlayered OAM
|09EBF5| db $1B, $0B, $65 ; SPRITE 65   | xy: { 0x0B0, 0x1B0, U } | s: 0x00
|09EBF8| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0112:
|09EBF9| db $00 ; Unlayered OAM
|09EBFA| db $0A, $07, $28 ; SPRITE 28   | xy: { 0x070, 0x0A0, U } | s: 0x00
|09EBFD| db $14, $17, $BB ; SPRITE BB   | xy: { 0x170, 0x140, U } | s: 0x00
|09EC00| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0114:
|09EC01| db $00 ; Unlayered OAM
|09EC02| db $18, $07, $72 ; SPRITE 72   | xy: { 0x070, 0x180, U } | s: 0x00
|09EC05| db $14, $19, $28 ; SPRITE 28   | xy: { 0x190, 0x140, U } | s: 0x00
|09EC08| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0115:
|09EC09| db $00 ; Unlayered OAM
|09EC0A| db $16, $17, $C8 ; SPRITE C8   | xy: { 0x170, 0x160, U } | s: 0x00
|09EC0D| db $07, $17, $E3 ; SPRITE E3   | xy: { 0x170, 0x070, U } | s: 0x00
|09EC10| db $07, $18, $E3 ; SPRITE E3   | xy: { 0x180, 0x070, U } | s: 0x00
|09EC13| db $08, $17, $E3 ; SPRITE E3   | xy: { 0x170, 0x080, U } | s: 0x00
|09EC16| db $08, $18, $E3 ; SPRITE E3   | xy: { 0x180, 0x080, U } | s: 0x00
|09EC19| db $09, $07, $72 ; SPRITE 72   | xy: { 0x070, 0x090, U } | s: 0x00
|09EC1C| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0116:
|09EC1D| db $00 ; Unlayered OAM
|09EC1E| db $18, $17, $72 ; SPRITE 72   | xy: { 0x170, 0x180, U } | s: 0x00
|09EC21| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0118:
|09EC22| db $00 ; Unlayered OAM
|09EC23| db $1B, $19, $BB ; SPRITE BB   | xy: { 0x190, 0x1B0, U } | s: 0x00
|09EC26| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0119:
|09EC27| db $00 ; Unlayered OAM
|09EC28| db $18, $0E, $29 ; SPRITE 29   | xy: { 0x0E0, 0x180, U } | s: 0x00
|09EC2B| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room011A:
|09EC2C| db $00 ; Unlayered OAM
|09EC2D| db $17, $18, $28 ; SPRITE 28   | xy: { 0x180, 0x170, U } | s: 0x00
|09EC30| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room011B:
|09EC31| db $00 ; Unlayered OAM
|09EC32| db $09, $18, $EB ; SPRITE EB   | xy: { 0x180, 0x090, U } | s: 0x00
|09EC35| db $96, $05, $EB ; SPRITE EB   | xy: { 0x050, 0x160, L } | s: 0x00
|09EC38| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room011C:
|09EC39| db $00 ; Unlayered OAM
|09EC3A| db $19, $09, $B5 ; SPRITE B5   | xy: { 0x090, 0x190, U } | s: 0x00
|09EC3D| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room011E:
|09EC3E| db $00 ; Unlayered OAM
|09EC3F| db $07, $05, $E3 ; SPRITE E3   | xy: { 0x050, 0x070, U } | s: 0x00
|09EC42| db $07, $06, $E3 ; SPRITE E3   | xy: { 0x060, 0x070, U } | s: 0x00
|09EC45| db $08, $05, $E3 ; SPRITE E3   | xy: { 0x050, 0x080, U } | s: 0x00
|09EC48| db $08, $06, $E3 ; SPRITE E3   | xy: { 0x060, 0x080, U } | s: 0x00
|09EC4B| db $16, $18, $BB ; SPRITE BB   | xy: { 0x180, 0x160, U } | s: 0x00
|09EC4E| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room011F:
|09EC4F| db $00 ; Unlayered OAM
|09EC50| db $16, $17, $BB ; SPRITE BB   | xy: { 0x170, 0x160, U } | s: 0x00
|09EC53| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0120:
|09EC54| db $00 ; Unlayered OAM
|09EC55| db $07, $17, $B2 ; SPRITE B2   | xy: { 0x170, 0x070, U } | s: 0x00
|09EC58| db $08, $1B, $E3 ; SPRITE E3   | xy: { 0x1B0, 0x080, U } | s: 0x00
|09EC5B| db $09, $1A, $E3 ; SPRITE E3   | xy: { 0x1A0, 0x090, U } | s: 0x00
|09EC5E| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0121:
|09EC5F| db $00 ; Unlayered OAM
|09EC60| db $17, $04, $1A ; SPRITE 1A   | xy: { 0x040, 0x170, U } | s: 0x00
|09EC63| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0122:
|09EC64| db $00 ; Unlayered OAM
|09EC65| db $18, $07, $31 ; SPRITE 31   | xy: { 0x070, 0x180, U } | s: 0x00
|09EC68| db $18, $17, $31 ; SPRITE 31   | xy: { 0x170, 0x180, U } | s: 0x00
|09EC6B| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0123:
|09EC6C| db $00 ; Unlayered OAM
|09EC6D| db $16, $03, $18 ; SPRITE 18   | xy: { 0x030, 0x160, U } | s: 0x00
|09EC70| db $16, $0C, $18 ; SPRITE 18   | xy: { 0x0C0, 0x160, U } | s: 0x00
|09EC73| db $17, $08, $18 ; SPRITE 18   | xy: { 0x080, 0x170, U } | s: 0x00
|09EC76| db $1A, $03, $18 ; SPRITE 18   | xy: { 0x030, 0x1A0, U } | s: 0x00
|09EC79| db $05, $08, $BB ; SPRITE BB   | xy: { 0x080, 0x050, U } | s: 0x00
|09EC7C| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0124:
|09EC7D| db $00 ; Unlayered OAM
|09EC7E| db $16, $08, $BB ; SPRITE BB   | xy: { 0x080, 0x160, U } | s: 0x00
|09EC81| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0125:
|09EC82| db $00 ; Unlayered OAM
|09EC83| db $16, $08, $BB ; SPRITE BB   | xy: { 0x080, 0x160, U } | s: 0x00
|09EC86| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0126:
|09EC87| db $00 ; Unlayered OAM
|09EC88| db $15, $07, $E3 ; SPRITE E3   | xy: { 0x070, 0x150, U } | s: 0x00
|09EC8B| db $15, $08, $E3 ; SPRITE E3   | xy: { 0x080, 0x150, U } | s: 0x00
|09EC8E| db $16, $07, $E3 ; SPRITE E3   | xy: { 0x070, 0x160, U } | s: 0x00
|09EC91| db $16, $08, $E3 ; SPRITE E3   | xy: { 0x080, 0x160, U } | s: 0x00
|09EC94| db $14, $1C, $EB ; SPRITE EB   | xy: { 0x1C0, 0x140, U } | s: 0x00
|09EC97| db $FF ; END

;===================================================================================================

RoomData_Sprites_Room0127:
|09EC98| db $00 ; Unlayered OAM
|09EC99| db $16, $07, $EB ; SPRITE EB   | xy: { 0x070, 0x160, U } | s: 0x00
|09EC9C| db $FF ; END

;===================================================================================================

RoomData_Sprites_Empty:
|09EC9D| db $00 ; Unlayered OAM
|09EC9E| db $FF ; END

;===================================================================================================

pool SpriteModule_Explode

.oam_groups
|09EC9F| dw   0,   0 : db $60, $00, $00, $02
|09ECA7| dw   0,   0 : db $60, $00, $00, $02
|09ECAF| dw   0,   0 : db $60, $00, $00, $02
|09ECB7| dw   0,   0 : db $60, $00, $00, $02

|09ECBF| dw  -5,  -5 : db $62, $00, $00, $02
|09ECC7| dw   5,  -5 : db $62, $40, $00, $02
|09ECCF| dw  -5,   5 : db $62, $80, $00, $02
|09ECD7| dw   5,   5 : db $62, $C0, $00, $02

|09ECDF| dw  -8,  -8 : db $62, $00, $00, $02
|09ECE7| dw   8,  -8 : db $62, $40, $00, $02
|09ECEF| dw  -8,   8 : db $62, $80, $00, $02
|09ECF7| dw   8,   8 : db $62, $C0, $00, $02

|09ECFF| dw  -8,  -8 : db $64, $00, $00, $02
|09ED07| dw   8,  -8 : db $64, $40, $00, $02
|09ED0F| dw  -8,   8 : db $64, $80, $00, $02
|09ED17| dw   8,   8 : db $64, $C0, $00, $02

|09ED1F| dw  -8,  -8 : db $66, $00, $00, $02
|09ED27| dw   8,  -8 : db $66, $40, $00, $02
|09ED2F| dw  -8,   8 : db $66, $80, $00, $02
|09ED37| dw   8,   8 : db $66, $C0, $00, $02

|09ED3F| dw  -8,  -8 : db $68, $00, $00, $02
|09ED47| dw   8,  -8 : db $68, $00, $00, $02
|09ED4F| dw  -8,   8 : db $68, $00, $00, $02
|09ED57| dw   8,   8 : db $68, $00, $00, $02

|09ED5F| dw  -8,  -8 : db $6A, $00, $00, $02
|09ED67| dw   8,  -8 : db $6A, $40, $00, $02
|09ED6F| dw  -8,   8 : db $6A, $80, $00, $02
|09ED77| dw   8,   8 : db $6A, $C0, $00, $02

|09ED7F| dw  -8,  -8 : db $4E, $00, $00, $02
|09ED87| dw   8,  -8 : db $4E, $40, $00, $02
|09ED8F| dw  -8,   8 : db $4E, $80, $00, $02
|09ED97| dw   8,   8 : db $4E, $C0, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteModule_Explode:
|09ED9F| PHB
|09EDA0| PHK
|09EDA1| PLB

|09EDA2| JSR .main

|09EDA5| PLB

|09EDA6| RTL

;---------------------------------------------------------------------------------------------------

.main
|09EDA7| LDA.w $0D90,X
|09EDAA| BEQ VerifyExplosionPrize

|09EDAC| LDA.w $0DF0,X
|09EDAF| BNE .draw

|09EDB1| STZ.w $0DD0,X

;---------------------------------------------------------------------------------------------------

|09EDB4| LDY.b #$0F

.next
|09EDB6| LDA.w $0DD0,Y
|09EDB9| CMP.b #$04
|09EDBB| BEQ .exit

|09EDBD| DEY
|09EDBE| BPL .next

|09EDC0| LDY.b #$01
|09EDC2| STY.w $0AAA

|09EDC5| JSL CheckIfScreenIsClear
|09EDC9| BCS .exit

|09EDCB| STZ.w $0FFC

.exit
|09EDCE| RTS

;---------------------------------------------------------------------------------------------------

.draw
|09EDCF| LSR A
|09EDD0| LSR A
|09EDD1| EOR.b #$07
|09EDD3| STA.b $00

|09EDD5| LDA.b #$00
|09EDD7| XBA
|09EDD8| LDA.b $00

|09EDDA| REP #$20

|09EDDC| ASL A ; x32
|09EDDD| ASL A
|09EDDE| ASL A
|09EDDF| ASL A
|09EDE0| ASL A

|09EDE1| ADC.w #.oam_groups
|09EDE4| STA.b $08

|09EDE6| SEP #$20

|09EDE8| LDA.b #$04
|09EDEA| JSL TabulatedSpriteDraw

|09EDEE| RTS

;===================================================================================================

pool SpawnExplosion

.offset_low
|09EDEF| db   0,   4,   8,  12
|09EDF3| db  -4,  -8, -12,   0
|09EDF7| db   0,   8,  16,  24
|09EDFB| db -24, -16,  -8,   0

.offset_high
|09EDFF| db   0,   0,   0,   0
|09EE03| db  -1,  -1,  -1,   0
|09EE07| db   0,   0,   0,   0
|09EE0B| db  -1,  -1,  -1,   0

endpool

;---------------------------------------------------------------------------------------------------

VerifyExplosionPrize:
|09EE0F| LDA.b #$02
|09EE11| STA.w $0F20,X

|09EE14| LDA.w $0DF0,X
|09EE17| CMP.b #$20
|09EE19| BEQ .validate

|09EE1B| JMP.w SpawnExplosion

;---------------------------------------------------------------------------------------------------

.validate
|09EE1E| STZ.w $0DD0,X

|09EE21| STZ.w $02E4

|09EE24| LDA.b $5B
|09EE26| CMP.b #$02
|09EE28| BEQ .no_win

|09EE2A| JSL CheckIfScreenIsClear
|09EE2E| BCC .no_win

|09EE30| LDY.w $0E20,X
|09EE33| CPY.b #$D6 ; SPRITE D6
|09EE35| BCS .ganon

|09EE37| CPY.b #$7A ; SPRITE 7A
|09EE39| BNE .not_agahnim

|09EE3B| PHX

|09EE3C| JSL PrepareDungeonExitFromBossFight

|09EE40| PLX

;---------------------------------------------------------------------------------------------------

.no_win
|09EE41| JMP.w SpawnExplosion

;---------------------------------------------------------------------------------------------------

.ganon
|09EE44| LDA.b #$13 ; SONG 13
|09EE46| STA.w $012C

|09EE49| JMP.w SpawnExplosion

;---------------------------------------------------------------------------------------------------

.not_agahnim
|09EE4C| STY.w $0FB5

; Heart container spawn
|09EE4F| LDA.b #$EA ; SPRITE EA
|09EE51| LDY.b #$0E
|09EE53| JSL SpawnSpriteDynamically.slot_limited
|09EE57| JSL SetSpawnedSpriteCoordinates

|09EE5B| LDA.b #$20
|09EE5D| STA.w $0F80,Y

|09EE60| LDA.b $EE
|09EE62| STA.w $0F20,Y

|09EE65| LDA.b #$02

|09EE67| CPY.b #$09
|09EE69| BEQ .not_slot9

|09EE6B| LDA.b #$06

.not_slot9
|09EE6D| STA.w $0D90,Y

|09EE70| LDA.b $02
|09EE72| CLC
|09EE73| ADC.b #$03
|09EE75| STA.w $0D00,Y

|09EE78| LDA.b $03
|09EE7A| ADC.b #$00
|09EE7C| STA.w $0D20,Y

|09EE7F| LDA.w $0FB5
|09EE82| CMP.b #$CE
|09EE84| BNE .check_cb

;---------------------------------------------------------------------------------------------------

|09EE86| LDA.b $02
|09EE88| CLC
|09EE89| ADC.b #$10
|09EE8B| STA.w $0D00,Y

|09EE8E| LDA.b $03
|09EE90| ADC.b #$00
|09EE92| STA.w $0D20,Y

|09EE95| RTS

;---------------------------------------------------------------------------------------------------

.check_cb
|09EE96| CMP.b #$CB
|09EE98| BNE .exit

|09EE9A| LDA.b #$78
|09EE9C| STA.w $0D10,Y
|09EE9F| STA.w $0D00,Y

|09EEA2| LDA.b $23
|09EEA4| STA.w $0D30,Y

|09EEA7| LDA.b $21
|09EEA9| STA.w $0D20,Y

.exit
|09EEAC| RTS

;===================================================================================================

SpawnExplosion:
|09EEAD| CMP.b #$40
|09EEAF| BCC .delay

|09EEB1| CMP.b #$70
|09EEB3| BCS .draw_sprite

|09EEB5| AND.b #$01
|09EEB7| BNE .delay

.draw_sprite
|09EEB9| JSL SpriteModule_Active_long

.delay
|09EEBD| LDA.b #$07
|09EEBF| STA.b $0E

|09EEC1| LDA.w $0E20,X
|09EEC4| STA.b $0F

|09EEC6| CMP.b #$92 ; SPRITE 92
|09EEC8| BNE .not_king_helma

|09EECA| LSR.b $0E

.not_king_helma
|09EECC| LDA.w $0DF0,X
|09EECF| CMP.b #$C0
|09EED1| BCC .delay_more

|09EED3| RTS

;---------------------------------------------------------------------------------------------------

.delay_more
|09EED4| PHA

|09EED5| AND.b #$03
|09EED7| BNE .skip_sfx

|09EED9| LDA.b #$0C ; SFX2.0C
|09EEDB| JSL QueueSpriteSFX2WithPan

.skip_sfx
|09EEDF| PLA
|09EEE0| AND.b $0E
|09EEE2| BNE .exit

|09EEE4| LDA.b #$1C ; SPRITE 1C
|09EEE6| JSL SpawnSpriteDynamically
|09EEEA| BMI .exit

|09EEEC| LDA.b #$0B
|09EEEE| STA.w $0AAA

|09EEF1| LDA.b #$04
|09EEF3| STA.w $0DD0,Y

|09EEF6| LDA.b #$03
|09EEF8| STA.w $0E40,Y

|09EEFB| LDA.b #$0C
|09EEFD| STA.w $0F50,Y

;---------------------------------------------------------------------------------------------------

|09EF00| PHX

|09EF01| JSL GetRandomNumber
|09EF05| AND.b #$07
|09EF07| TAX

|09EF08| LDA.b $0F
|09EF0A| CMP.b #$92 ; SPRITE 92
|09EF0C| BNE .not_helma_king

|09EF0E| TXA
|09EF0F| ORA.b #$08
|09EF11| TAX

.not_helma_king
|09EF12| LDA.b $00
|09EF14| CLC
|09EF15| ADC.w .offset_low,X
|09EF18| STA.w $0D10,Y

|09EF1B| LDA.b $01
|09EF1D| ADC.w .offset_high,X
|09EF20| STA.w $0D30,Y

|09EF23| JSL GetRandomNumber
|09EF27| AND.b #$07
|09EF29| TAX

|09EF2A| LDA.b $0F
|09EF2C| CMP.b #$92 ; SPRITE 92
|09EF2E| BNE .not_helma

|09EF30| TXA
|09EF31| ORA.b #$08
|09EF33| TAX

.not_helma
|09EF34| LDA.b $02
|09EF36| CLC
|09EF37| ADC.w .offset_low,X
|09EF3A| PHP

|09EF3B| SEC
|09EF3C| SBC.b $04
|09EF3E| STA.w $0D00,Y

|09EF41| LDA.b $03
|09EF43| SBC.b #$00

|09EF45| PLP
|09EF46| ADC.w .offset_high,X
|09EF49| STA.w $0D20,Y

|09EF4C| PLX

|09EF4D| LDA.b #$1F
|09EF4F| STA.w $0DF0,Y
|09EF52| STA.w $0D90,Y

.exit
|09EF55| RTS

;===================================================================================================

KillFellowSprites:
|09EF56| LDY.b #$0F

.next
|09EF58| CPY.w $0FA0
|09EF5B| BEQ .skip

|09EF5D| LDA.w $0DD0,Y
|09EF60| BEQ .skip

|09EF62| LDA.w $0CAA,Y
|09EF65| AND.b #$02
|09EF67| BNE .skip

|09EF69| LDA.w $0E20,Y
|09EF6C| CMP.b #$7A ; SPRITE 7A
|09EF6E| BEQ .skip

|09EF70| LDA.b #$06
|09EF72| STA.w $0DD0,Y

|09EF75| LDA.b #$0F
|09EF77| STA.w $0DF0,Y

|09EF7A| LDA.b #$00
|09EF7C| STA.w $0E60,Y
|09EF7F| STA.w $0BE0,Y

|09EF82| LDA.b #$03
|09EF84| STA.w $0E40,Y

.skip
|09EF87| DEY
|09EF88| BPL .next

|09EF8A| RTL

;===================================================================================================

pool Garnish16_ThrownItemDebris

.offset_x
|09EF8B| dw   0,   8,   0,   8
|09EF93| dw  -2,   9,  -1,   9
|09EF9B| dw  -4,   9,  -1,  10
|09EFA3| dw  -6,   9,  -1,  12
|09EFAB| dw  -7,   9,  -2,  13
|09EFB3| dw  -9,   9,  -3,  14
|09EFBB| dw  -4,  -4,   9,  15
|09EFC3| dw  -3,  -3,  -3,   9
|09EFCB| dw  -4,   4,   6,  10
|09EFD3| dw  -1,   4,   6,   7
|09EFDB| dw   0,   2,   4,   7
|09EFE3| dw   1,   1,   5,   7
|09EFEB| dw   0,  -2,   8,   9
|09EFF3| dw  -1,  -6,   9,  10
|09EFFB| dw  -2,  -7,  12,  11
|09F003| dw  -3,  -9,   4,   6

;---------------------------------------------------------------------------------------------------

.offset_y
|09F00B| db   0,   0,   8,   8
|09F00F| db   0,  -1,  10,  10
|09F013| db   0,  -3,  11,   7
|09F017| db   1,  -4,  12,   8
|09F01B| db   1,  -4,  13,   9
|09F01F| db   2,  -4,  16,  10
|09F023| db  14,  14,  -4,  11
|09F027| db  16,  16,  16,  -1
|09F02B| db   2,  -5,   5,   1
|09F02F| db   3,  -7,   8,   2
|09F033| db   4,  -8,   4,  10
|09F037| db  -9,   4,   4,  12
|09F03B| db -10,   4,   8,  14
|09F03F| db -12,   4,   8,  15
|09F043| db -15,   3,   8,  17
|09F047| db -17,   1,  18,  15

;---------------------------------------------------------------------------------------------------

.char
|09F04B| db $58, $58, $58, $58
|09F04F| db $58, $58, $58, $58
|09F053| db $58, $58, $58, $58
|09F057| db $58, $58, $58, $58
|09F05B| db $48, $58, $58, $58
|09F05F| db $48, $58, $58, $48
|09F063| db $48, $48, $58, $48
|09F067| db $48, $48, $48, $48
|09F06B| db $59, $59, $59, $59
|09F06F| db $59, $59, $59, $59
|09F073| db $59, $59, $59, $59
|09F077| db $59, $59, $59, $59
|09F07B| db $59, $59, $59, $59
|09F07F| db $59, $59, $59, $59
|09F083| db $59, $59, $59, $59
|09F087| db $59, $59, $59, $59

;---------------------------------------------------------------------------------------------------

.prop
|09F08B| db $80, $00, $80, $40
|09F08F| db $80, $40, $80, $00
|09F093| db $00, $C0, $00, $80
|09F097| db $80, $40, $80, $00
|09F09B| db $80, $C0, $00, $80
|09F09F| db $00, $00, $80, $00
|09F0A3| db $80, $80, $80, $80
|09F0A7| db $00, $00, $00, $00
|09F0AB| db $40, $40, $40, $00
|09F0AF| db $40, $40, $40, $00
|09F0B3| db $40, $40, $00, $00
|09F0B7| db $80, $00, $40, $40
|09F0BB| db $40, $00, $40, $40
|09F0BF| db $40, $40, $40, $40
|09F0C3| db $40, $40, $00, $00
|09F0C7| db $40, $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

Garnish16_ThrownItemDebris:
|09F0CB| JSR Garnish_PrepOAMCoord

|09F0CE| LDA.l $7FF9FE,X
|09F0D2| STA.b $05

|09F0D4| LDA.w $0FC6
|09F0D7| CMP.b #$03
|09F0D9| BCS .exit

|09F0DB| LDA.l $7FF92C,X
|09F0DF| CMP.b #$03
|09F0E1| BNE .special_draw

|09F0E3| JSR GarnishDraw_ThrownItemDebris

.exit
|09F0E6| RTS

;---------------------------------------------------------------------------------------------------

.special_draw
|09F0E7| STA.w $0FB5

|09F0EA| TAY

|09F0EB| LDA.l $7FF90E,X
|09F0EF| LSR A
|09F0F0| LSR A
|09F0F1| EOR.b #$07
|09F0F3| ASL A
|09F0F4| ASL A

|09F0F5| CPY.b #$04
|09F0F7| BEQ .do_offset

|09F0F9| CPY.b #$02
|09F0FB| BNE .not_outdoors_bush

|09F0FD| LDY.b $1B
|09F0FF| BNE .not_outdoors_bush

;---------------------------------------------------------------------------------------------------

.do_offset
|09F101| CLC
|09F102| ADC.b #$20

.not_outdoors_bush
|09F104| STA.b $06

|09F106| LDY.b #$00

|09F108| PHX

|09F109| LDX.b #$03

;---------------------------------------------------------------------------------------------------

.next_char
|09F10B| PHX

|09F10C| TXA
|09F10D| CLC
|09F10E| ADC.b $06
|09F110| PHA

|09F111| ASL A
|09F112| TAX

|09F113| REP #$20

|09F115| LDA.b $00
|09F117| CLC
|09F118| ADC.w .offset_x,X
|09F11B| STA.b ($90),Y

|09F11D| AND.w #$0100
|09F120| STA.b $0E

|09F122| SEP #$20

|09F124| PLX

|09F125| LDA.b $02
|09F127| CLC
|09F128| ADC.w .offset_y,X
|09F12B| INY

|09F12C| STA.b ($90),Y

|09F12E| LDA.w $0FB5
|09F131| BNE .check_flip

|09F133| LDA.b #$4E
|09F135| BRA .use_char

.check_flip
|09F137| CMP.b #$80
|09F139| LDA.w .char,X
|09F13C| BCC .use_char

|09F13E| LDA.b #$F2

.use_char
|09F140| INY
|09F141| STA.b ($90),Y

|09F143| LDA.w .prop,X

|09F146| INY

|09F147| ORA.b $05
|09F149| STA.b ($90),Y

|09F14B| PHY

|09F14C| TYA
|09F14D| LSR A
|09F14E| LSR A
|09F14F| TAY

|09F150| LDA.b $0F
|09F152| STA.b ($92),Y

|09F154| PLY
|09F155| INY

|09F156| PLX
|09F157| DEX
|09F158| BPL .next_char

;---------------------------------------------------------------------------------------------------

|09F15A| PLX

|09F15B| RTS

;===================================================================================================

pool GarnishDraw_ThrownItemDebris

.offset_x
|09F15C| dw  -8,   8,  16
|09F162| dw  -5,   8,  15
|09F168| dw  -1,   7,  11
|09F16E| dw   1,   3,   8

.offset_y
|09F174| db   7,   2,  12
|09F177| db   9,   2,  10
|09F17A| db  11,   2,  11
|09F17D| db   7,   3,   8

.char
|09F180| db $E2, $E2, $E2
|09F183| db $E2, $F2, $F2
|09F186| db $F2, $E2, $E2
|09F189| db $F2, $E2, $E2

.prop
|09F18C| db $00, $00, $00
|09F18F| db $00, $80, $40
|09F192| db $00, $80, $40
|09F195| db $00, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

GarnishDraw_ThrownItemDebris:
|09F198| LDA.l $7FF90E,X
|09F19C| CMP.b #$10
|09F19E| BNE .skip

|09F1A0| LDA.b #$00
|09F1A2| STA.l $7FF800,X

.skip
|09F1A6| AND.b #$0F
|09F1A8| LSR A
|09F1A9| LSR A
|09F1AA| STA.b $06

|09F1AC| ASL A
|09F1AD| ADC.b $06
|09F1AF| STA.b $06

|09F1B1| LDY.b #$00

|09F1B3| PHX

;---------------------------------------------------------------------------------------------------

|09F1B4| LDX.b #$02

.next_object
|09F1B6| PHX

|09F1B7| TXA
|09F1B8| CLC
|09F1B9| ADC.b $06
|09F1BB| PHA

|09F1BC| ASL A
|09F1BD| TAX

|09F1BE| REP #$20

|09F1C0| LDA.b $00
|09F1C2| CLC
|09F1C3| ADC.w .offset_x,X
|09F1C6| STA.b ($90),Y

|09F1C8| AND.w #$0100
|09F1CB| STA.b $0E

|09F1CD| SEP #$20

|09F1CF| PLX

|09F1D0| LDA.b $02
|09F1D2| CLC
|09F1D3| ADC.w .offset_y,X

|09F1D6| INY
|09F1D7| STA.b ($90),Y

|09F1D9| LDA.w .char,X
|09F1DC| INY
|09F1DD| STA.b ($90),Y

|09F1DF| LDA.w .prop,X
|09F1E2| INY
|09F1E3| ORA.b #$22
|09F1E5| STA.b ($90),Y

|09F1E7| PHY

|09F1E8| TYA
|09F1E9| LSR A
|09F1EA| LSR A
|09F1EB| TAY

|09F1EC| LDA.b $0F
|09F1EE| STA.b ($92),Y

|09F1F0| PLY
|09F1F1| INY

|09F1F2| PLX
|09F1F3| DEX
|09F1F4| BPL .next_object

;---------------------------------------------------------------------------------------------------

|09F1F6| PLX

|09F1F7| RTS

;===================================================================================================

KillThisSprite:
|09F1F8| LDA.w $0CAA,X
|09F1FB| AND.b #$40
|09F1FD| BNE .force_die

|09F1FF| LDA.b $1B
|09F201| BNE .exit

.force_die
|09F203| STZ.w $0DD0,X

|09F206| TXA
|09F207| ASL A
|09F208| TAY

|09F209| REP #$20

|09F20B| LDA.w $0BC0,Y
|09F20E| STA.b $00

|09F210| CMP.w #$FFFF
|09F213| PHP

|09F214| LSR A ; /8
|09F215| LSR A
|09F216| LSR A

|09F217| CLC
|09F218| ADC.w #$7FEF80
|09F21B| STA.b $01

|09F21D| PLP
|09F21E| SEP #$20
|09F220| BCS .out_of_range

|09F222| LDA.b #$7F
|09F224| STA.b $03

|09F226| PHX

|09F227| LDA.b $00
|09F229| AND.b #$07
|09F22B| TAX

|09F22C| LDA.b [$01]
|09F22E| AND.l SpriteDeathMasks,X
|09F232| STA.b [$01]

|09F234| PLX

;---------------------------------------------------------------------------------------------------

.out_of_range
|09F235| LDA.b $1B
|09F237| BNE .indoors

|09F239| TXA
|09F23A| ASL A
|09F23B| TAY

|09F23C| LDA.b #$FF
|09F23E| STA.w $0BC0,Y
|09F241| STA.w $0BC1,Y

|09F244| RTL

;---------------------------------------------------------------------------------------------------

.indoors
|09F245| LDA.b #$FF
|09F247| STA.w $0BC0,X

;---------------------------------------------------------------------------------------------------

.exit
|09F24A| RTL

;---------------------------------------------------------------------------------------------------

SpriteDeathMasks:
|09F24B| db $7F, $BF, $DF, $EF, $F7, $FB, $FD, $FE

;===================================================================================================
; FREE ROM 0x1D
;===================================================================================================
NULL_09F253:
|09F253| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|09F25B| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|09F263| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|09F26B| db $FF, $FF, $FF, $FF, $FF

;===================================================================================================

pool Module12_GameOver

.vectors
|09F270| dw GameOver_AdvanceImmediately      ; 0x00
|09F272| dw GameOver_InitializeAndFadeMusic  ; 0x01
|09F274| dw GameOver_DelayBeforeIris         ; 0x02
|09F276| dw GameOver_IrisWipe                ; 0x03
|09F278| dw SpinAndDie_bounce                ; 0x04
|09F27A| dw GameOver_SplatAndFade            ; 0x05
|09F27C| dw GameOver_LoadGAMEOVR             ; 0x06
|09F27E| dw Animate_GAMEOVER_Letters_bounce  ; 0x07
|09F280| dw GameOver_Finalize_GAMEOVR        ; 0x08
|09F282| dw GameOver_SaveAndOrContinue       ; 0x09
|09F284| dw GameOver_InitializeRevivalFairy  ; 0x0A
|09F286| dw RevivalFairy_bounce              ; 0x0B
|09F288| dw GameOver_RiseALittle             ; 0x0C
|09F28A| dw GameOver_Restore0D               ; 0x0D
|09F28C| dw GameOver_Restore0E               ; 0x0E
|09F28E| dw GameOver_ResituateLink           ; 0x0F

endpool

;---------------------------------------------------------------------------------------------------

Module12_GameOver:
|09F290| LDA.b $11
|09F292| ASL A
|09F293| TAX

|09F294| JSR (.vectors,X)

|09F297| LDA.b $11
|09F299| CMP.b #$09
|09F29B| BEQ .exit

|09F29D| JSL DrawLink

.exit
|09F2A1| RTL

;===================================================================================================

GameOver_AdvanceImmediately:
|09F2A2| INC.b $11

;===================================================================================================

GameOver_InitializeAndFadeMusic:
|09F2A4| LDA.w $0130
|09F2A7| STA.l $7EC227

|09F2AB| LDA.w $0131
|09F2AE| STA.l $7EC228

|09F2B2| LDA.b #$F1 ; SONG F1 - fade
|09F2B4| STA.w $012C

|09F2B7| LDA.b #$05 ; SFX1.05
|09F2B9| STA.w $012D
|09F2BC| STA.w $0200

|09F2BF| STZ.w $03F3
|09F2C2| STZ.w $0322

|09F2C5| STZ.b $55

;---------------------------------------------------------------------------------------------------

|09F2C7| REP #$20

|09F2C9| LDA.l $7EC007
|09F2CD| STA.l $7EC221

|09F2D1| LDA.l $7EC009
|09F2D5| STA.l $7EC223

;---------------------------------------------------------------------------------------------------

|09F2D9| LDX.b #$00

.next
|09F2DB| LDA.l $7EC300,X
|09F2DF| STA.l $7FDD80,X

|09F2E3| LDA.l $7EC340,X
|09F2E7| STA.l $7FDDC0,X

|09F2EB| LDA.l $7EC380,X
|09F2EF| STA.l $7FDE00,X

|09F2F3| LDA.l $7EC3C0,X
|09F2F7| STA.l $7FDE40,X

|09F2FB| LDA.w #$0000 ; RGB: #000000
|09F2FE| STA.l $7EC340,X
|09F302| STA.l $7EC380,X
|09F306| STA.l $7EC3C0,X

|09F30A| INX
|09F30B| INX
|09F30C| CPX.b #$40
|09F30E| BNE .next

;---------------------------------------------------------------------------------------------------

|09F310| STA.l $7EC007
|09F314| STA.l $7EC009

|09F318| STZ.w $011A
|09F31B| STZ.w $011C

|09F31E| LDA.b $99
|09F320| STA.l $7EC225

|09F324| SEP #$20

|09F326| LDA.b #$20
|09F328| STA.b $C8

|09F32A| STZ.w $04A0

|09F32D| JSL HandleFloorIndicator

|09F331| INC.b $16

|09F333| LDA.b #$05 ; SFX1.05
|09F335| STA.w $012D

|09F338| INC.b $11

|09F33A| RTS

;===================================================================================================

GameOver_DelayBeforeIris:
|09F33B| DEC.b $C8
|09F33D| BNE .exit

|09F33F| JSL InitializeGAMEOVERLetters
|09F343| JSL IrisSpotlight_close

|09F347| LDA.b #$30
|09F349| STA.b $98
|09F34B| STZ.b $97

|09F34D| INC.b $11

.exit
|09F34F| RTS

;===================================================================================================

GameOver_IrisWipe:
|09F350| JSL PaletteFilter_RestoreBGSubstractiveStrict

|09F354| LDA.l $7EC540
|09F358| STA.l $7EC500

|09F35C| LDA.l $7EC541
|09F360| STA.l $7EC501

|09F364| LDA.b $10

|09F366| PHA

|09F367| JSL IrisSpotlight_ConfigureTable

|09F36B| PLA
|09F36C| STA.b $10

|09F36E| LDA.b $11
|09F370| BNE .exit

;---------------------------------------------------------------------------------------------------

|09F372| REP #$20

|09F374| LDA.w #$0018 ; RGB: #C00000
|09F377| LDX.b #$00

.next_red
|09F379| STA.l $7EC540,X
|09F37D| STA.l $7EC560,X

|09F381| STA.l $7EC580,X
|09F385| STA.l $7EC5A0,X

|09F389| STA.l $7EC5C0,X
|09F38D| STA.l $7EC5E0,X

|09F391| INX
|09F392| INX
|09F393| CPX.b #$20
|09F395| BNE .next_red

|09F397| STA.l $7EC500
|09F39B| STA.l $7EC540

;---------------------------------------------------------------------------------------------------

|09F39F| SEP #$20

|09F3A1| JSL IrisSpotlight_ResetTable

|09F3A5| LDA.b #$20 ; Fixed color RGB: #000000
|09F3A7| STA.b $9C

|09F3A9| LDA.b #$40
|09F3AB| STA.b $9D

|09F3AD| LDA.b #$80
|09F3AF| STA.b $9E

|09F3B1| STZ.b $96
|09F3B3| STZ.b $97
|09F3B5| STZ.b $98

;---------------------------------------------------------------------------------------------------

|09F3B7| LDA.b #$04
|09F3B9| STA.b $11

|09F3BB| INC.b $15

|09F3BD| LDA.b #$0F
|09F3BF| STA.b $13

|09F3C1| LDA.b #$14
|09F3C3| STA.b $1C
|09F3C5| STZ.b $1D

|09F3C7| LDA.b #$20
|09F3C9| STA.b $9A

|09F3CB| LDA.b #$40
|09F3CD| STA.b $C8

;---------------------------------------------------------------------------------------------------

|09F3CF| LDA.b #$00
|09F3D1| STA.l $7EC007
|09F3D5| STA.l $7EC009

|09F3D9| JSL PrepareToDie

.exit
|09F3DD| RTS

;===================================================================================================

GameOver_SplatAndFade:
|09F3DE| LDA.b $C8
|09F3E0| BNE .delay

|09F3E2| JSL PaletteFilter_RestoreBGSubstractiveStrict

|09F3E6| LDA.l $7EC540
|09F3EA| STA.l $7EC500

|09F3EE| LDA.l $7EC541
|09F3F2| STA.l $7EC501

|09F3F6| LDA.l $7EC009
|09F3FA| CMP.b #$FF
|09F3FC| BNE .exit

|09F3FE| LDA.b #$00
|09F400| STA.l $7EC011
|09F404| STA.w $0647

|09F407| LDA.b #$03
|09F409| STA.b $95

;---------------------------------------------------------------------------------------------------

|09F40B| LDX.b #$00

|09F40D| LDA.b #$06
|09F40F| CMP.l $7EF35C
|09F413| BEQ .load_gfx

|09F415| INX

|09F416| CMP.l $7EF35D
|09F41A| BEQ .load_gfx

|09F41C| INX

|09F41D| CMP.l $7EF35E
|09F421| BEQ .load_gfx

|09F423| INX

|09F424| CMP.l $7EF35F
|09F428| BEQ .load_gfx

;---------------------------------------------------------------------------------------------------

|09F42A| STZ.w $05FC
|09F42D| STZ.w $05FD

|09F430| JSL DecompressFontGFX

|09F434| LDA.b #$16
|09F436| STA.b $17
|09F438| STA.w $0710

|09F43B| INC.b $11

.exit
|09F43D| RTS

;---------------------------------------------------------------------------------------------------

.delay
|09F43E| DEC.b $C8

|09F440| RTS

;---------------------------------------------------------------------------------------------------

.load_gfx
|09F441| LDA.b #$02
|09F443| STA.l $7EF35C,X

|09F447| LDA.b #$0C
|09F449| STA.b $C8

|09F44B| LDA.b #$0F
|09F44D| STA.w $0AAA

|09F450| JSL LoadChrHalfSlot

|09F454| STZ.w $0AAA

|09F457| LDA.b #$0A
|09F459| STA.b $11

|09F45B| RTS

;===================================================================================================

GameOver_LoadGAMEOVR:
|09F45C| LDA.b #$0C
|09F45E| STA.b $C8

|09F460| LDA.b #$0F
|09F462| STA.w $0AAA

|09F465| JSL LoadChrHalfSlot

|09F469| STZ.w $0AAA

;---------------------------------------------------------------------------------------------------

|09F46C| LDA.b #$05
|09F46E| STA.w $0AB1

|09F471| LDA.b #$02
|09F473| STA.w $0AA9

|09F476| JSL PaletteLoad_SpriteEnvironment_Underworld

|09F47A| INC.b $15
|09F47C| INC.b $11

;===================================================================================================

SpinAndDie_bounce:
|09F47E| JSL SpinAndDie

|09F482| RTS

;===================================================================================================

Animate_GAMEOVER_Letters_bounce:
|09F483| JSL Animate_GAMEOVER_Letters

|09F487| RTS

;===================================================================================================

GameOver_Finalize_GAMEOVR:
|09F488| JSL Animate_GAMEOVER_Letters

|09F48C| LDA.b $10
|09F48E| PHA

|09F48F| LDA.b $11
|09F491| PHA

|09F492| LDA.b #$02
|09F494| STA.w $1CD8

|09F497| JSL RenderText

|09F49B| PLA
|09F49C| INC A
|09F49D| STA.b $11

|09F49F| PLA
|09F4A0| STA.b $10

|09F4A2| LDA.b #$02
|09F4A4| STA.b $C8

|09F4A6| LDA.b #$0B ; SONG 0B
|09F4A8| STA.w $012C

;---------------------------------------------------------------------------------------------------

#EXIT_09F4AB:
|09F4AB| RTS

;===================================================================================================

MaxHealthBasedSpawnHP:
|09F4AC| db $18, $18, $18, $18, $18, $20, $20, $28
|09F4B4| db $28, $30, $30, $38, $38, $38, $40, $40
|09F4BC| db $40, $48, $48, $48, $50

;===================================================================================================

GameOver_SaveAndOrContinue:
|09F4C1| JSR GameOver_AnimateChoiceFairy

|09F4C4| LDA.w $0C4A
|09F4C7| BEQ .no_more_gameover

|09F4C9| JSL Animate_GAMEOVER_Letters

.no_more_gameover
|09F4CD| LDA.b $F4
|09F4CF| AND.b #$20
|09F4D1| BNE .pressed_select

|09F4D3| DEC.b $C8
|09F4D5| BNE .check_for_choice_input

|09F4D7| INC.b $C8

; Pressed up/down?
|09F4D9| LDA.b $F0
|09F4DB| AND.b #$0C
|09F4DD| BEQ .check_for_choice_input

|09F4DF| AND.b #$04
|09F4E1| BEQ .pressed_down

; or up!
.pressed_select
|09F4E3| INC.b $B0

|09F4E5| LDA.b $B0
|09F4E7| CMP.b #$03
|09F4E9| BMI .play_sfx

|09F4EB| STZ.b $B0
|09F4ED| BRA .play_sfx

.pressed_down
|09F4EF| DEC.b $B0
|09F4F1| BPL .play_sfx

|09F4F3| LDA.b #$02
|09F4F5| STA.b $B0

.play_sfx
|09F4F7| LDA.b #$0C
|09F4F9| STA.b $C8

|09F4FB| LDA.b #$20 ; SFX3.20
|09F4FD| STA.w $012F

;---------------------------------------------------------------------------------------------------

.check_for_choice_input
|09F500| LDA.b $F6
|09F502| AND.b #$C0

|09F504| ORA.b $F4
|09F506| AND.b #$D0
|09F508| BEQ EXIT_09F4AB

|09F50A| LDA.b #$2C ; SFX2.2C
|09F50C| STA.w $012E

;===================================================================================================

GameOver_FadeAndRevive:
|09F50F| LDA.b #$F1 ; SONG F1 - fade
|09F511| STA.w $012C

|09F514| LDA.b $1B
|09F516| BEQ .outdoors

|09F518| JSL FullyUpdateRoomFlags

;---------------------------------------------------------------------------------------------------

.outdoors
|09F51C| JSL AdjustLinkBunnyStatus

|09F520| LDA.l $7EF3C5
|09F524| CMP.b #$03
|09F526| BCS .dont_skip_bunniness

|09F528| LDA.b #$00
|09F52A| STA.l $7EF3CA

|09F52E| LDA.l $7EF357
|09F532| BNE .dont_skip_bunniness

|09F534| JSL ForceNonbunnyStatus

.dont_skip_bunniness
|09F538| LDA.b $A0 ; ROOM 0000
|09F53A| ORA.b $A1
|09F53C| BNE .not_ganon

|09F53E| STZ.b $1B

.not_ganon
|09F540| JSL ResetSomeThingsAfterDeath

;---------------------------------------------------------------------------------------------------

|09F544| LDA.l $7EF3CC
|09F548| CMP.b #$06 ; FOLLOWER 06
|09F54A| BEQ .lose_follower

|09F54C| CMP.b #$0D ; FOLLOWER 0D
|09F54E| BEQ .lose_follower

|09F550| CMP.b #$0A ; FOLLOWER 0A
|09F552| BEQ .lose_follower

|09F554| CMP.b #$09 ; FOLLOWER 09
|09F556| BNE .keep_follower

.lose_follower
|09F558| LDA.b #$00
|09F55A| STA.l $7EF3CC

;---------------------------------------------------------------------------------------------------

.keep_follower
|09F55E| LDA.l $7EF36C
|09F562| LSR A
|09F563| LSR A
|09F564| LSR A
|09F565| TAX

|09F566| LDA.l MaxHealthBasedSpawnHP,X
|09F56A| STA.l $7EF36D
|09F56E| STA.w $04AA

; handle keys
|09F571| LDA.w $040C
|09F574| CMP.b #$FF ; DUNGEON FF
|09F576| BEQ .cave

; merge castle and sewers keys
|09F578| CMP.b #$02 ; DUNGEON 02
|09F57A| BNE .castle

|09F57C| LDA.b #$00 ; DUNGEON 00

.castle
|09F57E| LSR A
|09F57F| TAX

|09F580| LDA.l $7EF36F
|09F584| STA.l $7EF37C,X

.cave
|09F588| JSL ResetAllSprites

;---------------------------------------------------------------------------------------------------

|09F58C| REP #$20

|09F58E| LDA.l $7EF401
|09F592| CMP.w #$FFFF
|09F595| BNE .deaths_not_maxed

|09F597| LDA.l $7EF3FF
|09F59B| INC A
|09F59C| STA.l $7EF3FF

.deaths_not_maxed
|09F5A0| SEP #$20

|09F5A2| INC.w $010A

|09F5A5| LDA.b $B0
|09F5A7| CMP.b #$01
|09F5A9| BEQ GameOver_SaveAndQuit

;---------------------------------------------------------------------------------------------------

|09F5AB| LDA.b $1B
|09F5AD| BEQ .died_in_overworld

|09F5AF| LDA.l $7EF3CC
|09F5B3| CMP.b #$01 ; FOLLOWER 01
|09F5B5| BEQ .use_this_spawn

|09F5B7| LDA.w $040C
|09F5BA| CMP.b #$FF ; DUNGEON FF
|09F5BC| BEQ .died_in_cave

|09F5BE| STZ.w $04AA
|09F5C1| BRA .use_this_spawn

.died_in_cave
|09F5C3| STZ.b $1B

.died_in_overworld
|09F5C5| LDA.l $7EF3CA
|09F5C9| BEQ .use_this_spawn

|09F5CB| LDA.b #$20
|09F5CD| STA.b $A0
|09F5CF| STZ.b $A1

.use_this_spawn
|09F5D1| LDA.l $7EF3C5
|09F5D5| BEQ .no_progress

|09F5D7| LDA.b $B0
|09F5D9| BNE .dont_save

|09F5DB| JSL SaveGameFile

.dont_save
|09F5DF| LDA.b #$05
|09F5E1| STA.b $10

|09F5E3| STZ.b $11
|09F5E5| STZ.b $14

|09F5E7| RTS

;---------------------------------------------------------------------------------------------------

.no_progress
|09F5E8| REP #$20

|09F5EA| LDA.l $701FFE
|09F5EE| TAX

|09F5EF| DEX
|09F5F0| DEX

|09F5F1| LDA.l SaveFileCopyOffsets,X
|09F5F5| STA.b $00

|09F5F7| SEP #$20

|09F5F9| STZ.w $010A

|09F5FC| JSL CopySaveToWRAM

|09F600| RTS

;===================================================================================================

GameOver_SaveAndQuit:
|09F601| LDA.l $7EF3C5
|09F605| BEQ .no_progress

|09F607| JSL SaveGameFile

.no_progress
|09F60B| LDA.b #$10
|09F60D| STA.b $1C
|09F60F| STZ.b $1B

|09F611| JSL InitializeTriforceIntro

|09F615| STZ.w $04AA
|09F618| STZ.w $010A
|09F61B| STZ.w $0132

|09F61E| SEI

|09F61F| STZ.w NMITIMEN
|09F622| STZ.w HDMAEN

|09F625| REP #$30

|09F627| STZ.b $E0
|09F629| STZ.b $E2
|09F62B| STZ.b $E4
|09F62D| STZ.b $E6
|09F62F| STZ.b $E8
|09F631| STZ.b $EA

|09F633| STZ.w $0120
|09F636| STZ.w $011E
|09F639| STZ.w $0124
|09F63C| STZ.w $0122

;---------------------------------------------------------------------------------------------------

|09F63F| LDX.w #$0000
|09F642| TXA

.delete_next
|09F643| STA.l $7EF000,X
|09F647| STA.l $7EF100,X
|09F64B| STA.l $7EF200,X
|09F64F| STA.l $7EF300,X
|09F653| STA.l $7EF400,X

|09F657| INX
|09F658| INX
|09F659| CPX.w #$0100
|09F65C| BNE .delete_next

;---------------------------------------------------------------------------------------------------

|09F65E| SEP #$30

|09F660| STZ.w $0136

|09F663| LDA.b #$FF ; SONG FF - transfer
|09F665| STA.w APUIO0

|09F668| JSL LoadOverworldSongs

|09F66C| LDA.b #$81
|09F66E| STA.w NMITIMEN

|09F671| RTS

;===================================================================================================

pool GameOver_AnimateChoiceFairy

.fairy_char
|09F672| db $EA
|09F673| db $EC

.fairy_height
|09F674| db $81
|09F675| db $91
|09F676| db $A1

endpool

;---------------------------------------------------------------------------------------------------

GameOver_AnimateChoiceFairy:
|09F677| PHB
|09F678| PHK
|09F679| PLB

|09F67A| LDX.b $B0

|09F67C| LDA.b #$3C
|09F67E| STA.w $0850

|09F681| LDA.w .fairy_height,X
|09F684| STA.w $0851

|09F687| LDA.b $1A
|09F689| AND.b #$08
|09F68B| LSR A
|09F68C| LSR A
|09F68D| LSR A
|09F68E| TAX

|09F68F| LDA.w .fairy_char,X
|09F692| STA.w $0852

|09F695| LDA.b #$78
|09F697| STA.w $0853

|09F69A| LDA.b #$02
|09F69C| STA.w $0A34

|09F69F| PLB

|09F6A0| RTS

;===================================================================================================

GameOver_InitializeRevivalFairy:
|09F6A1| JSL ConfigureRevivalAncillae

; heal 7 hearts
|09F6A5| LDA.b #$38
|09F6A7| STA.l $7EF372

|09F6AB| INC.b $11

|09F6AD| STZ.w $0200

|09F6B0| RTS

;===================================================================================================

RevivalFairy_bounce:
|09F6B1| JSL RevivalFairy

|09F6B5| RTS

;===================================================================================================

GameOver_RiseALittle:
|09F6B6| LDA.l $7EF372
|09F6BA| BNE GameOver_RunFairyRefill

;---------------------------------------------------------------------------------------------------

|09F6BC| REP #$20

|09F6BE| LDX.b #$00

.next_color
|09F6C0| LDA.l $7FDD80,X
|09F6C4| STA.l $7EC300,X

|09F6C8| LDA.l $7FDDC0,X
|09F6CC| STA.l $7EC340,X

|09F6D0| LDA.l $7FDE00,X
|09F6D4| STA.l $7EC380,X

|09F6D8| LDA.l $7FDE40,X
|09F6DC| STA.l $7EC3C0,X

|09F6E0| LDA.w #$0000 ; RGB: #000000
|09F6E3| STA.l $7EC540,X
|09F6E7| STA.l $7EC580,X
|09F6EB| STA.l $7EC5C0,X

|09F6EF| INX
|09F6F0| INX
|09F6F1| CPX.b #$40
|09F6F3| BNE .next_color

;---------------------------------------------------------------------------------------------------

|09F6F5| STA.l $7EC500

|09F6F9| LDA.w #$0000
|09F6FC| STA.l $7EC007

|09F700| LDA.w #$0002
|09F703| STA.l $7EC009

|09F707| LDA.l $7EC225
|09F70B| STA.b $99

|09F70D| SEP #$20

;===================================================================================================

GameOver_AriseAdvancement:
|09F70F| INC.b $11

;===================================================================================================

GameOver_RunFairyRefill:
|09F711| JSL RevivalFairy
|09F715| JSL HandleItemRefills

|09F719| RTS

;===================================================================================================

GameOver_Restore0D:
|09F71A| LDA.w $020A
|09F71D| BNE GameOver_RunFairyRefill

|09F71F| LDA.b #$01
|09F721| STA.w $0AAA

|09F724| JSL LoadChrHalfSlot

|09F728| LDA.l $7EC017
|09F72C| JSL ApplyGrayscaleFixed_Parameterized

|09F730| BRA GameOver_AriseAdvancement

;===================================================================================================

GameOver_Restore0E:
|09F732| JSL LoadChrHalfSlot

|09F736| LDA.l $7EC212
|09F73A| STA.b $1D

|09F73C| INC.b $11

|09F73E| RTS

;===================================================================================================

GameOver_ResituateLink:
|09F73F| JSL PaletteFilter_RestoreBGAdditiveStrict

|09F743| LDA.l $7EC540
|09F747| STA.l $7EC500

|09F74B| LDA.l $7EC541
|09F74F| STA.l $7EC501

|09F753| LDA.l $7EC007
|09F757| CMP.b #$20
|09F759| BNE EXIT_09F797

|09F75B| LDA.b $1B
|09F75D| BNE .indoors

|09F75F| JSL Overworld_SetFixedColAndScroll

;---------------------------------------------------------------------------------------------------

.indoors
|09F763| LDA.l $7EC212
|09F767| STA.b $1D

|09F769| LDA.w $010C
|09F76C| STA.b $10
|09F76E| STZ.b $11

|09F770| LDA.b #$90
|09F772| STA.w $031F

|09F775| LDA.l $7EC227
|09F779| STA.w $012C

|09F77C| LDA.l $7EC228
|09F780| STA.w $012D

|09F783| REP #$20

|09F785| LDA.l $7EC221
|09F789| STA.l $7EC007

|09F78D| LDA.l $7EC223
|09F791| STA.l $7EC009

|09F795| SEP #$20

;---------------------------------------------------------------------------------------------------

#EXIT_09F797:
|09F797| RTS

;===================================================================================================

pool Module17_SaveAndQuit

.submodules
|09F798| dw Module17_00
|09F79A| dw Module17_01

endpool

;---------------------------------------------------------------------------------------------------

Module17_SaveAndQuit:
|09F79C| LDA.b $11
|09F79E| ASL A
|09F79F| TAX

|09F7A0| JSR (.submodules,X)

|09F7A3| JSL HandleAllSprites
|09F7A7| JSL DrawLink

|09F7AB| RTL

;===================================================================================================

; This submodule is probably super short so that the submode is nonzero
; but really, they could have just written it every frame
; and skipped the submodulization
Module17_00:
|09F7AC| INC.b $11

;===================================================================================================

Module17_01:
|09F7AE| DEC.b $13 ; darken the screen every frame
|09F7B0| BNE EXIT_09F797

|09F7B2| LDA.b #$0F
|09F7B4| STA.b $95

|09F7B6| LDA.b #$01
|09F7B8| STA.b $B0

|09F7BA| JMP.w GameOver_FadeAndRevive

;===================================================================================================
; FREE ROM: 0x21
;===================================================================================================
NULL_09F7BD:
|09F7BD| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|09F7C5| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|09F7CD| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|09F7D5| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|09F7DD| db $FF

;===================================================================================================
; This is the only place anywhere in the code that Direct Page is changed.
; For clarity, all direct page addresses are written out in full.
;
; This beautiful code is the work of one Yasunari Nishida.
;===================================================================================================
Polyhedral_InitializeThread:
|09F7DE| PHP
|09F7DF| PHB

|09F7E0| REP #$30

|09F7E2| PHA
|09F7E3| PHX
|09F7E4| PHY

|09F7E5| LDA.w #$0000
|09F7E8| STA.l $001F00

|09F7EC| LDX.w #$001F00
|09F7EF| LDY.w #$001F02
|09F7F2| LDA.w #$00FD
|09F7F5| MVN $00, $00

|09F7F8| LDA.w #$001F31
|09F7FB| STA.w $1F0A

|09F7FE| LDA.w #$000C
|09F801| LDX.w #.registers
|09F804| LDY.w #$001F32
|09F807| MVN ^Polyhedral_InitializeThread, $00

|09F80A| PLY
|09F80B| PLX
|09F80C| PLA

|09F80D| PLB
|09F80E| PLP

|09F80F| RTL

;---------------------------------------------------------------------------------------------------

.registers
|09F810| db ^Polyhedral_RunThread      ; data bank
|09F811| dw $1F00                      ; direct page
|09F813| dw $0000                      ; Y
|09F815| dw $0000                      ; X
|09F817| dw $0000                      ; A
|09F819| db $30                        ; P
|09F81A| dl Polyhedral_RunThread

;===================================================================================================

Polyhedral_RunThread:

.wait
|09F81D| LDA.b $001F00
|09F81F| BEQ .wait

|09F821| LDA.b $001F0C
|09F823| BNE .wait

|09F825| JSL Polyhedral_EmptyBitMapBuffer
|09F829| JSR Polyhedral_SetShapePointer
|09F82C| JSR Polyhedral_SetRotationMatrix
|09F82F| JSR Polyhedral_OperateRotation
|09F832| JSR Polyhedral_DrawPolyhedron

|09F835| STZ.b $001F00

|09F837| LDA.b #$FF
|09F839| STA.b $001F0C

|09F83B| BRA .wait

;===================================================================================================

Polyhedral_SetShapePointer:
|09F83D| REP #$30

|09F83F| LDA.b $001F02
|09F841| AND.w #$00FF
|09F844| ASL A
|09F845| ADC.w #$0080
|09F848| STA.b $001F08

|09F84A| LDA.w $1F03
|09F84D| AND.w #$00FF
|09F850| ASL A
|09F851| STA.b $001FB0

|09F853| ASL A
|09F854| ADC.b $001FB0
|09F856| ADC.w #PolyhedralPropertyTable
|09F859| TAX

|09F85A| LDY.w #$001F3F
|09F85D| LDA.w #$0005
|09F860| MVN ^PolyhedralPropertyTable, ^PolyhedralPropertyTable

|09F863| RTS

;===================================================================================================

Polyhedral_SetRotationMatrix:
|09F864| SEP #$30

|09F866| LDY.b $001F04

|09F868| LDA.w Polyhedral_SineTable,Y
|09F86B| STA.b $001F50

|09F86D| CMP.b #$80
|09F86F| SBC.b $001F50
|09F871| EOR.b #$FF
|09F873| STA.b $001F51

|09F875| LDA.w Polyhedral_CosineTable,Y
|09F878| STA.b $001F52

|09F87A| CMP.b #$80
|09F87C| SBC.b $001F52
|09F87E| EOR.b #$FF
|09F880| STA.b $001F53

;---------------------------------------------------------------------------------------------------

|09F882| LDY.b $001F05

|09F884| LDA.w Polyhedral_SineTable,Y
|09F887| STA.b $001F54

|09F889| CMP.b #$80
|09F88B| SBC.b $001F54

|09F88D| EOR.b #$FF
|09F88F| STA.b $001F55

|09F891| LDA.w Polyhedral_CosineTable,Y
|09F894| STA.b $001F56

|09F896| CMP.b #$80
|09F898| SBC.b $001F56

|09F89A| EOR.b #$FF
|09F89C| STA.b $001F57

;---------------------------------------------------------------------------------------------------

|09F89E| REP #$20

|09F8A0| SEI

|09F8A1| LDX.b $001F54
|09F8A3| STX.w PPUMULT16

|09F8A6| LDX.b $001F55
|09F8A8| STX.w PPUMULT16

|09F8AB| LDX.b $001F50
|09F8AD| STX.w PPUMULT8

|09F8B0| LDA.w MPYM
|09F8B3| ASL A
|09F8B4| ASL A
|09F8B5| STA.b $001F58

;---------------------------------------------------------------------------------------------------

|09F8B7| LDX.b $001F56
|09F8B9| STX.w PPUMULT16

|09F8BC| LDX.b $001F57
|09F8BE| STX.w PPUMULT16

|09F8C1| LDX.b $001F52
|09F8C3| STX.w PPUMULT8

|09F8C6| LDA.w MPYM
|09F8C9| ASL A
|09F8CA| ASL A
|09F8CB| STA.b $001F5E

;---------------------------------------------------------------------------------------------------

|09F8CD| LDX.b $001F56
|09F8CF| STX.w PPUMULT16

|09F8D2| LDX.b $001F57
|09F8D4| STX.w PPUMULT16

|09F8D7| LDX.b $001F50
|09F8D9| STX.w PPUMULT8

|09F8DC| LDA.w MPYM
|09F8DF| ASL A
|09F8E0| ASL A
|09F8E1| STA.b $001F5A

;---------------------------------------------------------------------------------------------------

|09F8E3| LDX.b $001F54
|09F8E5| STX.w PPUMULT16

|09F8E8| LDX.b $001F55
|09F8EA| STX.w PPUMULT16

|09F8ED| LDX.b $001F52
|09F8EF| STX.w PPUMULT8

|09F8F2| LDA.w MPYM
|09F8F5| ASL A
|09F8F6| ASL A
|09F8F7| STA.b $001F5C

;---------------------------------------------------------------------------------------------------

|09F8F9| CLI

|09F8FA| RTS

;===================================================================================================

Polyhedral_OperateRotation:
|09F8FB| SEP #$30

|09F8FD| LDA.b $001F3F
|09F8FF| TAX

|09F900| ASL A
|09F901| ADC.b $001F3F
|09F903| TAY

.next
|09F904| DEX
|09F905| DEY

|09F906| LDA.b ($001F41),Y
|09F908| STA.b $001F47

|09F90A| DEY

|09F90B| LDA.b ($001F41),Y
|09F90D| STA.b $001F46

|09F90F| DEY
|09F910| LDA.b ($001F41),Y
|09F912| STA.b $001F45

|09F914| PHY

|09F915| REP #$20

|09F917| JSR Polyhedral_RotatePoint
|09F91A| JSR Polyhedral_ProjectPoint

|09F91D| SEP #$20
|09F91F| CLC

|09F920| LDA.b $001F06
|09F922| ADC.b $001F48
|09F924| STA.b $001F60,X

|09F926| SEC

|09F927| LDA.b $001F07
|09F929| SBC.b $001F4A
|09F92B| STA.b $001F88,X

|09F92D| PLY
|09F92E| BNE .next

|09F930| RTS

;===================================================================================================

Polyhedral_RotatePoint:
|09F931| LDY.b $001F56

|09F933| SEI

|09F934| STY.w PPUMULT16

|09F937| LDY.b $001F57
|09F939| STY.w PPUMULT16

|09F93C| LDY.b $001F45
|09F93E| STY.w PPUMULT8

|09F941| LDA.w MPYL

|09F944| LDY.b $001F54
|09F946| STY.w PPUMULT16

|09F949| LDY.b $001F55
|09F94B| STY.w PPUMULT16

|09F94E| LDY.b $001F47
|09F950| STY.w PPUMULT8

|09F953| SEC
|09F954| SBC.w MPYL

|09F957| CLI

|09F958| STA.b $001F48

;---------------------------------------------------------------------------------------------------

|09F95A| LDY.b $001F58

|09F95C| SEI

|09F95D| STY.w PPUMULT16

|09F960| LDY.b $001F59
|09F962| STY.w PPUMULT16

|09F965| LDY.b $001F45
|09F967| STY.w PPUMULT8

|09F96A| LDA.w MPYL

|09F96D| LDY.b $001F52
|09F96F| STY.w PPUMULT16

|09F972| LDY.b $001F53
|09F974| STY.w PPUMULT16

|09F977| LDY.b $001F46
|09F979| STY.w PPUMULT8

|09F97C| CLC
|09F97D| ADC.w MPYL

|09F980| LDY.b $001F5A
|09F982| STY.w PPUMULT16

|09F985| LDY.b $001F5B
|09F987| STY.w PPUMULT16

|09F98A| LDY.b $001F47
|09F98C| STY.w PPUMULT8

|09F98F| CLC
|09F990| ADC.w MPYL

|09F993| CLI

|09F994| STA.b $001F4A

;---------------------------------------------------------------------------------------------------

|09F996| LDY.b $001F5C

|09F998| SEI

|09F999| STY.w PPUMULT16

|09F99C| LDY.b $001F5D
|09F99E| STY.w PPUMULT16

|09F9A1| LDY.b $001F45
|09F9A3| STY.w PPUMULT8

|09F9A6| LDA.w MPYM

|09F9A9| LDY.b $001F50
|09F9AB| STY.w PPUMULT16

|09F9AE| LDY.b $001F51
|09F9B0| STY.w PPUMULT16

|09F9B3| LDY.b $001F46
|09F9B5| STY.w PPUMULT8

|09F9B8| SEC
|09F9B9| SBC.w MPYM

|09F9BC| LDY.b $001F5E
|09F9BE| STY.w PPUMULT16

|09F9C1| LDY.b $001F5F
|09F9C3| STY.w PPUMULT16

|09F9C6| LDY.b $001F47
|09F9C8| STY.w PPUMULT8

|09F9CB| CLC
|09F9CC| ADC.w MPYM

|09F9CF| REP #$05

|09F9D1| ADC.b $001F08
|09F9D3| STA.b $001F4C

|09F9D5| RTS

;===================================================================================================

Polyhedral_ProjectPoint:
|09F9D6| LDA.b $001F48
|09F9D8| BPL .positive_a

|09F9DA| EOR.w #$FFFF
|09F9DD| INC A

.positive_a
|09F9DE| STA.b $001FB2

|09F9E0| LDA.b $001F4C
|09F9E2| STA.b $001FB0

|09F9E4| XBA
|09F9E5| AND.w #$00FF
|09F9E8| BEQ .zero_a

.shift_a
|09F9EA| LSR.b $001FB2
|09F9EC| LSR.b $001FB0
|09F9EE| LSR A
|09F9EF| BNE .shift_a

.zero_a
|09F9F1| SEI

|09F9F2| LDA.b $001FB2
|09F9F4| STA.w WRDIVL

|09F9F7| LDY.b $001FB0
|09F9F9| STY.w WRDIVB

|09F9FC| NOP
|09F9FD| NOP

|09F9FE| LDA.w #$0000
|09FA01| LDY.b $001F49
|09FA03| SEC
|09FA04| BMI .negative_a

|09FA06| NOP

|09FA07| LDA.w RDDIV

|09FA0A| BRA .continue

.negative_a
|09FA0C| SBC.w RDDIV

;---------------------------------------------------------------------------------------------------

.continue
|09FA0F| CLI

|09FA10| STA.b $001F48

|09FA12| LDA.b $001F4A
|09FA14| BPL .positive_b

|09FA16| EOR.w #$FFFF
|09FA19| INC A

.positive_b
|09FA1A| STA.b $001FB2

|09FA1C| LDA.b $001F4C
|09FA1E| STA.b $001FB0

|09FA20| XBA
|09FA21| AND.w #$00FF
|09FA24| BEQ .zero_b

.shift_b
|09FA26| LSR.b $001FB2
|09FA28| LSR.b $001FB0
|09FA2A| LSR A
|09FA2B| BNE .shift_b

.zero_b
|09FA2D| SEI

|09FA2E| LDA.b $001FB2
|09FA30| STA.w WRDIVL

|09FA33| LDY.b $001FB0
|09FA35| STY.w WRDIVB

|09FA38| NOP
|09FA39| NOP

|09FA3A| LDA.w #$0000
|09FA3D| LDY.b $001F4B
|09FA3F| SEC
|09FA40| BMI .negative_b

|09FA42| NOP

|09FA43| LDA.w RDDIV

|09FA46| BRA .exit

.negative_b
|09FA48| SBC.w RDDIV

;---------------------------------------------------------------------------------------------------

.exit
|09FA4B| CLI

|09FA4C| STA.b $001F4A

|09FA4E| RTS

;===================================================================================================

Polyhedral_DrawPolyhedron:
|09FA4F| SEP #$30

|09FA51| LDY.b #$00

.next
|09FA53| LDA.b ($001F43),Y
|09FA55| STA.b $001F4E

|09FA57| AND.b #$7F
|09FA59| STA.b $001FB0

|09FA5B| ASL A
|09FA5C| STA.b $001FC0

|09FA5E| INY

|09FA5F| LDX.b #$01

;---------------------------------------------------------------------------------------------------

.next_point
|09FA61| PHY

|09FA62| LDA.b ($001F43),Y
|09FA64| TAY

|09FA65| LDA.w $1F60,Y
|09FA68| STA.b $001FC0,X

|09FA6A| INX

|09FA6B| LDA.w $1F88,Y
|09FA6E| STA.b $001FC0,X

|09FA70| INX

|09FA71| PLY
|09FA72| INY

|09FA73| DEC.b $001FB0
|09FA75| BNE .next_point

;---------------------------------------------------------------------------------------------------

|09FA77| LDA.b ($001F43),Y
|09FA79| INY
|09FA7A| STA.b $001F4F

|09FA7C| PHY

|09FA7D| LDA.b $001FC0
|09FA7F| CMP.b #$06
|09FA81| BCC .to_next

|09FA83| JSR Polyhedral_CalculateCrossProduct
|09FA86| BMI .draw_back

|09FA88| BEQ .to_next

|09FA8A| JSR Polyhedral_SetForegroundColor
|09FA8D| JSL Polyhedral_DrawFace

.to_next
|09FA91| PLY

|09FA92| DEC.b $001F40
|09FA94| BNE .next

|09FA96| RTS

;---------------------------------------------------------------------------------------------------

.draw_back
|09FA97| LDA.b $001F4E
|09FA99| BPL .to_next

|09FA9B| REP #$20

|09FA9D| LDA.b $001FC0
|09FA9F| AND.w #$00FF
|09FAA2| TAY

|09FAA3| DEY

|09FAA4| LDX.b #$01

|09FAA6| LSR A
|09FAA7| LSR A
|09FAA8| STA.b $001FB0

;---------------------------------------------------------------------------------------------------

.next_back
|09FAAA| LDA.b $001FC0,X
|09FAAC| PHA

|09FAAD| LDA.w $1FC0,Y
|09FAB0| STA.b $001FC0,X

|09FAB2| PLA
|09FAB3| STA.w $1FC0,Y

|09FAB6| INX
|09FAB7| INX

|09FAB8| DEY
|09FAB9| DEY

|09FABA| DEC.b $001FB0
|09FABC| BNE .next_back

;---------------------------------------------------------------------------------------------------

|09FABE| SEP #$20

|09FAC0| JSR Polyhedral_SetBackgroundColor
|09FAC3| JSL Polyhedral_DrawFace

|09FAC7| JMP.w .to_next

;===================================================================================================

Polyhedral_SetForegroundColor:
|09FACA| LDA.b $001F01
|09FACC| BNE Polyhedral_SetFGShadeColor

|09FACE| LDA.b $001F4F
|09FAD0| AND.b #$07
|09FAD2| JSL Polyhedral_SetColorMask

|09FAD6| RTS

;===================================================================================================

Polyhedral_SetBackgroundColor:
|09FAD7| LDA.b $001F01
|09FAD9| BNE Polyhedral_SetBGShadeColor

|09FADB| LDA.b $001F4F
|09FADD| LSR A
|09FADE| LSR A
|09FADF| LSR A
|09FAE0| LSR A
|09FAE1| AND.b #$07

|09FAE3| JSL Polyhedral_SetColorMask

|09FAE7| RTS

;===================================================================================================

Polyhedral_SetBGShadeColor:
|09FAE8| REP #$20

|09FAEA| LDA.b $001FB0
|09FAEC| EOR.w #$FFFF
|09FAEF| INC A

|09FAF0| BRA Polyhedral_SetShadeColor

;===================================================================================================

Polyhedral_SetFGShadeColor:
|09FAF2| REP #$20

|09FAF4| LDA.b $001FB0

;===================================================================================================

Polyhedral_SetShadeColor:
|09FAF6| PHA

|09FAF7| LDA.w $1F03
|09FAFA| AND.w #$00FF
|09FAFD| BEQ .zero

|09FAFF| LDA.w $1F02
|09FB02| AND.w #$00FF

|09FB05| LSR A
|09FB06| LSR A
|09FB07| LSR A
|09FB08| LSR A
|09FB09| LSR A

.zero
|09FB0A| TAX
|09FB0B| PLA

.shift
|09FB0C| ASL A

|09FB0D| DEX
|09FB0E| BPL .shift

;---------------------------------------------------------------------------------------------------

|09FB10| SEP #$20

|09FB12| XBA
|09FB13| BNE .non_zero

|09FB15| LDA.b #$01
|09FB17| BRA .set_color

.non_zero
|09FB19| CMP.b #$08
|09FB1B| BCC .set_color

|09FB1D| LDA.b #$07

.set_color
|09FB1F| JSL Polyhedral_SetColorMask

|09FB23| RTS

;===================================================================================================

Polyhedral_CalculateCrossProduct:
|09FB24| SEP #$05

|09FB26| LDA.b $001FC3
|09FB28| SBC.b $001FC1
|09FB2A| STA.w PPUMULT16

|09FB2D| LDA.b #$00
|09FB2F| SBC.b #$00
|09FB31| STA.w PPUMULT16

|09FB34| SEC

|09FB35| LDA.b $001FC6
|09FB37| SBC.b $001FC4
|09FB39| STA.w PPUMULT8

|09FB3C| LDA.w MPYL
|09FB3F| STA.b $001FB0

|09FB41| LDA.w MPYM

|09FB44| CLI
|09FB45| STA.b $001FB1

;---------------------------------------------------------------------------------------------------

|09FB47| SEP #$05

|09FB49| LDA.b $001FC5
|09FB4B| SBC.b $001FC3
|09FB4D| STA.w PPUMULT16

|09FB50| LDA.b #$00
|09FB52| SBC.b #$00
|09FB54| STA.w PPUMULT16

|09FB57| SEC

|09FB58| LDA.b $001FC4
|09FB5A| SBC.b $001FC2
|09FB5C| STA.w PPUMULT8

|09FB5F| REP #$20

|09FB61| SEC

|09FB62| LDA.b $001FB0
|09FB64| SBC.w MPYL
|09FB67| STA.b $001FB0

;---------------------------------------------------------------------------------------------------

|09FB69| SEP #$20

|09FB6B| CLI

|09FB6C| RTS

;===================================================================================================

Polyhedral_SineTable:
|09FB6D| db $00, $02, $03, $05, $06, $08, $09, $0B
|09FB75| db $0C, $0E, $10, $11, $13, $14, $16, $17
|09FB7D| db $18, $1A, $1B, $1D, $1E, $20, $21, $22
|09FB85| db $24, $25, $26, $27, $29, $2A, $2B, $2C
|09FB8D| db $2D, $2E, $2F, $30, $31, $32, $33, $34
|09FB95| db $35, $36, $37, $38, $38, $39, $3A, $3B
|09FB9D| db $3B, $3C, $3C, $3D, $3D, $3E, $3E, $3E
|09FBA5| db $3F, $3F, $3F, $40, $40, $40, $40, $40

;===================================================================================================

Polyhedral_CosineTable:
|09FBAD| db $40, $40, $40, $40, $40, $40, $3F, $3F
|09FBB5| db $3F, $3E, $3E, $3E, $3D, $3D, $3C, $3C
|09FBBD| db $3B, $3B, $3A, $39, $38, $38, $37, $36
|09FBC5| db $35, $34, $33, $32, $31, $30, $2F, $2E
|09FBCD| db $2D, $2C, $2B, $2A, $29, $27, $26, $25
|09FBD5| db $24, $22, $21, $20, $1E, $1D, $1B, $1A
|09FBDD| db $18, $17, $16, $14, $13, $11, $10, $0E
|09FBE5| db $0C, $0B, $09, $08, $06, $05, $03, $02
|09FBED| db $00, $FE, $FD, $FB, $FA, $F8, $F7, $F5
|09FBF5| db $F4, $F2, $F0, $EF, $ED, $EC, $EA, $E9
|09FBFD| db $E8, $E6, $E5, $E3, $E2, $E0, $DF, $DE
|09FC05| db $DC, $DB, $DA, $D9, $D7, $D6, $D5, $D4
|09FC0D| db $D3, $D2, $D1, $D0, $CF, $CE, $CD, $CC
|09FC15| db $CB, $CA, $C9, $C8, $C8, $C7, $C6, $C5
|09FC1D| db $C5, $C4, $C4, $C3, $C3, $C2, $C2, $C2
|09FC25| db $C1, $C1, $C1, $C0, $C0, $C0, $C0, $C0
|09FC2D| db $C0, $C0, $C0, $C0, $C0, $C0, $C1, $C1
|09FC35| db $C1, $C2, $C2, $C2, $C3, $C3, $C4, $C4
|09FC3D| db $C5, $C5, $C6, $C7, $C8, $C8, $C9, $CA
|09FC45| db $CB, $CC, $CD, $CE, $CF, $D0, $D1, $D2
|09FC4D| db $D3, $D4, $D5, $D6, $D7, $D9, $DA, $DB
|09FC55| db $DC, $DE, $DF, $E0, $E2, $E3, $E5, $E6
|09FC5D| db $E8, $E9, $EA, $EC, $ED, $EF, $F0, $F2
|09FC65| db $F4, $F5, $F7, $F8, $FA, $FB, $FD, $FE
|09FC6D| db $00, $02, $03, $05, $06, $08, $09, $0B
|09FC75| db $0C, $0E, $10, $11, $13, $14, $16, $17
|09FC7D| db $18, $1A, $1B, $1D, $1E, $20, $21, $22
|09FC85| db $24, $25, $26, $27, $29, $2A, $2B, $2C
|09FC8D| db $2D, $2E, $2F, $30, $31, $32, $33, $34
|09FC95| db $35, $36, $37, $38, $38, $39, $3A, $3B
|09FC9D| db $3B, $3C, $3C, $3D, $3D, $3E, $3E, $3E
|09FCA5| db $3F, $3F, $3F, $40, $40, $40, $40, $40

;===================================================================================================
; FREE ROM: 0x01
;===================================================================================================
NULL_09FCAD:
|09FCAD| db $FF

;===================================================================================================

Polyhedral_SetColorMask:
|09FCAE| PHP

|09FCAF| SEP #$30

|09FCB1| ASL A
|09FCB2| ASL A
|09FCB3| TAX

|09FCB4| REP #$20

|09FCB6| LDA.l .mask+0,X
|09FCBA| STA.b $001FB5

|09FCBC| LDA.l .mask+2,X
|09FCC0| STA.b $001FB7

|09FCC2| PLP

|09FCC3| RTL

;---------------------------------------------------------------------------------------------------

.mask
|09FCC4| dw $0000, $0000
|09FCC8| dw $00FF, $0000
|09FCCC| dw $FF00, $0000
|09FCD0| dw $FFFF, $0000
|09FCD4| dw $0000, $00FF
|09FCD8| dw $00FF, $00FF
|09FCDC| dw $FF00, $00FF
|09FCE0| dw $FFFF, $00FF
|09FCE4| dw $0000, $FF00
|09FCE8| dw $00FF, $FF00
|09FCEC| dw $FF00, $FF00
|09FCF0| dw $FFFF, $FF00
|09FCF4| dw $0000, $FFFF
|09FCF8| dw $00FF, $FFFF
|09FCFC| dw $FF00, $FFFF
|09FD00| dw $FFFF, $FFFF

;===================================================================================================

Polyhedral_EmptyBitMapBuffer:
|09FD04| PHP
|09FD05| PHB

|09FD06| REP #$30

|09FD08| LDA.w #$0000
|09FD0B| STA.l $7EE800

|09FD0F| LDX.w #$7EE800
|09FD12| LDY.w #$7EE802

|09FD15| LDA.w #$07FD
|09FD18| MVN $7E, $7E

|09FD1B| PLB
|09FD1C| PLP

|09FD1D| RTL

;===================================================================================================

Polyhedral_DrawFace:
|09FD1E| PHP
|09FD1F| PHB

|09FD20| SEP #$30

|09FD22| LDA.b #$7E
|09FD24| PHA
|09FD25| PLB

|09FD26| LDY.b $001FC0
|09FD28| TYX

|09FD29| LDA.b $001FC0,X

;---------------------------------------------------------------------------------------------------

.loop
|09FD2B| DEX
|09FD2C| DEX
|09FD2D| BEQ .add_fill

|09FD2F| CMP.b $001FC0,X
|09FD31| BCC .loop
|09FD33| BEQ .loop

|09FD35| TXY
|09FD36| LDA.b $001FC0,X

|09FD38| BRA .loop

;---------------------------------------------------------------------------------------------------

.add_fill
|09FD3A| AND.b #$07
|09FD3C| ASL A
|09FD3D| STA.b $001FB9

|09FD3F| LDA.w $7E1FC0,Y
|09FD42| AND.b #$38
|09FD44| BIT.b #$20
|09FD46| BEQ .no_swap

|09FD48| EOR.b #$24

.no_swap
|09FD4A| LSR A
|09FD4B| LSR A
|09FD4C| ADC.b #$E8
|09FD4E| STA.b $001FBA

|09FD50| STY.b $001FE9
|09FD52| STY.b $001FF2

|09FD54| LDA.b $001FC0
|09FD56| LSR A
|09FD57| STA.b $001FE0

|09FD59| LDA.w $7E1FC0,Y
|09FD5C| STA.b $001FE2
|09FD5E| STA.b $001FEB

|09FD60| LDA.w $7E1FBF,Y
|09FD63| STA.b $001FE1
|09FD65| STA.b $001FEA

|09FD67| JSR Polyhedral_SetLeft
|09FD6A| BCS EXIT_09FD71

|09FD6C| JSR Polyhedral_SetRight
|09FD6F| BCC Polyhedral_PaintBucket

;---------------------------------------------------------------------------------------------------

#EXIT_09FD71:
|09FD71| PLB
|09FD72| PLP

|09FD73| RTL

;===================================================================================================

Polyhedral_PaintBucket:

.next
|09FD74| JSR Polyhedral_FillLine

|09FD77| LDA.b $001FB9
|09FD79| INC A
|09FD7A| INC A
|09FD7B| CMP.b #$10
|09FD7D| BEQ .big_a

|09FD7F| STA.b $001FB9
|09FD81| BRA .continue

.big_a
|09FD83| LDA.b $001FBA
|09FD85| INC A
|09FD86| INC A
|09FD87| BIT.b #$08
|09FD89| BNE .dont_flip

|09FD8B| EOR.b #$19

.dont_flip
|09FD8D| STA.b $001FBA
|09FD8F| STZ.b $001FB9

;---------------------------------------------------------------------------------------------------

.continue
|09FD91| LDX.b $001FE2
|09FD93| CPX.b $001FE4
|09FD95| BNE .skip_left

|09FD97| LDX.b $001FE3
|09FD99| STX.b $001FE1

|09FD9B| JSR Polyhedral_SetLeft
|09FD9E| BCS EXIT_09FD71

|09FDA0| LDX.b $001FE2

;---------------------------------------------------------------------------------------------------

.skip_left
|09FDA2| INX
|09FDA3| STX.b $001FE2

|09FDA5| LDX.b $001FEB
|09FDA7| CPX.b $001FED
|09FDA9| BNE .skip_right

|09FDAB| LDX.b $001FEC
|09FDAD| STX.b $001FEA

|09FDAF| JSR Polyhedral_SetRight
|09FDB2| BCS EXIT_09FD71

|09FDB4| LDX.b $001FEB

;---------------------------------------------------------------------------------------------------

.skip_right
|09FDB6| INX
|09FDB7| STX.b $001FEB

|09FDB9| REP #$21

|09FDBB| LDA.b $001FE5
|09FDBD| ADC.b $001FE7
|09FDBF| STA.b $001FE5

|09FDC1| CLC

|09FDC2| LDA.b $001FEE
|09FDC4| ADC.b $001FF0
|09FDC6| STA.b $001FEE

|09FDC8| SEP #$20

|09FDCA| BRA .next

;===================================================================================================

UNREACHABLE_09FDCC:
|09FDCC| PLB
|09FDCD| PLP

|09FDCE| RTL

;===================================================================================================

Polyhedral_FillLine:
|09FDCF| LDA.b $001FE6
|09FDD1| AND.b #$07
|09FDD3| ASL A
|09FDD4| TAY

|09FDD5| LDA.b $001FEF
|09FDD7| AND.b #$07
|09FDD9| ASL A
|09FDDA| TAX

|09FDDB| LDA.b $001FE6
|09FDDD| AND.b #$38
|09FDDF| STA.b $001FBC

|09FDE1| LDA.b $001FEF
|09FDE3| AND.b #$38
|09FDE5| SEC
|09FDE6| SBC.b $001FBC
|09FDE8| BNE Polyhedral_FillBigLine

;---------------------------------------------------------------------------------------------------

|09FDEA| REP #$30

|09FDEC| LDA.l Polyhedral_LineFillMask.right,X
|09FDF0| TYX

|09FDF1| AND.l Polyhedral_LineFillMask.left,X
|09FDF5| STA.b $001FB2

|09FDF7| LDA.b $001FEF
|09FDF9| AND.w #$0038
|09FDFC| ASL A
|09FDFD| ASL A

|09FDFE| ORA.b $001FB9
|09FE00| TAY

|09FE01| LDA.b $001FB5
|09FE03| EOR.w $7E0000,Y
|09FE06| AND.b $001FB2
|09FE08| EOR.w $7E0000,Y
|09FE0B| STA.w $7E0000,Y

|09FE0E| LDA.b $001FB7
|09FE10| EOR.w $7E0010,Y
|09FE13| AND.b $001FB2
|09FE15| EOR.w $7E0010,Y
|09FE18| STA.w $7E0010,Y

;---------------------------------------------------------------------------------------------------

EXIT_09FE1B:
|09FE1B| SEP #$30

|09FE1D| RTS

;===================================================================================================

Polyhedral_FillBigLine:
|09FE1E| BCC EXIT_09FE1B

|09FE20| LSR A
|09FE21| LSR A
|09FE22| LSR A
|09FE23| STA.b $001FFA

|09FE25| STZ.b $001FFB

;---------------------------------------------------------------------------------------------------

|09FE27| REP #$30

|09FE29| LDA.l Polyhedral_LineFillMask.right,X
|09FE2D| STA.b $001FB2

|09FE2F| TYX

|09FE30| LDA.b $001FEF
|09FE32| AND.w #$0038
|09FE35| ASL A
|09FE36| ASL A
|09FE37| ORA.b $001FB9
|09FE39| TAY

|09FE3A| LDA.b $001FB5
|09FE3C| EOR.w $7E0000,Y
|09FE3F| AND.b $001FB2
|09FE41| EOR.w $7E0000,Y
|09FE44| STA.w $7E0000,Y

|09FE47| LDA.b $001FB7
|09FE49| EOR.w $7E0010,Y
|09FE4C| AND.b $001FB2
|09FE4E| EOR.w $7E0010,Y
|09FE51| STA.w $7E0010,Y

;---------------------------------------------------------------------------------------------------

|09FE54| SEC

|09FE55| TYA
|09FE56| SBC.w #$0020
|09FE59| TAY

|09FE5A| DEC.b $001FFA
|09FE5C| BEQ .no_loop

;---------------------------------------------------------------------------------------------------

.loop
|09FE5E| LDA.b $001FB5
|09FE60| STA.w $7E0000,Y

|09FE63| LDA.b $001FB7
|09FE65| STA.w $7E0010,Y

|09FE68| TYA
|09FE69| SBC.w #$0020
|09FE6C| TAY

|09FE6D| DEC.b $001FFA
|09FE6F| BNE .loop

;---------------------------------------------------------------------------------------------------

.no_loop
|09FE71| LDA.l Polyhedral_LineFillMask.left,X
|09FE75| STA.b $001FB2

|09FE77| LDA.b $001FB5
|09FE79| EOR.w $7E0000,Y
|09FE7C| AND.b $001FB2
|09FE7E| EOR.w $7E0000,Y
|09FE81| STA.w $7E0000,Y

|09FE84| LDA.b $001FB7
|09FE86| EOR.w $7E0010,Y
|09FE89| AND.b $001FB2
|09FE8B| EOR.w $7E0010,Y
|09FE8E| STA.w $7E0010,Y

|09FE91| SEP #$30

|09FE93| RTS

;===================================================================================================

Polyhedral_LineFillMask:

.left
|09FE94| dw $FFFF
|09FE96| dw $7F7F
|09FE98| dw $3F3F
|09FE9A| dw $1F1F
|09FE9C| dw $0F0F
|09FE9E| dw $0707
|09FEA0| dw $0303
|09FEA2| dw $0101

.right
|09FEA4| dw $8080
|09FEA6| dw $C0C0
|09FEA8| dw $E0E0
|09FEAA| dw $F0F0
|09FEAC| dw $F8F8
|09FEAE| dw $FCFC
|09FEB0| dw $FEFE
|09FEB2| dw $FFFF

;===================================================================================================

Polyhedral_SetLeft:

.restart
|09FEB4| DEC.b $001FE0
|09FEB6| BPL .continue

.fail
|09FEB8| SEC

|09FEB9| RTS

;---------------------------------------------------------------------------------------------------

.continue
|09FEBA| LDX.b $001FE9
|09FEBC| DEX
|09FEBD| DEX
|09FEBE| BNE .dont_reload

|09FEC0| LDX.b $001FC0

.dont_reload
|09FEC2| LDA.b $001FC0,X
|09FEC4| CMP.b $001FE2
|09FEC6| BCC .fail
|09FEC8| BNE .dont_restart

|09FECA| LDA.b $001FBF,X
|09FECC| STA.b $001FE1

|09FECE| STX.b $001FE9

|09FED0| BRA .restart

;---------------------------------------------------------------------------------------------------

.dont_restart
|09FED2| STA.b $001FE4

|09FED4| LDA.b $001FBF,X
|09FED6| STA.b $001FE3

|09FED8| STX.b $001FE9

|09FEDA| LDX.b #$00
|09FEDC| SEC
|09FEDD| SBC.b $001FE1
|09FEDF| BCS .positive

|09FEE1| DEX

|09FEE2| EOR.b #$FF
|09FEE4| INC A

.positive
|09FEE5| SEI

|09FEE6| STA.l WRDIVH

|09FEEA| LDA.b #$00
|09FEEC| STA.l WRDIVL

|09FEF0| SEC

|09FEF1| LDA.b $001FE4
|09FEF3| SBC.b $001FE2
|09FEF5| STA.l WRDIVB

;---------------------------------------------------------------------------------------------------

|09FEF9| REP #$20

|09FEFB| LDA.b $001FE0
|09FEFD| AND.w #$FF00
|09FF00| ORA.w #$0080
|09FF03| STA.b $001FE5

|09FF05| LDA.w #$0000

|09FF08| CPX.b #$00
|09FF0A| BNE .nonzero

|09FF0C| LDA.l RDDIV
|09FF10| BRA .finished

.nonzero
|09FF12| SEC
|09FF13| SBC.l RDDIV

;---------------------------------------------------------------------------------------------------

.finished
|09FF17| CLI

|09FF18| STA.b $001FE7

|09FF1A| SEP #$20
|09FF1C| CLC

|09FF1D| RTS

;===================================================================================================

Polyhedral_SetRight:
.restart
|09FF1E| DEC.b $001FE0
|09FF20| BPL .continue_a

.fail
|09FF22| SEC

|09FF23| RTS

;---------------------------------------------------------------------------------------------------

.continue_a
|09FF24| LDX.b $001FF2
|09FF26| CPX.b $001FC0
|09FF28| BNE .dont_reload

|09FF2A| LDX.b #$02
|09FF2C| BRA .continue_b

.dont_reload
|09FF2E| INX
|09FF2F| INX

;---------------------------------------------------------------------------------------------------

.continue_b
|09FF30| LDA.b $001FC0,X
|09FF32| CMP.b $001FEB
|09FF34| BCC .fail
|09FF36| BNE .dont_restart

|09FF38| LDA.b $001FBF,X
|09FF3A| STA.b $001FEA

|09FF3C| STX.b $001FF2

|09FF3E| BRA .restart

;---------------------------------------------------------------------------------------------------

.dont_restart
|09FF40| STA.b $001FED

|09FF42| LDA.b $001FBF,X
|09FF44| STA.b $001FEC

|09FF46| STX.b $001FF2

|09FF48| LDX.b #$00
|09FF4A| SEC
|09FF4B| SBC.b $001FEA
|09FF4D| BCS .positive

|09FF4F| DEX

|09FF50| EOR.b #$FF
|09FF52| INC A

.positive
|09FF53| SEI

|09FF54| STA.l WRDIVH
|09FF58| LDA.b #$00
|09FF5A| STA.l WRDIVL

|09FF5E| SEC
|09FF5F| LDA.b $001FED
|09FF61| SBC.b $001FEB
|09FF63| STA.l WRDIVB

;---------------------------------------------------------------------------------------------------

|09FF67| REP #$20

|09FF69| LDA.b $001FE9
|09FF6B| AND.w #$FF00
|09FF6E| ORA.w #$0080
|09FF71| STA.b $001FEE

|09FF73| LDA.w #$0000

|09FF76| CPX.b #$00
|09FF78| BNE .nonzero

|09FF7A| LDA.l RDDIV
|09FF7E| BRA .finished

.nonzero
|09FF80| SEC
|09FF81| SBC.l RDDIV

;---------------------------------------------------------------------------------------------------

.finished
|09FF85| CLI

|09FF86| STA.b $001FF0

|09FF88| SEP #$20
|09FF8A| CLC

|09FF8B| RTS

;===================================================================================================

PolyhedralPropertyTable:

.crystal
|09FF8C| db $06 ; vertices
|09FF8D| db $08 ; faces
|09FF8E| dw CrystalVertices
|09FF90| dw CrystalFaces

.triforce
|09FF92| db $06 ; vertices
|09FF93| db $05 ; faces
|09FF94| dw TriforceVertices
|09FF96| dw TriforceFaces

;===================================================================================================

CrystalVertices:
|09FF98| db   0,  65,   0
|09FF9B| db   0, -65,   0
|09FF9E| db   0,   0, -40
|09FFA1| db -40,   0,   0
|09FFA4| db   0,   0,  40
|09FFA7| db  40,   0,   0

;---------------------------------------------------------------------------------------------------

CrystalFaces:
|09FFAA| db   3,   0,   5,   2,   4
|09FFAF| db   3,   0,   2,   3,   1
|09FFB4| db   3,   0,   3,   4,   2
|09FFB9| db   3,   0,   4,   5,   3

|09FFBE| db   3,   1,   2,   5,   4
|09FFC3| db   3,   1,   3,   2,   1
|09FFC8| db   3,   1,   4,   3,   2
|09FFCD| db   3,   1,   5,   4,   3

;===================================================================================================

TriforceVertices:
|09FFD2| db   0,  40,  10
|09FFD5| db  40, -40,  10
|09FFD8| db -40, -40,  10
|09FFDB| db   0,  40, -10
|09FFDE| db -40, -40, -10
|09FFE1| db  40, -40, -10

;---------------------------------------------------------------------------------------------------

TriforceFaces:
|09FFE4| db   3,   0,   1,   2,   7
|09FFE9| db   3,   3,   4,   5,   6

|09FFEE| db   4,   0,   3,   5,   1,   5
|09FFF4| db   4,   1,   5,   4,   2,   4
|09FFFA| db   4,   3,   0,   2,   4,   3

;===================================================================================================
